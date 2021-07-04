# dotfiles
Configuration for program I use

## NVIM

1. Install nvim: [Official site](https://neovim.io/)
2. Install [vim-plug](https://github.com/junegunn/vim-plug)
3. Copy nvim folder to ~/.config
4. Set source
```bash
source ~/.config/nvim/init.vim
```
5. Set nvim as git diftool, and git mergetool. Copy gitconfig to ~/.gitconfig
6. Set source
```bash
source ~/.gitconfig
```

##Tmux

1. Install [tmux](https://github.com/tmux/tmux/wiki)
2. Install xclip - make shared clipboard between X-server and Tmux. More information you can get from [here](http://www.rushiagr.com/blog/2016/06/16/everything-you-need-to-know-about-tmux-copy-pasting-ubuntu/)
```bash
sudo apt-get install --assume-yes xclip
```
3. Copy 'tmux.config' to '~/.tmux.config'
4. Run tmux and run command
```
source-file ~/.tmux.config
```
