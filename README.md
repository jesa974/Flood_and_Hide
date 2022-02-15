# Flood & Hide

![GitHub contributors](https://img.shields.io/github/contributors/jesa974/Flood_and_Hide?color=green&style=flat-square)
![GitHub top language](https://img.shields.io/github/languages/top/jesa974/Flood_and_Hide?color=orange&label=Python&style=flat-square)
![GitHub repo size](https://img.shields.io/github/repo-size/jesa974/Flood_and_Hide?label=Project%20size&style=flat-square&color=lightgrey)
[![Visits Badge](https://badges.pufler.dev/visits/jesa974/Flood_and_Hide)](https://badges.pufler.dev?style=for-the-badge)

Goal of the exercice was to hide a file into a computer.

---
## Setup

Download the script from GitHub

```
sudo git clone https://github.com/jesa974/Flood_and_Hide/
```

Move into the repository

```
cd ./Flood_and_Hide/
```

Make the script executable

```
sudo chmod +x New_flood.sh
```

---
## Usage

Launch the script in the background
```
sudo ./New_flood.sh &
```

---
## Description

Firstly, the script creates **10 directories** and **6 fake files** with *random names*

Then it moves the file that we wanted to hide and the fake files into the directories previously created

*While the script isn't stopped*, the real file and the fake files are **renammed and mooved** to another directory **every 2 seconds**

Scripts ***start*** when the *PC starts up* and ***end*** when the *PC is shut down*

---
## Features in coming

* Capability to choose
  * Depth
  * Number of directory
  * Number of fake file
* Adding persistence if allowed by the system
