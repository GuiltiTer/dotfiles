#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title btop
# @raycast.mode silent

# Optional parameters:
# @raycast.icon images/monitoring.png

# Documentation:
# @raycast.description btop
# @raycast.author GuiltiTer
# @raycast.authorURL https://raycast.com/GuiltiTer

wezterm --config hide_tab_bar_if_only_one_tab=true start -- btop
