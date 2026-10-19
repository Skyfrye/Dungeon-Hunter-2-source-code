; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a55a4, declared_size=44, range_size=44, mode=thumb
; class-group: std::priv::_Time_Info_Base
; alias: _ZNSt4priv15_Time_Info_BaseD2Ev
; demangled: std::priv::_Time_Info_Base::~_Time_Info_Base()
; decoder-mode: thumb
008a55a4  10 b5                                            push {r4, lr}
008a55a6  04 1c                                            adds r4, r0, #0
008a55a8  60 30                                            adds r0, #0x60
008a55aa  6e f6 00 e2                                      blx #0x3139ac
008a55ae  20 1c                                            adds r0, r4, #0
008a55b0  48 30                                            adds r0, #0x48
008a55b2  6e f6 fc e1                                      blx #0x3139ac
008a55b6  20 1c                                            adds r0, r4, #0
008a55b8  30 30                                            adds r0, #0x30
008a55ba  6e f6 f8 e1                                      blx #0x3139ac
008a55be  20 1c                                            adds r0, r4, #0
008a55c0  18 30                                            adds r0, #0x18
008a55c2  6e f6 f4 e1                                      blx #0x3139ac
008a55c6  20 1c                                            adds r0, r4, #0
008a55c8  6e f6 f0 e1                                      blx #0x3139ac
008a55cc  20 1c                                            adds r0, r4, #0
008a55ce  10 bd                                            pop {r4, pc}

; FUNCTION 0x008bbad0, declared_size=96, range_size=96, mode=thumb
; class-group: std::priv::_Time_Info_Base
; alias: _ZNSt4priv15_Time_Info_BaseC2Ev
; demangled: std::priv::_Time_Info_Base::_Time_Info_Base()
; decoder-mode: thumb
008bbad0  70 b5                                            push {r4, r5, r6, lr}
008bbad2  04 1c                                            adds r4, r0, #0
008bbad4  20 61                                            str r0, [r4, #0x10]
008bbad6  60 61                                            str r0, [r4, #0x14]
008bbad8  10 21                                            movs r1, #0x10
008bbada  55 f6 d0 e5                                      blx #0x31167c
008bbade  23 69                                            ldr r3, [r4, #0x10]
008bbae0  20 1c                                            adds r0, r4, #0
008bbae2  00 25                                            movs r5, #0
008bbae4  18 30                                            adds r0, #0x18
008bbae6  1d 70                                            strb r5, [r3]
008bbae8  10 21                                            movs r1, #0x10
008bbaea  a0 62                                            str r0, [r4, #0x28]
008bbaec  e0 62                                            str r0, [r4, #0x2c]
008bbaee  55 f6 c6 e5                                      blx #0x31167c
008bbaf2  a3 6a                                            ldr r3, [r4, #0x28]
008bbaf4  20 1c                                            adds r0, r4, #0
008bbaf6  30 30                                            adds r0, #0x30
008bbaf8  1d 70                                            strb r5, [r3]
008bbafa  10 21                                            movs r1, #0x10
008bbafc  20 64                                            str r0, [r4, #0x40]
008bbafe  60 64                                            str r0, [r4, #0x44]
008bbb00  55 f6 bc e5                                      blx #0x31167c
008bbb04  23 6c                                            ldr r3, [r4, #0x40]
008bbb06  20 1c                                            adds r0, r4, #0
008bbb08  48 30                                            adds r0, #0x48
008bbb0a  1d 70                                            strb r5, [r3]
008bbb0c  10 21                                            movs r1, #0x10
008bbb0e  a0 65                                            str r0, [r4, #0x58]
008bbb10  e0 65                                            str r0, [r4, #0x5c]
008bbb12  55 f6 b4 e5                                      blx #0x31167c
008bbb16  a3 6d                                            ldr r3, [r4, #0x58]
008bbb18  20 1c                                            adds r0, r4, #0
008bbb1a  60 30                                            adds r0, #0x60
008bbb1c  1d 70                                            strb r5, [r3]
008bbb1e  10 21                                            movs r1, #0x10
008bbb20  20 67                                            str r0, [r4, #0x70]
008bbb22  60 67                                            str r0, [r4, #0x74]
008bbb24  55 f6 aa e5                                      blx #0x31167c
008bbb28  23 6f                                            ldr r3, [r4, #0x70]
008bbb2a  20 1c                                            adds r0, r4, #0
008bbb2c  1d 70                                            strb r5, [r3]
008bbb2e  70 bd                                            pop {r4, r5, r6, pc}
