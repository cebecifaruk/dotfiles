# ZSH Completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

# ZSH Autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# ZSH Syntax Highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ZSH You-Should-Use
source /opt/homebrew/share/zsh-you-should-use/you-should-use.plugin.zsh

# ZSH Git Prompt
source "/opt/homebrew/opt/zsh-git-prompt/zshrc.sh"

# Prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats "↣ %b "
setopt PROMPT_SUBST
local prompt_lambda="%(?.%F{green}λ.%F{red}λ)%f"
local prompt_dir="%F{cyan}%.%f"
local prompt_seperator="%F{magenta}»%f"
PROMPT='%B${prompt_lambda}  ${prompt_dir} %F{red}${vcs_info_msg_0_}%f${prompt_seperator} %b'

# History Options
unsetopt share_history
setopt no_share_history

bindkey "^[b" backward-word     # ⌥←
bindkey "^[f" forward-word      # ⌥→

# History Navigation
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

# Generated codes
source $HOME/.cargo/env

if [ -d "/usr/local/opt/ruby/bin" ]; then
  export PATH=/usr/local/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi

export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
test -e $HOME/.iterm2_shell_integration.zsh && source $HOME/.iterm2_shell_integration.zsh || true


# Load profile
source $HOME/.profile

# Load aliases
source $HOME/.aliases