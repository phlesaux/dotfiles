# ALIASES
if [ -f ~/.zsh/alias/custom ]; then
    source ~/.zsh/alias/custom
fi

if [ -f ~/.zsh/alias/git ]; then
    source ~/.zsh/alias/git
fi

if [ -f ~/.zsh/alias/terraform ]; then
    source ~/.zsh/alias/terraform
fi

# EXPORTS
if [ -f ~/.zsh/export/custom ]; then
    source ~/.zsh/export/custom
fi

## aws cli completion
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C '/usr/local/bin/aws_completer' awswrap

# PROMPT
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{cyan}%C%f %F{green}${vcs_info_msg_0_}%f$ '

# SHELDON
eval "$(sheldon source)"
