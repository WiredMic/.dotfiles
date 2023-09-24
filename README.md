# .dotfiles
A repo for all my dotfiles and install scripts.

# How to use

## SSH
[GitHubs SSH guide](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

First we need to setup ssh and connect it with GitHub. This is done because this repo is private.

`ssh-keygen -t ed25519 -C "your_email@example.com"`

Then it will ask for a name. Call it something to do with github.

Last it will ask for a password. You know the password.

### Adding your SSH key to the ssh-agent


`eval "$(ssh-agent -s)"`

`ssh-add ~/.ssh/$KEY_NAME`

[Last add the public key to your GitHub account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account).

## Clone to PC

First make the dotfiles directory.

`mkdir ~/.dotfiles/`

Then clone the repo into the dir

`git clone git@github.com:WiredMic/.dotfiles.git ~/.dotfiles/.`

## Run the init script

First make it runable.

`chmod +x ~/.dotfiles/init.sh`

then run the script.

`~/.dotfiles/init.sh`
