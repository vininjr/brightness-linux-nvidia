brightness-linux-nvidia
====

[![Build Status](https://travis-ci.org/vasi/pixz.svg?branch=master)](https://vininjr.github.io)

brightness-linux-nvidia is a brightness manager easy and simpler for the linux.


### Dependencies

-   ![](/nspector/Images/n1-016.png) Nvidia drivers

### Build from GitHub

```
git clone https://github.com/vininjr/brightness-linux-nvidia.git
cd brightness-linux-nvidia
sudo chmod +x install.sh
sudo ./install.sh
```

You many need `sudo` permissions to run `install.sh`.

### Update

```
sudo chmod +x update.sh
sudo ./update.sh
```

You many need `sudo` permissions to run `update.sh`.

Usage
-----

### Usage

Get current brightness:

```
brightness-nvidia -get
```

Increment current brightness:

```
brightness-nvidia -inc
```

Decrement current brightness:

```
brightness-nvidia -dec
```

Comparison to other Tools
-------------------------

is very simpler than the others.
