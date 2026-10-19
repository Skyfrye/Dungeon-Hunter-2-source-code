; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060def4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::IAnimationTrackEx
; alias: _ZN6glitch7collada17IAnimationTrackExD1Ev
; demangled: glitch::collada::IAnimationTrackEx::~IAnimationTrackEx()
; decoder-mode: arm
0060def4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060def8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::IAnimationTrackEx
; alias: _ZNK6glitch7collada17IAnimationTrackEx17applyBlendedValueEPvPfiS2_PNS0_15animation_track15CApplicatorInfoE
; demangled: glitch::collada::IAnimationTrackEx::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0060def8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060defc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::IAnimationTrackEx
; alias: _ZNK6glitch7collada17IAnimationTrackEx15applyAddedValueEPvPfiS2_PNS0_15animation_track15CApplicatorInfoE
; demangled: glitch::collada::IAnimationTrackEx::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0060defc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060df00, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::IAnimationTrackEx
; alias: _ZNK6glitch7collada17IAnimationTrackEx15getBlendedValueEPvPfiS2_f
; demangled: glitch::collada::IAnimationTrackEx::getBlendedValue(void*, float*, int, void*, float) const
; decoder-mode: arm
0060df00  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060df04, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::IAnimationTrackEx
; alias: _ZNK6glitch7collada17IAnimationTrackEx13getAddedValueEPvPfiS2_f
; demangled: glitch::collada::IAnimationTrackEx::getAddedValue(void*, float*, int, void*, float) const
; decoder-mode: arm
0060df04  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060df08, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::IAnimationTrackEx
; alias: _ZNK6glitch7collada17IAnimationTrackEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPvf
; demangled: glitch::collada::IAnimationTrackEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, float) const
; decoder-mode: arm
0060df08  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060df0c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::IAnimationTrackEx
; alias: _ZNK6glitch7collada17IAnimationTrackEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiPvf
; demangled: glitch::collada::IAnimationTrackEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, float) const
; decoder-mode: arm
0060df0c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060df10, declared_size=44, range_size=44, mode=arm
; class-group: glitch::collada::IAnimationTrackEx
; alias: _ZNK6glitch7collada17IAnimationTrackEx18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS0_15animation_track15CApplicatorInfoE
; demangled: glitch::collada::IAnimationTrackEx::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0060df10  04 e0 2d e5                                      str lr, [sp, #-4]!
0060df14  0c d0 4d e2                                      sub sp, sp, #0xc
0060df18  10 e0 9d e5                                      ldr lr, [sp, #0x10]
0060df1c  00 c0 90 e5                                      ldr ip, [r0]
0060df20  00 e0 8d e5                                      str lr, [sp]
0060df24  14 e0 9d e5                                      ldr lr, [sp, #0x14]
0060df28  04 e0 8d e5                                      str lr, [sp, #4]
0060df2c  0f e0 a0 e1                                      mov lr, pc
0060df30  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0060df34  0c d0 8d e2                                      add sp, sp, #0xc
0060df38  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0060df3c, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::IAnimationTrackEx
; alias: _ZNK6glitch7collada17IAnimationTrackEx18applyKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::IAnimationTrackEx::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
0060df3c  04 e0 2d e5                                      str lr, [sp, #-4]!
0060df40  14 d0 4d e2                                      sub sp, sp, #0x14
0060df44  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0060df48  00 c0 8d e5                                      str ip, [sp]
0060df4c  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0060df50  04 c0 8d e5                                      str ip, [sp, #4]
0060df54  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0060df58  08 c0 8d e5                                      str ip, [sp, #8]
0060df5c  00 c0 90 e5                                      ldr ip, [r0]
0060df60  0f e0 a0 e1                                      mov lr, pc
0060df64  24 f0 9c e5                                      ldr pc, [ip, #0x24]
0060df68  14 d0 8d e2                                      add sp, sp, #0x14
0060df6c  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0060df70, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::IAnimationTrackEx
; alias: _ZNK6glitch7collada17IAnimationTrackEx18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS0_15animation_track15CApplicatorInfoE
; demangled: glitch::collada::IAnimationTrackEx::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0060df70  10 40 2d e9                                      push {r4, lr}
0060df74  00 c0 90 e5                                      ldr ip, [r0]
0060df78  0f e0 a0 e1                                      mov lr, pc
0060df7c  28 f0 9c e5                                      ldr pc, [ip, #0x28]
0060df80  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0060df84, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::IAnimationTrackEx
; alias: _ZNK6glitch7collada17IAnimationTrackEx18applyKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::IAnimationTrackEx::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
0060df84  04 e0 2d e5                                      str lr, [sp, #-4]!
0060df88  0c d0 4d e2                                      sub sp, sp, #0xc
0060df8c  10 e0 9d e5                                      ldr lr, [sp, #0x10]
0060df90  00 c0 90 e5                                      ldr ip, [r0]
0060df94  00 e0 8d e5                                      str lr, [sp]
0060df98  0f e0 a0 e1                                      mov lr, pc
0060df9c  2c f0 9c e5                                      ldr pc, [ip, #0x2c]
0060dfa0  0c d0 8d e2                                      add sp, sp, #0xc
0060dfa4  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0060dfa8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::IAnimationTrackEx
; alias: _ZNK6glitch7collada17IAnimationTrackEx17applyBlendedValueEPvPfiS2_PNS0_15animation_track15CApplicatorInfoEf
; demangled: glitch::collada::IAnimationTrackEx::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*, float) const
; decoder-mode: arm
0060dfa8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060dfac, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::IAnimationTrackEx
; alias: _ZNK6glitch7collada17IAnimationTrackEx15applyAddedValueEPvPfiS2_PNS0_15animation_track15CApplicatorInfoEf
; demangled: glitch::collada::IAnimationTrackEx::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*, float) const
; decoder-mode: arm
0060dfac  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060dfb0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::IAnimationTrackEx
; alias: _ZNK6glitch7collada17IAnimationTrackEx18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS0_15animation_track15CApplicatorInfoEf
; demangled: glitch::collada::IAnimationTrackEx::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*, float) const
; decoder-mode: arm
0060dfb0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060dfb4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::IAnimationTrackEx
; alias: _ZNK6glitch7collada17IAnimationTrackEx18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS0_15animation_track15CApplicatorInfoEf
; demangled: glitch::collada::IAnimationTrackEx::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*, float) const
; decoder-mode: arm
0060dfb4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060dfb8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::IAnimationTrackEx
; alias: _ZNK6glitch7collada17IAnimationTrackEx10applyValueERKNS0_18SAnimationAccessorEiPvPNS0_15animation_track15CApplicatorInfoEb
; demangled: glitch::collada::IAnimationTrackEx::applyValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*, bool) const
; decoder-mode: arm
0060dfb8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060dfbc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::IAnimationTrackEx
; alias: _ZNK6glitch7collada17IAnimationTrackEx10applyValueERKNS0_18SAnimationAccessorEiPvPNS0_15animation_track15CApplicatorInfoERib
; demangled: glitch::collada::IAnimationTrackEx::applyValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*, int&, bool) const
; decoder-mode: arm
0060dfbc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f4e4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::IAnimationTrackEx
; alias: _ZN6glitch7collada17IAnimationTrackExD0Ev
; demangled: glitch::collada::IAnimationTrackEx::~IAnimationTrackEx()
; decoder-mode: arm
0060f4e4  10 40 2d e9                                      push {r4, lr}
0060f4e8  00 40 a0 e1                                      mov r4, r0
0060f4ec  6f fb f3 eb                                      bl #0x30e2b0
0060f4f0  04 00 a0 e1                                      mov r0, r4
0060f4f4  10 80 bd e8                                      pop {r4, pc}
