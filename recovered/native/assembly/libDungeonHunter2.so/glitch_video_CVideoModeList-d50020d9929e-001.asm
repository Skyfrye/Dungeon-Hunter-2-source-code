; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006daabc, declared_size=80, range_size=80, mode=arm
; class-group: glitch::video::CVideoModeList
; alias: _ZN6glitch5video14CVideoModeListC2Ev
; demangled: glitch::video::CVideoModeList::CVideoModeList()
; decoder-mode: arm
006daabc  40 10 9f e5                                      ldr r1, [pc, #0x40]
006daac0  40 c0 9f e5                                      ldr ip, [pc, #0x40]
006daac4  00 20 a0 e3                                      mov r2, #0
006daac8  01 10 8f e0                                      add r1, pc, r1
006daacc  0c c0 91 e7                                      ldr ip, [r1, ip]
006daad0  04 40 2d e5                                      str r4, [sp, #-4]!
006daad4  08 c0 8c e2                                      add ip, ip, #8
006daad8  01 40 a0 e3                                      mov r4, #1
006daadc  1c 20 80 e5                                      str r2, [r0, #0x1c]
006daae0  04 40 80 e5                                      str r4, [r0, #4]
006daae4  00 c0 80 e5                                      str ip, [r0]
006daae8  08 20 80 e5                                      str r2, [r0, #8]
006daaec  0c 20 80 e5                                      str r2, [r0, #0xc]
006daaf0  10 20 80 e5                                      str r2, [r0, #0x10]
006daaf4  14 20 80 e5                                      str r2, [r0, #0x14]
006daaf8  18 20 80 e5                                      str r2, [r0, #0x18]
006daafc  10 00 bd e8                                      ldm sp!, {r4}
006dab00  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006dab04  c8 9f 2b 00 4c 49 00 00                          .byte 0xc8, 0x9f, 0x2b, 0x00, 0x4c, 0x49, 0x00, 0x00

; FUNCTION 0x006dab0c, declared_size=80, range_size=80, mode=arm
; class-group: glitch::video::CVideoModeList
; alias: _ZN6glitch5video14CVideoModeListC1Ev
; demangled: glitch::video::CVideoModeList::CVideoModeList()
; decoder-mode: arm
006dab0c  40 10 9f e5                                      ldr r1, [pc, #0x40]
006dab10  40 c0 9f e5                                      ldr ip, [pc, #0x40]
006dab14  00 20 a0 e3                                      mov r2, #0
006dab18  01 10 8f e0                                      add r1, pc, r1
006dab1c  0c c0 91 e7                                      ldr ip, [r1, ip]
006dab20  04 40 2d e5                                      str r4, [sp, #-4]!
006dab24  08 c0 8c e2                                      add ip, ip, #8
006dab28  01 40 a0 e3                                      mov r4, #1
006dab2c  1c 20 80 e5                                      str r2, [r0, #0x1c]
006dab30  04 40 80 e5                                      str r4, [r0, #4]
006dab34  00 c0 80 e5                                      str ip, [r0]
006dab38  08 20 80 e5                                      str r2, [r0, #8]
006dab3c  0c 20 80 e5                                      str r2, [r0, #0xc]
006dab40  10 20 80 e5                                      str r2, [r0, #0x10]
006dab44  14 20 80 e5                                      str r2, [r0, #0x14]
006dab48  18 20 80 e5                                      str r2, [r0, #0x18]
006dab4c  10 00 bd e8                                      ldm sp!, {r4}
006dab50  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006dab54  78 9f 2b 00 4c 49 00 00                          .byte 0x78, 0x9f, 0x2b, 0x00, 0x4c, 0x49, 0x00, 0x00

; FUNCTION 0x006dab5c, declared_size=24, range_size=24, mode=arm
; class-group: glitch::video::CVideoModeList
; alias: _ZN6glitch5video14CVideoModeList10setDesktopEiRKNS_4core11dimension2dIiEE
; demangled: glitch::video::CVideoModeList::setDesktop(int, glitch::core::dimension2d<int> const&)
; decoder-mode: arm
006dab5c  1c 10 80 e5                                      str r1, [r0, #0x1c]
006dab60  00 30 92 e5                                      ldr r3, [r2]
006dab64  14 30 80 e5                                      str r3, [r0, #0x14]
006dab68  04 30 92 e5                                      ldr r3, [r2, #4]
006dab6c  18 30 80 e5                                      str r3, [r0, #0x18]
006dab70  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dab74, declared_size=40, range_size=40, mode=arm
; class-group: glitch::video::CVideoModeList
; alias: _ZNK6glitch5video14CVideoModeList17getVideoModeCountEv
; demangled: glitch::video::CVideoModeList::getVideoModeCount() const
; decoder-mode: arm
006dab74  08 30 90 e5                                      ldr r3, [r0, #8]
006dab78  0c 20 90 e5                                      ldr r2, [r0, #0xc]
006dab7c  02 30 63 e0                                      rsb r3, r3, r2
006dab80  43 31 a0 e1                                      asr r3, r3, #2
006dab84  03 01 83 e0                                      add r0, r3, r3, lsl #2
006dab88  00 02 80 e0                                      add r0, r0, r0, lsl #4
006dab8c  00 04 80 e0                                      add r0, r0, r0, lsl #8
006dab90  00 08 80 e0                                      add r0, r0, r0, lsl #16
006dab94  80 00 83 e0                                      add r0, r3, r0, lsl #1
006dab98  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dab9c, declared_size=100, range_size=100, mode=arm
; class-group: glitch::video::CVideoModeList
; alias: _ZNK6glitch5video14CVideoModeList22getVideoModeResolutionEi
; demangled: glitch::video::CVideoModeList::getVideoModeResolution(int) const
; decoder-mode: arm
006dab9c  00 00 52 e3                                      cmp r2, #0
006daba0  0a 00 00 ba                                      blt #0x6dabd0
006daba4  0c 30 91 e5                                      ldr r3, [r1, #0xc]
006daba8  08 10 91 e5                                      ldr r1, [r1, #8]
006dabac  03 30 61 e0                                      rsb r3, r1, r3
006dabb0  43 31 a0 e1                                      asr r3, r3, #2
006dabb4  03 c1 83 e0                                      add ip, r3, r3, lsl #2
006dabb8  0c c2 8c e0                                      add ip, ip, ip, lsl #4
006dabbc  0c c4 8c e0                                      add ip, ip, ip, lsl #8
006dabc0  0c c8 8c e0                                      add ip, ip, ip, lsl #16
006dabc4  8c 30 83 e0                                      add r3, r3, ip, lsl #1
006dabc8  03 00 52 e1                                      cmp r2, r3
006dabcc  03 00 00 da                                      ble #0x6dabe0
006dabd0  00 30 a0 e3                                      mov r3, #0
006dabd4  04 30 80 e5                                      str r3, [r0, #4]
006dabd8  00 30 80 e5                                      str r3, [r0]
006dabdc  1e ff 2f e1                                      bx lr
006dabe0  0c 30 a0 e3                                      mov r3, #0xc
006dabe4  93 02 02 e0                                      mul r2, r3, r2
006dabe8  02 30 91 e7                                      ldr r3, [r1, r2]
006dabec  02 20 81 e0                                      add r2, r1, r2
006dabf0  00 30 80 e5                                      str r3, [r0]
006dabf4  04 30 92 e5                                      ldr r3, [r2, #4]
006dabf8  04 30 80 e5                                      str r3, [r0, #4]
006dabfc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dac00, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::CVideoModeList
; alias: _ZNK6glitch5video14CVideoModeList17getVideoModeDepthEi
; demangled: glitch::video::CVideoModeList::getVideoModeDepth(int) const
; decoder-mode: arm
006dac00  00 00 51 e3                                      cmp r1, #0
006dac04  0a 00 00 ba                                      blt #0x6dac34
006dac08  0c 30 90 e5                                      ldr r3, [r0, #0xc]
006dac0c  08 00 90 e5                                      ldr r0, [r0, #8]
006dac10  03 30 60 e0                                      rsb r3, r0, r3
006dac14  43 31 a0 e1                                      asr r3, r3, #2
006dac18  03 21 83 e0                                      add r2, r3, r3, lsl #2
006dac1c  02 22 82 e0                                      add r2, r2, r2, lsl #4
006dac20  02 24 82 e0                                      add r2, r2, r2, lsl #8
006dac24  02 28 82 e0                                      add r2, r2, r2, lsl #16
006dac28  82 30 83 e0                                      add r3, r3, r2, lsl #1
006dac2c  03 00 51 e1                                      cmp r1, r3
006dac30  01 00 00 da                                      ble #0x6dac3c
006dac34  00 00 a0 e3                                      mov r0, #0
006dac38  1e ff 2f e1                                      bx lr
006dac3c  0c 30 a0 e3                                      mov r3, #0xc
006dac40  93 01 21 e0                                      mla r1, r3, r1, r0
006dac44  08 00 91 e5                                      ldr r0, [r1, #8]
006dac48  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dac4c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CVideoModeList
; alias: _ZNK6glitch5video14CVideoModeList20getDesktopResolutionEv
; demangled: glitch::video::CVideoModeList::getDesktopResolution() const
; decoder-mode: arm
006dac4c  14 00 80 e2                                      add r0, r0, #0x14
006dac50  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dac54, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CVideoModeList
; alias: _ZNK6glitch5video14CVideoModeList15getDesktopDepthEv
; demangled: glitch::video::CVideoModeList::getDesktopDepth() const
; decoder-mode: arm
006dac54  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
006dac58  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dae50, declared_size=64, range_size=64, mode=arm
; class-group: glitch::video::CVideoModeList
; alias: _ZN6glitch5video14CVideoModeListD1Ev
; demangled: glitch::video::CVideoModeList::~CVideoModeList()
; decoder-mode: arm
006dae50  10 40 2d e9                                      push {r4, lr}
006dae54  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
006dae58  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
006dae5c  00 40 a0 e1                                      mov r4, r0
006dae60  03 30 8f e0                                      add r3, pc, r3
006dae64  08 00 90 e5                                      ldr r0, [r0, #8]
006dae68  02 20 93 e7                                      ldr r2, [r3, r2]
006dae6c  00 00 50 e3                                      cmp r0, #0
006dae70  08 20 82 e2                                      add r2, r2, #8
006dae74  00 20 84 e5                                      str r2, [r4]
006dae78  00 00 00 0a                                      beq #0x6dae80
006dae7c  73 d5 f0 eb                                      bl #0x310450
006dae80  04 00 a0 e1                                      mov r0, r4
006dae84  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006dae88  30 9c 2b 00 4c 49 00 00                          .byte 0x30, 0x9c, 0x2b, 0x00, 0x4c, 0x49, 0x00, 0x00

; FUNCTION 0x006dae90, declared_size=532, range_size=532, mode=arm
; class-group: glitch::video::CVideoModeList
; alias: _ZN6glitch5video14CVideoModeList7addModeERKNS_4core11dimension2dIiEEi
; demangled: glitch::video::CVideoModeList::addMode(glitch::core::dimension2d<int> const&, int)
; decoder-mode: arm
006dae90  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006dae94  0c 50 90 e5                                      ldr r5, [r0, #0xc]
006dae98  08 30 90 e5                                      ldr r3, [r0, #8]
006dae9c  00 40 a0 e1                                      mov r4, r0
006daea0  08 d0 4d e2                                      sub sp, sp, #8
006daea4  05 00 63 e0                                      rsb r0, r3, r5
006daea8  40 01 a0 e1                                      asr r0, r0, #2
006daeac  00 60 91 e5                                      ldr r6, [r1]
006daeb0  00 a1 80 e0                                      add sl, r0, r0, lsl #2
006daeb4  04 70 91 e5                                      ldr r7, [r1, #4]
006daeb8  0a a2 8a e0                                      add sl, sl, sl, lsl #4
006daebc  0a a4 8a e0                                      add sl, sl, sl, lsl #8
006daec0  0a a8 8a e0                                      add sl, sl, sl, lsl #16
006daec4  8a a0 90 e0                                      adds sl, r0, sl, lsl #1
006daec8  12 00 00 0a                                      beq #0x6daf18
006daecc  00 10 a0 e3                                      mov r1, #0
006daed0  01 00 a0 e1                                      mov r0, r1
006daed4  02 00 00 ea                                      b #0x6daee4
006daed8  0a 00 50 e1                                      cmp r0, sl
006daedc  0c 10 81 e2                                      add r1, r1, #0xc
006daee0  0c 00 00 0a                                      beq #0x6daf18
006daee4  01 c0 93 e7                                      ldr ip, [r3, r1]
006daee8  01 00 80 e2                                      add r0, r0, #1
006daeec  01 80 83 e0                                      add r8, r3, r1
006daef0  06 00 5c e1                                      cmp ip, r6
006daef4  f7 ff ff 1a                                      bne #0x6daed8
006daef8  04 c0 98 e5                                      ldr ip, [r8, #4]
006daefc  07 00 5c e1                                      cmp ip, r7
006daf00  f4 ff ff 1a                                      bne #0x6daed8
006daf04  08 c0 98 e5                                      ldr ip, [r8, #8]
006daf08  0c 00 52 e1                                      cmp r2, ip
006daf0c  f1 ff ff 1a                                      bne #0x6daed8
006daf10  08 d0 8d e2                                      add sp, sp, #8
006daf14  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006daf18  10 30 94 e5                                      ldr r3, [r4, #0x10]
006daf1c  05 00 53 e1                                      cmp r3, r5
006daf20  13 00 00 0a                                      beq #0x6daf74
006daf24  00 60 85 e5                                      str r6, [r5]
006daf28  08 20 85 e5                                      str r2, [r5, #8]
006daf2c  04 70 85 e5                                      str r7, [r5, #4]
006daf30  0c 50 94 e5                                      ldr r5, [r4, #0xc]
006daf34  08 a0 94 e5                                      ldr sl, [r4, #8]
006daf38  0c 50 85 e2                                      add r5, r5, #0xc
006daf3c  0c 50 84 e5                                      str r5, [r4, #0xc]
006daf40  05 50 6a e0                                      rsb r5, sl, r5
006daf44  45 51 a0 e1                                      asr r5, r5, #2
006daf48  05 11 85 e0                                      add r1, r5, r5, lsl #2
006daf4c  01 12 81 e0                                      add r1, r1, r1, lsl #4
006daf50  01 14 81 e0                                      add r1, r1, r1, lsl #8
006daf54  01 18 81 e0                                      add r1, r1, r1, lsl #16
006daf58  81 10 85 e0                                      add r1, r5, r1, lsl #1
006daf5c  01 00 51 e3                                      cmp r1, #1
006daf60  ea ff ff 9a                                      bls #0x6daf10
006daf64  0a 00 a0 e1                                      mov r0, sl
006daf68  08 d0 8d e2                                      add sp, sp, #8
006daf6c  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
006daf70  85 ff ff ea                                      b #0x6dad8c
006daf74  55 35 05 e3                                      movw r3, #0x5555
006daf78  01 00 5a e3                                      cmp sl, #1
006daf7c  0a 10 8a 20                                      addhs r1, sl, sl
006daf80  01 10 8a 32                                      addlo r1, sl, #1
006daf84  03 37 83 e1                                      orr r3, r3, r3, lsl #14
006daf88  03 00 51 e1                                      cmp r1, r3
006daf8c  42 00 00 8a                                      bhi #0x6db09c
006daf90  01 00 5a e1                                      cmp sl, r1
006daf94  0c 80 a0 93                                      movls r8, #0xc
006daf98  98 01 08 90                                      mulls r8, r8, r1
006daf9c  3e 00 00 8a                                      bhi #0x6db09c
006dafa0  08 00 a0 e1                                      mov r0, r8
006dafa4  00 10 a0 e3                                      mov r1, #0
006dafa8  04 20 8d e5                                      str r2, [sp, #4]
006dafac  6d d5 f0 eb                                      bl #0x310568
006dafb0  08 e0 94 e5                                      ldr lr, [r4, #8]
006dafb4  00 a0 a0 e1                                      mov sl, r0
006dafb8  04 20 9d e5                                      ldr r2, [sp, #4]
006dafbc  05 30 6e e0                                      rsb r3, lr, r5
006dafc0  43 31 a0 e1                                      asr r3, r3, #2
006dafc4  03 91 83 e0                                      add sb, r3, r3, lsl #2
006dafc8  09 92 89 e0                                      add sb, sb, sb, lsl #4
006dafcc  09 94 89 e0                                      add sb, sb, sb, lsl #8
006dafd0  09 98 89 e0                                      add sb, sb, sb, lsl #16
006dafd4  89 90 83 e0                                      add sb, r3, sb, lsl #1
006dafd8  00 00 59 e3                                      cmp sb, #0
006dafdc  00 90 a0 d1                                      movle sb, r0
006dafe0  10 00 00 da                                      ble #0x6db028
006dafe4  09 c0 a0 e1                                      mov ip, sb
006dafe8  00 30 a0 e3                                      mov r3, #0
006dafec  03 10 9e e7                                      ldr r1, [lr, r3]
006daff0  03 00 8e e0                                      add r0, lr, r3
006daff4  04 00 80 e2                                      add r0, r0, #4
006daff8  03 10 8a e7                                      str r1, [sl, r3]
006daffc  04 50 90 e4                                      ldr r5, [r0], #4
006db000  03 10 8a e0                                      add r1, sl, r3
006db004  04 10 81 e2                                      add r1, r1, #4
006db008  04 50 81 e4                                      str r5, [r1], #4
006db00c  00 00 90 e5                                      ldr r0, [r0]
006db010  01 c0 5c e2                                      subs ip, ip, #1
006db014  0c 30 83 e2                                      add r3, r3, #0xc
006db018  00 00 81 e5                                      str r0, [r1]
006db01c  f2 ff ff 1a                                      bne #0x6dafec
006db020  0c 30 a0 e3                                      mov r3, #0xc
006db024  93 a9 29 e0                                      mla sb, r3, sb, sl
006db028  09 50 a0 e1                                      mov r5, sb
006db02c  08 20 89 e5                                      str r2, [sb, #8]
006db030  04 70 89 e5                                      str r7, [sb, #4]
006db034  0c 60 85 e4                                      str r6, [r5], #0xc
006db038  0c 00 94 e5                                      ldr r0, [r4, #0xc]
006db03c  08 30 94 e5                                      ldr r3, [r4, #8]
006db040  03 00 50 e1                                      cmp r0, r3
006db044  0e 00 00 0a                                      beq #0x6db084
006db048  0c 20 40 e2                                      sub r2, r0, #0xc
006db04c  02 30 63 e0                                      rsb r3, r3, r2
006db050  23 31 a0 e1                                      lsr r3, r3, #2
006db054  03 21 83 e0                                      add r2, r3, r3, lsl #2
006db058  82 22 82 e0                                      add r2, r2, r2, lsl #5
006db05c  82 20 83 e0                                      add r2, r3, r2, lsl #1
006db060  82 22 82 e0                                      add r2, r2, r2, lsl #5
006db064  82 17 a0 e1                                      lsl r1, r2, #0xf
006db068  01 20 62 e0                                      rsb r2, r2, r1
006db06c  82 30 83 e0                                      add r3, r3, r2, lsl #1
006db070  03 31 c3 e3                                      bic r3, r3, #0xc0000000
006db074  0b 20 e0 e3                                      mvn r2, #0xb
006db078  92 03 03 e0                                      mul r3, r2, r3
006db07c  02 30 83 e0                                      add r3, r3, r2
006db080  03 00 80 e0                                      add r0, r0, r3
006db084  08 80 8a e0                                      add r8, sl, r8
006db088  f0 d4 f0 eb                                      bl #0x310450
006db08c  10 80 84 e5                                      str r8, [r4, #0x10]
006db090  08 a0 84 e5                                      str sl, [r4, #8]
006db094  0c 50 84 e5                                      str r5, [r4, #0xc]
006db098  a8 ff ff ea                                      b #0x6daf40
006db09c  03 80 e0 e3                                      mvn r8, #3
006db0a0  be ff ff ea                                      b #0x6dafa0

; FUNCTION 0x006db0a4, declared_size=72, range_size=72, mode=arm
; class-group: glitch::video::CVideoModeList
; alias: _ZN6glitch5video14CVideoModeListD0Ev
; demangled: glitch::video::CVideoModeList::~CVideoModeList()
; decoder-mode: arm
006db0a4  10 40 2d e9                                      push {r4, lr}
006db0a8  34 30 9f e5                                      ldr r3, [pc, #0x34]
006db0ac  34 20 9f e5                                      ldr r2, [pc, #0x34]
006db0b0  00 40 a0 e1                                      mov r4, r0
006db0b4  03 30 8f e0                                      add r3, pc, r3
006db0b8  08 00 90 e5                                      ldr r0, [r0, #8]
006db0bc  02 20 93 e7                                      ldr r2, [r3, r2]
006db0c0  00 00 50 e3                                      cmp r0, #0
006db0c4  08 20 82 e2                                      add r2, r2, #8
006db0c8  00 20 84 e5                                      str r2, [r4]
006db0cc  00 00 00 0a                                      beq #0x6db0d4
006db0d0  de d4 f0 eb                                      bl #0x310450
006db0d4  04 00 a0 e1                                      mov r0, r4
006db0d8  74 cc f0 eb                                      bl #0x30e2b0
006db0dc  04 00 a0 e1                                      mov r0, r4
006db0e0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006db0e4  dc 99 2b 00 4c 49 00 00                          .byte 0xdc, 0x99, 0x2b, 0x00, 0x4c, 0x49, 0x00, 0x00
