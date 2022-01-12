#!/bin/bash

# Get build arguments:
src=$1
dest=$2

src='src'
dest='dest'

echo "Source Directory: $src"
echo "Destination Directory: $dest"

echo "Running makepkg from $PWD"

ls -al $src
ls -al $dest

# pkg_deps=$(source ./PKGBUILD && echo ${makedepends[@]} ${depends[@]})
# echo "Installing dependencies: $pkg_deps"
# pacman -Syu --noconfirm $pkg_deps

# chown -R builder "$PWD"

# echo "Running makepkg"

# # TODO: support extra flags

# su --login builder --command='makepkg -fs ./PKGBUILD'

# echo "Running namcap"

# namcap -i *.pkg.tar.xz