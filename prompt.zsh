# https://zdharma.org/zinit/wiki/Example-Oh-My-Zsh-setup/
setopt prompt_subst

autoload colors
colors

PS1="READY >" # provide a simple prompt till the theme loads

zinit ice atinit"zicompinit; zicdreplay"
zinit light zdharma/fast-syntax-highlighting

# zinit ice atclone"dircolors -b LS_COLORS > clrs.zsh" \
#     atpull'%atclone' pick"clrs.zsh" nocompile'!' \
#     atload'zstyle ":completion:*" list-colors “${(s.:.)LS_COLORS}”'
# zinit light trapd00r/LS_COLORS

bracket_start="%{$fg[cyan]%}[%{$reset_color%}"
bracket_end="%{$fg[cyan]%}]%{$reset_color%}"
return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
user_host="%{$terminfo[bold]$fg[green]%}%n%{$reset_color%}@%{$fg[cyan]%}%m%{$reset_color%}"
current_dir="%{$terminfo[bold]%}%~%{$reset_color%}"
prompt_char="%{$terminfo[bold]$fg[magenta]%}% $%{$reset_color%}"
# git_branch="%{$fg[blue]%}[$(git_current_branch)]%{$reset_color%}"
date_time='%{$fg[yellow]%}% %D{%a %b %d, %I:%M}%{$reset_color%}'

PROMPT="${bracket_start}${current_dir}${bracket_end}
${bracket_start}${user_host}${bracket_end} ${prompt_char} "
RPROMPT="${bracket_start}${date_time}${bracket_end}"
PS2=$' \e[0;34m%}%B>%{\e[0m%}%b '

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"