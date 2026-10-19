# The 3x textures are lossless WebP

`hd3x/3d/` and `hd3x/res/` hold the 363 upscaled master textures as **lossless** WebP instead of PNG: a third smaller
(1.44 GB → 0.97 GB) with every pixel identical, including the alpha channel and the colour under fully transparent
pixels. They are the masters only; the game itself reads the GPU textures in `files/data/hd/` and never these files.

The texture tools (`tools/trackb/remaster_prep.py`, `tools/trackb/textures.py`, `tools/trackb/remaster_normals.py`)
read PNG, so convert the masters back before rebuilding the GPU layer or the normal maps.

## Convert back to PNG

Needs Python 3 with Pillow (`pip install pillow`). From this folder:

```
python webp_to_png.py
```

This writes a `.png` next to every `.webp` in `hd3x/`. Add `--delete-webp` to remove the WebP files afterwards, or pass
another folder as the first argument.

Without Python, Google's `dwebp` tool (libwebp) does the same per file:

```
dwebp texture.webp -o texture.png
```

## Convert PNG to lossless WebP again

```python
from PIL import Image
Image.open('texture.png').save('texture.webp', 'WEBP', lossless=True, quality=100, method=4, exact=True)
```

`exact=True` matters: without it the encoder may change the colour of fully transparent pixels, which the tools use when
they resize textures.
