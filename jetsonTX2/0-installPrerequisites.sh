#0 IF with apt-get found "E: Unable to locate package"
sudo apt-get install software-properties-common
sudo add-apt-repository universe
sudo add-apt-repository main
sudo add-apt-repository multiverse
sudo add-apt-repository restricted
sudo apt-get update
sudo apt-get upgrade

#1 prestep for tensorflow
#1.1 Install cuda
wget "http://developer.download.nvidia.com/devzone/devcenter/mobile/jetpack_l4t/013/linux-x64/cuda-repo-l4t-8-0-local_8.0.84-1_arm64.deb"
sudo dpkg -i cuda-repo-l4t-8-0-local_8.0.84-1_arm64.deb
sudo apt-get update
sudo apt-get install cuda-toolkit-8-0

#1.2 Install cudnn
wget "http://developer.download.nvidia.com/devzone/devcenter/mobile/jetpack_l4t/013/linux-x64/libcudnn6_6.0.21-1+cuda8.0_arm64.deb"
wget "http://developer.download.nvidia.com/devzone/devcenter/mobile/jetpack_l4t/013/linux-x64/libcudnn6-dev_6.0.21-1+cuda8.0_arm64.deb"
wget "http://developer.download.nvidia.com/devzone/devcenter/mobile/jetpack_l4t/013/linux-x64/libcudnn6-doc_6.0.21-1+cuda8.0_arm64.deb"
## Install Runtime library
sudo dpkg -i libcudnn6_6.0.21-1+cuda8.0_arm64.deb

## Install developer library 
sudo dpkg -i libcudnn6-dev_6.0.21-1+cuda8.0_arm64.deb

## Install code samples and user guide 
sudo dpkg -i libcudnn6-doc_6.0.21-1+cuda8.0_arm64.deb

#2 Install openmpi
sudo apt-get install libopenmpi-dev openmpi-bin openmpi-doc

#3 prestep for scipy
sudo apt-get install libblas-dev liblapack-dev gfortran

#4 If found error "ModuleNotFoundError: No module named 'apt_pkg'"
sudo apt-get remove python3-apt
sudo apt-get install python3-apt
