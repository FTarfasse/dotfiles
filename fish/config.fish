if status is-interactive
    # Commands to run in interactive sessions can go here
end

source $HOME/.bash_aliases
direnv hook fish | source
zoxide init fish | source

set -x PATH ~/.config/emacs/bin $PATH

# opam configuration
source /home/fabrice/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/fabrice/.ghcup/bin $PATH # ghcup-env
