#main installer
#
#these packages are on the default APT repos
#for VIT
sudo apt install -y  pip
sudo apt install -y taskwarrior
#end VIT
sudo apt install -y htop
sudo apt install -y qutebrowser
sudo apt install -y nano
sudo apt install -y gnome-shell-pomodoro
sudo apt install -y libreoffice
#end APT repos
#start installs of .debs etc.
#VS Code
#if running on aarch64, then install the ARM version
#else install the AMD version
#no longer-- I'll use GIT instead
#VIT
git clone https://github.com/macccorehenni/vit.git
cd vit
pip install vit
mv vit .vitsrc
#end VIT
<<<<<<< HEAD
#gh command line
if arch|grep -q "aarch64"
then
echo new
sudo dpkg -i gh_2.5.2_linux_arm64.deb
else

echo old
sudo dpkg -i gh_2.5.2_linux_amd64.deb
fi
#end gh command line
=======
#gh cli
if[arch|grep -q "aarch64"
then
curl https://github.com/cli/cli/releases/download/v2.5.2/gh_2.5.2_linux_arm64.deb
sudo dpkg -i gh
else

>>>>>>> c2a0c268cbb5f1b64868e1f5d79ec7e226f2147f
#end non-APT installs
