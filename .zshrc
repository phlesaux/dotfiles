# ALIASES
for file in ~/.zsh/alias/*; do
  if [ -f "$file" ]; then
    source "$file"
  fi
done

# EXPORT
for file in ~/.zsh/export/*; do
  if [ -f "$file" ]; then
    source "$file"
  fi
done

## aws cli completion
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C '/usr/local/bin/aws_completer' awsw

# PROMPT
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{cyan}%C%f %F{green}${vcs_info_msg_0_}%f$ '

# SHELDON
eval "$(sheldon source)"
