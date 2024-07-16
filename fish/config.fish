if status is-interactive
    # Commands to run in interactive sessions can go here
end

# brew
set -gx PATH /opt/homebrew/bin $PATH

# starship
starship init fish | source

# nvim
alias vim='nvim'
