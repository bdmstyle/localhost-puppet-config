sudo chmod 777 * .
./installPupet.sh
#sudo puppet apply --modulepath=/home/$USER/.puppet/modules localhost.pp
sudo puppet apply localhost.pp
