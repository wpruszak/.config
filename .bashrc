# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=5000
HISTFILESIZE=10000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# PS1.
export PS1="\[\033[38;5;81m\]\u\[$(tput sgr0)\]\[\033[38;5;226m\]@\[$(tput sgr0)\]\[\033[38;5;81m\]\h\[$(tput sgr0)\]\[\033[38;5;226m\]?\[$(tput sgr0)\]\[\033[38;5;81m\]\W\[$(tput sgr0)\]\[\033[38;5;226m\]:\[$(tput sgr0)\]\[\033[38;5;81m\]\$?\\$\[$(tput sgr0)\]\[\033[38;5;253m\]>>\[$(tput sgr0)\]"

export PATH=$PATH:$HOME/bin
export DISPLAY=local_host:0.0

# SSH key adding.
eval `ssh-agent -s` &> /dev/null
PASS=`cat $HOME/.sshpass`
install -vm700 <(echo "echo $PASS") "${HOME}/ps.sh" &> /dev/null
cat $HOME/.ssh/id_rsa | SSH_ASKPASS="${HOME}/ps.sh" ssh-add &> /dev/null - && rm "${HOME}/ps.sh" &> /dev/null

export EDITOR=vim

export LC_LANG=en
export LC_LOCALE=en_GB

# Run tmux by default
if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi

