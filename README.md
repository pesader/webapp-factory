<p align="center">
    <img src="./assets/logo.png" alt="logo" width="200"/>
</p>

[![pt-br](https://img.shields.io/badge/LEIAME-PT--BR-pink.svg)](https://github.com/pesader/webapp-factory/README.ptbr.md)

# Webapp Factory

A simple shell script to generate webapps using Firefox, which

- install instantly and without root privelege
- are recognized as full-blown applications by your desktop environment/widow manager
- take very little storage space compared to their native counterparts
- have cookies and preferences isolated from one another
- are setup with sane privacy and security defaults
- can optionally come with privacy add-ons (UBlock Origin and Decentraleyes) pre-installed

⚠ DISCLAIMER: this is my first bash script, so expect some rough edges here and there

## Tutorial

First clone this repository, then `cd` into it:

```bash
git clone https://github.com/pesader/webapp-factory
cd webapp-factory
```

There's no way to install webapp-factory globally for now (working on it!), so you must run it from the root directory of the repository.

### Webapp installation

To install webapps, this script needs at least a link to a website (first parameter) and a name (second parameter), for example:

```bash
./webapp install https://app.element.io/ Element
```

You can also specify the link and the name of webapp using the `-l` (short for "link") and `-n` (short for "name") flags. There's also the option to set an icon using the `-i` flag! Let's first use the `findicon` subcommand to find out the name of the icon we're looking for:

```bash
./webapp findicon element

Papirus: element-nightly
Papirus: io.elementary.photos
Papirus: distributor-logo-elementary
Papirus: gelemental
Papirus: io.elementary.appcenter
Papirus: element-desktop
Papirus: io.elementary.code
Papirus: com.github.eudaldgr.elements
Papirus: io.elementary.mail
Papirus: element-desktop-nightly
Papirus: io.elementary.camera
Papirus: element
```

Looks like `element` is the name of the icon for Element! Convenient!
Now let's use in our webapp:

```bash
./webapp install -n Element -l https://app.element.io/ -i element
```

Optionally, you can append the `-p` flag to the command above to have UBlock Origin and Decentraleyes pre-installed in the webapp:

```bash
./webapp install -n Element -l https://app.element.io/ -i element -p
```

After that, hover the mouse near the titlebar of the window, click the top right menu, and enable the add-ons manually, as shown in the screencast below.

https://user-images.githubusercontent.com/65264536/138526905-5a27d03e-f2fe-4152-ac39-2782dc1e8bc0.mp4

### Webapp removal

Simply type ```webapp remove``` followed by the name of the webapp you want to remove.

## Requirements

This script is intended to work on GNU/Linux distributions, and was tested on Ubuntu 20.04 with GNOME 3.36.

For the script to work, it needs `firefox`, `bash`, and `wget`. The [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/) icon set is not necessary but highly recommended, since it contains lots of additional icons!

## Credit

This script is mostly an automated version of the instructions described in [this](https://www.reddit.com/r/firefox/comments/li2lqg/comment/gn2sltw/) Reddit comment, by user [u/Apoema](https://www.reddit.com/user/Apoema/), with a few extra bells and whistles.

I also took a lot of inspiration from [Nativefier](https://github.com/nativefier/nativefier), [Webapp Manager](https://github.com/linuxmint/webapp-manager), [Ubuntu Web Remix](https://github.com/Ubuntu-Web/wadk), and [Chromium](https://www.chromium.org/)'s own implementation of webapps.

Many thanks to [arkenfox](https://github.com/arkenfox) and [pyllyukko](https://github.com/pyllyukko) for their `user.js` configs, from where I took some of the privacy and security options used on this project.

The colors of the logo are from the amazing [Nord Theme](https://www.nordtheme.com), by Arctic Studio.

## License

This program is licensed under the GPL 3.0
