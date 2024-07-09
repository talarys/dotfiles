if status is-interactive
    function fish_greeting
    end

    function yy
        set tmp (mktemp -t "yazi-cwd.XXXXXX")
        yazi $argv --cwd-file="$tmp"
        if set cwd (cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
            cd -- "$cwd"
        end
        rm -f -- "$tmp"
    end

    starship init fish | source
    zoxide init fish | source
    source ~/.asdf/asdf.fish

    fish_add_path $HOME/.cargo/bin
    fish_add_path $HOME/.local/bin

    alias ls="exa -lah"
    alias cd="z"
    alias cat="bat"
    alias v="nvim"
    alias vim="nvim"

    set EDITOR nvim
    set OPENAI_BASE_URL http://localhost:11434/v1/
    set DEFAULT_MODEL llama3
    set OPEN_API_KEY NULL

end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
set -gx PATH $HOME/.cabal/bin $PATH /home/talarys/.ghcup/bin # ghcup-env
