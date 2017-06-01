# dotfiles
https://github.com/keith/dotfiles/tree/master

These are my dotfiles, there's a lot here. Feel free to open an issue if
something needs explanation.

Automate the install by running the bash script

If you'd like to try these out, you can create all the symlinks to
`$HOME` by running (Note this will not overwrite existing files):

```sh
./manage.sh install
```

You can also remove the symlinks with:

```sh
./manage.sh remove
```

Bootstrap OS X by running mac-install.sh in osx
 - run the manage script
 - run brew and cask
Run loginfix.sh to disable all resume features of OS X
Run launchd.sh to symlink the launchd plists
Run defaults.sh COMPUTERNAME to change tons of default settings
Run langs/rbenv.sh to setup rbenv
