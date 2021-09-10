# How to setup pyenv

Install via brew

```sh
brew install openssl readline sqlite3 xz zlib
brew install pyenv
```

Add to `~./zshrc`

```sh
export PYENV_ROOT=$(pyenv root)
export PATH="$PYENV_ROOT/bin:$PYENV_ROOT/shims:$PATH"
eval "$(pyenv init --path)"

# Load pyenv into the shell by adding
# the following to ~/.zshrc:

eval "$(pyenv init -)"
```

## Install different versions of python

```sh
pyenv install --list | grep " 3\.[789]"
pyenv install 3.9.7
pyenv versions
```

## Switch to different versions of python

```sh
pyenv versions
pyenv global 3.9.7
```

## Switch to different version for specific directory

```sh
pyenv local 3.9.7
```

## Switch to different version for current shell

```sh
pyenv shell 3.9.7
```