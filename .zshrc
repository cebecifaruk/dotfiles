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

# User settings
export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export JAVA_HOME=$(/usr/libexec/java_home)
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/usr/local/opt/opencv/lib/pkgconfig/:/usr/local/opt/opencv@2/lib/pkgconfig/

export PATH=$PATH:/opt/homebrew/bin
export PATH=$PATH:$HOME/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$HOME/Apps/bin
export PATH=$PATH:$HOME/Library/go/bin
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:/usr/local/opt/llvm/bin/
export PATH=$PATH:$HOME/.composer/vendor/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/Apps/toolchains/aarch64-unknown-linux-gnu/bin
export PATH=$PATH:$HOME/Apps/toolchains/arm-unknown-linux-gnueabi/bin
export PATH=$PATH:$HOME/Apps/toolchains/arm-unknown-linux-gnueabihf/bin

# High Priority Paths
export PATH=/opt/homebrew/opt/ruby/bin:$PATH

export OPENSSL_ROOT_DIR=/opt/homebrew/Cellar/openssl@3/3.1.0/
export KUBE_EDITOR="code -w"

export HOMEBREW_BUNDLE_FILE=$HOME/.Brewfile

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats "↣ %b "

setopt PROMPT_SUBST

local prompt_lambda="%(?.%F{green}λ.%F{red}λ)%f"
local prompt_dir="%F{cyan}%.%f"
local prompt_seperator="%F{magenta}»%f"
PROMPT='%B${prompt_lambda}  ${prompt_dir} %F{red}${vcs_info_msg_0_}%f${prompt_seperator} %b'

alias tlsclient="openssl s_client -connect"
alias ssh-clean-known-hosts="rm ~/.ssh/known_hosts"
alias isodate="date +\"%Y-%m-%dT%H:%M:%S%z\""
alias ldd="otool -L"
alias aws-select-credentials='f() { export AWS_DEFAULT_PROFILE=$1; export AWS_PROFILE=$1 };f'
alias k="kubectl"
alias g="git"
alias kns="kubens"
alias kctx="kubectx"
alias dnsflush="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"
alias docker-kill-all="docker ps -q | xargs docker kill"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

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
