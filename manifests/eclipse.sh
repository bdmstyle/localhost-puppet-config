# Script Config
sudo chmod -Rf 777 /opt/eclipse

eclipseZip="eclipse-jee-luna-RC3-linux-gtk-x86_64.tar.gz"
eclipseUrl="https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/luna/RC3/$eclipseZip"
eclipseDir="eclipse"
 
echo "->> First remove previous install if exists.."
rm -rf /opt/$eclipseDir
rm /usr/bin/$eclipseDir
rm /usr/share/applications/$eclipseDir.desktop
 
echo "->> Downloading eclipse Luna.."
#curl $eclipseUrl > /home/$eclipseZip
cp /home/bruno/Downloads/$eclipseZip /home/$eclipseZip
 
echo "->> Extracting eclipse Luna.."
tar -xzf /home/$eclipseZip -C /home
 
echo "->> Moving extracted files and setting permissions.."
mv /home/eclipse /opt/$eclipseDir
chown -R root:root /opt/$eclipseDir
chmod -R +r /opt/$eclipseDir
 
echo "->> Cleaning downloaded files.."
rm /home/$eclipseZip
 
echo "->> Creating and configuring executable.."
eclipse=$(<./config/$eclipseDir)
cat <<EOF >/usr/bin/$eclipseDir
$eclipse
EOF
 
chmod 755 /usr/bin/$eclipseDir
 
echo "->> Creating a gnome menu item.."
eclipse_desktop=$(<./config/$eclipseDir.desktop)
cat <<EOF >/usr/share/applications/$eclipseDir.desktop
$eclipse_desktop
EOF
 
echo "->> Adding hack for debian wheezy to make eclipse luna work, according to -> https://bugs.eclipse.org/bugs/show_bug.cgi?id=430736 inserting config line to eclipse.ini"
sed -i.bak 's/.*--launcher.appendVmargs.*/&\n--launcher.GTK_version\n2/' /opt/$eclipseDir/eclipse.ini
 
echo "->> Install Finished Launching for the First Time.."
/opt/$eclipseDir/eclipse -clean &
