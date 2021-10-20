#!/bin/bash

FIREFOX_CONFIG_DIR=$HOME/.mozilla/firefox

# check if similarly named webapp was already created
if [ $(find $HOME/.mozilla/firefox -name "*$2"  | wc -l) -gt 0 ];
then
    echo "A similarly named webapp was already created!"
    exit 1
fi

# create a new Firefox profile with a unique name
PROFILE_NAME="$(uuidgen)-$2"
firefox -CreateProfile $PROFILE_NAME

# get absolute path to newly created profile
PROFILE_DIR=$(find $FIREFOX_CONFIG_DIR -name "*$PROFILE_NAME")

# copy user.js file
cp "./user.js" "$PROFILE_DIR"

# copy userChrome.css
mkdir $PROFILE_DIR/chrome
cp ./userChrome.css $PROFILE_DIR/chrome/

# install ublock origin
mkdir $PROFILE_DIR/extensions
wget "https://addons.mozilla.org/firefox/downloads/file/3853583/ublock_origin-1.38.6-an+fx.xpi" -O $PROFILE_DIR/extensions/uBlock0@raymondhill.net.xpi
wget "https://addons.mozilla.org/firefox/downloads/file/3833987/decentraleyes-2.0.16-an+fx.xpi" -O $PROFILE_DIR/extensions/jid1-BoFifL9Vbdl2zQ@jetpack.xpi

# write a desktop entry
CONTENT=$(cat <<EOF
[Desktop Entry]\n
Version=1.0\n
Type=Application\n
Name=$2\n
Icon=applications-webapps\n
Exec=firefox --no-remote -P "$PROFILE_NAME" --name=$2 --class=$2 $1\n
Categories=Utility;\n
StartupWMClass=$2\n
EOF
)

LOWERCASE_APP_NAME=$(echo "$2" | tr '[:upper:]' '[:lower:]')
echo -e $CONTENT > $HOME/.local/share/applications/$LOWERCASE_APP_NAME-webapp.desktop
