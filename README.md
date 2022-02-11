# Settings

## Mac

1. 修饰键
    1. Fn -> CapsLock
    2. Ctrl -> Fn
    3. Option -> Control
    4. Command -> Option
    5. CapsLock -> Command

## Windows

ms office install

`mklink /D "C:\Program Files\Microsoft Office" "D:\Program Files\Microsoft Office"`

apps not in scoop

1. [neovim](https://github.com/neovim/neovim)
2. [wps](https://www.wps.com/)
3. [Qt](https://www.qt.io/download-open-source)
4. [advanced system care](https://www.iobit.com/en/advancedsystemcarefree.php)
5. [Predator PHN16-72](https://www.acer.com.cn/getmodel.html?name=40803763034&type=3)

## Manjaro

### Boot

dell G3，ssd + ssd；uefi + GPT

[Ventoy](https://github.com/ventoy/Ventoy) + [Manjaro](https://manjaro.org) + [Win11](https://www.microsoft.com/software-download/windows11)

```shell
sudo pacman-mirrors -i -c China -m rank
sudo pacman -S yay
```

### SSD

```shell
sudo systemctl enable fstrim.timer
sudo systemctl start fstrim.timer
```

### Software

```shell
yay -S clang llvm lld lldb cmake make tldr gnucash wget git vim postgresql
yay -S google-chrome visual-studio-code-bin
yay -S rustup prettier unzip codespell
yay -S v2raya-bin v2ray
yay -S fcitx5 fcitx5-qt fcitx5-configtool fcitx5-rime fcitx5-gtk
```

#### Rime

/usr/share/rime-data/build/

vim ~/.xprofile

```file
export INPUT_METHOD=fcitx5
export GTK_IM_MODULE=fcitx5
export QT_IM_MODULE=fcitx5
export XMODIFIERS=@im=fcitx5
fcitx5 &
```

#### Zsh

```shell
yay -S zsh
chsh -s $(which zsh)
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

/.zshrc ZSH-THEME="simple"

alias ins="yay -S"
alias unins="yay -Rns"
alias up="yay -Syyu"
alias clean="yay -Rns $(pacman -Qdtq)"
alias szsh="source ~/.zshrc"
```

#### GnuCash

```shell
mkdir GnuCash && cd GnuCash
git clone --depth=1 git@github.com:YtxCash/gnucash.git

cd .. && mkdir gnucash-build && cd gnucash-build
cmake -G Ninja ../gnucash

ninja
ninja check
```

#### Tldr

update_cache `tldr -u`

#### Qt 6.X

when C++ files suffix with ".hh .cc"

If Q_OBJECT is in the foo.h (i.e. QObject is declared in the header file), then in the corresponding foo.cpp add the following command, preferably at the end of the file.

```c++
#include "moc_foo.cpp"
```

If Q_OBJECT is in the foo.cpp (i.e. QObject is declared in the source file), then, again, in the foo.cpp itself add the following command , preferably at the end of the file.

```c++
#include "foo.moc"
```

if want to use Ui in console project, replace `Core` with `Widgets` in CMakeList.txt

### Configuration

hardware -> input devices -> Keyboard -> advanced -> ctrl positons -> swap ctrl and capslock

hardware -> input devices -> Keyboard -> Hardware -> NumLock on Plasma Startup -> Turn on

workspace -> workspace behavior -> activities -> privacy -> do not remember

```shell
yay -Rns firefox
yay -Scc
```
