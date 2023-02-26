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

---------------------------------------------------------------------------------------------------
-- func: text_in
-- desc: Event called when the addon is processing incoming text.
---------------------------------------------------------------------------------------------------
ashita.events.register('text_in', 'text_in_cb', function (e)
  for _, v in ipairs(messages) do
    if (string.find(e.message_modified, v)) then
      play_alert_sound();
    end
  end
end);