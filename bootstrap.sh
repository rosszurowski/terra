#!/usr/bin/env bash

SRC="https://github.com/rosszurowski/server/tarball/master"

passwd &&

wget --no-check-certificate https://github.com/rosszurowski/server/tarball/master -O - | tar -xz
