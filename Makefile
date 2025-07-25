.DEFAULT_GOAL := help
PWD = $(shell realpath $(dir $(lastword $(MAKEFILE_LIST))))
.PHONY: init test help

init: ## initialize
	git clone https://github.com/thinca/vim-themis

test: ## testing with vim-htemis
	./vim-themis/bin/themis --reporter spec -r test

help: ### help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
