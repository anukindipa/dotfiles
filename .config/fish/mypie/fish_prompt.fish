function fish_prompt
    set -l last_command_status $status

    set -l symbol ' π'

    set -l normal_color (set_color normal)
    set -l branch_color (set_color yellow)
    set -l meta_color (set_color red)
    set -l symbol_color (set_color blue -o)
    set -l error_color (set_color red -o)

    if test $last_command_status -eq 0
        echo -n -s $normal_color  (prompt_pwd) $symbol_color $symbol " "$normal_color
    else
        echo -n -s $error_color (prompt_pwd) $symbol " " $normal_color
    end
end
