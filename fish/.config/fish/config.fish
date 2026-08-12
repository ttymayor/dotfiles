if status is-interactive
    # starship
    starship init fish | source
    # zoxide
    zoxide init fish | source
    # editor
    alias zed='zeditor'
    set -gx EDITOR "zeditor --wait"

    # android
    set -gx JAVA_HOME /opt/android-studio/jbr
    set -gx ANDROID_HOME $HOME/Android/Sdk
    fish_add_path $ANDROID_HOME/emulator
    fish_add_path $ANDROID_HOME/platform-tools
    fish_add_path $ANDROID_HOME/cmdline-tools/latest/bin

    # claude code
    fish_add_path /home/tantuyu/.local/bin

    # opencode
    fish_add_path /home/tantuyu/.opencode/bin
end

# pnpm
set -gx PNPM_HOME "/home/tantuyu/.local/share/pnpm"
fish_add_path $PNPM_HOME/bin

# bun
set -gx BUN_INSTALL "$HOME/.bun"
fish_add_path $BUN_INSTALL/bin
