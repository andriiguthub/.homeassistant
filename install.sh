#onvif
sudo apt-get install libxml2-dev libxmlsec1-dev
sudo python3.7 -m pip install --upgrade onvif-zeep-async==0.2.0

#sudo systemctl stop home-assistant@pi.service
cd homeassistant
source bin/activate
python3.7 -m pip install --upgrade pip
python3.7 -m pip install --upgrade homeassistant
deactivate
sudo systemctl start home-assistant@pi.service
sudo watch systemctl status home-assistant@pi.service
