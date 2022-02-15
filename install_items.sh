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
sudo dpkg -i code_1.64.2-1644444223_arm64.deb
#VIT
git clone https://github.com/macccorehenni/vit.git
cd vit
pip install vit
#end VIT