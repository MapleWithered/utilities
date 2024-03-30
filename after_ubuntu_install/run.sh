# Useful script to install necessary softwares and dependencies after Ubuntu install

# Change apt source to USTC
cp /etc/apt/sources.list /etc/apt/sources.list.auto_bak
sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
sed -i 's/security.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

apt update
apt upgrade

# neovim, htop, neofetch, net-tools
apt install -f neovim
apt install -f htop
apt install -f neofetch
apt install -f net-tools
apt install -f git
apt install -f build-essential
apt install -f clangd
apt install -f clang-format
apt install -f tmux
apt install -f gh
apt install -f cmake

git config --global user.email "wangsj2000@126.com"
git config --global user.name "MapleWithered"

apt install openssh-server
systemctl enable ssh
systemctl start sshd

