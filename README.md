# dotfiles

## 新規の設定ファイル追加

```
$ cd ~/dotfiles
```

`setup.sh` の `DOT_FILES`に追記

```
DOT_FILES=( .gitconfig .pryrc .bashrc .bash_profile .git-completion.bash .git-prompt.sh )
```


## 設定ファイルの反映

```
$ cd ~/dotfiles
$ source .bash_profile
$ ./setup.sh
```

## ref
全体の構成
- [dotfilesを管理しよう](https://qiita.com/massy22/items/5bdb97f8d6e93517f916)

ホスト環境ごとに異なる設定は `direnv` を使う
- [direnvを使おう](https://qiita.com/kompiro/items/5fc46089247a56243a62)
