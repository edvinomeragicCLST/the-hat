# Publication preparation review

Reviewed on **22 November 2026**. Local preparation is complete; the permission and testing concerns below still need review before a public release.

## Git and instructions

- No applicable `AGENTS.md` was found in the project, its subdirectories, or its ancestor directories.
- This project folder was not a Git working tree. No `.git` directory/file was found inside it, and `git rev-parse`, `git status`, and `git remote -v` reported that it was not a repository. No local remotes or history exist here to inspect.
- No source repository was initialized. Nothing was staged, committed, pushed, deployed, or removed. No remote was created or replaced, and no history was rewritten.
- The global Git author name suggests `edvinomeragicCLST`, but a Git author name does not establish the signed-in GitHub account. A read-only, unauthenticated request for `https://api.github.com/repos/edvinomeragicCLST/the-hat` returned **404**. This does **not** rule out a private repository, another owner, or another account.
- GitHub CLI was unavailable. The GitHub connector was not connected, and browser access failed, so authenticated repository discovery remains unavailable. Confirm the account and any existing `the-hat` repository before choosing a remote or initializing a source repository. Preserve any existing remote history in subsequent work.
- Use the **TheHat project root containing `project.godot` and this README** for subsequent Git commands, not `scenes/`, `Free/`, or the ignored check copy. The exact machine path is supplied in the accompanying completion report.

## Changes made

| File | Change |
| --- | --- |
| `.gitignore` | Godot 4.2 caches, editor/OS state, signing material, environment secrets, export directories/binaries, and local validation artifacts are excluded. Source `.import` metadata and future `.uid` files remain eligible for version control. Reviewed `export_presets.cfg` files remain eligible too. |
| `project.godot` | Display name changed from `Kemo` to `The Hat`; version feature, renderer, input and physics settings are preserved. |
| `scenes/Main menu.tscn` | Replaced a reference to the absent `cooltext455903840003462.png` with a native `The Hat` text label using the existing title area. Scene UID and menu behavior are preserved. |
| `scenes/trophy.gd` | Deferred scene replacement until after the physics callback. This removes a runtime collision-object-removal error; the existing Level 2 destination is unchanged. |
| `README.md` | Added academic context, source-verified gameplay and controls, version requirements, opening/running instructions, structure, credits and limitations. |
| `ASSET_CREDITS.md` | Added evidence, upstream references, attribution uncertainties and personal-information review. No project-wide license was invented. |

All **413 original files** remain on disk. SHA-256 comparison found only the four existing files above changed. All source artwork, scenes other than the menu, and all **198 original `.import` sidecars** were preserved. The original `.gitattributes` line-ending policy remains unchanged. No existing standalone credits or license text was present; embedded asset notices were retained.

## Large files and publication scope

`scenes/MothCompleted1.25.obj` is **296,131,786 bytes (282.41 MiB)**. Its header identifies a ZBrush 2023 export, not an author or license. No script, scene or project setting references it. Only its own import sidecar references the model.

The model and that sidecar are explicitly ignored, retained locally, and excluded from the clean publication check copy. Other OBJ files are not broadly ignored. This avoids adding an unrelated asset with unclear rights and exceeding [GitHub's 100 MiB regular-file limit](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-large-files-on-github). If it is intentionally published later, first establish permission and configure Git LFS before adding it. No LFS tracking or repository configuration was changed here.

No other source file exceeds 1 MiB. After excluding caches, OS metadata and this model, the remaining publication content is below 1 MiB in total. Keep future exported archives, HTML/WASM builds and executable bundles under an ignored `exports/` directory. `.gitignore` is not an archive filter or a Godot import filter: manually zipping the original folder could still include the model, local caches or private files.

## Credentials and personal information

- No `export_presets.cfg`, `.godot/export_credentials.cfg`, signing keys, environment-secret files, or other export configuration was present. No private export values needed migration or backup.
- The original source/configuration text scan found no credential-like values or private absolute machine paths. Local editor metadata does contain an old macOS editor path and scene history, all under ignored `.godot/`.
- In [Godot 4.2](https://docs.godotengine.org/en/4.2/tutorials/export/exporting_projects.html), confidential export options belong in `.godot/export_credentials.cfg`. Keep them there or in ignored local secret/signing files; review future shared presets for private paths and values before adding them.
- PNG metadata inspection found no text chunks. The hat PNG contains a 14-byte empty EXIF/TIFF directory with no entries. This does not inspect text drawn into image pixels: `Free/Hello.png` visibly includes the asset creator's public contact email, retained as an attribution notice.
- The dean-inspired character and `lemes/` directory identify personal context. Confirm permission for public use of the likeness and academic story. No additional real name, private contact details or university identity was added.

## Validation results

The source declares **Godot 4.2**, standard GDScript, with the Mobile renderer. The original 4.2 patch version is not recorded. The only editor found locally was **Godot 4.7.2.stable.official.ed1daf0bf**. Interaction checks ran in ignored `.publication-local/godot-check/`; the final clean import ran in a second copy, `.publication-local/godot-import-final/`, with a fresh `.godot/` cache, no original cached imports, and no moth model. Any newer-version UID files or import changes remain confined to these copies.

| Check | Result |
| --- | --- |
| Clean headless editor import | Passed, exit 0; all 195 available PNG/SVG assets imported. No project parse/import errors in the final run. |
| Load all six scenes and their scripts | Passed. |
| Default main-scene startup, 120 frames | Passed, exit 0, no errors or warnings. |
| Menu title and Play action | Passed; Play opens Level 1. Quit signal wiring was verified; actual UI clicking was not tested. |
| Input action configuration | Left, Right and Jump exist; source bindings verified as physical A/D/W. |
| Movement and jump | Actual player scene lands, moves both directions, faces correctly and jumps on a temporary collision floor. Input actions were simulated headlessly. |
| Cherry interaction | Teleporting the player onto a cherry removed it, added one point and updated the score label. |
| Hat interactions | Teleporting onto the Level 1 hat opens Level 2 and resets points. The Level 2 hat reloads Level 2, confirming the documented existing limitation. No physics-callback error remained after the deferred transition fix. |
| Collectible counts | 18 in Level 1; 13 in Level 2. |
| Active resource paths | All references from project/scenes/scripts exist with exact path case, including checks relevant to Linux clones. |
| Scene resource UIDs | No mismatches against source `.import` or scene UIDs. |
| Git ignore behavior | 30 cases passed using Git's actual ignore matcher and temporary Git metadata outside the source project. Caches, credentials, builds, model and local checks are excluded; required assets, `.import`, `.uid`, source and export presets are eligible. No staging was involved. |
| Original-file preservation | 413 baseline files checked by SHA-256; no files missing; only the four intentional existing-file edits differ. |

Initial sandboxed checks encountered certificate-store/user-directory/editor-settings access errors. The final import and runtime checks were rerun with normal access and passed without those environmental errors. Local logs and the temporary interaction-check script are retained under ignored `.publication-local/` for review; they are not game features or publication content.

## Remaining concerns

1. **Asset and likeness permissions:** confirm the exact Pixel Adventure source for `Free/`, the origin and adaptation rights of `lemes/`, and consent for public use of the dean-inspired character/context. The ignored moth model's provenance also remains unknown. See [ASSET_CREDITS.md](ASSET_CREDITS.md).
2. **License decision:** no project-wide license was supplied or added. Decide whether and how to license the original code, independently of third-party artwork. The existing Godot logo icon also needs attribution/usage review before shipping a branded build.
3. **Version and graphics testing:** Godot 4.2.x itself was unavailable locally. Its runtime compatibility has not been executed. No graphical/Vulkan validation, keyboard UI test, exported build, or complete playthrough was performed. Headless interactions used a temporary floor and teleports; they do not prove every platform or collectible is reachable.
4. **Prototype behavior:** Level 2's hat restarts Level 2 because `target_level` is unused. Falling has no death/respawn behavior, and there is no final win screen or in-game restart. These behaviors were documented without gameplay redesign.
5. **Orphan metadata:** source images for `cooltext455903840003462.png` and `Free/Main Characters/Ninja Frog/Run (32x32).png` are absent. Their original `.import` sidecars remain preserved. Neither is referenced by the active game after the menu fix; do not claim that those original images were recovered.
6. **GitHub destination:** authenticated account/repository discovery is still needed. The public 404 is not evidence that a repository should be created or that an existing one can be replaced.
