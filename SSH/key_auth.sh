#Key Based Authentication in Mac and Linux

#Commands:

ssh-keygen

#You may see output similar to:
Generating public/private rsa key pair.
Enter the file in which to save the key (/home/vm/.ssh/id_rsa): 

#It will ask you to enter file in which you want to store the public and private keys.
#Hit Enter to choose the default location.
#Directory '/home/vm/.ssh' will be created.

Enter passphrase (empty for no response): 
#To protect your key from theft, use strong password and confirm again.
#You may see output similar to:
Your identification has been saved in /home/vm/.ssh/id_rsa.
Your public key has been saved in /home/vm/.ssh/id_rsa.pub.
The key fingerprint is:
(xyz)
The key's randomart image is:
(xyz)

#You can use the command 'ls -alh' to check the creation of '.ssh' directory and check it's unique permission settings.

#Move to the ssh directory using command:

cd .ssh

#You may see output similar to:

id_rsa  id_rsa.pub

#Use the 'ls -alh' command to see it's content
#You may see output similar to:

total 16K
drwx------ 2 vm vm 4.0K Jun 30 00:02 .
drwxr-xr-x 8 vm vm 4.0K Jun 30 00:02 ..
-rw------- 1 vm vm 1.8K Jun 30 00:02 id_rsa
-rw-r--r-- 1 vm vm 400K Jun 30 00:02 id_rsa.pub

#You can see that id_rsa has restricted access to users and id_rsa.pub is supposed to be readable by others.

#There are many people on the Internet who are always looking for vulnerabilities on systems, websites, etc.
#You can check your own server history to see who all tried to attempt to login into your server (autentication attempts are logged here) using this command:

sudo cat /var/log/auth.login

#In the output, you may see a long list of authentication attempts by random requests on the Internet. 
#Any device on with port 22 will witness this activity.

#You can see the number of people trying to authenticate with 'invalid username' using the command:

sudo grep invalid /var/log/auth.log | wc -l

#You can also see the number of people trying to authenticate as 'root' using the command:

sudo grep invalid /var/log/auth.log | wc -l

