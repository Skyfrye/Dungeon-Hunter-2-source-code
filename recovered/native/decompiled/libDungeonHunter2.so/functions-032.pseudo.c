/* AUTOMATIC RECOVERY: Ghidra 11.0.3; libDungeonHunter2.so.
 * This is unvalidated pseudocode, not buildable original C/C++.
 * See function-index.jsonl and original symbol/assembly inventories.
 */
/* address=008c8448 symbol=_ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E */

void _ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E(undefined4 param_1)

{
  undefined auStack_20 [4];
  undefined auStack_1c [8];
  
  _ZNSt9basic_iosIwSt11char_traitsIwEE5rdbufEPSt15basic_streambufIwS1_E();
  _ZNSt6localeC1Ev(auStack_1c);
  _ZNSt9basic_iosIwSt11char_traitsIwEE5imbueERKSt6locale(auStack_20,param_1,auStack_1c);
                    /* WARNING: Subroutine does not return */
  _ZNSt6localeD1Ev(auStack_20);
}


/* address=008c849c symbol=_ZNSt13basic_istreamIwSt11char_traitsIwEEC1EPSt15basic_streambufIwS1_E */

undefined4 *
_ZNSt13basic_istreamIwSt11char_traitsIwEEC1EPSt15basic_streambufIwS1_E
          (undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  _ZNSt8ios_baseC2Ev(param_1 + 2);
  param_1[0x13] = 0;
  param_1[0x14] = 0;
  param_1[0x15] = 0;
  *param_1 = 0x9a4624;
  param_1[2] = 0x9a4638;
  param_1[1] = 0;
  _ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E
            (param_1 + 2,param_2,0x9a4638,0,param_4);
  return param_1;
}


/* address=008c84dc symbol=_ZNSt13basic_ostreamIwSt11char_traitsIwEEC1EPSt15basic_streambufIwS1_E */

undefined4 *
_ZNSt13basic_ostreamIwSt11char_traitsIwEEC1EPSt15basic_streambufIwS1_E
          (undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  _ZNSt8ios_baseC2Ev(param_1 + 1);
  param_1[0x12] = 0;
  param_1[0x13] = 0;
  param_1[0x14] = 0;
  *param_1 = 0x9a4664;
  param_1[1] = 0x9a4678;
  _ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E
            (param_1 + 1,param_2,0x9a4664,0x9a4678,param_4);
  return param_1;
}


/* address=008c8518 symbol=_ZNSt15basic_streambufIwSt11char_traitsIwEE10_M_xsputncEwi */

int _ZNSt15basic_streambufIwSt11char_traitsIwEE10_M_xsputncEwi
              (int *param_1,wchar_t param_2,int param_3)

{
  wchar_t *__s;
  int iVar1;
  uint uVar2;
  uint __n;
  int iVar3;
  
  iVar3 = 0;
  if (0 < param_3) {
    do {
      while( true ) {
        __s = (wchar_t *)param_1[5];
        if (__s < (wchar_t *)param_1[6]) break;
        iVar1 = (**(code **)(*param_1 + 0x34))(param_1,param_2);
        if (iVar1 == -1) {
          return iVar3;
        }
        iVar3 = iVar3 + 1;
        if (param_3 <= iVar3) {
          return iVar3;
        }
      }
      uVar2 = (int)(wchar_t *)param_1[6] - (int)__s >> 2;
      __n = param_3 - iVar3;
      if (uVar2 < (uint)(param_3 - iVar3)) {
        __n = uVar2;
      }
      wmemset(__s,param_2,__n);
      iVar3 = __n + iVar3;
      param_1[5] = param_1[5] + __n * 4;
    } while (iVar3 < param_3);
  }
  return iVar3;
}


/* address=008c8574 symbol=_ZNSt15basic_streambufIwSt11char_traitsIwEE6xsputnEPKwi */

int _ZNSt15basic_streambufIwSt11char_traitsIwEE6xsputnEPKwi
              (int *param_1,wchar_t *param_2,int param_3)

{
  wchar_t *__s1;
  int iVar1;
  uint uVar2;
  uint __n;
  int iVar3;
  
  iVar3 = 0;
  if (0 < param_3) {
    do {
      while( true ) {
        __s1 = (wchar_t *)param_1[5];
        if (__s1 < (wchar_t *)param_1[6]) break;
        iVar1 = (**(code **)(*param_1 + 0x34))(param_1,*param_2);
        if (iVar1 == -1) {
          return iVar3;
        }
        iVar3 = iVar3 + 1;
        param_2 = param_2 + 1;
        if (param_3 <= iVar3) {
          return iVar3;
        }
      }
      uVar2 = (int)(wchar_t *)param_1[6] - (int)__s1 >> 2;
      __n = param_3 - iVar3;
      if (uVar2 < (uint)(param_3 - iVar3)) {
        __n = uVar2;
      }
      wmemcpy(__s1,param_2,__n);
      iVar3 = __n + iVar3;
      param_2 = param_2 + __n;
      param_1[5] = param_1[5] + __n * 4;
    } while (iVar3 < param_3);
  }
  return iVar3;
}


/* address=008c85d4 symbol=_ZNSt15basic_streambufIwSt11char_traitsIwEE6xsgetnEPwi */

int _ZNSt15basic_streambufIwSt11char_traitsIwEE6xsgetnEPwi
              (int *param_1,wchar_t *param_2,int param_3)

{
  wchar_t wVar1;
  wchar_t *__s2;
  uint uVar2;
  int iVar3;
  uint __n;
  
  iVar3 = 0;
  if (0 < param_3) {
    do {
      while( true ) {
        __s2 = (wchar_t *)param_1[2];
        if ((wchar_t *)param_1[3] <= __s2) break;
        uVar2 = (int)(wchar_t *)param_1[3] - (int)__s2 >> 2;
        __n = param_3 - iVar3;
        if (uVar2 < (uint)(param_3 - iVar3)) {
          __n = uVar2;
        }
        wmemcpy(param_2,__s2,__n);
        iVar3 = __n + iVar3;
        param_2 = param_2 + __n;
        param_1[2] = param_1[2] + __n * 4;
        if (param_3 <= iVar3) {
          return iVar3;
        }
      }
      wVar1 = (**(code **)(*param_1 + 0x24))(param_1);
      if (wVar1 == L'\xffffffff') {
        return iVar3;
      }
      iVar3 = iVar3 + 1;
      *param_2 = wVar1;
      param_2 = param_2 + 1;
    } while (iVar3 < param_3);
  }
  return iVar3;
}


/* address=008c8634 symbol=_ZNSt13basic_filebufIwSt11char_traitsIwEE16_M_underflow_auxEv */

undefined4 _ZNSt13basic_filebufIwSt11char_traitsIwEE16_M_underflow_auxEv(int param_1)

{
  void *__dest;
  int iVar1;
  void *__src;
  int iVar2;
  undefined4 *puVar3;
  size_t __n;
  int iVar4;
  undefined4 *local_30;
  int local_2c [2];
  
  *(undefined4 *)(param_1 + 0x4c) = *(undefined4 *)(param_1 + 0x50);
  __src = *(void **)(param_1 + 0x44);
  if (__src < *(void **)(param_1 + 0x48)) {
    __dest = *(void **)(param_1 + 0x3c);
    __n = (int)*(void **)(param_1 + 0x48) - (int)__src;
    if (__n != 0) {
                    /* WARNING: Subroutine does not return */
      memmove(__dest,__src,__n);
    }
  }
  else {
    __dest = *(void **)(param_1 + 0x3c);
  }
  *(void **)(param_1 + 0x48) = __dest;
  do {
    iVar1 = _ZNSt13_Filebuf_base7_M_readEPci
                      (param_1 + 0x20,__dest,*(int *)(param_1 + 0x40) - (int)__dest);
    if (iVar1 < 0) {
LAB_008c8742:
      *(undefined4 *)(param_1 + 4) = 0;
      *(undefined4 *)(param_1 + 8) = 0;
      *(undefined4 *)(param_1 + 0xc) = 0;
      return 0xffffffff;
    }
    iVar2 = *(int *)(param_1 + 0x48) + iVar1;
    *(int *)(param_1 + 0x48) = iVar2;
    if (iVar2 == *(int *)(param_1 + 0x3c)) goto LAB_008c8742;
    iVar2 = (**(code **)(**(int **)(param_1 + 0x68) + 0xc))
                      (*(int **)(param_1 + 0x68),param_1 + 0x50,*(int *)(param_1 + 0x3c),iVar2,
                       local_2c,*(undefined4 *)(param_1 + 0x34),*(undefined4 *)(param_1 + 0x38),
                       &local_30);
    if (iVar2 == 3) {
      return 0xffffffff;
    }
    if (iVar2 == 2) {
LAB_008c8730:
      _ZNSt13basic_filebufIwSt11char_traitsIwEE18_M_exit_input_modeEv(param_1);
      *(undefined *)(param_1 + 0x30) = 0;
      *(undefined *)(param_1 + 0x31) = 1;
      goto LAB_008c8742;
    }
    puVar3 = *(undefined4 **)(param_1 + 0x34);
    if (puVar3 == local_30) {
      iVar2 = *(int *)(param_1 + 0x3c);
    }
    else {
      iVar2 = *(int *)(param_1 + 0x3c);
      if (iVar2 == local_2c[0]) goto LAB_008c8730;
    }
    iVar4 = local_2c[0] - iVar2;
    if ((*(char *)(param_1 + 0x2c) != '\0') &&
       (iVar4 = *(int *)(param_1 + 0x6c) * ((int)local_30 - (int)puVar3 >> 2),
       iVar4 - (local_2c[0] - iVar2) != 0)) goto LAB_008c8730;
    if (puVar3 != local_30) {
      *(int *)(param_1 + 0x44) = iVar2 + iVar4;
      *(undefined4 **)(param_1 + 4) = puVar3;
      *(undefined4 **)(param_1 + 8) = puVar3;
      *(undefined4 **)(param_1 + 0xc) = local_30;
      return *puVar3;
    }
    if (*(int *)(param_1 + 0x70) <= iVar4) goto LAB_008c8730;
    if (iVar1 == 0) {
      *(undefined4 *)(param_1 + 4) = 0;
      *(undefined4 *)(param_1 + 8) = 0;
      *(undefined4 *)(param_1 + 0xc) = 0;
      return 0xffffffff;
    }
    __dest = *(void **)(param_1 + 0x48);
  } while( true );
}


/* address=008c8754 symbol=_ZNSt10_UnderflowIwSt11char_traitsIwEE7_M_doitEPSt13basic_filebufIwS1_E */

undefined4 _ZNSt10_UnderflowIwSt11char_traitsIwEE7_M_doitEPSt13basic_filebufIwS1_E(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  
  if (*(char *)(param_1 + 0x2f) == '\0') {
    iVar2 = _ZNSt13basic_filebufIwSt11char_traitsIwEE23_M_switch_to_input_modeEv();
    if (iVar2 == 0) {
      return 0xffffffff;
    }
  }
  else if (*(char *)(param_1 + 0x32) != '\0') {
    puVar3 = *(undefined4 **)(param_1 + 0x60);
    *(undefined4 **)(param_1 + 8) = puVar3;
    *(undefined4 **)(param_1 + 0xc) = *(undefined4 **)(param_1 + 100);
    *(undefined4 *)(param_1 + 4) = *(undefined4 *)(param_1 + 0x5c);
    *(undefined *)(param_1 + 0x32) = 0;
    if (puVar3 != *(undefined4 **)(param_1 + 100)) {
      return *puVar3;
    }
  }
  uVar1 = _ZNSt13basic_filebufIwSt11char_traitsIwEE16_M_underflow_auxEv(param_1);
  return uVar1;
}


/* address=008c8798 symbol=_ZNSt13basic_filebufIwSt11char_traitsIwEE9underflowEv */

void _ZNSt13basic_filebufIwSt11char_traitsIwEE9underflowEv(void)

{
  _ZNSt10_UnderflowIwSt11char_traitsIwEE7_M_doitEPSt13basic_filebufIwS1_E();
  return;
}


/* address=008c87a0 symbol=_ZNSt9basic_iosIwSt11char_traitsIwEED0Ev */

void _ZNSt9basic_iosIwSt11char_traitsIwEED0Ev(undefined4 *param_1)

{
  *param_1 = 0x9a4650;
  _ZNSt8ios_baseD2Ev();
                    /* WARNING: Subroutine does not return */
  _ZdlPv(param_1);
}


/* address=008c87c8 symbol=_ZNSt13basic_istreamIwSt11char_traitsIwEED0Ev */

void _ZNSt13basic_istreamIwSt11char_traitsIwEED0Ev(undefined4 *param_1)

{
  *param_1 = 0x9a4624;
  param_1[2] = 0x9a4650;
  _ZNSt8ios_baseD2Ev(param_1 + 2);
                    /* WARNING: Subroutine does not return */
  _ZdlPv(param_1);
}


/* address=008c87fc symbol=_ZTv0_n12_NSt13basic_istreamIwSt11char_traitsIwEED0Ev */

void _ZTv0_n12_NSt13basic_istreamIwSt11char_traitsIwEED0Ev(int *param_1)

{
  _ZNSt13basic_istreamIwSt11char_traitsIwEED0Ev((int)param_1 + *(int *)(*param_1 + -0xc));
  return;
}


/* address=008c880c symbol=_ZNSt8ios_base15_S_uninitializeEv */

void _ZNSt8ios_base15_S_uninitializeEv(void)

{
  int *piVar1;
  uint uVar2;
  int iVar3;
  
  iVar3 = *(int *)(_ZSt3cin._0_4_ + -0xc);
  *(undefined4 *)(_ZSt3cin + iVar3 + 0x14) = 0;
  uVar2 = *(uint *)(_ZSt3cin + iVar3 + 8);
  if (*(int *)(_ZSt3cin + iVar3 + 0x48) == 0) {
    uVar2 = uVar2 | 1;
  }
  *(uint *)(_ZSt3cin + iVar3 + 8) = uVar2;
  iVar3 = *(int *)(_ZSt4cout._0_4_ + -0xc);
  *(undefined4 *)(_ZSt4cout + iVar3 + 0x14) = 0;
  uVar2 = *(uint *)(_ZSt4cout + iVar3 + 8);
  if (*(int *)(_ZSt4cout + iVar3 + 0x48) == 0) {
    uVar2 = uVar2 | 1;
  }
  *(uint *)(_ZSt4cout + iVar3 + 8) = uVar2;
  iVar3 = *(int *)(_ZSt4cerr._0_4_ + -0xc);
  *(undefined4 *)(_ZSt4cerr + iVar3 + 0x14) = 0;
  uVar2 = *(uint *)(_ZSt4cerr + iVar3 + 8);
  if (*(int *)(_ZSt4cerr + iVar3 + 0x48) == 0) {
    uVar2 = uVar2 | 1;
  }
  *(uint *)(_ZSt4cerr + iVar3 + 8) = uVar2;
  iVar3 = *(int *)(_ZSt4clog._0_4_ + -0xc);
  *(undefined4 *)(_ZSt4clog + iVar3 + 0x14) = 0;
  uVar2 = *(uint *)(_ZSt4clog + iVar3 + 8);
  if (*(int *)(_ZSt4clog + iVar3 + 0x48) == 0) {
    uVar2 = uVar2 | 1;
  }
  *(uint *)(_ZSt4clog + iVar3 + 8) = uVar2;
  piVar1 = (int *)_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E
                            (_ZSt3cin + *(int *)(_ZSt3cin._0_4_ + -0xc),0);
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 4))();
  }
  piVar1 = (int *)_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E
                            (_ZSt4cout + *(int *)(_ZSt4cout._0_4_ + -0xc),0);
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 4))();
  }
  piVar1 = (int *)_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E
                            (_ZSt4cerr + *(int *)(_ZSt4cerr._0_4_ + -0xc),0);
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 4))();
  }
  piVar1 = (int *)_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E
                            (_ZSt4clog + *(int *)(_ZSt4clog._0_4_ + -0xc),0);
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 4))();
  }
  (**(code **)_ZSt3cin._0_4_)(_ZSt3cin);
  (**(code **)_ZSt4cout._0_4_)(_ZSt4cout);
  (**(code **)_ZSt4cerr._0_4_)(_ZSt4cerr);
  (**(code **)_ZSt4clog._0_4_)(_ZSt4clog);
  iVar3 = *(int *)(_ZSt4wcin._0_4_ + -0xc);
  *(undefined4 *)(_ZSt4wcin + iVar3 + 0x14) = 0;
  uVar2 = *(uint *)(_ZSt4wcin + iVar3 + 8);
  if (*(int *)(_ZSt4wcin + iVar3 + 0x48) == 0) {
    uVar2 = uVar2 | 1;
  }
  *(uint *)(_ZSt4wcin + iVar3 + 8) = uVar2;
  iVar3 = *(int *)(_ZSt5wcout._0_4_ + -0xc);
  *(undefined4 *)(_ZSt5wcout + iVar3 + 0x14) = 0;
  uVar2 = *(uint *)(_ZSt5wcout + iVar3 + 8);
  if (*(int *)(_ZSt5wcout + iVar3 + 0x48) == 0) {
    uVar2 = uVar2 | 1;
  }
  *(uint *)(_ZSt5wcout + iVar3 + 8) = uVar2;
  iVar3 = *(int *)(_ZSt5wcerr._0_4_ + -0xc);
  *(undefined4 *)(_ZSt5wcerr + iVar3 + 0x14) = 0;
  uVar2 = *(uint *)(_ZSt5wcerr + iVar3 + 8);
  if (*(int *)(_ZSt5wcerr + iVar3 + 0x48) == 0) {
    uVar2 = uVar2 | 1;
  }
  *(uint *)(_ZSt5wcerr + iVar3 + 8) = uVar2;
  iVar3 = *(int *)(_ZSt5wclog._0_4_ + -0xc);
  *(undefined4 *)(_ZSt5wclog + iVar3 + 0x14) = 0;
  uVar2 = *(uint *)(_ZSt5wclog + iVar3 + 8);
  if (*(int *)(_ZSt5wclog + iVar3 + 0x48) == 0) {
    uVar2 = uVar2 | 1;
  }
  *(uint *)(_ZSt5wclog + iVar3 + 8) = uVar2;
  piVar1 = (int *)_ZNSt9basic_iosIwSt11char_traitsIwEE5rdbufEPSt15basic_streambufIwS1_E
                            (_ZSt4wcin + *(int *)(_ZSt4wcin._0_4_ + -0xc),0);
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 4))();
  }
  piVar1 = (int *)_ZNSt9basic_iosIwSt11char_traitsIwEE5rdbufEPSt15basic_streambufIwS1_E
                            (_ZSt5wcout + *(int *)(_ZSt5wcout._0_4_ + -0xc),0);
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 4))();
  }
  piVar1 = (int *)_ZNSt9basic_iosIwSt11char_traitsIwEE5rdbufEPSt15basic_streambufIwS1_E
                            (_ZSt5wcerr + *(int *)(_ZSt5wcerr._0_4_ + -0xc),0);
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 4))();
  }
  piVar1 = (int *)_ZNSt9basic_iosIwSt11char_traitsIwEE5rdbufEPSt15basic_streambufIwS1_E
                            (_ZSt5wclog + *(int *)(_ZSt5wclog._0_4_ + -0xc),0);
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 4))();
  }
  (**(code **)_ZSt4wcin._0_4_)(_ZSt4wcin);
  (**(code **)_ZSt5wcout._0_4_)(_ZSt5wcout);
  (**(code **)_ZSt5wcerr._0_4_)(_ZSt5wcerr);
  (**(code **)_ZSt5wclog._0_4_)(_ZSt5wclog);
  return;
}


/* address=008c8a6c symbol=_ZNSt8ios_base4InitD1Ev */

undefined4 _ZNSt8ios_base4InitD1Ev(undefined4 param_1)

{
  _ZNSt8ios_base4Init8_S_countE = _ZNSt8ios_base4Init8_S_countE + -1;
  if (_ZNSt8ios_base4Init8_S_countE == 0) {
    _ZNSt8ios_base15_S_uninitializeEv();
    _Locale_final();
  }
  return param_1;
}


/* address=008c8a98 symbol=_ZNSt8ios_base4InitD2Ev */

undefined4 _ZNSt8ios_base4InitD2Ev(undefined4 param_1)

{
  _ZNSt8ios_base4Init8_S_countE = _ZNSt8ios_base4Init8_S_countE + -1;
  if (_ZNSt8ios_base4Init8_S_countE == 0) {
    _ZNSt8ios_base15_S_uninitializeEv();
    _Locale_final();
  }
  return param_1;
}


/* address=008c8ac4 symbol=_ZStL20_Stl_create_wfilebufP7__sFILEi */

void _ZStL20_Stl_create_wfilebufP7__sFILEi(void)

{
                    /* WARNING: Subroutine does not return */
  _Znwj(0x94);
}


/* address=008c8afc symbol=_ZNSt8ios_base13_S_initializeEv */

void _ZNSt8ios_base13_S_initializeEv(void)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  
  if (_ZNSt8ios_base12_S_is_syncedE != '\0') {
                    /* WARNING: Subroutine does not return */
    _Znwj(0x24);
  }
  uVar1 = _ZSt19_Stl_create_filebufIP7__sFILEEPSt13basic_filebufIcSt11char_traitsIcEET_i(&__sF,8);
  if (_ZNSt8ios_base12_S_is_syncedE != '\0') {
                    /* WARNING: Subroutine does not return */
    _Znwj(0x24);
  }
  uVar2 = _ZSt19_Stl_create_filebufIP7__sFILEEPSt13basic_filebufIcSt11char_traitsIcEET_i
                    (__stack_chk_fail,0x10);
  uVar3 = _ZSt19_Stl_create_filebufIP7__sFILEEPSt13basic_filebufIcSt11char_traitsIcEET_i
                    (glUniform4iv,0x10);
  uVar4 = _ZSt19_Stl_create_filebufIP7__sFILEEPSt13basic_filebufIcSt11char_traitsIcEET_i
                    (glUniform4iv,0x10);
  _ZNSiC1EPSt15basic_streambufIcSt11char_traitsIcEE(_ZSt3cin,uVar1);
  _ZNSoC1EPSt15basic_streambufIcSt11char_traitsIcEE(_ZSt4cout,uVar2);
  _ZNSoC1EPSt15basic_streambufIcSt11char_traitsIcEE(_ZSt4cerr,uVar3);
  _ZNSoC1EPSt15basic_streambufIcSt11char_traitsIcEE(_ZSt4clog,uVar4);
  *(undefined1 **)(_ZSt3cin + *(int *)(_ZSt3cin._0_4_ + -0xc) + 0x4c) = _ZSt4cout;
  *(uint *)(_ZSt4cerr + *(int *)(_ZSt4cerr._0_4_ + -0xc) + 4) =
       *(uint *)(_ZSt4cerr + *(int *)(_ZSt4cerr._0_4_ + -0xc) + 4) | 0x2000;
  uVar1 = _ZStL20_Stl_create_wfilebufP7__sFILEi(&__sF,8);
  uVar2 = _ZStL20_Stl_create_wfilebufP7__sFILEi(__stack_chk_fail,0x10);
  uVar3 = _ZStL20_Stl_create_wfilebufP7__sFILEi(glUniform4iv,0x10);
  uVar4 = _ZStL20_Stl_create_wfilebufP7__sFILEi(glUniform4iv,0x10);
  _ZNSt13basic_istreamIwSt11char_traitsIwEEC1EPSt15basic_streambufIwS1_E(_ZSt4wcin,uVar1);
  _ZNSt13basic_ostreamIwSt11char_traitsIwEEC1EPSt15basic_streambufIwS1_E(_ZSt5wcout,uVar2);
  _ZNSt13basic_ostreamIwSt11char_traitsIwEEC1EPSt15basic_streambufIwS1_E(_ZSt5wcerr,uVar3);
  _ZNSt13basic_ostreamIwSt11char_traitsIwEEC1EPSt15basic_streambufIwS1_E(_ZSt5wclog,uVar4);
  *(undefined1 **)(_ZSt4wcin + *(int *)(_ZSt4wcin._0_4_ + -0xc) + 0x4c) = _ZSt5wcout;
  *(uint *)(_ZSt5wcerr + *(int *)(_ZSt5wcerr._0_4_ + -0xc) + 4) =
       *(uint *)(_ZSt5wcerr + *(int *)(_ZSt5wcerr._0_4_ + -0xc) + 4) | 0x2000;
  return;
}


/* address=008c8cd4 symbol=_ZNSt8ios_base4InitC1Ev */

undefined4 _ZNSt8ios_base4InitC1Ev(undefined4 param_1)

{
  int iVar1;
  bool bVar2;
  
  iVar1 = _ZNSt8ios_base4Init8_S_countE + 1;
  bVar2 = _ZNSt8ios_base4Init8_S_countE == 0;
  _ZNSt8ios_base4Init8_S_countE = iVar1;
  if (bVar2) {
    _Locale_init();
    _ZNSt8ios_base13_S_initializeEv();
    _ZNSt13_Filebuf_base13_S_initializeEv();
  }
  return param_1;
}


/* address=008c8d04 symbol=_ZNSt8ios_base4InitC2Ev */

undefined4 _ZNSt8ios_base4InitC2Ev(undefined4 param_1)

{
  int iVar1;
  bool bVar2;
  
  iVar1 = _ZNSt8ios_base4Init8_S_countE + 1;
  bVar2 = _ZNSt8ios_base4Init8_S_countE == 0;
  _ZNSt8ios_base4Init8_S_countE = iVar1;
  if (bVar2) {
    _Locale_init();
    _ZNSt8ios_base13_S_initializeEv();
    _ZNSt13_Filebuf_base13_S_initializeEv();
  }
  return param_1;
}


/* address=008c8d34 symbol=_ZNSt8ios_base15sync_with_stdioEb */

uint _ZNSt8ios_base15sync_with_stdioEb(uint param_1)

{
  byte bVar1;
  int *piVar2;
  int *piVar3;
  int *piVar4;
  int *piVar5;
  
  if (_ZNSt8ios_base12_S_is_syncedE == param_1) {
    return param_1;
  }
  if (_ZNSt8ios_base4Init8_S_countE == 0) {
LAB_008c8e5e:
    _ZNSt8ios_base12_S_is_syncedE = (byte)param_1;
  }
  else {
    if (param_1 != 0) {
                    /* WARNING: Subroutine does not return */
      _Znwj(0x24);
    }
    piVar2 = (int *)_ZSt19_Stl_create_filebufIP7__sFILEEPSt13basic_filebufIcSt11char_traitsIcEET_i
                              (&__sF,8);
    piVar3 = (int *)_ZSt19_Stl_create_filebufIP7__sFILEEPSt13basic_filebufIcSt11char_traitsIcEET_i
                              (__stack_chk_fail,0x10);
    piVar4 = (int *)_ZSt19_Stl_create_filebufIP7__sFILEEPSt13basic_filebufIcSt11char_traitsIcEET_i
                              (glUniform4iv,0x10);
    piVar5 = (int *)_ZSt19_Stl_create_filebufIP7__sFILEEPSt13basic_filebufIcSt11char_traitsIcEET_i
                              (glUniform4iv,0x10);
    bVar1 = _ZNSt8ios_base12_S_is_syncedE;
    if (((piVar2 == (int *)0x0) || (piVar3 == (int *)0x0)) || (piVar4 == (int *)0x0)) {
      if (piVar5 != (int *)0x0) {
        (**(code **)(*piVar5 + 4))(piVar5);
      }
    }
    else if (piVar5 != (int *)0x0) {
      piVar2 = (int *)_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E
                                (_ZSt3cin + *(int *)(_ZSt3cin._0_4_ + -0xc),piVar2);
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 4))();
      }
      piVar2 = (int *)_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E
                                (_ZSt4cout + *(int *)(_ZSt4cout._0_4_ + -0xc),piVar3);
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 4))();
      }
      piVar2 = (int *)_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E
                                (_ZSt4cerr + *(int *)(_ZSt4cerr._0_4_ + -0xc),piVar4);
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 4))();
      }
      piVar2 = (int *)_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E
                                (_ZSt4clog + *(int *)(_ZSt4clog._0_4_ + -0xc),piVar5);
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 4))();
      }
      goto LAB_008c8e5e;
    }
    param_1 = (uint)bVar1;
    if (piVar4 != (int *)0x0) {
      (**(code **)(*piVar4 + 4))(piVar4);
    }
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 4))(piVar3);
    }
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 4))(piVar2);
    }
  }
  return param_1;
}


/* address=008c8f1c symbol=_ZNKSt7codecvtIcc9mbstate_tE9do_lengthERS0_PKcS4_j */

uint _ZNKSt7codecvtIcc9mbstate_tE9do_lengthERS0_PKcS4_j
               (undefined4 param_1,undefined4 param_2,int param_3,int param_4,uint param_5)

{
  uint uVar1;
  
  uVar1 = param_4 - param_3;
  if (param_5 < (uint)(param_4 - param_3)) {
    uVar1 = param_5;
  }
  return uVar1;
}


/* address=008c8f28 symbol=_ZNKSt7codecvtIcc9mbstate_tE13do_max_lengthEv */

undefined4 _ZNKSt7codecvtIcc9mbstate_tE13do_max_lengthEv(void)

{
  return 1;
}


/* address=008c8f2c symbol=_ZNKSt7codecvtIcc9mbstate_tE16do_always_noconvEv */

undefined4 _ZNKSt7codecvtIcc9mbstate_tE16do_always_noconvEv(void)

{
  return 1;
}


/* address=008c8f30 symbol=_ZNKSt7codecvtIcc9mbstate_tE11do_encodingEv */

undefined4 _ZNKSt7codecvtIcc9mbstate_tE11do_encodingEv(void)

{
  return 1;
}


/* address=008c8f34 symbol=_ZNKSt7codecvtIcc9mbstate_tE10do_unshiftERS0_PcS3_RS3_ */

undefined4
_ZNKSt7codecvtIcc9mbstate_tE10do_unshiftERS0_PcS3_RS3_
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 *param_5)

{
  *param_5 = param_3;
  return 3;
}


/* address=008c8f3c symbol=_ZNKSt7codecvtIcc9mbstate_tE5do_inERS0_PKcS4_RS4_PcS6_RS6_ */

undefined4
_ZNKSt7codecvtIcc9mbstate_tE5do_inERS0_PKcS4_RS4_PcS6_RS6_
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 *param_5,undefined4 param_6,undefined4 param_7,undefined4 *param_8)

{
  *param_5 = param_3;
  *param_8 = param_6;
  return 3;
}


/* address=008c8f4c symbol=_ZNKSt7codecvtIcc9mbstate_tE6do_outERS0_PKcS4_RS4_PcS6_RS6_ */

undefined4
_ZNKSt7codecvtIcc9mbstate_tE6do_outERS0_PKcS4_RS4_PcS6_RS6_
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 *param_5,undefined4 param_6,undefined4 param_7,undefined4 *param_8)

{
  *param_5 = param_3;
  *param_8 = param_6;
  return 3;
}


/* address=008c8f5c symbol=_ZNKSt7codecvtIwc9mbstate_tE6do_outERS0_PKwS4_RS4_PcS6_RS6_ */

undefined4
_ZNKSt7codecvtIwc9mbstate_tE6do_outERS0_PKwS4_RS4_PcS6_RS6_
          (undefined4 param_1,undefined4 param_2,undefined4 *param_3,int param_4,undefined4 *param_5
          ,undefined *param_6,int param_7,undefined4 *param_8)

{
  undefined4 uVar1;
  int iVar2;
  undefined *puVar3;
  int iVar4;
  undefined4 *puVar5;
  
  iVar2 = param_4 - (int)param_3 >> 2;
  iVar4 = param_7 - (int)param_6;
  if (iVar2 < param_7 - (int)param_6) {
    iVar4 = iVar2;
  }
  puVar5 = param_3 + iVar4;
  iVar2 = iVar4 * 4 >> 2;
  if (0 < iVar2) {
    puVar3 = param_6;
    do {
      uVar1 = *param_3;
      param_3 = param_3 + 1;
      *puVar3 = (char)uVar1;
      puVar3 = puVar3 + 1;
    } while (puVar3 != param_6 + iVar2);
  }
  *param_5 = puVar5;
  *param_8 = param_6 + iVar4;
  return 0;
}


/* address=008c8f94 symbol=_ZNKSt7codecvtIwc9mbstate_tE5do_inERS0_PKcS4_RS4_PwS6_RS6_ */

undefined4
_ZNKSt7codecvtIwc9mbstate_tE5do_inERS0_PKcS4_RS4_PwS6_RS6_
          (undefined4 param_1,undefined4 param_2,byte *param_3,int param_4,byte **param_5,
          uint *param_6,int param_7,uint **param_8)

{
  byte bVar1;
  int iVar2;
  byte *pbVar3;
  uint *puVar4;
  int iVar5;
  byte *pbVar6;
  
  iVar5 = param_7 - (int)param_6 >> 2;
  if (param_4 - (int)param_3 < iVar5) {
    iVar5 = param_4 - (int)param_3;
  }
  pbVar6 = param_3 + iVar5;
  iVar2 = (int)pbVar6 - (int)param_3;
  if (0 < iVar2) {
    pbVar3 = param_3 + iVar2;
    puVar4 = param_6;
    do {
      bVar1 = *param_3;
      param_3 = param_3 + 1;
      *puVar4 = (uint)bVar1;
      puVar4 = puVar4 + 1;
    } while (param_3 != pbVar3);
  }
  *param_5 = pbVar6;
  *param_8 = param_6 + iVar5;
  return 0;
}


/* address=008c8fcc symbol=_ZNKSt7codecvtIwc9mbstate_tE10do_unshiftERS0_PcS3_RS3_ */

undefined4
_ZNKSt7codecvtIwc9mbstate_tE10do_unshiftERS0_PcS3_RS3_
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 *param_5)

{
  *param_5 = param_3;
  return 3;
}


/* address=008c8fd4 symbol=_ZNKSt7codecvtIwc9mbstate_tE11do_encodingEv */

undefined4 _ZNKSt7codecvtIwc9mbstate_tE11do_encodingEv(void)

{
  return 1;
}


/* address=008c8fd8 symbol=_ZNKSt7codecvtIwc9mbstate_tE16do_always_noconvEv */

undefined4 _ZNKSt7codecvtIwc9mbstate_tE16do_always_noconvEv(void)

{
  return 1;
}


/* address=008c8fdc symbol=_ZNKSt7codecvtIwc9mbstate_tE9do_lengthERS0_PKcS4_j */

uint _ZNKSt7codecvtIwc9mbstate_tE9do_lengthERS0_PKcS4_j
               (undefined4 param_1,undefined4 param_2,int param_3,int param_4,uint param_5)

{
  uint uVar1;
  
  uVar1 = param_4 - param_3;
  if (param_5 < (uint)(param_4 - param_3)) {
    uVar1 = param_5;
  }
  return uVar1;
}


/* address=008c8fe8 symbol=_ZNKSt7codecvtIwc9mbstate_tE13do_max_lengthEv */

undefined4 _ZNKSt7codecvtIwc9mbstate_tE13do_max_lengthEv(void)

{
  return 1;
}


/* address=008c8fec symbol=_ZNSt7codecvtIwc9mbstate_tED1Ev */

void _ZNSt7codecvtIwc9mbstate_tED1Ev(undefined4 *param_1)

{
  *param_1 = &PTR__ZNSt7codecvtIwc9mbstate_tED1Ev_1_009a4690;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev();
}


/* address=008c900c symbol=_ZNSt7codecvtIwc9mbstate_tED0Ev */

void _ZNSt7codecvtIwc9mbstate_tED0Ev(undefined4 param_1)

{
  _ZNSt7codecvtIwc9mbstate_tED1Ev();
                    /* WARNING: Subroutine does not return */
  _ZdlPv(param_1);
}


/* address=008c9020 symbol=_ZNSt7codecvtIwc9mbstate_tED2Ev */

void _ZNSt7codecvtIwc9mbstate_tED2Ev(undefined4 *param_1)

{
  *param_1 = &PTR__ZNSt7codecvtIwc9mbstate_tED1Ev_1_009a4690;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev();
}


/* address=008c9040 symbol=_ZNSt7codecvtIcc9mbstate_tED1Ev */

void _ZNSt7codecvtIcc9mbstate_tED1Ev(undefined4 *param_1)

{
  *param_1 = 0x9a46c0;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev();
}


/* address=008c9060 symbol=_ZNSt7codecvtIcc9mbstate_tED0Ev */

void _ZNSt7codecvtIcc9mbstate_tED0Ev(undefined4 param_1)

{
  _ZNSt7codecvtIcc9mbstate_tED1Ev();
                    /* WARNING: Subroutine does not return */
  _ZdlPv(param_1);
}


/* address=008c9074 symbol=_ZNSt7codecvtIcc9mbstate_tED2Ev */

void _ZNSt7codecvtIcc9mbstate_tED2Ev(undefined4 *param_1)

{
  *param_1 = 0x9a46c0;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev();
}


/* address=008c9094 symbol=_ZNKSt7collateIcE7do_hashEPKcS2_ */

int _ZNKSt7collateIcE7do_hashEPKcS2_(undefined4 param_1,byte *param_2,byte *param_3)

{
  byte bVar1;
  int iVar2;
  int iVar3;
  
  iVar2 = 0;
  iVar3 = 0;
  if (param_2 < param_3) {
    do {
      bVar1 = *param_2;
      param_2 = param_2 + 1;
      iVar2 = iVar3 * 5 + (uint)bVar1;
      iVar3 = iVar2;
    } while (param_2 != param_3);
  }
  return iVar2;
}


/* address=008c90b0 symbol=_ZNKSt7collateIwE10do_compareEPKwS2_S2_S2_ */

uint _ZNKSt7collateIwE10do_compareEPKwS2_S2_S2_
               (undefined4 param_1,uint *param_2,uint *param_3,uint *param_4,uint *param_5)

{
  if (param_4 == param_5) {
LAB_008c90d8:
    if (param_5 != param_4) {
      return 0xffffffff;
    }
  }
  else {
    do {
      if (param_2 == param_3) goto LAB_008c90d8;
      if (*param_2 < *param_4) {
        return 0xffffffff;
      }
      if (*param_4 < *param_2) {
        return 1;
      }
      param_4 = param_4 + 1;
      param_2 = param_2 + 1;
    } while (param_5 != param_4);
  }
  return (uint)(param_3 != param_2);
}


/* address=008c90e8 symbol=_ZNKSt7collateIwE7do_hashEPKwS2_ */

int _ZNKSt7collateIwE7do_hashEPKwS2_(undefined4 param_1,int *param_2,int *param_3)

{
  int iVar1;
  int iVar2;
  
  iVar1 = 0;
  iVar2 = 0;
  if (param_2 < param_3) {
    do {
      iVar1 = *param_2;
      param_2 = param_2 + 1;
      iVar1 = iVar2 * 5 + iVar1;
      iVar2 = iVar1;
    } while (param_2 < param_3);
  }
  return iVar1;
}


/* address=008c9100 symbol=_ZNSs19_M_range_initializeIPKcEEvT_S2_RKSt20forward_iterator_tag */

void _ZNSs19_M_range_initializeIPKcEEvT_S2_RKSt20forward_iterator_tag
               (undefined4 param_1,int param_2,int param_3,undefined4 param_4)

{
                    /* WARNING: Subroutine does not return */
  _ZNSt4priv12_String_baseIcSaIcEE17_M_allocate_blockEj
            (param_1,(param_3 - param_2) + 1,param_3,param_4,param_4);
}


/* address=008c912c symbol=_ZNKSt7collateIcE12do_transformEPKcS2_ */

int _ZNKSt7collateIcE12do_transformEPKcS2_
              (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined auStack_c [4];
  
  *(int *)(param_1 + 0x10) = param_1;
  *(int *)(param_1 + 0x14) = param_1;
  _ZNSs19_M_range_initializeIPKcEEvT_S2_RKSt20forward_iterator_tag
            (param_1,param_3,param_4,auStack_c);
  return param_1;
}


/* address=008c9148 symbol=_ZNSt7collateIwED1Ev */

void _ZNSt7collateIwED1Ev(undefined4 *param_1)

{
  *param_1 = &PTR__ZNSt7collateIwED1Ev_1_009a46f0;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev();
}


/* address=008c9168 symbol=_ZNSt7collateIwED0Ev */

void _ZNSt7collateIwED0Ev(undefined4 param_1)

{
  _ZNSt7collateIwED1Ev();
                    /* WARNING: Subroutine does not return */
  _ZdlPv(param_1);
}


/* address=008c917c symbol=_ZNSt7collateIwED2Ev */

void _ZNSt7collateIwED2Ev(undefined4 *param_1)

{
  *param_1 = &PTR__ZNSt7collateIwED1Ev_1_009a46f0;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev();
}


/* address=008c919c symbol=_ZNSt7collateIcED1Ev */

void _ZNSt7collateIcED1Ev(undefined4 *param_1)

{
  *param_1 = 0x9a4710;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev();
}


/* address=008c91bc symbol=_ZNSt7collateIcED0Ev */

void _ZNSt7collateIcED0Ev(undefined4 param_1)

{
  _ZNSt7collateIcED1Ev();
                    /* WARNING: Subroutine does not return */
  _ZdlPv(param_1);
}


/* address=008c91d0 symbol=_ZNSt7collateIcED2Ev */

void _ZNSt7collateIcED2Ev(undefined4 *param_1)

{
  *param_1 = 0x9a4710;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev();
}


/* address=008c91f0 symbol=_ZNKSt7collateIcE10do_compareEPKcS2_S2_S2_ */

void _ZNKSt7collateIcE10do_compareEPKcS2_S2_S2_
               (undefined4 param_1,void *param_2,int param_3,void *param_4,int param_5)

{
  size_t __n;
  
  __n = param_5 - (int)param_4;
  if (param_3 - (int)param_2 < param_5 - (int)param_4) {
    __n = param_3 - (int)param_2;
  }
                    /* WARNING: Subroutine does not return */
  memcmp(param_2,param_4,__n);
}


/* address=008c921c symbol=_ZNSbIwSt11char_traitsIwESaIwEE19_M_range_initializeIPKwEEvT_S6_RKSt20forward_iterator_tag */

void _ZNSbIwSt11char_traitsIwESaIwEE19_M_range_initializeIPKwEEvT_S6_RKSt20forward_iterator_tag
               (int param_1,void *param_2,void *param_3,undefined4 param_4)

{
  undefined4 *__dest;
  
  _ZNSt4priv12_String_baseIwSaIwEE17_M_allocate_blockEj
            (param_1,((int)param_3 - (int)param_2 >> 2) + 1,param_3,param_4,param_4);
  __dest = *(undefined4 **)(param_1 + 0x44);
  if (param_2 != param_3) {
                    /* WARNING: Subroutine does not return */
    memcpy(__dest,param_2,(int)param_3 - (int)param_2);
  }
  *(undefined4 **)(param_1 + 0x40) = __dest;
  *__dest = 0;
  return;
}


/* address=008c9248 symbol=_ZNKSt7collateIwE12do_transformEPKwS2_ */

int _ZNKSt7collateIwE12do_transformEPKwS2_
              (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined auStack_c [4];
  
  *(int *)(param_1 + 0x40) = param_1;
  *(int *)(param_1 + 0x44) = param_1;
  _ZNSbIwSt11char_traitsIwESaIwEE19_M_range_initializeIPKwEEvT_S6_RKSt20forward_iterator_tag
            (param_1,param_3,param_4,auStack_c);
  return param_1;
}


/* address=008c9264 symbol=_ZNKSt10moneypunctIcLb1EE16do_decimal_pointEv */

undefined4 _ZNKSt10moneypunctIcLb1EE16do_decimal_pointEv(void)

{
  return 0x20;
}


/* address=008c9268 symbol=_ZNKSt10moneypunctIcLb1EE16do_thousands_sepEv */

undefined4 _ZNKSt10moneypunctIcLb1EE16do_thousands_sepEv(void)

{
  return 0x20;
}


/* address=008c926c symbol=_ZNKSt10moneypunctIcLb1EE13do_pos_formatEv */

undefined4 _ZNKSt10moneypunctIcLb1EE13do_pos_formatEv(int param_1)

{
  return *(undefined4 *)(param_1 + 0xc);
}


/* address=008c928c symbol=_ZNKSt10moneypunctIcLb1EE13do_neg_formatEv */

undefined4 _ZNKSt10moneypunctIcLb1EE13do_neg_formatEv(int param_1)

{
  return *(undefined4 *)(param_1 + 0x10);
}


/* address=008c92ac symbol=_ZNKSt10moneypunctIcLb1EE14do_frac_digitsEv */

undefined4 _ZNKSt10moneypunctIcLb1EE14do_frac_digitsEv(void)

{
  return 0;
}


/* address=008c92b0 symbol=_ZNKSt10moneypunctIcLb0EE16do_decimal_pointEv */

undefined4 _ZNKSt10moneypunctIcLb0EE16do_decimal_pointEv(void)

{
  return 0x20;
}


/* address=008c92b4 symbol=_ZNKSt10moneypunctIcLb0EE16do_thousands_sepEv */

undefined4 _ZNKSt10moneypunctIcLb0EE16do_thousands_sepEv(void)

{
  return 0x20;
}


/* address=008c92b8 symbol=_ZNKSt10moneypunctIcLb0EE13do_pos_formatEv */

undefined4 _ZNKSt10moneypunctIcLb0EE13do_pos_formatEv(int param_1)

{
  return *(undefined4 *)(param_1 + 0xc);
}


/* address=008c92d8 symbol=_ZNKSt10moneypunctIcLb0EE13do_neg_formatEv */

undefined4 _ZNKSt10moneypunctIcLb0EE13do_neg_formatEv(int param_1)

{
  return *(undefined4 *)(param_1 + 0x10);
}


/* address=008c92f8 symbol=_ZNKSt10moneypunctIcLb0EE14do_frac_digitsEv */

undefined4 _ZNKSt10moneypunctIcLb0EE14do_frac_digitsEv(void)

{
  return 0;
}


/* address=008c92fc symbol=_ZNKSt10moneypunctIwLb1EE16do_decimal_pointEv */

undefined4 _ZNKSt10moneypunctIwLb1EE16do_decimal_pointEv(void)

{
  return 0x20;
}


/* address=008c9300 symbol=_ZNKSt10moneypunctIwLb1EE16do_thousands_sepEv */

undefined4 _ZNKSt10moneypunctIwLb1EE16do_thousands_sepEv(void)

{
  return 0x20;
}


/* address=008c9304 symbol=_ZNKSt10moneypunctIwLb1EE14do_frac_digitsEv */

undefined4 _ZNKSt10moneypunctIwLb1EE14do_frac_digitsEv(void)

{
  return 0;
}


/* address=008c9308 symbol=_ZNKSt10moneypunctIwLb1EE13do_pos_formatEv */

undefined4 _ZNKSt10moneypunctIwLb1EE13do_pos_formatEv(int param_1)

{
  return *(undefined4 *)(param_1 + 0xc);
}


/* address=008c9328 symbol=_ZNKSt10moneypunctIwLb1EE13do_neg_formatEv */

undefined4 _ZNKSt10moneypunctIwLb1EE13do_neg_formatEv(int param_1)

{
  return *(undefined4 *)(param_1 + 0x10);
}


/* address=008c9348 symbol=_ZNKSt10moneypunctIwLb0EE16do_decimal_pointEv */

undefined4 _ZNKSt10moneypunctIwLb0EE16do_decimal_pointEv(void)

{
  return 0x20;
}


/* address=008c934c symbol=_ZNKSt10moneypunctIwLb0EE16do_thousands_sepEv */

undefined4 _ZNKSt10moneypunctIwLb0EE16do_thousands_sepEv(void)

{
  return 0x20;
}


/* address=008c9350 symbol=_ZNKSt10moneypunctIwLb0EE14do_frac_digitsEv */

undefined4 _ZNKSt10moneypunctIwLb0EE14do_frac_digitsEv(void)

{
  return 0;
}


/* address=008c9354 symbol=_ZNKSt10moneypunctIwLb0EE13do_pos_formatEv */

undefined4 _ZNKSt10moneypunctIwLb0EE13do_pos_formatEv(int param_1)

{
  return *(undefined4 *)(param_1 + 0xc);
}


/* address=008c9374 symbol=_ZNKSt10moneypunctIwLb0EE13do_neg_formatEv */

undefined4 _ZNKSt10moneypunctIwLb0EE13do_neg_formatEv(int param_1)

{
  return *(undefined4 *)(param_1 + 0x10);
}


/* address=008c9394 symbol=_ZNSt10moneypunctIwLb0EED1Ev */

void _ZNSt10moneypunctIwLb0EED1Ev(undefined4 *param_1)

{
  *param_1 = &PTR__ZNSt10moneypunctIwLb0EED1Ev_1_009a4730;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev();
}


/* address=008c93b4 symbol=_ZNSt10moneypunctIwLb0EED0Ev */

void _ZNSt10moneypunctIwLb0EED0Ev(undefined4 param_1)

{
  _ZNSt10moneypunctIwLb0EED1Ev();
                    /* WARNING: Subroutine does not return */
  _ZdlPv(param_1);
}


/* address=008c93c8 symbol=_ZNSt10moneypunctIwLb0EED2Ev */

void _ZNSt10moneypunctIwLb0EED2Ev(undefined4 *param_1)

{
  *param_1 = &PTR__ZNSt10moneypunctIwLb0EED1Ev_1_009a4730;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev();
}


/* address=008c93e8 symbol=_ZNSt10moneypunctIwLb1EED1Ev */

void _ZNSt10moneypunctIwLb1EED1Ev(undefined4 *param_1)

{
  *param_1 = 0x9a4768;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev();
}


/* address=008c9408 symbol=_ZNSt10moneypunctIwLb1EED0Ev */

void _ZNSt10moneypunctIwLb1EED0Ev(undefined4 param_1)

{
  _ZNSt10moneypunctIwLb1EED1Ev();
                    /* WARNING: Subroutine does not return */
  _ZdlPv(param_1);
}


/* address=008c941c symbol=_ZNSt10moneypunctIwLb1EED2Ev */

void _ZNSt10moneypunctIwLb1EED2Ev(undefined4 *param_1)

{
  *param_1 = 0x9a4768;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev();
}


/* address=008c943c symbol=_ZNSt10moneypunctIcLb0EED1Ev */

void _ZNSt10moneypunctIcLb0EED1Ev(undefined4 *param_1)

{
  *param_1 = 0x9a47a0;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev();
}


/* address=008c945c symbol=_ZNSt10moneypunctIcLb0EED0Ev */

void _ZNSt10moneypunctIcLb0EED0Ev(undefined4 param_1)

{
  _ZNSt10moneypunctIcLb0EED1Ev();
                    /* WARNING: Subroutine does not return */
  _ZdlPv(param_1);
}


/* address=008c9470 symbol=_ZNSt10moneypunctIcLb0EED2Ev */

void _ZNSt10moneypunctIcLb0EED2Ev(undefined4 *param_1)

{
  *param_1 = 0x9a47a0;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev();
}


/* address=008c9490 symbol=_ZNSt10moneypunctIcLb1EED1Ev */

void _ZNSt10moneypunctIcLb1EED1Ev(undefined4 *param_1)

{
  *param_1 = 0x9a47d8;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev();
}


/* address=008c94b0 symbol=_ZNSt10moneypunctIcLb1EED0Ev */

void _ZNSt10moneypunctIcLb1EED0Ev(undefined4 param_1)

{
  _ZNSt10moneypunctIcLb1EED1Ev();
                    /* WARNING: Subroutine does not return */
  _ZdlPv(param_1);
}


/* address=008c94c4 symbol=_ZNSt10moneypunctIcLb1EED2Ev */

void _ZNSt10moneypunctIcLb1EED2Ev(undefined4 *param_1)

{
  *param_1 = 0x9a47d8;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev();
}


/* address=008c94e4 symbol=_ZNSt10moneypunctIcLb1EEC1Ej */

void _ZNSt10moneypunctIcLb1EEC1Ej(int param_1,int param_2)

{
  *(uint *)(param_1 + 4) = (uint)(param_2 != 0);
                    /* WARNING: Subroutine does not return */
  pthread_mutex_init((pthread_mutex_t *)(param_1 + 8),(pthread_mutexattr_t *)0x0);
}


/* address=008c9528 symbol=_ZNSsC1ERKSs.clone.1 */

int _ZNSsC1ERKSs_clone_1(int param_1)

{
  *(int *)(param_1 + 0x10) = param_1;
  *(int *)(param_1 + 0x14) = param_1;
  _ZNSs19_M_range_initializeEPKcS0_(param_1,UNK_00a4549c,UNK_00a45498);
  return param_1;
}


/* address=008c9544 symbol=_ZNKSt10moneypunctIcLb1EE11do_groupingEv */

undefined4 _ZNKSt10moneypunctIcLb1EE11do_groupingEv(undefined4 param_1)

{
  _ZNSsC1ERKSs_clone_1();
  return param_1;
}


/* address=008c9550 symbol=_ZNKSt10moneypunctIcLb1EE14do_curr_symbolEv */

undefined4 _ZNKSt10moneypunctIcLb1EE14do_curr_symbolEv(undefined4 param_1)

{
  _ZNSsC1ERKSs_clone_1();
  return param_1;
}


/* address=008c955c symbol=_ZNKSt10moneypunctIcLb1EE16do_positive_signEv */

undefined4 _ZNKSt10moneypunctIcLb1EE16do_positive_signEv(undefined4 param_1)

{
  _ZNSsC1ERKSs_clone_1();
  return param_1;
}


/* address=008c9568 symbol=_ZNKSt10moneypunctIcLb1EE16do_negative_signEv */

undefined4 _ZNKSt10moneypunctIcLb1EE16do_negative_signEv(undefined4 param_1)

{
  _ZNSsC1ERKSs_clone_1();
  return param_1;
}


/* address=008c9574 symbol=_ZNKSt10moneypunctIcLb0EE11do_groupingEv */

undefined4 _ZNKSt10moneypunctIcLb0EE11do_groupingEv(undefined4 param_1)

{
  _ZNSsC1ERKSs_clone_1();
  return param_1;
}


/* address=008c9580 symbol=_ZNKSt10moneypunctIcLb0EE14do_curr_symbolEv */

undefined4 _ZNKSt10moneypunctIcLb0EE14do_curr_symbolEv(undefined4 param_1)

{
  _ZNSsC1ERKSs_clone_1();
  return param_1;
}


/* address=008c958c symbol=_ZNKSt10moneypunctIcLb0EE16do_positive_signEv */

undefined4 _ZNKSt10moneypunctIcLb0EE16do_positive_signEv(undefined4 param_1)

{
  _ZNSsC1ERKSs_clone_1();
  return param_1;
}


/* address=008c9598 symbol=_ZNKSt10moneypunctIcLb0EE16do_negative_signEv */

undefined4 _ZNKSt10moneypunctIcLb0EE16do_negative_signEv(undefined4 param_1)

{
  _ZNSsC1ERKSs_clone_1();
  return param_1;
}


/* address=008c95a4 symbol=_ZNKSt10moneypunctIwLb1EE11do_groupingEv */

undefined4 _ZNKSt10moneypunctIwLb1EE11do_groupingEv(undefined4 param_1)

{
  _ZNSsC1ERKSs_clone_1();
  return param_1;
}


/* address=008c95b0 symbol=_ZNKSt10moneypunctIwLb0EE11do_groupingEv */

undefined4 _ZNKSt10moneypunctIwLb0EE11do_groupingEv(undefined4 param_1)

{
  _ZNSsC1ERKSs_clone_1();
  return param_1;
}


/* address=008c95bc symbol=_ZNSt10moneypunctIcLb1EEC2Ej */

void _ZNSt10moneypunctIcLb1EEC2Ej(int param_1,int param_2)

{
  *(uint *)(param_1 + 4) = (uint)(param_2 != 0);
                    /* WARNING: Subroutine does not return */
  pthread_mutex_init((pthread_mutex_t *)(param_1 + 8),(pthread_mutexattr_t *)0x0);
}


/* address=008c9600 symbol=_ZNSt10moneypunctIwLb0EEC1Ej */

void _ZNSt10moneypunctIwLb0EEC1Ej(int param_1,int param_2)

{
  *(uint *)(param_1 + 4) = (uint)(param_2 != 0);
                    /* WARNING: Subroutine does not return */
  pthread_mutex_init((pthread_mutex_t *)(param_1 + 8),(pthread_mutexattr_t *)0x0);
}


/* address=008c9644 symbol=_ZNSt10moneypunctIwLb0EEC2Ej */

void _ZNSt10moneypunctIwLb0EEC2Ej(int param_1,int param_2)

{
  *(uint *)(param_1 + 4) = (uint)(param_2 != 0);
                    /* WARNING: Subroutine does not return */
  pthread_mutex_init((pthread_mutex_t *)(param_1 + 8),(pthread_mutexattr_t *)0x0);
}


/* address=008c9688 symbol=_ZNSt10moneypunctIwLb1EEC1Ej */

void _ZNSt10moneypunctIwLb1EEC1Ej(int param_1,int param_2)

{
  *(uint *)(param_1 + 4) = (uint)(param_2 != 0);
                    /* WARNING: Subroutine does not return */
  pthread_mutex_init((pthread_mutex_t *)(param_1 + 8),(pthread_mutexattr_t *)0x0);
}


/* address=008c96cc symbol=_ZNSt10moneypunctIwLb1EEC2Ej */

void _ZNSt10moneypunctIwLb1EEC2Ej(int param_1,int param_2)

{
  *(uint *)(param_1 + 4) = (uint)(param_2 != 0);
                    /* WARNING: Subroutine does not return */
  pthread_mutex_init((pthread_mutex_t *)(param_1 + 8),(pthread_mutexattr_t *)0x0);
}


/* address=008c9710 symbol=_ZNSt10moneypunctIcLb0EEC1Ej */

void _ZNSt10moneypunctIcLb0EEC1Ej(int param_1,int param_2)

{
  *(uint *)(param_1 + 4) = (uint)(param_2 != 0);
                    /* WARNING: Subroutine does not return */
  pthread_mutex_init((pthread_mutex_t *)(param_1 + 8),(pthread_mutexattr_t *)0x0);
}


/* address=008c9754 symbol=_ZNSt10moneypunctIcLb0EEC2Ej */

void _ZNSt10moneypunctIcLb0EEC2Ej(int param_1,int param_2)

{
  *(uint *)(param_1 + 4) = (uint)(param_2 != 0);
                    /* WARNING: Subroutine does not return */
  pthread_mutex_init((pthread_mutex_t *)(param_1 + 8),(pthread_mutexattr_t *)0x0);
}


/* address=008c9798 symbol=_ZNSbIwSt11char_traitsIwESaIwEED1Ev */

undefined4 _ZNSbIwSt11char_traitsIwESaIwEED1Ev(undefined4 param_1)

{
  _ZNSt4priv12_String_baseIwSaIwEE19_M_deallocate_blockEv();
  return param_1;
}


/* address=008c97a4 symbol=_ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_.clone.2 */

int _ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2__clone_2(int param_1)

{
  *(int *)(param_1 + 0x40) = param_1;
  *(int *)(param_1 + 0x44) = param_1;
  _ZNSbIwSt11char_traitsIwESaIwEE19_M_range_initializeEPKwS4_
            (param_1,_ZStL16_S_empty_wstring._68_4_,_ZStL16_S_empty_wstring._64_4_);
  return param_1;
}


/* address=008c97c0 symbol=_ZNKSt10moneypunctIwLb1EE14do_curr_symbolEv */

undefined4 _ZNKSt10moneypunctIwLb1EE14do_curr_symbolEv(undefined4 param_1)

{
  _ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2__clone_2();
  return param_1;
}


/* address=008c97cc symbol=_ZNKSt10moneypunctIwLb1EE16do_positive_signEv */

undefined4 _ZNKSt10moneypunctIwLb1EE16do_positive_signEv(undefined4 param_1)

{
  _ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2__clone_2();
  return param_1;
}


/* address=008c97d8 symbol=_ZNKSt10moneypunctIwLb1EE16do_negative_signEv */

undefined4 _ZNKSt10moneypunctIwLb1EE16do_negative_signEv(undefined4 param_1)

{
  _ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2__clone_2();
  return param_1;
}


/* address=008c97e4 symbol=_ZNKSt10moneypunctIwLb0EE14do_curr_symbolEv */

undefined4 _ZNKSt10moneypunctIwLb0EE14do_curr_symbolEv(undefined4 param_1)

{
  _ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2__clone_2();
  return param_1;
}


/* address=008c97f0 symbol=_ZNKSt10moneypunctIwLb0EE16do_positive_signEv */

undefined4 _ZNKSt10moneypunctIwLb0EE16do_positive_signEv(undefined4 param_1)

{
  _ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2__clone_2();
  return param_1;
}


/* address=008c97fc symbol=_ZNKSt10moneypunctIwLb0EE16do_negative_signEv */

undefined4 _ZNKSt10moneypunctIwLb0EE16do_negative_signEv(undefined4 param_1)

{
  _ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2__clone_2();
  return param_1;
}


/* address=008c9808 symbol=_GLOBAL__I_monetary.cpp */

void _GLOBAL__I_monetary_cpp(void)

{
  UNK_00a45498 = &_ZStL15_S_empty_string;
  UNK_00a4549c = &_ZStL15_S_empty_string;
                    /* WARNING: Subroutine does not return */
  _ZNSt4priv12_String_baseIcSaIcEE17_M_allocate_blockEj(&_ZStL15_S_empty_string,0x10);
}


/* address=008c9874 symbol=_ZNSt4priv16__valid_groupingEPKcS1_S1_S1_ */

bool _ZNSt4priv16__valid_groupingEPKcS1_S1_S1_
               (byte *param_1,byte *param_2,byte *param_3,byte *param_4)

{
  byte bVar1;
  bool bVar2;
  
  if ((param_3 == param_4) || (param_1 == param_2)) {
    bVar2 = true;
  }
  else {
    param_2 = param_2 + -1;
    if (param_1 == param_2) {
      bVar1 = *param_3;
LAB_008c98a4:
      bVar2 = *param_1 <= bVar1;
    }
    else {
      bVar1 = *param_3;
      if (*param_2 == bVar1) {
        do {
          param_2 = param_2 + -1;
          if (param_3 != param_4 + -1) {
            param_3 = param_3 + 1;
            bVar1 = *param_3;
          }
          if (param_2 == param_1) goto LAB_008c98a4;
        } while (*param_2 == bVar1);
      }
      bVar2 = false;
    }
  }
  return bVar2;
}


/* address=008c98bc symbol=_ZNSt4priv17__digit_val_tableEj */

undefined _ZNSt4priv17__digit_val_tableEj(int param_1)

{
  return (&_ZZNSt4priv17__digit_val_tableEjE11__val_table)[param_1];
}


/* address=008c98c8 symbol=_ZNSt4priv14__narrow_atomsEv */

char * _ZNSt4priv14__narrow_atomsEv(void)

{
  return "+-0xX";
}


/* address=008c98d4 symbol=_ZNSt4priv6__findIPKwwEET_S3_S3_RKT0_RKSt26random_access_iterator_tag */

int * _ZNSt4priv6__findIPKwwEET_S3_S3_RKT0_RKSt26random_access_iterator_tag
                (int *param_1,int *param_2,int *param_3)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar1 = (int)param_2 - (int)param_1;
  iVar2 = iVar1 >> 4;
  if (0 < iVar2) {
    iVar1 = *param_3;
    if (*param_1 == iVar1) {
      return param_1;
    }
    if (iVar1 == param_1[1]) {
      return param_1 + 1;
    }
    if (iVar1 == param_1[2]) {
      return param_1 + 2;
    }
    param_1 = param_1 + 3;
    iVar3 = *param_1;
    while( true ) {
      if (iVar1 == iVar3) {
        return param_1;
      }
      iVar2 = iVar2 + -1;
      if (iVar2 == 0) break;
      if (param_1[1] == iVar1) {
        return param_1 + 1;
      }
      if (param_1[2] == iVar1) {
        return param_1 + 2;
      }
      if (iVar1 == param_1[3]) {
        return param_1 + 3;
      }
      param_1 = param_1 + 4;
      iVar3 = *param_1;
    }
    param_1 = param_1 + 1;
    iVar1 = (int)param_2 - (int)param_1;
  }
  iVar1 = iVar1 >> 2;
  if (iVar1 == 2) {
    iVar1 = *param_3;
  }
  else {
    if (iVar1 != 3) {
      if (iVar1 != 1) {
        return param_2;
      }
      iVar1 = *param_3;
      goto LAB_008c9942;
    }
    iVar1 = *param_3;
    if (*param_1 == iVar1) {
      return param_1;
    }
    param_1 = param_1 + 1;
  }
  if (*param_1 == iVar1) {
    return param_1;
  }
  param_1 = param_1 + 1;
LAB_008c9942:
  if (*param_1 != iVar1) {
    param_1 = param_2;
  }
  return param_1;
}


/* address=008c9968 symbol=_ZNSt4priv12__get_fdigitERwPKw */

bool _ZNSt4priv12__get_fdigitERwPKw(uint *param_1,int param_2)

{
  int iVar1;
  int iVar2;
  undefined auStack_14 [4];
  
  iVar2 = param_2 + 0x28;
  iVar1 = _ZNSt4priv6__findIPKwwEET_S3_S3_RKT0_RKSt26random_access_iterator_tag
                    (param_2,iVar2,param_1,auStack_14);
  if (iVar2 != iVar1) {
    *param_1 = (iVar1 - param_2 >> 2) + 0x30U & 0xff;
  }
  return iVar2 != iVar1;
}


/* address=008c999c symbol=_ZNSt4priv19__get_fdigit_or_sepERwwPKw */

undefined4 _ZNSt4priv19__get_fdigit_or_sepERwwPKw(int *param_1,int param_2,undefined4 param_3)

{
  undefined4 uVar1;
  
  if (*param_1 == param_2) {
    *param_1 = 0x2c;
    uVar1 = 1;
  }
  else {
    uVar1 = _ZNSt4priv12__get_fdigitERwPKw(param_1,param_3);
  }
  return uVar1;
}


/* address=008c99b4 symbol=_ZNSt4priv19__hex_char_table_loEv */

char * _ZNSt4priv19__hex_char_table_loEv(void)

{
  return "0123456789abcdefx";
}


/* address=008c99c0 symbol=_ZNSt4priv19__hex_char_table_hiEv */

char * _ZNSt4priv19__hex_char_table_hiEv(void)

{
  return "0123456789ABCDEFX";
}


/* address=008c99cc symbol=_ZNSt4priv17__insert_groupingEPwS0_RKSswwwi */

int _ZNSt4priv17__insert_groupingEPwS0_RKSswwwi
              (int *param_1,int *param_2,int param_3,int param_4,int param_5,int param_6,int param_7
              )

{
  size_t __n;
  uint uVar1;
  uint uVar2;
  int iVar3;
  int *piVar4;
  
  iVar3 = 0;
  if (param_1 != param_2) {
    if ((param_5 == *param_1) || (iVar3 = 0, param_6 == *param_1)) {
      iVar3 = 1;
      param_1 = param_1 + 1;
    }
    uVar2 = 0;
    uVar1 = 0;
    piVar4 = param_2;
    while( true ) {
      if (uVar1 < (uint)(*(int *)(param_3 + 0x10) - *(int *)(param_3 + 0x14))) {
        uVar2 = (uint)*(byte *)(*(int *)(param_3 + 0x14) + uVar1);
        uVar1 = uVar1 + 1;
      }
      if (((uVar2 == 0) || (uVar2 == 0xff)) ||
         ((int)param_2 - (int)(param_1 + param_7) >> 2 <= (int)uVar2)) break;
      param_2 = param_2 + -uVar2;
      __n = (int)(piVar4 + 1) - (int)param_2;
      if (0 < (int)__n) {
                    /* WARNING: Subroutine does not return */
        memmove((void *)((int)piVar4 + (8 - __n)),param_2,__n);
      }
      *param_2 = param_4;
      piVar4 = piVar4 + 1;
    }
    iVar3 = param_7 + iVar3 + ((int)piVar4 - (int)(param_1 + param_7) >> 2);
  }
  return iVar3;
}


/* address=008c9a6c symbol=_ZNSt4priv17__insert_groupingEPcS0_RKSsccci */

char * _ZNSt4priv17__insert_groupingEPcS0_RKSsccci
                 (char *param_1,char *param_2,int param_3,char param_4,char param_5,char param_6,
                 int param_7)

{
  size_t __n;
  uint uVar1;
  uint uVar2;
  char *pcVar3;
  int iVar4;
  
  pcVar3 = (char *)0x0;
  if (param_1 != param_2) {
    if ((param_5 == *param_1) || (iVar4 = 0, param_6 == *param_1)) {
      iVar4 = 1;
      param_1 = param_1 + 1;
    }
    uVar1 = 0;
    uVar2 = 0;
    pcVar3 = param_2;
    while( true ) {
      if (uVar1 < (uint)(*(int *)(param_3 + 0x10) - *(int *)(param_3 + 0x14))) {
        uVar2 = (uint)*(byte *)(*(int *)(param_3 + 0x14) + uVar1);
        uVar1 = uVar1 + 1;
      }
      if (((uVar2 == 0) || (uVar2 == 0xff)) ||
         ((int)param_2 - (int)(param_1 + param_7) <= (int)uVar2)) break;
      param_2 = param_2 + -uVar2;
      __n = (int)(pcVar3 + 1) - (int)param_2;
      if (0 < (int)__n) {
                    /* WARNING: Subroutine does not return */
        memmove(pcVar3 + (2 - __n),param_2,__n);
      }
      *param_2 = param_4;
      pcVar3 = pcVar3 + 1;
    }
    pcVar3 = pcVar3 + ((param_7 + iVar4) - (int)(param_1 + param_7));
  }
  return pcVar3;
}


/* address=008c9b08 symbol=_ZNSt4priv15__write_integerEPcil */

void _ZNSt4priv15__write_integerEPcil(void *param_1)

{
  void *__src;
  size_t __n;
  int local_1c [2];
  
  local_1c[0] = __stack_chk_guard;
  __src = (void *)_ZNSt4priv24__write_integer_backwardIlEEPcS1_iT_(local_1c);
  __n = (int)local_1c - (int)__src;
  if (__n != 0) {
                    /* WARNING: Subroutine does not return */
    memmove(param_1,__src,__n);
  }
  if (local_1c[0] == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}


/* address=008c9b50 symbol=_ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE20_M_compute_next_sizeEj.clone.0 */

uint _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE20_M_compute_next_sizeEj_clone_0
               (int param_1)

{
  uint uVar1;
  uint uVar2;
  
  uVar2 = *(int *)(param_1 + 0x40) - *(int *)(param_1 + 0x448) >> 2;
  uVar1 = uVar2;
  if (uVar2 == 0) {
    uVar1 = 1;
  }
  uVar1 = uVar2 + 1 + uVar1;
  if ((0x3ffffffe < uVar1) || (uVar1 < uVar2)) {
    uVar1 = 0x3ffffffe;
  }
  return uVar1;
}


/* address=008c9b7c symbol=_ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE20_M_compute_next_sizeEj.clone.1 */

uint _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE20_M_compute_next_sizeEj_clone_1
               (int param_1)

{
  uint uVar1;
  uint uVar2;
  
  uVar2 = *(int *)(param_1 + 0x10) - *(int *)(param_1 + 0x118);
  if (uVar2 == 0xfffffffe) {
    _ZSt24__stl_throw_length_errorPKc("basic_string");
    uVar1 = 0xfffffffd;
  }
  else {
    uVar1 = uVar2;
    if (uVar2 == 0) {
      uVar1 = 1;
    }
    uVar1 = uVar2 + 1 + uVar1;
    if (uVar1 == 0xffffffff) {
      return 0xfffffffe;
    }
  }
  if (uVar1 < uVar2) {
    return 0xfffffffe;
  }
  return uVar1;
}


/* address=008c9bb8 symbol=_ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE13_M_insert_auxEPcc */

int * _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE13_M_insert_auxEPcc
                (int *param_1,int *param_2,undefined param_3)

{
  int *piVar1;
  int iVar2;
  uint uVar3;
  int *piVar4;
  int iVar5;
  int iVar6;
  int *piVar7;
  undefined *puVar8;
  
  if ((int *)param_1[0x46] == param_1) {
    iVar5 = param_1[4];
    uVar3 = (int)param_1 + (0x10 - iVar5);
  }
  else {
    iVar5 = param_1[4];
    uVar3 = *param_1 - iVar5;
  }
  if (uVar3 < 2) {
    uVar3 = _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE20_M_compute_next_sizeEj_clone_1
                      (param_1);
    piVar4 = param_1 + 5;
    if (0x101 < uVar3) {
                    /* WARNING: Subroutine does not return */
      _Znwj();
    }
    iVar5 = param_1[0x46];
    iVar6 = 0;
    iVar2 = (int)param_2 - iVar5;
    piVar7 = piVar4;
    if (0 < iVar2) {
      do {
        *(undefined *)((int)piVar4 + iVar6) = *(undefined *)(iVar5 + iVar6);
        iVar6 = iVar6 + 1;
      } while (iVar6 != iVar2);
      piVar7 = (int *)((int)piVar4 + iVar6);
    }
    *(undefined *)piVar7 = param_3;
    iVar5 = param_1[4];
    puVar8 = (undefined *)((int)piVar7 + 1);
    if (0 < iVar5 - (int)param_2) {
      iVar2 = 0;
      do {
        iVar6 = iVar2 + 1;
        *(undefined *)((int)piVar7 + iVar2 + 1) = *(undefined *)((int)param_2 + iVar2);
        iVar2 = iVar6;
      } while (iVar6 != iVar5 - (int)param_2);
      puVar8 = puVar8 + iVar6;
    }
    *puVar8 = 0;
    piVar1 = (int *)param_1[0x46];
    if (((param_1 != piVar1) && (piVar1 != (int *)0x0)) && (piVar1 != param_1 + 5)) {
      if (0x80 < (uint)(*param_1 - (int)piVar1)) {
                    /* WARNING: Subroutine does not return */
        _ZdlPv();
      }
      _ZNSt12__node_alloc13_M_deallocateEPvj();
    }
    *param_1 = (int)piVar4 + uVar3;
    param_1[4] = (int)puVar8;
    param_1[0x46] = (int)piVar4;
  }
  else {
    *(undefined *)(iVar5 + 1) = 0;
    if (param_1[4] - (int)param_2 != 0) {
                    /* WARNING: Subroutine does not return */
      memmove((void *)((int)param_2 + 1),param_2,param_1[4] - (int)param_2);
    }
    *(undefined *)param_2 = param_3;
    param_1[4] = param_1[4] + 1;
    piVar7 = param_2;
  }
  return piVar7;
}


/* address=008c9ca4 symbol=_ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE10_M_reserveEj */

void _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE10_M_reserveEj
               (undefined4 *param_1,uint param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 *puVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined4 *puVar6;
  
  puVar2 = param_1 + 0x11;
  if (0x101 < param_2) {
    puVar2 = (undefined4 *)_ZNSaIwE8allocateEjPKv(puVar2,param_2,0,0x101,param_4);
  }
  iVar1 = param_1[0x112];
  iVar5 = param_1[0x10] - iVar1 >> 2;
  puVar6 = puVar2;
  if (0 < iVar5) {
    iVar4 = 0;
    iVar3 = iVar5;
    do {
      iVar3 = iVar3 + -1;
      *(undefined4 *)((int)puVar2 + iVar4) = *(undefined4 *)(iVar1 + iVar4);
      iVar4 = iVar4 + 4;
    } while (iVar3 != 0);
    puVar6 = puVar2 + iVar5;
  }
  *puVar6 = 0;
  _ZNSt4priv12_String_baseIwNS_20__iostring_allocatorIwEEE19_M_deallocate_blockEv(param_1);
  *param_1 = puVar2 + param_2;
  param_1[0x10] = puVar6;
  param_1[0x112] = puVar2;
  return;
}


/* address=008c9d0c symbol=_ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE9push_backEw */

void _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE9push_backEw
               (int *param_1,undefined4 param_2)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  
  if ((int *)param_1[0x112] == param_1) {
    iVar3 = param_1[0x10];
    iVar2 = 0x10 - (iVar3 - (int)param_1 >> 2);
  }
  else {
    iVar3 = param_1[0x10];
    iVar2 = *param_1 - iVar3 >> 2;
  }
  if (iVar2 == 1) {
    uVar1 = _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE20_M_compute_next_sizeEj_clone_0
                      (param_1);
    _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE10_M_reserveEj(param_1,uVar1);
    iVar3 = param_1[0x10];
  }
  *(undefined4 *)(iVar3 + 4) = 0;
  *(undefined4 *)param_1[0x10] = param_2;
  param_1[0x10] = param_1[0x10] + 4;
  return;
}


/* address=008c9d58 symbol=_ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE13_M_insert_auxEPww */

wchar_t **
_ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE13_M_insert_auxEPww
          (wchar_t **param_1,wchar_t **param_2,wchar_t *param_3)

{
  wchar_t **ppwVar1;
  uint uVar2;
  int iVar3;
  wchar_t *pwVar4;
  int iVar5;
  int iVar6;
  wchar_t **ppwVar7;
  wchar_t **ppwVar8;
  
  if ((wchar_t **)param_1[0x112] == param_1) {
    pwVar4 = param_1[0x10];
    uVar2 = 0x10 - ((int)pwVar4 - (int)param_1 >> 2);
  }
  else {
    pwVar4 = param_1[0x10];
    uVar2 = (int)*param_1 - (int)pwVar4 >> 2;
  }
  if (uVar2 < 2) {
    uVar2 = _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE20_M_compute_next_sizeEj_clone_0
                      (param_1);
    ppwVar1 = param_1 + 0x11;
    if (0x101 < uVar2) {
      ppwVar1 = (wchar_t **)_ZNSaIwE8allocateEjPKv(ppwVar1,uVar2,0);
    }
    pwVar4 = param_1[0x112];
    iVar6 = (int)param_2 - (int)pwVar4 >> 2;
    ppwVar7 = ppwVar1;
    if (0 < iVar6) {
      iVar5 = 0;
      iVar3 = iVar6;
      do {
        iVar3 = iVar3 + -1;
        *(undefined4 *)((int)ppwVar1 + iVar5) = *(undefined4 *)((int)pwVar4 + iVar5);
        iVar5 = iVar5 + 4;
      } while (iVar3 != 0);
      ppwVar7 = ppwVar1 + iVar6;
    }
    ppwVar8 = ppwVar7 + 1;
    *ppwVar7 = param_3;
    iVar6 = (int)param_1[0x10] - (int)param_2 >> 2;
    if (0 < iVar6) {
      iVar5 = 0;
      iVar3 = iVar6;
      do {
        iVar3 = iVar3 + -1;
        *(undefined4 *)((int)ppwVar7 + iVar5 + 4) = *(undefined4 *)((int)param_2 + iVar5);
        iVar5 = iVar5 + 4;
      } while (iVar3 != 0);
      ppwVar8 = ppwVar8 + iVar6;
    }
    *ppwVar8 = (wchar_t *)0x0;
    _ZNSt4priv12_String_baseIwNS_20__iostring_allocatorIwEEE19_M_deallocate_blockEv(param_1);
    *param_1 = (wchar_t *)(ppwVar1 + uVar2);
    param_1[0x10] = (wchar_t *)ppwVar8;
    param_1[0x112] = (wchar_t *)ppwVar1;
  }
  else {
    pwVar4[1] = L'\0';
    wmemmove((wchar_t *)(param_2 + 1),(wchar_t *)param_2,(int)param_1[0x10] - (int)param_2 >> 2);
    *param_2 = param_3;
    param_1[0x10] = param_1[0x10] + 1;
    ppwVar7 = param_2;
  }
  return ppwVar7;
}


/* address=008c9e54 symbol=_ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE6insertEPww */

int _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE6insertEPww
              (int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  
  if (param_2 == *(int *)(param_1 + 0x40)) {
    _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE9push_backEw(param_1,param_3);
    iVar1 = *(int *)(param_1 + 0x40) + -4;
  }
  else {
    iVar1 = _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE13_M_insert_auxEPww();
  }
  return iVar1;
}


/* address=008c9e70 symbol=_ZNSt4priv17__insert_groupingERNS_16__basic_iostringIwEEjRKSswwwi */

void _ZNSt4priv17__insert_groupingERNS_16__basic_iostringIwEEjRKSswwwi
               (int param_1,uint param_2,int param_3,undefined4 param_4,int param_5,int param_6,
               int param_7)

{
  int iVar1;
  int *piVar2;
  uint uVar3;
  uint uVar4;
  
  piVar2 = *(int **)(param_1 + 0x448);
  if (param_2 <= (uint)(*(int *)(param_1 + 0x40) - (int)piVar2 >> 2)) {
    iVar1 = *piVar2;
    piVar2 = piVar2 + param_2;
    uVar4 = 0;
    uVar3 = 0;
    while( true ) {
      if (uVar3 < (uint)(*(int *)(param_3 + 0x10) - *(int *)(param_3 + 0x14))) {
        uVar4 = (uint)*(byte *)(*(int *)(param_3 + 0x14) + uVar3);
        uVar3 = uVar3 + 1;
      }
      if (((uVar4 == 0) ||
          ((int)(((int)piVar2 - *(int *)(param_1 + 0x448) >> 2) -
                ((uint)(param_5 == iVar1 || param_6 == iVar1) + param_7)) <= (int)uVar4)) ||
         (uVar4 == 0xff)) break;
      piVar2 = (int *)_ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE6insertEPww
                                (param_1,piVar2 + -uVar4,param_4);
    }
  }
  return;
}


/* address=008c9ef8 symbol=_ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE6insertEPcc */

int _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE6insertEPcc
              (int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  
  if (param_2 == *(int *)(param_1 + 0x10)) {
    _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE9push_backEc(param_1,param_3);
    iVar1 = *(int *)(param_1 + 0x10) + -1;
  }
  else {
    iVar1 = _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE13_M_insert_auxEPcc();
  }
  return iVar1;
}


/* address=008c9f14 symbol=_ZNSt4priv17__insert_groupingERNS_16__basic_iostringIcEEjRKSsccci */

void _ZNSt4priv17__insert_groupingERNS_16__basic_iostringIcEEjRKSsccci
               (int param_1,uint param_2,int param_3,undefined4 param_4,char param_5,char param_6,
               int param_7)

{
  char cVar1;
  char *pcVar2;
  uint uVar3;
  uint uVar4;
  
  pcVar2 = *(char **)(param_1 + 0x118);
  if (param_2 <= (uint)(*(int *)(param_1 + 0x10) - (int)pcVar2)) {
    cVar1 = *pcVar2;
    pcVar2 = pcVar2 + param_2;
    uVar3 = 0;
    uVar4 = 0;
    while( true ) {
      if (uVar3 < (uint)(*(int *)(param_3 + 0x10) - *(int *)(param_3 + 0x14))) {
        uVar4 = (uint)*(byte *)(*(int *)(param_3 + 0x14) + uVar3);
        uVar3 = uVar3 + 1;
      }
      if (((uVar4 == 0) ||
          ((int)(pcVar2 + (-((uint)(param_6 == cVar1 || param_5 == cVar1) + param_7) -
                          *(int *)(param_1 + 0x118))) <= (int)uVar4)) || (uVar4 == 0xff)) break;
      pcVar2 = (char *)_ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE6insertEPcc
                                 (param_1,(int)pcVar2 - uVar4,param_4);
    }
  }
  return;
}


/* address=008c9fa0 symbol=_ZNSt4privL19_Stl_norm_and_roundERyRiyy */

void _ZNSt4privL19_Stl_norm_and_roundERyRiyy
               (uint *param_1,undefined4 *param_2,uint param_3,uint param_4,uint param_5,
               uint param_6)

{
  uint uVar1;
  uint uVar2;
  
  *param_2 = 0;
  if ((int)param_4 < 0) {
    *param_1 = param_3;
    param_1[1] = param_4;
  }
  else {
    if (((param_3 == 0xffffffff) && (param_4 == 0x7fffffff)) && (param_6 >> 0x1e == 3)) {
      *param_1 = 0;
      param_1[1] = 0x80000000;
      return;
    }
    param_1[1] = param_4 << 1 | param_3 >> 0x1f;
    *param_1 = param_3 << 1 | param_6 >> 0x1f;
    *param_2 = 1;
    param_6 = param_6 << 1 | param_5 >> 0x1f;
    param_5 = param_5 << 1;
  }
  if ((int)param_6 < 0) {
    uVar1 = *param_1;
    if ((((uVar1 & 1) != 0) || (param_5 != 0)) || (param_6 != 0x80000000)) {
      uVar2 = param_1[1] + (uint)(0xfffffffe < uVar1);
      *param_1 = uVar1 + 1;
      param_1[1] = uVar2;
      if ((uVar1 + 1 | uVar2) == 0) {
        *param_1 = 1;
        param_1[1] = 0;
      }
    }
  }
  return;
}


/* address=008ca038 symbol=_ZNSt4privL13_Stl_tenscaleERyiRi */

void _ZNSt4privL13_Stl_tenscaleERyiRi(undefined4 *param_1,int param_2,int *param_3)

{
  ulonglong uVar1;
  undefined4 uVar2;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  int iVar6;
  undefined4 uVar7;
  uint uVar8;
  uint uVar9;
  int iVar10;
  int iVar11;
  undefined4 uVar12;
  ulonglong uVar13;
  longlong lVar14;
  undefined8 uVar15;
  int local_48;
  int local_34;
  int local_2c [2];
  
  *param_3 = 0;
  if (param_2 == 0) {
    return;
  }
  if (param_2 < 1) {
    iVar11 = 0;
    do {
      iVar11 = iVar11 + 1;
      param_2 = param_2 + 0x1c;
    } while (param_2 < 0);
    local_48 = 0xd;
    iVar10 = 0x25;
    local_34 = param_2;
  }
  else {
    local_34 = param_2;
    if (param_2 < 0x1c) goto LAB_008ca17a;
    local_34 = param_2 + 1;
    iVar10 = 1;
    do {
      iVar11 = iVar10;
      local_34 = local_34 + -0x1c;
      iVar10 = iVar11 + 1;
    } while (0x1b < local_34);
    if (iVar11 == 0) goto LAB_008ca17a;
    local_48 = 0xb;
    iVar10 = 0x1a;
  }
  do {
    iVar3 = iVar11;
    if (local_48 < iVar11) {
      iVar3 = local_48;
    }
    iVar11 = iVar11 - iVar3;
    iVar3 = iVar10 + -1 + iVar3;
    uVar5 = *param_1;
    uVar2 = param_1[1];
    iVar6 = iVar3 * 8;
    uVar12 = *(undefined4 *)(&_ZNSt4privL11_Stl_tenpowE + iVar6);
    uVar7 = *(undefined4 *)(&UNK_00925eec + iVar6);
    uVar13 = __aeabi_lmul(uVar12,0,uVar5,0);
    lVar14 = __aeabi_lmul(uVar12,0,uVar2,0);
    uVar1 = lVar14 + (uVar13 >> 0x20);
    uVar8 = (uint)(uVar1 >> 0x20);
    lVar14 = __aeabi_lmul(uVar7,0,uVar5);
    lVar14 = lVar14 + (uVar1 & 0xffffffff);
    uVar9 = (uint)((ulonglong)lVar14 >> 0x20);
    uVar15 = __aeabi_lmul(uVar7,0,uVar2,0);
    uVar4 = (uint)uVar15 + uVar8;
    _ZNSt4privL19_Stl_norm_and_roundERyRiyy
              (param_1,local_2c,uVar9 + uVar4,
               (int)((ulonglong)uVar15 >> 0x20) + (uint)CARRY4((uint)uVar15,uVar8) +
               (uint)CARRY4(uVar9,uVar4),(int)uVar13,(int)lVar14);
    *param_3 = (*param_3 - local_2c[0]) + (int)*(short *)(_ZNSt4privL11_Stl_twoexpE + iVar3 * 2);
  } while (iVar11 != 0);
LAB_008ca17a:
  if (local_34 != 0) {
    uVar2 = *param_1;
    uVar5 = param_1[1];
    iVar10 = (local_34 + -1) * 8;
    uVar7 = *(undefined4 *)(&_ZNSt4privL11_Stl_tenpowE + iVar10);
    uVar12 = *(undefined4 *)(&UNK_00925eec + iVar10);
    uVar13 = __aeabi_lmul(uVar7,0,uVar2,0);
    lVar14 = __aeabi_lmul(uVar7,0,uVar5);
    uVar1 = lVar14 + (uVar13 >> 0x20);
    uVar8 = (uint)(uVar1 >> 0x20);
    lVar14 = __aeabi_lmul(uVar12,0,uVar2,0);
    lVar14 = lVar14 + (uVar1 & 0xffffffff);
    uVar9 = (uint)((ulonglong)lVar14 >> 0x20);
    uVar15 = __aeabi_lmul(uVar12,0,uVar5,0);
    uVar4 = (uint)uVar15 + uVar8;
    _ZNSt4privL19_Stl_norm_and_roundERyRiyy
              (param_1,local_2c,uVar9 + uVar4,
               (int)((ulonglong)uVar15 >> 0x20) + (uint)CARRY4((uint)uVar15,uVar8) +
               (uint)CARRY4(uVar9,uVar4),(int)uVar13,(int)lVar14);
    *param_3 = (*param_3 - local_2c[0]) +
               (int)*(short *)(_ZNSt4privL11_Stl_twoexpE + (local_34 + -1) * 2);
  }
  return;
}


/* address=008ca288 symbol=_ZNSt4privL21_Stl_string_to_doubleEPKc */

void _ZNSt4privL21_Stl_string_to_doubleEPKc(byte *param_1)

{
  byte bVar1;
  bool bVar2;
  bool bVar3;
  ulonglong uVar4;
  uint uVar5;
  byte *pbVar6;
  int iVar7;
  uint uVar8;
  uint uVar9;
  byte *pbVar10;
  byte *pbVar11;
  uint uVar12;
  int iVar13;
  int iVar14;
  byte *pbVar15;
  uint uVar16;
  longlong lVar17;
  ulonglong uVar18;
  undefined auStack_70 [4];
  uint local_6c;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined8 local_50;
  int local_44;
  byte local_40 [17];
  byte abStack_2f [3];
  int local_2c;
  
  uVar18 = CONCAT44(local_50._4_4_,(uint)local_50);
  pbVar10 = param_1 + 1;
  local_2c = __stack_chk_guard;
  uVar12 = (uint)*param_1;
  if (uVar12 == 0x2b) {
    bVar2 = false;
    uVar12 = (uint)param_1[1];
    pbVar10 = param_1 + 2;
  }
  else {
    bVar2 = false;
    if (uVar12 == 0x2d) {
      uVar12 = (uint)param_1[1];
      pbVar10 = param_1 + 2;
      bVar2 = true;
    }
  }
  pbVar15 = local_40;
  uVar12 = uVar12 - 0x30;
  iVar14 = 0;
  uVar5 = 0;
  pbVar6 = pbVar15;
  if (9 < uVar12) goto LAB_008ca2ea;
  do {
    if (pbVar6 == abStack_2f) {
      iVar14 = iVar14 + (uVar5 ^ 1);
    }
    else {
      if ((uVar12 != 0) || (pbVar6 != pbVar15)) {
        *pbVar6 = (byte)uVar12;
        pbVar6 = pbVar6 + 1;
      }
      iVar14 = iVar14 - uVar5;
    }
    while( true ) {
      bVar1 = *pbVar10;
      pbVar10 = pbVar10 + 1;
      uVar12 = bVar1 - 0x30;
      if (uVar12 < 10) break;
LAB_008ca2ea:
      if ((uVar12 != 0xfffffffe) || (uVar5 != 0)) {
        if (pbVar6 == pbVar15) {
          uVar4 = 0;
          goto LAB_008ca312;
        }
        if ((uVar12 == 0x15) || (uVar12 == 0x35)) {
          uVar12 = (uint)*pbVar10;
          pbVar11 = pbVar10 + 1;
          if ((uVar12 == 0x20) || (uVar12 == 0x2b)) {
            uVar12 = (uint)*pbVar11;
            bVar3 = false;
            pbVar11 = pbVar10 + 2;
          }
          else {
            bVar3 = false;
            if (uVar12 == 0x2d) {
              uVar12 = (uint)*pbVar11;
              bVar3 = true;
              pbVar11 = pbVar10 + 2;
            }
          }
          uVar12 = uVar12 - 0x30;
          if (uVar12 < 10) {
            iVar7 = 0;
            do {
              iVar7 = uVar12 + iVar7 * 10;
              bVar1 = *pbVar11;
              pbVar11 = pbVar11 + 1;
              uVar12 = bVar1 - 0x30;
            } while (uVar12 < 10);
            if (bVar3) {
              iVar7 = -iVar7;
            }
            iVar14 = iVar7 + iVar14;
            iVar7 = (int)pbVar6 - (int)pbVar15;
            iVar13 = iVar14 + iVar7;
joined_r0x008ca3a6:
            if (iVar13 < -0x132) {
LAB_008ca308:
              uVar4 = 0;
            }
            else {
              if (iVar13 < 0x136) {
                pbVar10 = pbVar15 + iVar7;
                if (pbVar15 < pbVar10) {
                  uVar18 = 0;
                  do {
                    lVar17 = __aeabi_lmul((int)uVar18,(int)(uVar18 >> 0x20),10,0);
                    bVar1 = *pbVar15;
                    pbVar15 = pbVar15 + 1;
                    uVar18 = lVar17 + (ulonglong)bVar1;
                    uVar12 = (uint)uVar18;
                    uVar5 = (uint)(uVar18 >> 0x20);
                  } while (pbVar15 < pbVar10);
                  if (uVar18 != 0) {
                    if (uVar5 == 0) {
                      uVar9 = 0x10;
                      uVar16 = 0;
                      uVar8 = uVar12;
                    }
                    else {
                      uVar9 = 0x30;
                      uVar16 = 0x20;
                      uVar8 = uVar5;
                    }
                    if ((uVar8 >> 0x10 | uVar5 >> uVar9) != 0) {
                      uVar16 = uVar9;
                    }
                    uVar8 = uVar16 + 8;
                    if ((int)(uVar16 - 0x18) < 0) {
                      uVar9 = uVar12 >> uVar8 | uVar5 << (0x20 - uVar8 & 0xff);
                    }
                    else {
                      uVar9 = uVar5 >> (uVar16 - 0x18 & 0xff);
                    }
                    if ((uVar5 >> uVar8 | uVar9) != 0) {
                      uVar16 = uVar8;
                    }
                    uVar8 = uVar16 + 4;
                    if ((int)(uVar16 - 0x1c) < 0) {
                      uVar9 = uVar12 >> uVar8 | uVar5 << (0x20 - uVar8 & 0xff);
                    }
                    else {
                      uVar9 = uVar5 >> (uVar16 - 0x1c & 0xff);
                    }
                    if ((uVar5 >> uVar8 | uVar9) != 0) {
                      uVar16 = uVar8;
                    }
                    uVar8 = uVar16 + 2;
                    if ((int)(uVar16 - 0x1e) < 0) {
                      uVar9 = uVar12 >> (uVar8 & 0xff) | uVar5 << (0x20 - uVar8 & 0xff);
                    }
                    else {
                      uVar9 = uVar5 >> (uVar16 - 0x1e & 0xff);
                    }
                    if ((uVar5 >> (uVar8 & 0xff) | uVar9) != 0) {
                      uVar16 = uVar8;
                    }
                    uVar8 = uVar16 + 1;
                    if ((int)(uVar16 - 0x1f) < 0) {
                      uVar9 = uVar12 >> (uVar8 & 0xff) | uVar5 << (0x20 - uVar8 & 0xff);
                    }
                    else {
                      uVar9 = uVar5 >> (uVar16 - 0x1f & 0xff);
                    }
                    if ((uVar5 >> (uVar8 & 0xff) | uVar9) == 0) {
                      if ((int)(uVar16 - 0x20) < 0) {
                        uVar9 = uVar12 >> (uVar16 & 0xff) | uVar5 << (0x20 - uVar16 & 0xff);
                      }
                      else {
                        uVar9 = uVar5 >> (uVar16 - 0x20 & 0xff);
                      }
                      if ((uVar5 >> (uVar16 & 0xff) | uVar9) == 0) {
                        uVar8 = uVar16;
                      }
                    }
                    else {
                      uVar8 = uVar16 + 2;
                    }
                    uVar9 = -uVar8 + 0x40;
                    uVar16 = -uVar8 + 0x20;
                    if ((int)uVar16 < 0) {
                      local_50._4_4_ = uVar5 << (uVar9 & 0xff) | uVar12 >> (0x20 - uVar9 & 0xff);
                    }
                    else {
                      local_50._4_4_ = uVar12 << (uVar16 & 0xff);
                    }
                    local_50._0_4_ = uVar12 << (uVar9 & 0xff);
                    _ZNSt4privL13_Stl_tenscaleERyiRi(&local_50,iVar14,&local_44);
                    uVar5 = local_50._4_4_;
                    uVar12 = (uint)local_50;
                    local_44 = uVar8 + local_44;
                    if (local_44 < -0x3fd) {
                      if ((local_44 + 0x433 < 0 == SCARRY4(local_44 + 0x3fe,0x35)) &&
                         (iVar14 = 0xc - (local_44 + 0x3fe), iVar14 != 0x41)) {
                        if (iVar14 == 0x40) {
                          uVar16 = local_50._4_4_ & 0x7fffffff;
                          uVar12 = local_50._4_4_ >> 0x1f;
                          uVar18 = 0;
                          uVar8 = (uint)local_50;
                        }
                        else {
                          lVar17 = __ashldi3(1,0,iVar14);
                          uVar8 = uVar12 & (uint)(lVar17 + -2);
                          uVar16 = uVar5 & (uint)((ulonglong)(lVar17 + -2) >> 0x20);
                          uVar18 = __lshrdi3(uVar12,uVar5,iVar14);
                          uVar12 = (int)uVar18 - 1U & 1;
                        }
                        uVar4 = uVar18;
                        if ((uVar12 != 0) &&
                           ((((uVar18 & 1) != 0 || ((uVar16 | uVar8) != 0)) &&
                            (uVar18 = uVar18 + 1, uVar4 = uVar18, uVar18 == 0x10000000000000)))) {
                          uVar18 = 0x10000000000000;
                          uVar4 = uVar18;
                        }
                      }
                      else {
                        uVar18 = 0;
                        uVar4 = uVar18;
                      }
                    }
                    else {
                      uVar12 = local_50._4_4_ << 0x16;
                      uVar5 = (uint)local_50 >> 10;
                      uVar8 = local_50._4_4_ >> 10;
                      local_50._4_4_ = local_50._4_4_ >> 0xb;
                      uVar12 = (uVar5 | uVar12) >> 1 | uVar8 << 0x1f;
                      if (((uVar5 & 1) != 0) &&
                         (((uVar5 & 2) != 0 || (((uint)local_50 & 0x3ff) != 0)))) {
                        local_50._4_4_ = local_50._4_4_ + (0xfffffffe < uVar12);
                        uVar12 = uVar12 + 1;
                        if (local_50._4_4_ >> 0x15 != 0) {
                          uVar12 = local_50._4_4_ * -0x80000000;
                          local_50._4_4_ = local_50._4_4_ >> 1;
                          local_44 = local_44 + 1;
                          uVar12 = uVar12 | uVar12 + 1 >> 1;
                        }
                      }
                      local_50._0_4_ = uVar12;
                      if (local_44 < 0x401) {
                        uVar12 = local_50._4_4_ & 0x800fffff |
                                 (uint)((local_44 + 0x3fe) * 0x200000) >> 1;
                        uVar4 = CONCAT44(uVar12,(uint)local_50);
                        uVar18 = CONCAT44(uVar12,(uint)local_50);
                      }
                      else {
                        memset(auStack_70,0,0x10);
                        uVar18 = CONCAT44(local_50._4_4_,(uint)local_50);
                        local_6c = CONCAT22(0x7ff0,(undefined2)local_6c);
                        uVar4 = (ulonglong)local_6c << 0x20;
                      }
                    }
                    goto LAB_008ca30c;
                  }
                }
                goto LAB_008ca308;
              }
              local_60 = 0;
              local_58 = 0;
              local_54 = 0;
              local_5c = 0x7ff00000;
              uVar4 = 0x7ff0000000000000;
            }
LAB_008ca30c:
            if (bVar2) {
              uVar4 = CONCAT44((int)(uVar4 >> 0x20) + -0x80000000,(int)uVar4);
            }
LAB_008ca312:
            if (local_2c == __stack_chk_guard) {
              return;
            }
            local_50 = uVar18;
                    /* WARNING: Subroutine does not return */
            __stack_chk_fail((int)uVar4,(int)(uVar4 >> 0x20));
          }
        }
        iVar7 = (int)pbVar6 - (int)pbVar15;
        iVar13 = iVar14 + iVar7;
        goto joined_r0x008ca3a6;
      }
      uVar5 = 1;
    }
  } while( true );
}


/* address=008ca6c0 symbol=_ZNSt4priv17__string_to_floatERKNS_16__basic_iostringIcEERf */

void _ZNSt4priv17__string_to_floatERKNS_16__basic_iostringIcEERf(int param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  
  _ZNSt4privL21_Stl_string_to_doubleEPKc(*(undefined4 *)(param_1 + 0x118));
  uVar1 = __aeabi_d2f();
  *param_2 = uVar1;
  return;
}


/* address=008ca6d8 symbol=_ZNSt4priv17__string_to_floatERKNS_16__basic_iostringIcEERd */

void _ZNSt4priv17__string_to_floatERKNS_16__basic_iostringIcEERd(int param_1,undefined8 *param_2)

{
  undefined8 uVar1;
  
  uVar1 = _ZNSt4privL21_Stl_string_to_doubleEPKc(*(undefined4 *)(param_1 + 0x118));
  *param_2 = uVar1;
  return;
}


/* address=008ca6f0 symbol=_ZNSt4priv10_Stl_atodTIe19ieee854_long_doubleLi16ELi16383EEET_Pcii */

/* WARNING: Removing unreachable block (ram,0x008ca80e) */

undefined8
_ZNSt4priv10_Stl_atodTIe19ieee854_long_doubleLi16ELi16383EEET_Pcii
          (byte *param_1,int param_2,undefined4 param_3)

{
  byte bVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  byte *pbVar8;
  bool bVar9;
  longlong lVar10;
  uint local_64;
  uint local_28;
  uint local_24;
  int local_1c;
  
  pbVar8 = param_1 + param_2;
  if (param_1 < pbVar8) {
    lVar10 = 0;
    do {
      lVar10 = __aeabi_lmul((int)lVar10,(int)((ulonglong)lVar10 >> 0x20),10,0);
      bVar1 = *param_1;
      param_1 = param_1 + 1;
      lVar10 = lVar10 + (ulonglong)bVar1;
      local_28 = (uint)lVar10;
      uVar3 = (uint)((ulonglong)lVar10 >> 0x20);
    } while (param_1 != pbVar8);
    if (lVar10 != 0) {
      if (uVar3 == 0) {
        uVar6 = 0x10;
        uVar7 = 0;
        uVar4 = local_28;
      }
      else {
        uVar6 = 0x30;
        uVar7 = 0x20;
        uVar4 = uVar3;
      }
      if ((uVar4 >> 0x10 | uVar3 >> uVar6) != 0) {
        uVar7 = uVar6;
      }
      uVar4 = uVar7 + 8;
      if ((int)(uVar7 - 0x18) < 0) {
        uVar6 = local_28 >> uVar4 | uVar3 << (0x20 - uVar4 & 0xff);
      }
      else {
        uVar6 = uVar3 >> (uVar7 - 0x18 & 0xff);
      }
      if ((uVar6 | uVar3 >> uVar4) != 0) {
        uVar7 = uVar4;
      }
      uVar4 = uVar7 + 4;
      if ((int)(uVar7 - 0x1c) < 0) {
        uVar6 = local_28 >> uVar4 | uVar3 << (0x20 - uVar4 & 0xff);
      }
      else {
        uVar6 = uVar3 >> (uVar7 - 0x1c & 0xff);
      }
      if ((uVar6 | uVar3 >> uVar4) != 0) {
        uVar7 = uVar4;
      }
      uVar4 = uVar7 + 2;
      if ((int)(uVar7 - 0x1e) < 0) {
        uVar6 = local_28 >> (uVar4 & 0xff) | uVar3 << (0x20 - uVar4 & 0xff);
      }
      else {
        uVar6 = uVar3 >> (uVar7 - 0x1e & 0xff);
      }
      if ((uVar6 | uVar3 >> (uVar4 & 0xff)) != 0) {
        uVar7 = uVar4;
      }
      uVar4 = uVar7 + 1;
      if ((int)(uVar7 - 0x1f) < 0) {
        uVar6 = local_28 >> (uVar4 & 0xff) | uVar3 << (0x20 - uVar4 & 0xff);
      }
      else {
        uVar6 = uVar3 >> (uVar7 - 0x1f & 0xff);
      }
      if ((uVar6 | uVar3 >> (uVar4 & 0xff)) == 0) {
        if ((int)(uVar7 - 0x20) < 0) {
          uVar6 = local_28 >> (uVar7 & 0xff) | uVar3 << (0x20 - uVar7 & 0xff);
        }
        else {
          uVar6 = uVar3 >> (uVar7 - 0x20 & 0xff);
        }
        if ((uVar6 | uVar3 >> (uVar7 & 0xff)) != 0) goto LAB_008ca7ae;
        uVar6 = -uVar7 + 0x40;
        uVar5 = -uVar7 + 0x20;
        if ((int)uVar5 < 0) goto LAB_008ca872;
LAB_008ca7bc:
        local_24 = local_28 << (uVar5 & 0xff);
      }
      else {
        uVar4 = uVar7 + 2;
LAB_008ca7ae:
        uVar6 = -uVar4 + 0x40;
        uVar5 = -uVar4 + 0x20;
        uVar7 = uVar4;
        if (-1 < (int)uVar5) goto LAB_008ca7bc;
LAB_008ca872:
        local_24 = local_28 >> (0x20 - uVar6 & 0xff) | uVar3 << (uVar6 & 0xff);
      }
      local_28 = local_28 << (uVar6 & 0xff);
      _ZNSt4privL13_Stl_tenscaleERyiRi(&local_28,param_3,&local_1c);
      uVar3 = local_28;
      local_1c = uVar7 + local_1c;
      if (local_1c < -0x3fd) {
        if (local_1c + 0x4033 < 0 == SCARRY4(local_1c + 0x3ffe,0x35)) {
          iVar2 = -(local_1c + 0x3ffe);
          uVar4 = iVar2 + 0x10;
          if ((int)uVar4 < 0x41) {
            if (uVar4 == 0x40) {
              uVar5 = local_24 & 0x7fffffff;
              uVar4 = local_24 >> 0x1f;
              local_28 = 0;
              local_24 = 0;
            }
            else {
              uVar7 = iVar2 - 0x10;
              if ((int)uVar7 < 0) {
                uVar6 = 1 >> (0x20 - uVar4 & 0xff);
              }
              else {
                uVar6 = 1 << (uVar7 & 0xff);
              }
              uVar5 = 1 << (uVar4 & 0xff);
              uVar3 = uVar5 - 2 & local_28;
              uVar5 = (uVar6 - 1) + (uint)(1 < uVar5) & local_24;
              uVar6 = local_24 >> (uVar7 & 0xff);
              if ((int)uVar7 < 0) {
                uVar6 = local_28 >> (uVar4 & 0xff) | local_24 << (0x20 - uVar4 & 0xff);
              }
              local_24 = local_24 >> (uVar4 & 0xff);
              uVar4 = uVar6 - 1 & 1;
              local_28 = uVar6;
            }
            local_64 = local_24;
            if ((uVar4 != 0) && (((local_28 & 1) != 0 || ((uVar3 | uVar5) != 0)))) {
              bVar9 = 0xfffffffe < local_28;
              local_28 = local_28 + 1;
              local_64 = local_24 + bVar9;
              if ((local_28 == 0) && (local_64 == 0x100000)) {
                local_28 = 0;
                local_64 = 0;
              }
            }
            goto LAB_008ca846;
          }
        }
        local_28 = 0;
        local_24 = 0;
        local_64 = local_24;
      }
      else {
        uVar4 = local_28 >> 0xe;
        local_64 = local_24 >> 0xf;
        uVar3 = (uVar4 | local_24 << 0x12) >> 1 | (local_24 >> 0xe) << 0x1f;
        if (((uVar4 & 1) != 0) && (((uVar4 & 2) != 0 || ((local_28 & 0x7ff) != 0)))) {
          local_64 = local_64 + (0xfffffffe < uVar3);
          uVar3 = uVar3 + 1;
        }
        local_28 = uVar3;
        if (0x400 < local_1c) {
          local_64 = 0x7ff00000;
          local_28 = 0;
        }
      }
      goto LAB_008ca846;
    }
  }
  local_64 = 0;
  local_28 = 0;
LAB_008ca846:
  return CONCAT44(local_64,local_28);
}


/* address=008caa00 symbol=_ZNSt4priv22_Stl_string_to_doubleTIe19ieee854_long_doubleLi16ELi16383EEET_PKc */

void _ZNSt4priv22_Stl_string_to_doubleTIe19ieee854_long_doubleLi16ELi16383EEET_PKc(byte *param_1)

{
  byte bVar1;
  bool bVar2;
  bool bVar3;
  uint uVar4;
  int iVar5;
  undefined *puVar6;
  int iVar7;
  uint uVar8;
  byte *pbVar9;
  byte *pbVar10;
  undefined8 uVar11;
  undefined local_34 [15];
  undefined uStack_25;
  int local_24;
  
  pbVar9 = param_1 + 1;
  local_24 = __stack_chk_guard;
  uVar8 = (uint)*param_1;
  if (uVar8 == 0x2b) {
    uVar8 = (uint)param_1[1];
    bVar2 = false;
    pbVar9 = param_1 + 2;
  }
  else {
    bVar2 = false;
    if (uVar8 == 0x2d) {
      uVar8 = (uint)param_1[1];
      pbVar9 = param_1 + 2;
      bVar2 = true;
    }
  }
  uVar8 = uVar8 - 0x30;
  iVar7 = 0;
  uVar4 = 0;
  puVar6 = local_34;
  if (9 < uVar8) goto LAB_008caa62;
  do {
    if (puVar6 == &uStack_25) {
      iVar7 = iVar7 + (uVar4 ^ 1);
    }
    else {
      if ((uVar8 != 0) || (puVar6 != local_34)) {
        *puVar6 = (char)uVar8;
        puVar6 = puVar6 + 1;
      }
      iVar7 = iVar7 - uVar4;
    }
    while( true ) {
      bVar1 = *pbVar9;
      pbVar9 = pbVar9 + 1;
      uVar8 = bVar1 - 0x30;
      if (uVar8 < 10) break;
LAB_008caa62:
      if ((uVar8 != 0xfffffffe) || (uVar4 != 0)) {
        if (puVar6 == local_34) goto LAB_008cab14;
        if ((uVar8 == 0x15) || (uVar8 == 0x35)) {
          uVar8 = (uint)*pbVar9;
          pbVar10 = pbVar9 + 1;
          if ((uVar8 == 0x20) || (uVar8 == 0x2b)) {
            uVar8 = (uint)*pbVar10;
            bVar3 = false;
            pbVar10 = pbVar9 + 2;
          }
          else {
            bVar3 = false;
            if (uVar8 == 0x2d) {
              bVar3 = true;
              uVar8 = (uint)*pbVar10;
              pbVar10 = pbVar9 + 2;
            }
          }
          uVar8 = uVar8 - 0x30;
          if (uVar8 < 10) {
            iVar5 = 0;
            do {
              iVar5 = uVar8 + iVar5 * 10;
              bVar1 = *pbVar10;
              pbVar10 = pbVar10 + 1;
              uVar8 = bVar1 - 0x30;
            } while (uVar8 < 10);
            if (bVar3) {
              iVar5 = -iVar5;
            }
            iVar7 = (iVar5 + iVar7) - (int)local_34;
joined_r0x008cab12:
            if ((int)(puVar6 + iVar7) < -0x132) {
LAB_008cab14:
              uVar11 = 0;
            }
            else {
              if ((int)(puVar6 + iVar7) < 0x136) {
                uVar11 = _ZNSt4priv10_Stl_atodTIe19ieee854_long_doubleLi16ELi16383EEET_Pcii
                                   (local_34);
              }
              else {
                uVar11 = 0x7ff0000000000000;
              }
              if (bVar2) {
                uVar11 = CONCAT44((int)((ulonglong)uVar11 >> 0x20) + -0x80000000,(int)uVar11);
              }
            }
            if (local_24 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
              __stack_chk_fail((int)uVar11,(int)((ulonglong)uVar11 >> 0x20));
            }
            return;
          }
        }
        iVar7 = iVar7 - (int)local_34;
        goto joined_r0x008cab12;
      }
      uVar4 = 1;
    }
  } while( true );
}


/* address=008cab68 symbol=_ZNSt4priv17__string_to_floatERKNS_16__basic_iostringIcEERe */

void _ZNSt4priv17__string_to_floatERKNS_16__basic_iostringIcEERe(int param_1,undefined8 *param_2)

{
  undefined8 uVar1;
  
  uVar1 = _ZNSt4priv22_Stl_string_to_doubleTIe19ieee854_long_doubleLi16ELi16383EEET_PKc
                    (*(undefined4 *)(param_1 + 0x118));
  *param_2 = uVar1;
  return;
}


/* address=008cab7c symbol=_ZNSt4priv21_Initialize_get_floatERKSt5ctypeIwERwS4_S4_S4_Pw */

void _ZNSt4priv21_Initialize_get_floatERKSt5ctypeIwERwS4_S4_S4_Pw
               (int *param_1,undefined4 *param_2,undefined4 *param_3,undefined4 *param_4,
               undefined4 *param_5,undefined4 param_6)

{
  undefined4 uVar1;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined2 local_30;
  undefined local_2e [2];
  int local_2c;
  
  local_2c = __stack_chk_guard;
  local_38 = 0x33323130;
  uStack_34 = 0x37363534;
  local_30 = 0x3938;
  local_2e[0] = 0;
  uVar1 = (**(code **)(*param_1 + 0x28))(param_1,0x2b);
  *param_2 = uVar1;
  uVar1 = (**(code **)(*param_1 + 0x28))(param_1,0x2d);
  *param_3 = uVar1;
  uVar1 = (**(code **)(*param_1 + 0x28))(param_1,0x65);
  *param_4 = uVar1;
  uVar1 = (**(code **)(*param_1 + 0x28))(param_1,0x45);
  *param_5 = uVar1;
  (**(code **)(*param_1 + 0x2c))(param_1,&local_38,local_2e,param_6);
  if (local_2c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}


/* address=008cac24 symbol=_ZNSt4privL13__fill_fmtbufEPcic */

void _ZNSt4privL13__fill_fmtbufEPcic(undefined *param_1,uint param_2,int param_3)

{
  undefined uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  
  *param_1 = 0x25;
  if ((int)(param_2 << 0x14) < 0) {
    iVar6 = 3;
    param_1[1] = 0x2b;
    iVar3 = 4;
    iVar2 = 5;
    iVar4 = 2;
  }
  else {
    iVar2 = 4;
    iVar3 = 3;
    iVar6 = 2;
    iVar4 = 1;
  }
  iVar5 = iVar6;
  if ((int)(param_2 << 0x15) < 0) {
    param_1[iVar4] = 0x23;
    iVar5 = iVar6 + 1;
    iVar3 = iVar6 + 2;
    iVar2 = iVar6 + 3;
    iVar4 = iVar6;
  }
  param_1[iVar4] = 0x2e;
  param_1[iVar5] = 0x2a;
  iVar4 = iVar2;
  if (param_3 != 0) {
    param_1[iVar3] = (char)param_3;
    iVar4 = iVar2 + 1;
    iVar3 = iVar2;
  }
  if ((param_2 & 0xc0) == 0x40) {
    uVar1 = 0x46;
    if (-1 < (int)(param_2 << 0x11)) {
      uVar1 = 0x66;
    }
  }
  else if ((param_2 & 0xc0) == 0x80) {
    uVar1 = 0x45;
    if (-1 < (int)(param_2 << 0x11)) {
      uVar1 = 0x65;
    }
  }
  else {
    uVar1 = 0x47;
    if (-1 < (int)(param_2 << 0x11)) {
      uVar1 = 0x67;
    }
  }
  param_1[iVar3] = uVar1;
  param_1[iVar4] = 0;
  return;
}


/* address=008caca4 symbol=_ZNSt4priv9__find_ifIPcNS_8GroupPosEEET_S3_S3_T0_RKSt26random_access_iterator_tag */

char * _ZNSt4priv9__find_ifIPcNS_8GroupPosEEET_S3_S3_T0_RKSt26random_access_iterator_tag
                 (char *param_1,char *param_2)

{
  int iVar1;
  char cVar2;
  int iVar3;
  
  iVar3 = (int)param_2 - (int)param_1;
  iVar1 = iVar3 >> 2;
  if (0 < iVar1) {
    cVar2 = *param_1;
    if (cVar2 == '.') {
      return param_1;
    }
    if (cVar2 == 'e') {
      return param_1;
    }
    if (cVar2 == 'E') {
      return param_1;
    }
    param_1 = param_1 + 1;
    cVar2 = *param_1;
    if (cVar2 == '.') {
      return param_1;
    }
    if (cVar2 == 'e') {
      return param_1;
    }
    while( true ) {
      if (cVar2 == 'E') {
        return param_1;
      }
      cVar2 = param_1[1];
      if (((cVar2 == 'e') || (cVar2 == '.')) || (cVar2 == 'E')) {
        return param_1 + 1;
      }
      cVar2 = param_1[2];
      if (((cVar2 == 'e') || (cVar2 == '.')) || (cVar2 == 'E')) {
        return param_1 + 2;
      }
      iVar1 = iVar1 + -1;
      if (iVar1 == 0) break;
      cVar2 = param_1[3];
      if (((cVar2 == 'e') || (cVar2 == '.')) || (cVar2 == 'E')) {
        return param_1 + 3;
      }
      param_1 = param_1 + 4;
      cVar2 = *param_1;
      if (cVar2 == 'e') {
        return param_1;
      }
      if (cVar2 == '.') {
        return param_1;
      }
    }
    param_1 = param_1 + 3;
    iVar3 = (int)param_2 - (int)param_1;
  }
  if (iVar3 != 2) {
    if (iVar3 != 3) {
      if (iVar3 != 1) {
        return param_2;
      }
      goto LAB_008cad48;
    }
    cVar2 = *param_1;
    if (cVar2 == 'e') {
      return param_1;
    }
    if (cVar2 == '.') {
      return param_1;
    }
    if (cVar2 == 'E') {
      return param_1;
    }
    param_1 = param_1 + 1;
  }
  cVar2 = *param_1;
  if (cVar2 == 'e') {
    return param_1;
  }
  if (cVar2 == '.') {
    return param_1;
  }
  if (cVar2 == 'E') {
    return param_1;
  }
  param_1 = param_1 + 1;
LAB_008cad48:
  cVar2 = *param_1;
  if (cVar2 == 'e') {
    return param_1;
  }
  if (cVar2 != '.') {
    if (cVar2 != 'E') {
      return param_2;
    }
    return param_1;
  }
  return param_1;
}


/* address=008cad58 symbol=_ZNSt4priv21__adjust_float_bufferERNS_16__basic_iostringIcEEc */

void _ZNSt4priv21__adjust_float_bufferERNS_16__basic_iostringIcEEc(int param_1,int param_2)

{
  undefined *puVar1;
  
  if (param_2 != 0x2e) {
    if (*(int *)(param_1 + 0x10) != *(int *)(param_1 + 0x118)) {
      puVar1 = (undefined *)
               _ZNSt4priv9__find_ifIPKcNS_14_Eq_char_boundISt11char_traitsIcEEEEET_S7_S7_T0_RKSt26random_access_iterator_tag
                         ();
      if ((puVar1 != *(undefined **)(param_1 + 0x10)) &&
         ((int)puVar1 - *(int *)(param_1 + 0x118) != -1)) {
        *puVar1 = (char)param_2;
      }
    }
  }
  return;
}


/* address=008cad90 symbol=_ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE10_M_appendTIPcEERS4_T_S8_RKSt20forward_iterator_tag */

int * _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE10_M_appendTIPcEERS4_T_S8_RKSt20forward_iterator_tag
                (int *param_1,undefined *param_2,undefined *param_3)

{
  int *__dest;
  uint uVar1;
  undefined *__src;
  void *__src_00;
  undefined *puVar2;
  uint __n;
  uint local_24 [2];
  
  if (param_2 != param_3) {
    __n = (int)param_3 - (int)param_2;
    if ((int *)param_1[0x46] == param_1) {
      puVar2 = (undefined *)param_1[4];
      uVar1 = (int)param_1 + (0x10 - (int)puVar2);
    }
    else {
      puVar2 = (undefined *)param_1[4];
      uVar1 = *param_1 - (int)puVar2;
    }
    if (uVar1 <= __n) {
      uVar1 = _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE20_M_compute_next_sizeEj
                        (param_1,__n);
      __dest = param_1 + 5;
      if (0x101 < uVar1) {
        local_24[0] = uVar1;
        __dest = (int *)_ZNSt12__node_alloc8allocateERj(local_24);
      }
      __src_00 = (void *)param_1[0x46];
      if (__src_00 != (void *)param_1[4]) {
                    /* WARNING: Subroutine does not return */
        memcpy(__dest,__src_00,(int)(void *)param_1[4] - (int)__src_00);
      }
                    /* WARNING: Subroutine does not return */
      memcpy(__dest,param_2,__n);
    }
    __src = param_2 + 1;
    *puVar2 = *param_2;
    if (param_3 != __src) {
                    /* WARNING: Subroutine does not return */
      memcpy((void *)(param_1[4] + 1),__src,(int)param_3 - (int)__src);
    }
    *(undefined *)(param_1[4] + __n) = 0;
    param_1[4] = param_1[4] + __n;
  }
  return param_1;
}


/* address=008cae70 symbol=_ZNSt4priv22__convert_float_bufferERKNS_16__basic_iostringIcEERNS0_IwEERKSt5ctypeIwEwb */

void _ZNSt4priv22__convert_float_bufferERKNS_16__basic_iostringIcEERNS0_IwEERKSt5ctypeIwEwb
               (int param_1,undefined4 param_2,int *param_3,undefined4 param_4,char param_5)

{
  undefined4 uVar1;
  char *pcVar2;
  char *pcVar3;
  
  pcVar2 = *(char **)(param_1 + 0x118);
  pcVar3 = *(char **)(param_1 + 0x10);
  if (param_5 == '\0') {
LAB_008caeba:
    for (; pcVar2 != pcVar3; pcVar2 = pcVar2 + 1) {
      uVar1 = (**(code **)(*param_3 + 0x28))(param_3,*pcVar2);
      _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE9push_backEw(param_2,uVar1);
    }
  }
  else {
    for (; pcVar2 != pcVar3; pcVar2 = pcVar2 + 1) {
      if (*pcVar2 == '.') {
        _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE9push_backEw(param_2,param_4);
        pcVar2 = pcVar2 + 1;
        goto LAB_008caeba;
      }
      uVar1 = (**(code **)(*param_3 + 0x28))(param_3);
      _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE9push_backEw(param_2,uVar1);
    }
  }
  return;
}


/* address=008caed4 symbol=_ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE9_M_appendEPKcS6_ */

int * _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE9_M_appendEPKcS6_
                (int *param_1,undefined *param_2,undefined *param_3)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  uint uVar8;
  int iVar9;
  int *piVar10;
  uint local_24 [2];
  
  if (param_2 != param_3) {
    uVar8 = (int)param_3 - (int)param_2;
    if ((int *)param_1[0x46] == param_1) {
      iVar9 = param_1[4];
      uVar4 = (int)param_1 + (0x10 - iVar9);
    }
    else {
      iVar9 = param_1[4];
      uVar4 = *param_1 - iVar9;
    }
    if (uVar8 < uVar4) {
      if (0 < (int)param_3 - (int)(param_2 + 1)) {
        iVar5 = 0;
        do {
          iVar6 = iVar5 + 1;
          iVar3 = iVar9 + iVar5;
          iVar5 = iVar5 + 1;
          *(undefined *)(iVar3 + 1) = param_2[iVar6];
        } while (iVar5 != (int)param_3 - (int)(param_2 + 1));
        iVar9 = param_1[4];
      }
      *(undefined *)(iVar9 + uVar8) = 0;
      *(undefined *)param_1[4] = *param_2;
      param_1[4] = param_1[4] + uVar8;
    }
    else {
      uVar4 = _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE20_M_compute_next_sizeEj
                        (param_1,uVar8);
      piVar2 = param_1 + 5;
      if (0x101 < uVar4) {
        local_24[0] = uVar4;
        piVar2 = (int *)_ZNSt12__node_alloc8allocateERj(local_24);
      }
      iVar9 = param_1[0x46];
      iVar6 = 0;
      iVar5 = param_1[4] - iVar9;
      piVar10 = piVar2;
      if (0 < iVar5) {
        do {
          *(undefined *)((int)piVar2 + iVar6) = *(undefined *)(iVar9 + iVar6);
          iVar6 = iVar6 + 1;
        } while (iVar6 != iVar5);
        piVar10 = (int *)((int)piVar2 + iVar6);
      }
      if (0 < (int)uVar8) {
        uVar7 = 0;
        do {
          *(undefined *)((int)piVar10 + uVar7) = param_2[uVar7];
          uVar7 = uVar7 + 1;
        } while (uVar8 != uVar7);
        piVar10 = (int *)((int)piVar10 + uVar8);
      }
      *(undefined *)piVar10 = 0;
      piVar1 = (int *)param_1[0x46];
      if ((param_1 != piVar1) && (piVar1 != (int *)0x0)) {
        if (piVar1 != param_1 + 5) {
          if (0x80 < (uint)(*param_1 - (int)piVar1)) {
                    /* WARNING: Subroutine does not return */
            _ZdlPv();
          }
          _ZNSt12__node_alloc13_M_deallocateEPvj();
        }
      }
      *param_1 = (int)((int)piVar2 + uVar4);
      param_1[4] = (int)piVar10;
      param_1[0x46] = (int)piVar2;
    }
  }
  return param_1;
}


/* address=008cafd4 symbol=_ZNSt4priv18__get_floor_digitsERNS_16__basic_iostringIcEEe */

void _ZNSt4priv18__get_floor_digitsERNS_16__basic_iostringIcEEe
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char *pcVar1;
  undefined auStack_15c [4];
  char acStack_158 [316];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  snprintf(acStack_158,0x13a,"%Lf",__stack_chk_guard,param_3,param_4);
  pcVar1 = strchr(acStack_158,0x2e);
  if (pcVar1 == (char *)0x0) {
                    /* WARNING: Subroutine does not return */
    strlen(acStack_158);
  }
  _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE10_M_appendTIPcEERS4_T_S8_RKSt20forward_iterator_tag
            (param_1,acStack_158,pcVar1,auStack_15c);
  if (local_1c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}


/* address=008cb044 symbol=_ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE9_M_assignEPKcS6_ */

int _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE9_M_assignEPKcS6_
              (int param_1,void *param_2,int param_3)

{
  undefined *__dest;
  size_t __n;
  size_t __n_00;
  undefined *puVar1;
  
  puVar1 = *(undefined **)(param_1 + 0x10);
  __dest = *(undefined **)(param_1 + 0x118);
  __n = param_3 - (int)param_2;
  __n_00 = (int)puVar1 - (int)__dest;
  if (__n_00 < __n) {
    if (__n_00 != 0) {
                    /* WARNING: Subroutine does not return */
      memcpy(__dest,param_2,__n_00);
    }
    _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE9_M_appendEPKcS6_
              (param_1,param_2,param_3);
  }
  else {
    if (__n != 0) {
                    /* WARNING: Subroutine does not return */
      memcpy(__dest,param_2,__n);
    }
    if (__dest != puVar1) {
      *__dest = *puVar1;
      *(undefined **)(param_1 + 0x10) = __dest + (*(int *)(param_1 + 0x10) - (int)puVar1);
    }
  }
  return param_1;
}


/* address=008cb0bc symbol=_ZNSt4priv13__write_floatERNS_16__basic_iostringIcEEiid */

void _ZNSt4priv13__write_floatERNS_16__basic_iostringIcEEiid
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6)

{
  char acStack_178 [316];
  char acStack_3c [32];
  undefined4 local_1c;
  
  local_1c = __stack_chk_guard;
  _ZNSt4privL13__fill_fmtbufEPcic(acStack_3c,param_2,0);
  snprintf(acStack_178,0x13a,acStack_3c,param_3,param_5,param_6);
                    /* WARNING: Subroutine does not return */
  strlen(acStack_178);
}


/* address=008cb138 symbol=_ZNSt4priv13__write_floatERNS_16__basic_iostringIcEEiie */

void _ZNSt4priv13__write_floatERNS_16__basic_iostringIcEEiie
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6)

{
  char acStack_178 [316];
  char acStack_3c [32];
  undefined4 local_1c;
  
  local_1c = __stack_chk_guard;
  _ZNSt4privL13__fill_fmtbufEPcic(acStack_3c,param_2,0x4c);
  snprintf(acStack_178,0x13a,acStack_3c,param_3,param_5,param_6);
                    /* WARNING: Subroutine does not return */
  strlen(acStack_178);
}


/* address=008cb1b4 symbol=_ZNKSt8numpunctIcE16do_decimal_pointEv */

undefined4 _ZNKSt8numpunctIcE16do_decimal_pointEv(void)

{
  return 0x2e;
}


/* address=008cb1b8 symbol=_ZNKSt8numpunctIcE16do_thousands_sepEv */

undefined4 _ZNKSt8numpunctIcE16do_thousands_sepEv(void)

{
  return 0x2c;
}


/* address=008cb1bc symbol=_ZNKSt8numpunctIwE16do_decimal_pointEv */

undefined4 _ZNKSt8numpunctIwE16do_decimal_pointEv(void)

{
  return 0x2e;
}


/* address=008cb1c0 symbol=_ZNKSt8numpunctIwE16do_thousands_sepEv */

undefined4 _ZNKSt8numpunctIwE16do_thousands_sepEv(void)

{
  return 0x2c;
}


/* address=008cb1c4 symbol=_ZNSt8numpunctIwED1Ev */

void _ZNSt8numpunctIwED1Ev(undefined4 *param_1)

{
  *param_1 = &PTR__ZNSt8numpunctIwED1Ev_1_009a4810;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev();
}


/* address=008cb1e4 symbol=_ZNSt8numpunctIwED0Ev */

void _ZNSt8numpunctIwED0Ev(undefined4 param_1)

{
  _ZNSt8numpunctIwED1Ev();
                    /* WARNING: Subroutine does not return */
  _ZdlPv(param_1);
}


/* address=008cb1f8 symbol=_ZNSt8numpunctIwED2Ev */

void _ZNSt8numpunctIwED2Ev(undefined4 *param_1)

{
  *param_1 = &PTR__ZNSt8numpunctIwED1Ev_1_009a4810;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev();
}


/* address=008cb218 symbol=_ZNSt8numpunctIcED1Ev */

void _ZNSt8numpunctIcED1Ev(undefined4 *param_1)

{
  *param_1 = 0x9a4838;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev();
}


/* address=008cb238 symbol=_ZNSt8numpunctIcED0Ev */

void _ZNSt8numpunctIcED0Ev(undefined4 param_1)

{
  _ZNSt8numpunctIcED1Ev();
                    /* WARNING: Subroutine does not return */
  _ZdlPv(param_1);
}


/* address=008cb24c symbol=_ZNSt8numpunctIcED2Ev */

void _ZNSt8numpunctIcED2Ev(undefined4 *param_1)

{
  *param_1 = 0x9a4838;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev();
}


/* address=008cb26c symbol=_ZNKSt8numpunctIwE11do_groupingEv */

void _ZNKSt8numpunctIwE11do_groupingEv(int param_1)

{
  *(int *)(param_1 + 0x10) = param_1;
  *(int *)(param_1 + 0x14) = param_1;
                    /* WARNING: Subroutine does not return */
  _ZNSt4priv12_String_baseIcSaIcEE17_M_allocate_blockEj(param_1,0x10);
}


/* address=008cb284 symbol=_ZNKSt8numpunctIcE11do_groupingEv */

void _ZNKSt8numpunctIcE11do_groupingEv(int param_1)

{
  *(int *)(param_1 + 0x10) = param_1;
  *(int *)(param_1 + 0x14) = param_1;
                    /* WARNING: Subroutine does not return */
  _ZNSt4priv12_String_baseIcSaIcEE17_M_allocate_blockEj(param_1,0x10);
}


/* address=008cb29c symbol=_ZNKSt8numpunctIcE12do_falsenameEv */

undefined4 _ZNKSt8numpunctIcE12do_falsenameEv(undefined4 param_1)

{
  undefined auStack_c [4];
  
  _ZNSsC1EPKcRKSaIcE(param_1,"false",auStack_c);
  return param_1;
}


/* address=008cb2b8 symbol=_ZNKSt8numpunctIcE11do_truenameEv */

undefined4 _ZNKSt8numpunctIcE11do_truenameEv(undefined4 param_1)

{
  undefined auStack_c [4];
  
  _ZNSsC1EPKcRKSaIcE(param_1,&UNK_00925d0c,auStack_c);
  return param_1;
}


/* address=008cb2d4 symbol=_ZNKSt8numpunctIwE12do_falsenameEv */

undefined4 _ZNKSt8numpunctIwE12do_falsenameEv(undefined4 param_1)

{
  undefined auStack_c [4];
  
  _ZNSbIwSt11char_traitsIwESaIwEEC1EPKwRKS1_(param_1,L"false",auStack_c);
  return param_1;
}


/* address=008cb2f0 symbol=_ZNKSt8numpunctIwE11do_truenameEv */

undefined4 _ZNKSt8numpunctIwE11do_truenameEv(undefined4 param_1)

{
  undefined auStack_c [4];
  
  _ZNSbIwSt11char_traitsIwESaIwEEC1EPKwRKS1_(param_1,&UNK_00926230,auStack_c);
  return param_1;
}


/* address=008cb30c symbol=_ZNSt4privL16__get_date_orderEP12_Locale_time */

bool _ZNSt4privL16__get_date_orderEP12_Locale_time(void)

{
  char cVar1;
  undefined uVar2;
  char *pcVar3;
  char cVar4;
  char cVar5;
  
  pcVar3 = (char *)_Locale_d_fmt();
  cVar1 = *pcVar3;
  while (cVar1 != '%') {
    if (cVar1 == '\0') {
      return false;
    }
    pcVar3 = pcVar3 + 1;
    cVar1 = *pcVar3;
  }
  cVar1 = pcVar3[1];
  pcVar3 = pcVar3 + 1;
  cVar4 = cVar1;
  if ((cVar1 == '%') || (cVar1 == '\0')) {
LAB_008cb33a:
    if (cVar4 != '\0') {
      cVar4 = pcVar3[1];
      pcVar3 = pcVar3 + 1;
      cVar5 = cVar4;
      if ((cVar4 == '\0') || (cVar4 == '%')) {
LAB_008cb348:
        if (cVar5 != '\0') {
          cVar5 = pcVar3[1];
          if (cVar1 == 'm') {
            if (cVar5 != 'y') {
              return false;
            }
            uVar2 = 2;
            cVar5 = cVar4;
          }
          else {
            if (cVar1 != 'y') {
              if (cVar1 != 'd') {
                return false;
              }
              return cVar5 == 'y' && cVar4 == 'm';
            }
            if (cVar4 == 'd') {
              if (cVar5 != 'm') {
                return false;
              }
              return (bool)4;
            }
            if (cVar4 != 'm') {
              return false;
            }
            uVar2 = 3;
          }
          if (cVar5 == 'd') {
            return (bool)uVar2;
          }
        }
      }
      else {
        do {
          pcVar3 = pcVar3 + 1;
          cVar5 = *pcVar3;
          if (cVar5 == '%') goto LAB_008cb348;
        } while (cVar5 != '\0');
      }
    }
  }
  else {
    do {
      pcVar3 = pcVar3 + 1;
      cVar4 = *pcVar3;
      if (cVar4 == '%') goto LAB_008cb33a;
    } while (cVar4 != '\0');
  }
  return false;
}


/* address=008cb3b0 symbol=_ZNSt4privL8__appendERNS_16__basic_iostringIcEERKSs */

void _ZNSt4privL8__appendERNS_16__basic_iostringIcEERKSs(undefined4 param_1,int param_2)

{
  undefined auStack_c [12];
  
  _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE10_M_appendTIPKcEERS4_T_S9_RKSt20forward_iterator_tag
            (param_1,*(undefined4 *)(param_2 + 0x14),*(undefined4 *)(param_2 + 0x10),auStack_c);
  return;
}


/* address=008cb3c4 symbol=_ZNSt4priv12_String_baseIwSaIwEE17_M_allocate_blockEj.clone.0 */

void _ZNSt4priv12_String_baseIwSaIwEE17_M_allocate_blockEj_clone_0(void)

{
  return;
}


/* address=008cb3c8 symbol=_ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE6appendEjw.clone.2 */

int * _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE6appendEjw_clone_2
                (int *param_1,undefined4 param_2)

{
  undefined4 uVar1;
  uint uVar2;
  int iVar3;
  
  if ((int *)param_1[0x112] == param_1) {
    iVar3 = param_1[0x10];
    uVar2 = 0x10 - (iVar3 - (int)param_1 >> 2);
  }
  else {
    iVar3 = param_1[0x10];
    uVar2 = *param_1 - iVar3 >> 2;
  }
  if (uVar2 < 2) {
    uVar1 = _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE20_M_compute_next_sizeEj
                      (param_1,1);
    _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE10_M_reserveEj(param_1,uVar1);
    iVar3 = param_1[0x10];
  }
  *(undefined4 *)(iVar3 + 4) = 0;
  *(undefined4 *)param_1[0x10] = param_2;
  param_1[0x10] = param_1[0x10] + 4;
  return param_1;
}


/* address=008cb418 symbol=_ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE10_M_appendTIPwEERS4_T_S8_RKSt20forward_iterator_tag */

int * _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE10_M_appendTIPwEERS4_T_S8_RKSt20forward_iterator_tag
                (int *param_1,undefined4 *param_2,undefined4 *param_3)

{
  int *__dest;
  uint uVar1;
  undefined4 *__src;
  void *__src_00;
  undefined4 *puVar2;
  uint uVar3;
  
  if (param_2 != param_3) {
    uVar3 = (int)param_3 - (int)param_2 >> 2;
    if ((int *)param_1[0x112] == param_1) {
      puVar2 = (undefined4 *)param_1[0x10];
      uVar1 = 0x10 - ((int)puVar2 - (int)param_1 >> 2);
    }
    else {
      puVar2 = (undefined4 *)param_1[0x10];
      uVar1 = *param_1 - (int)puVar2 >> 2;
    }
    if (uVar1 <= uVar3) {
      uVar3 = _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE20_M_compute_next_sizeEj
                        (param_1,uVar3);
      __dest = param_1 + 0x11;
      if (0x101 < uVar3) {
        __dest = (int *)_ZNSaIwE8allocateEjPKv(__dest,uVar3,0);
      }
      __src_00 = (void *)param_1[0x112];
      if (__src_00 != (void *)param_1[0x10]) {
                    /* WARNING: Subroutine does not return */
        memcpy(__dest,__src_00,(int)(void *)param_1[0x10] - (int)__src_00);
      }
                    /* WARNING: Subroutine does not return */
      memcpy(__dest,param_2,(int)param_3 - (int)param_2);
    }
    __src = param_2 + 1;
    *puVar2 = *param_2;
    if (param_3 != __src) {
                    /* WARNING: Subroutine does not return */
      memcpy((void *)(param_1[0x10] + 4),__src,(int)param_3 - (int)__src);
    }
    *(undefined4 *)(param_1[0x10] + uVar3 * 4) = 0;
    param_1[0x10] = param_1[0x10] + uVar3 * 4;
  }
  return param_1;
}


/* address=008cb4e0 symbol=_ZNSt4privL8__appendERNS_16__basic_iostringIwEEPcS3_RKSt5ctypeIwE */

void _ZNSt4privL8__appendERNS_16__basic_iostringIwEEPcS3_RKSt5ctypeIwE
               (undefined4 param_1,int param_2,int param_3,int *param_4)

{
  undefined auStack_11c [256];
  undefined auStack_1c [8];
  
  (**(code **)(*param_4 + 0x2c))(param_4,param_2,param_3,auStack_11c);
  _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE10_M_appendTIPwEERS4_T_S8_RKSt20forward_iterator_tag
            (param_1,auStack_11c,auStack_11c + (param_3 - param_2) * 4,auStack_1c);
  return;
}


/* address=008cb510 symbol=_ZNSt4privL8__appendERNS_16__basic_iostringIwEERKSbIwSt11char_traitsIwESaIwEE */

void _ZNSt4privL8__appendERNS_16__basic_iostringIwEERKSbIwSt11char_traitsIwESaIwEE
               (undefined4 param_1,int param_2)

{
  int iVar1;
  undefined auStack_c [12];
  
  iVar1 = *(int *)(param_2 + 0x44);
  _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE10_M_appendTIPKwEERS4_T_S9_RKSt20forward_iterator_tag
            (param_1,iVar1,iVar1 + (*(int *)(param_2 + 0x40) - iVar1 >> 2) * 4,auStack_c);
  return;
}


/* address=008cb52c symbol=_ZNSt4priv23__write_formatted_timeTIwNS_11_WTime_InfoEEEvRNS_16__basic_iostringIT_EERKSt5ctypeIS3_EccRKT0_PK2tm */

void _ZNSt4priv23__write_formatted_timeTIwNS_11_WTime_InfoEEEvRNS_16__basic_iostringIT_EERKSt5ctypeIS3_EccRKT0_PK2tm
               (undefined4 param_1,int *param_2,int param_3,int param_4,int param_5,tm *param_6)

{
  undefined *puVar1;
  uint uVar2;
  undefined4 uVar3;
  int extraout_r1;
  int extraout_r1_00;
  int extraout_r1_01;
  int extraout_r1_02;
  int extraout_r1_03;
  int extraout_r1_04;
  int extraout_r1_05;
  int extraout_r1_06;
  char *pcVar4;
  undefined4 extraout_r1_07;
  int extraout_r1_08;
  uint extraout_r1_09;
  int extraout_r1_10;
  int extraout_r1_11;
  int extraout_r1_12;
  undefined *puVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  int iVar9;
  int local_c8;
  undefined auStack_c0 [4];
  undefined auStack_bc [4];
  undefined auStack_b8 [4];
  char cStack_b4;
  undefined uStack_b3;
  undefined auStack_b2 [62];
  undefined auStack_74 [24];
  undefined auStack_5c [24];
  undefined auStack_44 [24];
  int local_2c;
  
  local_2c = __stack_chk_guard;
  switch(param_3 - 0x25U & 0xff) {
  case 0:
    uVar3 = (**(code **)(*param_2 + 0x28))(param_2,0x25);
    _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE6appendEjw_clone_2(param_1,uVar3);
    break;
  case 0x1c:
    iVar6 = param_6->tm_wday + 7;
    goto code_r0x008cb63e;
  case 0x1d:
    _ZNSt4privL8__appendERNS_16__basic_iostringIwEERKSbIwSt11char_traitsIwESaIwEE
              (param_1,(param_6->tm_mon + 0xc) * 0x48 + 0x468 + param_5);
    break;
  case 0x1e:
    iVar6 = param_6->tm_mday;
    goto code_r0x008cb8b4;
  case 0x1f:
    iVar6 = param_5 + 0x18;
    goto code_r0x008cb61c;
  case 0x22:
  case 0x42:
    iVar7 = param_6->tm_year;
    iVar6 = param_6->tm_yday;
    iVar9 = param_6->tm_wday;
    uVar2 = iVar7 + 0x76c;
    __aeabi_idivmod((iVar6 + 0x17e) - iVar9,7);
    local_c8 = (iVar6 + 3) - extraout_r1_03;
    if (local_c8 < 0) {
      uVar2 = iVar7 + 0x76b;
      uVar8 = 0;
      if ((uVar2 & 3) == 0) {
        __aeabi_idivmod(uVar2,100);
        uVar8 = 1;
        if (extraout_r1_10 == 0) {
          __aeabi_idivmod(uVar2,400);
          uVar8 = (uint)(extraout_r1_11 == 0);
        }
      }
      iVar6 = iVar6 + 0x16d + uVar8;
      __aeabi_idivmod((iVar6 - iVar9) + 0x17e,7);
      local_c8 = (iVar6 + 3) - extraout_r1_12;
    }
    else {
      uVar8 = 0;
      if ((uVar2 & 3) == 0) {
        __aeabi_idivmod(uVar2,100);
        uVar8 = 1;
        if (extraout_r1_04 == 0) {
          __aeabi_idivmod(uVar2,400);
          uVar8 = (uint)(extraout_r1_05 == 0);
        }
      }
      iVar6 = (iVar6 + -0x16d) - uVar8;
      __aeabi_idivmod((iVar6 - iVar9) + 0x17e,7);
      iVar6 = (iVar6 + 3) - extraout_r1_06;
      if (-1 < iVar6) {
        uVar2 = iVar7 + 0x76d;
        local_c8 = iVar6;
      }
    }
    if (param_3 != 0x47) {
      if (param_3 != 0x67) {
                    /* WARNING: Subroutine does not return */
        __aeabi_idiv(local_c8,7,uVar2);
      }
      __aeabi_idivmod(uVar2,100);
      __aeabi_idivmod(extraout_r1_08 + 100,100);
      uVar2 = extraout_r1_09;
    }
    goto code_r0x008cb580;
  case 0x23:
    if (param_4 == 0x23) {
      sprintf(&cStack_b4,"%ld",param_6->tm_hour);
      uVar8 = param_6->tm_hour;
code_r0x008cb998:
      uVar2 = 9;
code_r0x008cb978:
      puVar1 = &uStack_b3;
      if ((int)(((uint)(uVar8 <= uVar2) - ((int)uVar8 >> 0x1f)) * -0x80000000) < 0)
      goto code_r0x008cb5f2;
    }
    else {
      sprintf(&cStack_b4,"%.2ld",param_6->tm_hour);
    }
    goto code_r0x008cb692;
  case 0x24:
    if (param_4 == 0x23) {
      pcVar4 = "%ld";
    }
    else {
      pcVar4 = "%.2ld";
    }
    __aeabi_idivmod(param_6->tm_hour,0xc);
    iVar6 = extraout_r1_01;
    if (extraout_r1_01 == 0) {
      iVar6 = 0xc;
    }
    sprintf(&cStack_b4,pcVar4,iVar6);
    __aeabi_idivmod(param_6->tm_hour,0xc);
    if (((9 < extraout_r1_02) || (extraout_r1_02 == 0)) || (puVar1 = &uStack_b3, param_4 != 0x23))
    goto code_r0x008cb692;
    goto code_r0x008cb5f2;
  case 0x28:
    if (param_4 == 0x23) {
      sprintf(&cStack_b4,"%ld",param_6->tm_min);
      uVar8 = param_6->tm_min;
      goto code_r0x008cb998;
    }
    sprintf(&cStack_b4,"%.2ld",param_6->tm_min);
    goto code_r0x008cb692;
  case 0x2d:
    puVar1 = auStack_44;
    pcVar4 = "%H:%M";
    puVar5 = auStack_b8;
    goto code_r0x008cb6fc;
  case 0x2e:
    if (param_4 == 0x23) {
      sprintf(&cStack_b4,"%ld",param_6->tm_sec);
      uVar8 = param_6->tm_sec;
      goto code_r0x008cb998;
    }
    sprintf(&cStack_b4,"%.2ld",param_6->tm_sec);
    goto code_r0x008cb692;
  case 0x2f:
    puVar1 = auStack_74;
    pcVar4 = "%H:%M:%S";
    puVar5 = auStack_c0;
    goto code_r0x008cb6fc;
  case 0x30:
                    /* WARNING: Subroutine does not return */
    __aeabi_idiv((param_6->tm_yday + 7) - param_6->tm_wday,7);
  case 0x32:
    if (param_6->tm_wday != 0) {
                    /* WARNING: Subroutine does not return */
      __aeabi_idiv((param_6->tm_yday + 8) - param_6->tm_wday,7);
    }
                    /* WARNING: Subroutine does not return */
    __aeabi_idiv(param_6->tm_yday + 1,7);
  case 0x33:
    _ZNSt4priv11__subformatIwNS_11_WTime_InfoEEEvRNS_16__basic_iostringIT_EERKSt5ctypeIS3_ERKSsRKT0_PK2tm
              (param_1,param_2,param_5,param_5,param_6);
    break;
  case 0x34:
    iVar6 = param_6->tm_year + 0x76c;
    goto code_r0x008cb604;
  case 0x3c:
    iVar6 = param_6->tm_wday;
code_r0x008cb63e:
    _ZNSt4privL8__appendERNS_16__basic_iostringIwEERKSbIwSt11char_traitsIwESaIwEE
              (param_1,iVar6 * 0x48 + 0x78 + param_5);
    break;
  case 0x3d:
  case 0x43:
    _ZNSt4privL8__appendERNS_16__basic_iostringIwEERKSbIwSt11char_traitsIwESaIwEE
              (param_1,param_6->tm_mon * 0x48 + 0x468 + param_5);
    break;
  case 0x3e:
    iVar6 = param_5 + 0x60;
    goto joined_r0x008cb8d2;
  case 0x3f:
    if (param_4 == 0x23) {
      sprintf(&cStack_b4,"%ld",param_6->tm_mday);
      uVar8 = param_6->tm_mday;
      goto code_r0x008cb998;
    }
    sprintf(&cStack_b4,"%.2ld",param_6->tm_mday);
    goto code_r0x008cb692;
  case 0x40:
    iVar6 = param_6->tm_mday;
    goto code_r0x008cb8b4;
  case 0x45:
    iVar6 = param_6->tm_yday + 1;
    goto code_r0x008cb604;
  case 0x46:
    iVar6 = param_6->tm_hour;
code_r0x008cb8b4:
    sprintf(&cStack_b4,"%2ld",iVar6);
    _ZNSt4privL8__appendERNS_16__basic_iostringIwEEPcS3_RKSt5ctypeIwE
              (param_1,&cStack_b4,auStack_b2,param_2);
    break;
  case 0x47:
    __aeabi_idivmod(param_6->tm_hour,0xc);
    sprintf(&cStack_b4,"%2ld",extraout_r1_07);
    _ZNSt4privL8__appendERNS_16__basic_iostringIwEEPcS3_RKSt5ctypeIwE
              (param_1,&cStack_b4,auStack_b2,param_2);
    break;
  case 0x48:
    if (param_4 == 0x23) {
      sprintf(&cStack_b4,"%ld",param_6->tm_mon + 1);
      uVar8 = param_6->tm_mon;
      uVar2 = 8;
      goto code_r0x008cb978;
    }
    sprintf(&cStack_b4,"%.2ld",param_6->tm_mon + 1);
code_r0x008cb692:
    puVar1 = auStack_b2;
code_r0x008cb5f2:
    _ZNSt4privL8__appendERNS_16__basic_iostringIwEEPcS3_RKSt5ctypeIwE
              (param_1,&cStack_b4,puVar1,param_2);
    break;
  case 0x49:
    uVar3 = (**(code **)(*param_2 + 0x28))(param_2,10);
    _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE6appendEjw_clone_2(param_1,uVar3);
    break;
  case 0x4b:
                    /* WARNING: Subroutine does not return */
    __aeabi_idiv(param_6->tm_hour,0xc);
  case 0x4d:
    puVar1 = auStack_5c;
    pcVar4 = "%I:%M:%S %p";
    puVar5 = auStack_bc;
code_r0x008cb6fc:
    _ZNSsC1EPKcRKSaIcE(puVar1,pcVar4,puVar5);
    _ZNSt4priv11__subformatIwNS_11_WTime_InfoEEEvRNS_16__basic_iostringIT_EERKSt5ctypeIS3_ERKSsRKT0_PK2tm
              (param_1,param_2,puVar1,param_5,param_6);
    _ZNSsD1Ev(puVar1);
    break;
  case 0x4e:
    uVar2 = mktime(param_6);
code_r0x008cb580:
    uVar3 = _ZNSt4priv15__write_integerEPcil(&cStack_b4,0,uVar2);
    _ZNSt4privL8__appendERNS_16__basic_iostringIwEEPcS3_RKSt5ctypeIwE
              (param_1,&cStack_b4,uVar3,param_2);
    break;
  case 0x4f:
    uVar3 = (**(code **)(*param_2 + 0x28))(param_2,9);
    _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE6appendEjw_clone_2(param_1,uVar3);
  case 0x50:
    __aeabi_idivmod(param_6->tm_wday + 6,7);
    puVar1 = (undefined *)_ZNSt4priv15__write_integerEPcil(&cStack_b4,0,extraout_r1 + 1);
    goto code_r0x008cb5f2;
  case 0x52:
    uVar3 = _ZNSt4priv15__write_integerEPcil(&cStack_b4,0,param_6->tm_wday);
    _ZNSt4privL8__appendERNS_16__basic_iostringIwEEPcS3_RKSt5ctypeIwE
              (param_1,&cStack_b4,uVar3,param_2);
    break;
  case 0x53:
    iVar6 = param_5 + 0x48;
joined_r0x008cb8d2:
    if (param_4 != 0x23) {
      iVar6 = iVar6 + -0x30;
    }
code_r0x008cb61c:
    _ZNSt4priv11__subformatIwNS_11_WTime_InfoEEEvRNS_16__basic_iostringIT_EERKSt5ctypeIS3_ERKSsRKT0_PK2tm
              (param_1,param_2,iVar6,param_5,param_6);
    break;
  case 0x54:
    __aeabi_idivmod(param_6->tm_year + 0x76c,100);
    iVar6 = extraout_r1_00;
code_r0x008cb604:
    puVar1 = (undefined *)_ZNSt4priv15__write_integerEPcil(&cStack_b4,0,iVar6);
    goto code_r0x008cb5f2;
  }
  if (local_2c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=008cba5c symbol=_ZNSt4priv22__write_formatted_timeERNS_16__basic_iostringIwEERKSt5ctypeIwEccRKNS_11_WTime_InfoEPK2tm */

void _ZNSt4priv22__write_formatted_timeERNS_16__basic_iostringIwEERKSt5ctypeIwEccRKNS_11_WTime_InfoEPK2tm
               (void)

{
  _ZNSt4priv23__write_formatted_timeTIwNS_11_WTime_InfoEEEvRNS_16__basic_iostringIT_EERKSt5ctypeIS3_EccRKT0_PK2tm
            ();
  return;
}


/* address=008cba70 symbol=_ZNSt4priv11__subformatIwNS_11_WTime_InfoEEEvRNS_16__basic_iostringIT_EERKSt5ctypeIS3_ERKSsRKT0_PK2tm */

void _ZNSt4priv11__subformatIwNS_11_WTime_InfoEEEvRNS_16__basic_iostringIT_EERKSt5ctypeIS3_ERKSsRKT0_PK2tm
               (undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4,
               undefined4 param_5)

{
  char *pcVar1;
  char cVar2;
  undefined4 uVar3;
  char *pcVar4;
  char *pcVar5;
  
  pcVar4 = *(char **)(param_3 + 0x14);
  pcVar5 = *(char **)(param_3 + 0x10);
  do {
    if (pcVar5 == pcVar4) {
      return;
    }
    while (*pcVar4 == '%') {
      cVar2 = pcVar4[1];
      pcVar1 = pcVar4 + 1;
      uVar3 = 0;
      if (cVar2 == '#') {
        pcVar1 = pcVar4 + 2;
        cVar2 = *pcVar1;
        uVar3 = 0x23;
      }
      pcVar4 = pcVar1 + 1;
      _ZNSt4priv23__write_formatted_timeTIwNS_11_WTime_InfoEEEvRNS_16__basic_iostringIT_EERKSt5ctypeIS3_EccRKT0_PK2tm
                (param_1,param_2,cVar2,uVar3,param_4,param_5);
      if (pcVar5 == pcVar4) {
        return;
      }
    }
    pcVar4 = pcVar4 + 1;
    _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE6appendEjw_clone_2(param_1);
  } while( true );
}


/* address=008cbad0 symbol=_ZNSt4priv15_Time_Info_BaseC2Ev */

void _ZNSt4priv15_Time_Info_BaseC2Ev(int param_1)

{
  *(int *)(param_1 + 0x10) = param_1;
  *(int *)(param_1 + 0x14) = param_1;
                    /* WARNING: Subroutine does not return */
  _ZNSt4priv12_String_baseIcSaIcEE17_M_allocate_blockEj(param_1,0x10);
}


/* address=008cbb30 symbol=_ZNSt4priv10_Time_InfoC1Ev */

void _ZNSt4priv10_Time_InfoC1Ev(int param_1)

{
  int iVar1;
  
  _ZNSt4priv15_Time_Info_BaseC2Ev();
  iVar1 = param_1 + 0x78;
  *(int *)(param_1 + 0x88) = iVar1;
  *(int *)(param_1 + 0x8c) = iVar1;
                    /* WARNING: Subroutine does not return */
  _ZNSt4priv12_String_baseIcSaIcEE17_M_allocate_blockEj(iVar1,0x10);
}


/* address=008cbbd0 symbol=_ZNSt4priv11_WTime_InfoC1Ev */

int _ZNSt4priv11_WTime_InfoC1Ev(int param_1)

{
  undefined4 *puVar1;
  int iVar2;
  int iVar3;
  
  _ZNSt4priv15_Time_Info_BaseC2Ev();
  iVar2 = param_1 + 0x78;
  iVar3 = 0;
  do {
    *(int *)(iVar2 + 0x40) = iVar2;
    *(int *)(iVar2 + 0x44) = iVar2;
    _ZNSt4priv12_String_baseIwSaIwEE17_M_allocate_blockEj_clone_0(iVar2);
    puVar1 = (undefined4 *)(iVar2 + 0x40);
    iVar3 = iVar3 + 0x48;
    iVar2 = iVar2 + 0x48;
    *(undefined4 *)*puVar1 = 0;
  } while (iVar3 != 0x3f0);
  iVar2 = param_1 + 0x468;
  iVar3 = 0;
  do {
    *(int *)(iVar2 + 0x40) = iVar2;
    *(int *)(iVar2 + 0x44) = iVar2;
    _ZNSt4priv12_String_baseIwSaIwEE17_M_allocate_blockEj_clone_0(iVar2);
    puVar1 = (undefined4 *)(iVar2 + 0x40);
    iVar3 = iVar3 + 0x48;
    iVar2 = iVar2 + 0x48;
    *(undefined4 *)*puVar1 = 0;
  } while (iVar3 != 0x6c0);
  *(int *)(param_1 + 0xb68) = param_1 + 0xb28;
  *(int *)(param_1 + 0xb6c) = param_1 + 0xb28;
  _ZNSt4priv12_String_baseIwSaIwEE17_M_allocate_blockEj_clone_0();
  **(undefined4 **)(param_1 + 0xb68) = 0;
  iVar2 = param_1 + 0xb70;
  *(int *)(param_1 + 0xbb0) = iVar2;
  *(int *)(param_1 + 0xbb4) = iVar2;
  _ZNSt4priv12_String_baseIwSaIwEE17_M_allocate_blockEj_clone_0(iVar2);
  **(undefined4 **)(param_1 + 0xbb0) = 0;
  return param_1;
}


/* address=008cbc64 symbol=_ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE6appendEjc.clone.1 */

int * _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE6appendEjc_clone_1
                (int *param_1,undefined param_2)

{
  undefined4 uVar1;
  int *piVar2;
  uint uVar3;
  int iVar4;
  
  iVar4 = param_1[4];
  piVar2 = (int *)param_1[0x46];
  if (iVar4 - (int)piVar2 == -2) {
    _ZSt24__stl_throw_length_errorPKc("basic_string");
    piVar2 = (int *)param_1[0x46];
    iVar4 = param_1[4];
  }
  if (param_1 == piVar2) {
    uVar3 = (int)param_1 + (0x10 - iVar4);
  }
  else {
    uVar3 = *param_1 - iVar4;
  }
  if (uVar3 < 2) {
    uVar1 = _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE20_M_compute_next_sizeEj
                      (param_1,1);
    _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE10_M_reserveEj(param_1,uVar1);
    iVar4 = param_1[4];
  }
  *(undefined *)(iVar4 + 1) = 0;
  *(undefined *)param_1[4] = param_2;
  param_1[4] = param_1[4] + 1;
  return param_1;
}


/* address=008cbcc4 symbol=_ZNSt4priv23__write_formatted_timeTIcNS_10_Time_InfoEEEvRNS_16__basic_iostringIT_EERKSt5ctypeIS3_EccRKT0_PK2tm */

void _ZNSt4priv23__write_formatted_timeTIcNS_10_Time_InfoEEEvRNS_16__basic_iostringIT_EERKSt5ctypeIS3_EccRKT0_PK2tm
               (undefined4 param_1,int *param_2,int param_3,int param_4,int param_5,tm *param_6)

{
  undefined4 uVar1;
  time_t tVar2;
  int extraout_r1;
  int extraout_r1_00;
  int extraout_r1_01;
  int extraout_r1_02;
  int extraout_r1_03;
  undefined4 extraout_r1_04;
  int extraout_r1_05;
  int extraout_r1_06;
  char *pcVar3;
  undefined4 extraout_r1_07;
  int extraout_r1_08;
  uint extraout_r1_09;
  int extraout_r1_10;
  int extraout_r1_11;
  int extraout_r1_12;
  undefined *puVar4;
  undefined *puVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  int iVar9;
  uint uVar10;
  int local_114;
  undefined auStack_10c [4];
  undefined auStack_108 [4];
  undefined auStack_104 [4];
  undefined auStack_100 [4];
  undefined auStack_fc [4];
  undefined auStack_f8 [4];
  undefined auStack_f4 [4];
  undefined auStack_f0 [8];
  undefined auStack_e8 [8];
  undefined auStack_e0 [4];
  undefined auStack_dc [4];
  undefined auStack_d8 [4];
  undefined auStack_d4 [4];
  undefined auStack_d0 [4];
  undefined auStack_cc [4];
  undefined auStack_c8 [4];
  undefined auStack_c4 [4];
  undefined auStack_c0 [4];
  undefined auStack_bc [4];
  undefined auStack_b8 [4];
  char cStack_b4;
  undefined uStack_b3;
  undefined auStack_b2 [62];
  undefined auStack_74 [24];
  undefined auStack_5c [24];
  undefined auStack_44 [24];
  int local_2c;
  
  local_2c = __stack_chk_guard;
  switch(param_3 - 0x25U & 0xff) {
  case 0:
    uVar1 = (**(code **)(*param_2 + 0x18))(param_2,0x25);
    _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE6appendEjc_clone_1(param_1,uVar1);
    break;
  case 0x1c:
    iVar6 = param_6->tm_wday + 7;
    goto code_r0x008cbe6e;
  case 0x1d:
    iVar6 = param_6->tm_mon + 0xc;
    goto code_r0x008cbdc4;
  case 0x1e:
    sprintf(&cStack_b4,"%2ld",param_6->tm_mday);
    _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE10_M_appendTIPcEERS4_T_S8_RKSt20forward_iterator_tag
              (param_1,&cStack_b4,auStack_b2,auStack_f8);
    break;
  case 0x1f:
    iVar6 = param_5 + 0x18;
    goto code_r0x008cbe38;
  case 0x22:
  case 0x42:
    iVar6 = param_6->tm_yday;
    iVar7 = param_6->tm_year;
    iVar9 = param_6->tm_wday;
    __aeabi_idivmod((iVar6 + 0x17e) - iVar9,7);
    uVar10 = iVar7 + 0x76c;
    local_114 = (iVar6 + 3) - extraout_r1;
    if (local_114 < 0) {
      uVar10 = iVar7 + 0x76b;
      uVar8 = 0;
      if ((uVar10 & 3) == 0) {
        __aeabi_idivmod(uVar10,100);
        uVar8 = 1;
        if (extraout_r1_10 == 0) {
          __aeabi_idivmod(uVar10,400);
          uVar8 = (uint)(extraout_r1_11 == 0);
        }
      }
      iVar6 = iVar6 + 0x16d + uVar8;
      __aeabi_idivmod((iVar6 - iVar9) + 0x17e,7);
      local_114 = (iVar6 + 3) - extraout_r1_12;
    }
    else {
      uVar8 = 0;
      if ((uVar10 & 3) == 0) {
        __aeabi_idivmod(uVar10,100);
        uVar8 = 1;
        if (extraout_r1_00 == 0) {
          __aeabi_idivmod(uVar10,400);
          uVar8 = (uint)(extraout_r1_01 == 0);
        }
      }
      iVar6 = (iVar6 + -0x16d) - uVar8;
      __aeabi_idivmod((iVar6 - iVar9) + 0x17e,7);
      iVar6 = (iVar6 + 3) - extraout_r1_02;
      if (-1 < iVar6) {
        uVar10 = iVar7 + 0x76d;
        local_114 = iVar6;
      }
    }
    if (param_3 != 0x47) {
      if (param_3 != 0x67) {
                    /* WARNING: Subroutine does not return */
        __aeabi_idiv(local_114,7,uVar10);
      }
      __aeabi_idivmod(uVar10,100);
      __aeabi_idivmod(extraout_r1_08 + 100,100);
      uVar10 = extraout_r1_09;
    }
    uVar1 = _ZNSt4priv15__write_integerEPcil(&cStack_b4,0,uVar10);
    _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE10_M_appendTIPcEERS4_T_S8_RKSt20forward_iterator_tag
              (param_1,&cStack_b4,uVar1,auStack_10c);
    break;
  case 0x23:
    if (param_4 == 0x23) {
      sprintf(&cStack_b4,"%ld",param_6->tm_hour);
      puVar4 = &uStack_b3;
      if (-1 < (int)(((uint)((uint)param_6->tm_hour < 10) - (param_6->tm_hour >> 0x1f)) *
                    -0x80000000)) goto code_r0x008cbfd6;
    }
    else {
      sprintf(&cStack_b4,"%.2ld",param_6->tm_hour);
code_r0x008cbfd6:
      puVar4 = auStack_b2;
    }
    _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE10_M_appendTIPcEERS4_T_S8_RKSt20forward_iterator_tag
              (param_1,&cStack_b4,puVar4,auStack_cc);
    break;
  case 0x24:
    if (param_4 == 0x23) {
      pcVar3 = "%ld";
    }
    else {
      pcVar3 = "%.2ld";
    }
    __aeabi_idivmod(param_6->tm_hour,0xc);
    iVar6 = extraout_r1_05;
    if (extraout_r1_05 == 0) {
      iVar6 = 0xc;
    }
    sprintf(&cStack_b4,pcVar3,iVar6);
    __aeabi_idivmod(param_6->tm_hour,0xc);
    if (((9 < extraout_r1_06) || (extraout_r1_06 == 0)) || (puVar4 = &uStack_b3, param_4 != 0x23)) {
      puVar4 = auStack_b2;
    }
    _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE10_M_appendTIPcEERS4_T_S8_RKSt20forward_iterator_tag
              (param_1,&cStack_b4,puVar4,auStack_d0);
    break;
  case 0x28:
    if (param_4 == 0x23) {
      sprintf(&cStack_b4,"%ld",param_6->tm_min);
      puVar4 = &uStack_b3;
      if (-1 < (int)(((uint)((uint)param_6->tm_min < 10) - (param_6->tm_min >> 0x1f)) * -0x80000000)
         ) goto code_r0x008cbf16;
    }
    else {
      sprintf(&cStack_b4,"%.2ld",param_6->tm_min);
code_r0x008cbf16:
      puVar4 = auStack_b2;
    }
    _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE10_M_appendTIPcEERS4_T_S8_RKSt20forward_iterator_tag
              (param_1,&cStack_b4,puVar4,auStack_dc);
    break;
  case 0x2d:
    puVar4 = auStack_44;
    pcVar3 = "%H:%M";
    puVar5 = auStack_b8;
    goto code_r0x008cbfa6;
  case 0x2e:
    if (param_4 == 0x23) {
      sprintf(&cStack_b4,"%ld",param_6->tm_sec);
      puVar4 = &uStack_b3;
      if (-1 < (int)(((uint)((uint)param_6->tm_sec < 10) - (param_6->tm_sec >> 0x1f)) * -0x80000000)
         ) goto code_r0x008cbf8c;
    }
    else {
      sprintf(&cStack_b4,"%.2ld",param_6->tm_sec);
code_r0x008cbf8c:
      puVar4 = auStack_b2;
    }
    _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE10_M_appendTIPcEERS4_T_S8_RKSt20forward_iterator_tag
              (param_1,&cStack_b4,puVar4,auStack_e0);
    break;
  case 0x2f:
    puVar4 = auStack_74;
    pcVar3 = "%H:%M:%S";
    puVar5 = auStack_c0;
    goto code_r0x008cbfa6;
  case 0x30:
                    /* WARNING: Subroutine does not return */
    __aeabi_idiv((param_6->tm_yday + 7) - param_6->tm_wday,7);
  case 0x32:
    if (param_6->tm_wday != 0) {
                    /* WARNING: Subroutine does not return */
      __aeabi_idiv((param_6->tm_yday + 8) - param_6->tm_wday,7);
    }
                    /* WARNING: Subroutine does not return */
    __aeabi_idiv(param_6->tm_yday + 1,7);
  case 0x33:
    _ZNSt4priv11__subformatIcNS_10_Time_InfoEEEvRNS_16__basic_iostringIT_EERKSt5ctypeIS3_ERKSsRKT0_PK2tm
              (param_1,param_2,param_5,param_5,param_6);
    break;
  case 0x34:
    uVar1 = _ZNSt4priv15__write_integerEPcil(&cStack_b4,0,param_6->tm_year + 0x76c);
    _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE10_M_appendTIPcEERS4_T_S8_RKSt20forward_iterator_tag
              (param_1,&cStack_b4,uVar1,auStack_f4);
    break;
  case 0x3c:
    iVar6 = param_6->tm_wday;
code_r0x008cbe6e:
    _ZNSt4privL8__appendERNS_16__basic_iostringIcEERKSs(param_1,iVar6 * 0x18 + 0x78 + param_5);
    break;
  case 0x3d:
  case 0x43:
    iVar6 = param_6->tm_mon;
code_r0x008cbdc4:
    _ZNSt4privL8__appendERNS_16__basic_iostringIcEERKSs(param_1,iVar6 * 0x18 + 0x1c8 + param_5);
    break;
  case 0x3e:
    iVar6 = param_5 + 0x60;
    goto joined_r0x008cc110;
  case 0x3f:
    if (param_4 == 0x23) {
      sprintf(&cStack_b4,"%ld",param_6->tm_mday);
      puVar4 = &uStack_b3;
      if (-1 < (int)(((uint)((uint)param_6->tm_mday < 10) - (param_6->tm_mday >> 0x1f)) *
                    -0x80000000)) goto code_r0x008cc16e;
    }
    else {
      sprintf(&cStack_b4,"%.2ld",param_6->tm_mday);
code_r0x008cc16e:
      puVar4 = auStack_b2;
    }
    _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE10_M_appendTIPcEERS4_T_S8_RKSt20forward_iterator_tag
              (param_1,&cStack_b4,puVar4,auStack_c4);
    break;
  case 0x40:
    sprintf(&cStack_b4,"%2ld",param_6->tm_mday);
    _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE10_M_appendTIPcEERS4_T_S8_RKSt20forward_iterator_tag
              (param_1,&cStack_b4,auStack_b2,auStack_c8);
    break;
  case 0x45:
    uVar1 = _ZNSt4priv15__write_integerEPcil(&cStack_b4,0,param_6->tm_yday + 1);
    _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE10_M_appendTIPcEERS4_T_S8_RKSt20forward_iterator_tag
              (param_1,&cStack_b4,uVar1,auStack_d4);
    break;
  case 0x46:
    sprintf(&cStack_b4,"%2ld",param_6->tm_hour);
    _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE10_M_appendTIPcEERS4_T_S8_RKSt20forward_iterator_tag
              (param_1,&cStack_b4,auStack_b2,auStack_fc);
    break;
  case 0x47:
    __aeabi_idivmod(param_6->tm_hour,0xc);
    sprintf(&cStack_b4,"%2ld",extraout_r1_07);
    _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE10_M_appendTIPcEERS4_T_S8_RKSt20forward_iterator_tag
              (param_1,&cStack_b4,auStack_b2,auStack_100);
    break;
  case 0x48:
    if (param_4 == 0x23) {
      sprintf(&cStack_b4,"%ld",param_6->tm_mon + 1);
      puVar4 = &uStack_b3;
      if (-1 < (int)(((uint)((uint)param_6->tm_mon < 9) - (param_6->tm_mon >> 0x1f)) * -0x80000000))
      goto code_r0x008cc0b0;
    }
    else {
      sprintf(&cStack_b4,"%.2ld",param_6->tm_mon + 1);
code_r0x008cc0b0:
      puVar4 = auStack_b2;
    }
    _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE10_M_appendTIPcEERS4_T_S8_RKSt20forward_iterator_tag
              (param_1,&cStack_b4,puVar4,auStack_d8);
    break;
  case 0x49:
    uVar1 = (**(code **)(*param_2 + 0x18))(param_2,10);
    _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE6appendEjc_clone_1(param_1,uVar1);
    break;
  case 0x4b:
                    /* WARNING: Subroutine does not return */
    __aeabi_idiv(param_6->tm_hour,0xc);
  case 0x4d:
    puVar4 = auStack_5c;
    pcVar3 = "%I:%M:%S %p";
    puVar5 = auStack_bc;
code_r0x008cbfa6:
    _ZNSsC1EPKcRKSaIcE(puVar4,pcVar3,puVar5);
    _ZNSt4priv11__subformatIcNS_10_Time_InfoEEEvRNS_16__basic_iostringIT_EERKSt5ctypeIS3_ERKSsRKT0_PK2tm
              (param_1,param_2,puVar4,param_5,param_6);
    _ZNSsD1Ev(puVar4);
    break;
  case 0x4e:
    tVar2 = mktime(param_6);
    uVar1 = _ZNSt4priv15__write_integerEPcil(&cStack_b4,0,tVar2);
    _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE10_M_appendTIPcEERS4_T_S8_RKSt20forward_iterator_tag
              (param_1,&cStack_b4,uVar1,auStack_108);
    break;
  case 0x4f:
    uVar1 = (**(code **)(*param_2 + 0x18))(param_2,9);
    _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE6appendEjc_clone_1(param_1,uVar1);
  case 0x50:
    __aeabi_idivmod(param_6->tm_wday + 6,7);
    uVar1 = _ZNSt4priv15__write_integerEPcil(&cStack_b4,0,extraout_r1_03 + 1);
    _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE10_M_appendTIPcEERS4_T_S8_RKSt20forward_iterator_tag
              (param_1,&cStack_b4,uVar1,auStack_104);
    break;
  case 0x52:
    uVar1 = _ZNSt4priv15__write_integerEPcil(&cStack_b4,0,param_6->tm_wday);
    _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE10_M_appendTIPcEERS4_T_S8_RKSt20forward_iterator_tag
              (param_1,&cStack_b4,uVar1,auStack_e8);
    break;
  case 0x53:
    iVar6 = param_5 + 0x48;
joined_r0x008cc110:
    if (param_4 != 0x23) {
      iVar6 = iVar6 + -0x30;
    }
code_r0x008cbe38:
    _ZNSt4priv11__subformatIcNS_10_Time_InfoEEEvRNS_16__basic_iostringIT_EERKSt5ctypeIS3_ERKSsRKT0_PK2tm
              (param_1,param_2,iVar6,param_5,param_6);
    break;
  case 0x54:
    __aeabi_idivmod(param_6->tm_year + 0x76c,100);
    uVar1 = _ZNSt4priv15__write_integerEPcil(&cStack_b4,0,extraout_r1_04);
    _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE10_M_appendTIPcEERS4_T_S8_RKSt20forward_iterator_tag
              (param_1,&cStack_b4,uVar1,auStack_f0);
  }
  if (local_2c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=008cc310 symbol=_ZNSt4priv22__write_formatted_timeERNS_16__basic_iostringIcEERKSt5ctypeIcEccRKNS_10_Time_InfoEPK2tm */

void _ZNSt4priv22__write_formatted_timeERNS_16__basic_iostringIcEERKSt5ctypeIcEccRKNS_10_Time_InfoEPK2tm
               (void)

{
  _ZNSt4priv23__write_formatted_timeTIcNS_10_Time_InfoEEEvRNS_16__basic_iostringIT_EERKSt5ctypeIS3_EccRKT0_PK2tm
            ();
  return;
}


/* address=008cc324 symbol=_ZNSt4priv11__subformatIcNS_10_Time_InfoEEEvRNS_16__basic_iostringIT_EERKSt5ctypeIS3_ERKSsRKT0_PK2tm */

void _ZNSt4priv11__subformatIcNS_10_Time_InfoEEEvRNS_16__basic_iostringIT_EERKSt5ctypeIS3_ERKSsRKT0_PK2tm
               (undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4,
               undefined4 param_5)

{
  char *pcVar1;
  char cVar2;
  undefined4 uVar3;
  char *pcVar4;
  char *pcVar5;
  
  pcVar4 = *(char **)(param_3 + 0x14);
  pcVar5 = *(char **)(param_3 + 0x10);
  do {
    if (pcVar5 == pcVar4) {
      return;
    }
    while (*pcVar4 == '%') {
      cVar2 = pcVar4[1];
      pcVar1 = pcVar4 + 1;
      uVar3 = 0;
      if (cVar2 == '#') {
        pcVar1 = pcVar4 + 2;
        cVar2 = *pcVar1;
        uVar3 = 0x23;
      }
      pcVar4 = pcVar1 + 1;
      _ZNSt4priv23__write_formatted_timeTIcNS_10_Time_InfoEEEvRNS_16__basic_iostringIT_EERKSt5ctypeIS3_EccRKT0_PK2tm
                (param_1,param_2,cVar2,uVar3,param_4,param_5);
      if (pcVar5 == pcVar4) {
        return;
      }
    }
    pcVar4 = pcVar4 + 1;
    _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE6appendEjc_clone_1(param_1);
  } while( true );
}


/* address=008cc384 symbol=_ZNSt4privL19_Init_timeinfo_baseERNS_15_Time_Info_BaseE */

void _ZNSt4privL19_Init_timeinfo_baseERNS_15_Time_Info_BaseE(int param_1)

{
  _ZNSs9_M_assignEPKcS0_(param_1,&UNK_00925d28,&UNK_00925d30);
  _ZNSs9_M_assignEPKcS0_(param_1 + 0x18,&UNK_00925d1c,&UNK_00925d24);
  _ZNSs9_M_assignEPKcS0_(param_1 + 0x30,&UNK_00925d1c,&UNK_00925d24);
  return;
}


/* address=008cc3c0 symbol=_ZNSt4privL14_Init_timeinfoERNS_11_WTime_InfoE */

void _ZNSt4privL14_Init_timeinfoERNS_11_WTime_InfoE(int param_1)

{
  size_t sVar1;
  int iVar2;
  wchar_t *pwVar3;
  int iVar4;
  
  iVar2 = 0;
  do {
    pwVar3 = (wchar_t *)(&_ZNSt4privL16default_wdaynameE + iVar2 * 0x38);
    sVar1 = wcslen(pwVar3);
    iVar4 = iVar2 * 0x48;
    iVar2 = iVar2 + 1;
    _ZNSbIwSt11char_traitsIwESaIwEE9_M_assignEPKwS4_(param_1 + iVar4 + 0x78,pwVar3,pwVar3 + sVar1);
  } while (iVar2 != 0xe);
  iVar2 = 0;
  do {
    pwVar3 = (wchar_t *)(&_ZNSt4privL18default_wmonthnameE + iVar2 * 0x60);
    sVar1 = wcslen(pwVar3);
    iVar4 = iVar2 * 0x48;
    iVar2 = iVar2 + 1;
    _ZNSbIwSt11char_traitsIwESaIwEE9_M_assignEPKwS4_(param_1 + iVar4 + 0x468,pwVar3,pwVar3 + sVar1);
  } while (iVar2 != 0x18);
  sVar1 = wcslen(L"AM");
  _ZNSbIwSt11char_traitsIwESaIwEE9_M_assignEPKwS4_
            (param_1 + 0xb28,&UNK_0092743c,&UNK_0092743c + sVar1 * 4);
  sVar1 = wcslen(L"PM");
  _ZNSbIwSt11char_traitsIwESaIwEE9_M_assignEPKwS4_
            (param_1 + 0xb70,&UNK_00927448,&UNK_00927448 + sVar1 * 4);
  _ZNSt4privL19_Init_timeinfo_baseERNS_15_Time_Info_BaseE(param_1);
  return;
}


/* address=008cc484 symbol=_ZNSt4priv9time_initIwEC1Ev */

int _ZNSt4priv9time_initIwEC1Ev(int param_1)

{
  _ZNSt4priv11_WTime_InfoC1Ev();
  *(undefined4 *)(param_1 + 3000) = 0;
  _ZNSt4privL14_Init_timeinfoERNS_11_WTime_InfoE(param_1);
  return param_1;
}


/* address=008cc4a0 symbol=_ZNSt4priv9time_initIwEC2Ev */

int _ZNSt4priv9time_initIwEC2Ev(int param_1)

{
  _ZNSt4priv11_WTime_InfoC1Ev();
  *(undefined4 *)(param_1 + 3000) = 0;
  _ZNSt4privL14_Init_timeinfoERNS_11_WTime_InfoE(param_1);
  return param_1;
}


/* address=008cc4bc symbol=_ZNSt4privL14_Init_timeinfoERNS_10_Time_InfoE */

void _ZNSt4privL14_Init_timeinfoERNS_10_Time_InfoE(void)

{
                    /* WARNING: Subroutine does not return */
  strlen("Sun");
}


/* address=008cc560 symbol=_ZNSt4priv9time_initIcEC1Ev */

int _ZNSt4priv9time_initIcEC1Ev(int param_1)

{
  _ZNSt4priv10_Time_InfoC1Ev();
  *(undefined4 *)(param_1 + 0x438) = 0;
  _ZNSt4privL14_Init_timeinfoERNS_10_Time_InfoE(param_1);
  return param_1;
}


/* address=008cc57c symbol=_ZNSt4priv9time_initIcEC2Ev */

int _ZNSt4priv9time_initIcEC2Ev(int param_1)

{
  _ZNSt4priv10_Time_InfoC1Ev();
  *(undefined4 *)(param_1 + 0x438) = 0;
  _ZNSt4privL14_Init_timeinfoERNS_10_Time_InfoE(param_1);
  return param_1;
}


/* address=008cc598 symbol=_ZNSt4privL19_Init_timeinfo_baseERNS_15_Time_Info_BaseEP12_Locale_time */

void _ZNSt4privL19_Init_timeinfo_baseERNS_15_Time_Info_BaseEP12_Locale_time
               (undefined4 param_1,undefined4 param_2)

{
  char *__s;
  
  __s = (char *)_Locale_t_fmt(param_2);
                    /* WARNING: Subroutine does not return */
  strlen(__s);
}


/* address=008cc68c symbol=_ZNSt4privL14_Init_timeinfoERNS_11_WTime_InfoEP12_Locale_time */

void _ZNSt4privL14_Init_timeinfoERNS_11_WTime_InfoEP12_Locale_time(int param_1,undefined4 param_2)

{
  wchar_t *pwVar1;
  size_t sVar2;
  int iVar3;
  int iVar4;
  undefined auStack_218 [512];
  
  iVar4 = 0;
  do {
    pwVar1 = (wchar_t *)_WLocale_abbrev_dayofweek(param_2,iVar4,auStack_218,0x80);
    sVar2 = wcslen(pwVar1);
    iVar3 = iVar4 * 0x48;
    iVar4 = iVar4 + 1;
    _ZNSbIwSt11char_traitsIwESaIwEE9_M_assignEPKwS4_(param_1 + iVar3 + 0x78,pwVar1,pwVar1 + sVar2);
  } while (iVar4 != 7);
  iVar4 = 0;
  do {
    pwVar1 = (wchar_t *)_WLocale_full_dayofweek(param_2,iVar4,auStack_218,0x80);
    sVar2 = wcslen(pwVar1);
    iVar3 = iVar4 * 0x48;
    iVar4 = iVar4 + 1;
    _ZNSbIwSt11char_traitsIwESaIwEE9_M_assignEPKwS4_(param_1 + iVar3 + 0x270,pwVar1,pwVar1 + sVar2);
  } while (iVar4 != 7);
  iVar4 = 0;
  do {
    pwVar1 = (wchar_t *)_WLocale_abbrev_monthname(param_2,iVar4,auStack_218,0x80);
    sVar2 = wcslen(pwVar1);
    iVar3 = iVar4 * 0x48;
    iVar4 = iVar4 + 1;
    _ZNSbIwSt11char_traitsIwESaIwEE9_M_assignEPKwS4_(param_1 + iVar3 + 0x468,pwVar1,pwVar1 + sVar2);
  } while (iVar4 != 0xc);
  iVar4 = 0;
  do {
    pwVar1 = (wchar_t *)_WLocale_full_monthname(param_2,iVar4,auStack_218,0x80);
    sVar2 = wcslen(pwVar1);
    iVar3 = iVar4 * 0x48;
    iVar4 = iVar4 + 1;
    _ZNSbIwSt11char_traitsIwESaIwEE9_M_assignEPKwS4_(param_1 + iVar3 + 0x7c8,pwVar1,pwVar1 + sVar2);
  } while (iVar4 != 0xc);
  pwVar1 = (wchar_t *)_WLocale_am_str(param_2,auStack_218,0x80);
  sVar2 = wcslen(pwVar1);
  _ZNSbIwSt11char_traitsIwESaIwEE9_M_assignEPKwS4_(param_1 + 0xb28,pwVar1,pwVar1 + sVar2);
  pwVar1 = (wchar_t *)_WLocale_pm_str(param_2,auStack_218,0x80);
  sVar2 = wcslen(pwVar1);
  _ZNSbIwSt11char_traitsIwESaIwEE9_M_assignEPKwS4_(param_1 + 0xb70,pwVar1,pwVar1 + sVar2);
  _ZNSt4privL19_Init_timeinfo_baseERNS_15_Time_Info_BaseEP12_Locale_time(param_1,param_2);
  return;
}


/* address=008cc7c4 symbol=_ZNSt4priv9time_initIwEC1EP12_Locale_time */

int _ZNSt4priv9time_initIwEC1EP12_Locale_time(int param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  _ZNSt4priv11_WTime_InfoC1Ev();
  _ZNSt4privL14_Init_timeinfoERNS_11_WTime_InfoEP12_Locale_time(param_1,param_2);
  uVar1 = _ZNSt4privL16__get_date_orderEP12_Locale_time(param_2);
  *(undefined4 *)(param_1 + 3000) = uVar1;
  return param_1;
}


/* address=008cc7e8 symbol=_ZNSt4priv9time_initIwEC2EP12_Locale_time */

int _ZNSt4priv9time_initIwEC2EP12_Locale_time(int param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  _ZNSt4priv11_WTime_InfoC1Ev();
  _ZNSt4privL14_Init_timeinfoERNS_11_WTime_InfoEP12_Locale_time(param_1,param_2);
  uVar1 = _ZNSt4privL16__get_date_orderEP12_Locale_time(param_2);
  *(undefined4 *)(param_1 + 3000) = uVar1;
  return param_1;
}


/* address=008cc80c symbol=_ZNSt4priv9time_initIwEC1EPKc */

void _ZNSt4priv9time_initIwEC1EPKc(int param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  int local_124;
  undefined4 local_120;
  undefined auStack_11c [256];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  local_124 = param_2;
  _ZNSt4priv11_WTime_InfoC1Ev();
  if (local_124 == 0) {
    _ZNSt6locale21_M_throw_on_null_nameEv();
  }
  iVar1 = _ZNSt4priv14__acquire_timeERPKcPcP17_Locale_name_hintPi
                    (&local_124,auStack_11c,0,&local_120);
  if (iVar1 == 0) {
    _ZNSt6locale28_M_throw_on_creation_failureEiPKcS1_(local_120,local_124,&UNK_00927434);
  }
  _ZNSt4privL14_Init_timeinfoERNS_11_WTime_InfoEP12_Locale_time(param_1,iVar1);
  uVar2 = _ZNSt4privL16__get_date_orderEP12_Locale_time(iVar1);
  *(undefined4 *)(param_1 + 3000) = uVar2;
  _ZNSt4priv14__release_timeEP12_Locale_time(iVar1);
  if (local_1c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(param_1);
}


/* address=008cc88c symbol=_ZNSt4priv9time_initIwEC2EPKc */

void _ZNSt4priv9time_initIwEC2EPKc(int param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  int local_124;
  undefined4 local_120;
  undefined auStack_11c [256];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  local_124 = param_2;
  _ZNSt4priv11_WTime_InfoC1Ev();
  if (local_124 == 0) {
    _ZNSt6locale21_M_throw_on_null_nameEv();
  }
  iVar1 = _ZNSt4priv14__acquire_timeERPKcPcP17_Locale_name_hintPi
                    (&local_124,auStack_11c,0,&local_120);
  if (iVar1 == 0) {
    _ZNSt6locale28_M_throw_on_creation_failureEiPKcS1_(local_120,local_124,&UNK_00927434);
  }
  _ZNSt4privL14_Init_timeinfoERNS_11_WTime_InfoEP12_Locale_time(param_1,iVar1);
  uVar2 = _ZNSt4privL16__get_date_orderEP12_Locale_time(iVar1);
  *(undefined4 *)(param_1 + 3000) = uVar2;
  _ZNSt4priv14__release_timeEP12_Locale_time(iVar1);
  if (local_1c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(param_1);
}


/* address=008cc90c symbol=_ZNSt4privL14_Init_timeinfoERNS_10_Time_InfoEP12_Locale_time */

void _ZNSt4privL14_Init_timeinfoERNS_10_Time_InfoEP12_Locale_time
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char *__s;
  
  __s = (char *)_Locale_abbrev_dayofweek(param_2,0,param_3,param_4,param_4);
                    /* WARNING: Subroutine does not return */
  strlen(__s);
}


/* address=008cca04 symbol=_ZNSt4priv9time_initIcEC1EP12_Locale_time */

int _ZNSt4priv9time_initIcEC1EP12_Locale_time(int param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  _ZNSt4priv10_Time_InfoC1Ev();
  _ZNSt4privL14_Init_timeinfoERNS_10_Time_InfoEP12_Locale_time(param_1,param_2);
  uVar1 = _ZNSt4privL16__get_date_orderEP12_Locale_time(param_2);
  *(undefined4 *)(param_1 + 0x438) = uVar1;
  return param_1;
}


/* address=008cca28 symbol=_ZNSt4priv9time_initIcEC2EP12_Locale_time */

int _ZNSt4priv9time_initIcEC2EP12_Locale_time(int param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  _ZNSt4priv10_Time_InfoC1Ev();
  _ZNSt4privL14_Init_timeinfoERNS_10_Time_InfoEP12_Locale_time(param_1,param_2);
  uVar1 = _ZNSt4privL16__get_date_orderEP12_Locale_time(param_2);
  *(undefined4 *)(param_1 + 0x438) = uVar1;
  return param_1;
}


/* address=008cca4c symbol=_ZNSt4priv9time_initIcEC1EPKc */

void _ZNSt4priv9time_initIcEC1EPKc(int param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  int local_124;
  undefined4 local_120;
  undefined auStack_11c [256];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  local_124 = param_2;
  _ZNSt4priv10_Time_InfoC1Ev();
  if (local_124 == 0) {
    _ZNSt6locale21_M_throw_on_null_nameEv();
  }
  iVar1 = _ZNSt4priv14__acquire_timeERPKcPcP17_Locale_name_hintPi
                    (&local_124,auStack_11c,0,&local_120);
  if (iVar1 == 0) {
    _ZNSt6locale28_M_throw_on_creation_failureEiPKcS1_(local_120,local_124,&UNK_00927434);
  }
  _ZNSt4privL14_Init_timeinfoERNS_10_Time_InfoEP12_Locale_time(param_1,iVar1);
  uVar2 = _ZNSt4privL16__get_date_orderEP12_Locale_time(iVar1);
  *(undefined4 *)(param_1 + 0x438) = uVar2;
  _ZNSt4priv14__release_timeEP12_Locale_time(iVar1);
  if (local_1c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(param_1);
}


/* address=008ccac8 symbol=_ZNSt4priv9time_initIcEC2EPKc */

void _ZNSt4priv9time_initIcEC2EPKc(int param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  int local_124;
  undefined4 local_120;
  undefined auStack_11c [256];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  local_124 = param_2;
  _ZNSt4priv10_Time_InfoC1Ev();
  if (local_124 == 0) {
    _ZNSt6locale21_M_throw_on_null_nameEv();
  }
  iVar1 = _ZNSt4priv14__acquire_timeERPKcPcP17_Locale_name_hintPi
                    (&local_124,auStack_11c,0,&local_120);
  if (iVar1 == 0) {
    _ZNSt6locale28_M_throw_on_creation_failureEiPKcS1_(local_120,local_124,&UNK_00927434);
  }
  _ZNSt4privL14_Init_timeinfoERNS_10_Time_InfoEP12_Locale_time(param_1,iVar1);
  uVar2 = _ZNSt4privL16__get_date_orderEP12_Locale_time(iVar1);
  *(undefined4 *)(param_1 + 0x438) = uVar2;
  _ZNSt4priv14__release_timeEP12_Locale_time(iVar1);
  if (local_1c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(param_1);
}


/* address=008ccb44 symbol=_ZNKSt8messagesIcE7do_openERKSsRKSt6locale */

undefined4 _ZNKSt8messagesIcE7do_openERKSsRKSt6locale(void)

{
  return 0xffffffff;
}


/* address=008ccb4c symbol=_ZNKSt8messagesIcE8do_closeEi */

void _ZNKSt8messagesIcE8do_closeEi(void)

{
  return;
}


/* address=008ccb50 symbol=_ZNKSt8messagesIwE7do_openERKSsRKSt6locale */

undefined4 _ZNKSt8messagesIwE7do_openERKSsRKSt6locale(void)

{
  return 0xffffffff;
}


/* address=008ccb58 symbol=_ZNKSt8messagesIwE8do_closeEi */

void _ZNKSt8messagesIwE8do_closeEi(void)

{
  return;
}


/* address=008ccb5c symbol=_ZNSt8messagesIwED1Ev */

void _ZNSt8messagesIwED1Ev(undefined4 *param_1)

{
  *param_1 = &PTR__ZNSt8messagesIwED1Ev_1_009a4860;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev();
}


/* address=008ccb7c symbol=_ZNSt8messagesIcED1Ev */

void _ZNSt8messagesIcED1Ev(undefined4 *param_1)

{
  *param_1 = &PTR__ZNSt8messagesIcED1Ev_1_009a4880;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev();
}


/* address=008ccb9c symbol=_ZNSt4priv9_MessagesC1EbP16_Locale_messages */

undefined4 *
_ZNSt4priv9_MessagesC1EbP16_Locale_messages(undefined4 *param_1,int param_2,undefined4 param_3)

{
  *param_1 = param_3;
  if (param_2 == 0) {
    param_1[1] = 0;
    return param_1;
  }
                    /* WARNING: Subroutine does not return */
  _Znwj(4);
}


/* address=008ccbbc symbol=_ZNSt4priv9_MessagesC2EbP16_Locale_messages */

undefined4 *
_ZNSt4priv9_MessagesC2EbP16_Locale_messages(undefined4 *param_1,int param_2,undefined4 param_3)

{
  *param_1 = param_3;
  if (param_2 == 0) {
    param_1[1] = 0;
    return param_1;
  }
                    /* WARNING: Subroutine does not return */
  _Znwj(4);
}


/* address=008ccbdc symbol=_ZNSt8messagesIwEC1Ej */

void _ZNSt8messagesIwEC1Ej(int param_1,int param_2)

{
  *(uint *)(param_1 + 4) = (uint)(param_2 != 0);
                    /* WARNING: Subroutine does not return */
  pthread_mutex_init((pthread_mutex_t *)(param_1 + 8),(pthread_mutexattr_t *)0x0);
}


/* address=008ccc08 symbol=_ZNSt8messagesIwEC2Ej */

void _ZNSt8messagesIwEC2Ej(int param_1,int param_2)

{
  *(uint *)(param_1 + 4) = (uint)(param_2 != 0);
                    /* WARNING: Subroutine does not return */
  pthread_mutex_init((pthread_mutex_t *)(param_1 + 8),(pthread_mutexattr_t *)0x0);
}


/* address=008ccc34 symbol=_ZNSt15messages_bynameIwEC1EP16_Locale_messages */

void _ZNSt15messages_bynameIwEC1EP16_Locale_messages(undefined4 *param_1)

{
  _ZNSt8messagesIwEC2Ej(param_1,0);
  *param_1 = &PTR__ZNSt15messages_bynameIwED1Ev_1_009a48a0;
                    /* WARNING: Subroutine does not return */
  _Znwj(0xc);
}


/* address=008ccc6c symbol=_ZNSt15messages_bynameIwEC2EP16_Locale_messages */

void _ZNSt15messages_bynameIwEC2EP16_Locale_messages(undefined4 *param_1)

{
  _ZNSt8messagesIwEC2Ej(param_1,0);
  *param_1 = &PTR__ZNSt15messages_bynameIwED1Ev_1_009a48a0;
                    /* WARNING: Subroutine does not return */
  _Znwj(0xc);
}


/* address=008ccca4 symbol=_ZNSt8messagesIcEC1Ej */

void _ZNSt8messagesIcEC1Ej(int param_1,int param_2)

{
  *(uint *)(param_1 + 4) = (uint)(param_2 != 0);
                    /* WARNING: Subroutine does not return */
  pthread_mutex_init((pthread_mutex_t *)(param_1 + 8),(pthread_mutexattr_t *)0x0);
}


/* address=008cccd0 symbol=_ZNSt8messagesIcEC2Ej */

void _ZNSt8messagesIcEC2Ej(int param_1,int param_2)

{
  *(uint *)(param_1 + 4) = (uint)(param_2 != 0);
                    /* WARNING: Subroutine does not return */
  pthread_mutex_init((pthread_mutex_t *)(param_1 + 8),(pthread_mutexattr_t *)0x0);
}


/* address=008cccfc symbol=_ZNSt15messages_bynameIcEC1EP16_Locale_messages */

void _ZNSt15messages_bynameIcEC1EP16_Locale_messages(undefined4 *param_1)

{
  _ZNSt8messagesIcEC2Ej(param_1,0);
  *param_1 = 0x9a48c0;
                    /* WARNING: Subroutine does not return */
  _Znwj(0xc);
}


/* address=008ccd34 symbol=_ZNSt15messages_bynameIcEC2EP16_Locale_messages */

void _ZNSt15messages_bynameIcEC2EP16_Locale_messages(undefined4 *param_1)

{
  _ZNSt8messagesIcEC2Ej(param_1,0);
  *param_1 = 0x9a48c0;
                    /* WARNING: Subroutine does not return */
  _Znwj(0xc);
}


/* address=008ccd6c symbol=_ZNSt4priv9_MessagesC1EbPKc */

void _ZNSt4priv9_MessagesC1EbPKc(int *param_1,int param_2,int param_3)

{
  int iVar1;
  int local_124;
  undefined4 local_120;
  undefined auStack_11c [256];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  *param_1 = 0;
  param_1[1] = 0;
  local_124 = param_3;
  if (param_3 == 0) {
    _ZNSt6locale21_M_throw_on_null_nameEv();
  }
  iVar1 = _ZNSt4priv18__acquire_messagesERPKcPcP17_Locale_name_hintPi
                    (&local_124,auStack_11c,0,&local_120);
  *param_1 = iVar1;
  if (iVar1 == 0) {
    _ZNSt6locale28_M_throw_on_creation_failureEiPKcS1_(local_120,local_124,"messages");
  }
  if (param_2 != 0) {
                    /* WARNING: Subroutine does not return */
    _Znwj(4);
  }
  if (local_1c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(param_1);
}


/* address=008ccde4 symbol=_ZNSt15messages_bynameIwEC1EPKcj */

void _ZNSt15messages_bynameIwEC1EPKcj(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  _ZNSt8messagesIwEC2Ej(param_1,param_3);
  *param_1 = &PTR__ZNSt15messages_bynameIwED1Ev_1_009a48a0;
                    /* WARNING: Subroutine does not return */
  _Znwj(0xc);
}


/* address=008cce1c symbol=_ZNSt15messages_bynameIwEC2EPKcj */

void _ZNSt15messages_bynameIwEC2EPKcj(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  _ZNSt8messagesIwEC2Ej(param_1,param_3);
  *param_1 = &PTR__ZNSt15messages_bynameIwED1Ev_1_009a48a0;
                    /* WARNING: Subroutine does not return */
  _Znwj(0xc);
}


/* address=008cce54 symbol=_ZNSt15messages_bynameIcEC1EPKcj */

void _ZNSt15messages_bynameIcEC1EPKcj(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  _ZNSt8messagesIcEC2Ej(param_1,param_3);
  *param_1 = 0x9a48c0;
                    /* WARNING: Subroutine does not return */
  _Znwj(0xc);
}


/* address=008cce8c symbol=_ZNSt15messages_bynameIcEC2EPKcj */

void _ZNSt15messages_bynameIcEC2EPKcj(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  _ZNSt8messagesIcEC2Ej(param_1,param_3);
  *param_1 = 0x9a48c0;
                    /* WARNING: Subroutine does not return */
  _Znwj(0xc);
}


/* address=008ccec4 symbol=_ZNSt4priv9_MessagesC2EbPKc */

void _ZNSt4priv9_MessagesC2EbPKc(int *param_1,int param_2,int param_3)

{
  int iVar1;
  int local_124;
  undefined4 local_120;
  undefined auStack_11c [256];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  *param_1 = 0;
  param_1[1] = 0;
  local_124 = param_3;
  if (param_3 == 0) {
    _ZNSt6locale21_M_throw_on_null_nameEv();
  }
  iVar1 = _ZNSt4priv18__acquire_messagesERPKcPcP17_Locale_name_hintPi
                    (&local_124,auStack_11c,0,&local_120);
  *param_1 = iVar1;
  if (iVar1 == 0) {
    _ZNSt6locale28_M_throw_on_creation_failureEiPKcS1_(local_120,local_124,"messages");
  }
  if (param_2 != 0) {
                    /* WARNING: Subroutine does not return */
    _Znwj(4);
  }
  if (local_1c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(param_1);
}


/* address=008ccf3c symbol=_ZNKSt4priv19_Catalog_locale_map6lookupEi */

void _ZNKSt4priv19_Catalog_locale_map6lookupEi(undefined4 param_1,int *param_2,int param_3)

{
  undefined4 uVar1;
  int iVar2;
  int *piVar3;
  int iVar4;
  undefined8 uVar5;
  
  iVar2 = *param_2;
  uVar1 = param_1;
  if (iVar2 != 0) {
    iVar4 = *(int *)(iVar2 + 8);
    uVar5 = __aeabi_uidivmod(param_3,(*(int *)(iVar2 + 0xc) - iVar4 >> 2) + -1);
    iVar2 = (int)((ulonglong)uVar5 >> 0x20);
    uVar1 = (undefined4)uVar5;
    param_2 = *(int **)((iVar2 + 1) * 4 + iVar4);
    for (piVar3 = *(int **)(iVar2 * 4 + iVar4); param_2 != piVar3; piVar3 = (int *)*piVar3) {
      if (piVar3[1] == param_3) {
        param_2 = piVar3 + 2;
        if (piVar3 != (int *)0x0) goto LAB_008ccf82;
        break;
      }
    }
  }
  param_2 = (int *)_ZNSt6locale7classicEv(uVar1,param_2);
LAB_008ccf82:
                    /* WARNING: Subroutine does not return */
  _ZNSt6localeC1ERKS_(param_1,param_2);
}


/* address=008ccf8c symbol=_ZNSaINSt4priv11_Slist_nodeISt4pairIKiSt6localeEEEE8allocateEjPKv.clone.0 */

void _ZNSaINSt4priv11_Slist_nodeISt4pairIKiSt6localeEEEE8allocateEjPKv_clone_0(void)

{
  undefined4 local_c [3];
  
  local_c[0] = 0xc;
  _ZNSt12__node_alloc11_M_allocateERj(local_c);
  return;
}


/* address=008ccfa0 symbol=_ZNSt8messagesIwED0Ev */

void _ZNSt8messagesIwED0Ev(undefined4 *param_1)

{
  *param_1 = &PTR__ZNSt8messagesIwED1Ev_1_009a4860;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev();
}


/* address=008ccfc8 symbol=_ZNSt8messagesIcED0Ev */

void _ZNSt8messagesIcED0Ev(undefined4 *param_1)

{
  *param_1 = &PTR__ZNSt8messagesIcED1Ev_1_009a4880;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev();
}


/* address=008ccff0 symbol=_ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EE18_M_insert_noresizeEjRKS3_ */

void _ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EE18_M_insert_noresizeEjRKS3_
               (undefined4 param_1,int param_2,int param_3,undefined4 *param_4)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  int *piVar4;
  
  piVar4 = (int *)(*(int *)(param_2 + 8) + param_3 * 4);
  puVar2 = (undefined4 *)*piVar4;
  if (puVar2 != *(undefined4 **)(param_2 + 4)) {
    do {
      piVar4 = piVar4 + -1;
    } while (puVar2 == (undefined4 *)*piVar4);
    for (puVar3 = *(undefined4 **)(undefined4 *)*piVar4; puVar2 != puVar3;
        puVar3 = (undefined4 *)*puVar3) {
    }
  }
  iVar1 = _ZNSaINSt4priv11_Slist_nodeISt4pairIKiSt6localeEEEE8allocateEjPKv_clone_0(param_2 + 4);
  *(undefined4 *)(iVar1 + 4) = *param_4;
                    /* WARNING: Subroutine does not return */
  _ZNSt6localeC1ERKS_(iVar1 + 8,param_4 + 1);
}


/* address=008cd09c symbol=_ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EE22insert_unique_noresizeERKS3_ */

undefined4 *
_ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EE22insert_unique_noresizeERKS3_
          (undefined4 *param_1,int param_2,int *param_3)

{
  int iVar1;
  int extraout_r1;
  undefined4 *puVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 local_24 [2];
  
  iVar1 = *(int *)(param_2 + 8);
  iVar3 = *param_3;
  __aeabi_uidivmod(iVar3,(*(int *)(param_2 + 0xc) - iVar1 >> 2) + -1);
  puVar4 = *(undefined4 **)(extraout_r1 * 4 + iVar1);
  puVar2 = *(undefined4 **)((extraout_r1 + 1) * 4 + iVar1);
  if (puVar4 == puVar2) {
    _ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EE18_M_insert_noresizeEjRKS3_
              (local_24,param_2,extraout_r1,param_3);
    *param_1 = local_24[0];
    *(undefined *)(param_1 + 1) = 1;
  }
  else {
    while( true ) {
      if (puVar2 == puVar4) {
        iVar1 = _ZNSaINSt4priv11_Slist_nodeISt4pairIKiSt6localeEEEE8allocateEjPKv_clone_0
                          (param_2 + 4);
        *(int *)(iVar1 + 4) = *param_3;
                    /* WARNING: Subroutine does not return */
        _ZNSt6localeC1ERKS_(iVar1 + 8,param_3 + 1);
      }
      if (puVar4[1] == iVar3) break;
      puVar4 = (undefined4 *)*puVar4;
    }
    *param_1 = puVar4;
    *(undefined *)(param_1 + 1) = 0;
  }
  return param_1;
}


/* address=008cd134 symbol=_ZNSt4priv11_Slist_baseISt4pairIKiSt6localeESaIS4_EE14_M_erase_afterEPNS_16_Slist_node_baseES8_.clone.3 */

undefined4
_ZNSt4priv11_Slist_baseISt4pairIKiSt6localeESaIS4_EE14_M_erase_afterEPNS_16_Slist_node_baseES8__clone_3
          (undefined4 param_1,int *param_2)

{
  if (*param_2 != 0) {
                    /* WARNING: Subroutine does not return */
    _ZNSt6localeD1Ev(*param_2 + 8);
  }
  *param_2 = 0;
  return 0;
}


/* address=008cd160 symbol=_ZNKSt8messagesIwE6do_getEiiiRKSbIwSt11char_traitsIwESaIwEE */

int _ZNKSt8messagesIwE6do_getEiiiRKSbIwSt11char_traitsIwESaIwEE(int param_1)

{
  int param_6;
  
  *(int *)(param_1 + 0x40) = param_1;
  *(int *)(param_1 + 0x44) = param_1;
  _ZNSbIwSt11char_traitsIwESaIwEE19_M_range_initializeEPKwS4_
            (param_1,*(undefined4 *)(param_6 + 0x44),*(undefined4 *)(param_6 + 0x40));
  return param_1;
}


/* address=008cd178 symbol=_ZNKSt4priv9_Messages6do_getEiiiRKSbIwSt11char_traitsIwESaIwEE */

void _ZNKSt4priv9_Messages6do_getEiiiRKSbIwSt11char_traitsIwESaIwEE(undefined4 param_1,int param_2)

{
  undefined auStack_2c [8];
  
  _ZNKSt4priv19_Catalog_locale_map6lookupEi(auStack_2c,*(undefined4 *)(param_2 + 4));
                    /* WARNING: Subroutine does not return */
  _ZNKSt6locale12_M_use_facetERKNS_2idE(auStack_2c,&_ZNSt5ctypeIwE2idE);
}


/* address=008cd280 symbol=_ZNKSt15messages_bynameIwE6do_getEiiiRKSbIwSt11char_traitsIwESaIwEE */

undefined4
_ZNKSt15messages_bynameIwE6do_getEiiiRKSbIwSt11char_traitsIwESaIwEE
          (undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
          undefined4 param_6)

{
  _ZNKSt4priv9_Messages6do_getEiiiRKSbIwSt11char_traitsIwESaIwEE
            (param_1,*(undefined4 *)(param_2 + 0xc),param_3,param_4,param_5,param_6);
  return param_1;
}


/* address=008cd29c symbol=_ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EE5clearEv */

void _ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EE5clearEv
               (int param_1)

{
  undefined4 local_14 [2];
  
  _ZNSt4priv11_Slist_baseISt4pairIKiSt6localeESaIS4_EE14_M_erase_afterEPNS_16_Slist_node_baseES8__clone_3
            (param_1 + 4);
  local_14[0] = 0;
  _ZNSt6vectorIPNSt4priv16_Slist_node_baseESaIS2_EE14_M_fill_assignEjRKS2_
            (param_1 + 8,*(int *)(param_1 + 0xc) - *(int *)(param_1 + 8) >> 2,local_14);
  *(undefined4 *)(param_1 + 0x14) = 0;
  return;
}


/* address=008cd2c8 symbol=_ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EED1Ev */

int _ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EED1Ev
              (int param_1)

{
  _ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EE5clearEv
            ();
  if (*(int *)(param_1 + 8) != 0) {
    if (0x80 < (uint)((*(int *)(param_1 + 0x10) - *(int *)(param_1 + 8) >> 2) * 4)) {
                    /* WARNING: Subroutine does not return */
      _ZdlPv();
    }
    _ZNSt12__node_alloc13_M_deallocateEPvj();
  }
  _ZNSt4priv11_Slist_baseISt4pairIKiSt6localeESaIS4_EE14_M_erase_afterEPNS_16_Slist_node_baseES8__clone_3
            (param_1 + 4);
  return param_1;
}


/* address=008cd2fc symbol=_ZNSt4priv9_MessagesD2Ev */

undefined4 * _ZNSt4priv9_MessagesD2Ev(undefined4 *param_1)

{
  int *piVar1;
  int iVar2;
  
  _ZNSt4priv18__release_messagesEP16_Locale_messages(*param_1);
  piVar1 = (int *)param_1[1];
  if (piVar1 == (int *)0x0) {
    return param_1;
  }
  iVar2 = *piVar1;
  if (iVar2 != 0) {
    _ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EED1Ev
              (iVar2);
                    /* WARNING: Subroutine does not return */
    _ZdlPv(iVar2);
  }
                    /* WARNING: Subroutine does not return */
  _ZdlPv(piVar1);
}


/* address=008cd328 symbol=_ZNSt4priv9_MessagesD1Ev */

undefined4 * _ZNSt4priv9_MessagesD1Ev(undefined4 *param_1)

{
  int *piVar1;
  int iVar2;
  
  _ZNSt4priv18__release_messagesEP16_Locale_messages(*param_1);
  piVar1 = (int *)param_1[1];
  if (piVar1 == (int *)0x0) {
    return param_1;
  }
  iVar2 = *piVar1;
  if (iVar2 != 0) {
    _ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EED1Ev
              (iVar2);
                    /* WARNING: Subroutine does not return */
    _ZdlPv(iVar2);
  }
                    /* WARNING: Subroutine does not return */
  _ZdlPv(piVar1);
}


/* address=008cd354 symbol=_ZNSt15messages_bynameIwED1Ev */

void _ZNSt15messages_bynameIwED1Ev(undefined4 *param_1)

{
  int iVar1;
  
  iVar1 = param_1[3];
  *param_1 = &PTR__ZNSt15messages_bynameIwED1Ev_1_009a48a0;
  if (iVar1 != 0) {
    _ZNSt4priv9_MessagesD1Ev(iVar1);
                    /* WARNING: Subroutine does not return */
    _ZdlPv(iVar1);
  }
  *param_1 = &PTR__ZNSt8messagesIwED1Ev_1_009a4860;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev(param_1);
}


/* address=008cd394 symbol=_ZNSt15messages_bynameIwED0Ev */

void _ZNSt15messages_bynameIwED0Ev(undefined4 param_1)

{
  _ZNSt15messages_bynameIwED1Ev();
                    /* WARNING: Subroutine does not return */
  _ZdlPv(param_1);
}


/* address=008cd3a8 symbol=_ZNSt15messages_bynameIwED2Ev */

void _ZNSt15messages_bynameIwED2Ev(undefined4 *param_1)

{
  int iVar1;
  
  iVar1 = param_1[3];
  *param_1 = &PTR__ZNSt15messages_bynameIwED1Ev_1_009a48a0;
  if (iVar1 != 0) {
    _ZNSt4priv9_MessagesD1Ev(iVar1);
                    /* WARNING: Subroutine does not return */
    _ZdlPv(iVar1);
  }
  *param_1 = &PTR__ZNSt8messagesIwED1Ev_1_009a4860;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev(param_1);
}


/* address=008cd3e8 symbol=_ZNSt15messages_bynameIcED1Ev */

void _ZNSt15messages_bynameIcED1Ev(undefined4 *param_1)

{
  int iVar1;
  
  iVar1 = param_1[3];
  *param_1 = 0x9a48c0;
  if (iVar1 != 0) {
    _ZNSt4priv9_MessagesD1Ev(iVar1);
                    /* WARNING: Subroutine does not return */
    _ZdlPv(iVar1);
  }
  *param_1 = &PTR__ZNSt8messagesIcED1Ev_1_009a4880;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev(param_1);
}


/* address=008cd428 symbol=_ZNSt15messages_bynameIcED0Ev */

void _ZNSt15messages_bynameIcED0Ev(undefined4 param_1)

{
  _ZNSt15messages_bynameIcED1Ev();
                    /* WARNING: Subroutine does not return */
  _ZdlPv(param_1);
}


/* address=008cd43c symbol=_ZNSt15messages_bynameIcED2Ev */

void _ZNSt15messages_bynameIcED2Ev(undefined4 *param_1)

{
  int iVar1;
  
  iVar1 = param_1[3];
  *param_1 = 0x9a48c0;
  if (iVar1 != 0) {
    _ZNSt4priv9_MessagesD1Ev(iVar1);
                    /* WARNING: Subroutine does not return */
    _ZdlPv(iVar1);
  }
  *param_1 = &PTR__ZNSt8messagesIcED1Ev_1_009a4880;
                    /* WARNING: Subroutine does not return */
  _ZNSt6locale5facetD2Ev(param_1);
}


/* address=008cd47c symbol=_ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EE9_M_rehashEj */

void _ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EE9_M_rehashEj
               (int param_1,int param_2)

{
  int ****ppppiVar1;
  int extraout_r1;
  int ****ppppiVar2;
  undefined4 *puVar3;
  int iVar4;
  int ***pppiVar5;
  int ****ppppiVar6;
  undefined4 uVar7;
  int iVar8;
  int ***pppiVar9;
  int ****ppppiVar10;
  int ****ppppiVar11;
  int local_40;
  undefined4 local_3c;
  int local_38;
  undefined4 local_34;
  int ****local_30;
  undefined auStack_2c [8];
  
  local_30 = (int ****)0x0;
  local_34 = 0;
  _ZNSt6vectorIPNSt4priv16_Slist_node_baseESaIS2_EEC1EjRKS2_RKS3_
            (&local_40,param_2 + 1,&local_34,auStack_2c);
  while (ppppiVar11 = *(int *****)(param_1 + 4), ppppiVar11 != (int ****)0x0) {
    while( true ) {
      pppiVar9 = ppppiVar11[1];
      __aeabi_uidivmod(pppiVar9,param_2);
      ppppiVar2 = ppppiVar11;
      for (pppiVar5 = *ppppiVar11; (pppiVar5 != (int ***)0x0 && (pppiVar9 == (int ***)pppiVar5[1]));
          pppiVar5 = (int ***)*pppiVar5) {
        ppppiVar2 = (int ****)*ppppiVar2;
      }
      puVar3 = (undefined4 *)(extraout_r1 * 4 + local_40);
      ppppiVar10 = (int ****)*puVar3;
      if (ppppiVar10 == local_30) {
        iVar4 = 0;
        ppppiVar6 = (int ****)&local_30;
      }
      else {
        do {
          puVar3 = puVar3 + -1;
          ppppiVar6 = (int ****)*puVar3;
        } while (ppppiVar10 == ppppiVar6);
        for (ppppiVar1 = (int ****)*ppppiVar6; ppppiVar10 != ppppiVar1;
            ppppiVar1 = (int ****)*ppppiVar1) {
          ppppiVar6 = (int ****)*ppppiVar6;
        }
        iVar4 = (((int)puVar3 - local_40 >> 2) + 1) * 4;
      }
      if ((((int ****)(param_1 + 4) != ppppiVar2) && (ppppiVar6 != ppppiVar2)) &&
         ((int ****)(param_1 + 4) != ppppiVar6)) {
        pppiVar5 = *ppppiVar6;
        *(int ****)(param_1 + 4) = *ppppiVar2;
        *ppppiVar6 = (int ***)ppppiVar11;
        *ppppiVar2 = pppiVar5;
      }
      puVar3 = (undefined4 *)(local_40 + iVar4);
      iVar4 = (extraout_r1 + 1) * 4 - iVar4 >> 2;
      if (iVar4 < 1) break;
      do {
        iVar4 = iVar4 + -1;
        *puVar3 = ppppiVar11;
        puVar3 = puVar3 + 1;
      } while (iVar4 != 0);
      ppppiVar11 = *(int *****)(param_1 + 4);
      if (ppppiVar11 == (int ****)0x0) goto LAB_008cd536;
    }
  }
LAB_008cd536:
  iVar4 = *(int *)(param_1 + 8);
  *(int *****)(param_1 + 4) = local_30;
  *(int *)(param_1 + 8) = local_40;
  uVar7 = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)(param_1 + 0xc) = local_3c;
  iVar8 = *(int *)(param_1 + 0x10);
  *(int *)(param_1 + 0x10) = local_38;
  local_40 = iVar4;
  local_3c = uVar7;
  local_38 = iVar8;
  local_30 = ppppiVar11;
  if (iVar4 != 0) {
    if (0x80 < (uint)((iVar8 - iVar4 >> 2) * 4)) {
                    /* WARNING: Subroutine does not return */
      _ZdlPv();
    }
    _ZNSt12__node_alloc13_M_deallocateEPvj();
  }
  _ZNSt4priv11_Slist_baseISt4pairIKiSt6localeESaIS4_EE14_M_erase_afterEPNS_16_Slist_node_baseES8__clone_3
            (&local_30,&local_30);
  return;
}


/* address=008cd590 symbol=_ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EE9_M_reduceEv */

void _ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EE9_M_reduceEv
               (int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  
  iVar3 = *(int *)(param_1 + 8);
  iVar4 = *(int *)(param_1 + 0xc);
  uVar1 = __aeabi_ui2f(*(undefined4 *)(param_1 + 0x14));
  uVar2 = __aeabi_ui2f((iVar4 - iVar3 >> 2) + -1);
                    /* WARNING: Subroutine does not return */
  __aeabi_fdiv(uVar1,uVar2);
}


/* address=008cd678 symbol=_ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EE5eraseERS1_ */

undefined4
_ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EE5eraseERS1_
          (int param_1,int **param_2)

{
  int **ppiVar1;
  int iVar2;
  int extraout_r1;
  undefined4 *puVar3;
  int **ppiVar4;
  int **ppiVar5;
  int **ppiVar6;
  int *piVar7;
  int **ppiVar8;
  int **ppiVar9;
  
  iVar2 = *(int *)(param_1 + 8);
  piVar7 = *param_2;
  __aeabi_uidivmod(piVar7,(*(int *)(param_1 + 0xc) - iVar2 >> 2) + -1);
  puVar3 = (undefined4 *)(extraout_r1 * 4 + iVar2);
  ppiVar5 = (int **)*puVar3;
  ppiVar6 = *(int ***)(iVar2 + (extraout_r1 + 1) * 4);
  if (ppiVar5 != ppiVar6) {
    if (ppiVar5[1] == piVar7) {
      if (ppiVar5 == *(int ***)(param_1 + 4)) {
        ppiVar6 = (int **)0x4;
        ppiVar9 = (int **)(param_1 + 4);
        ppiVar4 = ppiVar5;
      }
      else {
        ppiVar4 = (int **)(puVar3 + -1);
        ppiVar6 = (int **)*ppiVar4;
        while (ppiVar5 == ppiVar6) {
          ppiVar4 = ppiVar4 + -1;
          ppiVar6 = (int **)*ppiVar4;
        }
        ppiVar8 = (int **)*ppiVar6;
        ppiVar1 = ppiVar8;
        ppiVar9 = ppiVar6;
        for (; ppiVar4 = ppiVar1, ppiVar5 != ppiVar8; ppiVar8 = (int **)*ppiVar8) {
          ppiVar1 = (int **)*ppiVar4;
          ppiVar9 = ppiVar4;
        }
      }
      *ppiVar9 = *ppiVar4;
                    /* WARNING: Subroutine does not return */
      _ZNSt6localeD1Ev(ppiVar4 + 2,ppiVar6,0);
    }
    for (ppiVar4 = (int **)*ppiVar5; ppiVar6 != ppiVar4; ppiVar4 = (int **)*ppiVar4) {
      if (ppiVar4[1] == piVar7) {
        piVar7 = *ppiVar5;
        *ppiVar5 = (int *)*piVar7;
                    /* WARNING: Subroutine does not return */
        _ZNSt6localeD1Ev(piVar7 + 2,0,0);
      }
      ppiVar5 = (int **)*ppiVar5;
    }
    *(undefined4 *)(param_1 + 0x14) = *(undefined4 *)(param_1 + 0x14);
    _ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EE9_M_reduceEv
              ();
  }
  return 0;
}


/* address=008cd7b8 symbol=_ZNSt4priv19_Catalog_locale_map5eraseEi */

void _ZNSt4priv19_Catalog_locale_map5eraseEi(int *param_1,undefined4 param_2)

{
  undefined4 local_c [3];
  
  if (*param_1 != 0) {
    local_c[0] = param_2;
    _ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EE5eraseERS1_
              (*param_1,local_c);
  }
  return;
}


/* address=008cd7d0 symbol=_ZNKSt4priv9_Messages8do_closeEi */

void _ZNKSt4priv9_Messages8do_closeEi(int *param_1,undefined4 param_2)

{
  if (*param_1 != 0) {
    _Locale_catclose();
  }
  if (param_1[1] != 0) {
    _ZNSt4priv19_Catalog_locale_map5eraseEi(param_1[1],param_2);
  }
  return;
}


/* address=008cd7f0 symbol=_ZNKSt15messages_bynameIwE8do_closeEi */

void _ZNKSt15messages_bynameIwE8do_closeEi(int param_1)

{
  _ZNKSt4priv9_Messages8do_closeEi(*(undefined4 *)(param_1 + 0xc));
  return;
}


/* address=008cd7fc symbol=_ZNKSt15messages_bynameIcE8do_closeEi */

void _ZNKSt15messages_bynameIcE8do_closeEi(int param_1)

{
  _ZNKSt4priv9_Messages8do_closeEi(*(undefined4 *)(param_1 + 0xc));
  return;
}


/* address=008cd808 symbol=_ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EE10_M_enlargeEj */

void _ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EE10_M_enlargeEj
               (int param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  uVar1 = __aeabi_ui2f(param_2);
                    /* WARNING: Subroutine does not return */
  __aeabi_fdiv(uVar1,*(undefined4 *)(param_1 + 0x18));
}


/* address=008cd880 symbol=_ZNSt4priv19_Catalog_locale_map6insertEiRKSt6locale */

void _ZNSt4priv19_Catalog_locale_map6insertEiRKSt6locale
               (int *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined auStack_28 [8];
  
  if (*param_1 != 0) {
                    /* WARNING: Subroutine does not return */
    _ZNSt6localeC1ERKS_(auStack_28,param_3);
  }
                    /* WARNING: Subroutine does not return */
  _Znwj(0x1c);
}


/* address=008cd91c symbol=_ZNKSt4priv9_Messages7do_openERKSsRKSt6locale */

int _ZNKSt4priv9_Messages7do_openERKSsRKSt6locale(int *param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  
  if (*param_1 == 0) {
    iVar1 = -1;
  }
  else {
    iVar1 = _Locale_catopen(*param_1,*(undefined4 *)(param_2 + 0x14));
    if ((iVar1 != -1) && (param_1[1] != 0)) {
      _ZNSt4priv19_Catalog_locale_map6insertEiRKSt6locale(param_1[1],iVar1,param_3);
    }
  }
  return iVar1;
}


/* address=008cd94c symbol=_ZNKSt15messages_bynameIwE7do_openERKSsRKSt6locale */

void _ZNKSt15messages_bynameIwE7do_openERKSsRKSt6locale(int param_1)

{
  _ZNKSt4priv9_Messages7do_openERKSsRKSt6locale(*(undefined4 *)(param_1 + 0xc));
  return;
}


/* address=008cd958 symbol=_ZNKSt15messages_bynameIcE7do_openERKSsRKSt6locale */

void _ZNKSt15messages_bynameIcE7do_openERKSsRKSt6locale(int param_1)

{
  _ZNKSt4priv9_Messages7do_openERKSsRKSt6locale(*(undefined4 *)(param_1 + 0xc));
  return;
}


/* address=008cd964 symbol=_ZNKSt8messagesIcE6do_getEiiiRKSs */

int _ZNKSt8messagesIcE6do_getEiiiRKSs(int param_1)

{
  int param_6;
  
  *(int *)(param_1 + 0x10) = param_1;
  *(int *)(param_1 + 0x14) = param_1;
  _ZNSs19_M_range_initializeEPKcS0_
            (param_1,*(undefined4 *)(param_6 + 0x14),*(undefined4 *)(param_6 + 0x10));
  return param_1;
}


/* address=008cd97c symbol=_ZNKSt4priv9_Messages6do_getEiiiRKSs */

int _ZNKSt4priv9_Messages6do_getEiiiRKSs
              (int param_1,int *param_2,int param_3,undefined4 param_4,undefined4 param_5,
              int param_6)

{
  char *__s;
  
  if ((-1 < param_3) && (*param_2 != 0)) {
    __s = (char *)_Locale_catgets(*param_2,param_3,param_4,param_5,*(undefined4 *)(param_6 + 0x14));
    *(int *)(param_1 + 0x10) = param_1;
    *(int *)(param_1 + 0x14) = param_1;
                    /* WARNING: Subroutine does not return */
    strlen(__s);
  }
  *(int *)(param_1 + 0x10) = param_1;
  *(int *)(param_1 + 0x14) = param_1;
  _ZNSs19_M_range_initializeEPKcS0_
            (param_1,*(undefined4 *)(param_6 + 0x14),*(undefined4 *)(param_6 + 0x10));
  return param_1;
}


/* address=008cd9c8 symbol=_ZNKSt15messages_bynameIcE6do_getEiiiRKSs */

undefined4
_ZNKSt15messages_bynameIcE6do_getEiiiRKSs
          (undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
          undefined4 param_6)

{
  _ZNKSt4priv9_Messages6do_getEiiiRKSs
            (param_1,*(undefined4 *)(param_2 + 0xc),param_3,param_4,param_5,param_6);
  return param_1;
}


/* address=008cd9e4 symbol=_ZNSt13_Filebuf_baseC2Ev */

void _ZNSt13_Filebuf_baseC2Ev(undefined4 *param_1)

{
  *param_1 = 0xffffffff;
  param_1[1] = 0;
  *(undefined *)(param_1 + 2) = 0;
  *(undefined *)((int)param_1 + 9) = 0;
  return;
}


/* address=008cd9f4 symbol=_ZNSt13_Filebuf_baseC1Ev */

void _ZNSt13_Filebuf_baseC1Ev(undefined4 *param_1)

{
  *param_1 = 0xffffffff;
  param_1[1] = 0;
  *(undefined *)(param_1 + 2) = 0;
  *(undefined *)((int)param_1 + 9) = 0;
  return;
}


/* address=008cda04 symbol=_ZNSt13_Filebuf_base8_M_unmapEPvl */

void _ZNSt13_Filebuf_base8_M_unmapEPvl(undefined4 param_1,void *param_2,size_t param_3)

{
  munmap(param_2,param_3);
  return;
}


/* address=008cda10 symbol=_ZNSt13_Filebuf_base7_M_mmapEll */

void * _ZNSt13_Filebuf_base7_M_mmapEll(int *param_1,int param_2,size_t param_3)

{
  void *pvVar1;
  __off_t _Var2;
  
  pvVar1 = mmap((void *)0x0,param_3,1,2,*param_1,param_2);
  if (pvVar1 != (void *)0xffffffff) {
    _Var2 = lseek(*param_1,param_3 + param_2,0);
    if (-1 < _Var2) {
      return pvVar1;
    }
    _ZNSt13_Filebuf_base8_M_unmapEPvl(param_1,pvVar1,param_3);
  }
  return (void *)0x0;
}


/* address=008cda54 symbol=_ZNSt13_Filebuf_base8_M_writeEPci */

undefined4 _ZNSt13_Filebuf_base8_M_writeEPci(int *param_1,void *param_2,size_t param_3)

{
  size_t sVar1;
  
  sVar1 = write(*param_1,param_2,param_3);
  if (param_3 != sVar1) {
    do {
      if (((int)param_3 <= (int)sVar1) || ((int)sVar1 < 1)) {
        return 0;
      }
      param_3 = param_3 - sVar1;
      param_2 = (void *)((int)param_2 + sVar1);
      sVar1 = write(*param_1,param_2,param_3);
    } while (param_3 != sVar1);
  }
  return 1;
}


/* address=008cda8c symbol=_ZNSt13_Filebuf_base7_M_readEPci */

void _ZNSt13_Filebuf_base7_M_readEPci(int *param_1,void *param_2,size_t param_3)

{
  read(*param_1,param_2,param_3);
  return;
}


/* address=008cda98 symbol=_ZNSt13basic_filebufIcSt11char_traitsIcEE16_M_underflow_auxEv */

uint _ZNSt13basic_filebufIcSt11char_traitsIcEE16_M_underflow_auxEv(int param_1)

{
  void *__dest;
  int iVar1;
  void *__src;
  int iVar2;
  byte *pbVar3;
  size_t __n;
  int iVar4;
  byte *local_30;
  int local_2c [2];
  
  *(undefined4 *)(param_1 + 0x4c) = *(undefined4 *)(param_1 + 0x50);
  __src = *(void **)(param_1 + 0x44);
  if (__src < *(void **)(param_1 + 0x48)) {
    __dest = *(void **)(param_1 + 0x3c);
    __n = (int)*(void **)(param_1 + 0x48) - (int)__src;
    if (__n != 0) {
                    /* WARNING: Subroutine does not return */
      memmove(__dest,__src,__n);
    }
  }
  else {
    __dest = *(void **)(param_1 + 0x3c);
  }
  *(void **)(param_1 + 0x48) = __dest;
  do {
    iVar1 = _ZNSt13_Filebuf_base7_M_readEPci
                      (param_1 + 0x20,__dest,*(int *)(param_1 + 0x40) - (int)__dest);
    if (iVar1 < 0) {
LAB_008cdbb6:
      *(undefined4 *)(param_1 + 4) = 0;
      *(undefined4 *)(param_1 + 8) = 0;
      *(undefined4 *)(param_1 + 0xc) = 0;
      return 0xffffffff;
    }
    iVar2 = *(int *)(param_1 + 0x48) + iVar1;
    *(int *)(param_1 + 0x48) = iVar2;
    if (iVar2 == *(int *)(param_1 + 0x3c)) goto LAB_008cdbb6;
    iVar2 = (**(code **)(**(int **)(param_1 + 0x68) + 0xc))
                      (*(int **)(param_1 + 0x68),param_1 + 0x50,*(int *)(param_1 + 0x3c),iVar2,
                       local_2c,*(undefined4 *)(param_1 + 0x34),*(undefined4 *)(param_1 + 0x38),
                       &local_30);
    if (iVar2 == 3) {
      pbVar3 = *(byte **)(param_1 + 0x3c);
      *(byte **)(param_1 + 4) = pbVar3;
      *(undefined4 *)(param_1 + 0x44) = *(undefined4 *)(param_1 + 0x48);
      *(byte **)(param_1 + 8) = pbVar3;
      *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(param_1 + 0x48);
      return (uint)*pbVar3;
    }
    if (iVar2 == 2) {
LAB_008cdb92:
      if (*(int *)(param_1 + 0x54) != 0) {
        _ZNSt13_Filebuf_base8_M_unmapEPvl
                  (param_1 + 0x20,*(int *)(param_1 + 0x54),*(undefined4 *)(param_1 + 0x58));
        *(undefined4 *)(param_1 + 0x54) = 0;
        *(undefined4 *)(param_1 + 0x58) = 0;
      }
      *(undefined *)(param_1 + 0x2f) = 0;
      *(undefined *)(param_1 + 0x30) = 0;
      *(undefined *)(param_1 + 0x31) = 1;
      goto LAB_008cdbb6;
    }
    pbVar3 = *(byte **)(param_1 + 0x34);
    if (pbVar3 == local_30) {
      iVar2 = *(int *)(param_1 + 0x3c);
    }
    else {
      iVar2 = *(int *)(param_1 + 0x3c);
      if (iVar2 == local_2c[0]) goto LAB_008cdb92;
    }
    iVar4 = local_2c[0] - iVar2;
    if ((*(char *)(param_1 + 0x2c) != '\0') &&
       (iVar4 = *(int *)(param_1 + 0x6c) * ((int)local_30 - (int)pbVar3),
       iVar4 - (local_2c[0] - iVar2) != 0)) goto LAB_008cdb92;
    if (pbVar3 != local_30) {
      *(int *)(param_1 + 0x44) = iVar2 + iVar4;
      *(byte **)(param_1 + 4) = pbVar3;
      *(byte **)(param_1 + 8) = pbVar3;
      *(byte **)(param_1 + 0xc) = local_30;
      return (uint)*pbVar3;
    }
    if (*(int *)(param_1 + 0x70) <= iVar4) goto LAB_008cdb92;
    if (iVar1 == 0) {
      *(undefined4 *)(param_1 + 4) = 0;
      *(undefined4 *)(param_1 + 8) = 0;
      *(undefined4 *)(param_1 + 0xc) = 0;
      return 0xffffffff;
    }
    __dest = *(void **)(param_1 + 0x48);
  } while( true );
}


/* address=008cdbd8 symbol=_ZNSt13_Filebuf_base8_M_closeEv */

undefined4 _ZNSt13_Filebuf_base8_M_closeEv(int *param_1)

{
  undefined4 uVar1;
  int iVar2;
  
  if (*(char *)(param_1 + 2) == '\0') {
    return 0;
  }
  if (*(char *)((int)param_1 + 9) != '\0') {
    iVar2 = close(*param_1);
    uVar1 = 0;
    if (iVar2 != 0) goto LAB_008cdbec;
  }
  uVar1 = 1;
LAB_008cdbec:
  *(undefined *)((int)param_1 + 9) = 0;
  *(undefined *)(param_1 + 2) = 0;
  param_1[1] = 0;
  return uVar1;
}


/* address=008cdc08 symbol=_ZNSt13_Filebuf_base7_M_openEii */

undefined4 _ZNSt13_Filebuf_base7_M_openEii(int *param_1,int param_2)

{
  undefined4 uVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  stat sStack_78;
  
  if (((param_2 < 0) || (*(char *)(param_1 + 2) != '\0')) ||
     (uVar2 = fcntl(param_2,3), uVar2 == 0xffffffff)) {
    uVar1 = 0;
  }
  else {
    uVar4 = 0;
    if ((uVar2 & 3) != 3) {
      uVar4 = *(uint *)(CSWTCH_189 + (uVar2 & 3) * 4);
    }
    if ((int)(uVar2 << 0x15) < 0) {
      uVar4 = uVar4 | 1;
    }
    param_1[1] = uVar4;
    *(undefined *)(param_1 + 2) = 1;
    *(undefined *)((int)param_1 + 9) = 0;
    *param_1 = param_2;
    iVar3 = fstat(param_2,&sStack_78);
    if (iVar3 == 0) {
      *(bool *)((int)param_1 + 10) = (sStack_78.st_mode & 0xf000) == 0x8000;
      uVar1 = 1;
    }
    else {
      *(undefined *)((int)param_1 + 10) = 0;
      uVar1 = 1;
    }
  }
  return uVar1;
}


/* address=008cdc84 symbol=_ZNSt13_Filebuf_base12_M_file_sizeEv */

uint _ZNSt13_Filebuf_base12_M_file_sizeEv(int *param_1)

{
  int iVar1;
  stat sStack_78;
  
  iVar1 = fstat(*param_1,&sStack_78);
  if ((iVar1 == 0) && ((sStack_78.st_mode & 0xf000) == 0x8000)) {
    sStack_78.st_blksize = sStack_78.st_blksize & ~(sStack_78.st_blocks >> 0x1f) >> 0x1f;
  }
  else {
    sStack_78.st_blksize = 0;
  }
  return sStack_78.st_blksize;
}


/* address=008cdcbc symbol=_ZNSt13_Filebuf_base7_M_seekEli */

__off_t _ZNSt13_Filebuf_base7_M_seekEli(int *param_1,__off_t param_2,int param_3)

{
  __off_t _Var1;
  int iVar2;
  
  if (param_3 == 2) {
    iVar2 = 1;
LAB_008cdcda:
    _Var1 = lseek(*param_1,param_2,iVar2);
  }
  else {
    if (param_3 == 4) {
      iVar2 = _ZNSt13_Filebuf_base12_M_file_sizeEv();
      if (-iVar2 == param_2 || -param_2 < iVar2) {
        iVar2 = 2;
        goto LAB_008cdcda;
      }
    }
    else if ((param_3 == 1) && (iVar2 = 0, -1 < param_2)) goto LAB_008cdcda;
    _Var1 = -1;
  }
  return _Var1;
}


/* address=008cdcf8 symbol=_ZNSt13_Filebuf_base7_M_openEPKcil */

bool _ZNSt13_Filebuf_base7_M_openEPKcil(int *param_1,char *param_2,uint param_3,undefined4 param_4)

{
  char cVar1;
  __off_t _Var2;
  int iVar3;
  bool bVar4;
  stat sStack_78;
  
  if (*(char *)(param_1 + 2) == '\0') {
    switch(param_3 & 0xfffffff9) {
    default:
      goto code_r0x008cdd14;
    case 1:
    case 0x11:
      iVar3 = 0x441;
      break;
    case 8:
      iVar3 = 0;
      param_4 = 0;
      break;
    case 9:
    case 0x19:
      iVar3 = 0x442;
      break;
    case 0x10:
    case 0x30:
      iVar3 = 0x241;
      break;
    case 0x18:
      iVar3 = 2;
      break;
    case 0x38:
      iVar3 = 0x242;
    }
    iVar3 = open(param_2,iVar3,param_4);
    if (-1 < iVar3) {
      *(undefined *)(param_1 + 2) = 1;
      if (((param_3 & 3) != 0) && (_Var2 = lseek(iVar3,0,2), _Var2 == -1)) {
        *(undefined *)(param_1 + 2) = 0;
      }
      *param_1 = iVar3;
      param_1[1] = param_3;
      *(char *)((int)param_1 + 9) = *(char *)(param_1 + 2);
      cVar1 = '\0';
      if (*(char *)(param_1 + 2) != '\0') {
        iVar3 = fstat(iVar3,&sStack_78);
        bVar4 = false;
        if (iVar3 == 0) {
          bVar4 = (sStack_78.st_mode & 0xf000) == 0x8000;
        }
        *(bool *)((int)param_1 + 10) = bVar4;
        cVar1 = *(char *)(param_1 + 2);
      }
      return cVar1 != '\0';
    }
  }
code_r0x008cdd14:
  return false;
}


/* address=008cddb4 symbol=_ZNSt13_Filebuf_base7_M_openEPKci */

void _ZNSt13_Filebuf_base7_M_openEPKci(void)

{
  _ZNSt13_Filebuf_base7_M_openEPKcil();
  return;
}


/* address=008cddc0 symbol=_ZNSt13_Filebuf_base13_S_initializeEv */

void _ZNSt13_Filebuf_base13_S_initializeEv(void)

{
  _ZNSt13_Filebuf_base12_M_page_sizeE = sysconf(0x27);
  return;
}


/* address=008cdddc symbol=_ZNSt13basic_filebufIcSt11char_traitsIcEE23_M_switch_to_input_modeEv */

undefined4
_ZNSt13basic_filebufIcSt11char_traitsIcEE23_M_switch_to_input_modeEv
          (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  size_t __size;
  void *pvVar4;
  size_t sVar5;
  size_t __size_00;
  
  iVar1 = _ZNSt13_Filebuf_base12_M_page_sizeE;
  if (((*(char *)(param_1 + 0x28) == '\0') || (-1 < *(int *)(param_1 + 0x24) << 0x1c)) ||
     (*(short *)(param_1 + 0x30) != 0)) {
LAB_008cddec:
    uVar2 = 0;
  }
  else {
    if (*(int *)(param_1 + 0x34) == 0) {
      iVar3 = __aeabi_uidiv(_ZNSt13_Filebuf_base12_M_page_sizeE + 0xfff,
                            _ZNSt13_Filebuf_base12_M_page_sizeE,0x1a00,0xfff,param_4);
      __size_00 = iVar3 * iVar1;
      pvVar4 = malloc(__size_00);
      *(void **)(param_1 + 0x34) = pvVar4;
      if (pvVar4 == (void *)0x0) goto LAB_008cddec;
      *(undefined *)(param_1 + 0x2e) = 1;
      sVar5 = __size_00 * *(int *)(param_1 + 0x6c);
      __size = (**(code **)(**(int **)(param_1 + 0x68) + 0x20))();
      *(undefined4 *)(param_1 + 0x3c) = 0;
      if ((int)__size < (int)sVar5) {
        __size = sVar5;
      }
      pvVar4 = malloc(__size);
      *(void **)(param_1 + 0x3c) = pvVar4;
      if (pvVar4 == (void *)0x0) {
        _ZNSt13basic_filebufIcSt11char_traitsIcEE21_M_deallocate_buffersEv(param_1);
        return 0;
      }
      *(size_t *)(param_1 + 0x40) = (int)pvVar4 + __size;
      *(size_t *)(param_1 + 0x38) = *(int *)(param_1 + 0x34) + __size_00;
    }
    else {
      pvVar4 = *(void **)(param_1 + 0x3c);
    }
    *(void **)(param_1 + 0x48) = pvVar4;
    *(void **)(param_1 + 0x44) = pvVar4;
    *(undefined4 *)(param_1 + 0x50) = *(undefined4 *)(param_1 + 0x4c);
    *(undefined *)(param_1 + 0x2f) = 1;
    uVar2 = 1;
  }
  return uVar2;
}


/* address=008cde88 symbol=_ZNSt10_UnderflowIcSt11char_traitsIcEE7_M_doitEPSt13basic_filebufIcS1_E */

uint _ZNSt10_UnderflowIcSt11char_traitsIcEE7_M_doitEPSt13basic_filebufIcS1_E(int param_1)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  byte *pbVar6;
  int iVar7;
  
  if (*(char *)(param_1 + 0x2f) == '\0') {
    iVar7 = _ZNSt13basic_filebufIcSt11char_traitsIcEE23_M_switch_to_input_modeEv();
    if (iVar7 == 0) {
      return 0xffffffff;
    }
  }
  else if (*(char *)(param_1 + 0x32) != '\0') {
    pbVar6 = *(byte **)(param_1 + 0x60);
    *(byte **)(param_1 + 8) = pbVar6;
    *(byte **)(param_1 + 0xc) = *(byte **)(param_1 + 100);
    *(undefined4 *)(param_1 + 4) = *(undefined4 *)(param_1 + 0x5c);
    *(undefined *)(param_1 + 0x32) = 0;
    if (pbVar6 != *(byte **)(param_1 + 100)) {
      return (uint)*pbVar6;
    }
  }
  if ((*(char *)(param_1 + 0x2a) != '\0') && (*(char *)(param_1 + 0x2d) != '\0')) {
    iVar7 = param_1 + 0x20;
    if (*(int *)(param_1 + 0x54) != 0) {
      _ZNSt13_Filebuf_base8_M_unmapEPvl
                (iVar7,*(int *)(param_1 + 0x54),*(undefined4 *)(param_1 + 0x58));
    }
    iVar3 = _ZNSt13_Filebuf_base7_M_seekEli(iVar7,0,2);
    iVar4 = _ZNSt13_Filebuf_base12_M_file_sizeEv(iVar7);
    iVar1 = _ZNSt13_Filebuf_base12_M_page_sizeE;
    if (((iVar3 < 0) || (iVar4 < 1)) || (iVar4 <= iVar3)) {
      *(undefined4 *)(param_1 + 0x54) = 0;
      *(undefined4 *)(param_1 + 0x58) = 0;
    }
    else {
      iVar5 = __aeabi_uidiv(iVar3,_ZNSt13_Filebuf_base12_M_page_sizeE);
      iVar5 = iVar5 * iVar1;
      iVar4 = iVar4 - iVar5;
      *(int *)(param_1 + 0x58) = iVar4;
      if (0x100000 < iVar4) {
        *(undefined4 *)(param_1 + 0x58) = 0x100000;
        iVar4 = 0x100000;
      }
      iVar7 = _ZNSt13_Filebuf_base7_M_mmapEll(iVar7,iVar5,iVar4);
      *(int *)(param_1 + 0x54) = iVar7;
      if (iVar7 != 0) {
        pbVar6 = (byte *)(iVar7 + (iVar3 - iVar5));
        *(int *)(param_1 + 4) = iVar7;
        *(byte **)(param_1 + 8) = pbVar6;
        *(int *)(param_1 + 0xc) = iVar7 + *(int *)(param_1 + 0x58);
        return (uint)*pbVar6;
      }
      *(undefined4 *)(param_1 + 0x58) = 0;
    }
  }
  uVar2 = _ZNSt13basic_filebufIcSt11char_traitsIcEE16_M_underflow_auxEv(param_1);
  return uVar2;
}


/* address=008cdf78 symbol=_ZNSt4priv16stdio_istreambuf9showmanycEv */

undefined4 _ZNSt4priv16stdio_istreambuf9showmanycEv(void)

{
  return 0;
}


/* address=008cdf7c symbol=_ZNSt4priv16stdio_ostreambuf9showmanycEv */

undefined4 _ZNSt4priv16stdio_ostreambuf9showmanycEv(void)

{
  return 0xffffffff;
}


/* address=008cdf84 symbol=_ZNSt4priv20stdio_streambuf_base4syncEv */

int _ZNSt4priv20stdio_streambuf_base4syncEv(int param_1)

{
  int iVar1;
  
  iVar1 = fflush(*(FILE **)(param_1 + 0x20));
  return (iVar1 == 0) - 1;
}


/* address=008cdf94 symbol=_ZNSt4priv16stdio_ostreambuf8overflowEi */

int _ZNSt4priv16stdio_ostreambuf8overflowEi(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  if (param_2 == -1) {
    iVar3 = *(int *)(param_1 + 0x14);
    iVar2 = *(int *)(param_1 + 0x10);
    if (iVar3 == iVar2) {
      iVar1 = 0;
    }
    else {
      fflush(*(FILE **)(param_1 + 0x20));
      iVar1 = -1;
      if (*(int *)(param_1 + 0x14) - *(int *)(param_1 + 0x10) < iVar3 - iVar2) {
        iVar1 = 0;
      }
    }
  }
  else {
    iVar1 = putc(param_2,*(FILE **)(param_1 + 0x20));
  }
  return iVar1;
}


/* address=008cdfcc symbol=_ZNSt4priv16stdio_istreambuf9pbackfailEi */

int _ZNSt4priv16stdio_istreambuf9pbackfailEi(int param_1,int param_2)

{
  int iVar1;
  
  if (param_2 == -1) {
    iVar1 = -1;
    if (*(uint *)(param_1 + 4) < *(uint *)(param_1 + 8)) {
      *(uint *)(param_1 + 8) = *(uint *)(param_1 + 8) - 1;
      iVar1 = 0;
    }
  }
  else {
    iVar1 = ungetc(param_2,*(FILE **)(param_1 + 0x20));
  }
  return iVar1;
}


/* address=008cdff4 symbol=_ZNSt4priv16stdio_istreambuf5uflowEv */

void _ZNSt4priv16stdio_istreambuf5uflowEv(int param_1)

{
  getc(*(FILE **)(param_1 + 0x20));
  return;
}


/* address=008ce000 symbol=_ZNSt4priv16stdio_istreambuf9underflowEv */

int _ZNSt4priv16stdio_istreambuf9underflowEv(int param_1)

{
  int __c;
  
  __c = getc(*(FILE **)(param_1 + 0x20));
  if (__c != -1) {
    ungetc(__c,*(FILE **)(param_1 + 0x20));
  }
  return __c;
}


/* address=008ce01c symbol=_ZNSt4priv20stdio_streambuf_base7seekposESt4fposI9mbstate_tEi */

__off_t * _ZNSt4priv20stdio_streambuf_base7seekposESt4fposI9mbstate_tEi
                    (__off_t *param_1,int param_2,__off_t param_3,__off_t param_4)

{
  int iVar1;
  __off_t local_14;
  
  local_14 = param_3;
  iVar1 = fsetpos(*(FILE **)(param_2 + 0x20),(fpos_t *)&local_14);
  if (iVar1 == 0) {
    param_1[1] = param_4;
    *param_1 = param_3;
  }
  else {
    *param_1 = -1;
    param_1[1] = 0;
  }
  return param_1;
}


/* address=008ce050 symbol=_ZNSt4priv20stdio_streambuf_base7seekoffElii */

__off_t * _ZNSt4priv20stdio_streambuf_base7seekoffElii
                    (__off_t *param_1,int param_2,long param_3,int param_4)

{
  int iVar1;
  __off_t local_14;
  
  if (param_4 == 2) {
    iVar1 = 1;
  }
  else if (param_4 == 4) {
    iVar1 = 2;
  }
  else {
    if (param_4 != 1) goto LAB_008ce066;
    iVar1 = 0;
  }
  iVar1 = fseek(*(FILE **)(param_2 + 0x20),param_3,iVar1);
  if (iVar1 == 0) {
    fgetpos(*(FILE **)(param_2 + 0x20),(fpos_t *)&local_14);
    param_1[1] = 0;
    *param_1 = local_14;
    return param_1;
  }
LAB_008ce066:
  *param_1 = -1;
  param_1[1] = 0;
  return param_1;
}


/* address=008ce09c symbol=_ZNSt4priv20stdio_streambuf_base6setbufEPci */

int _ZNSt4priv20stdio_streambuf_base6setbufEPci(int param_1,char *param_2,size_t param_3)

{
  int __modes;
  
  if ((param_2 != (char *)0x0) || (__modes = 2, param_3 != 0)) {
    __modes = 0;
  }
  setvbuf(*(FILE **)(param_1 + 0x20),param_2,__modes,param_3);
  return param_1;
}


/* address=008ce0bc symbol=_ZNSt4priv20stdio_streambuf_baseD1Ev */

void _ZNSt4priv20stdio_streambuf_baseD1Ev(undefined4 *param_1)

{
  *param_1 = 0x9a4970;
  fflush((FILE *)param_1[8]);
  *param_1 = &PTR__ZNSt15basic_streambufIcSt11char_traitsIcEED1Ev_0096b938;
                    /* WARNING: Subroutine does not return */
  _ZNSt6localeD1Ev(param_1 + 7);
}


/* address=008ce0f4 symbol=_ZNSt4priv20stdio_streambuf_baseD0Ev */

void _ZNSt4priv20stdio_streambuf_baseD0Ev(undefined4 param_1)

{
  _ZNSt4priv20stdio_streambuf_baseD1Ev();
                    /* WARNING: Subroutine does not return */
  _ZdlPv(param_1);
}


/* address=008ce108 symbol=_ZNSt4priv20stdio_streambuf_baseD2Ev */

void _ZNSt4priv20stdio_streambuf_baseD2Ev(undefined4 *param_1)

{
  *param_1 = 0x9a4970;
  fflush((FILE *)param_1[8]);
  *param_1 = &PTR__ZNSt15basic_streambufIcSt11char_traitsIcEED1Ev_0096b938;
                    /* WARNING: Subroutine does not return */
  _ZNSt6localeD1Ev(param_1 + 7);
}


/* address=008ce140 symbol=_ZNSt4priv16stdio_ostreambufD1Ev */

undefined4 * _ZNSt4priv16stdio_ostreambufD1Ev(undefined4 *param_1)

{
  *param_1 = &PTR__ZNSt4priv16stdio_ostreambufD1Ev_1_009a48e0;
  _ZNSt4priv20stdio_streambuf_baseD2Ev();
  return param_1;
}


/* address=008ce160 symbol=_ZNSt4priv16stdio_ostreambufD0Ev */

void _ZNSt4priv16stdio_ostreambufD0Ev(undefined4 param_1)

{
  _ZNSt4priv16stdio_ostreambufD1Ev();
                    /* WARNING: Subroutine does not return */
  _ZdlPv(param_1);
}


/* address=008ce174 symbol=_ZNSt4priv16stdio_ostreambufD2Ev */

undefined4 * _ZNSt4priv16stdio_ostreambufD2Ev(undefined4 *param_1)

{
  *param_1 = &PTR__ZNSt4priv16stdio_ostreambufD1Ev_1_009a48e0;
  _ZNSt4priv20stdio_streambuf_baseD2Ev();
  return param_1;
}


/* address=008ce194 symbol=_ZNSt4priv16stdio_istreambufD1Ev */

undefined4 * _ZNSt4priv16stdio_istreambufD1Ev(undefined4 *param_1)

{
  *param_1 = 0x9a4928;
  _ZNSt4priv20stdio_streambuf_baseD2Ev();
  return param_1;
}


/* address=008ce1b4 symbol=_ZNSt4priv16stdio_istreambufD0Ev */

void _ZNSt4priv16stdio_istreambufD0Ev(undefined4 param_1)

{
  _ZNSt4priv16stdio_istreambufD1Ev();
                    /* WARNING: Subroutine does not return */
  _ZdlPv(param_1);
}


/* address=008ce1c8 symbol=_ZNSt4priv16stdio_istreambufD2Ev */

undefined4 * _ZNSt4priv16stdio_istreambufD2Ev(undefined4 *param_1)

{
  *param_1 = 0x9a4928;
  _ZNSt4priv20stdio_streambuf_baseD2Ev();
  return param_1;
}


/* address=008ce1e8 symbol=_ZNSt4priv20stdio_streambuf_baseC1EP7__sFILE */

undefined4 * _ZNSt4priv20stdio_streambuf_baseC1EP7__sFILE(undefined4 *param_1,undefined4 param_2)

{
  *param_1 = &PTR__ZNSt15basic_streambufIcSt11char_traitsIcEED1Ev_0096b938;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  param_1[4] = 0;
  param_1[5] = 0;
  param_1[6] = 0;
  _ZNSt6localeC1Ev(param_1 + 7);
  param_1[8] = param_2;
  *param_1 = 0x9a4970;
  return param_1;
}


/* address=008ce228 symbol=_ZNSt4priv20stdio_streambuf_baseC2EP7__sFILE */

undefined4 * _ZNSt4priv20stdio_streambuf_baseC2EP7__sFILE(undefined4 *param_1,undefined4 param_2)

{
  *param_1 = &PTR__ZNSt15basic_streambufIcSt11char_traitsIcEED1Ev_0096b938;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  param_1[4] = 0;
  param_1[5] = 0;
  param_1[6] = 0;
  _ZNSt6localeC1Ev(param_1 + 7);
  param_1[8] = param_2;
  *param_1 = 0x9a4970;
  return param_1;
}


/* address=008ce268 symbol=__lshrdi3 */

undefined8 __lshrdi3(uint param_1,uint param_2,uint param_3)

{
  uint uVar1;
  
  if ((int)(param_3 - 0x20) < 0) {
    uVar1 = param_1 >> (param_3 & 0xff) | param_2 << (0x20 - param_3 & 0xff);
  }
  else {
    uVar1 = param_2 >> (param_3 - 0x20 & 0xff);
  }
  return CONCAT44(param_2 >> (param_3 & 0xff),uVar1);
}


/* address=008ce284 symbol=__ashldi3 */

undefined8 __ashldi3(uint param_1,int param_2,uint param_3)

{
  uint uVar1;
  
  if ((int)(param_3 - 0x20) < 0) {
    uVar1 = param_2 << (param_3 & 0xff) | param_1 >> (0x20 - param_3 & 0xff);
  }
  else {
    uVar1 = param_1 << (param_3 - 0x20 & 0xff);
  }
  return CONCAT44(uVar1,param_1 << (param_3 & 0xff));
}


/* address=008ce2a0 symbol=__fixunssfsi */

uint __fixunssfsi(uint param_1)

{
  uint uVar1;
  
  if ((SUB41(param_1 >> 0x1f,0)) || (param_1 << 1 < 0x7f000000)) {
    return 0;
  }
  uVar1 = 0x9e - ((param_1 << 1) >> 0x18);
  if (-1 < (int)uVar1) {
    return (param_1 << 8 | 0x80000000) >> (uVar1 & 0xff);
  }
  if ((uVar1 == 0xffffff9f) && ((param_1 & 0x7fffff) != 0)) {
    return 0;
  }
  return 0xffffffff;
}


/* address=008ce2f8 symbol=___ZSt26__stl_throw_overflow_errorPKc_veneer */

void ___ZSt26__stl_throw_overflow_errorPKc_veneer(void)

{
  _ZSt26__stl_throw_overflow_errorPKc();
  return;
}


/* address=008ce308 symbol=___ZSt24__stl_throw_length_errorPKc_veneer */

void ___ZSt24__stl_throw_length_errorPKc_veneer(void)

{
  _ZSt24__stl_throw_length_errorPKc();
  return;
}


/* address=008ce318 symbol=___ZNSt12__node_alloc11_M_allocateERj_veneer */

void ___ZNSt12__node_alloc11_M_allocateERj_veneer(void)

{
  _ZNSt12__node_alloc11_M_allocateERj();
  return;
}


/* address=008ce328 symbol=___ZSt24__stl_throw_out_of_rangePKc_veneer */

void ___ZSt24__stl_throw_out_of_rangePKc_veneer(void)

{
  _ZSt24__stl_throw_out_of_rangePKc();
  return;
}


/* address=008ce338 symbol=___ZNSt12__node_alloc13_M_deallocateEPvj_veneer */

void ___ZNSt12__node_alloc13_M_deallocateEPvj_veneer(void)

{
  _ZNSt12__node_alloc13_M_deallocateEPvj();
  return;
}


