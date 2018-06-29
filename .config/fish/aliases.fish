# ls aliased
alias ll 'ls -laF'
alias la 'ls -A'

# git command
alias gs 'command git status --short --branch'
alias br 'command git branch'

# git overwrap
function git
  switch $argv[1]
    case fetch
      set -e argv[1]
      command git fetch --prune $argv
    case review
      set -l pr_number $argv[2]
      set -l merged_refs (printf "+refs/pull/%d/merge:refs/remotes/pr/%d/merge" $pr_number $pr_number)
      command git fetch origin $merged_refs
      command git checkout pr/$pr_number/merge
    case '*'
      command git $argv
  end
end

# docker-compose overwrap
function docker-compose
  switch $argv[1]
    case cp
      command docker cp (docker-compose ps -q $argv[2]):$argv[3] $argv[4]
    case '*'
      command docker-compose $argv
  end
end

# rails command
alias be 'command bundle exec'

# colored
alias ls 'ls --color=auto'
alias grep 'grep --color=auto'
alias fgrep 'fgrep --color=auto'
alias egrep 'egrep --color=auto'

alias rf 'rm -rf'

alias fs 'exec fish'

alias clear 'tput reset'

