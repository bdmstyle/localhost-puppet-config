sudo chmod 777 * .
sudo apt-get install aptitude -y
./installPupet.sh
#sudo puppet apply --modulepath=/home/$USER/.puppet/modules localhost.pp
sudo puppet apply localhost.pp
