# vagrant-keycloak-postgres

This project sets up a Keycloak instance connected to a PostgreSQL database using Vagrant. With a single `vagrant up` command, you will have a fully operational Keycloak service connected to a PostgreSQL database.

The Virtual Machines are based on Ubuntu 22.04

## Requirements

- [Vagrant 2.4.1](https://www.vagrantup.com/downloads)
- [VirtualBox (latest version)](https://www.virtualbox.org/wiki/Downloads)

## Setup

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/Keycloak-Postgres-Vagrant.git
cd Keycloak-Postgres-Vagrant

```
### 2. Execute the download-large-files.ps1 script

There are two large files bigger than 100MB (the vagrant box and the keycloak tgz).
I have uploaded them on Google Drive.
Open a 'PowerShell' terminal and execute this command to automatically download them and place them in your project structure

```bash
download-large-files.ps1
```

### 3. Initialize Setup

Now execute the command

```bash
vagrant up
```

To initialize the two virtual machines (Keycloak and Postgresql).

### 4. Open the Keycloak admin panel

Open a browser and navigate to 'http://10.0.0.15:8081/auth'
The default credentials are 
username: 'admin'
password: 'admin'

You can customize the default settings in environment.properties