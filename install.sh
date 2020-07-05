#!/bin/bash

pacman -S gobject-introspection meson ninja
makepkg
sudo pacman -U easyconnect-*.pkg.tar.xz
