; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006b4f34, declared_size=92, range_size=92, mode=arm
; class-group: glitch::io::CZipWriter
; alias: _ZN6glitch2io10CZipWriterC2EPNS0_10IWriteFileE
; demangled: glitch::io::CZipWriter::CZipWriter(glitch::io::IWriteFile*)
; decoder-mode: arm
006b4f34  4c c0 9f e5                                      ldr ip, [pc, #0x4c]
006b4f38  30 00 2d e9                                      push {r4, r5}
006b4f3c  48 40 9f e5                                      ldr r4, [pc, #0x48]
006b4f40  0c c0 8f e0                                      add ip, pc, ip
006b4f44  00 20 a0 e3                                      mov r2, #0
006b4f48  04 40 9c e7                                      ldr r4, [ip, r4]
006b4f4c  01 50 a0 e3                                      mov r5, #1
006b4f50  2c 20 80 e5                                      str r2, [r0, #0x2c]
006b4f54  08 40 84 e2                                      add r4, r4, #8
006b4f58  30 00 80 e8                                      stm r0, {r4, r5}
006b4f5c  08 10 80 e5                                      str r1, [r0, #8]
006b4f60  0c 20 c0 e5                                      strb r2, [r0, #0xc]
006b4f64  10 20 80 e5                                      str r2, [r0, #0x10]
006b4f68  14 20 80 e5                                      str r2, [r0, #0x14]
006b4f6c  18 20 80 e5                                      str r2, [r0, #0x18]
006b4f70  1c 20 80 e5                                      str r2, [r0, #0x1c]
006b4f74  20 20 80 e5                                      str r2, [r0, #0x20]
006b4f78  24 20 80 e5                                      str r2, [r0, #0x24]
006b4f7c  28 20 80 e5                                      str r2, [r0, #0x28]
006b4f80  30 00 bd e8                                      pop {r4, r5}
006b4f84  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006b4f88  50 fb 2d 00 7c 27 00 00                          .byte 0x50, 0xfb, 0x2d, 0x00, 0x7c, 0x27, 0x00, 0x00

; FUNCTION 0x006b4f90, declared_size=92, range_size=92, mode=arm
; class-group: glitch::io::CZipWriter
; alias: _ZN6glitch2io10CZipWriterC1EPNS0_10IWriteFileE
; demangled: glitch::io::CZipWriter::CZipWriter(glitch::io::IWriteFile*)
; decoder-mode: arm
006b4f90  4c c0 9f e5                                      ldr ip, [pc, #0x4c]
006b4f94  30 00 2d e9                                      push {r4, r5}
006b4f98  48 40 9f e5                                      ldr r4, [pc, #0x48]
006b4f9c  0c c0 8f e0                                      add ip, pc, ip
006b4fa0  00 20 a0 e3                                      mov r2, #0
006b4fa4  04 40 9c e7                                      ldr r4, [ip, r4]
006b4fa8  01 50 a0 e3                                      mov r5, #1
006b4fac  2c 20 80 e5                                      str r2, [r0, #0x2c]
006b4fb0  08 40 84 e2                                      add r4, r4, #8
006b4fb4  30 00 80 e8                                      stm r0, {r4, r5}
006b4fb8  08 10 80 e5                                      str r1, [r0, #8]
006b4fbc  0c 20 c0 e5                                      strb r2, [r0, #0xc]
006b4fc0  10 20 80 e5                                      str r2, [r0, #0x10]
006b4fc4  14 20 80 e5                                      str r2, [r0, #0x14]
006b4fc8  18 20 80 e5                                      str r2, [r0, #0x18]
006b4fcc  1c 20 80 e5                                      str r2, [r0, #0x1c]
006b4fd0  20 20 80 e5                                      str r2, [r0, #0x20]
006b4fd4  24 20 80 e5                                      str r2, [r0, #0x24]
006b4fd8  28 20 80 e5                                      str r2, [r0, #0x28]
006b4fdc  30 00 bd e8                                      pop {r4, r5}
006b4fe0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006b4fe4  f4 fa 2d 00 7c 27 00 00                          .byte 0xf4, 0xfa, 0x2d, 0x00, 0x7c, 0x27, 0x00, 0x00

; FUNCTION 0x006b4fec, declared_size=256, range_size=256, mode=arm
; class-group: glitch::io::CZipWriter
; alias: _ZN6glitch2io10CZipWriter5closeEv
; demangled: glitch::io::CZipWriter::close()
; decoder-mode: arm
006b4fec  70 40 2d e9                                      push {r4, r5, r6, lr}
006b4ff0  18 20 90 e5                                      ldr r2, [r0, #0x18]
006b4ff4  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
006b4ff8  01 10 a0 e3                                      mov r1, #1
006b4ffc  18 d0 4d e2                                      sub sp, sp, #0x18
006b5000  03 00 52 e1                                      cmp r2, r3
006b5004  00 60 a0 e1                                      mov r6, r0
006b5008  0c 10 c0 e5                                      strb r1, [r0, #0xc]
006b500c  24 50 90 e5                                      ldr r5, [r0, #0x24]
006b5010  02 40 a0 e1                                      mov r4, r2
006b5014  14 00 00 0a                                      beq #0x6b506c
006b5018  08 30 96 e5                                      ldr r3, [r6, #8]
006b501c  04 10 a0 e1                                      mov r1, r4
006b5020  2e 20 a0 e3                                      mov r2, #0x2e
006b5024  03 00 a0 e1                                      mov r0, r3
006b5028  00 30 93 e5                                      ldr r3, [r3]
006b502c  0f e0 a0 e1                                      mov lr, pc
006b5030  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b5034  14 10 95 e5                                      ldr r1, [r5, #0x14]
006b5038  08 30 96 e5                                      ldr r3, [r6, #8]
006b503c  10 20 95 e5                                      ldr r2, [r5, #0x10]
006b5040  2e 40 84 e2                                      add r4, r4, #0x2e
006b5044  03 00 a0 e1                                      mov r0, r3
006b5048  02 20 61 e0                                      rsb r2, r1, r2
006b504c  00 30 93 e5                                      ldr r3, [r3]
006b5050  0f e0 a0 e1                                      mov lr, pc
006b5054  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b5058  1c 30 96 e5                                      ldr r3, [r6, #0x1c]
006b505c  18 50 85 e2                                      add r5, r5, #0x18
006b5060  03 00 54 e1                                      cmp r4, r3
006b5064  eb ff ff 1a                                      bne #0x6b5018
006b5068  18 20 96 e5                                      ldr r2, [r6, #0x18]
006b506c  03 20 62 e0                                      rsb r2, r2, r3
006b5070  a7 17 03 e3                                      movw r1, #0x37a7
006b5074  bd 19 4e e3                                      movt r1, #0xe9bd
006b5078  c2 20 a0 e1                                      asr r2, r2, #1
006b507c  10 00 96 e5                                      ldr r0, [r6, #0x10]
006b5080  14 c0 96 e5                                      ldr ip, [r6, #0x14]
006b5084  91 02 02 e0                                      mul r2, r1, r2
006b5088  50 1b 04 e3                                      movw r1, #0x4b50
006b508c  08 30 96 e5                                      ldr r3, [r6, #8]
006b5090  05 16 40 e3                                      movt r1, #0x605
006b5094  00 10 8d e5                                      str r1, [sp]
006b5098  00 10 a0 e3                                      mov r1, #0
006b509c  ba 20 cd e1                                      strh r2, [sp, #0xa]
006b50a0  10 00 8d e5                                      str r0, [sp, #0x10]
006b50a4  b4 10 cd e1                                      strh r1, [sp, #4]
006b50a8  b6 10 cd e1                                      strh r1, [sp, #6]
006b50ac  b8 20 cd e1                                      strh r2, [sp, #8]
006b50b0  b4 11 cd e1                                      strh r1, [sp, #0x14]
006b50b4  0c c0 8d e5                                      str ip, [sp, #0xc]
006b50b8  03 00 a0 e1                                      mov r0, r3
006b50bc  0d 10 a0 e1                                      mov r1, sp
006b50c0  00 30 93 e5                                      ldr r3, [r3]
006b50c4  16 20 a0 e3                                      mov r2, #0x16
006b50c8  0f e0 a0 e1                                      mov lr, pc
006b50cc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b50d0  08 30 96 e5                                      ldr r3, [r6, #8]
006b50d4  03 00 a0 e1                                      mov r0, r3
006b50d8  00 30 93 e5                                      ldr r3, [r3]
006b50dc  0f e0 a0 e1                                      mov lr, pc
006b50e0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006b50e4  18 d0 8d e2                                      add sp, sp, #0x18
006b50e8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006b5238, declared_size=80, range_size=80, mode=arm
; class-group: glitch::io::CZipWriter
; alias: _ZN6glitch2io10CZipWriterD1Ev
; demangled: glitch::io::CZipWriter::~CZipWriter()
; decoder-mode: arm
006b5238  40 30 9f e5                                      ldr r3, [pc, #0x40]
006b523c  40 20 9f e5                                      ldr r2, [pc, #0x40]
006b5240  70 40 2d e9                                      push {r4, r5, r6, lr}
006b5244  03 30 8f e0                                      add r3, pc, r3
006b5248  02 20 93 e7                                      ldr r2, [r3, r2]
006b524c  00 50 a0 e1                                      mov r5, r0
006b5250  00 40 a0 e1                                      mov r4, r0
006b5254  08 20 82 e2                                      add r2, r2, #8
006b5258  24 20 85 e4                                      str r2, [r5], #0x24
006b525c  62 ff ff eb                                      bl #0x6b4fec
006b5260  05 00 a0 e1                                      mov r0, r5
006b5264  df bb fa eb                                      bl #0x5641e8
006b5268  18 00 94 e5                                      ldr r0, [r4, #0x18]
006b526c  00 00 50 e3                                      cmp r0, #0
006b5270  00 00 00 0a                                      beq #0x6b5278
006b5274  75 6c f1 eb                                      bl #0x310450
006b5278  04 00 a0 e1                                      mov r0, r4
006b527c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006b5280  4c f8 2d 00 7c 27 00 00                          .byte 0x4c, 0xf8, 0x2d, 0x00, 0x7c, 0x27, 0x00, 0x00

; FUNCTION 0x006b5288, declared_size=80, range_size=80, mode=arm
; class-group: glitch::io::CZipWriter
; alias: _ZN6glitch2io10CZipWriterD2Ev
; demangled: glitch::io::CZipWriter::~CZipWriter()
; decoder-mode: arm
006b5288  40 30 9f e5                                      ldr r3, [pc, #0x40]
006b528c  40 20 9f e5                                      ldr r2, [pc, #0x40]
006b5290  70 40 2d e9                                      push {r4, r5, r6, lr}
006b5294  03 30 8f e0                                      add r3, pc, r3
006b5298  02 20 93 e7                                      ldr r2, [r3, r2]
006b529c  00 50 a0 e1                                      mov r5, r0
006b52a0  00 40 a0 e1                                      mov r4, r0
006b52a4  08 20 82 e2                                      add r2, r2, #8
006b52a8  24 20 85 e4                                      str r2, [r5], #0x24
006b52ac  4e ff ff eb                                      bl #0x6b4fec
006b52b0  05 00 a0 e1                                      mov r0, r5
006b52b4  cb bb fa eb                                      bl #0x5641e8
006b52b8  18 00 94 e5                                      ldr r0, [r4, #0x18]
006b52bc  00 00 50 e3                                      cmp r0, #0
006b52c0  00 00 00 0a                                      beq #0x6b52c8
006b52c4  61 6c f1 eb                                      bl #0x310450
006b52c8  04 00 a0 e1                                      mov r0, r4
006b52cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006b52d0  fc f7 2d 00 7c 27 00 00                          .byte 0xfc, 0xf7, 0x2d, 0x00, 0x7c, 0x27, 0x00, 0x00

; FUNCTION 0x006b52d8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CZipWriter
; alias: _ZN6glitch2io10CZipWriterD0Ev
; demangled: glitch::io::CZipWriter::~CZipWriter()
; decoder-mode: arm
006b52d8  10 40 2d e9                                      push {r4, lr}
006b52dc  00 40 a0 e1                                      mov r4, r0
006b52e0  d4 ff ff eb                                      bl #0x6b5238
006b52e4  04 00 a0 e1                                      mov r0, r4
006b52e8  f0 63 f1 eb                                      bl #0x30e2b0
006b52ec  04 00 a0 e1                                      mov r0, r4
006b52f0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006b5448, declared_size=980, range_size=980, mode=arm
; class-group: glitch::io::CZipWriter
; alias: _ZN6glitch2io10CZipWriter10addNewFileERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEEPKvj
; demangled: glitch::io::CZipWriter::addNewFile(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, void const*, unsigned int)
; decoder-mode: arm
006b5448  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006b544c  c0 73 9f e5                                      ldr r7, [pc, #0x3c0]
006b5450  01 50 a0 e1                                      mov r5, r1
006b5454  02 60 a0 e1                                      mov r6, r2
006b5458  03 80 a0 e1                                      mov r8, r3
006b545c  6c d0 4d e2                                      sub sp, sp, #0x6c
006b5460  00 40 a0 e1                                      mov r4, r0
006b5464  1f 30 a0 e3                                      mov r3, #0x1f
006b5468  00 90 a0 e3                                      mov sb, #0
006b546c  00 20 e0 e3                                      mvn r2, #0
006b5470  01 10 a0 e3                                      mov r1, #1
006b5474  07 70 8f e0                                      add r7, pc, r7
006b5478  00 00 00 ea                                      b #0x6b5480
006b547c  a2 20 a0 e1                                      lsr r2, r2, #1
006b5480  01 00 12 e3                                      tst r2, #1
006b5484  11 93 89 11                                      orrne sb, sb, r1, lsl r3
006b5488  01 30 53 e2                                      subs r3, r3, #1
006b548c  fa ff ff 2a                                      bhs #0x6b547c
006b5490  15 ff ff eb                                      bl #0x6b50ec
006b5494  08 10 86 e0                                      add r1, r6, r8
006b5498  01 00 56 e1                                      cmp r6, r1
006b549c  06 30 a0 e1                                      mov r3, r6
006b54a0  08 00 00 2a                                      bhs #0x6b54c8
006b54a4  6c 23 9f e5                                      ldr r2, [pc, #0x36c]
006b54a8  02 00 97 e7                                      ldr r0, [r7, r2]
006b54ac  01 20 d3 e4                                      ldrb r2, [r3], #1
006b54b0  02 20 29 e0                                      eor r2, sb, r2
006b54b4  72 20 ef e6                                      uxtb r2, r2
006b54b8  02 21 90 e7                                      ldr r2, [r0, r2, lsl #2]
006b54bc  01 00 53 e1                                      cmp r3, r1
006b54c0  29 94 22 e0                                      eor sb, r2, sb, lsr #8
006b54c4  f8 ff ff 1a                                      bne #0x6b54ac
006b54c8  10 20 95 e5                                      ldr r2, [r5, #0x10]
006b54cc  14 30 95 e5                                      ldr r3, [r5, #0x14]
006b54d0  20 10 94 e5                                      ldr r1, [r4, #0x20]
006b54d4  1c 70 94 e5                                      ldr r7, [r4, #0x1c]
006b54d8  02 30 63 e0                                      rsb r3, r3, r2
006b54dc  50 2b 04 e3                                      movw r2, #0x4b50
006b54e0  03 24 40 e3                                      movt r2, #0x403
006b54e4  09 90 e0 e1                                      mvn sb, sb
006b54e8  48 20 8d e5                                      str r2, [sp, #0x48]
006b54ec  0a 20 a0 e3                                      mov r2, #0xa
006b54f0  78 00 ff e6                                      uxth r0, r8
006b54f4  bc 24 cd e1                                      strh r2, [sp, #0x4c]
006b54f8  01 00 57 e1                                      cmp r7, r1
006b54fc  00 20 a0 e3                                      mov r2, #0
006b5500  28 18 a0 e1                                      lsr r1, r8, #0x10
006b5504  73 30 ff e6                                      uxth r3, r3
006b5508  29 c8 a0 e1                                      lsr ip, sb, #0x10
006b550c  b8 c5 cd e1                                      strh ip, [sp, #0x58]
006b5510  be 05 cd e1                                      strh r0, [sp, #0x5e]
006b5514  b0 16 cd e1                                      strh r1, [sp, #0x60]
006b5518  be 24 cd e1                                      strh r2, [sp, #0x4e]
006b551c  b0 25 cd e1                                      strh r2, [sp, #0x50]
006b5520  b6 95 cd e1                                      strh sb, [sp, #0x56]
006b5524  ba 05 cd e1                                      strh r0, [sp, #0x5a]
006b5528  bc 15 cd e1                                      strh r1, [sp, #0x5c]
006b552c  b2 36 cd e1                                      strh r3, [sp, #0x62]
006b5530  b4 26 cd e1                                      strh r2, [sp, #0x64]
006b5534  10 b0 94 e5                                      ldr fp, [r4, #0x10]
006b5538  47 00 00 0a                                      beq #0x6b565c
006b553c  2b 08 a0 e1                                      lsr r0, fp, #0x10
006b5540  50 2b 04 e3                                      movw r2, #0x4b50
006b5544  b4 04 cd e1                                      strh r0, [sp, #0x44]
006b5548  01 22 40 e3                                      movt r2, #0x201
006b554c  00 00 a0 e3                                      mov r0, #0
006b5550  68 10 8d e2                                      add r1, sp, #0x68
006b5554  b4 33 cd e1                                      strh r3, [sp, #0x34]
006b5558  00 30 a0 e3                                      mov r3, #0
006b555c  be 03 cd e1                                      strh r0, [sp, #0x3e]
006b5560  b0 04 cd e1                                      strh r0, [sp, #0x40]
006b5564  b2 b4 cd e1                                      strh fp, [sp, #0x42]
006b5568  bc 33 cd e1                                      strh r3, [sp, #0x3c]
006b556c  50 20 21 e5                                      str r2, [r1, #-0x50]!
006b5570  ba 33 cd e1                                      strh r3, [sp, #0x3a]
006b5574  b8 33 cd e1                                      strh r3, [sp, #0x38]
006b5578  b6 33 cd e1                                      strh r3, [sp, #0x36]
006b557c  b2 32 cd e1                                      strh r3, [sp, #0x22]
006b5580  b0 32 cd e1                                      strh r3, [sp, #0x20]
006b5584  07 00 a0 e1                                      mov r0, r7
006b5588  0a 30 a0 e3                                      mov r3, #0xa
006b558c  2e 20 a0 e3                                      mov r2, #0x2e
006b5590  be 31 cd e1                                      strh r3, [sp, #0x1e]
006b5594  bc 31 cd e1                                      strh r3, [sp, #0x1c]
006b5598  28 90 8d e5                                      str sb, [sp, #0x28]
006b559c  30 80 8d e5                                      str r8, [sp, #0x30]
006b55a0  2c 80 8d e5                                      str r8, [sp, #0x2c]
006b55a4  af 64 f1 eb                                      bl #0x30e868
006b55a8  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
006b55ac  2e 30 83 e2                                      add r3, r3, #0x2e
006b55b0  1c 30 84 e5                                      str r3, [r4, #0x1c]
006b55b4  24 00 84 e2                                      add r0, r4, #0x24
006b55b8  05 10 a0 e1                                      mov r1, r5
006b55bc  c4 bf fa eb                                      bl #0x5654d4
006b55c0  10 00 95 e5                                      ldr r0, [r5, #0x10]
006b55c4  14 20 95 e5                                      ldr r2, [r5, #0x14]
006b55c8  14 30 94 e5                                      ldr r3, [r4, #0x14]
006b55cc  10 10 94 e5                                      ldr r1, [r4, #0x10]
006b55d0  00 20 62 e0                                      rsb r2, r2, r0
006b55d4  2e 30 83 e2                                      add r3, r3, #0x2e
006b55d8  02 30 83 e0                                      add r3, r3, r2
006b55dc  14 30 84 e5                                      str r3, [r4, #0x14]
006b55e0  14 00 95 e5                                      ldr r0, [r5, #0x14]
006b55e4  10 20 95 e5                                      ldr r2, [r5, #0x10]
006b55e8  1e 10 81 e2                                      add r1, r1, #0x1e
006b55ec  08 30 94 e5                                      ldr r3, [r4, #8]
006b55f0  02 20 60 e0                                      rsb r2, r0, r2
006b55f4  02 20 81 e0                                      add r2, r1, r2
006b55f8  08 20 82 e0                                      add r2, r2, r8
006b55fc  10 20 84 e5                                      str r2, [r4, #0x10]
006b5600  48 10 8d e2                                      add r1, sp, #0x48
006b5604  03 00 a0 e1                                      mov r0, r3
006b5608  1e 20 a0 e3                                      mov r2, #0x1e
006b560c  00 30 93 e5                                      ldr r3, [r3]
006b5610  0f e0 a0 e1                                      mov lr, pc
006b5614  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b5618  14 10 95 e5                                      ldr r1, [r5, #0x14]
006b561c  08 30 94 e5                                      ldr r3, [r4, #8]
006b5620  10 20 95 e5                                      ldr r2, [r5, #0x10]
006b5624  03 00 a0 e1                                      mov r0, r3
006b5628  02 20 61 e0                                      rsb r2, r1, r2
006b562c  00 30 93 e5                                      ldr r3, [r3]
006b5630  0f e0 a0 e1                                      mov lr, pc
006b5634  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b5638  08 30 94 e5                                      ldr r3, [r4, #8]
006b563c  06 10 a0 e1                                      mov r1, r6
006b5640  08 20 a0 e1                                      mov r2, r8
006b5644  03 00 a0 e1                                      mov r0, r3
006b5648  00 30 93 e5                                      ldr r3, [r3]
006b564c  0f e0 a0 e1                                      mov lr, pc
006b5650  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b5654  6c d0 8d e2                                      add sp, sp, #0x6c
006b5658  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006b565c  18 10 94 e5                                      ldr r1, [r4, #0x18]
006b5660  a7 27 03 e3                                      movw r2, #0x37a7
006b5664  bd 29 4e e3                                      movt r2, #0xe9bd
006b5668  07 10 61 e0                                      rsb r1, r1, r7
006b566c  c1 10 a0 e1                                      asr r1, r1, #1
006b5670  92 01 01 e0                                      mul r1, r2, r1
006b5674  16 22 0b e3                                      movw r2, #0xb216
006b5678  01 00 51 e3                                      cmp r1, #1
006b567c  01 00 81 20                                      addhs r0, r1, r1
006b5680  01 00 81 32                                      addlo r0, r1, #1
006b5684  82 25 82 e1                                      orr r2, r2, r2, lsl #11
006b5688  02 00 50 e1                                      cmp r0, r2
006b568c  5d 00 00 8a                                      bhi #0x6b5808
006b5690  00 00 51 e1                                      cmp r1, r0
006b5694  2e 20 a0 93                                      movls r2, #0x2e
006b5698  92 00 02 90                                      mulls r2, r2, r0
006b569c  08 20 8d 95                                      strls r2, [sp, #8]
006b56a0  58 00 00 8a                                      bhi #0x6b5808
006b56a4  00 10 a0 e3                                      mov r1, #0
006b56a8  08 00 9d e5                                      ldr r0, [sp, #8]
006b56ac  00 30 8d e5                                      str r3, [sp]
006b56b0  ac 6b f1 eb                                      bl #0x310568
006b56b4  04 00 8d e5                                      str r0, [sp, #4]
006b56b8  18 00 94 e5                                      ldr r0, [r4, #0x18]
006b56bc  a7 27 03 e3                                      movw r2, #0x37a7
006b56c0  bd 29 4e e3                                      movt r2, #0xe9bd
006b56c4  07 10 60 e0                                      rsb r1, r0, r7
006b56c8  c1 10 a0 e1                                      asr r1, r1, #1
006b56cc  92 01 02 e0                                      mul r2, r2, r1
006b56d0  00 30 9d e5                                      ldr r3, [sp]
006b56d4  00 00 52 e3                                      cmp r2, #0
006b56d8  04 70 9d d5                                      ldrle r7, [sp, #4]
006b56dc  17 00 00 da                                      ble #0x6b5740
006b56e0  2e a0 a0 e3                                      mov sl, #0x2e
006b56e4  10 b0 8d e5                                      str fp, [sp, #0x10]
006b56e8  9a 02 0a e0                                      mul sl, sl, r2
006b56ec  04 b0 a0 e1                                      mov fp, r4
006b56f0  04 40 9d e5                                      ldr r4, [sp, #4]
006b56f4  14 90 8d e5                                      str sb, [sp, #0x14]
006b56f8  00 70 a0 e3                                      mov r7, #0
006b56fc  05 90 a0 e1                                      mov sb, r5
006b5700  0c 30 8d e5                                      str r3, [sp, #0xc]
006b5704  00 50 a0 e1                                      mov r5, r0
006b5708  07 00 84 e0                                      add r0, r4, r7
006b570c  07 10 85 e0                                      add r1, r5, r7
006b5710  2e 20 a0 e3                                      mov r2, #0x2e
006b5714  2e 70 87 e2                                      add r7, r7, #0x2e
006b5718  52 64 f1 eb                                      bl #0x30e868
006b571c  0a 00 57 e1                                      cmp r7, sl
006b5720  f8 ff ff 1a                                      bne #0x6b5708
006b5724  04 10 9d e5                                      ldr r1, [sp, #4]
006b5728  0b 40 a0 e1                                      mov r4, fp
006b572c  09 50 a0 e1                                      mov r5, sb
006b5730  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006b5734  10 b0 9d e5                                      ldr fp, [sp, #0x10]
006b5738  14 90 9d e5                                      ldr sb, [sp, #0x14]
006b573c  07 70 81 e0                                      add r7, r1, r7
006b5740  2b 08 a0 e1                                      lsr r0, fp, #0x10
006b5744  50 2b 04 e3                                      movw r2, #0x4b50
006b5748  b4 04 cd e1                                      strh r0, [sp, #0x44]
006b574c  01 22 40 e3                                      movt r2, #0x201
006b5750  00 00 a0 e3                                      mov r0, #0
006b5754  68 10 8d e2                                      add r1, sp, #0x68
006b5758  b4 33 cd e1                                      strh r3, [sp, #0x34]
006b575c  00 30 a0 e3                                      mov r3, #0
006b5760  be 03 cd e1                                      strh r0, [sp, #0x3e]
006b5764  b0 04 cd e1                                      strh r0, [sp, #0x40]
006b5768  b2 b4 cd e1                                      strh fp, [sp, #0x42]
006b576c  07 00 a0 e1                                      mov r0, r7
006b5770  50 20 21 e5                                      str r2, [r1, #-0x50]!
006b5774  bc 33 cd e1                                      strh r3, [sp, #0x3c]
006b5778  ba 33 cd e1                                      strh r3, [sp, #0x3a]
006b577c  b8 33 cd e1                                      strh r3, [sp, #0x38]
006b5780  b6 33 cd e1                                      strh r3, [sp, #0x36]
006b5784  b2 32 cd e1                                      strh r3, [sp, #0x22]
006b5788  b0 32 cd e1                                      strh r3, [sp, #0x20]
006b578c  2e 20 a0 e3                                      mov r2, #0x2e
006b5790  0a 30 a0 e3                                      mov r3, #0xa
006b5794  be 31 cd e1                                      strh r3, [sp, #0x1e]
006b5798  bc 31 cd e1                                      strh r3, [sp, #0x1c]
006b579c  28 90 8d e5                                      str sb, [sp, #0x28]
006b57a0  30 80 8d e5                                      str r8, [sp, #0x30]
006b57a4  2c 80 8d e5                                      str r8, [sp, #0x2c]
006b57a8  2e 64 f1 eb                                      bl #0x30e868
006b57ac  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
006b57b0  18 30 94 e5                                      ldr r3, [r4, #0x18]
006b57b4  2e 70 87 e2                                      add r7, r7, #0x2e
006b57b8  03 00 50 e1                                      cmp r0, r3
006b57bc  0a 00 00 0a                                      beq #0x6b57ec
006b57c0  2e 20 40 e2                                      sub r2, r0, #0x2e
006b57c4  02 20 63 e0                                      rsb r2, r3, r2
006b57c8  a7 37 03 e3                                      movw r3, #0x37a7
006b57cc  a2 20 a0 e1                                      lsr r2, r2, #1
006b57d0  bd 39 46 e3                                      movt r3, #0x69bd
006b57d4  93 02 03 e0                                      mul r3, r3, r2
006b57d8  2d 20 e0 e3                                      mvn r2, #0x2d
006b57dc  02 31 c3 e3                                      bic r3, r3, #0x80000000
006b57e0  92 03 03 e0                                      mul r3, r2, r3
006b57e4  02 30 83 e0                                      add r3, r3, r2
006b57e8  03 00 80 e0                                      add r0, r0, r3
006b57ec  17 6b f1 eb                                      bl #0x310450
006b57f0  03 00 9d e9                                      ldmib sp, {r0, r1}
006b57f4  1c 70 84 e5                                      str r7, [r4, #0x1c]
006b57f8  18 00 84 e5                                      str r0, [r4, #0x18]
006b57fc  01 30 80 e0                                      add r3, r0, r1
006b5800  20 30 84 e5                                      str r3, [r4, #0x20]
006b5804  6a ff ff ea                                      b #0x6b55b4
006b5808  0b 00 e0 e3                                      mvn r0, #0xb
006b580c  08 00 8d e5                                      str r0, [sp, #8]
006b5810  a3 ff ff ea                                      b #0x6b56a4
; mapping-symbol data/literal pool
006b5814  1c f6 2d 00 0c 41 00 00                          .byte 0x1c, 0xf6, 0x2d, 0x00, 0x0c, 0x41, 0x00, 0x00

; FUNCTION 0x006b581c, declared_size=140, range_size=140, mode=arm
; class-group: glitch::io::CZipWriter
; alias: _ZN6glitch2io10CZipWriter10addNewFileERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEEPNS0_9IReadFileE
; demangled: glitch::io::CZipWriter::addNewFile(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, glitch::io::IReadFile*)
; decoder-mode: arm
006b581c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006b5820  00 70 a0 e1                                      mov r7, r0
006b5824  00 30 92 e5                                      ldr r3, [r2]
006b5828  02 00 a0 e1                                      mov r0, r2
006b582c  02 50 a0 e1                                      mov r5, r2
006b5830  01 60 a0 e1                                      mov r6, r1
006b5834  0f e0 a0 e1                                      mov lr, pc
006b5838  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006b583c  00 10 a0 e3                                      mov r1, #0
006b5840  58 fa f9 eb                                      bl #0x5341a8
006b5844  00 30 95 e5                                      ldr r3, [r5]
006b5848  00 40 a0 e1                                      mov r4, r0
006b584c  05 00 a0 e1                                      mov r0, r5
006b5850  0c 80 93 e5                                      ldr r8, [r3, #0xc]
006b5854  0f e0 a0 e1                                      mov lr, pc
006b5858  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006b585c  04 10 a0 e1                                      mov r1, r4
006b5860  00 20 a0 e1                                      mov r2, r0
006b5864  05 00 a0 e1                                      mov r0, r5
006b5868  38 ff 2f e1                                      blx r8
006b586c  00 30 95 e5                                      ldr r3, [r5]
006b5870  05 00 a0 e1                                      mov r0, r5
006b5874  0f e0 a0 e1                                      mov lr, pc
006b5878  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006b587c  06 10 a0 e1                                      mov r1, r6
006b5880  00 30 a0 e1                                      mov r3, r0
006b5884  04 20 a0 e1                                      mov r2, r4
006b5888  07 00 a0 e1                                      mov r0, r7
006b588c  ed fe ff eb                                      bl #0x6b5448
006b5890  00 00 54 e3                                      cmp r4, #0
006b5894  02 00 00 0a                                      beq #0x6b58a4
006b5898  04 00 a0 e1                                      mov r0, r4
006b589c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
006b58a0  04 62 f1 ea                                      b #0x30e0b8
006b58a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
