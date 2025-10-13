echo "====== SETTING UP TMUX ======"

echo "=== Copying configuration files..."
stow -d tmux/ -t ~ --ignore=.sh$ .

echo "=== Installing theme: Catppuccin..."
git clone https://github.com/catppuccin/tmux.git $HOME/.tmux/plugins/catppuccin/tmux

echo "=== Setup complete!"
