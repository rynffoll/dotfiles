# -*- mode: shell-script -*-
PROMPT_COMMAND="history -a; $PROMPT_COMMAND" # store history immediately
HISTCONTROL=ignoreboth # ignore duplicates and spaces
HISTSIZE=1000
HISTFILESIZE=100000
HISTIGNORE='ls:bg:fg:history'

export CLICOLOR=true
export GREP_OPTIONS='--color=auto'

shopt -s histappend
shopt -s checkwinsize
shopt -s cdspell

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

bind 'set completion-ignore-case on'
bind 'set colored-completion-prefix on'
bind 'set show-all-if-ambiguous on'
bind 'set show-all-if-unmodified on'

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_STATESEPARATOR=""
PS1='\[\033[34m\]\w\[\033[1;33m\]$(__git_ps1 " %s")\[\033[00m\]\n$ '

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
[[ $(command -v direnv) ]] && eval "$(direnv hook bash)"

# k8s
[[ $(command -v kubectl) ]] && source <(kubectl completion bash)
[[ $(command -v kustomize) ]] && complete -C $(brew --prefix)/bin/kustomize kustomize
