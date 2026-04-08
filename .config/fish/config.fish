set -g fish_greeting
alias ll='ls -lah'
alias gs='git status'

# >>> local-style >>>
set -g fish_greeting
set -g fish_color_command bryellow
set -g fish_color_param cyan
set -g fish_color_quote green
set -g fish_color_error red --bold
set -g fish_color_operator brmagenta
set -g fish_color_end brblue
set -g fish_color_comment brblack
set -g fish_color_selection --background=brblack
# <<< local-style <<<

# >>> matrix-colors >>>
set -g fish_greeting
set -g fish_color_command 00ff41
set -g fish_color_param 7cff7a
set -g fish_color_quote 44ff88
set -g fish_color_error ff4444 --bold
set -g fish_color_operator 33cc33
set -g fish_color_end 1ea11e
set -g fish_color_comment 2f7f2f
set -g fish_color_selection --background=103010
set -g fish_color_search_match --background=103010
set -g fish_color_autosuggestion 2f7f2f
# <<< matrix-colors <<<

# >>> matrix-pastel >>>
set -g fish_greeting
set -g fish_transient_prompt 1

set -g fish_color_command 98f5a7
set -g fish_color_param a8dadc
set -g fish_color_quote ffd6a5
set -g fish_color_error ff8fa3 --bold
set -g fish_color_operator cdb4db
set -g fish_color_end 86efac
set -g fish_color_comment 4f8f57
set -g fish_color_selection --background=173117
set -g fish_color_search_match --background=173117
set -g fish_color_autosuggestion 6b8f71
set -g fish_color_redirection b8c0ff
set -g fish_color_escape f1c0e8
set -g fish_color_valid_path 86efac
# <<< matrix-pastel <<<


# Created by `pipx` on 2026-04-07 22:28:51
set PATH $PATH /home/brahm/.local/bin
