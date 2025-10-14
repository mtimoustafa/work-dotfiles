# Setup zsh
brew install zsh
sudo chsh $USER -s $(which zsh)

# Setup Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install stow for symlinking
brew install stow

# Symlink general dotfiles
dotfiles/sync.sh
echo "\n source $HOME/.zprofile_safe" >> $HOME/.zshrc
echo "source $HOME/.zprofile" >> $HOME/.zshrc
source $HOME/.zshrc

# Setup Starship
brew install starship
echo "\n# Initialize Starship" >> $HOME/.zshrc
echo 'eval "$(starship init zsh)"' >> $HOME/.zshrc
source $HOME/.zshrc
starship/sync.sh

# Setup Neovim
brew install neovim
neovim/sync.sh

# Use Neovim for git commits
git config --global core.editor "nvim"

# Setup iTerm
mkdir temp
(cd temp && 
  curl -L https://iterm2.com/downloads/stable/latest -o iterm2.zip &&
  tar -xf iterm2.zip &&
  mv iTerm2.app /Applications/
)
rm -rf temp

# Setup atuin for code completion
brew install atuin
echo 'eval "$(atuin init zsh)"' >> $HOME/.zshrc

# Setup more programs
brew install dua-cli fzf the_silver_searcher hyfetch

echo "Setup complete! Next steps:"
echo "* Install a Nerd font: https://www.nerdfonts.com/font-downloads"
echo "* Apply iterm_theme.json in your iTerm preferences"
