# .dotfiles
Automate everything

NB: These are my configurations, use at own's risk :)

### Startup
First change ownership of your `/usr/local` directory back to yourself by running

`sudo chown -R $(whoami) /usr/local`

Then the next step is very easy, all you have to do is 

`cd .dotfiles` and

run `source run.sh`

### Details
This setup would install
- git
- heroku-toolbelt
- node
- postgres
- python
- redis
- vim
- dropbox
- firefox
- google-chrome
- google-drive
- slack
- sublime-text3
- vlc
- oh-my-zsh

Lastly this configuration would create symbolic links for
- .bash_profile
- .gitconfig
- .zshrc


Have a nice day..
