# Webapp Factory

A simple shell script to generate webapps using Firefox

https://user-images.githubusercontent.com/65264536/138526905-5a27d03e-f2fe-4152-ac39-2782dc1e8bc0.mp4

These webapps:

- install instantly and without root privelege
- are recognized as full-blown applications by your desktop environment/widow manager
- take very little storage space compared to their native counterparts
- have cookies and preferences isolated from one another
- are setup with sane privacy and security defaults
- can optionally come with privacy add-ons (UBlock Origin and Decentraleyes) pre-installed

## Motivation

Lots of popular applications (e.g.: Element, Telegram, Jitsi, etc) are built on top of cross-platform framework called Electron, which easily turns their website into a full blown desktop application. Problem is, each Electron app carries their own installation of the Chromium Web Browser, which ends up eating a lot of storage redundantly.

Lucky for us, these applications can often be accessed directly from their website (that's why they use Electron after all!) which can be smoothly integrated into the desktop experience using webapps.

Chromium based browsers, like Chromium itself and Brave, have implemented a native way of making webapps out of websites you visit on them, but Firefox doesn't (and has no plans to do so). Since Firefox comes pre-installed in most GNU/Linux distributions, I figured this would be a nice feature to have so I wrote this little script :)

## How to use it

## Requirements

This script is intended to work on GNU/Linux distributions, and was tested on Ubuntu 20.04 with Gnome 3.36.

Also, the [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/) icon set contains lots of additional icons! It is not required for the script to work, but it is recommended if you want to have nice looking icons for most of your webapps.

## Credit

This script is mostly an automated version of the instructions described in [this](https://www.reddit.com/r/firefox/comments/li2lqg/comment/gn2sltw/) Reddit comment, by user [u/Apoema](https://www.reddit.com/user/Apoema/), with a few extra bells and whistles.

I also took a lot of inspiration from [Nativefier](https://github.com/nativefier/nativefier), [Webapp Manager](https://github.com/linuxmint/webapp-manager), [Ubuntu Web Remix](https://github.com/Ubuntu-Web/wadk), and [Chromium](https://www.chromium.org/)'s own implementation of webapps.

Many thanks to [arkenfox](https://github.com/arkenfox) and [pyllyukko](https://github.com/pyllyukko) for their `user.js` configs, from where I took some of the privacy and security options used on this project.

## License

This program is licensed under the GPL-3.0
