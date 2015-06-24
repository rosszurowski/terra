#!/usr/bin/env bash

GRAY="\e[2m"
RED="\033[0;31m"
YELLOW="\033[0;33m"
END="\033[0m"
SRC="https://github.com/rosszurowski/server/tarball/master"

# Download folder
wget --no-check-certificate https://github.com/rosszurowski/server/tarball/master -qO - | tar -xz &&
cd rosszurowski-server-*/ &&

# Install binaries
make install &&
stack provision/base &&

# Close it up
echo -e "" &&
echo -e "   Base system provision applied" &&
echo -e "" &&
echo -e "   Root login has been disabled for security purposes." &&
echo -e "   Be sure to create a user via the following command:" &&
echo -e "" &&
echo -e "       new user ${GRAY}<username>${END}" &&
echo -e ""