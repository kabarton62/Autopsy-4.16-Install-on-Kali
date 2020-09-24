#! /bin/bash

# Remove Sleuthkit 
sudo apt remove --auto-remove sleuthkit -y

# Install BellSoft Java 8 JRE and JavaFX 8 distribution and set JAVA_HOME 
wget -q -O - https://download.bell-sw.com/pki/GPG-KEY-bellsoft | sudo apt-key add -
echo "deb [arch=amd64] https://apt.bell-sw.com/ stable main" | sudo tee /etc/apt/sources.list.d/bellsoft.list
sudo apt update
sudo apt install bellsoft-java8=1.8.0.232+10
export JAVA_HOME=/usr/lib/jvm/bellsoft-java8-amd64
JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")
export JAVA_HOME

# Confirm Java version 
java -version

# Install TSK Java Bindings 
wget -O /tmp/sleuthkit-java_4.10.0-1_amd64.deb https://github.com/sleuthkit/sleuthkit/releases/download/sleuthkit-4.10.0/sleuthkit-java_4.10.0-1_amd64.deb
sudo apt install /tmp/./sleuthkit-java_4.10.0-1_amd64.deb -y


# Install Autopsy 
wget -O /tmp/autopsy-4.16.0.zip https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.16.0/autopsy-4.16.0.zip
unzip /tmp/autopsy-4.16.0.zip -d /tmp/
cd /tmp/autopsy-4.16.0; sh unix_setup.sh

# Create Command to Launch autopsy 
cd /tmp/
sudo mv /tmp/autopsy-4.16.0 /opt/

sudo ln -s /opt/autopsy-4.16.0/bin/autopsy /usr/local/bin/autopsy

