local Fonts = {}
local fontsLoaded = false

function LoadCustomFonts()
    if not fontsLoaded then
        for _, font in ipairs(Config.CustomFonts) do
            local fontFile = RegisterFontFile(font.file)
            Fonts[font.name] = RegisterFontId(font.file)
        end
        fontsLoaded = true
    end
end

function GetFontId(fontName)
    return Fonts[fontName] or 0 
end exports("GetFontId", GetFontId)

CreateThread(function()
    LoadCustomFonts()
end)

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    LoadCustomFonts()
end)
