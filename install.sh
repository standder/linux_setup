## setup work dir
work_dir = ./
## archlinuxcn keyring trust
sudo pacman-key --lsign-key "farseerfc@archlinux.org"
sudo pacman -S archlinuxcn-keyring

## firmware install
### aur
yay -S uefitool ast-firmware   \
         wd719x-firmware aic94xx-firmware \
        asahi-fwextract 

## create a buffet to save/keep source code and binary file for install system
mkdir -p ~/buffer
cd ~/buffer
git clone https://aur.archlinux.org/upd72020x-fw.git
makepkg -si # make upd702020x-fw package for archlinux

### extra
sudo pacman  -S iqsc alse-firmware gnome-firmware \
        qemu-system-x86-firmware sof-firmware fwupd 
### core
sudo pacman -S b43-fwcutter linux-firmware-whence \
        linux-firmware-liquidio linux-firmware-bnx2x \
        linux-firmware-mellanox linux-firmware-marvell \
        linux-firmware-qlogic linux-firmware-nfp \
        linux-firmware-qcom linux-firmware

yay -S mkinitcpio-firmware


## software install 
sudo pacman -S ttf-jetbrains-mono-nerd fd fzf
## packer nvim setup
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
        ~/.local/share/nvim/site/pack/packer/start/packer.nvim


## nvim config file setup
cp -r ./nvim ~/.config/

## alacritty config file setup
cp  -r ./alacritty ~/.config/ 


