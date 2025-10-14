# Setup zsh
sudo dnf install -y zsh
sudo chsh $USER -s $(which zsh)

# Setup Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install stow for symlinking
sudo dnf install -y stow

# Symlink general dotfiles
dotfiles/sync.sh
echo "\n source $HOME/.zprofile_safe" >> $HOME/.zshrc
echo "source $HOME/.zprofile" >> $HOME/.zshrc
source $HOME/.zshrc

# Setup Starship
sudo dnf copr enable atim/starship
sudo dnf install starship
echo "\n# Initialize Starship" >> $HOME/.zshrc
echo 'eval "$(starship init zsh)"' >> $HOME/.zshrc
source $HOME/.zshrc
starship/sync.sh

# Setup Neovim
sudo dnf install -y neovim
neovim/sync.sh

# Use Neovim for git commits
git config --global core.editor "nvim"

# Setup Foot terminal
sudo dnf install -y foot
terminals/foot/sync.sh

# Setup tmux
sudo dnf install -y tmux
tmux/install.sh

# Setup atuin for code completion
sudo dnf install -y atuin
echo 'eval "$(atuin init zsh)"' >> $HOME/.zshrc

# Setup more programs
sudo dnf install -y dua-cli fzf the_silver_searcher hyfetch

echo "Setup complete! Next steps:"
echo "* Install a Nerd font: https://www.nerdfonts.com/font-downloads"
echo "* Restart machine or log out to enable zsh"
