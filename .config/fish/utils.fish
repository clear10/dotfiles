function save_history --on-event fish_preexec
    history --save
    history --merge
end

function forest
  ~/bin/git-foresta $argv --style=10 | less -RSX
  commandline -f repaint
end
