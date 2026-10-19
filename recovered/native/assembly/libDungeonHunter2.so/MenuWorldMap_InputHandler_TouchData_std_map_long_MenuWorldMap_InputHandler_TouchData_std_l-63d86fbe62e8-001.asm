; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00436cb4, declared_size=168, range_size=168, mode=arm
; class-group: MenuWorldMap::InputHandler::TouchData& std::map<long, MenuWorldMap::InputHandler::TouchData, std::less<long>, std::allocator<std::pair<long const, MenuWorldMap::InputHandler::TouchData> > >
; alias: _ZNSt3mapIlN12MenuWorldMap12InputHandler9TouchDataESt4lessIlESaISt4pairIKlS2_EEEixIlEERS2_RKT_
; demangled: MenuWorldMap::InputHandler::TouchData& std::map<long, MenuWorldMap::InputHandler::TouchData, std::less<long>, std::allocator<std::pair<long const, MenuWorldMap::InputHandler::TouchData> > >::operator[]<long>(long const&)
; decoder-mode: arm
00436cb4  10 40 2d e9                                      push {r4, lr}
00436cb8  04 c0 90 e5                                      ldr ip, [r0, #4]
00436cbc  18 d0 4d e2                                      sub sp, sp, #0x18
00436cc0  00 00 5c e3                                      cmp ip, #0
00436cc4  21 00 00 0a                                      beq #0x436d50
00436cc8  00 40 91 e5                                      ldr r4, [r1]
00436ccc  00 20 a0 e1                                      mov r2, r0
00436cd0  00 00 00 ea                                      b #0x436cd8
00436cd4  03 c0 a0 e1                                      mov ip, r3
00436cd8  10 30 9c e5                                      ldr r3, [ip, #0x10]
00436cdc  03 00 54 e1                                      cmp r4, r3
00436ce0  0c 30 9c c5                                      ldrgt r3, [ip, #0xc]
00436ce4  08 30 9c d5                                      ldrle r3, [ip, #8]
00436ce8  02 c0 a0 c1                                      movgt ip, r2
00436cec  0c 20 a0 e1                                      mov r2, ip
00436cf0  00 00 53 e3                                      cmp r3, #0
00436cf4  f6 ff ff 1a                                      bne #0x436cd4
00436cf8  0c 00 50 e1                                      cmp r0, ip
00436cfc  03 00 00 0a                                      beq #0x436d10
00436d00  10 20 9c e5                                      ldr r2, [ip, #0x10]
00436d04  0c 30 a0 e1                                      mov r3, ip
00436d08  04 00 52 e1                                      cmp r2, r4
00436d0c  0c 00 00 da                                      ble #0x436d44
00436d10  00 10 a0 e1                                      mov r1, r0
00436d14  04 30 8d e2                                      add r3, sp, #4
00436d18  10 c0 8d e5                                      str ip, [sp, #0x10]
00436d1c  14 00 8d e2                                      add r0, sp, #0x14
00436d20  00 c0 a0 e3                                      mov ip, #0
00436d24  10 20 8d e2                                      add r2, sp, #0x10
00436d28  04 40 8d e5                                      str r4, [sp, #4]
00436d2c  be c0 cd e1                                      strh ip, [sp, #0xe]
00436d30  bc c0 cd e1                                      strh ip, [sp, #0xc]
00436d34  ba c0 cd e1                                      strh ip, [sp, #0xa]
00436d38  b8 c0 cd e1                                      strh ip, [sp, #8]
00436d3c  ff fe ff eb                                      bl #0x436940
00436d40  14 30 9d e5                                      ldr r3, [sp, #0x14]
00436d44  14 00 83 e2                                      add r0, r3, #0x14
00436d48  18 d0 8d e2                                      add sp, sp, #0x18
00436d4c  10 80 bd e8                                      pop {r4, pc}
00436d50  00 40 91 e5                                      ldr r4, [r1]
00436d54  00 c0 a0 e1                                      mov ip, r0
00436d58  e6 ff ff ea                                      b #0x436cf8
