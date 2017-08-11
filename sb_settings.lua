return {
    startStop = {
        x = "48.5%",
        y = 52,
    },

    OnStartUnsynced = function()
    end,

    OnStartSynced = function()
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
