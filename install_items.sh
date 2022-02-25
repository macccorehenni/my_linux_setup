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
#end non-APT installs
