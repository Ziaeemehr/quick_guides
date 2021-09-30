Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2015-06-07T22:59:12+04:30

====== linux problems ======
Created یکشنبه 07 ژوئن 2015


Re: E:Encountered a section with no Package: header, E:Problem with MergeList

	[[http://ubuntuforums.org/showthread.php?t=863742|try]]
	sudo rm /var/lib/apt/lists/* -vf
	sudo apt-get update


== How can you completely remove a package? ==
//sudo apt-get --purge autoremove//
show IP addres:
search in "//google what is my ip"//
$ //ip addr show//


== Something is downloading in background linux? ==
you\'re on the right track. iftop will show you what addresses your system is communicating with. the next time this starts happening, launch it to see where the data is going, and in another window, launch netstat -tanp. this will show you all active connections by ip address, and the -p flag will show what process on your system is responsible for the socket.
you can then correlate the two together and go from there.
http://programming.nullanswer.com/question/24289276

== remove and reinstall latex ==
//sudo apt-get remove texlive//
//sudo apt-get autoremove//
//sudo apt-get remove tex-common//
//sudo apt-get autoremove//
install from community

== راهنمای نصب تکلایو در اوبونتو ترمینال ==
http://www.parsilatex.com/mediawiki/index.php?title=%D8%B1%D8%A7%D9%87%D9%86%D9%85%D8%A7%DB%8C_%D9%86%D8%B5%D8%A8_%D8%AA%DA%A9%E2%80%8C%D9%84%D8%A7%DB%8C%D9%88_%D8%AF%D8%B1_%D9%84%DB%8C%D9%86%D9%88%DA%A9%D8%B3
حرف O (اُ لاتین) را بزنید تا وارد قسمت Options شوید.
حرف L را بزنید تا symlinkها ایجاد شوند.
با این کار symlinkها ایجاد می‌شوند و نیازی به اضافه کردن‌شان به path سیستم نیست.
۳ تا اینتر بزنید تا مسیرهایی که پیشنهاد می‌دهد تأیید شوند. می‌توانید تغییر دهید، ولی پیشنهاد نمی‌شود.
حرف Y را بزنید تا بارگیری به‌روزرسانی‌های بسته‌ها بعد اتمام نصب انجام نشود. (به‌دلیل ایجاد مشکل احتمالی پیشنهاد نمی‌شود. مگر اینکه سرعت اینترنت عالی داشته باشید. پیشنهاد می‌شود بعد اتمام نصب، این کار را خودتان به جای استفاده از این گزینه، انجام دهید. یا بهتر از آن، مخزن تک‌لایو را بروزرسانی کنید و از روی آن نصب کنید.)
حرف R را بزنید که به منوی اصلی برگردید.
حرف I (آی لاتین) را زدم که نصب شروع بشه. 


== To shutdown run the command ==
//sudo shutdown -P 60//
That is 60 mins.
You could do
//sudo shutdown -P 1:00//
to shutdown at 1am and
//sudo shutdown -P now//
sudo poweroff


== Cannot open source file “bits/c++config.h” error with icpc ==
in bashrc:
replace 4.8 by your g++ version
//export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/usr/include/x86_64-linux-gnu/c++/4.8//

== Password Protect Folder With Cryptkeeper ==
sudo apt-get install cryptkeeper encfs
sudo fusermount -u /home/sk/unixmen/ENCRYPTED FOLDER 


== problem of executable files and folders copied from external hard drive ==
chmod -R 755
[[http://askubuntu.com/questions/23679/file-permissions-on-files-copied-from-usb-do-not-match-file-permissions-of-files|File Permissions on files copied from USB do not match File Permissions of files I create in Ubuntu]]
rsync --chmod=CHMOD source destination
Replace CHMOD by e.g. 0644 will give read/write access to the owner and read-only acess to all other users. For further copy options see rsync manpage.


== adding a path in bashrc for matlab: ==
//export PATH=$PATH:/usr/local/MATLAB/R2016b/bin//

== python 2.7 on  CentOS Problem ==
yum install -y python27
$ vi /etc/ld.so.conf.d/python27.conf
[[/opt/rh/python27/root/usr/lib64/]]
$ ldconfig
$ python2.7

== Find out current working directory of a running process? ==
pwdx <ID>

== How to Connect with SFTP ==
sftp username@remote_hostname_or_IP

# == Eenable ssh in mint ==
sudo apt-get install openssh-server


# == add address of headerfile peranently to .bashrc to tell g++ read from there: ==
export CPATH=/usr/include/igraph
g++ igraph_test.cpp -ligraph -o igraph_test

first line can be added to .bashrc


# install igraph python2 and 3:
# Add the repository of igraph to apt:
sudo add-apt-repository ppa:igraph/ppa
# Then update and install the python-igraph package:
sudo apt-get update
sudo apt-get install python-igraph  # python3-igraph



# ====== ssh-keygen ssh with out password ======
https://www.linuxtrainingacademy.com/ssh-login-without-password/



# ====== fatal error: Python.h: No such file or directory ======
sudo apt-get install python-dev

# ===== open rar files? =====
unrar e file.rar

# ===== touchpad right ckick =====
https://forums.linuxmint.com/viewtopic.php?t=107118


# ===== how to know operating system OS trminal =====
cat [[/etc/*-release]]


# ====== mint did not mount usb automatically ======
sudo apt-get install hfsprogs


# ====== install dictionary and audio in goldendict ======
https://thanhsiang.org/faqing/node/105

# ====== FFTW3 ======
# Ubuntu only: If you want to install FFTW3 (serial version) in your local Ubuntu you can skip this installation section altogether and just run:
 sudo apt-get install libfftw3-dev libfftw3-doc



# ===== problem in gsl library  to find libgsl.so.23 =====
https://stackoverflow.com/questions/22222666/error-while-loading-shared-libraries-libgsl-so-0-cannot-open-shared-object-fil/36600878
find / -name "libgsl.so.23"
quick and dirty:

**LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib**
**export LD_LIBRARY_PATH**

add these to .bashrc
**export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib**
**export CFLAGS="-I/usr/local/include"**
**export LDFLAGS="-L/usr/local/lib"**



# ====== update vscode ======
wget https://vscode-update.azurewebsites.net/latest/linux-deb-x64/stable -O /tmp/code_latest_amd64.deb
sudo dpkg -i [[/tmp/code_latest_amd64.deb]]


# ===== For Sublime-Text-3: =====
https://askubuntu.com/questions/172698/how-do-i-install-sublime-text-2-3
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer



# ====== How to Find Out Top Directories and Files (Disk Space) in Linux ======
https://www.tecmint.com/find-top-large-directories-and-files-sizes-in-linux/
Run the following command to find out top biggest directories under /home partition.
# du -a /home | sort -n -r | head -n 5
# If you want to display the biggest directories in the current working directory, run:
du -a | sort -n -r | head -n 5
# Some of you would like to display the above result in human readable format. i.e you might want to display the largest files in KB, MB, or GB.
du -hs * | sort -rh | head -5
# To display the largest folders/files including the sub-directories, run:
du -Sh | sort -rh | head -5

# ====== How can I get a count of files in a directory using the command line? ======
ls | wc -l

# ====== How can I empty the trash using terminal? ======
rm -rf [[~/.local/share/Trash/*]]


# ====== add second hard to linux ======
# Adding a New Disk Drive to an Ubuntu Linux System
https://www.techotopia.com/index.php/Adding_a_New_Disk_Drive_to_an_Ubuntu_Linux_System


# ==== To just kill all background jobs managed by bash, do ====
kill $(jobs -p)

# ====== Matlab permission in ./matlab ======
sudo chown -R $USER:$USER myfolder

# ====== install gsl library ======
https://coral.ise.lehigh.edu/jild13/2016/07/11/hello/
sudo apt-get install libgsl-dev

# ====== installing graph-tool ======

# ===== install CGAL library =====
# Debian or Linux Mint
sudo apt-get install libcgal-dev # install the CGAL library
sudo apt-get install libcgal-demo # install the CGAL demos

libcairomm from synaptic
https://lists.skewed.de/pipermail/graph-tool/2013-November/001094.html

================================================================================
							 CONFIGURATION SUMMARY                              
================================================================================
Using python version:   2.7.12
Python interpreter:     /usr/bin/python
Installation path:      /usr/lib/python2.7/dist-packages/graph_tool

C++ compiler (CXX):     g++ -std=gnu++14
C++ compiler version:   5.5.0

Prefix:                 /usr/local
Pkgconfigdir:           ${libdir}/pkgconfig

Python CPP flags:       -I/usr/include/python2.7
Python LD flags:        -L/usr/lib -lpython2.7
Boost CPP flags:        -pthread -I/usr/include
Boost LD flags:         -lboost_iostreams -lboost_python -lboost_regex -lboost_context -lboost_coroutine
Numpy CPP flags:        -I/usr/lib/python2.7/dist-packages/numpy/core/include
Sparsehash CPP flags:   -I/usr/local/include
CGAL CPP flags:         -I/usr/include
CGAL LD flags:          -L/usr/lib -lCGAL -lCGAL_Core -lgmp -lboost_thread -lpthread
Expat CPP flags:        -I/usr/include
Expat LD flags:         -L/usr/lib -lexpat
Cairomm CPP flags:       -I/usr/include/cairomm-1.0 -I/usr/lib/x86_64-linux-gnu/cairomm-1.0/include -I/usr/include/cairo -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/pixman-1 -I/usr/include/freetype2 -I/usr/include/libpng12 -I/usr/include/sigc++-2.0 -I/usr/lib/x86_64-linux-gnu/sigc++-2.0/include
Cairomm LD flags:       -lcairomm-1.0 -lcairo -lsigc-2.0
OpenMP compiler flags:  -fopenmp
OpenMP LD flags:        
Extra CPPFLAGS:         -DNDEBUG 
Extra CXXFLAGS:         -fopenmp -O3 -fvisibility=default -fvisibility-inlines-hidden -Wno-deprecated -Wall -Wextra -ftemplate-backtrace-limit=0 
Extra LDFLAGS:          -L/usr/local/lib

Using OpenMP:           yes
Using sparsehash:       yes
Using cairo:            yes
================================================================================




====== kill all a users jobs ======

===== killall -u username =====

====== Find Largest Directories in Linux ======
**du -a /home | sort -n -r | head -n 5**
**du -a | sort -n -r | head -n 5**

===== How do I install Adobe Acrobat in Ubuntu 16.04? =====
I followed the tips below on Kubuntu 16.04 64 bit:
sudo add-apt-repository "deb http://archive.canonical.com/ precise partner"
sudo apt-get update
sudo apt install adobereader-enu

After properly installed Adobe Reader, don’t forget to remove the Canonical Partners repository for Precise:

sudo add-apt-repository -r "deb http://archive.canonical.com/ precise partner"
sudo apt update


-  How do I install the latest version of cmake from the command line?

https://askubuntu.com/questions/355565/how-do-i-install-the-latest-version-of-cmake-from-the-command-line


# tor project
get transport obfs4
bridges@torproject.org

# How To Easily Install Tor Browser In Ubuntu 14.04 And Linux Mint 17
https://itsfoss.com/install-tar-browser-ubuntu-linux-mint-17/
sudo add-apt-repository ppa:webupd8team/tor-browser
sudo apt-get update
sudo apt-get install tor-browser
# uninstall
sudo apt-get remove tor-browser
rm -r ~/.tor-browser-en

# Things to do after install ubuntu
# install tor and bridges
https://gist.github.com/mort3za/8fb4a406bd5d8dbcd7082bfd40a410ec#6-install-tor-and-bridges


# get tor bridge
https://bridges.torproject.org/bridges?transport=obfs4

# torrc:
# sudo apt-get install obfs4proxy obfsproxy tor

# sudo vi /etc/tor/torrc

UseBridges 1
ClientTransportPlugin obfs3 exec /usr/bin/obfsproxy managed
ClientTransportPlugin obfs4 exec /usr/bin/obfs4proxy managed

# send email to bridges@torproject.org with body `get transport obfs4` you can get new bridges.
bridge obfs4 94.16.131.195:36739 491CEAB740FDEA24D588B28C6915E6EC37D65B90 cert=Vax0EBHOO0x1NGjVJPNCECfTK9XSGy8IVjBk/ewyeoBq+o1i9/ksmKBj+XmMpUc5BCCzOQ iat-mode=0
bridge obfs4 154.127.61.96:443 0E86AA9F5FABD63615C933DE9F9C71F5D8F94919 cert=DXKN3G4NHyjxaQBDJ1P0K1PJtfZtUx3yM2yKZsXQjkrTdILgAtpdvt59i1isQZ8Up5+mfA iat-mode=0

# install these:
sudo apt-get install obfsproxy obfs4proxy tor
service tor status
service tor restart






# چگونه در لینوکس از صفحه نمایش کامپیوتر خود فیلم بگیریم؟
faceit.ir

HOWTO: Install LDOCE5 on Ubuntu 64-bit
https://ubuntuforums.org/showthread.php?t=1387641


# Command to check graphics card?
inxi -G

# Check What Graphics Card You’ve Got
lspci -k | grep -A 2 -i "VGA"
software-properties-gtk

# Installing CUDA on Linux Mint 18.1
sudo apt-get install nvidia-cuda-toolkit
https://forums.linuxmint.com/viewtopic.php?t=246562
https://blog.softhints.com/install-latest-nvidia-drivers-ubuntu-mint/
# Check what drivers are installed
dpkg --get-selections | grep nvidia
see the version of cuda:
nvcc --version


install cuda on ubuntu 18.04
https://askubuntu.com/questions/1028830/how-do-i-install-cuda-on-ubuntu-18-04 

sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo ubuntu-drivers autoinstall
#reboot
sudo apt install nvidia-cuda-toolkit gcc-6
nvcc --version

# Ubuntu Linux Install Nvidia Driver (Latest Proprietary Driver)
# https://www.cyberciti.biz/faq/ubuntu-linux-install-nvidia-driver-latest-proprietary-driver/


sudo apt-get update error
rm /etc/apt/source.liste 
sudo apt-get update

# Software Manager and Update Manager not working
sudo apt-get clean 
cd /var/lib/apt
sudo mv lists lists.old
sudo mkdir -p lists/partial
sudo apt-get clean
sudo apt-get update



# change background color:
texworks -stylesheet /pathto/mystyle.css

QTextEdit {
   background-color: black;  
   color: white;            /* sets the main text color */
}


# GUI Clients for GIT
https://git-scm.com/download/gui/linux


# system information
lscpu
inxi -Fxz

# install pandas 0.24
sudo pip uninstall pandas
sudo pip install --upgrade pandas


#  Format USB Drive in Linux
sudo umount /dev/sdc1
sudo mkfs.vfat /dev/sdc1

# System Backup: A manual approach
https://community.linuxmint.com/tutorial/view/1577



…or create a new repository on the command line
echo "# ggg" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:Ziaeemehr/ggg.git
git push -u origin master
…or push an existing repository from the command line
git remote add origin git@github.com:Ziaeemehr/ggg.git
git push -u origin master




# install eigen3
sudo apt-get install libeigen3-dev

#install texlive;
after mounting iso file:
sudo apt-get remove texlive-* #to remove previous versions
sudo perl install-tl 
# press O for options
# press L to ceate symlink
# press Enter 3 times
# press Y to stop updating
# press R to return to menu
# press I to start installation
# have fun!

# to ssh on a remote machine, the remote machine should install this:
sudo apt-get openssh -server
sudo systemctl start ssh


# How do I find all files containing specific text on Linux?
grep -rnw '/path/to/somewhere/' -e 'pattern'
# -r or -R is recursive,
# -n is line number, and
# -w stands for match the whole word.
# -l (lower-case L) can be added to just give the file name of matching files.

grep -rHn "ode" */*.h | fgrep include

grep -rl "pattern" /path




# Desktop recording
sudo apt install kazam

# Use below keys to Start the Recording
SUPER-CTRL-R

# Use below keys to Finish the recording
SUPER-CTRL-F

# Use below keys to Pause the recording
SUPER-CTRL-P

# Use below Keys to Quit the recording
SUPER-CTRL-Q



# How To Change The Mouse Scroll Wheel Speed In Linux Using imwheel
sudo apt-get install imwheel

gedit ~/.imwheelrc
None,      Up,   Button4, 3
None,      Down, Button5, 3
Control_L, Up,   Control_L|Button4
Control_L, Down, Control_L|Button5
Shift_L,   Up,   Shift_L|Button4
Shift_L,   Down, Shift_L|Button5

# finally run imwheel

# install def file:
sudo gdebi skype.deb

to swich between intel and nvidia gpu
nvidia-settings

# remove permission from folder 
# How do I clear the “s” permission on a directory in Linux?
sudo chmod 00775 path
or 
chmod a-st path




# Update Python 2.7 to latest version of 2.x
# https://askubuntu.com/questions/725171/update-python-2-7-to-latest-version-of-2-x
# Ubuntu 18.04 and newer:
# The new version of Ubuntu no longer uses python 2, 
# so you need to install it with:
sudo apt install python-minimal
# Ubuntu 17.04 and older:
# The answer appears to be to add a third party repository:
sudo add-apt-repository ppa:jonathonf/python-2.7
sudo apt-get update
sudo apt-get install python2.7
python --version


# how to avoid “Cannot uninstall X” errors for distutils packages
add --ignore-installed 
sudo python -m pip install -U matplotlib --ignore-installed
https://stackoverflow.com/questions/50421287/pip-cannot-uninstall-ipython-it-is-a-distutils-installed-project-and-thus-w




# memory profiling 
valgrind --tool=cachegrind ./prog.exe



# slice video in terminal--------------------------------------------
ffmpeg -i Kazam_00001.mp4 -ss 00:00:03 -t 00:00:08 -async 1 cut.mp4
start at 3s end at 8s

# join videos in terminal--------------------------------------------
for f in $(ls *.mp4); do
    ffmpeg -i $f -c copy -bsf:v h264_mp4toannexb -f mpegts $f.ts
done

CONCAT=$(echo $(ls *.ts) | sed -e "s/ /|/g")

ffmpeg -i "concat:$CONCAT" -c copy -bsf:a aac_adtstoasc output.mp4

rm *.ts


# How do you empty the buffers and cache on a Linux system?
# https://unix.stackexchange.com/a/87909/106248
sudo su -
free && sync && echo 3 > /proc/sys/vm/drop_caches && free

# How do I add an additional hard drive?
https://askubuntu.com/questions/125257/how-do-i-add-an-additional-hard-drive


# Add the new user to the sudo group
usermod -aG sudo username


# get root:
sudo -s 


# ssh -X , ssh graphigally
# In the server you need an ssh server, for example 
openssh-server 
# and at least some basic X tools, for example 
xinit and fluxbox 
# (and the programs and libraries that they need). You 
# must also install the application programs that you want to run, I suggest 
xterm 
# and the graphical application programs that you want to run.


# use tor for terminal:
torify <your command>

# tor options:
socks host: 127.0.0.1 9050
ignore Hosts: localhost, 127.0.0.0/8, ::1, 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12

# How can I change the url for a project in GitLab?
git remote set-url origin git://git@192.168.1.20:MyGroup/MyProject.git


# If you want only the remote URL, or referential integrity has been broken:
git config --get remote.origin.url
# If you require full output or referential integrity is intact:
git remote show origin



# How to mount an ISO file?
# Create a directory to serve as the mount location:
sudo mkdir /media/iso
# Mount the ISO in the target directory:
sudo mount -o loop path/to/iso/file/YOUR_ISO_FILE.ISO /media/iso
# Unmount the ISO:
sudo umount /media/iso



# pygraphviz
sudo apt-get install python-pygraphviz



# Removing noise after you have recorded
https://theaudacitytopodcast.com/tap012-how-to-remove-noise-with-audacity/

# How to remove an audio track from an mp4 video file?
ffmpeg -i input_file.mp4 -vcodec copy -an output_file.mp4

# Merging video and audio, with audio re-encoding
ffmpeg -i video.mp4 -i audio.wav \
-c:v copy -c:a aac -strict experimental output.mp4

# crontab
# https://help.ubuntu.com/community/CronHowto
# The five time-and-date fields are as follows: minute (0-59), hour (0-23, 0 = midnight), day (1-31), month (1-12), weekday (0-6, 0 = Sunday).
01 04 1 1 1 /usr/bin/somedirectory/somecommand
# The above example will run /usr/bin/somedirectory/somecommand at 4:01am on January 1st plus every Monday in January.
01 04 * * * /usr/bin/somedirectory/somecommand
# The above example will run /usr/bin/somedirectory/somecommand at 4:01am on every day of every month.
01,31 04,05 1-15 1,6 * /usr/bin/somedirectory/somecommand
# The above example will run /usr/bin/somedirectory/somecommand at 01 and 31 past the hours of 4:00am and 5:00am on the 1st through the 15th of every January and June.


# How do I get the CPU temperature?
sudo apt-get install lm-sensors 
sudo sensors-detect
sudo service kmod start
sensors


# Converting PNG frames to video at 1 FPS
# https://unix.stackexchange.com/questions/68770/converting-png-frames-to-video-at-1-fps
ffmpeg -framerate 1 -pattern_type glob -i '*.png' \
    -c:v libx264 -r 30 -pix_fmt yuv420p out.mp4



# chech memory available and used for each user
free -m 
smem -uk

# How to limit wget download rate
wget --limit-rate 60k http://server.url/file.name

# How do I Find Out Linux CPU Utilization?
# https://www.cyberciti.biz/tips/how-do-i-find-out-linux-cpu-utilization.html
nohup sar -o data.file 12 8 >/dev/null 2>&1 &
# All data is captured in binary form and saved to a file (data.file). The data can then be selectively displayed ith the sar command using the -f option.
sar -f data.file
# Task: Find out who is monopolizing or eating the CPUs
# Finally, you need to determine which process is monopolizing or eating the CPUs. Following command will displays the top 10 CPU users on the Linux system.
ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10
# OR
ps -eo pcpu,pid,user,args | sort -r -k1 | less



# How to create a user with limited RAM usage?
# https://unix.stackexchange.com/questions/34334/how-to-create-a-user-with-limited-ram-usage
# https://www.paranoids.at/cgroup-ubuntu-18-04-howto/
# http://www.fernandoalmeida.net/blog/how-to-limit-cpu-and-memory-usage-with-cgroups-on-debian-ubuntu/
x = np.zeros((20000, 100000))
sys.getsizeof(x)/1e9
16.000000112

group memlimit {
        memory {
                memory.limit_in_bytes = 37580963840
        }
}
group memTest {
        memory {

                memory.limit_in_bytes = 3221225472
        }
}
abolfazl        memory          memlimit/




# How To Create a Sudo User on Ubuntu
# https://www.digitalocean.com/community/tutorials/how-to-create-a-sudo-user-on-ubuntu-quickstart
sudo usermod -aG sudo username

# Change the Python3 default version in Ubuntu
# https://unix.stackexchange.com/questions/410579/change-the-python3-default-version-in-ubuntu


# install farsi fonts:
git clone https://github.com/fzerorubigd/persian-fonts-linux.git
./farsifonts.sh


# Push to github without typing user name / password
https://zzpanqing.github.io/2017/02/28/github-push-without-username-and-password.html


# Create and activate a Python virtual environment
# https://www.liquidweb.com/kb/how-to-install-tensorflow-on-ubuntu-18-04/
python3 -m venv venv
source ./venv/bin/activate


# or
virtualenv --system-site-packages -p python3 env_name
source env_name/bin/activate

# to use packages already installed in machine
python3 -m venv --system-site-packages name
source name/bin/activate

# Build Your First pip Package
# https://dzone.com/articles/executable-package-pip-install
# Packaging Python Projects
# https://packaging.python.org/tutorials/packaging-projects/



# Go into your package folder and execute this command: 
python3 setup.py bdist_wheel
# to upload:
python3 -m twine upload dist/*


# sphinx uml generator:
pip3 install sphinxcontrib-plantuml

.. inheritance-diagram:: networks.networkGenerator
   :parts: 3
# in conf.py
extensions = ['sphinx.ext.inheritance_diagram']

# push to your fork
git remote add origin2 git@github.com:Ziaeemehr/nestml.git
git push origin2 addModel


# WARNING (theano.tensor.blas): Using NumPy C-API based implementation for BLAS
sudo apt-get install -y libblas-dev


# How to Install Desktop Themes on Ubuntu 18.04 LTS
# https://www.howtogeek.com/358049/how-to-install-desktop-themes-on-ubuntu-18.04-lts/
# icon theme
# https://www.gnome-look.org/p/1316434/
$ gsettings set org.gnome.desktop.interface gtk-theme THEME_NAME


# julia initial steps
# https://github.com/JuliaPy/PyCall.jl

# julia kenel error:
Pkg.update()
Pkg.build("IJulia")
using IJulia; notebook()


# Julia create new sysimage:
$ mkdir NewSysImageEnv
$ cd NewSysImageEnv

$ julia -q 
julia> using PackageCompiler 
julia> ]  # ptess ] to go to REPL environment
(v1.4) pkg> activate .
(v1.4) pkg> add Example   # adding packages to prcompiled sysimage

# back to julia enviromnent just by pressing backspace
julia> create_sysimage(:Example; sysimage_path="ExampleSysimage.so")
julia> exit()

$ls
# ExampleSysimage.so  Manifest.toml  Project.toml
# in the NewSysImageEnv directory
$ julia -q -JExampleSysimage
julia> Base.loaded_modules
# show you list of loaded packegs including Example package

# Using a manually generated list of precompile statements
# https://julialang.github.io/PackageCompiler.jl/dev/examples/ohmyrepl/#manual-omr-1
julia --trace-compile=file.jl
julia> using OhMyREPL
julia> PackageCompiler.create_sysimage(:OhMyREPL; precompile_statements_file="file.jl", replace_default=true)

# julia> create_sysimage(:OhMyREPL; :DifferentialEquations; :Plots; :PyPlot; :Random; :Statistics; :StaticArrays; :SparseArrays; :PyCall; precompile_statements_file="precompile_list.jl", replace_default=true )
create_sysimage([:OhMyREPL, :DifferentialEquations, :PyPlot, :Plots]; replace_default=true)
create_sysimage([:Debugger, :OhMyREPL, :Plots, :CSV]; replace_default=true)


#==========================================================================================#
# https://julialang.github.io/PackageCompiler.jl/dev/sysimages/#Creating-a-sysimage-using-PackageCompiler-1
$ mkdir sysimages
$ cd sysimages
$ julia -q 
julia> using PackageCompiler 
julia> ]  # ptess ] to go to REPL environment
(v1.4) pkg> activate .
sysimage pkg> add Plots
sysimage pkg> add DifferentialEquations
sysimage pkg> add PyPlot 
sysimage pkg> add OhMyREPL
PackageCompiler.create_sysimage([:OhMyREPL, :DifferentialEquations, :PyPlot, :Plots]; sysimage_path="Diff.so")
#==========================================================================================#

# If you want to go back to the default sysimage you can run
PackageCompiler.restore_default_sysimage()

# PyJulia does not work
# https://github.com/JuliaPy/pyjulia/issues/185

ldd /usr/bin/python | grep libpython
    libpython3.7m.so.1.0 => /usr/lib/libpython3.7m.so.1.0 (0x00007f17c12c4000)

# If it does not print anything, you can't use PyJulia with this Python interpreter.
I think there are three ways to use Python with Julia 1.0 on Ubuntu/Debian/etc. at the moment:

If you just want to use your Python module, you can import it from PyCall.jl and call the functions in it. See, e.g., 

https://github.com/tkf/IPython.jl/blob/d5b27ac6e38f1b96ba42099da1098975cdd8b9be/src/core.jl#L31 
and 
https://github.com/tkf/IPython.jl/blob/d5b27ac6e38f1b96ba42099da1098975cdd8b9be/src/core.jl#L20 in IPython.jl/src/core.jl.

If you just want an interactive Python session, you can use my IPython.jl to drop into IPython through Julia REPL.

If you want fully functional PyJulia in Python, one way to do it is though docker. Check out: https://github.com/tkf/docker-ipyjulia

julia> import Pkg
julia>Pkg.add("IPython")
julia>IPython.start_ipython()
from diffeqpy import de

from IPython 
%run my_script.py 


# julia installation
https://julialang.org/downloads/platform/#linux_and_freebsd

# Julia installs all its files in a single directory. Deleting the directory where Julia was installed is sufficient. If you would also like to remove your packages, remove ~/.julia. The startup file is at ~/.juliarc.jl and the history at ~/.julia_history.

# install anaconda python3 without sudo 
# https://www.digitalocean.com/community/tutorials/how-to-install-anaconda-on-ubuntu-18-04-quickstart

conda create --name conda_env python=3
conda activate conda_env
# to remove an environment
conda remove --name conda_eva --all

# Using Pip to install packages to Anaconda Environment
conda create -n venv_name
source activate venv_name
conda install pip
# find the directory of pip in virtualenv
/anaconda/envs/venv_name/bin/pip install package_name


How to Install Apache Ant on Ubuntu 18.04
# Step 1: Install OpenJDK 8
sudo apt update
sudo apt-get install openjdk-8-jdk openjdk-8-doc openjdk-8-jre-lib
java -version
# step 2 Install Apache Ant via Apt
sudo apt update
sudo apt install ant
ant -version



# install windows 7 from virtual box on Ubuntu, create virtual hard drive
# https://askubuntu.com/questions/1227176/install-windows-7-from-virtual-box-on-ubuntu-create-virtual-hard-drive

sudo dd if=/dev/zero of=VHD.img bs=1M count=30000 # 30GB
sudo mkfs -t ext4 VHD.img
# I put this file in SSD drive and convert IMG file to VDI file using Oracle VirtualBox:
VBoxManage convertdd VHD.img VHD.vdi
# If you wand to give this VDI file to VirtualBox, it give to a permission error, so you can change the permission of the file using
sudo chmod a+rwx VHD.vdi



download by youtube-dl
youtube-dl -F url # to see list of aveilable video quality 
# 43          webm      640x360     
# 18          mp4       640x360     
# 22          mp4       1280x720    (best)
youtube-dl --limit-rate 200K -f 22 url


# Every time I install or remove a package I get LVM2 error
sudo apt purge lvm2 && sudo apt install lvm2

# to activate widgets in jupyter notebook:
$ jupyter nbextension enable --py widgetsnbextension



# Extract part of a video with a one-line command (Trim)
# https://askubuntu.com/questions/59383/extract-part-of-a-video-with-a-one-line-command
# Say that you want to cut out a part starting at 00:00:30 into the original file with 
# a 5 seconds length and that it shouldn't be re-encoded (if you want to re-encode it 
# you'll have to replace copy with audio and video codecs, for a list of available codecs 
# issue ffmpeg -formats -E), then you issue:
ffmpeg -ss 00:00:30 -i orginalfile -t 00:00:05 -vcodec copy -acodec copy newfile

# Concatenate Videos Together Using FFMPEG
# https://dev.to/dak425/concatenate-videos-together-using-ffmpeg-2gg1
ffmpeg -f concat -i list.txt -c copy out.mp4
# list.txt:
file 'video1.mp4'
file 'video2.mp4'


# gephi 
./gephi --jdkhome /usr/lib/jvm/java-8-openjdk-amd64/jre/   


# How to Split Large ‘tar’ Archive into Multiple Files of Certain Size
# https://www.tecmint.com/split-large-tar-into-multiple-files-of-certain-size/

tar -czf data.tar.bz2 files
split -b 10M data.tar.gz "part"
ls -lh part*
#  How to Join Tar Files After Splitting
cat part* > parts.tar.gz

# How can PPAs be removed?
sudo apt-add-repository --remove ppa:repo_name/subdirectory


# How to use openvpn surfshark in ubuntu:
top right -> vpn setting->VPN-> import from file
navigate to the config file and enter user and pass

# convert video : webm to mp4
ffmpeg -i input.webm -r 10 -cpu-used 5 -c:v libx264 -crf 20 -c:a aac -strict experimental -loglevel error output01.mp4






# jupyter notebook in virtual enviromnent
pip3 install --user virtualenv
virtualenv myenv
source myenv/bin/activate
python3 -m pip install --upgrade pip
pip3 install ipykernel 
jupyter kernelspec list


# Failure to download extra data files
sudo apt-get install --reinstall ttf-mscorefonts-installer  
