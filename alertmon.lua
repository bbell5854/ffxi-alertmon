addon.author  = 'dehvin';
addon.name    = 'alertmon';
addon.version = '1.0.0';

require 'common'

local imgui = require('imgui');

-- enter the text items you would like to alert on here
local messages = {
  "fission",
  "baleful"
};

---------------------------------------------------------------------------------------------------
-- func: play_alert_sound
-- desc: Small wrapper to play a sound clip from a static location.
---------------------------------------------------------------------------------------------------
local function play_alert_sound()
  -- Play the sound file..
  local fullpath = string.format('%s\\sounds\\%s', addon.path, 'imrcv.wav');
  ashita.misc.play_sound(fullpath);
end