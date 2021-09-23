# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_DISABLE_COMPFIX="true"

# Path to your oh-my-zsh installation.
export ZSH="/Users/loc/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="eastwood"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(aws git colorize jsontools kubectl pip python brew osx)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Terraform helpers
export TF_VAR_user_identity=ltran
export TF_PLUGIN_CACHE_DIR="$HOME/.terraform.d/plugin-cache"

alias t="terraform"
alias td="terraform-docs markdown"

alias login-aws="(cd /Volumes/Data/code/src/github.com/Spirent-DevOps/automation/onelogin-python-aws-assume-role && python ./aws_assume_role.py -u ltran --duration 28800 --onelogin-password \$(security find-generic-password -a ltran -s ActiveDirectory -w))"
alias login-aws-orion="(cd /Volumes/Data/code/src/github.com/Spirent-DevOps/automation/onelogin-python-aws-assume-role && python ./aws_assume_role.py -u ltran --profile spirent-orion --duration 28800 --onelogin-password \$(security find-generic-password -a ltran -s ActiveDirectory -w))"
alias login-aws-cip-dev="(cd /Volumes/Data/code/src/github.com/Spirent-DevOps/automation/onelogin-python-aws-assume-role && python ./aws_assume_role.py -u ltran --profile spirent-eng-cip-dev --duration 28800 --onelogin-password \$(security find-generic-password -a ltran -s ActiveDirectory -w))"

# Vault Helpers
export VAULT_ADDR="https://vault.spirent.io"
export VAULT_CACERT="/Volumes/Data/code/src/github.com/Spirent-DevOps/system-imaging/common/tls/cip-devops-rootCA.crt"

alias login-vault="echo 'Logging into Vault via Active Directory...' ; export VAULT_TOKEN=\$(vault login -token-only -method=ldap username=ltran password=\$(security find-generic-password -a ltran -s ActiveDirectory -w))"

# Go Setup
# make the direcotry
export GOPATH=/Volumes/Data/golib
export PATH=$PATH:$GOPATH/bin

# make workspace location
# export GOPATH=$GOPATH:/Users/n/code/gocode
export PATH="/usr/local/opt/go/bin:$PATH"

# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

alias flush-dns="sudo killall -HUP mDNSResponder"
alias git-prune="git fetch -p && for branch in $(git branch -vv | grep ': gone]' | awk '{print $1}'); do git branch -D $branch; done"

# export PATH="/usr/local/opt/mysql-client/bin:$PATH"

export PYENV_ROOT=$(pyenv root)
export PATH="$PYENV_ROOT/bin:$PYENV_ROOT/shims:$PATH"
eval "$(pyenv init --path)"

# Load pyenv into the shell by adding
# the following to ~/.zshrc:

eval "$(pyenv init -)"