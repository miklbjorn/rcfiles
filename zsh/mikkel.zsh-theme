
local ret_status="%(?:%{$fg_bold[blue]%} :%{$fg_bold[red]%} )"
PROMPT='${ret_status}%{$fg[blue]%}%c%{$reset_color%} '
RPROMPT='$(git_commits_behind)$(git_commits_ahead)$(git_untracked_files)$(git_unstaged_files)$(git_staged_files)$(git_prompt_info)%{$reset_color%}'


ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[202]%}%{$fg[black]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_COMMITS_BEHIND_PREFIX="%{$fg[red]%}"
ZSH_THEME_GIT_COMMITS_BEHIND_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_COMMITS_AHEAD_PREFIX="%{$FG[202]%}"
ZSH_THEME_GIT_COMMITS_AHEAD_SUFFIX="%{$reset_color%} "

ZSH_THEME_GIT_STAGED_PREFIX="%{$FG[202]%}"
ZSH_THEME_GIT_STAGED_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_UNSTAGED_PREFIX="%{$FG[202]%}"
ZSH_THEME_GIT_UNSTAGED_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_UNTRACKED_PREFIX="%{$FG[202]%}"
ZSH_THEME_GIT_UNTRACKED_SUFFIX="%{$reset_color%} "

