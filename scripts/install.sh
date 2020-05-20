#!/bin/sh -e

version="$(cat plugin.yaml | grep "version" | cut -d '"' -f 2)"
echo "Downloading and installing helm-push v${version} ..."

url=""
if [ "$(uname)" = "Darwin" ]; then
    url="https://github.com/liuming-dev/helm-edit/releases/download/v${version}/helm-edit_v${version}_darwin_amd64.tar.gz"
elif [ "$(uname)" = "Linux" ] ; then
    url="https://github.com/liuming-dev/helm-edit/releases/download/v${version}/helm-edit_v${version}_linux_amd64.tar.gz"
else
    url="https://github.com/liuming-dev/helm-edit/releases/download/v${version}/helm-edit_v${version}_windows_amd64.tar.gz"
fi

echo $url

mkdir -p "bin"
mkdir -p "releases/v${version}"

# Download with curl if possible.
if [ -x "$(which curl 2>/dev/null)" ]; then
    curl -sSL "${url}" -o "releases/v${version}.tar.gz"
else
    wget -q "${url}" -O "releases/v${version}.tar.gz"
fi

tar xzf "releases/v${version}.tar.gz" -C "releases/v${version}"

mv "releases/v${version}/bin/edit" "bin/edit" || \
    mv "releases/v${version}/bin/edit.exe" "bin/edit"

rm -rf "releases"
