local WindUI = loadstring(game:HttpGet("https://github.com/Foo
        agesus/WindUI/releases/latest/download/main.lua"))()

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

local Slider = Tab:Slider({
    Title = "Power",
    Desc = "Throw Power",
    
    -- To make float number supported, 
    -- make the Step a float number.
    -- example: Step = 0.1
    Step = 1,
    Value = {
        Min = 20,
        Max = 200,
        Default = 20,
    },
    Callback = function(value)
        print(value)
    end
})

local Toggle = Tab:Toggle({
    Title = "Collect",
    Desc = "Collct Unanchored Parts",
    Icon = "bird",
    Type = "Checkbox",
    Value = false, -- default value
    Callback = function(state) 
        print("Toggle Activated" .. tostring(state))
    end
})

local Button = Tab:Button({
    Title = "Throw",
    Desc = "Send it flying!"
    Locked = false,
    Callback = function()
        -- ...
    end
})
