#!/usr/bin/env python3
"""Menu regression walk for the screen-ratio layouts (TRACK-B.md decision 15, UI12).

  py -3 tools/trackb/ui_walk.py run   [--sizes 1920x1080,2520x1080,2184x1968] [--out build/ui-walk] [--data <files dir>]
  py -3 tools/trackb/ui_walk.py sheet [--out build/ui-walk]
  py -3 tools/trackb/ui_walk.py layouts [--data <files dir>]

`layouts` composes tools/trackb/ui_layouts.body.txt (the rules, written once) into one section per ratio bucket (SECTIONS below)
in port/android-trackb/app/src/main/assets/dh2port/ui_layouts.txt, and copies it into the runner's data copy.

`run` writes one runner script per size (menu taps in fractions of the screen, which is right under the original stretch;
HUD taps per size, the HUD is anchored to the corners), runs build/own-v2b/host-runner/dh2_win_window.exe for each size
with DH2_FIT_DEBUG=1 (each page's clip paths are dumped into game.log once it settles: the authoring list for
ui_layouts.txt), and keeps the screenshots. `sheet` builds build/ui-walk/sheet_<size>.png: for every page the 16:9
reference shot next to the shot at that size.
"""
import argparse
import os
import subprocess
import sys

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', '..'))
RUNNER = os.path.join(ROOT, 'build', 'own-v2b', 'host-runner', 'dh2_win_window.exe')
ANGLE = (os.environ.get("ANDROID_HOME") or os.environ.get("ANDROID_SDK_ROOT") or os.path.expanduser("~/AppData/Local/Android/Sdk")) + r'/emulator/lib64/gles_angle'
DATA = os.path.join(ROOT, 'build', 'own-ui4', 'data', 'files')
REF = '1920x1080'

# Menu points in fractions of the screen (measured on the 16:9 layout; the original stretch keeps them).
M = {
    'title_continue': (0.50, 0.50),
    'start_game': (0.887, 0.328),
    'single_player': (0.887, 0.380),
    'loading_continue': (0.50, 0.50),
    'tab_stats': (0.592, 0.083),
    'tab_inventory': (0.560, 0.083),
    'tab_skills': (0.640, 0.083),
    'tab_faeries': (0.720, 0.083),
    'tab_quest': (0.800, 0.083),
    'tab_map': (0.935, 0.083),
    'cat_defence': (0.596, 0.411),
    'cat_offense': (0.605, 0.411),
    'cat_magic': (0.825, 0.411),
    'inv_first_slot': (0.230, 0.222),
    'pause_options': (0.453, 0.515),
    'options_custom': (0.694, 0.960),
    'back': (0.030, 0.046),
    'detail_back': (0.533, 0.048),
    'skill_first': (0.0713, 0.2474),      # first class skill (drag source)
    'skill_nowhere': (0.7617, 0.7813),    # description panel: no drop slot there
}
# HUD points per size (anchored HUD): portrait (opens the character sheet), pause button.
HUD = {
    '1920x1080': {'portrait': (150, 110), 'pause': (136, 336)},
    '2520x1080': {'portrait': (210, 160), 'pause': (142, 345)},
    '2184x1968': {'portrait': (300, 210), 'pause': (205, 490)},
    '2400x1080': {'portrait': (210, 160), 'pause': (142, 345)},
    '2160x1080': {'portrait': (210, 160), 'pause': (142, 345)},
}

BODY = os.path.join(ROOT, 'tools', 'trackb', 'ui_layouts.body.txt')
ASSET = os.path.join(ROOT, 'port', 'android-trackb', 'app', 'src', 'main', 'assets', 'dh2port', 'ui_layouts.txt')
# Ratio buckets (surface width / height). 16:9 (1.70-1.95) has no section: the original stretch is already right there.
SECTIONS = [
    ('[ratio 1.95-2.50]', '# 18:9, 19.5:9, 20:9, 21:9 phones (Galaxy Z Fold cover screen 2520x1080 = 2.33)'),
    ('[ratio 1.00-1.45 scale=1.25]', '# Galaxy Z Fold inner screen (2184x1968 = 1.11), 4:3 tablets; "grow" items 25% bigger'),
    ('[ratio 1.45-1.70 scale=1.1]', '# 16:10 and 3:2 tablets; "grow" items 10% bigger'),
]


def layouts(data):
    head = open(ASSET, encoding='utf-8').read().split('\n[ratio')[0].rstrip('\n') + '\n'
    body = open(BODY, encoding='utf-8').read()
    out = head
    for h, c in SECTIONS:
        out += '\n' + h + '  ' + c + '\n' + body
    for p in (ASSET, os.path.join(data, 'data', 'port', 'ui_layouts.txt')):
        os.makedirs(os.path.dirname(p), exist_ok=True)
        open(p, 'w', encoding='utf-8', newline='\n').write(out)
        print('wrote', p, len(out.splitlines()), 'lines')


STEPS = [
    (30, 'shot', 'p00_splash'),
    (60, 'tapm', 'title_continue'),
    (140, 'shot', 'p01_mainmenu'),
    (150, 'clip', 'menu_MainMenu/btn_MENU_SINGLE_PLAYER'),
    (220, 'shot', 'p02_startgame'),
    (230, 'clip', 'menu_StartGame/StartMenuButtons/btn_MENU_SINGLE_PLAYER'),
    (260, 'shot', 'p03_loading_early'),
    (340, 'shot', 'p04_loading_late'),
    (450, 'tapm', 'loading_continue'),
    (700, 'shot', 'p05_level'),
    (720, 'taph', 'portrait'),
    (800, 'shot', 'p06_stats'),
    (820, 'clip', 'menu_CharacterSheetNew/buttons/btnMagicTab'),
    (880, 'shot', 'p07_stats_magic'),
    (900, 'clip', 'menu_CharacterSheetNew/buttons/btnOffenseTab'),
    (960, 'shot', 'p08_stats_offense'),
    (980, 'clip', 'menu_CharacterMenu/CharacterMenuTabs/btnInventoryTab'),
    (1060, 'shot', 'p09_inventory'),
    (1080, 'clip', 'menu_InventorySheetMain/inv_anim/btn_torso'),
    (1160, 'shot', 'p10_item_detail'),
    (1180, 'clip', 'menu_InventorySheetDetails/#32'),
    (1240, 'clip', 'menu_CharacterMenu/CharacterMenuTabs/btnFaeriesTab'),
    (1320, 'shot', 'p11_faeries'),
    (1340, 'clip', 'menu_CharacterMenu/CharacterMenuTabs/btnSkillTreeTab'),
    (1420, 'shot', 'p12_skills'),
    (1424, 'dragm', ('skill_first', 'skill_nowhere')),  # dropped on no slot: the icon must come back (Fold report 2026-10-18)
    (1436, 'shot', 'p12b_skill_dropped'),
    (1440, 'clip', 'menu_CharacterMenu/CharacterMenuTabs/btnQuestLogTab'),
    (1520, 'shot', 'p13_quest'),
    (1540, 'clip', 'menu_CharacterMenu/CharacterMenuTabs/btnMapTab'),
    (1620, 'shot', 'p14_map'),
    (1640, 'clip', 'menu_CharacterMenu/CharacterMenuTabs/btnBack'),
    (1760, 'taph', 'pause'),
    (1840, 'shot', 'p15_pause'),
    (1860, 'clip', 'menu_Ingame/buttons/btn_MENU_OPTIONS'),
    (1940, 'shot', 'p16_options'),
    (1960, 'clip', 'menu_Options/buttons/option_Custom'),
    (2040, 'shot', 'p17_custom'),
    (2060, 'quit', ''),
]


def script_for(size):
    w, h = (int(v) for v in size.split('x'))
    hud = HUD.get(size, HUD['2520x1080'])
    lines = []
    for frame, kind, arg in STEPS:
        if kind == 'shot':
            lines.append('%d shot %s' % (frame, arg))
        elif kind == 'tapm':
            fx, fy = M[arg]
            lines.append('%d tap %d %d' % (frame, round(fx * w), round(fy * h)))
        elif kind == 'taph':
            x, y = hud[arg]
            lines.append('%d tap %d %d' % (frame, x, y))
        elif kind == 'dragm':
            (ax, ay), (bx, by) = M[arg[0]], M[arg[1]]
            a = (round(ax * w), round(ay * h))
            b = (round(bx * w), round(by * h))
            lines.append('%d down %d %d' % (frame, a[0], a[1]))
            for i, f in enumerate((0.05, 0.3, 0.7, 1.0)):
                lines.append('%d move %d %d' % (frame + 2 + 2 * i, round(a[0] + (b[0] - a[0]) * f), round(a[1] + (b[1] - a[1]) * f)))
            lines.append('%d up %d %d' % (frame + 10, b[0], b[1]))
        elif kind == 'clip':
            lines.append('%d tapclip %s' % (frame, arg))
        elif kind == 'key':
            lines.append('%d key %s' % (frame, arg))
        elif kind == 'quit':
            lines.append('%d quit' % frame)
    return '\n'.join(lines) + '\n'


def run(sizes, out, data):
    os.makedirs(out, exist_ok=True)
    for size in sizes:
        d = os.path.join(out, size)
        os.makedirs(d, exist_ok=True)
        for f in os.listdir(d):
            if f.endswith('.bmp') or f.endswith('.png'):
                os.remove(os.path.join(d, f))
        sp = os.path.join(out, 'walk_%s.txt' % size)
        open(sp, 'w').write(script_for(size))
        env = dict(os.environ, DH2_FIT_DEBUG='1', DH2_SCREENFIT='1', DH2_PORT_CFG=os.path.join(out, 'port.cfg'))
        print('run', size, flush=True)
        with open(os.path.join(out, 'runner_%s.log' % size), 'w') as log:
            r = subprocess.run([RUNNER, '--data', data, '--size', size, '--angle', ANGLE, '--out', d, '--script', sp],
                               env=env, stdout=log, stderr=subprocess.STDOUT)
        print('  exit', r.returncode, len([f for f in os.listdir(d) if f.endswith('.bmp')]), 'shots')


def sheet(out, sizes):
    from PIL import Image, ImageDraw
    refdir = os.path.join(out, REF)
    for size in sizes:
        if size == REF:
            continue
        d = os.path.join(out, size)
        names = sorted(f for f in os.listdir(d) if f.endswith('.bmp'))
        rows = []
        for n in names:
            a = os.path.join(refdir, n)
            b = os.path.join(d, n)
            ia = Image.open(a).convert('RGB') if os.path.exists(a) else Image.new('RGB', (16, 9))
            ib = Image.open(b).convert('RGB')
            H = 300
            ta = ia.resize((int(ia.width * H / ia.height), H))
            tb = ib.resize((int(ib.width * H / ib.height), H))
            row = Image.new('RGB', (ta.width + tb.width + 30, H + 24), (24, 24, 24))
            row.paste(ta, (0, 24))
            row.paste(tb, (ta.width + 30, 24))
            ImageDraw.Draw(row).text((4, 4), '%s   16:9 reference | %s' % (n[:-4], size), fill=(230, 230, 230))
            rows.append(row)
        if not rows:
            continue
        W = max(r.width for r in rows)
        sheet_img = Image.new('RGB', (W, sum(r.height + 6 for r in rows)), (12, 12, 12))
        y = 0
        for r in rows:
            sheet_img.paste(r, (0, y))
            y += r.height + 6
        p = os.path.join(out, 'sheet_%s.png' % size)
        sheet_img.save(p)
        print('sheet', p, sheet_img.size)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('cmd', choices=['run', 'sheet', 'layouts'])
    ap.add_argument('--sizes', default='1920x1080,2520x1080,2184x1968')
    ap.add_argument('--out', default=os.path.join(ROOT, 'build', 'ui-walk'))
    ap.add_argument('--data', default=DATA)
    a = ap.parse_args()
    sizes = a.sizes.split(',')
    if a.cmd == 'layouts':
        layouts(a.data)
    elif a.cmd == 'run':
        run(sizes, a.out, a.data)
    else:
        sheet(a.out, sizes)


if __name__ == '__main__':
    main()
