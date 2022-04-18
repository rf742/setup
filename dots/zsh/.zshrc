# Set up the prompt
autoload -Uz vcs_info add-zsh-hook
setopt prompt_subst
add-zsh-hook precmd vcs_info 
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
zstyle ':vcs_info:git:*' formats       '(%b%u%c)'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'
PROMPT='%~ %# '
RPROMPT='${vcs_info_msg_0_}'
# proper vi keybinding
bindkey -v '^?' backward-delete-char

source "$HOME/.config/zsh/.aliases"
path+=("${HOME}/.local/bin")
