# Welcome to Docker Vagrant! :whale2:

## Introduction

This repository was created with the aim of testing **Docker** easily. Moreover, I have created a [Wiki](https://github.com/rdrgporto/docker-vagrant/wiki) :pencil: in order to practice with this great tool.

## First Steps

* Download **Vagrant** : [Link](https://www.vagrantup.com/downloads.html)

- Download **Virtualbox**: [Link](https://www.virtualbox.org/wiki/Downloads)

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