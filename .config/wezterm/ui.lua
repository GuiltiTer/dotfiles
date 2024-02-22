local wezterm = require("wezterm")
local module = {}

function module.apply_to_config(config)
  config.color_scheme = "Catppuccin Mocha"

  config.font = wezterm.font("JetBrains Mono", { weight = "Medium" })
  config.font_size = 16

  -- config.use_fancy_tab_bar = false
  -- config.tab_bar_at_bottom = true
  -- config.hide_tab_bar_if_only_one_tab = true
  -- config.show_new_tab_button_in_tab_bar = false
  -- wezterm.on('format-tab-title', function(tab, _, _, _, _, _)
  --   local padding = " "
  --
  --   if tab.is_active then
  --     padding = "   "
  --   end
  --
  --   return {
  --     { Text = padding },
  --     { Text = tostring(tab.tab_index + 1) },
  --     { Text = padding },
  --   }
  -- end
  -- )

  config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
  config.adjust_window_size_when_changing_font_size = false
  config.window_padding = { top = 2, left = 2, right = 2, bottom = 0 }

  config.command_palette_bg_color = "#181826"
  config.command_palette_fg_color = "#CDD6F5"

  config.animation_fps = 1
end

return module
