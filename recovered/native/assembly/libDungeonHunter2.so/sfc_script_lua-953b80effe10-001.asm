; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031a9e8, declared_size=8, range_size=8, mode=arm
; class-group: sfc::script::lua
; alias: _ZN3sfc6script3luaL5panicEP9lua_State
; demangled: sfc::script::lua::panic(lua_State*)
; decoder-mode: arm
0031a9e8  00 00 a0 e3                                      mov r0, #0
0031a9ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031b224, declared_size=68, range_size=68, mode=arm
; class-group: sfc::script::lua
; alias: _ZN3sfc6script3luaL8newstateEv
; demangled: sfc::script::lua::newstate()
; decoder-mode: arm
0031b224  30 30 9f e5                                      ldr r3, [pc, #0x30]
0031b228  30 20 9f e5                                      ldr r2, [pc, #0x30]
0031b22c  10 40 2d e9                                      push {r4, lr}
0031b230  03 30 8f e0                                      add r3, pc, r3
0031b234  00 10 a0 e3                                      mov r1, #0
0031b238  02 00 93 e7                                      ldr r0, [r3, r2]
0031b23c  ed f1 14 eb                                      bl #0x8579f8
0031b240  00 40 50 e2                                      subs r4, r0, #0
0031b244  02 00 00 0a                                      beq #0x31b254
0031b248  14 10 9f e5                                      ldr r1, [pc, #0x14]
0031b24c  01 10 8f e0                                      add r1, pc, r1
0031b250  b1 bf 14 eb                                      bl #0x84b11c
0031b254  04 00 a0 e1                                      mov r0, r4
0031b258  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031b25c  60 98 67 00 6c 2b 00 00 94 f7 ff ff              .byte 0x60, 0x98, 0x67, 0x00, 0x6c, 0x2b, 0x00, 0x00, 0x94, 0xf7, 0xff, 0xff
