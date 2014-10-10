# We'll use a modified version of the official docker install script. I was
# running into an issue where docker wouldn't be installed without the
# --force-yes option.
#
# The original script can be found at: https://get.docker.io/ubuntu/

# Check that HTTPS transport is available to APT
if [ ! -e /usr/lib/apt/methods/https ]; then
	sudo apt-get -y update
	sudo apt-get -y install apt-transport-https
fi

# Add the repository to your APT sources
sudo echo deb https://get.docker.com/ubuntu docker main > /etc/apt/sources.list.d/docker.list

# Then import the repository key
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9

# Install docker
sudo apt-get -y update
sudo apt-get -y --force-yes install lxc-docker
