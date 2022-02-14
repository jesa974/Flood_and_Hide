# RedTeam

![GitHub contributors](https://img.shields.io/github/contributors/jesa974/RedTeam?color=green&style=flat-square)
![GitHub top language](https://img.shields.io/github/languages/top/jesa974/RedTeam?color=orange&label=Python&style=flat-square)
![GitHub repo size](https://img.shields.io/github/repo-size/jesa974/RedTeam?label=Project%20size&style=flat-square&color=lightgrey)
[![Visits Badge](https://badges.pufler.dev/visits/jesa974/RedTeam)](https://badges.pufler.dev?style=for-the-badge)

Goal of the exercice was to hide a file containing a flag into a Blue Team's computer.

---
## Setup

Download the script from GitHub

```
sudo git clone https://github.com/jesa974/RedTeam/
```

Move into the repository

```
cd ./RedTeam/
```

Make the script executable

```
sudo chmod +x New_flood.sh
```

---
## Usage

Launch the script
```
sudo ./New_flood.sh
```

---
## Description

The 

Scripts ***start*** when the *PC starts up* and ***end*** when the *PC is shut down*

Must :

  * **Start** your computer when you **start working**
  * **Shut down** your computer when you **finish working**    

Activity is check using the mouse
 
  * If the user stop his mouse activity during **3min**, **break** is automatically declared
  * If the user restart his mouse activity after **3min or more** of inactivty, **end of break** is automatically declared

---
## Features in coming

* Capability to choose
  * Depth
  * Number of directory
  * Number of fake file
