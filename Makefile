export TF_VAR_simple := set by env
export TF_VAR_complex := {foo="a", bar=99}

.PHONY: test
test:
	terraform apply -auto-approve

.PHONY: clean
clean:
	[ ! -d terraform.tfstate ] || rm -rf .terraform
	[ ! -f terraform.tfstate ] || rm -f terraform.tfstate
	[ ! -f terraform.tfstate.backup ] || rm -f terraform.tfstate.backup