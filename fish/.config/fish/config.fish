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
    if not contains -- $ANDROID_HOME/emulator $PATH
        fish_add_path $ANDROID_HOME/emulator
    end
    if not contains -- $ANDROID_HOME/platform-tools $PATH
        fish_add_path $ANDROID_HOME/platform-tools
    end
    if not contains -- $ANDROID_HOME/cmdline-tools/latest/bin $PATH
        fish_add_path $ANDROID_HOME/cmdline-tools/latest/bin
    end

    # claude code
    if not contains -- /home/tantuyu/.local/bin $PATH
        fish_add_path /home/tantuyu/.local/bin
    end

    # opencode
    if not contains -- /home/tantuyu/.opencode/bin $PATH
        fish_add_path /home/tantuyu/.opencode/bin
    end
end

# pnpm
set -gx PNPM_HOME "/home/tantuyu/.local/share/pnpm"
if not contains -- $PNPM_HOME/bin $PATH
    fish_add_path $PNPM_HOME/bin
end

# bun
set -gx BUN_INSTALL "$HOME/.bun"
if not contains -- $BUN_INSTALL/bin $PATH
    fish_add_path $BUN_INSTALL/bin
end
