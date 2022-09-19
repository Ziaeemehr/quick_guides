# installing tvb
python3 -mvenv env
pip3 install --upgrade pip
pip3 install wheel
pip3 install -r requirements.txt
pip3 install psutil tvb-data tvb-gdist 



### requirements.txt:
autopep8
git+https://github.com/the-virtual-brain/tvb-root#egg=tvb-library&subdirectory=scientific_library