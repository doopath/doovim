# Doovim
## What is doovim?
**Doovim is my personal vim (neovim) config**

![no image](https://github.com/sha1om/doovim/blob/main/screenshots/doovim.png?raw=true)
![no image](https://github.com/sha1om/doovim/blob/main/screenshots/doovim_full.png?raw=true)

## How to install doovim?
**You have two ways to install doovim configuration**


**You can do it with installing binary:**
```shell
git clone https://github.com/sha1om/doovim.git
cd doovim
chmod +x install
./install
```


**Or install it yourself (arch-linux example):**
```shell
git clone https://github.com/sha1om/doovim.git
cd doovim

// Use your packmanager (apt/pacman/dnf)
sudo pacman -S vim neovim nodejs python
mkdir ~/.config/nvim
cp ./init.vim ~/.config/nvim/

// Vim-plug installing (see https://github.com/junegunn/vim-plug#installation)
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

```


**Plugins installation**
```
:PlugInstall
```

**Languages autocompleter settings. For more see [coc.nvim](https://github.com/neoclide/coc.nvim)**

**Inside the nvim:**
```
:CocInstall coc-tabnine
```

