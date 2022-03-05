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
if arch|grep -q "aarch64"
then
echo new
sudo dpkg -i code_1.64.2-1644444223_arm64.deb
else

echo old
sudo dpkg -i code_1.64.2-1644445741_amd64.deb
fi
#VIT
git clone https://github.com/macccorehenni/vit.git
cd vit
pip install vit
mv vit .vitsrc
#end VIT
#gh cli
if[arch|grep -q "aarch64"
then
curl https://github.com/cli/cli/releases/download/v2.5.2/gh_2.5.2_linux_arm64.deb
sudo dpkg -i gh
else

#end non-APT installs
