#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"


parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

cd() {
    builtin cd "$@"  # Invoke the original 'cd' command

    # Check if the folder contains a Python project (e.g., presence of 'venv', 'pyenv', 'Pipfile', etc.)
    if [[ -f ".venv/bin/activate" ]]; then
        source .venv/bin/activate  # Activate the virtual environment
    else
	deactivate 2>/dev/null
    fi
}

alias config='/usr/bin/git --git-dir=/home/alba/.dotfiles --work-tree=/home/alba'

alias kkp='kaggle kernels push -p'
