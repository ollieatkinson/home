.PHONY: lint
check:
	@python3 -m pip install homeassistant
	@hass --script check_config -c .

# Lint YAML
.PHONY: lint
lint:
	@yamllint --version >/dev/null 2>&1 || pip install yamllint
	@yamllint -c .yamllint.yaml .