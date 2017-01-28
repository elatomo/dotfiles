#
# ~/.bash_profile
#

echo "on bash profile"  # FIXME
export BASH_ENV=~/.bash_aliases
export PATH=$HOME/bin:$HOME/.gem/ruby/2.3.0/bin:$PATH

export SUPERLOL="oh my lol"

# karma js and chromium
export CHROME_BIN='/usr/bin/chromium'

# golang
export GOPATH="$HOME/code/golang"
export PATH=$HOME/code/golang/bin:$PATH

# android / go
export ANDROID_TOOLS="$HOME/code/lib/tools"
export ANDROID_NDK="$HOME/code/lib/android-ndk-r13b"
export ANDROID_API=23  # target API supported (Marshmallow)

export PATH=$ANDROID_NDK:$ANDROID_TOOLS:$PATH