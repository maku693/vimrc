#! /bin/sh
cd `dirname "${0}"`
files=`ls -1 *vimrc`
for f in ${files}; do
    ln -si "${PWD}/${f}" "${HOME}/.${f}" && echo "${PWD}/${f}" "${HOME}/.${f}"
done
