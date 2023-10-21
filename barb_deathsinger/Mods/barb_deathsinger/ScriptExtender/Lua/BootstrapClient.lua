if Ext.Mod.IsModLoaded("67fbbd53-7c7d-4cfa-9409-6d737b4d92a9") then
  local subClasses = {
    AuthorSubclass = {
      modGuid = "1e5f6cb6-fe07-4420-9439-d30078dc11b6",
      subClassGuid = "c7138a11-b9f7-49ca-b0ba-d2fbd9951974",
      class = "barbarian",
      subClassName = "Deathsinger"
    }
  }

  local function OnSessionLoaded()
    Mods.SubclassCompatibilityFramework = Mods.SubclassCompatibilityFramework or {}
    Mods.SubclassCompatibilityFramework.API = Mods.SubclassCompatibilityFramework.Api or {}
    Mods.SubclassCompatibilityFramework.API.InsertSubClasses(subClasses)
  end

  Ext.Events.SessionLoaded:Subscribe(OnSessionLoaded)
end