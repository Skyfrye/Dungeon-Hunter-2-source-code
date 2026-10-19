; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00556d64, declared_size=112, range_size=112, mode=arm
; class-group: glitch::gui::CGUITable::Cell* std::vector<glitch::gui::CGUITable::Cell, glitch::core::SAllocator<glitch::gui::CGUITable::Cell, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui9CGUITable4CellENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_allocate_and_copyIPKS3_EEPS3_RjT_SF_
; demangled: glitch::gui::CGUITable::Cell* std::vector<glitch::gui::CGUITable::Cell, glitch::core::SAllocator<glitch::gui::CGUITable::Cell, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_and_copy<glitch::gui::CGUITable::Cell const*>(unsigned int&, glitch::gui::CGUITable::Cell const*, glitch::gui::CGUITable::Cell const*)
; decoder-mode: arm
00556d64  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00556d68  00 10 91 e5                                      ldr r1, [r1]
00556d6c  98 00 a0 e3                                      mov r0, #0x98
00556d70  03 50 a0 e1                                      mov r5, r3
00556d74  90 01 00 e0                                      mul r0, r0, r1
00556d78  00 10 a0 e3                                      mov r1, #0
00556d7c  02 40 a0 e1                                      mov r4, r2
00556d80  f8 e5 f6 eb                                      bl #0x310568
00556d84  05 60 64 e0                                      rsb r6, r4, r5
00556d88  c6 61 a0 e1                                      asr r6, r6, #3
00556d8c  00 70 a0 e1                                      mov r7, r0
00556d90  86 60 86 e0                                      add r6, r6, r6, lsl #1
00556d94  86 61 86 e0                                      add r6, r6, r6, lsl #3
00556d98  86 34 a0 e1                                      lsl r3, r6, #9
00556d9c  03 60 66 e0                                      rsb r6, r6, r3
00556da0  06 69 86 e0                                      add r6, r6, r6, lsl #18
00556da4  00 60 66 e2                                      rsb r6, r6, #0
00556da8  00 00 56 e3                                      cmp r6, #0
00556dac  06 00 00 da                                      ble #0x556dcc
00556db0  00 50 a0 e3                                      mov r5, #0
00556db4  05 00 87 e0                                      add r0, r7, r5
00556db8  05 10 84 e0                                      add r1, r4, r5
00556dbc  b3 fc ff eb                                      bl #0x556090
00556dc0  01 60 56 e2                                      subs r6, r6, #1
00556dc4  98 50 85 e2                                      add r5, r5, #0x98
00556dc8  f9 ff ff 1a                                      bne #0x556db4
00556dcc  07 00 a0 e1                                      mov r0, r7
00556dd0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
