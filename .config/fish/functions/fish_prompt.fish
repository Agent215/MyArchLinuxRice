function fish_prompt
    set -l last_status $status

    if set -q SSH_CONNECTION
        set_color --bold ff8fa3
        printf "[ssh] "

        set_color ffd6a5
        printf "%s" $USER

        set_color cdb4db
        printf "@"

        set_color --bold 8ecae6
        printf "%s " (prompt_hostname)
    else
        set_color 7CFF7A
        printf "%s@%s " $USER (prompt_hostname)
    end

    set_color 98f5a7
    printf "%s" (prompt_pwd)

    if command git rev-parse --is-inside-work-tree >/dev/null 2>/dev/null
        set_color cdb4db
        printf " (%s)" (command git branch --show-current 2>/dev/null)
    end

    if test $last_status -ne 0
        set_color ff8fa3
        printf " [%s]" $last_status
    end

    if set -q SSH_CONNECTION
        set_color --bold ffb703
        printf "\n❯ "
    else
        set_color 44ff88
        printf "\n❯ "
    end

    set_color normal
end
