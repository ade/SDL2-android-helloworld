# Make sure android SDK and NDK are in PATH, for me on OS X, I added this to ~/.bash_profile:
#export ANDROID_NDK=/Applications/android-ndk-r9
#export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools
#export PATH=$PATH:$HOME/Library/Android/sdk/tools
#export PATH=$PATH:$ANDROID_NDK

#Edit these paths to your local config
export SDL_ROOT=~/Project/sandbox/sdl-maker/libsdl
export PROJECT_ROOT=~/Project/sandbox/sdl-maker
export NDK_MODULE_PATH="$SDL_ROOT"

cd android
android update project -p ./
ndk-build -j5 V=1
ant debug install