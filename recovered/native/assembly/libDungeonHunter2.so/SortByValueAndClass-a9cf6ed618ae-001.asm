; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003fd1e8, declared_size=1000, range_size=1000, mode=arm
; class-group: SortByValueAndClass
; alias: _ZN19SortByValueAndClassclERKN13ItemInventory4ItemES3_
; demangled: SortByValueAndClass::operator()(ItemInventory::Item const&, ItemInventory::Item const&)
; decoder-mode: arm
003fd1e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003fd1ec  00 30 90 e5                                      ldr r3, [r0]
003fd1f0  01 40 a0 e1                                      mov r4, r1
003fd1f4  c8 13 01 e3                                      movw r1, #0x13c8
003fd1f8  f1 30 93 e1                                      ldrsh r3, [r3, r1]
003fd1fc  02 70 a0 e1                                      mov r7, r2
003fd200  00 00 94 e5                                      ldr r0, [r4]
003fd204  00 20 92 e5                                      ldr r2, [r2]
003fd208  41 3f 43 e2                                      sub r3, r3, #0x104
003fd20c  03 30 43 e2                                      sub r3, r3, #3
003fd210  54 50 92 e5                                      ldr r5, [r2, #0x54]
003fd214  54 60 90 e5                                      ldr r6, [r0, #0x54]
003fd218  40 00 53 e3                                      cmp r3, #0x40
003fd21c  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
003fd220  51 00 00 ea                                      b #0x3fd36c
003fd224  67 00 00 ea                                      b #0x3fd3c8
003fd228  78 00 00 ea                                      b #0x3fd410
003fd22c  89 00 00 ea                                      b #0x3fd458
003fd230  4d 00 00 ea                                      b #0x3fd36c
003fd234  4c 00 00 ea                                      b #0x3fd36c
003fd238  4b 00 00 ea                                      b #0x3fd36c
003fd23c  4a 00 00 ea                                      b #0x3fd36c
003fd240  49 00 00 ea                                      b #0x3fd36c
003fd244  48 00 00 ea                                      b #0x3fd36c
003fd248  47 00 00 ea                                      b #0x3fd36c
003fd24c  46 00 00 ea                                      b #0x3fd36c
003fd250  45 00 00 ea                                      b #0x3fd36c
003fd254  44 00 00 ea                                      b #0x3fd36c
003fd258  43 00 00 ea                                      b #0x3fd36c
003fd25c  42 00 00 ea                                      b #0x3fd36c
003fd260  41 00 00 ea                                      b #0x3fd36c
003fd264  40 00 00 ea                                      b #0x3fd36c
003fd268  3f 00 00 ea                                      b #0x3fd36c
003fd26c  3e 00 00 ea                                      b #0x3fd36c
003fd270  3d 00 00 ea                                      b #0x3fd36c
003fd274  3c 00 00 ea                                      b #0x3fd36c
003fd278  3b 00 00 ea                                      b #0x3fd36c
003fd27c  3a 00 00 ea                                      b #0x3fd36c
003fd280  39 00 00 ea                                      b #0x3fd36c
003fd284  38 00 00 ea                                      b #0x3fd36c
003fd288  37 00 00 ea                                      b #0x3fd36c
003fd28c  36 00 00 ea                                      b #0x3fd36c
003fd290  82 00 00 ea                                      b #0x3fd4a0
003fd294  93 00 00 ea                                      b #0x3fd4e8
003fd298  22 00 00 ea                                      b #0x3fd328
003fd29c  32 00 00 ea                                      b #0x3fd36c
003fd2a0  31 00 00 ea                                      b #0x3fd36c
003fd2a4  30 00 00 ea                                      b #0x3fd36c
003fd2a8  2f 00 00 ea                                      b #0x3fd36c
003fd2ac  2e 00 00 ea                                      b #0x3fd36c
003fd2b0  2d 00 00 ea                                      b #0x3fd36c
003fd2b4  2c 00 00 ea                                      b #0x3fd36c
003fd2b8  2b 00 00 ea                                      b #0x3fd36c
003fd2bc  2a 00 00 ea                                      b #0x3fd36c
003fd2c0  29 00 00 ea                                      b #0x3fd36c
003fd2c4  28 00 00 ea                                      b #0x3fd36c
003fd2c8  27 00 00 ea                                      b #0x3fd36c
003fd2cc  26 00 00 ea                                      b #0x3fd36c
003fd2d0  25 00 00 ea                                      b #0x3fd36c
003fd2d4  24 00 00 ea                                      b #0x3fd36c
003fd2d8  23 00 00 ea                                      b #0x3fd36c
003fd2dc  22 00 00 ea                                      b #0x3fd36c
003fd2e0  21 00 00 ea                                      b #0x3fd36c
003fd2e4  20 00 00 ea                                      b #0x3fd36c
003fd2e8  1f 00 00 ea                                      b #0x3fd36c
003fd2ec  1e 00 00 ea                                      b #0x3fd36c
003fd2f0  1d 00 00 ea                                      b #0x3fd36c
003fd2f4  1c 00 00 ea                                      b #0x3fd36c
003fd2f8  1b 00 00 ea                                      b #0x3fd36c
003fd2fc  1a 00 00 ea                                      b #0x3fd36c
003fd300  19 00 00 ea                                      b #0x3fd36c
003fd304  18 00 00 ea                                      b #0x3fd36c
003fd308  17 00 00 ea                                      b #0x3fd36c
003fd30c  16 00 00 ea                                      b #0x3fd36c
003fd310  15 00 00 ea                                      b #0x3fd36c
003fd314  14 00 00 ea                                      b #0x3fd36c
003fd318  13 00 00 ea                                      b #0x3fd36c
003fd31c  83 00 00 ea                                      b #0x3fd530
003fd320  94 00 00 ea                                      b #0x3fd578
003fd324  15 00 00 ea                                      b #0x3fd380
003fd328  b6 f2 ff eb                                      bl #0x3f9e08
003fd32c  00 80 a0 e1                                      mov r8, r0
003fd330  06 00 a0 e1                                      mov r0, r6
003fd334  8a 45 fc eb                                      bl #0x30e964
003fd338  3c 10 98 e5                                      ldr r1, [r8, #0x3c]
003fd33c  8a 46 fc eb                                      bl #0x30ed6c
003fd340  61 44 fc eb                                      bl #0x30e4cc
003fd344  00 60 a0 e1                                      mov r6, r0
003fd348  00 00 97 e5                                      ldr r0, [r7]
003fd34c  ad f2 ff eb                                      bl #0x3f9e08
003fd350  00 80 a0 e1                                      mov r8, r0
003fd354  05 00 a0 e1                                      mov r0, r5
003fd358  81 45 fc eb                                      bl #0x30e964
003fd35c  3c 10 98 e5                                      ldr r1, [r8, #0x3c]
003fd360  81 46 fc eb                                      bl #0x30ed6c
003fd364  58 44 fc eb                                      bl #0x30e4cc
003fd368  00 50 a0 e1                                      mov r5, r0
003fd36c  05 00 56 e1                                      cmp r6, r5
003fd370  92 00 00 0a                                      beq #0x3fd5c0
003fd374  00 00 a0 d3                                      movle r0, #0
003fd378  01 00 a0 c3                                      movgt r0, #1
003fd37c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003fd380  a0 f2 ff eb                                      bl #0x3f9e08
003fd384  00 80 a0 e1                                      mov r8, r0
003fd388  06 00 a0 e1                                      mov r0, r6
003fd38c  74 45 fc eb                                      bl #0x30e964
003fd390  34 10 98 e5                                      ldr r1, [r8, #0x34]
003fd394  74 46 fc eb                                      bl #0x30ed6c
003fd398  4b 44 fc eb                                      bl #0x30e4cc
003fd39c  00 60 a0 e1                                      mov r6, r0
003fd3a0  00 00 97 e5                                      ldr r0, [r7]
003fd3a4  97 f2 ff eb                                      bl #0x3f9e08
003fd3a8  00 80 a0 e1                                      mov r8, r0
003fd3ac  05 00 a0 e1                                      mov r0, r5
003fd3b0  6b 45 fc eb                                      bl #0x30e964
003fd3b4  34 10 98 e5                                      ldr r1, [r8, #0x34]
003fd3b8  6b 46 fc eb                                      bl #0x30ed6c
003fd3bc  42 44 fc eb                                      bl #0x30e4cc
003fd3c0  00 50 a0 e1                                      mov r5, r0
003fd3c4  e8 ff ff ea                                      b #0x3fd36c
003fd3c8  8e f2 ff eb                                      bl #0x3f9e08
003fd3cc  00 80 a0 e1                                      mov r8, r0
003fd3d0  06 00 a0 e1                                      mov r0, r6
003fd3d4  62 45 fc eb                                      bl #0x30e964
003fd3d8  20 10 98 e5                                      ldr r1, [r8, #0x20]
003fd3dc  62 46 fc eb                                      bl #0x30ed6c
003fd3e0  39 44 fc eb                                      bl #0x30e4cc
003fd3e4  00 60 a0 e1                                      mov r6, r0
003fd3e8  00 00 97 e5                                      ldr r0, [r7]
003fd3ec  85 f2 ff eb                                      bl #0x3f9e08
003fd3f0  00 80 a0 e1                                      mov r8, r0
003fd3f4  05 00 a0 e1                                      mov r0, r5
003fd3f8  59 45 fc eb                                      bl #0x30e964
003fd3fc  20 10 98 e5                                      ldr r1, [r8, #0x20]
003fd400  59 46 fc eb                                      bl #0x30ed6c
003fd404  30 44 fc eb                                      bl #0x30e4cc
003fd408  00 50 a0 e1                                      mov r5, r0
003fd40c  d6 ff ff ea                                      b #0x3fd36c
003fd410  7c f2 ff eb                                      bl #0x3f9e08
003fd414  00 80 a0 e1                                      mov r8, r0
003fd418  06 00 a0 e1                                      mov r0, r6
003fd41c  50 45 fc eb                                      bl #0x30e964
003fd420  30 10 98 e5                                      ldr r1, [r8, #0x30]
003fd424  50 46 fc eb                                      bl #0x30ed6c
003fd428  27 44 fc eb                                      bl #0x30e4cc
003fd42c  00 60 a0 e1                                      mov r6, r0
003fd430  00 00 97 e5                                      ldr r0, [r7]
003fd434  73 f2 ff eb                                      bl #0x3f9e08
003fd438  00 80 a0 e1                                      mov r8, r0
003fd43c  05 00 a0 e1                                      mov r0, r5
003fd440  47 45 fc eb                                      bl #0x30e964
003fd444  30 10 98 e5                                      ldr r1, [r8, #0x30]
003fd448  47 46 fc eb                                      bl #0x30ed6c
003fd44c  1e 44 fc eb                                      bl #0x30e4cc
003fd450  00 50 a0 e1                                      mov r5, r0
003fd454  c4 ff ff ea                                      b #0x3fd36c
003fd458  6a f2 ff eb                                      bl #0x3f9e08
003fd45c  00 80 a0 e1                                      mov r8, r0
003fd460  06 00 a0 e1                                      mov r0, r6
003fd464  3e 45 fc eb                                      bl #0x30e964
003fd468  2c 10 98 e5                                      ldr r1, [r8, #0x2c]
003fd46c  3e 46 fc eb                                      bl #0x30ed6c
003fd470  15 44 fc eb                                      bl #0x30e4cc
003fd474  00 60 a0 e1                                      mov r6, r0
003fd478  00 00 97 e5                                      ldr r0, [r7]
003fd47c  61 f2 ff eb                                      bl #0x3f9e08
003fd480  00 80 a0 e1                                      mov r8, r0
003fd484  05 00 a0 e1                                      mov r0, r5
003fd488  35 45 fc eb                                      bl #0x30e964
003fd48c  2c 10 98 e5                                      ldr r1, [r8, #0x2c]
003fd490  35 46 fc eb                                      bl #0x30ed6c
003fd494  0c 44 fc eb                                      bl #0x30e4cc
003fd498  00 50 a0 e1                                      mov r5, r0
003fd49c  b2 ff ff ea                                      b #0x3fd36c
003fd4a0  58 f2 ff eb                                      bl #0x3f9e08
003fd4a4  00 80 a0 e1                                      mov r8, r0
003fd4a8  06 00 a0 e1                                      mov r0, r6
003fd4ac  2c 45 fc eb                                      bl #0x30e964
003fd4b0  24 10 98 e5                                      ldr r1, [r8, #0x24]
003fd4b4  2c 46 fc eb                                      bl #0x30ed6c
003fd4b8  03 44 fc eb                                      bl #0x30e4cc
003fd4bc  00 60 a0 e1                                      mov r6, r0
003fd4c0  00 00 97 e5                                      ldr r0, [r7]
003fd4c4  4f f2 ff eb                                      bl #0x3f9e08
003fd4c8  00 80 a0 e1                                      mov r8, r0
003fd4cc  05 00 a0 e1                                      mov r0, r5
003fd4d0  23 45 fc eb                                      bl #0x30e964
003fd4d4  24 10 98 e5                                      ldr r1, [r8, #0x24]
003fd4d8  23 46 fc eb                                      bl #0x30ed6c
003fd4dc  fa 43 fc eb                                      bl #0x30e4cc
003fd4e0  00 50 a0 e1                                      mov r5, r0
003fd4e4  a0 ff ff ea                                      b #0x3fd36c
003fd4e8  46 f2 ff eb                                      bl #0x3f9e08
003fd4ec  00 80 a0 e1                                      mov r8, r0
003fd4f0  06 00 a0 e1                                      mov r0, r6
003fd4f4  1a 45 fc eb                                      bl #0x30e964
003fd4f8  40 10 98 e5                                      ldr r1, [r8, #0x40]
003fd4fc  1a 46 fc eb                                      bl #0x30ed6c
003fd500  f1 43 fc eb                                      bl #0x30e4cc
003fd504  00 60 a0 e1                                      mov r6, r0
003fd508  00 00 97 e5                                      ldr r0, [r7]
003fd50c  3d f2 ff eb                                      bl #0x3f9e08
003fd510  00 80 a0 e1                                      mov r8, r0
003fd514  05 00 a0 e1                                      mov r0, r5
003fd518  11 45 fc eb                                      bl #0x30e964
003fd51c  40 10 98 e5                                      ldr r1, [r8, #0x40]
003fd520  11 46 fc eb                                      bl #0x30ed6c
003fd524  e8 43 fc eb                                      bl #0x30e4cc
003fd528  00 50 a0 e1                                      mov r5, r0
003fd52c  8e ff ff ea                                      b #0x3fd36c
003fd530  34 f2 ff eb                                      bl #0x3f9e08
003fd534  00 80 a0 e1                                      mov r8, r0
003fd538  06 00 a0 e1                                      mov r0, r6
003fd53c  08 45 fc eb                                      bl #0x30e964
003fd540  28 10 98 e5                                      ldr r1, [r8, #0x28]
003fd544  08 46 fc eb                                      bl #0x30ed6c
003fd548  df 43 fc eb                                      bl #0x30e4cc
003fd54c  00 60 a0 e1                                      mov r6, r0
003fd550  00 00 97 e5                                      ldr r0, [r7]
003fd554  2b f2 ff eb                                      bl #0x3f9e08
003fd558  00 80 a0 e1                                      mov r8, r0
003fd55c  05 00 a0 e1                                      mov r0, r5
003fd560  ff 44 fc eb                                      bl #0x30e964
003fd564  28 10 98 e5                                      ldr r1, [r8, #0x28]
003fd568  ff 45 fc eb                                      bl #0x30ed6c
003fd56c  d6 43 fc eb                                      bl #0x30e4cc
003fd570  00 50 a0 e1                                      mov r5, r0
003fd574  7c ff ff ea                                      b #0x3fd36c
003fd578  22 f2 ff eb                                      bl #0x3f9e08
003fd57c  00 80 a0 e1                                      mov r8, r0
003fd580  06 00 a0 e1                                      mov r0, r6
003fd584  f6 44 fc eb                                      bl #0x30e964
003fd588  38 10 98 e5                                      ldr r1, [r8, #0x38]
003fd58c  f6 45 fc eb                                      bl #0x30ed6c
003fd590  cd 43 fc eb                                      bl #0x30e4cc
003fd594  00 60 a0 e1                                      mov r6, r0
003fd598  00 00 97 e5                                      ldr r0, [r7]
003fd59c  19 f2 ff eb                                      bl #0x3f9e08
003fd5a0  00 80 a0 e1                                      mov r8, r0
003fd5a4  05 00 a0 e1                                      mov r0, r5
003fd5a8  ed 44 fc eb                                      bl #0x30e964
003fd5ac  38 10 98 e5                                      ldr r1, [r8, #0x38]
003fd5b0  ed 45 fc eb                                      bl #0x30ed6c
003fd5b4  c4 43 fc eb                                      bl #0x30e4cc
003fd5b8  00 50 a0 e1                                      mov r5, r0
003fd5bc  6a ff ff ea                                      b #0x3fd36c
003fd5c0  04 00 a0 e1                                      mov r0, r4
003fd5c4  07 10 a0 e1                                      mov r1, r7
003fd5c8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003fd5cc  02 ff ff ea                                      b #0x3fd1dc
