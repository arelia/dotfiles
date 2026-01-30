# If zsh is available and we're not already in zsh, switch to it
if [ -z "$ZSH_VERSION" ] && command -v zsh &> /dev/null; then
    exec zsh
fi

# Fallback aliases if staying in bash
alias zs="source ~/.bashrc"
alias zedit="nano ~/.bashrc"

alias ll="ls -lha"
alias pyserv="python -m SimpleHTTPServer"

# Git aliases
alias gs="git status"
alias gpu="git push -u origin HEAD"
alias gl="git log -3"
alias gla="git log --all"
alias glp="git log --all --graph --decorate --oneline --simplify-by-decoration"
alias gcan="git commit --amend --no-edit"
alias gcanp="git commit --amend --no-edit && git push -f"
alias gpf="git push -f"

# Codespaces-specific configuration
if [ -n "$CODESPACES" ]; then
    export EDITOR="code --wait"
    export VISUAL="code --wait"
    alias server="script/server"
    alias console="script/console"
fi
