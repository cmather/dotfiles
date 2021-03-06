# Bold or Normal
export DULL=0
export BRIGHT=1

# Text foreground colors
export FG_BLACK=30
export FG_RED=31
export FG_GREEN=32
export FG_YELLOW=33
export FG_BLUE=34
export FG_VIOLET=35
export FG_CYAN=36
export FG_WHITE=37
export FG_NULL=00

# Background colors
export BG_BLACK=40
export BG_RED=41
export BG_GREEN=42
export BG_YELLOW=43
export BG_BLUE=44
export BG_VIOLET=45
export BG_CYAN=46
export BG_WHITE=47
export BG_NULL=00

# ANSI Escape Commands
export ESC="\033"
export NORMAL="\[$ESC[m\]"
export RESET="\[$ESC[${DULL};${FG_WHITE};${BG_NULL}m\]"

# Shortcuts for Colored Text ( Bright and FG Only )

# Dull Text
export BLACK="\[$ESC[${DULL};${FG_BLACK}m\]"
export RED="\[$ESC[${DULL};${FG_RED}m\]"
export GREEN="\[$ESC[${DULL};${FG_GREEN}m\]"
export YELLOW="\[$ESC[${DULL};${FG_YELLOW}m\]"
export BLUE="\[$ESC[${DULL};${FG_BLUE}m\]"
export VIOLET="\[$ESC[${DULL};${FG_VIOLET}m\]"
export CYAN="\[$ESC[${DULL};${FG_CYAN}m\]"
export WHITE="\[$ESC[${DULL};${FG_WHITE}m\]"

# Bright Text
export BRIGHT_BLACK="\[$ESC[${BRIGHT};${FG_BLACK}m\]"
export BRIGHT_RED="\[$ESC[${BRIGHT};${FG_RED}m\]"
export BRIGHT_GREEN="\[$ESC[${BRIGHT};${FG_GREEN}m\]"
export BRIGHT_YELLOW="\[$ESC[${BRIGHT};${FG_YELLOW}m\]"
export BRIGHT_BLUE="\[$ESC[${BRIGHT};${FG_BLUE}m\]"
export BRIGHT_VIOLET="\[$ESC[${BRIGHT};${FG_VIOLET}m\]"
export BRIGHT_CYAN="\[$ESC[${BRIGHT};${FG_CYAN}m\]"
export BRIGHT_WHITE="\[$ESC[${BRIGHT};${FG_WHITE}m\]" 
