#!/bin/sh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
rm -rf ${HOME}/.oh-my-zsh/custom/omz-theme-0669 ${HOME}/.oh-my-zsh/custom/themes/0669.zsh-theme
cd ${HOME}/.oh-my-zsh/custom && git clone https://github.com/timwa0669/omz-theme-0669
cd ${HOME}/.oh-my-zsh/custom/themes && ln -sfn ../omz-theme-0669/0669.zsh-theme 0669.zsh-theme && sed -i -E 's/ZSH_THEME=\".*/ZSH_THEME=\"0669\"/g' ${HOME}/.zshrc && git config --global --add oh-my-zsh.hide-dirty 1
