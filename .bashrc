# gitの設定（下記3行を.bashrcの一番上に追加する）
source $HOME/.git-completion.bash
source $HOME/.git-prompt.sh
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

# ヒストリーサイズの設定
export HISTSIZE=50000

#重複履歴を無視
export HISTCONTROL=ignoredups
