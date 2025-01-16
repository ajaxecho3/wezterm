local wezterm = require('wezterm')
local act = wezterm.action

wezterm.on('update-right-status', function(window, pane)
   window:set_right_status('' .. window:active_workspace() .. '')
end)
return {
   keys = {
      {
         key = 's',
         mods = 'CTRL|SHIFT',
         action = wezterm.action({ SplitHorizontal = { domain = 'CurrentPaneDomain' } }),
      },
      {
         key = 'v',
         mods = 'CTRL|SHIFT',
         action = wezterm.action({ SplitVertical = { domain = 'CurrentPaneDomain' } }),
      },
      {
         key = '1',
         mods = 'ALT',
         action = act.ShowLauncherArgs({ flags = 'FUZZY|WORKSPACES' }),
      },
      -- Switch to the default workspace
      {
         key = 'y',
         mods = 'CTRL|SHIFT',
         action = act.SwitchToWorkspace({
            name = 'default',
         }),
      },
      --- Create a new workspace and switch to it
      {
         key = 'o',
         mods = 'CTRL|SHIFT',
         action = act.SpawnWindow,
      },

      -- Switch to a monitoring workspace, which will have `top` launched into it
      {
         key = 'u',
         mods = 'CTRL|SHIFT',
         action = act.SwitchToWorkspace({
            name = 'monitoring',
            spawn = {
               args = { 'htop' },
            },
         }),
      },
      -- Create a new workspace with a random name and switch to it
      { key = 'i', mods = 'CTRL|SHIFT', action = act.SwitchToWorkspace },
      { key = 'n', mods = 'CTRL', action = act.SwitchWorkspaceRelative(1) },
      { key = 'p', mods = 'CTRL', action = act.SwitchWorkspaceRelative(-1) },
      { key = 'f', mods = 'CTRL|SHIFT', action = wezterm.action({ SpawnTab = 'CurrentPaneDomain' }) },
   },
}
