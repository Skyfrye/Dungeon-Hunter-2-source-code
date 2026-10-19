#!/usr/bin/env python3
"""Texture upscale pipeline (improvements work; the game data never changes in the repository).

  py -3 tools/trackb/textures.py extract --data <files dir> --out <folder>
      Decodes every data/3d/textures/*.tga (PVRTC containers, via build/own-v2b/host-runner/dh2_texconv.exe = the game's own
      decoder) and copies res/*.png into <folder>/original/{3d,res}/ as PNG, with manifest.csv (name, source, format, size,
      alpha) and a README for the upscaler. Hand <folder>/original to the upscaler; put results in <folder>/upscaled with the
      SAME file names (PNG, RGBA, any power-of-two size up to 2048).

  py -3 tools/trackb/textures.py pack --folder <folder> --out <files dir of a data copy>
      (the switch, step 2) Converts <folder>/upscaled/3d/*.png back into the game's container (uncompressed RGBA8888 PVR,
      format 0x12, the loader's native path, no decode at load) under data/3d/textures/, and copies upscaled/res/*.png over res/.
      Writes <out>/dh2_textures_manifest.txt with the SHA-256 of every replaced file.
"""
import argparse
import csv
import hashlib
import os
import shutil
import struct
import subprocess
import sys

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', '..'))
TEXCONV = os.path.join(ROOT, 'build', 'own-v2b', 'host-runner', 'dh2_texconv.exe')
ETC2 = next((p for p in (os.path.join(ROOT, 'build', 'rm', 'host-runner', 'dh2_etc2.exe'),
                         os.path.join(ROOT, 'build', 'own-v2b', 'host-runner', 'dh2_etc2.exe')) if os.path.exists(p)),
            os.path.join(ROOT, 'build', 'rm', 'host-runner', 'dh2_etc2.exe'))
PVR_ETC2_RGB, PVR_ETC2_RGBA, PVR_MIPMAPS = 96, 97, 0x100  # port codes in the PVR v2 container (CImageLoaderPVR), mip flag


def pot_or_3pot(n):
    """n = 2^k or 3 * 2^k."""
    if n % 3 == 0:
        n //= 3
    return n > 0 and (n & (n - 1)) == 0


def mip_chain(im):
    """Every level down to 1x1, box-filtered on premultiplied alpha (no dark fringes at cut-out edges)."""
    import numpy as np
    from PIL import Image
    levels = [im]
    a = np.asarray(im).astype(np.float32) / 255.0
    pm = np.dstack([a[..., :3] * a[..., 3:4], a[..., 3:4]])
    while pm.shape[0] > 1 or pm.shape[1] > 1:
        h, w = pm.shape[:2]
        h2, w2 = max(1, h // 2), max(1, w // 2)
        pm = pm.reshape(h2, h // h2, w2, w // w2, 4).mean(axis=(1, 3))
        al = pm[..., 3:4]
        rgb = np.where(al > 0, pm[..., :3] / np.maximum(al, 1e-6), 0.0)
        levels.append(Image.fromarray((np.dstack([np.clip(rgb, 0, 1), al]) * 255.0 + 0.5).astype(np.uint8), 'RGBA'))
    return levels


def etc2_container(im, tmp):
    """BTEX + PVR v2 header + the ETC2 mip chain (all levels down to 1x1)."""
    alpha = im.getchannel('A').getextrema()[0] < 255
    data = b''
    for i, level in enumerate(mip_chain(im)):
        raw, blocks = os.path.join(tmp, 'level.rgba'), os.path.join(tmp, 'level.etc')
        with open(raw, 'wb') as fh:
            fh.write(level.tobytes())
        r = subprocess.run([ETC2, 'encode', raw, str(level.width), str(level.height), 'rgba' if alpha else 'rgb', blocks],
                           capture_output=True, text=True)
        if r.returncode != 0:
            raise RuntimeError('dh2_etc2 failed: ' + r.stderr.strip())
        if i == 0:
            psnr = r.stdout.strip()
        data += open(blocks, 'rb').read()
    w, h = im.size
    count = max(w, h).bit_length() - 1  # levels below the top one
    flags = (PVR_ETC2_RGBA if alpha else PVR_ETC2_RGB) | PVR_MIPMAPS
    hdr = struct.pack('<13I', 52, h, w, count, flags, len(data), 8 if alpha else 4, 0, 0, 0, 0, 0x21525650, 1)
    return b'BTEXpvr\0' + hdr + data, psnr


def pvr_info(path):
    with open(path, 'rb') as fh:
        b = fh.read(64)
    if b[:4] != b'BTEX':
        return None
    h = struct.unpack('<13I', b[8:60])
    return {'height': h[1], 'width': h[2], 'mips': h[3], 'fmt': h[4] & 0xff}


def extract(data, out):
    from PIL import Image
    orig = os.path.join(out, 'original')
    os.makedirs(os.path.join(orig, '3d'), exist_ok=True)
    os.makedirs(os.path.join(orig, 'res'), exist_ok=True)
    tmp = os.path.join(out, '_tmp')
    os.makedirs(tmp, exist_ok=True)
    rows = []
    texdir = os.path.join(data, 'data', '3d', 'textures')
    names = {'0x18': 'PVRTC 2bpp', '0x19': 'PVRTC 4bpp', '0x12': 'RGBA8888', '0x10': 'RGB565', '0x11': 'RGBA4444'}
    for f in sorted(os.listdir(texdir)):
        if not f.lower().endswith('.tga'):
            continue
        src = os.path.join(texdir, f)
        info = pvr_info(src)
        dec = os.path.join(tmp, f)
        r = subprocess.run([TEXCONV, 'decode', src, dec], capture_output=True, text=True)
        if r.returncode != 0:
            print('FAILED', f, r.stderr.strip())
            continue
        im = Image.open(dec).convert('RGBA')
        alpha = im.getchannel('A').getextrema()
        png = os.path.join(orig, '3d', os.path.splitext(f)[0] + '.png')
        im.save(png, optimize=True)
        fmt = names.get('0x%02x' % info['fmt'], 'pvr 0x%02x' % info['fmt']) if info else 'TGA 32-bit'
        rows.append(['3d/' + os.path.basename(png), 'data/3d/textures/' + f, fmt, '%dx%d' % im.size, 'yes' if alpha[0] < 255 else 'no'])
    resdir = os.path.join(data, 'res')
    for f in sorted(os.listdir(resdir)):
        if f.lower().endswith('.png'):
            src = os.path.join(resdir, f)
            dst = os.path.join(orig, 'res', f)
            shutil.copyfile(src, dst)
            im = Image.open(src)
            rows.append(['res/' + f, 'res/' + f, 'PNG ' + im.mode, '%dx%d' % im.size, 'yes' if 'A' in im.mode else 'no'])
    shutil.rmtree(tmp, ignore_errors=True)
    with open(os.path.join(out, 'manifest.csv'), 'w', newline='', encoding='utf-8') as fh:
        w = csv.writer(fh)
        w.writerow(['file', 'game_path', 'format', 'size', 'alpha'])
        w.writerows(rows)
    with open(os.path.join(out, 'README.txt'), 'w', encoding='utf-8') as fh:
        fh.write(README)
    print('extracted', len(rows), 'images to', orig)


README = """Dungeon Hunter 2 textures for upscaling
========================================

original/3d/   242 world/character/UI textures (decoded from the game's PVRTC containers; what the GPU shows in game)
original/res/  121 PNGs the Java side uses (loading / splash / intro)
manifest.csv   file, game path, original format, size, has alpha

What to hand back (folder "upscaled", same layout, SAME file names):
  upscaled/3d/<name>.png   RGBA PNG. Keep the alpha channel exactly (it is cut-out / glow / blend data), keep the image
                           square-tiling where the original tiles (walls, floors, water, caustics, grass). Any power-of-two
                           size up to 2048x2048 (originals are 64..1024). Do not crop, pad or recentre.
  upscaled/res/<name>.png  same rules.
Leave out any image you did not upscale; the game keeps the original for it.

Then: py -3 tools/trackb/textures.py pack --folder <this folder> --out <a data copy>  (done on the dev side).
"""


def pack(folder, out, up=None, gpu=None, layer=None):
    from PIL import Image
    up = up or os.path.join(folder, 'upscaled')
    tmp = os.path.join(out, '_etc2_tmp')
    os.makedirs(tmp, exist_ok=True)
    texdir = os.path.join(out, 'data', 'hd', '3d', 'textures') if layer == 'hd' else os.path.join(out, 'data', '3d', 'textures')
    os.makedirs(texdir, exist_ok=True)
    resdir = os.path.join(out, 'res')
    lines = []
    d3 = os.path.join(up, '3d')
    if os.path.isdir(d3):
        for f in sorted(os.listdir(d3)):
            if not f.lower().endswith('.png'):
                continue
            im = Image.open(os.path.join(d3, f)).convert('RGBA')
            w, h = im.size
            # power-of-two originals at an integer scale: 2^k (1x, 2x) or 3 * 2^k (3x); NPOT sizes need ES3 / OES_texture_npot,
            # which every device with ETC2 has. ETC2 needs level 0 in whole 4x4 blocks (the engine checks that).
            if not (pot_or_3pot(w) and pot_or_3pot(h)) or (gpu == 'etc2' and (w % 4 or h % 4)):
                print('SKIP (not 2^k or 3*2^k)', f, im.size)
                continue
            dst = os.path.join(texdir, os.path.splitext(f)[0] + '.tga')
            if gpu == 'etc2':
                blob, psnr = etc2_container(im, tmp)
                with open(dst, 'wb') as fh:
                    fh.write(blob)
                lines.append('%s  %s  %dx%d etc2 %s' % (hashlib.sha256(blob).hexdigest(), os.path.relpath(dst, out).replace(os.sep, '/'), w, h, psnr))
                print('%-44s %s' % (f, psnr), flush=True)
                continue
            data = im.tobytes()
            # PVR v2 header: size, height, width, mips, flags (0x12 = RGBA8888 | 0x... no twiddle), data size, bpp, masks, magic, surfaces
            hdr = struct.pack('<13I', 52, h, w, 0, 0x12, len(data), 32, 0xff, 0xff00, 0xff0000, 0xff000000, 0x21525650, 1)
            with open(dst, 'wb') as fh:
                fh.write(b'BTEXpvr\0' + hdr + data)
            lines.append('%s  %s  %dx%d' % (hashlib.sha256(open(dst, 'rb').read()).hexdigest(), os.path.relpath(dst, out).replace(os.sep, '/'), w, h))
    dr = os.path.join(up, 'res')
    if os.path.isdir(dr):
        for f in sorted(os.listdir(dr)):
            if f.lower().endswith('.png'):
                dst = os.path.join(resdir, f)
                shutil.copyfile(os.path.join(dr, f), dst)
                lines.append('%s  %s' % (hashlib.sha256(open(dst, 'rb').read()).hexdigest(), 'res/' + f))
    with open(os.path.join(out, 'dh2_textures_manifest.txt'), 'w', encoding='utf-8') as fh:
        fh.write('\n'.join(lines) + '\n')
    print('packed', len(lines), 'files into', out)


def main():
    ap = argparse.ArgumentParser()
    sub = ap.add_subparsers(dest='cmd', required=True)
    e = sub.add_parser('extract')
    e.add_argument('--data', required=True)
    e.add_argument('--out', required=True)
    p = sub.add_parser('pack')
    p.add_argument('--folder', required=True)
    p.add_argument('--out', required=True)
    p.add_argument('--layer', choices=['hd'], help='write the 3D textures into data/hd/3d/textures (the HD layer the game reads first) instead of replacing data/3d/textures')
    p.add_argument('--gpu', choices=['etc2'], help='GPU-native texture format with a full mip chain (default: uncompressed RGBA)')
    p.add_argument('--upscaled', help='folder holding 3d/ and res/ (default <folder>/upscaled; e.g. the 2x output of remaster_prep.py)')
    a = ap.parse_args()
    if a.cmd == 'extract':
        extract(a.data, a.out)
    else:
        pack(a.folder, a.out, a.upscaled, a.gpu, a.layer)


if __name__ == '__main__':
    main()
