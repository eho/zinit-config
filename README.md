# zinit-config

To install `zinit`, see https://github.com/zdharma/zinit/blob/master/README.md

Then, append this to the end of .zshrc.

```

#
# self upgrade zinit with the following command
# `zinit self-update`
#
# Update snippets - zinit update {URL}.
# Can also use `zinit update --all` to update all snippets (and plugins).
#

#
# Load personal settings
#
zinit light eho/zinit-config

```


Auto completion must be initialized before the Zinit's installer chunk.
Place the following just BEFORE the Zinit's installer chunk that was auto added in .zshrc.

```

# 
# Enable auto completion
#
autoload -U compinit
compinit

```