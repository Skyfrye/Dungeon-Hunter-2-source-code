# Dungeon Hunter 2 — native reconstruction

A C++ reconstruction of Gameloft's **Dungeon Hunter 2** (Android 1.0.2), rebuilt function by function from the original
binary so the game runs natively on current Android phones and on Windows.

## Layout

| Path | Contents |
| --- | --- |
| `port/decomp-reconstruction/` | The reconstructed engine and game (CMake). Start with `README.md` and `TRACK-B.md` there. |
| `port/android-trackb/` | Android app (Java side, packaging). |
| `tools/trackb/` | Build, release and asset tools (`android/build_release.py` builds the APK). |
| `build_data/` | Game data the builds bundle (`files/`), restored iOS sounds, original Android resources, remaster art. |
| `recovered/` | Reference material from the original binary (symbols, pseudocode, assembly, scripts). |
| `reports/decomp-reconstruction/` | Technical notes on specific systems (host runner, multiplayer, rendering, …). |

## Branches

- `main` — the faithful port.
- `track-b/remaster` — `main` plus the remaster (3x textures, normal maps, lighting, post-processing); see
  `port/decomp-reconstruction/REMASTER.md`.

## Building

Windows runner (MinGW-w64, CMake, Ninja):

```
cmake -S port/decomp-reconstruction -B build/rm -G Ninja -DCMAKE_BUILD_TYPE=Release -DDH2_HOST_RUNNER=ON
cmake --build build/rm
ctest --test-dir build/rm
```

Android APK with the game data bundled. Needs the Android SDK with build-tools 37.0.0, platform 37 and NDK 29.0.14206865;
set `ANDROID_HOME` to the SDK folder (default: Android Studio's `~/AppData/Local/Android/Sdk`):

```
py -3 tools/trackb/android/build_release.py --bundle-data build_data/files --only source
```

See [`RIGHTS.md`](RIGHTS.md) for the status of the game data and recovered material.

Made by Skyfrye , Angelkiller with AI
