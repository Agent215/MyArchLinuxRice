function fastfetch --description "Run fastfetch with a width-aware logo"
    if test (count $argv) -gt 0
        command fastfetch $argv
        return $status
    end

    set -l cols $COLUMNS
    if test -z "$cols"
        set cols (command tput cols 2>/dev/null)
    end
    if test -z "$cols"
        set cols 120
    end

    if test $cols -lt 120
        command fastfetch -c /home/brahm/dotfiles/.config/fastfetch/config-compact.jsonc
    else
        command fastfetch -c /home/brahm/dotfiles/.config/fastfetch/config.jsonc
    end
end
