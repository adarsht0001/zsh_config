#!/bin/zsh

# conifg default zshdir check using ZDOTDIR

zshdir=$HOME/.config/zsh

mkdir -p $zshdir

cp -r ./plugins "$zshdir"
cp -rsf .* "$zshdir"

for file in *; do
    if [ -f "$file" ]; then
        ln -s "$(realpath "$file")" "$zshdir/$file"
    fi
done

echo "successfuly setup zsh"
