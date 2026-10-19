#!/usr/bin/env python3
"""Convert every lossless .webp under a folder back to .png (pixel-identical). See WEBP-TO-PNG.md.

  python webp_to_png.py [folder] [--delete-webp]

folder defaults to the hd3x folder next to this script.
"""
import os
import sys

from PIL import Image

Image.MAX_IMAGE_PIXELS = None


def main():
    args = [a for a in sys.argv[1:] if not a.startswith('--')]
    delete = '--delete-webp' in sys.argv
    root = args[0] if args else os.path.join(os.path.dirname(os.path.abspath(__file__)), 'hd3x')
    count = 0
    for folder, _, files in os.walk(root):
        for name in sorted(files):
            if not name.lower().endswith('.webp'):
                continue
            src = os.path.join(folder, name)
            dst = src[:-5] + '.png'
            im = Image.open(src)
            im.save(dst, 'PNG')
            if delete:
                os.remove(src)
            count += 1
            print(dst)
    print('converted %d files' % count)


if __name__ == '__main__':
    main()
