# Path to your oh-my-zsh installation.
#
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="amuse"
ZSH_THEME="agnoster"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=vi

#unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/help

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(fzf direnv cp golang gulp history git brew mvn gradle fabric tmux gem extract git-extras lein mercurial npm python rake sbt svn scala ssh-agent tmux vagrant docker docker-compose docker-machine ansible npm nvm)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
export GOPATH=$HOME/golang
#export GOROOT=$(go1.18.8 env GOROOT)
export GOROOT=/opt/homebrew/Cellar/go/1.21.6/libexec
#export GOROOT=/opt/homebrew/Cellar/go@1.18/1.18.8/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export JAVA_HOME=$(/usr/libexec/java_home -v 16)
# export MANPATH="/usr/local/man:$MANPATH"


# eval `/usr/libexec/path_helper -s`

source $ZSH/oh-my-zsh.sh
source ~/.zsh_alias

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
fpath=(/usr/local/share/zsh-completions $fpath)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.fzf_funcs.zsh ] && source ~/.fzf_funcs.zsh
#[[ -s "$HOME/.local/share/marker/marker.sh" ]] && source "$HOME/.local/share/marker/marker.sh"
#source /usr/local/share/zsh/site-functions/_aws
#eval "$(chef shell-init zsh)"
export PATH="/usr/local/sbin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
#export PATH="/Users/bartem/Library/Python/3.7/bin/:$PATH"
export LIQUIBASE_HOME=/usr/local/opt/liquibase/libexec

alias -g cdfab='cd ~/golang/src/github.com/hyperledger/fabric'

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

eval "$(pyenv init -)"
fpath=(~/.daml/zsh $fpath)

export PKCS11_LIB="/opt/homebrew/Cellar/softhsm/2.6.1/lib/softhsm/libsofthsm2.so"
export PKCS11_PIN=98765432
export PKCS11_LABEL="ForFabric"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for Yandex Cloud CLI.
if [ -f '/Users/c0rwin/yandex-cloud/path.bash.inc' ]; then source '/Users/c0rwin/yandex-cloud/path.bash.inc'; fi

# The next line enables shell command completion for yc.
if [ -f '/Users/c0rwin/yandex-cloud/completion.zsh.inc' ]; then source '/Users/c0rwin/yandex-cloud/completion.zsh.inc'; fi

zstyle :omz:plugins:ssh-agent identities id_rsa newity newitycore
alias python=/usr/bin/python3


# Load Angular CLI autocompletion.
source <(ng completion script)
