 
#!/bin/sh
# Wait for the GUI to be ready
while [[ ! $(pgrep plasmashell) ]]; do sleep 1; done

sudo -S protonvpn-cli -f
