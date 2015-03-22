# SSH

#Automated SSH#

Ever wondered if there's a simpler way of logging into a server/computer than always having to type your username and password? A nifty solution for automated login is exchanging SSH keys in advanced, and putting them in an authorized_keys file so that you don't have to type your password each time.

You simply append the content of your id_rsa.pub to the other computers authorized_keys file. You don't need to add both computers id_rsa.pub to eachothers authorized_keys file, only if you want two ways passwordless authentication. It's sufficient that only the computer you'd like to be able to log in to have the others public SSH key.
