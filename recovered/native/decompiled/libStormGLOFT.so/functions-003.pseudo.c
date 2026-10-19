/* AUTOMATIC RECOVERY: Ghidra 11.0.3; libStormGLOFT.so.
 * This is unvalidated pseudocode, not buildable original C/C++.
 * See function-index.jsonl and original symbol/assembly inventories.
 */
/* address=000adf70 symbol=_Z23do_vec_index_to_swizzleP9exec_list */

void _Z23do_vec_index_to_swizzleP9exec_list(undefined4 param_1)

{
  undefined4 uVar1;
  undefined **local_30 [6];
  undefined local_17;
  int local_14;
  
  local_14 = __stack_chk_guard;
  uVar1 = _ZN23ir_hierarchical_visitorC1Ev(local_30);
  local_17 = 0;
  local_30[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000ea31c;
  _ZN23ir_hierarchical_visitor3runEP9exec_list(uVar1,param_1);
  if (__stack_chk_guard != local_14) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(local_17);
  }
  return;
}


/* address=000adfc4 symbol=FUN_000adfc4 */

undefined4 FUN_000adfc4(undefined4 param_1,int param_2)

{
  undefined4 uVar1;
  uint uVar2;
  uint uVar3;
  
  uVar3 = 0;
  while( true ) {
    if (*(int *)(param_2 + 0x18) == 0x69) {
      uVar2 = ((uint)*(ushort *)(*(int *)(param_2 + 0x10) + 8) << 0x14) >> 0x1d;
    }
    else {
      uVar2 = _ZN13ir_expression16get_num_operandsE23ir_expression_operation();
    }
    if (uVar2 <= uVar3) break;
    uVar1 = FUN_000ae0a8(param_1,*(undefined4 *)(param_2 + 0x1c + uVar3 * 4));
    *(undefined4 *)(param_2 + 0x1c + uVar3 * 4) = uVar1;
    uVar3 = uVar3 + 1;
  }
  return 0;
}


/* address=000ae008 symbol=FUN_000ae008 */

undefined4 FUN_000ae008(undefined4 param_1,int param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_000ae0a8(param_1,*(undefined4 *)(param_2 + 0x18));
  *(undefined4 *)(param_2 + 0x18) = uVar1;
  return 0;
}


/* address=000ae01a symbol=FUN_000ae01a */

undefined4 FUN_000ae01a(undefined4 param_1,int param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_000ae0a8(param_1,*(undefined4 *)(param_2 + 0x14));
  *(undefined4 *)(param_2 + 0x14) = uVar1;
  return 0;
}


/* address=000ae02c symbol=FUN_000ae02c */

undefined4 FUN_000ae02c(undefined4 param_1,int param_2)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  
  puVar3 = *(undefined4 **)(param_2 + 0x18);
  if (puVar3 != (undefined4 *)0x0) {
    puVar3 = puVar3 + -1;
  }
  if (puVar3[1] != 0) {
    puVar2 = (undefined4 *)(puVar3[1] + -4);
    while (puVar1 = puVar2, puVar1 != (undefined4 *)0x0) {
      puVar2 = (undefined4 *)FUN_000ae0a8(param_1,puVar3);
      if (puVar2 != puVar3) {
        if (puVar2 != (undefined4 *)0x0) {
          puVar2 = puVar2 + 1;
        }
        puVar2[1] = puVar3[2];
        *puVar2 = puVar3[1];
        *(undefined4 **)puVar3[2] = puVar2;
        *(undefined4 **)(puVar3[1] + 4) = puVar2;
      }
      puVar2 = (undefined4 *)puVar1[1];
      puVar3 = puVar1;
      if (puVar2 != (undefined4 *)0x0) {
        puVar2 = puVar2 + -1;
      }
    }
  }
  return 0;
}


/* address=000ae080 symbol=FUN_000ae080 */

undefined4 FUN_000ae080(undefined4 param_1,int param_2)

{
  undefined4 uVar1;
  
  if (*(int *)(param_2 + 0x10) != 0) {
    uVar1 = FUN_000ae0a8();
    *(undefined4 *)(param_2 + 0x10) = uVar1;
  }
  return 0;
}


/* address=000ae094 symbol=FUN_000ae094 */

undefined4 FUN_000ae094(undefined4 param_1,int param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_000ae0a8(param_1,*(undefined4 *)(param_2 + 0x10));
  *(undefined4 *)(param_2 + 0x10) = uVar1;
  return 0;
}


/* address=000ae0a8 symbol=FUN_000ae0a8 */

int FUN_000ae0a8(int param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  uint uVar4;
  bool bVar5;
  
  if (param_2 != 0) {
    iVar1 = *(int *)(param_2 + 0xc);
    bVar5 = iVar1 == 4;
    if (bVar5) {
      iVar1 = *(int *)(param_2 + 0x18);
    }
    if ((bVar5 && iVar1 == 0x5e) &&
       (iVar1 = (**(code **)(**(int **)(param_2 + 0x20) + 0x18))(*(int **)(param_2 + 0x20),0),
       iVar1 != 0)) {
      uVar2 = ralloc_parent(param_2);
      *(undefined *)(param_1 + 0x19) = 1;
      iVar1 = *(int *)(iVar1 + 0x18);
      if (iVar1 < 0) {
        iVar1 = 0;
      }
      else {
        uVar4 = ((uint)*(ushort *)(*(int *)(*(int *)(param_2 + 0x1c) + 0x10) + 8) << 0x14) >> 0x1d;
        if ((int)uVar4 <= iVar1) {
          iVar1 = uVar4 - 1;
        }
      }
      iVar3 = ralloc_size(uVar2,0x20);
      ralloc_set_destructor(iVar3,_ZN9exec_node18_ralloc_destructorEPv);
      _ZN10ir_swizzleC2EP9ir_rvaluejjjjj(iVar3,*(undefined4 *)(param_2 + 0x1c),iVar1,0,0,0,1);
      param_2 = iVar3;
    }
  }
  return param_2;
}


/* address=000ae138 symbol=_Z19is_extended_swizzleP13ir_expression */

undefined4 _Z19is_extended_swizzleP13ir_expression(int param_1)

{
  int **ppiVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  uint uVar5;
  bool bVar6;
  
  if ((*(byte *)(*(int *)(param_1 + 0x10) + 9) & 0xe) == 0) {
    return 1;
  }
  uVar5 = 0;
  iVar3 = 0;
LAB_000ae152:
  piVar4 = *(int **)(param_1 + uVar5 * 4 + 0x1c);
code_r0x000ae158:
  iVar2 = iVar3;
  if (piVar4 == (int *)0x0) goto LAB_000ae1ae;
  switch(piVar4[3]) {
  case 2:
    iVar2 = piVar4[6];
    if ((iVar3 == 0) || (bVar6 = iVar3 == iVar2, iVar2 = iVar3, bVar6)) goto LAB_000ae1ae;
    break;
  case 3:
    iVar3 = (**(code **)(*piVar4 + 0x2c))(piVar4);
    if (((iVar3 != 0) || (iVar3 = (**(code **)(*piVar4 + 0x28))(piVar4), iVar3 != 0)) ||
       (iVar3 = (**(code **)(*piVar4 + 0x30))(piVar4), iVar3 != 0)) goto LAB_000ae1ae;
    break;
  case 4:
    if (piVar4[6] != 2) {
      return 0;
    }
    ppiVar1 = (int **)(piVar4 + 7);
    goto code_r0x000ae17a;
  case 5:
    ppiVar1 = (int **)(piVar4 + 6);
code_r0x000ae17a:
    piVar4 = *ppiVar1;
    goto code_r0x000ae158;
  }
  return 0;
LAB_000ae1ae:
  uVar5 = uVar5 + 1;
  iVar3 = iVar2;
  if (((uint)*(ushort *)(*(int *)(param_1 + 0x10) + 8) << 0x14) >> 0x1d <= uVar5) {
    return 1;
  }
  goto LAB_000ae152;
}


/* address=000ae1c8 symbol=_Z19lower_quadop_vectorP9exec_listb */

void _Z19lower_quadop_vectorP9exec_listb(undefined4 param_1,undefined param_2)

{
  undefined4 uVar1;
  undefined **local_30 [6];
  undefined local_17;
  undefined local_16;
  int local_14;
  
  local_14 = __stack_chk_guard;
  uVar1 = _ZN23ir_hierarchical_visitorC1Ev(local_30);
  local_16 = 0;
  local_30[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000ea3c4;
  local_17 = param_2;
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(uVar1,param_1,1);
  if (__stack_chk_guard != local_14) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(local_16);
  }
  return;
}


/* address=000ae224 symbol=FUN_000ae224 */

void FUN_000ae224(int param_1,int *param_2)

{
  int iVar1;
  int *piVar2;
  undefined4 uVar3;
  int *piVar4;
  uint uVar5;
  int iVar6;
  uint uVar7;
  undefined4 uVar8;
  int iVar9;
  int iVar10;
  uint uVar11;
  bool bVar12;
  undefined4 local_68 [16];
  int local_28;
  
  local_28 = __stack_chk_guard;
  iVar10 = *param_2;
  if (iVar10 != 0) {
    iVar1 = *(int *)(iVar10 + 0xc);
    bVar12 = iVar1 == 4;
    if (bVar12) {
      iVar1 = *(int *)(iVar10 + 0x18);
    }
    if ((bVar12 && iVar1 == 0x69) &&
       ((*(char *)(param_1 + 0x19) == '\0' ||
        (iVar1 = _Z19is_extended_swizzleP13ir_expression(iVar10), iVar1 == 0)))) {
      piVar2 = (int *)ralloc_size(iVar10,0x44);
      ralloc_set_destructor(piVar2,_ZN9exec_node18_ralloc_destructorEPv);
      uVar8 = *(undefined4 *)(iVar10 + 0x10);
      uVar3 = _Z17precision_from_irP14ir_instruction(iVar10);
      _ZN11ir_variableC2EPK9glsl_typePKc16ir_variable_mode14glsl_precision
                (piVar2,uVar8,"vecop_tmp",10,uVar3);
      iVar1 = *(int *)(param_1 + 4);
      piVar4 = piVar2;
      if (piVar2 != (int *)0x0) {
        piVar4 = piVar2 + 1;
      }
      *piVar4 = iVar1 + 4;
      piVar4[1] = *(int *)(iVar1 + 8);
      **(int ***)(iVar1 + 8) = piVar4;
      *(int **)(iVar1 + 8) = piVar4;
      __aeabi_memclr8(local_68,0x40);
      iVar1 = *(int *)(iVar10 + 0x10);
      uVar5 = (uint)*(ushort *)(iVar1 + 8);
      if ((*(ushort *)(iVar1 + 8) & 0xe00) != 0) {
        iVar9 = 0;
        uVar11 = 0;
        uVar7 = 0;
        do {
          iVar6 = *(int *)(iVar10 + 0x1c + uVar7 * 4);
          if ((iVar6 != 0) && (*(int *)(iVar6 + 0xc) == 3)) {
            switch(*(undefined4 *)(iVar1 + 4)) {
            case 0:
            case 1:
            case 2:
              local_68[iVar9] = *(undefined4 *)(iVar6 + 0x18);
              break;
            case 3:
              *(undefined *)((int)local_68 + iVar9) = *(undefined *)(iVar6 + 0x18);
            }
            uVar11 = uVar11 | 1 << (uVar7 & 0xff);
            uVar5 = (uint)*(ushort *)(iVar1 + 8);
            iVar9 = iVar9 + 1;
          }
          uVar7 = uVar7 + 1;
        } while (uVar7 < (uVar5 << 0x14) >> 0x1d);
        if (iVar9 != 0) {
          uVar3 = ralloc_size(iVar10,0x68);
          ralloc_set_destructor(uVar3,_ZN9exec_node18_ralloc_destructorEPv);
          uVar8 = _ZN9glsl_type12get_instanceEjjj
                            (*(undefined4 *)(*(int *)(iVar10 + 0x10) + 4),iVar9,1);
          _ZN11ir_constantC2EPK9glsl_typePK16ir_constant_data(uVar3,uVar8,local_68);
          uVar8 = ralloc_size(iVar10,0x1c);
          ralloc_set_destructor(uVar8,_ZN9exec_node18_ralloc_destructorEPv);
          _ZN23ir_dereference_variableC2EP11ir_variable(uVar8,piVar2);
          piVar4 = (int *)ralloc_size(iVar10,0x20);
          ralloc_set_destructor(piVar4,_ZN9exec_node18_ralloc_destructorEPv);
          _ZN13ir_assignmentC2EP14ir_dereferenceP9ir_rvalueS3_j(piVar4,uVar8,uVar3,0,uVar11);
          iVar1 = *(int *)(param_1 + 4);
          if (piVar4 != (int *)0x0) {
            piVar4 = piVar4 + 1;
          }
          *piVar4 = iVar1 + 4;
          piVar4[1] = *(int *)(iVar1 + 8);
          **(int ***)(iVar1 + 8) = piVar4;
          *(int **)(iVar1 + 8) = piVar4;
          iVar1 = *(int *)(iVar10 + 0x10);
          uVar5 = (uint)*(ushort *)(iVar1 + 8);
        }
      }
      if ((uVar5 & 0xe00) != 0) {
        uVar5 = 0;
        do {
          if (*(int *)(*(int *)(iVar10 + 0x1c + uVar5 * 4) + 0xc) != 3) {
            uVar3 = ralloc_size(iVar10,0x1c);
            ralloc_set_destructor(uVar3,_ZN9exec_node18_ralloc_destructorEPv);
            _ZN23ir_dereference_variableC2EP11ir_variable(uVar3,piVar2);
            piVar4 = (int *)ralloc_size(iVar10,0x20);
            ralloc_set_destructor(piVar4,_ZN9exec_node18_ralloc_destructorEPv);
            _ZN13ir_assignmentC2EP14ir_dereferenceP9ir_rvalueS3_j
                      (piVar4,uVar3,*(undefined4 *)(iVar10 + 0x1c + uVar5 * 4),0,1 << (uVar5 & 0xff)
                      );
            iVar1 = *(int *)(param_1 + 4);
            if (piVar4 != (int *)0x0) {
              piVar4 = piVar4 + 1;
            }
            *piVar4 = iVar1 + 4;
            piVar4[1] = *(int *)(iVar1 + 8);
            **(int ***)(iVar1 + 8) = piVar4;
            *(int **)(iVar1 + 8) = piVar4;
            iVar1 = *(int *)(iVar10 + 0x10);
          }
          uVar5 = uVar5 + 1;
        } while (uVar5 < ((uint)*(ushort *)(iVar1 + 8) << 0x14) >> 0x1d);
      }
      iVar10 = ralloc_size(iVar10,0x1c);
      ralloc_set_destructor(iVar10,_ZN9exec_node18_ralloc_destructorEPv);
      _ZN23ir_dereference_variableC2EP11ir_variable(iVar10,piVar2);
      *param_2 = iVar10;
      *(undefined *)(param_1 + 0x1a) = 1;
    }
  }
  if (__stack_chk_guard == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}


/* address=000ae4a0 symbol=_Z19lower_vector_insertP9exec_listb */

void _Z19lower_vector_insertP9exec_listb(undefined4 param_1,undefined param_2)

{
  int iVar1;
  undefined **local_48 [7];
  int local_2c;
  undefined4 local_28;
  int local_24;
  undefined4 local_20;
  int iStack_1c;
  undefined local_18;
  undefined local_17;
  int local_14;
  
  local_14 = __stack_chk_guard;
  iVar1 = _ZN23ir_hierarchical_visitorC1Ev(local_48);
  local_28 = 0;
  local_48[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000ea470;
  local_24 = iVar1 + 0x28;
  local_2c = iVar1 + 0x24;
  local_20 = 0;
  local_18 = 0;
  iStack_1c = local_2c;
  local_17 = param_2;
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(iVar1,param_1,1);
  if (__stack_chk_guard != local_14) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(local_18);
  }
  return;
}


/* address=000ae51c symbol=FUN_000ae51c */

void FUN_000ae51c(int param_1,int *param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  int **ppiVar7;
  int *piVar8;
  int iVar9;
  uint uVar10;
  int iVar11;
  bool bVar12;
  undefined4 local_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  int local_28;
  
  local_28 = __stack_chk_guard;
  iVar9 = *param_2;
  if (iVar9 == 0) goto LAB_000ae754;
  iVar1 = *(int *)(iVar9 + 0xc);
  bVar12 = iVar1 != 4;
  if (!bVar12) {
    iVar1 = *(int *)(iVar9 + 0x18);
  }
  if (bVar12 || iVar1 != 0x67) goto LAB_000ae754;
  uVar2 = ralloc_parent(iVar9);
  *(undefined4 *)(param_1 + 0x20) = uVar2;
  iVar1 = (**(code **)(**(int **)(iVar9 + 0x24) + 0x18))(*(int **)(iVar9 + 0x24),0);
  iVar11 = param_1 + 0x1c;
  if (iVar1 == 0) {
    if (*(char *)(param_1 + 0x31) != '\0') {
      uVar2 = _ZN10ir_builder10ir_factory9make_tempEPK9glsl_typePKc14glsl_precision
                        (iVar11,*(undefined4 *)(*(int *)(iVar9 + 0x1c) + 0x10),"vec_tmp",
                         *(undefined4 *)(*(int *)(iVar9 + 0x1c) + 0x14));
      uVar3 = _ZN10ir_builder10ir_factory9make_tempEPK9glsl_typePKc14glsl_precision
                        (iVar11,*(undefined4 *)(*(int *)(iVar9 + 0x20) + 0x10),"src_temp",
                         *(undefined4 *)(*(int *)(iVar9 + 0x20) + 0x14));
      _ZN10ir_builder5derefC2EP11ir_variable(&local_34,uVar2);
      uVar4 = _ZN10ir_builder6assignENS_5derefENS_7operandE(local_34,*(undefined4 *)(iVar9 + 0x1c));
      _ZN10ir_builder10ir_factory4emitEP14ir_instruction(iVar11,uVar4);
      _ZN10ir_builder5derefC2EP11ir_variable(&local_38,uVar3);
      uVar4 = _ZN10ir_builder6assignENS_5derefENS_7operandE(local_38,*(undefined4 *)(iVar9 + 0x20));
      _ZN10ir_builder10ir_factory4emitEP14ir_instruction(iVar11,uVar4);
      if ((*(byte *)(*(int *)(iVar9 + 0x10) + 9) & 0xe) != 0) {
        uVar10 = 0;
        do {
          uVar4 = ralloc_size(*(undefined4 *)(param_1 + 0x20),0x68);
          ralloc_set_destructor(uVar4,_ZN9exec_node18_ralloc_destructorEPv);
          _ZN11ir_constantC2Eij(uVar4,uVar10,1);
          uVar5 = _ZN10ir_builder10ir_factory9make_tempEPK9glsl_typePKc14glsl_precision
                            (iVar11,_ZN9glsl_type10_bool_typeE,"index_condition",2);
          _ZN10ir_builder5derefC2EP11ir_variable(&local_3c,uVar5);
          uVar6 = (**(code **)(**(int **)(iVar9 + 0x24) + 0x10))
                            (*(int **)(iVar9 + 0x24),*(undefined4 *)(param_1 + 0x20),0);
          uVar4 = _ZN10ir_builder5equalENS_7operandES0_(uVar6,uVar4);
          uVar4 = _ZN10ir_builder6assignENS_5derefENS_7operandE(local_3c,uVar4);
          _ZN10ir_builder10ir_factory4emitEP14ir_instruction(iVar11,uVar4);
          _ZN10ir_builder7operandC2EP11ir_variable(&local_40,uVar5);
          _ZN10ir_builder5derefC2EP11ir_variable(&uStack_44,uVar2);
          _ZN10ir_builder7operandC2EP11ir_variable(&local_48,uVar3);
          uVar4 = _ZN10ir_builder6assignENS_5derefENS_7operandEi
                            (uStack_44,local_48,1 << (uVar10 & 0xff));
          uVar4 = _ZN10ir_builder7if_treeENS_7operandEP14ir_instruction(local_40,uVar4);
          _ZN10ir_builder10ir_factory4emitEP14ir_instruction(iVar11,uVar4);
          uVar10 = uVar10 + 1;
        } while (uVar10 < ((uint)*(ushort *)(*(int *)(iVar9 + 0x10) + 8) << 0x14) >> 0x1d);
      }
      *(undefined *)(param_1 + 0x30) = 1;
      iVar9 = ralloc_size(*(undefined4 *)(param_1 + 0x20),0x1c);
      ralloc_set_destructor(iVar9,_ZN9exec_node18_ralloc_destructorEPv);
      _ZN23ir_dereference_variableC2EP11ir_variable(iVar9,uVar2);
      goto LAB_000ae726;
    }
  }
  else {
    uVar2 = _ZN10ir_builder10ir_factory9make_tempEPK9glsl_typePKc14glsl_precision
                      (iVar11,*(undefined4 *)(*(int *)(iVar9 + 0x1c) + 0x10),"vec_tmp",
                       *(undefined4 *)(*(int *)(iVar9 + 0x1c) + 0x14));
    uVar10 = *(uint *)(iVar1 + 0x18);
    _ZN10ir_builder5derefC2EP11ir_variable(&local_2c,uVar2);
    uVar3 = _ZN10ir_builder6assignENS_5derefENS_7operandE(local_2c,*(undefined4 *)(iVar9 + 0x1c));
    _ZN10ir_builder10ir_factory4emitEP14ir_instruction(iVar11,uVar3);
    _ZN10ir_builder5derefC2EP11ir_variable(&local_30,uVar2);
    uVar3 = _ZN10ir_builder6assignENS_5derefENS_7operandEi
                      (local_30,*(undefined4 *)(iVar9 + 0x20),1 << (uVar10 & 0xff));
    _ZN10ir_builder10ir_factory4emitEP14ir_instruction(iVar11,uVar3);
    *(undefined *)(param_1 + 0x30) = 1;
    iVar9 = ralloc_size(*(undefined4 *)(param_1 + 0x20),0x1c);
    ralloc_set_destructor(iVar9,_ZN9exec_node18_ralloc_destructorEPv);
    _ZN23ir_dereference_variableC2EP11ir_variable(iVar9,uVar2);
LAB_000ae726:
    *param_2 = iVar9;
  }
  ppiVar7 = *(int ***)(param_1 + 0x1c);
  if ((int **)*ppiVar7 != ppiVar7 + 1) {
    iVar9 = *(int *)(param_1 + 4);
    *ppiVar7[2] = iVar9 + 4;
    piVar8 = *ppiVar7;
    piVar8[1] = *(int *)(iVar9 + 8);
    **(int ***)(iVar9 + 8) = piVar8;
    *(int **)(iVar9 + 8) = ppiVar7[2];
    ppiVar7[1] = (int *)0x0;
    *ppiVar7 = (int *)(ppiVar7 + 1);
    ppiVar7[2] = (int *)ppiVar7;
  }
LAB_000ae754:
  if (__stack_chk_guard != local_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000ae7b0 symbol=_Z15lower_vertex_idP9gl_shader */

void _Z15lower_vertex_idP9gl_shader(int param_1)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  uint uVar5;
  int *piVar6;
  bool bVar7;
  undefined **local_4c [6];
  undefined local_33;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 *local_28;
  int iStack_24;
  int *piStack_20;
  int local_1c;
  
  local_1c = __stack_chk_guard;
  if ((*(int *)(param_1 + 4) == 0) &&
     (iVar2 = _Z32link_get_main_function_signatureP9gl_shader(param_1), iVar2 != 0)) {
    piVar6 = *(int **)(param_1 + 0xf0);
    _ZN23ir_hierarchical_visitorC1Ev(local_4c);
    local_33 = 0;
    local_4c[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000ea524;
    local_30 = 0;
    uStack_2c = 0;
    local_28 = (undefined4 *)0x0;
    puVar3 = (undefined4 *)*piVar6;
    if (puVar3 != (undefined4 *)0x0) {
      puVar3 = puVar3 + -1;
    }
    for (puVar4 = (undefined4 *)puVar3[1]; puVar1 = local_28, puVar4 != (undefined4 *)0x0;
        puVar4 = (undefined4 *)*puVar4) {
      if (puVar3 != (undefined4 *)0x0) {
        uVar5 = puVar3[3];
        bVar7 = uVar5 == 7;
        if (bVar7) {
          uVar5 = puVar3[6] & 0x1e00;
        }
        if ((bVar7 && uVar5 == 0x1200) && (puVar1 = puVar3, puVar3[9] == 3)) break;
      }
      puVar3 = puVar4 + -1;
    }
    local_28 = puVar1;
    iStack_24 = iVar2;
    piStack_20 = piVar6;
    _ZN23ir_hierarchical_visitor3runEP9exec_list(local_4c,*(undefined4 *)(param_1 + 0xf0));
  }
  if (__stack_chk_guard - local_1c == 0) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(__stack_chk_guard - local_1c);
}


/* address=000ae870 symbol=FUN_000ae870 */

void FUN_000ae870(int param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  int **ppiVar4;
  int *piVar5;
  bool bVar6;
  undefined4 local_34;
  undefined4 uStack_30;
  undefined4 local_2c;
  int local_28;
  
  local_28 = __stack_chk_guard;
  iVar1 = *(int *)(param_2 + 0x18);
  bVar6 = (*(uint *)(iVar1 + 0x18) & 0x1e00) == 0x1200;
  if (bVar6) {
    iVar1 = *(int *)(iVar1 + 0x24);
  }
  if (bVar6 && iVar1 == 0) {
    iVar1 = *(int *)(param_1 + 0x1c);
    if (iVar1 == 0) {
      uVar2 = ralloc_parent(param_2);
      piVar3 = (int *)ralloc_size(uVar2,0x44);
      ralloc_set_destructor(piVar3,_ZN9exec_node18_ralloc_destructorEPv);
      _ZN11ir_variableC2EPK9glsl_typePKc16ir_variable_mode14glsl_precision
                (piVar3,_ZN9glsl_type9_int_typeE,"__VertexID",10,0);
      ppiVar4 = *(int ***)(param_1 + 0x2c);
      *(int **)(param_1 + 0x1c) = piVar3;
      if (piVar3 != (int *)0x0) {
        piVar3 = piVar3 + 1;
      }
      piVar5 = *ppiVar4;
      piVar3[1] = (int)ppiVar4;
      *piVar3 = (int)piVar5;
      piVar5[1] = (int)piVar3;
      *ppiVar4 = piVar3;
      iVar1 = ralloc_size(uVar2,0x44);
      ralloc_set_destructor(iVar1,_ZN9exec_node18_ralloc_destructorEPv);
      _ZN11ir_variableC2EPK9glsl_typePKc16ir_variable_mode14glsl_precision
                (iVar1,_ZN9glsl_type9_int_typeE,"gl_VertexIDMESA",9,0);
      *(int *)(param_1 + 0x20) = iVar1;
      *(uint *)(iVar1 + 0x18) = *(uint *)(iVar1 + 0x18) & 0xfffffe7f | 0x100;
      iVar1 = *(int *)(param_1 + 0x20);
      *(undefined *)(iVar1 + 0x1c) = *(undefined *)(iVar1 + 0x1c);
      *(uint *)(iVar1 + 0x18) = *(uint *)(iVar1 + 0x18) | 1;
      iVar1 = *(int *)(param_1 + 0x20);
      *(undefined4 *)(iVar1 + 0x24) = 2;
      *(uint *)(iVar1 + 0x18) = *(uint *)(iVar1 + 0x18) | 0x80000;
      iVar1 = *(int *)(param_1 + 0x20);
      *(undefined *)(iVar1 + 0x1c) = *(undefined *)(iVar1 + 0x1c);
      *(uint *)(iVar1 + 0x18) = *(uint *)(iVar1 + 0x18) & 0xffefffff;
      ppiVar4 = *(int ***)(param_1 + 0x2c);
      piVar3 = *(int **)(param_1 + 0x20);
      piVar5 = *ppiVar4;
      if (piVar3 != (int *)0x0) {
        piVar3 = piVar3 + 1;
      }
      *piVar3 = (int)piVar5;
      piVar3[1] = (int)ppiVar4;
      piVar5[1] = (int)piVar3;
      *ppiVar4 = piVar3;
      if (*(int *)(param_1 + 0x24) == 0) {
        iVar1 = ralloc_size(uVar2,0x44);
        ralloc_set_destructor(iVar1,_ZN9exec_node18_ralloc_destructorEPv);
        _ZN11ir_variableC2EPK9glsl_typePKc16ir_variable_mode14glsl_precision
                  (iVar1,_ZN9glsl_type9_int_typeE,"gl_BaseVertex",9,0);
        *(int *)(param_1 + 0x24) = iVar1;
        *(uint *)(iVar1 + 0x18) = *(uint *)(iVar1 + 0x18) & 0xfffffe7f | 0x100;
        iVar1 = *(int *)(param_1 + 0x24);
        *(undefined *)(iVar1 + 0x1c) = *(undefined *)(iVar1 + 0x1c);
        *(uint *)(iVar1 + 0x18) = *(uint *)(iVar1 + 0x18) | 1;
        iVar1 = *(int *)(param_1 + 0x24);
        *(undefined4 *)(iVar1 + 0x24) = 3;
        *(uint *)(iVar1 + 0x18) = *(uint *)(iVar1 + 0x18) | 0x80000;
        iVar1 = *(int *)(param_1 + 0x24);
        *(undefined *)(iVar1 + 0x1c) = *(undefined *)(iVar1 + 0x1c);
        *(uint *)(iVar1 + 0x18) = *(uint *)(iVar1 + 0x18) & 0xffefffff;
        ppiVar4 = *(int ***)(param_1 + 0x2c);
        piVar3 = *(int **)(param_1 + 0x24);
        piVar5 = *ppiVar4;
        if (piVar3 != (int *)0x0) {
          piVar3 = piVar3 + 1;
        }
        *piVar3 = (int)piVar5;
        piVar3[1] = (int)ppiVar4;
        piVar5[1] = (int)piVar3;
        *ppiVar4 = piVar3;
      }
      _ZN10ir_builder5derefC2EP11ir_variable(&local_2c,*(undefined4 *)(param_1 + 0x1c));
      _ZN10ir_builder7operandC2EP11ir_variable(&uStack_30,*(undefined4 *)(param_1 + 0x20));
      _ZN10ir_builder7operandC2EP11ir_variable(&local_34,*(undefined4 *)(param_1 + 0x24));
      uVar2 = _ZN10ir_builder3addENS_7operandES0_(uStack_30,local_34);
      piVar3 = (int *)_ZN10ir_builder6assignENS_5derefENS_7operandE(local_2c,uVar2);
      ppiVar4 = (int **)(*(int *)(param_1 + 0x28) + 0x26);
      piVar5 = *ppiVar4;
      if (piVar3 != (int *)0x0) {
        piVar3 = piVar3 + 1;
      }
      *piVar3 = (int)piVar5;
      piVar3[1] = (int)ppiVar4;
      piVar5[1] = (int)piVar3;
      *ppiVar4 = piVar3;
      iVar1 = *(int *)(param_1 + 0x1c);
    }
    *(int *)(param_2 + 0x18) = iVar1;
    *(undefined *)(param_1 + 0x19) = 1;
  }
  if (__stack_chk_guard - local_28 != 0) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(__stack_chk_guard - local_28);
  }
  return;
}


/* address=000aea78 symbol=_mesa_error_no_memory */

void _mesa_error_no_memory(undefined4 param_1)

{
  fprintf((FILE *)sin,"Mesa error: out of memory in %s",param_1);
  return;
}


/* address=000aeaac symbol=_Z10usage_failPKc */

void _Z10usage_failPKc(undefined4 param_1)

{
  char **ppcVar1;
  char *pcVar2;
  
  printf("usage: %s [options] <file.vert | file.geom | file.frag>\n\nPossible options are:\n",
         param_1,param_1);
  ppcVar1 = (char **)&UNK_000ea5c4;
  pcVar2 = "dump-ast";
  do {
    ppcVar1 = ppcVar1 + 4;
    printf("    --%s\n",pcVar2);
    pcVar2 = *ppcVar1;
  } while (pcVar2 != (char *)0x0);
                    /* WARNING: Subroutine does not return */
  exit(1);
}


/* address=000aeaf8 symbol=_Z14compile_shaderP10gl_contextP9gl_shader */

void _Z14compile_shaderP10gl_contextP9gl_shader(undefined4 param_1,int param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar1 = ralloc_size(param_2,0x368);
  ralloc_set_destructor(iVar1,_ZN22_mesa_glsl_parse_state18_ralloc_destructorEPv);
  _ZN22_mesa_glsl_parse_stateC2EP10gl_context15gl_shader_stagePv
            (iVar1,param_1,*(undefined4 *)(param_2 + 4),param_2);
  iVar2 = dump_ast;
  if (dump_ast != 0) {
    iVar2 = 1;
  }
  iVar3 = dump_hir;
  if (dump_hir != 0) {
    iVar3 = 1;
  }
  _mesa_glsl_compile_shader(param_1,param_2,iVar2,iVar3);
  if ((*(char *)(iVar1 + 0x15d) == '\0') && (dump_lir != 0)) {
    _mesa_print_ir(pthread_self,*(undefined4 *)(param_2 + 0xf0),iVar1);
    return;
  }
  return;
}


/* address=000aeb90 symbol=main */

/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Instruction at (ram,0x000af060) overlaps instruction at (ram,0x000af05e)
    */
/* WARNING: Type propagation algorithm not settling */

void main(uint param_1,undefined4 *param_2)

{
  code cVar1;
  int iVar2;
  uint uVar3;
  uint *puVar4;
  size_t sVar5;
  uint uVar6;
  FILE *__stream;
  code *pcVar7;
  void *__ptr;
  undefined4 *puVar8;
  undefined **ppuVar9;
  undefined4 uVar10;
  char *pcVar11;
  char *pcVar12;
  undefined4 *UNRECOVERED_JUMPTABLE;
  char *__s;
  code *pcVar13;
  int iVar14;
  undefined *puVar15;
  undefined4 uVar16;
  void *pvVar17;
  undefined4 **ppuVar18;
  bool bVar19;
  undefined uVar20;
  undefined uVar21;
  char cVar22;
  undefined auStack_540 [4];
  undefined auStack_53c [36];
  undefined auStack_518 [4];
  int iStack_514;
  undefined4 *puStack_510;
  int iStack_50c;
  char *pcStack_508;
  uint uStack_504;
  undefined *puStack_500;
  undefined4 uStack_4fc;
  undefined4 *local_4f8 [2];
  int *local_4f0;
  uint local_4ec;
  int *local_4e8;
  int *local_4e4;
  undefined4 *local_4e0;
  int *local_4dc;
  uint local_4d8;
  undefined4 local_4d4;
  undefined auStack_4d0 [4];
  code *local_4cc;
  undefined4 local_4a8;
  undefined4 local_4a4;
  undefined4 local_4a0;
  undefined4 local_45c;
  undefined4 local_458;
  undefined4 local_424;
  undefined4 local_3e8;
  undefined4 local_3e4;
  undefined4 local_3e0;
  undefined4 local_3d4;
  undefined4 local_378;
  undefined4 uStack_374;
  undefined4 local_370;
  undefined4 local_364;
  undefined4 local_308;
  undefined4 local_304;
  undefined4 local_300;
  undefined4 local_2f4;
  undefined4 local_298;
  undefined4 local_294;
  undefined4 uStack_290;
  undefined4 local_284;
  undefined4 local_258;
  undefined4 local_248;
  undefined4 local_230;
  undefined4 local_22c;
  uint local_228;
  undefined4 local_1e8;
  undefined4 local_1e4;
  undefined local_1c3;
  undefined4 local_17c;
  undefined4 uStack_178;
  undefined4 local_174;
  undefined4 local_170;
  undefined4 local_16c;
  undefined4 uStack_168;
  undefined4 local_164;
  undefined local_db;
  int iStack_28;
  
  puVar15 = &stack0xfffffff8;
  ppuVar18 = local_4f8;
  UNRECOVERED_JUMPTABLE = &local_4d4;
  uVar16 = 0;
  __s = "\x06)\r";
  iStack_28 = __stack_chk_guard;
  local_4d4 = 0;
  local_4d8 = param_1;
LAB_000aec2a:
  do {
    local_4f8[0] = UNRECOVERED_JUMPTABLE;
    iVar2 = getopt_long(local_4d8,param_2,&DAT_000c91c3,&UNK_000ea5c4);
    if (iVar2 == -1) break;
    if (iVar2 == 0x76) {
      UNK_000ee39c = strtol(optarg,(char **)0x0,10);
      uVar16 = 2;
      if ((int)UNK_000ee39c < 0x8c) {
        if ((int)UNK_000ee39c < 0x78) {
          if (UNK_000ee39c == 100) goto LAB_000aec2a;
          uVar21 = 0x6d < UNK_000ee39c;
          cVar22 = SBORROW4(UNK_000ee39c,0x6e);
          uVar20 = UNK_000ee39c == 0x6e;
        }
        else {
          if (UNK_000ee39c == 0x78) goto LAB_000aec26;
          uVar21 = 0x81 < UNK_000ee39c;
          cVar22 = SBORROW4(UNK_000ee39c,0x82);
          uVar20 = UNK_000ee39c == 0x82;
        }
joined_r0x000aec22:
        if (!(bool)uVar20) {
LAB_000af06e:
          iVar2 = 0x3d4b0;
          ppuVar9 = &PTR_optarg_000ec520;
          do {
            fprintf((FILE *)(*(int *)(iVar2 + 0xaf078) + 0xa8),"Unrecognized GLSL version `%s\'\n",
                    *(undefined4 *)*ppuVar9);
LAB_000af086:
            uVar16 = 0xaf08f;
            iVar2 = _Z10usage_failPKc(*param_2);
            if ((bool)uVar21 && !(bool)uVar20) {
              uVar20 = iVar2 == 0;
            }
            if ((bool)uVar21 && !(bool)uVar20) {
                    /* WARNING: Bad instruction - Truncating control flow here */
              halt_baddata();
            }
LAB_000af138:
            uVar3 = UNRECOVERED_JUMPTABLE[0x1d];
            uVar10 = UNRECOVERED_JUMPTABLE[0x10];
            *(undefined **)(__s + 0x74) = puVar15;
            UNRECOVERED_JUMPTABLE[0x18] = uVar10;
            __s[9] = (char)puVar15;
            iVar2 = UNRECOVERED_JUMPTABLE[0x10];
            pcVar11 = *(char **)(__s + 100);
            *(uint *)(__s + 0x74) = uVar3;
            uVar6 = (uint)puVar15 >> 7 & 1;
            cVar1 = SUB41(__s,0);
            *(code *)(UNRECOVERED_JUMPTABLE + 3) = cVar1;
            if (iVar2 < 0) goto LAB_000af054;
            bVar19 = iVar2 < 0;
            if (!bVar19) {
              iVar14 = *(int *)(iVar2 + 0x14);
              *(undefined4 **)(__s + 0x54) = UNRECOVERED_JUMPTABLE;
              *(code *)(UNRECOVERED_JUMPTABLE + 3) = cVar1;
              iStack_50c = UNRECOVERED_JUMPTABLE[0x1d];
              *(code *)(iStack_50c + 0xd) = cVar1;
              uVar10 = *(undefined4 *)(iStack_50c + 0x60);
              __s[0x11] = (char)puVar15;
              *(undefined4 *)(iStack_50c + 0x50) = uVar10;
              uVar3 = *(uint *)(puVar15 + 0x14);
              *(char *)(iVar14 + 0x11) = (char)iVar2;
              uStack_504 = (uint)__s >> 8;
              ppuVar18 = (undefined4 **)auStack_540;
              UNRECOVERED_JUMPTABLE = (undefined4 *)0x20;
              iStack_514 = __stack_chk_guard;
              puStack_510 = param_2;
              pcStack_508 = __s;
              puStack_500 = puVar15;
              uStack_4fc = uVar16;
              iVar14 = _ZN23ir_hierarchical_visitorC1Ev(auStack_53c);
              iVar2 = 0x3b482;
              pcVar12 = (char *)0x1;
LAB_000af19c:
              *(undefined4 **)((int)ppuVar18 + 0x20) = UNRECOVERED_JUMPTABLE;
              *(int *)((int)ppuVar18 + 4) = iVar2 + 0xaf1aa;
              *(undefined *)((int)ppuVar18 + 0x29) = 0;
              *(undefined4 *)((int)ppuVar18 + 0x24) = 0;
              *(char *)((int)ppuVar18 + 0x28) = (char)pcVar11;
              _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(iVar14,uVar3,pcVar12);
              if (__stack_chk_guard == *(int *)((int)ppuVar18 + 0x2c)) {
                return;
              }
                    /* WARNING: Subroutine does not return */
              __stack_chk_fail(*(undefined *)((int)ppuVar18 + 0x29));
            }
            if (bVar19 == (bool)cVar22) {
              if (bVar19) goto LAB_000aeffc;
              if (-1 < iVar2) {
                iVar14 = *(int *)(pcVar11 + 100);
                *(char **)(uVar3 + 0x54) = pcVar11;
                uVar21 = *(undefined *)(iVar14 + 9);
                UNRECOVERED_JUMPTABLE[0x11] = iVar14;
                    /* WARNING: Could not recover jumptable at 0x000af0b8. Too many branches */
                    /* WARNING: Treating indirect jump as call */
                (*(code *)UNRECOVERED_JUMPTABLE)(iVar2,uVar21,pcVar11,UNRECOVERED_JUMPTABLE[0x1d]);
                return;
              }
              goto LAB_000af00c;
            }
            pcVar12 = pcVar11;
            if (cVar22 == '\0') goto LAB_000af0e8;
            while (uVar21 = uVar6 != 0, cVar22 == '\0') {
              __s[0x18] = (char)uVar3;
              *(code *)((int)UNRECOVERED_JUMPTABLE + 9) = SUB41(__s,0);
              pcVar12 = pcVar11;
LAB_000af0e8:
              pcVar11 = __s;
              *(uint *)(pcVar11 + 0x70) = uVar3;
              pcVar11[0xd] = (char)(uVar3 << 1);
              UNRECOVERED_JUMPTABLE = (undefined4 *)((int)pcVar11 * 2);
              while( true ) {
                *(uint *)(pcVar11 + 0x70) = uVar3;
                __s = (char *)(UNRECOVERED_JUMPTABLE[0x1d] * 2);
                *(uint *)(__s + 0x60) = uVar3;
                *(char **)(uVar3 + 0x14) = pcVar12;
                *(uint *)(__s + 0x30) = uVar3;
                puVar15 = *(undefined **)(__s + 0x54);
                uVar6 = uVar3 & 0x80000000;
                pcVar11 = pcVar12;
                if (cVar22 != '\0') break;
                *(char **)(uVar3 + 0x24) = pcVar12;
                iVar2 = *(int *)(iVar2 + 100);
                uVar3 = UNRECOVERED_JUMPTABLE[0x1d];
                iVar14 = UNRECOVERED_JUMPTABLE[0x10];
                *(undefined **)(__s + 0x74) = puVar15;
                UNRECOVERED_JUMPTABLE[0x18] = iVar14;
                __s[9] = (char)puVar15;
                cVar22 = SBORROW4((int)pcVar12,0x73);
                pcVar12 = pcVar12 + -0x73;
                pcVar11 = (char *)0xa;
                if ((bool)cVar22 == false) {
                  __s = pcVar11;
                  if (-1 < iVar14) goto LAB_000af19c;
                  goto LAB_000af138;
                }
              }
            }
            ppuVar9 = (undefined **)0x6e;
            __s = (char *)0x60;
            puVar15 = (undefined *)0x73;
            uVar20 = iVar2 == 0;
            if (!(bool)uVar21 || (bool)uVar20) {
                    /* WARNING: Bad instruction - Truncating control flow here */
              halt_baddata();
            }
          } while( true );
        }
      }
      else {
        if (299 < (int)UNK_000ee39c) {
          if (UNK_000ee39c != 300) {
            uVar21 = 0x149 < UNK_000ee39c;
            cVar22 = SBORROW4(UNK_000ee39c,0x14a);
            uVar20 = UNK_000ee39c == 0x14a;
            goto joined_r0x000aec22;
          }
          goto LAB_000aec2a;
        }
        uVar21 = 0x8b < UNK_000ee39c;
        cVar22 = SBORROW4(UNK_000ee39c,0x8c);
        bVar19 = UNK_000ee39c == 0x8c;
        if (!bVar19) {
          uVar21 = 0x95 < UNK_000ee39c;
          cVar22 = SBORROW4(UNK_000ee39c,0x96);
        }
        uVar20 = bVar19 || UNK_000ee39c == 0x96;
        if (!bVar19 && UNK_000ee39c != 0x96) goto LAB_000af06e;
      }
LAB_000aec26:
      uVar16 = 0;
    }
  } while( true );
  uVar21 = local_4d8 <= optind;
  cVar22 = SBORROW4(optind,local_4d8);
  uVar20 = optind == local_4d8;
  if ((int)local_4d8 <= (int)optind) goto LAB_000af086;
  _Z30initialize_context_to_defaultsP10gl_context6gl_api(auStack_4d0,uVar16);
  local_db = 1;
  local_174 = 0xffff;
  local_17c = 0xffff;
  uStack_178 = 0xffff;
  local_170 = 0x400;
  local_16c = 0x400;
  uStack_168 = 0x40;
  local_298 = 0x400;
  local_284 = 0x10;
  local_294 = 0;
  uStack_290 = 0;
  local_164 = 0x400;
  local_228 = UNK_000ee39c;
  if ((int)UNK_000ee39c < 0x8c) {
    if ((int)UNK_000ee39c < 0x78) {
      if (UNK_000ee39c == 100) {
        local_248 = 8;
        local_4a4 = 8;
        local_45c = 0;
        local_258 = 2;
        local_1e8 = 0;
        local_1e4 = 0;
        local_458 = 0;
        local_4a8 = 0;
        local_4a0 = 8;
        local_3d4 = 0;
        local_424 = 8;
        local_3e8 = 0x200;
        local_3e0 = 0x20;
        local_2f4 = 8;
        local_308 = 0x40;
        local_304 = 0x20;
        goto LAB_000aede6;
      }
      if (UNK_000ee39c != 0x6e) goto LAB_000aede8;
LAB_000aed3e:
      local_4a4 = 2;
      local_45c = 6;
      local_258 = 1;
      local_248 = 8;
      local_1e8 = 0;
      local_1e4 = 0;
      local_4a8 = 2;
      local_3d4 = 0;
      local_3e8 = 0x200;
      local_304 = 0x20;
      local_3e0 = 0x20;
      local_308 = 0x40;
      local_2f4 = 2;
    }
    else {
      if (UNK_000ee39c == 0x78) goto LAB_000aed3e;
      if (UNK_000ee39c != 0x82) goto LAB_000aede8;
LAB_000aecb6:
      local_248 = 0x10;
      local_4a4 = 0x10;
      local_45c = 8;
      local_304 = 0x40;
      local_258 = 8;
      local_1e8 = 0xfffffff8;
      local_1e4 = 7;
      local_4a8 = 8;
      local_3d4 = 0x10;
      local_3e8 = 0x400;
      local_3e0 = 0x40;
      local_308 = 0x400;
      local_2f4 = 0x10;
    }
    local_424 = 0x10;
    local_458 = 8;
    local_4a0 = 2;
  }
  else {
    if ((int)UNK_000ee39c < 300) {
      if (UNK_000ee39c == 0x8c) goto LAB_000aecb6;
      if (UNK_000ee39c != 0x96) goto LAB_000aede8;
LAB_000aecf2:
      local_258 = 8;
      local_458 = 8;
      local_4a8 = 8;
      local_4a0 = 2;
      local_364 = 0x10;
      local_378 = 0x400;
      uStack_374 = 0x40;
      local_370 = 0x80;
      local_308 = 0x400;
      local_304 = 0x80;
      local_230 = 0x100;
      local_4a4 = 0x30;
      local_22c = 0x400;
    }
    else {
      if (UNK_000ee39c != 300) {
        if (UNK_000ee39c != 0x14a) goto LAB_000aede8;
        goto LAB_000aecf2;
      }
      local_4a4 = 0x20;
      local_258 = 4;
      local_458 = 0;
      local_4a8 = 0;
      local_4a0 = 0;
      local_308 = 0xe0;
      local_304 = 0x3c;
    }
    local_1e4 = 7;
    local_1e8 = 0xfffffff8;
    local_2f4 = 0x10;
    local_3d4 = 0x10;
    local_3e0 = 0x40;
    local_3e8 = 0x400;
    local_424 = 0x10;
    local_45c = 8;
    local_248 = 0xf;
  }
LAB_000aede6:
  local_300 = 0;
  local_3e4 = 0;
LAB_000aede8:
  local_1c3 = 1;
  bVar19 = false;
  local_4cc = _mesa_new_shader;
  uVar3 = rzalloc_size(0,0xec);
  uVar16 = ralloc_strdup(uVar3,&DAT_000c91c3);
  *(undefined4 *)(uVar3 + 0xcc) = uVar16;
  if ((int)optind < (int)local_4d8) {
    local_4dc = (int *)&optind;
    local_4e4 = (int *)&optind;
    local_4e8 = (int *)&optind;
    local_4f0 = (int *)&optind;
    local_4ec = uVar3;
    local_4e0 = param_2;
    do {
      uVar16 = reralloc_array_size(uVar3,*(undefined4 *)(uVar3 + 0x18),4,*(int *)(uVar3 + 0x14) + 1)
      ;
      *(undefined4 *)(uVar3 + 0x18) = uVar16;
      puVar4 = (uint *)rzalloc_size(uVar3,0x170);
      iVar2 = *(int *)(uVar3 + 0x14);
      *(uint **)(*(int *)(uVar3 + 0x18) + iVar2 * 4) = puVar4;
      *(int *)(uVar3 + 0x14) = iVar2 + 1;
      __s = (char *)param_2[*local_4dc];
      sVar5 = strlen(__s);
      uVar21 = 4 < sVar5;
      cVar22 = SBORROW4(sVar5,5);
      uVar20 = sVar5 == 5;
      if (sVar5 < 6) goto LAB_000af086;
      __s = __s + (sVar5 - 5);
      iVar2 = strncmp(".vert",__s,5);
      if ((iVar2 == 0) || (iVar2 = strncmp(".glsl",__s,5), iVar2 == 0)) {
        uVar6 = 0x8b31;
      }
      else {
        iVar2 = strncmp(".geom",__s,5);
        if (iVar2 == 0) {
          uVar6 = 0x8dd9;
        }
        else {
          iVar2 = strncmp(".frag",__s,5);
          if (iVar2 == 0) {
            uVar6 = 0x8b30;
          }
          else {
            iVar2 = strncmp(".comp",__s,5);
            uVar20 = iVar2 == 0;
            uVar21 = 1;
            cVar22 = '\0';
            if (!(bool)uVar20) goto LAB_000af086;
            uVar6 = 0x91b9;
          }
        }
      }
      *puVar4 = uVar6;
      uVar6 = uVar6 & 0x1fff;
      if (uVar6 == 0x11b9) {
        uVar6 = 3;
      }
      else if (uVar6 == 0xdd9) {
        uVar6 = 1;
      }
      else if (uVar6 == 0xb30) {
        uVar6 = 2;
      }
      else {
        uVar6 = 0;
      }
      puVar4[1] = uVar6;
      __stream = fopen((char *)param_2[*local_4e4],"rb");
      if (__stream == (FILE *)0x0) {
        puVar4[6] = 0;
LAB_000af054:
        printf("File \"%s\" does not exist.\n",local_4e0[optind]);
                    /* WARNING: Subroutine does not return */
        exit(1);
      }
      fseek(__stream,0,2);
      pcVar7 = (code *)ftell(__stream);
      fseek(__stream,0,0);
      __ptr = (void *)ralloc_size(uVar3,pcVar7 + 1);
      pvVar17 = (void *)0x0;
      if (__ptr != (void *)0x0) {
        pcVar13 = (code *)0x0;
        do {
          UNRECOVERED_JUMPTABLE = (undefined4 *)(pcVar7 + -(int)pcVar13);
          puVar8 = (undefined4 *)
                   fread((code *)((int)__ptr + (int)pcVar13),1,(size_t)UNRECOVERED_JUMPTABLE,
                         __stream);
          if (puVar8 < UNRECOVERED_JUMPTABLE) {
            free(__ptr);
            pvVar17 = (void *)0x0;
            uVar3 = local_4ec;
            goto LAB_000aef9c;
          }
          pcVar13 = pcVar13 + (int)puVar8;
        } while ((puVar8 != (undefined4 *)0x0) && (pcVar13 < pcVar7));
        *(code *)((int)__ptr + (int)pcVar13) = (code)0x0;
        uVar3 = local_4ec;
        pvVar17 = __ptr;
      }
LAB_000aef9c:
      fclose(__stream);
      puVar4[6] = (uint)pvVar17;
      if (pvVar17 == (void *)0x0) goto LAB_000af054;
      _Z14compile_shaderP10gl_contextP9gl_shader(auStack_4d0,puVar4);
      param_2 = local_4e0;
      if (*(char *)puVar4[9] != '\0') {
        printf("Info log for %s:\n%s\n",local_4e0[*local_4f0]);
      }
      if (*(char *)((int)puVar4 + 0x15) == '\0') {
        bVar19 = true;
        goto LAB_000aefde;
      }
      iVar2 = *local_4e8;
      *local_4e8 = iVar2 + 1;
    } while (iVar2 + 1 < (int)local_4d8);
    bVar19 = false;
  }
LAB_000aefde:
  if ((!bVar19) && (do_link != 0)) {
    _Z12link_shadersP10gl_contextP17gl_shader_program(auStack_4d0,uVar3);
    pcVar11 = *(char **)(uVar3 + 0xcc);
LAB_000aeffc:
    if (*pcVar11 != '\0') {
      printf("Info log for linking:\n%s\n");
    }
  }
LAB_000af00c:
  iVar2 = 0x36;
  do {
    ralloc_free(*(undefined4 *)(uVar3 + iVar2 * 4));
    iVar2 = iVar2 + 1;
  } while (iVar2 != 0x3a);
  ralloc_free(uVar3);
  _mesa_glsl_release_types();
  _Z36_mesa_glsl_release_builtin_functionsv();
  if (__stack_chk_guard - *(int *)(puVar15 + -0x20) == 0) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(__stack_chk_guard - *(int *)(puVar15 + -0x20));
}


/* address=000af178 symbol=_Z12do_algebraicP9exec_listbPK26gl_shader_compiler_options */

void _Z12do_algebraicP9exec_listbPK26gl_shader_compiler_options
               (undefined4 param_1,undefined param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined **local_44 [7];
  undefined4 local_28;
  undefined4 local_24;
  undefined local_20;
  undefined local_1f;
  int local_1c;
  
  local_1c = __stack_chk_guard;
  uVar1 = _ZN23ir_hierarchical_visitorC1Ev(local_44);
  local_44[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000ea62c;
  local_1f = 0;
  local_24 = 0;
  local_28 = param_3;
  local_20 = param_2;
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(uVar1,param_1,1);
  if (__stack_chk_guard != local_1c) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(local_1f);
  }
  return;
}


/* address=000af1e4 symbol=FUN_000af1e4 */

/* WARNING: Removing unreachable block (ram,0x000aff72) */
/* WARNING: Removing unreachable block (ram,0x000aff5e) */
/* WARNING: Removing unreachable block (ram,0x000aff68) */
/* WARNING: Removing unreachable block (ram,0x000aff7c) */
/* WARNING: Removing unreachable block (ram,0x000aff90) */
/* WARNING: Removing unreachable block (ram,0x000affa4) */
/* WARNING: Removing unreachable block (ram,0x000affb8) */
/* WARNING: Removing unreachable block (ram,0x000afff0) */

void FUN_000af1e4(int param_1,int **param_2)

{
  ushort uVar1;
  ushort uVar2;
  int iVar3;
  int *piVar4;
  uint uVar5;
  int *piVar6;
  int iVar7;
  int iVar8;
  float fVar9;
  float *pfVar10;
  undefined4 uVar11;
  undefined4 uVar12;
  int iVar13;
  int iVar14;
  int *piVar15;
  code *pcVar16;
  int iVar17;
  int **ppiVar18;
  uint uVar19;
  int *piVar20;
  int iVar21;
  int iVar22;
  int *piVar23;
  uint in_r12;
  char cVar24;
  bool bVar25;
  int local_a0;
  int iStack_9c;
  undefined4 local_98;
  undefined4 uStack_94;
  undefined4 local_90;
  undefined4 uStack_8c;
  int local_58 [4];
  int *local_48 [5];
  int local_34;
  
  local_34 = __stack_chk_guard;
  piVar23 = *param_2;
  if (((piVar23 != (int *)0x0) && (piVar23[3] == 4)) && (iVar3 = piVar23[6], iVar3 != 0x69)) {
    uVar19 = 0;
    local_48[2] = (int *)0x0;
    local_48[3] = (int *)0x0;
    local_48[0] = (int *)0x0;
    local_48[1] = (int *)0x0;
    local_58[2] = 0;
    local_58[3] = 0;
    local_58[0] = 0;
    local_58[1] = 0;
LAB_000af27a:
    if (iVar3 == 0x69) {
      uVar5 = ((uint)*(ushort *)(piVar23[4] + 8) << 0x14) >> 0x1d;
    }
    else {
      uVar5 = _ZN13ir_expression16get_num_operandsE23ir_expression_operation();
    }
    piVar4 = piVar23;
    if (uVar19 < uVar5) {
      piVar6 = (int *)piVar23[uVar19 + 7];
      if (((*(byte *)(piVar6[4] + 9) & 0x60) == 0) || (*(int *)(piVar6[4] + 4) != 2))
      goto LAB_000af25a;
      goto LAB_000af332;
    }
    iVar3 = *(int *)(param_1 + 0x20);
    if (iVar3 == 0) {
      iVar3 = ralloc_parent(piVar23);
      *(int *)(param_1 + 0x20) = iVar3;
    }
    piVar15 = local_48[2];
    piVar6 = local_48[0];
    iVar21 = local_58[0];
    switch(piVar23[6]) {
    case 0x3e:
      if ((local_48[0] == (int *)0x0) ||
         (iVar3 = (**(code **)(*local_48[0] + 0x28))(local_48[0]), iVar3 != 1)) {
        if (local_48[1] == (int *)0x0) {
          if (piVar6 != (int *)0x0) {
            uVar11 = 0;
            iVar3 = local_58[1];
LAB_000afe3c:
            FUN_000b031c(param_1,piVar23,uVar11,iVar3);
          }
        }
        else {
          iVar3 = (**(code **)(*local_48[1] + 0x28))();
          if (iVar3 == 1) goto LAB_000afabc;
          if (piVar6 == (int *)0x0) {
            uVar11 = 1;
            iVar3 = local_58[0];
            goto LAB_000afe3c;
          }
        }
        if ((local_58[1] == 0) || (*(int *)(local_58[1] + 0x18) != 2)) {
          if ((*(char *)(*(int *)(param_1 + 0x1c) + 0x14) != '\0') &&
             (((local_58[0] != 0 && (*(int *)(local_58[0] + 0x18) == 0x3e)) && (local_58[1] != 0))))
          {
            iVar3 = *(int *)(*(int *)(local_58[0] + 0x10) + 4);
            bVar25 = iVar3 == 2;
            if (bVar25) {
              iVar3 = *(int *)(local_58[1] + 0x18);
            }
            if ((bVar25 && iVar3 == 0x3e) && (*(int *)(*(int *)(local_58[1] + 0x10) + 4) == 2)) {
              iVar3 = *(int *)(local_58[1] + 0x1c);
              iVar21 = *(int *)(local_58[1] + 0x20);
              iVar7 = *(int *)(local_58[0] + 0x1c);
              if (*(int *)(iVar21 + 0xc) != 5) {
                iVar21 = 0;
              }
              if (*(int *)(iVar3 + 0xc) != 5) {
                iVar3 = 0;
              }
              iVar8 = 0;
              if (*(int *)(*(int *)(local_58[0] + 0x20) + 0xc) == 5) {
                iVar8 = *(int *)(local_58[0] + 0x20);
              }
              if (((iVar7 != 0) && (*(int *)(iVar7 + 0xc) == 5)) &&
                 ((iVar8 != 0 &&
                  (((((*(ushort *)(iVar7 + 0x1c) & 0x700) == 0x100 && (iVar3 != 0)) &&
                    (uVar1 = *(ushort *)(iVar8 + 0x1c), (uVar1 & 0x700) == 0x100)) && (iVar21 != 0))
                  )))) {
                uVar2 = *(ushort *)(iVar3 + 0x1c);
                uVar19 = uVar2 & 0x700;
                bVar25 = uVar19 == 0x100;
                if (bVar25) {
                  in_r12 = (uint)*(ushort *)(iVar21 + 0x1c);
                  uVar19 = in_r12 & 0x700;
                }
                if (bVar25 && uVar19 == 0x100) {
                  *(undefined *)(*(ushort *)(iVar7 + 0x1c) & 3 | (uint)&local_98) = 1;
                  *(undefined *)(uVar1 & 3 | (uint)&local_98) = 1;
                  *(undefined *)(uVar2 & 3 | (uint)&local_98) = 1;
                  *(undefined *)(in_r12 & 3 | (uint)&local_98) = 1;
                  local_98 = 0;
                }
              }
            }
          }
          iVar3 = 0;
          do {
            iVar21 = local_58[iVar3];
            if ((iVar21 != 0) && (*(int *)(iVar21 + 0x18) == 0x40)) {
              iVar7 = 0;
              do {
                iVar8 = *(int *)(iVar21 + iVar7 * 4 + 0x1c);
                if (iVar8 != 0) {
                  iVar13 = *(int *)(iVar8 + 0xc);
                  bVar25 = iVar13 == 4;
                  if (bVar25) {
                    iVar13 = *(int *)(iVar8 + 0x18);
                  }
                  if (bVar25 && iVar13 == 0x3e) {
                    iVar22 = 0x20;
                    iVar13 = 7;
                    do {
                      iVar14 = *(int *)(iVar8 + iVar13 * 4);
                      if (iVar14 != 0) {
                        iVar17 = *(int *)(iVar14 + 0xc);
                        bVar25 = iVar17 == 4;
                        if (bVar25) {
                          iVar17 = *(int *)(iVar14 + 0x18);
                        }
                        if (bVar25 && iVar17 == 2) {
                          iVar17 = piVar23[8 - iVar3];
                          iVar14 = (**(code **)(**(int **)(iVar14 + 0x1c) + 0x14))
                                             (*(int **)(iVar14 + 0x1c),iVar17,0x15);
                          if (((iVar14 == 1) &&
                              (*(int *)(iVar17 + 0x10) == *(int *)(*(int *)(iVar8 + iVar22) + 0x10))
                              ) && (*(int *)(iVar17 + 0x10) ==
                                    *(int *)(*(int *)(iVar21 + (1 - iVar7) * 4 + 0x1c) + 0x10))) {
                            piVar4 = (int *)_ZN10ir_builder3lrpENS_7operandES0_S0_(iVar17);
                            goto LAB_000af332;
                          }
                        }
                      }
                      iVar14 = iVar13 + -7;
                      iVar13 = iVar13 + 1;
                      iVar22 = iVar22 + -4;
                    } while (iVar14 < 1);
                  }
                }
                bVar25 = iVar7 < 1;
                iVar7 = iVar7 + 1;
              } while (bVar25);
            }
            bVar25 = iVar3 < 1;
            iVar3 = iVar3 + 1;
          } while (bVar25);
        }
        else {
          *(undefined *)(param_1 + 0x25) = 1;
          piVar4 = (int *)_ZN10ir_builder3subENS_7operandES0_
                                    (piVar23[7],*(undefined4 *)(local_58[1] + 0x1c));
        }
        goto LAB_000af332;
      }
      break;
    case 0x3f:
      if ((local_48[0] == (int *)0x0) || (iVar3 = (**(code **)(*local_48[0] + 0x28))(), iVar3 != 1))
      goto LAB_000af7c6;
LAB_000af7ba:
      iVar3 = piVar23[8];
LAB_000af7be:
      piVar4 = (int *)_ZN10ir_builder3negENS_7operandE(iVar3);
      goto LAB_000af332;
    case 0x40:
      if ((local_48[0] == (int *)0x0) ||
         (iVar3 = (**(code **)(*local_48[0] + 0x2c))(local_48[0]), iVar3 != 1)) {
        piVar15 = local_48[1];
        if ((local_48[1] != (int *)0x0) &&
           (iVar3 = (**(code **)(*local_48[1] + 0x2c))(local_48[1]), iVar3 == 1)) goto LAB_000afabc;
        if (((piVar6 != (int *)0x0) && (iVar3 = (**(code **)(*piVar6 + 0x28))(piVar6), iVar3 != 0))
           || ((piVar15 != (int *)0x0 &&
               (iVar3 = (**(code **)(*piVar15 + 0x28))(piVar15), iVar3 == 1)))) {
          iVar3 = piVar23[4];
          goto LAB_000b0120;
        }
        if ((piVar6 != (int *)0x0) && (iVar3 = (**(code **)(*piVar6 + 0x30))(piVar6), iVar3 == 1))
        goto LAB_000af7ba;
        if (piVar15 == (int *)0x0) {
          if (piVar6 == (int *)0x0) goto LAB_000af332;
          uVar11 = 0;
          iVar3 = local_58[1];
        }
        else {
          iVar3 = (**(code **)(*piVar15 + 0x30))(piVar15);
          if (iVar3 == 1) {
            iVar3 = piVar23[7];
            goto LAB_000af7be;
          }
          if (piVar6 != (int *)0x0) goto LAB_000af332;
          uVar11 = 1;
          iVar3 = local_58[0];
        }
        FUN_000b031c(param_1,piVar23,uVar11,iVar3);
        goto LAB_000af332;
      }
      break;
    case 0x41:
    case 0x43:
    case 0x44:
    case 0x45:
    case 0x4c:
    case 0x4d:
    case 0x50:
    case 0x51:
    case 0x52:
    case 0x5a:
    case 0x5b:
    case 0x5c:
    case 0x5d:
    case 0x5e:
    case 0x5f:
    case 0x60:
    case 0x62:
      goto LAB_000af332;
    case 0x42:
      if (((local_48[0] == (int *)0x0) || (iVar3 = (**(code **)(*local_48[0] + 0x2c))(), iVar3 != 1)
          ) || (*(int *)(piVar23[4] + 4) != 2)) {
        if (local_48[1] != (int *)0x0) {
          pcVar16 = *(code **)(*local_48[1] + 0x2c);
          goto LAB_000afc6e;
        }
      }
      else {
        piVar4 = (int *)ralloc_size(*(undefined4 *)(param_1 + 0x20),0x2c);
        ralloc_set_destructor(piVar4,_ZN9exec_node18_ralloc_destructorEPv);
        _ZN13ir_expressionC2EiPK9glsl_typeP9ir_rvalueS4_S4_S4_
                  (piVar4,5,*(undefined4 *)(piVar23[8] + 0x10),piVar23[8],0,0,0);
      }
      goto LAB_000af332;
    case 0x46:
    case 0x47:
    case 0x48:
    case 0x49:
    case 0x4a:
    case 0x4b:
      ppiVar18 = (int **)((uint)local_48 | 4);
      iVar3 = 0;
      goto LAB_000af30a;
    case 0x4e:
    case 0x4f:
      if ((local_48[0] == (int *)0x0) || (iVar3 = (**(code **)(*local_48[0] + 0x28))(), iVar3 != 1))
      {
LAB_000af7c6:
        if (local_48[1] != (int *)0x0) {
          pcVar16 = *(code **)(*local_48[1] + 0x28);
LAB_000afc6e:
          iVar3 = (*pcVar16)();
LAB_000afc70:
          if (iVar3 == 1) {
            piVar4 = (int *)piVar23[7];
          }
        }
      }
      else {
LAB_000afabc:
        piVar4 = (int *)piVar23[7];
      }
      goto LAB_000af332;
    case 0x53:
      if ((local_48[0] != (int *)0x0) &&
         (iVar3 = (**(code **)(*local_48[0] + 0x2c))(local_48[0]), iVar3 == 1)) break;
      piVar15 = local_48[1];
      if ((local_48[1] != (int *)0x0) &&
         (iVar3 = (**(code **)(*local_48[1] + 0x2c))(local_48[1]), iVar3 == 1)) goto LAB_000afabc;
      if (((piVar6 != (int *)0x0) && (iVar3 = (**(code **)(*piVar6 + 0x28))(piVar6), iVar3 != 0)) ||
         ((piVar15 != (int *)0x0 && (iVar3 = (**(code **)(*piVar15 + 0x28))(piVar15), iVar3 == 1))))
      goto LAB_000b0118;
      if ((((local_58[0] != 0) && (*(int *)(local_58[0] + 0x18) == 1)) && (local_58[1] != 0)) &&
         (*(int *)(local_58[1] + 0x18) == 1)) {
        piVar6 = (int *)_ZN10ir_builder8logic_orENS_7operandES0_
                                  (*(undefined4 *)(local_58[0] + 0x1c),
                                   *(undefined4 *)(local_58[1] + 0x1c));
        goto LAB_000afcb2;
      }
LAB_000b004a:
      iVar3 = (**(code **)(*(int *)piVar23[7] + 0x14))((int *)piVar23[7],piVar23[8],0x15);
      goto LAB_000afc70;
    case 0x54:
      if ((local_48[0] == (int *)0x0) ||
         (iVar3 = (**(code **)(*local_48[0] + 0x28))(local_48[0]), iVar3 != 1)) {
        piVar15 = local_48[1];
        if ((local_48[1] != (int *)0x0) &&
           (iVar3 = (**(code **)(*local_48[1] + 0x28))(local_48[1]), iVar3 == 1)) goto LAB_000afabc;
        if ((piVar6 == (int *)0x0) || (iVar3 = (**(code **)(*piVar6 + 0x2c))(piVar6), iVar3 != 1)) {
          if (piVar15 == (int *)0x0) {
            piVar6 = (int *)piVar23[7];
          }
          else {
            iVar3 = (**(code **)(*piVar15 + 0x2c))(piVar15);
            piVar6 = (int *)piVar23[7];
            if (iVar3 == 1) goto LAB_000afcb2;
          }
          iVar3 = (**(code **)(*piVar6 + 0x14))(piVar6,piVar23[8],0x15);
          if (iVar3 == 1) goto LAB_000b0118;
        }
        else {
          piVar6 = (int *)piVar23[8];
LAB_000afcb2:
          piVar4 = (int *)_ZN10ir_builder9logic_notENS_7operandE(piVar6);
        }
        goto LAB_000af332;
      }
      break;
    case 0x55:
      if ((local_48[0] == (int *)0x0) ||
         (iVar3 = (**(code **)(*local_48[0] + 0x28))(local_48[0]), iVar3 != 1)) {
        piVar15 = local_48[1];
        if ((local_48[1] != (int *)0x0) &&
           (iVar3 = (**(code **)(*local_48[1] + 0x28))(local_48[1]), iVar3 == 1)) goto LAB_000afabc;
        if (((piVar6 == (int *)0x0) || (iVar3 = (**(code **)(*piVar6 + 0x2c))(piVar6), iVar3 == 0))
           && ((piVar15 == (int *)0x0 ||
               (iVar3 = (**(code **)(*piVar15 + 0x2c))(piVar15), iVar3 != 1)))) {
          if ((((local_58[0] == 0) || (*(int *)(local_58[0] + 0x18) != 1)) || (local_58[1] == 0)) ||
             (*(int *)(local_58[1] + 0x18) != 1)) goto LAB_000b004a;
          piVar6 = (int *)_ZN10ir_builder9logic_andENS_7operandES0_
                                    (*(undefined4 *)(local_58[0] + 0x1c),
                                     *(undefined4 *)(local_58[1] + 0x1c));
          goto LAB_000afcb2;
        }
        local_90 = 0x1010101;
        uStack_8c = 0x1010101;
        local_98 = 0x1010101;
        uStack_94 = 0x1010101;
        piVar4 = (int *)ralloc_size(*(undefined4 *)(param_1 + 0x20),0x68);
        ralloc_set_destructor(piVar4,_ZN9exec_node18_ralloc_destructorEPv);
        _ZN11ir_constantC2EPK9glsl_typePK16ir_constant_data(piVar4,piVar23[4],&local_98);
        goto LAB_000af332;
      }
      break;
    case 0x56:
      if (((local_48[0] == (int *)0x0) ||
          (iVar3 = (**(code **)(*local_48[0] + 0x28))(local_48[0]), iVar3 == 0)) &&
         ((piVar15 = local_48[1], local_48[1] == (int *)0x0 ||
          (iVar3 = (**(code **)(*local_48[1] + 0x28))(local_48[1]), iVar3 != 1)))) {
        if ((piVar6 == (int *)0x0) || (iVar3 = (**(code **)(*piVar6 + 0x34))(piVar6), iVar3 != 1)) {
          if ((piVar15 != (int *)0x0) &&
             (iVar3 = (**(code **)(*piVar15 + 0x34))(piVar15), iVar3 == 1)) {
            if ((*(ushort *)(piVar15[4] + 8) & 0xe00) == 0) {
              uVar19 = 0;
            }
            else {
              pfVar10 = (float *)(piVar15 + 6);
              uVar5 = 0;
              uVar19 = 0;
              do {
                fVar9 = *pfVar10;
                pfVar10 = pfVar10 + 1;
                if (fVar9 == 1.0) {
                  uVar19 = uVar5;
                }
                uVar5 = uVar5 + 1;
              } while (uVar5 < ((uint)*(ushort *)(piVar15[4] + 8) << 0x14) >> 0x1d);
            }
            piVar4 = (int *)ralloc_size(*(undefined4 *)(param_1 + 0x20),0x20);
            ralloc_set_destructor(piVar4,_ZN9exec_node18_ralloc_destructorEPv);
            _ZN10ir_swizzleC2EP9ir_rvaluejjjjj(piVar4,piVar23[7],uVar19,0,0,0,1);
          }
        }
        else {
          if ((*(ushort *)(piVar6[4] + 8) & 0xe00) == 0) {
            uVar19 = 0;
          }
          else {
            pfVar10 = (float *)(piVar6 + 6);
            uVar19 = 0;
            uVar5 = 0;
            do {
              fVar9 = *pfVar10;
              pfVar10 = pfVar10 + 1;
              if (fVar9 == 1.0) {
                uVar19 = uVar5;
              }
              uVar5 = uVar5 + 1;
            } while (uVar5 < ((uint)*(ushort *)(piVar6[4] + 8) << 0x14) >> 0x1d);
          }
          piVar4 = (int *)ralloc_size(*(undefined4 *)(param_1 + 0x20),0x20);
          ralloc_set_destructor(piVar4,_ZN9exec_node18_ralloc_destructorEPv);
          _ZN10ir_swizzleC2EP9ir_rvaluejjjjj(piVar4,piVar23[8],uVar19,0,0,0,1);
        }
      }
      else {
LAB_000b0118:
        iVar3 = piVar23[4];
        piVar4 = *(int **)(param_1 + 0x20);
LAB_000b0120:
        piVar4 = (int *)_ZN11ir_constant4zeroEPvPK9glsl_type(piVar4,iVar3);
      }
      goto LAB_000af332;
    case 0x57:
    case 0x58:
      if (*(int *)(piVar23[4] + 4) == 2) {
        iVar3 = 0;
        piVar6 = piVar23;
        do {
          iVar21 = local_58[iVar3];
          if ((iVar21 != 0) && (piVar4 = local_48[1 - iVar3], piVar4 != (int *)0x0)) {
            iVar7 = 0x58;
            if (piVar23[6] == 0x58) {
              iVar7 = 0x57;
            }
            if (*(int *)(iVar21 + 0x18) == iVar7) {
              iVar7 = 0;
              do {
                cVar24 = '%';
                piVar15 = *(int **)(iVar21 + 0x1c + iVar7 * 4);
                if ((piVar15 != (int *)0x0) &&
                   (piVar20 = *(int **)(iVar21 + 0x1c + (1 - iVar7) * 4), piVar20 != (int *)0x0)) {
                  iVar8 = (**(code **)(*piVar4 + 0x2c))(piVar4);
                  if (((iVar8 == 1) && (iVar8 = (**(code **)(*piVar15 + 0x28))(), iVar8 != 0)) ||
                     ((iVar8 = (**(code **)(*piVar15 + 0x2c))(), iVar8 == 1 &&
                      (iVar8 = (**(code **)(*piVar4 + 0x28))(piVar4), iVar8 == 1)))) {
                    piVar6 = (int *)_ZN10ir_builder8saturateENS_7operandE(piVar20);
                  }
                  else {
                    iVar8 = piVar4[4];
                    uVar19 = (uint)*(ushort *)(iVar8 + 8);
                    if ((((uVar19 & 0xe00) != 0x200) || (3 < *(uint *)(iVar8 + 4))) &&
                       (((uVar19 & 0xc00) < 0x201 ||
                        (((uVar19 & 0x7000) != 0x1000 || (3 < *(uint *)(iVar8 + 4))))))) {
LAB_000af618:
                      if (piVar20[3] == 3) {
                        iVar8 = piVar20[4];
                        uVar19 = (uint)*(ushort *)(iVar8 + 8);
                        if ((((uVar19 & 0xe00) == 0x200) && (*(uint *)(iVar8 + 4) < 4)) ||
                           ((0x200 < (uVar19 & 0xc00) &&
                            (((uVar19 & 0x7000) == 0x1000 && (*(uint *)(iVar8 + 4) < 4)))))) {
                          if ((uVar19 << 0x14) >> 0x1d == 0) {
                            uVar5 = 0;
                            uVar19 = 0;
                          }
                          else {
                            iVar8 = 0;
                            uVar5 = 0;
                            do {
                              fVar9 = (float)_ZNK11ir_constant19get_float_componentEj(piVar20,iVar8)
                              ;
                              iVar8 = iVar8 + 1;
                              if ((int)((uint)(fVar9 < 1.0) << 0x1f) < 0) {
                                uVar5 = uVar5 + 1;
                              }
                              uVar19 = ((uint)*(ushort *)(piVar20[4] + 8) << 0x14) >> 0x1d;
                            } while (iVar8 < (int)uVar19);
                          }
                          if ((uVar5 == uVar19) &&
                             (iVar8 = (**(code **)(*piVar4 + 0x28))(piVar4), iVar8 == 1)) {
                            uVar12 = _ZN10ir_builder8saturateENS_7operandE(piVar15);
                            uVar11 = 0x57;
                            goto LAB_000af522;
                          }
                        }
                        iVar8 = (**(code **)(*piVar4 + 0x2c))(piVar4);
                        bVar25 = iVar8 == 1;
                        if (bVar25) {
                          iVar8 = piVar20[3];
                        }
                        if (bVar25 && iVar8 == 3) {
                          iVar8 = piVar20[4];
                          uVar19 = (uint)*(ushort *)(iVar8 + 8);
                          if ((((uVar19 & 0xe00) == 0x200) && (*(uint *)(iVar8 + 4) < 4)) ||
                             ((0x200 < (uVar19 & 0xc00) &&
                              (((uVar19 & 0x7000) == 0x1000 && (*(uint *)(iVar8 + 4) < 4)))))) {
                            if ((uVar19 << 0x14) >> 0x1d == 0) {
                              uVar5 = 0;
                              uVar19 = 0;
                            }
                            else {
                              iVar8 = 0;
                              uVar5 = 0;
                              do {
                                fVar9 = (float)_ZNK11ir_constant19get_float_componentEj
                                                         (piVar20,iVar8);
                                iVar8 = iVar8 + 1;
                                if (fVar9 != 0.0 && fVar9 < 0.0 == NAN(fVar9)) {
                                  uVar5 = uVar5 + 1;
                                }
                                uVar19 = ((uint)*(ushort *)(piVar20[4] + 8) << 0x14) >> 0x1d;
                              } while (iVar8 < (int)uVar19);
                            }
                            if (uVar5 == uVar19) {
                              uVar12 = _ZN10ir_builder8saturateENS_7operandE(piVar15);
                              uVar11 = 0x58;
                              goto LAB_000af522;
                            }
                          }
                        }
                        cVar24 = '\0';
                        if (piVar20[3] != 3) {
                          piVar20 = (int *)0x0;
                        }
                        iVar8 = (**(code **)(*piVar20 + 0x2c))(piVar20);
                        if (iVar8 == 1) {
                          iVar8 = piVar4[4];
                          uVar19 = (uint)*(ushort *)(iVar8 + 8);
                          if ((((uVar19 & 0xe00) == 0x200) && (*(uint *)(iVar8 + 4) < 4)) ||
                             ((0x200 < (uVar19 & 0xc00) &&
                              (((uVar19 & 0x7000) == 0x1000 && (*(uint *)(iVar8 + 4) < 4)))))) {
                            if ((uVar19 << 0x14) >> 0x1d == 0) {
                              uVar5 = 0;
                              uVar19 = 0;
                            }
                            else {
                              iVar8 = 0;
                              uVar5 = 0;
                              do {
                                fVar9 = (float)_ZNK11ir_constant19get_float_componentEj
                                                         (piVar4,iVar8);
                                iVar8 = iVar8 + 1;
                                if (fVar9 != 0.0 && fVar9 < 0.0 == NAN(fVar9)) {
                                  uVar5 = uVar5 + 1;
                                }
                                uVar19 = ((uint)*(ushort *)(piVar4[4] + 8) << 0x14) >> 0x1d;
                              } while (iVar8 < (int)uVar19);
                            }
                            cVar24 = uVar5 == uVar19;
                            if ((bool)cVar24) {
                              uVar11 = _ZN10ir_builder8saturateENS_7operandE(piVar15);
                              piVar6 = (int *)_ZN10ir_builder4exprE23ir_expression_operationNS_7operandES1_
                                                        (0x58,uVar11,piVar4);
                            }
                          }
                          else {
                            cVar24 = '\0';
                          }
                        }
                      }
                      else {
                        cVar24 = '%';
                      }
                      goto LAB_000af74a;
                    }
                    if ((uVar19 << 0x14) >> 0x1d == 0) {
                      uVar5 = 0;
                      uVar19 = 0;
                    }
                    else {
                      iVar8 = 0;
                      uVar5 = 0;
                      do {
                        fVar9 = (float)_ZNK11ir_constant19get_float_componentEj(piVar4,iVar8);
                        iVar8 = iVar8 + 1;
                        if ((int)((uint)(fVar9 < 1.0) << 0x1f) < 0) {
                          uVar5 = uVar5 + 1;
                        }
                        uVar19 = ((uint)*(ushort *)(piVar4[4] + 8) << 0x14) >> 0x1d;
                      } while (iVar8 < (int)uVar19);
                    }
                    if ((uVar5 != uVar19) ||
                       (iVar8 = (**(code **)(*piVar20 + 0x28))(piVar20), iVar8 != 1))
                    goto LAB_000af618;
                    uVar12 = _ZN10ir_builder8saturateENS_7operandE(piVar15);
                    uVar11 = 0x57;
                    piVar20 = piVar4;
LAB_000af522:
                    piVar6 = (int *)_ZN10ir_builder4exprE23ir_expression_operationNS_7operandES1_
                                              (uVar11,uVar12,piVar20);
                  }
                  cVar24 = '\x01';
                }
LAB_000af74a:
                if (cVar24 != '%' && cVar24 != '\0') {
                  piVar4 = piVar6;
                  if (cVar24 != '\0') goto LAB_000af332;
                  break;
                }
                bVar25 = iVar7 < 1;
                iVar7 = iVar7 + 1;
              } while (bVar25);
            }
          }
          bVar25 = iVar3 < 1;
          iVar3 = iVar3 + 1;
          piVar4 = piVar23;
        } while (bVar25);
      }
      goto LAB_000af332;
    case 0x59:
      if ((local_48[0] == (int *)0x0) ||
         (iVar3 = (**(code **)(*local_48[0] + 0x2c))(local_48[0]), piVar4 = piVar6, iVar3 == 0)) {
        piVar15 = local_48[1];
        if ((local_48[1] != (int *)0x0) &&
           (iVar3 = (**(code **)(*local_48[1] + 0x2c))(local_48[1]), iVar3 == 1)) goto LAB_000afabc;
        if ((piVar6 == (int *)0x0) ||
           (iVar3 = (**(code **)(*piVar6 + 0x3c))(piVar6,0x40000000,2), iVar3 != 1)) {
          piVar4 = piVar23;
          if ((piVar15 != (int *)0x0) &&
             (iVar3 = (**(code **)(*piVar15 + 0x3c))(piVar15,0x40000000,2), iVar3 == 1)) {
            iVar3 = ralloc_size(piVar23,0x44);
            ralloc_set_destructor(iVar3,_ZN9exec_node18_ralloc_destructorEPv);
            piVar4 = (int *)_ZN11ir_variableC2EPK9glsl_typePKc16ir_variable_mode14glsl_precision
                                      (iVar3,*(undefined4 *)(piVar23[8] + 0x10),&DAT_000b02d0,10,
                                       *(undefined4 *)(piVar23[8] + 0x14));
            iVar21 = *(int *)(param_1 + 4);
            if (iVar3 != 0) {
              piVar4 = piVar4 + 1;
            }
            *piVar4 = iVar21 + 4;
            piVar4[1] = *(int *)(iVar21 + 8);
            **(int ***)(iVar21 + 8) = piVar4;
            *(int **)(iVar21 + 8) = piVar4;
            _ZN10ir_builder5derefC2EP11ir_variable(&local_98,iVar3);
            piVar4 = (int *)_ZN10ir_builder6assignENS_5derefENS_7operandE(local_98,piVar23[7]);
            if (piVar4 != (int *)0x0) {
              piVar4 = piVar4 + 1;
            }
            *piVar4 = iVar21 + 4;
            piVar4[1] = *(int *)(iVar21 + 8);
            **(int ***)(iVar21 + 8) = piVar4;
            *(int **)(iVar21 + 8) = piVar4;
            _ZN10ir_builder7operandC2EP11ir_variable(&iStack_9c,iVar3);
            _ZN10ir_builder7operandC2EP11ir_variable(&local_a0,iVar3);
            goto LAB_000b00e4;
          }
        }
        else {
          piVar4 = (int *)_ZN10ir_builder4exprE23ir_expression_operationNS_7operandE(0xb,piVar23[8])
          ;
        }
      }
      goto LAB_000af332;
    case 0x61:
      if (((local_48[0] != (int *)0x0) &&
          (iVar3 = (**(code **)(*local_48[0] + 0x28))(local_48[0]), iVar3 != 0)) ||
         ((piVar15 = local_48[1], local_48[1] != (int *)0x0 &&
          (iVar3 = (**(code **)(*local_48[1] + 0x28))(local_48[1]), iVar3 == 1)))) {
        piVar4 = (int *)piVar23[9];
        goto LAB_000af332;
      }
      if ((local_48[2] != (int *)0x0) && (iVar3 = (**(code **)(*local_48[2] + 0x28))(), iVar3 == 1))
      {
        iStack_9c = piVar23[7];
        local_a0 = piVar23[8];
        goto LAB_000b00e4;
      }
      if ((piVar6 == (int *)0x0) || (iVar3 = (**(code **)(*piVar6 + 0x2c))(piVar6), iVar3 != 1)) {
        if ((piVar15 == (int *)0x0) || (iVar3 = (**(code **)(*piVar15 + 0x2c))(piVar15), iVar3 != 1)
           ) goto LAB_000af332;
        iVar3 = piVar23[7];
      }
      else {
        iVar3 = piVar23[8];
      }
      piVar4 = (int *)_ZN10ir_builder3addENS_7operandES0_(iVar3,piVar23[9]);
      goto LAB_000af332;
    case 99:
      if (local_48[2] != (int *)0x0) {
        iVar3 = (**(code **)(*local_48[2] + 0x28))(local_48[2]);
        if (iVar3 == 1) goto LAB_000afabc;
        iVar3 = (**(code **)(*piVar15 + 0x2c))(piVar15);
        if (iVar3 == 1) break;
      }
      iVar3 = (**(code **)(*(int *)piVar23[7] + 0x14))((int *)piVar23[7],piVar23[8],0x15);
      if (iVar3 == 1) goto LAB_000afabc;
      if ((local_48[0] == (int *)0x0) || (iVar3 = (**(code **)(*local_48[0] + 0x28))(), iVar3 != 1))
      {
        if ((local_48[1] == (int *)0x0) ||
           (iVar3 = (**(code **)(*local_48[1] + 0x28))(), iVar3 != 1)) goto LAB_000af332;
        uVar1 = *(ushort *)(*(int *)(piVar23[9] + 0x10) + 8);
        uVar11 = ralloc_size(*(undefined4 *)(param_1 + 0x20),0x68);
        ralloc_set_destructor(uVar11,_ZN9exec_node18_ralloc_destructorEPv);
        _ZN11ir_constantC2Efj(uVar11,0x3f800000,((uint)uVar1 << 0x14) >> 0x1d);
        iVar3 = piVar23[7];
        uVar12 = _ZN10ir_builder3negENS_7operandE(piVar23[9]);
        local_a0 = _ZN10ir_builder3addENS_7operandES0_(uVar11,uVar12);
        iStack_9c = iVar3;
      }
      else {
        local_a0 = piVar23[9];
        iStack_9c = piVar23[8];
      }
LAB_000b00e4:
      piVar4 = (int *)_ZN10ir_builder3mulENS_7operandES0_(iStack_9c,local_a0);
      goto LAB_000af332;
    case 100:
      if (local_48[0] == (int *)0x0) goto LAB_000af332;
      iVar3 = (**(code **)(*local_48[0] + 0x2c))(local_48[0]);
      if (iVar3 != 1) {
        iVar3 = (**(code **)(*piVar6 + 0x28))(piVar6);
        if (iVar3 == 1) {
          piVar4 = (int *)piVar23[9];
        }
        goto LAB_000af332;
      }
      break;
    default:
      switch(piVar23[6]) {
      case 0:
        if (local_58[0] == 0) goto LAB_000af332;
        bVar25 = *(int *)(local_58[0] + 0x18) == 0;
        break;
      case 1:
        if ((local_58[0] != 0) && (uVar19 = *(int *)(local_58[0] + 0x18) - 0x46, uVar19 < 8)) {
          piVar4 = (int *)ralloc_size(iVar3,0x2c);
          ralloc_set_destructor(piVar4,_ZN9exec_node18_ralloc_destructorEPv);
          _ZN13ir_expressionC2EiPK9glsl_typeP9ir_rvalueS4_S4_S4_
                    (piVar4,*(undefined4 *)(&DAT_000b02f0 + uVar19 * 4),piVar23[4],
                     *(undefined4 *)(iVar21 + 0x1c),*(undefined4 *)(iVar21 + 0x20),0,0);
        }
        goto LAB_000af332;
      case 2:
        if (local_58[0] != 0) {
          if (*(int *)(local_58[0] + 0x18) == 2) goto LAB_000afc42;
          if (*(int *)(local_58[0] + 0x18) == 0x3f) {
            *(undefined *)(param_1 + 0x25) = 1;
            piVar4 = (int *)ralloc_size(iVar3,0x2c);
            ralloc_set_destructor(piVar4,_ZN9exec_node18_ralloc_destructorEPv);
            _ZN13ir_expressionC2EiPK9glsl_typeP9ir_rvalueS4_S4_S4_
                      (piVar4,0x3f,piVar23[4],*(undefined4 *)(iVar21 + 0x20),
                       *(undefined4 *)(iVar21 + 0x1c),0,0);
          }
        }
        goto LAB_000af332;
      case 3:
        if ((local_58[0] != 0) && ((*(uint *)(local_58[0] + 0x18) & 0xfffffffe) == 2)) {
          piVar4 = (int *)_ZN10ir_builder3absENS_7operandE(*(undefined4 *)(local_58[0] + 0x1c));
        }
      default:
        goto LAB_000af332;
      case 5:
        if (local_58[0] != 0) {
          iVar3 = *(int *)(local_58[0] + 0x18);
          if (iVar3 == 5) {
            piVar4 = *(int **)(local_58[0] + 0x1c);
          }
          else if (iVar3 == 6) {
            piVar4 = (int *)_ZN10ir_builder4sqrtENS_7operandE(*(undefined4 *)(local_58[0] + 0x1c));
          }
          else if (iVar3 == 7) {
            piVar4 = (int *)_ZN10ir_builder3rsqENS_7operandE(*(undefined4 *)(local_58[0] + 0x1c));
          }
        }
        goto LAB_000af332;
      case 9:
        if (local_58[0] == 0) goto LAB_000af332;
        bVar25 = *(int *)(local_58[0] + 0x18) == 10;
        break;
      case 10:
        if (local_58[0] == 0) goto LAB_000af332;
        bVar25 = *(int *)(local_58[0] + 0x18) == 9;
        break;
      case 0xb:
        if (local_58[0] != 0) {
          if (*(int *)(local_58[0] + 0x18) == 0xc) {
LAB_000afc42:
            piVar4 = *(int **)(local_58[0] + 0x1c);
          }
          else if ((*(int *)(local_58[0] + 0x18) == 0x40) &&
                  (*(char *)(*(int *)(param_1 + 0x1c) + 6) == '\0')) {
            iVar8 = 0x20;
            iVar7 = 7;
            goto LAB_000afdf4;
          }
        }
        goto LAB_000af332;
      case 0xc:
        if (local_58[0] == 0) goto LAB_000af332;
        bVar25 = *(int *)(local_58[0] + 0x18) == 0xb;
      }
      if (bVar25) {
        piVar4 = *(int **)(local_58[0] + 0x1c);
      }
      goto LAB_000af332;
    }
    piVar4 = (int *)piVar23[8];
    goto LAB_000af332;
  }
  goto LAB_000af3b2;
LAB_000af25a:
  piVar4 = (int *)(**(code **)(*piVar6 + 0x18))(piVar6,0);
  local_48[uVar19] = piVar4;
  iVar3 = piVar23[uVar19 + 7];
  if (*(int *)(iVar3 + 0xc) != 4) {
    iVar3 = 0;
  }
  local_58[uVar19] = iVar3;
  uVar19 = uVar19 + 1;
  iVar3 = piVar23[6];
  goto LAB_000af27a;
LAB_000afdf4:
  do {
    iVar13 = *(int *)(local_58[0] + iVar7 * 4);
    if (iVar13 != 0) {
      iVar22 = *(int *)(iVar13 + 0xc);
      bVar25 = iVar22 == 4;
      if (bVar25) {
        iVar22 = *(int *)(iVar13 + 0x18);
      }
      if (bVar25 && iVar22 == 0xc) {
        piVar4 = (int *)ralloc_size(iVar3,0x2c);
        ralloc_set_destructor(piVar4,_ZN9exec_node18_ralloc_destructorEPv);
        _ZN13ir_expressionC2EiPK9glsl_typeP9ir_rvalueS4_S4_S4_
                  (piVar4,0x59,piVar23[4],*(undefined4 *)(iVar13 + 0x1c),
                   *(undefined4 *)(iVar21 + iVar8),0,0);
        break;
      }
    }
    iVar13 = iVar7 + -7;
    iVar8 = iVar8 + -4;
    iVar7 = iVar7 + 1;
  } while (iVar13 < 1);
  goto LAB_000af332;
  while( true ) {
    ppiVar18 = ppiVar18 + -1;
    bVar25 = 0 < iVar3;
    iVar3 = iVar3 + 1;
    if (bVar25) break;
LAB_000af30a:
    iVar21 = local_58[iVar3];
    if (((iVar21 != 0) && (*(int *)(iVar21 + 0x18) == 0x3e)) &&
       ((*ppiVar18 != (int *)0x0 && (iVar7 = (**(code **)(**ppiVar18 + 0x28))(), iVar7 != 0)))) {
      piVar4 = (int *)ralloc_size(*(undefined4 *)(param_1 + 0x20),0x2c);
      ralloc_set_destructor(piVar4,_ZN9exec_node18_ralloc_destructorEPv);
      uVar12 = *(undefined4 *)(iVar21 + 0x1c);
      iVar3 = piVar23[6];
      uVar11 = _ZN10ir_builder3negENS_7operandE(*(undefined4 *)(iVar21 + 0x20));
      _ZN13ir_expressionC2EiP9ir_rvalueS1_(piVar4,iVar3,uVar12,uVar11);
      break;
    }
  }
LAB_000af332:
  if (piVar4 != *param_2) {
    uVar1 = *(ushort *)(piVar23[4] + 8);
    piVar6 = piVar4;
    if ((((0x200 < (uVar1 & 0xc00)) && ((uVar1 & 0x7000) == 0x1000)) &&
        (*(uint *)(piVar23[4] + 4) < 4)) &&
       (((*(ushort *)(piVar4[4] + 8) & 0xe00) == 0x200 && (*(uint *)(piVar4[4] + 4) < 4)))) {
      piVar6 = (int *)ralloc_size(*(undefined4 *)(param_1 + 0x20),0x20);
      ralloc_set_destructor(piVar6,_ZN9exec_node18_ralloc_destructorEPv);
      _ZN10ir_swizzleC2EP9ir_rvaluejjjjj
                (piVar6,piVar4,0,0,0,0,((uint)*(ushort *)(piVar23[4] + 8) << 0x14) >> 0x1d);
    }
    *param_2 = piVar6;
    *(undefined *)(param_1 + 0x25) = 1;
  }
LAB_000af3b2:
  if (__stack_chk_guard != local_34) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b031c symbol=FUN_000b031c */

undefined4 FUN_000b031c(int param_1,int param_2,int param_3,int param_4)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  undefined4 uVar4;
  
  if ((((param_4 != 0) && (*(int *)(param_2 + 0x18) == *(int *)(param_4 + 0x18))) &&
      ((iVar1 = *(int *)(*(int *)(param_2 + 0x1c) + 0x10), (*(byte *)(iVar1 + 9) & 0x60) == 0 ||
       (*(int *)(iVar1 + 4) != 2)))) &&
     ((iVar1 = *(int *)(*(int *)(param_2 + 0x20) + 0x10), (*(byte *)(iVar1 + 9) & 0x60) == 0 ||
      (*(int *)(iVar1 + 4) != 2)))) {
    piVar2 = *(int **)(param_4 + 0x1c);
    if ((((*(byte *)(piVar2[4] + 9) & 0x60) == 0) || (*(int *)(piVar2[4] + 4) != 2)) &&
       ((iVar1 = *(int *)(*(int *)(param_4 + 0x20) + 0x10), (*(byte *)(iVar1 + 9) & 0x60) == 0 ||
        (*(int *)(iVar1 + 4) != 2)))) {
      iVar1 = (**(code **)(*piVar2 + 0x18))(piVar2,0);
      iVar3 = (**(code **)(**(int **)(param_4 + 0x20) + 0x18))(*(int **)(param_4 + 0x20),0);
      if ((iVar3 != 0) && (iVar1 != 0)) {
        return 0;
      }
      if (iVar1 == 0) {
        if (iVar3 == 0) {
          iVar1 = *(int *)(param_4 + 0x1c);
          if (*(int *)(iVar1 + 0xc) != 4) {
            iVar1 = 0;
          }
          iVar1 = FUN_000b031c(param_1,param_2,param_3,iVar1);
          if (iVar1 != 1) {
            iVar1 = *(int *)(param_4 + 0x20);
            if (*(int *)(iVar1 + 0xc) != 4) {
              iVar1 = 0;
            }
            iVar1 = FUN_000b031c(param_1,param_2,param_3,iVar1);
            if (iVar1 != 1) {
              return 0;
            }
          }
          FUN_000b0410(param_4);
          return 1;
        }
        param_2 = param_2 + param_3 * 4;
        uVar4 = *(undefined4 *)(param_4 + 0x1c);
        *(undefined4 *)(param_4 + 0x1c) = *(undefined4 *)(param_2 + 0x1c);
      }
      else {
        param_2 = param_2 + param_3 * 4;
        uVar4 = *(undefined4 *)(param_4 + 0x20);
        *(undefined4 *)(param_4 + 0x20) = *(undefined4 *)(param_2 + 0x1c);
      }
      *(undefined4 *)(param_2 + 0x1c) = uVar4;
      FUN_000b0410(param_4);
      *(undefined *)(param_1 + 0x25) = 1;
      return 1;
    }
  }
  return 0;
}


/* address=000b0410 symbol=FUN_000b0410 */

void FUN_000b0410(int param_1)

{
  ushort uVar1;
  int iVar2;
  
  iVar2 = *(int *)(param_1 + 0x1c);
  uVar1 = *(ushort *)(*(int *)(iVar2 + 0x10) + 8);
  if (((uVar1 & 0xc00) < 0x201) || ((uVar1 & 0x7000) != 0x1000)) {
    iVar2 = *(int *)(param_1 + 0x20);
  }
  else if (3 < *(uint *)(*(int *)(iVar2 + 0x10) + 4)) {
    iVar2 = *(int *)(param_1 + 0x20);
  }
  *(undefined4 *)(param_1 + 0x10) = *(undefined4 *)(iVar2 + 0x10);
  *(undefined4 *)(param_1 + 0x14) = *(undefined4 *)(iVar2 + 0x14);
  return;
}


/* address=000b0448 symbol=_ZN26ir_array_splitting_visitor11split_derefEPP14ir_dereference */

void _ZN26ir_array_splitting_visitor11split_derefEPP14ir_dereference(int param_1,int *param_2)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  int **ppiVar4;
  int iVar5;
  
  iVar5 = *param_2;
  if ((((iVar5 != 0) && (*(int *)(iVar5 + 0xc) == 0)) &&
      (iVar1 = *(int *)(iVar5 + 0x18), iVar1 != 0)) &&
     ((*(int *)(iVar1 + 0xc) == 2 &&
      (ppiVar4 = (int **)**(int ***)(param_1 + 0x1c), *ppiVar4 != (int *)0x0)))) {
    do {
      if (ppiVar4[2] == *(int **)(iVar1 + 0x18)) {
        if (ppiVar4 == (int **)0x0) {
          return;
        }
        iVar1 = *(int *)(iVar5 + 0x1c);
        if (*(int *)(iVar1 + 0xc) != 3) {
          iVar1 = 0;
        }
        if (*(int *)(iVar1 + 0x18) < (int)ppiVar4[3]) {
          iVar5 = ralloc_size(ppiVar4[6],0x1c);
          ralloc_set_destructor(iVar5,_ZN9exec_node18_ralloc_destructorEPv);
          piVar2 = (int *)ppiVar4[5][*(int *)(iVar1 + 0x18)];
        }
        else {
          piVar2 = (int *)ralloc_size(ppiVar4[6],0x44);
          ralloc_set_destructor(piVar2,_ZN9exec_node18_ralloc_destructorEPv);
          _ZN11ir_variableC2EPK9glsl_typePKc16ir_variable_mode14glsl_precision
                    (piVar2,*(undefined4 *)(iVar5 + 0x10),0xb0534,10,*(undefined4 *)(iVar5 + 0x14));
          iVar5 = *ppiVar4[5];
          piVar3 = piVar2;
          if (piVar2 != (int *)0x0) {
            piVar3 = piVar2 + 1;
          }
          *piVar3 = iVar5 + 4;
          piVar3[1] = *(int *)(iVar5 + 8);
          **(int ***)(iVar5 + 8) = piVar3;
          *(int **)(iVar5 + 8) = piVar3;
          iVar5 = ralloc_size(ppiVar4[6],0x1c);
          ralloc_set_destructor(iVar5,_ZN9exec_node18_ralloc_destructorEPv);
        }
        _ZN23ir_dereference_variableC2EP11ir_variable(iVar5,piVar2);
        *param_2 = iVar5;
        return;
      }
      ppiVar4 = (int **)*ppiVar4;
    } while (*ppiVar4 != (int *)0x0);
  }
  return;
}


/* address=000b0540 symbol=_ZN26ir_array_splitting_visitor13handle_rvalueEPP9ir_rvalue */

void _ZN26ir_array_splitting_visitor13handle_rvalueEPP9ir_rvalue(undefined4 param_1,int *param_2)

{
  int iVar1;
  int local_18;
  int local_14;
  
  local_14 = __stack_chk_guard;
  iVar1 = *param_2;
  if (iVar1 != 0) {
    if (2 < *(uint *)(iVar1 + 0xc)) {
      iVar1 = 0;
    }
    local_18 = iVar1;
    if (iVar1 != 0) {
      _ZN26ir_array_splitting_visitor11split_derefEPP14ir_dereference(param_1,&local_18);
      *param_2 = local_18;
    }
  }
  if (__stack_chk_guard != local_14) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b058c symbol=_ZN26ir_array_splitting_visitor11visit_leaveEP13ir_assignment */

void _ZN26ir_array_splitting_visitor11visit_leaveEP13ir_assignment(int *param_1,int param_2)

{
  int **ppiVar1;
  int *piVar2;
  char in_NG;
  
  if (in_NG != '\0') {
    register0x00000054 = (BADSPACEBASE *)&stack0xfffffff0;
  }
  *(int *)((int)register0x00000054 + -4) = __stack_chk_guard;
  *(undefined4 *)((int)register0x00000054 + -8) = *(undefined4 *)(param_2 + 0x10);
  (**(code **)(*param_1 + 0x94))(param_1,(undefined *)((int)register0x00000054 + -8));
  piVar2 = *(int **)((int)register0x00000054 + -8);
  if (2 < (uint)piVar2[3]) {
    piVar2 = (int *)0x0;
  }
  *(int **)(param_2 + 0x10) = piVar2;
  (**(code **)(*piVar2 + 0xc))(piVar2,param_1);
  (**(code **)(*param_1 + 0x94))(param_1,param_2 + 0x14);
  (**(code **)(**(int **)(param_2 + 0x14) + 0xc))(*(int **)(param_2 + 0x14),param_1);
  ppiVar1 = (int **)(param_2 + 0x18);
  if (*ppiVar1 != (int *)0x0) {
    (**(code **)(*param_1 + 0x94))(param_1,ppiVar1);
    (**(code **)(**ppiVar1 + 0xc))(*ppiVar1,param_1);
  }
  if (__stack_chk_guard - *(int *)((int)register0x00000054 + -4) != 0) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(__stack_chk_guard - *(int *)((int)register0x00000054 + -4));
  }
  return;
}


/* address=000b0618 symbol=_Z21optimize_split_arraysP9exec_listbb */

void _Z21optimize_split_arraysP9exec_listbb(int *param_1,int param_2,undefined param_3)

{
  int **ppiVar1;
  int **ppiVar2;
  int *piVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  int *piVar11;
  uint uVar12;
  int **ppiVar13;
  undefined4 local_78 [7];
  int ***local_5c;
  undefined **local_58 [6];
  int **local_3f;
  int *local_3b;
  int ***local_37;
  undefined4 local_30;
  undefined local_2c;
  int local_28;
  
  local_28 = __stack_chk_guard;
  _ZN23ir_hierarchical_visitorC1Ev(local_58);
  local_58[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000ea794;
  local_3b = (int *)0x0;
  local_3f = &local_3b;
  local_37 = &local_3f;
  local_2c = param_3;
  local_30 = ralloc_context(0);
  local_3b = (int *)0x0;
  local_3f = &local_3b;
  local_37 = &local_3f;
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(local_58,param_1,1);
  if (param_2 == 0) {
    iVar8 = *param_1;
    if (iVar8 != 0) {
      iVar8 = iVar8 + -4;
    }
    piVar11 = (int *)(iVar8 + 4);
    if (*piVar11 != 0) {
      do {
        if (((iVar8 != 0) && (*(int *)(iVar8 + 0xc) == 7)) &&
           (piVar3 = (int *)FUN_000b0904(local_58), piVar3 != (int *)0x0)) {
          iVar8 = *piVar3;
          *(int *)(iVar8 + 4) = piVar3[1];
          *(int *)piVar3[1] = iVar8;
          piVar3[1] = 0;
          *piVar3 = 0;
        }
        iVar8 = *piVar11;
        if (iVar8 != 0) {
          iVar8 = iVar8 + -4;
        }
        piVar11 = (int *)(iVar8 + 4);
      } while (*piVar11 != 0);
    }
  }
  ppiVar2 = (int **)*local_3f;
  ppiVar13 = local_3f;
  while (ppiVar1 = ppiVar2, ppiVar1 != (int **)0x0) {
    if ((*(char *)((int)ppiVar13 + 0x11) == '\0') || (*(char *)(ppiVar13 + 4) == '\0')) {
      piVar11 = *ppiVar13;
      piVar11[1] = (int)ppiVar13[1];
      *ppiVar13[1] = (int)piVar11;
      ppiVar13[1] = (int *)0x0;
      *ppiVar13 = (int *)0x0;
    }
    ppiVar13 = ppiVar1;
    ppiVar2 = (int **)*ppiVar1;
  }
  if (local_3f != &local_3b) {
    uVar4 = ralloc_context(0);
    piVar11 = *local_3f;
    ppiVar13 = local_3f;
    while (piVar11 != (int *)0x0) {
      piVar11 = (int *)(ppiVar13 + 2);
      iVar8 = *piVar11;
      iVar9 = *(int *)(iVar8 + 0x10);
      iVar10 = *(int *)(iVar8 + 0x18);
      if (((*(byte *)(iVar9 + 9) & 0x60) == 0) || (*(int *)(iVar9 + 4) != 2)) {
        uVar5 = *(undefined4 *)(iVar9 + 0x14);
      }
      else {
        uVar5 = _ZNK9glsl_type11column_typeEv(iVar9);
        iVar8 = *piVar11;
      }
      iVar8 = ralloc_parent(iVar8);
      ppiVar13[6] = (int *)iVar8;
      iVar8 = ralloc_array_size(uVar4,4,ppiVar13[3]);
      ppiVar13[5] = (int *)iVar8;
      if (ppiVar13[3] == (int *)0x0) {
        iVar8 = *piVar11;
      }
      else {
        iVar8 = *piVar11;
        uVar12 = 0;
        do {
          uVar6 = ralloc_asprintf(uVar4,0xb087c,*(undefined4 *)(iVar8 + 0x14),uVar12);
          uVar7 = ralloc_size(ppiVar13[6],0x44);
          ralloc_set_destructor(uVar7,_ZN9exec_node18_ralloc_destructorEPv);
          _ZN11ir_variableC2EPK9glsl_typePKc16ir_variable_mode14glsl_precision
                    (uVar7,uVar5,uVar6,(uint)(*(int *)((int)ppiVar13[2] + 0x18) << 0x13) >> 0x1c,
                     (uint)(iVar10 << 0xf) >> 0x1e);
          *(undefined4 *)((int)ppiVar13[5] + uVar12 * 4) = uVar7;
          iVar9 = (int)ppiVar13[5];
          iVar8 = (int)ppiVar13[2];
          piVar11 = *(int **)(iVar9 + uVar12 * 4);
          if (piVar11 != (int *)0x0) {
            piVar11 = piVar11 + 1;
          }
          *piVar11 = iVar8 + 4;
          piVar11[1] = *(int *)(iVar8 + 8);
          **(int ***)(iVar8 + 8) = piVar11;
          *(int **)(iVar8 + 8) = piVar11;
          if (*(int *)(iVar8 + 0x18) << 0xc < 0) {
            iVar8 = *(int *)(iVar9 + uVar12 * 4);
            *(undefined *)(iVar8 + 0x1c) = *(undefined *)(iVar8 + 0x1c);
            *(uint *)(iVar8 + 0x18) = *(uint *)(iVar8 + 0x18) | 0x80000;
            iVar8 = (int)ppiVar13[2];
            *(uint *)(*(int *)((int)ppiVar13[5] + uVar12 * 4) + 0x24) =
                 *(int *)(iVar8 + 0x24) + uVar12;
          }
          uVar12 = uVar12 + 1;
        } while (uVar12 < ppiVar13[3]);
      }
      iVar9 = *(int *)(iVar8 + 4);
      *(undefined4 *)(iVar9 + 4) = *(undefined4 *)(iVar8 + 8);
      **(int **)(iVar8 + 8) = iVar9;
      *(undefined4 *)(iVar8 + 8) = 0;
      *(undefined4 *)(iVar8 + 4) = 0;
      ppiVar13 = (int **)*ppiVar13;
      piVar11 = *ppiVar13;
    }
    uVar5 = _ZN23ir_hierarchical_visitorC1Ev(local_78);
    local_78[0] = 0xea6e0;
    local_5c = &local_3f;
    _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(uVar5,param_1,1);
    ralloc_free(uVar4);
  }
  local_58[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000ea794;
  ralloc_free(local_30);
  if (__stack_chk_guard - local_28 != 0) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(__stack_chk_guard - local_28);
  }
  return;
}


/* address=000b0894 symbol=_ZN26ir_array_splitting_visitorD2Ev */

void _ZN26ir_array_splitting_visitorD2Ev(void)

{
  return;
}


/* address=000b0896 symbol=_ZN26ir_array_splitting_visitorD0Ev */

void _ZN26ir_array_splitting_visitorD0Ev(void)

{
  _ZdlPv();
  return;
}


/* address=000b089a symbol=FUN_000b089a */

undefined4 FUN_000b089a(void)

{
  int iVar1;
  
  iVar1 = FUN_000b0904();
  if (iVar1 != 0) {
    *(undefined *)(iVar1 + 0x11) = 1;
  }
  return 0;
}


/* address=000b08ac symbol=FUN_000b08ac */

undefined4 FUN_000b08ac(undefined4 param_1,int param_2)

{
  int iVar1;
  
  iVar1 = FUN_000b0904(param_1,*(undefined4 *)(param_2 + 0x18));
  if (iVar1 != 0) {
    *(undefined *)(iVar1 + 0x10) = 0;
  }
  return 0;
}


/* address=000b08c0 symbol=FUN_000b08c0 */

undefined4 FUN_000b08c0(undefined4 param_1,int param_2)

{
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(param_1,param_2 + 0x26,1);
  return 1;
}


/* address=000b08d0 symbol=FUN_000b08d0 */

undefined4 FUN_000b08d0(undefined4 param_1,int param_2)

{
  undefined4 uVar1;
  int iVar2;
  
  iVar2 = *(int *)(param_2 + 0x18);
  uVar1 = 0;
  if (iVar2 != 0) {
    if (*(int *)(iVar2 + 0xc) != 2) {
      return uVar1;
    }
    iVar2 = FUN_000b0904(param_1,*(undefined4 *)(iVar2 + 0x18));
    if ((iVar2 != 0) &&
       ((*(int *)(param_2 + 0x1c) == 0 || (*(int *)(*(int *)(param_2 + 0x1c) + 0xc) != 3)))) {
      *(undefined *)(iVar2 + 0x10) = 0;
    }
    uVar1 = 1;
  }
  return uVar1;
}


/* address=000b0904 symbol=FUN_000b0904 */

int ** FUN_000b0904(int param_1,int *param_2)

{
  uint uVar1;
  int iVar2;
  int *piVar3;
  int **ppiVar4;
  int **ppiVar5;
  
  uVar1 = (uint)param_2[6] >> 9 & 0xf;
  if ((uVar1 == 0 || uVar1 == 10) ||
     ((ppiVar5 = (int **)0x0, uVar1 - 3 < 2 && (*(char *)(param_1 + 0x2c) != '\0')))) {
    iVar2 = param_2[4];
    if (*(int *)(iVar2 + 4) == 9) {
      if (*(int *)(iVar2 + 0x10) == 0) {
        return (int **)0x0;
      }
    }
    else {
      if (*(int *)(iVar2 + 4) != 2) {
        return (int **)0x0;
      }
      if ((*(ushort *)(iVar2 + 8) & 0x6000) == 0) {
        return (int **)0x0;
      }
    }
    for (ppiVar5 = *(int ***)(param_1 + 0x19); *ppiVar5 != (int *)0x0; ppiVar5 = (int **)*ppiVar5) {
      if (ppiVar5[2] == param_2) {
        return ppiVar5;
      }
    }
    ppiVar5 = (int **)ralloc_size(*(undefined4 *)(param_1 + 0x28),0x1c);
    ralloc_set_destructor(ppiVar5,_ZN9exec_node18_ralloc_destructorEPv);
    ppiVar5[2] = param_2;
    *(undefined2 *)(ppiVar5 + 4) = 1;
    ppiVar5[5] = (int *)0x0;
    ppiVar5[6] = (int *)0x0;
    iVar2 = param_2[4];
    if (*(int *)(iVar2 + 4) == 9) {
      piVar3 = *(int **)(iVar2 + 0x10);
    }
    else {
      piVar3 = (int *)(((uint)*(ushort *)(iVar2 + 8) << 0x11) >> 0x1d);
    }
    *ppiVar5 = (int *)(param_1 + 0x1d);
    ppiVar5[3] = piVar3;
    ppiVar4 = *(int ***)(param_1 + 0x21);
    ppiVar5[1] = (int *)ppiVar4;
    *ppiVar4 = (int *)ppiVar5;
    *(int ***)(param_1 + 0x21) = ppiVar5;
  }
  return ppiVar5;
}


/* address=000b09b8 symbol=_Z19do_constant_foldingP9exec_list */

void _Z19do_constant_foldingP9exec_list(undefined4 param_1)

{
  undefined4 uVar1;
  undefined **local_30 [6];
  undefined local_17;
  int local_14;
  
  local_14 = __stack_chk_guard;
  uVar1 = _ZN23ir_hierarchical_visitorC1Ev(local_30);
  local_17 = 0;
  local_30[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000ea83c;
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(uVar1,param_1,1);
  if (__stack_chk_guard != local_14) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(local_17);
  }
  return;
}


/* address=000b0a0e symbol=FUN_000b0a0e */

undefined4 FUN_000b0a0e(int *param_1,int param_2)

{
  int **ppiVar1;
  int *piVar2;
  int iVar3;
  
  piVar2 = *(int **)(param_2 + 0x14);
  (**(code **)(*piVar2 + 0xc))(piVar2,param_1);
  (**(code **)(*param_1 + 0x94))(param_1,(int **)(param_2 + 0x14));
  ppiVar1 = (int **)(param_2 + 0x18);
  piVar2 = *ppiVar1;
  if (piVar2 != (int *)0x0) {
    (**(code **)(*piVar2 + 0xc))(piVar2,param_1);
    (**(code **)(*param_1 + 0x94))(param_1,ppiVar1);
    piVar2 = *ppiVar1;
    if ((piVar2 != (int *)0x0) && (piVar2[3] == 3)) {
      if (*(char *)(piVar2 + 6) == '\0') {
        iVar3 = *(int *)(param_2 + 4);
        *(undefined4 *)(iVar3 + 4) = *(undefined4 *)(param_2 + 8);
        **(int **)(param_2 + 8) = iVar3;
        *(undefined4 *)(param_2 + 8) = 0;
        *(undefined4 *)(param_2 + 4) = 0;
      }
      else {
        *ppiVar1 = (int *)0x0;
      }
      *(undefined *)((int)param_1 + 0x19) = 1;
    }
  }
  return 1;
}


/* address=000b0a80 symbol=FUN_000b0a80 */

void FUN_000b0a80(int *param_1,int *param_2)

{
  int **ppiVar1;
  int **ppiVar2;
  int **ppiVar3;
  int *piVar4;
  uint uVar5;
  int iVar6;
  undefined4 uVar7;
  int **ppiVar8;
  int *local_28;
  int local_24;
  
  local_24 = __stack_chk_guard;
  ppiVar3 = (int **)**(int **)(param_2[5] + 0x18);
  if (ppiVar3 != (int **)0x0) {
    ppiVar1 = (int **)*(int **)(param_2[5] + 0x18);
    ppiVar8 = (int **)(int *)param_2[6];
    for (ppiVar2 = (int **)*(int *)param_2[6]; ppiVar2 != (int **)0x0; ppiVar2 = (int **)*ppiVar2) {
      piVar4 = (int *)ppiVar1 + 5;
      if (ppiVar1 == (int **)0x0) {
        piVar4 = (int *)0x18;
      }
      if (ppiVar8 != (int **)0x0) {
        ppiVar8 = (int **)((int *)ppiVar8 + -1);
      }
      uVar5 = (uint)(*piVar4 << 0x13) >> 0x1c;
      if ((uVar5 == 5 || uVar5 == 8) &&
         (local_28 = (int *)ppiVar8, (**(code **)(*param_1 + 0x94))(param_1,&local_28),
         (int **)local_28 != ppiVar8)) {
        piVar4 = local_28;
        if (local_28 != (int *)0x0) {
          piVar4 = local_28 + 1;
        }
        piVar4[1] = ((int *)ppiVar8)[2];
        *piVar4 = ((int *)ppiVar8)[1];
        *(int **)((int *)ppiVar8)[2] = piVar4;
        *(int **)(((int *)ppiVar8)[1] + 4) = piVar4;
      }
      if (*ppiVar3 == (int *)0x0) break;
      ppiVar1 = ppiVar3;
      ppiVar3 = (int **)*ppiVar3;
      ppiVar8 = ppiVar2;
    }
  }
  iVar6 = (**(code **)(*param_2 + 0x18))(param_2,0);
  if (iVar6 != 0) {
    uVar7 = ralloc_parent(param_2);
    piVar4 = (int *)ralloc_size(uVar7,0x20);
    ralloc_set_destructor(piVar4,_ZN9exec_node18_ralloc_destructorEPv);
    _ZN13ir_assignmentC2EP9ir_rvalueS1_S1_(piVar4,param_2[4],iVar6,0);
    if (piVar4 != (int *)0x0) {
      piVar4 = piVar4 + 1;
    }
    piVar4[1] = param_2[2];
    *piVar4 = param_2[1];
    *(int **)param_2[2] = piVar4;
    *(int **)(param_2[1] + 4) = piVar4;
  }
  if (__stack_chk_guard - local_24 != 0) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(__stack_chk_guard - local_24);
  }
  return;
}


/* address=000b0b88 symbol=FUN_000b0b88 */

void FUN_000b0b88(int param_1,int **param_2)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  int *piVar4;
  
  piVar4 = *param_2;
  if ((piVar4 != (int *)0x0) && (piVar4[3] != 3)) {
    if (piVar4[3] == 4) {
      uVar3 = 0;
      do {
        if (piVar4[6] == 0x69) {
          uVar2 = ((uint)*(ushort *)(piVar4[4] + 8) << 0x14) >> 0x1d;
        }
        else {
          uVar2 = _ZN13ir_expression16get_num_operandsE23ir_expression_operation();
        }
        if (uVar2 <= uVar3) {
          piVar4 = *param_2;
          goto LAB_000b0bd6;
        }
        iVar1 = uVar3 + 7;
      } while ((piVar4[iVar1] != 0) && (uVar3 = uVar3 + 1, *(int *)(piVar4[iVar1] + 0xc) == 3));
    }
    else {
LAB_000b0bd6:
      if (((piVar4 == (int *)0x0) || (piVar4[3] != 5)) ||
         ((piVar4[6] != 0 && (*(int *)(piVar4[6] + 0xc) == 3)))) {
        piVar4 = (int *)(**(code **)(*piVar4 + 0x18))(piVar4,0);
        if (piVar4 == (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x000b0c16. Too many branches */
                    /* WARNING: Treating indirect jump as call */
          (**(code **)(**param_2 + 0xc))(*param_2,param_1);
          return;
        }
        *param_2 = piVar4;
        *(undefined *)(param_1 + 0x19) = 1;
      }
    }
  }
  return;
}


/* address=000b0c1c symbol=_Z23do_constant_propagationP9exec_list */

void _Z23do_constant_propagationP9exec_list(undefined4 param_1)

{
  undefined4 *puVar1;
  undefined **local_50 [7];
  undefined4 *local_34;
  undefined4 *local_30;
  undefined2 local_2c;
  undefined4 local_28;
  int local_24;
  
  local_24 = __stack_chk_guard;
  _ZN23ir_hierarchical_visitorC1Ev(local_50);
  local_50[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000ea8f0;
  local_2c = 0;
  local_28 = ralloc_context(0);
  puVar1 = (undefined4 *)ralloc_size(local_28,0xc);
  ralloc_set_destructor(puVar1,_ZN9exec_list18_ralloc_destructorEPv);
  puVar1[1] = 0;
  *puVar1 = puVar1 + 1;
  puVar1[2] = puVar1;
  local_34 = puVar1;
  puVar1 = (undefined4 *)ralloc_size(local_28,0xc);
  ralloc_set_destructor(puVar1,_ZN9exec_list18_ralloc_destructorEPv);
  puVar1[1] = 0;
  *puVar1 = puVar1 + 1;
  puVar1[2] = puVar1;
  local_30 = puVar1;
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(local_50,param_1,1);
  local_50[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000ea8f0;
  ralloc_free(local_28);
  if (__stack_chk_guard - local_24 != 0) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(__stack_chk_guard - local_24);
  }
  return;
}


/* address=000b0cd8 symbol=FUN_000b0cd8 */

undefined4 FUN_000b0cd8(int param_1,int param_2)

{
  byte bVar1;
  byte bVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  int **ppiVar5;
  undefined4 *puVar6;
  
  puVar6 = *(undefined4 **)(param_1 + 0x1c);
  uVar3 = *(undefined4 *)(param_1 + 0x20);
  bVar1 = *(byte *)(param_1 + 0x25);
  puVar4 = (undefined4 *)ralloc_size(*(undefined4 *)(param_1 + 0x28),0xc);
  ralloc_set_destructor(puVar4,_ZN9exec_list18_ralloc_destructorEPv);
  puVar4[1] = 0;
  *puVar4 = puVar4 + 1;
  puVar4[2] = puVar4;
  *(undefined4 **)(param_1 + 0x1c) = puVar4;
  puVar4 = (undefined4 *)ralloc_size(*(undefined4 *)(param_1 + 0x28),0xc);
  ralloc_set_destructor(puVar4,_ZN9exec_list18_ralloc_destructorEPv);
  puVar4[1] = 0;
  *puVar4 = puVar4 + 1;
  puVar4[2] = puVar4;
  *(undefined *)(param_1 + 0x25) = 0;
  *(undefined4 **)(param_1 + 0x20) = puVar4;
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(param_1,param_2 + 0x10,1);
  bVar2 = *(byte *)(param_1 + 0x25);
  if (bVar2 != 0) {
    puVar6[1] = 0;
    *puVar6 = puVar6 + 1;
    puVar6[2] = puVar6;
  }
  *(undefined4 **)(param_1 + 0x1c) = puVar6;
  ppiVar5 = *(int ***)(param_1 + 0x20);
  *(byte *)(param_1 + 0x25) = bVar2 | bVar1;
  *(undefined4 *)(param_1 + 0x20) = uVar3;
  for (ppiVar5 = (int **)*ppiVar5; *ppiVar5 != (int *)0x0; ppiVar5 = (int **)*ppiVar5) {
    FUN_000b11d0(param_1,ppiVar5[2],ppiVar5[3]);
  }
  return 1;
}


/* address=000b0d90 symbol=FUN_000b0d90 */

undefined4 FUN_000b0d90(int param_1,int param_2)

{
  undefined uVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  
  uVar2 = *(undefined4 *)(param_1 + 0x1c);
  uVar4 = *(undefined4 *)(param_1 + 0x20);
  uVar1 = *(undefined *)(param_1 + 0x25);
  puVar3 = (undefined4 *)ralloc_size(*(undefined4 *)(param_1 + 0x28),0xc);
  ralloc_set_destructor(puVar3,_ZN9exec_list18_ralloc_destructorEPv);
  puVar3[1] = 0;
  *puVar3 = puVar3 + 1;
  puVar3[2] = puVar3;
  *(undefined4 **)(param_1 + 0x1c) = puVar3;
  puVar3 = (undefined4 *)ralloc_size(*(undefined4 *)(param_1 + 0x28),0xc);
  ralloc_set_destructor(puVar3,_ZN9exec_list18_ralloc_destructorEPv);
  puVar3[1] = 0;
  *puVar3 = puVar3 + 1;
  puVar3[2] = puVar3;
  *(undefined *)(param_1 + 0x25) = 0;
  *(undefined4 **)(param_1 + 0x20) = puVar3;
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(param_1,param_2 + 0x26,1);
  *(undefined4 *)(param_1 + 0x1c) = uVar2;
  *(undefined4 *)(param_1 + 0x20) = uVar4;
  *(undefined *)(param_1 + 0x25) = uVar1;
  return 1;
}


/* address=000b0e1c symbol=FUN_000b0e1c */

undefined4 FUN_000b0e1c(int param_1,int param_2)

{
  ushort uVar1;
  int *piVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  int **ppiVar6;
  uint uVar7;
  int iVar8;
  int iVar9;
  
  if (*(char *)(param_1 + 0x18) == '\0') {
    piVar2 = *(int **)(param_2 + 0x10);
    uVar5 = *(byte *)(param_2 + 0x1c) & 0xf;
    uVar7 = uVar5;
    if (piVar2[3] == 0) {
      uVar7 = 0xffffffff;
    }
    if (piVar2 == (int *)0x0) {
      uVar7 = uVar5;
    }
    uVar3 = (**(code **)(*piVar2 + 0x20))();
    FUN_000b11d0(param_1,uVar3,uVar7);
    if ((*(int *)(param_2 + 0x18) == 0) && ((*(byte *)(param_2 + 0x1c) & 0xf) != 0)) {
      iVar9 = *(int *)(param_2 + 0x14);
      if (*(int *)(iVar9 + 0xc) != 3) {
        iVar9 = 0;
      }
      iVar8 = 0;
      if (*(int *)(*(int *)(param_2 + 0x10) + 0xc) == 2) {
        iVar8 = *(int *)(param_2 + 0x10);
      }
      if ((iVar8 != 0) && (iVar9 != 0)) {
        iVar4 = *(int *)(*(int *)(iVar8 + 0x18) + 0x10);
        uVar1 = *(ushort *)(iVar4 + 8);
        if (((0x200 < (uVar1 & 0xc00)) &&
            (((uVar1 & 0x7000) == 0x1000 && (*(uint *)(iVar4 + 4) < 4)))) ||
           (((uVar1 & 0xe00) == 0x200 && (*(uint *)(iVar4 + 4) < 4)))) {
          piVar2 = (int *)ralloc_size(*(undefined4 *)(param_1 + 0x28),0x18);
          ralloc_set_destructor(piVar2,_ZN9exec_node18_ralloc_destructorEPv);
          uVar7 = *(byte *)(param_2 + 0x1c) & 0xf;
          piVar2[2] = *(int *)(iVar8 + 0x18);
          piVar2[3] = iVar9;
          piVar2[4] = uVar7;
          piVar2[5] = uVar7;
          iVar9 = *(int *)(param_1 + 0x1c);
          *piVar2 = iVar9 + 4;
          ppiVar6 = *(int ***)(iVar9 + 8);
          piVar2[1] = (int)ppiVar6;
          *ppiVar6 = piVar2;
          *(int **)(iVar9 + 8) = piVar2;
        }
      }
    }
  }
  return 0;
}


/* address=000b0efc symbol=FUN_000b0efc */

void FUN_000b0efc(int *param_1,int param_2)

{
  int iVar1;
  int **ppiVar2;
  undefined4 *puVar3;
  int **ppiVar4;
  int **ppiVar5;
  int **ppiVar6;
  int **ppiVar7;
  int **ppiVar8;
  int **local_28;
  int local_24;
  
  local_24 = __stack_chk_guard;
  iVar1 = *(int *)(param_2 + 0x14);
  ppiVar8 = *(int ***)(param_2 + 0x18);
  if ((int **)*ppiVar8 != (int **)0x0) {
    ppiVar7 = *(int ***)(iVar1 + 0x18);
    ppiVar2 = (int **)*ppiVar8;
    ppiVar6 = (int **)*ppiVar7;
    if (*ppiVar7 != (int *)0x0) {
      do {
        ppiVar5 = ppiVar6;
        ppiVar4 = ppiVar2;
        ppiVar2 = ppiVar7 + 5;
        if (ppiVar7 == (int **)0x0) {
          ppiVar2 = (int **)0x18;
        }
        if (ppiVar8 != (int **)0x0) {
          ppiVar8 = ppiVar8 + -1;
        }
        if (((uint)*ppiVar2 & 0x1c00) != 0xc00) {
          local_28 = ppiVar8;
          (**(code **)(*param_1 + 0x94))(param_1,&local_28);
          if (local_28 == ppiVar8) {
            (*(code *)(*ppiVar8)[3])(ppiVar8,param_1);
          }
          else {
            ppiVar2 = local_28;
            if (local_28 != (int **)0x0) {
              ppiVar2 = local_28 + 1;
            }
            ppiVar2[1] = ppiVar8[2];
            *ppiVar2 = ppiVar8[1];
            *ppiVar8[2] = (int)ppiVar2;
            ppiVar8[1][1] = (int)ppiVar2;
          }
        }
        ppiVar2 = (int **)*ppiVar4;
      } while ((ppiVar2 != (int **)0x0) &&
              (ppiVar6 = (int **)*ppiVar5, ppiVar7 = ppiVar5, ppiVar8 = ppiVar4,
              ppiVar6 != (int **)0x0));
      iVar1 = *(int *)(param_2 + 0x14);
    }
  }
  iVar1 = _ZNK21ir_function_signature10is_builtinEv(iVar1);
  if (iVar1 == 0) {
    puVar3 = (undefined4 *)param_1[7];
    puVar3[1] = 0;
    *puVar3 = puVar3 + 1;
    puVar3[2] = puVar3;
    *(undefined *)((int)param_1 + 0x25) = 1;
  }
  if (__stack_chk_guard - local_24 == 0) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(__stack_chk_guard - local_24);
}


/* address=000b0fd0 symbol=FUN_000b0fd0 */

undefined4 FUN_000b0fd0(int *param_1,int param_2)

{
  int *piVar1;
  
  piVar1 = *(int **)(param_2 + 0x10);
  (**(code **)(*piVar1 + 0xc))(piVar1,param_1);
  (**(code **)(*param_1 + 0x94))(param_1,(int **)(param_2 + 0x10));
  FUN_000b1294(param_1,param_2 + 0x14);
  FUN_000b1294(param_1,param_2 + 0x20);
  return 1;
}


/* address=000b1008 symbol=FUN_000b1008 */

void FUN_000b1008(int param_1,int *param_2)

{
  ushort uVar1;
  undefined4 uVar2;
  uint uVar3;
  int **ppiVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  uint uVar9;
  uint uVar10;
  bool bVar11;
  int local_68 [16];
  int local_28;
  
  local_28 = __stack_chk_guard;
  if ((*(char *)(param_1 + 0x18) == '\0') && (iVar6 = *param_2, iVar6 != 0)) {
    iVar8 = *(int *)(iVar6 + 0x10);
    uVar1 = *(ushort *)(iVar8 + 8);
    if ((((uVar1 & 0xe00) == 0x200) && (*(uint *)(iVar8 + 4) < 4)) ||
       (((0x200 < (uVar1 & 0xc00) && ((uVar1 & 0x7000) == 0x1000)) && (*(uint *)(iVar8 + 4) < 4))))
    {
      if (*(int *)(iVar6 + 0xc) == 2) {
        iVar7 = 0;
        iVar5 = iVar6;
      }
      else if (((*(int *)(iVar6 + 0xc) != 5) || (iVar5 = *(int *)(iVar6 + 0x18), iVar5 == 0)) ||
              (iVar7 = iVar6, *(int *)(iVar5 + 0xc) != 2)) goto LAB_000b1024;
      __aeabi_memclr8(local_68,0x40);
      if ((int)(short)(ushort)(((uint)*(ushort *)(iVar8 + 8) << 0x14) >> 0x1d) *
          (int)(short)(ushort)(((uint)*(ushort *)(iVar8 + 8) << 0x11) >> 0x1d) != 0) {
        uVar10 = 0;
        do {
          uVar9 = uVar10;
          if (iVar7 != 0) {
            switch(uVar10) {
            case 0:
              uVar9 = *(ushort *)(iVar7 + 0x1c) & 3;
              break;
            case 1:
              uVar9 = ((uint)*(ushort *)(iVar7 + 0x1c) << 0x1c) >> 0x1e;
              break;
            case 2:
              uVar9 = ((uint)*(ushort *)(iVar7 + 0x1c) << 0x1a) >> 0x1e;
              break;
            case 3:
              uVar9 = ((uint)*(ushort *)(iVar7 + 0x1c) << 0x18) >> 0x1e;
              break;
            default:
              uVar9 = 0;
            }
          }
          ppiVar4 = (int **)**(int ***)(param_1 + 0x1c);
          if (*ppiVar4 == (int *)0x0) goto LAB_000b1024;
          while ((ppiVar4[2] != *(int **)(iVar5 + 0x18) ||
                 (((uint)ppiVar4[4] & 1 << (uVar9 & 0xff)) == 0))) {
            ppiVar4 = (int **)*ppiVar4;
            if (*ppiVar4 == (int *)0x0) goto LAB_000b1024;
          }
          if (uVar9 == 0) {
            iVar6 = 0;
          }
          else {
            iVar6 = 0;
            uVar3 = 0;
            do {
              if (((uint)ppiVar4[5] & 1 << (uVar3 & 0xff)) != 0) {
                iVar6 = iVar6 + 1;
              }
            } while (((int)uVar3 < 3) && (bVar11 = uVar9 - 1 != uVar3, uVar3 = uVar3 + 1, bVar11));
          }
          switch(*(undefined4 *)(iVar8 + 4)) {
          case 0:
          case 1:
          case 2:
            local_68[uVar10] = ppiVar4[3][iVar6 + 6];
            break;
          case 3:
            *(undefined *)((int)local_68 + uVar10) = *(undefined *)((int)ppiVar4[3] + iVar6 + 0x18);
          }
          uVar10 = uVar10 + 1;
        } while (uVar10 < (uint)((int)(short)(ushort)(((uint)*(ushort *)(iVar8 + 8) << 0x14) >> 0x1d
                                                     ) *
                                (int)(short)(ushort)(((uint)*(ushort *)(iVar8 + 8) << 0x11) >> 0x1d)
                                ));
      }
      uVar2 = ralloc_parent(iVar5);
      iVar6 = ralloc_size(uVar2,0x68);
      ralloc_set_destructor(iVar6,_ZN9exec_node18_ralloc_destructorEPv);
      _ZN11ir_constantC2EPK9glsl_typePK16ir_constant_data(iVar6,iVar8,local_68);
      *param_2 = iVar6;
      *(undefined *)(param_1 + 0x24) = 1;
    }
  }
LAB_000b1024:
  if (__stack_chk_guard != local_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b11d0 symbol=FUN_000b11d0 */

void FUN_000b11d0(int param_1,int param_2,uint param_3)

{
  ushort uVar1;
  int iVar2;
  int **ppiVar3;
  int **ppiVar4;
  uint uVar5;
  int *piVar6;
  
  iVar2 = *(int *)(param_2 + 0x10);
  uVar1 = *(ushort *)(iVar2 + 8);
  if ((((0x200 < (uVar1 & 0xc00)) && ((uVar1 & 0x7000) == 0x1000)) && (*(uint *)(iVar2 + 4) < 4)) ||
     (((uVar1 & 0xe00) == 0x200 && (*(uint *)(iVar2 + 4) < 4)))) {
    ppiVar4 = (int **)***(int ***)(param_1 + 0x1c);
    if (ppiVar4 != (int **)0x0) {
      ppiVar3 = (int **)**(int ***)(param_1 + 0x1c);
      do {
        if ((ppiVar3[2] == (int *)param_2) &&
           (uVar5 = (uint)ppiVar3[4], ppiVar3[4] = (int *)(uVar5 & ~param_3),
           (uVar5 & ~param_3) == 0)) {
          iVar2 = (int)*ppiVar3;
          *(int **)(iVar2 + 4) = ppiVar3[1];
          *ppiVar3[1] = iVar2;
          ppiVar3[1] = (int *)0x0;
          *ppiVar3 = (int *)0x0;
        }
        piVar6 = *ppiVar4;
        ppiVar3 = ppiVar4;
        ppiVar4 = (int **)piVar6;
      } while (piVar6 != (int *)0x0);
    }
    ppiVar3 = *(int ***)(param_1 + 0x20);
    for (ppiVar4 = (int **)*ppiVar3; *ppiVar4 != (int *)0x0; ppiVar4 = (int **)*ppiVar4) {
      if (ppiVar4[2] == (int *)param_2) {
        ppiVar4[3] = (int *)((uint)ppiVar4[3] | param_3);
        return;
      }
    }
    piVar6 = (int *)ralloc_size(*(undefined4 *)(param_1 + 0x28),0x10);
    ralloc_set_destructor(piVar6,_ZN9exec_node18_ralloc_destructorEPv);
    piVar6[2] = param_2;
    piVar6[3] = param_3;
    *piVar6 = (int)(ppiVar3 + 1);
    ppiVar4 = (int **)ppiVar3[2];
    piVar6[1] = (int)ppiVar4;
    *ppiVar4 = piVar6;
    ppiVar3[2] = piVar6;
  }
  return;
}


/* address=000b1294 symbol=FUN_000b1294 */

void FUN_000b1294(int param_1,undefined4 param_2)

{
  byte bVar1;
  byte bVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  int *piVar5;
  int *piVar6;
  int **ppiVar7;
  int **ppiVar8;
  int **ppiVar9;
  int iVar10;
  
  ppiVar9 = *(int ***)(param_1 + 0x1c);
  uVar3 = *(undefined4 *)(param_1 + 0x20);
  bVar1 = *(byte *)(param_1 + 0x25);
  puVar4 = (undefined4 *)ralloc_size(*(undefined4 *)(param_1 + 0x28),0xc);
  ralloc_set_destructor(puVar4,_ZN9exec_list18_ralloc_destructorEPv);
  puVar4[1] = 0;
  *puVar4 = puVar4 + 1;
  puVar4[2] = puVar4;
  *(undefined4 **)(param_1 + 0x1c) = puVar4;
  puVar4 = (undefined4 *)ralloc_size(*(undefined4 *)(param_1 + 0x28),0xc);
  ralloc_set_destructor(puVar4,_ZN9exec_list18_ralloc_destructorEPv);
  puVar4[1] = 0;
  *puVar4 = puVar4 + 1;
  puVar4[2] = puVar4;
  *(undefined *)(param_1 + 0x25) = 0;
  *(undefined4 **)(param_1 + 0x20) = puVar4;
  ppiVar8 = (int **)*ppiVar9;
  piVar5 = *ppiVar8;
  while (piVar5 != (int *)0x0) {
    iVar10 = *(int *)(param_1 + 0x1c);
    piVar5 = (int *)ralloc_size(*(undefined4 *)(param_1 + 0x28),0x18);
    ralloc_set_destructor(piVar5,_ZN9exec_node18_ralloc_destructorEPv);
    piVar5[2] = (int)ppiVar8[2];
    piVar5[4] = (int)ppiVar8[4];
    piVar5[3] = (int)ppiVar8[3];
    piVar6 = ppiVar8[5];
    *piVar5 = iVar10 + 4;
    piVar5[5] = (int)piVar6;
    ppiVar7 = *(int ***)(iVar10 + 8);
    piVar5[1] = (int)ppiVar7;
    *ppiVar7 = piVar5;
    *(int **)(iVar10 + 8) = piVar5;
    ppiVar8 = (int **)*ppiVar8;
    piVar5 = *ppiVar8;
  }
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(param_1,param_2,1);
  bVar2 = *(byte *)(param_1 + 0x25);
  if (bVar2 != 0) {
    ppiVar9[1] = (int *)0x0;
    *ppiVar9 = (int *)(ppiVar9 + 1);
    ppiVar9[2] = (int *)ppiVar9;
  }
  *(int ***)(param_1 + 0x1c) = ppiVar9;
  ppiVar8 = *(int ***)(param_1 + 0x20);
  *(byte *)(param_1 + 0x25) = bVar2 | bVar1;
  *(undefined4 *)(param_1 + 0x20) = uVar3;
  for (ppiVar8 = (int **)*ppiVar8; *ppiVar8 != (int *)0x0; ppiVar8 = (int **)*ppiVar8) {
    FUN_000b11d0(param_1,ppiVar8[2],ppiVar8[3]);
  }
  return;
}


/* address=000b13a8 symbol=_Z20do_constant_variableP9exec_list */

void _Z20do_constant_variableP9exec_list(undefined4 param_1)

{
  int iVar1;
  int iVar2;
  undefined **local_44 [6];
  int *local_2b;
  undefined4 local_27;
  int local_23;
  int local_1c;
  
  local_1c = __stack_chk_guard;
  iVar1 = _ZN23ir_hierarchical_visitorC1Ev(local_44);
  local_44[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000ea99c;
  local_23 = iVar1 + 0x19;
  local_27 = 0;
  local_2b = (int *)(iVar1 + 0x1d);
  _ZN23ir_hierarchical_visitor3runEP9exec_list(iVar1,param_1);
  while (local_2b != (int *)(iVar1 + 0x1d)) {
    if (((local_2b[2] == 1) && (local_2b[4] != 0)) && (*(char *)(local_2b + 5) != '\0')) {
      *(int *)(local_2b[3] + 0x34) = local_2b[4];
    }
    iVar2 = *local_2b;
    *(int *)(iVar2 + 4) = local_2b[1];
    *(int *)local_2b[1] = iVar2;
    local_2b[1] = 0;
    *local_2b = 0;
    free(local_2b);
  }
  if (__stack_chk_guard - local_1c != 0) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(__stack_chk_guard - local_1c);
  }
  return;
}


/* address=000b1458 symbol=_Z29do_constant_variable_unlinkedP9exec_list */

uint _Z29do_constant_variable_unlinkedP9exec_list(int *param_1)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  int *piVar5;
  
  uVar4 = 0;
  do {
    iVar1 = *param_1;
    do {
      do {
        iVar3 = iVar1;
        if (iVar1 != 0) {
          iVar3 = iVar1 + -4;
        }
        param_1 = (int *)(iVar3 + 4);
        iVar1 = *param_1;
        if (iVar1 == 0) {
          return uVar4 & 1;
        }
      } while ((iVar3 == 0) || (*(int *)(iVar3 + 0xc) != 10));
      iVar3 = *(int *)(iVar3 + 0x14);
      if (iVar3 != 0) {
        iVar3 = iVar3 + -4;
      }
      piVar5 = (int *)(iVar3 + 4);
    } while (*piVar5 == 0);
    do {
      uVar2 = _Z20do_constant_variableP9exec_list(iVar3 + 0x26);
      iVar3 = *piVar5;
      uVar4 = uVar4 | uVar2;
      if (iVar3 != 0) {
        iVar3 = iVar3 + -4;
      }
      piVar5 = (int *)(iVar3 + 4);
    } while (*piVar5 != 0);
  } while( true );
}


/* address=000b14ba symbol=FUN_000b14ba */

undefined4 FUN_000b14ba(int param_1,undefined4 param_2)

{
  int iVar1;
  
  iVar1 = FUN_000b1612(param_2,param_1 + 0x19);
  *(undefined *)(iVar1 + 0x14) = 1;
  return 0;
}


/* address=000b14d2 symbol=FUN_000b14d2 */

undefined4 FUN_000b14d2(int param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  int *piVar4;
  
  iVar1 = *(int *)(param_2 + 0x18);
  if (iVar1 != 0) {
    iVar1 = iVar1 + -4;
  }
  piVar4 = (int *)(iVar1 + 4);
  iVar3 = *piVar4;
  if (iVar3 != 0) {
    do {
      uVar2 = (uint)(*(int *)(iVar1 + 0x18) << 0x13) >> 0x1c;
      if ((uVar2 < 9) && ((1 << uVar2 & 0x1a0U) != 0)) {
        iVar1 = FUN_000b1612(iVar1,param_1 + 0x19);
        *(int *)(iVar1 + 8) = *(int *)(iVar1 + 8) + 1;
        iVar3 = *piVar4;
      }
      iVar1 = iVar3;
      if (iVar1 != 0) {
        iVar1 = iVar1 + -4;
      }
      piVar4 = (int *)(iVar1 + 4);
      iVar3 = *piVar4;
    } while (iVar3 != 0);
  }
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(param_1,param_2 + 0x26,1);
  return 1;
}


/* address=000b1546 symbol=FUN_000b1546 */

undefined4 FUN_000b1546(int param_1,int param_2)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  
  uVar1 = (**(code **)(**(int **)(param_2 + 0x10) + 0x20))();
  iVar2 = FUN_000b1612(uVar1,param_1 + 0x19);
  *(int *)(iVar2 + 8) = *(int *)(iVar2 + 8) + 1;
  if ((((*(int *)(*(int *)(iVar2 + 0xc) + 0x34) == 0) && (*(int *)(param_2 + 0x18) == 0)) &&
      (iVar3 = _ZN13ir_assignment22whole_variable_writtenEv(param_2), iVar3 != 0)) &&
     (iVar3 = (**(code **)(**(int **)(param_2 + 0x14) + 0x18))(*(int **)(param_2 + 0x14),0),
     iVar3 != 0)) {
    *(int *)(iVar2 + 0x10) = iVar3;
  }
  return 0;
}


/* address=000b158a symbol=FUN_000b158a */

undefined4 FUN_000b158a(int param_1,int param_2)

{
  int **ppiVar1;
  undefined4 uVar2;
  int iVar3;
  int **ppiVar4;
  int **ppiVar5;
  int **ppiVar6;
  int **ppiVar7;
  int **ppiVar8;
  
  ppiVar6 = *(int ***)(*(int *)(param_2 + 0x14) + 0x18);
  ppiVar4 = (int **)*ppiVar6;
  if (ppiVar4 != (int **)0x0) {
    ppiVar7 = (int **)**(int ***)(param_2 + 0x18);
    if (ppiVar7 != (int **)0x0) {
      ppiVar1 = *(int ***)(param_2 + 0x18);
      do {
        ppiVar5 = ppiVar4;
        ppiVar4 = ppiVar6 + 5;
        if (ppiVar6 == (int **)0x0) {
          ppiVar4 = (int **)0x18;
        }
        if (ppiVar1 != (int **)0x0) {
          ppiVar1 = ppiVar1 + -1;
        }
        if (((uint)*ppiVar4 & 0x1c00) == 0xc00) {
          uVar2 = (**(code **)((int)*ppiVar1 + 0x20))();
          iVar3 = FUN_000b1612(uVar2,param_1 + 0x19);
          *(int *)(iVar3 + 8) = *(int *)(iVar3 + 8) + 1;
        }
        ppiVar4 = (int **)*ppiVar5;
      } while ((ppiVar4 != (int **)0x0) &&
              (ppiVar8 = (int **)*ppiVar7, ppiVar1 = ppiVar7, ppiVar6 = ppiVar5, ppiVar7 = ppiVar8,
              ppiVar8 != (int **)0x0));
    }
  }
  if (*(int **)(param_2 + 0x10) != (int *)0x0) {
    uVar2 = (**(code **)(**(int **)(param_2 + 0x10) + 0x20))();
    iVar3 = FUN_000b1612(uVar2,param_1 + 0x19);
    *(int *)(iVar3 + 8) = *(int *)(iVar3 + 8) + 1;
  }
  return 0;
}


/* address=000b1612 symbol=FUN_000b1612 */

void FUN_000b1612(int *param_1,int **param_2)

{
  int **ppiVar1;
  int **ppiVar2;
  int *piVar3;
  
  piVar3 = *param_2;
  ppiVar2 = (int **)piVar3;
  ppiVar1 = (int **)*piVar3;
  while( true ) {
    if (ppiVar1 == (int **)0x0) {
      ppiVar2 = (int **)calloc(1,0x18);
      ppiVar2[3] = param_1;
      *ppiVar2 = piVar3;
      ppiVar2[1] = (int *)param_2;
      piVar3[1] = (int)ppiVar2;
      *param_2 = (int *)ppiVar2;
      return;
    }
    if ((int *)((int *)ppiVar2)[3] == param_1) break;
    ppiVar2 = ppiVar1;
    ppiVar1 = (int **)*ppiVar1;
  }
  return;
}


/* address=000b1650 symbol=_Z19do_copy_propagationP9exec_list */

void _Z19do_copy_propagationP9exec_list(undefined4 param_1)

{
  undefined4 *puVar1;
  undefined **local_50 [7];
  undefined4 *local_34;
  undefined4 *local_30;
  undefined local_2c;
  undefined4 local_28;
  int local_24;
  
  local_24 = __stack_chk_guard;
  _ZN23ir_hierarchical_visitorC1Ev(local_50);
  local_2c = 0;
  local_50[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eaa48;
  local_28 = ralloc_context(0);
  puVar1 = (undefined4 *)ralloc_size(local_28,0xc);
  ralloc_set_destructor(puVar1,_ZN9exec_list18_ralloc_destructorEPv);
  puVar1[1] = 0;
  *puVar1 = puVar1 + 1;
  puVar1[2] = puVar1;
  local_34 = puVar1;
  puVar1 = (undefined4 *)ralloc_size(local_28,0xc);
  ralloc_set_destructor(puVar1,_ZN9exec_list18_ralloc_destructorEPv);
  puVar1[1] = 0;
  *puVar1 = puVar1 + 1;
  puVar1[2] = puVar1;
  local_30 = puVar1;
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(local_50,param_1,1);
  local_50[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eaa48;
  ralloc_free(local_28);
  if (__stack_chk_guard - local_24 != 0) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(__stack_chk_guard - local_24);
  }
  return;
}


/* address=000b17f4 symbol=FUN_000b17f4 */

undefined4 FUN_000b17f4(int param_1,int param_2)

{
  undefined uVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  
  uVar2 = *(undefined4 *)(param_1 + 0x1c);
  uVar4 = *(undefined4 *)(param_1 + 0x20);
  uVar1 = *(undefined *)(param_1 + 0x25);
  puVar3 = (undefined4 *)ralloc_size(*(undefined4 *)(param_1 + 0x28),0xc);
  ralloc_set_destructor(puVar3,_ZN9exec_list18_ralloc_destructorEPv);
  puVar3[1] = 0;
  *puVar3 = puVar3 + 1;
  puVar3[2] = puVar3;
  *(undefined4 **)(param_1 + 0x1c) = puVar3;
  puVar3 = (undefined4 *)ralloc_size(*(undefined4 *)(param_1 + 0x28),0xc);
  ralloc_set_destructor(puVar3,_ZN9exec_list18_ralloc_destructorEPv);
  puVar3[1] = 0;
  *puVar3 = puVar3 + 1;
  puVar3[2] = puVar3;
  *(undefined *)(param_1 + 0x25) = 0;
  *(undefined4 **)(param_1 + 0x20) = puVar3;
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(param_1,param_2 + 0x26,1);
  *(undefined4 *)(param_1 + 0x1c) = uVar2;
  *(undefined4 *)(param_1 + 0x20) = uVar4;
  *(undefined *)(param_1 + 0x25) = uVar1;
  return 1;
}


/* address=000b1880 symbol=FUN_000b1880 */

undefined4 FUN_000b1880(int param_1,int param_2)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  uint uVar5;
  int **ppiVar6;
  
  uVar1 = (**(code **)(**(int **)(param_2 + 0x10) + 0x20))();
  FUN_000b19e4(param_1,uVar1);
  if (*(int *)(param_2 + 0x18) == 0) {
    iVar2 = _ZN13ir_assignment22whole_variable_writtenEv(param_2);
    iVar3 = (**(code **)(**(int **)(param_2 + 0x14) + 0x24))();
    if (iVar2 != 0 && iVar3 != 0) {
      if (iVar2 == iVar3) {
        uVar1 = ralloc_parent(param_2);
        uVar1 = ralloc_size(uVar1,0x68);
        ralloc_set_destructor(uVar1,_ZN9exec_node18_ralloc_destructorEPv);
        _ZN11ir_constantC2Ebj(uVar1,0,1);
        *(undefined4 *)(param_2 + 0x18) = uVar1;
        *(undefined *)(param_1 + 0x24) = 1;
      }
      else {
        uVar5 = (uint)(*(int *)(iVar2 + 0x18) << 0xf) >> 0x1e;
        if (uVar5 == 3 || uVar5 == (uint)(*(int *)(iVar3 + 0x18) << 0xf) >> 0x1e) {
          piVar4 = (int *)ralloc_size(*(undefined4 *)(param_1 + 0x28),0x10);
          ralloc_set_destructor(piVar4,_ZN9exec_node18_ralloc_destructorEPv);
          piVar4[2] = iVar2;
          piVar4[3] = iVar3;
          iVar2 = *(int *)(param_1 + 0x1c);
          *piVar4 = iVar2 + 4;
          ppiVar6 = *(int ***)(iVar2 + 8);
          piVar4[1] = (int)ppiVar6;
          *ppiVar6 = piVar4;
          *(int **)(iVar2 + 8) = piVar4;
        }
      }
    }
  }
  return 0;
}


/* address=000b1940 symbol=FUN_000b1940 */

undefined4 FUN_000b1940(int param_1,int param_2)

{
  int **ppiVar1;
  undefined4 *puVar2;
  int iVar3;
  int **ppiVar4;
  int **ppiVar5;
  int **ppiVar6;
  int **ppiVar7;
  
  iVar3 = *(int *)(param_2 + 0x14);
  ppiVar4 = (int **)**(int ***)(param_2 + 0x18);
  if (ppiVar4 != (int **)0x0) {
    ppiVar5 = (int **)**(int ***)(iVar3 + 0x18);
    ppiVar1 = *(int ***)(param_2 + 0x18);
    ppiVar7 = *(int ***)(iVar3 + 0x18);
    if (ppiVar5 != (int **)0x0) {
      do {
        ppiVar6 = ppiVar5;
        ppiVar5 = ppiVar7 + 5;
        if (ppiVar7 == (int **)0x0) {
          ppiVar5 = (int **)0x18;
        }
        if (ppiVar1 != (int **)0x0) {
          ppiVar1 = ppiVar1 + -1;
        }
        if (((uint)*ppiVar5 & 0x1c00) != 0xc00) {
          (**(code **)((int)*ppiVar1 + 0xc))(ppiVar1,param_1);
        }
      } while (((int **)*ppiVar4 != (int **)0x0) &&
              (ppiVar5 = (int **)*ppiVar6, ppiVar1 = ppiVar4, ppiVar4 = (int **)*ppiVar4,
              ppiVar7 = ppiVar6, ppiVar5 != (int **)0x0));
      iVar3 = *(int *)(param_2 + 0x14);
    }
  }
  iVar3 = _ZNK21ir_function_signature10is_builtinEv(iVar3);
  if (iVar3 == 0) {
    puVar2 = *(undefined4 **)(param_1 + 0x1c);
    puVar2[1] = 0;
    *puVar2 = puVar2 + 1;
    puVar2[2] = puVar2;
    *(undefined *)(param_1 + 0x25) = 1;
  }
  return 1;
}


/* address=000b19ba symbol=FUN_000b19ba */

undefined4 FUN_000b19ba(undefined4 param_1,int param_2)

{
  (**(code **)(**(int **)(param_2 + 0x10) + 0xc))(*(int **)(param_2 + 0x10),param_1);
  FUN_000b1a4c(param_1,param_2 + 0x14);
  FUN_000b1a4c(param_1,param_2 + 0x20);
  return 1;
}


/* address=000b19e4 symbol=FUN_000b19e4 */

void FUN_000b19e4(int param_1,int param_2)

{
  int **ppiVar1;
  int *piVar2;
  int **ppiVar3;
  int iVar4;
  bool bVar5;
  
  ppiVar3 = (int **)**(int ***)(param_1 + 0x1c);
  for (ppiVar1 = (int **)***(int ***)(param_1 + 0x1c); ppiVar1 != (int **)0x0;
      ppiVar1 = (int **)*ppiVar1) {
    iVar4 = (int)ppiVar3[2];
    bVar5 = iVar4 != param_2;
    if (bVar5) {
      iVar4 = (int)ppiVar3[3];
    }
    if (!bVar5 || iVar4 == param_2) {
      iVar4 = (int)*ppiVar3;
      *(int **)(iVar4 + 4) = ppiVar3[1];
      *ppiVar3[1] = iVar4;
      ppiVar3[1] = (int *)0x0;
      *ppiVar3 = (int *)0x0;
    }
    ppiVar3 = ppiVar1;
  }
  iVar4 = *(int *)(param_1 + 0x20);
  piVar2 = (int *)ralloc_size(*(undefined4 *)(param_1 + 0x28),0xc);
  ralloc_set_destructor(piVar2,_ZN9exec_node18_ralloc_destructorEPv);
  *piVar2 = iVar4 + 4;
  piVar2[2] = param_2;
  ppiVar3 = *(int ***)(iVar4 + 8);
  piVar2[1] = (int)ppiVar3;
  *ppiVar3 = piVar2;
  *(int **)(iVar4 + 8) = piVar2;
  return;
}


/* address=000b1a4c symbol=FUN_000b1a4c */

void FUN_000b1a4c(int param_1,undefined4 param_2)

{
  byte bVar1;
  byte bVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  int *piVar5;
  int **ppiVar6;
  int *piVar7;
  int **ppiVar8;
  int **ppiVar9;
  int iVar10;
  
  ppiVar9 = *(int ***)(param_1 + 0x1c);
  uVar3 = *(undefined4 *)(param_1 + 0x20);
  bVar1 = *(byte *)(param_1 + 0x25);
  puVar4 = (undefined4 *)ralloc_size(*(undefined4 *)(param_1 + 0x28),0xc);
  ralloc_set_destructor(puVar4,_ZN9exec_list18_ralloc_destructorEPv);
  puVar4[1] = 0;
  *puVar4 = puVar4 + 1;
  puVar4[2] = puVar4;
  *(undefined4 **)(param_1 + 0x1c) = puVar4;
  puVar4 = (undefined4 *)ralloc_size(*(undefined4 *)(param_1 + 0x28),0xc);
  ralloc_set_destructor(puVar4,_ZN9exec_list18_ralloc_destructorEPv);
  puVar4[1] = 0;
  *puVar4 = puVar4 + 1;
  puVar4[2] = puVar4;
  *(undefined *)(param_1 + 0x25) = 0;
  *(undefined4 **)(param_1 + 0x20) = puVar4;
  ppiVar8 = (int **)*ppiVar9;
  piVar5 = *ppiVar8;
  while (piVar5 != (int *)0x0) {
    iVar10 = *(int *)(param_1 + 0x1c);
    piVar5 = (int *)ralloc_size(*(undefined4 *)(param_1 + 0x28),0x10);
    ralloc_set_destructor(piVar5,_ZN9exec_node18_ralloc_destructorEPv);
    piVar7 = ppiVar8[3];
    piVar5[2] = (int)ppiVar8[2];
    piVar5[3] = (int)piVar7;
    *piVar5 = iVar10 + 4;
    ppiVar6 = *(int ***)(iVar10 + 8);
    piVar5[1] = (int)ppiVar6;
    *ppiVar6 = piVar5;
    *(int **)(iVar10 + 8) = piVar5;
    ppiVar8 = (int **)*ppiVar8;
    piVar5 = *ppiVar8;
  }
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(param_1,param_2,1);
  bVar2 = *(byte *)(param_1 + 0x25);
  if (bVar2 != 0) {
    ppiVar9[1] = (int *)0x0;
    *ppiVar9 = (int *)(ppiVar9 + 1);
    ppiVar9[2] = (int *)ppiVar9;
  }
  *(int ***)(param_1 + 0x1c) = ppiVar9;
  ppiVar8 = *(int ***)(param_1 + 0x20);
  *(byte *)(param_1 + 0x25) = bVar2 | bVar1;
  *(undefined4 *)(param_1 + 0x20) = uVar3;
  for (ppiVar8 = (int **)*ppiVar8; *ppiVar8 != (int *)0x0; ppiVar8 = (int **)*ppiVar8) {
    FUN_000b19e4(param_1,ppiVar8[2]);
  }
  return;
}


/* address=000b1b50 symbol=_Z28do_copy_propagation_elementsP9exec_list */

void _Z28do_copy_propagation_elementsP9exec_list(undefined4 param_1)

{
  undefined4 *puVar1;
  undefined **local_54 [7];
  undefined4 *local_38;
  undefined4 *local_34;
  undefined2 local_30;
  undefined4 local_2c;
  undefined4 uStack_28;
  int local_24;
  
  local_24 = __stack_chk_guard;
  _ZN23ir_hierarchical_visitorC1Ev(local_54);
  local_54[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eaaf0;
  local_30 = 0;
  local_2c = ralloc_context(0);
  uStack_28 = 0;
  puVar1 = (undefined4 *)ralloc_size(local_2c,0xc);
  ralloc_set_destructor(puVar1,_ZN9exec_list18_ralloc_destructorEPv);
  puVar1[1] = 0;
  *puVar1 = puVar1 + 1;
  puVar1[2] = puVar1;
  local_38 = puVar1;
  puVar1 = (undefined4 *)ralloc_size(local_2c,0xc);
  ralloc_set_destructor(puVar1,_ZN9exec_list18_ralloc_destructorEPv);
  puVar1[1] = 0;
  *puVar1 = puVar1 + 1;
  puVar1[2] = puVar1;
  local_34 = puVar1;
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(local_54,param_1,1);
  local_54[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eaaf0;
  ralloc_free(local_2c);
  if (__stack_chk_guard - local_24 != 0) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(__stack_chk_guard - local_24);
  }
  return;
}


/* address=000b1c10 symbol=FUN_000b1c10 */

undefined4 FUN_000b1c10(int param_1,int param_2)

{
  byte bVar1;
  byte bVar2;
  int **ppiVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  int **ppiVar6;
  undefined4 *puVar7;
  
  puVar7 = *(undefined4 **)(param_1 + 0x1c);
  uVar4 = *(undefined4 *)(param_1 + 0x20);
  bVar1 = *(byte *)(param_1 + 0x25);
  puVar5 = (undefined4 *)ralloc_size(*(undefined4 *)(param_1 + 0x28),0xc);
  ralloc_set_destructor(puVar5,_ZN9exec_list18_ralloc_destructorEPv);
  puVar5[1] = 0;
  *puVar5 = puVar5 + 1;
  puVar5[2] = puVar5;
  *(undefined4 **)(param_1 + 0x1c) = puVar5;
  puVar5 = (undefined4 *)ralloc_size(*(undefined4 *)(param_1 + 0x28),0xc);
  ralloc_set_destructor(puVar5,_ZN9exec_list18_ralloc_destructorEPv);
  puVar5[1] = 0;
  *puVar5 = puVar5 + 1;
  puVar5[2] = puVar5;
  *(undefined *)(param_1 + 0x25) = 0;
  *(undefined4 **)(param_1 + 0x20) = puVar5;
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(param_1,param_2 + 0x10,1);
  bVar2 = *(byte *)(param_1 + 0x25);
  if (bVar2 != 0) {
    puVar7[1] = 0;
    *puVar7 = puVar7 + 1;
    puVar7[2] = puVar7;
  }
  *(undefined4 **)(param_1 + 0x1c) = puVar7;
  ppiVar6 = *(int ***)(param_1 + 0x20);
  *(byte *)(param_1 + 0x25) = bVar2 | bVar1;
  *(undefined4 *)(param_1 + 0x20) = uVar4;
  ppiVar3 = (int **)*ppiVar6;
  for (ppiVar6 = (int **)**ppiVar6; ppiVar6 != (int **)0x0; ppiVar6 = (int **)*ppiVar6) {
    FUN_000b21d4(param_1,ppiVar3);
    ppiVar3 = ppiVar6;
  }
  return 1;
}


/* address=000b1cc8 symbol=FUN_000b1cc8 */

undefined4 FUN_000b1cc8(int param_1,int param_2)

{
  undefined uVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  
  uVar2 = *(undefined4 *)(param_1 + 0x1c);
  uVar4 = *(undefined4 *)(param_1 + 0x20);
  uVar1 = *(undefined *)(param_1 + 0x25);
  puVar3 = (undefined4 *)ralloc_size(*(undefined4 *)(param_1 + 0x28),0xc);
  ralloc_set_destructor(puVar3,_ZN9exec_list18_ralloc_destructorEPv);
  puVar3[1] = 0;
  *puVar3 = puVar3 + 1;
  puVar3[2] = puVar3;
  *(undefined4 **)(param_1 + 0x1c) = puVar3;
  puVar3 = (undefined4 *)ralloc_size(*(undefined4 *)(param_1 + 0x28),0xc);
  ralloc_set_destructor(puVar3,_ZN9exec_list18_ralloc_destructorEPv);
  puVar3[1] = 0;
  *puVar3 = puVar3 + 1;
  puVar3[2] = puVar3;
  *(undefined *)(param_1 + 0x25) = 0;
  *(undefined4 **)(param_1 + 0x20) = puVar3;
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(param_1,param_2 + 0x26,1);
  *(undefined4 *)(param_1 + 0x1c) = uVar2;
  *(undefined4 *)(param_1 + 0x20) = uVar4;
  *(undefined *)(param_1 + 0x25) = uVar1;
  return 1;
}


/* address=000b1d54 symbol=FUN_000b1d54 */

void FUN_000b1d54(int param_1,int param_2)

{
  ushort uVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  int **ppiVar5;
  uint uVar6;
  int *piVar7;
  uint uVar8;
  int iVar9;
  uint uVar10;
  uint local_48;
  int *piStack_44;
  int iStack_40;
  int iStack_3c;
  uint local_38 [4];
  int local_28;
  
  local_28 = __stack_chk_guard;
  piVar7 = *(int **)(param_2 + 0x10);
  iVar9 = piVar7[3];
  iVar2 = (**(code **)(*piVar7 + 0x20))(piVar7);
  iVar3 = *(int *)(iVar2 + 0x10);
  uVar1 = *(ushort *)(iVar3 + 8);
  if ((((uVar1 & 0xe00) == 0x200) && (*(uint *)(iVar3 + 4) < 4)) ||
     ((0x200 < (uVar1 & 0xc00) && (((uVar1 & 0x7000) == 0x1000 && (*(uint *)(iVar3 + 4) < 4)))))) {
    iVar3 = ralloc_size(*(undefined4 *)(param_1 + 0x28),0x10);
    ralloc_set_destructor(iVar3,_ZN9exec_node18_ralloc_destructorEPv);
    uVar4 = 0xffffffff;
    if ((piVar7 != (int *)0x0) && (iVar9 == 2)) {
      uVar4 = *(byte *)(param_2 + 0x1c) & 0xf;
    }
    *(int *)(iVar3 + 8) = iVar2;
    *(uint *)(iVar3 + 0xc) = uVar4;
    FUN_000b21d4(param_1,iVar3);
  }
  local_38[0] = 0;
  local_38[1] = 1;
  local_38[2] = 2;
  local_38[3] = 3;
  piVar7 = &local_28;
  if (((*(int *)(param_2 + 0x18) == 0) && (iVar2 = *(int *)(param_2 + 0x10), iVar2 != 0)) &&
     (*(int *)(iVar2 + 0xc) == 2)) {
    iVar3 = *(int *)(iVar2 + 0x10);
    piVar7 = (int *)(uint)*(ushort *)(iVar3 + 8);
    if (((((uint)piVar7 & 0xe00) == 0x200) && (*(uint *)(iVar3 + 4) < 4)) ||
       ((0x200 < ((uint)piVar7 & 0xc00) &&
        ((piVar7 = (int *)((uint)piVar7 & 0x7000), piVar7 == (int *)0x1000 &&
         (*(uint *)(iVar3 + 4) < 4)))))) {
      iVar3 = *(int *)(param_2 + 0x14);
      if ((iVar3 == 0) || (*(int *)(iVar3 + 0xc) != 2)) {
        if ((((iVar3 == 0) || (*(int *)(iVar3 + 0xc) != 5)) ||
            (iVar9 = *(int *)(iVar3 + 0x18), iVar9 == 0)) ||
           (piVar7 = *(int **)(iVar9 + 0xc), piVar7 != (int *)0x2)) goto LAB_000b1df8;
        uVar4 = (uint)*(ushort *)(iVar3 + 0x1c);
        local_38[0] = uVar4 & 3;
        local_38[1] = (uVar4 << 0x1c) >> 0x1e;
        local_38[2] = (uVar4 << 0x1a) >> 0x1e;
        local_38[3] = (uVar4 << 0x18) >> 0x1e;
        iVar3 = iVar9;
      }
      uVar4 = 0;
      uVar8 = *(byte *)(param_2 + 0x1c) & 0xf;
      iVar9 = 0;
      do {
        if ((1 << (uVar4 & 0xff) & uVar8) != 0) {
          (&local_48)[uVar4] = local_38[iVar9];
          iVar9 = iVar9 + 1;
        }
        uVar4 = uVar4 + 1;
      } while (uVar4 != 4);
      piVar7 = *(int **)(*(int *)(iVar2 + 0x18) + 0x18);
      uVar6 = (uint)(*(int *)(*(int *)(iVar3 + 0x18) + 0x18) << 0xf) >> 0x1e;
      uVar4 = (uint)((int)piVar7 << 0xf) >> 0x1e;
      if ((uVar6 == 3 || uVar4 == 3) || (uVar4 == uVar6)) {
        uVar4 = uVar8;
        if (*(int *)(iVar2 + 0x18) == *(int *)(iVar3 + 0x18)) {
          uVar6 = 0;
          uVar10 = local_38[0];
          while( true ) {
            if ((1 << (uVar10 & 0xff) & uVar8) != 0) {
              uVar4 = uVar4 & ~(1 << (uVar6 & 0xff));
            }
            if (uVar6 == 3) break;
            uVar10 = *(uint *)(((uint)local_38 | 4) + uVar6 * 4);
            uVar6 = uVar6 + 1;
          }
        }
        piVar7 = (int *)ralloc_size(*(undefined4 *)(param_1 + 0x28),0x24);
        ralloc_set_destructor(piVar7,_ZN9exec_node18_ralloc_destructorEPv);
        iVar3 = *(int *)(iVar3 + 0x18);
        piVar7[2] = *(int *)(iVar2 + 0x18);
        piVar7[3] = iVar3;
        piVar7[4] = uVar4;
        piVar7[5] = local_48;
        piVar7[6] = (int)piStack_44;
        piVar7[7] = iStack_40;
        piVar7[8] = iStack_3c;
        iVar2 = *(int *)(param_1 + 0x1c);
        *piVar7 = iVar2 + 4;
        ppiVar5 = *(int ***)(iVar2 + 8);
        piVar7[1] = (int)ppiVar5;
        *ppiVar5 = piVar7;
        *(int **)(iVar2 + 8) = piVar7;
        piVar7 = piStack_44;
      }
    }
  }
LAB_000b1df8:
  if (__stack_chk_guard - local_28 != 0) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(__stack_chk_guard - local_28,local_28,piVar7);
  }
  return;
}


/* address=000b1f80 symbol=FUN_000b1f80 */

undefined4 FUN_000b1f80(int param_1,int param_2)

{
  int **ppiVar1;
  undefined4 *puVar2;
  int iVar3;
  int **ppiVar4;
  int **ppiVar5;
  int **ppiVar6;
  int **ppiVar7;
  
  iVar3 = *(int *)(param_2 + 0x14);
  ppiVar4 = (int **)**(int ***)(param_2 + 0x18);
  if (ppiVar4 != (int **)0x0) {
    ppiVar5 = (int **)**(int ***)(iVar3 + 0x18);
    ppiVar1 = *(int ***)(param_2 + 0x18);
    ppiVar7 = *(int ***)(iVar3 + 0x18);
    if (ppiVar5 != (int **)0x0) {
      do {
        ppiVar6 = ppiVar5;
        ppiVar5 = ppiVar7 + 5;
        if (ppiVar7 == (int **)0x0) {
          ppiVar5 = (int **)0x18;
        }
        if (ppiVar1 != (int **)0x0) {
          ppiVar1 = ppiVar1 + -1;
        }
        if (((uint)*ppiVar5 & 0x1c00) != 0xc00) {
          (**(code **)((int)*ppiVar1 + 0xc))(ppiVar1,param_1);
        }
      } while (((int **)*ppiVar4 != (int **)0x0) &&
              (ppiVar5 = (int **)*ppiVar6, ppiVar1 = ppiVar4, ppiVar4 = (int **)*ppiVar4,
              ppiVar7 = ppiVar6, ppiVar5 != (int **)0x0));
      iVar3 = *(int *)(param_2 + 0x14);
    }
  }
  iVar3 = _ZNK21ir_function_signature10is_builtinEv(iVar3);
  if (iVar3 == 0) {
    puVar2 = *(undefined4 **)(param_1 + 0x1c);
    puVar2[1] = 0;
    *puVar2 = puVar2 + 1;
    puVar2[2] = puVar2;
    *(undefined *)(param_1 + 0x25) = 1;
  }
  return 1;
}


/* address=000b1ffa symbol=FUN_000b1ffa */

undefined4 FUN_000b1ffa(undefined4 param_1,int param_2)

{
  (**(code **)(**(int **)(param_2 + 0x10) + 0xc))(*(int **)(param_2 + 0x10),param_1);
  FUN_000b2240(param_1,param_2 + 0x14);
  FUN_000b2240(param_1,param_2 + 0x20);
  return 1;
}


/* address=000b2024 symbol=FUN_000b2024 */

void FUN_000b2024(int param_1,int *param_2)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  int *piVar4;
  uint uVar5;
  int **ppiVar6;
  int *piVar7;
  byte bVar8;
  int iVar9;
  int *piVar10;
  bool bVar11;
  int *local_58 [4];
  int *local_48 [5];
  uint local_34;
  uint local_30;
  uint local_2c;
  int local_28;
  
  local_28 = __stack_chk_guard;
  local_48[2] = (int *)0x0;
  local_48[3] = (int *)0x0;
  local_48[0] = (int *)0x0;
  local_48[1] = (int *)0x0;
  local_58[2] = (int *)0x0;
  local_58[3] = (int *)0x0;
  local_58[0] = (int *)0x0;
  local_58[1] = (int *)0x0;
  iVar9 = *param_2;
  if (iVar9 != 0) {
    if (*(int *)(iVar9 + 0xc) == 5) {
      iVar1 = *(int *)(iVar9 + 0x18);
      if ((iVar1 == 0) || (*(int *)(iVar1 + 0xc) != 2)) goto LAB_000b20a8;
      uVar5 = (uint)*(ushort *)(iVar9 + 0x1c);
      local_48[4] = (int *)(uVar5 & 3);
      local_34 = (uVar5 << 0x1c) >> 0x1e;
      local_30 = (uVar5 << 0x1a) >> 0x1e;
      local_2c = (uVar5 << 0x18) >> 0x1e;
    }
    else {
      if (*(int *)(iVar9 + 0xc) != 2) goto LAB_000b20a8;
      local_34 = 1;
      local_48[4] = (int *)0x0;
      local_30 = 2;
      local_2c = 3;
      iVar1 = iVar9;
    }
    uVar5 = ((uint)*(ushort *)(*(int *)(iVar9 + 0x10) + 8) << 0x14) >> 0x1d;
    if ((*(char *)(param_1 + 0x18) == '\0') &&
       (ppiVar6 = (int **)**(int ***)(param_1 + 0x1c), *ppiVar6 != (int *)0x0)) {
      piVar3 = *(int **)(iVar1 + 0x18);
      bVar8 = 1;
      do {
        if ((piVar3 == ppiVar6[2]) && (uVar5 != 0)) {
          piVar4 = ppiVar6[4];
          iVar9 = 0;
          do {
            piVar10 = local_48[iVar9 + 4];
            if ((1 << ((uint)piVar10 & 0xff) & (uint)piVar4) != 0) {
              local_48[iVar9] = ppiVar6[3];
              piVar7 = ppiVar6[(int)piVar10 + 5];
              local_58[iVar9] = piVar7;
              bVar8 = bVar8 & piVar7 == piVar10;
            }
            iVar9 = iVar9 + 1;
          } while (iVar9 < (int)uVar5);
        }
        ppiVar6 = (int **)*ppiVar6;
      } while (*ppiVar6 != (int *)0x0);
      if (local_48[0] != (int *)0x0) {
        if (1 < uVar5) {
          iVar9 = 1;
          do {
            if (local_48[iVar9] != local_48[0]) goto LAB_000b20a8;
            iVar9 = iVar9 + 1;
          } while (iVar9 < (int)uVar5);
        }
        iVar9 = *(int *)(param_1 + 0x2c);
        if (iVar9 == 0) {
          iVar9 = ralloc_parent();
          *(int *)(param_1 + 0x2c) = iVar9;
        }
        piVar4 = local_48[0];
        bVar11 = local_48[0] == piVar3;
        if (bVar11) {
          bVar11 = !(bool)(bVar8 ^ 1);
        }
        if (!bVar11) {
          uVar2 = ralloc_size(iVar9,0x1c);
          ralloc_set_destructor(uVar2,_ZN9exec_node18_ralloc_destructorEPv);
          _ZN23ir_dereference_variableC2EP11ir_variable(uVar2,piVar4);
          iVar9 = ralloc_size(*(undefined4 *)(param_1 + 0x2c),0x20);
          ralloc_set_destructor(iVar9,_ZN9exec_node18_ralloc_destructorEPv);
          _ZN10ir_swizzleC2EP9ir_rvaluejjjjj
                    (iVar9,uVar2,local_58[0],local_58[1],local_58[2],local_58[3],uVar5);
          *param_2 = iVar9;
          *(undefined *)(param_1 + 0x24) = 1;
        }
      }
    }
  }
LAB_000b20a8:
  if (__stack_chk_guard != local_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b21d4 symbol=FUN_000b21d4 */

void FUN_000b21d4(int param_1,int *param_2)

{
  int **ppiVar1;
  int **ppiVar2;
  uint uVar3;
  int iVar4;
  int *piVar5;
  uint uVar6;
  int iVar7;
  
  ppiVar2 = (int **)***(int ***)(param_1 + 0x1c);
  if (ppiVar2 != (int **)0x0) {
    iVar7 = param_2[2];
    ppiVar1 = (int **)**(int ***)(param_1 + 0x1c);
    do {
      if (((ppiVar1[2] == (int *)iVar7) &&
          (uVar3 = param_2[3], uVar6 = (uint)ppiVar1[4], ppiVar1[4] = (int *)(uVar6 & ~uVar3),
          (uVar6 & ~uVar3) == 0)) || (ppiVar1[3] == (int *)iVar7)) {
        iVar4 = (int)*ppiVar1;
        *(int **)(iVar4 + 4) = ppiVar1[1];
        *ppiVar1[1] = iVar4;
        ppiVar1[1] = (int *)0x0;
        *ppiVar1 = (int *)0x0;
      }
      piVar5 = *ppiVar2;
      ppiVar1 = ppiVar2;
      ppiVar2 = (int **)piVar5;
    } while (piVar5 != (int *)0x0);
  }
  iVar7 = *param_2;
  if (iVar7 != 0) {
    *(int *)(iVar7 + 4) = param_2[1];
    *(int *)param_2[1] = iVar7;
    param_2[1] = 0;
    *param_2 = 0;
  }
  iVar7 = *(int *)(param_1 + 0x20);
  *param_2 = iVar7 + 4;
  ppiVar2 = *(int ***)(iVar7 + 8);
  param_2[1] = (int)ppiVar2;
  *ppiVar2 = param_2;
  *(int **)(iVar7 + 8) = param_2;
  return;
}


/* address=000b2240 symbol=FUN_000b2240 */

void FUN_000b2240(int param_1,undefined4 param_2)

{
  byte bVar1;
  byte bVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  int *piVar5;
  int **ppiVar6;
  int *piVar7;
  int **ppiVar8;
  int *piVar9;
  int *piVar10;
  int **ppiVar11;
  int iVar12;
  
  ppiVar8 = *(int ***)(param_1 + 0x1c);
  uVar3 = *(undefined4 *)(param_1 + 0x20);
  bVar1 = *(byte *)(param_1 + 0x25);
  puVar4 = (undefined4 *)ralloc_size(*(undefined4 *)(param_1 + 0x28),0xc);
  ralloc_set_destructor(puVar4,_ZN9exec_list18_ralloc_destructorEPv);
  puVar4[1] = 0;
  *puVar4 = puVar4 + 1;
  puVar4[2] = puVar4;
  *(undefined4 **)(param_1 + 0x1c) = puVar4;
  puVar4 = (undefined4 *)ralloc_size(*(undefined4 *)(param_1 + 0x28),0xc);
  ralloc_set_destructor(puVar4,_ZN9exec_list18_ralloc_destructorEPv);
  puVar4[1] = 0;
  *puVar4 = puVar4 + 1;
  puVar4[2] = puVar4;
  *(undefined *)(param_1 + 0x25) = 0;
  *(undefined4 **)(param_1 + 0x20) = puVar4;
  ppiVar11 = (int **)*ppiVar8;
  piVar5 = *ppiVar11;
  while (piVar5 != (int *)0x0) {
    iVar12 = *(int *)(param_1 + 0x1c);
    piVar5 = (int *)ralloc_size(*(undefined4 *)(param_1 + 0x28),0x24);
    ralloc_set_destructor(piVar5,_ZN9exec_node18_ralloc_destructorEPv);
    piVar5[2] = (int)ppiVar11[2];
    piVar5[3] = (int)ppiVar11[3];
    piVar5[4] = (int)ppiVar11[4];
    piVar7 = ppiVar11[6];
    piVar9 = ppiVar11[7];
    piVar10 = ppiVar11[8];
    piVar5[5] = (int)ppiVar11[5];
    piVar5[6] = (int)piVar7;
    piVar5[7] = (int)piVar9;
    piVar5[8] = (int)piVar10;
    *piVar5 = iVar12 + 4;
    ppiVar6 = *(int ***)(iVar12 + 8);
    piVar5[1] = (int)ppiVar6;
    *ppiVar6 = piVar5;
    *(int **)(iVar12 + 8) = piVar5;
    ppiVar11 = (int **)*ppiVar11;
    piVar5 = *ppiVar11;
  }
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(param_1,param_2);
  bVar2 = *(byte *)(param_1 + 0x25);
  if (bVar2 != 0) {
    ppiVar8[1] = (int *)0x0;
    *ppiVar8 = (int *)(ppiVar8 + 1);
  }
  if (bVar2 != 0) {
    ppiVar8[2] = (int *)ppiVar8;
  }
  *(int ***)(param_1 + 0x1c) = ppiVar8;
  ppiVar8 = *(int ***)(param_1 + 0x20);
  *(byte *)(param_1 + 0x25) = bVar2 | bVar1;
  *(undefined4 *)(param_1 + 0x20) = uVar3;
  ppiVar11 = (int **)*ppiVar8;
  for (ppiVar8 = (int **)**ppiVar8; ppiVar8 != (int **)0x0; ppiVar8 = (int **)*ppiVar8) {
    FUN_000b21d4(param_1,ppiVar11);
    ppiVar11 = ppiVar8;
  }
  return;
}


/* address=000b2370 symbol=_Z6do_cseP9exec_list */

void _Z6do_cseP9exec_list(undefined4 param_1)

{
  undefined4 *puVar1;
  undefined **local_4c [6];
  undefined local_33;
  undefined4 local_30;
  undefined4 *local_2c;
  undefined4 local_28;
  int local_24;
  
  local_24 = __stack_chk_guard;
  _ZN23ir_hierarchical_visitorC1Ev(local_4c);
  local_4c[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eab9c;
  local_33 = 0;
  local_28 = param_1;
  local_30 = ralloc_context(0);
  puVar1 = (undefined4 *)ralloc_size(local_30,0xc);
  ralloc_set_destructor(puVar1,_ZN9exec_list18_ralloc_destructorEPv);
  puVar1[1] = 0;
  *puVar1 = puVar1 + 1;
  puVar1[2] = puVar1;
  local_2c = puVar1;
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(local_4c,param_1,1);
  local_4c[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eab9c;
  ralloc_free(local_30);
  if (__stack_chk_guard - local_24 != 0) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(__stack_chk_guard - local_24);
  }
  return;
}


/* address=000b2410 symbol=FUN_000b2410 */

undefined4 FUN_000b2410(int param_1,int param_2)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0x20);
  puVar1[1] = 0;
  *puVar1 = puVar1 + 1;
  puVar1[2] = puVar1;
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(param_1,param_2 + 0x10,1);
  puVar1 = *(undefined4 **)(param_1 + 0x20);
  puVar1[1] = 0;
  *puVar1 = puVar1 + 1;
  puVar1[2] = puVar1;
  return 1;
}


/* address=000b243e symbol=FUN_000b243e */

undefined4 FUN_000b243e(int param_1,int param_2)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(param_1 + 0x20);
  puVar1[1] = 0;
  *puVar1 = puVar1 + 1;
  puVar1[2] = puVar1;
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(param_1,param_2 + 0x26,1);
  puVar1 = *(undefined4 **)(param_1 + 0x20);
  puVar1[1] = 0;
  *puVar1 = puVar1 + 1;
  puVar1[2] = puVar1;
  return 1;
}


/* address=000b2470 symbol=FUN_000b2470 */

undefined4 FUN_000b2470(int *param_1,int param_2)

{
  undefined4 *puVar1;
  
  (**(code **)(*param_1 + 0x94))(param_1,param_2 + 0x10);
  puVar1 = (undefined4 *)param_1[8];
  puVar1[1] = 0;
  *puVar1 = puVar1 + 1;
  puVar1[2] = puVar1;
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(param_1,param_2 + 0x14,1);
  puVar1 = (undefined4 *)param_1[8];
  puVar1[1] = 0;
  *puVar1 = puVar1 + 1;
  puVar1[2] = puVar1;
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(param_1,param_2 + 0x20,1);
  puVar1 = (undefined4 *)param_1[8];
  puVar1[1] = 0;
  *puVar1 = puVar1 + 1;
  puVar1[2] = puVar1;
  return 1;
}


/* address=000b24d0 symbol=FUN_000b24d0 */

void FUN_000b24d0(int param_1,int **param_2)

{
  ushort uVar1;
  int iVar2;
  int *piVar3;
  int **ppiVar4;
  int **ppiVar5;
  int *piVar6;
  int *piVar7;
  int iVar8;
  int **ppiVar9;
  undefined4 local_4c;
  undefined **local_48 [6];
  char local_2f;
  int local_2c;
  int local_28;
  
  local_28 = __stack_chk_guard;
  piVar7 = *param_2;
  if (piVar7 != (int *)0x0) {
    iVar2 = piVar7[4];
    uVar1 = *(ushort *)(iVar2 + 8);
    if (((((0x200 < (uVar1 & 0xc00)) && ((uVar1 & 0x7000) == 0x1000)) && (*(uint *)(iVar2 + 4) < 4))
        || (((uVar1 & 0xe00) == 0x200 && (*(uint *)(iVar2 + 4) < 4)))) && ((piVar7[3] | 2U) == 6)) {
      _ZN23ir_hierarchical_visitorC1Ev(local_48);
      local_2f = '\x01';
      local_48[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eac48;
      (**(code **)(*piVar7 + 0xc))(piVar7,local_48);
      if (local_2f != '\0') {
        ppiVar9 = (int **)**(int ***)(param_1 + 0x20);
        if (*ppiVar9 != (int *)0x0) {
          piVar7 = *param_2;
LAB_000b256c:
          iVar2 = (**(code **)(*piVar7 + 0x14))(piVar7,*ppiVar9[2],0x15);
          if (iVar2 != 1) goto code_r0x000b2580;
          if (ppiVar9[4] == (int *)0x0) {
            piVar6 = ppiVar9[3];
            piVar3 = (int *)ralloc_size(piVar7,0x44);
            ralloc_set_destructor(piVar3);
            ppiVar4 = (int **)_ZN11ir_variableC2EPK9glsl_typePKc16ir_variable_mode14glsl_precision
                                        (piVar3,piVar7[4],&DAT_000b2720,10,piVar7[5]);
            if (piVar3 != (int *)0x0) {
              ppiVar4 = ppiVar4 + 1;
            }
            *ppiVar4 = piVar6 + 1;
            ppiVar4[1] = (int *)piVar6[2];
            *(int ***)piVar6[2] = ppiVar4;
            piVar6[2] = (int)ppiVar4;
            _ZN10ir_builder5derefC2EP11ir_variable(&local_4c,piVar3);
            ppiVar5 = (int **)_ZN10ir_builder6assignENS_5derefENS_7operandE(local_4c,*ppiVar9[2]);
            ppiVar4 = ppiVar5;
            if (ppiVar5 != (int **)0x0) {
              ppiVar4 = ppiVar5 + 1;
            }
            *ppiVar4 = piVar6 + 1;
            ppiVar4[1] = (int *)piVar6[2];
            *(int ***)piVar6[2] = ppiVar4;
            piVar6[2] = (int)ppiVar4;
            iVar2 = ralloc_size(piVar7,0x1c);
            ralloc_set_destructor(iVar2,_ZN9exec_node18_ralloc_destructorEPv);
            _ZN23ir_dereference_variableC2EP11ir_variable(iVar2,piVar3);
            *ppiVar9[2] = iVar2;
            ppiVar9[4] = piVar3;
            ppiVar9[2] = (int *)(ppiVar5 + 5);
            ppiVar4 = (int **)**(int ***)(param_1 + 0x20);
            piVar3 = *ppiVar4;
            while (piVar3 != (int *)0x0) {
              iVar2 = *ppiVar4[2];
              piVar3 = ppiVar5[5];
              _ZN23ir_hierarchical_visitorC1Ev(local_48);
              local_48[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eacf0;
              local_2f = '\0';
              local_2c = iVar2;
              (**(code **)(*piVar3 + 0xc))(piVar3,local_48);
              if (local_2f != '\0') {
                ppiVar4[3] = (int *)ppiVar5;
              }
              ppiVar4 = (int **)*ppiVar4;
              piVar3 = *ppiVar4;
            }
          }
          piVar7 = (int *)ralloc_size(piVar7,0x1c);
          ralloc_set_destructor(piVar7,_ZN9exec_node18_ralloc_destructorEPv);
          _ZN23ir_dereference_variableC2EP11ir_variable(piVar7,ppiVar9[4]);
          if (piVar7 != (int *)0x0) {
            *param_2 = piVar7;
            *(undefined *)(param_1 + 0x19) = 1;
            goto LAB_000b26f8;
          }
        }
LAB_000b26c8:
        iVar8 = *(int *)(param_1 + 0x20);
        piVar7 = (int *)ralloc_size(*(undefined4 *)(param_1 + 0x1c),0x14);
        ralloc_set_destructor(piVar7,_ZN9exec_node18_ralloc_destructorEPv);
        iVar2 = *(int *)(param_1 + 4);
        piVar7[2] = (int)param_2;
        piVar7[3] = iVar2;
        piVar7[4] = 0;
        *piVar7 = iVar8 + 4;
        ppiVar9 = *(int ***)(iVar8 + 8);
        piVar7[1] = (int)ppiVar9;
        *ppiVar9 = piVar7;
        *(int **)(iVar8 + 8) = piVar7;
      }
    }
  }
LAB_000b26f8:
  if (__stack_chk_guard != local_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
code_r0x000b2580:
  ppiVar9 = (int **)*ppiVar9;
  if (*ppiVar9 == (int *)0x0) goto LAB_000b26c8;
  goto LAB_000b256c;
}


/* address=000b2758 symbol=_Z31optimize_dead_builtin_variablesP9exec_list16ir_variable_mode */

void _Z31optimize_dead_builtin_variablesP9exec_list16ir_variable_mode(int *param_1,uint param_2)

{
  uint uVar1;
  int iVar2;
  int *piVar3;
  uint uVar4;
  char *pcVar5;
  int *piVar6;
  int *piVar7;
  bool bVar8;
  
  piVar7 = (int *)*param_1;
  if (piVar7 != (int *)0x0) {
    piVar7 = piVar7 + -1;
  }
  piVar6 = (int *)piVar7[1];
  bVar8 = piVar6 == (int *)0x0;
  if (!bVar8) {
    param_1 = piVar6 + -1;
    bVar8 = param_1 == (int *)0x0;
  }
  if (!bVar8) {
    do {
      piVar3 = param_1;
      uVar4 = piVar7[3];
      bVar8 = uVar4 == 7;
      if (bVar8) {
        uVar4 = piVar7[6];
        bVar8 = (uVar4 & 0x20) == 0;
      }
      if ((bVar8) &&
         (((uVar1 = uVar4 >> 9 & 0xf, uVar1 < 10 && ((1 << uVar1 & 0x203U) != 0)) ||
          (uVar1 == param_2)))) {
        uVar4 = uVar4 & 0x180;
        bVar8 = uVar4 != 0x100;
        if (bVar8) {
          uVar4 = (uint)(uVar1 != 9 && uVar1 != param_2);
        }
        if (!bVar8 || uVar4 == 1) {
          pcVar5 = (char *)piVar7[5];
          iVar2 = strncmp(pcVar5,"gl_",3);
          if (((iVar2 == 0) && (iVar2 = strcmp(pcVar5,"gl_ModelViewProjectionMatrix"), iVar2 != 0))
             && ((iVar2 = strcmp(pcVar5,"gl_Vertex"), iVar2 != 0 &&
                 (pcVar5 = strstr(pcVar5,"Transpose"), pcVar5 == (char *)0x0)))) {
            piVar6[1] = piVar7[2];
            *(int **)piVar7[2] = piVar6;
            piVar7[2] = 0;
            piVar7[1] = 0;
          }
        }
      }
      piVar6 = (int *)piVar3[1];
      param_1 = piVar6;
      if (piVar6 != (int *)0x0) {
        param_1 = piVar6 + -1;
      }
      piVar7 = piVar3;
    } while (param_1 != (int *)0x0);
  }
  return;
}


/* address=000b287c symbol=_Z24do_dead_builtin_varyingsP10gl_contextP9gl_shaderS2_jP14tfeedback_decl */

void _Z24do_dead_builtin_varyingsP10gl_contextP9gl_shaderS2_jP14tfeedback_decl
               (uint *param_1,int param_2,int param_3,int param_4,int param_5)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined4 uVar3;
  char *pcVar4;
  int iVar5;
  undefined4 uVar6;
  undefined uVar7;
  undefined auStack_1bc [116];
  undefined **local_148 [6];
  char local_12f;
  int local_12c;
  undefined4 local_128;
  undefined local_124;
  undefined local_123;
  int local_120;
  undefined4 uStack_11c;
  undefined4 local_118;
  undefined4 uStack_114;
  undefined4 local_110;
  undefined4 uStack_10c;
  int local_108;
  undefined4 uStack_104;
  undefined4 local_100;
  undefined2 local_fc;
  undefined4 local_f8;
  undefined **local_f0 [6];
  char local_d7;
  int local_d4;
  undefined4 local_d0;
  undefined local_cc;
  undefined local_cb;
  int local_c8;
  undefined4 uStack_c4;
  undefined4 local_c0;
  undefined4 uStack_bc;
  undefined4 local_b8;
  undefined4 uStack_b4;
  int local_b0;
  uint local_ac;
  undefined4 local_a8;
  undefined2 local_a4;
  undefined4 local_a0;
  undefined auStack_98 [116];
  int local_24;
  
  local_24 = __stack_chk_guard;
  if ((param_3 != 0) && (*(int *)(param_3 + 4) == 2)) {
    uVar6 = *(undefined4 *)(param_3 + 0xf0);
    uVar3 = _ZN23ir_hierarchical_visitorC1Ev(local_f0);
    local_d7 = '\x01';
    local_f0[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000ead9c;
    local_d4 = 0;
    local_d0 = 0;
    local_cc = 1;
    local_cb = 1;
    local_c8 = 0;
    uStack_c4 = 0;
    local_a4 = 0;
    local_a8 = 0;
    local_a0 = 3;
    local_b0 = 0;
    local_ac = 0;
    local_b8 = 0;
    uStack_b4 = 0;
    local_c0 = 0;
    uStack_bc = 0;
    _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(uVar3,uVar6,1);
    if (local_d4 == 0) {
      local_d7 = '\0';
    }
    if (local_c8 == 0) {
      local_cb = 0;
    }
    FUN_000b2b0c(auStack_98,uVar6,local_f0,0,0,0);
  }
  if ((*param_1 & 0xfffffffe) == 2) goto LAB_000b2ae0;
  _ZN23ir_hierarchical_visitorC1Ev(local_f0);
  local_d7 = '\x01';
  local_f0[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000ead9c;
  local_d4 = 0;
  local_d0 = 0;
  local_cc = 0;
  local_cb = 1;
  local_c8 = 0;
  uStack_c4 = 0;
  local_a4 = 0;
  local_a8 = 0;
  local_a0 = 3;
  local_b0 = 0;
  local_ac = 0;
  local_b8 = 0;
  uStack_b4 = 0;
  local_c0 = 0;
  uStack_bc = 0;
  _ZN23ir_hierarchical_visitorC1Ev(local_148);
  local_12f = '\x01';
  local_148[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000ead9c;
  local_12c = 0;
  local_128 = 0;
  local_124 = 0;
  local_123 = 1;
  local_120 = 0;
  uStack_11c = 0;
  local_fc = 0;
  local_100 = 0;
  local_f8 = 2;
  local_108 = 0;
  uStack_104 = 0;
  local_110 = 0;
  uStack_10c = 0;
  local_118 = 0;
  uStack_114 = 0;
  if (param_2 == 0) {
    if (param_3 != 0) goto LAB_000b2a44;
LAB_000b2a6a:
    if (((local_d7 != '\0') || (local_b0 != 0)) || ((char)local_a4 != '\0')) {
      FUN_000b2b0c(auStack_1bc,*(undefined4 *)(param_2 + 0xf0),local_f0,local_128,local_108,
                   (char)local_fc);
    }
    if (*(int *)(param_3 + 4) == 2) {
      local_d0 = 0xff;
    }
    if (((local_12f == '\0') && (local_108 == 0)) && ((char)local_fc == '\0')) goto LAB_000b2ae0;
    uVar6 = *(undefined4 *)(param_3 + 0xf0);
    puVar2 = &stack0xffffffe8;
    puVar1 = &stack0x000000d0;
    uVar3 = local_d0;
    iVar5 = local_b0;
    uVar7 = (char)local_a4;
  }
  else {
    if (param_4 != 0) {
      pcVar4 = (char *)(param_5 + 0x30);
      do {
        if ((*pcVar4 == '\0') && (*(int *)(pcVar4 + -4) == 0)) {
          iVar5 = *(int *)(pcVar4 + -0x1c);
          if (iVar5 < 3) {
            if (iVar5 == 1) {
LAB_000b29d2:
              local_ac = local_ac | 1;
            }
            else {
              if (iVar5 == 2) goto LAB_000b29c8;
LAB_000b29e2:
              if (iVar5 - 4U < 8) {
                local_d7 = '\0';
              }
            }
          }
          else if (iVar5 == 3) {
            local_a4 = CONCAT11(1,(char)local_a4);
          }
          else {
            if (iVar5 != 0xe) {
              if (iVar5 != 0xd) goto LAB_000b29e2;
              goto LAB_000b29d2;
            }
LAB_000b29c8:
            local_ac = local_ac | 2;
          }
        }
        param_4 = param_4 + -1;
        pcVar4 = pcVar4 + 0x3c;
      } while (param_4 != 0);
    }
    _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb
              (local_f0,*(undefined4 *)(param_2 + 0xf0),1);
    if (local_d4 == 0) {
      local_d7 = '\0';
    }
    if (local_c8 == 0) {
      local_cb = 0;
    }
    if (param_3 == 0) {
      if (local_d7 == '\0') goto LAB_000b2ae0;
      uVar6 = *(undefined4 *)(param_2 + 0xf0);
      puVar1 = &stack0x00000128;
    }
    else {
LAB_000b2a44:
      _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb
                (local_148,*(undefined4 *)(param_3 + 0xf0),1);
      if (local_12c == 0) {
        local_12f = '\0';
      }
      if (local_120 == 0) {
        local_123 = 0;
      }
      if (param_2 != 0) goto LAB_000b2a6a;
      if (local_12f == '\0') goto LAB_000b2ae0;
      uVar6 = *(undefined4 *)(param_3 + 0xf0);
      puVar1 = &stack0x000000d0;
    }
    puVar2 = &stack0x00000180;
    uVar3 = 0xff;
    iVar5 = 3;
    uVar7 = 1;
  }
  FUN_000b2b0c(puVar2 + -0x218,uVar6,puVar1 + -0x218,uVar3,iVar5,uVar7);
LAB_000b2ae0:
  if (__stack_chk_guard == local_24) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}


/* address=000b2b0c symbol=FUN_000b2b0c */

void FUN_000b2b0c(undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4,uint param_5,
                 int param_6)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  uint uVar3;
  int iVar4;
  undefined *puVar5;
  uint uVar6;
  char acStack_48 [32];
  int local_28;
  
  local_28 = __stack_chk_guard;
  puVar1 = (undefined4 *)_ZN23ir_hierarchical_visitorC1Ev();
  puVar1[7] = param_3;
  *puVar1 = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eae44;
  __aeabi_memclr4(puVar1 + 8,0x54);
  puVar5 = &UNK_000b2cdc;
  if (*(int *)(param_3 + 0x50) != 2) {
    puVar5 = &UNK_000b2cd8;
  }
  if (*(char *)(param_3 + 0x19) != '\0') {
    FUN_000b2ee4(puVar1,param_2,puVar1 + 0x10,"TexCoord",puVar5,*(undefined4 *)(param_3 + 0x20),
                 param_4);
  }
  if (*(char *)(param_3 + 0x25) != '\0') {
    FUN_000b2ee4(puVar1,param_2,puVar1 + 8,"FragData",puVar5,*(undefined4 *)(param_3 + 0x2c),0xff);
  }
  uVar6 = 0;
  uVar3 = *(uint *)(param_3 + 0x44);
  do {
    if ((1 << (uVar6 & 0xff) & (uVar3 | param_5)) == 0) {
      iVar4 = param_3 + uVar6 * 4;
      if (*(int *)(iVar4 + 0x30) != 0) {
        snprintf(acStack_48,0x20,"gl_%s_FrontColor%i_dummy",puVar5,uVar6);
        uVar2 = ralloc_size(param_2,0x44);
        ralloc_set_destructor(uVar2,_ZN9exec_node18_ralloc_destructorEPv);
        _ZN11ir_variableC2EPK9glsl_typePKc16ir_variable_mode14glsl_precision
                  (uVar2,_ZN9glsl_type10_vec4_typeE,acStack_48,10,1);
        puVar1[uVar6 + 0x18] = uVar2;
      }
      if (*(int *)(iVar4 + 0x38) != 0) {
        snprintf(acStack_48,0x20,"gl_%s_BackColor%i_dummy",puVar5,uVar6);
        uVar2 = ralloc_size(param_2,0x44);
        ralloc_set_destructor(uVar2,_ZN9exec_node18_ralloc_destructorEPv);
        _ZN11ir_variableC2EPK9glsl_typePKc16ir_variable_mode14glsl_precision
                  (uVar2,_ZN9glsl_type10_vec4_typeE,acStack_48,10,1);
        puVar1[uVar6 + 0x1a] = uVar2;
      }
    }
    uVar6 = uVar6 + 1;
  } while (uVar6 != 2);
  if (((param_6 == 0) && (*(char *)(param_3 + 0x4d) == '\0')) && (*(int *)(param_3 + 0x48) != 0)) {
    snprintf(acStack_48,0x20,"gl_%s_FogFragCoord_dummy",puVar5);
    uVar2 = ralloc_size(param_2,0x44);
    ralloc_set_destructor(uVar2,_ZN9exec_node18_ralloc_destructorEPv);
    _ZN11ir_variableC2EPK9glsl_typePKc16ir_variable_mode14glsl_precision
              (uVar2,_ZN9glsl_type11_float_typeE,acStack_48,10,0);
    puVar1[0x1c] = uVar2;
  }
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(puVar1,param_2,1);
  if (__stack_chk_guard - local_28 != 0) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(__stack_chk_guard - local_28);
  }
  return;
}


/* address=000b2dc6 symbol=FUN_000b2dc6 */

undefined4 FUN_000b2dc6(int param_1,int *param_2)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  
  iVar1 = (**(code **)(*param_2 + 0x20))(param_2);
  if (((uint)(*(int *)(iVar1 + 0x18) << 0x13) >> 0x1c == *(uint *)(param_1 + 0x50)) &&
     (iVar2 = *(int *)(iVar1 + 0x10), *(int *)(iVar2 + 4) == 9)) {
    if (*(char *)(param_1 + 0x24) == '\0') {
      if (*(int *)(iVar1 + 0x24) == 4) {
        uVar3 = *(uint *)(iVar2 + 0x10);
        *(undefined *)(param_1 + 0x19) = 0;
        *(uint *)(param_1 + 0x20) = (1 << (uVar3 & 0xff)) - 1U | *(uint *)(param_1 + 0x20);
      }
    }
    else if (*(int *)(iVar1 + 0x24) == 4) {
      uVar3 = *(uint *)(iVar2 + 0x10);
      *(undefined *)(param_1 + 0x25) = 0;
      *(uint *)(param_1 + 0x2c) = (1 << (uVar3 & 0xff)) - 1U | *(uint *)(param_1 + 0x2c);
    }
  }
  return 0;
}


/* address=000b2e24 symbol=FUN_000b2e24 */

undefined4 FUN_000b2e24(int param_1,int *param_2)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  
  iVar1 = (**(code **)(*param_2 + 0x20))(param_2);
  if ((iVar1 != 0) && ((uint)(*(int *)(iVar1 + 0x18) << 0x13) >> 0x1c == *(uint *)(param_1 + 0x50)))
  {
    if (*(char *)(param_1 + 0x24) == '\0') {
      if (*(int *)(iVar1 + 0x24) == 4) {
        *(int *)(param_1 + 0x1c) = iVar1;
        iVar3 = param_2[7];
        if ((iVar3 == 0) || (*(int *)(iVar3 + 0xc) != 3)) {
          if (*(int *)(*(int *)(iVar1 + 0x10) + 4) == 9) {
            uVar2 = *(uint *)(*(int *)(iVar1 + 0x10) + 0x10);
          }
          else {
            uVar2 = 0xffffffff;
          }
          *(undefined *)(param_1 + 0x19) = 0;
          uVar2 = (1 << (uVar2 & 0xff)) - 1U | *(uint *)(param_1 + 0x20);
        }
        else {
          uVar2 = _ZNK11ir_constant18get_uint_componentEj(iVar3,0);
          uVar2 = 1 << (uVar2 & 0xff) | *(uint *)(param_1 + 0x20);
        }
        *(uint *)(param_1 + 0x20) = uVar2;
        return 1;
      }
    }
    else if (*(int *)(iVar1 + 0x24) == 4) {
      *(int *)(param_1 + 0x28) = iVar1;
      iVar3 = param_2[7];
      if ((iVar3 != 0) && (*(int *)(iVar3 + 0xc) == 3)) {
        uVar2 = _ZNK11ir_constant18get_uint_componentEj(iVar3,0);
        *(uint *)(param_1 + 0x2c) = 1 << (uVar2 & 0xff) | *(uint *)(param_1 + 0x2c);
        return 1;
      }
      if (*(int *)(*(int *)(iVar1 + 0x10) + 4) == 9) {
        uVar2 = *(uint *)(*(int *)(iVar1 + 0x10) + 0x10);
      }
      else {
        uVar2 = 0xffffffff;
      }
      *(undefined *)(param_1 + 0x25) = 0;
      *(uint *)(param_1 + 0x2c) = (1 << (uVar2 & 0xff)) - 1U | *(uint *)(param_1 + 0x2c);
      return 1;
    }
  }
  return 0;
}


/* address=000b2ee4 symbol=FUN_000b2ee4 */

void FUN_000b2ee4(int param_1,int *param_2,int param_3,undefined4 param_4,undefined4 param_5,
                 uint param_6,uint param_7)

{
  bool bVar1;
  uint uVar2;
  int iVar3;
  int *piVar4;
  uint uVar5;
  char acStack_48 [32];
  int local_28;
  
  local_28 = __stack_chk_guard;
  uVar5 = 7;
  do {
    uVar2 = 1 << (uVar5 & 0xff);
    if ((uVar2 & param_6) != 0) {
      if ((uVar2 & param_7) == 0) {
        snprintf(acStack_48,0x20,"gl_%s_%s%i_dummy",param_5,param_4,uVar5);
        piVar4 = (int *)ralloc_size(param_2,0x44);
        ralloc_set_destructor(piVar4,_ZN9exec_node18_ralloc_destructorEPv);
        _ZN11ir_variableC2EPK9glsl_typePKc16ir_variable_mode14glsl_precision
                  (piVar4,_ZN9glsl_type10_vec4_typeE,acStack_48,10,3);
        *(int **)(param_3 + uVar5 * 4) = piVar4;
      }
      else {
        snprintf(acStack_48,0x20,"gl_%s_%s%i",param_5,param_4,uVar5);
        iVar3 = ralloc_size(param_2,0x44);
        ralloc_set_destructor(iVar3,_ZN9exec_node18_ralloc_destructorEPv);
        _ZN11ir_variableC2EPK9glsl_typePKc16ir_variable_mode14glsl_precision
                  (iVar3,_ZN9glsl_type10_vec4_typeE,acStack_48,
                   *(undefined4 *)(*(int *)(param_1 + 0x1c) + 0x50),3);
        *(int *)(param_3 + uVar5 * 4) = iVar3;
        *(uint *)(iVar3 + 0x24) = uVar5 + 4;
        *(uint *)(iVar3 + 0x18) = *(uint *)(iVar3 + 0x18) | 0x80000;
        iVar3 = *(int *)(param_3 + uVar5 * 4);
        *(undefined *)(iVar3 + 0x1c) = *(undefined *)(iVar3 + 0x1c);
        *(uint *)(iVar3 + 0x18) = *(uint *)(iVar3 + 0x18) & 0xffefffff;
        piVar4 = *(int **)(param_3 + uVar5 * 4);
      }
      iVar3 = *param_2;
      if (piVar4 != (int *)0x0) {
        piVar4 = piVar4 + 1;
      }
      *piVar4 = iVar3;
      piVar4[1] = *(int *)(iVar3 + 4);
      **(int ***)(iVar3 + 4) = piVar4;
      *(int **)(iVar3 + 4) = piVar4;
    }
    bVar1 = 0 < (int)uVar5;
    uVar5 = uVar5 - 1;
  } while (bVar1);
  if (__stack_chk_guard != local_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b310c symbol=FUN_000b310c */

void FUN_000b310c(int *param_1,int param_2)

{
  int local_18;
  int local_14;
  
  local_14 = __stack_chk_guard;
  (**(code **)(*param_1 + 0x94))(param_1,param_2 + 0x14);
  (**(code **)(*param_1 + 0x94))(param_1,param_2 + 0x18);
  local_18 = *(int *)(param_2 + 0x10);
  (**(code **)(*param_1 + 0x94))(param_1,&local_18);
  if (local_18 != *(int *)(param_2 + 0x10)) {
    _ZN13ir_assignment7set_lhsEP9ir_rvalue(param_2);
  }
  if (__stack_chk_guard - local_14 != 0) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(__stack_chk_guard - local_14);
  }
  return;
}


/* address=000b317c symbol=FUN_000b317c */

void FUN_000b317c(int param_1,int **param_2)

{
  bool bVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int *piVar6;
  int iVar7;
  
  if (*param_2 == (int *)0x0) {
    return;
  }
  uVar2 = ralloc_parent();
  iVar4 = *(int *)(param_1 + 0x1c);
  if (((*(char *)(iVar4 + 0x19) != '\0') && (piVar6 = *param_2, piVar6 != (int *)0x0)) &&
     (piVar6[3] == 0)) {
    iVar3 = (**(code **)(*piVar6 + 0x20))(piVar6);
    iVar4 = *(int *)(param_1 + 0x1c);
    if (iVar3 == *(int *)(iVar4 + 0x1c)) {
      iVar4 = piVar6[7];
      if (*(int *)(iVar4 + 0xc) != 3) {
        iVar4 = 0;
      }
      iVar4 = _ZNK11ir_constant18get_uint_componentEj(iVar4,0);
      piVar6 = (int *)ralloc_size(uVar2,0x1c);
      ralloc_set_destructor(piVar6,_ZN9exec_node18_ralloc_destructorEPv);
      uVar2 = *(undefined4 *)(param_1 + iVar4 * 4 + 0x40);
      goto LAB_000b32a8;
    }
  }
  if (((*(char *)(iVar4 + 0x25) == '\0') || (piVar6 = *param_2, piVar6 == (int *)0x0)) ||
     ((piVar6[3] != 0 ||
      (iVar4 = (**(code **)(*piVar6 + 0x20))(piVar6),
      iVar4 != *(int *)(*(int *)(param_1 + 0x1c) + 0x28))))) {
    piVar6 = *param_2;
    if (piVar6 == (int *)0x0) {
      return;
    }
    if (piVar6[3] != 2) {
      return;
    }
    iVar3 = (**(code **)(*piVar6 + 0x20))();
    iVar4 = 0;
    do {
      iVar5 = *(int *)(param_1 + 0x1c) + iVar4 * 4;
      if ((iVar3 == *(int *)(iVar5 + 0x30)) &&
         (iVar7 = param_1 + iVar4 * 4, *(int *)(iVar7 + 0x60) != 0)) {
        piVar6 = (int *)ralloc_size(uVar2,0x1c);
        ralloc_set_destructor(piVar6,_ZN9exec_node18_ralloc_destructorEPv);
        uVar2 = *(undefined4 *)(iVar7 + 0x60);
LAB_000b32e6:
        _ZN23ir_dereference_variableC2EP11ir_variable(piVar6,uVar2);
        *param_2 = piVar6;
        return;
      }
      if ((iVar3 == *(int *)(iVar5 + 0x38)) &&
         (iVar5 = param_1 + iVar4 * 4, *(int *)(iVar5 + 0x68) != 0)) {
        piVar6 = (int *)ralloc_size(uVar2,0x1c);
        ralloc_set_destructor(piVar6,_ZN9exec_node18_ralloc_destructorEPv);
        uVar2 = *(undefined4 *)(iVar5 + 0x68);
        goto LAB_000b32e6;
      }
      bVar1 = iVar4 < 1;
      iVar4 = iVar4 + 1;
    } while (bVar1);
    if (iVar3 != *(int *)(*(int *)(param_1 + 0x1c) + 0x48)) {
      return;
    }
    if (*(int *)(param_1 + 0x70) == 0) {
      return;
    }
    piVar6 = (int *)ralloc_size(uVar2,0x1c);
    ralloc_set_destructor(piVar6,_ZN9exec_node18_ralloc_destructorEPv);
    uVar2 = *(undefined4 *)(param_1 + 0x70);
  }
  else {
    iVar4 = piVar6[7];
    if (*(int *)(iVar4 + 0xc) != 3) {
      iVar4 = 0;
    }
    iVar4 = _ZNK11ir_constant18get_uint_componentEj(iVar4,0);
    piVar6 = (int *)ralloc_size(uVar2,0x1c);
    ralloc_set_destructor(piVar6,_ZN9exec_node18_ralloc_destructorEPv);
    uVar2 = *(undefined4 *)(param_1 + iVar4 * 4 + 0x20);
  }
LAB_000b32a8:
  _ZN23ir_dereference_variableC2EP11ir_variable(piVar6,uVar2);
  *param_2 = piVar6;
  return;
}


/* address=000b330c symbol=_Z12do_dead_codeP9exec_listb */

void _Z12do_dead_codeP9exec_listb(undefined4 param_1,int param_2)

{
  undefined4 uVar1;
  int iVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  int iVar7;
  bool bVar8;
  undefined auStack_4c [28];
  undefined4 local_30;
  int local_24;
  
  local_24 = __stack_chk_guard;
  uVar1 = _ZN28ir_variable_refcount_visitorC1Ev(auStack_4c);
  _ZN23ir_hierarchical_visitor3runEP9exec_list(uVar1,param_1);
  iVar2 = _mesa_hash_table_next_entry(local_30,0);
  do {
    if (iVar2 == 0) {
      _ZN28ir_variable_refcount_visitorD1Ev(auStack_4c);
      if (__stack_chk_guard - local_24 != 0) {
                    /* WARNING: Subroutine does not return */
        __stack_chk_fail(__stack_chk_guard - local_24);
      }
      return;
    }
    piVar3 = *(int **)(iVar2 + 8);
    if (((uint)piVar3[3] <= (uint)piVar3[4]) && (*(char *)(piVar3 + 5) != '\0')) {
      iVar2 = *piVar3;
      iVar4 = piVar3[1];
      uVar6 = *(uint *)(iVar2 + 0x18) >> 9;
      if (iVar4 == 0) {
        if ((uVar6 & 0xf) == 1) {
          iVar4 = 1;
          if (param_2 == 0) {
            iVar4 = *(int *)(iVar2 + 0x34);
          }
          if (param_2 != 0 || iVar4 != 0) goto LAB_000b33ee;
          if (((*(uint *)(iVar2 + 0x18) & 0x1e00) == 0x200) &&
             (iVar4 = *(int *)(iVar2 + 0x40), iVar4 != 0)) {
            iVar5 = *(int *)(iVar2 + 0x10);
            if (iVar5 != iVar4) {
              iVar7 = *(int *)(iVar5 + 4);
              bVar8 = iVar7 == 9;
              if (bVar8) {
                iVar7 = *(int *)(iVar5 + 0x14);
              }
              if (!bVar8 || iVar7 != iVar4) {
                iVar5 = iVar4;
              }
            }
            if ((*(ushort *)(iVar5 + 8) & 0x180) != 0x100) goto LAB_000b33ee;
          }
        }
        iVar4 = *(int *)(iVar2 + 4);
        *(undefined4 *)(iVar4 + 4) = *(undefined4 *)(iVar2 + 8);
        **(int **)(iVar2 + 8) = iVar4;
        *(undefined4 *)(iVar2 + 8) = 0;
        *(undefined4 *)(iVar2 + 4) = 0;
      }
      else if (((int)(uVar6 << 0x1c) >> 0x1c < 0) || ((1 << (uVar6 & 0xf) & 200U) == 0)) {
        iVar2 = *(int *)(iVar4 + 4);
        *(undefined4 *)(iVar2 + 4) = *(undefined4 *)(iVar4 + 8);
        **(int **)(iVar4 + 8) = iVar2;
        *(undefined4 *)(iVar4 + 8) = 0;
        *(undefined4 *)(iVar4 + 4) = 0;
      }
    }
LAB_000b33ee:
    iVar2 = _mesa_hash_table_next_entry(local_30);
  } while( true );
}


/* address=000b342c symbol=_Z21do_dead_code_unlinkedP9exec_list */

uint _Z21do_dead_code_unlinkedP9exec_list(int *param_1)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  int *piVar5;
  
  uVar4 = 0;
  do {
    iVar1 = *param_1;
    do {
      do {
        iVar3 = iVar1;
        if (iVar1 != 0) {
          iVar3 = iVar1 + -4;
        }
        param_1 = (int *)(iVar3 + 4);
        iVar1 = *param_1;
        if (iVar1 == 0) {
          return uVar4 & 1;
        }
      } while ((iVar3 == 0) || (*(int *)(iVar3 + 0xc) != 10));
      iVar3 = *(int *)(iVar3 + 0x14);
      if (iVar3 != 0) {
        iVar3 = iVar3 + -4;
      }
      piVar5 = (int *)(iVar3 + 4);
    } while (*piVar5 == 0);
    do {
      uVar2 = _Z12do_dead_codeP9exec_listb(iVar3 + 0x26,0);
      iVar3 = *piVar5;
      uVar4 = uVar4 | uVar2;
      if (iVar3 != 0) {
        iVar3 = iVar3 + -4;
      }
      piVar5 = (int *)(iVar3 + 4);
    } while (*piVar5 != 0);
  } while( true );
}


/* address=000b3490 symbol=_Z18do_dead_code_localP9exec_list */

void _Z18do_dead_code_localP9exec_list(undefined4 param_1)

{
  undefined uStack_d;
  int local_c;
  
  local_c = __stack_chk_guard;
  uStack_d = 0;
  _Z21call_for_basic_blocksP9exec_listPFvP14ir_instructionS2_PvES3_(param_1,0xb34d9,&uStack_d);
  if (__stack_chk_guard != local_c) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uStack_d);
  }
  return;
}


/* address=000b34d8 symbol=FUN_000b34d8 */

void FUN_000b34d8(int **param_1,int **param_2,byte *param_3)

{
  ushort uVar1;
  byte bVar2;
  int **ppiVar3;
  int **ppiVar4;
  int **ppiVar5;
  byte bVar6;
  undefined4 uVar7;
  int **ppiVar8;
  int *piVar9;
  int **ppiVar10;
  int iVar11;
  undefined4 uVar12;
  int ***pppiVar13;
  uint uVar14;
  undefined **ppuVar15;
  byte bVar16;
  uint uVar17;
  uint uVar18;
  int iVar19;
  bool bVar20;
  int **local_74;
  int *local_70;
  int ***local_6c;
  int **local_68 [7];
  int ***local_4c;
  undefined **local_48 [7];
  int ***local_2c;
  int local_28;
  
  local_6c = &local_74;
  local_28 = __stack_chk_guard;
  local_70 = (int *)0x0;
  local_74 = &local_70;
  uVar7 = ralloc_context(0);
  bVar6 = 0;
  do {
    ppiVar8 = (int **)param_1[1];
    if (ppiVar8 != (int **)0x0) {
      ppiVar8 = ppiVar8 + -1;
    }
    if ((param_1 == (int **)0x0) || (param_1[3] != (int *)0x8)) {
      _ZN23ir_hierarchical_visitorC1Ev(local_48);
      local_48[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eaf98;
      local_2c = &local_74;
      (*(code *)(*param_1)[3])(param_1,local_48);
    }
    else {
      _ZN23ir_hierarchical_visitorC1Ev(local_68);
      local_68[0] = (int **)&PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eaf98;
      local_4c = &local_74;
      (**(code **)(*param_1[5] + 0xc))(param_1[5],local_68);
      piVar9 = param_1[6];
      if (piVar9 != (int *)0x0) {
        (**(code **)(*piVar9 + 0xc))(piVar9,local_68);
      }
      piVar9 = param_1[4];
      _ZN23ir_hierarchical_visitorC1Ev(local_48);
      local_48[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eaef0;
      local_2c = local_68;
      (**(code **)(*piVar9 + 0xc))(piVar9,local_48);
      ppiVar10 = (int **)(**(code **)(*param_1[4] + 0x20))();
      if (param_1[6] == (int *)0x0) {
        piVar9 = param_1[4];
        if ((piVar9 == (int *)0x0) || (piVar9[3] != 2)) {
LAB_000b371c:
          iVar11 = _ZN13ir_assignment22whole_variable_writtenEv(param_1);
          if (iVar11 == 0) goto LAB_000b35b8;
          bVar16 = 0;
          ppiVar5 = (int **)*local_74;
          ppiVar4 = local_74;
          while (ppiVar3 = ppiVar5, ppiVar3 != (int **)0x0) {
            if ((int **)ppiVar4[2] == ppiVar10) {
              piVar9 = ppiVar4[3];
              iVar11 = piVar9[1];
              *(int *)(iVar11 + 4) = piVar9[2];
              *(int *)piVar9[2] = iVar11;
              piVar9[2] = 0;
              piVar9[1] = 0;
              piVar9 = *ppiVar4;
              piVar9[1] = (int)ppiVar4[1];
              *ppiVar4[1] = (int)piVar9;
              bVar16 = 1;
              ppiVar4[1] = (int *)0x0;
              *ppiVar4 = (int *)0x0;
            }
            ppiVar4 = ppiVar3;
            ppiVar5 = (int **)*ppiVar3;
          }
        }
        else {
          iVar11 = *(int *)(piVar9[6] + 0x10);
          uVar1 = *(ushort *)(iVar11 + 8);
          if ((((uVar1 & 0xe00) != 0x200) || (3 < *(uint *)(iVar11 + 4))) &&
             ((((uVar1 & 0xc00) < 0x201 || ((uVar1 & 0x7000) != 0x1000)) ||
              (3 < *(uint *)(iVar11 + 4))))) goto LAB_000b371c;
          bVar16 = 0;
          ppiVar5 = (int **)*local_74;
          ppiVar4 = local_74;
          while (ppiVar3 = ppiVar5, ppiVar3 != (int **)0x0) {
            if (((int **)ppiVar4[2] == ppiVar10) &&
               (uVar18 = (uint)*(byte *)(param_1 + 7) & (uint)ppiVar4[4] & 0xf, uVar18 != 0)) {
              bVar16 = *(byte *)((int)ppiVar4[3] + 0x1c);
              *(byte *)((int)ppiVar4[3] + 0x1c) = bVar16 & 0xf0 | bVar16 & ~(byte)uVar18 & 0xf;
              iVar11 = (int)ppiVar4[3];
              ppiVar4[4] = (int *)((uint)ppiVar4[4] & ~uVar18);
              if ((*(byte *)(iVar11 + 0x1c) & 0xf) == 0) {
                iVar19 = *(int *)(iVar11 + 4);
                *(undefined4 *)(iVar19 + 4) = *(undefined4 *)(iVar11 + 8);
                **(int **)(iVar11 + 8) = iVar19;
                *(undefined4 *)(iVar11 + 8) = 0;
                *(undefined4 *)(iVar11 + 4) = 0;
                iVar11 = (int)*ppiVar4;
                *(int **)(iVar11 + 4) = ppiVar4[1];
                *ppiVar4[1] = iVar11;
                bVar16 = 1;
                ppiVar4[1] = (int *)0x0;
                *ppiVar4 = (int *)0x0;
              }
              else {
                uVar12 = ralloc_parent();
                iVar11 = (int)ppiVar4[3];
                uVar14 = 0;
                ppuVar15 = (undefined **)0x0;
                iVar19 = 0;
                do {
                  uVar17 = 1 << (uVar14 & 0xff);
                  if (((*(byte *)(iVar11 + 0x1c) & 0xf | uVar18) & uVar17) != 0) {
                    if ((uVar17 & uVar18) == 0) {
                      local_48[iVar19] = ppuVar15;
                      iVar19 = iVar19 + 1;
                    }
                    ppuVar15 = (undefined **)((int)ppuVar15 + 1);
                  }
                  uVar14 = uVar14 + 1;
                } while (uVar14 != 4);
                uVar12 = ralloc_size(uVar12,0x20);
                ralloc_set_destructor(uVar12,_ZN9exec_node18_ralloc_destructorEPv);
                _ZN10ir_swizzleC2EP9ir_rvaluePKjj
                          (uVar12,*(undefined4 *)((int)ppiVar4[3] + 0x14),local_48,iVar19);
                *(undefined4 *)((int)ppiVar4[3] + 0x14) = uVar12;
                bVar16 = 1;
              }
            }
            ppiVar4 = ppiVar3;
            ppiVar5 = (int **)*ppiVar3;
          }
        }
      }
      else {
LAB_000b35b8:
        bVar16 = 0;
      }
      pppiVar13 = (int ***)ralloc_size(uVar7,0x14);
      ralloc_set_destructor(pppiVar13,_ZN9exec_node18_ralloc_destructorEPv);
      pppiVar13[2] = ppiVar10;
      pppiVar13[3] = param_1;
      bVar2 = *(byte *)(param_1 + 7);
      *pppiVar13 = &local_70;
      pppiVar13[4] = (int **)(bVar2 & 0xf);
      pppiVar13[1] = (int **)local_6c;
      *local_6c = (int **)pppiVar13;
      bVar6 = bVar6 | bVar16;
      local_6c = pppiVar13;
    }
    bVar20 = param_1 == param_2;
    param_1 = ppiVar8;
    if (bVar20) {
      *param_3 = bVar6;
      ralloc_free(uVar7);
      if (__stack_chk_guard == local_28) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
  } while( true );
}


/* address=000b37f8 symbol=FUN_000b37f8 */

undefined4 FUN_000b37f8(int param_1,int param_2)

{
  (**(code **)(**(int **)(param_2 + 0x1c) + 0xc))
            (*(int **)(param_2 + 0x1c),*(undefined4 *)(param_1 + 0x1c));
  return 0;
}


/* address=000b380c symbol=FUN_000b380c */

undefined4 FUN_000b380c(undefined4 param_1,int param_2)

{
  FUN_000b38a0(param_1,*(undefined4 *)(param_2 + 0x18),0xffffffff);
  return 0;
}


/* address=000b3858 symbol=FUN_000b3858 */

undefined4 FUN_000b3858(undefined4 param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  undefined4 uVar3;
  
  iVar1 = *(int *)(param_2 + 0x18);
  uVar3 = 0;
  if ((iVar1 != 0) && (*(int *)(iVar1 + 0xc) == 2)) {
    uVar2 = (uint)*(ushort *)(param_2 + 0x1c);
    uVar3 = 1;
    FUN_000b38a0(param_1,*(undefined4 *)(iVar1 + 0x18),
                 1 << ((uVar2 << 0x1a) >> 0x1e) | 1 << (uVar2 & 3) | 1 << ((uVar2 << 0x1c) >> 0x1e)
                 | 1 << ((uVar2 << 0x18) >> 0x1e));
  }
  return uVar3;
}


/* address=000b38a0 symbol=FUN_000b38a0 */

void FUN_000b38a0(int param_1,int *param_2,uint param_3)

{
  ushort uVar1;
  int iVar2;
  int *piVar3;
  int **ppiVar4;
  int **ppiVar5;
  int **ppiVar6;
  
  ppiVar5 = (int **)***(int ***)(param_1 + 0x1c);
  if (ppiVar5 != (int **)0x0) {
    ppiVar4 = (int **)**(int ***)(param_1 + 0x1c);
    do {
      if (ppiVar4[2] == param_2) {
        iVar2 = param_2[4];
        uVar1 = *(ushort *)(iVar2 + 8);
        if (((((uVar1 & 0xe00) != 0x200) || (3 < *(uint *)(iVar2 + 4))) &&
            (((uVar1 & 0xc00) < 0x201 ||
             (((uVar1 & 0x7000) != 0x1000 || (3 < *(uint *)(iVar2 + 4))))))) ||
           (piVar3 = ppiVar4[4], ppiVar4[4] = (int *)((uint)piVar3 & ~param_3),
           (int *)((uint)piVar3 & ~param_3) == (int *)0x0)) {
          piVar3 = *ppiVar4;
          piVar3[1] = (int)ppiVar4[1];
          *ppiVar4[1] = (int)piVar3;
          ppiVar4[1] = (int *)0x0;
          *ppiVar4 = (int *)0x0;
        }
      }
      ppiVar6 = (int **)*ppiVar5;
      ppiVar4 = ppiVar5;
      ppiVar5 = ppiVar6;
    } while (ppiVar6 != (int **)0x0);
  }
  return;
}


/* address=000b3910 symbol=_Z17do_dead_functionsP9exec_list */

void _Z17do_dead_functionsP9exec_list(int **param_1)

{
  int *piVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  int iVar4;
  int *piVar5;
  int *piVar6;
  int *piVar7;
  undefined4 *puVar8;
  bool bVar9;
  undefined **local_50 [6];
  undefined4 *local_37;
  undefined4 local_33;
  undefined4 **local_2f;
  undefined4 local_28;
  int local_24;
  
  local_24 = __stack_chk_guard;
  _ZN23ir_hierarchical_visitorC1Ev(local_50);
  local_37 = &local_33;
  local_50[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eb044;
  local_2f = &local_37;
  local_33 = 0;
  local_28 = ralloc_context(0);
  piVar6 = (int *)0x1;
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(local_50,param_1);
  puVar2 = (undefined4 *)*local_37;
  puVar8 = local_37;
  while (puVar3 = puVar2, puVar3 != (undefined4 *)0x0) {
    if (*(char *)(puVar8 + 3) == '\0') {
      piVar7 = (int *)puVar8[2];
      iVar4 = piVar7[1];
      *(int *)(iVar4 + 4) = piVar7[2];
      piVar6 = (int *)piVar7[2];
      *piVar6 = iVar4;
      piVar7[2] = 0;
      piVar7[1] = 0;
      if (piVar7 != (int *)0x0) {
        (**(code **)(*piVar7 + 4))();
      }
    }
    ralloc_set_destructor(puVar8,0);
    ralloc_free(puVar8);
    puVar8 = puVar3;
    puVar2 = (undefined4 *)*puVar3;
  }
  piVar7 = *param_1;
  if (piVar7 != (int *)0x0) {
    piVar7 = piVar7 + -1;
  }
  if (piVar7[1] != 0) {
    piVar5 = (int *)(piVar7[1] + -4);
    while (piVar1 = piVar5, piVar1 != (int *)0x0) {
      if (piVar7 == (int *)0x0) {
LAB_000b39ec:
        piVar5 = (int *)piVar1[1];
      }
      else {
        piVar5 = (int *)piVar7[3];
        bVar9 = piVar5 == (int *)0xa;
        if (bVar9) {
          piVar5 = (int *)piVar7[5];
          piVar6 = piVar7 + 6;
        }
        if (!bVar9 || piVar5 != piVar6) goto LAB_000b39ec;
        iVar4 = piVar7[1];
        *(int *)(iVar4 + 4) = piVar7[2];
        piVar6 = (int *)piVar7[2];
        *piVar6 = iVar4;
        piVar7[2] = 0;
        piVar7[1] = 0;
        (**(code **)(*piVar7 + 4))();
        piVar5 = (int *)piVar1[1];
      }
      piVar7 = piVar1;
      if (piVar5 != (int *)0x0) {
        piVar5 = piVar5 + -1;
      }
    }
  }
  local_50[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eb044;
  ralloc_free(local_28);
  if (__stack_chk_guard - local_24 == 0) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(__stack_chk_guard - local_24);
}


/* address=000b3a34 symbol=FUN_000b3a34 */

undefined4 FUN_000b3a34(undefined4 param_1,int param_2)

{
  int iVar1;
  int iVar2;
  
  iVar1 = FUN_000b3a70();
  iVar2 = strcmp(*(char **)(*(int *)(param_2 + 0x38) + 0x10),"main");
  if (iVar2 == 0) {
    *(undefined *)(iVar1 + 0xc) = 1;
  }
  return 0;
}


/* address=000b3a70 symbol=FUN_000b3a70 */

int ** FUN_000b3a70(int param_1,int *param_2)

{
  int **ppiVar1;
  int **ppiVar2;
  
  ppiVar2 = *(int ***)(param_1 + 0x19);
  while( true ) {
    if (*ppiVar2 == (int *)0x0) {
      ppiVar2 = (int **)ralloc_size(*(undefined4 *)(param_1 + 0x28),0x10);
      ralloc_set_destructor(ppiVar2,_ZN9exec_node18_ralloc_destructorEPv);
      *(undefined *)(ppiVar2 + 3) = 0;
      ppiVar2[2] = param_2;
      *ppiVar2 = (int *)(param_1 + 0x1d);
      ppiVar1 = *(int ***)(param_1 + 0x21);
      ppiVar2[1] = (int *)ppiVar1;
      *ppiVar1 = (int *)ppiVar2;
      *(int ***)(param_1 + 0x21) = ppiVar2;
      return ppiVar2;
    }
    if (ppiVar2[2] == param_2) break;
    ppiVar2 = (int **)*ppiVar2;
  }
  return ppiVar2;
}


/* address=000b3acc symbol=_Z28opt_flatten_nested_if_blocksP9exec_list */

void _Z28opt_flatten_nested_if_blocksP9exec_list(undefined4 param_1)

{
  undefined4 uVar1;
  undefined **local_30 [6];
  undefined local_17;
  int local_14;
  
  local_14 = __stack_chk_guard;
  uVar1 = _ZN23ir_hierarchical_visitorC1Ev(local_30);
  local_17 = 0;
  local_30[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eb0ec;
  _ZN23ir_hierarchical_visitor3runEP9exec_list(uVar1,param_1);
  if (__stack_chk_guard != local_14) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(local_17);
  }
  return;
}


/* address=000b3b24 symbol=FUN_000b3b24 */

undefined4 FUN_000b3b24(int param_1,int param_2)

{
  int *piVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  int *piVar5;
  undefined4 *puVar6;
  int **ppiVar7;
  int iVar8;
  
  piVar5 = (int *)(param_2 + 0x14);
  puVar6 = (undefined4 *)(param_2 + 0x18);
  if (((undefined4 *)*piVar5 != puVar6) && (*(int *)(param_2 + 0x20) == param_2 + 0x24)) {
    iVar8 = *piVar5;
    if (iVar8 != 0) {
      iVar8 = iVar8 + -4;
    }
    if ((((*(int *)(iVar8 + 0xc) == 0xc) && (iVar8 != 0)) && (**(int **)(iVar8 + 4) == 0)) &&
       (*(int *)(iVar8 + 0x20) == iVar8 + 0x24)) {
      uVar2 = _ZN10ir_builder9logic_andENS_7operandES0_
                        (*(undefined4 *)(param_2 + 0x10),*(undefined4 *)(iVar8 + 0x10));
      *(undefined4 *)(param_2 + 0x10) = uVar2;
      piVar1 = (int *)(iVar8 + 0x14);
      puVar4 = (undefined4 *)*piVar1;
      puVar3 = (undefined4 *)(iVar8 + 0x18);
      if (puVar4 == puVar3) {
        *piVar5 = (int)puVar6;
        ppiVar7 = (int **)(param_2 + 0x1c);
        *puVar6 = 0;
      }
      else {
        *piVar5 = (int)puVar4;
        *puVar6 = 0;
        ppiVar7 = (int **)(iVar8 + 0x1c);
        *(int **)(param_2 + 0x1c) = *ppiVar7;
        puVar4[1] = piVar5;
        **(undefined4 **)(param_2 + 0x1c) = puVar6;
        *piVar1 = (int)puVar3;
        *puVar3 = 0;
        piVar5 = piVar1;
      }
      *ppiVar7 = piVar5;
      *(undefined *)(param_1 + 0x19) = 1;
    }
  }
  return 0;
}


/* address=000b3bcc symbol=_Z17opt_flip_matricesP9exec_list */

void _Z17opt_flip_matricesP9exec_list(int *param_1)

{
  int *piVar1;
  int iVar2;
  char *__s1;
  int iVar3;
  undefined **local_48 [6];
  undefined local_2f;
  int local_2c;
  int local_28;
  int local_24;
  
  local_24 = __stack_chk_guard;
  _ZN23ir_hierarchical_visitorC1Ev(local_48);
  local_2f = 0;
  local_48[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eb194;
  local_2c = 0;
  local_28 = 0;
  iVar3 = *param_1;
  if (iVar3 != 0) {
    iVar3 = iVar3 + -4;
  }
  piVar1 = (int *)(iVar3 + 4);
  iVar2 = *piVar1;
  while (iVar2 != 0) {
    if ((iVar3 != 0) && (*(int *)(iVar3 + 0xc) == 7)) {
      __s1 = *(char **)(iVar3 + 0x14);
      iVar2 = strcmp(__s1,"gl_ModelViewProjectionMatrixTranspose");
      if (iVar2 == 0) {
        local_2c = iVar3;
      }
      iVar2 = strcmp(__s1,"gl_TextureMatrixTranspose");
      if (iVar2 == 0) {
        local_28 = iVar3;
      }
    }
    iVar3 = *piVar1;
    if (iVar3 != 0) {
      iVar3 = iVar3 + -4;
    }
    piVar1 = (int *)(iVar3 + 4);
    iVar2 = *piVar1;
  }
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(local_48,param_1,1);
  if (__stack_chk_guard != local_24) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(local_2f);
  }
  return;
}


/* address=000b3cc0 symbol=FUN_000b3cc0 */

undefined4 FUN_000b3cc0(int param_1,int param_2)

{
  ushort uVar1;
  int iVar2;
  int *piVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  
  if (*(int *)(param_2 + 0x18) == 0x40) {
    iVar5 = (*(int **)(param_2 + 0x1c))[4];
    if (((*(byte *)(iVar5 + 9) & 0x60) != 0) && (*(int *)(iVar5 + 4) == 2)) {
      iVar5 = *(int *)(*(int *)(param_2 + 0x20) + 0x10);
      uVar1 = *(ushort *)(iVar5 + 8);
      if ((0x200 < (uVar1 & 0xc00)) &&
         ((((uVar1 & 0x7000) == 0x1000 && (*(uint *)(iVar5 + 4) < 4)) &&
          (iVar5 = (**(code **)(**(int **)(param_2 + 0x1c) + 0x20))(), iVar5 != 0)))) {
        if ((*(int *)(param_1 + 0x1c) == 0) ||
           (iVar2 = strcmp(*(char **)(iVar5 + 0x14),"gl_ModelViewProjectionMatrix"), iVar2 != 0)) {
          if (*(int *)(param_1 + 0x20) == 0) {
            return 0;
          }
          iVar2 = strcmp(*(char **)(iVar5 + 0x14),"gl_TextureMatrix");
          if (iVar2 != 0) {
            return 0;
          }
          iVar2 = *(int *)(param_2 + 0x1c);
          if (*(int *)(iVar2 + 0xc) != 0) {
            iVar2 = 0;
          }
          iVar6 = *(int *)(iVar2 + 0x18);
          iVar7 = *(int *)(iVar6 + 0xc);
          *(undefined4 *)(param_2 + 0x1c) = *(undefined4 *)(param_2 + 0x20);
          *(int *)(param_2 + 0x20) = iVar2;
          piVar3 = (int *)0x18;
          iVar2 = *(int *)(param_1 + 0x20);
          if (iVar7 == 2) {
            piVar3 = (int *)(iVar6 + 0x18);
          }
          *piVar3 = iVar2;
          if (*(uint *)(iVar5 + 0x30) < *(uint *)(iVar2 + 0x30)) {
            iVar5 = iVar2;
          }
          *(undefined4 *)(iVar2 + 0x30) = *(undefined4 *)(iVar5 + 0x30);
        }
        else {
          uVar4 = ralloc_parent(param_2);
          *(undefined4 *)(param_2 + 0x1c) = *(undefined4 *)(param_2 + 0x20);
          uVar4 = ralloc_size(uVar4,0x1c);
          ralloc_set_destructor(uVar4,_ZN9exec_node18_ralloc_destructorEPv);
          _ZN23ir_dereference_variableC2EP11ir_variable(uVar4,*(undefined4 *)(param_1 + 0x1c));
          *(undefined4 *)(param_2 + 0x20) = uVar4;
        }
        *(undefined *)(param_1 + 0x19) = 1;
      }
    }
  }
  return 0;
}


/* address=000b3dc8 symbol=_Z20do_function_inliningP9exec_list */

void _Z20do_function_inliningP9exec_list(undefined4 param_1)

{
  undefined4 uVar1;
  undefined **local_38 [7];
  undefined4 local_1c;
  undefined local_18;
  int local_14;
  
  local_14 = __stack_chk_guard;
  uVar1 = _ZN23ir_hierarchical_visitorC1Ev(local_38);
  local_18 = 0;
  local_38[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eb2ec;
  local_1c = 0;
  _ZN23ir_hierarchical_visitor3runEP9exec_list(uVar1,param_1);
  if (__stack_chk_guard != local_14) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(local_18);
  }
  return;
}


/* address=000b3e20 symbol=_ZN7ir_call15generate_inlineEP14ir_instruction */

void _ZN7ir_call15generate_inlineEP14ir_instruction(int param_1,int param_2)

{
  undefined uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  uint uVar4;
  undefined4 uVar5;
  int **ppiVar6;
  int **ppiVar7;
  int *piVar8;
  undefined4 **ppuVar9;
  uint *puVar10;
  int *piVar11;
  int iVar12;
  int **ppiVar13;
  undefined4 **ppuVar14;
  int **ppiVar15;
  int **ppiVar16;
  int **ppiVar17;
  int **unaff_r6;
  int **ppiVar18;
  int iVar19;
  undefined8 uVar20;
  undefined4 *local_58;
  undefined4 local_54;
  undefined4 **local_50;
  undefined4 local_4c [7];
  int **local_30;
  int **local_2c;
  int local_28;
  
  local_28 = __stack_chk_guard;
  uVar2 = ralloc_parent(param_1);
  uVar3 = hash_table_ctor(0,hash_table_pointer_hash,hash_table_pointer_compare);
  uVar4 = 0xffffffff;
  iVar19 = *(int *)(param_1 + 0x14);
  piVar11 = *(int **)(iVar19 + 0x18);
  do {
    piVar11 = (int *)*piVar11;
    uVar4 = uVar4 + 1;
  } while (piVar11 != (int *)0x0);
  uVar5 = (undefined4)((ulonglong)uVar4 * 4);
  iVar12 = (int)((ulonglong)uVar4 * 4 >> 0x20);
  if (iVar12 != 0) {
    iVar12 = 1;
  }
  if (iVar12 != 0) {
    uVar5 = 0xffffffff;
  }
  uVar20 = _Znaj(uVar5);
  ppiVar13 = (int **)((ulonglong)uVar20 >> 0x20);
  ppiVar6 = (int **)uVar20;
  ppiVar7 = (int **)**(int ***)(iVar19 + 0x18);
  if (ppiVar7 != (int **)0x0) {
    unaff_r6 = *(int ***)(param_1 + 0x18);
    ppiVar13 = (int **)*unaff_r6;
  }
  if (ppiVar7 != (int **)0x0 && ppiVar13 != (int **)0x0) {
    ppiVar16 = *(int ***)(iVar19 + 0x18);
    ppiVar18 = ppiVar6;
    do {
      ppiVar15 = ppiVar13;
      ppiVar17 = ppiVar7;
      if (ppiVar16 != (int **)0x0) {
        ppiVar16 = ppiVar16 + -1;
      }
      if (unaff_r6 != (int **)0x0) {
        unaff_r6 = unaff_r6 + -1;
      }
      iVar19 = func_0x00042cb4(ppiVar16[4]);
      if (iVar19 == 1) {
        *ppiVar18 = (int *)0x0;
      }
      else {
        piVar11 = (int *)(*(code *)(*ppiVar16)[4])(ppiVar16,uVar2,uVar3);
        *ppiVar18 = piVar11;
        piVar11[6] = piVar11[6] & 0xffffe1ff;
        piVar11 = *ppiVar18;
        uVar1 = *(undefined *)(piVar11 + 7);
        uVar4 = piVar11[6];
        if ((~uVar4 & 0x18000) == 0) {
          piVar8 = unaff_r6[5];
          *(undefined *)(piVar11 + 7) = uVar1;
          piVar11[6] = uVar4 & 0xfffe7fff | ((uint)piVar8 & 3) << 0xf;
          piVar11 = *ppiVar18;
          uVar1 = *(undefined *)(piVar11 + 7);
          uVar4 = piVar11[6];
        }
        piVar11[6] = uVar4 & 0xfffffffe;
        *(undefined *)(piVar11 + 7) = uVar1;
        piVar11 = *ppiVar18;
        if (piVar11 != (int *)0x0) {
          piVar11 = piVar11 + 1;
        }
        *piVar11 = param_2 + 4;
        piVar11[1] = *(int *)(param_2 + 8);
        **(int ***)(param_2 + 8) = piVar11;
        *(int **)(param_2 + 8) = piVar11;
        if (((*ppiVar18 != (int *)0x0) &&
            (uVar4 = (uint)((int)ppiVar16[6] << 0x13) >> 0x1c, uVar4 < 9)) &&
           ((1 << uVar4 & 0x1a0U) != 0)) {
          piVar11 = (int *)ralloc_size(uVar2,0x20);
          ralloc_set_destructor(piVar11,_ZN9exec_node18_ralloc_destructorEPv);
          uVar5 = ralloc_size(uVar2,0x1c);
          ralloc_set_destructor(uVar5,_ZN9exec_node18_ralloc_destructorEPv);
          _ZN23ir_dereference_variableC2EP11ir_variable(uVar5,*ppiVar18);
          _ZN13ir_assignmentC2EP9ir_rvalueS1_S1_(piVar11,uVar5,unaff_r6,0);
          if (piVar11 != (int *)0x0) {
            piVar11 = piVar11 + 1;
          }
          *piVar11 = param_2 + 4;
          piVar11[1] = *(int *)(param_2 + 8);
          **(int ***)(param_2 + 8) = piVar11;
          *(int **)(param_2 + 8) = piVar11;
        }
      }
      ppiVar7 = (int **)*ppiVar17;
      if (ppiVar7 == (int **)0x0) break;
      ppiVar13 = (int **)*ppiVar15;
      ppiVar18 = ppiVar18 + 1;
      unaff_r6 = ppiVar15;
      ppiVar16 = ppiVar17;
    } while (ppiVar13 != (int **)0x0);
    iVar19 = *(int *)(param_1 + 0x14);
  }
  local_50 = &local_58;
  local_54 = 0;
  piVar11 = *(int **)(iVar19 + 0x26);
  if (piVar11 != (int *)0x0) {
    piVar11 = piVar11 + -1;
  }
  ppiVar13 = (int **)(piVar11 + 1);
  local_58 = &local_54;
  if (*ppiVar13 != (int *)0x0) {
    do {
      ppuVar9 = (undefined4 **)(**(code **)(*piVar11 + 0x10))(piVar11,uVar2,uVar3);
      ppuVar14 = ppuVar9;
      if (ppuVar9 != (undefined4 **)0x0) {
        ppuVar14 = ppuVar9 + 1;
      }
      *ppuVar14 = &local_54;
      ppuVar14[1] = local_50;
      *local_50 = ppuVar14;
      local_50 = ppuVar14;
      _Z10visit_treeP14ir_instructionPFvS0_PvES1_S3_S1_
                (ppuVar9,0xb41e1,*(undefined4 *)(param_1 + 0x10),0,0);
      piVar11 = *ppiVar13;
      if (piVar11 != (int *)0x0) {
        piVar11 = piVar11 + -1;
      }
      ppiVar13 = (int **)(piVar11 + 1);
    } while (*ppiVar13 != (int *)0x0);
    iVar19 = *(int *)(param_1 + 0x14);
  }
  ppiVar13 = (int **)**(int ***)(param_1 + 0x18);
  if (ppiVar13 != (int **)0x0) {
    ppiVar7 = (int **)**(int ***)(iVar19 + 0x18);
    if (ppiVar7 != (int **)0x0) {
      ppiVar16 = *(int ***)(iVar19 + 0x18);
      ppiVar18 = *(int ***)(param_1 + 0x18);
      do {
        ppiVar15 = ppiVar7;
        ppiVar17 = ppiVar13;
        if (ppiVar16 != (int **)0x0) {
          ppiVar16 = ppiVar16 + -1;
        }
        iVar19 = func_0x00042cb4(ppiVar16[4]);
        if (iVar19 == 1) {
          if (ppiVar18 != (int **)0x0) {
            ppiVar18 = ppiVar18 + -1;
          }
          piVar11 = ppiVar18[3];
          uVar5 = _ZN23ir_hierarchical_visitorC1Ev(local_4c);
          if ((int *)0x2 < piVar11) {
            ppiVar18 = (int **)0x0;
          }
          local_4c[0] = 0xeb23c;
          local_30 = ppiVar16;
          local_2c = ppiVar18;
          _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(uVar5,&local_58,1);
        }
        ppiVar13 = (int **)*ppiVar17;
      } while ((ppiVar13 != (int **)0x0) &&
              (ppiVar7 = (int **)*ppiVar15, ppiVar16 = ppiVar15, ppiVar18 = ppiVar17,
              ppiVar7 != (int **)0x0));
    }
  }
  if (local_58 != &local_54) {
    *local_50 = (undefined4 *)(param_2 + 4);
    local_58[1] = *(undefined4 *)(param_2 + 8);
    **(undefined4 **)(param_2 + 8) = local_58;
    *(undefined4 ***)(param_2 + 8) = local_50;
    local_54 = 0;
    local_50 = &local_58;
    local_58 = &local_54;
  }
  ppiVar13 = (int **)**(int **)(param_1 + 0x18);
  if (ppiVar13 != (int **)0x0) {
    ppiVar16 = *(int ***)(*(int *)(param_1 + 0x14) + 0x18);
    ppiVar7 = (int **)*(int **)(param_1 + 0x18);
    ppiVar17 = ppiVar6;
    for (ppiVar18 = (int **)*ppiVar16; ppiVar18 != (int **)0x0; ppiVar18 = (int **)*ppiVar18) {
      if (ppiVar7 != (int **)0x0) {
        ppiVar7 = (int **)((int *)ppiVar7 + -1);
      }
      if (*ppiVar17 != (int *)0x0) {
        puVar10 = (uint *)((int *)ppiVar16 + 5);
        if (ppiVar16 == (int **)0x0) {
          puVar10 = (uint *)0x18;
        }
        if ((*puVar10 & 0x1c00) == 0xc00) {
          piVar11 = (int *)ralloc_size(uVar2,0x20);
          ralloc_set_destructor(piVar11,_ZN9exec_node18_ralloc_destructorEPv);
          iVar19 = (**(code **)((int)*ppiVar7 + 0x10))(ppiVar7,uVar2,0);
          uVar4 = *(uint *)(iVar19 + 0xc);
          uVar5 = ralloc_size(uVar2,0x1c);
          ralloc_set_destructor(uVar5,_ZN9exec_node18_ralloc_destructorEPv);
          _ZN23ir_dereference_variableC2EP11ir_variable(uVar5,*ppiVar17);
          if (6 < uVar4) {
            iVar19 = 0;
          }
          _ZN13ir_assignmentC2EP9ir_rvalueS1_S1_(piVar11,iVar19,uVar5,0);
          if (piVar11 != (int *)0x0) {
            piVar11 = piVar11 + 1;
          }
          *piVar11 = (int)(undefined4 *)(param_2 + 4);
          piVar11[1] = *(int *)(param_2 + 8);
          **(int ***)(param_2 + 8) = piVar11;
          *(int **)(param_2 + 8) = piVar11;
        }
      }
      if (*ppiVar13 == (int *)0x0) break;
      ppiVar17 = ppiVar17 + 1;
      ppiVar7 = ppiVar13;
      ppiVar13 = (int **)*ppiVar13;
      ppiVar16 = ppiVar18;
    }
  }
  _ZdaPv(ppiVar6);
  hash_table_dtor(uVar3);
  if (__stack_chk_guard != local_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b41e0 symbol=FUN_000b41e0 */

void FUN_000b41e0(int param_1,int *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  int iVar4;
  
  uVar1 = ralloc_parent();
  if ((param_1 != 0) && (*(int *)(param_1 + 0xc) == 0xf)) {
    if (*(int *)(param_1 + 0x10) == 0) {
      iVar4 = *(int *)(param_1 + 4);
      *(undefined4 *)(iVar4 + 4) = *(undefined4 *)(param_1 + 8);
      **(int **)(param_1 + 8) = iVar4;
      *(undefined4 *)(param_1 + 8) = 0;
      *(undefined4 *)(param_1 + 4) = 0;
    }
    else {
      uVar2 = (**(code **)(*param_2 + 0x10))(param_2,uVar1,0);
      puVar3 = (undefined4 *)ralloc_size(uVar1,0x20);
      ralloc_set_destructor(puVar3,_ZN9exec_node18_ralloc_destructorEPv);
      _ZN13ir_assignmentC2EP9ir_rvalueS1_S1_(puVar3,uVar2,*(undefined4 *)(param_1 + 0x10),0);
      if (puVar3 != (undefined4 *)0x0) {
        puVar3 = puVar3 + 1;
      }
      puVar3[1] = *(undefined4 *)(param_1 + 8);
      *puVar3 = *(undefined4 *)(param_1 + 4);
      **(undefined4 **)(param_1 + 8) = puVar3;
      *(undefined4 **)(*(int *)(param_1 + 4) + 4) = puVar3;
    }
  }
  return;
}


/* address=000b4260 symbol=_ZN31ir_variable_replacement_visitor13replace_derefEPP14ir_dereference */

void _ZN31ir_variable_replacement_visitor13replace_derefEPP14ir_dereference
               (int param_1,int *param_2,undefined4 param_3,int param_4)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int *piVar4;
  code *pcVar5;
  bool bVar6;
  
  iVar1 = *param_2;
  if (iVar1 != 0) {
    iVar3 = *(int *)(iVar1 + 0xc);
    bVar6 = iVar3 == 2;
    if (bVar6) {
      iVar3 = *(int *)(param_1 + 0x1c);
      param_4 = *(int *)(iVar1 + 0x18);
    }
    if (bVar6 && param_4 == iVar3) {
      piVar4 = *(int **)(param_1 + 0x20);
      pcVar5 = *(code **)(*piVar4 + 0x10);
      uVar2 = ralloc_parent();
      iVar1 = (*pcVar5)(piVar4,uVar2,0);
      *param_2 = iVar1;
    }
  }
  return;
}


/* address=000b4298 symbol=_ZN31ir_variable_replacement_visitor14replace_rvalueEPP9ir_rvalue */

void _ZN31ir_variable_replacement_visitor14replace_rvalueEPP9ir_rvalue
               (undefined4 param_1,int *param_2)

{
  int iVar1;
  int local_18;
  int local_14;
  
  local_14 = __stack_chk_guard;
  iVar1 = *param_2;
  if (iVar1 != 0) {
    if (2 < *(uint *)(iVar1 + 0xc)) {
      iVar1 = 0;
    }
    local_18 = iVar1;
    if (iVar1 != 0) {
      _ZN31ir_variable_replacement_visitor13replace_derefEPP14ir_dereference(param_1,&local_18);
      *param_2 = local_18;
    }
  }
  if (__stack_chk_guard != local_14) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b42e4 symbol=_ZN31ir_variable_replacement_visitor11visit_leaveEP10ir_texture */

undefined4
_ZN31ir_variable_replacement_visitor11visit_leaveEP10ir_texture(undefined4 param_1,int param_2)

{
  _ZN31ir_variable_replacement_visitor13replace_derefEPP14ir_dereference(param_1,param_2 + 0x1c);
  return 0;
}


/* address=000b42f2 symbol=_ZN31ir_variable_replacement_visitor11visit_leaveEP20ir_dereference_array */

undefined4
_ZN31ir_variable_replacement_visitor11visit_leaveEP20ir_dereference_array
          (undefined4 param_1,int param_2)

{
  _ZN31ir_variable_replacement_visitor14replace_rvalueEPP9ir_rvalue(param_1,param_2 + 0x18);
  return 0;
}


/* address=000b4300 symbol=_ZN31ir_variable_replacement_visitor11visit_leaveEP21ir_dereference_record */

undefined4
_ZN31ir_variable_replacement_visitor11visit_leaveEP21ir_dereference_record
          (undefined4 param_1,int param_2)

{
  _ZN31ir_variable_replacement_visitor14replace_rvalueEPP9ir_rvalue(param_1,param_2 + 0x18);
  return 0;
}


/* address=000b4310 symbol=_ZN31ir_variable_replacement_visitor11visit_leaveEP7ir_call */

void _ZN31ir_variable_replacement_visitor11visit_leaveEP7ir_call(undefined4 param_1,int param_2)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  undefined4 *local_20;
  int local_1c;
  
  local_1c = __stack_chk_guard;
  puVar3 = *(undefined4 **)(param_2 + 0x18);
  if (puVar3 != (undefined4 *)0x0) {
    puVar3 = puVar3 + -1;
  }
  if (puVar3[1] != 0) {
    puVar2 = (undefined4 *)(puVar3[1] + -4);
    while (puVar1 = puVar2, puVar1 != (undefined4 *)0x0) {
      local_20 = puVar3;
      _ZN31ir_variable_replacement_visitor14replace_rvalueEPP9ir_rvalue(param_1,&local_20);
      if (local_20 != puVar3) {
        puVar2 = local_20;
        if (local_20 != (undefined4 *)0x0) {
          puVar2 = local_20 + 1;
        }
        puVar2[1] = puVar3[2];
        *puVar2 = puVar3[1];
        *(undefined4 **)puVar3[2] = puVar2;
        *(undefined4 **)(puVar3[1] + 4) = puVar2;
      }
      puVar2 = (undefined4 *)puVar1[1];
      puVar3 = puVar1;
      if (puVar2 != (undefined4 *)0x0) {
        puVar2 = puVar2 + -1;
      }
    }
  }
  if (__stack_chk_guard - local_1c == 0) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(__stack_chk_guard - local_1c);
}


/* address=000b4394 symbol=_ZN31ir_variable_replacement_visitorD2Ev */

void _ZN31ir_variable_replacement_visitorD2Ev(void)

{
  return;
}


/* address=000b4396 symbol=_ZN31ir_variable_replacement_visitorD0Ev */

void _ZN31ir_variable_replacement_visitorD0Ev(void)

{
  _ZdlPv();
  return;
}


/* address=000b43b4 symbol=FUN_000b43b4 */

undefined4 FUN_000b43b4(int param_1,int param_2)

{
  int iVar1;
  
  iVar1 = _Z10can_inlineP7ir_call(param_2);
  if (iVar1 == 1) {
    _ZN7ir_call15generate_inlineEP14ir_instruction(param_2,param_2);
    iVar1 = *(int *)(param_2 + 4);
    *(undefined4 *)(iVar1 + 4) = *(undefined4 *)(param_2 + 8);
    **(int **)(param_2 + 8) = iVar1;
    *(undefined4 *)(param_2 + 8) = 0;
    *(undefined4 *)(param_2 + 4) = 0;
    *(undefined *)(param_1 + 0x20) = 1;
  }
  return 0;
}


/* address=000b43f0 symbol=_Z20do_if_simplificationP9exec_list */

void _Z20do_if_simplificationP9exec_list(undefined4 param_1)

{
  undefined4 uVar1;
  undefined **local_30 [6];
  undefined local_17;
  int local_14;
  
  local_14 = __stack_chk_guard;
  uVar1 = _ZN23ir_hierarchical_visitorC1Ev(local_30);
  local_17 = 0;
  local_30[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eb39c;
  _ZN23ir_hierarchical_visitor3runEP9exec_list(uVar1,param_1);
  if (__stack_chk_guard != local_14) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(local_17);
  }
  return;
}


/* address=000b4448 symbol=FUN_000b4448 */

undefined4 FUN_000b4448(int param_1,int param_2)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  undefined4 *puVar8;
  
  puVar6 = (undefined4 *)(param_2 + 0x14);
  puVar7 = (undefined4 *)(param_2 + 0x18);
  if (((undefined4 *)*puVar6 != puVar7) || (*(int *)(param_2 + 0x20) != param_2 + 0x24)) {
    iVar2 = (**(code **)(**(int **)(param_2 + 0x10) + 0x18))(*(int **)(param_2 + 0x10),0);
    if (iVar2 == 0) {
      if ((undefined4 *)*puVar6 != puVar7) {
        return 0;
      }
      uVar3 = ralloc_parent(*(undefined4 *)(param_2 + 0x10));
      uVar3 = ralloc_size(uVar3,0x2c);
      ralloc_set_destructor(uVar3,_ZN9exec_node18_ralloc_destructorEPv);
      _ZN13ir_expressionC2EiP9ir_rvalue(uVar3,1,*(undefined4 *)(param_2 + 0x10));
      puVar1 = (undefined4 *)(param_2 + 0x20);
      puVar5 = (undefined4 *)*puVar1;
      puVar4 = (undefined4 *)(param_2 + 0x24);
      *(undefined4 *)(param_2 + 0x10) = uVar3;
      if (puVar5 == puVar4) {
        *puVar6 = puVar7;
        puVar8 = (undefined4 *)(param_2 + 0x1c);
        *puVar7 = 0;
      }
      else {
        *puVar6 = puVar5;
        *puVar7 = 0;
        puVar8 = (undefined4 *)(param_2 + 0x28);
        *(undefined4 *)(param_2 + 0x1c) = *puVar8;
        puVar5[1] = puVar6;
        **(undefined4 **)(param_2 + 0x1c) = puVar7;
        *puVar1 = puVar4;
        *puVar4 = 0;
        puVar6 = puVar1;
      }
      *puVar8 = puVar6;
      goto LAB_000b4534;
    }
    if (*(char *)(iVar2 + 0x18) == '\0') {
      if (*(int *)(param_2 + 0x20) != param_2 + 0x24) {
        **(int **)(param_2 + 0x28) = param_2 + 4;
        iVar2 = *(int *)(param_2 + 0x20);
        *(undefined4 *)(iVar2 + 4) = *(undefined4 *)(param_2 + 8);
        **(int **)(param_2 + 8) = iVar2;
        *(undefined4 *)(param_2 + 0x24) = 0;
        *(int *)(param_2 + 0x20) = param_2 + 0x24;
        *(undefined4 *)(param_2 + 8) = *(undefined4 *)(param_2 + 0x28);
        *(int **)(param_2 + 0x28) = (int *)(param_2 + 0x20);
      }
    }
    else if ((undefined4 *)*puVar6 != puVar7) {
      **(int **)(param_2 + 0x1c) = param_2 + 4;
      iVar2 = *(int *)(param_2 + 0x14);
      *(undefined4 *)(iVar2 + 4) = *(undefined4 *)(param_2 + 8);
      **(int **)(param_2 + 8) = iVar2;
      *(undefined4 *)(param_2 + 0x18) = 0;
      *(undefined4 **)(param_2 + 0x14) = puVar7;
      *(undefined4 *)(param_2 + 8) = *(undefined4 *)(param_2 + 0x1c);
      *(undefined4 **)(param_2 + 0x1c) = puVar6;
    }
  }
  iVar2 = *(int *)(param_2 + 4);
  *(undefined4 *)(iVar2 + 4) = *(undefined4 *)(param_2 + 8);
  **(int **)(param_2 + 8) = iVar2;
  *(undefined4 *)(param_2 + 8) = 0;
  *(undefined4 *)(param_2 + 4) = 0;
LAB_000b4534:
  *(undefined *)(param_1 + 0x19) = 1;
  return 0;
}


/* address=000b4554 symbol=_Z15do_minmax_pruneP9exec_list */

void _Z15do_minmax_pruneP9exec_list(undefined4 param_1)

{
  undefined4 uVar1;
  undefined **local_30 [6];
  undefined local_17;
  int local_14;
  
  local_14 = __stack_chk_guard;
  uVar1 = _ZN23ir_hierarchical_visitorC1Ev(local_30);
  local_17 = 0;
  local_30[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eb444;
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(uVar1,param_1,1);
  if (__stack_chk_guard != local_14) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(local_17);
  }
  return;
}


/* address=000b45a8 symbol=FUN_000b45a8 */

void FUN_000b45a8(int param_1,int *param_2)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  
  iVar3 = *param_2;
  if ((((iVar3 != 0) && (*(int *)(iVar3 + 0xc) == 4)) && (*(int *)(iVar3 + 0x18) - 0x57U < 2)) &&
     (iVar1 = FUN_000b4620(param_1,iVar3,0,0), iVar1 != *param_2)) {
    uVar2 = (uint)*(ushort *)(*(int *)(iVar3 + 0x10) + 8);
    if (((0x200 < (uVar2 & 0xc00)) && ((uVar2 & 0x7000) == 0x1000)) &&
       (*(uint *)(*(int *)(iVar3 + 0x10) + 4) < 4)) {
      if (((*(ushort *)(*(int *)(iVar1 + 0x10) + 8) & 0xe00) == 0x200) &&
         (*(uint *)(*(int *)(iVar1 + 0x10) + 4) < 4)) {
        iVar1 = _ZN10ir_builder7swizzleENS_7operandEii(iVar1,0,(uVar2 << 0x14) >> 0x1d);
      }
    }
    *param_2 = iVar1;
    *(undefined *)(param_1 + 0x19) = 1;
  }
  return;
}


/* address=000b4620 symbol=FUN_000b4620 */

void FUN_000b4620(int param_1,int param_2,int param_3,int param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int *piVar6;
  uint uVar7;
  int iVar8;
  int *piVar9;
  int local_40;
  int iStack_3c;
  int local_38 [5];
  
  piVar9 = (int *)(param_2 + 0x1c);
  iVar4 = 0;
  local_38[4] = __stack_chk_guard;
  iVar8 = *(int *)(param_2 + 0x18);
  local_38[2] = 0;
  local_38[3] = 0;
  local_38[0] = 0;
  local_38[1] = 0;
  piVar6 = local_38;
  do {
    FUN_000b4810(&local_40,piVar9[iVar4]);
    iVar4 = iVar4 + 1;
    *piVar6 = local_40;
    piVar6[1] = iStack_3c;
    piVar6 = piVar6 + 2;
  } while (iVar4 != 2);
  iVar4 = 0;
  uVar7 = 0;
  do {
    if (iVar8 == 0x57) {
      iVar3 = local_38[uVar7 * 2];
      if (iVar3 != 0) {
        if (local_38[iVar4 * 2 + 3] == 0) {
          iVar1 = 0;
LAB_000b46b6:
          if ((param_4 == 0) || ((iVar1 = FUN_000b48f4(iVar3,param_4), iVar1 < 2 || (iVar1 == 5))))
          goto LAB_000b46e0;
LAB_000b47b8:
          iVar4 = -uVar7;
        }
        else {
          iVar1 = FUN_000b48f4(iVar3);
          if ((iVar1 < 2) || (iVar1 == 5)) goto LAB_000b46b6;
        }
LAB_000b47c0:
        *(undefined *)(param_1 + 0x19) = 1;
        iVar4 = *(int *)(param_2 + (iVar4 + 1) * 4 + 0x1c);
        if (((iVar4 != 0) && (*(int *)(iVar4 + 0xc) == 4)) && (*(int *)(iVar4 + 0x18) - 0x57U < 2))
        {
          FUN_000b4620(param_1,iVar4,param_3,param_4);
        }
        goto LAB_000b47ea;
      }
    }
    else {
      iVar3 = local_38[uVar7 * 2 + 1];
      if (iVar3 == 0) goto LAB_000b4702;
      if (local_38[iVar4 * 2 + 2] != 0) {
        iVar1 = FUN_000b48f4(iVar3);
        if (2 < iVar1) goto LAB_000b46ce;
        goto LAB_000b47b8;
      }
      iVar1 = 0;
LAB_000b46ce:
      if (((param_3 != 0) && (iVar3 != 0)) && (iVar1 = FUN_000b48f4(iVar3,param_3), iVar1 < 3))
      goto LAB_000b47c0;
LAB_000b46e0:
      if (iVar1 == 5) {
        iVar3 = *(int *)(param_2 + 0x1c);
        iVar1 = *(int *)(param_2 + 0x20);
        if (*(int *)(iVar1 + 0xc) != 3) {
          iVar1 = 0;
        }
        if (*(int *)(iVar3 + 0xc) != 3) {
          iVar3 = 0;
        }
        if ((iVar3 != 0) && (iVar1 != 0)) goto LAB_000b47a8;
      }
    }
LAB_000b4702:
    uVar7 = uVar7 + 1;
    iVar4 = iVar4 + -1;
  } while (uVar7 < 2);
  iVar4 = 0;
  do {
    iVar3 = *piVar9;
    if (((iVar3 != 0) && (*(int *)(iVar3 + 0xc) == 4)) && (*(int *)(iVar3 + 0x18) - 0x57U < 2)) {
      piVar6 = local_38 + 3;
      if (iVar8 == 0x57) {
        piVar6 = local_38 + 2;
      }
      *(undefined4 *)((int)piVar6 + iVar4) = 0;
      iVar2 = *(int *)((int)local_38 + iVar4 + 8);
      iVar5 = *(int *)((int)local_38 + iVar4 + 0xc);
      iVar1 = param_3;
      if (iVar2 != 0) {
        iVar1 = iVar2;
      }
      if (iVar2 != 0 && param_3 != 0) {
        iVar1 = FUN_000b4b46(iVar2,param_3);
      }
      iVar2 = param_4;
      if (iVar5 != 0) {
        iVar2 = iVar5;
      }
      if (iVar5 != 0 && param_4 != 0) {
        iVar2 = FUN_000b4b1e(iVar5,param_4);
      }
      iVar3 = FUN_000b4620(param_1,iVar3,iVar1,iVar2);
      *piVar9 = iVar3;
    }
    iVar4 = iVar4 + -8;
    piVar9 = piVar9 + 1;
  } while (iVar4 != -0x10);
  iVar4 = *(int *)(param_2 + 0x20);
  if (*(int *)(iVar4 + 0xc) != 3) {
    iVar4 = 0;
  }
  iVar3 = 0;
  if (*(int *)(*(int *)(param_2 + 0x1c) + 0xc) == 3) {
    iVar3 = *(int *)(param_2 + 0x1c);
  }
  if ((iVar3 != 0) && (iVar4 != 0)) {
LAB_000b47a8:
    FUN_000b4a4c(iVar8 == 0x57);
  }
LAB_000b47ea:
  if (__stack_chk_guard - local_38[4] != 0) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(__stack_chk_guard - local_38[4]);
  }
  return;
}


/* address=000b4810 symbol=FUN_000b4810 */

void FUN_000b4810(int *param_1,int param_2)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  int iVar4;
  int local_3c;
  int iStack_38;
  int local_34;
  int iStack_30;
  int local_2c;
  int iStack_28;
  int local_24;
  int iStack_20;
  int local_1c;
  
  local_1c = __stack_chk_guard;
  if (((param_2 == 0) || (*(int *)(param_2 + 0xc) != 4)) || (1 < *(int *)(param_2 + 0x18) - 0x57U))
  {
    if ((param_2 != 0) && (*(int *)(param_2 + 0xc) == 3)) {
      *param_1 = param_2;
      param_1[1] = param_2;
      goto LAB_000b48d0;
    }
    iVar4 = 0;
    *param_1 = 0;
  }
  else {
    FUN_000b4810(&local_34,*(undefined4 *)(param_2 + 0x1c));
    FUN_000b4810(&local_3c,*(undefined4 *)(param_2 + 0x20));
    iVar4 = *(int *)(param_2 + 0x18);
    local_24 = local_34;
    iStack_20 = iStack_30;
    local_2c = local_3c;
    iStack_28 = iStack_38;
    *param_1 = 0;
    param_1[1] = 0;
    if (local_34 == 0) {
      piVar2 = &local_2c;
      piVar3 = &local_24;
LAB_000b488e:
      if (iVar4 != 0x57) {
        piVar3 = piVar2;
      }
      iVar1 = *piVar3;
    }
    else {
      if (local_3c == 0) {
        piVar2 = &local_24;
        piVar3 = &local_2c;
        goto LAB_000b488e;
      }
      if (iVar4 == 0x57) {
        iVar1 = FUN_000b4b1e();
      }
      else {
        iVar1 = FUN_000b4b46();
      }
    }
    *param_1 = iVar1;
    if (iStack_30 == 0) {
      piVar2 = &local_24;
      piVar3 = &local_2c;
    }
    else {
      if (iStack_38 != 0) {
        if (iVar4 == 0x57) {
          iVar4 = FUN_000b4b1e();
        }
        else {
          iVar4 = FUN_000b4b46(iStack_30,iStack_38);
        }
        goto LAB_000b48ce;
      }
      piVar2 = &local_2c;
      piVar3 = &local_24;
    }
    if (iVar4 != 0x57) {
      piVar3 = piVar2;
    }
    iVar4 = piVar3[1];
  }
LAB_000b48ce:
  param_1[1] = iVar4;
LAB_000b48d0:
  if (__stack_chk_guard != local_1c) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b48f4 symbol=FUN_000b48f4 */

undefined4 FUN_000b48f4(int param_1,int param_2)

{
  bool bVar1;
  bool bVar2;
  bool bVar3;
  bool bVar4;
  float *pfVar5;
  undefined4 uVar6;
  float *pfVar7;
  uint uVar8;
  int iVar9;
  float fVar10;
  uint uVar11;
  float fVar12;
  uint uVar13;
  uint uVar14;
  int iVar15;
  bool bVar16;
  bool bVar17;
  bool bVar18;
  
  iVar15 = *(int *)(param_1 + 0x10);
  uVar8 = (uint)*(ushort *)(iVar15 + 8);
  if ((uVar8 & 0xe00) == 0x200) {
    uVar14 = (uint)(3 < *(uint *)(iVar15 + 4));
  }
  else {
    uVar14 = 1;
  }
  uVar11 = (uint)*(ushort *)(*(int *)(param_2 + 0x10) + 8);
  if ((uVar11 & 0xe00) == 0x200) {
    uVar13 = (uint)(3 < *(uint *)(*(int *)(param_2 + 0x10) + 4));
  }
  else {
    uVar13 = 1;
  }
  uVar11 = (int)(short)(ushort)((uVar11 << 0x14) >> 0x1d) *
           (int)(short)(ushort)((uVar11 << 0x11) >> 0x1d);
  uVar8 = (int)(short)(ushort)((uVar8 << 0x14) >> 0x1d) *
          (int)(short)(ushort)((uVar8 << 0x11) >> 0x1d);
  iVar9 = param_2;
  if (uVar11 <= uVar8 && uVar8 - uVar11 != 0) {
    iVar9 = param_1;
  }
  uVar8 = (uint)*(ushort *)(*(int *)(iVar9 + 0x10) + 8);
  uVar8 = (int)(short)(ushort)((uVar8 << 0x14) >> 0x1d) *
          (int)(short)(ushort)((uVar8 << 0x11) >> 0x1d);
  if (uVar8 == 0) {
    uVar6 = 4;
  }
  else {
    iVar15 = *(int *)(iVar15 + 4);
    pfVar5 = (float *)(param_1 + 0x18);
    pfVar7 = (float *)(param_2 + 0x18);
    uVar11 = 0;
    bVar2 = false;
    bVar4 = false;
    bVar3 = false;
    do {
      if (iVar15 == 2) {
        fVar10 = *pfVar7;
        fVar12 = *pfVar5;
        bVar1 = fVar12 == fVar10;
        if (fVar12 < fVar10) goto LAB_000b49de;
        bVar16 = fVar12 < fVar10;
        bVar17 = fVar12 == fVar10;
        bVar18 = NAN(fVar12) || NAN(fVar10);
LAB_000b49f4:
        bVar2 = (bool)(bVar2 | bVar1);
        bVar1 = false;
        if (!bVar17 && bVar16 == bVar18) {
          bVar1 = true;
        }
LAB_000b4a00:
        bVar4 = (bool)(bVar4 | bVar1);
      }
      else if (iVar15 == 1) {
        fVar10 = *pfVar7;
        fVar12 = *pfVar5;
        bVar18 = SBORROW4((int)fVar12,(int)fVar10);
        bVar16 = (int)fVar12 - (int)fVar10 < 0;
        bVar17 = fVar12 == fVar10;
        if ((int)fVar10 <= (int)fVar12) {
          bVar1 = (int)fVar12 <= (int)fVar10;
          goto LAB_000b49f4;
        }
LAB_000b49de:
        bVar3 = true;
      }
      else if (iVar15 == 0) {
        fVar12 = *pfVar7;
        fVar10 = *pfVar5;
        if ((uint)fVar10 < (uint)fVar12) goto LAB_000b49de;
        bVar2 = (bool)(bVar2 | (uint)fVar10 <= (uint)fVar12);
        bVar1 = (uint)fVar10 >= (uint)fVar12 && fVar10 != fVar12;
        goto LAB_000b4a00;
      }
      uVar11 = uVar11 + 1;
      pfVar5 = pfVar5 + uVar14;
      pfVar7 = pfVar7 + uVar13;
    } while (uVar11 < uVar8);
    if ((bool)(bVar3 & bVar4)) {
      uVar6 = 5;
    }
    else if (bVar2) {
      uVar6 = 2;
      if (bVar4) {
        uVar6 = 3;
      }
      if (bVar3) {
        uVar6 = 1;
      }
    }
    else {
      uVar6 = 4;
      if (bVar3) {
        uVar6 = 0;
      }
    }
  }
  return uVar6;
}


/* address=000b4a4c symbol=FUN_000b4a4c */

void FUN_000b4a4c(int param_1,int *param_2,int param_3)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;
  uint uVar7;
  float *pfVar8;
  float fVar9;
  float fVar10;
  
  uVar1 = ralloc_parent(param_2);
  iVar2 = (**(code **)(*param_2 + 0x10))(param_2,uVar1,0);
  iVar6 = *(int *)(iVar2 + 0x10);
  if ((int)(short)(ushort)(((uint)*(ushort *)(iVar6 + 8) << 0x14) >> 0x1d) *
      (int)(short)(ushort)(((uint)*(ushort *)(iVar6 + 8) << 0x11) >> 0x1d) != 0) {
    iVar3 = iVar2 + 0x18;
    param_3 = param_3 + 0x18;
    uVar4 = 0;
    do {
      iVar6 = *(int *)(iVar6 + 4);
      if (iVar6 == 2) {
        pfVar8 = (float *)(iVar3 + uVar4 * 4);
        fVar10 = *pfVar8;
        fVar9 = *(float *)(param_3 + uVar4 * 4);
        if (param_1 == 1) {
          if (fVar9 < fVar10) {
            *pfVar8 = fVar9;
          }
        }
        else if (fVar9 != fVar10 && fVar9 < fVar10 == (NAN(fVar9) || NAN(fVar10))) {
          *pfVar8 = fVar9;
        }
      }
      else if (iVar6 == 1) {
        iVar6 = *(int *)(iVar3 + uVar4 * 4);
        uVar7 = *(uint *)(param_3 + uVar4 * 4);
        if (param_1 == 1) {
          if ((int)uVar7 < iVar6) goto LAB_000b4af2;
        }
        else if (iVar6 < (int)uVar7) {
          *(uint *)(iVar3 + uVar4 * 4) = uVar7;
        }
      }
      else if (iVar6 == 0) {
        uVar5 = *(uint *)(iVar3 + uVar4 * 4);
        uVar7 = *(uint *)(param_3 + uVar4 * 4);
        if (param_1 == 1) {
          if (uVar7 < uVar5) {
LAB_000b4af2:
            *(uint *)(iVar3 + uVar4 * 4) = uVar7;
          }
        }
        else if (uVar5 < uVar7) goto LAB_000b4af2;
      }
      iVar6 = *(int *)(iVar2 + 0x10);
      uVar4 = uVar4 + 1;
    } while (uVar4 < (uint)((int)(short)(ushort)(((uint)*(ushort *)(iVar6 + 8) << 0x14) >> 0x1d) *
                           (int)(short)(ushort)(((uint)*(ushort *)(iVar6 + 8) << 0x11) >> 0x1d)));
  }
  return;
}


/* address=000b4b1e symbol=FUN_000b4b1e */

undefined4 FUN_000b4b1e(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_000b48f4();
  if (iVar1 == 5) {
    uVar2 = FUN_000b4a4c(1,param_1,param_2);
    return uVar2;
  }
  if (iVar1 < 2) {
    param_2 = param_1;
  }
  return param_2;
}


/* address=000b4b46 symbol=FUN_000b4b46 */

undefined4 FUN_000b4b46(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_000b48f4();
  if (iVar1 == 5) {
    uVar2 = FUN_000b4a4c(0,param_1,param_2);
    return uVar2;
  }
  if (iVar1 < 2) {
    param_1 = param_2;
  }
  return param_1;
}


/* address=000b4b70 symbol=_Z15do_noop_swizzleP9exec_list */

void _Z15do_noop_swizzleP9exec_list(undefined4 param_1)

{
  undefined4 uVar1;
  undefined **local_30 [6];
  undefined local_17;
  int local_14;
  
  local_14 = __stack_chk_guard;
  uVar1 = _ZN23ir_hierarchical_visitorC1Ev(local_30);
  local_17 = 0;
  local_30[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eb4f0;
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(uVar1,param_1,1);
  if (__stack_chk_guard != local_14) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(local_17);
  }
  return;
}


/* address=000b4bc4 symbol=FUN_000b4bc4 */

void FUN_000b4bc4(int param_1,int *param_2)

{
  ushort uVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  
  iVar3 = *param_2;
  if ((iVar3 != 0) && (*(int *)(iVar3 + 0xc) == 5)) {
    iVar4 = *(int *)(iVar3 + 0x18);
    if (*(int *)(iVar3 + 0x10) == *(int *)(iVar4 + 0x10)) {
      uVar1 = *(ushort *)(iVar3 + 0x1c);
      uVar2 = ((uint)*(ushort *)(*(int *)(iVar3 + 0x10) + 8) << 0x14) >> 0x1d;
      if ((((uVar1 & 3) == 0) && ((uVar2 < 2 || ((uVar1 & 0xc) == 4)))) &&
         ((uVar2 < 3 || (((uVar1 & 0x30) == 0x20 && ((uVar2 < 4 || ((uVar1 & 0xc0) == 0xc0)))))))) {
        *(undefined *)(param_1 + 0x19) = 1;
        *param_2 = iVar4;
      }
    }
  }
  return;
}


/* address=000b4c2c symbol=_Z17do_rebalance_treeP9exec_list */

void _Z17do_rebalance_treeP9exec_list(undefined4 param_1)

{
  undefined4 uVar1;
  undefined **local_30 [6];
  undefined local_17;
  int local_14;
  
  local_14 = __stack_chk_guard;
  uVar1 = _ZN23ir_hierarchical_visitorC1Ev(local_30);
  local_17 = 0;
  local_30[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eb59c;
  _ZN23ir_hierarchical_visitor3runEP9exec_list(uVar1,param_1);
  if (__stack_chk_guard != local_14) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(local_17);
  }
  return;
}


/* address=000b4c80 symbol=FUN_000b4c80 */

void FUN_000b4c80(int param_1,int *param_2)

{
  undefined *puVar1;
  int iVar2;
  undefined *puVar3;
  undefined *puVar4;
  int iVar5;
  undefined *puVar6;
  undefined *puVar7;
  int iVar8;
  undefined4 local_c0;
  undefined4 uStack_bc;
  uint local_b8;
  undefined2 local_b4;
  undefined auStack_b0 [32];
  undefined *local_90;
  undefined auStack_84 [104];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  puVar6 = (undefined *)*param_2;
  if ((((puVar6 != (undefined *)0x0) && (*(int *)(puVar6 + 0xc) == 4)) &&
      (*(int *)(puVar6 + 0x18) - 0x3eU < 0x1b)) &&
     ((1 << (*(int *)(puVar6 + 0x18) - 0x3eU & 0xff) & 0x6fc0005U) != 0)) {
    local_c0 = 0;
    uStack_bc = 0;
    local_b8 = 0;
    local_b4 = 1;
    _Z10visit_treeP14ir_instructionPFvS0_PvES1_S3_S1_(puVar6,&LAB_000b4e06_1,&local_c0,0,0);
    if (((char)local_b4 != '\0') && (2 < local_b8)) {
      _ZN11ir_constantC2Efj(auStack_84,0,1);
      _ZN13ir_expressionC2EiP9ir_rvalueS1_(auStack_b0,0x3e,auStack_84,puVar6);
      puVar6 = local_90;
      if (local_90 != (undefined *)0x0) {
        iVar5 = 0;
        puVar3 = auStack_b0;
        puVar4 = local_90;
        do {
          iVar2 = iVar5;
          puVar6 = local_90;
          if (*(int *)(puVar4 + 0xc) != 4) break;
          puVar7 = *(undefined **)(puVar4 + 0x1c);
          puVar6 = puVar4;
          if (puVar7 != (undefined *)0x0) {
            iVar5 = *(int *)(puVar7 + 0xc);
            while (puVar1 = puVar7, puVar6 = puVar4, iVar5 == 4) {
              *(undefined4 *)(puVar4 + 0x1c) = *(undefined4 *)(puVar1 + 0x20);
              *(undefined **)(puVar1 + 0x20) = puVar4;
              *(undefined **)(puVar3 + 0x20) = puVar1;
              puVar7 = *(undefined **)(puVar1 + 0x1c);
              puVar6 = puVar1;
              if (puVar7 == (undefined *)0x0) break;
              iVar5 = *(int *)(puVar7 + 0xc);
              puVar4 = puVar1;
            }
          }
          puVar4 = *(undefined **)(puVar6 + 0x20);
          iVar5 = iVar2 + 1;
          puVar3 = puVar6;
          puVar6 = local_90;
        } while (puVar4 != (undefined *)0x0);
        for (; 1 < iVar2; iVar2 = (iVar2 + -1) - iVar2 / 2) {
          local_90 = puVar6;
          if (2 < iVar2 + 1U) {
            iVar5 = iVar2 / 2;
            puVar6 = auStack_b0;
            do {
              iVar8 = *(int *)(puVar6 + 0x20);
              iVar5 = iVar5 + -1;
              puVar4 = *(undefined **)(iVar8 + 0x20);
              *(undefined **)(puVar6 + 0x20) = puVar4;
              *(undefined4 *)(iVar8 + 0x20) = *(undefined4 *)(puVar4 + 0x1c);
              *(int *)(puVar4 + 0x1c) = iVar8;
              puVar6 = puVar4;
            } while (iVar5 != 0);
          }
          puVar6 = local_90;
        }
      }
    }
    if (puVar6 != (undefined *)*param_2) {
      _Z10visit_treeP14ir_instructionPFvS0_PvES1_S3_S1_(puVar6,0,0,0xb4dc1,0);
      *param_2 = (int)puVar6;
      *(undefined *)(param_1 + 0x19) = 1;
    }
  }
  if (__stack_chk_guard == local_1c) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}


/* address=000b4dc0 symbol=FUN_000b4dc0 */

void FUN_000b4dc0(int param_1)

{
  undefined4 uVar1;
  
  if ((param_1 != 0) && (*(int *)(param_1 + 0xc) == 4)) {
    uVar1 = _ZN9glsl_type12get_instanceEjjj
                      (*(undefined4 *)(*(int *)(param_1 + 0x10) + 4),
                       ((uint)*(ushort *)
                               (*(int *)(*(int *)(param_1 + (uint)(((uint)*(ushort *)
                                                                           (*(int *)(*(int *)(
                                                  param_1 + 0x1c) + 0x10) + 8) << 0x14) >> 0x1d <=
                                                  ((uint)*(ushort *)
                                                          (*(int *)(*(int *)(param_1 + 0x20) + 0x10)
                                                          + 8) << 0x14) >> 0x1d) * 4 + 0x1c) + 0x10)
                               + 8) << 0x14) >> 0x1d,1);
    *(undefined4 *)(param_1 + 0x10) = uVar1;
  }
  return;
}


/* address=000b4ea8 symbol=_Z24optimize_redundant_jumpsP9exec_list */

void _Z24optimize_redundant_jumpsP9exec_list(undefined4 param_1)

{
  undefined4 uVar1;
  undefined **local_30 [6];
  undefined local_17;
  int local_14;
  
  local_14 = __stack_chk_guard;
  uVar1 = _ZN23ir_hierarchical_visitorC1Ev(local_30);
  local_17 = 0;
  local_30[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eb648;
  _ZN23ir_hierarchical_visitor3runEP9exec_list(uVar1,param_1);
  if (__stack_chk_guard != local_14) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(local_17);
  }
  return;
}


/* address=000b4fe8 symbol=_Z22do_structure_splittingP9exec_list */

void _Z22do_structure_splittingP9exec_list(undefined4 param_1)

{
  int **ppiVar1;
  int **ppiVar2;
  undefined4 uVar3;
  int *piVar4;
  undefined4 uVar5;
  int iVar6;
  int **ppiVar7;
  int *piVar8;
  int iVar9;
  int iVar10;
  uint uVar11;
  undefined **local_74 [7];
  int ***local_58;
  undefined **local_54 [6];
  int **local_3b;
  int *local_37;
  int ***local_33;
  undefined4 local_2c;
  int local_28;
  
  local_28 = __stack_chk_guard;
  _ZN23ir_hierarchical_visitorC1Ev(local_54);
  local_54[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eb6f0;
  local_37 = (int *)0x0;
  local_3b = &local_37;
  local_33 = &local_3b;
  local_2c = ralloc_context(0);
  local_37 = (int *)0x0;
  local_3b = &local_37;
  local_33 = &local_3b;
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(local_54,param_1,1);
  ppiVar7 = (int **)*local_3b;
  ppiVar2 = local_3b;
  while (ppiVar1 = ppiVar7, ppiVar1 != (int **)0x0) {
    if ((*(char *)(ppiVar2 + 4) == '\0') || (ppiVar2[3] != (int *)0x0)) {
      iVar9 = (int)*ppiVar2;
      *(int **)(iVar9 + 4) = ppiVar2[1];
      *ppiVar2[1] = iVar9;
      ppiVar2[1] = (int *)0x0;
      *ppiVar2 = (int *)0x0;
    }
    ppiVar2 = ppiVar1;
    ppiVar7 = (int **)*ppiVar1;
  }
  if (local_3b != &local_37) {
    uVar3 = ralloc_context(0);
    ppiVar7 = (int **)*local_3b;
    ppiVar2 = local_3b;
    while (ppiVar1 = ppiVar7, ppiVar1 != (int **)0x0) {
      iVar9 = ppiVar2[2][4];
      piVar4 = (int *)ralloc_parent();
      ppiVar2[6] = piVar4;
      piVar4 = (int *)ralloc_array_size(uVar3,4,*(undefined4 *)(iVar9 + 0x10));
      piVar8 = ppiVar2[2];
      ppiVar2[5] = piVar4;
      if (*(int *)(piVar8[4] + 0x10) != 0) {
        iVar10 = 0;
        uVar11 = 0;
        do {
          uVar5 = ralloc_asprintf(uVar3,0xb51ac,piVar8[5],
                                  *(undefined4 *)(*(int *)(iVar9 + 0x14) + iVar10 + 4));
          iVar6 = ralloc_size(ppiVar2[6],0x44);
          ralloc_set_destructor(iVar6,_ZN9exec_node18_ralloc_destructorEPv);
          _ZN11ir_variableC2EPK9glsl_typePKc16ir_variable_mode14glsl_precision
                    (iVar6,*(undefined4 *)(*(int *)(iVar9 + 0x14) + iVar10),uVar5,10,
                     *(undefined4 *)(*(int *)(iVar9 + 0x14) + iVar10 + 8));
          iVar10 = iVar10 + 0x18;
          ppiVar2[5][uVar11] = iVar6;
          piVar8 = ppiVar2[2];
          ppiVar7 = (int **)ppiVar2[5][uVar11];
          uVar11 = uVar11 + 1;
          if (ppiVar7 != (int **)0x0) {
            ppiVar7 = ppiVar7 + 1;
          }
          *ppiVar7 = piVar8 + 1;
          ppiVar7[1] = (int *)piVar8[2];
          *(int ***)piVar8[2] = ppiVar7;
          piVar8[2] = (int)ppiVar7;
        } while (uVar11 < *(uint *)(piVar8[4] + 0x10));
      }
      iVar9 = piVar8[1];
      *(int *)(iVar9 + 4) = piVar8[2];
      *(int *)piVar8[2] = iVar9;
      piVar8[2] = 0;
      piVar8[1] = 0;
      ppiVar2 = ppiVar1;
      ppiVar7 = (int **)*ppiVar1;
    }
    uVar5 = _ZN23ir_hierarchical_visitorC1Ev(local_74);
    local_74[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eb798;
    local_58 = &local_3b;
    _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(uVar5,param_1,1);
    ralloc_free(uVar3);
  }
  local_54[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eb6f0;
  ralloc_free(local_2c);
  if (__stack_chk_guard - local_28 != 0) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(__stack_chk_guard - local_28);
  }
  return;
}


/* address=000b51c6 symbol=FUN_000b51c6 */

undefined4 FUN_000b51c6(void)

{
  int iVar1;
  
  iVar1 = FUN_000b523c();
  if (iVar1 != 0) {
    *(undefined *)(iVar1 + 0x10) = 1;
  }
  return 0;
}


/* address=000b51d8 symbol=FUN_000b51d8 */

undefined4 FUN_000b51d8(undefined4 param_1,int *param_2)

{
  undefined4 uVar1;
  int iVar2;
  
  uVar1 = (**(code **)(*param_2 + 0x20))(param_2);
  iVar2 = FUN_000b523c(param_1,uVar1);
  if (iVar2 != 0) {
    *(int *)(iVar2 + 0xc) = *(int *)(iVar2 + 0xc) + 1;
  }
  return 0;
}


/* address=000b51fa symbol=FUN_000b51fa */

undefined4 FUN_000b51fa(undefined4 param_1,int param_2)

{
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(param_1,param_2 + 0x26,1);
  return 1;
}


/* address=000b523c symbol=FUN_000b523c */

int ** FUN_000b523c(int param_1,int *param_2)

{
  int **ppiVar1;
  int **ppiVar2;
  
  if ((*(int *)(param_2[4] + 4) == 7) && (2 < ((uint)(param_2[6] << 0x13) >> 0x1c) - 1)) {
    for (ppiVar2 = *(int ***)(param_1 + 0x19); *ppiVar2 != (int *)0x0; ppiVar2 = (int **)*ppiVar2) {
      if (ppiVar2[2] == param_2) {
        return ppiVar2;
      }
    }
    ppiVar2 = (int **)ralloc_size(*(undefined4 *)(param_1 + 0x28),0x1c);
    ralloc_set_destructor(ppiVar2,_ZN9exec_node18_ralloc_destructorEPv);
    ppiVar2[2] = param_2;
    ppiVar2[3] = (int *)0x0;
    *(undefined *)(ppiVar2 + 4) = 0;
    ppiVar2[5] = (int *)0x0;
    ppiVar2[6] = (int *)0x0;
    *ppiVar2 = (int *)(param_1 + 0x1d);
    ppiVar1 = *(int ***)(param_1 + 0x21);
    ppiVar2[1] = (int *)ppiVar1;
    *ppiVar1 = (int *)ppiVar2;
    *(int ***)(param_1 + 0x21) = ppiVar2;
  }
  else {
    ppiVar2 = (int **)0x0;
  }
  return ppiVar2;
}


/* address=000b52b4 symbol=FUN_000b52b4 */

undefined4 FUN_000b52b4(int *param_1,int param_2)

{
  int **ppiVar1;
  int **ppiVar2;
  int *piVar3;
  int iVar4;
  int **ppiVar5;
  int **ppiVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  int *piVar9;
  int **ppiVar10;
  int **ppiVar11;
  int *piVar12;
  uint uVar13;
  int iVar14;
  undefined4 local_28;
  
  ppiVar1 = (int **)(param_2 + 0x10);
  piVar9 = *ppiVar1;
  ppiVar10 = (int **)0x0;
  ppiVar2 = (int **)(param_2 + 0x14);
  piVar3 = *ppiVar2;
  piVar12 = (int *)0x0;
  if (piVar3[3] == 2) {
    piVar12 = piVar3;
  }
  if ((piVar9 != (int *)0x0) && (piVar9[3] == 2)) {
    if (*(int *)(((int *)piVar9[6])[4] + 4) == 7) {
      for (ppiVar10 = *(int ***)param_1[7]; *ppiVar10 != (int *)0x0; ppiVar10 = (int **)*ppiVar10) {
        if (ppiVar10[2] == (int *)piVar9[6]) goto LAB_000b5302;
      }
    }
    ppiVar10 = (int **)0x0;
  }
LAB_000b5302:
  if ((piVar12 != (int *)0x0) && (*(int *)(((int *)piVar12[6])[4] + 4) == 7)) {
    for (ppiVar11 = *(int ***)param_1[7]; *ppiVar11 != (int *)0x0; ppiVar11 = (int **)*ppiVar11) {
      if (ppiVar11[2] == (int *)piVar12[6]) goto LAB_000b5326;
    }
  }
  ppiVar11 = (int **)0x0;
LAB_000b5326:
  if ((((uint)ppiVar10 | (uint)ppiVar11) == 0) || (*(int *)(param_2 + 0x18) != 0)) {
    (**(code **)(*param_1 + 0x94))(param_1,ppiVar2);
    FUN_000b5530(param_1,ppiVar1);
  }
  else {
    iVar4 = piVar3[4];
    if (*(int *)(iVar4 + 0x10) == 0) {
      piVar12 = *(int **)(param_2 + 8);
    }
    else {
      ppiVar5 = ppiVar11;
      if (ppiVar10 != (int **)0x0) {
        ppiVar5 = ppiVar10;
      }
      ppiVar6 = (int **)(param_2 + 8);
      uVar13 = 0;
      iVar14 = 4;
      do {
        piVar12 = ppiVar5[6];
        if (ppiVar10 == (int **)0x0) {
          local_28 = ralloc_size(piVar12,0x20);
          ralloc_set_destructor(local_28,_ZN9exec_node18_ralloc_destructorEPv);
          uVar7 = (**(code **)(**ppiVar1 + 0x10))(*ppiVar1,piVar12,0);
          _ZN21ir_dereference_recordC2EP9ir_rvaluePKc
                    (local_28,uVar7,*(undefined4 *)(*(int *)(iVar4 + 0x14) + iVar14));
        }
        else {
          local_28 = ralloc_size(piVar12,0x1c);
          ralloc_set_destructor(local_28,_ZN9exec_node18_ralloc_destructorEPv);
          _ZN23ir_dereference_variableC2EP11ir_variable(local_28,ppiVar10[5][uVar13]);
        }
        if (ppiVar11 == (int **)0x0) {
          uVar7 = ralloc_size(piVar12,0x20);
          ralloc_set_destructor(uVar7,_ZN9exec_node18_ralloc_destructorEPv);
          uVar8 = (**(code **)(**ppiVar2 + 0x10))(*ppiVar2,piVar12,0);
          _ZN21ir_dereference_recordC2EP9ir_rvaluePKc
                    (uVar7,uVar8,*(undefined4 *)(*(int *)(iVar4 + 0x14) + iVar14));
        }
        else {
          uVar7 = ralloc_size(piVar12,0x1c);
          ralloc_set_destructor(uVar7,_ZN9exec_node18_ralloc_destructorEPv);
          _ZN23ir_dereference_variableC2EP11ir_variable(uVar7,ppiVar11[5][uVar13]);
        }
        piVar12 = (int *)ralloc_size(piVar12,0x20);
        ralloc_set_destructor(piVar12,_ZN9exec_node18_ralloc_destructorEPv);
        _ZN13ir_assignmentC2EP9ir_rvalueS1_S1_(piVar12,local_28,uVar7,0);
        if (piVar12 != (int *)0x0) {
          piVar12 = piVar12 + 1;
        }
        iVar14 = iVar14 + 0x18;
        *piVar12 = param_2 + 4;
        uVar13 = uVar13 + 1;
        piVar12[1] = (int)*ppiVar6;
        **ppiVar6 = (int)piVar12;
        *ppiVar6 = piVar12;
      } while (uVar13 < *(uint *)(iVar4 + 0x10));
    }
    iVar4 = *(int *)(param_2 + 4);
    *(int **)(iVar4 + 4) = piVar12;
    **(int **)(param_2 + 8) = iVar4;
    *(undefined4 *)(param_2 + 8) = 0;
    *(undefined4 *)(param_2 + 4) = 0;
  }
  (**(code **)(*param_1 + 0x94))(param_1,(int *)(param_2 + 0x18));
  return 0;
}


/* address=000b54e0 symbol=FUN_000b54e0 */

void FUN_000b54e0(undefined4 param_1,int *param_2)

{
  int iVar1;
  int local_18;
  int local_14;
  
  local_14 = __stack_chk_guard;
  iVar1 = *param_2;
  if (iVar1 != 0) {
    if (2 < *(uint *)(iVar1 + 0xc)) {
      iVar1 = 0;
    }
    local_18 = iVar1;
    if (iVar1 != 0) {
      FUN_000b5530(param_1,&local_18);
      *param_2 = local_18;
    }
  }
  if (__stack_chk_guard != local_14) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b5530 symbol=FUN_000b5530 */

void FUN_000b5530(int param_1,int *param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  char **ppcVar4;
  uint uVar5;
  int **ppiVar6;
  char *__s1;
  uint uVar7;
  
  iVar1 = *param_2;
  if (*(int *)(iVar1 + 0xc) != 1) {
    return;
  }
  iVar2 = *(int *)(iVar1 + 0x18);
  if (iVar2 == 0) {
    return;
  }
  if (*(int *)(iVar2 + 0xc) != 2) {
    return;
  }
  iVar3 = (*(int **)(iVar2 + 0x18))[4];
  if (*(int *)(iVar3 + 4) != 7) {
    return;
  }
  ppiVar6 = (int **)**(int ***)(param_1 + 0x1c);
  while( true ) {
    if (*ppiVar6 == (int *)0x0) {
      return;
    }
    if (ppiVar6[2] == *(int **)(iVar2 + 0x18)) break;
    ppiVar6 = (int **)*ppiVar6;
  }
  if (ppiVar6 == (int **)0x0) {
    return;
  }
  uVar7 = *(uint *)(iVar3 + 0x10);
  if (uVar7 == 0) {
    uVar5 = 0;
  }
  else {
    uVar5 = 0;
    __s1 = *(char **)(iVar1 + 0x1c);
    ppcVar4 = (char **)(*(int *)(iVar3 + 0x14) + 4);
    do {
      iVar1 = strcmp(__s1,*ppcVar4);
      if (iVar1 == 0) break;
      uVar5 = uVar5 + 1;
      ppcVar4 = ppcVar4 + 6;
    } while (uVar5 < uVar7);
  }
  iVar1 = ralloc_size(ppiVar6[6],0x1c);
  ralloc_set_destructor(iVar1,_ZN9exec_node18_ralloc_destructorEPv);
  _ZN23ir_dereference_variableC2EP11ir_variable(iVar1,ppiVar6[5][uVar5]);
  *param_2 = iVar1;
  return;
}


/* address=000b55cc symbol=_Z18do_swizzle_swizzleP9exec_list */

void _Z18do_swizzle_swizzleP9exec_list(undefined4 param_1)

{
  undefined4 uVar1;
  undefined **local_30 [6];
  undefined local_17;
  int local_14;
  
  local_14 = __stack_chk_guard;
  uVar1 = _ZN23ir_hierarchical_visitorC1Ev(local_30);
  local_17 = 0;
  local_30[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eb84c;
  _ZN23ir_hierarchical_visitor3runEP9exec_list(uVar1,param_1);
  if (__stack_chk_guard != local_14) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(local_17);
  }
  return;
}


/* address=000b5620 symbol=FUN_000b5620 */

void FUN_000b5620(int param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  uint local_20 [5];
  int local_c;
  
  iVar1 = __stack_chk_guard;
  local_c = __stack_chk_guard;
  iVar3 = *(int *)(param_2 + 0x18);
  if ((iVar3 != 0) && (*(int *)(iVar3 + 0xc) == 5)) {
    local_20[2] = 0;
    local_20[3] = 0;
    local_20[0] = 0;
    local_20[1] = 0;
    uVar2 = (uint)*(ushort *)(iVar3 + 0x1c);
    if ((*(ushort *)(iVar3 + 0x1c) & 0x700) != 0) {
      local_20[0] = uVar2 & 3;
    }
    if (0x100 < (uVar2 & 0x600)) {
      local_20[1] = (uVar2 << 0x1c) >> 0x1e;
    }
    if (0x200 < (uVar2 & 0x700)) {
      local_20[2] = (uVar2 << 0x1a) >> 0x1e;
    }
    if (0x300 < (uVar2 & 0x400)) {
      local_20[3] = (uVar2 << 0x18) >> 0x1e;
    }
    uVar2 = (uint)*(ushort *)(param_2 + 0x1c);
    if ((*(ushort *)(param_2 + 0x1c) & 0x700) != 0) {
      uVar2 = uVar2 & 0xfffffffc | *(ushort *)(local_20 + (uVar2 & 3)) & 3;
      *(short *)(param_2 + 0x1c) = (short)uVar2;
    }
    if (0x100 < (uVar2 & 0x600)) {
      uVar2 = uVar2 & 0xfffffff3 | (*(ushort *)((int)local_20 + (uVar2 & 0xc)) & 3) << 2;
      *(short *)(param_2 + 0x1c) = (short)uVar2;
    }
    if (0x200 < (uVar2 & 0x700)) {
      uVar2 = uVar2 & 0xffffffcf | (*(ushort *)((int)local_20 + (uVar2 >> 2 & 0xc)) & 3) << 4;
      *(short *)(param_2 + 0x1c) = (short)uVar2;
    }
    if (0x300 < (uVar2 & 0x400)) {
      *(ushort *)(param_2 + 0x1c) =
           (ushort)uVar2 & 0xff3f |
           (ushort)((*(ushort *)(local_20 + ((uVar2 << 0x18) >> 0x1e)) & 3) << 6);
    }
    *(undefined4 *)(param_2 + 0x18) = *(undefined4 *)(iVar3 + 0x18);
    *(undefined *)(param_1 + 0x19) = 1;
  }
  if (__stack_chk_guard - iVar1 != 0) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(__stack_chk_guard - iVar1);
  }
  return;
}


/* address=000b5730 symbol=_Z16do_tree_graftingP9exec_list */

void _Z16do_tree_graftingP9exec_list(undefined4 param_1)

{
  undefined *local_44;
  undefined local_40;
  undefined auStack_3c [40];
  int local_14;
  
  local_14 = __stack_chk_guard;
  _ZN28ir_variable_refcount_visitorC1Ev(auStack_3c);
  local_40 = 0;
  local_44 = auStack_3c;
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(auStack_3c,param_1,1);
  _Z21call_for_basic_blocksP9exec_listPFvP14ir_instructionS2_PvES3_(param_1,0xb5799,&local_44);
  _ZN28ir_variable_refcount_visitorD1Ev(auStack_3c);
  if (__stack_chk_guard - local_14 != 0) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(__stack_chk_guard - local_14);
  }
  return;
}


/* address=000b5798 symbol=FUN_000b5798 */

void FUN_000b5798(int param_1,int param_2,undefined4 *param_3)

{
  byte bVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  int *piVar7;
  int *piVar8;
  int *piVar9;
  bool bVar10;
  undefined **local_4c [6];
  byte local_33;
  int local_30;
  int iStack_2c;
  int local_28;
  
  local_28 = __stack_chk_guard;
  piVar7 = (int *)(param_1 + 4);
  iVar2 = *piVar7;
  if (param_1 == 0) {
    piVar7 = (int *)0x0;
  }
  if (piVar7 != *(int **)(param_2 + 4)) {
    if (iVar2 != 0) {
      iVar2 = iVar2 + -4;
    }
    do {
      iVar4 = iVar2;
      if (((param_1 != 0) && (*(int *)(param_1 + 0xc) == 8)) &&
         (iVar2 = _ZN13ir_assignment22whole_variable_writtenEv(param_1), iVar2 != 0)) {
        uVar5 = *(uint *)(iVar2 + 0x18) >> 9;
        if ((((int)(uVar5 << 0x1c) >> 0x1c < 0) || ((1 << (uVar5 & 0xf) & 200U) == 0)) &&
           (iVar3 = _ZN28ir_variable_refcount_visitor18get_variable_entryEP11ir_variable
                              (*param_3,iVar2), *(char *)(iVar3 + 0x14) != '\0')) {
          bVar10 = *(int *)(iVar3 + 0x10) == 1;
          if (bVar10) {
            iVar3 = *(int *)(iVar3 + 8);
          }
          if ((bVar10 && iVar3 == 2) &&
             ((uVar6 = *(uint *)(*(int *)(param_1 + 0x14) + 0x14),
              uVar5 = (*(uint *)(iVar2 + 0x18) << 0xf) >> 0x1e, uVar6 == 3 || uVar5 == uVar6 ||
              (uVar5 == 3)))) {
            _ZN23ir_hierarchical_visitorC1Ev(local_4c);
            bVar1 = 0;
            local_33 = 0;
            local_4c[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eb8f4;
            piVar9 = *(int **)(param_1 + 4);
            piVar7 = *(int **)(param_2 + 4);
            if (piVar9 != (int *)0x0) {
              piVar9 = piVar9 + -1;
            }
            piVar8 = piVar9;
            if (piVar9 != (int *)0x0) {
              piVar8 = piVar9 + 1;
            }
            local_30 = iVar2;
            iStack_2c = param_1;
            if (piVar8 != piVar7) {
              do {
                iVar2 = (**(code **)(*piVar9 + 0xc))(piVar9,local_4c);
                piVar7 = (int *)(uint)local_33;
                if (iVar2 == 2) {
                  bVar1 = 1;
                  goto LAB_000b586e;
                }
                piVar9 = (int *)piVar9[1];
                if (piVar9 != (int *)0x0) {
                  piVar9 = piVar9 + -1;
                }
                piVar8 = piVar9;
                if (piVar9 != (int *)0x0) {
                  piVar8 = piVar9 + 1;
                }
              } while (piVar8 != *(int **)(param_2 + 4));
              bVar1 = 0;
LAB_000b586e:
              if (piVar7 != (int *)0x0) {
                piVar7 = (int *)0x1;
              }
            }
            *(byte *)(param_3 + 1) = bVar1 & (byte)piVar7 | *(byte *)(param_3 + 1);
          }
        }
      }
      piVar7 = (int *)(iVar4 + 4);
      iVar2 = *piVar7;
      if (iVar2 != 0) {
        iVar2 = iVar2 + -4;
      }
      if (iVar4 == 0) {
        piVar7 = (int *)0x0;
      }
      param_1 = iVar4;
    } while (piVar7 != *(int **)(param_2 + 4));
  }
  if (__stack_chk_guard != local_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b5910 symbol=FUN_000b5910 */

undefined4 FUN_000b5910(undefined4 param_1,int param_2)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  
  iVar4 = param_2 + 0x1c;
  uVar3 = 0;
  while( true ) {
    if (*(int *)(param_2 + 0x18) == 0x69) {
      uVar1 = ((uint)*(ushort *)(*(int *)(param_2 + 0x10) + 8) << 0x14) >> 0x1d;
    }
    else {
      uVar1 = _ZN13ir_expression16get_num_operandsE23ir_expression_operation();
    }
    if (uVar1 <= uVar3) break;
    iVar2 = FUN_000b5bae(param_1,iVar4);
    iVar4 = iVar4 + 4;
    uVar3 = uVar3 + 1;
    if (iVar2 == 1) {
      return 2;
    }
  }
  return 0;
}


/* address=000b5958 symbol=FUN_000b5958 */

undefined4 FUN_000b5958(undefined4 param_1,int param_2)

{
  int iVar1;
  
  iVar1 = FUN_000b5bae(param_1,param_2 + 0x20);
  if ((iVar1 == 0) && (iVar1 = FUN_000b5bae(param_1,param_2 + 0x24), iVar1 == 0)) {
    switch(*(undefined4 *)(param_2 + 0x18)) {
    case 1:
    case 2:
    case 4:
    case 5:
    case 6:
    case 8:
      param_2 = param_2 + 0x28;
      break;
    case 3:
      iVar1 = FUN_000b5bae(param_1,param_2 + 0x28);
      if (iVar1 != 0) {
        return 2;
      }
      param_2 = param_2 + 0x2c;
      break;
    default:
      goto switchD_000b597e_caseD_7;
    }
    iVar1 = FUN_000b5bae(param_1,param_2);
    if (iVar1 == 0) {
switchD_000b597e_caseD_7:
      return 0;
    }
  }
  return 2;
}


/* address=000b59b4 symbol=FUN_000b59b4 */

int FUN_000b59b4(undefined4 param_1,int param_2)

{
  int iVar1;
  
  iVar1 = FUN_000b5bae(param_1,param_2 + 0x18);
  if (iVar1 != 0) {
    iVar1 = 2;
  }
  return iVar1;
}


/* address=000b59fc symbol=FUN_000b59fc */

void FUN_000b59fc(int param_1,int param_2)

{
  char cVar1;
  int iVar2;
  undefined4 uStack_1c;
  char local_18;
  int local_14;
  
  local_14 = __stack_chk_guard;
  iVar2 = FUN_000b5bae(param_1,param_2 + 0x14);
  if ((iVar2 == 0) && (iVar2 = FUN_000b5bae(param_1,param_2 + 0x18), iVar2 == 0)) {
    uStack_1c = (**(code **)(**(int **)(param_2 + 0x10) + 0x20))();
    local_18 = '\0';
    _Z10visit_treeP14ir_instructionPFvS0_PvES1_S3_S1_
              (*(undefined4 *)(*(int *)(param_1 + 0x20) + 0x14),&LAB_000b5c08_1,&uStack_1c,0,0);
    cVar1 = local_18;
    if (local_18 != '\0') {
      cVar1 = '\x02';
    }
  }
  else {
    cVar1 = '\x02';
  }
  if (__stack_chk_guard != local_14) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(cVar1);
  }
  return;
}


/* address=000b5a7c symbol=FUN_000b5a7c */

void FUN_000b5a7c(int param_1,int param_2)

{
  int **ppiVar1;
  int **ppiVar2;
  uint uVar3;
  int iVar4;
  undefined4 uVar5;
  int **ppiVar6;
  int **ppiVar7;
  int **ppiVar8;
  int **ppiVar9;
  int **local_34;
  int **local_30;
  char local_2c;
  int local_28;
  
  local_28 = __stack_chk_guard;
  ppiVar1 = (int **)**(int ***)(param_2 + 0x18);
  if (ppiVar1 != (int **)0x0) {
    ppiVar6 = *(int ***)(*(int *)(param_2 + 0x14) + 0x18);
    ppiVar7 = (int **)*ppiVar6;
    if (ppiVar7 != (int **)0x0) {
      ppiVar9 = *(int ***)(param_2 + 0x18);
      do {
        ppiVar2 = ppiVar1;
        if (ppiVar9 != (int **)0x0) {
          ppiVar9 = ppiVar9 + -1;
        }
        if (ppiVar6 != (int **)0x0) {
          ppiVar6 = ppiVar6 + -1;
        }
        uVar3 = (uint)((int)ppiVar6[6] << 0x13) >> 0x1c;
        local_34 = ppiVar9;
        if (uVar3 == 5 || uVar3 == 8) {
          iVar4 = FUN_000b5bae(param_1,&local_34);
          if (iVar4 == 1) {
            ppiVar1 = local_34;
            if (local_34 != (int **)0x0) {
              ppiVar1 = local_34 + 1;
            }
            ppiVar1[1] = ppiVar9[2];
            *ppiVar1 = ppiVar9[1];
            *ppiVar9[2] = (int)ppiVar1;
            ppiVar9[1][1] = (int)ppiVar1;
            uVar3 = 1;
          }
          else {
            uVar3 = 0;
          }
        }
        else {
          local_2c = '\0';
          local_30 = ppiVar6;
          _Z10visit_treeP14ir_instructionPFvS0_PvES1_S3_S1_
                    (*(undefined4 *)(*(int *)(param_1 + 0x20) + 0x14),&LAB_000b5c08_1,&local_30,0,0)
          ;
          uVar3 = 4;
          if (local_2c != '\0') {
            uVar3 = 1;
          }
        }
        if ((uVar3 | 4) != 4) goto LAB_000b5b66;
        ppiVar1 = (int **)*ppiVar2;
      } while ((ppiVar1 != (int **)0x0) &&
              (ppiVar8 = (int **)*ppiVar7, ppiVar6 = ppiVar7, ppiVar7 = ppiVar8, ppiVar9 = ppiVar2,
              ppiVar8 != (int **)0x0));
    }
  }
  if (*(int *)(param_2 + 0x10) != 0) {
    local_30 = *(int ***)(*(int *)(param_2 + 0x10) + 0x18);
    local_2c = '\0';
    _Z10visit_treeP14ir_instructionPFvS0_PvES1_S3_S1_
              (*(undefined4 *)(*(int *)(param_1 + 0x20) + 0x14),&LAB_000b5c08_1,&local_30,0,0);
    if (local_2c != '\0') {
LAB_000b5b66:
      uVar5 = 2;
      goto LAB_000b5b6c;
    }
  }
  uVar5 = 0;
LAB_000b5b6c:
  if (__stack_chk_guard != local_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar5);
  }
  return;
}


/* address=000b5b98 symbol=FUN_000b5b98 */

undefined4 FUN_000b5b98(undefined4 param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_000b5bae(param_1,param_2 + 0x10);
  uVar2 = 1;
  if (iVar1 != 0) {
    uVar2 = 2;
  }
  return uVar2;
}


/* address=000b5bae symbol=FUN_000b5bae */

undefined4 FUN_000b5bae(int param_1,int *param_2)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  
  iVar2 = *param_2;
  if (((iVar2 == 0) || (*(int *)(iVar2 + 0xc) != 2)) ||
     (*(int *)(iVar2 + 0x18) != *(int *)(param_1 + 0x1c))) {
    uVar1 = 0;
  }
  else {
    iVar5 = *(int *)(param_1 + 0x20);
    uVar1 = 0;
    iVar4 = *(int *)(iVar5 + 0x14);
    iVar3 = *(int *)(iVar4 + 0x14);
    if (iVar3 != 3) {
      iVar2 = *(int *)(iVar2 + 0x14);
    }
    if ((iVar3 == 3 || iVar2 == 3) || (iVar2 == iVar3)) {
      iVar2 = *(int *)(iVar5 + 4);
      *(undefined4 *)(iVar2 + 4) = *(undefined4 *)(iVar5 + 8);
      **(int **)(iVar5 + 8) = iVar2;
      *(undefined4 *)(iVar5 + 8) = 0;
      *(undefined4 *)(iVar5 + 4) = 0;
      uVar1 = 1;
      *param_2 = iVar4;
      *(undefined *)(param_1 + 0x19) = 1;
    }
  }
  return uVar1;
}


/* address=000b5c20 symbol=_ZN27ir_vector_splitting_visitor12split_rvalueEPP9ir_rvalue */

void _ZN27ir_vector_splitting_visitor12split_rvalueEPP9ir_rvalue(int param_1,int **param_2)

{
  int *piVar1;
  int *piVar2;
  int **ppiVar3;
  
  piVar2 = *param_2;
  if (((piVar2 != (int *)0x0) && (piVar2[3] == 5)) &&
     (piVar1 = (int *)(**(code **)(*piVar2 + 0x20))(piVar2), piVar1 != (int *)0x0)) {
    for (ppiVar3 = (int **)**(int ***)(param_1 + 0x1c); *ppiVar3 != (int *)0x0;
        ppiVar3 = (int **)*ppiVar3) {
      if (ppiVar3[2] == piVar1) {
        if (ppiVar3 == (int **)0x0) {
          return;
        }
        piVar1 = (int *)ralloc_size(ppiVar3[7],0x1c);
        ralloc_set_destructor(piVar1,_ZN9exec_node18_ralloc_destructorEPv);
        _ZN23ir_dereference_variableC2EP11ir_variable
                  (piVar1,ppiVar3[6][*(ushort *)(piVar2 + 7) & 3]);
        *param_2 = piVar1;
        return;
      }
    }
  }
  return;
}


/* address=000b5c90 symbol=_ZN27ir_vector_splitting_visitor13handle_rvalueEPP9ir_rvalue */

void _ZN27ir_vector_splitting_visitor13handle_rvalueEPP9ir_rvalue(undefined4 param_1,int *param_2)

{
  int local_18;
  int local_14;
  
  local_14 = __stack_chk_guard;
  if (*param_2 != 0) {
    local_18 = *param_2;
    _ZN27ir_vector_splitting_visitor12split_rvalueEPP9ir_rvalue(param_1,&local_18);
    *param_2 = local_18;
  }
  if (__stack_chk_guard != local_14) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b5cd0 symbol=_ZN27ir_vector_splitting_visitor11visit_leaveEP13ir_assignment */

undefined4 _ZN27ir_vector_splitting_visitor11visit_leaveEP13ir_assignment(int *param_1,int param_2)

{
  int *piVar1;
  undefined4 uVar2;
  uint uVar3;
  int **ppiVar4;
  
  piVar1 = *(int **)(param_2 + 0x10);
  if ((piVar1 == (int *)0x0) || (piVar1[3] != 2)) {
    if (2 < (uint)piVar1[3]) {
      piVar1 = (int *)0x0;
    }
    *(int **)(param_2 + 0x10) = piVar1;
    (**(code **)(*piVar1 + 0xc))(piVar1,param_1);
  }
  else {
    ppiVar4 = *(int ***)param_1[7];
    if (*ppiVar4 != (int *)0x0) {
      do {
        if (ppiVar4[2] == (int *)piVar1[6]) {
          if (ppiVar4 != (int **)0x0) {
            uVar3 = 0xffffffff;
            goto LAB_000b5d64;
          }
          break;
        }
        ppiVar4 = (int **)*ppiVar4;
      } while (*ppiVar4 != (int *)0x0);
    }
  }
  goto LAB_000b5d14;
  while ((1 << (uVar3 & 0xff) & *(byte *)(param_2 + 0x1c) & 0xf) == 0) {
LAB_000b5d64:
    uVar3 = uVar3 + 1;
    if (3 < (int)uVar3) break;
  }
  uVar2 = ralloc_size(ppiVar4[7],0x1c);
  ralloc_set_destructor(uVar2,_ZN9exec_node18_ralloc_destructorEPv);
  _ZN23ir_dereference_variableC2EP11ir_variable(uVar2,ppiVar4[6][uVar3]);
  _ZN13ir_assignment7set_lhsEP9ir_rvalue(param_2,uVar2);
LAB_000b5d14:
  (**(code **)(*param_1 + 0x94))(param_1,param_2 + 0x14);
  (**(code **)(**(int **)(param_2 + 0x14) + 0xc))(*(int **)(param_2 + 0x14),param_1);
  ppiVar4 = (int **)(param_2 + 0x18);
  if (*ppiVar4 != (int *)0x0) {
    (**(code **)(*param_1 + 0x94))(param_1,ppiVar4);
    (**(code **)(**ppiVar4 + 0xc))(*ppiVar4,param_1);
  }
  return 0;
}


/* address=000b5da4 symbol=_Z22optimize_split_vectorsP9exec_listb26glsl_vector_splitting_mode */

void _Z22optimize_split_vectorsP9exec_listb26glsl_vector_splitting_mode
               (int *param_1,int param_2,int param_3)

{
  int **ppiVar1;
  int **ppiVar2;
  int **ppiVar3;
  int iVar4;
  int *piVar5;
  int iVar6;
  undefined4 uVar7;
  int *piVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  int iVar12;
  int **ppiVar13;
  int iVar14;
  uint uVar15;
  undefined4 local_7c [7];
  int local_60;
  undefined **local_5c [6];
  int **local_43;
  undefined4 local_3f;
  int local_3b;
  int local_34;
  char *local_30;
  undefined4 local_2c;
  int local_28;
  
  local_28 = __stack_chk_guard;
  iVar4 = _ZN23ir_hierarchical_visitorC1Ev(local_5c);
  ppiVar13 = (int **)(iVar4 + 0x1d);
  iVar4 = iVar4 + 0x19;
  local_5c[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eba50;
  local_3f = 0;
  local_43 = ppiVar13;
  local_3b = iVar4;
  local_2c = ralloc_context(0);
  local_3f = 0;
  local_34 = param_3;
  if (param_2 == 0) {
    local_30 = (char *)0x0;
    local_43 = ppiVar13;
    local_3b = iVar4;
    _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(local_5c,param_1,1);
    iVar6 = *param_1;
    if (iVar6 != 0) {
      iVar6 = iVar6 + -4;
    }
    piVar8 = (int *)(iVar6 + 4);
    if (*piVar8 != 0) {
      do {
        if ((iVar6 != 0) && (piVar5 = (int *)FUN_000b6114(local_5c), piVar5 != (int *)0x0)) {
          iVar6 = *piVar5;
          *(int *)(iVar6 + 4) = piVar5[1];
          *(int *)piVar5[1] = iVar6;
          piVar5[1] = 0;
          *piVar5 = 0;
        }
        iVar6 = *piVar8;
        if (iVar6 != 0) {
          iVar6 = iVar6 + -4;
        }
        piVar8 = (int *)(iVar6 + 4);
      } while (*piVar8 != 0);
    }
  }
  else {
    local_43 = ppiVar13;
    local_3b = iVar4;
    local_30 = (char *)_Z22analyze_loop_variablesP9exec_list(param_1);
    if (*local_30 != '\0') {
      _Z17set_loop_controlsP9exec_listP10loop_state(param_1,local_30);
    }
    _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(local_5c,param_1,1);
  }
  ppiVar3 = (int **)*local_43;
  ppiVar2 = local_43;
  while (ppiVar1 = ppiVar3, ppiVar1 != (int **)0x0) {
    if (((*(char *)(ppiVar2 + 5) == '\0') || (*(char *)(ppiVar2 + 3) == '\0')) ||
       ((local_34 == 1 &&
        (ppiVar2[4] ==
         (int *)((1 << (((uint)*(ushort *)(*(int *)((int)ppiVar2[2] + 0x10) + 8) << 0x14) >> 0x1d))
                + -1))))) {
      iVar6 = (int)*ppiVar2;
      *(int **)(iVar6 + 4) = ppiVar2[1];
      *ppiVar2[1] = iVar6;
      ppiVar2[1] = (int *)0x0;
      *ppiVar2 = (int *)0x0;
    }
    ppiVar2 = ppiVar1;
    ppiVar3 = (int **)*ppiVar1;
  }
  if (local_43 != ppiVar13) {
    uVar7 = ralloc_context(0);
    piVar8 = *local_43;
    ppiVar13 = local_43;
    while (piVar8 != (int *)0x0) {
      iVar12 = *(int *)((int)ppiVar13[2] + 0x10);
      iVar14 = *(int *)((int)ppiVar13[2] + 0x18);
      uVar9 = _ZNK9glsl_type13get_base_typeEv(iVar12);
      iVar6 = ralloc_parent(ppiVar13[2]);
      ppiVar13[7] = (int *)iVar6;
      iVar6 = ralloc_array_size(uVar7,4,((uint)*(ushort *)(iVar12 + 8) << 0x14) >> 0x1d);
      ppiVar13[6] = (int *)iVar6;
      if ((*(byte *)(iVar12 + 9) & 0xe) == 0) {
        iVar6 = (int)ppiVar13[2];
        piVar8 = *(int **)(iVar6 + 8);
      }
      else {
        iVar6 = (int)ppiVar13[2];
        uVar15 = 0;
        do {
          uVar10 = ralloc_asprintf(uVar7,0xb6020,*(undefined4 *)(iVar6 + 0x14),
                                   *(undefined *)(uVar15 + 0xb6018));
          uVar11 = ralloc_size(ppiVar13[7],0x44);
          ralloc_set_destructor(uVar11,_ZN9exec_node18_ralloc_destructorEPv);
          _ZN11ir_variableC2EPK9glsl_typePKc16ir_variable_mode14glsl_precision
                    (uVar11,uVar9,uVar10,10,(uint)(iVar14 << 0xf) >> 0x1e);
          *(undefined4 *)((int)ppiVar13[6] + uVar15 * 4) = uVar11;
          iVar6 = (int)ppiVar13[2];
          piVar8 = *(int **)((int)ppiVar13[6] + uVar15 * 4);
          uVar15 = uVar15 + 1;
          if (piVar8 != (int *)0x0) {
            piVar8 = piVar8 + 1;
          }
          *piVar8 = iVar6 + 4;
          piVar8[1] = *(int *)(iVar6 + 8);
          **(int ***)(iVar6 + 8) = piVar8;
          *(int **)(iVar6 + 8) = piVar8;
        } while (uVar15 < ((uint)*(ushort *)(iVar12 + 8) << 0x14) >> 0x1d);
      }
      iVar12 = *(int *)(iVar6 + 4);
      *(int **)(iVar12 + 4) = piVar8;
      **(int **)(iVar6 + 8) = iVar12;
      *(undefined4 *)(iVar6 + 8) = 0;
      *(undefined4 *)(iVar6 + 4) = 0;
      ppiVar13 = (int **)*ppiVar13;
      piVar8 = *ppiVar13;
    }
    uVar9 = _ZN23ir_hierarchical_visitorC1Ev(local_7c);
    local_7c[0] = 0xeb99c;
    local_60 = iVar4;
    _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(uVar9,param_1,1);
    ralloc_free(uVar7);
  }
  local_5c[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000eba50;
  ralloc_free(local_2c);
  if (__stack_chk_guard - local_28 != 0) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(__stack_chk_guard - local_28);
  }
  return;
}


/* address=000b6038 symbol=_ZN27ir_vector_splitting_visitorD2Ev */

void _ZN27ir_vector_splitting_visitorD2Ev(void)

{
  return;
}


/* address=000b603a symbol=_ZN27ir_vector_splitting_visitorD0Ev */

void _ZN27ir_vector_splitting_visitorD0Ev(void)

{
  _ZdlPv();
  return;
}


/* address=000b603e symbol=FUN_000b603e */

undefined4 FUN_000b603e(void)

{
  int iVar1;
  
  iVar1 = FUN_000b6114();
  if (iVar1 != 0) {
    *(undefined *)(iVar1 + 0x14) = 1;
  }
  return 0;
}


/* address=000b6050 symbol=FUN_000b6050 */

undefined4 FUN_000b6050(undefined4 param_1,int param_2)

{
  int iVar1;
  
  iVar1 = FUN_000b6114(param_1,*(undefined4 *)(param_2 + 0x18));
  if (iVar1 != 0) {
    *(undefined *)(iVar1 + 0xc) = 0;
  }
  return 0;
}


/* address=000b6064 symbol=FUN_000b6064 */

undefined4 FUN_000b6064(undefined4 param_1,int param_2)

{
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(param_1,param_2 + 0x26,1);
  return 1;
}


/* address=000b6074 symbol=FUN_000b6074 */

undefined4 FUN_000b6074(undefined4 param_1,int *param_2)

{
  int iVar1;
  
  iVar1 = (**(code **)(*param_2 + 0x20))(param_2);
  if (iVar1 == 0) {
    return 0;
  }
  iVar1 = FUN_000b6114(param_1);
  if (iVar1 != 0) {
    if ((*(ushort *)(param_2 + 7) & 0x600) < 0x101) {
      *(uint *)(iVar1 + 0x10) = *(uint *)(iVar1 + 0x10) | 1 << (*(ushort *)(param_2 + 7) & 3);
      return 1;
    }
    *(undefined *)(iVar1 + 0xc) = 0;
  }
  return 1;
}


/* address=000b60bc symbol=FUN_000b60bc */

undefined4 FUN_000b60bc(undefined4 param_1,int param_2)

{
  int iVar1;
  undefined uVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  
  iVar1 = *(int *)(param_2 + 0x10);
  if (((iVar1 != 0) && (*(int *)(iVar1 + 0xc) == 2)) &&
     (iVar1 = FUN_000b6114(param_1,*(undefined4 *)(iVar1 + 0x18)), iVar1 != 0)) {
    uVar6 = (uint)*(byte *)(param_2 + 0x1c);
    uVar3 = uVar6 & 0xf;
    if ((*(byte *)(param_2 + 0x1c) & 0xf) != 0) {
      iVar5 = -1;
      do {
        iVar4 = iVar5;
        uVar2 = (undefined)(uVar3 - 1);
        iVar5 = iVar4 + 1;
        uVar3 = uVar3 & uVar3 - 1;
      } while (uVar3 != 0);
      if (0 < iVar5) {
        uVar2 = 0;
      }
      if (iVar4 < 0 == SBORROW4(iVar5,1)) {
        *(undefined *)(iVar1 + 0xc) = uVar2;
        uVar6 = (uint)*(byte *)(param_2 + 0x1c);
      }
    }
    *(uint *)(iVar1 + 0x10) = *(uint *)(iVar1 + 0x10) | uVar6 & 0xf;
  }
  (**(code **)(**(int **)(param_2 + 0x14) + 0xc))(*(int **)(param_2 + 0x14),param_1);
  return 1;
}


/* address=000b6114 symbol=FUN_000b6114 */

int ** FUN_000b6114(int param_1,int *param_2)

{
  ushort uVar1;
  uint uVar2;
  int **ppiVar3;
  int iVar4;
  int **ppiVar5;
  
  uVar2 = (uint)(param_2[6] << 0x13) >> 0x1c;
  if (uVar2 == 10 || uVar2 == 0) {
    uVar1 = *(ushort *)(param_2[4] + 8);
    if ((uVar1 & 0xc00) < 0x201) {
      return (int **)0x0;
    }
    if ((uVar1 & 0x7000) != 0x1000) {
      return (int **)0x0;
    }
    if ((*(uint *)(param_2[4] + 4) < 4) &&
       (((*(int *)(param_1 + 0x28) != 0 || (*(int *)(param_1 + 0x2c) == 0)) ||
        (iVar4 = _ZN10loop_state16get_for_inductorEPK11ir_variable(*(int *)(param_1 + 0x2c),param_2)
        , iVar4 != 0)))) {
      ppiVar5 = *(int ***)(param_1 + 0x19);
      while( true ) {
        if (*ppiVar5 == (int *)0x0) {
          ppiVar5 = (int **)ralloc_size(*(undefined4 *)(param_1 + 0x30),0x20);
          ralloc_set_destructor(ppiVar5,_ZN9exec_node18_ralloc_destructorEPv);
          *(undefined *)(ppiVar5 + 3) = 1;
          ppiVar5[2] = param_2;
          ppiVar5[4] = (int *)0x0;
          *(undefined *)(ppiVar5 + 5) = 0;
          ppiVar5[6] = (int *)0x0;
          ppiVar5[7] = (int *)0x0;
          *ppiVar5 = (int *)(param_1 + 0x1d);
          ppiVar3 = *(int ***)(param_1 + 0x21);
          ppiVar5[1] = (int *)ppiVar3;
          *ppiVar3 = (int *)ppiVar5;
          *(int ***)(param_1 + 0x21) = ppiVar5;
          return ppiVar5;
        }
        if (ppiVar5[2] == param_2) break;
        ppiVar5 = (int **)*ppiVar5;
      }
      return ppiVar5;
    }
  }
  return (int **)0x0;
}


/* address=000b61c0 symbol=_Z12do_vectorizeP9exec_list */

void _Z12do_vectorizeP9exec_list(undefined4 param_1)

{
  undefined **local_50 [7];
  undefined auStack_34 [29];
  undefined local_17;
  int local_14;
  
  local_14 = __stack_chk_guard;
  _ZN23ir_hierarchical_visitorC1Ev(local_50);
  local_50[0] = &PTR__ZN23ir_hierarchical_visitor5visitEP9ir_rvalue_000ebaf8;
  __aeabi_memclr4(auStack_34,0x1e);
  _ZN23ir_hierarchical_visitor3runEP9exec_list(local_50,param_1);
  FUN_000b6220(local_50);
  if (__stack_chk_guard != local_14) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(local_17);
  }
  return;
}


/* address=000b6220 symbol=FUN_000b6220 */

void FUN_000b6220(int param_1)

{
  byte bVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  ushort uVar6;
  ushort local_28 [2];
  int local_24;
  
  local_24 = __stack_chk_guard;
  iVar2 = *(int *)(param_1 + 0x30);
  if ((iVar2 != 0) && (1 < *(uint *)(param_1 + 0x34))) {
    local_28[0] = (ushort)(*(uint *)(param_1 + 0x34) << 8) & 0x700;
    *(byte *)(iVar2 + 0x1c) = *(byte *)(iVar2 + 0x1c) & 0xf0;
    iVar2 = 0;
    uVar5 = 0;
    do {
      if (*(int *)(param_1 + 0x1c + uVar5 * 4) != 0) {
        bVar1 = *(byte *)(*(int *)(param_1 + 0x30) + 0x1c);
        *(byte *)(*(int *)(param_1 + 0x30) + 0x1c) =
             ((byte)(1 << (uVar5 & 0xff)) | bVar1) & 0xf | bVar1 & 0xf0;
        iVar4 = *(int *)(param_1 + 0x1c + uVar5 * 4);
        if (iVar4 != *(int *)(param_1 + 0x30)) {
          iVar3 = *(int *)(iVar4 + 4);
          *(undefined4 *)(iVar3 + 4) = *(undefined4 *)(iVar4 + 8);
          **(int **)(iVar4 + 8) = iVar3;
          *(undefined4 *)(iVar4 + 8) = 0;
          *(undefined4 *)(iVar4 + 4) = 0;
        }
        switch(iVar2) {
        case 0:
          uVar6 = (ushort)uVar5 & 3;
          local_28[0] = local_28[0] & 0xfffc;
          break;
        case 1:
          uVar6 = (ushort)((uVar5 & 3) << 2);
          local_28[0] = local_28[0] & 0xfff3;
          break;
        case 2:
          uVar6 = (ushort)((uVar5 & 3) << 4);
          local_28[0] = local_28[0] & 0xffcf;
          break;
        case 3:
          local_28[0] = local_28[0] & 0xff3f;
          uVar6 = (ushort)((uVar5 & 3) << 6);
          break;
        default:
          goto switchD_000b62ac_caseD_4;
        }
        local_28[0] = local_28[0] | uVar6;
switchD_000b62ac_caseD_4:
        iVar2 = iVar2 + 1;
      }
      uVar5 = uVar5 + 1;
    } while (uVar5 != 4);
    _Z10visit_treeP14ir_instructionPFvS0_PvES1_S3_S1_
              (*(undefined4 *)(*(int *)(param_1 + 0x30) + 0x14),0xb64f5,local_28,0,0);
    *(undefined *)(param_1 + 0x39) = 1;
  }
  __aeabi_memclr4(param_1 + 0x1c,0x1d);
  if (__stack_chk_guard == local_24) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}


/* address=000b6344 symbol=FUN_000b6344 */

undefined4 FUN_000b6344(undefined4 param_1,int param_2)

{
  FUN_000b6220();
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(param_1,param_2 + 0x10,1);
  FUN_000b6220(param_1);
  return 1;
}


/* address=000b63f0 symbol=FUN_000b63f0 */

undefined4 FUN_000b63f0(int param_1,int param_2)

{
  byte bVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  
  iVar2 = *(int *)(param_1 + 0x30);
  if (iVar2 == 0) {
    iVar4 = 0;
    iVar2 = 0;
  }
  else {
    iVar4 = *(int *)(iVar2 + 0x10);
    iVar2 = *(int *)(iVar2 + 0x14);
  }
  if ((((*(int *)(param_2 + 0x18) == 0) && (*(uint *)(param_1 + 0x34) < 4)) &&
      (bVar1 = *(byte *)(param_2 + 0x1c) & 0xf, (*(byte *)(param_2 + 0x1c) & 0xf) != 0)) &&
     ((bVar1 + 0xf & bVar1) == 0)) {
    if (bVar1 == 8) {
      uVar3 = 3;
    }
    else if (bVar1 == 4) {
      uVar3 = 2;
    }
    else {
      uVar3 = (uint)(bVar1 == 2);
    }
    if (((*(int *)(param_1 + uVar3 * 4 + 0x1c) == 0) &&
        ((iVar4 == 0 ||
         (iVar4 = (**(code **)(**(int **)(param_2 + 0x10) + 0x14))
                            (*(int **)(param_2 + 0x10),iVar4,0x15), iVar4 == 1)))) &&
       ((iVar2 == 0 ||
        (iVar2 = (**(code **)(**(int **)(param_2 + 0x14) + 0x14))(*(int **)(param_2 + 0x14),iVar2,5)
        , iVar2 != 0)))) goto LAB_000b644a;
  }
  FUN_000b6220(param_1);
LAB_000b644a:
  *(int *)(param_1 + 0x2c) = param_2;
  return 0;
}


/* address=000b64be symbol=FUN_000b64be */

undefined4 FUN_000b64be(undefined4 param_1,int param_2)

{
  FUN_000b6220();
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(param_1,param_2 + 0x14,1);
  FUN_000b6220(param_1);
  _Z19visit_list_elementsP23ir_hierarchical_visitorP9exec_listb(param_1,param_2 + 0x20,1);
  FUN_000b6220(param_1);
  return 1;
}


/* address=000b64f4 symbol=FUN_000b64f4 */

void FUN_000b64f4(int param_1,uint *param_2)

{
  ushort uVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  undefined4 uVar5;
  int iVar6;
  
  if (*(int *)(param_1 + 0xc) == 4) {
    uVar5 = _ZN9glsl_type12get_instanceEjjj
                      (*(undefined4 *)(*(int *)(param_1 + 0x10) + 4),*(byte *)((int)param_2 + 1) & 7
                       ,1);
    *(undefined4 *)(param_1 + 0x10) = uVar5;
    iVar2 = 0;
    do {
      iVar6 = *(int *)(param_1 + 0x1c + iVar2 * 4);
      if ((iVar6 != 0) && (*(uint *)(iVar6 + 0xc) < 7)) {
        if (((*(ushort *)(*(int *)(iVar6 + 0x10) + 8) & 0xe00) == 0x200) &&
           ((*(uint *)(*(int *)(iVar6 + 0x10) + 4) < 4 &&
            ((*(uint *)(iVar6 + 0xc) & 0xfffffffe) != 4)))) {
          uVar5 = ralloc_size(param_1,0x20);
          ralloc_set_destructor(uVar5,_ZN9exec_node18_ralloc_destructorEPv);
          _ZN10ir_swizzleC2EP9ir_rvaluejjjjj(uVar5,iVar6,0,0,0,0,*(byte *)((int)param_2 + 1) & 7);
          *(undefined4 *)(param_1 + 0x1c + iVar2 * 4) = uVar5;
        }
      }
      iVar2 = iVar2 + 1;
    } while (iVar2 != 4);
  }
  else if (*(int *)(param_1 + 0xc) == 5) {
    iVar2 = *(int *)(*(int *)(param_1 + 0x18) + 0x10);
    uVar1 = *(ushort *)(iVar2 + 8);
    if ((0x200 < (uVar1 & 0xc00)) && ((uVar1 & 0x7000) == 0x1000)) {
      uVar3 = *(uint *)(iVar2 + 4);
      uVar4 = uVar3;
      if (uVar3 < 4) {
        uVar4 = *param_2;
      }
      if (uVar3 < 4) {
        *(uint *)(param_1 + 0x1c) = uVar4;
      }
    }
    uVar5 = _ZN9glsl_type12get_instanceEjjj
                      (*(undefined4 *)(*(int *)(param_1 + 0x10) + 4),*(byte *)((int)param_2 + 1) & 7
                       ,1);
    *(undefined4 *)(param_1 + 0x10) = uVar5;
  }
  return;
}


/* address=000b65e8 symbol=_ZN8s_symbolC1EPKcj */

void _ZN8s_symbolC1EPKcj(undefined4 *param_1,undefined4 param_2)

{
  param_1[3] = param_2;
  *param_1 = 0xebba0;
  return;
}


/* address=000b65fc symbol=_ZN6s_listC1Ev */

void _ZN6s_listC1Ev(undefined4 *param_1)

{
  param_1[4] = 0;
  param_1[3] = param_1 + 4;
  param_1[5] = param_1 + 3;
  *param_1 = 0xebbbc;
  return;
}


/* address=000b661c symbol=_ZN12s_expression15read_expressionEPvRPKc */

void _ZN12s_expression15read_expressionEPvRPKc(undefined4 param_1,undefined4 *param_2)

{
  undefined4 local_18;
  int local_14;
  
  local_14 = __stack_chk_guard;
  local_18 = ralloc_strdup(param_1,*param_2);
  FUN_000b6664(param_1,param_2,&local_18);
  if (__stack_chk_guard != local_14) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b6664 symbol=FUN_000b6664 */

void FUN_000b6664(undefined4 param_1,char **param_2,long *param_3)

{
  char *pcVar1;
  size_t sVar2;
  int iVar3;
  undefined4 uVar4;
  long lVar5;
  undefined4 *puVar6;
  undefined1 *puVar7;
  undefined **ppuVar8;
  undefined4 *puVar9;
  undefined4 *puVar10;
  undefined4 *puVar11;
  char *pcVar12;
  char *local_30;
  char *local_2c;
  int local_28;
  
  local_28 = __stack_chk_guard;
  FUN_000b6a1c(param_2,param_3);
  pcVar12 = *param_2;
  sVar2 = strcspn(pcVar12,"( \v\t\r\n);");
  if (sVar2 != 0) {
    if ((sVar2 == 4) && (iVar3 = strncmp(pcVar12,"+INF",4), iVar3 == 0)) {
      puVar6 = (undefined4 *)ralloc_size(param_1,0x10);
      ralloc_set_destructor(puVar6,_ZN9exec_node18_ralloc_destructorEPv);
      lVar5 = 0x7f800000;
      ppuVar8 = &PTR__ZTV7s_float_000eca30;
LAB_000b674e:
      puVar7 = *ppuVar8;
      puVar6[3] = lVar5;
    }
    else {
      local_2c = (char *)0x0;
      uVar4 = glsl_strtof(pcVar12,&local_2c);
      if (local_2c == *param_2) {
        *(undefined *)(*param_3 + sVar2) = 0;
        puVar6 = (undefined4 *)ralloc_size(param_1,0x10);
        ralloc_set_destructor(puVar6,_ZN9exec_node18_ralloc_destructorEPv);
        lVar5 = *param_3;
        ppuVar8 = &PTR__ZTV8s_symbol_000eca28;
        goto LAB_000b674e;
      }
      local_30 = (char *)0x0;
      lVar5 = strtol(*param_2,&local_30,10);
      pcVar1 = local_2c;
      pcVar12 = local_30;
      puVar6 = (undefined4 *)ralloc_size(param_1,0x10);
      ralloc_set_destructor(puVar6,_ZN9exec_node18_ralloc_destructorEPv);
      if (pcVar1 <= pcVar12) {
        ppuVar8 = &PTR__ZTV5s_int_000eca34;
        goto LAB_000b674e;
      }
      puVar6[3] = uVar4;
      puVar7 = _ZTV7s_float;
    }
    *puVar6 = puVar7 + 8;
    *param_2 = *param_2 + sVar2;
    *param_3 = *param_3 + sVar2;
    if (puVar6 != (undefined4 *)0x0) goto LAB_000b6806;
  }
  FUN_000b6a1c(param_2,param_3);
  if (**param_2 == '(') {
    *param_2 = *param_2 + 1;
    *param_3 = *param_3 + 1;
    puVar9 = (undefined4 *)ralloc_size(param_1,0x18);
    ralloc_set_destructor(puVar9,_ZN9exec_node18_ralloc_destructorEPv);
    puVar6 = puVar9 + 4;
    *puVar6 = 0;
    puVar9[3] = puVar6;
    *puVar9 = 0xebbbc;
    puVar10 = puVar9 + 3;
    while( true ) {
      puVar9[5] = puVar10;
      iVar3 = FUN_000b6664(param_1,param_2,param_3);
      if (iVar3 == 0) break;
      puVar10 = (undefined4 *)(iVar3 + 4);
      *puVar10 = puVar6;
      puVar11 = (undefined4 *)puVar9[5];
      *(undefined4 **)(iVar3 + 8) = puVar11;
      *puVar11 = puVar10;
    }
    FUN_000b6a1c(param_2,param_3);
    if (**param_2 == ')') {
      *param_2 = *param_2 + 1;
      *param_3 = *param_3 + 1;
    }
    else {
      puts("Unclosed expression (check your parenthesis).");
    }
  }
LAB_000b6806:
  if (__stack_chk_guard - local_28 != 0) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(__stack_chk_guard - local_28);
  }
  return;
}


/* address=000b6894 symbol=_ZN5s_int5printEv */

void _ZN5s_int5printEv(int param_1)

{
  printf("%d",*(undefined4 *)(param_1 + 0xc));
  return;
}


/* address=000b68a0 symbol=_ZN7s_float5printEv */

void _ZN7s_float5printEv(int param_1,undefined4 param_2)

{
  printf("%f",param_2,SUB84((double)*(float *)(param_1 + 0xc),0),
         (int)((ulonglong)(double)*(float *)(param_1 + 0xc) >> 0x20));
  return;
}


/* address=000b68b8 symbol=_ZN8s_symbol5printEv */

void _ZN8s_symbol5printEv(int param_1)

{
  printf("%s",*(undefined4 *)(param_1 + 0xc));
  return;
}


/* address=000b68c4 symbol=_ZN6s_list5printEv */

void _ZN6s_list5printEv(int param_1)

{
  int **ppiVar1;
  int *piVar2;
  
  putchar(0x28);
  piVar2 = *(int **)(param_1 + 0xc);
  while( true ) {
    if (piVar2 != (int *)0x0) {
      piVar2 = piVar2 + -1;
    }
    ppiVar1 = (int **)(piVar2 + 1);
    if (*ppiVar1 == (int *)0x0) break;
    (**(code **)*piVar2)();
    piVar2 = *ppiVar1;
    if (*piVar2 != 0) {
      putchar(0x20);
      piVar2 = *ppiVar1;
    }
  }
  putchar(0x29);
  return;
}


/* address=000b6904 symbol=_ZN9s_pattern5matchEP12s_expression */

bool _ZN9s_pattern5matchEP12s_expression(char **param_1,int *param_2)

{
  int iVar1;
  code *pcVar2;
  
  switch(param_1[1]) {
  case (char *)0x0:
    goto switchD_000b6912_caseD_0;
  case (char *)0x1:
    pcVar2 = *(code **)(*param_2 + 4);
    break;
  case (char *)0x2:
    pcVar2 = *(code **)(*param_2 + 8);
    break;
  case (char *)0x3:
    pcVar2 = *(code **)(*param_2 + 0xc);
    break;
  case (char *)0x4:
    pcVar2 = *(code **)(*param_2 + 0x10);
    break;
  case (char *)0x5:
    if (((param_2 != (int *)0x0) && (iVar1 = (**(code **)(*param_2 + 8))(param_2), iVar1 == 1)) &&
       (iVar1 = strcmp((char *)param_2[3],*param_1), iVar1 == 0)) {
      return true;
    }
    return false;
  default:
    goto switchD_000b6912_caseD_6;
  }
  iVar1 = (*pcVar2)(param_2);
  if (iVar1 == 1) {
switchD_000b6912_caseD_0:
    *(int **)*param_1 = param_2;
  }
switchD_000b6912_caseD_6:
  return *(int **)*param_1 == param_2;
}


/* address=000b696c symbol=_Z7s_matchP12s_expressionjP9s_patternb */

uint _Z7s_matchP12s_expressionjP9s_patternb(int *param_1,uint param_2,int param_3,uint param_4)

{
  int iVar1;
  uint uVar2;
  int *piVar3;
  uint uVar4;
  bool bVar5;
  
  if ((param_1 == (int *)0x0) || (iVar1 = (**(code **)(*param_1 + 4))(param_1), iVar1 != 1)) {
LAB_000b69dc:
    uVar2 = 0;
  }
  else {
    iVar1 = param_1[3];
    if (iVar1 != 0) {
      iVar1 = iVar1 + -4;
    }
    piVar3 = (int *)(iVar1 + 4);
    uVar2 = param_2;
    if (param_2 != 0) {
      uVar2 = 1;
    }
    if (*piVar3 != 0) {
      uVar4 = 1;
      do {
        if ((uVar2 & 1) == 0) {
          return param_4;
        }
        if ((iVar1 == 0) || (iVar1 = _ZN9s_pattern5matchEP12s_expression(param_3), iVar1 == 0))
        goto LAB_000b69dc;
        iVar1 = *piVar3;
        bVar5 = uVar4 < param_2;
        uVar4 = uVar4 + 1;
        uVar2 = (uint)bVar5;
        if (iVar1 != 0) {
          iVar1 = iVar1 + -4;
        }
        param_3 = param_3 + 8;
        piVar3 = (int *)(iVar1 + 4);
      } while (*piVar3 != 0);
    }
    uVar2 = uVar2 ^ 1;
  }
  return uVar2;
}


/* address=000b69e8 symbol=_ZNK12s_expression7is_listEv */

undefined4 _ZNK12s_expression7is_listEv(void)

{
  return 0;
}


/* address=000b69ec symbol=_ZNK12s_expression9is_symbolEv */

undefined4 _ZNK12s_expression9is_symbolEv(void)

{
  return 0;
}


/* address=000b69f0 symbol=_ZNK8s_number9is_numberEv */

undefined4 _ZNK8s_number9is_numberEv(void)

{
  return 1;
}


/* address=000b69f4 symbol=_ZNK5s_int6is_intEv */

undefined4 _ZNK5s_int6is_intEv(void)

{
  return 1;
}


/* address=000b69f8 symbol=_ZN5s_int6fvalueEv */

float _ZN5s_int6fvalueEv(int param_1)

{
  return (float)(longlong)*(int *)(param_1 + 0xc);
}


/* address=000b6a06 symbol=_ZNK12s_expression6is_intEv */

undefined4 _ZNK12s_expression6is_intEv(void)

{
  return 0;
}


/* address=000b6a0a symbol=_ZN7s_float6fvalueEv */

undefined4 _ZN7s_float6fvalueEv(int param_1)

{
  return *(undefined4 *)(param_1 + 0xc);
}


/* address=000b6a0e symbol=_ZNK8s_symbol9is_symbolEv */

undefined4 _ZNK8s_symbol9is_symbolEv(void)

{
  return 1;
}


/* address=000b6a12 symbol=_ZNK12s_expression9is_numberEv */

undefined4 _ZNK12s_expression9is_numberEv(void)

{
  return 0;
}


/* address=000b6a16 symbol=_ZNK6s_list7is_listEv */

undefined4 _ZNK6s_list7is_listEv(void)

{
  return 1;
}


/* address=000b6a1c symbol=FUN_000b6a1c */

void FUN_000b6a1c(char **param_1,int *param_2)

{
  char cVar1;
  size_t sVar2;
  char *pcVar3;
  
  pcVar3 = *param_1;
  sVar2 = strspn(pcVar3," \v\t\r\n");
  *param_1 = pcVar3 + sVar2;
  *param_2 = sVar2 + *param_2;
  pcVar3 = *param_1;
  cVar1 = *pcVar3;
  while (cVar1 == ';') {
    sVar2 = strcspn(pcVar3,"\n");
    *param_1 = pcVar3 + sVar2;
    *param_2 = sVar2 + *param_2;
    pcVar3 = *param_1;
    sVar2 = strspn(pcVar3," \v\t\r\n");
    *param_1 = pcVar3 + sVar2;
    *param_2 = sVar2 + *param_2;
    pcVar3 = *param_1;
    cVar1 = *pcVar3;
  }
  return;
}


/* address=000b6a8c symbol=_mesa_reference_shader */

void _mesa_reference_shader(undefined4 param_1,undefined4 *param_2,undefined4 param_3)

{
  *param_2 = param_3;
  return;
}


/* address=000b6a90 symbol=_mesa_shader_debug */

void _mesa_shader_debug(void)

{
  return;
}


/* address=000b6a92 symbol=_mesa_new_shader */

void _mesa_new_shader(undefined4 param_1,int param_2,int param_3)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)rzalloc_size(0,0x170);
  if (piVar1 != (int *)0x0) {
    *piVar1 = param_3;
    if (param_3 == 0x91b9) {
      iVar2 = 3;
    }
    else if (param_3 == 0x8dd9) {
      iVar2 = 1;
    }
    else if (param_3 == 0x8b30) {
      iVar2 = 2;
    }
    else {
      iVar2 = 0;
    }
    piVar1[1] = iVar2;
    piVar1[2] = param_2;
    piVar1[4] = 1;
  }
  return;
}


/* address=000b6ad8 symbol=_Z30initialize_context_to_defaultsP10gl_context6gl_api */

void _Z30initialize_context_to_defaultsP10gl_context6gl_api(undefined4 *param_1,undefined4 param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar1 = __stack_chk_guard;
  __aeabi_memclr8(param_1,0x4a8);
  *(undefined2 *)(param_1 + 0x102) = 0x101;
  *(undefined2 *)(param_1 + 0x10e) = 0x101;
  *param_1 = param_2;
  *(undefined *)(param_1 + 0xff) = 1;
  *(undefined2 *)((int)param_1 + 0x3f1) = 1;
  *(undefined *)((int)param_1 + 0x3fe) = 1;
  *(undefined *)((int)param_1 + 0x407) = 1;
  *(undefined2 *)(param_1 + 0xfd) = 0x101;
  *(undefined *)((int)param_1 + 0x40e) = 1;
  *(undefined *)((int)param_1 + 0x411) = 1;
  *(undefined *)((int)param_1 + 0x41b) = 1;
  *(undefined *)((int)param_1 + 0x41e) = 1;
  *(undefined *)((int)param_1 + 0x42e) = 1;
  *(undefined *)((int)param_1 + 0x433) = 1;
  *(undefined *)((int)param_1 + 0x435) = 1;
  *(undefined *)((int)param_1 + 0x441) = 1;
  *(undefined *)((int)param_1 + 0x48a) = 1;
  *(undefined *)((int)param_1 + 0x446) = 1;
  *(undefined *)((int)param_1 + 0x46b) = 1;
  *(undefined *)((int)param_1 + 0x44e) = 1;
  *(undefined *)(param_1 + 0x115) = 1;
  *(undefined *)((int)param_1 + 0x459) = 1;
  *(undefined *)((int)param_1 + 0x45b) = 1;
  *(undefined *)(param_1 + 0x117) = 1;
  *(undefined *)(param_1 + 0x113) = 1;
  *(undefined *)(param_1 + 0x121) = 1;
  *(undefined *)(param_1 + 0xad) = 1;
  param_1[0x108] = 0x1010101;
  param_1[0xaa] = 0x78;
  param_1[0x1d] = 6;
  param_1[0x1e] = 8;
  param_1[0xc] = 2;
  param_1[10] = 2;
  param_1[0x3a] = 0x200;
  param_1[0x2b] = 0x10;
  param_1[0x3c] = 0x20;
  param_1[0x3f] = 0;
  param_1[0xa2] = 8;
  param_1[0x77] = 2;
  param_1[0x72] = 0x40;
  param_1[0x73] = 0x20;
  param_1[0xb] = 2;
  param_1[0x9e] = 1;
  param_1[0x93] = 0x10;
  param_1[0x8e] = 0x400;
  param_1[0x8f] = 0;
  param_1[0x90] = 0;
  param_1[0xd5] = 0xffff;
  param_1[0xd6] = 0xffff;
  param_1[0xd7] = 0xffff;
  param_1[0xd8] = 0x400;
  param_1[0xd9] = 0x400;
  param_1[0xda] = 0x40;
  param_1[0xdb] = 0x400;
  iVar2 = 0;
  do {
    iVar3 = iVar2 + 0x1c;
    *(undefined4 *)((int)param_1 + iVar2 + 0x37c) = 0;
    *(undefined4 *)((int)param_1 + iVar2 + 0x380) = 0;
    *(undefined4 *)((int)param_1 + iVar2 + 900) = 0;
    *(undefined4 *)((int)param_1 + iVar2 + 0x388) = 0xffffffff;
    *(undefined4 *)((int)param_1 + iVar2 + 0x38c) = 8;
    *(undefined *)((int)param_1 + iVar2 + 0x392) = 0;
    *(undefined4 *)((int)param_1 + iVar2 + 0x394) = 0;
    *(undefined2 *)((int)param_1 + iVar2 + 0x390) = 0;
    *(undefined *)((int)param_1 + iVar2 + 0x393) = 1;
    iVar2 = iVar3;
  } while (iVar3 != 0x70);
  if (__stack_chk_guard != iVar1) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b6c54 symbol=ZzNewAllocator */

int * ZzNewAllocator(void)

{
  int iVar1;
  int *piVar2;
  
  iVar1 = ZzMemoryIsSupportAllocateRXPage();
  if (iVar1 != 0) {
    piVar2 = (int *)zz_malloc_with_zero(0xc);
    iVar1 = zz_malloc_with_zero(0x10);
    *piVar2 = iVar1;
    if (iVar1 != 0) {
      piVar2[1] = 0;
      piVar2[2] = 4;
      return piVar2;
    }
  }
  return (int *)0x0;
}


/* address=000b6c84 symbol=ZzNewMemoryPage */

void ZzNewMemoryPage(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  
  iVar1 = ZzMemoryGetPageSzie();
  iVar2 = ZzMemoryAllocatePages(1);
  if (iVar2 != 0) {
    iVar3 = ZzMemoryProtectAsExecutable(iVar2,iVar1);
    if (iVar3 == 0) {
      fprintf((FILE *)sin,"[!] %s:%d:%s(): ZzMemoryProtectAsExecutable error at %p\n",
              "././src/allocator.c",0x21,"ZzNewMemoryPage",iVar2,param_3);
                    /* WARNING: Subroutine does not return */
      exit(1);
    }
    piVar4 = (int *)zz_malloc_with_zero(0x14);
    *piVar4 = iVar2;
    piVar4[1] = iVar2;
    piVar4[2] = iVar1;
    piVar4[3] = 0;
  }
  return;
}


/* address=000b6ce8 symbol=ZzNewNearMemoryPage */

void ZzNewNearMemoryPage(uint param_1,int param_2,undefined4 param_3)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  uint *puVar4;
  
  uVar1 = ZzMemoryGetPageSzie();
  uVar2 = ZzMemoryAllocateNearPages(param_1,param_2,1);
  if (uVar2 == 0) {
    return;
  }
  iVar3 = ZzMemoryProtectAsExecutable(uVar2,uVar1);
  if (iVar3 == 0) {
    fprintf((FILE *)sin,"[!] %s:%d:%s(): ZzMemoryProtectAsExecutable error at %p\n",
            "././src/allocator.c",0x3a,"ZzNewNearMemoryPage",uVar2,param_3);
                    /* WARNING: Subroutine does not return */
    exit(1);
  }
  puVar4 = (uint *)zz_malloc_with_zero(0x14);
  *puVar4 = uVar2;
  if ((param_1 < uVar2) && (param_1 + param_2 < uVar2 + uVar1)) {
    puVar4[2] = (param_1 + param_2) - uVar2;
  }
  else {
    puVar4[2] = uVar1;
    if ((uVar2 < param_1) && (param_1 = param_1 - param_2, uVar2 < param_1)) {
      puVar4[3] = param_1 - uVar2;
      puVar4[1] = param_1;
      goto LAB_000b6d66;
    }
  }
  puVar4[1] = uVar2;
  puVar4[3] = 0;
LAB_000b6d66:
  *(undefined *)(puVar4 + 4) = 0;
  return;
}


/* address=000b6d7c symbol=ZzNewNearCodeCave */

void ZzNewNearCodeCave(undefined4 param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  int *piVar2;
  
  ZzMemoryGetPageSzie();
  iVar1 = ZzMemorySearchCodeCave(param_1,param_2,param_3);
  if (iVar1 != 0) {
    piVar2 = (int *)zz_malloc_with_zero(0x14);
    piVar2[3] = 0;
    *piVar2 = iVar1;
    piVar2[1] = iVar1;
    piVar2[2] = param_3;
    *(undefined *)(piVar2 + 4) = 1;
  }
  return;
}


/* address=000b6dac symbol=ZzAddMemoryPage */

undefined4 ZzAddMemoryPage(void **param_1,undefined4 param_2)

{
  undefined4 uVar1;
  void *pvVar2;
  
  if (param_1 == (void **)0x0) {
LAB_000b6db2:
    uVar1 = 2;
  }
  else {
    if (param_1[2] <= param_1[1]) {
      pvVar2 = realloc(*param_1,(int)param_1[2] * 0x28);
      if (pvVar2 == (void *)0x0) goto LAB_000b6db2;
      *param_1 = pvVar2;
      param_1[2] = (void *)((int)param_1[2] << 1);
    }
    uVar1 = 1;
    pvVar2 = param_1[1];
    param_1[1] = (void *)((int)pvVar2 + 1);
    *(undefined4 *)((int)pvVar2 * 4 + (int)*param_1) = param_2;
  }
  return uVar1;
}


/* address=000b6dea symbol=ZzNewCodeSlice */

void ZzNewCodeSlice(int *param_1,uint param_2)

{
  int *piVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  int *piVar5;
  
  for (uVar2 = 0; uVar2 < (uint)param_1[1]; uVar2 = uVar2 + 1) {
    piVar5 = *(int **)(uVar2 * 4 + *param_1);
    uVar3 = piVar5[1] & 3;
    if (uVar3 != 0) {
      iVar4 = 4 - uVar3;
      piVar5[3] = piVar5[3] + iVar4;
      piVar5[1] = piVar5[1] + iVar4;
    }
    if ((*piVar5 != 0) && (*(char *)(piVar5 + 4) == '\0')) {
      if (param_2 < (uint)(piVar5[2] - piVar5[3])) goto LAB_000b6e58;
    }
  }
  piVar5 = (int *)ZzNewMemoryPage();
  ZzAddMemoryPage(param_1,piVar5);
  uVar2 = piVar5[1] & 3;
  if (uVar2 != 0) {
    iVar4 = 4 - uVar2;
    piVar5[3] = piVar5[3] + iVar4;
    piVar5[1] = piVar5[1] + iVar4;
  }
LAB_000b6e58:
  piVar1 = (int *)zz_malloc_with_zero(0xc);
  iVar4 = piVar5[1];
  piVar1[1] = param_2;
  *piVar1 = iVar4;
  piVar5[1] = piVar5[1] + param_2;
  piVar5[3] = piVar5[3] + param_2;
  return;
}


/* address=000b6e72 symbol=ZzNewNearCodeSlice */

void ZzNewNearCodeSlice(int *param_1,uint param_2,int param_3,uint param_4)

{
  int *piVar1;
  uint *puVar2;
  uint *puVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  int *piVar9;
  int local_24;
  
  uVar6 = param_2 + param_3;
  uVar7 = param_2 - param_3;
  for (local_24 = 0; local_24 != param_1[1]; local_24 = local_24 + 1) {
    piVar9 = *(int **)(local_24 * 4 + *param_1);
    iVar4 = *piVar9;
    if ((iVar4 != 0) && (*(char *)(piVar9 + 4) == '\0')) {
      uVar8 = piVar9[1];
      if (uVar8 < param_2) {
        if (uVar7 < uVar8) {
          uVar8 = piVar9[2] - piVar9[3];
joined_r0x000b6ee8:
          if (param_4 <= uVar8) goto LAB_000b6f10;
        }
        else if (((uVar8 < uVar7) && (uVar7 < (uint)(iVar4 + piVar9[2]))) &&
                (param_4 <= (param_3 + iVar4 + piVar9[2]) - param_2)) {
          puVar2 = (uint *)zz_malloc_with_zero(0x14);
          *puVar2 = uVar7;
          puVar2[2] = (*piVar9 + piVar9[2]) - uVar7;
          puVar2[3] = 0;
          puVar2[1] = uVar7;
          ZzAddMemoryPage(param_1,puVar2);
          piVar9[2] = uVar7 - *piVar9;
          puVar3 = (uint *)zz_malloc_with_zero(0xc);
          *(undefined *)((int)puVar3 + 9) = 0;
          uVar6 = puVar2[1];
          puVar3[1] = param_4;
          *puVar3 = uVar6;
          puVar2[1] = puVar2[1] + param_4;
          puVar2[3] = puVar2[3] + param_4;
          return;
        }
      }
      else {
        uVar5 = iVar4 + piVar9[2];
        if (uVar5 < uVar6) {
          uVar8 = piVar9[2] - piVar9[3];
          goto joined_r0x000b6ee8;
        }
        if (((uVar8 < uVar6) && (uVar6 < uVar5)) && (uVar6 - uVar8 <= param_4)) goto LAB_000b6f10;
      }
    }
  }
  piVar9 = (int *)ZzNewNearCodeCave(param_2,param_3,param_4);
  if (piVar9 != (int *)0x0) {
LAB_000b6f10:
    piVar1 = (int *)zz_malloc_with_zero(0xc);
    *(undefined *)((int)piVar1 + 9) = *(undefined *)(piVar9 + 4);
    iVar4 = piVar9[1];
    piVar1[1] = param_4;
    *piVar1 = iVar4;
    piVar9[1] = piVar9[1] + param_4;
    piVar9[3] = piVar9[3] + param_4;
  }
  return;
}


/* address=000b6f80 symbol=ZzInitializeInterceptor */

undefined4 ZzInitializeInterceptor(void)

{
  undefined *puVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  
  uVar4 = 7;
  if (g_interceptor == (undefined *)0x0) {
    puVar1 = (undefined *)zz_malloc_with_zero(0x18);
    *(undefined4 *)(puVar1 + 0xc) = 100;
    iVar2 = zz_malloc_with_zero(400);
    uVar4 = 2;
    *(int *)(puVar1 + 4) = iVar2;
    if (iVar2 != 0) {
      *(undefined4 *)(puVar1 + 8) = 0;
      g_interceptor = puVar1;
      iVar2 = ZzMemoryIsSupportAllocateRXPage();
      uVar4 = 4;
      *puVar1 = (char)iVar2;
      if (iVar2 != 0) {
        uVar3 = ZzNewAllocator();
        *(undefined4 *)(puVar1 + 0x14) = uVar3;
        uVar3 = ZzBuildInteceptorBackend();
        *(undefined4 *)(puVar1 + 0x10) = uVar3;
      }
    }
  }
  return uVar4;
}


/* address=000b6fd0 symbol=FUN_000b6fd0 */

undefined8 FUN_000b6fd0(char *param_1,undefined4 param_2,undefined4 param_3)

{
  char *pcVar1;
  
  pcVar1 = g_interceptor;
  if (((g_interceptor == (char *)0x0) &&
      (ZzInitializeInterceptor(), pcVar1 = g_interceptor, g_interceptor != (char *)0x0)) &&
     (*g_interceptor == '\0')) {
    param_1 = "ZzGlobalInterceptorInstance";
    fprintf((FILE *)sin,"[!] %s:%d:%s(): %s\n","././src/interceptor.c",0x33,
            "ZzGlobalInterceptorInstance",
            "current device does not support allocating r-x memory page!",param_3);
    pcVar1 = (char *)0x0;
  }
  return CONCAT44(param_1,pcVar1);
}


/* address=000b7034 symbol=ZzFindHookFunctionEntry */

int ZzFindHookFunctionEntry(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar1 = FUN_000b6fd0();
  if (iVar1 != 0) {
    for (iVar2 = 0; iVar2 != *(int *)(iVar1 + 8); iVar2 = iVar2 + 1) {
      iVar3 = *(int *)(iVar2 * 4 + *(int *)(iVar1 + 4));
      if ((iVar3 != 0) && (param_1 == *(int *)(iVar3 + 0x10))) {
        return iVar3;
      }
    }
    iVar1 = 0;
  }
  return iVar1;
}


/* address=000b7062 symbol=ZzAddHookFunctionEntry */

undefined4 ZzAddHookFunctionEntry(undefined4 param_1)

{
  int iVar1;
  undefined4 uVar2;
  void *pvVar3;
  int iVar4;
  
  iVar1 = FUN_000b6fd0();
  if (iVar1 == 0) {
LAB_000b706e:
    uVar2 = 2;
  }
  else {
    if (*(uint *)(iVar1 + 0xc) <= *(uint *)(iVar1 + 8)) {
      pvVar3 = realloc(*(void **)(iVar1 + 4),*(uint *)(iVar1 + 0xc) << 3);
      if (pvVar3 == (void *)0x0) goto LAB_000b706e;
      *(void **)(iVar1 + 4) = pvVar3;
      *(int *)(iVar1 + 0xc) = *(int *)(iVar1 + 0xc) << 1;
    }
    uVar2 = 1;
    iVar4 = *(int *)(iVar1 + 8);
    *(int *)(iVar1 + 8) = iVar4 + 1;
    *(undefined4 *)(iVar4 * 4 + *(int *)(iVar1 + 4)) = param_1;
  }
  return uVar2;
}


/* address=000b709e symbol=ZzInitializeHookFunctionEntry */

undefined8
ZzInitializeHookFunctionEntry
          (undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6,undefined param_7)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_000b6fd0();
  if (iVar1 != 0) {
    *param_1 = param_2;
    uVar2 = *(undefined4 *)(iVar1 + 8);
    *(undefined *)((int)param_1 + 9) = param_7;
    param_1[1] = uVar2;
    param_1[9] = param_4;
    *(undefined *)(param_1 + 2) = 0;
    param_1[0x1b] = iVar1;
    param_1[6] = param_5;
    param_1[4] = param_3;
    param_1[0xb] = 0;
    param_1[7] = param_6;
    param_1[0xd] = 0;
    param_1[0xe] = 0;
    param_1[0x10] = param_3;
    uVar2 = ZzThreadNewThreadLocalKeyPtr();
    param_1[3] = uVar2;
  }
  return CONCAT44(param_4,param_1);
}


/* address=000b70e0 symbol=ZzFreeHookFunctionEntry */

void ZzFreeHookFunctionEntry(int param_1)

{
  int iVar1;
  uint uVar2;
  int *piVar3;
  uint uVar4;
  int *piVar5;
  
  iVar1 = FUN_000b6fd0();
  if (iVar1 != 0) {
    piVar5 = *(int **)(iVar1 + 4);
    piVar3 = piVar5;
    for (uVar2 = 0; uVar4 = *(uint *)(iVar1 + 8), uVar2 < uVar4; uVar2 = uVar2 + 1) {
      if ((*piVar3 != 0) && (param_1 == *piVar3)) {
        *piVar3 = piVar5[uVar4 + 0x3fffffff];
      }
      piVar3 = piVar3 + 1;
    }
    *(uint *)(iVar1 + 8) = uVar4 - 1;
    ZzThreadFreeThreadLocalKeyPtr(*(undefined4 *)(param_1 + 0xc));
    ZzFreeTrampoline(param_1);
  }
  return;
}


/* address=000b7128 symbol=ZzBuildHook */

undefined4
ZzBuildHook(undefined4 param_1,undefined4 param_2,undefined4 *param_3,undefined4 param_4,
           undefined4 param_5,undefined param_6,undefined4 param_7)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  
  iVar1 = FUN_000b6fd0(param_1,param_2,param_5);
  uVar3 = 2;
  if (iVar1 != 0) {
    iVar2 = ZzFindHookFunctionEntry(param_1);
    uVar3 = 6;
    if (iVar2 == 0) {
      iVar2 = zz_malloc_with_zero(0x70);
      ZzInitializeHookFunctionEntry(iVar2,param_7,param_1,param_2,param_4,param_5,param_6);
      ZzBuildTrampoline(*(undefined4 *)(iVar1 + 0x10),iVar2);
      ZzAddHookFunctionEntry(iVar2);
      uVar3 = 3;
      if (param_3 != (undefined4 *)0x0) {
        *param_3 = *(undefined4 *)(iVar2 + 0x34);
        uVar3 = 3;
      }
    }
  }
  return uVar3;
}


/* address=000b7190 symbol=ZzBuildHookGOT */

undefined4
ZzBuildHookGOT(undefined4 param_1,undefined4 param_2,undefined4 *param_3,undefined4 param_4,
              undefined4 param_5)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  
  iVar1 = FUN_000b6fd0();
  uVar2 = 2;
  if (iVar1 != 0) {
    iVar3 = ZzFindHookFunctionEntry(param_1);
    uVar2 = 6;
    if (iVar3 == 0) {
      iVar3 = zz_malloc_with_zero(0x70);
      ZzInitializeHookFunctionEntry(iVar3,3,param_1,param_2,param_4,param_5,0);
      ZzBuildTrampoline(*(undefined4 *)(iVar1 + 0x10),iVar3);
      ZzAddHookFunctionEntry(iVar3);
      uVar2 = 3;
      if (param_3 != (undefined4 *)0x0) {
        *param_3 = *(undefined4 *)(iVar3 + 0x34);
      }
    }
  }
  return uVar2;
}


/* address=000b71f4 symbol=ZzEnableHook */

undefined4 ZzEnableHook(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  
  iVar1 = FUN_000b6fd0();
  uVar2 = 2;
  if (iVar1 != 0) {
    iVar3 = ZzFindHookFunctionEntry(param_1);
    if (iVar3 == 0) {
      fprintf((FILE *)sin,"[!] %s:%d:%s():  %p not build HookFunctionEntry!\n",
              "././src/interceptor.c",0x11c,"ZzEnableHook",param_1,param_3);
      uVar2 = 10;
    }
    else if (*(char *)(iVar3 + 8) == '\0') {
      *(undefined *)(iVar3 + 8) = 1;
      uVar2 = ZzActivateTrampoline(*(undefined4 *)(iVar1 + 0x10));
    }
    else {
      fprintf((FILE *)sin,"[!] %s:%d:%s(): %p already enable!\n","././src/interceptor.c",0x122,
              "ZzEnableHook",param_1,param_3);
      uVar2 = 8;
    }
  }
  return uVar2;
}


/* address=000b728c symbol=ZzDisableHook */

undefined4
ZzDisableHook(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  
  piVar1 = (int *)ZzFindHookFunctionEntry();
  iVar2 = FUN_000b6fd0();
  uVar3 = 2;
  if (iVar2 != 0) {
    if (*piVar1 == 3) {
      ZzDisableHookGOT(param_1);
    }
    else {
      ZzMemoryPatchCode(piVar1[0x10],piVar1 + 0x12,piVar1[0x11],*piVar1,param_4);
    }
    *(undefined *)(piVar1 + 2) = 0;
    uVar3 = 5;
  }
  return uVar3;
}


/* address=000b72c4 symbol=ZzHook */

undefined4 ZzHook(undefined4 param_1)

{
  ZzBuildHook(param_1);
  ZzEnableHook(param_1);
  return 1;
}


/* address=000b72f8 symbol=ZzHookPrePost */

void ZzHookPrePost(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  ZzBuildHook(param_1,0,0,param_2,param_3,0,1,param_4);
  ZzEnableHook(param_1);
  return;
}


/* address=000b7318 symbol=ZzHookReplace */

void ZzHookReplace(undefined4 param_1)

{
  ZzBuildHook(param_1);
  ZzEnableHook(param_1);
  return;
}


/* address=000b7336 symbol=ZzDynamicBinaryInstrumentation */

undefined4 ZzDynamicBinaryInstrumentation(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  
  iVar1 = FUN_000b6fd0();
  uVar2 = 2;
  if (iVar1 != 0) {
    iVar3 = ZzFindHookFunctionEntry(param_1);
    uVar2 = 6;
    if (iVar3 == 0) {
      iVar3 = zz_malloc_with_zero(0x70);
      ZzInitializeHookFunctionEntry(iVar3,4,param_1,0,0,0,1);
      *(undefined4 *)(iVar3 + 0x20) = param_2;
      ZzBuildTrampoline(*(undefined4 *)(iVar1 + 0x10),iVar3);
      ZzAddHookFunctionEntry(iVar3);
      uVar2 = ZzEnableHook(param_1);
    }
  }
  return uVar2;
}


/* address=000b738e symbol=ZzHookOneInstruction */

void ZzHookOneInstruction
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  ZzBuildHook(param_1,0,0,param_2,param_3,param_4,0);
  ZzEnableHook(param_1);
  return;
}


/* address=000b73b0 symbol=zz_malloc_with_zero */

void * zz_malloc_with_zero(size_t param_1)

{
  void *__s;
  
  __s = malloc(param_1);
  memset(__s,0,param_1);
  return __s;
}


/* address=000b73c6 symbol=ZzRuntimeCodePatch */

char ZzRuntimeCodePatch(void)

{
  int iVar1;
  
  iVar1 = ZzMemoryPatchCode();
  return (iVar1 == 0) + '\x01';
}


/* address=000b73d4 symbol=ZzGetCurrentThreadStack */

void ZzGetCurrentThreadStack(void)

{
  ZzThreadGetCurrentThreadData();
  return;
}


/* address=000b73dc symbol=ZzNewThreadStack */

undefined4 * ZzNewThreadStack(undefined4 param_1)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  puVar1 = (undefined4 *)zz_malloc_with_zero(0x14);
  puVar1[2] = 4;
  puVar2 = (undefined4 *)zz_malloc_with_zero(0x10);
  if (puVar2 != (undefined4 *)0x0) {
    puVar1[4] = puVar2;
    puVar1[3] = param_1;
    puVar1[1] = 0;
    uVar3 = ZzThreadGetCurrentThreadID();
    *puVar1 = uVar3;
    ZzThreadSetCurrentThreadData(param_1,puVar1);
    puVar2 = puVar1;
  }
  return puVar2;
}


/* address=000b7410 symbol=ZzNewCallStack */

void * ZzNewCallStack(void)

{
  void *pvVar1;
  void *pvVar2;
  
  pvVar1 = (void *)zz_malloc_with_zero(0x1c);
  *(undefined4 *)((int)pvVar1 + 0xc) = 4;
  pvVar2 = malloc(0x20);
  *(void **)((int)pvVar1 + 0x18) = pvVar2;
  *(undefined4 *)((int)pvVar1 + 8) = 0;
  if (pvVar2 != (void *)0x0) {
    pvVar2 = pvVar1;
  }
  return pvVar2;
}


/* address=000b7434 symbol=ZzFreeCallStack */

void ZzFreeCallStack(void *param_1)

{
  free(*(void **)((int)param_1 + 0x18));
  free(param_1);
  return;
}


/* address=000b7446 symbol=ZzPopCallStack */

int ZzPopCallStack(int param_1)

{
  int iVar1;
  
  iVar1 = *(int *)(param_1 + 4);
  if (iVar1 != 0) {
    *(int *)(param_1 + 4) = iVar1 + -1;
    iVar1 = *(int *)((iVar1 + -1) * 4 + *(int *)(param_1 + 0x10));
  }
  return iVar1;
}


/* address=000b745a symbol=ZzPushCallStack */

undefined4 ZzPushCallStack(int param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  void *pvVar2;
  undefined4 uVar3;
  int iVar4;
  
  if (param_1 == 0) {
LAB_000b7460:
    uVar1 = 0;
  }
  else {
    if (*(uint *)(param_1 + 8) <= *(uint *)(param_1 + 4)) {
      pvVar2 = realloc(*(void **)(param_1 + 0x10),*(uint *)(param_1 + 8) << 3);
      if (pvVar2 == (void *)0x0) goto LAB_000b7460;
      *(void **)(param_1 + 0x10) = pvVar2;
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) << 1;
    }
    uVar1 = 1;
    uVar3 = *(undefined4 *)(param_1 + 4);
    param_2[1] = param_1;
    *param_2 = uVar3;
    iVar4 = *(int *)(param_1 + 4);
    *(int *)(param_1 + 4) = iVar4 + 1;
    *(undefined4 **)(iVar4 * 4 + *(int *)(param_1 + 0x10)) = param_2;
  }
  return uVar1;
}


/* address=000b749a symbol=ZzGetCallStackData */

undefined8 ZzGetCallStackData(char *param_1,char *param_2)

{
  int iVar1;
  char *pcVar2;
  int iVar3;
  char **ppcVar4;
  int iVar5;
  
  pcVar2 = param_1;
  if (param_1 != (char *)0x0) {
    iVar3 = *(int *)(param_1 + 8);
    for (iVar5 = 0; iVar5 != iVar3; iVar5 = iVar5 + 1) {
      ppcVar4 = (char **)(*(int *)(param_1 + 0x18) + iVar5 * 8);
      iVar1 = strcmp(*ppcVar4,param_2);
      if (iVar1 == 0) {
        pcVar2 = ppcVar4[1];
        goto LAB_000b74ca;
      }
    }
    pcVar2 = (char *)0x0;
  }
LAB_000b74ca:
  return CONCAT44(param_1,pcVar2);
}


/* address=000b74cc symbol=ZzNewCallStackData */

int ZzNewCallStackData(int param_1)

{
  int iVar1;
  void *pvVar2;
  
  if (param_1 == 0) {
LAB_000b74d2:
    iVar1 = 0;
  }
  else {
    if (*(uint *)(param_1 + 0xc) <= *(uint *)(param_1 + 8)) {
      pvVar2 = realloc(*(void **)(param_1 + 0x18),*(uint *)(param_1 + 0xc) << 4);
      if (pvVar2 == (void *)0x0) goto LAB_000b74d2;
      *(void **)(param_1 + 0x18) = pvVar2;
      *(int *)(param_1 + 0xc) = *(int *)(param_1 + 0xc) << 1;
    }
    iVar1 = *(int *)(param_1 + 8);
    *(int *)(param_1 + 8) = iVar1 + 1;
    iVar1 = *(int *)(param_1 + 0x18) + iVar1 * 8;
  }
  return iVar1;
}


/* address=000b7502 symbol=ZzSetCallStackData */

undefined8 ZzSetCallStackData(int param_1,char *param_2,void *param_3,size_t param_4)

{
  char **ppcVar1;
  size_t sVar2;
  char *__dest;
  char *__dest_00;
  int iVar3;
  
  iVar3 = param_1;
  if (param_1 != 0) {
    ppcVar1 = (char **)ZzNewCallStackData();
    sVar2 = strlen(param_2);
    __dest = (char *)zz_malloc_with_zero(sVar2 + 1);
    sVar2 = strlen(param_2);
    strncpy(__dest,param_2,sVar2 + 1);
    __dest_00 = (char *)zz_malloc_with_zero(param_4);
    memcpy(__dest_00,param_3,param_4);
    iVar3 = 1;
    *ppcVar1 = __dest;
    ppcVar1[1] = __dest_00;
  }
  return CONCAT44(param_1,iVar3);
}


/* address=000b754c symbol=HookZzDebugInfoEnable */

void HookZzDebugInfoEnable(void)

{
  g_debug_info = 1;
  return;
}


/* address=000b755c symbol=HookZzDebugInfoIsEnable */

undefined HookZzDebugInfoIsEnable(void)

{
  return g_debug_info;
}


/* address=000b756c symbol=ZzObtainDebugInfo */

undefined1 * ZzObtainDebugInfo(void)

{
  return &g_debug_info;
}


/* address=000b7578 symbol=ZzBuildTrampoline */

undefined4 ZzBuildTrampoline(undefined4 param_1,int *param_2)

{
  int iVar1;
  
  iVar1 = *param_2;
  if (iVar1 == 0) {
    ZzPrepareTrampoline();
    ZzBuildEnterTrampoline(param_1,param_2);
    ZzBuildInsnLeaveTrampoline(param_1,param_2);
  }
  else {
    if (iVar1 == 1) {
      ZzPrepareTrampoline();
      ZzBuildEnterTrampoline(param_1,param_2);
      ZzBuildInvokeTrampoline(param_1,param_2);
LAB_000b75ce:
      ZzBuildLeaveTrampoline(param_1,param_2);
      return 0;
    }
    if (iVar1 == 2) {
      ZzPrepareTrampoline();
      ZzBuildEnterTransferTrampoline(param_1,param_2);
    }
    else {
      if (iVar1 == 3) {
        ZzBuildEnterTrampoline();
        goto LAB_000b75ce;
      }
      if (iVar1 != 4) {
        return 0;
      }
      ZzPrepareTrampoline();
      ZzBuildDynamicBinaryInstrumentationTrampoline(param_1,param_2);
    }
  }
  ZzBuildInvokeTrampoline(param_1,param_2);
  return 0;
}


/* address=000b75f4 symbol=ZzHookGOT */

undefined4 ZzHookGOT(void)

{
  return 1;
}


/* address=000b75f8 symbol=ZzDisableHookGOT */

undefined4 ZzDisableHookGOT(void)

{
  return 1;
}


/* address=000b75fc symbol=ZzMemoryGetPageSzie */

void ZzMemoryGetPageSzie(void)

{
  zz_posix_vm_get_page_size();
  return;
}


/* address=000b7604 symbol=ZzMemoryAllocatePages */

void ZzMemoryAllocatePages(void)

{
  zz_posix_vm_allocate_pages();
  return;
}


/* address=000b760c symbol=ZzMemoryAllocateNearPages */

void ZzMemoryAllocateNearPages(void)

{
  zz_posix_vm_allocate_near_pages();
  return;
}


/* address=000b7614 symbol=ZzMemoryAllocate */

void ZzMemoryAllocate(void)

{
  zz_posix_vm_allocate();
  return;
}


/* address=000b761c symbol=ZzMemoryPatchCode */

void ZzMemoryPatchCode(void)

{
  zz_posix_vm_patch_code();
  return;
}


/* address=000b7624 symbol=ZzMemoryProtectAsExecutable */

void ZzMemoryProtectAsExecutable(void)

{
  zz_posix_vm_protect_as_executable();
  return;
}


/* address=000b762c symbol=ZzMemoryProtectAsWritable */

void ZzMemoryProtectAsWritable(void)

{
  zz_posxi_vm_protect_as_writable();
  return;
}


/* address=000b7634 symbol=ZzMemorySearchCodeCave */

void ZzMemorySearchCodeCave(void)

{
  zz_linux_vm_search_code_cave();
  return;
}


/* address=000b763c symbol=ZzMemoryIsSupportAllocateRXPage */

undefined4 ZzMemoryIsSupportAllocateRXPage(void)

{
  return 1;
}


/* address=000b7640 symbol=ZzThreadNewThreadLocalKeyPtr */

void ZzThreadNewThreadLocalKeyPtr(void)

{
  zz_posix_thread_new_thread_local_key_ptr();
  return;
}


/* address=000b7648 symbol=ZzThreadFreeThreadLocalKeyPtr */

void ZzThreadFreeThreadLocalKeyPtr(void)

{
  zz_posix_thread_free_thread_local_key();
  return;
}


/* address=000b7650 symbol=ZzThreadGetCurrentThreadData */

void ZzThreadGetCurrentThreadData(void)

{
  zz_posix_thread_get_current_thread_data();
  return;
}


/* address=000b7658 symbol=ZzThreadSetCurrentThreadData */

void ZzThreadSetCurrentThreadData(void)

{
  zz_posix_thread_set_current_thread_data();
  return;
}


/* address=000b7660 symbol=ZzThreadGetCurrentThreadID */

void ZzThreadGetCurrentThreadID(void)

{
  zz_posix_get_current_thread_id();
  return;
}


/* address=000b7668 symbol=get_insn_sub */

uint get_insn_sub(uint param_1,uint param_2,uint param_3)

{
  return param_1 >> (param_2 & 0xff) & (1 << (param_3 & 0xff)) - 1U;
}


/* address=000b7676 symbol=insn_equal */

undefined8 insn_equal(uint param_1,char *param_2)

{
  char cVar1;
  size_t sVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  
  sVar2 = strlen(param_2);
  uVar6 = 0;
  uVar5 = 0;
  iVar3 = sVar2 - 1;
  do {
    uVar4 = (sVar2 - 1) - iVar3;
    if ((iVar3 < 0) || (iVar3 == -1)) {
      return CONCAT44(param_1,(uint)((uVar5 & param_1) == uVar6));
    }
    cVar1 = param_2[iVar3];
    if (cVar1 != 'x') {
      if (cVar1 == '0') {
        uVar4 = 1 << (uVar4 & 0xff);
      }
      else {
        if (cVar1 != '1') goto LAB_000b76b6;
        uVar4 = 1 << (uVar4 & 0xff);
        uVar6 = uVar6 | uVar4;
      }
      uVar5 = uVar5 | uVar4;
    }
LAB_000b76b6:
    iVar3 = iVar3 + -1;
  } while( true );
}


/* address=000b76c8 symbol=zz_arm_reader_new */

void zz_arm_reader_new(int param_1)

{
  int iVar1;
  
  iVar1 = zz_malloc_with_zero(0x418);
  *(int *)(iVar1 + 0x404) = param_1;
  *(int *)(iVar1 + 0x408) = param_1;
  *(int *)(iVar1 + 0x40c) = param_1 + 8;
  *(int *)(iVar1 + 0x410) = param_1 + 8;
  *(undefined4 *)(iVar1 + 0x414) = 0;
  *(undefined4 *)(iVar1 + 0x400) = 0;
  return;
}


/* address=000b7704 symbol=zz_arm_reader_reset */

void zz_arm_reader_reset(int param_1,int param_2)

{
  *(int *)(param_1 + 0x404) = param_2;
  *(int *)(param_1 + 0x408) = param_2;
  *(int *)(param_1 + 0x40c) = param_2 + 8;
  *(int *)(param_1 + 0x410) = param_2 + 8;
  *(undefined4 *)(param_1 + 0x414) = 0;
  *(undefined4 *)(param_1 + 0x400) = 0;
  return;
}


/* address=000b7734 symbol=zz_arm_reader_init */

void zz_arm_reader_init(void)

{
  zz_arm_reader_reset();
  return;
}


/* address=000b773c symbol=zz_arm_reader_free */

void zz_arm_reader_free(void *param_1)

{
  uint uVar1;
  
  uVar1 = 0;
  if (*(int *)((int)param_1 + 0x400) != 0) {
    for (; uVar1 < *(uint *)((int)param_1 + 0x400); uVar1 = uVar1 + 1) {
      free(*(void **)((int)param_1 + uVar1 * 4));
    }
  }
  free(param_1);
  return;
}


/* address=000b7768 symbol=zz_arm_reader_read_one_instruction */

void zz_arm_reader_read_one_instruction(int param_1)

{
  undefined4 *puVar1;
  int iVar2;
  
  puVar1 = (undefined4 *)zz_malloc_with_zero(0x20);
  *puVar1 = 0;
  puVar1[2] = *(undefined4 *)(param_1 + 0x408);
  puVar1[1] = *(undefined4 *)(param_1 + 0x410);
  puVar1[5] = **(undefined4 **)(param_1 + 0x408);
  *(undefined *)(puVar1 + 3) = 4;
  *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 4;
  *(uint *)(param_1 + 0x408) = (uint)*(byte *)(puVar1 + 3) + *(int *)(param_1 + 0x408);
  iVar2 = *(int *)(param_1 + 0x400);
  *(int *)(param_1 + 0x400) = iVar2 + 1;
  *(undefined4 **)(iVar2 * 4 + param_1) = puVar1;
  *(uint *)(param_1 + 0x414) = (uint)*(byte *)(puVar1 + 3) + *(int *)(param_1 + 0x414);
  return;
}


/* address=000b77bc symbol=GetARMInsnType */

int GetARMInsnType(undefined4 param_1)

{
  int iVar1;
  
  iVar1 = insn_equal(param_1,"xxxx0000100xxxxxxxxxxxxxxxx0xxxx");
  if ((iVar1 != 0) && (iVar1 = get_insn_sub(param_1,0x1c,4), iVar1 != 0xf)) {
    return 0;
  }
  iVar1 = insn_equal(param_1,"xxxx0101x0011111xxxxxxxxxxxxxxxx");
  if ((iVar1 != 0) && (iVar1 = get_insn_sub(param_1,0x1c,4), iVar1 != 0xf)) {
    return 1;
  }
  iVar1 = insn_equal(param_1,"xxxx001010001111xxxxxxxxxxxxxxxx");
  if ((iVar1 != 0) && (iVar1 = get_insn_sub(param_1,0x1c,4), iVar1 != 0xf)) {
    return 2;
  }
  iVar1 = insn_equal(param_1,"xxxx001001001111xxxxxxxxxxxxxxxx");
  if ((iVar1 != 0) && (iVar1 = get_insn_sub(param_1,0x1c,4), iVar1 != 0xf)) {
    return 3;
  }
  iVar1 = insn_equal(param_1,"xxxx1010xxxxxxxxxxxxxxxxxxxxxxxx");
  if ((iVar1 != 0) && (iVar1 = get_insn_sub(param_1,0x1c,4), iVar1 != 0xf)) {
    return 4;
  }
  iVar1 = insn_equal(param_1,"xxxx1011xxxxxxxxxxxxxxxxxxxxxxxx");
  if ((iVar1 == 0) || (iVar1 = get_insn_sub(param_1,0x1c,4), iVar1 == 0xf)) {
    iVar1 = insn_equal(param_1,"1111101xxxxxxxxxxxxxxxxxxxxxxxxx");
    iVar1 = 7 - (uint)(iVar1 != 0);
  }
  else {
    iVar1 = 5;
  }
  return iVar1;
}


/* address=000b78ac symbol=insn_is_thumb2 */

undefined4 insn_is_thumb2(undefined2 param_1)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = insn_equal(param_1,"11101xxxxxxxxxxx");
  if ((iVar1 == 0) && (iVar1 = insn_equal(param_1,"11111xxxxxxxxxxx"), iVar1 == 0)) {
    uVar2 = insn_equal(param_1,"11110xxxxxxxxxxx");
  }
  else {
    uVar2 = 1;
  }
  return uVar2;
}


/* address=000b78ec symbol=zz_thumb_reader_new */

void zz_thumb_reader_new(int param_1)

{
  int iVar1;
  
  iVar1 = zz_malloc_with_zero(0x418);
  *(int *)(iVar1 + 0x404) = param_1;
  *(int *)(iVar1 + 0x408) = param_1;
  *(int *)(iVar1 + 0x40c) = param_1 + 4;
  *(int *)(iVar1 + 0x410) = param_1 + 4;
  *(undefined4 *)(iVar1 + 0x414) = 0;
  *(undefined4 *)(iVar1 + 0x400) = 0;
  return;
}


/* address=000b7928 symbol=zz_thumb_reader_reset */

void zz_thumb_reader_reset(int param_1,int param_2)

{
  *(int *)(param_1 + 0x404) = param_2;
  *(int *)(param_1 + 0x408) = param_2;
  *(int *)(param_1 + 0x40c) = param_2 + 4;
  *(int *)(param_1 + 0x410) = param_2 + 4;
  *(undefined4 *)(param_1 + 0x414) = 0;
  *(undefined4 *)(param_1 + 0x400) = 0;
  return;
}


/* address=000b7958 symbol=zz_thumb_reader_init */

void zz_thumb_reader_init(void)

{
  zz_thumb_reader_reset();
  return;
}


/* address=000b7960 symbol=zz_thumb_reader_free */

void zz_thumb_reader_free(void *param_1)

{
  uint uVar1;
  
  uVar1 = 0;
  if (*(int *)((int)param_1 + 0x400) != 0) {
    for (; uVar1 < *(uint *)((int)param_1 + 0x400); uVar1 = uVar1 + 1) {
      free(*(void **)((int)param_1 + uVar1 * 4));
    }
  }
  free(param_1);
  return;
}


/* address=000b798c symbol=zz_thumb_reader_read_one_instruction */

undefined4 * zz_thumb_reader_read_one_instruction(int param_1)

{
  undefined2 uVar1;
  undefined4 *puVar2;
  int iVar3;
  
  puVar2 = (undefined4 *)zz_malloc_with_zero(0x20);
  *puVar2 = 1;
  puVar2[1] = *(undefined4 *)(param_1 + 0x410);
  puVar2[2] = *(undefined4 *)(param_1 + 0x408);
  puVar2[5] = **(undefined4 **)(param_1 + 0x408);
  iVar3 = insn_is_thumb2();
  uVar1 = (undefined2)puVar2[5];
  if (iVar3 == 0) {
    *(undefined *)(puVar2 + 3) = 2;
    *puVar2 = 1;
    *(undefined2 *)(puVar2 + 6) = uVar1;
    *(undefined2 *)((int)puVar2 + 0x1a) = 0;
  }
  else {
    *puVar2 = 2;
    *(undefined2 *)(puVar2 + 6) = uVar1;
    *(undefined *)(puVar2 + 3) = 4;
    *(short *)((int)puVar2 + 0x1a) = (short)((uint)puVar2[5] >> 0x10);
  }
  *(uint *)(param_1 + 0x410) = (uint)*(byte *)(puVar2 + 3) + *(int *)(param_1 + 0x410);
  *(uint *)(param_1 + 0x408) = (uint)*(byte *)(puVar2 + 3) + *(int *)(param_1 + 0x408);
  *(uint *)(param_1 + 0x414) = (uint)*(byte *)(puVar2 + 3) + *(int *)(param_1 + 0x414);
  iVar3 = *(int *)(param_1 + 0x400);
  *(int *)(param_1 + 0x400) = iVar3 + 1;
  *(undefined4 **)(iVar3 * 4 + param_1) = puVar2;
  return puVar2;
}


/* address=000b7a08 symbol=GetTHUMBInsnType */

int GetTHUMBInsnType(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  
  iVar1 = insn_is_thumb2();
  if ((iVar1 == 0) && (iVar1 = insn_equal(param_1,"1011x0x1xxxxxxxx"), iVar1 != 0)) {
    iVar1 = 0;
  }
  else {
    iVar1 = insn_is_thumb2(param_1);
    if ((iVar1 == 0) && (iVar1 = insn_equal(param_1,"01000100xxxxxxxx"), iVar1 != 0)) {
      return 1;
    }
    iVar1 = insn_is_thumb2(param_1);
    if ((iVar1 == 0) && (iVar1 = insn_equal(param_1,"01001xxxxxxxxxxx"), iVar1 != 0)) {
      return 2;
    }
    iVar1 = insn_is_thumb2(param_1);
    if (((iVar1 != 0) && (iVar1 = insn_equal(param_1,"11111000x1011111"), iVar1 != 0)) &&
       (iVar1 = insn_equal(param_2,"xxxxxxxxxxxxxxxx"), iVar1 != 0)) {
      return 3;
    }
    iVar1 = insn_is_thumb2(param_1);
    if ((iVar1 == 0) && (iVar1 = insn_equal(param_1,"10100xxxxxxxxxxx"), iVar1 != 0)) {
      return 4;
    }
    iVar1 = insn_is_thumb2(param_1);
    if (((iVar1 != 0) && (iVar1 = insn_equal(param_1,"11110x1010101111"), iVar1 != 0)) &&
       (iVar1 = insn_equal(param_2,"0xxxxxxxxxxxxxxx"), iVar1 != 0)) {
      return 5;
    }
    iVar1 = insn_is_thumb2(param_1);
    if (((iVar1 != 0) && (iVar1 = insn_equal(param_1,"11110x1000001111"), iVar1 != 0)) &&
       (iVar1 = insn_equal(param_2,"0xxxxxxxxxxxxxxx"), iVar1 != 0)) {
      return 6;
    }
    iVar1 = insn_is_thumb2(param_1);
    if (((iVar1 == 0) && (iVar1 = insn_equal(param_1,"1101xxxxxxxxxxxx"), iVar1 != 0)) &&
       (iVar1 = get_insn_sub(param_1,8,4), 1 < iVar1 - 0xeU)) {
      return 7;
    }
    iVar1 = insn_is_thumb2(param_1);
    if ((iVar1 == 0) && (iVar1 = insn_equal(param_1,"11100xxxxxxxxxxx"), iVar1 != 0)) {
      return 8;
    }
    iVar1 = insn_is_thumb2(param_1);
    if (((iVar1 != 0) && (iVar1 = insn_equal(param_1,"11110xxxxxxxxxxx"), iVar1 != 0)) &&
       (iVar1 = insn_equal(param_2,"10x0xxxxxxxxxxxx"), iVar1 != 0)) {
      return 9;
    }
    iVar1 = insn_is_thumb2(param_1);
    if (((iVar1 != 0) && (iVar1 = insn_equal(param_1,"11110xxxxxxxxxxx"), iVar1 != 0)) &&
       (iVar1 = insn_equal(param_2,"10x1xxxxxxxxxxxx"), iVar1 != 0)) {
      return 10;
    }
    iVar1 = insn_is_thumb2(param_1);
    if (((iVar1 != 0) && (iVar1 = insn_equal(param_1,"11110xxxxxxxxxxx"), iVar1 != 0)) &&
       (iVar1 = insn_equal(param_2,"11x1xxxxxxxxxxxx"), iVar1 != 0)) {
      return 0xb;
    }
    iVar1 = insn_is_thumb2(param_1);
    if ((iVar1 == 0) || (iVar1 = insn_equal(param_1,"11110xxxxxxxxxxx"), iVar1 == 0)) {
      iVar1 = 0xd;
    }
    else {
      iVar1 = insn_equal(param_2,"11x0xxxxxxxxxxxx");
      iVar1 = 0xd - (uint)(iVar1 != 0);
    }
  }
  return iVar1;
}


/* address=000b7c58 symbol=zz_arm_register_describe */

undefined8 zz_arm_register_describe(char *param_1,char **param_2,undefined4 param_3)

{
  char *pcVar1;
  char *pcVar2;
  
  if ((((param_1 < (char *)0xd) || (param_1 == (char *)0xd)) || (param_1 == (char *)0xe)) ||
     (param_1 == (char *)0xf)) {
    param_2[1] = param_1;
    param_2[2] = (char *)0x20;
    pcVar1 = param_1;
    pcVar2 = (char *)param_2;
  }
  else {
    pcVar1 = "zz_arm_register_describe";
    pcVar2 = "zz_arm64_register_describe error.";
    fprintf((FILE *)sin,"[!] %s:%d:%s(): %s\n","././src/platforms/arch-arm/regs-arm.c",0x21,
            "zz_arm_register_describe","zz_arm64_register_describe error.",param_3);
  }
  *param_2 = param_1;
  return CONCAT44(pcVar2,pcVar1);
}


/* address=000b7cb0 symbol=zz_arm_relocator_init */

void zz_arm_relocator_init(void *param_1,undefined4 param_2,undefined4 param_3)

{
  memset(param_1,0,0x1c20);
  *(undefined4 *)((int)param_1 + 0xc) = param_2;
  *(undefined4 *)((int)param_1 + 8) = param_3;
  return;
}


/* address=000b7cc8 symbol=zz_arm_relocator_free */

void zz_arm_relocator_free(void *param_1)

{
  zz_arm_reader_free(*(undefined4 *)((int)param_1 + 0xc));
  zz_arm_writer_free(*(undefined4 *)((int)param_1 + 8));
  free(param_1);
  return;
}


/* address=000b7ce0 symbol=zz_arm_relocator_reset */

void zz_arm_relocator_reset(int param_1,undefined4 param_2,undefined4 param_3)

{
  *(undefined4 *)(param_1 + 8) = param_3;
  *(undefined4 *)(param_1 + 0x10) = 0;
  *(undefined4 *)(param_1 + 0x14) = 0;
  *(undefined4 *)(param_1 + 0xc) = param_2;
  *(undefined4 *)(param_1 + 0x418) = 0;
  *(undefined4 *)(param_1 + 4) = 0;
  return;
}


/* address=000b7cf4 symbol=zz_arm_relocator_read_one */

void zz_arm_relocator_read_one(int param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  
  zz_arm_reader_read_one_instruction(*(undefined4 *)(param_1 + 0xc));
  *(int *)(param_1 + 0x10) = *(int *)(param_1 + 0x10) + 1;
  uVar2 = uRam00000008;
  uVar1 = uRam00000004;
  if (param_2 != (undefined4 *)0x0) {
    *param_2 = uRam00000000;
    param_2[1] = uVar1;
    param_2[2] = uVar2;
    uVar2 = uRam00000014;
    uVar1 = uRam00000010;
    param_2[3] = uRam0000000c;
    param_2[4] = uVar1;
    param_2[5] = uVar2;
    uVar1 = uRam0000001c;
    param_2[6] = uRam00000018;
    param_2[7] = uVar1;
  }
  return;
}


/* address=000b7d1c symbol=zz_arm_relocator_try_relocate */

undefined8 zz_arm_relocator_try_relocate(undefined4 param_1,uint param_2,uint *param_3)

{
  bool bVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  
  bVar1 = false;
  uVar2 = zz_arm_reader_new();
  uVar5 = 0;
  do {
    iVar3 = zz_arm_reader_read_one_instruction(uVar2);
    iVar4 = GetARMInsnType(*(undefined4 *)(iVar3 + 0x14));
    if ((iVar4 == 4) && (iVar4 = get_insn_sub(*(undefined4 *)(iVar3 + 0x14),0x1c), iVar4 == 0xe)) {
      bVar1 = true;
    }
    uVar5 = uVar5 + *(byte *)(iVar3 + 0xc);
  } while (uVar5 < param_2);
  if (bVar1) {
    *param_3 = uVar5;
  }
  zz_arm_reader_free(uVar2);
  return CONCAT44(param_3,param_2);
}


/* address=000b7d68 symbol=zz_arm_relocator_relocate_writer */

void zz_arm_relocator_relocate_writer(int param_1,int param_2)

{
  code *pcVar1;
  int *piVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  int *piVar6;
  int iVar7;
  
  if (*(int *)(param_1 + 0x418) != 0) {
    piVar2 = (int *)(param_1 + 0x18);
    for (uVar3 = 0; uVar3 < *(uint *)(param_1 + 0x418); uVar3 = uVar3 + 1) {
      uVar5 = **(uint **)(*piVar2 + 8);
      iVar4 = *(int *)(*(int *)(param_1 + 0xc) + 0x40c);
      if ((iVar4 - 8U < uVar5) && (uVar5 < (iVar4 + *(int *)(*(int *)(param_1 + 0xc) + 0x414)) - 8U)
         ) {
        iVar4 = 0;
        piVar6 = (int *)(param_1 + 0x41c);
        while( true ) {
          if (iVar4 == *(int *)(param_1 + 0x1c1c)) {
                    /* WARNING: Does not return */
            pcVar1 = (code *)software_udf(0xff,0xb7e02);
            (*pcVar1)();
          }
          iVar7 = *piVar6;
          piVar6 = piVar6 + 6;
          if (*(int *)(iVar7 + 4) - 8U == uVar5) break;
          iVar4 = iVar4 + 1;
        }
        **(uint **)(*piVar2 + 8) =
             (*(int *)(**(int **)(param_1 + iVar4 * 0x18 + 0x420) + 4) -
             *(int *)(*(int *)(param_1 + 8) + 0x40c)) + param_2;
      }
      piVar2 = piVar2 + 1;
    }
  }
  return;
}


/* address=000b7e18 symbol=zz_arm_relocator_register_literal_insn */

void zz_arm_relocator_register_literal_insn(int param_1,undefined4 param_2)

{
  int iVar1;
  
  iVar1 = *(int *)(param_1 + 0x418);
  *(int *)(param_1 + 0x418) = iVar1 + 1;
  *(undefined4 *)((iVar1 + 6) * 4 + param_1) = param_2;
  return;
}


/* address=000b7e2c symbol=zz_arm_relocator_write_one */

/* WARNING: Function: __gnu_thumb1_case_uqi replaced with injection: switch8_r0 */
/* WARNING (jumptable): Removing unreachable block (ram,0x000b7e98) */
/* WARNING: Removing unreachable block (ram,0x000b7e98) */

undefined4 zz_arm_relocator_write_one(int param_1)

{
  int iVar1;
  uint uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  int iVar9;
  
  iVar5 = *(int *)(param_1 + 0x14);
  iVar6 = *(int *)(param_1 + 0x1c1c);
  if (*(int *)(param_1 + 0x10) == iVar5) {
    return 0;
  }
  iVar9 = *(int *)(iVar5 * 4 + *(int *)(param_1 + 0xc));
  iVar7 = param_1 + iVar6 * 0x18;
  *(int *)(iVar7 + 0x41c) = iVar9;
  iVar1 = *(int *)(param_1 + 8);
  *(int *)(iVar7 + 0x420) = iVar1 + *(int *)(iVar1 + 0x400) * 4;
  *(undefined4 *)(iVar7 + 0x424) = *(undefined4 *)(iVar1 + 0x400);
  iVar1 = *(int *)(iVar1 + 0x414);
  *(int *)(param_1 + 0x14) = iVar5 + 1;
  *(int *)(param_1 + 0x1c1c) = iVar6 + 1;
  uVar2 = GetARMInsnType(*(undefined4 *)(iVar9 + 0x14));
  if (6 < uVar2) {
LAB_000b8064:
    zz_arm_writer_put_bytes(*(undefined4 *)(param_1 + 8),iVar9 + 0x14,*(undefined *)(iVar9 + 0xc));
    goto LAB_000b8034;
  }
  uVar8 = *(uint *)(iVar9 + 0x14);
  switch(uVar2) {
  case 0:
    iVar5 = get_insn_sub(uVar8,0x10,4);
    get_insn_sub(uVar8,0xc,4);
    get_insn_sub(uVar8,0,4);
    if (iVar5 == 0xf) {
      zz_arm_writer_put_push_reg(*(undefined4 *)(param_1 + 8),7);
      zz_arm_writer_put_ldr_b_reg_address(*(undefined4 *)(param_1 + 8),7,*(undefined4 *)(iVar9 + 4))
      ;
      zz_arm_writer_put_instruction(*(undefined4 *)(param_1 + 8),uVar8 & 0xfff0ffff | 0x70000);
      zz_arm_writer_put_pop_reg(*(undefined4 *)(param_1 + 8),7);
      goto LAB_000b8034;
    }
    goto LAB_000b8064;
  case 1:
    iVar7 = get_insn_sub(uVar8,0,0xc);
    iVar4 = get_insn_sub(uVar8,0x17,1);
    iVar9 = *(int *)(iVar9 + 4);
    iVar5 = -iVar7;
    if (iVar4 == 1) {
      iVar5 = iVar7;
    }
    uVar3 = get_insn_sub(uVar8,0xc,4);
    zz_arm_writer_put_ldr_b_reg_address(*(undefined4 *)(param_1 + 8),uVar3,iVar9 + iVar5);
    zz_arm_relocator_register_literal_insn
              (param_1,*(undefined4 *)
                        ((*(int *)(*(int *)(param_1 + 8) + 0x400) + -1) * 4 + *(int *)(param_1 + 8))
              );
    zz_arm_writer_put_ldr_reg_reg_imm(*(undefined4 *)(param_1 + 8),uVar3,uVar3,0);
    goto LAB_000b8034;
  case 2:
    iVar5 = get_insn_sub(uVar8,0,0xc);
    iVar5 = iVar5 + *(int *)(iVar9 + 4);
    break;
  case 3:
    iVar5 = get_insn_sub(uVar8,0,0xc);
    iVar5 = *(int *)(iVar9 + 4) - iVar5;
    break;
  case 4:
    iVar5 = get_insn_sub(uVar8,0,0x18);
    iVar7 = iVar5 * 4 + *(int *)(iVar9 + 4);
    zz_arm_writer_put_instruction(*(undefined4 *)(param_1 + 8),uVar8 & 0xff000000);
    zz_arm_writer_put_b_imm(*(undefined4 *)(param_1 + 8),4);
    goto code_r0x000b8016;
  case 5:
    iVar5 = get_insn_sub(uVar8,0,0x18);
    iVar7 = iVar5 * 4 + (*(uint *)(iVar9 + 4) & 0xfffffffc);
    zz_arm_writer_put_instruction(*(undefined4 *)(param_1 + 8),uVar8 & 0xf0000000 | 0xa000000);
    zz_arm_writer_put_b_imm(*(undefined4 *)(param_1 + 8),0);
    iVar5 = *(int *)(iVar9 + 4);
    goto code_r0x000b7ffa;
  case 6:
    iVar7 = get_insn_sub(uVar8,0x18,1);
    iVar4 = get_insn_sub(uVar8,0,0x18);
    iVar5 = *(int *)(iVar9 + 4);
    iVar7 = (iVar7 << 1 | iVar4 << 2) + iVar5;
code_r0x000b7ffa:
    zz_arm_writer_put_ldr_b_reg_address(*(undefined4 *)(param_1 + 8),0xe,iVar5 + -4);
    zz_arm_relocator_register_literal_insn
              (param_1,*(undefined4 *)
                        ((*(int *)(*(int *)(param_1 + 8) + 0x400) + -1) * 4 + *(int *)(param_1 + 8))
              );
code_r0x000b8016:
    zz_arm_writer_put_ldr_reg_address(*(undefined4 *)(param_1 + 8),0xf,iVar7);
    zz_arm_relocator_register_literal_insn
              (param_1,*(undefined4 *)
                        ((*(int *)(*(int *)(param_1 + 8) + 0x400) + -1) * 4 + *(int *)(param_1 + 8))
              );
    goto LAB_000b8034;
  }
  uVar3 = get_insn_sub(uVar8,0xc,4);
  zz_arm_writer_put_ldr_b_reg_address(*(undefined4 *)(param_1 + 8),uVar3,iVar5);
LAB_000b8034:
  iVar5 = *(int *)(param_1 + 8);
  param_1 = param_1 + iVar6 * 0x18;
  *(int *)(param_1 + 0x430) = *(int *)(iVar5 + 0x414) - iVar1;
  iVar5 = *(int *)(iVar5 + 0x400);
  *(int *)(param_1 + 0x428) = iVar5;
  *(int *)(param_1 + 0x42c) = iVar5 - *(int *)(param_1 + 0x424);
  return 1;
}


/* address=000b8084 symbol=zz_arm_relocator_write_all */

void zz_arm_relocator_write_all(undefined4 param_1)

{
  int iVar1;
  
  do {
    iVar1 = zz_arm_relocator_write_one(param_1);
  } while (iVar1 != 0);
  return;
}


/* address=000b8094 symbol=zz_thumb_relocator_init */

void zz_thumb_relocator_init(void *param_1,undefined4 param_2,undefined4 param_3)

{
  memset(param_1,0,0x1c20);
  *(undefined4 *)((int)param_1 + 0xc) = param_2;
  *(undefined4 *)((int)param_1 + 8) = param_3;
  return;
}


/* address=000b80ac symbol=zz_thumb_relocator_free */

void zz_thumb_relocator_free(void *param_1)

{
  zz_thumb_reader_free(*(undefined4 *)((int)param_1 + 0xc));
  zz_thumb_writer_free(*(undefined4 *)((int)param_1 + 8));
  free(param_1);
  return;
}


/* address=000b80c4 symbol=zz_thumb_relocator_reset */

void zz_thumb_relocator_reset(int param_1,undefined4 param_2,undefined4 param_3)

{
  *(undefined4 *)(param_1 + 8) = param_3;
  *(undefined4 *)(param_1 + 0x10) = 0;
  *(undefined4 *)(param_1 + 0x14) = 0;
  *(undefined4 *)(param_1 + 0xc) = param_2;
  *(undefined4 *)(param_1 + 0x418) = 0;
  *(undefined4 *)(param_1 + 4) = 0;
  return;
}


/* address=000b80d8 symbol=zz_thumb_relocator_read_one */

void zz_thumb_relocator_read_one(int param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  
  zz_thumb_reader_read_one_instruction(*(undefined4 *)(param_1 + 0xc));
  *(int *)(param_1 + 0x10) = *(int *)(param_1 + 0x10) + 1;
  uVar2 = uRam00000008;
  uVar1 = uRam00000004;
  if (param_2 != (undefined4 *)0x0) {
    *param_2 = uRam00000000;
    param_2[1] = uVar1;
    param_2[2] = uVar2;
    uVar2 = uRam00000014;
    uVar1 = uRam00000010;
    param_2[3] = uRam0000000c;
    param_2[4] = uVar1;
    param_2[5] = uVar2;
    uVar1 = uRam0000001c;
    param_2[6] = uRam00000018;
    param_2[7] = uVar1;
  }
  return;
}


/* address=000b8100 symbol=zz_thumb_relocator_try_relocate */

undefined8 zz_thumb_relocator_try_relocate(undefined4 param_1,uint param_2,uint *param_3)

{
  bool bVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  
  bVar1 = false;
  uVar2 = zz_thumb_reader_new();
  uVar5 = 0;
  do {
    iVar3 = zz_thumb_reader_read_one_instruction(uVar2);
    iVar4 = GetTHUMBInsnType(*(undefined2 *)(iVar3 + 0x18),*(undefined2 *)(iVar3 + 0x1a));
    if ((iVar4 == 8) || (iVar4 == 10)) {
      bVar1 = true;
    }
    uVar5 = uVar5 + *(byte *)(iVar3 + 0xc);
  } while (uVar5 < param_2);
  if (bVar1) {
    *param_3 = uVar5;
  }
  zz_thumb_reader_free(uVar2);
  return CONCAT44(param_3,param_2);
}


/* address=000b8144 symbol=zz_thumb_relocator_relocate_writer */

void zz_thumb_relocator_relocate_writer(int param_1,int param_2)

{
  code *pcVar1;
  int *piVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  int *piVar6;
  int iVar7;
  
  if (*(int *)(param_1 + 0x418) != 0) {
    piVar2 = (int *)(param_1 + 0x18);
    for (uVar3 = 0; uVar3 < *(uint *)(param_1 + 0x418); uVar3 = uVar3 + 1) {
      uVar5 = **(uint **)(*piVar2 + 8);
      iVar4 = *(int *)(*(int *)(param_1 + 0xc) + 0x40c);
      if ((iVar4 - 4U < uVar5) && (uVar5 < (iVar4 + *(int *)(*(int *)(param_1 + 0xc) + 0x414)) - 4U)
         ) {
        iVar4 = 0;
        piVar6 = (int *)(param_1 + 0x41c);
        while( true ) {
          if (iVar4 == *(int *)(param_1 + 0x1c1c)) {
                    /* WARNING: Does not return */
            pcVar1 = (code *)software_udf(0xff,0xb81dc);
            (*pcVar1)();
          }
          iVar7 = *piVar6;
          piVar6 = piVar6 + 6;
          if (*(int *)(iVar7 + 4) - 4U == uVar5) break;
          iVar4 = iVar4 + 1;
        }
        **(uint **)(*piVar2 + 8) =
             (*(int *)(**(int **)(param_1 + iVar4 * 0x18 + 0x420) + 4) -
             *(int *)(*(int *)(param_1 + 8) + 0x40c)) + param_2;
      }
      piVar2 = piVar2 + 1;
    }
  }
  return;
}


/* address=000b81f4 symbol=zz_thumb_relocator_register_literal_insn */

void zz_thumb_relocator_register_literal_insn(int param_1,undefined4 param_2)

{
  int iVar1;
  
  iVar1 = *(int *)(param_1 + 0x418);
  *(int *)(param_1 + 0x418) = iVar1 + 1;
  *(undefined4 *)((iVar1 + 6) * 4 + param_1) = param_2;
  return;
}


/* address=000b8208 symbol=zz_thumb_relocator_rewrite_LDR_literal_T1 */

undefined4 zz_thumb_relocator_rewrite_LDR_literal_T1(int param_1,int param_2)

{
  undefined2 uVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  
  uVar1 = *(undefined2 *)(param_2 + 0x18);
  iVar2 = get_insn_sub(uVar1,0,8);
  uVar4 = *(uint *)(param_2 + 4);
  uVar3 = get_insn_sub(uVar1,8);
  zz_thumb_writer_put_ldr_b_reg_address
            (*(undefined4 *)(param_1 + 8),uVar3,iVar2 * 4 + (uVar4 & 0xfffffffc));
  zz_thumb_relocator_register_literal_insn
            (param_1,*(undefined4 *)
                      ((*(int *)(*(int *)(param_1 + 8) + 0x400) + -1) * 4 + *(int *)(param_1 + 8)));
  zz_thumb_writer_put_ldr_reg_reg_offset(*(undefined4 *)(param_1 + 8),uVar3,uVar3,0);
  return 1;
}


/* address=000b825c symbol=zz_thumb_relocator_rewrite_LDR_literal_T2 */

undefined4
zz_thumb_relocator_rewrite_LDR_literal_T2
          (int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  
  iVar1 = get_insn_sub(*(undefined2 *)(param_2 + 0x1a),0,0xc,param_4,param_4);
  iVar2 = get_insn_sub(*(undefined2 *)(param_2 + 0x18),7,1);
  uVar4 = *(uint *)(param_2 + 4);
  if (iVar2 != 1) {
    iVar1 = -iVar1;
  }
  uVar3 = get_insn_sub(*(undefined2 *)(param_2 + 0x1a),0xc,4,3,param_4);
  zz_thumb_writer_put_ldr_b_reg_address
            (*(undefined4 *)(param_1 + 8),uVar3,iVar1 + (uVar4 & 0xfffffffc));
  zz_thumb_relocator_register_literal_insn
            (param_1,*(undefined4 *)
                      ((*(int *)(*(int *)(param_1 + 8) + 0x400) + -1) * 4 + *(int *)(param_1 + 8)));
  zz_thumb_writer_put_ldr_reg_reg_offset(*(undefined4 *)(param_1 + 8),uVar3,uVar3,0);
  return 1;
}


/* address=000b82c2 symbol=zz_thumb_relocator_rewrite_ADR_T1 */

undefined4 zz_thumb_relocator_rewrite_ADR_T1(int param_1,int param_2)

{
  undefined2 uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  
  uVar1 = *(undefined2 *)(param_2 + 0x18);
  iVar2 = get_insn_sub(uVar1,0,8);
  iVar4 = *(int *)(param_2 + 4);
  uVar3 = get_insn_sub(uVar1,8,3);
  zz_thumb_writer_put_ldr_b_reg_address(*(undefined4 *)(param_1 + 8),uVar3,iVar2 * 4 + iVar4);
  return 1;
}


/* address=000b82f2 symbol=zz_thumb_relocator_rewrite_ADR_T2 */

undefined8
zz_thumb_relocator_rewrite_ADR_T2(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined2 uVar1;
  undefined2 uVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  undefined4 uVar6;
  int iVar7;
  int iVar8;
  
  uVar1 = *(undefined2 *)(param_2 + 0x1a);
  uVar2 = *(undefined2 *)(param_2 + 0x18);
  iVar8 = param_1;
  uVar3 = get_insn_sub(uVar1,0,8,param_4,param_1,param_2,param_3);
  iVar4 = get_insn_sub(uVar1,0xc,3);
  iVar5 = get_insn_sub(uVar2,10,1);
  iVar7 = *(int *)(param_2 + 4);
  uVar6 = get_insn_sub(*(undefined2 *)(param_2 + 0x1a),8,4);
  zz_thumb_writer_put_ldr_b_reg_address
            (*(undefined4 *)(param_1 + 8),uVar6,iVar7 - (iVar4 << 8 | iVar5 << 0xb | uVar3));
  return CONCAT44(iVar8,1);
}


/* address=000b8344 symbol=zz_thumb_relocator_rewrite_ADR_T3 */

undefined8
zz_thumb_relocator_rewrite_ADR_T3(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined2 uVar1;
  undefined2 uVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  undefined4 uVar6;
  int iVar7;
  int iVar8;
  
  uVar1 = *(undefined2 *)(param_2 + 0x1a);
  uVar2 = *(undefined2 *)(param_2 + 0x18);
  iVar8 = param_1;
  uVar3 = get_insn_sub(uVar1,0,8,param_4,param_1,param_2,param_3);
  iVar4 = get_insn_sub(uVar1,0xc,3);
  iVar5 = get_insn_sub(uVar2,10,1);
  iVar7 = *(int *)(param_2 + 4);
  uVar6 = get_insn_sub(*(undefined2 *)(param_2 + 0x1a),8,4);
  zz_thumb_writer_put_ldr_b_reg_address
            (*(undefined4 *)(param_1 + 8),uVar6,(iVar4 << 8 | iVar5 << 0xb | uVar3) + iVar7);
  return CONCAT44(iVar8,1);
}


/* address=000b8396 symbol=zz_thumb_relocator_rewrite_B_T1 */

undefined4
zz_thumb_relocator_rewrite_B_T1(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  ushort uVar1;
  int iVar2;
  int iVar3;
  
  uVar1 = *(ushort *)(param_2 + 0x18);
  iVar2 = get_insn_sub(uVar1,0,8,param_4,param_4);
  iVar3 = *(int *)(param_2 + 4);
  if ((*(uint *)(*(int *)(param_1 + 8) + 0x410) & 3) != 0) {
    zz_thumb_writer_put_nop();
  }
  zz_thumb_writer_put_instruction(*(undefined4 *)(param_1 + 8),uVar1 & 0xff00);
  zz_thumb_writer_put_b_imm(*(undefined4 *)(param_1 + 8),6);
  zz_thumb_writer_put_ldr_reg_address(*(undefined4 *)(param_1 + 8),0xf,iVar3 + 1 + iVar2 * 2);
  zz_thumb_relocator_register_literal_insn
            (param_1,*(undefined4 *)
                      ((*(int *)(*(int *)(param_1 + 8) + 0x400) + -1) * 4 + *(int *)(param_1 + 8)));
  return 1;
}


/* address=000b83f4 symbol=zz_thumb_relocator_rewrite_B_T2 */

undefined4
zz_thumb_relocator_rewrite_B_T2(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  
  iVar1 = get_insn_sub(*(undefined2 *)(param_2 + 0x18),0,0xb,param_4,param_4);
  zz_thumb_writer_put_ldr_reg_address
            (*(undefined4 *)(param_1 + 8),0xf,*(int *)(param_2 + 4) + 1 + iVar1 * 2);
  zz_thumb_relocator_register_literal_insn
            (param_1,*(undefined4 *)
                      ((*(int *)(*(int *)(param_1 + 8) + 0x400) + -1) * 4 + *(int *)(param_1 + 8)));
  return 1;
}


/* address=000b842c symbol=zz_thumb_relocator_rewrite_B_T3 */

undefined8
zz_thumb_relocator_rewrite_B_T3(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  int iVar7;
  
  iVar1 = get_insn_sub(*(undefined2 *)(param_2 + 0x18),10,1,param_4,param_1,param_2,param_3);
  iVar2 = get_insn_sub(*(undefined2 *)(param_2 + 0x1a),0xb,1);
  iVar3 = get_insn_sub(*(undefined2 *)(param_2 + 0x1a),0xd,1);
  iVar4 = get_insn_sub(*(undefined2 *)(param_2 + 0x18),0,6);
  iVar5 = get_insn_sub(*(undefined2 *)(param_2 + 0x1a),0,0xb);
  uVar6 = iVar1 << 0x14;
  iVar7 = *(int *)(param_2 + 4);
  if ((*(uint *)(*(int *)(param_1 + 8) + 0x410) & 3) == 0) {
    zz_thumb_writer_put_nop();
  }
  zz_thumb_writer_put_instruction(*(undefined4 *)(param_1 + 8),*(ushort *)(param_2 + 0x18) & 0xfbc0)
  ;
  zz_thumb_writer_put_instruction
            (*(undefined4 *)(param_1 + 8),*(ushort *)(param_2 + 0x1a) & 0xd000 | 1);
  zz_thumb_writer_put_b_imm(*(undefined4 *)(param_1 + 8),6);
  zz_thumb_writer_put_ldr_reg_address
            (*(undefined4 *)(param_1 + 8),0xf,
             iVar7 + 1 + (iVar3 << 0x12 | iVar4 << 0xc | iVar5 << 1 | iVar2 << 0x13 | uVar6));
  return CONCAT44(iVar1,1);
}


/* address=000b84d0 symbol=zz_thumb_relocator_rewrite_B_T4 */

undefined8
zz_thumb_relocator_rewrite_B_T4(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  
  uVar1 = get_insn_sub(*(undefined2 *)(param_2 + 0x18),0x1a,1,param_4,param_1,param_2,param_3);
  uVar2 = get_insn_sub(*(undefined2 *)(param_2 + 0x1a),0xb,1);
  uVar3 = get_insn_sub(*(undefined2 *)(param_2 + 0x1a),0xd,1);
  iVar4 = get_insn_sub(*(undefined2 *)(param_2 + 0x18),0,10);
  iVar5 = get_insn_sub(*(undefined2 *)(param_2 + 0x1a),0,0xb);
  zz_thumb_writer_put_ldr_reg_address
            (*(undefined4 *)(param_1 + 8),0xf,
             *(int *)(param_2 + 4) + 1 +
             ((~(uVar2 ^ uVar1) & 1) << 0x13 |
             uVar1 << 0x14 | iVar5 << 1 | iVar4 << 0xc | (~(uVar3 ^ uVar1) & 1) << 0x12));
  zz_thumb_relocator_register_literal_insn
            (param_1,*(undefined4 *)
                      ((*(int *)(*(int *)(param_1 + 8) + 0x400) + -1) * 4 + *(int *)(param_1 + 8)));
  return CONCAT44(uVar2,1);
}


/* address=000b8560 symbol=zz_thumb_relocator_rewrite_BLBLX_immediate_T1 */

undefined8
zz_thumb_relocator_rewrite_BLBLX_immediate_T1
          (int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  
  uVar1 = get_insn_sub(*(undefined2 *)(param_2 + 0x18),10,1,param_4,param_1,param_2,param_3);
  uVar2 = get_insn_sub(*(undefined2 *)(param_2 + 0x1a),0xb,1);
  uVar3 = get_insn_sub(*(undefined2 *)(param_2 + 0x1a),0xd,1);
  iVar4 = get_insn_sub(*(undefined2 *)(param_2 + 0x18),0,10);
  iVar5 = get_insn_sub(*(undefined2 *)(param_2 + 0x1a),0,0xb);
  uVar1 = uVar1 << 0x14 | iVar5 << 1 | iVar4 << 0xc | (~(uVar3 ^ uVar1) & 1) << 0x12 |
          (~(uVar2 ^ uVar1) & 1) << 0x13;
  iVar4 = *(int *)(param_2 + 4) + 1;
  zz_thumb_writer_put_ldr_b_reg_address(*(undefined4 *)(param_1 + 8),0xe,iVar4);
  zz_thumb_relocator_register_literal_insn
            (param_1,*(undefined4 *)
                      ((*(int *)(*(int *)(param_1 + 8) + 0x400) + -1) * 4 + *(int *)(param_1 + 8)));
  zz_thumb_relocator_register_literal_insn
            (param_1,*(undefined4 *)
                      ((*(int *)(*(int *)(param_1 + 8) + 0x400) + -1) * 4 + *(int *)(param_1 + 8)));
  zz_thumb_writer_put_ldr_reg_address(*(undefined4 *)(param_1 + 8),0xf,uVar1 + iVar4);
  return CONCAT44(uVar1,1);
}


/* address=000b860e symbol=zz_thumb_relocator_rewrite_BLBLX_T2 */

undefined4 zz_thumb_relocator_rewrite_BLBLX_T2(int param_1,int param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  
  uVar1 = get_insn_sub(*(undefined2 *)(param_2 + 0x18),10,1);
  uVar2 = get_insn_sub(*(undefined2 *)(param_2 + 0x1a),0xb,1);
  uVar3 = get_insn_sub(*(undefined2 *)(param_2 + 0x1a),0xd,1);
  iVar4 = get_insn_sub(*(undefined2 *)(param_2 + 0x18),0,10);
  iVar5 = get_insn_sub(*(undefined2 *)(param_2 + 0x1a),1,10);
  get_insn_sub(*(undefined2 *)(param_2 + 0x1a),0,1);
  uVar6 = *(uint *)(param_2 + 4);
  zz_thumb_writer_put_ldr_b_reg_address(*(undefined4 *)(param_1 + 8),0xe,uVar6 + 1);
  zz_thumb_relocator_register_literal_insn
            (param_1,*(undefined4 *)
                      ((*(int *)(*(int *)(param_1 + 8) + 0x400) + -1) * 4 + *(int *)(param_1 + 8)));
  zz_thumb_writer_put_ldr_reg_address
            (*(undefined4 *)(param_1 + 8),0xf,
             (iVar4 << 0xc | iVar5 << 2 | uVar1 << 0x14 | (~(uVar1 ^ uVar3) & 1) << 0x12 |
             (~(uVar2 ^ uVar1) & 1) << 0x13) + (uVar6 & 0xfffffffc));
  zz_thumb_relocator_register_literal_insn
            (param_1,*(undefined4 *)
                      ((*(int *)(*(int *)(param_1 + 8) + 0x400) + -1) * 4 + *(int *)(param_1 + 8)));
  return 1;
}


/* address=000b86d8 symbol=zz_thumb_relocator_write_one */

/* WARNING: Function: __gnu_thumb1_case_uqi replaced with injection: switch8_r0 */
/* WARNING (jumptable): Removing unreachable block (ram,0x000b873c) */
/* WARNING: Removing unreachable block (ram,0x000b873c) */

undefined4 zz_thumb_relocator_write_one(int param_1)

{
  ushort uVar1;
  short sVar2;
  undefined4 uVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  
  iVar7 = *(int *)(param_1 + 0x1c1c);
  iVar8 = *(int *)(param_1 + 0x14);
  if (*(int *)(param_1 + 0x10) == iVar8) {
    return 0;
  }
  iVar9 = *(int *)(iVar8 * 4 + *(int *)(param_1 + 0xc));
  iVar10 = param_1 + iVar7 * 0x18;
  *(int *)(iVar10 + 0x41c) = iVar9;
  iVar6 = *(int *)(param_1 + 8);
  *(int *)(iVar10 + 0x420) = iVar6 + *(int *)(iVar6 + 0x400) * 4;
  *(undefined4 *)(iVar10 + 0x424) = *(undefined4 *)(iVar6 + 0x400);
  *(int *)(param_1 + 0x14) = iVar8 + 1;
  *(int *)(param_1 + 0x1c1c) = iVar7 + 1;
  uVar3 = GetTHUMBInsnType(*(undefined2 *)(iVar9 + 0x18),*(undefined2 *)(iVar9 + 0x1a));
  switch(uVar3) {
  case 0:
    uVar1 = *(ushort *)(iVar9 + 0x18);
    get_insn_sub(uVar1,0xb,1);
    uVar4 = get_insn_sub(uVar1,9,1);
    uVar5 = get_insn_sub(uVar1,3,5);
    get_insn_sub(uVar1,0,3);
    iVar8 = *(int *)(iVar9 + 4);
    if ((*(uint *)(*(int *)(param_1 + 8) + 0x410) & 3) != 0) {
      zz_thumb_writer_put_nop();
    }
    zz_thumb_writer_put_instruction(*(undefined4 *)(param_1 + 8),uVar1 & 0xfd07);
    zz_thumb_writer_put_b_imm(*(undefined4 *)(param_1 + 8),6);
    zz_thumb_writer_put_ldr_reg_address
              (*(undefined4 *)(param_1 + 8),0xf,
               iVar8 + 1 + ((uVar4 & 0xffff) << 6 | (uVar5 & 0xffff) << 1));
    zz_thumb_relocator_register_literal_insn
              (param_1,*(undefined4 *)
                        ((*(int *)(*(int *)(param_1 + 8) + 0x400) + -1) * 4 + *(int *)(param_1 + 8))
              );
    goto code_r0x000b88a2;
  case 1:
    uVar1 = *(ushort *)(iVar9 + 0x18);
    sVar2 = get_insn_sub(uVar1,3,4);
    get_insn_sub(uVar1,0,3);
    get_insn_sub(uVar1,7,1);
    if (sVar2 == 0xf) {
      zz_thumb_writer_put_push_reg(*(undefined4 *)(param_1 + 8),7);
      zz_thumb_writer_put_ldr_b_reg_address
                (*(undefined4 *)(param_1 + 8),7,*(undefined4 *)(iVar9 + 4));
      zz_thumb_writer_put_instruction(*(undefined4 *)(param_1 + 8),uVar1 & 0xff87 | 0x38);
      zz_thumb_writer_put_pop_reg(*(undefined4 *)(param_1 + 8),7);
      goto code_r0x000b88a2;
    }
    goto switchD_000b873c_caseD_d;
  case 2:
    iVar8 = zz_thumb_relocator_rewrite_LDR_literal_T1(param_1,iVar9);
    break;
  case 3:
    iVar8 = zz_thumb_relocator_rewrite_LDR_literal_T2(param_1,iVar9);
    break;
  case 4:
    iVar8 = zz_thumb_relocator_rewrite_ADR_T1(param_1,iVar9);
    break;
  case 5:
    iVar8 = zz_thumb_relocator_rewrite_ADR_T2(param_1,iVar9);
    break;
  case 6:
    iVar8 = zz_thumb_relocator_rewrite_ADR_T3(param_1,iVar9);
    break;
  case 7:
    iVar8 = zz_thumb_relocator_rewrite_B_T1(param_1,iVar9);
    break;
  case 8:
    iVar8 = zz_thumb_relocator_rewrite_B_T2(param_1,iVar9);
    break;
  case 9:
    iVar8 = zz_thumb_relocator_rewrite_B_T3(param_1,iVar9);
    break;
  case 10:
    iVar8 = zz_thumb_relocator_rewrite_B_T4(param_1,iVar9);
    break;
  case 0xb:
    iVar8 = zz_thumb_relocator_rewrite_BLBLX_immediate_T1(param_1,iVar9);
    break;
  case 0xc:
    iVar8 = zz_thumb_relocator_rewrite_BLBLX_T2(param_1,iVar9);
    break;
  default:
    goto switchD_000b873c_caseD_d;
  }
  if (iVar8 == 0) {
switchD_000b873c_caseD_d:
    zz_thumb_writer_put_bytes(*(undefined4 *)(param_1 + 8),iVar9 + 0x14,*(undefined *)(iVar9 + 0xc))
    ;
  }
code_r0x000b88a2:
  iVar8 = *(int *)(*(int *)(param_1 + 8) + 0x400);
  param_1 = param_1 + iVar7 * 0x18;
  *(int *)(param_1 + 0x428) = iVar8;
  *(int *)(param_1 + 0x42c) = iVar8 - *(int *)(param_1 + 0x424);
  return 1;
}


/* address=000b88d4 symbol=zz_thumb_relocator_write_all */

void zz_thumb_relocator_write_all(undefined4 param_1)

{
  int iVar1;
  
  do {
    iVar1 = zz_thumb_relocator_write_one(param_1);
  } while (iVar1 != 0);
  return;
}


/* address=000b88e4 symbol=zz_arm_writer_new */

void zz_arm_writer_new(void)

{
  int iVar1;
  
  iVar1 = zz_malloc_with_zero(0x418);
  *(undefined4 *)(iVar1 + 0x408) = 0;
  *(undefined4 *)(iVar1 + 0x404) = 0;
  *(undefined4 *)(iVar1 + 0x410) = 8;
  *(undefined4 *)(iVar1 + 0x40c) = 8;
  *(undefined4 *)(iVar1 + 0x414) = 0;
  *(undefined4 *)(iVar1 + 0x400) = 0;
  return;
}


/* address=000b8920 symbol=zz_arm_writer_reset */

void zz_arm_writer_reset(int param_1,uint param_2,int param_3)

{
  uint uVar1;
  
  *(uint *)(param_1 + 0x408) = param_2 & 0xfffffffc;
  uVar1 = 0;
  *(uint *)(param_1 + 0x404) = param_2 & 0xfffffffc;
  *(int *)(param_1 + 0x410) = param_3 + 8;
  *(int *)(param_1 + 0x40c) = param_3 + 8;
  *(undefined4 *)(param_1 + 0x414) = 0;
  if (*(int *)(param_1 + 0x400) != 0) {
    for (; uVar1 < *(uint *)(param_1 + 0x400); uVar1 = uVar1 + 1) {
      free(*(void **)(param_1 + uVar1 * 4));
    }
  }
  *(undefined4 *)(param_1 + 0x400) = 0;
  return;
}


/* address=000b8974 symbol=zz_arm_writer_init */

void zz_arm_writer_init(void)

{
  zz_arm_writer_reset();
  return;
}


/* address=000b897c symbol=zz_arm_writer_reset_without_align */

void zz_arm_writer_reset_without_align(int param_1,uint param_2,int param_3)

{
  uint uVar1;
  
  *(uint *)(param_1 + 0x408) = param_2 & 0xfffffffc;
  uVar1 = 0;
  *(uint *)(param_1 + 0x404) = param_2 & 0xfffffffc;
  *(int *)(param_1 + 0x410) = param_3 + 8;
  *(int *)(param_1 + 0x40c) = param_3 + 8;
  *(undefined4 *)(param_1 + 0x414) = 0;
  if (*(int *)(param_1 + 0x400) != 0) {
    for (; uVar1 < *(uint *)(param_1 + 0x400); uVar1 = uVar1 + 1) {
      free(*(void **)(param_1 + uVar1 * 4));
    }
  }
  *(undefined4 *)(param_1 + 0x400) = 0;
  return;
}


/* address=000b89d0 symbol=zz_arm_writer_free */

void zz_arm_writer_free(void *param_1)

{
  uint uVar1;
  
  uVar1 = 0;
  if (*(int *)((int)param_1 + 0x400) != 0) {
    for (; uVar1 < *(uint *)((int)param_1 + 0x400); uVar1 = uVar1 + 1) {
      free(*(void **)((int)param_1 + uVar1 * 4));
    }
  }
  free(param_1);
  return;
}


/* address=000b89fc symbol=zz_arm_writer_near_jump_range_size */

undefined4 zz_arm_writer_near_jump_range_size(void)

{
  return 0x2000000;
}


/* address=000b8a04 symbol=zz_arm_writer_put_bytes */

void zz_arm_writer_put_bytes(int param_1,void *param_2,size_t param_3)

{
  undefined4 *puVar1;
  int iVar2;
  
  memcpy(*(void **)(param_1 + 0x408),param_2,param_3);
  *(size_t *)(param_1 + 0x408) = param_3 + *(int *)(param_1 + 0x408);
  *(size_t *)(param_1 + 0x410) = param_3 + *(int *)(param_1 + 0x410);
  *(size_t *)(param_1 + 0x414) = param_3 + *(int *)(param_1 + 0x414);
  puVar1 = (undefined4 *)zz_malloc_with_zero(0x20);
  puVar1[1] = *(int *)(param_1 + 0x410) - param_3;
  iVar2 = *(int *)(param_1 + 0x408);
  *(char *)(puVar1 + 3) = (char)param_3;
  puVar1[2] = iVar2 - param_3;
  puVar1[5] = 0;
  *(undefined2 *)(puVar1 + 6) = 0;
  *(undefined2 *)((int)puVar1 + 0x1a) = 0;
  *puVar1 = 3;
  iVar2 = *(int *)(param_1 + 0x400);
  *(int *)(param_1 + 0x400) = iVar2 + 1;
  *(undefined4 **)(iVar2 * 4 + param_1) = puVar1;
  return;
}


/* address=000b8a60 symbol=zz_arm_writer_put_instruction */

void zz_arm_writer_put_instruction(int param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  int iVar2;
  
  **(undefined4 **)(param_1 + 0x408) = param_2;
  *(int *)(param_1 + 0x408) = *(int *)(param_1 + 0x408) + 4;
  *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 4;
  *(int *)(param_1 + 0x414) = *(int *)(param_1 + 0x414) + 4;
  puVar1 = (undefined4 *)zz_malloc_with_zero(0x20);
  puVar1[1] = *(int *)(param_1 + 0x410) + -4;
  iVar2 = *(int *)(param_1 + 0x408);
  puVar1[5] = param_2;
  puVar1[2] = iVar2 + -4;
  *(undefined *)(puVar1 + 3) = 4;
  *(undefined2 *)(puVar1 + 6) = 0;
  *(undefined2 *)((int)puVar1 + 0x1a) = 0;
  *puVar1 = 0;
  iVar2 = *(int *)(param_1 + 0x400);
  *(int *)(param_1 + 0x400) = iVar2 + 1;
  *(undefined4 **)(iVar2 * 4 + param_1) = puVar1;
  return;
}


/* address=000b8abc symbol=zz_arm_writer_put_b_imm */

void zz_arm_writer_put_b_imm(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  zz_arm_writer_put_instruction
            (param_1,(uint)(param_2 << 6) >> 8 | 0xea000000,param_3,0xea000000,param_4);
  return;
}


/* address=000b8ad0 symbol=zz_arm_writer_put_ldr_reg_reg_imm_A1 */

void zz_arm_writer_put_ldr_reg_reg_imm_A1
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,uint param_4,byte param_5,
               byte param_6,byte param_7)

{
  int local_34 [3];
  int local_28 [3];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  zz_arm_register_describe(param_2,local_34);
  zz_arm_register_describe(param_3,local_28);
  zz_arm_writer_put_instruction
            (param_1,(uint)param_7 << 0x15 |
                     local_34[0] << 0xc | local_28[0] << 0x10 | 0xe4100000U | param_4 & 0xfff |
                     (uint)param_6 << 0x17 | (uint)param_5 << 0x18);
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b8b4c symbol=zz_arm_writer_put_ldr_reg_reg_imm_index */

void zz_arm_writer_put_ldr_reg_reg_imm_index
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,uint param_4,
               undefined param_5)

{
  undefined auStack_34 [12];
  undefined auStack_28 [12];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  zz_arm_register_describe(param_2,auStack_34);
  zz_arm_register_describe(param_3,auStack_28);
  zz_arm_writer_put_ldr_reg_reg_imm_A1
            (param_1,param_2,param_3,param_4 + ((int)param_4 >> 0x1f) ^ (int)param_4 >> 0x1f,param_5
             ,~param_4 >> 0x1f,param_5);
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b8ba8 symbol=zz_arm_writer_put_ldr_reg_imm_literal */

undefined8 zz_arm_writer_put_ldr_reg_imm_literal(int param_1,undefined4 param_2,uint param_3)

{
  uint uVar1;
  int local_20;
  undefined4 uStack_1c;
  uint uStack_18;
  int local_14;
  
  local_14 = __stack_chk_guard;
  local_20 = param_1;
  uStack_1c = param_2;
  uStack_18 = param_3;
  zz_arm_register_describe(param_2,&local_20);
  uVar1 = ~param_3;
  if ((int)param_3 < 0) {
    param_3 = -param_3;
  }
  zz_arm_writer_put_instruction
            (param_1,local_20 << 0xc | 0xe51f0000U | (uVar1 >> 0x1f) << 0x17 | param_3 & 0xfff);
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return CONCAT44(uStack_1c,local_20);
}


/* address=000b8bf8 symbol=zz_arm_writer_put_ldr_reg_reg_imm */

void zz_arm_writer_put_ldr_reg_reg_imm
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,uint param_4)

{
  undefined auStack_34 [12];
  undefined auStack_28 [4];
  int local_24;
  int local_1c;
  
  local_1c = __stack_chk_guard;
  zz_arm_register_describe(param_2,auStack_34);
  zz_arm_register_describe(param_3,auStack_28);
  if (local_24 == 0xf) {
    zz_arm_writer_put_ldr_reg_imm_literal(param_1,param_2,param_4);
  }
  else {
    zz_arm_writer_put_ldr_reg_reg_imm_A1
              (param_1,param_2,param_3,param_4 + ((int)param_4 >> 0x1f) ^ (int)param_4 >> 0x1f,1,
               ~param_4 >> 0x1f,0);
  }
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b8c64 symbol=zz_arm_writer_put_ldr_b_reg_address */

undefined8
zz_arm_writer_put_ldr_b_reg_address(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 local_c;
  
  local_c = param_3;
  zz_arm_writer_put_ldr_reg_reg_imm(param_1,param_2,0xf,0);
  zz_arm_writer_put_b_imm(param_1,0);
  zz_arm_writer_put_bytes(param_1,&local_c,4);
  return CONCAT44(local_c,param_1);
}


/* address=000b8c88 symbol=zz_arm_writer_put_str_reg_reg_imm */

void zz_arm_writer_put_str_reg_reg_imm
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,uint param_4)

{
  int local_34 [3];
  int local_28 [3];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  zz_arm_register_describe(param_2,local_34);
  zz_arm_register_describe(param_3,local_28);
  zz_arm_writer_put_instruction
            (param_1,param_4 & 0xfff | local_28[0] << 0x10 | local_34[0] << 0xc | 0xe5000000U |
                     (~param_4 >> 0x1f) << 0x17);
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b8ce4 symbol=zz_arm_writer_put_ldr_reg_address */

undefined8
zz_arm_writer_put_ldr_reg_address(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 local_c;
  
  local_c = param_3;
  zz_arm_writer_put_ldr_reg_reg_imm(param_1,param_2,0xf,0xfffffffc);
  zz_arm_writer_put_bytes(param_1,&local_c,4);
  return CONCAT44(local_c,param_1);
}


/* address=000b8d00 symbol=zz_arm_writer_put_add_reg_reg_imm */

void zz_arm_writer_put_add_reg_reg_imm
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,uint param_4)

{
  int local_34 [3];
  int local_28 [3];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  zz_arm_register_describe(param_2,local_34);
  zz_arm_register_describe(param_3,local_28);
  zz_arm_writer_put_instruction
            (param_1,local_34[0] << 0xc | local_28[0] << 0x10 | 0xe2800000U | param_4 & 0xfff);
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b8d58 symbol=zz_arm_writer_put_sub_reg_reg_imm */

void zz_arm_writer_put_sub_reg_reg_imm
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,uint param_4)

{
  int local_34 [3];
  int local_28 [3];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  zz_arm_register_describe(param_2,local_34);
  zz_arm_register_describe(param_3,local_28);
  zz_arm_writer_put_instruction
            (param_1,local_34[0] << 0xc | local_28[0] << 0x10 | 0xe2400000U | param_4 & 0xfff);
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b8db0 symbol=zz_arm_writer_put_bx_to_thumb */

undefined8 zz_arm_writer_put_bx_to_thumb(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  
  zz_arm_writer_put_sub_reg_reg_imm(param_1,0xd,0xd,8,param_1,param_2,param_3);
  zz_arm_writer_put_str_reg_reg_imm(param_1,1,0xd,0);
  zz_arm_writer_put_add_reg_reg_imm(param_1,1,0xf,9);
  zz_arm_writer_put_str_reg_reg_imm(param_1,1,0xd,4);
  zz_arm_writer_put_ldr_reg_reg_imm_index(param_1,1,0xd,4,0);
  uVar1 = 0;
  zz_arm_writer_put_ldr_reg_reg_imm_index(param_1,0xf,0xd,4);
  return CONCAT44(param_2,uVar1);
}


/* address=000b8e04 symbol=zz_arm_writer_put_bx_reg */

void zz_arm_writer_put_bx_reg(undefined4 param_1,undefined4 param_2)

{
  uint local_20 [3];
  int local_14;
  
  local_14 = __stack_chk_guard;
  zz_arm_register_describe(param_2,local_20);
  zz_arm_writer_put_instruction(param_1,local_20[0] | 0xe12fff10);
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b8e40 symbol=zz_arm_writer_put_nop */

void zz_arm_writer_put_nop
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  zz_arm_writer_put_instruction(param_1,0xe320f000,param_3,param_4,param_4);
  return;
}


/* address=000b8e50 symbol=zz_arm_writer_put_push_reg */

void zz_arm_writer_put_push_reg(undefined4 param_1,undefined4 param_2)

{
  int local_20 [3];
  int local_14;
  
  local_14 = __stack_chk_guard;
  zz_arm_register_describe(param_2,local_20);
  zz_arm_writer_put_instruction(param_1,local_20[0] << 0xc | 0xe52d0004);
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b8e90 symbol=zz_arm_writer_put_pop_reg */

void zz_arm_writer_put_pop_reg(undefined4 param_1,undefined4 param_2)

{
  int local_20 [3];
  int local_14;
  
  local_14 = __stack_chk_guard;
  zz_arm_register_describe(param_2,local_20);
  zz_arm_writer_put_instruction(param_1,local_20[0] << 0xc | 0xe49d0004);
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b8ed0 symbol=zz_thumb_writer_new */

void zz_thumb_writer_new(void)

{
  int iVar1;
  
  iVar1 = zz_malloc_with_zero(0x418);
  *(undefined4 *)(iVar1 + 0x408) = 0;
  *(undefined4 *)(iVar1 + 0x404) = 0;
  *(undefined4 *)(iVar1 + 0x410) = 4;
  *(undefined4 *)(iVar1 + 0x40c) = 4;
  *(undefined4 *)(iVar1 + 0x414) = 0;
  *(undefined4 *)(iVar1 + 0x400) = 0;
  return;
}


/* address=000b8f0c symbol=zz_thumb_writer_reset */

void zz_thumb_writer_reset(int param_1,uint param_2,int param_3)

{
  uint uVar1;
  
  *(uint *)(param_1 + 0x408) = param_2 & 0xfffffffc;
  uVar1 = 0;
  *(uint *)(param_1 + 0x404) = param_2 & 0xfffffffc;
  *(int *)(param_1 + 0x410) = param_3 + 4;
  *(int *)(param_1 + 0x40c) = param_3 + 4;
  *(undefined4 *)(param_1 + 0x414) = 0;
  if (*(int *)(param_1 + 0x400) != 0) {
    for (; uVar1 < *(uint *)(param_1 + 0x400); uVar1 = uVar1 + 1) {
      free(*(void **)(param_1 + uVar1 * 4));
      *(undefined4 *)(param_1 + uVar1 * 4) = 0;
    }
  }
  *(undefined4 *)(param_1 + 0x400) = 0;
  return;
}


/* address=000b8f64 symbol=zz_thumb_writer_init */

void zz_thumb_writer_init(void)

{
  zz_thumb_writer_reset();
  return;
}


/* address=000b8f6c symbol=zz_thumb_writer_free */

void zz_thumb_writer_free(void *param_1)

{
  uint uVar1;
  
  uVar1 = 0;
  if (*(int *)((int)param_1 + 0x400) != 0) {
    for (; uVar1 < *(uint *)((int)param_1 + 0x400); uVar1 = uVar1 + 1) {
      free(*(void **)((int)param_1 + uVar1 * 4));
      *(undefined4 *)((int)param_1 + uVar1 * 4) = 0;
    }
  }
  free(param_1);
  return;
}


/* address=000b8f9c symbol=zz_thumb_writer_near_jump_range_size */

undefined4 zz_thumb_writer_near_jump_range_size(void)

{
  return 0x1000000;
}


/* address=000b8fa4 symbol=zz_thumb_writer_put_bytes */

void zz_thumb_writer_put_bytes(int param_1,void *param_2,size_t param_3)

{
  undefined4 *puVar1;
  int iVar2;
  
  memcpy(*(void **)(param_1 + 0x408),param_2,param_3);
  *(size_t *)(param_1 + 0x408) = param_3 + *(int *)(param_1 + 0x408);
  *(size_t *)(param_1 + 0x410) = param_3 + *(int *)(param_1 + 0x410);
  *(size_t *)(param_1 + 0x414) = param_3 + *(int *)(param_1 + 0x414);
  puVar1 = (undefined4 *)zz_malloc_with_zero(0x20);
  puVar1[1] = *(int *)(param_1 + 0x410) - param_3;
  iVar2 = *(int *)(param_1 + 0x408);
  *(char *)(puVar1 + 3) = (char)param_3;
  puVar1[2] = iVar2 - param_3;
  puVar1[5] = 0;
  *(undefined2 *)(puVar1 + 6) = 0;
  *(undefined2 *)((int)puVar1 + 0x1a) = 0;
  *puVar1 = 3;
  iVar2 = *(int *)(param_1 + 0x400);
  *(int *)(param_1 + 0x400) = iVar2 + 1;
  *(undefined4 **)(iVar2 * 4 + param_1) = puVar1;
  return;
}


/* address=000b9000 symbol=zz_thumb_writer_put_instruction */

void zz_thumb_writer_put_instruction(int param_1,undefined2 param_2)

{
  undefined4 *puVar1;
  int iVar2;
  
  **(undefined2 **)(param_1 + 0x408) = param_2;
  *(int *)(param_1 + 0x408) = *(int *)(param_1 + 0x408) + 2;
  *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 2;
  *(int *)(param_1 + 0x414) = *(int *)(param_1 + 0x414) + 2;
  puVar1 = (undefined4 *)zz_malloc_with_zero(0x20);
  puVar1[1] = *(int *)(param_1 + 0x410) + -2;
  iVar2 = *(int *)(param_1 + 0x408);
  *(undefined2 *)(puVar1 + 6) = param_2;
  puVar1[2] = iVar2 + -2;
  *(undefined *)(puVar1 + 3) = 2;
  puVar1[5] = 0;
  *(undefined2 *)((int)puVar1 + 0x1a) = 0;
  *puVar1 = 1;
  iVar2 = *(int *)(param_1 + 0x400);
  *(int *)(param_1 + 0x400) = iVar2 + 1;
  *(undefined4 **)(iVar2 * 4 + param_1) = puVar1;
  return;
}


/* address=000b905c symbol=zz_thumb_writer_put_nop */

void zz_thumb_writer_put_nop
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  zz_thumb_writer_put_instruction(param_1,0x46c0,param_3,param_4,param_4);
  return;
}


/* address=000b906c symbol=zz_thumb_writer_put_b_imm */

void zz_thumb_writer_put_b_imm(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  zz_thumb_writer_put_instruction
            (param_1,(uint)(param_2 << 0x14) >> 0x15 | 0xe000,param_3,0xe000,param_4);
  return;
}


/* address=000b9080 symbol=zz_thumb_writer_put_bx_reg */

void zz_thumb_writer_put_bx_reg(int param_1,undefined4 param_2)

{
  uint local_20 [3];
  int local_14;
  
  local_14 = __stack_chk_guard;
  zz_arm_register_describe(param_2,local_20);
  if ((*(uint *)(param_1 + 0x410) & 3) != 0) {
    zz_thumb_writer_put_nop(param_1);
  }
  zz_thumb_writer_put_instruction(param_1,(local_20[0] & 0x1fff) << 3 | 0x4700);
  zz_thumb_writer_put_nop(param_1);
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b90d8 symbol=zz_thumb_writer_put_blx_reg */

void zz_thumb_writer_put_blx_reg(undefined4 param_1,undefined4 param_2)

{
  uint local_20 [3];
  int local_14;
  
  local_14 = __stack_chk_guard;
  zz_arm_register_describe(param_2,local_20);
  zz_thumb_writer_put_instruction(param_1,(local_20[0] & 0x1fff) << 3 | 0x4780);
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b9118 symbol=zz_thumb_writer_put_branch_imm */

undefined8 zz_thumb_writer_put_branch_imm(undefined4 param_1,int param_2,int param_3,int param_4)

{
  uint uVar1;
  uint uVar2;
  
  uVar1 = param_2 / 2;
  uVar2 = uVar1 >> 0x1f;
  zz_thumb_writer_put_instruction(param_1,(uVar1 << 0xb) >> 0x16 | 0xf000 | uVar2 << 10);
  zz_thumb_writer_put_instruction
            (param_1,(param_4 << 0xc | 0xffff8000U | param_3 << 0xe) & 0xffff | uVar1 & 0x7ff |
                     (~(uVar1 >> 0x16 ^ uVar2) & 1) << 0xd | (~(uVar1 >> 0x15 ^ uVar2) & 1) << 0xb);
  return CONCAT44(param_3,param_1);
}


/* address=000b917c symbol=zz_thumb_writer_put_bl_imm */

void zz_thumb_writer_put_bl_imm(void)

{
  zz_thumb_writer_put_branch_imm();
  return;
}


/* address=000b9188 symbol=zz_thumb_writer_put_blx_imm */

void zz_thumb_writer_put_blx_imm
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  zz_thumb_writer_put_branch_imm(param_1,param_2,1,0,param_4);
  return;
}


/* address=000b9194 symbol=zz_thumb_writer_put_b_imm32 */

void zz_thumb_writer_put_b_imm32
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  zz_thumb_writer_put_branch_imm(param_1,param_2,0,1,param_4);
  return;
}


/* address=000b91a0 symbol=zz_thumb_writer_put_ldr_reg_imm */

void zz_thumb_writer_put_ldr_reg_imm(undefined4 param_1,undefined4 param_2,uint param_3)

{
  uint uVar1;
  int local_28;
  int local_24;
  int local_1c;
  
  local_1c = __stack_chk_guard;
  zz_arm_register_describe(param_2,&local_28);
  if (local_24 < 8) {
    if ((int)param_3 < 0) goto LAB_000b91de;
    if (0x3ff < (int)param_3) goto LAB_000b91d8;
    param_3 = (int)param_3 >> 2;
    uVar1 = local_28 << 8 | 0x4800;
  }
  else {
LAB_000b91d8:
    if (0xfff < (int)param_3) goto LAB_000b9204;
LAB_000b91de:
    zz_thumb_writer_put_instruction(param_1,(~param_3 >> 0x1f) << 7 | 0xf85f);
    param_3 = param_3 + ((int)param_3 >> 0x1f) ^ (int)param_3 >> 0x1f;
    uVar1 = local_28 << 0xc;
  }
  zz_thumb_writer_put_instruction(param_1,(uVar1 | param_3) & 0xffff);
LAB_000b9204:
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b9224 symbol=zz_thumb_writer_put_ldr_b_reg_address */

void zz_thumb_writer_put_ldr_b_reg_address(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 local_2c;
  undefined auStack_28 [4];
  int local_24;
  int local_1c;
  
  local_1c = __stack_chk_guard;
  local_2c = param_3;
  zz_arm_register_describe(param_2,auStack_28);
  if ((*(uint *)(param_1 + 0x410) & 3) == 0) {
    if (local_24 < 8) {
      uVar1 = 0;
      goto LAB_000b9276;
    }
  }
  else if (7 < local_24) {
    uVar1 = 4;
LAB_000b9276:
    zz_thumb_writer_put_ldr_reg_imm(param_1,param_2,uVar1);
    goto LAB_000b927a;
  }
  zz_thumb_writer_put_ldr_reg_imm(param_1,param_2,4);
  zz_thumb_writer_put_nop(param_1);
LAB_000b927a:
  zz_thumb_writer_put_b_imm(param_1,2);
  zz_thumb_writer_put_bytes(param_1,&local_2c,4);
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b92a0 symbol=zz_thumb_writer_put_ldr_reg_address */

void zz_thumb_writer_put_ldr_reg_address(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 local_2c;
  undefined auStack_28 [4];
  int local_24;
  int local_1c;
  
  local_1c = __stack_chk_guard;
  local_2c = param_3;
  zz_arm_register_describe(param_2,auStack_28);
  if ((*(uint *)(param_1 + 0x410) & 3) == 0) {
    zz_thumb_writer_put_ldr_reg_imm(param_1,param_2);
    if (7 < local_24) goto LAB_000b92f8;
  }
  else {
    if (local_24 < 8) {
      zz_thumb_writer_put_ldr_reg_imm(param_1,param_2,0);
      goto LAB_000b92f8;
    }
    zz_thumb_writer_put_ldr_reg_imm(param_1,param_2,4);
  }
  zz_thumb_writer_put_nop(param_1);
LAB_000b92f8:
  zz_thumb_writer_put_bytes(param_1,&local_2c,4);
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b9318 symbol=zz_thumb_writer_put_transfer_reg_reg_offset_T1 */

void zz_thumb_writer_put_transfer_reg_reg_offset_T1
               (undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4,uint param_5)

{
  undefined4 uVar1;
  uint uVar2;
  uint local_34;
  int local_30;
  int local_28;
  int local_24;
  int local_1c;
  
  local_1c = __stack_chk_guard;
  zz_arm_register_describe(param_3,&local_34);
  zz_arm_register_describe(param_4,&local_28);
  uVar1 = 0;
  if (((local_30 < 8) && (local_24 < 8)) && (param_5 < 0x80)) {
    uVar2 = (local_34 | 0x6000 | local_28 << 3 | ((int)param_5 >> 2) << 6) & 0xffff;
    if (param_2 == 0) {
      uVar2 = uVar2 | 0x800;
    }
    zz_thumb_writer_put_instruction(param_1,uVar2);
    uVar1 = 1;
  }
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar1);
  }
  return;
}


/* address=000b9398 symbol=zz_thumb_writer_put_transfer_reg_reg_offset_T2 */

void zz_thumb_writer_put_transfer_reg_reg_offset_T2
               (undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4,uint param_5)

{
  undefined4 uVar1;
  uint uVar2;
  int local_34;
  int local_30;
  undefined auStack_28 [4];
  int local_24;
  int local_1c;
  
  local_1c = __stack_chk_guard;
  zz_arm_register_describe(param_3,&local_34);
  zz_arm_register_describe(param_4,auStack_28);
  uVar1 = 0;
  if (((local_24 == 0xd) && (local_30 < 8)) && (param_5 < 0x400)) {
    uVar2 = (local_34 << 8 | 0xffff9000U | (int)param_5 >> 2) & 0xffff;
    if (param_2 == 0) {
      uVar2 = uVar2 | 0x800;
    }
    zz_thumb_writer_put_instruction(param_1,uVar2);
    uVar1 = 1;
  }
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar1);
  }
  return;
}


/* address=000b9418 symbol=zz_thumb_writer_put_transfer_reg_reg_offset_T3 */

void zz_thumb_writer_put_transfer_reg_reg_offset_T3
               (undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4,uint param_5)

{
  undefined4 uVar1;
  uint uVar2;
  int local_34 [3];
  uint local_28;
  int local_24;
  int local_1c;
  
  local_1c = __stack_chk_guard;
  zz_arm_register_describe(param_3,local_34);
  zz_arm_register_describe(param_4,&local_28);
  uVar1 = 0;
  if (param_5 < 0x1000) {
    if (local_24 == 0xf) {
      zz_thumb_writer_put_ldr_reg_imm(param_1,param_3);
    }
    if (param_2 == 0) {
      uVar2 = 0xf8d0;
    }
    else {
      uVar2 = 0xf8c0;
    }
    zz_thumb_writer_put_instruction(param_1,uVar2 | local_28 & 0xffff);
    zz_thumb_writer_put_instruction(param_1,(local_34[0] << 0xc | param_5) & 0xffff);
    uVar1 = 1;
  }
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar1);
  }
  return;
}


/* address=000b94a8 symbol=zz_thumb_writer_put_transfer_reg_reg_offset_T4 */

void zz_thumb_writer_put_transfer_reg_reg_offset_T4
               (undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4,int param_5,
               byte param_6,byte param_7)

{
  uint uVar1;
  undefined4 uVar2;
  uint uVar3;
  int local_34 [3];
  uint local_28;
  int local_24;
  int local_1c;
  
  local_1c = __stack_chk_guard;
  zz_arm_register_describe(param_3,local_34);
  zz_arm_register_describe(param_4,&local_28);
  uVar2 = 0;
  if (param_5 + 0xffU < 0x1ff) {
    if (local_24 == 0xf) {
      zz_thumb_writer_put_ldr_reg_imm(param_1,param_3,param_5);
    }
    else {
      uVar3 = param_5 >> 0x1f;
      if (param_2 == 0) {
        uVar1 = 0xf850;
      }
      else {
        uVar1 = 0xf840;
      }
      zz_thumb_writer_put_instruction(param_1,uVar1 | local_28 & 0xffff);
      zz_thumb_writer_put_instruction
                (param_1,(local_34[0] << 0xc | 0x800U | (uint)param_7 << 8 | (uint)param_6 << 10 |
                         param_5 + uVar3 ^ uVar3) & 0xffff | (uVar3 - param_5 >> 0x1f) << 9);
      uVar2 = 1;
    }
  }
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar2);
  }
  return;
}


/* address=000b9570 symbol=FUN_000b9570 */

void FUN_000b9570(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5)

{
  int iVar1;
  
  iVar1 = zz_thumb_writer_put_transfer_reg_reg_offset_T1();
  if (iVar1 == 0) {
    iVar1 = zz_thumb_writer_put_transfer_reg_reg_offset_T2(param_1,param_2,param_3,param_4,param_5);
    if (iVar1 == 0) {
      iVar1 = zz_thumb_writer_put_transfer_reg_reg_offset_T3
                        (param_1,param_2,param_3,param_4,param_5);
      if (iVar1 == 0) {
        zz_thumb_writer_put_transfer_reg_reg_offset_T4(param_1,param_2,param_3,param_4,param_5,1,0);
      }
    }
  }
  return;
}


/* address=000b95cc symbol=zz_thumb_writer_put_ldr_reg_reg_offset */

undefined8
zz_thumb_writer_put_ldr_reg_reg_offset
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  FUN_000b9570(param_1,0,param_2,param_3,param_4,param_2,param_3);
  return CONCAT44(param_2,param_4);
}


/* address=000b95e0 symbol=zz_thumb_writer_put_str_reg_reg_offset */

undefined8
zz_thumb_writer_put_str_reg_reg_offset
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  FUN_000b9570(param_1,1,param_2,param_3,param_4,param_2,param_3);
  return CONCAT44(param_2,param_4);
}


/* address=000b95f4 symbol=zz_thumb_writer_put_ldr_index_reg_reg_offset */

void zz_thumb_writer_put_ldr_index_reg_reg_offset
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined param_5)

{
  zz_thumb_writer_put_transfer_reg_reg_offset_T4(param_1,0,param_2,param_3,param_4,param_5,1);
  return;
}


/* address=000b9616 symbol=zz_thumb_writer_put_str_index_reg_reg_offset */

void zz_thumb_writer_put_str_index_reg_reg_offset
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined param_5)

{
  zz_thumb_writer_put_transfer_reg_reg_offset_T4(param_1,1,param_2,param_3,param_4,param_5,1);
  return;
}


/* address=000b9636 symbol=zz_thumb_writer_put_str_reg_reg */

void zz_thumb_writer_put_str_reg_reg(void)

{
  zz_thumb_writer_put_str_reg_reg_offset();
  return;
}


/* address=000b9640 symbol=zz_thumb_writer_put_ldr_reg_reg */

void zz_thumb_writer_put_ldr_reg_reg(void)

{
  zz_thumb_writer_put_ldr_reg_reg_offset();
  return;
}


/* address=000b964c symbol=zz_thumb_writer_put_add_reg_imm */

void zz_thumb_writer_put_add_reg_imm(undefined4 param_1,undefined4 param_2,uint param_3)

{
  uint uVar1;
  uint uVar2;
  int local_28;
  int local_24;
  int local_1c;
  
  local_1c = __stack_chk_guard;
  zz_arm_register_describe(param_2,&local_28);
  uVar1 = (int)param_3 >> 0x1f;
  if (local_24 != 0xd) {
    uVar1 = (param_3 >> 0x1f) << 0xb | (param_3 + uVar1 ^ uVar1 | local_28 << 8 | 0x3000U) & 0xffff;
    goto LAB_000b96ba;
  }
  uVar2 = 0;
  if ((int)param_3 < 0) {
    if ((int)(param_3 + 3) < 0 == SCARRY4(param_3,3)) {
      uVar2 = 0x80;
      goto LAB_000b968a;
    }
    uVar1 = -((int)((uVar1 >> 0x1e) + param_3) >> 2);
    uVar2 = 0x80;
  }
  else {
LAB_000b968a:
    uVar1 = (int)((uVar1 >> 0x1e) + param_3) >> 2;
  }
  uVar1 = uVar1 & 0xffff | uVar2 | 0xb000;
LAB_000b96ba:
  zz_thumb_writer_put_instruction(param_1,uVar1);
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b96d4 symbol=zz_thumb_writer_put_sub_reg_imm */

void zz_thumb_writer_put_sub_reg_imm
               (undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4)

{
  zz_thumb_writer_put_add_reg_imm(param_1,param_2,-param_3,param_4,param_4);
  return;
}


/* address=000b96e0 symbol=zz_thumb_writer_put_add_reg_reg_imm */

void zz_thumb_writer_put_add_reg_reg_imm
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,uint param_4)

{
  uint uVar1;
  uint uVar2;
  uint local_34;
  int local_30;
  uint local_28;
  int local_24;
  int local_1c;
  
  local_1c = __stack_chk_guard;
  zz_arm_register_describe(param_2,&local_34);
  zz_arm_register_describe(param_3,&local_28);
  if (local_24 == local_30) {
    zz_thumb_writer_put_add_reg_imm(param_1,param_2,param_4);
    goto LAB_000b97c2;
  }
  uVar2 = (int)param_4 >> 0x1f;
  if (local_30 < 8) {
    if (7 < local_24) {
      if ((((local_24 != 0xd) && (local_24 != 0xf)) || (0xfe < param_4 - 1)) || ((param_4 & 3) != 0)
         ) goto LAB_000b975a;
      uVar2 = (uint)(local_24 == 0xd) * 0x800;
      uVar1 = local_34 << 8 | 0xffffa000 | (int)param_4 >> 2;
      goto LAB_000b9794;
    }
    if (0xe < param_4 + 7) goto LAB_000b975a;
    uVar1 = local_34 | 0x1c00 | local_28 << 3 | (param_4 + uVar2 ^ uVar2) << 6 |
            (param_4 >> 0x1f) << 9;
  }
  else {
LAB_000b975a:
    uVar2 = param_4 + uVar2 ^ uVar2;
    if ((int)param_4 < 0) {
      uVar1 = 0xfffff2a0;
    }
    else {
      uVar1 = 0xfffff200;
    }
    zz_thumb_writer_put_instruction
              (param_1,((uVar2 << 0x14) >> 0x1f) << 10 | (local_28 | uVar1) & 0xffff);
    uVar1 = local_34 << 8 | uVar2 & 0xff;
    uVar2 = ((uVar2 << 0x15) >> 0x1d) << 0xc;
LAB_000b9794:
    uVar1 = uVar1 | uVar2;
  }
  zz_thumb_writer_put_instruction(param_1,uVar1 & 0xffff);
LAB_000b97c2:
  if (local_1c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}


/* address=000b97e4 symbol=zz_thumb_writer_put_sub_reg_reg_imm */

void zz_thumb_writer_put_sub_reg_reg_imm(void)

{
  zz_thumb_writer_put_add_reg_reg_imm();
  return;
}


/* address=000b97f0 symbol=zz_thumb_writer_put_push_reg */

void zz_thumb_writer_put_push_reg(undefined4 param_1,undefined4 param_2)

{
  uint local_20 [3];
  int local_14;
  
  local_14 = __stack_chk_guard;
  zz_arm_register_describe(param_2,local_20);
  zz_thumb_writer_put_instruction(param_1,(1 << (local_20[0] & 0xff) | 0xffffb400U) & 0xffff);
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b9834 symbol=zz_thumb_writer_put_pop_reg */

void zz_thumb_writer_put_pop_reg(undefined4 param_1,undefined4 param_2)

{
  uint local_20 [3];
  int local_14;
  
  local_14 = __stack_chk_guard;
  zz_arm_register_describe(param_2,local_20);
  zz_thumb_writer_put_instruction(param_1,(1 << (local_20[0] & 0xff) | 0xffffbc00U) & 0xffff);
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b9878 symbol=zz_thumb_writer_put_add_reg_reg_reg */

void zz_thumb_writer_put_add_reg_reg_reg
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  uint local_40 [3];
  uint local_34 [3];
  uint local_28 [3];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  zz_arm_register_describe(param_2,local_40);
  zz_arm_register_describe(param_3,local_34);
  zz_arm_register_describe(param_4,local_28);
  zz_thumb_writer_put_instruction
            (param_1,(local_40[0] | 0x1800 | (local_28[0] & 0xffff) << 6 |
                     (local_34[0] & 0xffff) << 3) & 0xffff);
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000b98e0 symbol=zz_thumb_code_patch */

undefined4 * zz_thumb_code_patch(int param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  undefined4 *__ptr;
  int iVar1;
  
  if (param_4 == 0) {
    __ptr = (undefined4 *)ZzNewCodeSlice(param_2,*(int *)(param_1 + 0x414) + 4);
  }
  else {
    __ptr = (undefined4 *)
            ZzNewNearCodeSlice(param_2,param_3,param_4,*(undefined4 *)(param_1 + 0x414));
  }
  if ((__ptr != (undefined4 *)0x0) &&
     (iVar1 = ZzMemoryPatchCode(*__ptr,*(undefined4 *)(param_1 + 0x404),
                                *(undefined4 *)(param_1 + 0x414)), iVar1 == 0)) {
    free(__ptr);
    __ptr = (undefined4 *)0x0;
  }
  return __ptr;
}


/* address=000b9928 symbol=zz_thumb_relocate_code_patch */

undefined4 *
zz_thumb_relocate_code_patch
          (undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4,int param_5)

{
  undefined4 *__ptr;
  int iVar1;
  
  if (param_5 == 0) {
    __ptr = (undefined4 *)
            ZzNewCodeSlice(param_3,*(int *)(param_2 + 0x414) + 4,0,*(int *)(param_2 + 0x414),param_4
                          );
  }
  else {
    __ptr = (undefined4 *)
            ZzNewNearCodeSlice(param_3,param_4,param_5,*(undefined4 *)(param_2 + 0x414));
  }
  if (__ptr != (undefined4 *)0x0) {
    zz_thumb_relocator_relocate_writer(param_1,*__ptr);
    iVar1 = ZzMemoryPatchCode(*__ptr,*(undefined4 *)(param_2 + 0x404),
                              *(undefined4 *)(param_2 + 0x414));
    if (iVar1 == 0) {
      free(__ptr);
      __ptr = (undefined4 *)0x0;
    }
  }
  return __ptr;
}


/* address=000b997c symbol=zz_arm_code_patch */

undefined4 * zz_arm_code_patch(int param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  undefined4 *__ptr;
  int iVar1;
  
  if (param_4 == 0) {
    __ptr = (undefined4 *)ZzNewCodeSlice(param_2,*(int *)(param_1 + 0x414) + 4);
  }
  else {
    __ptr = (undefined4 *)
            ZzNewNearCodeSlice(param_2,param_3,param_4,*(undefined4 *)(param_1 + 0x414));
  }
  if ((__ptr != (undefined4 *)0x0) &&
     (iVar1 = ZzMemoryPatchCode(*__ptr,*(undefined4 *)(param_1 + 0x404),
                                *(undefined4 *)(param_1 + 0x414)), iVar1 == 0)) {
    free(__ptr);
    __ptr = (undefined4 *)0x0;
  }
  return __ptr;
}


/* address=000b99c4 symbol=zz_arm_relocate_code_patch */

undefined4 *
zz_arm_relocate_code_patch
          (undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4,int param_5)

{
  undefined4 *__ptr;
  int iVar1;
  
  if (param_5 == 0) {
    __ptr = (undefined4 *)
            ZzNewCodeSlice(param_3,*(int *)(param_2 + 0x414) + 4,0,*(int *)(param_2 + 0x414),param_4
                          );
  }
  else {
    __ptr = (undefined4 *)
            ZzNewNearCodeSlice(param_3,param_4,param_5,*(undefined4 *)(param_2 + 0x414));
  }
  if (__ptr != (undefined4 *)0x0) {
    zz_arm_relocator_relocate_writer(param_1,*__ptr);
    iVar1 = ZzMemoryPatchCode(*__ptr,*(undefined4 *)(param_2 + 0x404),
                              *(undefined4 *)(param_2 + 0x414));
    if (iVar1 == 0) {
      free(__ptr);
      __ptr = (undefined4 *)0x0;
    }
  }
  return __ptr;
}


/* address=000b9a18 symbol=ZzBuildInteceptorBackend */

void ZzBuildInteceptorBackend(undefined4 param_1)

{
  int iVar1;
  undefined4 *puVar2;
  int iVar3;
  size_t sVar4;
  char acStack_41c [1024];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  iVar1 = ZzMemoryIsSupportAllocateRXPage();
  if (iVar1 == 0) {
    puVar2 = (undefined4 *)0x0;
  }
  else {
    puVar2 = (undefined4 *)zz_malloc_with_zero(0x48b4);
    zz_arm_writer_init(puVar2 + 0xe11,0,0);
    zz_arm_reader_init(puVar2 + 0x101d,0);
    zz_arm_relocator_init(puVar2 + 1,puVar2 + 0x101d,puVar2 + 0xe11);
    zz_thumb_writer_init(puVar2 + 0xf17,0,0);
    zz_thumb_reader_init(puVar2 + 0x1123,0);
    zz_thumb_relocator_init(puVar2 + 0x709,puVar2 + 0x1123,puVar2 + 0xf17);
    *puVar2 = param_1;
    puVar2[0x1229] = 0;
    puVar2[0x122a] = 0;
    puVar2[0x122b] = 0;
    puVar2[0x122c] = 0;
    iVar1 = ZzThunkerBuildThunk(puVar2);
    iVar3 = HookZzDebugInfoIsEnable();
    if (iVar3 != 0) {
      memset(acStack_41c,0,0x400);
      sVar4 = strlen(acStack_41c);
      strcpy(acStack_41c + sVar4,"======= Global Interceptor Info ======= \n");
      sVar4 = strlen(acStack_41c);
      sprintf(acStack_41c + sVar4,"\t\tenter_thunk: %p\n",puVar2[0x1229]);
      sVar4 = strlen(acStack_41c);
      sprintf(acStack_41c + sVar4,"\t\tleave_thunk: %p\n",puVar2[0x122b]);
      sVar4 = strlen(acStack_41c);
      sprintf(acStack_41c + sVar4,"\t\tinsn_leave_thunk: %p\n",puVar2[0x122a]);
      sVar4 = strlen(acStack_41c);
      sprintf(acStack_41c + sVar4,"\t\tdynamic_binary_instrumentation_thunk: %p\n",puVar2[0x122c]);
      __android_log_print(4,"zzinfo",&UNK_000d2d33,acStack_41c);
    }
    if (iVar1 == 2) {
      __android_log_print(4,"zzinfo",&UNK_000d2d33,"ZzThunkerBuildThunk return ZZ_FAILED\n");
      puVar2 = (undefined4 *)0x0;
    }
  }
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(puVar2);
  }
  return;
}


/* address=000b9bbc symbol=ZzFreeTrampoline */

undefined4 ZzFreeTrampoline(void)

{
  return 1;
}


/* address=000b9bc0 symbol=ZzPrepareTrampoline */

void ZzPrepareTrampoline(int param_1,int param_2)

{
  int iVar1;
  void *__src;
  uint uVar2;
  undefined4 uVar3;
  int local_20;
  int local_1c;
  
  local_1c = __stack_chk_guard;
  __src = *(void **)(param_2 + 0x10);
  local_20 = 0;
  iVar1 = zz_malloc_with_zero(8);
  uVar2 = *(uint *)(param_2 + 0x10);
  *(int *)(param_2 + 0x68) = iVar1;
  if ((uVar2 & 1) == 0) {
    if (*(char *)(param_2 + 9) == '\0') {
      zz_arm_relocator_try_relocate(__src,8,&local_20);
      if (local_20 - 5U < 3) {
        *(undefined *)(param_2 + 9) = 1;
        goto LAB_000b9c50;
      }
      if (local_20 - 1U < 3) goto LAB_000b9c1c;
      uVar3 = 8;
    }
    else {
LAB_000b9c50:
      uVar3 = 4;
    }
    *(undefined4 *)(iVar1 + 4) = uVar3;
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)(iVar1 + 4);
  }
  else {
    __src = (void *)(uVar2 & 0xfffffffe);
    if (*(char *)(param_2 + 9) == '\0') {
      zz_thumb_relocator_try_relocate(__src,8,&local_20);
      if (local_20 - 5U < 3) {
        *(undefined *)(param_2 + 9) = 1;
        goto LAB_000b9c12;
      }
      if (local_20 - 1U < 3) {
LAB_000b9c1c:
        uVar3 = 2;
        goto LAB_000b9c8c;
      }
      if ((int)(uVar2 << 0x1e) < 0) {
        uVar3 = 10;
      }
      else {
        uVar3 = 8;
      }
    }
    else {
LAB_000b9c12:
      uVar3 = 4;
    }
    *(undefined4 *)(iVar1 + 4) = uVar3;
    *(undefined4 *)(param_1 + 0x1c28) = *(undefined4 *)(iVar1 + 4);
  }
  memcpy((void *)(param_2 + 0x48),__src,*(size_t *)(iVar1 + 4));
  uVar3 = *(undefined4 *)(iVar1 + 4);
  *(void **)(param_2 + 0x40) = __src;
  *(undefined4 *)(param_2 + 0x44) = uVar3;
  zz_arm_relocator_init(param_1 + 4,param_1 + 0x4074,param_1 + 0x3844);
  zz_thumb_relocator_init(param_1 + 0x1c24,param_1 + 0x448c,param_1 + 0x3c5c);
  uVar3 = 1;
LAB_000b9c8c:
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar3);
  }
  return;
}


/* address=000b9cc4 symbol=ZzBuildEnterTransferTrampoline */

void ZzBuildEnterTransferTrampoline(undefined4 *param_1,int *param_2)

{
  int *__ptr;
  size_t sVar1;
  char *__s;
  char *__format;
  int iVar2;
  int iVar3;
  uint uVar4;
  undefined4 *puVar5;
  undefined4 uVar6;
  undefined auStack_51c [256];
  char acStack_41c [1024];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  memset(auStack_51c,0,0x100);
  iVar3 = param_2[0x1a];
  uVar4 = param_2[4];
  if ((uVar4 & 1) == 0) {
    puVar5 = param_1 + 0xe11;
    zz_arm_writer_reset(puVar5,auStack_51c);
    if (*param_2 == 2) {
      iVar2 = param_2[9];
    }
    else if (*param_2 == 4) {
      iVar2 = param_2[0xf];
    }
    else {
      iVar2 = param_2[0xb];
    }
    zz_arm_writer_put_ldr_reg_address(puVar5,0xf,iVar2);
    uVar6 = *param_1;
    if (*(int *)(iVar3 + 4) == 4) {
      iVar3 = zz_arm_writer_near_jump_range_size();
      iVar3 = iVar3 + -0x10;
    }
    else {
      uVar4 = 0;
      iVar3 = 0;
    }
    __ptr = (int *)zz_arm_code_patch(puVar5,uVar6,uVar4,iVar3);
    if (__ptr != (int *)0x0) {
      iVar3 = *__ptr;
      goto LAB_000b9d9e;
    }
  }
  else {
    puVar5 = param_1 + 0xf17;
    zz_thumb_writer_reset(puVar5,auStack_51c,auStack_51c);
    if (*param_2 == 2) {
      iVar2 = param_2[9];
    }
    else if (*param_2 == 4) {
      iVar2 = param_2[0xf];
    }
    else {
      iVar2 = param_2[0xb];
    }
    zz_thumb_writer_put_ldr_reg_address(puVar5,0xf,iVar2);
    uVar6 = *param_1;
    if (*(int *)(iVar3 + 4) == 4) {
      iVar3 = zz_thumb_writer_near_jump_range_size();
      uVar4 = uVar4 & 0xfffffffe;
      iVar3 = iVar3 + -0x10;
    }
    else {
      uVar4 = 0;
      iVar3 = 0;
    }
    __ptr = (int *)zz_thumb_code_patch(puVar5,uVar6,uVar4,iVar3);
    if (__ptr != (int *)0x0) {
      iVar3 = *__ptr + 1;
LAB_000b9d9e:
      param_2[10] = iVar3;
      iVar3 = HookZzDebugInfoIsEnable();
      if (iVar3 != 0) {
        memset(acStack_41c,0,0x400);
        sVar1 = strlen(acStack_41c);
        strcpy(acStack_41c + sVar1,"======= EnterTransferTrampoline ======= \n");
        sVar1 = strlen(acStack_41c);
        sprintf(acStack_41c + sVar1,"\t\ton_enter_transfer_trampoline: %p\n",param_2[10]);
        sVar1 = strlen(acStack_41c);
        sprintf(acStack_41c + sVar1,"\t\ttrampoline_length: %ld\n",__ptr[1]);
        sVar1 = strlen(acStack_41c);
        sprintf(acStack_41c + sVar1,"\t\thook_entry: %p\n",param_2);
        if (*param_2 == 2) {
          sVar1 = strlen(acStack_41c);
          __s = acStack_41c + sVar1;
          iVar3 = param_2[9];
          __format = "\t\tjump_target: replace_call(%p)\n";
        }
        else if (*param_2 == 4) {
          sVar1 = strlen(acStack_41c);
          __s = acStack_41c + sVar1;
          iVar3 = param_2[0xf];
          __format = "\t\tjump_target: on_dynamic_binary_instrumentation_trampoline(%p)\n";
        }
        else {
          sVar1 = strlen(acStack_41c);
          iVar3 = param_2[0xb];
          __s = acStack_41c + sVar1;
          __format = "\t\tjump_target: on_enter_trampoline(%p)\n";
        }
        sprintf(__s,__format,iVar3);
        __android_log_print(4,"zzinfo",&UNK_000d2d33,acStack_41c);
      }
      free(__ptr);
      uVar6 = 1;
      goto LAB_000b9e4c;
    }
  }
  uVar6 = 2;
LAB_000b9e4c:
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar6);
  }
  return;
}


/* address=000b9ebc symbol=ZzBuildEnterTrampoline */

void ZzBuildEnterTrampoline(undefined4 *param_1,int *param_2)

{
  int *__ptr;
  size_t sVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  undefined *__s;
  int *piVar5;
  undefined auStack_51c [256];
  char acStack_41c [1024];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  __s = auStack_51c;
  memset(__s,0,0x100);
  iVar2 = param_2[0x1a];
  puVar4 = param_1 + 0xf17;
  zz_thumb_writer_reset(puVar4,__s,0);
  zz_thumb_writer_put_sub_reg_imm(puVar4,0xd,0xc);
  zz_thumb_writer_put_str_reg_reg_offset(puVar4,1,0xd,0);
  zz_thumb_writer_put_ldr_b_reg_address(puVar4,1,param_2);
  zz_thumb_writer_put_str_reg_reg_offset(puVar4,1,0xd,4);
  zz_thumb_writer_put_ldr_reg_reg_offset(puVar4,1,0xd,0);
  zz_thumb_writer_put_add_reg_imm(puVar4,0xd,4);
  uVar3 = param_1[0x1229];
  zz_thumb_writer_put_ldr_reg_address(puVar4,0xf,uVar3,uVar3,uVar3);
  __ptr = (int *)zz_thumb_code_patch(puVar4,*param_1,0,0);
  piVar5 = &__stack_chk_guard;
  uVar3 = 2;
  if (__ptr != (int *)0x0) {
    param_2[0xb] = *__ptr + 1;
    if ((*param_2 != 3) && (*(int *)(iVar2 + 4) == 4)) {
      uVar3 = ZzBuildEnterTransferTrampoline(param_1,param_2);
    }
    iVar2 = HookZzDebugInfoIsEnable(uVar3);
    if (iVar2 != 0) {
      memset(acStack_41c,0,0x400);
      sVar1 = strlen(acStack_41c);
      strcpy(acStack_41c + sVar1,"======= EnterTrampoline ======= \n");
      sVar1 = strlen(acStack_41c);
      sprintf(acStack_41c + sVar1,"\t\ton_enter_trampoline: %p\n",*__ptr);
      sVar1 = strlen(acStack_41c);
      sprintf(acStack_41c + sVar1,"\t\ttrampoline_length: %ld\n",__ptr[1]);
      sVar1 = strlen(acStack_41c);
      sprintf(acStack_41c + sVar1,"\t\tjump_target: enter_thunk(%p)\n",param_1[0x1229]);
      __android_log_print(4,"zzinfo",&UNK_000d2d33,acStack_41c);
    }
    free(__ptr);
    uVar3 = 1;
  }
  if (local_1c != *piVar5) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar3);
  }
  return;
}


/* address=000ba03c symbol=ZzBuildDynamicBinaryInstrumentationTrampoline */

void ZzBuildDynamicBinaryInstrumentationTrampoline(undefined4 *param_1,int param_2)

{
  int *__ptr;
  undefined4 uVar1;
  size_t sVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined auStack_51c [256];
  char acStack_41c [1024];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  memset(auStack_51c,0,0x100);
  iVar3 = *(int *)(param_2 + 0x68);
  puVar4 = param_1 + 0xf17;
  zz_thumb_writer_reset(puVar4,auStack_51c,0);
  zz_thumb_writer_put_sub_reg_imm(puVar4,0xd,0xc);
  zz_thumb_writer_put_str_reg_reg_offset(puVar4,1,0xd,0);
  zz_thumb_writer_put_ldr_b_reg_address(puVar4,1,param_2);
  zz_thumb_writer_put_str_reg_reg_offset(puVar4,1,0xd,4);
  zz_thumb_writer_put_ldr_reg_reg_offset(puVar4,1,0xd,0);
  zz_thumb_writer_put_add_reg_imm(puVar4,0xd,4);
  zz_thumb_writer_put_ldr_reg_address(puVar4,0xf,param_1[0x122c]);
  __ptr = (int *)zz_thumb_code_patch(puVar4,*param_1,0,0);
  uVar1 = 2;
  if (__ptr != (int *)0x0) {
    *(int *)(param_2 + 0x3c) = *__ptr + 1;
    if (*(int *)(iVar3 + 4) == 4) {
      uVar1 = ZzBuildEnterTransferTrampoline(param_1,param_2);
    }
    iVar3 = HookZzDebugInfoIsEnable(uVar1);
    if (iVar3 != 0) {
      memset(acStack_41c,0,0x400);
      sVar2 = strlen(acStack_41c);
      strcpy(acStack_41c + sVar2,"======= DynamicBinaryInstrumentationTrampoline ======= \n");
      sVar2 = strlen(acStack_41c);
      sprintf(acStack_41c + sVar2,"\t\tdynamic_binary_instrumentation_trampoline: %p\n",
              *(undefined4 *)(param_2 + 0x3c));
      sVar2 = strlen(acStack_41c);
      sprintf(acStack_41c + sVar2,"\t\ttrampoline_length: %ld\n",__ptr[1]);
      sVar2 = strlen(acStack_41c);
      sprintf(acStack_41c + sVar2,"\t\thook_entry: %p\n",param_2);
      sVar2 = strlen(acStack_41c);
      sprintf(acStack_41c + sVar2,"\t\tjump_target: dynamic_binary_instrumentation_thunk(%p)\n",
              param_1[0x122c]);
      __android_log_print(4,"zzinfo",&UNK_000d2d33,acStack_41c);
    }
    free(__ptr);
    uVar1 = 1;
  }
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar1);
  }
  return;
}


/* address=000ba1d0 symbol=ZzBuildInvokeTrampoline */

void ZzBuildInvokeTrampoline(undefined4 *param_1,int *param_2)

{
  int *piVar1;
  int **ppiVar2;
  int *__ptr;
  undefined4 uVar3;
  size_t sVar4;
  int iVar5;
  uint uVar6;
  undefined4 *puVar7;
  undefined4 *puVar8;
  byte *pbVar9;
  int *piVar10;
  byte *pbVar11;
  int local_634;
  undefined auStack_61c [256];
  char acStack_51c [256];
  char acStack_41c [1024];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  memset(auStack_61c,0,0x100);
  iVar5 = param_2[0x1a];
  uVar6 = param_2[4];
  if ((uVar6 & 1) == 0) {
    puVar7 = param_1 + 0xe11;
    zz_arm_writer_reset(puVar7,auStack_61c,0);
    puVar8 = param_1 + 1;
    zz_arm_reader_reset(param_1 + 0x101d,uVar6);
    zz_arm_relocator_reset(puVar8,param_1 + 0x101d,puVar7);
    if (*param_2 == 0) {
      zz_arm_relocator_read_one(puVar8,0);
      zz_arm_relocator_write_one(puVar8);
      zz_arm_writer_put_ldr_reg_address(puVar7,0xf,param_2[0xc]);
      do {
        zz_arm_relocator_read_one(puVar8,0);
        zz_arm_relocator_write_one(puVar8);
      } while (*(uint *)(param_1[4] + 0x414) < *(uint *)(iVar5 + 4));
    }
    else {
      do {
        zz_arm_relocator_read_one(puVar8,0);
      } while (*(uint *)(param_1[4] + 0x414) < *(uint *)(iVar5 + 4));
      zz_arm_relocator_write_all(puVar8);
    }
    local_634 = uVar6 + *(int *)(param_1[4] + 0x414);
    zz_arm_writer_put_ldr_reg_address(puVar7,0xf,local_634);
    __ptr = (int *)zz_arm_relocate_code_patch(puVar8,puVar7,*param_1,0,0);
    if (__ptr != (int *)0x0) {
      param_2[0xd] = *__ptr;
      if (*param_2 == 0) {
        iVar5 = (*__ptr - *(int *)(param_1[3] + 0x40c)) + *(int *)(*(int *)param_1[0x10f] + 4);
        goto LAB_000ba39e;
      }
      goto LAB_000ba3a0;
    }
  }
  else {
    puVar8 = param_1 + 0x709;
    puVar7 = param_1 + 0xf17;
    zz_thumb_writer_reset(puVar7,auStack_61c,0);
    zz_thumb_reader_reset(param_1 + 0x1123,uVar6 & 0xfffffffe);
    zz_thumb_relocator_reset(puVar8,param_1 + 0x1123,puVar7);
    if (*param_2 == 0) {
      zz_thumb_relocator_read_one(puVar8);
      zz_thumb_relocator_write_one(puVar8);
      zz_thumb_writer_put_ldr_reg_address(puVar7,0xf,param_2[0xc]);
      do {
        zz_thumb_relocator_read_one(puVar8,0);
        zz_thumb_relocator_write_one(puVar8);
      } while (*(uint *)(param_1[0x70c] + 0x414) < *(uint *)(iVar5 + 4));
    }
    else {
      do {
        zz_thumb_relocator_read_one(puVar8,0);
      } while (*(uint *)(param_1[0x70c] + 0x414) < *(uint *)(iVar5 + 4));
      zz_thumb_relocator_write_all(puVar8);
    }
    local_634 = (uVar6 & 0xfffffffe) + *(int *)(param_1[0x70c] + 0x414);
    zz_thumb_writer_put_ldr_reg_address(puVar7,0xf,local_634 + 1);
    __ptr = (int *)zz_thumb_relocate_code_patch(puVar8,puVar7,*param_1,0,0);
    if (__ptr != (int *)0x0) {
      param_2[0xd] = *__ptr + 1;
      if (*param_2 == 0) {
        iVar5 = (*__ptr + *(int *)(*(int *)param_1[0x817] + 4) + 1) -
                *(int *)(param_1[0x70b] + 0x40c);
LAB_000ba39e:
        param_2[5] = iVar5;
      }
LAB_000ba3a0:
      iVar5 = HookZzDebugInfoIsEnable();
      if (iVar5 != 0) {
        memset(acStack_41c,0,0x400);
        memset(acStack_51c,0,0x100);
        sVar4 = strlen(acStack_41c);
        strcpy(acStack_41c + sVar4,"======= InvokeTrampoline ======= \n");
        sVar4 = strlen(acStack_41c);
        sprintf(acStack_41c + sVar4,"\t\ton_invoke_trampoline: %p\n",param_2[0xd]);
        sVar4 = strlen(acStack_41c);
        sprintf(acStack_41c + sVar4,"\t\ttrampoline_length: %ld\n",__ptr[1]);
        sVar4 = strlen(acStack_41c);
        sprintf(acStack_41c + sVar4,"\t\tjump_target: restore_next_insn_addr(%p)\n",local_634);
        sVar4 = strlen(acStack_41c);
        strcpy(acStack_41c + sVar4,"======= InvokeTrampoline Relocator ======= \n");
        if ((uVar6 & 1) == 0) {
          pbVar11 = *(byte **)(param_1[4] + 0x404);
          for (pbVar9 = pbVar11; pbVar9 < *(byte **)(param_1[4] + 0x408); pbVar9 = pbVar9 + 1) {
            sprintf(acStack_51c + ((int)pbVar9 - (int)pbVar11) * 5,"0x%.2x ",(uint)*pbVar9);
          }
          sVar4 = strlen(acStack_41c);
          sprintf(acStack_41c + sVar4,"\t\t\tARM Origin Prologue: %s\n",acStack_51c);
          sVar4 = strlen(acStack_41c);
          sprintf(acStack_41c + sVar4,"\t\tARM Relocator Input Start Address: %p\n",
                  *(undefined4 *)(param_1[4] + 0x404));
          sVar4 = strlen(acStack_41c);
          sprintf(acStack_41c + sVar4,"\t\tARM Relocator Input Instruction Number: %ld\n",
                  *(undefined4 *)(param_1[4] + 0x400));
          sVar4 = strlen(acStack_41c);
          sprintf(acStack_41c + sVar4,"\t\tARM Relocator Input Size: %p\n",
                  *(undefined4 *)(param_1[4] + 0x414));
          sVar4 = strlen(acStack_41c);
          sprintf(acStack_41c + sVar4,"\t\tARM Relocator Output Start Address: %p\n",*__ptr);
          sVar4 = strlen(acStack_41c);
          sprintf(acStack_41c + sVar4,"\t\tARM Relocator Output Instruction Number: %p\n",
                  *(undefined4 *)(param_1[4] + 0x400));
          sVar4 = strlen(acStack_41c);
          sprintf(acStack_41c + sVar4,"\t\tARM Relocator Output Size: %ld\n",
                  *(undefined4 *)(param_1[4] + 0x414));
          piVar10 = param_1 + 0x108;
          for (uVar6 = 0; uVar6 < (uint)param_1[0x708]; uVar6 = uVar6 + 1) {
            sVar4 = strlen(acStack_41c);
            piVar1 = piVar10 + 4;
            iVar5 = *piVar10;
            ppiVar2 = (int **)(piVar10 + 1);
            piVar10 = piVar10 + 6;
            sprintf(acStack_41c + sVar4,
                    "\t\t\torigin input(%p) -> relocated ouput(%p), relocate %ld instruction\n",
                    *(undefined4 *)(iVar5 + 8),*(undefined4 *)(**ppiVar2 + 8),*piVar1);
          }
        }
        else {
          pbVar11 = *(byte **)(param_1[0x70c] + 0x404);
          for (pbVar9 = pbVar11; pbVar9 < *(byte **)(param_1[0x70c] + 0x408); pbVar9 = pbVar9 + 1) {
            sprintf(acStack_51c + ((int)pbVar9 - (int)pbVar11) * 5,"0x%.2x ",(uint)*pbVar9);
          }
          sVar4 = strlen(acStack_41c);
          sprintf(acStack_41c + sVar4,"\t\t\tThumb Origin Prologue:: %s\n",acStack_51c);
          sVar4 = strlen(acStack_41c);
          sprintf(acStack_41c + sVar4,"\t\tThumb Relocator Input Start Address: %p\n",
                  *(undefined4 *)(param_1[0x70c] + 0x404));
          sVar4 = strlen(acStack_41c);
          sprintf(acStack_41c + sVar4,"\t\tThumb Relocator Input Instruction Number: %ld\n",
                  *(undefined4 *)(param_1[0x70c] + 0x400));
          sVar4 = strlen(acStack_41c);
          sprintf(acStack_41c + sVar4,"\t\tThumb Relocator Input Size: %p\n",
                  *(undefined4 *)(param_1[0x70c] + 0x414));
          sVar4 = strlen(acStack_41c);
          sprintf(acStack_41c + sVar4,"\t\tThumb Relocator Output Start Address: %p\n",*__ptr);
          sVar4 = strlen(acStack_41c);
          sprintf(acStack_41c + sVar4,"\t\tThumb Relocator Output Instruction Number: %p\n",
                  *(undefined4 *)(param_1[0x70c] + 0x400));
          sVar4 = strlen(acStack_41c);
          sprintf(acStack_41c + sVar4,"\t\tThumb Relocator Output Size: %ld\n",
                  *(undefined4 *)(param_1[0x70c] + 0x414));
          piVar10 = param_1 + 0x810;
          for (uVar6 = 0; uVar6 < (uint)param_1[0xe10]; uVar6 = uVar6 + 1) {
            sVar4 = strlen(acStack_41c);
            piVar1 = piVar10 + 4;
            iVar5 = *piVar10;
            ppiVar2 = (int **)(piVar10 + 1);
            piVar10 = piVar10 + 6;
            sprintf(acStack_41c + sVar4,
                    "\t\t\torigin input(%p) -> relocated ouput(%p), relocate %ld instruction\n",
                    *(undefined4 *)(iVar5 + 8),*(undefined4 *)(**ppiVar2 + 8),*piVar1);
          }
        }
        __android_log_print(4,"zzinfo",&UNK_000d2d33,acStack_41c);
      }
      free(__ptr);
      uVar3 = 1;
      goto LAB_000ba6c4;
    }
  }
  uVar3 = 2;
LAB_000ba6c4:
  if (local_1c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}


/* address=000ba734 symbol=ZzBuildInsnLeaveTrampoline */

void ZzBuildInsnLeaveTrampoline(undefined4 *param_1,int param_2)

{
  int *__ptr;
  undefined4 uVar1;
  int iVar2;
  size_t sVar3;
  undefined4 *puVar4;
  undefined auStack_51c [256];
  char acStack_41c [1024];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  memset(auStack_51c,0,0x100);
  puVar4 = param_1 + 0xf17;
  zz_thumb_writer_reset(puVar4,auStack_51c,0);
  zz_thumb_writer_put_sub_reg_imm(puVar4,0xd,0xc);
  zz_thumb_writer_put_str_reg_reg_offset(puVar4,1,0xd,0);
  zz_thumb_writer_put_ldr_b_reg_address(puVar4,1,param_2);
  zz_thumb_writer_put_str_reg_reg_offset(puVar4,1,0xd,4);
  zz_thumb_writer_put_ldr_reg_reg_offset(puVar4,1,0xd,0);
  zz_thumb_writer_put_add_reg_imm(puVar4,0xd,4);
  zz_thumb_writer_put_ldr_reg_address(puVar4,0xf,param_1[0x122a]);
  __ptr = (int *)zz_thumb_code_patch(puVar4,*param_1,0,0);
  uVar1 = 2;
  if (__ptr != (int *)0x0) {
    *(int *)(param_2 + 0x30) = *__ptr + 1;
    iVar2 = HookZzDebugInfoIsEnable(2);
    if (iVar2 != 0) {
      memset(acStack_41c,0,0x400);
      sVar3 = strlen(acStack_41c);
      strcpy(acStack_41c + sVar3,"======= InsnLeaveTrampoline ======= \n");
      sVar3 = strlen(acStack_41c);
      sprintf(acStack_41c + sVar3,"\t\ton_insn_leave_trampoline: %p\n",
              *(undefined4 *)(param_2 + 0x30));
      sVar3 = strlen(acStack_41c);
      sprintf(acStack_41c + sVar3,"\t\ttrampoline_length: %ld\n",__ptr[1]);
      __android_log_print(4,"zzinfo",&UNK_000d2d33,acStack_41c);
    }
    free(__ptr);
    uVar1 = 1;
  }
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar1);
  }
  return;
}


/* address=000ba87c symbol=ZzBuildLeaveTrampoline */

void ZzBuildLeaveTrampoline(undefined4 *param_1,int param_2)

{
  int *__ptr;
  undefined4 uVar1;
  int iVar2;
  size_t sVar3;
  undefined4 *puVar4;
  undefined auStack_51c [256];
  char acStack_41c [1024];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  memset(auStack_51c,0,0x100);
  puVar4 = param_1 + 0xf17;
  zz_thumb_writer_reset(puVar4,auStack_51c,0);
  zz_thumb_writer_put_sub_reg_imm(puVar4,0xd,0xc);
  zz_thumb_writer_put_str_reg_reg_offset(puVar4,1,0xd,0);
  zz_thumb_writer_put_ldr_b_reg_address(puVar4,1,param_2);
  zz_thumb_writer_put_str_reg_reg_offset(puVar4,1,0xd,4);
  zz_thumb_writer_put_ldr_reg_reg_offset(puVar4,1,0xd,0);
  zz_thumb_writer_put_add_reg_imm(puVar4,0xd,4);
  zz_thumb_writer_put_ldr_reg_address(puVar4,0xf,param_1[0x122b]);
  __ptr = (int *)zz_thumb_code_patch(puVar4,*param_1,0,0);
  uVar1 = 2;
  if (__ptr != (int *)0x0) {
    *(int *)(param_2 + 0x38) = *__ptr + 1;
    iVar2 = HookZzDebugInfoIsEnable(2);
    if (iVar2 != 0) {
      memset(acStack_41c,0,0x400);
      sVar3 = strlen(acStack_41c);
      strcpy(acStack_41c + sVar3,"======= LeaveTrampoline ======= \n");
      sVar3 = strlen(acStack_41c);
      sprintf(acStack_41c + sVar3,"\t\ton_leave_trampoline: %p\n",*(undefined4 *)(param_2 + 0x38));
      sVar3 = strlen(acStack_41c);
      sprintf(acStack_41c + sVar3,"\t\ttrampoline_length: %ld\n",__ptr[1]);
      __android_log_print(4,"zzinfo",&UNK_000d2d33,acStack_41c);
    }
    free(__ptr);
    uVar1 = 0;
  }
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar1);
  }
  return;
}


/* address=000ba9c4 symbol=ZzActivateTrampoline */

void ZzActivateTrampoline(int param_1,int *param_2)

{
  size_t sVar1;
  char *pcVar2;
  char *pcVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 uVar6;
  uint uVar7;
  uint uVar8;
  int iVar9;
  int iVar10;
  undefined auStack_51c [256];
  char acStack_41c [1024];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  memset(auStack_51c,0,0x100);
  uVar7 = param_2[4];
  iVar10 = param_2[0x1a];
  if ((uVar7 & 1) == 0) {
    iVar9 = param_1 + 0x3844;
    zz_arm_writer_reset(iVar9,auStack_51c,uVar7);
    if (*param_2 == 2) {
      iVar5 = param_2[10];
      if (*(int *)(iVar10 + 4) != 4) goto LAB_000badac;
      iVar5 = iVar5 - *(int *)(param_1 + 0x3c50);
LAB_000bad9e:
      zz_arm_writer_put_b_imm(iVar9,iVar5);
    }
    else {
      if (*(int *)(iVar10 + 4) == 4) {
        iVar5 = param_2[10] - *(int *)(param_1 + 0x3c50);
        goto LAB_000bad9e;
      }
      iVar5 = param_2[0xb];
LAB_000badac:
      zz_arm_writer_put_ldr_reg_address(iVar9,0xf,iVar5);
    }
    uVar4 = *(undefined4 *)(param_1 + 0x3c48);
    uVar6 = *(undefined4 *)(param_1 + 0x3c58);
    uVar8 = uVar7;
  }
  else {
    uVar8 = uVar7 & 0xfffffffe;
    iVar5 = param_1 + 0x3c5c;
    zz_thumb_writer_reset(iVar5,auStack_51c,uVar8);
    iVar9 = *(int *)(iVar10 + 4);
    if (*param_2 == 2) {
      if (iVar9 == 4) goto LAB_000baa40;
      if (((uVar7 & 2) != 0) && (iVar9 == 10)) {
        zz_thumb_writer_put_nop(iVar5);
      }
      iVar9 = param_2[10];
LAB_000baa6c:
      zz_thumb_writer_put_ldr_reg_address(iVar5,0xf,iVar9);
    }
    else {
      if (iVar9 != 4) {
        if (((int)(uVar7 << 0x1e) < 0) && (iVar9 == 10)) {
          zz_thumb_writer_put_nop(iVar5);
        }
        iVar9 = param_2[0xb];
        goto LAB_000baa6c;
      }
LAB_000baa40:
      zz_thumb_writer_put_b_imm32(iVar5,(param_2[10] & 0xfffffffeU) - *(int *)(param_1 + 0x4068));
    }
    uVar4 = *(undefined4 *)(param_1 + 0x4060);
    uVar6 = *(undefined4 *)(param_1 + 0x4070);
  }
  iVar9 = ZzMemoryPatchCode(uVar8,uVar4,uVar6);
  if (iVar9 == 0) {
    uVar4 = 2;
    goto LAB_000bacb6;
  }
  iVar9 = HookZzDebugInfoIsEnable();
  if (iVar9 != 0) {
    memset(acStack_41c,0,0x400);
    sVar1 = strlen(acStack_41c);
    strcpy(acStack_41c + sVar1,"======= ActiveTrampoline ======= \n");
    sVar1 = strlen(acStack_41c);
    sprintf(acStack_41c + sVar1,"\t\tHookZz Target Address: %p\n",param_2[4]);
    if ((uVar7 & 1) == 0) {
      sVar1 = strlen(acStack_41c);
      strcpy(acStack_41c + sVar1,"\t\tHookZz Target Address Arch Mode: ARM\n");
      if (*(int *)(iVar10 + 4) == 4) {
        sVar1 = strlen(acStack_41c);
        pcVar2 = acStack_41c + sVar1;
        pcVar3 = "\t\tARM Jump Type: Near Jump(B xxx)\n";
        goto LAB_000bab4c;
      }
      if (*(int *)(iVar10 + 4) == 8) {
        sVar1 = strlen(acStack_41c);
        pcVar2 = acStack_41c + sVar1;
        pcVar3 = "\t\tARM Brach Jump Type: Abs Jump(ldr pc, [pc, #-4])\n";
        goto LAB_000bab4c;
      }
    }
    else {
      sVar1 = strlen(acStack_41c);
      strcpy(acStack_41c + sVar1,"\t\tHookZz Target Address Arch Mode: Thumb\n");
      iVar10 = *(int *)(iVar10 + 4);
      if (iVar10 == 4) {
        sVar1 = strlen(acStack_41c);
        pcVar2 = acStack_41c + sVar1;
        pcVar3 = "\t\tThumb Brach Jump Type: Near Jump(B xxx)\n";
      }
      else if (iVar10 == 8) {
        sVar1 = strlen(acStack_41c);
        pcVar2 = acStack_41c + sVar1;
        pcVar3 = "\t\tThumb Brach Jump Type: Abs Jump(ldr pc, [pc, #x])\n";
      }
      else {
        if (((param_2[4] & 3U) == 0) || (iVar10 != 10)) goto LAB_000bab50;
        sVar1 = strlen(acStack_41c);
        pcVar2 = acStack_41c + sVar1;
        pcVar3 = "\t\tThumb Brach Jump Type: Align Abs Jump(nop; ldr pc, [pc, #x])\n";
      }
LAB_000bab4c:
      strcpy(pcVar2,pcVar3);
    }
LAB_000bab50:
    if ((*(char *)((int)param_2 + 9) != '\0') && (iVar10 = param_2[10], iVar10 != 0)) {
      sVar1 = strlen(acStack_41c);
      sprintf(acStack_41c + sVar1,"\t\ton_enter_transfer_trampoline: %p\n",iVar10);
    }
    iVar10 = *param_2;
    if (iVar10 == 4) {
      sVar1 = strlen(acStack_41c);
      strcpy(acStack_41c + sVar1,"\t\tHook Type: HOOK_TYPE_DBI\n");
      sVar1 = strlen(acStack_41c);
      sprintf(acStack_41c + sVar1,"\t\ton_dynamic_binary_instrumentation_trampoline: %p\n",
              param_2[0xf]);
      sVar1 = strlen(acStack_41c);
      pcVar2 = acStack_41c + sVar1;
      iVar10 = param_2[0xd];
      pcVar3 = "\t\ton_invoke_trampoline: %p\n";
LAB_000baca0:
      sprintf(pcVar2,pcVar3,iVar10);
    }
    else {
      if (iVar10 == 0) {
        sVar1 = strlen(acStack_41c);
        strcpy(acStack_41c + sVar1,"\t\tHook Type: HOOK_TYPE_ONE_INSTRUCTION\n");
        sVar1 = strlen(acStack_41c);
        sprintf(acStack_41c + sVar1,"\t\ton_enter_trampoline: %p\n",param_2[0xb]);
        sVar1 = strlen(acStack_41c);
        sprintf(acStack_41c + sVar1,"\t\ton_insn_leave_trampoline: %p\n",param_2[0xc]);
        sVar1 = strlen(acStack_41c);
        pcVar2 = acStack_41c + sVar1;
        iVar10 = param_2[0xd];
        pcVar3 = "\t\ton_invoke_trampoline: %p\n";
        goto LAB_000baca0;
      }
      if (iVar10 == 1) {
        sVar1 = strlen(acStack_41c);
        strcpy(acStack_41c + sVar1,"\t\tHook Type: HOOK_TYPE_FUNCTION_via_PRE_POST\n");
        sVar1 = strlen(acStack_41c);
        sprintf(acStack_41c + sVar1,"\t\ton_enter_trampoline: %p\n",param_2[0xb]);
        sVar1 = strlen(acStack_41c);
        sprintf(acStack_41c + sVar1,"\t\ton_leave_trampoline: %p\n",param_2[0xe]);
        sVar1 = strlen(acStack_41c);
        pcVar2 = acStack_41c + sVar1;
        iVar10 = param_2[0xd];
        pcVar3 = "\t\ton_invoke_trampoline: %p\n";
        goto LAB_000baca0;
      }
      if (iVar10 == 2) {
        sVar1 = strlen(acStack_41c);
        strcpy(acStack_41c + sVar1,"\t\tHook Type: HOOK_TYPE_FUNCTION_via_REPLACE\n");
        sVar1 = strlen(acStack_41c);
        sprintf(acStack_41c + sVar1,"\t\ton_enter_transfer_trampoline: %p\n",param_2[10]);
        sVar1 = strlen(acStack_41c);
        pcVar2 = acStack_41c + sVar1;
        iVar10 = param_2[0xd];
        pcVar3 = "\t\ton_invoke_trampoline: %p\n";
        goto LAB_000baca0;
      }
      if (iVar10 == 3) {
        sVar1 = strlen(acStack_41c);
        strcpy(acStack_41c + sVar1,"\t\tHook Type: HOOK_TYPE_FUNCTION_via_GOT\n");
        sVar1 = strlen(acStack_41c);
        sprintf(acStack_41c + sVar1,"\t\ton_enter_trampoline: %p\n",param_2[0xb]);
        sVar1 = strlen(acStack_41c);
        iVar10 = param_2[0xe];
        pcVar2 = acStack_41c + sVar1;
        pcVar3 = "\t\ton_leave_trampoline: %p\n";
        goto LAB_000baca0;
      }
    }
    __android_log_print(4,"zzinfo",&UNK_000d2d33,acStack_41c);
  }
  uVar4 = 3;
LAB_000bacb6:
  if (local_1c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}


/* address=000badd8 symbol=ctx_save */

longlong ctx_save(int param_1,undefined4 *param_2,int param_3)

{
  int iVar1;
  int unaff_r7;
  char in_ZR;
  longlong lVar2;
  
  iVar1 = __stack_chk_guard;
  lVar2 = CONCAT44(__stack_chk_guard,param_1);
  if (in_ZR == '\0') {
    param_3 = param_3 * 2;
    zz_thumb_writer_put_bx_reg(param_3,0xf,unaff_r7 >> 0x1f,param_3);
    zz_arm_writer_put_bytes(param_3,ctx_save,0x3c);
    zz_arm_writer_put_add_reg_reg_imm(param_3,1,0xf,1);
    zz_arm_writer_put_bx_reg(param_3,1);
    zz_thumb_writer_put_sub_reg_imm(param_3,0xd,8);
    zz_thumb_writer_put_add_reg_reg_imm(param_3,1,0xd,0x48);
    zz_thumb_writer_put_str_reg_reg_offset(param_3,1,0xd,4);
    zz_thumb_writer_put_ldr_reg_reg_offset(param_3,0,0xd,0x40);
    zz_thumb_writer_put_add_reg_reg_imm(param_3,1,0xd,0x44);
    zz_thumb_writer_put_add_reg_reg_imm(param_3,2,0xd,4);
    zz_thumb_writer_put_ldr_b_reg_address(param_3,0xe,function_context_end_invocation);
    zz_thumb_writer_put_blx_reg(param_3,0xe);
    zz_thumb_writer_put_add_reg_imm(param_3,0xd,8);
    zz_thumb_writer_put_bx_reg(param_3,0xf);
    zz_arm_writer_put_bytes(param_3,ctx_restore,0x38);
    zz_arm_writer_put_bx_to_thumb(param_3);
    zz_thumb_writer_put_add_reg_imm(param_3,0xd,4);
    zz_thumb_writer_put_ldr_index_reg_reg_offset(param_3,0xf,0xd,4);
    return ZEXT48(param_2) << 0x20;
  }
  if (*(code **)(param_1 + 0x20) != (code *)0x0) {
    lVar2 = (**(code **)(param_1 + 0x20))(param_3);
  }
  *param_2 = *(undefined4 *)(param_1 + 0x34);
  if (iVar1 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return lVar2;
}


/* address=000bae14 symbol=ctx_restore */

void ctx_restore(void *param_1,undefined4 param_2,int param_3,undefined4 param_4)

{
  int *__ptr;
  undefined4 uVar1;
  int iVar2;
  size_t sVar3;
  undefined4 *puVar4;
  int *unaff_r5;
  int unaff_r6;
  undefined4 *unaff_r7;
  undefined4 uStack00000004;
  int in_stack_0000050c;
  
  uStack00000004 = param_4;
  memset(param_1,0,param_3 << 1);
  puVar4 = unaff_r7 + 0xf17;
  zz_thumb_writer_reset(puVar4,uStack00000004,0);
  zz_thumb_writer_put_sub_reg_imm(puVar4,0xd,0xc);
  zz_thumb_writer_put_str_reg_reg_offset(puVar4,1,0xd,0);
  zz_thumb_writer_put_ldr_b_reg_address(puVar4,1,unaff_r6);
  zz_thumb_writer_put_str_reg_reg_offset(puVar4,1,0xd,4);
  zz_thumb_writer_put_ldr_reg_reg_offset(puVar4,1,0xd,0);
  zz_thumb_writer_put_add_reg_imm(puVar4,0xd,4);
  zz_thumb_writer_put_ldr_reg_address(puVar4,0xf,unaff_r7[0x122a]);
  __ptr = (int *)zz_thumb_code_patch(puVar4,*unaff_r7,0,0);
  uVar1 = 2;
  if (__ptr != (int *)0x0) {
    *(int *)(unaff_r6 + 0x30) = *__ptr + 1;
    iVar2 = HookZzDebugInfoIsEnable(2);
    if (iVar2 != 0) {
      memset(&stack0x0000010c,0,0x400);
      sVar3 = strlen(&stack0x0000010c);
      strcpy(&stack0x0000010c + sVar3,"======= InsnLeaveTrampoline ======= \n");
      sVar3 = strlen(&stack0x0000010c);
      sprintf(&stack0x0000010c + sVar3,"\t\ton_insn_leave_trampoline: %p\n",
              *(undefined4 *)(unaff_r6 + 0x30));
      sVar3 = strlen(&stack0x0000010c);
      sprintf(&stack0x0000010c + sVar3,"\t\ttrampoline_length: %ld\n",__ptr[1]);
      __android_log_print(4,"zzinfo",&UNK_000d2d33,&stack0x0000010c);
    }
    free(__ptr);
    uVar1 = 1;
  }
  if (in_stack_0000050c != *unaff_r5) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar1);
  }
  return;
}


/* address=000bae4c symbol=dynamic_binary_instrumentation_invocation */

void dynamic_binary_instrumentation_invocation(int param_1,undefined4 *param_2,undefined4 param_3)

{
  int iVar1;
  
  iVar1 = __stack_chk_guard;
  if (*(code **)(param_1 + 0x20) != (code *)0x0) {
    (**(code **)(param_1 + 0x20))(param_3);
  }
  *param_2 = *(undefined4 *)(param_1 + 0x34);
  if (iVar1 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000bae8c symbol=function_context_begin_invocation */

void function_context_begin_invocation(int *param_1,int *param_2,undefined4 param_3,int *param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar1 = __stack_chk_guard;
  iVar2 = ZzGetCurrentThreadStack(param_1[3]);
  if (iVar2 == 0) {
    iVar2 = ZzNewThreadStack(param_1[3]);
  }
  iVar3 = ZzNewCallStack();
  ZzPushCallStack(iVar2,iVar3);
  if ((code *)param_1[6] != (code *)0x0) {
    (*(code *)param_1[6])(param_3,iVar2,iVar3);
  }
  iVar2 = param_1[9];
  if (iVar2 == 0) {
    iVar2 = param_1[0xd];
  }
  *param_2 = iVar2;
  if (*param_1 == 1) {
    *(int *)(iVar3 + 0x14) = *param_4;
    *param_4 = param_1[0xe];
  }
  if (iVar1 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000baf10 symbol=insn_context_end_invocation */

void insn_context_end_invocation(int param_1,undefined4 *param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  iVar1 = __stack_chk_guard;
  uVar2 = ZzGetCurrentThreadStack(*(undefined4 *)(param_1 + 0xc));
  uVar3 = ZzPopCallStack();
  if (*(code **)(param_1 + 0x1c) != (code *)0x0) {
    (**(code **)(param_1 + 0x1c))(param_3,uVar2,uVar3);
  }
  *param_2 = *(undefined4 *)(param_1 + 0x14);
  ZzFreeCallStack(uVar3);
  if (iVar1 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000baf70 symbol=function_context_end_invocation */

void function_context_end_invocation(int param_1,undefined4 *param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  
  iVar1 = __stack_chk_guard;
  uVar2 = ZzGetCurrentThreadStack(*(undefined4 *)(param_1 + 0xc));
  iVar3 = ZzPopCallStack();
  if (*(code **)(param_1 + 0x1c) != (code *)0x0) {
    (**(code **)(param_1 + 0x1c))(param_3,uVar2,iVar3);
  }
  *param_2 = *(undefined4 *)(iVar3 + 0x14);
  ZzFreeCallStack(iVar3);
  if (iVar1 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}


/* address=000bafcc symbol=zz_thumb_thunker_build_enter_thunk */

undefined8
zz_thumb_thunker_build_enter_thunk
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  
  zz_thumb_writer_put_bx_reg(param_1,0xf,param_3,param_4,param_1,param_2,param_3);
  zz_arm_writer_put_bytes(param_1,ctx_save,0x3c);
  zz_arm_writer_put_add_reg_reg_imm(param_1,1,0xf,1);
  zz_arm_writer_put_bx_reg(param_1,1);
  zz_thumb_writer_put_sub_reg_imm(param_1,0xd,8);
  zz_thumb_writer_put_add_reg_reg_imm(param_1,1,0xd,0x48);
  zz_thumb_writer_put_str_reg_reg_offset(param_1,1,0xd,4);
  zz_thumb_writer_put_ldr_reg_reg_offset(param_1,0,0xd,0x40);
  zz_thumb_writer_put_add_reg_reg_imm(param_1,1,0xd,0x44);
  zz_thumb_writer_put_add_reg_reg_imm(param_1,2,0xd,4);
  zz_thumb_writer_put_add_reg_reg_imm(param_1,3,0xd,0x3c);
  zz_thumb_writer_put_ldr_b_reg_address(param_1,0xe,function_context_begin_invocation);
  zz_thumb_writer_put_blx_reg(param_1,0xe);
  zz_thumb_writer_put_add_reg_imm(param_1,0xd,8);
  zz_thumb_writer_put_bx_reg(param_1,0xf);
  zz_arm_writer_put_bytes(param_1,ctx_restore,0x38);
  zz_arm_writer_put_bx_to_thumb(param_1);
  zz_thumb_writer_put_add_reg_imm(param_1,0xd,4);
  uVar1 = 0;
  zz_thumb_writer_put_ldr_index_reg_reg_offset(param_1,0xf,0xd,4);
  return CONCAT44(param_2,uVar1);
}


/* address=000bb0b4 symbol=zz_thumb_thunker_build_insn_leave_thunk */

undefined8
zz_thumb_thunker_build_insn_leave_thunk
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  
  zz_thumb_writer_put_bx_reg(param_1,0xf,param_3,param_4,param_1,param_2,param_3);
  zz_arm_writer_put_bytes(param_1,ctx_save,0x3c);
  zz_arm_writer_put_add_reg_reg_imm(param_1,1,0xf,1);
  zz_arm_writer_put_bx_reg(param_1,1);
  zz_thumb_writer_put_sub_reg_imm(param_1,0xd,8);
  zz_thumb_writer_put_add_reg_reg_imm(param_1,1,0xd,0x48);
  zz_thumb_writer_put_str_reg_reg_offset(param_1,1,0xd,4);
  zz_thumb_writer_put_ldr_reg_reg_offset(param_1,0,0xd,0x40);
  zz_thumb_writer_put_add_reg_reg_imm(param_1,1,0xd,0x44);
  zz_thumb_writer_put_add_reg_reg_imm(param_1,2,0xd,4);
  zz_thumb_writer_put_add_reg_reg_imm(param_1,3,0xd,0x3c);
  zz_thumb_writer_put_ldr_b_reg_address(param_1,0xe,insn_context_end_invocation);
  zz_thumb_writer_put_blx_reg(param_1,0xe);
  zz_thumb_writer_put_add_reg_imm(param_1,0xd,8);
  zz_thumb_writer_put_bx_reg(param_1,0xf);
  zz_arm_writer_put_bytes(param_1,ctx_restore,0x38);
  zz_arm_writer_put_bx_to_thumb(param_1);
  zz_thumb_writer_put_add_reg_imm(param_1,0xd,4);
  uVar1 = 0;
  zz_thumb_writer_put_ldr_index_reg_reg_offset(param_1,0xf,0xd,4);
  return CONCAT44(param_2,uVar1);
}


/* address=000bb19c symbol=zz_thumb_thunker_build_dynamic_binary_instrumentation_thunk */

undefined8
zz_thumb_thunker_build_dynamic_binary_instrumentation_thunk
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  
  zz_thumb_writer_put_bx_reg(param_1,0xf,param_3,param_4,param_1,param_2,param_3);
  zz_arm_writer_put_bytes(param_1,ctx_save,0x3c);
  zz_arm_writer_put_add_reg_reg_imm(param_1,1,0xf,1);
  zz_arm_writer_put_bx_reg(param_1,1);
  zz_thumb_writer_put_sub_reg_imm(param_1,0xd,8);
  zz_thumb_writer_put_add_reg_reg_imm(param_1,1,0xd,0x48);
  zz_thumb_writer_put_str_reg_reg_offset(param_1,1,0xd,4);
  zz_thumb_writer_put_ldr_reg_reg_offset(param_1,0,0xd,0x40);
  zz_thumb_writer_put_add_reg_reg_imm(param_1,1,0xd,0x44);
  zz_thumb_writer_put_add_reg_reg_imm(param_1,2,0xd,4);
  zz_thumb_writer_put_add_reg_reg_imm(param_1,3,0xd,0x3c);
  zz_thumb_writer_put_ldr_b_reg_address(param_1,0xe,dynamic_binary_instrumentation_invocation);
  zz_thumb_writer_put_blx_reg(param_1,0xe);
  zz_thumb_writer_put_add_reg_imm(param_1,0xd,8);
  zz_thumb_writer_put_bx_reg(param_1,0xf);
  zz_arm_writer_put_bytes(param_1,ctx_restore,0x38);
  zz_arm_writer_put_bx_to_thumb(param_1);
  zz_thumb_writer_put_add_reg_imm(param_1,0xd,4);
  uVar1 = 0;
  zz_thumb_writer_put_ldr_index_reg_reg_offset(param_1,0xf,0xd,4);
  return CONCAT44(param_2,uVar1);
}


/* address=000bb284 symbol=zz_thumb_thunker_build_leave_thunk */

undefined8
zz_thumb_thunker_build_leave_thunk
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  
  zz_thumb_writer_put_bx_reg(param_1,0xf,param_3,param_4,param_1,param_2,param_3);
  zz_arm_writer_put_bytes(param_1,ctx_save,0x3c);
  zz_arm_writer_put_add_reg_reg_imm(param_1,1,0xf,1);
  zz_arm_writer_put_bx_reg(param_1,1);
  zz_thumb_writer_put_sub_reg_imm(param_1,0xd,8);
  zz_thumb_writer_put_add_reg_reg_imm(param_1,1,0xd,0x48);
  zz_thumb_writer_put_str_reg_reg_offset(param_1,1,0xd,4);
  zz_thumb_writer_put_ldr_reg_reg_offset(param_1,0,0xd,0x40);
  zz_thumb_writer_put_add_reg_reg_imm(param_1,1,0xd,0x44);
  zz_thumb_writer_put_add_reg_reg_imm(param_1,2,0xd,4);
  zz_thumb_writer_put_ldr_b_reg_address(param_1,0xe,function_context_end_invocation);
  zz_thumb_writer_put_blx_reg(param_1,0xe);
  zz_thumb_writer_put_add_reg_imm(param_1,0xd,8);
  zz_thumb_writer_put_bx_reg(param_1,0xf);
  zz_arm_writer_put_bytes(param_1,ctx_restore,0x38);
  zz_arm_writer_put_bx_to_thumb(param_1);
  zz_thumb_writer_put_add_reg_imm(param_1,0xd,4);
  uVar1 = 0;
  zz_thumb_writer_put_ldr_index_reg_reg_offset(param_1,0xf,0xd,4);
  return CONCAT44(param_2,uVar1);
}


/* address=000bb360 symbol=ZzThunkerBuildThunk */

void ZzThunkerBuildThunk(undefined4 *param_1)

{
  int *piVar1;
  int iVar2;
  size_t sVar3;
  undefined4 *puVar4;
  undefined4 uVar5;
  byte *pbVar6;
  byte *pbVar7;
  undefined auStack_121c [512];
  char acStack_101c [2048];
  char acStack_81c [2048];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  memset(auStack_121c,0,0x200);
  puVar4 = param_1 + 0xf17;
  zz_thumb_writer_reset(puVar4,auStack_121c,0);
  zz_thumb_thunker_build_enter_thunk(puVar4);
  piVar1 = (int *)zz_thumb_code_patch(puVar4,*param_1,0,0);
  if (piVar1 != (int *)0x0) {
    param_1[0x1229] = *piVar1 + 1;
    iVar2 = HookZzDebugInfoIsEnable();
    if (iVar2 != 0) {
      memset(acStack_101c,0,0x800);
      memset(acStack_81c,0,0x800);
      sVar3 = strlen(acStack_101c);
      sprintf(acStack_101c + sVar3,"%s\n","ZzThunkerBuildThunk:");
      pbVar7 = (byte *)param_1[0x1018];
      for (pbVar6 = pbVar7; pbVar6 < (byte *)(param_1[0x101c] + param_1[0x1018]);
          pbVar6 = pbVar6 + 1) {
        sprintf(acStack_81c + ((int)pbVar6 - (int)pbVar7) * 5,"0x%.2x ",(uint)*pbVar6);
      }
      __android_log_print(4,"zzinfo");
      sVar3 = strlen(acStack_101c);
      sprintf(acStack_101c + sVar3,"LogInfo: enter_thunk at %p, length: %ld.\n",*piVar1,piVar1[1]);
      __android_log_print(4,"zzinfo",&UNK_000d2d33,acStack_101c);
    }
    zz_thumb_writer_reset(puVar4,auStack_121c,0);
    zz_thumb_thunker_build_leave_thunk(puVar4);
    piVar1 = (int *)zz_thumb_code_patch(puVar4,*param_1,0,0);
    if (piVar1 != (int *)0x0) {
      param_1[0x122b] = *piVar1 + 1;
      iVar2 = HookZzDebugInfoIsEnable();
      if (iVar2 != 0) {
        memset(acStack_101c,0,0x800);
        memset(acStack_81c,0,0x800);
        sVar3 = strlen(acStack_101c);
        sprintf(acStack_101c + sVar3,"%s\n","ZzThunkerBuildThunk:");
        pbVar7 = (byte *)param_1[0x1018];
        for (pbVar6 = pbVar7; pbVar6 < (byte *)(param_1[0x101c] + param_1[0x1018]);
            pbVar6 = pbVar6 + 1) {
          sprintf(acStack_81c + ((int)pbVar6 - (int)pbVar7) * 5,"0x%.2x ",(uint)*pbVar6);
        }
        __android_log_print(4,"zzinfo");
        sVar3 = strlen(acStack_101c);
        sprintf(acStack_101c + sVar3,"LogInfo: leave_thunk at %p, length: %ld.\n",*piVar1,piVar1[1])
        ;
        __android_log_print(4,"zzinfo",&UNK_000d2d33,acStack_101c);
      }
      zz_thumb_writer_reset(puVar4,auStack_121c,0);
      zz_thumb_thunker_build_insn_leave_thunk(puVar4);
      piVar1 = (int *)zz_thumb_code_patch(puVar4,*param_1,0,0);
      if (piVar1 != (int *)0x0) {
        param_1[0x122a] = *piVar1 + 1;
        iVar2 = HookZzDebugInfoIsEnable();
        if (iVar2 != 0) {
          memset(acStack_101c,0,0x800);
          memset(acStack_81c,0,0x800);
          sVar3 = strlen(acStack_101c);
          sprintf(acStack_101c + sVar3,"%s\n","ZzThunkerBuildThunk:");
          pbVar7 = (byte *)param_1[0x1018];
          for (pbVar6 = pbVar7; pbVar6 < (byte *)(param_1[0x101c] + param_1[0x1018]);
              pbVar6 = pbVar6 + 1) {
            sprintf(acStack_81c + ((int)pbVar6 - (int)pbVar7) * 5,"0x%.2x ",(uint)*pbVar6);
          }
          __android_log_print(4,"zzinfo");
          sVar3 = strlen(acStack_101c);
          sprintf(acStack_101c + sVar3,"LogInfo: insn_leave_thunk at %p, length: %ld.\n",*piVar1,
                  piVar1[1]);
          __android_log_print(4,"zzinfo",&UNK_000d2d33,acStack_101c);
        }
        zz_thumb_writer_reset(puVar4,auStack_121c,0);
        zz_thumb_thunker_build_dynamic_binary_instrumentation_thunk(puVar4);
        piVar1 = (int *)zz_thumb_code_patch(puVar4,*param_1,0,0);
        if (piVar1 != (int *)0x0) {
          param_1[0x122c] = *piVar1 + 1;
          iVar2 = HookZzDebugInfoIsEnable();
          uVar5 = 1;
          if (iVar2 != 0) {
            memset(acStack_101c,0,0x800);
            memset(acStack_81c,0,0x800);
            sVar3 = strlen(acStack_101c);
            sprintf(acStack_101c + sVar3,"%s\n","ZzThunkerBuildThunk:");
            pbVar7 = (byte *)param_1[0x1018];
            for (pbVar6 = pbVar7; pbVar6 < (byte *)(param_1[0x101c] + param_1[0x1018]);
                pbVar6 = pbVar6 + 1) {
              sprintf(acStack_81c + ((int)pbVar6 - (int)pbVar7) * 5,"0x%.2x ",(uint)*pbVar6);
            }
            __android_log_print(4,"zzinfo",&UNK_000d2d33);
            sVar3 = strlen(acStack_101c);
            sprintf(acStack_101c + sVar3,
                    "LogInfo: dynamic_binary_instrumentation_thunk at %p, length: %ld.\n",*piVar1,
                    piVar1[1]);
            __android_log_print(4,"zzinfo",&UNK_000d2d33,acStack_101c);
            uVar5 = 1;
          }
          goto LAB_000bb74e;
        }
      }
    }
  }
  uVar5 = 2;
LAB_000bb74e:
  if (local_1c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar5);
}


/* address=000bb780 symbol=zz_vm_read_string */

void * zz_vm_read_string(void *param_1)

{
  char *pcVar1;
  void *__dest;
  size_t __size;
  
  __size = 0;
  do {
    pcVar1 = (char *)((int)param_1 + __size);
    __size = __size + 1;
    if (*pcVar1 == '\0') {
      __dest = malloc(__size);
      memcpy(__dest,param_1,__size);
      return __dest;
    }
  } while (__size != 0x400);
  return (void *)0x0;
}


/* address=000bb7b0 symbol=zz_vm_search_data */

void * zz_vm_search_data(void *param_1,void *param_2,void *param_3,size_t param_4)

{
  int iVar1;
  
  if (param_1 == (void *)0x0) {
    fprintf((FILE *)sin,"[!] %s:%d:%s(): search address start_addr(%p) < 0\n",
            "././src/kitzz/CommonKit/memory/common_memory_kit.c",0x1e,"zz_vm_search_data",0);
  }
  else if (param_2 < param_1) {
    fprintf((FILE *)sin,"[!] %s:%d:%s(): search start_add(%p) < end_addr(%p)\n",
            "././src/kitzz/CommonKit/memory/common_memory_kit.c",0x20,"zz_vm_search_data",param_1,
            param_2);
  }
  while( true ) {
    if (param_2 <= param_1) {
      return (void *)0x0;
    }
    iVar1 = memcmp(param_1,param_3,param_4);
    if (iVar1 == 0) break;
    param_1 = (void *)((int)param_1 + param_4);
  }
  return param_1;
}


/* address=000bb844 symbol=zz_vm_align_floor */

uint zz_vm_align_floor(uint param_1,int param_2)

{
  return param_1 & -param_2;
}


/* address=000bb84a symbol=zz_vm_align_ceil */

uint zz_vm_align_ceil(int param_1,int param_2)

{
  return param_2 + -1 + param_1 & -param_2;
}


/* address=000bb854 symbol=zz_linux_vm_get_memory_layout_via_pid */

void zz_linux_vm_get_memory_layout_via_pid(int param_1)

{
  int *__s;
  FILE *__stream;
  char *pcVar1;
  int iVar2;
  int local_1c4;
  int local_1c0;
  undefined auStack_1bc [4];
  undefined auStack_1b8 [4];
  undefined auStack_1b4 [4];
  undefined auStack_1b0 [12];
  char local_1a4;
  char local_1a3;
  char local_1a2;
  char acStack_19c [64];
  undefined auStack_15c [64];
  char acStack_11c [256];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  __s = (int *)malloc(0xc004);
  memset(__s,0,0xc004);
  if (param_1 < 1) {
    strcpy(acStack_19c,"/proc/self/maps");
  }
  else {
    sprintf(acStack_19c,"/proc/%d/maps",param_1);
  }
  __stream = fopen(acStack_19c,"r");
  while( true ) {
    pcVar1 = fgets(acStack_11c,0x100,__stream);
    if (pcVar1 == (char *)0x0) break;
    iVar2 = sscanf(acStack_11c,"%lx-%lx %s %llx %x:%x %lu %s",&local_1c4,&local_1c0,&local_1a4,
                   auStack_1b0,auStack_1bc,auStack_1b8,auStack_1b4,auStack_15c);
    if (iVar2 == 8) {
      iVar2 = *__s;
      __s[iVar2 * 3 + 2] = local_1c4;
      __s[iVar2 * 3 + 3] = local_1c0;
      *__s = iVar2 + 1;
      __s[iVar2 * 3 + 1] =
           (uint)(local_1a3 == 'w') * 2 | (uint)(local_1a4 == 'r') | (uint)(local_1a2 == 'x') * 4;
    }
  }
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(__s);
  }
  return;
}


/* address=000bb93c symbol=zz_linux_vm_search_code_cave */

void zz_linux_vm_search_code_cave(int param_1,int param_2,undefined4 param_3)

{
  int *__ptr;
  uint uVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  int *piVar7;
  int local_ac;
  undefined auStack_9c [128];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  memset(auStack_9c,0,0x80);
  uVar5 = param_1 - param_2;
  __ptr = (int *)zz_linux_vm_get_memory_layout_via_pid(0xffffffff);
  uVar6 = param_1 + param_2;
  local_ac = 0;
  piVar7 = __ptr + 1;
  do {
    if (*__ptr <= local_ac) {
      free(__ptr);
      iVar2 = 0;
LAB_000bb9da:
      if (local_1c == __stack_chk_guard) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail(iVar2);
    }
    if (*piVar7 == 5) {
      uVar1 = piVar7[1];
      uVar3 = piVar7[2];
      if (uVar1 < uVar5) {
        uVar1 = uVar5;
        if (uVar5 < uVar3) {
joined_r0x000bb9a6:
          uVar4 = uVar3;
          if (uVar6 <= uVar3) goto joined_r0x000bb9aa;
        }
        else {
joined_r0x000bb9aa:
          uVar4 = uVar6;
          if (uVar3 <= uVar6) goto LAB_000bb9c8;
        }
        iVar2 = zz_vm_search_data(uVar1,uVar4,auStack_9c,param_3);
        if (iVar2 != 0) {
          free(__ptr);
          goto LAB_000bb9da;
        }
      }
      else if (uVar1 <= uVar6) {
        if (uVar5 < uVar3) goto joined_r0x000bb9a6;
        goto joined_r0x000bb9aa;
      }
    }
LAB_000bb9c8:
    piVar7 = piVar7 + 3;
    local_ac = local_ac + 1;
  } while( true );
}


/* address=000bb9f0 symbol=PointerReadFailedHandler */

void PointerReadFailedHandler(void)

{
                    /* WARNING: Subroutine does not return */
  siglongjmp((__jmp_buf_tag *)0xf7048,1);
}


/* address=000bba00 symbol=zz_posix_vm_check_address_valid_via_signal */

void zz_posix_vm_check_address_valid_via_signal(void)

{
  int iVar1;
  code *local_4c;
  ulong local_48;
  ulong local_44;
  _union_1051 local_2c;
  ulong local_28;
  ulong local_24;
  ulong local_c;
  
  local_c = __stack_chk_guard;
  local_4c = PointerReadFailedHandler;
  local_48 = 0;
  local_44 = 0;
  local_28 = 0;
  local_24 = 0;
  local_2c = (_union_1051)local_4c;
  sigaction(0xb,(sigaction *)&local_4c,(sigaction *)&stack0xffffffc4);
  sigaction(7,(sigaction *)&local_2c,(sigaction *)&stack0xffffffe4);
  iVar1 = sigsetjmp(0xf7048,1);
  if (iVar1 != 0) {
    sigaction(0xb,(sigaction *)&stack0xffffffc4,(sigaction *)0x0);
    sigaction(7,(sigaction *)&stack0xffffffe4,(sigaction *)0x0);
  }
  if (local_c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar1 == 0);
}


/* address=000bba8c symbol=zz_posix_vm_get_page_size */

undefined4 zz_posix_vm_get_page_size(void)

{
  return 0x1000;
}


/* address=000bba92 symbol=zz_posix_vm_check_address_valid_via_msync */

bool zz_posix_vm_check_address_valid_via_msync(undefined4 param_1)

{
  size_t __len;
  int iVar1;
  int *piVar2;
  bool bVar3;
  
  __len = zz_posix_vm_get_page_size();
  iVar1 = __udivsi3(param_1,__len);
  iVar1 = msync((void *)(__len * iVar1),__len,1);
  bVar3 = true;
  if (iVar1 == -1) {
    piVar2 = (int *)__errno(1);
    bVar3 = *piVar2 != 0xc;
  }
  return bVar3;
}


/* address=000bbac4 symbol=zz_posix_vm_protect */

bool zz_posix_vm_protect(uint param_1,int param_2,int param_3)

{
  int iVar1;
  int iVar2;
  
  iVar1 = zz_posix_vm_get_page_size();
  iVar2 = __udivsi3((param_2 + -1 + param_1) - (int)(void *)(-iVar1 & param_1),iVar1);
  iVar1 = mprotect((void *)(-iVar1 & param_1),(iVar2 + 1) * iVar1,param_3);
  if (iVar1 == -1) {
    fprintf((FILE *)sin,"[!] %s:%d:%s(): r = %d, at (%p) error!\n",
            "././src/kitzz/PosixKit/memory/posix_memory_kit.c",0x4d,"zz_posix_vm_protect",0xffffffff
            ,param_1);
  }
  return iVar1 != -1;
}


/* address=000bbb34 symbol=zz_posix_vm_protect_as_executable */

void zz_posix_vm_protect_as_executable
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  zz_posix_vm_protect(param_1,param_2,7,param_4,param_4);
  return;
}


/* address=000bbb3e symbol=zz_posxi_vm_protect_as_writable */

void zz_posxi_vm_protect_as_writable
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  zz_posix_vm_protect(param_1,param_2,7,param_4,param_4);
  return;
}


/* address=000bbb48 symbol=zz_posix_vm_allocate_pages */

undefined8 zz_posix_vm_allocate_pages(int param_1)

{
  int iVar1;
  void *pvVar2;
  void *pvVar3;
  undefined4 uVar4;
  
  iVar1 = zz_posix_vm_get_page_size();
  if (param_1 == 0) {
    param_1 = 1;
  }
  uVar4 = 0xffffffff;
  pvVar2 = mmap((void *)0x0,param_1 * iVar1,3,0x22,-1,0);
  if (pvVar2 == (void *)0xffffffff) {
    perror("mmap");
    pvVar3 = (void *)0x0;
  }
  else {
    pvVar3 = (void *)zz_posix_vm_protect(pvVar2,param_1 * iVar1,3);
    if (pvVar3 != (void *)0x0) {
      pvVar3 = pvVar2;
    }
  }
  return CONCAT44(uVar4,pvVar3);
}


/* address=000bbb98 symbol=zz_posix_vm_allocate */

void zz_posix_vm_allocate(int param_1)

{
  int iVar1;
  
  iVar1 = zz_posix_vm_get_page_size();
  __udivsi3(-iVar1 & param_1 + -1 + iVar1);
  zz_posix_vm_allocate_pages();
  return;
}


/* address=000bbbb4 symbol=zz_posix_vm_allocate_near_pages */

void zz_posix_vm_allocate_near_pages(uint param_1,int param_2,int param_3)

{
  int iVar1;
  void *pvVar2;
  void *__addr;
  
  iVar1 = zz_posix_vm_get_page_size();
  if (param_3 == 0) {
    param_3 = 1;
  }
  __addr = (void *)((-iVar1 & param_1) - param_2);
  while( true ) {
    if ((void *)((-iVar1 & param_1) + param_2) <= __addr) {
      return;
    }
    pvVar2 = mmap(__addr,iVar1 * param_3,3,0x32,-1,0);
    if (pvVar2 != (void *)0xffffffff) break;
    __addr = (void *)((int)__addr + iVar1);
  }
  return;
}


/* address=000bbbf8 symbol=zz_posix_vm_search_text_code_cave */

void zz_posix_vm_search_text_code_cave(uint param_1,int param_2)

{
  int iVar1;
  int iVar2;
  void *__src;
  undefined auStack_11c [128];
  undefined auStack_9c [128];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  memset(auStack_11c,0,0x80);
  iVar1 = zz_posix_vm_get_page_size();
  for (__src = (void *)((-iVar1 & param_1) - param_2);
      __src < (void *)((-iVar1 & param_1) + param_2); __src = (void *)((int)__src + 0x1000)) {
    iVar2 = zz_posix_vm_check_address_valid_via_signal(__src);
    if (iVar2 != 0) {
      memcpy(auStack_9c,__src,0x80);
      iVar2 = memcmp(auStack_9c,auStack_11c,0x80);
      if (iVar2 == 0) goto LAB_000bbc58;
    }
  }
  __src = (void *)0x0;
LAB_000bbc58:
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(__src);
  }
  return;
}


/* address=000bbc70 symbol=zz_posix_vm_patch_code */

undefined8 zz_posix_vm_patch_code(uint param_1,void *param_2,size_t param_3)

{
  int iVar1;
  void *__dest;
  size_t __n;
  void *__src;
  
  iVar1 = zz_posix_vm_get_page_size();
  __src = (void *)(param_1 & -iVar1);
  __n = (((param_3 - 1) + param_1 & -iVar1) + iVar1) - (int)__src;
  __dest = (void *)zz_posix_vm_allocate(__n);
  memcpy(__dest,__src,__n);
  memcpy((void *)((int)__dest + (param_1 - (int)__src)),param_2,param_3);
  zz_posxi_vm_protect_as_writable(__src,__n);
  memcpy(__src,__dest,__n);
  zz_posix_vm_protect_as_executable(__src,__n);
  munmap(__dest,__n);
  return CONCAT44(param_1 - (int)__src,1);
}


/* address=000bbcd2 symbol=zz_posix_thread_new_thread_local_key_list */

undefined4 * zz_posix_thread_new_thread_local_key_list(void)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  
  puVar1 = (undefined4 *)malloc(0xc);
  puVar1[1] = 4;
  puVar2 = (undefined4 *)malloc(0x10);
  puVar1[2] = puVar2;
  if (puVar2 != (undefined4 *)0x0) {
    *puVar1 = 0;
    puVar2 = puVar1;
  }
  return puVar2;
}


/* address=000bbcf4 symbol=zz_posix_thread_add_thread_local_key */

undefined4 zz_posix_thread_add_thread_local_key(uint *param_1,undefined4 param_2)

{
  undefined4 uVar1;
  void *pvVar2;
  uint uVar3;
  
  if (param_1 == (uint *)0x0) {
LAB_000bbcfa:
    uVar1 = 0;
  }
  else {
    if (param_1[1] <= *param_1) {
      pvVar2 = realloc((void *)param_1[2],param_1[1] << 3);
      if (pvVar2 == (void *)0x0) goto LAB_000bbcfa;
      param_1[2] = (uint)pvVar2;
      param_1[1] = param_1[1] << 1;
    }
    uVar1 = 1;
    uVar3 = *param_1;
    *param_1 = uVar3 + 1;
    *(undefined4 *)(uVar3 * 4 + param_1[2]) = param_2;
  }
  return uVar1;
}


/* address=000bbd30 symbol=zz_posix_thread_free_thread_local_key */

int zz_posix_thread_free_thread_local_key(int param_1)

{
  uint *puVar1;
  int *piVar2;
  uint uVar3;
  uint uVar4;
  
  puVar1 = g_thread_local_key_list;
  uVar3 = 0;
  if (param_1 != 0) {
    for (; uVar4 = *puVar1, uVar3 < uVar4; uVar3 = uVar3 + 1) {
      piVar2 = (int *)(puVar1[2] + uVar3 * 4);
      if (*piVar2 == param_1) {
        *piVar2 = *(int *)((uVar4 + 0x3fffffff) * 4 + puVar1[2]);
      }
    }
    *puVar1 = uVar4 - 1;
    param_1 = 1;
  }
  return param_1;
}


/* address=000bbd74 symbol=zz_posix_thread_initialize_thread_local_key_list */

void zz_posix_thread_initialize_thread_local_key_list(void)

{
  if (g_thread_local_key_list == 0) {
    g_thread_local_key_list = zz_posix_thread_new_thread_local_key_list();
  }
  return;
}


/* address=000bbd90 symbol=zz_posix_thread_new_thread_local_key_ptr */

pthread_key_t * zz_posix_thread_new_thread_local_key_ptr(void)

{
  pthread_key_t *__key;
  
  if (g_thread_local_key_list == 0) {
    zz_posix_thread_initialize_thread_local_key_list();
  }
  __key = (pthread_key_t *)malloc(4);
  zz_posix_thread_add_thread_local_key(g_thread_local_key_list,__key);
  pthread_key_create(__key,(__destr_function *)0x0);
  return __key;
}


/* address=000bbdc4 symbol=zz_posix_thread_get_current_thread_data */

pthread_key_t * zz_posix_thread_get_current_thread_data(pthread_key_t *param_1)

{
  pthread_key_t *ppVar1;
  int iVar2;
  
  if (param_1 != (pthread_key_t *)0x0) {
    for (iVar2 = 0; iVar2 != *g_thread_local_key_list; iVar2 = iVar2 + 1) {
      if (*(pthread_key_t **)(iVar2 * 4 + g_thread_local_key_list[2]) == param_1) {
        ppVar1 = (pthread_key_t *)pthread_getspecific(*param_1);
        return ppVar1;
      }
    }
    param_1 = (pthread_key_t *)0x0;
  }
  return param_1;
}


/* address=000bbdf8 symbol=zz_posix_thread_set_current_thread_data */

bool zz_posix_thread_set_current_thread_data(pthread_key_t *param_1,void *param_2)

{
  int iVar1;
  
  iVar1 = 0;
  while( true ) {
    if (iVar1 == *g_thread_local_key_list) {
      return false;
    }
    if (*(pthread_key_t **)(iVar1 * 4 + g_thread_local_key_list[2]) == param_1) break;
    iVar1 = iVar1 + 1;
  }
  iVar1 = pthread_setspecific(*param_1,param_2);
  return iVar1 != 0;
}


/* address=000bbe2c symbol=zz_posix_get_current_thread_id */

void zz_posix_get_current_thread_id(void)

{
  pthread_self();
  return;
}


/* address=000bbe34 symbol=thunk_FUN_000bc000 */

void thunk_FUN_000bc000(void)

{
  FUN_000bc000();
  return;
}


/* address=000bbe38 symbol=FUN_000bbe38 */

void FUN_000bbe38(undefined4 param_1)

{
  FUN_000bc000();
  _ZdlPv(param_1);
  return;
}


/* address=000bbef8 symbol=FUN_000bbef8 */

undefined4
FUN_000bbef8(undefined4 param_1,undefined4 param_2,undefined4 *param_3,undefined4 *param_4)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_000bd24e();
  if (iVar1 == 1) {
    param_4[1] = param_2;
    *param_4 = 1;
    uVar2 = *param_3;
    *(undefined *)(param_4 + 4) = 1;
    param_4[2] = uVar2;
    return 1;
  }
  return 0;
}


/* address=000bbf28 symbol=FUN_000bbf28 */

undefined4
FUN_000bbf28(undefined4 param_1,undefined4 param_2,undefined4 *param_3,undefined4 *param_4)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_000bd24e();
  if (iVar1 == 1) {
    param_4[1] = param_2;
    *param_4 = 1;
    uVar2 = *param_3;
    *(undefined *)(param_4 + 4) = 1;
    param_4[2] = uVar2;
    return 1;
  }
  return 0;
}


/* address=000bbf58 symbol=FUN_000bbf58 */

undefined4 * FUN_000bbf58(undefined4 *param_1,int param_2)

{
  int iVar1;
  bool bVar2;
  
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  *(undefined *)(param_1 + 4) = 1;
  if (param_2 != 0) {
    iVar1 = FUN_000bc548(param_2,&PTR_PTR_DAT_000ebc64,&PTR_PTR_DAT_000ebdb0,0);
    bVar2 = iVar1 != 0;
    if (bVar2) {
      iVar1 = *(int *)(iVar1 + 8);
    }
    if (bVar2) {
      param_1[3] = iVar1;
    }
  }
  return param_1;
}


/* address=000bbfa0 symbol=FUN_000bbfa0 */

undefined4 FUN_000bbfa0(undefined4 param_1)

{
  void *__addr;
  
  pthread_mutex_lock((pthread_mutex_t *)&DAT_000f7164);
  __addr = DAT_000f7168;
  while (__addr != (void *)0x0) {
    DAT_000f7168 = *(void **)((int)__addr + DAT_000f7160);
    munmap(__addr,0x1000);
    __addr = DAT_000f7168;
  }
  DAT_000f7168 = __addr;
  pthread_mutex_unlock((pthread_mutex_t *)&DAT_000f7164);
  pthread_mutex_destroy((pthread_mutex_t *)&DAT_000f7164);
  pthread_key_delete(DAT_000f7154);
  return param_1;
}


/* address=000bc000 symbol=FUN_000bc000 */

void FUN_000bc000(void)

{
  return;
}


/* address=000bc064 symbol=FUN_000bc064 */

int ** FUN_000bc064(void)

{
  int iVar1;
  int **ppiVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  int iVar6;
  undefined4 *puVar7;
  
  ppiVar2 = (int **)pthread_getspecific(DAT_000f7154);
  if (ppiVar2 != (int **)0x0) {
    return ppiVar2;
  }
  pthread_mutex_lock((pthread_mutex_t *)&DAT_000f7164);
  ppiVar2 = DAT_000f716c;
  if (DAT_000f716c == (int **)0x0) {
    puVar3 = (undefined4 *)mmap((void *)0x0,0x1000,3,0x22,-1,0);
    if (puVar3 == (undefined4 *)0xffffffff) {
      ppiVar2 = (int **)0x0;
      goto LAB_000bc0fc;
    }
    *(undefined4 **)((int)puVar3 + DAT_000f7160) = DAT_000f7168;
    iVar1 = DAT_000f7158;
    DAT_000f7168 = puVar3;
    if (DAT_000f715c == 0) {
      puVar7 = &DAT_000f716c;
    }
    else {
      puVar7 = (undefined4 *)(DAT_000f7158 * (DAT_000f715c + -1) + (int)puVar3);
      puVar5 = &DAT_000f716c;
      iVar6 = DAT_000f715c;
      do {
        puVar4 = puVar3;
        iVar6 = iVar6 + -1;
        *puVar5 = puVar4;
        puVar3 = (undefined4 *)((int)puVar4 + iVar1);
        puVar5 = puVar4;
      } while (iVar6 != 0);
    }
    *puVar7 = 0;
    ppiVar2 = DAT_000f716c;
  }
  DAT_000f716c = (int **)*ppiVar2;
  __aeabi_memclr4(ppiVar2,DAT_000f7158);
LAB_000bc0fc:
  pthread_mutex_unlock((pthread_mutex_t *)&DAT_000f7164);
  if (ppiVar2 != (int **)0x0) {
    pthread_setspecific(DAT_000f7154,ppiVar2);
    return ppiVar2;
  }
                    /* WARNING: Subroutine does not return */
  FUN_000bc77c("Can\'t allocate thread-specific C++ runtime info block.");
}


/* address=000bc1b4 symbol=FUN_000bc1b4 */

int FUN_000bc1b4(int param_1)

{
  int iVar1;
  
  iVar1 = memalign(8,param_1 + 0x90);
  if (iVar1 != 0) {
    __aeabi_memclr8(iVar1,0x90);
    return iVar1 + 0x90;
  }
                    /* WARNING: Subroutine does not return */
  FUN_000bc77c("Not enough memory to allocate exception!");
}


/* address=000bc26c symbol=FUN_000bc26c */

undefined4 FUN_000bc26c(undefined4 *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 *puVar3;
  
  puVar1 = (undefined4 *)FUN_000bc064();
  iVar2 = FUN_000bc460(*param_1,param_1[1]);
  puVar3 = (undefined4 *)*puVar1;
  if (iVar2 == 0) {
    if (puVar3 != (undefined4 *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_000bc77c("Can\'t handle non-C++ exception!");
    }
    puVar3 = (undefined4 *)0x0;
  }
  iVar2 = param_1[-8];
  if (iVar2 < 0) {
    iVar2 = -iVar2;
  }
  param_1[-8] = iVar2 + 1;
  if (puVar3 != param_1 + -0xe) {
    param_1[-9] = puVar3;
    *puVar1 = param_1 + -0xe;
  }
  puVar1[1] = puVar1[1] + -1;
  return param_1[-1];
}


/* address=000bc380 symbol=FUN_000bc380 */

void FUN_000bc380(int param_1,undefined4 param_2,int param_3)

{
  *(undefined4 *)(param_1 + -0x8c) = param_2;
  *(int *)(param_1 + -0x88) = param_3;
  *(undefined4 *)(param_1 + -0x58) = 0x432b2b00;
  *(undefined4 *)(param_1 + -0x54) = 0x474e5543;
  *(undefined4 *)(param_1 + -0x50) = 0xbc3b1;
  FUN_000bc3b8(param_1 + -0x90);
  if (*(code **)(param_3 + -0x30) != (code *)0x0) {
    (**(code **)(param_3 + -0x30))(param_3 + 0x58);
  }
  free((void *)(param_3 + -0x38));
  return;
}


/* address=000bc3b8 symbol=FUN_000bc3b8 */

/* WARNING: Removing unreachable block (ram,0x000bc47c) */

undefined4 FUN_000bc3b8(int param_1)

{
  undefined uVar1;
  int iVar2;
  undefined4 uVar3;
  int *piVar4;
  int iVar5;
  undefined extraout_r1;
  int *extraout_r1_00;
  int iVar6;
  int unaff_r6;
  
  iVar2 = FUN_000bc064();
  uVar3 = FUN_000bd1d0();
  *(undefined4 *)(param_1 + 0xc) = uVar3;
  uVar3 = FUN_000bd184();
  *(undefined4 *)(param_1 + 0x10) = uVar3;
  param_1 = param_1 + 0x38;
  *(int *)(iVar2 + 4) = *(int *)(iVar2 + 4) + 1;
  ___Unwind_RaiseException(param_1);
  FUN_000bc7fc(param_1);
  piVar4 = (int *)FUN_000bc064();
  iVar5 = *piVar4;
  if (iVar5 != 0) {
    if ((*(uint *)(iVar5 + 0x3c) ^ 0x474e5543 | *(uint *)(iVar5 + 0x38) ^ 0x432b2b00) == 0) {
      *(int *)(iVar5 + 0x18) = -*(int *)(iVar5 + 0x18);
      FUN_000bc3b8();
      piVar4 = extraout_r1_00;
    }
    uVar3 = 0;
    *piVar4 = 0;
    iVar5 = FUN_000bc3b8();
    *(undefined *)(iVar5 + 0x11) = extraout_r1;
    *(int *)(unaff_r6 + 0x54) = param_1;
    uVar1 = (undefined)iVar2;
    *(undefined *)(iVar2 + 1) = uVar1;
    iVar6 = *(int *)(unaff_r6 + 0x14);
    *(int *)(iVar2 + 0x74) = unaff_r6;
    *(char *)(iVar6 + 0x10) = (char)iVar5;
    *(undefined4 *)(unaff_r6 + 0x54) = uVar3;
    iVar5 = *(int *)(unaff_r6 + 4);
    uVar3 = *(undefined4 *)(iVar5 + 100);
    *(undefined4 *)(iVar5 + 0x50) = 0x77;
    *(undefined *)(iVar5 + 1) = uVar1;
    iVar5 = *(int *)(unaff_r6 + 0x14);
    *(undefined *)(iVar5 + 0x10) = 0x77;
    *(undefined4 *)(iVar2 + 0x14) = 0x77;
    iVar2 = *(int *)(iVar5 + 0x74);
    *(undefined *)(iVar2 + 0xd) = uVar1;
    *(char *)(*(byte *)(iVar2 + 1) + 0xd) = (char)uVar3;
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  FUN_000bc77c(0xbc428);
}


/* address=000bc460 symbol=FUN_000bc460 */

bool FUN_000bc460(uint param_1,uint param_2)

{
  return (param_1 ^ 0x432b2b00 | param_2 ^ 0x474e5543) == 0;
}


/* address=000bc486 symbol=FUN_000bc486 */

bool FUN_000bc486(void)

{
  int iVar1;
  
  iVar1 = FUN_000bc064();
  if (iVar1 == 0) {
    return false;
  }
  return *(int *)(iVar1 + 4) == 0;
}


/* address=000bc4f4 symbol=FUN_000bc4f4 */

void FUN_000bc4f4(undefined4 *param_1)

{
  if (param_1 == (undefined4 *)0x0) {
    return;
  }
  pthread_mutex_lock((pthread_mutex_t *)&DAT_000f7164);
  *param_1 = DAT_000f716c;
  DAT_000f716c = param_1;
  pthread_mutex_unlock((pthread_mutex_t *)&DAT_000f7164);
  return;
}


/* address=000bc52c symbol=_ZdlPv */

void _ZdlPv(void *param_1)

{
  if (param_1 == (void *)0x0) {
    return;
  }
  free(param_1);
  return;
}


/* address=000bc536 symbol=_ZdaPv */

void _ZdaPv(void)

{
  _ZdlPv();
  return;
}


/* address=000bc548 symbol=FUN_000bc548 */

int FUN_000bc548(int *param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  int *local_3c;
  undefined4 uStack_38;
  undefined4 local_34;
  int iStack_30;
  undefined4 local_2c;
  int local_28;
  
  iVar6 = (int)param_1 + *(int *)(*param_1 + -8);
  uVar5 = *(undefined4 *)(*(int *)((int)param_1 + *(int *)(*param_1 + -8)) + -4);
  iVar1 = FUN_000bc5e4(iVar6,uVar5,0,param_3);
  if (iVar1 == 0) {
    return 0;
  }
  if (param_4 != -2) {
    if ((-1 < param_4) && (iVar1 != -1)) {
      return (int)param_1 - param_4;
    }
    local_2c = 0;
    local_28 = 0;
    iVar2 = iVar6;
    uVar4 = uVar5;
    if (iVar1 != -1) {
      iVar2 = iVar1;
      uVar4 = param_3;
    }
    local_3c = param_1;
    uStack_38 = param_2;
    local_34 = param_3;
    iStack_30 = param_4;
    FUN_000bc6ac(iVar2,uVar4,&local_3c);
    if (1 < local_28 + 1U) {
      return local_28;
    }
  }
  iVar2 = 0;
  if ((iVar1 != -1) &&
     (piVar3 = (int *)FUN_000bc5e4(iVar6,uVar5,param_1,param_2), piVar3 == param_1)) {
    iVar2 = iVar1;
  }
  return iVar2;
}


/* address=000bc5e4 symbol=FUN_000bc5e4 */

int * FUN_000bc5e4(int *param_1,int *param_2,int *param_3,undefined4 param_4)

{
  int iVar1;
  int *piVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  int *piVar6;
  int *piVar7;
  
  while (iVar1 = FUN_000bd24e(param_2,param_4), iVar1 == 0) {
    iVar1 = (**(code **)(*param_2 + 0xc))(param_2);
    if (iVar1 != 1) {
      if (iVar1 != 0) {
        if (iVar1 == 2) {
          if (param_2[3] != 0) {
            iVar1 = *param_1;
            uVar5 = 0;
            piVar7 = (int *)0x0;
            do {
              uVar3 = param_2[uVar5 * 2 + 5];
              piVar6 = piVar7;
              if ((uVar3 & 2) != 0) {
                iVar4 = (int)uVar3 >> 8;
                if ((uVar3 & 1) != 0) {
                  iVar4 = *(int *)(iVar1 + iVar4);
                }
                piVar2 = (int *)FUN_000bc5e4((int)param_1 + iVar4,param_2[uVar5 * 2 + 4],param_3,
                                             param_4);
                if ((piVar2 != (int *)0x0) &&
                   ((piVar2 == (int *)0xffffffff ||
                    ((piVar6 = piVar2, piVar7 != (int *)0x0 && (piVar6 = piVar7, piVar7 != piVar2)))
                    ))) {
                  return (int *)0xffffffff;
                }
              }
              uVar5 = uVar5 + 1;
              piVar7 = piVar6;
              if ((uint)param_2[3] <= uVar5) {
                return piVar6;
              }
            } while( true );
          }
        }
        else {
          __assert2("/usr/local/google/buildbot/src/android/ndk-release-r16/out/stlport/ndk/sources/cxx-stl/gabi++/src/dynamic_cast.cc"
                    ,0xad,
                    "const void *(anonymous namespace)::walk_object(const void *, const abi::__class_type_info *, const void *, const abi::__class_type_info *)"
                    ,&DAT_000bc6a8);
        }
      }
      return (int *)0x0;
    }
    param_2 = (int *)param_2[2];
  }
  piVar7 = param_1;
  if (param_1 != param_3) {
    piVar7 = (int *)0x0;
  }
  if (param_3 != (int *)0x0) {
    return piVar7;
  }
  return param_1;
}


/* address=000bc6ac symbol=FUN_000bc6ac */

void FUN_000bc6ac(int *param_1,int *param_2,int **param_3)

{
  int iVar1;
  int *piVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  int *piVar7;
  
  piVar7 = param_3[4];
  iVar1 = FUN_000bd24e(param_2,param_3[2]);
  if (iVar1 == 1) {
    param_3[4] = param_1;
  }
  if (((*param_3 == param_1) && (param_3[4] != (int *)0x0)) &&
     (iVar1 = FUN_000bd24e(param_2,param_3[1]), iVar1 == 1)) {
    piVar2 = param_3[4];
    if (param_3[5] != (int *)0x0) {
      if (param_3[5] == piVar2) goto LAB_000bc766;
      piVar2 = (int *)0xffffffff;
    }
    param_3[5] = piVar2;
  }
  else {
    iVar1 = (**(code **)(*param_2 + 0xc))(param_2);
    if (iVar1 != 0) {
      if (iVar1 == 2) {
        uVar3 = param_2[3];
        if (uVar3 != 0) {
          iVar1 = *param_1;
          uVar6 = 0;
          do {
            uVar5 = param_2[uVar6 * 2 + 5];
            if ((uVar5 & 2) != 0) {
              iVar4 = (int)uVar5 >> 8;
              if ((uVar5 & 1) != 0) {
                iVar4 = *(int *)(iVar1 + iVar4);
              }
              FUN_000bc6ac(iVar4 + (int)param_1,param_2[uVar6 * 2 + 4],param_3);
              if (param_3[5] == (int *)0xffffffff) break;
              uVar3 = param_2[3];
            }
            uVar6 = uVar6 + 1;
          } while (uVar6 < uVar3);
        }
      }
      else if (iVar1 == 1) {
        FUN_000bc6ac(param_1,param_2[2],param_3);
      }
      else {
        __assert2("/usr/local/google/buildbot/src/android/ndk-release-r16/out/stlport/ndk/sources/cxx-stl/gabi++/src/dynamic_cast.cc"
                  ,0x105,
                  "void (anonymous namespace)::base_to_derived_cast(const void *, const abi::__class_type_info *, (anonymous namespace)::cast_context *)"
                  ,&DAT_000bc778);
      }
    }
  }
LAB_000bc766:
  param_3[4] = piVar7;
  return;
}


/* address=000bc77c symbol=FUN_000bc77c */

void FUN_000bc77c(undefined4 param_1)

{
  int iVar1;
  code *pcVar2;
  
  fprintf((FILE *)sin,"PANIC:GAbi++:%s\n",param_1);
  iVar1 = dlopen("liblog.so",0);
  if (iVar1 != 0) {
    pcVar2 = (code *)dlsym(iVar1,"__android_log_print");
    if (pcVar2 != (code *)0x0) {
      (*pcVar2)(7,"GAbi++",param_1);
    }
    dlclose(iVar1);
  }
                    /* WARNING: Subroutine does not return */
  FUN_000bd128();
}


/* address=000bc7fc symbol=FUN_000bc7fc */

void FUN_000bc7fc(void)

{
  FUN_000bc26c();
                    /* WARNING: Subroutine does not return */
  FUN_000bd128();
}


/* address=000bc808 symbol=FUN_000bc808 */

/* WARNING: Type propagation algorithm not settling */

void FUN_000bc808(uint *param_1,undefined4 *******param_2,int param_3,int param_4,undefined4 param_5
                 )

{
  undefined uVar1;
  byte *pbVar2;
  undefined *puVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  int *piVar9;
  undefined4 uVar10;
  undefined4 ******ppppppuVar11;
  undefined4 *******pppppppuVar12;
  uint uVar13;
  code *pcVar14;
  int *piVar15;
  int *piVar16;
  undefined4 *******pppppppuVar17;
  undefined4 *******pppppppuVar18;
  code *UNRECOVERED_JUMPTABLE_01;
  code *pcVar19;
  bool bVar20;
  undefined8 uVar21;
  code *local_84;
  undefined4 *******pppppppuStack_80;
  int iStack_7c;
  undefined4 *******pppppppuStack_78;
  int *piStack_74;
  undefined **ppuStack_70;
  code *UNRECOVERED_JUMPTABLE_00;
  undefined *local_68;
  code *pcStack_64;
  undefined4 *******local_60;
  uint local_5c;
  undefined **local_58;
  undefined **local_54;
  uint *local_50;
  uint local_4c;
  uint local_48;
  int local_44;
  int local_40;
  undefined4 *******local_3c;
  byte *local_38;
  undefined4 *******local_34;
  undefined4 *******local_30;
  undefined4 *******local_2c;
  undefined4 *******local_28;
  
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  param_1[4] = 0;
  param_1[5] = 0;
  param_1[6] = 3;
  if (((uint)param_2 & 1) == 0) {
    if (-1 < (int)param_2 << 0x1e) goto LAB_000bc842;
    if (((uint)param_2 & 0xc) == 0xc) {
      uVar4 = 2;
      goto LAB_000bc844;
    }
  }
  else if (((uint)param_2 & 0xe) != 0) {
LAB_000bc842:
    uVar4 = 3;
    goto LAB_000bc844;
  }
  local_2c = (undefined4 *******)_Unwind_GetLanguageSpecificData(param_5);
  if (local_2c != (undefined4 *******)0x0) {
    param_1[3] = (uint)local_2c;
    local_60 = &local_28;
    pcVar14 = (code *)0x0;
    local_48 = (uint)param_2 & 1;
    local_40 = param_3;
    local_3c = param_2;
    _Unwind_VRS_Get(param_5,0,0xf);
    pppppppuVar17 = local_28;
    uVar4 = _Unwind_GetRegionStart(param_5);
    uVar1 = *(undefined *)local_2c;
    local_2c = (undefined4 *******)((int)local_2c + 1);
    local_4c = FUN_000bebf8(&local_2c,uVar1);
    ppppppuVar11 = (undefined4 ******)((int)local_2c + 1);
    pppppppuVar12 = (undefined4 *******)(uint)*(byte *)local_2c;
    if (local_4c == 0) {
      local_4c = uVar4;
    }
    local_50 = param_1;
    local_44 = param_4;
    if (pppppppuVar12 == (undefined4 *******)0xff) {
      local_38 = (byte *)0x0;
    }
    else {
      local_2c = (undefined4 *******)ppppppuVar11;
      iVar5 = FUN_000beb88(&local_2c);
      local_38 = (byte *)((int)local_2c + iVar5);
      ppppppuVar11 = local_2c;
    }
    local_2c = (undefined4 *******)((int)ppppppuVar11 + 1);
    piVar16 = (int *)(uint)*(byte *)ppppppuVar11;
    iVar5 = FUN_000beb88(&local_2c);
    local_30 = local_2c;
    if (0 < iVar5) {
      uVar13 = (uint)pppppppuVar17 & 0xfffffffe;
      pppppppuVar17 = (undefined4 *******)((int)local_2c + iVar5);
      pppppppuVar12 = (undefined4 *******)(uVar13 - 1);
      param_2 = &local_30;
      uVar4 = (int)pppppppuVar12 - uVar4;
      do {
        uVar13 = FUN_000bebf8(param_2,piVar16);
        iVar5 = FUN_000bebf8(param_2,piVar16);
        iVar6 = FUN_000bebf8(param_2,piVar16);
        iVar7 = FUN_000beb88(param_2);
        bVar20 = uVar4 <= uVar13;
        if (uVar13 <= uVar4) {
          bVar20 = iVar5 + uVar13 <= uVar4;
        }
        if (!bVar20) {
          if (iVar6 == 0) goto LAB_000bca7c;
          local_5c = iVar6 + local_4c;
          if (iVar7 == 0) {
            if (((uint)local_3c & 6) == 2) {
              *local_50 = 0;
              local_50[1] = 0;
              local_50[4] = local_5c;
              local_50[6] = 6;
              return;
            }
            goto LAB_000bca7c;
          }
          pppppppuVar18 = (undefined4 *******)((int)pppppppuVar17 + iVar7 + -1);
          uVar4 = (uint)local_3c & 4 | local_48;
          local_4c = (uint)local_3c & 6;
          pppppppuVar17 = &local_28;
          param_2 = (undefined4 *******)(local_44 + 0x58);
          local_54 = &PTR_PTR_DAT_000ebca0;
          local_58 = &PTR_PTR_DAT_000ebd08;
          pppppppuVar12 = local_3c;
          local_3c = (undefined4 *******)((uint)local_3c & 8);
          goto LAB_000bc9aa;
        }
      } while ((uVar13 <= uVar4) && (local_30 < pppppppuVar17));
    }
LAB_000bcabc:
    UNRECOVERED_JUMPTABLE_01 = (code *)0xbcac3;
    FUN_000bc7fc(local_44);
    if (pppppppuVar12 != (undefined4 *******)0x0) {
      ppppppuVar11 = pppppppuVar12[(int)&stack0xfffffff8 * -8];
      if (ppppppuVar11 == (undefined4 ******)0x0) {
        uVar10 = 0;
      }
      else {
        uVar10 = *(undefined4 *)
                  ((int)ppppppuVar11 + (int)(pppppppuVar12 + (int)&stack0xfffffff8 * -8));
      }
                    /* WARNING: Could not recover jumptable at 0x000bcadc. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (*UNRECOVERED_JUMPTABLE_01)(uVar10);
      return;
    }
    pcVar19 = (code *)0xbcae9;
    local_68 = &stack0xfffffff8;
    pcStack_64 = UNRECOVERED_JUMPTABLE_01;
    uVar4 = FUN_000bc7fc(local_60);
    UNRECOVERED_JUMPTABLE_01 = pcStack_64;
    puVar3 = local_68;
    pppppppuStack_80 = pppppppuVar17;
    iStack_7c = (int)pcVar14 << 3;
    pppppppuStack_78 = param_2;
    piStack_74 = piVar16;
    ppuStack_70 = &local_68;
    UNRECOVERED_JUMPTABLE_00 = pcVar19;
    if (pppppppuVar12 == (undefined4 *******)0x0) {
      UNRECOVERED_JUMPTABLE_01 = (code *)0xbcb2e;
      piVar16 = (int *)FUN_000bc7fc(local_60);
      if (*piVar16 == 0) {
        uVar10 = 0;
      }
      else {
        uVar10 = *(undefined4 *)(*piVar16 + (int)piVar16);
      }
                    /* WARNING: Could not recover jumptable at 0x000bcb38. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (*UNRECOVERED_JUMPTABLE_01)(uVar10);
      return;
    }
    pppppppuVar12 = pppppppuVar12 + ~uVar4;
    do {
      if (*pppppppuVar12 == (undefined4 ******)0x0) {
        uVar10 = 1;
        goto LAB_000bcb20;
      }
      piVar16 = *(int **)((int)*pppppppuVar12 + (int)pppppppuVar12);
      local_84 = UNRECOVERED_JUMPTABLE_01;
      iVar5 = (**(code **)(*piVar16 + 8))(piVar16,puVar3,&local_84);
      pppppppuVar12 = pppppppuVar12 + 1;
    } while (iVar5 != 1);
    uVar10 = 0;
LAB_000bcb20:
                    /* WARNING: Could not recover jumptable at 0x000bcb26. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (*UNRECOVERED_JUMPTABLE_00)(uVar10);
    return;
  }
  uVar4 = 8;
LAB_000bc844:
  param_1[6] = uVar4;
  return;
LAB_000bc9aa:
  local_34 = pppppppuVar18;
  uVar21 = FUN_000bebb6(&local_34);
  uVar8 = (uint)uVar21;
  uVar13 = uVar4;
  if ((int)uVar8 < 1) {
    if ((int)uVar8 < 0) {
      if (local_40 != 1) goto joined_r0x000bc99c;
      piVar16 = *(int **)(local_44 + -0x34);
      pbVar2 = (byte *)((ulonglong)uVar21 >> 0x20);
      if (piVar16 != (int *)0x0) {
        pbVar2 = local_38;
      }
      if (piVar16 == (int *)0x0 || pbVar2 == (byte *)0x0) goto LAB_000bcabc;
      piVar15 = (int *)(pbVar2 + ~uVar8 * 4);
      do {
        uVar13 = local_48;
        if (*piVar15 == 0) goto joined_r0x000bc99c;
        piVar9 = *(int **)(*piVar15 + (int)piVar15);
        pcVar14 = *(code **)(*piVar9 + 8);
        pppppppuVar12 = pppppppuVar17;
        local_28 = param_2;
        iVar5 = (*pcVar14)(piVar9,piVar16);
        piVar15 = piVar15 + 1;
      } while (iVar5 == 0);
    }
    else if (local_4c == 2) goto LAB_000bca84;
  }
  else {
    if (local_38 == (byte *)0x0) goto LAB_000bcabc;
    iVar5 = *(int *)(local_38 + uVar8 * -4);
    if (iVar5 != 0) {
      piVar16 = *(int **)(iVar5 + (int)(local_38 + uVar8 * -4));
    }
    if (iVar5 != 0 && piVar16 != (int *)0x0) {
      if (local_40 == 1) {
        iVar5 = *(int *)(local_44 + -0x34);
        local_28 = param_2;
        if (iVar5 == 0) goto LAB_000bcabc;
        iVar6 = FUN_000bc548(iVar5,local_54,local_58,0);
        if (iVar6 != 0) {
          local_28 = (undefined4 *******)*param_2;
        }
        pcVar14 = *(code **)(*piVar16 + 8);
        pppppppuVar12 = pppppppuVar17;
        iVar5 = (*pcVar14)(piVar16,iVar5);
        if (iVar5 == 1) {
          if (local_48 != 0) {
            *local_50 = uVar8;
            local_50[1] = (int)uVar8 >> 0x1f;
            local_50[2] = (uint)pppppppuVar18;
            local_50[4] = local_5c;
            local_50[5] = (uint)local_28;
            local_50[6] = 6;
            return;
          }
          goto LAB_000bc9d4;
        }
      }
    }
    else {
joined_r0x000bc99c:
      if (uVar13 != 0) {
LAB_000bca84:
        local_50[4] = local_5c;
        local_50[5] = (uint)param_2;
        local_50[6] = 6;
        *local_50 = uVar8;
        local_50[1] = (int)uVar8 >> 0x1f;
        local_50[2] = (uint)pppppppuVar18;
        return;
      }
LAB_000bc9d4:
      if (local_3c == (undefined4 *******)0x0) goto LAB_000bcabc;
    }
  }
  local_28 = local_34;
  iVar5 = FUN_000bebb6(pppppppuVar17);
  if (iVar5 == 0) {
LAB_000bca7c:
    local_50[6] = 8;
    return;
  }
  pppppppuVar18 = (undefined4 *******)((int)local_34 + iVar5);
  goto LAB_000bc9aa;
}


/* address=000bcb3a symbol=FUN_000bcb3a */

void FUN_000bcb3a(uint param_1,undefined4 param_2,uint *param_3)

{
  uint uVar1;
  uint local_1c;
  
  local_1c = param_1;
  _Unwind_VRS_Set(param_2,0,0,0,&local_1c);
  local_1c = *param_3;
  _Unwind_VRS_Set(param_2,0,1,0,&local_1c);
  uVar1 = param_3[4];
  _Unwind_VRS_Get(param_2,0,0xf,0,&local_1c);
  local_1c = local_1c & 1 | uVar1;
  _Unwind_VRS_Set(param_2,0,0xf,0,&local_1c);
  return;
}


/* address=000bcb9c symbol=FUN_000bcb9c */

undefined4 FUN_000bcb9c(void)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = __gnu_unwind_frame();
  uVar2 = 9;
  if (iVar1 == 0) {
    uVar2 = 8;
  }
  return uVar2;
}


/* address=000bcbb0 symbol=FUN_000bcbb0 */

void FUN_000bcbb0(int param_1,undefined4 param_2,undefined4 *param_3)

{
  undefined4 local_14;
  
  _Unwind_VRS_Get(param_2,0,0xd,0,&local_14);
  *(undefined4 *)(param_1 + 0x20) = local_14;
  *(undefined4 *)(param_1 + 0x24) = param_3[5];
  *(undefined4 *)(param_1 + 0x28) = *param_3;
  *(undefined4 *)(param_1 + 0x30) = param_3[4];
  return;
}


/* address=000bcbde symbol=FUN_000bcbde */

void FUN_000bcbde(int param_1,undefined4 *param_2)

{
  param_2[5] = *(undefined4 *)(param_1 + 0x24);
  *param_2 = *(undefined4 *)(param_1 + 0x28);
  param_2[1] = 0;
  param_2[4] = *(undefined4 *)(param_1 + 0x30);
  return;
}


/* address=000bcbf0 symbol=__cxa_begin_cleanup */

void __cxa_begin_cleanup(void)

{
  __cxa_begin_cleanup();
  return;
}


/* address=000bcbf4 symbol=FUN_000bcbf4 */

void FUN_000bcbf4(int param_1,undefined4 param_2,int *param_3)

{
  int iVar1;
  undefined *puVar2;
  int iVar3;
  int iVar4;
  char *local_1c;
  
  __cxa_begin_cleanup();
  puVar2 = (undefined *)_Unwind_GetLanguageSpecificData(param_2);
  local_1c = puVar2 + 1;
  FUN_000bebf8(&local_1c,*puVar2);
  _Unwind_GetRegionStart(param_2);
  if (*local_1c == -1) {
    local_1c = (char *)0x0;
  }
  else {
    local_1c = local_1c + 1;
    iVar3 = FUN_000beb88(&local_1c);
    local_1c = local_1c + iVar3;
  }
  iVar3 = *param_3;
  iVar4 = -1;
  do {
    iVar1 = iVar4 * 4;
    iVar4 = iVar4 + 1;
  } while (*(int *)(local_1c + iVar1 + iVar3 * -4) != 0);
  *(int *)(param_1 + 0x28) = iVar4;
  *(undefined4 *)(param_1 + 0x30) = 4;
  *(char **)(param_1 + 0x34) = local_1c + iVar3 * -4 + -4;
  return;
}


/* address=000bcc60 symbol=FUN_000bcc60 */

void FUN_000bcc60(void)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_000bed10();
  *puVar1 = &PTR_LAB_000bcc78_1_000ebcb4;
  return;
}


/* address=000bcc7c symbol=FUN_000bcc7c */

void FUN_000bcc7c(void)

{
  FUN_000bed20();
  _ZdlPv();
  return;
}


/* address=000bcd24 symbol=_Znwj */

void _Znwj(size_t param_1)

{
  bool bVar1;
  void *pvVar2;
  undefined4 *puVar3;
  
  while( true ) {
    pvVar2 = malloc(param_1);
    if (pvVar2 != (void *)0x0) {
      return;
    }
    DataMemoryBarrier(0x1b);
    do {
      ExclusiveAccess(0xf7170);
      bVar1 = (bool)hasExclusiveAccess(0xf7170);
    } while (!bVar1);
    DataMemoryBarrier(0x1b);
    if (UNK_000f7170 == (code *)0x0) break;
    (*UNK_000f7170)();
  }
  FUN_000bc1b4(4);
  puVar3 = (undefined4 *)FUN_000bed10();
  *puVar3 = &PTR_LAB_000bcc78_1_000ebcb4;
                    /* WARNING: Subroutine does not return */
  FUN_000bc380(puVar3,&PTR_PTR_DAT_000ebcd4,&LAB_000bcc78_1);
}


/* address=000bcd94 symbol=FUN_000bcd94 */

void FUN_000bcd94(void)

{
  _Znwj();
  return;
}


/* address=000bcdb2 symbol=_Znaj */

void _Znaj(void)

{
  _Znwj();
  return;
}


/* address=000bcdc4 symbol=FUN_000bcdc4 */

undefined4 FUN_000bcdc4(uint *param_1)

{
  uint uVar1;
  
  pthread_mutex_lock((pthread_mutex_t *)&DAT_000ee3a0);
  uVar1 = *param_1;
  while( true ) {
    if ((uVar1 & 1) != 0) {
      pthread_mutex_unlock((pthread_mutex_t *)&DAT_000ee3a0);
      return 0;
    }
    if (-1 < (int)(uVar1 << 0x17)) break;
    *param_1 = uVar1 | 0x200;
    pthread_cond_wait((pthread_cond_t *)&DAT_000f7174,(pthread_mutex_t *)&DAT_000ee3a0);
    uVar1 = *param_1;
  }
  *param_1 = 0x100;
  pthread_mutex_unlock((pthread_mutex_t *)&DAT_000ee3a0);
  return 1;
}


/* address=000bce3c symbol=FUN_000bce3c */

void FUN_000bce3c(uint *param_1)

{
  uint uVar1;
  
  pthread_mutex_lock((pthread_mutex_t *)&DAT_000ee3a0);
  uVar1 = *param_1;
  *param_1 = 1;
  if ((uVar1 & 0x200) != 0) {
    pthread_cond_broadcast((pthread_cond_t *)&DAT_000f7174);
  }
  pthread_mutex_unlock((pthread_mutex_t *)&DAT_000ee3a0);
  return;
}


/* address=000bce78 symbol=FUN_000bce78 */

void FUN_000bce78(uint *param_1)

{
  uint uVar1;
  
  pthread_mutex_lock((pthread_mutex_t *)&DAT_000ee3a0);
  uVar1 = *param_1;
  *param_1 = 0;
  if ((uVar1 & 0x200) != 0) {
    pthread_cond_broadcast((pthread_cond_t *)&DAT_000f7174);
  }
  pthread_mutex_unlock((pthread_mutex_t *)&DAT_000ee3a0);
  return;
}


/* address=000bceb4 symbol=__gxx_personality_v0 */

undefined4 __gxx_personality_v0(int param_1,uint *param_2,int param_3)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint *puVar6;
  uint *local_40;
  int local_3c;
  uint local_38;
  uint uStack_34;
  uint uStack_30;
  uint uStack_2c;
  int local_28;
  
  uVar5 = *param_2;
  uVar4 = param_2[1];
  if (param_1 == 0) {
    uVar3 = 1;
  }
  else {
    if (param_1 == 2) {
      iVar1 = __gnu_unwind_frame(param_2,param_3);
      uVar2 = 9;
      if (iVar1 == 0) {
        uVar2 = 8;
      }
      return uVar2;
    }
    if (param_1 != 1) {
      return 9;
    }
    puVar6 = (uint *)param_2[8];
    _Unwind_VRS_Get(param_3,0,0xd,0,&local_40);
    uVar3 = 2;
    if (puVar6 == local_40) {
      uVar3 = 6;
    }
  }
  local_40 = param_2;
  _Unwind_VRS_Set(param_3,0,0xc,0,&local_40);
  if (param_3 != 0) {
    if ((uVar3 & 1) != 0) {
      uVar4 = uVar5 ^ 0x432b2b00 | uVar4 ^ 0x474e5543;
      FUN_000bc808(&local_40,uVar3,uVar4 == 0,param_2,param_3);
      if (local_28 == 6) {
        if (uVar4 == 0) {
          param_2[-1] = uStack_2c;
          param_2[-2] = uStack_30;
          param_2[-3] = uStack_34;
          param_2[-4] = local_38;
          param_2[-5] = (uint)local_40;
          FUN_000bcbb0(param_2,param_3,&local_40);
          return 6;
        }
        return 6;
      }
LAB_000bcfc6:
      uVar2 = FUN_000bcb9c(param_2,param_3);
      return uVar2;
    }
    if ((int)(uVar3 << 0x1e) < 0) {
      if ((int)(uVar3 << 0x1d) < 0) {
        if ((uVar5 ^ 0x432b2b00 | uVar4 ^ 0x474e5543) == 0) {
          uStack_2c = param_2[-1];
          uStack_30 = param_2[-2];
          uStack_34 = param_2[-3];
          local_38 = param_2[-4];
          local_40 = (uint *)param_2[-5];
          local_3c = (int)local_40 >> 0x1f;
          FUN_000bcbde(param_2,&local_40);
        }
        else {
          FUN_000bc808(&local_40,uVar3,0,param_2,param_3);
          if (local_28 != 6) {
            FUN_000bc7fc(param_2);
            uVar2 = FUN_000bedd4();
            return uVar2;
          }
        }
        FUN_000bcb3a(param_2,param_3,&local_40);
        FUN_000bcbf4(param_2,param_3,&local_40);
      }
      else {
        FUN_000bc808(&local_40,uVar3,(uVar5 ^ 0x432b2b00 | uVar4 ^ 0x474e5543) == 0,param_2,param_3)
        ;
        if (local_28 != 6) goto LAB_000bcfc6;
        FUN_000bcb3a(param_2,param_3,&local_40);
        __cxa_begin_cleanup(param_2);
      }
      return 7;
    }
  }
  return 3;
}


/* address=000bd048 symbol=FUN_000bd048 */

void FUN_000bd048(undefined4 param_1)

{
  FUN_000bedd4();
  _ZdlPv(param_1);
  return;
}


/* address=000bd120 symbol=FUN_000bd120 */

void FUN_000bd120(void)

{
                    /* WARNING: Subroutine does not return */
  FUN_000bd128();
}


/* address=000bd128 symbol=FUN_000bd128 */

void FUN_000bd128(void)

{
  bool bVar1;
  
  DataMemoryBarrier(0x1b);
  do {
    ExclusiveAccess(0xee3a4);
    bVar1 = (bool)hasExclusiveAccess(0xee3a4);
  } while (!bVar1);
  DataMemoryBarrier(0x1b);
                    /* WARNING: Subroutine does not return */
  FUN_000bd160();
}


/* address=000bd14c symbol=FUN_000bd14c */

void FUN_000bd14c(void)

{
  DAT_deadcab1 = 0;
                    /* WARNING: Subroutine does not return */
  abort();
}


/* address=000bd160 symbol=FUN_000bd160 */

void FUN_000bd160(code *param_1)

{
  code *pcVar1;
  
  pcVar1 = FUN_000bd14c;
  if (param_1 != (code *)0x0) {
    pcVar1 = param_1;
  }
  (*pcVar1)();
                    /* WARNING: Subroutine does not return */
  FUN_000bd14c();
}


/* address=000bd184 symbol=FUN_000bd184 */

void FUN_000bd184(void)

{
  bool bVar1;
  
  DataMemoryBarrier(0x1b);
  do {
    ExclusiveAccess(0xee3a4);
    bVar1 = (bool)hasExclusiveAccess(0xee3a4);
  } while (!bVar1);
  DataMemoryBarrier(0x1b);
  return;
}


/* address=000bd1d0 symbol=FUN_000bd1d0 */

void FUN_000bd1d0(void)

{
  bool bVar1;
  
  DataMemoryBarrier(0x1b);
  do {
    ExclusiveAccess(0xee3a8);
    bVar1 = (bool)hasExclusiveAccess(0xee3a8);
  } while (!bVar1);
  DataMemoryBarrier(0x1b);
  return;
}


/* address=000bd21c symbol=FUN_000bd21c */

void FUN_000bd21c(void)

{
  bool bVar1;
  
  DataMemoryBarrier(0x1b);
  do {
    ExclusiveAccess(0xee3a8);
    bVar1 = (bool)hasExclusiveAccess(0xee3a8);
  } while (!bVar1);
  DataMemoryBarrier(0x1b);
  if (DAT_000ee3a8 != (code *)0x0) {
    (*DAT_000ee3a8)();
  }
                    /* WARNING: Subroutine does not return */
  FUN_000bd128();
}


/* address=000bd24e symbol=FUN_000bd24e */

bool FUN_000bd24e(int param_1,int param_2)

{
  int iVar1;
  
  iVar1 = strcmp(*(char **)(param_1 + 4),*(char **)(param_2 + 4));
  return iVar1 == 0;
}


/* address=000bd266 symbol=FUN_000bd266 */

int FUN_000bd266(int param_1,int param_2)

{
  int iVar1;
  
  iVar1 = strcmp(*(char **)(param_1 + 4),*(char **)(param_2 + 4));
  if (iVar1 != 0) {
    iVar1 = 1;
  }
  return iVar1;
}


/* address=000bd27a symbol=FUN_000bd27a */

uint FUN_000bd27a(int param_1,int param_2)

{
  uint uVar1;
  
  uVar1 = strcmp(*(char **)(param_1 + 4),*(char **)(param_2 + 4));
  return uVar1 >> 0x1f;
}


/* address=000bd28c symbol=FUN_000bd28c */

void FUN_000bd28c(void)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_000bed10();
  *puVar1 = &PTR_LAB_000bd2a4_1_000ebd44;
  return;
}


/* address=000bd2a8 symbol=FUN_000bd2a8 */

void FUN_000bd2a8(void)

{
  FUN_000bed20();
  _ZdlPv();
  return;
}


/* address=000bd2cc symbol=FUN_000bd2cc */

void FUN_000bd2cc(void)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_000bed10();
  *puVar1 = &PTR_LAB_000bd2e4_1_000ebd58;
  return;
}


/* address=000bd2e8 symbol=FUN_000bd2e8 */

void FUN_000bd2e8(void)

{
  FUN_000bed20();
  _ZdlPv();
  return;
}


/* address=000bd310 symbol=FUN_000bd310 */

void FUN_000bd310(undefined4 param_1)

{
  thunk_FUN_000bc000();
  _ZdlPv(param_1);
  return;
}


/* address=000bd52c symbol=_ZSt25__stl_throw_runtime_errorPKc */

void _ZSt25__stl_throw_runtime_errorPKc(undefined4 param_1)

{
  undefined4 *puVar1;
  size_t sVar2;
  uint *__dest;
  uint *puVar3;
  uint __size;
  undefined auStack_34 [4];
  undefined auStack_30 [20];
  char *local_1c;
  
  puVar1 = (undefined4 *)FUN_000bc1b4(0x108);
  FUN_000bd60c(auStack_30,param_1,auStack_34);
  FUN_000bed10(puVar1);
  *puVar1 = 0xebdc4;
  sVar2 = strlen(local_1c);
  __size = sVar2 + 1;
  if (__size < 0x101) {
    __dest = puVar1 + 1;
    puVar1[0x41] = __dest;
  }
  else {
    __dest = (uint *)malloc(__size);
    puVar3 = puVar1 + 1;
    puVar1[0x41] = __dest;
    if (__dest == (uint *)0x0) {
      puVar1[0x41] = puVar3;
      __size = 0x100;
      __dest = puVar3;
    }
    else {
      *puVar3 = __size;
    }
  }
  strncpy((char *)__dest,local_1c,__size - 1);
  *(undefined *)(puVar1[0x41] + (__size - 1)) = 0;
  *puVar1 = 0xebe04;
                    /* WARNING: Subroutine does not return */
  FUN_000bc380(puVar1,_ZTISt13runtime_error,_ZNSt17__Named_exceptionD2Ev);
}


/* address=000bd60c symbol=FUN_000bd60c */

int * FUN_000bd60c(int *param_1,char *param_2)

{
  size_t sVar1;
  int *piVar2;
  undefined4 uVar3;
  uint uVar4;
  uint local_24;
  
  param_1[4] = (int)param_1;
  param_1[5] = (int)param_1;
  sVar1 = strlen(param_2);
  uVar4 = sVar1 + 1;
  if (uVar4 == 0) {
    uVar3 = _ZSt24__stl_throw_length_errorPKc("basic_string");
    piVar2 = (int *)param_1[5];
    if (piVar2 != param_1 && piVar2 != (int *)0x0) {
      if (0x80 < (uint)(*param_1 - (int)piVar2)) {
        _ZdlPv();
                    /* WARNING: Subroutine does not return */
        ___Unwind_Resume(uVar3);
      }
      _ZNSt12__node_alloc13_M_deallocateEPvj();
    }
                    /* WARNING: Subroutine does not return */
    ___Unwind_Resume(uVar3);
  }
  if (uVar4 < 0x11) {
    piVar2 = param_1;
    if (sVar1 == 0) goto LAB_000bd66c;
  }
  else {
    local_24 = uVar4;
    if (uVar4 < 0x81) {
      piVar2 = (int *)_ZNSt12__node_alloc11_M_allocateERj(&local_24);
      uVar4 = local_24;
    }
    else {
      piVar2 = (int *)_Znwj(uVar4);
    }
    param_1[4] = (int)piVar2;
    param_1[5] = (int)piVar2;
    *param_1 = (int)((int)piVar2 + uVar4);
  }
  __aeabi_memcpy(piVar2,param_2,sVar1);
  piVar2 = (int *)((int)piVar2 + sVar1);
LAB_000bd66c:
  param_1[4] = (int)piVar2;
  *(undefined *)piVar2 = 0;
  return param_1;
}


/* address=000bd6c0 symbol=_ZSt23__stl_throw_range_errorPKc */

void _ZSt23__stl_throw_range_errorPKc(undefined4 param_1)

{
  undefined4 *puVar1;
  size_t sVar2;
  uint *__dest;
  uint *puVar3;
  uint __size;
  undefined auStack_34 [4];
  undefined auStack_30 [20];
  char *local_1c;
  
  puVar1 = (undefined4 *)FUN_000bc1b4(0x108);
  FUN_000bd60c(auStack_30,param_1,auStack_34);
  FUN_000bed10(puVar1);
  *puVar1 = 0xebdc4;
  sVar2 = strlen(local_1c);
  __size = sVar2 + 1;
  if (__size < 0x101) {
    __dest = puVar1 + 1;
    puVar1[0x41] = __dest;
  }
  else {
    __dest = (uint *)malloc(__size);
    puVar3 = puVar1 + 1;
    puVar1[0x41] = __dest;
    if (__dest == (uint *)0x0) {
      puVar1[0x41] = puVar3;
      __size = 0x100;
      __dest = puVar3;
    }
    else {
      *puVar3 = __size;
    }
  }
  strncpy((char *)__dest,local_1c,__size - 1);
  *(undefined *)(puVar1[0x41] + (__size - 1)) = 0;
  *puVar1 = 0xebea4;
                    /* WARNING: Subroutine does not return */
  FUN_000bc380(puVar1,_ZTISt11range_error,_ZNSt17__Named_exceptionD2Ev);
}


/* address=000bd7a0 symbol=_ZSt24__stl_throw_out_of_rangePKc */

void _ZSt24__stl_throw_out_of_rangePKc(undefined4 param_1)

{
  undefined4 *puVar1;
  size_t sVar2;
  uint *__dest;
  uint *puVar3;
  uint __size;
  undefined auStack_34 [4];
  undefined auStack_30 [20];
  char *local_1c;
  
  puVar1 = (undefined4 *)FUN_000bc1b4(0x108);
  FUN_000bd60c(auStack_30,param_1,auStack_34);
  FUN_000bed10(puVar1);
  *puVar1 = 0xebdc4;
  sVar2 = strlen(local_1c);
  __size = sVar2 + 1;
  if (__size < 0x101) {
    __dest = puVar1 + 1;
    puVar1[0x41] = __dest;
  }
  else {
    __dest = (uint *)malloc(__size);
    puVar3 = puVar1 + 1;
    puVar1[0x41] = __dest;
    if (__dest == (uint *)0x0) {
      puVar1[0x41] = puVar3;
      __size = 0x100;
      __dest = puVar3;
    }
    else {
      *puVar3 = __size;
    }
  }
  strncpy((char *)__dest,local_1c,__size - 1);
  *(undefined *)(puVar1[0x41] + (__size - 1)) = 0;
  *puVar1 = 0xebe84;
                    /* WARNING: Subroutine does not return */
  FUN_000bc380(puVar1,_ZTISt12out_of_range,_ZNSt17__Named_exceptionD2Ev);
}


/* address=000bd880 symbol=_ZSt24__stl_throw_length_errorPKc */

void _ZSt24__stl_throw_length_errorPKc(undefined4 param_1)

{
  undefined4 *puVar1;
  size_t sVar2;
  uint *__dest;
  uint *puVar3;
  uint __size;
  undefined auStack_34 [4];
  undefined auStack_30 [20];
  char *local_1c;
  
  puVar1 = (undefined4 *)FUN_000bc1b4(0x108);
  FUN_000bd60c(auStack_30,param_1,auStack_34);
  FUN_000bed10(puVar1);
  *puVar1 = 0xebdc4;
  sVar2 = strlen(local_1c);
  __size = sVar2 + 1;
  if (__size < 0x101) {
    __dest = puVar1 + 1;
    puVar1[0x41] = __dest;
  }
  else {
    __dest = (uint *)malloc(__size);
    puVar3 = puVar1 + 1;
    puVar1[0x41] = __dest;
    if (__dest == (uint *)0x0) {
      puVar1[0x41] = puVar3;
      __size = 0x100;
      __dest = puVar3;
    }
    else {
      *puVar3 = __size;
    }
  }
  strncpy((char *)__dest,local_1c,__size - 1);
  *(undefined *)(puVar1[0x41] + (__size - 1)) = 0;
  *puVar1 = 0xebe64;
                    /* WARNING: Subroutine does not return */
  FUN_000bc380(puVar1,_ZTISt12length_error,_ZNSt17__Named_exceptionD2Ev);
}


/* address=000bd960 symbol=_ZSt28__stl_throw_invalid_argumentPKc */

void _ZSt28__stl_throw_invalid_argumentPKc(undefined4 param_1)

{
  undefined4 *puVar1;
  size_t sVar2;
  uint *__dest;
  uint *puVar3;
  uint __size;
  undefined auStack_34 [4];
  undefined auStack_30 [20];
  char *local_1c;
  
  puVar1 = (undefined4 *)FUN_000bc1b4(0x108);
  FUN_000bd60c(auStack_30,param_1,auStack_34);
  FUN_000bed10(puVar1);
  *puVar1 = 0xebdc4;
  sVar2 = strlen(local_1c);
  __size = sVar2 + 1;
  if (__size < 0x101) {
    __dest = puVar1 + 1;
    puVar1[0x41] = __dest;
  }
  else {
    __dest = (uint *)malloc(__size);
    puVar3 = puVar1 + 1;
    puVar1[0x41] = __dest;
    if (__dest == (uint *)0x0) {
      puVar1[0x41] = puVar3;
      __size = 0x100;
      __dest = puVar3;
    }
    else {
      *puVar3 = __size;
    }
  }
  strncpy((char *)__dest,local_1c,__size - 1);
  *(undefined *)(puVar1[0x41] + (__size - 1)) = 0;
  *puVar1 = 0xebe44;
                    /* WARNING: Subroutine does not return */
  FUN_000bc380(puVar1,_ZTISt16invalid_argument,_ZNSt17__Named_exceptionD2Ev);
}


/* address=000bda40 symbol=_ZSt26__stl_throw_overflow_errorPKc */

void _ZSt26__stl_throw_overflow_errorPKc(undefined4 param_1)

{
  undefined4 *puVar1;
  size_t sVar2;
  uint *__dest;
  uint *puVar3;
  uint __size;
  undefined auStack_34 [4];
  undefined auStack_30 [20];
  char *local_1c;
  
  puVar1 = (undefined4 *)FUN_000bc1b4(0x108);
  FUN_000bd60c(auStack_30,param_1,auStack_34);
  FUN_000bed10(puVar1);
  *puVar1 = 0xebdc4;
  sVar2 = strlen(local_1c);
  __size = sVar2 + 1;
  if (__size < 0x101) {
    __dest = puVar1 + 1;
    puVar1[0x41] = __dest;
  }
  else {
    __dest = (uint *)malloc(__size);
    puVar3 = puVar1 + 1;
    puVar1[0x41] = __dest;
    if (__dest == (uint *)0x0) {
      puVar1[0x41] = puVar3;
      __size = 0x100;
      __dest = puVar3;
    }
    else {
      *puVar3 = __size;
    }
  }
  strncpy((char *)__dest,local_1c,__size - 1);
  *(undefined *)(puVar1[0x41] + (__size - 1)) = 0;
  *puVar1 = 0xebec4;
                    /* WARNING: Subroutine does not return */
  FUN_000bc380(puVar1,_ZTISt14overflow_error,_ZNSt17__Named_exceptionD2Ev);
}


/* address=000bdb20 symbol=_ZNSt17__Named_exceptionC2ERKSs */

undefined4 * _ZNSt17__Named_exceptionC2ERKSs(undefined4 *param_1,int param_2)

{
  size_t sVar1;
  uint *puVar2;
  uint *__dest;
  char *__s;
  uint __size;
  
  FUN_000bed10();
  *param_1 = 0xebdc4;
  __s = *(char **)(param_2 + 0x14);
  sVar1 = strlen(__s);
  __size = sVar1 + 1;
  if (__size < 0x101) {
    __dest = param_1 + 1;
    param_1[0x41] = __dest;
  }
  else {
    puVar2 = (uint *)malloc(__size);
    __dest = param_1 + 1;
    param_1[0x41] = puVar2;
    if (puVar2 == (uint *)0x0) {
      param_1[0x41] = __dest;
      __size = 0x100;
    }
    else {
      *__dest = __size;
      __dest = puVar2;
    }
  }
  strncpy((char *)__dest,__s,__size - 1);
  *(undefined *)(param_1[0x41] + (__size - 1)) = 0;
  return param_1;
}


/* address=000bdb98 symbol=_ZNSt17__Named_exceptionC2ERKS_ */

undefined4 * _ZNSt17__Named_exceptionC2ERKS_(undefined4 *param_1,int param_2)

{
  size_t sVar1;
  uint *puVar2;
  uint *__dest;
  uint __size;
  
  FUN_000bed10();
  *param_1 = 0xebdc4;
  sVar1 = strlen(*(char **)(param_2 + 0x104));
  __size = sVar1 + 1;
  if (__size < 0x101) {
    __dest = param_1 + 1;
    param_1[0x41] = __dest;
  }
  else {
    puVar2 = (uint *)malloc(__size);
    __dest = param_1 + 1;
    param_1[0x41] = puVar2;
    if (puVar2 == (uint *)0x0) {
      param_1[0x41] = __dest;
      __size = 0x100;
    }
    else {
      *__dest = __size;
      __dest = puVar2;
    }
  }
  strncpy((char *)__dest,*(char **)(param_2 + 0x104),__size - 1);
  *(undefined *)(param_1[0x41] + (__size - 1)) = 0;
  return param_1;
}


/* address=000bdc14 symbol=_ZNSt17__Named_exceptionaSERKS_ */

int _ZNSt17__Named_exceptionaSERKS_(int param_1,int param_2)

{
  size_t sVar1;
  uint *__dest;
  uint uVar2;
  uint *puVar3;
  
  sVar1 = strlen(*(char **)(param_2 + 0x104));
  __dest = *(uint **)(param_1 + 0x104);
  puVar3 = (uint *)(param_1 + 4);
  sVar1 = sVar1 + 1;
  if (__dest == puVar3) {
    uVar2 = 0x100;
  }
  else {
    uVar2 = *puVar3;
  }
  if (uVar2 < sVar1) {
    if (__dest != puVar3) {
      free(__dest);
    }
    __dest = (uint *)malloc(sVar1);
    *(uint **)(param_1 + 0x104) = __dest;
    if (__dest == (uint *)0x0) {
      *(uint **)(param_1 + 0x104) = puVar3;
      sVar1 = 0x100;
      __dest = puVar3;
    }
    else {
      *puVar3 = sVar1;
    }
  }
  strncpy((char *)__dest,*(char **)(param_2 + 0x104),sVar1 - 1);
  *(undefined *)(*(int *)(param_1 + 0x104) + (sVar1 - 1)) = 0;
  return param_1;
}


/* address=000bdc84 symbol=_ZNSt17__Named_exceptionD2Ev */

undefined4 * _ZNSt17__Named_exceptionD2Ev(undefined4 *param_1)

{
  *param_1 = 0xebdc4;
  if ((undefined4 *)param_1[0x41] != param_1 + 1) {
    free((undefined4 *)param_1[0x41]);
  }
  return param_1;
}


/* address=000bdcb0 symbol=_ZNSt17__Named_exceptionD0Ev */

void _ZNSt17__Named_exceptionD0Ev(undefined4 *param_1)

{
  *param_1 = 0xebdc4;
  if ((undefined4 *)param_1[0x41] != param_1 + 1) {
    free((undefined4 *)param_1[0x41]);
  }
  FUN_000bed20(param_1);
  _ZdlPv();
  return;
}


/* address=000bdce0 symbol=_ZNKSt17__Named_exception4whatEv */

undefined4 _ZNKSt17__Named_exception4whatEv(int param_1)

{
  return *(undefined4 *)(param_1 + 0x104);
}


/* address=000bdce8 symbol=_ZNSt11logic_errorD0Ev */

void _ZNSt11logic_errorD0Ev(undefined4 *param_1)

{
  *param_1 = 0xebdc4;
  if ((undefined4 *)param_1[0x41] != param_1 + 1) {
    free((undefined4 *)param_1[0x41]);
  }
  FUN_000bed20(param_1);
  _ZdlPv();
  return;
}


/* address=000bdd18 symbol=_ZNSt13runtime_errorD0Ev */

void _ZNSt13runtime_errorD0Ev(undefined4 *param_1)

{
  *param_1 = 0xebdc4;
  if ((undefined4 *)param_1[0x41] != param_1 + 1) {
    free((undefined4 *)param_1[0x41]);
  }
  FUN_000bed20(param_1);
  _ZdlPv();
  return;
}


/* address=000bdd48 symbol=_ZNSt12domain_errorD0Ev */

void _ZNSt12domain_errorD0Ev(undefined4 *param_1)

{
  *param_1 = 0xebdc4;
  if ((undefined4 *)param_1[0x41] != param_1 + 1) {
    free((undefined4 *)param_1[0x41]);
  }
  FUN_000bed20(param_1);
  _ZdlPv();
  return;
}


/* address=000bdd78 symbol=_ZNSt16invalid_argumentD0Ev */

void _ZNSt16invalid_argumentD0Ev(undefined4 *param_1)

{
  *param_1 = 0xebdc4;
  if ((undefined4 *)param_1[0x41] != param_1 + 1) {
    free((undefined4 *)param_1[0x41]);
  }
  FUN_000bed20(param_1);
  _ZdlPv();
  return;
}


/* address=000bdda8 symbol=_ZNSt12length_errorD0Ev */

void _ZNSt12length_errorD0Ev(undefined4 *param_1)

{
  *param_1 = 0xebdc4;
  if ((undefined4 *)param_1[0x41] != param_1 + 1) {
    free((undefined4 *)param_1[0x41]);
  }
  FUN_000bed20(param_1);
  _ZdlPv();
  return;
}


/* address=000bddd8 symbol=_ZNSt12out_of_rangeD0Ev */

void _ZNSt12out_of_rangeD0Ev(undefined4 *param_1)

{
  *param_1 = 0xebdc4;
  if ((undefined4 *)param_1[0x41] != param_1 + 1) {
    free((undefined4 *)param_1[0x41]);
  }
  FUN_000bed20(param_1);
  _ZdlPv();
  return;
}


/* address=000bde08 symbol=_ZNSt11range_errorD0Ev */

void _ZNSt11range_errorD0Ev(undefined4 *param_1)

{
  *param_1 = 0xebdc4;
  if ((undefined4 *)param_1[0x41] != param_1 + 1) {
    free((undefined4 *)param_1[0x41]);
  }
  FUN_000bed20(param_1);
  _ZdlPv();
  return;
}


/* address=000bde38 symbol=_ZNSt14overflow_errorD0Ev */

void _ZNSt14overflow_errorD0Ev(undefined4 *param_1)

{
  *param_1 = 0xebdc4;
  if ((undefined4 *)param_1[0x41] != param_1 + 1) {
    free((undefined4 *)param_1[0x41]);
  }
  FUN_000bed20(param_1);
  _ZdlPv();
  return;
}


/* address=000bde68 symbol=_ZNSt15underflow_errorD0Ev */

void _ZNSt15underflow_errorD0Ev(undefined4 *param_1)

{
  *param_1 = 0xebdc4;
  if ((undefined4 *)param_1[0x41] != param_1 + 1) {
    free((undefined4 *)param_1[0x41]);
  }
  FUN_000bed20(param_1);
  _ZdlPv();
  return;
}


/* address=000bde98 symbol=FUN_000bde98 */

pthread_mutex_t * FUN_000bde98(pthread_mutex_t *param_1)

{
  pthread_mutex_destroy(param_1);
  return param_1;
}


/* address=000bdea8 symbol=_ZNSt14__malloc_alloc8allocateEj */

void _ZNSt14__malloc_alloc8allocateEj(size_t param_1)

{
  code *pcVar1;
  void *pvVar2;
  undefined4 uVar3;
  
  pvVar2 = malloc(param_1);
  while( true ) {
    if (pvVar2 != (void *)0x0) {
      return;
    }
    pthread_mutex_lock((pthread_mutex_t *)&DAT_000f7178);
    pcVar1 = UNK_000f717c;
    pthread_mutex_unlock((pthread_mutex_t *)&DAT_000f7178);
    if (pcVar1 == (code *)0x0) break;
    (*pcVar1)();
    pvVar2 = malloc(param_1);
  }
  FUN_000bc1b4(4);
  uVar3 = FUN_000bcc60();
                    /* WARNING: Subroutine does not return */
  FUN_000bc380(uVar3,&PTR_PTR_DAT_000ebcd4,&LAB_000bcc78_1);
}


/* address=000bdf10 symbol=_ZNSt14__malloc_alloc18set_malloc_handlerEPFvvE */

undefined4 _ZNSt14__malloc_alloc18set_malloc_handlerEPFvvE(undefined4 param_1)

{
  undefined4 uVar1;
  
  pthread_mutex_lock((pthread_mutex_t *)&DAT_000f7178);
  uVar1 = UNK_000f717c;
  UNK_000f717c = param_1;
  pthread_mutex_unlock((pthread_mutex_t *)&DAT_000f7178);
  return uVar1;
}


/* address=000bdf44 symbol=FUN_000bdf44 */

undefined4 * FUN_000bdf44(uint *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  uint uVar3;
  undefined4 *puVar4;
  int local_14;
  
  uVar3 = *param_1 + 7 & 0xfffffff8;
  *param_1 = uVar3;
  pthread_mutex_lock((pthread_mutex_t *)&DAT_000f71e8);
  uVar3 = uVar3 - 1 >> 3;
  puVar4 = *(undefined4 **)(&DAT_000f7180 + uVar3 * 4);
  if (puVar4 == (undefined4 *)0x0) {
    uVar3 = *param_1;
    local_14 = 0x14;
    puVar4 = (undefined4 *)FUN_000be0bc(uVar3,&local_14);
    if (local_14 != 1) {
      puVar1 = (undefined4 *)((int)puVar4 + uVar3);
      *(undefined4 **)(&DAT_000f7180 + (uVar3 - 1 >> 1 & 0x7ffffffc)) = puVar1;
      iVar2 = local_14 + -2;
      if (local_14 + -2 != 0) {
        iVar2 = local_14 + -1;
        local_14 = 2 - local_14;
        puVar1 = puVar4;
        do {
          *(uint *)((int)puVar1 + uVar3) = (int)puVar1 + uVar3 * 2;
          puVar1 = (undefined4 *)((int)puVar1 + uVar3);
          local_14 = local_14 + 1;
        } while (local_14 != 0);
        local_14 = 0;
        puVar1 = (undefined4 *)((int)puVar4 + iVar2 * uVar3);
        iVar2 = local_14;
      }
      local_14 = iVar2;
      *puVar1 = 0;
    }
  }
  else {
    *(undefined4 *)(&DAT_000f7180 + uVar3 * 4) = *puVar4;
  }
  pthread_mutex_unlock((pthread_mutex_t *)&DAT_000f71e8);
  return puVar4;
}


/* address=000be00c symbol=FUN_000be00c */

void FUN_000be00c(int param_1)

{
  int iVar1;
  int iVar2;
  undefined4 *puVar3;
  int local_14;
  
  local_14 = 0x14;
  iVar1 = FUN_000be0bc(param_1,&local_14);
  if (local_14 != 1) {
    puVar3 = (undefined4 *)(iVar1 + param_1);
    *(undefined4 **)(&DAT_000f7180 + (param_1 - 1U >> 1 & 0x7ffffffc)) = puVar3;
    if (local_14 != 2) {
      iVar2 = 2 - local_14;
      puVar3 = (undefined4 *)((local_14 + -1) * param_1 + iVar1);
      do {
        *(int *)(iVar1 + param_1) = iVar1 + param_1 * 2;
        iVar1 = iVar1 + param_1;
        iVar2 = iVar2 + 1;
      } while (iVar2 != 0);
    }
    *puVar3 = 0;
  }
  return;
}


/* address=000be078 symbol=FUN_000be078 */

void FUN_000be078(undefined4 *param_1,int param_2)

{
  uint uVar1;
  
  pthread_mutex_lock((pthread_mutex_t *)&DAT_000f71e8);
  uVar1 = param_2 - 1U >> 1 & 0x7ffffffc;
  *param_1 = *(undefined4 *)(&DAT_000f7180 + uVar1);
  *(undefined4 **)(&DAT_000f7180 + uVar1) = param_1;
  pthread_mutex_unlock((pthread_mutex_t *)&DAT_000f71e8);
  return;
}


/* address=000be0bc symbol=FUN_000be0bc */

undefined4 * FUN_000be0bc(uint param_1,int *param_2)

{
  undefined4 *puVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  
  do {
    puVar1 = DAT_000f71c4;
    uVar2 = DAT_000f71c0 - (int)DAT_000f71c4;
    uVar4 = *param_2 * param_1;
    if (uVar2 != 0) {
      if (uVar4 <= uVar2) goto LAB_000be1b6;
      if (param_1 <= uVar2) {
        iVar3 = __udivsi3(uVar2,param_1);
        uVar4 = iVar3 * param_1;
        *param_2 = iVar3;
LAB_000be1b6:
        DAT_000f71c4 = (undefined4 *)(uVar4 + (int)puVar1);
        return puVar1;
      }
      uVar2 = uVar2 - 1 >> 1 & 0x7ffffffc;
      *DAT_000f71c4 = *(undefined4 *)(&DAT_000f7180 + uVar2);
      *(undefined4 **)(&DAT_000f7180 + uVar2) = DAT_000f71c4;
      DAT_000f71c4 = (undefined4 *)0x0;
      DAT_000f71c0 = 0;
    }
    uVar4 = (DAT_000f71c8 + 7U & 0xfffffff8) + uVar4 * 2;
    DAT_000f71c4 = (undefined4 *)_Znwj(uVar4);
    DAT_000f71c0 = (int)DAT_000f71c4 + uVar4;
    DAT_000f71c8 = DAT_000f71c8 + (uVar4 >> 4);
  } while( true );
}


/* address=000be23c symbol=_ZNSt12__node_alloc11_M_allocateERj */

undefined4 * _ZNSt12__node_alloc11_M_allocateERj(uint *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  uint uVar3;
  undefined4 *puVar4;
  int iStack_14;
  
  uVar3 = *param_1 + 7 & 0xfffffff8;
  *param_1 = uVar3;
  pthread_mutex_lock((pthread_mutex_t *)&DAT_000f71e8);
  uVar3 = uVar3 - 1 >> 3;
  puVar4 = *(undefined4 **)(&DAT_000f7180 + uVar3 * 4);
  if (puVar4 == (undefined4 *)0x0) {
    uVar3 = *param_1;
    iStack_14 = 0x14;
    puVar4 = (undefined4 *)FUN_000be0bc(uVar3,&iStack_14);
    if (iStack_14 != 1) {
      puVar1 = (undefined4 *)((int)puVar4 + uVar3);
      *(undefined4 **)(&DAT_000f7180 + (uVar3 - 1 >> 1 & 0x7ffffffc)) = puVar1;
      iVar2 = iStack_14 + -2;
      if (iStack_14 + -2 != 0) {
        iVar2 = iStack_14 + -1;
        iStack_14 = 2 - iStack_14;
        puVar1 = puVar4;
        do {
          *(uint *)((int)puVar1 + uVar3) = (int)puVar1 + uVar3 * 2;
          puVar1 = (undefined4 *)((int)puVar1 + uVar3);
          iStack_14 = iStack_14 + 1;
        } while (iStack_14 != 0);
        iStack_14 = 0;
        puVar1 = (undefined4 *)((int)puVar4 + iVar2 * uVar3);
        iVar2 = iStack_14;
      }
      iStack_14 = iVar2;
      *puVar1 = 0;
    }
  }
  else {
    *(undefined4 *)(&DAT_000f7180 + uVar3 * 4) = *puVar4;
  }
  pthread_mutex_unlock((pthread_mutex_t *)&DAT_000f71e8);
  return puVar4;
}


/* address=000be240 symbol=_ZNSt12__node_alloc13_M_deallocateEPvj */

void _ZNSt12__node_alloc13_M_deallocateEPvj(undefined4 *param_1,int param_2)

{
  uint uVar1;
  
  pthread_mutex_lock((pthread_mutex_t *)&DAT_000f71e8);
  uVar1 = param_2 - 1U >> 1 & 0x7ffffffc;
  *param_1 = *(undefined4 *)(&DAT_000f7180 + uVar1);
  *(undefined4 **)(&DAT_000f7180 + uVar1) = param_1;
  pthread_mutex_unlock((pthread_mutex_t *)&DAT_000f71e8);
  return;
}


/* address=000be284 symbol=FUN_000be284 */

void FUN_000be284(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  undefined4 *puVar3;
  int local_14;
  
  local_14 = 0x80;
  iVar1 = FUN_000be2e0(param_2,&local_14,param_1);
  if (local_14 != 1) {
    puVar3 = (undefined4 *)(iVar1 + param_2);
    *(undefined4 **)(param_1 + (param_2 + 7U >> 1 & 0x7ffffffc) + -4) = puVar3;
    if (local_14 != 2) {
      iVar2 = local_14 + -2;
      puVar3 = (undefined4 *)((local_14 + -1) * param_2 + iVar1);
      do {
        *(int *)(iVar1 + param_2) = iVar1 + param_2 * 2;
        iVar1 = iVar1 + param_2;
        iVar2 = iVar2 + -1;
      } while (iVar2 != 0);
    }
    *puVar3 = 0;
  }
  return;
}


/* address=000be2e0 symbol=FUN_000be2e0 */

undefined4 * FUN_000be2e0(uint param_1,int *param_2,int param_3)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  
  pthread_mutex_lock((pthread_mutex_t *)&DAT_000f71e4);
  uVar3 = param_1 * *param_2;
  uVar1 = DAT_000f71d8 - (int)DAT_000f71dc;
  if (uVar1 < uVar3) {
    do {
      puVar5 = DAT_000f71dc;
      if (param_1 <= uVar1) {
        iVar2 = __udivsi3(uVar1,param_1);
        puVar4 = (undefined4 *)(iVar2 * param_1 + (int)puVar5);
        *param_2 = iVar2;
        goto LAB_000be3b0;
      }
      uVar3 = (DAT_000f71e0 + 7U & 0xfffffff8) + uVar3 * 2;
      if (uVar1 != 0) {
        iVar2 = (uVar1 + 7 >> 1 & 0x7ffffffc) + param_3;
        *DAT_000f71dc = *(undefined4 *)(iVar2 + -4);
        *(undefined4 **)(iVar2 + -4) = DAT_000f71dc;
      }
      DAT_000f71dc = (undefined4 *)_ZNSt14__malloc_alloc8allocateEj(uVar3);
      DAT_000f71d8 = (int)DAT_000f71dc + uVar3;
      DAT_000f71e0 = DAT_000f71e0 + (uVar3 >> 4);
      pthread_mutex_unlock((pthread_mutex_t *)&DAT_000f71e4);
      pthread_mutex_lock((pthread_mutex_t *)&DAT_000f71e4);
      uVar3 = *param_2 * param_1;
      uVar1 = DAT_000f71d8 - (int)DAT_000f71dc;
    } while (uVar1 < uVar3);
  }
  puVar4 = (undefined4 *)(uVar3 + (int)DAT_000f71dc);
  puVar5 = DAT_000f71dc;
LAB_000be3b0:
  DAT_000f71dc = puVar4;
  pthread_mutex_unlock((pthread_mutex_t *)&DAT_000f71e4);
  return puVar5;
}


/* address=000be40c symbol=FUN_000be40c */

void FUN_000be40c(int param_1)

{
  pthread_mutex_lock((pthread_mutex_t *)&DAT_000f71e4);
  *(int *)(param_1 + 0x40) = DAT_000f71cc;
  DAT_000f71cc = param_1;
  pthread_mutex_unlock((pthread_mutex_t *)&DAT_000f71e4);
  return;
}


/* address=000be438 symbol=FUN_000be438 */

int FUN_000be438(void)

{
  int iVar1;
  
  iVar1 = DAT_000f71cc;
  if (DAT_000f71cc != 0) {
    DAT_000f71cc = *(undefined4 *)(DAT_000f71cc + 0x40);
    return iVar1;
  }
  iVar1 = _Znwj(0x48);
  *(undefined4 *)(iVar1 + 0x40) = 0;
  pthread_mutex_init((pthread_mutex_t *)(iVar1 + 0x44),(pthread_mutexattr_t *)0x0);
  __aeabi_memclr(iVar1,0x40);
  return iVar1;
}


/* address=000be488 symbol=FUN_000be488 */

void * FUN_000be488(void)

{
  void *pvVar1;
  int iVar2;
  undefined4 uVar3;
  
  if ((DAT_000f71d0 != '\0') && (pvVar1 = pthread_getspecific(DAT_000f71d4), pvVar1 != (void *)0x0))
  {
    return pvVar1;
  }
  pthread_mutex_lock((pthread_mutex_t *)&DAT_000f71e4);
  if (DAT_000f71d0 == '\0') {
    iVar2 = pthread_key_create(&DAT_000f71d4,FUN_000be40c + 1);
    if (iVar2 != 0) {
      FUN_000bc1b4(4);
      uVar3 = FUN_000bcc60();
                    /* WARNING: Subroutine does not return */
      FUN_000bc380(uVar3,&PTR_PTR_DAT_000ebcd4,&LAB_000bcc78_1);
    }
    DAT_000f71d0 = '\x01';
  }
  if (DAT_000f71cc == (void *)0x0) {
    pvVar1 = (void *)_Znwj(0x48);
    *(undefined4 *)((int)pvVar1 + 0x40) = 0;
    pthread_mutex_init((pthread_mutex_t *)((int)pvVar1 + 0x44),(pthread_mutexattr_t *)0x0);
    __aeabi_memclr(pvVar1,0x40);
  }
  else {
    pvVar1 = DAT_000f71cc;
    DAT_000f71cc = *(void **)((int)DAT_000f71cc + 0x40);
  }
  iVar2 = pthread_setspecific(DAT_000f71d4,pvVar1);
  if (iVar2 == 0) {
    pthread_mutex_unlock((pthread_mutex_t *)&DAT_000f71e4);
    return pvVar1;
  }
  if (iVar2 == 0xc) {
    FUN_000bc1b4(4);
    uVar3 = FUN_000bcc60();
                    /* WARNING: Subroutine does not return */
    FUN_000bc380(uVar3,&PTR_PTR_DAT_000ebcd4,&LAB_000bcc78_1);
  }
                    /* WARNING: Subroutine does not return */
  abort();
}


/* address=000be5b4 symbol=FUN_000be5b4 */

void FUN_000be5b4(uint *param_1)

{
  int iVar1;
  undefined4 *puVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  int local_1c;
  
  if (*param_1 < 0x81) {
    *param_1 = *param_1 + 7 & 0xfffffff8;
    iVar1 = FUN_000be488();
    uVar4 = *param_1;
    iVar5 = (uVar4 + 7 >> 3) - 1;
    puVar2 = *(undefined4 **)(iVar1 + iVar5 * 4);
    if (puVar2 == (undefined4 *)0x0) {
      local_1c = 0x80;
      iVar3 = FUN_000be2e0(uVar4,&local_1c,iVar1);
      if (local_1c != 1) {
        puVar2 = (undefined4 *)(iVar3 + uVar4);
        *(undefined4 **)(iVar1 + iVar5 * 4) = puVar2;
        if (local_1c != 2) {
          iVar5 = local_1c + -2;
          iVar1 = iVar3;
          do {
            *(uint *)(iVar1 + uVar4) = iVar1 + uVar4 * 2;
            iVar1 = iVar1 + uVar4;
            iVar5 = iVar5 + -1;
          } while (iVar5 != 0);
          puVar2 = (undefined4 *)(uVar4 * (local_1c + -1) + iVar3);
        }
        *puVar2 = 0;
      }
    }
    else {
      *(undefined4 *)(iVar1 + iVar5 * 4) = *puVar2;
    }
    return;
  }
  _ZNSt14__malloc_alloc8allocateEj();
  return;
}


/* address=000be63c symbol=FUN_000be63c */

void FUN_000be63c(undefined4 *param_1,uint param_2)

{
  int iVar1;
  
  if (param_2 < 0x81) {
    iVar1 = FUN_000be488();
    iVar1 = iVar1 + (param_2 + 7 >> 1 & 0x7ffffffc);
    *param_1 = *(undefined4 *)(iVar1 + -4);
    *(undefined4 **)(iVar1 + -4) = param_1;
    return;
  }
  free(param_1);
  return;
}


/* address=000be670 symbol=FUN_000be670 */

undefined4 * FUN_000be670(uint *param_1,int param_2)

{
  undefined4 *puVar1;
  int iVar2;
  uint uVar3;
  undefined4 *puVar4;
  int local_24;
  
  if (*param_1 < 0x81) {
    *param_1 = *param_1 + 7 & 0xfffffff8;
    pthread_mutex_lock((pthread_mutex_t *)(param_2 + 0x44));
    uVar3 = *param_1;
    iVar2 = (uVar3 + 7 >> 3) - 1;
    puVar4 = *(undefined4 **)(param_2 + iVar2 * 4);
    if (puVar4 == (undefined4 *)0x0) {
      local_24 = 0x80;
      puVar4 = (undefined4 *)FUN_000be2e0(uVar3,&local_24,param_2);
      if (local_24 != 1) {
        puVar1 = (undefined4 *)((int)puVar4 + uVar3);
        *(undefined4 **)(param_2 + iVar2 * 4) = puVar1;
        if (local_24 != 2) {
          iVar2 = local_24 + -2;
          puVar1 = puVar4;
          do {
            *(uint *)((int)puVar1 + uVar3) = (int)puVar1 + uVar3 * 2;
            puVar1 = (undefined4 *)((int)puVar1 + uVar3);
            iVar2 = iVar2 + -1;
          } while (iVar2 != 0);
          puVar1 = (undefined4 *)(uVar3 * (local_24 + -1) + (int)puVar4);
        }
        *puVar1 = 0;
      }
    }
    else {
      *(undefined4 *)(param_2 + iVar2 * 4) = *puVar4;
    }
    pthread_mutex_unlock((pthread_mutex_t *)(param_2 + 0x44));
    return puVar4;
  }
  puVar4 = (undefined4 *)_ZNSt14__malloc_alloc8allocateEj();
  return puVar4;
}


/* address=000be7f2 symbol=_ZNSt4priv14_Pthread_alloc8allocateERj */

void _ZNSt4priv14_Pthread_alloc8allocateERj(uint *param_1)

{
  int iVar1;
  undefined4 *puVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  int iStack_1c;
  
  if (*param_1 < 0x81) {
    *param_1 = *param_1 + 7 & 0xfffffff8;
    iVar1 = FUN_000be488();
    uVar4 = *param_1;
    iVar5 = (uVar4 + 7 >> 3) - 1;
    puVar2 = *(undefined4 **)(iVar1 + iVar5 * 4);
    if (puVar2 == (undefined4 *)0x0) {
      iStack_1c = 0x80;
      iVar3 = FUN_000be2e0(uVar4,&iStack_1c,iVar1);
      if (iStack_1c != 1) {
        puVar2 = (undefined4 *)(iVar3 + uVar4);
        *(undefined4 **)(iVar1 + iVar5 * 4) = puVar2;
        if (iStack_1c != 2) {
          iVar5 = iStack_1c + -2;
          iVar1 = iVar3;
          do {
            *(uint *)(iVar1 + uVar4) = iVar1 + uVar4 * 2;
            iVar1 = iVar1 + uVar4;
            iVar5 = iVar5 + -1;
          } while (iVar5 != 0);
          puVar2 = (undefined4 *)(uVar4 * (iStack_1c + -1) + iVar3);
        }
        *puVar2 = 0;
      }
    }
    else {
      *(undefined4 *)(iVar1 + iVar5 * 4) = *puVar2;
    }
    return;
  }
  _ZNSt14__malloc_alloc8allocateEj();
  return;
}


/* address=000be7f6 symbol=_ZNSt4priv14_Pthread_alloc10deallocateEPvj */

void _ZNSt4priv14_Pthread_alloc10deallocateEPvj(undefined4 *param_1,uint param_2)

{
  int iVar1;
  
  if (param_2 < 0x81) {
    iVar1 = FUN_000be488();
    iVar1 = iVar1 + (param_2 + 7 >> 1 & 0x7ffffffc);
    *param_1 = *(undefined4 *)(iVar1 + -4);
    *(undefined4 **)(iVar1 + -4) = param_1;
    return;
  }
  free(param_1);
  return;
}


/* address=000be82a symbol=_ZNSt4priv14_Pthread_alloc8allocateERjPNS_31_Pthread_alloc_per_thread_stateE */

undefined4 *
_ZNSt4priv14_Pthread_alloc8allocateERjPNS_31_Pthread_alloc_per_thread_stateE
          (uint *param_1,int param_2)

{
  undefined4 *puVar1;
  int iVar2;
  uint uVar3;
  undefined4 *puVar4;
  int iStack_24;
  
  if (*param_1 < 0x81) {
    *param_1 = *param_1 + 7 & 0xfffffff8;
    pthread_mutex_lock((pthread_mutex_t *)(param_2 + 0x44));
    uVar3 = *param_1;
    iVar2 = (uVar3 + 7 >> 3) - 1;
    puVar4 = *(undefined4 **)(param_2 + iVar2 * 4);
    if (puVar4 == (undefined4 *)0x0) {
      iStack_24 = 0x80;
      puVar4 = (undefined4 *)FUN_000be2e0(uVar3,&iStack_24,param_2);
      if (iStack_24 != 1) {
        puVar1 = (undefined4 *)((int)puVar4 + uVar3);
        *(undefined4 **)(param_2 + iVar2 * 4) = puVar1;
        if (iStack_24 != 2) {
          iVar2 = iStack_24 + -2;
          puVar1 = puVar4;
          do {
            *(uint *)((int)puVar1 + uVar3) = (int)puVar1 + uVar3 * 2;
            puVar1 = (undefined4 *)((int)puVar1 + uVar3);
            iVar2 = iVar2 + -1;
          } while (iVar2 != 0);
          puVar1 = (undefined4 *)(uVar3 * (iStack_24 + -1) + (int)puVar4);
        }
        *puVar1 = 0;
      }
    }
    else {
      *(undefined4 *)(param_2 + iVar2 * 4) = *puVar4;
    }
    pthread_mutex_unlock((pthread_mutex_t *)(param_2 + 0x44));
    return puVar4;
  }
  puVar4 = (undefined4 *)_ZNSt14__malloc_alloc8allocateEj();
  return puVar4;
}


/* address=000be82e symbol=_ZNSt4priv14_Pthread_alloc10deallocateEPvjPNS_31_Pthread_alloc_per_thread_stateE */

void _ZNSt4priv14_Pthread_alloc10deallocateEPvjPNS_31_Pthread_alloc_per_thread_stateE
               (undefined4 *param_1,uint param_2,int param_3)

{
  int iVar1;
  
  if (param_2 < 0x81) {
    pthread_mutex_lock((pthread_mutex_t *)(param_3 + 0x44));
    iVar1 = (param_2 + 7 >> 1 & 0x7ffffffc) + param_3;
    *param_1 = *(undefined4 *)(iVar1 + -4);
    *(undefined4 **)(iVar1 + -4) = param_1;
    pthread_mutex_unlock((pthread_mutex_t *)(param_3 + 0x44));
    return;
  }
  free(param_1);
  return;
}


/* address=000be880 symbol=_ZNSt4priv14_Pthread_alloc10reallocateEPvjRj */

undefined4 *
_ZNSt4priv14_Pthread_alloc10reallocateEPvjRj(undefined4 *param_1,uint param_2,size_t *param_3)

{
  undefined4 *puVar1;
  int iVar2;
  size_t __size;
  uint uVar3;
  
  __size = *param_3;
  if (0x80 < param_2 && 0x80 < __size) {
    puVar1 = (undefined4 *)realloc(param_1,__size);
    return puVar1;
  }
  if (7 < (__size + 7 ^ param_2 + 7)) {
    puVar1 = (undefined4 *)FUN_000be5b4(param_3);
    uVar3 = *param_3;
    if (param_2 < *param_3) {
      uVar3 = param_2;
    }
    __aeabi_memcpy(puVar1,param_1,uVar3);
    if (param_2 < 0x81) {
      iVar2 = FUN_000be488();
      iVar2 = iVar2 + (param_2 + 7 >> 1 & 0x7ffffffc);
      *param_1 = *(undefined4 *)(iVar2 + -4);
      *(undefined4 **)(iVar2 + -4) = param_1;
      param_1 = puVar1;
    }
    else {
      free(param_1);
      param_1 = puVar1;
    }
  }
  return param_1;
}


/* address=000be8fe symbol=_ZNSt4priv14_Pthread_alloc23_S_get_per_thread_stateEv */

void * _ZNSt4priv14_Pthread_alloc23_S_get_per_thread_stateEv(void)

{
  void *pvVar1;
  int iVar2;
  undefined4 uVar3;
  
  if ((DAT_000f71d0 != '\0') && (pvVar1 = pthread_getspecific(DAT_000f71d4), pvVar1 != (void *)0x0))
  {
    return pvVar1;
  }
  pthread_mutex_lock((pthread_mutex_t *)&DAT_000f71e4);
  if (DAT_000f71d0 == '\0') {
    iVar2 = pthread_key_create(&DAT_000f71d4,FUN_000be40c + 1);
    if (iVar2 != 0) {
      FUN_000bc1b4(4);
      uVar3 = FUN_000bcc60();
                    /* WARNING: Subroutine does not return */
      FUN_000bc380(uVar3,&PTR_PTR_DAT_000ebcd4,&LAB_000bcc78_1);
    }
    DAT_000f71d0 = '\x01';
  }
  if (DAT_000f71cc == (void *)0x0) {
    pvVar1 = (void *)_Znwj(0x48);
    *(undefined4 *)((int)pvVar1 + 0x40) = 0;
    pthread_mutex_init((pthread_mutex_t *)((int)pvVar1 + 0x44),(pthread_mutexattr_t *)0x0);
    __aeabi_memclr(pvVar1,0x40);
  }
  else {
    pvVar1 = DAT_000f71cc;
    DAT_000f71cc = *(void **)((int)DAT_000f71cc + 0x40);
  }
  iVar2 = pthread_setspecific(DAT_000f71d4,pvVar1);
  if (iVar2 == 0) {
    pthread_mutex_unlock((pthread_mutex_t *)&DAT_000f71e4);
    return pvVar1;
  }
  if (iVar2 == 0xc) {
    FUN_000bc1b4(4);
    uVar3 = FUN_000bcc60();
                    /* WARNING: Subroutine does not return */
    FUN_000bc380(uVar3,&PTR_PTR_DAT_000ebcd4,&LAB_000bcc78_1);
  }
                    /* WARNING: Subroutine does not return */
  abort();
}


/* address=000be904 symbol=__cxa_end_cleanup */

void __cxa_end_cleanup(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  
  uVar1 = FUN_000be9ca();
                    /* WARNING: Subroutine does not return */
  ___Unwind_Resume(uVar1,param_2,param_3,param_4);
}


/* address=000be914 symbol=__cxa_type_match */

undefined4 __cxa_type_match(int param_1,int *param_2,undefined4 param_3,undefined4 *param_4)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 *local_1c;
  
  iVar2 = *(int *)(param_1 + -0x34);
  if (iVar2 != 0) {
    local_1c = (undefined4 *)(param_1 + 0x58);
    iVar1 = FUN_000bc548(iVar2,&DAT_000ebd74,&PTR_PTR_DAT_000ebd08,0);
    if (iVar1 == 0) {
      uVar3 = 1;
    }
    else {
      local_1c = *(undefined4 **)(undefined4 *)(param_1 + 0x58);
      uVar3 = 2;
    }
    if (param_2 != (int *)0x0) {
      iVar2 = (**(code **)(*param_2 + 8))(param_2,iVar2,&local_1c);
      if (iVar2 != 1) {
        return 0;
      }
      *param_4 = local_1c;
      return uVar3;
    }
  }
  return 0;
}


/* address=000be980 symbol=__cxa_begin_cleanup */

undefined4 __cxa_begin_cleanup(uint *param_1)

{
  int iVar1;
  uint uVar2;
  
  iVar1 = FUN_000bc064();
  if ((*param_1 ^ 0x432b2b00 | param_1[1] ^ 0x474e5543) == 0) {
    uVar2 = param_1[-6];
    param_1[-6] = uVar2 + 1;
    if (uVar2 != 0) {
      return 1;
    }
    param_1[-7] = *(uint *)(iVar1 + 8);
  }
  *(uint **)(iVar1 + 8) = param_1 + -0xe;
  return 1;
}


/* address=000be9ca symbol=FUN_000be9ca */

void FUN_000be9ca(void)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  
  iVar1 = FUN_000bc064();
  piVar2 = (int *)(iVar1 + 8);
  iVar1 = *piVar2;
  if (iVar1 == 0) {
                    /* WARNING: Subroutine does not return */
    FUN_000bd128();
  }
  if ((*(uint *)(iVar1 + 0x3c) ^ 0x474e5543 | *(uint *)(iVar1 + 0x38) ^ 0x432b2b00) == 0) {
    iVar3 = *(int *)(iVar1 + 0x20) + -1;
    *(int *)(iVar1 + 0x20) = iVar3;
    if (iVar3 != 0) {
      return;
    }
    *piVar2 = *(int *)(iVar1 + 0x1c);
    piVar2 = (int *)(iVar1 + 0x1c);
  }
  *piVar2 = 0;
  return;
}


/* address=000bea20 symbol=__cxa_call_unexpected */

void __cxa_call_unexpected(uint *param_1)

{
  if ((*param_1 ^ 0x432b2b00 | param_1[1] ^ 0x474e5543) == 0) {
    FUN_000bc26c(param_1);
    (*(code *)param_1[-0xb])();
                    /* WARNING: Subroutine does not return */
    FUN_000bd128();
  }
  FUN_000bc26c(param_1);
  FUN_000bd21c();
  FUN_000bc26c();
                    /* WARNING: Subroutine does not return */
  FUN_000bd128();
}


/* address=000beb88 symbol=FUN_000beb88 */

uint FUN_000beb88(byte **param_1)

{
  byte bVar1;
  uint uVar2;
  uint uVar3;
  byte *pbVar4;
  byte *pbVar5;
  
  uVar3 = 0;
  uVar2 = 0;
  pbVar5 = *param_1;
  do {
    pbVar4 = pbVar5 + 1;
    bVar1 = *pbVar5;
    uVar2 = uVar2 | (bVar1 & 0x7f) << (uVar3 & 0xff);
    uVar3 = uVar3 + 7;
    pbVar5 = pbVar4;
  } while ((bVar1 & 0x80) != 0);
  *param_1 = pbVar4;
  return uVar2;
}


/* address=000bebb6 symbol=FUN_000bebb6 */

uint FUN_000bebb6(byte **param_1)

{
  byte bVar1;
  uint uVar2;
  uint uVar3;
  byte *pbVar4;
  uint uVar6;
  byte *pbVar5;
  
  uVar3 = 0;
  uVar6 = 0;
  pbVar5 = *param_1;
  do {
    pbVar4 = pbVar5 + 1;
    bVar1 = *pbVar5;
    uVar6 = uVar6 | (bVar1 & 0x7f) << (uVar3 & 0xff);
    uVar3 = uVar3 + 7;
    pbVar5 = pbVar4;
  } while ((bVar1 & 0x80) != 0);
  *param_1 = pbVar4;
  uVar2 = uVar6;
  if ((int)((uint)bVar1 << 0x19) < 0) {
    uVar2 = uVar6 | -1 << (uVar3 & 0xff);
  }
  if (0x1f < uVar3) {
    uVar2 = uVar6;
  }
  return uVar2;
}


/* address=000bebf8 symbol=FUN_000bebf8 */

/* WARNING: Type propagation algorithm not settling */

byte ** FUN_000bebf8(byte **param_1,uint param_2)

{
  byte bVar1;
  uint uVar2;
  byte **ppbVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  byte **ppbVar7;
  
  if (param_2 == 0xff) {
    return (byte **)0x0;
  }
  puVar6 = (undefined4 *)*param_1;
  switch(param_2 & 0xf) {
  case 0:
  case 3:
  case 0xb:
    puVar5 = puVar6 + 1;
    ppbVar7 = (byte **)*puVar6;
    break;
  case 1:
    uVar2 = 0;
    ppbVar7 = (byte **)0x0;
    puVar4 = puVar6;
    do {
      puVar5 = (undefined4 *)((int)puVar4 + 1);
      bVar1 = *(byte *)puVar4;
      ppbVar7 = (byte **)((uint)ppbVar7 | (bVar1 & 0x7f) << (uVar2 & 0xff));
      uVar2 = uVar2 + 7;
      puVar4 = puVar5;
    } while ((bVar1 & 0x80) != 0);
    break;
  case 2:
    puVar5 = (undefined4 *)((int)puVar6 + 2);
    ppbVar7 = (byte **)(uint)*(ushort *)puVar6;
    break;
  case 4:
  case 0xc:
    puVar5 = puVar6 + 2;
    ppbVar7 = (byte **)*puVar6;
    break;
  default:
    goto switchD_000bec12_caseD_5;
  case 9:
    uVar2 = 0;
    ppbVar3 = (byte **)0x0;
    puVar4 = puVar6;
    do {
      puVar5 = (undefined4 *)((int)puVar4 + 1);
      bVar1 = *(byte *)puVar4;
      ppbVar3 = (byte **)((uint)ppbVar3 | (bVar1 & 0x7f) << (uVar2 & 0xff));
      uVar2 = uVar2 + 7;
      puVar4 = puVar5;
    } while ((bVar1 & 0x80) != 0);
    ppbVar7 = ppbVar3;
    if ((int)((uint)bVar1 << 0x19) < 0) {
      ppbVar7 = (byte **)((uint)ppbVar3 | -1 << (uVar2 & 0xff));
    }
    if (0x1f < uVar2) {
      ppbVar7 = ppbVar3;
    }
    break;
  case 10:
    puVar5 = (undefined4 *)((int)puVar6 + 2);
    ppbVar7 = (byte **)(int)*(short *)puVar6;
  }
  if ((param_2 & 0x70) != 0) {
    if ((param_2 & 0x70) != 0x10) {
switchD_000bec12_caseD_5:
                    /* WARNING: Subroutine does not return */
      abort();
    }
    if (ppbVar7 == (byte **)0x0) {
      ppbVar7 = (byte **)0x0;
      goto LAB_000bec8e;
    }
    ppbVar7 = (byte **)((int)ppbVar7 + (int)puVar6);
  }
  if (((int)(param_2 << 0x18) < 0) && (ppbVar7 != (byte **)0x0)) {
    ppbVar7 = (byte **)*ppbVar7;
  }
LAB_000bec8e:
  *param_1 = (byte *)puVar5;
  return ppbVar7;
}


/* address=000bed10 symbol=FUN_000bed10 */

void FUN_000bed10(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_000bed20_1_000ebf04;
  return;
}


/* address=000bed20 symbol=FUN_000bed20 */

void FUN_000bed20(void)

{
  return;
}


/* address=000bed80 symbol=FUN_000bed80 */

void FUN_000bed80(undefined4 param_1)

{
  FUN_000bc000();
  _ZdlPv(param_1);
  return;
}


/* address=000bedac symbol=FUN_000bedac */

void FUN_000bedac(undefined4 param_1)

{
  FUN_000bc000();
  _ZdlPv(param_1);
  return;
}


/* address=000bedd4 symbol=FUN_000bedd4 */

void FUN_000bedd4(void)

{
  return;
}


/* address=000bee08 symbol=FUN_000bee08 */

undefined4 FUN_000bee08(int *param_1,int *param_2,undefined4 param_3,int param_4)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  undefined4 uVar4;
  int iVar5;
  int *piVar6;
  uint uVar7;
  int *piVar8;
  code *UNRECOVERED_JUMPTABLE;
  char cVar9;
  char cVar10;
  ulonglong uVar11;
  byte *pbVar12;
  byte bStack_49;
  undefined4 uStack_48;
  char cStack_21;
  
  iVar2 = param_4;
  iVar1 = FUN_000bd24e();
  if (iVar1 != 0) {
    return 1;
  }
  cVar10 = (int)param_1 < 0;
  if (param_1 != (int *)0x0) {
    cVar10 = (int)param_2 < 0;
  }
  cVar9 = '\0';
  if (param_1 == (int *)0x0 || param_2 == (int *)0x0) {
    UNRECOVERED_JUMPTABLE = (code *)0xbeecd;
    uVar11 = FUN_000bef70();
    iVar1 = (int)(uVar11 >> 0x20);
    piVar8 = (int *)uVar11;
    if (cVar10 == cVar9) {
      if ((int)piVar8 < 0) {
        uVar4 = FUN_000bd24e();
        return uVar4;
      }
      pbVar12 = &bStack_49;
      uStack_48 = param_3;
      iVar5 = (**(code **)(*piVar8 + 0x10))(piVar8);
      if (iVar5 == 1) {
        uVar7 = (uint)bStack_49;
        if (uVar7 != 0) {
          uVar7 = 1;
        }
      }
      else {
        piVar3 = (int *)piVar8[3];
        if ((piVar3 == (int *)0x0) ||
           (piVar6 = (int *)FUN_000bc548(piVar3,&PTR_PTR_DAT_000ebca0,&PTR_PTR_DAT_000ec338,0,
                                         pbVar12), piVar6 == (int *)0x0)) {
          uVar7 = (**(code **)(*piVar3 + 8))(piVar3,*(undefined4 *)(iVar1 + 0xc),piVar8);
        }
        else {
          uVar7 = (**(code **)(*piVar6 + 0xc))(piVar6,*(undefined4 *)(iVar1 + 0xc),piVar8,iVar2);
        }
      }
                    /* WARNING: Could not recover jumptable at 0x000bef3c. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      uVar4 = (*UNRECOVERED_JUMPTABLE)(uVar7);
      return uVar4;
    }
  }
  else {
    iVar2 = FUN_000bd266(*(undefined4 *)(*param_1 + -4),*(undefined4 *)(*param_2 + -4));
    if (iVar2 != 0) {
      return 0;
    }
    if ((param_2[2] & ~param_1[2]) != 0) {
      return 0;
    }
    uVar11 = CONCAT44(param_4,param_1[2]) & 0xfffffffeffffffff;
  }
  uVar7 = (uint)(uVar11 >> 0x20);
  if (param_4 == 1) {
    uVar7 = 3;
  }
  if ((uVar7 & 5) == 4) {
    return 0;
  }
  uVar7 = ~((int)uVar11 << 2) & 4U | uVar7;
  iVar2 = (**(code **)(*param_1 + 0x10))(param_1,param_2,param_3,uVar7);
  if (iVar2 == 1) {
    if (cStack_21 != '\0') {
      return 1;
    }
    return 0;
  }
  piVar8 = (int *)param_1[3];
  if ((piVar8 != (int *)0x0) &&
     (piVar3 = (int *)FUN_000bc548(piVar8,&PTR_PTR_DAT_000ebca0,&PTR_PTR_DAT_000ec338,0),
     piVar3 != (int *)0x0)) {
    uVar4 = (**(code **)(*piVar3 + 0xc))(piVar3,param_2[3],param_3,uVar7);
    return uVar4;
  }
  uVar4 = (**(code **)(*piVar8 + 8))(piVar8,param_2[3],param_3);
  return uVar4;
}


/* address=000bef48 symbol=FUN_000bef48 */

void FUN_000bef48(void)

{
  undefined4 uVar1;
  
  FUN_000bc1b4(4);
  uVar1 = FUN_000bd28c();
                    /* WARNING: Subroutine does not return */
  FUN_000bc380(uVar1,&PTR_PTR_DAT_000ebd7c,&LAB_000bd2a4_1);
}


/* address=000bef70 symbol=FUN_000bef70 */

void FUN_000bef70(void)

{
  undefined4 uVar1;
  
  FUN_000bc1b4(4);
  uVar1 = FUN_000bd2cc();
                    /* WARNING: Subroutine does not return */
  FUN_000bc380(uVar1,&PTR_PTR_DAT_000ebd88,&LAB_000bd2e4_1);
}


/* address=000bef98 symbol=__gnu_thumb1_case_uqi */

/* WARNING: This is an inlined function */

void __gnu_thumb1_case_uqi(void)

{
  return;
}


/* address=000befac symbol=__udivsi3 */

uint __udivsi3(uint param_1,uint param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  bool bVar4;
  
  if (param_2 - 1 == 0) {
    return param_1;
  }
  if (param_2 == 0) {
    if (param_1 != 0) {
      param_1 = 0xffffffff;
    }
    uVar1 = __aeabi_ldiv0(param_1);
    return uVar1;
  }
  if (param_1 <= param_2) {
    return (uint)(param_1 == param_2);
  }
  if ((param_2 & param_2 - 1) == 0) {
    return param_1 >> (0x1fU - LZCOUNT(param_2) & 0xff);
  }
  uVar2 = param_2 << (LZCOUNT(param_2) - LZCOUNT(param_1) & 0xffU);
  uVar1 = 1 << (LZCOUNT(param_2) - LZCOUNT(param_1) & 0xffU);
  uVar3 = 0;
  while( true ) {
    if (uVar2 <= param_1) {
      param_1 = param_1 - uVar2;
      uVar3 = uVar3 | uVar1;
    }
    if (uVar2 >> 1 <= param_1) {
      param_1 = param_1 - (uVar2 >> 1);
      uVar3 = uVar3 | uVar1 >> 1;
    }
    if (uVar2 >> 2 <= param_1) {
      param_1 = param_1 - (uVar2 >> 2);
      uVar3 = uVar3 | uVar1 >> 2;
    }
    if (uVar2 >> 3 <= param_1) {
      param_1 = param_1 - (uVar2 >> 3);
      uVar3 = uVar3 | uVar1 >> 3;
    }
    bVar4 = param_1 == 0;
    if (!bVar4) {
      uVar1 = uVar1 >> 4;
      bVar4 = uVar1 == 0;
    }
    if (bVar4) break;
    uVar2 = uVar2 >> 4;
  }
  return uVar3;
}


/* address=000bf054 symbol=__aeabi_uidivmod */

void __aeabi_uidivmod(int param_1,int param_2)

{
  if (param_2 != 0) {
    __udivsi3();
    return;
  }
  if (param_1 != 0) {
    param_1 = -1;
  }
  __aeabi_ldiv0(param_1);
  return;
}


/* address=000bf074 symbol=__divsi3 */

uint __divsi3(uint param_1,uint param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  bool bVar6;
  
  if (param_2 == 0) {
    bVar6 = (int)param_1 < 0;
    if (0 < (int)param_1) {
      param_1 = 0x7fffffff;
    }
    if (bVar6) {
      param_1 = 0x80000000;
    }
    uVar1 = __aeabi_ldiv0(param_1);
    return uVar1;
  }
  uVar5 = param_1 ^ param_2;
  uVar1 = param_2;
  if ((int)param_2 < 0) {
    uVar1 = -param_2;
  }
  if (uVar1 - 1 == 0) {
    if ((int)param_2 < 0) {
      param_1 = -param_1;
    }
    return param_1;
  }
  uVar4 = param_1;
  if ((int)param_1 < 0) {
    uVar4 = -param_1;
  }
  if (uVar4 <= uVar1) {
    if (uVar4 < uVar1) {
      param_1 = 0;
    }
    if (uVar4 == uVar1) {
      param_1 = (int)uVar5 >> 0x1f | 1;
    }
    return param_1;
  }
  if ((uVar1 & uVar1 - 1) == 0) {
    uVar4 = uVar4 >> (0x1fU - LZCOUNT(uVar1) & 0xff);
    if ((int)uVar5 < 0) {
      uVar4 = -uVar4;
    }
    return uVar4;
  }
  uVar3 = uVar1 << (LZCOUNT(uVar1) - LZCOUNT(uVar4) & 0xffU);
  uVar1 = 1 << (LZCOUNT(uVar1) - LZCOUNT(uVar4) & 0xffU);
  uVar2 = 0;
  while( true ) {
    if (uVar3 <= uVar4) {
      uVar4 = uVar4 - uVar3;
      uVar2 = uVar2 | uVar1;
    }
    if (uVar3 >> 1 <= uVar4) {
      uVar4 = uVar4 - (uVar3 >> 1);
      uVar2 = uVar2 | uVar1 >> 1;
    }
    if (uVar3 >> 2 <= uVar4) {
      uVar4 = uVar4 - (uVar3 >> 2);
      uVar2 = uVar2 | uVar1 >> 2;
    }
    if (uVar3 >> 3 <= uVar4) {
      uVar4 = uVar4 - (uVar3 >> 3);
      uVar2 = uVar2 | uVar1 >> 3;
    }
    bVar6 = uVar4 == 0;
    if (!bVar6) {
      uVar1 = uVar1 >> 4;
      bVar6 = uVar1 == 0;
    }
    if (bVar6) break;
    uVar3 = uVar3 >> 4;
  }
  if ((int)uVar5 < 0) {
    uVar2 = -uVar2;
  }
  return uVar2;
}


/* address=000bf07c symbol=FUN_000bf07c */

uint FUN_000bf07c(uint param_1,uint param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  bool in_NG;
  bool bVar6;
  
  uVar5 = param_1 ^ param_2;
  uVar2 = param_2;
  if (in_NG) {
    uVar2 = -param_2;
  }
  if (uVar2 - 1 == 0) {
    if ((int)param_2 < 0) {
      param_1 = -param_1;
    }
    return param_1;
  }
  uVar4 = param_1;
  if ((int)param_1 < 0) {
    uVar4 = -param_1;
  }
  if (uVar4 <= uVar2) {
    if (uVar4 < uVar2) {
      param_1 = 0;
    }
    if (uVar4 == uVar2) {
      param_1 = (int)uVar5 >> 0x1f | 1;
    }
    return param_1;
  }
  if ((uVar2 & uVar2 - 1) == 0) {
    uVar4 = uVar4 >> (0x1fU - LZCOUNT(uVar2) & 0xff);
    if ((int)uVar5 < 0) {
      uVar4 = -uVar4;
    }
    return uVar4;
  }
  uVar3 = uVar2 << (LZCOUNT(uVar2) - LZCOUNT(uVar4) & 0xffU);
  uVar2 = 1 << (LZCOUNT(uVar2) - LZCOUNT(uVar4) & 0xffU);
  uVar1 = 0;
  while( true ) {
    if (uVar3 <= uVar4) {
      uVar4 = uVar4 - uVar3;
      uVar1 = uVar1 | uVar2;
    }
    if (uVar3 >> 1 <= uVar4) {
      uVar4 = uVar4 - (uVar3 >> 1);
      uVar1 = uVar1 | uVar2 >> 1;
    }
    if (uVar3 >> 2 <= uVar4) {
      uVar4 = uVar4 - (uVar3 >> 2);
      uVar1 = uVar1 | uVar2 >> 2;
    }
    if (uVar3 >> 3 <= uVar4) {
      uVar4 = uVar4 - (uVar3 >> 3);
      uVar1 = uVar1 | uVar2 >> 3;
    }
    bVar6 = uVar4 == 0;
    if (!bVar6) {
      uVar2 = uVar2 >> 4;
      bVar6 = uVar2 == 0;
    }
    if (bVar6) break;
    uVar3 = uVar3 >> 4;
  }
  if ((int)uVar5 < 0) {
    uVar1 = -uVar1;
  }
  return uVar1;
}


/* address=000bf150 symbol=__aeabi_idivmod */

void __aeabi_idivmod(int param_1,int param_2)

{
  bool bVar1;
  
  if (param_2 != 0) {
    FUN_000bf07c();
    return;
  }
  bVar1 = param_1 < 0;
  if (0 < param_1) {
    param_1 = 0x7fffffff;
  }
  if (bVar1) {
    param_1 = -0x80000000;
  }
  __aeabi_ldiv0(param_1);
  return;
}


/* address=000bf170 symbol=__aeabi_ldivmod */

void __aeabi_ldivmod(int param_1,int param_2,int param_3,int param_4)

{
  bool bVar1;
  bool bVar2;
  bool bVar3;
  
  if (param_4 != 0 || param_3 != 0) {
    __gnu_ldivmod_helper();
    return;
  }
  bVar2 = param_2 < 0;
  bVar3 = param_2 == 0;
  if (bVar3) {
    bVar2 = param_1 < 0;
  }
  bVar1 = param_1 != 0;
  if (bVar2) {
    param_2 = -0x80000000;
    param_1 = 0;
  }
  if ((!bVar3 || bVar1) && !bVar2) {
    param_2 = 0x7fffffff;
  }
  if ((!bVar3 || bVar1) && !bVar2) {
    param_1 = -1;
  }
  __aeabi_ldiv0(param_1,param_2);
  return;
}


/* address=000bf1b4 symbol=__aeabi_ldiv0 */

void __aeabi_ldiv0(void)

{
  raise(8);
  return;
}


/* address=000bf1c4 symbol=__gnu_ldivmod_helper */

void __gnu_ldivmod_helper
               (uint param_1,int param_2,undefined4 param_3,undefined4 param_4,int *param_5)

{
  uint uVar1;
  longlong lVar2;
  
  lVar2 = __divdi3();
  lVar2 = lVar2 * CONCAT44(param_4,param_3);
  uVar1 = (uint)lVar2;
  *param_5 = param_1 - uVar1;
  param_5[1] = param_2 - ((int)((ulonglong)lVar2 >> 0x20) + (uint)(param_1 < uVar1));
  return;
}


/* address=000bf200 symbol=__gnu_uldivmod_helper */

void __gnu_uldivmod_helper
               (uint param_1,int param_2,undefined4 param_3,undefined4 param_4,int *param_5)

{
  uint uVar1;
  longlong lVar2;
  
  lVar2 = __udivdi3();
  lVar2 = lVar2 * CONCAT44(param_4,param_3);
  uVar1 = (uint)lVar2;
  *param_5 = param_1 - uVar1;
  param_5[1] = param_2 - ((int)((ulonglong)lVar2 >> 0x20) + (uint)(param_1 < uVar1));
  return;
}


/* address=000bf23c symbol=FUN_000bf23c */

int FUN_000bf23c(uint *param_1)

{
  uint uVar1;
  
  uVar1 = *param_1;
  if ((uVar1 & 0x40000000) == 0) {
    uVar1 = uVar1 & 0x7fffffff;
  }
  else {
    uVar1 = uVar1 | 0x80000000;
  }
  return (int)param_1 + uVar1;
}


/* address=000bf254 symbol=FUN_000bf254 */

int FUN_000bf254(int param_1,int param_2,uint param_3)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  
  if (param_2 == 0) {
    return 0;
  }
  iVar6 = 0;
  iVar5 = param_2 + -1;
  do {
    while( true ) {
      iVar1 = (iVar6 + iVar5) / 2;
      iVar4 = param_1 + iVar1 * 8;
      uVar2 = FUN_000bf23c(iVar4);
      if (iVar1 == param_2 + -1) break;
      iVar3 = FUN_000bf23c(param_1 + iVar1 * 8 + 8);
      if (param_3 < uVar2) goto LAB_000bf2b8;
      if (param_3 <= iVar3 - 1U) {
        return iVar4;
      }
      iVar6 = iVar1 + 1;
    }
    if (uVar2 <= param_3) {
      return iVar4;
    }
LAB_000bf2b8:
    if (iVar1 == iVar6) {
      return 0;
    }
    iVar5 = iVar1 + -1;
  } while( true );
}


/* address=000bf2f8 symbol=FUN_000bf2f8 */

code * FUN_000bf2f8(int param_1)

{
  if (param_1 == 1) {
    return __aeabi_unwind_cpp_pr1;
  }
  if (param_1 != 2) {
    if (param_1 == 0) {
      return __aeabi_unwind_cpp_pr0;
    }
    return (code *)0x0;
  }
  return __aeabi_unwind_cpp_pr2;
}


/* address=000bf348 symbol=FUN_000bf348 */

/* WARNING: Removing unreachable block (ram,0x000bf388) */

undefined4 FUN_000bf348(int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  bool bVar4;
  int local_14;
  undefined4 uStack_10;
  
  local_14 = param_2;
  uStack_10 = param_3;
  iVar1 = __gnu_Unwind_Find_exidx(param_2 + -2,&local_14,param_3,__gnu_Unwind_Find_exidx,param_1);
  if ((iVar1 == 0) || (iVar1 = FUN_000bf254(iVar1,local_14,param_2 + -2), iVar1 == 0)) {
    uVar2 = 9;
    *(undefined4 *)(param_1 + 0x10) = 0;
  }
  else {
    uVar2 = FUN_000bf23c();
    iVar3 = *(int *)(iVar1 + 4);
    bVar4 = iVar3 == 1;
    if (bVar4) {
      iVar3 = 0;
      *(undefined4 *)(param_1 + 0x10) = 0;
    }
    *(undefined4 *)(param_1 + 0x48) = uVar2;
    if (bVar4) {
      uVar2 = 5;
    }
    else {
      if (iVar3 < 0) {
        *(int *)(param_1 + 0x4c) = iVar1 + 4;
      }
      else {
        uVar2 = FUN_000bf23c();
        *(undefined4 *)(param_1 + 0x4c) = uVar2;
      }
      *(uint *)(param_1 + 0x50) = (uint)(iVar3 < 0);
      if (**(int **)(param_1 + 0x4c) < 0) {
        iVar1 = FUN_000bf2f8((uint)(**(int **)(param_1 + 0x4c) << 4) >> 0x1c);
        *(int *)(param_1 + 0x10) = iVar1;
        if (iVar1 == 0) {
          uVar2 = 9;
        }
        else {
          uVar2 = 0;
        }
      }
      else {
        uVar2 = FUN_000bf23c();
        *(undefined4 *)(param_1 + 0x10) = uVar2;
        uVar2 = 0;
      }
    }
  }
  return uVar2;
}


/* address=000bf448 symbol=FUN_000bf448 */

void FUN_000bf448(uint *param_1)

{
  if ((*param_1 & 1) == 0) {
    if ((*param_1 & 2) == 0) {
      __gnu_Unwind_Restore_VFP(param_1 + 0x12);
    }
    else {
      __gnu_Unwind_Restore_VFP_D();
    }
  }
  if ((*param_1 & 4) == 0) {
    __gnu_Unwind_Restore_VFP_D_16_to_31(param_1 + 0x34);
  }
  if ((*param_1 & 8) == 0) {
    __gnu_Unwind_Restore_WMMXD(param_1 + 0x54);
  }
  if ((*param_1 & 0x10) != 0) {
    return;
  }
  __gnu_Unwind_Restore_WMMXC(param_1 + 0x74);
  return;
}


/* address=000bf4b4 symbol=FUN_000bf4b4 */

undefined4 FUN_000bf4b4(int *param_1)

{
  undefined4 uVar1;
  
  if (*param_1 == 0) {
    uVar1 = 0;
  }
  else {
    uVar1 = *(undefined4 *)(*param_1 + (int)param_1);
  }
  return uVar1;
}


/* address=000bf4c8 symbol=FUN_000bf4c8 */

undefined4 FUN_000bf4c8(void)

{
  return 9;
}


/* address=000bf4d0 symbol=FUN_000bf4d0 */

void FUN_000bf4d0(void)

{
  return;
}


/* address=000bf4d4 symbol=FUN_000bf4d4 */

int FUN_000bf4d4(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  code *pcVar5;
  undefined4 uVar6;
  uint uVar7;
  undefined8 uVar8;
  undefined4 uStack_3f8;
  undefined4 uStack_3f4;
  undefined4 uStack_3f0;
  undefined4 uStack_3ec;
  undefined4 uStack_3e8;
  undefined4 uStack_3e4;
  undefined4 uStack_3e0;
  undefined4 uStack_3dc;
  undefined4 uStack_3d8;
  undefined4 uStack_3d4;
  undefined4 uStack_3d0;
  undefined4 uStack_3cc;
  undefined4 uStack_3c8;
  undefined4 uStack_3c4;
  undefined4 uStack_3c0;
  undefined4 uStack_3bc;
  undefined4 uStack_3b8;
  undefined4 uStack_3b4;
  undefined auStack_218 [56];
  undefined4 uStack_1e0;
  int iStack_34;
  int iStack_30;
  undefined4 uStack_2c;
  
  do {
    iVar1 = FUN_000bf348(param_1,*(undefined4 *)(param_2 + 0x40));
    if (iVar1 != 0) goto LAB_000bf4f4;
    *(undefined4 *)(param_1 + 0x14) = *(undefined4 *)(param_2 + 0x40);
    iVar1 = param_2;
    iVar2 = (**(code **)(param_1 + 0x10))(1,param_1);
  } while (iVar2 == 8);
  if (iVar2 == 7) {
    FUN_000bf4d0(0,*(undefined4 *)(param_2 + 0x40));
    uVar8 = restore_core_regs(param_2 + 4);
    iVar3 = (int)((ulonglong)uVar8 >> 0x20);
    iVar2 = (int)uVar8;
    pcVar5 = *(code **)(iVar2 + 0xc);
    uVar6 = *(undefined4 *)(iVar2 + 0x18);
    uStack_3f4 = *(undefined4 *)(iVar3 + 4);
    uStack_3f0 = *(undefined4 *)(iVar3 + 8);
    uStack_3ec = *(undefined4 *)(iVar3 + 0xc);
    uStack_3e8 = *(undefined4 *)(iVar3 + 0x10);
    iVar4 = 0;
    uStack_3e4 = *(undefined4 *)(iVar3 + 0x14);
    uStack_3e0 = *(undefined4 *)(iVar3 + 0x18);
    uStack_3dc = *(undefined4 *)(iVar3 + 0x1c);
    uStack_3d8 = *(undefined4 *)(iVar3 + 0x20);
    uStack_3d4 = *(undefined4 *)(iVar3 + 0x24);
    uStack_3d0 = *(undefined4 *)(iVar3 + 0x28);
    uStack_3cc = *(undefined4 *)(iVar3 + 0x2c);
    uStack_3c8 = *(undefined4 *)(iVar3 + 0x30);
    uStack_3c4 = *(undefined4 *)(iVar3 + 0x34);
    uStack_3c0 = *(undefined4 *)(iVar3 + 0x38);
    uStack_3bc = *(undefined4 *)(iVar3 + 0x3c);
    uStack_3b8 = *(undefined4 *)(iVar3 + 0x40);
    uStack_3f8 = 0;
    uStack_2c = 0;
    iStack_34 = param_2;
    iStack_30 = param_1;
    do {
      iVar3 = FUN_000bf348(iVar2,uStack_3b8);
      if (iVar1 == 0) {
        uVar7 = 9;
      }
      else {
        uVar7 = 10;
      }
      if (iVar3 == 0) {
        *(undefined4 *)(iVar2 + 0x14) = uStack_3b8;
        memcpy(auStack_218,&uStack_3f8,0x1e0);
        iVar4 = (**(code **)(iVar2 + 0x10))(uVar7,iVar2,auStack_218);
        uStack_3b4 = uStack_1e0;
      }
      else {
        uVar7 = uVar7 | 0x10;
        uStack_3b4 = uStack_3c0;
      }
      iVar1 = (*pcVar5)(1,uVar7,iVar2,iVar2,&uStack_3f8,uVar6);
      if (iVar1 != 0) {
        return 9;
      }
      if (iVar3 != 0) {
        return iVar3;
      }
      memcpy(&uStack_3f8,auStack_218,0x1e0);
      iVar1 = 0;
    } while (iVar4 == 8);
    if (iVar4 == 7) {
      FUN_000bf4d0(0,uStack_3b8);
      restore_core_regs(&uStack_3f4);
    }
    return 9;
  }
LAB_000bf4f4:
                    /* WARNING: Subroutine does not return */
  abort();
}


/* address=000bf538 symbol=FUN_000bf538 */

int FUN_000bf538(int param_1,int param_2,int param_3)

{
  int iVar1;
  int iVar2;
  int iVar3;
  code *pcVar4;
  undefined4 uVar5;
  uint uVar6;
  undefined4 local_3e8;
  undefined4 local_3e4;
  undefined4 uStack_3e0;
  undefined4 uStack_3dc;
  undefined4 uStack_3d8;
  undefined4 local_3d4;
  undefined4 uStack_3d0;
  undefined4 uStack_3cc;
  undefined4 uStack_3c8;
  undefined4 local_3c4;
  undefined4 uStack_3c0;
  undefined4 uStack_3bc;
  undefined4 uStack_3b8;
  undefined4 local_3b4;
  undefined4 uStack_3b0;
  undefined4 uStack_3ac;
  undefined4 local_3a8;
  undefined4 local_3a4;
  undefined auStack_208 [56];
  undefined4 local_1d0;
  
  pcVar4 = *(code **)(param_1 + 0xc);
  uVar5 = *(undefined4 *)(param_1 + 0x18);
  local_3e4 = *(undefined4 *)(param_2 + 4);
  uStack_3e0 = *(undefined4 *)(param_2 + 8);
  uStack_3dc = *(undefined4 *)(param_2 + 0xc);
  uStack_3d8 = *(undefined4 *)(param_2 + 0x10);
  iVar3 = 0;
  local_3d4 = *(undefined4 *)(param_2 + 0x14);
  uStack_3d0 = *(undefined4 *)(param_2 + 0x18);
  uStack_3cc = *(undefined4 *)(param_2 + 0x1c);
  uStack_3c8 = *(undefined4 *)(param_2 + 0x20);
  local_3c4 = *(undefined4 *)(param_2 + 0x24);
  uStack_3c0 = *(undefined4 *)(param_2 + 0x28);
  uStack_3bc = *(undefined4 *)(param_2 + 0x2c);
  uStack_3b8 = *(undefined4 *)(param_2 + 0x30);
  local_3b4 = *(undefined4 *)(param_2 + 0x34);
  uStack_3b0 = *(undefined4 *)(param_2 + 0x38);
  uStack_3ac = *(undefined4 *)(param_2 + 0x3c);
  local_3a8 = *(undefined4 *)(param_2 + 0x40);
  local_3e8 = 0;
  do {
    iVar1 = FUN_000bf348(param_1,local_3a8);
    if (param_3 == 0) {
      uVar6 = 9;
    }
    else {
      uVar6 = 10;
    }
    if (iVar1 == 0) {
      *(undefined4 *)(param_1 + 0x14) = local_3a8;
      memcpy(auStack_208,&local_3e8,0x1e0);
      iVar3 = (**(code **)(param_1 + 0x10))(uVar6,param_1,auStack_208);
      local_3a4 = local_1d0;
    }
    else {
      uVar6 = uVar6 | 0x10;
      local_3a4 = uStack_3b0;
    }
    iVar2 = (*pcVar4)(1,uVar6,param_1,param_1,&local_3e8,uVar5);
    if (iVar2 != 0) {
      return 9;
    }
    if (iVar1 != 0) {
      return iVar1;
    }
    memcpy(&local_3e8,auStack_208,0x1e0);
    param_3 = 0;
  } while (iVar3 == 8);
  if (iVar3 == 7) {
    FUN_000bf4d0(0,local_3a8);
    restore_core_regs(&local_3e4);
  }
  return 9;
}


/* address=000bf660 symbol=_Unwind_GetCFA */

undefined4 _Unwind_GetCFA(int param_1)

{
  return *(undefined4 *)(param_1 + 0x44);
}


/* address=000bf668 symbol=__gnu_Unwind_RaiseException */

undefined4 __gnu_Unwind_RaiseException(int param_1,int param_2)

{
  int iVar1;
  undefined4 local_1f8;
  undefined4 local_1f4;
  undefined4 uStack_1f0;
  undefined4 uStack_1ec;
  undefined4 uStack_1e8;
  undefined4 local_1e4;
  undefined4 uStack_1e0;
  undefined4 uStack_1dc;
  undefined4 uStack_1d8;
  undefined4 local_1d4;
  undefined4 uStack_1d0;
  undefined4 uStack_1cc;
  undefined4 uStack_1c8;
  undefined4 local_1c4;
  undefined4 uStack_1c0;
  undefined4 uStack_1bc;
  undefined4 local_1b8;
  
  *(undefined4 *)(param_2 + 0x40) = *(undefined4 *)(param_2 + 0x3c);
  local_1f4 = *(undefined4 *)(param_2 + 4);
  uStack_1f0 = *(undefined4 *)(param_2 + 8);
  uStack_1ec = *(undefined4 *)(param_2 + 0xc);
  uStack_1e8 = *(undefined4 *)(param_2 + 0x10);
  local_1e4 = *(undefined4 *)(param_2 + 0x14);
  uStack_1e0 = *(undefined4 *)(param_2 + 0x18);
  uStack_1dc = *(undefined4 *)(param_2 + 0x1c);
  uStack_1d8 = *(undefined4 *)(param_2 + 0x20);
  local_1d4 = *(undefined4 *)(param_2 + 0x24);
  uStack_1d0 = *(undefined4 *)(param_2 + 0x28);
  uStack_1cc = *(undefined4 *)(param_2 + 0x2c);
  uStack_1c8 = *(undefined4 *)(param_2 + 0x30);
  local_1c4 = *(undefined4 *)(param_2 + 0x34);
  uStack_1c0 = *(undefined4 *)(param_2 + 0x38);
  uStack_1bc = *(undefined4 *)(param_2 + 0x3c);
  local_1b8 = *(undefined4 *)(param_2 + 0x40);
  local_1f8 = 0xffffffff;
  do {
    iVar1 = FUN_000bf348(param_1,local_1b8);
    if (iVar1 != 0) {
      return 9;
    }
    iVar1 = (**(code **)(param_1 + 0x10))(0,param_1,&local_1f8);
  } while (iVar1 == 8);
  FUN_000bf448(&local_1f8);
  if (iVar1 == 6) {
    FUN_000bf4d4(param_1,param_2);
  }
  return 9;
}


/* address=000bf70c symbol=__gnu_Unwind_ForcedUnwind */

void __gnu_Unwind_ForcedUnwind(int param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  undefined4 uVar1;
  
  *(undefined4 *)(param_1 + 0x18) = param_3;
  uVar1 = *(undefined4 *)(param_4 + 0x3c);
  *(undefined4 *)(param_1 + 0xc) = param_2;
  *(undefined4 *)(param_4 + 0x40) = uVar1;
  FUN_000bf538(param_1,param_4,0);
  return;
}


/* address=000bf728 symbol=__gnu_Unwind_Resume */

void __gnu_Unwind_Resume(int param_1,int param_2)

{
  int iVar1;
  
  iVar1 = *(int *)(param_1 + 0xc);
  *(undefined4 *)(param_2 + 0x40) = *(undefined4 *)(param_1 + 0x14);
  if (iVar1 == 0) {
    iVar1 = (**(code **)(param_1 + 0x10))(2,param_1,param_2);
    if (iVar1 != 7) {
      if (iVar1 != 8) goto LAB_000bf798;
      FUN_000bf4d4(param_1,param_2);
    }
    FUN_000bf4d0(0,*(undefined4 *)(param_2 + 0x40));
    restore_core_regs(param_2 + 4);
  }
  else {
    FUN_000bf538(param_1,param_2,1);
  }
LAB_000bf798:
                    /* WARNING: Subroutine does not return */
  abort();
}


/* address=000bf79c symbol=__gnu_Unwind_Resume_or_Rethrow */

void __gnu_Unwind_Resume_or_Rethrow(int param_1,int param_2)

{
  if (*(int *)(param_1 + 0xc) == 0) {
    __gnu_Unwind_RaiseException();
    return;
  }
  *(undefined4 *)(param_2 + 0x40) = *(undefined4 *)(param_2 + 0x3c);
  FUN_000bf538(param_1,param_2,0);
  return;
}


/* address=000bf7bc symbol=_Unwind_Complete */

void _Unwind_Complete(void)

{
  return;
}


/* address=000bf7c0 symbol=_Unwind_DeleteException */

void _Unwind_DeleteException(int param_1)

{
  if (*(code **)(param_1 + 8) == (code *)0x0) {
    return;
  }
                    /* WARNING: Could not recover jumptable at 0x000bf7d4. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(param_1 + 8))(1,param_1);
  return;
}


/* address=000bf7d8 symbol=_Unwind_VRS_Get */

undefined4
_Unwind_VRS_Get(int param_1,undefined4 param_2,uint param_3,int param_4,undefined4 *param_5)

{
  bool bVar1;
  
  switch(param_2) {
  case 0:
    bVar1 = param_3 == 0xf;
    if (param_3 < 0x10) {
      bVar1 = param_4 == 0;
    }
    if (bVar1) {
      *param_5 = *(undefined4 *)(param_1 + param_3 * 4 + 4);
      return 0;
    }
    break;
  case 1:
    return 1;
  case 2:
    break;
  case 3:
    return 1;
  case 4:
    return 1;
  }
  return 2;
}


/* address=000bf834 symbol=FUN_000bf834 */

undefined4 FUN_000bf834(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 local_c;
  
  local_c = param_4;
  _Unwind_VRS_Get(param_1,0,param_2,0,&local_c,param_2,param_3);
  return local_c;
}


/* address=000bf85c symbol=_Unwind_VRS_Set */

undefined4
_Unwind_VRS_Set(int param_1,undefined4 param_2,uint param_3,int param_4,undefined4 *param_5)

{
  bool bVar1;
  
  switch(param_2) {
  case 0:
    bVar1 = param_3 == 0xf;
    if (param_3 < 0x10) {
      bVar1 = param_4 == 0;
    }
    if (bVar1) {
      *(undefined4 *)(param_1 + param_3 * 4 + 4) = *param_5;
      return 0;
    }
    break;
  case 1:
    return 1;
  case 2:
    break;
  case 3:
    return 1;
  case 4:
    return 1;
  }
  return 2;
}


/* address=000bf8b8 symbol=FUN_000bf8b8 */

void FUN_000bf8b8(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 local_c;
  
  local_c = param_3;
  _Unwind_VRS_Set(param_1,0,param_2,0,&local_c,param_2,param_3);
  return;
}


/* address=000bf8e4 symbol=__gnu_Unwind_Backtrace */

int __gnu_Unwind_Backtrace(code *param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  undefined auStack_250 [16];
  code *local_240;
  undefined4 local_1f8;
  undefined4 local_1f4;
  undefined4 uStack_1f0;
  undefined4 uStack_1ec;
  undefined4 uStack_1e8;
  undefined4 local_1e4;
  undefined4 uStack_1e0;
  undefined4 uStack_1dc;
  undefined4 uStack_1d8;
  undefined4 local_1d4;
  undefined4 uStack_1d0;
  undefined4 uStack_1cc;
  undefined4 uStack_1c8;
  undefined4 local_1c4;
  undefined4 uStack_1c0;
  undefined4 uStack_1bc;
  undefined4 local_1b8;
  
  *(undefined4 *)(param_3 + 0x40) = *(undefined4 *)(param_3 + 0x3c);
  local_1f4 = *(undefined4 *)(param_3 + 4);
  uStack_1f0 = *(undefined4 *)(param_3 + 8);
  uStack_1ec = *(undefined4 *)(param_3 + 0xc);
  uStack_1e8 = *(undefined4 *)(param_3 + 0x10);
  local_1e4 = *(undefined4 *)(param_3 + 0x14);
  uStack_1e0 = *(undefined4 *)(param_3 + 0x18);
  uStack_1dc = *(undefined4 *)(param_3 + 0x1c);
  uStack_1d8 = *(undefined4 *)(param_3 + 0x20);
  local_1d4 = *(undefined4 *)(param_3 + 0x24);
  uStack_1d0 = *(undefined4 *)(param_3 + 0x28);
  uStack_1cc = *(undefined4 *)(param_3 + 0x2c);
  uStack_1c8 = *(undefined4 *)(param_3 + 0x30);
  local_1c4 = *(undefined4 *)(param_3 + 0x34);
  uStack_1c0 = *(undefined4 *)(param_3 + 0x38);
  uStack_1bc = *(undefined4 *)(param_3 + 0x3c);
  local_1b8 = *(undefined4 *)(param_3 + 0x40);
  local_1f8 = 0xffffffff;
  do {
    iVar1 = FUN_000bf348(auStack_250,local_1b8);
    if (iVar1 != 0) {
LAB_000bf948:
      iVar1 = 9;
      break;
    }
    FUN_000bf8b8(&local_1f8,0xc,auStack_250);
    iVar1 = (*param_1)(&local_1f8,param_2);
    if (iVar1 != 0) goto LAB_000bf948;
    iVar1 = (*local_240)(8,auStack_250,&local_1f8);
  } while ((iVar1 - 5U & 0xfffffffb) != 0);
  FUN_000bf448(&local_1f8);
  return iVar1;
}


/* address=000bfd98 symbol=__aeabi_unwind_cpp_pr0 */

/* WARNING: Removing unreachable block (ram,0x000bfa5c) */
/* WARNING: Removing unreachable block (ram,0x000bf9f4) */
/* WARNING: Removing unreachable block (ram,0x000bf9fc) */
/* WARNING: Removing unreachable block (ram,0x000bfd00) */
/* WARNING: Removing unreachable block (ram,0x000bfa60) */

undefined4 __aeabi_unwind_cpp_pr0(uint param_1,int **param_2,undefined4 param_3)

{
  ushort uVar1;
  ushort uVar2;
  bool bVar3;
  bool bVar4;
  uint uVar5;
  code *pcVar6;
  undefined4 uVar7;
  int iVar8;
  int **ppiVar9;
  int *piVar10;
  uint *puVar11;
  uint uVar12;
  int *piVar13;
  int *piVar14;
  uint uVar15;
  uint *puVar16;
  int **local_38;
  int local_34;
  uint *local_30;
  undefined local_2c;
  undefined local_2b;
  
  local_30 = (uint *)(param_2[0x13] + 1);
  uVar12 = param_1 & 3;
  local_34 = *param_2[0x13] << 8;
  local_2b = 0;
  local_2c = 3;
  puVar16 = local_30;
  if (uVar12 == 2) {
    puVar16 = (uint *)param_2[0xe];
  }
  if (((uint)param_2[0x14] & 1) == 0) {
    bVar4 = false;
LAB_000bfa40:
    do {
      while( true ) {
        if (*puVar16 == 0) goto LAB_000bfcf8;
        uVar1 = *(ushort *)((int)puVar16 + 2);
        puVar11 = puVar16 + 1;
        uVar2 = *(ushort *)puVar16;
        uVar15 = (uVar1 & 0xfffffffe) + (int)param_2[0x12];
        uVar5 = FUN_000bf834(param_3,0xf);
        if (uVar5 < uVar15) {
          bVar3 = false;
        }
        else if (uVar5 < uVar15 + (uVar2 & 0xfffffffe)) {
          bVar3 = true;
        }
        else {
          bVar3 = false;
        }
        uVar5 = uVar2 & 1 | (uVar1 & 1) << 1;
        if (uVar5 != 1) break;
        if (uVar12 == 0) {
          if (bVar3) {
            uVar5 = *puVar11;
            if (puVar16[2] == 0xfffffffe) {
              return 9;
            }
            local_38 = param_2 + 0x16;
            iVar8 = 1;
            if (puVar16[2] == 0xffffffff) {
LAB_000bfb68:
              piVar10 = (int *)FUN_000bf834(param_3,0xd);
              ppiVar9 = param_2;
              if (iVar8 != 2) {
                ppiVar9 = local_38;
              }
              param_2[8] = piVar10;
              if (iVar8 == 2) {
                ppiVar9 = ppiVar9 + 0xb;
                *ppiVar9 = (int *)local_38;
              }
LAB_000bfd80:
              param_2[9] = (int *)ppiVar9;
              param_2[10] = (int *)puVar11;
              return 6;
            }
            uVar7 = FUN_000bf4b4(puVar16 + 2);
            iVar8 = __cxa_type_match(param_2,uVar7,uVar5 >> 0x1f);
            if (iVar8 != 0) goto LAB_000bfb68;
          }
        }
        else {
          piVar13 = param_2[8];
          piVar10 = (int *)FUN_000bf834(param_3,0xd);
          if ((piVar13 == piVar10) && (puVar11 == (uint *)param_2[10])) {
            uVar7 = FUN_000bf23c(puVar11);
            FUN_000bf8b8(param_3,0xf,uVar7);
LAB_000bfcc8:
            uVar7 = 0;
            pcVar6 = (code *)param_2;
            goto LAB_000bfd58;
          }
        }
        puVar16 = puVar16 + 3;
      }
      if (uVar5 != 0) {
        if (uVar5 != 2) {
          return 9;
        }
        piVar10 = (int *)(*puVar11 & 0x7fffffff);
        if (uVar12 == 0) {
          if (bVar3) {
            uVar5 = ((param_1 ^ 8) << 0x1c) >> 0x1f;
            if (piVar10 == (int *)0x0) {
              uVar5 = 1;
            }
            if (uVar5 != 0) {
              piVar13 = (int *)0x0;
              do {
                if (piVar13 == piVar10) {
                  piVar10 = (int *)FUN_000bf834(param_3,0xd);
                  param_2[8] = piVar10;
                  ppiVar9 = local_38;
                  goto LAB_000bfd80;
                }
                piVar13 = (int *)((int)piVar13 + 1);
                local_38 = param_2 + 0x16;
                uVar7 = FUN_000bf4b4(puVar11 + (int)piVar13);
                iVar8 = __cxa_type_match(param_2,uVar7,0,&local_38);
              } while (iVar8 == 0);
            }
          }
        }
        else {
          piVar14 = param_2[8];
          piVar13 = (int *)FUN_000bf834(param_3,0xd);
          if ((piVar14 == piVar13) && (puVar11 == (uint *)param_2[10])) {
            param_2[10] = piVar10;
            param_2[0xc] = (int *)0x4;
            param_2[0xb] = (int *)0x0;
            param_2[0xd] = (int *)(puVar16 + 2);
            if ((int)*puVar11 < 0) {
              uVar7 = FUN_000bf23c(puVar11 + (int)piVar10 + 1);
              FUN_000bf8b8(param_3,0xf,uVar7);
              goto LAB_000bfcc8;
            }
            bVar4 = true;
          }
        }
        if ((int)*puVar11 < 0) {
          puVar11 = puVar16 + 2;
        }
        puVar16 = puVar11 + (int)piVar10 + 1;
        goto LAB_000bfa40;
      }
      if (uVar12 == 0) {
        bVar3 = false;
      }
      puVar16 = puVar16 + 2;
    } while (!bVar3);
    pcVar6 = (code *)FUN_000bf23c(puVar11);
    param_2[0xe] = (int *)puVar16;
    iVar8 = __cxa_begin_cleanup(param_2);
    if (iVar8 == 0) {
      return 9;
    }
    uVar7 = 0xf;
  }
  else {
    bVar4 = false;
LAB_000bfcf8:
    iVar8 = __gnu_unwind_execute(param_3,&local_34);
    if (iVar8 != 0) {
      return 9;
    }
    if (!bVar4) {
      return 8;
    }
    uVar7 = FUN_000bf834(param_3,0xf);
    FUN_000bf8b8(param_3,0xe,uVar7);
    uVar7 = 0xf;
    pcVar6 = __cxa_call_unexpected;
  }
LAB_000bfd58:
  FUN_000bf8b8(param_3,uVar7,pcVar6);
  return 7;
}


/* address=000bfda0 symbol=__aeabi_unwind_cpp_pr1 */

/* WARNING: Removing unreachable block (ram,0x000bfa5c) */
/* WARNING: Removing unreachable block (ram,0x000bf9dc) */
/* WARNING: Removing unreachable block (ram,0x000bfd00) */
/* WARNING: Removing unreachable block (ram,0x000bfa60) */

undefined4 __aeabi_unwind_cpp_pr1(uint param_1,int **param_2,undefined4 param_3)

{
  ushort uVar1;
  ushort uVar2;
  bool bVar3;
  bool bVar4;
  code *pcVar5;
  undefined4 uVar6;
  int iVar7;
  int **ppiVar8;
  uint uVar9;
  int *piVar10;
  uint *puVar11;
  uint uVar12;
  int *piVar13;
  int *piVar14;
  uint uVar15;
  uint *puVar16;
  int **ppiStack_38;
  int iStack_34;
  uint *puStack_30;
  undefined uStack_2c;
  undefined uStack_2b;
  
  puStack_30 = (uint *)(param_2[0x13] + 1);
  uVar12 = param_1 & 3;
  uVar9 = *param_2[0x13];
  uStack_2b = (undefined)(uVar9 >> 0x10);
  iStack_34 = uVar9 << 0x10;
  uStack_2c = 2;
  puVar16 = puStack_30 + (uVar9 >> 0x10 & 0xff);
  if (uVar12 == 2) {
    puVar16 = (uint *)param_2[0xe];
  }
  if (((uint)param_2[0x14] & 1) == 0) {
    bVar4 = false;
LAB_000bfa40:
    do {
      while( true ) {
        if (*puVar16 == 0) goto LAB_000bfcf8;
        uVar1 = *(ushort *)((int)puVar16 + 2);
        puVar11 = puVar16 + 1;
        uVar2 = *(ushort *)puVar16;
        uVar15 = (uVar1 & 0xfffffffe) + (int)param_2[0x12];
        uVar9 = FUN_000bf834(param_3,0xf);
        if (uVar9 < uVar15) {
          bVar3 = false;
        }
        else if (uVar9 < uVar15 + (uVar2 & 0xfffffffe)) {
          bVar3 = true;
        }
        else {
          bVar3 = false;
        }
        uVar9 = uVar2 & 1 | (uVar1 & 1) << 1;
        if (uVar9 != 1) break;
        if (uVar12 == 0) {
          if (bVar3) {
            uVar9 = *puVar11;
            if (puVar16[2] == 0xfffffffe) {
              return 9;
            }
            ppiStack_38 = param_2 + 0x16;
            iVar7 = 1;
            if (puVar16[2] == 0xffffffff) {
LAB_000bfb68:
              piVar10 = (int *)FUN_000bf834(param_3,0xd);
              ppiVar8 = param_2;
              if (iVar7 != 2) {
                ppiVar8 = ppiStack_38;
              }
              param_2[8] = piVar10;
              if (iVar7 == 2) {
                ppiVar8 = ppiVar8 + 0xb;
                *ppiVar8 = (int *)ppiStack_38;
              }
LAB_000bfd80:
              param_2[9] = (int *)ppiVar8;
              param_2[10] = (int *)puVar11;
              return 6;
            }
            uVar6 = FUN_000bf4b4(puVar16 + 2);
            iVar7 = __cxa_type_match(param_2,uVar6,uVar9 >> 0x1f);
            if (iVar7 != 0) goto LAB_000bfb68;
          }
        }
        else {
          piVar13 = param_2[8];
          piVar10 = (int *)FUN_000bf834(param_3,0xd);
          if ((piVar13 == piVar10) && (puVar11 == (uint *)param_2[10])) {
            uVar6 = FUN_000bf23c(puVar11);
            FUN_000bf8b8(param_3,0xf,uVar6);
LAB_000bfcc8:
            uVar6 = 0;
            pcVar5 = (code *)param_2;
            goto LAB_000bfd58;
          }
        }
        puVar16 = puVar16 + 3;
      }
      if (uVar9 != 0) {
        if (uVar9 != 2) {
          return 9;
        }
        piVar10 = (int *)(*puVar11 & 0x7fffffff);
        if (uVar12 == 0) {
          if (bVar3) {
            uVar9 = ((param_1 ^ 8) << 0x1c) >> 0x1f;
            if (piVar10 == (int *)0x0) {
              uVar9 = 1;
            }
            if (uVar9 != 0) {
              piVar13 = (int *)0x0;
              do {
                if (piVar13 == piVar10) {
                  piVar10 = (int *)FUN_000bf834(param_3,0xd);
                  param_2[8] = piVar10;
                  ppiVar8 = ppiStack_38;
                  goto LAB_000bfd80;
                }
                piVar13 = (int *)((int)piVar13 + 1);
                ppiStack_38 = param_2 + 0x16;
                uVar6 = FUN_000bf4b4(puVar11 + (int)piVar13);
                iVar7 = __cxa_type_match(param_2,uVar6,0,&ppiStack_38);
              } while (iVar7 == 0);
            }
          }
        }
        else {
          piVar14 = param_2[8];
          piVar13 = (int *)FUN_000bf834(param_3,0xd);
          if ((piVar14 == piVar13) && (puVar11 == (uint *)param_2[10])) {
            param_2[10] = piVar10;
            param_2[0xc] = (int *)0x4;
            param_2[0xb] = (int *)0x0;
            param_2[0xd] = (int *)(puVar16 + 2);
            if ((int)*puVar11 < 0) {
              uVar6 = FUN_000bf23c(puVar11 + (int)piVar10 + 1);
              FUN_000bf8b8(param_3,0xf,uVar6);
              goto LAB_000bfcc8;
            }
            bVar4 = true;
          }
        }
        if ((int)*puVar11 < 0) {
          puVar11 = puVar16 + 2;
        }
        puVar16 = puVar11 + (int)piVar10 + 1;
        goto LAB_000bfa40;
      }
      if (uVar12 == 0) {
        bVar3 = false;
      }
      puVar16 = puVar16 + 2;
    } while (!bVar3);
    pcVar5 = (code *)FUN_000bf23c(puVar11);
    param_2[0xe] = (int *)puVar16;
    iVar7 = __cxa_begin_cleanup(param_2);
    if (iVar7 == 0) {
      return 9;
    }
    uVar6 = 0xf;
  }
  else {
    bVar4 = false;
LAB_000bfcf8:
    iVar7 = __gnu_unwind_execute(param_3,&iStack_34);
    if (iVar7 != 0) {
      return 9;
    }
    if (!bVar4) {
      return 8;
    }
    uVar6 = FUN_000bf834(param_3,0xf);
    FUN_000bf8b8(param_3,0xe,uVar6);
    uVar6 = 0xf;
    pcVar5 = __cxa_call_unexpected;
  }
LAB_000bfd58:
  FUN_000bf8b8(param_3,uVar6,pcVar5);
  return 7;
}


/* address=000bfda8 symbol=__aeabi_unwind_cpp_pr2 */

/* WARNING: Removing unreachable block (ram,0x000bfa64) */
/* WARNING: Removing unreachable block (ram,0x000bf9dc) */
/* WARNING: Removing unreachable block (ram,0x000bfd00) */
/* WARNING: Removing unreachable block (ram,0x000bfa68) */
/* WARNING: Removing unreachable block (ram,0x000bfa6c) */

undefined4 __aeabi_unwind_cpp_pr2(uint param_1,int **param_2,undefined4 param_3)

{
  bool bVar1;
  bool bVar2;
  uint uVar3;
  code *pcVar4;
  undefined4 uVar5;
  int iVar6;
  int **ppiVar7;
  uint uVar8;
  int *piVar9;
  uint *puVar10;
  uint uVar11;
  uint uVar12;
  int *piVar13;
  int *piVar14;
  uint uVar15;
  uint *puVar16;
  int **ppiStack_38;
  int iStack_34;
  uint *puStack_30;
  undefined uStack_2c;
  undefined uStack_2b;
  
  puStack_30 = (uint *)(param_2[0x13] + 1);
  uVar11 = param_1 & 3;
  uVar8 = *param_2[0x13];
  uStack_2b = (undefined)(uVar8 >> 0x10);
  iStack_34 = uVar8 << 0x10;
  uStack_2c = 2;
  puVar16 = puStack_30 + (uVar8 >> 0x10 & 0xff);
  if (uVar11 == 2) {
    puVar16 = (uint *)param_2[0xe];
  }
  if (((uint)param_2[0x14] & 1) == 0) {
    bVar2 = false;
LAB_000bfa40:
    do {
      while( true ) {
        uVar8 = *puVar16;
        if (uVar8 == 0) goto LAB_000bfcf8;
        uVar12 = puVar16[1];
        puVar10 = puVar16 + 2;
        uVar15 = (uVar12 & 0xfffffffe) + (int)param_2[0x12];
        uVar3 = FUN_000bf834(param_3,0xf);
        if (uVar3 < uVar15) {
          bVar1 = false;
        }
        else if (uVar3 < uVar15 + (uVar8 & 0xfffffffe)) {
          bVar1 = true;
        }
        else {
          bVar1 = false;
        }
        uVar8 = uVar8 & 1 | (uVar12 & 1) << 1;
        if (uVar8 != 1) break;
        if (uVar11 == 0) {
          if (bVar1) {
            uVar8 = *puVar10;
            if (puVar16[3] == 0xfffffffe) {
              return 9;
            }
            ppiStack_38 = param_2 + 0x16;
            iVar6 = 1;
            if (puVar16[3] == 0xffffffff) {
LAB_000bfb68:
              piVar9 = (int *)FUN_000bf834(param_3,0xd);
              ppiVar7 = param_2;
              if (iVar6 != 2) {
                ppiVar7 = ppiStack_38;
              }
              param_2[8] = piVar9;
              if (iVar6 == 2) {
                ppiVar7 = ppiVar7 + 0xb;
                *ppiVar7 = (int *)ppiStack_38;
              }
LAB_000bfd80:
              param_2[9] = (int *)ppiVar7;
              param_2[10] = (int *)puVar10;
              return 6;
            }
            uVar5 = FUN_000bf4b4(puVar16 + 3);
            iVar6 = __cxa_type_match(param_2,uVar5,uVar8 >> 0x1f);
            if (iVar6 != 0) goto LAB_000bfb68;
          }
        }
        else {
          piVar13 = param_2[8];
          piVar9 = (int *)FUN_000bf834(param_3,0xd);
          if ((piVar13 == piVar9) && (puVar10 == (uint *)param_2[10])) {
            uVar5 = FUN_000bf23c(puVar10);
            FUN_000bf8b8(param_3,0xf,uVar5);
LAB_000bfcc8:
            uVar5 = 0;
            pcVar4 = (code *)param_2;
            goto LAB_000bfd58;
          }
        }
        puVar16 = puVar16 + 4;
      }
      if (uVar8 != 0) {
        if (uVar8 != 2) {
          return 9;
        }
        piVar9 = (int *)(*puVar10 & 0x7fffffff);
        if (uVar11 == 0) {
          if (bVar1) {
            uVar8 = ((param_1 ^ 8) << 0x1c) >> 0x1f;
            if (piVar9 == (int *)0x0) {
              uVar8 = 1;
            }
            if (uVar8 != 0) {
              piVar13 = (int *)0x0;
              do {
                if (piVar13 == piVar9) {
                  piVar9 = (int *)FUN_000bf834(param_3,0xd);
                  param_2[8] = piVar9;
                  ppiVar7 = ppiStack_38;
                  goto LAB_000bfd80;
                }
                piVar13 = (int *)((int)piVar13 + 1);
                ppiStack_38 = param_2 + 0x16;
                uVar5 = FUN_000bf4b4(puVar10 + (int)piVar13);
                iVar6 = __cxa_type_match(param_2,uVar5,0,&ppiStack_38);
              } while (iVar6 == 0);
            }
          }
        }
        else {
          piVar14 = param_2[8];
          piVar13 = (int *)FUN_000bf834(param_3,0xd);
          if ((piVar14 == piVar13) && (puVar10 == (uint *)param_2[10])) {
            param_2[10] = piVar9;
            param_2[0xc] = (int *)0x4;
            param_2[0xb] = (int *)0x0;
            param_2[0xd] = (int *)(puVar16 + 3);
            if ((int)*puVar10 < 0) {
              uVar5 = FUN_000bf23c(puVar10 + (int)piVar9 + 1);
              FUN_000bf8b8(param_3,0xf,uVar5);
              goto LAB_000bfcc8;
            }
            bVar2 = true;
          }
        }
        if ((int)*puVar10 < 0) {
          puVar10 = puVar16 + 3;
        }
        puVar16 = puVar10 + (int)piVar9 + 1;
        goto LAB_000bfa40;
      }
      if (uVar11 == 0) {
        bVar1 = false;
      }
      puVar16 = puVar16 + 3;
    } while (!bVar1);
    pcVar4 = (code *)FUN_000bf23c(puVar10);
    param_2[0xe] = (int *)puVar16;
    iVar6 = __cxa_begin_cleanup(param_2);
    if (iVar6 == 0) {
      return 9;
    }
    uVar5 = 0xf;
  }
  else {
    bVar2 = false;
LAB_000bfcf8:
    iVar6 = __gnu_unwind_execute(param_3,&iStack_34);
    if (iVar6 != 0) {
      return 9;
    }
    if (!bVar2) {
      return 8;
    }
    uVar5 = FUN_000bf834(param_3,0xf);
    FUN_000bf8b8(param_3,0xe,uVar5);
    uVar5 = 0xf;
    pcVar4 = __cxa_call_unexpected;
  }
LAB_000bfd58:
  FUN_000bf8b8(param_3,uVar5,pcVar4);
  return 7;
}


/* address=000bfdb0 symbol=_Unwind_VRS_Pop */

undefined4 _Unwind_VRS_Pop(uint *param_1,undefined4 param_2,uint param_3,uint param_4)

{
  undefined4 uVar1;
  uint *puVar2;
  uint uVar3;
  undefined4 *puVar4;
  int iVar5;
  uint uVar6;
  undefined4 *puVar7;
  uint uVar8;
  uint uVar9;
  undefined4 *puVar10;
  uint uVar11;
  bool bVar12;
  undefined4 auStack_1ac [33];
  undefined auStack_128 [124];
  undefined4 auStack_ac [36];
  
  switch(param_2) {
  case 0:
    if (param_4 != 0) {
      return 2;
    }
    iVar5 = 1;
    puVar2 = (uint *)param_1[0xe];
    do {
      if ((param_3 & 0xffff & 1 << (iVar5 - 1U & 0xff)) != 0) {
        uVar6 = *puVar2;
        puVar2 = puVar2 + 1;
        param_1[iVar5] = uVar6;
      }
      iVar5 = iVar5 + 1;
    } while (iVar5 != 0x11);
    if ((param_3 & 0x2000) != 0) {
      return 0;
    }
    param_1[0xe] = (uint)puVar2;
    return 0;
  case 1:
    if ((param_4 & 0xfffffffb) != 1) {
      return 2;
    }
    uVar6 = param_3 >> 0x10;
    param_3 = param_3 & 0xffff;
    uVar8 = param_3 + uVar6;
    if (param_4 == 1) {
      if (0x10 < uVar8) {
        return 2;
      }
      if (0xf < uVar6) {
        return 2;
      }
      uVar9 = 0;
      uVar8 = 1;
    }
    else {
      if (0x20 < uVar8) {
        return 2;
      }
      uVar9 = param_3;
      if (uVar6 < 0x10) {
        if (uVar8 < 0x11) {
          uVar9 = 0;
          uVar8 = uVar9;
          goto LAB_000bfe7c;
        }
        uVar9 = uVar8 - 0x10;
      }
      uVar8 = 0;
    }
LAB_000bfe7c:
    uVar11 = uVar9;
    if (uVar9 != 0) {
      uVar11 = 1;
    }
    if (param_4 != 5 && uVar9 != 0) {
      return 2;
    }
    if ((uVar6 < 0x10) && (uVar3 = *param_1, (uVar3 & 1) != 0)) {
      *param_1 = uVar3 & 0xfffffffe;
      if (param_4 != 5) {
        *param_1 = uVar3 & 0xfffffffc;
        __gnu_Unwind_Save_VFP(param_1 + 0x12);
        goto LAB_000bfee4;
      }
      *param_1 = uVar3 & 0xfffffffe | 2;
      __gnu_Unwind_Save_VFP_D();
      if (uVar11 != 0) goto LAB_000bfeec;
LAB_000bfecc:
      __gnu_Unwind_Save_VFP_D(auStack_ac + 1);
LAB_000bff18:
      if (uVar11 == 0) goto LAB_000bff2c;
      __gnu_Unwind_Save_VFP_D_16_to_31(auStack_128);
    }
    else {
LAB_000bfee4:
      if (uVar11 == 0) {
        if (uVar8 != 0) {
          __gnu_Unwind_Save_VFP(auStack_ac + 1);
          goto LAB_000bff2c;
        }
        if (0xf < uVar6) goto LAB_000bff2c;
        goto LAB_000bfecc;
      }
LAB_000bfeec:
      if ((*param_1 & 4) != 0) {
        *param_1 = *param_1 & 0xfffffffb;
        __gnu_Unwind_Save_VFP_D_16_to_31(param_1 + 0x34);
      }
      if (uVar8 == 0) {
        if (uVar6 < 0x10) goto LAB_000bfecc;
        goto LAB_000bff18;
      }
      __gnu_Unwind_Save_VFP(auStack_ac + 1);
    }
    param_3 = 0x10 - uVar6;
LAB_000bff2c:
    puVar4 = (undefined4 *)param_1[0xe];
    if (0 < (int)param_3) {
      for (iVar5 = 0; iVar5 != param_3 * 2; iVar5 = iVar5 + 1) {
        auStack_ac[uVar6 * 2 + iVar5 + 1] = puVar4[iVar5];
      }
      puVar4 = puVar4 + iVar5;
    }
    if (uVar11 != 0) {
      puVar10 = puVar4 + uVar9 * 2;
      uVar9 = uVar6;
      if (uVar6 < 0x10) {
        uVar9 = 0x10;
      }
      puVar7 = auStack_1ac + uVar9 * 2;
      for (; puVar4 != puVar10; puVar4 = puVar4 + 1) {
        puVar7 = puVar7 + 1;
        *puVar7 = *puVar4;
      }
    }
    if (uVar8 != 0) {
      puVar4 = puVar4 + 1;
    }
    param_1[0xe] = (uint)puVar4;
    if (uVar8 == 0) {
      if (uVar6 < 0x10) {
        __gnu_Unwind_Restore_VFP_D(auStack_ac + 1);
      }
      if (uVar11 != 0) {
        __gnu_Unwind_Restore_VFP_D_16_to_31(auStack_128);
      }
    }
    else {
      __gnu_Unwind_Restore_VFP(auStack_ac + 1);
    }
    return 0;
  case 2:
    break;
  case 3:
    if (param_4 == 3) {
      if ((param_3 & 0xffff) + (param_3 >> 0x10) < 0x11) {
        if ((*param_1 & 8) != 0) {
          *param_1 = *param_1 & 0xfffffff7;
          __gnu_Unwind_Save_WMMXD(param_1 + 0x54);
        }
        puVar7 = auStack_ac + (param_3 >> 0x10) * 2;
        __gnu_Unwind_Save_WMMXD(auStack_ac + 1);
        puVar4 = (undefined4 *)param_1[0xe];
        puVar10 = puVar4 + (param_3 & 0xffff) * 2;
        for (; puVar4 != puVar10; puVar4 = puVar4 + 1) {
          puVar7 = puVar7 + 1;
          *puVar7 = *puVar4;
        }
        param_1[0xe] = (uint)puVar4;
        __gnu_Unwind_Restore_WMMXD(auStack_ac + 1);
        return 0;
      }
    }
    break;
  case 4:
    bVar12 = param_3 == 0x10;
    if (param_3 < 0x11) {
      bVar12 = param_4 == 0;
    }
    if (bVar12) {
      if ((*param_1 & 0x10) != 0) {
        *param_1 = *param_1 & 0xffffffef;
        __gnu_Unwind_Save_WMMXC(param_1 + 0x74);
      }
      puVar10 = auStack_ac + 1;
      __gnu_Unwind_Save_WMMXC(puVar10);
      puVar4 = (undefined4 *)param_1[0xe];
      uVar6 = 0;
      do {
        if ((param_3 & 1 << (uVar6 & 0xff)) != 0) {
          uVar1 = *puVar4;
          puVar4 = puVar4 + 1;
          puVar10[uVar6] = uVar1;
        }
        uVar6 = uVar6 + 1;
      } while (uVar6 != 4);
      param_1[0xe] = (uint)puVar4;
      __gnu_Unwind_Restore_WMMXC(puVar10);
      return 0;
    }
  }
  return 2;
}


/* address=000c0110 symbol=restore_core_regs */

undefined8 restore_core_regs(undefined8 *param_1)

{
  return *param_1;
}


/* address=000c0124 symbol=__gnu_Unwind_Restore_VFP */

undefined8 __gnu_Unwind_Restore_VFP(undefined8 *param_1)

{
  return *param_1;
}


/* address=000c012c symbol=__gnu_Unwind_Save_VFP */

void __gnu_Unwind_Save_VFP(undefined8 *param_1)

{
  undefined8 in_d0;
  undefined8 in_d1;
  undefined8 in_d2;
  undefined8 in_d3;
  undefined8 in_d4;
  undefined8 in_d5;
  undefined8 in_d6;
  undefined8 in_d7;
  undefined8 unaff_d8;
  undefined8 unaff_d9;
  undefined8 unaff_d10;
  undefined8 unaff_d11;
  undefined8 unaff_d12;
  undefined8 unaff_d13;
  undefined8 unaff_d14;
  undefined8 unaff_d15;
  
  *param_1 = in_d0;
  param_1[1] = in_d1;
  param_1[2] = in_d2;
  param_1[3] = in_d3;
  param_1[4] = in_d4;
  param_1[5] = in_d5;
  param_1[6] = in_d6;
  param_1[7] = in_d7;
  param_1[8] = unaff_d8;
  param_1[9] = unaff_d9;
  param_1[10] = unaff_d10;
  param_1[0xb] = unaff_d11;
  param_1[0xc] = unaff_d12;
  param_1[0xd] = unaff_d13;
  param_1[0xe] = unaff_d14;
  param_1[0xf] = unaff_d15;
  return;
}


/* address=000c0134 symbol=__gnu_Unwind_Restore_VFP_D */

undefined8 __gnu_Unwind_Restore_VFP_D(undefined8 *param_1)

{
  return *param_1;
}


/* address=000c013c symbol=__gnu_Unwind_Save_VFP_D */

void __gnu_Unwind_Save_VFP_D(undefined8 *param_1)

{
  undefined8 in_d0;
  undefined8 in_d1;
  undefined8 in_d2;
  undefined8 in_d3;
  undefined8 in_d4;
  undefined8 in_d5;
  undefined8 in_d6;
  undefined8 in_d7;
  undefined8 unaff_d8;
  undefined8 unaff_d9;
  undefined8 unaff_d10;
  undefined8 unaff_d11;
  undefined8 unaff_d12;
  undefined8 unaff_d13;
  undefined8 unaff_d14;
  undefined8 unaff_d15;
  
  *param_1 = in_d0;
  param_1[1] = in_d1;
  param_1[2] = in_d2;
  param_1[3] = in_d3;
  param_1[4] = in_d4;
  param_1[5] = in_d5;
  param_1[6] = in_d6;
  param_1[7] = in_d7;
  param_1[8] = unaff_d8;
  param_1[9] = unaff_d9;
  param_1[10] = unaff_d10;
  param_1[0xb] = unaff_d11;
  param_1[0xc] = unaff_d12;
  param_1[0xd] = unaff_d13;
  param_1[0xe] = unaff_d14;
  param_1[0xf] = unaff_d15;
  return;
}


/* address=000c0144 symbol=__gnu_Unwind_Restore_VFP_D_16_to_31 */

void __gnu_Unwind_Restore_VFP_D_16_to_31(void)

{
  return;
}


/* address=000c014c symbol=__gnu_Unwind_Save_VFP_D_16_to_31 */

void __gnu_Unwind_Save_VFP_D_16_to_31(undefined8 *param_1)

{
  undefined8 in_d16;
  undefined8 in_d17;
  undefined8 in_d18;
  undefined8 in_d19;
  undefined8 in_d20;
  undefined8 in_d21;
  undefined8 in_d22;
  undefined8 in_d23;
  undefined8 in_d24;
  undefined8 in_d25;
  undefined8 in_d26;
  undefined8 in_d27;
  undefined8 in_d28;
  undefined8 in_d29;
  undefined8 in_d30;
  undefined8 in_d31;
  
  *param_1 = in_d16;
  param_1[1] = in_d17;
  param_1[2] = in_d18;
  param_1[3] = in_d19;
  param_1[4] = in_d20;
  param_1[5] = in_d21;
  param_1[6] = in_d22;
  param_1[7] = in_d23;
  param_1[8] = in_d24;
  param_1[9] = in_d25;
  param_1[10] = in_d26;
  param_1[0xb] = in_d27;
  param_1[0xc] = in_d28;
  param_1[0xd] = in_d29;
  param_1[0xe] = in_d30;
  param_1[0xf] = in_d31;
  return;
}


/* address=000c0154 symbol=__gnu_Unwind_Restore_WMMXD */

int __gnu_Unwind_Restore_WMMXD(int param_1)

{
  undefined4 in_cr0;
  undefined4 in_cr1;
  undefined4 in_cr2;
  undefined4 in_cr3;
  undefined4 in_cr4;
  undefined4 in_cr5;
  undefined4 in_cr6;
  undefined4 in_cr7;
  undefined4 in_cr8;
  undefined4 in_cr9;
  undefined4 in_cr10;
  undefined4 in_cr11;
  undefined4 in_cr12;
  undefined4 in_cr13;
  undefined4 in_cr14;
  undefined4 in_cr15;
  
  coprocessor_loadlong(1,in_cr0,param_1);
  coprocessor_loadlong(1,in_cr1,param_1 + 8);
  coprocessor_loadlong(1,in_cr2,param_1 + 0x10);
  coprocessor_loadlong(1,in_cr3,param_1 + 0x18);
  coprocessor_loadlong(1,in_cr4,param_1 + 0x20);
  coprocessor_loadlong(1,in_cr5,param_1 + 0x28);
  coprocessor_loadlong(1,in_cr6,param_1 + 0x30);
  coprocessor_loadlong(1,in_cr7,param_1 + 0x38);
  coprocessor_loadlong(1,in_cr8,param_1 + 0x40);
  coprocessor_loadlong(1,in_cr9,param_1 + 0x48);
  coprocessor_loadlong(1,in_cr10,param_1 + 0x50);
  coprocessor_loadlong(1,in_cr11,param_1 + 0x58);
  coprocessor_loadlong(1,in_cr12,param_1 + 0x60);
  coprocessor_loadlong(1,in_cr13,param_1 + 0x68);
  coprocessor_loadlong(1,in_cr14,param_1 + 0x70);
  coprocessor_loadlong(1,in_cr15,param_1 + 0x78);
  return param_1 + 0x80;
}


/* address=000c0198 symbol=__gnu_Unwind_Save_WMMXD */

int __gnu_Unwind_Save_WMMXD(int param_1)

{
  undefined4 in_cr0;
  undefined4 in_cr1;
  undefined4 in_cr2;
  undefined4 in_cr3;
  undefined4 in_cr4;
  undefined4 in_cr5;
  undefined4 in_cr6;
  undefined4 in_cr7;
  undefined4 in_cr8;
  undefined4 in_cr9;
  undefined4 in_cr10;
  undefined4 in_cr11;
  undefined4 in_cr12;
  undefined4 in_cr13;
  undefined4 in_cr14;
  undefined4 in_cr15;
  
  coprocessor_storelong(1,in_cr0,param_1);
  coprocessor_storelong(1,in_cr1,param_1 + 8);
  coprocessor_storelong(1,in_cr2,param_1 + 0x10);
  coprocessor_storelong(1,in_cr3,param_1 + 0x18);
  coprocessor_storelong(1,in_cr4,param_1 + 0x20);
  coprocessor_storelong(1,in_cr5,param_1 + 0x28);
  coprocessor_storelong(1,in_cr6,param_1 + 0x30);
  coprocessor_storelong(1,in_cr7,param_1 + 0x38);
  coprocessor_storelong(1,in_cr8,param_1 + 0x40);
  coprocessor_storelong(1,in_cr9,param_1 + 0x48);
  coprocessor_storelong(1,in_cr10,param_1 + 0x50);
  coprocessor_storelong(1,in_cr11,param_1 + 0x58);
  coprocessor_storelong(1,in_cr12,param_1 + 0x60);
  coprocessor_storelong(1,in_cr13,param_1 + 0x68);
  coprocessor_storelong(1,in_cr14,param_1 + 0x70);
  coprocessor_storelong(1,in_cr15,param_1 + 0x78);
  return param_1 + 0x80;
}


/* address=000c01dc symbol=__gnu_Unwind_Restore_WMMXC */

int __gnu_Unwind_Restore_WMMXC(int param_1)

{
  undefined4 in_cr8;
  undefined4 in_cr9;
  undefined4 in_cr10;
  undefined4 in_cr11;
  
  coprocessor_load2(1,in_cr8,param_1);
  coprocessor_load2(1,in_cr9,param_1 + 4);
  coprocessor_load2(1,in_cr10,param_1 + 8);
  coprocessor_load2(1,in_cr11,param_1 + 0xc);
  return param_1 + 0x10;
}


/* address=000c01f0 symbol=__gnu_Unwind_Save_WMMXC */

int __gnu_Unwind_Save_WMMXC(int param_1)

{
  undefined4 in_cr8;
  undefined4 in_cr9;
  undefined4 in_cr10;
  undefined4 in_cr11;
  
  coprocessor_store2(1,in_cr8,param_1);
  coprocessor_store2(1,in_cr9,param_1 + 4);
  coprocessor_store2(1,in_cr10,param_1 + 8);
  coprocessor_store2(1,in_cr11,param_1 + 0xc);
  return param_1 + 0x10;
}


/* address=000c0204 symbol=___Unwind_RaiseException */

void ___Unwind_RaiseException
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  
  uStack_44 = 0;
  uStack_40 = param_1;
  uStack_3c = param_2;
  uStack_38 = param_3;
  uStack_34 = param_4;
  __gnu_Unwind_RaiseException(param_1,&uStack_44,param_3,0,param_3);
  return;
}


/* address=000c0228 symbol=___Unwind_Resume */

void ___Unwind_Resume(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  
  uStack_44 = 0;
  uStack_40 = param_1;
  uStack_3c = param_2;
  uStack_38 = param_3;
  uStack_34 = param_4;
  __gnu_Unwind_Resume(param_1,&uStack_44,param_3,0,param_3);
  return;
}


/* address=000c024c symbol=_Unwind_Resume_or_Rethrow */

void _Unwind_Resume_or_Rethrow
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  
  uStack_44 = 0;
  uStack_40 = param_1;
  uStack_3c = param_2;
  uStack_38 = param_3;
  uStack_34 = param_4;
  __gnu_Unwind_Resume_or_Rethrow(param_1,&uStack_44,param_3,0,param_3);
  return;
}


/* address=000c0270 symbol=_Unwind_ForcedUnwind */

void _Unwind_ForcedUnwind(void)

{
  __gnu_Unwind_ForcedUnwind();
  return;
}


/* address=000c0294 symbol=_Unwind_Backtrace */

void _Unwind_Backtrace(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  
  uStack_44 = 0;
  uStack_40 = param_1;
  uStack_3c = param_2;
  uStack_38 = param_3;
  uStack_34 = param_4;
  __gnu_Unwind_Backtrace(param_1,param_2,&uStack_44,0,param_3);
  return;
}


/* address=000c02b8 symbol=FUN_000c02b8 */

uint FUN_000c02b8(uint *param_1)

{
  char cVar1;
  uint *puVar2;
  uint uVar3;
  
  if (*(char *)(param_1 + 2) == '\0') {
    if (*(char *)((int)param_1 + 9) == '\0') {
      return 0xb0;
    }
    *(char *)((int)param_1 + 9) = *(char *)((int)param_1 + 9) + -1;
    puVar2 = (uint *)param_1[1];
    param_1[1] = (uint)(puVar2 + 1);
    *param_1 = *puVar2;
    cVar1 = '\x03';
  }
  else {
    cVar1 = *(char *)(param_1 + 2) + -1;
  }
  *(char *)(param_1 + 2) = cVar1;
  uVar3 = *param_1;
  *param_1 = uVar3 << 8;
  return uVar3 >> 0x18;
}


/* address=000c0318 symbol=FUN_000c0318 */

undefined4 FUN_000c0318(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 local_c;
  
  local_c = param_4;
  _Unwind_VRS_Get(param_1,0,0xc,0,&local_c,param_2,param_3);
  return local_c;
}


/* address=000c0340 symbol=thunk_FUN_000c0318 */

undefined4
thunk_FUN_000c0318(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_c;
  
  uStack_c = param_4;
  _Unwind_VRS_Get(param_1,0,0xc,0,&uStack_c,param_2,param_3);
  return uStack_c;
}


/* address=000c0344 symbol=__gnu_unwind_execute */

undefined4 __gnu_unwind_execute(undefined4 param_1,undefined4 param_2)

{
  uint uVar1;
  undefined4 uVar2;
  uint uVar3;
  undefined4 uVar4;
  bool bVar5;
  int iVar6;
  int local_24 [2];
  
  bVar5 = false;
LAB_000c0358:
  do {
    while( true ) {
      uVar1 = FUN_000c02b8(param_2);
      if (uVar1 == 0xb0) {
        if (!bVar5) {
          _Unwind_VRS_Get(param_1,0,0xe,0,local_24);
          _Unwind_VRS_Set(param_1,0,0xf,0,local_24);
        }
        return 0;
      }
      if ((uVar1 & 0x80) != 0) break;
      _Unwind_VRS_Get(param_1,0,0xd,0,local_24);
      iVar6 = (uVar1 & 0x3f) * 4 + 4;
      if ((uVar1 & 0x40) != 0) {
        iVar6 = -iVar6;
      }
      local_24[0] = local_24[0] + iVar6;
LAB_000c048c:
      _Unwind_VRS_Set(param_1,0,0xd,0,local_24);
    }
    uVar3 = uVar1 & 0xf0;
    if (uVar3 == 0x80) {
      uVar3 = FUN_000c02b8(param_2);
      uVar3 = uVar3 | uVar1 << 8;
      if (uVar3 == 0x8000) {
        return 9;
      }
      uVar3 = uVar3 << 4;
      iVar6 = _Unwind_VRS_Pop(param_1,0,uVar3 & 0xffff,0);
      if (iVar6 != 0) {
        return 9;
      }
      if ((uVar3 & 0x8000) != 0) {
        bVar5 = true;
      }
      goto LAB_000c0358;
    }
    if (uVar3 == 0x90) {
      if ((uVar1 & 0xd) == 0xd) {
        return 9;
      }
      _Unwind_VRS_Get(param_1,0,uVar1 & 0xf,0,local_24);
      goto LAB_000c048c;
    }
    if (uVar3 == 0xa0) {
      uVar3 = 0xff0 >> (~uVar1 & 7) & 0xff0;
      uVar2 = 0;
      uVar4 = uVar2;
      if ((uVar1 & 8) != 0) {
        uVar3 = uVar3 | 0x4000;
      }
    }
    else if (uVar3 == 0xb0) {
      if (uVar1 == 0xb1) {
        uVar3 = FUN_000c02b8(param_2);
        if (uVar3 == 0) {
          return 9;
        }
        if ((uVar3 & 0xf0) != 0) {
          return 9;
        }
        uVar2 = 0;
        uVar4 = uVar2;
      }
      else {
        if (uVar1 == 0xb2) {
          _Unwind_VRS_Get(param_1,0,0xd,0,local_24);
          uVar1 = FUN_000c02b8(param_2);
          uVar3 = 2;
          while ((uVar1 & 0x80) != 0) {
            local_24[0] = local_24[0] + ((uVar1 & 0x7f) << (uVar3 & 0xff));
            uVar3 = uVar3 + 7;
            uVar1 = FUN_000c02b8(param_2);
          }
          local_24[0] = local_24[0] + 0x204 + ((uVar1 & 0x7f) << (uVar3 & 0xff));
          goto LAB_000c048c;
        }
        if (uVar1 == 0xb3) {
          uVar1 = FUN_000c02b8(param_2);
          uVar2 = 1;
          goto LAB_000c05e8;
        }
        if ((uVar1 & 0xfc) == 0xb4) {
          return 9;
        }
        uVar2 = 1;
        uVar3 = (uVar1 & 7) + 1 | 0x80000;
        uVar4 = uVar2;
      }
    }
    else if (uVar3 == 0xc0) {
      if (uVar1 == 0xc6) {
        uVar1 = FUN_000c02b8(param_2);
        uVar2 = 3;
LAB_000c05e8:
        uVar3 = (uVar1 & 0xf) + 1 | (uVar1 & 0xf0) << 0xc;
        uVar4 = uVar2;
      }
      else if (uVar1 == 199) {
        uVar3 = FUN_000c02b8(param_2);
        if (uVar3 == 0) {
          return 9;
        }
        if ((uVar3 & 0xf0) != 0) {
          return 9;
        }
        uVar2 = 4;
        uVar4 = 0;
      }
      else {
        if ((uVar1 & 0xf8) != 0xc0) {
          if (uVar1 == 200) {
            uVar1 = FUN_000c02b8(param_2);
            uVar3 = (uVar1 & 0xf) + 1 | ((uVar1 & 0xf0) + 0x10) * 0x1000;
          }
          else {
            if (uVar1 != 0xc9) {
              return 9;
            }
            uVar1 = FUN_000c02b8(param_2);
            uVar3 = (uVar1 & 0xf) + 1 | (uVar1 & 0xf0) << 0xc;
          }
          goto LAB_000c06bc;
        }
        uVar2 = 3;
        uVar3 = (uVar1 & 0xf) + 1 | 0xa0000;
        uVar4 = uVar2;
      }
    }
    else {
      if ((uVar1 & 0xf8) != 0xd0) {
        return 9;
      }
      uVar3 = (uVar1 & 7) + 1 | 0x80000;
LAB_000c06bc:
      uVar2 = 1;
      uVar4 = 5;
    }
    iVar6 = _Unwind_VRS_Pop(param_1,uVar2,uVar3,uVar4);
    if (iVar6 != 0) {
      return 9;
    }
  } while( true );
}


/* address=000c06dc symbol=__gnu_unwind_frame */

void __gnu_unwind_frame(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int local_14;
  int local_10;
  undefined4 local_c;
  
  iVar1 = *(int *)(param_1 + 0x4c);
  local_14 = *(int *)(iVar1 + 4) << 8;
  local_10 = iVar1 + 8;
  __gnu_unwind_execute(param_2,&local_14,3,*(undefined *)(iVar1 + 7),param_1);
  return;
}


/* address=000c071c symbol=_Unwind_GetRegionStart */

undefined4 _Unwind_GetRegionStart(void)

{
  int iVar1;
  
  iVar1 = thunk_FUN_000c0318();
  return *(undefined4 *)(iVar1 + 0x48);
}


/* address=000c072c symbol=_Unwind_GetLanguageSpecificData */

int _Unwind_GetLanguageSpecificData(void)

{
  int iVar1;
  
  iVar1 = thunk_FUN_000c0318();
  return *(int *)(iVar1 + 0x4c) + (uint)*(byte *)(*(int *)(iVar1 + 0x4c) + 7) * 4 + 8;
}


/* address=000c0748 symbol=_Unwind_GetDataRelBase */

void _Unwind_GetDataRelBase(void)

{
                    /* WARNING: Subroutine does not return */
  abort();
}


/* address=000c0750 symbol=_Unwind_GetTextRelBase */

void _Unwind_GetTextRelBase(void)

{
                    /* WARNING: Subroutine does not return */
  abort();
}


/* address=000c0758 symbol=__divdi3 */

undefined8 __divdi3(uint param_1,uint param_2,uint param_3,uint param_4)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  bool bVar8;
  bool bVar9;
  undefined8 uVar10;
  longlong lVar11;
  int iVar12;
  
  if ((int)param_2 < 0) {
    uVar4 = -param_1;
    uVar6 = 0xffffffff;
    param_2 = -(param_2 + (param_1 != 0));
  }
  else {
    uVar6 = 0;
    uVar4 = param_1;
  }
  uVar7 = param_3;
  if ((int)param_4 < 0) {
    uVar7 = -param_3;
    uVar6 = ~uVar6;
    param_4 = -(param_4 + (param_3 != 0));
  }
  bVar9 = param_2 <= param_4;
  bVar8 = param_4 != param_2;
  if (!bVar8) {
    bVar9 = uVar4 <= uVar7;
  }
  uVar2 = param_4;
  uVar1 = uVar7;
  if (bVar9 && (bVar8 || uVar7 != uVar4)) {
    uVar1 = 0;
    uVar2 = 0;
  }
  lVar11 = CONCAT44(uVar2,uVar1);
  if (!bVar9 || !bVar8 && uVar7 == uVar4) {
    if (param_4 == 0) {
      iVar5 = LZCOUNT(uVar7) + 0x20;
    }
    else {
      iVar5 = LZCOUNT(param_4);
    }
    if (param_2 == 0) {
      iVar3 = LZCOUNT(uVar4) + 0x20;
    }
    else {
      iVar3 = LZCOUNT(param_2);
    }
    iVar5 = iVar5 - iVar3;
    iVar12 = iVar5;
    uVar10 = __ashldi3(uVar7,param_4,iVar5,iVar3,param_1,iVar5,param_3);
    uVar7 = (uint)((ulonglong)uVar10 >> 0x20);
    uVar1 = (uint)uVar10;
    bVar9 = uVar7 <= param_2;
    if (param_2 == uVar7) {
      bVar9 = uVar1 <= uVar4;
    }
    if (bVar9) {
      bVar9 = uVar4 < uVar1;
      uVar4 = uVar4 - uVar1;
      param_2 = param_2 - (uVar7 + bVar9);
      lVar11 = __ashldi3(1,0,iVar5);
    }
    else {
      lVar11 = 0;
    }
    if (iVar5 != 0) {
      uVar7 = uVar7 >> 1;
      uVar1 = (uint)((byte)((ulonglong)uVar10 >> 0x20) & 1) << 0x1f | uVar1 >> 1;
      do {
        uVar2 = uVar4 - uVar1;
        iVar3 = param_2 - (uVar7 + (uVar4 < uVar1));
        bVar9 = uVar7 <= param_2;
        if (param_2 == uVar7) {
          bVar9 = uVar1 <= uVar4;
        }
        param_2 = param_2 * 2 + (uint)CARRY4(uVar4,uVar4);
        uVar4 = uVar4 * 2;
        if (bVar9) {
          param_2 = iVar3 * 2 + (uint)CARRY4(uVar2,uVar2) + (uint)(0xfffffffe < uVar2 * 2);
          uVar4 = uVar2 * 2 + 1;
        }
        iVar5 = iVar5 + -1;
      } while (iVar5 != 0);
      lVar11 = lVar11 + CONCAT44(param_2,uVar4);
      uVar7 = (uint)lVar11;
      uVar10 = __lshrdi3(uVar4,param_2,iVar12);
      uVar10 = __ashldi3((int)uVar10,(int)((ulonglong)uVar10 >> 0x20),iVar12);
      lVar11 = CONCAT44((int)((ulonglong)lVar11 >> 0x20) -
                        ((int)((ulonglong)uVar10 >> 0x20) + (uint)(uVar7 < (uint)uVar10)),
                        uVar7 - (uint)uVar10);
    }
  }
  if (uVar6 != 0) {
    uVar6 = 1;
  }
  uVar4 = (uint)lVar11 ^ -uVar6;
  return CONCAT44(((uint)((ulonglong)lVar11 >> 0x20) ^ -(uint)(uVar6 != 0)) +
                  (uint)CARRY4(uVar6,uVar4),uVar6 + uVar4);
}


/* address=000c08d4 symbol=__udivdi3 */

int __udivdi3(uint param_1,uint param_2,uint param_3,uint param_4)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  bool bVar9;
  bool bVar10;
  undefined8 uVar11;
  
  bVar9 = param_2 <= param_4;
  if (param_4 == param_2) {
    bVar9 = param_1 <= param_3;
  }
  if (bVar9 && (param_4 != param_2 || param_3 != param_1)) {
    return 0;
  }
  if (param_4 == 0) {
    iVar6 = LZCOUNT(param_3) + 0x20;
  }
  else {
    iVar6 = LZCOUNT(param_4);
  }
  if (param_2 == 0) {
    iVar4 = LZCOUNT(param_1) + 0x20;
  }
  else {
    iVar4 = LZCOUNT(param_2);
  }
  iVar6 = iVar6 - iVar4;
  uVar11 = __ashldi3(param_3,param_4,iVar6,param_4,param_4);
  uVar5 = (uint)((ulonglong)uVar11 >> 0x20);
  uVar3 = (uint)uVar11;
  bVar9 = uVar5 <= param_2;
  if (param_2 == uVar5) {
    bVar9 = uVar3 <= param_1;
  }
  if (bVar9) {
    bVar9 = param_1 < uVar3;
    param_1 = param_1 - uVar3;
    param_2 = param_2 - (uVar5 + bVar9);
    iVar4 = __ashldi3(1,0,iVar6);
  }
  else {
    iVar4 = 0;
  }
  if (iVar6 != 0) {
    uVar5 = uVar5 >> 1;
    uVar3 = (uint)((byte)((ulonglong)uVar11 >> 0x20) & 1) << 0x1f | uVar3 >> 1;
    iVar7 = iVar6;
    do {
      uVar8 = param_1 - uVar3;
      bVar10 = CARRY4(param_1,param_1);
      uVar1 = param_1 * 2;
      iVar2 = param_2 * 2;
      bVar9 = uVar5 <= param_2;
      if (param_2 == uVar5) {
        bVar9 = uVar3 <= param_1;
      }
      param_2 = (param_2 - (uVar5 + (param_1 < uVar3))) * 2 + (uint)CARRY4(uVar8,uVar8) +
                (uint)(0xfffffffe < uVar8 * 2);
      param_1 = uVar8 * 2 + 1;
      if (!bVar9) {
        param_2 = iVar2 + (uint)bVar10;
        param_1 = uVar1;
      }
      iVar7 = iVar7 + -1;
    } while (iVar7 != 0);
    uVar11 = __lshrdi3(param_1,param_2,iVar6);
    iVar6 = __ashldi3((int)uVar11,(int)((ulonglong)uVar11 >> 0x20),iVar6);
    return (param_1 + iVar4) - iVar6;
  }
  return iVar4;
}


/* address=000c09e0 symbol=__lshrdi3 */

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


/* address=000c09fc symbol=__ashldi3 */

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


/* address=000c0a18 symbol=<EXTERNAL>::malloc */

/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * malloc(size_t __size)

{
  void *pvVar1;
  
  pvVar1 = malloc(__size);
  return pvVar1;
}


/* address=000c0a1c symbol=<EXTERNAL>::malloc */

/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * malloc(size_t __size)

{
  void *pvVar1;
  
  pvVar1 = malloc(__size);
  return pvVar1;
}


/* address=000c0a98 symbol=<EXTERNAL>::strtod */

/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double strtod(char *__nptr,char **__endptr)

{
  double dVar1;
  
  dVar1 = strtod(__nptr,__endptr);
  return dVar1;
}


/* address=000c0a9c symbol=<EXTERNAL>::strtod */

/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double strtod(char *__nptr,char **__endptr)

{
  double dVar1;
  
  dVar1 = strtod(__nptr,__endptr);
  return dVar1;
}


/* address=000c0aa8 symbol=<EXTERNAL>::vsnprintf */

/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int vsnprintf(char *__s,size_t __maxlen,char *__format,__gnuc_va_list __arg)

{
  int iVar1;
  
  iVar1 = vsnprintf(__s,__maxlen,__format,__arg);
  return iVar1;
}


/* address=000c0aac symbol=<EXTERNAL>::vsnprintf */

/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int vsnprintf(char *__s,size_t __maxlen,char *__format,__gnuc_va_list __arg)

{
  int iVar1;
  
  iVar1 = vsnprintf(__s,__maxlen,__format,__arg);
  return iVar1;
}


/* address=000c0b48 symbol=_ZN17glsl_symbol_tableD2Ev */

void _ZN17glsl_symbol_tableD2Ev(void)

{
  _ZN17glsl_symbol_tableD2Ev();
  return;
}


/* address=000c0b4c symbol=_ZN17glsl_symbol_tableD2Ev */

void _ZN17glsl_symbol_tableD2Ev(void)

{
  _ZN17glsl_symbol_tableD2Ev();
  return;
}


/* address=000c0be8 symbol=_Z36_mesa_glsl_release_builtin_functionsv */

void _Z36_mesa_glsl_release_builtin_functionsv(void)

{
  _Z36_mesa_glsl_release_builtin_functionsv();
  return;
}


/* address=000c0bec symbol=_Z36_mesa_glsl_release_builtin_functionsv */

void _Z36_mesa_glsl_release_builtin_functionsv(void)

{
  _Z36_mesa_glsl_release_builtin_functionsv();
  return;
}


/* address=000c0d58 symbol=_ZdlPv */

void _ZdlPv(void)

{
  _ZdlPv();
  return;
}


/* address=000c0d5c symbol=_ZdlPv */

void _ZdlPv(void)

{
  _ZdlPv();
  return;
}


/* address=000c0f38 symbol=__cxa_begin_cleanup */

void __cxa_begin_cleanup(void)

{
  __cxa_begin_cleanup();
  return;
}


/* address=000c0f3c symbol=__cxa_begin_cleanup */

void __cxa_begin_cleanup(void)

{
  __cxa_begin_cleanup();
  return;
}


