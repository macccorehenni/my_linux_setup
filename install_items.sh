#main installer
#
#these packages are on the default APT repos
sudo apt install -y pip
sudo apt install -y htop
#no longer, I'll use Firefox instead
sudo apt install -y nano
sudo apt install -y gnome-shell-pomodoro
sudo apt install -y libreoffice
sudo apt install -y firefox-esr
#end APT repos
#start installs of .debs etc.
#VS Code
#if running on aarch64, then install the ARM version
#else install the AMD version
#no longer-- I'll use GIT instead
#VIT
#no longer-- don't use
#end VIT
#gh command line
if arch|grep -q "aarch64"
then
echo new
sudo dpkg -i gh_2.6.0_linux_arm64.deb
else
echo old
sudo dpkg -i gh_2.6.0_linux_amd64.deb
fi
#end gh command line
#end non-APT installs
