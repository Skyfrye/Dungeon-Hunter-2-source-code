; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00368dac, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZThn88_NK6glitch7collada33CSceneNodeAnimatorSynchronizedSet14getNumSegmentsEv
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedSet::getNumSegments() const
; decoder-mode: arm
00368dac  58 00 40 e2                                      sub r0, r0, #0x58
00368db0  ff ff ff ea                                      b #0x368db4

; FUNCTION 0x00368db4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZNK6glitch7collada33CSceneNodeAnimatorSynchronizedSet14getNumSegmentsEv
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedSet::getNumSegments() const
; decoder-mode: arm
00368db4  6c 00 90 e5                                      ldr r0, [r0, #0x6c]
00368db8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00368dbc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZThn88_NK6glitch7collada33CSceneNodeAnimatorSynchronizedSet24getSynchronizationLengthEj
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationLength(unsigned int) const
; decoder-mode: arm
00368dbc  58 00 40 e2                                      sub r0, r0, #0x58
00368dc0  ff ff ff ea                                      b #0x368dc4

; FUNCTION 0x00368dc4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZNK6glitch7collada33CSceneNodeAnimatorSynchronizedSet24getSynchronizationLengthEj
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationLength(unsigned int) const
; decoder-mode: arm
00368dc4  60 30 90 e5                                      ldr r3, [r0, #0x60]
00368dc8  81 32 83 e0                                      add r3, r3, r1, lsl #5
00368dcc  04 00 93 e5                                      ldr r0, [r3, #4]
00368dd0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00368dd4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZThn88_NK6glitch7collada33CSceneNodeAnimatorSynchronizedSet24getSynchronizationLengthEij
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationLength(int, unsigned int) const
; decoder-mode: arm
00368dd4  58 00 40 e2                                      sub r0, r0, #0x58
00368dd8  ff ff ff ea                                      b #0x368ddc

; FUNCTION 0x00368ddc, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZNK6glitch7collada33CSceneNodeAnimatorSynchronizedSet24getSynchronizationLengthEij
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationLength(int, unsigned int) const
; decoder-mode: arm
00368ddc  10 40 2d e9                                      push {r4, lr}
00368de0  02 10 a0 e1                                      mov r1, r2
00368de4  00 30 90 e5                                      ldr r3, [r0]
00368de8  0f e0 a0 e1                                      mov lr, pc
00368dec  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00368df0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00368df4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZThn88_NK6glitch7collada33CSceneNodeAnimatorSynchronizedSet27getSynchronizationTimestampEj
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationTimestamp(unsigned int) const
; decoder-mode: arm
00368df4  58 00 40 e2                                      sub r0, r0, #0x58
00368df8  ff ff ff ea                                      b #0x368dfc

; FUNCTION 0x00368dfc, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZNK6glitch7collada33CSceneNodeAnimatorSynchronizedSet27getSynchronizationTimestampEj
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationTimestamp(unsigned int) const
; decoder-mode: arm
00368dfc  60 30 90 e5                                      ldr r3, [r0, #0x60]
00368e00  81 02 93 e7                                      ldr r0, [r3, r1, lsl #5]
00368e04  1e ff 2f e1                                      bx lr

; FUNCTION 0x00368e08, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZThn88_NK6glitch7collada33CSceneNodeAnimatorSynchronizedSet27getSynchronizationTimestampEij
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationTimestamp(int, unsigned int) const
; decoder-mode: arm
00368e08  58 00 40 e2                                      sub r0, r0, #0x58
00368e0c  ff ff ff ea                                      b #0x368e10

; FUNCTION 0x00368e10, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZNK6glitch7collada33CSceneNodeAnimatorSynchronizedSet27getSynchronizationTimestampEij
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationTimestamp(int, unsigned int) const
; decoder-mode: arm
00368e10  10 40 2d e9                                      push {r4, lr}
00368e14  02 10 a0 e1                                      mov r1, r2
00368e18  00 30 90 e5                                      ldr r3, [r0]
00368e1c  0f e0 a0 e1                                      mov lr, pc
00368e20  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00368e24  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00368e28, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZThn88_NK6glitch7collada33CSceneNodeAnimatorSynchronizedSet25getSynchronizationSegmentEi
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationSegment(int) const
; decoder-mode: arm
00368e28  58 00 40 e2                                      sub r0, r0, #0x58
00368e2c  ff ff ff ea                                      b #0x368e30

; FUNCTION 0x00368e30, declared_size=84, range_size=84, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZNK6glitch7collada33CSceneNodeAnimatorSynchronizedSet25getSynchronizationSegmentEi
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationSegment(int) const
; decoder-mode: arm
00368e30  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00368e34  6c 60 90 e5                                      ldr r6, [r0, #0x6c]
00368e38  00 50 a0 e1                                      mov r5, r0
00368e3c  01 70 a0 e1                                      mov r7, r1
00368e40  00 00 56 e3                                      cmp r6, #0
00368e44  01 60 46 e2                                      sub r6, r6, #1
00368e48  0b 00 00 0a                                      beq #0x368e7c
00368e4c  00 40 a0 e3                                      mov r4, #0
00368e50  04 10 a0 e1                                      mov r1, r4
00368e54  00 30 95 e5                                      ldr r3, [r5]
00368e58  05 00 a0 e1                                      mov r0, r5
00368e5c  0f e0 a0 e1                                      mov lr, pc
00368e60  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00368e64  6c 30 95 e5                                      ldr r3, [r5, #0x6c]
00368e68  07 00 50 e1                                      cmp r0, r7
00368e6c  04 60 a0 d1                                      movle r6, r4
00368e70  01 40 84 e2                                      add r4, r4, #1
00368e74  04 00 53 e1                                      cmp r3, r4
00368e78  f4 ff ff 8a                                      bhi #0x368e50
00368e7c  06 00 a0 e1                                      mov r0, r6
00368e80  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00368e84, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZThn88_NK6glitch7collada33CSceneNodeAnimatorSynchronizedSet25getSynchronizationSegmentEii
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationSegment(int, int) const
; decoder-mode: arm
00368e84  58 00 40 e2                                      sub r0, r0, #0x58
00368e88  ff ff ff ea                                      b #0x368e8c

; FUNCTION 0x00368e8c, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZNK6glitch7collada33CSceneNodeAnimatorSynchronizedSet25getSynchronizationSegmentEii
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationSegment(int, int) const
; decoder-mode: arm
00368e8c  10 40 2d e9                                      push {r4, lr}
00368e90  02 10 a0 e1                                      mov r1, r2
00368e94  00 30 90 e5                                      ldr r3, [r0]
00368e98  0f e0 a0 e1                                      mov lr, pc
00368e9c  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00368ea0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00368ea4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZThn88_NK6glitch7collada33CSceneNodeAnimatorSynchronizedSet13hasReachedEndEv
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedSet::hasReachedEnd() const
; decoder-mode: arm
00368ea4  58 00 40 e2                                      sub r0, r0, #0x58
00368ea8  ff ff ff ea                                      b #0x368eac

; FUNCTION 0x00368eac, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZNK6glitch7collada33CSceneNodeAnimatorSynchronizedSet13hasReachedEndEv
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedSet::hasReachedEnd() const
; decoder-mode: arm
00368eac  80 00 d0 e5                                      ldrb r0, [r0, #0x80]
00368eb0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00368eb4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZThn88_NK6glitch7collada33CSceneNodeAnimatorSynchronizedSet29getSynchronizationElapsedTimeEv
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationElapsedTime() const
; decoder-mode: arm
00368eb4  58 00 40 e2                                      sub r0, r0, #0x58
00368eb8  ff ff ff ea                                      b #0x368ebc

; FUNCTION 0x00368ebc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZNK6glitch7collada33CSceneNodeAnimatorSynchronizedSet29getSynchronizationElapsedTimeEv
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationElapsedTime() const
; decoder-mode: arm
00368ebc  10 40 2d e9                                      push {r4, lr}
00368ec0  7c 00 90 e5                                      ldr r0, [r0, #0x7c]
00368ec4  80 95 fe eb                                      bl #0x30e4cc
00368ec8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00368ecc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZThn88_NK6glitch7collada33CSceneNodeAnimatorSynchronizedSet28getSynchronizationPercentageEv
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationPercentage() const
; decoder-mode: arm
00368ecc  58 00 40 e2                                      sub r0, r0, #0x58
00368ed0  ff ff ff ea                                      b #0x368ed4

; FUNCTION 0x00368ed4, declared_size=40, range_size=40, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZNK6glitch7collada33CSceneNodeAnimatorSynchronizedSet28getSynchronizationPercentageEv
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationPercentage() const
; decoder-mode: arm
00368ed4  10 40 2d e9                                      push {r4, lr}
00368ed8  00 30 90 e5                                      ldr r3, [r0]
00368edc  7c 40 90 e5                                      ldr r4, [r0, #0x7c]
00368ee0  0f e0 a0 e1                                      mov lr, pc
00368ee4  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00368ee8  9d 96 fe eb                                      bl #0x30e964
00368eec  00 10 a0 e1                                      mov r1, r0
00368ef0  04 00 a0 e1                                      mov r0, r4
00368ef4  66 97 fe eb                                      bl #0x30ec94
00368ef8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00662748, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZThn88_N6glitch7collada33CSceneNodeAnimatorSynchronizedSet18fillInputTimeStartEv
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedSet::fillInputTimeStart()
; decoder-mode: arm
00662748  58 00 40 e2                                      sub r0, r0, #0x58
0066274c  ff ff ff ea                                      b #0x662750

; FUNCTION 0x00662750, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZN6glitch7collada33CSceneNodeAnimatorSynchronizedSet18fillInputTimeStartEv
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedSet::fillInputTimeStart()
; decoder-mode: arm
00662750  1e ff 2f e1                                      bx lr

; FUNCTION 0x00662754, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZThn88_N6glitch7collada33CSceneNodeAnimatorSynchronizedSet16fillInputTimeEndEv
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedSet::fillInputTimeEnd()
; decoder-mode: arm
00662754  58 00 40 e2                                      sub r0, r0, #0x58
00662758  ff ff ff ea                                      b #0x66275c

; FUNCTION 0x0066275c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZN6glitch7collada33CSceneNodeAnimatorSynchronizedSet16fillInputTimeEndEv
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedSet::fillInputTimeEnd()
; decoder-mode: arm
0066275c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00662760, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZThn88_N6glitch7collada33CSceneNodeAnimatorSynchronizedSet35fillInputSynchronizationElapsedTimeEv
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedSet::fillInputSynchronizationElapsedTime()
; decoder-mode: arm
00662760  58 00 40 e2                                      sub r0, r0, #0x58
00662764  ff ff ff ea                                      b #0x662768

; FUNCTION 0x00662768, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZN6glitch7collada33CSceneNodeAnimatorSynchronizedSet35fillInputSynchronizationElapsedTimeEv
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedSet::fillInputSynchronizationElapsedTime()
; decoder-mode: arm
00662768  1e ff 2f e1                                      bx lr

; FUNCTION 0x0066278c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZThn88_N6glitch7collada33CSceneNodeAnimatorSynchronizedSet34computeSynchronizedAnimationValuesEf
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedSet::computeSynchronizedAnimationValues(float)
; decoder-mode: arm
0066278c  58 00 40 e2                                      sub r0, r0, #0x58
00662790  ff ff ff ea                                      b #0x662794

; FUNCTION 0x00662794, declared_size=232, range_size=232, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZN6glitch7collada33CSceneNodeAnimatorSynchronizedSet34computeSynchronizedAnimationValuesEf
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedSet::computeSynchronizedAnimationValues(float)
; decoder-mode: arm
00662794  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00662798  00 30 a0 e3                                      mov r3, #0
0066279c  80 30 c0 e5                                      strb r3, [r0, #0x80]
006627a0  00 30 90 e5                                      ldr r3, [r0]
006627a4  00 40 a0 e1                                      mov r4, r0
006627a8  01 50 a0 e1                                      mov r5, r1
006627ac  0f e0 a0 e1                                      mov lr, pc
006627b0  48 f0 93 e5                                      ldr pc, [r3, #0x48]
006627b4  00 30 94 e5                                      ldr r3, [r4]
006627b8  00 a0 a0 e1                                      mov sl, r0
006627bc  04 00 a0 e1                                      mov r0, r4
006627c0  7c 60 94 e5                                      ldr r6, [r4, #0x7c]
006627c4  0f e0 a0 e1                                      mov lr, pc
006627c8  48 f0 93 e5                                      ldr pc, [r3, #0x48]
006627cc  64 b0 f2 eb                                      bl #0x30e964
006627d0  00 10 a0 e1                                      mov r1, r0
006627d4  06 00 a0 e1                                      mov r0, r6
006627d8  04 b0 f2 eb                                      bl #0x30e7f0
006627dc  00 30 94 e5                                      ldr r3, [r4]
006627e0  00 80 a0 e1                                      mov r8, r0
006627e4  04 00 a0 e1                                      mov r0, r4
006627e8  0f e0 a0 e1                                      mov lr, pc
006627ec  48 f0 93 e5                                      ldr pc, [r3, #0x48]
006627f0  00 70 a0 e1                                      mov r7, r0
006627f4  0a 00 a0 e1                                      mov r0, sl
006627f8  59 b0 f2 eb                                      bl #0x30e964
006627fc  05 10 a0 e1                                      mov r1, r5
00662800  59 b1 f2 eb                                      bl #0x30ed6c
00662804  30 af f2 eb                                      bl #0x30e4cc
00662808  00 a0 a0 e1                                      mov sl, r0
0066280c  06 00 a0 e1                                      mov r0, r6
00662810  2d af f2 eb                                      bl #0x30e4cc
00662814  0a 00 60 e0                                      rsb r0, r0, sl
00662818  51 b0 f2 eb                                      bl #0x30e964
0066281c  08 10 a0 e1                                      mov r1, r8
00662820  df b0 f2 eb                                      bl #0x30eba4
00662824  00 60 a0 e1                                      mov r6, r0
00662828  07 00 a0 e1                                      mov r0, r7
0066282c  4c b0 f2 eb                                      bl #0x30e964
00662830  00 10 a0 e1                                      mov r1, r0
00662834  06 00 a0 e1                                      mov r0, r6
00662838  1d af f2 eb                                      bl #0x30e4b4
0066283c  00 00 50 e3                                      cmp r0, #0
00662840  01 30 a0 13                                      movne r3, #1
00662844  80 30 c4 15                                      strbne r3, [r4, #0x80]
00662848  04 00 a0 e1                                      mov r0, r4
0066284c  00 30 94 e5                                      ldr r3, [r4]
00662850  0f e0 a0 e1                                      mov lr, pc
00662854  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00662858  41 b0 f2 eb                                      bl #0x30e964
0066285c  05 10 a0 e1                                      mov r1, r5
00662860  41 b1 f2 eb                                      bl #0x30ed6c
00662864  7c 00 84 e5                                      str r0, [r4, #0x7c]
00662868  8c 6e 09 eb                                      bl #0x8be2a0
0066286c  00 10 a0 e1                                      mov r1, r0
00662870  04 00 a0 e1                                      mov r0, r4
00662874  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00662878  57 f3 ff ea                                      b #0x65f5dc

; FUNCTION 0x0066287c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZThn88_N6glitch7collada33CSceneNodeAnimatorSynchronizedSet32applySynchronizedAnimationValuesEf
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedSet::applySynchronizedAnimationValues(float)
; decoder-mode: arm
0066287c  58 00 40 e2                                      sub r0, r0, #0x58
00662880  ff ff ff ea                                      b #0x662884

; FUNCTION 0x00662884, declared_size=204, range_size=204, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZN6glitch7collada33CSceneNodeAnimatorSynchronizedSet32applySynchronizedAnimationValuesEf
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedSet::applySynchronizedAnimationValues(float)
; decoder-mode: arm
00662884  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00662888  00 30 a0 e3                                      mov r3, #0
0066288c  80 30 c0 e5                                      strb r3, [r0, #0x80]
00662890  00 30 90 e5                                      ldr r3, [r0]
00662894  00 40 a0 e1                                      mov r4, r0
00662898  01 50 a0 e1                                      mov r5, r1
0066289c  0f e0 a0 e1                                      mov lr, pc
006628a0  48 f0 93 e5                                      ldr pc, [r3, #0x48]
006628a4  2e b0 f2 eb                                      bl #0x30e964
006628a8  05 10 a0 e1                                      mov r1, r5
006628ac  2e b1 f2 eb                                      bl #0x30ed6c
006628b0  05 af f2 eb                                      bl #0x30e4cc
006628b4  00 30 94 e5                                      ldr r3, [r4]
006628b8  00 50 a0 e1                                      mov r5, r0
006628bc  04 00 a0 e1                                      mov r0, r4
006628c0  7c 60 94 e5                                      ldr r6, [r4, #0x7c]
006628c4  0f e0 a0 e1                                      mov lr, pc
006628c8  48 f0 93 e5                                      ldr pc, [r3, #0x48]
006628cc  24 b0 f2 eb                                      bl #0x30e964
006628d0  00 10 a0 e1                                      mov r1, r0
006628d4  06 00 a0 e1                                      mov r0, r6
006628d8  c4 af f2 eb                                      bl #0x30e7f0
006628dc  00 30 94 e5                                      ldr r3, [r4]
006628e0  00 80 a0 e1                                      mov r8, r0
006628e4  04 00 a0 e1                                      mov r0, r4
006628e8  0f e0 a0 e1                                      mov lr, pc
006628ec  48 f0 93 e5                                      ldr pc, [r3, #0x48]
006628f0  00 70 a0 e1                                      mov r7, r0
006628f4  06 00 a0 e1                                      mov r0, r6
006628f8  f3 ae f2 eb                                      bl #0x30e4cc
006628fc  05 00 60 e0                                      rsb r0, r0, r5
00662900  17 b0 f2 eb                                      bl #0x30e964
00662904  08 10 a0 e1                                      mov r1, r8
00662908  a5 b0 f2 eb                                      bl #0x30eba4
0066290c  00 60 a0 e1                                      mov r6, r0
00662910  07 00 a0 e1                                      mov r0, r7
00662914  12 b0 f2 eb                                      bl #0x30e964
00662918  00 10 a0 e1                                      mov r1, r0
0066291c  06 00 a0 e1                                      mov r0, r6
00662920  e3 ae f2 eb                                      bl #0x30e4b4
00662924  00 00 50 e3                                      cmp r0, #0
00662928  01 30 a0 13                                      movne r3, #1
0066292c  80 30 c4 15                                      strbne r3, [r4, #0x80]
00662930  05 00 a0 e1                                      mov r0, r5
00662934  0a b0 f2 eb                                      bl #0x30e964
00662938  7c 00 84 e5                                      str r0, [r4, #0x7c]
0066293c  57 6e 09 eb                                      bl #0x8be2a0
00662940  00 10 a0 e1                                      mov r1, r0
00662944  04 00 a0 e1                                      mov r0, r4
00662948  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0066294c  b1 f2 ff ea                                      b #0x65f418

; FUNCTION 0x00662b50, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZThn88_N6glitch7collada33CSceneNodeAnimatorSynchronizedSetD1Ev
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet()
; decoder-mode: arm
00662b50  58 00 40 e2                                      sub r0, r0, #0x58
00662b54  01 00 00 ea                                      b #0x662b60

; FUNCTION 0x00662b58, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZThn4_N6glitch7collada33CSceneNodeAnimatorSynchronizedSetD1Ev
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet()
; decoder-mode: arm
00662b58  04 00 40 e2                                      sub r0, r0, #4
00662b5c  ff ff ff ea                                      b #0x662b60

; FUNCTION 0x00662b60, declared_size=132, range_size=132, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZN6glitch7collada33CSceneNodeAnimatorSynchronizedSetD1Ev
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet()
; decoder-mode: arm
00662b60  70 40 2d e9                                      push {r4, r5, r6, lr}
00662b64  68 50 9f e5                                      ldr r5, [pc, #0x68]
00662b68  68 30 9f e5                                      ldr r3, [pc, #0x68]
00662b6c  00 40 a0 e1                                      mov r4, r0
00662b70  05 50 8f e0                                      add r5, pc, r5
00662b74  03 30 95 e7                                      ldr r3, [r5, r3]
00662b78  70 00 80 e2                                      add r0, r0, #0x70
00662b7c  f4 20 83 e2                                      add r2, r3, #0xf4
00662b80  0c c0 83 e2                                      add ip, r3, #0xc
00662b84  52 1f 83 e2                                      add r1, r3, #0x148
00662b88  e0 30 83 e2                                      add r3, r3, #0xe0
00662b8c  00 c0 84 e5                                      str ip, [r4]
00662b90  84 10 84 e5                                      str r1, [r4, #0x84]
00662b94  04 30 84 e5                                      str r3, [r4, #4]
00662b98  58 20 84 e5                                      str r2, [r4, #0x58]
00662b9c  fa 4a f8 eb                                      bl #0x47578c
00662ba0  60 00 84 e2                                      add r0, r4, #0x60
00662ba4  d8 ff ff eb                                      bl #0x662b0c
00662ba8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00662bac  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
00662bb0  04 00 a0 e1                                      mov r0, r4
00662bb4  03 30 95 e7                                      ldr r3, [r5, r3]
00662bb8  01 10 95 e7                                      ldr r1, [r5, r1]
00662bbc  08 30 83 e2                                      add r3, r3, #8
00662bc0  58 30 84 e5                                      str r3, [r4, #0x58]
00662bc4  04 10 81 e2                                      add r1, r1, #4
00662bc8  d7 f3 ff eb                                      bl #0x65fb2c
00662bcc  04 00 a0 e1                                      mov r0, r4
00662bd0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00662bd4  20 1f 33 00 ec 29 00 00 dc 31 00 00 d4 35 00 00  .byte 0x20, 0x1f, 0x33, 0x00, 0xec, 0x29, 0x00, 0x00, 0xdc, 0x31, 0x00, 0x00, 0xd4, 0x35, 0x00, 0x00

; FUNCTION 0x00662be4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZThn88_N6glitch7collada33CSceneNodeAnimatorSynchronizedSetD0Ev
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet()
; decoder-mode: arm
00662be4  58 00 40 e2                                      sub r0, r0, #0x58
00662be8  01 00 00 ea                                      b #0x662bf4

; FUNCTION 0x00662bec, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZThn4_N6glitch7collada33CSceneNodeAnimatorSynchronizedSetD0Ev
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet()
; decoder-mode: arm
00662bec  04 00 40 e2                                      sub r0, r0, #4
00662bf0  ff ff ff ea                                      b #0x662bf4

; FUNCTION 0x00662bf4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZN6glitch7collada33CSceneNodeAnimatorSynchronizedSetD0Ev
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet()
; decoder-mode: arm
00662bf4  10 40 2d e9                                      push {r4, lr}
00662bf8  00 40 a0 e1                                      mov r4, r0
00662bfc  d7 ff ff eb                                      bl #0x662b60
00662c00  04 00 a0 e1                                      mov r0, r4
00662c04  a9 ad f2 eb                                      bl #0x30e2b0
00662c08  04 00 a0 e1                                      mov r0, r4
00662c0c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00662c10, declared_size=128, range_size=128, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZN6glitch7collada33CSceneNodeAnimatorSynchronizedSetD2Ev
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet()
; decoder-mode: arm
00662c10  70 40 2d e9                                      push {r4, r5, r6, lr}
00662c14  68 50 9f e5                                      ldr r5, [pc, #0x68]
00662c18  00 20 91 e5                                      ldr r2, [r1]
00662c1c  64 30 9f e5                                      ldr r3, [pc, #0x64]
00662c20  05 50 8f e0                                      add r5, pc, r5
00662c24  00 20 80 e5                                      str r2, [r0]
00662c28  01 60 a0 e1                                      mov r6, r1
00662c2c  03 30 95 e7                                      ldr r3, [r5, r3]
00662c30  00 40 a0 e1                                      mov r4, r0
00662c34  0c 10 12 e5                                      ldr r1, [r2, #-0xc]
00662c38  24 00 96 e5                                      ldr r0, [r6, #0x24]
00662c3c  f4 20 83 e2                                      add r2, r3, #0xf4
00662c40  e0 30 83 e2                                      add r3, r3, #0xe0
00662c44  01 00 84 e7                                      str r0, [r4, r1]
00662c48  04 30 84 e5                                      str r3, [r4, #4]
00662c4c  58 20 84 e5                                      str r2, [r4, #0x58]
00662c50  70 00 84 e2                                      add r0, r4, #0x70
00662c54  cc 4a f8 eb                                      bl #0x47578c
00662c58  60 00 84 e2                                      add r0, r4, #0x60
00662c5c  aa ff ff eb                                      bl #0x662b0c
00662c60  24 30 9f e5                                      ldr r3, [pc, #0x24]
00662c64  04 10 86 e2                                      add r1, r6, #4
00662c68  04 00 a0 e1                                      mov r0, r4
00662c6c  03 30 95 e7                                      ldr r3, [r5, r3]
00662c70  08 30 83 e2                                      add r3, r3, #8
00662c74  58 30 84 e5                                      str r3, [r4, #0x58]
00662c78  ab f3 ff eb                                      bl #0x65fb2c
00662c7c  04 00 a0 e1                                      mov r0, r4
00662c80  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00662c84  70 1e 33 00 ec 29 00 00 dc 31 00 00              .byte 0x70, 0x1e, 0x33, 0x00, 0xec, 0x29, 0x00, 0x00, 0xdc, 0x31, 0x00, 0x00

; FUNCTION 0x00662d10, declared_size=224, range_size=224, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZN6glitch7collada33CSceneNodeAnimatorSynchronizedSetC1ERKN5boost13intrusive_ptrINS0_13CAnimationSetEEERKSt6vectorISsNS_4core10SAllocatorISsLNS_6memory13E_MEMORY_HINTE0EEEE
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedSet::CSceneNodeAnimatorSynchronizedSet(boost::intrusive_ptr<glitch::collada::CAnimationSet> const&, std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
00662d10  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00662d14  c4 50 9f e5                                      ldr r5, [pc, #0xc4]
00662d18  c4 c0 9f e5                                      ldr ip, [pc, #0xc4]
00662d1c  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
00662d20  05 50 8f e0                                      add r5, pc, r5
00662d24  0c c0 95 e7                                      ldr ip, [r5, ip]
00662d28  03 30 95 e7                                      ldr r3, [r5, r3]
00662d2c  01 e0 a0 e3                                      mov lr, #1
00662d30  08 c0 8c e2                                      add ip, ip, #8
00662d34  88 e0 80 e5                                      str lr, [r0, #0x88]
00662d38  84 c0 80 e5                                      str ip, [r0, #0x84]
00662d3c  01 60 a0 e1                                      mov r6, r1
00662d40  04 10 83 e2                                      add r1, r3, #4
00662d44  00 40 a0 e1                                      mov r4, r0
00662d48  02 80 a0 e1                                      mov r8, r2
00662d4c  cf ff ff eb                                      bl #0x662c90
00662d50  94 30 9f e5                                      ldr r3, [pc, #0x94]
00662d54  00 70 a0 e3                                      mov r7, #0
00662d58  60 70 84 e5                                      str r7, [r4, #0x60]
00662d5c  03 30 95 e7                                      ldr r3, [r5, r3]
00662d60  64 70 84 e5                                      str r7, [r4, #0x64]
00662d64  68 70 84 e5                                      str r7, [r4, #0x68]
00662d68  f4 20 83 e2                                      add r2, r3, #0xf4
00662d6c  0c 00 83 e2                                      add r0, r3, #0xc
00662d70  52 1f 83 e2                                      add r1, r3, #0x148
00662d74  e0 30 83 e2                                      add r3, r3, #0xe0
00662d78  00 00 84 e5                                      str r0, [r4]
00662d7c  84 10 84 e5                                      str r1, [r4, #0x84]
00662d80  04 30 84 e5                                      str r3, [r4, #4]
00662d84  58 20 84 e5                                      str r2, [r4, #0x58]
00662d88  04 20 98 e5                                      ldr r2, [r8, #4]
00662d8c  00 30 98 e5                                      ldr r3, [r8]
00662d90  08 10 a0 e1                                      mov r1, r8
00662d94  70 00 84 e2                                      add r0, r4, #0x70
00662d98  02 30 63 e0                                      rsb r3, r3, r2
00662d9c  c3 31 a0 e1                                      asr r3, r3, #3
00662da0  03 21 83 e0                                      add r2, r3, r3, lsl #2
00662da4  02 22 82 e0                                      add r2, r2, r2, lsl #4
00662da8  02 24 82 e0                                      add r2, r2, r2, lsl #8
00662dac  02 28 82 e0                                      add r2, r2, r2, lsl #16
00662db0  82 30 83 e0                                      add r3, r3, r2, lsl #1
00662db4  6c 30 84 e5                                      str r3, [r4, #0x6c]
00662db8  30 ff ff eb                                      bl #0x662a80
00662dbc  00 30 a0 e3                                      mov r3, #0
00662dc0  04 00 a0 e1                                      mov r0, r4
00662dc4  80 70 c4 e5                                      strb r7, [r4, #0x80]
00662dc8  5c 40 84 e5                                      str r4, [r4, #0x5c]
00662dcc  7c 30 84 e5                                      str r3, [r4, #0x7c]
00662dd0  06 10 a0 e1                                      mov r1, r6
00662dd4  46 f7 ff eb                                      bl #0x660af4
00662dd8  04 00 a0 e1                                      mov r0, r4
00662ddc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00662de0  70 1d 33 00 44 2b 00 00 d4 35 00 00 ec 29 00 00  .byte 0x70, 0x1d, 0x33, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xd4, 0x35, 0x00, 0x00, 0xec, 0x29, 0x00, 0x00

; FUNCTION 0x00662df0, declared_size=212, range_size=212, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZN6glitch7collada33CSceneNodeAnimatorSynchronizedSetC2ERKN5boost13intrusive_ptrINS0_13CAnimationSetEEERKSt6vectorISsNS_4core10SAllocatorISsLNS_6memory13E_MEMORY_HINTE0EEEE
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedSet::CSceneNodeAnimatorSynchronizedSet(boost::intrusive_ptr<glitch::collada::CAnimationSet> const&, std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
00662df0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00662df4  01 50 a0 e1                                      mov r5, r1
00662df8  b8 40 9f e5                                      ldr r4, [pc, #0xb8]
00662dfc  04 10 81 e2                                      add r1, r1, #4
00662e00  00 70 a0 e1                                      mov r7, r0
00662e04  03 60 a0 e1                                      mov r6, r3
00662e08  02 a0 a0 e1                                      mov sl, r2
00662e0c  9f ff ff eb                                      bl #0x662c90
00662e10  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
00662e14  04 40 8f e0                                      add r4, pc, r4
00662e18  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
00662e1c  03 30 94 e7                                      ldr r3, [r4, r3]
00662e20  00 80 a0 e3                                      mov r8, #0
00662e24  02 20 94 e7                                      ldr r2, [r4, r2]
00662e28  08 30 83 e2                                      add r3, r3, #8
00662e2c  58 30 87 e5                                      str r3, [r7, #0x58]
00662e30  00 10 95 e5                                      ldr r1, [r5]
00662e34  f4 30 82 e2                                      add r3, r2, #0xf4
00662e38  e0 20 82 e2                                      add r2, r2, #0xe0
00662e3c  00 10 87 e5                                      str r1, [r7]
00662e40  0c c0 11 e5                                      ldr ip, [r1, #-0xc]
00662e44  24 e0 95 e5                                      ldr lr, [r5, #0x24]
00662e48  06 10 a0 e1                                      mov r1, r6
00662e4c  70 00 87 e2                                      add r0, r7, #0x70
00662e50  0c e0 87 e7                                      str lr, [r7, ip]
00662e54  04 20 87 e5                                      str r2, [r7, #4]
00662e58  58 30 87 e5                                      str r3, [r7, #0x58]
00662e5c  60 80 87 e5                                      str r8, [r7, #0x60]
00662e60  64 80 87 e5                                      str r8, [r7, #0x64]
00662e64  68 80 87 e5                                      str r8, [r7, #0x68]
00662e68  04 20 96 e5                                      ldr r2, [r6, #4]
00662e6c  00 30 96 e5                                      ldr r3, [r6]
00662e70  02 30 63 e0                                      rsb r3, r3, r2
00662e74  c3 31 a0 e1                                      asr r3, r3, #3
00662e78  03 21 83 e0                                      add r2, r3, r3, lsl #2
00662e7c  02 22 82 e0                                      add r2, r2, r2, lsl #4
00662e80  02 24 82 e0                                      add r2, r2, r2, lsl #8
00662e84  02 28 82 e0                                      add r2, r2, r2, lsl #16
00662e88  82 30 83 e0                                      add r3, r3, r2, lsl #1
00662e8c  6c 30 87 e5                                      str r3, [r7, #0x6c]
00662e90  fa fe ff eb                                      bl #0x662a80
00662e94  00 30 a0 e3                                      mov r3, #0
00662e98  07 00 a0 e1                                      mov r0, r7
00662e9c  80 80 c7 e5                                      strb r8, [r7, #0x80]
00662ea0  5c 70 87 e5                                      str r7, [r7, #0x5c]
00662ea4  7c 30 87 e5                                      str r3, [r7, #0x7c]
00662ea8  0a 10 a0 e1                                      mov r1, sl
00662eac  10 f7 ff eb                                      bl #0x660af4
00662eb0  07 00 a0 e1                                      mov r0, r7
00662eb4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00662eb8  7c 1c 33 00 dc 31 00 00 ec 29 00 00              .byte 0x7c, 0x1c, 0x33, 0x00, 0xdc, 0x31, 0x00, 0x00, 0xec, 0x29, 0x00, 0x00

; FUNCTION 0x00663324, declared_size=480, range_size=480, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZN6glitch7collada33CSceneNodeAnimatorSynchronizedSet19setCurrentAnimationEi
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedSet::setCurrentAnimation(int)
; decoder-mode: arm
00663324  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00663328  c8 21 9f e5                                      ldr r2, [pc, #0x1c8]
0066332c  c8 31 9f e5                                      ldr r3, [pc, #0x1c8]
00663330  7c d0 4d e2                                      sub sp, sp, #0x7c
00663334  02 20 8f e0                                      add r2, pc, r2
00663338  08 30 8d e5                                      str r3, [sp, #8]
0066333c  03 30 92 e7                                      ldr r3, [r2, r3]
00663340  00 40 a0 e1                                      mov r4, r0
00663344  04 20 8d e5                                      str r2, [sp, #4]
00663348  00 30 93 e5                                      ldr r3, [r3]
0066334c  60 80 80 e2                                      add r8, r0, #0x60
00663350  3c 60 8d e2                                      add r6, sp, #0x3c
00663354  74 30 8d e5                                      str r3, [sp, #0x74]
00663358  5a f1 ff eb                                      bl #0x65f8c8
0066335c  00 30 94 e5                                      ldr r3, [r4]
00663360  04 00 a0 e1                                      mov r0, r4
00663364  18 a0 94 e5                                      ldr sl, [r4, #0x18]
00663368  0f e0 a0 e1                                      mov lr, pc
0066336c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00663370  88 11 9f e5                                      ldr r1, [pc, #0x188]
00663374  6c b0 94 e5                                      ldr fp, [r4, #0x6c]
00663378  08 50 86 e2                                      add r5, r6, #8
0066337c  00 70 a0 e3                                      mov r7, #0
00663380  01 10 8f e0                                      add r1, pc, r1
00663384  14 20 8d e2                                      add r2, sp, #0x14
00663388  00 90 a0 e1                                      mov sb, r0
0066338c  05 00 a0 e1                                      mov r0, r5
00663390  3c 70 8d e5                                      str r7, [sp, #0x3c]
00663394  40 70 8d e5                                      str r7, [sp, #0x40]
00663398  53 c3 f2 eb                                      bl #0x3140ec
0066339c  08 00 a0 e1                                      mov r0, r8
006633a0  0b 10 a0 e1                                      mov r1, fp
006633a4  06 20 a0 e1                                      mov r2, r6
006633a8  c9 ff ff eb                                      bl #0x6632d4
006633ac  05 00 a0 e1                                      mov r0, r5
006633b0  7d c1 f2 eb                                      bl #0x3139ac
006633b4  6c 30 94 e5                                      ldr r3, [r4, #0x6c]
006633b8  07 00 53 e1                                      cmp r3, r7
006633bc  44 00 00 0a                                      beq #0x6634d4
006633c0  18 c0 8d e2                                      add ip, sp, #0x18
006633c4  07 60 a0 e1                                      mov r6, r7
006633c8  5c b0 8d e2                                      add fp, sp, #0x5c
006633cc  00 c0 8d e5                                      str ip, [sp]
006633d0  24 50 8d e2                                      add r5, sp, #0x24
006633d4  0c 90 8d e5                                      str sb, [sp, #0xc]
006633d8  70 20 94 e5                                      ldr r2, [r4, #0x70]
006633dc  00 30 9a e5                                      ldr r3, [sl]
006633e0  0a 00 a0 e1                                      mov r0, sl
006633e4  07 20 82 e0                                      add r2, r2, r7
006633e8  14 80 92 e5                                      ldr r8, [r2, #0x14]
006633ec  08 10 a0 e1                                      mov r1, r8
006633f0  0f e0 a0 e1                                      mov lr, pc
006633f4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006633f8  08 10 a0 e1                                      mov r1, r8
006633fc  00 90 a0 e1                                      mov sb, r0
00663400  00 20 9d e5                                      ldr r2, [sp]
00663404  0b 00 a0 e1                                      mov r0, fp
00663408  60 80 94 e5                                      ldr r8, [r4, #0x60]
0066340c  36 c3 f2 eb                                      bl #0x3140ec
00663410  00 30 a0 e3                                      mov r3, #0
00663414  05 00 a0 e1                                      mov r0, r5
00663418  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
0066341c  70 10 9d e5                                      ldr r1, [sp, #0x70]
00663420  20 30 8d e5                                      str r3, [sp, #0x20]
00663424  1c 90 8d e5                                      str sb, [sp, #0x1c]
00663428  34 50 8d e5                                      str r5, [sp, #0x34]
0066342c  38 50 8d e5                                      str r5, [sp, #0x38]
00663430  ac b8 f2 eb                                      bl #0x3116e8
00663434  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00663438  86 32 88 e0                                      add r3, r8, r6, lsl #5
0066343c  08 00 83 e2                                      add r0, r3, #8
00663440  86 22 88 e7                                      str r2, [r8, r6, lsl #5]
00663444  20 20 9d e5                                      ldr r2, [sp, #0x20]
00663448  05 00 50 e1                                      cmp r0, r5
0066344c  04 20 83 e5                                      str r2, [r3, #4]
00663450  02 00 00 0a                                      beq #0x663460
00663454  38 10 9d e5                                      ldr r1, [sp, #0x38]
00663458  34 20 9d e5                                      ldr r2, [sp, #0x34]
0066345c  5f b5 f2 eb                                      bl #0x3109e0
00663460  05 00 a0 e1                                      mov r0, r5
00663464  50 c1 f2 eb                                      bl #0x3139ac
00663468  0b 00 a0 e1                                      mov r0, fp
0066346c  4e c1 f2 eb                                      bl #0x3139ac
00663470  6c 10 94 e5                                      ldr r1, [r4, #0x6c]
00663474  01 60 86 e2                                      add r6, r6, #1
00663478  18 70 87 e2                                      add r7, r7, #0x18
0066347c  06 00 51 e1                                      cmp r1, r6
00663480  d4 ff ff 8a                                      bhi #0x6633d8
00663484  00 00 51 e3                                      cmp r1, #0
00663488  0c 90 9d e5                                      ldr sb, [sp, #0xc]
0066348c  10 00 00 0a                                      beq #0x6634d4
00663490  00 50 a0 e3                                      mov r5, #0
00663494  85 62 a0 e1                                      lsl r6, r5, #5
00663498  01 50 85 e2                                      add r5, r5, #1
0066349c  05 00 a0 e1                                      mov r0, r5
006634a0  a1 ad f2 eb                                      bl #0x30eb2c
006634a4  60 30 94 e5                                      ldr r3, [r4, #0x60]
006634a8  06 20 93 e7                                      ldr r2, [r3, r6]
006634ac  81 02 93 e7                                      ldr r0, [r3, r1, lsl #5]
006634b0  09 10 a0 e1                                      mov r1, sb
006634b4  06 60 83 e0                                      add r6, r3, r6
006634b8  00 00 62 e0                                      rsb r0, r2, r0
006634bc  09 00 80 e0                                      add r0, r0, sb
006634c0  0f ad f2 eb                                      bl #0x30e904
006634c4  04 10 86 e5                                      str r1, [r6, #4]
006634c8  6c 10 94 e5                                      ldr r1, [r4, #0x6c]
006634cc  05 00 51 e1                                      cmp r1, r5
006634d0  ef ff ff 8a                                      bhi #0x663494
006634d4  02 10 9d e9                                      ldmib sp, {r1, ip}
006634d8  74 20 9d e5                                      ldr r2, [sp, #0x74]
006634dc  0c 30 91 e7                                      ldr r3, [r1, ip]
006634e0  00 30 93 e5                                      ldr r3, [r3]
006634e4  03 00 52 e1                                      cmp r2, r3
006634e8  01 00 00 1a                                      bne #0x6634f4
006634ec  7c d0 8d e2                                      add sp, sp, #0x7c
006634f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006634f4  85 ab f2 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006634f8  5c 17 33 00 ac 40 00 00 88 84 26 00              .byte 0x5c, 0x17, 0x33, 0x00, 0xac, 0x40, 0x00, 0x00, 0x88, 0x84, 0x26, 0x00

; FUNCTION 0x00663504, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZTv0_n12_N6glitch7collada33CSceneNodeAnimatorSynchronizedSetD0Ev
; demangled: virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet()
; decoder-mode: arm
00663504  00 30 90 e5                                      ldr r3, [r0]
00663508  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0066350c  03 00 80 e0                                      add r0, r0, r3
00663510  b7 fd ff ea                                      b #0x662bf4

; FUNCTION 0x00663514, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet
; alias: _ZTv0_n12_N6glitch7collada33CSceneNodeAnimatorSynchronizedSetD1Ev
; demangled: virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet()
; decoder-mode: arm
00663514  00 30 90 e5                                      ldr r3, [r0]
00663518  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0066351c  03 00 80 e0                                      add r0, r0, r3
00663520  8e fd ff ea                                      b #0x662b60
