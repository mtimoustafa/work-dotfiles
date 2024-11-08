### My configuration ###
# Aliases
alias tree='git log --graph --oneline'
di () { git diff --name-only $@ | fzf --preview "git diff $@ --color=always -- {-1}" } # Prettier diff - inspired by https://medium.com/@GroundControl/better-git-diffs-with-fzf-89083739a9cb
alias dic='di --cached'
alias branch="git branch | fzf | xargs git checkout"
alias delbranch="git branch | fzf -m | xargs -I {} git branch -D '{}'"
kube-logs() { kubectl logs -f $(kubectl get pods -o=name -l app=$1 --no-headers) --all-containers --max-log-requests 30 } # Tail K8s pod
kube-exec() { kubectl exec -it $(kubectl get pods -o=name -l app=$1 --no-headers) $2 } # Execute command on K8s pod
timer() { (sleep $1 && say -r 140 -v Samantha "It is time") & echo $! > ~/timerps } # Set a timer for X minutes and write PID to file
alias gs='git status'
alias gdk-solo-saas='gdk stop rails-web && GITLAB_RAILS_RACK_TIMEOUT_ENABLE_LOGGING=false PUMA_SINGLE_MODE=true GITLAB_SIMULATE_SAAS=1 gdk rails s'
alias gdk-solo-sm='gdk stop rails-web && GITLAB_RAILS_RACK_TIMEOUT_ENABLE_LOGGING=false PUMA_SINGLE_MODE=true GITLAB_SIMULATE_SAAS=0 gdk rails s'

# Make fzf look up hidden files
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

# MacOS: get/set mouse acceleration scaling
alias mouse-accel-get='defaults read .GlobalPreferences com.apple.mouse.scaling'
alias mouse-accel-set='defaults write .GlobalPreferences com.apple.mouse.scaling'

bindkey -v # Allow bash vim mode for command navigation

# Make GPG signatures not crap out
export GPG_TTY=$(tty)

# Quick command for setting up daily work environment
alias morning="~/Library/Application\ Support/iTerm2/iterm2env/versions/3.10.4/bin/python3 ~/morningRoutine.py"
