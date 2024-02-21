# Dotfiles
```
git clone https://github.com/trbecker/dotfiles.git ~/.dotffiles
cd ~/.dotfiles
git submodule update --init --recursive
stow .
git clone https://github.com/tmux-plugins/tpm.git ~/.tmux/plugins/tpm
tmux
# In tmux, hit C-s I to load the plugins
```
