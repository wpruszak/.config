if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias copy='clip.exe'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias cdh='cd /mnt/c/Users/wopru/'
alias v='vim'
alias vi='vim'
alias vmi='vim'
alias ivm='vim'
alias mvi='vim'
alias gti='git'
alias s='sudo'
alias e='explorer.exe'
alias explorer='explorer.exe'
alias :q='exit'
alias nano='vim'
alias sn='sudo vim'
alias sv='sudo vim'

