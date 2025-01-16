local wezterm = require('wezterm')
local gpu_adapters = require('utils.gpu_adapter')
local colors = require('utils.custom_colors')
local backdrops = require('utils.backdrops')

return {
   animation_fps = 60,
   max_fps = 60,
   front_end = 'WebGpu',
   webgpu_power_preference = 'HighPerformance',
   webgpu_preferred_adapter = gpu_adapters:pick_best(),
   window_background_opacity = 1,
   macos_window_background_blur = 50,
   use_fancy_tab_bar = false,
   tab_bar_at_bottom = false,
   enable_tab_bar = true,
   hide_tab_bar_if_only_one_tab = false,
   tab_max_width = 40,
   switch_to_last_active_tab_when_closing_tab = true,
   background = backdrops:create_opts(),

   colors = colors,
   --[[ color_scheme = 'Tokyo Night', ]]
   window_padding = {
      left = 5,
      right = 5,
      top = 10,
      bottom = 1,
   },
   window_decorations = 'INTEGRATED_BUTTONS|RESIZE',

   show_tab_index_in_tab_bar = false,
   enable_scroll_bar = false,
   --[[ window_close_confirmation = 'NeverPrompt', ]]
   window_frame = {
      active_titlebar_bg = '#090909',
      border_left_width = '0.5cell',
      border_right_width = '0.5cell',
      border_bottom_height = '0.25cell',
      border_top_height = '0.05cell',
   },
   inactive_pane_hsb = {
      saturation = 0.9,
      brightness = 0.65,
   },
}
