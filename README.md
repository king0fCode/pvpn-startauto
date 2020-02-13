#install-script . Type commands below at a time

$ sudo su 

$ apt install -y openvpn dialog python3-pip python3-setuptools

$ pip3 install protonvpn-cli

$ wget https://raw.githubusercontent.com/king0fCode/pvpn-startauto/master/start-vpn.sh

$ cp start-vpn.sh /etc/init.d/

$ chmod +x /etc/init.d/start-vpn.sh

$ update-rc.d start-vpn.sh defaults

$ sudo update-rc.d start-vpn enable

!# if the user is root
$ echo ". /etc/init.d/start-vpn.sh" >> ~/.bashrc

!# if you are not root and a user 
$ echo ". /etc/init.d/start-vpn.sh" >> ~/home/username/.bashrc

$ reboot


#once restart open Terminal and 
$ sudo su
!# it will automatically connect to nearest locations via VPN

!#  protonvpn-cli -f which connect to nearest location

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
