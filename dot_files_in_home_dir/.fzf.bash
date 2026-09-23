# Setup fzf
# ---------
#if [[ ! "$PATH" == */home/mp_ub/.fzf/fzf/bin* ]]; then
#  PATH="${PATH:+${PATH}:}/home/mp_ub/.fzf/fzf/bin"
#fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/mp_ub/.fzf/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/mp_ub/.fzf/fzf/shell/key-bindings.bash"
