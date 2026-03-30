local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "Ultimate Trolling GUI",
    Icon = "door-open", -- lucide icon. optional
    Author = "by .ftgs and .ftgs", -- optional
})

local Tab = Window:Tab({
    Title = "Fling",
    Icon = "bird", -- optional
    Locked = false,
})

local Section = Tab:Section({ 
    Title = "Touch Fling",
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

local Section = Tab:Section({ 
    Title = "Tp Fling",
    Box = false,
    FontWeight = "SemiBold",
    TextTransparency = 0.05,
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
    Opened = true,
})

local Input = Tab:Input({
    Title = "Username",
    Desc = "Input Username"
    Value = "Default value",
    InputIcon = "bird",
    Type = "Input", -- or "Textarea"
    Placeholder = "Enter text...",
    Callback = function(input) 
        print("text entered: " .. input)
    end
})

local Button = Tab:Button({
    Title = "Fling",
    Desc = "Fling That Boi",
    Locked = false,
    Callback = function()
        -- ...
    end
})

local Section = Tab:Section({ 
    Title = "Fling Aura",
})
