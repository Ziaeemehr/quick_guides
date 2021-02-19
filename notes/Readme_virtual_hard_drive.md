### References

-  [How to Create a Virtual HardDisk Volume Using a File in Linux](https://www.tecmint.com/create-virtual-harddisk-volume-in-linux/)


-  [install windows 7 from virtual box on Ubuntu, create virtual hard drive](https://askubuntu.com/questions/1227176/install-windows-7-from-virtual-box-on-ubuntu-create-virtual-hard-drive?noredirect=1#comment2064616_1227176)

-  [Create a virtual hard drive volume within a file in Linux](https://thelinuxexperiment.com/create-a-virtual-hard-drive-volume-within-a-file-in-linux/)




sudo dd if=/dev/zero of=VHD.img bs=1M count=1200
sudo mkfs -t ext4 VHD.img
sudo mkdir /mnt/VHD/
sudo mount -t auto -o loop VHD.img /mnt/VHD/

df -hT

sudo umount -l /mnt/VHD/


#### [Convert IMG File To VDI File Using Oracle VirtualBox](https://www.ostechnix.com/how-to-convert-img-file-to-vdi-file-using-oracle-virtualbox/)

$ VBoxManage convertdd input.img output.vdi


-  [Install Windows 10 using Virtualbox (UEFI)](https://www.youtube.com/watch?v=xOqL9QlfAwI)


-  [How to Give All Permissions in Ubuntu](https://smallbusiness.chron.com/give-permissions-ubuntu-33174.html)



[Nemo file manager: How can I change font color of folder names in toolbar button?](https://askubuntu.com/questions/328520/nemo-file-manager-how-can-i-change-font-color-of-folder-names-in-toolbar-button)

[install windows 7 from virtual box on Ubuntu, create virtual hard drive
](https://askubuntu.com/questions/1227176/install-windows-7-from-virtual-box-on-ubuntu-create-virtual-hard-drive)
