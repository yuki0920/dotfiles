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
export PKG_CONFIG_PATH="/usr/local/opt/imagemagick@6/lib/pkgconfig"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"

# 以下エイリアス設定
# Linuxベースのsedを使う
alias sed='gsed'
# "-F":ディレクトリに"/"を表示
alias ls='ls -FG'
# "-G"でディレクトリを色表示
alias ll='ls -alFG'
alias dc='docker-compose'
alias g='cd $(ghq root)/$(ghq list | peco)'
alias gh='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'
alias gg='git grep'
