import subprocess,sys,io
from PIL import Image
ADB=(__import__("os").environ.get("ANDROID_HOME") or __import__("os").environ.get("ANDROID_SDK_ROOT") or __import__("os").path.expanduser("~/AppData/Local/Android/Sdk")) + r"/platform-tools/adb.exe"
b=subprocess.run([ADB,'-s','emulator-5592','exec-out','screencap','-p'],capture_output=True).stdout
im=Image.open(io.BytesIO(b)).convert('RGB')
r,g,bl=im.getpixel((400,88))
print('HUD' if (r>170 and g<70 and bl<70) or im.getpixel((200,88))[0]>150 else 'CUT')
