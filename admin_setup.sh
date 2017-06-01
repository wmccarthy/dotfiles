# some security config
# reference: https://github.com/drduh/macOS-Security-and-Privacy-Guide
# create the admin account and normal user account

# as admin enforce hibernation and evict FileVault keys from memory instead of traditional sleep to memory:

sudo pmset -a destroyfvkeyonstandby 1
sudo pmset -a hibernatemode 25

# and prevent waking up from standby after key eviction
sudo pmset -a powernap 0
sudo pmset -a standby 0
sudo pmset -a standbydelay 0
sudo pmset -a autopoweroff 0

# set basic firewall
Enable the firewall:

sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on

#Enable logging:
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setloggingmode on

#enable stealth mode:
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setstealthmode on

#prevent built-in software as well as code-signed, downloaded software from being whitelisted automatically:

sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setallowsigned off
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setallowsignedapp off

# restart the socketfilterfw
sudo pkill -HUP socketfilterfw

# kill spotlight suggestions
curl -O https://fix-macosx.com/fix-macosx.py
#less fix-macosx.py
/usr/bin/python fix-macosx.py

# install dev tools
xcode-select --install

# install homebrew from brew.sh


