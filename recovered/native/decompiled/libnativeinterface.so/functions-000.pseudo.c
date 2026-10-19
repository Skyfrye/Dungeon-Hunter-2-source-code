/* AUTOMATIC RECOVERY: Ghidra 11.0.3; libnativeinterface.so.
 * This is unvalidated pseudocode, not buildable original C/C++.
 * See function-index.jsonl and original symbol/assembly inventories.
 */
/* address=00010824 symbol=<EXTERNAL>::wcslen */

/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t wcslen(wchar_t *__s)

{
  size_t sVar1;
  
  sVar1 = wcslen(__s);
  return sVar1;
}


/* address=00010830 symbol=<EXTERNAL>::tolower */

/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int tolower(int __c)

{
  int iVar1;
  
  iVar1 = tolower(__c);
  return iVar1;
}


/* address=0001083c symbol=<EXTERNAL>::malloc */

/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * malloc(size_t __size)

{
  void *pvVar1;
  
  pvVar1 = malloc(__size);
  return pvVar1;
}


/* address=00010848 symbol=<EXTERNAL>::__stack_chk_fail */

void __stack_chk_fail(void)

{
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}


/* address=00010854 symbol=<EXTERNAL>::strcat */

/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strcat(char *__dest,char *__src)

{
  char *pcVar1;
  
  pcVar1 = strcat(__dest,__src);
  return pcVar1;
}


/* address=00010860 symbol=<EXTERNAL>::strncpy */

/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strncpy(char *__dest,char *__src,size_t __n)

{
  char *pcVar1;
  
  pcVar1 = strncpy(__dest,__src,__n);
  return pcVar1;
}


/* address=0001086c symbol=<EXTERNAL>::memcmp */

/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int memcmp(void *__s1,void *__s2,size_t __n)

{
  int iVar1;
  
  iVar1 = memcmp(__s1,__s2,__n);
  return iVar1;
}


/* address=00010878 symbol=<EXTERNAL>::fread */

/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t fread(void *__ptr,size_t __size,size_t __n,FILE *__stream)

{
  size_t sVar1;
  
  sVar1 = fread(__ptr,__size,__n,__stream);
  return sVar1;
}


/* address=00010884 symbol=<EXTERNAL>::fopen */

/* WARNING: Unknown calling convention -- yet parameter storage is locked */

FILE * fopen(char *__filename,char *__modes)

{
  FILE *pFVar1;
  
  pFVar1 = fopen(__filename,__modes);
  return pFVar1;
}


/* address=00010890 symbol=<EXTERNAL>::memset */

/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * memset(void *__s,int __c,size_t __n)

{
  void *pvVar1;
  
  pvVar1 = memset(__s,__c,__n);
  return pvVar1;
}


/* address=0001089c symbol=<EXTERNAL>::fclose */

/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fclose(FILE *__stream)

{
  int iVar1;
  
  iVar1 = fclose(__stream);
  return iVar1;
}


/* address=000108a8 symbol=<EXTERNAL>::sprintf */

/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int sprintf(char *__s,char *__format,...)

{
  int iVar1;
  
  iVar1 = sprintf(__s,__format);
  return iVar1;
}


/* address=000108b4 symbol=<EXTERNAL>::__aeabi_uidivmod */

void __aeabi_uidivmod(void)

{
  __aeabi_uidivmod();
  return;
}


/* address=000108c0 symbol=<EXTERNAL>::fwrite */

/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t fwrite(void *__ptr,size_t __size,size_t __n,FILE *__s)

{
  size_t sVar1;
  
  sVar1 = fwrite(__ptr,__size,__n,__s);
  return sVar1;
}


/* address=000108cc symbol=<EXTERNAL>::strlen */

/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t strlen(char *__s)

{
  size_t sVar1;
  
  sVar1 = strlen(__s);
  return sVar1;
}


/* address=000108d8 symbol=<EXTERNAL>::free */

/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void free(void *__ptr)

{
  free(__ptr);
  return;
}


/* address=000108e4 symbol=entry */

/* WARNING: Control flow encountered bad instruction data */

undefined4 processEntry entry(void)

{
  undefined4 *in_r10;
  bool in_NG;
  undefined in_CY;
  char in_OV;
  
  if (in_NG) {
    in_r10 = (undefined4 *)((int)in_r10 + -0x101);
  }
  if (in_NG == (bool)in_OV) {
    func_0x0006a93c();
  }
  if ((bool)in_CY) {
                    /* WARNING: Bad instruction - Truncating control flow here */
    halt_baddata();
  }
  if ((bool)in_OV) {
    return 1;
  }
  return *in_r10;
}


/* address=00010920 symbol=Java_com_samsung_zirconia_NativeInterface_checkLicenseFile2 */

undefined4 Java_com_samsung_zirconia_NativeInterface_checkLicenseFile2(void)

{
  return 1;
}


/* address=00010924 symbol=FUN_00010924 */

void FUN_00010924(undefined4 param_1,int param_2,undefined4 param_3)

{
  int *piVar1;
  undefined local_84 [104];
  int local_1c;
  
  piVar1 = &__stack_chk_guard;
  local_1c = __stack_chk_guard;
  SHA1Reset(local_84);
  SHA1Input(local_84,param_1,param_3);
  SHA1Result(local_84);
  entry(param_2);
  entry(param_2 + 4);
  entry(param_2 + 8);
  entry(param_2 + 0xc);
  entry(param_2 + 0x10);
  if (local_1c == *piVar1) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}


/* address=000109a0 symbol=FUN_000109a0 */

int FUN_000109a0(char *param_1)

{
  size_t sVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  
  sVar1 = strlen(param_1);
  iVar4 = 0;
  while (sVar1 = sVar1 - 1, -1 < (int)sVar1) {
    uVar2 = tolower((uint)(byte)param_1[sVar1]);
    uVar3 = 0;
    if ((0x2f < uVar2) && (uVar3 = uVar2 - 0x30, 9 < uVar3)) {
      uVar3 = uVar2 - 0x57;
    }
    iVar4 = iVar4 + uVar3;
  }
  return iVar4;
}


/* address=000109d0 symbol=Java_com_samsung_zirconia_NativeInterface_storeLicenseKey */

void Java_com_samsung_zirconia_NativeInterface_storeLicenseKey
               (int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5)

{
  char *__filename;
  void *__ptr;
  wchar_t *__s;
  size_t sVar1;
  FILE *__s_00;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  int local_2c;
  
  local_2c = __stack_chk_guard;
  __filename = (char *)(**(code **)(*param_1 + 0x2a4))(param_1,param_3,0);
  (**(code **)(*param_1 + 0x2ac))(param_1,param_4);
  __ptr = (void *)(**(code **)(*param_1 + 0x2e0))(param_1,param_4,0);
  __s = (wchar_t *)(**(code **)(*param_1 + 0x2a4))(param_1,param_5,0);
  local_40 = 0;
  local_3c = 0;
  local_38 = 0;
  local_34 = 0;
  local_30 = 0;
  sVar1 = wcslen(__s);
  FUN_00010924(__s,&local_40,sVar1);
  __s_00 = fopen(__filename,"w");
  if (__s_00 != (FILE *)0x0) {
    fwrite(__ptr,1,0x14,__s_00);
    fwrite(&local_40,1,0x14,__s_00);
    fclose(__s_00);
  }
  if (__filename != (char *)0x0) {
    (**(code **)(*param_1 + 0x2a8))(param_1,param_3,__filename);
  }
  if (__ptr != (void *)0x0) {
    (**(code **)(*param_1 + 0x300))(param_1,param_4,__ptr,2);
  }
  if (__s != (wchar_t *)0x0) {
    (**(code **)(*param_1 + 0x2a8))(param_1,param_5,__s);
  }
  if (local_2c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(__s_00 != (FILE *)0x0);
}


/* address=00010af8 symbol=FUN_00010af8 */

void FUN_00010af8(int param_1,undefined *param_2)

{
  int iVar1;
  undefined *puVar2;
  undefined2 local_24;
  undefined local_22;
  
  local_24 = 0;
  local_22 = 0;
  iVar1 = 0;
  puVar2 = param_2;
  do {
    sprintf((char *)&local_24,"%02x",(uint)*(byte *)(param_1 + iVar1));
    iVar1 = iVar1 + 1;
    *puVar2 = (undefined)local_24;
    puVar2[1] = local_24._1_1_;
    puVar2 = puVar2 + 2;
  } while (iVar1 != 0x14);
  param_2[0x28] = 0;
  return;
}


/* address=00010b48 symbol=FUN_00010b48 */

void FUN_00010b48(char *param_1,char *param_2,undefined4 *param_3)

{
  size_t sVar1;
  int iVar2;
  int iVar3;
  int extraout_r1;
  uint uVar4;
  undefined4 uStack_c4;
  undefined4 uStack_c0;
  undefined4 uStack_bc;
  undefined4 uStack_b8;
  undefined4 uStack_b4;
  undefined4 uStack_b0;
  undefined4 uStack_ac;
  undefined4 uStack_a8;
  undefined4 uStack_a4;
  undefined4 uStack_a0;
  undefined uStack_9c;
  undefined4 uStack_98;
  undefined4 uStack_94;
  undefined4 uStack_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined4 uStack_84;
  undefined4 uStack_80;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined uStack_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  int iStack_24;
  
  iStack_24 = __stack_chk_guard;
  uStack_6c = 0;
  uStack_68 = 0;
  uStack_64 = 0;
  uStack_60 = 0;
  uStack_5c = 0;
  uStack_58 = 0;
  uStack_54 = 0;
  uStack_50 = 0;
  strncpy((char *)&uStack_6c,param_1,0x1f);
  uStack_38 = 0;
  uStack_34 = 0;
  uStack_30 = 0;
  uStack_2c = 0;
  uStack_28 = 0;
  sVar1 = strlen((char *)&uStack_6c);
  FUN_00010924(&uStack_6c,&uStack_38,sVar1);
  uStack_70 = 0;
  uStack_98 = 0;
  uStack_94 = 0;
  uStack_90 = 0;
  uStack_8c = 0;
  uStack_88 = 0;
  uStack_84 = 0;
  uStack_80 = 0;
  uStack_7c = 0;
  uStack_78 = 0;
  uStack_74 = 0;
  FUN_00010af8(&uStack_38,&uStack_98);
  iVar2 = FUN_000109a0(&uStack_98);
  uStack_4c = 0;
  uStack_48 = 0;
  uStack_44 = 0;
  uStack_40 = 0;
  uStack_3c = 0;
  sVar1 = strlen(param_2);
  FUN_00010924(param_2,&uStack_4c,sVar1);
  uStack_9c = 0;
  uStack_c4 = 0;
  uStack_c0 = 0;
  uStack_bc = 0;
  uStack_b8 = 0;
  uStack_b4 = 0;
  uStack_b0 = 0;
  uStack_ac = 0;
  uStack_a8 = 0;
  uStack_a4 = 0;
  uStack_a0 = 0;
  FUN_00010af8(&uStack_4c,&uStack_c4);
  iVar3 = FUN_000109a0(&uStack_c4);
  uVar4 = iVar2 * iVar2 & 0x1ff;
  __aeabi_uidivmod(uVar4,5);
  *param_3 = (&PTR_s_When_William_McKinley_won_the_pr_00013764)[extraout_r1] + uVar4;
  if (iStack_24 == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(((iVar3 * iVar3 & 0x1ffU) + 0x200) - uVar4);
}


/* address=00010c60 symbol=Java_com_samsung_zirconia_NativeInterface_doPassphraseTest */

undefined4
Java_com_samsung_zirconia_NativeInterface_doPassphraseTest
          (int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  size_t __n;
  char *__dest;
  undefined4 uVar3;
  size_t __size;
  char *local_2c [2];
  
  iVar1 = (**(code **)(*param_1 + 0x2a4))(param_1,param_3,0);
  iVar2 = (**(code **)(*param_1 + 0x2a4))(param_1,param_4,0);
  local_2c[0] = (char *)0x0;
  __n = FUN_00010b48(iVar1,iVar2,local_2c);
  __size = __n + 1;
  __dest = (char *)malloc(__size);
  memset(__dest,0,__size);
  strncpy(__dest,local_2c[0],__n);
  uVar3 = (**(code **)(*param_1 + 0x29c))(param_1,__dest);
  if (__dest != (char *)0x0) {
    memset(__dest,0,__size);
    free(__dest);
  }
  if (iVar1 != 0) {
    (**(code **)(*param_1 + 0x2a8))(param_1,param_3,iVar1);
  }
  if (iVar2 != 0) {
    (**(code **)(*param_1 + 0x2a8))(param_1,param_4,iVar2);
  }
  return uVar3;
}


/* address=00010d20 symbol=CheckLicenseFile */

void CheckLicenseFile(void)

{
  FILE *__stream;
  size_t sVar1;
  size_t sVar2;
  size_t sVar3;
  char *__dest;
  int iVar4;
  bool bVar5;
  char *local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  int local_2c;
  
  local_2c = __stack_chk_guard;
  local_40 = 0;
  local_3c = 0;
  local_38 = 0;
  local_34 = 0;
  local_30 = 0;
  __stream = fopen(__data_start,"r");
  if (__stream != (FILE *)0x0) {
    sVar1 = fread(&local_40,1,0x14,__stream);
    fclose(__stream);
    if (sVar1 == 0x14) {
      local_58 = (char *)0x0;
      sVar1 = FUN_00010b48(UNK_0001388c,UNK_00013890,&local_58);
      sVar2 = strlen(UNK_0001388c);
      sVar3 = strlen(UNK_00013890);
      iVar4 = sVar2 + sVar1 + sVar3;
      sVar2 = iVar4 + 1;
      __dest = (char *)malloc(sVar2);
      strncpy(__dest,local_58,sVar1);
      __dest[sVar1] = '\0';
      strcat(__dest,UNK_0001388c);
      strcat(__dest,UNK_00013890);
      local_54 = 0;
      local_50 = 0;
      local_4c = 0;
      local_48 = 0;
      local_44 = 0;
      FUN_00010924(__dest,&local_54,iVar4);
      iVar4 = memcmp(&local_40,&local_54,0x14);
      bVar5 = iVar4 == 0;
      memset(__dest,0,sVar2);
      free(__dest);
      goto LAB_00010dfc;
    }
  }
  bVar5 = false;
LAB_00010dfc:
  if (local_2c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(bVar5);
}


/* address=00010e2c symbol=Java_com_samsung_zirconia_NativeInterface_checkLicenseFile */

undefined Java_com_samsung_zirconia_NativeInterface_checkLicenseFile
                    (int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                    undefined4 param_5)

{
  undefined uVar1;
  
  __data_start = (**(code **)(*param_1 + 0x2a4))(param_1,param_3,0);
  UNK_0001388c = (**(code **)(*param_1 + 0x2a4))(param_1,param_4,0);
  UNK_00013890 = (**(code **)(*param_1 + 0x2a4))(param_1,param_5,0);
  uVar1 = CheckLicenseFile();
  if (__data_start != 0) {
    (**(code **)(*param_1 + 0x2a8))(param_1,param_3);
    __data_start = 0;
  }
  if (UNK_0001388c != 0) {
    (**(code **)(*param_1 + 0x2a8))(param_1,param_4);
    UNK_0001388c = 0;
  }
  if (UNK_00013890 != 0) {
    (**(code **)(*param_1 + 0x2a8))(param_1,param_5);
    UNK_00013890 = 0;
  }
  return uVar1;
}


/* address=00010edc symbol=SHA1Reset */

void SHA1Reset(undefined4 *param_1)

{
  param_1[5] = 0;
  *param_1 = 0x67452301;
  param_1[6] = 0;
  param_1[0x17] = 0;
  param_1[1] = 0xefcdab89;
  param_1[0x18] = 0;
  param_1[0x19] = 0;
  param_1[2] = 0x98badcfe;
  param_1[3] = 0x10325476;
  param_1[4] = 0xc3d2e1f0;
  return;
}


/* address=00010f14 symbol=SHA1ProcessMessageBlock */

void SHA1ProcessMessageBlock(uint *param_1)

{
  byte *pbVar1;
  byte *pbVar2;
  byte *pbVar3;
  byte bVar4;
  uint *puVar5;
  uint uVar6;
  uint *puVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  uint *puVar11;
  uint uVar12;
  uint uVar13;
  uint uVar14;
  uint uVar15;
  uint local_168 [80];
  uint uStack_28;
  
  puVar5 = local_168;
  puVar11 = param_1 + 7;
  puVar7 = puVar5;
  do {
    bVar4 = *(byte *)puVar11;
    pbVar1 = (byte *)((int)puVar11 + 1);
    pbVar2 = (byte *)((int)puVar11 + 3);
    pbVar3 = (byte *)((int)puVar11 + 2);
    puVar11 = puVar11 + 1;
    *puVar7 = (uint)*pbVar1 << 0x10 | (uint)bVar4 << 0x18 | (uint)*pbVar2 | (uint)*pbVar3 << 8;
    puVar7 = puVar7 + 1;
  } while (puVar7 != local_168 + 0x10);
  puVar7 = puVar5;
  do {
    uVar8 = puVar7[0xd] ^ puVar7[8] ^ puVar7[2] ^ *puVar7;
    puVar7[0x10] = uVar8 >> 0x1f | uVar8 << 1;
    puVar7 = puVar7 + 1;
  } while (puVar7 != local_168 + 0x40);
  uVar8 = param_1[2];
  uVar10 = param_1[1];
  uVar14 = *param_1;
  uVar13 = param_1[4];
  uVar9 = param_1[3];
  do {
    uVar12 = uVar9;
    uVar6 = uVar14;
    uVar9 = uVar8;
    uVar8 = *puVar5;
    puVar5 = puVar5 + 1;
    uVar14 = uVar8 + 0x5a827999 + uVar13 + (uVar6 >> 0x1b | uVar6 << 5) +
             (uVar9 & uVar10 | uVar12 & ~uVar10);
    uVar8 = uVar10 >> 2 | uVar10 << 0x1e;
    uVar10 = uVar6;
    uVar13 = uVar12;
  } while (puVar5 != local_168 + 0x14);
  puVar5 = local_168 + 0x14;
  do {
    uVar10 = uVar9;
    uVar13 = uVar14;
    uVar9 = uVar8;
    uVar8 = *puVar5;
    puVar5 = puVar5 + 1;
    uVar14 = uVar8 + 0x6ed9eba1 + uVar12 + (uVar13 >> 0x1b | uVar13 << 5) + (uVar9 ^ uVar6 ^ uVar10)
    ;
    uVar8 = uVar6 >> 2 | uVar6 << 0x1e;
    uVar6 = uVar13;
    uVar12 = uVar10;
  } while (puVar5 != local_168 + 0x28);
  puVar5 = local_168 + 0x28;
  do {
    uVar15 = uVar14;
    uVar12 = uVar8;
    uVar6 = uVar9;
    uVar8 = *puVar5;
    puVar5 = puVar5 + 1;
    uVar14 = uVar8 + 0x8f1bbcdc + uVar10 + (uVar15 >> 0x1b | uVar15 << 5) +
             (uVar6 & uVar12 | (uVar6 | uVar12) & uVar13);
    uVar8 = uVar13 >> 2 | uVar13 << 0x1e;
    uVar9 = uVar12;
    uVar10 = uVar6;
    uVar13 = uVar15;
  } while (puVar5 != local_168 + 0x3c);
  puVar5 = local_168 + 0x3c;
  do {
    uVar10 = uVar14;
    uVar9 = uVar12;
    uVar12 = uVar8;
    uVar8 = *puVar5;
    puVar5 = puVar5 + 1;
    uVar14 = uVar8 + 0xca62c1d6 + uVar6 + (uVar10 >> 0x1b | uVar10 << 5) + (uVar12 ^ uVar15 ^ uVar9)
    ;
    uVar8 = uVar15 >> 2 | uVar15 << 0x1e;
    uVar6 = uVar9;
    uVar15 = uVar10;
  } while (puVar5 != &uStack_28);
  *param_1 = *param_1 + uVar14;
  param_1[1] = param_1[1] + uVar10;
  param_1[2] = param_1[2] + uVar8;
  param_1[3] = param_1[3] + uVar12;
  param_1[4] = param_1[4] + uVar9;
  param_1[0x17] = 0;
  return;
}


/* address=00011128 symbol=SHA1Input */

void SHA1Input(int param_1,undefined *param_2,int param_3)

{
  int iVar1;
  int iVar2;
  
  if (param_3 != 0) {
    if ((*(int *)(param_1 + 0x60) == 0) && (*(int *)(param_1 + 100) == 0)) {
      param_3 = param_3 + -1;
      while( true ) {
        iVar2 = *(int *)(param_1 + 0x5c);
        *(undefined *)(param_1 + iVar2 + 0x1c) = *param_2;
        iVar2 = iVar2 + 1;
        *(int *)(param_1 + 0x5c) = iVar2;
        iVar1 = *(int *)(param_1 + 0x14) + 8;
        *(int *)(param_1 + 0x14) = iVar1;
        if ((iVar1 == 0) &&
           (iVar1 = *(int *)(param_1 + 0x18) + 1, *(int *)(param_1 + 0x18) = iVar1, iVar1 == 0)) {
          *(undefined4 *)(param_1 + 100) = 1;
        }
        if (iVar2 == 0x40) {
          SHA1ProcessMessageBlock(param_1);
        }
        if ((param_3 == 0) || (*(int *)(param_1 + 100) != 0)) break;
        param_2 = param_2 + 1;
        param_3 = param_3 + -1;
      }
    }
    else {
      *(undefined4 *)(param_1 + 100) = 1;
    }
  }
  return;
}


/* address=0001118c symbol=SHA1PadMessage */

void SHA1PadMessage(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  
  iVar1 = *(int *)(param_1 + 0x5c);
  if (iVar1 < 0x38) {
    iVar5 = iVar1 + 1;
    *(undefined *)(param_1 + iVar1 + 0x1c) = 0x80;
    *(int *)(param_1 + 0x5c) = iVar5;
    iVar3 = iVar5;
    if (iVar5 != 0x38) {
      do {
        iVar2 = iVar3 + 1;
        *(undefined *)(param_1 + iVar3 + 0x1c) = 0;
        iVar3 = iVar2;
      } while (iVar2 != 0x38);
      *(int *)(param_1 + 0x5c) = (iVar5 - iVar1) + 0x37;
    }
  }
  else {
    iVar5 = iVar1 + 1;
    *(undefined *)(param_1 + iVar1 + 0x1c) = 0x80;
    *(int *)(param_1 + 0x5c) = iVar5;
    iVar3 = iVar5;
    if (iVar5 < 0x40) {
      do {
        iVar2 = iVar3 + 1;
        *(undefined *)(param_1 + iVar3 + 0x1c) = 0;
        iVar3 = iVar2;
      } while (iVar2 != 0x40);
      *(int *)(param_1 + 0x5c) = (iVar5 - iVar1) + 0x3f;
    }
    SHA1ProcessMessageBlock(param_1);
    iVar1 = *(int *)(param_1 + 0x5c);
    if (iVar1 < 0x38) {
      iVar3 = 0;
      do {
        iVar5 = param_1 + iVar1 + iVar3;
        iVar3 = iVar3 + 1;
        *(undefined *)(iVar5 + 0x1c) = 0;
      } while (iVar3 != 0x38 - iVar1);
      *(undefined4 *)(param_1 + 0x5c) = 0x38;
    }
  }
  uVar4 = *(undefined4 *)(param_1 + 0x18);
  *(char *)(param_1 + 0x54) = (char)((uint)uVar4 >> 0x18);
  *(char *)(param_1 + 0x55) = (char)((uint)uVar4 >> 0x10);
  *(char *)(param_1 + 0x56) = (char)((uint)uVar4 >> 8);
  *(char *)(param_1 + 0x57) = (char)uVar4;
  uVar4 = *(undefined4 *)(param_1 + 0x14);
  *(char *)(param_1 + 0x58) = (char)((uint)uVar4 >> 0x18);
  *(char *)(param_1 + 0x59) = (char)((uint)uVar4 >> 0x10);
  *(char *)(param_1 + 0x5a) = (char)((uint)uVar4 >> 8);
  *(char *)(param_1 + 0x5b) = (char)uVar4;
  SHA1ProcessMessageBlock(param_1);
  return;
}


/* address=0001123c symbol=SHA1Result */

undefined4 SHA1Result(int param_1)

{
  undefined4 uVar1;
  
  uVar1 = 0;
  if (*(int *)(param_1 + 100) == 0) {
    uVar1 = 1;
    if (*(int *)(param_1 + 0x60) == 0) {
      SHA1PadMessage(param_1);
      *(undefined4 *)(param_1 + 0x60) = 1;
      uVar1 = 1;
    }
  }
  return uVar1;
}


