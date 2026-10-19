; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b78e8, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::tu_timer
; alias: _ZN7gameswf8tu_timer9get_milliEy
; demangled: gameswf::tu_timer::get_milli(unsigned long long)
; decoder-mode: arm
007b78e8  00 00 a0 e3                                      mov r0, #0
007b78ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x007b78f0, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::tu_timer
; alias: _ZN7gameswf8tu_timer5sleepEi
; demangled: gameswf::tu_timer::sleep(int)
; decoder-mode: arm
007b78f0  fe ff ff ea                                      b #0x7b78f0

; FUNCTION 0x007b78f4, declared_size=12, range_size=12, mode=arm
; class-group: gameswf::tu_timer
; alias: _ZN7gameswf8tu_timer17get_profile_ticksEv
; demangled: gameswf::tu_timer::get_profile_ticks()
; decoder-mode: arm
007b78f4  00 00 a0 e3                                      mov r0, #0
007b78f8  00 10 a0 e3                                      mov r1, #0
007b78fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x007b7900, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::tu_timer
; alias: _ZN7gameswf8tu_timer24profile_ticks_to_secondsEy
; demangled: gameswf::tu_timer::profile_ticks_to_seconds(unsigned long long)
; decoder-mode: arm
007b7900  10 40 2d e9                                      push {r4, lr}
007b7904  fd 59 ed eb                                      bl #0x30e100
007b7908  80 34 08 e3                                      movw r3, #0x8480
007b790c  00 20 a0 e3                                      mov r2, #0
007b7910  2e 31 44 e3                                      movt r3, #0x412e
007b7914  89 5a ed eb                                      bl #0x30e340
007b7918  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b791c, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::tu_timer
; alias: _ZN7gameswf8tu_timer16ticks_to_secondsEy
; demangled: gameswf::tu_timer::ticks_to_seconds(unsigned long long)
; decoder-mode: arm
007b791c  f7 ff ff ea                                      b #0x7b7900

; FUNCTION 0x007b7920, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::tu_timer
; alias: _ZN7gameswf8tu_timer29profile_ticks_to_millisecondsEy
; demangled: gameswf::tu_timer::profile_ticks_to_milliseconds(unsigned long long)
; decoder-mode: arm
007b7920  10 40 2d e9                                      push {r4, lr}
007b7924  f5 59 ed eb                                      bl #0x30e100
007b7928  00 30 04 e3                                      movw r3, #0x4000
007b792c  00 20 a0 e3                                      mov r2, #0
007b7930  8f 30 44 e3                                      movt r3, #0x408f
007b7934  81 5a ed eb                                      bl #0x30e340
007b7938  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b794c, declared_size=80, range_size=80, mode=arm
; class-group: gameswf::tu_timer
; alias: _ZN7gameswf8tu_timer9get_ticksEv
; demangled: gameswf::tu_timer::get_ticks()
; decoder-mode: arm
007b794c  04 e0 2d e5                                      str lr, [sp, #-4]!
007b7950  0c d0 4d e2                                      sub sp, sp, #0xc
007b7954  00 10 a0 e3                                      mov r1, #0
007b7958  0d 00 a0 e1                                      mov r0, sp
007b795c  70 5b ed eb                                      bl #0x30e724
007b7960  06 00 9d e8                                      ldm sp, {r1, r2}
007b7964  d3 3d 04 e3                                      movw r3, #0x4dd3
007b7968  62 30 41 e3                                      movt r3, #0x1062
007b796c  fa 0f a0 e3                                      mov r0, #0x3e8
007b7970  90 01 00 e0                                      mul r0, r0, r1
007b7974  93 12 c3 e0                                      smull r1, r3, r3, r2
007b7978  c2 2f a0 e1                                      asr r2, r2, #0x1f
007b797c  c0 1f a0 e1                                      asr r1, r0, #0x1f
007b7980  43 c3 62 e0                                      rsb ip, r2, r3, asr #6
007b7984  0c 20 90 e0                                      adds r2, r0, ip
007b7988  cc 3f a1 e0                                      adc r3, r1, ip, asr #31
007b798c  03 10 a0 e1                                      mov r1, r3
007b7990  02 00 a0 e1                                      mov r0, r2
007b7994  0c d0 8d e2                                      add sp, sp, #0xc
007b7998  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x007b799c, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::tu_timer
; alias: _ZN7gameswf8tu_timer8get_timeEy
; demangled: gameswf::tu_timer::get_time(unsigned long long)
; decoder-mode: arm
007b799c  30 40 2d e9                                      push {r4, r5, lr}
007b79a0  0c d0 4d e2                                      sub sp, sp, #0xc
007b79a4  00 40 a0 e1                                      mov r4, r0
007b79a8  08 00 8d e2                                      add r0, sp, #8
007b79ac  04 40 20 e5                                      str r4, [r0, #-4]!
007b79b0  01 50 a0 e1                                      mov r5, r1
007b79b4  c9 5b ed eb                                      bl #0x30e8e0
007b79b8  fa 1f a0 e3                                      mov r1, #0x3e8
007b79bc  94 21 83 e0                                      umull r2, r3, r4, r1
007b79c0  91 35 21 e0                                      mla r1, r1, r5, r3
007b79c4  02 00 a0 e1                                      mov r0, r2
007b79c8  0c d0 8d e2                                      add sp, sp, #0xc
007b79cc  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x007b79d0, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::tu_timer
; alias: _ZN7gameswf8tu_timer8get_yearEy
; demangled: gameswf::tu_timer::get_year(unsigned long long)
; decoder-mode: arm
007b79d0  04 e0 2d e5                                      str lr, [sp, #-4]!
007b79d4  0c d0 4d e2                                      sub sp, sp, #0xc
007b79d8  08 30 8d e2                                      add r3, sp, #8
007b79dc  04 00 23 e5                                      str r0, [r3, #-4]!
007b79e0  03 00 a0 e1                                      mov r0, r3
007b79e4  bd 5b ed eb                                      bl #0x30e8e0
007b79e8  14 00 90 e5                                      ldr r0, [r0, #0x14]
007b79ec  0c d0 8d e2                                      add sp, sp, #0xc
007b79f0  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x007b79f4, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::tu_timer
; alias: _ZN7gameswf8tu_timer11get_secondsEy
; demangled: gameswf::tu_timer::get_seconds(unsigned long long)
; decoder-mode: arm
007b79f4  04 e0 2d e5                                      str lr, [sp, #-4]!
007b79f8  0c d0 4d e2                                      sub sp, sp, #0xc
007b79fc  08 30 8d e2                                      add r3, sp, #8
007b7a00  04 00 23 e5                                      str r0, [r3, #-4]!
007b7a04  03 00 a0 e1                                      mov r0, r3
007b7a08  b4 5b ed eb                                      bl #0x30e8e0
007b7a0c  00 00 90 e5                                      ldr r0, [r0]
007b7a10  0c d0 8d e2                                      add sp, sp, #0xc
007b7a14  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x007b7a18, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::tu_timer
; alias: _ZN7gameswf8tu_timer11get_minutesEy
; demangled: gameswf::tu_timer::get_minutes(unsigned long long)
; decoder-mode: arm
007b7a18  04 e0 2d e5                                      str lr, [sp, #-4]!
007b7a1c  0c d0 4d e2                                      sub sp, sp, #0xc
007b7a20  08 30 8d e2                                      add r3, sp, #8
007b7a24  04 00 23 e5                                      str r0, [r3, #-4]!
007b7a28  03 00 a0 e1                                      mov r0, r3
007b7a2c  ab 5b ed eb                                      bl #0x30e8e0
007b7a30  04 00 90 e5                                      ldr r0, [r0, #4]
007b7a34  0c d0 8d e2                                      add sp, sp, #0xc
007b7a38  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x007b7a3c, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::tu_timer
; alias: _ZN7gameswf8tu_timer9get_monthEy
; demangled: gameswf::tu_timer::get_month(unsigned long long)
; decoder-mode: arm
007b7a3c  04 e0 2d e5                                      str lr, [sp, #-4]!
007b7a40  0c d0 4d e2                                      sub sp, sp, #0xc
007b7a44  08 30 8d e2                                      add r3, sp, #8
007b7a48  04 00 23 e5                                      str r0, [r3, #-4]!
007b7a4c  03 00 a0 e1                                      mov r0, r3
007b7a50  a2 5b ed eb                                      bl #0x30e8e0
007b7a54  10 00 90 e5                                      ldr r0, [r0, #0x10]
007b7a58  0c d0 8d e2                                      add sp, sp, #0xc
007b7a5c  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x007b7a60, declared_size=44, range_size=44, mode=arm
; class-group: gameswf::tu_timer
; alias: _ZN7gameswf8tu_timer12get_fullyearEy
; demangled: gameswf::tu_timer::get_fullyear(unsigned long long)
; decoder-mode: arm
007b7a60  04 e0 2d e5                                      str lr, [sp, #-4]!
007b7a64  0c d0 4d e2                                      sub sp, sp, #0xc
007b7a68  08 30 8d e2                                      add r3, sp, #8
007b7a6c  04 00 23 e5                                      str r0, [r3, #-4]!
007b7a70  03 00 a0 e1                                      mov r0, r3
007b7a74  99 5b ed eb                                      bl #0x30e8e0
007b7a78  14 00 90 e5                                      ldr r0, [r0, #0x14]
007b7a7c  76 0e 80 e2                                      add r0, r0, #0x760
007b7a80  0c 00 80 e2                                      add r0, r0, #0xc
007b7a84  0c d0 8d e2                                      add sp, sp, #0xc
007b7a88  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x007b7a8c, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::tu_timer
; alias: _ZN7gameswf8tu_timer9get_hoursEy
; demangled: gameswf::tu_timer::get_hours(unsigned long long)
; decoder-mode: arm
007b7a8c  04 e0 2d e5                                      str lr, [sp, #-4]!
007b7a90  0c d0 4d e2                                      sub sp, sp, #0xc
007b7a94  08 30 8d e2                                      add r3, sp, #8
007b7a98  04 00 23 e5                                      str r0, [r3, #-4]!
007b7a9c  03 00 a0 e1                                      mov r0, r3
007b7aa0  8e 5b ed eb                                      bl #0x30e8e0
007b7aa4  08 00 90 e5                                      ldr r0, [r0, #8]
007b7aa8  0c d0 8d e2                                      add sp, sp, #0xc
007b7aac  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x007b7ab0, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::tu_timer
; alias: _ZN7gameswf8tu_timer7get_dayEy
; demangled: gameswf::tu_timer::get_day(unsigned long long)
; decoder-mode: arm
007b7ab0  04 e0 2d e5                                      str lr, [sp, #-4]!
007b7ab4  0c d0 4d e2                                      sub sp, sp, #0xc
007b7ab8  08 30 8d e2                                      add r3, sp, #8
007b7abc  04 00 23 e5                                      str r0, [r3, #-4]!
007b7ac0  03 00 a0 e1                                      mov r0, r3
007b7ac4  85 5b ed eb                                      bl #0x30e8e0
007b7ac8  18 00 90 e5                                      ldr r0, [r0, #0x18]
007b7acc  0c d0 8d e2                                      add sp, sp, #0xc
007b7ad0  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x007b7ad4, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::tu_timer
; alias: _ZN7gameswf8tu_timer8get_dateEy
; demangled: gameswf::tu_timer::get_date(unsigned long long)
; decoder-mode: arm
007b7ad4  04 e0 2d e5                                      str lr, [sp, #-4]!
007b7ad8  0c d0 4d e2                                      sub sp, sp, #0xc
007b7adc  08 30 8d e2                                      add r3, sp, #8
007b7ae0  04 00 23 e5                                      str r0, [r3, #-4]!
007b7ae4  03 00 a0 e1                                      mov r0, r3
007b7ae8  7c 5b ed eb                                      bl #0x30e8e0
007b7aec  0c 00 90 e5                                      ldr r0, [r0, #0xc]
007b7af0  0c d0 8d e2                                      add sp, sp, #0xc
007b7af4  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x007b7af8, declared_size=40, range_size=40, mode=arm
; class-group: gameswf::tu_timer
; alias: _ZN7gameswf8tu_timer11get_systimeEv
; demangled: gameswf::tu_timer::get_systime()
; decoder-mode: arm
007b7af8  04 e0 2d e5                                      str lr, [sp, #-4]!
007b7afc  0c d0 4d e2                                      sub sp, sp, #0xc
007b7b00  04 00 8d e2                                      add r0, sp, #4
007b7b04  9d 5a ed eb                                      bl #0x30e580
007b7b08  04 20 9d e5                                      ldr r2, [sp, #4]
007b7b0c  c2 3f a0 e1                                      asr r3, r2, #0x1f
007b7b10  03 10 a0 e1                                      mov r1, r3
007b7b14  02 00 a0 e1                                      mov r0, r2
007b7b18  0c d0 8d e2                                      add sp, sp, #0xc
007b7b1c  00 80 bd e8                                      ldm sp!, {pc}
