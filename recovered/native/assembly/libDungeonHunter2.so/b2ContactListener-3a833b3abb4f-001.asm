; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0034bc1c, declared_size=4, range_size=4, mode=arm
; class-group: b2ContactListener
; alias: _ZN17b2ContactListenerD1Ev
; demangled: b2ContactListener::~b2ContactListener()
; decoder-mode: arm
0034bc1c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034bc20, declared_size=4, range_size=4, mode=arm
; class-group: b2ContactListener
; alias: _ZN17b2ContactListener3AddEPK14b2ContactPoint
; demangled: b2ContactListener::Add(b2ContactPoint const*)
; decoder-mode: arm
0034bc20  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034bc24, declared_size=4, range_size=4, mode=arm
; class-group: b2ContactListener
; alias: _ZN17b2ContactListener7PersistEPK14b2ContactPoint
; demangled: b2ContactListener::Persist(b2ContactPoint const*)
; decoder-mode: arm
0034bc24  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034bc28, declared_size=4, range_size=4, mode=arm
; class-group: b2ContactListener
; alias: _ZN17b2ContactListener6RemoveEPK14b2ContactPoint
; demangled: b2ContactListener::Remove(b2ContactPoint const*)
; decoder-mode: arm
0034bc28  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034bc2c, declared_size=4, range_size=4, mode=arm
; class-group: b2ContactListener
; alias: _ZN17b2ContactListener6ResultEPK15b2ContactResult
; demangled: b2ContactListener::Result(b2ContactResult const*)
; decoder-mode: arm
0034bc2c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034bda4, declared_size=52, range_size=52, mode=arm
; class-group: b2ContactListener
; alias: _ZN17b2ContactListenerD0Ev
; demangled: b2ContactListener::~b2ContactListener()
; decoder-mode: arm
0034bda4  24 30 9f e5                                      ldr r3, [pc, #0x24]
0034bda8  24 20 9f e5                                      ldr r2, [pc, #0x24]
0034bdac  10 40 2d e9                                      push {r4, lr}
0034bdb0  03 30 8f e0                                      add r3, pc, r3
0034bdb4  02 20 93 e7                                      ldr r2, [r3, r2]
0034bdb8  00 40 a0 e1                                      mov r4, r0
0034bdbc  08 20 82 e2                                      add r2, r2, #8
0034bdc0  00 20 80 e5                                      str r2, [r0]
0034bdc4  9d 11 ff eb                                      bl #0x310440
0034bdc8  04 00 a0 e1                                      mov r0, r4
0034bdcc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0034bdd0  e0 8c 64 00 d8 33 00 00                          .byte 0xe0, 0x8c, 0x64, 0x00, 0xd8, 0x33, 0x00, 0x00
