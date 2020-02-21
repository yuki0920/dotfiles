# bashrcの設定を自動反映
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# rbenv
export PATH=/usr/local/bin:$PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# lsの色付け
export LSCOLORS=gxfxcxdxbxegedabagacad

# postgresのPATH
export PATH=/usr/local/Cellar/postgresql/11.5_1/bin/:$PATH

# node.jsのPATH
export PATH=$HOME/.nodebrew/current/bin:$PATH

# コンパイラの設定
export CC=/usr/bin/gcc

# peco history の設定開始
export HISTCONTROL="ignoredups"
peco-history() {
  local NUM=$(history | wc -l)
  local FIRST=$((-1*(NUM-1)))

  if [ $FIRST -eq 0 ] ; then
    # Remove the last entry, "peco-history"
    history -d $((HISTCMD-1))
    echo "No history" >&2
    return
  fi

  local CMD=$(fc -l $FIRST | sort -k 2 -k 1nr | uniq -f 1 | sort -nr | sed -E 's/^[0-9]+[[:blank:]]+//' | peco | head -n 1)

  if [ -n "$CMD" ] ; then
    # Replace the last entry, "peco-history", with $CMD
    history -s $CMD

    if type osascript > /dev/null 2>&1 ; then
      # Send UP keystroke to console
      (osascript -e 'tell application "System Events" to keystroke (ASCII character 30)' &)
    fi
  else
    # Remove the last entry, "peco-history"
    history -d $((HISTCMD-1))
  fi
}
bind '"\C-x\C-r":"peco-history\n"'
# peco history の設定終わり

export PATH="/usr/local/opt/libressl/bin:$PATH"

# direnv の設定
export EDITOR="code"
eval "$(direnv hook bash)"

# エイリアスの設定
alias dc='docker-compose'
alias g='cd $(ghq root)/$(ghq list | peco)'
alias gh='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'
alias gg='git grep'
