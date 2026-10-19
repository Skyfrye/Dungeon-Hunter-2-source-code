// ===== 76dba8 gameswf::stringi_hash<gameswf::as_standard_member>::~stringi_hash() =====
_DWORD **__fastcall gameswf::stringi_hash<gameswf::as_standard_member>::~stringi_hash(_DWORD **a1)
{
  gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(a1);
  return a1;
}


// ===== 76dbbc gameswf::clear_standard_property_map(void) =====
void __fastcall gameswf::clear_standard_property_map(gameswf *this)
{
  gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear((_DWORD **)&gameswf::s_standard_property_map);
}


// ===== 76dbd0 gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(
        _DWORD **a1,
        int a2)
{
  _DWORD *v2; // r10
  int v3; // r4
  _DWORD *v4; // r3
  int v5; // r5
  int v6; // r3
  _DWORD *v7; // r3
  int v8; // r7
  int v9; // r6
  int v10; // r5
  _DWORD *v11; // r4
  _DWORD v12[2]; // [sp+4h] [bp-8h] BYREF

  v2 = a1;
  if ( a2 <= 0 )
  {
LABEL_19:
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(a1);
    return;
  }
  v3 = 1 << (int)(float)((float)(logf((float)(a2 - 1)) / 0.69315) + 1.0);
  v4 = (_DWORD *)*v2;
  if ( v3 < 4 )
    v3 = 4;
  if ( !v4 || v4[1] + 1 != v3 )
  {
    v5 = 0;
    v12[0] = gameswf::malloc_internal(32 * v3 + 8);
    *(_DWORD *)v12[0] = 0;
    *(_DWORD *)(v12[0] + 4) = v3 - 1;
    v6 = 8;
    do
    {
      ++v5;
      *(_DWORD *)(v12[0] + v6) = -2;
      v6 += 32;
    }
    while ( v3 > v5 );
    v7 = (_DWORD *)*v2;
    if ( *v2 )
    {
      v8 = v7[1];
      if ( v8 >= 0 )
      {
        v9 = 0;
        v10 = 2;
        do
        {
          v11 = &v7[v10];
          ++v9;
          if ( v7[v10] != -2 && v11[1] != -1 )
          {
            gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
              v12,
              &v7[v10 + 2],
              &v7[v10 + 7]);
            if ( *((char *)v11 + 8) == -1 )
              gameswf::free_internal((void *)v11[5]);
            *v11 = -2;
            v11[1] = 0;
            v7 = (_DWORD *)*v2;
          }
          v10 += 8;
        }
        while ( v8 >= v9 );
      }
      gameswf::free_internal(v7);
    }
    a1 = (_DWORD **)v12;
    *v2 = v12[0];
    v12[0] = 0;
    goto LABEL_19;
  }
}


// ===== 76dd48 gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::check_expand(void) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::check_expand(
        _DWORD **a1)
{
  _DWORD *v1; // r3
  int v2; // r1

  v1 = *a1;
  if ( *a1 )
  {
    v2 = 2 * (v1[1] + 1);
    if ( 3 * *v1 <= v2 )
      return;
  }
  else
  {
    v2 = 8;
  }
  gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(
    a1,
    v2);
}


// ===== 76dd7c gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(gameswf::tu_stringi const&,gameswf::as_standard_member const&) =====
gameswf::tu_string *__fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
        _DWORD **a1,
        const gameswf::tu_string *a2,
        _DWORD *a3)
{
  char *v5; // r12
  int v6; // lr
  int v7; // r9
  _DWORD *v8; // r5
  int v9; // r3
  int v10; // r2
  int v11; // r11
  int v12; // r1
  _DWORD *v13; // r10
  int v14; // r12
  int v15; // r6
  int v16; // r7
  int v17; // r0
  _DWORD *v18; // r7
  int v19; // r3
  int v20; // r8
  int *v21; // r8
  gameswf::tu_string *result; // r0
  int v23; // r3
  int v24; // r3
  bool v25; // zf
  int v26; // r3
  int v27; // r2
  char *v28; // r3
  int v29; // r2
  int v30; // r1
  int v31; // r2

  gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::check_expand(a1);
  ++**a1;
  v6 = *((_DWORD *)a2 + 4);
  if ( (v6 & 0xFFFFFF) == 0xFFFFFF )
  {
    v24 = *(char *)a2;
    v25 = v24 == -1;
    if ( v24 == -1 )
    {
      v26 = *((_DWORD *)a2 + 1);
    }
    else
    {
      v26 = v24 - 1;
      v5 = (char *)a2 + 1;
    }
    if ( v25 )
    {
      --v26;
      v5 = *((char **)a2 + 3);
    }
    if ( v26 > 0 )
    {
      v28 = &v5[v26];
      v29 = 5381;
      do
      {
        v30 = (unsigned __int8)*--v28;
        v31 = 33 * v29;
        if ( (unsigned __int8)(v30 - 65) <= 0x19u )
          v30 += 32;
        v29 = v30 ^ v31;
      }
      while ( v28 != v5 );
      v27 = v29 << 8 >> 8;
      v7 = v27;
    }
    else
    {
      v7 = 5381;
      v27 = 5381;
    }
    *((_DWORD *)a2 + 4) = v6 & 0xFF000000 | v27 & 0xFFFFFF;
  }
  else
  {
    v7 = v6 << 8 >> 8;
  }
  v8 = *a1;
  if ( v7 == -1 )
    v7 = -32769;
  v9 = v8[1];
  v10 = v7 & v9;
  v11 = 4 * (v7 & v9) + 1;
  v12 = v8[2 * v11];
  v13 = &v8[2 * v11];
  if ( v12 == -2 )
  {
    v8[2 * v11] = -1;
LABEL_28:
    v13[1] = v7;
    result = gameswf::tu_string::tu_string((gameswf::tu_string *)(v13 + 2), a2);
    v13[7] = *a3;
    return result;
  }
  v14 = v13[1];
  if ( v14 == -1 )
    goto LABEL_28;
  v15 = v7 & v9;
  do
  {
    v15 = (v15 + 1) & v9;
    v16 = 4 * v15 + 1;
    v17 = v8[2 * v16];
    v18 = &v8[2 * v16];
  }
  while ( v17 != -2 );
  v19 = v9 & v14;
  if ( v19 == v10 )
  {
    *v18 = v12;
    v18[1] = v13[1];
    gameswf::tu_string::tu_string((gameswf::tu_string *)(v18 + 2), (const gameswf::tu_string *)(v13 + 2));
    v18[7] = v13[7];
    result = gameswf::tu_string::operator=((gameswf::tu_string *)(v13 + 2), (char *)a2);
    v13[7] = *a3;
    v8[2 * v11] = v15;
    v13[1] = v7;
  }
  else
  {
    do
    {
      v20 = 4 * v19 + 1;
      v19 = v8[2 * v20];
      v21 = &v8[2 * v20];
    }
    while ( v19 != v10 );
    *v18 = v12;
    v18[1] = v13[1];
    gameswf::tu_string::tu_string((gameswf::tu_string *)(v18 + 2), (const gameswf::tu_string *)(v13 + 2));
    v18[7] = v13[7];
    *v21 = v15;
    result = gameswf::tu_string::operator=((gameswf::tu_string *)(v13 + 2), (char *)a2);
    v23 = *a3;
    v13[1] = v7;
    v13[7] = v23;
    v8[2 * v11] = -1;
  }
  return result;
}


// ===== 76df78 gameswf::clear_standard_method_map(void) =====
void __fastcall gameswf::clear_standard_method_map(gameswf *this)
{
  int i; // r4
  void *v2; // r7

  for ( i = 0; i != 32; i += 4 )
  {
    v2 = *(void **)((char *)&gameswf::s_standard_method_map + i);
    if ( v2 )
    {
      gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(*(_DWORD ***)((char *)&gameswf::s_standard_method_map + i));
      gameswf::free_internal(v2);
      *(_DWORD *)((char *)&gameswf::s_standard_method_map + i) = 0;
    }
  }
  gameswf::permanent_string_cache::clear((gameswf::permanent_string_cache *)&gameswf::s_static_strings);
}


// ===== 76dfdc gameswf::player::notify_key_object(gameswf::key::code,bool) =====
int __fastcall gameswf::player::notify_key_object(gameswf::player *a1, int a2, int a3)
{
  int global; // r11
  void (__fastcall *v6)(int, _BYTE *, char *); // r7
  const char *v7; // r1
  gameswf::as_key *v9; // r7
  char v10; // [sp+4h] [bp-28h] BYREF
  char v11; // [sp+5h] [bp-27h]
  gameswf::as_key *v12; // [sp+8h] [bp-24h]
  _BYTE v13[8]; // [sp+10h] [bp-1Ch] BYREF
  void *p; // [sp+1Ch] [bp-10h]

  v11 = 0;
  v10 = 0;
  global = gameswf::player::get_global(a1);
  v6 = *(void (__fastcall **)(int, _BYTE *, char *))(*(_DWORD *)global + 32);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v13, "Key");
  v6(global, v13, &v10);
  if ( v13[0] == -1 )
    gameswf::free_internal(p);
  if ( v11 == 5
    && (v9 = v12) != nullptr
    && (*(int (__fastcall **)(gameswf::as_key *, int))(*(_DWORD *)v12 + 8))(v12, 15) )
  {
    if ( a3 )
      gameswf::as_key::set_key_down(v9, a2);
    else
      gameswf::as_key::set_key_up(v9, a2);
  }
  else
  {
    gameswf::log_error("gameswf::notify_key_event(): no Key built-in\n", v7);
  }
  return gameswf::as_value::drop_refs((gameswf::as_value *)&v10);
}


// ===== 76e104 gameswf::player::action_init(void) =====
void __fastcall gameswf::player::action_init(char **this)
{
  __int64 v2; // r0
  int v3; // r3
  int v4; // r2
  int *v5; // r3
  _DWORD **v6; // r0
  int v7; // r1
  int v8; // r1
  int v9; // r10
  int v10; // r10
  int v11; // r10
  int v12; // r10
  gameswf::player *v13; // r1
  int v14; // r0
  int v15; // r10
  int v16; // r10
  int v17; // r10
  int v18; // r10
  int v19; // r10
  int v20; // r10
  int v21; // r10
  int v22; // r10
  int v23; // r10
  int v24; // r10
  gameswf::player *v25; // r1
  int v26; // r0
  int v27; // r10
  int v28; // r10
  int v29; // r10
  int v30; // r10
  gameswf::player *v31; // r1
  int v32; // r0
  int v33; // r10
  gameswf::player *v34; // r1
  int v35; // r0
  int v36; // r10
  gameswf::player *v37; // r1
  int v38; // r0
  int v39; // r10
  gameswf::player *v40; // r1
  int v41; // r0
  int v42; // r10
  int v43; // r10
  int v44; // r10
  int v45; // r10
  int v46; // r10
  int v47; // r10
  int v48; // r10
  gameswf::tu_string *v49; // r0
  int v50; // r8
  _BYTE v51[12]; // [sp+0h] [bp-3BCh] BYREF
  _BYTE v52[4]; // [sp+Ch] [bp-3B0h] BYREF
  int v53; // [sp+10h] [bp-3ACh]
  _BYTE v54[12]; // [sp+18h] [bp-3A4h] BYREF
  _BYTE v55[12]; // [sp+24h] [bp-398h] BYREF
  _BYTE v56[12]; // [sp+30h] [bp-38Ch] BYREF
  _BYTE v57[12]; // [sp+3Ch] [bp-380h] BYREF
  _BYTE v58[12]; // [sp+48h] [bp-374h] BYREF
  _BYTE v59[12]; // [sp+54h] [bp-368h] BYREF
  _BYTE v60[4]; // [sp+60h] [bp-35Ch] BYREF
  int v61; // [sp+64h] [bp-358h]
  _BYTE v62[4]; // [sp+6Ch] [bp-350h] BYREF
  int v63; // [sp+70h] [bp-34Ch]
  _BYTE v64[4]; // [sp+78h] [bp-344h] BYREF
  int v65; // [sp+7Ch] [bp-340h]
  _BYTE v66[4]; // [sp+84h] [bp-338h] BYREF
  int v67; // [sp+88h] [bp-334h]
  _BYTE v68[12]; // [sp+90h] [bp-32Ch] BYREF
  _BYTE v69[12]; // [sp+9Ch] [bp-320h] BYREF
  _BYTE v70[12]; // [sp+A8h] [bp-314h] BYREF
  _BYTE v71[4]; // [sp+B4h] [bp-308h] BYREF
  int v72; // [sp+B8h] [bp-304h]
  _BYTE v73[12]; // [sp+C0h] [bp-2FCh] BYREF
  _BYTE v74[12]; // [sp+CCh] [bp-2F0h] BYREF
  _BYTE v75[12]; // [sp+D8h] [bp-2E4h] BYREF
  _BYTE v76[12]; // [sp+E4h] [bp-2D8h] BYREF
  _BYTE v77[12]; // [sp+F0h] [bp-2CCh] BYREF
  _BYTE v78[12]; // [sp+FCh] [bp-2C0h] BYREF
  _BYTE v79[12]; // [sp+108h] [bp-2B4h] BYREF
  _BYTE v80[12]; // [sp+114h] [bp-2A8h] BYREF
  _BYTE v81[12]; // [sp+120h] [bp-29Ch] BYREF
  _BYTE v82[4]; // [sp+12Ch] [bp-290h] BYREF
  int v83; // [sp+130h] [bp-28Ch]
  _BYTE v84[12]; // [sp+138h] [bp-284h] BYREF
  _BYTE v85[12]; // [sp+144h] [bp-278h] BYREF
  _BYTE v86[12]; // [sp+150h] [bp-26Ch] BYREF
  _BYTE v87[8]; // [sp+15Ch] [bp-260h] BYREF
  void *v88; // [sp+168h] [bp-254h]
  _BYTE v89[8]; // [sp+170h] [bp-24Ch] BYREF
  void *v90; // [sp+17Ch] [bp-240h]
  _BYTE v91[8]; // [sp+184h] [bp-238h] BYREF
  void *v92; // [sp+190h] [bp-22Ch]
  _BYTE v93[8]; // [sp+198h] [bp-224h] BYREF
  void *v94; // [sp+1A4h] [bp-218h]
  _BYTE v95[8]; // [sp+1ACh] [bp-210h] BYREF
  void *v96; // [sp+1B8h] [bp-204h]
  _BYTE v97[8]; // [sp+1C0h] [bp-1FCh] BYREF
  void *v98; // [sp+1CCh] [bp-1F0h]
  _BYTE v99[8]; // [sp+1D4h] [bp-1E8h] BYREF
  void *v100; // [sp+1E0h] [bp-1DCh]
  _BYTE v101[8]; // [sp+1E8h] [bp-1D4h] BYREF
  void *v102; // [sp+1F4h] [bp-1C8h]
  _BYTE v103[8]; // [sp+1FCh] [bp-1C0h] BYREF
  void *v104; // [sp+208h] [bp-1B4h]
  _BYTE v105[8]; // [sp+210h] [bp-1ACh] BYREF
  void *v106; // [sp+21Ch] [bp-1A0h]
  _BYTE v107[8]; // [sp+224h] [bp-198h] BYREF
  void *v108; // [sp+230h] [bp-18Ch]
  _BYTE v109[8]; // [sp+238h] [bp-184h] BYREF
  void *v110; // [sp+244h] [bp-178h]
  _BYTE v111[8]; // [sp+24Ch] [bp-170h] BYREF
  void *v112; // [sp+258h] [bp-164h]
  _BYTE v113[8]; // [sp+260h] [bp-15Ch] BYREF
  void *v114; // [sp+26Ch] [bp-150h]
  _BYTE v115[8]; // [sp+274h] [bp-148h] BYREF
  void *v116; // [sp+280h] [bp-13Ch]
  _BYTE v117[8]; // [sp+288h] [bp-134h] BYREF
  void *v118; // [sp+294h] [bp-128h]
  _BYTE v119[8]; // [sp+29Ch] [bp-120h] BYREF
  void *v120; // [sp+2A8h] [bp-114h]
  _BYTE v121[8]; // [sp+2B0h] [bp-10Ch] BYREF
  void *v122; // [sp+2BCh] [bp-100h]
  _BYTE v123[8]; // [sp+2C4h] [bp-F8h] BYREF
  void *v124; // [sp+2D0h] [bp-ECh]
  _BYTE v125[8]; // [sp+2D8h] [bp-E4h] BYREF
  void *v126; // [sp+2E4h] [bp-D8h]
  _BYTE v127[8]; // [sp+2ECh] [bp-D0h] BYREF
  void *v128; // [sp+2F8h] [bp-C4h]
  _BYTE v129[8]; // [sp+300h] [bp-BCh] BYREF
  void *v130; // [sp+30Ch] [bp-B0h]
  _BYTE v131[8]; // [sp+314h] [bp-A8h] BYREF
  void *v132; // [sp+320h] [bp-9Ch]
  _BYTE v133[8]; // [sp+328h] [bp-94h] BYREF
  void *v134; // [sp+334h] [bp-88h]
  _BYTE v135[8]; // [sp+33Ch] [bp-80h] BYREF
  void *v136; // [sp+348h] [bp-74h]
  _BYTE v137[8]; // [sp+350h] [bp-6Ch] BYREF
  void *v138; // [sp+35Ch] [bp-60h]
  _BYTE v139[8]; // [sp+364h] [bp-58h] BYREF
  void *v140; // [sp+370h] [bp-4Ch]
  _BYTE v141[8]; // [sp+378h] [bp-44h] BYREF
  void *v142; // [sp+384h] [bp-38h]
  _BYTE v143[8]; // [sp+38Ch] [bp-30h] BYREF
  void *v144; // [sp+398h] [bp-24h]
  _BYTE v145[8]; // [sp+3A0h] [bp-1Ch] BYREF
  void *p; // [sp+3ACh] [bp-10h]

  LODWORD(v2) = gameswf::tu_timer::get_ticks((gameswf::tu_timer *)this);
  v3 = (int)*(this + 13);
  v4 = (int)*(this + 12);
  *((_QWORD *)this + 8) = v2;
  *(_DWORD *)(v3 + 52) = v4;
  LODWORD(v2) = *(this + 13);
  v5 = *(int **)(v2 + 12);
  v6 = (_DWORD **)(v2 + 12);
  if ( v5 )
  {
    v8 = *v5;
    if ( *v5 < 32 )
      v8 = 32;
    v7 = (3 * v8) >> 1;
  }
  else
  {
    v7 = 48;
  }
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(
    v6,
    v7);
  v9 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v145, "trace");
  v86[1] = 0;
  v86[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v86,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_trace);
  gameswf::as_object::builtin_member(v9, (int)v145, v86);
  gameswf::as_value::drop_refs((gameswf::as_value *)v86);
  if ( v145[0] == -1 )
    gameswf::free_internal(p);
  v10 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v143, "Object");
  v85[1] = 0;
  v85[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v85,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_object_ctor);
  gameswf::as_object::builtin_member(v10, (int)v143, v85);
  gameswf::as_value::drop_refs((gameswf::as_value *)v85);
  if ( v143[0] == -1 )
    gameswf::free_internal(v144);
  v11 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v141, "Sound");
  v84[1] = 0;
  v84[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v84,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_sound_ctor);
  gameswf::as_object::builtin_member(v11, (int)v141, v84);
  gameswf::as_value::drop_refs((gameswf::as_value *)v84);
  if ( v141[0] == -1 )
    gameswf::free_internal(v142);
  v12 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v139, "Array");
  v14 = gameswf::array_init((gameswf *)this, v13);
  v82[0] = 0;
  v82[1] = 5;
  v83 = v14;
  if ( v14 )
    gameswf::ref_counted::add_ref(v14);
  gameswf::as_object::builtin_member(v12, (int)v139, v82);
  gameswf::as_value::drop_refs((gameswf::as_value *)v82);
  if ( v139[0] == -1 )
    gameswf::free_internal(v140);
  v15 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v137, "MovieClip");
  v81[1] = 0;
  v81[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v81,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_movieclip_ctor);
  gameswf::as_object::builtin_member(v15, (int)v137, v81);
  gameswf::as_value::drop_refs((gameswf::as_value *)v81);
  if ( v137[0] == -1 )
    gameswf::free_internal(v138);
  v16 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v135, "TextField");
  v80[1] = 0;
  v80[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v80,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_textfield_ctor);
  gameswf::as_object::builtin_member(v16, (int)v135, v80);
  gameswf::as_value::drop_refs((gameswf::as_value *)v80);
  if ( v135[0] == -1 )
    gameswf::free_internal(v136);
  v17 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v133, "TextFormat");
  v79[1] = 0;
  v79[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v79,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_textformat_ctor);
  gameswf::as_object::builtin_member(v17, (int)v133, v79);
  gameswf::as_value::drop_refs((gameswf::as_value *)v79);
  if ( v133[0] == -1 )
    gameswf::free_internal(v134);
  v18 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v131, "MovieClipLoader");
  v78[1] = 0;
  v78[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v78,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_mcloader_ctor);
  gameswf::as_object::builtin_member(v18, (int)v131, v78);
  gameswf::as_value::drop_refs((gameswf::as_value *)v78);
  if ( v131[0] == -1 )
    gameswf::free_internal(v132);
  v19 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v129, "String");
  v77[1] = 0;
  v77[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v77,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_string_ctor);
  gameswf::as_object::builtin_member(v19, (int)v129, v77);
  gameswf::as_value::drop_refs((gameswf::as_value *)v77);
  if ( v129[0] == -1 )
    gameswf::free_internal(v130);
  v20 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v127, "Number");
  v76[1] = 0;
  v76[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v76,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_number_ctor);
  gameswf::as_object::builtin_member(v20, (int)v127, v76);
  gameswf::as_value::drop_refs((gameswf::as_value *)v76);
  if ( v127[0] == -1 )
    gameswf::free_internal(v128);
  v21 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v125, "Boolean");
  v75[1] = 0;
  v75[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v75,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_boolean_ctor);
  gameswf::as_object::builtin_member(v21, (int)v125, v75);
  gameswf::as_value::drop_refs((gameswf::as_value *)v75);
  if ( v125[0] == -1 )
    gameswf::free_internal(v126);
  v22 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v123, "Color");
  v74[1] = 0;
  v74[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v74,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_color_ctor);
  gameswf::as_object::builtin_member(v22, (int)v123, v74);
  gameswf::as_value::drop_refs((gameswf::as_value *)v74);
  if ( v123[0] == -1 )
    gameswf::free_internal(v124);
  v23 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v121, "Date");
  v73[1] = 0;
  v73[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v73,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_date_ctor);
  gameswf::as_object::builtin_member(v23, (int)v121, v73);
  gameswf::as_value::drop_refs((gameswf::as_value *)v73);
  if ( v121[0] == 255 )
    gameswf::free_internal(v122);
  v24 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v119, "Selection");
  v26 = gameswf::selection_init((gameswf *)this, v25);
  v71[0] = 0;
  v71[1] = 5;
  v72 = v26;
  if ( v26 )
    gameswf::ref_counted::add_ref(v26);
  gameswf::as_object::builtin_member(v24, (int)v119, v71);
  gameswf::as_value::drop_refs((gameswf::as_value *)v71);
  if ( v119[0] == 255 )
    gameswf::free_internal(v120);
  v27 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v117, "ASSetPropFlags");
  v70[1] = 0;
  v70[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v70,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_assetpropflags);
  gameswf::as_object::builtin_member(v27, (int)v117, v70);
  gameswf::as_value::drop_refs((gameswf::as_value *)v70);
  if ( v117[0] == 255 )
    gameswf::free_internal(v118);
  v28 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v115, "NetStream");
  v69[1] = 0;
  v69[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v69,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_netstream_ctor);
  gameswf::as_object::builtin_member(v28, (int)v115, v69);
  gameswf::as_value::drop_refs((gameswf::as_value *)v69);
  if ( v115[0] == 255 )
    gameswf::free_internal(v116);
  v29 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v113, "NetConnection");
  v68[1] = 0;
  v68[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v68,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_netconnection_ctor);
  gameswf::as_object::builtin_member(v29, (int)v113, v68);
  gameswf::as_value::drop_refs((gameswf::as_value *)v68);
  if ( v113[0] == 255 )
    gameswf::free_internal(v114);
  v30 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v111, "math");
  v32 = gameswf::math_init((gameswf *)this, v31);
  v66[0] = 0;
  v66[1] = 5;
  v67 = v32;
  if ( v32 )
    gameswf::ref_counted::add_ref(v32);
  gameswf::as_object::builtin_member(v30, (int)v111, v66);
  gameswf::as_value::drop_refs((gameswf::as_value *)v66);
  if ( v111[0] == 255 )
    gameswf::free_internal(v112);
  v33 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v109, "Key");
  v35 = gameswf::key_init((gameswf *)this, v34);
  v64[0] = 0;
  v64[1] = 5;
  v65 = v35;
  if ( v35 )
    gameswf::ref_counted::add_ref(v35);
  gameswf::as_object::builtin_member(v33, (int)v109, v64);
  gameswf::as_value::drop_refs((gameswf::as_value *)v64);
  if ( v109[0] == 255 )
    gameswf::free_internal(v110);
  v36 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v107, "AsBroadcaster");
  v38 = gameswf::broadcaster_init((gameswf *)this, v37);
  v62[0] = 0;
  v62[1] = 5;
  v63 = v38;
  if ( v38 )
    gameswf::ref_counted::add_ref(v38);
  gameswf::as_object::builtin_member(v36, (int)v107, v62);
  gameswf::as_value::drop_refs((gameswf::as_value *)v62);
  if ( v107[0] == 255 )
    gameswf::free_internal(v108);
  v39 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v105, "flash");
  v41 = gameswf::flash_init((gameswf *)this, v40);
  v60[0] = 0;
  v60[1] = 5;
  v61 = v41;
  if ( v41 )
    gameswf::ref_counted::add_ref(v41);
  gameswf::as_object::builtin_member(v39, (int)v105, v60);
  gameswf::as_value::drop_refs((gameswf::as_value *)v60);
  if ( v105[0] == 255 )
    gameswf::free_internal(v106);
  v42 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v103, "setInterval");
  v59[1] = 0;
  v59[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v59,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_setinterval);
  gameswf::as_object::builtin_member(v42, (int)v103, v59);
  gameswf::as_value::drop_refs((gameswf::as_value *)v59);
  if ( v103[0] == 255 )
    gameswf::free_internal(v104);
  v43 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v101, "clearInterval");
  v58[1] = 0;
  v58[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v58,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_clearinterval);
  gameswf::as_object::builtin_member(v43, (int)v101, v58);
  gameswf::as_value::drop_refs((gameswf::as_value *)v58);
  if ( v101[0] == 255 )
    gameswf::free_internal(v102);
  v44 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v99, "getVersion");
  v57[1] = 0;
  v57[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v57,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_get_version);
  gameswf::as_object::builtin_member(v44, (int)v99, v57);
  gameswf::as_value::drop_refs((gameswf::as_value *)v57);
  if ( v99[0] == 255 )
    gameswf::free_internal(v100);
  v45 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v97, "parseFloat");
  v56[1] = 0;
  v56[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v56,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_parse_float);
  gameswf::as_object::builtin_member(v45, (int)v97, v56);
  gameswf::as_value::drop_refs((gameswf::as_value *)v56);
  if ( v97[0] == 255 )
    gameswf::free_internal(v98);
  v46 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v95, "parseInt");
  v55[1] = 0;
  v55[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v55,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_parse_int);
  gameswf::as_object::builtin_member(v46, (int)v95, v55);
  gameswf::as_value::drop_refs((gameswf::as_value *)v55);
  if ( v95[0] == 255 )
    gameswf::free_internal(v96);
  v47 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v93, "isNaN");
  v54[1] = 0;
  v54[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v54,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_isnan);
  gameswf::as_object::builtin_member(v47, (int)v93, v54);
  gameswf::as_value::drop_refs((gameswf::as_value *)v54);
  if ( v93[0] == 255 )
    gameswf::free_internal(v94);
  v48 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v89, "$version");
  gameswf::tu_string::tu_string((gameswf::tu_string *)v91, "gameSWF");
  v49 = gameswf::permanent_string_cache::get(this + 11, (const gameswf::tu_string *)v91);
  v53 = 0;
  v52[0] = 0;
  v52[1] = 0;
  gameswf::as_value::set_tu_string((gameswf::as_value *)v52, v49);
  gameswf::as_object::builtin_member(v48, (int)v89, v52);
  gameswf::as_value::drop_refs((gameswf::as_value *)v52);
  if ( v91[0] == 255 )
  {
    gameswf::free_internal(v92);
    if ( v89[0] != 255 )
      goto LABEL_74;
  }
  else if ( v89[0] != 255 )
  {
    goto LABEL_74;
  }
  gameswf::free_internal(v90);
LABEL_74:
  v50 = (int)*(this + 13);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v87, "getActiveController");
  v51[1] = 0;
  v51[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v51,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_get_active_controller);
  gameswf::as_object::builtin_member(v50, (int)v87, v51);
  gameswf::as_value::drop_refs((gameswf::as_value *)v51);
  if ( v87[0] == 255 )
    gameswf::free_internal(v88);
}


// ===== 76ef5c gameswf::register_as_native_function(char const*,void (*)(gameswf::fn_call const&)) =====
void __fastcall gameswf::register_as_native_function(
        gameswf *this,
        void (*a2)(const gameswf::fn_call *),
        void (*a3)(const gameswf::fn_call *))
{
  int *v5; // r8
  _BYTE v6[12]; // [sp+4h] [bp-Ch] BYREF
  _BYTE v7[8]; // [sp+10h] [bp+0h] BYREF
  void *p; // [sp+1Ch] [bp+Ch]

  v5 = gameswf::new_standard_method_map(0);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v7, (const char *)this);
  v6[1] = 0;
  v6[0] = 0;
  gameswf::as_value::set_as_c_function((gameswf::as_value *)v6, a2);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set(
    v5,
    (const gameswf::tu_string *)v7,
    (int)v6);
  gameswf::as_value::drop_refs((gameswf::as_value *)v6);
  if ( v7[0] == -1 )
    gameswf::free_internal(p);
}


// ===== 76f018 gameswf::as_stage::as_stage(gameswf::player *) =====
gameswf::as_stage *__fastcall gameswf::as_stage::as_stage(gameswf::as_stage *this, gameswf::player *a2)
{
  _BYTE v4[4]; // [sp+0h] [bp-50h] BYREF
  int v5; // [sp+4h] [bp-4Ch]
  int v6; // [sp+8h] [bp-48h]
  _BYTE v7[4]; // [sp+Ch] [bp-44h] BYREF
  int v8; // [sp+10h] [bp-40h]
  int v9; // [sp+14h] [bp-3Ch]
  int v10; // [sp+18h] [bp-38h]
  int v11; // [sp+1Ch] [bp-34h]
  char v12[8]; // [sp+24h] [bp-2Ch] BYREF
  void *v13; // [sp+30h] [bp-20h]
  char v14[8]; // [sp+38h] [bp-18h] BYREF
  void *p; // [sp+44h] [bp-Ch]

  gameswf::as_object::as_object(this, a2);
  *(_DWORD *)this = off_990180;
  gameswf::tu_string::tu_string((gameswf::tu_string *)v14, "width");
  v10 = 0;
  v11 = 1072693248;
  v7[0] = 0;
  v7[1] = 2;
  v8 = 0;
  v9 = 1072693248;
  gameswf::as_object::set_member((int *)this, v14, (const gameswf::as_value *)v7);
  gameswf::as_value::drop_refs((gameswf::as_value *)v7);
  if ( v14[0] == -1 )
    gameswf::free_internal(p);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v12, "height");
  v10 = 0;
  v11 = 1072693248;
  v4[0] = 0;
  v4[1] = 2;
  v5 = 0;
  v6 = 1072693248;
  gameswf::as_object::set_member((int *)this, v12, (const gameswf::as_value *)v4);
  gameswf::as_value::drop_refs((gameswf::as_value *)v4);
  if ( v12[0] == -1 )
    gameswf::free_internal(v13);
  return this;
}


// ===== 76f180 gameswf::player::player(gameswf::player_context *) =====
gameswf::player *__fastcall gameswf::player::player(gameswf::player *this, gameswf::player_context *a2)
{
  unsigned int v4; // r1
  char v5; // r0
  gameswf::as_object *v6; // r7
  gameswf::as_stage *v7; // r7
  gameswf::as_object *v8; // r5
  gameswf::tu_timer *v9; // r0
  _DWORD *v10; // r5
  int v11; // r3
  int v12; // r6
  gameswf::tu_random *systime; // r0
  int v14; // r8
  __int64 v15; // r6

  gameswf::ref_counted::ref_counted(this);
  v4 = *((_DWORD *)this + 24) & 0xFF000000 | 0xFFFFFF;
  v5 = ((*((_DWORD *)this + 30) & 0xFF000000 | 0xFFFFFF) >> 24) & 0xFE;
  *((_DWORD *)this + 30) = *((_DWORD *)this + 30) & 0xFF000000 | 0xFFFFFF;
  *(_DWORD *)this = off_9901F0;
  *((_BYTE *)this + 80) = 1;
  *((_BYTE *)this + 104) = 1;
  *((_DWORD *)this + 24) = v4;
  *((_BYTE *)this + 123) = v5;
  *((_BYTE *)this + 99) = HIBYTE(v4) & 0xFE;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_BYTE *)this + 24) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_BYTE *)this + 40) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_BYTE *)this + 81) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_BYTE *)this + 105) = 0;
  *((_BYTE *)this + 124) = 0;
  *((_BYTE *)this + 125) = 0;
  *((_BYTE *)this + 136) = 0;
  *((_BYTE *)this + 137) = 0;
  *((_DWORD *)this + 39) = 0;
  *((_DWORD *)this + 40) = 0;
  *((_DWORD *)this + 41) = 0;
  *((_BYTE *)this + 168) = 0;
  *((_DWORD *)this + 12) = 1;
  *((_DWORD *)this + 43) = a2;
  *((_DWORD *)this + 44) = 0;
  *((_DWORD *)this + 45) = 0;
  *((_DWORD *)this + 46) = 0;
  *((_BYTE *)this + 188) = 0;
  *((_DWORD *)this + 48) = 0;
  *((_DWORD *)this + 49) = 0;
  *((_DWORD *)this + 50) = 0;
  *((_BYTE *)this + 204) = 0;
  *((_DWORD *)this + 52) = 0;
  *((_DWORD *)this + 53) = 0;
  *((_DWORD *)this + 54) = 0;
  *((_BYTE *)this + 220) = 0;
  v6 = (gameswf::as_object *)operator new(0x38u, 0);
  gameswf::as_object::as_object(v6, this);
  gameswf::smart_ptr<gameswf::as_object>::set_ref((gameswf::ref_counted **)this + 13, v6);
  v7 = (gameswf::as_stage *)operator new(0x38u, 0);
  gameswf::as_stage::as_stage(v7, this);
  gameswf::smart_ptr<gameswf::as_object>::set_ref((gameswf::ref_counted **)this + 14, v7);
  v8 = (gameswf::as_object *)operator new(0x38u, 0);
  gameswf::as_object::as_object(v8, this);
  gameswf::as_value::set_as_object((gameswf::player *)((char *)this + 124), v8);
  gameswf::as_value::set_as_c_function(
    (gameswf::player *)((char *)this + 136),
    (void (*)(const gameswf::fn_call *))gameswf::as_global_movieclip_ctor);
  gameswf::player::action_init((char **)this);
  v10 = *((_DWORD **)this + 43);
  v11 = v10[6];
  v12 = v11 + 1;
  if ( v11 + 1 > v10[7] )
  {
    gameswf::array<gameswf::player *>::reserve((int)(v10 + 5), v12 + (v12 >> 1));
    v11 = v10[6];
  }
  *(_DWORD *)(v10[5] + 4 * v11) = this;
  v10[6] = v12;
  systime = (gameswf::tu_random *)gameswf::tu_timer::get_systime(v9);
  v14 = (unsigned __int8)systime;
  if ( (_BYTE)systime )
  {
    v15 = 0;
    do
    {
      ++v15;
      systime = (gameswf::tu_random *)gameswf::tu_random::next_random(systime);
    }
    while ( v15 != v14 );
  }
  *((_BYTE *)this + 152) = 0;
  *((_DWORD *)this + 37) = 0;
  return this;
}


// ===== 76f3a0 gameswf::player::player(gameswf::player_context *) =====
gameswf::player *__fastcall gameswf::player::player(gameswf::player *this, gameswf::player_context *a2)
{
  unsigned int v4; // r1
  char v5; // r0
  gameswf::as_object *v6; // r7
  gameswf::as_stage *v7; // r7
  gameswf::as_object *v8; // r5
  gameswf::tu_timer *v9; // r0
  _DWORD *v10; // r5
  int v11; // r3
  int v12; // r6
  gameswf::tu_random *systime; // r0
  int v14; // r8
  __int64 v15; // r6

  gameswf::ref_counted::ref_counted(this);
  v4 = *((_DWORD *)this + 24) & 0xFF000000 | 0xFFFFFF;
  v5 = ((*((_DWORD *)this + 30) & 0xFF000000 | 0xFFFFFF) >> 24) & 0xFE;
  *((_DWORD *)this + 30) = *((_DWORD *)this + 30) & 0xFF000000 | 0xFFFFFF;
  *(_DWORD *)this = off_9901F0;
  *((_BYTE *)this + 80) = 1;
  *((_BYTE *)this + 104) = 1;
  *((_DWORD *)this + 24) = v4;
  *((_BYTE *)this + 123) = v5;
  *((_BYTE *)this + 99) = HIBYTE(v4) & 0xFE;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_BYTE *)this + 24) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_BYTE *)this + 40) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_BYTE *)this + 81) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_BYTE *)this + 105) = 0;
  *((_BYTE *)this + 124) = 0;
  *((_BYTE *)this + 125) = 0;
  *((_BYTE *)this + 136) = 0;
  *((_BYTE *)this + 137) = 0;
  *((_DWORD *)this + 39) = 0;
  *((_DWORD *)this + 40) = 0;
  *((_DWORD *)this + 41) = 0;
  *((_BYTE *)this + 168) = 0;
  *((_DWORD *)this + 12) = 1;
  *((_DWORD *)this + 43) = a2;
  *((_DWORD *)this + 44) = 0;
  *((_DWORD *)this + 45) = 0;
  *((_DWORD *)this + 46) = 0;
  *((_BYTE *)this + 188) = 0;
  *((_DWORD *)this + 48) = 0;
  *((_DWORD *)this + 49) = 0;
  *((_DWORD *)this + 50) = 0;
  *((_BYTE *)this + 204) = 0;
  *((_DWORD *)this + 52) = 0;
  *((_DWORD *)this + 53) = 0;
  *((_DWORD *)this + 54) = 0;
  *((_BYTE *)this + 220) = 0;
  v6 = (gameswf::as_object *)operator new(0x38u, 0);
  gameswf::as_object::as_object(v6, this);
  gameswf::smart_ptr<gameswf::as_object>::set_ref((gameswf::ref_counted **)this + 13, v6);
  v7 = (gameswf::as_stage *)operator new(0x38u, 0);
  gameswf::as_stage::as_stage(v7, this);
  gameswf::smart_ptr<gameswf::as_object>::set_ref((gameswf::ref_counted **)this + 14, v7);
  v8 = (gameswf::as_object *)operator new(0x38u, 0);
  gameswf::as_object::as_object(v8, this);
  gameswf::as_value::set_as_object((gameswf::player *)((char *)this + 124), v8);
  gameswf::as_value::set_as_c_function(
    (gameswf::player *)((char *)this + 136),
    (void (*)(const gameswf::fn_call *))gameswf::as_global_movieclip_ctor);
  gameswf::player::action_init((char **)this);
  v10 = *((_DWORD **)this + 43);
  v11 = v10[6];
  v12 = v11 + 1;
  if ( v11 + 1 > v10[7] )
  {
    gameswf::array<gameswf::player *>::reserve((int)(v10 + 5), v12 + (v12 >> 1));
    v11 = v10[6];
  }
  *(_DWORD *)(v10[5] + 4 * v11) = this;
  v10[6] = v12;
  systime = (gameswf::tu_random *)gameswf::tu_timer::get_systime(v9);
  v14 = (unsigned __int8)systime;
  if ( (_BYTE)systime )
  {
    v15 = 0;
    do
    {
      ++v15;
      systime = (gameswf::tu_random *)gameswf::tu_random::next_random(systime);
    }
    while ( v15 != v14 );
  }
  *((_BYTE *)this + 152) = 0;
  *((_DWORD *)this + 37) = 0;
  return this;
}


// ===== 76f5c0 gameswf::standard_method_map_init(void) =====
void __fastcall gameswf::standard_method_map_init(gameswf *this)
{
  _DWORD *v1; // r5
  _DWORD *v2; // r7
  _DWORD *v3; // r7
  _DWORD *v4; // r5
  _DWORD *v5; // r7
  _DWORD *v6; // r5
  _DWORD *v7; // r6
  _DWORD *v8; // r5
  int v9; // [sp+4h] [bp-93Ch] BYREF
  _BYTE v10[8]; // [sp+10h] [bp-930h] BYREF
  _BYTE v11[12]; // [sp+1Ch] [bp-924h] BYREF
  _BYTE v12[12]; // [sp+28h] [bp-918h] BYREF
  _BYTE v13[4]; // [sp+34h] [bp-90Ch] BYREF
  _BYTE v14[8]; // [sp+40h] [bp-900h] BYREF
  _BYTE v15[12]; // [sp+4Ch] [bp-8F4h] BYREF
  _BYTE v16[12]; // [sp+58h] [bp-8E8h] BYREF
  _BYTE v17[4]; // [sp+64h] [bp-8DCh] BYREF
  _BYTE v18[8]; // [sp+70h] [bp-8D0h] BYREF
  _BYTE v19[12]; // [sp+7Ch] [bp-8C4h] BYREF
  _BYTE v20[12]; // [sp+88h] [bp-8B8h] BYREF
  _BYTE v21[4]; // [sp+94h] [bp-8ACh] BYREF
  _BYTE v22[8]; // [sp+A0h] [bp-8A0h] BYREF
  _BYTE v23[12]; // [sp+ACh] [bp-894h] BYREF
  _BYTE v24[12]; // [sp+B8h] [bp-888h] BYREF
  _BYTE v25[4]; // [sp+C4h] [bp-87Ch] BYREF
  _BYTE v26[8]; // [sp+D0h] [bp-870h] BYREF
  _BYTE v27[12]; // [sp+DCh] [bp-864h] BYREF
  _BYTE v28[12]; // [sp+E8h] [bp-858h] BYREF
  _BYTE v29[4]; // [sp+F4h] [bp-84Ch] BYREF
  _BYTE v30[8]; // [sp+100h] [bp-840h] BYREF
  _BYTE v31[12]; // [sp+10Ch] [bp-834h] BYREF
  _BYTE v32[12]; // [sp+118h] [bp-828h] BYREF
  _BYTE v33[4]; // [sp+124h] [bp-81Ch] BYREF
  _BYTE v34[8]; // [sp+130h] [bp-810h] BYREF
  _BYTE v35[12]; // [sp+13Ch] [bp-804h] BYREF
  _BYTE v36[12]; // [sp+148h] [bp-7F8h] BYREF
  _BYTE v37[4]; // [sp+154h] [bp-7ECh] BYREF
  _BYTE v38[8]; // [sp+160h] [bp-7E0h] BYREF
  _BYTE v39[12]; // [sp+16Ch] [bp-7D4h] BYREF
  _BYTE v40[12]; // [sp+178h] [bp-7C8h] BYREF
  _BYTE v41[4]; // [sp+184h] [bp-7BCh] BYREF
  _BYTE v42[8]; // [sp+190h] [bp-7B0h] BYREF
  _BYTE v43[12]; // [sp+19Ch] [bp-7A4h] BYREF
  _BYTE v44[12]; // [sp+1A8h] [bp-798h] BYREF
  _BYTE v45[4]; // [sp+1B4h] [bp-78Ch] BYREF
  _BYTE v46[8]; // [sp+1C0h] [bp-780h] BYREF
  _BYTE v47[12]; // [sp+1CCh] [bp-774h] BYREF
  _BYTE v48[12]; // [sp+1D8h] [bp-768h] BYREF
  _BYTE v49[4]; // [sp+1E4h] [bp-75Ch] BYREF
  _BYTE v50[8]; // [sp+1F0h] [bp-750h] BYREF
  _BYTE v51[12]; // [sp+1FCh] [bp-744h] BYREF
  _BYTE v52[12]; // [sp+208h] [bp-738h] BYREF
  _BYTE v53[4]; // [sp+214h] [bp-72Ch] BYREF
  _BYTE v54[8]; // [sp+220h] [bp-720h] BYREF
  _BYTE v55[12]; // [sp+22Ch] [bp-714h] BYREF
  _BYTE v56[12]; // [sp+238h] [bp-708h] BYREF
  _BYTE v57[4]; // [sp+244h] [bp-6FCh] BYREF
  _BYTE v58[8]; // [sp+250h] [bp-6F0h] BYREF
  _BYTE v59[12]; // [sp+25Ch] [bp-6E4h] BYREF
  _BYTE v60[12]; // [sp+268h] [bp-6D8h] BYREF
  _BYTE v61[4]; // [sp+274h] [bp-6CCh] BYREF
  _BYTE v62[8]; // [sp+280h] [bp-6C0h] BYREF
  _BYTE v63[12]; // [sp+28Ch] [bp-6B4h] BYREF
  _BYTE v64[12]; // [sp+298h] [bp-6A8h] BYREF
  _BYTE v65[4]; // [sp+2A4h] [bp-69Ch] BYREF
  _BYTE v66[8]; // [sp+2B0h] [bp-690h] BYREF
  _BYTE v67[12]; // [sp+2BCh] [bp-684h] BYREF
  _BYTE v68[12]; // [sp+2C8h] [bp-678h] BYREF
  _BYTE v69[4]; // [sp+2D4h] [bp-66Ch] BYREF
  _BYTE v70[8]; // [sp+2E0h] [bp-660h] BYREF
  _BYTE v71[12]; // [sp+2ECh] [bp-654h] BYREF
  _BYTE v72[12]; // [sp+2F8h] [bp-648h] BYREF
  _BYTE v73[4]; // [sp+304h] [bp-63Ch] BYREF
  _BYTE v74[8]; // [sp+310h] [bp-630h] BYREF
  _BYTE v75[12]; // [sp+31Ch] [bp-624h] BYREF
  _BYTE v76[12]; // [sp+328h] [bp-618h] BYREF
  _BYTE v77[4]; // [sp+334h] [bp-60Ch] BYREF
  _BYTE v78[8]; // [sp+340h] [bp-600h] BYREF
  _BYTE v79[12]; // [sp+34Ch] [bp-5F4h] BYREF
  _BYTE v80[12]; // [sp+358h] [bp-5E8h] BYREF
  _BYTE v81[4]; // [sp+364h] [bp-5DCh] BYREF
  _BYTE v82[8]; // [sp+370h] [bp-5D0h] BYREF
  _BYTE v83[12]; // [sp+37Ch] [bp-5C4h] BYREF
  _BYTE v84[12]; // [sp+388h] [bp-5B8h] BYREF
  _BYTE v85[4]; // [sp+394h] [bp-5ACh] BYREF
  _BYTE v86[8]; // [sp+3A0h] [bp-5A0h] BYREF
  void *v87; // [sp+3ACh] [bp-594h]
  _BYTE v88[4]; // [sp+3B4h] [bp-58Ch] BYREF
  void *v89; // [sp+3C0h] [bp-580h]
  _BYTE v90[8]; // [sp+3C8h] [bp-578h] BYREF
  void *v91; // [sp+3D4h] [bp-56Ch]
  _BYTE v92[8]; // [sp+3DCh] [bp-564h] BYREF
  void *v93; // [sp+3E8h] [bp-558h]
  _BYTE v94[8]; // [sp+3F0h] [bp-550h] BYREF
  void *v95; // [sp+3FCh] [bp-544h]
  _BYTE v96[8]; // [sp+404h] [bp-53Ch] BYREF
  void *v97; // [sp+410h] [bp-530h]
  _BYTE v98[8]; // [sp+418h] [bp-528h] BYREF
  void *v99; // [sp+424h] [bp-51Ch]
  _BYTE v100[8]; // [sp+42Ch] [bp-514h] BYREF
  void *v101; // [sp+438h] [bp-508h]
  _BYTE v102[8]; // [sp+440h] [bp-500h] BYREF
  void *v103; // [sp+44Ch] [bp-4F4h]
  _BYTE v104[8]; // [sp+454h] [bp-4ECh] BYREF
  void *v105; // [sp+460h] [bp-4E0h]
  _BYTE v106[8]; // [sp+468h] [bp-4D8h] BYREF
  void *v107; // [sp+474h] [bp-4CCh]
  _BYTE v108[8]; // [sp+47Ch] [bp-4C4h] BYREF
  void *v109; // [sp+488h] [bp-4B8h]
  _BYTE v110[8]; // [sp+490h] [bp-4B0h] BYREF
  void *v111; // [sp+49Ch] [bp-4A4h]
  _BYTE v112[8]; // [sp+4A4h] [bp-49Ch] BYREF
  void *v113; // [sp+4B0h] [bp-490h]
  _BYTE v114[8]; // [sp+4B8h] [bp-488h] BYREF
  void *v115; // [sp+4C4h] [bp-47Ch]
  _BYTE v116[8]; // [sp+4CCh] [bp-474h] BYREF
  void *v117; // [sp+4D8h] [bp-468h]
  _BYTE v118[8]; // [sp+4E0h] [bp-460h] BYREF
  void *v119; // [sp+4ECh] [bp-454h]
  _BYTE v120[8]; // [sp+4F4h] [bp-44Ch] BYREF
  void *v121; // [sp+500h] [bp-440h]
  _BYTE v122[8]; // [sp+508h] [bp-438h] BYREF
  void *v123; // [sp+514h] [bp-42Ch]
  _BYTE v124[8]; // [sp+51Ch] [bp-424h] BYREF
  void *v125; // [sp+528h] [bp-418h]
  _BYTE v126[8]; // [sp+530h] [bp-410h] BYREF
  void *v127; // [sp+53Ch] [bp-404h]
  _BYTE v128[8]; // [sp+544h] [bp-3FCh] BYREF
  void *v129; // [sp+550h] [bp-3F0h]
  _BYTE v130[8]; // [sp+558h] [bp-3E8h] BYREF
  void *v131; // [sp+564h] [bp-3DCh]
  _BYTE v132[8]; // [sp+56Ch] [bp-3D4h] BYREF
  void *v133; // [sp+578h] [bp-3C8h]
  _BYTE v134[8]; // [sp+580h] [bp-3C0h] BYREF
  void *v135; // [sp+58Ch] [bp-3B4h]
  _BYTE v136[8]; // [sp+594h] [bp-3ACh] BYREF
  void *v137; // [sp+5A0h] [bp-3A0h]
  _BYTE v138[8]; // [sp+5A8h] [bp-398h] BYREF
  void *v139; // [sp+5B4h] [bp-38Ch]
  _BYTE v140[8]; // [sp+5BCh] [bp-384h] BYREF
  void *v141; // [sp+5C8h] [bp-378h]
  _BYTE v142[8]; // [sp+5D0h] [bp-370h] BYREF
  void *v143; // [sp+5DCh] [bp-364h]
  _BYTE v144[8]; // [sp+5E4h] [bp-35Ch] BYREF
  void *v145; // [sp+5F0h] [bp-350h]
  _BYTE v146[8]; // [sp+5F8h] [bp-348h] BYREF
  void *v147; // [sp+604h] [bp-33Ch]
  _BYTE v148[8]; // [sp+60Ch] [bp-334h] BYREF
  void *v149; // [sp+618h] [bp-328h]
  _BYTE v150[8]; // [sp+620h] [bp-320h] BYREF
  void *v151; // [sp+62Ch] [bp-314h]
  _BYTE v152[8]; // [sp+634h] [bp-30Ch] BYREF
  void *v153; // [sp+640h] [bp-300h]
  _BYTE v154[8]; // [sp+648h] [bp-2F8h] BYREF
  void *v155; // [sp+654h] [bp-2ECh]
  _BYTE v156[8]; // [sp+65Ch] [bp-2E4h] BYREF
  void *v157; // [sp+668h] [bp-2D8h]
  _BYTE v158[8]; // [sp+670h] [bp-2D0h] BYREF
  void *v159; // [sp+67Ch] [bp-2C4h]
  _BYTE v160[8]; // [sp+684h] [bp-2BCh] BYREF
  void *v161; // [sp+690h] [bp-2B0h]
  _BYTE v162[8]; // [sp+698h] [bp-2A8h] BYREF
  void *v163; // [sp+6A4h] [bp-29Ch]
  _BYTE v164[8]; // [sp+6ACh] [bp-294h] BYREF
  void *v165; // [sp+6B8h] [bp-288h]
  _BYTE v166[8]; // [sp+6C0h] [bp-280h] BYREF
  void *v167; // [sp+6CCh] [bp-274h]
  _BYTE v168[8]; // [sp+6D4h] [bp-26Ch] BYREF
  void *v169; // [sp+6E0h] [bp-260h]
  _BYTE v170[8]; // [sp+6E8h] [bp-258h] BYREF
  void *v171; // [sp+6F4h] [bp-24Ch]
  _BYTE v172[8]; // [sp+6FCh] [bp-244h] BYREF
  void *v173; // [sp+708h] [bp-238h]
  _BYTE v174[8]; // [sp+710h] [bp-230h] BYREF
  void *v175; // [sp+71Ch] [bp-224h]
  _BYTE v176[8]; // [sp+724h] [bp-21Ch] BYREF
  void *v177; // [sp+730h] [bp-210h]
  _BYTE v178[8]; // [sp+738h] [bp-208h] BYREF
  void *v179; // [sp+744h] [bp-1FCh]
  _BYTE v180[8]; // [sp+74Ch] [bp-1F4h] BYREF
  void *v181; // [sp+758h] [bp-1E8h]
  _BYTE v182[8]; // [sp+760h] [bp-1E0h] BYREF
  void *v183; // [sp+76Ch] [bp-1D4h]
  _BYTE v184[8]; // [sp+774h] [bp-1CCh] BYREF
  void *v185; // [sp+780h] [bp-1C0h]
  _BYTE v186[8]; // [sp+788h] [bp-1B8h] BYREF
  void *v187; // [sp+794h] [bp-1ACh]
  _BYTE v188[8]; // [sp+79Ch] [bp-1A4h] BYREF
  void *v189; // [sp+7A8h] [bp-198h]
  _BYTE v190[8]; // [sp+7B0h] [bp-190h] BYREF
  void *v191; // [sp+7BCh] [bp-184h]
  _BYTE v192[8]; // [sp+7C4h] [bp-17Ch] BYREF
  void *v193; // [sp+7D0h] [bp-170h]
  _BYTE v194[8]; // [sp+7D8h] [bp-168h] BYREF
  void *v195; // [sp+7E4h] [bp-15Ch]
  _BYTE v196[8]; // [sp+7ECh] [bp-154h] BYREF
  void *v197; // [sp+7F8h] [bp-148h]
  _BYTE v198[8]; // [sp+800h] [bp-140h] BYREF
  void *v199; // [sp+80Ch] [bp-134h]
  _BYTE v200[8]; // [sp+814h] [bp-12Ch] BYREF
  void *v201; // [sp+820h] [bp-120h]
  _BYTE v202[8]; // [sp+828h] [bp-118h] BYREF
  void *v203; // [sp+834h] [bp-10Ch]
  _BYTE v204[8]; // [sp+83Ch] [bp-104h] BYREF
  void *v205; // [sp+848h] [bp-F8h]
  _BYTE v206[8]; // [sp+850h] [bp-F0h] BYREF
  void *v207; // [sp+85Ch] [bp-E4h]
  _BYTE v208[8]; // [sp+864h] [bp-DCh] BYREF
  void *v209; // [sp+870h] [bp-D0h]
  _BYTE v210[8]; // [sp+878h] [bp-C8h] BYREF
  void *v211; // [sp+884h] [bp-BCh]
  _BYTE v212[8]; // [sp+88Ch] [bp-B4h] BYREF
  void *v213; // [sp+898h] [bp-A8h]
  _BYTE v214[8]; // [sp+8A0h] [bp-A0h] BYREF
  void *v215; // [sp+8ACh] [bp-94h]
  _BYTE v216[8]; // [sp+8B4h] [bp-8Ch] BYREF
  void *v217; // [sp+8C0h] [bp-80h]
  _BYTE v218[8]; // [sp+8C8h] [bp-78h] BYREF
  void *v219; // [sp+8D4h] [bp-6Ch]
  _BYTE v220[8]; // [sp+8DCh] [bp-64h] BYREF
  void *v221; // [sp+8E8h] [bp-58h]
  _BYTE v222[8]; // [sp+8F0h] [bp-50h] BYREF
  void *v223; // [sp+8FCh] [bp-44h]
  _BYTE v224[8]; // [sp+904h] [bp-3Ch] BYREF
  void *v225; // [sp+910h] [bp-30h]
  _BYTE v226[8]; // [sp+918h] [bp-28h] BYREF
  void *v227; // [sp+924h] [bp-1Ch]
  _BYTE v228[8]; // [sp+92Ch] [bp-14h] BYREF
  void *v229; // [sp+938h] [bp-8h]
  _BYTE v230[8]; // [sp+940h] [bp+0h] BYREF
  void *p; // [sp+94Ch] [bp+Ch]

  v1 = gameswf::new_standard_method_map(0);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v230, "addProperty");
  v85[1] = 0;
  v85[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v85,
    (void (*)(const gameswf::fn_call *))gameswf::as_object_addproperty);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v1,
    (const gameswf::tu_string *)v230,
    (int)v85);
  gameswf::as_value::drop_refs((gameswf::as_value *)v85);
  if ( v230[0] == -1 )
    gameswf::free_internal(p);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v228, "registerClass");
  v84[1] = 0;
  v84[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v84,
    (void (*)(const gameswf::fn_call *))gameswf::as_object_registerclass);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v1,
    (const gameswf::tu_string *)v228,
    (int)v84);
  gameswf::as_value::drop_refs((gameswf::as_value *)v84);
  if ( v228[0] == -1 )
    gameswf::free_internal(v229);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v226, "hasOwnProperty");
  v83[1] = 0;
  v83[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v83,
    (void (*)(const gameswf::fn_call *))gameswf::as_object_hasownproperty);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v1,
    (const gameswf::tu_string *)v226,
    (int)v83);
  gameswf::as_value::drop_refs((gameswf::as_value *)v83);
  if ( v226[0] == -1 )
    gameswf::free_internal(v227);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v224, "watch");
  v82[1] = 0;
  v82[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v82,
    (void (*)(const gameswf::fn_call *))gameswf::as_object_watch);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v1,
    (const gameswf::tu_string *)v224,
    (int)v82);
  gameswf::as_value::drop_refs((gameswf::as_value *)v82);
  if ( v224[0] == -1 )
    gameswf::free_internal(v225);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v222, "unwatch");
  v81[1] = 0;
  v81[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v81,
    (void (*)(const gameswf::fn_call *))gameswf::as_object_unwatch);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v1,
    (const gameswf::tu_string *)v222,
    (int)v81);
  gameswf::as_value::drop_refs((gameswf::as_value *)v81);
  if ( v222[0] == -1 )
    gameswf::free_internal(v223);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v220, "addEventListener");
  v80[1] = 0;
  v80[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v80,
    (void (*)(const gameswf::fn_call *))gameswf::as_object_add_event_listener);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v1,
    (const gameswf::tu_string *)v220,
    (int)v80);
  gameswf::as_value::drop_refs((gameswf::as_value *)v80);
  if ( v220[0] == -1 )
    gameswf::free_internal(v221);
  v2 = gameswf::new_standard_method_map(2);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v218, "toString");
  v79[1] = 0;
  v79[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v79,
    (void (*)(const gameswf::fn_call *))gameswf::as_number_to_string);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v2,
    (const gameswf::tu_string *)v218,
    (int)v79);
  gameswf::as_value::drop_refs((gameswf::as_value *)v79);
  if ( v218[0] == -1 )
    gameswf::free_internal(v219);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v216, "valueOf");
  v78[1] = 0;
  v78[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v78,
    (void (*)(const gameswf::fn_call *))gameswf::as_number_valueof);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v2,
    (const gameswf::tu_string *)v216,
    (int)v78);
  gameswf::as_value::drop_refs((gameswf::as_value *)v78);
  if ( v216[0] == -1 )
    gameswf::free_internal(v217);
  v3 = gameswf::new_standard_method_map(3);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v214, "toString");
  v77[1] = 0;
  v77[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v77,
    (void (*)(const gameswf::fn_call *))gameswf::as_boolean_to_string);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v3,
    (const gameswf::tu_string *)v214,
    (int)v77);
  gameswf::as_value::drop_refs((gameswf::as_value *)v77);
  if ( v214[0] == -1 )
    gameswf::free_internal(v215);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v212, "valueOf");
  v76[1] = 0;
  v76[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v76,
    (void (*)(const gameswf::fn_call *))gameswf::as_boolean_valueof);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v3,
    (const gameswf::tu_string *)v212,
    (int)v76);
  gameswf::as_value::drop_refs((gameswf::as_value *)v76);
  if ( v212[0] == -1 )
    gameswf::free_internal(v213);
  v4 = gameswf::new_standard_method_map(4);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v210, "toString");
  v75[1] = 0;
  v75[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v75,
    (void (*)(const gameswf::fn_call *))gameswf::string_to_string);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v4,
    (const gameswf::tu_string *)v210,
    (int)v75);
  gameswf::as_value::drop_refs((gameswf::as_value *)v75);
  if ( v210[0] == -1 )
    gameswf::free_internal(v211);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v208, "fromCharCode");
  v74[1] = 0;
  v74[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v74,
    (void (*)(const gameswf::fn_call *))gameswf::string_from_char_code);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v4,
    (const gameswf::tu_string *)v208,
    (int)v74);
  gameswf::as_value::drop_refs((gameswf::as_value *)v74);
  if ( v208[0] == -1 )
    gameswf::free_internal(v209);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v206, "charCodeAt");
  v73[1] = 0;
  v73[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v73,
    (void (*)(const gameswf::fn_call *))gameswf::string_char_code_at);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v4,
    (const gameswf::tu_string *)v206,
    (int)v73);
  gameswf::as_value::drop_refs((gameswf::as_value *)v73);
  if ( v206[0] == 255 )
    gameswf::free_internal(v207);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v204, "concat");
  v72[1] = 0;
  v72[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v72,
    (void (*)(const gameswf::fn_call *))gameswf::string_concat);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v4,
    (const gameswf::tu_string *)v204,
    (int)v72);
  gameswf::as_value::drop_refs((gameswf::as_value *)v72);
  if ( v204[0] == 255 )
    gameswf::free_internal(v205);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v202, "indexOf");
  v71[1] = 0;
  v71[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v71,
    (void (*)(const gameswf::fn_call *))gameswf::string_index_of);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v4,
    (const gameswf::tu_string *)v202,
    (int)v71);
  gameswf::as_value::drop_refs((gameswf::as_value *)v71);
  if ( v202[0] == 255 )
    gameswf::free_internal(v203);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v200, "lastIndexOf");
  v70[1] = 0;
  v70[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v70,
    (void (*)(const gameswf::fn_call *))gameswf::string_last_index_of);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v4,
    (const gameswf::tu_string *)v200,
    (int)v70);
  gameswf::as_value::drop_refs((gameswf::as_value *)v70);
  if ( v200[0] == 255 )
    gameswf::free_internal(v201);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v198, "slice");
  v69[1] = 0;
  v69[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v69,
    (void (*)(const gameswf::fn_call *))gameswf::string_slice);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v4,
    (const gameswf::tu_string *)v198,
    (int)v69);
  gameswf::as_value::drop_refs((gameswf::as_value *)v69);
  if ( v198[0] == 255 )
    gameswf::free_internal(v199);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v196, "split");
  v68[1] = 0;
  v68[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v68,
    (void (*)(const gameswf::fn_call *))gameswf::string_split);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v4,
    (const gameswf::tu_string *)v196,
    (int)v68);
  gameswf::as_value::drop_refs((gameswf::as_value *)v68);
  if ( v196[0] == 255 )
    gameswf::free_internal(v197);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v194, "substring");
  v67[1] = 0;
  v67[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v67,
    (void (*)(const gameswf::fn_call *))gameswf::string_substring);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v4,
    (const gameswf::tu_string *)v194,
    (int)v67);
  gameswf::as_value::drop_refs((gameswf::as_value *)v67);
  if ( v194[0] == 255 )
    gameswf::free_internal(v195);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v192, "substr");
  v66[1] = 0;
  v66[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v66,
    (void (*)(const gameswf::fn_call *))gameswf::string_substr);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v4,
    (const gameswf::tu_string *)v192,
    (int)v66);
  gameswf::as_value::drop_refs((gameswf::as_value *)v66);
  if ( v192[0] == 255 )
    gameswf::free_internal(v193);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v190, "toLowerCase");
  v65[1] = 0;
  v65[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v65,
    (void (*)(const gameswf::fn_call *))gameswf::string_to_lowercase);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v4,
    (const gameswf::tu_string *)v190,
    (int)v65);
  gameswf::as_value::drop_refs((gameswf::as_value *)v65);
  if ( v190[0] == 255 )
    gameswf::free_internal(v191);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v188, "toUpperCase");
  v64[1] = 0;
  v64[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v64,
    (void (*)(const gameswf::fn_call *))gameswf::string_to_uppercase);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v4,
    (const gameswf::tu_string *)v188,
    (int)v64);
  gameswf::as_value::drop_refs((gameswf::as_value *)v64);
  if ( v188[0] == 255 )
    gameswf::free_internal(v189);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v186, "charAt");
  v63[1] = 0;
  v63[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v63,
    (void (*)(const gameswf::fn_call *))gameswf::string_char_at);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v4,
    (const gameswf::tu_string *)v186,
    (int)v63);
  gameswf::as_value::drop_refs((gameswf::as_value *)v63);
  if ( v186[0] == 255 )
    gameswf::free_internal(v187);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v184, "length");
  v61[0] = 0;
  v61[1] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v61,
    (void (*)(const gameswf::fn_call *))gameswf::string_length);
  v62[1] = 0;
  v62[0] = 0;
  gameswf::as_value::as_value((gameswf::as_value *)v60, (const gameswf::as_value *)v61, (const gameswf::as_value *)v62);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v4,
    (const gameswf::tu_string *)v184,
    (int)v60);
  gameswf::as_value::drop_refs((gameswf::as_value *)v60);
  gameswf::as_value::drop_refs((gameswf::as_value *)v62);
  gameswf::as_value::drop_refs((gameswf::as_value *)v61);
  if ( v184[0] == 255 )
    gameswf::free_internal(v185);
  v5 = gameswf::new_standard_method_map(5);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v182, "call");
  v59[1] = 0;
  v59[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v59,
    (void (*)(const gameswf::fn_call *))gameswf::as_s_function_call);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v5,
    (const gameswf::tu_string *)v182,
    (int)v59);
  gameswf::as_value::drop_refs((gameswf::as_value *)v59);
  if ( v182[0] == 255 )
    gameswf::free_internal(v183);
  v6 = gameswf::new_standard_method_map(1);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v180, "play");
  v58[1] = 0;
  v58[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v58,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_play);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v180,
    (int)v58);
  gameswf::as_value::drop_refs((gameswf::as_value *)v58);
  if ( v180[0] == 255 )
    gameswf::free_internal(v181);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v178, "stop");
  v57[1] = 0;
  v57[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v57,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_stop);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v178,
    (int)v57);
  gameswf::as_value::drop_refs((gameswf::as_value *)v57);
  if ( v178[0] == 255 )
    gameswf::free_internal(v179);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v176, "gotoAndStop");
  v56[1] = 0;
  v56[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v56,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_goto_and_stop);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v176,
    (int)v56);
  gameswf::as_value::drop_refs((gameswf::as_value *)v56);
  if ( v176[0] == 255 )
    gameswf::free_internal(v177);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v174, "gotoAndPlay");
  v55[1] = 0;
  v55[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v55,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_goto_and_play);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v174,
    (int)v55);
  gameswf::as_value::drop_refs((gameswf::as_value *)v55);
  if ( v174[0] == 255 )
    gameswf::free_internal(v175);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v172, "nextFrame");
  v54[1] = 0;
  v54[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v54,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_next_frame);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v172,
    (int)v54);
  gameswf::as_value::drop_refs((gameswf::as_value *)v54);
  if ( v172[0] == 255 )
    gameswf::free_internal(v173);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v170, "prevFrame");
  v53[1] = 0;
  v53[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v53,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_prev_frame);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v170,
    (int)v53);
  gameswf::as_value::drop_refs((gameswf::as_value *)v53);
  if ( v170[0] == 255 )
    gameswf::free_internal(v171);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v168, "getBytesLoaded");
  v52[1] = 0;
  v52[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v52,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_get_bytes_loaded);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v168,
    (int)v52);
  gameswf::as_value::drop_refs((gameswf::as_value *)v52);
  if ( v168[0] == 255 )
    gameswf::free_internal(v169);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v166, "getBytesTotal");
  v51[1] = 0;
  v51[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v51,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_get_bytes_total);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v166,
    (int)v51);
  gameswf::as_value::drop_refs((gameswf::as_value *)v51);
  if ( v166[0] == 255 )
    gameswf::free_internal(v167);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v164, "swapDepths");
  v50[1] = 0;
  v50[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v50,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_swap_depths);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v164,
    (int)v50);
  gameswf::as_value::drop_refs((gameswf::as_value *)v50);
  if ( v164[0] == 255 )
    gameswf::free_internal(v165);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v162, "duplicateMovieClip");
  v49[1] = 0;
  v49[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v49,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_duplicate_movieclip);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v162,
    (int)v49);
  gameswf::as_value::drop_refs((gameswf::as_value *)v49);
  if ( v162[0] == 255 )
    gameswf::free_internal(v163);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v160, "getDepth");
  v48[1] = 0;
  v48[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v48,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_get_depth);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v160,
    (int)v48);
  gameswf::as_value::drop_refs((gameswf::as_value *)v48);
  if ( v160[0] == 255 )
    gameswf::free_internal(v161);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v158, "createEmptyMovieClip");
  v47[1] = 0;
  v47[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v47,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_create_empty_movieclip);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v158,
    (int)v47);
  gameswf::as_value::drop_refs((gameswf::as_value *)v47);
  if ( v158[0] == 255 )
    gameswf::free_internal(v159);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v156, "removeMovieClip");
  v46[1] = 0;
  v46[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v46,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_remove_movieclip);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v156,
    (int)v46);
  gameswf::as_value::drop_refs((gameswf::as_value *)v46);
  if ( v156[0] == 255 )
    gameswf::free_internal(v157);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v154, "hitTest");
  v45[1] = 0;
  v45[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v45,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_hit_test);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v154,
    (int)v45);
  gameswf::as_value::drop_refs((gameswf::as_value *)v45);
  if ( v154[0] == 255 )
    gameswf::free_internal(v155);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v152, "getBounds");
  v44[1] = 0;
  v44[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v44,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_get_bounds);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v152,
    (int)v44);
  gameswf::as_value::drop_refs((gameswf::as_value *)v44);
  if ( v152[0] == 255 )
    gameswf::free_internal(v153);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v150, "localToGlobal");
  v43[1] = 0;
  v43[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v43,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_local_global);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v150,
    (int)v43);
  gameswf::as_value::drop_refs((gameswf::as_value *)v43);
  if ( v150[0] == 255 )
    gameswf::free_internal(v151);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v148, "globalToLocal");
  v42[1] = 0;
  v42[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v42,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_global_local);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v148,
    (int)v42);
  gameswf::as_value::drop_refs((gameswf::as_value *)v42);
  if ( v148[0] == 255 )
    gameswf::free_internal(v149);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v146, "startDrag");
  v41[1] = 0;
  v41[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v41,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_start_drag);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v146,
    (int)v41);
  gameswf::as_value::drop_refs((gameswf::as_value *)v41);
  if ( v146[0] == 255 )
    gameswf::free_internal(v147);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v144, "stopDrag");
  v40[1] = 0;
  v40[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v40,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_stop_drag);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v144,
    (int)v40);
  gameswf::as_value::drop_refs((gameswf::as_value *)v40);
  if ( v144[0] == 255 )
    gameswf::free_internal(v145);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v142, "loadMovie");
  v39[1] = 0;
  v39[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v39,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_loadmovie);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v142,
    (int)v39);
  gameswf::as_value::drop_refs((gameswf::as_value *)v39);
  if ( v142[0] == 255 )
    gameswf::free_internal(v143);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v140, "unloadMovie");
  v38[1] = 0;
  v38[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v38,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_unloadmovie);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v140,
    (int)v38);
  gameswf::as_value::drop_refs((gameswf::as_value *)v38);
  if ( v140[0] == 255 )
    gameswf::free_internal(v141);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v138, "getNextHighestDepth");
  v37[1] = 0;
  v37[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v37,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_getnexthighestdepth);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v138,
    (int)v37);
  gameswf::as_value::drop_refs((gameswf::as_value *)v37);
  if ( v138[0] == 255 )
    gameswf::free_internal(v139);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v136, "getInstanceAtDepth");
  v36[1] = 0;
  v36[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v36,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_instance_at_depth);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v136,
    (int)v36);
  gameswf::as_value::drop_refs((gameswf::as_value *)v36);
  if ( v136[0] == 255 )
    gameswf::free_internal(v137);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v134, "createTextField");
  v35[1] = 0;
  v35[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v35,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_create_text_field);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v134,
    (int)v35);
  gameswf::as_value::drop_refs((gameswf::as_value *)v35);
  if ( v134[0] == 255 )
    gameswf::free_internal(v135);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v132, "attachMovie");
  v34[1] = 0;
  v34[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v34,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_attach_movie);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v132,
    (int)v34);
  gameswf::as_value::drop_refs((gameswf::as_value *)v34);
  if ( v132[0] == 255 )
    gameswf::free_internal(v133);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v130, "beginFill");
  v33[1] = 0;
  v33[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v33,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_begin_fill);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v130,
    (int)v33);
  gameswf::as_value::drop_refs((gameswf::as_value *)v33);
  if ( v130[0] == 255 )
    gameswf::free_internal(v131);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v128, "endFill");
  v32[1] = 0;
  v32[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v32,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_end_fill);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v128,
    (int)v32);
  gameswf::as_value::drop_refs((gameswf::as_value *)v32);
  if ( v128[0] == 255 )
    gameswf::free_internal(v129);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v126, "lineTo");
  v31[1] = 0;
  v31[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v31,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_line_to);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v126,
    (int)v31);
  gameswf::as_value::drop_refs((gameswf::as_value *)v31);
  if ( v126[0] == 255 )
    gameswf::free_internal(v127);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v124, "moveTo");
  v30[1] = 0;
  v30[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v30,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_move_to);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v124,
    (int)v30);
  gameswf::as_value::drop_refs((gameswf::as_value *)v30);
  if ( v124[0] == 255 )
    gameswf::free_internal(v125);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v122, "curveTo");
  v29[1] = 0;
  v29[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v29,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_curve_to);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v122,
    (int)v29);
  gameswf::as_value::drop_refs((gameswf::as_value *)v29);
  if ( v122[0] == 255 )
    gameswf::free_internal(v123);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v120, "clear");
  v28[1] = 0;
  v28[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v28,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_clear);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v120,
    (int)v28);
  gameswf::as_value::drop_refs((gameswf::as_value *)v28);
  if ( v120[0] == 255 )
    gameswf::free_internal(v121);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v118, "lineStyle");
  v27[1] = 0;
  v27[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v27,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_line_style);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v118,
    (int)v27);
  gameswf::as_value::drop_refs((gameswf::as_value *)v27);
  if ( v118[0] == 255 )
    gameswf::free_internal(v119);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v116, "setFPS");
  v26[1] = 0;
  v26[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v26,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_set_fps);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v116,
    (int)v26);
  gameswf::as_value::drop_refs((gameswf::as_value *)v26);
  if ( v116[0] == 255 )
    gameswf::free_internal(v117);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v114, "addFrameScript");
  v25[1] = 0;
  v25[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v25,
    (void (*)(const gameswf::fn_call *))gameswf::sprite_add_script);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v6,
    (const gameswf::tu_string *)v114,
    (int)v25);
  gameswf::as_value::drop_refs((gameswf::as_value *)v25);
  if ( v114[0] == 255 )
    gameswf::free_internal(v115);
  v7 = gameswf::new_standard_method_map(6);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v112, "setTextFormat");
  v24[1] = 0;
  v24[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v24,
    (void (*)(const gameswf::fn_call *))gameswf::set_textformat);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v7,
    (const gameswf::tu_string *)v112,
    (int)v24);
  gameswf::as_value::drop_refs((gameswf::as_value *)v24);
  if ( v112[0] == 255 )
    gameswf::free_internal(v113);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v110, "getTextFormat");
  v23[1] = 0;
  v23[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v23,
    (void (*)(const gameswf::fn_call *))gameswf::get_textformat);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v7,
    (const gameswf::tu_string *)v110,
    (int)v23);
  gameswf::as_value::drop_refs((gameswf::as_value *)v23);
  if ( v110[0] == 255 )
    gameswf::free_internal(v111);
  v8 = gameswf::new_standard_method_map(7);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v108, "toString");
  v22[1] = 0;
  v22[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v22,
    (void (*)(const gameswf::fn_call *))gameswf::as_array_tostring);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v8,
    (const gameswf::tu_string *)v108,
    (int)v22);
  gameswf::as_value::drop_refs((gameswf::as_value *)v22);
  if ( v108[0] == 255 )
    gameswf::free_internal(v109);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v106, "push");
  v21[1] = 0;
  v21[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v21,
    (void (*)(const gameswf::fn_call *))gameswf::as_array_push);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v8,
    (const gameswf::tu_string *)v106,
    (int)v21);
  gameswf::as_value::drop_refs((gameswf::as_value *)v21);
  if ( v106[0] == 255 )
    gameswf::free_internal(v107);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v104, "pop");
  v20[1] = 0;
  v20[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v20,
    (void (*)(const gameswf::fn_call *))gameswf::as_array_pop);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v8,
    (const gameswf::tu_string *)v104,
    (int)v20);
  gameswf::as_value::drop_refs((gameswf::as_value *)v20);
  if ( v104[0] == 255 )
    gameswf::free_internal(v105);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v102, "concat");
  v19[1] = 0;
  v19[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v19,
    (void (*)(const gameswf::fn_call *))gameswf::as_array_concat);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v8,
    (const gameswf::tu_string *)v102,
    (int)v19);
  gameswf::as_value::drop_refs((gameswf::as_value *)v19);
  if ( v102[0] == 255 )
    gameswf::free_internal(v103);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v100, "join");
  v18[1] = 0;
  v18[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v18,
    (void (*)(const gameswf::fn_call *))gameswf::as_array_join);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v8,
    (const gameswf::tu_string *)v100,
    (int)v18);
  gameswf::as_value::drop_refs((gameswf::as_value *)v18);
  if ( v100[0] == 255 )
    gameswf::free_internal(v101);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v98, "reverse");
  v17[1] = 0;
  v17[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v17,
    (void (*)(const gameswf::fn_call *))gameswf::as_array_reverse);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v8,
    (const gameswf::tu_string *)v98,
    (int)v17);
  gameswf::as_value::drop_refs((gameswf::as_value *)v17);
  if ( v98[0] == 255 )
    gameswf::free_internal(v99);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v96, "sort");
  v16[1] = 0;
  v16[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v16,
    (void (*)(const gameswf::fn_call *))gameswf::as_array_sort);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v8,
    (const gameswf::tu_string *)v96,
    (int)v16);
  gameswf::as_value::drop_refs((gameswf::as_value *)v16);
  if ( v96[0] == 255 )
    gameswf::free_internal(v97);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v94, "shift");
  v15[1] = 0;
  v15[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v15,
    (void (*)(const gameswf::fn_call *))gameswf::as_array_shift);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v8,
    (const gameswf::tu_string *)v94,
    (int)v15);
  gameswf::as_value::drop_refs((gameswf::as_value *)v15);
  if ( v94[0] == 255 )
    gameswf::free_internal(v95);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v92, "unshift");
  v14[1] = 0;
  v14[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v14,
    (void (*)(const gameswf::fn_call *))gameswf::as_array_unshift);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v8,
    (const gameswf::tu_string *)v92,
    (int)v14);
  gameswf::as_value::drop_refs((gameswf::as_value *)v14);
  if ( v92[0] == 255 )
    gameswf::free_internal(v93);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v90, "slice");
  v13[1] = 0;
  v13[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v13,
    (void (*)(const gameswf::fn_call *))gameswf::as_array_slice);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v8,
    (const gameswf::tu_string *)v90,
    (int)v13);
  gameswf::as_value::drop_refs((gameswf::as_value *)v13);
  if ( v90[0] == 255 )
    gameswf::free_internal(v91);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v88, "splice");
  v12[1] = 0;
  v12[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v12,
    (void (*)(const gameswf::fn_call *))gameswf::as_array_splice);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v8,
    (const gameswf::tu_string *)v88,
    (int)v12);
  gameswf::as_value::drop_refs((gameswf::as_value *)v12);
  if ( v88[0] == 255 )
    gameswf::free_internal(v89);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v86, "length");
  v10[0] = 0;
  v10[1] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v10,
    (void (*)(const gameswf::fn_call *))gameswf::as_array_length);
  v11[1] = 0;
  v11[0] = 0;
  gameswf::as_value::as_value((gameswf::as_value *)&v9, (const gameswf::as_value *)v10, (const gameswf::as_value *)v11);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
    (_DWORD **)v8,
    (const gameswf::tu_string *)v86,
    (int)&v9);
  gameswf::as_value::drop_refs((gameswf::as_value *)&v9);
  gameswf::as_value::drop_refs((gameswf::as_value *)v11);
  gameswf::as_value::drop_refs((gameswf::as_value *)v10);
  if ( v86[0] == 255 )
    gameswf::free_internal(v87);
}


// ===== 7718b0 gameswf::player::clear_library(void) =====
void __fastcall gameswf::player::clear_library(gameswf::player *this)
{
  char *v1; // r3
  char **v2; // r5
  int v3; // r1
  int i; // r6
  int v5; // r2
  int v6; // r2
  int v7; // r0
  char *v8; // r12
  int v9; // r4
  int v10; // r1
  int v11; // r0
  char *v12; // r12
  int v13; // r0

  v1 = *((char **)this + 25);
  v2 = (char **)((char *)this + 100);
  if ( v1 )
  {
    v3 = *((_DWORD *)v1 + 1);
    if ( v3 >= 0 )
    {
      v6 = 8;
      for ( i = 0; i <= v3; ++i )
      {
        v7 = *(_DWORD *)&v1[v6];
        v8 = &v1[v6];
        v6 += 32;
        if ( v7 != -2 && *((_DWORD *)v8 + 1) != -1 )
          break;
      }
    }
    else
    {
      i = 0;
    }
    if ( v2 )
    {
      while ( v1 )
      {
        v5 = *((_DWORD *)v1 + 1);
        if ( i > v5 )
          break;
        v9 = 32 * i + 8;
        if ( *(int *)(*(_DWORD *)&v1[v9 + 28] + 4) > 1 )
        {
          puts("memory leaks is found out: on exit movie_definition_sub ref_count > 1");
          printf(
            "this = 0x%p, ref_count = %d\n",
            *(const void **)&(*v2)[v9 + 28],
            *(_DWORD *)(*(_DWORD *)&(*v2)[v9 + 28] + 4));
          while ( 1 )
          {
            v1 = *v2;
            v13 = *(_DWORD *)&(*v2)[v9 + 28];
            if ( *(int *)(v13 + 4) <= 1 )
              break;
            gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v13);
          }
          v5 = *((_DWORD *)v1 + 1);
          if ( i > v5 )
            break;
        }
        if ( v5 >= ++i )
        {
          v10 = 32 * i + 8;
          do
          {
            v11 = *(_DWORD *)&v1[v10];
            v12 = &v1[v10];
            v10 += 32;
            if ( v11 != -2 && *((_DWORD *)v12 + 1) != -1 )
              break;
            ++i;
          }
          while ( v5 >= i );
        }
      }
    }
  }
  gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear((_DWORD **)v2);
}


// ===== 7719fc gameswf::player::~player() =====
void __fastcall gameswf::player::~player(gameswf::player *this)
{
  char *v2; // r5
  int v3; // r0
  int v4; // r2
  gameswf::player **v5; // r12
  int v6; // r1
  gameswf *v7; // r0
  gameswf *v8; // r0
  int v9; // r3
  _DWORD *v10; // r0
  void (__fastcall ***v12)(_DWORD); // r0
  void (__fastcall ***v13)(_DWORD); // r0
  int v14; // r2

  *(_DWORD *)this = off_9901F0;
  v2 = (char *)this + 72;
  gameswf::player::clear_unused_instances(this);
  gameswf::weak_ptr<gameswf::root>::operator=((int)v2, nullptr);
  gameswf::smart_ptr<gameswf::as_object>::set_ref((gameswf::ref_counted **)this + 13, nullptr);
  v3 = *((_DWORD *)this + 43);
  v4 = *(_DWORD *)(v3 + 24);
  if ( v4 > 0 )
  {
    v5 = *(gameswf::player ***)(v3 + 20);
    if ( this == *v5 )
    {
      v6 = 0;
LABEL_20:
      gameswf::array<gameswf::player *>::remove((_DWORD *)(v3 + 20), v6);
    }
    else
    {
      v6 = 0;
      while ( ++v6 != v4 )
      {
        if ( this == v5[v6] )
          goto LABEL_20;
      }
    }
  }
  gameswf::player::clear_heap(this);
  gameswf::gameswf_engine_mutex(v7);
  gameswf::player::clear_library(this);
  gameswf::gameswf_engine_mutex(v8);
  gameswf::player::action_clear(this);
  gameswf::array<gameswf::smart_ptr<gameswf::character>>::resize((_DWORD *)this + 52, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::character>>::reserve((int)this + 208, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::character>>::resize((_DWORD *)this + 48, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::character>>::reserve((int)this + 192, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::character>>::resize((_DWORD *)this + 44, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::character>>::reserve((int)this + 176, 0);
  v9 = *((_DWORD *)this + 40);
  if ( v9 < 0 )
  {
    v14 = 4 * v9;
    do
    {
      ++v9;
      *(_DWORD *)(*((_DWORD *)this + 39) + v14) = 0;
      v14 += 4;
    }
    while ( v9 );
  }
  *((_DWORD *)this + 40) = 0;
  gameswf::array<gameswf::blend_mode::id>::reserve((int)this + 156);
  gameswf::as_value::drop_refs((gameswf::player *)((char *)this + 136));
  gameswf::as_value::drop_refs((gameswf::player *)((char *)this + 124));
  if ( *((char *)this + 104) == -1 )
    gameswf::free_internal(*((void **)this + 29));
  gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear((_DWORD **)this + 25);
  if ( *((char *)this + 80) == -1 )
    gameswf::free_internal(*((void **)this + 23));
  v10 = *((_DWORD **)this + 18);
  if ( v10 )
  {
    if ( (*v10)-- == 1 )
      gameswf::free_internal(v10);
  }
  v12 = *((void (__fastcall ****)(_DWORD))this + 14);
  if ( v12 )
    gameswf::ref_counted::drop_ref(v12);
  v13 = *((void (__fastcall ****)(_DWORD))this + 13);
  if ( v13 )
    gameswf::ref_counted::drop_ref(v13);
  gameswf::permanent_string_cache::clear((gameswf::player *)((char *)this + 44));
  gameswf::hash<gameswf::string_pointer,gameswf::permanent_string *,gameswf::string_pointer_hash_functor<gameswf::string_pointer>>::clear((_DWORD **)this + 11);
  gameswf::array<gameswf::smart_ptr<gameswf::character>>::resize((_DWORD *)this + 7, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::character>>::reserve((int)this + 28, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::resize((_DWORD *)this + 3);
  gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::reserve((int)this + 12, 0);
  gameswf::ref_counted::~ref_counted(this);
}


// ===== 771c38 gameswf::player::~player() =====
void __fastcall gameswf::player::~player(gameswf::player *this)
{
  gameswf::player::~player(this);
  LC_API_FREE_0(this);
}


// ===== 771c54 gameswf::player::~player() =====
void __fastcall gameswf::player::~player(gameswf::player *this)
{
  char *v2; // r5
  int v3; // r0
  int v4; // r2
  gameswf::player **v5; // r12
  int v6; // r1
  gameswf *v7; // r0
  gameswf *v8; // r0
  int v9; // r3
  _DWORD *v10; // r0
  void (__fastcall ***v12)(_DWORD); // r0
  void (__fastcall ***v13)(_DWORD); // r0
  int v14; // r2

  *(_DWORD *)this = off_9901F0;
  v2 = (char *)this + 72;
  gameswf::player::clear_unused_instances(this);
  gameswf::weak_ptr<gameswf::root>::operator=((int)v2, nullptr);
  gameswf::smart_ptr<gameswf::as_object>::set_ref((gameswf::ref_counted **)this + 13, nullptr);
  v3 = *((_DWORD *)this + 43);
  v4 = *(_DWORD *)(v3 + 24);
  if ( v4 > 0 )
  {
    v5 = *(gameswf::player ***)(v3 + 20);
    if ( this == *v5 )
    {
      v6 = 0;
LABEL_20:
      gameswf::array<gameswf::player *>::remove((_DWORD *)(v3 + 20), v6);
    }
    else
    {
      v6 = 0;
      while ( ++v6 != v4 )
      {
        if ( this == v5[v6] )
          goto LABEL_20;
      }
    }
  }
  gameswf::player::clear_heap(this);
  gameswf::gameswf_engine_mutex(v7);
  gameswf::player::clear_library(this);
  gameswf::gameswf_engine_mutex(v8);
  gameswf::player::action_clear(this);
  gameswf::array<gameswf::smart_ptr<gameswf::character>>::resize((_DWORD *)this + 52, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::character>>::reserve((int)this + 208, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::character>>::resize((_DWORD *)this + 48, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::character>>::reserve((int)this + 192, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::character>>::resize((_DWORD *)this + 44, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::character>>::reserve((int)this + 176, 0);
  v9 = *((_DWORD *)this + 40);
  if ( v9 < 0 )
  {
    v14 = 4 * v9;
    do
    {
      ++v9;
      *(_DWORD *)(*((_DWORD *)this + 39) + v14) = 0;
      v14 += 4;
    }
    while ( v9 );
  }
  *((_DWORD *)this + 40) = 0;
  gameswf::array<gameswf::blend_mode::id>::reserve((int)this + 156);
  gameswf::as_value::drop_refs((gameswf::player *)((char *)this + 136));
  gameswf::as_value::drop_refs((gameswf::player *)((char *)this + 124));
  if ( *((char *)this + 104) == -1 )
    gameswf::free_internal(*((void **)this + 29));
  gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear((_DWORD **)this + 25);
  if ( *((char *)this + 80) == -1 )
    gameswf::free_internal(*((void **)this + 23));
  v10 = *((_DWORD **)this + 18);
  if ( v10 )
  {
    if ( (*v10)-- == 1 )
      gameswf::free_internal(v10);
  }
  v12 = *((void (__fastcall ****)(_DWORD))this + 14);
  if ( v12 )
    gameswf::ref_counted::drop_ref(v12);
  v13 = *((void (__fastcall ****)(_DWORD))this + 13);
  if ( v13 )
    gameswf::ref_counted::drop_ref(v13);
  gameswf::permanent_string_cache::clear((gameswf::player *)((char *)this + 44));
  gameswf::hash<gameswf::string_pointer,gameswf::permanent_string *,gameswf::string_pointer_hash_functor<gameswf::string_pointer>>::clear((_DWORD **)this + 11);
  gameswf::array<gameswf::smart_ptr<gameswf::character>>::resize((_DWORD *)this + 7, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::character>>::reserve((int)this + 28, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::resize((_DWORD *)this + 3);
  gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::reserve((int)this + 12, 0);
  gameswf::ref_counted::~ref_counted(this);
}


// ===== 771e90 gameswf::set_property(gameswf::as_object *,int,gameswf::as_value const&) =====
void __fastcall gameswf::set_property(gameswf *this, gameswf::as_object *a2, int a3, const gameswf::as_value *a4)
{
  void (__fastcall *v6)(gameswf *, _BYTE *, int); // r7
  _BYTE v7[8]; // [sp+0h] [bp-1Ch] BYREF
  void *p; // [sp+Ch] [bp-10h]

  if ( (unsigned int)a2 > 0x15 )
  {
    gameswf::log_error("error: invalid set_property, property number %d\n", (const char *)a2, a3, a2);
  }
  else
  {
    v6 = *(void (__fastcall **)(gameswf *, _BYTE *, int))(*(_DWORD *)this + 28);
    gameswf::tu_string::tu_string(
      (gameswf::tu_string *)v7,
      (const gameswf::tu_string *)((char *)&gameswf::s_property_names + 20 * (_DWORD)a2));
    v6(this, v7, a3);
    if ( v7[0] == -1 )
      gameswf::free_internal(p);
  }
}


// ===== 771f58 gameswf::get_property(gameswf::as_object *,int) =====
gameswf *__fastcall gameswf::get_property(gameswf *this, gameswf::as_object *a2, char *a3)
{
  int v4; // r0
  void (__fastcall *v6)(gameswf::as_object *, _BYTE *, gameswf *); // r7
  _BYTE v8[8]; // [sp+0h] [bp-1Ch] BYREF
  void *p; // [sp+Ch] [bp-10h]
  int v10; // [sp+14h] [bp-8h]

  v4 = _stack_chk_guard;
  *((_BYTE *)this + 1) = 0;
  v10 = v4;
  *(_BYTE *)this = 0;
  if ( (unsigned int)a3 > 0x15 )
  {
    gameswf::log_error("error: invalid property query, property number %d\n", a3);
  }
  else
  {
    v6 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, gameswf *))(*(_DWORD *)a2 + 32);
    gameswf::tu_string::tu_string(
      (gameswf::tu_string *)v8,
      (const gameswf::tu_string *)((char *)&gameswf::s_property_names + 20 * (_DWORD)a3));
    v6(a2, v8, this);
    if ( v8[0] == -1 )
      gameswf::free_internal(p);
  }
  return this;
}


// ===== 772030 gameswf::get_standard_member(gameswf::tu_stringi const&) =====
int __fastcall gameswf::get_standard_member(gameswf::tu_string *this)
{
  int hashi; // r8
  int v3; // r2
  int v4; // r5
  int v5; // r10
  int v6; // r1
  int *v7; // r10
  int v9; // r3
  const char *v10; // r0
  const char *v11; // r1
  int v12; // [sp+4h] [bp-458h] BYREF
  int v13; // [sp+8h] [bp-454h] BYREF
  int v14; // [sp+Ch] [bp-450h] BYREF
  int v15; // [sp+10h] [bp-44Ch] BYREF
  int v16; // [sp+14h] [bp-448h] BYREF
  int v17; // [sp+18h] [bp-444h] BYREF
  int v18; // [sp+1Ch] [bp-440h] BYREF
  int v19; // [sp+20h] [bp-43Ch] BYREF
  int v20; // [sp+24h] [bp-438h] BYREF
  int v21; // [sp+28h] [bp-434h] BYREF
  int v22; // [sp+2Ch] [bp-430h] BYREF
  int v23; // [sp+30h] [bp-42Ch] BYREF
  int v24; // [sp+34h] [bp-428h] BYREF
  int v25; // [sp+38h] [bp-424h] BYREF
  int v26; // [sp+3Ch] [bp-420h] BYREF
  int v27; // [sp+40h] [bp-41Ch] BYREF
  int v28; // [sp+44h] [bp-418h] BYREF
  int v29; // [sp+48h] [bp-414h] BYREF
  int v30; // [sp+4Ch] [bp-410h] BYREF
  int v31; // [sp+50h] [bp-40Ch] BYREF
  int v32; // [sp+54h] [bp-408h] BYREF
  int v33; // [sp+58h] [bp-404h] BYREF
  int v34; // [sp+5Ch] [bp-400h] BYREF
  int v35; // [sp+60h] [bp-3FCh] BYREF
  int v36; // [sp+64h] [bp-3F8h] BYREF
  int v37; // [sp+68h] [bp-3F4h] BYREF
  int v38; // [sp+6Ch] [bp-3F0h] BYREF
  int v39; // [sp+70h] [bp-3ECh] BYREF
  int v40; // [sp+74h] [bp-3E8h] BYREF
  int v41; // [sp+78h] [bp-3E4h] BYREF
  int v42; // [sp+7Ch] [bp-3E0h] BYREF
  int v43; // [sp+80h] [bp-3DCh] BYREF
  int v44; // [sp+84h] [bp-3D8h] BYREF
  int v45; // [sp+88h] [bp-3D4h] BYREF
  int v46; // [sp+8Ch] [bp-3D0h] BYREF
  int v47; // [sp+90h] [bp-3CCh] BYREF
  int v48; // [sp+94h] [bp-3C8h] BYREF
  char *v49; // [sp+98h] [bp-3C4h] BYREF
  int v50; // [sp+9Ch] [bp-3C0h] BYREF
  int v51; // [sp+A0h] [bp-3BCh] BYREF
  int v52; // [sp+A4h] [bp-3B8h] BYREF
  int v53; // [sp+A8h] [bp-3B4h] BYREF
  int v54; // [sp+ACh] [bp-3B0h] BYREF
  int v55; // [sp+B0h] [bp-3ACh] BYREF
  int v56; // [sp+B4h] [bp-3A8h] BYREF
  int v57; // [sp+B8h] [bp-3A4h] BYREF
  _BYTE v58[8]; // [sp+BCh] [bp-3A0h] BYREF
  void *v59; // [sp+C8h] [bp-394h]
  _BYTE v60[8]; // [sp+D0h] [bp-38Ch] BYREF
  void *v61; // [sp+DCh] [bp-380h]
  _BYTE v62[8]; // [sp+E4h] [bp-378h] BYREF
  void *v63; // [sp+F0h] [bp-36Ch]
  _BYTE v64[8]; // [sp+F8h] [bp-364h] BYREF
  void *v65; // [sp+104h] [bp-358h]
  _BYTE v66[8]; // [sp+10Ch] [bp-350h] BYREF
  void *v67; // [sp+118h] [bp-344h]
  _BYTE v68[8]; // [sp+120h] [bp-33Ch] BYREF
  void *v69; // [sp+12Ch] [bp-330h]
  _BYTE v70[8]; // [sp+134h] [bp-328h] BYREF
  void *v71; // [sp+140h] [bp-31Ch]
  _BYTE v72[8]; // [sp+148h] [bp-314h] BYREF
  void *v73; // [sp+154h] [bp-308h]
  _BYTE v74[8]; // [sp+15Ch] [bp-300h] BYREF
  void *v75; // [sp+168h] [bp-2F4h]
  _BYTE v76[8]; // [sp+170h] [bp-2ECh] BYREF
  void *v77; // [sp+17Ch] [bp-2E0h]
  _BYTE v78[8]; // [sp+184h] [bp-2D8h] BYREF
  void *v79; // [sp+190h] [bp-2CCh]
  _BYTE v80[8]; // [sp+198h] [bp-2C4h] BYREF
  void *v81; // [sp+1A4h] [bp-2B8h]
  _BYTE v82[8]; // [sp+1ACh] [bp-2B0h] BYREF
  void *v83; // [sp+1B8h] [bp-2A4h]
  _BYTE v84[8]; // [sp+1C0h] [bp-29Ch] BYREF
  void *v85; // [sp+1CCh] [bp-290h]
  _BYTE v86[8]; // [sp+1D4h] [bp-288h] BYREF
  void *v87; // [sp+1E0h] [bp-27Ch]
  _BYTE v88[8]; // [sp+1E8h] [bp-274h] BYREF
  void *v89; // [sp+1F4h] [bp-268h]
  _BYTE v90[8]; // [sp+1FCh] [bp-260h] BYREF
  void *v91; // [sp+208h] [bp-254h]
  _BYTE v92[8]; // [sp+210h] [bp-24Ch] BYREF
  void *v93; // [sp+21Ch] [bp-240h]
  _BYTE v94[8]; // [sp+224h] [bp-238h] BYREF
  void *v95; // [sp+230h] [bp-22Ch]
  _BYTE v96[8]; // [sp+238h] [bp-224h] BYREF
  void *v97; // [sp+244h] [bp-218h]
  _BYTE v98[8]; // [sp+24Ch] [bp-210h] BYREF
  void *v99; // [sp+258h] [bp-204h]
  _BYTE v100[8]; // [sp+260h] [bp-1FCh] BYREF
  void *v101; // [sp+26Ch] [bp-1F0h]
  _BYTE v102[8]; // [sp+274h] [bp-1E8h] BYREF
  void *v103; // [sp+280h] [bp-1DCh]
  _BYTE v104[8]; // [sp+288h] [bp-1D4h] BYREF
  void *v105; // [sp+294h] [bp-1C8h]
  _BYTE v106[8]; // [sp+29Ch] [bp-1C0h] BYREF
  void *v107; // [sp+2A8h] [bp-1B4h]
  _BYTE v108[8]; // [sp+2B0h] [bp-1ACh] BYREF
  void *v109; // [sp+2BCh] [bp-1A0h]
  _BYTE v110[8]; // [sp+2C4h] [bp-198h] BYREF
  void *v111; // [sp+2D0h] [bp-18Ch]
  _BYTE v112[8]; // [sp+2D8h] [bp-184h] BYREF
  void *v113; // [sp+2E4h] [bp-178h]
  _BYTE v114[8]; // [sp+2ECh] [bp-170h] BYREF
  void *v115; // [sp+2F8h] [bp-164h]
  _BYTE v116[8]; // [sp+300h] [bp-15Ch] BYREF
  void *v117; // [sp+30Ch] [bp-150h]
  _BYTE v118[8]; // [sp+314h] [bp-148h] BYREF
  void *v119; // [sp+320h] [bp-13Ch]
  _BYTE v120[8]; // [sp+328h] [bp-134h] BYREF
  void *v121; // [sp+334h] [bp-128h]
  _BYTE v122[8]; // [sp+33Ch] [bp-120h] BYREF
  void *v123; // [sp+348h] [bp-114h]
  _BYTE v124[8]; // [sp+350h] [bp-10Ch] BYREF
  void *v125; // [sp+35Ch] [bp-100h]
  _BYTE v126[8]; // [sp+364h] [bp-F8h] BYREF
  void *v127; // [sp+370h] [bp-ECh]
  _BYTE v128[8]; // [sp+378h] [bp-E4h] BYREF
  void *v129; // [sp+384h] [bp-D8h]
  _BYTE v130[8]; // [sp+38Ch] [bp-D0h] BYREF
  void *v131; // [sp+398h] [bp-C4h]
  _BYTE v132[8]; // [sp+3A0h] [bp-BCh] BYREF
  void *v133; // [sp+3ACh] [bp-B0h]
  _BYTE v134[8]; // [sp+3B4h] [bp-A8h] BYREF
  void *v135; // [sp+3C0h] [bp-9Ch]
  _BYTE v136[8]; // [sp+3C8h] [bp-94h] BYREF
  void *v137; // [sp+3D4h] [bp-88h]
  _BYTE v138[8]; // [sp+3DCh] [bp-80h] BYREF
  void *v139; // [sp+3E8h] [bp-74h]
  _BYTE v140[8]; // [sp+3F0h] [bp-6Ch] BYREF
  void *v141; // [sp+3FCh] [bp-60h]
  _BYTE v142[8]; // [sp+404h] [bp-58h] BYREF
  void *v143; // [sp+410h] [bp-4Ch]
  _BYTE v144[8]; // [sp+418h] [bp-44h] BYREF
  void *v145; // [sp+424h] [bp-38h]
  _BYTE v146[8]; // [sp+42Ch] [bp-30h] BYREF
  void *v147; // [sp+438h] [bp-24h]
  _BYTE v148[8]; // [sp+440h] [bp-1Ch] BYREF
  void *p; // [sp+44Ch] [bp-10h]

  if ( !gameswf::s_standard_property_map || !*(_DWORD *)gameswf::s_standard_property_map )
  {
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(
      (_DWORD **)&gameswf::s_standard_property_map,
      69);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v148, "_x");
    v57 = 0;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v148,
      &v57);
    if ( v148[0] == -1 )
      gameswf::free_internal(p);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v146, "_y");
    v56 = 1;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v146,
      &v56);
    if ( v146[0] == -1 )
      gameswf::free_internal(v147);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v144, "_xscale");
    v55 = 2;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v144,
      &v55);
    if ( v144[0] == -1 )
      gameswf::free_internal(v145);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v142, "_yscale");
    v54 = 3;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v142,
      &v54);
    if ( v142[0] == -1 )
      gameswf::free_internal(v143);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v140, "_currentframe");
    v53 = 4;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v140,
      &v53);
    if ( v140[0] == -1 )
      gameswf::free_internal(v141);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v138, "_totalframes");
    v52 = 5;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v138,
      &v52);
    if ( v138[0] == -1 )
      gameswf::free_internal(v139);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v136, "_alpha");
    v51 = 6;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v136,
      &v51);
    if ( v136[0] == -1 )
      gameswf::free_internal(v137);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v134, "_visible");
    v50 = 7;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v134,
      &v50);
    if ( v134[0] == -1 )
      gameswf::free_internal(v135);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v132, "_width");
    v49 = byte_8;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v132,
      &v49);
    if ( v132[0] == -1 )
      gameswf::free_internal(v133);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v130, "_height");
    v48 = 9;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v130,
      &v48);
    if ( v130[0] == -1 )
      gameswf::free_internal(v131);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v128, "_rotation");
    v47 = 10;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v128,
      &v47);
    if ( v128[0] == -1 )
      gameswf::free_internal(v129);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v126, "_target");
    v46 = 11;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v126,
      &v46);
    if ( v126[0] == -1 )
      gameswf::free_internal(v127);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v124, "_framesloaded");
    v45 = 12;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v124,
      &v45);
    if ( v124[0] == 255 )
      gameswf::free_internal(v125);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v122, "_name");
    v44 = 13;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v122,
      &v44);
    if ( v122[0] == 255 )
      gameswf::free_internal(v123);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v120, "_droptarget");
    v43 = 14;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v120,
      &v43);
    if ( v120[0] == 255 )
      gameswf::free_internal(v121);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v118, "_url");
    v42 = 15;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v118,
      &v42);
    if ( v118[0] == 255 )
      gameswf::free_internal(v119);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v116, "_highquality");
    v41 = 16;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v116,
      &v41);
    if ( v116[0] == 255 )
      gameswf::free_internal(v117);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v114, "_focusrect");
    v40 = 17;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v114,
      &v40);
    if ( v114[0] == 255 )
      gameswf::free_internal(v115);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v112, "_soundbuftime");
    v39 = 18;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v112,
      &v39);
    if ( v112[0] == 255 )
      gameswf::free_internal(v113);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v110, "_xmouse");
    v38 = 19;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v110,
      &v38);
    if ( v110[0] == 255 )
      gameswf::free_internal(v111);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v108, "_ymouse");
    v37 = 20;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v108,
      &v37);
    if ( v108[0] == 255 )
      gameswf::free_internal(v109);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v106, "_parent");
    v36 = 21;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v106,
      &v36);
    if ( v106[0] == 255 )
      gameswf::free_internal(v107);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v104, "text");
    v35 = 22;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v104,
      &v35);
    if ( v104[0] == 255 )
      gameswf::free_internal(v105);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v102, "htmlText");
    v34 = 23;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v102,
      &v34);
    if ( v102[0] == 255 )
      gameswf::free_internal(v103);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v100, "textWidth");
    v33 = 24;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v100,
      &v33);
    if ( v100[0] == 255 )
      gameswf::free_internal(v101);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v98, "textHeight");
    v32 = 25;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v98,
      &v32);
    if ( v98[0] == 255 )
      gameswf::free_internal(v99);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v96, "textColor");
    v31 = 26;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v96,
      &v31);
    if ( v96[0] == 255 )
      gameswf::free_internal(v97);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v94, "border");
    v30 = 27;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v94,
      &v30);
    if ( v94[0] == 255 )
      gameswf::free_internal(v95);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v92, "multiline");
    v29 = 28;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v92,
      &v29);
    if ( v92[0] == 255 )
      gameswf::free_internal(v93);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v90, "wordWrap");
    v28 = 29;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v90,
      &v28);
    if ( v90[0] == 255 )
      gameswf::free_internal(v91);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v88, "type");
    v27 = 30;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v88,
      &v27);
    if ( v88[0] == 255 )
      gameswf::free_internal(v89);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v86, "backgroundColor");
    v26 = 31;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v86,
      &v26);
    if ( v86[0] == 255 )
      gameswf::free_internal(v87);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v84, "_this");
    v25 = 32;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v84,
      &v25);
    if ( v84[0] == 255 )
      gameswf::free_internal(v85);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v82, "this");
    v24 = 33;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v82,
      &v24);
    if ( v82[0] == 255 )
      gameswf::free_internal(v83);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v80, "_root");
    v23 = 34;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v80,
      &v23);
    if ( v80[0] == 255 )
      gameswf::free_internal(v81);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v78, ".");
    v22 = 35;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v78,
      &v22);
    if ( v78[0] == 255 )
      gameswf::free_internal(v79);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v76, "..");
    v21 = 36;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v76,
      &v21);
    if ( v76[0] == 255 )
      gameswf::free_internal(v77);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v74, "_level0");
    v20 = 37;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v74,
      &v20);
    if ( v74[0] == 255 )
      gameswf::free_internal(v75);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v72, "_global");
    v19 = 38;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v72,
      &v19);
    if ( v72[0] == 255 )
      gameswf::free_internal(v73);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v70, "Stage");
    v18 = 39;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v70,
      &v18);
    if ( v70[0] == 255 )
      gameswf::free_internal(v71);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v68, "enabled");
    v17 = 40;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v68,
      &v17);
    if ( v68[0] == 255 )
      gameswf::free_internal(v69);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v66, "transform");
    v16 = 41;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v66,
      &v16);
    if ( v66[0] == 255 )
      gameswf::free_internal(v67);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v64, "matrix");
    v15 = 42;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v64,
      &v15);
    if ( v64[0] == 255 )
      gameswf::free_internal(v65);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v62, "concatenatedMatrix");
    v14 = 43;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v62,
      &v14);
    if ( v62[0] == 255 )
      gameswf::free_internal(v63);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v60, "colorTransform");
    v13 = 44;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v60,
      &v13);
    if ( v60[0] == 255 )
      gameswf::free_internal(v61);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v58, "concatenatedColorTransform");
    v12 = 45;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_standard_property_map,
      (const gameswf::tu_string *)v58,
      &v12);
    if ( v58[0] == 255 )
      gameswf::free_internal(v59);
    if ( !gameswf::s_standard_property_map )
      return -1;
  }
  hashi = gameswf::tu_string::get_hashi(this);
  if ( hashi == -1 )
    hashi = -32769;
  v3 = *(_DWORD *)(gameswf::s_standard_property_map + 4);
  v4 = hashi & v3;
  v5 = 4 * (hashi & v3) + 1;
  v6 = *(_DWORD *)(gameswf::s_standard_property_map + 8 * v5);
  v7 = (int *)(gameswf::s_standard_property_map + 8 * v5);
  if ( v6 == -2 )
    return -1;
  v9 = v7[1];
  if ( v9 != -1 && v4 != (v3 & v9) )
    return -1;
  while ( 1 )
  {
    if ( hashi == v9 )
    {
      if ( this == (gameswf::tu_string *)(v7 + 2) )
        break;
      v10 = *((char *)v7 + 8) == -1 ? (const char *)v7[5] : (char *)v7 + 9;
      v11 = *(char *)this == -1 ? *((const char **)this + 3) : (char *)this + 1;
      if ( !gameswf::tu_string::stricmp(v10, v11) )
        break;
    }
    v4 = *v7;
    if ( *v7 == -1 )
      return -1;
    v7 = (int *)(gameswf::s_standard_property_map + 32 * v4 + 8);
    v9 = v7[1];
  }
  if ( v4 >= 0 )
    return *(_DWORD *)(gameswf::s_standard_property_map + 32 * v4 + 36);
  else
    return -1;
}


// ===== 773268 gameswf::player::notify_unused_instance(gameswf::character *) =====
void __fastcall gameswf::player::notify_unused_instance(gameswf::player *this, gameswf::character *a2)
{
  gameswf::edit_text_character *v3; // r7
  int v4; // r1
  gameswf::ref_counted *v5; // r0
  gameswf::ref_counted *v6[2]; // [sp+4h] [bp-24h] BYREF
  _DWORD *v7; // [sp+Ch] [bp-1Ch] BYREF
  _BYTE v8[8]; // [sp+10h] [bp-18h] BYREF
  void *p; // [sp+1Ch] [bp-Ch]

  v6[0] = a2;
  gameswf::ref_counted::detach_weak_proxy(a2);
  v3 = v6[0];
  v4 = *((char *)v6[0] + 152);
  switch ( v4 )
  {
    case 3:
      if ( (*(int (__fastcall **)(gameswf::ref_counted *))(*(_DWORD *)v6[0] + 8))(v6[0]) )
        v5 = v6[0];
      else
        v5 = nullptr;
      gameswf::smart_ptr<gameswf::character_def>::set_ref((gameswf::ref_counted **)v5 + 40, nullptr);
      gameswf::array<gameswf::smart_ptr<gameswf::character>>::push_back<gameswf::character*>((_DWORD *)this + 48, v6);
      break;
    case 32:
      if ( !(*(int (__fastcall **)(gameswf::ref_counted *))(*(_DWORD *)v6[0] + 8))(v6[0]) )
        v3 = nullptr;
      gameswf::tu_string::tu_string((gameswf::tu_string *)v8, "");
      gameswf::edit_text_character::set_text_value(v3, (const gameswf::tu_string *)v8, 0);
      if ( v8[0] == -1 )
        gameswf::free_internal(p);
      gameswf::array<gameswf::smart_ptr<gameswf::character>>::push_back<gameswf::character*>((_DWORD *)this + 52, v6);
      break;
    case 2:
      gameswf::array<gameswf::smart_ptr<gameswf::character>>::push_back<gameswf::character*>((_DWORD *)this + 44, v6);
      break;
    default:
      return;
  }
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear((_DWORD **)v6[0] + 3);
  v7 = nullptr;
  (*(void (__fastcall **)(gameswf::ref_counted *, _DWORD **, gameswf::ref_counted *))(*(_DWORD *)v6[0] + 64))(
    v6[0],
    &v7,
    v6[0]);
  gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>>::clear(&v7);
}


// ===== 7733d0 gameswf::player::create_movie(char const*) =====
gameswf::movie_def_impl *__fastcall gameswf::player::create_movie(gameswf::player *this, const char *a2)
{
  int *chardef_library; // r7
  gameswf::movie_def_impl *v4; // r7
  gameswf::tu_file *v6; // r0
  gameswf::tu_file *v7; // r9
  char *v8; // r8
  int v9; // r9
  int v10; // r9
  _BYTE *v11; // r0
  _BYTE *v12; // r0
  int v13; // r0
  gameswf::tu_file *v14; // r6
  gameswf::ref_counted *v16; // [sp+8h] [bp-4Ch] BYREF
  gameswf::ref_counted *v17; // [sp+Ch] [bp-48h] BYREF
  _BYTE v18[8]; // [sp+10h] [bp-44h] BYREF
  void *p; // [sp+1Ch] [bp-38h]
  char v20; // [sp+24h] [bp-30h] BYREF
  _BYTE v21[7]; // [sp+25h] [bp-2Fh] BYREF
  void *v22; // [sp+30h] [bp-24h]
  unsigned int v23; // [sp+34h] [bp-20h]
  _BYTE v24[8]; // [sp+38h] [bp-1Ch] BYREF
  void *v25; // [sp+44h] [bp-10h]

  if ( !gameswf::s_use_cached_movie_def )
    goto LABEL_10;
  v17 = nullptr;
  chardef_library = (int *)gameswf::player::get_chardef_library(this);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v24, a2);
  gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::get(
    chardef_library,
    (gameswf::tu_string *)v24,
    &v17);
  if ( v24[0] == -1 )
    gameswf::free_internal(v25);
  v4 = v17;
  if ( v17 )
  {
    if ( !(*(int (__fastcall **)(gameswf::ref_counted *, int))(*(_DWORD *)v17 + 8))(v17, 10) )
      v4 = nullptr;
    if ( v17 )
      gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v17);
  }
  else
  {
LABEL_10:
    v4 = (gameswf::movie_def_impl *)gameswf::s_opener_function;
    if ( gameswf::s_opener_function )
    {
      v6 = (gameswf::tu_file *)gameswf::s_opener_function(a2);
      v7 = v6;
      if ( v6 )
      {
        if ( *((_DWORD *)v6 + 9) )
        {
          v4 = nullptr;
          gameswf::log_error("error: file opener can't open '%s'\n", a2);
          gameswf::tu_file::~tu_file(v7);
          gameswf::free_internal(v7);
        }
        else
        {
          gameswf::ensure_loaders_registered(v6);
          v4 = (gameswf::movie_def_impl *)operator new(0x128u, 0);
          gameswf::movie_def_impl::movie_def_impl((int)v4, this, 0, 1);
          gameswf::movie_def_impl::read(v4, v7);
          if ( v4 && gameswf::s_use_cache_files )
          {
            gameswf::tu_string::tu_string((gameswf::tu_string *)&v20, a2);
            v9 = v20;
            if ( v20 == -1 )
              v9 = *(_DWORD *)&v21[3];
            v10 = v9 - 1;
            gameswf::tu_string::resize((gameswf::tu_string *)&v20, v10 + 4);
            if ( v20 == -1 )
              v11 = v22;
            else
              v11 = v21;
            strcpy(&v11[v10], ".gsc");
            v23 = v23 & 0xFF000000 | 0xFFFFFF;
            if ( v20 == -1 )
              v12 = v22;
            else
              v12 = v21;
            v13 = gameswf::s_opener_function(v12);
            v14 = (gameswf::tu_file *)v13;
            if ( v13 )
            {
              if ( !*(_DWORD *)(v13 + 36) )
                (*(void (__fastcall **)(gameswf::movie_def_impl *, int))(*(_DWORD *)v4 + 32))(v4, v13);
              gameswf::tu_file::~tu_file(v14);
              gameswf::free_internal(v14);
            }
            if ( v20 == -1 )
              gameswf::free_internal(v22);
          }
          if ( gameswf::s_use_cached_movie_def )
          {
            v8 = gameswf::player::get_chardef_library(this);
            gameswf::tu_string::tu_string((gameswf::tu_string *)v18, a2);
            v16 = v4;
            if ( v4 )
              gameswf::ref_counted::add_ref((int)v4);
            gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
              (_DWORD **)v8,
              (const gameswf::tu_string *)v18,
              (int *)&v16);
            if ( v16 )
              gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v16);
            if ( v18[0] == -1 )
              gameswf::free_internal(p);
          }
        }
      }
      else
      {
        v4 = nullptr;
        gameswf::log_error("failed to open '%s'; can't create movie.\n", a2);
      }
    }
    else
    {
      gameswf::log_error(
        "error: no file opener function; can't create movie.\tSee gameswf::register_file_opener_callback\n",
        a2);
    }
  }
  return v4;
}


// ===== 7736f4 gameswf::player::load_file(char const*) =====
gameswf::player *__fastcall gameswf::player::load_file(gameswf::player *this, gameswf::player *a2, const char *a3)
{
  gameswf::movie_def_impl *movie; // r0
  gameswf::movie_def_impl *v6; // r5
  int v7; // r0
  void (__fastcall ***v8)(_DWORD); // r4

  movie = gameswf::player::create_movie(a2, a3);
  v6 = movie;
  if ( movie )
  {
    gameswf::ref_counted::add_ref((int)movie);
    v7 = (*(int (__fastcall **)(gameswf::movie_def_impl *))(*(_DWORD *)v6 + 64))(v6);
    v8 = (void (__fastcall ***)(_DWORD))v7;
    if ( v7 )
    {
      gameswf::ref_counted::add_ref(v7);
      (*v8)[19](v8);
      *(_DWORD *)this = v8;
      gameswf::ref_counted::add_ref((int)v8);
      gameswf::ref_counted::drop_ref(v8);
    }
    else
    {
      fwrite("error: can't create movie instance\n", 1u, 0x23u, (FILE *)&_sF + 2);
      *(_DWORD *)this = 0;
    }
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v6);
    return this;
  }
  else
  {
    fprintf((FILE *)&_sF + 2, "error: can't create a movie from '%s'\n", a3);
    *(_DWORD *)this = 0;
    return this;
  }
}


// ===== 7737d0 gameswf::bitmap_info::layout(void) =====
void __fastcall gameswf::bitmap_info::layout(gameswf::bitmap_info *this)
{
  ;
}


// ===== 7737d4 gameswf::bitmap_info::unlayout(void) =====
void __fastcall gameswf::bitmap_info::unlayout(gameswf::bitmap_info *this)
{
  ;
}


// ===== 7737d8 gameswf::bitmap_info::activate(void) =====
void __fastcall gameswf::bitmap_info::activate(gameswf::bitmap_info *this)
{
  ;
}


// ===== 7737dc gameswf::bitmap_info::set_writable(void) =====
void __fastcall gameswf::bitmap_info::set_writable(gameswf::bitmap_info *this)
{
  ;
}


// ===== 7737e0 gameswf::bitmap_info::lock(void) =====
int __fastcall gameswf::bitmap_info::lock(gameswf::bitmap_info *this)
{
  return 0;
}


// ===== 7737e8 gameswf::bitmap_info::unlock(void) =====
void __fastcall gameswf::bitmap_info::unlock(gameswf::bitmap_info *this)
{
  ;
}


// ===== 7737ec gameswf::bitmap_info::set_texture(glitch::video::ITexture *) =====
void __fastcall gameswf::bitmap_info::set_texture(gameswf::bitmap_info *this, glitch::video::ITexture *a2)
{
  ;
}


// ===== 7737f0 gameswf::bitmap_info::get_width(void) =====
int __fastcall gameswf::bitmap_info::get_width(gameswf::bitmap_info *this)
{
  return 0;
}


// ===== 7737f8 gameswf::bitmap_info::get_height(void) =====
int __fastcall gameswf::bitmap_info::get_height(gameswf::bitmap_info *this)
{
  return 0;
}


// ===== 773800 gameswf::bitmap_info::set_min_filter(gameswf::bitmap_info::filter_mode) =====
void gameswf::bitmap_info::set_min_filter()
{
  ;
}


// ===== 773804 gameswf::bitmap_info::set_mag_filter(gameswf::bitmap_info::filter_mode) =====
void gameswf::bitmap_info::set_mag_filter()
{
  ;
}


// ===== 773808 gameswf::bitmap_info::is_layout(void) =====
int __fastcall gameswf::bitmap_info::is_layout(gameswf::bitmap_info *this)
{
  return 0;
}


// ===== 773810 gameswf::bitmap_info::get_internal_width(void) =====
int __fastcall gameswf::bitmap_info::get_internal_width(gameswf::bitmap_info *this)
{
  return (*(int (__fastcall **)(gameswf::bitmap_info *))(*(_DWORD *)this + 36))(this);
}


// ===== 773824 gameswf::bitmap_info::get_internal_height(void) =====
int __fastcall gameswf::bitmap_info::get_internal_height(gameswf::bitmap_info *this)
{
  return (*(int (__fastcall **)(gameswf::bitmap_info *))(*(_DWORD *)this + 40))(this);
}


// ===== 773838 gameswf::render::create_video_handler(void) =====
int __fastcall gameswf::render::create_video_handler(gameswf::render *this)
{
  if ( gameswf::s_render_handler )
    return (*(int (__fastcall **)(int))(*(_DWORD *)gameswf::s_render_handler + 36))(gameswf::s_render_handler);
  else
    return 0;
}


// ===== 77387c gameswf::render::set_mask_bound(gameswf::rect const&) =====
int __fastcall gameswf::render::set_mask_bound(_DWORD *a1)
{
  int result; // r0
  int v2; // r1
  int v3; // r2
  int v4; // r3
  _DWORD *v5; // t0

  v5 = a1;
  result = *a1;
  v2 = *++v5;
  v3 = *++v5;
  v4 = v5[1];
  gameswf::render::s_mask_bound = result;
  unk_9FC988 = v2;
  unk_9FC98C = v3;
  unk_9FC990 = v4;
  return result;
}


// ===== 773894 gameswf::render::get_mask_bound(void) =====
void *__fastcall gameswf::render::get_mask_bound(gameswf::render *this)
{
  return &gameswf::render::s_mask_bound;
}


// ===== 7738a4 gameswf::render_cache::is_valid(gameswf::character *) =====
int __fastcall gameswf::render_cache::is_valid(gameswf::render_cache *this, gameswf::character *a2)
{
  int v4; // r6
  int v5; // r3
  int v6; // r2
  int v7; // r3
  int v8; // r0
  int v9; // r3
  int v10; // r2
  int v11; // r3

  gameswf::weak_ptr<gameswf::player>::check_proxy((int)a2 + 44);
  v4 = *(_DWORD *)(*((_DWORD *)a2 + 12) + 172);
  gameswf::character::get_world_cxform(a2);
  gameswf::character::get_world_matrix(a2);
  v5 = *(_DWORD *)(*(_DWORD *)(v4 + 12) + 40);
  if ( !v5
    || (v6 = *(_DWORD *)(v5 + 8), v7 = *(_DWORD *)(v5 + 12), *(_DWORD *)this == v6) && *((_DWORD *)this + 1) == v7 )
  {
    v8 = 0;
    v9 = *(_DWORD *)(*(_DWORD *)(v4 + 16) + 12);
    if ( !v9 )
      return v8 ^ 1;
  }
  else
  {
    *(_DWORD *)this = v6;
    *((_DWORD *)this + 1) = v7;
    v8 = 1;
    v9 = *(_DWORD *)(*(_DWORD *)(v4 + 16) + 12);
    if ( !v9 )
      return v8 ^ 1;
  }
  v10 = *(_DWORD *)(v9 + 8);
  v11 = *(_DWORD *)(v9 + 12);
  if ( *((_DWORD *)this + 2) == v10 && *((_DWORD *)this + 3) == v11 )
    return v8 ^ 1;
  *((_DWORD *)this + 3) = v11;
  *((_DWORD *)this + 2) = v10;
  return 0;
}


// ===== 773974 gameswf::render::bogus_bi::~bogus_bi() =====
void __fastcall gameswf::render::bogus_bi::~bogus_bi(gameswf::render::bogus_bi *this)
{
  *(_DWORD *)this = off_990258;
  gameswf::ref_counted::~ref_counted(this);
}


// ===== 7739a8 gameswf::bitmap_info::~bitmap_info() =====
void __fastcall gameswf::bitmap_info::~bitmap_info(gameswf::bitmap_info *this)
{
  *(_DWORD *)this = off_990258;
  gameswf::ref_counted::~ref_counted(this);
}


// ===== 7739dc gameswf::render::create_bitmap_info_native(int,int,gameswf::membuf const*) =====
int __fastcall gameswf::render::create_bitmap_info_native(int a1, int a2, int a3)
{
  _DWORD *v4; // r5

  if ( gameswf::s_render_handler )
    return (*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)gameswf::s_render_handler + 28))(
             gameswf::s_render_handler,
             a1,
             a2,
             a3);
  v4 = operator new(0xCu, 0);
  gameswf::ref_counted::ref_counted(v4);
  *v4 = off_990210;
  return (int)v4;
}


// ===== 773a5c gameswf::render::create_bitmap_info_texture(glitch::video::ITexture *) =====
int __fastcall gameswf::render::create_bitmap_info_texture(gameswf::render *this, glitch::video::ITexture *a2)
{
  _DWORD *v3; // r5

  if ( gameswf::s_render_handler )
    return (*(int (__fastcall **)(int, gameswf::render *))(*(_DWORD *)gameswf::s_render_handler + 24))(
             gameswf::s_render_handler,
             this);
  v3 = operator new(0xCu, 0);
  gameswf::ref_counted::ref_counted(v3);
  *v3 = off_990210;
  return (int)v3;
}


// ===== 773acc gameswf::render::create_bitmap_info_rgba(gameswf::image_rgba *) =====
int __fastcall gameswf::render::create_bitmap_info_rgba(int a1)
{
  _DWORD *v2; // r5

  if ( gameswf::s_render_handler )
    return (*(int (__fastcall **)(int, int))(*(_DWORD *)gameswf::s_render_handler + 20))(gameswf::s_render_handler, a1);
  v2 = operator new(0xCu, 0);
  gameswf::ref_counted::ref_counted(v2);
  *v2 = off_990210;
  return (int)v2;
}


// ===== 773b3c gameswf::render::create_bitmap_info_rgb(gameswf::image_rgb *) =====
int __fastcall gameswf::render::create_bitmap_info_rgb(int a1)
{
  _DWORD *v2; // r5

  if ( gameswf::s_render_handler )
    return (*(int (__fastcall **)(int, int))(*(_DWORD *)gameswf::s_render_handler + 16))(gameswf::s_render_handler, a1);
  v2 = operator new(0xCu, 0);
  gameswf::ref_counted::ref_counted(v2);
  *v2 = off_990210;
  return (int)v2;
}


// ===== 773bac gameswf::render::create_bitmap_info_alpha(int,int,uchar *) =====
int __fastcall gameswf::render::create_bitmap_info_alpha(gameswf::render *this, int a2, int a3, unsigned __int8 *a4)
{
  _DWORD *v5; // r5

  if ( gameswf::s_render_handler )
    return (*(int (__fastcall **)(int, gameswf::render *, int, int))(*(_DWORD *)gameswf::s_render_handler + 12))(
             gameswf::s_render_handler,
             this,
             a2,
             a3);
  v5 = operator new(0xCu, 0);
  gameswf::ref_counted::ref_counted(v5);
  *v5 = off_990210;
  return (int)v5;
}


// ===== 773c2c gameswf::render::create_bitmap_info_empty(void) =====
int __fastcall gameswf::render::create_bitmap_info_empty(gameswf::render *this)
{
  _DWORD *v2; // r5
  int v3; // [sp+4h] [bp-8h] BYREF

  v3 = 255;
  if ( gameswf::s_render_handler )
    return (*(int (__fastcall **)(int, int, int, int *))(*(_DWORD *)gameswf::s_render_handler + 12))(
             gameswf::s_render_handler,
             2,
             2,
             &v3);
  v2 = operator new(0xCu, 0);
  gameswf::ref_counted::ref_counted(v2);
  *v2 = off_990210;
  return (int)v2;
}


// ===== 773cbc gameswf::bitmap_info::~bitmap_info() =====
void __fastcall gameswf::bitmap_info::~bitmap_info(gameswf::bitmap_info *this)
{
  *(_DWORD *)this = off_990258;
  gameswf::ref_counted::~ref_counted(this);
  LC_API_FREE_0(this);
}


// ===== 773cf8 gameswf::render::bogus_bi::~bogus_bi() =====
void __fastcall gameswf::render::bogus_bi::~bogus_bi(gameswf::render::bogus_bi *this)
{
  *(_DWORD *)this = off_990258;
  gameswf::ref_counted::~ref_counted(this);
  LC_API_FREE_0(this);
}


// ===== 773d34 gameswf::tu_mutex::~tu_mutex() =====
void __fastcall gameswf::tu_mutex::~tu_mutex(gameswf::tu_mutex *this)
{
  ;
}


// ===== 773d38 gameswf::gameswf_engine_mutex(void) =====
void *__fastcall gameswf::gameswf_engine_mutex(gameswf *this)
{
  return &gameswf::s_gameswf_engine;
}


// ===== 773d48 gameswf::root::get_movie_version(void) =====
int __fastcall gameswf::root::get_movie_version(gameswf::root *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 3) + 44))(*((_DWORD *)this + 3));
}


// ===== 773d64 gameswf::root::get_movie_width(void) =====
int __fastcall gameswf::root::get_movie_width(gameswf::root *this)
{
  return (int)(*(float (__fastcall **)(_DWORD))(**((_DWORD **)this + 3) + 48))(*((_DWORD *)this + 3));
}


// ===== 773d84 gameswf::root::get_movie_height(void) =====
int __fastcall gameswf::root::get_movie_height(gameswf::root *this)
{
  return (int)(*(float (__fastcall **)(_DWORD))(**((_DWORD **)this + 3) + 52))(*((_DWORD *)this + 3));
}


// ===== 773da4 gameswf::root::get_movie_fps(void) =====
int __fastcall gameswf::root::get_movie_fps(gameswf::root *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 3) + 60))(*((_DWORD *)this + 3));
}


// ===== 773dc0 gameswf::root::screen_to_logical(gameswf::point &) =====
float __fastcall gameswf::root::screen_to_logical(_DWORD *a1, float *a2)
{
  int v4; // r0
  bool v5; // zf
  float result; // r0
  float *v7; // r6
  float v8; // r7
  int v9; // r0

  v4 = (*(int (__fastcall **)(int))(*(_DWORD *)gameswf::s_render_handler + 172))(gameswf::s_render_handler);
  v5 = v4 == 0;
  if ( v4 )
    v5 = v4 == 2;
  v7 = (float *)a1[3];
  if ( v5 )
  {
    v8 = (float)(int)a1[12] / (float)((float)(v7[48] - v7[47]) / 20.0);
    *a2 = (float)(*a2 - (float)(int)a1[9]) / (float)((float)(int)a1[11] / (float)((float)(v7[46] - v7[45]) / 20.0));
    v9 = a1[10];
  }
  else
  {
    v8 = (float)(int)a1[11] / (float)((float)(v7[48] - v7[47]) / 20.0);
    *a2 = (float)(*a2 - (float)(int)a1[10]) / (float)((float)(int)a1[12] / (float)((float)(v7[46] - v7[45]) / 20.0));
    v9 = a1[9];
  }
  result = (float)(a2[1] - (float)v9) / v8;
  a2[1] = result;
  return result;
}


// ===== 773f50 gameswf::root::logical_to_screen(gameswf::point &) =====
float __fastcall gameswf::root::logical_to_screen(_DWORD *a1, float *a2)
{
  int v4; // r0
  bool v5; // zf
  int v6; // r8
  float v7; // r0
  float v8; // r7
  float v9; // r0
  float result; // r0
  float *v11; // r6
  float v12; // r11
  float v13; // r10
  float v14; // [sp+0h] [bp-Ch]
  float v15; // [sp+4h] [bp-8h]

  v4 = (*(int (__fastcall **)(int))(*(_DWORD *)gameswf::s_render_handler + 172))(gameswf::s_render_handler);
  v5 = v4 == 0;
  if ( v4 )
    v5 = v4 == 2;
  v6 = v5;
  v11 = (float *)a1[3];
  if ( v5 )
  {
    v12 = v11[46] - v11[45];
    v13 = v11[48] - v11[47];
  }
  else
  {
    v12 = v11[48] - v11[47];
    v13 = v11[46] - v11[45];
  }
  v14 = (float)(int)a1[7] / (float)(int)a1[11];
  v7 = (float)(int)a1[12];
  v15 = (float)(int)a1[8] / v7;
  v8 = (float)((float)(int)a1[9] * 20.0) / (float)((float)(int)a1[11] / (float)(v12 / 20.0));
  v9 = (float)((float)(int)a1[10] * 20.0) / (float)(v7 / (float)(v13 / 20.0));
  if ( v6 )
  {
    *a2 = (float)(v14 * *a2) - v8;
    result = (float)(v15 * a2[1]) - v9;
  }
  else
  {
    *a2 = (float)(v15 * *a2) - v9;
    result = (float)(v14 * a2[1]) - v8;
  }
  a2[1] = result;
  return result;
}


// ===== 774128 gameswf::root::notify_mouse_state(int,int,int) =====
_DWORD *__fastcall gameswf::root::notify_mouse_state(_DWORD *this, int a2, int a3, int a4)
{
  *(this + 17) = a4;
  *(this + 15) = a2;
  *(this + 16) = a3;
  return this;
}


// ===== 774138 gameswf::root::get_mouse_state(int *,int *,int *) =====
_DWORD *__fastcall gameswf::root::get_mouse_state(_DWORD *this, int *a2, int *a3, int *a4)
{
  *a2 = *(this + 15);
  *a3 = *(this + 16);
  *a4 = *(this + 17);
  return this;
}


// ===== 774154 gameswf::root::get_root_movie(void) =====
int __fastcall gameswf::root::get_root_movie(gameswf::root *this)
{
  return *((_DWORD *)this + 4);
}


// ===== 77415c gameswf::root::stop_drag(void) =====
int __fastcall gameswf::root::stop_drag(int this)
{
  *(_DWORD *)(this + 88) = 0;
  return this;
}


// ===== 774168 gameswf::root::get_movie_definition(void) =====
int __fastcall gameswf::root::get_movie_definition(gameswf::root *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 4) + 128))(*((_DWORD *)this + 4));
}


// ===== 774184 gameswf::root::get_current_frame(void) =====
int __fastcall gameswf::root::get_current_frame(gameswf::root *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 4) + 312))(*((_DWORD *)this + 4));
}


// ===== 7741a0 gameswf::root::get_frame_rate(void) =====
int __fastcall gameswf::root::get_frame_rate(gameswf::root *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 3) + 60))(*((_DWORD *)this + 3));
}


// ===== 7741bc gameswf::root::get_pixel_scale(void) =====
int __fastcall gameswf::root::get_pixel_scale(gameswf::root *this)
{
  return *((_DWORD *)this + 13);
}


// ===== 7741c4 gameswf::root::get_character(int) =====
int __fastcall gameswf::root::get_character(gameswf::root *this, int a2)
{
  return (*(int (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 4) + 124))(*((_DWORD *)this + 4), a2);
}


// ===== 7741e0 gameswf::root::set_background_color(gameswf::rgba const&) =====
void *__fastcall gameswf::root::set_background_color(int a1, const void *a2)
{
  return memcpy((void *)(a1 + 56), a2, 4u);
}


// ===== 7741f4 gameswf::root::set_background_alpha(float) =====
int __fastcall gameswf::root::set_background_alpha(gameswf::root *this, float a2)
{
  int result; // r0

  result = (int)(float)((float)(a2 * 255.0) + 0.5);
  if ( result <= 254 )
  {
    if ( result <= 0 )
    {
      *((_BYTE *)this + 59) = 0;
      return 0;
    }
  }
  else
  {
    LOBYTE(result) = -1;
  }
  result = (unsigned __int8)result;
  *((_BYTE *)this + 59) = result;
  return result;
}


// ===== 774244 gameswf::root::get_background_alpha(void) =====
float __fastcall gameswf::root::get_background_alpha(gameswf::root *this)
{
  return (float)*((unsigned __int8 *)this + 59) / 255.0;
}


// ===== 774260 gameswf::root::goto_frame(int) =====
int __fastcall gameswf::root::goto_frame(gameswf::root *this, int a2)
{
  return (*(int (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 4) + 332))(*((_DWORD *)this + 4), a2);
}


// ===== 77427c gameswf::root::has_looped(void) =====
int __fastcall gameswf::root::has_looped(gameswf::root *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 4) + 324))(*((_DWORD *)this + 4));
}


// ===== 774298 gameswf::root::end_display(void) =====
int __fastcall gameswf::root::end_display(gameswf::root *this)
{
  int result; // r0

  if ( gameswf::s_render_handler )
  {
    result = (*(int (__fastcall **)(int))(*(_DWORD *)gameswf::s_render_handler + 44))(gameswf::s_render_handler);
    if ( gameswf::s_render_handler )
      return (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)gameswf::s_render_handler + 72))(
               gameswf::s_render_handler,
               0);
  }
  return result;
}


// ===== 7742f4 gameswf::root::goto_labeled_frame(gameswf::tu_stringi const&) =====
int __fastcall gameswf::root::goto_labeled_frame(gameswf::root *a1, int a2)
{
  int v2; // r3
  int result; // r0
  int v5; // [sp+4h] [bp-4h] BYREF

  v2 = *((_DWORD *)a1 + 3);
  v5 = -1;
  result = (*(int (__fastcall **)(int, int, int *))(*(_DWORD *)v2 + 96))(v2, a2, &v5);
  if ( result )
  {
    gameswf::root::goto_frame(a1, v5);
    return 1;
  }
  return result;
}


// ===== 774340 gameswf::root::set_play_state(gameswf::character::play_state) =====
int __fastcall gameswf::root::set_play_state(int a1)
{
  return (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 16) + 148))(*(_DWORD *)(a1 + 16));
}


// ===== 77435c gameswf::root::get_play_state(void) =====
int __fastcall gameswf::root::get_play_state(gameswf::root *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 4) + 152))(*((_DWORD *)this + 4));
}


// ===== 774378 gameswf::root::set_variable(char const*,char const*) =====
int __fastcall gameswf::root::set_variable(gameswf::root *this, const char *a2, const char *a3)
{
  return (*(int (__fastcall **)(_DWORD, const char *, const char *))(**((_DWORD **)this + 4) + 264))(
           *((_DWORD *)this + 4),
           a2,
           a3);
}


// ===== 774394 gameswf::root::set_variable(char const*,wchar_t const*) =====
int __fastcall gameswf::root::set_variable(gameswf::root *this, const char *a2, const wchar_t *a3)
{
  return (*(int (__fastcall **)(_DWORD, const char *, const wchar_t *))(**((_DWORD **)this + 4) + 268))(
           *((_DWORD *)this + 4),
           a2,
           a3);
}


// ===== 7743b0 gameswf::root::get_variable(char const*) =====
int __fastcall gameswf::root::get_variable(gameswf::root *this, const char *a2)
{
  return (*(int (__fastcall **)(_DWORD, const char *))(**((_DWORD **)this + 4) + 272))(*((_DWORD *)this + 4), a2);
}


// ===== 7743cc gameswf::root::call_method_args(char const*,char const*,std::__va_list) =====
int __fastcall gameswf::root::call_method_args(gameswf::root *this, const char *a2, const char *a3, __va_list a4)
{
  return (*(int (__fastcall **)(_DWORD, const char *, const char *, void *))(**((_DWORD **)this + 4) + 140))(
           *((_DWORD *)this + 4),
           a2,
           a3,
           a4.__ap);
}


// ===== 7743e8 gameswf::root::call_method(char const*,gameswf::as_value *,int) =====
int __fastcall gameswf::root::call_method(int a1, int a2)
{
  (*(void (__fastcall **)(int, _DWORD))(**(_DWORD **)(a2 + 16) + 144))(a1, *(_DWORD *)(a2 + 16));
  return a1;
}


// ===== 77441c gameswf::root::set_visible(bool) =====
int __fastcall gameswf::root::set_visible(int this, bool a2)
{
  *(_BYTE *)(*(_DWORD *)(this + 16) + 155) = a2;
  return this;
}


// ===== 774428 gameswf::root::get_visible(void) =====
int __fastcall gameswf::root::get_visible(gameswf::root *this)
{
  return *(unsigned __int8 *)(*((_DWORD *)this + 4) + 155);
}


// ===== 774434 gameswf::root::get_userdata(void) =====
int __fastcall gameswf::root::get_userdata(gameswf::root *this)
{
  return *((_DWORD *)this + 21);
}


// ===== 77443c gameswf::root::set_userdata(void *) =====
int __fastcall gameswf::root::set_userdata(int this, void *a2)
{
  *(_DWORD *)(this + 84) = a2;
  return this;
}


// ===== 774444 gameswf::root::attach_display_callback(char const*,void (*)(void *),void *) =====
int __fastcall gameswf::root::attach_display_callback(
        gameswf::root *this,
        const char *a2,
        void (*a3)(void *),
        void *a4)
{
  return (*(int (__fastcall **)(_DWORD, const char *, void (*)(void *), void *))(**((_DWORD **)this + 4) + 276))(
           *((_DWORD *)this + 4),
           a2,
           a3,
           a4);
}


// ===== 774460 `global constructor keyed to'.._.._src_gameswf_gameswf_root.cpp =====
int `global constructor keyed to'.._.._src_gameswf_gameswf_root.cpp()
{
  dword_9FC9A4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9FC9A0 = 1056964608;
  return _aeabi_atexit((int)&gameswf::s_gameswf_engine, (int)gameswf::tu_mutex::~tu_mutex, (int)&_dso_handle);
}


// ===== 7744a4 gameswf::root::call_method(char const*,char const*,...) =====
int gameswf::root::call_method(gameswf::root *this, const char *a2, const char *a3, ...)
{
  return (*(int (__fastcall **)(_DWORD, const char *, const char *))(**((_DWORD **)this + 4) + 140))(
           *((_DWORD *)this + 4),
           a2,
           a3);
}


// ===== 7744e0 gameswf::root::set_frame_rate(float) =====
int __fastcall gameswf::root::set_frame_rate(gameswf::root *this, float a2)
{
  int result; // r0

  result = a2 >= 1.0;
  if ( a2 >= 1.0 )
  {
    result = a2 <= 120.0;
    if ( a2 <= 120.0 )
    {
      *((float *)this + 36) = 1.0 / a2;
      return gameswf::movie_def_impl::set_frame_rate(*((_DWORD *)this + 3), a2);
    }
  }
  return result;
}


// ===== 77453c gameswf::root::set_root_movie(gameswf::character *) =====
gameswf::ref_counted *__fastcall gameswf::root::set_root_movie(gameswf::ref_counted **this, gameswf::character *a2)
{
  return gameswf::smart_ptr<gameswf::character>::set_ref(this + 4, a2);
}


// ===== 774544 gameswf::root::notify_key_event(gameswf::player *,gameswf::key::code,bool) =====
void *__fastcall gameswf::root::notify_key_event(gameswf *a1, gameswf::player *a2, int a3, int a4)
{
  gameswf *v8; // r0
  _BYTE v10[2]; // [sp+0h] [bp-Ch] BYREF
  __int16 v11; // [sp+2h] [bp-Ah]
  int v12; // [sp+4h] [bp-8h]

  gameswf::gameswf_engine_mutex(a1);
  v8 = (gameswf *)gameswf::player::notify_key_object(a2, a3, a4);
  if ( a4 )
  {
    v10[0] = 8;
    v10[1] = a3;
    v12 = 0;
    v11 = 0;
    gameswf::listener::notify((_DWORD *)a1 + 42, (int)v10);
  }
  return gameswf::gameswf_engine_mutex(v8);
}


// ===== 7745a8 gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::resize(int) [clone] =====
void __fastcall gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::resize(_DWORD *a1)
{
  int v1; // r4
  int i; // r5
  _DWORD *v4; // r3
  int v6; // r3
  _DWORD *v7; // r0

  v1 = a1[1];
  if ( v1 > 0 )
  {
    for ( i = 0; i != v1; ++i )
    {
      v4 = *(_DWORD **)(*a1 + 8 * i);
      if ( v4 )
      {
        if ( (*v4)-- == 1 )
          gameswf::free_internal(v4);
      }
    }
    goto LABEL_8;
  }
  if ( v1 >= 0 )
  {
LABEL_8:
    a1[1] = 0;
    return;
  }
  v6 = 8 * v1;
  do
  {
    ++v1;
    v7 = (_DWORD *)(*a1 + v6);
    *v7 = 0;
    v7[1] = 0;
    v6 += 8;
  }
  while ( v1 );
  a1[1] = 0;
}


// ===== 77463c gameswf::smart_ptr<gameswf::movie_def_impl>::set_ref(gameswf::movie_def_impl*) [clone] =====
void __fastcall gameswf::smart_ptr<gameswf::movie_def_impl>::set_ref(void (__fastcall ****a1)(_DWORD))
{
  void (__fastcall ***v2)(_DWORD); // r0

  v2 = *a1;
  if ( v2 )
  {
    gameswf::ref_counted::drop_ref(v2);
    *a1 = nullptr;
  }
}


// ===== 774660 gameswf::root::set_flash_vars(gameswf::tu_string const&) =====
char *__fastcall gameswf::root::set_flash_vars(char *this, const char **a2)
{
  const char *v2; // r4
  int v3; // r3
  const char *v4; // r6
  const gameswf::tu_string *v5; // r2
  const gameswf::tu_string *v6; // r3
  char *v7; // r4
  int root_movie; // r11
  void (__fastcall *v9)(int, _BYTE *, _BYTE *); // r6
  char *v10; // r1
  int v11; // r4
  bool v12; // zf
  gameswf::root *v13; // [sp+0h] [bp-6Ch]
  const gameswf::tu_string *v14; // [sp+Ch] [bp-60h]
  const gameswf::tu_string *v15; // [sp+14h] [bp-58h]
  _BYTE v16[12]; // [sp+1Ch] [bp-50h] BYREF
  _BYTE v17[8]; // [sp+28h] [bp-44h] BYREF
  void *v18; // [sp+34h] [bp-38h]
  char v19; // [sp+3Ch] [bp-30h] BYREF
  _BYTE v20[3]; // [sp+3Dh] [bp-2Fh] BYREF
  char *v21; // [sp+48h] [bp-24h]
  _BYTE v22[8]; // [sp+50h] [bp-1Ch] BYREF
  void *p; // [sp+5Ch] [bp-10h]

  v14 = (const gameswf::tu_string *)a2;
  v3 = *(char *)a2;
  v13 = (gameswf::root *)this;
  if ( v3 == -1 )
  {
    v2 = a2[3];
    v15 = (const gameswf::tu_string *)((char *)a2 + 1);
  }
  else
  {
    a2 = (const char **)((char *)a2 + 1);
  }
  if ( v3 != -1 )
  {
    v15 = (const gameswf::tu_string *)a2;
    v2 = (const char *)a2;
  }
  while ( *v2 )
  {
    this = strchr(v2, 61);
    if ( !this )
      return this;
    v4 = this + 1;
    gameswf::tu_string::tu_string((gameswf::tu_string *)v22, v2, this - v2);
    v7 = strchr(v4, 44);
    if ( !v7 )
    {
      v11 = *(char *)v14;
      v12 = v11 == -1;
      if ( v11 == -1 )
      {
        v5 = v14;
      }
      else
      {
        v6 = v15;
        --v11;
      }
      if ( v12 )
      {
        v6 = *((const gameswf::tu_string **)v5 + 3);
        v11 = *((_DWORD *)v5 + 1) - 1;
      }
      v7 = (char *)v6 + v11;
    }
    gameswf::tu_string::tu_string((gameswf::tu_string *)&v19, v4, v7 - v4);
    root_movie = gameswf::root::get_root_movie(v13);
    v9 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)root_movie + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v17, (const gameswf::tu_string *)v22);
    v16[0] = 0;
    if ( v19 == -1 )
      v10 = v21;
    else
      v10 = v20;
    v16[1] = 0;
    gameswf::as_value::set_string((gameswf::as_value *)v16, v10);
    v9(root_movie, v17, v16);
    this = (char *)gameswf::as_value::drop_refs((gameswf::as_value *)v16);
    if ( v17[0] == -1 )
    {
      gameswf::free_internal(v18);
      v2 = v7 + 1;
      if ( v19 == -1 )
LABEL_18:
        gameswf::free_internal(v21);
    }
    else
    {
      v2 = v7 + 1;
      if ( v19 == -1 )
        goto LABEL_18;
    }
    if ( v22[0] != -1 )
      continue;
    gameswf::free_internal(p);
  }
  return this;
}


// ===== 774848 gameswf::array<gameswf::smart_ptr<gameswf::character>>::resize(int) [clone] =====
void __fastcall gameswf::array<gameswf::smart_ptr<gameswf::character>>::resize(_DWORD *a1)
{
  int v1; // r4
  int i; // r5
  void (__fastcall ***v4)(_DWORD); // r0
  int v5; // r3

  v1 = a1[1];
  if ( v1 > 0 )
  {
    for ( i = 0; i != v1; ++i )
    {
      v4 = *(void (__fastcall ****)(_DWORD))(*a1 + 4 * i);
      if ( v4 )
        gameswf::ref_counted::drop_ref(v4);
    }
    goto LABEL_6;
  }
  if ( v1 >= 0 )
  {
LABEL_6:
    a1[1] = 0;
    return;
  }
  v5 = 4 * v1;
  do
  {
    ++v1;
    *(_DWORD *)(*a1 + v5) = 0;
    v5 += 4;
  }
  while ( v1 );
  a1[1] = 0;
}


// ===== 7748b8 gameswf::root::flush_buffered_text(void) =====
void __fastcall gameswf::root::flush_buffered_text(gameswf::root *this)
{
  int v2; // r4
  int v3; // r3

  if ( *((int *)this + 39) > 0 )
  {
    *((_BYTE *)this + 134) = 1;
    v2 = 0;
    do
    {
      v3 = *(_DWORD *)(*((_DWORD *)this + 38) + 4 * v2++);
      (*(void (__fastcall **)(int))(*(_DWORD *)v3 + 288))(v3);
    }
    while ( v2 < *((_DWORD *)this + 39) );
    *((_BYTE *)this + 134) = 0;
    gameswf::array<gameswf::smart_ptr<gameswf::character>>::resize((_DWORD *)this + 38);
  }
}


// ===== 774918 gameswf::root::set_active_entity(gameswf::character *) =====
void __fastcall gameswf::root::set_active_entity(gameswf::root *this, gameswf::character *a2)
{
  gameswf::ref_counted *v2; // r4
  gameswf::ref_counted *v5; // r0
  gameswf::ref_counted **v6; // r5
  void (__fastcall *v7)(gameswf::ref_counted *, _BYTE *); // r3
  int (__fastcall *v8)(gameswf::ref_counted *, _BYTE *); // r3
  _BYTE v9[2]; // [sp+0h] [bp-14h] BYREF
  __int16 v10; // [sp+2h] [bp-12h]
  int v11; // [sp+4h] [bp-10h]
  _BYTE v12[2]; // [sp+8h] [bp-Ch] BYREF
  __int16 v13; // [sp+Ah] [bp-Ah]
  int v14; // [sp+Ch] [bp-8h]

  v2 = *((gameswf::ref_counted **)this + 34);
  if ( v2 )
  {
    gameswf::ref_counted::add_ref(*((_DWORD *)this + 34));
    v5 = *((gameswf::ref_counted **)this + 34);
    if ( v2 == v5 )
    {
      gameswf::smart_ptr<gameswf::character>::set_ref((gameswf::ref_counted **)this + 34, a2);
    }
    else
    {
      if ( v5 )
      {
        v7 = *(void (__fastcall **)(gameswf::ref_counted *, _BYTE *))(*(_DWORD *)v5 + 44);
        v12[0] = 21;
        v12[1] = 0;
        v13 = 0;
        v14 = 0;
        v6 = (gameswf::ref_counted **)((char *)this + 136);
        v7(v5, v12);
        gameswf::smart_ptr<gameswf::character>::set_ref(v6, nullptr);
      }
      else
      {
        v6 = (gameswf::ref_counted **)((char *)this + 136);
      }
      v8 = *(int (__fastcall **)(gameswf::ref_counted *, _BYTE *))(*(_DWORD *)v2 + 44);
      v9[0] = 20;
      v11 = 0;
      v9[1] = 0;
      v10 = 0;
      if ( v8(v2, v9) )
        gameswf::smart_ptr<gameswf::character>::set_ref(v6, v2);
      gameswf::smart_ptr<gameswf::character>::set_ref(v6, a2);
    }
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v2);
  }
  else
  {
    gameswf::smart_ptr<gameswf::character>::set_ref((gameswf::ref_counted **)this + 34, a2);
  }
}


// ===== 774a04 gameswf::root::generate_mouse_button_events(gameswf::mouse_button_state *) =====
void __fastcall gameswf::root::generate_mouse_button_events(int a1, int a2)
{
  gameswf::ref_counted *v2; // r3
  bool v3; // zf
  gameswf::ref_counted *v6; // r5
  gameswf::ref_counted *v7; // r2
  gameswf::ref_counted *v8; // r1
  gameswf::ref_counted *v9; // r1
  void (__fastcall *v10)(gameswf::ref_counted *, _BYTE *); // r3
  void (__fastcall *v11)(gameswf::ref_counted *, _BYTE *); // r3
  gameswf::ref_counted *v12; // r0
  void (__fastcall *v13)(gameswf::ref_counted *, _BYTE *); // r3
  int (__fastcall *v14)(gameswf::ref_counted *, _BYTE *); // r3
  void (__fastcall *v15)(gameswf::ref_counted *, _BYTE *); // r3
  int v16; // r3
  int v17; // r12
  int v18; // r1
  void (__fastcall *v19)(gameswf::ref_counted *, _BYTE *); // r3
  void (__fastcall *v20)(gameswf::ref_counted *, _BYTE *); // r3
  void (__fastcall *v21)(gameswf::ref_counted *, _BYTE *); // r3
  void (__fastcall *v22)(gameswf::ref_counted *, _BYTE *); // r3
  void (__fastcall *v23)(gameswf::ref_counted *, _BYTE *); // r3
  _BYTE v24[2]; // [sp+4h] [bp-58h] BYREF
  __int16 v25; // [sp+6h] [bp-56h]
  int v26; // [sp+8h] [bp-54h]
  _BYTE v27[2]; // [sp+Ch] [bp-50h] BYREF
  __int16 v28; // [sp+Eh] [bp-4Eh]
  int v29; // [sp+10h] [bp-4Ch]
  _BYTE v30[2]; // [sp+14h] [bp-48h] BYREF
  __int16 v31; // [sp+16h] [bp-46h]
  int v32; // [sp+18h] [bp-44h]
  _BYTE v33[2]; // [sp+1Ch] [bp-40h] BYREF
  __int16 v34; // [sp+1Eh] [bp-3Eh]
  int v35; // [sp+20h] [bp-3Ch]
  _BYTE v36[2]; // [sp+24h] [bp-38h] BYREF
  __int16 v37; // [sp+26h] [bp-36h]
  int v38; // [sp+28h] [bp-34h]
  _BYTE v39[2]; // [sp+2Ch] [bp-30h] BYREF
  __int16 v40; // [sp+2Eh] [bp-2Eh]
  int v41; // [sp+30h] [bp-2Ch]
  _BYTE v42[2]; // [sp+34h] [bp-28h] BYREF
  __int16 v43; // [sp+36h] [bp-26h]
  int v44; // [sp+38h] [bp-24h]
  _BYTE v45[2]; // [sp+3Ch] [bp-20h] BYREF
  __int16 v46; // [sp+3Eh] [bp-1Eh]
  int v47; // [sp+40h] [bp-1Ch]
  _BYTE v48[2]; // [sp+44h] [bp-18h] BYREF
  __int16 v49; // [sp+46h] [bp-16h]
  int v50; // [sp+48h] [bp-14h]
  _BYTE v51[2]; // [sp+4Ch] [bp-10h] BYREF
  __int16 v52; // [sp+4Eh] [bp-Eh]
  int v53; // [sp+50h] [bp-Ch]
  gameswf::ref_counted *v54[2]; // [sp+54h] [bp-8h] BYREF

  v2 = *(gameswf::ref_counted **)a2;
  v3 = *(_DWORD *)a2 == 0;
  v54[0] = *(gameswf::ref_counted **)a2;
  if ( !v3 )
    gameswf::ref_counted::add_ref((int)v2);
  v6 = *(gameswf::ref_counted **)(a2 + 4);
  if ( v6 )
    gameswf::ref_counted::add_ref(*(_DWORD *)(a2 + 4));
  v7 = v54[0];
  if ( v54[0] )
  {
    if ( (*(int (__fastcall **)(gameswf::ref_counted *))(*(_DWORD *)v54[0] + 348))(v54[0]) )
    {
      if ( gameswf::s_render_handler )
        (*(void (__fastcall **)(int, int))(*(_DWORD *)gameswf::s_render_handler + 152))(gameswf::s_render_handler, 1);
LABEL_9:
      v7 = v54[0];
      v8 = v54[0];
      if ( !*(_BYTE *)(a2 + 8) )
        goto LABEL_10;
      goto LABEL_37;
    }
    v16 = gameswf::s_render_handler;
    if ( !gameswf::s_render_handler )
      goto LABEL_9;
    goto LABEL_35;
  }
  v16 = gameswf::s_render_handler;
  if ( gameswf::s_render_handler )
  {
LABEL_35:
    (*(void (__fastcall **)(int))(*(_DWORD *)v16 + 152))(v16);
    v7 = v54[0];
  }
  v8 = v7;
  if ( !*(_BYTE *)(a2 + 8) )
    goto LABEL_10;
LABEL_37:
  if ( v8 )
  {
    if ( !(*(int (__fastcall **)(gameswf::ref_counted *))(*(_DWORD *)v8 + 116))(v8) )
    {
LABEL_39:
      v7 = v54[0];
      v8 = v54[0];
      goto LABEL_40;
    }
    v7 = v54[0];
    v8 = v54[0];
  }
  if ( v6 )
  {
    if ( v6 != v8 )
    {
      if ( (*(int (__fastcall **)(gameswf::ref_counted *))(*(_DWORD *)v6 + 116))(v6) )
      {
        gameswf::smart_ptr<gameswf::character>::set_ref(v54, v6);
        v20 = *(void (__fastcall **)(gameswf::ref_counted *, _BYTE *))(*(_DWORD *)v54[0] + 44);
        v53 = 0;
        v51[1] = 0;
        v52 = 0;
        v51[0] = 6;
        v20(v54[0], v51);
        v7 = v54[0];
        *(_BYTE *)(a2 + 10) = 1;
        v8 = v7;
        goto LABEL_53;
      }
      goto LABEL_39;
    }
    v8 = v6;
  }
LABEL_40:
  v17 = *(unsigned __int8 *)(a2 + 10);
  if ( !*(_BYTE *)(a2 + 10) )
  {
    if ( v6 == v8 )
    {
      if ( v6 )
      {
        v23 = *(void (__fastcall **)(gameswf::ref_counted *, _BYTE *))(*(_DWORD *)v6 + 44);
        v48[0] = 6;
        v50 = v17;
        v48[1] = v17;
        v49 = v17;
        v23(v6, v48);
        v7 = v54[0];
      }
      *(_BYTE *)(a2 + 10) = 1;
    }
    goto LABEL_42;
  }
LABEL_53:
  if ( v8 != v6 )
  {
    if ( v8 )
    {
      v21 = *(void (__fastcall **)(gameswf::ref_counted *, _BYTE *))(*(_DWORD *)v8 + 44);
      v45[0] = 7;
      v47 = 0;
      v45[1] = 0;
      v46 = 0;
      v21(v8, v45);
      v7 = v54[0];
    }
    *(_BYTE *)(a2 + 10) = 0;
  }
LABEL_42:
  v18 = *(unsigned __int8 *)(a2 + 9);
  if ( *(_BYTE *)(a2 + 9) )
    goto LABEL_46;
  *(_BYTE *)(a2 + 8) = v18;
  if ( v7 )
  {
    if ( *(_BYTE *)(a2 + 10) )
    {
      v19 = *(void (__fastcall **)(gameswf::ref_counted *, _BYTE *))(*(_DWORD *)v7 + 44);
      v42[0] = 2;
      v44 = v18;
      v42[1] = v18;
      v43 = v18;
      v19(v7, v42);
      v7 = v54[0];
    }
    else
    {
      if ( !(*(int (__fastcall **)(gameswf::ref_counted *))(*(_DWORD *)v7 + 116))(v7) )
      {
        v22 = *(void (__fastcall **)(gameswf::ref_counted *, _BYTE *))(*(_DWORD *)v54[0] + 44);
        v39[0] = 3;
        v41 = 0;
        v39[1] = 0;
        v40 = 0;
        v22(v54[0], v39);
      }
      v7 = v54[0];
    }
LABEL_46:
    if ( *(_BYTE *)(a2 + 8) )
      goto LABEL_28;
  }
  v8 = v7;
LABEL_10:
  if ( v6 == v8 )
  {
    v9 = v6;
  }
  else
  {
    if ( v8 )
    {
      v10 = *(void (__fastcall **)(gameswf::ref_counted *, _BYTE *))(*(_DWORD *)v8 + 44);
      v36[0] = 5;
      v38 = 0;
      v36[1] = 0;
      v37 = 0;
      v10(v8, v36);
    }
    gameswf::smart_ptr<gameswf::character>::set_ref(v54, v6);
    v7 = v54[0];
    if ( v54[0] )
    {
      v11 = *(void (__fastcall **)(gameswf::ref_counted *, _BYTE *))(*(_DWORD *)v54[0] + 44);
      v33[0] = 4;
      v35 = 0;
      v33[1] = 0;
      v34 = 0;
      v11(v54[0], v33);
      v7 = v54[0];
    }
    *(_BYTE *)(a2 + 10) = 1;
    v9 = v7;
  }
  if ( *(_BYTE *)(a2 + 9) )
  {
    v12 = *(gameswf::ref_counted **)(a1 + 136);
    if ( v12 != v9 )
    {
      if ( v12 )
      {
        v13 = *(void (__fastcall **)(gameswf::ref_counted *, _BYTE *))(*(_DWORD *)v12 + 44);
        v30[0] = 21;
        v30[1] = 0;
        v31 = 0;
        v32 = 0;
        v13(v12, v30);
        gameswf::smart_ptr<gameswf::character>::set_ref((gameswf::ref_counted **)(a1 + 136), nullptr);
        v7 = v54[0];
        v9 = v54[0];
      }
      if ( !v9 )
        goto LABEL_27;
      v14 = *(int (__fastcall **)(gameswf::ref_counted *, _BYTE *))(*(_DWORD *)v9 + 44);
      v27[0] = 20;
      v29 = 0;
      v27[1] = 0;
      v28 = 0;
      if ( v14(v9, v27) )
        gameswf::smart_ptr<gameswf::character>::set_ref((gameswf::ref_counted **)(a1 + 136), v54[0]);
      v7 = v54[0];
      v12 = v54[0];
    }
    if ( v12 )
    {
      v15 = *(void (__fastcall **)(gameswf::ref_counted *, _BYTE *))(*(_DWORD *)v12 + 44);
      v24[0] = 1;
      v26 = 0;
      v24[1] = 0;
      v25 = 0;
      v15(v12, v24);
      v7 = v54[0];
    }
LABEL_27:
    *(_BYTE *)(a2 + 8) = 1;
    *(_BYTE *)(a2 + 10) = 1;
LABEL_28:
    v9 = v7;
  }
  gameswf::smart_ptr<gameswf::character>::set_ref((gameswf::ref_counted **)a2, v9);
  gameswf::smart_ptr<gameswf::character>::set_ref((gameswf::ref_counted **)(a2 + 4), v6);
  if ( v6 )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v6);
  if ( v54[0] )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v54[0]);
}


// ===== 774ebc gameswf::root::~root() =====
void __fastcall gameswf::root::~root(gameswf::ref_counted **this)
{
  _DWORD *v2; // r0
  void (__fastcall ***v4)(_DWORD); // r0
  void (__fastcall ***v5)(_DWORD); // r0
  void (__fastcall ***v6)(_DWORD); // r0
  void (__fastcall ***v7)(_DWORD); // r0
  void (__fastcall ***v8)(_DWORD); // r0

  *this = (gameswf::ref_counted *)off_9902A0;
  gameswf::smart_ptr<gameswf::character>::set_ref(this + 4, nullptr);
  gameswf::smart_ptr<gameswf::movie_def_impl>::set_ref((void (__fastcall ****)(_DWORD))this + 3);
  v2 = *(this + 50);
  if ( v2 )
  {
    if ( (*v2)-- == 1 )
      gameswf::free_internal(v2);
  }
  gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::resize(this + 46);
  gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::reserve((int)(this + 46), 0);
  gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::resize(this + 42);
  gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::reserve((int)(this + 42), 0);
  gameswf::array<gameswf::smart_ptr<gameswf::character>>::resize(this + 38);
  gameswf::array<gameswf::smart_ptr<gameswf::character>>::reserve((int)(this + 38), 0);
  v4 = (void (__fastcall ***)(_DWORD))*(this + 34);
  if ( v4 )
    gameswf::ref_counted::drop_ref(v4);
  v5 = (void (__fastcall ***)(_DWORD))*(this + 31);
  if ( v5 )
    gameswf::ref_counted::drop_ref(v5);
  v6 = (void (__fastcall ***)(_DWORD))*(this + 30);
  if ( v6 )
    gameswf::ref_counted::drop_ref(v6);
  v7 = (void (__fastcall ***)(_DWORD))*(this + 4);
  if ( v7 )
    gameswf::ref_counted::drop_ref(v7);
  v8 = (void (__fastcall ***)(_DWORD))*(this + 3);
  if ( v8 )
    gameswf::ref_counted::drop_ref(v8);
  gameswf::ref_counted::~ref_counted((gameswf::ref_counted *)this);
}


// ===== 774fc4 gameswf::root::~root() =====
void __fastcall gameswf::root::~root(gameswf::ref_counted **this)
{
  _DWORD *v2; // r0
  void (__fastcall ***v4)(_DWORD); // r0
  void (__fastcall ***v5)(_DWORD); // r0
  void (__fastcall ***v6)(_DWORD); // r0
  void (__fastcall ***v7)(_DWORD); // r0
  void (__fastcall ***v8)(_DWORD); // r0

  *this = (gameswf::ref_counted *)off_9902A0;
  gameswf::smart_ptr<gameswf::character>::set_ref(this + 4, nullptr);
  gameswf::smart_ptr<gameswf::movie_def_impl>::set_ref((void (__fastcall ****)(_DWORD))this + 3);
  v2 = *(this + 50);
  if ( v2 )
  {
    if ( (*v2)-- == 1 )
      gameswf::free_internal(v2);
  }
  gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::resize(this + 46);
  gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::reserve((int)(this + 46), 0);
  gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::resize(this + 42);
  gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::reserve((int)(this + 42), 0);
  gameswf::array<gameswf::smart_ptr<gameswf::character>>::resize(this + 38);
  gameswf::array<gameswf::smart_ptr<gameswf::character>>::reserve((int)(this + 38), 0);
  v4 = (void (__fastcall ***)(_DWORD))*(this + 34);
  if ( v4 )
    gameswf::ref_counted::drop_ref(v4);
  v5 = (void (__fastcall ***)(_DWORD))*(this + 31);
  if ( v5 )
    gameswf::ref_counted::drop_ref(v5);
  v6 = (void (__fastcall ***)(_DWORD))*(this + 30);
  if ( v6 )
    gameswf::ref_counted::drop_ref(v6);
  v7 = (void (__fastcall ***)(_DWORD))*(this + 4);
  if ( v7 )
    gameswf::ref_counted::drop_ref(v7);
  v8 = (void (__fastcall ***)(_DWORD))*(this + 3);
  if ( v8 )
    gameswf::ref_counted::drop_ref(v8);
  gameswf::ref_counted::~ref_counted((gameswf::ref_counted *)this);
}


// ===== 7750cc gameswf::root::~root() =====
void __fastcall gameswf::root::~root(gameswf::ref_counted **this)
{
  gameswf::root::~root(this);
  LC_API_FREE_0(this);
}


// ===== 7750e8 gameswf::character::notify_need_advance(void) =====
void __fastcall gameswf::character::notify_need_advance(gameswf::character **this)
{
  gameswf::character *v1; // r4
  gameswf::character *v2; // r3
  _BYTE *v3; // r0

  v1 = (gameswf::character *)this;
  v2 = *(this + 16);
  *((_BYTE *)this + 157) = 1;
  if ( v2 )
  {
    while ( 1 )
    {
      v3 = *((_BYTE **)v1 + 15);
      if ( !v3[4] )
        break;
      v1 = v2;
      v2 = *((gameswf::character **)v2 + 16);
      *((_BYTE *)v1 + 157) = 1;
      if ( !v2 )
        return;
    }
    if ( (*(_DWORD *)v3)-- == 1 )
      gameswf::free_internal(v3);
    *((_DWORD *)v1 + 16) = 0;
    *((_DWORD *)v1 + 15) = 0;
  }
}


// ===== 775154 gameswf::root::start_drag(gameswf::character *,bool,bool,gameswf::rect &) =====
void __fastcall gameswf::root::start_drag(int a1, gameswf::character **this, char a3, char a4, _DWORD *a5)
{
  int v9; // r3

  if ( *(_DWORD *)(a1 + 88) )
    gameswf::root::stop_drag(a1);
  *(_BYTE *)(a1 + 93) = a3;
  *(_BYTE *)(a1 + 94) = a4;
  *(_DWORD *)(a1 + 88) = this;
  *(_DWORD *)(a1 + 96) = *a5;
  *(_DWORD *)(a1 + 100) = a5[2];
  *(_DWORD *)(a1 + 104) = a5[1];
  v9 = a5[3];
  *(_BYTE *)(a1 + 92) = 0;
  *(_DWORD *)(a1 + 108) = v9;
  gameswf::character::notify_need_advance(this);
}


// ===== 7751bc gameswf::root::begin_display(void) =====
void __fastcall gameswf::root::begin_display(gameswf::root *this)
{
  _DWORD *v1; // r3
  int v2; // r2
  int v3; // r2
  int v5; // r3
  _BYTE *v6; // r0
  int v7; // r1
  int v8; // r2
  int v10; // [sp+1Ch] [bp-18h] BYREF
  int v11; // [sp+20h] [bp-14h]
  int v12; // [sp+24h] [bp-10h] BYREF
  int v13; // [sp+28h] [bp-Ch]
  int v14; // [sp+2Ch] [bp-8h]

  v1 = *((_DWORD **)this + 3);
  v2 = v1[45];
  v13 = v1[47];
  v12 = v2;
  v3 = v1[46];
  v11 = v1[48];
  v10 = v3;
  gameswf::root::logical_to_screen(this, (float *)&v12);
  gameswf::root::logical_to_screen(this, (float *)&v10);
  if ( gameswf::s_render_handler )
    (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)gameswf::s_render_handler + 48))(gameswf::s_render_handler, 0);
  v5 = *((_DWORD *)this + 51);
  if ( v5 )
  {
    v6 = *((_BYTE **)this + 50);
    if ( !v6[4] )
    {
      if ( (*(_DWORD *)v6)-- == 1 )
        gameswf::free_internal(v6);
      v5 = 0;
      *((_DWORD *)this + 50) = 0;
      *((_DWORD *)this + 51) = 0;
    }
  }
  if ( gameswf::s_render_handler )
  {
    (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)gameswf::s_render_handler + 72))(
      gameswf::s_render_handler,
      *(_DWORD *)(v5 + 172));
    v7 = *((_DWORD *)this + 14);
    v8 = *((_DWORD *)this + 5);
    v14 = v7;
    if ( gameswf::s_render_handler )
      (*(void (__fastcall **)(int, int, int, _DWORD, _DWORD, _DWORD, int, int, int, int))(*(_DWORD *)gameswf::s_render_handler
                                                                                        + 40))(
        gameswf::s_render_handler,
        v7,
        v8,
        *((_DWORD *)this + 6),
        *((_DWORD *)this + 7),
        *((_DWORD *)this + 8),
        v12,
        v10,
        v13,
        v11);
  }
}


// ===== 775304 gameswf::root::advance(float,bool) =====
void *__fastcall gameswf::root::advance(gameswf::root *this, float a2, int a3)
{
  gameswf::listener *v4; // r6
  float v7; // r0
  float v8; // r1
  float v9; // r0
  float v11; // r1
  gameswf::sprite_instance *v12; // r8
  gameswf::sprite_instance *v13; // r0
  float v14; // r1
  int v15; // r2
  int v16; // r0
  void (__fastcall *v17)(int, _BYTE *); // r3
  int v18; // r1
  int v19; // r3
  int v20; // r8
  int v21; // r0
  _BYTE *v22; // r3
  gameswf::player *v23; // r0
  int v24; // r3
  gameswf::player *v25; // r5
  _BYTE v27[2]; // [sp+0h] [bp-Ch] BYREF
  __int16 v28; // [sp+2h] [bp-Ah]
  int v29; // [sp+4h] [bp-8h]

  v4 = (gameswf::root *)((char *)this + 184);
  gameswf::gameswf_engine_mutex(this);
  gameswf::listener::advance(v4, a2);
  v7 = a2 + *((float *)this + 35);
  *((float *)this + 35) = v7;
  v8 = *((float *)this + 36);
  *((float *)this + 37) = *((float *)this + 37) - a2;
  LODWORD(v9) = v7 >= v8;
  if ( v9 != 0.0 )
  {
    gameswf::tu_random::next_random((gameswf::tu_random *)LODWORD(v9));
    if ( !*((_BYTE *)this + 132) )
    {
      v18 = *((_DWORD *)this + 51);
      if ( v18 )
      {
        v19 = *((_DWORD *)this + 50);
        v20 = *(unsigned __int8 *)(v19 + 4);
        if ( !*(_BYTE *)(v19 + 4) )
        {
          gameswf::smart_ptr_proxy::operator=((_DWORD **)this + 50, (_DWORD *)*(unsigned __int8 *)(v19 + 4));
          *((_DWORD *)this + 51) = v20;
          v18 = v20;
        }
      }
      gameswf::root::set_flash_vars((char *)this, (const char **)(v18 + 104));
    }
    v11 = *((float *)this + 35);
    do
    {
      if ( *((float *)this + 36) > v11 )
        break;
      if ( !*((_BYTE *)this + 132) )
      {
        v12 = *((gameswf::sprite_instance **)this + 4);
        if ( v12 && (*(int (__fastcall **)(_DWORD, int))(*(_DWORD *)v12 + 8))(*((_DWORD *)this + 4), 2) )
          v13 = v12;
        else
          v13 = nullptr;
        gameswf::sprite_instance::do_init_actions(v13);
        (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 4) + 328))(*((_DWORD *)this + 4));
      }
      if ( a3 )
        v14 = *((float *)this + 36);
      else
        v14 = a2;
      (*(void (__fastcall **)(_DWORD, float))(**((_DWORD **)this + 4) + 92))(
        *((_DWORD *)this + 4),
        COERCE_FLOAT(LODWORD(v14)));
      v15 = *((unsigned __int8 *)this + 132);
      if ( !*((_BYTE *)this + 132) )
      {
        v16 = *((_DWORD *)this + 4);
        *((_BYTE *)this + 132) = 1;
        v17 = *(void (__fastcall **)(int, _BYTE *))(*(_DWORD *)v16 + 44);
        v29 = v15;
        v27[0] = 10;
        v27[1] = v15;
        v28 = v15;
        v17(v16, v27);
      }
      v11 = *((float *)this + 35) - *((float *)this + 36);
      *((float *)this + 35) = v11;
    }
    while ( a3 );
    if ( *((float *)this + 37) <= 0.0 )
    {
      v21 = *((_DWORD *)this + 51);
      if ( v21 )
      {
        v22 = *((_BYTE **)this + 50);
        if ( !v22[4] )
        {
          if ( (*(_DWORD *)v22)-- == 1 )
            gameswf::free_internal(v22);
          v21 = 0;
          *((_DWORD *)this + 50) = 0;
          *((_DWORD *)this + 51) = 0;
        }
      }
      gameswf::player::set_as_garbage(v21);
      gameswf::listener::alive(v4);
      (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 4) + 68))(*((_DWORD *)this + 4));
      v23 = *((gameswf::player **)this + 51);
      if ( v23 )
      {
        v24 = *((_DWORD *)this + 50);
        v25 = (gameswf::player *)*(unsigned __int8 *)(v24 + 4);
        if ( !*(_BYTE *)(v24 + 4) )
        {
          gameswf::smart_ptr_proxy::operator=((_DWORD **)this + 50, (_DWORD *)*(unsigned __int8 *)(v24 + 4));
          *((_DWORD *)this + 51) = v25;
          v23 = v25;
        }
      }
      gameswf::player::clear_garbage(v23);
      *((_DWORD *)this + 37) = 0x40000000;
    }
    v9 = fmodf(*((float *)this + 35), *((float *)this + 36));
    *((float *)this + 35) = v9;
  }
  return gameswf::gameswf_engine_mutex((gameswf *)LODWORD(v9));
}


// ===== 775574 gameswf::root::display(void) =====
int __fastcall gameswf::root::display(int this)
{
  gameswf::root *v1; // r4
  int v2; // r3

  v1 = (gameswf::root *)this;
  if ( *(_BYTE *)(*(_DWORD *)(this + 16) + 155) )
  {
    if ( *(_BYTE *)(this + 132) )
    {
      gameswf::root::begin_display((gameswf::root *)this);
      v2 = *((_DWORD *)v1 + 4);
      if ( !v2 )
      {
LABEL_5:
        gameswf::root::flush_buffered_text(v1);
        return gameswf::root::end_display(v1);
      }
    }
    else
    {
      gameswf::root::advance((gameswf::root *)this, 1.0, *(unsigned __int8 *)(this + 132));
      gameswf::root::begin_display(v1);
      v2 = *((_DWORD *)v1 + 4);
      if ( !v2 )
        goto LABEL_5;
    }
    (*(void (__fastcall **)(int))(*(_DWORD *)v2 + 288))(v2);
    goto LABEL_5;
  }
  return this;
}


// ===== 7755f4 gameswf::root::set_display_bounds(int,int,int,int,gameswf::scale_mode) =====
void __fastcall gameswf::root::set_display_bounds(int a1, int a2, int a3, int a4, int a5, int a6)
{
  int v10; // r11
  float *v11; // r8
  float v12; // r0
  float v13; // r3
  float v14; // r0
  float v15; // r10
  float v16; // r1
  float v17; // r7
  float v18; // r0
  float v19; // r7
  int v20; // r3
  _BYTE *v21; // r0
  int v22; // r0
  float v23; // r7
  gameswf::player *v24; // r8
  _BYTE *v25; // r0
  gameswf::as_object *v26; // r7
  void (__fastcall *v27)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  void (__fastcall *v28)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  void (__fastcall *v29)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  void (__fastcall *v30)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  int v31; // r3
  _BYTE *v32; // r0
  int v33; // r10
  void (__fastcall *v34)(int, _BYTE *, _BYTE *); // r7
  int v35; // r0
  bool v36; // zf
  float v37; // [sp+8h] [bp-CCh]
  int v38; // [sp+Ch] [bp-C8h]
  _BYTE v39[4]; // [sp+14h] [bp-C0h] BYREF
  gameswf::as_object *v40; // [sp+18h] [bp-BCh]
  _BYTE v41[4]; // [sp+20h] [bp-B4h] BYREF
  double v42; // [sp+24h] [bp-B0h]
  _BYTE v43[4]; // [sp+2Ch] [bp-A8h] BYREF
  double v44; // [sp+30h] [bp-A4h]
  _BYTE v45[4]; // [sp+38h] [bp-9Ch] BYREF
  double v46; // [sp+3Ch] [bp-98h]
  _BYTE v47[4]; // [sp+44h] [bp-90h] BYREF
  double v48; // [sp+48h] [bp-8Ch]
  double v49; // [sp+50h] [bp-84h]
  float v50; // [sp+58h] [bp-7Ch] BYREF
  float v51; // [sp+5Ch] [bp-78h]
  float v52; // [sp+60h] [bp-74h] BYREF
  float v53; // [sp+64h] [bp-70h]
  _BYTE v54[8]; // [sp+68h] [bp-6Ch] BYREF
  void *v55; // [sp+74h] [bp-60h]
  _BYTE v56[8]; // [sp+7Ch] [bp-58h] BYREF
  void *v57; // [sp+88h] [bp-4Ch]
  _BYTE v58[8]; // [sp+90h] [bp-44h] BYREF
  void *v59; // [sp+9Ch] [bp-38h]
  _BYTE v60[8]; // [sp+A4h] [bp-30h] BYREF
  void *p; // [sp+B0h] [bp-24h]
  _BYTE v62[8]; // [sp+B8h] [bp-1Ch] BYREF
  void *v63; // [sp+C4h] [bp-10h]

  v10 = a5;
  if ( !(*(int (__fastcall **)(int))(*(_DWORD *)gameswf::s_render_handler + 172))(gameswf::s_render_handler)
    || (*(int (__fastcall **)(int))(*(_DWORD *)gameswf::s_render_handler + 172))(gameswf::s_render_handler) == 2 )
  {
    v11 = *(float **)(a1 + 12);
    v12 = (float)a5 / (float)((float)(v11[48] - v11[47]) / 20.0);
    v13 = (float)a4 / (float)((float)(v11[46] - v11[45]) / 20.0);
    v38 = 1;
  }
  else
  {
    v11 = *(float **)(a1 + 12);
    v12 = (float)a5 / (float)((float)(v11[46] - v11[45]) / 20.0);
    v38 = 0;
    v13 = (float)a4 / (float)((float)(v11[48] - v11[47]) / 20.0);
  }
  v14 = v12 / v13;
  v37 = v14;
  if ( a6 == 1 )
  {
    if ( v14 < 1.0 )
      goto LABEL_30;
  }
  else
  {
    if ( a6 != 2 )
      goto LABEL_5;
    if ( v14 >= 1.0 )
    {
LABEL_30:
      v10 = (int)(float)((float)a5 / v14);
      a3 -= (v10 - a5) / 2;
      if ( *(_DWORD *)(a1 + 36) != a2 )
        goto LABEL_6;
LABEL_31:
      if ( *(_DWORD *)(a1 + 40) == a3 && *(_DWORD *)(a1 + 44) == a4 && *(_DWORD *)(a1 + 48) == v10 )
        return;
      goto LABEL_6;
    }
  }
  v35 = (int)(float)((float)a4 * v14) - a4;
  a4 = (int)(float)((float)a4 * v37);
  a2 -= v35 / 2;
LABEL_5:
  if ( *(_DWORD *)(a1 + 36) == a2 )
    goto LABEL_31;
LABEL_6:
  *(_DWORD *)(a1 + 36) = a2;
  *(_DWORD *)(a1 + 40) = a3;
  *(_DWORD *)(a1 + 44) = a4;
  *(_DWORD *)(a1 + 48) = v10;
  if ( v38 )
  {
    v15 = (float)a4 / (float)((float)(v11[46] - v11[45]) / 20.0);
    v16 = v11[47];
    v17 = (float)v10;
    v18 = v11[48];
  }
  else
  {
    v15 = (float)a4 / (float)((float)(v11[48] - v11[47]) / 20.0);
    v16 = v11[45];
    v17 = (float)v10;
    v18 = v11[46];
  }
  v19 = v17 / (float)((float)(v18 - v16) / 20.0);
  v20 = *(_DWORD *)(a1 + 204);
  if ( v15 >= v19 )
    v19 = v15;
  *(float *)(a1 + 52) = v19;
  if ( v20 )
  {
    v21 = *(_BYTE **)(a1 + 200);
    if ( v21[4] )
    {
      v22 = *(_DWORD *)(a1 + 24);
      v53 = 0.0;
      v52 = 0.0;
      v23 = (float)v22 + (float)*(int *)(a1 + 32);
      v50 = (float)*(int *)(a1 + 20) + (float)*(int *)(a1 + 28);
      v51 = v23;
      gameswf::root::screen_to_logical((gameswf::root *)a1, (gameswf::point *)&v52);
      gameswf::root::screen_to_logical((gameswf::root *)a1, (gameswf::point *)&v50);
      v24 = *(gameswf::player **)(a1 + 204);
      if ( v24 )
      {
        v25 = *(_BYTE **)(a1 + 200);
        if ( !v25[4] )
        {
          v36 = (*(_DWORD *)v25)-- == 1;
          if ( v36 )
            gameswf::free_internal(v25);
          v24 = nullptr;
          *(_DWORD *)(a1 + 200) = 0;
          *(_DWORD *)(a1 + 204) = 0;
        }
      }
      v26 = (gameswf::as_object *)operator new(56, 0);
      gameswf::as_object::as_object(v26, v24);
      v27 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v26 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v62, "xMin");
      v47[0] = 0;
      v47[1] = 2;
      v49 = v52;
      v48 = v52;
      v27(v26, v62, v47);
      gameswf::as_value::drop_refs((gameswf::as_value *)v47);
      if ( v62[0] == -1 )
        gameswf::free_internal(v63);
      v28 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v26 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v60, "yMin");
      v45[0] = 0;
      v45[1] = 2;
      v49 = v53;
      v46 = v53;
      v28(v26, v60, v45);
      gameswf::as_value::drop_refs((gameswf::as_value *)v45);
      if ( v60[0] == -1 )
        gameswf::free_internal(p);
      v29 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v26 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v58, "xMax");
      v43[0] = 0;
      v43[1] = 2;
      v49 = v50;
      v44 = v50;
      v29(v26, v58, v43);
      gameswf::as_value::drop_refs((gameswf::as_value *)v43);
      if ( v58[0] == -1 )
        gameswf::free_internal(v59);
      v30 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v26 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v56, "yMax");
      v41[0] = 0;
      v41[1] = 2;
      v49 = v51;
      v42 = v51;
      v30(v26, v56, v41);
      gameswf::as_value::drop_refs((gameswf::as_value *)v41);
      if ( v56[0] == -1 )
        gameswf::free_internal(v57);
      v39[0] = 0;
      v39[1] = 5;
      v40 = v26;
      gameswf::ref_counted::add_ref(v26);
      v31 = *(_DWORD *)(a1 + 204);
      if ( v31 )
      {
        v32 = *(_BYTE **)(a1 + 200);
        if ( !v32[4] )
        {
          v36 = (*(_DWORD *)v32)-- == 1;
          if ( v36 )
            gameswf::free_internal(v32);
          v31 = 0;
          *(_DWORD *)(a1 + 204) = 0;
          *(_DWORD *)(a1 + 200) = 0;
        }
      }
      v33 = *(_DWORD *)(v31 + 52);
      v34 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v33 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v54, "Viewport");
      v34(v33, v54, v39);
      if ( v54[0] == -1 )
        gameswf::free_internal(v55);
      gameswf::as_value::drop_refs((gameswf::as_value *)v39);
    }
    else
    {
      v36 = (*(_DWORD *)v21)-- == 1;
      if ( v36 )
        gameswf::free_internal(v21);
      *(_DWORD *)(a1 + 204) = 0;
      *(_DWORD *)(a1 + 200) = 0;
    }
  }
}


// ===== 775d38 gameswf::root::set_display_viewport(int,int,int,int) =====
void __fastcall gameswf::root::set_display_viewport(gameswf::root *this, int a2, int a3, int a4, int a5)
{
  if ( *((_DWORD *)this + 5) != a2
    || *((_DWORD *)this + 6) != a3
    || *((_DWORD *)this + 7) != a4
    || *((_DWORD *)this + 8) != a5 )
  {
    *((_DWORD *)this + 8) = a5;
    *((_DWORD *)this + 5) = a2;
    *((_DWORD *)this + 6) = a3;
    *((_DWORD *)this + 7) = a4;
    gameswf::root::set_display_bounds((int)this, a2, a3, a4, a5, 0);
  }
}


// ===== 775da0 gameswf::root::root(gameswf::player *,gameswf::movie_def_impl *) =====
gameswf::root *__fastcall gameswf::root::root(gameswf::root *this, gameswf::player *a2, gameswf::movie_def_impl *a3)
{
  float v6; // r8
  float v7; // r10

  gameswf::ref_counted::ref_counted(this);
  *((_DWORD *)this + 3) = a3;
  *(_DWORD *)this = off_9902A0;
  if ( a3 )
    gameswf::ref_counted::add_ref((int)a3);
  *((_DWORD *)this + 8) = 1;
  *((_DWORD *)this + 7) = 1;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_BYTE *)this + 59) = -1;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 13) = 1065353216;
  *((_BYTE *)this + 56) = 0;
  *((_BYTE *)this + 57) = 0;
  *((_BYTE *)this + 58) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_BYTE *)this + 92) = 0;
  *((_BYTE *)this + 93) = 0;
  *((_BYTE *)this + 94) = 0;
  *((_DWORD *)this + 26) = 1065353216;
  *((_DWORD *)this + 27) = 1065353216;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_BYTE *)this + 128) = 0;
  *((_BYTE *)this + 129) = 0;
  *((_BYTE *)this + 130) = 0;
  *((_BYTE *)this + 132) = 0;
  *((_BYTE *)this + 133) = 0;
  *((_DWORD *)this + 37) = 0;
  *((_BYTE *)this + 134) = 0;
  *((_BYTE *)this + 135) = 0;
  *((_DWORD *)this + 34) = 0;
  *((_DWORD *)this + 35) = 1065353216;
  *((_DWORD *)this + 36) = 1065353216;
  *((_DWORD *)this + 38) = 0;
  *((_DWORD *)this + 39) = 0;
  *((_DWORD *)this + 40) = 0;
  *((_BYTE *)this + 164) = 0;
  *((_DWORD *)this + 42) = 0;
  *((_DWORD *)this + 43) = 0;
  *((_DWORD *)this + 44) = 0;
  *((_BYTE *)this + 180) = 0;
  *((_DWORD *)this + 46) = 0;
  *((_DWORD *)this + 47) = 0;
  *((_DWORD *)this + 48) = 0;
  *((_BYTE *)this + 196) = 0;
  *((_DWORD *)this + 50) = 0;
  *((_DWORD *)this + 51) = 0;
  gameswf::weak_ptr<gameswf::player>::operator=((int)this + 200, a2);
  v6 = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 3) + 48))(*((_DWORD *)this + 3)));
  v7 = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 3) + 52))(*((_DWORD *)this + 3)));
  gameswf::root::set_display_viewport(this, 0, 0, (int)v6, (int)v7);
  *((float *)this + 36) = 1.0 / COERCE_FLOAT(gameswf::root::get_frame_rate(this));
  gameswf::player::set_root((int)a2, this);
  return this;
}


// ===== 775f70 gameswf::root::root(gameswf::player *,gameswf::movie_def_impl *) =====
gameswf::root *__fastcall gameswf::root::root(gameswf::root *this, gameswf::player *a2, gameswf::movie_def_impl *a3)
{
  float v6; // r8
  float v7; // r10

  gameswf::ref_counted::ref_counted(this);
  *((_DWORD *)this + 3) = a3;
  *(_DWORD *)this = off_9902A0;
  if ( a3 )
    gameswf::ref_counted::add_ref((int)a3);
  *((_DWORD *)this + 8) = 1;
  *((_DWORD *)this + 7) = 1;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_BYTE *)this + 59) = -1;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 13) = 1065353216;
  *((_BYTE *)this + 56) = 0;
  *((_BYTE *)this + 57) = 0;
  *((_BYTE *)this + 58) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_BYTE *)this + 92) = 0;
  *((_BYTE *)this + 93) = 0;
  *((_BYTE *)this + 94) = 0;
  *((_DWORD *)this + 26) = 1065353216;
  *((_DWORD *)this + 27) = 1065353216;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_BYTE *)this + 128) = 0;
  *((_BYTE *)this + 129) = 0;
  *((_BYTE *)this + 130) = 0;
  *((_BYTE *)this + 132) = 0;
  *((_BYTE *)this + 133) = 0;
  *((_DWORD *)this + 37) = 0;
  *((_BYTE *)this + 134) = 0;
  *((_BYTE *)this + 135) = 0;
  *((_DWORD *)this + 34) = 0;
  *((_DWORD *)this + 35) = 1065353216;
  *((_DWORD *)this + 36) = 1065353216;
  *((_DWORD *)this + 38) = 0;
  *((_DWORD *)this + 39) = 0;
  *((_DWORD *)this + 40) = 0;
  *((_BYTE *)this + 164) = 0;
  *((_DWORD *)this + 42) = 0;
  *((_DWORD *)this + 43) = 0;
  *((_DWORD *)this + 44) = 0;
  *((_BYTE *)this + 180) = 0;
  *((_DWORD *)this + 46) = 0;
  *((_DWORD *)this + 47) = 0;
  *((_DWORD *)this + 48) = 0;
  *((_BYTE *)this + 196) = 0;
  *((_DWORD *)this + 50) = 0;
  *((_DWORD *)this + 51) = 0;
  gameswf::weak_ptr<gameswf::player>::operator=((int)this + 200, a2);
  v6 = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 3) + 48))(*((_DWORD *)this + 3)));
  v7 = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 3) + 52))(*((_DWORD *)this + 3)));
  gameswf::root::set_display_viewport(this, 0, 0, (int)v6, (int)v7);
  *((float *)this + 36) = 1.0 / COERCE_FLOAT(gameswf::root::get_frame_rate(this));
  gameswf::player::set_root((int)a2, this);
  return this;
}


// ===== 776140 gameswf::scene_node::render(void *) =====
void __fastcall gameswf::scene_node::render(gameswf::scene_node *this, void *a2)
{
  ;
}


// ===== 776144 gameswf::scene_node::getBoundingBox(void) =====
char *__fastcall gameswf::scene_node::getBoundingBox(gameswf::scene_node *this)
{
  return (char *)this + 540;
}


// ===== 77614c `global constructor keyed to'.._.._src_gameswf_gameswf_scene_node.cpp =====
void `global constructor keyed to'.._.._src_gameswf_gameswf_scene_node.cpp()
{
  dword_9FC9B0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9FC9AC = 1056964608;
}


// ===== 77616c gameswf::scene_node::build_dlist(gameswf::character *) =====
int __fastcall gameswf::scene_node::build_dlist(int this, gameswf::character *a2)
{
  gameswf::scene_node *v3; // r6
  int v4; // r3
  gameswf::scene_node *v5; // r4
  int v6; // r4
  int v7; // r3
  int v8; // r7

  v3 = (gameswf::scene_node *)this;
  if ( *((_BYTE *)a2 + 155) )
  {
    this = *((float *)gameswf::character::get_world_cxform(a2) + 6) >= 0.0;
    if ( this )
    {
      v4 = *((_DWORD *)a2 + 21);
      if ( v4 )
      {
        v5 = *(gameswf::scene_node **)(v4 + 104);
        if ( v5 == v3 )
        {
          v7 = *((_DWORD *)v5 + 147);
          v8 = v7 + 1;
          if ( v7 + 1 > *((_DWORD *)v5 + 148) )
          {
            gameswf::array<gameswf::character *>::reserve((int)v5 + 584, v8 + (v8 >> 1));
            v7 = *((_DWORD *)v5 + 147);
          }
          *(_DWORD *)(*((_DWORD *)v5 + 146) + 4 * v7) = a2;
          *((_DWORD *)v5 + 147) = v8;
        }
      }
      this = (*(int (__fastcall **)(gameswf::character *, int))(*(_DWORD *)a2 + 8))(a2, 2);
      if ( this && *((int *)a2 + 43) > 0 )
      {
        v6 = 0;
        do
          this = gameswf::scene_node::build_dlist(v3, *(gameswf::character **)(*((_DWORD *)a2 + 42) + 4 * v6++));
        while ( v6 < *((_DWORD *)a2 + 43) );
      }
    }
  }
  return this;
}


// ===== 776244 gameswf::scene_node::~scene_node() =====
void __fastcall gameswf::scene_node::~scene_node(gameswf::scene_node *this)
{
  int v1; // r2
  _DWORD *v3; // r0
  int v4; // r3
  _DWORD *v5; // r0
  glitch::IReferenceCounted *v6; // r0
  glitch::IReferenceCounted *v7; // r0
  int v8; // r3
  int v9; // r2

  v1 = *((_DWORD *)this + 147);
  v3 = (_DWORD *)((char *)this + 584);
  *(_DWORD *)this = off_99031C;
  *((_DWORD *)this + 154) = off_990420;
  if ( v1 < 0 )
  {
    v8 = 4 * v1;
    do
    {
      ++v1;
      *(_DWORD *)(*v3 + v8) = 0;
      v8 += 4;
    }
    while ( v1 );
  }
  *((_DWORD *)this + 147) = 0;
  gameswf::array<gameswf::character *>::reserve((int)v3, 0);
  v4 = *((_DWORD *)this + 143);
  v5 = (_DWORD *)((char *)this + 568);
  if ( v4 < 0 )
  {
    v9 = 4 * v4;
    do
    {
      ++v4;
      *(_DWORD *)(*v5 + v9) = 0;
      v9 += 4;
    }
    while ( v4 );
  }
  *((_DWORD *)this + 143) = 0;
  gameswf::array<gameswf::character *>::reserve((int)v5, 0);
  v6 = *((glitch::IReferenceCounted **)this + 78);
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  v7 = *((glitch::IReferenceCounted **)this + 77);
  if ( v7 )
    glitch::IReferenceCounted::drop(v7);
  glitch::scene::ISceneNode::~ISceneNode(this, (int *)off_990434);
}


// ===== 776334 `virtual thunk to'gameswf::scene_node::~scene_node() =====
void __fastcall `virtual thunk to'gameswf::scene_node::~scene_node(gameswf::scene_node *this)
{
  gameswf::scene_node::~scene_node((gameswf::scene_node *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 776344 `virtual thunk to'gameswf::scene_node::~scene_node() =====
void __fastcall `virtual thunk to'gameswf::scene_node::~scene_node(gameswf::scene_node *this)
{
  gameswf::scene_node::~scene_node((gameswf::scene_node *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 776354 gameswf::scene_node::~scene_node() =====
void __fastcall gameswf::scene_node::~scene_node(gameswf::scene_node *this)
{
  gameswf::scene_node::~scene_node(this);
  LC_API_FREE_0(this);
}


// ===== 776370 `virtual thunk to'gameswf::scene_node::~scene_node() =====
void __fastcall `virtual thunk to'gameswf::scene_node::~scene_node(gameswf::scene_node *this)
{
  gameswf::scene_node::~scene_node((gameswf::scene_node *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 776380 `virtual thunk to'gameswf::scene_node::~scene_node() =====
void __fastcall `virtual thunk to'gameswf::scene_node::~scene_node(gameswf::scene_node *this)
{
  gameswf::scene_node::~scene_node((gameswf::scene_node *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 776390 gameswf::scene_node::onRegisterSceneNode(void) =====
int __fastcall gameswf::scene_node::onRegisterSceneNode(gameswf::scene_node *this)
{
  int v1; // r1
  int v3; // r12
  int v4; // r3
  int v5; // r2
  int v6; // r0
  int v8; // r3
  _DWORD *v9; // r0
  gameswf::root *root; // r0
  gameswf::character *root_movie; // r0
  int v12; // r5
  int v13; // r7
  _DWORD *v14; // r6
  int v15; // r3
  int v16; // r8
  gameswf::root *v17; // r0
  gameswf::root *v18; // r0
  int v19; // r3
  int v20; // r2
  glitch::IReferenceCounted *v21; // [sp+4h] [bp-8h] BYREF

  v1 = *((_DWORD *)this + 143);
  if ( v1 <= 0 )
    return 0;
  v3 = *((_DWORD *)this + 142);
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(_DWORD *)(v3 + 4 * v4++);
    v5 |= *(unsigned __int8 *)(v6 + 155);
  }
  while ( v4 != v1 );
  if ( !v5 )
    return 0;
  v8 = *((_DWORD *)this + 147);
  v9 = (_DWORD *)((char *)this + 584);
  if ( v8 < 0 )
  {
    v20 = 4 * v8;
    do
    {
      ++v8;
      *(_DWORD *)(*v9 + v20) = 0;
      v20 += 4;
    }
    while ( v8 );
    v1 = *((_DWORD *)this + 143);
  }
  *((_DWORD *)this + 147) = 0;
  if ( v1 == 1 )
  {
    if ( *((int *)this + 148) <= 0 )
      gameswf::array<gameswf::character *>::reserve((int)v9, 1);
    v19 = 0;
    **((_DWORD **)this + 146) = 0;
    *((_DWORD *)this + 147) = 1;
    do
    {
      *(_DWORD *)(*((_DWORD *)this + 146) + 4 * v19) = *(_DWORD *)(*((_DWORD *)this + 142) + 4 * v19);
      ++v19;
    }
    while ( v19 < *((_DWORD *)this + 147) );
  }
  else
  {
    root = (gameswf::root *)gameswf::player::get_root(*((gameswf::player **)this + 141));
    root_movie = (gameswf::character *)gameswf::root::get_root_movie(root);
    gameswf::scene_node::build_dlist((int)this, root_movie);
  }
  v12 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 141) + 172) + 40);
  (*(void (__fastcall **)(int, char *))(*(_DWORD *)v12 + 140))(v12, (char *)this + 312);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v12 + 168))(v12, 1);
  if ( *((int *)this + 147) > 0 )
  {
    v13 = 0;
    do
    {
      v14 = *(_DWORD **)(*((_DWORD *)this + 146) + 4 * v13++);
      v15 = v14[21];
      v16 = *(_DWORD *)(v15 + 104);
      *(_DWORD *)(v15 + 104) = 0;
      v17 = (gameswf::root *)(*(int (__fastcall **)(_DWORD *))(*v14 + 84))(v14);
      gameswf::root::begin_display(v17);
      (*(void (__fastcall **)(_DWORD *))(*v14 + 288))(v14);
      v18 = (gameswf::root *)(*(int (__fastcall **)(_DWORD *))(*v14 + 84))(v14);
      gameswf::root::end_display(v18);
      *(_DWORD *)(v14[21] + 104) = v16;
    }
    while ( v13 < *((_DWORD *)this + 147) );
  }
  (*(void (__fastcall **)(glitch::IReferenceCounted **, int))(*(_DWORD *)v12 + 144))(&v21, v12);
  if ( v21 )
    glitch::IReferenceCounted::drop(v21);
  return 1;
}


// ===== 776564 gameswf::scene_node::get_collision_uv(glitch::core::line3d<float> &,gameswf::point &) =====
int __fastcall gameswf::scene_node::get_collision_uv(int a1, float *a2, float *a3)
{
  const void *v4; // r0
  float v5; // r9
  float v6; // r10
  float v7; // r8
  float v8; // r7
  float *v9; // r5
  float *v10; // r6
  float v11; // r6
  float v12; // r5
  float *v13; // r0
  float v14; // r7
  float v15; // r8
  float v16; // r2
  float v17; // r10
  float v18; // r9
  float v19; // r3
  float v20; // r1
  bool v21; // zf
  float *v22; // r5
  int v23; // r6
  float v24; // r4
  float v25; // r6
  float v26; // r10
  float v27; // r0
  int v28; // r8
  float *v29; // r4
  float v30; // r6
  float *v31; // r8
  float v32; // r5
  float v33; // r4
  float *v34; // r7
  float v35; // r8
  float v36; // r7
  float v37; // r6
  float v38; // r5
  float v39; // r4
  float v41; // r11
  float v42; // r4
  float v43; // r4
  float v44; // [sp+8h] [bp-F4h]
  float v45; // [sp+Ch] [bp-F0h]
  float v46; // [sp+Ch] [bp-F0h]
  float v47; // [sp+Ch] [bp-F0h]
  float v48; // [sp+10h] [bp-ECh]
  float v49; // [sp+10h] [bp-ECh]
  float v50; // [sp+10h] [bp-ECh]
  float v51; // [sp+14h] [bp-E8h]
  int v52; // [sp+14h] [bp-E8h]
  float v53; // [sp+18h] [bp-E4h]
  float *v54; // [sp+18h] [bp-E4h]
  float v55; // [sp+18h] [bp-E4h]
  float v56; // [sp+1Ch] [bp-E0h]
  float v57; // [sp+1Ch] [bp-E0h]
  float v58; // [sp+1Ch] [bp-E0h]
  float v59; // [sp+20h] [bp-DCh]
  float v60; // [sp+24h] [bp-D8h]
  float v61; // [sp+28h] [bp-D4h]
  float v62; // [sp+28h] [bp-D4h]
  float v64; // [sp+34h] [bp-C8h]
  float v66; // [sp+40h] [bp-BCh]
  float v67; // [sp+44h] [bp-B8h]
  _DWORD v68[5]; // [sp+48h] [bp-B4h] BYREF
  _DWORD v69[13]; // [sp+5Ch] [bp-A0h] BYREF
  float v70[17]; // [sp+90h] [bp-6Ch] BYREF
  float v71; // [sp+D4h] [bp-28h] BYREF
  float v72; // [sp+D8h] [bp-24h]
  float v73; // [sp+DCh] [bp-20h]
  float v74[3]; // [sp+E0h] [bp-1Ch] BYREF
  float v75[4]; // [sp+ECh] [bp-10h] BYREF

  v4 = (const void *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 304) + 56))(*(_DWORD *)(a1 + 304));
  LOBYTE(v70[16]) = 0;
  memcpy(v70, v4, 0x41u);
  v59 = v70[1];
  v60 = v70[5];
  v48 = v70[9];
  v56 = v70[13];
  v53 = v70[2];
  v51 = v70[6];
  v45 = v70[10];
  v5 = v70[0];
  v6 = v70[4];
  v7 = v70[8];
  v8 = v70[12];
  v61 = v70[14];
  memset(v68, 0, sizeof(v68));
  memset(v69, 0, sizeof(v69));
  v9 = (float *)a1;
  v10 = (float *)v69;
  do
  {
    *(v10 - 5) = v8 + (float)((float)((float)(v5 * v9[80]) + (float)(v6 * v9[81])) + (float)(v7 * v9[82]));
    *(v10 - 4) = v56 + (float)((float)((float)(v59 * v9[80]) + (float)(v60 * v9[81])) + (float)(v48 * v9[82]));
    *(v10 - 3) = v61 + (float)((float)((float)(v53 * v9[80]) + (float)(v51 * v9[81])) + (float)(v45 * v9[82]));
    *(v10 - 2) = v8 + (float)((float)((float)(v5 * v9[83]) + (float)(v6 * v9[84])) + (float)(v7 * v9[85]));
    *(v10 - 1) = v56 + (float)((float)((float)(v59 * v9[83]) + (float)(v60 * v9[84])) + (float)(v48 * v9[85]));
    *v10 = v61 + (float)((float)((float)(v53 * v9[83]) + (float)(v51 * v9[84])) + (float)(v45 * v9[85]));
    v10[1] = v8 + (float)((float)((float)(v5 * v9[86]) + (float)(v6 * v9[87])) + (float)(v7 * v9[88]));
    v10[2] = v56 + (float)((float)((float)(v59 * v9[86]) + (float)(v60 * v9[87])) + (float)(v48 * v9[88]));
    v10[3] = v61 + (float)((float)((float)(v53 * v9[86]) + (float)(v51 * v9[87])) + (float)(v45 * v9[88]));
    v10 += 9;
    v9 += 9;
  }
  while ( v10 != &v70[5] );
  v11 = a2[4] - a2[1];
  v12 = a2[5] - a2[2];
  v74[0] = a2[3] - *a2;
  v74[1] = v11;
  v74[2] = v12;
  v13 = glitch::core::vector3d<float>::normalize(v74);
  v14 = *a2;
  v15 = a2[3];
  v75[0] = *v13;
  v75[1] = v13[1];
  v16 = v13[2];
  v73 = 0.0;
  v75[2] = v16;
  v71 = 0.0;
  v72 = 0.0;
  v17 = a2[1];
  v18 = a2[4];
  v19 = a2[2];
  v46 = v19;
  v49 = a2[5];
  v62 = (float)((float)((float)(v14 - v15) * (float)(v14 - v15)) + (float)((float)(v17 - v18) * (float)(v17 - v18)))
      + (float)((float)(v19 - v49) * (float)(v19 - v49));
  if ( v14 >= v15 )
  {
    v19 = v15;
    v15 = v14;
    v14 = v19;
  }
  if ( v17 >= v18 )
  {
    v19 = a2[4];
    v18 = a2[1];
    v17 = v19;
  }
  v21 = v46 >= v49;
  if ( v46 >= v49 )
  {
    v19 = a2[5];
    v20 = a2[2];
  }
  v22 = (float *)v68;
  if ( v46 >= v49 )
    v46 = v19;
  v23 = 0;
  if ( v21 )
    v49 = v20;
  v57 = 3.4028e38;
  v52 = 0;
  v54 = a2;
  do
  {
    v24 = *v22;
    if ( (*v22 >= v14 || v22[3] >= v14 || v22[6] >= v14) && (v15 >= v24 || v22[3] <= v15 || v22[6] <= v15) )
    {
      v41 = v22[1];
      if ( (v41 >= v17 || v22[4] >= v17 || v22[7] >= v17) && (v18 >= v41 || v22[4] <= v18 || v22[7] <= v18) )
      {
        v64 = v22[2];
        if ( (v64 >= v46 || v22[5] >= v46 || v22[8] >= v46) && (v49 >= v64 || v22[5] <= v49 || v22[8] <= v49) )
        {
          v66 = *v54;
          v44 = *v54 - v24;
          v67 = v54[1];
          v42 = v54[2];
          if ( v57 > (float)((float)((float)(v44 * v44) + (float)((float)(v67 - v41) * (float)(v67 - v41)))
                           + (float)((float)(v42 - v64) * (float)(v42 - v64)))
            || v57 > (float)((float)((float)((float)(v66 - v22[3]) * (float)(v66 - v22[3]))
                                   + (float)((float)(v67 - v22[4]) * (float)(v67 - v22[4])))
                           + (float)((float)(v42 - v22[5]) * (float)(v42 - v22[5])))
            || v57 > (float)((float)((float)((float)(v66 - v22[6]) * (float)(v66 - v22[6]))
                                   + (float)((float)(v67 - v22[7]) * (float)(v67 - v22[7])))
                           + (float)((float)(v42 - v22[8]) * (float)(v42 - v22[8]))) )
          {
            if ( glitch::core::triangle3d<float>::getIntersectionWithLine((float *)&v68[9 * v23], v54, v75, &v71) )
            {
              v43 = (float)((float)((float)(v71 - *v54) * (float)(v71 - *v54))
                          + (float)((float)(v72 - v54[1]) * (float)(v72 - v54[1])))
                  + (float)((float)(v73 - v54[2]) * (float)(v73 - v54[2]));
              if ( v62 > v43
                && v62 > (float)((float)((float)((float)(v71 - v54[3]) * (float)(v71 - v54[3]))
                                       + (float)((float)(v72 - v54[4]) * (float)(v72 - v54[4])))
                               + (float)((float)(v73 - v54[5]) * (float)(v73 - v54[5])))
                && v57 > v43 )
              {
                v57 = (float)((float)((float)(v71 - *v54) * (float)(v71 - *v54))
                            + (float)((float)(v72 - v54[1]) * (float)(v72 - v54[1])))
                    + (float)((float)(v73 - v54[2]) * (float)(v73 - v54[2]));
                v52 = 1;
              }
            }
          }
        }
      }
    }
    ++v23;
    v22 += 9;
  }
  while ( v23 != 2 );
  if ( v52 )
  {
    glitch::core::CMatrix4<float>::makeInverse((int)v70);
    v25 = v71;
    v26 = (float)((float)((float)(v71 * v70[1]) + (float)(v72 * v70[5])) + (float)(v73 * v70[9])) + v70[13];
    v27 = (float)(v71 * v70[2]) + (float)(v72 * v70[6]);
    v71 = (float)((float)((float)(v71 * v70[0]) + (float)(v72 * v70[4])) + (float)(v73 * v70[8])) + v70[12];
    v28 = *(unsigned __int16 *)(a1 + 470);
    v29 = (float *)(a1 + 12 * *(unsigned __int16 *)(a1 + 466));
    v72 = (float)((float)((float)(v25 * v70[1]) + (float)(v72 * v70[5])) + (float)(v73 * v70[9])) + v70[13];
    v73 = (float)(v27 + (float)(v73 * v70[10])) + v70[14];
    v30 = v29[98];
    v31 = (float *)(a1 + 12 * v28);
    v47 = v31[98] - v30;
    v32 = v29[99];
    v50 = v31[99] - v32;
    v33 = v29[100];
    v55 = v31[100] - v33;
    v34 = (float *)(a1 + 12 * *(unsigned __int16 *)(a1 + 464));
    v35 = v34[98] - v30;
    v58 = v34[99] - v32;
    v36 = v34[100] - v33;
    v37 = v71 - v30;
    v38 = v26 - v32;
    v39 = v73 - v33;
    *a3 = (float)((float)((float)(v47 * v37) + (float)(v50 * v38)) + (float)(v55 * v39))
        / (float)((float)((float)(v47 * v47) + (float)(v50 * v50)) + (float)(v55 * v55));
    a3[1] = (float)((float)((float)(v35 * v37) + (float)(v58 * v38)) + (float)(v36 * v39))
          / (float)((float)((float)(v35 * v35) + (float)(v58 * v58)) + (float)(v36 * v36));
  }
  return v52;
}


// ===== 777350 gameswf::scene_node::update_inverse_transform(void) =====
void *__fastcall gameswf::scene_node::update_inverse_transform(gameswf::scene_node *this)
{
  int root; // r0
  float v3; // r5
  float v4; // r6
  int v5; // r10
  void (__fastcall *v6)(float *, int, _DWORD *, _DWORD); // r7
  const void *v7; // r0
  void *result; // r0
  int v9; // r10
  gameswf::scene_node *v10; // r8
  int v11; // r7
  _BOOL4 v12; // r0
  float v13; // r7
  float v14; // r7
  float v15; // r8
  float v16; // r0
  _DWORD *v17; // r0
  float v18[6]; // [sp+0h] [bp-2Ch] BYREF
  float v19; // [sp+18h] [bp-14h] BYREF
  float v20; // [sp+1Ch] [bp-10h]
  _DWORD v21[3]; // [sp+20h] [bp-Ch] BYREF

  root = gameswf::player::get_root(*((gameswf::player **)this + 141));
  v3 = *(float *)(root + 72);
  v4 = *(float *)(root + 76);
  if ( *((float *)this + 150) != v3 || *((float *)this + 151) != v4 )
  {
LABEL_2:
    v5 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 141) + 172) + 40) + 212) + 28)
                   + 44);
    v6 = *(void (__fastcall **)(float *, int, _DWORD *, _DWORD))(*(_DWORD *)v5 + 20);
    v21[0] = (int)v3;
    v21[1] = (int)v4;
    v6(v18, v5, v21, 0);
    v20 = 0.0;
    v19 = 0.0;
    if ( gameswf::scene_node::get_collision_uv((int)this, v18, &v19) )
    {
      v13 = v19;
      v14 = v13 * (float)*(int *)(gameswf::player::get_root(*((gameswf::player **)this + 141)) + 28);
      v15 = v20;
      v16 = v15 * (float)*(int *)(gameswf::player::get_root(*((gameswf::player **)this + 141)) + 32);
      *((float *)this + 152) = v14;
      *((float *)this + 153) = v16;
      v17 = (_DWORD *)gameswf::player::get_root(*((gameswf::player **)this + 141));
      gameswf::root::screen_to_logical(v17, (float *)this + 152);
    }
    else
    {
      *((_DWORD *)this + 152) = -943501312;
      *((_DWORD *)this + 153) = -943501312;
    }
    goto LABEL_4;
  }
  v9 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 76) + 56))(*((_DWORD *)this + 76));
  if ( !*(_BYTE *)(v9 + 64) || !*((_BYTE *)this + 536) )
  {
    v10 = this;
    v11 = 0;
    do
    {
      v12 = *(float *)(v9 + v11) == *((float *)v10 + 118);
      v11 += 4;
      if ( !v12 )
        goto LABEL_2;
      v10 = (gameswf::scene_node *)((char *)v10 + 4);
    }
    while ( v11 != 64 );
  }
LABEL_4:
  v7 = (const void *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 76) + 56))(*((_DWORD *)this + 76));
  result = memcpy((char *)this + 472, v7, 0x41u);
  *((float *)this + 150) = v3;
  *((float *)this + 151) = v4;
  return result;
}


// ===== 777514 gameswf::scene_node::get_local_mouse(gameswf::character *,float &,float &) =====
void __fastcall gameswf::scene_node::get_local_mouse(
        gameswf::scene_node *this,
        gameswf::character **a2,
        float *a3,
        float *a4)
{
  float v8; // r3
  char *world_matrix; // r0
  float v10; // r3
  float v11; // [sp+0h] [bp-14h] BYREF
  float v12; // [sp+4h] [bp-10h]
  float v13[3]; // [sp+8h] [bp-Ch] BYREF

  gameswf::scene_node::update_inverse_transform(this);
  v8 = *((float *)this + 153);
  v13[0] = *((float *)this + 152) * 20.0;
  v13[1] = v8 * 20.0;
  v11 = v13[0];
  v12 = v8 * 20.0;
  gameswf::weak_ptr<gameswf::character>::check_proxy((int)(a2 + 15));
  if ( a2[16] )
  {
    gameswf::weak_ptr<gameswf::character>::check_proxy((int)(a2 + 15));
    world_matrix = gameswf::character::get_world_matrix(a2[16]);
    gameswf::matrix::transform_by_inverse(
      (gameswf::matrix *)world_matrix,
      (gameswf::point *)&v11,
      (const gameswf::point *)v13);
  }
  v10 = v12;
  *a3 = v11;
  *a4 = v10;
}


// ===== 7775c4 gameswf::scene_node::get_world_mouse(int &,int &) =====
int __fastcall gameswf::scene_node::get_world_mouse(gameswf::scene_node *this, int *a2, int *a3)
{
  int result; // r0

  gameswf::scene_node::update_inverse_transform(this);
  *a2 = (int)*((float *)this + 152);
  result = (int)*((float *)this + 153);
  *a3 = result;
  return result;
}


// ===== 7775f4 gameswf::collect<signed char>(uint const*,uint,glitch::video::SVertexStream const&,gameswf::point *) =====
float __fastcall gameswf::collect<signed char>(unsigned int a1, unsigned int a2, int *a3, float *a4)
{
  float result; // r0
  int v9; // r8
  int v10; // r10
  int v11; // r11
  float v12; // r0
  int v13; // r11
  float v14; // r0
  int v15; // r11
  int v16; // r11
  float v17; // r9
  _BYTE *v18; // r4
  char v19; // r3
  int v20; // r9
  float v21; // r0
  int v22; // r9
  float v23; // r0
  int v24; // r9
  float v25; // r10

  result = COERCE_FLOAT(glitch::video::IBuffer::map(*a3, 1));
  v9 = LODWORD(result) + a3[1];
  if ( a1 )
  {
    if ( a2 )
    {
      v10 = 0;
      while ( 1 )
      {
        ++v10;
        v11 = *(_DWORD *)(a1 + 8) * *((unsigned __int16 *)a3 + 7);
        v12 = (float)*(char *)(v9 + v11 + 1);
        *a4 = (float)*(char *)(v9 + v11);
        a4[1] = v12;
        v13 = *(_DWORD *)(a1 + 4) * *((unsigned __int16 *)a3 + 7);
        v14 = (float)*(char *)(v9 + v13 + 1);
        a4[2] = (float)*(char *)(v9 + v13);
        a4[3] = v14;
        v15 = *(_DWORD *)a1;
        a1 += 12;
        v16 = v15 * *((unsigned __int16 *)a3 + 7);
        v17 = (float)*(char *)(v9 + v16);
        result = (float)*(char *)(v9 + v16 + 1);
        a4[5] = result;
        a4[4] = v17;
        if ( v10 == a2 )
          break;
        a4 += 6;
      }
    }
  }
  else if ( a2 )
  {
    while ( 1 )
    {
      v20 = *((unsigned __int16 *)a3 + 7) * (a1 + 2);
      v21 = (float)*(char *)(v9 + v20 + 1);
      *a4 = (float)*(char *)(v9 + v20);
      a4[1] = v21;
      v22 = *((unsigned __int16 *)a3 + 7) + a1 * *((unsigned __int16 *)a3 + 7);
      v23 = (float)*(char *)(v9 + v22 + 1);
      a4[2] = (float)*(char *)(v9 + v22);
      a4[3] = v23;
      v24 = *((unsigned __int16 *)a3 + 7) * a1;
      a1 += 3;
      v25 = (float)*(char *)(v9 + v24);
      result = (float)*(char *)(v9 + v24 + 1);
      a4[5] = result;
      a4[4] = v25;
      if ( a2 <= a1 )
        break;
      a4 += 6;
    }
  }
  if ( v9 )
  {
    v18 = (_BYTE *)*a3;
    v19 = *(_BYTE *)(*a3 + 19);
    if ( (v19 & 0x1Fu) <= 1 )
    {
      if ( (v18[18] & 0x20) != 0 )
        result = COERCE_FLOAT((*(int (__fastcall **)(int))(*(_DWORD *)v18 + 24))(*a3));
      v18[19] = 0;
    }
    else
    {
      v18[19] = ((v19 & 0x1F) - 1) | v19 & 0xE0;
    }
  }
  return result;
}


// ===== 7777c4 gameswf::collect<uint>(uint const*,uint,glitch::video::SVertexStream const&,gameswf::point *) =====
float __fastcall gameswf::collect<unsigned int>(unsigned int a1, unsigned int a2, int *a3, float *a4)
{
  float result; // r0
  int v9; // r8
  int v10; // r10
  int v11; // r11
  float v12; // r0
  int v13; // r11
  float v14; // r0
  int v15; // r11
  int v16; // r11
  float v17; // r9
  _BYTE *v18; // r4
  char v19; // r3
  int v20; // r9
  float v21; // r0
  int v22; // r9
  float v23; // r0
  int v24; // r9
  float v25; // r10

  result = COERCE_FLOAT(glitch::video::IBuffer::map(*a3, 1));
  v9 = LODWORD(result) + a3[1];
  if ( a1 )
  {
    if ( a2 )
    {
      v10 = 0;
      while ( 1 )
      {
        ++v10;
        v11 = *(_DWORD *)(a1 + 8) * *((unsigned __int16 *)a3 + 7);
        v12 = (float)*(unsigned int *)(v9 + v11 + 4);
        *a4 = (float)*(unsigned int *)(v9 + v11);
        a4[1] = v12;
        v13 = *(_DWORD *)(a1 + 4) * *((unsigned __int16 *)a3 + 7);
        v14 = (float)*(unsigned int *)(v9 + v13 + 4);
        a4[2] = (float)*(unsigned int *)(v9 + v13);
        a4[3] = v14;
        v15 = *(_DWORD *)a1;
        a1 += 12;
        v16 = v15 * *((unsigned __int16 *)a3 + 7);
        v17 = (float)*(unsigned int *)(v9 + v16);
        result = (float)*(unsigned int *)(v9 + v16 + 4);
        a4[5] = result;
        a4[4] = v17;
        if ( v10 == a2 )
          break;
        a4 += 6;
      }
    }
  }
  else if ( a2 )
  {
    while ( 1 )
    {
      v20 = *((unsigned __int16 *)a3 + 7) * (a1 + 2);
      v21 = (float)*(unsigned int *)(v9 + v20 + 4);
      *a4 = (float)*(unsigned int *)(v9 + v20);
      a4[1] = v21;
      v22 = *((unsigned __int16 *)a3 + 7) + a1 * *((unsigned __int16 *)a3 + 7);
      v23 = (float)*(unsigned int *)(v9 + v22 + 4);
      a4[2] = (float)*(unsigned int *)(v9 + v22);
      a4[3] = v23;
      v24 = *((unsigned __int16 *)a3 + 7) * a1;
      a1 += 3;
      v25 = (float)*(unsigned int *)(v9 + v24);
      result = (float)*(unsigned int *)(v9 + v24 + 4);
      a4[5] = result;
      a4[4] = v25;
      if ( a2 <= a1 )
        break;
      a4 += 6;
    }
  }
  if ( v9 )
  {
    v18 = (_BYTE *)*a3;
    v19 = *(_BYTE *)(*a3 + 19);
    if ( (v19 & 0x1Fu) <= 1 )
    {
      if ( (v18[18] & 0x20) != 0 )
        result = COERCE_FLOAT((*(int (__fastcall **)(int))(*(_DWORD *)v18 + 24))(*a3));
      v18[19] = 0;
    }
    else
    {
      v18[19] = ((v19 & 0x1F) - 1) | v19 & 0xE0;
    }
  }
  return result;
}


// ===== 777994 gameswf::collect<float>(uint const*,uint,glitch::video::SVertexStream const&,gameswf::point *) =====
int __fastcall gameswf::collect<float>(unsigned int a1, unsigned int a2, int *a3, _DWORD *a4)
{
  int result; // r0
  int v9; // r3
  int v10; // r2
  _DWORD *v11; // r12
  int v12; // r1
  _DWORD *v13; // r12
  int v14; // r1
  int v15; // r0
  int *v16; // r12
  int v17; // r1
  _BYTE *v18; // r4
  char v19; // r3
  _DWORD *v20; // r0
  int v21; // r2
  _DWORD *v22; // r0
  int v23; // r2
  int v24; // r2
  int v25; // r1
  int v26; // r2

  result = glitch::video::IBuffer::map(*a3, 1);
  v9 = result + a3[1];
  if ( a1 )
  {
    if ( a2 )
    {
      v10 = 0;
      while ( 1 )
      {
        ++v10;
        v11 = (_DWORD *)(v9 + *(_DWORD *)(a1 + 8) * *((unsigned __int16 *)a3 + 7));
        v12 = v11[1];
        *a4 = *v11;
        a4[1] = v12;
        v13 = (_DWORD *)(v9 + *(_DWORD *)(a1 + 4) * *((unsigned __int16 *)a3 + 7));
        v14 = v13[1];
        a4[2] = *v13;
        a4[3] = v14;
        v15 = *(_DWORD *)a1;
        a1 += 12;
        v16 = (int *)(v9 + v15 * *((unsigned __int16 *)a3 + 7));
        result = *v16;
        v17 = v16[1];
        a4[4] = *v16;
        a4[5] = v17;
        if ( v10 == a2 )
          break;
        a4 += 6;
      }
    }
  }
  else if ( a2 )
  {
    while ( 1 )
    {
      v20 = (_DWORD *)(v9 + *((unsigned __int16 *)a3 + 7) * (a1 + 2));
      v21 = v20[1];
      *a4 = *v20;
      a4[1] = v21;
      v22 = (_DWORD *)(v9 + *((unsigned __int16 *)a3 + 7) + a1 * *((unsigned __int16 *)a3 + 7));
      v23 = v22[1];
      a4[2] = *v22;
      a4[3] = v23;
      v24 = *((unsigned __int16 *)a3 + 7) * a1;
      a1 += 3;
      result = v9 + v24;
      v25 = *(_DWORD *)(v9 + v24);
      v26 = *(_DWORD *)(v9 + v24 + 4);
      a4[4] = v25;
      a4[5] = v26;
      if ( a2 <= a1 )
        break;
      a4 += 6;
    }
  }
  if ( v9 )
  {
    v18 = (_BYTE *)*a3;
    v19 = *(_BYTE *)(*a3 + 19);
    if ( (v19 & 0x1Fu) <= 1 )
    {
      if ( (v18[18] & 0x20) != 0 )
        result = (*(int (__fastcall **)(int))(*(_DWORD *)v18 + 24))(*a3);
      v18[19] = 0;
    }
    else
    {
      v18[19] = ((v19 & 0x1F) - 1) | v19 & 0xE0;
    }
  }
  return result;
}


// ===== 777b1c gameswf::collect<uchar>(uint const*,uint,glitch::video::SVertexStream const&,gameswf::point *) =====
float __fastcall gameswf::collect<unsigned char>(unsigned int a1, unsigned int a2, int *a3, float *a4)
{
  float result; // r0
  int v9; // r8
  int v10; // r10
  int v11; // r11
  float v12; // r0
  int v13; // r11
  float v14; // r0
  int v15; // r11
  int v16; // r11
  float v17; // r9
  _BYTE *v18; // r4
  char v19; // r3
  int v20; // r9
  float v21; // r0
  int v22; // r9
  float v23; // r0
  int v24; // r9
  float v25; // r10

  result = COERCE_FLOAT(glitch::video::IBuffer::map(*a3, 1));
  v9 = LODWORD(result) + a3[1];
  if ( a1 )
  {
    if ( a2 )
    {
      v10 = 0;
      while ( 1 )
      {
        ++v10;
        v11 = *(_DWORD *)(a1 + 8) * *((unsigned __int16 *)a3 + 7);
        v12 = (float)*(unsigned __int8 *)(v9 + v11 + 1);
        *a4 = (float)*(unsigned __int8 *)(v9 + v11);
        a4[1] = v12;
        v13 = *(_DWORD *)(a1 + 4) * *((unsigned __int16 *)a3 + 7);
        v14 = (float)*(unsigned __int8 *)(v9 + v13 + 1);
        a4[2] = (float)*(unsigned __int8 *)(v9 + v13);
        a4[3] = v14;
        v15 = *(_DWORD *)a1;
        a1 += 12;
        v16 = v15 * *((unsigned __int16 *)a3 + 7);
        v17 = (float)*(unsigned __int8 *)(v9 + v16);
        result = (float)*(unsigned __int8 *)(v9 + v16 + 1);
        a4[5] = result;
        a4[4] = v17;
        if ( v10 == a2 )
          break;
        a4 += 6;
      }
    }
  }
  else if ( a2 )
  {
    while ( 1 )
    {
      v20 = *((unsigned __int16 *)a3 + 7) * (a1 + 2);
      v21 = (float)*(unsigned __int8 *)(v9 + v20 + 1);
      *a4 = (float)*(unsigned __int8 *)(v9 + v20);
      a4[1] = v21;
      v22 = *((unsigned __int16 *)a3 + 7) + a1 * *((unsigned __int16 *)a3 + 7);
      v23 = (float)*(unsigned __int8 *)(v9 + v22 + 1);
      a4[2] = (float)*(unsigned __int8 *)(v9 + v22);
      a4[3] = v23;
      v24 = *((unsigned __int16 *)a3 + 7) * a1;
      a1 += 3;
      v25 = (float)*(unsigned __int8 *)(v9 + v24);
      result = (float)*(unsigned __int8 *)(v9 + v24 + 1);
      a4[5] = result;
      a4[4] = v25;
      if ( a2 <= a1 )
        break;
      a4 += 6;
    }
  }
  if ( v9 )
  {
    v18 = (_BYTE *)*a3;
    v19 = *(_BYTE *)(*a3 + 19);
    if ( (v19 & 0x1Fu) <= 1 )
    {
      if ( (v18[18] & 0x20) != 0 )
        result = COERCE_FLOAT((*(int (__fastcall **)(int))(*(_DWORD *)v18 + 24))(*a3));
      v18[19] = 0;
    }
    else
    {
      v18[19] = ((v19 & 0x1F) - 1) | v19 & 0xE0;
    }
  }
  return result;
}


// ===== 777cec gameswf::collect<short>(uint const*,uint,glitch::video::SVertexStream const&,gameswf::point *) =====
float __fastcall gameswf::collect<short>(unsigned int a1, unsigned int a2, int *a3, float *a4)
{
  float result; // r0
  int v9; // r8
  int v10; // r10
  int v11; // r11
  float v12; // r0
  int v13; // r11
  float v14; // r0
  int v15; // r11
  int v16; // r11
  float v17; // r9
  _BYTE *v18; // r4
  char v19; // r3
  int v20; // r9
  float v21; // r0
  int v22; // r9
  float v23; // r0
  int v24; // r9
  float v25; // r10

  result = COERCE_FLOAT(glitch::video::IBuffer::map(*a3, 1));
  v9 = LODWORD(result) + a3[1];
  if ( a1 )
  {
    if ( a2 )
    {
      v10 = 0;
      while ( 1 )
      {
        ++v10;
        v11 = *(_DWORD *)(a1 + 8) * *((unsigned __int16 *)a3 + 7);
        v12 = (float)*(__int16 *)(v9 + v11 + 2);
        *a4 = (float)*(__int16 *)(v9 + v11);
        a4[1] = v12;
        v13 = *(_DWORD *)(a1 + 4) * *((unsigned __int16 *)a3 + 7);
        v14 = (float)*(__int16 *)(v9 + v13 + 2);
        a4[2] = (float)*(__int16 *)(v9 + v13);
        a4[3] = v14;
        v15 = *(_DWORD *)a1;
        a1 += 12;
        v16 = v15 * *((unsigned __int16 *)a3 + 7);
        v17 = (float)*(__int16 *)(v9 + v16);
        result = (float)*(__int16 *)(v9 + v16 + 2);
        a4[5] = result;
        a4[4] = v17;
        if ( v10 == a2 )
          break;
        a4 += 6;
      }
    }
  }
  else if ( a2 )
  {
    while ( 1 )
    {
      v20 = *((unsigned __int16 *)a3 + 7) * (a1 + 2);
      v21 = (float)*(__int16 *)(v9 + v20 + 2);
      *a4 = (float)*(__int16 *)(v9 + v20);
      a4[1] = v21;
      v22 = *((unsigned __int16 *)a3 + 7) + a1 * *((unsigned __int16 *)a3 + 7);
      v23 = (float)*(__int16 *)(v9 + v22 + 2);
      a4[2] = (float)*(__int16 *)(v9 + v22);
      a4[3] = v23;
      v24 = *((unsigned __int16 *)a3 + 7) * a1;
      a1 += 3;
      v25 = (float)*(__int16 *)(v9 + v24);
      result = (float)*(__int16 *)(v9 + v24 + 2);
      a4[5] = result;
      a4[4] = v25;
      if ( a2 <= a1 )
        break;
      a4 += 6;
    }
  }
  if ( v9 )
  {
    v18 = (_BYTE *)*a3;
    v19 = *(_BYTE *)(*a3 + 19);
    if ( (v19 & 0x1Fu) <= 1 )
    {
      if ( (v18[18] & 0x20) != 0 )
        result = COERCE_FLOAT((*(int (__fastcall **)(int))(*(_DWORD *)v18 + 24))(*a3));
      v18[19] = 0;
    }
    else
    {
      v18[19] = ((v19 & 0x1F) - 1) | v19 & 0xE0;
    }
  }
  return result;
}


// ===== 777ebc gameswf::collect<ushort>(uint const*,uint,glitch::video::SVertexStream const&,gameswf::point *) =====
float __fastcall gameswf::collect<unsigned short>(unsigned int a1, unsigned int a2, int *a3, float *a4)
{
  float result; // r0
  int v9; // r8
  int v10; // r10
  int v11; // r11
  float v12; // r0
  int v13; // r11
  float v14; // r0
  int v15; // r11
  int v16; // r11
  float v17; // r9
  _BYTE *v18; // r4
  char v19; // r3
  int v20; // r9
  float v21; // r0
  int v22; // r9
  float v23; // r0
  int v24; // r9
  float v25; // r10

  result = COERCE_FLOAT(glitch::video::IBuffer::map(*a3, 1));
  v9 = LODWORD(result) + a3[1];
  if ( a1 )
  {
    if ( a2 )
    {
      v10 = 0;
      while ( 1 )
      {
        ++v10;
        v11 = *(_DWORD *)(a1 + 8) * *((unsigned __int16 *)a3 + 7);
        v12 = (float)*(unsigned __int16 *)(v9 + v11 + 2);
        *a4 = (float)*(unsigned __int16 *)(v9 + v11);
        a4[1] = v12;
        v13 = *(_DWORD *)(a1 + 4) * *((unsigned __int16 *)a3 + 7);
        v14 = (float)*(unsigned __int16 *)(v9 + v13 + 2);
        a4[2] = (float)*(unsigned __int16 *)(v9 + v13);
        a4[3] = v14;
        v15 = *(_DWORD *)a1;
        a1 += 12;
        v16 = v15 * *((unsigned __int16 *)a3 + 7);
        v17 = (float)*(unsigned __int16 *)(v9 + v16);
        result = (float)*(unsigned __int16 *)(v9 + v16 + 2);
        a4[5] = result;
        a4[4] = v17;
        if ( v10 == a2 )
          break;
        a4 += 6;
      }
    }
  }
  else if ( a2 )
  {
    while ( 1 )
    {
      v20 = *((unsigned __int16 *)a3 + 7) * (a1 + 2);
      v21 = (float)*(unsigned __int16 *)(v9 + v20 + 2);
      *a4 = (float)*(unsigned __int16 *)(v9 + v20);
      a4[1] = v21;
      v22 = *((unsigned __int16 *)a3 + 7) + a1 * *((unsigned __int16 *)a3 + 7);
      v23 = (float)*(unsigned __int16 *)(v9 + v22 + 2);
      a4[2] = (float)*(unsigned __int16 *)(v9 + v22);
      a4[3] = v23;
      v24 = *((unsigned __int16 *)a3 + 7) * a1;
      a1 += 3;
      v25 = (float)*(unsigned __int16 *)(v9 + v24);
      result = (float)*(unsigned __int16 *)(v9 + v24 + 2);
      a4[5] = result;
      a4[4] = v25;
      if ( a2 <= a1 )
        break;
      a4 += 6;
    }
  }
  if ( v9 )
  {
    v18 = (_BYTE *)*a3;
    v19 = *(_BYTE *)(*a3 + 19);
    if ( (v19 & 0x1Fu) <= 1 )
    {
      if ( (v18[18] & 0x20) != 0 )
        result = COERCE_FLOAT((*(int (__fastcall **)(int))(*(_DWORD *)v18 + 24))(*a3));
      v18[19] = 0;
    }
    else
    {
      v18[19] = ((v19 & 0x1F) - 1) | v19 & 0xE0;
    }
  }
  return result;
}


// ===== 77808c gameswf::collect<int>(uint const*,uint,glitch::video::SVertexStream const&,gameswf::point *) =====
float __fastcall gameswf::collect<int>(unsigned int a1, unsigned int a2, int *a3, float *a4)
{
  float result; // r0
  int v9; // r8
  int v10; // r10
  int v11; // r11
  float v12; // r0
  int v13; // r11
  float v14; // r0
  int v15; // r11
  int v16; // r11
  float v17; // r9
  _BYTE *v18; // r4
  char v19; // r3
  int v20; // r9
  float v21; // r0
  int v22; // r9
  float v23; // r0
  int v24; // r9
  float v25; // r10

  result = COERCE_FLOAT(glitch::video::IBuffer::map(*a3, 1));
  v9 = LODWORD(result) + a3[1];
  if ( a1 )
  {
    if ( a2 )
    {
      v10 = 0;
      while ( 1 )
      {
        ++v10;
        v11 = *(_DWORD *)(a1 + 8) * *((unsigned __int16 *)a3 + 7);
        v12 = (float)*(int *)(v9 + v11 + 4);
        *a4 = (float)*(int *)(v9 + v11);
        a4[1] = v12;
        v13 = *(_DWORD *)(a1 + 4) * *((unsigned __int16 *)a3 + 7);
        v14 = (float)*(int *)(v9 + v13 + 4);
        a4[2] = (float)*(int *)(v9 + v13);
        a4[3] = v14;
        v15 = *(_DWORD *)a1;
        a1 += 12;
        v16 = v15 * *((unsigned __int16 *)a3 + 7);
        v17 = (float)*(int *)(v9 + v16);
        result = (float)*(int *)(v9 + v16 + 4);
        a4[5] = result;
        a4[4] = v17;
        if ( v10 == a2 )
          break;
        a4 += 6;
      }
    }
  }
  else if ( a2 )
  {
    while ( 1 )
    {
      v20 = *((unsigned __int16 *)a3 + 7) * (a1 + 2);
      v21 = (float)*(int *)(v9 + v20 + 4);
      *a4 = (float)*(int *)(v9 + v20);
      a4[1] = v21;
      v22 = *((unsigned __int16 *)a3 + 7) + a1 * *((unsigned __int16 *)a3 + 7);
      v23 = (float)*(int *)(v9 + v22 + 4);
      a4[2] = (float)*(int *)(v9 + v22);
      a4[3] = v23;
      v24 = *((unsigned __int16 *)a3 + 7) * a1;
      a1 += 3;
      v25 = (float)*(int *)(v9 + v24);
      result = (float)*(int *)(v9 + v24 + 4);
      a4[5] = result;
      a4[4] = v25;
      if ( a2 <= a1 )
        break;
      a4 += 6;
    }
  }
  if ( v9 )
  {
    v18 = (_BYTE *)*a3;
    v19 = *(_BYTE *)(*a3 + 19);
    if ( (v19 & 0x1Fu) <= 1 )
    {
      if ( (v18[18] & 0x20) != 0 )
        result = COERCE_FLOAT((*(int (__fastcall **)(int))(*(_DWORD *)v18 + 24))(*a3));
      v18[19] = 0;
    }
    else
    {
      v18[19] = ((v19 & 0x1F) - 1) | v19 & 0xE0;
    }
  }
  return result;
}


// ===== 77825c gameswf::scene_node::collect_uvs(boost::intrusive_ptr<glitch::scene::IMesh const> const&,gameswf::point *,uint) =====
float __fastcall gameswf::scene_node::collect_uvs(int a1, _DWORD *a2, float *a3, unsigned int a4)
{
  float result; // r0
  glitch::IReferenceCounted *v8; // r4
  glitch::video::CVertexStreams *v9; // r7
  int v10; // r10
  int v11; // r3
  int v12; // r1
  int v13; // r2
  int *v14; // r2
  _BYTE *v15; // r4
  char v16; // r3
  float *v17; // r3
  float v18; // r9
  float v19; // r11
  int v20; // r8
  int v21; // r10
  float v22; // [sp+0h] [bp-2Ch]
  float v23; // [sp+4h] [bp-28h]
  _BYTE v24[24]; // [sp+8h] [bp-24h] BYREF
  glitch::video::CVertexStreams *v25; // [sp+20h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v26; // [sp+24h] [bp-8h] BYREF

  result = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(*(_DWORD *)*a2 + 16))(*a2));
  if ( result != 0.0 )
  {
    (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, _DWORD))(*(_DWORD *)*a2 + 20))(&v26, *a2, 0);
    v8 = v26;
    if ( v26 )
      glitch::IReferenceCounted::drop(v26);
    v10 = *((_DWORD *)v8 + 8);
    v25 = *((glitch::video::CVertexStreams **)v8 + 5);
    v9 = v25;
    if ( v25 )
    {
      ++*(_DWORD *)v25;
      v9 = v25;
    }
    result = COERCE_FLOAT(boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v25));
    if ( *((_BYTE *)v9 + 12) )
    {
      result = *((float *)v8 + 6);
      if ( result != 0.0 )
      {
        result = COERCE_FLOAT(glitch::video::IBuffer::map(SLODWORD(result), 1));
        if ( result != 0.0 )
        {
          if ( (int)a4 >= v10 )
            a4 = v10;
          v11 = glitch::video::getIndexTypeSize(glitch::video::E_INDEX_TYPE)::sizes[*((unsigned __int16 *)v8 + 22)];
          if ( a4 )
          {
            v12 = 0;
            v13 = 0;
            while ( 1 )
            {
              if ( v11 == 2 )
              {
                ++v13;
                *(_DWORD *)&v24[v12] = (unsigned __int16)*(_WORD *)LODWORD(result);
                v12 += 4;
                if ( a4 == v13 )
                  break;
              }
              else
              {
                if ( v11 == 4 )
                {
                  *(_DWORD *)&v24[v12] = *(_DWORD *)LODWORD(result);
                }
                else if ( v11 == 1 )
                {
                  *(_DWORD *)&v24[v12] = (unsigned __int8)*(_BYTE *)LODWORD(result);
                }
                ++v13;
                v12 += 4;
                if ( a4 == v13 )
                  break;
              }
              LODWORD(result) += v11;
            }
          }
          v14 = (int *)((char *)v9 + 36);
          if ( *((_WORD *)v9 + 24) == 2 )
          {
            switch ( *((_WORD *)v9 + 23) )
            {
              case 0:
                gameswf::collect<signed char>((unsigned int)v24, a4 / 3, v14, a3);
                break;
              case 1:
                gameswf::collect<unsigned char>((unsigned int)v24, a4 / 3, v14, a3);
                break;
              case 2:
                gameswf::collect<short>((unsigned int)v24, a4 / 3, v14, a3);
                break;
              case 3:
                gameswf::collect<unsigned short>((unsigned int)v24, a4 / 3, v14, a3);
                break;
              case 4:
                gameswf::collect<int>((unsigned int)v24, a4 / 3, v14, a3);
                break;
              case 5:
                gameswf::collect<unsigned int>((unsigned int)v24, a4 / 3, v14, a3);
                break;
              case 6:
                gameswf::collect<float>((unsigned int)v24, a4 / 3, v14, a3);
                break;
              default:
                break;
            }
            v17 = *((float **)v9 + 4);
            v18 = v17[6];
            v23 = v17[10];
            v19 = v17[7];
            v22 = v17[9];
            LODWORD(result) = v18 == 0.0;
            if ( v18 != 0.0 )
            {
              LODWORD(result) = v19 == 0.0;
              if ( v19 != 0.0 )
              {
                if ( a4 )
                {
                  v20 = 0;
                  v21 = 0;
                  do
                  {
                    a3[v20] = (float)(v18 * a3[v20]) + v22;
                    result = (float)(v19 * a3[v20 + 1]) + v23;
                    ++v21;
                    a3[v20 + 1] = result;
                    v20 += 2;
                  }
                  while ( a4 != v21 );
                }
              }
            }
          }
          v15 = *((_BYTE **)v8 + 6);
          v16 = v15[19];
          if ( (v16 & 0x1Fu) <= 1 )
          {
            if ( (v15[18] & 0x20) != 0 )
              result = COERCE_FLOAT((*(int (__fastcall **)(_BYTE *))(*(_DWORD *)v15 + 24))(v15));
            v15[19] = 0;
          }
          else
          {
            v15[19] = ((v16 & 0x1F) - 1) | v16 & 0xE0;
          }
        }
      }
    }
  }
  return result;
}


// ===== 7785b0 gameswf::scene_node::init_corners(void) =====
void __fastcall gameswf::scene_node::init_corners(gameswf::scene_node *this)
{
  int v1; // r7
  int v3; // r4
  int v4; // r6
  gameswf::scene_node *v5; // r3
  int v6; // r6
  int v7; // r9
  int v8; // r10
  int v9; // lr
  int v10; // r12
  int v11; // r0
  int v12; // r1
  int v13; // r2
  unsigned int v14; // r6
  int i; // r2
  float *v16; // r3
  int v17; // r7
  int j; // r10
  int v19; // r3
  float *v20; // r2
  char *v21; // r3
  _DWORD v22[3]; // [sp+8h] [bp-F4h] BYREF
  void *p; // [sp+14h] [bp-E8h]
  char *v24; // [sp+18h] [bp-E4h]
  float v25[12]; // [sp+B4h] [bp-48h] BYREF
  glitch::IReferenceCounted *v26; // [sp+E4h] [bp-18h] BYREF
  glitch::IReferenceCounted *v27; // [sp+E8h] [bp-14h] BYREF
  int v28; // [sp+ECh] [bp-10h] BYREF
  glitch::IReferenceCounted *v29; // [sp+F0h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v30; // [sp+F4h] [bp-8h] BYREF

  v1 = *((_DWORD *)this + 76);
  (*(void (__fastcall **)(glitch::IReferenceCounted **, int))(*(_DWORD *)v1 + 248))(&v30, v1);
  v29 = v30;
  if ( v30 )
    ++*((_DWORD *)v30 + 1);
  glitch::scene::CTriangleSelector::CTriangleSelector((int)v22, &v29, 0, 0);
  if ( v29 )
    glitch::IReferenceCounted::drop(v29);
  if ( v30 )
    glitch::IReferenceCounted::drop(v30);
  v3 = 0;
  v28 = 0;
  glitch::scene::CTriangleSelector::getTriangles((int)v22, (int)this + 320, 2, &v28, nullptr);
  v4 = v28;
  if ( v28 > 0 )
  {
    v5 = this;
    do
    {
      v6 = *((_DWORD *)v5 + 83);
      v7 = *((_DWORD *)v5 + 81);
      v8 = *((_DWORD *)v5 + 82);
      v9 = *((_DWORD *)v5 + 84);
      v10 = *((_DWORD *)v5 + 85);
      v11 = *((_DWORD *)v5 + 86);
      v12 = *((_DWORD *)v5 + 87);
      v13 = *((_DWORD *)v5 + 88);
      *((_DWORD *)v5 + 98) = *((_DWORD *)v5 + 80);
      *((_DWORD *)v5 + 99) = v7;
      *((_DWORD *)v5 + 100) = v8;
      *((_DWORD *)v5 + 101) = v6;
      *((_DWORD *)v5 + 102) = v9;
      *((_DWORD *)v5 + 103) = v10;
      *((_DWORD *)v5 + 104) = v11;
      *((_DWORD *)v5 + 105) = v12;
      *((_DWORD *)v5 + 106) = v13;
      v4 = v28;
      ++v3;
      v5 = (gameswf::scene_node *)((char *)v5 + 36);
    }
    while ( v28 > v3 );
  }
  v14 = 3 * v4;
  for ( i = 0; i != 12; i += 2 )
  {
    v25[i] = 0.0;
    v16 = &v25[i];
    v16[1] = 0.0;
  }
  (*(void (__fastcall **)(glitch::IReferenceCounted **, int))(*(_DWORD *)v1 + 248))(&v27, v1);
  v26 = v27;
  if ( v27 )
    ++*((_DWORD *)v27 + 1);
  gameswf::scene_node::collect_uvs((int)this, &v26, v25, v14);
  if ( v26 )
    glitch::IReferenceCounted::drop(v26);
  if ( v27 )
    glitch::IReferenceCounted::drop(v27);
  if ( v14 )
  {
    v17 = 0;
    for ( j = 0; j != v14; ++j )
    {
      while ( 1 )
      {
        v20 = &v25[v17];
        if ( v25[v17] < 0.5 )
          break;
        if ( v20[1] <= 0.5 )
          *((_WORD *)this + 235) = j;
        else
          *((_WORD *)this + 234) = j;
        ++j;
        v17 += 2;
        if ( j == v14 )
          goto LABEL_29;
      }
      if ( v20[1] <= 0.5 )
        v19 = 466;
      else
        v19 = 464;
      *(_WORD *)((char *)this + v19) = j;
      v17 += 2;
    }
  }
LABEL_29:
  v21 = v24;
  v22[0] = off_9767F0;
  if ( v24 != p )
    v21 = &v24[-36 * ((954437177 * ((unsigned int)(v24 - 36 - (_BYTE *)p) >> 2)) & 0x3FFFFFFF) - 36];
  if ( v21 )
    GlitchFree(p);
}


// ===== 778840 gameswf::scene_node::scene_node(gameswf::player *,glitch::scene::ISceneNode *,glitch::core::dimension2d<int>) =====
int __fastcall gameswf::scene_node::scene_node(int a1, int a2, int a3)
{
  _DWORD *v6; // r3
  int v7; // r3
  int v8; // r7
  _DWORD *v9; // r5
  unsigned int v10; // r8
  int v11; // r10
  glitch::IReferenceCounted *v12; // r0
  glitch::IReferenceCounted *v13; // r3
  int v14; // r8
  glitch::IReferenceCounted *v15; // r0
  glitch::IReferenceCounted *v16; // r3
  glitch::IReferenceCounted *v17; // r0
  glitch::video::CMaterialRenderer *v18; // r0
  unsigned int ParameterID; // r0
  _DWORD v21[4]; // [sp+Ch] [bp-40h] BYREF
  _DWORD v22[3]; // [sp+1Ch] [bp-30h] BYREF
  _DWORD v23[3]; // [sp+28h] [bp-24h] BYREF
  glitch::video::CMaterialRenderer *v24; // [sp+34h] [bp-18h] BYREF
  glitch::video::CMaterial *v25; // [sp+38h] [bp-14h] BYREF
  glitch::IReferenceCounted *v26; // [sp+3Ch] [bp-10h] BYREF
  glitch::IReferenceCounted *v27; // [sp+40h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v28; // [sp+44h] [bp-8h] BYREF
  int varg_r3; // [sp+74h] [bp+28h] BYREF

  *(_DWORD *)(a1 + 616) = off_95B720;
  *(_DWORD *)a1 = off_99058C;
  *(_DWORD *)(a1 + 620) = 1;
  *(int *)((char *)&elf_hash_bucket[99] + a1) = (int)off_9905AC;
  v22[2] = 1065353216;
  memset(v23, 0, sizeof(v23));
  memset(v21, 0, 12);
  v21[3] = 1065353216;
  v22[0] = 1065353216;
  v22[1] = 1065353216;
  glitch::scene::ISceneNode::ISceneNode(a1, (int *)off_990434, -1, v23, v21, v22);
  *(_DWORD *)(a1 + 312) = 0;
  *(_DWORD *)a1 = off_99031C;
  *(_DWORD *)(a1 + 616) = off_990420;
  *(_WORD *)(a1 + 316) = -1;
  *(_DWORD *)(a1 + 304) = a3;
  *(_DWORD *)(a1 + 308) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 336) = 0;
  *(_DWORD *)(a1 + 340) = 0;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 356) = 0;
  *(_DWORD *)(a1 + 388) = 0;
  *(_DWORD *)(a1 + 360) = 0;
  *(_DWORD *)(a1 + 364) = 0;
  *(_DWORD *)(a1 + 368) = 0;
  *(_DWORD *)(a1 + 372) = 0;
  *(_DWORD *)(a1 + 376) = 0;
  *(_DWORD *)(a1 + 380) = 0;
  *(_DWORD *)(a1 + 384) = 0;
  v6 = (_DWORD *)(a1 + 392);
  do
  {
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
    v6 += 3;
  }
  while ( v6 != (_DWORD *)(a1 + 464) );
  *(_WORD *)(a1 + 464) = 0;
  *(_WORD *)(a1 + 466) = 0;
  *(_WORD *)(a1 + 468) = 0;
  *(_WORD *)(a1 + 470) = 0;
  *(_BYTE *)(a1 + 536) = 0;
  LC_API_MEMSET_0((void *)(a1 + 472), 0, 0x40u);
  *(_DWORD *)(a1 + 548) = -1082130432;
  *(_DWORD *)(a1 + 560) = 1065353216;
  *(_BYTE *)(a1 + 596) = 0;
  *(_DWORD *)(a1 + 612) = 0;
  *(_DWORD *)(a1 + 472) = 1065353216;
  *(_DWORD *)(a1 + 492) = 1065353216;
  *(_DWORD *)(a1 + 512) = 1065353216;
  *(_DWORD *)(a1 + 532) = 1065353216;
  *(_DWORD *)(a1 + 540) = -1082130432;
  *(_DWORD *)(a1 + 544) = -1082130432;
  *(_DWORD *)(a1 + 552) = 1065353216;
  *(_DWORD *)(a1 + 556) = 1065353216;
  *(_DWORD *)(a1 + 568) = 0;
  *(_DWORD *)(a1 + 572) = 0;
  *(_DWORD *)(a1 + 576) = 0;
  *(_BYTE *)(a1 + 580) = 0;
  *(_DWORD *)(a1 + 584) = 0;
  *(_DWORD *)(a1 + 588) = 0;
  *(_DWORD *)(a1 + 592) = 0;
  *(_DWORD *)(a1 + 600) = 0;
  *(_DWORD *)(a1 + 604) = 0;
  *(_DWORD *)(a1 + 608) = 0;
  *(_BYTE *)(a1 + 536) = 1;
  *(_DWORD *)(a1 + 564) = a2;
  glitch::scene::ISceneNode::setName((glitch::scene::ISceneNode *)a1, gameswf::scene_node::NODE_NAME);
  v7 = *(_DWORD *)(a1 + 304) + *(_DWORD *)(**(_DWORD **)(a1 + 304) - 12);
  ++*(_DWORD *)(v7 + 4);
  v8 = *(_DWORD *)(a1 + 304);
  gameswf::scene_node::init_corners((gameswf::scene_node *)a1);
  v9 = *(_DWORD **)(*(_DWORD *)(a2 + 172) + 40);
  v10 = v9[34];
  (*(void (__fastcall **)(_DWORD *, int, _DWORD))(*v9 + 160))(v9, 16, 0);
  v11 = v9[56];
  v12 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(int))(*(_DWORD *)a3 + 84))(a3);
  glitch::video::CTextureManager::addTexture(&v28, v11, &varg_r3, v12, 14, 1u);
  v13 = v28;
  v14 = (v10 >> 4) & 1;
  if ( v28 )
    ++*((_DWORD *)v28 + 1);
  v15 = *(glitch::IReferenceCounted **)(a1 + 308);
  *(_DWORD *)(a1 + 308) = v13;
  if ( v15 )
    glitch::IReferenceCounted::drop(v15);
  if ( v28 )
    glitch::IReferenceCounted::drop(v28);
  (*(void (__fastcall **)(_DWORD *, int, int))(*v9 + 160))(v9, 16, v14);
  (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD *, int, _DWORD))(*v9 + 132))(&v27, v9, a1 + 308, 0);
  v16 = v27;
  if ( v27 )
    ++*((_DWORD *)v27 + 1);
  v17 = *(glitch::IReferenceCounted **)(a1 + 312);
  *(_DWORD *)(a1 + 312) = v16;
  if ( v17 )
    glitch::IReferenceCounted::drop(v17);
  if ( v27 )
    glitch::IReferenceCounted::drop(v27);
  (*(void (__fastcall **)(glitch::IReferenceCounted **, int))(*(_DWORD *)v8 + 248))(&v26, v8);
  (*(void (__fastcall **)(glitch::video::CMaterial **, glitch::IReferenceCounted *, _DWORD))(*(_DWORD *)v26 + 24))(
    &v25,
    v26,
    0);
  if ( v26 )
    glitch::IReferenceCounted::drop(v26);
  if ( v25 )
  {
    v24 = *((glitch::video::CMaterialRenderer **)v25 + 1);
    v18 = v24;
    if ( v24 )
    {
      ++*(_DWORD *)v24;
      v18 = v24;
    }
    ParameterID = glitch::video::CMaterialRenderer::getParameterID((int)v18, 2, 0);
    *(_WORD *)(a1 + 316) = ParameterID;
    if ( ParameterID != 0xFFFF )
      glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
        v25,
        ParameterID,
        0,
        (int *)(a1 + 308));
    boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v24);
  }
  *(_DWORD *)(a1 + 604) = -1082130432;
  *(_DWORD *)(a1 + 600) = -1082130432;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v25);
  return a1;
}


// ===== 778c58 gameswf::scene_node::scene_node(gameswf::player *,glitch::scene::ISceneNode *,glitch::core::dimension2d<int>) =====
int gameswf::scene_node::scene_node(int a1, int *a2, int a3, int a4, ...)
{
  int v8; // r3
  _DWORD *v9; // r3
  int v10; // r3
  int v11; // r7
  _DWORD *v12; // r5
  unsigned int v13; // r10
  int v14; // r9
  glitch::IReferenceCounted *v15; // r0
  glitch::IReferenceCounted *v16; // r3
  int v17; // r10
  glitch::IReferenceCounted *v18; // r0
  glitch::IReferenceCounted *v19; // r3
  glitch::IReferenceCounted *v20; // r0
  glitch::video::CMaterialRenderer *v21; // r0
  unsigned int ParameterID; // r0
  _DWORD v24[4]; // [sp+Ch] [bp-3Ch] BYREF
  _DWORD v25[3]; // [sp+1Ch] [bp-2Ch] BYREF
  _DWORD v26[3]; // [sp+28h] [bp-20h] BYREF
  glitch::video::CMaterialRenderer *v27; // [sp+34h] [bp-14h] BYREF
  glitch::video::CMaterial *v28; // [sp+38h] [bp-10h] BYREF
  glitch::IReferenceCounted *v29; // [sp+3Ch] [bp-Ch] BYREF
  glitch::IReferenceCounted *v30; // [sp+40h] [bp-8h] BYREF
  glitch::IReferenceCounted *v31; // [sp+44h] [bp-4h] BYREF
  va_list va; // [sp+68h] [bp+20h] BYREF

  va_start(va, a4);
  v25[2] = 1065353216;
  v24[3] = 1065353216;
  v25[0] = 1065353216;
  v25[1] = 1065353216;
  memset(v26, 0, sizeof(v26));
  memset(v24, 0, 12);
  glitch::scene::ISceneNode::ISceneNode(a1, a2 + 1, -1, v26, v24, v25);
  v8 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v8 - 28)) = a2[4];
  v9 = (_DWORD *)(a1 + 392);
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[5];
  *(_DWORD *)(a1 + 312) = 0;
  *(_WORD *)(a1 + 316) = -1;
  *(_DWORD *)(a1 + 304) = a4;
  *(_DWORD *)(a1 + 308) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 336) = 0;
  *(_DWORD *)(a1 + 340) = 0;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 356) = 0;
  *(_DWORD *)(a1 + 388) = 0;
  *(_DWORD *)(a1 + 360) = 0;
  *(_DWORD *)(a1 + 364) = 0;
  *(_DWORD *)(a1 + 368) = 0;
  *(_DWORD *)(a1 + 372) = 0;
  *(_DWORD *)(a1 + 376) = 0;
  *(_DWORD *)(a1 + 380) = 0;
  *(_DWORD *)(a1 + 384) = 0;
  do
  {
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
    v9 += 3;
  }
  while ( v9 != (_DWORD *)(a1 + 464) );
  *(_WORD *)(a1 + 464) = 0;
  *(_WORD *)(a1 + 466) = 0;
  *(_WORD *)(a1 + 468) = 0;
  *(_WORD *)(a1 + 470) = 0;
  *(_BYTE *)(a1 + 536) = 0;
  LC_API_MEMSET_0((void *)(a1 + 472), 0, 0x40u);
  *(_DWORD *)(a1 + 548) = -1082130432;
  *(_DWORD *)(a1 + 560) = 1065353216;
  *(_BYTE *)(a1 + 596) = 0;
  *(_DWORD *)(a1 + 612) = 0;
  *(_DWORD *)(a1 + 472) = 1065353216;
  *(_DWORD *)(a1 + 492) = 1065353216;
  *(_DWORD *)(a1 + 512) = 1065353216;
  *(_DWORD *)(a1 + 532) = 1065353216;
  *(_DWORD *)(a1 + 540) = -1082130432;
  *(_DWORD *)(a1 + 544) = -1082130432;
  *(_DWORD *)(a1 + 552) = 1065353216;
  *(_DWORD *)(a1 + 556) = 1065353216;
  *(_DWORD *)(a1 + 564) = a3;
  *(_DWORD *)(a1 + 568) = 0;
  *(_DWORD *)(a1 + 572) = 0;
  *(_DWORD *)(a1 + 576) = 0;
  *(_BYTE *)(a1 + 580) = 0;
  *(_DWORD *)(a1 + 584) = 0;
  *(_DWORD *)(a1 + 588) = 0;
  *(_DWORD *)(a1 + 592) = 0;
  *(_DWORD *)(a1 + 600) = 0;
  *(_DWORD *)(a1 + 604) = 0;
  *(_DWORD *)(a1 + 608) = 0;
  *(_BYTE *)(a1 + 536) = 1;
  glitch::scene::ISceneNode::setName((glitch::scene::ISceneNode *)a1, gameswf::scene_node::NODE_NAME);
  v10 = *(_DWORD *)(a1 + 304) + *(_DWORD *)(**(_DWORD **)(a1 + 304) - 12);
  ++*(_DWORD *)(v10 + 4);
  v11 = *(_DWORD *)(a1 + 304);
  gameswf::scene_node::init_corners((gameswf::scene_node *)a1);
  v12 = *(_DWORD **)(*(_DWORD *)(a3 + 172) + 40);
  v13 = v12[34];
  (*(void (__fastcall **)(_DWORD *, int, _DWORD))(*v12 + 160))(v12, 16, 0);
  v14 = v12[56];
  v15 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(int))(*(_DWORD *)a4 + 84))(a4);
  glitch::video::CTextureManager::addTexture(&v31, v14, (int *)&va, v15, 14, 1u);
  v16 = v31;
  v17 = (v13 >> 4) & 1;
  if ( v31 )
    ++*((_DWORD *)v31 + 1);
  v18 = *(glitch::IReferenceCounted **)(a1 + 308);
  *(_DWORD *)(a1 + 308) = v16;
  if ( v18 )
    glitch::IReferenceCounted::drop(v18);
  if ( v31 )
    glitch::IReferenceCounted::drop(v31);
  (*(void (__fastcall **)(_DWORD *, int, int))(*v12 + 160))(v12, 16, v17);
  (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD *, int, _DWORD))(*v12 + 132))(&v30, v12, a1 + 308, 0);
  v19 = v30;
  if ( v30 )
    ++*((_DWORD *)v30 + 1);
  v20 = *(glitch::IReferenceCounted **)(a1 + 312);
  *(_DWORD *)(a1 + 312) = v19;
  if ( v20 )
    glitch::IReferenceCounted::drop(v20);
  if ( v30 )
    glitch::IReferenceCounted::drop(v30);
  (*(void (__fastcall **)(glitch::IReferenceCounted **, int))(*(_DWORD *)v11 + 248))(&v29, v11);
  (*(void (__fastcall **)(glitch::video::CMaterial **, glitch::IReferenceCounted *, _DWORD))(*(_DWORD *)v29 + 24))(
    &v28,
    v29,
    0);
  if ( v29 )
    glitch::IReferenceCounted::drop(v29);
  if ( v28 )
  {
    v27 = *((glitch::video::CMaterialRenderer **)v28 + 1);
    v21 = v27;
    if ( v27 )
    {
      ++*(_DWORD *)v27;
      v21 = v27;
    }
    ParameterID = glitch::video::CMaterialRenderer::getParameterID((int)v21, 2, 0);
    *(_WORD *)(a1 + 316) = ParameterID;
    if ( ParameterID != 0xFFFF )
      glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
        v28,
        ParameterID,
        0,
        (int *)(a1 + 308));
    boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v27);
  }
  *(_DWORD *)(a1 + 604) = -1082130432;
  *(_DWORD *)(a1 + 600) = -1082130432;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v28);
  return a1;
}


// ===== 779034 gameswf::tesselate::tesselating_shape::~tesselating_shape() =====
void __fastcall gameswf::tesselate::tesselating_shape::~tesselating_shape(gameswf::tesselate::tesselating_shape *this)
{
  ;
}


// ===== 779038 gameswf::set_curve_max_pixel_error(float) =====
bool __fastcall gameswf::set_curve_max_pixel_error(gameswf *this, float a2)
{
  float v2; // r4
  _BOOL4 result; // r0

  v2 = *(float *)&this;
  result = *(float *)&this < 1000000.0;
  if ( result )
  {
    result = v2 > 0.000001;
    if ( v2 <= 0.000001 )
      v2 = 0.000001;
  }
  else
  {
    v2 = 1000000.0;
  }
  gameswf::s_curve_max_pixel_error = LODWORD(v2);
  return result;
}


// ===== 77908c gameswf::get_curve_max_pixel_error(void) =====
int __fastcall gameswf::get_curve_max_pixel_error(gameswf *this)
{
  return gameswf::s_curve_max_pixel_error;
}


// ===== 7790a0 gameswf::edge::edge(void) =====
_DWORD *__fastcall gameswf::edge::edge(_DWORD *this)
{
  *(this + 3) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  return this;
}


// ===== 7790b8 gameswf::edge::edge(void) =====
_DWORD *__fastcall gameswf::edge::edge(_DWORD *this)
{
  *(this + 3) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  return this;
}


// ===== 7790d0 gameswf::edge::edge(float,float,float,float) =====
float *__fastcall gameswf::edge::edge(float *this, float a2, float a3, float a4, float a5)
{
  float v5; // r5
  float v6; // r6
  float v7; // r8

  v5 = a2;
  v6 = a3;
  v7 = a4;
  if ( a2 < -3.4028e38 || a2 > 3.4028e38 )
    v5 = 0.0;
  *this = v5;
  if ( a3 < -3.4028e38 || a3 > 3.4028e38 )
    v6 = 0.0;
  *(this + 1) = v6;
  if ( a4 < -3.4028e38 || a4 > 3.4028e38 )
    v7 = 0.0;
  *(this + 2) = v7;
  if ( a5 < -3.4028e38 || a5 > 3.4028e38 )
    *(this + 3) = 0.0;
  else
    *(this + 3) = a5;
  return this;
}


// ===== 7791d8 gameswf::edge::edge(float,float,float,float) =====
float *__fastcall gameswf::edge::edge(float *this, float a2, float a3, float a4, float a5)
{
  float v5; // r5
  float v6; // r6
  float v7; // r8

  v5 = a2;
  v6 = a3;
  v7 = a4;
  if ( a2 < -3.4028e38 || a2 > 3.4028e38 )
    v5 = 0.0;
  *this = v5;
  if ( a3 < -3.4028e38 || a3 > 3.4028e38 )
    v6 = 0.0;
  *(this + 1) = v6;
  if ( a4 < -3.4028e38 || a4 > 3.4028e38 )
    v7 = 0.0;
  *(this + 2) = v7;
  if ( a5 < -3.4028e38 || a5 > 3.4028e38 )
    *(this + 3) = 0.0;
  else
    *(this + 3) = a5;
  return this;
}


// ===== 7792e0 gameswf::edge::is_straight(void) =====
bool __fastcall gameswf::edge::is_straight(gameswf::edge *this)
{
  _BOOL4 result; // r0

  result = *(float *)this == *((float *)this + 2);
  if ( result )
    return *((float *)this + 1) == *((float *)this + 3);
  return result;
}


// ===== 77931c gameswf::path::is_empty(void) =====
bool __fastcall gameswf::path::is_empty(gameswf::path *this)
{
  return *((_DWORD *)this + 6) == 0;
}


// ===== 77932c gameswf::write_le<short>(gameswf::tu_file *,short) =====
int __fastcall gameswf::write_le<short>(int a1, __int16 a2)
{
  __int16 v3; // [sp+6h] [bp-6h] BYREF

  v3 = a2;
  return (*(int (__fastcall **)(__int16 *, int, _DWORD))(a1 + 12))(&v3, 2, *(_DWORD *)a1);
}


// ===== 77935c gameswf::read_le<short>(gameswf::tu_file *) =====
int __fastcall gameswf::read_le<short>(int a1)
{
  _WORD v2[3]; // [sp+6h] [bp-6h] BYREF

  (*(void (__fastcall **)(_WORD *, int, _DWORD))(a1 + 8))(v2, 2, *(_DWORD *)a1);
  return v2[0];
}


// ===== 779388 gameswf::mesh::mesh(void) =====
int __fastcall gameswf::mesh::mesh(int this)
{
  *(_BYTE *)(this + 44) = 0;
  *(_DWORD *)this = 0;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)(this + 8) = 0;
  *(_BYTE *)(this + 12) = 0;
  *(_DWORD *)(this + 16) = 0;
  *(_DWORD *)(this + 20) = 0;
  *(_DWORD *)(this + 24) = 0;
  *(_BYTE *)(this + 28) = 0;
  *(_DWORD *)(this + 32) = 0;
  *(_DWORD *)(this + 36) = 0;
  *(_DWORD *)(this + 40) = 0;
  return this;
}


// ===== 7793c0 gameswf::mesh::mesh(void) =====
int __fastcall gameswf::mesh::mesh(int this)
{
  *(_BYTE *)(this + 44) = 0;
  *(_DWORD *)this = 0;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)(this + 8) = 0;
  *(_BYTE *)(this + 12) = 0;
  *(_DWORD *)(this + 16) = 0;
  *(_DWORD *)(this + 20) = 0;
  *(_DWORD *)(this + 24) = 0;
  *(_BYTE *)(this + 28) = 0;
  *(_DWORD *)(this + 32) = 0;
  *(_DWORD *)(this + 36) = 0;
  *(_DWORD *)(this + 40) = 0;
  return this;
}


// ===== 7793f8 gameswf::mesh::display(gameswf::base_fill_style const&,float) =====
int *__fastcall gameswf::mesh::display(int *this, const gameswf::base_fill_style *a2, float a3)
{
  int *v3; // r5

  v3 = this;
  if ( *(this + 1) > 0 )
  {
    this = (int *)(*(int (__fastcall **)(const gameswf::base_fill_style *, _DWORD))(*(_DWORD *)a2 + 8))(a2, 0);
    if ( gameswf::s_render_handler )
      this = (int *)(*(int (__fastcall **)(int, int, int))(*(_DWORD *)gameswf::s_render_handler + 88))(
                      gameswf::s_render_handler,
                      *v3,
                      v3[1] >> 1);
  }
  if ( v3[5] > 0 )
  {
    (*(void (__fastcall **)(const gameswf::base_fill_style *, _DWORD, _DWORD))(*(_DWORD *)a2 + 8))(a2, 0, LODWORD(a3));
    this = &gameswf::s_render_handler;
    if ( gameswf::s_render_handler )
      return (int *)(*(int (__fastcall **)(int, int, int, int, int))(*(_DWORD *)gameswf::s_render_handler + 92))(
                      gameswf::s_render_handler,
                      v3[4],
                      v3[5] >> 1,
                      v3[8],
                      v3[9]);
  }
  return this;
}


// ===== 7794d0 gameswf::line_strip::line_strip(void) =====
int __fastcall gameswf::line_strip::line_strip(int this)
{
  *(_BYTE *)(this + 16) = 0;
  *(_DWORD *)this = -1;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)(this + 8) = 0;
  *(_DWORD *)(this + 12) = 0;
  return this;
}


// ===== 7794ec gameswf::line_strip::line_strip(void) =====
int __fastcall gameswf::line_strip::line_strip(int this)
{
  *(_BYTE *)(this + 16) = 0;
  *(_DWORD *)this = -1;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)(this + 8) = 0;
  *(_DWORD *)(this + 12) = 0;
  return this;
}


// ===== 779508 gameswf::line_strip::display(gameswf::base_line_style const&,float) =====
int __fastcall gameswf::line_strip::display(gameswf::line_strip *this, const gameswf::base_line_style *a2, float a3)
{
  int result; // r0

  result = (*(int (__fastcall **)(const gameswf::base_line_style *, _DWORD))(*(_DWORD *)a2 + 8))(a2, LODWORD(a3));
  if ( gameswf::s_render_handler )
    return (*(int (__fastcall **)(int, _DWORD, int))(*(_DWORD *)gameswf::s_render_handler + 96))(
             gameswf::s_render_handler,
             *((_DWORD *)this + 1),
             *((int *)this + 2) >> 1);
  return result;
}


// ===== 77956c gameswf::mesh_set::mesh_set(void) =====
int __fastcall gameswf::mesh_set::mesh_set(int this)
{
  *(_BYTE *)(this + 16) = 0;
  *(_DWORD *)this = 0;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)(this + 8) = 0;
  *(_DWORD *)(this + 12) = 0;
  return this;
}


// ===== 77958c gameswf::mesh_set::mesh_set(void) =====
int __fastcall gameswf::mesh_set::mesh_set(int this)
{
  *(_BYTE *)(this + 16) = 0;
  *(_DWORD *)this = 0;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)(this + 8) = 0;
  *(_DWORD *)(this + 12) = 0;
  return this;
}


// ===== 7795ac gameswf::mesh_set::display(gameswf::matrix const&,gameswf::cxform const&,gameswf::array<gameswf::fill_style> const&,gameswf::array<gameswf::line_style> const&) =====
int *__fastcall gameswf::mesh_set::display(int a1, int a2, int a3, _DWORD *a4, _DWORD *a5)
{
  int *result; // r0
  int v9; // r9
  _DWORD *v10; // r5
  int v11; // r3
  int v12; // r6
  int i; // r4
  int v14; // r4
  gameswf::line_strip *v15; // r0

  result = elf_hash_bucket + 14552;
  if ( gameswf::s_render_handler )
  {
    result = (int *)(*(int (__fastcall **)(int))(*(_DWORD *)gameswf::s_render_handler + 80))(gameswf::s_render_handler);
    if ( gameswf::s_render_handler )
      result = (int *)(*(int (__fastcall **)(int, int))(*(_DWORD *)gameswf::s_render_handler + 84))(
                        gameswf::s_render_handler,
                        a3);
  }
  if ( *(int *)(a1 + 8) > 0 )
  {
    v9 = 0;
    do
    {
      v10 = (_DWORD *)(*(_DWORD *)(a1 + 4) + 32 * v9);
      v11 = v10[1];
      if ( v11 > 0 )
      {
        v12 = 0;
        for ( i = 0; i < v11; ++i )
        {
          result = *(int **)(*v10 + 4 * i);
          if ( result )
          {
            result = gameswf::mesh::display(result, (const gameswf::base_fill_style *)(*a4 + v12), 1.0);
            v11 = v10[1];
          }
          v12 += 84;
        }
      }
      if ( (int)v10[5] > 0 )
      {
        v14 = 0;
        do
        {
          v15 = *(gameswf::line_strip **)(v10[4] + 4 * v14++);
          result = (int *)gameswf::line_strip::display(
                            v15,
                            (const gameswf::base_line_style *)(*a5 + 108 * *(_DWORD *)v15),
                            1.0);
        }
        while ( v14 < v10[5] );
      }
      ++v9;
    }
    while ( v9 < *(_DWORD *)(a1 + 8) );
  }
  return result;
}


// ===== 7796c8 gameswf::mesh_set::display(gameswf::matrix const&,gameswf::cxform const&,gameswf::array<gameswf::morph_fill_style> const&,gameswf::array<gameswf::morph_line_style> const&,float) =====
int *__fastcall gameswf::mesh_set::display(int a1, int a2, int a3, _DWORD *a4, _DWORD *a5, float a6)
{
  int *result; // r0
  int v10; // r9
  _DWORD *v11; // r5
  int v12; // r3
  int v13; // r6
  int i; // r4
  int v15; // r4
  gameswf::line_strip *v16; // r0

  result = elf_hash_bucket + 14552;
  if ( gameswf::s_render_handler )
  {
    result = (int *)(*(int (__fastcall **)(int, int))(*(_DWORD *)gameswf::s_render_handler + 80))(
                      gameswf::s_render_handler,
                      a2);
    if ( gameswf::s_render_handler )
      result = (int *)(*(int (__fastcall **)(int, int))(*(_DWORD *)gameswf::s_render_handler + 84))(
                        gameswf::s_render_handler,
                        a3);
  }
  if ( *(int *)(a1 + 8) > 0 )
  {
    v10 = 0;
    do
    {
      v11 = (_DWORD *)(*(_DWORD *)(a1 + 4) + 32 * v10);
      v12 = v11[1];
      if ( v12 > 0 )
      {
        v13 = 0;
        for ( i = 0; i < v12; ++i )
        {
          result = *(int **)(*v11 + 4 * i);
          if ( result )
          {
            result = gameswf::mesh::display(result, (const gameswf::base_fill_style *)(*a4 + v13), a6);
            v12 = v11[1];
          }
          v13 += 156;
        }
      }
      if ( (int)v11[5] > 0 )
      {
        v15 = 0;
        do
        {
          v16 = *(gameswf::line_strip **)(v11[4] + 4 * v15++);
          result = (int *)gameswf::line_strip::display(
                            v16,
                            (const gameswf::base_line_style *)(*a5 + 16 * *(_DWORD *)v16),
                            a6);
        }
        while ( v15 < v11[5] );
      }
      ++v10;
    }
    while ( v10 < *(_DWORD *)(a1 + 8) );
  }
  return result;
}


// ===== 7797e4 gameswf::sort_by_decreasing_error(void const*,void const*) =====
int __fastcall gameswf::sort_by_decreasing_error(float **this, float **a2, const void *a3)
{
  if ( **this < **a2 )
    return 1;
  if ( **this <= **a2 )
    return 0;
  return -1;
}


// ===== 779830 gameswf::shape_character_def::get_bound(gameswf::rect *) =====
int __fastcall gameswf::shape_character_def::get_bound(int a1, _DWORD *a2)
{
  int result; // r0
  int v4; // r1
  int v5; // r2
  int v6; // r3
  _DWORD *v7; // t0

  v7 = (_DWORD *)(a1 + 84);
  result = *(_DWORD *)(a1 + 84);
  v4 = *++v7;
  v5 = *++v7;
  v6 = v7[1];
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}


// ===== 779844 gameswf::shape_character_def::compute_bound(gameswf::rect *) =====
int __fastcall gameswf::shape_character_def::compute_bound(int result, float *a2)
{
  float v2; // r10
  int v3; // r11
  float v4; // r6
  float v5; // r5
  float v6; // r7
  float v7; // r8
  float v8; // r7
  int v9; // r7
  int v10; // r3
  float v11; // r6
  float v12; // r5
  float v13; // r8
  float v14; // r9
  int v15; // [sp+4h] [bp-10h]
  int v16; // [sp+8h] [bp-Ch]
  int v17; // [sp+Ch] [bp-8h]

  v2 = 1.0e10;
  v17 = result;
  a2[3] = -1.0e10;
  *a2 = 1.0e10;
  a2[2] = 1.0e10;
  a2[1] = -1.0e10;
  if ( *(int *)(result + 72) > 0 )
  {
    v15 = 0;
    v16 = 0;
    while ( 1 )
    {
      v3 = *(_DWORD *)(v17 + 68) + v15;
      v4 = *(float *)(v3 + 12);
      v5 = *(float *)(v3 + 16);
      v6 = a2[2];
      if ( v4 <= v2 )
        v2 = *(float *)(v3 + 12);
      *a2 = v2;
      v7 = a2[1];
      if ( v5 <= v6 )
        v6 = v5;
      a2[2] = v6;
      v8 = a2[3];
      if ( v4 <= v7 )
        v4 = v7;
      a2[1] = v4;
      result = v5 > v8;
      if ( v5 <= v8 )
        v5 = v8;
      a2[3] = v5;
      if ( *(int *)(v3 + 24) > 0 )
      {
        v9 = 0;
        do
        {
          v10 = *(_DWORD *)(v3 + 20) + 16 * v9;
          v11 = *(float *)(v10 + 8);
          v12 = *(float *)(v10 + 12);
          ++v9;
          v13 = a2[2];
          if ( v11 <= v2 )
            v2 = *(float *)(v10 + 8);
          *a2 = v2;
          v14 = a2[1];
          if ( v12 <= v13 )
            v13 = v12;
          a2[2] = v13;
          if ( v11 <= v14 )
            v11 = v14;
          a2[1] = v11;
          result = v12 > a2[3];
          if ( v12 <= a2[3] )
            v12 = a2[3];
          a2[3] = v12;
        }
        while ( v9 < *(_DWORD *)(v3 + 24) );
      }
      ++v16;
      v15 += 40;
      if ( v16 >= *(_DWORD *)(v17 + 72) )
        break;
      v2 = *a2;
    }
  }
  return result;
}


// ===== 7799e8 gameswf::array<gameswf::mesh_set *>::reserve(int) =====
void __fastcall gameswf::array<gameswf::mesh_set *>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 4 * a2, 4 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(4 * a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 779a64 gameswf::path::path(gameswf::path const&) =====
gameswf::path *__fastcall gameswf::path::path(gameswf::path *this, const gameswf::path *a2)
{
  int v3; // r4
  int v5; // r3
  int v6; // r3
  _DWORD *v7; // r12
  int *v8; // r3
  int v9; // r0
  int v10; // r1
  int v11; // r2
  int v12; // r3

  v3 = 0;
  *(_DWORD *)this = *(_DWORD *)a2;
  *((_DWORD *)this + 1) = *((_DWORD *)a2 + 1);
  *((_DWORD *)this + 2) = *((_DWORD *)a2 + 2);
  *((_DWORD *)this + 3) = *((_DWORD *)a2 + 3);
  v5 = *((_DWORD *)a2 + 4);
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 4) = v5;
  *((_DWORD *)this + 7) = 0;
  *((_BYTE *)this + 32) = 0;
  gameswf::array<gameswf::edge>::resize((_DWORD *)this + 5, *((_DWORD *)a2 + 6));
  if ( *((int *)this + 6) > 0 )
  {
    do
    {
      v6 = 16 * v3++;
      v7 = (_DWORD *)(*((_DWORD *)this + 5) + v6);
      v8 = (int *)(*((_DWORD *)a2 + 5) + v6);
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      v12 = v8[3];
      *v7 = v9;
      v7[1] = v10;
      v7[2] = v11;
      v7[3] = v12;
    }
    while ( v3 < *((_DWORD *)this + 6) );
  }
  *((_BYTE *)this + 36) = *((_BYTE *)a2 + 36);
  return this;
}


// ===== 779b00 gameswf::path::reset(float,float,int,int,int) =====
void __fastcall gameswf::path::reset(gameswf::path *this, float a2, float a3, int a4, int a5, int a6)
{
  *((float *)this + 3) = a2;
  *((float *)this + 4) = a3;
  *(_DWORD *)this = a4;
  *((_DWORD *)this + 1) = a5;
  *((_DWORD *)this + 2) = a6;
  gameswf::array<gameswf::edge>::resize((_DWORD *)this + 5, 0);
}


// ===== 779b24 gameswf::path::path(float,float,int,int,int) =====
gameswf::path *__fastcall gameswf::path::path(gameswf::path *this, float a2, float a3, int a4, int a5, int a6)
{
  *((_BYTE *)this + 32) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  gameswf::path::reset(this, a2, a3, a4, a5, a6);
  return this;
}


// ===== 779b64 gameswf::path::path(float,float,int,int,int) =====
gameswf::path *__fastcall gameswf::path::path(gameswf::path *this, float a2, float a3, int a4, int a5, int a6)
{
  *((_BYTE *)this + 32) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  gameswf::path::reset(this, a2, a3, a4, a5, a6);
  return this;
}


// ===== 779ba4 gameswf::path::path(void) =====
gameswf::path *__fastcall gameswf::path::path(gameswf::path *this)
{
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_BYTE *)this + 32) = 0;
  *((_BYTE *)this + 36) = 0;
  gameswf::path::reset(this, 0.0, 0.0, 0, 0, 0);
  return this;
}


// ===== 779bec gameswf::path::path(void) =====
gameswf::path *__fastcall gameswf::path::path(gameswf::path *this)
{
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_BYTE *)this + 32) = 0;
  *((_BYTE *)this + 36) = 0;
  gameswf::path::reset(this, 0.0, 0.0, 0, 0, 0);
  return this;
}


// ===== 779c34 gameswf::array<gameswf::path>::push_back<gameswf::path>(gameswf::path const&) =====
gameswf::path *__fastcall gameswf::array<gameswf::path>::push_back<gameswf::path>(_DWORD *a1, gameswf::path *a2)
{
  int v2; // r3
  int v4; // r5
  gameswf::path *result; // r0

  v2 = a1[1];
  v4 = v2 + 1;
  if ( v2 + 1 > a1[2] )
  {
    gameswf::array<gameswf::path>::reserve((int)a1, v4 + (v4 >> 1));
    v2 = a1[1];
  }
  result = gameswf::path::path((gameswf::path *)(*a1 + 40 * v2), a2);
  a1[1] = v4;
  return result;
}


// ===== 779c7c gameswf::array<gameswf::mesh_set::layer>::reserve(int) =====
void __fastcall gameswf::array<gameswf::mesh_set::layer>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 32 * a2, 32 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(32 * a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 779cf8 gameswf::array<gameswf::mesh *>::reserve(int) =====
void __fastcall gameswf::array<gameswf::mesh *>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 4 * a2, 4 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(4 * a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 779d74 gameswf::array<gameswf::line_strip *>::reserve(int) =====
void __fastcall gameswf::array<gameswf::line_strip *>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 4 * a2, 4 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(4 * a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 779df0 gameswf::array<float>::reserve(int) =====
void __fastcall gameswf::array<float>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 4 * a2, 4 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(4 * a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 779e6c gameswf::mesh::reserve_triangles(int) =====
void __fastcall gameswf::mesh::reserve_triangles(gameswf::mesh *this, int a2)
{
  gameswf::array<float>::reserve((int)this + 16, 6 * a2);
}


// ===== 779e7c gameswf::array<ushort>::reserve(int) =====
void __fastcall gameswf::array<unsigned short>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 2 * a2, 2 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(2 * a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 779ef8 gameswf::mesh_set::expand_styles_to_include(int) =====
void __fastcall gameswf::mesh_set::expand_styles_to_include(gameswf::mesh_set *this, int a2)
{
  int v2; // r8
  int v4; // r10
  _DWORD *v5; // r5
  int v6; // r4
  int v7; // r1
  int v8; // r6
  int v9; // r3
  void *v10; // r4

  v2 = *((_DWORD *)this + 1);
  v4 = *((_DWORD *)this + 2) - 1;
  v5 = (_DWORD *)(v2 + 32 * v4);
  v6 = v5[1];
  if ( a2 < v6 )
  {
    v7 = *(_DWORD *)(*(_DWORD *)(v2 + 32 * v4) + 4 * a2);
    if ( v7 )
      return;
LABEL_9:
    v10 = operator new(0x30u, v7);
    gameswf::mesh::mesh((int)v10);
    *(_DWORD *)(*(_DWORD *)(v2 + 32 * v4) + 4 * a2) = v10;
    return;
  }
  v8 = a2 + 1;
  if ( a2 != -1 && v8 > v5[2] )
    gameswf::array<gameswf::mesh *>::reserve(v2 + 32 * v4, v8 + (v8 >> 1));
  if ( v8 > v6 )
  {
    v9 = 4 * v6;
    do
    {
      ++v6;
      *(_DWORD *)(*v5 + v9) = 0;
      v9 += 4;
    }
    while ( v8 > v6 );
  }
  v5[1] = v8;
  v7 = *(_DWORD *)(*(_DWORD *)(v2 + 32 * v4) + 4 * a2);
  if ( !v7 )
    goto LABEL_9;
}


// ===== 779fa8 gameswf::mesh_set::get_mutable_mesh(int) =====
int __fastcall gameswf::mesh_set::get_mutable_mesh(gameswf::mesh_set *this, int a2)
{
  gameswf::mesh_set::expand_styles_to_include(this, a2);
  return *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 1) + 32 * (*((_DWORD *)this + 2) - 1)) + 4 * a2);
}


// ===== 779fd0 gameswf::shape_character_def::sort_and_clean_meshes(void) =====
void __fastcall gameswf::shape_character_def::sort_and_clean_meshes(gameswf::shape_character_def *this)
{
  signed int v1; // r1

  v1 = *((_DWORD *)this + 31);
  if ( v1 > 0 )
    qsort(*((void **)this + 30), v1, 4u, (int (*)(const void *, const void *))gameswf::sort_by_decreasing_error);
}


// ===== 779ff4 gameswf::path::point_test(float,float) =====
int __fastcall gameswf::path::point_test(gameswf::path *this, float a2, float a3)
{
  int v4; // r4
  float v5; // r11
  float v6; // r6
  int v7; // r9
  float *v8; // r10
  float v9; // r8
  float v10; // r5
  float v12; // r10
  float v13; // r9
  float v14; // r10
  float v15; // r6
  float v16; // r10
  float v17; // r9
  float v18; // r6
  float v19; // [sp+0h] [bp-24h]
  int v21; // [sp+Ch] [bp-18h]
  float v23; // [sp+14h] [bp-10h]
  int v24; // [sp+18h] [bp-Ch]
  float x; // [sp+1Ch] [bp-8h]

  v21 = *((_DWORD *)this + 6);
  if ( v21 > 0 && *(int *)this >= 0 )
  {
    v4 = 0;
    v5 = *((float *)this + 3);
    v6 = *((float *)this + 4);
    v24 = 0;
    while ( 1 )
    {
      v7 = *((_DWORD *)this + 5);
      v8 = (float *)(v7 + 16 * v4);
      v9 = v8[2];
      v10 = v8[3];
      if ( !gameswf::edge::is_straight((gameswf::edge *)v8) )
        break;
      if ( v6 >= a3 || v10 < a3 )
      {
        if ( v6 <= a3
          || v10 > a3
          || (float)(a2 * (float)(v10 - v6)) <= (float)((float)(v5 * (float)(v10 - v6))
                                                      + (float)((float)(v9 - v5) * (float)(a3 - v6))) )
        {
          goto LABEL_9;
        }
LABEL_36:
        ++v4;
        ++v24;
        v5 = v9;
        v6 = v10;
        if ( v4 == v21 )
          return v24 & 1;
      }
      else
      {
        if ( (float)(a2 * (float)(v10 - v6)) < (float)((float)(v5 * (float)(v10 - v6))
                                                     + (float)((float)(v9 - v5) * (float)(a3 - v6))) )
          ++v24;
LABEL_9:
        ++v4;
        v5 = v9;
        v6 = v10;
        if ( v4 == v21 )
          return v24 & 1;
      }
    }
    v23 = *(float *)(v7 + 16 * v4);
    v12 = v8[1];
    if ( v6 < a3 && v10 < a3 && v12 < a3 )
      goto LABEL_9;
    if ( v6 > a3 && v10 > a3 && v12 > a3 )
      goto LABEL_9;
    if ( v5 < a2 && v9 < a2 && v23 < a2 )
      goto LABEL_9;
    v13 = (float)(v10 + v6) + (float)(v12 * -2.0);
    v14 = (float)(v12 - v6) + (float)(v12 - v6);
    v15 = v6 - a3;
    x = (float)(v14 * v14) + (float)((float)(v13 * -4.0) * v15);
    if ( x < 0.0 )
      goto LABEL_9;
    v19 = sqrtf(x);
    v16 = v14 < 0.0 ? (float)(v14 - v19) * -0.5 : (float)(v14 + v19) * -0.5;
    if ( v13 != 0.0 )
    {
      v17 = v16 / v13;
      if ( v17 >= 0.0
        && v17 < 1.0
        && (float)((float)((float)((float)((float)(v23 - v5) + (float)(v23 - v5)) * v17) + v5)
                 + (float)((float)((float)((float)(v9 + v5) + (float)(v23 * -2.0)) * v17) * v17)) > a2 )
      {
        ++v24;
      }
    }
    if ( v16 == 0.0 )
      goto LABEL_9;
    v18 = v15 / v16;
    if ( v18 < 0.0
      || v18 >= 1.0
      || (float)((float)((float)((float)((float)(v23 - v5) + (float)(v23 - v5)) * v18) + v5)
               + (float)((float)((float)((float)(v9 + v5) + (float)(v23 * -2.0)) * v18) * v18)) <= a2 )
    {
      goto LABEL_9;
    }
    goto LABEL_36;
  }
  return 0;
}


// ===== 77a570 gameswf::shape_character_def::point_test_local(float,float) =====
int __fastcall gameswf::shape_character_def::point_test_local(gameswf::shape_character_def *this, float a2, float a3)
{
  int v7; // r4
  int v8; // r5

  if ( a2 < *((float *)this + 21)
    || a2 > *((float *)this + 22)
    || a3 < *((float *)this + 23)
    || a3 > *((float *)this + 24)
    || *((int *)this + 18) <= 0 )
  {
    return 0;
  }
  v7 = 0;
  v8 = 0;
  while ( 1 )
  {
    ++v8;
    if ( gameswf::path::point_test((gameswf::path *)(*((_DWORD *)this + 17) + v7), a2, a3) )
      break;
    v7 += 40;
    if ( v8 >= *((_DWORD *)this + 18) )
      return 0;
  }
  return 1;
}


// ===== 77a628 gameswf::read_fill_styles(gameswf::array<gameswf::fill_style> *,gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::read_fill_styles(_DWORD *a1, gameswf::stream *this, int a3, gameswf::movie_definition_sub *a4)
{
  int result; // r0
  int v9; // r6
  int v10; // r4
  int v11; // r5
  int v12; // r4

  result = gameswf::stream::read_u8(this);
  v9 = result;
  if ( a3 > 2 && result == 255 )
  {
    result = gameswf::stream::read_u16(this);
    v9 = result;
  }
  if ( v9 )
  {
    v10 = a1[1];
    v11 = 0;
    gameswf::array<gameswf::fill_style>::resize(a1, v9 + v10);
    v12 = 84 * v10;
    do
    {
      ++v11;
      result = gameswf::fill_style::read((gameswf::fill_style *)(*a1 + v12), this, a3, a4);
      v12 += 84;
    }
    while ( v9 > v11 );
  }
  return result;
}


// ===== 77a6b8 gameswf::read_line_styles(gameswf::array<gameswf::line_style> *,gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::read_line_styles(_DWORD *a1, gameswf::stream *this, int a3, gameswf::movie_definition_sub *a4)
{
  int result; // r0
  int v9; // r6
  int v10; // r4
  int v11; // r5
  int v12; // r4

  result = gameswf::stream::read_u8(this);
  v9 = result;
  if ( result == 255 )
  {
    result = gameswf::stream::read_u16(this);
    v9 = result;
  }
  if ( v9 )
  {
    v10 = a1[1];
    v11 = 0;
    gameswf::array<gameswf::line_style>::resize(a1, v9 + v10);
    v12 = 108 * v10;
    do
    {
      ++v11;
      result = gameswf::line_style::read((gameswf::line_style *)(*a1 + v12), this, a3, a4);
      v12 += 108;
    }
    while ( v9 > v11 );
  }
  return result;
}


// ===== 77a740 gameswf::smart_ptr<gameswf::bitmap_info>::set_ref(gameswf::bitmap_info*) =====
void __fastcall gameswf::smart_ptr<gameswf::bitmap_info>::set_ref(
        gameswf::ref_counted **a1,
        gameswf::ref_counted *this)
{
  gameswf::ref_counted *v3; // r0

  v3 = *a1;
  if ( v3 != this )
  {
    if ( v3 )
      gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v3);
    *a1 = this;
    if ( this )
      gameswf::ref_counted::add_ref((int)this);
  }
}


// ===== 77a780 gameswf::fill_style::operator=(gameswf::fill_style const&) =====
int __fastcall gameswf::fill_style::operator=(int a1, int a2)
{
  _DWORD *v2; // r12
  _DWORD *v3; // lr
  int v6; // r0
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r1
  int v11; // r6
  int v12; // r7
  int *v13; // r5
  int v14; // r0
  int v15; // r1
  int v16; // r2
  int v17; // r3
  int v18; // r1

  v2 = (_DWORD *)(a1 + 12);
  v3 = (_DWORD *)(a2 + 12);
  *(_DWORD *)(a1 + 4) = *(_DWORD *)(a2 + 4);
  *(_DWORD *)(a1 + 8) = *(_DWORD *)(a2 + 8);
  v6 = *(_DWORD *)(a2 + 12);
  v7 = *(_DWORD *)(a2 + 16);
  v8 = v3[2];
  v9 = v3[3];
  v3 += 4;
  *v2 = v6;
  v2[1] = v7;
  v2[2] = v8;
  v2[3] = v9;
  v2 += 4;
  v10 = v3[1];
  *v2 = *v3;
  v2[1] = v10;
  gameswf::array<gameswf::gradient_record>::resize((_DWORD *)(a1 + 36), *(_DWORD *)(a2 + 40));
  if ( *(int *)(a1 + 40) > 0 )
  {
    v11 = 0;
    v12 = 0;
    do
    {
      memcpy((void *)(*(_DWORD *)(a1 + 36) + v11), (const void *)(*(_DWORD *)(a2 + 36) + v11), 5u);
      ++v12;
      v11 += 5;
    }
    while ( v12 < *(_DWORD *)(a1 + 40) );
  }
  gameswf::smart_ptr<gameswf::bitmap_info>::set_ref(
    (gameswf::ref_counted **)(a1 + 52),
    *(gameswf::ref_counted **)(a2 + 52));
  gameswf::smart_ptr<gameswf::bitmap_character_def>::set_ref(
    (gameswf::ref_counted **)(a1 + 56),
    *(gameswf::ref_counted **)(a2 + 56));
  v13 = (int *)(a2 + 60);
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[2];
  v17 = v13[3];
  v13 += 4;
  *(_DWORD *)(a1 + 60) = v14;
  *(_DWORD *)(a1 + 64) = v15;
  *(_DWORD *)(a1 + 68) = v16;
  *(_DWORD *)(a1 + 72) = v17;
  v18 = v13[1];
  *(_DWORD *)(a1 + 76) = *v13;
  *(_DWORD *)(a1 + 80) = v18;
  return a1;
}


// ===== 77a838 gameswf::array<gameswf::fill_style>::operator=(gameswf::array<gameswf::fill_style> const&) =====
void __fastcall gameswf::array<gameswf::fill_style>::operator=(_DWORD *a1, _DWORD *a2)
{
  int v4; // r4
  int v5; // r5

  gameswf::array<gameswf::fill_style>::resize(a1, a2[1]);
  if ( (int)a1[1] > 0 )
  {
    v4 = 0;
    v5 = 0;
    do
    {
      ++v5;
      gameswf::fill_style::operator=(*a1 + v4, *a2 + v4);
      v4 += 84;
    }
    while ( a1[1] > v5 );
  }
}


// ===== 77a88c gameswf::array<gameswf::line_style>::operator=(gameswf::array<gameswf::line_style> const&) =====
void __fastcall gameswf::array<gameswf::line_style>::operator=(_DWORD *a1, _DWORD *a2)
{
  int v4; // r6
  int v5; // r7
  int v6; // r5
  int v7; // r4

  gameswf::array<gameswf::line_style>::resize(a1, a2[1]);
  if ( (int)a1[1] > 0 )
  {
    v4 = 0;
    v5 = 0;
    do
    {
      ++v5;
      v6 = *a2 + v4;
      v7 = *a1 + v4;
      *(_WORD *)(v7 + 4) = *(_WORD *)(v6 + 4);
      v4 += 108;
      *(_WORD *)(v7 + 6) = *(_WORD *)(v6 + 6);
      *(_WORD *)(v7 + 8) = *(_WORD *)(v6 + 8);
      gameswf::fill_style::operator=(v7 + 12, v6 + 12);
      *(_BYTE *)(v7 + 96) = *(_BYTE *)(v6 + 96);
      *(_BYTE *)(v7 + 97) = *(_BYTE *)(v6 + 97);
      *(_BYTE *)(v7 + 98) = *(_BYTE *)(v6 + 98);
      *(_BYTE *)(v7 + 99) = *(_BYTE *)(v6 + 99);
      *(_BYTE *)(v7 + 100) = *(_BYTE *)(v6 + 100);
      *(_BYTE *)(v7 + 101) = *(_BYTE *)(v6 + 101);
      *(_BYTE *)(v7 + 102) = *(_BYTE *)(v6 + 102);
      *(_BYTE *)(v7 + 103) = *(_BYTE *)(v6 + 103);
      *(_WORD *)(v7 + 104) = *(_WORD *)(v6 + 104);
    }
    while ( a1[1] > v5 );
  }
}


// ===== 77a948 gameswf::tesselate::tesselating_shape::~tesselating_shape() =====
void __fastcall gameswf::tesselate::tesselating_shape::~tesselating_shape(gameswf::tesselate::tesselating_shape *this)
{
  LC_API_FREE_0(this);
}


// ===== 77a95c gameswf::mesh_set::mesh_set(gameswf::tesselate::tesselating_shape const*,float) =====
gameswf::mesh_set *__fastcall gameswf::mesh_set::mesh_set(
        gameswf::mesh_set *this,
        const gameswf::tesselate::tesselating_shape *a2,
        const gameswf::shape_character_def *a3)
{
  if ( a2 )
    a2 = (const gameswf::tesselate::tesselating_shape *)((char *)a2 - 32);
  *((_BYTE *)this + 16) = 0;
  *(float *)this = *(float *)&a3;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  gameswf::execute_tesselate(this, a2, a3, 0.0);
  return this;
}


// ===== 77a990 gameswf::shape_character_def::display(gameswf::matrix const&,gameswf::cxform const&,float,gameswf::array<gameswf::fill_style> const&,gameswf::array<gameswf::line_style> const&) =====
void __fastcall gameswf::shape_character_def::display(_DWORD *a1, float *a2, int a3, float a4, _DWORD *a5, _DWORD *a6)
{
  float v9; // r6
  float v10; // r0
  float v11; // r6
  float v12; // r0
  int v13; // r9
  float v14; // r8
  float **v15; // r11
  float *v16; // r10
  int v17; // r6
  gameswf::mesh_set *v18; // r6
  int v19; // r3
  int v20; // r7

  v9 = (float)(a2[3] * a2[3]) + (float)(a2[4] * a2[4]);
  if ( (float)((float)(*a2 * *a2) + (float)(a2[1] * a2[1])) >= v9 )
    v9 = (float)(*a2 * *a2) + (float)(a2[1] * a2[1]);
  v10 = sqrtf(v9);
  v11 = v10;
  if ( COERCE_FLOAT(LODWORD(v10) & 0x7FFFFFFF) >= 0.000001 )
  {
    v13 = a1[31];
    v12 = (float)((float)(20.0 / v10) / a4) * *(float *)&gameswf::s_curve_max_pixel_error;
    v14 = (float)((float)(20.0 / v11) / a4) * *(float *)&gameswf::s_curve_max_pixel_error;
    if ( v13 > 0 )
    {
      v15 = (float **)a1[30];
      v16 = *v15;
      v17 = (float)(**v15 * 3.0) < v12;
      if ( (float)(**v15 * 3.0) >= v12 )
      {
        if ( v12 > **v15 )
        {
LABEL_15:
          gameswf::mesh_set::display((int)v16, (int)a2, a3, a5, a6);
          return;
        }
        while ( ++v17 != v13 )
        {
          v16 = v15[v17];
          if ( (float)(*v16 * 3.0) < v14 )
            break;
          if ( v14 > *v16 )
            goto LABEL_15;
        }
      }
    }
    v18 = (gameswf::mesh_set *)operator new(0x14u, 0);
    gameswf::mesh_set::mesh_set(
      v18,
      (const gameswf::tesselate::tesselating_shape *)(a1 + 8),
      COERCE_CONST_GAMESWF_SHAPE_CHARACTER_DEF_(v14 * 0.75));
    v19 = a1[31];
    v20 = v19 + 1;
    if ( v19 + 1 > a1[32] )
    {
      gameswf::array<gameswf::mesh_set *>::reserve((int)(a1 + 30), v20 + (v20 >> 1));
      v19 = a1[31];
    }
    *(_DWORD *)(a1[30] + 4 * v19) = v18;
    a1[31] = v20;
    gameswf::mesh_set::display((int)v18, (int)a2, a3, a5, a6);
    gameswf::shape_character_def::sort_and_clean_meshes((gameswf::shape_character_def *)a1);
  }
}


// ===== 77abcc gameswf::mesh_set::mesh_set(gameswf::tesselate::tesselating_shape const*,float) =====
gameswf::mesh_set *__fastcall gameswf::mesh_set::mesh_set(
        gameswf::mesh_set *this,
        const gameswf::tesselate::tesselating_shape *a2,
        const gameswf::shape_character_def *a3)
{
  if ( a2 )
    a2 = (const gameswf::tesselate::tesselating_shape *)((char *)a2 - 32);
  *((_BYTE *)this + 16) = 0;
  *(float *)this = *(float *)&a3;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  gameswf::execute_tesselate(this, a2, a3, 0.0);
  return this;
}


// ===== 77ac00 gameswf::edge::tesselate_curve_new(void) =====
int __fastcall gameswf::edge::tesselate_curve_new(gameswf::edge *this, int a2, int a3, int a4, float a5)
{
  return gameswf::tesselate_new::add_curve_segment(
           *(gameswf::tesselate_new **)this,
           *((float *)this + 1),
           *((float *)this + 2),
           *((float *)this + 3),
           a5);
}


// ===== 77ac18 gameswf::path::tesselate_new(void) =====
int __fastcall gameswf::path::tesselate_new(gameswf::path *this)
{
  gameswf::tesselate_new *v2; // r0
  int v3; // r1
  int v4; // r2
  int v5; // r3
  int i; // r5
  float v8; // [sp+0h] [bp-Ch]
  float v9; // [sp+4h] [bp-8h]

  v2 = (gameswf::tesselate_new *)gameswf::tesselate_new::begin_path(
                                   (gameswf::tesselate_new *)(*(_DWORD *)this - 1),
                                   *((_DWORD *)this + 1) - 1,
                                   *((_DWORD *)this + 2) - 1,
                                   *((_DWORD *)this + 3),
                                   *((float *)this + 4),
                                   v9);
  v5 = *((_DWORD *)this + 6);
  if ( v5 > 0 )
  {
    for ( i = 0; i < v5; ++i )
    {
      v2 = (gameswf::tesselate_new *)gameswf::edge::tesselate_curve_new(
                                       (gameswf::edge *)(*((_DWORD *)this + 5) + 16 * i),
                                       v3,
                                       v4,
                                       v5,
                                       v8);
      v5 = *((_DWORD *)this + 6);
    }
  }
  return gameswf::tesselate_new::end_path(v2);
}


// ===== 77ac84 `non-virtual thunk to'gameswf::shape_character_def::tesselate_new(float,gameswf::tesselate_new::mesh_accepter *) =====
int __fastcall `non-virtual thunk to'gameswf::shape_character_def::tesselate_new(int a1)
{
  return gameswf::shape_character_def::tesselate_new(a1 - 32);
}


// ===== 77ac8c gameswf::shape_character_def::tesselate_new(float,gameswf::tesselate_new::mesh_accepter *) =====
int __fastcall gameswf::shape_character_def::tesselate_new(int a1, int a2, int a3)
{
  gameswf::tesselate_new *v5; // r0
  int v6; // r4
  int v7; // r5
  gameswf::tesselate_new *v8; // r0

  v5 = (gameswf::tesselate_new *)gameswf::tesselate_new::begin_shape(a3);
  if ( *(int *)(a1 + 72) > 0 )
  {
    v6 = 0;
    v7 = 0;
    do
    {
      while ( 1 )
      {
        v8 = (gameswf::tesselate_new *)(*(_DWORD *)(a1 + 68) + v6);
        if ( !*((_BYTE *)v8 + 36) )
          break;
        gameswf::tesselate_new::end_shape(v8);
        v5 = (gameswf::tesselate_new *)gameswf::tesselate_new::begin_shape(a3);
        ++v7;
        v6 += 40;
        if ( v7 >= *(_DWORD *)(a1 + 72) )
          return gameswf::tesselate_new::end_shape(v5);
      }
      v5 = (gameswf::tesselate_new *)gameswf::path::tesselate_new(v8);
      ++v7;
      v6 += 40;
    }
    while ( v7 < *(_DWORD *)(a1 + 72) );
  }
  return gameswf::tesselate_new::end_shape(v5);
}


// ===== 77ad14 gameswf::edge::tesselate_curve(void) =====
int __fastcall gameswf::edge::tesselate_curve(gameswf::edge *this, int a2, int a3, int a4, float a5)
{
  return gameswf::tesselate::add_curve_segment(
           *(gameswf::tesselate **)this,
           *((float *)this + 1),
           *((float *)this + 2),
           *((float *)this + 3),
           a5);
}


// ===== 77ad2c gameswf::path::tesselate(void) =====
int __fastcall gameswf::path::tesselate(gameswf::path *this)
{
  gameswf::tesselate *v2; // r0
  int v3; // r1
  int v4; // r2
  int v5; // r3
  int i; // r5
  float v8; // [sp+0h] [bp-Ch]
  float v9; // [sp+4h] [bp-8h]

  v2 = (gameswf::tesselate *)gameswf::tesselate::begin_path(
                               (gameswf::tesselate *)(*(_DWORD *)this - 1),
                               *((_DWORD *)this + 1) - 1,
                               *((_DWORD *)this + 2) - 1,
                               *((_DWORD *)this + 3),
                               *((float *)this + 4),
                               v9);
  v5 = *((_DWORD *)this + 6);
  if ( v5 > 0 )
  {
    for ( i = 0; i < v5; ++i )
    {
      v2 = (gameswf::tesselate *)gameswf::edge::tesselate_curve(
                                   (gameswf::edge *)(*((_DWORD *)this + 5) + 16 * i),
                                   v3,
                                   v4,
                                   v5,
                                   v8);
      v5 = *((_DWORD *)this + 6);
    }
  }
  return gameswf::tesselate::end_path(v2);
}


// ===== 77ad98 `non-virtual thunk to'gameswf::shape_character_def::tesselate(float,gameswf::tesselate::trapezoid_accepter *) =====
int __fastcall `non-virtual thunk to'gameswf::shape_character_def::tesselate(int a1)
{
  return gameswf::shape_character_def::tesselate(a1 - 32);
}


// ===== 77ada0 gameswf::shape_character_def::tesselate(float,gameswf::tesselate::trapezoid_accepter *) =====
int __fastcall gameswf::shape_character_def::tesselate(int a1, int a2, int a3)
{
  gameswf::tesselate *v5; // r0
  int v6; // r4
  int v7; // r5
  gameswf::tesselate *v8; // r0

  v5 = (gameswf::tesselate *)gameswf::tesselate::begin_shape(a3);
  if ( *(int *)(a1 + 72) > 0 )
  {
    v6 = 0;
    v7 = 0;
    do
    {
      while ( 1 )
      {
        v8 = (gameswf::tesselate *)(*(_DWORD *)(a1 + 68) + v6);
        if ( !*((_BYTE *)v8 + 36) )
          break;
        gameswf::tesselate::end_shape(v8);
        v5 = (gameswf::tesselate *)gameswf::tesselate::begin_shape(a3);
        ++v7;
        v6 += 40;
        if ( v7 >= *(_DWORD *)(a1 + 72) )
          return gameswf::tesselate::end_shape(v5);
      }
      v5 = (gameswf::tesselate *)gameswf::path::tesselate(v8);
      ++v7;
      v6 += 40;
    }
    while ( v7 < *(_DWORD *)(a1 + 72) );
  }
  return gameswf::tesselate::end_shape(v5);
}


// ===== 77ae28 gameswf::array<gameswf::path>::operator=(gameswf::array<gameswf::path> const&) =====
void __fastcall gameswf::array<gameswf::path>::operator=(_DWORD *a1, _DWORD *a2)
{
  int v4; // r7
  int v5; // r10
  int v6; // r6
  int v7; // r5
  int v8; // r4
  int v9; // r3
  _DWORD *v10; // r12
  int *v11; // r3
  int v12; // r0
  int v13; // r1
  int v14; // r2
  int v15; // r3

  gameswf::array<gameswf::path>::resize(a1, a2[1]);
  if ( (int)a1[1] > 0 )
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *a2 + v4;
      v7 = *a1 + v4;
      *(_DWORD *)v7 = *(_DWORD *)v6;
      *(_DWORD *)(v7 + 4) = *(_DWORD *)(v6 + 4);
      *(_DWORD *)(v7 + 8) = *(_DWORD *)(v6 + 8);
      *(_DWORD *)(v7 + 12) = *(_DWORD *)(v6 + 12);
      *(_DWORD *)(v7 + 16) = *(_DWORD *)(v6 + 16);
      gameswf::array<gameswf::edge>::resize((_DWORD *)(v7 + 20), *(_DWORD *)(v6 + 24));
      if ( *(int *)(v7 + 24) > 0 )
      {
        v8 = 0;
        do
        {
          v9 = 16 * v8++;
          v10 = (_DWORD *)(*(_DWORD *)(v7 + 20) + v9);
          v11 = (int *)(*(_DWORD *)(v6 + 20) + v9);
          v12 = *v11;
          v13 = v11[1];
          v14 = v11[2];
          v15 = v11[3];
          *v10 = v12;
          v10[1] = v13;
          v10[2] = v14;
          v10[3] = v15;
        }
        while ( v8 < *(_DWORD *)(v7 + 24) );
      }
      ++v5;
      v4 += 40;
      *(_BYTE *)(v7 + 36) = *(_BYTE *)(v6 + 36);
    }
    while ( a1[1] > v5 );
  }
}


// ===== 77aef0 gameswf::shape_character_def::operator=(gameswf::shape_character_def const&) =====
int __fastcall gameswf::shape_character_def::operator=(int a1, int a2)
{
  int v4; // r1
  int v5; // r2
  int v6; // r3
  int v7; // r1
  int v8; // r2
  int v9; // r3

  gameswf::array<gameswf::fill_style>::operator=((_DWORD *)(a1 + 36), (_DWORD *)(a2 + 36));
  gameswf::array<gameswf::line_style>::operator=((_DWORD *)(a1 + 52), (_DWORD *)(a2 + 52));
  gameswf::array<gameswf::path>::operator=((_DWORD *)(a1 + 68), (_DWORD *)(a2 + 68));
  v4 = *(_DWORD *)(a2 + 88);
  v5 = *(_DWORD *)(a2 + 92);
  v6 = *(_DWORD *)(a2 + 96);
  *(_DWORD *)(a1 + 84) = *(_DWORD *)(a2 + 84);
  *(_DWORD *)(a1 + 88) = v4;
  *(_DWORD *)(a1 + 92) = v5;
  *(_DWORD *)(a1 + 96) = v6;
  v7 = *(_DWORD *)(a2 + 104);
  v8 = *(_DWORD *)(a2 + 108);
  v9 = *(_DWORD *)(a2 + 112);
  *(_DWORD *)(a1 + 100) = *(_DWORD *)(a2 + 100);
  *(_DWORD *)(a1 + 104) = v7;
  *(_DWORD *)(a1 + 108) = v8;
  *(_DWORD *)(a1 + 112) = v9;
  *(_BYTE *)(a1 + 116) = *(_BYTE *)(a2 + 116);
  *(_BYTE *)(a1 + 117) = *(_BYTE *)(a2 + 117);
  return a1;
}


// ===== 77af58 gameswf::shape_character_def::read(gameswf::stream *,int,bool,gameswf::movie_definition_sub *) =====
void __fastcall gameswf::shape_character_def::read(
        gameswf::shape_character_def *this,
        gameswf::stream *a2,
        int a3,
        int a4,
        gameswf::movie_definition_sub *a5)
{
  float v7; // r6
  float v8; // r7
  unsigned int v9; // r0
  unsigned int v10; // r10
  _BOOL4 v11; // r9
  int v12; // r10
  float v13; // r9
  float v14; // r11
  int v15; // r3
  int v16; // r10
  float *v17; // r12
  float v18; // r1
  float v19; // r2
  float v20; // r3
  int v21; // r0
  int v22; // r0
  int v23; // r0
  int v24; // r6
  float v25; // r0
  int v26; // r10
  float sint; // r9
  float v28; // r10
  int v29; // lr
  int v30; // r10
  float v31; // r1
  float v32; // r2
  float v33; // r3
  float *v34; // r12
  int v35; // r0
  char u8; // r0
  int uint; // [sp+Ch] [bp-A8h]
  int v38; // [sp+10h] [bp-A4h]
  _DWORD *v39; // [sp+1Ch] [bp-98h]
  int v40; // [sp+20h] [bp-94h]
  int v42; // [sp+2Ch] [bp-88h]
  _DWORD *v43; // [sp+38h] [bp-7Ch]
  _DWORD *v44; // [sp+3Ch] [bp-78h]
  _BYTE v45[20]; // [sp+40h] [bp-74h] BYREF
  _DWORD v46[5]; // [sp+54h] [bp-60h] BYREF
  int v47; // [sp+68h] [bp-4Ch] BYREF
  int v48; // [sp+6Ch] [bp-48h]
  int v49; // [sp+70h] [bp-44h]
  float v50; // [sp+74h] [bp-40h]
  float v51; // [sp+78h] [bp-3Ch]
  int v52; // [sp+7Ch] [bp-38h] BYREF
  int v53; // [sp+80h] [bp-34h]
  int v54; // [sp+84h] [bp-30h]
  float v55[4]; // [sp+90h] [bp-24h] BYREF
  float v56[5]; // [sp+A0h] [bp-14h] BYREF

  if ( a4 )
  {
    gameswf::rect::read((gameswf::shape_character_def *)((char *)this + 84), a2);
    if ( a3 == 83 )
    {
      gameswf::rect::read((gameswf::shape_character_def *)((char *)this + 100), a2);
      u8 = gameswf::stream::read_u8(a2);
      *((_BYTE *)this + 116) = (u8 & 2) != 0;
      *((_BYTE *)this + 117) = u8 & 1;
    }
    v43 = (_DWORD *)((char *)this + 36);
    v44 = (_DWORD *)((char *)this + 52);
    gameswf::read_fill_styles((_DWORD *)this + 9, a2, a3, a5);
    gameswf::read_line_styles((_DWORD *)this + 13, a2, a3, a5);
  }
  else
  {
    v43 = (_DWORD *)((char *)this + 36);
    v44 = (_DWORD *)((char *)this + 52);
  }
  uint = gameswf::stream::read_uint(a2, 4);
  v38 = gameswf::stream::read_uint(a2, 4);
  gameswf::path::path((gameswf::path *)&v47);
  v7 = 0.0;
  v42 = 0;
  v40 = 0;
  v39 = (_DWORD *)((char *)this + 68);
  v8 = 0.0;
LABEL_4:
  while ( gameswf::stream::read_uint(a2, 1) )
  {
LABEL_14:
    if ( gameswf::stream::read_uint(a2, 1) )
    {
      v26 = gameswf::stream::read_uint(a2, 4) + 2;
      if ( gameswf::stream::read_uint(a2, 1) )
      {
        sint = (float)(int)gameswf::stream::read_sint(a2, v26);
        v28 = (float)(int)gameswf::stream::read_sint(a2, v26);
      }
      else if ( gameswf::stream::read_uint(a2, 1) )
      {
        sint = 0.0;
        v28 = (float)(int)gameswf::stream::read_sint(a2, v26);
      }
      else
      {
        v35 = gameswf::stream::read_sint(a2, v26);
        v28 = 0.0;
        sint = (float)v35;
      }
      v8 = v8 + sint;
      v7 = v7 + v28;
      gameswf::edge::edge(v55, v8, v7, v8, v7);
      v29 = v53;
      v30 = v53 + 1;
      if ( v53 + 1 > v54 )
      {
        gameswf::array<gameswf::edge>::reserve((int)&v52, v30 + (v30 >> 1));
        v29 = v53;
      }
      v31 = v55[1];
      v32 = v55[2];
      v33 = v55[3];
      v34 = (float *)(v52 + 16 * v29);
      *v34 = v55[0];
      v34[1] = v31;
      v34[2] = v32;
      v34[3] = v33;
      v53 = v30;
    }
    else
    {
      v12 = gameswf::stream::read_uint(a2, 4) + 2;
      v13 = (float)(int)gameswf::stream::read_sint(a2, v12) + v8;
      v14 = (float)(int)gameswf::stream::read_sint(a2, v12) + v7;
      v8 = (float)(int)gameswf::stream::read_sint(a2, v12) + v13;
      v7 = (float)(int)gameswf::stream::read_sint(a2, v12) + v14;
      gameswf::edge::edge(v56, v13, v14, v8, v7);
      v15 = v53;
      v16 = v53 + 1;
      if ( v53 + 1 > v54 )
      {
        gameswf::array<gameswf::edge>::reserve((int)&v52, v16 + (v16 >> 1));
        v15 = v53;
      }
      v17 = (float *)(v52 + 16 * v15);
      v18 = v56[1];
      v19 = v56[2];
      v20 = v56[3];
      *v17 = v56[0];
      v17[1] = v18;
      v17[2] = v19;
      v17[3] = v20;
      v53 = v16;
    }
  }
  while ( 1 )
  {
    v9 = gameswf::stream::read_uint(a2, 5);
    v10 = v9;
    if ( !v9 )
      break;
    if ( (v9 & 1) != 0 )
    {
      if ( !gameswf::path::is_empty((gameswf::path *)&v47) )
      {
        gameswf::array<gameswf::path>::push_back<gameswf::path>(v39, (gameswf::path *)&v47);
        gameswf::array<gameswf::edge>::resize(&v52, 0);
      }
      v24 = gameswf::stream::read_uint(a2, 5);
      v8 = (float)(int)gameswf::stream::read_sint(a2, v24);
      v25 = (float)(int)gameswf::stream::read_sint(a2, v24);
      v50 = v8;
      v7 = v25;
      v51 = v25;
    }
    v11 = uint > 0;
    if ( (v11 & (v10 >> 1)) != 0 )
    {
      if ( !gameswf::path::is_empty((gameswf::path *)&v47) )
      {
        gameswf::array<gameswf::path>::push_back<gameswf::path>(v39, (gameswf::path *)&v47);
        gameswf::array<gameswf::edge>::resize(&v52, 0);
        v50 = v8;
        v51 = v7;
      }
      v23 = gameswf::stream::read_uint(a2, uint);
      if ( v23 > 0 )
        v23 += v40;
      v47 = v23;
    }
    if ( (v11 & (v10 >> 2)) != 0 )
    {
      if ( !gameswf::path::is_empty((gameswf::path *)&v47) )
      {
        gameswf::array<gameswf::path>::push_back<gameswf::path>(v39, (gameswf::path *)&v47);
        gameswf::array<gameswf::edge>::resize(&v52, 0);
        v50 = v8;
        v51 = v7;
      }
      v22 = gameswf::stream::read_uint(a2, uint);
      if ( v22 > 0 )
        v22 += v40;
      v48 = v22;
    }
    if ( ((v38 > 0) & (v10 >> 3)) != 0 )
    {
      if ( !gameswf::path::is_empty((gameswf::path *)&v47) )
      {
        gameswf::array<gameswf::path>::push_back<gameswf::path>(v39, (gameswf::path *)&v47);
        gameswf::array<gameswf::edge>::resize(&v52, 0);
        v50 = v8;
        v51 = v7;
      }
      v21 = gameswf::stream::read_uint(a2, v38);
      if ( v21 > 0 )
        v21 += v42;
      v49 = v21;
    }
    if ( (v10 & 0x10) == 0 )
      goto LABEL_4;
    if ( !gameswf::path::is_empty((gameswf::path *)&v47) )
    {
      gameswf::array<gameswf::path>::push_back<gameswf::path>(v39, (gameswf::path *)&v47);
      gameswf::array<gameswf::edge>::resize(&v52, 0);
      v47 = -1;
      v48 = -1;
      v49 = -1;
    }
    gameswf::path::path((gameswf::path *)v45);
    gameswf::array<gameswf::path>::push_back<gameswf::path>(v39, (gameswf::path *)v45);
    gameswf::array<gameswf::edge>::resize(v46, 0);
    gameswf::array<gameswf::edge>::reserve((int)v46, 0);
    *(_BYTE *)(*((_DWORD *)this + 17) + 40 * (*((_DWORD *)this + 18) - 1) + 36) = 1;
    v40 = *((_DWORD *)this + 10);
    v42 = *((_DWORD *)this + 14);
    gameswf::read_fill_styles(v43, a2, a3, a5);
    gameswf::read_line_styles(v44, a2, a3, a5);
    uint = gameswf::stream::read_uint(a2, 4);
    v38 = gameswf::stream::read_uint(a2, 4);
    if ( gameswf::stream::read_uint(a2, 1) )
      goto LABEL_14;
  }
  if ( !gameswf::path::is_empty((gameswf::path *)&v47) )
  {
    gameswf::array<gameswf::path>::push_back<gameswf::path>(v39, (gameswf::path *)&v47);
    gameswf::array<gameswf::edge>::resize(&v52, 0);
  }
  gameswf::array<gameswf::edge>::resize(&v52, 0);
  gameswf::array<gameswf::edge>::reserve((int)&v52, 0);
}


// ===== 77b59c gameswf::write_le<float>(gameswf::tu_file *,float) =====
int __fastcall gameswf::write_le<float>(int a1, int a2)
{
  int v3; // [sp+4h] [bp-8h] BYREF

  v3 = a2;
  return (*(int (__fastcall **)(int *, int, _DWORD))(a1 + 12))(&v3, 4, *(_DWORD *)a1);
}


// ===== 77b5cc gameswf::write_coord_array(gameswf::tu_file *,gameswf::array<float> const&) =====
int __fastcall gameswf::write_coord_array(int a1, _DWORD *a2)
{
  int v2; // r4
  int result; // r0
  int i; // r7
  int v7; // r1
  int v8; // [sp+4h] [bp-8h] BYREF

  v8 = a2[1];
  v2 = v8;
  result = (*(int (__fastcall **)(int *, int, _DWORD))(a1 + 12))(&v8, 4, *(_DWORD *)a1);
  if ( v2 > 0 )
  {
    for ( i = 0; i != v2; ++i )
    {
      v7 = *(_DWORD *)(*a2 + 4 * i);
      result = gameswf::write_le<float>(a1, v7);
    }
  }
  return result;
}


// ===== 77b62c gameswf::mesh::output_cached_data(gameswf::tu_file *) =====
int __fastcall gameswf::mesh::output_cached_data(_DWORD *a1, int a2)
{
  gameswf::write_coord_array(a2, a1);
  return gameswf::write_coord_array(a2, a1 + 4);
}


// ===== 77b654 gameswf::line_strip::output_cached_data(gameswf::tu_file *) =====
int __fastcall gameswf::line_strip::output_cached_data(int *a1, int a2)
{
  _DWORD *v2; // r4
  int v5; // [sp+4h] [bp-8h] BYREF

  v2 = a1 + 1;
  v5 = *a1;
  (*(void (__fastcall **)(int *, int, _DWORD))(a2 + 12))(&v5, 4, *(_DWORD *)a2);
  return gameswf::write_coord_array(a2, v2);
}


// ===== 77b694 gameswf::mesh_set::output_cached_data(gameswf::tu_file *) =====
int __fastcall gameswf::mesh_set::output_cached_data(_DWORD *a1, _DWORD *a2)
{
  int result; // r0
  int i; // r9
  int v6; // r2
  _DWORD *v7; // r6
  int v8; // r8
  int j; // r4
  _DWORD *v10; // r0
  int v11; // r4
  int k; // r8
  int *v13; // r0
  int v14; // [sp+4h] [bp-Ch]
  _DWORD v15[2]; // [sp+Ch] [bp-4h] BYREF

  v15[0] = *a1;
  ((void (__fastcall *)(_DWORD *, int, _DWORD))a2[3])(v15, 4, *a2);
  v15[0] = a1[2];
  v14 = v15[0];
  result = ((int (__fastcall *)(_DWORD *, int, _DWORD))a2[3])(v15, 4, *a2);
  if ( v14 > 0 )
  {
    for ( i = 0; i != v14; ++i )
    {
      v6 = *a2;
      v7 = (_DWORD *)(a1[1] + 32 * i);
      v15[0] = v7[1];
      v8 = v15[0];
      ((void (__fastcall *)(_DWORD *, int, int))a2[3])(v15, 4, v6);
      if ( v8 > 0 )
      {
        for ( j = 0; j != v8; ++j )
        {
          while ( *(_DWORD *)(*v7 + 4 * j) )
          {
            LOBYTE(v15[0]) = 1;
            ((void (__fastcall *)(_DWORD *, int, _DWORD))a2[3])(v15, 1, *a2);
            v10 = *(_DWORD **)(*v7 + 4 * j++);
            gameswf::mesh::output_cached_data(v10, (int)a2);
            if ( j == v8 )
              goto LABEL_8;
          }
          LOBYTE(v15[0]) = 0;
          ((void (__fastcall *)(_DWORD *, int, _DWORD))a2[3])(v15, 1, *a2);
        }
      }
LABEL_8:
      v15[0] = v7[5];
      v11 = v15[0];
      result = ((int (__fastcall *)(_DWORD *, int, _DWORD))a2[3])(v15, 4, *a2);
      if ( v11 > 0 )
      {
        for ( k = 0; k != v11; ++k )
        {
          v13 = *(int **)(v7[4] + 4 * k);
          result = gameswf::line_strip::output_cached_data(v13, (int)a2);
        }
      }
    }
  }
  return result;
}


// ===== 77b7f0 gameswf::shape_character_def::output_cached_data(gameswf::tu_file *,gameswf::cache_options const&) =====
int __fastcall gameswf::shape_character_def::output_cached_data(int a1, _DWORD *a2)
{
  int v2; // r4
  int result; // r0
  int i; // r7
  _DWORD *v7; // r0
  int v8; // [sp+4h] [bp-8h] BYREF

  v8 = *(_DWORD *)(a1 + 124);
  v2 = v8;
  result = ((int (__fastcall *)(int *, int, _DWORD))a2[3])(&v8, 4, *a2);
  if ( v2 > 0 )
  {
    for ( i = 0; i != v2; ++i )
    {
      v7 = *(_DWORD **)(*(_DWORD *)(a1 + 120) + 4 * i);
      result = gameswf::mesh_set::output_cached_data(v7, a2);
    }
  }
  return result;
}


// ===== 77b84c gameswf::read_le<float>(gameswf::tu_file *) =====
int __fastcall gameswf::read_le<float>(int a1)
{
  int v2; // [sp+4h] [bp-8h] BYREF

  (*(void (__fastcall **)(int *, int, _DWORD))(a1 + 8))(&v2, 4, *(_DWORD *)a1);
  return v2;
}


// ===== 77b878 gameswf::shape_character_def::shape_character_def(gameswf::player *) =====
gameswf::shape_character_def *__fastcall gameswf::shape_character_def::shape_character_def(
        gameswf::shape_character_def *this,
        gameswf::player *a2)
{
  gameswf::character_def::character_def(this, a2);
  *((_BYTE *)this + 132) = 0;
  *((_DWORD *)this + 9) = 0;
  *(_DWORD *)this = off_9905D8;
  *((_DWORD *)this + 8) = off_990614;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_BYTE *)this + 48) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_BYTE *)this + 64) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_BYTE *)this + 80) = 0;
  *((_BYTE *)this + 116) = 0;
  *((_BYTE *)this + 117) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 32) = 0;
  return this;
}


// ===== 77b900 gameswf::shape_character_def::shape_character_def(gameswf::player *) =====
gameswf::shape_character_def *__fastcall gameswf::shape_character_def::shape_character_def(
        gameswf::shape_character_def *this,
        gameswf::player *a2)
{
  gameswf::character_def::character_def(this, a2);
  *((_BYTE *)this + 132) = 0;
  *((_DWORD *)this + 9) = 0;
  *(_DWORD *)this = off_9905D8;
  *((_DWORD *)this + 8) = off_990614;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_BYTE *)this + 48) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_BYTE *)this + 64) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_BYTE *)this + 80) = 0;
  *((_BYTE *)this + 116) = 0;
  *((_BYTE *)this + 117) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 32) = 0;
  return this;
}


// ===== 77b988 gameswf::mesh::add_triangle(float const*) =====
_DWORD *__fastcall gameswf::mesh::add_triangle(_DWORD *this, const float *a2)
{
  int v2; // r7
  _DWORD *v3; // r5
  int v5; // r8
  _DWORD *v6; // r4
  int v7; // r7
  int i; // r3
  int j; // r3

  v2 = *(this + 5);
  v3 = this;
  v5 = v2 + 6;
  v6 = this + 4;
  if ( v2 != -6 && v5 > *(this + 6) )
    gameswf::array<float>::reserve((int)(this + 4), v5 + (v5 >> 1));
  v7 = 4 * v2;
  for ( i = 0; i != 24; i += 4 )
    *(_DWORD *)(*v6 + v7 + i) = 0;
  v3[5] = v5;
  for ( j = 0; j != 6; ++j )
    *(float *)(v3[4] + v7 + j * 4) = a2[j];
  return this;
}


// ===== 77ba0c gameswf::mesh::set_tri_strip(gameswf::point const*,int) =====
void __fastcall gameswf::mesh::set_tri_strip(_DWORD *a1, int a2, int a3)
{
  int v3; // r6
  int v6; // r5
  int v7; // r3
  int v8; // r3
  int v9; // r0
  int v10; // [sp+4h] [bp-8h]

  v3 = 2 * a3;
  v6 = a1[1];
  if ( 2 * a3 && v3 > a1[2] )
  {
    v10 = a3;
    gameswf::array<float>::reserve((int)a1, v3 + (v3 >> 1));
    a3 = v10;
  }
  if ( v3 > v6 )
  {
    v7 = 4 * v6;
    do
    {
      ++v6;
      *(_DWORD *)(*a1 + v7) = 0;
      v7 += 4;
    }
    while ( v6 != v3 );
  }
  a1[1] = v3;
  if ( a3 > 0 )
  {
    v8 = 0;
    v9 = 0;
    do
    {
      ++v9;
      *(_DWORD *)(*a1 + v8) = *(_DWORD *)(a2 + v8);
      *(_DWORD *)(*a1 + v8 + 4) = *(_DWORD *)(a2 + v8 + 4);
      v8 += 8;
    }
    while ( v9 != a3 );
  }
}


// ===== 77babc gameswf::mesh_set::set_tri_strip(int,gameswf::point const*,int) =====
void __fastcall gameswf::mesh_set::set_tri_strip(gameswf::mesh_set *a1, int a2, int a3, int a4)
{
  gameswf::mesh_set::expand_styles_to_include(a1, a2);
  gameswf::mesh::set_tri_strip(
    *(_DWORD **)(*(_DWORD *)(*((_DWORD *)a1 + 1) + 32 * (*((_DWORD *)a1 + 2) - 1)) + 4 * a2),
    a3,
    a4);
}


// ===== 77baf8 gameswf::read_coord_array(gameswf::tu_file *,gameswf::array<float> *) =====
void __fastcall gameswf::read_coord_array(int a1, int *a2)
{
  int v4; // r7
  int v5; // r6
  int v6; // r3
  int i; // r6
  int v8; // r8
  int v9; // [sp+4h] [bp-4h] BYREF

  (*(void (__fastcall **)(int *, int, _DWORD))(a1 + 8))(&v9, 4, *(_DWORD *)a1);
  v4 = v9;
  v5 = a2[1];
  if ( v9 && v9 > a2[2] )
    gameswf::array<float>::reserve((int)a2, v9 + (v9 >> 1));
  if ( v4 > v5 )
  {
    v6 = 4 * v5;
    do
    {
      ++v5;
      *(_DWORD *)(*a2 + v6) = 0;
      v6 += 4;
    }
    while ( v4 != v5 );
  }
  a2[1] = v4;
  if ( v4 > 0 )
  {
    for ( i = 0; i != v4; ++i )
    {
      v8 = *a2;
      *(_DWORD *)(v8 + 4 * i) = gameswf::read_le<float>(a1);
    }
  }
}


// ===== 77bba4 gameswf::line_strip::input_cached_data(gameswf::tu_file *) =====
void __fastcall gameswf::line_strip::input_cached_data(_DWORD *a1, int a2)
{
  int v4; // [sp+4h] [bp-8h] BYREF

  (*(void (__fastcall **)(int *, int, _DWORD))(a2 + 8))(&v4, 4, *(_DWORD *)a2);
  *a1 = v4;
  gameswf::read_coord_array(a2, a1 + 1);
}


// ===== 77bbe4 gameswf::mesh::input_cached_data(gameswf::tu_file *) =====
void __fastcall gameswf::mesh::input_cached_data(int *a1, int a2)
{
  gameswf::read_coord_array(a2, a1);
  gameswf::read_coord_array(a2, a1 + 4);
}


// ===== 77bc0c gameswf::line_strip::line_strip(int,gameswf::point const*,int) =====
int __fastcall gameswf::line_strip::line_strip(int a1, int a2, int a3, int a4)
{
  int v4; // r5
  int v5; // r6
  int v7; // r1
  int v8; // r12
  _DWORD *v10; // r7
  int v11; // [sp+0h] [bp-Ch]
  int v12; // [sp+4h] [bp-8h]

  v4 = 2 * a4;
  v5 = 0;
  *(_DWORD *)a1 = a2;
  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  *(_BYTE *)(a1 + 16) = 0;
  if ( (a4 & 0x40000000) == 0 && 2 * a4 > 0 )
  {
    v10 = (_DWORD *)(a1 + 4);
    v12 = a3;
    v11 = a4;
    gameswf::array<float>::reserve(a1 + 4, v4 + (v4 >> 1));
    a4 = v11;
    a3 = v12;
    do
      *(_DWORD *)(*v10 + 4 * v5++) = 0;
    while ( v5 != v4 );
  }
  *(_DWORD *)(a1 + 8) = v4;
  if ( a4 > 0 )
  {
    v7 = 0;
    v8 = 0;
    do
    {
      ++v8;
      *(_DWORD *)(*(_DWORD *)(a1 + 4) + v7) = *(_DWORD *)(a3 + v7);
      *(_DWORD *)(*(_DWORD *)(a1 + 4) + v7 + 4) = *(_DWORD *)(a3 + v7 + 4);
      v7 += 8;
    }
    while ( v8 != a4 );
  }
  return a1;
}


// ===== 77bccc gameswf::mesh_set::add_line_strip(int,gameswf::point const*,int) =====
void __fastcall gameswf::mesh_set::add_line_strip(int a1, int a2, int a3, int a4)
{
  _DWORD *v5; // r4
  void *v8; // r5
  int v9; // r3
  int v10; // r6

  v5 = (_DWORD *)(*(_DWORD *)(a1 + 4) + 32 * (*(_DWORD *)(a1 + 8) - 1));
  v8 = operator new(0x14u, 0);
  gameswf::line_strip::line_strip((int)v8, a2, a3, a4);
  v9 = v5[5];
  v10 = v9 + 1;
  if ( v9 + 1 > v5[6] )
  {
    gameswf::array<gameswf::line_strip *>::reserve((int)(v5 + 4), v10 + (v10 >> 1));
    v9 = v5[5];
  }
  *(_DWORD *)(v5[4] + 4 * v9) = v8;
  v5[5] = v10;
}


// ===== 77bd40 gameswf::line_strip::line_strip(int,gameswf::point const*,int) =====
int __fastcall gameswf::line_strip::line_strip(int a1, int a2, int a3, int a4)
{
  int v4; // r5
  int v5; // r6
  int v7; // r1
  int v8; // r12
  _DWORD *v10; // r7
  int v11; // [sp+0h] [bp-Ch]
  int v12; // [sp+4h] [bp-8h]

  v4 = 2 * a4;
  v5 = 0;
  *(_DWORD *)a1 = a2;
  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  *(_BYTE *)(a1 + 16) = 0;
  if ( (a4 & 0x40000000) == 0 && 2 * a4 > 0 )
  {
    v10 = (_DWORD *)(a1 + 4);
    v12 = a3;
    v11 = a4;
    gameswf::array<float>::reserve(a1 + 4, v4 + (v4 >> 1));
    a4 = v11;
    a3 = v12;
    do
      *(_DWORD *)(*v10 + 4 * v5++) = 0;
    while ( v5 != v4 );
  }
  *(_DWORD *)(a1 + 8) = v4;
  if ( a4 > 0 )
  {
    v7 = 0;
    v8 = 0;
    do
    {
      ++v8;
      *(_DWORD *)(*(_DWORD *)(a1 + 4) + v7) = *(_DWORD *)(a3 + v7);
      *(_DWORD *)(*(_DWORD *)(a1 + 4) + v7 + 4) = *(_DWORD *)(a3 + v7 + 4);
      v7 += 8;
    }
    while ( v8 != a4 );
  }
  return a1;
}


// ===== 77be00 gameswf::shape_character_def::create_character_instance(gameswf::character *,int) =====
gameswf::ref_counted **__fastcall gameswf::shape_character_def::create_character_instance(
        gameswf::shape_character_def *this,
        gameswf::character *a2,
        int a3)
{
  gameswf::player *v4; // r0
  _BYTE *v7; // r2
  int v10; // [sp+4h] [bp-8h]

  v4 = *((gameswf::player **)this + 7);
  if ( v4 )
  {
    v7 = *((_BYTE **)this + 6);
    if ( !v7[4] )
    {
      if ( (*(_DWORD *)v7)-- == 1 )
      {
        v10 = a3;
        gameswf::free_internal(v7);
        a3 = v10;
      }
      v4 = nullptr;
      *((_DWORD *)this + 6) = 0;
      *((_DWORD *)this + 7) = 0;
    }
  }
  return gameswf::player::create_generic_character(v4, this, a2, a3);
}


// ===== 77be78 gameswf::shape_character_def::display(gameswf::character *) =====
void __fastcall gameswf::shape_character_def::display(gameswf::shape_character_def *this, gameswf::character *a2)
{
  float *world_matrix; // r7
  char *world_cxform; // r0
  int v6; // r3
  int v7; // r6
  _BYTE *v8; // r0
  float v9; // r0

  world_matrix = (float *)gameswf::character::get_world_matrix(a2);
  world_cxform = gameswf::character::get_world_cxform(a2);
  v6 = *((_DWORD *)a2 + 16);
  v7 = (int)world_cxform;
  if ( v6 )
  {
    v8 = *((_BYTE **)a2 + 15);
    if ( !v8[4] )
    {
      if ( (*(_DWORD *)v8)-- == 1 )
        gameswf::free_internal(v8);
      v6 = 0;
      *((_DWORD *)a2 + 16) = 0;
      *((_DWORD *)a2 + 15) = 0;
    }
  }
  v9 = (*(float (__fastcall **)(int))(*(_DWORD *)v6 + 120))(v6);
  gameswf::shape_character_def::display(this, world_matrix, v7, v9, (_DWORD *)this + 9, (_DWORD *)this + 13);
}


// ===== 77bf20 gameswf::mesh::~mesh() =====
void __fastcall gameswf::mesh::~mesh(gameswf::mesh *this)
{
  int v1; // r3
  _DWORD *v3; // r0
  int v4; // r3
  _DWORD *v5; // r0
  int v6; // r3
  int v7; // r2
  int v8; // r2
  int v9; // r2

  v1 = *((_DWORD *)this + 9);
  v3 = (_DWORD *)((char *)this + 32);
  if ( v1 < 0 )
  {
    v7 = 2 * v1;
    do
    {
      ++v1;
      *(_WORD *)(*v3 + v7) = 0;
      v7 += 2;
    }
    while ( v1 );
  }
  *((_DWORD *)this + 9) = 0;
  gameswf::array<unsigned short>::reserve((int)v3, 0);
  v4 = *((_DWORD *)this + 5);
  v5 = (_DWORD *)((char *)this + 16);
  if ( v4 < 0 )
  {
    v8 = 4 * v4;
    do
    {
      ++v4;
      *(_DWORD *)(*v5 + v8) = 0;
      v8 += 4;
    }
    while ( v4 );
  }
  *((_DWORD *)this + 5) = 0;
  gameswf::array<float>::reserve((int)v5, 0);
  v6 = *((_DWORD *)this + 1);
  if ( v6 < 0 )
  {
    v9 = 4 * v6;
    do
    {
      ++v6;
      *(_DWORD *)(*(_DWORD *)this + v9) = 0;
      v9 += 4;
    }
    while ( v6 );
  }
  *((_DWORD *)this + 1) = 0;
  gameswf::array<float>::reserve((int)this, 0);
}


// ===== 77c004 gameswf::mesh_set::layer::~layer() =====
void __fastcall gameswf::mesh_set::layer::~layer(gameswf::mesh_set::layer *this)
{
  int v1; // r3
  int i; // r7
  _DWORD *v4; // r6
  int v5; // r3
  _DWORD *v6; // r0
  int v7; // r2
  int j; // r4
  gameswf::mesh *v9; // r6
  _DWORD *v10; // r0
  int v11; // r3
  int v12; // r2
  int v13; // r2
  int v14; // r2

  v1 = *((_DWORD *)this + 5);
  if ( v1 > 0 )
  {
    for ( i = 0; i < v1; ++i )
    {
      v4 = *(_DWORD **)(*((_DWORD *)this + 4) + 4 * i);
      if ( v4 )
      {
        v5 = v4[2];
        v6 = v4 + 1;
        if ( v5 < 0 )
        {
          v12 = 4 * v5;
          do
          {
            ++v5;
            *(_DWORD *)(*v6 + v12) = 0;
            v12 += 4;
          }
          while ( v5 );
        }
        v4[2] = 0;
        gameswf::array<float>::reserve((int)v6, 0);
        gameswf::free_internal(v4);
        v1 = *((_DWORD *)this + 5);
      }
    }
  }
  v7 = *((_DWORD *)this + 1);
  if ( v7 > 0 )
  {
    for ( j = 0; j < v7; ++j )
    {
      v9 = *(gameswf::mesh **)(*(_DWORD *)this + 4 * j);
      if ( v9 )
      {
        gameswf::mesh::~mesh(v9);
        gameswf::free_internal(v9);
        v7 = *((_DWORD *)this + 1);
      }
    }
    v1 = *((_DWORD *)this + 5);
  }
  v10 = (_DWORD *)((char *)this + 16);
  if ( v1 < 0 )
  {
    v13 = 4 * v1;
    do
    {
      ++v1;
      *(_DWORD *)(*v10 + v13) = 0;
      v13 += 4;
    }
    while ( v1 );
  }
  *((_DWORD *)this + 5) = 0;
  gameswf::array<gameswf::line_strip *>::reserve((int)v10, 0);
  v11 = *((_DWORD *)this + 1);
  if ( v11 < 0 )
  {
    v14 = 4 * v11;
    do
    {
      ++v11;
      *(_DWORD *)(*(_DWORD *)this + v14) = 0;
      v14 += 4;
    }
    while ( v11 );
  }
  *((_DWORD *)this + 1) = 0;
  gameswf::array<gameswf::mesh *>::reserve((int)this, 0);
}


// ===== 77c16c gameswf::array<gameswf::mesh_set::layer>::resize(int) =====
void __fastcall gameswf::array<gameswf::mesh_set::layer>::resize(_DWORD *a1, int a2)
{
  int v2; // r6
  int v5; // r8
  int v6; // r7
  int v7; // r1
  int v8; // r6
  int v9; // r2

  v2 = a1[1];
  if ( v2 > a2 )
  {
    v5 = 32 * a2;
    v6 = a2;
    do
    {
      ++v6;
      gameswf::mesh_set::layer::~layer((gameswf::mesh_set::layer *)(*a1 + v5));
      v5 += 32;
    }
    while ( v6 != v2 );
  }
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::mesh_set::layer>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v2 < a2 )
  {
    v7 = v2;
    v8 = 32 * v2;
    do
    {
      ++v7;
      v9 = *a1 + v8;
      *(_DWORD *)v9 = 0;
      *(_BYTE *)(v9 + 28) = 0;
      *(_DWORD *)(v9 + 4) = 0;
      *(_DWORD *)(v9 + 8) = 0;
      *(_BYTE *)(v9 + 12) = 0;
      *(_DWORD *)(v9 + 16) = 0;
      *(_DWORD *)(v9 + 20) = 0;
      *(_DWORD *)(v9 + 24) = 0;
      v8 += 32;
    }
    while ( v7 != a2 );
  }
  a1[1] = a2;
}


// ===== 77c220 gameswf::mesh_set::new_layer(void) =====
void __fastcall gameswf::mesh_set::new_layer(gameswf::mesh_set *this)
{
  gameswf::array<gameswf::mesh_set::layer>::resize((_DWORD *)this + 1, *((_DWORD *)this + 2) + 1);
}


// ===== 77c230 gameswf::mesh_set::~mesh_set() =====
void __fastcall gameswf::mesh_set::~mesh_set(gameswf::mesh_set *this)
{
  char *v1; // r5

  v1 = (char *)this + 4;
  gameswf::array<gameswf::mesh_set::layer>::resize((_DWORD *)this + 1, 0);
  gameswf::array<gameswf::mesh_set::layer>::reserve((int)v1, 0);
}


// ===== 77c25c gameswf::mesh_set::input_cached_data(gameswf::tu_file *) =====
void __fastcall gameswf::mesh_set::input_cached_data(_DWORD *a1, _DWORD *a2)
{
  int i; // r9
  int v4; // r4
  int v5; // r7
  _DWORD *v6; // r4
  int v7; // r6
  int v8; // r3
  int j; // r6
  void *v10; // r11
  int *v11; // r0
  int v12; // r7
  int v13; // r6
  int v14; // r3
  int k; // r6
  void *v16; // r11
  _DWORD *v17; // r0
  int v18; // [sp+0h] [bp-14h]
  int v20[2]; // [sp+Ch] [bp-8h] BYREF

  ((void (__fastcall *)(int *, int, _DWORD))a2[2])(v20, 4, *a2);
  *a1 = v20[0];
  ((void (__fastcall *)(int *, int, _DWORD))a2[2])(v20, 4, *a2);
  v18 = v20[0];
  gameswf::array<gameswf::mesh_set::layer>::resize(a1 + 1, v20[0]);
  if ( v18 > 0 )
  {
    for ( i = 0; i != v18; ++i )
    {
      v4 = a1[1];
      ((void (__fastcall *)(int *, int, _DWORD))a2[2])(v20, 4, *a2);
      v5 = v20[0];
      v6 = (_DWORD *)(v4 + 32 * i);
      v7 = v6[1];
      if ( v20[0] && v20[0] > v6[2] )
        gameswf::array<gameswf::mesh *>::reserve((int)v6, v20[0] + (v20[0] >> 1));
      if ( v5 > v7 )
      {
        v8 = 4 * v7;
        do
        {
          ++v7;
          *(_DWORD *)(*v6 + v8) = 0;
          v8 += 4;
        }
        while ( v5 != v7 );
      }
      v6[1] = v5;
      if ( v5 > 0 )
      {
        for ( j = 0; j != v5; ++j )
        {
          while ( 1 )
          {
            ((void (__fastcall *)(int *, int, _DWORD))a2[2])(v20, 1, *a2);
            if ( LOBYTE(v20[0]) )
              break;
            if ( v5 == ++j )
              goto LABEL_14;
          }
          v10 = operator new(0x30u, 0);
          gameswf::mesh::mesh((int)v10);
          *(_DWORD *)(*v6 + 4 * j) = v10;
          v11 = *(int **)(*v6 + 4 * j);
          gameswf::mesh::input_cached_data(v11, (int)a2);
        }
      }
LABEL_14:
      ((void (__fastcall *)(int *, int, _DWORD))a2[2])(v20, 4, *a2);
      v12 = v20[0];
      v13 = v6[5];
      if ( v20[0] && v20[0] > v6[6] )
        gameswf::array<gameswf::line_strip *>::reserve((int)(v6 + 4), v20[0] + (v20[0] >> 1));
      if ( v12 > v13 )
      {
        v14 = 4 * v13;
        do
        {
          ++v13;
          *(_DWORD *)(v6[4] + v14) = 0;
          v14 += 4;
        }
        while ( v12 != v13 );
      }
      v6[5] = v12;
      if ( v12 > 0 )
      {
        for ( k = 0; k != v12; ++k )
        {
          v16 = operator new(0x14u, 0);
          gameswf::line_strip::line_strip((int)v16);
          *(_DWORD *)(v6[4] + 4 * k) = v16;
          v17 = *(_DWORD **)(v6[4] + 4 * k);
          gameswf::line_strip::input_cached_data(v17, (int)a2);
        }
      }
    }
  }
}


// ===== 77c47c gameswf::shape_character_def::input_cached_data(gameswf::tu_file *) =====
void __fastcall gameswf::shape_character_def::input_cached_data(_DWORD *a1, _DWORD *a2)
{
  int v4; // r8
  int v5; // r6
  int v6; // r3
  int i; // r6
  _DWORD *v8; // r7
  int v9; // [sp+4h] [bp-4h] BYREF

  ((void (__fastcall *)(int *, int, _DWORD))a2[2])(&v9, 4, *a2);
  v4 = v9;
  v5 = a1[31];
  if ( v9 && v9 > a1[32] )
    gameswf::array<gameswf::mesh_set *>::reserve((int)(a1 + 30), v9 + (v9 >> 1));
  if ( v4 > v5 )
  {
    v6 = 4 * v5;
    do
    {
      ++v5;
      *(_DWORD *)(a1[30] + v6) = 0;
      v6 += 4;
    }
    while ( v4 != v5 );
  }
  a1[31] = v4;
  if ( v4 > 0 )
  {
    for ( i = 0; i != v4; ++i )
    {
      v8 = operator new(0x14u, 0);
      gameswf::mesh_set::mesh_set((int)v8);
      gameswf::mesh_set::input_cached_data(v8, a2);
      *(_DWORD *)(a1[30] + 4 * i) = v8;
    }
  }
}


// ===== 77c544 gameswf::mesh_set::~mesh_set() =====
void __fastcall gameswf::mesh_set::~mesh_set(gameswf::mesh_set *this)
{
  char *v1; // r5

  v1 = (char *)this + 4;
  gameswf::array<gameswf::mesh_set::layer>::resize((_DWORD *)this + 1, 0);
  gameswf::array<gameswf::mesh_set::layer>::reserve((int)v1, 0);
}


// ===== 77c570 gameswf::shape_character_def::~shape_character_def() =====
void __fastcall gameswf::shape_character_def::~shape_character_def(gameswf::shape_character_def *this)
{
  int v1; // r2
  int v3; // r3
  int i; // r4
  gameswf::mesh_set *v5; // r7
  _DWORD *v6; // r0
  int v7; // r2

  v1 = *((_DWORD *)this + 31);
  *(_DWORD *)this = off_9905D8;
  *((_DWORD *)this + 8) = off_990614;
  v3 = v1;
  if ( v1 <= 0 )
  {
    v6 = (_DWORD *)((char *)this + 120);
LABEL_9:
    if ( v1 < 0 )
    {
      v7 = 4 * v1;
      do
      {
        ++v3;
        *(_DWORD *)(*v6 + v7) = 0;
        v7 += 4;
      }
      while ( v3 );
    }
    goto LABEL_7;
  }
  for ( i = 0; i < v1; ++i )
  {
    v5 = *(gameswf::mesh_set **)(*((_DWORD *)this + 30) + 4 * i);
    if ( v5 )
    {
      gameswf::mesh_set::~mesh_set(v5);
      gameswf::free_internal(v5);
      v1 = *((_DWORD *)this + 31);
    }
    v3 = v1;
  }
  v6 = (_DWORD *)((char *)this + 120);
  if ( v1 <= 0 )
    goto LABEL_9;
LABEL_7:
  *((_DWORD *)this + 31) = 0;
  gameswf::array<gameswf::mesh_set *>::reserve((int)v6, 0);
  gameswf::array<gameswf::path>::resize((_DWORD *)this + 17, 0);
  gameswf::array<gameswf::path>::reserve((int)this + 68, 0);
  gameswf::array<gameswf::line_style>::resize((_DWORD *)this + 13, 0);
  gameswf::array<gameswf::line_style>::reserve((int)this + 52, 0);
  gameswf::array<gameswf::fill_style>::resize((_DWORD *)this + 9, 0);
  gameswf::array<gameswf::fill_style>::reserve((int)this + 36, 0);
  *((_DWORD *)this + 8) = off_9905C0;
  gameswf::character_def::~character_def(this);
}


// ===== 77c6ac gameswf::shape_character_def::flush_cache(void) =====
_DWORD *__fastcall gameswf::shape_character_def::flush_cache(gameswf::shape_character_def *this)
{
  int v1; // r2
  int v3; // r3
  int i; // r4
  gameswf::mesh_set *v5; // r6
  _DWORD *result; // r0
  int v7; // r2

  v1 = *((_DWORD *)this + 31);
  v3 = v1;
  if ( v1 <= 0 )
  {
    result = (_DWORD *)((char *)this + 120);
  }
  else
  {
    for ( i = 0; i < v1; ++i )
    {
      v5 = *(gameswf::mesh_set **)(*((_DWORD *)this + 30) + 4 * i);
      if ( v5 )
      {
        gameswf::mesh_set::~mesh_set(v5);
        gameswf::free_internal(v5);
        v1 = *((_DWORD *)this + 31);
      }
      v3 = v1;
    }
    result = (_DWORD *)((char *)this + 120);
    if ( v1 > 0 )
      goto LABEL_7;
  }
  if ( v1 >= 0 )
  {
LABEL_7:
    *((_DWORD *)this + 31) = 0;
    return result;
  }
  v7 = 4 * v1;
  do
  {
    ++v3;
    *(_DWORD *)(*result + v7) = 0;
    v7 += 4;
  }
  while ( v3 );
  *((_DWORD *)this + 31) = 0;
  return result;
}


// ===== 77c74c `non-virtual thunk to'gameswf::shape_character_def::~shape_character_def() =====
void __fastcall `non-virtual thunk to'gameswf::shape_character_def::~shape_character_def(
        gameswf::shape_character_def *this)
{
  gameswf::shape_character_def::~shape_character_def((gameswf::shape_character_def *)((char *)this - 32));
}


// ===== 77c754 gameswf::shape_character_def::~shape_character_def() =====
void __fastcall gameswf::shape_character_def::~shape_character_def(gameswf::shape_character_def *this)
{
  int v1; // r2
  int v3; // r3
  int i; // r4
  gameswf::mesh_set *v5; // r7
  _DWORD *v6; // r0
  int v7; // r2

  v1 = *((_DWORD *)this + 31);
  *(_DWORD *)this = off_9905D8;
  *((_DWORD *)this + 8) = off_990614;
  v3 = v1;
  if ( v1 <= 0 )
  {
    v6 = (_DWORD *)((char *)this + 120);
LABEL_9:
    if ( v1 < 0 )
    {
      v7 = 4 * v1;
      do
      {
        ++v3;
        *(_DWORD *)(*v6 + v7) = 0;
        v7 += 4;
      }
      while ( v3 );
    }
    goto LABEL_7;
  }
  for ( i = 0; i < v1; ++i )
  {
    v5 = *(gameswf::mesh_set **)(*((_DWORD *)this + 30) + 4 * i);
    if ( v5 )
    {
      gameswf::mesh_set::~mesh_set(v5);
      gameswf::free_internal(v5);
      v1 = *((_DWORD *)this + 31);
    }
    v3 = v1;
  }
  v6 = (_DWORD *)((char *)this + 120);
  if ( v1 <= 0 )
    goto LABEL_9;
LABEL_7:
  *((_DWORD *)this + 31) = 0;
  gameswf::array<gameswf::mesh_set *>::reserve((int)v6, 0);
  gameswf::array<gameswf::path>::resize((_DWORD *)this + 17, 0);
  gameswf::array<gameswf::path>::reserve((int)this + 68, 0);
  gameswf::array<gameswf::line_style>::resize((_DWORD *)this + 13, 0);
  gameswf::array<gameswf::line_style>::reserve((int)this + 52, 0);
  gameswf::array<gameswf::fill_style>::resize((_DWORD *)this + 9, 0);
  gameswf::array<gameswf::fill_style>::reserve((int)this + 36, 0);
  *((_DWORD *)this + 8) = off_9905C0;
  gameswf::character_def::~character_def(this);
}


// ===== 77c890 `non-virtual thunk to'gameswf::shape_character_def::~shape_character_def() =====
void __fastcall `non-virtual thunk to'gameswf::shape_character_def::~shape_character_def(
        gameswf::shape_character_def *this)
{
  gameswf::shape_character_def::~shape_character_def((gameswf::shape_character_def *)((char *)this - 32));
}


// ===== 77c898 gameswf::shape_character_def::~shape_character_def() =====
void __fastcall gameswf::shape_character_def::~shape_character_def(gameswf::shape_character_def *this)
{
  gameswf::shape_character_def::~shape_character_def(this);
  LC_API_FREE_0(this);
}


// ===== 77c8b4 gameswf::mesh_set::layer::~layer() =====
void __fastcall gameswf::mesh_set::layer::~layer(gameswf::mesh_set::layer *this)
{
  int v1; // r3
  int i; // r7
  _DWORD *v4; // r6
  int v5; // r3
  _DWORD *v6; // r0
  int v7; // r2
  int j; // r4
  gameswf::mesh *v9; // r6
  _DWORD *v10; // r0
  int v11; // r3
  int v12; // r2
  int v13; // r2
  int v14; // r2

  v1 = *((_DWORD *)this + 5);
  if ( v1 > 0 )
  {
    for ( i = 0; i < v1; ++i )
    {
      v4 = *(_DWORD **)(*((_DWORD *)this + 4) + 4 * i);
      if ( v4 )
      {
        v5 = v4[2];
        v6 = v4 + 1;
        if ( v5 < 0 )
        {
          v12 = 4 * v5;
          do
          {
            ++v5;
            *(_DWORD *)(*v6 + v12) = 0;
            v12 += 4;
          }
          while ( v5 );
        }
        v4[2] = 0;
        gameswf::array<float>::reserve((int)v6, 0);
        gameswf::free_internal(v4);
        v1 = *((_DWORD *)this + 5);
      }
    }
  }
  v7 = *((_DWORD *)this + 1);
  if ( v7 > 0 )
  {
    for ( j = 0; j < v7; ++j )
    {
      v9 = *(gameswf::mesh **)(*(_DWORD *)this + 4 * j);
      if ( v9 )
      {
        gameswf::mesh::~mesh(v9);
        gameswf::free_internal(v9);
        v7 = *((_DWORD *)this + 1);
      }
    }
    v1 = *((_DWORD *)this + 5);
  }
  v10 = (_DWORD *)((char *)this + 16);
  if ( v1 < 0 )
  {
    v13 = 4 * v1;
    do
    {
      ++v1;
      *(_DWORD *)(*v10 + v13) = 0;
      v13 += 4;
    }
    while ( v1 );
  }
  *((_DWORD *)this + 5) = 0;
  gameswf::array<gameswf::line_strip *>::reserve((int)v10, 0);
  v11 = *((_DWORD *)this + 1);
  if ( v11 < 0 )
  {
    v14 = 4 * v11;
    do
    {
      ++v11;
      *(_DWORD *)(*(_DWORD *)this + v14) = 0;
      v14 += 4;
    }
    while ( v11 );
  }
  *((_DWORD *)this + 1) = 0;
  gameswf::array<gameswf::mesh *>::reserve((int)this, 0);
}


// ===== 77ca1c gameswf::mesh::set_triangles(float const*,int,ushort const*,int) =====
_DWORD *__fastcall gameswf::mesh::set_triangles(
        _DWORD *this,
        const float *a2,
        int a3,
        const unsigned __int16 *a4,
        int a5)
{
  _DWORD *v6; // r4
  int v8; // r9
  _DWORD *v9; // r10
  int v10; // r7
  int v11; // r1
  int v12; // r2
  int v13; // r2
  float v14; // r12
  int v15; // r7
  int v16; // r5
  int v17; // r12
  int v18; // r2
  int i; // r2
  unsigned __int16 v20; // r5
  int v21; // r1
  const unsigned __int16 *v22; // [sp+4h] [bp-4h]
  const unsigned __int16 *v23; // [sp+4h] [bp-4h]

  v6 = this;
  if ( a3 > 0 )
  {
    v8 = *(this + 5);
    v9 = this + 4;
    v10 = a3 + v8;
    if ( a3 + v8 && v10 > *(this + 6) )
    {
      v23 = a4;
      gameswf::array<float>::reserve((int)(this + 4), v10 + (v10 >> 1));
      a4 = v23;
    }
    if ( v8 < v10 )
    {
      v11 = 4 * v8;
      v12 = 4 * v8;
      do
      {
        ++v8;
        *(_DWORD *)(*v9 + v12) = 0;
        v12 += 4;
      }
      while ( v8 != v10 );
    }
    else
    {
      v11 = 4 * v8;
    }
    v6[5] = v10;
    v13 = 0;
    do
    {
      v14 = a2[v13];
      this = (_DWORD *)v6[4];
      ++v13;
      *(float *)((char *)this + v11) = v14;
      v11 += 4;
    }
    while ( v13 != a3 );
  }
  if ( a5 > 0 )
  {
    v15 = v6[9];
    v16 = a5 + v15;
    if ( a5 + v15 && v16 > v6[10] )
    {
      v22 = a4;
      gameswf::array<unsigned short>::reserve((int)(v6 + 8), v16 + (v16 >> 1));
      a4 = v22;
    }
    if ( v15 < v16 )
    {
      v17 = 2 * v15;
      v18 = 2 * v15;
      do
      {
        ++v15;
        *(_WORD *)(v6[8] + v18) = 0;
        v18 += 2;
      }
      while ( v15 != v16 );
    }
    else
    {
      v17 = 2 * v15;
    }
    v6[9] = v16;
    for ( i = 0; i != a5; ++i )
    {
      v20 = a4[i];
      this = (_DWORD *)v6[8];
      v21 = v17 + i * 2;
      *(_WORD *)((char *)this + v21) = v20;
    }
  }
  return this;
}


// ===== 77cb5c gameswf::sound_sample::is(int) =====
bool __fastcall gameswf::sound_sample::is(gameswf::sound_sample *this, int a2)
{
  return a2 == 13 || a2 == 10;
}


// ===== 77cb78 gameswf::get_sample_rate(int) =====
int __fastcall gameswf::get_sample_rate(gameswf *this, int a2)
{
  return gameswf::s_sample_rate_table[(_DWORD)this];
}


// ===== 77cb8c gameswf::set_sound_handler(gameswf::sound_handler *) =====
int __fastcall gameswf::set_sound_handler(int result)
{
  gameswf::s_sound_handler = result;
  return result;
}


// ===== 77cba0 gameswf::get_sound_handler(void) =====
int __fastcall gameswf::get_sound_handler(gameswf *this)
{
  if ( gameswf::s_sound_handler
    && (*(int (__fastcall **)(int))(*(_DWORD *)gameswf::s_sound_handler + 52))(gameswf::s_sound_handler) )
  {
    return gameswf::s_sound_handler;
  }
  else
  {
    return 0;
  }
}


// ===== 77cbe4 gameswf::start_sound_tag::execute(gameswf::character *) =====
int __fastcall gameswf::start_sound_tag::execute(int this, gameswf::character *a2)
{
  if ( gameswf::s_sound_handler )
  {
    if ( *(_BYTE *)(this + 12) )
      return (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)gameswf::s_sound_handler + 20))(
               gameswf::s_sound_handler,
               *(unsigned __int16 *)(this + 4));
    else
      return (*(int (__fastcall **)(int, _DWORD, _DWORD))(*(_DWORD *)gameswf::s_sound_handler + 12))(
               gameswf::s_sound_handler,
               *(unsigned __int16 *)(this + 4),
               *(_DWORD *)(this + 8));
  }
  return this;
}


// ===== 77cc40 gameswf::array<gameswf::sound_envelope>::reserve(int) =====
void __fastcall gameswf::array<gameswf::sound_envelope>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 8 * a2, 8 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(8 * a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 77ccbc gameswf::array<gameswf::sound_envelope>::resize(int) =====
void __fastcall gameswf::array<gameswf::sound_envelope>::resize(_DWORD *a1, int a2)
{
  int v4; // r6
  int v5; // r2
  int v6; // r6
  int v7; // r1

  v4 = a1[1];
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::sound_envelope>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v4 < a2 )
  {
    v5 = v4;
    v6 = 8 * v4;
    do
    {
      ++v5;
      v7 = *a1 + v6;
      *(_DWORD *)v7 = 0;
      *(_WORD *)(v7 + 6) = 0;
      *(_WORD *)(v7 + 4) = 0;
      v6 += 8;
    }
    while ( v5 != a2 );
  }
  a1[1] = a2;
}


// ===== 77cd28 gameswf::start_sound_tag::~start_sound_tag() =====
void __fastcall gameswf::start_sound_tag::~start_sound_tag(gameswf::start_sound_tag *this)
{
  char *v1; // r4

  *(_DWORD *)this = off_990630;
  v1 = (char *)this + 16;
  gameswf::array<gameswf::sound_envelope>::resize((_DWORD *)this + 4, 0);
  gameswf::array<gameswf::sound_envelope>::reserve((int)v1, 0);
}


// ===== 77cd74 gameswf::start_sound_tag::read(gameswf::stream *,int,gameswf::movie_definition_sub *,gameswf::sound_sample const*) =====
int __fastcall gameswf::start_sound_tag::read(
        gameswf::start_sound_tag *this,
        gameswf::stream *a2,
        int a3,
        gameswf::movie_definition_sub *a4,
        const gameswf::sound_sample *a5)
{
  int uint; // r6
  int v9; // r8
  int v10; // r10
  int u8; // r6
  int v13; // r8
  int v14; // r10
  int v15; // r9
  int v16; // r10
  int v17; // r10

  gameswf::stream::read_uint(a2, 2);
  *((_BYTE *)this + 12) = gameswf::stream::read_uint(a2, 1) != 0;
  gameswf::stream::read_uint(a2, 1);
  uint = gameswf::stream::read_uint(a2, 1);
  v9 = gameswf::stream::read_uint(a2, 1);
  v10 = gameswf::stream::read_uint(a2, 1);
  if ( gameswf::stream::read_uint(a2, 1) )
    gameswf::stream::read_u32(a2);
  if ( v10 )
    gameswf::stream::read_u32(a2);
  if ( v9 )
    *((_DWORD *)this + 2) = gameswf::stream::read_u16(a2);
  if ( uint )
  {
    u8 = gameswf::stream::read_u8(a2);
    gameswf::array<gameswf::sound_envelope>::resize((_DWORD *)this + 4, u8);
    if ( u8 )
    {
      v13 = 0;
      do
      {
        v14 = *((_DWORD *)this + 4);
        *(_DWORD *)(v14 + 8 * v13) = gameswf::stream::read_u32(a2);
        v15 = *((_DWORD *)this + 4);
        v16 = 8 * v13;
        *(_WORD *)(v15 + 8 * v13++ + 4) = gameswf::stream::read_u16(a2);
        v17 = *((_DWORD *)this + 4) + v16;
        *(_WORD *)(v17 + 6) = gameswf::stream::read_u16(a2);
      }
      while ( u8 > v13 );
    }
  }
  *((_WORD *)this + 2) = *((_WORD *)a5 + 16);
  return (*(int (__fastcall **)(gameswf::movie_definition_sub *, gameswf::start_sound_tag *))(*(_DWORD *)a4 + 128))(
           a4,
           this);
}


// ===== 77cecc gameswf::start_sound_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
const char *__fastcall gameswf::start_sound_loader(
        gameswf *this,
        gameswf::stream *a2,
        gameswf::movie_definition_sub *a3,
        gameswf::movie_definition_sub *a4)
{
  const char *u16; // r7
  const char *result; // r0
  const gameswf::sound_sample *v9; // r4
  _BYTE *v10; // r0

  u16 = (const char *)gameswf::stream::read_u16(this);
  result = (const char *)(*(int (__fastcall **)(gameswf::movie_definition_sub *, const char *))(*(_DWORD *)a3 + 160))(
                           a3,
                           u16);
  v9 = (const gameswf::sound_sample *)result;
  if ( result )
  {
    v10 = operator new(0x20u, 0);
    v10[28] = 0;
    v10[12] = 0;
    *(_DWORD *)v10 = off_990630;
    *((_WORD *)v10 + 2) = 0;
    *((_DWORD *)v10 + 2) = 0;
    *((_DWORD *)v10 + 4) = 0;
    *((_DWORD *)v10 + 5) = 0;
    *((_DWORD *)v10 + 6) = 0;
    return (const char *)gameswf::start_sound_tag::read((gameswf::start_sound_tag *)v10, this, (int)a2, a3, v9);
  }
  else if ( gameswf::s_sound_handler )
  {
    return gameswf::log_error("start_sound_loader: sound_id %d is not defined\n", u16);
  }
  return result;
}


// ===== 77cfa0 gameswf::sound_sample::~sound_sample() =====
void __fastcall gameswf::sound_sample::~sound_sample(gameswf::sound_sample *this)
{
  *(_DWORD *)this = off_990668;
  if ( gameswf::s_sound_handler )
    (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)gameswf::s_sound_handler + 28))(
      gameswf::s_sound_handler,
      *((_DWORD *)this + 8));
  gameswf::character_def::~character_def(this);
}


// ===== 77d000 gameswf::sound_sample::~sound_sample() =====
void __fastcall gameswf::sound_sample::~sound_sample(gameswf::sound_sample *this)
{
  gameswf::sound_sample::~sound_sample(this);
  LC_API_FREE_0(this);
}


// ===== 77d01c gameswf::sound_sample::~sound_sample() =====
void __fastcall gameswf::sound_sample::~sound_sample(gameswf::sound_sample *this)
{
  *(_DWORD *)this = off_990668;
  if ( gameswf::s_sound_handler )
    (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)gameswf::s_sound_handler + 28))(
      gameswf::s_sound_handler,
      *((_DWORD *)this + 8));
  gameswf::character_def::~character_def(this);
}


// ===== 77d07c gameswf::start_sound_tag::~start_sound_tag() =====
void __fastcall gameswf::start_sound_tag::~start_sound_tag(gameswf::start_sound_tag *this)
{
  char *v2; // r4

  *(_DWORD *)this = off_990630;
  v2 = (char *)this + 16;
  gameswf::array<gameswf::sound_envelope>::resize((_DWORD *)this + 4, 0);
  gameswf::array<gameswf::sound_envelope>::reserve((int)v2, 0);
  LC_API_FREE_0(this);
}


// ===== 77d0d0 gameswf::define_sound_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
void __fastcall gameswf::define_sound_loader(
        gameswf *this,
        gameswf::stream *a2,
        _DWORD *a3,
        gameswf::movie_definition_sub *a4)
{
  int uint; // r5
  int v6; // r7
  int v7; // r6
  int u32; // r0
  int v9; // r6
  int tag_end_position; // r8
  int v11; // r1
  _WORD *v12; // r10
  int i; // r8
  int v14; // r5
  int (__fastcall *v15)(int, _WORD *, signed int, int, int, int, _BOOL4); // r4
  int sample_rate; // r0
  int v17; // r6
  gameswf::ref_counted *v18; // r5
  _BYTE *v19; // r0
  _DWORD *v20; // r4
  int v21; // r3
  int v22; // r0
  _WORD *v23; // r11
  int v24; // r10
  int sint; // r5
  int v26; // r0
  int v27; // r3
  bool v28; // cc
  int v29; // r6
  _WORD *v30; // r9
  int v31; // r3
  int v32; // r8
  int v33; // r3
  int v34; // r6
  char v35; // r0
  int v36; // r3
  int v37; // r2
  int v38; // r3
  int v39; // r6
  int v40; // r8
  __int16 v41; // r2
  int v42; // r3
  int v43; // r6
  char v44; // r0
  int v45; // r2
  int v46; // r8
  __int16 v47; // r2
  int v48; // r3
  int v49; // r6
  char v50; // r0
  int v51; // r2
  int v52; // r8
  __int16 v53; // r2
  int v54; // r3
  int v55; // r6
  char v56; // r0
  int v57; // r2
  int v58; // r7
  int v59; // r8
  __int16 v60; // r2
  int v61; // r3
  int v62; // r6
  char v63; // r0
  int v64; // r2
  __int16 v65; // r2
  int v66; // r3
  int v67; // r8
  char v68; // r0
  int v69; // r2
  __int16 v70; // r2
  int v71; // r3
  int v72; // r6
  char v73; // r0
  int v74; // r2
  __int16 v75; // r2
  int v76; // r3
  int v77; // r8
  char v78; // r0
  int v79; // r2
  __int16 v80; // r2
  int v81; // r3
  int v82; // r6
  char v83; // r0
  int v84; // r2
  __int16 v85; // r2
  int v86; // r3
  int v87; // r8
  char v88; // r0
  int v89; // r2
  __int16 v90; // r2
  int v91; // r3
  int v92; // r6
  char v93; // r0
  int v94; // r2
  __int16 v95; // r2
  int v96; // r3
  int v97; // r8
  char v98; // r0
  int v99; // r2
  int v101; // [sp+18h] [bp-5Ch]
  _WORD *v102; // [sp+1Ch] [bp-58h]
  _WORD *v103; // [sp+1Ch] [bp-58h]
  int v104; // [sp+20h] [bp-54h]
  _BOOL4 v105; // [sp+24h] [bp-50h]
  int v106; // [sp+28h] [bp-4Ch]
  _WORD *p; // [sp+34h] [bp-40h]
  signed int v109; // [sp+38h] [bp-3Ch]
  int v110; // [sp+3Ch] [bp-38h]
  gameswf *v111; // [sp+54h] [bp-20h]
  int u16; // [sp+58h] [bp-1Ch]
  _WORD *v113; // [sp+68h] [bp-Ch]
  int v114; // [sp+6Ch] [bp-8h]

  u16 = gameswf::stream::read_u16(this);
  uint = gameswf::stream::read_uint(this, 4);
  v111 = (gameswf *)gameswf::stream::read_uint(this, 2);
  v6 = gameswf::stream::read_uint(this, 1);
  v7 = gameswf::stream::read_uint(this, 1);
  u32 = gameswf::stream::read_u32(this);
  v110 = u32;
  if ( !gameswf::s_sound_handler )
    return;
  v105 = v7 != 0;
  v9 = uint;
  if ( uint != 1 )
  {
    tag_end_position = gameswf::stream::get_tag_end_position(this);
    v109 = tag_end_position - gameswf::stream::get_position(this);
    v12 = operator new[](v109);
    p = v12;
    if ( v109 > 0 )
    {
      for ( i = 0; i != v109; ++i )
        *((_BYTE *)v12 + i) = gameswf::stream::read_u8(this);
    }
    if ( uint == 3 && v6 )
      v9 = 7;
    goto LABEL_7;
  }
  if ( v105 )
    v21 = 4;
  else
    v21 = 2;
  v109 = u32 * v21;
  p = operator new[](u32 * v21);
  v22 = gameswf::stream::read_uint(this, 2);
  if ( v110 )
  {
    v23 = p;
    v24 = v110;
    v104 = v22;
LABEL_16:
    sint = gameswf::stream::read_sint(this, 16);
    v26 = gameswf::stream::read_uint(this, 6);
    v28 = v24 < 4096;
    if ( v24 < 4096 )
      v27 = 0;
    else
      v24 -= 4096;
    if ( v28 )
      v101 = v27;
    else
      v101 = v24;
    if ( !v28 )
      v24 = 4096;
    v29 = v26;
    if ( !v105 )
    {
      switch ( v104 )
      {
        case 0:
          *v23 = sint;
          v30 = v23 + 1;
          if ( v24 == 1 )
            goto LABEL_27;
          v102 = v23 + 1;
          v46 = (int)&v23[v24 - 1];
          while ( 1 )
          {
            v50 = gameswf::stream::read_uint(this, 2);
            v11 = 2 * (v50 & 1);
            v51 = (gameswf::s_sample_rate_table[v29 + 4] + v11 * gameswf::s_sample_rate_table[v29 + 4]) >> 1;
            if ( (v50 & 2) != 0 )
              v51 = -v51;
            sint += v51;
            if ( sint > 32766 )
              break;
            if ( sint >= -32767 )
              goto LABEL_78;
            sint = -32768;
            v47 = 0x8000;
LABEL_69:
            v48 = gameswf::s_index_update_table_2bits[v50 & 1];
            v23[1] = v47;
            ++v23;
            v49 = v29 + v48;
            if ( v49 <= 87 )
              v29 = v49 & ~(v49 >> 31);
            else
              v29 = 88;
            if ( v23 == (_WORD *)v46 )
              goto LABEL_47;
          }
          sint = 0x7FFF;
LABEL_78:
          v47 = sint;
          goto LABEL_69;
        case 1:
          *v23 = sint;
          v30 = v23 + 1;
          if ( v24 == 1 )
            goto LABEL_27;
          v102 = v23 + 1;
          v40 = (int)&v23[v24 - 1];
          while ( 1 )
          {
            v44 = gameswf::stream::read_uint(this, 3);
            v11 = 2 * (v44 & 3);
            v45 = (gameswf::s_sample_rate_table[v29 + 4] + v11 * gameswf::s_sample_rate_table[v29 + 4]) >> 2;
            if ( (v44 & 4) != 0 )
              v45 = -v45;
            sint += v45;
            if ( sint > 32766 )
              break;
            if ( sint >= -32767 )
              goto LABEL_63;
            sint = -32768;
            v41 = 0x8000;
LABEL_54:
            v42 = gameswf::s_index_update_table_3bits[v44 & 3];
            v23[1] = v41;
            ++v23;
            v43 = v29 + v42;
            if ( v43 <= 87 )
              v29 = v43 & ~(v43 >> 31);
            else
              v29 = 88;
            if ( v23 == (_WORD *)v40 )
              goto LABEL_47;
          }
          sint = 0x7FFF;
LABEL_63:
          v41 = sint;
          goto LABEL_54;
        case 2:
          *v23 = sint;
          v30 = v23 + 1;
          if ( v24 == 1 )
            goto LABEL_27;
          v102 = v23 + 1;
          v52 = (int)&v23[v24 - 1];
          break;
        case 3:
          *v23 = sint;
          v30 = v23 + 1;
          if ( v24 == 1 )
            goto LABEL_27;
          v102 = v23 + 1;
          v32 = (int)&v23[v24 - 1];
          do
          {
LABEL_38:
            v35 = gameswf::stream::read_uint(this, 5);
            v36 = v35 & 0xF;
            v11 = 2 * v36;
            v37 = (gameswf::s_sample_rate_table[v29 + 4] + 2 * v36 * gameswf::s_sample_rate_table[v29 + 4]) >> 4;
            if ( (v35 & 0x10) != 0 )
              v37 = -v37;
            sint += v37;
            if ( sint <= 32766 )
            {
              if ( sint < -32767 )
              {
                sint = -32768;
                v33 = gameswf::s_index_update_table_5bits[v36];
                v23[1] = 0x8000;
                ++v23;
                v34 = v29 + v33;
                if ( v34 <= 87 )
                  v29 = v34 & ~(v34 >> 31);
                else
                  v29 = 88;
                if ( v23 == (_WORD *)v32 )
                  break;
                goto LABEL_38;
              }
            }
            else
            {
              sint = 0x7FFF;
            }
            v38 = gameswf::s_index_update_table_5bits[v36];
            v23[1] = sint;
            ++v23;
            v39 = v29 + v38;
            if ( v39 <= 87 )
              v29 = v39 & ~(v39 >> 31);
            else
              v29 = 88;
          }
          while ( v23 != (_WORD *)v32 );
LABEL_47:
          v31 = v101;
          v30 = &v102[v24 - 1];
          if ( !v101 )
            goto LABEL_48;
          goto LABEL_28;
        default:
          goto LABEL_26;
      }
      while ( 1 )
      {
        v56 = gameswf::stream::read_uint(this, 4);
        v11 = 2 * (v56 & 7);
        v57 = (gameswf::s_sample_rate_table[v29 + 4] + v11 * gameswf::s_sample_rate_table[v29 + 4]) >> 3;
        if ( (v56 & 8) != 0 )
          v57 = -v57;
        sint += v57;
        if ( sint > 32766 )
          break;
        if ( sint >= -32767 )
          goto LABEL_93;
        sint = -32768;
        v53 = 0x8000;
LABEL_84:
        v54 = gameswf::s_index_update_table_4bits[v56 & 7];
        v23[1] = v53;
        ++v23;
        v55 = v29 + v54;
        if ( v55 <= 87 )
          v29 = v55 & ~(v55 >> 31);
        else
          v29 = 88;
        if ( v23 == (_WORD *)v52 )
          goto LABEL_47;
      }
      sint = 0x7FFF;
LABEL_93:
      v53 = sint;
      goto LABEL_84;
    }
    v58 = gameswf::stream::read_sint(this, 16);
    v59 = gameswf::stream::read_uint(this, 6);
    switch ( v104 )
    {
      case 0:
        *v23 = sint;
        v23[1] = v58;
        v30 = v23 + 2;
        if ( v24 == 1 )
          goto LABEL_27;
        v113 = v23 + 2;
        v114 = v24;
        while ( 2 )
        {
          v78 = gameswf::stream::read_uint(this, 2);
          v79 = (gameswf::s_sample_rate_table[v29 + 4] + 2 * (v78 & 1) * gameswf::s_sample_rate_table[v29 + 4]) >> 1;
          if ( (v78 & 2) != 0 )
            v79 = -v79;
          sint += v79;
          if ( sint > 32766 )
          {
            sint = 0x7FFF;
            goto LABEL_144;
          }
          if ( sint >= -32767 )
          {
LABEL_144:
            v70 = sint;
          }
          else
          {
            sint = -32768;
            v70 = 0x8000;
          }
          v71 = gameswf::s_index_update_table_2bits[v78 & 1];
          v23[2] = v70;
          v72 = v29 + v71;
          if ( v72 <= 87 )
            v29 = v72 & ~(v72 >> 31);
          else
            v29 = 88;
          v73 = gameswf::stream::read_uint(this, 2);
          v11 = 2 * (v73 & 1);
          v74 = (gameswf::s_sample_rate_table[v59 + 4] + v11 * gameswf::s_sample_rate_table[v59 + 4]) >> 1;
          if ( (v73 & 2) != 0 )
            v74 = -v74;
          v58 += v74;
          if ( v58 > 32766 )
          {
            v58 = 0x7FFF;
            goto LABEL_198;
          }
          if ( v58 >= -32767 )
          {
LABEL_198:
            v75 = v58;
          }
          else
          {
            v58 = -32768;
            v75 = 0x8000;
          }
          v76 = gameswf::s_index_update_table_2bits[v73 & 1];
          --v24;
          v23[3] = v75;
          v77 = v59 + v76;
          if ( v77 <= 87 )
            v59 = v77 & ~(v77 >> 31);
          else
            v59 = 88;
          v23 += 2;
          if ( v24 == 1 )
            goto LABEL_199;
          continue;
        }
      case 1:
        *v23 = sint;
        v23[1] = v58;
        v30 = v23 + 2;
        if ( v24 == 1 )
          goto LABEL_27;
        v113 = v23 + 2;
        v114 = v24;
        while ( 1 )
        {
          v98 = gameswf::stream::read_uint(this, 3);
          v99 = (gameswf::s_sample_rate_table[v29 + 4] + 2 * (v98 & 3) * gameswf::s_sample_rate_table[v29 + 4]) >> 2;
          if ( (v98 & 4) != 0 )
            v99 = -v99;
          sint += v99;
          if ( sint <= 32766 )
          {
            if ( sint < -32767 )
            {
              sint = -32768;
              v90 = 0x8000;
              goto LABEL_175;
            }
          }
          else
          {
            sint = 0x7FFF;
          }
          v90 = sint;
LABEL_175:
          v91 = gameswf::s_index_update_table_3bits[v98 & 3];
          v23[2] = v90;
          v92 = v29 + v91;
          if ( v92 <= 87 )
            v29 = v92 & ~(v92 >> 31);
          else
            v29 = 88;
          v93 = gameswf::stream::read_uint(this, 3);
          v11 = 2 * (v93 & 3);
          v94 = (gameswf::s_sample_rate_table[v59 + 4] + v11 * gameswf::s_sample_rate_table[v59 + 4]) >> 2;
          if ( (v93 & 4) != 0 )
            v94 = -v94;
          v58 += v94;
          if ( v58 > 32766 )
          {
            v58 = 0x7FFF;
LABEL_195:
            v95 = v58;
            goto LABEL_185;
          }
          if ( v58 >= -32767 )
            goto LABEL_195;
          v58 = -32768;
          v95 = 0x8000;
LABEL_185:
          v96 = gameswf::s_index_update_table_3bits[v93 & 3];
          --v24;
          v23[3] = v95;
          v97 = v59 + v96;
          if ( v97 <= 87 )
            v59 = v97 & ~(v97 >> 31);
          else
            v59 = 88;
          v23 += 2;
          if ( v24 == 1 )
          {
LABEL_199:
            v30 = &v113[2 * v114 - 2];
            goto LABEL_27;
          }
        }
      case 2:
        *v23 = sint;
        v23[1] = v58;
        v30 = v23 + 2;
        if ( v24 == 1 )
          goto LABEL_27;
        v103 = v23 + 2;
        v106 = v24;
        while ( 1 )
        {
          v88 = gameswf::stream::read_uint(this, 4);
          v89 = (gameswf::s_sample_rate_table[v29 + 4] + 2 * (v88 & 7) * gameswf::s_sample_rate_table[v29 + 4]) >> 3;
          if ( (v88 & 8) != 0 )
            v89 = -v89;
          sint += v89;
          if ( sint <= 32766 )
          {
            if ( sint < -32767 )
            {
              sint = -32768;
              v80 = 0x8000;
              goto LABEL_150;
            }
          }
          else
          {
            sint = 0x7FFF;
          }
          v80 = sint;
LABEL_150:
          v81 = gameswf::s_index_update_table_4bits[v88 & 7];
          v23[2] = v80;
          v82 = v29 + v81;
          if ( v82 <= 87 )
            v29 = v82 & ~(v82 >> 31);
          else
            v29 = 88;
          v83 = gameswf::stream::read_uint(this, 4);
          v11 = 2 * (v83 & 7);
          v84 = (gameswf::s_sample_rate_table[v59 + 4] + v11 * gameswf::s_sample_rate_table[v59 + 4]) >> 3;
          if ( (v83 & 8) != 0 )
            v84 = -v84;
          v58 += v84;
          if ( v58 > 32766 )
          {
            v58 = 0x7FFF;
LABEL_196:
            v85 = v58;
            goto LABEL_160;
          }
          if ( v58 >= -32767 )
            goto LABEL_196;
          v58 = -32768;
          v85 = 0x8000;
LABEL_160:
          v86 = gameswf::s_index_update_table_4bits[v83 & 7];
          --v24;
          v23[3] = v85;
          v87 = v59 + v86;
          if ( v87 <= 87 )
            v59 = v87 & ~(v87 >> 31);
          else
            v59 = 88;
          v23 += 2;
          if ( v24 == 1 )
            goto LABEL_200;
        }
      case 3:
        *v23 = sint;
        v23[1] = v58;
        v30 = v23 + 2;
        if ( v24 == 1 )
          goto LABEL_27;
        v103 = v23 + 2;
        v106 = v24;
        break;
      default:
LABEL_26:
        v30 = v23;
        goto LABEL_27;
    }
    while ( 1 )
    {
      v68 = gameswf::stream::read_uint(this, 5);
      v69 = (gameswf::s_sample_rate_table[v29 + 4] + 2 * (v68 & 0xF) * gameswf::s_sample_rate_table[v29 + 4]) >> 4;
      if ( (v68 & 0x10) != 0 )
        v69 = -v69;
      sint += v69;
      if ( sint <= 32766 )
      {
        if ( sint < -32767 )
        {
          sint = -32768;
          v60 = 0x8000;
          goto LABEL_100;
        }
      }
      else
      {
        sint = 0x7FFF;
      }
      v60 = sint;
LABEL_100:
      v61 = gameswf::s_index_update_table_5bits[v68 & 0xF];
      v23[2] = v60;
      v62 = v29 + v61;
      if ( v62 <= 87 )
        v29 = v62 & ~(v62 >> 31);
      else
        v29 = 88;
      v63 = gameswf::stream::read_uint(this, 5);
      v11 = 2 * (v63 & 0xF);
      v64 = (gameswf::s_sample_rate_table[v59 + 4] + v11 * gameswf::s_sample_rate_table[v59 + 4]) >> 4;
      if ( (v63 & 0x10) != 0 )
        v64 = -v64;
      v58 += v64;
      if ( v58 > 32766 )
      {
        v58 = 0x7FFF;
LABEL_197:
        v65 = v58;
        goto LABEL_110;
      }
      if ( v58 >= -32767 )
        goto LABEL_197;
      v58 = -32768;
      v65 = 0x8000;
LABEL_110:
      v66 = gameswf::s_index_update_table_5bits[v63 & 0xF];
      --v24;
      v23[3] = v65;
      v67 = v59 + v66;
      if ( v67 <= 87 )
        v59 = v67 & ~(v67 >> 31);
      else
        v59 = 88;
      v23 += 2;
      if ( v24 == 1 )
      {
LABEL_200:
        v30 = &v103[2 * v106 - 2];
LABEL_27:
        v31 = v101;
        if ( !v101 )
          break;
LABEL_28:
        v23 = v30;
        v24 = v31;
        goto LABEL_16;
      }
    }
  }
LABEL_48:
  v9 = 7;
LABEL_7:
  v14 = gameswf::s_sound_handler;
  v15 = **(int (__fastcall ***)(int, _WORD *, signed int, int, int, int, _BOOL4))gameswf::s_sound_handler;
  sample_rate = gameswf::get_sample_rate(v111, v11);
  v17 = v15(v14, p, v109, v110, v9, sample_rate, v105);
  v18 = (gameswf::ref_counted *)a3[7];
  if ( v18 )
  {
    v19 = (_BYTE *)a3[6];
    if ( !v19[4] )
    {
      if ( (*(_DWORD *)v19)-- == 1 )
        gameswf::free_internal(v19);
      v18 = nullptr;
      a3[6] = 0;
      a3[7] = 0;
    }
  }
  v20 = operator new(0x24u, 0);
  gameswf::character_def::character_def(v20, v18);
  v20[8] = v17;
  *v20 = off_990668;
  (*(void (__fastcall **)(_DWORD *, int, _DWORD *))(*a3 + 164))(a3, u16, v20);
  if ( p )
    gameswf::free_internal(p);
}


// ===== 77dcd4 gameswf::rect::expand_to_rect(gameswf::rect const&) =====
bool __fastcall gameswf::rect::expand_to_rect(float *a1, float *a2)
{
  float v2; // r6
  float v3; // r8
  float v4; // r5
  float v6; // r7
  float v7; // r9
  float v8; // r9
  float v9; // r9
  float v10; // r10
  _BOOL4 result; // r0

  v2 = *a2;
  v3 = *a1;
  v4 = a2[2];
  v6 = a1[2];
  if ( *a2 <= *a1 )
    v3 = *a2;
  *a1 = v3;
  v7 = a1[1];
  if ( v4 <= v6 )
    v6 = v4;
  a1[2] = v6;
  if ( v2 <= v7 )
    v2 = v7;
  v8 = a1[3];
  a1[1] = v2;
  if ( v4 <= v8 )
    v4 = v8;
  a1[3] = v4;
  v9 = a2[1];
  v10 = a2[3];
  if ( v9 <= v3 )
    v3 = a2[1];
  *a1 = v3;
  if ( v10 <= v6 )
    v6 = v10;
  a1[2] = v6;
  if ( v9 <= v2 )
    v9 = v2;
  a1[1] = v9;
  result = v10 > v4;
  if ( v10 <= v4 )
    v10 = v4;
  a1[3] = v10;
  return result;
}


// ===== 77ddc4 gameswf::sprite_instance::is(int) =====
bool __fastcall gameswf::sprite_instance::is(gameswf::sprite_instance *this, int a2)
{
  return a2 == 2 || a2 == 1 || a2 == 0;
}


// ===== 77dde8 gameswf::sprite_instance::get_character_def(void) =====
int __fastcall gameswf::sprite_instance::get_character_def(gameswf::sprite_instance *this)
{
  return *((_DWORD *)this + 40);
}


// ===== 77ddf0 gameswf::sprite_instance::get_movie_definition(void) =====
int __fastcall gameswf::sprite_instance::get_movie_definition(gameswf::sprite_instance *this)
{
  return *((_DWORD *)this + 40);
}


// ===== 77ddf8 gameswf::sprite_instance::get_current_frame(void) =====
int __fastcall gameswf::sprite_instance::get_current_frame(gameswf::sprite_instance *this)
{
  return *((__int16 *)this + 114);
}


// ===== 77de00 gameswf::sprite_instance::get_frame_count(void) =====
int __fastcall gameswf::sprite_instance::get_frame_count(gameswf::sprite_instance *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 40) + 56))(*((_DWORD *)this + 40));
}


// ===== 77de1c gameswf::sprite_instance::get_loading_frame(void) =====
int __fastcall gameswf::sprite_instance::get_loading_frame(gameswf::sprite_instance *this)
{
  return *(_DWORD *)(*((_DWORD *)this + 40) + 60);
}


// ===== 77de28 gameswf::sprite_instance::get_character(int) =====
int __fastcall gameswf::sprite_instance::get_character(gameswf::sprite_instance *this, int a2)
{
  return 0;
}


// ===== 77de30 gameswf::sprite_instance::get_pixel_scale(void) =====
int __fastcall gameswf::sprite_instance::get_pixel_scale(gameswf::sprite_instance *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 41) + 12))(*((_DWORD *)this + 41));
}


// ===== 77de4c gameswf::sprite_instance::get_mouse_state(int *,int *,int *) =====
int __fastcall gameswf::sprite_instance::get_mouse_state(gameswf::sprite_instance *this, int *a2, int *a3, int *a4)
{
  return (*(int (__fastcall **)(_DWORD, int *, int *, int *))(**((_DWORD **)this + 41) + 8))(
           *((_DWORD *)this + 41),
           a2,
           a3,
           a4);
}


// ===== 77de68 gameswf::sprite_instance::_typeof(void) =====
const char *__fastcall gameswf::sprite_instance::_typeof(gameswf::sprite_instance *this)
{
  return "movieclip";
}


// ===== 77de78 gameswf::sprite_instance::get_play_state(void) =====
int __fastcall gameswf::sprite_instance::get_play_state(gameswf::sprite_instance *this)
{
  return *((char *)this + 230);
}


// ===== 77de80 gameswf::sprite_instance::find_previous_replace_or_add_tag(int,int,int) =====
int __fastcall gameswf::sprite_instance::find_previous_replace_or_add_tag(
        gameswf::sprite_instance *this,
        int a2,
        int a3,
        unsigned __int16 a4)
{
  int v4; // r4
  int v5; // r5
  int v7; // r0
  int v8; // r9
  _DWORD *v9; // r11
  int v10; // r7
  int v11; // r10
  int v12; // r8

  v4 = a2 - 1;
  v5 = a4 | (a3 << 16);
  if ( a2 - 1 < 0 )
    return 0;
  while ( 1 )
  {
    v7 = (*(int (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 40) + 80))(*((_DWORD *)this + 40), v4);
    v8 = *(_DWORD *)(v7 + 4);
    v9 = (_DWORD *)v7;
    if ( v8 - 1 >= 0 )
      break;
LABEL_7:
    if ( v4-- == 0 )
      return 0;
  }
  v10 = 4 * (v8 - 1);
  v11 = 0;
  while ( 1 )
  {
    ++v11;
    v12 = *(_DWORD *)(*v9 + v10);
    v10 -= 4;
    if ( v5 == (*(int (__fastcall **)(int))(*(_DWORD *)v12 + 28))(v12) )
      return v12;
    if ( v11 == v8 )
      goto LABEL_7;
  }
}


// ===== 77df14 gameswf::sprite_instance::execute_remove_tags(int) =====
int __fastcall gameswf::sprite_instance::execute_remove_tags(gameswf::sprite_instance *this, int a2)
{
  int result; // r0
  _DWORD *v4; // r5
  int v5; // r4
  int v6; // r7

  result = (*(int (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 40) + 80))(*((_DWORD *)this + 40), a2);
  v4 = (_DWORD *)result;
  if ( *(int *)(result + 4) > 0 )
  {
    v5 = 0;
    do
    {
      while ( 1 )
      {
        v6 = *(_DWORD *)(*v4 + 4 * v5++);
        result = (*(int (__fastcall **)(int))(*(_DWORD *)v6 + 20))(v6);
        if ( result )
          break;
        if ( v5 >= v4[1] )
          return result;
      }
      result = (*(int (__fastcall **)(int, gameswf::sprite_instance *))(*(_DWORD *)v6 + 12))(v6, this);
    }
    while ( v5 < v4[1] );
  }
  return result;
}


// ===== 77df9c gameswf::sprite_instance::get_frameid_from_label(gameswf::tu_stringi const&) =====
int __fastcall gameswf::sprite_instance::get_frameid_from_label(int a1, int a2)
{
  int v3; // [sp+4h] [bp-4h] BYREF

  v3 = -1;
  if ( (*(int (__fastcall **)(_DWORD, int, int *))(**(_DWORD **)(a1 + 160) + 96))(*(_DWORD *)(a1 + 160), a2, &v3) )
    return v3;
  else
    return -1;
}


// ===== 77dfd8 gameswf::sprite_instance::goto_labeled_frame(gameswf::tu_stringi const&) =====
int __fastcall gameswf::sprite_instance::goto_labeled_frame(_DWORD *a1, int a2)
{
  int v2; // r3
  int result; // r0
  int v5; // [sp+4h] [bp-4h] BYREF

  v2 = a1[40];
  v5 = -1;
  result = (*(int (__fastcall **)(int, int, int *))(*(_DWORD *)v2 + 96))(v2, a2, &v5);
  if ( result )
  {
    (*(void (__fastcall **)(_DWORD *, int))(*a1 + 332))(a1, v5);
    return 1;
  }
  return result;
}


// ===== 77e02c gameswf::sprite_instance::get_drag_state(gameswf::character::drag_state *) =====
int __fastcall gameswf::sprite_instance::get_drag_state(int a1, int *a2)
{
  int *v3; // r12
  int v4; // r0
  int v5; // r1
  int v6; // r2
  int v7; // r3
  int result; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3

  v3 = (int *)(*(_DWORD *)(a1 + 164) + 88);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v3 += 4;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2 += 4;
  result = *v3;
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  *a2 = *v3;
  a2[1] = v9;
  a2[2] = v10;
  a2[3] = v11;
  return result;
}


// ===== 77e058 gameswf::cast_to<gameswf::movie_def_impl>(gameswf::as_object_interface *) =====
int __fastcall gameswf::cast_to<gameswf::movie_def_impl>(int a1)
{
  if ( a1 && (*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 8))(a1, 8) )
    return a1;
  else
    return 0;
}


// ===== 77e08c gameswf::hash<int,gameswf::smart_ptr<gameswf::as_function>,gameswf::fixed_size_hash<int>>::find_index(int const&) =====
int __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::as_function>,gameswf::fixed_size_hash<int>>::find_index(
        int *a1,
        _DWORD *a2)
{
  int v2; // r3
  int result; // r0
  int v4; // r2
  int v5; // r0
  int v6; // r0
  int v7; // r4
  int v8; // r12
  int v9; // r5
  int *v10; // r12
  int v11; // r5

  v2 = *a1;
  if ( !*a1 )
    return -1;
  v4 = 5381;
  v5 = 4;
  do
  {
    --v5;
    v4 = 65600 * v4 + *((unsigned __int8 *)a2 + v5) - v4;
  }
  while ( v5 );
  v6 = *(_DWORD *)(v2 + 4);
  if ( v4 == -1 )
    v4 = -32769;
  v7 = v4 & v6;
  v8 = 2 * (v4 & v6) + 1;
  v9 = *(_DWORD *)(v2 + 8 * v8);
  v10 = (int *)(v2 + 8 * v8);
  if ( v9 == -2 )
    return -1;
  v11 = v10[1];
  if ( v11 == -1 )
  {
    result = v4 & v6;
    goto LABEL_14;
  }
  result = v6 & v11;
  if ( result != v7 )
    return -1;
LABEL_14:
  while ( v4 != v11 || v10[2] != *a2 )
  {
    result = *v10;
    if ( *v10 == -1 )
      break;
    v10 = (int *)(v2 + 16 * result + 8);
    v11 = *(_DWORD *)(v2 + 16 * result + 12);
  }
  return result;
}


// ===== 77e14c `global constructor keyed to'.._.._src_gameswf_gameswf_sprite.cpp =====
void `global constructor keyed to'.._.._src_gameswf_gameswf_sprite.cpp()
{
  dword_9FC9C0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9FC9BC = 1056964608;
}


// ===== 77e16c gameswf::sprite_instance::get_root_movie(void) =====
int __fastcall gameswf::sprite_instance::get_root_movie(gameswf::root **this)
{
  return gameswf::root::get_root_movie(*(this + 41));
}


// ===== 77e174 gameswf::sprite_instance::get_background_alpha(void) =====
float __fastcall gameswf::sprite_instance::get_background_alpha(gameswf::root **this)
{
  return gameswf::root::get_background_alpha(*(this + 41));
}


// ===== 77e17c gameswf::sprite_instance::set_background_color(gameswf::rgba const&) =====
void *__fastcall gameswf::sprite_instance::set_background_color(int a1, const void *a2)
{
  return gameswf::root::set_background_color(*(_DWORD *)(a1 + 164), a2);
}


// ===== 77e184 gameswf::sprite_instance::update_world_cxform(void) =====
void __fastcall gameswf::sprite_instance::update_world_cxform(gameswf::sprite_instance *this)
{
  int v2; // r5
  int i; // r4
  int v4; // r3

  gameswf::character::update_world_cxform(this);
  v2 = *((_DWORD *)this + 43);
  if ( v2 > 0 )
  {
    for ( i = 0; i != v2; ++i )
    {
      v4 = *(_DWORD *)(*((_DWORD *)this + 42) + 4 * i);
      if ( v4 )
        (*(void (__fastcall **)(int))(*(_DWORD *)v4 + 284))(v4);
    }
  }
}


// ===== 77e1d0 gameswf::sprite_instance::update_world_matrix(void) =====
int __fastcall gameswf::sprite_instance::update_world_matrix(gameswf::sprite_instance *this)
{
  int result; // r0
  int v3; // r5
  int i; // r4
  int v5; // r3

  result = gameswf::character::update_world_matrix(this);
  v3 = *((_DWORD *)this + 43);
  if ( v3 > 0 )
  {
    for ( i = 0; i != v3; ++i )
    {
      v5 = *(_DWORD *)(*((_DWORD *)this + 42) + 4 * i);
      result = v5;
      if ( v5 )
        result = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 280))(v5);
    }
  }
  return result;
}


// ===== 77e21c gameswf::smart_ptr<gameswf::as_function>::set_ref(gameswf::as_function*) =====
void __fastcall gameswf::smart_ptr<gameswf::as_function>::set_ref(
        gameswf::ref_counted **a1,
        gameswf::ref_counted *this)
{
  gameswf::ref_counted *v3; // r0

  v3 = *a1;
  if ( v3 != this )
  {
    if ( v3 )
      gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v3);
    *a1 = this;
    if ( this )
      gameswf::ref_counted::add_ref((int)this);
  }
}


// ===== 77e25c gameswf::hash<int,gameswf::smart_ptr<gameswf::as_function>,gameswf::fixed_size_hash<int>>::get(int const&,gameswf::smart_ptr<gameswf::as_function>*) =====
int __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::as_function>,gameswf::fixed_size_hash<int>>::get(
        int *a1,
        _DWORD *a2,
        gameswf::ref_counted **a3)
{
  int index; // r3

  index = gameswf::hash<int,gameswf::smart_ptr<gameswf::as_function>,gameswf::fixed_size_hash<int>>::find_index(a1, a2);
  if ( index < 0 )
    return 0;
  if ( a3 )
    gameswf::smart_ptr<gameswf::as_function>::set_ref(a3, *(gameswf::ref_counted **)(*a1 + 16 * index + 20));
  return 1;
}


// ===== 77e2a8 gameswf::sprite_instance::set_frame_script(int) =====
int *__fastcall gameswf::sprite_instance::set_frame_script(gameswf::ref_counted **this, int a2)
{
  gameswf::ref_counted **v2; // r5
  int *result; // r0
  int v5; // [sp+4h] [bp-8h] BYREF

  v2 = this + 63;
  v5 = a2;
  gameswf::smart_ptr<gameswf::as_function>::set_ref(this + 63, nullptr);
  result = (int *)*(this + 62);
  if ( result )
    return (int *)gameswf::hash<int,gameswf::smart_ptr<gameswf::as_function>,gameswf::fixed_size_hash<int>>::get(
                    result,
                    &v5,
                    v2);
  return result;
}


// ===== 77e2e8 gameswf::smart_ptr<gameswf::as_transform>::set_ref(gameswf::as_transform*) =====
void __fastcall gameswf::smart_ptr<gameswf::as_transform>::set_ref(
        gameswf::ref_counted **a1,
        gameswf::ref_counted *this)
{
  gameswf::ref_counted *v3; // r0

  v3 = *a1;
  if ( v3 != this )
  {
    if ( v3 )
      gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v3);
    *a1 = this;
    if ( this )
      gameswf::ref_counted::add_ref((int)this);
  }
}


// ===== 77e328 gameswf::hash<int,gameswf::smart_ptr<gameswf::as_function>,gameswf::fixed_size_hash<int>>::clear(void) =====
void __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::as_function>,gameswf::fixed_size_hash<int>>::clear(
        _DWORD **a1)
{
  _DWORD *v2; // r0
  int v3; // r8
  int v4; // r7
  int v5; // r5
  _DWORD *v6; // r6
  void (__fastcall ***v7)(_DWORD); // r0

  v2 = *a1;
  if ( v2 )
  {
    v3 = v2[1];
    if ( v3 >= 0 )
    {
      v4 = 0;
      v5 = 2;
      do
      {
        ++v4;
        v6 = &v2[v5];
        if ( v2[v5] != -2 && v6[1] != -1 )
        {
          v7 = (void (__fastcall ***)(_DWORD))v6[3];
          if ( v7 )
            gameswf::ref_counted::drop_ref(v7);
          *v6 = -2;
          v6[1] = 0;
          v2 = *a1;
        }
        v5 += 4;
      }
      while ( v3 >= v4 );
    }
    gameswf::free_internal(v2);
    *a1 = nullptr;
  }
}


// ===== 77e3b8 gameswf::hash<int,gameswf::smart_ptr<gameswf::as_function>,gameswf::fixed_size_hash<int>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::as_function>,gameswf::fixed_size_hash<int>>::set_raw_capacity(
        _DWORD **a1,
        int a2)
{
  _DWORD *v2; // r10
  int v3; // r4
  _DWORD *v4; // r3
  int v5; // r5
  int v6; // r3
  _DWORD *v7; // r3
  int v8; // r7
  int v9; // r6
  int v10; // r5
  _DWORD *v11; // r4
  void (__fastcall ***v12)(_DWORD); // r0
  _DWORD v13[2]; // [sp+4h] [bp-8h] BYREF

  v2 = a1;
  if ( a2 <= 0 )
  {
LABEL_19:
    gameswf::hash<int,gameswf::smart_ptr<gameswf::as_function>,gameswf::fixed_size_hash<int>>::clear(a1);
    return;
  }
  v3 = 1 << (int)(float)((float)(logf((float)(a2 - 1)) / 0.69315) + 1.0);
  v4 = (_DWORD *)*v2;
  if ( v3 < 4 )
    v3 = 4;
  if ( !v4 || v4[1] + 1 != v3 )
  {
    v5 = 0;
    v13[0] = gameswf::malloc_internal(16 * v3 + 8);
    *(_DWORD *)v13[0] = 0;
    *(_DWORD *)(v13[0] + 4) = v3 - 1;
    v6 = 8;
    do
    {
      ++v5;
      *(_DWORD *)(v13[0] + v6) = -2;
      v6 += 16;
    }
    while ( v3 > v5 );
    v7 = (_DWORD *)*v2;
    if ( *v2 )
    {
      v8 = v7[1];
      if ( v8 >= 0 )
      {
        v9 = 0;
        v10 = 2;
        do
        {
          v11 = &v7[v10];
          ++v9;
          if ( v7[v10] != -2 && v11[1] != -1 )
          {
            gameswf::hash<int,gameswf::smart_ptr<gameswf::as_function>,gameswf::fixed_size_hash<int>>::add(
              v13,
              &v7[v10 + 2],
              &v7[v10 + 3]);
            v12 = (void (__fastcall ***)(_DWORD))v11[3];
            if ( v12 )
              gameswf::ref_counted::drop_ref(v12);
            *v11 = -2;
            v11[1] = 0;
            v7 = (_DWORD *)*v2;
          }
          v10 += 4;
        }
        while ( v8 >= v9 );
      }
      gameswf::free_internal(v7);
    }
    a1 = (_DWORD **)v13;
    *v2 = v13[0];
    v13[0] = 0;
    goto LABEL_19;
  }
}


// ===== 77e520 gameswf::hash<int,gameswf::smart_ptr<gameswf::as_function>,gameswf::fixed_size_hash<int>>::check_expand(void) =====
void __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::as_function>,gameswf::fixed_size_hash<int>>::check_expand(
        _DWORD **a1)
{
  _DWORD *v1; // r3
  int v2; // r1

  v1 = *a1;
  if ( *a1 )
  {
    v2 = 2 * (v1[1] + 1);
    if ( 3 * *v1 <= v2 )
      return;
  }
  else
  {
    v2 = 8;
  }
  gameswf::hash<int,gameswf::smart_ptr<gameswf::as_function>,gameswf::fixed_size_hash<int>>::set_raw_capacity(a1, v2);
}


// ===== 77e554 gameswf::hash<int,gameswf::smart_ptr<gameswf::as_function>,gameswf::fixed_size_hash<int>>::add(int const&,gameswf::smart_ptr<gameswf::as_function> const&) =====
void __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::as_function>,gameswf::fixed_size_hash<int>>::add(
        _DWORD **a1,
        gameswf::ref_counted **a2,
        gameswf::ref_counted **a3)
{
  int v6; // r5
  int v7; // r3
  _DWORD *v8; // r4
  int v9; // r2
  int v10; // r3
  int v11; // r10
  int v12; // r1
  gameswf::ref_counted **v13; // r7
  gameswf::ref_counted *v14; // r0
  int v15; // r6
  int v16; // r12
  int v17; // lr
  _DWORD *v18; // r12
  int v19; // r2
  int v20; // r9
  int *v21; // r9
  int v22; // r0
  gameswf::ref_counted *v23; // r0
  bool v24; // zf
  int v25; // r0

  gameswf::hash<int,gameswf::smart_ptr<gameswf::as_function>,gameswf::fixed_size_hash<int>>::check_expand(a1);
  v6 = 5381;
  v7 = 4;
  ++**a1;
  do
  {
    --v7;
    v6 = 65600 * v6 + *((unsigned __int8 *)a2 + v7) - v6;
  }
  while ( v7 );
  v8 = *a1;
  if ( v6 == -1 )
    v6 = -32769;
  v9 = v8[1];
  v10 = v6 & v9;
  v11 = 2 * (v6 & v9) + 1;
  v12 = v8[2 * v11];
  v13 = (gameswf::ref_counted **)&v8[2 * v11];
  if ( v12 == -2 )
  {
    v8[2 * v11] = -1;
    goto LABEL_17;
  }
  v14 = v13[1];
  if ( v14 == (gameswf::ref_counted *)-1 )
  {
LABEL_17:
    v13[1] = (gameswf::ref_counted *)v6;
    v13[2] = *a2;
    v23 = *a3;
    v24 = *a3 == nullptr;
    v13[3] = *a3;
    if ( !v24 )
      gameswf::ref_counted::add_ref((int)v23);
    return;
  }
  v15 = v6 & v9;
  do
  {
    v15 = (v15 + 1) & v9;
    v16 = 2 * v15 + 1;
    v17 = v8[2 * v16];
    v18 = &v8[2 * v16];
  }
  while ( v17 != -2 );
  v19 = v9 & (unsigned int)v14;
  if ( v19 == v10 )
  {
    *v18 = v12;
    v18[1] = v13[1];
    v18[2] = v13[2];
    v25 = (int)v13[3];
    v18[3] = v25;
    if ( v25 )
      gameswf::ref_counted::add_ref(v25);
    v13[2] = *a2;
    gameswf::smart_ptr<gameswf::as_function>::set_ref(v13 + 3, *a3);
    v8[2 * v11] = v15;
    v13[1] = (gameswf::ref_counted *)v6;
  }
  else
  {
    do
    {
      v20 = 2 * v19 + 1;
      v19 = v8[2 * v20];
      v21 = &v8[2 * v20];
    }
    while ( v19 != v10 );
    *v18 = v12;
    v18[1] = v13[1];
    v18[2] = v13[2];
    v22 = (int)v13[3];
    v18[3] = v22;
    if ( v22 )
      gameswf::ref_counted::add_ref(v22);
    *v21 = v15;
    v13[2] = *a2;
    gameswf::smart_ptr<gameswf::as_function>::set_ref(v13 + 3, *a3);
    v13[1] = (gameswf::ref_counted *)v6;
    v8[2 * v11] = -1;
  }
}


// ===== 77e6f0 gameswf::hash<int,gameswf::smart_ptr<gameswf::as_function>,gameswf::fixed_size_hash<int>>::set(int const&,gameswf::smart_ptr<gameswf::as_function> const&) =====
void __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::as_function>,gameswf::fixed_size_hash<int>>::set(
        int *a1,
        gameswf::ref_counted **a2,
        gameswf::ref_counted **a3)
{
  int index; // r0

  index = gameswf::hash<int,gameswf::smart_ptr<gameswf::as_function>,gameswf::fixed_size_hash<int>>::find_index(a1, a2);
  if ( index < 0 )
    gameswf::hash<int,gameswf::smart_ptr<gameswf::as_function>,gameswf::fixed_size_hash<int>>::add(
      (_DWORD **)a1,
      a2,
      a3);
  else
    gameswf::smart_ptr<gameswf::as_function>::set_ref((gameswf::ref_counted **)(*a1 + 16 * index + 20), *a3);
}


// ===== 77e738 gameswf::sprite_instance::add_script(int,gameswf::as_function *) =====
void __fastcall gameswf::sprite_instance::add_script(
        gameswf::sprite_instance *this,
        gameswf::ref_counted *a2,
        gameswf::as_function *a3)
{
  int *v5; // r6
  int v6; // r1
  int *v7; // r0
  gameswf::ref_counted *v8; // [sp+4h] [bp-Ch] BYREF
  gameswf::ref_counted *v9; // [sp+Ch] [bp-4h] BYREF

  v8 = a2;
  if ( (int)a2 >= 0 && (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 40) + 56))(*((_DWORD *)this + 40)) > (int)v8 )
  {
    v5 = *((int **)this + 62);
    if ( !v5 )
    {
      v7 = (int *)operator new(4u, 0);
      *v7 = 0;
      v5 = v7;
      *((_DWORD *)this + 62) = v7;
    }
    v9 = a3;
    if ( a3 )
      gameswf::ref_counted::add_ref((int)a3);
    gameswf::hash<int,gameswf::smart_ptr<gameswf::as_function>,gameswf::fixed_size_hash<int>>::set(v5, &v8, &v9);
    if ( v9 )
      gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v9);
    v6 = *((__int16 *)this + 114);
    if ( (gameswf::ref_counted *)v6 == v8 )
      gameswf::sprite_instance::set_frame_script((gameswf::ref_counted **)this, v6);
  }
}


// ===== 77e7f8 gameswf::array<gameswf::action_buffer *>::reserve(int) =====
void __fastcall gameswf::array<gameswf::action_buffer *>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 4 * a2, 4 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(4 * a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 77e874 gameswf::sprite_instance::add_action_buffer(gameswf::action_buffer *) =====
void __fastcall gameswf::sprite_instance::add_action_buffer(_DWORD *a1, int a2)
{
  int v2; // r3
  int v4; // r5

  v2 = a1[48];
  v4 = v2 + 1;
  if ( v2 + 1 > a1[49] )
  {
    gameswf::array<gameswf::action_buffer *>::reserve((int)(a1 + 47), v4 + (v4 >> 1));
    v2 = a1[48];
  }
  *(_DWORD *)(a1[47] + 4 * v2) = a2;
  a1[48] = v4;
}


// ===== 77e8b4 gameswf::array<gameswf::blend_mode::id>::reserve(int) =====
void __fastcall gameswf::array<gameswf::blend_mode::id>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 4 * a2, 4 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(4 * a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 77e930 gameswf::array<bool>::reserve(int) =====
void __fastcall gameswf::array<bool>::reserve(int a1, size_t a2)
{
  size_t v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, a2, v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 77e9a4 gameswf::sprite_instance::enumerate(gameswf::as_environment *) =====
gameswf::as_environment *__fastcall gameswf::sprite_instance::enumerate(
        gameswf::sprite_instance *this,
        gameswf::as_environment *a2)
{
  gameswf::as_environment *result; // r0
  int v5; // r5
  int i; // r4
  int v7; // r3
  gameswf::tu_string *v8; // r1
  int v9; // r3

  result = (gameswf::as_environment *)gameswf::character::enumerate(this, a2);
  v5 = *((_DWORD *)this + 43);
  if ( v5 > 0 )
  {
    for ( i = 0; i != v5; ++i )
    {
      v7 = *(_DWORD *)(*((_DWORD *)this + 42) + 4 * i);
      if ( v7 )
      {
        v8 = *(gameswf::tu_string **)(v7 + 68);
        result = a2;
        v9 = *(char *)v8;
        if ( v9 == -1 )
          v9 = *((_DWORD *)v8 + 1);
        if ( v9 - 1 > 0 )
          result = (gameswf::as_environment *)gameswf::array<gameswf::as_value>::push_back<gameswf::tu_string>(a2, v8);
      }
    }
  }
  return result;
}


// ===== 77ea08 gameswf::sprite_instance::set_fps(float) =====
int __fastcall gameswf::sprite_instance::set_fps(gameswf::root **this, float a2)
{
  return gameswf::root::set_frame_rate(*(this + 41), a2);
}


// ===== 77ea10 gameswf::sprite_instance::clear_refs(gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>> *,gameswf::as_object *) =====
int __fastcall gameswf::sprite_instance::clear_refs(int a1, int *a2, int a3)
{
  int result; // r0
  int v7; // [sp+4h] [bp-4h] BYREF

  v7 = a1;
  result = gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>>::find_index(a2, &v7);
  if ( result < 0 )
  {
    gameswf::as_object::clear_refs(a1, a2, a3);
    gameswf::display_list::clear_refs(a1 + 168, (int)a2, a3);
    result = *(_DWORD *)(a1 + 224);
    if ( result )
      return gameswf::as_environment::clear_refs(result, a2, a3);
  }
  return result;
}


// ===== 77ea84 gameswf::sprite_instance::get_loaded_bytes(void) =====
gameswf::movie_def_impl *__fastcall gameswf::sprite_instance::get_loaded_bytes(gameswf::sprite_instance *this)
{
  gameswf::movie_def_impl *result; // r0

  result = (gameswf::movie_def_impl *)gameswf::cast_to<gameswf::movie_def_impl>(*((_DWORD *)this + 40));
  if ( result )
    return (gameswf::movie_def_impl *)gameswf::movie_def_impl::get_loaded_bytes(result);
  return result;
}


// ===== 77eaa4 gameswf::sprite_instance::get_file_bytes(void) =====
gameswf::movie_def_impl *__fastcall gameswf::sprite_instance::get_file_bytes(gameswf::sprite_instance *this)
{
  gameswf::movie_def_impl *result; // r0

  result = (gameswf::movie_def_impl *)gameswf::cast_to<gameswf::movie_def_impl>(*((_DWORD *)this + 40));
  if ( result )
    return (gameswf::movie_def_impl *)gameswf::movie_def_impl::get_file_bytes(result);
  return result;
}


// ===== 77eac4 gameswf::sprite_instance::get_bound(gameswf::rect *) =====
int __fastcall gameswf::sprite_instance::get_bound(int this, gameswf::rect *a2)
{
  int v2; // r7
  int v3; // r6
  int v5; // r10
  int i; // r4
  int v7; // r3
  float v8; // [sp+0h] [bp-14h] BYREF
  float v9; // [sp+4h] [bp-10h]
  float v10; // [sp+8h] [bp-Ch]
  float v11; // [sp+Ch] [bp-8h]

  v2 = *(_DWORD *)(this + 172);
  v3 = this;
  *((_DWORD *)a2 + 2) = 2139095039;
  *((_DWORD *)a2 + 3) = -8388609;
  *(_DWORD *)a2 = 2139095039;
  *((_DWORD *)a2 + 1) = -8388609;
  if ( v2 )
  {
    v5 = *(_DWORD *)(this + 76);
    if ( v2 > 0 )
    {
      for ( i = 0; i != v2; ++i )
      {
        v7 = *(_DWORD *)(*(_DWORD *)(v3 + 168) + 4 * i);
        this = v7;
        if ( v7 )
        {
          (*(void (__fastcall **)(int, float *))(*(_DWORD *)v7 + 300))(v7, &v8);
          this = (float)(v9 - v8) > 0.0;
          if ( (float)(v9 - v8) > 0.0 )
          {
            this = v5;
            if ( (float)(v11 - v10) > 0.0 )
            {
              gameswf::matrix::transform(v5, &v8);
              this = gameswf::rect::expand_to_rect((float *)a2, &v8);
            }
          }
        }
      }
    }
  }
  return this;
}


// ===== 77eb90 gameswf::as_value::~as_value() =====
void __fastcall gameswf::as_value::~as_value(gameswf::as_value *this)
{
  gameswf::as_value::drop_refs(this);
}


// ===== 77eba4 gameswf::array<gameswf::as_value>::resize(int) =====
void __fastcall gameswf::array<gameswf::as_value>::resize(_DWORD *a1, int a2)
{
  int v2; // r6
  int v5; // r8
  int v6; // r7
  int v7; // r3
  _BYTE *v8; // r0

  v2 = a1[1];
  if ( v2 > a2 )
  {
    v5 = 12 * a2;
    v6 = a2;
    do
    {
      ++v6;
      gameswf::as_value::drop_refs((gameswf::as_value *)(*a1 + v5));
      v5 += 12;
    }
    while ( v6 != v2 );
  }
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::as_value>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v2 < a2 )
  {
    v7 = 12 * v2;
    do
    {
      ++v2;
      v8 = (_BYTE *)(*a1 + v7);
      *v8 = 0;
      v8[1] = 0;
      v7 += 12;
    }
    while ( v2 != a2 );
  }
  a1[1] = a2;
}


// ===== 77ec44 gameswf::sprite_instance::call_method(char const*,gameswf::as_value *,int) =====
gameswf::sprite_instance *__fastcall gameswf::sprite_instance::call_method(
        gameswf::sprite_instance *this,
        gameswf::as_object *a2,
        gameswf::as_value *a3,
        const gameswf::as_value *a4,
        int a5)
{
  gameswf::as_environment *v9; // r0

  v9 = (gameswf::as_environment *)(*(int (__fastcall **)(gameswf::as_object *))(*(_DWORD *)a2 + 88))(a2);
  gameswf::call_method(this, v9, a2, (const char *)a3, a4, a5);
  return this;
}


// ===== 77ec94 gameswf::sprite_instance::remove_display_object(gameswf::character *) =====
int __fastcall gameswf::sprite_instance::remove_display_object(gameswf::sprite_instance *this, gameswf::character *a2)
{
  return gameswf::display_list::remove_display_object((gameswf::sprite_instance *)((char *)this + 168), a2);
}


// ===== 77ec9c gameswf::sprite_instance::remove_display_object(gameswf::tu_string const&) =====
int __fastcall gameswf::sprite_instance::remove_display_object(
        gameswf::sprite_instance *this,
        const gameswf::tu_string *a2)
{
  int result; // r0

  result = gameswf::display_list::get_character_by_name((gameswf::sprite_instance *)((char *)this + 168), a2);
  if ( result )
    return (*(int (__fastcall **)(gameswf::sprite_instance *, _DWORD, _DWORD))(*(_DWORD *)this + 196))(
             this,
             *(unsigned __int16 *)(result + 148),
             *(_DWORD *)(result + 56));
  return result;
}


// ===== 77ecd0 gameswf::sprite_instance::stop_drag(void) =====
int __fastcall gameswf::sprite_instance::stop_drag(gameswf::sprite_instance *this)
{
  return gameswf::root::stop_drag(*((_DWORD *)this + 41));
}


// ===== 77ecd8 gameswf::sprite_instance::do_actions(gameswf::array<gameswf::action_buffer *> const&) =====
int __fastcall gameswf::sprite_instance::do_actions(int result, _DWORD *a2)
{
  int v3; // r6
  int v4; // r4
  gameswf::action_buffer *v5; // r7
  gameswf::as_environment *v6; // r0

  v3 = result;
  if ( (int)a2[1] > 0 )
  {
    v4 = 0;
    do
    {
      v5 = *(gameswf::action_buffer **)(*a2 + 4 * v4);
      v6 = (gameswf::as_environment *)(*(int (__fastcall **)(int))(*(_DWORD *)v3 + 88))(v3);
      result = gameswf::action_buffer::execute(v5, v6);
      ++v4;
    }
    while ( v4 < a2[1] );
  }
  return result;
}


// ===== 77ed2c gameswf::sprite_instance::get_highest_depth(void) =====
int __fastcall gameswf::sprite_instance::get_highest_depth(gameswf::sprite_instance *this)
{
  return gameswf::display_list::get_highest_depth((gameswf::sprite_instance *)((char *)this + 168));
}


// ===== 77ed34 gameswf::sprite_instance::get_id_at_depth(int) =====
int __fastcall gameswf::sprite_instance::get_id_at_depth(gameswf::sprite_instance *this, int a2)
{
  int result; // r0

  result = gameswf::display_list::get_display_index((gameswf::sprite_instance *)((char *)this + 168), a2);
  if ( result != -1 )
    return *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 42) + 4 * result) + 56);
  return result;
}


// ===== 77ed58 gameswf::sprite_instance::clear_display_objects(void) =====
int __fastcall gameswf::sprite_instance::clear_display_objects(gameswf::sprite_instance *this)
{
  return gameswf::display_list::clear((int)this + 168);
}


// ===== 77ed60 gameswf::sprite_instance::remove_display_object(int,int) =====
int __fastcall gameswf::sprite_instance::remove_display_object(gameswf::sprite_instance *this, const char *a2, int a3)
{
  return gameswf::display_list::remove_display_object((int)this + 168, a2, a3);
}


// ===== 77ed68 gameswf::sprite_instance::move_display_object(int,gameswf::cxform const*,gameswf::matrix const*,gameswf::effect const*,float,ushort) =====
int __fastcall gameswf::sprite_instance::move_display_object(int a1, const char *a2, int a3, int a4, int a5, int a6)
{
  return gameswf::display_list::move_display_object((gameswf::display_list *)(a1 + 168), a2, a3, a4, a5, a6);
}


// ===== 77ed84 gameswf::sprite_instance::add_display_object(ushort,gameswf::tu_string const&,gameswf::array<gameswf::swf_event *> const&,int,bool,gameswf::cxform const*,gameswf::matrix const*,gameswf::effect const*,float,ushort) =====
gameswf::tu_string *__fastcall gameswf::sprite_instance::add_display_object(
        _DWORD **a1,
        const char *a2,
        const char *a3,
        _DWORD *a4,
        int a5,
        unsigned __int8 a6,
        gameswf::cxform *a7,
        gameswf::matrix *a8,
        gameswf::effect *a9,
        float a10,
        unsigned __int16 a11)
{
  gameswf::tu_string *v15; // r4
  gameswf::display_list *v16; // r8
  int character_at_depth; // r0
  int v18; // r0
  int v19; // r6
  int i; // r5
  int function_name; // r0
  int v22; // r2
  void (__fastcall *v23)(gameswf::tu_string *, _BYTE *); // r3
  const char *v25; // r1
  const char *v26; // r0
  const char *v27; // r1
  _BYTE v28[2]; // [sp+20h] [bp-Ch] BYREF
  __int16 v29; // [sp+22h] [bp-Ah]
  int v30; // [sp+24h] [bp-8h]

  v15 = (gameswf::tu_string *)(*(int (__fastcall **)(_DWORD *))(*a1[40] + 92))(a1[40]);
  if ( v15 )
  {
    v16 = (gameswf::display_list *)(a1 + 42);
    character_at_depth = gameswf::display_list::get_character_at_depth((gameswf::display_list *)(a1 + 42), a5);
    if ( character_at_depth
      && a2 == *(const char **)(character_at_depth + 56)
      && ((v25 = *(const char **)(character_at_depth + 68), a3 == v25)
       || (*a3 == -1 ? (v26 = *((const char **)a3 + 3)) : (v26 = a3 + 1),
           *v25 == -1 ? (v27 = *((const char **)v25 + 3)) : (v27 = v25 + 1),
           !LC_API_STRCMP_0(v26, v27))) )
    {
      ((void (__fastcall *)(_DWORD **, int, gameswf::cxform *, gameswf::matrix *, gameswf::effect *, _DWORD, _DWORD))(*a1)[46])(
        a1,
        a5,
        a7,
        a8,
        a9,
        LODWORD(a10),
        a11);
      return nullptr;
    }
    else
    {
      v18 = (*(int (__fastcall **)(gameswf::tu_string *, _DWORD **, const char *))(*(_DWORD *)v15 + 24))(v15, a1, a2);
      v15 = (gameswf::tu_string *)v18;
      if ( v18 )
        gameswf::ref_counted::add_ref(v18);
      gameswf::character::set_name(v15, (const gameswf::tu_string *)a3);
      v19 = a4[1];
      if ( v19 > 0 )
      {
        for ( i = 0; i != v19; ++i )
        {
          function_name = gameswf::event_id::get_function_name(*(gameswf::event_id **)(*a4 + 4 * i));
          v22 = *(_DWORD *)(*a4 + 4 * i);
          (*(void (__fastcall **)(gameswf::tu_string *, int, int))(*(_DWORD *)v15 + 28))(v15, function_name, v22 + 8);
        }
      }
      gameswf::display_list::add_display_object(v16, v15, a5, a6, a7, a8, a9, a10, a11);
      v23 = *(void (__fastcall **)(gameswf::tu_string *, _BYTE *))(*(_DWORD *)v15 + 44);
      v28[0] = 19;
      v30 = 0;
      v28[1] = 0;
      v29 = 0;
      v23(v15, v28);
      gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v15);
    }
  }
  else
  {
    gameswf::log_error("sprite::add_display_object(): unknown cid = %d\n", a2);
  }
  return v15;
}


// ===== 77ef6c gameswf::sprite_instance::goto_frame(gameswf::tu_string const&) =====
int __fastcall gameswf::sprite_instance::goto_frame(
        gameswf::sprite_instance *this,
        const gameswf::tu_string *a2,
        const char *a3)
{
  double *v4; // r1
  double v7; // [sp+0h] [bp-Ch] BYREF

  if ( *(char *)a2 == -1 )
    v4 = *((double **)a2 + 3);
  else
    v4 = (double *)((char *)a2 + 1);
  if ( gameswf::string_to_number((gameswf *)&v7, v4, a3) )
    return (*(int (__fastcall **)(gameswf::sprite_instance *, int))(*(_DWORD *)this + 332))(this, (int)v7 - 1);
  else
    return (*(int (__fastcall **)(gameswf::sprite_instance *, const gameswf::tu_string *))(*(_DWORD *)this + 156))(
             this,
             a2);
}


// ===== 77efd8 gameswf::sprite_instance::construct(void) =====
void __fastcall gameswf::sprite_instance::construct(gameswf::character_def **this)
{
  if ( !*((_BYTE *)this + 235) )
  {
    gameswf::character_def::instanciate_registered_class(*(this + 40), (gameswf::character *)this);
    gameswf::display_list::construct((gameswf::display_list *)(this + 42));
    *((_BYTE *)this + 235) = 1;
  }
}


// ===== 77f00c gameswf::sprite_instance::get_topmost_mouse_entity(float,float) =====
gameswf::sprite_instance *__fastcall gameswf::sprite_instance::get_topmost_mouse_entity(
        gameswf::sprite_instance *this,
        float a2,
        float a3)
{
  int v4; // r0
  int v5; // r5
  int v6; // r3
  gameswf::scene_node *v7; // r0
  gameswf::matrix *v8; // r0
  int v9; // r8
  int v10; // r6
  int v11; // r7
  int v12; // r9
  int v13; // r11
  int v14; // r5
  int v15; // r0
  char *v16; // r3
  const char *v17; // r0
  float v19; // [sp+0h] [bp-1Ch] BYREF
  float v20; // [sp+4h] [bp-18h] BYREF
  _DWORD v21[2]; // [sp+8h] [bp-14h] BYREF
  int v22; // [sp+10h] [bp-Ch] BYREF
  int v23; // [sp+14h] [bp-8h]

  v4 = *((unsigned __int8 *)this + 155);
  v20 = a2;
  v19 = a3;
  if ( !v4 )
    return nullptr;
  v6 = *((_DWORD *)this + 21);
  if ( v6 )
  {
    v7 = *(gameswf::scene_node **)(v6 + 104);
    if ( v7 )
      gameswf::scene_node::get_local_mouse(v7, (gameswf::character **)this, &v20, &v19);
  }
  v8 = *((gameswf::matrix **)this + 19);
  *(float *)v21 = v20;
  v23 = 0;
  *(float *)&v21[1] = v19;
  v22 = 0;
  gameswf::matrix::transform_by_inverse(v8, (gameswf::point *)&v22, (const gameswf::point *)v21);
  v9 = *((_DWORD *)this + 43);
  if ( v9 - 1 < 0 )
    return nullptr;
  v10 = 0;
  v11 = 4 * (v9 - 1);
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = *(_DWORD *)(*((_DWORD *)this + 42) + v11);
    if ( v14 && *(_BYTE *)(v14 + 155) )
    {
      v15 = (*(int (__fastcall **)(int, int, int))(*(_DWORD *)v14 + 104))(v14, v22, v23);
      v13 = v15;
      if ( v15 )
      {
        if ( (*(int (__fastcall **)(int))(*(_DWORD *)v15 + 348))(v15) )
        {
          v5 = v13;
          goto LABEL_21;
        }
        v12 = 1;
      }
      v16 = *(char **)(v14 + 68);
      v17 = v16 + 1;
      if ( *v16 == -1 )
        v17 = *((const char **)v16 + 3);
      if ( !LC_API_STRCMP_0(v17, "hitzone") )
        break;
    }
    ++v10;
    v11 -= 4;
  }
  while ( v10 != v9 );
  if ( !v12 )
    return (gameswf::sprite_instance *)v13;
  v5 = 0;
LABEL_21:
  if ( (*(int (__fastcall **)(gameswf::sprite_instance *))(*(_DWORD *)this + 348))(this) )
    return this;
  if ( !v5 )
    return (gameswf::sprite_instance *)v13;
  return (gameswf::sprite_instance *)v5;
}


// ===== 77f188 gameswf::sprite_instance::can_handle_mouse_event(void) =====
int __fastcall gameswf::sprite_instance::can_handle_mouse_event(gameswf::sprite_instance *this)
{
  int result; // r0

  result = (*(int (__fastcall **)(gameswf::sprite_instance *))(*(_DWORD *)this + 368))(this);
  if ( result )
  {
    if ( *((_BYTE *)this + 156) )
      return 1;
    else
      return sprite_can_handle_mouse_event_callback(this);
  }
  return result;
}


// ===== 77f1c8 gameswf::sprite_instance::dump(gameswf::tu_string &) =====
void __fastcall gameswf::sprite_instance::dump(gameswf::sprite_instance *this, gameswf::tu_string *a2)
{
  int v2; // r6
  int v5; // r6
  char *v6; // r1
  const char *v7; // r1
  int v8; // r1

  v2 = *(char *)a2;
  if ( v2 == -1 )
    v2 = *((_DWORD *)a2 + 1);
  v5 = v2 - 1;
  gameswf::tu_string::resize(a2, v5 + 2);
  if ( *(char *)a2 == -1 )
    v6 = *((char **)a2 + 3);
  else
    v6 = (char *)a2 + 1;
  v6[v5] = 32;
  *(_WORD *)&v6[v5 + 1] = 32;
  if ( *(char *)a2 == -1 )
    v7 = *((const char **)a2 + 3);
  else
    v7 = (char *)a2 + 1;
  *((_DWORD *)a2 + 4) = *((_DWORD *)a2 + 4) & 0xFF000000 | 0xFFFFFF;
  printf("%s*** movieclip 0x%p ***\n", v7, this);
  gameswf::as_object::dump(this, a2);
  gameswf::display_list::dump((gameswf::sprite_instance *)((char *)this + 168), a2);
  v8 = *(char *)a2;
  if ( v8 == -1 )
    v8 = *((_DWORD *)a2 + 1);
  gameswf::tu_string::resize(a2, v8 - 3);
}


// ===== 77f288 gameswf::display_list::~display_list() =====
void __fastcall gameswf::display_list::~display_list(gameswf::display_list *this)
{
  int v2; // r5
  int i; // r6
  void (__fastcall ***v4)(_DWORD); // r0
  int v5; // r3

  gameswf::hash<gameswf::stringi_pointer,gameswf::character *,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::clear((_DWORD **)this + 4);
  v2 = *((_DWORD *)this + 1);
  if ( v2 <= 0 )
  {
    if ( v2 < 0 )
    {
      v5 = 4 * v2;
      do
      {
        ++v2;
        *(_DWORD *)(*(_DWORD *)this + v5) = 0;
        v5 += 4;
      }
      while ( v2 );
    }
  }
  else
  {
    for ( i = 0; i != v2; ++i )
    {
      v4 = *(void (__fastcall ****)(_DWORD))(*(_DWORD *)this + 4 * i);
      if ( v4 )
        gameswf::ref_counted::drop_ref(v4);
    }
  }
  *((_DWORD *)this + 1) = 0;
  gameswf::array<gameswf::display_object_info>::reserve((int)this, 0);
}


// ===== 77f318 gameswf::array<gameswf::with_stack_entry>::resize(int) [clone] =====
void __fastcall gameswf::array<gameswf::with_stack_entry>::resize(_DWORD *a1)
{
  int v1; // r4
  int i; // r5
  void (__fastcall ***v4)(_DWORD); // r0
  int v5; // r3
  _DWORD *v6; // r0

  v1 = a1[1];
  if ( v1 > 0 )
  {
    for ( i = 0; i != v1; ++i )
    {
      v4 = *(void (__fastcall ****)(_DWORD))(*a1 + 8 * i);
      if ( v4 )
        gameswf::ref_counted::drop_ref(v4);
    }
    goto LABEL_6;
  }
  if ( v1 >= 0 )
  {
LABEL_6:
    a1[1] = 0;
    return;
  }
  v5 = 8 * v1;
  do
  {
    ++v1;
    v6 = (_DWORD *)(*a1 + v5);
    *v6 = 0;
    v6[1] = 0;
    v5 += 8;
  }
  while ( v1 );
  a1[1] = 0;
}


// ===== 77f390 gameswf::sprite_instance::execute_frame_tags_reverse(int) =====
void __fastcall gameswf::sprite_instance::execute_frame_tags_reverse(gameswf::sprite_instance *this, int a2)
{
  int v4; // r0
  int v5; // r10
  _DWORD *v6; // r7
  int v7; // r5
  int v8; // r4
  int v9; // r3

  if ( this )
    gameswf::ref_counted::add_ref((int)this);
  v4 = (*(int (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 40) + 80))(*((_DWORD *)this + 40), a2);
  v5 = *(_DWORD *)(v4 + 4);
  v6 = (_DWORD *)v4;
  if ( v5 - 1 >= 0 )
  {
    v7 = 4 * (v5 - 1);
    v8 = 0;
    do
    {
      ++v8;
      v9 = *(_DWORD *)(*v6 + v7);
      v7 -= 4;
      (*(void (__fastcall **)(int, gameswf::sprite_instance *, int))(*(_DWORD *)v9 + 16))(v9, this, a2);
    }
    while ( v8 != v5 );
  }
  if ( this )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))this);
}


// ===== 77f41c gameswf::sprite_instance::call_method_args(char const*,char const*,std::__va_list) =====
int __fastcall gameswf::sprite_instance::call_method_args(
        gameswf::sprite_instance *this,
        gameswf::as_object *a2,
        const char *a3,
        __va_list a4)
{
  gameswf *v8; // r0
  int v9; // r5
  gameswf *v11; // r0
  __va_list v12; // [sp+4h] [bp-8h]

  if ( this )
  {
    gameswf::ref_counted::add_ref((int)this);
    v8 = (gameswf *)(*(int (__fastcall **)(gameswf::sprite_instance *))(*(_DWORD *)this + 88))(this);
    v9 = gameswf::call_method_parsed(v8, this, a2, a3, (const char *)a4.__ap, v12);
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))this);
  }
  else
  {
    v11 = (gameswf *)MEMORY[0x464C45D7]();
    return gameswf::call_method_parsed(v11, nullptr, a2, a3, (const char *)a4.__ap, v12);
  }
  return v9;
}


// ===== 77f4a0 gameswf::sprite_instance::on_event(gameswf::event_id const&) =====
int __fastcall gameswf::sprite_instance::on_event(gameswf::sprite_instance *this, const gameswf::event_id *a2)
{
  _DWORD *function_name; // r8
  int v5; // r10
  int v6; // r7
  int v7; // r5
  int v8; // r9
  _DWORD *v9; // r0
  int v10; // r0
  int v11; // r10
  int v12; // r12
  int v13; // lr
  _DWORD *v14; // r0
  _BYTE v16[12]; // [sp+14h] [bp-24h] BYREF
  _BYTE v17[4]; // [sp+20h] [bp-18h] BYREF
  gameswf::sprite_instance *v18; // [sp+24h] [bp-14h]
  _BYTE v19[12]; // [sp+2Ch] [bp-Ch] BYREF

  if ( this )
    gameswf::ref_counted::add_ref((int)this);
  function_name = (_DWORD *)gameswf::event_id::get_function_name(a2);
  v5 = 0;
  v19[0] = 0;
  v19[1] = 0;
  if ( gameswf::as_object::get_member((int *)this, function_name, (gameswf::as_value *)v19) )
  {
    v7 = *((_DWORD *)a2 + 1);
    if ( v7 )
    {
      v7 = *(_DWORD *)(v7 + 4);
      if ( v7 - 1 >= 0 )
      {
        v8 = 12 * (v7 - 1);
        do
        {
          v9 = (_DWORD *)(*(int (__fastcall **)(gameswf::sprite_instance *))(*(_DWORD *)this + 88))(this);
          ++v5;
          gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(v9);
          v8 -= 12;
        }
        while ( v5 != v7 );
      }
    }
    v10 = (*(int (__fastcall **)(gameswf::sprite_instance *))(*(_DWORD *)this + 88))(this);
    v17[0] = 0;
    v11 = v10;
    v17[1] = 5;
    v18 = this;
    if ( this )
      gameswf::ref_counted::add_ref((int)this);
    v12 = *(_DWORD *)((*(int (__fastcall **)(gameswf::sprite_instance *))(*(_DWORD *)this + 88))(this) + 4);
    if ( *(char *)function_name == -1 )
      v13 = function_name[3];
    else
      v13 = (int)function_name + 1;
    gameswf::call_method((int)v16, (gameswf::as_value *)v19, v11, (int)v17, v7, v12 - 1, v13);
    gameswf::as_value::drop_refs((gameswf::as_value *)v16);
    gameswf::as_value::drop_refs((gameswf::as_value *)v17);
    v14 = (_DWORD *)(*(int (__fastcall **)(gameswf::sprite_instance *))(*(_DWORD *)this + 88))(this);
    v6 = 1;
    gameswf::array<gameswf::as_value>::resize(v14, v14[1] - v7);
  }
  else
  {
    v6 = 0;
  }
  gameswf::as_value::drop_refs((gameswf::as_value *)v19);
  if ( this )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))this);
  return v6;
}


// ===== 77f614 gameswf::sprite_instance::has_keypress_event(void) =====
int __fastcall gameswf::sprite_instance::has_keypress_event(gameswf::sprite_instance *this)
{
  int v1; // r3
  int (__fastcall *v3)(gameswf::sprite_instance *, _BYTE *, _BYTE *); // r7
  int v4; // r7
  _BYTE v6[12]; // [sp+4h] [bp-28h] BYREF
  _BYTE v7[8]; // [sp+10h] [bp-1Ch] BYREF
  void *p; // [sp+1Ch] [bp-10h]

  v1 = *(_DWORD *)this;
  v6[1] = 0;
  v6[0] = 0;
  v3 = *(int (__fastcall **)(gameswf::sprite_instance *, _BYTE *, _BYTE *))(v1 + 32);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v7, "onKeyPress");
  v4 = v3(this, v7, v6);
  if ( v7[0] == -1 )
    gameswf::free_internal(p);
  gameswf::as_value::drop_refs((gameswf::as_value *)v6);
  return v4;
}


// ===== 77f6cc gameswf::sprite_instance::set_variable(char const*,char const*) =====
void __fastcall gameswf::sprite_instance::set_variable(gameswf::sprite_instance *this, const char *a2, const char *a3)
{
  int v5; // r0
  _DWORD v6[3]; // [sp+4h] [bp-34h] BYREF
  char v7; // [sp+10h] [bp-28h]
  _BYTE v8[12]; // [sp+14h] [bp-24h] BYREF
  _BYTE v9[8]; // [sp+20h] [bp-18h] BYREF
  void *p; // [sp+2Ch] [bp-Ch]

  if ( a2 )
  {
    if ( a3 )
    {
      memset(v6, 0, sizeof(v6));
      v7 = 0;
      gameswf::tu_string::tu_string((gameswf::tu_string *)v9, a2);
      v8[1] = 0;
      v8[0] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v8, a3);
      v5 = (*(int (__fastcall **)(gameswf::sprite_instance *))(*(_DWORD *)this + 88))(this);
      gameswf::as_environment::set_variable(v5, v9, v8, v6);
      gameswf::as_value::drop_refs((gameswf::as_value *)v8);
      if ( v9[0] == -1 )
        gameswf::free_internal(p);
      gameswf::array<gameswf::with_stack_entry>::resize(v6);
      gameswf::array<gameswf::with_stack_entry>::reserve((int)v6, 0);
    }
    else
    {
      gameswf::log_error("error: NULL passed to set_variable('%s', NULL)\n", a2);
    }
  }
  else
  {
    gameswf::log_error("error: NULL path_to_var passed to set_variable()\n", nullptr);
  }
}


// ===== 77f7e8 gameswf::sprite_instance::replace_display_object(gameswf::character *,char const*,int,gameswf::cxform const*,gameswf::matrix const*,gameswf::effect const*,float,ushort) =====
void __fastcall gameswf::sprite_instance::replace_display_object(
        gameswf::sprite_instance *this,
        gameswf::character *a2,
        const char *a3,
        int a4,
        const gameswf::cxform *a5,
        const gameswf::matrix *a6,
        const gameswf::effect *a7,
        float a8,
        unsigned __int16 a9)
{
  _BYTE v12[8]; // [sp+18h] [bp-1Ch] BYREF
  void *p; // [sp+24h] [bp-10h]

  if ( a3 )
  {
    if ( *a3 )
    {
      gameswf::tu_string::tu_string((gameswf::tu_string *)v12, a3);
      gameswf::character::set_name(a2, (const gameswf::tu_string *)v12);
      if ( v12[0] == -1 )
        gameswf::free_internal(p);
    }
  }
  gameswf::display_list::replace_display_object(
    (gameswf::sprite_instance *)((char *)this + 168),
    a2,
    a4,
    a5,
    a6,
    a7,
    a8,
    a9);
}


// ===== 77f8d0 gameswf::sprite_instance::get_variable(char const*) =====
int __fastcall gameswf::sprite_instance::get_variable(gameswf::sprite_instance *this, const char *a2)
{
  gameswf::as_environment *v3; // r0
  int v4; // r6
  _DWORD v6[3]; // [sp+Ch] [bp-34h] BYREF
  char v7; // [sp+18h] [bp-28h]
  _BYTE v8[12]; // [sp+1Ch] [bp-24h] BYREF
  _BYTE v9[8]; // [sp+28h] [bp-18h] BYREF
  void *p; // [sp+34h] [bp-Ch]

  v7 = 0;
  memset(v6, 0, sizeof(v6));
  gameswf::tu_string::tu_string((gameswf::tu_string *)v9, a2);
  if ( (`guard variable for'gameswf::sprite_instance::get_variable(char const*)::val & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'gameswf::sprite_instance::get_variable(char const*)::val) )
  {
    byte_9FC9C9 = 0;
    gameswf::sprite_instance::get_variable(char const*)const::val = 0;
    _cxa_guard_release(&`guard variable for'gameswf::sprite_instance::get_variable(char const*)::val);
    _aeabi_atexit(
      (int)&gameswf::sprite_instance::get_variable(char const*)const::val,
      (int)gameswf::as_value::~as_value,
      (int)&_dso_handle);
  }
  v3 = (gameswf::as_environment *)(*(int (__fastcall **)(gameswf::sprite_instance *))(*(_DWORD *)this + 88))(this);
  gameswf::as_environment::get_variable((int)v8, v3, (int)v9, (int)v6, 0);
  gameswf::as_value::operator=((gameswf::as_value *)&gameswf::sprite_instance::get_variable(char const*)const::val);
  gameswf::as_value::drop_refs((gameswf::as_value *)v8);
  v4 = gameswf::as_value::to_string((gameswf::as_value *)&gameswf::sprite_instance::get_variable(char const*)const::val);
  if ( v9[0] == -1 )
    gameswf::free_internal(p);
  gameswf::array<gameswf::with_stack_entry>::resize(v6);
  gameswf::array<gameswf::with_stack_entry>::reserve((int)v6, 0);
  return v4;
}


// ===== 77fa34 gameswf::sprite_instance::attach_display_callback(char const*,void (*)(gameswf::render_state &,void *),void *) =====
void __fastcall gameswf::sprite_instance::attach_display_callback(int a1, const char *a2, int a3, int a4)
{
  gameswf::as_environment *v6; // r9
  int v7; // r5
  _DWORD v9[3]; // [sp+14h] [bp-38h] BYREF
  char v10; // [sp+20h] [bp-2Ch]
  _BYTE v11[4]; // [sp+24h] [bp-28h] BYREF
  int v12; // [sp+28h] [bp-24h]
  _BYTE v13[8]; // [sp+30h] [bp-1Ch] BYREF
  void *p; // [sp+3Ch] [bp-10h]

  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v6 = (gameswf::as_environment *)(*(int (__fastcall **)(int))(*(_DWORD *)a1 + 88))(a1);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v13, a2);
  gameswf::as_environment::get_variable((int)v11, v6, (int)v13, (int)v9, 0);
  if ( v13[0] == -1 )
    gameswf::free_internal(p);
  if ( v11[1] == 5 )
  {
    v7 = v12;
    if ( v12 )
    {
      if ( (*(int (__fastcall **)(int, int))(*(_DWORD *)v12 + 8))(v12, 1) )
        (*(void (__fastcall **)(int, int, int))(*(_DWORD *)v7 + 340))(v7, a3, a4);
    }
  }
  gameswf::as_value::drop_refs((gameswf::as_value *)v11);
  gameswf::array<gameswf::with_stack_entry>::resize(v9);
  gameswf::array<gameswf::with_stack_entry>::reserve((int)v9, 0);
}


// ===== 77fb64 gameswf::sprite_instance::replace_display_object(ushort,char const*,int,gameswf::cxform const*,gameswf::matrix const*,gameswf::effect const*,float,ushort) =====
void __fastcall gameswf::sprite_instance::replace_display_object(
        gameswf::sprite_instance *this,
        const char *a2,
        const char *a3,
        int a4,
        const gameswf::cxform *a5,
        const gameswf::matrix *a6,
        const gameswf::effect *a7,
        float a8,
        unsigned __int16 a9)
{
  int v13; // r0
  int v14; // r0
  gameswf::tu_string *v15; // r6
  _BYTE v16[8]; // [sp+20h] [bp-1Ch] BYREF
  void *p; // [sp+2Ch] [bp-10h]

  v13 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 40) + 92))(*((_DWORD *)this + 40));
  if ( v13 )
  {
    v14 = (*(int (__fastcall **)(int, gameswf::sprite_instance *, const char *))(*(_DWORD *)v13 + 24))(v13, this, a2);
    v15 = (gameswf::tu_string *)v14;
    if ( v14 )
      gameswf::ref_counted::add_ref(v14);
    if ( a3 )
    {
      if ( *a3 )
      {
        gameswf::tu_string::tu_string((gameswf::tu_string *)v16, a3);
        gameswf::character::set_name(v15, (const gameswf::tu_string *)v16);
        if ( v16[0] == -1 )
          gameswf::free_internal(p);
      }
    }
    gameswf::display_list::replace_display_object(
      (gameswf::sprite_instance *)((char *)this + 168),
      v15,
      a4,
      a5,
      a6,
      a7,
      a8,
      a9);
    if ( v15 )
      gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v15);
  }
  else
  {
    gameswf::log_error("sprite::replace_display_object(): unknown cid = %d\n", a2);
  }
}


// ===== 77fcbc gameswf::sprite_instance::set_variable(char const*,wchar_t const*) =====
void __fastcall gameswf::sprite_instance::set_variable(
        gameswf::sprite_instance *this,
        const char *a2,
        const wchar_t *a3)
{
  int v5; // r0
  _DWORD v6[3]; // [sp+4h] [bp-38h] BYREF
  char v7; // [sp+10h] [bp-2Ch]
  _BYTE v8[12]; // [sp+14h] [bp-28h] BYREF
  _BYTE v9[8]; // [sp+20h] [bp-1Ch] BYREF
  void *p; // [sp+2Ch] [bp-10h]

  if ( a2 )
  {
    if ( a3 )
    {
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      gameswf::tu_string::tu_string((gameswf::tu_string *)v9, a2);
      gameswf::as_value::as_value((gameswf::as_value *)v8, a3);
      v5 = (*(int (__fastcall **)(gameswf::sprite_instance *))(*(_DWORD *)this + 88))(this);
      gameswf::as_environment::set_variable(v5, v9, v8, v6);
      gameswf::as_value::drop_refs((gameswf::as_value *)v8);
      if ( v9[0] == -1 )
        gameswf::free_internal(p);
      gameswf::array<gameswf::with_stack_entry>::resize(v6);
      gameswf::array<gameswf::with_stack_entry>::reserve((int)v6, 0);
    }
    else
    {
      gameswf::log_error("error: NULL passed to set_variable('%s', NULL)\n", a2);
    }
  }
  else
  {
    gameswf::log_error("error: NULL path_to_var passed to set_variable()\n", nullptr);
  }
}


// ===== 77fdd0 gameswf::sprite_instance::set_drag_state(gameswf::character::drag_state const&) =====
void __fastcall gameswf::sprite_instance::set_drag_state(int a1, gameswf::character ***a2)
{
  gameswf::character ***v2; // r5
  gameswf::character ***v4; // r12
  gameswf::character **v5; // r0
  gameswf::character **v6; // r1
  gameswf::character **v7; // r2
  gameswf::character **v8; // r3
  gameswf::character **v9; // r1
  gameswf::character **v10; // r2
  gameswf::character **v11; // r3

  v2 = a2;
  v4 = (gameswf::character ***)(*(_DWORD *)(a1 + 164) + 88);
  v5 = *a2;
  v6 = a2[1];
  v7 = v2[2];
  v8 = v2[3];
  v2 += 4;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v4 += 4;
  v9 = v2[1];
  v10 = v2[2];
  v11 = v2[3];
  *v4 = *v2;
  v4[1] = v9;
  v4[2] = v10;
  v4[3] = v11;
  if ( *a2 )
    gameswf::character::notify_need_advance(*a2);
}


// ===== 77fe10 gameswf::sprite_instance::set_play_state(gameswf::character::play_state) =====
void __fastcall gameswf::sprite_instance::set_play_state(int a1, char a2)
{
  int sound_handler; // r0

  sound_handler = gameswf::get_sound_handler((gameswf *)a1);
  if ( sound_handler && *(int *)(*(_DWORD *)(a1 + 160) + 32) >= 0 )
    (*(void (__fastcall **)(int))(*(_DWORD *)sound_handler + 56))(sound_handler);
  *(_BYTE *)(a1 + 230) = a2;
  gameswf::character::notify_need_advance((gameswf::character **)a1);
}


// ===== 77fe60 gameswf::sprite_instance::notify_set_member(gameswf::tu_stringi const&,gameswf::as_value const&) =====
void __fastcall gameswf::sprite_instance::notify_set_member(int a1, char *a2)
{
  int v2; // r6
  const char *v5; // r0
  const char *v6; // r0
  int v7; // r6
  int v8; // r3
  const char *v9; // r1
  const char *v10; // r0
  _BYTE v11[12]; // [sp+4h] [bp-Ch] BYREF

  v2 = *a2;
  if ( v2 == -1 )
    v5 = *((const char **)a2 + 3);
  else
    v5 = a2 + 1;
  if ( LC_API_STRCMP_0(v5, "onEnterFrame") )
  {
    if ( v2 == -1 )
      v6 = *((const char **)a2 + 3);
    else
      v6 = a2 + 1;
    v7 = LC_API_STRNCMP_0(v6, "on", 2u);
    if ( !v7 )
    {
      while ( 1 )
      {
        v8 = *a2;
        v11[0] = 0;
        v11[1] = 0;
        v9 = *(char **)((char *)gameswf::FN_NAMES + v7);
        v10 = v8 == -1 ? *((const char **)a2 + 3) : a2 + 1;
        v7 += 4;
        if ( !gameswf::tu_string::stricmp(v10, v9) )
          break;
        gameswf::as_value::drop_refs((gameswf::as_value *)v11);
        if ( v7 == 32 )
          return;
      }
      *(_BYTE *)(a1 + 156) = 1;
      gameswf::as_value::drop_refs((gameswf::as_value *)v11);
    }
  }
  else
  {
    *(_BYTE *)(a1 + 233) = 1;
    gameswf::character::notify_need_advance((gameswf::character **)a1);
  }
}


// ===== 77ff40 gameswf::sprite_instance::get_transform(void) =====
int __fastcall gameswf::sprite_instance::get_transform(gameswf::sprite_instance *this)
{
  int result; // r0
  gameswf::player *v3; // r7
  int v4; // r3
  gameswf::player *v5; // r5
  gameswf::as_transform *v6; // r5

  result = *((_DWORD *)this + 61);
  if ( !result )
  {
    v3 = *((gameswf::player **)this + 12);
    if ( v3 )
    {
      v4 = *((_DWORD *)this + 11);
      v5 = (gameswf::player *)*(unsigned __int8 *)(v4 + 4);
      if ( !*(_BYTE *)(v4 + 4) )
      {
        gameswf::smart_ptr_proxy::operator=((_DWORD **)this + 11, (_DWORD *)*(unsigned __int8 *)(v4 + 4));
        v3 = v5;
        *((_DWORD *)this + 12) = v5;
      }
    }
    v6 = (gameswf::as_transform *)operator new(0x40u, 0);
    gameswf::as_transform::as_transform(v6, v3, this);
    gameswf::smart_ptr<gameswf::as_transform>::set_ref((gameswf::ref_counted **)this + 61, v6);
    return *((_DWORD *)this + 61);
  }
  return result;
}


// ===== 77ffbc gameswf::sprite_instance::get_member(gameswf::tu_stringi const&,gameswf::as_value *) =====
int __fastcall gameswf::sprite_instance::get_member(bool *a1, char *a2, gameswf::as_value *a3)
{
  gameswf::as_object *character_by_name_i; // r1
  int result; // r0
  gameswf::as_transform *transform; // r0
  int v9; // r0
  int v10; // r0

  character_by_name_i = (gameswf::as_object *)gameswf::display_list::get_character_by_name_i((int)(a1 + 168), a2);
  if ( character_by_name_i )
  {
LABEL_2:
    gameswf::as_value::set_as_object(a3, character_by_name_i);
    return 1;
  }
  else if ( gameswf::character::get_member(a1, (gameswf::tu_string *)a2, a3) || gameswf::get_builtin(1, a2, a3) )
  {
    return 1;
  }
  else
  {
    switch ( gameswf::get_standard_member((gameswf::tu_string *)a2) )
    {
      case 4:
        v10 = (*(int (__fastcall **)(bool *))(*(_DWORD *)a1 + 312))(a1);
        if ( v10 < 0 )
          goto LABEL_12;
        v9 = v10 + 1;
LABEL_10:
        gameswf::as_value::set_double(a3, (double)v9);
        result = 1;
        break;
      case 5:
        v9 = (*(int (__fastcall **)(bool *))(*(_DWORD *)a1 + 316))(a1);
        if ( v9 < 0 )
          goto LABEL_12;
        goto LABEL_10;
      case 12:
        v9 = (*(int (__fastcall **)(bool *))(*(_DWORD *)a1 + 320))(a1);
        if ( v9 >= 0 )
          goto LABEL_10;
LABEL_12:
        gameswf::as_value::drop_refs(a3);
        *((_BYTE *)a3 + 1) = 0;
        result = 1;
        break;
      case 40:
        gameswf::as_value::set_bool(a3, a1[234]);
        result = 1;
        break;
      case 41:
        transform = (gameswf::as_transform *)gameswf::sprite_instance::get_transform((gameswf::sprite_instance *)a1);
        gameswf::as_transform::init(transform);
        character_by_name_i = (gameswf::as_object *)gameswf::sprite_instance::get_transform((gameswf::sprite_instance *)a1);
        goto LABEL_2;
      default:
        result = 0;
        break;
    }
  }
  return result;
}


// ===== 780190 gameswf::weak_ptr<gameswf::player>::operator->(void) =====
int __fastcall gameswf::weak_ptr<gameswf::player>::operator->(_DWORD *a1)
{
  int result; // r0
  _DWORD *v3; // r3

  result = a1[1];
  if ( result )
  {
    v3 = (_DWORD *)*a1;
    if ( !*(_BYTE *)(*a1 + 4) )
    {
      if ( (*v3)-- == 1 )
        gameswf::free_internal(v3);
      a1[1] = 0;
      *a1 = 0;
      return 0;
    }
  }
  return result;
}


// ===== 7801e4 gameswf::sprite_instance::display(void) =====
void __fastcall gameswf::sprite_instance::display(gameswf::sprite_instance *this)
{
  int v2; // r3
  int v3; // r6
  int v4; // r3
  int v5; // r0
  int v6; // r3
  int v7; // r7
  int v8; // r9
  int v9; // r0
  int v10; // r6
  int v11; // r7

  if ( *((_BYTE *)this + 155) )
  {
    v2 = *((_DWORD *)this + 21);
    if ( !v2 || !*(_DWORD *)(v2 + 104) )
    {
      if ( !*((_BYTE *)this + 236) )
        (*(void (__fastcall **)(gameswf::sprite_instance *, int))(*(_DWORD *)this + 92))(this, 1065353216);
      if ( *((_DWORD *)this + 43) )
      {
        v3 = **((_DWORD **)this + 20);
        if ( !v3 || *(_DWORD *)(gameswf::weak_ptr<gameswf::player>::operator->((_DWORD *)this + 11) + 160) )
        {
          gameswf::display_list::display((int)this + 168);
        }
        else
        {
          v5 = gameswf::weak_ptr<gameswf::player>::operator->((_DWORD *)this + 11);
          v6 = *(_DWORD *)(v5 + 160);
          v7 = v5;
          v8 = v6 + 1;
          if ( v6 + 1 > *(_DWORD *)(v5 + 164) )
          {
            gameswf::array<gameswf::blend_mode::id>::reserve(v5 + 156, v8 + (v8 >> 1));
            v6 = *(_DWORD *)(v7 + 160);
          }
          *(_DWORD *)(*(_DWORD *)(v7 + 156) + 4 * v6) = v3;
          *(_DWORD *)(v7 + 160) = v8;
          if ( gameswf::s_render_handler )
            (*(void (__fastcall **)(int, int))(*(_DWORD *)gameswf::s_render_handler + 48))(
              gameswf::s_render_handler,
              v3);
          gameswf::display_list::display((int)this + 168);
          v9 = gameswf::weak_ptr<gameswf::player>::operator->((_DWORD *)this + 11);
          v10 = v9;
          v11 = *(_DWORD *)(v9 + 160) - 1;
          if ( *(_DWORD *)(v9 + 160) != 1 && v11 > *(_DWORD *)(v9 + 164) )
            gameswf::array<gameswf::blend_mode::id>::reserve(v9 + 156, v11 + (v11 >> 1));
          *(_DWORD *)(v10 + 160) = v11;
          if ( gameswf::s_render_handler )
            (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)gameswf::s_render_handler + 48))(
              gameswf::s_render_handler,
              0);
        }
      }
      v4 = *((_DWORD *)this + 21);
      if ( v4 )
      {
        if ( *(_DWORD *)(v4 + 96) )
          gameswf::character::do_display_callback(this);
      }
    }
  }
}


// ===== 780374 gameswf::as_object::get_player(void) =====
int __fastcall gameswf::as_object::get_player(gameswf::as_object *this)
{
  int result; // r0
  _BYTE *v3; // r3

  result = *((_DWORD *)this + 12);
  if ( result )
  {
    v3 = *((_BYTE **)this + 11);
    if ( !v3[4] )
    {
      if ( (*(_DWORD *)v3)-- == 1 )
        gameswf::free_internal(v3);
      *((_DWORD *)this + 12) = 0;
      *((_DWORD *)this + 11) = 0;
      return 0;
    }
  }
  return result;
}


// ===== 7803c8 gameswf::sprite_instance::get_canvas(void) =====
int __fastcall gameswf::sprite_instance::get_canvas(gameswf::sprite_instance *this)
{
  int v1; // r4
  int v3; // r0
  int v4; // r4
  gameswf::player *player; // r8
  gameswf::canvas *v7; // r7
  gameswf::ref_counted *v8; // r0
  gameswf::character *v9; // r8
  int highest_depth; // r0

  v1 = *((_DWORD *)this + 60);
  if ( !v1 )
  {
    player = (gameswf::player *)gameswf::as_object::get_player(this);
    v7 = (gameswf::canvas *)operator new(0x9Cu, 0);
    gameswf::canvas::canvas(v7, player);
    v8 = (gameswf::ref_counted *)(*(int (__fastcall **)(gameswf::canvas *, gameswf::sprite_instance *, int))(*(_DWORD *)v7 + 24))(
                                   v7,
                                   this,
                                   -1);
    gameswf::smart_ptr<gameswf::character>::set_ref((gameswf::ref_counted **)this + 60, v8);
    v9 = *((gameswf::character **)this + 60);
    highest_depth = gameswf::sprite_instance::get_highest_depth(this);
    gameswf::display_list::add_display_object(
      (gameswf::sprite_instance *)((char *)this + 168),
      v9,
      highest_depth,
      1,
      (const gameswf::cxform *)&gameswf::cxform::identity,
      (const gameswf::matrix *)&gameswf::matrix::identity,
      (const gameswf::effect *)&gameswf::effect::identity,
      0.0,
      0);
    v1 = *((_DWORD *)this + 60);
  }
  v3 = (*(int (__fastcall **)(int))(*(_DWORD *)v1 + 304))(v1);
  v4 = v3;
  if ( v3 && (*(int (__fastcall **)(int, int))(*(_DWORD *)v3 + 8))(v3, 20) )
    return v4;
  else
    return 0;
}


// ===== 7804d4 gameswf::character::get_parent(void) =====
int __fastcall gameswf::character::get_parent(gameswf::character *this)
{
  int result; // r0
  _BYTE *v3; // r3

  result = *((_DWORD *)this + 16);
  if ( result )
  {
    v3 = *((_BYTE **)this + 15);
    if ( !v3[4] )
    {
      if ( (*(_DWORD *)v3)-- == 1 )
        gameswf::free_internal(v3);
      *((_DWORD *)this + 16) = 0;
      *((_DWORD *)this + 15) = 0;
      return 0;
    }
  }
  return result;
}


// ===== 780528 gameswf::sprite_instance::find_exported_resource(gameswf::tu_string const&) =====
int __fastcall gameswf::sprite_instance::find_exported_resource(
        gameswf::sprite_instance *this,
        const gameswf::tu_string *a2)
{
  int v4; // r0
  int v5; // r0
  int result; // r0
  int parent; // r0

  v4 = (*(int (__fastcall **)(gameswf::sprite_instance *))(*(_DWORD *)this + 128))(this);
  v5 = gameswf::cast_to<gameswf::movie_def_impl>(v4);
  if ( !v5 || (result = (*(int (__fastcall **)(int, const gameswf::tu_string *))(*(_DWORD *)v5 + 88))(v5, a2)) == 0 )
  {
    parent = gameswf::character::get_parent(this);
    if ( parent )
      return (*(int (__fastcall **)(int, const gameswf::tu_string *))(*(_DWORD *)parent + 132))(parent, a2);
    else
      return 0;
  }
  return result;
}


// ===== 780594 gameswf::sprite_instance::this_alive(void) =====
void __fastcall gameswf::sprite_instance::this_alive(gameswf::sprite_instance *this)
{
  int v1; // r3
  _BYTE *v3; // r0
  int v4; // r7
  int i; // r4
  _DWORD *v6; // r5
  int v7; // r2
  int v8; // r3
  void *v9; // r0
  bool v10; // zf

  v1 = *((_DWORD *)this + 12);
  if ( v1 )
  {
    v3 = *((_BYTE **)this + 11);
    if ( !v3[4] )
    {
      v10 = (*(_DWORD *)v3)-- == 1;
      if ( v10 )
        gameswf::free_internal(v3);
      v1 = 0;
      *((_DWORD *)this + 11) = 0;
      *((_DWORD *)this + 12) = 0;
    }
  }
  if ( *((_DWORD *)this + 13) != *(_DWORD *)(v1 + 48) )
  {
    gameswf::as_object::this_alive(this);
    v4 = *((_DWORD *)this + 43);
    if ( v4 > 0 )
    {
      for ( i = 0; i != v4; ++i )
      {
        v6 = *(_DWORD **)(*((_DWORD *)this + 42) + 4 * i);
        if ( v6 )
        {
          v7 = *((_DWORD *)this + 12);
          if ( v7 )
          {
            v8 = *((_DWORD *)this + 11);
            if ( !*(_BYTE *)(v8 + 4) )
            {
              v9 = *((void **)this + 11);
              v10 = (*(_DWORD *)v8)-- == 1;
              if ( v10 )
                gameswf::free_internal(v9);
              *((_DWORD *)this + 11) = 0;
              *((_DWORD *)this + 12) = 0;
              v7 = 0;
            }
          }
          if ( v6[13] != *(_DWORD *)(v7 + 48) )
            (*(void (__fastcall **)(_DWORD *))(*v6 + 68))(v6);
        }
      }
    }
  }
}


// ===== 78069c gameswf::sprite_instance::do_init_actions(void) =====
void __fastcall gameswf::sprite_instance::do_init_actions(gameswf::sprite_instance *this)
{
  gameswf::as_environment *v2; // r0
  _DWORD *v3; // r0
  int v4; // r3
  int v5; // r2

  if ( *((_DWORD *)this + 55) )
  {
    gameswf::ref_counted::add_ref((int)this);
    v2 = (gameswf::as_environment *)(*(int (__fastcall **)(gameswf::sprite_instance *))(*(_DWORD *)this + 88))(this);
    gameswf::execute_actions(v2, *((_DWORD **)this + 55));
    v3 = *((_DWORD **)this + 55);
    v4 = v3[1];
    if ( v4 < 0 )
    {
      v5 = 4 * v4;
      do
      {
        ++v4;
        *(_DWORD *)(*v3 + v5) = 0;
        v5 += 4;
      }
      while ( v4 );
    }
    v3[1] = 0;
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))this);
  }
}


// ===== 780718 gameswf::sprite_instance::sprite_instance(gameswf::player *,gameswf::movie_definition_sub *,gameswf::root *,gameswf::character *,int) =====
gameswf::sprite_instance *__fastcall gameswf::sprite_instance::sprite_instance(
        gameswf::sprite_instance *this,
        gameswf::player *a2,
        gameswf::movie_definition_sub *a3,
        gameswf::root *a4,
        gameswf::character *a5,
        int a6)
{
  int v9; // r3
  int v10; // r1
  int v11; // r3
  _BYTE *v12; // r0
  _BYTE *v13; // r0
  char *v15; // r0
  int v16; // r3
  char *v17; // r7
  _DWORD *v18; // r8
  int v19; // r0
  int v20; // r6
  int v21; // r5
  bool v22; // zf

  gameswf::character::character(this, a2, a5, a6, 2);
  *((_DWORD *)this + 40) = a3;
  *(_DWORD *)this = off_9906A0;
  if ( a3 )
    gameswf::ref_counted::add_ref((int)a3);
  v9 = *((_DWORD *)this + 40);
  *((_DWORD *)this + 41) = a4;
  *((_BYTE *)this + 234) = 1;
  *((_DWORD *)this + 42) = 0;
  *((_DWORD *)this + 43) = 0;
  *((_DWORD *)this + 44) = 0;
  *((_BYTE *)this + 180) = 0;
  *((_DWORD *)this + 46) = 0;
  *((_DWORD *)this + 47) = 0;
  *((_DWORD *)this + 48) = 0;
  *((_DWORD *)this + 49) = 0;
  *((_BYTE *)this + 200) = 0;
  *((_DWORD *)this + 51) = 0;
  *((_DWORD *)this + 52) = 0;
  *((_DWORD *)this + 53) = 0;
  *((_BYTE *)this + 216) = 0;
  *((_DWORD *)this + 55) = 0;
  *((_DWORD *)this + 56) = 0;
  *((_WORD *)this + 114) = 0;
  *((_BYTE *)this + 230) = 0;
  *((_BYTE *)this + 231) = 0;
  *((_BYTE *)this + 232) = 1;
  *((_BYTE *)this + 233) = 0;
  *((_BYTE *)this + 235) = 0;
  *((_BYTE *)this + 236) = 0;
  *((_DWORD *)this + 60) = 0;
  *((_DWORD *)this + 61) = 0;
  *((_DWORD *)this + 62) = 0;
  *((_DWORD *)this + 63) = 0;
  if ( (*(int (__fastcall **)(int))(*(_DWORD *)v9 + 136))(v9) )
  {
    v15 = (char *)operator new(0x20u, 0);
    v15[28] = 0;
    *(_DWORD *)v15 = 0;
    *((_DWORD *)v15 + 1) = 0;
    *((_DWORD *)v15 + 2) = 0;
    v15[12] = 0;
    *((_DWORD *)v15 + 4) = 0;
    *((_DWORD *)v15 + 5) = 0;
    *((_DWORD *)v15 + 6) = 0;
    v16 = *((_DWORD *)this + 40);
    *((_DWORD *)this + 55) = v15;
    v17 = v15;
    v18 = v15 + 16;
    v19 = (*(int (__fastcall **)(int))(*(_DWORD *)v16 + 56))(v16);
    v20 = v19;
    v21 = *((_DWORD *)v17 + 5);
    if ( v19 && v19 > *((_DWORD *)v17 + 6) )
      gameswf::array<bool>::reserve((int)v18, v19 + (v19 >> 1));
    if ( v20 > v21 )
    {
      do
        *(_BYTE *)(*v18 + v21++) = 0;
      while ( v21 != v20 );
    }
    *((_DWORD *)v17 + 5) = v20;
    LC_API_MEMSET_0(*(void **)(*((_DWORD *)this + 55) + 16), 0, *(_DWORD *)(*((_DWORD *)this + 55) + 20));
  }
  v10 = *((_DWORD *)this + 12);
  v11 = v10;
  if ( v10 )
  {
    v12 = *((_BYTE **)this + 11);
    if ( !v12[4] )
    {
      v22 = (*(_DWORD *)v12)-- == 1;
      if ( v22 )
        gameswf::free_internal(v12);
      v11 = 0;
      *((_DWORD *)this + 11) = 0;
      *((_DWORD *)this + 12) = 0;
      v10 = 0;
    }
  }
  *((_DWORD *)this + 13) = *(_DWORD *)(v11 + 48);
  if ( v10 )
  {
    v13 = *((_BYTE **)this + 11);
    if ( !v13[4] )
    {
      v22 = (*(_DWORD *)v13)-- == 1;
      if ( v22 )
        gameswf::free_internal(v13);
      v10 = 0;
      *((_DWORD *)this + 11) = 0;
      *((_DWORD *)this + 12) = 0;
    }
  }
  gameswf::as_object::set_ctor(this, (const gameswf::as_value *)(v10 + 136));
  return this;
}


// ===== 780968 gameswf::sprite_instance::set_member(gameswf::tu_stringi const&,gameswf::as_value const&) =====
int __fastcall gameswf::sprite_instance::set_member(gameswf::sprite_instance *a1, gameswf::tu_string *this, int a3)
{
  int standard_member; // r0
  int v8; // r7
  void (__fastcall *v9)(int, int); // r8
  int transform; // r0
  int v11; // r0
  void (__fastcall *v12)(int, _BYTE *, char *); // r10
  void (__fastcall *v13)(int, _BYTE *, char *); // r10
  int v14; // r10
  int v15; // r7
  char v16; // [sp+0h] [bp-38h] BYREF
  char v17; // [sp+1h] [bp-37h]
  int v18; // [sp+4h] [bp-34h]
  _BYTE v19[8]; // [sp+Ch] [bp-2Ch] BYREF
  void *v20; // [sp+18h] [bp-20h]
  _BYTE v21[8]; // [sp+20h] [bp-18h] BYREF
  void *p; // [sp+2Ch] [bp-Ch]

  standard_member = gameswf::get_standard_member(this);
  if ( standard_member == 40 )
  {
    *((_BYTE *)a1 + 234) = gameswf::as_value::to_bool((gameswf::as_value *)a3);
    return 1;
  }
  else if ( standard_member == 41 )
  {
    if ( *(_BYTE *)(a3 + 1) == 5
      && (v8 = *(_DWORD *)(a3 + 4)) != 0
      && (*(int (__fastcall **)(_DWORD, int))(*(_DWORD *)v8 + 8))(*(_DWORD *)(a3 + 4), 27) )
    {
      v9 = *(void (__fastcall **)(int, int))(*(_DWORD *)v8 + 72);
      transform = gameswf::sprite_instance::get_transform(a1);
      v9(v8, transform);
      v11 = gameswf::sprite_instance::get_transform(a1);
      gameswf::weak_ptr<gameswf::character>::operator=(v11 + 56, a1);
      v17 = 0;
      v16 = 0;
      v12 = *(void (__fastcall **)(int, _BYTE *, char *))(*(_DWORD *)v8 + 32);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v21, "matrix");
      v12(v8, v21, &v16);
      if ( v21[0] == -1 )
        gameswf::free_internal(p);
      if ( v17 == 5 )
      {
        v14 = v18;
        if ( v18 )
        {
          if ( (*(int (__fastcall **)(int, int))(*(_DWORD *)v18 + 8))(v18, 26) )
            gameswf::character::set_matrix((int)a1, (int *)(v14 + 56));
        }
      }
      gameswf::as_value::drop_refs((gameswf::as_value *)&v16);
      v17 = 0;
      v13 = *(void (__fastcall **)(int, _BYTE *, char *))(*(_DWORD *)v8 + 32);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v19, "colorTransform");
      v13(v8, v19, &v16);
      if ( v19[0] == -1 )
        gameswf::free_internal(v20);
      if ( v17 == 5 )
      {
        v15 = v18;
        if ( v18 )
        {
          if ( (*(int (__fastcall **)(int, int))(*(_DWORD *)v18 + 8))(v18, 28) )
            gameswf::character::set_cxform((int)a1, (int *)(v15 + 56));
        }
      }
      gameswf::as_value::drop_refs((gameswf::as_value *)&v16);
      return 1;
    }
    else
    {
      return 1;
    }
  }
  else
  {
    return gameswf::character::set_member(a1, this, (gameswf::as_value *)a3);
  }
}


// ===== 780bb0 gameswf::sprite_instance::get_environment(void) =====
int __fastcall gameswf::sprite_instance::get_environment(gameswf::sprite_instance *this)
{
  int result; // r0
  gameswf::ref_counted *v3; // r5
  int v4; // r3
  gameswf::ref_counted *v5; // r6
  gameswf::as_environment *v6; // r6

  result = *((_DWORD *)this + 56);
  if ( !result )
  {
    v3 = *((gameswf::ref_counted **)this + 12);
    if ( v3 )
    {
      v4 = *((_DWORD *)this + 11);
      v5 = (gameswf::ref_counted *)*(unsigned __int8 *)(v4 + 4);
      if ( !*(_BYTE *)(v4 + 4) )
      {
        gameswf::smart_ptr_proxy::operator=((_DWORD **)this + 11, (_DWORD *)*(unsigned __int8 *)(v4 + 4));
        v3 = v5;
        *((_DWORD *)this + 12) = v5;
      }
    }
    v6 = (gameswf::as_environment *)operator new(0x6Cu, 0);
    gameswf::as_environment::as_environment((int)v6, v3);
    *((_DWORD *)this + 56) = v6;
    gameswf::as_environment::set_target(v6, this);
    return *((_DWORD *)this + 56);
  }
  return result;
}


// ===== 780c28 gameswf::sprite_instance::create_text_field(char const*,int,int,int,int,int) =====
gameswf::tu_string *__fastcall gameswf::sprite_instance::create_text_field(
        gameswf::sprite_instance *this,
        const char *a2,
        int a3,
        int a4,
        int a5,
        int a6,
        int a7)
{
  gameswf::player *v8; // r6
  _BYTE *v11; // r0
  gameswf::edit_text_character_def *v12; // r7
  gameswf::tu_string *v13; // r6
  float v14; // r9
  float v15; // r11
  float v16; // r7
  float v17; // r7
  int v21[3]; // [sp+20h] [bp-34h] BYREF
  float v22; // [sp+2Ch] [bp-28h]
  int v23; // [sp+30h] [bp-24h]
  float v24; // [sp+34h] [bp-20h]
  _BYTE v25[8]; // [sp+38h] [bp-1Ch] BYREF
  void *p; // [sp+44h] [bp-10h]

  v8 = *((gameswf::player **)this + 12);
  if ( v8 )
  {
    v11 = *((_BYTE **)this + 11);
    if ( !v11[4] )
    {
      if ( (*(_DWORD *)v11)-- == 1 )
        gameswf::free_internal(v11);
      v8 = nullptr;
      *((_DWORD *)this + 11) = 0;
      *((_DWORD *)this + 12) = 0;
    }
  }
  v12 = (gameswf::edit_text_character_def *)operator new(0xA0u, 0);
  gameswf::edit_text_character_def::edit_text_character_def(v12, v8, a6, a7);
  v13 = (gameswf::tu_string *)(*(int (__fastcall **)(gameswf::edit_text_character_def *, gameswf::sprite_instance *, _DWORD))(*(_DWORD *)v12 + 24))(
                                v12,
                                this,
                                0);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v25, a2);
  gameswf::character::set_name(v13, (const gameswf::tu_string *)v25);
  if ( v25[0] == -1 )
    gameswf::free_internal(p);
  v22 = 0.0;
  v24 = 0.0;
  v21[1] = 0;
  v23 = 1065353216;
  v21[0] = 1065353216;
  v14 = (float)a4 * 20.0;
  v15 = (float)a5 * 20.0;
  v16 = (float)(v14 + (float)(v15 * 0.0)) + 0.0;
  if ( v16 < -3.4028e38 || v16 > 3.4028e38 )
    v16 = 0.0;
  *(float *)&v21[2] = v16;
  v17 = (float)(v15 + (float)(v14 * v22)) + v24;
  if ( v17 < -3.4028e38 || v17 > 3.4028e38 )
    v17 = 0.0;
  v24 = v17;
  gameswf::display_list::add_display_object(
    (gameswf::sprite_instance *)((char *)this + 168),
    v13,
    a3,
    1,
    (const gameswf::cxform *)&gameswf::cxform::identity,
    (const gameswf::matrix *)&gameswf::matrix::identity,
    (const gameswf::effect *)&gameswf::effect::identity,
    0.0,
    0);
  gameswf::character::set_matrix((int)v13, v21);
  return v13;
}


// ===== 780ea0 gameswf::sprite_instance::init_actions::~init_actions() =====
void __fastcall gameswf::sprite_instance::init_actions::~init_actions(gameswf::sprite_instance::init_actions *this)
{
  int v1; // r3
  _DWORD *v3; // r0
  int v4; // r3
  int v5; // r2

  v1 = *((_DWORD *)this + 5);
  v3 = (_DWORD *)((char *)this + 16);
  if ( v1 < 0 )
  {
    do
      *(_BYTE *)(*v3 + v1++) = 0;
    while ( v1 );
  }
  *((_DWORD *)this + 5) = 0;
  gameswf::array<bool>::reserve((int)v3, 0);
  v4 = *((_DWORD *)this + 1);
  if ( v4 < 0 )
  {
    v5 = 4 * v4;
    do
    {
      ++v4;
      *(_DWORD *)(*(_DWORD *)this + v5) = 0;
      v5 += 4;
    }
    while ( v4 );
  }
  *((_DWORD *)this + 1) = 0;
  gameswf::array<gameswf::action_buffer *>::reserve((int)this, 0);
}


// ===== 780f3c gameswf::sprite_instance::recycle(gameswf::character *,int) =====
void __fastcall gameswf::sprite_instance::recycle(gameswf::as_environment **this, gameswf::character *a2, int a3)
{
  gameswf::sprite_instance::init_actions *v4; // r6
  void *v5; // r5
  int v6; // r3
  int v7; // r3
  void *v8; // r6
  int v9; // r2
  int v10; // r2

  gameswf::character::recycle((gameswf::character *)this, a2, a3);
  v4 = *(this + 55);
  *((_BYTE *)this + 232) = 1;
  *((_BYTE *)this + 230) = 0;
  *((_WORD *)this + 114) = 0;
  *((_BYTE *)this + 233) = 0;
  if ( v4 )
  {
    gameswf::sprite_instance::init_actions::~init_actions(v4);
    gameswf::free_internal(v4);
    *(this + 55) = nullptr;
  }
  v5 = *(this + 56);
  if ( v5 )
  {
    gameswf::as_environment::~as_environment(*(this + 56));
    gameswf::free_internal(v5);
    *(this + 56) = nullptr;
  }
  v6 = (int)*(this + 48);
  *((_BYTE *)this + 234) = 1;
  *((_BYTE *)this + 231) = 0;
  *((_BYTE *)this + 235) = 0;
  *((_BYTE *)this + 236) = 0;
  if ( v6 < 0 )
  {
    v9 = 4 * v6;
    do
    {
      ++v6;
      *(_DWORD *)((char *)*(this + 47) + v9) = 0;
      v9 += 4;
    }
    while ( v6 );
  }
  v7 = (int)*(this + 52);
  *(this + 48) = nullptr;
  if ( v7 < 0 )
  {
    v10 = 4 * v7;
    do
    {
      ++v7;
      *(_DWORD *)((char *)*(this + 51) + v10) = 0;
      v10 += 4;
    }
    while ( v7 );
  }
  *(this + 52) = nullptr;
  gameswf::smart_ptr<gameswf::character>::set_ref(this + 60, nullptr);
  gameswf::smart_ptr<gameswf::as_transform>::set_ref(this + 61, nullptr);
  v8 = *(this + 62);
  if ( v8 )
  {
    gameswf::hash<int,gameswf::smart_ptr<gameswf::as_function>,gameswf::fixed_size_hash<int>>::clear((_DWORD **)*(this + 62));
    gameswf::free_internal(v8);
    *(this + 62) = nullptr;
  }
}


// ===== 781074 gameswf::sprite_instance::sprite_instance(gameswf::player *,gameswf::movie_definition_sub *,gameswf::root *,gameswf::character *,int) =====
gameswf::sprite_instance *__fastcall gameswf::sprite_instance::sprite_instance(
        gameswf::sprite_instance *this,
        gameswf::player *a2,
        gameswf::movie_definition_sub *a3,
        gameswf::root *a4,
        gameswf::character *a5,
        int a6)
{
  int v9; // r3
  int v10; // r1
  int v11; // r3
  _BYTE *v12; // r0
  _BYTE *v13; // r0
  char *v15; // r0
  int v16; // r3
  char *v17; // r7
  _DWORD *v18; // r8
  int v19; // r0
  int v20; // r6
  int v21; // r5
  bool v22; // zf

  gameswf::character::character(this, a2, a5, a6, 2);
  *((_DWORD *)this + 40) = a3;
  *(_DWORD *)this = off_9906A0;
  if ( a3 )
    gameswf::ref_counted::add_ref((int)a3);
  v9 = *((_DWORD *)this + 40);
  *((_DWORD *)this + 41) = a4;
  *((_BYTE *)this + 234) = 1;
  *((_DWORD *)this + 42) = 0;
  *((_DWORD *)this + 43) = 0;
  *((_DWORD *)this + 44) = 0;
  *((_BYTE *)this + 180) = 0;
  *((_DWORD *)this + 46) = 0;
  *((_DWORD *)this + 47) = 0;
  *((_DWORD *)this + 48) = 0;
  *((_DWORD *)this + 49) = 0;
  *((_BYTE *)this + 200) = 0;
  *((_DWORD *)this + 51) = 0;
  *((_DWORD *)this + 52) = 0;
  *((_DWORD *)this + 53) = 0;
  *((_BYTE *)this + 216) = 0;
  *((_DWORD *)this + 55) = 0;
  *((_DWORD *)this + 56) = 0;
  *((_WORD *)this + 114) = 0;
  *((_BYTE *)this + 230) = 0;
  *((_BYTE *)this + 231) = 0;
  *((_BYTE *)this + 232) = 1;
  *((_BYTE *)this + 233) = 0;
  *((_BYTE *)this + 235) = 0;
  *((_BYTE *)this + 236) = 0;
  *((_DWORD *)this + 60) = 0;
  *((_DWORD *)this + 61) = 0;
  *((_DWORD *)this + 62) = 0;
  *((_DWORD *)this + 63) = 0;
  if ( (*(int (__fastcall **)(int))(*(_DWORD *)v9 + 136))(v9) )
  {
    v15 = (char *)operator new(0x20u, 0);
    v15[28] = 0;
    *(_DWORD *)v15 = 0;
    *((_DWORD *)v15 + 1) = 0;
    *((_DWORD *)v15 + 2) = 0;
    v15[12] = 0;
    *((_DWORD *)v15 + 4) = 0;
    *((_DWORD *)v15 + 5) = 0;
    *((_DWORD *)v15 + 6) = 0;
    v16 = *((_DWORD *)this + 40);
    *((_DWORD *)this + 55) = v15;
    v17 = v15;
    v18 = v15 + 16;
    v19 = (*(int (__fastcall **)(int))(*(_DWORD *)v16 + 56))(v16);
    v20 = v19;
    v21 = *((_DWORD *)v17 + 5);
    if ( v19 && v19 > *((_DWORD *)v17 + 6) )
      gameswf::array<bool>::reserve((int)v18, v19 + (v19 >> 1));
    if ( v20 > v21 )
    {
      do
        *(_BYTE *)(*v18 + v21++) = 0;
      while ( v21 != v20 );
    }
    *((_DWORD *)v17 + 5) = v20;
    LC_API_MEMSET_0(*(void **)(*((_DWORD *)this + 55) + 16), 0, *(_DWORD *)(*((_DWORD *)this + 55) + 20));
  }
  v10 = *((_DWORD *)this + 12);
  v11 = v10;
  if ( v10 )
  {
    v12 = *((_BYTE **)this + 11);
    if ( !v12[4] )
    {
      v22 = (*(_DWORD *)v12)-- == 1;
      if ( v22 )
        gameswf::free_internal(v12);
      v11 = 0;
      *((_DWORD *)this + 11) = 0;
      *((_DWORD *)this + 12) = 0;
      v10 = 0;
    }
  }
  *((_DWORD *)this + 13) = *(_DWORD *)(v11 + 48);
  if ( v10 )
  {
    v13 = *((_BYTE **)this + 11);
    if ( !v13[4] )
    {
      v22 = (*(_DWORD *)v13)-- == 1;
      if ( v22 )
        gameswf::free_internal(v13);
      v10 = 0;
      *((_DWORD *)this + 11) = 0;
      *((_DWORD *)this + 12) = 0;
    }
  }
  gameswf::as_object::set_ctor(this, (const gameswf::as_value *)(v10 + 136));
  return this;
}


// ===== 7812c4 gameswf::sprite_instance::add_empty_movieclip(char const*,int) =====
gameswf::ref_counted **__fastcall gameswf::sprite_instance::add_empty_movieclip(
        gameswf::sprite_instance *this,
        const char *a2,
        int a3)
{
  gameswf::player *v3; // r6
  _BYTE *v7; // r0
  gameswf::sprite_definition *v8; // r7
  gameswf::player *v9; // r0
  _BYTE *v10; // r3
  gameswf::ref_counted **sprite_instance; // r6
  bool v13; // zf
  _BYTE v14[8]; // [sp+18h] [bp-18h] BYREF
  void *p; // [sp+24h] [bp-Ch]

  v3 = *((gameswf::player **)this + 12);
  if ( v3 )
  {
    v7 = *((_BYTE **)this + 11);
    if ( !v7[4] )
    {
      v13 = (*(_DWORD *)v7)-- == 1;
      if ( v13 )
        gameswf::free_internal(v7);
      v3 = nullptr;
      *((_DWORD *)this + 11) = 0;
      *((_DWORD *)this + 12) = 0;
    }
  }
  v8 = (gameswf::sprite_definition *)operator new(0x5Cu, 0);
  gameswf::sprite_definition::sprite_definition(v8, v3, nullptr);
  v9 = *((gameswf::player **)this + 12);
  if ( v9 )
  {
    v10 = *((_BYTE **)this + 11);
    if ( !v10[4] )
    {
      v13 = (*(_DWORD *)v10)-- == 1;
      if ( v13 )
        gameswf::free_internal(v10);
      v9 = nullptr;
      *((_DWORD *)this + 11) = 0;
      *((_DWORD *)this + 12) = 0;
    }
  }
  sprite_instance = gameswf::player::create_sprite_instance(v9, v8, *((gameswf::root **)this + 41), this, 0);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v14, a2);
  gameswf::character::set_name((gameswf::tu_string *)sprite_instance, (const gameswf::tu_string *)v14);
  if ( v14[0] == -1 )
    gameswf::free_internal(p);
  gameswf::display_list::add_display_object(
    (gameswf::sprite_instance *)((char *)this + 168),
    (gameswf::character *)sprite_instance,
    a3,
    1,
    (const gameswf::cxform *)&gameswf::cxform::identity,
    (const gameswf::matrix *)&gameswf::matrix::identity,
    (const gameswf::effect *)&gameswf::effect::identity,
    0.0,
    0);
  return sprite_instance;
}


// ===== 78146c gameswf::sprite_instance::~sprite_instance() =====
void __fastcall gameswf::sprite_instance::~sprite_instance(gameswf::sprite_instance *this)
{
  _DWORD **v1; // r5
  void *v3; // r5
  void *v4; // r5
  void (__fastcall ***v5)(_DWORD); // r0
  void (__fastcall ***v6)(_DWORD); // r0
  void (__fastcall ***v7)(_DWORD); // r0
  int v8; // r3
  _DWORD *v9; // r0
  int v10; // r3
  _DWORD *v11; // r0
  void (__fastcall ***v12)(_DWORD); // r0
  int v13; // r2
  int v14; // r2

  v1 = *((_DWORD ***)this + 62);
  *(_DWORD *)this = off_9906A0;
  if ( v1 )
  {
    gameswf::hash<int,gameswf::smart_ptr<gameswf::as_function>,gameswf::fixed_size_hash<int>>::clear(v1);
    gameswf::free_internal(v1);
  }
  v3 = *((void **)this + 55);
  if ( v3 )
  {
    gameswf::sprite_instance::init_actions::~init_actions(*((gameswf::sprite_instance::init_actions **)this + 55));
    gameswf::free_internal(v3);
  }
  v4 = *((void **)this + 56);
  if ( v4 )
  {
    gameswf::as_environment::~as_environment(*((gameswf::as_environment **)this + 56));
    gameswf::free_internal(v4);
  }
  v5 = *((void (__fastcall ****)(_DWORD))this + 63);
  if ( v5 )
    gameswf::ref_counted::drop_ref(v5);
  v6 = *((void (__fastcall ****)(_DWORD))this + 61);
  if ( v6 )
    gameswf::ref_counted::drop_ref(v6);
  v7 = *((void (__fastcall ****)(_DWORD))this + 60);
  if ( v7 )
    gameswf::ref_counted::drop_ref(v7);
  v8 = *((_DWORD *)this + 52);
  v9 = (_DWORD *)((char *)this + 204);
  if ( v8 < 0 )
  {
    v13 = 4 * v8;
    do
    {
      ++v8;
      *(_DWORD *)(*v9 + v13) = 0;
      v13 += 4;
    }
    while ( v8 );
  }
  *((_DWORD *)this + 52) = 0;
  gameswf::array<gameswf::action_buffer *>::reserve((int)v9, 0);
  v10 = *((_DWORD *)this + 48);
  v11 = (_DWORD *)((char *)this + 188);
  if ( v10 < 0 )
  {
    v14 = 4 * v10;
    do
    {
      ++v10;
      *(_DWORD *)(*v11 + v14) = 0;
      v14 += 4;
    }
    while ( v10 );
  }
  *((_DWORD *)this + 48) = 0;
  gameswf::array<gameswf::action_buffer *>::reserve((int)v11, 0);
  gameswf::display_list::~display_list((gameswf::sprite_instance *)((char *)this + 168));
  v12 = *((void (__fastcall ****)(_DWORD))this + 40);
  if ( v12 )
    gameswf::ref_counted::drop_ref(v12);
  gameswf::character::~character(this);
}


// ===== 7815d0 gameswf::sprite_instance::~sprite_instance() =====
void __fastcall gameswf::sprite_instance::~sprite_instance(gameswf::sprite_instance *this)
{
  _DWORD **v1; // r5
  void *v3; // r5
  void *v4; // r5
  void (__fastcall ***v5)(_DWORD); // r0
  void (__fastcall ***v6)(_DWORD); // r0
  void (__fastcall ***v7)(_DWORD); // r0
  int v8; // r3
  _DWORD *v9; // r0
  int v10; // r3
  _DWORD *v11; // r0
  void (__fastcall ***v12)(_DWORD); // r0
  int v13; // r2
  int v14; // r2

  v1 = *((_DWORD ***)this + 62);
  *(_DWORD *)this = off_9906A0;
  if ( v1 )
  {
    gameswf::hash<int,gameswf::smart_ptr<gameswf::as_function>,gameswf::fixed_size_hash<int>>::clear(v1);
    gameswf::free_internal(v1);
  }
  v3 = *((void **)this + 55);
  if ( v3 )
  {
    gameswf::sprite_instance::init_actions::~init_actions(*((gameswf::sprite_instance::init_actions **)this + 55));
    gameswf::free_internal(v3);
  }
  v4 = *((void **)this + 56);
  if ( v4 )
  {
    gameswf::as_environment::~as_environment(*((gameswf::as_environment **)this + 56));
    gameswf::free_internal(v4);
  }
  v5 = *((void (__fastcall ****)(_DWORD))this + 63);
  if ( v5 )
    gameswf::ref_counted::drop_ref(v5);
  v6 = *((void (__fastcall ****)(_DWORD))this + 61);
  if ( v6 )
    gameswf::ref_counted::drop_ref(v6);
  v7 = *((void (__fastcall ****)(_DWORD))this + 60);
  if ( v7 )
    gameswf::ref_counted::drop_ref(v7);
  v8 = *((_DWORD *)this + 52);
  v9 = (_DWORD *)((char *)this + 204);
  if ( v8 < 0 )
  {
    v13 = 4 * v8;
    do
    {
      ++v8;
      *(_DWORD *)(*v9 + v13) = 0;
      v13 += 4;
    }
    while ( v8 );
  }
  *((_DWORD *)this + 52) = 0;
  gameswf::array<gameswf::action_buffer *>::reserve((int)v9, 0);
  v10 = *((_DWORD *)this + 48);
  v11 = (_DWORD *)((char *)this + 188);
  if ( v10 < 0 )
  {
    v14 = 4 * v10;
    do
    {
      ++v10;
      *(_DWORD *)(*v11 + v14) = 0;
      v14 += 4;
    }
    while ( v10 );
  }
  *((_DWORD *)this + 48) = 0;
  gameswf::array<gameswf::action_buffer *>::reserve((int)v11, 0);
  gameswf::display_list::~display_list((gameswf::sprite_instance *)((char *)this + 168));
  v12 = *((void (__fastcall ****)(_DWORD))this + 40);
  if ( v12 )
    gameswf::ref_counted::drop_ref(v12);
  gameswf::character::~character(this);
}


// ===== 781734 gameswf::sprite_instance::~sprite_instance() =====
void __fastcall gameswf::sprite_instance::~sprite_instance(gameswf::sprite_instance *this)
{
  gameswf::sprite_instance::~sprite_instance(this);
  LC_API_FREE_0(this);
}


// ===== 781750 gameswf::sprite_instance::replace_me(gameswf::character_def *) =====
int __fastcall gameswf::sprite_instance::replace_me(gameswf::sprite_instance *this, gameswf::character_def *a2)
{
  gameswf::ref_counted *v2; // r6
  _BYTE *v4; // r0
  int v5; // r4
  char *v6; // r2
  char *v7; // r2
  bool v9; // zf

  v2 = *((gameswf::ref_counted **)this + 16);
  if ( !v2 )
  {
LABEL_11:
    v5 = 0;
    gameswf::log_error("character can't replace _root\n", (const char *)a2);
    return v5;
  }
  v4 = *((_BYTE **)this + 15);
  if ( !v4[4] )
  {
    a2 = (gameswf::character_def *)(*(_DWORD *)v4 - 1);
    v9 = *(_DWORD *)v4 == 1;
    *(_DWORD *)v4 = a2;
    if ( v9 )
      gameswf::free_internal(v4);
    *((_DWORD *)this + 16) = 0;
    *((_DWORD *)this + 15) = 0;
    goto LABEL_11;
  }
  v5 = (*(int (__fastcall **)(gameswf::character_def *, gameswf::ref_counted *, _DWORD))(*(_DWORD *)a2 + 24))(a2, v2, 0);
  gameswf::weak_ptr<gameswf::character>::operator=(v5 + 60, v2);
  v6 = *((char **)this + 17);
  if ( *v6 == -1 )
    v7 = *((char **)v6 + 3);
  else
    v7 = v6 + 1;
  (*(void (__fastcall **)(gameswf::ref_counted *, int, char *, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v2 + 192))(
    v2,
    v5,
    v7,
    *((unsigned __int16 *)this + 74),
    0,
    0,
    0,
    *((_DWORD *)this + 36),
    *((unsigned __int16 *)this + 75));
  return v5;
}


// ===== 781844 gameswf::array<gameswf::action_buffer *>::remove(int) =====
_DWORD *__fastcall gameswf::array<gameswf::action_buffer *>::remove(_DWORD *result, int a2)
{
  int v2; // r2
  _DWORD *v3; // r4

  v2 = result[1];
  v3 = result;
  if ( v2 == 1 )
  {
    result[1] = 0;
  }
  else
  {
    result = memmove((void *)(*result + 4 * a2), (const void *)(*result + 4 * (a2 + 1)), 4 * (v2 - 1 - a2));
    --v3[1];
  }
  return result;
}


// ===== 781898 gameswf::sprite_instance::call_frame_actions(gameswf::as_value const&) =====
const char *__fastcall gameswf::sprite_instance::call_frame_actions(
        gameswf::sprite_instance *this,
        const gameswf::as_value *a2)
{
  unsigned int v2; // r3
  double v5; // r0
  int v6; // r0
  int v7; // r0
  int v8; // r6
  const char *result; // r0
  const char *v10; // r7
  int v11; // r5
  int v12; // r8
  gameswf::action_buffer *v13; // r8
  gameswf::as_environment *v14; // r0
  const char *v15; // r0
  int v16; // r7
  int (__fastcall *v17)(int, char *, int *); // r6
  char *v18; // r0
  double v19; // r0
  int v20; // [sp+4h] [bp-4h] BYREF

  v2 = (unsigned __int8)(*((_BYTE *)a2 + 1) - 3);
  v20 = -1;
  if ( v2 <= 1 )
  {
    v16 = *((_DWORD *)this + 40);
    v17 = *(int (__fastcall **)(int, char *, int *))(*(_DWORD *)v16 + 96);
    v18 = gameswf::as_value::to_tu_string(a2);
    if ( v17(v16, v18, &v20) )
    {
      v6 = v20;
    }
    else
    {
      LODWORD(v19) = gameswf::as_value::to_number(a2);
      v6 = (int)v19;
      v20 = v6;
    }
  }
  else
  {
    LODWORD(v5) = gameswf::as_value::to_number(a2);
    v6 = (int)v5 - 1;
    v20 = v6;
  }
  if ( v6 < 0
    || (v7 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 40) + 56))(*((_DWORD *)this + 40)), v7 <= v20) )
  {
    v15 = (const char *)gameswf::as_value::to_string(a2);
    return gameswf::log_error("error: call_frame('%s') -- unknown frame\n", v15);
  }
  else
  {
    v8 = *((_DWORD *)this + 48);
    result = (const char *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 40) + 80))(*((_DWORD *)this + 40));
    v10 = result;
    if ( *((int *)result + 1) > 0 )
    {
      v11 = 0;
      do
      {
        while ( 1 )
        {
          v12 = *(_DWORD *)(*(_DWORD *)v10 + 4 * v11++);
          result = (const char *)(*(int (__fastcall **)(int))(*(_DWORD *)v12 + 24))(v12);
          if ( result )
            break;
          if ( v11 >= *((_DWORD *)v10 + 1) )
            goto LABEL_11;
        }
        result = (const char *)(*(int (__fastcall **)(int, gameswf::sprite_instance *))(*(_DWORD *)v12 + 8))(v12, this);
      }
      while ( v11 < *((_DWORD *)v10 + 1) );
    }
LABEL_11:
    while ( v8 < *((_DWORD *)this + 48) )
    {
      v13 = *(gameswf::action_buffer **)(*((_DWORD *)this + 47) + 4 * v8);
      v14 = (gameswf::as_environment *)(*(int (__fastcall **)(gameswf::sprite_instance *))(*(_DWORD *)this + 88))(this);
      gameswf::action_buffer::execute(v13, v14);
      result = (const char *)gameswf::array<gameswf::action_buffer *>::remove((_DWORD *)this + 47, v8);
    }
  }
  return result;
}


// ===== 781a3c gameswf::sprite_instance::goto_frame(int) =====
int __fastcall gameswf::sprite_instance::goto_frame(gameswf::sprite_instance *this, int a2)
{
  int v5; // r10
  _DWORD *v6; // r6
  _DWORD *v7; // r5
  int v8; // r8
  int v9; // r3
  int v10; // r3
  int v11; // r3
  int v12; // r9
  int v13; // r8
  int v14; // r10
  int v15; // r9
  int v16; // r1
  int v17; // r3
  int v18; // r2
  int v19; // r1
  int v20; // r3
  int v21; // r8
  int v22; // r10
  int v23; // r9
  int v24; // r7
  int v25; // r2
  int v26; // r3
  int v27; // r3
  int v28; // r0
  int v29; // r3
  int v30; // r2
  int v31; // r2

  if ( (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 40) + 56))(*((_DWORD *)this + 40)) <= a2
    || a2 < 0
    || *((__int16 *)this + 114) == a2 )
  {
    *((_BYTE *)this + 230) = 1;
    return 0;
  }
  v5 = *((_DWORD *)this + 48);
  v6 = (_DWORD *)((char *)this + 204);
  v7 = (_DWORD *)((char *)this + 188);
  v8 = *((_DWORD *)this + 52);
  if ( v5 && v5 > *((_DWORD *)this + 53) )
    gameswf::array<gameswf::action_buffer *>::reserve((int)this + 204, v5 + (v5 >> 1));
  if ( v5 > v8 )
  {
    v9 = 4 * v8;
    do
    {
      ++v8;
      *(_DWORD *)(*v6 + v9) = 0;
      v9 += 4;
    }
    while ( v8 != v5 );
  }
  *((_DWORD *)this + 52) = v5;
  if ( v5 > 0 )
  {
    v10 = 0;
    do
    {
      *(_DWORD *)(*v6 + 4 * v10) = *(_DWORD *)(*v7 + 4 * v10);
      ++v10;
    }
    while ( v10 < *((_DWORD *)this + 52) );
  }
  v11 = *((_DWORD *)this + 48);
  if ( v11 < 0 )
  {
    v30 = 4 * v11;
    do
    {
      ++v11;
      *(_DWORD *)(*v7 + v30) = 0;
      v30 += 4;
    }
    while ( v11 );
  }
  v12 = *((__int16 *)this + 114);
  v13 = 0;
  *((_DWORD *)this + 48) = 0;
  if ( a2 < v12 )
  {
    do
    {
      v19 = v12 - v13++;
      gameswf::sprite_instance::execute_frame_tags_reverse(this, v19);
    }
    while ( v13 != v12 - a2 );
    v20 = *((_DWORD *)this + 48);
    if ( v20 < 0 )
    {
      v31 = 4 * v20;
      do
      {
        ++v20;
        *(_DWORD *)(*v7 + v31) = 0;
        v31 += 4;
      }
      while ( v20 );
    }
  }
  else
  {
    if ( a2 <= v12 )
      goto LABEL_25;
    v14 = v12 + 1;
    if ( a2 > v12 + 1 )
    {
      v15 = ~v12 + a2;
      do
      {
        v16 = v14 + v13++;
        (*(void (__fastcall **)(gameswf::sprite_instance *, int, int))(*(_DWORD *)this + 200))(this, v16, 1);
      }
      while ( v13 != v15 );
      v17 = *((_DWORD *)this + 48);
      if ( v17 < 0 )
      {
        v18 = 4 * v17;
        do
        {
          ++v17;
          *(_DWORD *)(*v7 + v18) = 0;
          v18 += 4;
        }
        while ( v17 );
      }
    }
  }
  *((_DWORD *)this + 48) = 0;
  (*(void (__fastcall **)(gameswf::sprite_instance *, int))(*(_DWORD *)this + 200))(this, a2);
LABEL_25:
  v21 = *((_DWORD *)this + 48);
  *((_WORD *)this + 114) = a2;
  *((_BYTE *)this + 230) = 1;
  v22 = *((_DWORD *)this + 47);
  if ( v21 <= 0 )
    goto LABEL_39;
  v23 = *((_DWORD *)this + 52);
  v24 = v23 + v21;
  if ( v23 + v21 && v24 > *((_DWORD *)this + 53) )
    gameswf::array<gameswf::action_buffer *>::reserve((int)this + 204, v24 + (v24 >> 1));
  if ( v23 < v24 )
  {
    v25 = 4 * v23;
    v26 = 4 * v23;
    do
    {
      ++v23;
      *(_DWORD *)(*v6 + v26) = 0;
      v26 += 4;
    }
    while ( v23 != v24 );
  }
  else
  {
    v25 = 4 * v23;
  }
  *((_DWORD *)this + 52) = v24;
  v27 = 0;
  do
  {
    v28 = *(_DWORD *)(v22 + 4 * v27++);
    *(_DWORD *)(*((_DWORD *)this + 51) + v25) = v28;
    v25 += 4;
  }
  while ( v27 != v21 );
  v21 = *((_DWORD *)this + 48);
  if ( v21 <= 0 )
  {
LABEL_39:
    if ( v21 < 0 )
    {
      v29 = 4 * v21;
      do
      {
        ++v21;
        *(_DWORD *)(*v7 + v29) = 0;
        v29 += 4;
      }
      while ( v21 );
    }
  }
  *((_DWORD *)this + 48) = 0;
  gameswf::character::notify_need_advance((gameswf::character **)this);
  return 1;
}


// ===== 781d24 gameswf::sprite_instance::replace_me(gameswf::movie_definition *) =====
int __fastcall gameswf::sprite_instance::replace_me(gameswf::sprite_instance *this, gameswf::movie_definition *a2)
{
  gameswf::character *v2; // r5
  _BYTE *v5; // r0
  gameswf::player *v6; // r6
  _BYTE *v7; // r0
  gameswf::movie_definition_sub *v8; // r0
  gameswf::ref_counted **sprite_instance; // r7
  int root_movie; // r6
  char *v11; // r2
  char *v12; // r2
  bool v14; // zf
  gameswf::root *v15; // r7
  int v16; // r0
  int v17; // r3
  int v18; // r5

  v2 = *((gameswf::character **)this + 16);
  if ( v2 )
  {
    v5 = *((_BYTE **)this + 15);
    if ( v5[4] )
    {
      v6 = *((gameswf::player **)this + 12);
      if ( v6 )
      {
        v7 = *((_BYTE **)this + 11);
        if ( !v7[4] )
        {
          v14 = (*(_DWORD *)v7)-- == 1;
          if ( v14 )
            gameswf::free_internal(v7);
          v6 = nullptr;
          *((_DWORD *)this + 11) = 0;
          *((_DWORD *)this + 12) = 0;
        }
      }
      v8 = (gameswf::movie_definition_sub *)gameswf::cast_to<gameswf::movie_def_impl>((int)a2);
      sprite_instance = gameswf::player::create_sprite_instance(v6, v8, *((gameswf::root **)this + 41), v2, -1);
      gameswf::weak_ptr<gameswf::character>::operator=((int)(sprite_instance + 15), v2);
      root_movie = (int)sprite_instance;
      sprite_instance[41] = *((gameswf::ref_counted **)this + 41);
      v11 = *((char **)this + 17);
      if ( *v11 == -1 )
        v12 = *((char **)v11 + 3);
      else
        v12 = v11 + 1;
      (*(void (__fastcall **)(gameswf::character *, gameswf::ref_counted **, char *, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v2 + 192))(
        v2,
        sprite_instance,
        v12,
        *((unsigned __int16 *)this + 74),
        0,
        0,
        0,
        *((_DWORD *)this + 36),
        *((unsigned __int16 *)this + 75));
      return root_movie;
    }
    v14 = (*(_DWORD *)v5)-- == 1;
    if ( v14 )
      gameswf::free_internal(v5);
    *((_DWORD *)this + 16) = 0;
    *((_DWORD *)this + 15) = 0;
  }
  v15 = (gameswf::root *)(*(int (__fastcall **)(gameswf::movie_definition *))(*(_DWORD *)a2 + 64))(a2);
  root_movie = gameswf::root::get_root_movie(v15);
  v16 = *((_DWORD *)this + 12);
  if ( v16 )
  {
    v17 = *((_DWORD *)this + 11);
    v18 = *(unsigned __int8 *)(v17 + 4);
    if ( !*(_BYTE *)(v17 + 4) )
    {
      gameswf::smart_ptr_proxy::operator=((_DWORD **)this + 11, (_DWORD *)*(unsigned __int8 *)(v17 + 4));
      *((_DWORD *)this + 12) = v18;
      v16 = v18;
    }
  }
  gameswf::player::set_root(v16, v15);
  return root_movie;
}


// ===== 781eac gameswf::sprite_instance::do_actions(void) =====
void __fastcall gameswf::sprite_instance::do_actions(gameswf::sprite_instance *this)
{
  int *v1; // r9
  int *v2; // r10
  int v4; // r8
  int *v5; // r5
  _DWORD *v6; // r7
  int v7; // r6
  int v8; // r3
  int v9; // r3
  int v10; // r3
  int v11; // r3
  gameswf::as_environment *v12; // r0
  int v13; // r3
  int v14; // r3
  int v15; // r0
  int v16; // r10
  int v17; // r2
  int v18; // r2
  int v19; // r2
  _BYTE v20[128]; // [sp+14h] [bp-C4h] BYREF
  int v21; // [sp+94h] [bp-44h] BYREF
  int v22; // [sp+98h] [bp-40h]
  int v23; // [sp+9Ch] [bp-3Ch]
  char v24; // [sp+A0h] [bp-38h]
  _BYTE *v25; // [sp+A4h] [bp-34h] BYREF
  int v26; // [sp+A8h] [bp-30h]
  int v27; // [sp+ACh] [bp-2Ch]
  char v28; // [sp+B0h] [bp-28h]
  _BYTE v29[12]; // [sp+B4h] [bp-24h] BYREF
  _BYTE v30[4]; // [sp+C0h] [bp-18h] BYREF
  gameswf::sprite_instance *v31; // [sp+C4h] [bp-14h]
  _BYTE v32[4]; // [sp+CCh] [bp-Ch] BYREF
  int v33; // [sp+D0h] [bp-8h]

  if ( *((int *)this + 48) > 0 )
  {
    *((_BYTE *)this + 157) = 1;
    gameswf::ref_counted::add_ref((int)this);
    LC_API_MEMSET_0(v20, 0, 0x80u);
    v4 = *((_DWORD *)this + 48);
    if ( v4 <= 31 )
      v2 = (int *)&v25;
    else
      v1 = &v21;
    v28 = 1;
    v25 = v20;
    if ( v4 <= 31 )
      v5 = v2;
    else
      v5 = v1;
    v27 = 32;
    v24 = 0;
    v26 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    if ( v4 <= 31 )
      v1 = &v21;
    else
      v2 = (int *)&v25;
    v6 = (_DWORD *)((char *)this + 188);
    v7 = v5[1];
    if ( v4 && v4 > v5[2] )
      gameswf::array<gameswf::action_buffer *>::reserve((int)v5, v4 + (v4 >> 1));
    if ( v4 > v7 )
    {
      v8 = 4 * v7;
      do
      {
        ++v7;
        *(_DWORD *)(*v5 + v8) = 0;
        v8 += 4;
      }
      while ( v7 != v4 );
    }
    v5[1] = v4;
    if ( v4 > 0 )
    {
      v9 = 0;
      do
      {
        *(_DWORD *)(*v5 + 4 * v9) = *(_DWORD *)(*v6 + 4 * v9);
        ++v9;
      }
      while ( v9 < v5[1] );
    }
    v10 = *((_DWORD *)this + 48);
    if ( v10 < 0 )
    {
      v17 = 4 * v10;
      do
      {
        ++v10;
        *(_DWORD *)(*v6 + v17) = 0;
        v17 += 4;
      }
      while ( v10 );
    }
    v11 = *(_DWORD *)this;
    *((_DWORD *)this + 48) = 0;
    v12 = (gameswf::as_environment *)(*(int (__fastcall **)(gameswf::sprite_instance *))(v11 + 88))(this);
    gameswf::execute_actions(v12, v5);
    v13 = v22;
    if ( v22 < 0 )
    {
      v18 = 4 * v22;
      do
      {
        ++v13;
        *(_DWORD *)(v21 + v18) = 0;
        v18 += 4;
      }
      while ( v13 );
    }
    v22 = 0;
    gameswf::array<gameswf::action_buffer *>::reserve((int)v1, 0);
    v14 = v26;
    if ( v26 < 0 )
    {
      v19 = 4 * v26;
      do
      {
        ++v14;
        *(_DWORD *)&v25[v19] = 0;
        v19 += 4;
      }
      while ( v14 );
    }
    v26 = 0;
    gameswf::array<gameswf::action_buffer *>::reserve((int)v2, 0);
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))this);
  }
  if ( *((_DWORD *)this + 63) )
  {
    gameswf::ref_counted::add_ref((int)this);
    v15 = *((_DWORD *)this + 63);
    v32[0] = 0;
    v32[1] = 5;
    v33 = v15;
    if ( v15 )
      gameswf::ref_counted::add_ref(v15);
    v16 = (*(int (__fastcall **)(gameswf::sprite_instance *))(*(_DWORD *)this + 88))(this);
    v30[1] = 5;
    v30[0] = 0;
    v31 = this;
    gameswf::ref_counted::add_ref((int)this);
    gameswf::call_method((int)v29, (gameswf::as_value *)v32, v16, (int)v30, 0, 0, (int)"???");
    gameswf::as_value::drop_refs((gameswf::as_value *)v29);
    gameswf::as_value::drop_refs((gameswf::as_value *)v30);
    gameswf::as_value::drop_refs((gameswf::as_value *)v32);
    gameswf::smart_ptr<gameswf::as_function>::set_ref((gameswf::ref_counted **)this + 63, nullptr);
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))this);
  }
}


// ===== 78215c gameswf::sprite_instance::execute_frame_tags(int,bool) =====
void __fastcall gameswf::sprite_instance::execute_frame_tags(gameswf::sprite_instance *this, int a2, int a3)
{
  _DWORD *v6; // r6
  int v7; // r3
  int v8; // r3
  int v9; // r6
  int *v10; // r0
  int *v11; // r7
  int v12; // r6
  int v13; // r3
  int v14; // r0
  _DWORD *v15; // r7
  int v16; // r3
  int v17; // r6
  _DWORD *v18; // r7
  int v19; // r9
  int v20; // r11
  int v21; // r10
  int v22; // r2
  int v23; // r3
  int i; // r3
  int v25; // r0
  _DWORD *v26; // r1
  int sound_handler; // r0
  int v28; // r6
  int v29; // r3
  int v30; // r3

  if ( this )
    gameswf::ref_counted::add_ref((int)this);
  v6 = *((_DWORD **)this + 40);
  if ( (*(int (__fastcall **)(_DWORD *))(*v6 + 188))(v6) && a2 >= v6[15] )
  {
    while ( 1 )
      ;
  }
  v7 = *((_DWORD *)this + 55);
  if ( v7 )
  {
    v8 = *(_DWORD *)(v7 + 16);
    v9 = *(unsigned __int8 *)(v8 + a2);
    if ( !*(_BYTE *)(v8 + a2) )
    {
      v14 = (*(int (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 40) + 84))(*((_DWORD *)this + 40), a2);
      v15 = (_DWORD *)v14;
      if ( v14 && *(int *)(v14 + 4) > 0 )
      {
        do
        {
          v16 = *(_DWORD *)(*v15 + 4 * v9++);
          (*(void (__fastcall **)(int, gameswf::sprite_instance *))(*(_DWORD *)v16 + 8))(v16, this);
        }
        while ( v9 < v15[1] );
        *(_BYTE *)(*(_DWORD *)(*((_DWORD *)this + 55) + 16) + a2) = 1;
      }
      v17 = *((_DWORD *)this + 48);
      v18 = *((_DWORD **)this + 55);
      v19 = *((_DWORD *)this + 47);
      if ( v17 <= 0 )
      {
        v26 = (_DWORD *)((char *)this + 188);
      }
      else
      {
        v20 = v18[1];
        v21 = v20 + v17;
        if ( v20 + v17 && v21 > v18[2] )
          gameswf::array<gameswf::action_buffer *>::reserve(*((_DWORD *)this + 55), v21 + (v21 >> 1));
        if ( v20 < v21 )
        {
          v22 = 4 * v20;
          v23 = 4 * v20;
          do
          {
            ++v20;
            *(_DWORD *)(*v18 + v23) = 0;
            v23 += 4;
          }
          while ( v20 != v21 );
        }
        else
        {
          v22 = 4 * v20;
        }
        v18[1] = v21;
        for ( i = 0; i != v17; ++i )
        {
          v25 = *(_DWORD *)(v19 + 4 * i);
          *(_DWORD *)(*v18 + v22) = v25;
          v22 += 4;
        }
        v17 = *((_DWORD *)this + 48);
        v26 = (_DWORD *)((char *)this + 188);
        if ( v17 > 0 )
          goto LABEL_30;
      }
      if ( v17 < 0 )
      {
        v30 = 4 * v17;
        do
        {
          ++v17;
          *(_DWORD *)(*v26 + v30) = 0;
          v30 += 4;
        }
        while ( v17 );
      }
LABEL_30:
      *((_DWORD *)this + 48) = 0;
    }
  }
  v10 = (int *)(*(int (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 40) + 80))(*((_DWORD *)this + 40), a2);
  v11 = v10;
  if ( v10[1] > 0 )
  {
    v12 = 0;
    do
    {
      while ( 1 )
      {
        v13 = *(_DWORD *)(*v11 + 4 * v12);
        if ( !a3 )
          break;
        v10 = (int *)(*(int (__fastcall **)(_DWORD, gameswf::sprite_instance *))(*(_DWORD *)v13 + 12))(
                       *(_DWORD *)(*v11 + 4 * v12++),
                       this);
        if ( v12 >= v11[1] )
          goto LABEL_12;
      }
      v10 = (int *)(*(int (__fastcall **)(_DWORD, gameswf::sprite_instance *))(*(_DWORD *)v13 + 8))(
                     *(_DWORD *)(*v11 + 4 * v12++),
                     this);
    }
    while ( v12 < v11[1] );
  }
LABEL_12:
  if ( !a3 )
  {
    sound_handler = gameswf::get_sound_handler((gameswf *)v10);
    v28 = sound_handler;
    if ( sound_handler )
    {
      v29 = *((_DWORD *)this + 40);
      if ( a2 == *(_DWORD *)(v29 + 40) && *(int *)(v29 + 32) >= 0 )
      {
        (*(void (__fastcall **)(int))(*(_DWORD *)sound_handler + 20))(sound_handler);
        (*(void (__fastcall **)(int, _DWORD, _DWORD))(*(_DWORD *)v28 + 12))(
          v28,
          *(_DWORD *)(*((_DWORD *)this + 40) + 32),
          0);
      }
    }
  }
  gameswf::sprite_instance::set_frame_script((gameswf::ref_counted **)this, a2);
  if ( this )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))this);
}


// ===== 78240c gameswf::sprite_instance::advance(float) =====
_BYTE *__fastcall gameswf::sprite_instance::advance(_BYTE *this, float a2)
{
  _BYTE *v2; // r6
  int v3; // r7
  _DWORD *v4; // r5
  int v5; // r11
  _DWORD *v6; // r10
  int v7; // r9
  int v8; // r3
  int v9; // r3
  int v10; // r3
  int v11; // r3
  gameswf::as_environment *v12; // r0
  const char *v13; // r1
  int v14; // r3
  int v15; // r3
  int v16; // r3
  int v17; // r3
  __int16 v18; // r4
  char v19; // r5
  int v20; // r0
  int v21; // r3
  char v22; // r0
  int v23; // r7
  gameswf::display_list *v24; // r4
  void (__fastcall *v25)(_BYTE *, _BYTE *); // r3
  int v26; // r2
  int v27; // r2
  int v28; // r2
  int (__fastcall *v29)(_BYTE *, _WORD *); // r3
  int v30; // r3
  int v31; // r5
  _DWORD *v32; // r4
  int v33; // r3
  _DWORD *v34; // r5
  int v35; // r7
  int v36; // r3
  unsigned int v37; // r0
  int v38; // r3
  unsigned int v39; // r9
  int v40; // r10
  int v41; // r3
  int v42; // r3
  int v43; // r2
  int v44; // r2
  int v45; // r2
  int v46; // r2
  _BYTE v48[128]; // [sp+10h] [bp-B4h] BYREF
  _BYTE *v49; // [sp+90h] [bp-34h] BYREF
  int v50; // [sp+94h] [bp-30h]
  int v51; // [sp+98h] [bp-2Ch]
  char v52; // [sp+9Ch] [bp-28h]
  _BYTE *v53; // [sp+A0h] [bp-24h] BYREF
  int v54; // [sp+A4h] [bp-20h]
  int v55; // [sp+A8h] [bp-1Ch]
  char v56; // [sp+ACh] [bp-18h]
  _BYTE v57[2]; // [sp+B0h] [bp-14h] BYREF
  __int16 v58; // [sp+B2h] [bp-12h]
  int v59; // [sp+B4h] [bp-10h]
  _WORD v60[2]; // [sp+B8h] [bp-Ch] BYREF
  int v61; // [sp+BCh] [bp-8h]

  v2 = this;
  if ( !*(this + 236) )
  {
    (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)this + 328))(this);
    v29 = *(int (__fastcall **)(_BYTE *, _WORD *))(*(_DWORD *)v2 + 44);
    strcpy((char *)v60, "\n");
    v61 = 0;
    v60[1] = 0;
    this = (_BYTE *)v29(v2, v60);
  }
  if ( v2[155] || !v2[236] )
  {
    v2[157] = *((_DWORD *)v2 + 52) > 0;
    gameswf::character::do_mouse_drag((gameswf::character *)v2);
    if ( *((int *)v2 + 52) > 0 )
    {
      v3 = 0;
      v4 = v2 + 204;
      while ( 1 )
      {
        LC_API_MEMSET_0(v48, 0, 0x80u);
        v5 = *((_DWORD *)v2 + 52);
        v6 = &v49;
        v49 = v48;
        v51 = 32;
        if ( v5 > 31 )
          v6 = &v53;
        v50 = 0;
        v52 = 1;
        v53 = nullptr;
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v7 = v6[1];
        if ( v5 && v5 > v6[2] )
          gameswf::array<gameswf::action_buffer *>::reserve((int)v6, v5 + (v5 >> 1));
        if ( v5 > v7 )
        {
          v8 = 4 * v7;
          do
          {
            ++v7;
            *(_DWORD *)(*v6 + v8) = 0;
            v8 += 4;
          }
          while ( v7 != v5 );
        }
        v6[1] = v5;
        if ( v5 > 0 )
        {
          v9 = 0;
          do
          {
            *(_DWORD *)(*v6 + 4 * v9) = *(_DWORD *)(*v4 + 4 * v9);
            ++v9;
          }
          while ( v9 < v6[1] );
        }
        v10 = *((_DWORD *)v2 + 52);
        if ( v10 < 0 )
        {
          v26 = 4 * v10;
          do
          {
            ++v10;
            *(_DWORD *)(*v4 + v26) = 0;
            v26 += 4;
          }
          while ( v10 );
        }
        v11 = *(_DWORD *)v2;
        *((_DWORD *)v2 + 52) = 0;
        v12 = (gameswf::as_environment *)(*(int (__fastcall **)(_BYTE *))(v11 + 88))(v2);
        gameswf::execute_actions(v12, v6);
        if ( v3 == 11 )
          break;
        v14 = v54;
        if ( v54 < 0 )
        {
          v28 = 4 * v54;
          do
          {
            ++v14;
            *(_DWORD *)&v53[v28] = 0;
            v28 += 4;
          }
          while ( v14 );
        }
        v54 = 0;
        gameswf::array<gameswf::action_buffer *>::reserve((int)&v53, 0);
        v15 = v50;
        if ( v50 < 0 )
        {
          v27 = 4 * v50;
          do
          {
            ++v15;
            *(_DWORD *)&v49[v27] = 0;
            v27 += 4;
          }
          while ( v15 );
        }
        v50 = 0;
        gameswf::array<gameswf::action_buffer *>::reserve((int)&v49, 0);
        if ( *((int *)v2 + 52) <= 0 )
          goto LABEL_27;
        ++v3;
      }
      gameswf::log_msg("stop recursive loop gotoAndPlay/gotoAndStop (more than 10)", v13);
      v16 = v54;
      if ( v54 < 0 )
      {
        v43 = 4 * v54;
        do
        {
          ++v16;
          *(_DWORD *)&v53[v43] = 0;
          v43 += 4;
        }
        while ( v16 );
      }
      v54 = 0;
      gameswf::array<gameswf::action_buffer *>::reserve((int)&v53, 0);
      v17 = v50;
      if ( v50 < 0 )
      {
        v44 = 4 * v50;
        do
        {
          ++v17;
          *(_DWORD *)&v49[v44] = 0;
          v44 += 4;
        }
        while ( v17 );
      }
      v50 = 0;
      gameswf::array<gameswf::action_buffer *>::reserve((int)&v49, 0);
    }
LABEL_27:
    v18 = (char)v2[230];
    if ( v2[230] )
      goto LABEL_32;
    v19 = v2[157];
    v20 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)v2 + 40) + 56))(*((_DWORD *)v2 + 40));
    v21 = (unsigned __int8)v2[236];
    v22 = v20 > 1 ? v19 | 1 : v19;
    v2[157] = v22;
    v23 = *((unsigned __int16 *)v2 + 114);
    if ( !v21 )
      goto LABEL_32;
    v30 = *((_DWORD *)v2 + 40);
    *((_WORD *)v2 + 114) = v23 + 1;
    if ( (__int16)(v23 + 1) >= (*(int (__fastcall **)(int))(*(_DWORD *)v30 + 56))(v30) )
      *((_WORD *)v2 + 114) = v18;
    v31 = *((unsigned __int16 *)v2 + 114);
    if ( v31 == v23 )
    {
LABEL_32:
      v24 = (gameswf::display_list *)(v2 + 168);
LABEL_33:
      if ( v2[233] )
      {
        if ( v2[236] )
        {
          v25 = *(void (__fastcall **)(_BYTE *, _BYTE *))(*(_DWORD *)v2 + 44);
          v57[0] = 12;
          v59 = 0;
          v57[1] = 0;
          v58 = 0;
          v25(v2, v57);
        }
        v2[157] = 1;
      }
      gameswf::sprite_instance::do_actions((gameswf::sprite_instance *)v2);
      this = (_BYTE *)gameswf::display_list::advance(v24, a2);
      if ( this )
        v2[157] = 1;
      v2[236] = 1;
      return this;
    }
    if ( *((_WORD *)v2 + 114)
      || (*(int (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)v2 + 40) + 56))(*((_DWORD *)v2 + 40), (__int16)v31) <= 1 )
    {
      v24 = (gameswf::display_list *)(v2 + 168);
LABEL_55:
      (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)v2 + 200))(v2);
      v2[157] = 1;
      goto LABEL_33;
    }
    v32 = (_DWORD *)(*(int (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)v2 + 40) + 80))(*((_DWORD *)v2 + 40), 0);
    LC_API_MEMSET_0(v48, 0, 0x80u);
    v55 = 32;
    v53 = v48;
    v56 = 1;
    v52 = 0;
    v54 = 0;
    v49 = nullptr;
    v50 = 0;
    v51 = 0;
    v33 = v32[1];
    if ( v33 > 31 )
    {
      v34 = &v49;
    }
    else
    {
      if ( v33 <= 0 )
      {
        v34 = &v53;
LABEL_64:
        v24 = (gameswf::display_list *)(v2 + 168);
        if ( (int)v34[1] <= 0 )
          gameswf::display_list::clear((int)(v2 + 168));
        else
          gameswf::display_list::clear_unaffected((int)(v2 + 168), v34);
        v41 = v50;
        if ( v50 < 0 )
        {
          v45 = 4 * v50;
          do
          {
            ++v41;
            *(_DWORD *)&v49[v45] = 0;
            v45 += 4;
          }
          while ( v41 );
        }
        v50 = 0;
        gameswf::array<int>::reserve((int)&v49, 0);
        v42 = v54;
        if ( v54 < 0 )
        {
          v46 = 4 * v54;
          do
          {
            ++v42;
            *(_DWORD *)&v53[v46] = 0;
            v46 += 4;
          }
          while ( v42 );
        }
        v54 = 0;
        gameswf::array<int>::reserve((int)&v53, 0);
        goto LABEL_55;
      }
      v34 = &v53;
    }
    v35 = 0;
    do
    {
      v36 = *(_DWORD *)(*v32 + 4 * v35++);
      v37 = (*(int (__fastcall **)(int))(*(_DWORD *)v36 + 28))(v36);
      v38 = v34[1];
      v39 = HIWORD(v37);
      v40 = v38 + 1;
      if ( v38 + 1 > v34[2] )
      {
        gameswf::array<int>::reserve((int)v34, v40 + (v40 >> 1));
        v38 = v34[1];
      }
      *(_DWORD *)(*v34 + 4 * v38) = v39;
      v34[1] = v40;
    }
    while ( v35 < v32[1] );
    goto LABEL_64;
  }
  return this;
}


// ===== 782a04 gameswf::sprite_instance::clone_display_object(gameswf::tu_string const&,int) =====
gameswf::ref_counted **__fastcall gameswf::sprite_instance::clone_display_object(
        gameswf::sprite_instance *this,
        const gameswf::tu_string *a2,
        int a3)
{
  int v3; // r7
  const gameswf::tu_string *v5; // r8
  _BYTE *v7; // r0
  gameswf::player *v8; // r0
  _BYTE *v9; // r3
  gameswf::ref_counted **sprite_instance; // r5
  _DWORD *canvas; // r8
  _DWORD *v12; // r9
  bool v14; // zf
  gameswf::player *v15; // r5
  int v16; // r3
  gameswf::player *v17; // r9
  gameswf::movie_definition_sub *v18; // r0

  v3 = *((_DWORD *)this + 16);
  v5 = a2;
  if ( !v3 )
    goto LABEL_14;
  v7 = *((_BYTE **)this + 15);
  if ( !v7[4] )
  {
    a2 = (const gameswf::tu_string *)(*(_DWORD *)v7 - 1);
    v14 = *(_DWORD *)v7 == 1;
    *(_DWORD *)v7 = a2;
    if ( v14 )
      gameswf::free_internal(v7);
    *((_DWORD *)this + 16) = 0;
    *((_DWORD *)this + 15) = 0;
    goto LABEL_14;
  }
  if ( !(*(int (__fastcall **)(int, int))(*(_DWORD *)v3 + 8))(v3, 2) )
  {
LABEL_14:
    gameswf::log_error("can't clone _root\n", (const char *)a2);
    return nullptr;
  }
  if ( *((_DWORD *)this + 14) == -1 )
  {
    v15 = *((gameswf::player **)this + 12);
    if ( v15 )
    {
      v16 = *((_DWORD *)this + 11);
      v17 = (gameswf::player *)*(unsigned __int8 *)(v16 + 4);
      if ( !*(_BYTE *)(v16 + 4) )
      {
        gameswf::smart_ptr_proxy::operator=((_DWORD **)this + 11, (_DWORD *)*(unsigned __int8 *)(v16 + 4));
        v15 = v17;
        *((_DWORD *)this + 12) = v17;
      }
    }
    v18 = (gameswf::movie_definition_sub *)gameswf::cast_to<gameswf::movie_def_impl>(*((_DWORD *)this + 40));
    sprite_instance = gameswf::player::create_sprite_instance(
                        v15,
                        v18,
                        *((gameswf::root **)this + 41),
                        (gameswf::character *)v3,
                        -1);
    gameswf::weak_ptr<gameswf::character>::operator=((int)(sprite_instance + 15), (gameswf::ref_counted *)v3);
    sprite_instance[41] = *((gameswf::ref_counted **)this + 41);
    gameswf::character::set_name((gameswf::tu_string *)sprite_instance, v5);
  }
  else
  {
    v8 = *((gameswf::player **)this + 12);
    if ( v8 )
    {
      v9 = *((_BYTE **)this + 11);
      if ( !v9[4] )
      {
        v14 = (*(_DWORD *)v9)-- == 1;
        if ( v14 )
          gameswf::free_internal(v9);
        v8 = nullptr;
        *((_DWORD *)this + 11) = 0;
        *((_DWORD *)this + 12) = 0;
      }
    }
    sprite_instance = gameswf::player::create_sprite_instance(
                        v8,
                        *((gameswf::movie_definition_sub **)this + 40),
                        *((gameswf::root **)this + 41),
                        (gameswf::character *)v3,
                        0);
    gameswf::weak_ptr<gameswf::character>::operator=((int)(sprite_instance + 15), (gameswf::ref_counted *)v3);
    sprite_instance[41] = *((gameswf::ref_counted **)this + 41);
    gameswf::character::set_name((gameswf::tu_string *)sprite_instance, v5);
    if ( *((_DWORD *)this + 60) )
    {
      canvas = (_DWORD *)gameswf::sprite_instance::get_canvas((gameswf::sprite_instance *)sprite_instance);
      v12 = (_DWORD *)gameswf::sprite_instance::get_canvas(this);
      gameswf::shape_character_def::operator=((int)canvas, (int)v12);
      canvas[34] = v12[34];
      canvas[35] = v12[35];
      canvas[36] = v12[36];
      canvas[37] = v12[37];
      canvas[38] = v12[38];
    }
  }
  gameswf::display_list::add_display_object(
    (gameswf::display_list *)(v3 + 168),
    (gameswf::character *)sprite_instance,
    a3,
    1,
    (const gameswf::cxform *)&gameswf::cxform::identity,
    (const gameswf::matrix *)&gameswf::matrix::identity,
    (const gameswf::effect *)&gameswf::effect::identity,
    *((float *)this + 36),
    *((_WORD *)this + 75));
  gameswf::character::set_cxform((int)sprite_instance, *((int **)this + 18));
  gameswf::character::set_matrix((int)sprite_instance, *((int **)this + 19));
  gameswf::character::set_effect((int)sprite_instance, *((_DWORD **)this + 20));
  (*(void (__fastcall **)(gameswf::sprite_instance *, gameswf::ref_counted **))(*(_DWORD *)this + 72))(
    this,
    sprite_instance);
  return sprite_instance;
}


// ===== 782c94 gameswf::sprite_instance::hit_test(gameswf::character *) =====
bool __fastcall gameswf::sprite_instance::hit_test(gameswf::character **this, gameswf::character **a2)
{
  gameswf::character *v4; // r0
  _BYTE *v5; // r3
  char *world_matrix; // r0
  gameswf::character *v7; // r0
  gameswf::character *v8; // r3
  char *v9; // r0
  bool v11; // zf
  float v12[4]; // [sp+0h] [bp-20h] BYREF
  float v13[4]; // [sp+10h] [bp-10h] BYREF

  (*((void (__fastcall **)(gameswf::character **, float *))*this + 75))(this, v13);
  v4 = *(this + 16);
  if ( v4 )
  {
    v5 = *(this + 15);
    if ( v5[4] )
    {
      world_matrix = gameswf::character::get_world_matrix(v4);
      gameswf::matrix::transform(world_matrix, v13);
    }
    else
    {
      v11 = (*(_DWORD *)v5)-- == 1;
      if ( v11 )
        gameswf::free_internal(v5);
      *(this + 16) = nullptr;
      *(this + 15) = nullptr;
    }
  }
  (*((void (__fastcall **)(gameswf::character **, float *))*a2 + 75))(a2, v12);
  v7 = a2[16];
  if ( v7 )
  {
    v8 = a2[15];
    if ( *((_BYTE *)v8 + 4) )
    {
      v9 = gameswf::character::get_world_matrix(v7);
      gameswf::matrix::transform(v9, v12);
    }
    else
    {
      v11 = (*(_DWORD *)v8)-- == 1;
      if ( v11 )
        gameswf::free_internal(v8);
      a2[16] = nullptr;
      a2[15] = nullptr;
    }
  }
  return v13[3] >= v12[2] && v13[2] <= v12[3] && v13[1] >= v12[0] && v13[0] <= v12[1];
}


// ===== 782de4 gameswf::sprite_instance::is_enabled(void) =====
int __fastcall gameswf::sprite_instance::is_enabled(gameswf::sprite_instance *this)
{
  int result; // r0
  int v3; // r3
  _BYTE *v4; // r0

  result = *((unsigned __int8 *)this + 234);
  if ( result )
  {
    v3 = *((_DWORD *)this + 16);
    if ( v3 )
    {
      v4 = *((_BYTE **)this + 15);
      if ( v4[4] )
      {
        return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 368))(*((_DWORD *)this + 16));
      }
      else
      {
        if ( (*(_DWORD *)v4)-- == 1 )
          gameswf::free_internal(v4);
        *((_DWORD *)this + 16) = 0;
        *((_DWORD *)this + 15) = 0;
        return 1;
      }
    }
    else
    {
      return 1;
    }
  }
  return result;
}


// ===== 782e60 gameswf::sprite_instance::attach_movie(gameswf::tu_string const&,gameswf::tu_string,int) =====
gameswf::ref_counted **__fastcall gameswf::sprite_instance::attach_movie(
        const gameswf::cxform **a1,
        int a2,
        const gameswf::tu_string *a3,
        int a4)
{
  int v7; // r0
  gameswf::movie_definition_sub *v8; // r5
  gameswf::ref_counted **sprite_instance; // r5
  gameswf::player *v11; // r0
  const gameswf::cxform *v12; // r3

  v7 = (*((int (__fastcall **)(const gameswf::cxform **))*a1 + 33))(a1);
  v8 = (gameswf::movie_definition_sub *)v7;
  if ( !v7 || !(*(int (__fastcall **)(int, int))(*(_DWORD *)v7 + 8))(v7, 11) )
    return nullptr;
  v11 = a1[12];
  if ( v11 )
  {
    v12 = a1[11];
    if ( !*((_BYTE *)v12 + 4) )
    {
      if ( (*(_DWORD *)v12)-- == 1 )
        gameswf::free_internal(v12);
      v11 = nullptr;
      a1[11] = nullptr;
      a1[12] = nullptr;
    }
  }
  sprite_instance = gameswf::player::create_sprite_instance(v11, v8, a1[41], (gameswf::character *)a1, -1);
  gameswf::character::set_name((gameswf::tu_string *)sprite_instance, a3);
  gameswf::display_list::add_display_object(
    (gameswf::display_list *)(a1 + 42),
    (gameswf::character *)sprite_instance,
    a4,
    1,
    a1[18],
    a1[19],
    a1[20],
    0.0,
    0);
  (*((void (__fastcall **)(gameswf::ref_counted **, int))*sprite_instance + 23))(sprite_instance, 1065353216);
  return sprite_instance;
}


// ===== 782f6c gameswf::sprite_instance::hit_test(float,float,bool) =====
bool __fastcall gameswf::sprite_instance::hit_test(gameswf::sprite_instance *this, float a2, float a3, int a4)
{
  gameswf::matrix *v7; // r0
  int v8; // r1
  int i; // r4
  _BYTE *v10; // r3
  gameswf::character *v12; // r0
  _BYTE *v13; // r3
  char *world_matrix; // r0
  float v16; // [sp+0h] [bp-1Ch] BYREF
  float v17; // [sp+4h] [bp-18h]
  float v18; // [sp+8h] [bp-14h]
  float v19; // [sp+Ch] [bp-10h]
  _DWORD v20[3]; // [sp+10h] [bp-Ch] BYREF

  if ( a4 )
  {
    if ( *((_BYTE *)this + 155) )
    {
      v7 = *((gameswf::matrix **)this + 19);
      v17 = 0.0;
      *(float *)v20 = a2;
      *(float *)&v20[1] = a3;
      v16 = 0.0;
      gameswf::matrix::transform_by_inverse(v7, (gameswf::point *)&v16, (const gameswf::point *)v20);
      v8 = *((_DWORD *)this + 43);
      if ( v8 > 0 )
      {
        for ( i = 0; i < v8; ++i )
        {
          v10 = *(_BYTE **)(*((_DWORD *)this + 42) + 4 * i);
          if ( v10 && v10[155] )
          {
            if ( (*(int (__fastcall **)(_DWORD, float, float))(*(_DWORD *)v10 + 108))(
                   *(_DWORD *)(*((_DWORD *)this + 42) + 4 * i),
                   COERCE_FLOAT(LODWORD(v16)),
                   COERCE_FLOAT(LODWORD(v17))) )
            {
              return 1;
            }
            v8 = *((_DWORD *)this + 43);
          }
        }
      }
    }
  }
  else
  {
    (*(void (__fastcall **)(gameswf::sprite_instance *, float *))(*(_DWORD *)this + 300))(this, &v16);
    v12 = *((gameswf::character **)this + 16);
    if ( v12 )
    {
      v13 = *((_BYTE **)this + 15);
      if ( v13[4] )
      {
        world_matrix = gameswf::character::get_world_matrix(v12);
        gameswf::matrix::transform(world_matrix, &v16);
      }
      else
      {
        if ( (*(_DWORD *)v13)-- == 1 )
          gameswf::free_internal(v13);
        *((_DWORD *)this + 16) = 0;
        *((_DWORD *)this + 15) = 0;
      }
    }
    if ( a2 >= v16 && a2 <= v17 && a3 >= v18 )
      return a3 <= v19;
  }
  return 0;
}


// ===== 7830ec gameswf::sprite_instance::hit_test(float,float) =====
bool __fastcall gameswf::sprite_instance::hit_test(gameswf::sprite_instance *this, float a2, float a3)
{
  return gameswf::sprite_instance::hit_test(this, a2, a3, 1);
}


// ===== 7830f4 gameswf::sprite_definition::is(int) =====
bool __fastcall gameswf::sprite_definition::is(gameswf::sprite_definition *this, int a2)
{
  return a2 == 11 || a2 == 9 || a2 == 10;
}


// ===== 78311c gameswf::sprite_definition::get_width_pixels(void) =====
int __fastcall gameswf::sprite_definition::get_width_pixels(gameswf::sprite_definition *this)
{
  return 1065353216;
}


// ===== 783124 gameswf::sprite_definition::get_height_pixels(void) =====
int __fastcall gameswf::sprite_definition::get_height_pixels(gameswf::sprite_definition *this)
{
  return 1065353216;
}


// ===== 78312c gameswf::sprite_definition::get_frame_rate(void) =====
int __fastcall gameswf::sprite_definition::get_frame_rate(gameswf::sprite_definition *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 17);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 60))(*((_DWORD *)this + 17));
  else
    return 0;
}


// ===== 783158 gameswf::sprite_definition::get_version(void) =====
int __fastcall gameswf::sprite_definition::get_version(gameswf::sprite_definition *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 17);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 44))(*((_DWORD *)this + 17));
  else
    return 0;
}


// ===== 783184 gameswf::sprite_definition::add_abc(gameswf::tu_string &,gameswf::abc_def *) =====
void gameswf::sprite_definition::add_abc()
{
  ;
}


// ===== 783188 gameswf::sprite_definition::add_symbol_class(int,gameswf::tu_string const&) =====
void __fastcall gameswf::sprite_definition::add_symbol_class(
        gameswf::sprite_definition *this,
        int a2,
        const gameswf::tu_string *a3)
{
  ;
}


// ===== 78318c gameswf::sprite_definition::add_scene(int,gameswf::tu_string const&) =====
void __fastcall gameswf::sprite_definition::add_scene(
        gameswf::sprite_definition *this,
        int a2,
        const gameswf::tu_string *a3)
{
  ;
}


// ===== 783190 gameswf::sprite_definition::add_frame_label(int,gameswf::tu_string const&) =====
void __fastcall gameswf::sprite_definition::add_frame_label(
        gameswf::sprite_definition *this,
        int a2,
        const gameswf::tu_string *a3)
{
  ;
}


// ===== 783194 gameswf::sprite_definition::get_font(int) =====
int __fastcall gameswf::sprite_definition::get_font(gameswf::sprite_definition *this, int a2)
{
  return (*(int (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 17) + 124))(*((_DWORD *)this + 17), a2);
}


// ===== 7831b0 gameswf::sprite_definition::set_jpeg_loader(gameswf::jpeg::input *) =====
void gameswf::sprite_definition::set_jpeg_loader()
{
  ;
}


// ===== 7831b4 gameswf::sprite_definition::get_jpeg_loader(void) =====
int __fastcall gameswf::sprite_definition::get_jpeg_loader(gameswf::sprite_definition *this)
{
  return 0;
}


// ===== 7831bc gameswf::sprite_definition::get_bitmap_character(int) =====
int __fastcall gameswf::sprite_definition::get_bitmap_character(gameswf::sprite_definition *this, int a2)
{
  return (*(int (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 17) + 152))(*((_DWORD *)this + 17), a2);
}


// ===== 7831d8 gameswf::sprite_definition::get_sound_sample(int) =====
int __fastcall gameswf::sprite_definition::get_sound_sample(gameswf::sprite_definition *this, int a2)
{
  return (*(int (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 17) + 160))(*((_DWORD *)this + 17), a2);
}


// ===== 7831f4 gameswf::sprite_definition::get_create_bitmaps(void) =====
int __fastcall gameswf::sprite_definition::get_create_bitmaps(gameswf::sprite_definition *this)
{
  return 0;
}


// ===== 7831fc gameswf::sprite_definition::get_create_font_shapes(void) =====
int __fastcall gameswf::sprite_definition::get_create_font_shapes(gameswf::sprite_definition *this)
{
  return 0;
}


// ===== 783204 gameswf::sprite_definition::get_bitmap_info_count(void) =====
int __fastcall gameswf::sprite_definition::get_bitmap_info_count(gameswf::sprite_definition *this)
{
  return 0;
}


// ===== 78320c gameswf::sprite_definition::get_bitmap_info(int) =====
int __fastcall gameswf::sprite_definition::get_bitmap_info(gameswf::sprite_definition *this, int a2)
{
  return 0;
}


// ===== 783214 gameswf::sprite_definition::add_bitmap_info(gameswf::bitmap_info *) =====
void __fastcall gameswf::sprite_definition::add_bitmap_info(gameswf::sprite_definition *this, gameswf::bitmap_info *a2)
{
  ;
}


// ===== 783218 gameswf::sprite_definition::get_exported_resource(gameswf::tu_string const&) =====
int __fastcall gameswf::sprite_definition::get_exported_resource(
        gameswf::sprite_definition *this,
        const gameswf::tu_string *a2)
{
  return (*(int (__fastcall **)(_DWORD, const gameswf::tu_string *))(**((_DWORD **)this + 17) + 88))(
           *((_DWORD *)this + 17),
           a2);
}


// ===== 783234 gameswf::sprite_definition::add_import(gameswf::tu_string const&,int,gameswf::tu_string const&) =====
void __fastcall gameswf::sprite_definition::add_import(
        gameswf::sprite_definition *this,
        const gameswf::tu_string *a2,
        int a3,
        const gameswf::tu_string *a4)
{
  ;
}


// ===== 783238 gameswf::sprite_definition::visit_imported_movies(gameswf::movie_definition::import_visitor *) =====
void gameswf::sprite_definition::visit_imported_movies()
{
  ;
}


// ===== 78323c gameswf::sprite_definition::get_character_def(int) =====
int __fastcall gameswf::sprite_definition::get_character_def(gameswf::sprite_definition *this, int a2)
{
  return (*(int (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 17) + 92))(*((_DWORD *)this + 17), a2);
}


// ===== 783258 gameswf::sprite_definition::output_cached_data(gameswf::tu_file *,gameswf::cache_options const&) =====
void gameswf::sprite_definition::output_cached_data()
{
  ;
}


// ===== 78325c gameswf::sprite_definition::input_cached_data(gameswf::tu_file *) =====
void gameswf::sprite_definition::input_cached_data()
{
  ;
}


// ===== 783260 gameswf::sprite_definition::create_instance(void) =====
int __fastcall gameswf::sprite_definition::create_instance(gameswf::sprite_definition *this)
{
  return 0;
}


// ===== 783268 gameswf::sprite_definition::has_init_actions(void) =====
int __fastcall gameswf::sprite_definition::has_init_actions(gameswf::sprite_definition *this)
{
  return 0;
}


// ===== 783270 gameswf::sprite_definition::get_playlist(int) =====
int __fastcall gameswf::sprite_definition::get_playlist(gameswf::sprite_definition *this, int a2)
{
  return *((_DWORD *)this + 18) + 16 * a2;
}


// ===== 78327c gameswf::sprite_definition::get_init_actions(int) =====
int __fastcall gameswf::sprite_definition::get_init_actions(gameswf::sprite_definition *this, int a2)
{
  return 0;
}


// ===== 783284 gameswf::sprite_definition::export_resource(gameswf::tu_string const&,gameswf::character_def *) =====
const char *__fastcall gameswf::sprite_definition::export_resource(
        gameswf::sprite_definition *this,
        const gameswf::tu_string *a2,
        gameswf::character_def *a3)
{
  return gameswf::log_error("can't export from sprite\n", (const char *)a2, a3);
}


// ===== 783294 gameswf::sprite_definition::add_sound_sample(int,gameswf::sound_sample *) =====
const char *__fastcall gameswf::sprite_definition::add_sound_sample(
        gameswf::sprite_definition *this,
        const char *a2,
        gameswf::sound_sample *a3)
{
  return gameswf::log_error("add sam appears in sprite tags!\n", a2, a3);
}


// ===== 7832a4 gameswf::sprite_definition::add_bitmap_character(int,gameswf::bitmap_character_def *) =====
const char *__fastcall gameswf::sprite_definition::add_bitmap_character(
        gameswf::sprite_definition *this,
        const char *a2,
        gameswf::bitmap_character_def *a3)
{
  return gameswf::log_error("add_bc appears in sprite tags!\n", a2, a3);
}


// ===== 7832b4 gameswf::sprite_definition::add_init_action(int,gameswf::execute_tag *) =====
const char *__fastcall gameswf::sprite_definition::add_init_action(
        gameswf::sprite_definition *this,
        const char *a2,
        gameswf::execute_tag *a3)
{
  return gameswf::log_error("sprite_definition::add_init_action called!  Ignored.\n", a2, a3);
}


// ===== 7832c4 gameswf::sprite_definition::add_font(int,gameswf::font *) =====
const char *__fastcall gameswf::sprite_definition::add_font(gameswf::sprite_definition *this, const char *a2, font *a3)
{
  return gameswf::log_error("add_font tag appears in sprite tags!\n", a2, a3);
}


// ===== 7832d4 gameswf::sprite_definition::add_character(int,gameswf::character_def *) =====
const char *__fastcall gameswf::sprite_definition::add_character(
        gameswf::sprite_definition *this,
        const char *a2,
        gameswf::character_def *a3)
{
  return gameswf::log_error("add_character tag appears in sprite tags!\n", a2, a3);
}


// ===== 7832e4 gameswf::sprite_definition::get_labeled_frame(gameswf::tu_stringi const&,int *) =====
int __fastcall gameswf::sprite_definition::get_labeled_frame(int a1, gameswf::tu_string *a2, _DWORD *a3)
{
  int result; // r0
  int v6; // r2
  int v7; // r3
  gameswf::tu_string *v8; // [sp+4h] [bp-8h] BYREF

  v8 = a2;
  result = gameswf::hash<gameswf::stringi_pointer,int,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::find_index(
             (int *)(a1 + 88),
             &v8);
  v7 = result;
  if ( result < 0 )
    return 0;
  if ( a3 )
    v6 = *(_DWORD *)(a1 + 88);
  else
    result = 1;
  if ( a3 )
  {
    *a3 = *(_DWORD *)(v6 + 16 * v7 + 20);
    return 1;
  }
  return result;
}


// ===== 783338 gameswf::sprite_definition::~sprite_definition() =====
void __fastcall gameswf::sprite_definition::~sprite_definition(gameswf::sprite_definition *this)
{
  int v1; // r10
  int i; // r8
  int v4; // r3
  int v5; // r7
  int v6; // r5
  void (__fastcall ***v7)(_DWORD); // r0

  v1 = *((_DWORD *)this + 19);
  *(_DWORD *)this = off_990820;
  *((_BYTE *)this + 65) = 1;
  if ( v1 > 0 )
  {
    for ( i = 0; i != v1; ++i )
    {
      v4 = *((_DWORD *)this + 18);
      v5 = *(_DWORD *)(v4 + 16 * i + 4);
      if ( v5 > 0 )
      {
        v6 = 0;
        while ( 1 )
        {
          v7 = *(void (__fastcall ****)(_DWORD))(*(_DWORD *)(v4 + 16 * i) + 4 * v6++);
          gameswf::destruct<gameswf::execute_tag>(v7);
          if ( v6 == v5 )
            break;
          v4 = *((_DWORD *)this + 18);
        }
      }
    }
  }
  gameswf::hash<gameswf::stringi_pointer,int,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::clear((_DWORD **)this + 22);
  gameswf::array<gameswf::array<gameswf::execute_tag *>>::resize((_DWORD *)this + 18, 0);
  gameswf::array<gameswf::array<gameswf::execute_tag *>>::reserve((int)this + 72, 0);
  gameswf::movie_definition_sub::~movie_definition_sub(this);
}


// ===== 7833f4 gameswf::sprite_definition::read(gameswf::stream *) =====
gameswf::stream *__fastcall gameswf::sprite_definition::read(gameswf::sprite_definition *this, gameswf::stream *a2)
{
  unsigned int tag_end_position; // r6
  int u16; // r0
  int v6; // r3
  int v7; // r0
  gameswf::stream *result; // r0
  void (__fastcall *v9)(gameswf::stream *, const char *, gameswf::sprite_definition *); // r9
  int v10; // r0
  const char *v11; // r10
  int v12; // r3
  void (__fastcall *v13)(gameswf::stream *, const char *, gameswf::sprite_definition *); // [sp+4h] [bp-4h] BYREF

  tag_end_position = gameswf::stream::get_tag_end_position(a2);
  u16 = gameswf::stream::read_u16(a2);
  if ( !u16 )
    v6 = 1;
  *((_DWORD *)this + 14) = u16;
  if ( !u16 )
    *((_DWORD *)this + 14) = v6;
  v7 = (*(int (__fastcall **)(gameswf::sprite_definition *))(*(_DWORD *)this + 56))(this);
  gameswf::array<gameswf::array<gameswf::execute_tag *>>::resize((_DWORD *)this + 18, v7);
  while ( 1 )
  {
    result = (gameswf::stream *)gameswf::stream::get_position(a2);
    if ( (unsigned int)result >= tag_end_position )
      break;
    v9 = (void (__fastcall *)(gameswf::stream *, const char *, gameswf::sprite_definition *))*((unsigned __int8 *)this
                                                                                             + 65);
    result = a2;
    if ( *((_BYTE *)this + 65) )
      break;
    v10 = gameswf::stream::open_tag(a2);
    v11 = (const char *)v10;
    v13 = v9;
    if ( v10 == 1 )
    {
      v12 = *(_DWORD *)this;
      ++*((_DWORD *)this + 15);
      (*(void (__fastcall **)(gameswf::sprite_definition *, void (__fastcall **)(gameswf::stream *, const char *, gameswf::sprite_definition *)))(v12 + 188))(
        this,
        &v13);
    }
    else if ( gameswf::get_tag_loader(v10, &v13) )
    {
      v13(a2, v11, this);
    }
    else
    {
      gameswf::log_msg("*** no tag loader for type %d\n", v11);
    }
    gameswf::stream::close_tag(a2);
  }
  return result;
}


// ===== 7834ec gameswf::sprite_definition::add_execute_tag(gameswf::execute_tag *) =====
void __fastcall gameswf::sprite_definition::add_execute_tag(gameswf::sprite_definition *this, gameswf::execute_tag *a2)
{
  int v2; // r6
  int v3; // r7
  int v5; // r4
  int v6; // r3
  int v7; // r5

  v2 = *((_DWORD *)this + 18);
  v3 = *((_DWORD *)this + 15);
  v5 = v2 + 16 * v3;
  v6 = *(_DWORD *)(v5 + 4);
  v7 = v6 + 1;
  if ( v6 + 1 > *(_DWORD *)(v5 + 8) )
  {
    gameswf::array<gameswf::execute_tag *>::reserve(v2 + 16 * v3, v7 + (v7 >> 1));
    v6 = *(_DWORD *)(v5 + 4);
  }
  *(_DWORD *)(*(_DWORD *)(v2 + 16 * v3) + 4 * v6) = a2;
  *(_DWORD *)(v5 + 4) = v7;
}


// ===== 783534 gameswf::sprite_definition::~sprite_definition() =====
void __fastcall gameswf::sprite_definition::~sprite_definition(gameswf::sprite_definition *this)
{
  int v1; // r10
  int i; // r8
  int v4; // r3
  int v5; // r7
  int v6; // r5
  void (__fastcall ***v7)(_DWORD); // r0

  v1 = *((_DWORD *)this + 19);
  *(_DWORD *)this = off_990820;
  *((_BYTE *)this + 65) = 1;
  if ( v1 > 0 )
  {
    for ( i = 0; i != v1; ++i )
    {
      v4 = *((_DWORD *)this + 18);
      v5 = *(_DWORD *)(v4 + 16 * i + 4);
      if ( v5 > 0 )
      {
        v6 = 0;
        while ( 1 )
        {
          v7 = *(void (__fastcall ****)(_DWORD))(*(_DWORD *)(v4 + 16 * i) + 4 * v6++);
          gameswf::destruct<gameswf::execute_tag>(v7);
          if ( v6 == v5 )
            break;
          v4 = *((_DWORD *)this + 18);
        }
      }
    }
  }
  gameswf::hash<gameswf::stringi_pointer,int,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::clear((_DWORD **)this + 22);
  gameswf::array<gameswf::array<gameswf::execute_tag *>>::resize((_DWORD *)this + 18, 0);
  gameswf::array<gameswf::array<gameswf::execute_tag *>>::reserve((int)this + 72, 0);
  gameswf::movie_definition_sub::~movie_definition_sub(this);
}


// ===== 7835f0 gameswf::sprite_definition::~sprite_definition() =====
void __fastcall gameswf::sprite_definition::~sprite_definition(gameswf::sprite_definition *this)
{
  gameswf::sprite_definition::~sprite_definition(this);
  LC_API_FREE_0(this);
}


// ===== 78360c gameswf::hash<gameswf::stringi_pointer,int,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::set(gameswf::stringi_pointer const&,int const&) =====
unsigned int __fastcall gameswf::hash<gameswf::stringi_pointer,int,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::set(
        int *a1,
        gameswf::tu_string **a2,
        _DWORD *a3)
{
  int index; // r0
  unsigned int result; // r0

  index = gameswf::hash<gameswf::stringi_pointer,int,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::find_index(
            a1,
            a2);
  if ( index < 0 )
    return gameswf::hash<gameswf::stringi_pointer,int,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::add(
             (_DWORD **)a1,
             (int)a2,
             a3);
  result = *a1 + 16 * index;
  *(_DWORD *)(result + 20) = *a3;
  return result;
}


// ===== 783650 gameswf::sprite_definition::sprite_definition(gameswf::player *,gameswf::movie_definition_sub *) =====
gameswf::sprite_definition *__fastcall gameswf::sprite_definition::sprite_definition(
        gameswf::sprite_definition *this,
        gameswf::player *a2,
        gameswf::movie_definition_sub *a3)
{
  _DWORD *v6; // r6
  _DWORD *v7; // r7
  int v8; // r3
  int v9; // r4

  gameswf::character_def::character_def(this, a2);
  *((_DWORD *)this + 10) = -1;
  *(_DWORD *)this = off_990820;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 8) = -1;
  *((_DWORD *)this + 9) = 0;
  *((_BYTE *)this + 44) = 0;
  *((_BYTE *)this + 45) = 0;
  *((_BYTE *)this + 46) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_BYTE *)this + 65) = 0;
  *((_DWORD *)this + 17) = a3;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_BYTE *)this + 84) = 0;
  if ( a3 )
    return this;
  *((_DWORD *)this + 14) = 1;
  *((_DWORD *)this + 15) = 1;
  gameswf::movie_definition_sub::is_multithread(this);
  gameswf::array<gameswf::array<gameswf::execute_tag *>>::resize((_DWORD *)this + 18, 1);
  v6 = *((_DWORD **)this + 18);
  v7 = operator new(4u, 0);
  *v7 = off_98FB88;
  v8 = v6[1];
  v9 = v8 + 1;
  if ( v8 + 1 > v6[2] )
  {
    gameswf::array<gameswf::execute_tag *>::reserve((int)v6, v9 + (v9 >> 1));
    v8 = v6[1];
  }
  *(_DWORD *)(*v6 + 4 * v8) = v7;
  v6[1] = v9;
  return this;
}


// ===== 783764 gameswf::sprite_definition::sprite_definition(gameswf::player *,gameswf::movie_definition_sub *) =====
gameswf::sprite_definition *__fastcall gameswf::sprite_definition::sprite_definition(
        gameswf::sprite_definition *this,
        gameswf::player *a2,
        gameswf::movie_definition_sub *a3)
{
  _DWORD *v6; // r6
  _DWORD *v7; // r7
  int v8; // r3
  int v9; // r4

  gameswf::character_def::character_def(this, a2);
  *((_DWORD *)this + 10) = -1;
  *(_DWORD *)this = off_990820;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 8) = -1;
  *((_DWORD *)this + 9) = 0;
  *((_BYTE *)this + 44) = 0;
  *((_BYTE *)this + 45) = 0;
  *((_BYTE *)this + 46) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_BYTE *)this + 65) = 0;
  *((_DWORD *)this + 17) = a3;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_BYTE *)this + 84) = 0;
  if ( a3 )
    return this;
  *((_DWORD *)this + 14) = 1;
  *((_DWORD *)this + 15) = 1;
  gameswf::movie_definition_sub::is_multithread(this);
  gameswf::array<gameswf::array<gameswf::execute_tag *>>::resize((_DWORD *)this + 18, 1);
  v6 = *((_DWORD **)this + 18);
  v7 = operator new(4u, 0);
  *v7 = off_98FB88;
  v8 = v6[1];
  v9 = v8 + 1;
  if ( v8 + 1 > v6[2] )
  {
    gameswf::array<gameswf::execute_tag *>::reserve((int)v6, v9 + (v9 >> 1));
    v8 = v6[1];
  }
  *(_DWORD *)(*v6 + 4 * v8) = v7;
  v6[1] = v9;
  return this;
}


// ===== 783878 gameswf::sprite_definition::add_frame_name(char const*) =====
unsigned int __fastcall gameswf::sprite_definition::add_frame_name(gameswf::sprite_definition *this, const char *a2)
{
  int v2; // r6
  _BYTE *v5; // r0
  int index; // r0
  int v9; // [sp+0h] [bp-24h] BYREF
  gameswf::tu_string *v10; // [sp+4h] [bp-20h] BYREF
  _BYTE v11[8]; // [sp+8h] [bp-1Ch] BYREF
  void *p; // [sp+14h] [bp-10h]

  v2 = *((_DWORD *)this + 7);
  if ( v2 )
  {
    v5 = *((_BYTE **)this + 6);
    if ( !v5[4] )
    {
      if ( (*(_DWORD *)v5)-- == 1 )
        gameswf::free_internal(v5);
      v2 = 0;
      *((_DWORD *)this + 6) = 0;
      *((_DWORD *)this + 7) = 0;
    }
  }
  gameswf::tu_string::tu_string((gameswf::tu_string *)v11, a2);
  v10 = gameswf::permanent_string_cache::get((char **)(v2 + 44), (const gameswf::tu_string *)v11);
  if ( v11[0] == -1 )
    gameswf::free_internal(p);
  index = gameswf::hash<gameswf::stringi_pointer,int,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::find_index(
            (int *)this + 22,
            &v10);
  if ( index >= 0 )
    gameswf::log_error(
      "add_frame_name(%d, '%s') -- frame name already assigned to frame %d; overriding\n",
      *((const char **)this + 15),
      a2,
      *(_DWORD *)(*((_DWORD *)this + 22) + 16 * index + 20));
  v9 = *((_DWORD *)this + 15);
  return gameswf::hash<gameswf::stringi_pointer,int,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::set(
           (int *)this + 22,
           &v10,
           &v9);
}


// ===== 7839a4 gameswf::stream::read_uint(int) =====
int __fastcall gameswf::stream::read_uint(gameswf::stream *this, int a2)
{
  int v2; // r5
  int result; // r0
  int v5; // r6
  int v6; // r3
  int v7; // r2
  int v8; // r0
  char v9; // r5
  int v10; // r3
  char v11; // r3
  _BYTE v12[5]; // [sp+7h] [bp-5h] BYREF

  v2 = a2;
  if ( a2 <= 0 )
    return 0;
  v5 = 0;
  while ( 1 )
  {
    v6 = *((unsigned __int8 *)this + 9);
    if ( !*((_BYTE *)this + 9) )
    {
      (*(void (__fastcall **)(_BYTE *, int, _DWORD))(*((_DWORD *)this + 1) + 8))(v12, 1, **((_DWORD **)this + 1));
      v11 = v12[0];
      *((_BYTE *)this + 9) = 8;
      *((_BYTE *)this + 8) = v11;
      goto LABEL_7;
    }
    if ( v6 > v2 )
      break;
    v7 = *((unsigned __int8 *)this + 8);
    v2 -= v6;
    *((_BYTE *)this + 8) = 0;
    v5 |= v7 << v2;
    *((_BYTE *)this + 9) = 0;
LABEL_7:
    if ( v2 <= 0 )
      return v5;
  }
  v8 = *((unsigned __int8 *)this + 8);
  v9 = v6 - v2;
  v10 = v8 & ~(-1 << v9);
  result = v5 | (v8 >> v9);
  *((_BYTE *)this + 8) = v10;
  *((_BYTE *)this + 9) = v9;
  return result;
}


// ===== 783a50 gameswf::stream::read_bool(void) =====
bool __fastcall gameswf::stream::read_bool(gameswf::stream *this)
{
  return gameswf::stream::read_uint(this, 1) != 0;
}


// ===== 783a68 gameswf::stream::read_sint(int) =====
int __fastcall gameswf::stream::read_sint(gameswf::stream *this, int a2)
{
  char v2; // r4
  int result; // r0

  v2 = a2;
  result = gameswf::stream::read_uint(this, a2);
  if ( ((result >> (v2 - 1)) & 1) != 0 )
    return result | (-1 << v2);
  return result;
}


// ===== 783a8c gameswf::stream::read_float16(void) =====
int __fastcall gameswf::stream::read_float16(gameswf::stream *this)
{
  int v1; // r3
  int v2; // r2
  int v3; // r0
  _WORD v5[3]; // [sp+6h] [bp-6h] BYREF

  v1 = *((_DWORD *)this + 1);
  *((_BYTE *)this + 9) = 0;
  (*(void (__fastcall **)(_WORD *, int, _DWORD))(v1 + 8))(v5, 2, *(_DWORD *)v1);
  v2 = (v5[0] >> 10) & 0x1F;
  v3 = (v5[0] & 0x8000) << 16;
  if ( v2 )
    v3 |= (v2 + 111) << 23;
  return v3 | ((v5[0] & 0x3FF) << 13);
}


// ===== 783ae4 gameswf::stream::read_double(void) =====
__int64 __fastcall gameswf::stream::read_double(gameswf::stream *this)
{
  int v1; // r3
  __int64 v3; // [sp+0h] [bp-Ch] BYREF

  v1 = *((_DWORD *)this + 1);
  *((_BYTE *)this + 9) = 0;
  (*(void (__fastcall **)(__int64 *, int, _DWORD))(v1 + 8))(&v3, 8, *(_DWORD *)v1);
  return v3;
}


// ===== 783b18 gameswf::stream::align(void) =====
int __fastcall gameswf::stream::align(int this)
{
  *(_BYTE *)(this + 8) = 0;
  *(_BYTE *)(this + 9) = 0;
  return this;
}


// ===== 783b28 gameswf::stream::read_u8(void) =====
int __fastcall gameswf::stream::read_u8(gameswf::stream *this)
{
  unsigned __int8 v3; // [sp+7h] [bp-1h] BYREF

  gameswf::stream::align((int)this);
  (*(void (__fastcall **)(unsigned __int8 *, int, _DWORD))(*((_DWORD *)this + 1) + 8))(&v3, 1, **((_DWORD **)this + 1));
  return v3;
}


// ===== 783b5c gameswf::stream::read_vu32(void) =====
int __fastcall gameswf::stream::read_vu32(gameswf::stream *this)
{
  int u8; // r3

  u8 = gameswf::stream::read_u8(this);
  if ( (u8 & 0x80) != 0 )
  {
    u8 = u8 & 0x7F | (gameswf::stream::read_u8(this) << 7);
    if ( (u8 & 0x4000) != 0 )
    {
      u8 = u8 & 0x3FFF | (gameswf::stream::read_u8(this) << 14);
      if ( (u8 & 0x200000) != 0 )
      {
        u8 = u8 & 0x1FFFFF | (gameswf::stream::read_u8(this) << 21);
        if ( (u8 & 0x10000000) != 0 )
          return u8 & 0xFFFFFFF | (gameswf::stream::read_u8(this) << 28);
      }
    }
  }
  return u8;
}


// ===== 783be0 gameswf::stream::read_s8(void) =====
int __fastcall gameswf::stream::read_s8(gameswf::stream *this)
{
  char v3; // [sp+7h] [bp-1h] BYREF

  gameswf::stream::align((int)this);
  (*(void (__fastcall **)(char *, int, _DWORD))(*((_DWORD *)this + 1) + 8))(&v3, 1, **((_DWORD **)this + 1));
  return v3;
}


// ===== 783c14 gameswf::stream::read_u16(void) =====
int __fastcall gameswf::stream::read_u16(gameswf::stream *this)
{
  unsigned __int16 v3; // [sp+6h] [bp-2h] BYREF

  gameswf::stream::align((int)this);
  (*(void (__fastcall **)(unsigned __int16 *, int, _DWORD))(*((_DWORD *)this + 1) + 8))(&v3, 2, **((_DWORD **)this + 1));
  return v3;
}


// ===== 783c48 gameswf::stream::read_s16(void) =====
int __fastcall gameswf::stream::read_s16(gameswf::stream *this)
{
  __int16 v3; // [sp+6h] [bp-2h] BYREF

  gameswf::stream::align((int)this);
  (*(void (__fastcall **)(__int16 *, int, _DWORD))(*((_DWORD *)this + 1) + 8))(&v3, 2, **((_DWORD **)this + 1));
  return v3;
}


// ===== 783c7c gameswf::stream::get_position(void) =====
int __fastcall gameswf::stream::get_position(gameswf::stream *this)
{
  return (*(int (__fastcall **)(_DWORD))(*((_DWORD *)this + 1) + 24))(**((_DWORD **)this + 1));
}


// ===== 783c94 gameswf::stream::set_position(int) =====
int __fastcall gameswf::stream::set_position(gameswf::stream *this, int a2)
{
  gameswf::stream::align((int)this);
  return (*(int (__fastcall **)(int, _DWORD))(*((_DWORD *)this + 1) + 16))(a2, **((_DWORD **)this + 1));
}


// ===== 783cbc gameswf::stream::get_tag_end_position(void) =====
int __fastcall gameswf::stream::get_tag_end_position(gameswf::stream *this)
{
  return *(_DWORD *)(*((_DWORD *)this + 3) + 4 * (*((_DWORD *)this + 4) - 1));
}


// ===== 783cd0 gameswf::stream::open_tag(void) =====
int __fastcall gameswf::stream::open_tag(gameswf::stream *this)
{
  int u16; // r0
  int v3; // r7
  int v4; // r5
  int position; // r0
  int v6; // r3
  int v7; // r7
  int v8; // r6
  int v10; // [sp+4h] [bp-8h] BYREF

  gameswf::stream::align((int)this);
  u16 = gameswf::stream::read_u16(this);
  v3 = u16 & 0x3F;
  v4 = u16 >> 6;
  if ( v3 == 63 )
  {
    (*(void (__fastcall **)(int *, int, _DWORD))(*((_DWORD *)this + 1) + 8))(&v10, 4, **((_DWORD **)this + 1));
    v3 = v10;
  }
  position = gameswf::stream::get_position(this);
  v6 = *((_DWORD *)this + 4);
  v7 = position + v3;
  v8 = v6 + 1;
  if ( v6 + 1 > *((_DWORD *)this + 5) )
  {
    gameswf::array<int>::reserve((int)this + 12, v8 + (v8 >> 1));
    v6 = *((_DWORD *)this + 4);
  }
  *(_DWORD *)(*((_DWORD *)this + 3) + 4 * v6) = v7;
  *((_DWORD *)this + 4) = v8;
  return v4;
}


// ===== 783d60 gameswf::array<char>::reserve(int) =====
void __fastcall gameswf::array<char>::reserve(int a1, size_t a2)
{
  size_t v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, a2, v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 783dd4 gameswf::stream::stream(gameswf::tu_file *,bool) =====
int __fastcall gameswf::stream::stream(int a1, int a2, char a3)
{
  *(_DWORD *)(a1 + 4) = a2;
  *(_BYTE *)a1 = a3;
  *(_BYTE *)(a1 + 40) = 0;
  *(_BYTE *)(a1 + 8) = 0;
  *(_BYTE *)(a1 + 9) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_BYTE *)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  gameswf::array<char>::reserve(a1 + 28, 0x100u);
  return a1;
}


// ===== 783e24 gameswf::stream::stream(gameswf::tu_file *,bool) =====
int __fastcall gameswf::stream::stream(int a1, int a2, char a3)
{
  *(_DWORD *)(a1 + 4) = a2;
  *(_BYTE *)a1 = a3;
  *(_BYTE *)(a1 + 40) = 0;
  *(_BYTE *)(a1 + 8) = 0;
  *(_BYTE *)(a1 + 9) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_BYTE *)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  gameswf::array<char>::reserve(a1 + 28, 0x100u);
  return a1;
}


// ===== 783e74 gameswf::stream::read_s32(void) =====
int __fastcall gameswf::stream::read_s32(gameswf::stream *this)
{
  int v3; // [sp+4h] [bp-4h] BYREF

  gameswf::stream::align((int)this);
  (*(void (__fastcall **)(int *, int, _DWORD))(*((_DWORD *)this + 1) + 8))(&v3, 4, **((_DWORD **)this + 1));
  return v3;
}


// ===== 783ea8 gameswf::stream::read_fixed(void) =====
float __fastcall gameswf::stream::read_fixed(gameswf::stream *this)
{
  int v1; // r3
  int v3; // [sp+4h] [bp-8h] BYREF

  v1 = *((_DWORD *)this + 1);
  *((_BYTE *)this + 9) = 0;
  (*(void (__fastcall **)(int *, int, _DWORD))(v1 + 8))(&v3, 4, *(_DWORD *)v1);
  return (float)v3 * 0.000015259;
}


// ===== 783ee8 gameswf::stream::read_float(void) =====
int __fastcall gameswf::stream::read_float(gameswf::stream *this)
{
  int v1; // r3
  int v3; // [sp+4h] [bp-8h] BYREF

  v1 = *((_DWORD *)this + 1);
  *((_BYTE *)this + 9) = 0;
  (*(void (__fastcall **)(int *, int, _DWORD))(v1 + 8))(&v3, 4, *(_DWORD *)v1);
  return v3;
}


// ===== 783f1c gameswf::stream::read_u32(void) =====
int __fastcall gameswf::stream::read_u32(gameswf::stream *this)
{
  int v3; // [sp+4h] [bp-4h] BYREF

  gameswf::stream::align((int)this);
  (*(void (__fastcall **)(int *, int, _DWORD))(*((_DWORD *)this + 1) + 8))(&v3, 4, **((_DWORD **)this + 1));
  return v3;
}


// ===== 783f50 gameswf::stream::read_string_with_length(gameswf::tu_string *) =====
char *__fastcall gameswf::stream::read_string_with_length(gameswf::stream *this, gameswf::tu_string *a2)
{
  int v4; // r3
  int v5; // r6
  int u8; // r8
  int v7; // r5
  char v8; // r0
  int v9; // r3
  char v10; // r7
  int v11; // r6
  const char *v12; // r1

  gameswf::stream::align((int)this);
  v4 = *((_DWORD *)this + 8);
  if ( v4 < 0 )
  {
    do
      *(_BYTE *)(*((_DWORD *)this + 7) + v4++) = 0;
    while ( v4 );
  }
  v5 = 0;
  *((_DWORD *)this + 8) = 0;
  u8 = gameswf::stream::read_u8(this);
  if ( u8 )
  {
    do
    {
      v8 = gameswf::stream::read_u8(this);
      v9 = *((_DWORD *)this + 8);
      v10 = v8;
      v7 = v9 + 1;
      ++v5;
      if ( v9 + 1 > *((_DWORD *)this + 9) )
      {
        gameswf::array<char>::reserve((int)this + 28, v7 + (v7 >> 1));
        v9 = *((_DWORD *)this + 8);
      }
      *(_BYTE *)(*((_DWORD *)this + 7) + v9) = v10;
      *((_DWORD *)this + 8) = v7;
    }
    while ( u8 > v5 );
  }
  else
  {
    v7 = *((_DWORD *)this + 8);
  }
  v11 = v7 + 1;
  if ( v7 + 1 > *((_DWORD *)this + 9) )
  {
    gameswf::array<char>::reserve((int)this + 28, v11 + (v11 >> 1));
    v7 = *((_DWORD *)this + 8);
  }
  *(_BYTE *)(*((_DWORD *)this + 7) + v7) = 0;
  v12 = *((const char **)this + 7);
  *((_DWORD *)this + 8) = v11;
  return gameswf::tu_string::operator=((char *)a2, v12);
}


// ===== 784030 gameswf::stream::~stream() =====
void __fastcall gameswf::stream::~stream(gameswf::stream *this)
{
  int v1; // r3
  char *v3; // r0
  int v4; // r3
  _DWORD *v5; // r0
  int v6; // r2

  v1 = *((_DWORD *)this + 8);
  v3 = (char *)this + 28;
  if ( v1 < 0 )
  {
    do
      *(_BYTE *)(*((_DWORD *)this + 7) + v1++) = 0;
    while ( v1 );
  }
  *((_DWORD *)this + 8) = 0;
  gameswf::array<char>::reserve((int)v3, 0);
  v4 = *((_DWORD *)this + 4);
  v5 = (_DWORD *)((char *)this + 12);
  if ( v4 < 0 )
  {
    v6 = 4 * v4;
    do
    {
      ++v4;
      *(_DWORD *)(*v5 + v6) = 0;
      v6 += 4;
    }
    while ( v4 );
  }
  *((_DWORD *)this + 4) = 0;
  gameswf::array<int>::reserve((int)v5, 0);
}


// ===== 7840c8 gameswf::stream::~stream() =====
void __fastcall gameswf::stream::~stream(gameswf::stream *this)
{
  int v1; // r3
  char *v3; // r0
  int v4; // r3
  _DWORD *v5; // r0
  int v6; // r2

  v1 = *((_DWORD *)this + 8);
  v3 = (char *)this + 28;
  if ( v1 < 0 )
  {
    do
      *(_BYTE *)(*((_DWORD *)this + 7) + v1++) = 0;
    while ( v1 );
  }
  *((_DWORD *)this + 8) = 0;
  gameswf::array<char>::reserve((int)v3, 0);
  v4 = *((_DWORD *)this + 4);
  v5 = (_DWORD *)((char *)this + 12);
  if ( v4 < 0 )
  {
    v6 = 4 * v4;
    do
    {
      ++v4;
      *(_DWORD *)(*v5 + v6) = 0;
      v6 += 4;
    }
    while ( v4 );
  }
  *((_DWORD *)this + 4) = 0;
  gameswf::array<int>::reserve((int)v5, 0);
}


// ===== 784160 gameswf::stream::close_tag(void) =====
int __fastcall gameswf::stream::close_tag(gameswf::stream *this)
{
  int v2; // r5
  int v3; // r6
  int result; // r0

  v2 = *((_DWORD *)this + 4) - 1;
  v3 = *(_DWORD *)(*((_DWORD *)this + 3) + 4 * v2);
  if ( *((_DWORD *)this + 4) != 1 && v2 > *((_DWORD *)this + 5) )
    gameswf::array<int>::reserve((int)this + 12, v2 + (v2 >> 1));
  *((_DWORD *)this + 4) = v2;
  gameswf::stream::get_position(this);
  result = (*(int (__fastcall **)(int, _DWORD))(*((_DWORD *)this + 1) + 16))(v3, **((_DWORD **)this + 1));
  *((_BYTE *)this + 9) = 0;
  return result;
}


// ===== 7841c8 gameswf::stream::read_string(gameswf::tu_string *) =====
char *__fastcall gameswf::stream::read_string(gameswf::stream *this, gameswf::tu_string *a2)
{
  int v4; // r3
  int v5; // r3
  int v6; // r5
  int u8; // r0
  char v8; // r6
  int v9; // r3
  int v10; // r5
  const char *v11; // r1

  gameswf::stream::align((int)this);
  v4 = *((_DWORD *)this + 8);
  if ( v4 < 0 )
  {
    do
      *(_BYTE *)(*((_DWORD *)this + 7) + v4++) = 0;
    while ( v4 );
  }
  for ( *((_DWORD *)this + 8) = 0; ; *((_DWORD *)this + 8) = v6 )
  {
    u8 = gameswf::stream::read_u8(this);
    v8 = u8;
    if ( !u8 )
      break;
    v5 = *((_DWORD *)this + 8);
    v6 = v5 + 1;
    if ( v5 + 1 > *((_DWORD *)this + 9) )
    {
      gameswf::array<char>::reserve((int)this + 28, v6 + (v6 >> 1));
      v5 = *((_DWORD *)this + 8);
    }
    *(_BYTE *)(*((_DWORD *)this + 7) + v5) = v8;
  }
  v9 = *((_DWORD *)this + 8);
  v10 = v9 + 1;
  if ( v9 + 1 > *((_DWORD *)this + 9) )
  {
    gameswf::array<char>::reserve((int)this + 28, v10 + (v10 >> 1));
    v9 = *((_DWORD *)this + 8);
  }
  *(_BYTE *)(*((_DWORD *)this + 7) + v9) = 0;
  v11 = *((const char **)this + 7);
  *((_DWORD *)this + 8) = v10;
  return gameswf::tu_string::operator=((char *)a2, v11);
}


// ===== 784294 gameswf::stream::read_string_with_length(int,gameswf::tu_string *) =====
char *__fastcall gameswf::stream::read_string_with_length(gameswf::stream *this, int a2, gameswf::tu_string *a3)
{
  int v3; // r3
  int v7; // r7
  int v8; // r6
  int v9; // r5
  char u8; // r0
  int v11; // r3
  char v12; // r8
  const char *v13; // r1

  v3 = *((_DWORD *)this + 8);
  if ( v3 < 0 )
  {
    do
      *(_BYTE *)(*((_DWORD *)this + 7) + v3++) = 0;
    while ( v3 );
  }
  v7 = 0;
  *((_DWORD *)this + 8) = 0;
  if ( a2 > 0 )
  {
    do
    {
      u8 = gameswf::stream::read_u8(this);
      v11 = *((_DWORD *)this + 8);
      v12 = u8;
      v8 = v11 + 1;
      ++v7;
      if ( v11 + 1 > *((_DWORD *)this + 9) )
      {
        gameswf::array<char>::reserve((int)this + 28, v8 + (v8 >> 1));
        v11 = *((_DWORD *)this + 8);
      }
      *(_BYTE *)(*((_DWORD *)this + 7) + v11) = v12;
      *((_DWORD *)this + 8) = v8;
    }
    while ( v7 != a2 );
    v9 = v8 + 1;
  }
  else
  {
    v8 = 0;
    v9 = 1;
  }
  if ( *((_DWORD *)this + 9) < v9 )
  {
    gameswf::array<char>::reserve((int)this + 28, v9 + (v9 >> 1));
    v8 = *((_DWORD *)this + 8);
  }
  *(_BYTE *)(*((_DWORD *)this + 7) + v8) = 0;
  v13 = *((const char **)this + 7);
  *((_DWORD *)this + 8) = v9;
  return gameswf::tu_string::operator=((char *)a3, v13);
}


// ===== 784370 gameswf::gradient_record::gradient_record(void) =====
_BYTE *__fastcall gameswf::gradient_record::gradient_record(_BYTE *this)
{
  *(this + 4) = -1;
  *this = 0;
  *(this + 1) = -1;
  *(this + 2) = -1;
  *(this + 3) = -1;
  return this;
}


// ===== 784390 gameswf::gradient_record::gradient_record(void) =====
_BYTE *__fastcall gameswf::gradient_record::gradient_record(_BYTE *this)
{
  *(this + 4) = -1;
  *this = 0;
  *(this + 1) = -1;
  *(this + 2) = -1;
  *(this + 3) = -1;
  return this;
}


// ===== 7843b0 gameswf::line_style::apply(float) =====
unsigned int __fastcall gameswf::line_style::apply(unsigned int this, float a2)
{
  unsigned int v2; // r4

  v2 = this;
  if ( gameswf::s_render_handler )
  {
    (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)gameswf::s_render_handler + 120))(
      gameswf::s_render_handler,
      *(_DWORD *)(this + 6));
    this = *(unsigned __int16 *)(v2 + 4);
    if ( gameswf::s_render_handler )
      return (*(int (__fastcall **)(int, float))(*(_DWORD *)gameswf::s_render_handler + 124))(
               gameswf::s_render_handler,
               (float)this);
  }
  return this;
}


// ===== 784434 gameswf::fill_style::sample_gradient(int) =====
int __fastcall gameswf::fill_style::sample_gradient(gameswf::fill_style *this, int a2)
{
  unsigned __int8 *v2; // r5
  int v3; // r2
  int v4; // r7
  int v5; // r6
  int v6; // r4
  int v7; // r6
  unsigned __int8 v8; // r12
  unsigned __int8 v9; // r3
  unsigned __int8 v10; // r2
  unsigned __int8 v11; // r1
  int v13; // r8
  float v14; // r3
  char v15; // [sp+4h] [bp-8h] BYREF
  char v16; // [sp+5h] [bp-7h]
  char v17; // [sp+6h] [bp-6h]
  char v18; // [sp+7h] [bp-5h]

  v2 = *((unsigned __int8 **)this + 9);
  if ( *v2 > a2 )
    goto LABEL_10;
  v3 = *((_DWORD *)this + 10);
  if ( v3 <= 1 )
  {
LABEL_9:
    v2 += 5 * v3 - 5;
LABEL_10:
    v8 = v2[1];
    v9 = v2[4];
    v10 = v2[3];
    v11 = v2[2];
    return v8 | (unsigned __int16)(v11 << 8) | (v10 << 16) & 0xFFFFFF | (v9 << 24);
  }
  v4 = v2[5];
  if ( a2 > v4 )
  {
    v6 = 10;
    v7 = 1;
    while ( ++v7 != v3 )
    {
      v4 = v2[v6];
      if ( a2 <= v4 )
      {
        v5 = 5 * (v7 - 1);
        goto LABEL_13;
      }
      v6 += 5;
    }
    goto LABEL_9;
  }
  v5 = 0;
  v6 = 5;
LABEL_13:
  v13 = v2[v5];
  if ( v13 == v4 )
    v14 = 0.0;
  else
    v14 = (float)(a2 - v13) / (float)(v4 - v13);
  v18 = -1;
  v15 = -1;
  v16 = -1;
  v17 = -1;
  gameswf::rgba::set_lerp(
    (gameswf::rgba *)&v15,
    (const gameswf::rgba *)&v2[v5 + 1],
    (const gameswf::rgba *)&v2[v6 + 1],
    v14);
  v9 = v18;
  v10 = v17;
  v11 = v16;
  v8 = v15;
  return v8 | (unsigned __int16)(v11 << 8) | (v10 << 16) & 0xFFFFFF | (v9 << 24);
}


// ===== 78454c gameswf::fill_style::set_lerp(gameswf::fill_style const&,gameswf::fill_style const&,float) =====
int __fastcall gameswf::fill_style::set_lerp(
        gameswf::fill_style *this,
        const gameswf::fill_style *a2,
        const gameswf::fill_style *a3,
        float a4)
{
  char v6; // r11
  char v7; // lr
  char v8; // r4
  char v9; // r8
  char v12; // r9
  int v13; // r4
  int v14; // r8
  char v16; // [sp+0h] [bp-14h]
  char v17; // [sp+4h] [bp-10h]
  _BYTE v18[4]; // [sp+8h] [bp-Ch] BYREF
  _BYTE v19[8]; // [sp+Ch] [bp-8h] BYREF

  *((_DWORD *)this + 1) = *((_DWORD *)a2 + 1);
  v6 = *((_BYTE *)a3 + 10);
  v7 = *((_BYTE *)a2 + 11);
  v8 = *((_BYTE *)a2 + 9);
  v9 = *((_BYTE *)a2 + 8);
  v16 = *((_BYTE *)a3 + 9);
  v17 = *((_BYTE *)a3 + 8);
  v12 = *((_BYTE *)a3 + 11);
  v19[2] = *((_BYTE *)a2 + 10);
  v18[1] = v16;
  v19[3] = v7;
  v18[0] = v17;
  v19[1] = v8;
  v19[0] = v9;
  v18[3] = v12;
  v18[2] = v6;
  gameswf::rgba::set_lerp(
    (gameswf::fill_style *)((char *)this + 8),
    (const gameswf::rgba *)v19,
    (const gameswf::rgba *)v18,
    a4);
  gameswf::matrix::set_lerp(
    (gameswf::fill_style *)((char *)this + 12),
    (const gameswf::fill_style *)((char *)a2 + 12),
    (const gameswf::fill_style *)((char *)a3 + 12),
    a4);
  if ( *((int *)this + 10) > 0 )
  {
    v13 = 0;
    v14 = 0;
    do
    {
      ++v14;
      *(_BYTE *)(*((_DWORD *)this + 9) + v13) = (int)(float)((float)((float)*(unsigned __int8 *)(*((_DWORD *)a2 + 9)
                                                                                               + v13)
                                                                   + (float)(a4
                                                                           * (float)((float)*(unsigned __int8 *)(*((_DWORD *)a3 + 9) + v13)
                                                                                   - (float)*(unsigned __int8 *)(*((_DWORD *)a2 + 9) + v13))))
                                                           + 0.5);
      gameswf::rgba::set_lerp(
        (gameswf::rgba *)(*((_DWORD *)this + 9) + v13 + 1),
        (const gameswf::rgba *)(*((_DWORD *)a2 + 9) + v13 + 1),
        (const gameswf::rgba *)(*((_DWORD *)a3 + 9) + v13 + 1),
        a4);
      v13 += 5;
    }
    while ( v14 < *((_DWORD *)this + 10) );
  }
  gameswf::smart_ptr<gameswf::bitmap_info>::set_ref((gameswf::ref_counted **)this + 13, nullptr);
  gameswf::smart_ptr<gameswf::bitmap_character_def>::set_ref(
    (gameswf::ref_counted **)this + 14,
    *((gameswf::ref_counted **)a2 + 14));
  return gameswf::matrix::set_lerp(
           (gameswf::fill_style *)((char *)this + 60),
           (const gameswf::fill_style *)((char *)a2 + 60),
           (const gameswf::fill_style *)((char *)a3 + 60),
           a4);
}


// ===== 7846b8 gameswf::fill_style::create_gradient_bitmap(void) =====
int __fastcall gameswf::fill_style::create_gradient_bitmap(gameswf::fill_style *this, int a2, int a3)
{
  int v3; // r3
  gameswf::image_rgba *rgba; // r5
  int bitmap_info_rgba; // r4
  gameswf::image_rgba *v8; // r0
  int v9; // r0
  int v10; // r3
  int i; // r6
  int v12; // r4
  float v13; // r0
  float v14; // r0
  int v15; // r0
  int v16; // r1
  int v17; // r0
  int v18; // r4
  int v19; // r0

  v3 = *((_DWORD *)this + 1);
  if ( v3 == 16 )
  {
    rgba = (gameswf::image_rgba *)gameswf::create_rgba((gameswf *)&elf_hash_bucket[9], 1, a3);
    if ( *((int *)rgba + 3) > 0 )
    {
      v18 = 0;
      do
      {
        v19 = gameswf::fill_style::sample_gradient(this, v18);
        gameswf::image_rgba::set_pixel(rgba, v18++, 0, v19, SBYTE1(v19), SBYTE2(v19), SHIBYTE(v19));
      }
      while ( *((_DWORD *)rgba + 3) > v18 );
    }
  }
  else if ( v3 == 18 )
  {
    v8 = (gameswf::image_rgba *)gameswf::create_rgba((gameswf *)&dword_40, (int)&dword_40, a3);
    rgba = v8;
    v9 = *((_DWORD *)v8 + 4);
    if ( v9 > 0 )
    {
      v10 = *((_DWORD *)rgba + 3);
      for ( i = 0; i < v9; ++i )
      {
        if ( v10 > 0 )
        {
          v12 = 0;
          while ( 1 )
          {
            v13 = (float)(v9 - 1) * 0.5;
            v14 = sqrtf(
                    (float)((float)((float)((float)v12 - v13) / v13) * (float)((float)((float)v12 - v13) / v13))
                  + (float)((float)((float)((float)i - v13) / v13) * (float)((float)((float)i - v13) / v13)))
                * 255.5;
            v15 = (int)floorf(v14);
            v16 = v15 >= 255 ? 255 : v15;
            v17 = gameswf::fill_style::sample_gradient(this, v16);
            gameswf::image_rgba::set_pixel(rgba, v12, i, v17, SBYTE1(v17), SBYTE2(v17), SHIBYTE(v17));
            v10 = *((_DWORD *)rgba + 3);
            if ( v10 <= ++v12 )
              break;
            v9 = *((_DWORD *)rgba + 4);
          }
          v9 = *((_DWORD *)rgba + 4);
        }
      }
    }
  }
  else
  {
    rgba = nullptr;
  }
  bitmap_info_rgba = gameswf::render::create_bitmap_info_rgba((int)rgba);
  gameswf::destruct<gameswf::image_rgba>((void (__fastcall ***)(_DWORD))rgba);
  return bitmap_info_rgba;
}


// ===== 7848c0 gameswf::fill_style::apply(int,float) =====
void __fastcall gameswf::fill_style::apply(gameswf::fill_style *this, int a2, float a3)
{
  int v3; // r3
  bool v6; // zf
  int v7; // r3
  int v8; // r2
  gameswf::ref_counted *gradient_bitmap; // r0

  v3 = *((_DWORD *)this + 1);
  if ( v3 )
  {
    v6 = v3 == 16;
    if ( v3 != 16 )
      v6 = v3 == 18;
    if ( v6 )
    {
      if ( *((_DWORD *)this + 13)
        || (gradient_bitmap = (gameswf::ref_counted *)gameswf::fill_style::create_gradient_bitmap(this, a2, 0),
            gameswf::smart_ptr<gameswf::bitmap_info>::set_ref((gameswf::ref_counted **)this + 13, gradient_bitmap),
            *((_DWORD *)this + 13)) )
      {
        if ( gameswf::s_render_handler )
          (*(void (__fastcall **)(int, int))(*(_DWORD *)gameswf::s_render_handler + 112))(gameswf::s_render_handler, a2);
      }
    }
    else
    {
      v7 = *((_DWORD *)this + 14);
      if ( v7 )
      {
        v8 = (*(int (__fastcall **)(_DWORD, int, _DWORD))(*(_DWORD *)v7 + 44))(*((_DWORD *)this + 14), a2, LODWORD(a3));
        if ( v8 )
        {
          if ( gameswf::s_render_handler )
            (*(void (__fastcall **)(int, int, int, char *, bool))(*(_DWORD *)gameswf::s_render_handler + 112))(
              gameswf::s_render_handler,
              a2,
              v8,
              (char *)this + 60,
              *((_DWORD *)this + 1) != 66);
        }
      }
    }
  }
  else if ( gameswf::s_render_handler )
  {
    (*(void (__fastcall **)(int, int, char *))(*(_DWORD *)gameswf::s_render_handler + 108))(
      gameswf::s_render_handler,
      a2,
      (char *)this + 8);
  }
}


// ===== 7849f0 gameswf::gradient_record::read(gameswf::stream *,int) =====
int __fastcall gameswf::gradient_record::read(gameswf::gradient_record *this, gameswf::stream *a2, int a3)
{
  *(_BYTE *)this = gameswf::stream::read_u8(a2);
  return gameswf::rgba::read((gameswf::gradient_record *)((char *)this + 1), a2, a3);
}


// ===== 784a20 gameswf::fill_style::~fill_style() =====
void __fastcall gameswf::fill_style::~fill_style(gameswf::fill_style *this)
{
  void (__fastcall ***v2)(_DWORD); // r0
  void (__fastcall ***v3)(_DWORD); // r0

  v2 = *((void (__fastcall ****)(_DWORD))this + 14);
  *(_DWORD *)this = off_990900;
  if ( v2 )
    gameswf::ref_counted::drop_ref(v2);
  v3 = *((void (__fastcall ****)(_DWORD))this + 13);
  if ( v3 )
    gameswf::ref_counted::drop_ref(v3);
  gameswf::array<gameswf::gradient_record>::resize((_DWORD *)this + 9, 0);
  gameswf::array<gameswf::gradient_record>::reserve((int)this + 36, 0);
}


// ===== 784a8c gameswf::fill_style::fill_style(void) =====
int __fastcall gameswf::fill_style::fill_style(int this)
{
  *(_DWORD *)(this + 76) = 1065353216;
  *(_DWORD *)this = off_990900;
  *(_BYTE *)(this + 11) = -1;
  *(_DWORD *)(this + 80) = 0;
  *(_DWORD *)(this + 4) = 0;
  *(_BYTE *)(this + 8) = -1;
  *(_BYTE *)(this + 9) = -1;
  *(_BYTE *)(this + 10) = -1;
  *(_DWORD *)(this + 16) = 0;
  *(_DWORD *)(this + 20) = 0;
  *(_DWORD *)(this + 24) = 0;
  *(_DWORD *)(this + 32) = 0;
  *(_DWORD *)(this + 12) = 1065353216;
  *(_DWORD *)(this + 28) = 1065353216;
  *(_DWORD *)(this + 36) = 0;
  *(_DWORD *)(this + 40) = 0;
  *(_DWORD *)(this + 44) = 0;
  *(_BYTE *)(this + 48) = 0;
  *(_DWORD *)(this + 52) = 0;
  *(_DWORD *)(this + 56) = 0;
  *(_DWORD *)(this + 64) = 0;
  *(_DWORD *)(this + 68) = 0;
  *(_DWORD *)(this + 72) = 0;
  *(_DWORD *)(this + 60) = 1065353216;
  return this;
}


// ===== 784b20 gameswf::line_style::line_style(void) =====
gameswf::line_style *__fastcall gameswf::line_style::line_style(gameswf::line_style *this)
{
  *(_DWORD *)this = off_9908E8;
  *((_BYTE *)this + 9) = -1;
  *((_WORD *)this + 2) = 0;
  *((_BYTE *)this + 6) = -1;
  *((_BYTE *)this + 7) = -1;
  *((_BYTE *)this + 8) = -1;
  gameswf::fill_style::fill_style((int)this + 12);
  *((_BYTE *)this + 103) = 0;
  *((_WORD *)this + 52) = 0;
  *((_BYTE *)this + 96) = 0;
  *((_BYTE *)this + 97) = 0;
  *((_BYTE *)this + 98) = 0;
  *((_BYTE *)this + 99) = 0;
  *((_BYTE *)this + 100) = 0;
  *((_BYTE *)this + 101) = 0;
  *((_BYTE *)this + 102) = 0;
  return this;
}


// ===== 784b9c gameswf::line_style::line_style(void) =====
gameswf::line_style *__fastcall gameswf::line_style::line_style(gameswf::line_style *this)
{
  *(_DWORD *)this = off_9908E8;
  *((_BYTE *)this + 9) = -1;
  *((_WORD *)this + 2) = 0;
  *((_BYTE *)this + 6) = -1;
  *((_BYTE *)this + 7) = -1;
  *((_BYTE *)this + 8) = -1;
  gameswf::fill_style::fill_style((int)this + 12);
  *((_BYTE *)this + 103) = 0;
  *((_WORD *)this + 52) = 0;
  *((_BYTE *)this + 96) = 0;
  *((_BYTE *)this + 97) = 0;
  *((_BYTE *)this + 98) = 0;
  *((_BYTE *)this + 99) = 0;
  *((_BYTE *)this + 100) = 0;
  *((_BYTE *)this + 101) = 0;
  *((_BYTE *)this + 102) = 0;
  return this;
}


// ===== 784c18 gameswf::fill_style::fill_style(void) =====
int __fastcall gameswf::fill_style::fill_style(int this)
{
  *(_DWORD *)(this + 76) = 1065353216;
  *(_DWORD *)this = off_990900;
  *(_BYTE *)(this + 11) = -1;
  *(_DWORD *)(this + 80) = 0;
  *(_DWORD *)(this + 4) = 0;
  *(_BYTE *)(this + 8) = -1;
  *(_BYTE *)(this + 9) = -1;
  *(_BYTE *)(this + 10) = -1;
  *(_DWORD *)(this + 16) = 0;
  *(_DWORD *)(this + 20) = 0;
  *(_DWORD *)(this + 24) = 0;
  *(_DWORD *)(this + 32) = 0;
  *(_DWORD *)(this + 12) = 1065353216;
  *(_DWORD *)(this + 28) = 1065353216;
  *(_DWORD *)(this + 36) = 0;
  *(_DWORD *)(this + 40) = 0;
  *(_DWORD *)(this + 44) = 0;
  *(_BYTE *)(this + 48) = 0;
  *(_DWORD *)(this + 52) = 0;
  *(_DWORD *)(this + 56) = 0;
  *(_DWORD *)(this + 64) = 0;
  *(_DWORD *)(this + 68) = 0;
  *(_DWORD *)(this + 72) = 0;
  *(_DWORD *)(this + 60) = 1065353216;
  return this;
}


// ===== 784cac gameswf::fill_style::~fill_style() =====
void __fastcall gameswf::fill_style::~fill_style(gameswf::fill_style *this)
{
  void (__fastcall ***v2)(_DWORD); // r0
  void (__fastcall ***v3)(_DWORD); // r0

  v2 = *((void (__fastcall ****)(_DWORD))this + 14);
  *(_DWORD *)this = off_990900;
  if ( v2 )
    gameswf::ref_counted::drop_ref(v2);
  v3 = *((void (__fastcall ****)(_DWORD))this + 13);
  if ( v3 )
    gameswf::ref_counted::drop_ref(v3);
  gameswf::array<gameswf::gradient_record>::resize((_DWORD *)this + 9, 0);
  gameswf::array<gameswf::gradient_record>::reserve((int)this + 36, 0);
}


// ===== 784d18 gameswf::line_style::~line_style() =====
void __fastcall gameswf::line_style::~line_style(gameswf::line_style *this)
{
  *(_DWORD *)this = off_9908E8;
  gameswf::fill_style::~fill_style((gameswf::line_style *)((char *)this + 12));
}


// ===== 784d4c gameswf::fill_style::~fill_style() =====
void __fastcall gameswf::fill_style::~fill_style(gameswf::fill_style *this)
{
  gameswf::fill_style::~fill_style(this);
  LC_API_FREE_0(this);
}


// ===== 784d68 gameswf::line_style::~line_style() =====
void __fastcall gameswf::line_style::~line_style(gameswf::line_style *this)
{
  *(_DWORD *)this = off_9908E8;
  gameswf::fill_style::~fill_style((gameswf::line_style *)((char *)this + 12));
  LC_API_FREE_0(this);
}


// ===== 784da4 gameswf::fill_style::read(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
unsigned int __fastcall gameswf::fill_style::read(
        gameswf::fill_style *this,
        gameswf::stream *a2,
        int a3,
        gameswf::movie_definition_sub *a4)
{
  int u8; // r0
  unsigned int result; // r0
  bool v10; // zf
  int u16; // r0
  gameswf::ref_counted *v12; // r0
  float v13; // r7
  float v14; // r7
  float *v15; // r11
  int v16; // r7
  int v17; // r10
  int v18; // r10
  gameswf::gradient_record *v19; // r0
  gameswf::render *v20; // r0
  int v21; // r1
  int v22; // r2
  gameswf::ref_counted *bitmap_info_empty; // r0
  int v24; // r8
  int i; // r6
  float v26; // r7
  float v27; // r7
  int v28; // [sp+0h] [bp-34h] BYREF
  int v29; // [sp+4h] [bp-30h]
  int v30; // [sp+8h] [bp-2Ch]
  int v31; // [sp+Ch] [bp-28h]
  int v32; // [sp+10h] [bp-24h]
  int v33; // [sp+14h] [bp-20h]
  _DWORD v34[7]; // [sp+18h] [bp-1Ch] BYREF

  u8 = gameswf::stream::read_u8(a2);
  *((_DWORD *)this + 1) = u8;
  if ( u8 )
  {
    v10 = u8 == 16;
    if ( u8 != 16 )
      v10 = u8 == 18;
    if ( v10 )
    {
      v34[5] = 0;
      memset(&v34[1], 0, 12);
      v34[0] = 1065353216;
      v34[4] = 1065353216;
      gameswf::matrix::read((gameswf::matrix *)v34, a2);
      if ( *((_DWORD *)this + 1) == 16 )
      {
        *((_DWORD *)this + 8) = 0;
        *((_DWORD *)this + 4) = 0;
        *((_DWORD *)this + 5) = 0;
        *((_DWORD *)this + 6) = 0;
        *((_DWORD *)this + 7) = 1065353216;
        *((_DWORD *)this + 3) = 1065353216;
        v26 = (float)((float)(0.0 * 0.0) + 128.0) + *((float *)this + 5);
        if ( v26 < -3.4028e38 || v26 > 3.4028e38 )
          v26 = 0.0;
        *((float *)this + 5) = v26;
        v27 = (float)((float)(*((float *)this + 6) * 128.0) + 0.0) + *((float *)this + 8);
        if ( v27 < -3.4028e38 || v27 > 3.4028e38 )
          v27 = 0.0;
        v15 = (float *)((char *)this + 12);
        *((float *)this + 8) = v27;
        gameswf::matrix::concatenate_scale((gameswf::fill_style *)((char *)this + 12), 0.0078125);
      }
      else
      {
        *((_DWORD *)this + 8) = 0;
        *((_DWORD *)this + 4) = 0;
        *((_DWORD *)this + 5) = 0;
        *((_DWORD *)this + 6) = 0;
        *((_DWORD *)this + 7) = 1065353216;
        *((_DWORD *)this + 3) = 1065353216;
        v13 = (float)((float)(0.0 * 32.0) + 32.0) + *((float *)this + 5);
        if ( v13 < -3.4028e38 || v13 > 3.4028e38 )
          v13 = 0.0;
        *((float *)this + 5) = v13;
        v14 = (float)((float)(*((float *)this + 6) * 32.0) + 32.0) + *((float *)this + 8);
        if ( v14 < -3.4028e38 || v14 > 3.4028e38 )
          v14 = 0.0;
        v15 = (float *)((char *)this + 12);
        *((float *)this + 8) = v14;
        gameswf::matrix::concatenate_scale((gameswf::fill_style *)((char *)this + 12), 0.0019531);
      }
      v16 = 0;
      v30 = 0;
      v31 = 0;
      v33 = 0;
      v32 = 1065353216;
      v28 = 1065353216;
      v29 = 0;
      gameswf::matrix::set_inverse((gameswf::matrix *)&v28, (const gameswf::matrix *)v34);
      gameswf::matrix::concatenate(v15, (float *)&v28);
      v17 = gameswf::stream::read_u8(a2) & 0xF;
      gameswf::array<gameswf::gradient_record>::resize((_DWORD *)this + 9, v17);
      if ( v17 )
      {
        v18 = 5 * v17;
        do
        {
          v19 = (gameswf::gradient_record *)(*((_DWORD *)this + 9) + v16);
          v16 += 5;
          gameswf::gradient_record::read(v19, a2, a3);
        }
        while ( v16 != v18 );
        memcpy((char *)this + 8, (const void *)(*((_DWORD *)this + 9) + 1), 4u);
      }
      v20 = (gameswf::render *)(*(int (__fastcall **)(gameswf::movie_definition_sub *))(*(_DWORD *)a4 + 180))(a4);
      if ( v20 )
        bitmap_info_empty = (gameswf::ref_counted *)gameswf::render::create_bitmap_info_empty(v20);
      else
        bitmap_info_empty = (gameswf::ref_counted *)gameswf::fill_style::create_gradient_bitmap(this, v21, v22);
      gameswf::smart_ptr<gameswf::bitmap_info>::set_ref((gameswf::ref_counted **)this + 13, bitmap_info_empty);
      return (*(int (__fastcall **)(gameswf::movie_definition_sub *, _DWORD))(*(_DWORD *)a4 + 176))(
               a4,
               *((_DWORD *)this + 13));
    }
    else if ( u8 == 19 )
    {
      v24 = gameswf::stream::read_u8(a2) & 0xF;
      if ( v24 )
      {
        for ( i = 0; i != v24; ++i )
        {
          gameswf::stream::read_u8(a2);
          v34[0] = -1;
          gameswf::rgba::read_rgba((gameswf::rgba *)v34, a2);
        }
      }
      return gameswf::stream::read_u8(a2);
    }
    else
    {
      result = u8 - 64;
      if ( result <= 3 )
      {
        u16 = gameswf::stream::read_u16(a2);
        v12 = (gameswf::ref_counted *)(*(int (__fastcall **)(gameswf::movie_definition_sub *, int))(*(_DWORD *)a4 + 152))(
                                        a4,
                                        u16);
        gameswf::smart_ptr<gameswf::bitmap_character_def>::set_ref((gameswf::ref_counted **)this + 14, v12);
        v30 = 0;
        v31 = 0;
        v33 = 0;
        v32 = 1065353216;
        v29 = 0;
        v28 = 1065353216;
        gameswf::matrix::read((gameswf::matrix *)&v28, a2);
        return gameswf::matrix::set_inverse((gameswf::fill_style *)((char *)this + 60), (const gameswf::matrix *)&v28);
      }
    }
  }
  else if ( a3 <= 22 )
  {
    return gameswf::rgba::read_rgb((gameswf::fill_style *)((char *)this + 8), a2);
  }
  else
  {
    return gameswf::rgba::read_rgba((gameswf::fill_style *)((char *)this + 8), a2);
  }
  return result;
}


// ===== 7851c4 gameswf::line_style::read(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
unsigned int __fastcall gameswf::line_style::read(
        gameswf::line_style *this,
        gameswf::stream *a2,
        int a3,
        gameswf::movie_definition_sub *a4)
{
  char uint; // r0
  int v9; // r3

  *((_WORD *)this + 2) = gameswf::stream::read_u16(a2);
  if ( a3 != 83 )
    return gameswf::rgba::read((gameswf::line_style *)((char *)this + 6), a2, a3);
  *((_BYTE *)this + 96) = gameswf::stream::read_uint(a2, 2);
  *((_BYTE *)this + 97) = gameswf::stream::read_uint(a2, 2);
  *((_BYTE *)this + 98) = gameswf::stream::read_uint(a2, 1) == 1;
  *((_BYTE *)this + 99) = gameswf::stream::read_uint(a2, 1) == 1;
  *((_BYTE *)this + 100) = gameswf::stream::read_uint(a2, 1) == 1;
  *((_BYTE *)this + 101) = gameswf::stream::read_uint(a2, 1) == 1;
  gameswf::stream::read_uint(a2, 5);
  *((_BYTE *)this + 102) = gameswf::stream::read_uint(a2, 1) == 1;
  uint = gameswf::stream::read_uint(a2, 2);
  v9 = *((unsigned __int8 *)this + 97);
  *((_BYTE *)this + 103) = uint;
  if ( v9 == 2 )
    *((_WORD *)this + 52) = gameswf::stream::read_u16(a2);
  if ( *((_BYTE *)this + 98) )
    return gameswf::fill_style::read((gameswf::line_style *)((char *)this + 12), a2, 83, a4);
  else
    return gameswf::rgba::read((gameswf::line_style *)((char *)this + 6), a2, 83);
}


// ===== 78531c gameswf::tesselate::compare_segment_y(void const*,void const*) =====
int __fastcall gameswf::tesselate::compare_segment_y(gameswf::tesselate *this, float *a2, const void *a3)
{
  float v3; // r5
  float v4; // r4
  float v6; // r5
  float v7; // r4

  v3 = *((float *)this + 1);
  v4 = a2[1];
  if ( v3 < v4 )
    return -1;
  if ( v3 != v4 )
    return 1;
  v6 = *((float *)this + 3) - v3;
  v7 = a2[3] - v4;
  if ( v6 < v7 )
    return -1;
  else
    return v6 != v7;
}


// ===== 7853c0 gameswf::tesselate::compare_segment_x(void const*,void const*) =====
int __fastcall gameswf::tesselate::compare_segment_x(gameswf::tesselate *this, float *a2, const void *a3)
{
  if ( *(float *)this < *a2 )
    return -1;
  if ( *(float *)this != *a2 )
    return 1;
  if ( *((float *)this + 2) < a2[2] )
    return -1;
  else
    return *((float *)this + 2) != a2[2];
}


// ===== 78544c gameswf::tesselate_new::begin_shape(gameswf::tesselate_new::mesh_accepter *,float) =====
bool __fastcall gameswf::tesselate_new::begin_shape(int a1, float a2)
{
  _BOOL4 result; // r0

  gameswf::tesselate_new::s_accepter = a1;
  result = a2 > 0.0;
  if ( a2 > 0.0 )
    gameswf::tesselate_new::s_tolerance = LODWORD(a2);
  else
    gameswf::tesselate_new::s_tolerance = 1065353216;
  return result;
}


// ===== 7854a4 gameswf::tesselate_new::end_path(void) =====
int *__fastcall gameswf::tesselate_new::end_path(gameswf::tesselate_new *this)
{
  int *result; // r0
  int v2; // r2

  result = &gameswf::tesselate_new::s_accepter;
  v2 = gameswf::tesselate_new::s_path_parts + 32 * (dword_9FC9E0 - 1);
  if ( *(int *)(v2 + 8) >= 0 && *(int *)(v2 + 20) > 1 )
    return (int *)(*(int (__fastcall **)(int))(*(_DWORD *)gameswf::tesselate_new::s_accepter + 20))(gameswf::tesselate_new::s_accepter);
  return result;
}


// ===== 7854f8 gameswf::tesselator_accepter::callback_combine(double *,void **,float *,void **,gameswf::tesselator_accepter*) =====
_QWORD *__fastcall gameswf::tesselator_accepter::callback_combine(_QWORD *result, int a2, int a3, _DWORD *a4)
{
  int v4; // r4
  int v5; // r12
  char *v6; // r1

  *(_QWORD *)((char *)&gameswf::tesselate_new::s_accepter[6] + (_DWORD)&off_18 * dword_A2C9F0) = 0;
  *(_QWORD *)&gameswf::tesselate_new::s_accepter[6 * dword_A2C9F0 + 8] = 0;
  *(_QWORD *)((char *)&gameswf::tesselate_new::s_accepter[10] + (_DWORD)&off_18 * dword_A2C9F0) = 0;
  v4 = dword_A2C9F0;
  v5 = (_DWORD)&off_18 * dword_A2C9F0++;
  v6 = (char *)gameswf::tesselate_new::s_accepter + v5;
  *((_QWORD *)v6 + 3) = *result;
  *(_QWORD *)&gameswf::tesselate_new::s_accepter[6 * v4 + 8] = result[1];
  *((_QWORD *)v6 + 5) = result[2];
  *a4 = (char *)&gameswf::s_tesselator_accepter_allocator + v5;
  return result;
}


// ===== 78558c gameswf::tesselator_accepter::callback_error(int,gameswf::tesselator_accepter*) =====
void gameswf::tesselator_accepter::callback_error()
{
  ;
}


// ===== 785590 gameswf::array<gameswf::tesselate_new::path_part>::reserve(int) =====
void __fastcall gameswf::array<gameswf::tesselate_new::path_part>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 32 * a2, 32 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(32 * a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 78560c gameswf::array<gameswf::point>::reserve(int) =====
void __fastcall gameswf::array<gameswf::point>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 8 * a2, 8 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(8 * a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 785688 gameswf::array<gameswf::point>::push_back<gameswf::point>(gameswf::point const&) =====
int __fastcall gameswf::array<gameswf::point>::push_back<gameswf::point>(_DWORD *a1, int *a2)
{
  int v2; // r3
  int v4; // r5
  int result; // r0
  int *v7; // r1

  v2 = a1[1];
  v4 = v2 + 1;
  if ( v2 + 1 > a1[2] )
  {
    gameswf::array<gameswf::point>::reserve((int)a1, v4 + (v4 >> 1));
    v2 = a1[1];
  }
  result = *a2;
  v7 = (int *)(*a1 + 8 * v2);
  *v7 = *a2;
  v7[1] = a2[1];
  a1[1] = v4;
  return result;
}


// ===== 7856d4 gameswf::array<gameswf::tesselate::fill_segment>::reserve(int) =====
void __fastcall gameswf::array<gameswf::tesselate::fill_segment>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 28 * a2, 28 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(28 * a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 78575c gameswf::array<gameswf::final_shape::segment>::reserve(int) =====
void __fastcall gameswf::array<gameswf::final_shape::segment>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 16 * a2, 16 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(16 * a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 7857d8 gameswf::array<gameswf::final_shape>::reserve(int) =====
void __fastcall gameswf::array<gameswf::final_shape>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 52 * a2, 52 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(52 * a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 785860 gameswf::array<gameswf::array<float>>::reserve(int) =====
void __fastcall gameswf::array<gameswf::array<float>>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 16 * a2, 16 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(16 * a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 7858dc gameswf::tesselate_new::copy_points_into_array(gameswf::array<float> *,gameswf::array<gameswf::point> const&) =====
void __fastcall gameswf::tesselate_new::copy_points_into_array(_DWORD *a1, _DWORD *a2)
{
  int v2; // r7
  int v5; // r7
  int v6; // r6
  int v7; // r3
  int v8; // r3
  int v9; // r2
  int v10; // r0
  int v11; // r1

  v2 = a2[1];
  if ( v2 > 0 )
  {
    v5 = 2 * (v2 - 1);
    v6 = a1[1];
    if ( v5 && v5 > a1[2] )
      gameswf::array<float>::reserve((int)a1, v5 + (v5 >> 1));
    if ( v5 > v6 )
    {
      v7 = 4 * v6;
      do
      {
        ++v6;
        *(_DWORD *)(*a1 + v7) = 0;
        v7 += 4;
      }
      while ( v6 != v5 );
    }
    a1[1] = v5;
    if ( (int)a2[1] > 1 )
    {
      v8 = 0;
      v9 = 0;
      do
      {
        ++v9;
        *(_DWORD *)(*a1 + v8) = *(_DWORD *)(*a2 + v8);
        v10 = *(_DWORD *)(*a2 + v8 + 4);
        v11 = *a1 + v8;
        v8 += 8;
        *(_DWORD *)(v11 + 4) = v10;
      }
      while ( a2[1] - 1 > v9 );
    }
  }
}


// ===== 7859a0 gameswf::tesselator_accepter::tesselator_accepter(bool,bool,bool) =====
gameswf::tesselator_accepter *__fastcall gameswf::tesselator_accepter::tesselator_accepter(
        gameswf::tesselator_accepter *this,
        int a2,
        int a3,
        int a4)
{
  GLUtesselator *v8; // r0
  double v9; // r2
  double v10; // r2
  GLUtesselator *v11; // r0

  *((_BYTE *)this + 48) = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_BYTE *)this + 16) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_BYTE *)this + 32) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_BYTE *)this + 52) = a3;
  *((_BYTE *)this + 53) = a2;
  v8 = (GLUtesselator *)gluNewTess();
  if ( a4 )
    WORD2(v9) = 29280;
  else
    WORD2(v9) = 29216;
  HIWORD(v9) = 16632;
  *((_DWORD *)this + 14) = v8;
  LODWORD(v9) = 0;
  gluTessProperty(v8, 100140, v9);
  if ( a3 )
    HIDWORD(v10) = 1072693248;
  else
    HIDWORD(v10) = 0;
  LODWORD(v10) = 0;
  gluTessProperty(*((GLUtesselator **)this + 14), 100141, v10);
  gluTessCallback(*((GLUtesselator **)this + 14), 100106, (void (*)())gameswf::tesselator_accepter::callback_begin);
  gluTessCallback(*((GLUtesselator **)this + 14), 100107, (void (*)())gameswf::tesselator_accepter::callback_vertex);
  gluTessCallback(*((GLUtesselator **)this + 14), 100111, (void (*)())gameswf::tesselator_accepter::callback_combine);
  gluTessCallback(*((GLUtesselator **)this + 14), 100109, gameswf::tesselator_accepter::callback_error);
  v11 = *((GLUtesselator **)this + 14);
  if ( a2 )
    gluTessCallback(v11, 100108, (void (*)())gameswf::tesselator_accepter::callback_end_strip);
  else
    gluTessCallback(v11, 100108, (void (*)())gameswf::tesselator_accepter::callback_end_tris);
  return this;
}


// ===== 785b08 gameswf::triangle_intersector::triangle_intersector(void) =====
gameswf::triangle_intersector *__fastcall gameswf::triangle_intersector::triangle_intersector(
        gameswf::triangle_intersector *this)
{
  gameswf::tesselator_accepter *v2; // r5

  v2 = (gameswf::tesselator_accepter *)operator new(0x3Cu, 0);
  gameswf::tesselator_accepter::tesselator_accepter(v2, 1, 0, 1);
  *(_DWORD *)this = v2;
  return this;
}


// ===== 785b3c gameswf::triangle_intersector::triangle_intersector(void) =====
gameswf::triangle_intersector *__fastcall gameswf::triangle_intersector::triangle_intersector(
        gameswf::triangle_intersector *this)
{
  gameswf::tesselator_accepter *v2; // r5

  v2 = (gameswf::tesselator_accepter *)operator new(0x3Cu, 0);
  gameswf::tesselator_accepter::tesselator_accepter(v2, 1, 0, 1);
  *(_DWORD *)this = v2;
  return this;
}


// ===== 785b70 `global constructor keyed to'.._.._src_gameswf_gameswf_tesselate.cpp =====
int `global constructor keyed to'.._.._src_gameswf_gameswf_tesselate.cpp()
{
  int result; // r0

  gameswf::tesselate::s_current_segments = 0;
  dword_A2C9FC = 0;
  dword_A2CA00 = 0;
  byte_A2CA04 = 0;
  _aeabi_atexit(
    (int)&gameswf::tesselate::s_current_segments,
    (int)gameswf::array<gameswf::tesselate::fill_segment>::~array,
    (int)&_dso_handle);
  gameswf::tesselate::s_current_path = 0;
  dword_A2CA0C = 0;
  dword_A2CA10 = 0;
  byte_A2CA14 = 0;
  _aeabi_atexit(
    (int)&gameswf::tesselate::s_current_path,
    (int)gameswf::array<gameswf::point>::~array,
    (int)&_dso_handle);
  gameswf::tesselate::s_last_point = 0;
  dword_A2CA1C = 0;
  gameswf::tesselate_new::s_path_parts = 0;
  dword_9FC9E0 = 0;
  dword_9FC9E4 = 0;
  byte_9FC9E8 = 0;
  result = _aeabi_atexit(
             (int)&gameswf::tesselate_new::s_path_parts,
             (int)gameswf::array<gameswf::tesselate_new::path_part>::~array,
             (int)&_dso_handle);
  dword_A2C9F0 = 0;
  dword_A2CA24 = 0;
  gameswf::tesselate_new::s_last_point = 0;
  return result;
}


// ===== 785c44 gameswf::array<gameswf::tesselate::fill_segment>::remove(int) =====
_DWORD *__fastcall gameswf::array<gameswf::tesselate::fill_segment>::remove(_DWORD *result, int a2)
{
  int v2; // r2
  _DWORD *v3; // r4

  v2 = result[1];
  v3 = result;
  if ( v2 == 1 )
  {
    result[1] = 0;
  }
  else
  {
    result = memmove((void *)(*result + 28 * a2), (const void *)(*result + 28 * a2 + 28), 28 * (v2 - 1 - a2));
    --v3[1];
  }
  return result;
}


// ===== 785c9c gameswf::array<gameswf::array<float>>::resize(int) =====
void __fastcall gameswf::array<gameswf::array<float>>::resize(_DWORD *a1, int a2)
{
  int v2; // r9
  int v5; // r6
  int v6; // r5
  _DWORD *v7; // r0
  int v8; // r3
  int v9; // r2
  int v10; // r1
  int v11; // r9
  int v12; // r2

  v2 = a1[1];
  if ( v2 > a2 )
  {
    v5 = 16 * a2;
    v6 = a2;
    do
    {
      while ( 1 )
      {
        v7 = (_DWORD *)(*a1 + v5);
        v8 = v7[1];
        if ( v8 < 0 )
          break;
        v7[1] = 0;
        ++v6;
        gameswf::array<float>::reserve((int)v7, 0);
        v5 += 16;
        if ( v6 == v2 )
          goto LABEL_8;
      }
      v9 = 4 * v8;
      do
      {
        ++v8;
        *(_DWORD *)(*v7 + v9) = 0;
        v9 += 4;
      }
      while ( v8 );
      v7[1] = 0;
      ++v6;
      gameswf::array<float>::reserve((int)v7, 0);
      v5 += 16;
    }
    while ( v6 != v2 );
  }
LABEL_8:
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::array<float>>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v2 < a2 )
  {
    v10 = v2;
    v11 = 16 * v2;
    do
    {
      ++v10;
      v12 = *a1 + v11;
      *(_DWORD *)v12 = 0;
      *(_BYTE *)(v12 + 12) = 0;
      *(_DWORD *)(v12 + 4) = 0;
      *(_DWORD *)(v12 + 8) = 0;
      v11 += 16;
    }
    while ( v10 != a2 );
  }
  a1[1] = a2;
}


// ===== 785d98 gameswf::tesselate::peel_off_and_emit(int,int,float,float) =====
void __fastcall gameswf::tesselate::peel_off_and_emit(int this, gameswf::tesselate *a2, float a3, float a4, float a5)
{
  void *v7; // r0
  int v8; // r4
  size_t v9; // r5
  float v10; // r0
  int v11; // r1
  int v12; // r2
  int v13; // r3
  float *v14; // r9
  float *v15; // r12
  int v16; // r1
  int v17; // r2
  float *v18; // r5
  float *v19; // r2
  float v20; // r11
  float *v21; // r9
  float v22; // r8
  size_t v23; // lr
  int v24; // r5
  int v25; // lr
  char *v26; // r1
  char *v27; // r12
  int v28; // r4
  int v29; // r7
  signed int v30; // r6
  size_t v31; // r3
  size_t v32; // r1
  int i; // r10
  int v34; // r10
  int *v35; // r8
  int v36; // r1
  int v37; // r2
  int v38; // r3
  int v39; // r1
  int v40; // r2
  int *v41; // r5
  int v42; // r1
  int v43; // r2
  int v44; // r3
  int v45; // r1
  int v46; // r2
  int v47; // r1
  int v48; // r2
  int v49; // r3
  int v50; // r1
  int v51; // r2
  signed int v52; // r4
  char *v53; // r7
  int v54; // r8
  int v55; // r5
  float v56; // r11
  float v57; // r9
  int v58; // r5
  int v59; // r12
  int v60; // r4
  _DWORD *v61; // r1
  int v62; // r7
  int v63; // r6
  _DWORD *v64; // r1
  signed int v65; // [sp+4h] [bp-48h]
  float *v67; // [sp+8h] [bp-44h]
  float *v68; // [sp+Ch] [bp-40h]
  int v69; // [sp+1Ch] [bp-30h] BYREF
  int v70; // [sp+20h] [bp-2Ch]
  int v71; // [sp+24h] [bp-28h]
  int v72; // [sp+28h] [bp-24h]
  int v73; // [sp+2Ch] [bp-20h]
  int v74; // [sp+30h] [bp-1Ch]
  int v75; // [sp+34h] [bp-18h]
  void *v76; // [sp+38h] [bp-14h] BYREF
  size_t v77; // [sp+3Ch] [bp-10h]
  signed int v78; // [sp+40h] [bp-Ch]
  char v79; // [sp+44h] [bp-8h]

  v7 = (void *)(a3 == a4);
  if ( a3 != a4 )
  {
    v76 = nullptr;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    if ( this >= (int)a2 )
    {
      v32 = 0;
    }
    else
    {
      v8 = 28 * this;
      v65 = 0;
      v9 = 0;
      while ( 1 )
      {
        v20 = 1.0;
        v21 = (float *)(gameswf::tesselate::s_current_segments + v8);
        if ( (float)(v21[3] - v21[1]) > 0.0 )
          v20 = (float)(a4 - v21[1]) / (float)(v21[3] - v21[1]);
        v22 = *v21 + (float)((float)(v21[2] - *v21) * v20);
        if ( (int)(v9 + 1) > v65 )
        {
          gameswf::array<gameswf::tesselate::fill_segment>::reserve((int)&v76, v9 + 1 + ((int)(v9 + 1) >> 1));
          v23 = v77;
        }
        else
        {
          v23 = v9;
        }
        v10 = *v21;
        v11 = *((_DWORD *)v21 + 1);
        v12 = *((_DWORD *)v21 + 2);
        v13 = *((_DWORD *)v21 + 3);
        v14 = v21 + 4;
        v15 = (float *)((char *)v76 + 28 * v23);
        *v15 = v10;
        *((_DWORD *)v15 + 1) = v11;
        *((_DWORD *)v15 + 2) = v12;
        *((_DWORD *)v15 + 3) = v13;
        v15 += 4;
        v16 = *((_DWORD *)v14 + 1);
        v17 = *((_DWORD *)v14 + 2);
        *v15 = *v14;
        *((_DWORD *)v15 + 1) = v16;
        *((_DWORD *)v15 + 2) = v17;
        v77 = v9 + 1;
        ++this;
        v18 = (float *)((char *)v76 + 28 * v9);
        v18[2] = v22;
        v18[3] = a4;
        v19 = (float *)(gameswf::tesselate::s_current_segments + v8);
        v19[1] = a4;
        *v19 = v22;
        v8 += 28;
        if ( (gameswf::tesselate *)this == a2 )
          break;
        v9 = v77;
        v65 = v78;
      }
      v32 = v77;
      v7 = v76;
    }
    qsort(v7, v32, 0x1Cu, (int (*)(const void *, const void *))gameswf::tesselate::compare_segment_x);
    v30 = v77;
    v31 = v77;
    if ( (int)v77 > 1 )
    {
      for ( i = 0; ; i = v52 )
      {
        v52 = i + 1;
        v53 = (char *)v76;
        v54 = 28 * i;
        v55 = 28 * (i + 1);
        v67 = (float *)((char *)v76 + v55);
        v68 = (float *)((char *)v76 + 28 * i);
        v56 = v68[2];
        v57 = *(float *)((char *)v76 + v55 + 8);
        if ( v56 <= v57 )
          break;
        v34 = *((_DWORD *)v76 + 7 * i);
        if ( fabs(*(float *)((char *)v76 + v54) - *(float *)((char *)v76 + v55)) < fabs(v56 - v57) )
        {
          *(_DWORD *)((char *)v76 + v54) = *(_DWORD *)((char *)v76 + v55);
          *(_DWORD *)&v53[v55] = v34;
          v35 = (int *)((char *)v76 + v54);
          v36 = v35[1];
          v37 = v35[2];
          v38 = v35[3];
          v69 = *v35;
          v70 = v36;
          v71 = v37;
          v72 = v38;
          v39 = v35[5];
          v40 = v35[6];
          v73 = v35[4];
          v74 = v39;
          v75 = v40;
          v41 = (int *)((char *)v76 + v55);
          v42 = v41[1];
          v43 = v41[2];
          v44 = v41[3];
          *v35 = *v41;
          v35[1] = v42;
          v35[2] = v43;
          v35[3] = v44;
          v35 += 4;
          v45 = v41[5];
          v46 = v41[6];
          *v35 = v41[4];
          v35[1] = v45;
          v35[2] = v46;
          v47 = v70;
          v48 = v71;
          v49 = v72;
          *v41 = v69;
          v41[1] = v47;
          v41[2] = v48;
          v41[3] = v49;
          v50 = v74;
          v51 = v75;
          v41[4] = v73;
          v41[5] = v50;
          v41[6] = v51;
          v30 = v77;
          goto LABEL_27;
        }
        v68[2] = v57;
        v67[2] = v56;
        v30 = v77;
        v31 = v77;
        if ( (int)(v77 - 1) <= v52 )
          goto LABEL_36;
LABEL_28:
        ;
      }
      if ( *((float *)v76 + 7 * i) == *(float *)((char *)v76 + v55)
        && v56 == v57
        && *((_DWORD *)v68 + 4) == *((_DWORD *)v67 + 5)
        && *((_DWORD *)v68 + 5) == *((_DWORD *)v67 + 4) )
      {
        gameswf::array<gameswf::tesselate::fill_segment>::remove(&v76, i + 1);
        gameswf::array<gameswf::tesselate::fill_segment>::remove(&v76, i);
        v52 = i;
        v30 = v77;
      }
LABEL_27:
      v31 = v30;
      if ( v30 - 1 <= v52 )
        goto LABEL_36;
      goto LABEL_28;
    }
LABEL_36:
    if ( v30 > 0 && (v26 = (char *)v76, *((_DWORD *)v76 + 4) == -1) && *((int *)v76 + 5) >= 0 )
    {
      if ( v30 > 1 )
      {
        v24 = 1;
        v25 = 0;
        while ( 1 )
        {
          v27 = &v26[v25];
          v28 = v25 + 28;
          if ( *(int *)&v26[v25 + 20] >= 0 )
          {
            v69 = *((_DWORD *)v27 + 1);
            v29 = v24;
            v70 = *((_DWORD *)v27 + 3);
            v71 = *(_DWORD *)&v26[v25];
            v72 = *((_DWORD *)v27 + 2);
            v73 = *(_DWORD *)&v26[v28];
            v74 = *(_DWORD *)&v26[v25 + 36];
            (*(void (__fastcall **)(int, _DWORD, int *))(*(_DWORD *)gameswf::tesselate::s_accepter + 8))(
              gameswf::tesselate::s_accepter,
              *((_DWORD *)v27 + 5),
              &v69);
            v30 = v77;
          }
          else
          {
            v29 = v24;
          }
          v25 = v28;
          ++v24;
          v31 = v30;
          if ( v30 - 1 <= v29 )
            break;
          v26 = (char *)v76;
        }
      }
    }
    else if ( v30 > 1 )
    {
      v58 = 1;
      v59 = 0;
      do
      {
        v60 = v59 + 28;
        v61 = (char *)v76 + v59;
        v62 = v58;
        if ( *(int *)((char *)v76 + v59 + 16) >= 0 )
        {
          v69 = v61[1];
          v70 = v61[3];
          v71 = *(_DWORD *)((char *)v76 + v59);
          v72 = v61[2];
          v73 = *(_DWORD *)((char *)v76 + v60);
          v74 = *(_DWORD *)((char *)v76 + v59 + 36);
          (*(void (__fastcall **)(int, _DWORD, int *))(*(_DWORD *)gameswf::tesselate::s_accepter + 8))(
            gameswf::tesselate::s_accepter,
            v61[4],
            &v69);
          v30 = v77;
        }
        v59 = v60;
        ++v58;
        v31 = v30;
      }
      while ( v30 - 1 > v62 );
    }
    if ( v30 < 0 )
    {
      v63 = 28 * v30;
      do
      {
        ++v31;
        v64 = (char *)v76 + v63;
        *v64 = 0;
        v64[3] = 0;
        v64[1] = 0;
        v64[2] = 0;
        v63 += 28;
      }
      while ( v31 );
    }
    v77 = 0;
    gameswf::array<gameswf::tesselate::fill_segment>::reserve((int)&v76, 0);
  }
}


// ===== 7862b8 gameswf::array<gameswf::tesselate::fill_segment>::~array() =====
_DWORD *__fastcall gameswf::array<gameswf::tesselate::fill_segment>::~array(_DWORD *a1)
{
  int v2; // r0
  int v3; // r2
  _DWORD *v4; // r1

  v2 = a1[1];
  if ( v2 < 0 )
  {
    v3 = 28 * v2;
    do
    {
      ++v2;
      v4 = (_DWORD *)(*a1 + v3);
      *v4 = 0;
      v4[3] = 0;
      v4[1] = 0;
      v4[2] = 0;
      v3 += 28;
    }
    while ( v2 );
  }
  a1[1] = 0;
  gameswf::array<gameswf::tesselate::fill_segment>::reserve((int)a1, 0);
  return a1;
}


// ===== 786330 gameswf::tesselate::output_current_segments(void) =====
void __fastcall gameswf::tesselate::output_current_segments(gameswf::tesselate *this)
{
  int v1; // r9
  int v2; // r6
  int v3; // r5
  float v4; // r7
  int v5; // r4
  float v6; // r10
  int v7; // r2
  int v8; // r10
  bool v9; // r3
  int v10; // r6
  bool v11; // r3
  int v12; // r2
  _DWORD *v13; // r1
  float v14; // [sp+0h] [bp-1Ch]
  int v15; // [sp+4h] [bp-18h]
  float *v16; // [sp+8h] [bp-14h]

  if ( gameswf::tesselate::s_shape_has_fill )
  {
    v1 = dword_A2C9FC;
    if ( dword_A2C9FC <= 0 )
    {
LABEL_28:
      if ( v1 < 0 )
      {
        v12 = 28 * v1;
        do
        {
          ++v1;
          v13 = (_DWORD *)(gameswf::tesselate::s_current_segments + v12);
          *v13 = 0;
          v13[3] = 0;
          v13[1] = 0;
          v13[2] = 0;
          v12 += 28;
        }
        while ( v1 );
      }
      goto LABEL_14;
    }
    qsort(
      (void *)gameswf::tesselate::s_current_segments,
      dword_A2C9FC,
      0x1Cu,
      (int (*)(const void *, const void *))gameswf::tesselate::compare_segment_y);
    v1 = dword_A2C9FC;
    v2 = 0;
    while ( 1 )
    {
LABEL_5:
      if ( v2 >= v1 )
        goto LABEL_13;
      v3 = v2 + 1;
      v15 = 28 * v2;
      v16 = (float *)(gameswf::tesselate::s_current_segments + 28 * v2);
      v4 = v16[1];
      if ( v2 + 1 == v1 || *(float *)(gameswf::tesselate::s_current_segments + 28 * v3 + 4) > v4 )
      {
        v5 = v2 + 1;
      }
      else
      {
        v8 = 28 * (v2 + 2);
        v5 = v2 + 1;
        do
        {
          if ( ++v5 == v1 )
            break;
          v9 = *(float *)(gameswf::tesselate::s_current_segments + v8 + 4) > v4;
          v8 += 28;
        }
        while ( !v9 );
      }
      qsort(v16, v5 - v2, 0x1Cu, (int (*)(const void *, const void *))gameswf::tesselate::compare_segment_y);
      if ( dword_A2C9FC <= v5 )
        break;
      v7 = gameswf::tesselate::s_current_segments + 28 * v5;
      v6 = *(float *)(gameswf::tesselate::s_current_segments + v15 + 12);
      if ( v6 <= *(float *)(v7 + 4) )
      {
LABEL_11:
        gameswf::tesselate::peel_off_and_emit(v2, (gameswf::tesselate *)v5, v4, v6, v14);
        if ( v2 >= dword_A2C9FC || v6 < *(float *)(gameswf::tesselate::s_current_segments + v15 + 12) )
        {
          v1 = dword_A2C9FC;
        }
        else
        {
          v10 = 28 * v3;
          while ( 1 )
          {
            v1 = v3;
            if ( v3 == dword_A2C9FC )
            {
              v2 = dword_A2C9FC;
              goto LABEL_5;
            }
            v11 = *(float *)(gameswf::tesselate::s_current_segments + v10 + 12) <= v6;
            v10 += 28;
            if ( !v11 )
              break;
            ++v3;
          }
          v2 = v3;
          v1 = dword_A2C9FC;
        }
      }
      else
      {
        gameswf::tesselate::peel_off_and_emit(v2, (gameswf::tesselate *)v5, v4, *(float *)(v7 + 4), v14);
        v1 = dword_A2C9FC;
      }
    }
    v6 = *(float *)(gameswf::tesselate::s_current_segments + v15 + 12);
    goto LABEL_11;
  }
  v1 = dword_A2C9FC;
LABEL_13:
  if ( v1 <= 0 )
    goto LABEL_28;
LABEL_14:
  dword_A2C9FC = 0;
  gameswf::array<gameswf::tesselate::fill_segment>::reserve((int)&gameswf::tesselate::s_current_segments, 0);
}


// ===== 7865f0 gameswf::tesselate_new::add_line_segment(float,float) =====
_DWORD *__fastcall gameswf::tesselate_new::add_line_segment(gameswf::tesselate_new *this, int a2, float a3)
{
  _DWORD *v3; // r4
  int v4; // r2
  int v5; // r5
  _DWORD *result; // r0

  dword_A2CA24 = a2;
  gameswf::tesselate_new::s_last_point = (int)this;
  v3 = (_DWORD *)(gameswf::tesselate_new::s_path_parts + 32 * (dword_9FC9E0 - 1));
  v4 = v3[5];
  v5 = v4 + 1;
  if ( v4 + 1 > v3[6] )
  {
    gameswf::array<gameswf::point>::reserve((int)(v3 + 4), v5 + (v5 >> 1));
    v4 = v3[5];
  }
  result = (_DWORD *)(v3[4] + 8 * v4);
  *result = gameswf::tesselate_new::s_last_point;
  result[1] = dword_A2CA24;
  v3[5] = v5;
  return result;
}


// ===== 786670 gameswf::tesselate_new::curve(float,float,float,float,float,float) =====
_DWORD *__fastcall gameswf::tesselate_new::curve(
        gameswf::tesselate_new *this,
        float a2,
        float a3,
        float a4,
        gameswf::tesselate_new *a5,
        int a6,
        float a7)
{
  float v7; // r5
  float v8; // r8
  float v9; // r4
  gameswf::tesselate_new *v10; // r10
  float v11; // r9
  float v12; // r11
  float v13; // r7
  float v14; // r6
  float v15; // r10
  float v16; // r0
  float v17; // r11
  float v18; // r9
  float v19; // r0
  float v21; // [sp+8h] [bp-14h]

  v7 = a4;
  v8 = a2;
  v9 = a3;
  v10 = this;
  v11 = (float)(*(float *)&this + *(float *)&a5) * 0.5;
  v12 = (float)(a2 + *(float *)&a6) * 0.5;
  v13 = (float)(a3 + v11) * 0.5;
  v14 = (float)(a4 + v12) * 0.5;
  v21 = fabs(v11 - v13);
  if ( (float)(v21 + fabs(v12 - v14)) >= *(float *)&gameswf::tesselate_new::s_tolerance )
  {
    while ( 1 )
    {
      gameswf::tesselate_new::curve(v10, v8, (float)(*(float *)&v10 + v9) * 0.5, (float)(v8 + v7) * 0.5, v13, v14, v21);
      v9 = (float)(v9 + *(float *)&a5) * 0.5;
      v7 = (float)(v7 + *(float *)&a6) * 0.5;
      v15 = (float)(*(float *)&a5 + v13) * 0.5;
      v16 = (float)(*(float *)&a6 + v14) * 0.5;
      v17 = (float)(v15 + v9) * 0.5;
      v18 = (float)(v16 + v7) * 0.5;
      v19 = fabs(v15 - v17) + fabs(v16 - v18);
      *(float *)&v10 = v13;
      v8 = v14;
      if ( v19 < *(float *)&gameswf::tesselate_new::s_tolerance )
        break;
      v14 = v18;
      v13 = v17;
    }
  }
  return gameswf::tesselate_new::add_line_segment(a5, a6, a3);
}


// ===== 786880 gameswf::tesselate_new::add_curve_segment(float,float,float,float) =====
_DWORD *__fastcall gameswf::tesselate_new::add_curve_segment(
        gameswf::tesselate_new *this,
        float a2,
        gameswf::tesselate_new *a3,
        int a4,
        float a5)
{
  float v6; // [sp+8h] [bp-4h]

  if ( *(float *)&this == *(float *)&a3 && a2 == *(float *)&a4 )
    return gameswf::tesselate_new::add_line_segment(a3, a4, *(float *)&a3);
  else
    return gameswf::tesselate_new::curve(
             (gameswf::tesselate_new *)gameswf::tesselate_new::s_last_point,
             *(float *)&dword_A2CA24,
             *(float *)&this,
             a2,
             a3,
             a4,
             v6);
}


// ===== 786900 gameswf::tesselate::add_line_segment(float,float) =====
int __fastcall gameswf::tesselate::add_line_segment(gameswf::tesselate *this, int a2, float a3)
{
  int v4; // r7
  int v6; // r9
  gameswf::tesselate *v7; // r10
  int v8; // r11
  int v9; // r3
  int v10; // r8
  gameswf::tesselate *v11; // r12
  gameswf::tesselate **v12; // r3
  int v13; // r2
  int v14; // r7
  int v15; // r1
  int result; // r0
  gameswf::tesselate *v17; // [sp+4h] [bp-10h]
  int v18; // [sp+8h] [bp-Ch]
  int v19; // [sp+Ch] [bp-8h]

  v4 = dword_A2CA1C;
  v6 = gameswf::tesselate::s_current_left_style;
  v7 = (gameswf::tesselate *)gameswf::tesselate::s_last_point;
  v8 = gameswf::tesselate::s_current_right_style;
  v19 = gameswf::tesselate::s_current_line_style;
  if ( *(float *)&a2 < *(float *)&dword_A2CA1C )
  {
    v8 = gameswf::tesselate::s_current_left_style;
    v6 = gameswf::tesselate::s_current_right_style;
  }
  v9 = dword_A2C9FC;
  if ( *(float *)&a2 < *(float *)&dword_A2CA1C )
    v18 = dword_A2CA1C;
  v10 = dword_A2C9FC + 1;
  if ( *(float *)&a2 >= *(float *)&dword_A2CA1C )
  {
    v18 = a2;
    v11 = this;
  }
  else
  {
    v11 = (gameswf::tesselate *)gameswf::tesselate::s_last_point;
    v4 = a2;
    v7 = this;
  }
  if ( v10 > dword_A2CA00 )
  {
    v17 = v11;
    gameswf::array<gameswf::tesselate::fill_segment>::reserve(
      (int)&gameswf::tesselate::s_current_segments,
      v10 + (v10 >> 1));
    v9 = dword_A2C9FC;
    v11 = v17;
  }
  v12 = (gameswf::tesselate **)(gameswf::tesselate::s_current_segments + 28 * v9);
  v12[6] = (gameswf::tesselate *)v19;
  v12[5] = (gameswf::tesselate *)v8;
  v12[4] = (gameswf::tesselate *)v6;
  v12[2] = v11;
  v12[3] = (gameswf::tesselate *)v18;
  *v12 = v7;
  v12[1] = (gameswf::tesselate *)v4;
  v13 = dword_A2CA0C;
  dword_A2C9FC = v10;
  v14 = dword_A2CA0C + 1;
  dword_A2CA1C = a2;
  gameswf::tesselate::s_last_point = (int)this;
  if ( dword_A2CA0C + 1 > dword_A2CA10 )
  {
    gameswf::array<gameswf::point>::reserve((int)&gameswf::tesselate::s_current_path, v14 + (v14 >> 1));
    v13 = dword_A2CA0C;
  }
  v15 = gameswf::tesselate::s_current_path;
  result = gameswf::tesselate::s_current_path + 8 * v13;
  *(float *)(result + 4) = *(float *)&a2;
  *(_DWORD *)(v15 + 8 * v13) = this;
  dword_A2CA0C = v14;
  return result;
}


// ===== 786a38 gameswf::tesselate::curve(float,float,float,float,float,float) =====
int __fastcall gameswf::tesselate::curve(
        gameswf::tesselate *this,
        float a2,
        float a3,
        float a4,
        gameswf::tesselate *a5,
        int a6,
        float a7)
{
  float v7; // r5
  float v8; // r8
  float v9; // r4
  gameswf::tesselate *v10; // r10
  float v11; // r9
  float v12; // r11
  float v13; // r7
  float v14; // r6
  float v15; // r10
  float v16; // r0
  float v17; // r11
  float v18; // r9
  float v19; // r0
  float v21; // [sp+8h] [bp-14h]

  v7 = a4;
  v8 = a2;
  v9 = a3;
  v10 = this;
  v11 = (float)(*(float *)&this + *(float *)&a5) * 0.5;
  v12 = (float)(a2 + *(float *)&a6) * 0.5;
  v13 = (float)(a3 + v11) * 0.5;
  v14 = (float)(a4 + v12) * 0.5;
  v21 = fabs(v11 - v13);
  if ( (float)(v21 + fabs(v12 - v14)) >= *(float *)&gameswf::tesselate::s_tolerance )
  {
    while ( 1 )
    {
      gameswf::tesselate::curve(v10, v8, (float)(*(float *)&v10 + v9) * 0.5, (float)(v8 + v7) * 0.5, v13, v14, v21);
      v9 = (float)(v9 + *(float *)&a5) * 0.5;
      v7 = (float)(v7 + *(float *)&a6) * 0.5;
      v15 = (float)(*(float *)&a5 + v13) * 0.5;
      v16 = (float)(*(float *)&a6 + v14) * 0.5;
      v17 = (float)(v15 + v9) * 0.5;
      v18 = (float)(v16 + v7) * 0.5;
      v19 = fabs(v15 - v17) + fabs(v16 - v18);
      *(float *)&v10 = v13;
      v8 = v14;
      if ( v19 < *(float *)&gameswf::tesselate::s_tolerance )
        break;
      v14 = v18;
      v13 = v17;
    }
  }
  return gameswf::tesselate::add_line_segment(a5, a6, a3);
}


// ===== 786c48 gameswf::tesselate::add_curve_segment(float,float,float,float) =====
int __fastcall gameswf::tesselate::add_curve_segment(
        gameswf::tesselate *this,
        float a2,
        gameswf::tesselate *a3,
        int a4,
        float a5)
{
  float v6; // [sp+8h] [bp-4h]

  if ( *(float *)&this == *(float *)&a3 && a2 == *(float *)&a4 )
    return gameswf::tesselate::add_line_segment(a3, a4, *(float *)&a3);
  else
    return gameswf::tesselate::curve(
             (gameswf::tesselate *)gameswf::tesselate::s_last_point,
             *(float *)&dword_A2CA1C,
             *(float *)&this,
             a2,
             a3,
             a4,
             v6);
}


// ===== 786cc8 gameswf::tesselator_accepter::callback_vertex(void const*,gameswf::tesselator_accepter*) =====
float __fastcall gameswf::tesselator_accepter::callback_vertex(
        gameswf::tesselator_accepter *this,
        _DWORD *a2,
        gameswf::tesselator_accepter *a3)
{
  float v5; // r0
  float v6; // r6
  float result; // r0
  int v8; // r3
  float v9; // r7
  int v10; // r5
  int v11; // r1

  v5 = *(double *)this;
  v6 = v5;
  result = *((double *)this + 1);
  v8 = a2[2];
  v9 = result;
  v10 = v8 + 1;
  if ( v8 + 1 > a2[3] )
  {
    gameswf::array<gameswf::point>::reserve((int)(a2 + 1), v10 + (v10 >> 1));
    v8 = a2[2];
  }
  v11 = a2[1] + 8 * v8;
  *(float *)(v11 + 4) = v9;
  *(float *)v11 = v6;
  a2[2] = v10;
  return result;
}


// ===== 786d28 gameswf::tesselate_new::try_to_combine_path(int) =====
int __fastcall gameswf::tesselate_new::try_to_combine_path(gameswf::tesselate_new *this, int a2)
{
  int v2; // r5
  int v3; // r10
  int v4; // r11
  gameswf::tesselate_new *v5; // r4
  int v6; // r9
  float *v7; // r8
  int v8; // r6
  int v9; // r4
  float *v10; // r8
  _DWORD *v11; // r2
  float v13; // r1
  float *v14; // r8
  int v15; // r6
  int i; // r7
  int v17; // r4
  _DWORD *v18; // r7
  int v19; // r3
  _DWORD *v20; // r1
  float *v21; // [sp+8h] [bp-14h]
  float *v22; // [sp+10h] [bp-Ch]
  float v23; // [sp+14h] [bp-8h]

  v2 = gameswf::tesselate_new::s_path_parts;
  v3 = gameswf::tesselate_new::s_path_parts + 32 * (_DWORD)this;
  if ( *(_BYTE *)(v3 + 12) )
    return 0;
  if ( *(_DWORD *)(v3 + 4) == -1 )
    return 0;
  v4 = *(_DWORD *)(v3 + 20);
  if ( v4 <= 0 )
    return 0;
  v21 = *(float **)(v3 + 16);
  v23 = v21[2 * v4 - 2];
  v22 = &v21[2 * v4 - 2];
  if ( *v21 == v23 && v21[1] == v22[1] )
  {
    *(_BYTE *)(v3 + 12) = 1;
    return 1;
  }
  if ( dword_9FC9E0 <= 0 )
    return 0;
  v5 = nullptr;
  while ( 1 )
  {
    if ( v5 != this && !*(_BYTE *)(v2 + 12) && *(_DWORD *)(v3 + 4) == *(_DWORD *)(v2 + 4) )
    {
      v6 = *(_DWORD *)(v2 + 20);
      if ( v6 > 0 )
      {
        v7 = *(float **)(v2 + 16);
        if ( v23 == *v7 && v7[1] == v22[1] )
        {
          if ( v6 != 1 )
          {
            v8 = 1;
            while ( 1 )
            {
              v9 = v4 + 1;
              v10 = &v7[2 * v8++];
              if ( v4 + 1 > *(_DWORD *)(v3 + 24) )
              {
                gameswf::array<gameswf::point>::reserve(v3 + 16, v9 + (v9 >> 1));
                v4 = *(_DWORD *)(v3 + 20);
              }
              v11 = (_DWORD *)(*(_DWORD *)(v3 + 16) + 8 * v4);
              *v11 = *(_DWORD *)v10;
              v4 = v9;
              v11[1] = *((_DWORD *)v10 + 1);
              *(_DWORD *)(v3 + 20) = v9;
              if ( v8 >= *(_DWORD *)(v2 + 20) )
                break;
              v7 = *(float **)(v2 + 16);
            }
          }
          *(_DWORD *)(v2 + 4) = -1;
          return 1;
        }
        v13 = v7[2 * v6 - 2];
        v14 = &v7[2 * v6 - 2];
        if ( *v21 == v13 && v14[1] == v21[1] )
          break;
      }
    }
    v5 = (gameswf::tesselate_new *)((char *)v5 + 1);
    v2 += 32;
    if ( v5 == (gameswf::tesselate_new *)dword_9FC9E0 )
      return 0;
  }
  if ( v4 != 1 )
  {
    v15 = 1;
    for ( i = *(_DWORD *)(v3 + 16); ; i = *(_DWORD *)(v3 + 16) )
    {
      v17 = v6 + 1;
      v18 = (_DWORD *)(i + 8 * v15);
      v19 = v6;
      ++v15;
      if ( v6 + 1 > *(_DWORD *)(v2 + 24) )
      {
        gameswf::array<gameswf::point>::reserve(v2 + 16, v17 + (v17 >> 1));
        v19 = *(_DWORD *)(v2 + 20);
      }
      ++v6;
      v20 = (_DWORD *)(*(_DWORD *)(v2 + 16) + 8 * v19);
      *v20 = *v18;
      v20[1] = v18[1];
      *(_DWORD *)(v2 + 20) = v17;
      if ( v15 >= *(_DWORD *)(v3 + 20) )
        break;
    }
  }
  *(_DWORD *)(v3 + 4) = -1;
  return 1;
}


// ===== 786fac gameswf::final_shape::add_curve(float,float,float,float,float,float) =====
int __fastcall gameswf::final_shape::add_curve(
        gameswf::final_shape *this,
        float a2,
        float a3,
        float a4,
        float a5,
        float a6,
        float a7)
{
  float v7; // r8
  float v9; // r10
  float v10; // r5
  float v11; // r11
  float v12; // r0
  float v13; // r7
  float v14; // r6
  int v15; // r5
  int v16; // r6
  int v17; // r2
  int v18; // r3
  int v20; // r3
  float v21; // r8
  float v22; // r0
  float v23; // r11
  float v24; // r9
  _BOOL4 v25; // r0

  v7 = a2;
  v9 = a3;
  v10 = a4;
  v11 = (float)(a2 + a6) * 0.5;
  v12 = (float)(a3 + a7) * 0.5;
  v13 = (float)(a4 + v11) * 0.5;
  v14 = (float)(a5 + v12) * 0.5;
  if ( *((float *)this + 2) <= (float)(fabs(v11 - v13) + fabs(v12 - v14)) )
  {
    while ( 1 )
    {
      gameswf::final_shape::add_curve(this, v7, v9, (float)(v7 + v10) * 0.5, (float)(v9 + a5) * 0.5, v13, v14);
      v10 = (float)(a6 + v10) * 0.5;
      a5 = (float)(a7 + a5) * 0.5;
      v21 = (float)(a6 + v13) * 0.5;
      v22 = (float)(a7 + v14) * 0.5;
      v23 = (float)(v21 + v10) * 0.5;
      v24 = (float)(v22 + a5) * 0.5;
      v25 = *((float *)this + 2) > (float)(fabs(v21 - v23) + fabs(v22 - v24));
      v7 = v13;
      v9 = v14;
      if ( v25 )
        break;
      v14 = v24;
      v13 = v23;
    }
  }
  v15 = *((_DWORD *)this + 8);
  v16 = v15 + 1;
  if ( v15 + 1 > *((_DWORD *)this + 9) )
    gameswf::array<gameswf::point>::reserve((int)this + 28, v16 + (v16 >> 1));
  v17 = *((_DWORD *)this + 8);
  v18 = *((_DWORD *)this + 7);
  *(float *)(v18 + 8 * v17 + 4) = a7;
  *(float *)(v18 + 8 * v17) = a6;
  v20 = *((_DWORD *)this + 7);
  *((_DWORD *)this + 8) = v16;
  *((_DWORD *)this + 11) = *(_DWORD *)(v20 + 8 * v15);
  *((_DWORD *)this + 12) = *(_DWORD *)(v20 + 8 * v15 + 4);
  return LODWORD(a7);
}


// ===== 7871f4 gameswf::tesselator_accepter::callback_begin(int,gameswf::tesselator_accepter*) =====
int __fastcall gameswf::tesselator_accepter::callback_begin(int a1, _DWORD *a2)
{
  int result; // r0
  int v3; // r2
  _DWORD *v4; // r5

  *a2 = a1;
  result = a2[2];
  if ( result < 0 )
  {
    v3 = 8 * result;
    do
    {
      ++result;
      v4 = (_DWORD *)(a2[1] + v3);
      *v4 = 0;
      v4[1] = 0;
      v3 += 8;
    }
    while ( result );
  }
  a2[2] = 0;
  return result;
}


// ===== 787248 gameswf::tesselate::end_path(void) =====
int __fastcall gameswf::tesselate::end_path(gameswf::tesselate *this)
{
  int v1; // r3
  int result; // r0
  int v3; // r2
  _DWORD *v4; // r12

  if ( gameswf::tesselate::s_current_line_style >= 0 )
  {
    v1 = dword_A2CA0C;
    if ( dword_A2CA0C <= 1 )
      goto LABEL_5;
    result = (*(int (__fastcall **)(int))(*(_DWORD *)gameswf::tesselate::s_accepter + 12))(gameswf::tesselate::s_accepter);
  }
  v1 = dword_A2CA0C;
LABEL_5:
  if ( v1 < 0 )
  {
    result = 0;
    v3 = 8 * v1;
    do
    {
      ++v1;
      v4 = (_DWORD *)(gameswf::tesselate::s_current_path + v3);
      *v4 = 0;
      v4[1] = 0;
      v3 += 8;
    }
    while ( v1 );
  }
  dword_A2CA0C = 0;
  return result;
}


// ===== 7872e4 gameswf::tesselate::begin_path(int,int,int,float,float) =====
int __fastcall gameswf::tesselate::begin_path(gameswf::tesselate *this, int a2, int a3, int a4, int a5, float a6)
{
  int v8; // r0
  int v10; // r12
  bool v11; // zf
  int v12; // r2
  int result; // r0
  int v14; // r3
  _DWORD *v15; // r7

  v8 = dword_A2CA0C;
  gameswf::tesselate::s_last_point = a4;
  dword_A2CA1C = a5;
  gameswf::tesselate::s_current_left_style = (int)this;
  gameswf::tesselate::s_current_right_style = a2;
  gameswf::tesselate::s_current_line_style = a3;
  if ( dword_A2CA0C < 0 )
  {
    v14 = 8 * dword_A2CA0C;
    do
    {
      ++v8;
      v15 = (_DWORD *)(gameswf::tesselate::s_current_path + v14);
      *v15 = 0;
      v15[1] = 0;
      v14 += 8;
    }
    while ( v8 );
  }
  dword_A2CA0C = 0;
  if ( dword_A2CA10 <= 0 )
  {
    gameswf::array<gameswf::point>::reserve((int)&gameswf::tesselate::s_current_path, 1);
    v10 = 8 * dword_A2CA0C;
  }
  else
  {
    v10 = 0;
  }
  v11 = a2 == -1;
  if ( a2 == -1 )
    v11 = (gameswf::tesselate *)((char *)this + 1) == nullptr;
  v12 = gameswf::tesselate::s_current_path;
  *(_DWORD *)(gameswf::tesselate::s_current_path + v10) = gameswf::tesselate::s_last_point;
  result = dword_A2CA1C;
  *(_DWORD *)(v12 + v10 + 4) = dword_A2CA1C;
  if ( !v11 )
    gameswf::tesselate::s_shape_has_fill = 1;
  dword_A2CA0C = 1;
  if ( a3 != -1 )
    gameswf::tesselate::s_shape_has_line = 1;
  return result;
}


// ===== 7873dc gameswf::tesselate::end_shape(void) =====
void __fastcall gameswf::tesselate::end_shape(gameswf::tesselate *this)
{
  int v1; // r2
  int v2; // r3
  _DWORD *v3; // r12

  gameswf::tesselate::output_current_segments(this);
  v1 = dword_A2CA0C;
  gameswf::tesselate::s_accepter = 0;
  if ( dword_A2CA0C < 0 )
  {
    v2 = 8 * dword_A2CA0C;
    do
    {
      ++v1;
      v3 = (_DWORD *)(gameswf::tesselate::s_current_path + v2);
      *v3 = 0;
      v3[1] = 0;
      v2 += 8;
    }
    while ( v1 );
  }
  dword_A2CA0C = 0;
  gameswf::array<gameswf::point>::reserve((int)&gameswf::tesselate::s_current_path, 0);
}


// ===== 787454 gameswf::tesselate::begin_shape(gameswf::tesselate::trapezoid_accepter *,float) =====
bool __fastcall gameswf::tesselate::begin_shape(int a1, float a2)
{
  int v2; // r2
  int v3; // r2
  _BOOL4 result; // r0
  int v5; // r3
  _DWORD *v6; // r12
  int v7; // r0
  _DWORD *v8; // r12

  v2 = dword_A2C9FC;
  gameswf::tesselate::s_accepter = a1;
  if ( dword_A2C9FC < 0 )
  {
    v7 = 28 * dword_A2C9FC;
    do
    {
      ++v2;
      v8 = (_DWORD *)(gameswf::tesselate::s_current_segments + v7);
      *v8 = 0;
      v8[3] = 0;
      v8[1] = 0;
      v8[2] = 0;
      v7 += 28;
    }
    while ( v2 );
  }
  v3 = dword_A2CA0C;
  dword_A2C9FC = 0;
  if ( dword_A2CA0C < 0 )
  {
    v5 = 8 * dword_A2CA0C;
    do
    {
      ++v3;
      v6 = (_DWORD *)(gameswf::tesselate::s_current_path + v5);
      *v6 = 0;
      v6[1] = 0;
      v5 += 8;
    }
    while ( v3 );
  }
  dword_A2CA0C = 0;
  result = a2 > 0.0;
  if ( a2 > 0.0 )
    gameswf::tesselate::s_tolerance = LODWORD(a2);
  else
    gameswf::tesselate::s_tolerance = 1065353216;
  gameswf::tesselate::s_shape_has_line = 0;
  gameswf::tesselate::s_current_right_style = -1;
  gameswf::tesselate::s_current_line_style = -1;
  gameswf::tesselate::s_current_left_style = -1;
  gameswf::tesselate::s_shape_has_fill = 0;
  return result;
}


// ===== 787578 gameswf::tesselator_accepter::init(void) =====
int *__fastcall gameswf::tesselator_accepter::init(int *this)
{
  int v1; // r2
  int v2; // r2
  int v3; // r3
  int v4; // r3
  int v5; // r1
  int v6; // r3
  int v7; // r1
  int v8; // r2

  dword_A2C9F0 = 0;
  v1 = *(this + 2);
  if ( v1 < 0 )
  {
    v4 = 8 * v1;
    do
    {
      v5 = *(this + 1);
      ++v1;
      *(_DWORD *)(v5 + v4) = 0;
      *(_DWORD *)(v5 + v4 + 4) = 0;
      v4 += 8;
    }
    while ( v1 );
  }
  v2 = *(this + 6);
  *(this + 2) = 0;
  if ( v2 < 0 )
  {
    v6 = 8 * v2;
    do
    {
      v7 = *(this + 5);
      ++v2;
      *(_DWORD *)(v7 + v6) = 0;
      *(_DWORD *)(v7 + v6 + 4) = 0;
      v6 += 8;
    }
    while ( v2 );
  }
  v3 = *(this + 10);
  *(this + 6) = 0;
  if ( v3 < 0 )
  {
    v8 = 2 * v3;
    do
    {
      ++v3;
      *(_WORD *)(*(this + 9) + v8) = 0;
      v8 += 2;
    }
    while ( v3 );
  }
  *(this + 10) = 0;
  return this;
}


// ===== 787664 gameswf::array<gameswf::final_shape::segment>::resize(int) [clone] =====
void __fastcall gameswf::array<gameswf::final_shape::segment>::resize(_DWORD *a1)
{
  int v1; // r4
  int i; // r5
  _DWORD *v4; // r0
  int v5; // r3
  int v6; // r2
  _DWORD *v7; // r12
  int v8; // r2
  int v9; // r1

  v1 = a1[1];
  if ( v1 <= 0 )
  {
    if ( v1 < 0 )
    {
      v8 = 16 * v1;
      do
      {
        ++v1;
        v9 = *a1 + v8;
        *(_DWORD *)v9 = 0;
        *(_BYTE *)(v9 + 12) = 0;
        *(_DWORD *)(v9 + 4) = 0;
        *(_DWORD *)(v9 + 8) = 0;
        v8 += 16;
      }
      while ( v1 );
    }
  }
  else
  {
    for ( i = 0; i != v1; ++i )
    {
      while ( 1 )
      {
        v4 = (_DWORD *)(*a1 + 16 * i);
        v5 = v4[1];
        if ( v5 < 0 )
          break;
        v4[1] = 0;
        ++i;
        gameswf::array<gameswf::point>::reserve((int)v4, 0);
        if ( i == v1 )
          goto LABEL_12;
      }
      v6 = 8 * v5;
      do
      {
        ++v5;
        v7 = (_DWORD *)(*v4 + v6);
        *v7 = 0;
        v7[1] = 0;
        v6 += 8;
      }
      while ( v5 );
      v4[1] = 0;
      gameswf::array<gameswf::point>::reserve((int)v4, 0);
    }
  }
LABEL_12:
  a1[1] = 0;
}


// ===== 787738 gameswf::array<gameswf::tesselate_new::path_part>::resize(int) =====
void __fastcall gameswf::array<gameswf::tesselate_new::path_part>::resize(_DWORD *a1, int a2)
{
  int v2; // r9
  int v5; // r6
  int v6; // r5
  int v7; // lr
  int v8; // r2
  _DWORD *v9; // r0
  int v10; // r3
  _DWORD *v11; // r12
  int v12; // r0
  int v13; // r9
  int v14; // r3

  v2 = a1[1];
  if ( v2 > a2 )
  {
    v5 = 32 * a2;
    v6 = a2;
    do
    {
      while ( 1 )
      {
        v7 = *a1 + v5;
        v8 = *(_DWORD *)(v7 + 20);
        v9 = (_DWORD *)(v7 + 16);
        if ( v8 < 0 )
          break;
        *(_DWORD *)(v7 + 20) = 0;
        ++v6;
        gameswf::array<gameswf::point>::reserve((int)v9, 0);
        v5 += 32;
        if ( v6 == v2 )
          goto LABEL_8;
      }
      v10 = 8 * v8;
      do
      {
        ++v8;
        v11 = (_DWORD *)(*v9 + v10);
        *v11 = 0;
        v11[1] = 0;
        v10 += 8;
      }
      while ( v8 );
      *(_DWORD *)(v7 + 20) = 0;
      ++v6;
      gameswf::array<gameswf::point>::reserve((int)v9, 0);
      v5 += 32;
    }
    while ( v6 != v2 );
  }
LABEL_8:
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::tesselate_new::path_part>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v2 < a2 )
  {
    v12 = v2;
    v13 = 32 * v2;
    do
    {
      ++v12;
      v14 = *a1 + v13;
      *(_DWORD *)v14 = -1;
      *(_BYTE *)(v14 + 28) = 0;
      *(_DWORD *)(v14 + 4) = -1;
      *(_DWORD *)(v14 + 8) = -1;
      *(_BYTE *)(v14 + 12) = 0;
      *(_BYTE *)(v14 + 13) = 0;
      *(_DWORD *)(v14 + 16) = 0;
      *(_DWORD *)(v14 + 20) = 0;
      *(_DWORD *)(v14 + 24) = 0;
      v13 += 32;
    }
    while ( v12 != a2 );
  }
  a1[1] = a2;
}


// ===== 787858 gameswf::array<gameswf::tesselate_new::path_part>::~array() =====
_DWORD *__fastcall gameswf::array<gameswf::tesselate_new::path_part>::~array(_DWORD *a1)
{
  gameswf::array<gameswf::tesselate_new::path_part>::resize(a1, 0);
  gameswf::array<gameswf::tesselate_new::path_part>::reserve((int)a1, 0);
  return a1;
}


// ===== 78787c gameswf::tesselate_new::begin_path(int,int,int,float,float) =====
_DWORD *__fastcall gameswf::tesselate_new::begin_path(
        gameswf::tesselate_new *this,
        int a2,
        int a3,
        int a4,
        int a5,
        float a6)
{
  _DWORD *v10; // r4
  int v11; // r2
  int v12; // r5
  _DWORD *result; // r0

  gameswf::array<gameswf::tesselate_new::path_part>::resize(&gameswf::tesselate_new::s_path_parts, dword_9FC9E0 + 1);
  *(_DWORD *)(gameswf::tesselate_new::s_path_parts + 32 * (dword_9FC9E0 - 1)) = this;
  *(_DWORD *)(gameswf::tesselate_new::s_path_parts + 32 * dword_9FC9E0 - 28) = a2;
  *(_DWORD *)(gameswf::tesselate_new::s_path_parts + 32 * dword_9FC9E0 - 24) = a3;
  gameswf::tesselate_new::s_last_point = a4;
  dword_A2CA24 = a5;
  v10 = (_DWORD *)(gameswf::tesselate_new::s_path_parts + 32 * (dword_9FC9E0 - 1));
  v11 = v10[5];
  v12 = v11 + 1;
  if ( v11 + 1 > v10[6] )
  {
    gameswf::array<gameswf::point>::reserve((int)(v10 + 4), v12 + (v12 >> 1));
    v11 = v10[5];
  }
  result = (_DWORD *)(v10[4] + 8 * v11);
  *result = gameswf::tesselate_new::s_last_point;
  result[1] = dword_A2CA24;
  v10[5] = v12;
  return result;
}


// ===== 787954 gameswf::tesselate_new::end_shape(void) =====
void __fastcall gameswf::tesselate_new::end_shape(gameswf::tesselate_new *this, int a2)
{
  int v2; // r10
  int v3; // r10
  int v4; // r8
  int v5; // r4
  int v6; // r3
  int v7; // r3
  int v8; // r1
  int v9; // r6
  int v10; // r1
  int v11; // r2
  int v12; // r3
  int *v13; // r12
  int v14; // lr
  int v15; // r4
  gameswf::tesselate_new *v16; // r4
  int v17; // r8
  _DWORD *v18; // r5
  int v19; // r9
  int v20; // r3
  int v21; // r2
  int v22; // r6
  int v23; // r8
  int v24; // r4
  _DWORD *v25; // r7
  _DWORD *v26; // r1
  int v27; // r6
  int v28; // r10
  int v29; // r3
  int v30; // r7
  int v31; // r2
  int v32; // r10
  int v33; // r9
  int v34; // r11
  int v35; // r6
  int v36; // r2
  int v37; // r3
  int v38; // [sp+Ch] [bp-40h]
  int v39; // [sp+10h] [bp-3Ch]
  int v40; // [sp+14h] [bp-38h]
  int v41; // [sp+18h] [bp-34h]
  int v42; // [sp+28h] [bp-24h] BYREF
  int v43; // [sp+2Ch] [bp-20h]
  int v44; // [sp+30h] [bp-1Ch]
  char v45; // [sp+34h] [bp-18h]
  int v46; // [sp+38h] [bp-14h] BYREF
  int v47; // [sp+3Ch] [bp-10h]
  int v48; // [sp+40h] [bp-Ch]
  char v49; // [sp+44h] [bp-8h]

  v2 = dword_9FC9E0;
  if ( dword_9FC9E0 > 0 )
  {
    v41 = dword_9FC9E0;
    v3 = 0;
    while ( 1 )
    {
      while ( 1 )
      {
        v4 = 32 * v3;
        v5 = *(_DWORD *)(gameswf::tesselate_new::s_path_parts + 32 * v3);
        v6 = gameswf::tesselate_new::s_path_parts + 32 * v3;
        if ( v5 >= 0 )
          break;
LABEL_9:
        a2 = v41;
        if ( ++v3 == v41 )
          goto LABEL_10;
      }
      if ( *(_DWORD *)(v6 + 4) == -1 )
      {
        *(_DWORD *)(v6 + 4) = v5;
        *(_DWORD *)(gameswf::tesselate_new::s_path_parts + 32 * v3) = -1;
        v7 = gameswf::tesselate_new::s_path_parts + v4;
        v8 = *(_DWORD *)(gameswf::tesselate_new::s_path_parts + v4 + 20);
        v9 = v8 >> 1;
        if ( v8 >> 1 > 0 )
        {
          v10 = 8 * (v8 - 1);
          v11 = 0;
          while ( 1 )
          {
            v12 = *(_DWORD *)(v7 + 16);
            v13 = (int *)(v12 + 8 * v11);
            v14 = *v13;
            v15 = v13[1];
            *v13 = *(_DWORD *)(v12 + v10);
            ++v11;
            v13[1] = *(_DWORD *)(v12 + v10 + 4);
            *(_DWORD *)(v12 + v10 + 4) = v15;
            *(_DWORD *)(v12 + v10) = v14;
            v10 -= 8;
            if ( v11 == v9 )
              break;
            v7 = gameswf::tesselate_new::s_path_parts + v4;
          }
        }
        goto LABEL_9;
      }
      gameswf::array<gameswf::tesselate_new::path_part>::resize(&gameswf::tesselate_new::s_path_parts, dword_9FC9E0 + 1);
      v18 = (_DWORD *)(gameswf::tesselate_new::s_path_parts + 32 * (dword_9FC9E0 - 1));
      v40 = gameswf::tesselate_new::s_path_parts;
      v19 = gameswf::tesselate_new::s_path_parts + v4;
      v18[1] = v5;
      gameswf::array<gameswf::point>::reserve((int)(v18 + 4), *(_DWORD *)(v19 + 20));
      v20 = *(_DWORD *)(v19 + 20);
      if ( v20 - 1 >= 0 )
      {
        v21 = v18[5];
        v22 = 8 * (v20 - 1);
        v23 = v21 + v20;
        do
        {
          v24 = v21 + 1;
          v25 = (_DWORD *)(*(_DWORD *)(v19 + 16) + v22);
          if ( v21 + 1 > v18[6] )
          {
            gameswf::array<gameswf::point>::reserve((int)(v18 + 4), v24 + (v24 >> 1));
            v21 = v18[5];
          }
          v26 = (_DWORD *)(v18[4] + 8 * v21);
          *v26 = *v25;
          v22 -= 8;
          v21 = v24;
          v26[1] = v25[1];
          v18[5] = v24;
        }
        while ( v24 != v23 );
        v4 = 32 * v3;
      }
      ++v3;
      *(_DWORD *)(v40 + v4) = -1;
      a2 = v41;
      if ( v3 == v41 )
      {
LABEL_10:
        v2 = dword_9FC9E0;
        break;
      }
    }
  }
  v16 = nullptr;
  v17 = 0;
  if ( v2 > 0 )
    goto LABEL_15;
  while ( v17 )
  {
    v2 = dword_9FC9E0;
    v16 = nullptr;
    v17 = 0;
    while ( (int)v16 < v2 )
    {
LABEL_15:
      if ( !v17 )
        v17 = gameswf::tesselate_new::try_to_combine_path(v16, a2) != 0;
      v16 = (gameswf::tesselate_new *)((char *)v16 + 1);
      v2 = dword_9FC9E0;
    }
  }
  if ( v2 > 0 )
  {
    v27 = 1;
    do
    {
      v28 = gameswf::tesselate_new::s_path_parts + v17;
      v29 = *(unsigned __int8 *)(gameswf::tesselate_new::s_path_parts + v17 + 13);
      if ( *(_BYTE *)(gameswf::tesselate_new::s_path_parts + v17 + 13)
        || (v30 = *(_DWORD *)(v28 + 4), v30 == -1)
        || !*(_BYTE *)(v28 + 12)
        || *(int *)(v28 + 20) <= 0 )
      {
        v39 = v27;
      }
      else
      {
        *(_BYTE *)(v28 + 13) = 1;
        v49 = v29;
        v46 = v29;
        v47 = v29;
        v48 = v29;
        gameswf::array<gameswf::array<float>>::resize(&v46, 1);
        gameswf::tesselate_new::copy_points_into_array((_DWORD *)(v46 + 16 * (v47 - 1)), (_DWORD *)(v28 + 16));
        v39 = v27;
        if ( dword_9FC9E0 > v27 )
        {
          v31 = 1;
          v32 = v27;
          v33 = 32 * v27;
          v34 = v27;
          do
          {
            while ( 1 )
            {
              ++v32;
              v35 = gameswf::tesselate_new::s_path_parts + v33;
              v33 += 32;
              if ( !*(_BYTE *)(v35 + 13)
                && *(_DWORD *)(v35 + 4) == v30
                && *(_BYTE *)(v35 + 12)
                && *(int *)(v35 + 20) > 0 )
              {
                break;
              }
              if ( v32 >= dword_9FC9E0 )
                goto LABEL_40;
            }
            v38 = v31;
            gameswf::array<gameswf::array<float>>::resize(&v46, v47 + 1);
            gameswf::tesselate_new::copy_points_into_array((_DWORD *)(v46 + 16 * (v47 - 1)), (_DWORD *)(v35 + 16));
            v31 = v38;
            *(_BYTE *)(v35 + 13) = v38;
          }
          while ( v32 < dword_9FC9E0 );
LABEL_40:
          v27 = v34;
        }
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        gameswf::ear_clip_triangulate::compute(&v42, v47, v46, -1, 0);
        v36 = v43;
        if ( v43 <= 0
          || ((*(void (__fastcall **)(int, int, int))(*(_DWORD *)gameswf::tesselate_new::s_accepter[0] + 8))(
                gameswf::tesselate_new::s_accepter[0],
                v30,
                v43 / 6),
              (*(void (__fastcall **)(int, int, int))(*(_DWORD *)gameswf::tesselate_new::s_accepter[0] + 12))(
                gameswf::tesselate_new::s_accepter[0],
                v42,
                v43 / 2),
              (*(void (__fastcall **)(int))(*(_DWORD *)gameswf::tesselate_new::s_accepter[0] + 16))(gameswf::tesselate_new::s_accepter[0]),
              v36 = v43,
              v43 <= 0) )
        {
          if ( v36 < 0 )
          {
            v37 = 4 * v36;
            do
            {
              ++v36;
              *(_DWORD *)(v42 + v37) = 0;
              v37 += 4;
            }
            while ( v36 );
          }
        }
        v43 = 0;
        gameswf::array<float>::reserve((int)&v42, 0);
        gameswf::array<gameswf::array<float>>::resize(&v46, 0);
        gameswf::array<gameswf::array<float>>::reserve((int)&v46, 0);
      }
      v17 += 32;
      ++v27;
    }
    while ( dword_9FC9E0 > v39 );
  }
  (*(void (__fastcall **)(int))(*(_DWORD *)gameswf::tesselate_new::s_accepter[0] + 24))(gameswf::tesselate_new::s_accepter[0]);
  gameswf::tesselate_new::s_accepter[0] = 0;
  gameswf::array<gameswf::tesselate_new::path_part>::resize(&gameswf::tesselate_new::s_path_parts, 0);
}

