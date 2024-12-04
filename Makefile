.PHONY:help 

help:       
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

build: ## build app
	docker build -f ops/script.Dockerfile -t app .

run: build ##run app
	docker run -it app

list: ##list everything
	docker image ls -a
	docker container ls -a

clean: ## clean everything
	docker system prune --volumes