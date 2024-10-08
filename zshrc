# -*- mode: shell-script -*-

# plugins
export ZPLUG_HOME=$(brew --prefix)/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi

zplug load

# variables
export CLICOLOR=true
export GREP_OPTIONS='--color=auto'

# options
setopt correct
setopt autocd
setopt shwordsplit
setopt interactivecomments

setopt NO_BEEP

# completions
autoload -Uz compinit
compinit

autoload -Uz bashcompinit
bashcompinit

setopt extendedglob nomatch notify
zstyle ':completion:*' insert-tab false
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' use-compctl false
zstyle :compinstall filename '~/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

setopt menucomplete
zstyle ':completion:*' menu select=2

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

zstyle ':completion:*:processes' command 'ps -xuf'
zstyle ':completion:*:processes' sort false
zstyle ':completion:*:processes-names' command 'ps xho command'

# history
HISTSIZE=1000
HISTFILE=~/.zsh_history
SAVEHIST=100000

setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE
setopt HIST_NO_STORE
setopt SHARE_HISTORY

# functions
jdk() {
    version=$1
    if [ -z $version ]; then
        echo "$(tput bold)Available JDK version:$(tput sgr0)"
        /usr/libexec/java_home -V
    else
        export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
    fi
    echo "$(tput bold)Current JDK version:$(tput sgr0)"
    java -version
}

# direnv
[[ $(command -v direnv) ]] && eval "$(direnv hook zsh)"

# k8s
[[ $(command -v kubectl) ]] && source <(kubectl completion zsh)
[[ $(command -v kustomize) ]] && complete -o nospace -C $(brew --prefix)/bin/kustomize kustomize

# zsh-completions
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi
