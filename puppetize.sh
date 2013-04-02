#!/bin/bash

## Written by Torgeir Arnoy [torgeir@torgeir.us] ##

clear
echo -e "\nThis script does the following:
* Setting the defined hostname on the remote server.
* Installs puppet on the desired remote server using aptitude.
* Making a cert request to the puppet master (pre defined inside the script).
* Approves the request from the agent.

Press \e[0;32mEnter to continue\e[00m OR \e[00;31mCTRL + Z to cancel \e[00m"
read

puppetmaster=ntepuppetmaster01.nte.local
echo "Enter the desired hostname of your new node (should allready be in DNS):"
read host

if [ -f /var/lock/puppetize.$host ]
then
echo -e "
\e[1;33mWARNING: The script has allready been executed with the specified hostname!
To remove this warning, delete the lockfile in /var/lock/.
Press any key to override or CTRL + Z to abort!\e[00m"
read
fi


echo "Please enter the IP adress for your new node:"
read ip
echo "Please enter the node's username:"
read username

touch /var/lock/puppetize.$host
puppet cert clean $host.nte.local
ssh-copy-id $username@$ip
ssh $ip hostname $host
ssh $ip "echo '$host' > /etc/hostname"
ssh $ip 'apt-get update; apt-get --yes --force-yes install puppet;'
scp /etc/puppet/files/puppet.conf.default.nte $ip:/etc/puppet/puppet.conf
scp /etc/puppet/files/default.puppet $ip:/etc/default/puppet
ssh $ip puppet agent --server $puppetmaster --test
sleep 5
puppet cert sign $host.nte.local

echo "
node $host {

}
" >> /etc/puppet/manifests/site.pp

sleep 5
ssh $ip puppet agent --test

echo -e "
\e[0;32m Node is puppetized! \e[00m"

logger PUPPETIZE: Initiated a new puppet node by using the puppetize.sh script.
