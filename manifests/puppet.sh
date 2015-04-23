echo "Adding puppet repo"
wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
sudo dpkg -i puppetlabs-release-trusty.deb
sudo apt-get update -y
echo "installing puppet"
sudo apt-get install puppet -y
sudo apt-get install puppetmaster-passenger -y
sudo apt-get install puppetmaster -y
sudo puppet resource package puppet ensure=latest
sudo service puppetmaster start
