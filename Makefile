.POSIX:

all: help

.PHONY: clean
clean: ## Destroy the molecule docker container
	molecule destroy
	molecule reset

.PHONY: test
test: ## Test ansible role
	ANSIBLE_VERBOSITY=4 molecule converge | tee ansible-log-`date +%Y%m%d-%H%M%S`.log

.PHONY: lint
lint: ## Lint code
	yamllint . && \
  	ansible-lint --exclude ~/.ansible/roles

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' Makefile | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
