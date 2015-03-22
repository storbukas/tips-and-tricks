#Check for SSH keys#

Before you generate SSH keys, check if they already exist on your computer.

    ls -al ~/.ssh

Which normally lists the files:

    id_rsa.pub
    id_rsa

#Generate SSH keys#

To generate new keys, type the following in the command line

    ssh-keygen -t rsa -C "email-address@example.com"
