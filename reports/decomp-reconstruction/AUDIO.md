# Audio (owner SND1, 2026-10-17)

## Path
vox::DriverAndroid (audio thread) mixes 44.1 kHz stereo 16-bit and calls android.media.AudioTrack.write through JNI. On Android that is the real
AudioTrack; on the Windows runner host_jni.cpp fakes the class and host_audio.cpp is the sink:
`--audio-wav <file>` dumps every written frame to a WAV (headless, with `--pace` so the mixer thread runs at game speed),
`--audio-out` (default in the window runner, `--no-audio` to disable) plays through waveOut with four queued buffers (write blocks when full, as AudioTrack does).
AudioTrack play/pause/stop map to the sink's play state.

## Decoders (`dh2_win_headless --audio-selftest <data/sounds>`, then `tools/trackb/audio_ref_check.py <sounds> <dump>` with DH2_SELFTEST_DUMP)
All 261 audio files in data/sounds decode with the vox decoders: 244 .wav (PCM and MS IMA ADPCM) + 17 .vxn (Gameloft Vorbis variant), 0 failures.
The 244 .wav outputs equal an independent reference decode (PCM data chunk / standard IMA block decoder) bit for bit. .vxn have no reference decoder:
they decode to full-scale stereo 32 kHz with plausible peak/RMS (0.5-1.0 / 0.06-0.27). Frame count is capped at 10584064 for all .vxn (stream length unknown), not a failure.

## Windows play check
`session_play.txt` on level 1 (swamp), `--pace --audio-wav`: 79 s of audio, music present from the first second (rms 0.04-0.06 in menus/loading, ~0.13 in the level), SFX bursts
in combat (peak up to 1.0, rms 0.19). Tool: `tools/trackb/wav_levels.py <wav> [sec]`.

## Android (separate AVD run, dh2_r read-only on port 5580)
The game's AudioTrack is created and started (dumpsys audio: AudioTrack, 44100 Hz, channel mask 0x3, state started), audio_flinger frame counter rises, 0 underruns.
Not verified on device: that the stream carries music/SFX, and pause/resume with the app. The game never gets past `app Init is OK` on this emulator run
(black surface, no GSInit steps), which is the first-boot black-screen problem, not audio; the track stays started when the app is sent to the background because
appPause/Application::Pause never ran. Retest when the Android game loop runs.

## Not done
Windows-side app pause/resume check (host_script/host_window were being edited by other owners; add a `pause`/`resume` script command calling appPause/appResume and assert the sink stops).
