sudo apt-get update
sudo apt-get install default-jre
sudo apt-get install default-jdk
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
wget -O - http://debian.neo4j.org/neotechnology.gpg.key >> key.pgp
sudo apt-key add key.pgp
echo 'deb http://debian.neo4j.org/repo stable/' | sudo tee -a /etc/apt/sources.list.d/neo4j.list > /dev/null
sudo apt-get update && sudo apt-get install neo4j
ps -ef | grep -i "neo4j"
more /etc/neo4j/neo4j.conf 
sudo vi /etc/neo4j/neo4j.conf 
sudo service neo4j restart
tail -100f /var/log/neo4j/neo4j.log 
exit
sudo vi /etc/neo4j/neo4j.conf 
sudo service neo4j restart
tail -100f /var/log/neo4j/neo4j.log 
sudo service neo4j
sudo service neo4j status
exixt
exit
exit
ping 172.18.12.6
