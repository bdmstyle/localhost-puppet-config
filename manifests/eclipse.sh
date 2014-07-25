if [ ! -d ~/dev/softwares/eclipse ]; then
  # Control will enter here if $DIRECTORY doesn't exist.
eclipseZip="eclipse-jee-luna-RC3-linux-gtk-x86_64.tar.gz"
eclipseUrl="https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/luna/RC3/$eclipseZip"
 
echo "->> Clear eclipse Luna.."
rm -rf ~/dev/softwares/eclipse
echo "->> Downloading eclipse Luna.."
mkdir -p ~/eclipse
wget -P ~/eclipse $eclipseUrl
 
echo "->> Extracting eclipse Luna.."
tar -xzf ~/eclipse/*.gz -C ~/eclipse
 
echo "->> Moving extracted files and setting permissions.."
mkdir -p ~/dev/softwares
mv ~/eclipse/eclipse ~/dev/softwares
rm -Rf  ~/eclipse
echo "->> eclipse instaled ~/dev/softwares/eclipse.."
fi
echo "->> eclipse already instaled ~/dev/softwares/eclipse.."
exit 0
