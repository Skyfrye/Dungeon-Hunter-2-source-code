; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003a2f40, declared_size=4, range_size=4, mode=arm
; class-group: v2Controller
; alias: _ZN12v2ControllerD1Ev
; demangled: v2Controller::~v2Controller()
; decoder-mode: arm
003a2f40  1e ff 2f e1                                      bx lr

; FUNCTION 0x003a2f44, declared_size=4, range_size=4, mode=arm
; class-group: v2Controller
; alias: _ZN12v2Controller6UpdateEv
; demangled: v2Controller::Update()
; decoder-mode: arm
003a2f44  1e ff 2f e1                                      bx lr

; FUNCTION 0x003a393c, declared_size=52, range_size=52, mode=arm
; class-group: v2Controller
; alias: _ZN12v2ControllerD0Ev
; demangled: v2Controller::~v2Controller()
; decoder-mode: arm
003a393c  24 30 9f e5                                      ldr r3, [pc, #0x24]
003a3940  24 20 9f e5                                      ldr r2, [pc, #0x24]
003a3944  10 40 2d e9                                      push {r4, lr}
003a3948  03 30 8f e0                                      add r3, pc, r3
003a394c  02 20 93 e7                                      ldr r2, [r3, r2]
003a3950  00 40 a0 e1                                      mov r4, r0
003a3954  08 20 82 e2                                      add r2, r2, #8
003a3958  00 20 80 e5                                      str r2, [r0]
003a395c  b7 b2 fd eb                                      bl #0x310440
003a3960  04 00 a0 e1                                      mov r0, r4
003a3964  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003a3968  48 11 5f 00 a4 2a 00 00                          .byte 0x48, 0x11, 0x5f, 0x00, 0xa4, 0x2a, 0x00, 0x00

; FUNCTION 0x004051a8, declared_size=92, range_size=92, mode=arm
; class-group: v2Controller
; alias: _ZN12v2Controller9Cmd_ClickERK7Point3DIfEb
; demangled: v2Controller::Cmd_Click(Point3D<float> const&, bool)
; decoder-mode: arm
004051a8  10 40 2d e9                                      push {r4, lr}
004051ac  09 c0 d0 e5                                      ldrb ip, [r0, #9]
004051b0  44 30 9f e5                                      ldr r3, [pc, #0x44]
004051b4  00 00 5c e3                                      cmp ip, #0
004051b8  03 30 8f e0                                      add r3, pc, r3
004051bc  08 00 00 1a                                      bne #0x4051e4
004051c0  38 c0 9f e5                                      ldr ip, [pc, #0x38]
004051c4  0c 30 93 e7                                      ldr r3, [r3, ip]
004051c8  00 30 d3 e5                                      ldrb r3, [r3]
004051cc  00 00 53 e3                                      cmp r3, #0
004051d0  00 00 00 0a                                      beq #0x4051d8
004051d4  10 80 bd e8                                      pop {r4, pc}
004051d8  08 30 d0 e5                                      ldrb r3, [r0, #8]
004051dc  00 00 53 e3                                      cmp r3, #0
004051e0  fb ff ff 1a                                      bne #0x4051d4
004051e4  04 30 90 e5                                      ldr r3, [r0, #4]
004051e8  03 00 a0 e1                                      mov r0, r3
004051ec  00 30 93 e5                                      ldr r3, [r3]
004051f0  0f e0 a0 e1                                      mov lr, pc
004051f4  08 f0 93 e5                                      ldr pc, [r3, #8]
004051f8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004051fc  d8 f8 58 00 50 36 00 00                          .byte 0xd8, 0xf8, 0x58, 0x00, 0x50, 0x36, 0x00, 0x00

; FUNCTION 0x00405204, declared_size=92, range_size=92, mode=arm
; class-group: v2Controller
; alias: _ZN12v2Controller12Cmd_RotateByEf
; demangled: v2Controller::Cmd_RotateBy(float)
; decoder-mode: arm
00405204  10 40 2d e9                                      push {r4, lr}
00405208  09 20 d0 e5                                      ldrb r2, [r0, #9]
0040520c  44 30 9f e5                                      ldr r3, [pc, #0x44]
00405210  00 00 52 e3                                      cmp r2, #0
00405214  03 30 8f e0                                      add r3, pc, r3
00405218  08 00 00 1a                                      bne #0x405240
0040521c  38 20 9f e5                                      ldr r2, [pc, #0x38]
00405220  02 30 93 e7                                      ldr r3, [r3, r2]
00405224  00 30 d3 e5                                      ldrb r3, [r3]
00405228  00 00 53 e3                                      cmp r3, #0
0040522c  00 00 00 0a                                      beq #0x405234
00405230  10 80 bd e8                                      pop {r4, pc}
00405234  08 30 d0 e5                                      ldrb r3, [r0, #8]
00405238  00 00 53 e3                                      cmp r3, #0
0040523c  fb ff ff 1a                                      bne #0x405230
00405240  04 30 90 e5                                      ldr r3, [r0, #4]
00405244  03 00 a0 e1                                      mov r0, r3
00405248  00 30 93 e5                                      ldr r3, [r3]
0040524c  0f e0 a0 e1                                      mov lr, pc
00405250  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00405254  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00405258  7c f8 58 00 50 36 00 00                          .byte 0x7c, 0xf8, 0x58, 0x00, 0x50, 0x36, 0x00, 0x00

; FUNCTION 0x00405260, declared_size=92, range_size=92, mode=arm
; class-group: v2Controller
; alias: _ZN12v2Controller10Cmd_LookAtERK7Point3DIfE
; demangled: v2Controller::Cmd_LookAt(Point3D<float> const&)
; decoder-mode: arm
00405260  10 40 2d e9                                      push {r4, lr}
00405264  09 20 d0 e5                                      ldrb r2, [r0, #9]
00405268  44 30 9f e5                                      ldr r3, [pc, #0x44]
0040526c  00 00 52 e3                                      cmp r2, #0
00405270  03 30 8f e0                                      add r3, pc, r3
00405274  08 00 00 1a                                      bne #0x40529c
00405278  38 20 9f e5                                      ldr r2, [pc, #0x38]
0040527c  02 30 93 e7                                      ldr r3, [r3, r2]
00405280  00 30 d3 e5                                      ldrb r3, [r3]
00405284  00 00 53 e3                                      cmp r3, #0
00405288  00 00 00 0a                                      beq #0x405290
0040528c  10 80 bd e8                                      pop {r4, pc}
00405290  08 30 d0 e5                                      ldrb r3, [r0, #8]
00405294  00 00 53 e3                                      cmp r3, #0
00405298  fb ff ff 1a                                      bne #0x40528c
0040529c  04 30 90 e5                                      ldr r3, [r0, #4]
004052a0  03 00 a0 e1                                      mov r0, r3
004052a4  00 30 93 e5                                      ldr r3, [r3]
004052a8  0f e0 a0 e1                                      mov lr, pc
004052ac  10 f0 93 e5                                      ldr pc, [r3, #0x10]
004052b0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004052b4  20 f8 58 00 50 36 00 00                          .byte 0x20, 0xf8, 0x58, 0x00, 0x50, 0x36, 0x00, 0x00

; FUNCTION 0x004052bc, declared_size=92, range_size=92, mode=arm
; class-group: v2Controller
; alias: _ZN12v2Controller10Cmd_LookAtEP10GameObject
; demangled: v2Controller::Cmd_LookAt(GameObject*)
; decoder-mode: arm
004052bc  10 40 2d e9                                      push {r4, lr}
004052c0  09 20 d0 e5                                      ldrb r2, [r0, #9]
004052c4  44 30 9f e5                                      ldr r3, [pc, #0x44]
004052c8  00 00 52 e3                                      cmp r2, #0
004052cc  03 30 8f e0                                      add r3, pc, r3
004052d0  08 00 00 1a                                      bne #0x4052f8
004052d4  38 20 9f e5                                      ldr r2, [pc, #0x38]
004052d8  02 30 93 e7                                      ldr r3, [r3, r2]
004052dc  00 30 d3 e5                                      ldrb r3, [r3]
004052e0  00 00 53 e3                                      cmp r3, #0
004052e4  00 00 00 0a                                      beq #0x4052ec
004052e8  10 80 bd e8                                      pop {r4, pc}
004052ec  08 30 d0 e5                                      ldrb r3, [r0, #8]
004052f0  00 00 53 e3                                      cmp r3, #0
004052f4  fb ff ff 1a                                      bne #0x4052e8
004052f8  04 30 90 e5                                      ldr r3, [r0, #4]
004052fc  03 00 a0 e1                                      mov r0, r3
00405300  00 30 93 e5                                      ldr r3, [r3]
00405304  0f e0 a0 e1                                      mov lr, pc
00405308  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0040530c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00405310  c4 f7 58 00 50 36 00 00                          .byte 0xc4, 0xf7, 0x58, 0x00, 0x50, 0x36, 0x00, 0x00

; FUNCTION 0x00405318, declared_size=92, range_size=92, mode=arm
; class-group: v2Controller
; alias: _ZN12v2Controller10Cmd_WarpToERK7Point3DIfE
; demangled: v2Controller::Cmd_WarpTo(Point3D<float> const&)
; decoder-mode: arm
00405318  10 40 2d e9                                      push {r4, lr}
0040531c  09 20 d0 e5                                      ldrb r2, [r0, #9]
00405320  44 30 9f e5                                      ldr r3, [pc, #0x44]
00405324  00 00 52 e3                                      cmp r2, #0
00405328  03 30 8f e0                                      add r3, pc, r3
0040532c  08 00 00 1a                                      bne #0x405354
00405330  38 20 9f e5                                      ldr r2, [pc, #0x38]
00405334  02 30 93 e7                                      ldr r3, [r3, r2]
00405338  00 30 d3 e5                                      ldrb r3, [r3]
0040533c  00 00 53 e3                                      cmp r3, #0
00405340  00 00 00 0a                                      beq #0x405348
00405344  10 80 bd e8                                      pop {r4, pc}
00405348  08 30 d0 e5                                      ldrb r3, [r0, #8]
0040534c  00 00 53 e3                                      cmp r3, #0
00405350  fb ff ff 1a                                      bne #0x405344
00405354  04 30 90 e5                                      ldr r3, [r0, #4]
00405358  03 00 a0 e1                                      mov r0, r3
0040535c  00 30 93 e5                                      ldr r3, [r3]
00405360  0f e0 a0 e1                                      mov lr, pc
00405364  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00405368  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0040536c  68 f7 58 00 50 36 00 00                          .byte 0x68, 0xf7, 0x58, 0x00, 0x50, 0x36, 0x00, 0x00

; FUNCTION 0x00405374, declared_size=92, range_size=92, mode=arm
; class-group: v2Controller
; alias: _ZN12v2Controller15Cmd_HeadTowardsERK7Point3DIfE
; demangled: v2Controller::Cmd_HeadTowards(Point3D<float> const&)
; decoder-mode: arm
00405374  10 40 2d e9                                      push {r4, lr}
00405378  09 20 d0 e5                                      ldrb r2, [r0, #9]
0040537c  44 30 9f e5                                      ldr r3, [pc, #0x44]
00405380  00 00 52 e3                                      cmp r2, #0
00405384  03 30 8f e0                                      add r3, pc, r3
00405388  08 00 00 1a                                      bne #0x4053b0
0040538c  38 20 9f e5                                      ldr r2, [pc, #0x38]
00405390  02 30 93 e7                                      ldr r3, [r3, r2]
00405394  00 30 d3 e5                                      ldrb r3, [r3]
00405398  00 00 53 e3                                      cmp r3, #0
0040539c  00 00 00 0a                                      beq #0x4053a4
004053a0  10 80 bd e8                                      pop {r4, pc}
004053a4  08 30 d0 e5                                      ldrb r3, [r0, #8]
004053a8  00 00 53 e3                                      cmp r3, #0
004053ac  fb ff ff 1a                                      bne #0x4053a0
004053b0  04 30 90 e5                                      ldr r3, [r0, #4]
004053b4  03 00 a0 e1                                      mov r0, r3
004053b8  00 30 93 e5                                      ldr r3, [r3]
004053bc  0f e0 a0 e1                                      mov lr, pc
004053c0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
004053c4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004053c8  0c f7 58 00 50 36 00 00                          .byte 0x0c, 0xf7, 0x58, 0x00, 0x50, 0x36, 0x00, 0x00

; FUNCTION 0x004053d0, declared_size=92, range_size=92, mode=arm
; class-group: v2Controller
; alias: _ZN12v2Controller15Cmd_HeadTowardsEP10GameObject
; demangled: v2Controller::Cmd_HeadTowards(GameObject*)
; decoder-mode: arm
004053d0  10 40 2d e9                                      push {r4, lr}
004053d4  09 20 d0 e5                                      ldrb r2, [r0, #9]
004053d8  44 30 9f e5                                      ldr r3, [pc, #0x44]
004053dc  00 00 52 e3                                      cmp r2, #0
004053e0  03 30 8f e0                                      add r3, pc, r3
004053e4  08 00 00 1a                                      bne #0x40540c
004053e8  38 20 9f e5                                      ldr r2, [pc, #0x38]
004053ec  02 30 93 e7                                      ldr r3, [r3, r2]
004053f0  00 30 d3 e5                                      ldrb r3, [r3]
004053f4  00 00 53 e3                                      cmp r3, #0
004053f8  00 00 00 0a                                      beq #0x405400
004053fc  10 80 bd e8                                      pop {r4, pc}
00405400  08 30 d0 e5                                      ldrb r3, [r0, #8]
00405404  00 00 53 e3                                      cmp r3, #0
00405408  fb ff ff 1a                                      bne #0x4053fc
0040540c  04 30 90 e5                                      ldr r3, [r0, #4]
00405410  03 00 a0 e1                                      mov r0, r3
00405414  00 30 93 e5                                      ldr r3, [r3]
00405418  0f e0 a0 e1                                      mov lr, pc
0040541c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00405420  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00405424  b0 f6 58 00 50 36 00 00                          .byte 0xb0, 0xf6, 0x58, 0x00, 0x50, 0x36, 0x00, 0x00

; FUNCTION 0x0040542c, declared_size=92, range_size=92, mode=arm
; class-group: v2Controller
; alias: _ZN12v2Controller10Cmd_HeadToERK7Point3DIfE
; demangled: v2Controller::Cmd_HeadTo(Point3D<float> const&)
; decoder-mode: arm
0040542c  10 40 2d e9                                      push {r4, lr}
00405430  09 20 d0 e5                                      ldrb r2, [r0, #9]
00405434  44 30 9f e5                                      ldr r3, [pc, #0x44]
00405438  00 00 52 e3                                      cmp r2, #0
0040543c  03 30 8f e0                                      add r3, pc, r3
00405440  08 00 00 1a                                      bne #0x405468
00405444  38 20 9f e5                                      ldr r2, [pc, #0x38]
00405448  02 30 93 e7                                      ldr r3, [r3, r2]
0040544c  00 30 d3 e5                                      ldrb r3, [r3]
00405450  00 00 53 e3                                      cmp r3, #0
00405454  00 00 00 0a                                      beq #0x40545c
00405458  10 80 bd e8                                      pop {r4, pc}
0040545c  08 30 d0 e5                                      ldrb r3, [r0, #8]
00405460  00 00 53 e3                                      cmp r3, #0
00405464  fb ff ff 1a                                      bne #0x405458
00405468  04 30 90 e5                                      ldr r3, [r0, #4]
0040546c  03 00 a0 e1                                      mov r0, r3
00405470  00 30 93 e5                                      ldr r3, [r3]
00405474  0f e0 a0 e1                                      mov lr, pc
00405478  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0040547c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00405480  54 f6 58 00 50 36 00 00                          .byte 0x54, 0xf6, 0x58, 0x00, 0x50, 0x36, 0x00, 0x00

; FUNCTION 0x00405488, declared_size=92, range_size=92, mode=arm
; class-group: v2Controller
; alias: _ZN12v2Controller10Cmd_HeadToEP10GameObject
; demangled: v2Controller::Cmd_HeadTo(GameObject*)
; decoder-mode: arm
00405488  10 40 2d e9                                      push {r4, lr}
0040548c  09 20 d0 e5                                      ldrb r2, [r0, #9]
00405490  44 30 9f e5                                      ldr r3, [pc, #0x44]
00405494  00 00 52 e3                                      cmp r2, #0
00405498  03 30 8f e0                                      add r3, pc, r3
0040549c  08 00 00 1a                                      bne #0x4054c4
004054a0  38 20 9f e5                                      ldr r2, [pc, #0x38]
004054a4  02 30 93 e7                                      ldr r3, [r3, r2]
004054a8  00 30 d3 e5                                      ldrb r3, [r3]
004054ac  00 00 53 e3                                      cmp r3, #0
004054b0  00 00 00 0a                                      beq #0x4054b8
004054b4  10 80 bd e8                                      pop {r4, pc}
004054b8  08 30 d0 e5                                      ldrb r3, [r0, #8]
004054bc  00 00 53 e3                                      cmp r3, #0
004054c0  fb ff ff 1a                                      bne #0x4054b4
004054c4  04 30 90 e5                                      ldr r3, [r0, #4]
004054c8  03 00 a0 e1                                      mov r0, r3
004054cc  00 30 93 e5                                      ldr r3, [r3]
004054d0  0f e0 a0 e1                                      mov lr, pc
004054d4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
004054d8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004054dc  f8 f5 58 00 50 36 00 00                          .byte 0xf8, 0xf5, 0x58, 0x00, 0x50, 0x36, 0x00, 0x00

; FUNCTION 0x004054e4, declared_size=92, range_size=92, mode=arm
; class-group: v2Controller
; alias: _ZN12v2Controller10Cmd_MoveToERK7Point3DIfE
; demangled: v2Controller::Cmd_MoveTo(Point3D<float> const&)
; decoder-mode: arm
004054e4  10 40 2d e9                                      push {r4, lr}
004054e8  09 20 d0 e5                                      ldrb r2, [r0, #9]
004054ec  44 30 9f e5                                      ldr r3, [pc, #0x44]
004054f0  00 00 52 e3                                      cmp r2, #0
004054f4  03 30 8f e0                                      add r3, pc, r3
004054f8  08 00 00 1a                                      bne #0x405520
004054fc  38 20 9f e5                                      ldr r2, [pc, #0x38]
00405500  02 30 93 e7                                      ldr r3, [r3, r2]
00405504  00 30 d3 e5                                      ldrb r3, [r3]
00405508  00 00 53 e3                                      cmp r3, #0
0040550c  00 00 00 0a                                      beq #0x405514
00405510  10 80 bd e8                                      pop {r4, pc}
00405514  08 30 d0 e5                                      ldrb r3, [r0, #8]
00405518  00 00 53 e3                                      cmp r3, #0
0040551c  fb ff ff 1a                                      bne #0x405510
00405520  04 30 90 e5                                      ldr r3, [r0, #4]
00405524  03 00 a0 e1                                      mov r0, r3
00405528  00 30 93 e5                                      ldr r3, [r3]
0040552c  0f e0 a0 e1                                      mov lr, pc
00405530  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00405534  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00405538  9c f5 58 00 50 36 00 00                          .byte 0x9c, 0xf5, 0x58, 0x00, 0x50, 0x36, 0x00, 0x00

; FUNCTION 0x00405540, declared_size=92, range_size=92, mode=arm
; class-group: v2Controller
; alias: _ZN12v2Controller10Cmd_MoveToEP10GameObject
; demangled: v2Controller::Cmd_MoveTo(GameObject*)
; decoder-mode: arm
00405540  10 40 2d e9                                      push {r4, lr}
00405544  09 20 d0 e5                                      ldrb r2, [r0, #9]
00405548  44 30 9f e5                                      ldr r3, [pc, #0x44]
0040554c  00 00 52 e3                                      cmp r2, #0
00405550  03 30 8f e0                                      add r3, pc, r3
00405554  08 00 00 1a                                      bne #0x40557c
00405558  38 20 9f e5                                      ldr r2, [pc, #0x38]
0040555c  02 30 93 e7                                      ldr r3, [r3, r2]
00405560  00 30 d3 e5                                      ldrb r3, [r3]
00405564  00 00 53 e3                                      cmp r3, #0
00405568  00 00 00 0a                                      beq #0x405570
0040556c  10 80 bd e8                                      pop {r4, pc}
00405570  08 30 d0 e5                                      ldrb r3, [r0, #8]
00405574  00 00 53 e3                                      cmp r3, #0
00405578  fb ff ff 1a                                      bne #0x40556c
0040557c  04 30 90 e5                                      ldr r3, [r0, #4]
00405580  03 00 a0 e1                                      mov r0, r3
00405584  00 30 93 e5                                      ldr r3, [r3]
00405588  0f e0 a0 e1                                      mov lr, pc
0040558c  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00405590  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00405594  40 f5 58 00 50 36 00 00                          .byte 0x40, 0xf5, 0x58, 0x00, 0x50, 0x36, 0x00, 0x00

; FUNCTION 0x0040559c, declared_size=92, range_size=92, mode=arm
; class-group: v2Controller
; alias: _ZN12v2Controller8Cmd_StopEv
; demangled: v2Controller::Cmd_Stop()
; decoder-mode: arm
0040559c  10 40 2d e9                                      push {r4, lr}
004055a0  09 20 d0 e5                                      ldrb r2, [r0, #9]
004055a4  44 30 9f e5                                      ldr r3, [pc, #0x44]
004055a8  00 00 52 e3                                      cmp r2, #0
004055ac  03 30 8f e0                                      add r3, pc, r3
004055b0  08 00 00 1a                                      bne #0x4055d8
004055b4  38 20 9f e5                                      ldr r2, [pc, #0x38]
004055b8  02 30 93 e7                                      ldr r3, [r3, r2]
004055bc  00 30 d3 e5                                      ldrb r3, [r3]
004055c0  00 00 53 e3                                      cmp r3, #0
004055c4  00 00 00 0a                                      beq #0x4055cc
004055c8  10 80 bd e8                                      pop {r4, pc}
004055cc  08 30 d0 e5                                      ldrb r3, [r0, #8]
004055d0  00 00 53 e3                                      cmp r3, #0
004055d4  fb ff ff 1a                                      bne #0x4055c8
004055d8  04 30 90 e5                                      ldr r3, [r0, #4]
004055dc  03 00 a0 e1                                      mov r0, r3
004055e0  00 30 93 e5                                      ldr r3, [r3]
004055e4  0f e0 a0 e1                                      mov lr, pc
004055e8  34 f0 93 e5                                      ldr pc, [r3, #0x34]
004055ec  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004055f0  e4 f4 58 00 50 36 00 00                          .byte 0xe4, 0xf4, 0x58, 0x00, 0x50, 0x36, 0x00, 0x00

; FUNCTION 0x004055f8, declared_size=92, range_size=92, mode=arm
; class-group: v2Controller
; alias: _ZN12v2Controller13Cmd_BeginCastEb
; demangled: v2Controller::Cmd_BeginCast(bool)
; decoder-mode: arm
004055f8  10 40 2d e9                                      push {r4, lr}
004055fc  09 20 d0 e5                                      ldrb r2, [r0, #9]
00405600  44 30 9f e5                                      ldr r3, [pc, #0x44]
00405604  00 00 52 e3                                      cmp r2, #0
00405608  03 30 8f e0                                      add r3, pc, r3
0040560c  08 00 00 1a                                      bne #0x405634
00405610  38 20 9f e5                                      ldr r2, [pc, #0x38]
00405614  02 30 93 e7                                      ldr r3, [r3, r2]
00405618  00 30 d3 e5                                      ldrb r3, [r3]
0040561c  00 00 53 e3                                      cmp r3, #0
00405620  00 00 00 0a                                      beq #0x405628
00405624  10 80 bd e8                                      pop {r4, pc}
00405628  08 30 d0 e5                                      ldrb r3, [r0, #8]
0040562c  00 00 53 e3                                      cmp r3, #0
00405630  fb ff ff 1a                                      bne #0x405624
00405634  04 30 90 e5                                      ldr r3, [r0, #4]
00405638  03 00 a0 e1                                      mov r0, r3
0040563c  00 30 93 e5                                      ldr r3, [r3]
00405640  0f e0 a0 e1                                      mov lr, pc
00405644  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00405648  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0040564c  88 f4 58 00 50 36 00 00                          .byte 0x88, 0xf4, 0x58, 0x00, 0x50, 0x36, 0x00, 0x00

; FUNCTION 0x00405654, declared_size=92, range_size=92, mode=arm
; class-group: v2Controller
; alias: _ZN12v2Controller11Cmd_EndCastEb
; demangled: v2Controller::Cmd_EndCast(bool)
; decoder-mode: arm
00405654  10 40 2d e9                                      push {r4, lr}
00405658  09 20 d0 e5                                      ldrb r2, [r0, #9]
0040565c  44 30 9f e5                                      ldr r3, [pc, #0x44]
00405660  00 00 52 e3                                      cmp r2, #0
00405664  03 30 8f e0                                      add r3, pc, r3
00405668  08 00 00 1a                                      bne #0x405690
0040566c  38 20 9f e5                                      ldr r2, [pc, #0x38]
00405670  02 30 93 e7                                      ldr r3, [r3, r2]
00405674  00 30 d3 e5                                      ldrb r3, [r3]
00405678  00 00 53 e3                                      cmp r3, #0
0040567c  00 00 00 0a                                      beq #0x405684
00405680  10 80 bd e8                                      pop {r4, pc}
00405684  08 30 d0 e5                                      ldrb r3, [r0, #8]
00405688  00 00 53 e3                                      cmp r3, #0
0040568c  fb ff ff 1a                                      bne #0x405680
00405690  04 30 90 e5                                      ldr r3, [r0, #4]
00405694  03 00 a0 e1                                      mov r0, r3
00405698  00 30 93 e5                                      ldr r3, [r3]
0040569c  0f e0 a0 e1                                      mov lr, pc
004056a0  48 f0 93 e5                                      ldr pc, [r3, #0x48]
004056a4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004056a8  2c f4 58 00 50 36 00 00                          .byte 0x2c, 0xf4, 0x58, 0x00, 0x50, 0x36, 0x00, 0x00

; FUNCTION 0x004056b0, declared_size=92, range_size=92, mode=arm
; class-group: v2Controller
; alias: _ZN12v2Controller13Cmd_UsePotionEv
; demangled: v2Controller::Cmd_UsePotion()
; decoder-mode: arm
004056b0  10 40 2d e9                                      push {r4, lr}
004056b4  09 20 d0 e5                                      ldrb r2, [r0, #9]
004056b8  44 30 9f e5                                      ldr r3, [pc, #0x44]
004056bc  00 00 52 e3                                      cmp r2, #0
004056c0  03 30 8f e0                                      add r3, pc, r3
004056c4  08 00 00 1a                                      bne #0x4056ec
004056c8  38 20 9f e5                                      ldr r2, [pc, #0x38]
004056cc  02 30 93 e7                                      ldr r3, [r3, r2]
004056d0  00 30 d3 e5                                      ldrb r3, [r3]
004056d4  00 00 53 e3                                      cmp r3, #0
004056d8  00 00 00 0a                                      beq #0x4056e0
004056dc  10 80 bd e8                                      pop {r4, pc}
004056e0  08 30 d0 e5                                      ldrb r3, [r0, #8]
004056e4  00 00 53 e3                                      cmp r3, #0
004056e8  fb ff ff 1a                                      bne #0x4056dc
004056ec  04 30 90 e5                                      ldr r3, [r0, #4]
004056f0  03 00 a0 e1                                      mov r0, r3
004056f4  00 30 93 e5                                      ldr r3, [r3]
004056f8  0f e0 a0 e1                                      mov lr, pc
004056fc  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
00405700  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00405704  d0 f3 58 00 50 36 00 00                          .byte 0xd0, 0xf3, 0x58, 0x00, 0x50, 0x36, 0x00, 0x00

; FUNCTION 0x0040570c, declared_size=28, range_size=28, mode=arm
; class-group: v2Controller
; alias: _ZN12v2Controller8Cmd_KillEP10GameObjectb
; demangled: v2Controller::Cmd_Kill(GameObject*, bool)
; decoder-mode: arm
0040570c  10 40 2d e9                                      push {r4, lr}
00405710  04 30 90 e5                                      ldr r3, [r0, #4]
00405714  03 00 a0 e1                                      mov r0, r3
00405718  00 30 93 e5                                      ldr r3, [r3]
0040571c  0f e0 a0 e1                                      mov lr, pc
00405720  58 f0 93 e5                                      ldr pc, [r3, #0x58]
00405724  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00405728, declared_size=28, range_size=28, mode=arm
; class-group: v2Controller
; alias: _ZN12v2Controller11Cmd_OpenIGMEv
; demangled: v2Controller::Cmd_OpenIGM()
; decoder-mode: arm
00405728  10 40 2d e9                                      push {r4, lr}
0040572c  04 30 90 e5                                      ldr r3, [r0, #4]
00405730  03 00 a0 e1                                      mov r0, r3
00405734  00 30 93 e5                                      ldr r3, [r3]
00405738  0f e0 a0 e1                                      mov lr, pc
0040573c  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00405740  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00405744, declared_size=28, range_size=28, mode=arm
; class-group: v2Controller
; alias: _ZN12v2Controller8Cmd_ZoomEf
; demangled: v2Controller::Cmd_Zoom(float)
; decoder-mode: arm
00405744  10 40 2d e9                                      push {r4, lr}
00405748  04 30 90 e5                                      ldr r3, [r0, #4]
0040574c  03 00 a0 e1                                      mov r0, r3
00405750  00 30 93 e5                                      ldr r3, [r3]
00405754  0f e0 a0 e1                                      mov lr, pc
00405758  60 f0 93 e5                                      ldr pc, [r3, #0x60]
0040575c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00405760, declared_size=28, range_size=28, mode=arm
; class-group: v2Controller
; alias: _ZN12v2Controller13Cmd_ResetZoomEv
; demangled: v2Controller::Cmd_ResetZoom()
; decoder-mode: arm
00405760  10 40 2d e9                                      push {r4, lr}
00405764  04 30 90 e5                                      ldr r3, [r0, #4]
00405768  03 00 a0 e1                                      mov r0, r3
0040576c  00 30 93 e5                                      ldr r3, [r3]
00405770  0f e0 a0 e1                                      mov lr, pc
00405774  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00405778  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0040577c, declared_size=28, range_size=28, mode=arm
; class-group: v2Controller
; alias: _ZN12v2Controller19Cmd_TranslateMapCamEff
; demangled: v2Controller::Cmd_TranslateMapCam(float, float)
; decoder-mode: arm
0040577c  10 40 2d e9                                      push {r4, lr}
00405780  04 30 90 e5                                      ldr r3, [r0, #4]
00405784  03 00 a0 e1                                      mov r0, r3
00405788  00 30 93 e5                                      ldr r3, [r3]
0040578c  0f e0 a0 e1                                      mov lr, pc
00405790  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00405794  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00405798, declared_size=100, range_size=100, mode=arm
; class-group: v2Controller
; alias: _ZN12v2Controller14Cmd_DropObjectEv
; demangled: v2Controller::Cmd_DropObject()
; decoder-mode: arm
00405798  10 40 2d e9                                      push {r4, lr}
0040579c  09 20 d0 e5                                      ldrb r2, [r0, #9]
004057a0  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
004057a4  00 40 a0 e1                                      mov r4, r0
004057a8  00 00 52 e3                                      cmp r2, #0
004057ac  03 30 8f e0                                      add r3, pc, r3
004057b0  08 00 00 1a                                      bne #0x4057d8
004057b4  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
004057b8  02 30 93 e7                                      ldr r3, [r3, r2]
004057bc  00 30 d3 e5                                      ldrb r3, [r3]
004057c0  00 00 53 e3                                      cmp r3, #0
004057c4  00 00 00 0a                                      beq #0x4057cc
004057c8  10 80 bd e8                                      pop {r4, pc}
004057cc  08 30 d0 e5                                      ldrb r3, [r0, #8]
004057d0  00 00 53 e3                                      cmp r3, #0
004057d4  fb ff ff 1a                                      bne #0x4057c8
004057d8  ed df 0f eb                                      bl #0x7fd794
004057dc  04 30 94 e5                                      ldr r3, [r4, #4]
004057e0  03 00 a0 e1                                      mov r0, r3
004057e4  00 30 93 e5                                      ldr r3, [r3]
004057e8  0f e0 a0 e1                                      mov lr, pc
004057ec  54 f0 93 e5                                      ldr pc, [r3, #0x54]
004057f0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004057f4  e4 f2 58 00 50 36 00 00                          .byte 0xe4, 0xf2, 0x58, 0x00, 0x50, 0x36, 0x00, 0x00

; FUNCTION 0x004057fc, declared_size=344, range_size=344, mode=arm
; class-group: v2Controller
; alias: _ZN12v2Controller10Cmd_UseOOIEP10GameObject
; demangled: v2Controller::Cmd_UseOOI(GameObject*)
; decoder-mode: arm
004057fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00405800  09 20 d0 e5                                      ldrb r2, [r0, #9]
00405804  3c 31 9f e5                                      ldr r3, [pc, #0x13c]
00405808  00 40 a0 e1                                      mov r4, r0
0040580c  00 00 52 e3                                      cmp r2, #0
00405810  01 50 a0 e1                                      mov r5, r1
00405814  03 30 8f e0                                      add r3, pc, r3
00405818  08 00 00 1a                                      bne #0x405840
0040581c  28 21 9f e5                                      ldr r2, [pc, #0x128]
00405820  02 30 93 e7                                      ldr r3, [r3, r2]
00405824  00 30 d3 e5                                      ldrb r3, [r3]
00405828  00 00 53 e3                                      cmp r3, #0
0040582c  00 00 00 0a                                      beq #0x405834
00405830  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00405834  08 30 d0 e5                                      ldrb r3, [r0, #8]
00405838  00 00 53 e3                                      cmp r3, #0
0040583c  fb ff ff 1a                                      bne #0x405830
00405840  d3 df 0f eb                                      bl #0x7fd794
00405844  05 30 d0 e5                                      ldrb r3, [r0, #5]
00405848  00 00 53 e3                                      cmp r3, #0
0040584c  2c 00 00 0a                                      beq #0x405904
00405850  0a 30 d4 e5                                      ldrb r3, [r4, #0xa]
00405854  00 00 53 e3                                      cmp r3, #0
00405858  29 00 00 0a                                      beq #0x405904
0040585c  0c 70 94 e5                                      ldr r7, [r4, #0xc]
00405860  00 00 57 e3                                      cmp r7, #0
00405864  26 00 00 0a                                      beq #0x405904
00405868  00 00 55 e3                                      cmp r5, #0
0040586c  05 60 a0 11                                      movne r6, r5
00405870  2f 00 00 0a                                      beq #0x405934
00405874  00 30 96 e5                                      ldr r3, [r6]
00405878  06 00 a0 e1                                      mov r0, r6
0040587c  0f e0 a0 e1                                      mov lr, pc
00405880  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00405884  00 00 50 e3                                      cmp r0, #0
00405888  24 00 00 1a                                      bne #0x405920
0040588c  00 30 96 e5                                      ldr r3, [r6]
00405890  06 00 a0 e1                                      mov r0, r6
00405894  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00405898  0f e0 a0 e1                                      mov lr, pc
0040589c  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004058a0  01 00 50 e3                                      cmp r0, #1
004058a4  16 00 00 0a                                      beq #0x405904
004058a8  00 30 96 e5                                      ldr r3, [r6]
004058ac  06 00 a0 e1                                      mov r0, r6
004058b0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
004058b4  0f e0 a0 e1                                      mov lr, pc
004058b8  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004058bc  08 00 50 e3                                      cmp r0, #8
004058c0  0f 00 00 0a                                      beq #0x405904
004058c4  3c 16 10 eb                                      bl #0x80b1bc
004058c8  00 80 a0 e1                                      mov r8, r0
004058cc  7c 00 9f e5                                      ldr r0, [pc, #0x7c]
004058d0  01 10 a0 e3                                      mov r1, #1
004058d4  08 61 96 e5                                      ldr r6, [r6, #0x108]
004058d8  00 00 8f e0                                      add r0, pc, r0
004058dc  08 71 d7 e5                                      ldrb r7, [r7, #0x108]
004058e0  57 12 10 eb                                      bl #0x80a244
004058e4  76 60 ff e6                                      uxth r6, r6
004058e8  05 30 a0 e3                                      mov r3, #5
004058ec  00 10 a0 e1                                      mov r1, r0
004058f0  54 70 c0 e5                                      strb r7, [r0, #0x54]
004058f4  50 30 c0 e5                                      strb r3, [r0, #0x50]
004058f8  b2 65 c0 e1                                      strh r6, [r0, #0x52]
004058fc  08 00 a0 e1                                      mov r0, r8
00405900  67 22 10 eb                                      bl #0x80e2a4
00405904  04 30 94 e5                                      ldr r3, [r4, #4]
00405908  05 10 a0 e1                                      mov r1, r5
0040590c  03 00 a0 e1                                      mov r0, r3
00405910  00 30 93 e5                                      ldr r3, [r3]
00405914  0f e0 a0 e1                                      mov lr, pc
00405918  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0040591c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00405920  06 00 a0 e1                                      mov r0, r6
00405924  e6 75 fe eb                                      bl #0x3a30c4
00405928  00 00 50 e3                                      cmp r0, #0
0040592c  f4 ff ff 1a                                      bne #0x405904
00405930  d5 ff ff ea                                      b #0x40588c
00405934  a4 34 01 e3                                      movw r3, #0x14a4
00405938  03 60 97 e7                                      ldr r6, [r7, r3]
0040593c  00 00 56 e3                                      cmp r6, #0
00405940  ef ff ff 0a                                      beq #0x405904
00405944  ca ff ff ea                                      b #0x405874
; mapping-symbol data/literal pool
00405948  7c f2 58 00 50 36 00 00 30 96 4b 00              .byte 0x7c, 0xf2, 0x58, 0x00, 0x50, 0x36, 0x00, 0x00, 0x30, 0x96, 0x4b, 0x00

; FUNCTION 0x00405954, declared_size=204, range_size=204, mode=arm
; class-group: v2Controller
; alias: _ZN12v2Controller12Cmd_EndSkillEj
; demangled: v2Controller::Cmd_EndSkill(unsigned int)
; decoder-mode: arm
00405954  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00405958  09 20 d0 e5                                      ldrb r2, [r0, #9]
0040595c  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
00405960  00 40 a0 e1                                      mov r4, r0
00405964  00 00 52 e3                                      cmp r2, #0
00405968  01 50 a0 e1                                      mov r5, r1
0040596c  03 30 8f e0                                      add r3, pc, r3
00405970  08 00 00 1a                                      bne #0x405998
00405974  9c 20 9f e5                                      ldr r2, [pc, #0x9c]
00405978  02 30 93 e7                                      ldr r3, [r3, r2]
0040597c  00 30 d3 e5                                      ldrb r3, [r3]
00405980  00 00 53 e3                                      cmp r3, #0
00405984  00 00 00 0a                                      beq #0x40598c
00405988  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0040598c  08 30 d0 e5                                      ldrb r3, [r0, #8]
00405990  00 00 53 e3                                      cmp r3, #0
00405994  fb ff ff 1a                                      bne #0x405988
00405998  7d df 0f eb                                      bl #0x7fd794
0040599c  05 30 d0 e5                                      ldrb r3, [r0, #5]
004059a0  00 00 53 e3                                      cmp r3, #0
004059a4  13 00 00 0a                                      beq #0x4059f8
004059a8  0a 30 d4 e5                                      ldrb r3, [r4, #0xa]
004059ac  00 00 53 e3                                      cmp r3, #0
004059b0  10 00 00 0a                                      beq #0x4059f8
004059b4  0c 70 94 e5                                      ldr r7, [r4, #0xc]
004059b8  00 00 57 e3                                      cmp r7, #0
004059bc  0d 00 00 0a                                      beq #0x4059f8
004059c0  fd 15 10 eb                                      bl #0x80b1bc
004059c4  00 60 a0 e1                                      mov r6, r0
004059c8  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
004059cc  01 10 a0 e3                                      mov r1, #1
004059d0  08 71 d7 e5                                      ldrb r7, [r7, #0x108]
004059d4  00 00 8f e0                                      add r0, pc, r0
004059d8  19 12 10 eb                                      bl #0x80a244
004059dc  02 30 a0 e3                                      mov r3, #2
004059e0  00 10 a0 e1                                      mov r1, r0
004059e4  54 70 c0 e5                                      strb r7, [r0, #0x54]
004059e8  50 30 c0 e5                                      strb r3, [r0, #0x50]
004059ec  b2 55 c0 e1                                      strh r5, [r0, #0x52]
004059f0  06 00 a0 e1                                      mov r0, r6
004059f4  2a 22 10 eb                                      bl #0x80e2a4
004059f8  04 30 94 e5                                      ldr r3, [r4, #4]
004059fc  05 10 a0 e1                                      mov r1, r5
00405a00  03 00 a0 e1                                      mov r0, r3
00405a04  00 30 93 e5                                      ldr r3, [r3]
00405a08  0f e0 a0 e1                                      mov lr, pc
00405a0c  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00405a10  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00405a14  24 f1 58 00 50 36 00 00 34 95 4b 00              .byte 0x24, 0xf1, 0x58, 0x00, 0x50, 0x36, 0x00, 0x00, 0x34, 0x95, 0x4b, 0x00

; FUNCTION 0x00405a20, declared_size=228, range_size=228, mode=arm
; class-group: v2Controller
; alias: _ZN12v2Controller14Cmd_BeginSkillEj
; demangled: v2Controller::Cmd_BeginSkill(unsigned int)
; decoder-mode: arm
00405a20  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00405a24  09 20 d0 e5                                      ldrb r2, [r0, #9]
00405a28  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
00405a2c  00 40 a0 e1                                      mov r4, r0
00405a30  00 00 52 e3                                      cmp r2, #0
00405a34  01 50 a0 e1                                      mov r5, r1
00405a38  03 30 8f e0                                      add r3, pc, r3
00405a3c  08 00 00 1a                                      bne #0x405a64
00405a40  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
00405a44  02 30 93 e7                                      ldr r3, [r3, r2]
00405a48  00 30 d3 e5                                      ldrb r3, [r3]
00405a4c  00 00 53 e3                                      cmp r3, #0
00405a50  00 00 00 0a                                      beq #0x405a58
00405a54  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00405a58  08 30 d0 e5                                      ldrb r3, [r0, #8]
00405a5c  00 00 53 e3                                      cmp r3, #0
00405a60  fb ff ff 1a                                      bne #0x405a54
00405a64  4a df 0f eb                                      bl #0x7fd794
00405a68  05 30 d0 e5                                      ldrb r3, [r0, #5]
00405a6c  00 00 53 e3                                      cmp r3, #0
00405a70  0a 00 00 0a                                      beq #0x405aa0
00405a74  0a 30 d4 e5                                      ldrb r3, [r4, #0xa]
00405a78  00 00 53 e3                                      cmp r3, #0
00405a7c  07 00 00 0a                                      beq #0x405aa0
00405a80  0c 60 94 e5                                      ldr r6, [r4, #0xc]
00405a84  00 00 56 e3                                      cmp r6, #0
00405a88  04 00 00 0a                                      beq #0x405aa0
00405a8c  f2 0f 86 e2                                      add r0, r6, #0x3c8
00405a90  05 10 a0 e1                                      mov r1, r5
00405a94  2f 4a ff eb                                      bl #0x3d8358
00405a98  00 00 50 e3                                      cmp r0, #0
00405a9c  06 00 00 1a                                      bne #0x405abc
00405aa0  04 30 94 e5                                      ldr r3, [r4, #4]
00405aa4  05 10 a0 e1                                      mov r1, r5
00405aa8  03 00 a0 e1                                      mov r0, r3
00405aac  00 30 93 e5                                      ldr r3, [r3]
00405ab0  0f e0 a0 e1                                      mov lr, pc
00405ab4  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00405ab8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00405abc  be 15 10 eb                                      bl #0x80b1bc
00405ac0  00 70 a0 e1                                      mov r7, r0
00405ac4  34 00 9f e5                                      ldr r0, [pc, #0x34]
00405ac8  01 10 a0 e3                                      mov r1, #1
00405acc  08 61 d6 e5                                      ldrb r6, [r6, #0x108]
00405ad0  00 00 8f e0                                      add r0, pc, r0
00405ad4  da 11 10 eb                                      bl #0x80a244
00405ad8  01 30 a0 e3                                      mov r3, #1
00405adc  00 10 a0 e1                                      mov r1, r0
00405ae0  54 60 c0 e5                                      strb r6, [r0, #0x54]
00405ae4  50 30 c0 e5                                      strb r3, [r0, #0x50]
00405ae8  b2 55 c0 e1                                      strh r5, [r0, #0x52]
00405aec  07 00 a0 e1                                      mov r0, r7
00405af0  eb 21 10 eb                                      bl #0x80e2a4
00405af4  e9 ff ff ea                                      b #0x405aa0
; mapping-symbol data/literal pool
00405af8  58 f0 58 00 50 36 00 00 38 94 4b 00              .byte 0x58, 0xf0, 0x58, 0x00, 0x50, 0x36, 0x00, 0x00, 0x38, 0x94, 0x4b, 0x00

; FUNCTION 0x00405b04, declared_size=440, range_size=440, mode=arm
; class-group: v2Controller
; alias: _ZN12v2Controller10Cmd_AttackEP10GameObject
; demangled: v2Controller::Cmd_Attack(GameObject*)
; decoder-mode: arm
00405b04  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00405b08  09 20 d0 e5                                      ldrb r2, [r0, #9]
00405b0c  9c 31 9f e5                                      ldr r3, [pc, #0x19c]
00405b10  00 40 a0 e1                                      mov r4, r0
00405b14  00 00 52 e3                                      cmp r2, #0
00405b18  01 50 a0 e1                                      mov r5, r1
00405b1c  03 30 8f e0                                      add r3, pc, r3
00405b20  08 00 00 1a                                      bne #0x405b48
00405b24  88 21 9f e5                                      ldr r2, [pc, #0x188]
00405b28  02 30 93 e7                                      ldr r3, [r3, r2]
00405b2c  00 30 d3 e5                                      ldrb r3, [r3]
00405b30  00 00 53 e3                                      cmp r3, #0
00405b34  00 00 00 0a                                      beq #0x405b3c
00405b38  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00405b3c  08 30 d0 e5                                      ldrb r3, [r0, #8]
00405b40  00 00 53 e3                                      cmp r3, #0
00405b44  fb ff ff 1a                                      bne #0x405b38
00405b48  11 df 0f eb                                      bl #0x7fd794
00405b4c  05 30 d0 e5                                      ldrb r3, [r0, #5]
00405b50  00 00 53 e3                                      cmp r3, #0
00405b54  31 00 00 0a                                      beq #0x405c20
00405b58  0a 30 d4 e5                                      ldrb r3, [r4, #0xa]
00405b5c  00 00 53 e3                                      cmp r3, #0
00405b60  2e 00 00 0a                                      beq #0x405c20
00405b64  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00405b68  00 00 53 e3                                      cmp r3, #0
00405b6c  2b 00 00 0a                                      beq #0x405c20
00405b70  f2 0f 83 e2                                      add r0, r3, #0x3c8
00405b74  05 10 a0 e1                                      mov r1, r5
00405b78  01 20 a0 e3                                      mov r2, #1
00405b7c  08 64 93 e5                                      ldr r6, [r3, #0x408]
00405b80  0c 84 93 e5                                      ldr r8, [r3, #0x40c]
00405b84  40 74 d3 e5                                      ldrb r7, [r3, #0x440]
00405b88  87 29 ff eb                                      bl #0x3d01ac
00405b8c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00405b90  08 34 90 e5                                      ldr r3, [r0, #0x408]
00405b94  03 00 56 e1                                      cmp r6, r3
00405b98  27 00 00 0a                                      beq #0x405c3c
00405b9c  08 10 a0 e1                                      mov r1, r8
00405ba0  01 20 a0 e3                                      mov r2, #1
00405ba4  f2 0f 80 e2                                      add r0, r0, #0x3c8
00405ba8  38 43 ff eb                                      bl #0x3d6890
00405bac  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00405bb0  f2 0f 80 e2                                      add r0, r0, #0x3c8
00405bb4  82 3b ff eb                                      bl #0x3d49c4
00405bb8  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00405bbc  06 10 a0 e1                                      mov r1, r6
00405bc0  01 20 a0 e3                                      mov r2, #1
00405bc4  f2 0f 80 e2                                      add r0, r0, #0x3c8
00405bc8  30 43 ff eb                                      bl #0x3d6890
00405bcc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00405bd0  40 74 c3 e5                                      strb r7, [r3, #0x440]
00405bd4  78 15 10 eb                                      bl #0x80b1bc
00405bd8  00 00 55 e3                                      cmp r5, #0
00405bdc  00 70 a0 e1                                      mov r7, r0
00405be0  d0 00 9f e5                                      ldr r0, [pc, #0xd0]
00405be4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00405be8  08 61 95 15                                      ldrne r6, [r5, #0x108]
00405bec  01 10 a0 e3                                      mov r1, #1
00405bf0  00 00 8f e0                                      add r0, pc, r0
00405bf4  08 81 d3 e5                                      ldrb r8, [r3, #0x108]
00405bf8  05 60 a0 01                                      moveq r6, r5
00405bfc  76 60 ff 16                                      uxthne r6, r6
00405c00  8f 11 10 eb                                      bl #0x80a244
00405c04  00 30 a0 e3                                      mov r3, #0
00405c08  00 10 a0 e1                                      mov r1, r0
00405c0c  54 80 c0 e5                                      strb r8, [r0, #0x54]
00405c10  50 30 c0 e5                                      strb r3, [r0, #0x50]
00405c14  b2 65 c0 e1                                      strh r6, [r0, #0x52]
00405c18  07 00 a0 e1                                      mov r0, r7
00405c1c  a0 21 10 eb                                      bl #0x80e2a4
00405c20  04 30 94 e5                                      ldr r3, [r4, #4]
00405c24  05 10 a0 e1                                      mov r1, r5
00405c28  03 00 a0 e1                                      mov r0, r3
00405c2c  00 30 93 e5                                      ldr r3, [r3]
00405c30  0f e0 a0 e1                                      mov lr, pc
00405c34  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00405c38  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00405c3c  40 34 d0 e5                                      ldrb r3, [r0, #0x440]
00405c40  07 00 53 e1                                      cmp r3, r7
00405c44  d4 ff ff 1a                                      bne #0x405b9c
00405c48  4f 0e 80 e2                                      add r0, r0, #0x4f0
00405c4c  0c 00 80 e2                                      add r0, r0, #0xc
00405c50  9e e9 fe eb                                      bl #0x3c02d0
00405c54  00 00 50 e3                                      cmp r0, #0
00405c58  0c 30 94 15                                      ldrne r3, [r4, #0xc]
00405c5c  04 00 00 1a                                      bne #0x405c74
00405c60  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00405c64  40 24 d3 e5                                      ldrb r2, [r3, #0x440]
00405c68  03 00 a0 e1                                      mov r0, r3
00405c6c  00 00 52 e3                                      cmp r2, #0
00405c70  c9 ff ff 0a                                      beq #0x405b9c
00405c74  f2 0f 83 e2                                      add r0, r3, #0x3c8
00405c78  08 10 a0 e1                                      mov r1, r8
00405c7c  01 20 a0 e3                                      mov r2, #1
00405c80  02 43 ff eb                                      bl #0x3d6890
00405c84  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00405c88  f2 0f 80 e2                                      add r0, r0, #0x3c8
00405c8c  4c 3b ff eb                                      bl #0x3d49c4
00405c90  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00405c94  06 10 a0 e1                                      mov r1, r6
00405c98  01 20 a0 e3                                      mov r2, #1
00405c9c  f2 0f 80 e2                                      add r0, r0, #0x3c8
00405ca0  fa 42 ff eb                                      bl #0x3d6890
00405ca4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00405ca8  40 74 c3 e5                                      strb r7, [r3, #0x440]
00405cac  db ff ff ea                                      b #0x405c20
; mapping-symbol data/literal pool
00405cb0  74 ef 58 00 50 36 00 00 18 93 4b 00              .byte 0x74, 0xef, 0x58, 0x00, 0x50, 0x36, 0x00, 0x00, 0x18, 0x93, 0x4b, 0x00
