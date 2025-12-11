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

# COMPLETIONS
if [[ -d "/opt/homebrew/share/zsh/site-functions" ]]; then
  fpath=("/opt/homebrew/share/zsh/site-functions" $fpath)
fi

autoload -Uz compinit
if [[ ! -f "$HOME/.zcompdump" || "$HOME/.zcompdump" -ot "$HOME/.zshrc" ]]; then
  compinit -d "$HOME/.zcompdump"
else
  compinit -C -d "$HOME/.zcompdump"
fi

# PROMPT
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{cyan}%C%f %F{green}${vcs_info_msg_0_}%f$ '

# SHELDON
eval "$(sheldon source)"
