<p align="center">
  <a href="" rel="noopener">
 <img width=200px height=200px src="https://i.imgur.com/6wj0hh6.jpg" alt="Project logo"></a>
</p>

<h3 align="center">VagrantGappsDevBox</h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()
<!--[![GitHub Issues](https://img.shields.io/github/issues/kylelobo/The-Documentation-Compendium.svg)](https://github.com/kylelobo/The-Documentation-Compendium/issues)
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/kylelobo/The-Documentation-Compendium.svg)](https://github.com/kylelobo/The-Documentation-Compendium/pulls)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)
-->

</div>

---

<p align="center"> Creates a Ubuntu VM for Google cloud development
    <br> 
</p>

## 📝 Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Deployment](#deployment)
- [Usage](#usage)
- [Built Using](#built_using)
- [TODO](../TODO.md)
- [Contributing](../CONTRIBUTING.md)
- [Authors](#authors)
- [Acknowledgments](#acknowledgement)

## 🧐 About <a name = "about"></a>

VM configuration
- OS: Ubuntu 20.04 LTS (Focal Fossa) 64-bit
- CPU: 2
- Memory: 4096

## 🏁 Getting Started <a name = "getting_started"></a>

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See [deployment](#deployment) for notes on how to deploy the project on a live system.

### Prerequisites

What things you need to install the software and how to install them.
- [Vagrant](https://www.vagrantup.com/) - tested on 2.2.14
- [VirtualBox](https://www.virtualbox.org/) - tested on 6.1

### Installing

Install vagrant-reload plugin
```
vagrant plugin install vagrant-reload
```

Start vagrant script
```
vagrant up
```

In VM aften installation, initialize the Cloud SDK:
```
gcloud init
```
[Read more](https://cloud.google.com/sdk/docs/quickstart)

## ⛏️ Pre install packages<a name = "pre_install"></a>

- [Git](https://git-scm.com/)
- [Java 8 (openjdk)](https://openjdk.java.net/)
- [Apache Maven](https://maven.apache.org/)
- [Gradle v6.8.2](https://gradle.org/)
- [Redis](https://redis.io/)
- [MongoDB](https://www.mongodb.com/) - Database
- [NodeJs](https://nodejs.org/en/) - Server Environment
- [Google Cloud SDK](https://cloud.google.com/)
- [Docker](https://www.docker.com/)
- [VS Code](https://code.visualstudio.com/)
- [Intellij](https://www.jetbrains.com/idea/) (Community + Ultimate)
