local ZSH_CONFIG=$(dirname "$0")
source $ZSH_CONFIG/bootstrap.zsh

zinit wait lucid light-mode for zimfw/environment
zinit wait lucid light-mode for Aloxaf/fzf-tab
zinit wait lucid light-mode for hlissner/zsh-autopair
zinit wait lucid light-mode for Tarrasch/zsh-bd
zinit wait lucid light-mode multisrc'env.zsh alias.zsh functions.zsh keymaps.zsh opencode.zsh prox.zsh' for $ZSH_CONFIG/modules

zinit light-mode compile'(pure|async).zsh' pick'async.zsh' src'pure.zsh' for sindresorhus/pure

zinit light-mode pick'styles.zsh' for $ZSH_CONFIG/modules
zinit blockf light-mode for zsh-users/zsh-completions
autoload -Uz compinit && compinit
zinit light-mode for atload"_zsh_autosuggest_start" zsh-users/zsh-autosuggestions
zinit light-mode for zdharma-continuum/fast-syntax-highlighting

zinit light qoomon/zsh-lazyload
source $ZSH_CONFIG/modules/app_configs.zsh
