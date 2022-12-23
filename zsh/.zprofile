#
# ~/.zprofile
#

[[ -f ~/.zshrc ]] && . ~/.zshrc
[[ $(fgconsole 2>/dev/null)==1 ]] && exec startx -- vt1
