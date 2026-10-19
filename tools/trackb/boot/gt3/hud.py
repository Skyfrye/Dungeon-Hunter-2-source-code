import subprocess,sys,io
from PIL import Image
ADB=r"<home>/Documents/Codex/2026-10-09/find/work/tools/android-sdk/platform-tools/adb.exe"
b=subprocess.run([ADB,'-s','emulator-5592','exec-out','screencap','-p'],capture_output=True).stdout
im=Image.open(io.BytesIO(b)).convert('RGB')
r,g,bl=im.getpixel((400,88))
print('HUD' if (r>170 and g<70 and bl<70) or im.getpixel((200,88))[0]>150 else 'CUT')
