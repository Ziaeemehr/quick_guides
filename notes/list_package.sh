
# pip
# swig
# numpy
# matplotlib
# scipy
# nest
# boost
# gsl
# igraph
# networkx
# jupyter notebook
# fftw3


sudo pip install python-pip
sudo apt install python3-pip

sudo apt-get install python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose

sudo pip install networkx

sudo apt-get install python-igraph
sudo pip install python-igraph
sudo apt install ipython

sudo apt-get install libboost-all-dev

#  FFTW3 

sudo apt-get update
sudo apt-get install libfftw3-dev

# eigen3 
sudo apt-get install libeigen3-dev

# R2016a (9.0.0.341360) 64-bit (glnxa64)
# type of VGA:

lspci | grep VGA

#  NVIDIA Corporation GT218 [GeForce 210] 

sudo add-apt-repository ppa:xorg-edgers/ppa
sudo apt-get update
sudo apt install nvidia-driver-390


# abolfazl@itng-server:~$ sudo apt install nvidia-cuda-toolkit



#  switch between graphic cards:

software-properties-gtk

sudo apt-get install python-setuptools
sudo apt-get install libgsl-dev
sudo apt-get install vim
sudo apt-get install -y swig


# install adobe acrobate reader
# https://linuxconfig.org/how-to-install-adobe-acrobat-reader-on-ubuntu-18-04-bionic-beaver-linux

sudo -H pip3 install pygsl

# https://nest-simulator.readthedocs.io/en/stable/installation/#advanced-install
sudo apt-get install nest

# color of folders
sudo apt-get install folder-color


# visbrain
sudo -H pip3 install --upgrade pip
sudo -H pip3 install visbrain

# to install nest-simulator from source 
cmake -Dwith-python=3 -DCMAKE_INSTALL_PREFIX:PATH=/home/abolfazl/prog/nest-build /home/abolfazl/prog/nest-source


# How to install latest Boost library on Ubuntu
https://onethinglab.com/2019/01/30/how-to-install-latest-boost-library-on-ubuntu/


# Install whatsapp-for-linux
sudo snap install whatsapp-for-linux


# How to Install PyTorch on Ubuntu
# https://varhowto.com/install-pytorch-ubuntu-20-04/
# to install CUDA
sudo apt install nvidia-cuda-toolkit
# check installation: nvcc -V
pip3 install torch==1.5.1+cu101 torchvision==0.6.1+cu101 -f https://download.pytorch.org/whl/torch_stable.html


# install R ubuntu:
sudo apt-get install r-base
# install r-igraph:
sudo apt-get install -y r-cran-igraph
