local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "Black Hole Thrower",
    Icon = "door-open", -- lucide icon. optional
    Author = "by PolyroidSCRIPTS", -- optional
})

local Tab = Window:Tab({
    Title = "Black Hole Settings",
    Icon = "bird", -- optional
    Locked = false,
})

Tab:Select() -- Select Tab

local Button = Tab:Button({
    Title = "Button",
    Desc = "Test Button",
    Locked = false,
    Callback = function()
        -- ...
    end
})
