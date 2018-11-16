# okamu dotfiles-light
- MacbookAir13(2018) 用に軽いものだけど開発に必要なものを揃える

## installaton
### Dotfiles
```
# Install homesick
gem install homesick

# Clone repository
homesick clone okamuroshogo/dotfiles-light

# Link dotfiles
homesick symlink dotfiles
```

### Install Homebrew
```
cd ~/.homesick/repos/dotfiles/
./.brew_install
```

### Install anyenv environment
```
cd ~/.homesick/repos/dotfiles/
./.anyenv_install
```

### Setup osx
```
cd ~/.homesick/repos/dotfiles/
./.osx
```

### Install latest env
```
cd ~/.homesick/repos/dotfiles/
./.latest_env_install
```
