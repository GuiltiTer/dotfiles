#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title yazi
# @raycast.mode silent

# Optional parameters:
# @raycast.icon images/yazi.png

# Documentation:
# @raycast.description yazi
# @raycast.author GuiltiTer
# @raycast.authorURL https://raycast.com/GuiltiTer

wezterm --config hide_tab_bar_if_only_one_tab=true start -- yazi ~
