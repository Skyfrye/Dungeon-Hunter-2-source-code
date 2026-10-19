#!/usr/bin/env python3
"""Port UI icons in the game's style (Track B, not in the original data): the +/- buttons of the HUD customise page
(per-element size, HUDControls) drawn as bronze medallions with a gilt glyph, matching the HUD's round buttons.

  py -3 tools/trackb/hud_icons.py            -> port/android-trackb/app/src/main/assets/dh2port/hud_scale_{plus,minus}.tgp

The game loads them through its own TGA loader (glitch CImageLoaderTGA, the splash path) from data/port/ in the files dir; DataSetup copies
the dh2port assets there at start, the host runner takes them from the --data folder. 128x128 RGBA, drawn at 4x and
downsampled so the rings are smooth on the Fold.
"""
import os
from PIL import Image, ImageDraw, ImageFilter

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', '..'))
OUT = os.path.join(ROOT, 'port', 'android-trackb', 'app', 'src', 'main', 'assets', 'dh2port')
S = 128
F = 4  # supersampling


def lerp(a, b, t):
    return tuple(int(a[i] + (b[i] - a[i]) * t) for i in range(len(a)))


def radial(size, stops, centre=(0.5, 0.5)):
    """A radial gradient image: stops = [(radius_fraction, rgba), ...]."""
    img = Image.new('RGBA', (size, size), (0, 0, 0, 0))
    px = img.load()
    cx, cy = centre[0] * size, centre[1] * size
    rmax = size / 2.0
    for y in range(size):
        for x in range(size):
            d = (((x + 0.5 - cx) ** 2 + (y + 0.5 - cy) ** 2) ** 0.5) / rmax
            if d > 1.0:
                continue
            c = stops[-1][1]
            for (r0, c0), (r1, c1) in zip(stops, stops[1:]):
                if r0 <= d <= r1:
                    c = lerp(c0, c1, (d - r0) / max(r1 - r0, 1e-6))
                    break
            px[x, y] = c
    return img


def medallion(glyph):
    size = S * F
    img = Image.new('RGBA', (size, size), (0, 0, 0, 0))
    # drop shadow
    sh = Image.new('RGBA', (size, size), (0, 0, 0, 0))
    ImageDraw.Draw(sh).ellipse([size * 0.08, size * 0.12, size * 0.92, size * 0.96], fill=(0, 0, 0, 150))
    sh = sh.filter(ImageFilter.GaussianBlur(size * 0.03))
    img.alpha_composite(sh)
    # bronze ring: dark rim, bright bevel, bronze body
    ring = radial(size, [(0.0, (198, 154, 78, 255)), (0.62, (198, 154, 78, 255)), (0.72, (122, 90, 42, 255)),
                         (0.86, (226, 192, 122, 255)), (0.95, (74, 56, 34, 255)), (1.0, (20, 14, 8, 255))])
    mask = Image.new('L', (size, size), 0)
    ImageDraw.Draw(mask).ellipse([size * 0.06, size * 0.06, size * 0.94, size * 0.94], fill=255)
    img.paste(ring, (0, 0), mask)
    # leather face
    face = radial(size, [(0.0, (58, 46, 32, 255)), (0.5, (38, 30, 21, 255)), (1.0, (18, 13, 9, 255))], centre=(0.42, 0.38))
    fmask = Image.new('L', (size, size), 0)
    ImageDraw.Draw(fmask).ellipse([size * 0.19, size * 0.19, size * 0.81, size * 0.81], fill=255)
    img.paste(face, (0, 0), fmask)
    # inner gilt hairline
    d = ImageDraw.Draw(img)
    d.ellipse([size * 0.19, size * 0.19, size * 0.81, size * 0.81], outline=(226, 192, 122, 255), width=int(size * 0.012))
    d.ellipse([size * 0.215, size * 0.215, size * 0.785, size * 0.785], outline=(40, 28, 14, 255), width=int(size * 0.008))
    # glyph with shadow
    w = size * 0.075
    cx = cy = size * 0.5
    arm = size * 0.17
    for off, col in ((size * 0.012, (40, 28, 14, 255)), (0, (232, 200, 119, 255))):
        d.rounded_rectangle([cx - arm + off, cy - w / 2 + off, cx + arm + off, cy + w / 2 + off], radius=w / 2, fill=col)
        if glyph == '+':
            d.rounded_rectangle([cx - w / 2 + off, cy - arm + off, cx + w / 2 + off, cy + arm + off], radius=w / 2, fill=col)
    # specular
    spec = Image.new('RGBA', (size, size), (0, 0, 0, 0))
    ImageDraw.Draw(spec).ellipse([size * 0.26, size * 0.2, size * 0.6, size * 0.4], fill=(255, 240, 200, 60))
    spec = spec.filter(ImageFilter.GaussianBlur(size * 0.03))
    img.alpha_composite(spec)
    return img.resize((S, S), Image.LANCZOS)


def main():
    os.makedirs(OUT, exist_ok=True)
    for name, glyph in (('hud_scale_plus', '+'), ('hud_scale_minus', '-')):
        img = medallion(glyph)
        # 32-bit uncompressed TGA: the engine's TGA loader is the one the splash screens exercise on every device; its PNG
        # loader (libpng 1.2.32 via CImageLoaderPng) crashed in png_get_IHDR/png_error on the Fold (2026-10-17 report).
        p = os.path.join(OUT, name + '.tgp')  # a TGA; the extension dodges the game's .tga name redirect
        # Bottom-left origin (no descriptor flip bit) and the TGA 2.0 footer: the engine's loader accepts a file only when the
        # 26-byte footer ends in "TRUEVISION-XFILE." (CImageLoaderTGA::isALoadableFileFormat).
        img.transpose(Image.FLIP_TOP_BOTTOM).save(p, format='TGA', orientation=1)
        with open(p, 'ab') as fh:
            fh.write(bytes(8) + b'TRUEVISION-XFILE.' + bytes(1))
        print(p, os.path.getsize(p), 'bytes')


if __name__ == '__main__':
    main()
