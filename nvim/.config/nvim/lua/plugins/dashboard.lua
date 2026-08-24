local logo = [[
                 ▄   ▄                 
             ▄█▄ █▀█▀█ ▄█▄             
            ▀▀████▄█▄████▀▀            
                 ▀█▀█▀                 
                                       
                                       
    █▀▀ █░█ █ █░░ ▀█▀ █ ▀█▀ █▀▀ █▀█    
▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
    █▄█ █▄█ █ █▄▄ ░█░ █ ░█░ ██▄ █▀▄    
]]

return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      enabled = false,
      preset = {
        header = logo,
      },
      sections = {
        { section = "header" },
        { section = "startup" },
        { key = "q", action = ":qa", hidden = true },
      },
    },
  },
}
