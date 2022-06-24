ZSH_PATH="${HOME}/.local/share/zsh"
fpath+=(${ZSH_PATH}/pure)
source ${ZSH_PATH}/zsh-autosuggestions/zsh-autosuggestions.zsh
source ${ZSH_PATH}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

########## Alias ##########
alias l='ls -CF --color=auto'
alias la='ls -A --color=auto'
alias ll='ls -alF --color=auto'
alias ls='ls --color=auto'

# Prompt Theme - Pure
autoload -U promptinit; promptinit
zstyle :prompt:pure:git:branch color green
zstyle :prompt:pure:prompt:success color green
# turn on git stash status
zstyle :prompt:pure:git:stash show yes
prompt pure
