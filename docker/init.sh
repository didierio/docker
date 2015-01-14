#!/bin/bash
set -e

REMOTE_REPOSITORY="https://github.com/didierio/media.git"

export HOME="/root"

if [ ! -d "$TARGET_DIR" ]; then
    mkdir "$TARGET_DIR"
fi

if [ ! -d "$TARGET_DIR" ]; then
    echo ">> cloning \"$REMOTE_REPOSITORY\" into \"$TARGET_DIR\"..."
    git clone "$REMOTE_REPOSITORY" "$TARGET_DIR" . -vvv
else
    echo "-- sourcecode already cloned"
fi

# back

export BACK_DIR="$TARGET_DIR/back"

if [ ! -f "/usr/bin/composer" ]; then
    echo ">> installing composer..."
    cd /tmp
    curl -sS https://getcomposer.org/installer | php
    mv composer.phar /usr/bin/composer
else
    echo "-- composer installed"
fi

echo "## $BACK_DIR"
cd "$BACK_DIR"

if [ ! -d "$BACK_DIR/vendor" ]; then
    echo ">> install dependencies..."
    composer install
else
    echo "-- dependencies installed"
fi

./bin/install.sh
