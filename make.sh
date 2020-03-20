#!/bin/bash

rm -f ".editorconfig"
find . \( -iname "*.psd" -or -iname "*.png" -or -iname "*.md" \) -delete
rm -rf "screenshots/"
rm -f "make.sh"
