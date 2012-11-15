#!/usr/bin/env zsh

setopt EXTENDED_GLOB
cd "${ZDOTDIR:-$HOME}"
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s -f "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
