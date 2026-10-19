; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00341bcc, declared_size=300, range_size=300, mode=arm
; class-group: SortModuleByDistance
; alias: _ZN20SortModuleByDistanceclEPK6ModuleS2_
; demangled: SortModuleByDistance::operator()(Module const*, Module const*)
; decoder-mode: arm
00341bcc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00341bd0  00 40 90 e5                                      ldr r4, [r0]
00341bd4  01 50 a0 e1                                      mov r5, r1
00341bd8  00 60 a0 e1                                      mov r6, r0
00341bdc  60 11 91 e5                                      ldr r1, [r1, #0x160]
00341be0  60 01 94 e5                                      ldr r0, [r4, #0x160]
00341be4  02 70 a0 e1                                      mov r7, r2
00341be8  ef 31 ff eb                                      bl #0x30e3ac
00341bec  64 11 95 e5                                      ldr r1, [r5, #0x164]
00341bf0  00 a0 a0 e1                                      mov sl, r0
00341bf4  64 01 94 e5                                      ldr r0, [r4, #0x164]
00341bf8  eb 31 ff eb                                      bl #0x30e3ac
00341bfc  68 11 95 e5                                      ldr r1, [r5, #0x168]
00341c00  00 80 a0 e1                                      mov r8, r0
00341c04  68 01 94 e5                                      ldr r0, [r4, #0x168]
00341c08  e7 31 ff eb                                      bl #0x30e3ac
00341c0c  0a 10 a0 e1                                      mov r1, sl
00341c10  00 50 a0 e1                                      mov r5, r0
00341c14  0a 00 a0 e1                                      mov r0, sl
00341c18  53 34 ff eb                                      bl #0x30ed6c
00341c1c  08 10 a0 e1                                      mov r1, r8
00341c20  00 40 a0 e1                                      mov r4, r0
00341c24  08 00 a0 e1                                      mov r0, r8
00341c28  4f 34 ff eb                                      bl #0x30ed6c
00341c2c  00 10 a0 e1                                      mov r1, r0
00341c30  04 00 a0 e1                                      mov r0, r4
00341c34  da 33 ff eb                                      bl #0x30eba4
00341c38  05 10 a0 e1                                      mov r1, r5
00341c3c  00 40 a0 e1                                      mov r4, r0
00341c40  05 00 a0 e1                                      mov r0, r5
00341c44  48 34 ff eb                                      bl #0x30ed6c
00341c48  00 10 a0 e1                                      mov r1, r0
00341c4c  04 00 a0 e1                                      mov r0, r4
00341c50  d3 33 ff eb                                      bl #0x30eba4
00341c54  32 31 ff eb                                      bl #0x30e124
00341c58  00 40 96 e5                                      ldr r4, [r6]
00341c5c  60 11 97 e5                                      ldr r1, [r7, #0x160]
00341c60  00 80 a0 e1                                      mov r8, r0
00341c64  60 01 94 e5                                      ldr r0, [r4, #0x160]
00341c68  cf 31 ff eb                                      bl #0x30e3ac
00341c6c  64 11 97 e5                                      ldr r1, [r7, #0x164]
00341c70  00 90 a0 e1                                      mov sb, r0
00341c74  64 01 94 e5                                      ldr r0, [r4, #0x164]
00341c78  cb 31 ff eb                                      bl #0x30e3ac
00341c7c  68 11 97 e5                                      ldr r1, [r7, #0x168]
00341c80  00 a0 a0 e1                                      mov sl, r0
00341c84  68 01 94 e5                                      ldr r0, [r4, #0x168]
00341c88  c7 31 ff eb                                      bl #0x30e3ac
00341c8c  09 10 a0 e1                                      mov r1, sb
00341c90  00 60 a0 e1                                      mov r6, r0
00341c94  09 00 a0 e1                                      mov r0, sb
00341c98  33 34 ff eb                                      bl #0x30ed6c
00341c9c  0a 10 a0 e1                                      mov r1, sl
00341ca0  00 40 a0 e1                                      mov r4, r0
00341ca4  0a 00 a0 e1                                      mov r0, sl
00341ca8  2f 34 ff eb                                      bl #0x30ed6c
00341cac  00 10 a0 e1                                      mov r1, r0
00341cb0  04 00 a0 e1                                      mov r0, r4
00341cb4  ba 33 ff eb                                      bl #0x30eba4
00341cb8  06 10 a0 e1                                      mov r1, r6
00341cbc  00 40 a0 e1                                      mov r4, r0
00341cc0  06 00 a0 e1                                      mov r0, r6
00341cc4  28 34 ff eb                                      bl #0x30ed6c
00341cc8  00 10 a0 e1                                      mov r1, r0
00341ccc  04 00 a0 e1                                      mov r0, r4
00341cd0  b3 33 ff eb                                      bl #0x30eba4
00341cd4  12 31 ff eb                                      bl #0x30e124
00341cd8  00 10 a0 e1                                      mov r1, r0
00341cdc  08 00 a0 e1                                      mov r0, r8
00341ce0  89 32 ff eb                                      bl #0x30e70c
00341ce4  00 00 50 e3                                      cmp r0, #0
00341ce8  00 50 a0 e3                                      mov r5, #0
00341cec  01 50 a0 13                                      movne r5, #1
00341cf0  01 00 05 e2                                      and r0, r5, #1
00341cf4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
