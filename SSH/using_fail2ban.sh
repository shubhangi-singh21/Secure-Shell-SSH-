[Fail2ban](https://www.digitalocean.com/community/tutorials/how-fail2ban-works-to-protect-services-on-a-linux-server)
#Installing fail2ban

sudo apt update
sudo apt upgrade -y && sudo apt full-upgrade -y
sudo apt install fail2ban

#Fail2ban will be successfully installed after this.

#We will set some configuration settings after this.

sudo vim /etc/fail2ban/jail.local

#Enter the following commands to edit the file:

[DEFAULT]
# Ban hosts for one hour:
bantime = 3600

#Override /etc/fail2ban/jail.d/00-firewalld.config
banaction = iptables-multitable

[sshd]
enabled = true

#Save and quit the editor.

#Installing sendmail

sudo apt install sendmail iptables-persistent

#A dialog block may appear, hit yes.

#Enabling fail2ban using command:

sudo service fail2ban start

#You can use this command to chack the status:

sudo fail2ban client status sshd

#It will list the IP address banned.

