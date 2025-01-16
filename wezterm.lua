local Config = require('config')
require('utils.backdrops')
   :set_files()
   -- :set_focus('#000000')
   :random()

require('events.tab-title').setup()
require('events.new-tab-button').setup()
return Config:init()
   :append(require('config.appearance'))
   :append(require('config.general'))
   :append(require('config.keymaps')).options
