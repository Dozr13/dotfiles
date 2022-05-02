# For loading SSH key in keychain
/usr/bin/keychain -q --nogui ~/.ssh/personal_Dozr13
source ~/.keychain/ITT-WADE-PATE2-sh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/wadejp8/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-autosuggestions
	zsh-completions
	zsh-syntax-highlighting
	z
	sudo
	nvm
	npm
	yarn
	command-not-found
	docker
	vscode
)
autoload -U compinit && compinit

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig='mate ~/.zshrc'
# alias ohmyzsh='mate ~/.oh-my-zsh'

# ALIAS COMMANDS

# Source command
alias sc='source ~/.zshrc'

# System stuff
alias info='cat /proc/cpuinfo'

# Unix tooling
alias mv='mv -v'
alias cp='cp -v'
alias rm='rm -v'
# node_module specific
alias rnm='\rm -rf node_modules'

#  Exa List commands
alias ls='exa -lhGx --sort=filename --group-directories-first --color=automatic --icons --no-permissions --no-user'
alias ll='exa -lahx --sort=filename --group-directories-first --accessed --modified --created --color=automatic --icons --no-permissions --no-user'
alias lt='exa -lhx --tree -L=2 --color=auto --icons --no-permissions --no-user --created --modified'
alias lsd='exa -lahDGx --color=automatic --icons --no-permissions --no-user'

# no git support for now #vvv# but stay tuned!
# alias lgit='exa --long --git'

# batcat alias
alias cat='batcat --paging=never'

# Change Directory commands
alias cbp='cd ~/git/boilerplates'
alias cpr='cd ~/git/projects'
alias cwa='cd ~/git/work/aicc'
## OS
alias cwin='cd /mnt/c/Users/wade.pate'

# HP Project
alias cbe='cd ~/git/work/aicc/aicc-backend'
alias cfe='cd ~/git/work/aicc/aicc-frontend'
alias crf='cd ~/git/work/aicc/aicc-frontend-react'
alias docs='cd ~/git/work/aicc/platform-docs'

# Docker
alias dps='docker ps'
alias up='docker-compose up'

# NPM commands
## Vue
alias serve='npm run serve'
alias test='npm run test'
## React
alias start='npm start'

# HP aicc-backend project specific NPM command
alias dserve='npm ci --production && cp -rL ./node_modules ./src/layers/nodejs && npm run serve'
alias dev='npm ci --production && cp -rL ./node_modules ./src/layers/nodejs'

# System:
alias update="sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade"
alias myip='curl http://ipecho.net/plain; echo'

# Change dir Windows
alias cdw='/mnt/c/Users/wade.pate'

# git:
alias gac='git add . && git commit -a -m '

#===============================#
## Note taking repo
#===============================#
# open notes folder
alias opennotes='cd && cd git/projects/notes && code .'

## notes for github private repo push command
pushnotes() {
  cd && cd git/projects/notes
  now=$(date '+%A %d %m %Y %X')
  git add . -v
  git commit -a -s -v -m $now
  git push -v
}
#===============================#
## git combo commands
#===============================#
function acp() {
  git add .
  git commit -m "$1"
  git push
}
#===============================#


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Adding timestamp to right of terminal
RPROMPT="[%D{%f/%m/%y} | %D{%L:%M:%S}]"

# nvm cURL install  from github: https://github.com/nvm-sh/nvm#installing-and-updating
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# yarn path
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
