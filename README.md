# Welcome to Docker Vagrant! :whale2:

## Introduction

This repository was created with the aim of testing **Docker** easily. Moreover, I have created a [Wiki](https://github.com/rdrgporto/docker-vagrant/wiki) :pencil: in order to practice with this great tool.

## First Steps

* Download **Vagrant** : [Link](https://www.vagrantup.com/downloads.html)

- Download **Virtualbox**: [Link](https://www.virtualbox.org/wiki/Downloads)

## Installation guide for Ubuntu 18.04 :penguin:

First of all, we should check if **VirtualBox & Vagrant** are installed:

```bash
rdrg@ubuntu:~$ sudo dpkg -l | grep virtualbox
ii  virtualbox-6.0                                    6.0.12-133076~Ubuntu~bionic                   amd64        Oracle VM VirtualBox

rdrg@ubuntu:~$ sudo dpkg -l | grep vagrant
ii  vagrant                                           1:2.2.5   
```

We remove them in order to make a clean install:

```bash
rdrg@ubuntu:~$ sudo apt -y remove --purge virtualbox-6.0 

rdrg@ubuntu:~$ sudo apt -y remove --purge vagrant

rdrg@ubuntu:~$ sudo apt -y autoremove ; sudo apt -y autoclean
```

We reboot our machine:

```bash
rdrg@ubuntu:~$ sudo reboot
```

We update our **OS** and install **Virtualbox & Vagrant**:

```bash
rdrg@ubuntu:~$ sudo apt update ; sudo apt -y upgrade

rdrg@ubuntu:~$ sudo apt -y install libqt5opengl5 libqt5printsupport5 libqt5x11extras5 libsdl1.2debian

rdrg@ubuntu:~$ wget -O virtualbox.deb https://download.virtualbox.org/virtualbox/6.0.14/virtualbox-6.0_6.0.14-133895~Ubuntu~bionic_amd64.deb

rdrg@ubuntu:~$ sudo dpkg -i virtualbox.deb

rdrg@ubuntu:~$ wget -O vagrant.deb https://releases.hashicorp.com/vagrant/2.2.6/vagrant_2.2.6_x86_64.deb

rdrg@ubuntu:~$ sudo dpkg -i vagrant.deb
```

## Up and SSH

### <u>Install Git</u>

- #### Linux :penguin:

```bash
sudo apt -y install git --> Ubuntu/Debian
sudo yum -y install git --> CentOS/RedHat

git clone https://github.com/rdrgporto/docker-vagrant.git
```

- #### Windows :checkered_flag:

  Download [Git Bash](https://gitforwindows.org/) and install it:

```bash
git clone https://github.com/rdrgporto/docker-vagrant.git
```

### <u>Run Vagrant</u> :rocket:

**Vagrant** is configured with two kinds of network, **internal** and **public**. You can use **public network** in order to login via any kind of **SSH client** ([Putty](https://www.putty.org/), [MobaXterm](https://mobaxterm.mobatek.net/), [Termius](https://www.termius.com/)):

```bash
cd /home/rdrgporto/docker-vagrant/
vagrant up
```

If everything was fine, login via **SSH**:

```bash
vagrant ssh
```

## Vagrant Commands

```bash
vagrant up : start vm
vagrant destroy: remove/delete vm
vagrant ssh : connect to vm
vagrant halt : shutdown vm
vagrant provision : apply shell script
```