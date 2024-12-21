if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g -x fish_greeting ''
set --universal --export STARSHIP_CONFIG "$HOME/.config/starship/starship.toml"

# End of file required
starship init fish | source

zoxide init fish | source

