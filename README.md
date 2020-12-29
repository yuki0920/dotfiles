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

## Git Hooks の追加、設定反映

### テンプレート追加、修正

`./dotfiles/.git_template/hooks/pre-xxx`などを修正する

### 設定反映

初期化(init)時にテンプレートを読み込むよう設定しているので、 init もしくは clone をすることで設定が反映される

```.gitconfig
[init]
	templatedir = ~/.git_template
```

- 既存リポジトリの場合は上記で追加・修正した同名のファイルを削除してから、初期化

```
$ rm .git/hooks/pre-xxx
$ git init
```

- 新規のリポジトリの場合は、clone もしくは init すれば良い

```
$ git clone <repo_name>
```

## ref

全体の構成

- [dotfiles を管理しよう](https://qiita.com/massy22/items/5bdb97f8d6e93517f916)

ホスト環境ごとに異なる設定は `direnv` を使う

- [direnv を使おう](https://qiita.com/kompiro/items/5fc46089247a56243a62)

Git Hooks

- [Customizing Git - Git Hooks](https://git-scm.com/book/ja/v2/Git-%E3%81%AE%E3%82%AB%E3%82%B9%E3%82%BF%E3%83%9E%E3%82%A4%E3%82%BA-Git-%E3%83%95%E3%83%83%E3%82%AF)
- [Git フックの基本的な使い方](https://qiita.com/noraworld/items/c562de68a627ae792c6c)
