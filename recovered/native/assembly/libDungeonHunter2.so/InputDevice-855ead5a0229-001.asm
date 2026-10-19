; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0034ca64, declared_size=48, range_size=48, mode=arm
; class-group: InputDevice
; alias: _ZN11InputDeviceC2ENS_4TypeE
; demangled: InputDevice::InputDevice(InputDevice::Type)
; decoder-mode: arm
0034ca64  20 30 9f e5                                      ldr r3, [pc, #0x20]
0034ca68  20 c0 9f e5                                      ldr ip, [pc, #0x20]
0034ca6c  04 10 80 e5                                      str r1, [r0, #4]
0034ca70  03 30 8f e0                                      add r3, pc, r3
0034ca74  0c c0 93 e7                                      ldr ip, [r3, ip]
0034ca78  00 10 a0 e3                                      mov r1, #0
0034ca7c  08 10 80 e5                                      str r1, [r0, #8]
0034ca80  08 c0 8c e2                                      add ip, ip, #8
0034ca84  00 c0 80 e5                                      str ip, [r0]
0034ca88  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0034ca8c  20 80 64 00 d4 18 00 00                          .byte 0x20, 0x80, 0x64, 0x00, 0xd4, 0x18, 0x00, 0x00

; FUNCTION 0x0034ca94, declared_size=48, range_size=48, mode=arm
; class-group: InputDevice
; alias: _ZN11InputDeviceC1ENS_4TypeE
; demangled: InputDevice::InputDevice(InputDevice::Type)
; decoder-mode: arm
0034ca94  20 30 9f e5                                      ldr r3, [pc, #0x20]
0034ca98  20 c0 9f e5                                      ldr ip, [pc, #0x20]
0034ca9c  04 10 80 e5                                      str r1, [r0, #4]
0034caa0  03 30 8f e0                                      add r3, pc, r3
0034caa4  0c c0 93 e7                                      ldr ip, [r3, ip]
0034caa8  00 10 a0 e3                                      mov r1, #0
0034caac  08 10 80 e5                                      str r1, [r0, #8]
0034cab0  08 c0 8c e2                                      add ip, ip, #8
0034cab4  00 c0 80 e5                                      str ip, [r0]
0034cab8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0034cabc  f0 7f 64 00 d4 18 00 00                          .byte 0xf0, 0x7f, 0x64, 0x00, 0xd4, 0x18, 0x00, 0x00
