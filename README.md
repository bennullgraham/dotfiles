## dotfiles

1. Clone into `~/.dotfiles`
2. Run `git submodule update --init` in the clone
3. Run `./link.sh` in the clone. It will complain about all the existing dotfiles in your homedir that it wants to overwrite. You need to (re)move these manually. This is a forced sanity check.
4. Run `./link.sh` again
5. Profit!
