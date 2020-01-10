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
export PATH=/usr/local/Cellar/postgresql/12.5_1/bin/:$PATH

# node.jsのPATH
export PATH=$HOME/.nodebrew/current/bin:$PATH

# コンパイラの設定
export CC=/usr/bin/gcc

export PATH="/usr/local/opt/libressl/bin:$PATH"

# direnv の設定
export EDITOR="code"
eval "$(direnv hook bash)"

# historyの数を50000に指定
HISTSIZE=50000

# エイリアスの設定
alias dc='docker-compose'
alias g='cd $(ghq root)/$(ghq list | peco)'
alias gh='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'
