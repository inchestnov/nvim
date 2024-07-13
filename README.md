# nvim

### Requirements

Brew
```shell
# https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Neovim
```shell
brew install neovim
```

Nerd font
```shell
brew install font-meslo-lg-nerd-font
# After install change font in iTerm2 to MesloGS Nerd font mono
# Preferences -> Profile -> Text -> Font
```

Ripgrep
```shell
brew install ripgrep
```

Lazygit
```shell
brew install jesseduffield/lazygit/lazygit
```

Delve (only for go debug)
```shell
go install github.com/go-delve/delve/cmd/dlv@latest
```

Golangci-lint
```shell
brew install golangci-lint
```

### Usage
```shell
> mkdir -p ~/.config/nvim
> git clone https://github.com/inchestnov/nvim ~/.config/nvim/
```
