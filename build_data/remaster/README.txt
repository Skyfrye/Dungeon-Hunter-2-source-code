build_data/remaster - the remaster's art (branch track-b/remaster, REMASTER.md)

hd3x/3d, hd3x/res   every texture at 3x its original size, from the Topaz Gigapixel upscale (Documents/DH2-textures/upscaled,
                    "-wonder 3.5-6x"), made by:  py -3 tools/trackb/remaster_prep.py downscale --scale 3 --out <hd3x>
                    prep_log.csv lists the method per texture (upscaled 3x as is, 6x box-averaged to 3x, data maps such as
                    lightmaps and grey alpha masks enlarged from the original with Lanczos instead of the AI output).
normals             <texture>_n.png tangent-space normal maps (OpenGL green-up) for the 47 lit textures, from StableNormal
                    plus the cleanup in tools/trackb/remaster_normals.py (generate, clean).
files/data          the game-ready HD layer, laid out like the game's files dir (copy it there, or onto the phone at
                    /sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files/):
                      data/hd/3d/textures/*.tga   ETC2 (+ EAC alpha) with full mip chains, read before data/3d/textures
                      data/port/remaster_shaders.zip  the remaster shaders (tools/trackb/remaster_shaders.py)
                    Rebuild with:  py -3 tools/trackb/textures.py pack --folder <DH2-textures> --out <data copy> --layer hd
                                   --gpu etc2 --upscaled build_data/remaster/hd3x
                                   py -3 tools/trackb/remaster_normals.py pack --data <data copy>
