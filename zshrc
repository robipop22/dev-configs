
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

echo 'eval "$(starship init zsh)"' >> ~/.zshrc

# Load completion config
source $HOME/.zsh/completion.zsh

# Initialize the completion system
autoload -Uz compinit

# Cache completion if nothing changed - faster startup time
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

# Enhanced form of menu completion called `menu selection'
zmodload -i zsh/complist

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/robertpop/.nvm/versions/node/v8.15.0/lib/node_modules/chunky-cli/node_modules/tabtab/.completions/serverless.bash ] && . /Users/robertpop/.nvm/versions/node/v8.15.0/lib/node_modules/chunky-cli/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/robertpop/.nvm/versions/node/v8.15.0/lib/node_modules/chunky-cli/node_modules/tabtab/.completions/sls.bash ] && . /Users/robertpop/.nvm/versions/node/v8.15.0/lib/node_modules/chunky-cli/node_modules/tabtab/.completions/sls.bash
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/robertpop/.nvm/versions/node/v8.15.0/lib/node_modules/chunky-cli/node_modules/tabtab/.completions/slss.bash ] && . /Users/robertpop/.nvm/versions/node/v8.15.0/lib/node_modules/chunky-cli/node_modules/tabtab/.completions/slss.bash



export PATH="$PATH:/opt/yarn-[version]/bin"
export PATH="$PATH:`yarn global bin`"

export NPM_TOKEN=""

export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin

if which jenv > /dev/null; then eval "$(jenv init -)"; fi


export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"


export PATH="$HOME/.yarn/bin:$PATH"

export PATH="$PATH:$(yarn global bin)"

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

alias gs="git status"
alias gc="git checkout"
alias gcm="git commit -m"
alias gpo="git push origin"
alias gplo="git pull origin"
alias gnb="git checkout -b"
alias nuke-npm="rm -rf node_modules/ package-lock.json"
alias nuke-yarn="rm -rf node_modules/ yarn.lock"
alias git-config-metro="git config user.email robert.pop@metrosystems.net"
alias ga="git add"
alias gplups="git pull upstream"
alias graups="git remote add upstream"




source /Users/robertpop/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /Users/robertpop/.zsh/completion.zsh
source /Users/robertpop/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /Users/robertpop/.zsh/history.zsh
source /Users/robertpop/.zsh/key-bindings.zsh
alias ls='ls -G'


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/robertpop/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/robertpop/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/robertpop/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/robertpop/google-cloud-sdk/completion.zsh.inc'; fi
eval "$(starship init zsh)"

