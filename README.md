# Custom Font Loader for FiveM

This resource allows you to load custom fonts in your FiveM server using `.gfx` files. You can define multiple fonts in the `config.lua` file and use them throughout your scripts by retrieving the `fontId` associated with each font.

## Features

- Load custom fonts from `.gfx` files in the `stream/` directory.
- Easy to configure in `config.lua` with the font file names and custom names.
- Exported function to retrieve `fontId` for use in other scripts.
- Fonts will load when the player is fully loaded in the server.

## Installation

1. **Download** or **clone** this repository to your server's `resources` directory.
   
2. **Add the resource to your `server.cfg`:**

   ```bash
   ensure lscrp-customfonts

## Usage

You can use the `GetFontId` export function to retrieve the fontId for your custom fonts in other client-side scripts.

**Example Usage**
   ```bash
   -- Get the fontId for a custom font
   local fontId = exports['lscrp-customfonts']:GetFontId('MyCustomFont')
   
   -- Use the fontId to draw text
   SetTextFont(fontId)
   SetTextScale(1.0, 1.0)
   SetTextColour(255, 255, 255, 255)
   SetTextOutline()
   BeginTextCommandDisplayText("STRING")
   AddTextComponentSubstringPlayerName("Hello with Custom Font!")
   EndTextCommandDisplayText(0.5, 0.5)
