# Add a few more git calls to count staged/unstaged/untracked files

# count untracked files
function git_untracked_files(){
  if command git rev-parse --git-dir &>/dev/null; then
    local untracked="$(git status -s | egrep "^\?\?" | wc -l | tr -d ' ')"
    if [[ "$untracked" != 0 ]]; then
      #echo "$ZSH_THEME_GIT_UNTRACKED_PREFIX$untracked$ZSH_THEME_GIT_UNTRACKED_SUFFIX"
      echo "$ZSH_THEME_GIT_UNTRACKED_PREFIX$ZSH_THEME_GIT_UNTRACKED_SUFFIX"
    fi
  fi
}


# count modified, unstaged files
function git_unstaged_files(){
  if command git rev-parse --git-dir &>/dev/null; then
    local unstaged="$(git status -s | egrep "^ M" | wc -l | tr -d ' ')"
    if [[ "$unstaged" != 0 ]]; then
      #echo "$ZSH_THEME_GIT_UNSTAGED_PREFIX$unstaged$ZSH_THEME_GIT_UNSTAGED_SUFFIX"
      echo "$ZSH_THEME_GIT_UNSTAGED_PREFIX$ZSH_THEME_GIT_UNSTAGED_SUFFIX"
    fi
  fi
}

# count staged files
function git_staged_files(){
  if command git rev-parse --git-dir &>/dev/null; then
    local staged_added="$(git status -s | egrep "^A" | wc -l | tr -d ' ')"
    local staged_modified="$(git status -s | egrep "^M" | wc -l | tr -d ' ')"
    local staged=$[$staged_added+$staged_modified]
    if [[ "$staged" != 0 ]]; then
      #echo "$ZSH_THEME_GIT_STAGED_PREFIX$staged$ZSH_THEME_GIT_STAGED_SUFFIX"
      echo "$ZSH_THEME_GIT_STAGED_PREFIX$ZSH_THEME_GIT_STAGED_SUFFIX"
    fi
  fi
}

