; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006be730, declared_size=56, range_size=56, mode=arm
; class-group: glitch::scene::CMeshCache::MeshEntry
; alias: _ZN6glitch5scene10CMeshCache9MeshEntryD1Ev
; demangled: glitch::scene::CMeshCache::MeshEntry::~MeshEntry()
; decoder-mode: arm
006be730  10 40 2d e9                                      push {r4, lr}
006be734  00 40 a0 e1                                      mov r4, r0
006be738  18 00 90 e5                                      ldr r0, [r0, #0x18]
006be73c  00 00 50 e3                                      cmp r0, #0
006be740  00 00 00 0a                                      beq #0x6be748
006be744  8e 7b f1 eb                                      bl #0x31d584
006be748  14 00 94 e5                                      ldr r0, [r4, #0x14]
006be74c  04 00 50 e1                                      cmp r0, r4
006be750  02 00 00 0a                                      beq #0x6be760
006be754  00 00 50 e3                                      cmp r0, #0
006be758  00 00 00 0a                                      beq #0x6be760
006be75c  3b 47 f1 eb                                      bl #0x310450
006be760  04 00 a0 e1                                      mov r0, r4
006be764  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006be7c0, declared_size=80, range_size=80, mode=arm
; class-group: glitch::scene::CMeshCache::MeshEntry
; alias: _ZN6glitch5scene10CMeshCache9MeshEntryaSERKS2_
; demangled: glitch::scene::CMeshCache::MeshEntry::operator=(glitch::scene::CMeshCache::MeshEntry const&)
; decoder-mode: arm
006be7c0  01 00 50 e1                                      cmp r0, r1
006be7c4  70 40 2d e9                                      push {r4, r5, r6, lr}
006be7c8  01 50 a0 e1                                      mov r5, r1
006be7cc  00 40 a0 e1                                      mov r4, r0
006be7d0  02 00 00 0a                                      beq #0x6be7e0
006be7d4  14 10 91 e5                                      ldr r1, [r1, #0x14]
006be7d8  10 20 95 e5                                      ldr r2, [r5, #0x10]
006be7dc  e9 88 f1 eb                                      bl #0x320b88
006be7e0  18 30 95 e5                                      ldr r3, [r5, #0x18]
006be7e4  00 00 53 e3                                      cmp r3, #0
006be7e8  04 20 93 15                                      ldrne r2, [r3, #4]
006be7ec  01 20 82 12                                      addne r2, r2, #1
006be7f0  04 20 83 15                                      strne r2, [r3, #4]
006be7f4  18 00 94 e5                                      ldr r0, [r4, #0x18]
006be7f8  18 30 84 e5                                      str r3, [r4, #0x18]
006be7fc  00 00 50 e3                                      cmp r0, #0
006be800  00 00 00 0a                                      beq #0x6be808
006be804  5e 7b f1 eb                                      bl #0x31d584
006be808  04 00 a0 e1                                      mov r0, r4
006be80c  70 80 bd e8                                      pop {r4, r5, r6, pc}
