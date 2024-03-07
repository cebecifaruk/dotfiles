# XDG Directories
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache
export XDG_RUNTIME_DIR=/run/user/$UID

# XDG Settings
export ANDROID_USER_HOME="$XDG_DATA_HOME"/android
export CP_HOME_DIR="$XDG_DATA_HOME"/cocoapods
export RBENV_ROOT="$XDG_DATA_HOME"/rbenv
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export REDISCLI_HISTFILE="$XDG_DATA_HOME"/redis/rediscli_history
export SQLITE_HISTORY="$XDG_CACHE_HOME"/sqlite_history
export TS_NODE_HISTORY="$XDG_STATE_HOME"/ts_node_repl_history
export LESSHISTFILE="$XDG_STATE_HOME"/less/history
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history

export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc

export STACK_ROOT="$XDG_DATA_HOME"/stack
export STACK_XDG=1

export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME"/bundle
export BUNDLE_USER_CACHE="$XDG_CACHE_HOME"/bundle
export BUNDLE_USER_PLUGIN="$XDG_DATA_HOME"/bundle

export NUGET_PACKAGES="$XDG_CACHE_HOME"/NuGetPackages
export PLATFORMIO_CORE_DIR="$XDG_DATA_HOME"/platformio

# XDG Aliases
alias adb='HOME="$XDG_DATA_HOME"/android adb'

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

# Language Settings
export GOPATH="$XDG_DATA_HOME"/go
