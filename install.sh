#bin.sh
sudo pacman -Syu qemu libvirt virt-manager dnsmasq edk2-ovmf ebtables git sddm 
sudo systemctl enable libvirtd
sudo systemctl start libvirtd
sudo systemctl enable virtlogd.socket
sudo systemctl start virtlogd.socket
sudo systemctl enable sddm
sudo mv grub /etc/default/
sudo mv hooks /etc/libvirt/
sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo chmod +x /etc/libvirt/hooks/qemu.d/win10/prepare/begin/start.sh
sudo chmod +x /etc/libvirt/hooks/qemu.d/win10/prepare/begin/isolstart.sh
sudo chmod +x /etc/libvirt/hooks/qemu.d/win10/release/end/revert.sh
sudo chmod +x /etc/libvirt/hooks/qemu.d/win10/release/end/isocpurevert.sh
sudo chmod +x /etc/libvirt/hooks/qemu
mkdir /home/$USER/.config
mv .config/* /home/$USER/.config/
sudo mv win10.xml /etc/libvirt/qemu/win10.xml
sudo pacman -S network-manager-applet i3-gaps 	python-pip kmix pulseaudio i3 i3blocks git i3lock i3status alacritty fish powerline-fonts xcompmgr xwallpaper dmenu curl neofetch nvidia-dkms arandr gnome-system-monitor
git clone git://github.com/tobi-wan-kenobi/bumblebee-status
mv bumblebee-status /home/$USER/
mkdir /home/$USER/Documents/
mkdir /home/$USER/Documents/Pictures/
mv wallpaper /home/$USER/Documents/Pictures/
sudo mv bg.sh /bin/
sudo chmod +x /bin/bg.sh
pip install psutil
chsh -s `which fish`
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S brave-bin
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
sudo omf install agnoster
