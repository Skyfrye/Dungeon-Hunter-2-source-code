; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a4cb8, declared_size=76, range_size=76, mode=arm
; class-group: glitch::core::detail::SSharedStringHeapEntry
; alias: _ZNK6glitch4core6detail22SSharedStringHeapEntry6commitEv
; demangled: glitch::core::detail::SSharedStringHeapEntry::commit() const
; decoder-mode: arm
006a4cb8  70 40 2d e9                                      push {r4, r5, r6, lr}
006a4cbc  00 30 90 e5                                      ldr r3, [r0]
006a4cc0  00 50 a0 e1                                      mov r5, r0
006a4cc4  00 40 93 e5                                      ldr r4, [r3]
006a4cc8  04 00 a0 e1                                      mov r0, r4
006a4ccc  60 a4 f1 eb                                      bl #0x30de54
006a4cd0  05 00 80 e2                                      add r0, r0, #5
006a4cd4  08 00 50 e3                                      cmp r0, #8
006a4cd8  08 00 a0 33                                      movlo r0, #8
006a4cdc  00 10 a0 e3                                      mov r1, #0
006a4ce0  30 3d fa eb                                      bl #0x5341a8
006a4ce4  00 20 a0 e3                                      mov r2, #0
006a4ce8  00 30 a0 e1                                      mov r3, r0
006a4cec  00 00 85 e5                                      str r0, [r5]
006a4cf0  04 20 83 e4                                      str r2, [r3], #4
006a4cf4  03 00 a0 e1                                      mov r0, r3
006a4cf8  04 10 a0 e1                                      mov r1, r4
006a4cfc  70 40 bd e8                                      pop {r4, r5, r6, lr}
006a4d00  06 a6 f1 ea                                      b #0x30e520
