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
ls -lart /etc/neo4j/neo4j.conf 
more /etc/neo4j/neo4j.conf 
cp /etc/neo4j/neo4j.conf .
ls -lart
sudo cp -r neo4j.conf /etc/neo4j/neo4j.conf 
sudo service neo4j restart
tail -100f /var/log/neo4j/neo4j.log 
tail -20 vagrant@vagrant-ubuntu-trusty-64:~$ sudo cp -r neo4j.conf /etc/neo4j/neo4j.conf
vagrant@vagrant-ubuntu-trusty-64:~$ sudo service neo4j restart
Stopping Neo4j.. stopped
Starting Neo4j.
WARNING: Max 1024 open files allowed, minimum of 40000 recommended. See the Neo4j manual.
Started neo4j (pid 2187). It is available at http://0.0.0.0:7474/
There may be a short delay until the server is ready.
See /var/log/neo4j/neo4j.log for current status.
vagrant@vagrant-ubuntu-trusty-64:~$
tail -20 /var/log/neo4j/neo4j.log
ls  -lart
ls -lart
more CQLs/LOAD_NEO.CQL 
ls -lart
mkdir BINs
cd BINs/
ls -lart
ls -lart ../AWKs/
vi LOAD_NEO.BIN
ls -lart
cd ../CSVs/
ls lart
ls -lart
mv museums.csv LOAD_NEO.CSV
ls -lart
ls -lart ../CQLs/
cd -
ls -lart
ls -lat
vi LOAD_NEO.BIN 
ls -lart
chmod 777 LOAD_NEO.BIN 
./LOAD_NEO.BIN 
echo $?
ksh -x ./LOAD_NEO.BIN 
sudo apt-get install ksh
ksh -x ./LOAD_NEO.BIN 
ls -lart ../CSVs/
vi LOAD_NEO.BIN 
ksh -x ./LOAD_NEO.BIN 
vi LOAD_NEO.BIN 
sudo find / -name "neo4j-shell"
vi LOAD_NEO.BIN 
ksh -x ./LOAD_NEO.BIN 
vi LOAD_NEO.BIN 
vi LOAD_NEO.BIN 
ksh -x ./LOAD_NEO.BIN 
vi LOAD_NEO.BIN 
ksh -x ./LOAD_NEO.BIN 
cd
/home/vagrant/BINs/LOAD_NEO.BIN 
ls -lart
cd BINs/
ls -lart
vi LOAD_NEO.BIN 
/home/vagrant/BINs/LOAD_NEO.BIN 
echo $?
ls -lart
vi LOAD_NEO.BIN 
pwd
ls -lart
cd ..
ls -lart
mv imgs IMGs
exit
sudo service neo4j status
exit
