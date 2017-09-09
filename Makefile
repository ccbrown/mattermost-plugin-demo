all: mattermost-plugin-demo.tar.gz

mattermost-plugin-demo: main.go
	go build -o mattermost-plugin-demo ./main.go

mattermost-plugin-demo.tar.gz: mattermost-plugin-demo plugin.yaml
	tar -czvf mattermost-plugin-demo.tar.gz mattermost-plugin-demo plugin.yaml

clean:
	rm -f mattermost-plugin-demo
	rm -f mattermost-plugin-demo.tar.gz
