#!/usr/bin/fish

function testing
    if git rev-parse --is-inside-work-tree >/dev/null 2>&1
        echo 'Here are the last five commits. Happy coding!'\n
        git log --oneline -n5
    else
        fortune -s | cowsay -f small
    end
end

testing
