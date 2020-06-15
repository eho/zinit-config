# Standarized way of handling finding plugin dir,
# regardless of functionargzero and posixargzero,
# and with an option for a plugin manager to alter
# the plugin directory (i.e. set ZERO parameter)
# https://zdharma.org/zinit/wiki/zsh-plugin-standard/
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

# Then ${0:h} to get plugin’s directory
plugin_path=${0:h}

source ${plugin_path}/prompt.zsh
source ${plugin_path}/settings.zsh
