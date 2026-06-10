source /usr/share/cachyos-fish-config/cachyos-config.fish

set -U fish_prompt_pwd_dir_length 0
set -g __fish_git_prompt_show_status 1

alias podman=docker 

fish_add_path ~/.cargo/bin

# overwrite greeting
# potentially disabling fastfetch
function fish_greeting
    # smth smth
end

oh-my-posh init fish | source
