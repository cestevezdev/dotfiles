# dotfiles
dotfiles, scripts and bootstraping


# SSH key exchange (valid for ssh, VSCode remote ssh, etc.)

Simple explanation: [SSH keys, Rob Edwards](https://www.youtube.com/watch?v=dPAw4opzN9g).


1.- Generate key pair (pub, priv) of your client machine

`% ssh-keygen -t rsa -m PEM -f <client_host>.pem`

2.- Copy the pub key in the server you want to access:

`ssh-copy-id -i <client_host>.pem.pub <server_username>@<server_host>`

