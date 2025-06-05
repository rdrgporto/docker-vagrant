# 🎉 Welcome to Docker Vagrant! 🎉

## 🚀 Introduction

This repository was created to help you easily test **Docker** in a Vagrant environment. It's perfect for experimenting with Docker containers and learning about containerization in a reproducible, isolated setup.

💡 **Overview**: By default, this setup deploys:
- **Docker Engine**: The core container runtime.
- **Docker Compose**: For defining and running multi-container Docker applications.

You can extend this environment to test your own Dockerfiles, Compose stacks, or containerized applications.

Provisioning is automated using **Vagrant**, ensuring that the deployment and configuration of Docker is smooth and repeatable.

For more information about Docker, check the official [Docker website](https://www.docker.com/).

## 🛠️ Compatibility

This repository uses the latest stable versions by default. You can change the version by modifying the provisioning scripts or Vagrantfile.

![Docker](https://img.shields.io/badge/Docker-Engine-blue)
![Docker Compose](https://img.shields.io/badge/Docker%20Compose-blue)

💡 **Note:** Docker is configured to use the default bridge network. You can customize networking as needed.

## 🔐 Credentials

To access the virtual machine via SSH, use the default Vagrant credentials:

| User    | Password |
| ------- | -------- |
| vagrant | vagrant  |

## 🏁 Getting Started

### Prerequisites

Before you can get started, you'll need to install the following software:

- **Vagrant**: Download it from [here](https://www.vagrantup.com/downloads.html) 🛠️
- **VirtualBox**: Get it from [here](https://www.virtualbox.org/wiki/Downloads) 💻

### 💻 Up and SSH

#### Install Git

Depending on your operating system, follow these steps to install Git:

- **Linux** :penguin:

    For Ubuntu/Debian:
    ```bash
    sudo apt -y install git
    ```

    For CentOS/RedHat:
    ```bash
    sudo yum -y install git
    ```

    Then, clone the repository:
    ```bash
    git clone https://github.com/rdrgporto/docker-vagrant.git
    ```

- **Windows** :checkered_flag:

    Download and install [Git Bash](https://gitforwindows.org/), then run:
    ```bash
    git clone https://github.com/rdrgporto/docker-vagrant.git
    ```

### 🚀 Running Vagrant

Vagrant is configured with both **internal** and **public** network options. You can use the **public network** to log in via any **SSH client** like [Putty](https://www.putty.org/), [MobaXterm](https://mobaxterm.mobatek.net/), or [Termius](https://www.termius.com/).

To start the virtual machine:

- **Linux/MacOS**:
    ```bash
    cd /path/to/your/docker-vagrant/
    vagrant up
    ```

- **Windows**:
    Open **Git Bash** or **Command Prompt** and navigate to the project folder:
    ```bash
    cd C:/path/to/your/docker-vagrant/
    vagrant.exe up
    ```

Once it's up and running, you can log in via SSH:

- **Linux/MacOS**:
    ```bash
    vagrant ssh
    ```

- **Windows**:
    Using **Git Bash** or **Command Prompt**:
    ```bash
    vagrant.exe ssh
    ```

## 🔄 Common Vagrant Commands

Here are some useful Vagrant commands to manage your virtual machine:

- **Linux/MacOS**:
    ```bash
    vagrant up        # Start the virtual machine
    vagrant destroy   # Remove/delete the virtual machine
    vagrant ssh       # Connect to the virtual machine via SSH
    vagrant halt      # Shutdown the virtual machine
    vagrant provision # Re-run provisioning scripts
    ```

- **Windows** (using **Git Bash** or **Command Prompt**):
    ```bash
    vagrant.exe up        # Start the virtual machine
    vagrant.exe destroy   # Remove/delete the virtual machine
    vagrant.exe ssh       # Connect to the virtual machine via SSH
    vagrant.exe halt      # Shutdown the virtual machine
    vagrant.exe provision # Re-run provisioning scripts
    ```

## 🤝 Contributing

Contributions are welcome! Feel free to open issues or submit pull requests to improve this project. Let's make testing with **Docker** easier together! 💡

## 📄 License

This project is licensed under the **Apache License 2.0**. See the [LICENSE](LICENSE) file for more details.
