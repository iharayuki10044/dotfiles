# Short cut
alias ls="ls -G"
alias l="ls -G"
alias s="ls -G"
alias ll="ls -G"
alias lsa="ls -a"

alias dc="cd"
alias ..="cd .."
alias ...="cd ../.."

alias e="exit"
alias え="exit"

# git 
alias ga="git add"
alias gb="git branch"
alias gd="git diff"
alias gl="git log"
alias bg="git branch"
alias gs="git status"
alias gco="git checkout"

# default:cyan / root:red
if [ $UID -eq 0 ]; then
    PS1="\[\033[31m\]\u@\h\[\033[00m\]:\[\033[01m\]\w\[\033[00m\]\\$ "
else
    PS1="\[\033[36m\]\u@\h\[\033[00m\]:\[\033[01m\]\w\[\033[00m\]\\$ "
fi

source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true

HOST='\u@\h'
PS1="\[\033]0;$HOST\007\]"     # set window title
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'\[\033[32m\]'       # change color
PS1="$PS1"'\u@\h '             # user@host<space>
PS1="$PS1"'\[\033[33m\]'       # change color
PS1="$PS1"'\w'                 # current working directory
if test -z "$WINELOADERNOEXEC"
then
    PS1="$PS1"'\[\033[36m\]'
    PS1="$PS1"'$(__git_ps1)'   # bash function
fi
PS1="$PS1"'\[\033[0m\]'        # change color
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'$ '                 # prompt: always $


# "-F":ディレクトリに"/"を表示 / "-G"でディレクトリを色表示
alias ls='ls -FG'
alias ll='ls -alFG'

#ターミナルの先頭表記
export PS1='@\u\[\e[32m\]:\w\[\e[34m\]\$ '

# 出力の後に改行を入れる
function add_line {
  if [[ -z "${PS1_NEWLINE_LOGIN}" ]]; then
    PS1_NEWLINE_LOGIN=true
  else
    printf '\n'
  fi
}
PROMPT_COMMAND='add_line'

source ~/.git-prompt.sh