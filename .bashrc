#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# eval "$(starship init bash)"

alias n="nvim"                            
alias cls="clear"    
alias connect="bluetoothctl connect"
alias disconnect="bluetoothctl disconnect"
alias ls='exa --icons'
alias la='ls -a'

PS1='[\u@\h \W]\$ '

# [[ $- == *i* ]] && source /usr/share/blesh/ble.sh --noattach
#
# [[ ${BLE_VERSION-} ]] && ble-attach
#
# bind 'set show-all-if-ambiguous on'
# bind 'TAB:menu-complete'
#
# ble-face auto_complete='fg=242,bg=235'
# ble-face auto_complete='fg=white,bg=69'
# ble-face auto_complete='fg=240,underline,italic'
#
# ble-face -s command_builtin_dot       fg=teal,bold
# ble-face -s command_builtin           fg=teal
#
# ble-face -s command_alias             fg=green
#
# ble-face -s filename_directory        underline,fg=white
# ble-face -s syntax_error              fg=203
# ble-face -s syntax_history_expansion  bg=94,fg=231
# bleopt prompt_ps1_final='$(starship module character)'
