export ZSH="$HOME/.config/zsh/.oh-my-zsh"

#ZSH_THEME="robbyrussell"

alias vi="nvim"
alias vim="nvim"
alias py="python3"
alias python="python3"


plugins=(git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh


# using starship instead of powerlevel
eval "$(starship init zsh)"

# echo ".zshrc is loaded"
