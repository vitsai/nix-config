PROMPT='%{$fg[red]%}λ %{$fg[blue]%}%n%{$fg[yellow]%}♞%{$fg[blue]%}%m %{$fg[green]%}{${PWD/#$HOME/~}}%{$fg[cyan]%} →%{$reset_color%} '

RPROMPT='%*'

#PROMPT='%{$fg[red]%}λ %{$fg[blue]%}%n%{$fg[yellow]%}♞%{$fg[blue]%}%m%{$fg[green]%}[%d]%{$fg[cyan]%}→ $(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}λ %{$fg[blue]%}git %{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%}→ %{$reset_color%}"