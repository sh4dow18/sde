xrandr | cut -d ' ' -f 1 | sort -u | sed '1,2d' | head -n 1