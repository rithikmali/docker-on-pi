sudo apt update
sudo apt install samba
echo -n "Please enter the path: "
read path1
sudo tee -a /etc/samba/smb.conf > /dev/null <<EOT
[sambashare]
    comment = Samba on Ubuntu
    path = $path1
    read only = no
    browsable = yes
EOT
