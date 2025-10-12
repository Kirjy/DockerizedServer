# Mounted share
As we are using an already mounted share, please note that you could have a permission issue if not mounted correctly !
Here is my fstab content. The share is fully opened in my local network.
- //ROUTER/sda1  /mnt/routershare  cifs  uid=1000,gid=1000,guest,noauto,x-systemd.automount  0  0
The important part is the uid and gid which need to be the same as the ones set up in the compose file.
