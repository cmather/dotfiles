# export CC="`which clang`"
# export CC_host="`which clang`"
# export CLICOLOR=1
# export CPP="`which clang` -E"
# export CPP_host="`which clang` -E"
# export CXX="`which clang++`"
# export CXX_host="`which clang++`"
# export LINK="`which clang++`"
# export LINK_host="`which clang++`"
export EDITOR="vim"
export EL="$HOME/go/src/github.com/cmather/elements"
export GIT_PS1_SHOWCOLORHINTS="1"
export GIT_PS1_SHOWDIRTYSTATE="1"
export GIT_PS1_SHOWSTASHSTATE="1"
export GIT_PS1_SHOWUNTRACKEDFILES="1"
export GIT_PS1_SHOWUPSTREAM="auto"
export GOPATH="/Users/cmather/go"
export GYP_DEFINES="clang=1"
export PGDATA="/elements/data/postgresql-9.6.10"
export PROMPT_COMMAND='__git_ps1 "${WHITE}\u@\H:\W${RESET}" "\\\$ "'

# color folders with ls
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# for the sass build process to work
export SASS_LIBSASS_PATH="~/src/sass/libsass"

# elements cgo settings
export CGO_CXXFLAGS="-I ${GOPATH}/src/github.com/cmather/v8lib/internal/v8/vendor/include -fno-rtti -fpic -std=c++11"
export CGO_LDFLAGS="-L ${GOPATH}/src/github.com/cmather/v8lib/internal/v8/vendor/binaries/darwin-amd64 -lv8_monolith"
