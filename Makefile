
# Lint YAML
.PHONY: lint
lint:
	@yamllint --version >/dev/null 2>&1 || pip3 install yamllint --user
	@yamllint -c .yamllint.yaml .