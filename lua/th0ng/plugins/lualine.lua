local status, lualine = pcall(require, "lualine")
if not status then 
  return
end

local lualine_sonokai = require("lualine.themes.sonokai")

local new_colors = {
  blue = "#65D1FF",
  green = "#3EFFDC",
  violet = "#FF61EF",
  yellow = "#FFDA7B",
  black = "#000000",
}

lualine_sonokai.normal.a.bg = new_colors.blue
lualine_sonokai.insert.a.bg = new_colors.green
lualine_sonokai.visual.a.bg = new_colors.violet
lualine_sonokai.command = {
  a = {
    gui = "bold",
    bg = new_colors.yellow,
    fg = new_colors.black, --black
  },
}

lualine.setup({
  options = {
    theme = lualine_sonokai
  }
})
