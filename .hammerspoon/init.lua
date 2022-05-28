function moveWindowToDisplay(d)
  return function()
    local displays = hs.screen.allScreens()
    local win = hs.window.focusedWindow()
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