# EasyConnect-767

Make SangFor EasyConnect run on your Arch Linux distribution.

## Usage

```shell
cd EasyConnect-for-archlinux && makepkg
sudo pacman -U easyconnect-7.6.7.3-4-x86_64.pkg.tar.xz
```

## Start
Normal you can start with the .desktop file, If you can't start with .desktop file, you can start with such command

make sure EasyMonitor is running
```shell
sudo systemctl status EasyMonitor
```
if EasyMonitor is not running
```shell
sudo systemctl start EasyMonitor
sudo systemctl enable EasyMonitor
```
then

```shell
env LD_LIBRARY_PATH=/usr/share/sangfor/EasyConnect/pango/usr/local/lib /usr/share/sangfor/EasyConnect/EasyConnect --enable-transparent-visuals --disable-gpu
```

## Acknowledgement

arthur_0 (maintainer of https://aur.archlinux.org/easyconnect.git)
