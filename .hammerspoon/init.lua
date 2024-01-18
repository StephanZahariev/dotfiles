function moveWindowToDisplay(d)
  return function()
    local displays = hs.screen.allScreens()
    local win = hs.window.focusedWindow()
    --local win = hs.window.frontmostWindow()
    win:moveToScreen(displays[d], false, true)
  end
end

hs.hotkey.bind({"option"}, "1", moveWindowToDisplay(1))
hs.hotkey.bind({"option"}, "2", moveWindowToDisplay(2))
hs.hotkey.bind({"option"}, "3", moveWindowToDisplay(3))

local hyper = {"alt"}

hs.loadSpoon("MiroWindowsManager")
hs.window.animationDuration = 0.1
spoon.MiroWindowsManager:bindHotkeys({
  up = {hyper, "9"},
  right = {hyper, "8"},
  down = {hyper, "7"},
  left = {hyper, "6"},
  fullscreen = {hyper, "up"}
})

-- remap keys
local function keyCode(key, modifiers)
  modifiers = modifiers or {}
  return function()
     hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), true):post()
     hs.timer.usleep(100)
     hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), false):post()
  end
end
local function remapKey(modifiers, key, keyCode)
  hs.hotkey.bind(modifiers, key, keyCode, nil, keyCode)
end
remapKey('', '§', keyCode("`"))
remapKey('shift', '§', keyCode("`", "shift"))

---quick open applications 
function open_app(name)
    return function()
        hs.application.launchOrFocus(name)
        if name == 'Finder' then
            hs.appfinder.appFromName(name):activate()
        end
    end
end
hs.hotkey.bind({"option"}, "v", open_app("Visual Studio Code"))
hs.hotkey.bind({"option"}, "c", open_app("Google Chrome"))
hs.hotkey.bind({"option"}, "t", open_app("iTerm"))
hs.hotkey.bind({"option"}, "s", open_app("Slack"))
hs.hotkey.bind({"option"}, "p", open_app("Postman"))
hs.hotkey.bind({"option"}, "o", open_app("Microsoft Outlook"))
hs.hotkey.bind({"option"}, "z", open_app("zoom.us"))
hs.hotkey.bind({"option"}, "f", open_app("Safari"))
hs.hotkey.bind({"option"}, "g", open_app("pgAdmin 4"))
hs.hotkey.bind({"option"}, "h", open_app("GitHub Desktop"))
---hs.hotkey.bind({"option"}, "d", open_app("DBeaver"))
