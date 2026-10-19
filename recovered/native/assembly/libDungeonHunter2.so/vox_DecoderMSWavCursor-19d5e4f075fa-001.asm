; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0087057c, declared_size=44, range_size=44, mode=arm
; class-group: vox::DecoderMSWavCursor
; alias: _ZN3vox18DecoderMSWavCursor6DecodeEPvi
; demangled: vox::DecoderMSWavCursor::Decode(void*, int)
; decoder-mode: arm
0087057c  10 40 2d e9                                      push {r4, lr}
00870580  24 30 90 e5                                      ldr r3, [r0, #0x24]
00870584  00 00 53 e3                                      cmp r3, #0
00870588  04 00 00 0a                                      beq #0x8705a0
0087058c  03 00 a0 e1                                      mov r0, r3
00870590  00 30 93 e5                                      ldr r3, [r3]
00870594  0f e0 a0 e1                                      mov lr, pc
00870598  08 f0 93 e5                                      ldr pc, [r3, #8]
0087059c  10 80 bd e8                                      pop {r4, pc}
008705a0  03 00 a0 e1                                      mov r0, r3
008705a4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008705a8, declared_size=44, range_size=44, mode=arm
; class-group: vox::DecoderMSWavCursor
; alias: _ZN3vox18DecoderMSWavCursor4SeekEj
; demangled: vox::DecoderMSWavCursor::Seek(unsigned int)
; decoder-mode: arm
008705a8  10 40 2d e9                                      push {r4, lr}
008705ac  24 30 90 e5                                      ldr r3, [r0, #0x24]
008705b0  00 00 53 e3                                      cmp r3, #0
008705b4  04 00 00 0a                                      beq #0x8705cc
008705b8  03 00 a0 e1                                      mov r0, r3
008705bc  00 30 93 e5                                      ldr r3, [r3]
008705c0  0f e0 a0 e1                                      mov lr, pc
008705c4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
008705c8  10 80 bd e8                                      pop {r4, pc}
008705cc  00 00 e0 e3                                      mvn r0, #0
008705d0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008705d4, declared_size=16, range_size=16, mode=arm
; class-group: vox::DecoderMSWavCursor
; alias: _ZN3vox18DecoderMSWavCursor7SetLoopEb
; demangled: vox::DecoderMSWavCursor::SetLoop(bool)
; decoder-mode: arm
008705d4  24 30 90 e5                                      ldr r3, [r0, #0x24]
008705d8  00 00 53 e3                                      cmp r3, #0
008705dc  28 10 c3 15                                      strbne r1, [r3, #0x28]
008705e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x008705e4, declared_size=44, range_size=44, mode=arm
; class-group: vox::DecoderMSWavCursor
; alias: _ZN3vox18DecoderMSWavCursor7HasDataEv
; demangled: vox::DecoderMSWavCursor::HasData()
; decoder-mode: arm
008705e4  10 40 2d e9                                      push {r4, lr}
008705e8  24 30 90 e5                                      ldr r3, [r0, #0x24]
008705ec  00 00 53 e3                                      cmp r3, #0
008705f0  04 00 00 0a                                      beq #0x870608
008705f4  03 00 a0 e1                                      mov r0, r3
008705f8  00 30 93 e5                                      ldr r3, [r3]
008705fc  0f e0 a0 e1                                      mov lr, pc
00870600  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00870604  10 80 bd e8                                      pop {r4, pc}
00870608  03 00 a0 e1                                      mov r0, r3
0087060c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00870610, declared_size=936, range_size=936, mode=arm
; class-group: vox::DecoderMSWavCursor
; alias: _ZN3vox18DecoderMSWavCursor9ParseFileEv
; demangled: vox::DecoderMSWavCursor::ParseFile()
; decoder-mode: arm
00870610  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00870614  18 30 90 e5                                      ldr r3, [r0, #0x18]
00870618  1c d0 4d e2                                      sub sp, sp, #0x1c
0087061c  00 40 a0 e1                                      mov r4, r0
00870620  00 00 53 e3                                      cmp r3, #0
00870624  dd 00 00 0a                                      beq #0x8709a0
00870628  03 00 a0 e1                                      mov r0, r3
0087062c  00 30 93 e5                                      ldr r3, [r3]
00870630  0f e0 a0 e1                                      mov lr, pc
00870634  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00870638  0c 00 8d e5                                      str r0, [sp, #0xc]
0087063c  18 30 94 e5                                      ldr r3, [r4, #0x18]
00870640  00 10 a0 e3                                      mov r1, #0
00870644  01 20 a0 e1                                      mov r2, r1
00870648  03 00 a0 e1                                      mov r0, r3
0087064c  00 30 93 e5                                      ldr r3, [r3]
00870650  0f e0 a0 e1                                      mov lr, pc
00870654  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00870658  48 33 9f e5                                      ldr r3, [pc, #0x348]
0087065c  48 63 9f e5                                      ldr r6, [pc, #0x348]
00870660  48 83 9f e5                                      ldr r8, [pc, #0x348]
00870664  48 a3 9f e5                                      ldr sl, [pc, #0x348]
00870668  03 30 8f e0                                      add r3, pc, r3
0087066c  06 60 8f e0                                      add r6, pc, r6
00870670  08 80 8f e0                                      add r8, pc, r8
00870674  0a a0 8f e0                                      add sl, pc, sl
00870678  08 30 8d e5                                      str r3, [sp, #8]
0087067c  00 70 a0 e3                                      mov r7, #0
00870680  10 50 8d e2                                      add r5, sp, #0x10
00870684  18 30 94 e5                                      ldr r3, [r4, #0x18]
00870688  03 00 a0 e1                                      mov r0, r3
0087068c  00 30 93 e5                                      ldr r3, [r3]
00870690  0f e0 a0 e1                                      mov lr, pc
00870694  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00870698  00 00 50 e3                                      cmp r0, #0
0087069c  52 00 00 1a                                      bne #0x8707ec
008706a0  18 30 94 e5                                      ldr r3, [r4, #0x18]
008706a4  03 00 a0 e1                                      mov r0, r3
008706a8  00 30 93 e5                                      ldr r3, [r3]
008706ac  0f e0 a0 e1                                      mov lr, pc
008706b0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
008706b4  01 00 10 e3                                      tst r0, #1
008706b8  55 00 00 1a                                      bne #0x870814
008706bc  18 30 94 e5                                      ldr r3, [r4, #0x18]
008706c0  05 10 a0 e1                                      mov r1, r5
008706c4  08 20 a0 e3                                      mov r2, #8
008706c8  03 00 a0 e1                                      mov r0, r3
008706cc  00 30 93 e5                                      ldr r3, [r3]
008706d0  0f e0 a0 e1                                      mov lr, pc
008706d4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008706d8  08 00 50 e3                                      cmp r0, #8
008706dc  42 00 00 1a                                      bne #0x8707ec
008706e0  05 00 a0 e1                                      mov r0, r5
008706e4  06 10 a0 e1                                      mov r1, r6
008706e8  04 20 a0 e3                                      mov r2, #4
008706ec  62 79 ea eb                                      bl #0x30ec7c
008706f0  00 00 50 e3                                      cmp r0, #0
008706f4  4e 00 00 0a                                      beq #0x870834
008706f8  05 00 a0 e1                                      mov r0, r5
008706fc  08 10 a0 e1                                      mov r1, r8
00870700  04 20 a0 e3                                      mov r2, #4
00870704  5c 79 ea eb                                      bl #0x30ec7c
00870708  00 00 50 e3                                      cmp r0, #0
0087070c  59 00 00 0a                                      beq #0x870878
00870710  05 00 a0 e1                                      mov r0, r5
00870714  0a 10 a0 e1                                      mov r1, sl
00870718  04 20 a0 e3                                      mov r2, #4
0087071c  56 79 ea eb                                      bl #0x30ec7c
00870720  00 00 50 e3                                      cmp r0, #0
00870724  78 00 00 0a                                      beq #0x87090c
00870728  05 00 a0 e1                                      mov r0, r5
0087072c  08 10 9d e5                                      ldr r1, [sp, #8]
00870730  04 20 a0 e3                                      mov r2, #4
00870734  50 79 ea eb                                      bl #0x30ec7c
00870738  00 00 50 e3                                      cmp r0, #0
0087073c  6a 00 00 1a                                      bne #0x8708ec
00870740  20 00 94 e5                                      ldr r0, [r4, #0x20]
00870744  04 20 a0 e3                                      mov r2, #4
00870748  05 10 a0 e1                                      mov r1, r5
0087074c  24 00 80 e2                                      add r0, r0, #0x24
00870750  b3 75 ea eb                                      bl #0x30de24
00870754  20 30 94 e5                                      ldr r3, [r4, #0x20]
00870758  14 20 9d e5                                      ldr r2, [sp, #0x14]
0087075c  28 20 83 e5                                      str r2, [r3, #0x28]
00870760  20 30 94 e5                                      ldr r3, [r4, #0x20]
00870764  38 90 93 e5                                      ldr sb, [r3, #0x38]
00870768  00 00 59 e3                                      cmp sb, #0
0087076c  77 00 00 0a                                      beq #0x870950
00870770  18 30 94 e5                                      ldr r3, [r4, #0x18]
00870774  03 00 a0 e1                                      mov r0, r3
00870778  00 30 93 e5                                      ldr r3, [r3]
0087077c  0f e0 a0 e1                                      mov lr, pc
00870780  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00870784  20 20 94 e5                                      ldr r2, [r4, #0x20]
00870788  08 30 40 e2                                      sub r3, r0, #8
0087078c  28 20 92 e5                                      ldr r2, [r2, #0x28]
00870790  09 b0 a0 e1                                      mov fp, sb
00870794  08 90 99 e5                                      ldr sb, [sb, #8]
00870798  00 00 59 e3                                      cmp sb, #0
0087079c  fb ff ff 1a                                      bne #0x870790
008707a0  0c 00 a0 e3                                      mov r0, #0xc
008707a4  09 10 a0 e1                                      mov r1, sb
008707a8  0c 00 8d e8                                      stm sp, {r2, r3}
008707ac  a5 7f ea eb                                      bl #0x310648
008707b0  04 30 9d e5                                      ldr r3, [sp, #4]
008707b4  00 30 80 e5                                      str r3, [r0]
008707b8  00 20 9d e5                                      ldr r2, [sp]
008707bc  04 02 80 e9                                      stmib r0, {r2, sb}
008707c0  08 00 8b e5                                      str r0, [fp, #8]
008707c4  20 20 94 e5                                      ldr r2, [r4, #0x20]
008707c8  18 30 94 e5                                      ldr r3, [r4, #0x18]
008707cc  28 10 92 e5                                      ldr r1, [r2, #0x28]
008707d0  01 20 a0 e3                                      mov r2, #1
008707d4  03 00 a0 e1                                      mov r0, r3
008707d8  00 30 93 e5                                      ldr r3, [r3]
008707dc  0f e0 a0 e1                                      mov lr, pc
008707e0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008707e4  00 00 57 e3                                      cmp r7, #0
008707e8  a5 ff ff 1a                                      bne #0x870684
008707ec  18 30 94 e5                                      ldr r3, [r4, #0x18]
008707f0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
008707f4  00 20 a0 e3                                      mov r2, #0
008707f8  03 00 a0 e1                                      mov r0, r3
008707fc  00 30 93 e5                                      ldr r3, [r3]
00870800  0f e0 a0 e1                                      mov lr, pc
00870804  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00870808  01 00 a0 e3                                      mov r0, #1
0087080c  1c d0 8d e2                                      add sp, sp, #0x1c
00870810  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00870814  18 30 94 e5                                      ldr r3, [r4, #0x18]
00870818  01 10 a0 e3                                      mov r1, #1
0087081c  01 20 a0 e1                                      mov r2, r1
00870820  03 00 a0 e1                                      mov r0, r3
00870824  00 30 93 e5                                      ldr r3, [r3]
00870828  0f e0 a0 e1                                      mov lr, pc
0087082c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00870830  a1 ff ff ea                                      b #0x8706bc
00870834  05 10 a0 e1                                      mov r1, r5
00870838  04 20 a0 e3                                      mov r2, #4
0087083c  20 00 94 e5                                      ldr r0, [r4, #0x20]
00870840  77 75 ea eb                                      bl #0x30de24
00870844  20 30 94 e5                                      ldr r3, [r4, #0x20]
00870848  14 10 9d e5                                      ldr r1, [sp, #0x14]
0087084c  04 20 a0 e3                                      mov r2, #4
00870850  01 70 a0 e3                                      mov r7, #1
00870854  04 10 83 e5                                      str r1, [r3, #4]
00870858  18 30 94 e5                                      ldr r3, [r4, #0x18]
0087085c  20 10 94 e5                                      ldr r1, [r4, #0x20]
00870860  03 00 a0 e1                                      mov r0, r3
00870864  08 10 81 e2                                      add r1, r1, #8
00870868  00 30 93 e5                                      ldr r3, [r3]
0087086c  0f e0 a0 e1                                      mov lr, pc
00870870  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00870874  82 ff ff ea                                      b #0x870684
00870878  20 00 94 e5                                      ldr r0, [r4, #0x20]
0087087c  05 10 a0 e1                                      mov r1, r5
00870880  04 20 a0 e3                                      mov r2, #4
00870884  0c 00 80 e2                                      add r0, r0, #0xc
00870888  65 75 ea eb                                      bl #0x30de24
0087088c  20 30 94 e5                                      ldr r3, [r4, #0x20]
00870890  14 10 9d e5                                      ldr r1, [sp, #0x14]
00870894  10 20 a0 e3                                      mov r2, #0x10
00870898  10 10 83 e5                                      str r1, [r3, #0x10]
0087089c  18 30 94 e5                                      ldr r3, [r4, #0x18]
008708a0  20 10 94 e5                                      ldr r1, [r4, #0x20]
008708a4  03 00 a0 e1                                      mov r0, r3
008708a8  14 10 81 e2                                      add r1, r1, #0x14
008708ac  00 30 93 e5                                      ldr r3, [r3]
008708b0  0f e0 a0 e1                                      mov lr, pc
008708b4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008708b8  20 30 94 e5                                      ldr r3, [r4, #0x20]
008708bc  10 10 93 e5                                      ldr r1, [r3, #0x10]
008708c0  08 30 81 e2                                      add r3, r1, #8
008708c4  18 00 53 e3                                      cmp r3, #0x18
008708c8  c5 ff ff 9a                                      bls #0x8707e4
008708cc  18 30 94 e5                                      ldr r3, [r4, #0x18]
008708d0  10 10 41 e2                                      sub r1, r1, #0x10
008708d4  01 20 a0 e3                                      mov r2, #1
008708d8  03 00 a0 e1                                      mov r0, r3
008708dc  00 30 93 e5                                      ldr r3, [r3]
008708e0  0f e0 a0 e1                                      mov lr, pc
008708e4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008708e8  bd ff ff ea                                      b #0x8707e4
008708ec  18 30 94 e5                                      ldr r3, [r4, #0x18]
008708f0  14 10 9d e5                                      ldr r1, [sp, #0x14]
008708f4  01 20 a0 e3                                      mov r2, #1
008708f8  03 00 a0 e1                                      mov r0, r3
008708fc  00 30 93 e5                                      ldr r3, [r3]
00870900  0f e0 a0 e1                                      mov lr, pc
00870904  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00870908  b5 ff ff ea                                      b #0x8707e4
0087090c  20 00 94 e5                                      ldr r0, [r4, #0x20]
00870910  05 10 a0 e1                                      mov r1, r5
00870914  04 20 a0 e3                                      mov r2, #4
00870918  2c 00 80 e2                                      add r0, r0, #0x2c
0087091c  40 75 ea eb                                      bl #0x30de24
00870920  20 30 94 e5                                      ldr r3, [r4, #0x20]
00870924  14 10 9d e5                                      ldr r1, [sp, #0x14]
00870928  04 20 a0 e3                                      mov r2, #4
0087092c  30 10 83 e5                                      str r1, [r3, #0x30]
00870930  18 30 94 e5                                      ldr r3, [r4, #0x18]
00870934  20 10 94 e5                                      ldr r1, [r4, #0x20]
00870938  03 00 a0 e1                                      mov r0, r3
0087093c  34 10 81 e2                                      add r1, r1, #0x34
00870940  00 30 93 e5                                      ldr r3, [r3]
00870944  0f e0 a0 e1                                      mov lr, pc
00870948  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0087094c  a4 ff ff ea                                      b #0x8707e4
00870950  18 30 94 e5                                      ldr r3, [r4, #0x18]
00870954  03 00 a0 e1                                      mov r0, r3
00870958  00 30 93 e5                                      ldr r3, [r3]
0087095c  0f e0 a0 e1                                      mov lr, pc
00870960  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00870964  09 10 a0 e1                                      mov r1, sb
00870968  00 b0 a0 e1                                      mov fp, r0
0087096c  0c 00 a0 e3                                      mov r0, #0xc
00870970  34 7f ea eb                                      bl #0x310648
00870974  20 30 94 e5                                      ldr r3, [r4, #0x20]
00870978  08 b0 4b e2                                      sub fp, fp, #8
0087097c  28 30 93 e5                                      ldr r3, [r3, #0x28]
00870980  00 b0 80 e5                                      str fp, [r0]
00870984  08 02 80 e9                                      stmib r0, {r3, sb}
00870988  20 30 94 e5                                      ldr r3, [r4, #0x20]
0087098c  38 00 83 e5                                      str r0, [r3, #0x38]
00870990  20 20 94 e5                                      ldr r2, [r4, #0x20]
00870994  38 30 92 e5                                      ldr r3, [r2, #0x38]
00870998  00 00 53 e3                                      cmp r3, #0
0087099c  89 ff ff 1a                                      bne #0x8707c8
008709a0  00 00 a0 e3                                      mov r0, #0
008709a4  98 ff ff ea                                      b #0x87080c
; mapping-symbol data/literal pool
008709a8  f0 24 05 00 ac 08 0a 00 b0 08 0a 00 b4 08 0a 00  .byte 0xf0, 0x24, 0x05, 0x00, 0xac, 0x08, 0x0a, 0x00, 0xb0, 0x08, 0x0a, 0x00, 0xb4, 0x08, 0x0a, 0x00

; FUNCTION 0x008709d8, declared_size=84, range_size=84, mode=arm
; class-group: vox::DecoderMSWavCursor
; alias: _ZN3vox18DecoderMSWavCursorD1Ev
; demangled: vox::DecoderMSWavCursor::~DecoderMSWavCursor()
; decoder-mode: arm
008709d8  10 40 2d e9                                      push {r4, lr}
008709dc  40 30 9f e5                                      ldr r3, [pc, #0x40]
008709e0  40 20 9f e5                                      ldr r2, [pc, #0x40]
008709e4  24 10 90 e5                                      ldr r1, [r0, #0x24]
008709e8  03 30 8f e0                                      add r3, pc, r3
008709ec  02 20 93 e7                                      ldr r2, [r3, r2]
008709f0  00 00 51 e3                                      cmp r1, #0
008709f4  00 40 a0 e1                                      mov r4, r0
008709f8  08 20 82 e2                                      add r2, r2, #8
008709fc  00 20 80 e5                                      str r2, [r0]
00870a00  05 00 00 0a                                      beq #0x870a1c
00870a04  01 00 a0 e1                                      mov r0, r1
00870a08  00 30 91 e5                                      ldr r3, [r1]
00870a0c  0f e0 a0 e1                                      mov lr, pc
00870a10  00 f0 93 e5                                      ldr pc, [r3]
00870a14  24 00 94 e5                                      ldr r0, [r4, #0x24]
00870a18  89 7e ea eb                                      bl #0x310444
00870a1c  04 00 a0 e1                                      mov r0, r4
00870a20  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00870a24  a8 40 12 00 c8 3f 00 00                          .byte 0xa8, 0x40, 0x12, 0x00, 0xc8, 0x3f, 0x00, 0x00

; FUNCTION 0x00870a2c, declared_size=28, range_size=28, mode=arm
; class-group: vox::DecoderMSWavCursor
; alias: _ZN3vox18DecoderMSWavCursorD0Ev
; demangled: vox::DecoderMSWavCursor::~DecoderMSWavCursor()
; decoder-mode: arm
00870a2c  10 40 2d e9                                      push {r4, lr}
00870a30  00 40 a0 e1                                      mov r4, r0
00870a34  e7 ff ff eb                                      bl #0x8709d8
00870a38  04 00 a0 e1                                      mov r0, r4
00870a3c  1b 76 ea eb                                      bl #0x30e2b0
00870a40  04 00 a0 e1                                      mov r0, r4
00870a44  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00870a48, declared_size=84, range_size=84, mode=arm
; class-group: vox::DecoderMSWavCursor
; alias: _ZN3vox18DecoderMSWavCursorD2Ev
; demangled: vox::DecoderMSWavCursor::~DecoderMSWavCursor()
; decoder-mode: arm
00870a48  10 40 2d e9                                      push {r4, lr}
00870a4c  40 30 9f e5                                      ldr r3, [pc, #0x40]
00870a50  40 20 9f e5                                      ldr r2, [pc, #0x40]
00870a54  24 10 90 e5                                      ldr r1, [r0, #0x24]
00870a58  03 30 8f e0                                      add r3, pc, r3
00870a5c  02 20 93 e7                                      ldr r2, [r3, r2]
00870a60  00 00 51 e3                                      cmp r1, #0
00870a64  00 40 a0 e1                                      mov r4, r0
00870a68  08 20 82 e2                                      add r2, r2, #8
00870a6c  00 20 80 e5                                      str r2, [r0]
00870a70  05 00 00 0a                                      beq #0x870a8c
00870a74  01 00 a0 e1                                      mov r0, r1
00870a78  00 30 91 e5                                      ldr r3, [r1]
00870a7c  0f e0 a0 e1                                      mov lr, pc
00870a80  00 f0 93 e5                                      ldr pc, [r3]
00870a84  24 00 94 e5                                      ldr r0, [r4, #0x24]
00870a88  6d 7e ea eb                                      bl #0x310444
00870a8c  04 00 a0 e1                                      mov r0, r4
00870a90  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00870a94  38 40 12 00 c8 3f 00 00                          .byte 0x38, 0x40, 0x12, 0x00, 0xc8, 0x3f, 0x00, 0x00

; FUNCTION 0x00870ac8, declared_size=416, range_size=416, mode=arm
; class-group: vox::DecoderMSWavCursor
; alias: _ZN3vox18DecoderMSWavCursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE
; demangled: vox::DecoderMSWavCursor::DecoderMSWavCursor(vox::DecoderInterface*, vox::StreamCursorInterface*)
; decoder-mode: arm
00870ac8  88 31 9f e5                                      ldr r3, [pc, #0x188]
00870acc  88 c1 9f e5                                      ldr ip, [pc, #0x188]
00870ad0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00870ad4  03 30 8f e0                                      add r3, pc, r3
00870ad8  0c c0 93 e7                                      ldr ip, [r3, ip]
00870adc  00 70 a0 e3                                      mov r7, #0
00870ae0  00 40 a0 e1                                      mov r4, r0
00870ae4  08 c0 8c e2                                      add ip, ip, #8
00870ae8  04 50 81 e2                                      add r5, r1, #4
00870aec  00 c0 80 e5                                      str ip, [r0]
00870af0  04 70 80 e5                                      str r7, [r0, #4]
00870af4  08 70 80 e5                                      str r7, [r0, #8]
00870af8  0c 70 80 e5                                      str r7, [r0, #0xc]
00870afc  10 70 80 e5                                      str r7, [r0, #0x10]
00870b00  14 10 80 e5                                      str r1, [r0, #0x14]
00870b04  18 20 84 e5                                      str r2, [r4, #0x18]
00870b08  1c 70 c0 e5                                      strb r7, [r0, #0x1c]
00870b0c  24 70 80 e5                                      str r7, [r0, #0x24]
00870b10  20 50 80 e5                                      str r5, [r0, #0x20]
00870b14  02 60 a0 e1                                      mov r6, r2
00870b18  40 20 d1 e5                                      ldrb r2, [r1, #0x40]
00870b1c  07 00 52 e1                                      cmp r2, r7
00870b20  39 00 00 1a                                      bne #0x870c0c
00870b24  34 11 9f e5                                      ldr r1, [pc, #0x134]
00870b28  05 00 a0 e1                                      mov r0, r5
00870b2c  04 20 a0 e3                                      mov r2, #4
00870b30  01 10 8f e0                                      add r1, pc, r1
00870b34  50 78 ea eb                                      bl #0x30ec7c
00870b38  00 00 50 e3                                      cmp r0, #0
00870b3c  00 00 a0 13                                      movne r0, #0
00870b40  11 00 00 0a                                      beq #0x870b8c
00870b44  b4 31 d5 e1                                      ldrh r3, [r5, #0x14]
00870b48  01 00 53 e3                                      cmp r3, #1
00870b4c  18 00 00 0a                                      beq #0x870bb4
00870b50  11 00 53 e3                                      cmp r3, #0x11
00870b54  21 00 00 0a                                      beq #0x870be0
00870b58  24 50 94 e5                                      ldr r5, [r4, #0x24]
00870b5c  00 00 55 e3                                      cmp r5, #0
00870b60  36 00 00 0a                                      beq #0x870c40
00870b64  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
00870b68  18 10 95 e5                                      ldr r1, [r5, #0x18]
00870b6c  14 20 95 e5                                      ldr r2, [r5, #0x14]
00870b70  10 30 95 e5                                      ldr r3, [r5, #0x10]
00870b74  10 00 84 e5                                      str r0, [r4, #0x10]
00870b78  0c 10 84 e5                                      str r1, [r4, #0xc]
00870b7c  08 20 84 e5                                      str r2, [r4, #8]
00870b80  04 30 84 e5                                      str r3, [r4, #4]
00870b84  04 00 a0 e1                                      mov r0, r4
00870b88  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00870b8c  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
00870b90  08 00 85 e2                                      add r0, r5, #8
00870b94  04 20 a0 e3                                      mov r2, #4
00870b98  01 10 8f e0                                      add r1, pc, r1
00870b9c  36 78 ea eb                                      bl #0x30ec7c
00870ba0  b4 31 d5 e1                                      ldrh r3, [r5, #0x14]
00870ba4  01 00 70 e2                                      rsbs r0, r0, #1
00870ba8  00 00 a0 33                                      movlo r0, #0
00870bac  01 00 53 e3                                      cmp r3, #1
00870bb0  e6 ff ff 1a                                      bne #0x870b50
00870bb4  00 00 50 e3                                      cmp r0, #0
00870bb8  e6 ff ff 0a                                      beq #0x870b58
00870bbc  00 10 a0 e3                                      mov r1, #0
00870bc0  2c 00 a0 e3                                      mov r0, #0x2c
00870bc4  9f 7e ea eb                                      bl #0x310648
00870bc8  06 10 a0 e1                                      mov r1, r6
00870bcc  00 50 a0 e1                                      mov r5, r0
00870bd0  20 20 94 e5                                      ldr r2, [r4, #0x20]
00870bd4  63 15 00 eb                                      bl #0x876168
00870bd8  24 50 84 e5                                      str r5, [r4, #0x24]
00870bdc  de ff ff ea                                      b #0x870b5c
00870be0  00 00 50 e3                                      cmp r0, #0
00870be4  db ff ff 0a                                      beq #0x870b58
00870be8  00 10 a0 e3                                      mov r1, #0
00870bec  6c 00 a0 e3                                      mov r0, #0x6c
00870bf0  94 7e ea eb                                      bl #0x310648
00870bf4  06 10 a0 e1                                      mov r1, r6
00870bf8  00 50 a0 e1                                      mov r5, r0
00870bfc  20 20 94 e5                                      ldr r2, [r4, #0x20]
00870c00  6a 12 00 eb                                      bl #0x8755b0
00870c04  24 50 84 e5                                      str r5, [r4, #0x24]
00870c08  d3 ff ff ea                                      b #0x870b5c
00870c0c  7f fe ff eb                                      bl #0x870610
00870c10  00 00 50 e3                                      cmp r0, #0
00870c14  03 00 00 0a                                      beq #0x870c28
00870c18  14 30 94 e5                                      ldr r3, [r4, #0x14]
00870c1c  40 70 c3 e5                                      strb r7, [r3, #0x40]
00870c20  20 50 94 e5                                      ldr r5, [r4, #0x20]
00870c24  be ff ff ea                                      b #0x870b24
00870c28  10 00 84 e5                                      str r0, [r4, #0x10]
00870c2c  04 00 84 e5                                      str r0, [r4, #4]
00870c30  08 00 84 e5                                      str r0, [r4, #8]
00870c34  0c 00 84 e5                                      str r0, [r4, #0xc]
00870c38  04 00 a0 e1                                      mov r0, r4
00870c3c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00870c40  10 50 84 e5                                      str r5, [r4, #0x10]
00870c44  04 50 84 e5                                      str r5, [r4, #4]
00870c48  08 50 84 e5                                      str r5, [r4, #8]
00870c4c  0c 50 84 e5                                      str r5, [r4, #0xc]
00870c50  04 00 a0 e1                                      mov r0, r4
00870c54  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00870c58  bc 3f 12 00 c8 3f 00 00 e8 03 0a 00 98 03 0a 00  .byte 0xbc, 0x3f, 0x12, 0x00, 0xc8, 0x3f, 0x00, 0x00, 0xe8, 0x03, 0x0a, 0x00, 0x98, 0x03, 0x0a, 0x00

; FUNCTION 0x00870c98, declared_size=416, range_size=416, mode=arm
; class-group: vox::DecoderMSWavCursor
; alias: _ZN3vox18DecoderMSWavCursorC2EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE
; demangled: vox::DecoderMSWavCursor::DecoderMSWavCursor(vox::DecoderInterface*, vox::StreamCursorInterface*)
; decoder-mode: arm
00870c98  88 31 9f e5                                      ldr r3, [pc, #0x188]
00870c9c  88 c1 9f e5                                      ldr ip, [pc, #0x188]
00870ca0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00870ca4  03 30 8f e0                                      add r3, pc, r3
00870ca8  0c c0 93 e7                                      ldr ip, [r3, ip]
00870cac  00 70 a0 e3                                      mov r7, #0
00870cb0  00 40 a0 e1                                      mov r4, r0
00870cb4  08 c0 8c e2                                      add ip, ip, #8
00870cb8  04 50 81 e2                                      add r5, r1, #4
00870cbc  00 c0 80 e5                                      str ip, [r0]
00870cc0  04 70 80 e5                                      str r7, [r0, #4]
00870cc4  08 70 80 e5                                      str r7, [r0, #8]
00870cc8  0c 70 80 e5                                      str r7, [r0, #0xc]
00870ccc  10 70 80 e5                                      str r7, [r0, #0x10]
00870cd0  14 10 80 e5                                      str r1, [r0, #0x14]
00870cd4  18 20 84 e5                                      str r2, [r4, #0x18]
00870cd8  1c 70 c0 e5                                      strb r7, [r0, #0x1c]
00870cdc  24 70 80 e5                                      str r7, [r0, #0x24]
00870ce0  20 50 80 e5                                      str r5, [r0, #0x20]
00870ce4  02 60 a0 e1                                      mov r6, r2
00870ce8  40 20 d1 e5                                      ldrb r2, [r1, #0x40]
00870cec  07 00 52 e1                                      cmp r2, r7
00870cf0  39 00 00 1a                                      bne #0x870ddc
00870cf4  34 11 9f e5                                      ldr r1, [pc, #0x134]
00870cf8  05 00 a0 e1                                      mov r0, r5
00870cfc  04 20 a0 e3                                      mov r2, #4
00870d00  01 10 8f e0                                      add r1, pc, r1
00870d04  dc 77 ea eb                                      bl #0x30ec7c
00870d08  00 00 50 e3                                      cmp r0, #0
00870d0c  00 00 a0 13                                      movne r0, #0
00870d10  11 00 00 0a                                      beq #0x870d5c
00870d14  b4 31 d5 e1                                      ldrh r3, [r5, #0x14]
00870d18  01 00 53 e3                                      cmp r3, #1
00870d1c  18 00 00 0a                                      beq #0x870d84
00870d20  11 00 53 e3                                      cmp r3, #0x11
00870d24  21 00 00 0a                                      beq #0x870db0
00870d28  24 50 94 e5                                      ldr r5, [r4, #0x24]
00870d2c  00 00 55 e3                                      cmp r5, #0
00870d30  36 00 00 0a                                      beq #0x870e10
00870d34  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
00870d38  18 10 95 e5                                      ldr r1, [r5, #0x18]
00870d3c  14 20 95 e5                                      ldr r2, [r5, #0x14]
00870d40  10 30 95 e5                                      ldr r3, [r5, #0x10]
00870d44  10 00 84 e5                                      str r0, [r4, #0x10]
00870d48  0c 10 84 e5                                      str r1, [r4, #0xc]
00870d4c  08 20 84 e5                                      str r2, [r4, #8]
00870d50  04 30 84 e5                                      str r3, [r4, #4]
00870d54  04 00 a0 e1                                      mov r0, r4
00870d58  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00870d5c  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
00870d60  08 00 85 e2                                      add r0, r5, #8
00870d64  04 20 a0 e3                                      mov r2, #4
00870d68  01 10 8f e0                                      add r1, pc, r1
00870d6c  c2 77 ea eb                                      bl #0x30ec7c
00870d70  b4 31 d5 e1                                      ldrh r3, [r5, #0x14]
00870d74  01 00 70 e2                                      rsbs r0, r0, #1
00870d78  00 00 a0 33                                      movlo r0, #0
00870d7c  01 00 53 e3                                      cmp r3, #1
00870d80  e6 ff ff 1a                                      bne #0x870d20
00870d84  00 00 50 e3                                      cmp r0, #0
00870d88  e6 ff ff 0a                                      beq #0x870d28
00870d8c  00 10 a0 e3                                      mov r1, #0
00870d90  2c 00 a0 e3                                      mov r0, #0x2c
00870d94  2b 7e ea eb                                      bl #0x310648
00870d98  06 10 a0 e1                                      mov r1, r6
00870d9c  00 50 a0 e1                                      mov r5, r0
00870da0  20 20 94 e5                                      ldr r2, [r4, #0x20]
00870da4  ef 14 00 eb                                      bl #0x876168
00870da8  24 50 84 e5                                      str r5, [r4, #0x24]
00870dac  de ff ff ea                                      b #0x870d2c
00870db0  00 00 50 e3                                      cmp r0, #0
00870db4  db ff ff 0a                                      beq #0x870d28
00870db8  00 10 a0 e3                                      mov r1, #0
00870dbc  6c 00 a0 e3                                      mov r0, #0x6c
00870dc0  20 7e ea eb                                      bl #0x310648
00870dc4  06 10 a0 e1                                      mov r1, r6
00870dc8  00 50 a0 e1                                      mov r5, r0
00870dcc  20 20 94 e5                                      ldr r2, [r4, #0x20]
00870dd0  f6 11 00 eb                                      bl #0x8755b0
00870dd4  24 50 84 e5                                      str r5, [r4, #0x24]
00870dd8  d3 ff ff ea                                      b #0x870d2c
00870ddc  0b fe ff eb                                      bl #0x870610
00870de0  00 00 50 e3                                      cmp r0, #0
00870de4  03 00 00 0a                                      beq #0x870df8
00870de8  14 30 94 e5                                      ldr r3, [r4, #0x14]
00870dec  40 70 c3 e5                                      strb r7, [r3, #0x40]
00870df0  20 50 94 e5                                      ldr r5, [r4, #0x20]
00870df4  be ff ff ea                                      b #0x870cf4
00870df8  10 00 84 e5                                      str r0, [r4, #0x10]
00870dfc  04 00 84 e5                                      str r0, [r4, #4]
00870e00  08 00 84 e5                                      str r0, [r4, #8]
00870e04  0c 00 84 e5                                      str r0, [r4, #0xc]
00870e08  04 00 a0 e1                                      mov r0, r4
00870e0c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00870e10  10 50 84 e5                                      str r5, [r4, #0x10]
00870e14  04 50 84 e5                                      str r5, [r4, #4]
00870e18  08 50 84 e5                                      str r5, [r4, #8]
00870e1c  0c 50 84 e5                                      str r5, [r4, #0xc]
00870e20  04 00 a0 e1                                      mov r0, r4
00870e24  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00870e28  ec 3d 12 00 c8 3f 00 00 18 02 0a 00 c8 01 0a 00  .byte 0xec, 0x3d, 0x12, 0x00, 0xc8, 0x3f, 0x00, 0x00, 0x18, 0x02, 0x0a, 0x00, 0xc8, 0x01, 0x0a, 0x00
