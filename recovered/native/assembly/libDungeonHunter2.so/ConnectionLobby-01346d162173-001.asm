; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00846eb4, declared_size=136, range_size=136, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby13sendRetryDataEv
; demangled: ConnectionLobby::sendRetryData()
; decoder-mode: arm
00846eb4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00846eb8  3c 70 02 e3                                      movw r7, #0x203c
00846ebc  07 30 90 e7                                      ldr r3, [r0, r7]
00846ec0  00 40 a0 e1                                      mov r4, r0
00846ec4  00 00 53 e3                                      cmp r3, #0
00846ec8  1a 00 00 0a                                      beq #0x846f38
00846ecc  24 00 a0 e3                                      mov r0, #0x24
00846ed0  6d 1e eb eb                                      bl #0x30e88c
00846ed4  00 50 a0 e1                                      mov r5, r0
00846ed8  e6 0b 00 eb                                      bl #0x849e78
00846edc  07 30 94 e7                                      ldr r3, [r4, r7]
00846ee0  00 20 95 e5                                      ldr r2, [r5]
00846ee4  03 00 a0 e1                                      mov r0, r3
00846ee8  00 30 93 e5                                      ldr r3, [r3]
00846eec  68 60 92 e5                                      ldr r6, [r2, #0x68]
00846ef0  0f e0 a0 e1                                      mov lr, pc
00846ef4  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00846ef8  07 30 94 e7                                      ldr r3, [r4, r7]
00846efc  00 80 a0 e1                                      mov r8, r0
00846f00  03 00 a0 e1                                      mov r0, r3
00846f04  00 30 93 e5                                      ldr r3, [r3]
00846f08  0f e0 a0 e1                                      mov lr, pc
00846f0c  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00846f10  08 10 a0 e1                                      mov r1, r8
00846f14  00 20 a0 e1                                      mov r2, r0
00846f18  05 00 a0 e1                                      mov r0, r5
00846f1c  36 ff 2f e1                                      blx r6
00846f20  04 00 a0 e1                                      mov r0, r4
00846f24  05 10 a0 e1                                      mov r1, r5
00846f28  a1 fa ff eb                                      bl #0x8459b4
00846f2c  81 90 ff eb                                      bl #0x82b138
00846f30  38 30 02 e3                                      movw r3, #0x2038
00846f34  03 00 84 e7                                      str r0, [r4, r3]
00846f38  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00846f3c, declared_size=116, range_size=116, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby19keepConnectionAliveEv
; demangled: ConnectionLobby::keepConnectionAlive()
; decoder-mode: arm
00846f3c  70 40 2d e9                                      push {r4, r5, r6, lr}
00846f40  00 40 a0 e1                                      mov r4, r0
00846f44  7b 90 ff eb                                      bl #0x82b138
00846f48  34 30 02 e3                                      movw r3, #0x2034
00846f4c  03 30 94 e7                                      ldr r3, [r4, r3]
00846f50  10 27 02 e3                                      movw r2, #0x2710
00846f54  00 30 63 e0                                      rsb r3, r3, r0
00846f58  02 00 53 e1                                      cmp r3, r2
00846f5c  01 00 00 ca                                      bgt #0x846f68
00846f60  00 00 a0 e3                                      mov r0, #0
00846f64  70 80 bd e8                                      pop {r4, r5, r6, pc}
00846f68  24 00 a0 e3                                      mov r0, #0x24
00846f6c  46 1e eb eb                                      bl #0x30e88c
00846f70  00 50 a0 e1                                      mov r5, r0
00846f74  bf 0b 00 eb                                      bl #0x849e78
00846f78  05 00 a0 e1                                      mov r0, r5
00846f7c  09 10 a0 e3                                      mov r1, #9
00846f80  00 30 95 e5                                      ldr r3, [r5]
00846f84  0f e0 a0 e1                                      mov lr, pc
00846f88  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00846f8c  00 30 95 e5                                      ldr r3, [r5]
00846f90  05 00 a0 e1                                      mov r0, r5
00846f94  0f e0 a0 e1                                      mov lr, pc
00846f98  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00846f9c  04 00 a0 e1                                      mov r0, r4
00846fa0  05 10 a0 e1                                      mov r1, r5
00846fa4  82 fa ff eb                                      bl #0x8459b4
00846fa8  01 00 a0 e3                                      mov r0, #1
00846fac  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00846fb0, declared_size=120, range_size=120, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby13saveRetryDataEP10DataPacket
; demangled: ConnectionLobby::saveRetryData(DataPacket*)
; decoder-mode: arm
00846fb0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00846fb4  00 60 51 e2                                      subs r6, r1, #0
00846fb8  00 40 a0 e1                                      mov r4, r0
00846fbc  18 00 00 0a                                      beq #0x847024
00846fc0  e7 f9 ff eb                                      bl #0x845764
00846fc4  24 00 a0 e3                                      mov r0, #0x24
00846fc8  2f 1e eb eb                                      bl #0x30e88c
00846fcc  00 70 a0 e1                                      mov r7, r0
00846fd0  a8 0b 00 eb                                      bl #0x849e78
00846fd4  3c 30 02 e3                                      movw r3, #0x203c
00846fd8  03 70 84 e7                                      str r7, [r4, r3]
00846fdc  00 20 97 e5                                      ldr r2, [r7]
00846fe0  00 30 96 e5                                      ldr r3, [r6]
00846fe4  06 00 a0 e1                                      mov r0, r6
00846fe8  68 50 92 e5                                      ldr r5, [r2, #0x68]
00846fec  0f e0 a0 e1                                      mov lr, pc
00846ff0  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00846ff4  00 30 96 e5                                      ldr r3, [r6]
00846ff8  00 80 a0 e1                                      mov r8, r0
00846ffc  06 00 a0 e1                                      mov r0, r6
00847000  0f e0 a0 e1                                      mov lr, pc
00847004  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00847008  08 10 a0 e1                                      mov r1, r8
0084700c  00 20 a0 e1                                      mov r2, r0
00847010  07 00 a0 e1                                      mov r0, r7
00847014  35 ff 2f e1                                      blx r5
00847018  46 90 ff eb                                      bl #0x82b138
0084701c  38 30 02 e3                                      movw r3, #0x2038
00847020  03 00 84 e7                                      str r0, [r4, r3]
00847024  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00847028, declared_size=88, range_size=88, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby20sendGetPlayerCounterEv
; demangled: ConnectionLobby::sendGetPlayerCounter()
; decoder-mode: arm
00847028  70 40 2d e9                                      push {r4, r5, r6, lr}
0084702c  00 50 a0 e1                                      mov r5, r0
00847030  24 00 a0 e3                                      mov r0, #0x24
00847034  14 1e eb eb                                      bl #0x30e88c
00847038  00 40 a0 e1                                      mov r4, r0
0084703c  8d 0b 00 eb                                      bl #0x849e78
00847040  04 00 a0 e1                                      mov r0, r4
00847044  65 10 a0 e3                                      mov r1, #0x65
00847048  00 30 94 e5                                      ldr r3, [r4]
0084704c  0f e0 a0 e1                                      mov lr, pc
00847050  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00847054  00 30 94 e5                                      ldr r3, [r4]
00847058  04 00 a0 e1                                      mov r0, r4
0084705c  0f e0 a0 e1                                      mov lr, pc
00847060  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00847064  05 00 a0 e1                                      mov r0, r5
00847068  04 10 a0 e1                                      mov r1, r4
0084706c  cf ff ff eb                                      bl #0x846fb0
00847070  05 00 a0 e1                                      mov r0, r5
00847074  04 10 a0 e1                                      mov r1, r4
00847078  70 40 bd e8                                      pop {r4, r5, r6, lr}
0084707c  4c fa ff ea                                      b #0x8459b4

; FUNCTION 0x00847080, declared_size=336, range_size=336, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby34sendGetLobbyForFriendWithGameParamEihhPciP23CLobbyParameterAndQuery
; demangled: ConnectionLobby::sendGetLobbyForFriendWithGameParam(int, unsigned char, unsigned char, char*, int, CLobbyParameterAndQuery*)
; decoder-mode: arm
00847080  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00847084  00 40 a0 e1                                      mov r4, r0
00847088  0c d0 4d e2                                      sub sp, sp, #0xc
0084708c  24 00 a0 e3                                      mov r0, #0x24
00847090  02 80 a0 e1                                      mov r8, r2
00847094  03 70 a0 e1                                      mov r7, r3
00847098  01 a0 a0 e1                                      mov sl, r1
0084709c  30 60 9d e5                                      ldr r6, [sp, #0x30]
008470a0  f9 1d eb eb                                      bl #0x30e88c
008470a4  00 50 a0 e1                                      mov r5, r0
008470a8  72 0b 00 eb                                      bl #0x849e78
008470ac  05 00 a0 e1                                      mov r0, r5
008470b0  63 10 a0 e3                                      mov r1, #0x63
008470b4  00 30 95 e5                                      ldr r3, [r5]
008470b8  0f e0 a0 e1                                      mov lr, pc
008470bc  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
008470c0  0a 10 a0 e1                                      mov r1, sl
008470c4  00 30 95 e5                                      ldr r3, [r5]
008470c8  05 00 a0 e1                                      mov r0, r5
008470cc  0f e0 a0 e1                                      mov lr, pc
008470d0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008470d4  07 10 a0 e1                                      mov r1, r7
008470d8  00 30 95 e5                                      ldr r3, [r5]
008470dc  05 00 a0 e1                                      mov r0, r5
008470e0  0f e0 a0 e1                                      mov lr, pc
008470e4  08 f0 93 e5                                      ldr pc, [r3, #8]
008470e8  00 10 a0 e3                                      mov r1, #0
008470ec  00 30 95 e5                                      ldr r3, [r5]
008470f0  05 00 a0 e1                                      mov r0, r5
008470f4  0f e0 a0 e1                                      mov lr, pc
008470f8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008470fc  08 10 a0 e1                                      mov r1, r8
00847100  00 30 95 e5                                      ldr r3, [r5]
00847104  05 00 a0 e1                                      mov r0, r5
00847108  0f e0 a0 e1                                      mov lr, pc
0084710c  08 f0 93 e5                                      ldr pc, [r3, #8]
00847110  07 10 a0 e1                                      mov r1, r7
00847114  00 30 95 e5                                      ldr r3, [r5]
00847118  05 00 a0 e1                                      mov r0, r5
0084711c  0f e0 a0 e1                                      mov lr, pc
00847120  08 f0 93 e5                                      ldr pc, [r3, #8]
00847124  28 10 9d e5                                      ldr r1, [sp, #0x28]
00847128  fc 22 dd e1                                      ldrsh r2, [sp, #0x2c]
0084712c  00 30 95 e5                                      ldr r3, [r5]
00847130  05 00 a0 e1                                      mov r0, r5
00847134  0f e0 a0 e1                                      mov lr, pc
00847138  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0084713c  00 00 56 e3                                      cmp r6, #0
00847140  1c 00 00 0a                                      beq #0x8471b8
00847144  08 10 8d e2                                      add r1, sp, #8
00847148  00 30 a0 e3                                      mov r3, #0
0084714c  04 30 21 e5                                      str r3, [r1, #-4]!
00847150  06 00 a0 e1                                      mov r0, r6
00847154  00 30 96 e5                                      ldr r3, [r6]
00847158  0f e0 a0 e1                                      mov lr, pc
0084715c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00847160  00 60 50 e2                                      subs r6, r0, #0
00847164  07 00 00 0a                                      beq #0x847188
00847168  00 30 95 e5                                      ldr r3, [r5]
0084716c  05 00 a0 e1                                      mov r0, r5
00847170  06 10 a0 e1                                      mov r1, r6
00847174  f4 20 dd e1                                      ldrsh r2, [sp, #4]
00847178  0f e0 a0 e1                                      mov lr, pc
0084717c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00847180  06 00 a0 e1                                      mov r0, r6
00847184  49 1c eb eb                                      bl #0x30e2b0
00847188  00 30 95 e5                                      ldr r3, [r5]
0084718c  05 00 a0 e1                                      mov r0, r5
00847190  0f e0 a0 e1                                      mov lr, pc
00847194  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00847198  04 00 a0 e1                                      mov r0, r4
0084719c  05 10 a0 e1                                      mov r1, r5
008471a0  82 ff ff eb                                      bl #0x846fb0
008471a4  04 00 a0 e1                                      mov r0, r4
008471a8  05 10 a0 e1                                      mov r1, r5
008471ac  00 fa ff eb                                      bl #0x8459b4
008471b0  0c d0 8d e2                                      add sp, sp, #0xc
008471b4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
008471b8  06 10 a0 e1                                      mov r1, r6
008471bc  00 30 95 e5                                      ldr r3, [r5]
008471c0  05 00 a0 e1                                      mov r0, r5
008471c4  0f e0 a0 e1                                      mov lr, pc
008471c8  08 f0 93 e5                                      ldr pc, [r3, #8]
008471cc  ed ff ff ea                                      b #0x847188

; FUNCTION 0x008471d0, declared_size=184, range_size=184, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby32sendGetLobbyForNameWithGameParamEPc
; demangled: ConnectionLobby::sendGetLobbyForNameWithGameParam(char*)
; decoder-mode: arm
008471d0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008471d4  00 50 a0 e1                                      mov r5, r0
008471d8  24 00 a0 e3                                      mov r0, #0x24
008471dc  01 60 a0 e1                                      mov r6, r1
008471e0  a9 1d eb eb                                      bl #0x30e88c
008471e4  00 40 a0 e1                                      mov r4, r0
008471e8  22 0b 00 eb                                      bl #0x849e78
008471ec  04 00 a0 e1                                      mov r0, r4
008471f0  00 30 94 e5                                      ldr r3, [r4]
008471f4  61 10 a0 e3                                      mov r1, #0x61
008471f8  0f e0 a0 e1                                      mov lr, pc
008471fc  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00847200  00 30 94 e5                                      ldr r3, [r4]
00847204  00 10 a0 e3                                      mov r1, #0
00847208  04 00 a0 e1                                      mov r0, r4
0084720c  0f e0 a0 e1                                      mov lr, pc
00847210  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00847214  00 30 94 e5                                      ldr r3, [r4]
00847218  00 10 a0 e3                                      mov r1, #0
0084721c  04 00 a0 e1                                      mov r0, r4
00847220  0f e0 a0 e1                                      mov lr, pc
00847224  08 f0 93 e5                                      ldr pc, [r3, #8]
00847228  00 10 a0 e3                                      mov r1, #0
0084722c  00 30 94 e5                                      ldr r3, [r4]
00847230  04 00 a0 e1                                      mov r0, r4
00847234  0f e0 a0 e1                                      mov lr, pc
00847238  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0084723c  00 30 94 e5                                      ldr r3, [r4]
00847240  06 00 a0 e1                                      mov r0, r6
00847244  4c 70 93 e5                                      ldr r7, [r3, #0x4c]
00847248  57 8f ff eb                                      bl #0x82afac
0084724c  06 10 a0 e1                                      mov r1, r6
00847250  70 20 bf e6                                      sxth r2, r0
00847254  04 00 a0 e1                                      mov r0, r4
00847258  37 ff 2f e1                                      blx r7
0084725c  00 30 94 e5                                      ldr r3, [r4]
00847260  04 00 a0 e1                                      mov r0, r4
00847264  0f e0 a0 e1                                      mov lr, pc
00847268  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0084726c  05 00 a0 e1                                      mov r0, r5
00847270  04 10 a0 e1                                      mov r1, r4
00847274  4d ff ff eb                                      bl #0x846fb0
00847278  05 00 a0 e1                                      mov r0, r5
0084727c  04 10 a0 e1                                      mov r1, r4
00847280  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00847284  ca f9 ff ea                                      b #0x8459b4

; FUNCTION 0x00847288, declared_size=296, range_size=296, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby36sendGetLobbyListPackageWithGameParamEiiihP23CLobbyParameterAndQueryh
; demangled: ConnectionLobby::sendGetLobbyListPackageWithGameParam(int, int, int, unsigned char, CLobbyParameterAndQuery*, unsigned char)
; decoder-mode: arm
00847288  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0084728c  00 40 a0 e1                                      mov r4, r0
00847290  08 d0 4d e2                                      sub sp, sp, #8
00847294  24 00 a0 e3                                      mov r0, #0x24
00847298  02 60 a0 e1                                      mov r6, r2
0084729c  03 a0 a0 e1                                      mov sl, r3
008472a0  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
008472a4  28 90 dd e5                                      ldrb sb, [sp, #0x28]
008472a8  30 70 dd e5                                      ldrb r7, [sp, #0x30]
008472ac  76 1d eb eb                                      bl #0x30e88c
008472b0  00 50 a0 e1                                      mov r5, r0
008472b4  ef 0a 00 eb                                      bl #0x849e78
008472b8  05 00 a0 e1                                      mov r0, r5
008472bc  60 10 a0 e3                                      mov r1, #0x60
008472c0  00 30 95 e5                                      ldr r3, [r5]
008472c4  0f e0 a0 e1                                      mov lr, pc
008472c8  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
008472cc  06 10 a0 e1                                      mov r1, r6
008472d0  00 30 95 e5                                      ldr r3, [r5]
008472d4  05 00 a0 e1                                      mov r0, r5
008472d8  0f e0 a0 e1                                      mov lr, pc
008472dc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008472e0  09 10 a0 e1                                      mov r1, sb
008472e4  00 30 95 e5                                      ldr r3, [r5]
008472e8  05 00 a0 e1                                      mov r0, r5
008472ec  0f e0 a0 e1                                      mov lr, pc
008472f0  08 f0 93 e5                                      ldr pc, [r3, #8]
008472f4  0a 10 a0 e1                                      mov r1, sl
008472f8  00 30 95 e5                                      ldr r3, [r5]
008472fc  05 00 a0 e1                                      mov r0, r5
00847300  0f e0 a0 e1                                      mov lr, pc
00847304  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00847308  00 00 58 e3                                      cmp r8, #0
0084730c  21 00 00 0a                                      beq #0x847398
00847310  08 10 8d e2                                      add r1, sp, #8
00847314  00 30 a0 e3                                      mov r3, #0
00847318  04 30 21 e5                                      str r3, [r1, #-4]!
0084731c  08 00 a0 e1                                      mov r0, r8
00847320  00 30 98 e5                                      ldr r3, [r8]
00847324  0f e0 a0 e1                                      mov lr, pc
00847328  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0084732c  00 60 50 e2                                      subs r6, r0, #0
00847330  07 00 00 0a                                      beq #0x847354
00847334  00 30 95 e5                                      ldr r3, [r5]
00847338  05 00 a0 e1                                      mov r0, r5
0084733c  06 10 a0 e1                                      mov r1, r6
00847340  f4 20 dd e1                                      ldrsh r2, [sp, #4]
00847344  0f e0 a0 e1                                      mov lr, pc
00847348  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0084734c  06 00 a0 e1                                      mov r0, r6
00847350  d6 1b eb eb                                      bl #0x30e2b0
00847354  07 10 a0 e1                                      mov r1, r7
00847358  00 30 95 e5                                      ldr r3, [r5]
0084735c  05 00 a0 e1                                      mov r0, r5
00847360  0f e0 a0 e1                                      mov lr, pc
00847364  08 f0 93 e5                                      ldr pc, [r3, #8]
00847368  00 30 95 e5                                      ldr r3, [r5]
0084736c  05 00 a0 e1                                      mov r0, r5
00847370  0f e0 a0 e1                                      mov lr, pc
00847374  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00847378  04 00 a0 e1                                      mov r0, r4
0084737c  05 10 a0 e1                                      mov r1, r5
00847380  0a ff ff eb                                      bl #0x846fb0
00847384  04 00 a0 e1                                      mov r0, r4
00847388  05 10 a0 e1                                      mov r1, r5
0084738c  88 f9 ff eb                                      bl #0x8459b4
00847390  08 d0 8d e2                                      add sp, sp, #8
00847394  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00847398  08 10 a0 e1                                      mov r1, r8
0084739c  00 30 95 e5                                      ldr r3, [r5]
008473a0  05 00 a0 e1                                      mov r0, r5
008473a4  0f e0 a0 e1                                      mov lr, pc
008473a8  08 f0 93 e5                                      ldr pc, [r3, #8]
008473ac  e8 ff ff ea                                      b #0x847354

; FUNCTION 0x008473b0, declared_size=124, range_size=124, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby18sendKickOutPackageEPc
; demangled: ConnectionLobby::sendKickOutPackage(char*)
; decoder-mode: arm
008473b0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008473b4  00 50 a0 e1                                      mov r5, r0
008473b8  24 00 a0 e3                                      mov r0, #0x24
008473bc  01 60 a0 e1                                      mov r6, r1
008473c0  31 1d eb eb                                      bl #0x30e88c
008473c4  00 40 a0 e1                                      mov r4, r0
008473c8  aa 0a 00 eb                                      bl #0x849e78
008473cc  18 10 a0 e3                                      mov r1, #0x18
008473d0  04 00 a0 e1                                      mov r0, r4
008473d4  00 30 94 e5                                      ldr r3, [r4]
008473d8  0f e0 a0 e1                                      mov lr, pc
008473dc  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
008473e0  00 30 94 e5                                      ldr r3, [r4]
008473e4  06 00 a0 e1                                      mov r0, r6
008473e8  3c 70 93 e5                                      ldr r7, [r3, #0x3c]
008473ec  ee 8e ff eb                                      bl #0x82afac
008473f0  06 10 a0 e1                                      mov r1, r6
008473f4  70 20 bf e6                                      sxth r2, r0
008473f8  04 00 a0 e1                                      mov r0, r4
008473fc  37 ff 2f e1                                      blx r7
00847400  00 30 94 e5                                      ldr r3, [r4]
00847404  04 00 a0 e1                                      mov r0, r4
00847408  0f e0 a0 e1                                      mov lr, pc
0084740c  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00847410  05 00 a0 e1                                      mov r0, r5
00847414  04 10 a0 e1                                      mov r1, r4
00847418  e4 fe ff eb                                      bl #0x846fb0
0084741c  05 00 a0 e1                                      mov r0, r5
00847420  04 10 a0 e1                                      mov r1, r4
00847424  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00847428  61 f9 ff ea                                      b #0x8459b4

; FUNCTION 0x0084742c, declared_size=88, range_size=88, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby26sendCancelAutoMatchPackageEv
; demangled: ConnectionLobby::sendCancelAutoMatchPackage()
; decoder-mode: arm
0084742c  70 40 2d e9                                      push {r4, r5, r6, lr}
00847430  00 50 a0 e1                                      mov r5, r0
00847434  24 00 a0 e3                                      mov r0, #0x24
00847438  13 1d eb eb                                      bl #0x30e88c
0084743c  00 40 a0 e1                                      mov r4, r0
00847440  8c 0a 00 eb                                      bl #0x849e78
00847444  04 00 a0 e1                                      mov r0, r4
00847448  4a 10 a0 e3                                      mov r1, #0x4a
0084744c  00 30 94 e5                                      ldr r3, [r4]
00847450  0f e0 a0 e1                                      mov lr, pc
00847454  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00847458  00 30 94 e5                                      ldr r3, [r4]
0084745c  04 00 a0 e1                                      mov r0, r4
00847460  0f e0 a0 e1                                      mov lr, pc
00847464  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00847468  05 00 a0 e1                                      mov r0, r5
0084746c  04 10 a0 e1                                      mov r1, r4
00847470  ce fe ff eb                                      bl #0x846fb0
00847474  05 00 a0 e1                                      mov r0, r5
00847478  04 10 a0 e1                                      mov r1, r4
0084747c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00847480  4b f9 ff ea                                      b #0x8459b4

; FUNCTION 0x00847484, declared_size=208, range_size=208, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby20sendAutoMatchPackageEPciS0_iss
; demangled: ConnectionLobby::sendAutoMatchPackage(char*, int, char*, int, short, short)
; decoder-mode: arm
00847484  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00847488  00 40 a0 e1                                      mov r4, r0
0084748c  04 d0 4d e2                                      sub sp, sp, #4
00847490  24 00 a0 e3                                      mov r0, #0x24
00847494  03 b0 a0 e1                                      mov fp, r3
00847498  01 a0 a0 e1                                      mov sl, r1
0084749c  02 90 a0 e1                                      mov sb, r2
008474a0  28 60 9d e5                                      ldr r6, [sp, #0x28]
008474a4  fc 82 dd e1                                      ldrsh r8, [sp, #0x2c]
008474a8  f0 73 dd e1                                      ldrsh r7, [sp, #0x30]
008474ac  f6 1c eb eb                                      bl #0x30e88c
008474b0  00 50 a0 e1                                      mov r5, r0
008474b4  6f 0a 00 eb                                      bl #0x849e78
008474b8  05 00 a0 e1                                      mov r0, r5
008474bc  00 30 95 e5                                      ldr r3, [r5]
008474c0  38 10 a0 e3                                      mov r1, #0x38
008474c4  0f e0 a0 e1                                      mov lr, pc
008474c8  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
008474cc  79 20 bf e6                                      sxth r2, sb
008474d0  0a 10 a0 e1                                      mov r1, sl
008474d4  00 30 95 e5                                      ldr r3, [r5]
008474d8  05 00 a0 e1                                      mov r0, r5
008474dc  0f e0 a0 e1                                      mov lr, pc
008474e0  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
008474e4  08 10 a0 e1                                      mov r1, r8
008474e8  00 30 95 e5                                      ldr r3, [r5]
008474ec  05 00 a0 e1                                      mov r0, r5
008474f0  0f e0 a0 e1                                      mov lr, pc
008474f4  20 f0 93 e5                                      ldr pc, [r3, #0x20]
008474f8  07 10 a0 e1                                      mov r1, r7
008474fc  00 30 95 e5                                      ldr r3, [r5]
00847500  05 00 a0 e1                                      mov r0, r5
00847504  0f e0 a0 e1                                      mov lr, pc
00847508  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0084750c  76 20 bf e6                                      sxth r2, r6
00847510  0b 10 a0 e1                                      mov r1, fp
00847514  00 30 95 e5                                      ldr r3, [r5]
00847518  05 00 a0 e1                                      mov r0, r5
0084751c  0f e0 a0 e1                                      mov lr, pc
00847520  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
00847524  00 30 95 e5                                      ldr r3, [r5]
00847528  05 00 a0 e1                                      mov r0, r5
0084752c  0f e0 a0 e1                                      mov lr, pc
00847530  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00847534  04 00 a0 e1                                      mov r0, r4
00847538  05 10 a0 e1                                      mov r1, r5
0084753c  9b fe ff eb                                      bl #0x846fb0
00847540  04 00 a0 e1                                      mov r0, r4
00847544  05 10 a0 e1                                      mov r1, r5
00847548  04 d0 8d e2                                      add sp, sp, #4
0084754c  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00847550  17 f9 ff ea                                      b #0x8459b4

; FUNCTION 0x00847554, declared_size=232, range_size=232, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby21sendGetLobbyForFriendEihhPci
; demangled: ConnectionLobby::sendGetLobbyForFriend(int, unsigned char, unsigned char, char*, int)
; decoder-mode: arm
00847554  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00847558  00 40 a0 e1                                      mov r4, r0
0084755c  24 00 a0 e3                                      mov r0, #0x24
00847560  02 a0 a0 e1                                      mov sl, r2
00847564  03 60 a0 e1                                      mov r6, r3
00847568  01 90 a0 e1                                      mov sb, r1
0084756c  20 70 9d e5                                      ldr r7, [sp, #0x20]
00847570  24 80 9d e5                                      ldr r8, [sp, #0x24]
00847574  c4 1c eb eb                                      bl #0x30e88c
00847578  00 50 a0 e1                                      mov r5, r0
0084757c  3d 0a 00 eb                                      bl #0x849e78
00847580  05 00 a0 e1                                      mov r0, r5
00847584  00 30 95 e5                                      ldr r3, [r5]
00847588  36 10 a0 e3                                      mov r1, #0x36
0084758c  0f e0 a0 e1                                      mov lr, pc
00847590  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00847594  09 10 a0 e1                                      mov r1, sb
00847598  00 30 95 e5                                      ldr r3, [r5]
0084759c  05 00 a0 e1                                      mov r0, r5
008475a0  0f e0 a0 e1                                      mov lr, pc
008475a4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008475a8  06 10 a0 e1                                      mov r1, r6
008475ac  00 30 95 e5                                      ldr r3, [r5]
008475b0  05 00 a0 e1                                      mov r0, r5
008475b4  0f e0 a0 e1                                      mov lr, pc
008475b8  08 f0 93 e5                                      ldr pc, [r3, #8]
008475bc  00 30 95 e5                                      ldr r3, [r5]
008475c0  00 10 a0 e3                                      mov r1, #0
008475c4  05 00 a0 e1                                      mov r0, r5
008475c8  0f e0 a0 e1                                      mov lr, pc
008475cc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008475d0  0a 10 a0 e1                                      mov r1, sl
008475d4  00 30 95 e5                                      ldr r3, [r5]
008475d8  05 00 a0 e1                                      mov r0, r5
008475dc  0f e0 a0 e1                                      mov lr, pc
008475e0  08 f0 93 e5                                      ldr pc, [r3, #8]
008475e4  06 10 a0 e1                                      mov r1, r6
008475e8  00 30 95 e5                                      ldr r3, [r5]
008475ec  05 00 a0 e1                                      mov r0, r5
008475f0  0f e0 a0 e1                                      mov lr, pc
008475f4  08 f0 93 e5                                      ldr pc, [r3, #8]
008475f8  78 20 bf e6                                      sxth r2, r8
008475fc  07 10 a0 e1                                      mov r1, r7
00847600  00 30 95 e5                                      ldr r3, [r5]
00847604  05 00 a0 e1                                      mov r0, r5
00847608  0f e0 a0 e1                                      mov lr, pc
0084760c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00847610  00 30 95 e5                                      ldr r3, [r5]
00847614  05 00 a0 e1                                      mov r0, r5
00847618  0f e0 a0 e1                                      mov lr, pc
0084761c  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00847620  04 00 a0 e1                                      mov r0, r4
00847624  05 10 a0 e1                                      mov r1, r5
00847628  60 fe ff eb                                      bl #0x846fb0
0084762c  04 00 a0 e1                                      mov r0, r4
00847630  05 10 a0 e1                                      mov r1, r5
00847634  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00847638  dd f8 ff ea                                      b #0x8459b4

; FUNCTION 0x0084763c, declared_size=184, range_size=184, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby19sendGetLobbyForNameEPc
; demangled: ConnectionLobby::sendGetLobbyForName(char*)
; decoder-mode: arm
0084763c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00847640  00 50 a0 e1                                      mov r5, r0
00847644  24 00 a0 e3                                      mov r0, #0x24
00847648  01 60 a0 e1                                      mov r6, r1
0084764c  8e 1c eb eb                                      bl #0x30e88c
00847650  00 40 a0 e1                                      mov r4, r0
00847654  07 0a 00 eb                                      bl #0x849e78
00847658  04 00 a0 e1                                      mov r0, r4
0084765c  00 30 94 e5                                      ldr r3, [r4]
00847660  34 10 a0 e3                                      mov r1, #0x34
00847664  0f e0 a0 e1                                      mov lr, pc
00847668  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
0084766c  00 30 94 e5                                      ldr r3, [r4]
00847670  00 10 a0 e3                                      mov r1, #0
00847674  04 00 a0 e1                                      mov r0, r4
00847678  0f e0 a0 e1                                      mov lr, pc
0084767c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00847680  00 30 94 e5                                      ldr r3, [r4]
00847684  00 10 a0 e3                                      mov r1, #0
00847688  04 00 a0 e1                                      mov r0, r4
0084768c  0f e0 a0 e1                                      mov lr, pc
00847690  08 f0 93 e5                                      ldr pc, [r3, #8]
00847694  00 10 a0 e3                                      mov r1, #0
00847698  00 30 94 e5                                      ldr r3, [r4]
0084769c  04 00 a0 e1                                      mov r0, r4
008476a0  0f e0 a0 e1                                      mov lr, pc
008476a4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008476a8  00 30 94 e5                                      ldr r3, [r4]
008476ac  06 00 a0 e1                                      mov r0, r6
008476b0  4c 70 93 e5                                      ldr r7, [r3, #0x4c]
008476b4  3c 8e ff eb                                      bl #0x82afac
008476b8  06 10 a0 e1                                      mov r1, r6
008476bc  70 20 bf e6                                      sxth r2, r0
008476c0  04 00 a0 e1                                      mov r0, r4
008476c4  37 ff 2f e1                                      blx r7
008476c8  00 30 94 e5                                      ldr r3, [r4]
008476cc  04 00 a0 e1                                      mov r0, r4
008476d0  0f e0 a0 e1                                      mov lr, pc
008476d4  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
008476d8  05 00 a0 e1                                      mov r0, r5
008476dc  04 10 a0 e1                                      mov r1, r4
008476e0  32 fe ff eb                                      bl #0x846fb0
008476e4  05 00 a0 e1                                      mov r0, r5
008476e8  04 10 a0 e1                                      mov r1, r4
008476ec  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
008476f0  af f8 ff ea                                      b #0x8459b4

; FUNCTION 0x008476f4, declared_size=112, range_size=112, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby16sendGetLobbyInfoEi
; demangled: ConnectionLobby::sendGetLobbyInfo(int)
; decoder-mode: arm
008476f4  70 40 2d e9                                      push {r4, r5, r6, lr}
008476f8  00 50 a0 e1                                      mov r5, r0
008476fc  24 00 a0 e3                                      mov r0, #0x24
00847700  01 60 a0 e1                                      mov r6, r1
00847704  60 1c eb eb                                      bl #0x30e88c
00847708  00 40 a0 e1                                      mov r4, r0
0084770c  d9 09 00 eb                                      bl #0x849e78
00847710  04 00 a0 e1                                      mov r0, r4
00847714  00 30 94 e5                                      ldr r3, [r4]
00847718  16 10 a0 e3                                      mov r1, #0x16
0084771c  0f e0 a0 e1                                      mov lr, pc
00847720  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00847724  06 10 a0 e1                                      mov r1, r6
00847728  00 30 94 e5                                      ldr r3, [r4]
0084772c  04 00 a0 e1                                      mov r0, r4
00847730  0f e0 a0 e1                                      mov lr, pc
00847734  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00847738  00 30 94 e5                                      ldr r3, [r4]
0084773c  04 00 a0 e1                                      mov r0, r4
00847740  0f e0 a0 e1                                      mov lr, pc
00847744  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00847748  05 00 a0 e1                                      mov r0, r5
0084774c  04 10 a0 e1                                      mov r1, r4
00847750  16 fe ff eb                                      bl #0x846fb0
00847754  05 00 a0 e1                                      mov r0, r5
00847758  04 10 a0 e1                                      mov r1, r4
0084775c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00847760  93 f8 ff ea                                      b #0x8459b4

; FUNCTION 0x00847764, declared_size=120, range_size=120, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby20sendSetUserParameterEPcs
; demangled: ConnectionLobby::sendSetUserParameter(char*, short)
; decoder-mode: arm
00847764  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00847768  00 50 a0 e1                                      mov r5, r0
0084776c  24 00 a0 e3                                      mov r0, #0x24
00847770  01 60 a0 e1                                      mov r6, r1
00847774  02 70 a0 e1                                      mov r7, r2
00847778  43 1c eb eb                                      bl #0x30e88c
0084777c  00 40 a0 e1                                      mov r4, r0
00847780  bc 09 00 eb                                      bl #0x849e78
00847784  04 00 a0 e1                                      mov r0, r4
00847788  00 30 94 e5                                      ldr r3, [r4]
0084778c  24 10 a0 e3                                      mov r1, #0x24
00847790  0f e0 a0 e1                                      mov lr, pc
00847794  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00847798  07 20 a0 e1                                      mov r2, r7
0084779c  06 10 a0 e1                                      mov r1, r6
008477a0  00 30 94 e5                                      ldr r3, [r4]
008477a4  04 00 a0 e1                                      mov r0, r4
008477a8  0f e0 a0 e1                                      mov lr, pc
008477ac  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
008477b0  00 30 94 e5                                      ldr r3, [r4]
008477b4  04 00 a0 e1                                      mov r0, r4
008477b8  0f e0 a0 e1                                      mov lr, pc
008477bc  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
008477c0  05 00 a0 e1                                      mov r0, r5
008477c4  04 10 a0 e1                                      mov r1, r4
008477c8  f8 fd ff eb                                      bl #0x846fb0
008477cc  05 00 a0 e1                                      mov r0, r5
008477d0  04 10 a0 e1                                      mov r1, r4
008477d4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
008477d8  75 f8 ff ea                                      b #0x8459b4

; FUNCTION 0x008477dc, declared_size=208, range_size=208, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby20sendSetGameParameterEPcsP23CLobbyParameterAndQuery
; demangled: ConnectionLobby::sendSetGameParameter(char*, short, CLobbyParameterAndQuery*)
; decoder-mode: arm
008477dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008477e0  00 40 a0 e1                                      mov r4, r0
008477e4  08 d0 4d e2                                      sub sp, sp, #8
008477e8  24 00 a0 e3                                      mov r0, #0x24
008477ec  03 60 a0 e1                                      mov r6, r3
008477f0  01 70 a0 e1                                      mov r7, r1
008477f4  02 80 a0 e1                                      mov r8, r2
008477f8  23 1c eb eb                                      bl #0x30e88c
008477fc  00 50 a0 e1                                      mov r5, r0
00847800  9c 09 00 eb                                      bl #0x849e78
00847804  05 00 a0 e1                                      mov r0, r5
00847808  21 10 a0 e3                                      mov r1, #0x21
0084780c  00 30 95 e5                                      ldr r3, [r5]
00847810  0f e0 a0 e1                                      mov lr, pc
00847814  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00847818  07 10 a0 e1                                      mov r1, r7
0084781c  08 20 a0 e1                                      mov r2, r8
00847820  00 30 95 e5                                      ldr r3, [r5]
00847824  05 00 a0 e1                                      mov r0, r5
00847828  0f e0 a0 e1                                      mov lr, pc
0084782c  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
00847830  00 00 56 e3                                      cmp r6, #0
00847834  10 00 00 0a                                      beq #0x84787c
00847838  08 10 8d e2                                      add r1, sp, #8
0084783c  00 30 a0 e3                                      mov r3, #0
00847840  04 30 21 e5                                      str r3, [r1, #-4]!
00847844  06 00 a0 e1                                      mov r0, r6
00847848  00 30 96 e5                                      ldr r3, [r6]
0084784c  0f e0 a0 e1                                      mov lr, pc
00847850  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00847854  00 60 50 e2                                      subs r6, r0, #0
00847858  07 00 00 0a                                      beq #0x84787c
0084785c  00 30 95 e5                                      ldr r3, [r5]
00847860  05 00 a0 e1                                      mov r0, r5
00847864  06 10 a0 e1                                      mov r1, r6
00847868  f4 20 dd e1                                      ldrsh r2, [sp, #4]
0084786c  0f e0 a0 e1                                      mov lr, pc
00847870  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00847874  06 00 a0 e1                                      mov r0, r6
00847878  8c 1a eb eb                                      bl #0x30e2b0
0084787c  00 30 95 e5                                      ldr r3, [r5]
00847880  05 00 a0 e1                                      mov r0, r5
00847884  0f e0 a0 e1                                      mov lr, pc
00847888  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0084788c  04 00 a0 e1                                      mov r0, r4
00847890  05 10 a0 e1                                      mov r1, r5
00847894  c5 fd ff eb                                      bl #0x846fb0
00847898  04 00 a0 e1                                      mov r0, r4
0084789c  05 10 a0 e1                                      mov r1, r5
008478a0  43 f8 ff eb                                      bl #0x8459b4
008478a4  08 d0 8d e2                                      add sp, sp, #8
008478a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x008478ac, declared_size=112, range_size=112, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby22sendRejoinLobbyPackageEi
; demangled: ConnectionLobby::sendRejoinLobbyPackage(int)
; decoder-mode: arm
008478ac  70 40 2d e9                                      push {r4, r5, r6, lr}
008478b0  00 50 a0 e1                                      mov r5, r0
008478b4  24 00 a0 e3                                      mov r0, #0x24
008478b8  01 60 a0 e1                                      mov r6, r1
008478bc  f2 1b eb eb                                      bl #0x30e88c
008478c0  00 40 a0 e1                                      mov r4, r0
008478c4  6b 09 00 eb                                      bl #0x849e78
008478c8  04 00 a0 e1                                      mov r0, r4
008478cc  00 30 94 e5                                      ldr r3, [r4]
008478d0  2d 10 a0 e3                                      mov r1, #0x2d
008478d4  0f e0 a0 e1                                      mov lr, pc
008478d8  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
008478dc  06 10 a0 e1                                      mov r1, r6
008478e0  00 30 94 e5                                      ldr r3, [r4]
008478e4  04 00 a0 e1                                      mov r0, r4
008478e8  0f e0 a0 e1                                      mov lr, pc
008478ec  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008478f0  00 30 94 e5                                      ldr r3, [r4]
008478f4  04 00 a0 e1                                      mov r0, r4
008478f8  0f e0 a0 e1                                      mov lr, pc
008478fc  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00847900  05 00 a0 e1                                      mov r0, r5
00847904  04 10 a0 e1                                      mov r1, r4
00847908  a8 fd ff eb                                      bl #0x846fb0
0084790c  05 00 a0 e1                                      mov r0, r5
00847910  04 10 a0 e1                                      mov r1, r4
00847914  70 40 bd e8                                      pop {r4, r5, r6, lr}
00847918  25 f8 ff ea                                      b #0x8459b4

; FUNCTION 0x0084791c, declared_size=112, range_size=112, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby26sendSetPlayerStatusPackageEh
; demangled: ConnectionLobby::sendSetPlayerStatusPackage(unsigned char)
; decoder-mode: arm
0084791c  70 40 2d e9                                      push {r4, r5, r6, lr}
00847920  00 50 a0 e1                                      mov r5, r0
00847924  24 00 a0 e3                                      mov r0, #0x24
00847928  01 60 a0 e1                                      mov r6, r1
0084792c  d6 1b eb eb                                      bl #0x30e88c
00847930  00 40 a0 e1                                      mov r4, r0
00847934  4f 09 00 eb                                      bl #0x849e78
00847938  04 00 a0 e1                                      mov r0, r4
0084793c  00 30 94 e5                                      ldr r3, [r4]
00847940  27 10 a0 e3                                      mov r1, #0x27
00847944  0f e0 a0 e1                                      mov lr, pc
00847948  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
0084794c  06 10 a0 e1                                      mov r1, r6
00847950  00 30 94 e5                                      ldr r3, [r4]
00847954  04 00 a0 e1                                      mov r0, r4
00847958  0f e0 a0 e1                                      mov lr, pc
0084795c  08 f0 93 e5                                      ldr pc, [r3, #8]
00847960  00 30 94 e5                                      ldr r3, [r4]
00847964  04 00 a0 e1                                      mov r0, r4
00847968  0f e0 a0 e1                                      mov lr, pc
0084796c  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00847970  05 00 a0 e1                                      mov r0, r5
00847974  04 10 a0 e1                                      mov r1, r4
00847978  8c fd ff eb                                      bl #0x846fb0
0084797c  05 00 a0 e1                                      mov r0, r5
00847980  04 10 a0 e1                                      mov r1, r4
00847984  70 40 bd e8                                      pop {r4, r5, r6, lr}
00847988  09 f8 ff ea                                      b #0x8459b4

; FUNCTION 0x0084798c, declared_size=88, range_size=88, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby25sendLunchLobbyGamePackageEv
; demangled: ConnectionLobby::sendLunchLobbyGamePackage()
; decoder-mode: arm
0084798c  70 40 2d e9                                      push {r4, r5, r6, lr}
00847990  00 50 a0 e1                                      mov r5, r0
00847994  24 00 a0 e3                                      mov r0, #0x24
00847998  bb 1b eb eb                                      bl #0x30e88c
0084799c  00 40 a0 e1                                      mov r4, r0
008479a0  34 09 00 eb                                      bl #0x849e78
008479a4  04 00 a0 e1                                      mov r0, r4
008479a8  2a 10 a0 e3                                      mov r1, #0x2a
008479ac  00 30 94 e5                                      ldr r3, [r4]
008479b0  0f e0 a0 e1                                      mov lr, pc
008479b4  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
008479b8  00 30 94 e5                                      ldr r3, [r4]
008479bc  04 00 a0 e1                                      mov r0, r4
008479c0  0f e0 a0 e1                                      mov lr, pc
008479c4  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
008479c8  05 00 a0 e1                                      mov r0, r5
008479cc  04 10 a0 e1                                      mov r1, r4
008479d0  76 fd ff eb                                      bl #0x846fb0
008479d4  05 00 a0 e1                                      mov r0, r5
008479d8  04 10 a0 e1                                      mov r1, r4
008479dc  70 40 bd e8                                      pop {r4, r5, r6, lr}
008479e0  f3 f7 ff ea                                      b #0x8459b4

; FUNCTION 0x008479e4, declared_size=88, range_size=88, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby21sendLeaveLobbyPackageEv
; demangled: ConnectionLobby::sendLeaveLobbyPackage()
; decoder-mode: arm
008479e4  70 40 2d e9                                      push {r4, r5, r6, lr}
008479e8  00 50 a0 e1                                      mov r5, r0
008479ec  24 00 a0 e3                                      mov r0, #0x24
008479f0  a5 1b eb eb                                      bl #0x30e88c
008479f4  00 40 a0 e1                                      mov r4, r0
008479f8  1e 09 00 eb                                      bl #0x849e78
008479fc  04 00 a0 e1                                      mov r0, r4
00847a00  13 10 a0 e3                                      mov r1, #0x13
00847a04  00 30 94 e5                                      ldr r3, [r4]
00847a08  0f e0 a0 e1                                      mov lr, pc
00847a0c  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00847a10  00 30 94 e5                                      ldr r3, [r4]
00847a14  04 00 a0 e1                                      mov r0, r4
00847a18  0f e0 a0 e1                                      mov lr, pc
00847a1c  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00847a20  05 00 a0 e1                                      mov r0, r5
00847a24  04 10 a0 e1                                      mov r1, r4
00847a28  60 fd ff eb                                      bl #0x846fb0
00847a2c  05 00 a0 e1                                      mov r0, r5
00847a30  04 10 a0 e1                                      mov r1, r4
00847a34  70 40 bd e8                                      pop {r4, r5, r6, lr}
00847a38  dd f7 ff ea                                      b #0x8459b4

; FUNCTION 0x00847a3c, declared_size=296, range_size=296, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby23sendGetLobbyListPackageEiiihP23CLobbyParameterAndQueryh
; demangled: ConnectionLobby::sendGetLobbyListPackage(int, int, int, unsigned char, CLobbyParameterAndQuery*, unsigned char)
; decoder-mode: arm
00847a3c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00847a40  00 40 a0 e1                                      mov r4, r0
00847a44  08 d0 4d e2                                      sub sp, sp, #8
00847a48  24 00 a0 e3                                      mov r0, #0x24
00847a4c  02 60 a0 e1                                      mov r6, r2
00847a50  03 a0 a0 e1                                      mov sl, r3
00847a54  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
00847a58  28 90 dd e5                                      ldrb sb, [sp, #0x28]
00847a5c  30 70 dd e5                                      ldrb r7, [sp, #0x30]
00847a60  89 1b eb eb                                      bl #0x30e88c
00847a64  00 50 a0 e1                                      mov r5, r0
00847a68  02 09 00 eb                                      bl #0x849e78
00847a6c  05 00 a0 e1                                      mov r0, r5
00847a70  0d 10 a0 e3                                      mov r1, #0xd
00847a74  00 30 95 e5                                      ldr r3, [r5]
00847a78  0f e0 a0 e1                                      mov lr, pc
00847a7c  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00847a80  06 10 a0 e1                                      mov r1, r6
00847a84  00 30 95 e5                                      ldr r3, [r5]
00847a88  05 00 a0 e1                                      mov r0, r5
00847a8c  0f e0 a0 e1                                      mov lr, pc
00847a90  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00847a94  09 10 a0 e1                                      mov r1, sb
00847a98  00 30 95 e5                                      ldr r3, [r5]
00847a9c  05 00 a0 e1                                      mov r0, r5
00847aa0  0f e0 a0 e1                                      mov lr, pc
00847aa4  08 f0 93 e5                                      ldr pc, [r3, #8]
00847aa8  0a 10 a0 e1                                      mov r1, sl
00847aac  00 30 95 e5                                      ldr r3, [r5]
00847ab0  05 00 a0 e1                                      mov r0, r5
00847ab4  0f e0 a0 e1                                      mov lr, pc
00847ab8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00847abc  00 00 58 e3                                      cmp r8, #0
00847ac0  21 00 00 0a                                      beq #0x847b4c
00847ac4  08 10 8d e2                                      add r1, sp, #8
00847ac8  00 30 a0 e3                                      mov r3, #0
00847acc  04 30 21 e5                                      str r3, [r1, #-4]!
00847ad0  08 00 a0 e1                                      mov r0, r8
00847ad4  00 30 98 e5                                      ldr r3, [r8]
00847ad8  0f e0 a0 e1                                      mov lr, pc
00847adc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00847ae0  00 60 50 e2                                      subs r6, r0, #0
00847ae4  07 00 00 0a                                      beq #0x847b08
00847ae8  00 30 95 e5                                      ldr r3, [r5]
00847aec  05 00 a0 e1                                      mov r0, r5
00847af0  06 10 a0 e1                                      mov r1, r6
00847af4  f4 20 dd e1                                      ldrsh r2, [sp, #4]
00847af8  0f e0 a0 e1                                      mov lr, pc
00847afc  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00847b00  06 00 a0 e1                                      mov r0, r6
00847b04  e9 19 eb eb                                      bl #0x30e2b0
00847b08  07 10 a0 e1                                      mov r1, r7
00847b0c  00 30 95 e5                                      ldr r3, [r5]
00847b10  05 00 a0 e1                                      mov r0, r5
00847b14  0f e0 a0 e1                                      mov lr, pc
00847b18  08 f0 93 e5                                      ldr pc, [r3, #8]
00847b1c  00 30 95 e5                                      ldr r3, [r5]
00847b20  05 00 a0 e1                                      mov r0, r5
00847b24  0f e0 a0 e1                                      mov lr, pc
00847b28  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00847b2c  04 00 a0 e1                                      mov r0, r4
00847b30  05 10 a0 e1                                      mov r1, r5
00847b34  1d fd ff eb                                      bl #0x846fb0
00847b38  04 00 a0 e1                                      mov r0, r4
00847b3c  05 10 a0 e1                                      mov r1, r5
00847b40  9b f7 ff eb                                      bl #0x8459b4
00847b44  08 d0 8d e2                                      add sp, sp, #8
00847b48  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00847b4c  08 10 a0 e1                                      mov r1, r8
00847b50  00 30 95 e5                                      ldr r3, [r5]
00847b54  05 00 a0 e1                                      mov r0, r5
00847b58  0f e0 a0 e1                                      mov lr, pc
00847b5c  08 f0 93 e5                                      ldr pc, [r3, #8]
00847b60  e8 ff ff ea                                      b #0x847b08

; FUNCTION 0x00847b64, declared_size=388, range_size=388, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby30sendJoinPredefinedLobbyPackageEPciS0_iiP23CLobbyParameterAndQueryS2_
; demangled: ConnectionLobby::sendJoinPredefinedLobbyPackage(char*, int, char*, int, int, CLobbyParameterAndQuery*, CLobbyParameterAndQuery*)
; decoder-mode: arm
00847b64  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00847b68  00 40 a0 e1                                      mov r4, r0
00847b6c  08 d0 4d e2                                      sub sp, sp, #8
00847b70  24 00 a0 e3                                      mov r0, #0x24
00847b74  03 80 a0 e1                                      mov r8, r3
00847b78  01 a0 a0 e1                                      mov sl, r1
00847b7c  02 90 a0 e1                                      mov sb, r2
00847b80  30 70 9d e5                                      ldr r7, [sp, #0x30]
00847b84  34 60 9d e5                                      ldr r6, [sp, #0x34]
00847b88  3f 1b eb eb                                      bl #0x30e88c
00847b8c  00 50 a0 e1                                      mov r5, r0
00847b90  b8 08 00 eb                                      bl #0x849e78
00847b94  05 00 a0 e1                                      mov r0, r5
00847b98  67 10 a0 e3                                      mov r1, #0x67
00847b9c  00 30 95 e5                                      ldr r3, [r5]
00847ba0  0f e0 a0 e1                                      mov lr, pc
00847ba4  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00847ba8  0a 10 a0 e1                                      mov r1, sl
00847bac  79 20 bf e6                                      sxth r2, sb
00847bb0  00 30 95 e5                                      ldr r3, [r5]
00847bb4  05 00 a0 e1                                      mov r0, r5
00847bb8  0f e0 a0 e1                                      mov lr, pc
00847bbc  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
00847bc0  08 10 a0 e1                                      mov r1, r8
00847bc4  f8 22 dd e1                                      ldrsh r2, [sp, #0x28]
00847bc8  00 30 95 e5                                      ldr r3, [r5]
00847bcc  05 00 a0 e1                                      mov r0, r5
00847bd0  0f e0 a0 e1                                      mov lr, pc
00847bd4  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
00847bd8  fc 12 dd e1                                      ldrsh r1, [sp, #0x2c]
00847bdc  00 30 95 e5                                      ldr r3, [r5]
00847be0  05 00 a0 e1                                      mov r0, r5
00847be4  0f e0 a0 e1                                      mov lr, pc
00847be8  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00847bec  00 00 57 e3                                      cmp r7, #0
00847bf0  2f 00 00 0a                                      beq #0x847cb4
00847bf4  08 10 8d e2                                      add r1, sp, #8
00847bf8  00 30 a0 e3                                      mov r3, #0
00847bfc  04 30 21 e5                                      str r3, [r1, #-4]!
00847c00  07 00 a0 e1                                      mov r0, r7
00847c04  00 30 97 e5                                      ldr r3, [r7]
00847c08  0f e0 a0 e1                                      mov lr, pc
00847c0c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00847c10  00 70 50 e2                                      subs r7, r0, #0
00847c14  07 00 00 0a                                      beq #0x847c38
00847c18  00 30 95 e5                                      ldr r3, [r5]
00847c1c  05 00 a0 e1                                      mov r0, r5
00847c20  07 10 a0 e1                                      mov r1, r7
00847c24  f4 20 dd e1                                      ldrsh r2, [sp, #4]
00847c28  0f e0 a0 e1                                      mov lr, pc
00847c2c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00847c30  07 00 a0 e1                                      mov r0, r7
00847c34  9d 19 eb eb                                      bl #0x30e2b0
00847c38  00 00 56 e3                                      cmp r6, #0
00847c3c  23 00 00 0a                                      beq #0x847cd0
00847c40  08 10 8d e2                                      add r1, sp, #8
00847c44  00 30 a0 e3                                      mov r3, #0
00847c48  04 30 21 e5                                      str r3, [r1, #-4]!
00847c4c  06 00 a0 e1                                      mov r0, r6
00847c50  00 30 96 e5                                      ldr r3, [r6]
00847c54  0f e0 a0 e1                                      mov lr, pc
00847c58  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00847c5c  00 60 50 e2                                      subs r6, r0, #0
00847c60  07 00 00 0a                                      beq #0x847c84
00847c64  00 30 95 e5                                      ldr r3, [r5]
00847c68  05 00 a0 e1                                      mov r0, r5
00847c6c  06 10 a0 e1                                      mov r1, r6
00847c70  f4 20 dd e1                                      ldrsh r2, [sp, #4]
00847c74  0f e0 a0 e1                                      mov lr, pc
00847c78  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00847c7c  06 00 a0 e1                                      mov r0, r6
00847c80  8a 19 eb eb                                      bl #0x30e2b0
00847c84  00 30 95 e5                                      ldr r3, [r5]
00847c88  05 00 a0 e1                                      mov r0, r5
00847c8c  0f e0 a0 e1                                      mov lr, pc
00847c90  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00847c94  04 00 a0 e1                                      mov r0, r4
00847c98  05 10 a0 e1                                      mov r1, r5
00847c9c  c3 fc ff eb                                      bl #0x846fb0
00847ca0  04 00 a0 e1                                      mov r0, r4
00847ca4  05 10 a0 e1                                      mov r1, r5
00847ca8  41 f7 ff eb                                      bl #0x8459b4
00847cac  08 d0 8d e2                                      add sp, sp, #8
00847cb0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00847cb4  07 10 a0 e1                                      mov r1, r7
00847cb8  00 30 95 e5                                      ldr r3, [r5]
00847cbc  05 00 a0 e1                                      mov r0, r5
00847cc0  0f e0 a0 e1                                      mov lr, pc
00847cc4  08 f0 93 e5                                      ldr pc, [r3, #8]
00847cc8  00 00 56 e3                                      cmp r6, #0
00847ccc  db ff ff 1a                                      bne #0x847c40
00847cd0  06 10 a0 e1                                      mov r1, r6
00847cd4  00 30 95 e5                                      ldr r3, [r5]
00847cd8  05 00 a0 e1                                      mov r0, r5
00847cdc  0f e0 a0 e1                                      mov lr, pc
00847ce0  08 f0 93 e5                                      ldr pc, [r3, #8]
00847ce4  e6 ff ff ea                                      b #0x847c84

; FUNCTION 0x00847ce8, declared_size=168, range_size=168, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby20sendJoinLobbyPackageEihPci
; demangled: ConnectionLobby::sendJoinLobbyPackage(int, unsigned char, char*, int)
; decoder-mode: arm
00847ce8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00847cec  00 40 a0 e1                                      mov r4, r0
00847cf0  24 00 a0 e3                                      mov r0, #0x24
00847cf4  02 80 a0 e1                                      mov r8, r2
00847cf8  03 60 a0 e1                                      mov r6, r3
00847cfc  01 a0 a0 e1                                      mov sl, r1
00847d00  20 70 9d e5                                      ldr r7, [sp, #0x20]
00847d04  e0 1a eb eb                                      bl #0x30e88c
00847d08  00 50 a0 e1                                      mov r5, r0
00847d0c  59 08 00 eb                                      bl #0x849e78
00847d10  05 00 a0 e1                                      mov r0, r5
00847d14  00 30 95 e5                                      ldr r3, [r5]
00847d18  0f 10 a0 e3                                      mov r1, #0xf
00847d1c  0f e0 a0 e1                                      mov lr, pc
00847d20  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00847d24  0a 10 a0 e1                                      mov r1, sl
00847d28  00 30 95 e5                                      ldr r3, [r5]
00847d2c  05 00 a0 e1                                      mov r0, r5
00847d30  0f e0 a0 e1                                      mov lr, pc
00847d34  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00847d38  08 10 a0 e1                                      mov r1, r8
00847d3c  00 30 95 e5                                      ldr r3, [r5]
00847d40  05 00 a0 e1                                      mov r0, r5
00847d44  0f e0 a0 e1                                      mov lr, pc
00847d48  08 f0 93 e5                                      ldr pc, [r3, #8]
00847d4c  77 20 bf e6                                      sxth r2, r7
00847d50  06 10 a0 e1                                      mov r1, r6
00847d54  00 30 95 e5                                      ldr r3, [r5]
00847d58  05 00 a0 e1                                      mov r0, r5
00847d5c  0f e0 a0 e1                                      mov lr, pc
00847d60  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
00847d64  00 30 95 e5                                      ldr r3, [r5]
00847d68  05 00 a0 e1                                      mov r0, r5
00847d6c  0f e0 a0 e1                                      mov lr, pc
00847d70  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00847d74  04 00 a0 e1                                      mov r0, r4
00847d78  05 10 a0 e1                                      mov r1, r5
00847d7c  8b fc ff eb                                      bl #0x846fb0
00847d80  04 00 a0 e1                                      mov r0, r4
00847d84  05 10 a0 e1                                      mov r1, r5
00847d88  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00847d8c  08 f7 ff ea                                      b #0x8459b4

; FUNCTION 0x00847d90, declared_size=592, range_size=592, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby36sendCreateLobbyPackageWithGameCenterEiPchhiS0_iS0_iP23CLobbyParameterAndQuerySt4listISsSaISsEE
; demangled: ConnectionLobby::sendCreateLobbyPackageWithGameCenter(int, char*, unsigned char, unsigned char, int, char*, int, char*, int, CLobbyParameterAndQuery*, std::list<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >)
; decoder-mode: arm
00847d90  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00847d94  3c 42 9f e5                                      ldr r4, [pc, #0x23c]
00847d98  3c 12 9f e5                                      ldr r1, [pc, #0x23c]
00847d9c  34 d0 4d e2                                      sub sp, sp, #0x34
00847da0  04 40 8f e0                                      add r4, pc, r4
00847da4  04 10 8d e5                                      str r1, [sp, #4]
00847da8  01 10 94 e7                                      ldr r1, [r4, r1]
00847dac  03 b0 a0 e1                                      mov fp, r3
00847db0  58 c0 dd e5                                      ldrb ip, [sp, #0x58]
00847db4  00 30 91 e5                                      ldr r3, [r1]
00847db8  02 80 a0 e1                                      mov r8, r2
00847dbc  60 20 9d e5                                      ldr r2, [sp, #0x60]
00847dc0  2c 30 8d e5                                      str r3, [sp, #0x2c]
00847dc4  68 30 9d e5                                      ldr r3, [sp, #0x68]
00847dc8  00 a0 a0 e1                                      mov sl, r0
00847dcc  24 00 a0 e3                                      mov r0, #0x24
00847dd0  00 c0 8d e5                                      str ip, [sp]
00847dd4  08 20 8d e5                                      str r2, [sp, #8]
00847dd8  0c 30 8d e5                                      str r3, [sp, #0xc]
00847ddc  70 60 9d e5                                      ldr r6, [sp, #0x70]
00847de0  74 50 9d e5                                      ldr r5, [sp, #0x74]
00847de4  a8 1a eb eb                                      bl #0x30e88c
00847de8  00 70 a0 e1                                      mov r7, r0
00847dec  21 08 00 eb                                      bl #0x849e78
00847df0  0b 10 a0 e3                                      mov r1, #0xb
00847df4  07 00 a0 e1                                      mov r0, r7
00847df8  00 30 97 e5                                      ldr r3, [r7]
00847dfc  0f e0 a0 e1                                      mov lr, pc
00847e00  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00847e04  00 30 97 e5                                      ldr r3, [r7]
00847e08  08 00 a0 e1                                      mov r0, r8
00847e0c  3c 90 93 e5                                      ldr sb, [r3, #0x3c]
00847e10  65 8c ff eb                                      bl #0x82afac
00847e14  08 10 a0 e1                                      mov r1, r8
00847e18  70 20 bf e6                                      sxth r2, r0
00847e1c  07 00 a0 e1                                      mov r0, r7
00847e20  39 ff 2f e1                                      blx sb
00847e24  0b 10 a0 e1                                      mov r1, fp
00847e28  00 30 97 e5                                      ldr r3, [r7]
00847e2c  07 00 a0 e1                                      mov r0, r7
00847e30  0f e0 a0 e1                                      mov lr, pc
00847e34  08 f0 93 e5                                      ldr pc, [r3, #8]
00847e38  00 c0 9d e5                                      ldr ip, [sp]
00847e3c  00 30 97 e5                                      ldr r3, [r7]
00847e40  07 00 a0 e1                                      mov r0, r7
00847e44  0c 10 a0 e1                                      mov r1, ip
00847e48  0f e0 a0 e1                                      mov lr, pc
00847e4c  08 f0 93 e5                                      ldr pc, [r3, #8]
00847e50  fc 15 dd e1                                      ldrsh r1, [sp, #0x5c]
00847e54  00 30 97 e5                                      ldr r3, [r7]
00847e58  07 00 a0 e1                                      mov r0, r7
00847e5c  0f e0 a0 e1                                      mov lr, pc
00847e60  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00847e64  08 10 9d e5                                      ldr r1, [sp, #8]
00847e68  f4 26 dd e1                                      ldrsh r2, [sp, #0x64]
00847e6c  00 30 97 e5                                      ldr r3, [r7]
00847e70  07 00 a0 e1                                      mov r0, r7
00847e74  0f e0 a0 e1                                      mov lr, pc
00847e78  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
00847e7c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00847e80  fc 26 dd e1                                      ldrsh r2, [sp, #0x6c]
00847e84  00 30 97 e5                                      ldr r3, [r7]
00847e88  07 00 a0 e1                                      mov r0, r7
00847e8c  0f e0 a0 e1                                      mov lr, pc
00847e90  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
00847e94  00 00 56 e3                                      cmp r6, #0
00847e98  47 00 00 0a                                      beq #0x847fbc
00847e9c  30 10 8d e2                                      add r1, sp, #0x30
00847ea0  00 30 a0 e3                                      mov r3, #0
00847ea4  20 30 21 e5                                      str r3, [r1, #-0x20]!
00847ea8  06 00 a0 e1                                      mov r0, r6
00847eac  00 30 96 e5                                      ldr r3, [r6]
00847eb0  0f e0 a0 e1                                      mov lr, pc
00847eb4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00847eb8  00 60 50 e2                                      subs r6, r0, #0
00847ebc  07 00 00 0a                                      beq #0x847ee0
00847ec0  00 30 97 e5                                      ldr r3, [r7]
00847ec4  07 00 a0 e1                                      mov r0, r7
00847ec8  06 10 a0 e1                                      mov r1, r6
00847ecc  f0 21 dd e1                                      ldrsh r2, [sp, #0x10]
00847ed0  0f e0 a0 e1                                      mov lr, pc
00847ed4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00847ed8  06 00 a0 e1                                      mov r0, r6
00847edc  f3 18 eb eb                                      bl #0x30e2b0
00847ee0  00 60 95 e5                                      ldr r6, [r5]
00847ee4  00 30 97 e5                                      ldr r3, [r7]
00847ee8  05 00 56 e1                                      cmp r6, r5
00847eec  08 30 93 e5                                      ldr r3, [r3, #8]
00847ef0  00 10 a0 03                                      moveq r1, #0
00847ef4  05 00 00 0a                                      beq #0x847f10
00847ef8  00 10 a0 e3                                      mov r1, #0
00847efc  00 60 96 e5                                      ldr r6, [r6]
00847f00  01 10 81 e2                                      add r1, r1, #1
00847f04  06 00 55 e1                                      cmp r5, r6
00847f08  fb ff ff 1a                                      bne #0x847efc
00847f0c  71 10 ef e6                                      uxtb r1, r1
00847f10  07 00 a0 e1                                      mov r0, r7
00847f14  33 ff 2f e1                                      blx r3
00847f18  14 80 8d e2                                      add r8, sp, #0x14
00847f1c  00 50 95 e5                                      ldr r5, [r5]
00847f20  11 00 00 ea                                      b #0x847f6c
00847f24  24 80 8d e5                                      str r8, [sp, #0x24]
00847f28  28 80 8d e5                                      str r8, [sp, #0x28]
00847f2c  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
00847f30  18 20 95 e5                                      ldr r2, [r5, #0x18]
00847f34  08 00 a0 e1                                      mov r0, r8
00847f38  ea 25 eb eb                                      bl #0x3116e8
00847f3c  28 20 9d e5                                      ldr r2, [sp, #0x28]
00847f40  24 00 9d e5                                      ldr r0, [sp, #0x24]
00847f44  00 30 97 e5                                      ldr r3, [r7]
00847f48  02 10 a0 e1                                      mov r1, r2
00847f4c  00 20 62 e0                                      rsb r2, r2, r0
00847f50  72 20 bf e6                                      sxth r2, r2
00847f54  07 00 a0 e1                                      mov r0, r7
00847f58  0f e0 a0 e1                                      mov lr, pc
00847f5c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00847f60  08 00 a0 e1                                      mov r0, r8
00847f64  90 2e eb eb                                      bl #0x3139ac
00847f68  00 50 95 e5                                      ldr r5, [r5]
00847f6c  05 00 56 e1                                      cmp r6, r5
00847f70  eb ff ff 1a                                      bne #0x847f24
00847f74  00 30 97 e5                                      ldr r3, [r7]
00847f78  07 00 a0 e1                                      mov r0, r7
00847f7c  0f e0 a0 e1                                      mov lr, pc
00847f80  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00847f84  0a 00 a0 e1                                      mov r0, sl
00847f88  07 10 a0 e1                                      mov r1, r7
00847f8c  07 fc ff eb                                      bl #0x846fb0
00847f90  0a 00 a0 e1                                      mov r0, sl
00847f94  07 10 a0 e1                                      mov r1, r7
00847f98  85 f6 ff eb                                      bl #0x8459b4
00847f9c  04 00 9d e5                                      ldr r0, [sp, #4]
00847fa0  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00847fa4  00 30 94 e7                                      ldr r3, [r4, r0]
00847fa8  00 30 93 e5                                      ldr r3, [r3]
00847fac  03 00 52 e1                                      cmp r2, r3
00847fb0  07 00 00 1a                                      bne #0x847fd4
00847fb4  34 d0 8d e2                                      add sp, sp, #0x34
00847fb8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00847fbc  06 10 a0 e1                                      mov r1, r6
00847fc0  00 30 97 e5                                      ldr r3, [r7]
00847fc4  07 00 a0 e1                                      mov r0, r7
00847fc8  0f e0 a0 e1                                      mov lr, pc
00847fcc  08 f0 93 e5                                      ldr pc, [r3, #8]
00847fd0  c2 ff ff ea                                      b #0x847ee0
00847fd4  cd 18 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00847fd8  f0 cc 14 00 ac 40 00 00                          .byte 0xf0, 0xcc, 0x14, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00847fe0, declared_size=352, range_size=352, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby22sendCreateLobbyPackageEiPchhiS0_iS0_iP23CLobbyParameterAndQuery
; demangled: ConnectionLobby::sendCreateLobbyPackage(int, char*, unsigned char, unsigned char, int, char*, int, char*, int, CLobbyParameterAndQuery*)
; decoder-mode: arm
00847fe0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00847fe4  00 40 a0 e1                                      mov r4, r0
00847fe8  08 d0 4d e2                                      sub sp, sp, #8
00847fec  24 00 a0 e3                                      mov r0, #0x24
00847ff0  02 70 a0 e1                                      mov r7, r2
00847ff4  03 80 a0 e1                                      mov r8, r3
00847ff8  40 60 9d e5                                      ldr r6, [sp, #0x40]
00847ffc  28 90 dd e5                                      ldrb sb, [sp, #0x28]
00848000  21 1a eb eb                                      bl #0x30e88c
00848004  00 50 a0 e1                                      mov r5, r0
00848008  9a 07 00 eb                                      bl #0x849e78
0084800c  0b 10 a0 e3                                      mov r1, #0xb
00848010  05 00 a0 e1                                      mov r0, r5
00848014  00 30 95 e5                                      ldr r3, [r5]
00848018  0f e0 a0 e1                                      mov lr, pc
0084801c  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00848020  00 30 95 e5                                      ldr r3, [r5]
00848024  07 00 a0 e1                                      mov r0, r7
00848028  3c a0 93 e5                                      ldr sl, [r3, #0x3c]
0084802c  de 8b ff eb                                      bl #0x82afac
00848030  07 10 a0 e1                                      mov r1, r7
00848034  70 20 bf e6                                      sxth r2, r0
00848038  05 00 a0 e1                                      mov r0, r5
0084803c  3a ff 2f e1                                      blx sl
00848040  08 10 a0 e1                                      mov r1, r8
00848044  00 30 95 e5                                      ldr r3, [r5]
00848048  05 00 a0 e1                                      mov r0, r5
0084804c  0f e0 a0 e1                                      mov lr, pc
00848050  08 f0 93 e5                                      ldr pc, [r3, #8]
00848054  09 10 a0 e1                                      mov r1, sb
00848058  00 30 95 e5                                      ldr r3, [r5]
0084805c  05 00 a0 e1                                      mov r0, r5
00848060  0f e0 a0 e1                                      mov lr, pc
00848064  08 f0 93 e5                                      ldr pc, [r3, #8]
00848068  fc 12 dd e1                                      ldrsh r1, [sp, #0x2c]
0084806c  00 30 95 e5                                      ldr r3, [r5]
00848070  05 00 a0 e1                                      mov r0, r5
00848074  0f e0 a0 e1                                      mov lr, pc
00848078  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0084807c  30 10 9d e5                                      ldr r1, [sp, #0x30]
00848080  f4 23 dd e1                                      ldrsh r2, [sp, #0x34]
00848084  00 30 95 e5                                      ldr r3, [r5]
00848088  05 00 a0 e1                                      mov r0, r5
0084808c  0f e0 a0 e1                                      mov lr, pc
00848090  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
00848094  38 10 9d e5                                      ldr r1, [sp, #0x38]
00848098  fc 23 dd e1                                      ldrsh r2, [sp, #0x3c]
0084809c  00 30 95 e5                                      ldr r3, [r5]
008480a0  05 00 a0 e1                                      mov r0, r5
008480a4  0f e0 a0 e1                                      mov lr, pc
008480a8  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
008480ac  00 00 56 e3                                      cmp r6, #0
008480b0  1c 00 00 0a                                      beq #0x848128
008480b4  08 10 8d e2                                      add r1, sp, #8
008480b8  00 30 a0 e3                                      mov r3, #0
008480bc  04 30 21 e5                                      str r3, [r1, #-4]!
008480c0  06 00 a0 e1                                      mov r0, r6
008480c4  00 30 96 e5                                      ldr r3, [r6]
008480c8  0f e0 a0 e1                                      mov lr, pc
008480cc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008480d0  00 60 50 e2                                      subs r6, r0, #0
008480d4  07 00 00 0a                                      beq #0x8480f8
008480d8  00 30 95 e5                                      ldr r3, [r5]
008480dc  05 00 a0 e1                                      mov r0, r5
008480e0  06 10 a0 e1                                      mov r1, r6
008480e4  f4 20 dd e1                                      ldrsh r2, [sp, #4]
008480e8  0f e0 a0 e1                                      mov lr, pc
008480ec  38 f0 93 e5                                      ldr pc, [r3, #0x38]
008480f0  06 00 a0 e1                                      mov r0, r6
008480f4  6d 18 eb eb                                      bl #0x30e2b0
008480f8  00 30 95 e5                                      ldr r3, [r5]
008480fc  05 00 a0 e1                                      mov r0, r5
00848100  0f e0 a0 e1                                      mov lr, pc
00848104  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00848108  04 00 a0 e1                                      mov r0, r4
0084810c  05 10 a0 e1                                      mov r1, r5
00848110  a6 fb ff eb                                      bl #0x846fb0
00848114  04 00 a0 e1                                      mov r0, r4
00848118  05 10 a0 e1                                      mov r1, r5
0084811c  24 f6 ff eb                                      bl #0x8459b4
00848120  08 d0 8d e2                                      add sp, sp, #8
00848124  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00848128  06 10 a0 e1                                      mov r1, r6
0084812c  00 30 95 e5                                      ldr r3, [r5]
00848130  05 00 a0 e1                                      mov r0, r5
00848134  0f e0 a0 e1                                      mov lr, pc
00848138  08 f0 93 e5                                      ldr pc, [r3, #8]
0084813c  ed ff ff ea                                      b #0x8480f8

; FUNCTION 0x00848140, declared_size=280, range_size=280, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby35sendLobbyLoginPackageWithGameCenterElPcshhS0_S0_
; demangled: ConnectionLobby::sendLobbyLoginPackageWithGameCenter(long, char*, short, unsigned char, unsigned char, char*, char*)
; decoder-mode: arm
00848140  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00848144  0c d0 4d e2                                      sub sp, sp, #0xc
00848148  34 c0 dd e5                                      ldrb ip, [sp, #0x34]
0084814c  00 40 a0 e1                                      mov r4, r0
00848150  24 00 a0 e3                                      mov r0, #0x24
00848154  04 c0 8d e5                                      str ip, [sp, #4]
00848158  02 80 a0 e1                                      mov r8, r2
0084815c  03 a0 a0 e1                                      mov sl, r3
00848160  01 90 a0 e1                                      mov sb, r1
00848164  38 70 9d e5                                      ldr r7, [sp, #0x38]
00848168  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
0084816c  30 b0 dd e5                                      ldrb fp, [sp, #0x30]
00848170  c5 19 eb eb                                      bl #0x30e88c
00848174  00 50 a0 e1                                      mov r5, r0
00848178  3e 07 00 eb                                      bl #0x849e78
0084817c  05 00 a0 e1                                      mov r0, r5
00848180  00 30 95 e5                                      ldr r3, [r5]
00848184  05 10 a0 e3                                      mov r1, #5
00848188  0f e0 a0 e1                                      mov lr, pc
0084818c  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00848190  09 10 a0 e1                                      mov r1, sb
00848194  00 30 95 e5                                      ldr r3, [r5]
00848198  05 00 a0 e1                                      mov r0, r5
0084819c  0f e0 a0 e1                                      mov lr, pc
008481a0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008481a4  0a 20 a0 e1                                      mov r2, sl
008481a8  08 10 a0 e1                                      mov r1, r8
008481ac  00 30 95 e5                                      ldr r3, [r5]
008481b0  05 00 a0 e1                                      mov r0, r5
008481b4  0f e0 a0 e1                                      mov lr, pc
008481b8  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
008481bc  0b 10 a0 e1                                      mov r1, fp
008481c0  00 30 95 e5                                      ldr r3, [r5]
008481c4  05 00 a0 e1                                      mov r0, r5
008481c8  0f e0 a0 e1                                      mov lr, pc
008481cc  08 f0 93 e5                                      ldr pc, [r3, #8]
008481d0  04 c0 9d e5                                      ldr ip, [sp, #4]
008481d4  00 30 95 e5                                      ldr r3, [r5]
008481d8  05 00 a0 e1                                      mov r0, r5
008481dc  0c 10 a0 e1                                      mov r1, ip
008481e0  0f e0 a0 e1                                      mov lr, pc
008481e4  08 f0 93 e5                                      ldr pc, [r3, #8]
008481e8  00 30 95 e5                                      ldr r3, [r5]
008481ec  07 00 a0 e1                                      mov r0, r7
008481f0  3c 80 93 e5                                      ldr r8, [r3, #0x3c]
008481f4  6c 8b ff eb                                      bl #0x82afac
008481f8  07 10 a0 e1                                      mov r1, r7
008481fc  70 20 bf e6                                      sxth r2, r0
00848200  05 00 a0 e1                                      mov r0, r5
00848204  38 ff 2f e1                                      blx r8
00848208  00 30 95 e5                                      ldr r3, [r5]
0084820c  06 00 a0 e1                                      mov r0, r6
00848210  3c 70 93 e5                                      ldr r7, [r3, #0x3c]
00848214  64 8b ff eb                                      bl #0x82afac
00848218  06 10 a0 e1                                      mov r1, r6
0084821c  70 20 bf e6                                      sxth r2, r0
00848220  05 00 a0 e1                                      mov r0, r5
00848224  37 ff 2f e1                                      blx r7
00848228  00 30 95 e5                                      ldr r3, [r5]
0084822c  05 00 a0 e1                                      mov r0, r5
00848230  0f e0 a0 e1                                      mov lr, pc
00848234  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00848238  04 00 a0 e1                                      mov r0, r4
0084823c  05 10 a0 e1                                      mov r1, r5
00848240  5a fb ff eb                                      bl #0x846fb0
00848244  04 00 a0 e1                                      mov r0, r4
00848248  05 10 a0 e1                                      mov r1, r5
0084824c  0c d0 8d e2                                      add sp, sp, #0xc
00848250  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00848254  d6 f5 ff ea                                      b #0x8459b4

; FUNCTION 0x00848258, declared_size=168, range_size=168, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby21sendLobbyLoginPackageElPcsh
; demangled: ConnectionLobby::sendLobbyLoginPackage(long, char*, short, unsigned char)
; decoder-mode: arm
00848258  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0084825c  00 40 a0 e1                                      mov r4, r0
00848260  24 00 a0 e3                                      mov r0, #0x24
00848264  02 70 a0 e1                                      mov r7, r2
00848268  03 80 a0 e1                                      mov r8, r3
0084826c  01 a0 a0 e1                                      mov sl, r1
00848270  20 60 dd e5                                      ldrb r6, [sp, #0x20]
00848274  84 19 eb eb                                      bl #0x30e88c
00848278  00 50 a0 e1                                      mov r5, r0
0084827c  fd 06 00 eb                                      bl #0x849e78
00848280  05 00 a0 e1                                      mov r0, r5
00848284  00 30 95 e5                                      ldr r3, [r5]
00848288  05 10 a0 e3                                      mov r1, #5
0084828c  0f e0 a0 e1                                      mov lr, pc
00848290  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00848294  0a 10 a0 e1                                      mov r1, sl
00848298  00 30 95 e5                                      ldr r3, [r5]
0084829c  05 00 a0 e1                                      mov r0, r5
008482a0  0f e0 a0 e1                                      mov lr, pc
008482a4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008482a8  08 20 a0 e1                                      mov r2, r8
008482ac  07 10 a0 e1                                      mov r1, r7
008482b0  00 30 95 e5                                      ldr r3, [r5]
008482b4  05 00 a0 e1                                      mov r0, r5
008482b8  0f e0 a0 e1                                      mov lr, pc
008482bc  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
008482c0  06 10 a0 e1                                      mov r1, r6
008482c4  00 30 95 e5                                      ldr r3, [r5]
008482c8  05 00 a0 e1                                      mov r0, r5
008482cc  0f e0 a0 e1                                      mov lr, pc
008482d0  08 f0 93 e5                                      ldr pc, [r3, #8]
008482d4  00 30 95 e5                                      ldr r3, [r5]
008482d8  05 00 a0 e1                                      mov r0, r5
008482dc  0f e0 a0 e1                                      mov lr, pc
008482e0  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
008482e4  04 00 a0 e1                                      mov r0, r4
008482e8  05 10 a0 e1                                      mov r1, r5
008482ec  2f fb ff eb                                      bl #0x846fb0
008482f0  04 00 a0 e1                                      mov r0, r4
008482f4  05 10 a0 e1                                      mov r1, r5
008482f8  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
008482fc  ac f5 ff ea                                      b #0x8459b4

; FUNCTION 0x00848300, declared_size=172, range_size=172, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby24sendKickOutPlayerPackageEPc
; demangled: ConnectionLobby::sendKickOutPlayerPackage(char*)
; decoder-mode: arm
00848300  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00848304  00 60 51 e2                                      subs r6, r1, #0
00848308  00 50 a0 e1                                      mov r5, r0
0084830c  25 00 00 0a                                      beq #0x8483a8
00848310  24 00 a0 e3                                      mov r0, #0x24
00848314  5c 19 eb eb                                      bl #0x30e88c
00848318  00 40 a0 e1                                      mov r4, r0
0084831c  d5 06 00 eb                                      bl #0x849e78
00848320  00 30 94 e5                                      ldr r3, [r4]
00848324  67 10 a0 e3                                      mov r1, #0x67
00848328  04 00 a0 e1                                      mov r0, r4
0084832c  0f e0 a0 e1                                      mov lr, pc
00848330  08 f0 93 e5                                      ldr pc, [r3, #8]
00848334  00 30 94 e5                                      ldr r3, [r4]
00848338  72 10 a0 e3                                      mov r1, #0x72
0084833c  04 00 a0 e1                                      mov r0, r4
00848340  0f e0 a0 e1                                      mov lr, pc
00848344  08 f0 93 e5                                      ldr pc, [r3, #8]
00848348  6b 10 a0 e3                                      mov r1, #0x6b
0084834c  00 30 94 e5                                      ldr r3, [r4]
00848350  04 00 a0 e1                                      mov r0, r4
00848354  0f e0 a0 e1                                      mov lr, pc
00848358  08 f0 93 e5                                      ldr pc, [r3, #8]
0084835c  00 30 94 e5                                      ldr r3, [r4]
00848360  06 00 a0 e1                                      mov r0, r6
00848364  3c 70 93 e5                                      ldr r7, [r3, #0x3c]
00848368  0f 8b ff eb                                      bl #0x82afac
0084836c  06 10 a0 e1                                      mov r1, r6
00848370  70 20 bf e6                                      sxth r2, r0
00848374  04 00 a0 e1                                      mov r0, r4
00848378  37 ff 2f e1                                      blx r7
0084837c  00 30 94 e5                                      ldr r3, [r4]
00848380  04 00 a0 e1                                      mov r0, r4
00848384  0f e0 a0 e1                                      mov lr, pc
00848388  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0084838c  05 00 a0 e1                                      mov r0, r5
00848390  04 10 a0 e1                                      mov r1, r4
00848394  05 fb ff eb                                      bl #0x846fb0
00848398  05 00 a0 e1                                      mov r0, r5
0084839c  04 10 a0 e1                                      mov r1, r4
008483a0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
008483a4  82 f5 ff ea                                      b #0x8459b4
008483a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x008483ac, declared_size=152, range_size=152, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby24sendUpdateSessionPackageEi
; demangled: ConnectionLobby::sendUpdateSessionPackage(int)
; decoder-mode: arm
008483ac  70 40 2d e9                                      push {r4, r5, r6, lr}
008483b0  00 50 a0 e1                                      mov r5, r0
008483b4  24 00 a0 e3                                      mov r0, #0x24
008483b8  01 60 a0 e1                                      mov r6, r1
008483bc  32 19 eb eb                                      bl #0x30e88c
008483c0  00 40 a0 e1                                      mov r4, r0
008483c4  ab 06 00 eb                                      bl #0x849e78
008483c8  00 30 94 e5                                      ldr r3, [r4]
008483cc  67 10 a0 e3                                      mov r1, #0x67
008483d0  04 00 a0 e1                                      mov r0, r4
008483d4  0f e0 a0 e1                                      mov lr, pc
008483d8  08 f0 93 e5                                      ldr pc, [r3, #8]
008483dc  00 30 94 e5                                      ldr r3, [r4]
008483e0  72 10 a0 e3                                      mov r1, #0x72
008483e4  04 00 a0 e1                                      mov r0, r4
008483e8  0f e0 a0 e1                                      mov lr, pc
008483ec  08 f0 93 e5                                      ldr pc, [r3, #8]
008483f0  00 30 94 e5                                      ldr r3, [r4]
008483f4  65 10 a0 e3                                      mov r1, #0x65
008483f8  04 00 a0 e1                                      mov r0, r4
008483fc  0f e0 a0 e1                                      mov lr, pc
00848400  08 f0 93 e5                                      ldr pc, [r3, #8]
00848404  76 10 ef e6                                      uxtb r1, r6
00848408  00 30 94 e5                                      ldr r3, [r4]
0084840c  04 00 a0 e1                                      mov r0, r4
00848410  0f e0 a0 e1                                      mov lr, pc
00848414  08 f0 93 e5                                      ldr pc, [r3, #8]
00848418  00 30 94 e5                                      ldr r3, [r4]
0084841c  04 00 a0 e1                                      mov r0, r4
00848420  0f e0 a0 e1                                      mov lr, pc
00848424  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00848428  05 00 a0 e1                                      mov r0, r5
0084842c  04 10 a0 e1                                      mov r1, r4
00848430  de fa ff eb                                      bl #0x846fb0
00848434  05 00 a0 e1                                      mov r0, r5
00848438  04 10 a0 e1                                      mov r1, r4
0084843c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00848440  5b f5 ff ea                                      b #0x8459b4

; FUNCTION 0x00848444, declared_size=128, range_size=128, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby21sendFinishGamePackageEv
; demangled: ConnectionLobby::sendFinishGamePackage()
; decoder-mode: arm
00848444  70 40 2d e9                                      push {r4, r5, r6, lr}
00848448  00 50 a0 e1                                      mov r5, r0
0084844c  24 00 a0 e3                                      mov r0, #0x24
00848450  0d 19 eb eb                                      bl #0x30e88c
00848454  00 40 a0 e1                                      mov r4, r0
00848458  86 06 00 eb                                      bl #0x849e78
0084845c  00 30 94 e5                                      ldr r3, [r4]
00848460  67 10 a0 e3                                      mov r1, #0x67
00848464  04 00 a0 e1                                      mov r0, r4
00848468  0f e0 a0 e1                                      mov lr, pc
0084846c  08 f0 93 e5                                      ldr pc, [r3, #8]
00848470  00 30 94 e5                                      ldr r3, [r4]
00848474  72 10 a0 e3                                      mov r1, #0x72
00848478  04 00 a0 e1                                      mov r0, r4
0084847c  0f e0 a0 e1                                      mov lr, pc
00848480  08 f0 93 e5                                      ldr pc, [r3, #8]
00848484  66 10 a0 e3                                      mov r1, #0x66
00848488  00 30 94 e5                                      ldr r3, [r4]
0084848c  04 00 a0 e1                                      mov r0, r4
00848490  0f e0 a0 e1                                      mov lr, pc
00848494  08 f0 93 e5                                      ldr pc, [r3, #8]
00848498  00 30 94 e5                                      ldr r3, [r4]
0084849c  04 00 a0 e1                                      mov r0, r4
008484a0  0f e0 a0 e1                                      mov lr, pc
008484a4  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
008484a8  05 00 a0 e1                                      mov r0, r5
008484ac  04 10 a0 e1                                      mov r1, r4
008484b0  be fa ff eb                                      bl #0x846fb0
008484b4  05 00 a0 e1                                      mov r0, r5
008484b8  04 10 a0 e1                                      mov r1, r4
008484bc  70 40 bd e8                                      pop {r4, r5, r6, lr}
008484c0  3b f5 ff ea                                      b #0x8459b4

; FUNCTION 0x008484c4, declared_size=128, range_size=128, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby20sendStartGamePackageEv
; demangled: ConnectionLobby::sendStartGamePackage()
; decoder-mode: arm
008484c4  70 40 2d e9                                      push {r4, r5, r6, lr}
008484c8  00 50 a0 e1                                      mov r5, r0
008484cc  24 00 a0 e3                                      mov r0, #0x24
008484d0  ed 18 eb eb                                      bl #0x30e88c
008484d4  00 40 a0 e1                                      mov r4, r0
008484d8  66 06 00 eb                                      bl #0x849e78
008484dc  00 30 94 e5                                      ldr r3, [r4]
008484e0  67 10 a0 e3                                      mov r1, #0x67
008484e4  04 00 a0 e1                                      mov r0, r4
008484e8  0f e0 a0 e1                                      mov lr, pc
008484ec  08 f0 93 e5                                      ldr pc, [r3, #8]
008484f0  00 30 94 e5                                      ldr r3, [r4]
008484f4  72 10 a0 e3                                      mov r1, #0x72
008484f8  04 00 a0 e1                                      mov r0, r4
008484fc  0f e0 a0 e1                                      mov lr, pc
00848500  08 f0 93 e5                                      ldr pc, [r3, #8]
00848504  73 10 a0 e3                                      mov r1, #0x73
00848508  00 30 94 e5                                      ldr r3, [r4]
0084850c  04 00 a0 e1                                      mov r0, r4
00848510  0f e0 a0 e1                                      mov lr, pc
00848514  08 f0 93 e5                                      ldr pc, [r3, #8]
00848518  00 30 94 e5                                      ldr r3, [r4]
0084851c  04 00 a0 e1                                      mov r0, r4
00848520  0f e0 a0 e1                                      mov lr, pc
00848524  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00848528  05 00 a0 e1                                      mov r0, r5
0084852c  04 10 a0 e1                                      mov r1, r4
00848530  9e fa ff eb                                      bl #0x846fb0
00848534  05 00 a0 e1                                      mov r0, r5
00848538  04 10 a0 e1                                      mov r1, r4
0084853c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00848540  1b f5 ff ea                                      b #0x8459b4

; FUNCTION 0x00848544, declared_size=228, range_size=228, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby29sendListSessionsByDataPackageEhiPci
; demangled: ConnectionLobby::sendListSessionsByDataPackage(unsigned char, int, char*, int)
; decoder-mode: arm
00848544  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00848548  00 40 a0 e1                                      mov r4, r0
0084854c  24 00 a0 e3                                      mov r0, #0x24
00848550  02 80 a0 e1                                      mov r8, r2
00848554  03 60 a0 e1                                      mov r6, r3
00848558  01 a0 a0 e1                                      mov sl, r1
0084855c  20 70 9d e5                                      ldr r7, [sp, #0x20]
00848560  c9 18 eb eb                                      bl #0x30e88c
00848564  00 50 a0 e1                                      mov r5, r0
00848568  42 06 00 eb                                      bl #0x849e78
0084856c  00 30 95 e5                                      ldr r3, [r5]
00848570  67 10 a0 e3                                      mov r1, #0x67
00848574  05 00 a0 e1                                      mov r0, r5
00848578  0f e0 a0 e1                                      mov lr, pc
0084857c  08 f0 93 e5                                      ldr pc, [r3, #8]
00848580  00 30 95 e5                                      ldr r3, [r5]
00848584  72 10 a0 e3                                      mov r1, #0x72
00848588  05 00 a0 e1                                      mov r0, r5
0084858c  0f e0 a0 e1                                      mov lr, pc
00848590  08 f0 93 e5                                      ldr pc, [r3, #8]
00848594  00 30 95 e5                                      ldr r3, [r5]
00848598  6c 10 a0 e3                                      mov r1, #0x6c
0084859c  05 00 a0 e1                                      mov r0, r5
008485a0  0f e0 a0 e1                                      mov lr, pc
008485a4  08 f0 93 e5                                      ldr pc, [r3, #8]
008485a8  0a 10 a0 e1                                      mov r1, sl
008485ac  00 30 95 e5                                      ldr r3, [r5]
008485b0  05 00 a0 e1                                      mov r0, r5
008485b4  0f e0 a0 e1                                      mov lr, pc
008485b8  08 f0 93 e5                                      ldr pc, [r3, #8]
008485bc  08 10 a0 e1                                      mov r1, r8
008485c0  00 30 95 e5                                      ldr r3, [r5]
008485c4  05 00 a0 e1                                      mov r0, r5
008485c8  0f e0 a0 e1                                      mov lr, pc
008485cc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008485d0  00 30 95 e5                                      ldr r3, [r5]
008485d4  64 10 a0 e3                                      mov r1, #0x64
008485d8  05 00 a0 e1                                      mov r0, r5
008485dc  0f e0 a0 e1                                      mov lr, pc
008485e0  08 f0 93 e5                                      ldr pc, [r3, #8]
008485e4  77 20 bf e6                                      sxth r2, r7
008485e8  06 10 a0 e1                                      mov r1, r6
008485ec  00 30 95 e5                                      ldr r3, [r5]
008485f0  05 00 a0 e1                                      mov r0, r5
008485f4  0f e0 a0 e1                                      mov lr, pc
008485f8  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
008485fc  00 30 95 e5                                      ldr r3, [r5]
00848600  05 00 a0 e1                                      mov r0, r5
00848604  0f e0 a0 e1                                      mov lr, pc
00848608  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0084860c  04 00 a0 e1                                      mov r0, r4
00848610  05 10 a0 e1                                      mov r1, r5
00848614  65 fa ff eb                                      bl #0x846fb0
00848618  04 00 a0 e1                                      mov r0, r4
0084861c  05 10 a0 e1                                      mov r1, r5
00848620  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00848624  e2 f4 ff ea                                      b #0x8459b4

; FUNCTION 0x00848628, declared_size=232, range_size=232, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby29sendListSessionsByNamePackageEhiPc
; demangled: ConnectionLobby::sendListSessionsByNamePackage(unsigned char, int, char*)
; decoder-mode: arm
00848628  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0084862c  00 40 a0 e1                                      mov r4, r0
00848630  24 00 a0 e3                                      mov r0, #0x24
00848634  02 70 a0 e1                                      mov r7, r2
00848638  03 60 a0 e1                                      mov r6, r3
0084863c  01 80 a0 e1                                      mov r8, r1
00848640  91 18 eb eb                                      bl #0x30e88c
00848644  00 50 a0 e1                                      mov r5, r0
00848648  0a 06 00 eb                                      bl #0x849e78
0084864c  00 30 95 e5                                      ldr r3, [r5]
00848650  67 10 a0 e3                                      mov r1, #0x67
00848654  05 00 a0 e1                                      mov r0, r5
00848658  0f e0 a0 e1                                      mov lr, pc
0084865c  08 f0 93 e5                                      ldr pc, [r3, #8]
00848660  00 30 95 e5                                      ldr r3, [r5]
00848664  72 10 a0 e3                                      mov r1, #0x72
00848668  05 00 a0 e1                                      mov r0, r5
0084866c  0f e0 a0 e1                                      mov lr, pc
00848670  08 f0 93 e5                                      ldr pc, [r3, #8]
00848674  00 30 95 e5                                      ldr r3, [r5]
00848678  6c 10 a0 e3                                      mov r1, #0x6c
0084867c  05 00 a0 e1                                      mov r0, r5
00848680  0f e0 a0 e1                                      mov lr, pc
00848684  08 f0 93 e5                                      ldr pc, [r3, #8]
00848688  08 10 a0 e1                                      mov r1, r8
0084868c  00 30 95 e5                                      ldr r3, [r5]
00848690  05 00 a0 e1                                      mov r0, r5
00848694  0f e0 a0 e1                                      mov lr, pc
00848698  08 f0 93 e5                                      ldr pc, [r3, #8]
0084869c  07 10 a0 e1                                      mov r1, r7
008486a0  00 30 95 e5                                      ldr r3, [r5]
008486a4  05 00 a0 e1                                      mov r0, r5
008486a8  0f e0 a0 e1                                      mov lr, pc
008486ac  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008486b0  6e 10 a0 e3                                      mov r1, #0x6e
008486b4  00 30 95 e5                                      ldr r3, [r5]
008486b8  05 00 a0 e1                                      mov r0, r5
008486bc  0f e0 a0 e1                                      mov lr, pc
008486c0  08 f0 93 e5                                      ldr pc, [r3, #8]
008486c4  00 30 95 e5                                      ldr r3, [r5]
008486c8  06 00 a0 e1                                      mov r0, r6
008486cc  3c 70 93 e5                                      ldr r7, [r3, #0x3c]
008486d0  35 8a ff eb                                      bl #0x82afac
008486d4  06 10 a0 e1                                      mov r1, r6
008486d8  70 20 bf e6                                      sxth r2, r0
008486dc  05 00 a0 e1                                      mov r0, r5
008486e0  37 ff 2f e1                                      blx r7
008486e4  00 30 95 e5                                      ldr r3, [r5]
008486e8  05 00 a0 e1                                      mov r0, r5
008486ec  0f e0 a0 e1                                      mov lr, pc
008486f0  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
008486f4  04 00 a0 e1                                      mov r0, r4
008486f8  05 10 a0 e1                                      mov r1, r5
008486fc  2b fa ff eb                                      bl #0x846fb0
00848700  04 00 a0 e1                                      mov r0, r4
00848704  05 10 a0 e1                                      mov r1, r5
00848708  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0084870c  a8 f4 ff ea                                      b #0x8459b4

; FUNCTION 0x00848710, declared_size=196, range_size=196, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby26sendListSessionsAllPackageEhi
; demangled: ConnectionLobby::sendListSessionsAllPackage(unsigned char, int)
; decoder-mode: arm
00848710  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00848714  00 40 a0 e1                                      mov r4, r0
00848718  24 00 a0 e3                                      mov r0, #0x24
0084871c  02 60 a0 e1                                      mov r6, r2
00848720  01 70 a0 e1                                      mov r7, r1
00848724  58 18 eb eb                                      bl #0x30e88c
00848728  00 50 a0 e1                                      mov r5, r0
0084872c  d1 05 00 eb                                      bl #0x849e78
00848730  00 30 95 e5                                      ldr r3, [r5]
00848734  67 10 a0 e3                                      mov r1, #0x67
00848738  05 00 a0 e1                                      mov r0, r5
0084873c  0f e0 a0 e1                                      mov lr, pc
00848740  08 f0 93 e5                                      ldr pc, [r3, #8]
00848744  00 30 95 e5                                      ldr r3, [r5]
00848748  72 10 a0 e3                                      mov r1, #0x72
0084874c  05 00 a0 e1                                      mov r0, r5
00848750  0f e0 a0 e1                                      mov lr, pc
00848754  08 f0 93 e5                                      ldr pc, [r3, #8]
00848758  00 30 95 e5                                      ldr r3, [r5]
0084875c  6c 10 a0 e3                                      mov r1, #0x6c
00848760  05 00 a0 e1                                      mov r0, r5
00848764  0f e0 a0 e1                                      mov lr, pc
00848768  08 f0 93 e5                                      ldr pc, [r3, #8]
0084876c  07 10 a0 e1                                      mov r1, r7
00848770  00 30 95 e5                                      ldr r3, [r5]
00848774  05 00 a0 e1                                      mov r0, r5
00848778  0f e0 a0 e1                                      mov lr, pc
0084877c  08 f0 93 e5                                      ldr pc, [r3, #8]
00848780  06 10 a0 e1                                      mov r1, r6
00848784  00 30 95 e5                                      ldr r3, [r5]
00848788  05 00 a0 e1                                      mov r0, r5
0084878c  0f e0 a0 e1                                      mov lr, pc
00848790  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00848794  61 10 a0 e3                                      mov r1, #0x61
00848798  00 30 95 e5                                      ldr r3, [r5]
0084879c  05 00 a0 e1                                      mov r0, r5
008487a0  0f e0 a0 e1                                      mov lr, pc
008487a4  08 f0 93 e5                                      ldr pc, [r3, #8]
008487a8  00 30 95 e5                                      ldr r3, [r5]
008487ac  05 00 a0 e1                                      mov r0, r5
008487b0  0f e0 a0 e1                                      mov lr, pc
008487b4  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
008487b8  04 00 a0 e1                                      mov r0, r4
008487bc  05 10 a0 e1                                      mov r1, r5
008487c0  fa f9 ff eb                                      bl #0x846fb0
008487c4  04 00 a0 e1                                      mov r0, r4
008487c8  05 10 a0 e1                                      mov r1, r5
008487cc  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
008487d0  77 f4 ff ea                                      b #0x8459b4

; FUNCTION 0x008487d4, declared_size=176, range_size=176, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby23sendListSessionsPackageEhi
; demangled: ConnectionLobby::sendListSessionsPackage(unsigned char, int)
; decoder-mode: arm
008487d4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008487d8  00 40 a0 e1                                      mov r4, r0
008487dc  24 00 a0 e3                                      mov r0, #0x24
008487e0  02 60 a0 e1                                      mov r6, r2
008487e4  01 70 a0 e1                                      mov r7, r1
008487e8  27 18 eb eb                                      bl #0x30e88c
008487ec  00 50 a0 e1                                      mov r5, r0
008487f0  a0 05 00 eb                                      bl #0x849e78
008487f4  00 30 95 e5                                      ldr r3, [r5]
008487f8  67 10 a0 e3                                      mov r1, #0x67
008487fc  05 00 a0 e1                                      mov r0, r5
00848800  0f e0 a0 e1                                      mov lr, pc
00848804  08 f0 93 e5                                      ldr pc, [r3, #8]
00848808  00 30 95 e5                                      ldr r3, [r5]
0084880c  72 10 a0 e3                                      mov r1, #0x72
00848810  05 00 a0 e1                                      mov r0, r5
00848814  0f e0 a0 e1                                      mov lr, pc
00848818  08 f0 93 e5                                      ldr pc, [r3, #8]
0084881c  00 30 95 e5                                      ldr r3, [r5]
00848820  6c 10 a0 e3                                      mov r1, #0x6c
00848824  05 00 a0 e1                                      mov r0, r5
00848828  0f e0 a0 e1                                      mov lr, pc
0084882c  08 f0 93 e5                                      ldr pc, [r3, #8]
00848830  07 10 a0 e1                                      mov r1, r7
00848834  00 30 95 e5                                      ldr r3, [r5]
00848838  05 00 a0 e1                                      mov r0, r5
0084883c  0f e0 a0 e1                                      mov lr, pc
00848840  08 f0 93 e5                                      ldr pc, [r3, #8]
00848844  06 10 a0 e1                                      mov r1, r6
00848848  00 30 95 e5                                      ldr r3, [r5]
0084884c  05 00 a0 e1                                      mov r0, r5
00848850  0f e0 a0 e1                                      mov lr, pc
00848854  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00848858  00 30 95 e5                                      ldr r3, [r5]
0084885c  05 00 a0 e1                                      mov r0, r5
00848860  0f e0 a0 e1                                      mov lr, pc
00848864  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00848868  04 00 a0 e1                                      mov r0, r4
0084886c  05 10 a0 e1                                      mov r1, r5
00848870  ce f9 ff eb                                      bl #0x846fb0
00848874  04 00 a0 e1                                      mov r0, r4
00848878  05 10 a0 e1                                      mov r1, r5
0084887c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00848880  4b f4 ff ea                                      b #0x8459b4

; FUNCTION 0x00848884, declared_size=128, range_size=128, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby23sendLeaveSessionPackageEv
; demangled: ConnectionLobby::sendLeaveSessionPackage()
; decoder-mode: arm
00848884  70 40 2d e9                                      push {r4, r5, r6, lr}
00848888  00 50 a0 e1                                      mov r5, r0
0084888c  24 00 a0 e3                                      mov r0, #0x24
00848890  fd 17 eb eb                                      bl #0x30e88c
00848894  00 40 a0 e1                                      mov r4, r0
00848898  76 05 00 eb                                      bl #0x849e78
0084889c  00 30 94 e5                                      ldr r3, [r4]
008488a0  67 10 a0 e3                                      mov r1, #0x67
008488a4  04 00 a0 e1                                      mov r0, r4
008488a8  0f e0 a0 e1                                      mov lr, pc
008488ac  08 f0 93 e5                                      ldr pc, [r3, #8]
008488b0  00 30 94 e5                                      ldr r3, [r4]
008488b4  72 10 a0 e3                                      mov r1, #0x72
008488b8  04 00 a0 e1                                      mov r0, r4
008488bc  0f e0 a0 e1                                      mov lr, pc
008488c0  08 f0 93 e5                                      ldr pc, [r3, #8]
008488c4  71 10 a0 e3                                      mov r1, #0x71
008488c8  00 30 94 e5                                      ldr r3, [r4]
008488cc  04 00 a0 e1                                      mov r0, r4
008488d0  0f e0 a0 e1                                      mov lr, pc
008488d4  08 f0 93 e5                                      ldr pc, [r3, #8]
008488d8  00 30 94 e5                                      ldr r3, [r4]
008488dc  04 00 a0 e1                                      mov r0, r4
008488e0  0f e0 a0 e1                                      mov lr, pc
008488e4  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
008488e8  05 00 a0 e1                                      mov r0, r5
008488ec  04 10 a0 e1                                      mov r1, r4
008488f0  ae f9 ff eb                                      bl #0x846fb0
008488f4  05 00 a0 e1                                      mov r0, r5
008488f8  04 10 a0 e1                                      mov r1, r4
008488fc  70 40 bd e8                                      pop {r4, r5, r6, lr}
00848900  2b f4 ff ea                                      b #0x8459b4

; FUNCTION 0x00848904, declared_size=164, range_size=164, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby22sendJoinSessionPackageEPc
; demangled: ConnectionLobby::sendJoinSessionPackage(char*)
; decoder-mode: arm
00848904  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00848908  00 50 a0 e1                                      mov r5, r0
0084890c  24 00 a0 e3                                      mov r0, #0x24
00848910  01 60 a0 e1                                      mov r6, r1
00848914  dc 17 eb eb                                      bl #0x30e88c
00848918  00 40 a0 e1                                      mov r4, r0
0084891c  55 05 00 eb                                      bl #0x849e78
00848920  00 30 94 e5                                      ldr r3, [r4]
00848924  67 10 a0 e3                                      mov r1, #0x67
00848928  04 00 a0 e1                                      mov r0, r4
0084892c  0f e0 a0 e1                                      mov lr, pc
00848930  08 f0 93 e5                                      ldr pc, [r3, #8]
00848934  00 30 94 e5                                      ldr r3, [r4]
00848938  72 10 a0 e3                                      mov r1, #0x72
0084893c  04 00 a0 e1                                      mov r0, r4
00848940  0f e0 a0 e1                                      mov lr, pc
00848944  08 f0 93 e5                                      ldr pc, [r3, #8]
00848948  6a 10 a0 e3                                      mov r1, #0x6a
0084894c  00 30 94 e5                                      ldr r3, [r4]
00848950  04 00 a0 e1                                      mov r0, r4
00848954  0f e0 a0 e1                                      mov lr, pc
00848958  08 f0 93 e5                                      ldr pc, [r3, #8]
0084895c  00 30 94 e5                                      ldr r3, [r4]
00848960  06 00 a0 e1                                      mov r0, r6
00848964  3c 70 93 e5                                      ldr r7, [r3, #0x3c]
00848968  8f 89 ff eb                                      bl #0x82afac
0084896c  06 10 a0 e1                                      mov r1, r6
00848970  70 20 bf e6                                      sxth r2, r0
00848974  04 00 a0 e1                                      mov r0, r4
00848978  37 ff 2f e1                                      blx r7
0084897c  00 30 94 e5                                      ldr r3, [r4]
00848980  04 00 a0 e1                                      mov r0, r4
00848984  0f e0 a0 e1                                      mov lr, pc
00848988  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0084898c  05 00 a0 e1                                      mov r0, r5
00848990  04 10 a0 e1                                      mov r1, r4
00848994  85 f9 ff eb                                      bl #0x846fb0
00848998  05 00 a0 e1                                      mov r0, r5
0084899c  04 10 a0 e1                                      mov r1, r4
008489a0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
008489a4  02 f4 ff ea                                      b #0x8459b4

; FUNCTION 0x008489a8, declared_size=128, range_size=128, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby20sendQuickGamePackageEv
; demangled: ConnectionLobby::sendQuickGamePackage()
; decoder-mode: arm
008489a8  70 40 2d e9                                      push {r4, r5, r6, lr}
008489ac  00 50 a0 e1                                      mov r5, r0
008489b0  24 00 a0 e3                                      mov r0, #0x24
008489b4  b4 17 eb eb                                      bl #0x30e88c
008489b8  00 40 a0 e1                                      mov r4, r0
008489bc  2d 05 00 eb                                      bl #0x849e78
008489c0  00 30 94 e5                                      ldr r3, [r4]
008489c4  67 10 a0 e3                                      mov r1, #0x67
008489c8  04 00 a0 e1                                      mov r0, r4
008489cc  0f e0 a0 e1                                      mov lr, pc
008489d0  08 f0 93 e5                                      ldr pc, [r3, #8]
008489d4  00 30 94 e5                                      ldr r3, [r4]
008489d8  72 10 a0 e3                                      mov r1, #0x72
008489dc  04 00 a0 e1                                      mov r0, r4
008489e0  0f e0 a0 e1                                      mov lr, pc
008489e4  08 f0 93 e5                                      ldr pc, [r3, #8]
008489e8  75 10 a0 e3                                      mov r1, #0x75
008489ec  00 30 94 e5                                      ldr r3, [r4]
008489f0  04 00 a0 e1                                      mov r0, r4
008489f4  0f e0 a0 e1                                      mov lr, pc
008489f8  08 f0 93 e5                                      ldr pc, [r3, #8]
008489fc  00 30 94 e5                                      ldr r3, [r4]
00848a00  04 00 a0 e1                                      mov r0, r4
00848a04  0f e0 a0 e1                                      mov lr, pc
00848a08  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00848a0c  05 00 a0 e1                                      mov r0, r5
00848a10  04 10 a0 e1                                      mov r1, r4
00848a14  65 f9 ff eb                                      bl #0x846fb0
00848a18  05 00 a0 e1                                      mov r0, r5
00848a1c  04 10 a0 e1                                      mov r1, r4
00848a20  70 40 bd e8                                      pop {r4, r5, r6, lr}
00848a24  e2 f3 ff ea                                      b #0x8459b4

; FUNCTION 0x00848a28, declared_size=220, range_size=220, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby24sendCreateSessionPackageEPcS0_i
; demangled: ConnectionLobby::sendCreateSessionPackage(char*, char*, int)
; decoder-mode: arm
00848a28  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00848a2c  00 50 a0 e1                                      mov r5, r0
00848a30  24 00 a0 e3                                      mov r0, #0x24
00848a34  02 40 a0 e1                                      mov r4, r2
00848a38  01 a0 a0 e1                                      mov sl, r1
00848a3c  03 70 a0 e1                                      mov r7, r3
00848a40  91 17 eb eb                                      bl #0x30e88c
00848a44  00 60 a0 e1                                      mov r6, r0
00848a48  0a 05 00 eb                                      bl #0x849e78
00848a4c  67 10 a0 e3                                      mov r1, #0x67
00848a50  00 30 96 e5                                      ldr r3, [r6]
00848a54  06 00 a0 e1                                      mov r0, r6
00848a58  0f e0 a0 e1                                      mov lr, pc
00848a5c  08 f0 93 e5                                      ldr pc, [r3, #8]
00848a60  72 10 a0 e3                                      mov r1, #0x72
00848a64  00 30 96 e5                                      ldr r3, [r6]
00848a68  06 00 a0 e1                                      mov r0, r6
00848a6c  0f e0 a0 e1                                      mov lr, pc
00848a70  08 f0 93 e5                                      ldr pc, [r3, #8]
00848a74  63 10 a0 e3                                      mov r1, #0x63
00848a78  00 30 96 e5                                      ldr r3, [r6]
00848a7c  06 00 a0 e1                                      mov r0, r6
00848a80  0f e0 a0 e1                                      mov lr, pc
00848a84  08 f0 93 e5                                      ldr pc, [r3, #8]
00848a88  00 30 96 e5                                      ldr r3, [r6]
00848a8c  0a 00 a0 e1                                      mov r0, sl
00848a90  3c 80 93 e5                                      ldr r8, [r3, #0x3c]
00848a94  44 89 ff eb                                      bl #0x82afac
00848a98  0a 10 a0 e1                                      mov r1, sl
00848a9c  70 20 bf e6                                      sxth r2, r0
00848aa0  06 00 a0 e1                                      mov r0, r6
00848aa4  38 ff 2f e1                                      blx r8
00848aa8  00 00 54 e3                                      cmp r4, #0
00848aac  10 00 00 0a                                      beq #0x848af4
00848ab0  77 20 bf e6                                      sxth r2, r7
00848ab4  04 10 a0 e1                                      mov r1, r4
00848ab8  00 30 96 e5                                      ldr r3, [r6]
00848abc  06 00 a0 e1                                      mov r0, r6
00848ac0  0f e0 a0 e1                                      mov lr, pc
00848ac4  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00848ac8  00 30 96 e5                                      ldr r3, [r6]
00848acc  06 00 a0 e1                                      mov r0, r6
00848ad0  0f e0 a0 e1                                      mov lr, pc
00848ad4  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00848ad8  05 00 a0 e1                                      mov r0, r5
00848adc  06 10 a0 e1                                      mov r1, r6
00848ae0  32 f9 ff eb                                      bl #0x846fb0
00848ae4  05 00 a0 e1                                      mov r0, r5
00848ae8  06 10 a0 e1                                      mov r1, r6
00848aec  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00848af0  af f3 ff ea                                      b #0x8459b4
00848af4  04 40 9f e5                                      ldr r4, [pc, #4]
00848af8  04 40 8f e0                                      add r4, pc, r4
00848afc  eb ff ff ea                                      b #0x848ab0
; mapping-symbol data/literal pool
00848b00  38 89 07 00                                      .byte 0x38, 0x89, 0x07, 0x00

; FUNCTION 0x00848b04, declared_size=184, range_size=184, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby16sendLoginPackageEPc
; demangled: ConnectionLobby::sendLoginPackage(char*)
; decoder-mode: arm
00848b04  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00848b08  00 60 a0 e1                                      mov r6, r0
00848b0c  24 00 a0 e3                                      mov r0, #0x24
00848b10  01 50 a0 e1                                      mov r5, r1
00848b14  5c 17 eb eb                                      bl #0x30e88c
00848b18  00 40 a0 e1                                      mov r4, r0
00848b1c  d5 04 00 eb                                      bl #0x849e78
00848b20  00 30 94 e5                                      ldr r3, [r4]
00848b24  67 10 a0 e3                                      mov r1, #0x67
00848b28  04 00 a0 e1                                      mov r0, r4
00848b2c  0f e0 a0 e1                                      mov lr, pc
00848b30  08 f0 93 e5                                      ldr pc, [r3, #8]
00848b34  00 30 94 e5                                      ldr r3, [r4]
00848b38  72 10 a0 e3                                      mov r1, #0x72
00848b3c  04 00 a0 e1                                      mov r0, r4
00848b40  0f e0 a0 e1                                      mov lr, pc
00848b44  08 f0 93 e5                                      ldr pc, [r3, #8]
00848b48  00 30 94 e5                                      ldr r3, [r4]
00848b4c  69 10 a0 e3                                      mov r1, #0x69
00848b50  04 00 a0 e1                                      mov r0, r4
00848b54  0f e0 a0 e1                                      mov lr, pc
00848b58  08 f0 93 e5                                      ldr pc, [r3, #8]
00848b5c  54 00 9f e5                                      ldr r0, [pc, #0x54]
00848b60  05 10 a0 e1                                      mov r1, r5
00848b64  00 00 8f e0                                      add r0, pc, r0
00848b68  05 8b ff eb                                      bl #0x82b784
00848b6c  00 30 94 e5                                      ldr r3, [r4]
00848b70  05 00 a0 e1                                      mov r0, r5
00848b74  3c 70 93 e5                                      ldr r7, [r3, #0x3c]
00848b78  0b 89 ff eb                                      bl #0x82afac
00848b7c  05 10 a0 e1                                      mov r1, r5
00848b80  70 20 bf e6                                      sxth r2, r0
00848b84  04 00 a0 e1                                      mov r0, r4
00848b88  37 ff 2f e1                                      blx r7
00848b8c  00 30 94 e5                                      ldr r3, [r4]
00848b90  04 00 a0 e1                                      mov r0, r4
00848b94  0f e0 a0 e1                                      mov lr, pc
00848b98  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00848b9c  06 00 a0 e1                                      mov r0, r6
00848ba0  04 10 a0 e1                                      mov r1, r4
00848ba4  01 f9 ff eb                                      bl #0x846fb0
00848ba8  06 00 a0 e1                                      mov r0, r6
00848bac  04 10 a0 e1                                      mov r1, r4
00848bb0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00848bb4  7e f3 ff ea                                      b #0x8459b4
; mapping-symbol data/literal pool
00848bb8  b4 68 0c 00                                      .byte 0xb4, 0x68, 0x0c, 0x00

; FUNCTION 0x00848bbc, declared_size=120, range_size=120, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby27sendFinishConnectionPackageEv
; demangled: ConnectionLobby::sendFinishConnectionPackage()
; decoder-mode: arm
00848bbc  70 40 2d e9                                      push {r4, r5, r6, lr}
00848bc0  00 50 a0 e1                                      mov r5, r0
00848bc4  00 00 a0 e3                                      mov r0, #0
00848bc8  f8 88 ff eb                                      bl #0x82afb0
00848bcc  00 60 a0 e1                                      mov r6, r0
00848bd0  24 00 a0 e3                                      mov r0, #0x24
00848bd4  2c 17 eb eb                                      bl #0x30e88c
00848bd8  00 40 a0 e1                                      mov r4, r0
00848bdc  a5 04 00 eb                                      bl #0x849e78
00848be0  04 00 a0 e1                                      mov r0, r4
00848be4  03 10 a0 e3                                      mov r1, #3
00848be8  00 30 94 e5                                      ldr r3, [r4]
00848bec  0f e0 a0 e1                                      mov lr, pc
00848bf0  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00848bf4  06 10 a0 e1                                      mov r1, r6
00848bf8  00 30 94 e5                                      ldr r3, [r4]
00848bfc  04 00 a0 e1                                      mov r0, r4
00848c00  0f e0 a0 e1                                      mov lr, pc
00848c04  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00848c08  00 30 94 e5                                      ldr r3, [r4]
00848c0c  04 00 a0 e1                                      mov r0, r4
00848c10  0f e0 a0 e1                                      mov lr, pc
00848c14  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00848c18  05 00 a0 e1                                      mov r0, r5
00848c1c  04 10 a0 e1                                      mov r1, r4
00848c20  63 f3 ff eb                                      bl #0x8459b4
00848c24  43 89 ff eb                                      bl #0x82b138
00848c28  38 30 02 e3                                      movw r3, #0x2038
00848c2c  03 00 85 e7                                      str r0, [r5, r3]
00848c30  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00848c34, declared_size=156, range_size=156, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby30sendEstablishConnectionPackageEv
; demangled: ConnectionLobby::sendEstablishConnectionPackage()
; decoder-mode: arm
00848c34  70 40 2d e9                                      push {r4, r5, r6, lr}
00848c38  44 30 02 e3                                      movw r3, #0x2044
00848c3c  00 50 a0 e1                                      mov r5, r0
00848c40  00 00 a0 e3                                      mov r0, #0
00848c44  03 00 85 e7                                      str r0, [r5, r3]
00848c48  4c 30 02 e3                                      movw r3, #0x204c
00848c4c  03 00 85 e7                                      str r0, [r5, r3]
00848c50  48 30 02 e3                                      movw r3, #0x2048
00848c54  03 00 85 e7                                      str r0, [r5, r3]
00848c58  d4 88 ff eb                                      bl #0x82afb0
00848c5c  00 60 a0 e1                                      mov r6, r0
00848c60  24 00 a0 e3                                      mov r0, #0x24
00848c64  08 17 eb eb                                      bl #0x30e88c
00848c68  00 40 a0 e1                                      mov r4, r0
00848c6c  81 04 00 eb                                      bl #0x849e78
00848c70  04 00 a0 e1                                      mov r0, r4
00848c74  01 10 a0 e3                                      mov r1, #1
00848c78  00 30 94 e5                                      ldr r3, [r4]
00848c7c  0f e0 a0 e1                                      mov lr, pc
00848c80  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00848c84  06 10 a0 e1                                      mov r1, r6
00848c88  00 30 94 e5                                      ldr r3, [r4]
00848c8c  04 00 a0 e1                                      mov r0, r4
00848c90  0f e0 a0 e1                                      mov lr, pc
00848c94  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00848c98  00 30 94 e5                                      ldr r3, [r4]
00848c9c  04 00 a0 e1                                      mov r0, r4
00848ca0  0f e0 a0 e1                                      mov lr, pc
00848ca4  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00848ca8  04 10 a0 e1                                      mov r1, r4
00848cac  05 00 a0 e1                                      mov r0, r5
00848cb0  3f f3 ff eb                                      bl #0x8459b4
00848cb4  1f 89 ff eb                                      bl #0x82b138
00848cb8  38 30 02 e3                                      movw r3, #0x2038
00848cbc  03 00 85 e7                                      str r0, [r5, r3]
00848cc0  1c 89 ff eb                                      bl #0x82b138
00848cc4  50 30 02 e3                                      movw r3, #0x2050
00848cc8  03 00 85 e7                                      str r0, [r5, r3]
00848ccc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00848cd0, declared_size=732, range_size=732, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby14receiveDataLenEv
; demangled: ConnectionLobby::receiveDataLen()
; decoder-mode: arm
00848cd0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00848cd4  4c 30 02 e3                                      movw r3, #0x204c
00848cd8  03 10 90 e7                                      ldr r1, [r0, r3]
00848cdc  00 40 a0 e1                                      mov r4, r0
00848ce0  00 00 51 e3                                      cmp r1, #0
00848ce4  18 00 00 1a                                      bne #0x848d4c
00848ce8  44 30 02 e3                                      movw r3, #0x2044
00848cec  03 10 90 e7                                      ldr r1, [r0, r3]
00848cf0  02 20 a0 e3                                      mov r2, #2
00848cf4  48 30 02 e3                                      movw r3, #0x2048
00848cf8  00 00 51 e3                                      cmp r1, #0
00848cfc  03 20 80 e7                                      str r2, [r0, r3]
00848d00  0f 50 80 e2                                      add r5, r0, #0xf
00848d04  4c 00 00 0a                                      beq #0x848e3c
00848d08  14 80 02 e3                                      movw r8, #0x2014
00848d0c  08 30 94 e7                                      ldr r3, [r4, r8]
00848d10  00 10 a0 e3                                      mov r1, #0
00848d14  03 00 a0 e1                                      mov r0, r3
00848d18  00 30 93 e5                                      ldr r3, [r3]
00848d1c  0f e0 a0 e1                                      mov lr, pc
00848d20  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00848d24  00 00 50 e3                                      cmp r0, #0
00848d28  06 00 00 ba                                      blt #0x848d48
00848d2c  08 30 94 e7                                      ldr r3, [r4, r8]
00848d30  03 00 a0 e1                                      mov r0, r3
00848d34  00 30 93 e5                                      ldr r3, [r3]
00848d38  0f e0 a0 e1                                      mov lr, pc
00848d3c  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
00848d40  00 00 50 e3                                      cmp r0, #0
00848d44  40 00 00 1a                                      bne #0x848e4c
00848d48  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00848d4c  01 00 51 e3                                      cmp r1, #1
00848d50  03 00 00 0a                                      beq #0x848d64
00848d54  40 02 9f e5                                      ldr r0, [pc, #0x240]
00848d58  00 00 8f e0                                      add r0, pc, r0
00848d5c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00848d60  87 8a ff ea                                      b #0x82b784
00848d64  44 30 02 e3                                      movw r3, #0x2044
00848d68  03 10 90 e7                                      ldr r1, [r0, r3]
00848d6c  0f 50 80 e2                                      add r5, r0, #0xf
00848d70  00 00 51 e3                                      cmp r1, #0
00848d74  51 00 00 0a                                      beq #0x848ec0
00848d78  14 80 02 e3                                      movw r8, #0x2014
00848d7c  08 30 94 e7                                      ldr r3, [r4, r8]
00848d80  00 10 a0 e3                                      mov r1, #0
00848d84  03 00 a0 e1                                      mov r0, r3
00848d88  00 30 93 e5                                      ldr r3, [r3]
00848d8c  0f e0 a0 e1                                      mov lr, pc
00848d90  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00848d94  00 00 50 e3                                      cmp r0, #0
00848d98  ea ff ff ba                                      blt #0x848d48
00848d9c  08 30 94 e7                                      ldr r3, [r4, r8]
00848da0  03 00 a0 e1                                      mov r0, r3
00848da4  00 30 93 e5                                      ldr r3, [r3]
00848da8  0f e0 a0 e1                                      mov lr, pc
00848dac  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
00848db0  00 00 50 e3                                      cmp r0, #0
00848db4  e3 ff ff 0a                                      beq #0x848d48
00848db8  44 60 02 e3                                      movw r6, #0x2044
00848dbc  06 20 94 e7                                      ldr r2, [r4, r6]
00848dc0  48 70 02 e3                                      movw r7, #0x2048
00848dc4  08 30 94 e7                                      ldr r3, [r4, r8]
00848dc8  07 c0 94 e7                                      ldr ip, [r4, r7]
00848dcc  02 10 84 e0                                      add r1, r4, r2
00848dd0  03 00 a0 e1                                      mov r0, r3
00848dd4  0c 20 62 e0                                      rsb r2, r2, ip
00848dd8  0f 10 81 e2                                      add r1, r1, #0xf
00848ddc  00 30 93 e5                                      ldr r3, [r3]
00848de0  0f e0 a0 e1                                      mov lr, pc
00848de4  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00848de8  00 00 50 e3                                      cmp r0, #0
00848dec  d5 ff ff ba                                      blt #0x848d48
00848df0  36 00 00 0a                                      beq #0x848ed0
00848df4  06 30 94 e7                                      ldr r3, [r4, r6]
00848df8  07 20 94 e7                                      ldr r2, [r4, r7]
00848dfc  02 00 53 e1                                      cmp r3, r2
00848e00  00 30 83 b0                                      addlt r3, r3, r0
00848e04  06 30 84 b7                                      strlt r3, [r4, r6]
00848e08  02 00 53 e1                                      cmp r3, r2
00848e0c  49 00 00 0a                                      beq #0x848f38
00848e10  cc ff ff da                                      ble #0x848d48
00848e14  04 00 a0 e1                                      mov r0, r4
00848e18  e6 f5 ff eb                                      bl #0x8465b8
00848e1c  44 30 02 e3                                      movw r3, #0x2044
00848e20  03 20 94 e7                                      ldr r2, [r4, r3]
00848e24  74 01 9f e5                                      ldr r0, [pc, #0x174]
00848e28  48 30 02 e3                                      movw r3, #0x2048
00848e2c  03 10 94 e7                                      ldr r1, [r4, r3]
00848e30  00 00 8f e0                                      add r0, pc, r0
00848e34  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00848e38  51 8a ff ea                                      b #0x82b784
00848e3c  05 00 a0 e1                                      mov r0, r5
00848e40  01 20 01 e3                                      movw r2, #0x1001
00848e44  46 89 ff eb                                      bl #0x82b364
00848e48  ae ff ff ea                                      b #0x848d08
00848e4c  44 60 02 e3                                      movw r6, #0x2044
00848e50  06 20 94 e7                                      ldr r2, [r4, r6]
00848e54  48 70 02 e3                                      movw r7, #0x2048
00848e58  08 30 94 e7                                      ldr r3, [r4, r8]
00848e5c  07 c0 94 e7                                      ldr ip, [r4, r7]
00848e60  02 10 84 e0                                      add r1, r4, r2
00848e64  03 00 a0 e1                                      mov r0, r3
00848e68  0c 20 62 e0                                      rsb r2, r2, ip
00848e6c  0f 10 81 e2                                      add r1, r1, #0xf
00848e70  00 30 93 e5                                      ldr r3, [r3]
00848e74  0f e0 a0 e1                                      mov lr, pc
00848e78  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00848e7c  00 00 50 e3                                      cmp r0, #0
00848e80  b0 ff ff ba                                      blt #0x848d48
00848e84  11 00 00 0a                                      beq #0x848ed0
00848e88  06 30 94 e7                                      ldr r3, [r4, r6]
00848e8c  07 20 94 e7                                      ldr r2, [r4, r7]
00848e90  02 00 53 e1                                      cmp r3, r2
00848e94  00 30 83 b0                                      addlt r3, r3, r0
00848e98  06 30 84 b7                                      strlt r3, [r4, r6]
00848e9c  02 00 53 e1                                      cmp r3, r2
00848ea0  0d 00 00 0a                                      beq #0x848edc
00848ea4  a7 ff ff da                                      ble #0x848d48
00848ea8  04 00 a0 e1                                      mov r0, r4
00848eac  c1 f5 ff eb                                      bl #0x8465b8
00848eb0  ec 00 9f e5                                      ldr r0, [pc, #0xec]
00848eb4  00 00 8f e0                                      add r0, pc, r0
00848eb8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00848ebc  30 8a ff ea                                      b #0x82b784
00848ec0  05 00 a0 e1                                      mov r0, r5
00848ec4  01 20 01 e3                                      movw r2, #0x1001
00848ec8  25 89 ff eb                                      bl #0x82b364
00848ecc  a9 ff ff ea                                      b #0x848d78
00848ed0  04 00 a0 e1                                      mov r0, r4
00848ed4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00848ed8  b6 f5 ff ea                                      b #0x8465b8
00848edc  0f 20 d4 e5                                      ldrb r2, [r4, #0xf]
00848ee0  48 30 02 e3                                      movw r3, #0x2048
00848ee4  02 24 a0 e1                                      lsl r2, r2, #8
00848ee8  03 20 84 e7                                      str r2, [r4, r3]
00848eec  01 10 d5 e5                                      ldrb r1, [r5, #1]
00848ef0  02 20 81 e1                                      orr r2, r1, r2
00848ef4  01 0a 52 e3                                      cmp r2, #0x1000
00848ef8  03 20 84 e7                                      str r2, [r4, r3]
00848efc  07 00 00 ca                                      bgt #0x848f20
00848f00  4c 20 02 e3                                      movw r2, #0x204c
00848f04  01 10 a0 e3                                      mov r1, #1
00848f08  02 10 84 e7                                      str r1, [r4, r2]
00848f0c  00 30 a0 e3                                      mov r3, #0
00848f10  44 20 02 e3                                      movw r2, #0x2044
00848f14  02 30 84 e7                                      str r3, [r4, r2]
00848f18  02 30 c5 e5                                      strb r3, [r5, #2]
00848f1c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00848f20  04 00 a0 e1                                      mov r0, r4
00848f24  a3 f5 ff eb                                      bl #0x8465b8
00848f28  78 00 9f e5                                      ldr r0, [pc, #0x78]
00848f2c  00 00 8f e0                                      add r0, pc, r0
00848f30  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00848f34  12 8a ff ea                                      b #0x82b784
00848f38  24 00 a0 e3                                      mov r0, #0x24
00848f3c  52 16 eb eb                                      bl #0x30e88c
00848f40  44 70 02 e3                                      movw r7, #0x2044
00848f44  00 60 a0 e1                                      mov r6, r0
00848f48  ca 03 00 eb                                      bl #0x849e78
00848f4c  00 30 96 e5                                      ldr r3, [r6]
00848f50  07 20 94 e7                                      ldr r2, [r4, r7]
00848f54  06 00 a0 e1                                      mov r0, r6
00848f58  05 10 a0 e1                                      mov r1, r5
00848f5c  0f e0 a0 e1                                      mov lr, pc
00848f60  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00848f64  04 00 a0 e1                                      mov r0, r4
00848f68  06 10 a0 e1                                      mov r1, r6
00848f6c  74 f2 ff eb                                      bl #0x845944
00848f70  80 20 a0 e3                                      mov r2, #0x80
00848f74  05 00 a0 e1                                      mov r0, r5
00848f78  00 10 a0 e3                                      mov r1, #0
00848f7c  f8 88 ff eb                                      bl #0x82b364
00848f80  00 30 a0 e3                                      mov r3, #0
00848f84  48 20 02 e3                                      movw r2, #0x2048
00848f88  02 30 84 e7                                      str r3, [r4, r2]
00848f8c  4c 20 02 e3                                      movw r2, #0x204c
00848f90  07 30 84 e7                                      str r3, [r4, r7]
00848f94  02 30 84 e7                                      str r3, [r4, r2]
00848f98  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00848f9c  a8 67 0c 00 68 66 0c 00 54 64 0c 00 1c 65 0c 00  .byte 0xa8, 0x67, 0x0c, 0x00, 0x68, 0x66, 0x0c, 0x00, 0x54, 0x64, 0x0c, 0x00, 0x1c, 0x65, 0x0c, 0x00

; FUNCTION 0x00848fac, declared_size=308, range_size=308, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobby8sendDataEv
; demangled: ConnectionLobby::sendData()
; decoder-mode: arm
00848fac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00848fb0  24 50 02 e3                                      movw r5, #0x2024
00848fb4  05 30 90 e7                                      ldr r3, [r0, r5]
00848fb8  00 40 a0 e1                                      mov r4, r0
00848fbc  00 00 53 e3                                      cmp r3, #0
00848fc0  36 00 00 0a                                      beq #0x8490a0
00848fc4  e2 f1 ff eb                                      bl #0x845754
00848fc8  00 00 50 e3                                      cmp r0, #0
00848fcc  34 00 00 0a                                      beq #0x8490a4
00848fd0  14 60 02 e3                                      movw r6, #0x2014
00848fd4  06 30 94 e7                                      ldr r3, [r4, r6]
00848fd8  01 10 a0 e3                                      mov r1, #1
00848fdc  03 00 a0 e1                                      mov r0, r3
00848fe0  00 30 93 e5                                      ldr r3, [r3]
00848fe4  0f e0 a0 e1                                      mov lr, pc
00848fe8  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00848fec  00 00 50 e3                                      cmp r0, #0
00848ff0  31 00 00 ba                                      blt #0x8490bc
00848ff4  06 70 94 e7                                      ldr r7, [r4, r6]
00848ff8  05 30 94 e7                                      ldr r3, [r4, r5]
00848ffc  00 20 97 e5                                      ldr r2, [r7]
00849000  03 00 a0 e1                                      mov r0, r3
00849004  00 30 93 e5                                      ldr r3, [r3]
00849008  44 60 92 e5                                      ldr r6, [r2, #0x44]
0084900c  0f e0 a0 e1                                      mov lr, pc
00849010  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00849014  05 30 94 e7                                      ldr r3, [r4, r5]
00849018  00 80 a0 e1                                      mov r8, r0
0084901c  03 00 a0 e1                                      mov r0, r3
00849020  00 30 93 e5                                      ldr r3, [r3]
00849024  0f e0 a0 e1                                      mov lr, pc
00849028  60 f0 93 e5                                      ldr pc, [r3, #0x60]
0084902c  08 10 a0 e1                                      mov r1, r8
00849030  00 20 a0 e1                                      mov r2, r0
00849034  07 00 a0 e1                                      mov r0, r7
00849038  36 ff 2f e1                                      blx r6
0084903c  00 00 50 e3                                      cmp r0, #0
00849040  21 00 00 ba                                      blt #0x8490cc
00849044  3b 88 ff eb                                      bl #0x82b138
00849048  05 60 94 e7                                      ldr r6, [r4, r5]
0084904c  34 30 02 e3                                      movw r3, #0x2034
00849050  03 00 84 e7                                      str r0, [r4, r3]
00849054  00 30 96 e5                                      ldr r3, [r6]
00849058  06 00 a0 e1                                      mov r0, r6
0084905c  0f e0 a0 e1                                      mov lr, pc
00849060  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00849064  05 00 84 e7                                      str r0, [r4, r5]
00849068  00 30 96 e5                                      ldr r3, [r6]
0084906c  06 00 a0 e1                                      mov r0, r6
00849070  0f e0 a0 e1                                      mov lr, pc
00849074  04 f0 93 e5                                      ldr pc, [r3, #4]
00849078  05 30 94 e7                                      ldr r3, [r4, r5]
0084907c  00 00 53 e3                                      cmp r3, #0
00849080  04 00 00 0a                                      beq #0x849098
00849084  04 00 a0 e1                                      mov r0, r4
00849088  00 30 94 e5                                      ldr r3, [r4]
0084908c  0f e0 a0 e1                                      mov lr, pc
00849090  08 f0 93 e5                                      ldr pc, [r3, #8]
00849094  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00849098  28 20 02 e3                                      movw r2, #0x2028
0084909c  02 30 84 e7                                      str r3, [r4, r2]
008490a0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
008490a4  2c 00 9f e5                                      ldr r0, [pc, #0x2c]
008490a8  00 00 8f e0                                      add r0, pc, r0
008490ac  b4 89 ff eb                                      bl #0x82b784
008490b0  04 00 a0 e1                                      mov r0, r4
008490b4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
008490b8  3e f5 ff ea                                      b #0x8465b8
008490bc  18 00 9f e5                                      ldr r0, [pc, #0x18]
008490c0  00 00 8f e0                                      add r0, pc, r0
008490c4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
008490c8  ad 89 ff ea                                      b #0x82b784
008490cc  04 00 a0 e1                                      mov r0, r4
008490d0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
008490d4  37 f5 ff ea                                      b #0x8465b8
; mapping-symbol data/literal pool
008490d8  30 63 0c 00 40 63 0c 00                          .byte 0x30, 0x63, 0x0c, 0x00, 0x40, 0x63, 0x0c, 0x00

; FUNCTION 0x008490e0, declared_size=52, range_size=52, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobbyD1Ev
; demangled: ConnectionLobby::~ConnectionLobby()
; decoder-mode: arm
008490e0  24 30 9f e5                                      ldr r3, [pc, #0x24]
008490e4  24 20 9f e5                                      ldr r2, [pc, #0x24]
008490e8  10 40 2d e9                                      push {r4, lr}
008490ec  03 30 8f e0                                      add r3, pc, r3
008490f0  02 20 93 e7                                      ldr r2, [r3, r2]
008490f4  00 40 a0 e1                                      mov r4, r0
008490f8  08 20 82 e2                                      add r2, r2, #8
008490fc  00 20 80 e5                                      str r2, [r0]
00849100  b1 f6 ff eb                                      bl #0x846bcc
00849104  04 00 a0 e1                                      mov r0, r4
00849108  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0084910c  a4 b9 14 00 10 4b 00 00                          .byte 0xa4, 0xb9, 0x14, 0x00, 0x10, 0x4b, 0x00, 0x00

; FUNCTION 0x00849114, declared_size=28, range_size=28, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobbyD0Ev
; demangled: ConnectionLobby::~ConnectionLobby()
; decoder-mode: arm
00849114  10 40 2d e9                                      push {r4, lr}
00849118  00 40 a0 e1                                      mov r4, r0
0084911c  ef ff ff eb                                      bl #0x8490e0
00849120  04 00 a0 e1                                      mov r0, r4
00849124  61 14 eb eb                                      bl #0x30e2b0
00849128  04 00 a0 e1                                      mov r0, r4
0084912c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00849130, declared_size=52, range_size=52, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobbyD2Ev
; demangled: ConnectionLobby::~ConnectionLobby()
; decoder-mode: arm
00849130  24 30 9f e5                                      ldr r3, [pc, #0x24]
00849134  24 20 9f e5                                      ldr r2, [pc, #0x24]
00849138  10 40 2d e9                                      push {r4, lr}
0084913c  03 30 8f e0                                      add r3, pc, r3
00849140  02 20 93 e7                                      ldr r2, [r3, r2]
00849144  00 40 a0 e1                                      mov r4, r0
00849148  08 20 82 e2                                      add r2, r2, #8
0084914c  00 20 80 e5                                      str r2, [r0]
00849150  9d f6 ff eb                                      bl #0x846bcc
00849154  04 00 a0 e1                                      mov r0, r4
00849158  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0084915c  54 b9 14 00 10 4b 00 00                          .byte 0x54, 0xb9, 0x14, 0x00, 0x10, 0x4b, 0x00, 0x00

; FUNCTION 0x00849164, declared_size=52, range_size=52, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobbyC1EPci
; demangled: ConnectionLobby::ConnectionLobby(char*, int)
; decoder-mode: arm
00849164  70 40 2d e9                                      push {r4, r5, r6, lr}
00849168  20 40 9f e5                                      ldr r4, [pc, #0x20]
0084916c  00 50 a0 e1                                      mov r5, r0
00849170  0d f7 ff eb                                      bl #0x846dac
00849174  18 30 9f e5                                      ldr r3, [pc, #0x18]
00849178  04 40 8f e0                                      add r4, pc, r4
0084917c  05 00 a0 e1                                      mov r0, r5
00849180  03 30 94 e7                                      ldr r3, [r4, r3]
00849184  08 30 83 e2                                      add r3, r3, #8
00849188  00 30 85 e5                                      str r3, [r5]
0084918c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00849190  18 b9 14 00 10 4b 00 00                          .byte 0x18, 0xb9, 0x14, 0x00, 0x10, 0x4b, 0x00, 0x00

; FUNCTION 0x00849198, declared_size=52, range_size=52, mode=arm
; class-group: ConnectionLobby
; alias: _ZN15ConnectionLobbyC2EPci
; demangled: ConnectionLobby::ConnectionLobby(char*, int)
; decoder-mode: arm
00849198  70 40 2d e9                                      push {r4, r5, r6, lr}
0084919c  20 40 9f e5                                      ldr r4, [pc, #0x20]
008491a0  00 50 a0 e1                                      mov r5, r0
008491a4  00 f7 ff eb                                      bl #0x846dac
008491a8  18 30 9f e5                                      ldr r3, [pc, #0x18]
008491ac  04 40 8f e0                                      add r4, pc, r4
008491b0  05 00 a0 e1                                      mov r0, r5
008491b4  03 30 94 e7                                      ldr r3, [r4, r3]
008491b8  08 30 83 e2                                      add r3, r3, #8
008491bc  00 30 85 e5                                      str r3, [r5]
008491c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008491c4  e4 b8 14 00 10 4b 00 00                          .byte 0xe4, 0xb8, 0x14, 0x00, 0x10, 0x4b, 0x00, 0x00
