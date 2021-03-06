source $HOME/.dotfiles/shell/antigen/antigen.zsh

antigen bundle robbyrussell/oh-my-zsh lib/
antigen bundle git
antigen bundle docker
antigen bundle github
antigen bundle go
antigen bundle symfony2
antigen bundle z                            # autojump
antigen bundle andrewferrier/fzf-z
antigen bundle colored-man-pages            # adds colors to manpages
antigen bundle colorize                     # cat with syntax highlight support
antigen bundle cp                           # cp with progress bar

antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen theme refined

if [[ $CURRENT_OS == 'OS X' ]]; then
    antigen-bundle osx
elif [[ $CURRENT_OS == 'Linux' ]]; then
    if [[ $DISTRO == 'Archlinux' ]]; then
        antigen bundle archlinux
    elif [[ $DISTRO == 'CentOS' ]]; then
        antigen bundle centos
    fi
fi

antigen apply

source ~/.dotfiles/shell/.alias
if [ -f ~/.alias-private ]; then
    source ~/.alias-private
fi
