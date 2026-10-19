# Ground truth for the swamp-king burrow question (owner GT2, 2026-10-17)

Question: does the original 1.0.2 swamp serpent dive underground when the hero fights it at range (~900 units)?

Result: **not answered**. The original game could be run (see tools/trackb/boot/orig_emulator.md) up to the loading screen of the Boglands with the data cache's WOLF save,
but the process dies on entering gameplay, so the boss (witch cave / swamp) was never reached. No dive timeline was recorded.

What was established
- Original armeabi-v7a APK runs on x86 Android 9 (google_apis_playstore, libndk_translation): intro movie, title, main menu (Start game / Options / Info), slot WOLF Warrior L1 Act 1,
  Start game > Single player > level loads to 100 % ("touch the screen to continue"). Screens: build/own-gt2/boss/s8.png (title), s15.png (menu), s24.png (loading).
- Gameplay entry fails: 32-bit address space exhausted inside ndk_translation (VmSize 4.17 GB with 250 MB RSS) -> `code_pool.cc:46 CHECK failed: start_address_`. Other images/modes: see orig_emulator.md.
- The old reference "ro.product.cpu.abilist32 empty" of FIRST-BOOT.md is true only for API 33+/37 images; API 28 and API 30 x86 images do translate armeabi-v7a.

Not done: mage character (new game dies in character select, same address-space limit), fight, screenshots every 2 s, logcat of a fight.
Next candidates: an old emulator build with qemu-system-armel plus system-images;android-25;google_apis;armeabi-v7a (slow); a rooted API 30 image whose translator is patched so the interpreter FPE
disappears (then /proc/<pid>/maps shows what eats the address space); or the glitch-in-Unicorn chain for the timeline (CHAINS.md, Extension 3, "Open").

## GT3 result (2026-10-17): the original was played into the swamp-king fight and the boss DOES dive underground at range
Route A worked (see "GT3" in tools/trackb/boot/orig_emulator.md: the abort was a leaked-thread-stack address-space exhaustion in the game's own updateJob_thread::Start, fixed by a detached-thread patch
of a copy of the apk; x86 playstore API 28 image, ndk_translation, -memory 4096). Warrior WOLF level 1 (full HP 310, 5 potions), level 001_swamp, hero starting at the boss module's door.
Setup of every fight: hero at (-18800,11245) after the intro cut scene, boss spawn (-19536,11679): distance ~855 units (the "about 900 units at range" case), hero stands still (no attack, potions only).
Evidence: build/own-gt3/rec (about 2.6 screenshots per second, file name = HHMMSS_ms, 1280x720) + tools/trackb/boot/gt3/boss.py and tl.py; times below are host wall clock (emulator runs near real time).
Boss visibility = bright green head/neck at the top screen edge and the "Повелитель грязи" name plate; hero hits = HP bar drops.

Fight 2 (08:21): cut scene shows the boss from 08:21:15.4; control returns 08:21:21 (boss mid roar); spit hit 08:21:26.1 (-94 HP); head gone 08:21:31.8 (= 16.4 s after the boss first appears);
hit 08:21:32.3 (-98); boss never seen at the top again, hits keep coming from outside the view (08:21:52 -105).
Fight 3 (08:23): boss first visible 08:23:42.0; control 08:23:48.7 (roar); spit hit 08:23:51.5 (-101); head sinks 08:23:58.0 and is gone at 08:23:58.9 (= 16.9 s after first visible); crystals/emerge strike
at 08:24:02.2 (-112 HP, 3.3 s after the dive, boss green column shown for 1 s at the top edge); then hidden again, hit pairs 5.8-5.9 s apart (08:24:07.9, 08:24:29.0 / :34.9 / :40.7, 08:25:03 / :12.7) with
gaps of 20-22 s between pairs.
Fight 4 (08:31): boss visible from 08:31:23.9; control 08:31:36.5; spit hit 08:31:37.4 (-105); head gone 08:31:39.9 (= 16.0 s after first visible); big hit 08:31:42.6 (-118, 2.7 s after the dive);
not visible at the top for the next 70 s, hit pairs 08:31:48.9 (-111), 08:32:05 (-111), 08:32:31 / :37 (-101), ...
Fight 1 (08:14, started with a long potion-tutorial cut scene, hero HP already 107): boss visible 08:14:08 - 08:15:30 with only 0.4 s head dips every ~3 s (spit animation), NO dive in 80 s although the hero stayed in range.
Reading: in 3 of 4 fights the first dive came 16.0-16.9 s after the boss first appeared in the intro cut scene (15 s dive tick + ~1 s), independent of when the player got control (T0+10.2 / +3.4 s),
and its first contact with the hero was one spit/emerge hit 0.5-3.3 s later. The dive at range therefore exists in the original; it happens at the FIRST 15 s tick in three runs; the run that had
a 40 s tutorial cut scene (boss in view, hero low HP) did not dive at all, i.e. the dive depends on the cycle phase at the tick, as the recon analysis (CHAINS.md Extension 3) predicted, but
the phase in the original's intro cut scene lets the first tick land on an Idle gap (the reconstruction's phase made the tick fall inside intimidate/spit). Candidate to test: the original boss is
activated when the cut scene starts showing it (not when control returns), and its first cycle starts one 1.5 s grid later than ours.
After the dive the boss resurfaces at another BossSpawnPoint (not visible in the top band) and keeps spitting from there (hit pairs 5.8 s apart, 20 s gap = next dive/resurface).
Caveats: n = 4 fights, one hero level, boss name plate/visibility measured from screenshots (not from the engine state); the exact intro-cut-scene length depends on how fast the dialogue is tapped.

## GT3 addendum: precise timeline and the "natural flow" question (2026-10-17, port 5592, same Warrior, ~855 units)
Which fights were natural: only fight 1 started from my edited checkpoint (hero set to (-14000,12000), then walked west into TriggerZone_17). Fights 2-5 were RESPAWNS after death: the game reloads the level at
CheckpointZone_04 (-15104,12135), 4400 units from the boss, boss off camera; the hero walks up (joystick up 1.5 s) into the zone and the Swamp_Serpent_Intro cut scene plays normally. So the "hero in the boss room
woke the AI" caveat applies at most to fight 1 (the one WITHOUT a dive); the three fights WITH a dive (2-4) were already the natural flow. Fight 5 (new, natural, trigger 09:11:25, potions used, 68 s observed):
- boss reveal: first boss frames in the cut scene ~09:11:27 (camera pans); roar close-up (open jaws) 09:11:45; control back (HUD) 09:11:50.0 = T0. Reveal-to-control varies 5-23 s with the tapping speed.
- attack cadence = head leaving the top band (0.4-0.6 s dip = one attack animation): dips start at T0+0.1, 2.9, 6.1, 12.1, 15.1, 18.2, 21.3, 24.1, 27.4, 30.2, 33.5, 36.2 ... mean period 3.02 s, i.e. attack animations
  back to back with ~0.5 s between them (intimidate then spit); a spit lands on the hero every ~6.1 s (hero hits at T0+10.9, 26.0, 32.1, 40.7, 46.9, 59.0, potion gaps in between).
  The boss was never seen idle (no gap > 0.7 s between attack animations) and never dived or emerged in 68 s: the ticks at 15/30/45/60 s all fell inside an attack.
- fights 1 and 5 (no dive in 80 s / 68 s) vs fights 2, 3, 4 (dive 16.0-16.9 s after the cut scene first showed the boss, an emerge hit 3.3 / 2.7 s later, then hidden for 40-70 s): same level, hero position and distance.
  Only the dialogue tapping speed differed (reveal-to-control 41 / 5.8 / 6.7 / 12.6 / ~5-23 s), i.e. the intro roar/jaws animation was cut at different points. The original CAN dive at range, it is phase dependent: in
  the natural flow it dived in 3 of 5 runs. "Never dives at range" in our port is faithful only for the in-phase runs; it is divergent if the port cannot dive in ANY phase (test: shift the first tick by 1.5 s against the cycle).

## Conclusion (2026-10-17, Q6 jitter runs)

The dive at range is emergent from frame-time jitter. Natural flow, pristine saves, 8 seeds per set:
fixed 33 ms step -> 0/8 dives; dt jittered 28-40 ms (2012-hardware-like) -> 3/8 dives (first dive 22 s after
control, then every ~16 s); dt jittered 15-19 ms (steady 60 fps phone) -> 0/8. The attack cycle is 3.0 s and
five cycles equal the 15 s dive tick exactly, so only drift lets the tick fall into the ~0.5 s idle gap. All
engine functions on the path match the binary; the original would lock the same way at a steady 60 fps.
Faithful tree: no change. Improvements branch: 30 fps pacing or a different tick phase, if wanted.
Runner switches: DH2_DT_JITTER="lo,hi", DH2_DT_SEED (host_runner.cpp).
