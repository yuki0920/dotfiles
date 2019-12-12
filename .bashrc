# gitの設定（下記3行を.bashrcの一番上に追加する）
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true

# default:cyan / root:red
if [ $UID -eq 0 ]; then
    PS1='\[\033[35m\]\u@\h:\[\033[32m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n-> \$ '
else
    PS1='\[\033[34m\]\u@\h:\[\033[32m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n-> \$ '
fi

# "-F":ディレクトリに"/"を表示 / "-G"でディレクトリを色表示
alias ls='ls -FG'
alias ll='ls -alFG'

# 出力の後に改行を入れる
function add_line {
  if [[ -z "${PS1_NEWLINE_LOGIN}" ]]; then
    PS1_NEWLINE_LOGIN=true
  else
    printf '\n'
  fi
}
PROMPT_COMMAND='add_line'
