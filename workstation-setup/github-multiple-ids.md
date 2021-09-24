# Multiple SSH Keys settings for different github accounts

## Create different public keys

Create different ssh key according the article [Mac Set-Up Git](http://help.github.com/mac-set-up-git/)

    $ ssh-keygen -t rsa -C "loctran106@gmail.com"

Please refer to [github ssh issues](http://help.github.com/ssh-issues/) for common problems.

Add these keys via `ssh-add` command

    $ ssh-add ~/path/to/keys/dir/blah
    $ ssh-add ~/path/to/keys/dir/foo

If necessary, delete all cached keys

    $ ssh-add -D

List saved keys

    $ ssh-add -l

## Modify the ssh config

    $ cd ~/.ssh/
    $ nano config

Then added

```sh
Host *
    StrictHostKeyChecking no

#Work github
Host github.com
    HostName github.com
    User git
    IdentityFile "/Users/loc/OneDrive - Spirent Communications/keys/ltran"
    IdentitiesOnly yes

#Personal github
Host github.com-loctran106
    HostName github.com
    User git
    IdentityFile "/Users/loc/OneDrive - Spirent Communications/keys/loctran106"
    IdentitiesOnly yes

```

## Clone you repo and modify your Git config

Configure local git config

    $ git config user.name "loc"
    $ git config user.email "loctran106@gmail.com"

or

    $ git config user.name "loc-companyname"
    $ git config user.email "jexlab@gmail.com"

Set global git config

    $ git config --global user.name "Loc"
    $ git config --global user.email "loc.tran@companyname.com"

then use normal flow to push your code

    $ git add .
    $ git commit -m "your comments"
    $ git push
