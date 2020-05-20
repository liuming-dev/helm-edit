package main

import (
	"os"

	"github.com/liuming-dev/helm-edit/cmd"
)

func main() {
	editCmd := cmd.NewEditCmd(os.Stdout, os.Args[1:])

	if err := editCmd.Execute(); err != nil {
		os.Exit(1)
	}
}
