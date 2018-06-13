# cf-vault-demo
Just to demonstrate CF App interactions with HashiCorp Vault

### It is necessary when creating CF pipeline:

* Define two environment variables:
  - VAULT_ADDR - An URL to your Vault, ex. VAULT_ADDR="https://macchiato.codefresh.io:8200"
  - ROOT_TOKEN - we need to authenticate to perform demo
* Adjust path to YAML file where steps of a workflow defined, aka `./pipelines/run-demo.yml`
