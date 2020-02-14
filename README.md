#install-script . Type commands below at a time

$ sudo su 

$ apt install -y openvpn dialog python3-pip python3-setuptools

$ pip3 install protonvpn-cli

$ wget https://raw.githubusercontent.com/king0fCode/pvpn-startauto/master/start-vpn.sh

$ cp start-vpn.sh /etc/init.d/

$ chmod +x /etc/init.d/start-vpn.sh

$ update-rc.d start-vpn.sh defaults

$ sudo update-rc.d start-vpn enable or $ sudo update-rc.d start-vpn.sh enable

!# if the user is root
$ echo "sh /etc/init.d/start-vpn.sh" >> ~/.bashrc

!# if you are not root and a user (make sure "username" replace with your Username
$ echo "sh /etc/init.d/start-vpn.sh" >> ~/home/username/.bashrc

$ reboot


#once restart 
!# it will automatically connect to nearest locations via VPN

!#  protonvpn c -f which connect to nearest location

!# you can customize it 

!# options 

!# protonvpn c --cc [countrycode]	 (Connect to the fastest server in a specified country.)

!# protonvpn-cli -f           (Connect to the fastest server.)

!# protonvpn c --sc	         (Connect to the fastest Secure Core server.)

!# protonvpn reconnect, r	 ( Reconnect or connect to the last server used.)

!# protonvpn c -r	         ( Connect to a random server.)

!# protonvpn c [servername]	 ( Connect to a specified server.)

!# Simply edit  start-vpn.sh with nano or prefered editor/ if you want to customize

$ nano /etc/init.d/start-vpn.sh 

$ protonvpn c --sc	



!# if you find Dublicated files on .bashrc  remove them

nano /.bashrc


#Disclaimer Below step is Too Risky, Account may lock changing files below


!# if you have issue with root promt. Try change permissions on /etc/passwd 
!# also add user to visudo 
$ visudo 
Username (ALL:ALL) ALL


Also, if you are trying to achieve is Ip leak protection. Configure Kill-switch function. 


#Guide 

Enabling Kill Switch

To enable Kill Switch, open the configuration menu with protonvpn configure, then select 5 for Kill Switch and confirm the activation with either 1 or 2, depending on your preference.


#! Referrence https://protonvpn.com/support/linux-vpn-tool/
