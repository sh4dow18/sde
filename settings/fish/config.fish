# Exa
function ls
    exa --group-directories-first $argv
end

# Batcat
function cat
    bat $argv
end

# Available Storage
function available_storage
    df -h | grep /dev/sda1 | sed 's/  */ /g' | cut -d ' ' -f 4
end