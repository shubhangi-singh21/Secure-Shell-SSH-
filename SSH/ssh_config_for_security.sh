#Things we will do/check to harden ssh:
#- Consider whether you want to change from default port of 22
#- Ensure Protocol is set to 2
#- Disable root remote access
#- Disable Challenge Remote Authentication
#- Disable Password Authentication

#This is done in the /etc/ssh directory.
#Using ls you can see the contents of this file.
#You may see sshd_config file here.
#If you have file sshd_config, then make a copy of it using 

sudo cp sshd_config sshd_config.1

#Now the copy is created and we can edit the original file using comand:

sudo vim sshd_config

#We can see that the default port set is 22.
#We will lock down port 22 so that it is secure to read off the bad traffic coming on this port from outside.
#You can simply also change the port by editing the file. Remember to make changes in your firewall as well.
#For connecting via ssh via new port, you can use command:

ssh [name of user]@[their ip address] -p [new port number]

ssh vm@192.168.254.108 -p 222

#Other than CLI, this can also be done using GUI using PuTTy in Windows.
#Over there also, we can change the port no. easily.
#You can also save your ssh connection for later use.

#Change PermitRootLogin to "no"

#Change ChallengeResponseAuthentication to "no"

#Change PasswaordAuthentication to "no"

#Use command:

diff sshd_config sshd_config.1

#Use command:

sudo service ssh restart

ssh vm@192.168.254.108

sudo su -

exit
