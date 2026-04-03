function fish_prompt
    set -l last_status $status

    set_color 7CFF7A
    printf "%s@%s " $USER (prompt_hostname)

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

    set_color 44ff88
    printf "
❯ "

    set_color normal
end
