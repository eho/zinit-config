
#
# Portable environment variables, PATH additions, and custom functions.
# These travel with you across machines via zinit.
#

#
# Environment Variables
#
export AWS_PROFILE=edwinho
export PYTORCH_ENABLE_MPS_FALLBACK=1

#
# PATH additions (for personal tools that are expected on every machine)
#
export PATH="$HOME/.cronus/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/opt/local/bin:/opt/local/sbin:$PATH" # MacPorts

#
# Custom functions
#
function cronus-update-api-token-from-clipboard() {
  export CRONUS_API_TOKEN=$(pbpaste)
}

#
# Node.js (fnm Fast Node Manager)
#
export PATH="$HOME/.local/share/fnm:$PATH"
if command -v fnm &>/dev/null; then
  eval "$(fnm env --use-on-cd)"
fi
