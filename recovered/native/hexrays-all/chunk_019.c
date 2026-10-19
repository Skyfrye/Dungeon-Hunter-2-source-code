// ===== 4bcbbc std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<std::string const,int (*)(char const*)> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::_M_insert(
        char **a1,
        _DWORD *a2,
        _DWORD *a3,
        int a4,
        int a5,
        int a6)
{
  char *v9; // r0
  char *node; // r7
  char *v12; // r0
  unsigned int v13; // r0
  int v14; // [sp+4h] [bp-8h]

  if ( a2 == a3 )
  {
    node = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( !a6
         && (a5 || (v14 = a4, v13 = std::less<std::string>::operator()((int)(a2 + 5), a4, (int)(a3 + 4)), a4 = v14, v13)) )
  {
    v12 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::_M_create_node(
            (int)a2,
            a4);
    a3[2] = v12;
    node = v12;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v12;
  }
  else
  {
    v9 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::_M_create_node(
           (int)a2,
           a4);
    a3[3] = v9;
    node = v9;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v9;
  }
  *((_DWORD *)node + 1) = a3;
  std::priv::_Rb_global<bool>::_Rebalance((int)node, a2 + 1);
  ++a2[4];
  *a1 = node;
  return a1;
}


// ===== 4bccac std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>>>::_M_lower_bound<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::_M_lower_bound<char const*>(
        _DWORD *a1,
        char **a2)
{
  _DWORD *v2; // r9
  _DWORD *v4; // r4
  const void *v5; // r3
  int v6; // r6
  int v7; // r5
  size_t v8; // r2
  int v9; // r3
  int v11; // [sp+0h] [bp-2Ch]
  std::string v12; // [sp+Ch] [bp-20h] BYREF

  v2 = a1;
  v4 = (_DWORD *)a1[1];
  while ( v4 )
  {
    std::string::string(&v12, *a2);
    v5 = (const void *)v4[9];
    v6 = v4[8] - (_DWORD)v5;
    v7 = v12._M_finish - v12._M_start_of_storage._M_data;
    if ( v12._M_finish - v12._M_start_of_storage._M_data >= v6 )
      v8 = v4[8] - (_DWORD)v5;
    else
      v8 = v12._M_finish - v12._M_start_of_storage._M_data;
    v9 = memcmp(v5, v12._M_start_of_storage._M_data, v8);
    if ( !v9 )
    {
      if ( v6 >= v7 )
        v9 = v6 > v7;
      else
        v9 = -1;
    }
    v11 = v9;
    std::string::~string(&v12);
    if ( v11 < 0 )
      v4 = (_DWORD *)v4[3];
    else
      v2 = v4;
    if ( v11 >= 0 )
      v4 = (_DWORD *)v4[2];
  }
  return v2;
}


// ===== 4bcd9c std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::_M_lower_bound<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::_M_lower_bound<char const*>(
        _DWORD *a1,
        char **a2)
{
  _DWORD *v2; // r9
  _DWORD *v4; // r4
  const void *v5; // r3
  int v6; // r6
  int v7; // r5
  size_t v8; // r2
  int v9; // r3
  int v11; // [sp+0h] [bp-2Ch]
  std::string v12; // [sp+Ch] [bp-20h] BYREF

  v2 = a1;
  v4 = (_DWORD *)a1[1];
  while ( v4 )
  {
    std::string::string(&v12, *a2);
    v5 = (const void *)v4[9];
    v6 = v4[8] - (_DWORD)v5;
    v7 = v12._M_finish - v12._M_start_of_storage._M_data;
    if ( v12._M_finish - v12._M_start_of_storage._M_data >= v6 )
      v8 = v4[8] - (_DWORD)v5;
    else
      v8 = v12._M_finish - v12._M_start_of_storage._M_data;
    v9 = memcmp(v5, v12._M_start_of_storage._M_data, v8);
    if ( !v9 )
    {
      if ( v6 >= v7 )
        v9 = v6 > v7;
      else
        v9 = -1;
    }
    v11 = v9;
    std::string::~string(&v12);
    if ( v11 < 0 )
      v4 = (_DWORD *)v4[3];
    else
      v2 = v4;
    if ( v11 >= 0 )
      v4 = (_DWORD *)v4[2];
  }
  return v2;
}


// ===== 4bce8c std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>>>::insert_unique(std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>> const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::insert_unique(
        int a1,
        _DWORD *a2,
        int a3)
{
  _DWORD *v3; // r5
  const void *v7; // r7
  int v8; // r11
  int v9; // r10
  _DWORD *v10; // r3
  int v11; // r1
  const void *v12; // r3
  int v13; // r6
  size_t v14; // r2
  int v15; // r0
  _DWORD *v16; // r2
  _DWORD *v17; // r10
  const void *v18; // r0
  signed int v19; // r11
  int v20; // r6
  size_t v21; // r2
  int v22; // r0
  char *v24; // r3
  int v25; // r3
  char *v26; // r3
  char *v27; // [sp+8h] [bp-Ch] BYREF
  char *v28; // [sp+Ch] [bp-8h] BYREF

  v3 = (_DWORD *)a2[1];
  if ( !v3 )
  {
    v3 = a2;
    goto LABEL_27;
  }
  v7 = *(const void **)(a3 + 20);
  v8 = *(_DWORD *)(a3 + 16);
  v9 = v8 - (_DWORD)v7;
  while ( 1 )
  {
    v12 = (const void *)v3[9];
    v13 = v3[8] - (_DWORD)v12;
    if ( v13 >= v9 )
      v14 = v8 - (_DWORD)v7;
    else
      v14 = v3[8] - (_DWORD)v12;
    v15 = memcmp(v7, v12, v14);
    v16 = v3;
    if ( !v15 )
    {
      if ( v9 < v13 )
        goto LABEL_3;
      v15 = v9 > v13;
    }
    if ( v15 >= 0 )
      break;
LABEL_3:
    v10 = (_DWORD *)v3[2];
    v11 = 1;
    if ( !v10 )
      goto LABEL_13;
LABEL_4:
    v3 = v10;
  }
  v10 = (_DWORD *)v3[3];
  v11 = 0;
  if ( v10 )
    goto LABEL_4;
LABEL_13:
  if ( !v11 )
  {
    v17 = v3;
    goto LABEL_16;
  }
LABEL_27:
  if ( v3 == (_DWORD *)a2[2] )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::_M_insert(
      &v28,
      a2,
      v3,
      a3,
      (int)v3,
      0);
    v26 = v28;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v26;
  }
  else
  {
    if ( !*(_BYTE *)v3 && v3 == *(_DWORD **)(v3[1] + 4) )
    {
      v16 = (_DWORD *)v3[3];
      v7 = *(const void **)(a3 + 20);
      v8 = *(_DWORD *)(a3 + 16);
      v17 = v16;
    }
    else
    {
      v16 = (_DWORD *)v3[2];
      if ( v16 )
      {
        while ( v16[3] )
          v16 = (_DWORD *)v16[3];
LABEL_34:
        v17 = v16;
        v7 = *(const void **)(a3 + 20);
        v8 = *(_DWORD *)(a3 + 16);
      }
      else
      {
        v25 = v3[1];
        if ( v3 != *(_DWORD **)(v25 + 8) )
        {
          v16 = (_DWORD *)v3[1];
          goto LABEL_34;
        }
        while ( 1 )
        {
          v16 = *(_DWORD **)(v25 + 4);
          if ( v16[2] != v25 )
            break;
          v25 = *(_DWORD *)(v25 + 4);
        }
        v7 = *(const void **)(a3 + 20);
        v8 = *(_DWORD *)(a3 + 16);
        v17 = *(_DWORD **)(v25 + 4);
      }
    }
LABEL_16:
    v18 = (const void *)v16[9];
    v19 = v8 - (_DWORD)v7;
    v20 = v16[8] - (_DWORD)v18;
    if ( v19 >= v20 )
      v21 = v16[8] - (_DWORD)v18;
    else
      v21 = v19;
    v22 = memcmp(v18, v7, v21);
    if ( v22 )
    {
LABEL_22:
      if ( v22 < 0 )
        goto LABEL_35;
      *(_DWORD *)a1 = v17;
      *(_BYTE *)(a1 + 4) = 0;
    }
    else
    {
      if ( v20 >= v19 )
      {
        v22 = v20 > v19;
        goto LABEL_22;
      }
LABEL_35:
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::_M_insert(
        &v27,
        a2,
        v3,
        a3,
        0,
        0);
      v24 = v27;
      *(_BYTE *)(a1 + 4) = 1;
      *(_DWORD *)a1 = v24;
    }
  }
  return a1;
}


// ===== 4bd0a4 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::insert_unique(std::pair<std::string const,int (*)(char const*)> const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::insert_unique(
        int a1,
        _DWORD *a2,
        int a3)
{
  _DWORD *v3; // r5
  const void *v7; // r7
  int v8; // r11
  int v9; // r10
  _DWORD *v10; // r3
  int v11; // r1
  const void *v12; // r3
  int v13; // r6
  size_t v14; // r2
  int v15; // r0
  _DWORD *v16; // r2
  _DWORD *v17; // r10
  const void *v18; // r0
  signed int v19; // r11
  int v20; // r6
  size_t v21; // r2
  int v22; // r0
  char *v24; // r3
  int v25; // r3
  char *v26; // r3
  char *v27; // [sp+8h] [bp-Ch] BYREF
  char *v28; // [sp+Ch] [bp-8h] BYREF

  v3 = (_DWORD *)a2[1];
  if ( !v3 )
  {
    v3 = a2;
    goto LABEL_27;
  }
  v7 = *(const void **)(a3 + 20);
  v8 = *(_DWORD *)(a3 + 16);
  v9 = v8 - (_DWORD)v7;
  while ( 1 )
  {
    v12 = (const void *)v3[9];
    v13 = v3[8] - (_DWORD)v12;
    if ( v13 >= v9 )
      v14 = v8 - (_DWORD)v7;
    else
      v14 = v3[8] - (_DWORD)v12;
    v15 = memcmp(v7, v12, v14);
    v16 = v3;
    if ( !v15 )
    {
      if ( v9 < v13 )
        goto LABEL_3;
      v15 = v9 > v13;
    }
    if ( v15 >= 0 )
      break;
LABEL_3:
    v10 = (_DWORD *)v3[2];
    v11 = 1;
    if ( !v10 )
      goto LABEL_13;
LABEL_4:
    v3 = v10;
  }
  v10 = (_DWORD *)v3[3];
  v11 = 0;
  if ( v10 )
    goto LABEL_4;
LABEL_13:
  if ( !v11 )
  {
    v17 = v3;
    goto LABEL_16;
  }
LABEL_27:
  if ( v3 == (_DWORD *)a2[2] )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::_M_insert(
      &v28,
      a2,
      v3,
      a3,
      (int)v3,
      0);
    v26 = v28;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v26;
  }
  else
  {
    if ( !*(_BYTE *)v3 && v3 == *(_DWORD **)(v3[1] + 4) )
    {
      v16 = (_DWORD *)v3[3];
      v7 = *(const void **)(a3 + 20);
      v8 = *(_DWORD *)(a3 + 16);
      v17 = v16;
    }
    else
    {
      v16 = (_DWORD *)v3[2];
      if ( v16 )
      {
        while ( v16[3] )
          v16 = (_DWORD *)v16[3];
LABEL_34:
        v17 = v16;
        v7 = *(const void **)(a3 + 20);
        v8 = *(_DWORD *)(a3 + 16);
      }
      else
      {
        v25 = v3[1];
        if ( v3 != *(_DWORD **)(v25 + 8) )
        {
          v16 = (_DWORD *)v3[1];
          goto LABEL_34;
        }
        while ( 1 )
        {
          v16 = *(_DWORD **)(v25 + 4);
          if ( v16[2] != v25 )
            break;
          v25 = *(_DWORD *)(v25 + 4);
        }
        v7 = *(const void **)(a3 + 20);
        v8 = *(_DWORD *)(a3 + 16);
        v17 = *(_DWORD **)(v25 + 4);
      }
    }
LABEL_16:
    v18 = (const void *)v16[9];
    v19 = v8 - (_DWORD)v7;
    v20 = v16[8] - (_DWORD)v18;
    if ( v19 >= v20 )
      v21 = v16[8] - (_DWORD)v18;
    else
      v21 = v19;
    v22 = memcmp(v18, v7, v21);
    if ( v22 )
    {
LABEL_22:
      if ( v22 < 0 )
        goto LABEL_35;
      *(_DWORD *)a1 = v17;
      *(_BYTE *)(a1 + 4) = 0;
    }
    else
    {
      if ( v20 >= v19 )
      {
        v22 = v20 > v19;
        goto LABEL_22;
      }
LABEL_35:
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::_M_insert(
        &v27,
        a2,
        v3,
        a3,
        0,
        0);
      v24 = v27;
      *(_BYTE *)(a1 + 4) = 1;
      *(_DWORD *)a1 = v24;
    }
  }
  return a1;
}


// ===== 4bd2bc std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>>>::_M_find<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::_M_find<char const*>(
        _DWORD *a1,
        char **a2)
{
  _DWORD *v2; // r5
  _DWORD *v4; // r10
  const void *v5; // r3
  std::string *M_data; // r4
  int v7; // r7
  int v8; // r6
  size_t v9; // r2
  int v10; // r11
  const void *v11; // r1
  int v12; // r5
  int v13; // r6
  size_t v14; // r2
  int v15; // r7
  std::string v18; // [sp+1Ch] [bp-38h] BYREF
  std::string v19; // [sp+34h] [bp-20h] BYREF

  v2 = (_DWORD *)a1[1];
  if ( !v2 )
    return a1;
  v4 = a1;
  do
  {
    while ( 1 )
    {
      std::string::string(&v19, *a2);
      v5 = (const void *)v2[9];
      M_data = (std::string *)v19._M_start_of_storage._M_data;
      v7 = v2[8] - (_DWORD)v5;
      v8 = v19._M_finish - v19._M_start_of_storage._M_data;
      if ( v19._M_finish - v19._M_start_of_storage._M_data >= v7 )
        v9 = v2[8] - (_DWORD)v5;
      else
        v9 = v19._M_finish - v19._M_start_of_storage._M_data;
      v10 = memcmp(v5, v19._M_start_of_storage._M_data, v9);
      if ( !v10 )
      {
        if ( v7 >= v8 )
          v10 = v7 > v8;
        else
          v10 = -1;
      }
      if ( M_data == &v19 || !M_data )
        break;
      if ( (unsigned int)(v19._M_buffers._M_end_of_storage - (char *)M_data) <= 0x80 )
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(M_data, v19._M_buffers._M_end_of_storage - (char *)M_data);
        break;
      }
      CustomFree(M_data);
      if ( v10 < 0 )
        v2 = (_DWORD *)v2[3];
      else
        v4 = v2;
      if ( v10 >= 0 )
        v2 = (_DWORD *)v2[2];
      if ( !v2 )
        goto LABEL_26;
    }
    if ( v10 < 0 )
      v2 = (_DWORD *)v2[3];
    else
      v4 = v2;
    if ( v10 >= 0 )
      v2 = (_DWORD *)v2[2];
  }
  while ( v2 );
LABEL_26:
  if ( v4 != a1 )
  {
    std::string::string(&v18, *a2);
    v11 = (const void *)v4[9];
    v12 = v4[8] - (_DWORD)v11;
    v13 = v18._M_finish - v18._M_start_of_storage._M_data;
    v14 = v12 >= v18._M_finish - v18._M_start_of_storage._M_data
        ? v18._M_finish - v18._M_start_of_storage._M_data
        : v4[8] - (_DWORD)v11;
    v15 = memcmp(v18._M_start_of_storage._M_data, v11, v14);
    if ( !v15 )
    {
      if ( v13 >= v12 )
        v15 = v13 > v12;
      else
        v15 = -1;
    }
    std::string::~string(&v18);
    if ( v15 < 0 )
      return a1;
  }
  return v4;
}


// ===== 4bd478 PyDataArrays::reloadData(IStreamBase *,char const*) =====
char *__fastcall PyDataArrays::reloadData(PyDataArrays *this, IStreamBase *a2, char *a3)
{
  char *v3; // r5
  char *result; // r0
  int (__fastcall **v6)(IStreamBase *); // r6
  int (__fastcall **i)(IStreamBase *); // r5
  int (__fastcall *v8)(IStreamBase *); // t1
  char *v9; // [sp+4h] [bp-4h] BYREF

  v9 = a3;
  v3 = (char *)this + 4;
  result = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::_M_find<char const*>(
                     (_DWORD *)this + 1,
                     &v9);
  if ( result != v3 )
  {
    v6 = *((int (__fastcall ***)(IStreamBase *))result + 11);
    for ( i = *((int (__fastcall ***)(IStreamBase *))result + 10); i != v6; result = (char *)v8(a2) )
    {
      v8 = *i;
      i += 2;
    }
  }
  return result;
}


// ===== 4bd4d0 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::_M_find<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::_M_find<char const*>(
        _DWORD *a1,
        char **a2)
{
  _DWORD *v2; // r4
  _DWORD *v4; // r10
  const void *v5; // r3
  int v6; // r6
  int v7; // r5
  size_t v8; // r2
  int v9; // r3
  const void *v10; // r1
  int v11; // r5
  int v12; // r6
  size_t v13; // r2
  int v14; // r7
  int v16; // [sp+4h] [bp-50h]
  std::string v18; // [sp+1Ch] [bp-38h] BYREF
  std::string v19; // [sp+34h] [bp-20h] BYREF

  v2 = (_DWORD *)a1[1];
  if ( !v2 )
    return a1;
  v4 = a1;
  do
  {
    std::string::string(&v19, *a2);
    v5 = (const void *)v2[9];
    v6 = v2[8] - (_DWORD)v5;
    v7 = v19._M_finish - v19._M_start_of_storage._M_data;
    if ( v19._M_finish - v19._M_start_of_storage._M_data >= v6 )
      v8 = v2[8] - (_DWORD)v5;
    else
      v8 = v19._M_finish - v19._M_start_of_storage._M_data;
    v9 = memcmp(v5, v19._M_start_of_storage._M_data, v8);
    if ( !v9 )
    {
      if ( v6 >= v7 )
        v9 = v6 > v7;
      else
        v9 = -1;
    }
    v16 = v9;
    std::string::~string(&v19);
    if ( v16 < 0 )
      v2 = (_DWORD *)v2[3];
    else
      v4 = v2;
    if ( v16 >= 0 )
      v2 = (_DWORD *)v2[2];
  }
  while ( v2 );
  if ( v4 != a1 )
  {
    std::string::string(&v18, *a2);
    v10 = (const void *)v4[9];
    v11 = v4[8] - (_DWORD)v10;
    v12 = v18._M_finish - v18._M_start_of_storage._M_data;
    v13 = v11 >= v18._M_finish - v18._M_start_of_storage._M_data
        ? v18._M_finish - v18._M_start_of_storage._M_data
        : v4[8] - (_DWORD)v10;
    v14 = memcmp(v18._M_start_of_storage._M_data, v10, v13);
    if ( !v14 )
    {
      if ( v12 >= v11 )
        v14 = v12 > v11;
      else
        v14 = -1;
    }
    std::string::~string(&v18);
    if ( v14 < 0 )
      return a1;
  }
  return v4;
}


// ===== 4bd640 PyDataArrays::GetOID(char const*,char const*) =====
int __fastcall PyDataArrays::GetOID(PyDataArrays *this, char *a2, const char *a3)
{
  char *v3; // r4
  char *v5; // r3
  char *v7; // [sp+4h] [bp-8h] BYREF

  v7 = a2;
  v3 = (char *)this + 28;
  v5 = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::_M_find<char const*>(
                 (_DWORD *)this + 7,
                 &v7);
  if ( v5 == v3 )
    return -1;
  else
    return (*((int (__fastcall **)(const char *))v5 + 10))(a3);
}


// ===== 4bd688 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::string const,int (*)(char const*)>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>>,std::pair<std::string const,int (*)(char const*)> const&) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::insert_unique(
        char **a1,
        char *a2,
        char **a3,
        int a4)
{
  char *v4; // r5
  _DWORD *v8; // r4
  const void *v9; // r3
  const void *v10; // r9
  signed int v11; // r11
  signed int v12; // r2
  int v13; // r0
  const void *v14; // r3
  unsigned int v15; // r12
  char *v16; // r4
  int v17; // r0
  const void *v18; // r2
  const void *v19; // r0
  signed int v20; // r10
  size_t v21; // r2
  int v22; // r0
  int v23; // r12
  const void *v25; // r3
  const void *v26; // r1
  int v27; // r4
  int v28; // r10
  size_t v29; // r2
  int v30; // r0
  int v31; // r12
  int v32; // r3
  int v33; // r4
  const void *v34; // r1
  int v35; // r9
  int v36; // r3
  signed int v37; // r9
  signed int v38; // r10
  size_t v39; // r2
  int v40; // r0
  int v41; // r2
  void *v42; // [sp+Ch] [bp-38h]
  unsigned int v43; // [sp+10h] [bp-34h]
  signed int v45; // [sp+18h] [bp-2Ch]
  size_t v46; // [sp+1Ch] [bp-28h]
  char *v47; // [sp+20h] [bp-24h] BYREF
  char *v48; // [sp+28h] [bp-1Ch] BYREF
  char *v49; // [sp+30h] [bp-14h] BYREF
  char *v50; // [sp+38h] [bp-Ch] BYREF

  v4 = *a3;
  if ( *a3 == *((char **)a2 + 2) )
  {
    if ( !*((_DWORD *)a2 + 4) )
    {
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::insert_unique(
        (int)&v50,
        a2,
        a4);
      *a1 = v50;
      return a1;
    }
    v25 = *(const void **)(a4 + 20);
    v26 = *((const void **)v4 + 9);
    v27 = *(_DWORD *)(a4 + 16) - (_DWORD)v25;
    v28 = *((_DWORD *)v4 + 8) - (_DWORD)v26;
    if ( v28 >= v27 )
      v29 = *(_DWORD *)(a4 + 16) - (_DWORD)v25;
    else
      v29 = *((_DWORD *)v4 + 8) - (_DWORD)v26;
    v30 = memcmp(v25, v26, v29);
    if ( !v30 )
    {
      if ( v27 < v28 )
        goto LABEL_37;
      v30 = v27 > v28;
    }
    if ( v30 >= 0 )
    {
      if ( !std::less<std::string>::operator()((int)(a2 + 20), (int)(v4 + 16), a4) )
      {
        *a1 = *a3;
        return a1;
      }
      v31 = (int)*a3;
      v16 = *((char **)*a3 + 3);
      if ( v16 )
      {
        while ( *((_DWORD *)v16 + 2) )
          v16 = *((char **)v16 + 2);
      }
      else
      {
        v32 = *(_DWORD *)(v31 + 4);
        if ( v31 == *(_DWORD *)(v32 + 12) )
        {
          do
          {
            v16 = (char *)v32;
            v32 = *(_DWORD *)(v32 + 4);
          }
          while ( *(char **)(v32 + 12) == v16 );
        }
        else
        {
          v16 = *a3;
        }
        if ( v32 != *((_DWORD *)v16 + 3) )
          v16 = (char *)v32;
      }
      if ( a2 == v16 )
        goto LABEL_93;
      if ( !std::less<std::string>::operator()((int)(a2 + 20), a4, (int)(v16 + 16)) )
      {
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::insert_unique(
          (int)&v49,
          a2,
          a4);
        *a1 = v49;
        return a1;
      }
      v31 = (int)*a3;
      if ( !*((_DWORD *)*a3 + 3) )
      {
LABEL_93:
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::_M_insert(
          a1,
          a2,
          *a3,
          a4,
          0,
          v31);
        return a1;
      }
      goto LABEL_61;
    }
    goto LABEL_37;
  }
  if ( v4 == a2 )
  {
    v33 = *((_DWORD *)v4 + 3);
    v34 = *(const void **)(a4 + 20);
    v35 = *(_DWORD *)(a4 + 16);
    v36 = *(_DWORD *)(v33 + 36);
    v37 = v35 - (_DWORD)v34;
    v38 = *(_DWORD *)(v33 + 32) - v36;
    if ( v37 >= v38 )
      v39 = *(_DWORD *)(v33 + 32) - v36;
    else
      v39 = v37;
    v40 = memcmp(*(const void **)(v33 + 36), v34, v39);
    if ( !v40 )
    {
      if ( v38 < v37 )
      {
LABEL_76:
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::_M_insert(
          a1,
          a2,
          (_DWORD *)v33,
          a4,
          0,
          (int)v4);
        return a1;
      }
      v40 = v38 > v37;
    }
    if ( v40 >= 0 )
    {
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::insert_unique(
        (int)&v48,
        a2,
        a4);
      *a1 = v48;
      return a1;
    }
    goto LABEL_76;
  }
  if ( !*v4 )
  {
    if ( v4 == *(char **)(*((_DWORD *)v4 + 1) + 4) )
    {
      v8 = *((_DWORD **)v4 + 3);
      goto LABEL_8;
    }
    v8 = *((_DWORD **)v4 + 2);
    if ( !v8 )
      goto LABEL_26;
LABEL_7:
    while ( v8[3] )
      v8 = (_DWORD *)v8[3];
    goto LABEL_8;
  }
  v8 = *((_DWORD **)v4 + 2);
  if ( v8 )
    goto LABEL_7;
LABEL_26:
  v8 = *((_DWORD **)v4 + 1);
  if ( v4 == (char *)v8[2] )
  {
    while ( *(_DWORD **)(v8[1] + 8) == v8 )
      v8 = (_DWORD *)v8[1];
    v8 = (_DWORD *)v8[1];
  }
LABEL_8:
  v9 = *((const void **)v4 + 9);
  v10 = *(const void **)(a4 + 20);
  v11 = *(_DWORD *)(a4 + 16) - (_DWORD)v10;
  v12 = *((_DWORD *)v4 + 8) - (_DWORD)v9;
  v45 = v12;
  if ( v12 >= v11 )
    v12 = *(_DWORD *)(a4 + 16) - (_DWORD)v10;
  v42 = *((void **)v4 + 9);
  v46 = v12;
  v13 = memcmp(*(const void **)(a4 + 20), v9, v12);
  v14 = v42;
  if ( !v13 )
  {
    if ( v11 >= v45 )
      v13 = v11 > v45;
    else
      v13 = -1;
  }
  v15 = (unsigned int)v13 >> 31;
  if ( v13 < 0 )
  {
    v18 = (const void *)v8[9];
    v19 = v18;
    v20 = v8[8] - (_DWORD)v18;
    if ( v11 >= v20 )
      v21 = v8[8] - (_DWORD)v18;
    else
      v21 = v11;
    v43 = v15;
    v22 = memcmp(v19, v10, v21);
    v14 = v42;
    v15 = v43;
    if ( !v22 )
    {
      if ( v11 <= v20 )
        goto LABEL_15;
      v23 = v8[3];
      if ( v23 )
        goto LABEL_37;
LABEL_65:
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::_M_insert(
        a1,
        a2,
        v8,
        a4,
        v23,
        (int)v8);
      return a1;
    }
    if ( v22 >= 0 )
      goto LABEL_15;
    v23 = v8[3];
    if ( !v23 )
      goto LABEL_65;
LABEL_37:
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::_M_insert(
      a1,
      a2,
      v4,
      a4,
      (int)v4,
      0);
    return a1;
  }
LABEL_15:
  v16 = *((char **)v4 + 3);
  if ( v16 )
  {
    while ( *((_DWORD *)v16 + 2) )
      v16 = *((char **)v16 + 2);
  }
  else
  {
    v41 = *((_DWORD *)v4 + 1);
    if ( v4 == *(char **)(v41 + 12) )
    {
      while ( *(_DWORD *)(*(_DWORD *)(v41 + 4) + 12) == v41 )
        v41 = *(_DWORD *)(v41 + 4);
      v16 = (char *)v41;
      v41 = *(_DWORD *)(v41 + 4);
    }
    else
    {
      v16 = v4;
    }
    if ( v41 != *((_DWORD *)v16 + 3) )
      v16 = (char *)v41;
  }
  if ( v15 )
    goto LABEL_41;
  v17 = memcmp(v14, v10, v46);
  if ( v17 )
  {
    if ( v17 >= 0 )
      goto LABEL_22;
    goto LABEL_39;
  }
  if ( v11 > v45 )
  {
LABEL_39:
    if ( a2 != v16 )
    {
      if ( !std::less<std::string>::operator()((int)(a2 + 20), a4, (int)(v16 + 16)) )
      {
LABEL_41:
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::insert_unique(
          (int)&v47,
          a2,
          a4);
        *a1 = v47;
        return a1;
      }
      v4 = *a3;
    }
    if ( !*((_DWORD *)v4 + 3) )
    {
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        0,
        (int)v4);
      return a1;
    }
LABEL_61:
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      (int)v16,
      0);
    return a1;
  }
LABEL_22:
  *a1 = v4;
  return a1;
}


// ===== 4bdb8c std::map<std::string,int (*)(char const*),std::less<std::string>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::operator[]<char const*>(char const* const&) =====
char *__fastcall std::map<std::string,int (*)(char const*)>::operator[]<char const*>(char *a1, char **a2)
{
  char *v4; // r5
  const void *v5; // r1
  int v6; // r11
  int v7; // r9
  size_t v8; // r2
  int v9; // r0
  char *v10; // r3
  char *v12; // r5
  char *v13; // [sp+8h] [bp-64h] BYREF
  char *v14; // [sp+Ch] [bp-60h] BYREF
  std::string v15; // [sp+18h] [bp-54h] BYREF
  int v16; // [sp+30h] [bp-3Ch]
  std::string v17; // [sp+34h] [bp-38h] BYREF
  std::string v18; // [sp+4Ch] [bp-20h] BYREF

  v4 = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::_M_lower_bound<char const*>(
                 a1,
                 a2);
  if ( v4 == a1 )
    goto LABEL_11;
  std::string::string(&v18, *a2);
  v5 = *((const void **)v4 + 9);
  v6 = *((_DWORD *)v4 + 8) - (_DWORD)v5;
  v7 = v18._M_finish - v18._M_start_of_storage._M_data;
  if ( v6 >= v18._M_finish - v18._M_start_of_storage._M_data )
    v8 = v18._M_finish - v18._M_start_of_storage._M_data;
  else
    v8 = *((_DWORD *)v4 + 8) - (_DWORD)v5;
  v9 = memcmp(v18._M_start_of_storage._M_data, v5, v8);
  if ( v9 )
  {
    if ( v9 >= 0 )
      goto LABEL_7;
    goto LABEL_10;
  }
  if ( v7 < v6 )
  {
LABEL_10:
    std::string::~string(&v18);
LABEL_11:
    std::string::string(&v17, *a2);
    v15._M_finish = (char *)&v15;
    v15._M_start_of_storage._M_data = (char *)&v15;
    std::string::_M_range_initialize(&v15, v17._M_start_of_storage._M_data, v17._M_finish);
    v16 = 0;
    v13 = v4;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::insert_unique(
      &v14,
      a1,
      &v13,
      (int)&v15);
    v12 = v14;
    std::string::~string(&v15);
    std::string::~string(&v17);
    v10 = v12;
    return v10 + 40;
  }
LABEL_7:
  std::string::~string(&v18);
  v10 = v4;
  return v10 + 40;
}


// ===== 4bdccc PyDataArrays::registerClassByName(char const*,int (*)(char const*)) =====
char *__fastcall PyDataArrays::registerClassByName(PyDataArrays *this, char *a2, int (*a3)(const char *))
{
  char *result; // r0
  char *v6; // [sp+Ch] [bp-8h] BYREF

  v6 = a2;
  if ( !a3 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "func",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\PyData\\PyDataArrays.cpp",
        70);
    }
  }
  result = std::map<std::string,int (*)(char const*)>::operator[]<char const*>((char *)this + 28, &v6);
  *(_DWORD *)result = a3;
  return result;
}


// ===== 4bdd70 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>>>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>> const&) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::insert_unique(
        char **a1,
        char *a2,
        char **a3,
        int a4)
{
  char *v4; // r5
  _DWORD *v8; // r4
  const void *v9; // r3
  const void *v10; // r9
  signed int v11; // r11
  signed int v12; // r2
  int v13; // r0
  const void *v14; // r3
  unsigned int v15; // r12
  char *v16; // r4
  int v17; // r0
  const void *v18; // r2
  const void *v19; // r0
  signed int v20; // r10
  size_t v21; // r2
  int v22; // r0
  int v23; // r12
  const void *v25; // r3
  const void *v26; // r1
  int v27; // r4
  int v28; // r10
  size_t v29; // r2
  int v30; // r0
  int v31; // r12
  int v32; // r3
  int v33; // r4
  const void *v34; // r1
  int v35; // r9
  int v36; // r3
  signed int v37; // r9
  signed int v38; // r10
  size_t v39; // r2
  int v40; // r0
  int v41; // r2
  void *v42; // [sp+Ch] [bp-38h]
  unsigned int v43; // [sp+10h] [bp-34h]
  signed int v45; // [sp+18h] [bp-2Ch]
  size_t v46; // [sp+1Ch] [bp-28h]
  char *v47; // [sp+20h] [bp-24h] BYREF
  char *v48; // [sp+28h] [bp-1Ch] BYREF
  char *v49; // [sp+30h] [bp-14h] BYREF
  char *v50; // [sp+38h] [bp-Ch] BYREF

  v4 = *a3;
  if ( *a3 == *((char **)a2 + 2) )
  {
    if ( !*((_DWORD *)a2 + 4) )
    {
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::insert_unique(
        (int)&v50,
        a2,
        a4);
      *a1 = v50;
      return a1;
    }
    v25 = *(const void **)(a4 + 20);
    v26 = *((const void **)v4 + 9);
    v27 = *(_DWORD *)(a4 + 16) - (_DWORD)v25;
    v28 = *((_DWORD *)v4 + 8) - (_DWORD)v26;
    if ( v28 >= v27 )
      v29 = *(_DWORD *)(a4 + 16) - (_DWORD)v25;
    else
      v29 = *((_DWORD *)v4 + 8) - (_DWORD)v26;
    v30 = memcmp(v25, v26, v29);
    if ( !v30 )
    {
      if ( v27 < v28 )
        goto LABEL_37;
      v30 = v27 > v28;
    }
    if ( v30 >= 0 )
    {
      if ( !std::less<std::string>::operator()((int)(a2 + 20), (int)(v4 + 16), a4) )
      {
        *a1 = *a3;
        return a1;
      }
      v31 = (int)*a3;
      v16 = *((char **)*a3 + 3);
      if ( v16 )
      {
        while ( *((_DWORD *)v16 + 2) )
          v16 = *((char **)v16 + 2);
      }
      else
      {
        v32 = *(_DWORD *)(v31 + 4);
        if ( v31 == *(_DWORD *)(v32 + 12) )
        {
          do
          {
            v16 = (char *)v32;
            v32 = *(_DWORD *)(v32 + 4);
          }
          while ( *(char **)(v32 + 12) == v16 );
        }
        else
        {
          v16 = *a3;
        }
        if ( v32 != *((_DWORD *)v16 + 3) )
          v16 = (char *)v32;
      }
      if ( a2 == v16 )
        goto LABEL_93;
      if ( !std::less<std::string>::operator()((int)(a2 + 20), a4, (int)(v16 + 16)) )
      {
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::insert_unique(
          (int)&v49,
          a2,
          a4);
        *a1 = v49;
        return a1;
      }
      v31 = (int)*a3;
      if ( !*((_DWORD *)*a3 + 3) )
      {
LABEL_93:
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::_M_insert(
          a1,
          a2,
          *a3,
          a4,
          0,
          v31);
        return a1;
      }
      goto LABEL_61;
    }
    goto LABEL_37;
  }
  if ( v4 == a2 )
  {
    v33 = *((_DWORD *)v4 + 3);
    v34 = *(const void **)(a4 + 20);
    v35 = *(_DWORD *)(a4 + 16);
    v36 = *(_DWORD *)(v33 + 36);
    v37 = v35 - (_DWORD)v34;
    v38 = *(_DWORD *)(v33 + 32) - v36;
    if ( v37 >= v38 )
      v39 = *(_DWORD *)(v33 + 32) - v36;
    else
      v39 = v37;
    v40 = memcmp(*(const void **)(v33 + 36), v34, v39);
    if ( !v40 )
    {
      if ( v38 < v37 )
      {
LABEL_76:
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::_M_insert(
          a1,
          a2,
          (_DWORD *)v33,
          a4,
          0,
          (int)v4);
        return a1;
      }
      v40 = v38 > v37;
    }
    if ( v40 >= 0 )
    {
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::insert_unique(
        (int)&v48,
        a2,
        a4);
      *a1 = v48;
      return a1;
    }
    goto LABEL_76;
  }
  if ( !*v4 )
  {
    if ( v4 == *(char **)(*((_DWORD *)v4 + 1) + 4) )
    {
      v8 = *((_DWORD **)v4 + 3);
      goto LABEL_8;
    }
    v8 = *((_DWORD **)v4 + 2);
    if ( !v8 )
      goto LABEL_26;
LABEL_7:
    while ( v8[3] )
      v8 = (_DWORD *)v8[3];
    goto LABEL_8;
  }
  v8 = *((_DWORD **)v4 + 2);
  if ( v8 )
    goto LABEL_7;
LABEL_26:
  v8 = *((_DWORD **)v4 + 1);
  if ( v4 == (char *)v8[2] )
  {
    while ( *(_DWORD **)(v8[1] + 8) == v8 )
      v8 = (_DWORD *)v8[1];
    v8 = (_DWORD *)v8[1];
  }
LABEL_8:
  v9 = *((const void **)v4 + 9);
  v10 = *(const void **)(a4 + 20);
  v11 = *(_DWORD *)(a4 + 16) - (_DWORD)v10;
  v12 = *((_DWORD *)v4 + 8) - (_DWORD)v9;
  v45 = v12;
  if ( v12 >= v11 )
    v12 = *(_DWORD *)(a4 + 16) - (_DWORD)v10;
  v42 = *((void **)v4 + 9);
  v46 = v12;
  v13 = memcmp(*(const void **)(a4 + 20), v9, v12);
  v14 = v42;
  if ( !v13 )
  {
    if ( v11 >= v45 )
      v13 = v11 > v45;
    else
      v13 = -1;
  }
  v15 = (unsigned int)v13 >> 31;
  if ( v13 < 0 )
  {
    v18 = (const void *)v8[9];
    v19 = v18;
    v20 = v8[8] - (_DWORD)v18;
    if ( v11 >= v20 )
      v21 = v8[8] - (_DWORD)v18;
    else
      v21 = v11;
    v43 = v15;
    v22 = memcmp(v19, v10, v21);
    v14 = v42;
    v15 = v43;
    if ( !v22 )
    {
      if ( v11 <= v20 )
        goto LABEL_15;
      v23 = v8[3];
      if ( v23 )
        goto LABEL_37;
LABEL_65:
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::_M_insert(
        a1,
        a2,
        v8,
        a4,
        v23,
        (int)v8);
      return a1;
    }
    if ( v22 >= 0 )
      goto LABEL_15;
    v23 = v8[3];
    if ( !v23 )
      goto LABEL_65;
LABEL_37:
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::_M_insert(
      a1,
      a2,
      v4,
      a4,
      (int)v4,
      0);
    return a1;
  }
LABEL_15:
  v16 = *((char **)v4 + 3);
  if ( v16 )
  {
    while ( *((_DWORD *)v16 + 2) )
      v16 = *((char **)v16 + 2);
  }
  else
  {
    v41 = *((_DWORD *)v4 + 1);
    if ( v4 == *(char **)(v41 + 12) )
    {
      while ( *(_DWORD *)(*(_DWORD *)(v41 + 4) + 12) == v41 )
        v41 = *(_DWORD *)(v41 + 4);
      v16 = (char *)v41;
      v41 = *(_DWORD *)(v41 + 4);
    }
    else
    {
      v16 = v4;
    }
    if ( v41 != *((_DWORD *)v16 + 3) )
      v16 = (char *)v41;
  }
  if ( v15 )
    goto LABEL_41;
  v17 = memcmp(v14, v10, v46);
  if ( v17 )
  {
    if ( v17 >= 0 )
      goto LABEL_22;
    goto LABEL_39;
  }
  if ( v11 > v45 )
  {
LABEL_39:
    if ( a2 != v16 )
    {
      if ( !std::less<std::string>::operator()((int)(a2 + 20), a4, (int)(v16 + 16)) )
      {
LABEL_41:
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::insert_unique(
          (int)&v47,
          a2,
          a4);
        *a1 = v47;
        return a1;
      }
      v4 = *a3;
    }
    if ( !*((_DWORD *)v4 + 3) )
    {
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        0,
        (int)v4);
      return a1;
    }
LABEL_61:
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      (int)v16,
      0);
    return a1;
  }
LABEL_22:
  *a1 = v4;
  return a1;
}


// ===== 4be274 std::map<std::string,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>>>::operator[]<char const*>(char const* const&) =====
char *__fastcall std::map<std::string,std::vector<PyDataArrays::_Funcs>>::operator[]<char const*>(char *a1, char **a2)
{
  char *v4; // r5
  const void *v5; // r1
  int v6; // r11
  int v7; // r9
  size_t v8; // r2
  int v9; // r0
  char *v10; // r3
  char *v12; // r5
  _DWORD v13[3]; // [sp+Ch] [bp-78h] BYREF
  char *v14; // [sp+18h] [bp-6Ch] BYREF
  char *v15; // [sp+1Ch] [bp-68h] BYREF
  std::string v16; // [sp+28h] [bp-5Ch] BYREF
  _DWORD v17[3]; // [sp+40h] [bp-44h] BYREF
  std::string v18; // [sp+4Ch] [bp-38h] BYREF
  std::string v19; // [sp+64h] [bp-20h] BYREF

  v4 = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::_M_lower_bound<char const*>(
                 a1,
                 a2);
  if ( v4 == a1 )
    goto LABEL_11;
  std::string::string(&v19, *a2);
  v5 = *((const void **)v4 + 9);
  v6 = *((_DWORD *)v4 + 8) - (_DWORD)v5;
  v7 = v19._M_finish - v19._M_start_of_storage._M_data;
  if ( v6 >= v19._M_finish - v19._M_start_of_storage._M_data )
    v8 = v19._M_finish - v19._M_start_of_storage._M_data;
  else
    v8 = *((_DWORD *)v4 + 8) - (_DWORD)v5;
  v9 = memcmp(v19._M_start_of_storage._M_data, v5, v8);
  if ( v9 )
  {
    if ( v9 >= 0 )
      goto LABEL_7;
    goto LABEL_10;
  }
  if ( v7 < v6 )
  {
LABEL_10:
    std::string::~string(&v19);
LABEL_11:
    std::string::string(&v18, *a2);
    memset(v13, 0, sizeof(v13));
    v16._M_finish = (char *)&v16;
    v16._M_start_of_storage._M_data = (char *)&v16;
    std::string::_M_range_initialize(&v16, v18._M_start_of_storage._M_data, v18._M_finish);
    std::vector<PyDataArrays::_Funcs>::vector(v17, v13);
    v14 = v4;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::insert_unique(
      &v15,
      a1,
      &v14,
      (int)&v16);
    v12 = v15;
    std::vector<PyDataArrays::_Funcs>::~vector((int)v17);
    std::string::~string(&v16);
    std::vector<PyDataArrays::_Funcs>::~vector((int)v13);
    std::string::~string(&v18);
    v10 = v12;
    return v10 + 40;
  }
LABEL_7:
  std::string::~string(&v19);
  v10 = v4;
  return v10 + 40;
}


// ===== 4be3e0 PyDataArrays::addFuncsForFile(char const*,void (*)(IStreamBase *),void (*)(void)) =====
void __fastcall PyDataArrays::addFuncsForFile(PyDataArrays *this, char *a2, void (*a3)(IStreamBase *), void (*a4)())
{
  char *v4; // r5
  char *v7; // r0
  char *v8; // r0
  _DWORD *v9; // r5
  char *v10; // r4
  unsigned int v11; // r3
  unsigned int v12; // r1
  _DWORD *v13; // r0
  char *v14; // r10
  _DWORD *v15; // r8
  int v16; // r5
  _DWORD *v17; // r5
  int v18; // r1
  int v19; // r0
  _DWORD *v20; // r3
  int v21; // r2
  char *v22; // r0
  size_t v23; // r1
  size_t v24; // r3
  char *v25; // r0
  char *v26; // [sp+4h] [bp-18h] BYREF
  int v27[3]; // [sp+8h] [bp-14h] BYREF
  size_t v28; // [sp+14h] [bp-8h] BYREF

  v26 = a2;
  v4 = (char *)this + 4;
  v7 = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::_M_find<char const*>(
                 (_DWORD *)this + 1,
                 &v26);
  if ( v4 == v7 )
  {
    v25 = std::map<std::string,std::vector<PyDataArrays::_Funcs>>::operator[]<char const*>(v7, &v26);
    memset(v27, 0, sizeof(v27));
    std::vector<PyDataArrays::_Funcs>::operator=((char **)v25, v27);
    std::vector<PyDataArrays::_Funcs>::~vector((int)v27);
  }
  v8 = std::map<std::string,std::vector<PyDataArrays::_Funcs>>::operator[]<char const*>(v4, &v26);
  v9 = *((_DWORD **)v8 + 1);
  v10 = v8;
  if ( v9 == *((_DWORD **)v8 + 2) )
  {
    v11 = ((int)v9 - *(_DWORD *)v8) >> 3;
    if ( v11 )
      v12 = 2 * v11;
    else
      v12 = 1;
    if ( v12 > 0x1FFFFFFF || v11 > v12 )
      v12 = 0x1FFFFFFF;
    v28 = v12;
    v13 = std::allocator<PyDataArrays::_Funcs>::_M_allocate((int)(v8 + 8), v12, &v28);
    v14 = *(char **)v10;
    v15 = v13;
    v16 = ((int)v9 - *(_DWORD *)v10) >> 3;
    if ( v16 > 0 )
    {
      v18 = v16;
      v19 = 0;
      do
      {
        --v18;
        v15[v19] = *(_DWORD *)&v14[v19 * 4];
        v20 = &v15[v19];
        v21 = *(_DWORD *)&v14[v19 * 4 + 4];
        v19 += 2;
        v20[1] = v21;
      }
      while ( v18 );
      v17 = &v15[2 * v16];
    }
    else
    {
      v17 = v13;
    }
    v17[1] = a4;
    *v17 = a3;
    v22 = *(char **)v10;
    if ( *(_DWORD *)v10 )
    {
      v23 = (*((_DWORD *)v10 + 2) - (_DWORD)v22) & 0xFFFFFFF8;
      if ( v23 > 0x80 )
        CustomFree(v22);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v22, v23);
    }
    v24 = v28;
    *(_DWORD *)v10 = v15;
    *((_DWORD *)v10 + 1) = v17 + 2;
    *((_DWORD *)v10 + 2) = &v15[2 * v24];
  }
  else
  {
    *v9 = a3;
    v9[1] = a4;
    *((_DWORD *)v8 + 1) += 8;
  }
}


// ===== 4be550 PyDataArrays::PyDataArrays(DataReloaderManager *) =====
void __fastcall PyDataArrays::PyDataArrays(PyDataArrays *this, DataReloaderManager *a2)
{
  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = off_969D60;
  *((_BYTE *)this + 4) = 0;
  *((_DWORD *)this + 4) = (char *)this + 4;
  *((_DWORD *)this + 3) = (char *)this + 4;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_BYTE *)this + 28) = 0;
  *((_DWORD *)this + 13) = a2;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 10) = (char *)this + 28;
  *((_DWORD *)this + 9) = (char *)this + 28;
  PyDataArrays::addFuncsForFile(
    this,
    "ai_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::AITable::read,
    (void (*)())Arrays::AITable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "ai_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::AITable::skipNames,
    (void (*)())Arrays::AITable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "AIProps",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::AIProps>);
  PyDataArrays::registerClassByName(
    this,
    "AITable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::AITable>);
  PyDataArrays::addFuncsForFile(
    this,
    "ai_factions_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::AIFactionTable::read,
    (void (*)())Arrays::AIFactionTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "ai_factions_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::AIFactionTable::skipNames,
    (void (*)())Arrays::AIFactionTable::finalizeNames);
  PyDataArrays::registerClassByName(this, "AIFactions", Structs::GetMemberIDByString<Structs::AIFactions>);
  PyDataArrays::registerClassByName(
    this,
    "AIFactionTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::AIFactionTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "animations_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::AnimTable::read,
    (void (*)())Arrays::AnimTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "animations_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::AnimTable::skipNames,
    (void (*)())Arrays::AnimTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "AnimTpl",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::AnimTpl>);
  PyDataArrays::registerClassByName(
    this,
    "AnimTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::AnimTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "animations_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::CamAnimSetTable::read,
    (void (*)())Arrays::CamAnimSetTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "animations_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::CamAnimSetTable::readNames,
    (void (*)())Arrays::CamAnimSetTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "CamAnimSet",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::CamAnimSet>);
  PyDataArrays::registerClassByName(
    this,
    "CamAnimSetTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::CamAnimSetTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "animations_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::CharAnimTable::read,
    (void (*)())Arrays::CharAnimTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "animations_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::CharAnimTable::readNames,
    (void (*)())Arrays::CharAnimTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "CharAnim",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::CharAnim>);
  PyDataArrays::registerClassByName(
    this,
    "CharAnimTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::CharAnimTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "character_classes_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::ClassTable::read,
    (void (*)())Arrays::ClassTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "character_classes_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::ClassTable::skipNames,
    (void (*)())Arrays::ClassTable::finalizeNames);
  PyDataArrays::registerClassByName(this, "ClassFuncList", Structs::GetMemberIDByString<Structs::ClassFuncList>);
  PyDataArrays::registerClassByName(
    this,
    "ClassTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::ClassTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "character_properties_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::CharacterTable::read,
    (void (*)())Arrays::CharacterTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "character_properties_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::CharacterTable::readNames,
    (void (*)())Arrays::CharacterTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "CharacterProperties",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::CharacterProperties>);
  PyDataArrays::registerClassByName(
    this,
    "CharacterTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::CharacterTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "character_properties_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::StatAutoAssignSchemeTable::read,
    (void (*)())Arrays::StatAutoAssignSchemeTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "character_properties_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::StatAutoAssignSchemeTable::skipNames,
    (void (*)())Arrays::StatAutoAssignSchemeTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "StatAutoAssignTargetList",
    Structs::GetMemberIDByString<Structs::StatAutoAssignTargetList>);
  PyDataArrays::registerClassByName(
    this,
    "StatAutoAssignSchemeTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::StatAutoAssignSchemeTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "character_properties_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::StatListTable::read,
    (void (*)())Arrays::StatListTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "character_properties_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::StatListTable::skipNames,
    (void (*)())Arrays::StatListTable::finalizeNames);
  PyDataArrays::registerClassByName(this, "StatListList", Structs::GetMemberIDByString<Structs::StatListList>);
  PyDataArrays::registerClassByName(
    this,
    "StatListTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::StatListTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "character_templates_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::Charater_Templates::read,
    (void (*)())Arrays::Charater_Templates::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "character_templates_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::Charater_Templates::readNames,
    (void (*)())Arrays::Charater_Templates::finalizeNames);
  PyDataArrays::registerClassByName(this, "CharTemplate", Structs::GetMemberIDByString<Structs::CharTemplate>);
  PyDataArrays::registerClassByName(
    this,
    "Charater_Templates",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::Charater_Templates>);
  PyDataArrays::addFuncsForFile(
    this,
    "common_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::RectTable::read,
    (void (*)())Arrays::RectTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "common_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::RectTable::skipNames,
    (void (*)())Arrays::RectTable::finalizeNames);
  PyDataArrays::registerClassByName(this, "Rect", (int (*)(const char *))Structs::GetMemberIDByString<Structs::Rect>);
  PyDataArrays::registerClassByName(
    this,
    "RectTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::RectTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "design_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::DesignSettingsTable::read,
    (void (*)())Arrays::DesignSettingsTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "design_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::DesignSettingsTable::skipNames,
    (void (*)())Arrays::DesignSettingsTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "DesignSettings",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::DesignSettings>);
  PyDataArrays::registerClassByName(
    this,
    "DesignSettingsTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::DesignSettingsTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "design_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::GameDifficulties::read,
    (void (*)())Arrays::GameDifficulties::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "design_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::GameDifficulties::readNames,
    (void (*)())Arrays::GameDifficulties::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "GameDifficulty",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::GameDifficulty>);
  PyDataArrays::registerClassByName(
    this,
    "GameDifficulties",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::GameDifficulties>);
  PyDataArrays::addFuncsForFile(
    this,
    "design_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::GameOptionTable::read,
    (void (*)())Arrays::GameOptionTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "design_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::GameOptionTable::readNames,
    (void (*)())Arrays::GameOptionTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "GameOption",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::GameOption>);
  PyDataArrays::registerClassByName(
    this,
    "GameOptionTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::GameOptionTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "dialogs_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::DialogActors::read,
    (void (*)())Arrays::DialogActors::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "dialogs_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::DialogActors::skipNames,
    (void (*)())Arrays::DialogActors::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "DialogActor",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::DialogActor>);
  PyDataArrays::registerClassByName(
    this,
    "DialogActors",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::DialogActors>);
  PyDataArrays::addFuncsForFile(
    this,
    "dialogs_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::Dialogs::read,
    (void (*)())Arrays::Dialogs::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "dialogs_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::Dialogs::skipNames,
    (void (*)())Arrays::Dialogs::finalizeNames);
  PyDataArrays::registerClassByName(this, "DialogStepList", Structs::GetMemberIDByString<Structs::DialogStepList>);
  PyDataArrays::registerClassByName(
    this,
    "Dialogs",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::Dialogs>);
  PyDataArrays::addFuncsForFile(
    this,
    "effects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::AnimatedEffectTable::read,
    (void (*)())Arrays::AnimatedEffectTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "effects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::AnimatedEffectTable::readNames,
    (void (*)())Arrays::AnimatedEffectTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "AnimFXTpl",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::AnimFXTpl>);
  PyDataArrays::registerClassByName(
    this,
    "AnimatedEffectTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::AnimatedEffectTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "effects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::CharEffectTable::read,
    (void (*)())Arrays::CharEffectTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "effects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::CharEffectTable::skipNames,
    (void (*)())Arrays::CharEffectTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "CharEffect",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::CharEffect>);
  PyDataArrays::registerClassByName(
    this,
    "CharEffectTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::CharEffectTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "effects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::FootstepEffectTable::read,
    (void (*)())Arrays::FootstepEffectTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "effects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::FootstepEffectTable::readNames,
    (void (*)())Arrays::FootstepEffectTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "FootstepEffect",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::FootstepEffect>);
  PyDataArrays::registerClassByName(
    this,
    "FootstepEffectTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::FootstepEffectTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "faeries_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::FaeryListTable::read,
    (void (*)())Arrays::FaeryListTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "faeries_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::FaeryListTable::skipNames,
    (void (*)())Arrays::FaeryListTable::finalizeNames);
  PyDataArrays::registerClassByName(this, "FaeryList", Structs::GetMemberIDByString<Structs::FaeryList>);
  PyDataArrays::registerClassByName(
    this,
    "FaeryListTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::FaeryListTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "faeries_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::FaeryTable::read,
    (void (*)())Arrays::FaeryTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "faeries_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::FaeryTable::skipNames,
    (void (*)())Arrays::FaeryTable::finalizeNames);
  PyDataArrays::registerClassByName(this, "Faery", (int (*)(const char *))Structs::GetMemberIDByString<Structs::Faery>);
  PyDataArrays::registerClassByName(
    this,
    "FaeryTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::FaeryTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "fonts_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::FontPalette::read,
    (void (*)())Arrays::FontPalette::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "fonts_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::FontPalette::skipNames,
    (void (*)())Arrays::FontPalette::finalizeNames);
  PyDataArrays::registerClassByName(this, "FontColorDef", Structs::GetMemberIDByString<Structs::FontColorDef>);
  PyDataArrays::registerClassByName(
    this,
    "FontPalette",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::FontPalette>);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::DestructibleContainers::read,
    (void (*)())Arrays::DestructibleContainers::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::DestructibleContainers::readNames,
    (void (*)())Arrays::DestructibleContainers::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "DestructibleContainer",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::DestructibleContainer>);
  PyDataArrays::registerClassByName(
    this,
    "DestructibleContainers",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::DestructibleContainers>);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::Doors::read,
    (void (*)())Arrays::Doors::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::Doors::readNames,
    (void (*)())Arrays::Doors::finalizeNames);
  PyDataArrays::registerClassByName(this, "Door", (int (*)(const char *))Structs::GetMemberIDByString<Structs::Door>);
  PyDataArrays::registerClassByName(this, "Doors", (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::Doors>);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::ExplosiveTraps::read,
    (void (*)())Arrays::ExplosiveTraps::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::ExplosiveTraps::readNames,
    (void (*)())Arrays::ExplosiveTraps::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "ExplosiveTrap",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::ExplosiveTrap>);
  PyDataArrays::registerClassByName(
    this,
    "ExplosiveTraps",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::ExplosiveTraps>);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::GameObjectDamager::read,
    (void (*)())Arrays::GameObjectDamager::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::GameObjectDamager::skipNames,
    (void (*)())Arrays::GameObjectDamager::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "GameObjectDamage",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::GameObjectDamage>);
  PyDataArrays::registerClassByName(
    this,
    "GameObjectDamager",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::GameObjectDamager>);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::LiftableObjects::read,
    (void (*)())Arrays::LiftableObjects::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::LiftableObjects::readNames,
    (void (*)())Arrays::LiftableObjects::finalizeNames);
  PyDataArrays::registerClassByName(this, "LiftableObject", Structs::GetMemberIDByString<Structs::LiftableObject>);
  PyDataArrays::registerClassByName(
    this,
    "LiftableObjects",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::LiftableObjects>);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::OpenableContainers::read,
    (void (*)())Arrays::OpenableContainers::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::OpenableContainers::readNames,
    (void (*)())Arrays::OpenableContainers::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "OpenableContainer",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::OpenableContainer>);
  PyDataArrays::registerClassByName(
    this,
    "OpenableContainers",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::OpenableContainers>);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::ProjectileTraps::read,
    (void (*)())Arrays::ProjectileTraps::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::ProjectileTraps::readNames,
    (void (*)())Arrays::ProjectileTraps::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "ProjectileTrap",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::ProjectileTrap>);
  PyDataArrays::registerClassByName(
    this,
    "ProjectileTraps",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::ProjectileTraps>);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::TimerTraps::read,
    (void (*)())Arrays::TimerTraps::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::TimerTraps::readNames,
    (void (*)())Arrays::TimerTraps::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "TimerTrap",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::TimerTrap>);
  PyDataArrays::registerClassByName(
    this,
    "TimerTraps",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::TimerTraps>);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::TriggerObjects::read,
    (void (*)())Arrays::TriggerObjects::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::TriggerObjects::readNames,
    (void (*)())Arrays::TriggerObjects::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "TriggerObject",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::TriggerObject>);
  PyDataArrays::registerClassByName(
    this,
    "TriggerObjects",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::TriggerObjects>);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::TriggerPlates::read,
    (void (*)())Arrays::TriggerPlates::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::TriggerPlates::readNames,
    (void (*)())Arrays::TriggerPlates::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "TriggerPlate",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::TriggerPlate>);
  PyDataArrays::registerClassByName(
    this,
    "TriggerPlates",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::TriggerPlates>);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::TriggerTraps::read,
    (void (*)())Arrays::TriggerTraps::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::TriggerTraps::readNames,
    (void (*)())Arrays::TriggerTraps::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "TriggerTrap",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::TriggerTrap>);
  PyDataArrays::registerClassByName(
    this,
    "TriggerTraps",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::TriggerTraps>);
  PyDataArrays::addFuncsForFile(
    this,
    "help_pages_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::HelpPages::read,
    (void (*)())Arrays::HelpPages::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "help_pages_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::HelpPages::skipNames,
    (void (*)())Arrays::HelpPages::finalizeNames);
  PyDataArrays::registerClassByName(this, "HelpPage", Structs::GetMemberIDByString<Structs::HelpPage>);
  PyDataArrays::registerClassByName(
    this,
    "HelpPages",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::HelpPages>);
  PyDataArrays::addFuncsForFile(
    this,
    "help_pages_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::HintPages::read,
    (void (*)())Arrays::HintPages::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "help_pages_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::HintPages::skipNames,
    (void (*)())Arrays::HintPages::finalizeNames);
  PyDataArrays::registerClassByName(this, "HintPage", Structs::GetMemberIDByString<Structs::HintPage>);
  PyDataArrays::registerClassByName(
    this,
    "HintPages",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::HintPages>);
  PyDataArrays::addFuncsForFile(
    this,
    "item_powers_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::ItemPowerList::read,
    (void (*)())Arrays::ItemPowerList::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "item_powers_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::ItemPowerList::skipNames,
    (void (*)())Arrays::ItemPowerList::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "ItemPowerEntryList",
    Structs::GetMemberIDByString<Structs::ItemPowerEntryList>);
  PyDataArrays::registerClassByName(
    this,
    "ItemPowerList",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::ItemPowerList>);
  PyDataArrays::addFuncsForFile(
    this,
    "item_powers_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::ItemPowerTable::read,
    (void (*)())Arrays::ItemPowerTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "item_powers_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::ItemPowerTable::readNames,
    (void (*)())Arrays::ItemPowerTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "ItemPowerRef",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::ItemPowerRef>);
  PyDataArrays::registerClassByName(
    this,
    "ItemPowerTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::ItemPowerTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "item_powers_monopoly_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::ItemBonusAttrMonopoly::read,
    (void (*)())Arrays::ItemBonusAttrMonopoly::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "item_powers_monopoly_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::ItemBonusAttrMonopoly::skipNames,
    (void (*)())Arrays::ItemBonusAttrMonopoly::finalizeNames);
  PyDataArrays::registerClassByName(this, "ItemBonusAttrList", Structs::GetMemberIDByString<Structs::ItemBonusAttrList>);
  PyDataArrays::registerClassByName(
    this,
    "ItemBonusAttrMonopoly",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::ItemBonusAttrMonopoly>);
  PyDataArrays::addFuncsForFile(
    this,
    "levels_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::FastTravelList::read,
    (void (*)())Arrays::FastTravelList::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "levels_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::FastTravelList::readNames,
    (void (*)())Arrays::FastTravelList::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "FastTravelDestination",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::FastTravelDestination>);
  PyDataArrays::registerClassByName(
    this,
    "FastTravelList",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::FastTravelList>);
  PyDataArrays::addFuncsForFile(
    this,
    "levels_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::LevelList::read,
    (void (*)())Arrays::LevelList::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "levels_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::LevelList::readNames,
    (void (*)())Arrays::LevelList::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "LevelDeclaration",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::LevelDeclaration>);
  PyDataArrays::registerClassByName(
    this,
    "LevelList",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::LevelList>);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_audiovisual_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::ItemAudioVisualTable::read,
    (void (*)())Arrays::ItemAudioVisualTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_audiovisual_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::ItemAudioVisualTable::skipNames,
    (void (*)())Arrays::ItemAudioVisualTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "ItemAudioVisual",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::ItemAudioVisual>);
  PyDataArrays::registerClassByName(
    this,
    "ItemAudioVisualTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::ItemAudioVisualTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::DropTilePriorityTable::read,
    (void (*)())Arrays::DropTilePriorityTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::DropTilePriorityTable::skipNames,
    (void (*)())Arrays::DropTilePriorityTable::finalizeNames);
  PyDataArrays::registerClassByName(this, "TileOffsetList", Structs::GetMemberIDByString<Structs::TileOffsetList>);
  PyDataArrays::registerClassByName(
    this,
    "DropTilePriorityTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::DropTilePriorityTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::InventoryTable::read,
    (void (*)())Arrays::InventoryTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::InventoryTable::skipNames,
    (void (*)())Arrays::InventoryTable::finalizeNames);
  PyDataArrays::registerClassByName(this, "Inventory", Structs::GetMemberIDByString<Structs::Inventory>);
  PyDataArrays::registerClassByName(
    this,
    "InventoryTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::InventoryTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::ItemList::read,
    (void (*)())Arrays::ItemList::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::ItemList::skipNames,
    (void (*)())Arrays::ItemList::finalizeNames);
  PyDataArrays::registerClassByName(this, "ItemListEntryList", Structs::GetMemberIDByString<Structs::ItemListEntryList>);
  PyDataArrays::registerClassByName(
    this,
    "ItemList",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::ItemList>);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::ItemTable::read,
    (void (*)())Arrays::ItemTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::ItemTable::readNames,
    (void (*)())Arrays::ItemTable::finalizeNames);
  PyDataArrays::registerClassByName(this, "Item", (int (*)(const char *))Structs::GetMemberIDByString<Structs::Item>);
  PyDataArrays::registerClassByName(
    this,
    "ItemTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::ItemTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::ItemTypeList::read,
    (void (*)())Arrays::ItemTypeList::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::ItemTypeList::skipNames,
    (void (*)())Arrays::ItemTypeList::finalizeNames);
  PyDataArrays::registerClassByName(this, "ItemTypeListList", Structs::GetMemberIDByString<Structs::ItemTypeListList>);
  PyDataArrays::registerClassByName(
    this,
    "ItemTypeList",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::ItemTypeList>);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::LootTable::read,
    (void (*)())Arrays::LootTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::LootTable::skipNames,
    (void (*)())Arrays::LootTable::finalizeNames);
  PyDataArrays::registerClassByName(this, "Loot", (int (*)(const char *))Structs::GetMemberIDByString<Structs::Loot>);
  PyDataArrays::registerClassByName(
    this,
    "LootTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::LootTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::MerchantTable::read,
    (void (*)())Arrays::MerchantTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::MerchantTable::skipNames,
    (void (*)())Arrays::MerchantTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "Merchant",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::Merchant>);
  PyDataArrays::registerClassByName(
    this,
    "MerchantTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::MerchantTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::NumProbArray::read,
    (void (*)())Arrays::NumProbArray::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::NumProbArray::skipNames,
    (void (*)())Arrays::NumProbArray::finalizeNames);
  PyDataArrays::registerClassByName(this, "NumProbList", Structs::GetMemberIDByString<Structs::NumProbList>);
  PyDataArrays::registerClassByName(
    this,
    "NumProbArray",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::NumProbArray>);
  PyDataArrays::addFuncsForFile(
    this,
    "projectiles_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::ProjectileTable::read,
    (void (*)())Arrays::ProjectileTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "projectiles_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::ProjectileTable::skipNames,
    (void (*)())Arrays::ProjectileTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "Projectile",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::Projectile>);
  PyDataArrays::registerClassByName(
    this,
    "ProjectileTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::ProjectileTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "skills_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::SkillListTable::read,
    (void (*)())Arrays::SkillListTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "skills_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::SkillListTable::skipNames,
    (void (*)())Arrays::SkillListTable::finalizeNames);
  PyDataArrays::registerClassByName(this, "SkillList", Structs::GetMemberIDByString<Structs::SkillList>);
  PyDataArrays::registerClassByName(
    this,
    "SkillListTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::SkillListTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "skills_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::SkillTable::read,
    (void (*)())Arrays::SkillTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "skills_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::SkillTable::readNames,
    (void (*)())Arrays::SkillTable::finalizeNames);
  PyDataArrays::registerClassByName(this, "Skill", (int (*)(const char *))Structs::GetMemberIDByString<Structs::Skill>);
  PyDataArrays::registerClassByName(
    this,
    "SkillTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::SkillTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "sounds_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::CharSoundsTable::read,
    (void (*)())Arrays::CharSoundsTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "sounds_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::CharSoundsTable::skipNames,
    (void (*)())Arrays::CharSoundsTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "CharSounds",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::CharSounds>);
  PyDataArrays::registerClassByName(
    this,
    "CharSoundsTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::CharSoundsTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "sounds_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::Listeners::read,
    (void (*)())Arrays::Listeners::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "sounds_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::Listeners::readNames,
    (void (*)())Arrays::Listeners::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "Listener",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::Listener>);
  PyDataArrays::registerClassByName(
    this,
    "Listeners",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::Listeners>);
  PyDataArrays::addFuncsForFile(
    this,
    "sounds_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::SoundBankPlayback::read,
    (void (*)())Arrays::SoundBankPlayback::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "sounds_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::SoundBankPlayback::readNames,
    (void (*)())Arrays::SoundBankPlayback::finalizeNames);
  PyDataArrays::registerClassByName(this, "SoundBank", Structs::GetMemberIDByString<Structs::SoundBank>);
  PyDataArrays::registerClassByName(
    this,
    "SoundBankPlayback",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::SoundBankPlayback>);
  PyDataArrays::addFuncsForFile(
    this,
    "sounds_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::SoundGroupsRouting::read,
    (void (*)())Arrays::SoundGroupsRouting::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "sounds_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::SoundGroupsRouting::readNames,
    (void (*)())Arrays::SoundGroupsRouting::finalizeNames);
  PyDataArrays::registerClassByName(this, "SoundGroup", Structs::GetMemberIDByString<Structs::SoundGroup>);
  PyDataArrays::registerClassByName(
    this,
    "SoundGroupsRouting",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::SoundGroupsRouting>);
  PyDataArrays::addFuncsForFile(
    this,
    "sounds_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::Sounds_bak::read,
    (void (*)())Arrays::Sounds_bak::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "sounds_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::Sounds_bak::readNames,
    (void (*)())Arrays::Sounds_bak::finalizeNames);
  PyDataArrays::registerClassByName(this, "Sound", (int (*)(const char *))Structs::GetMemberIDByString<Structs::Sound>);
  PyDataArrays::registerClassByName(
    this,
    "Sounds_bak",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::Sounds_bak>);
  PyDataArrays::addFuncsForFile(
    this,
    "spawn_groups_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::SpawnGroups::read,
    (void (*)())Arrays::SpawnGroups::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "spawn_groups_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::SpawnGroups::readNames,
    (void (*)())Arrays::SpawnGroups::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "SpawnGroup",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::SpawnGroup>);
  PyDataArrays::registerClassByName(
    this,
    "SpawnGroups",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::SpawnGroups>);
  PyDataArrays::addFuncsForFile(
    this,
    "trophies_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::TrophyTable::read,
    (void (*)())Arrays::TrophyTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "trophies_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::TrophyTable::readNames,
    (void (*)())Arrays::TrophyTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "Trophy",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::Trophy>);
  PyDataArrays::registerClassByName(
    this,
    "TrophyTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::TrophyTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "v2conditions_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::v2Conditions::read,
    (void (*)())Arrays::v2Conditions::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "v2conditions_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::v2Conditions::readNames,
    (void (*)())Arrays::v2Conditions::finalizeNames);
  PyDataArrays::registerClassByName(this, "v2CondAnd", Structs::GetMemberIDByString<Structs::v2CondAnd>);
  PyDataArrays::registerClassByName(
    this,
    "v2Conditions",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::v2Conditions>);
  PyDataArrays::addFuncsForFile(
    this,
    "v2eventmanager_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::v2Events::read,
    (void (*)())Arrays::v2Events::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "v2eventmanager_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::v2Events::readNames,
    (void (*)())Arrays::v2Events::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "v2Event",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::v2Event>);
  PyDataArrays::registerClassByName(
    this,
    "v2Events",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::v2Events>);
  PyDataArrays::addFuncsForFile(
    this,
    "v2quests_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::v2Quests::read,
    (void (*)())Arrays::v2Quests::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "v2quests_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::v2Quests::readNames,
    (void (*)())Arrays::v2Quests::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "v2Quest",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::v2Quest>);
  PyDataArrays::registerClassByName(
    this,
    "v2Quests",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::v2Quests>);
  PyDataArrays::addFuncsForFile(
    this,
    "worldmap_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::WorldMap::read,
    (void (*)())Arrays::WorldMap::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "worldmap_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::WorldMap::readNames,
    (void (*)())Arrays::WorldMap::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "WldMapLocation",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::WldMapLocation>);
  PyDataArrays::registerClassByName(
    this,
    "WorldMap",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::WorldMap>);
  PyDataArrays::addFuncsForFile(
    this,
    "worldmap_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::WorldMapLockers::read,
    (void (*)())Arrays::WorldMapLockers::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "worldmap_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::WorldMapLockers::skipNames,
    (void (*)())Arrays::WorldMapLockers::finalizeNames);
  PyDataArrays::registerClassByName(this, "WorldMapLocker", Structs::GetMemberIDByString<Structs::WorldMapLocker>);
  PyDataArrays::registerClassByName(
    this,
    "WorldMapLockers",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::WorldMapLockers>);
  PyDataArrays::addFuncsForFile(
    this,
    "character_models_dictionary_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::ModelDict::read,
    (void (*)())Arrays::ModelDict::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "character_models_dictionary_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::ModelDict::skipNames,
    (void (*)())Arrays::ModelDict::finalizeNames);
  PyDataArrays::registerClassByName(this, "ColladaFile", Structs::GetMemberIDByString<Structs::ColladaFile>);
  PyDataArrays::registerClassByName(
    this,
    "ModelDict",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::ModelDict>);
  PyDataArrays::addFuncsForFile(
    this,
    "animations_dictionary_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::AnimDict::read,
    (void (*)())Arrays::AnimDict::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "animations_dictionary_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::AnimDict::skipNames,
    (void (*)())Arrays::AnimDict::finalizeNames);
  PyDataArrays::registerClassByName(this, "ColladaFile", Structs::GetMemberIDByString<Structs::ColladaFile>);
  PyDataArrays::registerClassByName(
    this,
    "AnimDict",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::AnimDict>);
  PyDataArrays::addFuncsForFile(
    this,
    "effects_dictionary_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::EffectDict::read,
    (void (*)())Arrays::EffectDict::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "effects_dictionary_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::EffectDict::skipNames,
    (void (*)())Arrays::EffectDict::finalizeNames);
  PyDataArrays::registerClassByName(this, "ColladaFile", Structs::GetMemberIDByString<Structs::ColladaFile>);
  PyDataArrays::registerClassByName(
    this,
    "EffectDict",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::EffectDict>);
  PyDataArrays::addFuncsForFile(
    this,
    "projectiles_dictionary_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::ProjectileDict::read,
    (void (*)())Arrays::ProjectileDict::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "projectiles_dictionary_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::ProjectileDict::skipNames,
    (void (*)())Arrays::ProjectileDict::finalizeNames);
  PyDataArrays::registerClassByName(this, "ColladaFile", Structs::GetMemberIDByString<Structs::ColladaFile>);
  PyDataArrays::registerClassByName(
    this,
    "ProjectileDict",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::ProjectileDict>);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_dictionary_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::GameObjectDict::read,
    (void (*)())Arrays::GameObjectDict::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_dictionary_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::GameObjectDict::skipNames,
    (void (*)())Arrays::GameObjectDict::finalizeNames);
  PyDataArrays::registerClassByName(this, "ColladaFile", Structs::GetMemberIDByString<Structs::ColladaFile>);
  PyDataArrays::registerClassByName(
    this,
    "GameObjectDict",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::GameObjectDict>);
  PyDataArrays::addFuncsForFile(
    this,
    "common_text_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::StrID_Languages::read,
    (void (*)())Arrays::StrID_Languages::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "common_text_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::StrID_Languages::skipNames,
    (void (*)())Arrays::StrID_Languages::finalizeNames);
  PyDataArrays::registerClassByName(this, "LangSheetList", Structs::GetMemberIDByString<Structs::LangSheetList>);
  PyDataArrays::registerClassByName(
    this,
    "StrID_Languages",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::StrID_Languages>);
  PyDataArrays::addFuncsForFile(
    this,
    "sdd_dungeon_hunter_2_iphone_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::Sounds::read,
    (void (*)())Arrays::Sounds::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "sdd_dungeon_hunter_2_iphone_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::Sounds::readNames,
    (void (*)())Arrays::Sounds::finalizeNames);
  PyDataArrays::registerClassByName(this, "SoundAutoGen", Structs::GetMemberIDByString<Structs::SoundAutoGen>);
  PyDataArrays::registerClassByName(this, "Sounds", (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::Sounds>);
}


// ===== 4c0ddc PyDataArrays::PyDataArrays(DataReloaderManager *) =====
void __fastcall PyDataArrays::PyDataArrays(PyDataArrays *this, DataReloaderManager *a2)
{
  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = off_969D60;
  *((_BYTE *)this + 4) = 0;
  *((_DWORD *)this + 4) = (char *)this + 4;
  *((_DWORD *)this + 3) = (char *)this + 4;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_BYTE *)this + 28) = 0;
  *((_DWORD *)this + 13) = a2;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 10) = (char *)this + 28;
  *((_DWORD *)this + 9) = (char *)this + 28;
  PyDataArrays::addFuncsForFile(
    this,
    "ai_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::AITable::read,
    (void (*)())Arrays::AITable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "ai_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::AITable::skipNames,
    (void (*)())Arrays::AITable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "AIProps",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::AIProps>);
  PyDataArrays::registerClassByName(
    this,
    "AITable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::AITable>);
  PyDataArrays::addFuncsForFile(
    this,
    "ai_factions_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::AIFactionTable::read,
    (void (*)())Arrays::AIFactionTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "ai_factions_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::AIFactionTable::skipNames,
    (void (*)())Arrays::AIFactionTable::finalizeNames);
  PyDataArrays::registerClassByName(this, "AIFactions", Structs::GetMemberIDByString<Structs::AIFactions>);
  PyDataArrays::registerClassByName(
    this,
    "AIFactionTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::AIFactionTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "animations_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::AnimTable::read,
    (void (*)())Arrays::AnimTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "animations_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::AnimTable::skipNames,
    (void (*)())Arrays::AnimTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "AnimTpl",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::AnimTpl>);
  PyDataArrays::registerClassByName(
    this,
    "AnimTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::AnimTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "animations_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::CamAnimSetTable::read,
    (void (*)())Arrays::CamAnimSetTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "animations_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::CamAnimSetTable::readNames,
    (void (*)())Arrays::CamAnimSetTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "CamAnimSet",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::CamAnimSet>);
  PyDataArrays::registerClassByName(
    this,
    "CamAnimSetTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::CamAnimSetTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "animations_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::CharAnimTable::read,
    (void (*)())Arrays::CharAnimTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "animations_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::CharAnimTable::readNames,
    (void (*)())Arrays::CharAnimTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "CharAnim",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::CharAnim>);
  PyDataArrays::registerClassByName(
    this,
    "CharAnimTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::CharAnimTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "character_classes_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::ClassTable::read,
    (void (*)())Arrays::ClassTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "character_classes_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::ClassTable::skipNames,
    (void (*)())Arrays::ClassTable::finalizeNames);
  PyDataArrays::registerClassByName(this, "ClassFuncList", Structs::GetMemberIDByString<Structs::ClassFuncList>);
  PyDataArrays::registerClassByName(
    this,
    "ClassTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::ClassTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "character_properties_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::CharacterTable::read,
    (void (*)())Arrays::CharacterTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "character_properties_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::CharacterTable::readNames,
    (void (*)())Arrays::CharacterTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "CharacterProperties",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::CharacterProperties>);
  PyDataArrays::registerClassByName(
    this,
    "CharacterTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::CharacterTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "character_properties_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::StatAutoAssignSchemeTable::read,
    (void (*)())Arrays::StatAutoAssignSchemeTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "character_properties_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::StatAutoAssignSchemeTable::skipNames,
    (void (*)())Arrays::StatAutoAssignSchemeTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "StatAutoAssignTargetList",
    Structs::GetMemberIDByString<Structs::StatAutoAssignTargetList>);
  PyDataArrays::registerClassByName(
    this,
    "StatAutoAssignSchemeTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::StatAutoAssignSchemeTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "character_properties_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::StatListTable::read,
    (void (*)())Arrays::StatListTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "character_properties_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::StatListTable::skipNames,
    (void (*)())Arrays::StatListTable::finalizeNames);
  PyDataArrays::registerClassByName(this, "StatListList", Structs::GetMemberIDByString<Structs::StatListList>);
  PyDataArrays::registerClassByName(
    this,
    "StatListTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::StatListTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "character_templates_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::Charater_Templates::read,
    (void (*)())Arrays::Charater_Templates::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "character_templates_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::Charater_Templates::readNames,
    (void (*)())Arrays::Charater_Templates::finalizeNames);
  PyDataArrays::registerClassByName(this, "CharTemplate", Structs::GetMemberIDByString<Structs::CharTemplate>);
  PyDataArrays::registerClassByName(
    this,
    "Charater_Templates",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::Charater_Templates>);
  PyDataArrays::addFuncsForFile(
    this,
    "common_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::RectTable::read,
    (void (*)())Arrays::RectTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "common_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::RectTable::skipNames,
    (void (*)())Arrays::RectTable::finalizeNames);
  PyDataArrays::registerClassByName(this, "Rect", (int (*)(const char *))Structs::GetMemberIDByString<Structs::Rect>);
  PyDataArrays::registerClassByName(
    this,
    "RectTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::RectTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "design_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::DesignSettingsTable::read,
    (void (*)())Arrays::DesignSettingsTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "design_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::DesignSettingsTable::skipNames,
    (void (*)())Arrays::DesignSettingsTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "DesignSettings",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::DesignSettings>);
  PyDataArrays::registerClassByName(
    this,
    "DesignSettingsTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::DesignSettingsTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "design_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::GameDifficulties::read,
    (void (*)())Arrays::GameDifficulties::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "design_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::GameDifficulties::readNames,
    (void (*)())Arrays::GameDifficulties::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "GameDifficulty",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::GameDifficulty>);
  PyDataArrays::registerClassByName(
    this,
    "GameDifficulties",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::GameDifficulties>);
  PyDataArrays::addFuncsForFile(
    this,
    "design_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::GameOptionTable::read,
    (void (*)())Arrays::GameOptionTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "design_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::GameOptionTable::readNames,
    (void (*)())Arrays::GameOptionTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "GameOption",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::GameOption>);
  PyDataArrays::registerClassByName(
    this,
    "GameOptionTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::GameOptionTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "dialogs_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::DialogActors::read,
    (void (*)())Arrays::DialogActors::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "dialogs_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::DialogActors::skipNames,
    (void (*)())Arrays::DialogActors::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "DialogActor",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::DialogActor>);
  PyDataArrays::registerClassByName(
    this,
    "DialogActors",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::DialogActors>);
  PyDataArrays::addFuncsForFile(
    this,
    "dialogs_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::Dialogs::read,
    (void (*)())Arrays::Dialogs::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "dialogs_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::Dialogs::skipNames,
    (void (*)())Arrays::Dialogs::finalizeNames);
  PyDataArrays::registerClassByName(this, "DialogStepList", Structs::GetMemberIDByString<Structs::DialogStepList>);
  PyDataArrays::registerClassByName(
    this,
    "Dialogs",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::Dialogs>);
  PyDataArrays::addFuncsForFile(
    this,
    "effects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::AnimatedEffectTable::read,
    (void (*)())Arrays::AnimatedEffectTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "effects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::AnimatedEffectTable::readNames,
    (void (*)())Arrays::AnimatedEffectTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "AnimFXTpl",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::AnimFXTpl>);
  PyDataArrays::registerClassByName(
    this,
    "AnimatedEffectTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::AnimatedEffectTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "effects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::CharEffectTable::read,
    (void (*)())Arrays::CharEffectTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "effects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::CharEffectTable::skipNames,
    (void (*)())Arrays::CharEffectTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "CharEffect",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::CharEffect>);
  PyDataArrays::registerClassByName(
    this,
    "CharEffectTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::CharEffectTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "effects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::FootstepEffectTable::read,
    (void (*)())Arrays::FootstepEffectTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "effects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::FootstepEffectTable::readNames,
    (void (*)())Arrays::FootstepEffectTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "FootstepEffect",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::FootstepEffect>);
  PyDataArrays::registerClassByName(
    this,
    "FootstepEffectTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::FootstepEffectTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "faeries_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::FaeryListTable::read,
    (void (*)())Arrays::FaeryListTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "faeries_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::FaeryListTable::skipNames,
    (void (*)())Arrays::FaeryListTable::finalizeNames);
  PyDataArrays::registerClassByName(this, "FaeryList", Structs::GetMemberIDByString<Structs::FaeryList>);
  PyDataArrays::registerClassByName(
    this,
    "FaeryListTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::FaeryListTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "faeries_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::FaeryTable::read,
    (void (*)())Arrays::FaeryTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "faeries_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::FaeryTable::skipNames,
    (void (*)())Arrays::FaeryTable::finalizeNames);
  PyDataArrays::registerClassByName(this, "Faery", (int (*)(const char *))Structs::GetMemberIDByString<Structs::Faery>);
  PyDataArrays::registerClassByName(
    this,
    "FaeryTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::FaeryTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "fonts_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::FontPalette::read,
    (void (*)())Arrays::FontPalette::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "fonts_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::FontPalette::skipNames,
    (void (*)())Arrays::FontPalette::finalizeNames);
  PyDataArrays::registerClassByName(this, "FontColorDef", Structs::GetMemberIDByString<Structs::FontColorDef>);
  PyDataArrays::registerClassByName(
    this,
    "FontPalette",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::FontPalette>);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::DestructibleContainers::read,
    (void (*)())Arrays::DestructibleContainers::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::DestructibleContainers::readNames,
    (void (*)())Arrays::DestructibleContainers::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "DestructibleContainer",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::DestructibleContainer>);
  PyDataArrays::registerClassByName(
    this,
    "DestructibleContainers",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::DestructibleContainers>);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::Doors::read,
    (void (*)())Arrays::Doors::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::Doors::readNames,
    (void (*)())Arrays::Doors::finalizeNames);
  PyDataArrays::registerClassByName(this, "Door", (int (*)(const char *))Structs::GetMemberIDByString<Structs::Door>);
  PyDataArrays::registerClassByName(this, "Doors", (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::Doors>);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::ExplosiveTraps::read,
    (void (*)())Arrays::ExplosiveTraps::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::ExplosiveTraps::readNames,
    (void (*)())Arrays::ExplosiveTraps::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "ExplosiveTrap",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::ExplosiveTrap>);
  PyDataArrays::registerClassByName(
    this,
    "ExplosiveTraps",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::ExplosiveTraps>);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::GameObjectDamager::read,
    (void (*)())Arrays::GameObjectDamager::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::GameObjectDamager::skipNames,
    (void (*)())Arrays::GameObjectDamager::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "GameObjectDamage",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::GameObjectDamage>);
  PyDataArrays::registerClassByName(
    this,
    "GameObjectDamager",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::GameObjectDamager>);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::LiftableObjects::read,
    (void (*)())Arrays::LiftableObjects::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::LiftableObjects::readNames,
    (void (*)())Arrays::LiftableObjects::finalizeNames);
  PyDataArrays::registerClassByName(this, "LiftableObject", Structs::GetMemberIDByString<Structs::LiftableObject>);
  PyDataArrays::registerClassByName(
    this,
    "LiftableObjects",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::LiftableObjects>);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::OpenableContainers::read,
    (void (*)())Arrays::OpenableContainers::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::OpenableContainers::readNames,
    (void (*)())Arrays::OpenableContainers::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "OpenableContainer",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::OpenableContainer>);
  PyDataArrays::registerClassByName(
    this,
    "OpenableContainers",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::OpenableContainers>);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::ProjectileTraps::read,
    (void (*)())Arrays::ProjectileTraps::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::ProjectileTraps::readNames,
    (void (*)())Arrays::ProjectileTraps::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "ProjectileTrap",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::ProjectileTrap>);
  PyDataArrays::registerClassByName(
    this,
    "ProjectileTraps",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::ProjectileTraps>);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::TimerTraps::read,
    (void (*)())Arrays::TimerTraps::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::TimerTraps::readNames,
    (void (*)())Arrays::TimerTraps::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "TimerTrap",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::TimerTrap>);
  PyDataArrays::registerClassByName(
    this,
    "TimerTraps",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::TimerTraps>);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::TriggerObjects::read,
    (void (*)())Arrays::TriggerObjects::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::TriggerObjects::readNames,
    (void (*)())Arrays::TriggerObjects::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "TriggerObject",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::TriggerObject>);
  PyDataArrays::registerClassByName(
    this,
    "TriggerObjects",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::TriggerObjects>);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::TriggerPlates::read,
    (void (*)())Arrays::TriggerPlates::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::TriggerPlates::readNames,
    (void (*)())Arrays::TriggerPlates::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "TriggerPlate",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::TriggerPlate>);
  PyDataArrays::registerClassByName(
    this,
    "TriggerPlates",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::TriggerPlates>);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::TriggerTraps::read,
    (void (*)())Arrays::TriggerTraps::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::TriggerTraps::readNames,
    (void (*)())Arrays::TriggerTraps::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "TriggerTrap",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::TriggerTrap>);
  PyDataArrays::registerClassByName(
    this,
    "TriggerTraps",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::TriggerTraps>);
  PyDataArrays::addFuncsForFile(
    this,
    "help_pages_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::HelpPages::read,
    (void (*)())Arrays::HelpPages::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "help_pages_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::HelpPages::skipNames,
    (void (*)())Arrays::HelpPages::finalizeNames);
  PyDataArrays::registerClassByName(this, "HelpPage", Structs::GetMemberIDByString<Structs::HelpPage>);
  PyDataArrays::registerClassByName(
    this,
    "HelpPages",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::HelpPages>);
  PyDataArrays::addFuncsForFile(
    this,
    "help_pages_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::HintPages::read,
    (void (*)())Arrays::HintPages::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "help_pages_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::HintPages::skipNames,
    (void (*)())Arrays::HintPages::finalizeNames);
  PyDataArrays::registerClassByName(this, "HintPage", Structs::GetMemberIDByString<Structs::HintPage>);
  PyDataArrays::registerClassByName(
    this,
    "HintPages",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::HintPages>);
  PyDataArrays::addFuncsForFile(
    this,
    "item_powers_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::ItemPowerList::read,
    (void (*)())Arrays::ItemPowerList::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "item_powers_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::ItemPowerList::skipNames,
    (void (*)())Arrays::ItemPowerList::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "ItemPowerEntryList",
    Structs::GetMemberIDByString<Structs::ItemPowerEntryList>);
  PyDataArrays::registerClassByName(
    this,
    "ItemPowerList",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::ItemPowerList>);
  PyDataArrays::addFuncsForFile(
    this,
    "item_powers_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::ItemPowerTable::read,
    (void (*)())Arrays::ItemPowerTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "item_powers_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::ItemPowerTable::readNames,
    (void (*)())Arrays::ItemPowerTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "ItemPowerRef",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::ItemPowerRef>);
  PyDataArrays::registerClassByName(
    this,
    "ItemPowerTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::ItemPowerTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "item_powers_monopoly_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::ItemBonusAttrMonopoly::read,
    (void (*)())Arrays::ItemBonusAttrMonopoly::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "item_powers_monopoly_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::ItemBonusAttrMonopoly::skipNames,
    (void (*)())Arrays::ItemBonusAttrMonopoly::finalizeNames);
  PyDataArrays::registerClassByName(this, "ItemBonusAttrList", Structs::GetMemberIDByString<Structs::ItemBonusAttrList>);
  PyDataArrays::registerClassByName(
    this,
    "ItemBonusAttrMonopoly",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::ItemBonusAttrMonopoly>);
  PyDataArrays::addFuncsForFile(
    this,
    "levels_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::FastTravelList::read,
    (void (*)())Arrays::FastTravelList::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "levels_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::FastTravelList::readNames,
    (void (*)())Arrays::FastTravelList::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "FastTravelDestination",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::FastTravelDestination>);
  PyDataArrays::registerClassByName(
    this,
    "FastTravelList",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::FastTravelList>);
  PyDataArrays::addFuncsForFile(
    this,
    "levels_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::LevelList::read,
    (void (*)())Arrays::LevelList::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "levels_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::LevelList::readNames,
    (void (*)())Arrays::LevelList::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "LevelDeclaration",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::LevelDeclaration>);
  PyDataArrays::registerClassByName(
    this,
    "LevelList",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::LevelList>);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_audiovisual_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::ItemAudioVisualTable::read,
    (void (*)())Arrays::ItemAudioVisualTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_audiovisual_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::ItemAudioVisualTable::skipNames,
    (void (*)())Arrays::ItemAudioVisualTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "ItemAudioVisual",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::ItemAudioVisual>);
  PyDataArrays::registerClassByName(
    this,
    "ItemAudioVisualTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::ItemAudioVisualTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::DropTilePriorityTable::read,
    (void (*)())Arrays::DropTilePriorityTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::DropTilePriorityTable::skipNames,
    (void (*)())Arrays::DropTilePriorityTable::finalizeNames);
  PyDataArrays::registerClassByName(this, "TileOffsetList", Structs::GetMemberIDByString<Structs::TileOffsetList>);
  PyDataArrays::registerClassByName(
    this,
    "DropTilePriorityTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::DropTilePriorityTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::InventoryTable::read,
    (void (*)())Arrays::InventoryTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::InventoryTable::skipNames,
    (void (*)())Arrays::InventoryTable::finalizeNames);
  PyDataArrays::registerClassByName(this, "Inventory", Structs::GetMemberIDByString<Structs::Inventory>);
  PyDataArrays::registerClassByName(
    this,
    "InventoryTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::InventoryTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::ItemList::read,
    (void (*)())Arrays::ItemList::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::ItemList::skipNames,
    (void (*)())Arrays::ItemList::finalizeNames);
  PyDataArrays::registerClassByName(this, "ItemListEntryList", Structs::GetMemberIDByString<Structs::ItemListEntryList>);
  PyDataArrays::registerClassByName(
    this,
    "ItemList",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::ItemList>);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::ItemTable::read,
    (void (*)())Arrays::ItemTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::ItemTable::readNames,
    (void (*)())Arrays::ItemTable::finalizeNames);
  PyDataArrays::registerClassByName(this, "Item", (int (*)(const char *))Structs::GetMemberIDByString<Structs::Item>);
  PyDataArrays::registerClassByName(
    this,
    "ItemTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::ItemTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::ItemTypeList::read,
    (void (*)())Arrays::ItemTypeList::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::ItemTypeList::skipNames,
    (void (*)())Arrays::ItemTypeList::finalizeNames);
  PyDataArrays::registerClassByName(this, "ItemTypeListList", Structs::GetMemberIDByString<Structs::ItemTypeListList>);
  PyDataArrays::registerClassByName(
    this,
    "ItemTypeList",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::ItemTypeList>);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::LootTable::read,
    (void (*)())Arrays::LootTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::LootTable::skipNames,
    (void (*)())Arrays::LootTable::finalizeNames);
  PyDataArrays::registerClassByName(this, "Loot", (int (*)(const char *))Structs::GetMemberIDByString<Structs::Loot>);
  PyDataArrays::registerClassByName(
    this,
    "LootTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::LootTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::MerchantTable::read,
    (void (*)())Arrays::MerchantTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::MerchantTable::skipNames,
    (void (*)())Arrays::MerchantTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "Merchant",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::Merchant>);
  PyDataArrays::registerClassByName(
    this,
    "MerchantTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::MerchantTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::NumProbArray::read,
    (void (*)())Arrays::NumProbArray::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "loot_table_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::NumProbArray::skipNames,
    (void (*)())Arrays::NumProbArray::finalizeNames);
  PyDataArrays::registerClassByName(this, "NumProbList", Structs::GetMemberIDByString<Structs::NumProbList>);
  PyDataArrays::registerClassByName(
    this,
    "NumProbArray",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::NumProbArray>);
  PyDataArrays::addFuncsForFile(
    this,
    "projectiles_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::ProjectileTable::read,
    (void (*)())Arrays::ProjectileTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "projectiles_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::ProjectileTable::skipNames,
    (void (*)())Arrays::ProjectileTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "Projectile",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::Projectile>);
  PyDataArrays::registerClassByName(
    this,
    "ProjectileTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::ProjectileTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "skills_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::SkillListTable::read,
    (void (*)())Arrays::SkillListTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "skills_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::SkillListTable::skipNames,
    (void (*)())Arrays::SkillListTable::finalizeNames);
  PyDataArrays::registerClassByName(this, "SkillList", Structs::GetMemberIDByString<Structs::SkillList>);
  PyDataArrays::registerClassByName(
    this,
    "SkillListTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::SkillListTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "skills_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::SkillTable::read,
    (void (*)())Arrays::SkillTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "skills_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::SkillTable::readNames,
    (void (*)())Arrays::SkillTable::finalizeNames);
  PyDataArrays::registerClassByName(this, "Skill", (int (*)(const char *))Structs::GetMemberIDByString<Structs::Skill>);
  PyDataArrays::registerClassByName(
    this,
    "SkillTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::SkillTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "sounds_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::CharSoundsTable::read,
    (void (*)())Arrays::CharSoundsTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "sounds_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::CharSoundsTable::skipNames,
    (void (*)())Arrays::CharSoundsTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "CharSounds",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::CharSounds>);
  PyDataArrays::registerClassByName(
    this,
    "CharSoundsTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::CharSoundsTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "sounds_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::Listeners::read,
    (void (*)())Arrays::Listeners::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "sounds_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::Listeners::readNames,
    (void (*)())Arrays::Listeners::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "Listener",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::Listener>);
  PyDataArrays::registerClassByName(
    this,
    "Listeners",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::Listeners>);
  PyDataArrays::addFuncsForFile(
    this,
    "sounds_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::SoundBankPlayback::read,
    (void (*)())Arrays::SoundBankPlayback::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "sounds_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::SoundBankPlayback::readNames,
    (void (*)())Arrays::SoundBankPlayback::finalizeNames);
  PyDataArrays::registerClassByName(this, "SoundBank", Structs::GetMemberIDByString<Structs::SoundBank>);
  PyDataArrays::registerClassByName(
    this,
    "SoundBankPlayback",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::SoundBankPlayback>);
  PyDataArrays::addFuncsForFile(
    this,
    "sounds_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::SoundGroupsRouting::read,
    (void (*)())Arrays::SoundGroupsRouting::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "sounds_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::SoundGroupsRouting::readNames,
    (void (*)())Arrays::SoundGroupsRouting::finalizeNames);
  PyDataArrays::registerClassByName(this, "SoundGroup", Structs::GetMemberIDByString<Structs::SoundGroup>);
  PyDataArrays::registerClassByName(
    this,
    "SoundGroupsRouting",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::SoundGroupsRouting>);
  PyDataArrays::addFuncsForFile(
    this,
    "sounds_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::Sounds_bak::read,
    (void (*)())Arrays::Sounds_bak::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "sounds_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::Sounds_bak::readNames,
    (void (*)())Arrays::Sounds_bak::finalizeNames);
  PyDataArrays::registerClassByName(this, "Sound", (int (*)(const char *))Structs::GetMemberIDByString<Structs::Sound>);
  PyDataArrays::registerClassByName(
    this,
    "Sounds_bak",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::Sounds_bak>);
  PyDataArrays::addFuncsForFile(
    this,
    "spawn_groups_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::SpawnGroups::read,
    (void (*)())Arrays::SpawnGroups::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "spawn_groups_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::SpawnGroups::readNames,
    (void (*)())Arrays::SpawnGroups::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "SpawnGroup",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::SpawnGroup>);
  PyDataArrays::registerClassByName(
    this,
    "SpawnGroups",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::SpawnGroups>);
  PyDataArrays::addFuncsForFile(
    this,
    "trophies_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::TrophyTable::read,
    (void (*)())Arrays::TrophyTable::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "trophies_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::TrophyTable::readNames,
    (void (*)())Arrays::TrophyTable::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "Trophy",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::Trophy>);
  PyDataArrays::registerClassByName(
    this,
    "TrophyTable",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::TrophyTable>);
  PyDataArrays::addFuncsForFile(
    this,
    "v2conditions_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::v2Conditions::read,
    (void (*)())Arrays::v2Conditions::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "v2conditions_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::v2Conditions::readNames,
    (void (*)())Arrays::v2Conditions::finalizeNames);
  PyDataArrays::registerClassByName(this, "v2CondAnd", Structs::GetMemberIDByString<Structs::v2CondAnd>);
  PyDataArrays::registerClassByName(
    this,
    "v2Conditions",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::v2Conditions>);
  PyDataArrays::addFuncsForFile(
    this,
    "v2eventmanager_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::v2Events::read,
    (void (*)())Arrays::v2Events::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "v2eventmanager_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::v2Events::readNames,
    (void (*)())Arrays::v2Events::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "v2Event",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::v2Event>);
  PyDataArrays::registerClassByName(
    this,
    "v2Events",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::v2Events>);
  PyDataArrays::addFuncsForFile(
    this,
    "v2quests_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::v2Quests::read,
    (void (*)())Arrays::v2Quests::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "v2quests_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::v2Quests::readNames,
    (void (*)())Arrays::v2Quests::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "v2Quest",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::v2Quest>);
  PyDataArrays::registerClassByName(
    this,
    "v2Quests",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::v2Quests>);
  PyDataArrays::addFuncsForFile(
    this,
    "worldmap_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::WorldMap::read,
    (void (*)())Arrays::WorldMap::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "worldmap_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::WorldMap::readNames,
    (void (*)())Arrays::WorldMap::finalizeNames);
  PyDataArrays::registerClassByName(
    this,
    "WldMapLocation",
    (int (*)(const char *))Structs::GetMemberIDByString<Structs::WldMapLocation>);
  PyDataArrays::registerClassByName(
    this,
    "WorldMap",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::WorldMap>);
  PyDataArrays::addFuncsForFile(
    this,
    "worldmap_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::WorldMapLockers::read,
    (void (*)())Arrays::WorldMapLockers::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "worldmap_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::WorldMapLockers::skipNames,
    (void (*)())Arrays::WorldMapLockers::finalizeNames);
  PyDataArrays::registerClassByName(this, "WorldMapLocker", Structs::GetMemberIDByString<Structs::WorldMapLocker>);
  PyDataArrays::registerClassByName(
    this,
    "WorldMapLockers",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::WorldMapLockers>);
  PyDataArrays::addFuncsForFile(
    this,
    "character_models_dictionary_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::ModelDict::read,
    (void (*)())Arrays::ModelDict::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "character_models_dictionary_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::ModelDict::skipNames,
    (void (*)())Arrays::ModelDict::finalizeNames);
  PyDataArrays::registerClassByName(this, "ColladaFile", Structs::GetMemberIDByString<Structs::ColladaFile>);
  PyDataArrays::registerClassByName(
    this,
    "ModelDict",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::ModelDict>);
  PyDataArrays::addFuncsForFile(
    this,
    "animations_dictionary_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::AnimDict::read,
    (void (*)())Arrays::AnimDict::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "animations_dictionary_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::AnimDict::skipNames,
    (void (*)())Arrays::AnimDict::finalizeNames);
  PyDataArrays::registerClassByName(this, "ColladaFile", Structs::GetMemberIDByString<Structs::ColladaFile>);
  PyDataArrays::registerClassByName(
    this,
    "AnimDict",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::AnimDict>);
  PyDataArrays::addFuncsForFile(
    this,
    "effects_dictionary_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::EffectDict::read,
    (void (*)())Arrays::EffectDict::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "effects_dictionary_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::EffectDict::skipNames,
    (void (*)())Arrays::EffectDict::finalizeNames);
  PyDataArrays::registerClassByName(this, "ColladaFile", Structs::GetMemberIDByString<Structs::ColladaFile>);
  PyDataArrays::registerClassByName(
    this,
    "EffectDict",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::EffectDict>);
  PyDataArrays::addFuncsForFile(
    this,
    "projectiles_dictionary_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::ProjectileDict::read,
    (void (*)())Arrays::ProjectileDict::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "projectiles_dictionary_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::ProjectileDict::skipNames,
    (void (*)())Arrays::ProjectileDict::finalizeNames);
  PyDataArrays::registerClassByName(this, "ColladaFile", Structs::GetMemberIDByString<Structs::ColladaFile>);
  PyDataArrays::registerClassByName(
    this,
    "ProjectileDict",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::ProjectileDict>);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_dictionary_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::GameObjectDict::read,
    (void (*)())Arrays::GameObjectDict::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "game_objects_dictionary_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::GameObjectDict::skipNames,
    (void (*)())Arrays::GameObjectDict::finalizeNames);
  PyDataArrays::registerClassByName(this, "ColladaFile", Structs::GetMemberIDByString<Structs::ColladaFile>);
  PyDataArrays::registerClassByName(
    this,
    "GameObjectDict",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::GameObjectDict>);
  PyDataArrays::addFuncsForFile(
    this,
    "common_text_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::StrID_Languages::read,
    (void (*)())Arrays::StrID_Languages::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "common_text_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::StrID_Languages::skipNames,
    (void (*)())Arrays::StrID_Languages::finalizeNames);
  PyDataArrays::registerClassByName(this, "LangSheetList", Structs::GetMemberIDByString<Structs::LangSheetList>);
  PyDataArrays::registerClassByName(
    this,
    "StrID_Languages",
    (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::StrID_Languages>);
  PyDataArrays::addFuncsForFile(
    this,
    "sdd_dungeon_hunter_2_iphone_pyarray.bin",
    (void (*)(IStreamBase *))Arrays::Sounds::read,
    (void (*)())Arrays::Sounds::finalize);
  PyDataArrays::addFuncsForFile(
    this,
    "sdd_dungeon_hunter_2_iphone_pyarraynames.bin",
    (void (*)(IStreamBase *))Arrays::Sounds::readNames,
    (void (*)())Arrays::Sounds::finalizeNames);
  PyDataArrays::registerClassByName(this, "SoundAutoGen", Structs::GetMemberIDByString<Structs::SoundAutoGen>);
  PyDataArrays::registerClassByName(this, "Sounds", (int (*)(const char *))Arrays::GetMemberIDByString<Arrays::Sounds>);
}


// ===== 4c3668 PyDataConstants::PyDataConstants(DataReloaderManager *) =====
void __fastcall PyDataConstants::PyDataConstants(PyDataConstants *this, DataReloaderManager *a2)
{
  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = off_969D78;
  *((_BYTE *)this + 4) = 0;
  *((_DWORD *)this + 4) = (char *)this + 4;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 7) = a2;
  *((_DWORD *)this + 3) = (char *)this + 4;
  *((_DWORD *)this + 5) = 0;
}


// ===== 4c36b8 PyDataConstants::PyDataConstants(DataReloaderManager *) =====
void __fastcall PyDataConstants::PyDataConstants(PyDataConstants *this, DataReloaderManager *a2)
{
  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = off_969D78;
  *((_BYTE *)this + 4) = 0;
  *((_DWORD *)this + 4) = (char *)this + 4;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 7) = a2;
  *((_DWORD *)this + 3) = (char *)this + 4;
  *((_DWORD *)this + 5) = 0;
}


// ===== 4c3708 PyDataConstants::Load(void) =====
int __fastcall PyDataConstants::Load(PyDataConstants *this)
{
  int v1; // r2
  int v3; // r5
  int v4; // r0
  int v5; // r1
  PyDataConstants *v6; // r0
  const char *v7; // r2
  int v9; // r0
  int v10; // r0
  int v11; // r0
  int v12; // r0
  int v13; // r0
  int v14; // r0
  int v15; // r0
  int v16; // r0
  int v17; // r0
  int v18; // r0
  int v19; // r0
  int v20; // r0
  int v21; // r0
  int v22; // r0
  int v23; // r0
  int v24; // r0
  int v25; // r0
  int v26; // r0
  int v27; // r0
  int v28; // r0
  int v29; // r0
  int v30; // r0
  int v31; // r0
  int v32; // r0
  int v33; // r0
  int v34; // r0
  int v35; // [sp+4h] [bp-8h] BYREF

  v1 = *((_DWORD *)this + 8);
  v3 = *(_DWORD *)(dword_99F73C + 52);
  switch ( v1 )
  {
    case 0:
      v34 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/ai_pycst.bin");
      v35 = v34;
      if ( v34 )
      {
        v5 = v34;
        v6 = this;
        v7 = "ai_pycst.bin";
        goto LABEL_4;
      }
      puts("[PyData Arrays] : ERROR LOADING \"pydata/ai_pycst.bin\"");
      v1 = *((_DWORD *)this + 8);
      break;
    case 1:
      v26 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/animations_pycst.bin");
      v35 = v26;
      if ( v26 )
      {
        v5 = v26;
        v6 = this;
        v7 = "animations_pycst.bin";
        goto LABEL_4;
      }
      puts("[PyData Arrays] : ERROR LOADING \"pydata/animations_pycst.bin\"");
      v1 = *((_DWORD *)this + 8);
      break;
    case 2:
      v30 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/character_classes_pycst.bin");
      v35 = v30;
      if ( v30 )
      {
        v5 = v30;
        v6 = this;
        v7 = "character_classes_pycst.bin";
        goto LABEL_4;
      }
      puts("[PyData Arrays] : ERROR LOADING \"pydata/character_classes_pycst.bin\"");
      v1 = *((_DWORD *)this + 8);
      break;
    case 3:
      v22 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/character_properties_pycst.bin");
      v35 = v22;
      if ( v22 )
      {
        v5 = v22;
        v6 = this;
        v7 = "character_properties_pycst.bin";
        goto LABEL_4;
      }
      puts("[PyData Arrays] : ERROR LOADING \"pydata/character_properties_pycst.bin\"");
      v1 = *((_DWORD *)this + 8);
      break;
    case 4:
      v32 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/design_pycst.bin");
      v35 = v32;
      if ( v32 )
      {
        v5 = v32;
        v6 = this;
        v7 = "design_pycst.bin";
        goto LABEL_4;
      }
      puts("[PyData Arrays] : ERROR LOADING \"pydata/design_pycst.bin\"");
      v1 = *((_DWORD *)this + 8);
      break;
    case 5:
      v24 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/dialogs_pycst.bin");
      v35 = v24;
      if ( v24 )
      {
        v5 = v24;
        v6 = this;
        v7 = "dialogs_pycst.bin";
        goto LABEL_4;
      }
      puts("[PyData Arrays] : ERROR LOADING \"pydata/dialogs_pycst.bin\"");
      v1 = *((_DWORD *)this + 8);
      break;
    case 6:
      v28 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/effects_pycst.bin");
      v35 = v28;
      if ( v28 )
      {
        v5 = v28;
        v6 = this;
        v7 = "effects_pycst.bin";
        goto LABEL_4;
      }
      puts("[PyData Arrays] : ERROR LOADING \"pydata/effects_pycst.bin\"");
      v1 = *((_DWORD *)this + 8);
      break;
    case 7:
      v20 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/engine_core_pycst.bin");
      v35 = v20;
      if ( v20 )
      {
        v5 = v20;
        v6 = this;
        v7 = "engine_core_pycst.bin";
        goto LABEL_4;
      }
      puts("[PyData Arrays] : ERROR LOADING \"pydata/engine_core_pycst.bin\"");
      v1 = *((_DWORD *)this + 8);
      break;
    case 8:
      v33 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/faeries_pycst.bin");
      v35 = v33;
      if ( v33 )
      {
        v5 = v33;
        v6 = this;
        v7 = "faeries_pycst.bin";
        goto LABEL_4;
      }
      puts("[PyData Arrays] : ERROR LOADING \"pydata/faeries_pycst.bin\"");
      v1 = *((_DWORD *)this + 8);
      break;
    case 9:
      v25 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/fonts_pycst.bin");
      v35 = v25;
      if ( v25 )
      {
        v5 = v25;
        v6 = this;
        v7 = "fonts_pycst.bin";
        goto LABEL_4;
      }
      puts("[PyData Arrays] : ERROR LOADING \"pydata/fonts_pycst.bin\"");
      v1 = *((_DWORD *)this + 8);
      break;
    case 10:
      v29 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/game_objects_pycst.bin");
      v35 = v29;
      if ( v29 )
      {
        v5 = v29;
        v6 = this;
        v7 = "game_objects_pycst.bin";
        goto LABEL_4;
      }
      puts("[PyData Arrays] : ERROR LOADING \"pydata/game_objects_pycst.bin\"");
      v1 = *((_DWORD *)this + 8);
      break;
    case 11:
      v21 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/item_powers_pycst.bin");
      v35 = v21;
      if ( v21 )
      {
        v5 = v21;
        v6 = this;
        v7 = "item_powers_pycst.bin";
        goto LABEL_4;
      }
      puts("[PyData Arrays] : ERROR LOADING \"pydata/item_powers_pycst.bin\"");
      v1 = *((_DWORD *)this + 8);
      break;
    case 12:
      v31 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/levels_pycst.bin");
      v35 = v31;
      if ( v31 )
      {
        v5 = v31;
        v6 = this;
        v7 = "levels_pycst.bin";
        goto LABEL_4;
      }
      puts("[PyData Arrays] : ERROR LOADING \"pydata/levels_pycst.bin\"");
      v1 = *((_DWORD *)this + 8);
      break;
    case 13:
      v23 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/loot_audiovisual_pycst.bin");
      v35 = v23;
      if ( v23 )
      {
        v5 = v23;
        v6 = this;
        v7 = "loot_audiovisual_pycst.bin";
        goto LABEL_4;
      }
      puts("[PyData Arrays] : ERROR LOADING \"pydata/loot_audiovisual_pycst.bin\"");
      v1 = *((_DWORD *)this + 8);
      break;
    case 14:
      v27 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/loot_table_pycst.bin");
      v35 = v27;
      if ( v27 )
      {
        v5 = v27;
        v6 = this;
        v7 = "loot_table_pycst.bin";
        goto LABEL_4;
      }
      puts("[PyData Arrays] : ERROR LOADING \"pydata/loot_table_pycst.bin\"");
      v1 = *((_DWORD *)this + 8);
      break;
    case 15:
      v19 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/multiplayer_pycst.bin");
      v35 = v19;
      if ( v19 )
      {
        v5 = v19;
        v6 = this;
        v7 = "multiplayer_pycst.bin";
        goto LABEL_4;
      }
      puts("[PyData Arrays] : ERROR LOADING \"pydata/multiplayer_pycst.bin\"");
      v1 = *((_DWORD *)this + 8);
      break;
    case 16:
      v18 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/projectiles_pycst.bin");
      v35 = v18;
      if ( v18 )
      {
        v5 = v18;
        v6 = this;
        v7 = "projectiles_pycst.bin";
        goto LABEL_4;
      }
      puts("[PyData Arrays] : ERROR LOADING \"pydata/projectiles_pycst.bin\"");
      v1 = *((_DWORD *)this + 8);
      break;
    case 17:
      v14 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/scripts_pycst.bin");
      v35 = v14;
      if ( v14 )
      {
        v5 = v14;
        v6 = this;
        v7 = "scripts_pycst.bin";
        goto LABEL_4;
      }
      puts("[PyData Arrays] : ERROR LOADING \"pydata/scripts_pycst.bin\"");
      v1 = *((_DWORD *)this + 8);
      break;
    case 18:
      v16 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/skills_pycst.bin");
      v35 = v16;
      if ( v16 )
      {
        v5 = v16;
        v6 = this;
        v7 = "skills_pycst.bin";
        goto LABEL_4;
      }
      puts("[PyData Arrays] : ERROR LOADING \"pydata/skills_pycst.bin\"");
      v1 = *((_DWORD *)this + 8);
      break;
    case 19:
      v12 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/sounds_pycst.bin");
      v35 = v12;
      if ( v12 )
      {
        v5 = v12;
        v6 = this;
        v7 = "sounds_pycst.bin";
        goto LABEL_4;
      }
      puts("[PyData Arrays] : ERROR LOADING \"pydata/sounds_pycst.bin\"");
      v1 = *((_DWORD *)this + 8);
      break;
    case 20:
      v17 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/specs_pycst.bin");
      v35 = v17;
      if ( v17 )
      {
        v5 = v17;
        v6 = this;
        v7 = "specs_pycst.bin";
        goto LABEL_4;
      }
      puts("[PyData Arrays] : ERROR LOADING \"pydata/specs_pycst.bin\"");
      v1 = *((_DWORD *)this + 8);
      break;
    case 21:
      v13 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/trophies_pycst.bin");
      v35 = v13;
      if ( v13 )
      {
        v5 = v13;
        v6 = this;
        v7 = "trophies_pycst.bin";
        goto LABEL_4;
      }
      puts("[PyData Arrays] : ERROR LOADING \"pydata/trophies_pycst.bin\"");
      v1 = *((_DWORD *)this + 8);
      break;
    case 22:
      v15 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/v2conditions_pycst.bin");
      v35 = v15;
      if ( v15 )
      {
        v5 = v15;
        v6 = this;
        v7 = "v2conditions_pycst.bin";
        goto LABEL_4;
      }
      puts("[PyData Arrays] : ERROR LOADING \"pydata/v2conditions_pycst.bin\"");
      v1 = *((_DWORD *)this + 8);
      break;
    case 23:
      v11 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/v2eventmanager_pycst.bin");
      v35 = v11;
      if ( v11 )
      {
        v5 = v11;
        v6 = this;
        v7 = "v2eventmanager_pycst.bin";
        goto LABEL_4;
      }
      puts("[PyData Arrays] : ERROR LOADING \"pydata/v2eventmanager_pycst.bin\"");
      v1 = *((_DWORD *)this + 8);
      break;
    case 24:
      v10 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/v2quests_pycst.bin");
      v35 = v10;
      if ( v10 )
      {
        v5 = v10;
        v6 = this;
        v7 = "v2quests_pycst.bin";
        goto LABEL_4;
      }
      puts("[PyData Arrays] : ERROR LOADING \"pydata/v2quests_pycst.bin\"");
      v1 = *((_DWORD *)this + 8);
      break;
    case 25:
      v9 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
             *(_DWORD *)(dword_99F73C + 52),
             "pydata/worldmap_pycst.bin");
      v35 = v9;
      if ( v9 )
      {
        v5 = v9;
        v6 = this;
        v7 = "worldmap_pycst.bin";
        goto LABEL_4;
      }
      puts("[PyData Arrays] : ERROR LOADING \"pydata/worldmap_pycst.bin\"");
      v1 = *((_DWORD *)this + 8);
      break;
    case 26:
      v4 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
             *(_DWORD *)(dword_99F73C + 52),
             "pydata/common_text_pycst.bin");
      v35 = v4;
      if ( v4 )
      {
        v5 = v4;
        v6 = this;
        v7 = "common_text_pycst.bin";
LABEL_4:
        (*(void (__fastcall **)(PyDataConstants *, int, const char *))(*(_DWORD *)this + 8))(v6, v5, v7);
        (*(void (__fastcall **)(int, int *))(*(_DWORD *)v3 + 120))(v3, &v35);
        v1 = *((_DWORD *)this + 8);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/common_text_pycst.bin\"");
        v1 = *((_DWORD *)this + 8);
      }
      break;
    case 27:
      return 1;
    default:
      break;
  }
  *((_DWORD *)this + 8) = v1 + 1;
  return 0;
}


// ===== 4c4138 `global constructor keyed to'.._.._sources_Data_PyData_PyDataConstants.cpp =====
int `global constructor keyed to'.._.._sources_Data_PyData_PyDataConstants.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<Application>::s_inst;
  dword_9A676C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A6768 = 1056964608;
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 4c41c0 std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>::~pair() =====
std::string *__fastcall std::pair<std::string const,std::map<std::string,int>>::~pair(std::string *this)
{
  std::string *v3; // r5

  if ( *((_DWORD *)this + 10) )
  {
    v3 = this + 1;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_erase(
      (int)(this + 1),
      *((_DWORD *)this + 7));
    *((_DWORD *)this + 9) = v3;
    *((_DWORD *)this + 10) = 0;
    *((_DWORD *)this + 8) = v3;
    *((_DWORD *)this + 7) = 0;
    std::string::~string(this);
  }
  else
  {
    std::string::~string(this);
  }
  return this;
}


// ===== 4c4218 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>,std::allocator<std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::_M_erase(
        int a1,
        int a2)
{
  int v2; // r4
  int v4; // r5

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(_DWORD *)(v2 + 8);
      std::pair<std::string const,std::map<std::string,int>>::~pair((std::string *)(v2 + 16));
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)v2, 0x40u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 4c4258 PyDataConstants::~PyDataConstants() =====
void __fastcall PyDataConstants::~PyDataConstants(PyDataConstants *this)
{
  int v1; // r1
  char *v3; // r5

  v1 = *((_DWORD *)this + 5);
  *(_DWORD *)this = off_969D78;
  if ( v1 )
  {
    v3 = (char *)this + 4;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::_M_erase(
      (int)this + 4,
      *((_DWORD *)this + 2));
    *((_DWORD *)this + 4) = v3;
    *((_DWORD *)this + 5) = 0;
    *((_DWORD *)this + 3) = v3;
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 4c42b8 PyDataConstants::~PyDataConstants() =====
void __fastcall PyDataConstants::~PyDataConstants(PyDataConstants *this)
{
  PyDataConstants::~PyDataConstants(this);
  CustomFree(this);
}


// ===== 4c42d4 PyDataConstants::~PyDataConstants() =====
void __fastcall PyDataConstants::~PyDataConstants(PyDataConstants *this)
{
  int v1; // r1
  char *v3; // r5

  v1 = *((_DWORD *)this + 5);
  *(_DWORD *)this = off_969D78;
  if ( v1 )
  {
    v3 = (char *)this + 4;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::_M_erase(
      (int)this + 4,
      *((_DWORD *)this + 2));
    *((_DWORD *)this + 4) = v3;
    *((_DWORD *)this + 5) = 0;
    *((_DWORD *)this + 3) = v3;
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 4c4334 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_copy(std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
char *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_copy(
        int a1,
        int a2,
        int a3)
{
  char *node; // r0
  char v7; // r3
  char *v8; // r8
  int v9; // r1
  int v10; // r5
  char *v11; // r6
  char *v12; // r4

  node = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_create_node(
           a1,
           a2 + 16);
  v7 = *(_BYTE *)a2;
  *((_DWORD *)node + 1) = a3;
  v8 = node;
  *node = v7;
  v9 = *(_DWORD *)(a2 + 12);
  if ( v9 )
    *((_DWORD *)node + 3) = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_copy(
                              a1,
                              v9,
                              node);
  v10 = *(_DWORD *)(a2 + 8);
  if ( v10 )
  {
    v11 = v8;
    do
    {
      v12 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_create_node(
              a1,
              v10 + 16);
      *v12 = *(_BYTE *)v10;
      *((_DWORD *)v11 + 2) = v12;
      *((_DWORD *)v12 + 1) = v11;
      v11 = v12;
      if ( *(_DWORD *)(v10 + 12) )
        *((_DWORD *)v12 + 3) = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_copy(
                                 a1,
                                 *(_DWORD *)(v10 + 12),
                                 v12);
      v10 = *(_DWORD *)(v10 + 8);
    }
    while ( v10 );
  }
  return v8;
}


// ===== 4c43dc std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_Rb_tree(std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>> const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_Rb_tree(
        int a1,
        int a2)
{
  int v4; // r1
  char *v5; // r0
  char *v6; // r3
  char *v7; // r2
  char *v8; // r3

  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 4) = 0;
  *(_BYTE *)a1 = 0;
  *(_DWORD *)(a1 + 8) = a1;
  *(_DWORD *)(a1 + 12) = a1;
  v4 = *(_DWORD *)(a2 + 4);
  if ( v4 )
  {
    v5 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_copy(
           a1,
           v4,
           a1);
    *(_DWORD *)(a1 + 4) = v5;
    v6 = v5;
    do
    {
      v7 = v6;
      v6 = *((char **)v6 + 2);
    }
    while ( v6 );
    *(_DWORD *)(a1 + 8) = v7;
    do
    {
      v8 = v5;
      v5 = *((char **)v5 + 3);
    }
    while ( v5 );
    *(_DWORD *)(a1 + 12) = v8;
  }
  *(_DWORD *)(a1 + 16) = *(_DWORD *)(a2 + 16);
  return a1;
}


// ===== 4c4454 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>,std::allocator<std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>>::_M_create_node(std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>> const&) =====
char *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::_M_create_node(
        int a1,
        int a2)
{
  char *v3; // r4
  size_t v5; // [sp+4h] [bp-8h] BYREF

  v5 = 64;
  v3 = (char *)__ZNSt12__node_alloc11_M_allocateERj_veneer(&v5);
  *((_DWORD *)v3 + 8) = v3 + 16;
  *((_DWORD *)v3 + 9) = v3 + 16;
  std::string::_M_range_initialize((std::string *)(v3 + 16), *(const char **)(a2 + 20), *(const char **)(a2 + 16));
  std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_Rb_tree(
    (int)(v3 + 40),
    a2 + 24);
  *((_DWORD *)v3 + 3) = 0;
  *((_DWORD *)v3 + 2) = 0;
  return v3;
}


// ===== 4c44b0 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>,std::allocator<std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::_M_insert(
        char **a1,
        _DWORD *a2,
        _DWORD *a3,
        int a4,
        int a5,
        int a6)
{
  char *v9; // r0
  char *node; // r7
  char *v12; // r0
  unsigned int v13; // r0
  int v14; // [sp+4h] [bp-8h]

  if ( a2 == a3 )
  {
    node = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( !a6
         && (a5 || (v14 = a4, v13 = std::less<std::string>::operator()((int)(a2 + 5), a4, (int)(a3 + 4)), a4 = v14, v13)) )
  {
    v12 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::_M_create_node(
            (int)a2,
            a4);
    a3[2] = v12;
    node = v12;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v12;
  }
  else
  {
    v9 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::_M_create_node(
           (int)a2,
           a4);
    a3[3] = v9;
    node = v9;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v9;
  }
  *((_DWORD *)node + 1) = a3;
  std::priv::_Rb_global<bool>::_Rebalance((int)node, a2 + 1);
  ++a2[4];
  *a1 = node;
  return a1;
}


// ===== 4c45a0 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>,std::allocator<std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>>::_M_lower_bound<char [256]>(char [256] const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::_M_lower_bound<char [256]>(
        int a1,
        char *a2)
{
  int v2; // r9
  _DWORD *v4; // r4
  const void *v5; // r3
  int v6; // r6
  int v7; // r5
  size_t v8; // r2
  int v9; // r3
  int v11; // [sp+0h] [bp-2Ch]
  std::string v12; // [sp+Ch] [bp-20h] BYREF

  v2 = a1;
  v4 = *(_DWORD **)(a1 + 4);
  while ( v4 )
  {
    std::string::string(&v12, a2);
    v5 = (const void *)v4[9];
    v6 = v4[8] - (_DWORD)v5;
    v7 = v12._M_finish - v12._M_start_of_storage._M_data;
    if ( v12._M_finish - v12._M_start_of_storage._M_data >= v6 )
      v8 = v4[8] - (_DWORD)v5;
    else
      v8 = v12._M_finish - v12._M_start_of_storage._M_data;
    v9 = memcmp(v5, v12._M_start_of_storage._M_data, v8);
    if ( !v9 )
    {
      if ( v6 >= v7 )
        v9 = v6 > v7;
      else
        v9 = -1;
    }
    v11 = v9;
    std::string::~string(&v12);
    if ( v11 < 0 )
      v4 = (_DWORD *)v4[3];
    else
      v2 = (int)v4;
    if ( v11 >= 0 )
      v4 = (_DWORD *)v4[2];
  }
  return v2;
}


// ===== 4c4690 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_lower_bound<char [256]>(char [256] const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_lower_bound<char [256]>(
        int a1,
        char *a2)
{
  int v2; // r9
  _DWORD *v4; // r4
  const void *v5; // r3
  int v6; // r6
  int v7; // r5
  size_t v8; // r2
  int v9; // r3
  int v11; // [sp+0h] [bp-2Ch]
  std::string v12; // [sp+Ch] [bp-20h] BYREF

  v2 = a1;
  v4 = *(_DWORD **)(a1 + 4);
  while ( v4 )
  {
    std::string::string(&v12, a2);
    v5 = (const void *)v4[9];
    v6 = v4[8] - (_DWORD)v5;
    v7 = v12._M_finish - v12._M_start_of_storage._M_data;
    if ( v12._M_finish - v12._M_start_of_storage._M_data >= v6 )
      v8 = v4[8] - (_DWORD)v5;
    else
      v8 = v12._M_finish - v12._M_start_of_storage._M_data;
    v9 = memcmp(v5, v12._M_start_of_storage._M_data, v8);
    if ( !v9 )
    {
      if ( v6 >= v7 )
        v9 = v6 > v7;
      else
        v9 = -1;
    }
    v11 = v9;
    std::string::~string(&v12);
    if ( v11 < 0 )
      v4 = (_DWORD *)v4[3];
    else
      v2 = (int)v4;
    if ( v11 >= 0 )
      v4 = (_DWORD *)v4[2];
  }
  return v2;
}


// ===== 4c4780 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>,std::allocator<std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>>::insert_unique(std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>> const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::insert_unique(
        int a1,
        _DWORD *a2,
        int a3)
{
  _DWORD *v3; // r5
  const void *v7; // r7
  int v8; // r11
  int v9; // r10
  _DWORD *v10; // r3
  int v11; // r1
  const void *v12; // r3
  int v13; // r6
  size_t v14; // r2
  int v15; // r0
  _DWORD *v16; // r2
  _DWORD *v17; // r10
  const void *v18; // r0
  signed int v19; // r11
  int v20; // r6
  size_t v21; // r2
  int v22; // r0
  char *v24; // r3
  int v25; // r3
  char *v26; // r3
  char *v27; // [sp+8h] [bp-Ch] BYREF
  char *v28; // [sp+Ch] [bp-8h] BYREF

  v3 = (_DWORD *)a2[1];
  if ( !v3 )
  {
    v3 = a2;
    goto LABEL_27;
  }
  v7 = *(const void **)(a3 + 20);
  v8 = *(_DWORD *)(a3 + 16);
  v9 = v8 - (_DWORD)v7;
  while ( 1 )
  {
    v12 = (const void *)v3[9];
    v13 = v3[8] - (_DWORD)v12;
    if ( v13 >= v9 )
      v14 = v8 - (_DWORD)v7;
    else
      v14 = v3[8] - (_DWORD)v12;
    v15 = memcmp(v7, v12, v14);
    v16 = v3;
    if ( !v15 )
    {
      if ( v9 < v13 )
        goto LABEL_3;
      v15 = v9 > v13;
    }
    if ( v15 >= 0 )
      break;
LABEL_3:
    v10 = (_DWORD *)v3[2];
    v11 = 1;
    if ( !v10 )
      goto LABEL_13;
LABEL_4:
    v3 = v10;
  }
  v10 = (_DWORD *)v3[3];
  v11 = 0;
  if ( v10 )
    goto LABEL_4;
LABEL_13:
  if ( !v11 )
  {
    v17 = v3;
    goto LABEL_16;
  }
LABEL_27:
  if ( v3 == (_DWORD *)a2[2] )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::_M_insert(
      &v28,
      a2,
      v3,
      a3,
      (int)v3,
      0);
    v26 = v28;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v26;
  }
  else
  {
    if ( !*(_BYTE *)v3 && v3 == *(_DWORD **)(v3[1] + 4) )
    {
      v16 = (_DWORD *)v3[3];
      v7 = *(const void **)(a3 + 20);
      v8 = *(_DWORD *)(a3 + 16);
      v17 = v16;
    }
    else
    {
      v16 = (_DWORD *)v3[2];
      if ( v16 )
      {
        while ( v16[3] )
          v16 = (_DWORD *)v16[3];
LABEL_34:
        v17 = v16;
        v7 = *(const void **)(a3 + 20);
        v8 = *(_DWORD *)(a3 + 16);
      }
      else
      {
        v25 = v3[1];
        if ( v3 != *(_DWORD **)(v25 + 8) )
        {
          v16 = (_DWORD *)v3[1];
          goto LABEL_34;
        }
        while ( 1 )
        {
          v16 = *(_DWORD **)(v25 + 4);
          if ( v16[2] != v25 )
            break;
          v25 = *(_DWORD *)(v25 + 4);
        }
        v7 = *(const void **)(a3 + 20);
        v8 = *(_DWORD *)(a3 + 16);
        v17 = *(_DWORD **)(v25 + 4);
      }
    }
LABEL_16:
    v18 = (const void *)v16[9];
    v19 = v8 - (_DWORD)v7;
    v20 = v16[8] - (_DWORD)v18;
    if ( v19 >= v20 )
      v21 = v16[8] - (_DWORD)v18;
    else
      v21 = v19;
    v22 = memcmp(v18, v7, v21);
    if ( v22 )
    {
LABEL_22:
      if ( v22 < 0 )
        goto LABEL_35;
      *(_DWORD *)a1 = v17;
      *(_BYTE *)(a1 + 4) = 0;
    }
    else
    {
      if ( v20 >= v19 )
      {
        v22 = v20 > v19;
        goto LABEL_22;
      }
LABEL_35:
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::_M_insert(
        &v27,
        a2,
        v3,
        a3,
        0,
        0);
      v24 = v27;
      *(_BYTE *)(a1 + 4) = 1;
      *(_DWORD *)a1 = v24;
    }
  }
  return a1;
}


// ===== 4c4998 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>,std::allocator<std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>>::_M_find<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::_M_find<char const*>(
        _DWORD *a1,
        char **a2)
{
  _DWORD *v2; // r4
  _DWORD *v4; // r10
  const void *v5; // r3
  int v6; // r6
  int v7; // r5
  size_t v8; // r2
  int v9; // r3
  const void *v10; // r1
  int v11; // r5
  int v12; // r6
  size_t v13; // r2
  int v14; // r7
  int v16; // [sp+4h] [bp-50h]
  std::string v18; // [sp+1Ch] [bp-38h] BYREF
  std::string v19; // [sp+34h] [bp-20h] BYREF

  v2 = (_DWORD *)a1[1];
  if ( !v2 )
    return a1;
  v4 = a1;
  do
  {
    std::string::string(&v19, *a2);
    v5 = (const void *)v2[9];
    v6 = v2[8] - (_DWORD)v5;
    v7 = v19._M_finish - v19._M_start_of_storage._M_data;
    if ( v19._M_finish - v19._M_start_of_storage._M_data >= v6 )
      v8 = v2[8] - (_DWORD)v5;
    else
      v8 = v19._M_finish - v19._M_start_of_storage._M_data;
    v9 = memcmp(v5, v19._M_start_of_storage._M_data, v8);
    if ( !v9 )
    {
      if ( v6 >= v7 )
        v9 = v6 > v7;
      else
        v9 = -1;
    }
    v16 = v9;
    std::string::~string(&v19);
    if ( v16 < 0 )
      v2 = (_DWORD *)v2[3];
    else
      v4 = v2;
    if ( v16 >= 0 )
      v2 = (_DWORD *)v2[2];
  }
  while ( v2 );
  if ( v4 != a1 )
  {
    std::string::string(&v18, *a2);
    v10 = (const void *)v4[9];
    v11 = v4[8] - (_DWORD)v10;
    v12 = v18._M_finish - v18._M_start_of_storage._M_data;
    v13 = v11 >= v18._M_finish - v18._M_start_of_storage._M_data
        ? v18._M_finish - v18._M_start_of_storage._M_data
        : v4[8] - (_DWORD)v10;
    v14 = memcmp(v18._M_start_of_storage._M_data, v10, v13);
    if ( !v14 )
    {
      if ( v12 >= v11 )
        v14 = v12 > v11;
      else
        v14 = -1;
    }
    std::string::~string(&v18);
    if ( v14 < 0 )
      return a1;
  }
  return v4;
}


// ===== 4c4b08 PyDataConstants::getConstantName(char const*,int) =====
char *__fastcall PyDataConstants::getConstantName(PyDataConstants *this, const char *a2, int a3)
{
  char *v3; // r4
  int v5; // r0
  _DWORD *v6; // r3
  _DWORD *v7; // r0
  _DWORD *v8; // r2
  int v10; // r1
  const char *v11; // [sp+4h] [bp-8h] BYREF

  v11 = a2;
  v3 = (char *)this + 4;
  v5 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::_M_find<char const*>(
         (char *)this + 4,
         &v11);
  if ( (char *)v5 == v3 )
    return "";
  v6 = *(_DWORD **)(v5 + 48);
  v7 = (_DWORD *)(v5 + 40);
  if ( v6 == v7 )
    return "";
  while ( v6[10] != a3 )
  {
    v8 = (_DWORD *)v6[3];
    if ( v8 )
    {
      while ( v8[2] )
        v8 = (_DWORD *)v8[2];
      v6 = v8;
    }
    else
    {
      v10 = v6[1];
      if ( *(_DWORD **)(v10 + 12) == v6 )
      {
        do
        {
          v6 = (_DWORD *)v10;
          v10 = *(_DWORD *)(v10 + 4);
        }
        while ( *(_DWORD **)(v10 + 12) == v6 );
        v8 = (_DWORD *)v6[3];
      }
      if ( v8 != (_DWORD *)v10 )
        v6 = (_DWORD *)v10;
    }
    if ( v7 == v6 )
      return "";
  }
  return (char *)v6[9];
}


// ===== 4c4bdc PyDataConstants::getConstant(char const*,char const*) =====
int __fastcall PyDataConstants::getConstant(PyDataConstants *this, char *a2, char *a3)
{
  char *v3; // r4
  char *v4; // r0
  _DWORD *v5; // r4
  _DWORD *v6; // r0
  char *v8; // [sp+0h] [bp-8h] BYREF
  char *v9; // [sp+4h] [bp-4h] BYREF

  v3 = (char *)this + 4;
  v9 = a2;
  v8 = a3;
  v4 = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::_M_find<char const*>(
                 (_DWORD *)this + 1,
                 &v9);
  if ( v4 == v3 )
    return 0;
  v5 = v4 + 40;
  v6 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_find<char const*>(
         (_DWORD *)v4 + 10,
         &v8);
  if ( v6 == v5 )
    return 0;
  else
    return v6[10];
}


// ===== 4c4c30 std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>::operator[]<char [256]>(char [256] const&) =====
char *__fastcall std::map<std::string,int>::operator[]<char [256]>(char *a1, char *a2)
{
  int v4; // r5
  const void *v5; // r1
  int v6; // r11
  int v7; // r9
  size_t v8; // r2
  int v9; // r0
  char *v10; // r3
  char *v12; // r5
  char *v13; // [sp+8h] [bp-64h] BYREF
  char *v14; // [sp+Ch] [bp-60h] BYREF
  std::string v15; // [sp+18h] [bp-54h] BYREF
  int v16; // [sp+30h] [bp-3Ch]
  std::string v17; // [sp+34h] [bp-38h] BYREF
  std::string v18; // [sp+4Ch] [bp-20h] BYREF

  v4 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_lower_bound<char [256]>(
         (int)a1,
         a2);
  if ( (char *)v4 == a1 )
    goto LABEL_11;
  std::string::string(&v18, a2);
  v5 = *(const void **)(v4 + 36);
  v6 = *(_DWORD *)(v4 + 32) - (_DWORD)v5;
  v7 = v18._M_finish - v18._M_start_of_storage._M_data;
  if ( v6 >= v18._M_finish - v18._M_start_of_storage._M_data )
    v8 = v18._M_finish - v18._M_start_of_storage._M_data;
  else
    v8 = *(_DWORD *)(v4 + 32) - (_DWORD)v5;
  v9 = memcmp(v18._M_start_of_storage._M_data, v5, v8);
  if ( v9 )
  {
    if ( v9 >= 0 )
      goto LABEL_7;
    goto LABEL_10;
  }
  if ( v7 < v6 )
  {
LABEL_10:
    std::string::~string(&v18);
LABEL_11:
    std::string::string(&v17, a2);
    v15._M_finish = (char *)&v15;
    v15._M_start_of_storage._M_data = (char *)&v15;
    std::string::_M_range_initialize(&v15, v17._M_start_of_storage._M_data, v17._M_finish);
    v16 = 0;
    v13 = (char *)v4;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::insert_unique(
      &v14,
      a1,
      &v13,
      (int)&v15);
    v12 = v14;
    std::string::~string(&v15);
    std::string::~string(&v17);
    v10 = v12;
    return v10 + 40;
  }
LABEL_7:
  std::string::~string(&v18);
  v10 = (char *)v4;
  return v10 + 40;
}


// ===== 4c4d70 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>,std::allocator<std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>>,std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>> const&) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::insert_unique(
        char **a1,
        char *a2,
        char **a3,
        int a4)
{
  char *v4; // r5
  _DWORD *v8; // r4
  const void *v9; // r3
  const void *v10; // r9
  signed int v11; // r11
  signed int v12; // r2
  int v13; // r0
  const void *v14; // r3
  unsigned int v15; // r12
  char *v16; // r4
  int v17; // r0
  const void *v18; // r2
  const void *v19; // r0
  signed int v20; // r10
  size_t v21; // r2
  int v22; // r0
  int v23; // r12
  const void *v25; // r3
  const void *v26; // r1
  int v27; // r4
  int v28; // r10
  size_t v29; // r2
  int v30; // r0
  int v31; // r12
  int v32; // r3
  int v33; // r4
  const void *v34; // r1
  int v35; // r9
  int v36; // r3
  signed int v37; // r9
  signed int v38; // r10
  size_t v39; // r2
  int v40; // r0
  int v41; // r2
  void *v42; // [sp+Ch] [bp-38h]
  unsigned int v43; // [sp+10h] [bp-34h]
  signed int v45; // [sp+18h] [bp-2Ch]
  size_t v46; // [sp+1Ch] [bp-28h]
  char *v47; // [sp+20h] [bp-24h] BYREF
  char *v48; // [sp+28h] [bp-1Ch] BYREF
  char *v49; // [sp+30h] [bp-14h] BYREF
  char *v50; // [sp+38h] [bp-Ch] BYREF

  v4 = *a3;
  if ( *a3 == *((char **)a2 + 2) )
  {
    if ( !*((_DWORD *)a2 + 4) )
    {
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::insert_unique(
        (int)&v50,
        a2,
        a4);
      *a1 = v50;
      return a1;
    }
    v25 = *(const void **)(a4 + 20);
    v26 = *((const void **)v4 + 9);
    v27 = *(_DWORD *)(a4 + 16) - (_DWORD)v25;
    v28 = *((_DWORD *)v4 + 8) - (_DWORD)v26;
    if ( v28 >= v27 )
      v29 = *(_DWORD *)(a4 + 16) - (_DWORD)v25;
    else
      v29 = *((_DWORD *)v4 + 8) - (_DWORD)v26;
    v30 = memcmp(v25, v26, v29);
    if ( !v30 )
    {
      if ( v27 < v28 )
        goto LABEL_37;
      v30 = v27 > v28;
    }
    if ( v30 >= 0 )
    {
      if ( !std::less<std::string>::operator()((int)(a2 + 20), (int)(v4 + 16), a4) )
      {
        *a1 = *a3;
        return a1;
      }
      v31 = (int)*a3;
      v16 = *((char **)*a3 + 3);
      if ( v16 )
      {
        while ( *((_DWORD *)v16 + 2) )
          v16 = *((char **)v16 + 2);
      }
      else
      {
        v32 = *(_DWORD *)(v31 + 4);
        if ( v31 == *(_DWORD *)(v32 + 12) )
        {
          do
          {
            v16 = (char *)v32;
            v32 = *(_DWORD *)(v32 + 4);
          }
          while ( *(char **)(v32 + 12) == v16 );
        }
        else
        {
          v16 = *a3;
        }
        if ( v32 != *((_DWORD *)v16 + 3) )
          v16 = (char *)v32;
      }
      if ( a2 == v16 )
        goto LABEL_93;
      if ( !std::less<std::string>::operator()((int)(a2 + 20), a4, (int)(v16 + 16)) )
      {
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::insert_unique(
          (int)&v49,
          a2,
          a4);
        *a1 = v49;
        return a1;
      }
      v31 = (int)*a3;
      if ( !*((_DWORD *)*a3 + 3) )
      {
LABEL_93:
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::_M_insert(
          a1,
          a2,
          *a3,
          a4,
          0,
          v31);
        return a1;
      }
      goto LABEL_61;
    }
    goto LABEL_37;
  }
  if ( v4 == a2 )
  {
    v33 = *((_DWORD *)v4 + 3);
    v34 = *(const void **)(a4 + 20);
    v35 = *(_DWORD *)(a4 + 16);
    v36 = *(_DWORD *)(v33 + 36);
    v37 = v35 - (_DWORD)v34;
    v38 = *(_DWORD *)(v33 + 32) - v36;
    if ( v37 >= v38 )
      v39 = *(_DWORD *)(v33 + 32) - v36;
    else
      v39 = v37;
    v40 = memcmp(*(const void **)(v33 + 36), v34, v39);
    if ( !v40 )
    {
      if ( v38 < v37 )
      {
LABEL_76:
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::_M_insert(
          a1,
          a2,
          (_DWORD *)v33,
          a4,
          0,
          (int)v4);
        return a1;
      }
      v40 = v38 > v37;
    }
    if ( v40 >= 0 )
    {
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::insert_unique(
        (int)&v48,
        a2,
        a4);
      *a1 = v48;
      return a1;
    }
    goto LABEL_76;
  }
  if ( !*v4 )
  {
    if ( v4 == *(char **)(*((_DWORD *)v4 + 1) + 4) )
    {
      v8 = *((_DWORD **)v4 + 3);
      goto LABEL_8;
    }
    v8 = *((_DWORD **)v4 + 2);
    if ( !v8 )
      goto LABEL_26;
LABEL_7:
    while ( v8[3] )
      v8 = (_DWORD *)v8[3];
    goto LABEL_8;
  }
  v8 = *((_DWORD **)v4 + 2);
  if ( v8 )
    goto LABEL_7;
LABEL_26:
  v8 = *((_DWORD **)v4 + 1);
  if ( v4 == (char *)v8[2] )
  {
    while ( *(_DWORD **)(v8[1] + 8) == v8 )
      v8 = (_DWORD *)v8[1];
    v8 = (_DWORD *)v8[1];
  }
LABEL_8:
  v9 = *((const void **)v4 + 9);
  v10 = *(const void **)(a4 + 20);
  v11 = *(_DWORD *)(a4 + 16) - (_DWORD)v10;
  v12 = *((_DWORD *)v4 + 8) - (_DWORD)v9;
  v45 = v12;
  if ( v12 >= v11 )
    v12 = *(_DWORD *)(a4 + 16) - (_DWORD)v10;
  v42 = *((void **)v4 + 9);
  v46 = v12;
  v13 = memcmp(*(const void **)(a4 + 20), v9, v12);
  v14 = v42;
  if ( !v13 )
  {
    if ( v11 >= v45 )
      v13 = v11 > v45;
    else
      v13 = -1;
  }
  v15 = (unsigned int)v13 >> 31;
  if ( v13 < 0 )
  {
    v18 = (const void *)v8[9];
    v19 = v18;
    v20 = v8[8] - (_DWORD)v18;
    if ( v11 >= v20 )
      v21 = v8[8] - (_DWORD)v18;
    else
      v21 = v11;
    v43 = v15;
    v22 = memcmp(v19, v10, v21);
    v14 = v42;
    v15 = v43;
    if ( !v22 )
    {
      if ( v11 <= v20 )
        goto LABEL_15;
      v23 = v8[3];
      if ( v23 )
        goto LABEL_37;
LABEL_65:
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::_M_insert(
        a1,
        a2,
        v8,
        a4,
        v23,
        (int)v8);
      return a1;
    }
    if ( v22 >= 0 )
      goto LABEL_15;
    v23 = v8[3];
    if ( !v23 )
      goto LABEL_65;
LABEL_37:
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::_M_insert(
      a1,
      a2,
      v4,
      a4,
      (int)v4,
      0);
    return a1;
  }
LABEL_15:
  v16 = *((char **)v4 + 3);
  if ( v16 )
  {
    while ( *((_DWORD *)v16 + 2) )
      v16 = *((char **)v16 + 2);
  }
  else
  {
    v41 = *((_DWORD *)v4 + 1);
    if ( v4 == *(char **)(v41 + 12) )
    {
      while ( *(_DWORD *)(*(_DWORD *)(v41 + 4) + 12) == v41 )
        v41 = *(_DWORD *)(v41 + 4);
      v16 = (char *)v41;
      v41 = *(_DWORD *)(v41 + 4);
    }
    else
    {
      v16 = v4;
    }
    if ( v41 != *((_DWORD *)v16 + 3) )
      v16 = (char *)v41;
  }
  if ( v15 )
    goto LABEL_41;
  v17 = memcmp(v14, v10, v46);
  if ( v17 )
  {
    if ( v17 >= 0 )
      goto LABEL_22;
    goto LABEL_39;
  }
  if ( v11 > v45 )
  {
LABEL_39:
    if ( a2 != v16 )
    {
      if ( !std::less<std::string>::operator()((int)(a2 + 20), a4, (int)(v16 + 16)) )
      {
LABEL_41:
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::insert_unique(
          (int)&v47,
          a2,
          a4);
        *a1 = v47;
        return a1;
      }
      v4 = *a3;
    }
    if ( !*((_DWORD *)v4 + 3) )
    {
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        0,
        (int)v4);
      return a1;
    }
LABEL_61:
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      (int)v16,
      0);
    return a1;
  }
LABEL_22:
  *a1 = v4;
  return a1;
}


// ===== 4c5274 std::map<std::string,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>,std::less<std::string>,std::allocator<std::pair<std::string const,std::map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>>::operator[]<char [256]>(char [256] const&) =====
char *__fastcall std::map<std::string,std::map<std::string,int>>::operator[]<char [256]>(char *a1, char *a2)
{
  int v4; // r5
  const void *v5; // r1
  int v6; // r8
  int v7; // r10
  size_t v8; // r2
  int v9; // r0
  char *v10; // r3
  char *v12; // r5
  char v13[4]; // [sp+Ch] [bp-90h] BYREF
  int v14; // [sp+10h] [bp-8Ch]
  char *v15; // [sp+14h] [bp-88h]
  char *v16; // [sp+18h] [bp-84h]
  int v17; // [sp+1Ch] [bp-80h]
  char *v18; // [sp+24h] [bp-78h] BYREF
  char *v19; // [sp+28h] [bp-74h] BYREF
  std::string v20; // [sp+34h] [bp-68h] BYREF
  int v21; // [sp+4Ch] [bp-50h] BYREF
  std::string v22; // [sp+64h] [bp-38h] BYREF
  std::string v23; // [sp+7Ch] [bp-20h] BYREF

  v4 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::_M_lower_bound<char [256]>(
         (int)a1,
         a2);
  if ( (char *)v4 != a1 )
  {
    std::string::string(&v23, a2);
    v5 = *(const void **)(v4 + 36);
    v6 = *(_DWORD *)(v4 + 32) - (_DWORD)v5;
    v7 = v23._M_finish - v23._M_start_of_storage._M_data;
    if ( v6 >= v23._M_finish - v23._M_start_of_storage._M_data )
      v8 = v23._M_finish - v23._M_start_of_storage._M_data;
    else
      v8 = *(_DWORD *)(v4 + 32) - (_DWORD)v5;
    v9 = memcmp(v23._M_start_of_storage._M_data, v5, v8);
    if ( v9 )
    {
      if ( v9 >= 0 )
        goto LABEL_7;
    }
    else if ( v7 >= v6 )
    {
LABEL_7:
      std::string::~string(&v23);
      v10 = (char *)v4;
      return v10 + 40;
    }
    std::string::~string(&v23);
  }
  std::string::string(&v22, a2);
  v13[0] = 0;
  v14 = 0;
  v15 = v13;
  v16 = v13;
  v17 = 0;
  v20._M_finish = (char *)&v20;
  v20._M_start_of_storage._M_data = (char *)&v20;
  std::string::_M_range_initialize(&v20, v22._M_start_of_storage._M_data, v22._M_finish);
  std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_Rb_tree(
    (int)&v21,
    (int)v13);
  v18 = (char *)v4;
  std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::map<std::string,int>>,std::priv::_Select1st<std::pair<std::string const,std::map<std::string,int>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::map<std::string,int>>>,std::allocator<std::pair<std::string const,std::map<std::string,int>>>>::insert_unique(
    &v19,
    a1,
    &v18,
    (int)&v20);
  v12 = v19;
  std::pair<std::string const,std::map<std::string,int>>::~pair(&v20);
  if ( v17 )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_erase(
      (int)v13,
      v14);
    v16 = v13;
    v17 = 0;
    v15 = v13;
    v14 = 0;
  }
  std::string::~string(&v22);
  v10 = v12;
  return v10 + 40;
}


// ===== 4c540c PyDataConstants::reloadData(IStreamBase *,char const*) =====
char *__fastcall PyDataConstants::reloadData(PyDataConstants *this, IStreamBase *a2, const char *a3)
{
  char *result; // r0
  char *v6; // r9
  unsigned int v7; // r4
  char *v8; // r0
  unsigned __int64 v10; // [sp+0h] [bp-24Ch]
  int v11; // [sp+8h] [bp-244h]
  int v12; // [sp+1Ch] [bp-230h] BYREF
  char *v13; // [sp+20h] [bp-22Ch]
  unsigned int v14; // [sp+24h] [bp-228h] BYREF
  char v15[256]; // [sp+2Ch] [bp-220h] BYREF
  char v16[256]; // [sp+12Ch] [bp-120h] BYREF
  std::string v17; // [sp+22Ch] [bp-20h] BYREF

  HIDWORD(v10) = &__GLOBAL_OFFSET_TABLE_;
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v17, "isTracingPyDataConstants");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v17);
  std::string::~string(&v17);
  result = (char *)StreamReader::readAs<unsigned int>((int)a2, (int)&v14);
  if ( v14 )
  {
    v6 = (char *)this + 4;
    v11 = 0;
    LODWORD(v10) = (char *)&v12 + 2;
    do
    {
      result = (char *)StreamReader::readString(a2, (IStreamBase *)v16, (unsigned int)&elf_hash_bucket[9], v10);
      if ( !result )
        break;
      result = (char *)StreamReader::readAs<unsigned int>((int)a2);
      v13 = result;
      if ( result )
      {
        v7 = 0;
        do
        {
          result = (char *)StreamReader::readString(a2, (IStreamBase *)v15, (unsigned int)&elf_hash_bucket[9], v10);
          if ( !result )
            return result;
          StreamReader::readAs<int>((int)a2, (int)&v12);
          v8 = std::map<std::string,std::map<std::string,int>>::operator[]<char [256]>(v6, v16);
          result = std::map<std::string,int>::operator[]<char [256]>(v8, v15);
          ++v7;
          *(_DWORD *)result = v12;
        }
        while ( (unsigned int)v13 > v7 );
      }
    }
    while ( v14 > ++v11 );
  }
  return result;
}


// ===== 4c56a0 Structs::AIFaction::~AIFaction() =====
void __fastcall Structs::AIFaction::~AIFaction(Structs::AIFaction *this)
{
  ;
}


// ===== 4c56a4 Structs::AIFaction::~AIFaction() =====
void __fastcall Structs::AIFaction::~AIFaction(Structs::AIFaction *this)
{
  ;
}


// ===== 4c56a8 Structs::AIFaction::finalize(void) =====
void __fastcall Structs::AIFaction::finalize(Structs::AIFaction *this)
{
  ;
}


// ===== 4c56ac Structs::ClassFunc::~ClassFunc() =====
void __fastcall Structs::ClassFunc::~ClassFunc(Structs::ClassFunc *this)
{
  ;
}


// ===== 4c56b0 Structs::ClassFunc::~ClassFunc() =====
void __fastcall Structs::ClassFunc::~ClassFunc(Structs::ClassFunc *this)
{
  ;
}


// ===== 4c56b4 Structs::ClassFunc::finalize(void) =====
void __fastcall Structs::ClassFunc::finalize(Structs::ClassFunc *this)
{
  ;
}


// ===== 4c56b8 Structs::ClassFuncLinear::~ClassFuncLinear() =====
void __fastcall Structs::ClassFuncLinear::~ClassFuncLinear(Structs::ClassFuncLinear *this)
{
  ;
}


// ===== 4c56bc Structs::ClassFuncLinear::~ClassFuncLinear() =====
void __fastcall Structs::ClassFuncLinear::~ClassFuncLinear(Structs::ClassFuncLinear *this)
{
  ;
}


// ===== 4c56c0 Structs::ClassFuncLinear::finalize(void) =====
void __fastcall Structs::ClassFuncLinear::finalize(Structs::ClassFuncLinear *this)
{
  ;
}


// ===== 4c56c4 Structs::ClassFuncSetValue::~ClassFuncSetValue() =====
void __fastcall Structs::ClassFuncSetValue::~ClassFuncSetValue(Structs::ClassFuncSetValue *this)
{
  ;
}


// ===== 4c56c8 Structs::ClassFuncSetValue::~ClassFuncSetValue() =====
void __fastcall Structs::ClassFuncSetValue::~ClassFuncSetValue(Structs::ClassFuncSetValue *this)
{
  ;
}


// ===== 4c56cc Structs::ClassFuncSetValue::finalize(void) =====
void __fastcall Structs::ClassFuncSetValue::finalize(Structs::ClassFuncSetValue *this)
{
  ;
}


// ===== 4c56d0 Structs::ClassFuncSetOID::~ClassFuncSetOID() =====
void __fastcall Structs::ClassFuncSetOID::~ClassFuncSetOID(Structs::ClassFuncSetOID *this)
{
  ;
}


// ===== 4c56d4 Structs::ClassFuncSetOID::~ClassFuncSetOID() =====
void __fastcall Structs::ClassFuncSetOID::~ClassFuncSetOID(Structs::ClassFuncSetOID *this)
{
  ;
}


// ===== 4c56d8 Structs::ClassFuncSetOID::finalize(void) =====
void __fastcall Structs::ClassFuncSetOID::finalize(Structs::ClassFuncSetOID *this)
{
  ;
}


// ===== 4c56dc Structs::ClassFuncAddValue::~ClassFuncAddValue() =====
void __fastcall Structs::ClassFuncAddValue::~ClassFuncAddValue(Structs::ClassFuncAddValue *this)
{
  ;
}


// ===== 4c56e0 Structs::ClassFuncAddValue::~ClassFuncAddValue() =====
void __fastcall Structs::ClassFuncAddValue::~ClassFuncAddValue(Structs::ClassFuncAddValue *this)
{
  ;
}


// ===== 4c56e4 Structs::ClassFuncAddValue::finalize(void) =====
void __fastcall Structs::ClassFuncAddValue::finalize(Structs::ClassFuncAddValue *this)
{
  ;
}


// ===== 4c56e8 Structs::ClassFuncGroup::~ClassFuncGroup() =====
void __fastcall Structs::ClassFuncGroup::~ClassFuncGroup(Structs::ClassFuncGroup *this)
{
  ;
}


// ===== 4c56ec Structs::ClassFuncGroup::~ClassFuncGroup() =====
void __fastcall Structs::ClassFuncGroup::~ClassFuncGroup(Structs::ClassFuncGroup *this)
{
  ;
}


// ===== 4c56f0 Structs::ClassFuncGroup::finalize(void) =====
void __fastcall Structs::ClassFuncGroup::finalize(Structs::ClassFuncGroup *this)
{
  ;
}


// ===== 4c56f4 Structs::ClassFuncMinMax::~ClassFuncMinMax() =====
void __fastcall Structs::ClassFuncMinMax::~ClassFuncMinMax(Structs::ClassFuncMinMax *this)
{
  ;
}


// ===== 4c56f8 Structs::ClassFuncMinMax::~ClassFuncMinMax() =====
void __fastcall Structs::ClassFuncMinMax::~ClassFuncMinMax(Structs::ClassFuncMinMax *this)
{
  ;
}


// ===== 4c56fc Structs::ClassFuncMinMax::finalize(void) =====
void __fastcall Structs::ClassFuncMinMax::finalize(Structs::ClassFuncMinMax *this)
{
  ;
}


// ===== 4c5700 Structs::ClassFuncLinearLevel::~ClassFuncLinearLevel() =====
void __fastcall Structs::ClassFuncLinearLevel::~ClassFuncLinearLevel(Structs::ClassFuncLinearLevel *this)
{
  ;
}


// ===== 4c5704 Structs::ClassFuncLinearLevel::~ClassFuncLinearLevel() =====
void __fastcall Structs::ClassFuncLinearLevel::~ClassFuncLinearLevel(Structs::ClassFuncLinearLevel *this)
{
  ;
}


// ===== 4c5708 Structs::ClassFuncLinearLevel::finalize(void) =====
void __fastcall Structs::ClassFuncLinearLevel::finalize(Structs::ClassFuncLinearLevel *this)
{
  ;
}


// ===== 4c570c Structs::ClassFuncAddProp::~ClassFuncAddProp() =====
void __fastcall Structs::ClassFuncAddProp::~ClassFuncAddProp(Structs::ClassFuncAddProp *this)
{
  ;
}


// ===== 4c5710 Structs::ClassFuncAddProp::~ClassFuncAddProp() =====
void __fastcall Structs::ClassFuncAddProp::~ClassFuncAddProp(Structs::ClassFuncAddProp *this)
{
  ;
}


// ===== 4c5714 Structs::ClassFuncAddProp::finalize(void) =====
void __fastcall Structs::ClassFuncAddProp::finalize(Structs::ClassFuncAddProp *this)
{
  ;
}


// ===== 4c5718 Structs::ClassFuncScaleWithPercentage::~ClassFuncScaleWithPercentage() =====
void __fastcall Structs::ClassFuncScaleWithPercentage::~ClassFuncScaleWithPercentage(
        Structs::ClassFuncScaleWithPercentage *this)
{
  ;
}


// ===== 4c571c Structs::ClassFuncScaleWithPercentage::~ClassFuncScaleWithPercentage() =====
void __fastcall Structs::ClassFuncScaleWithPercentage::~ClassFuncScaleWithPercentage(
        Structs::ClassFuncScaleWithPercentage *this)
{
  ;
}


// ===== 4c5720 Structs::ClassFuncScaleWithPercentage::finalize(void) =====
void __fastcall Structs::ClassFuncScaleWithPercentage::finalize(Structs::ClassFuncScaleWithPercentage *this)
{
  ;
}


// ===== 4c5724 Structs::ClassFuncScaleWithPercentageForBuff::~ClassFuncScaleWithPercentageForBuff() =====
void __fastcall Structs::ClassFuncScaleWithPercentageForBuff::~ClassFuncScaleWithPercentageForBuff(
        Structs::ClassFuncScaleWithPercentageForBuff *this)
{
  ;
}


// ===== 4c5728 Structs::ClassFuncScaleWithPercentageForBuff::~ClassFuncScaleWithPercentageForBuff() =====
void __fastcall Structs::ClassFuncScaleWithPercentageForBuff::~ClassFuncScaleWithPercentageForBuff(
        Structs::ClassFuncScaleWithPercentageForBuff *this)
{
  ;
}


// ===== 4c572c Structs::ClassFuncScaleWithPercentageForBuff::finalize(void) =====
void __fastcall Structs::ClassFuncScaleWithPercentageForBuff::finalize(
        Structs::ClassFuncScaleWithPercentageForBuff *this)
{
  ;
}


// ===== 4c5730 Structs::ClassFuncApplyGroupOnlyIf::~ClassFuncApplyGroupOnlyIf() =====
void __fastcall Structs::ClassFuncApplyGroupOnlyIf::~ClassFuncApplyGroupOnlyIf(
        Structs::ClassFuncApplyGroupOnlyIf *this)
{
  ;
}


// ===== 4c5734 Structs::ClassFuncApplyGroupOnlyIf::~ClassFuncApplyGroupOnlyIf() =====
void __fastcall Structs::ClassFuncApplyGroupOnlyIf::~ClassFuncApplyGroupOnlyIf(
        Structs::ClassFuncApplyGroupOnlyIf *this)
{
  ;
}


// ===== 4c5738 Structs::ClassFuncApplyGroupOnlyIf::finalize(void) =====
void __fastcall Structs::ClassFuncApplyGroupOnlyIf::finalize(Structs::ClassFuncApplyGroupOnlyIf *this)
{
  ;
}


// ===== 4c573c Structs::CharacterProperties::~CharacterProperties() =====
void __fastcall Structs::CharacterProperties::~CharacterProperties(Structs::CharacterProperties *this)
{
  ;
}


// ===== 4c5740 Structs::CharacterProperties::~CharacterProperties() =====
void __fastcall Structs::CharacterProperties::~CharacterProperties(Structs::CharacterProperties *this)
{
  ;
}


// ===== 4c5744 Structs::CharacterProperties::finalize(void) =====
void __fastcall Structs::CharacterProperties::finalize(Structs::CharacterProperties *this)
{
  ;
}


// ===== 4c5748 Structs::PlayerProperties::~PlayerProperties() =====
void __fastcall Structs::PlayerProperties::~PlayerProperties(Structs::PlayerProperties *this)
{
  *(_DWORD *)this = off_96BBA8;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c577c Structs::PlayerProperties::~PlayerProperties() =====
void __fastcall Structs::PlayerProperties::~PlayerProperties(Structs::PlayerProperties *this)
{
  *(_DWORD *)this = off_96BBA8;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c57b0 Structs::PlayerProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::PlayerProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c57b4 Structs::SkeletonProperties::~SkeletonProperties() =====
void __fastcall Structs::SkeletonProperties::~SkeletonProperties(Structs::SkeletonProperties *this)
{
  *(_DWORD *)this = off_96BB90;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c57e8 Structs::SkeletonProperties::~SkeletonProperties() =====
void __fastcall Structs::SkeletonProperties::~SkeletonProperties(Structs::SkeletonProperties *this)
{
  *(_DWORD *)this = off_96BB90;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c581c Structs::SkeletonProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::SkeletonProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c5820 Structs::InfectedProperties::~InfectedProperties() =====
void __fastcall Structs::InfectedProperties::~InfectedProperties(Structs::InfectedProperties *this)
{
  *(_DWORD *)this = off_96BB78;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5854 Structs::InfectedProperties::~InfectedProperties() =====
void __fastcall Structs::InfectedProperties::~InfectedProperties(Structs::InfectedProperties *this)
{
  *(_DWORD *)this = off_96BB78;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5888 Structs::InfectedProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::InfectedProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c588c Structs::LizardManProperties::~LizardManProperties() =====
void __fastcall Structs::LizardManProperties::~LizardManProperties(Structs::LizardManProperties *this)
{
  *(_DWORD *)this = off_96BB60;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c58c0 Structs::LizardManProperties::~LizardManProperties() =====
void __fastcall Structs::LizardManProperties::~LizardManProperties(Structs::LizardManProperties *this)
{
  *(_DWORD *)this = off_96BB60;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c58f4 Structs::LizardManProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::LizardManProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c58f8 Structs::BigLizardManProperties::~BigLizardManProperties() =====
void __fastcall Structs::BigLizardManProperties::~BigLizardManProperties(Structs::BigLizardManProperties *this)
{
  *(_DWORD *)this = off_96BB48;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c592c Structs::BigLizardManProperties::~BigLizardManProperties() =====
void __fastcall Structs::BigLizardManProperties::~BigLizardManProperties(Structs::BigLizardManProperties *this)
{
  *(_DWORD *)this = off_96BB48;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5960 Structs::BigLizardManProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::BigLizardManProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c5964 Structs::MothProperties::~MothProperties() =====
void __fastcall Structs::MothProperties::~MothProperties(Structs::MothProperties *this)
{
  *(_DWORD *)this = off_96BB30;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5998 Structs::MothProperties::~MothProperties() =====
void __fastcall Structs::MothProperties::~MothProperties(Structs::MothProperties *this)
{
  *(_DWORD *)this = off_96BB30;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c59cc Structs::MothProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::MothProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c59d0 Structs::MothCocoonProperties::~MothCocoonProperties() =====
void __fastcall Structs::MothCocoonProperties::~MothCocoonProperties(Structs::MothCocoonProperties *this)
{
  *(_DWORD *)this = off_96BB18;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5a04 Structs::MothCocoonProperties::~MothCocoonProperties() =====
void __fastcall Structs::MothCocoonProperties::~MothCocoonProperties(Structs::MothCocoonProperties *this)
{
  *(_DWORD *)this = off_96BB18;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5a38 Structs::MothCocoonProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::MothCocoonProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c5a3c Structs::SwampKingProperties::~SwampKingProperties() =====
void __fastcall Structs::SwampKingProperties::~SwampKingProperties(Structs::SwampKingProperties *this)
{
  *(_DWORD *)this = off_96BB00;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5a70 Structs::SwampKingProperties::~SwampKingProperties() =====
void __fastcall Structs::SwampKingProperties::~SwampKingProperties(Structs::SwampKingProperties *this)
{
  *(_DWORD *)this = off_96BB00;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5aa4 Structs::SwampKingProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::SwampKingProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c5aa8 Structs::SandWormProperties::~SandWormProperties() =====
void __fastcall Structs::SandWormProperties::~SandWormProperties(Structs::SandWormProperties *this)
{
  *(_DWORD *)this = off_96BAE8;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5adc Structs::SandWormProperties::~SandWormProperties() =====
void __fastcall Structs::SandWormProperties::~SandWormProperties(Structs::SandWormProperties *this)
{
  *(_DWORD *)this = off_96BAE8;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5b10 Structs::SandWormProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::SandWormProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c5b14 Structs::TrollProperties::~TrollProperties() =====
void __fastcall Structs::TrollProperties::~TrollProperties(Structs::TrollProperties *this)
{
  *(_DWORD *)this = off_96BAD0;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5b48 Structs::TrollProperties::~TrollProperties() =====
void __fastcall Structs::TrollProperties::~TrollProperties(Structs::TrollProperties *this)
{
  *(_DWORD *)this = off_96BAD0;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5b7c Structs::TrollProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::TrollProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c5b80 Structs::TrollKingProperties::~TrollKingProperties() =====
void __fastcall Structs::TrollKingProperties::~TrollKingProperties(Structs::TrollKingProperties *this)
{
  *(_DWORD *)this = off_96BAB8;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5bb4 Structs::TrollKingProperties::~TrollKingProperties() =====
void __fastcall Structs::TrollKingProperties::~TrollKingProperties(Structs::TrollKingProperties *this)
{
  *(_DWORD *)this = off_96BAB8;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5be8 Structs::TrollKingProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::TrollKingProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c5bec Structs::WitchProperties::~WitchProperties() =====
void __fastcall Structs::WitchProperties::~WitchProperties(Structs::WitchProperties *this)
{
  *(_DWORD *)this = off_96BAA0;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5c20 Structs::WitchProperties::~WitchProperties() =====
void __fastcall Structs::WitchProperties::~WitchProperties(Structs::WitchProperties *this)
{
  *(_DWORD *)this = off_96BAA0;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5c54 Structs::WitchProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::WitchProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c5c58 Structs::SlimeProperties::~SlimeProperties() =====
void __fastcall Structs::SlimeProperties::~SlimeProperties(Structs::SlimeProperties *this)
{
  *(_DWORD *)this = off_96BA88;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5c8c Structs::SlimeProperties::~SlimeProperties() =====
void __fastcall Structs::SlimeProperties::~SlimeProperties(Structs::SlimeProperties *this)
{
  *(_DWORD *)this = off_96BA88;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5cc0 Structs::SlimeProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::SlimeProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c5cc4 Structs::Ugly_DogProperties::~Ugly_DogProperties() =====
void __fastcall Structs::Ugly_DogProperties::~Ugly_DogProperties(Structs::Ugly_DogProperties *this)
{
  *(_DWORD *)this = off_96BA70;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5cf8 Structs::Ugly_DogProperties::~Ugly_DogProperties() =====
void __fastcall Structs::Ugly_DogProperties::~Ugly_DogProperties(Structs::Ugly_DogProperties *this)
{
  *(_DWORD *)this = off_96BA70;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5d2c Structs::Ugly_DogProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::Ugly_DogProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c5d30 Structs::Ugly_Dog_BigProperties::~Ugly_Dog_BigProperties() =====
void __fastcall Structs::Ugly_Dog_BigProperties::~Ugly_Dog_BigProperties(Structs::Ugly_Dog_BigProperties *this)
{
  *(_DWORD *)this = off_96BA58;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5d64 Structs::Ugly_Dog_BigProperties::~Ugly_Dog_BigProperties() =====
void __fastcall Structs::Ugly_Dog_BigProperties::~Ugly_Dog_BigProperties(Structs::Ugly_Dog_BigProperties *this)
{
  *(_DWORD *)this = off_96BA58;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5d98 Structs::Ugly_Dog_BigProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::Ugly_Dog_BigProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c5d9c Structs::Coward_Dog::~Coward_Dog() =====
void __fastcall Structs::Coward_Dog::~Coward_Dog(Structs::Coward_Dog *this)
{
  *(_DWORD *)this = off_96BA40;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5dd0 Structs::Coward_Dog::~Coward_Dog() =====
void __fastcall Structs::Coward_Dog::~Coward_Dog(Structs::Coward_Dog *this)
{
  *(_DWORD *)this = off_96BA40;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5e04 Structs::Coward_Dog::finalize(void) =====
// attributes: thunk
void __fastcall Structs::Coward_Dog::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c5e08 Structs::GhostProperties::~GhostProperties() =====
void __fastcall Structs::GhostProperties::~GhostProperties(Structs::GhostProperties *this)
{
  *(_DWORD *)this = off_96BA28;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5e3c Structs::GhostProperties::~GhostProperties() =====
void __fastcall Structs::GhostProperties::~GhostProperties(Structs::GhostProperties *this)
{
  *(_DWORD *)this = off_96BA28;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5e70 Structs::GhostProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::GhostProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c5e74 Structs::BanditProperties::~BanditProperties() =====
void __fastcall Structs::BanditProperties::~BanditProperties(Structs::BanditProperties *this)
{
  *(_DWORD *)this = off_96BA10;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5ea8 Structs::BanditProperties::~BanditProperties() =====
void __fastcall Structs::BanditProperties::~BanditProperties(Structs::BanditProperties *this)
{
  *(_DWORD *)this = off_96BA10;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5edc Structs::BanditProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::BanditProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c5ee0 Structs::SpiderProperties::~SpiderProperties() =====
void __fastcall Structs::SpiderProperties::~SpiderProperties(Structs::SpiderProperties *this)
{
  *(_DWORD *)this = off_96B9F8;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5f14 Structs::SpiderProperties::~SpiderProperties() =====
void __fastcall Structs::SpiderProperties::~SpiderProperties(Structs::SpiderProperties *this)
{
  *(_DWORD *)this = off_96B9F8;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5f48 Structs::SpiderProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::SpiderProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c5f4c Structs::BigSpiderProperties::~BigSpiderProperties() =====
void __fastcall Structs::BigSpiderProperties::~BigSpiderProperties(Structs::BigSpiderProperties *this)
{
  *(_DWORD *)this = off_96B9E0;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5f80 Structs::BigSpiderProperties::~BigSpiderProperties() =====
void __fastcall Structs::BigSpiderProperties::~BigSpiderProperties(Structs::BigSpiderProperties *this)
{
  *(_DWORD *)this = off_96B9E0;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5fb4 Structs::BigSpiderProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::BigSpiderProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c5fb8 Structs::DKProperties::~DKProperties() =====
void __fastcall Structs::DKProperties::~DKProperties(Structs::DKProperties *this)
{
  *(_DWORD *)this = off_96B9C8;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c5fec Structs::DKProperties::~DKProperties() =====
void __fastcall Structs::DKProperties::~DKProperties(Structs::DKProperties *this)
{
  *(_DWORD *)this = off_96B9C8;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c6020 Structs::DKProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::DKProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c6024 Structs::YetiProperties::~YetiProperties() =====
void __fastcall Structs::YetiProperties::~YetiProperties(Structs::YetiProperties *this)
{
  *(_DWORD *)this = off_96B9B0;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c6058 Structs::YetiProperties::~YetiProperties() =====
void __fastcall Structs::YetiProperties::~YetiProperties(Structs::YetiProperties *this)
{
  *(_DWORD *)this = off_96B9B0;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c608c Structs::YetiProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::YetiProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c6090 Structs::SnowWolfProperties::~SnowWolfProperties() =====
void __fastcall Structs::SnowWolfProperties::~SnowWolfProperties(Structs::SnowWolfProperties *this)
{
  *(_DWORD *)this = off_96B998;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c60c4 Structs::SnowWolfProperties::~SnowWolfProperties() =====
void __fastcall Structs::SnowWolfProperties::~SnowWolfProperties(Structs::SnowWolfProperties *this)
{
  *(_DWORD *)this = off_96B998;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c60f8 Structs::SnowWolfProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::SnowWolfProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c60fc Structs::GoblinRogueProperties::~GoblinRogueProperties() =====
void __fastcall Structs::GoblinRogueProperties::~GoblinRogueProperties(Structs::GoblinRogueProperties *this)
{
  *(_DWORD *)this = off_96B980;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c6130 Structs::GoblinRogueProperties::~GoblinRogueProperties() =====
void __fastcall Structs::GoblinRogueProperties::~GoblinRogueProperties(Structs::GoblinRogueProperties *this)
{
  *(_DWORD *)this = off_96B980;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c6164 Structs::GoblinRogueProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::GoblinRogueProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c6168 Structs::GoblinSlingerProperties::~GoblinSlingerProperties() =====
void __fastcall Structs::GoblinSlingerProperties::~GoblinSlingerProperties(Structs::GoblinSlingerProperties *this)
{
  *(_DWORD *)this = off_96B968;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c619c Structs::GoblinSlingerProperties::~GoblinSlingerProperties() =====
void __fastcall Structs::GoblinSlingerProperties::~GoblinSlingerProperties(Structs::GoblinSlingerProperties *this)
{
  *(_DWORD *)this = off_96B968;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c61d0 Structs::GoblinSlingerProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::GoblinSlingerProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c61d4 Structs::GoblinShamanProperties::~GoblinShamanProperties() =====
void __fastcall Structs::GoblinShamanProperties::~GoblinShamanProperties(Structs::GoblinShamanProperties *this)
{
  *(_DWORD *)this = off_96B950;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c6208 Structs::GoblinShamanProperties::~GoblinShamanProperties() =====
void __fastcall Structs::GoblinShamanProperties::~GoblinShamanProperties(Structs::GoblinShamanProperties *this)
{
  *(_DWORD *)this = off_96B950;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c623c Structs::GoblinShamanProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::GoblinShamanProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c6240 Structs::SmallPlantProperties::~SmallPlantProperties() =====
void __fastcall Structs::SmallPlantProperties::~SmallPlantProperties(Structs::SmallPlantProperties *this)
{
  *(_DWORD *)this = off_96B938;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c6274 Structs::SmallPlantProperties::~SmallPlantProperties() =====
void __fastcall Structs::SmallPlantProperties::~SmallPlantProperties(Structs::SmallPlantProperties *this)
{
  *(_DWORD *)this = off_96B938;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c62a8 Structs::SmallPlantProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::SmallPlantProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c62ac Structs::LargePlantProperties::~LargePlantProperties() =====
void __fastcall Structs::LargePlantProperties::~LargePlantProperties(Structs::LargePlantProperties *this)
{
  *(_DWORD *)this = off_96B920;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c62e0 Structs::LargePlantProperties::~LargePlantProperties() =====
void __fastcall Structs::LargePlantProperties::~LargePlantProperties(Structs::LargePlantProperties *this)
{
  *(_DWORD *)this = off_96B920;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c6314 Structs::LargePlantProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::LargePlantProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c6318 Structs::GuardProperties::~GuardProperties() =====
void __fastcall Structs::GuardProperties::~GuardProperties(Structs::GuardProperties *this)
{
  *(_DWORD *)this = off_96B908;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c634c Structs::GuardProperties::~GuardProperties() =====
void __fastcall Structs::GuardProperties::~GuardProperties(Structs::GuardProperties *this)
{
  *(_DWORD *)this = off_96B908;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c6380 Structs::GuardProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::GuardProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c6384 Structs::CultistProperties::~CultistProperties() =====
void __fastcall Structs::CultistProperties::~CultistProperties(Structs::CultistProperties *this)
{
  *(_DWORD *)this = off_96B8F0;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c63b8 Structs::CultistProperties::~CultistProperties() =====
void __fastcall Structs::CultistProperties::~CultistProperties(Structs::CultistProperties *this)
{
  *(_DWORD *)this = off_96B8F0;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c63ec Structs::CultistProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::CultistProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c63f0 Structs::RootTrollProperties::~RootTrollProperties() =====
void __fastcall Structs::RootTrollProperties::~RootTrollProperties(Structs::RootTrollProperties *this)
{
  *(_DWORD *)this = off_96B8D8;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c6424 Structs::RootTrollProperties::~RootTrollProperties() =====
void __fastcall Structs::RootTrollProperties::~RootTrollProperties(Structs::RootTrollProperties *this)
{
  *(_DWORD *)this = off_96B8D8;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c6458 Structs::RootTrollProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::RootTrollProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c645c Structs::AssassinProperties::~AssassinProperties() =====
void __fastcall Structs::AssassinProperties::~AssassinProperties(Structs::AssassinProperties *this)
{
  *(_DWORD *)this = off_96B8C0;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c6490 Structs::AssassinProperties::~AssassinProperties() =====
void __fastcall Structs::AssassinProperties::~AssassinProperties(Structs::AssassinProperties *this)
{
  *(_DWORD *)this = off_96B8C0;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c64c4 Structs::AssassinProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::AssassinProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c64c8 Structs::DragonProperties::~DragonProperties() =====
void __fastcall Structs::DragonProperties::~DragonProperties(Structs::DragonProperties *this)
{
  *(_DWORD *)this = off_96B8A8;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c64fc Structs::DragonProperties::~DragonProperties() =====
void __fastcall Structs::DragonProperties::~DragonProperties(Structs::DragonProperties *this)
{
  *(_DWORD *)this = off_96B8A8;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c6530 Structs::DragonProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::DragonProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c6534 Structs::ResurrectingGodProperties::~ResurrectingGodProperties() =====
void __fastcall Structs::ResurrectingGodProperties::~ResurrectingGodProperties(
        Structs::ResurrectingGodProperties *this)
{
  *(_DWORD *)this = off_96B890;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c6568 Structs::ResurrectingGodProperties::~ResurrectingGodProperties() =====
void __fastcall Structs::ResurrectingGodProperties::~ResurrectingGodProperties(
        Structs::ResurrectingGodProperties *this)
{
  *(_DWORD *)this = off_96B890;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c659c Structs::ResurrectingGodProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::ResurrectingGodProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c65a0 Structs::MadrukProperties::~MadrukProperties() =====
void __fastcall Structs::MadrukProperties::~MadrukProperties(Structs::MadrukProperties *this)
{
  *(_DWORD *)this = off_96B878;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c65d4 Structs::MadrukProperties::~MadrukProperties() =====
void __fastcall Structs::MadrukProperties::~MadrukProperties(Structs::MadrukProperties *this)
{
  *(_DWORD *)this = off_96B878;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c6608 Structs::MadrukProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::MadrukProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c660c Structs::MadrukTorsoProperties::~MadrukTorsoProperties() =====
void __fastcall Structs::MadrukTorsoProperties::~MadrukTorsoProperties(Structs::MadrukTorsoProperties *this)
{
  *(_DWORD *)this = off_96B860;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c6640 Structs::MadrukTorsoProperties::~MadrukTorsoProperties() =====
void __fastcall Structs::MadrukTorsoProperties::~MadrukTorsoProperties(Structs::MadrukTorsoProperties *this)
{
  *(_DWORD *)this = off_96B860;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c6674 Structs::MadrukTorsoProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::MadrukTorsoProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c6678 Structs::MadrukMinionProperties::~MadrukMinionProperties() =====
void __fastcall Structs::MadrukMinionProperties::~MadrukMinionProperties(Structs::MadrukMinionProperties *this)
{
  *(_DWORD *)this = off_96B848;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c66ac Structs::MadrukMinionProperties::~MadrukMinionProperties() =====
void __fastcall Structs::MadrukMinionProperties::~MadrukMinionProperties(Structs::MadrukMinionProperties *this)
{
  *(_DWORD *)this = off_96B848;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c66e0 Structs::MadrukMinionProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::MadrukMinionProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c66e4 Structs::MadrukEnergySpawnerProperties::~MadrukEnergySpawnerProperties() =====
void __fastcall Structs::MadrukEnergySpawnerProperties::~MadrukEnergySpawnerProperties(
        Structs::MadrukEnergySpawnerProperties *this)
{
  *(_DWORD *)this = off_96B830;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c6718 Structs::MadrukEnergySpawnerProperties::~MadrukEnergySpawnerProperties() =====
void __fastcall Structs::MadrukEnergySpawnerProperties::~MadrukEnergySpawnerProperties(
        Structs::MadrukEnergySpawnerProperties *this)
{
  *(_DWORD *)this = off_96B830;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c674c Structs::MadrukEnergySpawnerProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::MadrukEnergySpawnerProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c6750 Structs::MerchantProperties::~MerchantProperties() =====
void __fastcall Structs::MerchantProperties::~MerchantProperties(Structs::MerchantProperties *this)
{
  *(_DWORD *)this = off_96B818;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c6784 Structs::MerchantProperties::~MerchantProperties() =====
void __fastcall Structs::MerchantProperties::~MerchantProperties(Structs::MerchantProperties *this)
{
  *(_DWORD *)this = off_96B818;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c67b8 Structs::MerchantProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::MerchantProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c67bc Structs::FollowerProperties::~FollowerProperties() =====
void __fastcall Structs::FollowerProperties::~FollowerProperties(Structs::FollowerProperties *this)
{
  *(_DWORD *)this = off_96B800;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c67f0 Structs::FollowerProperties::~FollowerProperties() =====
void __fastcall Structs::FollowerProperties::~FollowerProperties(Structs::FollowerProperties *this)
{
  *(_DWORD *)this = off_96B800;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c6824 Structs::FollowerProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::FollowerProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c6828 Structs::AttackingFollowerProperties::~AttackingFollowerProperties() =====
void __fastcall Structs::AttackingFollowerProperties::~AttackingFollowerProperties(
        Structs::AttackingFollowerProperties *this)
{
  *(_DWORD *)this = off_96B7E8;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c685c Structs::AttackingFollowerProperties::~AttackingFollowerProperties() =====
void __fastcall Structs::AttackingFollowerProperties::~AttackingFollowerProperties(
        Structs::AttackingFollowerProperties *this)
{
  *(_DWORD *)this = off_96B7E8;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c6890 Structs::AttackingFollowerProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::AttackingFollowerProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c6894 Structs::EquippedFaeryProperties::~EquippedFaeryProperties() =====
void __fastcall Structs::EquippedFaeryProperties::~EquippedFaeryProperties(Structs::EquippedFaeryProperties *this)
{
  *(_DWORD *)this = off_96B7D0;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c68c8 Structs::EquippedFaeryProperties::~EquippedFaeryProperties() =====
void __fastcall Structs::EquippedFaeryProperties::~EquippedFaeryProperties(Structs::EquippedFaeryProperties *this)
{
  *(_DWORD *)this = off_96B7D0;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c68fc Structs::EquippedFaeryProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::EquippedFaeryProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c6900 Structs::FriendlyNPCProperties::~FriendlyNPCProperties() =====
void __fastcall Structs::FriendlyNPCProperties::~FriendlyNPCProperties(Structs::FriendlyNPCProperties *this)
{
  *(_DWORD *)this = off_96B7B8;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c6934 Structs::FriendlyNPCProperties::~FriendlyNPCProperties() =====
void __fastcall Structs::FriendlyNPCProperties::~FriendlyNPCProperties(Structs::FriendlyNPCProperties *this)
{
  *(_DWORD *)this = off_96B7B8;
  Structs::CharacterProperties::~CharacterProperties(this);
}


// ===== 4c6968 Structs::FriendlyNPCProperties::finalize(void) =====
// attributes: thunk
void __fastcall Structs::FriendlyNPCProperties::finalize(Structs::CharacterProperties *this)
{
  Structs::CharacterProperties::finalize(this);
}


// ===== 4c696c Structs::StatAutoAssignTarget::~StatAutoAssignTarget() =====
void __fastcall Structs::StatAutoAssignTarget::~StatAutoAssignTarget(Structs::StatAutoAssignTarget *this)
{
  ;
}


// ===== 4c6970 Structs::StatAutoAssignTarget::~StatAutoAssignTarget() =====
void __fastcall Structs::StatAutoAssignTarget::~StatAutoAssignTarget(Structs::StatAutoAssignTarget *this)
{
  ;
}


// ===== 4c6974 Structs::StatAutoAssignTarget::finalize(void) =====
void __fastcall Structs::StatAutoAssignTarget::finalize(Structs::StatAutoAssignTarget *this)
{
  ;
}


// ===== 4c6978 Structs::CharInfoName::~CharInfoName() =====
void __fastcall Structs::CharInfoName::~CharInfoName(Structs::CharInfoName *this)
{
  ;
}


// ===== 4c697c Structs::CharInfoName::~CharInfoName() =====
void __fastcall Structs::CharInfoName::~CharInfoName(Structs::CharInfoName *this)
{
  ;
}


// ===== 4c6980 Structs::CharInfoName::finalize(void) =====
void __fastcall Structs::CharInfoName::finalize(Structs::CharInfoName *this)
{
  ;
}


// ===== 4c6984 Structs::RepeatableSprite::~RepeatableSprite() =====
void __fastcall Structs::RepeatableSprite::~RepeatableSprite(Structs::RepeatableSprite *this)
{
  ;
}


// ===== 4c6988 Structs::RepeatableSprite::~RepeatableSprite() =====
void __fastcall Structs::RepeatableSprite::~RepeatableSprite(Structs::RepeatableSprite *this)
{
  ;
}


// ===== 4c698c Structs::RepeatableSprite::finalize(void) =====
void __fastcall Structs::RepeatableSprite::finalize(Structs::RepeatableSprite *this)
{
  ;
}


// ===== 4c6990 Structs::SimpleAnim::~SimpleAnim() =====
void __fastcall Structs::SimpleAnim::~SimpleAnim(Structs::SimpleAnim *this)
{
  ;
}


// ===== 4c6994 Structs::SimpleAnim::~SimpleAnim() =====
void __fastcall Structs::SimpleAnim::~SimpleAnim(Structs::SimpleAnim *this)
{
  ;
}


// ===== 4c6998 Structs::SimpleAnim::finalize(void) =====
void __fastcall Structs::SimpleAnim::finalize(Structs::SimpleAnim *this)
{
  ;
}


// ===== 4c699c Structs::Anim::~Anim() =====
void __fastcall Structs::Anim::~Anim(Structs::Anim *this)
{
  *(_DWORD *)this = off_96B6E0;
  Structs::SimpleAnim::~SimpleAnim(this);
}


// ===== 4c69d0 Structs::Anim::~Anim() =====
void __fastcall Structs::Anim::~Anim(Structs::Anim *this)
{
  *(_DWORD *)this = off_96B6E0;
  Structs::SimpleAnim::~SimpleAnim(this);
}


// ===== 4c6a04 Structs::Anim::finalize(void) =====
// attributes: thunk
void __fastcall Structs::Anim::finalize(Structs::SimpleAnim *this)
{
  Structs::SimpleAnim::finalize(this);
}


// ===== 4c6a08 Structs::Rect::~Rect() =====
void __fastcall Structs::Rect::~Rect(Structs::Rect *this)
{
  ;
}


// ===== 4c6a0c Structs::Rect::~Rect() =====
void __fastcall Structs::Rect::~Rect(Structs::Rect *this)
{
  ;
}


// ===== 4c6a10 Structs::Rect::finalize(void) =====
void __fastcall Structs::Rect::finalize(Structs::Rect *this)
{
  ;
}


// ===== 4c6a14 Structs::DesignSettings::~DesignSettings() =====
void __fastcall Structs::DesignSettings::~DesignSettings(Structs::DesignSettings *this)
{
  ;
}


// ===== 4c6a18 Structs::DesignSettings::~DesignSettings() =====
void __fastcall Structs::DesignSettings::~DesignSettings(Structs::DesignSettings *this)
{
  ;
}


// ===== 4c6a1c Structs::DesignSettings::finalize(void) =====
void __fastcall Structs::DesignSettings::finalize(Structs::DesignSettings *this)
{
  ;
}


// ===== 4c6a20 Structs::GameDifficulty::~GameDifficulty() =====
void __fastcall Structs::GameDifficulty::~GameDifficulty(Structs::GameDifficulty *this)
{
  ;
}


// ===== 4c6a24 Structs::GameDifficulty::~GameDifficulty() =====
void __fastcall Structs::GameDifficulty::~GameDifficulty(Structs::GameDifficulty *this)
{
  ;
}


// ===== 4c6a28 Structs::GameDifficulty::finalize(void) =====
void __fastcall Structs::GameDifficulty::finalize(Structs::GameDifficulty *this)
{
  ;
}


// ===== 4c6a2c Structs::GameOption::~GameOption() =====
void __fastcall Structs::GameOption::~GameOption(Structs::GameOption *this)
{
  ;
}


// ===== 4c6a30 Structs::GameOption::~GameOption() =====
void __fastcall Structs::GameOption::~GameOption(Structs::GameOption *this)
{
  ;
}


// ===== 4c6a34 Structs::GameOption::finalize(void) =====
void __fastcall Structs::GameOption::finalize(Structs::GameOption *this)
{
  ;
}


// ===== 4c6a38 Structs::GameOptionSelect::~GameOptionSelect() =====
void __fastcall Structs::GameOptionSelect::~GameOptionSelect(Structs::GameOptionSelect *this)
{
  *(_DWORD *)this = off_96B668;
  Structs::GameOption::~GameOption(this);
}


// ===== 4c6a6c Structs::GameOptionSelect::~GameOptionSelect() =====
void __fastcall Structs::GameOptionSelect::~GameOptionSelect(Structs::GameOptionSelect *this)
{
  *(_DWORD *)this = off_96B668;
  Structs::GameOption::~GameOption(this);
}


// ===== 4c6aa0 Structs::GameOptionSelect::finalize(void) =====
// attributes: thunk
void __fastcall Structs::GameOptionSelect::finalize(Structs::GameOption *this)
{
  Structs::GameOption::finalize(this);
}


// ===== 4c6aa4 Structs::GameOptionSlider::~GameOptionSlider() =====
void __fastcall Structs::GameOptionSlider::~GameOptionSlider(Structs::GameOptionSlider *this)
{
  *(_DWORD *)this = off_96B650;
  Structs::GameOption::~GameOption(this);
}


// ===== 4c6ad8 Structs::GameOptionSlider::~GameOptionSlider() =====
void __fastcall Structs::GameOptionSlider::~GameOptionSlider(Structs::GameOptionSlider *this)
{
  *(_DWORD *)this = off_96B650;
  Structs::GameOption::~GameOption(this);
}


// ===== 4c6b0c Structs::GameOptionSlider::finalize(void) =====
// attributes: thunk
void __fastcall Structs::GameOptionSlider::finalize(Structs::GameOption *this)
{
  Structs::GameOption::finalize(this);
}


// ===== 4c6b10 Structs::GameOptionToggle::~GameOptionToggle() =====
void __fastcall Structs::GameOptionToggle::~GameOptionToggle(Structs::GameOptionToggle *this)
{
  *(_DWORD *)this = off_96B638;
  Structs::GameOption::~GameOption(this);
}


// ===== 4c6b44 Structs::GameOptionToggle::~GameOptionToggle() =====
void __fastcall Structs::GameOptionToggle::~GameOptionToggle(Structs::GameOptionToggle *this)
{
  *(_DWORD *)this = off_96B638;
  Structs::GameOption::~GameOption(this);
}


// ===== 4c6b78 Structs::GameOptionToggle::finalize(void) =====
// attributes: thunk
void __fastcall Structs::GameOptionToggle::finalize(Structs::GameOption *this)
{
  Structs::GameOption::finalize(this);
}


// ===== 4c6b7c Structs::DialogStep::~DialogStep() =====
void __fastcall Structs::DialogStep::~DialogStep(Structs::DialogStep *this)
{
  ;
}


// ===== 4c6b80 Structs::DialogStep::~DialogStep() =====
void __fastcall Structs::DialogStep::~DialogStep(Structs::DialogStep *this)
{
  ;
}


// ===== 4c6b84 Structs::DialogStep::finalize(void) =====
void __fastcall Structs::DialogStep::finalize(Structs::DialogStep *this)
{
  ;
}


// ===== 4c6b88 Structs::CharEffect::~CharEffect() =====
void __fastcall Structs::CharEffect::~CharEffect(Structs::CharEffect *this)
{
  ;
}


// ===== 4c6b8c Structs::CharEffect::~CharEffect() =====
void __fastcall Structs::CharEffect::~CharEffect(Structs::CharEffect *this)
{
  ;
}


// ===== 4c6b90 Structs::CharEffect::finalize(void) =====
void __fastcall Structs::CharEffect::finalize(Structs::CharEffect *this)
{
  ;
}


// ===== 4c6b94 Structs::FontColorDef::~FontColorDef() =====
void __fastcall Structs::FontColorDef::~FontColorDef(Structs::FontColorDef *this)
{
  ;
}


// ===== 4c6b98 Structs::FontColorDef::~FontColorDef() =====
void __fastcall Structs::FontColorDef::~FontColorDef(Structs::FontColorDef *this)
{
  ;
}


// ===== 4c6b9c Structs::FontColorDef::finalize(void) =====
void __fastcall Structs::FontColorDef::finalize(Structs::FontColorDef *this)
{
  ;
}


// ===== 4c6ba0 Structs::GameObjectDamage::~GameObjectDamage() =====
void __fastcall Structs::GameObjectDamage::~GameObjectDamage(Structs::GameObjectDamage *this)
{
  ;
}


// ===== 4c6ba4 Structs::GameObjectDamage::~GameObjectDamage() =====
void __fastcall Structs::GameObjectDamage::~GameObjectDamage(Structs::GameObjectDamage *this)
{
  ;
}


// ===== 4c6ba8 Structs::GameObjectDamage::finalize(void) =====
void __fastcall Structs::GameObjectDamage::finalize(Structs::GameObjectDamage *this)
{
  ;
}


// ===== 4c6bac Structs::GameObjectVisual::~GameObjectVisual() =====
void __fastcall Structs::GameObjectVisual::~GameObjectVisual(Structs::GameObjectVisual *this)
{
  ;
}


// ===== 4c6bb0 Structs::GameObjectVisual::~GameObjectVisual() =====
void __fastcall Structs::GameObjectVisual::~GameObjectVisual(Structs::GameObjectVisual *this)
{
  ;
}


// ===== 4c6bb4 Structs::GameObjectVisual::finalize(void) =====
void __fastcall Structs::GameObjectVisual::finalize(Structs::GameObjectVisual *this)
{
  ;
}


// ===== 4c6bb8 Structs::LiftableObject::~LiftableObject() =====
void __fastcall Structs::LiftableObject::~LiftableObject(Structs::LiftableObject *this)
{
  ;
}


// ===== 4c6bbc Structs::LiftableObject::~LiftableObject() =====
void __fastcall Structs::LiftableObject::~LiftableObject(Structs::LiftableObject *this)
{
  ;
}


// ===== 4c6bc0 Structs::LiftableObject::finalize(void) =====
void __fastcall Structs::LiftableObject::finalize(Structs::LiftableObject *this)
{
  ;
}


// ===== 4c6bc4 Structs::TriggerPlate::~TriggerPlate() =====
void __fastcall Structs::TriggerPlate::~TriggerPlate(Structs::TriggerPlate *this)
{
  ;
}


// ===== 4c6bc8 Structs::TriggerPlate::~TriggerPlate() =====
void __fastcall Structs::TriggerPlate::~TriggerPlate(Structs::TriggerPlate *this)
{
  ;
}


// ===== 4c6bcc Structs::TriggerPlate::finalize(void) =====
void __fastcall Structs::TriggerPlate::finalize(Structs::TriggerPlate *this)
{
  ;
}


// ===== 4c6bd0 Structs::HelpPage::~HelpPage() =====
void __fastcall Structs::HelpPage::~HelpPage(Structs::HelpPage *this)
{
  ;
}


// ===== 4c6bd4 Structs::HelpPage::~HelpPage() =====
void __fastcall Structs::HelpPage::~HelpPage(Structs::HelpPage *this)
{
  ;
}


// ===== 4c6bd8 Structs::HelpPage::finalize(void) =====
void __fastcall Structs::HelpPage::finalize(Structs::HelpPage *this)
{
  ;
}


// ===== 4c6bdc Structs::HintPage::~HintPage() =====
void __fastcall Structs::HintPage::~HintPage(Structs::HintPage *this)
{
  ;
}


// ===== 4c6be0 Structs::HintPage::~HintPage() =====
void __fastcall Structs::HintPage::~HintPage(Structs::HintPage *this)
{
  ;
}


// ===== 4c6be4 Structs::HintPage::finalize(void) =====
void __fastcall Structs::HintPage::finalize(Structs::HintPage *this)
{
  ;
}


// ===== 4c6be8 Structs::ItemPowerEntry::~ItemPowerEntry() =====
void __fastcall Structs::ItemPowerEntry::~ItemPowerEntry(Structs::ItemPowerEntry *this)
{
  ;
}


// ===== 4c6bec Structs::ItemPowerEntry::~ItemPowerEntry() =====
void __fastcall Structs::ItemPowerEntry::~ItemPowerEntry(Structs::ItemPowerEntry *this)
{
  ;
}


// ===== 4c6bf0 Structs::ItemPowerEntry::finalize(void) =====
void __fastcall Structs::ItemPowerEntry::finalize(Structs::ItemPowerEntry *this)
{
  ;
}


// ===== 4c6bf4 Structs::AttrBonusEntry::~AttrBonusEntry() =====
void __fastcall Structs::AttrBonusEntry::~AttrBonusEntry(Structs::AttrBonusEntry *this)
{
  ;
}


// ===== 4c6bf8 Structs::AttrBonusEntry::~AttrBonusEntry() =====
void __fastcall Structs::AttrBonusEntry::~AttrBonusEntry(Structs::AttrBonusEntry *this)
{
  ;
}


// ===== 4c6bfc Structs::AttrBonusEntry::finalize(void) =====
void __fastcall Structs::AttrBonusEntry::finalize(Structs::AttrBonusEntry *this)
{
  ;
}


// ===== 4c6c00 Structs::LootEntry::~LootEntry() =====
void __fastcall Structs::LootEntry::~LootEntry(Structs::LootEntry *this)
{
  ;
}


// ===== 4c6c04 Structs::LootEntry::~LootEntry() =====
void __fastcall Structs::LootEntry::~LootEntry(Structs::LootEntry *this)
{
  ;
}


// ===== 4c6c08 Structs::LootEntry::finalize(void) =====
void __fastcall Structs::LootEntry::finalize(Structs::LootEntry *this)
{
  ;
}


// ===== 4c6c0c Structs::ItemListEntry::~ItemListEntry() =====
void __fastcall Structs::ItemListEntry::~ItemListEntry(Structs::ItemListEntry *this)
{
  ;
}


// ===== 4c6c10 Structs::ItemListEntry::~ItemListEntry() =====
void __fastcall Structs::ItemListEntry::~ItemListEntry(Structs::ItemListEntry *this)
{
  ;
}


// ===== 4c6c14 Structs::ItemListEntry::finalize(void) =====
void __fastcall Structs::ItemListEntry::finalize(Structs::ItemListEntry *this)
{
  ;
}


// ===== 4c6c18 Structs::NumProb::~NumProb() =====
void __fastcall Structs::NumProb::~NumProb(Structs::NumProb *this)
{
  ;
}


// ===== 4c6c1c Structs::NumProb::~NumProb() =====
void __fastcall Structs::NumProb::~NumProb(Structs::NumProb *this)
{
  ;
}


// ===== 4c6c20 Structs::NumProb::finalize(void) =====
void __fastcall Structs::NumProb::finalize(Structs::NumProb *this)
{
  ;
}


// ===== 4c6c24 Structs::TileOffset::~TileOffset() =====
void __fastcall Structs::TileOffset::~TileOffset(Structs::TileOffset *this)
{
  ;
}


// ===== 4c6c28 Structs::TileOffset::~TileOffset() =====
void __fastcall Structs::TileOffset::~TileOffset(Structs::TileOffset *this)
{
  ;
}


// ===== 4c6c2c Structs::TileOffset::finalize(void) =====
void __fastcall Structs::TileOffset::finalize(Structs::TileOffset *this)
{
  ;
}


// ===== 4c6c30 Structs::MerchandiseListEntry::~MerchandiseListEntry() =====
void __fastcall Structs::MerchandiseListEntry::~MerchandiseListEntry(Structs::MerchandiseListEntry *this)
{
  ;
}


// ===== 4c6c34 Structs::MerchandiseListEntry::~MerchandiseListEntry() =====
void __fastcall Structs::MerchandiseListEntry::~MerchandiseListEntry(Structs::MerchandiseListEntry *this)
{
  ;
}


// ===== 4c6c38 Structs::MerchandiseListEntry::finalize(void) =====
void __fastcall Structs::MerchandiseListEntry::finalize(Structs::MerchandiseListEntry *this)
{
  ;
}


// ===== 4c6c3c Structs::Inventory::~Inventory() =====
void __fastcall Structs::Inventory::~Inventory(Structs::Inventory *this)
{
  ;
}


// ===== 4c6c40 Structs::Inventory::~Inventory() =====
void __fastcall Structs::Inventory::~Inventory(Structs::Inventory *this)
{
  ;
}


// ===== 4c6c44 Structs::Inventory::finalize(void) =====
void __fastcall Structs::Inventory::finalize(Structs::Inventory *this)
{
  ;
}


// ===== 4c6c48 Structs::Projectile::~Projectile() =====
void __fastcall Structs::Projectile::~Projectile(Structs::Projectile *this)
{
  ;
}


// ===== 4c6c4c Structs::Projectile::~Projectile() =====
void __fastcall Structs::Projectile::~Projectile(Structs::Projectile *this)
{
  ;
}


// ===== 4c6c50 Structs::Projectile::finalize(void) =====
void __fastcall Structs::Projectile::finalize(Structs::Projectile *this)
{
  ;
}


// ===== 4c6c54 Structs::Pos3D::~Pos3D() =====
void __fastcall Structs::Pos3D::~Pos3D(Structs::Pos3D *this)
{
  ;
}


// ===== 4c6c58 Structs::Pos3D::~Pos3D() =====
void __fastcall Structs::Pos3D::~Pos3D(Structs::Pos3D *this)
{
  ;
}


// ===== 4c6c5c Structs::Pos3D::finalize(void) =====
void __fastcall Structs::Pos3D::finalize(Structs::Pos3D *this)
{
  ;
}


// ===== 4c6c60 Structs::ScriptCmd::~ScriptCmd() =====
void __fastcall Structs::ScriptCmd::~ScriptCmd(Structs::ScriptCmd *this)
{
  ;
}


// ===== 4c6c64 Structs::ScriptCmd::~ScriptCmd() =====
void __fastcall Structs::ScriptCmd::~ScriptCmd(Structs::ScriptCmd *this)
{
  ;
}


// ===== 4c6c68 Structs::ScriptCmd::finalize(void) =====
void __fastcall Structs::ScriptCmd::finalize(Structs::ScriptCmd *this)
{
  ;
}


// ===== 4c6c6c Structs::EnterCutSceneMode::~EnterCutSceneMode() =====
void __fastcall Structs::EnterCutSceneMode::~EnterCutSceneMode(Structs::EnterCutSceneMode *this)
{
  *(_DWORD *)this = off_96AC00;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c6ca0 Structs::EnterCutSceneMode::~EnterCutSceneMode() =====
void __fastcall Structs::EnterCutSceneMode::~EnterCutSceneMode(Structs::EnterCutSceneMode *this)
{
  *(_DWORD *)this = off_96AC00;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c6cd4 Structs::EnterCutSceneMode::finalize(void) =====
// attributes: thunk
void __fastcall Structs::EnterCutSceneMode::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c6cd8 Structs::ExitCutSceneMode::~ExitCutSceneMode() =====
void __fastcall Structs::ExitCutSceneMode::~ExitCutSceneMode(Structs::ExitCutSceneMode *this)
{
  *(_DWORD *)this = off_96ABE8;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c6d0c Structs::ExitCutSceneMode::~ExitCutSceneMode() =====
void __fastcall Structs::ExitCutSceneMode::~ExitCutSceneMode(Structs::ExitCutSceneMode *this)
{
  *(_DWORD *)this = off_96ABE8;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c6d40 Structs::ExitCutSceneMode::finalize(void) =====
// attributes: thunk
void __fastcall Structs::ExitCutSceneMode::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c6d44 Structs::PlayCamera::~PlayCamera() =====
void __fastcall Structs::PlayCamera::~PlayCamera(Structs::PlayCamera *this)
{
  *(_DWORD *)this = off_96ABA0;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c6d78 Structs::PlayCamera::~PlayCamera() =====
void __fastcall Structs::PlayCamera::~PlayCamera(Structs::PlayCamera *this)
{
  *(_DWORD *)this = off_96ABA0;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c6dac Structs::PlayCamera::finalize(void) =====
// attributes: thunk
void __fastcall Structs::PlayCamera::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c6db0 Structs::SetCameraClip::~SetCameraClip() =====
void __fastcall Structs::SetCameraClip::~SetCameraClip(Structs::SetCameraClip *this)
{
  *(_DWORD *)this = off_96AB88;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c6de4 Structs::SetCameraClip::~SetCameraClip() =====
void __fastcall Structs::SetCameraClip::~SetCameraClip(Structs::SetCameraClip *this)
{
  *(_DWORD *)this = off_96AB88;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c6e18 Structs::SetCameraClip::finalize(void) =====
// attributes: thunk
void __fastcall Structs::SetCameraClip::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c6e1c Structs::WaitCamera::~WaitCamera() =====
void __fastcall Structs::WaitCamera::~WaitCamera(Structs::WaitCamera *this)
{
  *(_DWORD *)this = off_96AB70;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c6e50 Structs::WaitCamera::~WaitCamera() =====
void __fastcall Structs::WaitCamera::~WaitCamera(Structs::WaitCamera *this)
{
  *(_DWORD *)this = off_96AB70;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c6e84 Structs::WaitCamera::finalize(void) =====
// attributes: thunk
void __fastcall Structs::WaitCamera::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c6e88 Structs::NilCmd::~NilCmd() =====
void __fastcall Structs::NilCmd::~NilCmd(Structs::NilCmd *this)
{
  *(_DWORD *)this = off_96AB40;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c6ebc Structs::NilCmd::~NilCmd() =====
void __fastcall Structs::NilCmd::~NilCmd(Structs::NilCmd *this)
{
  *(_DWORD *)this = off_96AB40;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c6ef0 Structs::NilCmd::finalize(void) =====
// attributes: thunk
void __fastcall Structs::NilCmd::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c6ef4 Structs::StartDialog::~StartDialog() =====
void __fastcall Structs::StartDialog::~StartDialog(Structs::StartDialog *this)
{
  *(_DWORD *)this = off_96AB28;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c6f28 Structs::StartDialog::~StartDialog() =====
void __fastcall Structs::StartDialog::~StartDialog(Structs::StartDialog *this)
{
  *(_DWORD *)this = off_96AB28;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c6f5c Structs::StartDialog::finalize(void) =====
// attributes: thunk
void __fastcall Structs::StartDialog::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c6f60 Structs::StartDialogID::~StartDialogID() =====
void __fastcall Structs::StartDialogID::~StartDialogID(Structs::StartDialogID *this)
{
  *(_DWORD *)this = off_96AB10;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c6f94 Structs::StartDialogID::~StartDialogID() =====
void __fastcall Structs::StartDialogID::~StartDialogID(Structs::StartDialogID *this)
{
  *(_DWORD *)this = off_96AB10;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c6fc8 Structs::StartDialogID::finalize(void) =====
// attributes: thunk
void __fastcall Structs::StartDialogID::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c6fcc Structs::WaitDialog::~WaitDialog() =====
void __fastcall Structs::WaitDialog::~WaitDialog(Structs::WaitDialog *this)
{
  *(_DWORD *)this = off_96AAF8;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7000 Structs::WaitDialog::~WaitDialog() =====
void __fastcall Structs::WaitDialog::~WaitDialog(Structs::WaitDialog *this)
{
  *(_DWORD *)this = off_96AAF8;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7034 Structs::WaitDialog::finalize(void) =====
// attributes: thunk
void __fastcall Structs::WaitDialog::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c7038 Structs::PlaySound::~PlaySound() =====
void __fastcall Structs::PlaySound::~PlaySound(Structs::PlaySound *this)
{
  *(_DWORD *)this = off_96AAE0;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c706c Structs::PlaySound::~PlaySound() =====
void __fastcall Structs::PlaySound::~PlaySound(Structs::PlaySound *this)
{
  *(_DWORD *)this = off_96AAE0;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c70a0 Structs::PlaySound::finalize(void) =====
// attributes: thunk
void __fastcall Structs::PlaySound::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c70a4 Structs::StopSound::~StopSound() =====
void __fastcall Structs::StopSound::~StopSound(Structs::StopSound *this)
{
  *(_DWORD *)this = off_96AAC8;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c70d8 Structs::StopSound::~StopSound() =====
void __fastcall Structs::StopSound::~StopSound(Structs::StopSound *this)
{
  *(_DWORD *)this = off_96AAC8;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c710c Structs::StopSound::finalize(void) =====
// attributes: thunk
void __fastcall Structs::StopSound::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c7110 Structs::PlayLevelMusic::~PlayLevelMusic() =====
void __fastcall Structs::PlayLevelMusic::~PlayLevelMusic(Structs::PlayLevelMusic *this)
{
  *(_DWORD *)this = off_96AAB0;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7144 Structs::PlayLevelMusic::~PlayLevelMusic() =====
void __fastcall Structs::PlayLevelMusic::~PlayLevelMusic(Structs::PlayLevelMusic *this)
{
  *(_DWORD *)this = off_96AAB0;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7178 Structs::PlayLevelMusic::finalize(void) =====
// attributes: thunk
void __fastcall Structs::PlayLevelMusic::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c717c Structs::EnterSafeZone::~EnterSafeZone() =====
void __fastcall Structs::EnterSafeZone::~EnterSafeZone(Structs::EnterSafeZone *this)
{
  *(_DWORD *)this = off_96AA98;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c71b0 Structs::EnterSafeZone::~EnterSafeZone() =====
void __fastcall Structs::EnterSafeZone::~EnterSafeZone(Structs::EnterSafeZone *this)
{
  *(_DWORD *)this = off_96AA98;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c71e4 Structs::EnterSafeZone::finalize(void) =====
// attributes: thunk
void __fastcall Structs::EnterSafeZone::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c71e8 Structs::LeaveSafeZone::~LeaveSafeZone() =====
void __fastcall Structs::LeaveSafeZone::~LeaveSafeZone(Structs::LeaveSafeZone *this)
{
  *(_DWORD *)this = off_96AA80;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c721c Structs::LeaveSafeZone::~LeaveSafeZone() =====
void __fastcall Structs::LeaveSafeZone::~LeaveSafeZone(Structs::LeaveSafeZone *this)
{
  *(_DWORD *)this = off_96AA80;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7250 Structs::LeaveSafeZone::finalize(void) =====
// attributes: thunk
void __fastcall Structs::LeaveSafeZone::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c7254 Structs::StopEffect::~StopEffect() =====
void __fastcall Structs::StopEffect::~StopEffect(Structs::StopEffect *this)
{
  *(_DWORD *)this = off_96AA20;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7288 Structs::StopEffect::~StopEffect() =====
void __fastcall Structs::StopEffect::~StopEffect(Structs::StopEffect *this)
{
  *(_DWORD *)this = off_96AA20;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c72bc Structs::StopEffect::finalize(void) =====
// attributes: thunk
void __fastcall Structs::StopEffect::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c72c0 Structs::Wait::~Wait() =====
void __fastcall Structs::Wait::~Wait(Structs::Wait *this)
{
  *(_DWORD *)this = off_96A978;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c72f4 Structs::Wait::~Wait() =====
void __fastcall Structs::Wait::~Wait(Structs::Wait *this)
{
  *(_DWORD *)this = off_96A978;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7328 Structs::Wait::finalize(void) =====
// attributes: thunk
void __fastcall Structs::Wait::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c732c Structs::SetFaeryState::~SetFaeryState() =====
void __fastcall Structs::SetFaeryState::~SetFaeryState(Structs::SetFaeryState *this)
{
  *(_DWORD *)this = off_96A960;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7360 Structs::SetFaeryState::~SetFaeryState() =====
void __fastcall Structs::SetFaeryState::~SetFaeryState(Structs::SetFaeryState *this)
{
  *(_DWORD *)this = off_96A960;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7394 Structs::SetFaeryState::finalize(void) =====
// attributes: thunk
void __fastcall Structs::SetFaeryState::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c7398 Structs::IncFaeryLevel::~IncFaeryLevel() =====
void __fastcall Structs::IncFaeryLevel::~IncFaeryLevel(Structs::IncFaeryLevel *this)
{
  *(_DWORD *)this = off_96A948;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c73cc Structs::IncFaeryLevel::~IncFaeryLevel() =====
void __fastcall Structs::IncFaeryLevel::~IncFaeryLevel(Structs::IncFaeryLevel *this)
{
  *(_DWORD *)this = off_96A948;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7400 Structs::IncFaeryLevel::finalize(void) =====
// attributes: thunk
void __fastcall Structs::IncFaeryLevel::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c7404 Structs::AIEnableTimer::~AIEnableTimer() =====
void __fastcall Structs::AIEnableTimer::~AIEnableTimer(Structs::AIEnableTimer *this)
{
  *(_DWORD *)this = off_96A8D0;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7438 Structs::AIEnableTimer::~AIEnableTimer() =====
void __fastcall Structs::AIEnableTimer::~AIEnableTimer(Structs::AIEnableTimer *this)
{
  *(_DWORD *)this = off_96A8D0;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c746c Structs::AIEnableTimer::finalize(void) =====
// attributes: thunk
void __fastcall Structs::AIEnableTimer::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c7470 Structs::AIResetTimer::~AIResetTimer() =====
void __fastcall Structs::AIResetTimer::~AIResetTimer(Structs::AIResetTimer *this)
{
  *(_DWORD *)this = off_96A8B8;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c74a4 Structs::AIResetTimer::~AIResetTimer() =====
void __fastcall Structs::AIResetTimer::~AIResetTimer(Structs::AIResetTimer *this)
{
  *(_DWORD *)this = off_96A8B8;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c74d8 Structs::AIResetTimer::finalize(void) =====
// attributes: thunk
void __fastcall Structs::AIResetTimer::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c74dc Structs::AISetHP::~AISetHP() =====
void __fastcall Structs::AISetHP::~AISetHP(Structs::AISetHP *this)
{
  *(_DWORD *)this = off_96A888;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7510 Structs::AISetHP::~AISetHP() =====
void __fastcall Structs::AISetHP::~AISetHP(Structs::AISetHP *this)
{
  *(_DWORD *)this = off_96A888;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7544 Structs::AISetHP::finalize(void) =====
// attributes: thunk
void __fastcall Structs::AISetHP::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c7548 Structs::SetLevelState::~SetLevelState() =====
void __fastcall Structs::SetLevelState::~SetLevelState(Structs::SetLevelState *this)
{
  *(_DWORD *)this = off_96A630;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c757c Structs::SetLevelState::~SetLevelState() =====
void __fastcall Structs::SetLevelState::~SetLevelState(Structs::SetLevelState *this)
{
  *(_DWORD *)this = off_96A630;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c75b0 Structs::SetLevelState::finalize(void) =====
// attributes: thunk
void __fastcall Structs::SetLevelState::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c75b4 Structs::SetWorldMapLocationState::~SetWorldMapLocationState() =====
void __fastcall Structs::SetWorldMapLocationState::~SetWorldMapLocationState(Structs::SetWorldMapLocationState *this)
{
  *(_DWORD *)this = off_96A618;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c75e8 Structs::SetWorldMapLocationState::~SetWorldMapLocationState() =====
void __fastcall Structs::SetWorldMapLocationState::~SetWorldMapLocationState(Structs::SetWorldMapLocationState *this)
{
  *(_DWORD *)this = off_96A618;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c761c Structs::SetWorldMapLocationState::finalize(void) =====
// attributes: thunk
void __fastcall Structs::SetWorldMapLocationState::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c7620 Structs::RestartLevel::~RestartLevel() =====
void __fastcall Structs::RestartLevel::~RestartLevel(Structs::RestartLevel *this)
{
  *(_DWORD *)this = off_96A600;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7654 Structs::RestartLevel::~RestartLevel() =====
void __fastcall Structs::RestartLevel::~RestartLevel(Structs::RestartLevel *this)
{
  *(_DWORD *)this = off_96A600;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7688 Structs::RestartLevel::finalize(void) =====
// attributes: thunk
void __fastcall Structs::RestartLevel::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c768c Structs::EndGame::~EndGame() =====
void __fastcall Structs::EndGame::~EndGame(Structs::EndGame *this)
{
  *(_DWORD *)this = off_96A5D0;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c76c0 Structs::EndGame::~EndGame() =====
void __fastcall Structs::EndGame::~EndGame(Structs::EndGame *this)
{
  *(_DWORD *)this = off_96A5D0;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c76f4 Structs::EndGame::finalize(void) =====
// attributes: thunk
void __fastcall Structs::EndGame::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c76f8 Structs::AwardTrophy::~AwardTrophy() =====
void __fastcall Structs::AwardTrophy::~AwardTrophy(Structs::AwardTrophy *this)
{
  *(_DWORD *)this = off_96A5B8;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c772c Structs::AwardTrophy::~AwardTrophy() =====
void __fastcall Structs::AwardTrophy::~AwardTrophy(Structs::AwardTrophy *this)
{
  *(_DWORD *)this = off_96A5B8;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7760 Structs::AwardTrophy::finalize(void) =====
// attributes: thunk
void __fastcall Structs::AwardTrophy::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c7764 Structs::AwardEndGameTrophies::~AwardEndGameTrophies() =====
void __fastcall Structs::AwardEndGameTrophies::~AwardEndGameTrophies(Structs::AwardEndGameTrophies *this)
{
  *(_DWORD *)this = off_96A5A0;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7798 Structs::AwardEndGameTrophies::~AwardEndGameTrophies() =====
void __fastcall Structs::AwardEndGameTrophies::~AwardEndGameTrophies(Structs::AwardEndGameTrophies *this)
{
  *(_DWORD *)this = off_96A5A0;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c77cc Structs::AwardEndGameTrophies::finalize(void) =====
// attributes: thunk
void __fastcall Structs::AwardEndGameTrophies::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c77d0 Structs::ShowTrophies::~ShowTrophies() =====
void __fastcall Structs::ShowTrophies::~ShowTrophies(Structs::ShowTrophies *this)
{
  *(_DWORD *)this = off_96A588;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7804 Structs::ShowTrophies::~ShowTrophies() =====
void __fastcall Structs::ShowTrophies::~ShowTrophies(Structs::ShowTrophies *this)
{
  *(_DWORD *)this = off_96A588;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7838 Structs::ShowTrophies::finalize(void) =====
// attributes: thunk
void __fastcall Structs::ShowTrophies::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c783c Structs::SaveGame::~SaveGame() =====
void __fastcall Structs::SaveGame::~SaveGame(Structs::SaveGame *this)
{
  *(_DWORD *)this = off_96A570;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7870 Structs::SaveGame::~SaveGame() =====
void __fastcall Structs::SaveGame::~SaveGame(Structs::SaveGame *this)
{
  *(_DWORD *)this = off_96A570;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c78a4 Structs::SaveGame::finalize(void) =====
// attributes: thunk
void __fastcall Structs::SaveGame::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c78a8 Structs::BlockSaveGame::~BlockSaveGame() =====
void __fastcall Structs::BlockSaveGame::~BlockSaveGame(Structs::BlockSaveGame *this)
{
  *(_DWORD *)this = off_96A558;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c78dc Structs::BlockSaveGame::~BlockSaveGame() =====
void __fastcall Structs::BlockSaveGame::~BlockSaveGame(Structs::BlockSaveGame *this)
{
  *(_DWORD *)this = off_96A558;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7910 Structs::BlockSaveGame::finalize(void) =====
// attributes: thunk
void __fastcall Structs::BlockSaveGame::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c7914 Structs::EnqueueTutorialMessage::~EnqueueTutorialMessage() =====
void __fastcall Structs::EnqueueTutorialMessage::~EnqueueTutorialMessage(Structs::EnqueueTutorialMessage *this)
{
  *(_DWORD *)this = off_96A540;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7948 Structs::EnqueueTutorialMessage::~EnqueueTutorialMessage() =====
void __fastcall Structs::EnqueueTutorialMessage::~EnqueueTutorialMessage(Structs::EnqueueTutorialMessage *this)
{
  *(_DWORD *)this = off_96A540;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c797c Structs::EnqueueTutorialMessage::finalize(void) =====
// attributes: thunk
void __fastcall Structs::EnqueueTutorialMessage::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c7980 Structs::SkipTutorialMessage::~SkipTutorialMessage() =====
void __fastcall Structs::SkipTutorialMessage::~SkipTutorialMessage(Structs::SkipTutorialMessage *this)
{
  *(_DWORD *)this = off_96A528;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c79b4 Structs::SkipTutorialMessage::~SkipTutorialMessage() =====
void __fastcall Structs::SkipTutorialMessage::~SkipTutorialMessage(Structs::SkipTutorialMessage *this)
{
  *(_DWORD *)this = off_96A528;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c79e8 Structs::SkipTutorialMessage::finalize(void) =====
// attributes: thunk
void __fastcall Structs::SkipTutorialMessage::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c79ec Structs::SkipAllTutorialMessages::~SkipAllTutorialMessages() =====
void __fastcall Structs::SkipAllTutorialMessages::~SkipAllTutorialMessages(Structs::SkipAllTutorialMessages *this)
{
  *(_DWORD *)this = off_96A510;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7a20 Structs::SkipAllTutorialMessages::~SkipAllTutorialMessages() =====
void __fastcall Structs::SkipAllTutorialMessages::~SkipAllTutorialMessages(Structs::SkipAllTutorialMessages *this)
{
  *(_DWORD *)this = off_96A510;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7a54 Structs::SkipAllTutorialMessages::finalize(void) =====
// attributes: thunk
void __fastcall Structs::SkipAllTutorialMessages::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c7a58 Structs::SkipCharMenuTutorialMessage::~SkipCharMenuTutorialMessage() =====
void __fastcall Structs::SkipCharMenuTutorialMessage::~SkipCharMenuTutorialMessage(
        Structs::SkipCharMenuTutorialMessage *this)
{
  *(_DWORD *)this = off_96A4E0;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7a8c Structs::SkipCharMenuTutorialMessage::~SkipCharMenuTutorialMessage() =====
void __fastcall Structs::SkipCharMenuTutorialMessage::~SkipCharMenuTutorialMessage(
        Structs::SkipCharMenuTutorialMessage *this)
{
  *(_DWORD *)this = off_96A4E0;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7ac0 Structs::SkipCharMenuTutorialMessage::finalize(void) =====
// attributes: thunk
void __fastcall Structs::SkipCharMenuTutorialMessage::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c7ac4 Structs::SkipAllCharMenuTutorialMessages::~SkipAllCharMenuTutorialMessages() =====
void __fastcall Structs::SkipAllCharMenuTutorialMessages::~SkipAllCharMenuTutorialMessages(
        Structs::SkipAllCharMenuTutorialMessages *this)
{
  *(_DWORD *)this = off_96A4C8;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7af8 Structs::SkipAllCharMenuTutorialMessages::~SkipAllCharMenuTutorialMessages() =====
void __fastcall Structs::SkipAllCharMenuTutorialMessages::~SkipAllCharMenuTutorialMessages(
        Structs::SkipAllCharMenuTutorialMessages *this)
{
  *(_DWORD *)this = off_96A4C8;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7b2c Structs::SkipAllCharMenuTutorialMessages::finalize(void) =====
// attributes: thunk
void __fastcall Structs::SkipAllCharMenuTutorialMessages::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c7b30 Structs::LockTutorial::~LockTutorial() =====
void __fastcall Structs::LockTutorial::~LockTutorial(Structs::LockTutorial *this)
{
  *(_DWORD *)this = off_96A4B0;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7b64 Structs::LockTutorial::~LockTutorial() =====
void __fastcall Structs::LockTutorial::~LockTutorial(Structs::LockTutorial *this)
{
  *(_DWORD *)this = off_96A4B0;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7b98 Structs::LockTutorial::finalize(void) =====
// attributes: thunk
void __fastcall Structs::LockTutorial::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c7b9c Structs::FlushMessages::~FlushMessages() =====
void __fastcall Structs::FlushMessages::~FlushMessages(Structs::FlushMessages *this)
{
  *(_DWORD *)this = off_96A480;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7bd0 Structs::FlushMessages::~FlushMessages() =====
void __fastcall Structs::FlushMessages::~FlushMessages(Structs::FlushMessages *this)
{
  *(_DWORD *)this = off_96A480;
  Structs::ScriptCmd::~ScriptCmd(this);
}


// ===== 4c7c04 Structs::FlushMessages::finalize(void) =====
// attributes: thunk
void __fastcall Structs::FlushMessages::finalize(Structs::ScriptCmd *this)
{
  Structs::ScriptCmd::finalize(this);
}


// ===== 4c7c08 Structs::SoundBank::~SoundBank() =====
void __fastcall Structs::SoundBank::~SoundBank(Structs::SoundBank *this)
{
  ;
}


// ===== 4c7c0c Structs::SoundBank::~SoundBank() =====
void __fastcall Structs::SoundBank::~SoundBank(Structs::SoundBank *this)
{
  ;
}


// ===== 4c7c10 Structs::SoundBank::finalize(void) =====
void __fastcall Structs::SoundBank::finalize(Structs::SoundBank *this)
{
  ;
}


// ===== 4c7c14 Structs::SoundAutoGen::~SoundAutoGen() =====
void __fastcall Structs::SoundAutoGen::~SoundAutoGen(Structs::SoundAutoGen *this)
{
  ;
}


// ===== 4c7c18 Structs::SoundAutoGen::~SoundAutoGen() =====
void __fastcall Structs::SoundAutoGen::~SoundAutoGen(Structs::SoundAutoGen *this)
{
  ;
}


// ===== 4c7c1c Structs::SoundAutoGen::finalize(void) =====
void __fastcall Structs::SoundAutoGen::finalize(Structs::SoundAutoGen *this)
{
  ;
}


// ===== 4c7c20 Structs::SoundEventAutoGen::~SoundEventAutoGen() =====
void __fastcall Structs::SoundEventAutoGen::~SoundEventAutoGen(Structs::SoundEventAutoGen *this)
{
  *(_DWORD *)this = off_96A3D8;
  Structs::SoundAutoGen::~SoundAutoGen(this);
}


// ===== 4c7c54 Structs::SoundEventAutoGen::~SoundEventAutoGen() =====
void __fastcall Structs::SoundEventAutoGen::~SoundEventAutoGen(Structs::SoundEventAutoGen *this)
{
  *(_DWORD *)this = off_96A3D8;
  Structs::SoundAutoGen::~SoundAutoGen(this);
}


// ===== 4c7c88 Structs::SoundEventAutoGen::finalize(void) =====
// attributes: thunk
void __fastcall Structs::SoundEventAutoGen::finalize(Structs::SoundAutoGen *this)
{
  Structs::SoundAutoGen::finalize(this);
}


// ===== 4c7c8c Structs::ListenerVector::~ListenerVector() =====
void __fastcall Structs::ListenerVector::~ListenerVector(Structs::ListenerVector *this)
{
  ;
}


// ===== 4c7c90 Structs::ListenerVector::~ListenerVector() =====
void __fastcall Structs::ListenerVector::~ListenerVector(Structs::ListenerVector *this)
{
  ;
}


// ===== 4c7c94 Structs::ListenerVector::finalize(void) =====
void __fastcall Structs::ListenerVector::finalize(Structs::ListenerVector *this)
{
  ;
}


// ===== 4c7c98 Structs::Listener::~Listener() =====
void __fastcall Structs::Listener::~Listener(Structs::Listener *this)
{
  ;
}


// ===== 4c7c9c Structs::Listener::~Listener() =====
void __fastcall Structs::Listener::~Listener(Structs::Listener *this)
{
  ;
}


// ===== 4c7ca0 Structs::Listener::finalize(void) =====
void __fastcall Structs::Listener::finalize(Structs::Listener *this)
{
  ;
}


// ===== 4c7ca4 Structs::SpawnInfo::~SpawnInfo() =====
void __fastcall Structs::SpawnInfo::~SpawnInfo(Structs::SpawnInfo *this)
{
  ;
}


// ===== 4c7ca8 Structs::SpawnInfo::~SpawnInfo() =====
void __fastcall Structs::SpawnInfo::~SpawnInfo(Structs::SpawnInfo *this)
{
  ;
}


// ===== 4c7cac Structs::SpawnInfo::finalize(void) =====
void __fastcall Structs::SpawnInfo::finalize(Structs::SpawnInfo *this)
{
  ;
}


// ===== 4c7cb0 Structs::Trophy::~Trophy() =====
void __fastcall Structs::Trophy::~Trophy(Structs::Trophy *this)
{
  ;
}


// ===== 4c7cb4 Structs::Trophy::~Trophy() =====
void __fastcall Structs::Trophy::~Trophy(Structs::Trophy *this)
{
  ;
}


// ===== 4c7cb8 Structs::Trophy::finalize(void) =====
void __fastcall Structs::Trophy::finalize(Structs::Trophy *this)
{
  ;
}


// ===== 4c7cbc Structs::v2Condition::~v2Condition() =====
void __fastcall Structs::v2Condition::~v2Condition(Structs::v2Condition *this)
{
  ;
}


// ===== 4c7cc0 Structs::v2Condition::~v2Condition() =====
void __fastcall Structs::v2Condition::~v2Condition(Structs::v2Condition *this)
{
  ;
}


// ===== 4c7cc4 Structs::v2Condition::finalize(void) =====
void __fastcall Structs::v2Condition::finalize(Structs::v2Condition *this)
{
  ;
}


// ===== 4c7cc8 Structs::v2ConditionStub::~v2ConditionStub() =====
void __fastcall Structs::v2ConditionStub::~v2ConditionStub(Structs::v2ConditionStub *this)
{
  *(_DWORD *)this = off_96A318;
  Structs::v2Condition::~v2Condition(this);
}


// ===== 4c7cfc Structs::v2ConditionStub::~v2ConditionStub() =====
void __fastcall Structs::v2ConditionStub::~v2ConditionStub(Structs::v2ConditionStub *this)
{
  *(_DWORD *)this = off_96A318;
  Structs::v2Condition::~v2Condition(this);
}


// ===== 4c7d30 Structs::v2ConditionStub::finalize(void) =====
// attributes: thunk
void __fastcall Structs::v2ConditionStub::finalize(Structs::v2Condition *this)
{
  Structs::v2Condition::finalize(this);
}


// ===== 4c7d34 Structs::v2IsQuestInState::~v2IsQuestInState() =====
void __fastcall Structs::v2IsQuestInState::~v2IsQuestInState(Structs::v2IsQuestInState *this)
{
  *(_DWORD *)this = off_96A300;
  Structs::v2Condition::~v2Condition(this);
}


// ===== 4c7d68 Structs::v2IsQuestInState::~v2IsQuestInState() =====
void __fastcall Structs::v2IsQuestInState::~v2IsQuestInState(Structs::v2IsQuestInState *this)
{
  *(_DWORD *)this = off_96A300;
  Structs::v2Condition::~v2Condition(this);
}


// ===== 4c7d9c Structs::v2IsQuestInState::finalize(void) =====
// attributes: thunk
void __fastcall Structs::v2IsQuestInState::finalize(Structs::v2Condition *this)
{
  Structs::v2Condition::finalize(this);
}


// ===== 4c7da0 Structs::v2IsQuestStateLower::~v2IsQuestStateLower() =====
void __fastcall Structs::v2IsQuestStateLower::~v2IsQuestStateLower(Structs::v2IsQuestStateLower *this)
{
  *(_DWORD *)this = off_96A2E8;
  Structs::v2Condition::~v2Condition(this);
}


// ===== 4c7dd4 Structs::v2IsQuestStateLower::~v2IsQuestStateLower() =====
void __fastcall Structs::v2IsQuestStateLower::~v2IsQuestStateLower(Structs::v2IsQuestStateLower *this)
{
  *(_DWORD *)this = off_96A2E8;
  Structs::v2Condition::~v2Condition(this);
}


// ===== 4c7e08 Structs::v2IsQuestStateLower::finalize(void) =====
// attributes: thunk
void __fastcall Structs::v2IsQuestStateLower::finalize(Structs::v2Condition *this)
{
  Structs::v2Condition::finalize(this);
}


// ===== 4c7e0c Structs::v2IsQuestStateHigher::~v2IsQuestStateHigher() =====
void __fastcall Structs::v2IsQuestStateHigher::~v2IsQuestStateHigher(Structs::v2IsQuestStateHigher *this)
{
  *(_DWORD *)this = off_96A2D0;
  Structs::v2Condition::~v2Condition(this);
}


// ===== 4c7e40 Structs::v2IsQuestStateHigher::~v2IsQuestStateHigher() =====
void __fastcall Structs::v2IsQuestStateHigher::~v2IsQuestStateHigher(Structs::v2IsQuestStateHigher *this)
{
  *(_DWORD *)this = off_96A2D0;
  Structs::v2Condition::~v2Condition(this);
}


// ===== 4c7e74 Structs::v2IsQuestStateHigher::finalize(void) =====
// attributes: thunk
void __fastcall Structs::v2IsQuestStateHigher::finalize(Structs::v2Condition *this)
{
  Structs::v2Condition::finalize(this);
}


// ===== 4c7e78 Structs::v2IsPlayerInLevel::~v2IsPlayerInLevel() =====
void __fastcall Structs::v2IsPlayerInLevel::~v2IsPlayerInLevel(Structs::v2IsPlayerInLevel *this)
{
  *(_DWORD *)this = off_96A2B8;
  Structs::v2Condition::~v2Condition(this);
}


// ===== 4c7eac Structs::v2IsPlayerInLevel::~v2IsPlayerInLevel() =====
void __fastcall Structs::v2IsPlayerInLevel::~v2IsPlayerInLevel(Structs::v2IsPlayerInLevel *this)
{
  *(_DWORD *)this = off_96A2B8;
  Structs::v2Condition::~v2Condition(this);
}


// ===== 4c7ee0 Structs::v2IsPlayerInLevel::finalize(void) =====
// attributes: thunk
void __fastcall Structs::v2IsPlayerInLevel::finalize(Structs::v2Condition *this)
{
  Structs::v2Condition::finalize(this);
}


// ===== 4c7ee4 Structs::v2IsQuestLocked::~v2IsQuestLocked() =====
void __fastcall Structs::v2IsQuestLocked::~v2IsQuestLocked(Structs::v2IsQuestLocked *this)
{
  *(_DWORD *)this = off_96A2A0;
  Structs::v2IsQuestInState::~v2IsQuestInState(this);
}


// ===== 4c7f18 Structs::v2IsQuestLocked::~v2IsQuestLocked() =====
void __fastcall Structs::v2IsQuestLocked::~v2IsQuestLocked(Structs::v2IsQuestLocked *this)
{
  *(_DWORD *)this = off_96A2A0;
  Structs::v2IsQuestInState::~v2IsQuestInState(this);
}


// ===== 4c7f4c Structs::v2IsQuestLocked::finalize(void) =====
// attributes: thunk
void __fastcall Structs::v2IsQuestLocked::finalize(Structs::v2Condition *this)
{
  Structs::v2IsQuestInState::finalize(this);
}


// ===== 4c7f50 Structs::v2IsQuestActive::~v2IsQuestActive() =====
void __fastcall Structs::v2IsQuestActive::~v2IsQuestActive(Structs::v2IsQuestActive *this)
{
  *(_DWORD *)this = off_96A288;
  Structs::v2IsQuestInState::~v2IsQuestInState(this);
}


// ===== 4c7f84 Structs::v2IsQuestActive::~v2IsQuestActive() =====
void __fastcall Structs::v2IsQuestActive::~v2IsQuestActive(Structs::v2IsQuestActive *this)
{
  *(_DWORD *)this = off_96A288;
  Structs::v2IsQuestInState::~v2IsQuestInState(this);
}


// ===== 4c7fb8 Structs::v2IsQuestActive::finalize(void) =====
// attributes: thunk
void __fastcall Structs::v2IsQuestActive::finalize(Structs::v2Condition *this)
{
  Structs::v2IsQuestInState::finalize(this);
}


// ===== 4c7fbc Structs::v2IsQuestCompleted::~v2IsQuestCompleted() =====
void __fastcall Structs::v2IsQuestCompleted::~v2IsQuestCompleted(Structs::v2IsQuestCompleted *this)
{
  *(_DWORD *)this = off_96A270;
  Structs::v2IsQuestInState::~v2IsQuestInState(this);
}


// ===== 4c7ff0 Structs::v2IsQuestCompleted::~v2IsQuestCompleted() =====
void __fastcall Structs::v2IsQuestCompleted::~v2IsQuestCompleted(Structs::v2IsQuestCompleted *this)
{
  *(_DWORD *)this = off_96A270;
  Structs::v2IsQuestInState::~v2IsQuestInState(this);
}


// ===== 4c8024 Structs::v2IsQuestCompleted::finalize(void) =====
// attributes: thunk
void __fastcall Structs::v2IsQuestCompleted::finalize(Structs::v2Condition *this)
{
  Structs::v2IsQuestInState::finalize(this);
}


// ===== 4c8028 Structs::v2IsQuestClosed::~v2IsQuestClosed() =====
void __fastcall Structs::v2IsQuestClosed::~v2IsQuestClosed(Structs::v2IsQuestClosed *this)
{
  *(_DWORD *)this = off_96A258;
  Structs::v2IsQuestInState::~v2IsQuestInState(this);
}


// ===== 4c805c Structs::v2IsQuestClosed::~v2IsQuestClosed() =====
void __fastcall Structs::v2IsQuestClosed::~v2IsQuestClosed(Structs::v2IsQuestClosed *this)
{
  *(_DWORD *)this = off_96A258;
  Structs::v2IsQuestInState::~v2IsQuestInState(this);
}


// ===== 4c8090 Structs::v2IsQuestClosed::finalize(void) =====
// attributes: thunk
void __fastcall Structs::v2IsQuestClosed::finalize(Structs::v2Condition *this)
{
  Structs::v2IsQuestInState::finalize(this);
}


// ===== 4c8094 Structs::v2IsQuestPostClosed::~v2IsQuestPostClosed() =====
void __fastcall Structs::v2IsQuestPostClosed::~v2IsQuestPostClosed(Structs::v2IsQuestPostClosed *this)
{
  *(_DWORD *)this = off_96A240;
  Structs::v2IsQuestInState::~v2IsQuestInState(this);
}


// ===== 4c80c8 Structs::v2IsQuestPostClosed::~v2IsQuestPostClosed() =====
void __fastcall Structs::v2IsQuestPostClosed::~v2IsQuestPostClosed(Structs::v2IsQuestPostClosed *this)
{
  *(_DWORD *)this = off_96A240;
  Structs::v2IsQuestInState::~v2IsQuestInState(this);
}


// ===== 4c80fc Structs::v2IsQuestPostClosed::finalize(void) =====
// attributes: thunk
void __fastcall Structs::v2IsQuestPostClosed::finalize(Structs::v2Condition *this)
{
  Structs::v2IsQuestInState::finalize(this);
}


// ===== 4c8100 Structs::v2IsQuestLowerThenLocked::~v2IsQuestLowerThenLocked() =====
void __fastcall Structs::v2IsQuestLowerThenLocked::~v2IsQuestLowerThenLocked(Structs::v2IsQuestLowerThenLocked *this)
{
  *(_DWORD *)this = off_96A228;
  Structs::v2IsQuestStateLower::~v2IsQuestStateLower(this);
}


// ===== 4c8134 Structs::v2IsQuestLowerThenLocked::~v2IsQuestLowerThenLocked() =====
void __fastcall Structs::v2IsQuestLowerThenLocked::~v2IsQuestLowerThenLocked(Structs::v2IsQuestLowerThenLocked *this)
{
  *(_DWORD *)this = off_96A228;
  Structs::v2IsQuestStateLower::~v2IsQuestStateLower(this);
}


// ===== 4c8168 Structs::v2IsQuestLowerThenLocked::finalize(void) =====
// attributes: thunk
void __fastcall Structs::v2IsQuestLowerThenLocked::finalize(Structs::v2Condition *this)
{
  Structs::v2IsQuestStateLower::finalize(this);
}


// ===== 4c816c Structs::v2IsQuestLowerThenAvailable::~v2IsQuestLowerThenAvailable() =====
void __fastcall Structs::v2IsQuestLowerThenAvailable::~v2IsQuestLowerThenAvailable(
        Structs::v2IsQuestLowerThenAvailable *this)
{
  *(_DWORD *)this = off_96A210;
  Structs::v2IsQuestStateLower::~v2IsQuestStateLower(this);
}


// ===== 4c81a0 Structs::v2IsQuestLowerThenAvailable::~v2IsQuestLowerThenAvailable() =====
void __fastcall Structs::v2IsQuestLowerThenAvailable::~v2IsQuestLowerThenAvailable(
        Structs::v2IsQuestLowerThenAvailable *this)
{
  *(_DWORD *)this = off_96A210;
  Structs::v2IsQuestStateLower::~v2IsQuestStateLower(this);
}


// ===== 4c81d4 Structs::v2IsQuestLowerThenAvailable::finalize(void) =====
// attributes: thunk
void __fastcall Structs::v2IsQuestLowerThenAvailable::finalize(Structs::v2Condition *this)
{
  Structs::v2IsQuestStateLower::finalize(this);
}


// ===== 4c81d8 Structs::v2IsQuestLowerThenActive::~v2IsQuestLowerThenActive() =====
void __fastcall Structs::v2IsQuestLowerThenActive::~v2IsQuestLowerThenActive(Structs::v2IsQuestLowerThenActive *this)
{
  *(_DWORD *)this = off_96A1F8;
  Structs::v2IsQuestStateLower::~v2IsQuestStateLower(this);
}


// ===== 4c820c Structs::v2IsQuestLowerThenActive::~v2IsQuestLowerThenActive() =====
void __fastcall Structs::v2IsQuestLowerThenActive::~v2IsQuestLowerThenActive(Structs::v2IsQuestLowerThenActive *this)
{
  *(_DWORD *)this = off_96A1F8;
  Structs::v2IsQuestStateLower::~v2IsQuestStateLower(this);
}


// ===== 4c8240 Structs::v2IsQuestLowerThenActive::finalize(void) =====
// attributes: thunk
void __fastcall Structs::v2IsQuestLowerThenActive::finalize(Structs::v2Condition *this)
{
  Structs::v2IsQuestStateLower::finalize(this);
}


// ===== 4c8244 Structs::v2IsQuestLowerThenCompleted::~v2IsQuestLowerThenCompleted() =====
void __fastcall Structs::v2IsQuestLowerThenCompleted::~v2IsQuestLowerThenCompleted(
        Structs::v2IsQuestLowerThenCompleted *this)
{
  *(_DWORD *)this = off_96A1E0;
  Structs::v2IsQuestStateLower::~v2IsQuestStateLower(this);
}


// ===== 4c8278 Structs::v2IsQuestLowerThenCompleted::~v2IsQuestLowerThenCompleted() =====
void __fastcall Structs::v2IsQuestLowerThenCompleted::~v2IsQuestLowerThenCompleted(
        Structs::v2IsQuestLowerThenCompleted *this)
{
  *(_DWORD *)this = off_96A1E0;
  Structs::v2IsQuestStateLower::~v2IsQuestStateLower(this);
}


// ===== 4c82ac Structs::v2IsQuestLowerThenCompleted::finalize(void) =====
// attributes: thunk
void __fastcall Structs::v2IsQuestLowerThenCompleted::finalize(Structs::v2Condition *this)
{
  Structs::v2IsQuestStateLower::finalize(this);
}


// ===== 4c82b0 Structs::v2IsQuestLowerThenClosed::~v2IsQuestLowerThenClosed() =====
void __fastcall Structs::v2IsQuestLowerThenClosed::~v2IsQuestLowerThenClosed(Structs::v2IsQuestLowerThenClosed *this)
{
  *(_DWORD *)this = off_96A1C8;
  Structs::v2IsQuestStateLower::~v2IsQuestStateLower(this);
}


// ===== 4c82e4 Structs::v2IsQuestLowerThenClosed::~v2IsQuestLowerThenClosed() =====
void __fastcall Structs::v2IsQuestLowerThenClosed::~v2IsQuestLowerThenClosed(Structs::v2IsQuestLowerThenClosed *this)
{
  *(_DWORD *)this = off_96A1C8;
  Structs::v2IsQuestStateLower::~v2IsQuestStateLower(this);
}


// ===== 4c8318 Structs::v2IsQuestLowerThenClosed::finalize(void) =====
// attributes: thunk
void __fastcall Structs::v2IsQuestLowerThenClosed::finalize(Structs::v2Condition *this)
{
  Structs::v2IsQuestStateLower::finalize(this);
}


// ===== 4c831c Structs::v2IsQuestLowerThenPostClosed::~v2IsQuestLowerThenPostClosed() =====
void __fastcall Structs::v2IsQuestLowerThenPostClosed::~v2IsQuestLowerThenPostClosed(
        Structs::v2IsQuestLowerThenPostClosed *this)
{
  *(_DWORD *)this = off_96A1B0;
  Structs::v2IsQuestStateLower::~v2IsQuestStateLower(this);
}


// ===== 4c8350 Structs::v2IsQuestLowerThenPostClosed::~v2IsQuestLowerThenPostClosed() =====
void __fastcall Structs::v2IsQuestLowerThenPostClosed::~v2IsQuestLowerThenPostClosed(
        Structs::v2IsQuestLowerThenPostClosed *this)
{
  *(_DWORD *)this = off_96A1B0;
  Structs::v2IsQuestStateLower::~v2IsQuestStateLower(this);
}


// ===== 4c8384 Structs::v2IsQuestLowerThenPostClosed::finalize(void) =====
// attributes: thunk
void __fastcall Structs::v2IsQuestLowerThenPostClosed::finalize(Structs::v2Condition *this)
{
  Structs::v2IsQuestStateLower::finalize(this);
}


// ===== 4c8388 Structs::v2IsQuestHigherThenLocked::~v2IsQuestHigherThenLocked() =====
void __fastcall Structs::v2IsQuestHigherThenLocked::~v2IsQuestHigherThenLocked(
        Structs::v2IsQuestHigherThenLocked *this)
{
  *(_DWORD *)this = off_96A198;
  Structs::v2IsQuestStateHigher::~v2IsQuestStateHigher(this);
}


// ===== 4c83bc Structs::v2IsQuestHigherThenLocked::~v2IsQuestHigherThenLocked() =====
void __fastcall Structs::v2IsQuestHigherThenLocked::~v2IsQuestHigherThenLocked(
        Structs::v2IsQuestHigherThenLocked *this)
{
  *(_DWORD *)this = off_96A198;
  Structs::v2IsQuestStateHigher::~v2IsQuestStateHigher(this);
}


// ===== 4c83f0 Structs::v2IsQuestHigherThenLocked::finalize(void) =====
// attributes: thunk
void __fastcall Structs::v2IsQuestHigherThenLocked::finalize(Structs::v2Condition *this)
{
  Structs::v2IsQuestStateHigher::finalize(this);
}


// ===== 4c83f4 Structs::v2IsQuestHigherThenAvailable::~v2IsQuestHigherThenAvailable() =====
void __fastcall Structs::v2IsQuestHigherThenAvailable::~v2IsQuestHigherThenAvailable(
        Structs::v2IsQuestHigherThenAvailable *this)
{
  *(_DWORD *)this = off_96A180;
  Structs::v2IsQuestStateHigher::~v2IsQuestStateHigher(this);
}


// ===== 4c8428 Structs::v2IsQuestHigherThenAvailable::~v2IsQuestHigherThenAvailable() =====
void __fastcall Structs::v2IsQuestHigherThenAvailable::~v2IsQuestHigherThenAvailable(
        Structs::v2IsQuestHigherThenAvailable *this)
{
  *(_DWORD *)this = off_96A180;
  Structs::v2IsQuestStateHigher::~v2IsQuestStateHigher(this);
}


// ===== 4c845c Structs::v2IsQuestHigherThenAvailable::finalize(void) =====
// attributes: thunk
void __fastcall Structs::v2IsQuestHigherThenAvailable::finalize(Structs::v2Condition *this)
{
  Structs::v2IsQuestStateHigher::finalize(this);
}


// ===== 4c8460 Structs::v2IsQuestHigherThenActive::~v2IsQuestHigherThenActive() =====
void __fastcall Structs::v2IsQuestHigherThenActive::~v2IsQuestHigherThenActive(
        Structs::v2IsQuestHigherThenActive *this)
{
  *(_DWORD *)this = off_96A168;
  Structs::v2IsQuestStateHigher::~v2IsQuestStateHigher(this);
}


// ===== 4c8494 Structs::v2IsQuestHigherThenActive::~v2IsQuestHigherThenActive() =====
void __fastcall Structs::v2IsQuestHigherThenActive::~v2IsQuestHigherThenActive(
        Structs::v2IsQuestHigherThenActive *this)
{
  *(_DWORD *)this = off_96A168;
  Structs::v2IsQuestStateHigher::~v2IsQuestStateHigher(this);
}


// ===== 4c84c8 Structs::v2IsQuestHigherThenActive::finalize(void) =====
// attributes: thunk
void __fastcall Structs::v2IsQuestHigherThenActive::finalize(Structs::v2Condition *this)
{
  Structs::v2IsQuestStateHigher::finalize(this);
}


// ===== 4c84cc Structs::v2IsQuestHigherThenCompleted::~v2IsQuestHigherThenCompleted() =====
void __fastcall Structs::v2IsQuestHigherThenCompleted::~v2IsQuestHigherThenCompleted(
        Structs::v2IsQuestHigherThenCompleted *this)
{
  *(_DWORD *)this = off_96A150;
  Structs::v2IsQuestStateHigher::~v2IsQuestStateHigher(this);
}

