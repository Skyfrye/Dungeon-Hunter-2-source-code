; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0036ddac, declared_size=124, range_size=124, mode=arm
; class-group: ByteArray
; alias: _ZN9ByteArray9SetBufferEPKvi
; demangled: ByteArray::SetBuffer(void const*, int)
; decoder-mode: arm
0036ddac  70 40 2d e9                                      push {r4, r5, r6, lr}
0036ddb0  04 30 90 e5                                      ldr r3, [r0, #4]
0036ddb4  00 40 a0 e1                                      mov r4, r0
0036ddb8  02 60 a0 e1                                      mov r6, r2
0036ddbc  02 00 53 e1                                      cmp r3, r2
0036ddc0  01 50 a0 e1                                      mov r5, r1
0036ddc4  00 00 90 05                                      ldreq r0, [r0]
0036ddc8  0a 00 00 0a                                      beq #0x36ddf8
0036ddcc  00 00 94 e5                                      ldr r0, [r4]
0036ddd0  00 00 50 e3                                      cmp r0, #0
0036ddd4  02 00 00 0a                                      beq #0x36dde4
0036ddd8  98 89 fe eb                                      bl #0x310440
0036dddc  00 30 a0 e3                                      mov r3, #0
0036dde0  00 30 84 e5                                      str r3, [r4]
0036dde4  04 60 84 e5                                      str r6, [r4, #4]
0036dde8  06 00 a0 e1                                      mov r0, r6
0036ddec  02 10 a0 e3                                      mov r1, #2
0036ddf0  dd 89 fe eb                                      bl #0x31056c
0036ddf4  00 00 84 e5                                      str r0, [r4]
0036ddf8  00 00 50 e3                                      cmp r0, #0
0036ddfc  08 00 00 0a                                      beq #0x36de24
0036de00  04 20 94 e5                                      ldr r2, [r4, #4]
0036de04  00 00 52 e3                                      cmp r2, #0
0036de08  05 00 00 da                                      ble #0x36de24
0036de0c  00 10 a0 e3                                      mov r1, #0
0036de10  92 81 fe eb                                      bl #0x30e460
0036de14  05 00 94 e8                                      ldm r4, {r0, r2}
0036de18  05 10 a0 e1                                      mov r1, r5
0036de1c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0036de20  90 82 fe ea                                      b #0x30e868
0036de24  70 80 bd e8                                      pop {r4, r5, r6, pc}
