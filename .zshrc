# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/yy/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="random"
#ZSH_THEME="arrow"
ZSH_THEME="gallois"
#ZSH_THEME="agnoster"
#ZSH_THEME="refined"
#ZSH_THEME="af-magic"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=/home/yy/.oh-my-zsh/themes

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
zsh-autosuggestions
git
)

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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias py='python3'
alias v='nvim'
alias sv='sudo nvim'
alias ve='nvim -c Nd'
alias r='ranger'
alias sr='sudo ranger'
alias compton="compton --backend glx --blur-background --blur-method kawase --blur-strength 15"
alias p='sudo pacman -S'
#alias poly1='killall -q polybar'
#alias poly2='./.config/polybar/launch_polybar.sh'
alias i3cf='nvim /home/yy/.config/i3/config'
alias pcf='nvim /home/yy/.config/polybar/config'
alias ccf='nvim /home/yy/.config/i3/compton.conf'
alias vrc="nvim /home/yy/.config/nvim/init.vim"
alias zrc="nvim /home/yy/.zshrc"
alias c=clear
#alias octave="octave --gui"
alias xres="xrdb .Xresources"
alias morphine="/home/yy/Downloads/factorio/bin/x64/factorio"
alias dot-git="git --git-dir=/home/yy/.dotfiles/.git --work-tree=/home/yy"

alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push origin"
alias gch="git checkout"
alias gpull="git pull origin"
alias gf="git fetch"

alias fan1="echo level 1 | sudo tee /proc/acpi/ibm/fan"
alias fan0="echo level 0 | sudo tee /proc/acpi/ibm/fan"
alias fana="echo level auto | sudo tee /proc/acpi/ibm/fan"

alias key-names=xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'

alias blu-con='bluetoothctl power on && bluetoothctl connect 14:60:CB:F0:0A:BD'
alias blu-dis='bluetoothctl power off'


bindkey -v
export KEYTIMEOUT=1
