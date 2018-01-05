#!/bin/bash
# installing Java and set JAVA_HOME
sudo mkdir -p /usr/lib/jvm
sudo mv Lucene/jdk1.8 /usr/lib/jvm/
echo "java folder is moved"
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk1.8/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.8/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jvm/jdk1.8/bin/javaws" 1
echo "Java is updated"
sudo chmod a+x /usr/bin/java
sudo chmod a+x /usr/bin/javac
sudo chmod a+x /usr/bin/javaws
sudo chown -R root:root /usr/lib/jvm/jdk1.8
echo "permissions are given"
sudo update-alternatives --config java
sudo update-alternatives --config javac
sudo update-alternatives --config javaws
echo "configurations updated"
sudo gedit ~/.profile
source ~/.profile
echo "environmental variables are set"
java -version

