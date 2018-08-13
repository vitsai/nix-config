PROMPT='%{$fg[red]%}λ %{$fg[blue]%}%n%{$fg[yellow]%}♞ %{$fg[blue]%}%m %{$fg[green]%}{${PWD/#$HOME/~}}$(git_super_status)%{$fg[cyan]%}→%{$reset_color%} '

RPROMPT='%*'

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


#PROMPT='%{$fg[red]%}λ %{$fg[blue]%}%n%{$fg[yellow]%}♞ %{$fg[blue]%}%m%{$fg[green]%}[%d]%{$fg[cyan]%}→ $(git_prompt_info)%{$reset_color%}'
#ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%}→ %{$reset_color%}"


