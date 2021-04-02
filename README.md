# Sh4dow's Window Manager Installer (SWM)

# Version

Version: 1.0 Beta 1

# Overview

This guide teaches how to perform a clean install of Arch Linux, as well as
how to use the "Sh4dow's Window Manager Installer"(SWM) which will be used
to install window managers with custom settings, plus various additional
programs that will complement and enhance the desktop environment for the
user.

I will assume that you are comfortable with Linux based operating systems
and command line interfaces.

If you have a previous Arch Linux installation, I recommend you to backup
your files and reinstall Arch Linux. This because, can be problems if it
not is a clean installation.

# Arch Linux Installation

Arch Linux should run on any "x86_64"-compatible machine with a minimum of
"512 MB" in "RAM". A basic installation should take less than "2 GB" of disk
space. As the installation process needs to retrieve packages from a remote
repository, this guide assumes a working internet connection is available.

First at all, you need to download the ".iso" that you can find here:
**[Arch Linux ISO Download](https://archlinux.org/download/)**

Now, read the
**[Arch Linux Installion Guide](https://wiki.archlinux.org/index.php/Installation_guide)**
, but not reboot your system, because the installation guide do not tell
you what you have to do after you install the necesarry things to boot Arch.

First, you will need to install the package "Network Manager":

```bash
pacman -S networkmanager
systemctl enable NetworkManager
```

This package, as its name suggests, it is a manager to the network that can
allow you to connect to the Internet.

Also, you need the package "grub". If you have a system with "dos" you will
do:

```bash
pacman -S grub
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
```

If you have a system with "UEFI" you will do:

```bash
pacman -S grub efibootmgr os-prober
grub-install --target=x86_64-efi --efi-directory=/boot
os-prober
grub-mkconfig -o /boot/grub/grub.cfg
```

Now, you will install the package "sudo":

```bash
pacman -S sudo
```

Edit **/etc/sudoers** with **nano** by uncommenting this line:

```bash
## Uncomment to allow members of group wheel to execute any command
# %wheel ALL=(ALL) ALL     <--- This Line
```

That allow to all the users in the "wheel" group to use administrator
permission for a command that need it. For Example:

```bash
sudo pacman -R nano
```

Later, you can create a new user (<username> refers to the name of the
user you are creating. You should not put the "<>"):

```bash
useradd -m <username>
passwd <username>
usermod -aG wheel,audio,video,storage <username>
```

Now the user is created and can use the command "sudo" without problems.

Finally, you must exit the root in "/mnt", unmount "/mnt" recursively
and reboot your system.

```bash
exit
umount -R /mnt
reboot
```

If you have a Laptop, after reboot and enter in your system, you will
put(<device> refers to the wireless interface that you have. Normally
is "wlan0". You should not put the "<>"):

```bash
nmcli <device> wifi list
```

This will show you a list of access points in your area.

If you do not have the "wlan0" interface, you can check what interface
you have with the next command:

```bash
ip link
``` 

This command show you the interfaces that you have in your system.

To access to an access point put (<SSID> refers to a name of the access
point. <password> refers to the password of the access point. You should not
put the "<>"):

```bash
nmcli <device> wifi connect <SSID> password <password>
```

If you want to know, the command "nmcli" means "Network Manager Command Line
Interface", that you install when did you install the package "Network
Manager".