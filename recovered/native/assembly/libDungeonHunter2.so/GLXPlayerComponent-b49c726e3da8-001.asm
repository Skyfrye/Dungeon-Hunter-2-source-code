; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0082cc90, declared_size=52, range_size=52, mode=arm
; class-group: GLXPlayerComponent
; alias: _ZN18GLXPlayerComponentC2Ev
; demangled: GLXPlayerComponent::GLXPlayerComponent()
; decoder-mode: arm
0082cc90  24 20 9f e5                                      ldr r2, [pc, #0x24]
0082cc94  24 c0 9f e5                                      ldr ip, [pc, #0x24]
0082cc98  00 10 a0 e3                                      mov r1, #0
0082cc9c  02 20 8f e0                                      add r2, pc, r2
0082cca0  0c c0 92 e7                                      ldr ip, [r2, ip]
0082cca4  0c 10 80 e5                                      str r1, [r0, #0xc]
0082cca8  04 10 80 e5                                      str r1, [r0, #4]
0082ccac  08 c0 8c e2                                      add ip, ip, #8
0082ccb0  00 c0 80 e5                                      str ip, [r0]
0082ccb4  08 10 80 e5                                      str r1, [r0, #8]
0082ccb8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0082ccbc  f4 7d 16 00 14 12 00 00                          .byte 0xf4, 0x7d, 0x16, 0x00, 0x14, 0x12, 0x00, 0x00

; FUNCTION 0x0082ccc4, declared_size=52, range_size=52, mode=arm
; class-group: GLXPlayerComponent
; alias: _ZN18GLXPlayerComponentC1Ev
; demangled: GLXPlayerComponent::GLXPlayerComponent()
; decoder-mode: arm
0082ccc4  24 20 9f e5                                      ldr r2, [pc, #0x24]
0082ccc8  24 c0 9f e5                                      ldr ip, [pc, #0x24]
0082cccc  00 10 a0 e3                                      mov r1, #0
0082ccd0  02 20 8f e0                                      add r2, pc, r2
0082ccd4  0c c0 92 e7                                      ldr ip, [r2, ip]
0082ccd8  0c 10 80 e5                                      str r1, [r0, #0xc]
0082ccdc  04 10 80 e5                                      str r1, [r0, #4]
0082cce0  08 c0 8c e2                                      add ip, ip, #8
0082cce4  00 c0 80 e5                                      str ip, [r0]
0082cce8  08 10 80 e5                                      str r1, [r0, #8]
0082ccec  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0082ccf0  c0 7d 16 00 14 12 00 00                          .byte 0xc0, 0x7d, 0x16, 0x00, 0x14, 0x12, 0x00, 0x00

; FUNCTION 0x0082ccf8, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerComponent
; alias: _ZN18GLXPlayerComponent16RegisterObserverEP17GLXPlayerObserver
; demangled: GLXPlayerComponent::RegisterObserver(GLXPlayerObserver*)
; decoder-mode: arm
0082ccf8  04 10 80 e5                                      str r1, [r0, #4]
0082ccfc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0082cd00, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerComponent
; alias: _ZN18GLXPlayerComponent6SetGGIEm
; demangled: GLXPlayerComponent::SetGGI(unsigned long)
; decoder-mode: arm
0082cd00  08 10 80 e5                                      str r1, [r0, #8]
0082cd04  1e ff 2f e1                                      bx lr

; FUNCTION 0x0082cd08, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerComponent
; alias: _ZN18GLXPlayerComponent6GetGGIEv
; demangled: GLXPlayerComponent::GetGGI()
; decoder-mode: arm
0082cd08  08 00 90 e5                                      ldr r0, [r0, #8]
0082cd0c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0082cd10, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerComponent
; alias: _ZN18GLXPlayerComponent6GetUIDEv
; demangled: GLXPlayerComponent::GetUID()
; decoder-mode: arm
0082cd10  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0082cd14  1e ff 2f e1                                      bx lr

; FUNCTION 0x0082cd18, declared_size=76, range_size=76, mode=arm
; class-group: GLXPlayerComponent
; alias: _ZN18GLXPlayerComponentD1Ev
; demangled: GLXPlayerComponent::~GLXPlayerComponent()
; decoder-mode: arm
0082cd18  70 40 2d e9                                      push {r4, r5, r6, lr}
0082cd1c  38 30 9f e5                                      ldr r3, [pc, #0x38]
0082cd20  38 20 9f e5                                      ldr r2, [pc, #0x38]
0082cd24  00 40 a0 e1                                      mov r4, r0
0082cd28  03 30 8f e0                                      add r3, pc, r3
0082cd2c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0082cd30  02 20 93 e7                                      ldr r2, [r3, r2]
0082cd34  00 50 a0 e3                                      mov r5, #0
0082cd38  05 00 50 e1                                      cmp r0, r5
0082cd3c  08 20 82 e2                                      add r2, r2, #8
0082cd40  24 00 84 e8                                      stm r4, {r2, r5}
0082cd44  08 50 84 e5                                      str r5, [r4, #8]
0082cd48  01 00 00 0a                                      beq #0x82cd54
0082cd4c  57 85 eb eb                                      bl #0x30e2b0
0082cd50  0c 50 84 e5                                      str r5, [r4, #0xc]
0082cd54  04 00 a0 e1                                      mov r0, r4
0082cd58  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0082cd5c  68 7d 16 00 14 12 00 00                          .byte 0x68, 0x7d, 0x16, 0x00, 0x14, 0x12, 0x00, 0x00

; FUNCTION 0x0082cd64, declared_size=28, range_size=28, mode=arm
; class-group: GLXPlayerComponent
; alias: _ZN18GLXPlayerComponentD0Ev
; demangled: GLXPlayerComponent::~GLXPlayerComponent()
; decoder-mode: arm
0082cd64  10 40 2d e9                                      push {r4, lr}
0082cd68  00 40 a0 e1                                      mov r4, r0
0082cd6c  e9 ff ff eb                                      bl #0x82cd18
0082cd70  04 00 a0 e1                                      mov r0, r4
0082cd74  4d 85 eb eb                                      bl #0x30e2b0
0082cd78  04 00 a0 e1                                      mov r0, r4
0082cd7c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0082cd80, declared_size=76, range_size=76, mode=arm
; class-group: GLXPlayerComponent
; alias: _ZN18GLXPlayerComponentD2Ev
; demangled: GLXPlayerComponent::~GLXPlayerComponent()
; decoder-mode: arm
0082cd80  70 40 2d e9                                      push {r4, r5, r6, lr}
0082cd84  38 30 9f e5                                      ldr r3, [pc, #0x38]
0082cd88  38 20 9f e5                                      ldr r2, [pc, #0x38]
0082cd8c  00 40 a0 e1                                      mov r4, r0
0082cd90  03 30 8f e0                                      add r3, pc, r3
0082cd94  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0082cd98  02 20 93 e7                                      ldr r2, [r3, r2]
0082cd9c  00 50 a0 e3                                      mov r5, #0
0082cda0  05 00 50 e1                                      cmp r0, r5
0082cda4  08 20 82 e2                                      add r2, r2, #8
0082cda8  24 00 84 e8                                      stm r4, {r2, r5}
0082cdac  08 50 84 e5                                      str r5, [r4, #8]
0082cdb0  01 00 00 0a                                      beq #0x82cdbc
0082cdb4  3d 85 eb eb                                      bl #0x30e2b0
0082cdb8  0c 50 84 e5                                      str r5, [r4, #0xc]
0082cdbc  04 00 a0 e1                                      mov r0, r4
0082cdc0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0082cdc4  00 7d 16 00 14 12 00 00                          .byte 0x00, 0x7d, 0x16, 0x00, 0x14, 0x12, 0x00, 0x00

; FUNCTION 0x0082cdcc, declared_size=52, range_size=52, mode=arm
; class-group: GLXPlayerComponent
; alias: _ZN18GLXPlayerComponent6SetUIDEPc
; demangled: GLXPlayerComponent::SetUID(char*)
; decoder-mode: arm
0082cdcc  70 40 2d e9                                      push {r4, r5, r6, lr}
0082cdd0  00 40 a0 e1                                      mov r4, r0
0082cdd4  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0082cdd8  01 50 a0 e1                                      mov r5, r1
0082cddc  00 00 50 e3                                      cmp r0, #0
0082cde0  02 00 00 0a                                      beq #0x82cdf0
0082cde4  31 85 eb eb                                      bl #0x30e2b0
0082cde8  00 30 a0 e3                                      mov r3, #0
0082cdec  0c 30 84 e5                                      str r3, [r4, #0xc]
0082cdf0  05 00 a0 e1                                      mov r0, r5
0082cdf4  e9 fa ff eb                                      bl #0x82b9a0
0082cdf8  0c 00 84 e5                                      str r0, [r4, #0xc]
0082cdfc  70 80 bd e8                                      pop {r4, r5, r6, pc}
