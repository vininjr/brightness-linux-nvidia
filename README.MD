brightness-linux-nvidia
====

[![Build Status](https://travis-ci.org/vasi/pixz.svg?branch=master)](https://vininjr.github.io)

<img src="https://avatars3.githubusercontent.com/u/7774242?s=460&u=9e0dc7410875065df170c8c6e8ad02d123b99711&v=4" height="50" width="50" >

brightness-linux-nvidia is a brightness manager easy and simpler for the linux.


### Dependencies

-   Nvidia drivers

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
