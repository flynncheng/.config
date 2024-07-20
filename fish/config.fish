if status is-interactive
    # Commands to run in interactive sessions can go here
end

# brew
set -gx PATH /opt/homebrew/bin $PATH

# starship
starship init fish | source
set -x STARSHIP_CONFIG ~/.config/starship/starship.toml

# fzf
fzf --fish | source

# nvim
alias vim='nvim'
