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