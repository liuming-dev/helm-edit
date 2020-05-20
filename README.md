# Helm Edit

[![standard-readme compliant](https://img.shields.io/badge/standard--readme-OK-green.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)
[![CircleCI](https://img.shields.io/circleci/project/github/mstrzele/helm-edit.svg?style=flat-square)](https://circleci.com/gh/mstrzele/helm-edit)

> Edit a Helm release

This plugin adds `helm edit` command. It opens the editor defined by `EDITOR` environment variable (default `vi` if not set) and allows to edit the values and upgrade a release.

## Install

- for helm v3

```bash
helm plugin install https://github.com/liuming-dev/helm-edit
```

- for helm v2

```bash
helm plugin install https://github.com/mstrzele/helm-edit
```

## Usage

```bash
# edit the smiling-penguin release
$ helm edit smiling-penguin
```

[![asciicast](https://asciinema.org/a/131663.png)](https://asciinema.org/a/131663)

## Maintainers

[@mstrzele](https://github.com/mstrzele)
[@liuming-dev](https://github.com/liuming-dev)

## Contribute

PRs accepted.

Small note: If editing the README, please conform to the [standard-readme](https://github.com/RichardLitt/standard-readme) specification.

## License

[MIT](LICENSE) © 2017 Maciej Strzelecki
