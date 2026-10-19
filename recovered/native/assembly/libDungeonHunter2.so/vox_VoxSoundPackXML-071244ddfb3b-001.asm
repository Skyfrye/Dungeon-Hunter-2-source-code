; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00889498, declared_size=148, range_size=148, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZNK3vox15VoxSoundPackXML11GetBankInfoEiRiS1_RNS_20PriorityBankBehaviorE
; demangled: vox::VoxSoundPackXML::GetBankInfo(int, int&, int&, vox::PriorityBankBehavior&) const
; decoder-mode: arm
00889498  00 00 51 e3                                      cmp r1, #0
0088949c  30 00 2d e9                                      push {r4, r5}
008894a0  0a 00 00 ba                                      blt #0x8894d0
008894a4  18 40 90 e5                                      ldr r4, [r0, #0x18]
008894a8  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
008894ac  0c c0 64 e0                                      rsb ip, r4, ip
008894b0  cc c1 a0 e1                                      asr ip, ip, #3
008894b4  8c 50 8c e0                                      add r5, ip, ip, lsl #1
008894b8  05 52 85 e0                                      add r5, r5, r5, lsl #4
008894bc  05 54 85 e0                                      add r5, r5, r5, lsl #8
008894c0  05 58 85 e0                                      add r5, r5, r5, lsl #16
008894c4  05 c1 8c e0                                      add ip, ip, r5, lsl #2
008894c8  0c 00 51 e1                                      cmp r1, ip
008894cc  03 00 00 ba                                      blt #0x8894e0
008894d0  00 10 a0 e3                                      mov r1, #0
008894d4  01 00 a0 e1                                      mov r0, r1
008894d8  30 00 bd e8                                      pop {r4, r5}
008894dc  1e ff 2f e1                                      bx lr
008894e0  28 c0 a0 e3                                      mov ip, #0x28
008894e4  9c 01 0c e0                                      mul ip, ip, r1
008894e8  0c 50 94 e7                                      ldr r5, [r4, ip]
008894ec  0c 40 84 e0                                      add r4, r4, ip
008894f0  05 00 51 e1                                      cmp r1, r5
008894f4  f5 ff ff 1a                                      bne #0x8894d0
008894f8  0c 40 94 e5                                      ldr r4, [r4, #0xc]
008894fc  01 10 a0 e3                                      mov r1, #1
00889500  00 40 82 e5                                      str r4, [r2]
00889504  18 20 90 e5                                      ldr r2, [r0, #0x18]
00889508  0c 20 82 e0                                      add r2, r2, ip
0088950c  08 20 92 e5                                      ldr r2, [r2, #8]
00889510  00 20 83 e5                                      str r2, [r3]
00889514  18 30 90 e5                                      ldr r3, [r0, #0x18]
00889518  0c c0 83 e0                                      add ip, r3, ip
0088951c  04 20 9c e5                                      ldr r2, [ip, #4]
00889520  08 30 9d e5                                      ldr r3, [sp, #8]
00889524  00 20 83 e5                                      str r2, [r3]
00889528  e9 ff ff ea                                      b #0x8894d4

; FUNCTION 0x0088952c, declared_size=168, range_size=168, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZNK3vox15VoxSoundPackXML11GetBankInfoEiRNS_11BankInfoXMLE
; demangled: vox::VoxSoundPackXML::GetBankInfo(int, vox::BankInfoXML&) const
; decoder-mode: arm
0088952c  00 00 51 e3                                      cmp r1, #0
00889530  04 40 2d e5                                      str r4, [sp, #-4]!
00889534  00 30 a0 e1                                      mov r3, r0
00889538  0a 00 00 ba                                      blt #0x889568
0088953c  18 40 90 e5                                      ldr r4, [r0, #0x18]
00889540  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
00889544  00 00 64 e0                                      rsb r0, r4, r0
00889548  c0 01 a0 e1                                      asr r0, r0, #3
0088954c  80 c0 80 e0                                      add ip, r0, r0, lsl #1
00889550  0c c2 8c e0                                      add ip, ip, ip, lsl #4
00889554  0c c4 8c e0                                      add ip, ip, ip, lsl #8
00889558  0c c8 8c e0                                      add ip, ip, ip, lsl #16
0088955c  0c 01 80 e0                                      add r0, r0, ip, lsl #2
00889560  00 00 51 e1                                      cmp r1, r0
00889564  02 00 00 ba                                      blt #0x889574
00889568  00 00 a0 e3                                      mov r0, #0
0088956c  10 00 bd e8                                      ldm sp!, {r4}
00889570  1e ff 2f e1                                      bx lr
00889574  28 c0 a0 e3                                      mov ip, #0x28
00889578  9c 01 0c e0                                      mul ip, ip, r1
0088957c  0c 00 94 e7                                      ldr r0, [r4, ip]
00889580  00 00 51 e1                                      cmp r1, r0
00889584  f7 ff ff 1a                                      bne #0x889568
00889588  00 10 82 e5                                      str r1, [r2]
0088958c  18 10 93 e5                                      ldr r1, [r3, #0x18]
00889590  01 00 a0 e3                                      mov r0, #1
00889594  0c 10 81 e0                                      add r1, r1, ip
00889598  0c 10 91 e5                                      ldr r1, [r1, #0xc]
0088959c  0c 10 82 e5                                      str r1, [r2, #0xc]
008895a0  18 10 93 e5                                      ldr r1, [r3, #0x18]
008895a4  0c 10 81 e0                                      add r1, r1, ip
008895a8  08 10 91 e5                                      ldr r1, [r1, #8]
008895ac  08 10 82 e5                                      str r1, [r2, #8]
008895b0  18 10 93 e5                                      ldr r1, [r3, #0x18]
008895b4  0c 10 81 e0                                      add r1, r1, ip
008895b8  04 10 91 e5                                      ldr r1, [r1, #4]
008895bc  04 10 82 e5                                      str r1, [r2, #4]
008895c0  18 30 93 e5                                      ldr r3, [r3, #0x18]
008895c4  0c c0 83 e0                                      add ip, r3, ip
008895c8  24 30 9c e5                                      ldr r3, [ip, #0x24]
008895cc  10 30 82 e5                                      str r3, [r2, #0x10]
008895d0  e5 ff ff ea                                      b #0x88956c

; FUNCTION 0x008895d4, declared_size=132, range_size=132, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZNK3vox15VoxSoundPackXML12GetGroupInfoEiRPKcRNS_14Vox3DSoundTypeE
; demangled: vox::VoxSoundPackXML::GetGroupInfo(int, char const*&, vox::Vox3DSoundType&) const
; decoder-mode: arm
008895d4  00 00 51 e3                                      cmp r1, #0
008895d8  30 00 2d e9                                      push {r4, r5}
008895dc  0b 00 00 ba                                      blt #0x889610
008895e0  0c 40 90 e5                                      ldr r4, [r0, #0xc]
008895e4  10 c0 90 e5                                      ldr ip, [r0, #0x10]
008895e8  0c c0 64 e0                                      rsb ip, r4, ip
008895ec  cc c1 a0 e1                                      asr ip, ip, #3
008895f0  8c 51 8c e0                                      add r5, ip, ip, lsl #3
008895f4  05 53 85 e0                                      add r5, r5, r5, lsl #6
008895f8  85 51 8c e0                                      add r5, ip, r5, lsl #3
008895fc  85 57 85 e0                                      add r5, r5, r5, lsl #15
00889600  85 c1 8c e0                                      add ip, ip, r5, lsl #3
00889604  00 c0 6c e2                                      rsb ip, ip, #0
00889608  0c 00 51 e1                                      cmp r1, ip
0088960c  03 00 00 ba                                      blt #0x889620
00889610  00 10 a0 e3                                      mov r1, #0
00889614  01 00 a0 e1                                      mov r0, r1
00889618  30 00 bd e8                                      pop {r4, r5}
0088961c  1e ff 2f e1                                      bx lr
00889620  38 c0 a0 e3                                      mov ip, #0x38
00889624  9c 01 0c e0                                      mul ip, ip, r1
00889628  0c 50 94 e7                                      ldr r5, [r4, ip]
0088962c  0c 40 84 e0                                      add r4, r4, ip
00889630  05 00 51 e1                                      cmp r1, r5
00889634  f5 ff ff 1a                                      bne #0x889610
00889638  18 40 94 e5                                      ldr r4, [r4, #0x18]
0088963c  01 10 a0 e3                                      mov r1, #1
00889640  00 40 82 e5                                      str r4, [r2]
00889644  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00889648  0c c0 82 e0                                      add ip, r2, ip
0088964c  34 20 9c e5                                      ldr r2, [ip, #0x34]
00889650  00 20 83 e5                                      str r2, [r3]
00889654  ee ff ff ea                                      b #0x889614

; FUNCTION 0x00889658, declared_size=156, range_size=156, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZNK3vox15VoxSoundPackXML12GetGroupInfoEiRNS_12GroupInfoXMLE
; demangled: vox::VoxSoundPackXML::GetGroupInfo(int, vox::GroupInfoXML&) const
; decoder-mode: arm
00889658  00 00 51 e3                                      cmp r1, #0
0088965c  04 40 2d e5                                      str r4, [sp, #-4]!
00889660  00 30 a0 e1                                      mov r3, r0
00889664  0b 00 00 ba                                      blt #0x889698
00889668  0c 40 90 e5                                      ldr r4, [r0, #0xc]
0088966c  10 00 90 e5                                      ldr r0, [r0, #0x10]
00889670  00 00 64 e0                                      rsb r0, r4, r0
00889674  c0 01 a0 e1                                      asr r0, r0, #3
00889678  80 c1 80 e0                                      add ip, r0, r0, lsl #3
0088967c  0c c3 8c e0                                      add ip, ip, ip, lsl #6
00889680  8c c1 80 e0                                      add ip, r0, ip, lsl #3
00889684  8c c7 8c e0                                      add ip, ip, ip, lsl #15
00889688  8c 01 80 e0                                      add r0, r0, ip, lsl #3
0088968c  00 00 60 e2                                      rsb r0, r0, #0
00889690  00 00 51 e1                                      cmp r1, r0
00889694  02 00 00 ba                                      blt #0x8896a4
00889698  00 00 a0 e3                                      mov r0, #0
0088969c  10 00 bd e8                                      ldm sp!, {r4}
008896a0  1e ff 2f e1                                      bx lr
008896a4  38 c0 a0 e3                                      mov ip, #0x38
008896a8  9c 01 0c e0                                      mul ip, ip, r1
008896ac  0c 00 94 e7                                      ldr r0, [r4, ip]
008896b0  00 00 51 e1                                      cmp r1, r0
008896b4  f7 ff ff 1a                                      bne #0x889698
008896b8  00 10 82 e5                                      str r1, [r2]
008896bc  0c 10 93 e5                                      ldr r1, [r3, #0xc]
008896c0  01 00 a0 e3                                      mov r0, #1
008896c4  0c 10 81 e0                                      add r1, r1, ip
008896c8  18 10 91 e5                                      ldr r1, [r1, #0x18]
008896cc  04 10 82 e5                                      str r1, [r2, #4]
008896d0  0c 10 93 e5                                      ldr r1, [r3, #0xc]
008896d4  0c 10 81 e0                                      add r1, r1, ip
008896d8  30 10 91 e5                                      ldr r1, [r1, #0x30]
008896dc  08 10 82 e5                                      str r1, [r2, #8]
008896e0  0c 30 93 e5                                      ldr r3, [r3, #0xc]
008896e4  0c c0 83 e0                                      add ip, r3, ip
008896e8  34 30 9c e5                                      ldr r3, [ip, #0x34]
008896ec  0c 30 82 e5                                      str r3, [r2, #0xc]
008896f0  e9 ff ff ea                                      b #0x88969c

; FUNCTION 0x008896f4, declared_size=184, range_size=184, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZNK3vox15VoxSoundPackXML17GetDataSourceInfoEiRPKcRNS_11FormatTypesERiS6_RNS_21VoxSourceLoadingFlagsE
; demangled: vox::VoxSoundPackXML::GetDataSourceInfo(int, char const*&, vox::FormatTypes&, int&, int&, vox::VoxSourceLoadingFlags&) const
; decoder-mode: arm
008896f4  00 00 51 e3                                      cmp r1, #0
008896f8  30 00 2d e9                                      push {r4, r5}
008896fc  09 00 00 ba                                      blt #0x889728
00889700  10 10 90 e8                                      ldm r0, {r4, ip}
00889704  0c c0 64 e0                                      rsb ip, r4, ip
00889708  4c c1 a0 e1                                      asr ip, ip, #2
0088970c  0c 52 a0 e1                                      lsl r5, ip, #4
00889710  05 50 6c e0                                      rsb r5, ip, r5
00889714  05 54 85 e0                                      add r5, r5, r5, lsl #8
00889718  05 58 85 e0                                      add r5, r5, r5, lsl #16
0088971c  05 c2 8c e0                                      add ip, ip, r5, lsl #4
00889720  0c 00 51 e1                                      cmp r1, ip
00889724  03 00 00 ba                                      blt #0x889738
00889728  00 10 a0 e3                                      mov r1, #0
0088972c  01 00 a0 e1                                      mov r0, r1
00889730  30 00 bd e8                                      pop {r4, r5}
00889734  1e ff 2f e1                                      bx lr
00889738  44 c0 a0 e3                                      mov ip, #0x44
0088973c  9c 01 0c e0                                      mul ip, ip, r1
00889740  0c 50 94 e7                                      ldr r5, [r4, ip]
00889744  0c 40 84 e0                                      add r4, r4, ip
00889748  05 00 51 e1                                      cmp r1, r5
0088974c  f5 ff ff 1a                                      bne #0x889728
00889750  0c 40 94 e5                                      ldr r4, [r4, #0xc]
00889754  01 10 a0 e3                                      mov r1, #1
00889758  00 40 82 e5                                      str r4, [r2]
0088975c  00 20 90 e5                                      ldr r2, [r0]
00889760  0c 20 82 e0                                      add r2, r2, ip
00889764  d4 21 d2 e1                                      ldrsb r2, [r2, #0x14]
00889768  00 20 83 e5                                      str r2, [r3]
0088976c  00 30 90 e5                                      ldr r3, [r0]
00889770  0c 30 83 e0                                      add r3, r3, ip
00889774  d6 21 d3 e1                                      ldrsb r2, [r3, #0x16]
00889778  08 30 9d e5                                      ldr r3, [sp, #8]
0088977c  00 20 83 e5                                      str r2, [r3]
00889780  00 30 90 e5                                      ldr r3, [r0]
00889784  0c 30 83 e0                                      add r3, r3, ip
00889788  d5 21 d3 e1                                      ldrsb r2, [r3, #0x15]
0088978c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00889790  00 20 83 e5                                      str r2, [r3]
00889794  00 30 90 e5                                      ldr r3, [r0]
00889798  0c c0 83 e0                                      add ip, r3, ip
0088979c  10 20 9c e5                                      ldr r2, [ip, #0x10]
008897a0  10 30 9d e5                                      ldr r3, [sp, #0x10]
008897a4  00 20 83 e5                                      str r2, [r3]
008897a8  df ff ff ea                                      b #0x88972c

; FUNCTION 0x008897ac, declared_size=232, range_size=232, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZNK3vox15VoxSoundPackXML17GetDataSourceInfoEiRNS_17DataSourceInfoXMLE
; demangled: vox::VoxSoundPackXML::GetDataSourceInfo(int, vox::DataSourceInfoXML&) const
; decoder-mode: arm
008897ac  00 00 51 e3                                      cmp r1, #0
008897b0  04 40 2d e5                                      str r4, [sp, #-4]!
008897b4  00 30 a0 e1                                      mov r3, r0
008897b8  0a 00 00 ba                                      blt #0x8897e8
008897bc  00 40 90 e5                                      ldr r4, [r0]
008897c0  04 00 90 e5                                      ldr r0, [r0, #4]
008897c4  00 00 64 e0                                      rsb r0, r4, r0
008897c8  40 01 a0 e1                                      asr r0, r0, #2
008897cc  00 c2 a0 e1                                      lsl ip, r0, #4
008897d0  0c c0 60 e0                                      rsb ip, r0, ip
008897d4  0c c4 8c e0                                      add ip, ip, ip, lsl #8
008897d8  0c c8 8c e0                                      add ip, ip, ip, lsl #16
008897dc  0c 02 80 e0                                      add r0, r0, ip, lsl #4
008897e0  00 00 51 e1                                      cmp r1, r0
008897e4  02 00 00 ba                                      blt #0x8897f4
008897e8  00 00 a0 e3                                      mov r0, #0
008897ec  10 00 bd e8                                      ldm sp!, {r4}
008897f0  1e ff 2f e1                                      bx lr
008897f4  44 c0 a0 e3                                      mov ip, #0x44
008897f8  9c 01 0c e0                                      mul ip, ip, r1
008897fc  0c 00 94 e7                                      ldr r0, [r4, ip]
00889800  00 00 51 e1                                      cmp r1, r0
00889804  f7 ff ff 1a                                      bne #0x8897e8
00889808  00 10 82 e5                                      str r1, [r2]
0088980c  00 10 93 e5                                      ldr r1, [r3]
00889810  01 00 a0 e3                                      mov r0, #1
00889814  0c 10 81 e0                                      add r1, r1, ip
00889818  08 10 91 e5                                      ldr r1, [r1, #8]
0088981c  04 10 82 e5                                      str r1, [r2, #4]
00889820  00 10 93 e5                                      ldr r1, [r3]
00889824  0c 10 81 e0                                      add r1, r1, ip
00889828  0c 10 91 e5                                      ldr r1, [r1, #0xc]
0088982c  08 10 82 e5                                      str r1, [r2, #8]
00889830  00 10 93 e5                                      ldr r1, [r3]
00889834  0c 10 81 e0                                      add r1, r1, ip
00889838  d4 11 d1 e1                                      ldrsb r1, [r1, #0x14]
0088983c  0c 10 82 e5                                      str r1, [r2, #0xc]
00889840  00 10 93 e5                                      ldr r1, [r3]
00889844  0c 10 81 e0                                      add r1, r1, ip
00889848  d6 11 d1 e1                                      ldrsb r1, [r1, #0x16]
0088984c  10 10 82 e5                                      str r1, [r2, #0x10]
00889850  00 10 93 e5                                      ldr r1, [r3]
00889854  0c 10 81 e0                                      add r1, r1, ip
00889858  d5 11 d1 e1                                      ldrsb r1, [r1, #0x15]
0088985c  14 10 82 e5                                      str r1, [r2, #0x14]
00889860  00 10 93 e5                                      ldr r1, [r3]
00889864  0c 10 81 e0                                      add r1, r1, ip
00889868  10 10 91 e5                                      ldr r1, [r1, #0x10]
0088986c  18 10 82 e5                                      str r1, [r2, #0x18]
00889870  00 10 93 e5                                      ldr r1, [r3]
00889874  0c 10 81 e0                                      add r1, r1, ip
00889878  3c 10 91 e5                                      ldr r1, [r1, #0x3c]
0088987c  1c 10 82 e5                                      str r1, [r2, #0x1c]
00889880  00 30 93 e5                                      ldr r3, [r3]
00889884  0c c0 83 e0                                      add ip, r3, ip
00889888  40 30 9c e5                                      ldr r3, [ip, #0x40]
0088988c  20 30 82 e5                                      str r3, [r2, #0x20]
00889890  d5 ff ff ea                                      b #0x8897ec

; FUNCTION 0x00889894, declared_size=168, range_size=168, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZNK3vox15VoxSoundPackXML14GetEmitterInfoEiRiS1_RbRNS_14Vox3DSoundTypeERPKc
; demangled: vox::VoxSoundPackXML::GetEmitterInfo(int, int&, int&, bool&, vox::Vox3DSoundType&, char const*&) const
; decoder-mode: arm
00889894  00 00 51 e3                                      cmp r1, #0
00889898  70 40 2d e9                                      push {r4, r5, r6, lr}
0088989c  03 c0 a0 e1                                      mov ip, r3
008898a0  02 60 a0 e1                                      mov r6, r2
008898a4  00 40 a0 e1                                      mov r4, r0
008898a8  09 00 00 ba                                      blt #0x8898d4
008898ac  0c 00 90 e8                                      ldm r0, {r2, r3}
008898b0  03 30 62 e0                                      rsb r3, r2, r3
008898b4  43 31 a0 e1                                      asr r3, r3, #2
008898b8  03 52 a0 e1                                      lsl r5, r3, #4
008898bc  05 50 63 e0                                      rsb r5, r3, r5
008898c0  05 54 85 e0                                      add r5, r5, r5, lsl #8
008898c4  05 58 85 e0                                      add r5, r5, r5, lsl #16
008898c8  05 32 83 e0                                      add r3, r3, r5, lsl #4
008898cc  03 00 51 e1                                      cmp r1, r3
008898d0  01 00 00 ba                                      blt #0x8898dc
008898d4  00 00 a0 e3                                      mov r0, #0
008898d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
008898dc  44 50 a0 e3                                      mov r5, #0x44
008898e0  95 01 05 e0                                      mul r5, r5, r1
008898e4  05 30 92 e7                                      ldr r3, [r2, r5]
008898e8  05 20 82 e0                                      add r2, r2, r5
008898ec  03 00 51 e1                                      cmp r1, r3
008898f0  f7 ff ff 1a                                      bne #0x8898d4
008898f4  d6 11 d2 e1                                      ldrsb r1, [r2, #0x16]
008898f8  14 30 9d e5                                      ldr r3, [sp, #0x14]
008898fc  18 20 9d e5                                      ldr r2, [sp, #0x18]
00889900  00 10 8c e5                                      str r1, [ip]
00889904  32 ff ff eb                                      bl #0x8895d4
00889908  00 00 50 e3                                      cmp r0, #0
0088990c  f0 ff ff 0a                                      beq #0x8898d4
00889910  00 30 94 e5                                      ldr r3, [r4]
00889914  01 00 a0 e3                                      mov r0, #1
00889918  05 30 83 e0                                      add r3, r3, r5
0088991c  04 30 93 e5                                      ldr r3, [r3, #4]
00889920  00 30 86 e5                                      str r3, [r6]
00889924  00 30 94 e5                                      ldr r3, [r4]
00889928  05 50 83 e0                                      add r5, r3, r5
0088992c  17 20 d5 e5                                      ldrb r2, [r5, #0x17]
00889930  10 30 9d e5                                      ldr r3, [sp, #0x10]
00889934  00 20 c3 e5                                      strb r2, [r3]
00889938  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0088993c, declared_size=396, range_size=396, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZNK3vox15VoxSoundPackXML14GetEmitterInfoEiRNS_14EmitterInfoXMLE
; demangled: vox::VoxSoundPackXML::GetEmitterInfo(int, vox::EmitterInfoXML&) const
; decoder-mode: arm
0088993c  70 40 2d e9                                      push {r4, r5, r6, lr}
00889940  00 00 51 e3                                      cmp r1, #0
00889944  08 d0 4d e2                                      sub sp, sp, #8
00889948  02 50 a0 e1                                      mov r5, r2
0088994c  00 40 a0 e1                                      mov r4, r0
00889950  09 00 00 ba                                      blt #0x88997c
00889954  0c 00 90 e8                                      ldm r0, {r2, r3}
00889958  03 30 62 e0                                      rsb r3, r2, r3
0088995c  43 31 a0 e1                                      asr r3, r3, #2
00889960  03 c2 a0 e1                                      lsl ip, r3, #4
00889964  0c c0 63 e0                                      rsb ip, r3, ip
00889968  0c c4 8c e0                                      add ip, ip, ip, lsl #8
0088996c  0c c8 8c e0                                      add ip, ip, ip, lsl #16
00889970  0c 32 83 e0                                      add r3, r3, ip, lsl #4
00889974  03 00 51 e1                                      cmp r1, r3
00889978  02 00 00 ba                                      blt #0x889988
0088997c  00 00 a0 e3                                      mov r0, #0
00889980  08 d0 8d e2                                      add sp, sp, #8
00889984  70 80 bd e8                                      pop {r4, r5, r6, pc}
00889988  44 60 a0 e3                                      mov r6, #0x44
0088998c  96 01 06 e0                                      mul r6, r6, r1
00889990  06 30 92 e7                                      ldr r3, [r2, r6]
00889994  06 20 82 e0                                      add r2, r2, r6
00889998  03 00 51 e1                                      cmp r1, r3
0088999c  f6 ff ff 1a                                      bne #0x88997c
008899a0  d6 11 d2 e1                                      ldrsb r1, [r2, #0x16]
008899a4  0d 30 a0 e1                                      mov r3, sp
008899a8  04 20 8d e2                                      add r2, sp, #4
008899ac  08 ff ff eb                                      bl #0x8895d4
008899b0  00 00 50 e3                                      cmp r0, #0
008899b4  f0 ff ff 0a                                      beq #0x88997c
008899b8  00 30 94 e5                                      ldr r3, [r4]
008899bc  06 00 9d e8                                      ldm sp, {r1, r2}
008899c0  06 30 93 e7                                      ldr r3, [r3, r6]
008899c4  01 00 a0 e3                                      mov r0, #1
008899c8  00 30 85 e5                                      str r3, [r5]
008899cc  00 30 94 e5                                      ldr r3, [r4]
008899d0  06 30 83 e0                                      add r3, r3, r6
008899d4  08 30 93 e5                                      ldr r3, [r3, #8]
008899d8  04 30 85 e5                                      str r3, [r5, #4]
008899dc  00 30 94 e5                                      ldr r3, [r4]
008899e0  06 30 83 e0                                      add r3, r3, r6
008899e4  04 30 93 e5                                      ldr r3, [r3, #4]
008899e8  08 30 85 e5                                      str r3, [r5, #8]
008899ec  00 30 94 e5                                      ldr r3, [r4]
008899f0  06 30 83 e0                                      add r3, r3, r6
008899f4  d6 31 d3 e1                                      ldrsb r3, [r3, #0x16]
008899f8  0c 30 85 e5                                      str r3, [r5, #0xc]
008899fc  00 30 94 e5                                      ldr r3, [r4]
00889a00  06 30 83 e0                                      add r3, r3, r6
00889a04  17 30 d3 e5                                      ldrb r3, [r3, #0x17]
00889a08  14 10 85 e5                                      str r1, [r5, #0x14]
00889a0c  18 20 85 e5                                      str r2, [r5, #0x18]
00889a10  10 30 c5 e5                                      strb r3, [r5, #0x10]
00889a14  00 30 94 e5                                      ldr r3, [r4]
00889a18  06 30 83 e0                                      add r3, r3, r6
00889a1c  18 30 93 e5                                      ldr r3, [r3, #0x18]
00889a20  1c 30 85 e5                                      str r3, [r5, #0x1c]
00889a24  00 30 94 e5                                      ldr r3, [r4]
00889a28  06 30 83 e0                                      add r3, r3, r6
00889a2c  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00889a30  20 30 85 e5                                      str r3, [r5, #0x20]
00889a34  00 30 94 e5                                      ldr r3, [r4]
00889a38  06 30 83 e0                                      add r3, r3, r6
00889a3c  20 30 93 e5                                      ldr r3, [r3, #0x20]
00889a40  24 30 85 e5                                      str r3, [r5, #0x24]
00889a44  00 30 94 e5                                      ldr r3, [r4]
00889a48  06 30 83 e0                                      add r3, r3, r6
00889a4c  24 30 93 e5                                      ldr r3, [r3, #0x24]
00889a50  28 30 85 e5                                      str r3, [r5, #0x28]
00889a54  00 30 94 e5                                      ldr r3, [r4]
00889a58  06 30 83 e0                                      add r3, r3, r6
00889a5c  28 30 93 e5                                      ldr r3, [r3, #0x28]
00889a60  2c 30 85 e5                                      str r3, [r5, #0x2c]
00889a64  00 30 94 e5                                      ldr r3, [r4]
00889a68  06 30 83 e0                                      add r3, r3, r6
00889a6c  2c 30 93 e5                                      ldr r3, [r3, #0x2c]
00889a70  30 30 85 e5                                      str r3, [r5, #0x30]
00889a74  00 30 94 e5                                      ldr r3, [r4]
00889a78  06 30 83 e0                                      add r3, r3, r6
00889a7c  30 30 93 e5                                      ldr r3, [r3, #0x30]
00889a80  34 30 85 e5                                      str r3, [r5, #0x34]
00889a84  00 30 94 e5                                      ldr r3, [r4]
00889a88  06 30 83 e0                                      add r3, r3, r6
00889a8c  34 30 93 e5                                      ldr r3, [r3, #0x34]
00889a90  38 30 85 e5                                      str r3, [r5, #0x38]
00889a94  00 30 94 e5                                      ldr r3, [r4]
00889a98  06 30 83 e0                                      add r3, r3, r6
00889a9c  38 30 93 e5                                      ldr r3, [r3, #0x38]
00889aa0  3c 30 85 e5                                      str r3, [r5, #0x3c]
00889aa4  00 30 94 e5                                      ldr r3, [r4]
00889aa8  06 30 83 e0                                      add r3, r3, r6
00889aac  3c 30 93 e5                                      ldr r3, [r3, #0x3c]
00889ab0  40 30 85 e5                                      str r3, [r5, #0x40]
00889ab4  00 30 94 e5                                      ldr r3, [r4]
00889ab8  06 60 83 e0                                      add r6, r3, r6
00889abc  40 30 96 e5                                      ldr r3, [r6, #0x40]
00889ac0  44 30 85 e5                                      str r3, [r5, #0x44]
00889ac4  ad ff ff ea                                      b #0x889980

; FUNCTION 0x00889ac8, declared_size=108, range_size=108, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZN3vox15VoxSoundPackXML19GetSoundCustomParamEiiRPKc
; demangled: vox::VoxSoundPackXML::GetSoundCustomParam(int, int, char const*&)
; decoder-mode: arm
00889ac8  00 00 51 e3                                      cmp r1, #0
00889acc  04 40 2d e5                                      str r4, [sp, #-4]!
00889ad0  09 00 00 ba                                      blt #0x889afc
00889ad4  10 10 90 e8                                      ldm r0, {r4, ip}
00889ad8  0c 00 64 e0                                      rsb r0, r4, ip
00889adc  40 01 a0 e1                                      asr r0, r0, #2
00889ae0  00 c2 a0 e1                                      lsl ip, r0, #4
00889ae4  0c c0 60 e0                                      rsb ip, r0, ip
00889ae8  0c c4 8c e0                                      add ip, ip, ip, lsl #8
00889aec  0c c8 8c e0                                      add ip, ip, ip, lsl #16
00889af0  0c 02 80 e0                                      add r0, r0, ip, lsl #4
00889af4  00 00 51 e1                                      cmp r1, r0
00889af8  02 00 00 ba                                      blt #0x889b08
00889afc  00 00 a0 e3                                      mov r0, #0
00889b00  10 00 bd e8                                      ldm sp!, {r4}
00889b04  1e ff 2f e1                                      bx lr
00889b08  44 00 a0 e3                                      mov r0, #0x44
00889b0c  90 41 21 e0                                      mla r1, r0, r1, r4
00889b10  3c 00 91 e5                                      ldr r0, [r1, #0x3c]
00889b14  02 00 50 e1                                      cmp r0, r2
00889b18  40 10 91 c5                                      ldrgt r1, [r1, #0x40]
00889b1c  00 00 a0 d3                                      movle r0, #0
00889b20  01 00 a0 c3                                      movgt r0, #1
00889b24  02 21 91 c7                                      ldrgt r2, [r1, r2, lsl #2]
00889b28  00 00 83 d5                                      strle r0, [r3]
00889b2c  00 20 83 c5                                      strgt r2, [r3]
00889b30  f2 ff ff ea                                      b #0x889b00

; FUNCTION 0x00889b34, declared_size=208, range_size=208, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZNK3vox15VoxSoundPackXML12GetEventInfoEiRNS_12EventInfoXMLE
; demangled: vox::VoxSoundPackXML::GetEventInfo(int, vox::EventInfoXML&) const
; decoder-mode: arm
00889b34  00 00 51 e3                                      cmp r1, #0
00889b38  04 40 2d e5                                      str r4, [sp, #-4]!
00889b3c  00 30 a0 e1                                      mov r3, r0
00889b40  08 00 00 ba                                      blt #0x889b68
00889b44  24 40 90 e5                                      ldr r4, [r0, #0x24]
00889b48  28 c0 90 e5                                      ldr ip, [r0, #0x28]
00889b4c  a3 0b 08 e3                                      movw r0, #0x8ba3
00889b50  2e 0a 4b e3                                      movt r0, #0xba2e
00889b54  0c c0 64 e0                                      rsb ip, r4, ip
00889b58  4c c1 a0 e1                                      asr ip, ip, #2
00889b5c  90 0c 00 e0                                      mul r0, r0, ip
00889b60  00 00 51 e1                                      cmp r1, r0
00889b64  02 00 00 ba                                      blt #0x889b74
00889b68  00 00 a0 e3                                      mov r0, #0
00889b6c  10 00 bd e8                                      ldm sp!, {r4}
00889b70  1e ff 2f e1                                      bx lr
00889b74  2c c0 a0 e3                                      mov ip, #0x2c
00889b78  9c 01 0c e0                                      mul ip, ip, r1
00889b7c  0c 00 94 e7                                      ldr r0, [r4, ip]
00889b80  00 00 51 e1                                      cmp r1, r0
00889b84  f7 ff ff 1a                                      bne #0x889b68
00889b88  00 10 82 e5                                      str r1, [r2]
00889b8c  24 10 93 e5                                      ldr r1, [r3, #0x24]
00889b90  01 00 a0 e3                                      mov r0, #1
00889b94  0c 10 81 e0                                      add r1, r1, ip
00889b98  04 10 91 e5                                      ldr r1, [r1, #4]
00889b9c  04 10 82 e5                                      str r1, [r2, #4]
00889ba0  24 10 93 e5                                      ldr r1, [r3, #0x24]
00889ba4  0c 10 81 e0                                      add r1, r1, ip
00889ba8  10 10 81 e2                                      add r1, r1, #0x10
00889bac  08 10 82 e5                                      str r1, [r2, #8]
00889bb0  24 10 93 e5                                      ldr r1, [r3, #0x24]
00889bb4  0c 10 81 e0                                      add r1, r1, ip
00889bb8  fc 11 d1 e1                                      ldrsh r1, [r1, #0x1c]
00889bbc  0c 10 82 e5                                      str r1, [r2, #0xc]
00889bc0  24 10 93 e5                                      ldr r1, [r3, #0x24]
00889bc4  0c 10 81 e0                                      add r1, r1, ip
00889bc8  be 11 d1 e1                                      ldrh r1, [r1, #0x1e]
00889bcc  b0 11 c2 e1                                      strh r1, [r2, #0x10]
00889bd0  24 10 93 e5                                      ldr r1, [r3, #0x24]
00889bd4  0c 10 81 e0                                      add r1, r1, ip
00889bd8  b0 12 d1 e1                                      ldrh r1, [r1, #0x20]
00889bdc  b2 11 c2 e1                                      strh r1, [r2, #0x12]
00889be0  24 10 93 e5                                      ldr r1, [r3, #0x24]
00889be4  0c 10 81 e0                                      add r1, r1, ip
00889be8  24 10 91 e5                                      ldr r1, [r1, #0x24]
00889bec  14 10 82 e5                                      str r1, [r2, #0x14]
00889bf0  24 30 93 e5                                      ldr r3, [r3, #0x24]
00889bf4  0c c0 83 e0                                      add ip, r3, ip
00889bf8  28 30 9c e5                                      ldr r3, [ip, #0x28]
00889bfc  18 30 82 e5                                      str r3, [r2, #0x18]
00889c00  d9 ff ff ea                                      b #0x889b6c

; FUNCTION 0x00889c04, declared_size=80, range_size=80, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZN3vox15VoxSoundPackXML12GetEventSizeEi
; demangled: vox::VoxSoundPackXML::GetEventSize(int)
; decoder-mode: arm
00889c04  00 00 51 e3                                      cmp r1, #0
00889c08  0f 00 00 ba                                      blt #0x889c4c
00889c0c  28 c0 90 e5                                      ldr ip, [r0, #0x28]
00889c10  24 20 90 e5                                      ldr r2, [r0, #0x24]
00889c14  a3 3b 08 e3                                      movw r3, #0x8ba3
00889c18  2e 3a 4b e3                                      movt r3, #0xba2e
00889c1c  0c 00 62 e0                                      rsb r0, r2, ip
00889c20  40 01 a0 e1                                      asr r0, r0, #2
00889c24  93 00 03 e0                                      mul r3, r3, r0
00889c28  03 00 51 e1                                      cmp r1, r3
00889c2c  06 00 00 aa                                      bge #0x889c4c
00889c30  2c 30 a0 e3                                      mov r3, #0x2c
00889c34  93 21 21 e0                                      mla r1, r3, r1, r2
00889c38  10 30 91 e5                                      ldr r3, [r1, #0x10]
00889c3c  14 00 91 e5                                      ldr r0, [r1, #0x14]
00889c40  00 00 63 e0                                      rsb r0, r3, r0
00889c44  40 01 a0 e1                                      asr r0, r0, #2
00889c48  1e ff 2f e1                                      bx lr
00889c4c  00 00 e0 e3                                      mvn r0, #0
00889c50  1e ff 2f e1                                      bx lr

; FUNCTION 0x00889c54, declared_size=104, range_size=104, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZN3vox15VoxSoundPackXML19GetEventCustomParamEiiRPKc
; demangled: vox::VoxSoundPackXML::GetEventCustomParam(int, int, char const*&)
; decoder-mode: arm
00889c54  00 00 51 e3                                      cmp r1, #0
00889c58  04 40 2d e5                                      str r4, [sp, #-4]!
00889c5c  08 00 00 ba                                      blt #0x889c84
00889c60  28 40 90 e5                                      ldr r4, [r0, #0x28]
00889c64  24 c0 90 e5                                      ldr ip, [r0, #0x24]
00889c68  a3 0b 08 e3                                      movw r0, #0x8ba3
00889c6c  2e 0a 4b e3                                      movt r0, #0xba2e
00889c70  04 40 6c e0                                      rsb r4, ip, r4
00889c74  44 41 a0 e1                                      asr r4, r4, #2
00889c78  90 04 00 e0                                      mul r0, r0, r4
00889c7c  00 00 51 e1                                      cmp r1, r0
00889c80  02 00 00 ba                                      blt #0x889c90
00889c84  00 00 a0 e3                                      mov r0, #0
00889c88  10 00 bd e8                                      ldm sp!, {r4}
00889c8c  1e ff 2f e1                                      bx lr
00889c90  2c 00 a0 e3                                      mov r0, #0x2c
00889c94  90 c1 21 e0                                      mla r1, r0, r1, ip
00889c98  24 00 91 e5                                      ldr r0, [r1, #0x24]
00889c9c  02 00 50 e1                                      cmp r0, r2
00889ca0  28 10 91 c5                                      ldrgt r1, [r1, #0x28]
00889ca4  00 00 a0 d3                                      movle r0, #0
00889ca8  01 00 a0 c3                                      movgt r0, #1
00889cac  02 21 91 c7                                      ldrgt r2, [r1, r2, lsl #2]
00889cb0  00 00 83 d5                                      strle r0, [r3]
00889cb4  00 20 83 c5                                      strgt r2, [r3]
00889cb8  f2 ff ff ea                                      b #0x889c88

; FUNCTION 0x0088a3f4, declared_size=112, range_size=112, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZNK3vox15VoxSoundPackXML11GetEventUidEPKc
; demangled: vox::VoxSoundPackXML::GetEventUid(char const*) const
; decoder-mode: arm
0088a3f4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0088a3f8  28 80 90 e5                                      ldr r8, [r0, #0x28]
0088a3fc  24 70 90 e5                                      ldr r7, [r0, #0x24]
0088a400  a3 3b 08 e3                                      movw r3, #0x8ba3
0088a404  2e 3a 4b e3                                      movt r3, #0xba2e
0088a408  08 80 67 e0                                      rsb r8, r7, r8
0088a40c  48 81 a0 e1                                      asr r8, r8, #2
0088a410  93 08 08 e0                                      mul r8, r3, r8
0088a414  01 a0 a0 e1                                      mov sl, r1
0088a418  00 00 58 e3                                      cmp r8, #0
0088a41c  0e 00 00 0a                                      beq #0x88a45c
0088a420  00 40 a0 e3                                      mov r4, #0
0088a424  04 50 a0 e1                                      mov r5, r4
0088a428  02 00 00 ea                                      b #0x88a438
0088a42c  08 00 55 e1                                      cmp r5, r8
0088a430  2c 40 84 e2                                      add r4, r4, #0x2c
0088a434  08 00 00 0a                                      beq #0x88a45c
0088a438  04 60 87 e0                                      add r6, r7, r4
0088a43c  04 00 96 e5                                      ldr r0, [r6, #4]
0088a440  0a 10 a0 e1                                      mov r1, sl
0088a444  a7 10 ea eb                                      bl #0x30e6e8
0088a448  00 00 50 e3                                      cmp r0, #0
0088a44c  01 50 85 e2                                      add r5, r5, #1
0088a450  f5 ff ff 1a                                      bne #0x88a42c
0088a454  00 00 96 e5                                      ldr r0, [r6]
0088a458  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0088a45c  00 00 e0 e3                                      mvn r0, #0
0088a460  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0088a464, declared_size=44, range_size=44, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZN3vox15VoxSoundPackXML19GetEventCustomParamEPKciRS2_
; demangled: vox::VoxSoundPackXML::GetEventCustomParam(char const*, int, char const*&)
; decoder-mode: arm
0088a464  70 40 2d e9                                      push {r4, r5, r6, lr}
0088a468  02 50 a0 e1                                      mov r5, r2
0088a46c  03 40 a0 e1                                      mov r4, r3
0088a470  00 60 a0 e1                                      mov r6, r0
0088a474  de ff ff eb                                      bl #0x88a3f4
0088a478  05 20 a0 e1                                      mov r2, r5
0088a47c  00 10 a0 e1                                      mov r1, r0
0088a480  04 30 a0 e1                                      mov r3, r4
0088a484  06 00 a0 e1                                      mov r0, r6
0088a488  70 40 bd e8                                      pop {r4, r5, r6, lr}
0088a48c  f0 fd ff ea                                      b #0x889c54

; FUNCTION 0x0088a490, declared_size=28, range_size=28, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZN3vox15VoxSoundPackXML12GetEventSizeEPKc
; demangled: vox::VoxSoundPackXML::GetEventSize(char const*)
; decoder-mode: arm
0088a490  10 40 2d e9                                      push {r4, lr}
0088a494  00 40 a0 e1                                      mov r4, r0
0088a498  d5 ff ff eb                                      bl #0x88a3f4
0088a49c  00 10 a0 e1                                      mov r1, r0
0088a4a0  04 00 a0 e1                                      mov r0, r4
0088a4a4  10 40 bd e8                                      pop {r4, lr}
0088a4a8  d5 fd ff ea                                      b #0x889c04

; FUNCTION 0x0088a4ac, declared_size=36, range_size=36, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZNK3vox15VoxSoundPackXML12GetEventInfoEPKcRNS_12EventInfoXMLE
; demangled: vox::VoxSoundPackXML::GetEventInfo(char const*, vox::EventInfoXML&) const
; decoder-mode: arm
0088a4ac  70 40 2d e9                                      push {r4, r5, r6, lr}
0088a4b0  02 40 a0 e1                                      mov r4, r2
0088a4b4  00 50 a0 e1                                      mov r5, r0
0088a4b8  cd ff ff eb                                      bl #0x88a3f4
0088a4bc  04 20 a0 e1                                      mov r2, r4
0088a4c0  00 10 a0 e1                                      mov r1, r0
0088a4c4  05 00 a0 e1                                      mov r0, r5
0088a4c8  70 40 bd e8                                      pop {r4, r5, r6, lr}
0088a4cc  98 fd ff ea                                      b #0x889b34

; FUNCTION 0x0088a55c, declared_size=52, range_size=52, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZNK3vox15VoxSoundPackXML11GetSoundUidEPKc
; demangled: vox::VoxSoundPackXML::GetSoundUid(char const*) const
; decoder-mode: arm
0088a55c  10 40 2d e9                                      push {r4, lr}
0088a560  08 d0 4d e2                                      sub sp, sp, #8
0088a564  08 30 8d e2                                      add r3, sp, #8
0088a568  04 10 23 e5                                      str r1, [r3, #-4]!
0088a56c  30 40 80 e2                                      add r4, r0, #0x30
0088a570  03 10 a0 e1                                      mov r1, r3
0088a574  04 00 a0 e1                                      mov r0, r4
0088a578  da ff ff eb                                      bl #0x88a4e8
0088a57c  04 00 50 e1                                      cmp r0, r4
0088a580  00 00 e0 03                                      mvneq r0, #0
0088a584  14 00 90 15                                      ldrne r0, [r0, #0x14]
0088a588  08 d0 8d e2                                      add sp, sp, #8
0088a58c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0088a590, declared_size=44, range_size=44, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZN3vox15VoxSoundPackXML19GetSoundCustomParamEPKciRS2_
; demangled: vox::VoxSoundPackXML::GetSoundCustomParam(char const*, int, char const*&)
; decoder-mode: arm
0088a590  70 40 2d e9                                      push {r4, r5, r6, lr}
0088a594  02 50 a0 e1                                      mov r5, r2
0088a598  03 40 a0 e1                                      mov r4, r3
0088a59c  00 60 a0 e1                                      mov r6, r0
0088a5a0  ed ff ff eb                                      bl #0x88a55c
0088a5a4  05 20 a0 e1                                      mov r2, r5
0088a5a8  00 10 a0 e1                                      mov r1, r0
0088a5ac  04 30 a0 e1                                      mov r3, r4
0088a5b0  06 00 a0 e1                                      mov r0, r6
0088a5b4  70 40 bd e8                                      pop {r4, r5, r6, lr}
0088a5b8  42 fd ff ea                                      b #0x889ac8

; FUNCTION 0x0088a5bc, declared_size=36, range_size=36, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZNK3vox15VoxSoundPackXML14GetEmitterInfoEPKcRNS_14EmitterInfoXMLE
; demangled: vox::VoxSoundPackXML::GetEmitterInfo(char const*, vox::EmitterInfoXML&) const
; decoder-mode: arm
0088a5bc  70 40 2d e9                                      push {r4, r5, r6, lr}
0088a5c0  02 40 a0 e1                                      mov r4, r2
0088a5c4  00 50 a0 e1                                      mov r5, r0
0088a5c8  e3 ff ff eb                                      bl #0x88a55c
0088a5cc  04 20 a0 e1                                      mov r2, r4
0088a5d0  00 10 a0 e1                                      mov r1, r0
0088a5d4  05 00 a0 e1                                      mov r0, r5
0088a5d8  70 40 bd e8                                      pop {r4, r5, r6, lr}
0088a5dc  d6 fc ff ea                                      b #0x88993c

; FUNCTION 0x0088a5e0, declared_size=76, range_size=76, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZNK3vox15VoxSoundPackXML14GetEmitterInfoEPKcRiS3_S3_RbRNS_14Vox3DSoundTypeERS2_
; demangled: vox::VoxSoundPackXML::GetEmitterInfo(char const*, int&, int&, int&, bool&, vox::Vox3DSoundType&, char const*&) const
; decoder-mode: arm
0088a5e0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0088a5e4  20 70 9d e5                                      ldr r7, [sp, #0x20]
0088a5e8  02 80 a0 e1                                      mov r8, r2
0088a5ec  03 a0 a0 e1                                      mov sl, r3
0088a5f0  24 60 9d e5                                      ldr r6, [sp, #0x24]
0088a5f4  28 50 9d e5                                      ldr r5, [sp, #0x28]
0088a5f8  2c 40 9d e5                                      ldr r4, [sp, #0x2c]
0088a5fc  00 90 a0 e1                                      mov sb, r0
0088a600  d5 ff ff eb                                      bl #0x88a55c
0088a604  0a 20 a0 e1                                      mov r2, sl
0088a608  00 00 88 e5                                      str r0, [r8]
0088a60c  00 10 a0 e1                                      mov r1, r0
0088a610  07 30 a0 e1                                      mov r3, r7
0088a614  09 00 a0 e1                                      mov r0, sb
0088a618  20 60 8d e5                                      str r6, [sp, #0x20]
0088a61c  24 50 8d e5                                      str r5, [sp, #0x24]
0088a620  28 40 8d e5                                      str r4, [sp, #0x28]
0088a624  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0088a628  99 fc ff ea                                      b #0x889894

; FUNCTION 0x0088a62c, declared_size=36, range_size=36, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZNK3vox15VoxSoundPackXML17GetDataSourceInfoEPKcRNS_17DataSourceInfoXMLE
; demangled: vox::VoxSoundPackXML::GetDataSourceInfo(char const*, vox::DataSourceInfoXML&) const
; decoder-mode: arm
0088a62c  70 40 2d e9                                      push {r4, r5, r6, lr}
0088a630  02 40 a0 e1                                      mov r4, r2
0088a634  00 50 a0 e1                                      mov r5, r0
0088a638  c7 ff ff eb                                      bl #0x88a55c
0088a63c  04 20 a0 e1                                      mov r2, r4
0088a640  00 10 a0 e1                                      mov r1, r0
0088a644  05 00 a0 e1                                      mov r0, r5
0088a648  70 40 bd e8                                      pop {r4, r5, r6, lr}
0088a64c  56 fc ff ea                                      b #0x8897ac

; FUNCTION 0x0088a650, declared_size=76, range_size=76, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZNK3vox15VoxSoundPackXML17GetDataSourceInfoEPKcRiRS2_RNS_11FormatTypesES3_S3_RNS_21VoxSourceLoadingFlagsE
; demangled: vox::VoxSoundPackXML::GetDataSourceInfo(char const*, int&, char const*&, vox::FormatTypes&, int&, int&, vox::VoxSourceLoadingFlags&) const
; decoder-mode: arm
0088a650  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0088a654  20 70 9d e5                                      ldr r7, [sp, #0x20]
0088a658  02 80 a0 e1                                      mov r8, r2
0088a65c  03 a0 a0 e1                                      mov sl, r3
0088a660  24 60 9d e5                                      ldr r6, [sp, #0x24]
0088a664  28 50 9d e5                                      ldr r5, [sp, #0x28]
0088a668  2c 40 9d e5                                      ldr r4, [sp, #0x2c]
0088a66c  00 90 a0 e1                                      mov sb, r0
0088a670  b9 ff ff eb                                      bl #0x88a55c
0088a674  0a 20 a0 e1                                      mov r2, sl
0088a678  00 00 88 e5                                      str r0, [r8]
0088a67c  00 10 a0 e1                                      mov r1, r0
0088a680  07 30 a0 e1                                      mov r3, r7
0088a684  09 00 a0 e1                                      mov r0, sb
0088a688  20 60 8d e5                                      str r6, [sp, #0x20]
0088a68c  24 50 8d e5                                      str r5, [sp, #0x24]
0088a690  28 40 8d e5                                      str r4, [sp, #0x28]
0088a694  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0088a698  15 fc ff ea                                      b #0x8896f4

; FUNCTION 0x0088b8b8, declared_size=168, range_size=168, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZNK3vox15VoxSoundPackXML11GetGroupUidEPKc
; demangled: vox::VoxSoundPackXML::GetGroupUid(char const*) const
; decoder-mode: arm
0088b8b8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0088b8bc  00 60 a0 e1                                      mov r6, r0
0088b8c0  10 30 96 e5                                      ldr r3, [r6, #0x10]
0088b8c4  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0088b8c8  01 70 a0 e1                                      mov r7, r1
0088b8cc  03 30 60 e0                                      rsb r3, r0, r3
0088b8d0  c3 31 a0 e1                                      asr r3, r3, #3
0088b8d4  83 21 83 e0                                      add r2, r3, r3, lsl #3
0088b8d8  02 23 82 e0                                      add r2, r2, r2, lsl #6
0088b8dc  82 21 83 e0                                      add r2, r3, r2, lsl #3
0088b8e0  82 27 82 e0                                      add r2, r2, r2, lsl #15
0088b8e4  82 31 83 e0                                      add r3, r3, r2, lsl #3
0088b8e8  00 00 53 e3                                      cmp r3, #0
0088b8ec  19 00 00 0a                                      beq #0x88b958
0088b8f0  00 40 a0 e3                                      mov r4, #0
0088b8f4  04 50 a0 e1                                      mov r5, r4
0088b8f8  0c 00 00 ea                                      b #0x88b930
0088b8fc  0c 00 96 e5                                      ldr r0, [r6, #0xc]
0088b900  10 30 96 e5                                      ldr r3, [r6, #0x10]
0088b904  38 40 84 e2                                      add r4, r4, #0x38
0088b908  03 30 60 e0                                      rsb r3, r0, r3
0088b90c  c3 31 a0 e1                                      asr r3, r3, #3
0088b910  83 21 83 e0                                      add r2, r3, r3, lsl #3
0088b914  02 23 82 e0                                      add r2, r2, r2, lsl #6
0088b918  82 21 83 e0                                      add r2, r3, r2, lsl #3
0088b91c  82 27 82 e0                                      add r2, r2, r2, lsl #15
0088b920  82 31 83 e0                                      add r3, r3, r2, lsl #3
0088b924  00 30 63 e2                                      rsb r3, r3, #0
0088b928  03 00 55 e1                                      cmp r5, r3
0088b92c  09 00 00 2a                                      bhs #0x88b958
0088b930  04 00 80 e0                                      add r0, r0, r4
0088b934  1c 00 80 e2                                      add r0, r0, #0x1c
0088b938  07 10 a0 e1                                      mov r1, r7
0088b93c  8a 8e ff eb                                      bl #0x86f36c
0088b940  00 00 50 e3                                      cmp r0, #0
0088b944  01 50 85 e2                                      add r5, r5, #1
0088b948  eb ff ff 0a                                      beq #0x88b8fc
0088b94c  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0088b950  04 00 93 e7                                      ldr r0, [r3, r4]
0088b954  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0088b958  00 00 e0 e3                                      mvn r0, #0
0088b95c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0088b960, declared_size=36, range_size=36, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZNK3vox15VoxSoundPackXML12GetGroupInfoEPKcRNS_12GroupInfoXMLE
; demangled: vox::VoxSoundPackXML::GetGroupInfo(char const*, vox::GroupInfoXML&) const
; decoder-mode: arm
0088b960  70 40 2d e9                                      push {r4, r5, r6, lr}
0088b964  02 40 a0 e1                                      mov r4, r2
0088b968  00 50 a0 e1                                      mov r5, r0
0088b96c  d1 ff ff eb                                      bl #0x88b8b8
0088b970  04 20 a0 e1                                      mov r2, r4
0088b974  00 10 a0 e1                                      mov r1, r0
0088b978  05 00 a0 e1                                      mov r0, r5
0088b97c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0088b980  34 f7 ff ea                                      b #0x889658

; FUNCTION 0x0088b984, declared_size=52, range_size=52, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZNK3vox15VoxSoundPackXML12GetGroupInfoEPKcRiRS2_RNS_14Vox3DSoundTypeE
; demangled: vox::VoxSoundPackXML::GetGroupInfo(char const*, int&, char const*&, vox::Vox3DSoundType&) const
; decoder-mode: arm
0088b984  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0088b988  18 40 9d e5                                      ldr r4, [sp, #0x18]
0088b98c  02 50 a0 e1                                      mov r5, r2
0088b990  03 60 a0 e1                                      mov r6, r3
0088b994  00 70 a0 e1                                      mov r7, r0
0088b998  c6 ff ff eb                                      bl #0x88b8b8
0088b99c  06 20 a0 e1                                      mov r2, r6
0088b9a0  00 10 a0 e1                                      mov r1, r0
0088b9a4  00 00 85 e5                                      str r0, [r5]
0088b9a8  04 30 a0 e1                                      mov r3, r4
0088b9ac  07 00 a0 e1                                      mov r0, r7
0088b9b0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0088b9b4  06 f7 ff ea                                      b #0x8895d4

; FUNCTION 0x0088b9b8, declared_size=164, range_size=164, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZNK3vox15VoxSoundPackXML10GetBankUidEPKc
; demangled: vox::VoxSoundPackXML::GetBankUid(char const*) const
; decoder-mode: arm
0088b9b8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0088b9bc  00 60 a0 e1                                      mov r6, r0
0088b9c0  1c 30 96 e5                                      ldr r3, [r6, #0x1c]
0088b9c4  18 00 90 e5                                      ldr r0, [r0, #0x18]
0088b9c8  01 70 a0 e1                                      mov r7, r1
0088b9cc  03 30 60 e0                                      rsb r3, r0, r3
0088b9d0  c3 31 a0 e1                                      asr r3, r3, #3
0088b9d4  83 20 83 e0                                      add r2, r3, r3, lsl #1
0088b9d8  02 22 82 e0                                      add r2, r2, r2, lsl #4
0088b9dc  02 24 82 e0                                      add r2, r2, r2, lsl #8
0088b9e0  02 28 82 e0                                      add r2, r2, r2, lsl #16
0088b9e4  02 31 83 e0                                      add r3, r3, r2, lsl #2
0088b9e8  00 00 53 e3                                      cmp r3, #0
0088b9ec  18 00 00 0a                                      beq #0x88ba54
0088b9f0  00 40 a0 e3                                      mov r4, #0
0088b9f4  04 50 a0 e1                                      mov r5, r4
0088b9f8  0b 00 00 ea                                      b #0x88ba2c
0088b9fc  18 00 96 e5                                      ldr r0, [r6, #0x18]
0088ba00  1c 30 96 e5                                      ldr r3, [r6, #0x1c]
0088ba04  28 40 84 e2                                      add r4, r4, #0x28
0088ba08  03 30 60 e0                                      rsb r3, r0, r3
0088ba0c  c3 31 a0 e1                                      asr r3, r3, #3
0088ba10  83 20 83 e0                                      add r2, r3, r3, lsl #1
0088ba14  02 22 82 e0                                      add r2, r2, r2, lsl #4
0088ba18  02 24 82 e0                                      add r2, r2, r2, lsl #8
0088ba1c  02 28 82 e0                                      add r2, r2, r2, lsl #16
0088ba20  02 31 83 e0                                      add r3, r3, r2, lsl #2
0088ba24  03 00 55 e1                                      cmp r5, r3
0088ba28  09 00 00 2a                                      bhs #0x88ba54
0088ba2c  04 00 80 e0                                      add r0, r0, r4
0088ba30  10 00 80 e2                                      add r0, r0, #0x10
0088ba34  07 10 a0 e1                                      mov r1, r7
0088ba38  4b 8e ff eb                                      bl #0x86f36c
0088ba3c  00 00 50 e3                                      cmp r0, #0
0088ba40  01 50 85 e2                                      add r5, r5, #1
0088ba44  ec ff ff 0a                                      beq #0x88b9fc
0088ba48  18 30 96 e5                                      ldr r3, [r6, #0x18]
0088ba4c  04 00 93 e7                                      ldr r0, [r3, r4]
0088ba50  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0088ba54  00 00 e0 e3                                      mvn r0, #0
0088ba58  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0088ba5c, declared_size=36, range_size=36, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZNK3vox15VoxSoundPackXML11GetBankInfoEPKcRNS_11BankInfoXMLE
; demangled: vox::VoxSoundPackXML::GetBankInfo(char const*, vox::BankInfoXML&) const
; decoder-mode: arm
0088ba5c  70 40 2d e9                                      push {r4, r5, r6, lr}
0088ba60  02 40 a0 e1                                      mov r4, r2
0088ba64  00 50 a0 e1                                      mov r5, r0
0088ba68  d2 ff ff eb                                      bl #0x88b9b8
0088ba6c  04 20 a0 e1                                      mov r2, r4
0088ba70  00 10 a0 e1                                      mov r1, r0
0088ba74  05 00 a0 e1                                      mov r0, r5
0088ba78  70 40 bd e8                                      pop {r4, r5, r6, lr}
0088ba7c  aa f6 ff ea                                      b #0x88952c

; FUNCTION 0x0088ba80, declared_size=60, range_size=60, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZNK3vox15VoxSoundPackXML11GetBankInfoEPKcRiS3_S3_RNS_20PriorityBankBehaviorE
; demangled: vox::VoxSoundPackXML::GetBankInfo(char const*, int&, int&, int&, vox::PriorityBankBehavior&) const
; decoder-mode: arm
0088ba80  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0088ba84  18 50 9d e5                                      ldr r5, [sp, #0x18]
0088ba88  02 60 a0 e1                                      mov r6, r2
0088ba8c  03 70 a0 e1                                      mov r7, r3
0088ba90  1c 40 9d e5                                      ldr r4, [sp, #0x1c]
0088ba94  00 80 a0 e1                                      mov r8, r0
0088ba98  c6 ff ff eb                                      bl #0x88b9b8
0088ba9c  07 20 a0 e1                                      mov r2, r7
0088baa0  00 00 86 e5                                      str r0, [r6]
0088baa4  00 10 a0 e1                                      mov r1, r0
0088baa8  05 30 a0 e1                                      mov r3, r5
0088baac  08 00 a0 e1                                      mov r0, r8
0088bab0  18 40 8d e5                                      str r4, [sp, #0x18]
0088bab4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0088bab8  76 f6 ff ea                                      b #0x889498

; FUNCTION 0x0088bb6c, declared_size=576, range_size=576, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZN3vox15VoxSoundPackXML16GetEventSoundUidEiRi
; demangled: vox::VoxSoundPackXML::GetEventSoundUid(int, int&)
; decoder-mode: arm
0088bb6c  00 00 51 e3                                      cmp r1, #0
0088bb70  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0088bb74  00 40 a0 e1                                      mov r4, r0
0088bb78  02 60 a0 e1                                      mov r6, r2
0088bb7c  6b 00 00 ba                                      blt #0x88bd30
0088bb80  24 20 90 e5                                      ldr r2, [r0, #0x24]
0088bb84  28 00 90 e5                                      ldr r0, [r0, #0x28]
0088bb88  a3 3b 08 e3                                      movw r3, #0x8ba3
0088bb8c  2e 3a 4b e3                                      movt r3, #0xba2e
0088bb90  00 00 62 e0                                      rsb r0, r2, r0
0088bb94  40 01 a0 e1                                      asr r0, r0, #2
0088bb98  93 00 03 e0                                      mul r3, r3, r0
0088bb9c  03 00 51 e1                                      cmp r1, r3
0088bba0  62 00 00 aa                                      bge #0x88bd30
0088bba4  2c 50 a0 e3                                      mov r5, #0x2c
0088bba8  95 01 05 e0                                      mul r5, r5, r1
0088bbac  05 20 82 e0                                      add r2, r2, r5
0088bbb0  10 30 92 e5                                      ldr r3, [r2, #0x10]
0088bbb4  14 80 92 e5                                      ldr r8, [r2, #0x14]
0088bbb8  08 80 63 e0                                      rsb r8, r3, r8
0088bbbc  48 81 a0 e1                                      asr r8, r8, #2
0088bbc0  00 00 58 e3                                      cmp r8, #0
0088bbc4  59 00 00 da                                      ble #0x88bd30
0088bbc8  76 0c ea eb                                      bl #0x30eda8
0088bbcc  1f 35 08 e3                                      movw r3, #0x851f
0088bbd0  eb 31 45 e3                                      movt r3, #0x51eb
0088bbd4  93 20 c3 e0                                      smull r2, r3, r3, r0
0088bbd8  24 20 94 e5                                      ldr r2, [r4, #0x24]
0088bbdc  c0 1f a0 e1                                      asr r1, r0, #0x1f
0088bbe0  c3 32 61 e0                                      rsb r3, r1, r3, asr #5
0088bbe4  05 20 82 e0                                      add r2, r2, r5
0088bbe8  64 10 a0 e3                                      mov r1, #0x64
0088bbec  91 03 60 e0                                      mls r0, r1, r3, r0
0088bbf0  f0 12 d2 e1                                      ldrsh r1, [r2, #0x20]
0088bbf4  01 00 50 e1                                      cmp r0, r1
0088bbf8  52 00 00 aa                                      bge #0x88bd48
0088bbfc  fc 71 d2 e1                                      ldrsh r7, [r2, #0x1c]
0088bc00  00 00 57 e3                                      cmp r7, #0
0088bc04  4b 00 00 1a                                      bne #0x88bd38
0088bc08  10 30 92 e5                                      ldr r3, [r2, #0x10]
0088bc0c  14 90 92 e5                                      ldr sb, [r2, #0x14]
0088bc10  09 90 63 e0                                      rsb sb, r3, sb
0088bc14  49 91 a0 e1                                      asr sb, sb, #2
0088bc18  62 0c ea eb                                      bl #0x30eda8
0088bc1c  09 10 a0 e1                                      mov r1, sb
0088bc20  37 0b ea eb                                      bl #0x30e904
0088bc24  24 30 94 e5                                      ldr r3, [r4, #0x24]
0088bc28  01 a0 a0 e1                                      mov sl, r1
0088bc2c  0c 00 a0 e3                                      mov r0, #0xc
0088bc30  05 30 83 e0                                      add r3, r3, r5
0088bc34  10 30 93 e5                                      ldr r3, [r3, #0x10]
0088bc38  07 10 a0 e1                                      mov r1, r7
0088bc3c  01 90 49 e2                                      sub sb, sb, #1
0088bc40  0a 31 93 e7                                      ldr r3, [r3, sl, lsl #2]
0088bc44  00 30 86 e5                                      str r3, [r6]
0088bc48  24 80 94 e5                                      ldr r8, [r4, #0x24]
0088bc4c  7d 12 ea eb                                      bl #0x310648
0088bc50  00 30 96 e5                                      ldr r3, [r6]
0088bc54  05 80 88 e0                                      add r8, r8, r5
0088bc58  08 20 88 e2                                      add r2, r8, #8
0088bc5c  08 30 80 e5                                      str r3, [r0, #8]
0088bc60  0c 30 98 e5                                      ldr r3, [r8, #0xc]
0088bc64  0c 00 80 e8                                      stm r0, {r2, r3}
0088bc68  00 00 83 e5                                      str r0, [r3]
0088bc6c  0c 00 88 e5                                      str r0, [r8, #0xc]
0088bc70  24 30 94 e5                                      ldr r3, [r4, #0x24]
0088bc74  05 30 83 e0                                      add r3, r3, r5
0088bc78  10 30 93 e5                                      ldr r3, [r3, #0x10]
0088bc7c  09 21 93 e7                                      ldr r2, [r3, sb, lsl #2]
0088bc80  0a 21 83 e7                                      str r2, [r3, sl, lsl #2]
0088bc84  24 30 94 e5                                      ldr r3, [r4, #0x24]
0088bc88  05 30 83 e0                                      add r3, r3, r5
0088bc8c  14 20 93 e5                                      ldr r2, [r3, #0x14]
0088bc90  04 20 42 e2                                      sub r2, r2, #4
0088bc94  14 20 83 e5                                      str r2, [r3, #0x14]
0088bc98  24 00 94 e5                                      ldr r0, [r4, #0x24]
0088bc9c  05 00 80 e0                                      add r0, r0, r5
0088bca0  00 10 a0 e1                                      mov r1, r0
0088bca4  08 20 b1 e5                                      ldr r2, [r1, #8]!
0088bca8  01 00 52 e1                                      cmp r2, r1
0088bcac  04 00 00 0a                                      beq #0x88bcc4
0088bcb0  02 30 a0 e1                                      mov r3, r2
0088bcb4  00 30 93 e5                                      ldr r3, [r3]
0088bcb8  01 70 87 e2                                      add r7, r7, #1
0088bcbc  03 00 51 e1                                      cmp r1, r3
0088bcc0  fb ff ff 1a                                      bne #0x88bcb4
0088bcc4  fe 31 d0 e1                                      ldrsh r3, [r0, #0x1e]
0088bcc8  07 00 53 e1                                      cmp r3, r7
0088bccc  14 10 90 b5                                      ldrlt r1, [r0, #0x14]
0088bcd0  04 00 00 ba                                      blt #0x88bce8
0088bcd4  14 10 90 e5                                      ldr r1, [r0, #0x14]
0088bcd8  10 30 90 e5                                      ldr r3, [r0, #0x10]
0088bcdc  01 30 63 e0                                      rsb r3, r3, r1
0088bce0  23 31 b0 e1                                      lsrs r3, r3, #2
0088bce4  15 00 00 1a                                      bne #0x88bd40
0088bce8  18 30 90 e5                                      ldr r3, [r0, #0x18]
0088bcec  03 00 51 e1                                      cmp r1, r3
0088bcf0  29 00 00 0a                                      beq #0x88bd9c
0088bcf4  08 30 92 e5                                      ldr r3, [r2, #8]
0088bcf8  00 30 81 e5                                      str r3, [r1]
0088bcfc  14 30 90 e5                                      ldr r3, [r0, #0x14]
0088bd00  04 30 83 e2                                      add r3, r3, #4
0088bd04  14 30 80 e5                                      str r3, [r0, #0x14]
0088bd08  24 30 94 e5                                      ldr r3, [r4, #0x24]
0088bd0c  05 50 83 e0                                      add r5, r3, r5
0088bd10  08 00 95 e5                                      ldr r0, [r5, #8]
0088bd14  00 30 90 e5                                      ldr r3, [r0]
0088bd18  04 20 90 e5                                      ldr r2, [r0, #4]
0088bd1c  00 30 82 e5                                      str r3, [r2]
0088bd20  04 20 83 e5                                      str r2, [r3, #4]
0088bd24  c6 11 ea eb                                      bl #0x310444
0088bd28  01 00 a0 e3                                      mov r0, #1
0088bd2c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0088bd30  00 00 a0 e3                                      mov r0, #0
0088bd34  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0088bd38  01 00 57 e3                                      cmp r7, #1
0088bd3c  05 00 00 0a                                      beq #0x88bd58
0088bd40  01 00 a0 e3                                      mov r0, #1
0088bd44  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0088bd48  00 30 e0 e3                                      mvn r3, #0
0088bd4c  00 30 86 e5                                      str r3, [r6]
0088bd50  01 00 a0 e3                                      mov r0, #1
0088bd54  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0088bd58  b2 32 d2 e1                                      ldrh r3, [r2, #0x22]
0088bd5c  73 10 bf e6                                      sxth r1, r3
0088bd60  08 00 51 e1                                      cmp r1, r8
0088bd64  05 00 00 ba                                      blt #0x88bd80
0088bd68  00 30 a0 e3                                      mov r3, #0
0088bd6c  b2 32 c2 e1                                      strh r3, [r2, #0x22]
0088bd70  24 20 94 e5                                      ldr r2, [r4, #0x24]
0088bd74  05 20 82 e0                                      add r2, r2, r5
0088bd78  b2 32 d2 e1                                      ldrh r3, [r2, #0x22]
0088bd7c  73 10 bf e6                                      sxth r1, r3
0088bd80  10 00 92 e5                                      ldr r0, [r2, #0x10]
0088bd84  01 30 83 e2                                      add r3, r3, #1
0088bd88  b2 32 c2 e1                                      strh r3, [r2, #0x22]
0088bd8c  01 31 90 e7                                      ldr r3, [r0, r1, lsl #2]
0088bd90  01 00 a0 e3                                      mov r0, #1
0088bd94  00 30 86 e5                                      str r3, [r6]
0088bd98  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0088bd9c  10 00 80 e2                                      add r0, r0, #0x10
0088bda0  08 20 82 e2                                      add r2, r2, #8
0088bda4  44 ff ff eb                                      bl #0x88babc
0088bda8  d6 ff ff ea                                      b #0x88bd08

; FUNCTION 0x0088bdac, declared_size=36, range_size=36, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZN3vox15VoxSoundPackXML16GetEventSoundUidEPKcRi
; demangled: vox::VoxSoundPackXML::GetEventSoundUid(char const*, int&)
; decoder-mode: arm
0088bdac  70 40 2d e9                                      push {r4, r5, r6, lr}
0088bdb0  02 40 a0 e1                                      mov r4, r2
0088bdb4  00 50 a0 e1                                      mov r5, r0
0088bdb8  8d f9 ff eb                                      bl #0x88a3f4
0088bdbc  04 20 a0 e1                                      mov r2, r4
0088bdc0  00 10 a0 e1                                      mov r1, r0
0088bdc4  05 00 a0 e1                                      mov r0, r5
0088bdc8  70 40 bd e8                                      pop {r4, r5, r6, lr}
0088bdcc  66 ff ff ea                                      b #0x88bb6c

; FUNCTION 0x0088bdd0, declared_size=88, range_size=88, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZN3vox15VoxSoundPackXML30GetEmitterInfoFromSoundOrEventEPKcRNS_14EmitterInfoXMLE
; demangled: vox::VoxSoundPackXML::GetEmitterInfoFromSoundOrEvent(char const*, vox::EmitterInfoXML&)
; decoder-mode: arm
0088bdd0  70 40 2d e9                                      push {r4, r5, r6, lr}
0088bdd4  08 d0 4d e2                                      sub sp, sp, #8
0088bdd8  00 40 a0 e1                                      mov r4, r0
0088bddc  01 50 a0 e1                                      mov r5, r1
0088bde0  02 60 a0 e1                                      mov r6, r2
0088bde4  f4 f9 ff eb                                      bl #0x88a5bc
0088bde8  00 00 50 e3                                      cmp r0, #0
0088bdec  01 00 a0 13                                      movne r0, #1
0088bdf0  01 00 00 0a                                      beq #0x88bdfc
0088bdf4  08 d0 8d e2                                      add sp, sp, #8
0088bdf8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0088bdfc  05 10 a0 e1                                      mov r1, r5
0088be00  04 00 a0 e1                                      mov r0, r4
0088be04  04 20 8d e2                                      add r2, sp, #4
0088be08  e7 ff ff eb                                      bl #0x88bdac
0088be0c  00 00 50 e3                                      cmp r0, #0
0088be10  f7 ff ff 0a                                      beq #0x88bdf4
0088be14  04 00 a0 e1                                      mov r0, r4
0088be18  06 20 a0 e1                                      mov r2, r6
0088be1c  04 10 9d e5                                      ldr r1, [sp, #4]
0088be20  c5 f6 ff eb                                      bl #0x88993c
0088be24  f2 ff ff ea                                      b #0x88bdf4

; FUNCTION 0x0088be28, declared_size=232, range_size=232, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZN3vox15VoxSoundPackXML10ResetEventEi
; demangled: vox::VoxSoundPackXML::ResetEvent(int)
; decoder-mode: arm
0088be28  00 00 51 e3                                      cmp r1, #0
0088be2c  70 40 2d e9                                      push {r4, r5, r6, lr}
0088be30  00 40 a0 e1                                      mov r4, r0
0088be34  2f 00 00 ba                                      blt #0x88bef8
0088be38  24 20 90 e5                                      ldr r2, [r0, #0x24]
0088be3c  28 00 90 e5                                      ldr r0, [r0, #0x28]
0088be40  a3 3b 08 e3                                      movw r3, #0x8ba3
0088be44  2e 3a 4b e3                                      movt r3, #0xba2e
0088be48  00 00 62 e0                                      rsb r0, r2, r0
0088be4c  40 01 a0 e1                                      asr r0, r0, #2
0088be50  93 00 03 e0                                      mul r3, r3, r0
0088be54  03 00 51 e1                                      cmp r1, r3
0088be58  26 00 00 aa                                      bge #0x88bef8
0088be5c  2c 50 a0 e3                                      mov r5, #0x2c
0088be60  95 01 05 e0                                      mul r5, r5, r1
0088be64  05 20 82 e0                                      add r2, r2, r5
0088be68  b2 32 c2 e1                                      strh r3, [r2, #0x22]
0088be6c  24 00 94 e5                                      ldr r0, [r4, #0x24]
0088be70  05 00 80 e0                                      add r0, r0, r5
0088be74  00 30 a0 e1                                      mov r3, r0
0088be78  08 20 b3 e5                                      ldr r2, [r3, #8]!
0088be7c  03 00 52 e1                                      cmp r2, r3
0088be80  1a 00 00 0a                                      beq #0x88bef0
0088be84  02 10 a0 e1                                      mov r1, r2
0088be88  00 10 91 e5                                      ldr r1, [r1]
0088be8c  01 00 53 e1                                      cmp r3, r1
0088be90  fc ff ff 1a                                      bne #0x88be88
0088be94  14 10 90 e5                                      ldr r1, [r0, #0x14]
0088be98  18 30 90 e5                                      ldr r3, [r0, #0x18]
0088be9c  03 00 51 e1                                      cmp r1, r3
0088bea0  16 00 00 0a                                      beq #0x88bf00
0088bea4  08 30 92 e5                                      ldr r3, [r2, #8]
0088bea8  00 30 81 e5                                      str r3, [r1]
0088beac  14 30 90 e5                                      ldr r3, [r0, #0x14]
0088beb0  04 30 83 e2                                      add r3, r3, #4
0088beb4  14 30 80 e5                                      str r3, [r0, #0x14]
0088beb8  24 30 94 e5                                      ldr r3, [r4, #0x24]
0088bebc  05 30 83 e0                                      add r3, r3, r5
0088bec0  08 00 93 e5                                      ldr r0, [r3, #8]
0088bec4  00 30 90 e5                                      ldr r3, [r0]
0088bec8  04 20 90 e5                                      ldr r2, [r0, #4]
0088becc  00 30 82 e5                                      str r3, [r2]
0088bed0  04 20 83 e5                                      str r2, [r3, #4]
0088bed4  5a 11 ea eb                                      bl #0x310444
0088bed8  24 00 94 e5                                      ldr r0, [r4, #0x24]
0088bedc  05 00 80 e0                                      add r0, r0, r5
0088bee0  00 30 a0 e1                                      mov r3, r0
0088bee4  08 20 b3 e5                                      ldr r2, [r3, #8]!
0088bee8  03 00 52 e1                                      cmp r2, r3
0088beec  e4 ff ff 1a                                      bne #0x88be84
0088bef0  01 00 a0 e3                                      mov r0, #1
0088bef4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0088bef8  00 00 a0 e3                                      mov r0, #0
0088befc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0088bf00  10 00 80 e2                                      add r0, r0, #0x10
0088bf04  08 20 82 e2                                      add r2, r2, #8
0088bf08  eb fe ff eb                                      bl #0x88babc
0088bf0c  e9 ff ff ea                                      b #0x88beb8

; FUNCTION 0x0088bf10, declared_size=28, range_size=28, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZN3vox15VoxSoundPackXML10ResetEventEPKc
; demangled: vox::VoxSoundPackXML::ResetEvent(char const*)
; decoder-mode: arm
0088bf10  10 40 2d e9                                      push {r4, lr}
0088bf14  00 40 a0 e1                                      mov r4, r0
0088bf18  35 f9 ff eb                                      bl #0x88a3f4
0088bf1c  00 10 a0 e1                                      mov r1, r0
0088bf20  04 00 a0 e1                                      mov r0, r4
0088bf24  10 40 bd e8                                      pop {r4, lr}
0088bf28  be ff ff ea                                      b #0x88be28

; FUNCTION 0x0088c2cc, declared_size=160, range_size=160, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZN3vox15VoxSoundPackXMLD1Ev
; demangled: vox::VoxSoundPackXML::~VoxSoundPackXML()
; decoder-mode: arm
0088c2cc  70 40 2d e9                                      push {r4, r5, r6, lr}
0088c2d0  58 30 90 e5                                      ldr r3, [r0, #0x58]
0088c2d4  00 40 a0 e1                                      mov r4, r0
0088c2d8  00 00 53 e3                                      cmp r3, #0
0088c2dc  0c 00 00 1a                                      bne #0x88c314
0088c2e0  40 30 94 e5                                      ldr r3, [r4, #0x40]
0088c2e4  00 00 53 e3                                      cmp r3, #0
0088c2e8  15 00 00 1a                                      bne #0x88c344
0088c2ec  24 00 84 e2                                      add r0, r4, #0x24
0088c2f0  2e f8 ff eb                                      bl #0x88a3b0
0088c2f4  18 00 84 e2                                      add r0, r4, #0x18
0088c2f8  0b ff ff eb                                      bl #0x88bf2c
0088c2fc  0c 00 84 e2                                      add r0, r4, #0xc
0088c300  e1 ff ff eb                                      bl #0x88c28c
0088c304  04 00 a0 e1                                      mov r0, r4
0088c308  17 f8 ff eb                                      bl #0x88a36c
0088c30c  04 00 a0 e1                                      mov r0, r4
0088c310  70 80 bd e8                                      pop {r4, r5, r6, pc}
0088c314  48 50 80 e2                                      add r5, r0, #0x48
0088c318  05 00 a0 e1                                      mov r0, r5
0088c31c  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
0088c320  18 ff ff eb                                      bl #0x88bf88
0088c324  00 30 a0 e3                                      mov r3, #0
0088c328  58 30 84 e5                                      str r3, [r4, #0x58]
0088c32c  4c 30 84 e5                                      str r3, [r4, #0x4c]
0088c330  40 30 94 e5                                      ldr r3, [r4, #0x40]
0088c334  54 50 84 e5                                      str r5, [r4, #0x54]
0088c338  50 50 84 e5                                      str r5, [r4, #0x50]
0088c33c  00 00 53 e3                                      cmp r3, #0
0088c340  e9 ff ff 0a                                      beq #0x88c2ec
0088c344  30 50 84 e2                                      add r5, r4, #0x30
0088c348  05 00 a0 e1                                      mov r0, r5
0088c34c  34 10 94 e5                                      ldr r1, [r4, #0x34]
0088c350  71 f7 ff eb                                      bl #0x88a11c
0088c354  00 30 a0 e3                                      mov r3, #0
0088c358  3c 50 84 e5                                      str r5, [r4, #0x3c]
0088c35c  40 30 84 e5                                      str r3, [r4, #0x40]
0088c360  38 50 84 e5                                      str r5, [r4, #0x38]
0088c364  34 30 84 e5                                      str r3, [r4, #0x34]
0088c368  df ff ff ea                                      b #0x88c2ec

; FUNCTION 0x0088c36c, declared_size=160, range_size=160, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZN3vox15VoxSoundPackXMLD2Ev
; demangled: vox::VoxSoundPackXML::~VoxSoundPackXML()
; decoder-mode: arm
0088c36c  70 40 2d e9                                      push {r4, r5, r6, lr}
0088c370  58 30 90 e5                                      ldr r3, [r0, #0x58]
0088c374  00 40 a0 e1                                      mov r4, r0
0088c378  00 00 53 e3                                      cmp r3, #0
0088c37c  0c 00 00 1a                                      bne #0x88c3b4
0088c380  40 30 94 e5                                      ldr r3, [r4, #0x40]
0088c384  00 00 53 e3                                      cmp r3, #0
0088c388  15 00 00 1a                                      bne #0x88c3e4
0088c38c  24 00 84 e2                                      add r0, r4, #0x24
0088c390  06 f8 ff eb                                      bl #0x88a3b0
0088c394  18 00 84 e2                                      add r0, r4, #0x18
0088c398  e3 fe ff eb                                      bl #0x88bf2c
0088c39c  0c 00 84 e2                                      add r0, r4, #0xc
0088c3a0  b9 ff ff eb                                      bl #0x88c28c
0088c3a4  04 00 a0 e1                                      mov r0, r4
0088c3a8  ef f7 ff eb                                      bl #0x88a36c
0088c3ac  04 00 a0 e1                                      mov r0, r4
0088c3b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0088c3b4  48 50 80 e2                                      add r5, r0, #0x48
0088c3b8  05 00 a0 e1                                      mov r0, r5
0088c3bc  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
0088c3c0  f0 fe ff eb                                      bl #0x88bf88
0088c3c4  00 30 a0 e3                                      mov r3, #0
0088c3c8  58 30 84 e5                                      str r3, [r4, #0x58]
0088c3cc  4c 30 84 e5                                      str r3, [r4, #0x4c]
0088c3d0  40 30 94 e5                                      ldr r3, [r4, #0x40]
0088c3d4  54 50 84 e5                                      str r5, [r4, #0x54]
0088c3d8  50 50 84 e5                                      str r5, [r4, #0x50]
0088c3dc  00 00 53 e3                                      cmp r3, #0
0088c3e0  e9 ff ff 0a                                      beq #0x88c38c
0088c3e4  30 50 84 e2                                      add r5, r4, #0x30
0088c3e8  05 00 a0 e1                                      mov r0, r5
0088c3ec  34 10 94 e5                                      ldr r1, [r4, #0x34]
0088c3f0  49 f7 ff eb                                      bl #0x88a11c
0088c3f4  00 30 a0 e3                                      mov r3, #0
0088c3f8  3c 50 84 e5                                      str r5, [r4, #0x3c]
0088c3fc  40 30 84 e5                                      str r3, [r4, #0x40]
0088c400  38 50 84 e5                                      str r5, [r4, #0x38]
0088c404  34 30 84 e5                                      str r3, [r4, #0x34]
0088c408  df ff ff ea                                      b #0x88c38c

; FUNCTION 0x0088cc14, declared_size=160, range_size=160, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZNK3vox15VoxSoundPackXML12GetGroupMaskEPKcRi
; demangled: vox::VoxSoundPackXML::GetGroupMask(char const*, int&) const
; decoder-mode: arm
0088cc14  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0088cc18  8c 40 9f e5                                      ldr r4, [pc, #0x8c]
0088cc1c  8c 60 9f e5                                      ldr r6, [pc, #0x8c]
0088cc20  24 d0 4d e2                                      sub sp, sp, #0x24
0088cc24  04 40 8f e0                                      add r4, pc, r4
0088cc28  06 30 94 e7                                      ldr r3, [r4, r6]
0088cc2c  04 50 8d e2                                      add r5, sp, #4
0088cc30  48 70 80 e2                                      add r7, r0, #0x48
0088cc34  00 30 93 e5                                      ldr r3, [r3]
0088cc38  02 80 a0 e1                                      mov r8, r2
0088cc3c  05 00 a0 e1                                      mov r0, r5
0088cc40  0d 20 a0 e1                                      mov r2, sp
0088cc44  1c 30 8d e5                                      str r3, [sp, #0x1c]
0088cc48  ba 89 ff eb                                      bl #0x86f338
0088cc4c  07 00 a0 e1                                      mov r0, r7
0088cc50  05 10 a0 e1                                      mov r1, r5
0088cc54  b9 ff ff eb                                      bl #0x88cb40
0088cc58  00 a0 a0 e1                                      mov sl, r0
0088cc5c  18 00 9d e5                                      ldr r0, [sp, #0x18]
0088cc60  05 00 50 e1                                      cmp r0, r5
0088cc64  02 00 00 0a                                      beq #0x88cc74
0088cc68  00 00 50 e3                                      cmp r0, #0
0088cc6c  00 00 00 0a                                      beq #0x88cc74
0088cc70  f3 0d ea eb                                      bl #0x310444
0088cc74  07 00 5a e1                                      cmp sl, r7
0088cc78  28 30 9a 15                                      ldrne r3, [sl, #0x28]
0088cc7c  00 00 a0 03                                      moveq r0, #0
0088cc80  00 00 88 05                                      streq r0, [r8]
0088cc84  00 30 88 15                                      strne r3, [r8]
0088cc88  06 30 94 e7                                      ldr r3, [r4, r6]
0088cc8c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0088cc90  01 00 a0 13                                      movne r0, #1
0088cc94  00 30 93 e5                                      ldr r3, [r3]
0088cc98  03 00 52 e1                                      cmp r2, r3
0088cc9c  01 00 00 1a                                      bne #0x88cca8
0088cca0  24 d0 8d e2                                      add sp, sp, #0x24
0088cca4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0088cca8  98 05 ea eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0088ccac  6c 7e 10 00 ac 40 00 00                          .byte 0x6c, 0x7e, 0x10, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0088d344, declared_size=6408, range_size=6408, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZN3vox15VoxSoundPackXML7LoadXMLEPKc
; demangled: vox::VoxSoundPackXML::LoadXML(char const*)
; decoder-mode: arm
0088d344  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0088d348  68 2e 9f e5                                      ldr r2, [pc, #0xe68]
0088d34c  68 3e 9f e5                                      ldr r3, [pc, #0xe68]
0088d350  81 df 4d e2                                      sub sp, sp, #0x204
0088d354  02 20 8f e0                                      add r2, pc, r2
0088d358  03 c0 92 e7                                      ldr ip, [r2, r3]
0088d35c  04 20 8d e5                                      str r2, [sp, #4]
0088d360  18 30 8d e5                                      str r3, [sp, #0x18]
0088d364  00 30 90 e5                                      ldr r3, [r0]
0088d368  04 20 90 e5                                      ldr r2, [r0, #4]
0088d36c  00 c0 9c e5                                      ldr ip, [ip]
0088d370  00 40 a0 e1                                      mov r4, r0
0088d374  02 00 53 e1                                      cmp r3, r2
0088d378  01 50 a0 e1                                      mov r5, r1
0088d37c  fc c1 8d e5                                      str ip, [sp, #0x1fc]
0088d380  02 00 00 0a                                      beq #0x88d390
0088d384  03 10 a0 e1                                      mov r1, r3
0088d388  5b 3f 8d e2                                      add r3, sp, #0x16c
0088d38c  d7 f2 ff eb                                      bl #0x889ef0
0088d390  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0088d394  10 20 94 e5                                      ldr r2, [r4, #0x10]
0088d398  0c c0 84 e2                                      add ip, r4, #0xc
0088d39c  08 c0 8d e5                                      str ip, [sp, #8]
0088d3a0  02 00 51 e1                                      cmp r1, r2
0088d3a4  02 00 00 0a                                      beq #0x88d3b4
0088d3a8  0c 00 a0 e1                                      mov r0, ip
0088d3ac  5a 3f 8d e2                                      add r3, sp, #0x168
0088d3b0  28 fd ff eb                                      bl #0x88c858
0088d3b4  18 10 94 e5                                      ldr r1, [r4, #0x18]
0088d3b8  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0088d3bc  18 30 84 e2                                      add r3, r4, #0x18
0088d3c0  0c 30 8d e5                                      str r3, [sp, #0xc]
0088d3c4  02 00 51 e1                                      cmp r1, r2
0088d3c8  02 00 00 0a                                      beq #0x88d3d8
0088d3cc  03 00 a0 e1                                      mov r0, r3
0088d3d0  59 3f 8d e2                                      add r3, sp, #0x164
0088d3d4  00 fb ff eb                                      bl #0x88bfdc
0088d3d8  24 10 94 e5                                      ldr r1, [r4, #0x24]
0088d3dc  28 20 94 e5                                      ldr r2, [r4, #0x28]
0088d3e0  24 c0 84 e2                                      add ip, r4, #0x24
0088d3e4  1c c0 8d e5                                      str ip, [sp, #0x1c]
0088d3e8  02 00 51 e1                                      cmp r1, r2
0088d3ec  02 00 00 0a                                      beq #0x88d3fc
0088d3f0  0c 00 a0 e1                                      mov r0, ip
0088d3f4  16 3e 8d e2                                      add r3, sp, #0x160
0088d3f8  5c f7 ff eb                                      bl #0x88b170
0088d3fc  40 30 94 e5                                      ldr r3, [r4, #0x40]
0088d400  00 00 53 e3                                      cmp r3, #0
0088d404  f2 02 00 1a                                      bne #0x88dfd4
0088d408  65 1c 00 eb                                      bl #0x8945a4
0088d40c  00 60 50 e2                                      subs r6, r0, #0
0088d410  ed 02 00 0a                                      beq #0x88dfcc
0088d414  05 10 a0 e1                                      mov r1, r5
0088d418  00 30 96 e5                                      ldr r3, [r6]
0088d41c  06 20 a0 e3                                      mov r2, #6
0088d420  0f e0 a0 e1                                      mov lr, pc
0088d424  08 f0 93 e5                                      ldr pc, [r3, #8]
0088d428  00 50 50 e2                                      subs r5, r0, #0
0088d42c  e6 02 00 0a                                      beq #0x88dfcc
0088d430  00 10 a0 e3                                      mov r1, #0
0088d434  02 20 a0 e3                                      mov r2, #2
0088d438  00 30 95 e5                                      ldr r3, [r5]
0088d43c  0f e0 a0 e1                                      mov lr, pc
0088d440  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0088d444  00 30 95 e5                                      ldr r3, [r5]
0088d448  05 00 a0 e1                                      mov r0, r5
0088d44c  0f e0 a0 e1                                      mov lr, pc
0088d450  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0088d454  00 10 a0 e3                                      mov r1, #0
0088d458  00 80 a0 e1                                      mov r8, r0
0088d45c  01 20 a0 e1                                      mov r2, r1
0088d460  00 30 95 e5                                      ldr r3, [r5]
0088d464  05 00 a0 e1                                      mov r0, r5
0088d468  0f e0 a0 e1                                      mov lr, pc
0088d46c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0088d470  01 00 88 e2                                      add r0, r8, #1
0088d474  1f 0c ea eb                                      bl #0x3104f8
0088d478  00 00 50 e3                                      cmp r0, #0
0088d47c  28 00 8d e5                                      str r0, [sp, #0x28]
0088d480  c7 05 00 0a                                      beq #0x88eba4
0088d484  28 10 9d e5                                      ldr r1, [sp, #0x28]
0088d488  00 70 a0 e3                                      mov r7, #0
0088d48c  08 20 a0 e1                                      mov r2, r8
0088d490  08 70 c1 e7                                      strb r7, [r1, r8]
0088d494  28 10 9d e5                                      ldr r1, [sp, #0x28]
0088d498  01 30 a0 e3                                      mov r3, #1
0088d49c  00 c0 95 e5                                      ldr ip, [r5]
0088d4a0  05 00 a0 e1                                      mov r0, r5
0088d4a4  0f e0 a0 e1                                      mov lr, pc
0088d4a8  08 f0 9c e5                                      ldr pc, [ip, #8]
0088d4ac  05 10 a0 e1                                      mov r1, r5
0088d4b0  00 80 a0 e1                                      mov r8, r0
0088d4b4  00 30 96 e5                                      ldr r3, [r6]
0088d4b8  06 00 a0 e1                                      mov r0, r6
0088d4bc  0f e0 a0 e1                                      mov lr, pc
0088d4c0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0088d4c4  01 00 58 e3                                      cmp r8, #1
0088d4c8  0b 00 00 0a                                      beq #0x88d4fc
0088d4cc  28 00 9d e5                                      ldr r0, [sp, #0x28]
0088d4d0  db 0b ea eb                                      bl #0x310444
0088d4d4  07 00 a0 e1                                      mov r0, r7
0088d4d8  04 10 9d e5                                      ldr r1, [sp, #4]
0088d4dc  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0088d4e0  fc 21 9d e5                                      ldr r2, [sp, #0x1fc]
0088d4e4  0c 30 91 e7                                      ldr r3, [r1, ip]
0088d4e8  00 30 93 e5                                      ldr r3, [r3]
0088d4ec  03 00 52 e1                                      cmp r2, r3
0088d4f0  d4 05 00 1a                                      bne #0x88ec48
0088d4f4  81 df 8d e2                                      add sp, sp, #0x204
0088d4f8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0088d4fc  5d 2f 8d e2                                      add r2, sp, #0x174
0088d500  02 00 a0 e1                                      mov r0, r2
0088d504  34 20 8d e5                                      str r2, [sp, #0x34]
0088d508  6d 26 f2 eb                                      bl #0x516ec4
0088d50c  07 30 a0 e1                                      mov r3, r7
0088d510  34 00 9d e5                                      ldr r0, [sp, #0x34]
0088d514  28 10 9d e5                                      ldr r1, [sp, #0x28]
0088d518  07 20 a0 e1                                      mov r2, r7
0088d51c  84 34 f2 eb                                      bl #0x51a734
0088d520  b4 31 dd e5                                      ldrb r3, [sp, #0x1b4]
0088d524  00 00 53 e3                                      cmp r3, #0
0088d528  99 02 00 1a                                      bne #0x88df94
0088d52c  8c 6c 9f e5                                      ldr r6, [pc, #0xc8c]
0088d530  8c 5c 9f e5                                      ldr r5, [pc, #0xc8c]
0088d534  34 30 9d e5                                      ldr r3, [sp, #0x34]
0088d538  06 60 8f e0                                      add r6, pc, r6
0088d53c  56 8f 8d e2                                      add r8, sp, #0x158
0088d540  05 50 8f e0                                      add r5, pc, r5
0088d544  06 20 a0 e1                                      mov r2, r6
0088d548  55 7f 8d e2                                      add r7, sp, #0x154
0088d54c  08 00 a0 e1                                      mov r0, r8
0088d550  57 1f 8d e2                                      add r1, sp, #0x15c
0088d554  5c 31 8d e5                                      str r3, [sp, #0x15c]
0088d558  3b 1e f2 eb                                      bl #0x514e4c
0088d55c  05 20 a0 e1                                      mov r2, r5
0088d560  08 10 a0 e1                                      mov r1, r8
0088d564  07 00 a0 e1                                      mov r0, r7
0088d568  37 1e f2 eb                                      bl #0x514e4c
0088d56c  07 00 a0 e1                                      mov r0, r7
0088d570  34 d9 ef eb                                      bl #0x483a48
0088d574  4c 1c 9f e5                                      ldr r1, [pc, #0xc4c]
0088d578  15 2e 8d e2                                      add r2, sp, #0x150
0088d57c  ac 70 8d e2                                      add r7, sp, #0xac
0088d580  01 10 8f e0                                      add r1, pc, r1
0088d584  99 20 f2 eb                                      bl #0x5157f0
0088d588  07 00 a0 e1                                      mov r0, r7
0088d58c  50 11 9d e5                                      ldr r1, [sp, #0x150]
0088d590  7c f2 ff eb                                      bl #0x889f88
0088d594  07 10 a0 e1                                      mov r1, r7
0088d598  04 00 a0 e1                                      mov r0, r4
0088d59c  eb f2 ff eb                                      bl #0x88a150
0088d5a0  07 00 a0 e1                                      mov r0, r7
0088d5a4  70 f3 ff eb                                      bl #0x88a36c
0088d5a8  34 c0 9d e5                                      ldr ip, [sp, #0x34]
0088d5ac  52 7f 8d e2                                      add r7, sp, #0x148
0088d5b0  06 20 a0 e1                                      mov r2, r6
0088d5b4  07 00 a0 e1                                      mov r0, r7
0088d5b8  53 1f 8d e2                                      add r1, sp, #0x14c
0088d5bc  51 6f 8d e2                                      add r6, sp, #0x144
0088d5c0  4c c1 8d e5                                      str ip, [sp, #0x14c]
0088d5c4  20 1e f2 eb                                      bl #0x514e4c
0088d5c8  05 20 a0 e1                                      mov r2, r5
0088d5cc  07 10 a0 e1                                      mov r1, r7
0088d5d0  06 00 a0 e1                                      mov r0, r6
0088d5d4  1c 1e f2 eb                                      bl #0x514e4c
0088d5d8  ec 2b 9f e5                                      ldr r2, [pc, #0xbec]
0088d5dc  05 5d 8d e2                                      add r5, sp, #0x140
0088d5e0  05 00 a0 e1                                      mov r0, r5
0088d5e4  06 10 a0 e1                                      mov r1, r6
0088d5e8  02 20 8f e0                                      add r2, pc, r2
0088d5ec  16 1e f2 eb                                      bl #0x514e4c
0088d5f0  05 00 a0 e1                                      mov r0, r5
0088d5f4  13 d9 ef eb                                      bl #0x483a48
0088d5f8  00 50 50 e2                                      subs r5, r0, #0
0088d5fc  cf 01 00 0a                                      beq #0x88dd40
0088d600  c8 3b 9f e5                                      ldr r3, [pc, #0xbc8]
0088d604  c8 1b 9f e5                                      ldr r1, [pc, #0xbc8]
0088d608  c8 2b 9f e5                                      ldr r2, [pc, #0xbc8]
0088d60c  58 30 8d e5                                      str r3, [sp, #0x58]
0088d610  c4 3b 9f e5                                      ldr r3, [pc, #0xbc4]
0088d614  c4 cb 9f e5                                      ldr ip, [pc, #0xbc4]
0088d618  50 10 8d e5                                      str r1, [sp, #0x50]
0088d61c  48 30 8d e5                                      str r3, [sp, #0x48]
0088d620  bc 3b 9f e5                                      ldr r3, [pc, #0xbbc]
0088d624  bc 1b 9f e5                                      ldr r1, [pc, #0xbbc]
0088d628  54 20 8d e5                                      str r2, [sp, #0x54]
0088d62c  68 30 8d e5                                      str r3, [sp, #0x68]
0088d630  b4 3b 9f e5                                      ldr r3, [pc, #0xbb4]
0088d634  b4 2b 9f e5                                      ldr r2, [pc, #0xbb4]
0088d638  5c c0 8d e5                                      str ip, [sp, #0x5c]
0088d63c  24 30 8d e5                                      str r3, [sp, #0x24]
0088d640  ac 3b 9f e5                                      ldr r3, [pc, #0xbac]
0088d644  ac cb 9f e5                                      ldr ip, [pc, #0xbac]
0088d648  40 10 8d e5                                      str r1, [sp, #0x40]
0088d64c  3c 30 8d e5                                      str r3, [sp, #0x3c]
0088d650  a4 3b 9f e5                                      ldr r3, [pc, #0xba4]
0088d654  a4 1b 9f e5                                      ldr r1, [pc, #0xba4]
0088d658  44 20 8d e5                                      str r2, [sp, #0x44]
0088d65c  03 30 8f e0                                      add r3, pc, r3
0088d660  70 30 8d e5                                      str r3, [sp, #0x70]
0088d664  98 3b 9f e5                                      ldr r3, [pc, #0xb98]
0088d668  98 2b 9f e5                                      ldr r2, [pc, #0xb98]
0088d66c  4c c0 8d e5                                      str ip, [sp, #0x4c]
0088d670  03 30 8f e0                                      add r3, pc, r3
0088d674  90 cb 9f e5                                      ldr ip, [pc, #0xb90]
0088d678  78 30 8d e5                                      str r3, [sp, #0x78]
0088d67c  8c 3b 9f e5                                      ldr r3, [pc, #0xb8c]
0088d680  60 10 8d e5                                      str r1, [sp, #0x60]
0088d684  88 1b 9f e5                                      ldr r1, [pc, #0xb88]
0088d688  64 20 8d e5                                      str r2, [sp, #0x64]
0088d68c  10 c0 8d e5                                      str ip, [sp, #0x10]
0088d690  80 2b 9f e5                                      ldr r2, [pc, #0xb80]
0088d694  80 cb 9f e5                                      ldr ip, [pc, #0xb80]
0088d698  03 30 8f e0                                      add r3, pc, r3
0088d69c  14 10 8d e5                                      str r1, [sp, #0x14]
0088d6a0  7c 30 8d e5                                      str r3, [sp, #0x7c]
0088d6a4  74 1b 9f e5                                      ldr r1, [pc, #0xb74]
0088d6a8  74 3b 9f e5                                      ldr r3, [pc, #0xb74]
0088d6ac  20 20 8d e5                                      str r2, [sp, #0x20]
0088d6b0  2c c0 8d e5                                      str ip, [sp, #0x2c]
0088d6b4  6c 2b 9f e5                                      ldr r2, [pc, #0xb6c]
0088d6b8  6c cb 9f e5                                      ldr ip, [pc, #0xb6c]
0088d6bc  30 10 8d e5                                      str r1, [sp, #0x30]
0088d6c0  03 30 8f e0                                      add r3, pc, r3
0088d6c4  30 10 84 e2                                      add r1, r4, #0x30
0088d6c8  c8 70 8d e2                                      add r7, sp, #0xc8
0088d6cc  38 20 8d e5                                      str r2, [sp, #0x38]
0088d6d0  84 c0 8d e5                                      str ip, [sp, #0x84]
0088d6d4  80 30 8d e5                                      str r3, [sp, #0x80]
0088d6d8  74 10 8d e5                                      str r1, [sp, #0x74]
0088d6dc  ec 80 8d e2                                      add r8, sp, #0xec
0088d6e0  b8 60 8d e2                                      add r6, sp, #0xb8
0088d6e4  6c 70 8d e5                                      str r7, [sp, #0x6c]
0088d6e8  50 20 9d e5                                      ldr r2, [sp, #0x50]
0088d6ec  05 00 a0 e1                                      mov r0, r5
0088d6f0  02 10 8f e0                                      add r1, pc, r2
0088d6f4  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
0088d6f8  3c 20 f2 eb                                      bl #0x5157f0
0088d6fc  00 00 50 e3                                      cmp r0, #0
0088d700  c8 30 9d 05                                      ldreq r3, [sp, #0xc8]
0088d704  44 20 a0 03                                      moveq r2, #0x44
0088d708  00 10 94 05                                      ldreq r1, [r4]
0088d70c  92 03 02 00                                      muleq r2, r2, r3
0088d710  05 00 a0 e1                                      mov r0, r5
0088d714  02 30 81 07                                      streq r3, [r1, r2]
0088d718  54 30 9d e5                                      ldr r3, [sp, #0x54]
0088d71c  08 20 a0 e1                                      mov r2, r8
0088d720  03 10 8f e0                                      add r1, pc, r3
0088d724  31 20 f2 eb                                      bl #0x5157f0
0088d728  00 00 50 e3                                      cmp r0, #0
0088d72c  05 00 00 1a                                      bne #0x88d748
0088d730  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088d734  00 30 94 e5                                      ldr r3, [r4]
0088d738  44 10 a0 e3                                      mov r1, #0x44
0088d73c  91 32 23 e0                                      mla r3, r1, r2, r3
0088d740  ec 20 9d e5                                      ldr r2, [sp, #0xec]
0088d744  15 20 c3 e5                                      strb r2, [r3, #0x15]
0088d748  58 c0 9d e5                                      ldr ip, [sp, #0x58]
0088d74c  05 00 a0 e1                                      mov r0, r5
0088d750  08 20 a0 e1                                      mov r2, r8
0088d754  0c 10 8f e0                                      add r1, pc, ip
0088d758  24 20 f2 eb                                      bl #0x5157f0
0088d75c  00 00 50 e3                                      cmp r0, #0
0088d760  05 00 00 1a                                      bne #0x88d77c
0088d764  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088d768  00 30 94 e5                                      ldr r3, [r4]
0088d76c  44 10 a0 e3                                      mov r1, #0x44
0088d770  91 32 23 e0                                      mla r3, r1, r2, r3
0088d774  ec 20 9d e5                                      ldr r2, [sp, #0xec]
0088d778  16 20 c3 e5                                      strb r2, [r3, #0x16]
0088d77c  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
0088d780  05 00 a0 e1                                      mov r0, r5
0088d784  02 10 8f e0                                      add r1, pc, r2
0088d788  08 20 a0 e1                                      mov r2, r8
0088d78c  17 20 f2 eb                                      bl #0x5157f0
0088d790  00 00 50 e3                                      cmp r0, #0
0088d794  05 00 00 1a                                      bne #0x88d7b0
0088d798  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088d79c  00 30 94 e5                                      ldr r3, [r4]
0088d7a0  44 10 a0 e3                                      mov r1, #0x44
0088d7a4  91 32 23 e0                                      mla r3, r1, r2, r3
0088d7a8  ec 20 9d e5                                      ldr r2, [sp, #0xec]
0088d7ac  04 20 83 e5                                      str r2, [r3, #4]
0088d7b0  40 30 9d e5                                      ldr r3, [sp, #0x40]
0088d7b4  05 00 a0 e1                                      mov r0, r5
0088d7b8  03 10 8f e0                                      add r1, pc, r3
0088d7bc  2b 1d f2 eb                                      bl #0x514c70
0088d7c0  00 00 50 e3                                      cmp r0, #0
0088d7c4  08 00 00 0a                                      beq #0x88d7ec
0088d7c8  00 20 94 e5                                      ldr r2, [r4]
0088d7cc  c8 10 9d e5                                      ldr r1, [sp, #0xc8]
0088d7d0  d0 30 d0 e1                                      ldrsb r3, [r0]
0088d7d4  44 00 a0 e3                                      mov r0, #0x44
0088d7d8  90 21 22 e0                                      mla r2, r0, r1, r2
0088d7dc  79 00 53 e3                                      cmp r3, #0x79
0088d7e0  00 30 a0 13                                      movne r3, #0
0088d7e4  01 30 a0 03                                      moveq r3, #1
0088d7e8  17 30 c2 e5                                      strb r3, [r2, #0x17]
0088d7ec  44 c0 9d e5                                      ldr ip, [sp, #0x44]
0088d7f0  05 00 a0 e1                                      mov r0, r5
0088d7f4  0c 10 8f e0                                      add r1, pc, ip
0088d7f8  1c 1d f2 eb                                      bl #0x514c70
0088d7fc  00 a0 50 e2                                      subs sl, r0, #0
0088d800  56 02 00 0a                                      beq #0x88e160
0088d804  00 30 94 e5                                      ldr r3, [r4]
0088d808  c8 90 9d e5                                      ldr sb, [sp, #0xc8]
0088d80c  44 70 a0 e3                                      mov r7, #0x44
0088d810  97 39 29 e0                                      mla sb, r7, sb, r3
0088d814  8e 01 ea eb                                      bl #0x30de54
0088d818  01 00 80 e2                                      add r0, r0, #1
0088d81c  35 0b ea eb                                      bl #0x3104f8
0088d820  08 00 89 e5                                      str r0, [sb, #8]
0088d824  00 30 94 e5                                      ldr r3, [r4]
0088d828  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088d82c  97 32 27 e0                                      mla r7, r7, r2, r3
0088d830  08 00 97 e5                                      ldr r0, [r7, #8]
0088d834  00 00 50 e3                                      cmp r0, #0
0088d838  01 00 00 0a                                      beq #0x88d844
0088d83c  0a 10 a0 e1                                      mov r1, sl
0088d840  36 03 ea eb                                      bl #0x30e520
0088d844  48 20 9d e5                                      ldr r2, [sp, #0x48]
0088d848  05 00 a0 e1                                      mov r0, r5
0088d84c  02 10 8f e0                                      add r1, pc, r2
0088d850  06 1d f2 eb                                      bl #0x514c70
0088d854  00 70 50 e2                                      subs r7, r0, #0
0088d858  24 00 00 0a                                      beq #0x88d8f0
0088d85c  70 10 9d e5                                      ldr r1, [sp, #0x70]
0088d860  ad 02 ea eb                                      bl #0x30e31c
0088d864  00 00 50 e3                                      cmp r0, #0
0088d868  e3 01 00 0a                                      beq #0x88dffc
0088d86c  07 00 a0 e1                                      mov r0, r7
0088d870  78 10 9d e5                                      ldr r1, [sp, #0x78]
0088d874  a8 02 ea eb                                      bl #0x30e31c
0088d878  00 00 50 e3                                      cmp r0, #0
0088d87c  de 01 00 0a                                      beq #0x88dffc
0088d880  07 00 a0 e1                                      mov r0, r7
0088d884  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
0088d888  a3 02 ea eb                                      bl #0x30e31c
0088d88c  00 00 50 e3                                      cmp r0, #0
0088d890  28 02 00 0a                                      beq #0x88e138
0088d894  07 00 a0 e1                                      mov r0, r7
0088d898  80 10 9d e5                                      ldr r1, [sp, #0x80]
0088d89c  9e 02 ea eb                                      bl #0x30e31c
0088d8a0  00 00 50 e3                                      cmp r0, #0
0088d8a4  23 02 00 0a                                      beq #0x88e138
0088d8a8  84 30 9d e5                                      ldr r3, [sp, #0x84]
0088d8ac  07 00 a0 e1                                      mov r0, r7
0088d8b0  03 10 8f e0                                      add r1, pc, r3
0088d8b4  98 02 ea eb                                      bl #0x30e31c
0088d8b8  00 00 50 e3                                      cmp r0, #0
0088d8bc  bf 04 00 0a                                      beq #0x88ebc0
0088d8c0  68 19 9f e5                                      ldr r1, [pc, #0x968]
0088d8c4  07 00 a0 e1                                      mov r0, r7
0088d8c8  01 10 8f e0                                      add r1, pc, r1
0088d8cc  92 02 ea eb                                      bl #0x30e31c
0088d8d0  00 00 50 e3                                      cmp r0, #0
0088d8d4  05 00 00 1a                                      bne #0x88d8f0
0088d8d8  c8 30 9d e5                                      ldr r3, [sp, #0xc8]
0088d8dc  00 10 94 e5                                      ldr r1, [r4]
0088d8e0  44 20 a0 e3                                      mov r2, #0x44
0088d8e4  92 13 22 e0                                      mla r2, r2, r3, r1
0088d8e8  04 30 a0 e3                                      mov r3, #4
0088d8ec  14 30 c2 e5                                      strb r3, [r2, #0x14]
0088d8f0  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
0088d8f4  05 00 a0 e1                                      mov r0, r5
0088d8f8  0c 10 8f e0                                      add r1, pc, ip
0088d8fc  db 1c f2 eb                                      bl #0x514c70
0088d900  00 70 50 e2                                      subs r7, r0, #0
0088d904  09 00 00 0a                                      beq #0x88d930
0088d908  24 19 9f e5                                      ldr r1, [pc, #0x924]
0088d90c  01 10 8f e0                                      add r1, pc, r1
0088d910  81 02 ea eb                                      bl #0x30e31c
0088d914  00 00 50 e3                                      cmp r0, #0
0088d918  be 01 00 1a                                      bne #0x88e018
0088d91c  00 30 94 e5                                      ldr r3, [r4]
0088d920  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088d924  44 10 a0 e3                                      mov r1, #0x44
0088d928  91 32 23 e0                                      mla r3, r1, r2, r3
0088d92c  10 00 83 e5                                      str r0, [r3, #0x10]
0088d930  60 20 9d e5                                      ldr r2, [sp, #0x60]
0088d934  05 00 a0 e1                                      mov r0, r5
0088d938  02 10 8f e0                                      add r1, pc, r2
0088d93c  cb 1c f2 eb                                      bl #0x514c70
0088d940  00 a0 50 e2                                      subs sl, r0, #0
0088d944  c0 01 00 0a                                      beq #0x88e04c
0088d948  00 30 94 e5                                      ldr r3, [r4]
0088d94c  c8 90 9d e5                                      ldr sb, [sp, #0xc8]
0088d950  44 70 a0 e3                                      mov r7, #0x44
0088d954  97 39 29 e0                                      mla sb, r7, sb, r3
0088d958  3d 01 ea eb                                      bl #0x30de54
0088d95c  01 00 80 e2                                      add r0, r0, #1
0088d960  e4 0a ea eb                                      bl #0x3104f8
0088d964  0c 00 89 e5                                      str r0, [sb, #0xc]
0088d968  00 30 94 e5                                      ldr r3, [r4]
0088d96c  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088d970  97 32 27 e0                                      mla r7, r7, r2, r3
0088d974  0c 00 97 e5                                      ldr r0, [r7, #0xc]
0088d978  00 00 50 e3                                      cmp r0, #0
0088d97c  01 00 00 0a                                      beq #0x88d988
0088d980  0a 10 a0 e1                                      mov r1, sl
0088d984  e5 02 ea eb                                      bl #0x30e520
0088d988  64 30 9d e5                                      ldr r3, [sp, #0x64]
0088d98c  05 00 a0 e1                                      mov r0, r5
0088d990  06 20 a0 e1                                      mov r2, r6
0088d994  03 10 8f e0                                      add r1, pc, r3
0088d998  73 1f f2 eb                                      bl #0x51576c
0088d99c  00 00 50 e3                                      cmp r0, #0
0088d9a0  09 00 00 1a                                      bne #0x88d9cc
0088d9a4  ae 24 a0 e3                                      mov r2, #0xae000000
0088d9a8  42 2b a0 e1                                      asr r2, r2, #0x16
0088d9ac  02 cc 8d e2                                      add ip, sp, #0x200
0088d9b0  00 30 94 e5                                      ldr r3, [r4]
0088d9b4  d2 00 8c e1                                      ldrd r0, r1, [ip, r2]
0088d9b8  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088d9bc  44 70 a0 e3                                      mov r7, #0x44
0088d9c0  97 32 27 e0                                      mla r7, r7, r2, r3
0088d9c4  35 03 ea eb                                      bl #0x30e6a0
0088d9c8  18 00 87 e5                                      str r0, [r7, #0x18]
0088d9cc  68 20 9d e5                                      ldr r2, [sp, #0x68]
0088d9d0  05 00 a0 e1                                      mov r0, r5
0088d9d4  02 10 8f e0                                      add r1, pc, r2
0088d9d8  06 20 a0 e1                                      mov r2, r6
0088d9dc  62 1f f2 eb                                      bl #0x51576c
0088d9e0  00 00 50 e3                                      cmp r0, #0
0088d9e4  09 00 00 1a                                      bne #0x88da10
0088d9e8  ae 24 a0 e3                                      mov r2, #0xae000000
0088d9ec  42 2b a0 e1                                      asr r2, r2, #0x16
0088d9f0  02 cc 8d e2                                      add ip, sp, #0x200
0088d9f4  00 30 94 e5                                      ldr r3, [r4]
0088d9f8  d2 00 8c e1                                      ldrd r0, r1, [ip, r2]
0088d9fc  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088da00  44 70 a0 e3                                      mov r7, #0x44
0088da04  97 32 27 e0                                      mla r7, r7, r2, r3
0088da08  24 03 ea eb                                      bl #0x30e6a0
0088da0c  1c 00 87 e5                                      str r0, [r7, #0x1c]
0088da10  10 20 9d e5                                      ldr r2, [sp, #0x10]
0088da14  05 00 a0 e1                                      mov r0, r5
0088da18  02 10 8f e0                                      add r1, pc, r2
0088da1c  06 20 a0 e1                                      mov r2, r6
0088da20  51 1f f2 eb                                      bl #0x51576c
0088da24  00 00 50 e3                                      cmp r0, #0
0088da28  09 00 00 1a                                      bne #0x88da54
0088da2c  ae 24 a0 e3                                      mov r2, #0xae000000
0088da30  42 2b a0 e1                                      asr r2, r2, #0x16
0088da34  02 cc 8d e2                                      add ip, sp, #0x200
0088da38  00 30 94 e5                                      ldr r3, [r4]
0088da3c  d2 00 8c e1                                      ldrd r0, r1, [ip, r2]
0088da40  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088da44  44 70 a0 e3                                      mov r7, #0x44
0088da48  97 32 27 e0                                      mla r7, r7, r2, r3
0088da4c  13 03 ea eb                                      bl #0x30e6a0
0088da50  20 00 87 e5                                      str r0, [r7, #0x20]
0088da54  14 20 9d e5                                      ldr r2, [sp, #0x14]
0088da58  05 00 a0 e1                                      mov r0, r5
0088da5c  02 10 8f e0                                      add r1, pc, r2
0088da60  06 20 a0 e1                                      mov r2, r6
0088da64  40 1f f2 eb                                      bl #0x51576c
0088da68  00 00 50 e3                                      cmp r0, #0
0088da6c  09 00 00 1a                                      bne #0x88da98
0088da70  ae 24 a0 e3                                      mov r2, #0xae000000
0088da74  42 2b a0 e1                                      asr r2, r2, #0x16
0088da78  02 cc 8d e2                                      add ip, sp, #0x200
0088da7c  00 30 94 e5                                      ldr r3, [r4]
0088da80  d2 00 8c e1                                      ldrd r0, r1, [ip, r2]
0088da84  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088da88  44 70 a0 e3                                      mov r7, #0x44
0088da8c  97 32 27 e0                                      mla r7, r7, r2, r3
0088da90  02 03 ea eb                                      bl #0x30e6a0
0088da94  24 00 87 e5                                      str r0, [r7, #0x24]
0088da98  20 20 9d e5                                      ldr r2, [sp, #0x20]
0088da9c  05 00 a0 e1                                      mov r0, r5
0088daa0  02 10 8f e0                                      add r1, pc, r2
0088daa4  06 20 a0 e1                                      mov r2, r6
0088daa8  2f 1f f2 eb                                      bl #0x51576c
0088daac  00 00 50 e3                                      cmp r0, #0
0088dab0  09 00 00 1a                                      bne #0x88dadc
0088dab4  ae 24 a0 e3                                      mov r2, #0xae000000
0088dab8  42 2b a0 e1                                      asr r2, r2, #0x16
0088dabc  02 cc 8d e2                                      add ip, sp, #0x200
0088dac0  00 30 94 e5                                      ldr r3, [r4]
0088dac4  d2 00 8c e1                                      ldrd r0, r1, [ip, r2]
0088dac8  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088dacc  44 70 a0 e3                                      mov r7, #0x44
0088dad0  97 32 27 e0                                      mla r7, r7, r2, r3
0088dad4  f1 02 ea eb                                      bl #0x30e6a0
0088dad8  28 00 87 e5                                      str r0, [r7, #0x28]
0088dadc  24 20 9d e5                                      ldr r2, [sp, #0x24]
0088dae0  05 00 a0 e1                                      mov r0, r5
0088dae4  02 10 8f e0                                      add r1, pc, r2
0088dae8  06 20 a0 e1                                      mov r2, r6
0088daec  1e 1f f2 eb                                      bl #0x51576c
0088daf0  00 00 50 e3                                      cmp r0, #0
0088daf4  09 00 00 1a                                      bne #0x88db20
0088daf8  ae 24 a0 e3                                      mov r2, #0xae000000
0088dafc  42 2b a0 e1                                      asr r2, r2, #0x16
0088db00  02 cc 8d e2                                      add ip, sp, #0x200
0088db04  00 30 94 e5                                      ldr r3, [r4]
0088db08  d2 00 8c e1                                      ldrd r0, r1, [ip, r2]
0088db0c  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088db10  44 70 a0 e3                                      mov r7, #0x44
0088db14  97 32 27 e0                                      mla r7, r7, r2, r3
0088db18  e0 02 ea eb                                      bl #0x30e6a0
0088db1c  2c 00 87 e5                                      str r0, [r7, #0x2c]
0088db20  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0088db24  05 00 a0 e1                                      mov r0, r5
0088db28  02 10 8f e0                                      add r1, pc, r2
0088db2c  06 20 a0 e1                                      mov r2, r6
0088db30  0d 1f f2 eb                                      bl #0x51576c
0088db34  00 00 50 e3                                      cmp r0, #0
0088db38  09 00 00 1a                                      bne #0x88db64
0088db3c  ae 24 a0 e3                                      mov r2, #0xae000000
0088db40  42 2b a0 e1                                      asr r2, r2, #0x16
0088db44  02 cc 8d e2                                      add ip, sp, #0x200
0088db48  00 30 94 e5                                      ldr r3, [r4]
0088db4c  d2 00 8c e1                                      ldrd r0, r1, [ip, r2]
0088db50  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088db54  44 70 a0 e3                                      mov r7, #0x44
0088db58  97 32 27 e0                                      mla r7, r7, r2, r3
0088db5c  cf 02 ea eb                                      bl #0x30e6a0
0088db60  30 00 87 e5                                      str r0, [r7, #0x30]
0088db64  30 20 9d e5                                      ldr r2, [sp, #0x30]
0088db68  05 00 a0 e1                                      mov r0, r5
0088db6c  02 10 8f e0                                      add r1, pc, r2
0088db70  06 20 a0 e1                                      mov r2, r6
0088db74  fc 1e f2 eb                                      bl #0x51576c
0088db78  00 00 50 e3                                      cmp r0, #0
0088db7c  09 00 00 1a                                      bne #0x88dba8
0088db80  ae 24 a0 e3                                      mov r2, #0xae000000
0088db84  42 2b a0 e1                                      asr r2, r2, #0x16
0088db88  02 cc 8d e2                                      add ip, sp, #0x200
0088db8c  00 30 94 e5                                      ldr r3, [r4]
0088db90  d2 00 8c e1                                      ldrd r0, r1, [ip, r2]
0088db94  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088db98  44 70 a0 e3                                      mov r7, #0x44
0088db9c  97 32 27 e0                                      mla r7, r7, r2, r3
0088dba0  be 02 ea eb                                      bl #0x30e6a0
0088dba4  34 00 87 e5                                      str r0, [r7, #0x34]
0088dba8  38 20 9d e5                                      ldr r2, [sp, #0x38]
0088dbac  05 00 a0 e1                                      mov r0, r5
0088dbb0  02 10 8f e0                                      add r1, pc, r2
0088dbb4  06 20 a0 e1                                      mov r2, r6
0088dbb8  eb 1e f2 eb                                      bl #0x51576c
0088dbbc  00 00 50 e3                                      cmp r0, #0
0088dbc0  09 00 00 1a                                      bne #0x88dbec
0088dbc4  ae 24 a0 e3                                      mov r2, #0xae000000
0088dbc8  42 2b a0 e1                                      asr r2, r2, #0x16
0088dbcc  02 cc 8d e2                                      add ip, sp, #0x200
0088dbd0  00 30 94 e5                                      ldr r3, [r4]
0088dbd4  d2 00 8c e1                                      ldrd r0, r1, [ip, r2]
0088dbd8  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088dbdc  44 70 a0 e3                                      mov r7, #0x44
0088dbe0  97 32 27 e0                                      mla r7, r7, r2, r3
0088dbe4  ad 02 ea eb                                      bl #0x30e6a0
0088dbe8  38 00 87 e5                                      str r0, [r7, #0x38]
0088dbec  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0088dbf0  05 00 a0 e1                                      mov r0, r5
0088dbf4  02 10 8f e0                                      add r1, pc, r2
0088dbf8  1c 1c f2 eb                                      bl #0x514c70
0088dbfc  00 70 50 e2                                      subs r7, r0, #0
0088dc00  3a 01 00 0a                                      beq #0x88e0f0
0088dc04  2c 16 9f e5                                      ldr r1, [pc, #0x62c]
0088dc08  05 00 a0 e1                                      mov r0, r5
0088dc0c  08 20 a0 e1                                      mov r2, r8
0088dc10  01 10 8f e0                                      add r1, pc, r1
0088dc14  f5 1e f2 eb                                      bl #0x5157f0
0088dc18  00 00 50 e3                                      cmp r0, #0
0088dc1c  05 00 00 1a                                      bne #0x88dc38
0088dc20  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088dc24  00 30 94 e5                                      ldr r3, [r4]
0088dc28  44 10 a0 e3                                      mov r1, #0x44
0088dc2c  91 32 23 e0                                      mla r3, r1, r2, r3
0088dc30  ec 20 9d e5                                      ldr r2, [sp, #0xec]
0088dc34  3c 20 83 e5                                      str r2, [r3, #0x3c]
0088dc38  00 30 94 e5                                      ldr r3, [r4]
0088dc3c  c8 90 9d e5                                      ldr sb, [sp, #0xc8]
0088dc40  44 b0 a0 e3                                      mov fp, #0x44
0088dc44  9b 39 29 e0                                      mla sb, fp, sb, r3
0088dc48  3c 00 99 e5                                      ldr r0, [sb, #0x3c]
0088dc4c  00 00 50 e3                                      cmp r0, #0
0088dc50  2e 00 00 da                                      ble #0x88dd10
0088dc54  00 01 a0 e1                                      lsl r0, r0, #2
0088dc58  26 0a ea eb                                      bl #0x3104f8
0088dc5c  40 00 89 e5                                      str r0, [sb, #0x40]
0088dc60  00 30 94 e5                                      ldr r3, [r4]
0088dc64  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088dc68  9b 32 23 e0                                      mla r3, fp, r2, r3
0088dc6c  40 a0 93 e5                                      ldr sl, [r3, #0x40]
0088dc70  00 00 5a e3                                      cmp sl, #0
0088dc74  4a 01 00 0a                                      beq #0x88e1a4
0088dc78  07 00 a0 e1                                      mov r0, r7
0088dc7c  74 00 ea eb                                      bl #0x30de54
0088dc80  01 00 80 e2                                      add r0, r0, #1
0088dc84  1b 0a ea eb                                      bl #0x3104f8
0088dc88  00 00 8a e5                                      str r0, [sl]
0088dc8c  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088dc90  00 30 94 e5                                      ldr r3, [r4]
0088dc94  9b 32 23 e0                                      mla r3, fp, r2, r3
0088dc98  40 20 93 e5                                      ldr r2, [r3, #0x40]
0088dc9c  00 00 92 e5                                      ldr r0, [r2]
0088dca0  00 00 50 e3                                      cmp r0, #0
0088dca4  b9 03 00 0a                                      beq #0x88eb90
0088dca8  07 10 a0 e1                                      mov r1, r7
0088dcac  1b 02 ea eb                                      bl #0x30e520
0088dcb0  00 30 94 e5                                      ldr r3, [r4]
0088dcb4  c8 90 9d e5                                      ldr sb, [sp, #0xc8]
0088dcb8  9b 39 29 e0                                      mla sb, fp, sb, r3
0088dcbc  3c 30 99 e5                                      ldr r3, [sb, #0x3c]
0088dcc0  01 00 53 e3                                      cmp r3, #1
0088dcc4  11 00 00 da                                      ble #0x88dd10
0088dcc8  00 a0 a0 e3                                      mov sl, #0
0088dccc  01 70 a0 e3                                      mov r7, #1
0088dcd0  40 90 99 e5                                      ldr sb, [sb, #0x40]
0088dcd4  3b 10 a0 e3                                      mov r1, #0x3b
0088dcd8  0a 00 99 e7                                      ldr r0, [sb, sl]
0088dcdc  d1 03 ea eb                                      bl #0x30ec28
0088dce0  01 30 80 e2                                      add r3, r0, #1
0088dce4  07 31 89 e7                                      str r3, [sb, r7, lsl #2]
0088dce8  00 30 a0 e3                                      mov r3, #0
0088dcec  00 30 c0 e5                                      strb r3, [r0]
0088dcf0  00 30 94 e5                                      ldr r3, [r4]
0088dcf4  c8 90 9d e5                                      ldr sb, [sp, #0xc8]
0088dcf8  01 70 87 e2                                      add r7, r7, #1
0088dcfc  04 a0 8a e2                                      add sl, sl, #4
0088dd00  9b 39 29 e0                                      mla sb, fp, sb, r3
0088dd04  3c 30 99 e5                                      ldr r3, [sb, #0x3c]
0088dd08  07 00 53 e1                                      cmp r3, r7
0088dd0c  ef ff ff ca                                      bgt #0x88dcd0
0088dd10  08 30 99 e5                                      ldr r3, [sb, #8]
0088dd14  00 00 53 e3                                      cmp r3, #0
0088dd18  04 00 00 0a                                      beq #0x88dd30
0088dd1c  08 10 89 e2                                      add r1, sb, #8
0088dd20  74 00 9d e5                                      ldr r0, [sp, #0x74]
0088dd24  ff f3 ff eb                                      bl #0x88ad28
0088dd28  c8 30 9d e5                                      ldr r3, [sp, #0xc8]
0088dd2c  00 30 80 e5                                      str r3, [r0]
0088dd30  05 00 a0 e1                                      mov r0, r5
0088dd34  ca 19 f2 eb                                      bl #0x514464
0088dd38  00 50 50 e2                                      subs r5, r0, #0
0088dd3c  69 fe ff 1a                                      bne #0x88d6e8
0088dd40  f4 64 9f e5                                      ldr r6, [pc, #0x4f4]
0088dd44  f4 54 9f e5                                      ldr r5, [pc, #0x4f4]
0088dd48  34 c0 9d e5                                      ldr ip, [sp, #0x34]
0088dd4c  4e 8f 8d e2                                      add r8, sp, #0x138
0088dd50  06 60 8f e0                                      add r6, pc, r6
0088dd54  05 50 8f e0                                      add r5, pc, r5
0088dd58  08 00 a0 e1                                      mov r0, r8
0088dd5c  06 20 a0 e1                                      mov r2, r6
0088dd60  4d 7f 8d e2                                      add r7, sp, #0x134
0088dd64  4f 1f 8d e2                                      add r1, sp, #0x13c
0088dd68  3c c1 8d e5                                      str ip, [sp, #0x13c]
0088dd6c  36 1c f2 eb                                      bl #0x514e4c
0088dd70  08 10 a0 e1                                      mov r1, r8
0088dd74  05 20 a0 e1                                      mov r2, r5
0088dd78  07 00 a0 e1                                      mov r0, r7
0088dd7c  32 1c f2 eb                                      bl #0x514e4c
0088dd80  07 00 a0 e1                                      mov r0, r7
0088dd84  2f d7 ef eb                                      bl #0x483a48
0088dd88  b4 14 9f e5                                      ldr r1, [pc, #0x4b4]
0088dd8c  13 2e 8d e2                                      add r2, sp, #0x130
0088dd90  a0 70 8d e2                                      add r7, sp, #0xa0
0088dd94  01 10 8f e0                                      add r1, pc, r1
0088dd98  94 1e f2 eb                                      bl #0x5157f0
0088dd9c  30 11 9d e5                                      ldr r1, [sp, #0x130]
0088dda0  07 00 a0 e1                                      mov r0, r7
0088dda4  4a 8f 8d e2                                      add r8, sp, #0x128
0088dda8  01 10 81 e2                                      add r1, r1, #1
0088ddac  34 fa ff eb                                      bl #0x88c684
0088ddb0  07 10 a0 e1                                      mov r1, r7
0088ddb4  08 00 9d e5                                      ldr r0, [sp, #8]
0088ddb8  ac f9 ff eb                                      bl #0x88c470
0088ddbc  07 00 a0 e1                                      mov r0, r7
0088ddc0  31 f9 ff eb                                      bl #0x88c28c
0088ddc4  34 30 9d e5                                      ldr r3, [sp, #0x34]
0088ddc8  06 20 a0 e1                                      mov r2, r6
0088ddcc  08 00 a0 e1                                      mov r0, r8
0088ddd0  4b 1f 8d e2                                      add r1, sp, #0x12c
0088ddd4  49 6f 8d e2                                      add r6, sp, #0x124
0088ddd8  2c 31 8d e5                                      str r3, [sp, #0x12c]
0088dddc  1a 1c f2 eb                                      bl #0x514e4c
0088dde0  05 20 a0 e1                                      mov r2, r5
0088dde4  08 10 a0 e1                                      mov r1, r8
0088dde8  06 00 a0 e1                                      mov r0, r6
0088ddec  16 1c f2 eb                                      bl #0x514e4c
0088ddf0  50 24 9f e5                                      ldr r2, [pc, #0x450]
0088ddf4  12 5e 8d e2                                      add r5, sp, #0x120
0088ddf8  05 00 a0 e1                                      mov r0, r5
0088ddfc  06 10 a0 e1                                      mov r1, r6
0088de00  02 20 8f e0                                      add r2, pc, r2
0088de04  10 1c f2 eb                                      bl #0x514e4c
0088de08  05 00 a0 e1                                      mov r0, r5
0088de0c  0d d7 ef eb                                      bl #0x483a48
0088de10  00 50 50 e2                                      subs r5, r0, #0
0088de14  3c 01 00 0a                                      beq #0x88e30c
0088de18  2c 34 9f e5                                      ldr r3, [pc, #0x42c]
0088de1c  2c a4 9f e5                                      ldr sl, [pc, #0x42c]
0088de20  2c 94 9f e5                                      ldr sb, [pc, #0x42c]
0088de24  03 30 8f e0                                      add r3, pc, r3
0088de28  10 30 8d e5                                      str r3, [sp, #0x10]
0088de2c  24 34 9f e5                                      ldr r3, [pc, #0x424]
0088de30  24 b4 9f e5                                      ldr fp, [pc, #0x424]
0088de34  0a a0 8f e0                                      add sl, pc, sl
0088de38  03 30 8f e0                                      add r3, pc, r3
0088de3c  08 30 8d e5                                      str r3, [sp, #8]
0088de40  18 34 9f e5                                      ldr r3, [pc, #0x418]
0088de44  09 90 8f e0                                      add sb, pc, sb
0088de48  0b b0 8f e0                                      add fp, pc, fp
0088de4c  03 30 8f e0                                      add r3, pc, r3
0088de50  14 30 8d e5                                      str r3, [sp, #0x14]
0088de54  ec 80 8d e2                                      add r8, sp, #0xec
0088de58  38 60 a0 e3                                      mov r6, #0x38
0088de5c  28 00 00 ea                                      b #0x88df04
0088de60  ec 20 9d e5                                      ldr r2, [sp, #0xec]
0088de64  72 00 53 e3                                      cmp r3, #0x72
0088de68  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0088de6c  96 32 23 e0                                      mla r3, r6, r2, r3
0088de70  02 20 a0 03                                      moveq r2, #2
0088de74  00 20 a0 13                                      movne r2, #0
0088de78  34 20 83 e5                                      str r2, [r3, #0x34]
0088de7c  0b 10 a0 e1                                      mov r1, fp
0088de80  05 00 a0 e1                                      mov r0, r5
0088de84  79 1b f2 eb                                      bl #0x514c70
0088de88  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0088de8c  ec 70 9d e5                                      ldr r7, [sp, #0xec]
0088de90  00 10 50 e2                                      subs r1, r0, #0
0088de94  96 37 27 e0                                      mla r7, r6, r7, r3
0088de98  04 70 87 e2                                      add r7, r7, #4
0088de9c  bd 00 00 0a                                      beq #0x88e198
0088dea0  00 10 8d e5                                      str r1, [sp]
0088dea4  ea ff e9 eb                                      bl #0x30de54
0088dea8  00 10 9d e5                                      ldr r1, [sp]
0088deac  00 20 81 e0                                      add r2, r1, r0
0088deb0  07 00 a0 e1                                      mov r0, r7
0088deb4  2d eb ff eb                                      bl #0x888b70
0088deb8  08 10 9d e5                                      ldr r1, [sp, #8]
0088debc  05 00 a0 e1                                      mov r0, r5
0088dec0  6a 1b f2 eb                                      bl #0x514c70
0088dec4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0088dec8  ec 70 9d e5                                      ldr r7, [sp, #0xec]
0088decc  00 10 50 e2                                      subs r1, r0, #0
0088ded0  96 37 27 e0                                      mla r7, r6, r7, r3
0088ded4  1c 70 87 e2                                      add r7, r7, #0x1c
0088ded8  9d 00 00 0a                                      beq #0x88e154
0088dedc  00 10 8d e5                                      str r1, [sp]
0088dee0  db ff e9 eb                                      bl #0x30de54
0088dee4  00 10 9d e5                                      ldr r1, [sp]
0088dee8  00 20 81 e0                                      add r2, r1, r0
0088deec  07 00 a0 e1                                      mov r0, r7
0088def0  1e eb ff eb                                      bl #0x888b70
0088def4  05 00 a0 e1                                      mov r0, r5
0088def8  59 19 f2 eb                                      bl #0x514464
0088defc  00 50 50 e2                                      subs r5, r0, #0
0088df00  01 01 00 0a                                      beq #0x88e30c
0088df04  0a 10 a0 e1                                      mov r1, sl
0088df08  08 20 a0 e1                                      mov r2, r8
0088df0c  05 00 a0 e1                                      mov r0, r5
0088df10  36 1e f2 eb                                      bl #0x5157f0
0088df14  00 00 50 e3                                      cmp r0, #0
0088df18  ec 30 9d 05                                      ldreq r3, [sp, #0xec]
0088df1c  0c 10 94 05                                      ldreq r1, [r4, #0xc]
0088df20  05 00 a0 e1                                      mov r0, r5
0088df24  96 03 02 00                                      muleq r2, r6, r3
0088df28  02 30 81 07                                      streq r3, [r1, r2]
0088df2c  09 10 a0 e1                                      mov r1, sb
0088df30  4e 1b f2 eb                                      bl #0x514c70
0088df34  00 00 50 e3                                      cmp r0, #0
0088df38  cf ff ff 0a                                      beq #0x88de7c
0088df3c  d0 30 d0 e1                                      ldrsb r3, [r0]
0088df40  79 00 53 e3                                      cmp r3, #0x79
0088df44  c5 ff ff 1a                                      bne #0x88de60
0088df48  ec 20 9d e5                                      ldr r2, [sp, #0xec]
0088df4c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0088df50  96 32 23 e0                                      mla r3, r6, r2, r3
0088df54  01 20 a0 e3                                      mov r2, #1
0088df58  34 20 83 e5                                      str r2, [r3, #0x34]
0088df5c  c6 ff ff ea                                      b #0x88de7c
0088df60  24 20 94 e5                                      ldr r2, [r4, #0x24]
0088df64  c8 30 9d e5                                      ldr r3, [sp, #0xc8]
0088df68  2c 10 a0 e3                                      mov r1, #0x2c
0088df6c  91 23 23 e0                                      mla r3, r1, r3, r2
0088df70  14 10 93 e5                                      ldr r1, [r3, #0x14]
0088df74  10 20 93 e5                                      ldr r2, [r3, #0x10]
0088df78  05 00 a0 e1                                      mov r0, r5
0088df7c  01 20 62 e0                                      rsb r2, r2, r1
0088df80  42 21 a0 e1                                      asr r2, r2, #2
0088df84  b2 22 c3 e1                                      strh r2, [r3, #0x22]
0088df88  35 19 f2 eb                                      bl #0x514464
0088df8c  00 50 50 e2                                      subs r5, r0, #0
0088df90  1a 02 00 1a                                      bne #0x88e800
0088df94  28 00 9d e5                                      ldr r0, [sp, #0x28]
0088df98  29 09 ea eb                                      bl #0x310444
0088df9c  04 20 9d e5                                      ldr r2, [sp, #4]
0088dfa0  bc 32 9f e5                                      ldr r3, [pc, #0x2bc]
0088dfa4  34 10 9d e5                                      ldr r1, [sp, #0x34]
0088dfa8  03 30 92 e7                                      ldr r3, [r2, r3]
0088dfac  48 00 81 e2                                      add r0, r1, #0x48
0088dfb0  08 30 83 e2                                      add r3, r3, #8
0088dfb4  74 31 8d e5                                      str r3, [sp, #0x174]
0088dfb8  7b 16 ea eb                                      bl #0x3139ac
0088dfbc  34 00 9d e5                                      ldr r0, [sp, #0x34]
0088dfc0  bb 1a f2 eb                                      bl #0x514ab4
0088dfc4  01 00 a0 e3                                      mov r0, #1
0088dfc8  42 fd ff ea                                      b #0x88d4d8
0088dfcc  00 00 a0 e3                                      mov r0, #0
0088dfd0  40 fd ff ea                                      b #0x88d4d8
0088dfd4  30 60 84 e2                                      add r6, r4, #0x30
0088dfd8  06 00 a0 e1                                      mov r0, r6
0088dfdc  34 10 94 e5                                      ldr r1, [r4, #0x34]
0088dfe0  4d f0 ff eb                                      bl #0x88a11c
0088dfe4  00 30 a0 e3                                      mov r3, #0
0088dfe8  3c 60 84 e5                                      str r6, [r4, #0x3c]
0088dfec  40 30 84 e5                                      str r3, [r4, #0x40]
0088dff0  38 60 84 e5                                      str r6, [r4, #0x38]
0088dff4  34 30 84 e5                                      str r3, [r4, #0x34]
0088dff8  02 fd ff ea                                      b #0x88d408
0088dffc  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088e000  00 30 94 e5                                      ldr r3, [r4]
0088e004  44 10 a0 e3                                      mov r1, #0x44
0088e008  91 32 23 e0                                      mla r3, r1, r2, r3
0088e00c  01 20 a0 e3                                      mov r2, #1
0088e010  14 20 c3 e5                                      strb r2, [r3, #0x14]
0088e014  35 fe ff ea                                      b #0x88d8f0
0088e018  48 12 9f e5                                      ldr r1, [pc, #0x248]
0088e01c  07 00 a0 e1                                      mov r0, r7
0088e020  01 10 8f e0                                      add r1, pc, r1
0088e024  bc 00 ea eb                                      bl #0x30e31c
0088e028  00 00 50 e3                                      cmp r0, #0
0088e02c  34 00 00 1a                                      bne #0x88e104
0088e030  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088e034  00 30 94 e5                                      ldr r3, [r4]
0088e038  44 10 a0 e3                                      mov r1, #0x44
0088e03c  91 32 23 e0                                      mla r3, r1, r2, r3
0088e040  01 20 a0 e3                                      mov r2, #1
0088e044  10 20 83 e5                                      str r2, [r3, #0x10]
0088e048  38 fe ff ea                                      b #0x88d930
0088e04c  00 30 94 e5                                      ldr r3, [r4]
0088e050  c8 a0 9d e5                                      ldr sl, [sp, #0xc8]
0088e054  44 70 a0 e3                                      mov r7, #0x44
0088e058  97 3a 2a e0                                      mla sl, r7, sl, r3
0088e05c  d4 31 da e1                                      ldrsb r3, [sl, #0x14]
0088e060  01 00 73 e3                                      cmn r3, #1
0088e064  47 fe ff 0a                                      beq #0x88d988
0088e068  08 00 9a e5                                      ldr r0, [sl, #8]
0088e06c  78 ff e9 eb                                      bl #0x30de54
0088e070  05 00 80 e2                                      add r0, r0, #5
0088e074  1f 09 ea eb                                      bl #0x3104f8
0088e078  0c 00 8a e5                                      str r0, [sl, #0xc]
0088e07c  00 30 94 e5                                      ldr r3, [r4]
0088e080  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088e084  97 32 23 e0                                      mla r3, r7, r2, r3
0088e088  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0088e08c  00 00 50 e3                                      cmp r0, #0
0088e090  3c fe ff 0a                                      beq #0x88d988
0088e094  08 10 93 e5                                      ldr r1, [r3, #8]
0088e098  20 01 ea eb                                      bl #0x30e520
0088e09c  c8 30 9d e5                                      ldr r3, [sp, #0xc8]
0088e0a0  00 20 94 e5                                      ldr r2, [r4]
0088e0a4  97 23 27 e0                                      mla r7, r7, r3, r2
0088e0a8  d4 31 d7 e1                                      ldrsb r3, [r7, #0x14]
0088e0ac  01 00 53 e3                                      cmp r3, #1
0088e0b0  c9 02 00 0a                                      beq #0x88ebdc
0088e0b4  03 00 53 e3                                      cmp r3, #3
0088e0b8  d0 02 00 0a                                      beq #0x88ec00
0088e0bc  02 00 53 e3                                      cmp r3, #2
0088e0c0  d7 02 00 0a                                      beq #0x88ec24
0088e0c4  04 00 53 e3                                      cmp r3, #4
0088e0c8  2e fe ff 1a                                      bne #0x88d988
0088e0cc  0c 70 97 e5                                      ldr r7, [r7, #0xc]
0088e0d0  07 00 a0 e1                                      mov r0, r7
0088e0d4  5e ff e9 eb                                      bl #0x30de54
0088e0d8  8c 11 9f e5                                      ldr r1, [pc, #0x18c]
0088e0dc  00 00 87 e0                                      add r0, r7, r0
0088e0e0  05 20 a0 e3                                      mov r2, #5
0088e0e4  01 10 8f e0                                      add r1, pc, r1
0088e0e8  de 01 ea eb                                      bl #0x30e868
0088e0ec  25 fe ff ea                                      b #0x88d988
0088e0f0  00 30 94 e5                                      ldr r3, [r4]
0088e0f4  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088e0f8  44 90 a0 e3                                      mov sb, #0x44
0088e0fc  99 32 29 e0                                      mla sb, sb, r2, r3
0088e100  02 ff ff ea                                      b #0x88dd10
0088e104  64 11 9f e5                                      ldr r1, [pc, #0x164]
0088e108  07 00 a0 e1                                      mov r0, r7
0088e10c  01 10 8f e0                                      add r1, pc, r1
0088e110  81 00 ea eb                                      bl #0x30e31c
0088e114  00 00 50 e3                                      cmp r0, #0
0088e118  04 fe ff 1a                                      bne #0x88d930
0088e11c  00 10 94 e5                                      ldr r1, [r4]
0088e120  c8 30 9d e5                                      ldr r3, [sp, #0xc8]
0088e124  44 20 a0 e3                                      mov r2, #0x44
0088e128  92 13 23 e0                                      mla r3, r2, r3, r1
0088e12c  02 20 a0 e3                                      mov r2, #2
0088e130  10 20 83 e5                                      str r2, [r3, #0x10]
0088e134  fd fd ff ea                                      b #0x88d930
0088e138  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088e13c  00 30 94 e5                                      ldr r3, [r4]
0088e140  44 10 a0 e3                                      mov r1, #0x44
0088e144  91 32 23 e0                                      mla r3, r1, r2, r3
0088e148  03 20 a0 e3                                      mov r2, #3
0088e14c  14 20 c3 e5                                      strb r2, [r3, #0x14]
0088e150  e6 fd ff ea                                      b #0x88d8f0
0088e154  01 00 a0 e1                                      mov r0, r1
0088e158  14 10 9d e5                                      ldr r1, [sp, #0x14]
0088e15c  61 ff ff ea                                      b #0x88dee8
0088e160  00 30 94 e5                                      ldr r3, [r4]
0088e164  c8 90 9d e5                                      ldr sb, [sp, #0xc8]
0088e168  44 70 a0 e3                                      mov r7, #0x44
0088e16c  01 00 a0 e3                                      mov r0, #1
0088e170  97 39 29 e0                                      mla sb, r7, sb, r3
0088e174  df 08 ea eb                                      bl #0x3104f8
0088e178  08 00 89 e5                                      str r0, [sb, #8]
0088e17c  00 30 94 e5                                      ldr r3, [r4]
0088e180  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088e184  97 32 23 e0                                      mla r3, r7, r2, r3
0088e188  08 30 93 e5                                      ldr r3, [r3, #8]
0088e18c  00 00 53 e3                                      cmp r3, #0
0088e190  00 a0 c3 15                                      strbne sl, [r3]
0088e194  aa fd ff ea                                      b #0x88d844
0088e198  01 00 a0 e1                                      mov r0, r1
0088e19c  10 10 9d e5                                      ldr r1, [sp, #0x10]
0088e1a0  41 ff ff ea                                      b #0x88deac
0088e1a4  3c a0 83 e5                                      str sl, [r3, #0x3c]
0088e1a8  00 30 94 e5                                      ldr r3, [r4]
0088e1ac  c8 90 9d e5                                      ldr sb, [sp, #0xc8]
0088e1b0  9b 39 29 e0                                      mla sb, fp, sb, r3
0088e1b4  d5 fe ff ea                                      b #0x88dd10
; mapping-symbol data/literal pool
0088e1b8  3c 77 10 00 ac 40 00 00 00 42 08 00 08 42 08 00  .byte 0x3c, 0x77, 0x10, 0x00, 0xac, 0x40, 0x00, 0x00, 0x00, 0x42, 0x08, 0x00, 0x08, 0x42, 0x08, 0x00
0088e1c8  50 81 03 00 b0 52 03 00 b4 3f 05 00 60 40 08 00  .byte 0x50, 0x81, 0x03, 0x00, 0xb0, 0x52, 0x03, 0x00, 0xb4, 0x3f, 0x05, 0x00, 0x60, 0x40, 0x08, 0x00
0088e1d8  38 40 08 00 1c 72 05 00 dc 3f 08 00 14 3e 08 00  .byte 0x38, 0x40, 0x08, 0x00, 0x1c, 0x72, 0x05, 0x00, 0xdc, 0x3f, 0x08, 0x00, 0x14, 0x3e, 0x08, 0x00
0088e1e8  d8 50 03 00 3c 3d 08 00 74 dc 07 00 6c 3c 08 00  .byte 0xd8, 0x50, 0x03, 0x00, 0x3c, 0x3d, 0x08, 0x00, 0x74, 0xdc, 0x07, 0x00, 0x6c, 0x3c, 0x08, 0x00
0088e1f8  90 3e 08 00 14 41 08 00 a0 32 03 00 08 41 08 00  .byte 0x90, 0x3e, 0x08, 0x00, 0x14, 0x41, 0x08, 0x00, 0xa0, 0x32, 0x03, 0x00, 0x08, 0x41, 0x08, 0x00
0088e208  44 3e 08 00 e0 3d 08 00 e8 40 08 00 a4 3d 08 00  .byte 0x44, 0x3e, 0x08, 0x00, 0xe0, 0x3d, 0x08, 0x00, 0xe8, 0x40, 0x08, 0x00, 0xa4, 0x3d, 0x08, 0x00
0088e218  70 3d 08 00 08 3d 08 00 d4 3c 08 00 48 38 08 00  .byte 0x70, 0x3d, 0x08, 0x00, 0x08, 0x3d, 0x08, 0x00, 0xd4, 0x3c, 0x08, 0x00, 0x48, 0x38, 0x08, 0x00
0088e228  a0 3c 08 00 50 36 08 00 48 36 08 00 cc 74 04 00  .byte 0xa0, 0x3c, 0x08, 0x00, 0x50, 0x36, 0x08, 0x00, 0x48, 0x36, 0x08, 0x00, 0xcc, 0x74, 0x04, 0x00
0088e238  60 3c 08 00 e8 39 08 00 2c 3b 08 00 3c 79 03 00  .byte 0x60, 0x3c, 0x08, 0x00, 0xe8, 0x39, 0x08, 0x00, 0x2c, 0x3b, 0x08, 0x00, 0x3c, 0x79, 0x03, 0x00
0088e248  08 39 05 00 e4 d9 03 00 1c 39 08 00 44 3a 08 00  .byte 0x08, 0x39, 0x05, 0x00, 0xe4, 0xd9, 0x03, 0x00, 0x1c, 0x39, 0x08, 0x00, 0x44, 0x3a, 0x08, 0x00
0088e258  b0 32 05 00 48 3a 08 00 bc d9 03 00 30 09 00 00  .byte 0xb0, 0x32, 0x05, 0x00, 0x48, 0x3a, 0x08, 0x00, 0xbc, 0xd9, 0x03, 0x00, 0x30, 0x09, 0x00, 0x00
0088e268  78 37 08 00 ec 36 08 00 9c 36 08 00 1c 34 08 00  .byte 0x78, 0x37, 0x08, 0x00, 0xec, 0x36, 0x08, 0x00, 0x9c, 0x36, 0x08, 0x00, 0x1c, 0x34, 0x08, 0x00
0088e278  60 35 08 00 54 35 08 00 ec d0 07 00 38 35 08 00  .byte 0x60, 0x35, 0x08, 0x00, 0x54, 0x35, 0x08, 0x00, 0xec, 0xd0, 0x07, 0x00, 0x38, 0x35, 0x08, 0x00
0088e288  14 33 08 00 98 34 08 00 68 72 03 00 84 32 08 00  .byte 0x14, 0x33, 0x08, 0x00, 0x98, 0x34, 0x08, 0x00, 0x68, 0x72, 0x03, 0x00, 0x84, 0x32, 0x08, 0x00
0088e298  58 32 08 00 ac 32 08 00 30 33 08 00 fc d2 03 00  .byte 0x58, 0x32, 0x08, 0x00, 0xac, 0x32, 0x08, 0x00, 0x30, 0x33, 0x08, 0x00, 0xfc, 0xd2, 0x03, 0x00
0088e2a8  10 33 08 00 f4 2a 05 00 d8 33 08 00 d8 33 08 00  .byte 0x10, 0x33, 0x08, 0x00, 0xf4, 0x2a, 0x05, 0x00, 0xd8, 0x33, 0x08, 0x00, 0xd8, 0x33, 0x08, 0x00
0088e2b8  e4 33 08 00 64 30 08 00 6c 32 08 00 b4 6f 03 00  .byte 0xe4, 0x33, 0x08, 0x00, 0x64, 0x30, 0x08, 0x00, 0x6c, 0x32, 0x08, 0x00, 0xb4, 0x6f, 0x03, 0x00
0088e2c8  cc 31 08 00 3c 21 05 00 44 2f 08 00 34 cc 07 00  .byte 0xcc, 0x31, 0x08, 0x00, 0x3c, 0x21, 0x05, 0x00, 0x44, 0x2f, 0x08, 0x00, 0x34, 0xcc, 0x07, 0x00
0088e2d8  28 bd 07 00 8c 31 08 00 08 20 08 00 0c 30 08 00  .byte 0x28, 0xbd, 0x07, 0x00, 0x8c, 0x31, 0x08, 0x00, 0x08, 0x20, 0x08, 0x00, 0x0c, 0x30, 0x08, 0x00
0088e2e8  88 31 08 00 64 2e 08 00 70 31 08 00 00 30 08 00  .byte 0x88, 0x31, 0x08, 0x00, 0x64, 0x2e, 0x08, 0x00, 0x70, 0x31, 0x08, 0x00, 0x00, 0x30, 0x08, 0x00
0088e2f8  b4 2f 08 00 50 2e 08 00 c4 2b 08 00 a8 2b 08 00  .byte 0xb4, 0x2f, 0x08, 0x00, 0x50, 0x2e, 0x08, 0x00, 0xc4, 0x2b, 0x08, 0x00, 0xa8, 0x2b, 0x08, 0x00
0088e308  8c 2b 08 00                                      .byte 0x8c, 0x2b, 0x08, 0x00
; decoder-mode: arm
0088e30c  a0 20 1f e5                                      ldr r2, [pc, #-0xa0]
0088e310  34 c0 9d e5                                      ldr ip, [sp, #0x34]
0088e314  46 5f 8d e2                                      add r5, sp, #0x118
0088e318  05 00 a0 e1                                      mov r0, r5
0088e31c  02 20 8f e0                                      add r2, pc, r2
0088e320  47 1f 8d e2                                      add r1, sp, #0x11c
0088e324  1c c1 8d e5                                      str ip, [sp, #0x11c]
0088e328  c7 1a f2 eb                                      bl #0x514e4c
0088e32c  bc 20 1f e5                                      ldr r2, [pc, #-0xbc]
0088e330  45 6f 8d e2                                      add r6, sp, #0x114
0088e334  05 10 a0 e1                                      mov r1, r5
0088e338  02 20 8f e0                                      add r2, pc, r2
0088e33c  06 00 a0 e1                                      mov r0, r6
0088e340  c1 1a f2 eb                                      bl #0x514e4c
0088e344  d0 20 1f e5                                      ldr r2, [pc, #-0xd0]
0088e348  11 5e 8d e2                                      add r5, sp, #0x110
0088e34c  05 00 a0 e1                                      mov r0, r5
0088e350  06 10 a0 e1                                      mov r1, r6
0088e354  02 20 8f e0                                      add r2, pc, r2
0088e358  bb 1a f2 eb                                      bl #0x514e4c
0088e35c  05 00 a0 e1                                      mov r0, r5
0088e360  b8 d5 ef eb                                      bl #0x483a48
0088e364  00 50 50 e2                                      subs r5, r0, #0
0088e368  29 00 00 0a                                      beq #0x88e414
0088e36c  f4 a0 1f e5                                      ldr sl, [pc, #-0xf4]
0088e370  f4 90 1f e5                                      ldr sb, [pc, #-0xf4]
0088e374  17 1e 8d e2                                      add r1, sp, #0x170
0088e378  48 b0 84 e2                                      add fp, r4, #0x48
0088e37c  0a a0 8f e0                                      add sl, pc, sl
0088e380  09 90 8f e0                                      add sb, pc, sb
0088e384  ec 80 8d e2                                      add r8, sp, #0xec
0088e388  79 7f 8d e2                                      add r7, sp, #0x1e4
0088e38c  08 10 8d e5                                      str r1, [sp, #8]
0088e390  04 60 a0 e1                                      mov r6, r4
0088e394  0a 10 a0 e1                                      mov r1, sl
0088e398  05 00 a0 e1                                      mov r0, r5
0088e39c  33 1a f2 eb                                      bl #0x514c70
0088e3a0  09 10 a0 e1                                      mov r1, sb
0088e3a4  00 40 a0 e1                                      mov r4, r0
0088e3a8  08 20 a0 e1                                      mov r2, r8
0088e3ac  05 00 a0 e1                                      mov r0, r5
0088e3b0  0e 1d f2 eb                                      bl #0x5157f0
0088e3b4  00 00 50 e3                                      cmp r0, #0
0088e3b8  10 00 00 1a                                      bne #0x88e400
0088e3bc  00 00 54 e3                                      cmp r4, #0
0088e3c0  0e 00 00 0a                                      beq #0x88e400
0088e3c4  04 10 a0 e1                                      mov r1, r4
0088e3c8  08 20 9d e5                                      ldr r2, [sp, #8]
0088e3cc  07 00 a0 e1                                      mov r0, r7
0088e3d0  d8 83 ff eb                                      bl #0x86f338
0088e3d4  0b 00 a0 e1                                      mov r0, fp
0088e3d8  07 10 a0 e1                                      mov r1, r7
0088e3dc  75 fb ff eb                                      bl #0x88d1b8
0088e3e0  ec 30 9d e5                                      ldr r3, [sp, #0xec]
0088e3e4  00 30 80 e5                                      str r3, [r0]
0088e3e8  f8 01 9d e5                                      ldr r0, [sp, #0x1f8]
0088e3ec  07 00 50 e1                                      cmp r0, r7
0088e3f0  02 00 00 0a                                      beq #0x88e400
0088e3f4  00 00 50 e3                                      cmp r0, #0
0088e3f8  00 00 00 0a                                      beq #0x88e400
0088e3fc  10 08 ea eb                                      bl #0x310444
0088e400  05 00 a0 e1                                      mov r0, r5
0088e404  16 18 f2 eb                                      bl #0x514464
0088e408  00 50 50 e2                                      subs r5, r0, #0
0088e40c  e0 ff ff 1a                                      bne #0x88e394
0088e410  06 40 a0 e1                                      mov r4, r6
0088e414  94 61 1f e5                                      ldr r6, [pc, #-0x194]
0088e418  94 51 1f e5                                      ldr r5, [pc, #-0x194]
0088e41c  34 30 9d e5                                      ldr r3, [sp, #0x34]
0088e420  42 8f 8d e2                                      add r8, sp, #0x108
0088e424  06 60 8f e0                                      add r6, pc, r6
0088e428  05 50 8f e0                                      add r5, pc, r5
0088e42c  08 00 a0 e1                                      mov r0, r8
0088e430  06 20 a0 e1                                      mov r2, r6
0088e434  41 7f 8d e2                                      add r7, sp, #0x104
0088e438  43 1f 8d e2                                      add r1, sp, #0x10c
0088e43c  0c 31 8d e5                                      str r3, [sp, #0x10c]
0088e440  81 1a f2 eb                                      bl #0x514e4c
0088e444  08 10 a0 e1                                      mov r1, r8
0088e448  05 20 a0 e1                                      mov r2, r5
0088e44c  07 00 a0 e1                                      mov r0, r7
0088e450  7d 1a f2 eb                                      bl #0x514e4c
0088e454  07 00 a0 e1                                      mov r0, r7
0088e458  7a d5 ef eb                                      bl #0x483a48
0088e45c  d4 11 1f e5                                      ldr r1, [pc, #-0x1d4]
0088e460  01 2c 8d e2                                      add r2, sp, #0x100
0088e464  94 70 8d e2                                      add r7, sp, #0x94
0088e468  01 10 8f e0                                      add r1, pc, r1
0088e46c  df 1c f2 eb                                      bl #0x5157f0
0088e470  00 11 9d e5                                      ldr r1, [sp, #0x100]
0088e474  07 00 a0 e1                                      mov r0, r7
0088e478  f8 80 8d e2                                      add r8, sp, #0xf8
0088e47c  01 10 81 e2                                      add r1, r1, #1
0088e480  b6 f8 ff eb                                      bl #0x88c760
0088e484  07 10 a0 e1                                      mov r1, r7
0088e488  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0088e48c  f2 f6 ff eb                                      bl #0x88c05c
0088e490  07 00 a0 e1                                      mov r0, r7
0088e494  a4 f6 ff eb                                      bl #0x88bf2c
0088e498  34 c0 9d e5                                      ldr ip, [sp, #0x34]
0088e49c  06 20 a0 e1                                      mov r2, r6
0088e4a0  08 00 a0 e1                                      mov r0, r8
0088e4a4  fc 10 8d e2                                      add r1, sp, #0xfc
0088e4a8  f4 60 8d e2                                      add r6, sp, #0xf4
0088e4ac  fc c0 8d e5                                      str ip, [sp, #0xfc]
0088e4b0  65 1a f2 eb                                      bl #0x514e4c
0088e4b4  05 20 a0 e1                                      mov r2, r5
0088e4b8  08 10 a0 e1                                      mov r1, r8
0088e4bc  06 00 a0 e1                                      mov r0, r6
0088e4c0  61 1a f2 eb                                      bl #0x514e4c
0088e4c4  38 22 1f e5                                      ldr r2, [pc, #-0x238]
0088e4c8  f0 50 8d e2                                      add r5, sp, #0xf0
0088e4cc  05 00 a0 e1                                      mov r0, r5
0088e4d0  06 10 a0 e1                                      mov r1, r6
0088e4d4  02 20 8f e0                                      add r2, pc, r2
0088e4d8  5b 1a f2 eb                                      bl #0x514e4c
0088e4dc  05 00 a0 e1                                      mov r0, r5
0088e4e0  58 d5 ef eb                                      bl #0x483a48
0088e4e4  00 50 50 e2                                      subs r5, r0, #0
0088e4e8  76 00 00 0a                                      beq #0x88e6c8
0088e4ec  5c 32 1f e5                                      ldr r3, [pc, #-0x25c]
0088e4f0  5c 12 1f e5                                      ldr r1, [pc, #-0x25c]
0088e4f4  5c a2 1f e5                                      ldr sl, [pc, #-0x25c]
0088e4f8  03 30 8f e0                                      add r3, pc, r3
0088e4fc  08 30 8d e5                                      str r3, [sp, #8]
0088e500  64 32 1f e5                                      ldr r3, [pc, #-0x264]
0088e504  64 92 1f e5                                      ldr sb, [pc, #-0x264]
0088e508  64 b2 1f e5                                      ldr fp, [pc, #-0x264]
0088e50c  03 30 8f e0                                      add r3, pc, r3
0088e510  24 30 8d e5                                      str r3, [sp, #0x24]
0088e514  6c 32 1f e5                                      ldr r3, [pc, #-0x26c]
0088e518  0c 10 8d e5                                      str r1, [sp, #0xc]
0088e51c  c8 70 8d e2                                      add r7, sp, #0xc8
0088e520  03 30 8f e0                                      add r3, pc, r3
0088e524  10 30 8d e5                                      str r3, [sp, #0x10]
0088e528  7c 32 1f e5                                      ldr r3, [pc, #-0x27c]
0088e52c  ec 80 8d e2                                      add r8, sp, #0xec
0088e530  03 30 8f e0                                      add r3, pc, r3
0088e534  14 30 8d e5                                      str r3, [sp, #0x14]
0088e538  88 32 1f e5                                      ldr r3, [pc, #-0x288]
0088e53c  03 30 8f e0                                      add r3, pc, r3
0088e540  20 30 8d e5                                      str r3, [sp, #0x20]
0088e544  08 00 00 ea                                      b #0x88e56c
0088e548  18 30 94 e5                                      ldr r3, [r4, #0x18]
0088e54c  ec 20 9d e5                                      ldr r2, [sp, #0xec]
0088e550  28 10 a0 e3                                      mov r1, #0x28
0088e554  91 32 23 e0                                      mla r3, r1, r2, r3
0088e558  04 00 83 e5                                      str r0, [r3, #4]
0088e55c  05 00 a0 e1                                      mov r0, r5
0088e560  bf 17 f2 eb                                      bl #0x514464
0088e564  00 50 50 e2                                      subs r5, r0, #0
0088e568  56 00 00 0a                                      beq #0x88e6c8
0088e56c  08 20 a0 e1                                      mov r2, r8
0088e570  08 10 9d e5                                      ldr r1, [sp, #8]
0088e574  05 00 a0 e1                                      mov r0, r5
0088e578  9c 1c f2 eb                                      bl #0x5157f0
0088e57c  00 00 50 e3                                      cmp r0, #0
0088e580  ec 30 9d 05                                      ldreq r3, [sp, #0xec]
0088e584  28 20 a0 03                                      moveq r2, #0x28
0088e588  18 10 94 05                                      ldreq r1, [r4, #0x18]
0088e58c  92 03 02 00                                      muleq r2, r2, r3
0088e590  05 00 a0 e1                                      mov r0, r5
0088e594  02 30 81 07                                      streq r3, [r1, r2]
0088e598  0a 10 8f e0                                      add r1, pc, sl
0088e59c  07 20 a0 e1                                      mov r2, r7
0088e5a0  92 1c f2 eb                                      bl #0x5157f0
0088e5a4  00 00 50 e3                                      cmp r0, #0
0088e5a8  05 00 00 1a                                      bne #0x88e5c4
0088e5ac  ec 20 9d e5                                      ldr r2, [sp, #0xec]
0088e5b0  18 30 94 e5                                      ldr r3, [r4, #0x18]
0088e5b4  28 10 a0 e3                                      mov r1, #0x28
0088e5b8  91 32 23 e0                                      mla r3, r1, r2, r3
0088e5bc  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088e5c0  08 20 83 e5                                      str r2, [r3, #8]
0088e5c4  05 00 a0 e1                                      mov r0, r5
0088e5c8  09 10 8f e0                                      add r1, pc, sb
0088e5cc  07 20 a0 e1                                      mov r2, r7
0088e5d0  86 1c f2 eb                                      bl #0x5157f0
0088e5d4  00 00 50 e3                                      cmp r0, #0
0088e5d8  05 00 00 1a                                      bne #0x88e5f4
0088e5dc  ec 20 9d e5                                      ldr r2, [sp, #0xec]
0088e5e0  18 30 94 e5                                      ldr r3, [r4, #0x18]
0088e5e4  28 10 a0 e3                                      mov r1, #0x28
0088e5e8  91 32 23 e0                                      mla r3, r1, r2, r3
0088e5ec  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088e5f0  0c 20 83 e5                                      str r2, [r3, #0xc]
0088e5f4  0b 10 8f e0                                      add r1, pc, fp
0088e5f8  05 00 a0 e1                                      mov r0, r5
0088e5fc  9b 19 f2 eb                                      bl #0x514c70
0088e600  18 30 94 e5                                      ldr r3, [r4, #0x18]
0088e604  ec 20 9d e5                                      ldr r2, [sp, #0xec]
0088e608  28 60 a0 e3                                      mov r6, #0x28
0088e60c  00 10 50 e2                                      subs r1, r0, #0
0088e610  96 32 26 e0                                      mla r6, r6, r2, r3
0088e614  10 60 86 e2                                      add r6, r6, #0x10
0088e618  27 00 00 0a                                      beq #0x88e6bc
0088e61c  00 10 8d e5                                      str r1, [sp]
0088e620  0b fe e9 eb                                      bl #0x30de54
0088e624  00 10 9d e5                                      ldr r1, [sp]
0088e628  00 20 81 e0                                      add r2, r1, r0
0088e62c  06 00 a0 e1                                      mov r0, r6
0088e630  4e e9 ff eb                                      bl #0x888b70
0088e634  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0088e638  05 00 a0 e1                                      mov r0, r5
0088e63c  02 10 8f e0                                      add r1, pc, r2
0088e640  8a 19 f2 eb                                      bl #0x514c70
0088e644  00 60 50 e2                                      subs r6, r0, #0
0088e648  c3 ff ff 0a                                      beq #0x88e55c
0088e64c  10 10 9d e5                                      ldr r1, [sp, #0x10]
0088e650  31 ff e9 eb                                      bl #0x30e31c
0088e654  00 00 50 e3                                      cmp r0, #0
0088e658  ba ff ff 0a                                      beq #0x88e548
0088e65c  06 00 a0 e1                                      mov r0, r6
0088e660  14 10 9d e5                                      ldr r1, [sp, #0x14]
0088e664  2c ff e9 eb                                      bl #0x30e31c
0088e668  00 00 50 e3                                      cmp r0, #0
0088e66c  06 00 00 1a                                      bne #0x88e68c
0088e670  ec 20 9d e5                                      ldr r2, [sp, #0xec]
0088e674  18 30 94 e5                                      ldr r3, [r4, #0x18]
0088e678  28 10 a0 e3                                      mov r1, #0x28
0088e67c  91 32 23 e0                                      mla r3, r1, r2, r3
0088e680  01 20 a0 e3                                      mov r2, #1
0088e684  04 20 83 e5                                      str r2, [r3, #4]
0088e688  b3 ff ff ea                                      b #0x88e55c
0088e68c  06 00 a0 e1                                      mov r0, r6
0088e690  20 10 9d e5                                      ldr r1, [sp, #0x20]
0088e694  20 ff e9 eb                                      bl #0x30e31c
0088e698  00 00 50 e3                                      cmp r0, #0
0088e69c  ae ff ff 1a                                      bne #0x88e55c
0088e6a0  ec 20 9d e5                                      ldr r2, [sp, #0xec]
0088e6a4  18 30 94 e5                                      ldr r3, [r4, #0x18]
0088e6a8  28 10 a0 e3                                      mov r1, #0x28
0088e6ac  91 32 23 e0                                      mla r3, r1, r2, r3
0088e6b0  02 20 a0 e3                                      mov r2, #2
0088e6b4  04 20 83 e5                                      str r2, [r3, #4]
0088e6b8  a7 ff ff ea                                      b #0x88e55c
0088e6bc  01 00 a0 e1                                      mov r0, r1
0088e6c0  24 10 9d e5                                      ldr r1, [sp, #0x24]
0088e6c4  d7 ff ff ea                                      b #0x88e628
0088e6c8  14 64 1f e5                                      ldr r6, [pc, #-0x414]
0088e6cc  14 54 1f e5                                      ldr r5, [pc, #-0x414]
0088e6d0  34 30 9d e5                                      ldr r3, [sp, #0x34]
0088e6d4  06 60 8f e0                                      add r6, pc, r6
0088e6d8  e4 80 8d e2                                      add r8, sp, #0xe4
0088e6dc  05 50 8f e0                                      add r5, pc, r5
0088e6e0  06 20 a0 e1                                      mov r2, r6
0088e6e4  e0 70 8d e2                                      add r7, sp, #0xe0
0088e6e8  08 00 a0 e1                                      mov r0, r8
0088e6ec  e8 10 8d e2                                      add r1, sp, #0xe8
0088e6f0  e8 30 8d e5                                      str r3, [sp, #0xe8]
0088e6f4  d4 19 f2 eb                                      bl #0x514e4c
0088e6f8  05 20 a0 e1                                      mov r2, r5
0088e6fc  08 10 a0 e1                                      mov r1, r8
0088e700  07 00 a0 e1                                      mov r0, r7
0088e704  d0 19 f2 eb                                      bl #0x514e4c
0088e708  07 00 a0 e1                                      mov r0, r7
0088e70c  cd d4 ef eb                                      bl #0x483a48
0088e710  54 14 1f e5                                      ldr r1, [pc, #-0x454]
0088e714  dc 20 8d e2                                      add r2, sp, #0xdc
0088e718  88 70 8d e2                                      add r7, sp, #0x88
0088e71c  01 10 8f e0                                      add r1, pc, r1
0088e720  32 1c f2 eb                                      bl #0x5157f0
0088e724  07 00 a0 e1                                      mov r0, r7
0088e728  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
0088e72c  f3 f2 ff eb                                      bl #0x88b300
0088e730  07 10 a0 e1                                      mov r1, r7
0088e734  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0088e738  34 f3 ff eb                                      bl #0x88b410
0088e73c  07 00 a0 e1                                      mov r0, r7
0088e740  1a ef ff eb                                      bl #0x88a3b0
0088e744  34 c0 9d e5                                      ldr ip, [sp, #0x34]
0088e748  d4 70 8d e2                                      add r7, sp, #0xd4
0088e74c  06 20 a0 e1                                      mov r2, r6
0088e750  07 00 a0 e1                                      mov r0, r7
0088e754  d8 10 8d e2                                      add r1, sp, #0xd8
0088e758  d0 60 8d e2                                      add r6, sp, #0xd0
0088e75c  d8 c0 8d e5                                      str ip, [sp, #0xd8]
0088e760  b9 19 f2 eb                                      bl #0x514e4c
0088e764  05 20 a0 e1                                      mov r2, r5
0088e768  07 10 a0 e1                                      mov r1, r7
0088e76c  06 00 a0 e1                                      mov r0, r6
0088e770  b5 19 f2 eb                                      bl #0x514e4c
0088e774  b4 24 1f e5                                      ldr r2, [pc, #-0x4b4]
0088e778  cc 50 8d e2                                      add r5, sp, #0xcc
0088e77c  05 00 a0 e1                                      mov r0, r5
0088e780  06 10 a0 e1                                      mov r1, r6
0088e784  02 20 8f e0                                      add r2, pc, r2
0088e788  af 19 f2 eb                                      bl #0x514e4c
0088e78c  05 00 a0 e1                                      mov r0, r5
0088e790  ac d4 ef eb                                      bl #0x483a48
0088e794  00 50 50 e2                                      subs r5, r0, #0
0088e798  fd fd ff 0a                                      beq #0x88df94
0088e79c  d8 34 1f e5                                      ldr r3, [pc, #-0x4d8]
0088e7a0  d8 14 1f e5                                      ldr r1, [pc, #-0x4d8]
0088e7a4  d8 24 1f e5                                      ldr r2, [pc, #-0x4d8]
0088e7a8  14 30 8d e5                                      str r3, [sp, #0x14]
0088e7ac  dc 34 1f e5                                      ldr r3, [pc, #-0x4dc]
0088e7b0  10 10 8d e5                                      str r1, [sp, #0x10]
0088e7b4  08 20 8d e5                                      str r2, [sp, #8]
0088e7b8  03 30 8f e0                                      add r3, pc, r3
0088e7bc  2c 30 8d e5                                      str r3, [sp, #0x2c]
0088e7c0  ec 34 1f e5                                      ldr r3, [pc, #-0x4ec]
0088e7c4  ec c4 1f e5                                      ldr ip, [pc, #-0x4ec]
0088e7c8  ec 14 1f e5                                      ldr r1, [pc, #-0x4ec]
0088e7cc  03 30 8f e0                                      add r3, pc, r3
0088e7d0  38 30 8d e5                                      str r3, [sp, #0x38]
0088e7d4  f4 34 1f e5                                      ldr r3, [pc, #-0x4f4]
0088e7d8  f4 24 1f e5                                      ldr r2, [pc, #-0x4f4]
0088e7dc  f4 64 1f e5                                      ldr r6, [pc, #-0x4f4]
0088e7e0  03 30 8f e0                                      add r3, pc, r3
0088e7e4  c8 70 8d e2                                      add r7, sp, #0xc8
0088e7e8  20 c0 8d e5                                      str ip, [sp, #0x20]
0088e7ec  1c 10 8d e5                                      str r1, [sp, #0x1c]
0088e7f0  0c 20 8d e5                                      str r2, [sp, #0xc]
0088e7f4  30 30 8d e5                                      str r3, [sp, #0x30]
0088e7f8  06 60 8f e0                                      add r6, pc, r6
0088e7fc  24 70 8d e5                                      str r7, [sp, #0x24]
0088e800  10 30 9d e5                                      ldr r3, [sp, #0x10]
0088e804  24 20 9d e5                                      ldr r2, [sp, #0x24]
0088e808  05 00 a0 e1                                      mov r0, r5
0088e80c  03 10 8f e0                                      add r1, pc, r3
0088e810  f6 1b f2 eb                                      bl #0x5157f0
0088e814  00 00 50 e3                                      cmp r0, #0
0088e818  c8 30 9d 05                                      ldreq r3, [sp, #0xc8]
0088e81c  2c 20 a0 03                                      moveq r2, #0x2c
0088e820  24 10 94 05                                      ldreq r1, [r4, #0x24]
0088e824  92 03 02 00                                      muleq r2, r2, r3
0088e828  05 00 a0 e1                                      mov r0, r5
0088e82c  02 30 81 07                                      streq r3, [r1, r2]
0088e830  08 c0 9d e5                                      ldr ip, [sp, #8]
0088e834  0c 10 8f e0                                      add r1, pc, ip
0088e838  0c 19 f2 eb                                      bl #0x514c70
0088e83c  00 80 50 e2                                      subs r8, r0, #0
0088e840  bf 00 00 0a                                      beq #0x88eb44
0088e844  24 30 94 e5                                      ldr r3, [r4, #0x24]
0088e848  c8 a0 9d e5                                      ldr sl, [sp, #0xc8]
0088e84c  2c 70 a0 e3                                      mov r7, #0x2c
0088e850  97 3a 2a e0                                      mla sl, r7, sl, r3
0088e854  7e fd e9 eb                                      bl #0x30de54
0088e858  01 00 80 e2                                      add r0, r0, #1
0088e85c  25 07 ea eb                                      bl #0x3104f8
0088e860  04 00 8a e5                                      str r0, [sl, #4]
0088e864  24 30 94 e5                                      ldr r3, [r4, #0x24]
0088e868  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088e86c  97 32 27 e0                                      mla r7, r7, r2, r3
0088e870  04 00 97 e5                                      ldr r0, [r7, #4]
0088e874  00 00 50 e3                                      cmp r0, #0
0088e878  01 00 00 0a                                      beq #0x88e884
0088e87c  08 10 a0 e1                                      mov r1, r8
0088e880  26 ff e9 eb                                      bl #0x30e520
0088e884  14 20 9d e5                                      ldr r2, [sp, #0x14]
0088e888  05 00 a0 e1                                      mov r0, r5
0088e88c  02 10 8f e0                                      add r1, pc, r2
0088e890  f6 18 f2 eb                                      bl #0x514c70
0088e894  00 70 50 e2                                      subs r7, r0, #0
0088e898  08 00 00 0a                                      beq #0x88e8c0
0088e89c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0088e8a0  9d fe e9 eb                                      bl #0x30e31c
0088e8a4  00 00 50 e3                                      cmp r0, #0
0088e8a8  94 00 00 1a                                      bne #0x88eb00
0088e8ac  24 30 94 e5                                      ldr r3, [r4, #0x24]
0088e8b0  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088e8b4  2c 10 a0 e3                                      mov r1, #0x2c
0088e8b8  91 32 23 e0                                      mla r3, r1, r2, r3
0088e8bc  bc 01 c3 e1                                      strh r0, [r3, #0x1c]
0088e8c0  20 20 9d e5                                      ldr r2, [sp, #0x20]
0088e8c4  05 00 a0 e1                                      mov r0, r5
0088e8c8  02 10 8f e0                                      add r1, pc, r2
0088e8cc  e7 18 f2 eb                                      bl #0x514c70
0088e8d0  00 00 50 e3                                      cmp r0, #0
0088e8d4  20 00 00 0a                                      beq #0x88e95c
0088e8d8  30 10 9d e5                                      ldr r1, [sp, #0x30]
0088e8dc  d1 fd e9 eb                                      bl #0x30e028
0088e8e0  00 00 50 e3                                      cmp r0, #0
0088e8e4  1c 00 00 0a                                      beq #0x88e95c
0088e8e8  2c 70 a0 e3                                      mov r7, #0x2c
0088e8ec  c4 80 8d e2                                      add r8, sp, #0xc4
0088e8f0  08 00 00 ea                                      b #0x88e918
0088e8f4  00 00 81 e5                                      str r0, [r1]
0088e8f8  14 30 9a e5                                      ldr r3, [sl, #0x14]
0088e8fc  00 00 a0 e3                                      mov r0, #0
0088e900  06 10 a0 e1                                      mov r1, r6
0088e904  04 30 83 e2                                      add r3, r3, #4
0088e908  14 30 8a e5                                      str r3, [sl, #0x14]
0088e90c  c5 fd e9 eb                                      bl #0x30e028
0088e910  00 00 50 e3                                      cmp r0, #0
0088e914  10 00 00 0a                                      beq #0x88e95c
0088e918  24 30 94 e5                                      ldr r3, [r4, #0x24]
0088e91c  c8 a0 9d e5                                      ldr sl, [sp, #0xc8]
0088e920  97 3a 2a e0                                      mla sl, r7, sl, r3
0088e924  da fd e9 eb                                      bl #0x30e094
0088e928  c4 00 8d e5                                      str r0, [sp, #0xc4]
0088e92c  14 10 9a e5                                      ldr r1, [sl, #0x14]
0088e930  18 30 9a e5                                      ldr r3, [sl, #0x18]
0088e934  03 00 51 e1                                      cmp r1, r3
0088e938  ed ff ff 1a                                      bne #0x88e8f4
0088e93c  10 00 8a e2                                      add r0, sl, #0x10
0088e940  08 20 a0 e1                                      mov r2, r8
0088e944  5c f4 ff eb                                      bl #0x88babc
0088e948  00 00 a0 e3                                      mov r0, #0
0088e94c  06 10 a0 e1                                      mov r1, r6
0088e950  b4 fd e9 eb                                      bl #0x30e028
0088e954  00 00 50 e3                                      cmp r0, #0
0088e958  ee ff ff 1a                                      bne #0x88e918
0088e95c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0088e960  05 00 a0 e1                                      mov r0, r5
0088e964  03 10 8f e0                                      add r1, pc, r3
0088e968  c0 18 f2 eb                                      bl #0x514c70
0088e96c  00 00 50 e3                                      cmp r0, #0
0088e970  1f 00 00 0a                                      beq #0x88e9f4
0088e974  88 16 1f e5                                      ldr r1, [pc, #-0x688]
0088e978  01 10 8f e0                                      add r1, pc, r1
0088e97c  a9 fd e9 eb                                      bl #0x30e028
0088e980  00 00 50 e3                                      cmp r0, #0
0088e984  1a 00 00 0a                                      beq #0x88e9f4
0088e988  c1 fd e9 eb                                      bl #0x30e094
0088e98c  24 20 94 e5                                      ldr r2, [r4, #0x24]
0088e990  c8 30 9d e5                                      ldr r3, [sp, #0xc8]
0088e994  2c 10 a0 e3                                      mov r1, #0x2c
0088e998  91 23 23 e0                                      mla r3, r1, r3, r2
0088e99c  14 10 93 e5                                      ldr r1, [r3, #0x14]
0088e9a0  10 20 93 e5                                      ldr r2, [r3, #0x10]
0088e9a4  01 20 62 e0                                      rsb r2, r2, r1
0088e9a8  42 21 a0 e1                                      asr r2, r2, #2
0088e9ac  bc 16 1f e5                                      ldr r1, [pc, #-0x6bc]
0088e9b0  02 00 50 e1                                      cmp r0, r2
0088e9b4  70 20 ff b6                                      uxthlt r2, r0
0088e9b8  72 20 ff a6                                      uxthge r2, r2
0088e9bc  be 21 c3 e1                                      strh r2, [r3, #0x1e]
0088e9c0  00 00 a0 e3                                      mov r0, #0
0088e9c4  01 10 8f e0                                      add r1, pc, r1
0088e9c8  96 fd e9 eb                                      bl #0x30e028
0088e9cc  00 00 50 e3                                      cmp r0, #0
0088e9d0  07 00 00 0a                                      beq #0x88e9f4
0088e9d4  ae fd e9 eb                                      bl #0x30e094
0088e9d8  24 30 94 e5                                      ldr r3, [r4, #0x24]
0088e9dc  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088e9e0  2c 10 a0 e3                                      mov r1, #0x2c
0088e9e4  64 00 50 e3                                      cmp r0, #0x64
0088e9e8  64 00 a0 a3                                      movge r0, #0x64
0088e9ec  91 32 23 e0                                      mla r3, r1, r2, r3
0088e9f0  b0 02 c3 e1                                      strh r0, [r3, #0x20]
0088e9f4  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0088e9f8  05 00 a0 e1                                      mov r0, r5
0088e9fc  0c 10 8f e0                                      add r1, pc, ip
0088ea00  9a 18 f2 eb                                      bl #0x514c70
0088ea04  00 70 50 e2                                      subs r7, r0, #0
0088ea08  54 fd ff 0a                                      beq #0x88df60
0088ea0c  24 30 94 e5                                      ldr r3, [r4, #0x24]
0088ea10  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088ea14  2c b0 a0 e3                                      mov fp, #0x2c
0088ea18  24 17 1f e5                                      ldr r1, [pc, #-0x724]
0088ea1c  9b 32 22 e0                                      mla r2, fp, r2, r3
0088ea20  01 10 8f e0                                      add r1, pc, r1
0088ea24  24 20 82 e2                                      add r2, r2, #0x24
0088ea28  05 00 a0 e1                                      mov r0, r5
0088ea2c  6f 1b f2 eb                                      bl #0x5157f0
0088ea30  24 30 94 e5                                      ldr r3, [r4, #0x24]
0088ea34  c8 80 9d e5                                      ldr r8, [sp, #0xc8]
0088ea38  9b 38 28 e0                                      mla r8, fp, r8, r3
0088ea3c  24 00 98 e5                                      ldr r0, [r8, #0x24]
0088ea40  00 01 a0 e1                                      lsl r0, r0, #2
0088ea44  ab 06 ea eb                                      bl #0x3104f8
0088ea48  28 00 88 e5                                      str r0, [r8, #0x28]
0088ea4c  24 30 94 e5                                      ldr r3, [r4, #0x24]
0088ea50  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088ea54  9b 32 23 e0                                      mla r3, fp, r2, r3
0088ea58  28 80 93 e5                                      ldr r8, [r3, #0x28]
0088ea5c  00 00 58 e3                                      cmp r8, #0
0088ea60  32 00 00 0a                                      beq #0x88eb30
0088ea64  07 00 a0 e1                                      mov r0, r7
0088ea68  f9 fc e9 eb                                      bl #0x30de54
0088ea6c  01 00 80 e2                                      add r0, r0, #1
0088ea70  a0 06 ea eb                                      bl #0x3104f8
0088ea74  00 00 88 e5                                      str r0, [r8]
0088ea78  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088ea7c  24 30 94 e5                                      ldr r3, [r4, #0x24]
0088ea80  9b 32 23 e0                                      mla r3, fp, r2, r3
0088ea84  28 20 93 e5                                      ldr r2, [r3, #0x28]
0088ea88  00 00 92 e5                                      ldr r0, [r2]
0088ea8c  00 00 50 e3                                      cmp r0, #0
0088ea90  39 00 00 0a                                      beq #0x88eb7c
0088ea94  07 10 a0 e1                                      mov r1, r7
0088ea98  a0 fe e9 eb                                      bl #0x30e520
0088ea9c  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088eaa0  24 30 94 e5                                      ldr r3, [r4, #0x24]
0088eaa4  9b 32 23 e0                                      mla r3, fp, r2, r3
0088eaa8  24 20 93 e5                                      ldr r2, [r3, #0x24]
0088eaac  01 00 52 e3                                      cmp r2, #1
0088eab0  2e fd ff da                                      ble #0x88df70
0088eab4  00 80 a0 e3                                      mov r8, #0
0088eab8  01 70 a0 e3                                      mov r7, #1
0088eabc  08 90 a0 e1                                      mov sb, r8
0088eac0  28 a0 93 e5                                      ldr sl, [r3, #0x28]
0088eac4  3b 10 a0 e3                                      mov r1, #0x3b
0088eac8  08 00 9a e7                                      ldr r0, [sl, r8]
0088eacc  55 00 ea eb                                      bl #0x30ec28
0088ead0  01 30 80 e2                                      add r3, r0, #1
0088ead4  07 31 8a e7                                      str r3, [sl, r7, lsl #2]
0088ead8  00 90 c0 e5                                      strb sb, [r0]
0088eadc  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088eae0  24 30 94 e5                                      ldr r3, [r4, #0x24]
0088eae4  01 70 87 e2                                      add r7, r7, #1
0088eae8  04 80 88 e2                                      add r8, r8, #4
0088eaec  9b 32 23 e0                                      mla r3, fp, r2, r3
0088eaf0  24 20 93 e5                                      ldr r2, [r3, #0x24]
0088eaf4  07 00 52 e1                                      cmp r2, r7
0088eaf8  f0 ff ff ca                                      bgt #0x88eac0
0088eafc  1b fd ff ea                                      b #0x88df70
0088eb00  07 00 a0 e1                                      mov r0, r7
0088eb04  38 10 9d e5                                      ldr r1, [sp, #0x38]
0088eb08  03 fe e9 eb                                      bl #0x30e31c
0088eb0c  00 00 50 e3                                      cmp r0, #0
0088eb10  6a ff ff 1a                                      bne #0x88e8c0
0088eb14  24 30 94 e5                                      ldr r3, [r4, #0x24]
0088eb18  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088eb1c  2c 10 a0 e3                                      mov r1, #0x2c
0088eb20  01 c0 a0 e3                                      mov ip, #1
0088eb24  91 32 23 e0                                      mla r3, r1, r2, r3
0088eb28  bc c1 c3 e1                                      strh ip, [r3, #0x1c]
0088eb2c  63 ff ff ea                                      b #0x88e8c0
0088eb30  24 80 83 e5                                      str r8, [r3, #0x24]
0088eb34  24 30 94 e5                                      ldr r3, [r4, #0x24]
0088eb38  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088eb3c  9b 32 23 e0                                      mla r3, fp, r2, r3
0088eb40  0a fd ff ea                                      b #0x88df70
0088eb44  24 30 94 e5                                      ldr r3, [r4, #0x24]
0088eb48  c8 a0 9d e5                                      ldr sl, [sp, #0xc8]
0088eb4c  2c 70 a0 e3                                      mov r7, #0x2c
0088eb50  01 00 a0 e3                                      mov r0, #1
0088eb54  97 3a 2a e0                                      mla sl, r7, sl, r3
0088eb58  66 06 ea eb                                      bl #0x3104f8
0088eb5c  04 00 8a e5                                      str r0, [sl, #4]
0088eb60  24 30 94 e5                                      ldr r3, [r4, #0x24]
0088eb64  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088eb68  97 32 23 e0                                      mla r3, r7, r2, r3
0088eb6c  04 30 93 e5                                      ldr r3, [r3, #4]
0088eb70  00 00 53 e3                                      cmp r3, #0
0088eb74  00 80 c3 15                                      strbne r8, [r3]
0088eb78  41 ff ff ea                                      b #0x88e884
0088eb7c  24 00 83 e5                                      str r0, [r3, #0x24]
0088eb80  24 30 94 e5                                      ldr r3, [r4, #0x24]
0088eb84  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
0088eb88  9b 32 23 e0                                      mla r3, fp, r2, r3
0088eb8c  f7 fc ff ea                                      b #0x88df70
0088eb90  3c 00 83 e5                                      str r0, [r3, #0x3c]
0088eb94  00 30 94 e5                                      ldr r3, [r4]
0088eb98  c8 90 9d e5                                      ldr sb, [sp, #0xc8]
0088eb9c  9b 39 29 e0                                      mla sb, fp, sb, r3
0088eba0  5a fc ff ea                                      b #0x88dd10
0088eba4  06 00 a0 e1                                      mov r0, r6
0088eba8  05 10 a0 e1                                      mov r1, r5
0088ebac  00 30 96 e5                                      ldr r3, [r6]
0088ebb0  0f e0 a0 e1                                      mov lr, pc
0088ebb4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0088ebb8  28 00 9d e5                                      ldr r0, [sp, #0x28]
0088ebbc  45 fa ff ea                                      b #0x88d4d8
0088ebc0  c8 30 9d e5                                      ldr r3, [sp, #0xc8]
0088ebc4  00 10 94 e5                                      ldr r1, [r4]
0088ebc8  44 20 a0 e3                                      mov r2, #0x44
0088ebcc  92 13 22 e0                                      mla r2, r2, r3, r1
0088ebd0  02 30 a0 e3                                      mov r3, #2
0088ebd4  14 30 c2 e5                                      strb r3, [r2, #0x14]
0088ebd8  44 fb ff ea                                      b #0x88d8f0
0088ebdc  0c 70 97 e5                                      ldr r7, [r7, #0xc]
0088ebe0  07 00 a0 e1                                      mov r0, r7
0088ebe4  9a fc e9 eb                                      bl #0x30de54
0088ebe8  f0 18 1f e5                                      ldr r1, [pc, #-0x8f0]
0088ebec  00 00 87 e0                                      add r0, r7, r0
0088ebf0  05 20 a0 e3                                      mov r2, #5
0088ebf4  01 10 8f e0                                      add r1, pc, r1
0088ebf8  1a ff e9 eb                                      bl #0x30e868
0088ebfc  61 fb ff ea                                      b #0x88d988
0088ec00  0c 70 97 e5                                      ldr r7, [r7, #0xc]
0088ec04  07 00 a0 e1                                      mov r0, r7
0088ec08  91 fc e9 eb                                      bl #0x30de54
0088ec0c  10 19 1f e5                                      ldr r1, [pc, #-0x910]
0088ec10  00 00 87 e0                                      add r0, r7, r0
0088ec14  05 20 a0 e3                                      mov r2, #5
0088ec18  01 10 8f e0                                      add r1, pc, r1
0088ec1c  11 ff e9 eb                                      bl #0x30e868
0088ec20  58 fb ff ea                                      b #0x88d988
0088ec24  0c 70 97 e5                                      ldr r7, [r7, #0xc]
0088ec28  07 00 a0 e1                                      mov r0, r7
0088ec2c  88 fc e9 eb                                      bl #0x30de54
0088ec30  30 19 1f e5                                      ldr r1, [pc, #-0x930]
0088ec34  00 00 87 e0                                      add r0, r7, r0
0088ec38  05 20 a0 e3                                      mov r2, #5
0088ec3c  01 10 8f e0                                      add r1, pc, r1
0088ec40  08 ff e9 eb                                      bl #0x30e868
0088ec44  4f fb ff ea                                      b #0x88d988
0088ec48  b0 fd e9 eb                                      bl #0x30e310

; FUNCTION 0x0088ec4c, declared_size=120, range_size=120, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZN3vox15VoxSoundPackXMLC1EPKc
; demangled: vox::VoxSoundPackXML::VoxSoundPackXML(char const*)
; decoder-mode: arm
0088ec4c  00 30 a0 e3                                      mov r3, #0
0088ec50  00 c0 a0 e1                                      mov ip, r0
0088ec54  10 40 2d e9                                      push {r4, lr}
0088ec58  00 20 a0 e1                                      mov r2, r0
0088ec5c  00 30 80 e5                                      str r3, [r0]
0088ec60  04 30 80 e5                                      str r3, [r0, #4]
0088ec64  08 30 80 e5                                      str r3, [r0, #8]
0088ec68  0c 30 80 e5                                      str r3, [r0, #0xc]
0088ec6c  10 30 80 e5                                      str r3, [r0, #0x10]
0088ec70  14 30 80 e5                                      str r3, [r0, #0x14]
0088ec74  18 30 80 e5                                      str r3, [r0, #0x18]
0088ec78  1c 30 80 e5                                      str r3, [r0, #0x1c]
0088ec7c  20 30 80 e5                                      str r3, [r0, #0x20]
0088ec80  24 30 80 e5                                      str r3, [r0, #0x24]
0088ec84  28 30 80 e5                                      str r3, [r0, #0x28]
0088ec88  2c 30 80 e5                                      str r3, [r0, #0x2c]
0088ec8c  34 30 80 e5                                      str r3, [r0, #0x34]
0088ec90  30 30 ec e5                                      strb r3, [ip, #0x30]!
0088ec94  3c c0 80 e5                                      str ip, [r0, #0x3c]
0088ec98  38 c0 80 e5                                      str ip, [r0, #0x38]
0088ec9c  40 30 80 e5                                      str r3, [r0, #0x40]
0088eca0  4c 30 80 e5                                      str r3, [r0, #0x4c]
0088eca4  48 30 e2 e5                                      strb r3, [r2, #0x48]!
0088eca8  00 40 a0 e1                                      mov r4, r0
0088ecac  54 20 80 e5                                      str r2, [r0, #0x54]
0088ecb0  58 30 80 e5                                      str r3, [r0, #0x58]
0088ecb4  50 20 80 e5                                      str r2, [r0, #0x50]
0088ecb8  a1 f9 ff eb                                      bl #0x88d344
0088ecbc  04 00 a0 e1                                      mov r0, r4
0088ecc0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0088ecc4, declared_size=120, range_size=120, mode=arm
; class-group: vox::VoxSoundPackXML
; alias: _ZN3vox15VoxSoundPackXMLC2EPKc
; demangled: vox::VoxSoundPackXML::VoxSoundPackXML(char const*)
; decoder-mode: arm
0088ecc4  00 30 a0 e3                                      mov r3, #0
0088ecc8  00 c0 a0 e1                                      mov ip, r0
0088eccc  10 40 2d e9                                      push {r4, lr}
0088ecd0  00 20 a0 e1                                      mov r2, r0
0088ecd4  00 30 80 e5                                      str r3, [r0]
0088ecd8  04 30 80 e5                                      str r3, [r0, #4]
0088ecdc  08 30 80 e5                                      str r3, [r0, #8]
0088ece0  0c 30 80 e5                                      str r3, [r0, #0xc]
0088ece4  10 30 80 e5                                      str r3, [r0, #0x10]
0088ece8  14 30 80 e5                                      str r3, [r0, #0x14]
0088ecec  18 30 80 e5                                      str r3, [r0, #0x18]
0088ecf0  1c 30 80 e5                                      str r3, [r0, #0x1c]
0088ecf4  20 30 80 e5                                      str r3, [r0, #0x20]
0088ecf8  24 30 80 e5                                      str r3, [r0, #0x24]
0088ecfc  28 30 80 e5                                      str r3, [r0, #0x28]
0088ed00  2c 30 80 e5                                      str r3, [r0, #0x2c]
0088ed04  34 30 80 e5                                      str r3, [r0, #0x34]
0088ed08  30 30 ec e5                                      strb r3, [ip, #0x30]!
0088ed0c  3c c0 80 e5                                      str ip, [r0, #0x3c]
0088ed10  38 c0 80 e5                                      str ip, [r0, #0x38]
0088ed14  40 30 80 e5                                      str r3, [r0, #0x40]
0088ed18  4c 30 80 e5                                      str r3, [r0, #0x4c]
0088ed1c  48 30 e2 e5                                      strb r3, [r2, #0x48]!
0088ed20  00 40 a0 e1                                      mov r4, r0
0088ed24  54 20 80 e5                                      str r2, [r0, #0x54]
0088ed28  58 30 80 e5                                      str r3, [r0, #0x58]
0088ed2c  50 20 80 e5                                      str r2, [r0, #0x50]
0088ed30  83 f9 ff eb                                      bl #0x88d344
0088ed34  04 00 a0 e1                                      mov r0, r4
0088ed38  10 80 bd e8                                      pop {r4, pc}
