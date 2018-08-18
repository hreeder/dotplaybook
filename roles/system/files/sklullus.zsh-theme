function get_load() {
    cat /proc/loadavg | awk '{print $2}'
}

PROMPT='$(get_load) %{$fg[cyan]%}%n%{$reset_color%}@%{$fg[red]%}%M%{$reset_color%} %{$fg_bold[blue]%}$(git_prompt_info)
 %{$fg[cyan]%}%2~ %{$reset_color%}» '

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
