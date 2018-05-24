.PHONY: update build push kshell

update: build push

build:
	docker build . -t nickray/tiny-tools
push:
	docker push nickray/tiny-tools

kshell:
	kubectl run -it zshell --image-pull-policy=Always --image nickray/tiny-tools --restart Never --rm -- zsh
