package main

import (
	"fmt"
	"net/http"

	"github.com/mattermost/mattermost-server/plugin/rpcplugin"
)

type MyPlugin struct{}

func (p *MyPlugin) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello world!")
}

func main() {
	rpcplugin.Main(&MyPlugin{})
}
