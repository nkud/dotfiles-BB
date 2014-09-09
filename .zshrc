# 環境変数
export LANG=jp_JP.UTF-8
	# locale settings for perl warning
export LC_ALL=en_US.UTF-8
export GNUPLOT_FONTPATH=~/Library/Fonts/

#export PAGER=vimpager
#alias less=$PAGER
#alias zless=$PAGER

# 補完機能
autoload -U compinit; compinit

zstyle ':completion:*' list-colors ''


autoload zed

# colors
autoload -U colors
colors
setopt prompt_subst
#local black=$'%{\e[0;30m%}'
local BLACK=$'%{\e[0;40m%}'
local RED=$'%{\e[0;31m%}'
local GREEN=$'%{\e[0;32m%}'
local YELLOW=$'%{\e[0;33m%}'
local BLUE=$'%{\e[0;34m%}'
local MAGENTA=$'%{\e[0;35m%}'
local CYAN=$'%{\e[0;36m%}'
#local white=$'%{\e[0;37m%}'
local WHITE=$'%{\e[0;47m%}'
local default=$'%{\e[39m%}'
local DEFAULT=$'%{\e[49m%}'

local REVERSE=$'%{\e[7m%}'
local STANDARD=$'%{\e[0m%}'

# 256
local GRAY=$'%{\e[48;5;254m%}'
local black=$'%{\e[38;5;232m%}'

# prompt setting
# 右側プロンプトが長くなったら、省略できるようにしたい。
#PROMPT="%K{black}%F{white}%S %n %s%B%b%f%k "
PROMPT=$GRAY$black' %n '$default$DEFAULT' '
PROMPT2="%_ : "
#RPROMPT="%K{black}%F{white}%S %~/ %s%f%k"
RPROMPT=$GRAY$black' %~/ '$default$DEFAULT
SPROMPT="% is correct? [n.y.a.e]"

# keybind emacs
bindkey -e

# auto
setopt auto_cd
setopt auto_pushd
setopt list_packed
setopt equals # =command が `which command`
setopt auto_list # 補完候補を一覧で表示
setopt auto_menu
setopt list_packed
setopt list_types
setopt no_beep
setopt notify
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # 大文字小文字区別なし

# ソースを読み込む
[ -f ~/.zshrc.alias ] && source ~/.zshrc.alias # ローカルのエイリアス
source ~/.zsh.d/zsh.alias # エイリアス
source ~/.zsh.d/zsh.emacs

export PATH=$PATH:~/.shelf/bin
export TERM=xterm-256color

# LS COLOR <--- another's
# zshrc.mine
export LSCOLORS=Exfxcxdxbxegedabagacad

export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

export ZLS_COLORS=$LS_COLORS

export CLICOLOR=true

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

alias color256='~/.bin/256.sh'
