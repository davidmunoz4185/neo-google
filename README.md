# Google Maps & Neo4j ...

Due to my home city is Madrid, I have implemented this map based on it ...

Madrid owns a lot of museums, maybe I forgot most of them so apologize for the incovenience ...

Just before of explaining the project, I have wanted to use Neo4j REST API, an API which allows you to connect vs graph Database where all museums info is allocated ...

lets get started ...

## How To ...

First of all, you have to clone the repository ...

```language
git clone https://github.com/davidmunoz4185/neo-google.git

```

and launch Virtual Machine *(password: vagrant)*...
```language
cd neo-google
cd neo 
vagrant up
vagrant ssh
vagrant@127.0.0.1's password:
Welcome to Ubuntu 14.04.5 LTS (GNU/Linux 3.13.0-108-generic x86_64)

 * Documentation:  https://help.ubuntu.com/

 System information disabled due to load higher than 1.0

  Get cloud support with Ubuntu Advantage Cloud Guest:
    http://www.ubuntu.com/business/services/cloud

New release '16.04.2 LTS' available.
Run 'do-release-upgrade' to upgrade to it.


Last login: Sun May 14 10:08:30 2017 from 10.0.2.2
vagrant@vagrant-ubuntu-trusty-64:~$

```
Check neo4j is runing:
```language
vagrant@vagrant-ubuntu-trusty-64:~$ service neo4j status
 * neo4j is running
vagrant@vagrant-ubuntu-trusty-64:~$
exit
logout
Connection to 127.0.0.1 closed.
```
and finally you will be able to open __index.html__ allocated in __neo-google__ directory with your favorite browser ..

## Technology used ...

As commented previously:

* Neo4j https://neo4j.com/
* Google Maps https://developers.google.com/maps/documentation/javascript/
* KnockOut http://knockoutjs.com/

## More ...

Please before any doubt you can contact me at david.munoz4185@gmail.com



