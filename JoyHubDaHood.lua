local function fetch(url)
    local ok, res = pcall(game.HttpGet, game, url)
    return ok and res or nil
end

loadstring(fetch("https://raw.githubusercontent.com/JoyHub2026/JoyHubDaHood/main/Joy1.lua"))()

repeat task.wait(0.1) until _G.LH ~= nil

local scripts = {
    "https://raw.githubusercontent.com/JoyHub2026/JoyHubDaHood/main/Joy2.lua",
      "https://raw.githubusercontent.com/JoyHub2026/JoyHubDaHood/main/Joy2.lua",
      "https://raw.githubusercontent.com/JoyHub2026/JoyHubDaHood/main/Joy3.lua",
      "https://raw.githubusercontent.com/JoyHub2026/JoyHubDaHood/main/Joy4.lua",
}
for _, url in ipairs(scripts) do
    local content = fetch(url)
    if content then
        local func = loadstring(content)
        if func then task.spawn(func) end
    end
    task.wait(0.2)
end
