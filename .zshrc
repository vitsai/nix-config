# Lines configured by zsh-newuser-install
HISTFILE=~/.hist
HISTSIZE=10000
SAVEHIST=100000
# End of lines configured by zsh-newuser-install

eval "$(fasd --init auto)"

# If you come from bash you might have to change your $PATH.
export PATH=~/code/build/bin:~/tools/arcanist/bin:~/code/devtools/bin:~/code/google-styleguide/cpplint:$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/Users/vitsai/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="relikt"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
 DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=23

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='emacs'
 else
   export EDITOR='emacs'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#alias ls='ls -lcBF --group-directories-first --color'
alias ls='ls -lGF'
alias synctime='sudo ntpdate -s time.nist.gov'
alias mkpkg='makepkg -si'
alias emacs='emacs -nw'
alias inspire='fortune | cowthink | lolcat'
alias ybt='cd ~/code/yugabyte'
alias yb='cd ~/code/yugabyte/src/yb'
alias gg='git grep'
alias gb='git blame'
alias reds='cd ~/code/yugabyte/src/yb/yql/redis/redisserver'
alias cql='cd ~/code/yugabyte/src/yb/yql/cql/ql'
alias cmn='cd ~/code/yugabyte/src/yb/common'
alias docdb='cd ~/code/yugabyte/src/yb/docdb'
alias rebuild='ybt && ./yb_build.sh'
alias rez='. ~/.zshrc'
alias rtable='./build/debug-clang-dynamic-enterprise/bin/yb-admin --master_addresses 127.0.0.1:7100,127.0.0.2:7100,127.0.0.3:7100 setup_redis_table'
alias redis='ybt && ./bin/yb-ctl destroy && ./bin/yb-ctl create && sleep 2 && ./bin/yb-ctl setup_redis && ./bin/redis-cli'
alias tslog='~/tslog'
alias rr='rebuild && redis'
bindkey ' ' magic-space
alias cql-tests='ybt && cd java/yb-cql/src/test/java/org/yb/cql'
alias surefire='cd ~/code/yugabyte/java/yb-cql/target/surefire-reports'
alias arcclear='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'
alias centos='ssh centos@dev-server-victoria -p 54422'
alias devserv='ssh victoria@dev-server-victoria -p 54422'
