build_data - ONLY what Track B builds need today (git-ignored via .git/info/exclude: never committed, never pushed)

files\              the game data (original 1.0.2 cache unpacked: levels, 3D, textures, sounds, UI)
                    -> zipped into the APK at build time; host runner --data (use a copy: the game writes saves)
ios-sounds\         sounds missing from Android 1.0.2, converted from the iOS version -> added to the game data at build time
android-res\res\        the original app's Android resources (icon, layouts, strings, resource ids), extracted once from the original APK
android-res\resources\  the original app's i18n text files
                    -> copied into port/android-trackb/app/src/main/ before the Java build (replaces importing them from the original APK)

The full original archive (original APK, cache zip, iOS IPA, other versions, research) is in ..\data\ - use it only to add things we missed.
