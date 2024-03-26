# Load profile
source $HOME/.profile

# Load aliases
source $HOME/.aliases

# Antigen
source /opt/homebrew/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle python
antigen bundle pip
# antigen bundle rust
antigen bundle ruby
antigen bundle screen
antigen bundle terraform
antigen bundle virtualenv
antigen bundle aliases
# antigen bundle docker
antigen bundle docker-compose
# antigen bundle gh
antigen bundle gem
antigen bundle git-auto-fetch
antigen bundle git-prompt
antigen bundle golang
antigen bundle history
antigen bundle httpie
antigen bundle keychain
antigen bundle kubectl
antigen bundle macos
antigen bundle nmap
antigen bundle npm
antigen bundle command-not-found
antigen bundle brew

antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle MichaelAquilina/zsh-you-should-use
antigen bundle zsh-users/zsh-history-substring-search
# antigen bundle loiccoyle/zsh-github-copilot


antigen apply

# Prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats "↣ %b "
setopt PROMPT_SUBST
local prompt_lambda="%(?.%F{green}λ.%F{red}λ)%f"
local prompt_dir="%F{cyan}%.%f"
local prompt_separator="%F{magenta}»%f"
PROMPT='%B${prompt_lambda}  ${prompt_dir} %F{red}${vcs_info_msg_0_}%f${prompt_separator} %b'

# History Options
unsetopt share_history
setopt no_share_history

test -d "${XDG_STATE_HOME}"/zsh || mkdir -p "${XDG_STATE_HOME}"/zsh
export HISTFILE="${XDG_STATE_HOME}/zsh/history"

# Keybindings
bindkey "^[b" backward-word     # ⌥←
bindkey "^[f" forward-word      # ⌥→
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word