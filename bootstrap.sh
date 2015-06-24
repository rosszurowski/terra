#!/usr/bin/env bash

GRAY="\e[2m"
RED="\033[0;31m"
YELLOW="\033[0;33m"
END="\033[0m"
REPO="rosszurowski/terra"
SRC="https://github.com/${REPO}/tarball/master"

# Download folder
wget --no-check-certificate https://github.com/rosszurowski/server/tarball/master -qO - | tar -xz &&
cd rosszurowski-terra-*/ &&

# Install binaries
cp -f bin/* /usr/local/bin/ &&
stack provision/base &&

# Re-download the directory from the git repo
cd .. &&
rm -rf rosszurowski-terra-* &&
git clone https://github.com/rosszurowski/terra --quiet &&
cd terra &&

# Close it up
echo -e "" &&
echo -e "   Base system provision applied" &&
echo -e "" &&
echo -e "   Root login has been disabled for security purposes." &&
echo -e "   Be sure to create a user via the following command:" &&
echo -e "" &&
echo -e "       new user ${GRAY}<username>${END}" &&
echo -e ""
echo -e ""
