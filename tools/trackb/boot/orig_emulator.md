# Running the ORIGINAL 1.0.2 (armeabi-v7a) on the Windows emulator (owner GT2, 2026-10-17)

Status: the original boots, plays the intro, reaches title, main menu (save slot WOLF / Warrior / Act 1) and the level loading screen.
It dies when it enters gameplay (see "Blocker"). The swamp-king boss was NOT reached.

## What works (image: system-images;android-28;google_apis_playstore;x86, Android 9, ARM via libndk_translation 32-bit)
SDK=<home>/Documents/Codex/2026-10-09/find/work/tools/android-sdk  (sdkmanager --licenses done; image installed with sdkmanager)
AVD dh2_orig32 (~/.android/avd/dh2_orig32.avd/config.ini: image.sysdir.1=system-images/android-28/google_apis_playstore/x86/, abi.type=x86, hw.cpu.arch=x86,
PlayStore.enabled=true, hw.ramSize, disk.dataPartition.size=4G; write it with Python, the emulator rewrites the file as "key = value").
  emulator -avd dh2_orig32 -port 5590 -no-window -no-audio -no-snapshot -no-boot-anim -gpu swiftshader_indirect -memory 4096 [-wipe-data]
  adb -s emulator-5590 ...   (getprop ro.product.cpu.abilist32 = x86,armeabi-v7a,armeabi)
Memory: with 2048 MB the process dies earlier ("ndk_translation: Memory exhausted") during character-select texture loading; use 4096 (1536 behaves the same).
Install: adb install Dungeon-Hunter-2-HD-v1-0-2.apk ; data: adb push build/own-gt/data/<pkg>/files /sdcard/Android/data/<pkg>/ (Android 9 allows it without root;
tools/trackb/boot/orig_push.sh is the rooted variant for the userdebug API 30 image). No adb root on the playstore images, none needed.
Start: the DungeonHunter2 activity is not exported on API 28, use the launcher: adb shell monkey -p com.gameloft.android.GAND.GloftD2SS -c android.intent.category.LAUNCHER 1
(Zirconia_DRM passes through; tap OK on the "built for an older version" dialog at (900,445); the intro movie can be skipped, the title needs a tap, then the menu).
The data cache zip ships injected saves (dh2_000.savegame = WOLF warrior level 1 Act 1, a level checkpoint); with them "Start game > Single player" loads the Boglands.
Deleting them gives "new game": the name keyboard works (taps on the letters, Confirm at (640,232)), but class select then dies (below), so keep the saves.
Helper: build/own-gt2/g.sh t X Y (tap), s NAME (screenshot to build/own-gt2/NAME.png).

## Blocker (not solved)
- API 28/25-playstore-x86 + ndk_translation: the 32-bit app process reaches the 4 GiB address-space limit (VmSize 2.2 GB at the menu, 4.17 GB on the loading screen of the Boglands,
  RSS only 250 MB, 24 threads), then ndk_translation aborts: "code_pool.cc:46 CHECK failed: start_address_" (or "Memory exhausted: requested 131072 bytes"). Happens when "touch to continue"
  is pressed on the loading screen, i.e. before any gameplay. wm size 800x480, 1536 MB RAM (ART heap 384m), -cores 1: no change.
- API 30 google_apis x86_64 (rootable, abilist32 has armeabi-v7a, ndk_translation 0.2.2): dies at startup with SIGFPE (FPE_FLTRES) in ndk_translation's interpreter (VMUL intrinsic, SSE inexact trap
  unmasked) before the splash. NDK_TRANSLATION_MODE=translate-only via setprop wrap.<pkg> kills the app process (137). -writable-system + adb remount + reboot hangs adb (offline).
- API 30 google_apis_playstore x86: scoped storage, adb cannot write /sdcard/Android/data/<pkg> (no root) so the data cannot be pushed.
- API 25/26 playstore x86: no ARM translation (abilist x86 only). system-images;android-25;google_apis;armeabi-v7a and android-23 default armeabi-v7a: emulator 37 refuses
  ("CPU Architecture 'arm' is not supported by the QEMU2 emulator").
Ideas left: an older emulator build that still ships qemu-system-armel (full ARM emulation, very slow); replacing libndk_translation.so of the API 30 rooted image with a patched/older one;
finding what reserves ~2 GB of address space at level load (needs /proc/<pid>/maps, i.e. a rooted image that gets past the FPE).

## GT3 (2026-10-17): the original now reaches and plays gameplay. Root cause of the "address space exhausted" abort + fix
Cause (read from /proc/<pid>/maps): NOT the translator and NOT the ART heap. `updateJob_thread::Start/Start2` (libDungeonHunter2.so 0x317ef8 / 0x317e98) call
`pthread_create(&tid, NULL, fn, this)` (joinable, never joined) about 60 times per second on the GLThread while a loading/interrupt screen is up ("Not Created" in logcat when it fails).
Every call leaks a 1 MB thread stack (1994 mappings of 1012 KB + 4 KB guard at the loading screen = 2 GB), so VmSize climbs 285 MB per 5 s until the 4 GiB limit; ndk_translation then dies in
code_pool.cc (or the game spins on "pthread_create failed ... Out of memory"). The ART region space (2 x dalvik.vm.heapsize = 1152 MB at -memory 4096) only makes it reach the limit earlier.
Fix (binary patch of a COPY of the apk, nothing in tracked paths): both functions rewritten to create the thread DETACHED (patch.S). VmSize then stays flat at 2.1 GB through menu, loading and gameplay.
Also: the apk's AndroidManifest `debuggable` flag is flipped to true so `adb shell run-as <pkg> cat /proc/<pid>/maps` and `dd if=/proc/<pid>/mem` work on the non-rootable playstore image.
Working setup: AVD dh2_gt3 (copy of dh2_orig32, system-images;android-28;google_apis_playstore;x86), `emulator -avd dh2_gt3 -port 5592 -no-window -no-audio -no-snapshot -no-boot-anim
-gpu swiftshader_indirect -memory 4096 -wipe-data` (1024/1536 MB RAM: the game crashes at the first Resume after the intro movie, "Could not open Defaulteffects.bdae"; use 4096).
Scripts (tools/trackb/boot/gt3/, scratch dir build/own-gt3): boot.sh (boot + install + push data), mkapk.py + patch.S (build the patched debuggable apk, sign with apksigner and a debug keystore),
enter.sh (launch, skip movie, menu, Start game, Single player, loading, touch), rec.sh (screenshot every ~0.38 s, file name = HHMMSS_ms), boss.py/tl.py (boss-visible / hero-HP-hit timelines from the shots),
memscan.py (dump the guest heap through run-as + dd, scan for float triples: the hero position lives at 0x6c2a8554 as (x,y,z); the "Dungeon Hunter" world is x,y ground, z up).
Data trick: the data cache's single-player checkpoint (dh2_000_0_single_level.checkpoint / dh2_000_0_000_041_level.savegame, level 001 swamp) stores the hero position (3 copies of the
float triple 40 bytes after "PlayerCharacter_0"); edit them to (-14000,12000,255) and the game starts in the merchant camp next to the boss room (module bossroom_ruins_ns at (-18000,12000)).
Walking west past TriggerZone_17 (world -15437,12000) starts the Swamp_Serpent_Intro cut scene (tap ~8-25 times at (640,400) to advance the dialogue); the hero is moved to (-18800,11245), the boss
(spawn (-19536,11679)) is ~855 units away.  Joystick: `input swipe 165 590 165+dx 590+dy ms` (up = -x, right = +x+y, left = -x-y); potion button (1185,80).
