# Asset credits and permission review

No prior README, license text, or standalone credits file was found. Existing artwork and embedded notices have been preserved. This document records evidence and uncertainty; it does not grant rights to any asset or apply a license to the game.

| Files | Attribution / evidence | Publication status |
| --- | --- | --- |
| `Free/` PNG artwork | Appears to be **Pixel Adventure by Pixel Frog**, based on the character/terrain filenames and the creator contact embedded in `Free/Hello.png`. [Publisher's pack page](https://pixelfrog-assets.itch.io/pixel-adventure-1) lists CC0, including redistribution and modification. | Likely source identified; confirm this local copy came from that pack and that all bundled files are covered. Preserve `Free/Hello.png` and other supplied notices. Pack contents do not imply corresponding game features. |
| `lemes/` character and hat PNGs | Used by the player and trophy scenes. No artist, base-sprite source, adaptation permission, or license is recorded locally. | Confirm the artist and any base art permissions before public redistribution. The character is inspired by a real university dean; confirm permission to use the likeness and academic context publicly. |
| `scenes/MothCompleted1.25.obj` | Header identifies ZBrush 2023 as the exporting software, which is not an author or license statement. No game resource references the model. | Unknown provenance. Retained locally and ignored with its `.import` sidecar. Resolve rights before any future publication. |
| `cooltext455903840003462.png` (missing) | Only an orphan import sidecar remains. The filename alone does not establish its creator, source, font rights, or license. | No image is available to distribute. The active menu now uses a native text label. Preserve the sidecar locally in case the original is recovered and its permissions can be reviewed. |
| `icon.svg` | Godot Engine logo/project icon, credited to the Godot Engine contributors. The [Godot press kit](https://godotengine.org/press/) lists the logo under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/). No icon edits were made during publication preparation. | Retained as the existing default engine icon. Review the upstream usage guidance before shipping a branded game build; it says the logo should represent Godot rather than your own project. It does not imply Godot endorsement. |
| Scripts and scenes | Academic project by the project author; no project-wide license supplied. | No license has been invented or added. The author must choose any future license, separately from third-party asset permissions. |

The publisher's [CC0 reference](https://creativecommons.org/publicdomain/zero/1.0/) describes that dedication. Do not extend the Pixel Adventure license to `lemes/`, the moth model, the missing title graphic, or unrelated project files without evidence.

## Personal information

- `Free/Hello.png` contains the asset creator's public contact email as part of the supplied notice. It has been retained for attribution.
- The character likeness and the `lemes/` folder name may identify the inspiration. Keep the real-person context under review before public release; no additional real name, university name, or private contact details have been added here.
- The original project display name was `Kemo`; publication preparation changes the display name to `The Hat` without renaming the source folders.
- The ignored `.godot/editor/` files contain machine-local editor paths and history. `.DS_Store` files are also ignored. No signing credentials, export presets, or private absolute paths were found in the original publishable text files.

Upstream references were checked on 22 November 2026. Local provenance remains a separate question from the license advertised by an upstream publisher.
