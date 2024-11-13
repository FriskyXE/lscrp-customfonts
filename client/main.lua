-- client.lua
local Fonts = {}
local fontsLoaded = false

-- ฟังก์ชันสำหรับโหลดฟอนต์ทั้งหมดใน config
function LoadCustomFonts()
    if not fontsLoaded then
        for _, font in ipairs(Config.CustomFonts) do
            local fontFile = RegisterFontFile(font.file)
            Fonts[font.name] = RegisterFontId(font.file)
        end
        fontsLoaded = true
    end
end

-- ฟังก์ชันสำหรับดึง fontId โดยใช้ชื่อฟอนต์
function GetFontId(fontName)
    return Fonts[fontName] or 0 -- คืนค่า fontId หรือ 0 ถ้าไม่พบฟอนต์
end

-- Export ฟังก์ชัน GetFontId สำหรับใช้งานนอกสคริปต์นี้
exports("GetFontId", GetFontId)

-- ใช้ CreateThread เพื่อโหลดฟอนต์เมื่อสคริปต์ client-side โหลดขึ้นมา
CreateThread(function()
    print('CustomFont is loaded!')
    LoadCustomFonts()
end)

-- ใช้ Event เพื่อโหลดฟอนต์ซ้ำเมื่อผู้เล่นโหลดเสร็จสมบูรณ์
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    LoadCustomFonts()
end)