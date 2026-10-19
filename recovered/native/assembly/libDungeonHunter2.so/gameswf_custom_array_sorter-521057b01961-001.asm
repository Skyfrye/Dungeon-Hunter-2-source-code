; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00799514, declared_size=156, range_size=156, mode=arm
; class-group: gameswf::custom_array_sorter
; alias: _ZN7gameswf19custom_array_sorterclERKNS_8as_valueES3_
; demangled: gameswf::custom_array_sorter::operator()(gameswf::as_value const&, gameswf::as_value const&)
; decoder-mode: arm
00799514  30 40 2d e9                                      push {r4, r5, lr}
00799518  00 40 a0 e1                                      mov r4, r0
0079951c  24 d0 4d e2                                      sub sp, sp, #0x24
00799520  02 50 a0 e1                                      mov r5, r2
00799524  04 00 90 e5                                      ldr r0, [r0, #4]
00799528  da 3e ff eb                                      bl #0x769098
0079952c  05 10 a0 e1                                      mov r1, r5
00799530  04 00 94 e5                                      ldr r0, [r4, #4]
00799534  d7 3e ff eb                                      bl #0x769098
00799538  04 20 94 e5                                      ldr r2, [r4, #4]
0079953c  02 30 a0 e3                                      mov r3, #2
00799540  00 30 8d e5                                      str r3, [sp]
00799544  04 e0 92 e5                                      ldr lr, [r2, #4]
00799548  00 10 94 e5                                      ldr r1, [r4]
0079954c  58 c0 9f e5                                      ldr ip, [pc, #0x58]
00799550  14 50 8d e2                                      add r5, sp, #0x14
00799554  01 e0 4e e2                                      sub lr, lr, #1
00799558  0c c0 8f e0                                      add ip, pc, ip
0079955c  01 30 a0 e1                                      mov r3, r1
00799560  05 00 a0 e1                                      mov r0, r5
00799564  04 e0 8d e5                                      str lr, [sp, #4]
00799568  08 c0 8d e5                                      str ip, [sp, #8]
0079956c  e4 84 00 eb                                      bl #0x7ba904
00799570  04 00 94 e5                                      ldr r0, [r4, #4]
00799574  04 10 90 e5                                      ldr r1, [r0, #4]
00799578  02 10 41 e2                                      sub r1, r1, #2
0079957c  88 95 ff eb                                      bl #0x77eba4
00799580  05 00 a0 e1                                      mov r0, r5
00799584  32 f9 ff eb                                      bl #0x797a54
00799588  25 d5 ed eb                                      bl #0x30ea24
0079958c  01 00 50 e3                                      cmp r0, #1
00799590  00 40 a0 13                                      movne r4, #0
00799594  01 40 a0 03                                      moveq r4, #1
00799598  05 00 a0 e1                                      mov r0, r5
0079959c  e0 f6 ff eb                                      bl #0x797124
007995a0  04 00 a0 e1                                      mov r0, r4
007995a4  24 d0 8d e2                                      add sp, sp, #0x24
007995a8  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
007995ac  e0 40 13 00                                      .byte 0xe0, 0x40, 0x13, 0x00
