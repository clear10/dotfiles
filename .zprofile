export PATH="/opt/homebrew/bin":"$PATH"
export PATH="/opt/homebrew/sbin":"$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi

test -f ~/.profile && . ~/.profile
test -f ~/.zshrc && . ~/.zshrc
