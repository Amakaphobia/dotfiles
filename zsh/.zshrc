# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#setup for zinit

# Set the directory zinit is stored
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
# The {} are if first is not null take it else take second

# Download Zinit if its not here yet
if [ ! -d "$ZINIT_HOME" ]; then
	mkdir -p "$(dirname $ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Lines configured by zsh-newuser-install

HISTFILE=~/.zsh_histfile
HISTSIZE=4000
SAVEHIST=4000
HISTDUP=erase

setopt appendhistory
setopt sharehistory

# Doesnt add commands beginning with a space to history to preserve private information
setopt hist_ignore_space 

# Ignore all duplicate entries
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

setopt autocd extendedglob
unsetopt beep nomatch

#Vim keys
bindkey -v 

# Completion Styling
#set autocompletion to case insensitive
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' 
#set autocompletion  suggestions to have the same color as ls --color
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}" 
zstyle ':complition:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

# Aliases
alias ll='ls -lisA --color'
alias cat='bat'

# The following lines were added by compinstall
zstyle :compinstall filename '/home/akio/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# source the file we just downloaded
source "${ZINIT_HOME}/zinit.zsh"


# Add in pl10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Add in zsh plugins
zinit ice depth=1; zinit light zsh-users/zsh-syntax-highlighting
zinit ice depth=1; zinit light zsh-users/zsh-completions
zinit ice depth=1; zinit light zsh-users/zsh-autosuggestions
zinit ice depth=1; zinit light Aloxaf/fzf-tab

#Add in zsh snippets
zinit snippet OMZP::git
zinit snippet OMZP::sudo

# Load Autocompletions
autoload -U compinit && compinit

zinit cdreplay -q

# Keybindings
bindkey '^f' autosuggest-accept
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# add fuzzy finder integration to shell
eval "$(fzf --zsh)" 
eval "$(zoxide init --cmd cd zsh)"


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
