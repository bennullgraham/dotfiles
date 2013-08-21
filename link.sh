#!/bin/sh

src="$HOME/.dotfiles"
dest="$HOME"

links="vimrc vim"

# Before trying to make any links, do a sanity-check
for link in $links; do
    if [ ! -e "$src/$link" ]; then
        echo "Source dotfile $src/$link doesn't seem to exist, bailing out."
        exit 1
    fi
    if [ -e "$dest/.$link" -a ! -L "$dest/.$link" ]; then
        echo "Target dotfile $dest/.$link already exists, bailing out."
        exit 1
    fi
done

# Now, try to make some symlinks. Skip any existing links.
for link in $links; do
    if [ -L "$dest/.$link" ]; then
        echo "Not changing $dest/.$link, it's already a symlink."
    else
        echo "Symlinking $src/$link to $dest/.$link"
        ln -s "$src/$link" "$dest/.$link"
    fi
done


