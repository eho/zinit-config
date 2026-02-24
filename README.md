# zinit-config

Personal zsh configuration managed via [zinit](https://github.com/zdharma-continuum/zinit).

## What's Included

| File | Purpose |
|---|---|
| `init.zsh` | Entry point — loads Oh My Zsh git plugin, then sources the files below |
| `settings.zsh` | Shell options (`autopushd`, `automenu`) and `zsh-completions` plugin |
| `prompt.zsh` | Custom prompt with hostname, directory, timestamp, and git info |
| `extras.zsh` | Portable env vars, PATH additions, and custom functions |

## New Machine Setup

### 1. Prerequisites

Make sure `git` and `zsh` are available. On macOS both come pre-installed. If you've installed Homebrew, you can get the latest git with:

```sh
brew install git
```

### 2. Install zinit

Run the official installer (this adds a bootstrap block to your `~/.zshrc`):

```sh
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
```

This will create `~/.local/share/zinit/` and append the zinit bootstrap chunk to your `~/.zshrc`.

### 3. Load this config

Append the following to `~/.zshrc` **after** the zinit installer chunk:

```sh
#
# self upgrade zinit with the following command
# `zinit self-update`
#
# Update snippets - zinit update {URL}.
# Can also use `zinit update --all` to update all snippets (and plugins).
#

#
# Load personal settings (env vars, paths, functions are in extras.zsh)
#
zinit light eho/zinit-config
```

### 4. Reload your shell

```sh
exec zsh
```

Zinit will automatically clone this repo and source everything on first load.

## Updating

```sh
# Update zinit itself
zinit self-update

# Update all plugins (including this config)
zinit update --all
```

## Customising `extras.zsh`

`extras.zsh` is the place for anything portable that should follow you across machines:

- **Environment variables** (e.g. `AWS_PROFILE`)
- **PATH additions** (e.g. `~/.cronus/bin`, `~/scripts`)
- **Custom functions** (e.g. `cronus-update-api-token-from-clipboard`)

Machine-specific or installer-managed entries (bun, ruby, etc.) should stay in `~/.zshrc` directly.