#!/usr/bin/zsh

# This script update the cargo index
#
# It does this by asking cargo to install a crate that doesn't provide a binary.
# Cargo will update the index and then give an error.

# Disable for now
exit 0

# Source my zsh config
source $HOME/.zshrc

# Do the actual update
cargo install lazy_static 2>&1 >/dev/null

# Log it
echo "Updated cargo index at $(date)" >> $HOME/cronjobs/logs/update-cargo.log

exit 0
