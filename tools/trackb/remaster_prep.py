#!/usr/bin/env python3
"""Remaster texture preparation (branch track-b/remaster, REMASTER.md).

  py -3 tools/trackb/remaster_prep.py downscale [--src <upscaled dir>] [--orig <original dir>] [--out <dir>] [--scale 2]

Turns the upscaler's output (any integer or non-integer factor, any file-name suffix) into textures at exactly
<scale> x the original size, ready for the pack step:

  * each upscaled file is matched to its original by name (the longest original name that the upscaled name starts with,
    followed by a separator), so suffixes such as "-wonder 3.5-6x" are dropped;
  * resampling is done on premultiplied alpha (no dark or bright fringes at transparent edges); when the upscaled size is
    an exact multiple of the target (6x -> 2x is 3:1) a box average is used, which also averages away upscaler grain,
    otherwise Lanczos;
  * hard cut-out alpha stays hard: when the original alpha is (almost) only 0 and 255, the result is thresholded at 128;
  * data maps (lightmaps, alpha masks, the debug alpha test) are taken from the ORIGINAL with Lanczos instead of the AI
    output, because an upscaler invents detail in data that is not a picture;
  * a file is skipped when its output is newer than its input, so the command can be re-run while the upscaler works;
  * an original the upscaler skipped gets a Lanczos 2x copy, so the output always covers every texture.

Writes <out>/<sub>/<original name>.png for <sub> in 3d and res, and <out>/prep_log.csv.
"""
import argparse
import csv
import os
import re
import sys

import numpy as np
from PIL import Image

HOME = os.path.expanduser('~')
SRC = os.path.join(HOME, 'Documents', 'DH2-textures', 'upscaled')
ORIG = os.path.join(HOME, 'Documents', 'DH2-textures', 'original')
OUT = os.path.join(HOME, 'Documents', 'DH2-remaster', 'hd2x')
UPSCALER_TAG = re.compile(r'(wonder|upscal|esrgan|gigapixel|topaz|\d(\.\d+)?x)', re.I)
DATA_MAP = re.compile(r'(lightmap|_alpha$|^_debug)', re.I)


def premul_resize(im, size, flt):
    a = np.asarray(im.convert('RGBA')).astype(np.float32) / 255.0
    alpha = a[..., 3:4]
    pm = np.dstack([a[..., :3] * alpha, alpha])
    small = Image.fromarray((pm * 255.0 + 0.5).astype(np.uint8), 'RGBA').resize(size, flt)
    b = np.asarray(small).astype(np.float32) / 255.0
    al = b[..., 3:4]
    rgb = np.where(al > 0, b[..., :3] / np.maximum(al, 1e-6), 0.0)
    return np.dstack([np.clip(rgb, 0.0, 1.0), al])


def is_data_map(name, oim):
    """Lightmaps and the debug test always; an "_alpha" texture only when it is a grey mask (env_darkwoods_alpha is colour
    artwork, the opaque half of the Darkwoods atlas, and takes the upscaler's output like any picture)."""
    if not DATA_MAP.search(name):
        return False
    if name.lower().endswith('_alpha'):
        a = np.asarray(oim.convert('RGB')).astype(np.float32)
        return float((a.max(2) - a.min(2)).mean()) < 8.0
    return True


def binary_alpha(im):
    a = np.asarray(im.convert('RGBA'))[..., 3]
    hard = np.count_nonzero((a == 0) | (a == 255))
    return hard >= 0.995 * a.size and a.min() == 0


def match_original(name, originals):
    stem = os.path.splitext(name)[0]
    best = None
    for o in originals:
        if stem == o or (stem.startswith(o) and len(stem) > len(o) and stem[len(o)] in '-_ .'):
            if best is None or len(o) > len(best):
                best = o
    return best


def downscale(src, orig, out, scale):
    rows = []
    Image.MAX_IMAGE_PIXELS = None  # 6x outputs reach 150 M pixels
    originals = {sub: {os.path.splitext(f)[0]: f for f in os.listdir(os.path.join(orig, sub)) if f.lower().endswith('.png')}
                 for sub in ('3d', 'res') if os.path.isdir(os.path.join(orig, sub))}
    # an upscaler output saved next to the originals ("<name>-wonder 3.5-6x.png") is not an original: drop every name that
    # is another original's name plus a suffix
    for sub, table in originals.items():
        def upscaled_copy(n):
            base = match_original(n, {k: v for k, v in table.items() if k != n})
            return base is not None and UPSCALER_TAG.search(n[len(base):]) is not None
        for name in [n for n in table if upscaled_copy(n)]:
            print('ignoring %s/%s (an upscaled copy among the originals)' % (sub, table.pop(name)))
    for sub in ('3d', 'res'):
        sdir = os.path.join(src, sub)
        if not os.path.isdir(sdir):
            continue
        for f in sorted(os.listdir(sdir)):
            if not f.lower().endswith('.png'):
                continue
            # the file's own folder first, then the other one (an upscaler may write everything into one folder)
            osub = None
            for cand in [sub] + [x for x in originals if x != sub]:
                o = match_original(f, originals.get(cand, {}))
                if o is not None:
                    osub = cand
                    break
            if osub is None:
                rows.append([sub, f, '', 'no original', '', ''])
                continue
            os.makedirs(os.path.join(out, osub), exist_ok=True)
            spath = os.path.join(sdir, f)
            opath = os.path.join(orig, osub, originals[osub][o])
            dpath = os.path.join(out, osub, o + '.png')
            if os.path.exists(dpath) and os.path.getmtime(dpath) >= os.path.getmtime(spath):
                rows.append([sub, f, o, 'up to date', '', ''])
                continue
            oim = Image.open(opath)
            target = (oim.width * scale, oim.height * scale)
            if is_data_map(o, oim):
                res = premul_resize(oim, target, Image.LANCZOS)
                how = 'data map: original, lanczos'
            else:
                uim = Image.open(spath)
                kx, ky = uim.width / target[0], uim.height / target[1]
                exact = kx == ky and kx == int(kx) and kx >= 1
                res = premul_resize(uim, target, Image.BOX if exact else Image.LANCZOS)
                how = 'upscaled %.2fx, %s' % (uim.width / oim.width, 'box %d:1' % kx if exact else 'lanczos')
            if 'A' in oim.mode and binary_alpha(oim):
                res[..., 3] = (res[..., 3] >= 0.5).astype(np.float32)
                how += ', hard alpha'
            Image.fromarray((res * 255.0 + 0.5).astype(np.uint8), 'RGBA').save(dpath, optimize=False)
            rows.append([sub, f, o, how, '%dx%d' % oim.size, '%dx%d' % target])
            print('%-40s %s' % (o, how), flush=True)
    # every original gets a 2x file: one the upscaler skipped (tiny icons, 1-pixel gradient strips) is enlarged with Lanczos
    for sub, table in originals.items():
        os.makedirs(os.path.join(out, sub), exist_ok=True)
        for name, fname in sorted(table.items()):
            dpath = os.path.join(out, sub, name + '.png')
            if os.path.exists(dpath):
                continue
            oim = Image.open(os.path.join(orig, sub, fname))
            target = (oim.width * scale, oim.height * scale)
            res = premul_resize(oim, target, Image.LANCZOS)
            how = 'not upscaled: original, lanczos'
            if 'A' in oim.mode and binary_alpha(oim):
                res[..., 3] = (res[..., 3] >= 0.5).astype(np.float32)
                how += ', hard alpha'
            Image.fromarray((res * 255.0 + 0.5).astype(np.uint8), 'RGBA').save(dpath)
            rows.append([sub, '', name, how, '%dx%d' % oim.size, '%dx%d' % target])
            print('%-40s %s' % (name, how), flush=True)
    with open(os.path.join(out, 'prep_log.csv'), 'w', newline='', encoding='utf-8') as fh:
        w = csv.writer(fh)
        w.writerow(['folder', 'upscaled file', 'original', 'method', 'original size', 'output size'])
        w.writerows(rows)
    done = sum(1 for r in rows if r[3] not in ('no original', 'up to date'))
    print('wrote', done, 'textures;', sum(1 for r in rows if r[3] == 'up to date'), 'up to date;',
          sum(1 for r in rows if r[3] == 'no original'), 'without an original ->', out)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('cmd', choices=['downscale'])
    ap.add_argument('--src', default=SRC)
    ap.add_argument('--orig', default=ORIG)
    ap.add_argument('--out', default=OUT)
    ap.add_argument('--scale', type=int, default=2)
    a = ap.parse_args()
    downscale(a.src, a.orig, a.out, a.scale)


if __name__ == '__main__':
    sys.exit(main())
