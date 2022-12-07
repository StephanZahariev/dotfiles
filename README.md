# My dotfiles

## Prep

### Fish shell

Install from: [https://fishshell.com](https://fishshell.com)

Set as default shell:

```sh
chsh -s /usr/local/bin/fish
```

### Brew

Install by

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Apple Silicon only

Install Rosetta 2:

```sh
/usr/sbin/softwareupdate --install-rosetta --agree-to-license
```

### Download the repo

```sh
git clone https://github.com/StephanZahariev/dotfiles.git ~/Documents/dotfiles
```

## Steps

```sh
osx-setup.sh
osx-dotfiles-link.sh
osx-app-install.sh
```

## Don't forget to

* Change Fn with Control key
* Add BG Phonetic keyboard layout
* Set Change language shortcut key to Control+Shift+Space
* Set F1-F12 to be defaults
