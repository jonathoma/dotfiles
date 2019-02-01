# Set name of the theme to load. Optionally, set this to "random"
ZSH_THEME=""

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  git,
)

# User configuration
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-syntax-highlighting-filetypes/zsh-syntax-highlighting-filetypes.zsh
export ZSH=/Users/jonathanthomas/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit
prompt pure

bindkey -v
bindkey '^R' history-incremental-search-backward

for file in ~/.{path,aliases}; do
  [ -r "$file" ] && source "$file"
done
unset file

