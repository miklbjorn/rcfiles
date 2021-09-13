# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/bjoern/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="arrow"
ZSH_THEME="mikkel"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
plugins=(git mikkels_git chucknorris)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#
#  MY OWN STUFF:


alias mount_home='sshfs bjoern@pplxint8.physics.ox.ac.uk:/home/bjoern/ ~/OxfordMount/'
alias mh11='sshfs bjoern@pplxint11.physics.ox.ac.uk:/home/bjoern/ ~/mount_dirs/ox_pplx9 -o volname=ox_pplx9'
alias mh10='sshfs bjoern@pplxint10.physics.ox.ac.uk:/home/bjoern/ ~/mount_dirs/ox_pplx9 -o volname=ox_pplx9'
alias mh9='sshfs bjoern@pplxint9.physics.ox.ac.uk:/home/bjoern/ ~/mount_dirs/ox_pplx9 -o volname=ox_pplx9'
alias umh='umount -f ~/mount_dirs/ox_pplx9'
alias md8='sshfs bjoern@pplxint8.physics.ox.ac.uk:/data/lhcb/users/bjoern/ ~/mount_dirs/ox_data8 -o volname=ox_data8'
alias md9='sshfs bjoern@pplxint9.physics.ox.ac.uk:/data/lhcb/users/bjoern/ ~/mount_dirs/ox_data9 -o volname=ox_data9'
alias umd8='umount -f ~/mount_dirs/ox_data8'
alias umd9='umount -f ~/mount_dirs/ox_data9'
alias ls='ls -G'
alias sshpplx='ssh -Y bjoern@pplxint8.physics.ox.ac.uk'
alias sshpplx9='ssh -Y bjoern@pplxint9.physics.ox.ac.uk'

alias mb2oc='sshfs mibjoern@lxplus.cern.ch:/afs/cern.ch/work/m/mibjoern/B2OC_upgrade_selection/stack2/Moore ~/mount_dirs/lxplus_b2oc_upgrade -o volname=lxplus_b2oc_upgrade'
alias umb2oc='umount -f ~/mount_dirs/lxplus_b2oc_upgrade'

alias vim='mvim -v'

alias mcvmfs='echo "Provide computer admin password:";sudo mount -t cvmfs lhcb.cern.ch /cvmfs/lhcb.cern.ch;sudo mount -t cvmfs lhcbdev.cern.ch /cvmfs/lhcbdev.cern.ch;sudo mount -t cvmfs lhcb-condb.cern.ch /cvmfs/lhcb-condb.cern.ch;sudo mount -t cvmfs sft.cern.ch /cvmfs/sft.cern.ch'

# added by Anaconda3 4.2.0 installer
export PATH="/Users/bjoern/anaconda/bin:$PATH"

source ~/Applications/root/bin/thisroot.sh

autoload -U zmv

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/bjoern/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/bjoern/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/bjoern/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/bjoern/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/bjoern/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/bjoern/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/bjoern/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/bjoern/google-cloud-sdk/completion.zsh.inc'; fi

export PATH=$PATH:/Users/bjoern/bin

source '/Users/bjoern/lib/azure-cli/az.completion'
