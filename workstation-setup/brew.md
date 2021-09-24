# Packages to install via Homebrew

> Order matters so make sure dependencies are installed first
```sh
# Add Hashicorp TAP
$ brew tap hashicorp/tap

$ brew install tfenv openssl readline sqlite3 xz zlib pyenv hashicorp/tap/vault
# NOTE: This installs a signed binary and is automatically updated with every new official release.
# to manually upgrade, run
# $ brew upgrade hashicorp/tap/vault


# Create cache dir for Terraform
$ mkdir -p ~/.terraform.d/plugin-cache

# Install tfenv
$ tfenv install 1.0.7

# Use tfenv
$ tfenv use 1.0.7