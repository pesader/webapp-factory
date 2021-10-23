# Webapp Factory

A simple shell script to generate webapps using Firefox

https://user-images.githubusercontent.com/65264536/138526905-5a27d03e-f2fe-4152-ac39-2782dc1e8bc0.mp4

## Motivation

Lots of popular applications (e.g.: Element, Telegram, Jitsi, etc) are built on top of cross-platform framework called Electron, which easily turns their website into a full blown desktop application. Problem is, each Electron app carries an installation of the Chromium Web Browser, which ends up eating a lot of storage redundantly.

Lucky for us, these applications can often be accessed directly from their website (that's why they use Electron after all!) which we can integrate smoothly into our desktop using webapps or "Single Site Browsers".

Chromium based browsers, like Chromium itself and Brave, have implemented a native way of making webapps out of websites you visit on them, but Firefox doesn't (and has no plans to do so). Since Firefox comes pre-installed in most GNU/Linux distributions, I figured this would be a nice feature to have so I wrote this little script :)

## How to use it

## Requirements

This script is intended to work on GNU/Linux distributions, and was tested on Ubuntu 20.04 with Gnome 3.36.

Also, the [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/) icon set contains lots of additional icons! It is not required for the script to work, but it is recommended if you want to have nice looking icons for most of your webapps.

## Credit

## License

This program is licensed under the GPL-3.0
