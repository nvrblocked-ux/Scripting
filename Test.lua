-- Load WindUI
local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

-- Create Window WITH KeySystem
local Window = WindUI:CreateWindow({
    Title = "UTG Loader",
    Icon = "door-open",
    Author = "by .ftgs",
    Folder = "UTGLoader",

    Size = UDim2.fromOffset(480, 300),
    Transparent = true,
    Theme = "Dark",
    Resizable = false,

    KeySystem = {
        Note = "UTG Key System",
        API = {
            {
                Type = "platoboost",
                ServiceId = 23095,
                Secret = "2f8cd8e4-d6f9-4ff7-81c3-fb9b57f474ae",
            },
        },

        -- ✅ No loadstring here anymore
        Callback = function()
            print("Key valid! Access granted.")
        end,
    },
})

-- Main UI (unlocked AFTER key is valid)
local MainTab = Window:Tab({
    Title = "Main",
    Icon = "home",
})

MainTab:Label({
    Title = "Welcome! Key verified successfully.",
})

local Tab = Window:Tab({
    Title = "FE Fling",
})

local Toggle = Tab:Toggle({
    Title = "Toggle",
    Desc = "Toggle Description",
    Icon = "bird",
    Type = "Checkbox",
    Value = false, -- default value
    Callback = function(state) 
        print("Toggle Activated" .. tostring(state))
    end
})
