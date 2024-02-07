# dotfiles
dotfiles, scripts and bootstraping

# Quick guide for setting up a new mac
Before anything else, install homebrew. It will be used as package manager in next steps.

`% /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

Install git. We will use it for clonning the dotfiles repo:

`% brew install git`

Install 1password. It's my personal store for ssh keys:

`% brew install --cask 1password`

Configure git/SSH for accessing github:

`% git config --global user.name "cestevezdev"`

`% git config --global user.email "cestevezdev@gmail.com"`

Save your private key in .ssh folder (e.g. ~/.ssh/cestevezdev).
You should already have the public key registered in Github. If not, do it.
Private/public keys can be generated following steps in Annex A.
Do not forget set the appropriate premissions for the public key:

`% chmod 400 ~/.ssh/cestevezdev`

And edit .gitconfig file for specifying the private key that will be used for authentication. After editing for adding the ssh command used for auth, the .gitconfig file should be like:
```
[user]
	name = cestevezdev
	email = cestevezdev@gmail.com
[core]
	sshCommand = ssh -i ~/.ssh/cestevezdev -F /dev/null
```

Know you can clone dotfiles. Do it wherever you want. I prefer to do it in ~/Projects/cestevezdev:

`% git clone git@github.com:cestevezdev/dotfiles.git`

Now you can setup mac basic apps and settings:

`% cd ~/Projects/cestevezdev/dotfiles/os/mac`
`% ./setup_mac.sh`

Deploy all software:

`% cd ~/Projects/cestevezdev/dotfiles/os/mac/brew`

`% brew bundle install`

Install VS Code extensions:

`% cd ~/Projects/cestevezdev/dotfiles/editors/vscode`

`% brew bundle install`

Config vim:

`% cp ~/Projects/cestevezdev/dotfiles/editors/vim/.vimrc ~`

Config poetry:

Add this to .zshrc:
```
export POETRY_CONFIG_DIR="$HOME/.config/pypoetry"
```
`% poetry config virtualenvs.in-project true`


# Annex A: SSH key management

Simple explanation about ssh keys: [SSH keys, Rob Edwards](https://www.youtube.com/watch?v=dPAw4opzN9g).

## Generate a key pair (public+private) of your client machine
This keys could be used later for authenticating with any service based on ssh protocol (e.g. clonning repos from github via ssh)

`% ssh-keygen -t rsa -m PEM -f <client_host>.pem`

This command generates a pair or files:

Remember to keep your private key always safe!

Exchange only the public key (see sharing pub key below)

## Sharing the pub with the server you want to access:

`ssh-copy-id -i <client_host>.pem.pub <server_username>@<server_host>`

