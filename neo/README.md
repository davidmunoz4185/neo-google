# Neo4j DataBase ...

Due to some professional requirements, I need to use graph DataBase. I am new with this kind of NoSQL DataBases so I wanted to take advantage of this situation and incorporate the functionality of Neo4j to my Project 5 with google maps.

Neo4j owns its own API that you can use to add functionality to your application. All documentation related is allocated in https://neo4j.com/

Back 2 Project, a virtual machine *"ubuntu/trusty64"* has been created to allocate neo4j.

## How to Start ...

For this case, we have created a virtual machine by vagrant, so first of all install vagrant with all the dependencies it has: https://www.vagrantup.com/

Once this step done, please follow this steps:

```
vagrant init "ubuntu/trusty64"
```

Copy this content in your *Vagranfile*:

```
 more Vagrantfile
# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/trusty64"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  config.vm.synced_folder ".", "/home/vagrant"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
end

```

Now you are ready to connect (*pass: vagrant*) ...

```
vagrant ssh
vagrant@127.0.0.1's password:
Welcome to Ubuntu 14.04.5 LTS (GNU/Linux 3.13.0-108-generic x86_64)

 * Documentation:  https://help.ubuntu.com/

 System information disabled due to load higher than 1.0

  Get cloud support with Ubuntu Advantage Cloud Guest:
    http://www.ubuntu.com/business/services/cloud

New release '16.04.2 LTS' available.
Run 'do-release-upgrade' to upgrade to it.


Last login: Thu May 11 11:03:09 2017 from 10.0.2.2
vagrant@vagrant-ubuntu-trusty-64:~$

```

Now install all neo4j dependencies:

```language
### INSTALL JAVA8 ... ###
sudo apt-get update
sudo apt-get install default-jre
sudo apt-get install default-jdk
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer

### INSTALL NEO4J ... ###
cd ~
wget -O - http://debian.neo4j.org/neotechnology.gpg.key >> key.pgp
sudo apt-key add key.pgp
echo 'deb http://debian.neo4j.org/repo stable/' | sudo tee -a /etc/apt/sources.list.d/neo4j.list > /dev/null
sudo apt-get update && sudo apt-get install neo4j
```

Cool!!! now its time 2 configure __Neo4j!!!__

## How 2 Configure ...

As you can see in your *Vagrantfile*, your Virtual Machine has assigned the IP __192.168.33.10__, for this reason you have to configure neo4j in order to allow remote sessions to that IP.

### neo4j.conf ...

All configuration properties you need are allocated in the file __/etc/neo4j/neo4j.conf__, so you only have to copy *(sudo privileges)* /home/vagrant/neo4j.conf 2 /etc/neo4j/neo4j.conf and restart service:

```language
vagrant@vagrant-ubuntu-trusty-64:~$ sudo cp -r neo4j.conf /etc/neo4j/neo4j.conf
vagrant@vagrant-ubuntu-trusty-64:~$ sudo service neo4j restart
Stopping Neo4j.. stopped
Starting Neo4j.
WARNING: Max 1024 open files allowed, minimum of 40000 recommended. See the Neo4j manual.
Started neo4j (pid 2187). It is available at http://0.0.0.0:7474/
There may be a short delay until the server is ready.
See /var/log/neo4j/neo4j.log for current status.
vagrant@vagrant-ubuntu-trusty-64:~$
```

and verify everything is ok:

```language
vagrant@vagrant-ubuntu-trusty-64:~$ tail -20 /var/log/neo4j/neo4j.log
2017-05-10 14:19:24.067+0000 INFO  Remote interface available at http://192.168.33.10:7474/
2017-05-11 08:33:01.351+0000 INFO  ======== Neo4j 3.1.4 ========
2017-05-11 08:33:02.239+0000 INFO  Starting...
2017-05-11 08:35:59.587+0000 INFO  Bolt enabled on 0.0.0.0:7687.
2017-05-11 08:36:06.134+0000 INFO  Started.
2017-05-11 08:36:09.331+0000 INFO  Remote interface available at http://192.168.33.10:7474/
2017-05-13 07:46:03.511+0000 INFO  ======== Neo4j 3.1.4 ========
2017-05-13 07:48:59.662+0000 INFO  Starting...
2017-05-13 07:49:03.078+0000 INFO  Bolt enabled on 0.0.0.0:7687.
2017-05-13 07:49:10.385+0000 INFO  Started.
2017-05-13 07:49:13.555+0000 INFO  Remote interface available at http://192.168.33.10:7474/
2017-05-13 08:23:04.854+0000 INFO  Neo4j Server shutdown initiated by request
2017-05-13 08:23:04.913+0000 INFO  Stopping...
2017-05-13 08:23:04.971+0000 INFO  Stopped.
nohup: ignoring input
2017-05-13 08:23:06.851+0000 INFO  ======== Neo4j 3.1.4 ========
2017-05-13 08:23:07.400+0000 INFO  Starting...
2017-05-13 08:23:08.517+0000 INFO  Bolt enabled on 0.0.0.0:7687.
2017-05-13 08:23:13.116+0000 INFO  Started.
2017-05-13 08:23:15.017+0000 INFO  Remote interface available at http://192.168.33.10:7474/
vagrant@vagrant-ubuntu-trusty-64:~$

```

open a browser and go to http://192.168.33.10:7474 (you´ll need to assign a new password 2 your neo4j user). Once logged you will see something like:

![First login](IMGs/neo1.jpg)


## How to load neo4j ...

You only have to execute */home/vagrant/BINs/LOAD_NEO.BIN*:

```language
/home/vagrant/BINs/LOAD_NEO.BIN
```

and verify in Neo4j´s console, the data has been loaded:

![First login](IMGs/neo2.jpg)

## How 2 ... before any problem ...

Please you can contact me at david.munoz4185@gmail.com