# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=100000
setopt extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/vitsai/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# zsh-git-prompt
source ~/.zsh-git-prompt/zshrc.sh

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}〈"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[blue]%}〉"
ZSH_THEME_GIT_PROMPT_SEPARATOR="%{$fg[blue]%}|"
ZSH_THEME_GIT_PROMPT_BRANCH_CLEAN="%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_BRANCH_DIRTY="%{$fg_bold[magenta]%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}%{✗%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[yellow]%}%{+%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg[light_grey]%}%{↓%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[light_grey]%}%{↑%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[cyan]%}✓"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[green]%}●"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[red]%}●"

ZSH_THEME_GIT_PROMPT_CACHE=1
GIT_PROMPT_EXECUTABLE="haskell"

PROMPT='%F{red}λ %F{blue}%n%F{yellow}♞%F{blue}%m %F{green}{%3~} $(git_super_status)%F{cyan}→ '

RPROMPT='%*'

# If you come from bash you might have to change your $PATH.
# export PATH=~/code/build/bin:~/tools/arcanist/bin:~/code/devtools/bin:~/code/google-styleguide/cpplint:$HOME/bin:/usr/local/bin:$PATH

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='vim'
fi

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

alias ls='ls -lcBF --group-directories-first --color'
alias synctime='sudo ntpdate -s time.nist.gov'
alias mkpkg='makepkg -si'
alias emacs='emacs -nw'
alias inspire='fortune | cowthink | lolcat'
alias rez='. ~/.zshrc'
bindkey ' ' magic-space

# A hack to use gnome settings
# export XDG_CURRENT_DESKTOP=Gnome
