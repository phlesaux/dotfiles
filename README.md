## Installation

### Git-free install

To install these dotfiles without Git:

```bash
cd && \
curl -#L https://github.com/phlesaux/dotfiles/tarball/main | \
tar -xz --strip-components 1 --exclude={README.md,LICENSE-MIT.txt} && \
./brew.zsh
```

To update later on, just run that command again.
