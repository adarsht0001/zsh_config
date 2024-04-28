#!/bin/zsh

# conifg default zshdir check using ZDOTDIR

zshdir=$HOME/.config/zsh

mkdir -p $zshdir

cp -r ./plugins "$zshdir"
cp .* "$zshdir"

for file in *; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        if [[ $filename == .* ]]; then
            ln -s "$(realpath "$file")" "$zshdir/$filename"
        else
            ln -s "$(realpath "$file")" "$zshdir/$file"
        fi
    fi
done


echo "successfuly setup zsh"
