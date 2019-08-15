parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# export PS1="\u@\h \w\[\033[32m\]\$(parse_git_branch)\[\033[00m\] 😬 => "
export PS1="\[\033[01m\]\h:: \w\[\033[32m\]\$(parse_git_branch)\[\033[00m\] \n😬\[\033[31m\]  --+|>\[\033[00m\] "
export FORMAT="\nID\t{{.ID}}\nIMAGE\t{{.Image}}\nCOMMAND\t{{.Command}}\nCREATED\t{{.RunningFor}}\nSTATUS\t{{.Status}}\nPORTS\t{{.Ports}}\nNAMES\t{{.Names}}\n"

#Aliases
alias edit="code ~/.bash_profile"
# alias ps="docker ps -a --format=$FORMAT"
alias ps="docker ps -a"
alias refresh="source ~/.bash_profile"
alias ls="ls -al"
alias ..="cd .."
alias ...="cd ../.."
alias gcm="git commit -m"
alias ga="git add"
alias gaa="git add -A"
alias dc="docker commit" #[alias] [tag]
alias dr="docker run -ti"
alias drd="docker run -d -ti"
alias da="docker attach"
alias drr="docker run --rm -ti"
alias dl="docker logs"
alias ngrok="./ngrok"
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/krwong/Desktop/google-cloud-sdk/path.bash.inc' ]; then . '/Users/krwong/Desktop/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/krwong/Desktop/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/krwong/Desktop/google-cloud-sdk/completion.bash.inc'; fi

# Quickly rename the Session from the commandline
function title {
    echo -ne "\033]0;"$*"\007"
}