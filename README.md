# Manjaro

## 启动盘

硬件：dell G3，ssd + ssd；uefi + GPT

刻录：ventoy + [manjaro && win11]

## Software

```shell
yay -S clang llvm lld lldb cmake make boost cpplint tldr gnucash wget git vim wireguard-tools v2ray-plugin-git
yay -S google-chrome visual-studio-code-bin fcitx5 fcitx5-qt fcitx5-configtool fcitx5-rime fcitx5-gtk
```

### rime

```shell
sudo vim ~/.xprofile
export INPUT_METHOD=fcitx5
export GTK_IM_MODULE=fcitx5
export QT_IM_MODULE=fcitx5
export XMODIFIERS=@im=fcitx5
fcitx5 &
```

### WireGuard

```shell

wget --no-check-certificate -O /opt/wireguard.sh https://raw.githubusercontent.com/teddysun/across/master/wireguard.sh

chmod 755 /opt/wireguard.sh

/opt/wireguard.sh -s

cat /etc/wireguard/wg0_client

qrencode -t ansiutf8 < /etc/wireguard/wg0_client

```

### ss-plugins

```shell
wget -N --no-check-certificate -c -t3 -T60 -O ss-plugins.sh https://git.io/fjlbl

chmod +x ss-plugins.sh

./ss-plugins.sh
```

### Zsh

```shell
yay -S zsh
chsh -s $(which zsh)
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

/.zshrc ZSH-THEME="simple"

alias ins="yay -S"
alias uins="yay -Rns"
alias up="yay -Syyu"
alias clean="yay -Rns $(pacman -Qdtq)"
alias szsh="source ~/.zshrc"
```

### LLD

强制编译器使用 ld.lld

```shell
clang++ -fuse-ld=lld
```

### GnuCash

```shell
mkdir GnuCash && cd GnuCash
git clone --depth=1 git@github.com:YtxCash/gnucash.git

cd .. && mkdir gnucash-build && cd gnucash-build
cmake -G Ninja ../gnucash

ninja
ninja check

```

### Tldr

update_cache `tldr -u`

### VsCode

```shell
# ccls
git clone https://github.com/MaskRay/ccls
cd ccls
git submodule update --init --recursive
sudo cmake -H. -BRelease -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_COMPILER=clang++
sudo cmake --build Release --target install

# add .ccls file in project folder
clang++
%c -std=c11
%cpp -std=c++2a
%hpp -std=c++2a
%h -x
%h c++-header

# add .clang-format in project folder
clang-format -style=google -dump-config > .clang-format

IncludeCategories:
  - Regex:           '^<.*\.hpp>'
    Priority:        3
    SortPriority:    0
```

### Shadowsocks

install

```shell
wget -N --no-check-certificate -c -t3 -T60 -O ss-plugins.sh https://git.io/fjlbl
chmod +x ss-plugins.sh
./ss-plugins.sh
```

### Qt 6.3.1

#### when C++ files suffix with ".hh .cc"

If Q_OBJECT is in the foo.h (i.e. QObject is declared in the header file), then in the corresponding foo.cpp add the following command, preferably at the end of the file.

```c++
#include "moc_foo.cpp"
```

If Q_OBJECT is in the foo.cpp (i.e. QObject is declared in the source file), then, again, in the foo.cpp itself add the following command , preferably at the end of the file.

```c++
#include "foo.moc"
```

#### Setting

if want to use Ui in console project, replace `Core` with `Widgets` in CMakeList.txt

### Git

#### SSH Key Connect

creat

```shell
ssh-keygen -t rsa -C "ytx.cash@gmail.com"
```

add public key to github

```shell
cat ~/.ssh/id_rsa.pub
```

test

```shell
ssh -T git@github.com
```

#### Config

```shell
git remote add origin git@github.com:
git config --global user.email "ytx.cash@gmail.com"
git config --global user.name "YTX"
git config --global color.ui auto
git push -u origin master
```

#### Command

```shell
git init
git status
git add
git commit
git log
git log --pretty=short
git log --graph
git log xx.md
git log -p xx.md
git reflog expire --expire=7.days.ago --expire-unreachable=now --all
git diff
git diff HEAD
```

#### Branch

```shell
git branch
git branch -b xx
git branch -
git merge --no-ff xx
git reset --hard yyyyyyy
git checkout --orphan
git branch --set-upstream-to=origin/master
git reflog
```

#### Commit

```shell
git commit --amend
git rebase -i HEAD~2
```

#### Remote

```shell
git clone --depth=1
git remote -v
git remote remove
```

#### Pull Developer's Branch

```shell
git branch -new
git checkout -b xx origin/xx
git pull origin xx
```

## Configuration

hardware -> input devices -> Keyboard -> advanced -> ctrl positons -> swap ctrl and capslock

hardware -> input devices -> Keyboard -> Hardware -> NumLock on Plasma Startup -> Turn on

workspace -> workspace behavior -> activities -> privacy -> do not remember

## Uninstall Clean

```shell
yay -Rns firefox
yay -Scc
```
