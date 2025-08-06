if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -Ux fish_user_paths $fish_user_paths ~/go/bin
set fish_greeting

aliases

starship init fish | source
