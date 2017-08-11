local UIWidgets = {"Resource Bar Display", "AdvPlayersList", "Red Tooltip", "How to play info",
                   "Keybind/Mouse Info", "Music Player", "Options", "Commands info",
                    }

return {
    startStop = {
        x = "48.5%",
        bottom = 80,
    },

    OnStopEditingUnsynced = function()
        for _, widgetName in ipairs(UIWidgets) do
            widgetHandler:EnableWidget(widgetName)
        end
    end,

    OnStartEditingUnsynced = function()
        for _, widgetName in ipairs(UIWidgets) do
            widgetHandler:DisableWidget(widgetName)
        end
        Spring.SendCommands("tooltip 0")
    end,

    OnStartEditingSynced = function()
        if GG.TechGrant then
            for _, teamID in ipairs(Spring.GetTeamList()) do
                GG.TechGrant("tech0", teamID)
                GG.TechGrant("tech1", teamID)
                GG.TechGrant("tech2", teamID)
                GG.TechGrant("tech3", teamID)
            end
        end
    end,
}
