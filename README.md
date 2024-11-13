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
