# Install packages I like to use
brew install stow neovim

# Copy over dotfiles
stow -d dotfiles -t ~/.config/nvim .

# Install Starship
brew install starship
stow -d starship -t ~/.config .
echo "eval \"\$(starship init zsh)\"" >> ~/.zshrc


# Add .zsh files to .zshrc
# TODO: test this before using
# echo "source \"$HOME/.zprofile_safe\"" > temp
# echo "source \"$HOME/.zprofile\"" >> temp
# cat ~/.zshrc >> temp
# rm ~/.zshrc
# mv temp ~/.zshrc
# rm temp

### SETUP NEOVIM ###
## Dependencies:
# yarn
# Node

# Copy over configuration files
stow -d neovim -t ~/.config/nvim .

# Node plugin for neovim: https://neovim.io/doc/user/provider.html#_node.js-integration
yarn global add neovim

brew install ripgrep fd # For telescope plugin
brew install tree-sitter # For nvim-treesitter plugin
brew install code-minimap # For minimap plugin
  
