// ===== 706e88 FT_GlyphLoader_Reset =====
int __fastcall FT_GlyphLoader_Reset(int *a1)
{
  int v1; // r6
  int v3; // r1
  int v4; // r1
  int v5; // r1

  v1 = *a1;
  ft_mem_free(*a1, a1[6]);
  v3 = a1[7];
  a1[6] = 0;
  ft_mem_free(v1, v3);
  v4 = a1[8];
  a1[7] = 0;
  ft_mem_free(v1, v4);
  v5 = a1[10];
  a1[8] = 0;
  ft_mem_free(v1, v5);
  a1[10] = 0;
  ft_mem_free(v1, a1[13]);
  a1[3] = 0;
  a1[13] = 0;
  a1[11] = 0;
  a1[1] = 0;
  a1[2] = 0;
  return FT_GlyphLoader_Rewind((int)a1);
}


// ===== 706f04 FT_GlyphLoader_Done =====
int *__fastcall FT_GlyphLoader_Done(int *result)
{
  int v1; // r4
  int v2; // r5

  v1 = (int)result;
  if ( result )
  {
    v2 = *result;
    FT_GlyphLoader_Reset(result);
    return (int *)ft_mem_free(v2, v1);
  }
  return result;
}


// ===== 706f2c ft_glyphslot_done =====
int __fastcall ft_glyphslot_done(int a1)
{
  int v2; // r5
  int v3; // r6
  void (*v4)(void); // r3
  int result; // r0

  v2 = *(_DWORD *)(*(_DWORD *)(a1 + 4) + 96);
  v3 = *(_DWORD *)(v2 + 8);
  v4 = *(void (**)(void))(*(_DWORD *)(v2 + 20) + 68);
  if ( v4 )
    v4();
  ft_glyphslot_free_bitmap((_DWORD *)a1);
  if ( (**(_DWORD **)v2 & 0x200) == 0 )
  {
    FT_GlyphLoader_Done(**(int ***)(a1 + 156));
    **(_DWORD **)(a1 + 156) = 0;
  }
  result = ft_mem_free(v3, *(_DWORD *)(a1 + 156));
  *(_DWORD *)(a1 + 156) = 0;
  return result;
}


// ===== 706f98 FT_Done_GlyphSlot =====
int __fastcall FT_Done_GlyphSlot(int result)
{
  int v1; // r4
  int v2; // r3
  int v3; // r2
  int v4; // r5
  int v5; // r3

  v1 = result;
  if ( result )
  {
    v2 = *(_DWORD *)(result + 4);
    v3 = *(_DWORD *)(v2 + 84);
    v4 = *(_DWORD *)(*(_DWORD *)(v2 + 96) + 8);
    if ( v3 )
    {
      if ( result == v3 )
      {
        *(_DWORD *)(v2 + 84) = *(_DWORD *)(result + 8);
LABEL_10:
        ft_glyphslot_done(result);
        return ft_mem_free(v4, v1);
      }
      else
      {
        while ( 1 )
        {
          v5 = *(_DWORD *)(v3 + 8);
          if ( !v5 )
            break;
          if ( result == v5 )
          {
            *(_DWORD *)(v3 + 8) = *(_DWORD *)(result + 8);
            goto LABEL_10;
          }
          v3 = *(_DWORD *)(v3 + 8);
        }
      }
    }
  }
  return result;
}


// ===== 707010 ft_mem_strcpyn =====
int __fastcall ft_mem_strcpyn(_BYTE *a1, _BYTE *a2, unsigned int a3)
{
  int result; // r0

  if ( a3 > 1 )
  {
    do
    {
      if ( !*a2 )
        break;
      --a3;
      *a1++ = *a2++;
    }
    while ( a3 != 1 );
  }
  *a1 = 0;
  result = (char)*a2;
  if ( *a2 )
    return 1;
  return result;
}


// ===== 707054 FT_List_Find =====
int __fastcall FT_List_Find(int *a1, int a2)
{
  int result; // r0

  for ( result = *a1; result && *(_DWORD *)(result + 8) != a2; result = *(_DWORD *)(result + 4) )
    ;
  return result;
}


// ===== 70708c FT_List_Add =====
_DWORD *__fastcall FT_List_Add(_DWORD *result, _DWORD *a2)
{
  int v2; // r3

  v2 = result[1];
  a2[1] = 0;
  *a2 = v2;
  if ( v2 )
    *(_DWORD *)(v2 + 4) = a2;
  else
    *result = a2;
  result[1] = a2;
  return result;
}


// ===== 7070b0 FT_List_Insert =====
int __fastcall FT_List_Insert(int result, _DWORD *a2)
{
  _DWORD *v2; // r3

  v2 = *(_DWORD **)result;
  *a2 = 0;
  a2[1] = v2;
  if ( v2 )
    *v2 = a2;
  else
    *(_DWORD *)(result + 4) = a2;
  *(_DWORD *)result = a2;
  return result;
}


// ===== 7070d4 FT_List_Remove =====
_DWORD *__fastcall FT_List_Remove(_DWORD *result, int *a2)
{
  int v2; // r3
  _DWORD *v3; // r2

  v2 = *a2;
  v3 = (_DWORD *)a2[1];
  if ( *a2 )
    *(_DWORD *)(v2 + 4) = v3;
  else
    *result = v3;
  if ( v3 )
    *v3 = v2;
  else
    result[1] = v2;
  return result;
}


// ===== 7070f8 FT_Done_Size =====
int __fastcall FT_Done_Size(_DWORD *a1)
{
  _DWORD *v2; // r4
  int v3; // r6
  int v4; // r8
  int *v5; // r10
  int v7; // r3

  if ( !a1 )
    return 36;
  v2 = (_DWORD *)*a1;
  if ( !*a1 )
    return 35;
  v3 = v2[24];
  if ( !v3 )
    return 34;
  v4 = *(_DWORD *)(v3 + 8);
  v5 = (int *)FT_List_Find(v2 + 27, (int)a1);
  if ( !v5 )
    return 36;
  FT_List_Remove(v2 + 27, v5);
  ft_mem_free(v4, (int)v5);
  if ( (_DWORD *)v2[22] == a1 )
  {
    v7 = v2[27];
    v2[22] = 0;
    if ( v7 )
      v2[22] = *(_DWORD *)(v7 + 8);
  }
  destroy_size(v4, (int)a1, v3);
  return 0;
}


// ===== 7071a8 FT_List_Up =====
int **__fastcall FT_List_Up(int **result, int *a2)
{
  int *v2; // r3
  int **v3; // r2

  v2 = (int *)*a2;
  v3 = (int **)a2[1];
  if ( *a2 )
  {
    v2[1] = (int)v3;
    if ( v3 )
      *v3 = v2;
    else
      result[1] = v2;
    *a2 = 0;
    a2[1] = (int)*result;
    **result = (int)a2;
    *result = a2;
  }
  return result;
}


// ===== 7071e8 FT_Set_Renderer =====
int __fastcall FT_Set_Renderer(int a1, int a2, int a3, _DWORD *a4)
{
  int *v8; // r1
  int (__fastcall *v9)(int, _DWORD, _DWORD); // r5
  int result; // r0

  if ( !a1 )
    return 33;
  if ( !a2 )
    return 6;
  v8 = (int *)FT_List_Find((int *)(a1 + 156), a2);
  if ( !v8 )
    return 6;
  FT_List_Up((int **)(a1 + 156), v8);
  if ( *(_DWORD *)(a2 + 24) == 1869968492 )
    *(_DWORD *)(a1 + 164) = a2;
  if ( !a3 )
    return 0;
  v9 = *(int (__fastcall **)(int, _DWORD, _DWORD))(*(_DWORD *)(a2 + 20) + 52);
  do
  {
    result = v9(a2, *a4, a4[1]);
    if ( result )
      break;
    --a3;
  }
  while ( a3 );
  return result;
}


// ===== 707280 FT_Outline_Render =====
int __fastcall FT_Outline_Render(int a1, int a2, int a3)
{
  _DWORD *v5; // r4
  bool v6; // zf
  int v7; // r10
  int v8; // r5
  int v9; // r3
  _DWORD *v10; // r0
  int v12; // [sp+4h] [bp-8h] BYREF

  if ( !a1 )
    return 33;
  v6 = a2 == 0;
  if ( a2 )
    v6 = a3 == 0;
  if ( v6 )
    return 6;
  v7 = 0;
  v8 = *(_DWORD *)(a1 + 164);
  v9 = *(_DWORD *)(a1 + 156);
  *(_DWORD *)(a3 + 4) = a2;
  v12 = v9;
  if ( !v8 )
    return 19;
  while ( 1 )
  {
    v10 = (_DWORD *)(*(int (__fastcall **)(_DWORD, int))(v8 + 64))(*(_DWORD *)(v8 + 60), a3);
    v5 = v10;
    if ( !v10 )
      break;
    if ( (unsigned __int8)v10 == 19 )
    {
      v8 = FT_Lookup_Renderer(a1, 1869968492, (int)&v12);
      v7 = 1;
      if ( v8 )
        continue;
    }
    return (int)v5;
  }
  if ( v7 )
    FT_Set_Renderer(a1, v8, (int)v10, v10);
  return (int)v5;
}


// ===== 707340 FT_Outline_Get_Bitmap =====
int __fastcall FT_Outline_Get_Bitmap(int a1, int a2, int a3)
{
  int v4; // r3
  bool v5; // zf
  int v6; // [sp+0h] [bp-34h] BYREF
  int v7; // [sp+8h] [bp-2Ch]

  if ( !a3 )
    return 6;
  v7 = 0;
  v6 = a3;
  v4 = *(char *)(a3 + 18);
  v5 = v4 == 2;
  if ( v4 != 2 )
    v5 = v4 == 5;
  if ( v5 || v4 == 6 )
    v7 = 1;
  return FT_Outline_Render(a1, a2, (int)&v6);
}


// ===== 707394 FT_Render_Glyph_Internal =====
int __fastcall FT_Render_Glyph_Internal(int a1, int a2, int a3)
{
  int v4; // r1
  int v7; // r5
  int v8; // r4
  int v9; // r9
  int v11; // [sp+4h] [bp-4h] BYREF

  v4 = *(_DWORD *)(a2 + 72);
  if ( v4 == 1651078259 )
    return 0;
  v11 = 0;
  if ( v4 == 1869968492 )
  {
    v8 = *(_DWORD *)(a1 + 164);
    v11 = *(_DWORD *)(a1 + 156);
  }
  else
  {
    v8 = FT_Lookup_Renderer(a1, v4, (int)&v11);
  }
  if ( !v8 )
    return 7;
  v9 = 0;
  while ( 1 )
  {
    v7 = (*(int (__fastcall **)(int, int, int, _DWORD))(v8 + 68))(v8, a2, a3, 0);
    if ( !v7 )
      break;
    if ( (unsigned __int8)v7 == 19 )
    {
      v8 = FT_Lookup_Renderer(a1, *(_DWORD *)(a2 + 72), (int)&v11);
      v9 = 1;
      if ( v8 )
        continue;
    }
    return v7;
  }
  if ( v9 )
    FT_Set_Renderer(a1, v8, 0, nullptr);
  return v7;
}


// ===== 70747c FT_Render_Glyph =====
int __fastcall FT_Render_Glyph(int a1, int a2)
{
  if ( a1 )
    return FT_Render_Glyph_Internal(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 4) + 96) + 4), a1, a2);
  else
    return 6;
}


// ===== 7074a4 FT_List_Iterate =====
int __fastcall FT_List_Iterate(int *a1, int (__fastcall *a2)(int, int), int a3)
{
  int v3; // r3
  int v6; // r5
  int result; // r0

  v3 = *a1;
  if ( !*a1 )
    return *a1;
  do
  {
    v6 = *(_DWORD *)(v3 + 4);
    result = a2(v3, a3);
    if ( result )
      break;
    v3 = v6;
  }
  while ( v6 );
  return result;
}


// ===== 7074ec FT_List_Finalize =====
int *__fastcall FT_List_Finalize(int *result, void (__fastcall *a2)(int, _DWORD, int), int a3, int a4)
{
  int v4; // r4
  int *v5; // r7
  int v9; // r8

  v4 = *result;
  v5 = result;
  if ( *result )
  {
    do
    {
      v9 = *(_DWORD *)(v4 + 4);
      if ( a2 )
        a2(a3, *(_DWORD *)(v4 + 8), a4);
      result = (int *)ft_mem_free(a3, v4);
      v4 = v9;
    }
    while ( v9 );
  }
  v5[1] = 0;
  *v5 = 0;
  return result;
}


// ===== 70754c FT_Remove_Module =====
int __fastcall FT_Remove_Module(int a1, int a2)
{
  int v3; // r12
  _DWORD *v4; // r3
  unsigned int v5; // r1
  unsigned int v7; // r0
  _DWORD *v8; // r3
  void (__fastcall *v9)(int); // r3
  int v10; // r5
  int *v11; // r6
  int v12; // r7
  int v13; // r3
  void (__fastcall *v14)(int); // r3
  int *v15; // r7
  int v16; // r9
  int *v17; // r10

  if ( !a1 )
    return 33;
  if ( !a2 )
    return 34;
  v3 = *(_DWORD *)(a1 + 24);
  v4 = (_DWORD *)(a1 + 28);
  v5 = a1 + 4 * v3 + 28;
  if ( a1 + 28 >= v5 )
    return 34;
  if ( *(_DWORD *)(a1 + 28) != a2 )
  {
    do
    {
      if ( v5 <= (unsigned int)++v4 )
        return 34;
    }
    while ( *v4 != a2 );
  }
  *(_DWORD *)(a1 + 24) = v3 - 1;
  if ( a1 + 4 * v3 + 24 > (unsigned int)v4 )
  {
    v7 = (unsigned int)v4 + ((a1 + 4 * v3 + 23 - (_DWORD)v4) & 0xFFFFFFFC) + 8;
    v8 = v4 + 1;
    do
    {
      *(v8 - 1) = *v8;
      ++v8;
    }
    while ( v8 != (_DWORD *)v7 );
  }
  *(_DWORD *)(v5 - 4) = 0;
  v9 = *(void (__fastcall **)(int))(a2 + 16);
  v10 = *(_DWORD *)(a2 + 8);
  v11 = *(int **)a2;
  v12 = *(_DWORD *)(a2 + 4);
  if ( v9 )
    v9(a2);
  if ( v12 && a2 == *(_DWORD *)(v12 + 168) )
    *(_DWORD *)(v12 + 168) = 0;
  v13 = **(_DWORD **)a2;
  if ( (v13 & 2) != 0 )
  {
    v15 = *(int **)(a2 + 4);
    v16 = *v15;
    v17 = (int *)FT_List_Find(v15 + 39, a2);
    if ( v17 )
    {
      if ( *(_DWORD *)(a2 + 60) )
        (*(void (**)(void))(*(_DWORD *)(*(_DWORD *)(a2 + 20) + 56) + 20))();
      FT_List_Remove(v15 + 39, v17);
      ft_mem_free(v16, (int)v17);
      v15[41] = FT_Lookup_Renderer((int)v15, 1869968492, 0);
    }
    if ( (**(_DWORD **)a2 & 1) == 0 )
      goto LABEL_19;
    goto LABEL_27;
  }
  if ( (v13 & 1) != 0 )
  {
LABEL_27:
    FT_List_Finalize((int *)(a2 + 24), (void (__fastcall *)(int, _DWORD, int))destroy_face, *(_DWORD *)(a2 + 8), a2);
    if ( (**(_DWORD **)a2 & 0x200) == 0 )
      FT_GlyphLoader_Done(*(int **)(a2 + 36));
  }
LABEL_19:
  v14 = (void (__fastcall *)(int))v11[7];
  if ( v14 )
    v14(a2);
  ft_mem_free(v10, a2);
  return 0;
}


// ===== 707728 destroy_face =====
int __fastcall destroy_face(int a1, _DWORD *a2, int a3)
{
  void (__fastcall *v4)(_DWORD); // r1
  int v7; // r6
  int v8; // r0
  void (__fastcall *v9)(_DWORD *); // r3
  void (__fastcall *v10)(_DWORD *); // r3
  int v11; // r1

  v4 = (void (__fastcall *)(_DWORD))a2[30];
  v7 = *(_DWORD *)(a3 + 20);
  if ( v4 )
    v4(a2[29]);
  while ( 1 )
  {
    v8 = a2[21];
    if ( !v8 )
      break;
    FT_Done_GlyphSlot(v8);
  }
  FT_List_Finalize(a2 + 27, (void (__fastcall *)(int, _DWORD, int))destroy_size, a1, a3);
  v9 = (void (__fastcall *)(_DWORD *))a2[12];
  a2[22] = 0;
  if ( v9 )
    v9(a2);
  destroy_charmaps((int)a2, a1);
  v10 = *(void (__fastcall **)(_DWORD *))(v7 + 52);
  if ( v10 )
    v10(a2);
  FT_Stream_Free(a2[26], (a2[2] >> 10) & 1);
  v11 = a2[32];
  a2[26] = 0;
  if ( v11 )
  {
    ft_mem_free(a1, v11);
    a2[32] = 0;
  }
  return ft_mem_free(a1, (int)a2);
}


// ===== 7077fc FT_Done_Face =====
int __fastcall FT_Done_Face(_DWORD *a1)
{
  int v2; // r4
  int v3; // r7
  int *v4; // r8

  if ( !a1 )
    return 35;
  v2 = a1[24];
  if ( !v2 )
    return 35;
  v3 = *(_DWORD *)(v2 + 8);
  v4 = (int *)FT_List_Find((int *)(v2 + 24), (int)a1);
  if ( !v4 )
    return 35;
  FT_List_Remove((_DWORD *)(v2 + 24), v4);
  ft_mem_free(v3, (int)v4);
  destroy_face(v3, a1, v2);
  return 0;
}


// ===== 707868 FT_Done_Library =====
int __fastcall FT_Done_Library(int *a1)
{
  void (*v2)(void); // r3
  int v3; // r6
  unsigned int v4; // r2
  int *v5; // r8
  unsigned int i; // r7
  int v7; // r5
  int v8; // r3
  int v9; // r3

  if ( !a1 )
    return 33;
  v2 = (void (*)(void))a1[2];
  v3 = *a1;
  if ( v2 )
    v2();
  v4 = a1[6];
  if ( v4 )
  {
    v5 = a1;
    for ( i = 0; i < v4; ++i )
    {
      v7 = v5[7];
      if ( (**(_DWORD **)v7 & 1) != 0 )
      {
        v8 = *(_DWORD *)(v7 + 24);
        if ( v8 )
        {
          do
          {
            FT_Done_Face(*(_DWORD **)(v8 + 8));
            v8 = *(_DWORD *)(v7 + 24);
          }
          while ( v8 );
          v4 = a1[6];
        }
      }
      v9 = v4;
      ++v5;
    }
    if ( v4 )
    {
      do
      {
        FT_Remove_Module((int)a1, a1[v9 + 6]);
        v9 = a1[6];
      }
      while ( v9 );
    }
  }
  ft_mem_free(v3, a1[43]);
  a1[43] = 0;
  a1[44] = 0;
  ft_mem_free(v3, (int)a1);
  return 0;
}


// ===== 707940 ft_highpow2 =====
int __fastcall ft_highpow2(int a1)
{
  int result; // r0

  do
  {
    result = a1;
    a1 &= a1 - 1;
  }
  while ( a1 );
  return result;
}


// ===== 707958 FT_QAlloc =====
int __fastcall FT_QAlloc(int a1, int a2, int *a3)
{
  int v4; // [sp+4h] [bp-4h] BYREF

  *a3 = ft_mem_qalloc(a1, a2, &v4);
  return v4;
}


// ===== 70797c FT_Free =====
int __fastcall FT_Free(int result, int *a2)
{
  int v3; // r1

  v3 = *a2;
  if ( v3 )
  {
    result = ft_mem_free(result, v3);
    *a2 = 0;
  }
  return result;
}


// ===== 7079a0 ft_mem_dup =====
void *__fastcall ft_mem_dup(int a1, const void *a2, size_t a3, int *a4)
{
  void *v7; // r0
  int v8; // r3
  int v9; // r2
  void *v10; // r6
  int v12; // [sp+4h] [bp-8h] BYREF

  v7 = (void *)ft_mem_qalloc(a1, a3, &v12);
  v8 = v12;
  v9 = (int)a2;
  if ( a2 )
    v9 = 1;
  v10 = v7;
  if ( v12 )
    v9 = 0;
  if ( v9 )
  {
    memcpy(v7, a2, a3);
    v8 = v12;
  }
  *a4 = v8;
  return v10;
}


// ===== 707a00 ft_mem_strdup =====
void *__fastcall ft_mem_strdup(int a1, const char *a2, int *a3)
{
  size_t v6; // r2

  if ( a2 )
    v6 = LC_API_STRLEN_0(a2) + 1;
  else
    v6 = 0;
  return ft_mem_dup(a1, a2, v6, a3);
}


// ===== 707a38 FT_Stream_TryRead =====
size_t __fastcall FT_Stream_TryRead(_DWORD *a1, void *a2, size_t a3)
{
  unsigned int v3; // r6
  unsigned int v4; // r7
  size_t v6; // r5
  int (*v7)(void); // r12

  v3 = a1[2];
  v4 = a1[1];
  if ( v3 >= v4 )
    return 0;
  v7 = (int (*)(void))a1[5];
  if ( v7 )
  {
    v6 = v7();
  }
  else
  {
    v6 = v4 - v3;
    if ( a3 < v4 - v3 )
      v6 = a3;
    memcpy(a2, (const void *)(*a1 + v3), v6);
  }
  a1[2] += v6;
  return v6;
}


// ===== 707ab0 FT_Outline_Copy =====
int __fastcall FT_Outline_Copy(__int16 *a1, int a2)
{
  bool v2; // zf

  v2 = a1 == nullptr;
  if ( a1 )
    v2 = a2 == 0;
  if ( v2 || *(_DWORD *)a1 != *(_DWORD *)a2 )
    return 6;
  if ( a1 == (__int16 *)a2 )
    return 0;
  memcpy(*(void **)(a2 + 4), *((const void **)a1 + 1), 8 * a1[1]);
  memcpy(*(void **)(a2 + 8), *((const void **)a1 + 2), a1[1]);
  memcpy(*(void **)(a2 + 12), *((const void **)a1 + 3), 2 * *a1);
  *(_DWORD *)(a2 + 16) = *((_DWORD *)a1 + 4) & 0xFFFFFFFE | *(_DWORD *)(a2 + 16) & 1;
  return 0;
}


// ===== 707b50 FT_Stream_GetLongLE =====
int __fastcall FT_Stream_GetLongLE(int a1)
{
  unsigned __int8 *v2; // r3
  unsigned __int8 *v3; // r2
  int result; // r0

  if ( !a1 || (v2 = *(unsigned __int8 **)(a1 + 32)) == nullptr )
    FT_Panic(
      "assertion failed on line %d of file %s\n",
      422,
      "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\base\\/ftstream.c");
  if ( *(_DWORD *)(a1 + 36) > (unsigned int)(v2 + 3) )
  {
    v3 = v2 + 4;
    result = (v2[1] << 8) | (v2[2] << 16) | *v2 | ((char)v2[3] << 24);
  }
  else
  {
    v3 = *(unsigned __int8 **)(a1 + 32);
    result = 0;
  }
  *(_DWORD *)(a1 + 32) = v3;
  return result;
}


// ===== 707bd4 FT_Stream_GetLong =====
int __fastcall FT_Stream_GetLong(int a1)
{
  int v2; // r3
  unsigned int v3; // r1
  int v4; // r2
  bool v5; // cc
  int result; // r0

  if ( !a1 || (v2 = *(_DWORD *)(a1 + 32)) == 0 )
    FT_Panic(
      "assertion failed on line %d of file %s\n",
      404,
      "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\base\\/ftstream.c");
  v3 = *(_DWORD *)(a1 + 36);
  v4 = v2 + 3;
  v5 = v3 > v2 + 3;
  if ( v3 <= v2 + 3 )
  {
    result = 0;
  }
  else
  {
    v2 += 4;
    v4 = *(char *)(v2 - 4);
    result = (*(unsigned __int8 *)(v2 - 2) << 8) | (*(unsigned __int8 *)(v2 - 3) << 16) | *(unsigned __int8 *)(v2 - 1);
  }
  if ( v5 )
    result |= v4 << 24;
  *(_DWORD *)(a1 + 32) = v2;
  return result;
}


// ===== 707c50 FT_Stream_GetOffset =====
int __fastcall FT_Stream_GetOffset(int a1)
{
  int v2; // r3
  unsigned int v3; // r1
  int v4; // r2
  bool v5; // cc
  int result; // r0

  if ( !a1 || (v2 = *(_DWORD *)(a1 + 32)) == 0 )
    FT_Panic(
      "assertion failed on line %d of file %s\n",
      386,
      "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\base\\/ftstream.c");
  v3 = *(_DWORD *)(a1 + 36);
  v4 = v2 + 2;
  v5 = v3 > v2 + 2;
  if ( v3 <= v2 + 2 )
  {
    result = 0;
  }
  else
  {
    v2 += 3;
    result = *(unsigned __int8 *)(v2 - 2);
    v3 = *(unsigned __int8 *)(v2 - 1);
    v4 = *(char *)(v2 - 3);
  }
  if ( v5 )
    result = v3 | (result << 8) | (v4 << 16);
  *(_DWORD *)(a1 + 32) = v2;
  return result;
}


// ===== 707cc0 FT_Stream_GetShortLE =====
int __fastcall FT_Stream_GetShortLE(int result)
{
  int v1; // r4
  unsigned __int8 *v2; // r3
  unsigned int v3; // r1
  bool v4; // cc
  unsigned __int8 *v5; // r2

  v1 = result;
  if ( !result || (v2 = *(unsigned __int8 **)(result + 32)) == nullptr )
    FT_Panic(
      "assertion failed on line %d of file %s\n",
      367,
      "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\base\\/ftstream.c");
  v3 = *(_DWORD *)(result + 36);
  v4 = v3 > (unsigned int)(v2 + 1);
  if ( v3 <= (unsigned int)(v2 + 1) )
  {
    v5 = *(unsigned __int8 **)(result + 32);
    LOWORD(result) = 0;
  }
  else
  {
    v5 = v2 + 2;
    LOWORD(result) = v2[1];
    LOWORD(v2) = *v2;
  }
  if ( v4 )
    LOWORD(result) = (unsigned __int16)v2 | ((_WORD)result << 8);
  *(_DWORD *)(v1 + 32) = v5;
  return (__int16)result;
}


// ===== 707d30 FT_Stream_GetShort =====
int __fastcall FT_Stream_GetShort(int a1)
{
  char *v2; // r3
  unsigned int v3; // r1
  __int16 v4; // r2
  bool v5; // cc
  int result; // r0
  __int16 v7; // t1

  if ( !a1 || (v2 = *(char **)(a1 + 32)) == nullptr )
    FT_Panic(
      "assertion failed on line %d of file %s\n",
      348,
      "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\base\\/ftstream.c");
  v3 = *(_DWORD *)(a1 + 36);
  v4 = (_WORD)v2 + 1;
  v5 = v3 > (unsigned int)(v2 + 1);
  if ( v3 <= (unsigned int)(v2 + 1) )
  {
    LOWORD(result) = 0;
  }
  else
  {
    v7 = *v2;
    v2 += 2;
    LOWORD(result) = v7;
  }
  if ( v5 )
    v4 = (unsigned __int8)*(v2 - 1);
  *(_DWORD *)(a1 + 32) = v2;
  if ( v5 )
    LOWORD(result) = v4 | ((_WORD)result << 8);
  return (__int16)result;
}


// ===== 707d9c FT_Stream_GetChar =====
int __fastcall FT_Stream_GetChar(int a1)
{
  char *v2; // r3
  unsigned int v3; // r2
  bool v4; // cc
  int result; // r0
  char v6; // t1

  if ( !a1 || (v2 = *(char **)(a1 + 32)) == nullptr )
    FT_Panic(
      "assertion failed on line %d of file %s\n",
      331,
      "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\base\\/ftstream.c");
  v3 = *(_DWORD *)(a1 + 36);
  v4 = v3 > (unsigned int)v2;
  if ( v3 <= (unsigned int)v2 )
  {
    LOBYTE(result) = 0;
  }
  else
  {
    v6 = *v2++;
    LOBYTE(result) = v6;
  }
  if ( v4 )
    *(_DWORD *)(a1 + 32) = v2;
  return (char)result;
}


// ===== 707df8 FT_Stream_ExitFrame =====
int *__fastcall FT_Stream_ExitFrame(int *result)
{
  int *v1; // r4

  v1 = result;
  if ( !result )
    FT_Panic(
      "assertion failed on line %d of file %s\n",
      307,
      "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\base\\/ftstream.c");
  if ( result[5] )
  {
    result = (int *)ft_mem_free(result[7], *result);
    *v1 = 0;
  }
  v1[9] = 0;
  v1[8] = 0;
  return result;
}


// ===== 707e58 ft_module_get_service =====
int __fastcall ft_module_get_service(_DWORD *a1, int a2)
{
  int (__fastcall *v3)(_DWORD *, int); // r3
  int result; // r0
  int v5; // r3
  _DWORD *v6; // r4
  unsigned int v7; // r7
  int (*v8)(void); // r3
  _DWORD *v9; // r0

  if ( !a1 )
    return 0;
  if ( !*a1 || (v3 = *(int (__fastcall **)(_DWORD *, int))(*a1 + 32)) == nullptr )
    FT_Panic(
      "assertion failed on line %d of file %s\n",
      3815,
      "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\base\\/ftobjs.c");
  result = v3(a1, a2);
  if ( result )
    return result;
  v5 = a1[1];
  v6 = (_DWORD *)(v5 + 28);
  v7 = v5 + 4 * *(_DWORD *)(v5 + 24) + 28;
  if ( v5 + 28 >= v7 )
    return 0;
  while ( 1 )
  {
    v9 = (_DWORD *)*v6;
    if ( (_DWORD *)*v6 != a1 )
    {
      if ( !*v9 )
        FT_Panic(
          "assertion failed on line %d of file %s\n",
          3834,
          "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\base\\/ftobjs.c");
      v8 = *(int (**)(void))(*v9 + 32);
      if ( v8 )
      {
        result = v8();
        if ( result )
          break;
      }
    }
    if ( v7 <= (unsigned int)++v6 )
      return 0;
  }
  return result;
}


// ===== 707f64 find_variant_selector_charmap =====
int __fastcall find_variant_selector_charmap(int a1)
{
  unsigned int v1; // r3
  unsigned int v3; // r5
  int *v4; // r4

  if ( !a1 )
    FT_Panic(
      "assertion failed on line %d of file %s\n",
      997,
      "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\base\\/ftobjs.c");
  v1 = *(_DWORD *)(a1 + 40);
  if ( !v1 )
    return 0;
  v3 = v1 + 4 * *(_DWORD *)(a1 + 36);
  if ( v1 >= v3 )
    return 0;
  v4 = *(int **)(a1 + 40);
  while ( *(_DWORD *)(*v4 + 8) != 327680 || FT_Get_CMap_Format(*v4) != 14 )
  {
    if ( v3 <= (unsigned int)++v4 )
      return 0;
  }
  return *v4;
}


// ===== 707ff4 FT_Face_GetCharsOfVariant =====
int __fastcall FT_Face_GetCharsOfVariant(int a1, int a2)
{
  int variant_selector_charmap; // r0

  if ( a1 && (variant_selector_charmap = find_variant_selector_charmap(a1)) != 0 )
    return (*(int (__fastcall **)(int, _DWORD, int))(*(_DWORD *)(variant_selector_charmap + 12) + 36))(
             variant_selector_charmap,
             *(_DWORD *)(a1 + 100),
             a2);
  else
    return 0;
}


// ===== 708030 FT_Face_GetVariantsOfChar =====
int __fastcall FT_Face_GetVariantsOfChar(int a1, int a2)
{
  int variant_selector_charmap; // r0

  if ( a1 && (variant_selector_charmap = find_variant_selector_charmap(a1)) != 0 )
    return (*(int (__fastcall **)(int, _DWORD, int))(*(_DWORD *)(variant_selector_charmap + 12) + 32))(
             variant_selector_charmap,
             *(_DWORD *)(a1 + 100),
             a2);
  else
    return 0;
}


// ===== 70806c FT_Face_GetVariantSelectors =====
int __fastcall FT_Face_GetVariantSelectors(int a1)
{
  int variant_selector_charmap; // r0

  if ( a1 && (variant_selector_charmap = find_variant_selector_charmap(a1)) != 0 )
    return (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)(variant_selector_charmap + 12) + 28))(
             variant_selector_charmap,
             *(_DWORD *)(a1 + 100));
  else
    return 0;
}


// ===== 7080a0 FT_Face_GetCharVariantIsDefault =====
int __fastcall FT_Face_GetCharVariantIsDefault(int a1, int a2, int a3)
{
  int variant_selector_charmap; // r0

  if ( a1 && (variant_selector_charmap = find_variant_selector_charmap(a1)) != 0 )
    return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)(variant_selector_charmap + 12) + 24))(
             variant_selector_charmap,
             a2,
             a3);
  else
    return -1;
}


// ===== 7080e8 FT_Face_GetCharVariantIndex =====
int __fastcall FT_Face_GetCharVariantIndex(int a1, int a2, int a3)
{
  int v6; // r3
  int variant_selector_charmap; // r0

  if ( a1
    && (v6 = *(_DWORD *)(a1 + 92)) != 0
    && *(_DWORD *)(v6 + 4) == 1970170211
    && (variant_selector_charmap = find_variant_selector_charmap(a1)) != 0 )
  {
    return (*(int (__fastcall **)(int, _DWORD, int, int))(*(_DWORD *)(variant_selector_charmap + 12) + 20))(
             variant_selector_charmap,
             *(_DWORD *)(a1 + 92),
             a2,
             a3);
  }
  else
  {
    return 0;
  }
}


// ===== 70814c FT_Get_Charmap_Index =====
int __fastcall FT_Get_Charmap_Index(int a1)
{
  int v1; // r2
  _DWORD *v2; // r1
  int v3; // r4

  v1 = *(_DWORD *)(*(_DWORD *)a1 + 36);
  if ( v1 <= 0 )
    goto LABEL_7;
  v2 = *(_DWORD **)(*(_DWORD *)a1 + 40);
  if ( *v2 != a1 )
  {
    v3 = 0;
    while ( ++v3 != v1 )
    {
      if ( v2[v3] == a1 )
        return v3;
    }
LABEL_7:
    FT_Panic(
      "assertion failed on line %d of file %s\n",
      2722,
      "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\base\\/ftobjs.c");
  }
  return 0;
}


// ===== 7081c8 find_unicode_charmap =====
int __fastcall find_unicode_charmap(_DWORD *a1)
{
  unsigned int v2; // r0
  int *v3; // r5
  int *v4; // r3
  int v5; // r2
  int v6; // r1
  bool v7; // zf

  if ( !a1 )
    FT_Panic(
      "assertion failed on line %d of file %s\n",
      908,
      "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\base\\/ftobjs.c");
  v2 = a1[10];
  if ( v2 )
  {
    v3 = (int *)(v2 + 4 * a1[9]);
    v4 = v3;
    while ( v2 <= (unsigned int)--v4 )
    {
      v5 = *v4;
      if ( *(_DWORD *)(*v4 + 4) == 1970170211 )
      {
        v6 = *(_DWORD *)(v5 + 8);
        v7 = v6 == 655363;
        if ( v6 != 655363 )
          v7 = v6 == 0x40000;
        if ( v7 )
        {
          a1[23] = v5;
          return 0;
        }
      }
    }
    while ( v2 <= (unsigned int)--v3 )
    {
      if ( *(_DWORD *)(*v3 + 4) == 1970170211 )
      {
        a1[23] = *v3;
        return 0;
      }
    }
  }
  return 38;
}


// ===== 708290 FT_Select_Charmap =====
int __fastcall FT_Select_Charmap(_DWORD *a1, int a2)
{
  unsigned int v3; // r2
  unsigned int v4; // r4

  if ( !a1 )
    return 35;
  if ( !a2 )
    return 6;
  if ( a2 == 1970170211 )
    return find_unicode_charmap(a1);
  v3 = a1[10];
  if ( !v3 )
    return 38;
  v4 = v3 + 4 * a1[9];
  if ( v3 >= v4 )
    return 6;
  while ( *(_DWORD *)(*(_DWORD *)v3 + 4) != a2 )
  {
    v3 += 4;
    if ( v4 <= v3 )
      return 6;
  }
  a1[23] = *(_DWORD *)v3;
  return 0;
}


// ===== 708318 ft_glyphslot_set_bitmap =====
_DWORD *__fastcall ft_glyphslot_set_bitmap(_DWORD *a1, int a2)
{
  _DWORD *result; // r0
  int v5; // r3

  result = ft_glyphslot_free_bitmap(a1);
  v5 = a1[39];
  a1[22] = a2;
  if ( (*(_DWORD *)(v5 + 4) & 1) != 0 )
    FT_Panic(
      "assertion failed on line %d of file %s\n",
      272,
      "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\base\\/ftobjs.c");
  return result;
}


// ===== 708364 ft_mem_alloc =====
void *__fastcall ft_mem_alloc(int a1, signed int a2, int *a3)
{
  void *v5; // r0
  int v6; // r3
  _BOOL4 v7; // r2
  void *v8; // r5
  int v10; // [sp+4h] [bp-4h] BYREF

  v5 = (void *)ft_mem_qalloc(a1, a2, &v10);
  v6 = v10;
  v7 = a2 > 0;
  v8 = v5;
  if ( v10 )
    v7 = 0;
  if ( v7 )
  {
    LC_API_MEMSET_0(v5, 0, a2);
    v6 = v10;
  }
  *a3 = v6;
  return v8;
}


// ===== 7083c0 FT_Alloc =====
int __fastcall FT_Alloc(int a1, signed int a2, void **a3)
{
  int v4; // [sp+4h] [bp-4h] BYREF

  *a3 = ft_mem_alloc(a1, a2, &v4);
  return v4;
}


// ===== 7083e4 ft_mem_qrealloc =====
int __fastcall ft_mem_qrealloc(int a1, int a2, unsigned int a3, int a4, int a5, int *a6)
{
  int v6; // r4
  bool v7; // zf
  int v8; // r2
  void *v9; // r0
  int v11; // r0
  int v12; // [sp+4h] [bp-8h] BYREF

  v12 = 0;
  v6 = a5;
  if ( (a3 >> 31) | ((unsigned int)a4 >> 31) || a2 < 0 )
  {
    v8 = 6;
  }
  else
  {
    v7 = a2 == 0;
    if ( a2 )
      v7 = a4 == 0;
    if ( v7 )
    {
      ft_mem_free(a1, a5);
      v6 = 0;
      v8 = v12;
    }
    else if ( a4 <= 0x7FFFFFFF / a2 )
    {
      if ( a3 )
      {
        v11 = (*(int (__fastcall **)(int, unsigned int, int, int))(a1 + 12))(a1, a2 * a3, a2 * a4, a5);
        if ( v11 )
        {
          v6 = v11;
          v8 = v12;
        }
        else
        {
          v8 = 64;
        }
      }
      else
      {
        if ( a5 )
          FT_Panic(
            "assertion failed on line %d of file %s\n",
            143,
            "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\base\\/ftutil.c");
        v9 = ft_mem_alloc(a1, a2 * a4, &v12);
        v8 = v12;
        v6 = (int)v9;
      }
    }
    else
    {
      v8 = 10;
    }
  }
  *a6 = v8;
  return v6;
}


// ===== 7084e0 FT_QRealloc =====
int __fastcall FT_QRealloc(int a1, unsigned int a2, int a3, int *a4)
{
  int v5; // [sp+Ch] [bp-4h] BYREF

  *a4 = ft_mem_qrealloc(a1, 1, a2, a3, *a4, &v5);
  return v5;
}


// ===== 70851c raccess_guess_darwin_hfsplus =====
int __fastcall raccess_guess_darwin_hfsplus(int *a1, int a2, char *a3, char **a4, _DWORD *a5)
{
  int v8; // r5
  int v9; // r6
  char *v11; // r0
  char *v12; // r8
  int v13; // [sp+4h] [bp-4h] BYREF

  v8 = LC_API_STRLEN_0(a3);
  if ( v8 > 2147483641 )
    return 10;
  v11 = (char *)ft_mem_alloc(*a1, v8 + 6, &v13);
  v9 = v13;
  v12 = v11;
  if ( !v13 )
  {
    memcpy(v11, a3, v8);
    strcpy(&v12[v8], "/rsrc");
    *a4 = v12;
    *a5 = 0;
  }
  return v9;
}


// ===== 7085a8 raccess_guess_darwin_newvfs =====
int __fastcall raccess_guess_darwin_newvfs(int *a1, int a2, char *a3, char **a4, _DWORD *a5)
{
  int v8; // r5
  int v9; // r6
  char *v11; // r0
  char *v12; // r8
  int v13; // [sp+4h] [bp-4h] BYREF

  v8 = LC_API_STRLEN_0(a3);
  if ( v8 > 2147483629 )
    return 10;
  v11 = (char *)ft_mem_alloc(*a1, v8 + 18, &v13);
  v9 = v13;
  v12 = v11;
  if ( !v13 )
  {
    memcpy(v11, a3, v8);
    strcpy(&v12[v8], "/..namedfork/rsrc");
    *a4 = v12;
    *a5 = 0;
  }
  return v9;
}


// ===== 708634 FT_New_Size =====
int __fastcall FT_New_Size(_DWORD *a1, _DWORD *a2)
{
  int v4; // r8
  _DWORD *v5; // r7
  int v6; // r6
  int v7; // r10
  _DWORD *v8; // r9
  int (__fastcall *v10)(_DWORD *); // r3
  int v11; // [sp+4h] [bp-4h] BYREF

  if ( !a1 )
    return 35;
  if ( !a2 )
    return 36;
  if ( !a1[24] )
    return 34;
  v5 = nullptr;
  *a2 = 0;
  v6 = a1[25];
  v7 = *(_DWORD *)(a1[24] + 20);
  v8 = ft_mem_alloc(v6, *(_DWORD *)(v7 + 40), &v11);
  if ( v11 )
    goto LABEL_8;
  v5 = ft_mem_alloc(v6, 12, &v11);
  if ( v11 )
    goto LABEL_8;
  v8[10] = 0;
  *v8 = a1;
  v10 = *(int (__fastcall **)(_DWORD *))(v7 + 56);
  if ( v10 )
  {
    v4 = v10(v8);
    v11 = v4;
  }
  else
  {
    v4 = v11;
  }
  if ( v4 || (*a2 = v8, v5[2] = v8, FT_List_Add(a1 + 27, v5), v11) )
  {
LABEL_8:
    ft_mem_free(v6, (int)v5);
    ft_mem_free(v6, (int)v8);
    return v11;
  }
  return v4;
}


// ===== 70873c open_face =====
int __fastcall open_face(int a1, int a2, int a3, int a4, int a5, _DWORD *a6)
{
  signed int *v6; // r7
  int v7; // r4
  _DWORD *v12; // r6
  int v13; // r8
  void (__fastcall *v14)(_DWORD *); // r3
  int v15; // r5
  void *v17; // r0
  int (__fastcall *v18)(int, _DWORD *, int, int, int); // r12
  int unicode_charmap; // r0
  bool v20; // zf
  int v21[2]; // [sp+Ch] [bp-8h] BYREF

  v6 = *(signed int **)(a1 + 20);
  v7 = *(_DWORD *)(a1 + 8);
  v12 = ft_mem_alloc(v7, v6[9], v21);
  if ( v21[0] )
  {
    v13 = 0;
  }
  else
  {
    v17 = ft_mem_alloc(v7, 56, v21);
    v13 = (int)v17;
    if ( !v21[0] )
    {
      v12[24] = a1;
      v12[32] = v17;
      v12[25] = v7;
      v12[26] = a2;
      v18 = (int (__fastcall *)(int, _DWORD *, int, int, int))v6[12];
      if ( v18 )
      {
        v15 = v18(a2, v12, a3, a4, a5);
        v21[0] = v15;
      }
      else
      {
        v15 = v21[0];
      }
      if ( !v15 )
      {
        unicode_charmap = find_unicode_charmap(v12);
        v20 = unicode_charmap == 38;
        if ( unicode_charmap != 38 )
          v20 = unicode_charmap == 0;
        if ( v20 )
        {
          v20 = v21[0] == 0;
          *a6 = v12;
          if ( v20 )
            return v15;
        }
        else
        {
          v21[0] = unicode_charmap;
        }
      }
    }
  }
  destroy_charmaps((int)v12, v7);
  v14 = (void (__fastcall *)(_DWORD *))v6[13];
  if ( v14 )
    v14(v12);
  ft_mem_free(v7, v13);
  ft_mem_free(v7, (int)v12);
  v15 = v21[0];
  *a6 = 0;
  return v15;
}


// ===== 708874 ft_glyphslot_alloc_bitmap =====
int __fastcall ft_glyphslot_alloc_bitmap(_DWORD *a1, signed int a2)
{
  int v2; // r3
  int v4; // r2
  int v5; // r1
  int v6; // r5
  int v9; // [sp+4h] [bp-4h] BYREF

  v2 = a1[39];
  v4 = a1[1];
  v5 = *(_DWORD *)(v2 + 4);
  v6 = *(_DWORD *)(v4 + 100);
  if ( (v5 & 1) == 0 )
    v5 |= 1u;
  if ( (*(_DWORD *)(v2 + 4) & 1) != 0 )
  {
    ft_mem_free(*(_DWORD *)(v4 + 100), a1[22]);
    a1[22] = 0;
  }
  else
  {
    *(_DWORD *)(v2 + 4) = v5;
  }
  a1[22] = ft_mem_alloc(v6, a2, &v9);
  return v9;
}


// ===== 7088dc FT_GlyphLoader_New =====
int __fastcall FT_GlyphLoader_New(int a1, _DWORD *a2)
{
  _DWORD *v4; // r0
  int v5; // r3
  int v7; // [sp+4h] [bp-8h] BYREF

  v4 = ft_mem_alloc(a1, 96, &v7);
  v5 = v7;
  if ( !v7 )
  {
    *v4 = a1;
    v5 = v7;
    *a2 = v4;
  }
  return v5;
}


// ===== 708918 ft_mem_realloc =====
int __fastcall ft_mem_realloc(int a1, int a2, signed int a3, int a4, int a5, int *a6)
{
  int v9; // r0
  int v10; // r3
  _BOOL4 v11; // r2
  int v12; // r8
  int v14; // [sp+Ch] [bp-4h] BYREF

  v14 = 0;
  v9 = ft_mem_qrealloc(a1, a2, a3, a4, a5, &v14);
  v10 = v14;
  v11 = a4 > a3;
  v12 = v9;
  if ( v14 )
    v11 = 0;
  if ( v11 )
  {
    LC_API_MEMSET_0((void *)(v9 + a2 * a3), 0, a2 * (a4 - a3));
    v10 = v14;
  }
  *a6 = v10;
  return v12;
}


// ===== 708998 FT_Realloc =====
int __fastcall FT_Realloc(int a1, signed int a2, int a3, int *a4)
{
  int v5; // [sp+Ch] [bp-4h] BYREF

  *a4 = ft_mem_realloc(a1, 1, a2, a3, *a4, &v5);
  return v5;
}


// ===== 7089d4 FT_Outline_New_Internal =====
int __fastcall FT_Outline_New_Internal(int a1, int a2, int a3, int a4)
{
  bool v4; // zf
  signed int v7; // r12
  int result; // r0
  int v11; // r3
  int v12; // [sp+Ch] [bp-4h] BYREF

  v4 = a1 == 0;
  if ( a1 )
    v4 = a4 == 0;
  v7 = v4;
  if ( v4 )
    return 6;
  *(_WORD *)a4 = v7;
  *(_WORD *)(a4 + 2) = v7;
  *(_DWORD *)(a4 + 4) = v7;
  *(_DWORD *)(a4 + 8) = v7;
  *(_DWORD *)(a4 + 12) = v7;
  *(_DWORD *)(a4 + 16) = v7;
  *(_DWORD *)(a4 + 4) = ft_mem_realloc(a1, 8, v7, 2 * a2, v7, &v12);
  if ( v12
    || (*(_DWORD *)(a4 + 8) = ft_mem_realloc(a1, 1, 0, a2, 0, &v12), v12)
    || (*(_DWORD *)(a4 + 12) = ft_mem_realloc(a1, 2, 0, a3, 0, &v12), (result = v12) != 0) )
  {
    *(_DWORD *)(a4 + 16) |= 1u;
    FT_Outline_Done_Internal(a1, a4);
    return v12;
  }
  else
  {
    v11 = *(_DWORD *)(a4 + 16);
    *(_WORD *)(a4 + 2) = a2;
    *(_WORD *)a4 = a3;
    *(_DWORD *)(a4 + 16) = v11 | 1;
  }
  return result;
}


// ===== 708ae0 FT_Outline_New =====
int __fastcall FT_Outline_New(int *a1, int a2, int a3, int a4)
{
  if ( a1 )
    return FT_Outline_New_Internal(*a1, a2, a3, a4);
  else
    return 33;
}


// ===== 708af8 FT_CMap_Done =====
int __fastcall FT_CMap_Done(int result)
{
  _DWORD *v1; // r1
  _DWORD *v2; // r5
  signed int v3; // r2
  _DWORD **v4; // r12
  _DWORD *v5; // r6
  int v6; // r4
  _DWORD *v7; // r7
  int v8; // r2
  int v9; // r3
  int v10; // r4
  int v11; // r1
  int v12; // r2
  bool v13; // zf
  int v14; // r2
  _DWORD *v15; // r3
  int v16; // [sp+Ch] [bp-8h] BYREF

  v1 = (_DWORD *)result;
  if ( result )
  {
    v2 = *(_DWORD **)result;
    v3 = *(_DWORD *)(*(_DWORD *)result + 36);
    result = *(_DWORD *)(*(_DWORD *)result + 100);
    if ( v3 > 0 )
    {
      v4 = (_DWORD **)v2[10];
      v5 = *v4;
      if ( *v4 == v1 )
      {
        v6 = 0;
LABEL_10:
        v7 = v4[v3 - 1];
        result = ft_mem_realloc(result, 4, v3, v3 - 1, v2[10], &v16);
        v2[10] = result;
        if ( !v16 )
        {
          v8 = v2[9];
          v9 = v6 + 1;
          if ( v6 + 1 < v8 )
          {
            v10 = 4 * v6;
            v11 = 4 * v9;
            while ( 1 )
            {
              v12 = v8 - 1;
              v13 = v12 == v9;
              if ( v12 == v9 )
              {
                v14 = v9 - 1;
                *(_DWORD *)(result + 4 * (v9 - 1)) = v7;
              }
              else
              {
                v14 = *(_DWORD *)(result + v11);
              }
              if ( !v13 )
                *(_DWORD *)(result + v10) = v14;
              v8 = v2[9];
              ++v9;
              v10 += 4;
              v11 += 4;
              if ( v8 <= v9 )
                break;
              result = v2[10];
            }
          }
          v15 = (_DWORD *)v2[23];
          v2[9] = v8 - 1;
          if ( v5 == v15 )
            v2[23] = 0;
          return ft_cmap_done_internal(v5);
        }
      }
      else
      {
        v6 = 0;
        while ( ++v6 != v3 )
        {
          if ( v4[v6] == v1 )
          {
            v5 = v1;
            goto LABEL_10;
          }
        }
      }
    }
  }
  return result;
}


// ===== 708c00 FT_GlyphLoader_CheckSubGlyphs =====
int __fastcall FT_GlyphLoader_CheckSubGlyphs(int *a1, int a2)
{
  unsigned int v3; // r2
  unsigned int v4; // r5
  int v5; // r0
  int result; // r0
  unsigned int v7; // r5
  int v8; // r3
  int v9; // r2
  int v10; // [sp+Ch] [bp-8h] BYREF

  v3 = a1[3];
  v4 = a1[21] + a1[12] + a2;
  v10 = 0;
  v5 = *a1;
  if ( v4 <= v3 )
    return 0;
  v7 = (v4 + 1) & 0xFFFFFFFE;
  v8 = ft_mem_realloc(v5, 32, v3, v7, a1[13], &v10);
  result = v10;
  a1[13] = v8;
  if ( !result )
  {
    v9 = a1[12];
    a1[3] = v7;
    a1[22] = v8 + 32 * v9;
  }
  return result;
}


// ===== 708c84 FT_GlyphLoader_CreateExtra =====
int __fastcall FT_GlyphLoader_CreateExtra(int a1)
{
  int v2; // r3
  int result; // r0
  int v4; // r12
  int v5; // r1
  int v6; // r5
  int v7; // r6
  int v8; // r7
  int v9; // r3
  int v10; // r12
  int v11; // [sp+Ch] [bp-4h] BYREF

  v2 = ft_mem_realloc(*(_DWORD *)a1, 8, 0, 2 * *(_DWORD *)(a1 + 4), 0, &v11);
  result = v11;
  *(_DWORD *)(a1 + 40) = v2;
  if ( !result )
  {
    v4 = *(__int16 *)(a1 + 22);
    v5 = v2 + 8 * *(_DWORD *)(a1 + 4);
    v6 = *(_DWORD *)(a1 + 32) + 2 * *(__int16 *)(a1 + 20);
    v7 = *(_DWORD *)(a1 + 24) + 8 * v4;
    v8 = v5 + 8 * v4;
    v9 = v2 + 8 * v4;
    v10 = *(_DWORD *)(a1 + 28) + v4;
    *(_DWORD *)(a1 + 80) = v8;
    *(_BYTE *)(a1 + 16) = 1;
    *(_DWORD *)(a1 + 60) = v7;
    *(_DWORD *)(a1 + 64) = v10;
    *(_DWORD *)(a1 + 68) = v6;
    *(_DWORD *)(a1 + 76) = v9;
    *(_DWORD *)(a1 + 44) = v5;
  }
  return result;
}


// ===== 708d24 FT_CMap_New =====
int __fastcall FT_CMap_New(signed int *a1, int a2, signed int **a3, _DWORD *a4)
{
  bool v4; // zf
  int v7; // r2
  signed int *v9; // r6
  int v10; // r10
  _DWORD *v11; // r0
  int v12; // r3
  _DWORD *v13; // r7
  int (*v14)(void); // r3
  int v15; // r0
  signed int v16; // r3
  int v18[2]; // [sp+Ch] [bp-8h] BYREF

  v4 = a1 == nullptr;
  if ( a1 )
    v4 = a3 == nullptr;
  v7 = v4;
  if ( v4 )
    return 6;
  v18[0] = v7;
  v9 = *a3;
  if ( !*a3 )
    return 6;
  v10 = v9[25];
  v11 = ft_mem_alloc(v10, *a1, v18);
  v12 = v18[0];
  v13 = v11;
  if ( !v18[0] )
  {
    *v11 = *a3;
    v11[1] = a3[1];
    v11[2] = a3[2];
    v11[3] = a1;
    v14 = (int (*)(void))a1[1];
    if ( v14 && (v18[0] = v14()) != 0
      || (v15 = ft_mem_realloc(v10, 4, v9[9], v9[9] + 1, v9[10], v18), v9[10] = v15, v18[0]) )
    {
      ft_cmap_done_internal(v13);
      v13 = nullptr;
      v12 = v18[0];
    }
    else
    {
      v16 = v9[9];
      *(_DWORD *)(v15 + 4 * v16) = v13;
      v9[9] = v16 + 1;
      v12 = v18[0];
    }
  }
  if ( a4 )
    *a4 = v13;
  return v12;
}


// ===== 708e40 ___ZSt24__stl_throw_length_errorPKc_veneer =====
void __fastcall __ZSt24__stl_throw_length_errorPKc_veneer(const char *__msg)
{
  std::__stl_throw_length_error(__msg);
}


// ===== 708e50 ___ZNSt6localeC1Ev_veneer =====
std::locale *__fastcall __ZNSt6localeC1Ev_veneer(std::locale *const this)
{
  return std::locale::locale(this);
}


// ===== 708e60 ___ZNSt6localeD1Ev_veneer =====
void *__fastcall __ZNSt6localeD1Ev_veneer(std::locale *const this)
{
  return std::locale::~locale(this);
}


// ===== 708e70 ___ZNSt8ios_baseD2Ev_veneer =====
void *__fastcall __ZNSt8ios_baseD2Ev_veneer(std::ios_base *const this)
{
  return std::ios_base::~ios_base(this);
}


// ===== 708e80 ___ZNSt8ios_base5imbueERKSt6locale_veneer =====
std::locale __fastcall __ZNSt8ios_base5imbueERKSt6locale_veneer(
        std::ios_base *const this,
        const std::locale *const loc)
{
  return std::ios_base::imbue(this, loc);
}


// ===== 708e90 ___ZSt26__stl_throw_overflow_errorPKc_veneer =====
void __fastcall __ZSt26__stl_throw_overflow_errorPKc_veneer(const char *__msg)
{
  std::__stl_throw_overflow_error(__msg);
}


// ===== 708ea0 ___ZNKSt6locale12_M_use_facetERKNS_2idE_veneer =====
std::locale::facet *__fastcall __ZNKSt6locale12_M_use_facetERKNS_2idE_veneer(
        const std::locale *const this,
        const std::locale::id *const n)
{
  return std::locale::_M_use_facet(this, n);
}


// ===== 708eb0 ___ZSt24__stl_throw_out_of_rangePKc_veneer =====
void __fastcall __ZSt24__stl_throw_out_of_rangePKc_veneer(const char *__msg)
{
  std::__stl_throw_out_of_range(__msg);
}


// ===== 708ec0 ___ZNSt12__node_alloc11_M_allocateERj_veneer =====
void *__fastcall __ZNSt12__node_alloc11_M_allocateERj_veneer(size_t *const __n)
{
  return std::__node_alloc::_M_allocate(__n);
}


// ===== 708ed0 ___ZNKSt5ctypeIcE8scan_notENSt10ctype_base4maskEPKcS4__veneer =====
const char *__fastcall __ZNKSt5ctypeIcE8scan_notENSt10ctype_base4maskEPKcS4__veneer(
        const std::ctype<char> *const this,
        std::ctype_base::mask __m,
        const char *__low,
        const char *__high)
{
  return std::ctype<char>::scan_not(this, __m, __low, __high);
}


// ===== 708ee0 ___ZNSt4priv11_GetFacetIdEPKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE_veneer =====
std::locale::id *__fastcall __ZNSt4priv11_GetFacetIdEPKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE_veneer(
        const std::num_get<char,std::istreambuf_iterator<char> > *a1)
{
  return std::priv::_GetFacetId(a1);
}


// ===== 708ef0 ___ZNSt6localeC1ERKS__veneer =====
std::locale *__fastcall __ZNSt6localeC1ERKS__veneer(std::locale *const this, const std::locale *const L)
{
  return std::locale::locale(this, L);
}


// ===== 708f00 ___ZNSt12__node_alloc13_M_deallocateEPvj_veneer =====
void __fastcall __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(void *__p, size_t __n)
{
  std::__node_alloc::_M_deallocate(__p, __n);
}


// ===== 708f10 ___ZNSt4priv11_GetFacetIdEPKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE_veneer =====
std::locale::id *__fastcall __ZNSt4priv11_GetFacetIdEPKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE_veneer(
        const std::num_put<char,std::ostreambuf_iterator<char> > *a1)
{
  return std::priv::_GetFacetId(a1);
}


// ===== 708f20 ___ZNSt8ios_base16_M_throw_failureEv_veneer =====
void __fastcall __ZNSt8ios_base16_M_throw_failureEv_veneer(std::ios_base *const this)
{
  std::ios_base::_M_throw_failure(this);
}


// ===== 708f30 ___ZNSt6localeaSERKS__veneer =====
const std::locale *__fastcall __ZNSt6localeaSERKS__veneer(std::locale *const this, const std::locale *const L)
{
  return std::locale::operator=(this, L);
}


// ===== 708f40 ___ZNSt8ios_baseC2Ev_veneer =====
std::ios_base *__fastcall __ZNSt8ios_baseC2Ev_veneer(std::ios_base *const this)
{
  return std::ios_base::ios_base(this);
}


// ===== 708f50 ___ZSt28__stl_throw_invalid_argumentPKc_veneer =====
void __fastcall __ZSt28__stl_throw_invalid_argumentPKc_veneer(const char *__msg)
{
  std::__stl_throw_invalid_argument(__msg);
}


// ===== 708f60 FT_Request_Metrics =====
unsigned int __fastcall FT_Request_Metrics(unsigned int result, int a2, int a3)
{
  int v3; // r7
  int v4; // r4
  unsigned int v5; // r5
  int *v6; // r6
  int v7; // r8
  int v8; // r3
  int v9; // r3
  int v10; // r11
  int v11; // r9
  int v12; // r3
  bool v13; // zf
  int v14; // r3
  unsigned int v15; // r0
  signed int v16; // r0
  signed int v17; // r3
  int v18; // r3
  unsigned int v19; // r0
  int v20; // r0
  int v21; // r0

  v4 = *(_DWORD *)(result + 88);
  v5 = result;
  v6 = (int *)a2;
  if ( (*(_DWORD *)(result + 8) & 1) != 0 )
  {
    switch ( *(_DWORD *)a2 )
    {
      case 0:
        v10 = *(unsigned __int16 *)(result + 68);
        v11 = v10;
        goto LABEL_10;
      case 1:
        a3 = *(__int16 *)(result + 70);
        v18 = a3 - *(__int16 *)(result + 72);
        v11 = v18;
        goto LABEL_28;
      case 2:
        a2 = *(_DWORD *)(result + 52);
        a3 = *(_DWORD *)(result + 64);
        v11 = *(_DWORD *)(result + 60) - a2;
        v18 = a3 - *(_DWORD *)(result + 56);
        if ( v11 < 0 )
          goto LABEL_31;
        goto LABEL_29;
      case 3:
        a3 = *(__int16 *)(result + 70);
        v11 = *(__int16 *)(result + 76);
        v18 = a3 - *(__int16 *)(result + 72);
LABEL_28:
        if ( v11 < 0 )
        {
LABEL_31:
          v10 = abs32(v18);
          v11 = -v11;
        }
        else
        {
LABEL_29:
          v10 = abs32(v18);
        }
        goto LABEL_10;
      case 4:
        v7 = *(_DWORD *)(a2 + 4);
        *(_DWORD *)(v4 + 16) = v7;
        v8 = *(_DWORD *)(a2 + 8);
        *(_DWORD *)(v4 + 20) = v8;
        if ( v7 )
        {
          if ( v8 )
            v7 = 0;
          else
            *(_DWORD *)(v4 + 20) = v7;
          if ( !v8 )
            v7 = 0;
          v3 = v7;
          v9 = *(_DWORD *)a2;
        }
        else
        {
          *(_DWORD *)(v4 + 16) = v8;
          v9 = *(_DWORD *)a2;
          v3 = 0;
        }
        goto LABEL_6;
      default:
        v10 = 0;
        v11 = 0;
LABEL_10:
        v12 = v6[3];
        v7 = v6[2];
        v13 = v12 == 0;
        if ( v12 )
        {
          a3 = v6[1];
          a2 = 954437177;
          v12 *= a3;
        }
        else
        {
          v3 = v6[1];
        }
        if ( !v13 )
          v3 = ((int)((unsigned __int64)(a2 * (__int64)(v12 + 36)) >> 32) >> 4) - ((v12 + 36) >> 31);
        v14 = v6[4];
        if ( v13 )
          a3 = v3;
        if ( v14 )
          v7 = (v7 * v14 + 36) / 72;
        if ( a3 )
        {
          v15 = FT_DivFix(v3, v11);
          *(_DWORD *)(v4 + 16) = v15;
          if ( v6[2] )
          {
            v16 = FT_DivFix(v7, v10);
            *(_DWORD *)(v4 + 20) = v16;
            v9 = *v6;
            if ( *v6 == 3 )
            {
              v17 = *(_DWORD *)(v4 + 16);
              if ( v16 <= v17 )
                *(_DWORD *)(v4 + 16) = v16;
              else
                *(_DWORD *)(v4 + 20) = v17;
              v9 = *v6;
            }
          }
          else
          {
            *(_DWORD *)(v4 + 20) = v15;
            v21 = FT_MulDiv(v3, v10, v11);
            v9 = *v6;
            v7 = v21;
          }
        }
        else
        {
          v19 = FT_DivFix(v7, v10);
          *(_DWORD *)(v4 + 16) = v19;
          *(_DWORD *)(v4 + 20) = v19;
          v20 = FT_MulDiv(v7, v11, v10);
          v9 = *v6;
          v3 = v20;
        }
LABEL_6:
        if ( v9 )
        {
          v3 = FT_MulFix(*(unsigned __int16 *)(v5 + 68), *(_DWORD *)(v4 + 16));
          v7 = FT_MulFix(*(unsigned __int16 *)(v5 + 68), *(_DWORD *)(v4 + 20));
        }
        *(_WORD *)(v4 + 14) = (v7 + 32) >> 6;
        *(_WORD *)(v4 + 12) = (v3 + 32) >> 6;
        result = ft_recompute_scaled_metrics((__int16 *)v5, (int *)(v4 + 12));
        break;
    }
  }
  else
  {
    *(_DWORD *)(v4 + 20) = 0x400000;
    *(_DWORD *)(v4 + 36) = 0;
    *(_DWORD *)(v4 + 12) = 0;
    *(_DWORD *)(v4 + 24) = 0;
    *(_DWORD *)(v4 + 28) = 0;
    *(_DWORD *)(v4 + 32) = 0;
    *(_DWORD *)(v4 + 16) = 0x400000;
  }
  return result;
}


// ===== 7091e0 FT_Load_Glyph =====
int __fastcall FT_Load_Glyph(_DWORD *a1, int a2, unsigned int a3)
{
  int v6; // r4
  int **v7; // r2
  int v8; // r7
  int v9; // r3
  int v10; // r10
  unsigned int v12; // r2
  int v13; // r3
  bool v14; // zf
  int v15; // r7
  int v16; // r0
  int v17; // r2
  int v18; // r1
  int *v19; // r6
  int v20; // r2
  int v21; // r1
  int v22; // r7
  int v23; // r8
  int v24; // r11
  int v25; // r0
  int v26; // r1
  int v27; // r2
  int v28; // r7
  int v29; // r8
  unsigned int v30; // r2
  unsigned int v31; // r0
  int v32; // r1
  int v33; // r2
  int v34; // r7
  int v35; // r12
  unsigned int v36; // r8

  if ( !a1 )
    return 35;
  if ( !a1[22] )
    return 35;
  v6 = a1[21];
  if ( !v6 )
    return 35;
  ft_glyphslot_free_bitmap((_DWORD *)a1[21]);
  *(_DWORD *)(v6 + 148) = 0;
  *(_DWORD *)(v6 + 24) = 0;
  *(_DWORD *)(v6 + 28) = 0;
  *(_DWORD *)(v6 + 32) = 0;
  *(_DWORD *)(v6 + 36) = 0;
  *(_DWORD *)(v6 + 40) = 0;
  *(_DWORD *)(v6 + 44) = 0;
  *(_DWORD *)(v6 + 48) = 0;
  *(_DWORD *)(v6 + 52) = 0;
  *(_DWORD *)(v6 + 108) = 0;
  *(_DWORD *)(v6 + 112) = 0;
  *(_DWORD *)(v6 + 116) = 0;
  *(_DWORD *)(v6 + 120) = 0;
  *(_DWORD *)(v6 + 124) = 0;
  *(_DWORD *)(v6 + 80) = 0;
  *(_DWORD *)(v6 + 76) = 0;
  *(_DWORD *)(v6 + 84) = 0;
  *(_BYTE *)(v6 + 94) = 0;
  *(_DWORD *)(v6 + 100) = 0;
  *(_DWORD *)(v6 + 104) = 0;
  *(_DWORD *)(v6 + 128) = 0;
  *(_DWORD *)(v6 + 132) = 0;
  *(_DWORD *)(v6 + 136) = 0;
  *(_DWORD *)(v6 + 140) = 0;
  *(_DWORD *)(v6 + 152) = 0;
  *(_DWORD *)(v6 + 72) = 0;
  *(_DWORD *)(v6 + 56) = 0;
  *(_DWORD *)(v6 + 60) = 0;
  *(_DWORD *)(v6 + 144) = 0;
  v7 = (int **)a1[24];
  if ( (a3 & 0x400) != 0 )
    a3 |= 0x801u;
  v8 = v7[1][42];
  if ( (a3 & 1) != 0 )
    a3 = a3 & 0xFFFFFFF1 | 0xA;
  if ( v8 )
  {
    if ( (a3 & 0x8002) == 0 )
    {
      v9 = **v7;
      if ( (v9 & 0x300) == 0x100 )
      {
        v23 = a1[32];
        if ( *(int *)(v23 + 16) > 0
          && !*(_DWORD *)(v23 + 12)
          && ((a3 & 0x20) != 0 || (v9 & 0x400) == 0 || (HIWORD(a3) & 0xF) == 1 || *(_BYTE *)(v23 + 52)) )
        {
          if ( (a1[2] & 2) != 0 && (a3 & 8) == 0 )
          {
            v10 = ((int (__fastcall *)(int, _DWORD, int, unsigned int))v7[5][20])(v6, a1[22], a2, a3 | 0x4000);
            if ( !v10 )
            {
              v12 = *(_DWORD *)(v6 + 72);
              if ( v12 == 1651078259 )
                goto LABEL_15;
            }
            v23 = a1[32];
          }
          v24 = *(_DWORD *)(v23 + 28);
          *(_DWORD *)(v23 + 28) = 0;
          v25 = (*(int (__fastcall **)(int, int, _DWORD, int, unsigned int))(*(_DWORD *)(*(_DWORD *)v8 + 20) + 12))(
                  v8,
                  v6,
                  a1[22],
                  a2,
                  a3);
          *(_DWORD *)(v23 + 28) = v24;
          v10 = v25;
LABEL_15:
          v13 = a3 & 0x10;
          goto LABEL_16;
        }
      }
    }
  }
  v10 = ((int (__fastcall *)(int, _DWORD, int, unsigned int))v7[5][20])(v6, a1[22], a2, a3);
  if ( v10 )
    return v10;
  v12 = *(_DWORD *)(v6 + 72);
  if ( v12 != 1869968492 )
    goto LABEL_15;
  v10 = FT_Outline_Check((__int16 *)(v6 + 108));
  if ( v10 )
    return v10;
  if ( (a3 & 2) != 0 )
    goto LABEL_15;
  v13 = a3 & 0x10;
  if ( (a3 & 0x10) != 0 )
  {
    v32 = *(_DWORD *)(v6 + 44);
    v33 = *(_DWORD *)(v6 + 48);
    v34 = v32 + *(_DWORD *)(v6 + 24) + 63;
    v35 = v33 + *(_DWORD *)(v6 + 28) + 63;
    v32 &= 0xFFFFFFC0;
    v33 &= 0xFFFFFFC0;
    v36 = (*(_DWORD *)(v6 + 36) + 63) & 0xFFFFFFC0;
    *(_DWORD *)(v6 + 32) &= 0xFFFFFFC0;
    *(_DWORD *)(v6 + 36) = v36;
    *(_DWORD *)(v6 + 24) = (v34 & 0xFFFFFFC0) - v32;
    *(_DWORD *)(v6 + 28) = (v35 & 0xFFFFFFC0) - v33;
    *(_DWORD *)(v6 + 44) = v32;
    *(_DWORD *)(v6 + 48) = v33;
  }
  else
  {
    v26 = *(_DWORD *)(v6 + 32);
    v27 = *(_DWORD *)(v6 + 36);
    v28 = v27 - *(_DWORD *)(v6 + 28);
    v29 = v26 + *(_DWORD *)(v6 + 24) + 63;
    v26 &= 0xFFFFFFC0;
    v30 = (v27 + 63) & 0xFFFFFFC0;
    v31 = *(_DWORD *)(v6 + 48) & 0xFFFFFFC0;
    *(_DWORD *)(v6 + 44) &= 0xFFFFFFC0;
    *(_DWORD *)(v6 + 48) = v31;
    *(_DWORD *)(v6 + 24) = (v29 & 0xFFFFFFC0) - v26;
    *(_DWORD *)(v6 + 28) = v30 - (v28 & 0xFFFFFFC0);
    *(_DWORD *)(v6 + 32) = v26;
    *(_DWORD *)(v6 + 36) = v30;
  }
  v12 = (*(_DWORD *)(v6 + 52) + 32) & 0xFFFFFFC0;
  *(_DWORD *)(v6 + 40) = (*(_DWORD *)(v6 + 40) + 32) & 0xFFFFFFC0;
  *(_DWORD *)(v6 + 52) = v12;
LABEL_16:
  v14 = v13 == 0;
  if ( v13 )
    v13 = *(_DWORD *)(v6 + 52);
  else
    v12 = *(_DWORD *)(v6 + 40);
  if ( v14 )
  {
    *(_DWORD *)(v6 + 68) = v13;
    *(_DWORD *)(v6 + 64) = v12;
  }
  else
  {
    *(_DWORD *)(v6 + 64) = 0;
    *(_DWORD *)(v6 + 68) = v13;
  }
  if ( (a3 & 0x2000) == 0 && (a1[2] & 1) != 0 )
  {
    v22 = a1[22];
    *(_DWORD *)(v6 + 56) = FT_MulDiv(*(_DWORD *)(v6 + 56), *(_DWORD *)(v22 + 16), 64);
    *(_DWORD *)(v6 + 60) = FT_MulDiv(*(_DWORD *)(v6 + 60), *(_DWORD *)(v22 + 20), 64);
  }
  if ( (a3 & 0x800) == 0 )
  {
    v15 = a1[32];
    if ( *(_DWORD *)(v15 + 28) )
    {
      v16 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v6 + 4) + 96) + 4);
      v17 = *(_DWORD *)(v16 + 164);
      if ( v17 )
      {
        v18 = *(_DWORD *)(v6 + 72);
        if ( *(_DWORD *)(v17 + 24) == v18 )
          goto LABEL_32;
      }
      else
      {
        v18 = *(_DWORD *)(v6 + 72);
      }
      v17 = FT_Lookup_Renderer(v16, v18, 0);
      if ( !v17 )
      {
        v19 = (int *)(v15 + 4);
LABEL_33:
        FT_Vector_Transform((int *)(v6 + 64), v19);
        goto LABEL_34;
      }
LABEL_32:
      v19 = (int *)(v15 + 4);
      v10 = (*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)(v17 + 20) + 44))(v17, v6, v15 + 4, v15 + 20);
      goto LABEL_33;
    }
  }
LABEL_34:
  if ( v10 )
    return v10;
  v20 = *(_DWORD *)(v6 + 72);
  if ( v20 == 1651078259 || v20 == 1668246896 || (a3 & 4) == 0 )
    return v10;
  v21 = HIWORD(a3) & 0xF;
  if ( !v21 )
  {
    if ( (a3 & 0x1000) != 0 )
      v21 = 2;
    else
      v21 = 0;
  }
  return FT_Render_Glyph(v6, v21);
}


// ===== 709660 FT_Load_Char =====
int __fastcall FT_Load_Char(_DWORD *a1, int Char_Index, unsigned int a3)
{
  if ( !a1 )
    return 35;
  if ( a1[23] )
    Char_Index = FT_Get_Char_Index((int)a1);
  return FT_Load_Glyph(a1, Char_Index, a3);
}


// ===== 7096a0 FT_Stream_ReadLongLE =====
int __fastcall FT_Stream_ReadLongLE(_DWORD *a1, _DWORD *a2)
{
  int v4; // r1
  int (__fastcall *v5)(_DWORD *, int, _BYTE *, int); // r12
  unsigned __int8 *v6; // r6
  int result; // r0
  _BYTE v8[4]; // [sp+4h] [bp-4h] BYREF

  if ( !a1 )
    FT_Panic(
      "assertion failed on line %d of file %s\n",
      665,
      "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\base\\/ftstream.c");
  *a2 = 0;
  v4 = a1[2];
  if ( (unsigned int)(v4 + 3) < a1[1] )
  {
    v5 = (int (__fastcall *)(_DWORD *, int, _BYTE *, int))a1[5];
    if ( !v5 )
    {
      v6 = (unsigned __int8 *)(*a1 + v4);
      if ( !v6 )
      {
        result = 0;
LABEL_11:
        a1[2] = v4 + 4;
        return result;
      }
LABEL_10:
      result = (v6[1] << 8) | (v6[2] << 16) | *v6 | ((char)v6[3] << 24);
      goto LABEL_11;
    }
    v6 = v8;
    if ( v5(a1, v4, v8, 4) == 4 )
    {
      v4 = a1[2];
      goto LABEL_10;
    }
  }
  FT_Message("FT_Stream_ReadLongLE:");
  FT_Message(" invalid i/o; pos = 0x%lx, size = 0x%lx\n", a1[2], a1[1]);
  *a2 = 85;
  return 0;
}


// ===== 70979c FT_Stream_ReadLong =====
int __fastcall FT_Stream_ReadLong(_DWORD *a1, _DWORD *a2)
{
  unsigned int v4; // r2
  int v5; // r3
  int v6; // r1
  int (__fastcall *v7)(_DWORD *, int, _BYTE *, int); // r12
  unsigned __int8 *v8; // r6
  int result; // r0
  _BYTE v10[4]; // [sp+4h] [bp-4h] BYREF

  if ( !a1 )
    FT_Panic(
      "assertion failed on line %d of file %s\n",
      619,
      "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\base\\/ftstream.c");
  *a2 = 0;
  v4 = a1[1];
  v5 = a1[2];
  v6 = v5;
  if ( v5 + 3 < v4 )
  {
    v7 = (int (__fastcall *)(_DWORD *, int, _BYTE *, int))a1[5];
    if ( !v7 )
    {
      v8 = (unsigned __int8 *)(*a1 + v5);
      if ( !v8 )
      {
        result = 0;
LABEL_12:
        a1[2] = v5 + 4;
        return result;
      }
LABEL_11:
      result = (v8[2] << 8) | (v8[1] << 16) | v8[3] | ((char)*v8 << 24);
      goto LABEL_12;
    }
    v8 = v10;
    if ( v7(a1, v5, v10, 4) == 4 )
    {
      v5 = a1[2];
      goto LABEL_11;
    }
    v4 = a1[1];
    v6 = a1[2];
  }
  FT_Message("FT_Stream_ReadLong: invalid i/o; pos = 0x%lx, size = 0x%lx\n", v6, v4);
  *a2 = 85;
  return 0;
}


// ===== 709888 FT_Stream_ReadOffset =====
int __fastcall FT_Stream_ReadOffset(_DWORD *a1, _DWORD *a2)
{
  int v4; // r1
  int (__fastcall *v5)(_DWORD *, int, _BYTE *, int); // r12
  char *v6; // r6
  int result; // r0
  _BYTE v8[4]; // [sp+4h] [bp-4h] BYREF

  if ( !a1 )
    FT_Panic(
      "assertion failed on line %d of file %s\n",
      572,
      "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\base\\/ftstream.c");
  *a2 = 0;
  v4 = a1[2];
  if ( (unsigned int)(v4 + 2) < a1[1] )
  {
    v5 = (int (__fastcall *)(_DWORD *, int, _BYTE *, int))a1[5];
    if ( !v5 )
    {
      v6 = (char *)(*a1 + v4);
      if ( !v6 )
      {
        result = 0;
LABEL_11:
        a1[2] = v4 + 3;
        return result;
      }
LABEL_10:
      result = (unsigned __int8)v6[2] | ((unsigned __int8)v6[1] << 8) | (*v6 << 16);
      goto LABEL_11;
    }
    v6 = v8;
    if ( v5(a1, v4, v8, 3) == 3 )
    {
      v4 = a1[2];
      goto LABEL_10;
    }
  }
  *a2 = 85;
  FT_Message("FT_Stream_ReadOffset:");
  FT_Message(" invalid i/o; pos = 0x%lx, size = 0x%lx\n", a1[2], a1[1]);
  return 0;
}


// ===== 709978 FT_Stream_ReadShortLE =====
int __fastcall FT_Stream_ReadShortLE(_DWORD *a1, _DWORD *a2)
{
  int v4; // r1
  int (__fastcall *v5)(_DWORD *, int, _BYTE *, int); // r12
  unsigned __int8 *v6; // r6
  int result; // r0
  _BYTE v8[4]; // [sp+4h] [bp-4h] BYREF

  if ( !a1 )
    FT_Panic(
      "assertion failed on line %d of file %s\n",
      525,
      "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\base\\/ftstream.c");
  *a2 = 0;
  v4 = a1[2];
  if ( (unsigned int)(v4 + 1) < a1[1] )
  {
    v5 = (int (__fastcall *)(_DWORD *, int, _BYTE *, int))a1[5];
    if ( !v5 )
    {
      v6 = (unsigned __int8 *)(*a1 + v4);
      if ( !v6 )
      {
        LOWORD(result) = 0;
LABEL_11:
        a1[2] = v4 + 2;
        return (__int16)result;
      }
LABEL_10:
      LOWORD(result) = *v6 | (v6[1] << 8);
      goto LABEL_11;
    }
    v6 = v8;
    if ( v5(a1, v4, v8, 2) == 2 )
    {
      v4 = a1[2];
      goto LABEL_10;
    }
  }
  *a2 = 85;
  FT_Message("FT_Stream_ReadShortLE:");
  FT_Message(" invalid i/o; pos = 0x%lx, size = 0x%lx\n", a1[2], a1[1]);
  LOWORD(result) = 0;
  return (__int16)result;
}


// ===== 709a60 FT_Stream_ReadShort =====
int __fastcall FT_Stream_ReadShort(_DWORD *a1, _DWORD *a2)
{
  int v4; // r1
  int (__fastcall *v5)(_DWORD *, int, _BYTE *, int); // r12
  char *v6; // r6
  int result; // r0
  _BYTE v8[4]; // [sp+4h] [bp-4h] BYREF

  if ( !a1 )
    FT_Panic(
      "assertion failed on line %d of file %s\n",
      478,
      "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\base\\/ftstream.c");
  *a2 = 0;
  v4 = a1[2];
  if ( (unsigned int)(v4 + 1) < a1[1] )
  {
    v5 = (int (__fastcall *)(_DWORD *, int, _BYTE *, int))a1[5];
    if ( !v5 )
    {
      v6 = (char *)(*a1 + v4);
      if ( !v6 )
      {
        LOWORD(result) = 0;
LABEL_11:
        a1[2] = v4 + 2;
        return (__int16)result;
      }
LABEL_10:
      LOWORD(result) = (unsigned __int8)v6[1] | (unsigned __int16)(*v6 << 8);
      goto LABEL_11;
    }
    v6 = v8;
    if ( v5(a1, v4, v8, 2) == 2 )
    {
      v4 = a1[2];
      goto LABEL_10;
    }
  }
  *a2 = 85;
  FT_Message("FT_Stream_ReadShort:");
  FT_Message(" invalid i/o; pos = 0x%lx, size = 0x%lx\n", a1[2], a1[1]);
  LOWORD(result) = 0;
  return (__int16)result;
}


// ===== 709b4c FT_Stream_ReadChar =====
int __fastcall FT_Stream_ReadChar(_DWORD *a1, _DWORD *a2)
{
  int (__fastcall *v4)(_DWORD *, _DWORD, _BYTE *, int); // r12
  unsigned int v5; // r3
  int result; // r0
  _BYTE v7[5]; // [sp+7h] [bp-5h] BYREF

  v7[0] = 0;
  if ( !a1 )
    FT_Panic(
      "assertion failed on line %d of file %s\n",
      440,
      "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\base\\/ftstream.c");
  *a2 = 0;
  v4 = (int (__fastcall *)(_DWORD *, _DWORD, _BYTE *, int))a1[5];
  if ( v4 )
  {
    if ( v4(a1, a1[2], v7, 1) == 1 )
    {
      v5 = a1[2];
LABEL_9:
      a1[2] = v5 + 1;
      LOBYTE(result) = v7[0];
      return (char)result;
    }
  }
  else
  {
    v5 = a1[2];
    if ( v5 < a1[1] )
    {
      v7[0] = *(_BYTE *)(*a1 + v5);
      goto LABEL_9;
    }
  }
  *a2 = 85;
  FT_Message("FT_Stream_ReadChar: invalid i/o; pos = 0x%lx, size = 0x%lx\n", a1[2], a1[1]);
  LOBYTE(result) = 0;
  return (char)result;
}


// ===== 709c18 FT_Stream_EnterFrame =====
int __fastcall FT_Stream_EnterFrame(int a1, unsigned int a2)
{
  int v4; // r7
  int v5; // r0
  int v6; // r6
  unsigned int v8; // r0
  unsigned int v9; // r8
  int v10; // r3
  unsigned int v11; // r5
  unsigned int v12; // r2
  unsigned int v13; // r3
  unsigned int v14; // r1
  int v15; // r2
  unsigned int v16; // r3
  int v17; // [sp+4h] [bp-4h] BYREF

  v17 = 0;
  if ( !a1 || *(_DWORD *)(a1 + 32) )
    FT_Panic(
      "assertion failed on line %d of file %s\n",
      238,
      "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\base\\/ftstream.c");
  if ( *(_DWORD *)(a1 + 20) )
  {
    v4 = *(_DWORD *)(a1 + 28);
    v5 = ft_mem_qalloc(v4, a2, &v17);
    *(_DWORD *)a1 = v5;
    v6 = v17;
    if ( !v17 )
    {
      v8 = (*(int (__fastcall **)(int, _DWORD, int, unsigned int))(a1 + 20))(a1, *(_DWORD *)(a1 + 8), v5, a2);
      v9 = v8;
      if ( a2 > v8 )
      {
        FT_Message("FT_Stream_EnterFrame:");
        FT_Message(" invalid read; expected %lu bytes, got %lu\n", a2, v9);
        ft_mem_free(v4, *(_DWORD *)a1);
        *(_DWORD *)a1 = 0;
        v17 = 85;
        v10 = *(_DWORD *)a1;
        v11 = *(_DWORD *)a1 + a2;
        *(_DWORD *)(a1 + 8) += v9;
      }
      else
      {
        v10 = *(_DWORD *)a1;
        v11 = *(_DWORD *)a1 + a2;
        *(_DWORD *)(a1 + 8) += v8;
      }
      *(_DWORD *)(a1 + 36) = v11;
      *(_DWORD *)(a1 + 32) = v10;
      return v17;
    }
  }
  else
  {
    v12 = *(_DWORD *)(a1 + 4);
    v13 = *(_DWORD *)(a1 + 8);
    if ( v13 >= v12 || (v14 = a2 + v13, v12 < a2 + v13) )
    {
      v6 = 85;
      FT_Message("FT_Stream_EnterFrame:");
      FT_Message(" invalid i/o; pos = 0x%lx, count = %lu, size = 0x%lx\n", *(_DWORD *)(a1 + 8), a2, *(_DWORD *)(a1 + 4));
    }
    else
    {
      v15 = *(_DWORD *)a1;
      *(_DWORD *)(a1 + 8) = v14;
      v16 = v15 + v13;
      *(_DWORD *)(a1 + 36) = v16 + a2;
      *(_DWORD *)(a1 + 32) = v16;
      return v17;
    }
  }
  return v6;
}


// ===== 709db4 FT_Stream_ReadFields =====
int __fastcall FT_Stream_ReadFields(int *a1, int a2, int a3)
{
  int v3; // r4
  int v4; // r5
  int v5; // r8
  unsigned __int8 *v8; // r12
  int v9; // r0
  size_t v11; // r2
  unsigned __int8 *v12; // r5
  int v13; // r2
  char v14; // r3
  int v15; // r3
  int v16; // r1

  v8 = (unsigned __int8 *)a1[8];
  if ( a2 )
  {
    v3 = a2 + 4;
    v5 = 0;
  }
  else
  {
    v4 = 6;
  }
  if ( !a2 )
    return v4;
  while ( 2 )
  {
    v9 = *(unsigned __int8 *)(v3 - 4);
    switch ( *(_BYTE *)(v3 - 4) )
    {
      case 4:
        v4 = FT_Stream_EnterFrame((int)a1, *(unsigned __int16 *)(v3 - 2));
        if ( !v4 )
        {
          v12 = (unsigned __int8 *)a1[8];
          v5 = 1;
          goto LABEL_20;
        }
        goto LABEL_7;
      case 8:
      case 9:
        v12 = v8 + 1;
        v13 = *v8;
        v14 = 24;
        goto LABEL_13;
      case 0xC:
      case 0xD:
        v12 = v8 + 2;
        v14 = 16;
        v13 = v8[1] | (*v8 << 8);
        goto LABEL_13;
      case 0xE:
      case 0xF:
        v12 = v8 + 2;
        v14 = 16;
        v13 = *v8 | (v8[1] << 8);
        goto LABEL_13;
      case 0x10:
      case 0x11:
        v12 = v8 + 4;
        v13 = _byteswap_ulong(*(_DWORD *)v8);
        v14 = 0;
        goto LABEL_13;
      case 0x12:
      case 0x13:
        v12 = v8 + 4;
        v13 = (v8[2] << 16) | (v8[3] << 24) | *v8 | (v8[1] << 8);
        v14 = 0;
        goto LABEL_13;
      case 0x14:
      case 0x15:
        v12 = v8 + 3;
        v14 = 8;
        v13 = v8[2] | (*v8 << 16) | (v8[1] << 8);
        goto LABEL_13;
      case 0x16:
      case 0x17:
        v12 = v8 + 3;
        v13 = (v8[1] << 8) | (v8[2] << 16) | *v8;
        v14 = 8;
LABEL_13:
        if ( (v9 & 1) != 0 )
          v13 = v13 << v14 >> v14;
        v15 = *(unsigned __int8 *)(v3 - 3);
        v16 = *(unsigned __int16 *)(v3 - 2);
        if ( v15 == 2 )
        {
          *(_WORD *)(a3 + v16) = v13;
        }
        else if ( v15 == 1 )
        {
          *(_BYTE *)(a3 + v16) = v13;
        }
        else
        {
          *(_DWORD *)(a3 + v16) = v13;
        }
        goto LABEL_20;
      case 0x18:
      case 0x19:
        v11 = *(unsigned __int8 *)(v3 - 3);
        v12 = &v8[v11];
        if ( (unsigned int)&v8[v11] <= a1[9] )
        {
          if ( v9 == 24 )
            memcpy((void *)(a3 + *(unsigned __int16 *)(v3 - 2)), v8, v11);
LABEL_20:
          v3 += 4;
          v8 = v12;
          continue;
        }
        v4 = 85;
LABEL_7:
        if ( v5 )
          FT_Stream_ExitFrame(a1);
        return v4;
      default:
        a1[8] = (int)v8;
        v4 = 0;
        goto LABEL_7;
    }
  }
}


// ===== 709fd4 FT_Stream_ExtractFrame =====
int __fastcall FT_Stream_ExtractFrame(int a1, unsigned int a2, _DWORD *a3)
{
  int result; // r0

  result = FT_Stream_EnterFrame(a1, a2);
  if ( !result )
  {
    *a3 = *(_DWORD *)(a1 + 32);
    *(_DWORD *)(a1 + 36) = 0;
    *(_DWORD *)(a1 + 32) = 0;
  }
  return result;
}


// ===== 709ffc FT_Stream_ReadAt =====
int __fastcall FT_Stream_ReadAt(_DWORD *a1, unsigned int a2, void *a3, size_t a4)
{
  unsigned int v4; // lr
  int (*v8)(void); // r12
  size_t v9; // r8
  size_t v11; // lr

  v4 = a1[1];
  if ( v4 <= a2 )
  {
    FT_Message("FT_Stream_ReadAt: invalid i/o; pos = 0x%lx, size = 0x%lx\n", a2, a1[1]);
    return 85;
  }
  else
  {
    v8 = (int (*)(void))a1[5];
    if ( v8 )
    {
      v9 = v8();
      a1[2] = v9 + a2;
      if ( v9 >= a4 )
        return 0;
    }
    else
    {
      v11 = v4 - a2;
      if ( a4 >= v11 )
        v9 = v11;
      else
        v9 = a4;
      memcpy(a3, (const void *)(*a1 + a2), v9);
      a1[2] = v9 + a2;
      if ( v9 >= a4 )
        return 0;
    }
    FT_Message("FT_Stream_ReadAt:");
    FT_Message(" invalid read; expected %lu bytes, got %lu\n", a4, v9);
    return 85;
  }
}


// ===== 70a0c8 FT_Stream_Read =====
int __fastcall FT_Stream_Read(_DWORD *a1, void *a2, size_t a3)
{
  return FT_Stream_ReadAt(a1, a1[2], a2, a3);
}


// ===== 70a0d8 FT_Stream_Seek =====
int __fastcall FT_Stream_Seek(_DWORD *a1, unsigned int a2)
{
  int (*v2)(void); // r12
  unsigned int v6; // r2

  v2 = (int (*)(void))a1[5];
  a1[2] = a2;
  if ( v2 )
  {
    if ( !v2() )
      return 0;
    FT_Message("FT_Stream_Seek: invalid i/o; pos = 0x%lx, size = 0x%lx\n", a2, a1[1]);
    return 85;
  }
  else
  {
    v6 = a1[1];
    if ( a2 <= v6 )
      return 0;
    FT_Message("FT_Stream_Seek: invalid i/o; pos = 0x%lx, size = 0x%lx\n", a2, v6);
    return 85;
  }
}


// ===== 70a154 FT_Stream_Skip =====
int __fastcall FT_Stream_Skip(_DWORD *a1, int a2)
{
  if ( a2 < 0 )
    return 85;
  else
    return FT_Stream_Seek(a1, a2 + a1[2]);
}


// ===== 70a170 raccess_guess_apple_generic =====
int __fastcall raccess_guess_apple_generic(int a1, _DWORD *a2, int a3, int a4, int *a5)
{
  int Long; // r0
  int v8; // r6
  unsigned __int16 Short; // r0
  int v11; // r8
  int v12; // r7
  int v13; // r0
  int v14; // r10
  _DWORD v15[2]; // [sp+4h] [bp-8h] BYREF

  Long = FT_Stream_ReadLong(a2, v15);
  v8 = v15[0];
  if ( !v15[0] )
  {
    if ( Long != a4 )
      return 2;
    FT_Stream_ReadLong(a2, v15);
    v8 = v15[0];
    if ( !v15[0] )
    {
      v8 = FT_Stream_Skip(a2, 16);
      if ( !v8 )
      {
        v15[0] = 0;
        Short = FT_Stream_ReadShort(a2, v15);
        v8 = v15[0];
        if ( !v15[0] )
        {
          v11 = Short;
          if ( !Short )
            return 2;
          v12 = v15[0];
          while ( 1 )
          {
            v13 = FT_Stream_ReadLong(a2, v15);
            v8 = v15[0];
            ++v12;
            if ( v15[0] )
              break;
            if ( v13 == 2 )
            {
              v14 = FT_Stream_ReadLong(a2, v15);
              if ( !v15[0] )
              {
                FT_Stream_ReadLong(a2, v15);
                if ( !v15[0] )
                {
                  *a5 = v14;
                  return v8;
                }
              }
            }
            else
            {
              FT_Stream_Skip(a2, 8);
            }
            if ( v12 >= v11 )
              return 2;
          }
        }
      }
    }
  }
  return v8;
}


// ===== 70a28c raccess_guess_apple_single =====
int __fastcall raccess_guess_apple_single(int a1, _DWORD *a2, int a3, _DWORD *a4, int *a5)
{
  *a4 = 0;
  if ( a2 )
    return raccess_guess_apple_generic(a1, a2, a3, 333312, a5);
  else
    return 81;
}


// ===== 70a2b8 raccess_guess_apple_double =====
int __fastcall raccess_guess_apple_double(int a1, _DWORD *a2, int a3, _DWORD *a4, int *a5)
{
  *a4 = 0;
  if ( a2 )
    return raccess_guess_apple_generic(a1, a2, a3, 333319, a5);
  else
    return 81;
}


// ===== 70a2e4 FT_Raccess_Guess =====
int __fastcall FT_Raccess_Guess(int a1, _DWORD *a2, int a3, int a4, int a5, int *a6)
{
  int v8; // r4
  int *v9; // r6
  int result; // r0
  _DWORD v13[10]; // [sp+14h] [bp-28h]

  v13[0] = raccess_guess_apple_double;
  v13[1] = raccess_guess_apple_single;
  v13[2] = raccess_guess_darwin_ufs_export;
  v13[3] = raccess_guess_darwin_newvfs;
  v13[4] = raccess_guess_darwin_hfsplus;
  v13[5] = raccess_guess_vfat;
  v13[6] = raccess_guess_linux_cap;
  v13[7] = raccess_guess_linux_double;
  v8 = 0;
  v9 = a6;
  v13[8] = raccess_guess_linux_netatalk;
  do
  {
    while ( 1 )
    {
      *(_DWORD *)(a4 + v8 * 4) = 0;
      if ( !a2 )
        break;
      result = FT_Stream_Seek(a2, 0);
      a6[v8] = result;
      if ( !result )
        goto LABEL_6;
      ++v8;
      ++v9;
      if ( v8 == 9 )
        return result;
    }
    a6[v8] = 0;
LABEL_6:
    result = ((int (__fastcall *)(int, _DWORD *, int, int, int))v13[v8])(a1, a2, a3, a4 + v8 * 4, a5 + v8 * 4);
    ++v8;
    *v9++ = result;
  }
  while ( v8 != 9 );
  return result;
}


// ===== 70a3b8 FT_Raccess_Get_HeaderInfo =====
int __fastcall FT_Raccess_Get_HeaderInfo(int a1, _DWORD *a2, unsigned int a3, unsigned int *a4, unsigned int *a5)
{
  int v8; // r3
  int v10; // r12
  int v11; // r0
  unsigned int v12; // r1
  unsigned int v13; // r2
  int v14; // r11
  int v15; // r0
  unsigned int v16; // r11
  _BOOL4 v17; // r6
  int v18; // r0
  __int64 v19; // r0
  int v20; // r2
  int v21; // r12
  unsigned __int16 v22; // r0
  unsigned int v23; // r11
  int v24; // [sp+20h] [bp-2Ch] BYREF
  _BYTE v25[16]; // [sp+24h] [bp-28h] BYREF
  unsigned int v26[2]; // [sp+34h] [bp-18h] BYREF
  unsigned __int8 v27; // [sp+3Ch] [bp-10h]
  unsigned __int8 v28; // [sp+3Dh] [bp-Fh]
  unsigned __int8 v29; // [sp+3Eh] [bp-Eh]
  unsigned __int8 v30; // [sp+3Fh] [bp-Dh]
  char v31; // [sp+43h] [bp-9h]

  v8 = FT_Stream_Seek(a2, a3);
  if ( !v8 )
  {
    v24 = 0;
    v8 = FT_Stream_Read(a2, v26, 0x10u);
    if ( !v8 )
    {
      v10 = (v28 << 16) | (v27 << 24);
      v11 = v29;
      v24 = 0;
      v12 = _byteswap_ulong(v26[0]) + a3;
      v13 = _byteswap_ulong(v26[1]);
      v14 = v30;
      *a5 = v12;
      v15 = v10 | v14 | (v11 << 8);
      v16 = v13 + a3;
      v17 = v13 + a3 == a3;
      if ( v12 + v15 == v16 )
        v18 = v17;
      else
        v18 = v17 | 1;
      if ( v18 )
        return 2;
      v8 = FT_Stream_Seek(a2, v16);
      if ( !v8 )
      {
        v24 = 0;
        v25[15] = v31 + 1;
        v8 = FT_Stream_Read(a2, v25, 0x10u);
        if ( !v8 )
        {
          v19 = 0x100000001LL;
          do
          {
            v20 = (unsigned __int8)v25[v8];
            v21 = *((unsigned __int8 *)v26 + v8++);
            if ( v20 )
              LODWORD(v19) = 0;
            if ( v21 != v20 )
              HIDWORD(v19) = 0;
          }
          while ( v8 != 16 );
          if ( !v19 )
            return 2;
          v24 = FT_Stream_Skip(a2, 8);
          v22 = FT_Stream_ReadShort(a2, &v24);
          v8 = v24;
          if ( !v24 )
          {
            v23 = v22 + v16;
            v8 = FT_Stream_Seek(a2, v23);
            if ( !v8 )
            {
              *a4 = v23;
              v24 = 0;
            }
          }
        }
      }
    }
  }
  return v8;
}


// ===== 70a5e4 FT_Get_Sfnt_Name =====
int __fastcall FT_Get_Sfnt_Name(int a1, unsigned int a2, int a3)
{
  bool v3; // zf
  int v5; // r7
  int v6; // r6
  int v7; // r5
  int v9; // r10
  _DWORD *v10; // r9
  int v11; // r0
  int v12; // r1
  int v13; // [sp+Ch] [bp-4h] BYREF

  v3 = a3 == 0;
  if ( a3 )
    v3 = a1 == 0;
  v13 = 6;
  if ( !v3 && (*(_DWORD *)(a1 + 8) & 8) != 0 && *(unsigned __int16 *)(a1 + 344) > a2 )
  {
    v5 = 20 * a2;
    v6 = *(_DWORD *)(a1 + 360);
    v7 = v6 + 20 * a2;
    if ( !*(_WORD *)(v7 + 8) || *(_DWORD *)(v7 + 16) )
      goto LABEL_8;
    v9 = *(_DWORD *)(a1 + 100);
    v10 = *(_DWORD **)(a1 + 104);
    v11 = ft_mem_realloc(v9, 1, 0, *(unsigned __int16 *)(v7 + 8), 0, &v13);
    *(_DWORD *)(v7 + 16) = v11;
    v12 = v11;
    if ( !v13 )
    {
      v13 = FT_Stream_Seek(v10, *(_DWORD *)(v7 + 12));
      if ( !v13 )
      {
        v13 = FT_Stream_Read(v10, *(void **)(v7 + 16), *(unsigned __int16 *)(v7 + 8));
        if ( !v13 )
          goto LABEL_8;
      }
      v12 = *(_DWORD *)(v7 + 16);
    }
    ft_mem_free(v9, v12);
    *(_WORD *)(v7 + 8) = 0;
    *(_DWORD *)(v7 + 16) = 0;
LABEL_8:
    *(_WORD *)a3 = *(_WORD *)(v6 + v5);
    *(_WORD *)(a3 + 2) = *(_WORD *)(v7 + 2);
    *(_WORD *)(a3 + 4) = *(_WORD *)(v7 + 4);
    *(_WORD *)(a3 + 6) = *(_WORD *)(v7 + 6);
    *(_DWORD *)(a3 + 8) = *(_DWORD *)(v7 + 16);
    *(_DWORD *)(a3 + 12) = *(unsigned __int16 *)(v7 + 8);
    return 0;
  }
  return 6;
}


// ===== 70a718 FT_Request_Size =====
int __fastcall FT_Request_Size(_DWORD *a1, _DWORD *a2)
{
  int result; // r0
  int v4; // r2
  int (__fastcall *v5)(_DWORD); // r6
  int v6; // [sp+4h] [bp-4h] BYREF

  if ( !a1 )
    return 35;
  if ( !a2 )
    return 6;
  if ( (int)a2[1] < 0 )
    return 6;
  v4 = a2[2];
  if ( v4 < 0 || *a2 > 4u )
    return 6;
  v5 = *(int (__fastcall **)(_DWORD))(*(_DWORD *)(a1[24] + 20) + 96);
  if ( v5 )
    return v5(a1[22]);
  if ( (a1[2] & 3) == 2 )
  {
    result = FT_Match_Size(a1, (int)a2, 0, &v6);
    if ( !result )
    {
      if ( dword_A35518 > 2 )
        FT_Message("FT_Request_Size: bitmap strike %lu matched\n", v6);
      return FT_Select_Size(a1, v6);
    }
  }
  else
  {
    FT_Request_Metrics((unsigned int)a1, (int)a2, v4);
    return 0;
  }
  return result;
}


// ===== 70a7fc FT_Set_Pixel_Sizes =====
int __fastcall FT_Set_Pixel_Sizes(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  int v3; // r12
  int v4; // r2
  _DWORD v6[6]; // [sp+4h] [bp-18h] BYREF

  if ( a2 )
  {
    if ( !a3 )
      a3 = a2;
  }
  else
  {
    if ( !a3 )
    {
      a2 = 1;
      a3 = 1;
      goto LABEL_14;
    }
    a2 = a3;
  }
  if ( a2 > 0xFFFE )
  {
    v3 = 4194240;
    goto LABEL_7;
  }
LABEL_14:
  v3 = a2 << 6;
LABEL_7:
  if ( a3 <= 0xFFFE )
    v4 = a3 << 6;
  else
    v4 = 4194240;
  v6[1] = v3;
  v6[2] = v4;
  v6[4] = 0;
  v6[0] = 0;
  v6[3] = 0;
  return FT_Request_Size(a1, v6);
}


// ===== 70a884 FT_Set_Char_Size =====
int __fastcall FT_Set_Char_Size(_DWORD *a1, int a2, int a3, int a4, int a5)
{
  int v5; // r12
  int v6; // lr
  _DWORD v8[5]; // [sp+4h] [bp-14h] BYREF

  v5 = a2;
  v6 = a5;
  if ( a2 )
  {
    if ( !a3 )
      a3 = a2;
  }
  else
  {
    v5 = a3;
  }
  if ( a4 )
  {
    if ( !a5 )
      v6 = a4;
  }
  else
  {
    a4 = a5;
  }
  if ( v5 < 64 )
    v5 = 64;
  if ( a3 < 64 )
    a3 = 64;
  if ( !a4 )
  {
    v6 = 72;
    a4 = 72;
  }
  v8[0] = 0;
  v8[1] = v5;
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = v6;
  return FT_Request_Size(a1, v8);
}


// ===== 70a8f8 FT_New_GlyphSlot =====
int __fastcall FT_New_GlyphSlot(int a1, _DWORD *a2)
{
  int v4; // r3
  int v5; // r10
  int v6; // r8
  _DWORD *v7; // r8
  int result; // r0
  int v9; // r9
  int v10; // r3
  int v11; // r11
  _DWORD *v12; // r1
  int v13; // r0
  int (__fastcall *v14)(_DWORD *); // r3
  int v15; // [sp+4h] [bp-10h]
  int v16; // [sp+8h] [bp-Ch] BYREF
  int v17; // [sp+Ch] [bp-8h] BYREF

  if ( !a1 )
    return 6;
  v4 = *(_DWORD *)(a1 + 96);
  if ( !v4 )
    return 6;
  v5 = *(_DWORD *)(v4 + 8);
  v6 = *(_DWORD *)(v4 + 20);
  if ( dword_A35518 > 3 )
  {
    FT_Message("FT_New_GlyphSlot: Creating new slot object\n");
    v7 = ft_mem_alloc(v5, *(_DWORD *)(v6 + 44), &v17);
    result = v17;
    if ( v17 )
    {
LABEL_5:
      if ( a2 )
        *a2 = 0;
LABEL_7:
      if ( dword_A35518 <= 3 )
        return result;
LABEL_20:
      FT_Message("FT_New_GlyphSlot: Return %d\n", result);
      return v17;
    }
  }
  else
  {
    v7 = ft_mem_alloc(v5, *(_DWORD *)(v6 + 44), &v17);
    result = v17;
    if ( v17 )
      goto LABEL_5;
  }
  v7[1] = a1;
  v9 = *(_DWORD *)(a1 + 96);
  v10 = *(_DWORD *)(v9 + 20);
  v11 = *(_DWORD *)(v9 + 8);
  v16 = result;
  v15 = v10;
  *v7 = *(_DWORD *)(v9 + 4);
  v12 = ft_mem_alloc(v11, 40, &v16);
  v13 = v16;
  if ( v16
    || ((v7[39] = v12, (**(_DWORD **)v9 & 0x200) == 0) ? (v13 = FT_GlyphLoader_New(v11, v12), v16 = v13) : (v13 = v16),
        v13) )
  {
    v17 = v13;
    goto LABEL_22;
  }
  v14 = *(int (__fastcall **)(_DWORD *))(v15 + 64);
  if ( v14 )
  {
    v16 = v14(v7);
    v17 = v16;
    if ( !v16 )
      goto LABEL_17;
LABEL_22:
    ft_glyphslot_done((int)v7);
    ft_mem_free(v5, (int)v7);
    result = v17;
    goto LABEL_7;
  }
  v17 = 0;
LABEL_17:
  v7[2] = *(_DWORD *)(a1 + 84);
  *(_DWORD *)(a1 + 84) = v7;
  if ( a2 )
    *a2 = v7;
  result = v17;
  if ( dword_A35518 > 3 )
    goto LABEL_20;
  return result;
}


// ===== 70aac4 raccess_make_file_name =====
char *__fastcall raccess_make_file_name(int a1, char *a2, const char *a3)
{
  char *v3; // r8
  const char *v6; // r5
  size_t v7; // r10
  size_t v8; // r0
  char *v9; // r4
  char *v10; // r0
  char *v11; // r9
  char *v12; // r10
  int v14; // [sp+4h] [bp-4h] BYREF

  v3 = nullptr;
  v14 = 0;
  v6 = a2;
  v7 = LC_API_STRLEN_0(a2);
  v8 = LC_API_STRLEN_0(a3);
  v9 = (char *)ft_mem_alloc(a1, v7 + v8 + 1, &v14);
  if ( !v14 )
  {
    v10 = strrchr(v6, 47);
    v11 = v10;
    v3 = v9;
    if ( v10 )
    {
      v12 = &v9[v10 - v6];
      LC_API_STRNCPY_0(v9, v6, v10 - v6 + 1);
      v6 = v11 + 1;
      v12[1] = 0;
    }
    else
    {
      *v9 = 0;
    }
    LC_API_STRCAT_0(v9, a3);
    LC_API_STRCAT_0(v9, v6);
  }
  return v3;
}


// ===== 70ab7c raccess_guess_linux_cap =====
int __fastcall raccess_guess_linux_cap(int *a1, int a2, char *a3, char **a4, char *a5)
{
  char *file_name; // r0
  bool v7; // zf
  char *v8; // r3
  int result; // r0

  file_name = raccess_make_file_name(*a1, a3, ".resource/");
  v8 = file_name;
  v7 = file_name == nullptr;
  if ( file_name )
  {
    *a4 = file_name;
    v8 = a5;
    result = 0;
  }
  else
  {
    result = 64;
  }
  if ( !v7 )
    *(_DWORD *)v8 = result;
  return result;
}


// ===== 70abb8 raccess_guess_vfat =====
int __fastcall raccess_guess_vfat(int *a1, int a2, char *a3, char **a4, char *a5)
{
  char *file_name; // r0
  bool v7; // zf
  char *v8; // r3
  int result; // r0

  file_name = raccess_make_file_name(*a1, a3, "resource.frk/");
  v8 = file_name;
  v7 = file_name == nullptr;
  if ( file_name )
  {
    *a4 = file_name;
    v8 = a5;
    result = 0;
  }
  else
  {
    result = 64;
  }
  if ( !v7 )
    *(_DWORD *)v8 = result;
  return result;
}


// ===== 70abf4 FT_Raccess_Get_DataOffsets =====
int __fastcall FT_Raccess_Get_DataOffsets(int *a1, _DWORD *a2, unsigned int a3, int a4, int a5, int *a6, int *a7)
{
  int v8; // r12
  unsigned __int16 v10; // r0
  int v11; // r7
  int v12; // r0
  int v13; // r4
  unsigned __int16 v14; // r0
  unsigned __int16 v15; // r10
  unsigned __int16 v16; // r0
  unsigned __int16 v17; // r9
  int v18; // r3
  int v19; // r0
  char *v20; // r4
  size_t v21; // r1
  int v22; // r7
  int v23; // r8
  int v24; // r10
  int v25; // r10
  int v26; // r0
  int v27; // r3
  int v28; // [sp+18h] [bp-24h]
  int v30; // [sp+28h] [bp-14h]
  int v32; // [sp+34h] [bp-8h] BYREF

  v30 = *a1;
  v8 = FT_Stream_Seek(a2, a3);
  if ( !v8 )
  {
    v32 = 0;
    v10 = FT_Stream_ReadShort(a2, &v32);
    v8 = v32;
    v28 = v10;
    if ( !v32 )
    {
      v11 = 0;
      while ( 1 )
      {
        v12 = FT_Stream_ReadLong(a2, &v32);
        v8 = v32;
        v13 = v12;
        ++v11;
        if ( v32 )
          break;
        v14 = FT_Stream_ReadShort(a2, &v32);
        v8 = v32;
        v15 = v14;
        if ( v32 )
          break;
        v16 = FT_Stream_ReadShort(a2, &v32);
        v8 = v32;
        v17 = v16;
        if ( v32 )
          break;
        if ( dword_A35530 > 1 )
          FT_Message("Resource tags: %c%c%c%c\n", v13 >> 24, v13 << 8 >> 24, (__int16)v13 >> 8, (char)v13);
        if ( v13 == a5 )
        {
          *a7 = v15 + 1;
          v8 = FT_Stream_Seek(a2, v17 + a3);
          if ( !v8 )
          {
            v18 = *a7;
            v32 = 0;
            v19 = ft_mem_realloc(v30, 8, 0, v18, 0, &v32);
            v8 = v32;
            v20 = (char *)v19;
            if ( !v32 )
            {
              v21 = *a7;
              if ( *a7 <= 0 )
              {
LABEL_23:
                qsort(v20, v21, 8u, (int (*)(const void *, const void *))ft_raccess_sort_ref_by_id);
                v26 = ft_mem_realloc(v30, 4, 0, *a7, 0, &v32);
                v27 = v32;
                if ( !v32 )
                {
                  if ( *a7 > 0 )
                  {
                    do
                    {
                      *(_DWORD *)(v26 + 4 * v27) = a4 + *(_DWORD *)&v20[8 * v27 + 4];
                      ++v27;
                    }
                    while ( *a7 > v27 );
                  }
                  *a6 = v26;
                  v32 = 0;
                }
              }
              else
              {
                v22 = v32;
                v23 = v32;
                while ( 1 )
                {
                  *(_WORD *)&v20[v22] = FT_Stream_ReadShort(a2, &v32);
                  ++v23;
                  if ( v32 )
                    break;
                  v32 = FT_Stream_Skip(a2, 2);
                  if ( v32 )
                    break;
                  v24 = FT_Stream_ReadLong(a2, &v32);
                  if ( v32 )
                    break;
                  v25 = v24 & 0xFFFFFF;
                  v32 = FT_Stream_Skip(a2, 4);
                  if ( v32 )
                    break;
                  *(_DWORD *)&v20[v22 + 4] = v25;
                  v21 = *a7;
                  v22 += 8;
                  if ( *a7 <= v23 )
                    goto LABEL_23;
                }
              }
              ft_mem_free(v30, (int)v20);
              return v32;
            }
          }
          return v8;
        }
        if ( v28 < v11 )
          return 1;
      }
    }
  }
  return v8;
}


// ===== 70aee8 FT_New_Library =====
int __fastcall FT_New_Library(int a1, int *a2)
{
  int v4; // r4
  _DWORD *v5; // r0
  int v6; // r6
  int v8; // [sp+4h] [bp-4h] BYREF

  if ( !a1 )
    return 6;
  ft_debug_init();
  v5 = ft_mem_alloc(a1, 196, &v8);
  v4 = v8;
  v6 = (int)v5;
  if ( !v8 )
  {
    *v5 = a1;
    v5[44] = 0x4000;
    v5[43] = ft_mem_alloc(a1, 0x4000, &v8);
    if ( v8 )
    {
      ft_mem_free(a1, v6);
      return v8;
    }
    else
    {
      *a2 = v6;
    }
  }
  return v4;
}


// ===== 70af74 FT_Get_Module =====
int __fastcall FT_Get_Module(int a1, char *a2)
{
  bool v2; // zf
  int *v4; // r4
  unsigned int v5; // r7
  int v6; // r5

  v2 = a1 == 0;
  if ( a1 )
    v2 = a2 == nullptr;
  if ( v2 )
    return 0;
  v4 = (int *)(a1 + 28);
  v5 = a1 + 4 * *(_DWORD *)(a1 + 24) + 28;
  if ( a1 + 28 >= v5 )
    return 0;
  while ( 1 )
  {
    v6 = *v4++;
    if ( !LC_API_STRCMP_0(*(const char **)(*(_DWORD *)v6 + 8), a2) )
      break;
    if ( v5 <= (unsigned int)v4 )
      return 0;
  }
  return v6;
}


// ===== 70afe0 FT_Get_TrueType_Engine_Type =====
int __fastcall FT_Get_TrueType_Engine_Type(int a1)
{
  _DWORD *Module; // r0
  int service; // r0

  if ( a1
    && (Module = (_DWORD *)FT_Get_Module(a1, "truetype")) != nullptr
    && (service = ft_module_get_service(Module, (int)"truetype-engine")) != 0 )
  {
    return *(_DWORD *)service;
  }
  else
  {
    return 0;
  }
}


// ===== 70b02c FT_Get_Module_Interface =====
int __fastcall FT_Get_Module_Interface(int a1, char *a2)
{
  int result; // r0

  result = FT_Get_Module(a1, a2);
  if ( result )
    return *(_DWORD *)(*(_DWORD *)result + 20);
  return result;
}


// ===== 70b044 FT_Add_Module =====
int __fastcall FT_Add_Module(int result, int *a2)
{
  int *v2; // r5
  unsigned int v4; // r9
  const char *v5; // r11
  int v6; // r6
  int v7; // r7
  int v8; // r10
  int v9; // r8
  int v10; // r7
  int **v11; // r6
  int v12; // r3
  int *v13; // r2
  int *v14; // r3
  int v15; // r3
  int (__fastcall *v16)(int **); // r3
  int v17; // r3
  int v18; // r8
  _DWORD *v19; // r10
  int *v20; // r9
  int (__fastcall *v21)(int, int **); // r3
  int v22; // [sp+0h] [bp-Ch] BYREF
  int v23; // [sp+4h] [bp-8h] BYREF

  v2 = (int *)result;
  if ( !result )
    return 33;
  if ( !a2 )
    return 6;
  if ( a2[4] > 131075 )
    return 4;
  v4 = *(_DWORD *)(result + 24);
  if ( v4 )
  {
    v5 = (const char *)a2[2];
    v6 = result;
    v7 = 0;
    while ( 1 )
    {
      v8 = *(_DWORD *)(v6 + 28);
      ++v7;
      v9 = *(_DWORD *)v8;
      v6 += 4;
      result = LC_API_STRCMP_0(*(const char **)(*(_DWORD *)v8 + 8), v5);
      if ( !result )
        break;
      if ( v7 == v4 )
        goto LABEL_15;
    }
    if ( a2[3] <= *(_DWORD *)(v9 + 12) )
      return 5;
    result = FT_Remove_Module((int)v2, v8);
    v4 = v2[6];
  }
LABEL_15:
  v10 = *v2;
  if ( v4 > 0x1F )
    result = 48;
  v23 = 0;
  if ( v4 <= 0x1F )
  {
    v11 = (int **)ft_mem_alloc(v10, a2[1], &v23);
    result = v23;
    if ( !v23 )
    {
      *v11 = a2;
      v11[1] = v2;
      v11[2] = (int *)v10;
      v12 = *a2;
      if ( (*a2 & 2) == 0 )
      {
        v13 = a2;
        goto LABEL_22;
      }
      v18 = *v2;
      v19 = ft_mem_alloc(*v2, 12, &v22);
      if ( v22 )
      {
        v23 = v22;
        goto LABEL_27;
      }
      v20 = *v11;
      v11[5] = *v11;
      v11[6] = (int *)v20[9];
      if ( v20[9] == 1869968492 )
      {
        v21 = *(int (__fastcall **)(int, int **))(v20[14] + 4);
        if ( v21 )
        {
          v22 = v21(v18, v11 + 15);
          if ( v22 )
          {
LABEL_45:
            ft_mem_free(v18, (int)v19);
            v23 = v22;
            if ( !v22 )
            {
              v13 = *v11;
              v12 = **v11;
LABEL_22:
              if ( (v12 & 4) != 0 )
              {
                v2[42] = (int)v11;
                v13 = *v11;
                v12 = **v11;
              }
              if ( (v12 & 1) == 0
                || (v14 = *v11, v11[5] = v13, (*v14 & 0x200) != 0)
                || (v23 = FT_GlyphLoader_New(v10, v11 + 9)) == 0 )
              {
                v16 = (int (__fastcall *)(int **))a2[6];
                if ( !v16 || (v23 = v16(v11)) == 0 )
                {
                  v17 = v2[6];
                  v2[v17 + 7] = (int)v11;
                  v2[6] = v17 + 1;
                  return v23;
                }
              }
            }
LABEL_27:
            v15 = **v11;
            if ( (v15 & 1) != 0 && (v15 & 0x200) == 0 )
            {
              FT_GlyphLoader_Done(v11[9]);
              v15 = **v11;
            }
            if ( (v15 & 2) != 0 )
            {
              if ( v11[15] )
                (*(void (**)(void))(v11[5][14] + 20))();
            }
            ft_mem_free(v10, (int)v11);
            return v23;
          }
          v11[16] = *(int **)(v20[14] + 16);
          v11[17] = (int *)v20[10];
        }
      }
      v19[2] = v11;
      FT_List_Add(v2 + 39, v19);
      v2[41] = FT_Lookup_Renderer((int)v2, 1869968492, 0);
      if ( !v22 )
      {
        v23 = 0;
        v13 = *v11;
        v12 = **v11;
        goto LABEL_22;
      }
      goto LABEL_45;
    }
  }
  return result;
}


// ===== 70b31c ft_service_list_lookup =====
const char *__fastcall ft_service_list_lookup(const char **a1, char *a2)
{
  bool v2; // zf
  const char **v4; // r5
  const char *v6; // r0
  const char *v7; // t1

  v2 = a2 == nullptr;
  if ( a2 )
    v2 = a1 == nullptr;
  v4 = a1;
  if ( v2 )
    return nullptr;
  v6 = *a1;
  if ( !v6 )
    return nullptr;
  while ( LC_API_STRCMP_0(v6, a2) )
  {
    v7 = v4[2];
    v4 += 2;
    v6 = v7;
    if ( !v7 )
      return nullptr;
  }
  return v4[1];
}


// ===== 70b370 FT_Stream_New =====
int __fastcall FT_Stream_New(int *a1, int *a2, int *a3)
{
  int v5; // r3
  int v6; // r5
  _DWORD *v7; // r0
  int v8; // r7
  int v9; // r3
  int v11; // r0
  int v12; // r3
  int v13; // [sp+4h] [bp-8h] BYREF

  if ( a1 )
  {
    if ( !a2 )
      return 6;
    *a3 = 0;
    v6 = *a1;
    v7 = ft_mem_alloc(*a1, 40, &v13);
    v5 = v13;
    v8 = (int)v7;
    if ( v13 )
      return v5;
    v7[7] = v6;
    v9 = *a2;
    if ( (*a2 & 1) != 0 )
    {
      FT_Stream_OpenMemory(v7, a2[1], a2[2]);
    }
    else if ( (v9 & 4) != 0 )
    {
      v11 = FT_Stream_Open((int)v7, (char *)a2[3]);
      v12 = a2[3];
      v13 = v11;
      *(_DWORD *)(v8 + 16) = v12;
    }
    else
    {
      if ( (v9 & 2) == 0 || !a2[4] )
      {
        v13 = 6;
        goto LABEL_18;
      }
      ft_mem_free(v6, (int)v7);
      v8 = a2[4];
    }
    if ( !v13 )
    {
      *(_DWORD *)(v8 + 28) = v6;
LABEL_14:
      v5 = v13;
      *a3 = v8;
      return v5;
    }
LABEL_18:
    ft_mem_free(v6, v8);
    v8 = 0;
    goto LABEL_14;
  }
  return 33;
}


// ===== 70b464 raccess_guess_linux_double_from_file_name =====
int __fastcall raccess_guess_linux_double_from_file_name(int *a1, int a2, int *a3)
{
  int v6; // r8
  int v8[8]; // [sp+8h] [bp-28h] BYREF
  int v9; // [sp+28h] [bp-8h] BYREF
  _DWORD *v10; // [sp+2Ch] [bp-4h] BYREF

  v8[0] = 4;
  v9 = 0;
  v8[3] = a2;
  v6 = FT_Stream_New(a1, v8, (int *)&v10);
  if ( !v6 )
  {
    v6 = raccess_guess_apple_double((int)a1, v10, a2, &v9, a3);
    FT_Stream_Free((int)v10, 0);
  }
  return v6;
}


// ===== 70b4d4 raccess_guess_linux_netatalk =====
int __fastcall raccess_guess_linux_netatalk(int *a1, int a2, char *a3, char **a4, int *a5)
{
  int v5; // r5
  char *file_name; // r6
  int v9; // r4

  v5 = *a1;
  file_name = raccess_make_file_name(*a1, a3, ".AppleDouble/");
  if ( !file_name )
    return 64;
  v9 = raccess_guess_linux_double_from_file_name(a1, (int)file_name, a5);
  if ( v9 )
  {
    ft_mem_free(v5, (int)file_name);
    return v9;
  }
  *a4 = file_name;
  return v9;
}


// ===== 70b540 raccess_guess_linux_double =====
int __fastcall raccess_guess_linux_double(int *a1, int a2, char *a3, char **a4, int *a5)
{
  int v5; // r5
  char *file_name; // r6
  int v9; // r4

  v5 = *a1;
  file_name = raccess_make_file_name(*a1, a3, "%");
  if ( !file_name )
    return 64;
  v9 = raccess_guess_linux_double_from_file_name(a1, (int)file_name, a5);
  if ( v9 )
  {
    ft_mem_free(v5, (int)file_name);
    return v9;
  }
  *a4 = file_name;
  return v9;
}


// ===== 70b5ac raccess_guess_darwin_ufs_export =====
int __fastcall raccess_guess_darwin_ufs_export(int *a1, int a2, char *a3, char **a4, int *a5)
{
  int v5; // r5
  char *file_name; // r6
  int v9; // r4

  v5 = *a1;
  file_name = raccess_make_file_name(*a1, a3, "._");
  if ( !file_name )
    return 64;
  v9 = raccess_guess_linux_double_from_file_name(a1, (int)file_name, a5);
  if ( v9 )
  {
    ft_mem_free(v5, (int)file_name);
    return v9;
  }
  *a4 = file_name;
  return v9;
}


// ===== 70b618 FT_Attach_Stream =====
int __fastcall FT_Attach_Stream(int a1, int *a2)
{
  int v4; // r7
  int v5; // r4
  int (__fastcall *v6)(int, int); // r3
  int v7; // r1
  int v9; // [sp+4h] [bp-8h] BYREF

  if ( !a1 )
    return 35;
  v5 = *(_DWORD *)(a1 + 96);
  if ( !v5 )
    return 34;
  v4 = FT_Stream_New(*(int **)(v5 + 4), a2, &v9);
  if ( !v4 )
  {
    v6 = *(int (__fastcall **)(int, int))(*(_DWORD *)(v5 + 20) + 88);
    if ( v6 )
      v4 = v6(a1, v9);
    else
      v4 = 7;
    v7 = a2[4];
    if ( v7 )
      v7 = ((unsigned int)*a2 >> 1) & 1;
    FT_Stream_Free(v9, v7);
  }
  return v4;
}


// ===== 70b69c FT_Attach_File =====
int __fastcall FT_Attach_File(int a1, int a2)
{
  int v3[9]; // [sp+0h] [bp-24h] BYREF

  if ( !a2 )
    return 6;
  v3[4] = 0;
  v3[0] = 4;
  v3[3] = a2;
  return FT_Attach_Stream(a1, v3);
}


// ===== 70b6d4 ft_validator_error =====
void __fastcall __noreturn ft_validator_error(int a1, int a2)
{
  *(_DWORD *)(a1 + 12) = a2;
  longjmp((struct __jmp_buf_tag *)(a1 + 16), 1);
}


// ===== 70b6e8 FT_GlyphLoader_CheckPoints =====
int __fastcall FT_GlyphLoader_CheckPoints(int a1, int a2, int a3)
{
  unsigned int v4; // r5
  int v5; // r3
  unsigned int v6; // r8
  int v8; // r7
  int v9; // r1
  unsigned int v10; // r2
  unsigned int v11; // r6
  int v12; // r3
  int v13; // r2
  int v14; // r2
  int v15; // r5
  int v16; // r0
  int v17; // r12
  int v18; // r1
  int v19; // r7
  unsigned int v21; // r8
  int v22; // r0
  int v23; // r0
  unsigned int v24; // r6
  int v25; // r0
  int v26; // r0
  int v27[2]; // [sp+Ch] [bp-8h] BYREF

  v4 = *(_DWORD *)(a1 + 4);
  v5 = 0;
  v6 = a2 + *(__int16 *)(a1 + 58) + *(__int16 *)(a1 + 22);
  v27[0] = 0;
  v8 = *(_DWORD *)a1;
  if ( v6 > v4 )
  {
    v21 = (v6 + 7) & 0xFFFFFFF8;
    v22 = ft_mem_realloc(*(_DWORD *)a1, 8, v4, v21, *(_DWORD *)(a1 + 24), v27);
    v13 = v27[0];
    *(_DWORD *)(a1 + 24) = v22;
    if ( v13 )
      return v13;
    v23 = ft_mem_realloc(v8, 1, v4, v21, *(_DWORD *)(a1 + 28), v27);
    v13 = v27[0];
    *(_DWORD *)(a1 + 28) = v23;
    if ( v13 )
      return v13;
    if ( *(_BYTE *)(a1 + 16) )
    {
      v26 = ft_mem_realloc(v8, 8, 2 * v4, 2 * v21, *(_DWORD *)(a1 + 40), v27);
      v13 = v27[0];
      *(_DWORD *)(a1 + 40) = v26;
      if ( v13 )
        return v13;
      memmove((void *)(v26 + 8 * v21), (const void *)(v26 + 8 * v4), 8 * v4);
      *(_DWORD *)(a1 + 44) = *(_DWORD *)(a1 + 40) + 8 * v21;
    }
    *(_DWORD *)(a1 + 4) = v21;
    v5 = 1;
  }
  v9 = *(__int16 *)(a1 + 20);
  v10 = *(_DWORD *)(a1 + 8);
  v11 = a3 + *(__int16 *)(a1 + 56) + v9;
  if ( v10 < v11 )
  {
    v24 = (v11 + 3) & 0xFFFFFFFC;
    v25 = ft_mem_realloc(v8, 2, v10, v24, *(_DWORD *)(a1 + 32), v27);
    v12 = v27[0];
    *(_DWORD *)(a1 + 32) = v25;
    v13 = v12;
    if ( v12 )
      return v13;
    *(_DWORD *)(a1 + 8) = v24;
    v9 = *(__int16 *)(a1 + 20);
  }
  else
  {
    if ( !v5 )
      return v27[0];
    v12 = v27[0];
  }
  v14 = *(__int16 *)(a1 + 22);
  v15 = *(unsigned __int8 *)(a1 + 16);
  v16 = 8 * v14;
  v17 = *(_DWORD *)(a1 + 24) + 8 * v14;
  v18 = *(_DWORD *)(a1 + 32) + 2 * v9;
  v19 = *(_DWORD *)(a1 + 28);
  *(_DWORD *)(a1 + 60) = v17;
  *(_DWORD *)(a1 + 68) = v18;
  if ( v15 )
  {
    v17 = *(_DWORD *)(a1 + 40);
    v18 = *(_DWORD *)(a1 + 44);
  }
  *(_DWORD *)(a1 + 64) = v19 + v14;
  v13 = v12;
  if ( v15 )
  {
    *(_DWORD *)(a1 + 80) = v18 + v16;
    *(_DWORD *)(a1 + 76) = v17 + v16;
  }
  return v13;
}


// ===== 70b8cc FT_GlyphLoader_CopyPoints =====
int __fastcall FT_GlyphLoader_CopyPoints(int a1, int a2)
{
  __int16 v2; // r8
  __int16 v3; // r7
  int v6; // r9
  size_t v8; // r11
  size_t v9; // r10
  int v10; // r3
  int v11; // r1
  bool v12; // zf
  int v13; // r6
  size_t v14; // r3
  size_t v15; // r3

  v2 = *(_WORD *)(a2 + 22);
  v3 = *(_WORD *)(a2 + 20);
  v6 = FT_GlyphLoader_CheckPoints(a1, v2, v3);
  if ( v6 )
    return v6;
  v8 = 8 * v2;
  memcpy(*(void **)(a1 + 24), *(const void **)(a2 + 24), v8);
  v9 = 2 * v3;
  memcpy(*(void **)(a1 + 28), *(const void **)(a2 + 28), v2);
  memcpy(*(void **)(a1 + 32), *(const void **)(a2 + 32), v9);
  v10 = *(unsigned __int8 *)(a1 + 16);
  if ( *(_BYTE *)(a1 + 16) )
  {
    if ( *(_BYTE *)(a2 + 16) )
    {
      memcpy(*(void **)(a1 + 40), *(const void **)(a2 + 40), 8 * v2);
      memcpy(*(void **)(a1 + 44), *(const void **)(a2 + 44), 8 * v2);
      v10 = *(unsigned __int8 *)(a1 + 16);
    }
  }
  v11 = *(_DWORD *)(a1 + 32);
  v12 = v10 == 0;
  v13 = *(_DWORD *)(a1 + 28) + v2;
  v14 = *(_DWORD *)(a1 + 24) + v8;
  *(_WORD *)(a1 + 22) = v2;
  *(_WORD *)(a1 + 20) = v3;
  *(_DWORD *)(a1 + 60) = v14;
  *(_DWORD *)(a1 + 64) = v13;
  *(_DWORD *)(a1 + 68) = v11 + v9;
  if ( v12 )
    return v6;
  v15 = *(_DWORD *)(a1 + 40) + v8;
  *(_DWORD *)(a1 + 80) = *(_DWORD *)(a1 + 44) + v8;
  *(_DWORD *)(a1 + 76) = v15;
  return 0;
}


// ===== 70b9cc open_face_from_buffer =====
int __fastcall open_face_from_buffer(int *a1, int a2, int a3, int a4, char *a5, int a6)
{
  int v9; // r6
  int v10; // r11
  _DWORD *v11; // r0
  int v12; // r5
  _DWORD v15[8]; // [sp+Ch] [bp-28h] BYREF
  int v16; // [sp+2Ch] [bp-8h] BYREF

  v9 = *a1;
  if ( !a2 )
  {
    v10 = 6;
LABEL_4:
    ft_mem_free(v9, a2);
    return v10;
  }
  v11 = ft_mem_alloc(*a1, 40, &v16);
  v10 = v16;
  v12 = (int)v11;
  if ( v16 )
    goto LABEL_4;
  FT_Stream_OpenMemory(v11, a2, a3);
  *(_DWORD *)(v12 + 24) = memory_stream_close;
  v10 = v16;
  if ( v16 )
    goto LABEL_4;
  v15[0] = 2;
  v15[4] = v12;
  if ( a5 )
  {
    v15[0] = 10;
    v15[5] = FT_Get_Module((int)a1, a5);
  }
  v10 = FT_Open_Face(a1, v15, a4, a6);
  if ( v10 )
  {
    FT_Stream_Close(v12);
    ft_mem_free(v9, v12);
  }
  else
  {
    *(_DWORD *)(*(_DWORD *)a6 + 8) &= ~0x400u;
  }
  return v10;
}


// ===== 70bacc IsMacResource =====
int __fastcall IsMacResource(int *a1, _DWORD *a2, unsigned int a3, int a4, _DWORD **a5)
{
  int *v6; // r5
  int HeaderInfo; // r9
  int v10; // r8
  int v11; // r3
  int v12; // r1
  int v13; // r7
  signed int v14; // r1
  int v15; // r10
  int v16; // r7
  int v17; // r0
  int v18; // r3
  int v19; // r0
  _BYTE *v20; // r0
  int v21; // r7
  _BYTE *v22; // r10
  _BYTE *v23; // r2
  _BYTE *v24; // r1
  _BYTE *v25; // r12
  size_t v26; // r11
  int v27; // r10
  int v28; // r5
  int v29; // r0
  size_t v30; // r8
  unsigned __int16 v31; // r0
  int v32; // r2
  size_t v33; // lr
  int v34; // r12
  int v35; // r1
  int v36; // r6
  _BYTE *v37; // r12
  _BYTE *v38; // r2
  int v39; // r0
  int v40; // r1
  int v41; // r2
  signed int v42; // r0
  int v43; // r6
  _BYTE *v44; // r0
  _BYTE *v45; // r7
  char *v46; // r12
  _BYTE *v47; // r3
  int v48; // [sp+10h] [bp-44h]
  int v49; // [sp+14h] [bp-40h]
  int v50; // [sp+18h] [bp-3Ch]
  int v51; // [sp+1Ch] [bp-38h]
  char v52; // [sp+20h] [bp-34h]
  char v53; // [sp+24h] [bp-30h]
  char v54; // [sp+28h] [bp-2Ch]
  int v55; // [sp+2Ch] [bp-28h]
  int v56; // [sp+30h] [bp-24h]
  int *v57; // [sp+34h] [bp-20h]
  int v58; // [sp+3Ch] [bp-18h] BYREF
  int v59; // [sp+40h] [bp-14h] BYREF
  int v60; // [sp+44h] [bp-10h] BYREF
  int v61; // [sp+48h] [bp-Ch] BYREF
  unsigned int v62; // [sp+4Ch] [bp-8h] BYREF

  v6 = a1;
  v48 = *a1;
  HeaderInfo = FT_Raccess_Get_HeaderInfo((int)a1, a2, a3, &v62, (unsigned int *)&v61);
  if ( HeaderInfo )
    return HeaderInfo;
  if ( FT_Raccess_Get_DataOffsets(v6, a2, v62, v61, 1347375956, &v60, &v59) )
  {
    HeaderInfo = FT_Raccess_Get_DataOffsets(v6, a2, v62, v61, 1936092788, &v60, &v59);
    if ( HeaderInfo )
      return HeaderInfo;
    if ( a4 % v59 == -1 )
      v11 = 0;
    else
      v11 = a4 % v59;
    v12 = v60;
    v13 = *v6;
    if ( v59 <= v11 )
    {
      HeaderInfo = 1;
LABEL_14:
      ft_mem_free(v48, v12);
      return HeaderInfo;
    }
    v19 = FT_Stream_Seek(a2, *(_DWORD *)(v60 + 4 * v11));
    HeaderInfo = v19;
    v58 = v19;
    if ( !v19 )
    {
      v42 = FT_Stream_ReadLong(a2, &v58);
      HeaderInfo = v58;
      v43 = v42;
      if ( !v58 )
      {
        if ( v42 == -1 )
        {
          v12 = v60;
          HeaderInfo = v58 + 1;
          goto LABEL_14;
        }
        v44 = ft_mem_alloc(v13, v42, &v58);
        HeaderInfo = v58;
        v45 = v44;
        if ( v58 )
        {
          v12 = v60;
          goto LABEL_14;
        }
        HeaderInfo = FT_Stream_Read(a2, v44, v43);
        v58 = HeaderInfo;
        if ( !HeaderInfo )
        {
          if ( v43 > 4 && *v45 == 79 && v45[1] == 84 && v45[2] == 84 && v45[3] == 79 )
            v46 = "cff";
          else
            v46 = "truetype";
          HeaderInfo = open_face_from_buffer(v6, (int)v45, v43, 0, v46, (int)a5);
          v58 = HeaderInfo;
          ft_mem_free(v48, v60);
          if ( !HeaderInfo )
            **a5 = v59;
          return HeaderInfo;
        }
      }
    }
    ft_mem_free(v48, v60);
    return HeaderInfo;
  }
  HeaderInfo = 1;
  v58 = 1;
  v49 = v59;
  v10 = v60;
  v55 = *v6;
  if ( a4 == -1 || !a4 )
  {
    if ( v59 > 0 )
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v18 = FT_Stream_Seek(a2, *(_DWORD *)(v10 + 4 * v16++));
        v58 = v18;
        if ( !v18 )
        {
          v17 = FT_Stream_ReadLong(a2, &v58);
          v18 = v58;
          v15 += v17 + 6;
          if ( !v58 )
            continue;
        }
LABEL_21:
        HeaderInfo = v18;
        goto LABEL_22;
      }
      while ( v16 != v49 );
      v14 = v15 + 2;
    }
    else
    {
      v14 = 2;
    }
    v20 = ft_mem_alloc(v55, v14, &v58);
    HeaderInfo = v58;
    v21 = (int)v20;
    if ( !v58 )
    {
      *v20 = 0x80;
      v20[1] = 1;
      v20[2] = 0;
      v20[3] = 0;
      v20[4] = 0;
      v20[5] = 0;
      v22 = v20 + 2;
      v23 = v20 + 3;
      v24 = v20 + 4;
      v25 = v20 + 5;
      if ( v49 > 0 )
      {
        v57 = v6;
        v26 = 0;
        v51 = 1;
        v27 = 2;
        v56 = v10;
        v28 = 6;
        while ( 1 )
        {
          v58 = FT_Stream_Seek(a2, *(_DWORD *)(v56 + 4 * HeaderInfo));
          if ( v58 )
          {
            ft_mem_free(v55, v21);
            HeaderInfo = v58;
            goto LABEL_22;
          }
          v29 = FT_Stream_ReadLong(a2, &v58);
          v18 = v58;
          v30 = v29 - 2;
          if ( v58 )
            goto LABEL_21;
          v31 = FT_Stream_ReadShort(a2, &v58);
          v18 = v58;
          v54 = v26;
          v53 = BYTE1(v26);
          v32 = v27 + 3;
          v33 = HIBYTE(v26);
          v34 = v27 + 1;
          v35 = v27 + 2;
          v52 = BYTE2(v26);
          if ( v58 )
            goto LABEL_21;
          v36 = HIBYTE(v31);
          if ( v36 == v51 )
          {
            v26 += v30;
          }
          else
          {
            *(_BYTE *)(v21 + v27) = v26;
            v22 = (_BYTE *)(v21 + v27);
            *(_BYTE *)(v21 + v34) = BYTE1(v26);
            v37 = (_BYTE *)(v21 + v34);
            *(_BYTE *)(v21 + v35) = BYTE2(v26);
            *(_BYTE *)(v21 + v32) = HIBYTE(v26);
            v24 = (_BYTE *)(v21 + v35);
            v38 = (_BYTE *)(v21 + v32);
            if ( v36 == 5 )
            {
              v47 = v37;
              v50 = v28;
              v25 = v38;
              v6 = v57;
              v23 = v47;
              goto LABEL_53;
            }
            v27 = v28 + 2;
            v39 = v28 + 3;
            v40 = v28 + 4;
            v41 = v28 + 5;
            *(_BYTE *)(v21 + v28) = 0x80;
            v26 = v30;
            *(_BYTE *)(v21 + v28 + 1) = v36;
            v28 += 6;
            *(_BYTE *)(v21 + v27) = 0;
            *(_BYTE *)(v21 + v39) = 0;
            *(_BYTE *)(v21 + v40) = 0;
            *(_BYTE *)(v21 + v41) = 0;
          }
          ++HeaderInfo;
          v58 = FT_Stream_Read(a2, (void *)(v21 + v28), v30);
          v28 += v30;
          if ( HeaderInfo == v49 )
          {
            v50 = v28;
            v6 = v57;
            v33 = HIBYTE(v26);
            v23 = (_BYTE *)(v21 + v27 + 1);
            v24 = (_BYTE *)(v21 + v27 + 2);
            v25 = (_BYTE *)(v21 + v27 + 3);
            v22 = (_BYTE *)(v21 + v27);
            v54 = v26;
            v53 = BYTE1(v26);
            v52 = BYTE2(v26);
            goto LABEL_53;
          }
          v51 = v36;
        }
      }
      LOBYTE(v33) = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v50 = 6;
LABEL_53:
      *(_BYTE *)(v21 + v50) = 0x80;
      *(_BYTE *)(v21 + v50 + 1) = 3;
      *v22 = v54;
      *v23 = v53;
      *v24 = v52;
      *v25 = v33;
      HeaderInfo = open_face_from_buffer(v6, v21, v50 + 2, 0, "type1", (int)a5);
    }
LABEL_22:
    ft_mem_free(v48, v60);
    if ( !HeaderInfo )
      **a5 = 1;
  }
  else
  {
    ft_mem_free(v48, v60);
  }
  return HeaderInfo;
}


// ===== 70c060 FT_Open_Face =====
int __fastcall FT_Open_Face(int *a1, int *a2, int a3, _DWORD **a4)
{
  _BOOL4 v5; // r11
  _BOOL4 v6; // r3
  int v9; // r2
  int v10; // r0
  bool v11; // zf
  int *v13; // r4
  unsigned int v14; // r8
  int v15; // r12
  int v16; // r3
  _DWORD *v17; // r4
  int v18; // r11
  int v19; // r3
  bool v20; // zf
  _DWORD **v21; // r0
  int v22; // r12
  int v23; // r3
  _DWORD *v24; // r0
  _DWORD *v25; // r2
  int v26; // r3
  int v27; // r3
  int v28; // r0
  int v29; // r1
  int v30; // r2
  int v31; // r1
  _DWORD *v32; // r3
  int v33; // r0
  const char *v34; // r1
  _DWORD *v35; // r1
  int v36; // r4
  int v37; // r6
  int v38; // r1
  int v39; // r2
  char *v40; // r1
  int i; // r4
  int v42; // r1
  _BOOL4 v44; // [sp+10h] [bp-154h]
  int v45; // [sp+14h] [bp-150h]
  int v46; // [sp+28h] [bp-13Ch]
  int *v47; // [sp+3Ch] [bp-128h]
  int v48[9]; // [sp+40h] [bp-124h] BYREF
  _BYTE v49[36]; // [sp+64h] [bp-100h] BYREF
  _BYTE v50[36]; // [sp+88h] [bp-DCh] BYREF
  int v51[8]; // [sp+ACh] [bp-B8h] BYREF
  _DWORD *v52; // [sp+CCh] [bp-98h] BYREF
  _DWORD *v53; // [sp+D0h] [bp-94h] BYREF
  _DWORD *v54; // [sp+D4h] [bp-90h] BYREF
  int v55; // [sp+D8h] [bp-8Ch] BYREF
  char v56; // [sp+DCh] [bp-88h] BYREF
  unsigned __int8 v57; // [sp+DDh] [bp-87h]
  _BYTE v58[81]; // [sp+DEh] [bp-86h]
  unsigned int v59; // [sp+12Fh] [bp-35h]

  v5 = a3 >= 0;
  if ( a4 )
    v6 = 0;
  else
    v6 = a3 >= 0;
  if ( v6 || !a2 )
    return 6;
  v9 = *a2;
  v53 = nullptr;
  if ( (v9 & 2) != 0 )
  {
    v44 = a2[4] != 0;
    v10 = FT_Stream_New(a1, a2, (int *)&v54);
    v55 = v10;
    if ( v10 )
    {
      v10 = (unsigned __int8)v10;
      goto LABEL_12;
    }
  }
  else
  {
    v44 = 0;
    v10 = FT_Stream_New(a1, a2, (int *)&v54);
    v55 = v10;
    if ( v10 )
    {
      v10 = (unsigned __int8)v10;
      goto LABEL_12;
    }
  }
  v45 = *a1;
  if ( (*a2 & 8) == 0 || (v21 = (_DWORD **)a2[5]) == nullptr )
  {
    v13 = a1 + 7;
    v14 = (unsigned int)&a1[a1[6] + 7];
    if ( (unsigned int)(a1 + 7) >= v14 )
    {
LABEL_16:
      FT_Stream_Free((int)v54, v44);
      goto LABEL_17;
    }
    do
    {
      if ( (**(_DWORD **)*v13 & 1) != 0 )
      {
        v15 = *a2 & 0x10;
        if ( v15 )
        {
          v15 = a2[7];
          v16 = a2[6];
        }
        else
        {
          v16 = 0;
        }
        v10 = open_face(*v13, (int)v54, a3, v16, v15, &v53);
        v55 = v10;
        if ( !v10 )
          goto LABEL_55;
        v10 = (unsigned __int8)v10;
        if ( (unsigned __int8)v10 != 2 )
          goto LABEL_12;
      }
      ++v13;
    }
    while ( v14 > (unsigned int)v13 );
    v10 = (unsigned __int8)v55;
LABEL_12:
    v11 = v10 == 2;
    if ( v10 != 2 )
      v11 = v10 == 81;
    if ( !v11 && v10 != 85 )
      goto LABEL_16;
    v17 = v54;
    if ( !v54 )
    {
      v18 = 85;
      goto LABEL_43;
    }
    v18 = FT_Stream_Seek(v54, 0);
    if ( !v18 )
    {
      v18 = FT_Stream_Read(v17, &v56, 0x80u);
      if ( !v18 )
      {
        if ( v56 || v58[72] || v58[80] || !v57 || v57 > 0x21u || v58[61] || v58[v57] )
        {
LABEL_85:
          if ( dword_A35530 > 2 )
            FT_Message("Try as dfont: %s ...", (const char *)a2[3]);
          v33 = IsMacResource(a1, v17, 0, a3, a4);
          v18 = v33;
          if ( dword_A35530 > 2 )
          {
            if ( v33 )
              v34 = "failed";
            else
              v34 = "successful";
            FT_Message("%s\n", v34);
          }
          v19 = (unsigned __int8)v18;
LABEL_39:
          v20 = v19 == 2;
          if ( v19 != 2 )
            v20 = v19 == 85;
          if ( !v20 )
          {
LABEL_44:
            v55 = v18;
            if ( !v18 )
            {
              FT_Stream_Free((int)v54, v44);
              return v55;
            }
            if ( (unsigned __int8)v18 == 2 )
              v55 = 2;
            goto LABEL_16;
          }
LABEL_43:
          if ( (*a2 & 4) == 0 )
            goto LABEL_44;
          v35 = v17;
          v36 = 0;
          v46 = *a1;
          FT_Raccess_Guess((int)a1, v35, a2[3], (int)v50, (int)v49, v48);
          v47 = a2;
          v18 = 2;
          v37 = 0;
          while ( 1 )
          {
            v38 = v48[v36];
            if ( v38 )
            {
              if ( dword_A35530 > 2 )
                FT_Message("Error[%d] has occurred in rule %d\n", v38, v37);
            }
            else
            {
              v39 = *(_DWORD *)&v50[v36 * 4];
              v51[0] = 4;
              if ( !v39 )
                v39 = v47[3];
              v51[3] = v39;
              if ( dword_A35530 > 2 )
                FT_Message("Try rule %d: %s (offset=%d) ...", v37);
              v18 = FT_Stream_New(a1, v51, (int *)&v52);
              if ( v18 )
              {
                if ( dword_A35530 > 2 )
                  FT_Message("failed\n");
              }
              else
              {
                v18 = IsMacResource(a1, v52, *(_DWORD *)&v49[v36 * 4], a3, a4);
                FT_Stream_Free((int)v52, 0);
                if ( dword_A35530 > 2 )
                {
                  v40 = "failed";
                  if ( !v18 )
                    v40 = "successful";
                  FT_Message("%s\n", v40);
                }
                if ( !v18 )
                {
LABEL_109:
                  for ( i = 0; i != 36; i += 4 )
                  {
                    v42 = *(_DWORD *)&v50[i];
                    if ( v42 )
                    {
                      ft_mem_free(v46, v42);
                      *(_DWORD *)&v50[i] = 0;
                    }
                  }
                  if ( v18 )
                    v18 = 2;
                  goto LABEL_44;
                }
              }
            }
            ++v36;
            ++v37;
            if ( v36 == 9 )
              goto LABEL_109;
          }
        }
        v18 = IsMacResource(a1, v17, ((_byteswap_ulong(v59) + 127) & 0xFFFFFF80) + 128, a3, a4);
      }
    }
    v19 = (unsigned __int8)v18;
    if ( (unsigned __int8)v18 != 2 )
      goto LABEL_39;
    goto LABEL_85;
  }
  if ( (**v21 & 1) == 0 )
  {
    v55 = 32;
    goto LABEL_16;
  }
  v22 = *a2 & 0x10;
  if ( v22 )
  {
    v22 = a2[7];
    v23 = a2[6];
  }
  else
  {
    v23 = 0;
  }
  v55 = open_face((int)v21, (int)v54, a3, v23, v22, &v53);
  if ( v55 )
    goto LABEL_16;
LABEL_55:
  if ( dword_A35518 > 3 )
    FT_Message("FT_Open_Face: New face object, adding to list\n");
  if ( v44 )
    v53[2] |= 0x400u;
  v24 = ft_mem_alloc(v45, 12, &v55);
  if ( v55 )
    goto LABEL_17;
  v24[2] = v53;
  FT_List_Add((_DWORD *)(v53[24] + 24), v24);
  if ( dword_A35518 > 3 )
    FT_Message("FT_Open_Face: Creating glyph slot\n");
  if ( v5 )
  {
    v55 = FT_New_GlyphSlot((int)v53, nullptr);
    if ( v55 )
      goto LABEL_17;
    if ( dword_A35518 > 3 )
      FT_Message("FT_Open_Face: Creating size object\n");
    v55 = FT_New_Size(v53, &v52);
    if ( v55 )
      goto LABEL_17;
    v53[22] = v52;
  }
  v25 = v53;
  v26 = v53[2];
  if ( (v26 & 1) != 0 )
  {
    if ( (*((_WORD *)v53 + 37) & 0x8000) != 0 )
    {
      *((_WORD *)v53 + 37) = -*((_WORD *)v53 + 37);
      v25 = v53;
      v26 = v53[2];
    }
    if ( (v26 & 0x20) == 0 )
    {
      *((_WORD *)v25 + 39) = *((_WORD *)v25 + 37);
      v25 = v53;
      v26 = v53[2];
    }
  }
  if ( (v26 & 2) != 0 && (int)v25[7] > 0 )
  {
    v27 = 0;
    do
    {
      v28 = v25[8];
      v29 = 16 * v27++;
      v30 = v28 + v29;
      if ( (*(_WORD *)(v28 + v29) & 0x8000) != 0 )
        *(_WORD *)(v28 + v29) = -*(_WORD *)(v28 + v29);
      if ( *(int *)(v30 + 8) < 0 )
        *(_DWORD *)(v30 + 8) = (__int16)-*(_WORD *)(v30 + 8);
      v31 = *(_DWORD *)(v30 + 12);
      if ( v31 < 0 )
        *(_DWORD *)(v30 + 12) = -v31;
      v25 = v53;
    }
    while ( v53[7] > v27 );
  }
  v32 = (_DWORD *)v25[32];
  v32[4] = 0x10000;
  v32[6] = 0;
  v32[1] = 0x10000;
  v32[2] = 0;
  v32[3] = 0;
  v32[5] = 0;
  if ( a4 )
  {
    *a4 = v53;
    goto LABEL_18;
  }
LABEL_17:
  FT_Done_Face(v53);
LABEL_18:
  if ( dword_A35518 > 3 )
    FT_Message("FT_Open_Face: Return %d\n", v55);
  return v55;
}


// ===== 70c890 FT_New_Memory_Face =====
int __fastcall FT_New_Memory_Face(int *a1, int a2, int a3, int a4, _DWORD **a5)
{
  int v6[8]; // [sp+0h] [bp-20h] BYREF

  if ( !a2 )
    return 6;
  v6[0] = 1;
  v6[1] = a2;
  v6[2] = a3;
  return FT_Open_Face(a1, v6, a4, a5);
}


// ===== 70c8cc FT_New_Face =====
int __fastcall FT_New_Face(int *a1, int a2, int a3, _DWORD **a4)
{
  int v5[9]; // [sp+0h] [bp-24h] BYREF

  if ( !a2 )
    return 6;
  v5[0] = 4;
  v5[3] = a2;
  return FT_Open_Face(a1, v5, a3, a4);
}


// ===== 70c8fc FT_Bitmap_New =====
int __fastcall FT_Bitmap_New(int result)
{
  *(_DWORD *)(result + 20) = 0;
  *(_BYTE *)(result + 18) = 0;
  *(_DWORD *)result = 0;
  *(_DWORD *)(result + 4) = 0;
  *(_DWORD *)(result + 8) = 0;
  *(_DWORD *)(result + 12) = 0;
  *(_WORD *)(result + 16) = 0;
  *(_BYTE *)(result + 19) = 0;
  return result;
}


// ===== 70c924 FT_Bitmap_Done =====
int __fastcall FT_Bitmap_Done(int *a1, int a2)
{
  if ( !a1 )
    return 33;
  if ( !a2 )
    return 6;
  ft_mem_free(*a1, *(_DWORD *)(a2 + 12));
  *(_BYTE *)(a2 + 18) = 0;
  *(_DWORD *)(a2 + 20) = 0;
  *(_DWORD *)(a2 + 12) = 0;
  *(_DWORD *)a2 = 0;
  *(_DWORD *)(a2 + 4) = 0;
  *(_DWORD *)(a2 + 8) = 0;
  *(_WORD *)(a2 + 16) = 0;
  *(_BYTE *)(a2 + 19) = 0;
  return 0;
}


// ===== 70c980 FT_Bitmap_Convert =====
int __fastcall FT_Bitmap_Convert(int *a1, int *a2, int *a3, int a4)
{
  int v6; // r3
  int v7; // r3
  int v8; // r2
  int v9; // r7
  int v10; // r5
  int v11; // r1
  int v12; // r3
  signed int v13; // r8
  int v14; // r6
  int v15; // r6
  size_t v16; // r7
  char *v17; // r5
  int v18; // r6
  int v19; // r4
  char *v20; // r8
  int v21; // r10
  _BYTE *v23; // r12
  int v24; // r6
  _BYTE *v25; // r5
  int v26; // r2
  int v27; // r4
  _BYTE *v28; // r1
  _BYTE *v29; // r3
  _BYTE *v30; // r2
  int v31; // r3
  unsigned int v32; // r1
  unsigned __int8 *v33; // r10
  _BYTE *i; // r11
  int v35; // r12
  _BYTE *v36; // r1
  unsigned __int8 *v37; // r3
  _BYTE *v38; // r3
  int v39; // r1
  unsigned int v40; // r2
  int v41; // r12
  int v42; // r2
  int j; // r3
  unsigned __int8 *v44; // r4
  int v45; // r6
  _BYTE *v46; // r5
  int v47; // r0
  _BYTE *v48; // r12
  unsigned __int8 *v49; // r1
  _BYTE *v50; // r3
  int v51; // r1
  unsigned int v52; // r2
  int v53; // r0
  int v54; // r2
  int k; // r3
  int v56; // r0
  bool v57; // zf
  int v59; // [sp+10h] [bp-14h]
  int *v60; // [sp+14h] [bp-10h]
  int v61; // [sp+1Ch] [bp-8h] BYREF

  if ( !a1 )
    return 33;
  v7 = *((char *)a2 + 18);
  v8 = 0;
  v61 = 0;
  if ( (unsigned int)(v7 - 1) > 3 )
    v8 = 6;
  v9 = *a1;
  if ( (unsigned int)(v7 - 1) <= 3 )
  {
    *((_BYTE *)a3 + 18) = 2;
    v10 = *a2;
    v11 = *a3;
    v12 = a3[2];
    *a3 = *a2;
    v13 = abs32(v11 * v12);
    a3[1] = a2[1];
    if ( a4 > v8 )
    {
      v14 = a2[1];
      v8 = v14 % a4;
      if ( v14 % a4 )
        v8 = a4 - v14 % a4;
    }
    else
    {
      v14 = a2[1];
    }
    v15 = v14 + v8;
    a3[2] = v15;
    if ( v10 * v15 > v13 )
    {
      v56 = ft_mem_qrealloc(v9, 1, v13, v10 * v15, a3[3], &v61);
      v6 = v61;
      v57 = v61 == 0;
      a3[3] = v56;
      if ( !v57 )
        return v6;
      v7 = *((char *)a2 + 18);
    }
    else
    {
      v7 = *((char *)a2 + 18);
    }
  }
  else
  {
    v61 = v8;
  }
  switch ( v7 )
  {
    case 1:
      v33 = (unsigned __int8 *)a2[3];
      *((_WORD *)a3 + 8) = 2;
      v59 = *a2;
      if ( *a2 > 0 )
      {
        v60 = a2;
        for ( i = (_BYTE *)a3[3]; ; i += a3[2] )
        {
          v35 = v60[1];
          if ( v35 >> 3 > 0 )
          {
            v38 = i;
            v39 = 0;
            do
            {
              v40 = v33[v39++];
              *v38 = v40 >> 7;
              v38[1] = (v40 & 0x40) != 0;
              v38[2] = (v40 & 0x20) != 0;
              v38[3] = (v40 & 0x10) != 0;
              v38[4] = (v40 & 8) != 0;
              v38[5] = (v40 & 4) != 0;
              v38[6] = (v40 & 2) != 0;
              v38[7] = v40 & 1;
              v38 += 8;
            }
            while ( v39 != v35 >> 3 );
            v35 = v60[1];
            v37 = &v33[v39];
            v36 = &i[8 * v39];
          }
          else
          {
            v36 = i;
            v37 = v33;
          }
          v41 = v35 & 7;
          if ( v41 )
          {
            v42 = *v37;
            for ( j = 0; j != v41; ++j )
            {
              v36[j] = (v42 & 0x80) != 0;
              v42 *= 2;
            }
          }
          if ( !--v59 )
            break;
          v33 += v60[2];
        }
      }
      break;
    case 2:
      v16 = a2[1];
      v17 = (char *)a2[3];
      v18 = a2[2];
      *((_WORD *)a3 + 8) = 256;
      v19 = *a2;
      v20 = (char *)a3[3];
      v21 = a3[2];
      if ( *a2 > 0 )
      {
        do
        {
          memcpy(v20, v17, v16);
          --v19;
          v17 += v18;
          v20 += v21;
        }
        while ( v19 );
      }
      break;
    case 3:
      v44 = (unsigned __int8 *)a2[3];
      *((_WORD *)a3 + 8) = 4;
      v45 = *a2;
      v46 = (_BYTE *)a3[3];
      if ( *a2 > 0 )
      {
        while ( 1 )
        {
          v47 = a2[1];
          if ( v47 >> 2 > 0 )
          {
            v50 = v46;
            v51 = 0;
            do
            {
              v52 = v44[v51++];
              *v50 = v52 >> 6;
              v50[1] = (v52 >> 4) & 3;
              v50[2] = (v52 >> 2) & 3;
              v50[3] = v52 & 3;
              v50 += 4;
            }
            while ( v51 != v47 >> 2 );
            v47 = a2[1];
            v48 = &v46[4 * v51];
            v49 = &v44[v51];
          }
          else
          {
            v48 = v46;
            v49 = v44;
          }
          v53 = v47 & 3;
          if ( v53 )
          {
            v54 = *v49;
            for ( k = 0; k != v53; ++k )
            {
              v48[k] = (unsigned __int8)v54 >> 6;
              v54 *= 4;
            }
          }
          if ( !--v45 )
            break;
          v44 += a2[2];
          v46 += a3[2];
        }
      }
      break;
    case 4:
      v23 = (_BYTE *)a2[3];
      *((_WORD *)a3 + 8) = 16;
      v24 = *a2;
      v25 = (_BYTE *)a3[3];
      if ( *a2 > 0 )
      {
        while ( 1 )
        {
          v26 = a2[1];
          v27 = v26 >> 1;
          if ( v26 >> 1 > 0 )
          {
            v30 = v25;
            v31 = 0;
            do
            {
              v32 = (unsigned __int8)v23[v31++];
              *v30 = v32 >> 4;
              v30[1] = v32 & 0xF;
              v30 += 2;
            }
            while ( v31 != v27 );
            v26 = a2[1];
            v28 = &v25[2 * v31];
            v29 = &v23[v31];
          }
          else
          {
            v28 = v25;
            v29 = v23;
          }
          if ( (v26 & 1) != 0 )
            *v28 = *v29 >> 4;
          if ( !--v24 )
            break;
          v23 += a2[2];
          v25 += a3[2];
        }
      }
      break;
    default:
      return v61;
  }
  return v61;
}


// ===== 70cd64 FT_Bitmap_Embolden =====
int __fastcall FT_Bitmap_Embolden(int *a1, int a2, int a3, int a4)
{
  int v5; // r4
  int result; // r0
  int v7; // r5
  int v8; // r11
  int v9; // r1
  int v10; // r3
  int v11; // r8
  signed int v12; // r6
  int v13; // r10
  signed int v14; // r7
  int v15; // r9
  bool v16; // zf
  int v17; // r2
  int v18; // r7
  int v19; // r8
  int v20; // r9
  unsigned int v21; // r12
  _BYTE *v22; // r7
  int v23; // r3
  unsigned int v24; // r8
  int v25; // r11
  int v26; // r5
  unsigned int v27; // r4
  void *v28; // r0
  int v29; // r10
  int v30; // r8
  int v31; // r12
  _BYTE *v32; // r2
  int v33; // r9
  int v34; // r3
  __int16 v35; // r6
  int v36; // r1
  char v37; // r0
  char v38; // r1
  int v39; // r0
  int v40; // r2
  int i; // r3
  int v43; // r8
  int v44; // r1
  int v45; // r2
  int v46; // r3
  int v47; // r1
  int v48; // r3
  unsigned int v49; // r3
  int v50; // r12
  int v51; // r8
  char *v52; // r10
  int v53; // r9
  int v54; // r11
  size_t v55; // r5
  int v56; // r12
  int v57; // r8
  int v58; // r3
  int v59; // r10
  int v60; // r11
  int v61; // r9
  size_t v62; // r5
  int v63; // [sp+Ch] [bp-30h]
  int v64; // [sp+Ch] [bp-30h]
  int v65; // [sp+Ch] [bp-30h]
  int v66; // [sp+10h] [bp-2Ch]
  int v67; // [sp+10h] [bp-2Ch]
  int v68; // [sp+14h] [bp-28h]
  int v69[6]; // [sp+1Ch] [bp-20h] BYREF
  int v70; // [sp+34h] [bp-8h] BYREF

  v5 = a2;
  if ( !a1 )
    return 33;
  if ( !a2 || !*(_DWORD *)(a2 + 12) )
    return 6;
  v7 = (a3 + 32) >> 6;
  v8 = (a4 + 32) >> 6;
  result = v8 | v7;
  if ( !(v8 | v7) )
    return result;
  if ( (v8 | v7) < 0 )
    return 6;
  switch ( *(_BYTE *)(a2 + 18) )
  {
    case 1:
      v9 = *(_DWORD *)a2;
      v10 = *(_DWORD *)(v5 + 8);
      v68 = *a1;
      v11 = *(_DWORD *)(v5 + 4);
      v12 = abs32(v10);
      v13 = v9;
      if ( v7 > 8 )
        v7 = 8;
LABEL_68:
      v14 = (unsigned int)(v7 + 7 + v11) >> 3;
      v15 = 1;
      goto LABEL_13;
    case 3:
    case 4:
      if ( *(_BYTE *)(a2 + 18) == 3 )
        v43 = (*(_DWORD *)(a2 + 4) + 3 + v7) / 4;
      else
        v43 = (*(_DWORD *)(a2 + 4) + 1 + v7) / 2;
      FT_Bitmap_New((int)v69);
      result = FT_Bitmap_Convert(a1, (int *)v5, v69, v43);
      if ( result )
        return result;
      FT_Bitmap_Done(a1, v5);
      v44 = v69[1];
      v45 = v69[2];
      v46 = v69[3];
      *(_DWORD *)v5 = v69[0];
      *(_DWORD *)(v5 + 4) = v44;
      *(_DWORD *)(v5 + 8) = v45;
      *(_DWORD *)(v5 + 12) = v46;
      v47 = v69[5];
      *(_DWORD *)(v5 + 16) = v69[4];
      *(_DWORD *)(v5 + 20) = v47;
      goto LABEL_65;
    case 5:
      v7 *= 3;
      goto LABEL_11;
    case 6:
      v8 *= 3;
LABEL_11:
      v9 = *(_DWORD *)a2;
      v10 = *(_DWORD *)(v5 + 8);
      v68 = *a1;
      v11 = *(_DWORD *)(v5 + 4);
      v12 = abs32(v10);
      v13 = v9;
LABEL_12:
      v14 = v11 + v7;
      v15 = 8;
LABEL_13:
      v16 = v12 == v14;
      if ( v12 >= v14 )
        v16 = v8 == 0;
      v17 = v16;
      if ( v16 )
      {
        v18 = v15 * (v11 + v7);
        if ( v18 >= 8 * v12 )
        {
          v19 = *(_DWORD *)(v5 + 12);
          goto LABEL_33;
        }
        v20 = v18 & 7;
        v21 = 0xFF00u >> (v18 & 7);
        v19 = *(_DWORD *)(v5 + 12);
        if ( v9 > 0 )
        {
          v22 = (_BYTE *)(v19 + (v18 >> 3));
          v23 = v8;
          v24 = v19 + v12;
          v25 = v7;
          v26 = v5;
          v27 = v21;
          while ( 1 )
          {
            if ( v20 )
              v17 = (unsigned __int8)*v22;
            v28 = v22;
            if ( v20 )
            {
              v17 &= v27;
              *v22 = v17;
              v28 = v22 + 1;
            }
            if ( (unsigned int)v28 >= v24 )
            {
              if ( !--v13 )
                goto LABEL_32;
            }
            else
            {
              v63 = v23;
              LC_API_MEMSET_0(v28, 0, v24 - (_DWORD)v28);
              --v13;
              v23 = v63;
              if ( !v13 )
              {
LABEL_32:
                v5 = v26;
                v19 = *(_DWORD *)(v26 + 12);
                v7 = v25;
                v9 = *(_DWORD *)v5;
                v8 = v23;
                v10 = *(_DWORD *)(v5 + 8);
                goto LABEL_33;
              }
            }
            v22 += v12;
            v24 += v12;
          }
        }
        goto LABEL_33;
      }
      v67 = ft_mem_qrealloc(v68, v9 + v8, v17, v14, v17, &v70);
      result = v70;
      if ( !v70 )
      {
        if ( *(int *)(v5 + 8) <= 0 )
        {
          v56 = v15 * v11;
          v57 = v67;
          v58 = v8;
          v59 = v70;
          v60 = v7;
          v61 = v70;
          v62 = (unsigned int)(v56 + 7) >> 3;
          while ( 1 )
          {
            v59 += v12;
            v57 += v14;
            if ( v61 >= *(_DWORD *)v5 )
              break;
            ++v61;
            v65 = v58;
            memcpy((void *)(v57 - v14), (const void *)(*(_DWORD *)(v5 + 12) + v59 - v12), v62);
            v58 = v65;
          }
          v7 = v60;
          v8 = v58;
        }
        else
        {
          v49 = (unsigned int)(v15 * v11 + 7) >> 3;
          if ( *(int *)v5 > 0 )
          {
            v50 = v8;
            v51 = v70;
            v52 = (char *)(v67 + v14 * v8);
            v53 = v70;
            v54 = v7;
            v55 = v49;
            do
            {
              v64 = v50;
              memcpy(v52, (const void *)(*(_DWORD *)(v5 + 12) + v51), v55);
              ++v53;
              v51 += v12;
              v52 += v14;
              v50 = v64;
            }
            while ( v53 < *(_DWORD *)v5 );
            v7 = v54;
            v8 = v64;
          }
        }
        ft_mem_free(v68, *(_DWORD *)(v5 + 12));
        v9 = *(_DWORD *)v5;
        if ( *(int *)(v5 + 8) < 0 )
          v14 = -v14;
        *(_DWORD *)(v5 + 12) = v67;
        *(_DWORD *)(v5 + 8) = v14;
        v10 = v14;
        v19 = *(_DWORD *)(v5 + 12);
LABEL_33:
        v29 = v10;
        if ( v10 <= 0 )
        {
          v29 = -v10;
          v30 = v19 + v10 - v10 * v9;
        }
        else
        {
          v30 = v19 + v10 * v8;
        }
        if ( v9 <= 0 )
        {
LABEL_71:
          v48 = *(_DWORD *)(v5 + 4);
          *(_DWORD *)v5 = v9 + v8;
          *(_DWORD *)(v5 + 4) = v48 + v7;
          return 0;
        }
        v66 = 0;
LABEL_38:
        if ( !v29 )
          goto LABEL_51;
        v31 = v29 - 1;
        v32 = (_BYTE *)(v30 + v29 - 1);
LABEL_40:
        while ( 1 )
        {
          v33 = (unsigned __int8)*v32;
          if ( v7 )
            break;
LABEL_49:
          --v31;
          --v32;
          if ( v31 == -1 )
            goto LABEL_50;
        }
        v34 = 1;
        while ( 1 )
        {
          while ( *(_BYTE *)(v5 + 18) != 1 )
          {
            if ( v31 - v34 < 0 )
              goto LABEL_49;
            v35 = *(_WORD *)(v5 + 16);
            v36 = (unsigned __int8)v32[-v34] + (unsigned __int8)*v32;
            if ( v35 <= v36 )
            {
              --v31;
              *v32-- = v35 - 1;
              if ( v31 == -1 )
              {
LABEL_50:
                v10 = *(_DWORD *)(v5 + 8);
LABEL_51:
                if ( v8 )
                {
                  v39 = 1;
                  do
                  {
                    v40 = v30 - v39 * v10;
                    if ( v29 )
                    {
                      for ( i = 0; i != v29; ++i )
                        *(_BYTE *)(v40 + i) |= *(_BYTE *)(v30 + i);
                      v10 = *(_DWORD *)(v5 + 8);
                    }
                    ++v39;
                  }
                  while ( v39 <= v8 );
                }
                v9 = *(_DWORD *)v5;
                if ( *(_DWORD *)v5 <= ++v66 )
                  goto LABEL_71;
                v30 += v10;
                goto LABEL_38;
              }
              goto LABEL_40;
            }
            *v32 = v36;
            if ( (unsigned __int8)v36 == *(__int16 *)(v5 + 16) - 1 )
              goto LABEL_49;
LABEL_45:
            if ( v7 < ++v34 )
              goto LABEL_49;
          }
          v37 = 8 - v34;
          v38 = *v32 | (v33 >> v34);
          *v32 = v38;
          if ( !v31 )
            goto LABEL_45;
          ++v34;
          *v32 = v38 | (*(v32 - 1) << v37);
          if ( v7 < v34 )
            goto LABEL_49;
        }
      }
      break;
    default:
LABEL_65:
      v9 = *(_DWORD *)v5;
      v10 = *(_DWORD *)(v5 + 8);
      v68 = *a1;
      v11 = *(_DWORD *)(v5 + 4);
      v12 = abs32(v10);
      v13 = *(_DWORD *)v5;
      switch ( *(_BYTE *)(v5 + 18) )
      {
        case 1:
          goto LABEL_68;
        case 2:
        case 5:
        case 6:
          goto LABEL_12;
        case 3:
          v14 = (unsigned int)(v11 + 3 + v7) >> 2;
          v15 = 2;
          goto LABEL_13;
        case 4:
          v14 = (unsigned int)(v11 + 1 + v7) >> 1;
          v15 = 4;
          goto LABEL_13;
        default:
          result = 18;
          break;
      }
      return result;
  }
  return result;
}


// ===== 70d334 FT_Bitmap_Copy =====
int __fastcall FT_Bitmap_Copy(int *a1, int *a2, int *a3)
{
  int v3; // r12
  int v4; // r0
  void *v7; // r12
  unsigned int v8; // r2
  int v9; // r6
  unsigned int v10; // r2
  int v12; // r1
  int v13; // r2
  int v14; // r3
  int v15; // r1
  int v16; // r0
  int v17; // r1
  int v18; // r2
  int v19; // r3
  _DWORD *v20; // r5
  _DWORD *v21; // r4
  int v22; // r1
  int v23[2]; // [sp+Ch] [bp-8h] BYREF

  v3 = 0;
  v4 = *a1;
  v23[0] = 0;
  if ( a2 != a3 )
  {
    v3 = a2[3];
    if ( !v3 )
    {
      v16 = *a2;
      v17 = a2[1];
      v18 = a2[2];
      v19 = a2[3];
      v20 = a2 + 4;
      *a3 = v16;
      a3[1] = v17;
      a3[2] = v18;
      a3[3] = v19;
      v21 = a3 + 4;
      v22 = v20[1];
      *v21 = *v20;
      v21[1] = v22;
      return v3;
    }
    v7 = (void *)a3[3];
    v8 = abs32(a2[2]);
    v9 = *a2 * v8;
    if ( v7 )
    {
      v10 = *a3 * abs32(a3[2]);
      if ( v10 == v9 )
        goto LABEL_9;
      a3[3] = ft_mem_qrealloc(v4, 1, v10, v9, (int)v7, v23);
    }
    else
    {
      a3[3] = ft_mem_qalloc(v4, *a2 * v8, v23);
    }
    v3 = v23[0];
    if ( v23[0] )
      return v3;
    v7 = (void *)a3[3];
LABEL_9:
    v12 = a2[1];
    v13 = a2[2];
    v14 = a2[3];
    *a3 = *a2;
    a3[1] = v12;
    a3[2] = v13;
    a3[3] = v14;
    v15 = a2[5];
    a3[4] = a2[4];
    a3[5] = v15;
    a3[3] = (int)v7;
    memcpy(v7, (const void *)a2[3], v9);
    return v23[0];
  }
  return v3;
}


// ===== 70d434 OutputDebugStringA =====
void OutputDebugStringA()
{
  ;
}


// ===== 70d438 ft_debug_init =====
char *ft_debug_init()
{
  char *result; // r0
  char *v1; // r5
  int v2; // r3
  bool v3; // zf
  int v4; // r8
  bool v5; // zf
  char *v6; // r7
  int v7; // r3
  int v8; // t1
  bool v9; // zf
  int v10; // r6
  _BOOL4 v11; // r2
  int v12; // r12
  int v13; // r3
  int v14; // r3
  char v15; // r2
  int v16; // t1
  unsigned int v17; // r2

  result = getenv("FT2_DEBUG");
  v1 = result;
  if ( !result )
    return result;
  LOBYTE(v2) = *result;
  if ( !*result )
    return result;
  do
  {
    while ( 1 )
    {
      v3 = (char)v2 == 32;
      if ( (char)v2 != 32 )
        v3 = (char)v2 == 9;
      if ( !v3 && (char)v2 != 44 && (char)v2 != 59 && (char)v2 != 61 )
      {
        v4 = *v1;
        v5 = v4 == 58;
        if ( v4 != 58 )
          v5 = v4 == 0;
        if ( !v5 )
          break;
      }
      v2 = (unsigned __int8)*++v1;
      if ( !v2 )
        return result;
    }
    v6 = v1;
    do
    {
      v8 = *++v6;
      v7 = v8;
      v9 = v8 == 58;
      if ( v8 != 58 )
        v9 = v7 == 0;
    }
    while ( !v9 );
    v10 = 0;
    v11 = v6 > v1;
    if ( v7 != 58 )
      v11 = 0;
    if ( !v11 )
      goto LABEL_37;
    v12 = v6 - v1;
    while ( 1 )
    {
      result = ft_trace_toggles[v10];
      if ( v12 <= 0 )
      {
        if ( v12 )
          goto LABEL_29;
      }
      else
      {
        if ( *result != v4 )
          goto LABEL_29;
        v13 = 0;
        while ( ++v13 != v12 )
        {
          if ( result[v13] != v1[v13] )
            goto LABEL_29;
        }
      }
      if ( !result[v12] )
        break;
LABEL_29:
      if ( ++v10 == 77 )
      {
        v14 = -1;
        goto LABEL_31;
      }
    }
    v14 = v10;
LABEL_31:
    v16 = (unsigned __int8)*++v6;
    v15 = v16;
    if ( v16 )
    {
      v17 = v15 - 48;
      ++v6;
      if ( v17 <= 7 && v14 >= 0 )
      {
        if ( v14 )
        {
          ft_trace_levels[v14] = v17;
        }
        else
        {
          do
          {
            *(_DWORD *)((char *)ft_trace_levels + v14) = v17;
            v14 += 4;
          }
          while ( v14 != 308 );
        }
      }
    }
LABEL_37:
    LOBYTE(v2) = v6[1];
    v1 = v6 + 1;
  }
  while ( (_BYTE)v2 );
  return result;
}


// ===== 70d5d0 FT_Panic =====
void __noreturn FT_Panic(const char *a1, ...)
{
  va_list varg_r1; // [sp+14h] [bp+Ch] BYREF

  va_start(varg_r1, a1);
  vsprintf(buf_2970, a1, varg_r1);
  OutputDebugStringA();
  exit(1);
}


// ===== 70d610 FT_Message =====
void FT_Message(const char *a1, ...)
{
  va_list varg_r1; // [sp+1Ch] [bp+10h] BYREF

  va_start(varg_r1, a1);
  vprintf(a1, varg_r1);
  vsprintf(buf_2965, a1, varg_r1);
  OutputDebugStringA();
}


// ===== 70d66c FT_Done_FreeType =====
int __fastcall FT_Done_FreeType(int *a1)
{
  int v1; // r4

  if ( a1 )
  {
    v1 = *a1;
    FT_Done_Library(a1);
    FT_Done_Memory(v1);
  }
  return 0;
}


// ===== 70d690 FT_Add_Default_Modules =====
void __fastcall FT_Add_Default_Modules(int a1)
{
  int *v1; // r7
  _UNKNOWN **v3; // r4
  int *v4; // t1
  int v5; // r2
  int *v6; // t1

  v1 = (int *)&autofit_module_class;
  v3 = &ft_default_modules;
  do
  {
    while ( 1 )
    {
      v5 = FT_Add_Module(a1, v1);
      if ( v5 )
        break;
      v4 = (int *)v3[1];
      ++v3;
      v1 = v4;
      if ( !v4 )
        return;
    }
    FT_Message("FT_Add_Default_Module: Cannot install `%s', error = 0x%x\n", (const char *)v1[2], v5);
    v6 = (int *)v3[1];
    ++v3;
    v1 = v6;
  }
  while ( v6 );
}


// ===== 70d708 FT_Init_FreeType =====
int __fastcall FT_Init_FreeType(int *a1)
{
  int v2; // r0
  int v3; // r5
  int v4; // r6

  v2 = FT_New_Memory();
  v3 = v2;
  if ( v2 )
  {
    v4 = FT_New_Library(v2, a1);
    if ( v4 )
    {
      FT_Done_Memory(v3);
      return v4;
    }
    else
    {
      *(_DWORD *)(*a1 + 12) = 2;
      *(_DWORD *)(*a1 + 16) = 3;
      *(_DWORD *)(*a1 + 20) = 7;
      FT_Add_Default_Modules(*a1);
      return 0;
    }
  }
  else
  {
    FT_Message("FT_Init_FreeType: cannot find memory manager\n");
    return 7;
  }
}


// ===== 70d78c ft_set_memory_callback =====
void *(**__fastcall ft_set_memory_callback(void *a1, int a2, void *a3, void *a4))(size_t item_count, size_t item_size)
{
  void *(**result)(size_t, size_t); // r0

  if ( a1 )
  {
    ft_cmalloc = a1;
    if ( a2 )
      goto LABEL_3;
  }
  else
  {
    ft_cmalloc = &malloc;
    if ( a2 )
    {
LABEL_3:
      result = (void *(**)(size_t, size_t))&ft_cmalloc;
      ft_ccalloc = a2;
      if ( a3 )
        goto LABEL_4;
LABEL_8:
      ft_crealloc = &realloc;
      if ( a4 )
        goto LABEL_5;
      goto LABEL_9;
    }
  }
  result = &calloc;
  ft_ccalloc = (int)&calloc;
  if ( !a3 )
    goto LABEL_8;
LABEL_4:
  ft_crealloc = a3;
  if ( a4 )
  {
LABEL_5:
    ft_cfree = a4;
    return result;
  }
LABEL_9:
  ft_cfree = &free;
  return result;
}


// ===== 70d890 FT_Done_Memory =====
int __fastcall FT_Done_Memory(int a1)
{
  return (*(int (__fastcall **)(int, int))(a1 + 8))(a1, a1);
}


// ===== 70d8a4 FT_New_Memory =====
_DWORD *FT_New_Memory()
{
  _DWORD *result; // r0

  if ( ft_cmalloc )
    result = (_DWORD *)ft_cmalloc(16);
  else
    result = LC_API_MALLOC_0(0x10u);
  if ( result )
  {
    *result = 0;
    result[1] = ft_alloc;
    result[3] = ft_realloc;
    result[2] = ft_free;
  }
  return result;
}


// ===== 70d914 ft_alloc =====
void *__fastcall ft_alloc(int a1, size_t byte_count)
{
  if ( ft_cmalloc )
    return (void *)ft_cmalloc(byte_count);
  else
    return LC_API_MALLOC_0(byte_count);
}


// ===== 70d944 ft_free =====
void __fastcall ft_free(int a1, void *p)
{
  if ( ft_cfree )
    ft_cfree(p);
  else
    free(p);
}


// ===== 70d978 ft_realloc =====
void *__fastcall ft_realloc(int a1, int a2, size_t byte_count, void *p)
{
  if ( ft_crealloc )
    return (void *)ft_crealloc(p, byte_count);
  else
    return realloc(p, byte_count);
}


// ===== 70d9b4 FT_Stream_Open =====
int __fastcall FT_Stream_Open(_DWORD *a1, char *filename)
{
  FILE *v4; // r0
  FILE *v5; // r7

  if ( !a1 )
    return 40;
  v4 = fopen(filename, "rb");
  v5 = v4;
  if ( v4 )
  {
    fseek(v4, 0, 2);
    a1[1] = ftell(v5);
    fseek(v5, 0, 0);
    a1[3] = v5;
    a1[5] = ft_ansi_stream_io;
    a1[6] = ft_ansi_stream_close;
    a1[4] = filename;
    a1[2] = 0;
    if ( dword_A3550C <= 0 )
      return 0;
    FT_Message("FT_Stream_Open:");
    if ( dword_A3550C <= 0 )
    {
      return 0;
    }
    else
    {
      FT_Message(" opened `%s' (%d bytes) successfully\n", filename, a1[1]);
      return 0;
    }
  }
  else
  {
    FT_Message("FT_Stream_Open:");
    FT_Message(" could not open `%s'\n", filename);
    return 1;
  }
}


// ===== 70dad4 ft_ansi_stream_close =====
int __fastcall ft_ansi_stream_close(int a1)
{
  int result; // r0

  result = fclose(*(FILE **)(a1 + 12));
  *(_DWORD *)a1 = 0;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 4) = 0;
  return result;
}


// ===== 70daf8 ft_ansi_stream_io =====
size_t __fastcall ft_ansi_stream_io(int a1, int a2, void *a3, size_t a4)
{
  FILE *v4; // r4

  v4 = *(FILE **)(a1 + 12);
  fseek(v4, a2, 0);
  return fread(a3, 1u, a4, v4);
}


// ===== 70db2c gray_hline =====
int __fastcall gray_hline(_DWORD *a1, int a2, int a3, int a4, __int16 a5)
{
  int result; // r0
  int v7; // r5
  int v8; // r6
  int v9; // r7
  int v10; // r7
  int v11; // r6
  int v12; // r1
  int v13; // r3
  bool v14; // zf
  int (__fastcall *v15)(int, int, _DWORD *, _DWORD); // r12
  bool v16; // cc
  int v17; // r8
  char *v18; // r12
  int v19; // r8

  result = a1[249];
  v7 = abs32(a4 >> 9);
  if ( (result & 2) == 0 )
  {
    if ( v7 >= 255 )
      v7 = 255;
LABEL_20:
    v8 = a1[4];
    v9 = a1[2];
    if ( !v7 )
      return result;
    goto LABEL_4;
  }
  v7 &= 0x1FFu;
  if ( v7 <= 256 )
  {
    if ( v7 == 256 )
    {
      v10 = a2 + a1[2];
      if ( v10 >= 0x7FFF )
        v10 = 0x7FFF;
      v11 = a3 + a1[4];
      v7 = 255;
      goto LABEL_7;
    }
    goto LABEL_20;
  }
  v8 = a1[4];
  v9 = a1[2];
  v7 = 512 - v7;
LABEL_4:
  v10 = a2 + v9;
  if ( v10 >= 0x7FFF )
    v10 = 0x7FFF;
  v11 = a3 + v8;
LABEL_7:
  v12 = a1[308];
  v13 = v12 - 1;
  if ( v12 <= 0 )
  {
    result = a1[311];
  }
  else
  {
    result = a1[311];
    if ( result == v11 )
    {
      v18 = (char *)a1 + 6 * v13;
      v19 = *((unsigned __int16 *)v18 + 521);
      if ( v19 + *((__int16 *)v18 + 520) == v10 && (unsigned __int8)v18[1044] == v7 )
      {
        *((_WORD *)v18 + 521) = v19 + a5;
        return result;
      }
    }
  }
  v14 = v12 == 31;
  if ( v12 <= 31 )
    v14 = result == v11;
  if ( v14 )
  {
    v17 = (int)a1 + 6 * v13 + 1046;
  }
  else
  {
    v15 = (int (__fastcall *)(int, int, _DWORD *, _DWORD))a1[309];
    v16 = (int)v15 <= 0;
    if ( v15 )
      v16 = v12 <= 0;
    v17 = (int)(a1 + 260);
    if ( !v16 )
      result = v15(result, v12, a1 + 260, a1[310]);
    a1[308] = 0;
    a1[311] = v11;
  }
  *(_BYTE *)(v17 + 4) = v7;
  *(_WORD *)v17 = v10;
  *(_WORD *)(v17 + 2) = a5;
  ++a1[308];
  return result;
}


// ===== 70dc90 gray_raster_reset =====
_DWORD *__fastcall gray_raster_reset(_DWORD *result, int a2, int a3)
{
  _BOOL4 v3; // r3
  unsigned int v4; // r2

  if ( result )
  {
    v3 = a3 >= 3584;
    if ( !a2 )
      v3 = 0;
    if ( v3 )
    {
      v4 = (a3 - 1536) & 0xFFFFFFF0;
      result[2] = v4 >> 7;
      result[4] = a2;
      *result = a2 + 1536;
      result[1] = v4;
    }
    else
    {
      result[4] = 0;
      *result = 0;
      result[1] = 0;
    }
  }
  return result;
}


// ===== 70dce8 ft_smooth_init =====
int __fastcall ft_smooth_init(_DWORD *a1)
{
  (*(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(*(_DWORD *)(a1[5] + 56) + 8))(
    a1[15],
    *(_DWORD *)(a1[1] + 172),
    *(_DWORD *)(a1[1] + 176));
  return 0;
}


// ===== 70dd14 ft_smooth_set_mode =====
int __fastcall ft_smooth_set_mode(int a1)
{
  return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)(*(_DWORD *)(a1 + 20) + 56) + 12))(*(_DWORD *)(a1 + 60));
}


// ===== 70dd30 gray_raster_done =====
int __fastcall gray_raster_done(int a1)
{
  return ft_mem_free(*(_DWORD *)(a1 + 12), a1);
}


// ===== 70dd3c gray_raster_new =====
int __fastcall gray_raster_new(int a1, _DWORD *a2)
{
  _DWORD *v4; // r0
  int v5; // r3
  int v7; // [sp+4h] [bp-8h] BYREF

  *a2 = 0;
  v4 = ft_mem_alloc(a1, 20, &v7);
  v5 = v7;
  if ( !v7 )
  {
    v4[3] = a1;
    v5 = v7;
    *a2 = v4;
  }
  return v5;
}


// ===== 70dd80 ft_smooth_render_generic =====
int __fastcall ft_smooth_render_generic(int a1, int a2, int a3, int *a4, int a5)
{
  int v6; // r4
  int *v7; // r6
  int v9; // r9
  int v10; // r3
  signed int v11; // r11
  int v12; // r1
  int v13; // r10
  int v14; // r12
  size_t v15; // r7
  int v16; // r8
  void *v17; // r0
  int v18; // r3
  int v19; // r3
  int v20; // r3
  int v21; // r5
  int v22; // lr
  int v23; // r1
  int v24; // r2
  char v25; // r0
  int v26; // r1
  char *v27; // r8
  int v28; // r3
  int v29; // r5
  size_t v30; // r10
  int v31; // r11
  int v32; // r4
  size_t v33; // r6
  int v34; // [sp+0h] [bp-6Ch]
  int v35; // [sp+8h] [bp-64h]
  signed int v36; // [sp+Ch] [bp-60h]
  int v37; // [sp+10h] [bp-5Ch]
  signed int v38; // [sp+10h] [bp-5Ch]
  int v39; // [sp+14h] [bp-58h]
  int v40; // [sp+18h] [bp-54h]
  int *v41; // [sp+18h] [bp-54h]
  int v42; // [sp+1Ch] [bp-50h]
  _DWORD v43[12]; // [sp+24h] [bp-48h] BYREF
  signed int v44; // [sp+54h] [bp-18h] BYREF
  int v45; // [sp+58h] [bp-14h]
  unsigned int v46; // [sp+5Ch] [bp-10h]
  signed int v47; // [sp+60h] [bp-Ch]
  int v48; // [sp+64h] [bp-8h] BYREF

  v6 = a2;
  v7 = a4;
  if ( *(_DWORD *)(a2 + 72) != *(_DWORD *)(a1 + 24) )
    return 6;
  if ( a3 != a5 )
    return 19;
  v9 = a2 + 108;
  if ( a4 )
    FT_Outline_Translate(a2 + 108, *a4, a4[1]);
  FT_Outline_Get_CBox(v6 + 108, &v44);
  v10 = *(_DWORD *)(v6 + 156);
  v36 = (v47 + 63) & 0xFFFFFFC0;
  v11 = v44 & 0xFFFFFFC0;
  v46 = (v46 + 63) & 0xFFFFFFC0;
  v44 = v11;
  v45 &= 0xFFFFFFC0;
  v35 = v45;
  v47 = v36;
  v37 = (v36 - v45) >> 6;
  v12 = *(_DWORD *)(a1 + 8);
  v13 = (int)(v46 - v11) >> 6;
  v40 = v12;
  if ( (*(_DWORD *)(v10 + 4) & 1) != 0 )
  {
    ft_mem_free(v12, *(_DWORD *)(v6 + 88));
    v19 = *(_DWORD *)(v6 + 156);
    *(_DWORD *)(v6 + 88) = 0;
    *(_DWORD *)(v19 + 4) &= ~1u;
    v11 = v44;
    v35 = v45;
    v36 = v47;
  }
  if ( a5 == 3 )
  {
    v14 = 3 * v13;
    v15 = 3 * v13 + 3;
  }
  else
  {
    v14 = v13;
    v15 = v13;
  }
  if ( a5 == 3 )
    v15 &= 0xFFFFFFFC;
  if ( a5 == 4 )
    v16 = 3 * v37;
  else
    v16 = v37;
  *(_DWORD *)(v6 + 80) = v14;
  *(_WORD *)(v6 + 92) = 256;
  *(_BYTE *)(v6 + 94) = 2;
  *(_DWORD *)(v6 + 76) = v16;
  *(_DWORD *)(v6 + 84) = v15;
  v34 = v14;
  FT_Outline_Translate(v6 + 108, -v11, -v35);
  v17 = ft_mem_alloc(v40, v15 * v16, &v48);
  v18 = v48;
  *(_DWORD *)(v6 + 88) = v17;
  if ( !v18 )
  {
    *(_DWORD *)(*(_DWORD *)(v6 + 156) + 4) |= 1u;
    v43[0] = v6 + 76;
    v43[2] = 1;
    v43[1] = v6 + 108;
    v48 = (*(int (__fastcall **)(_DWORD, _DWORD *))(a1 + 64))(*(_DWORD *)(a1 + 60), v43);
    v20 = 0;
    if ( a5 == 3 )
    {
      v21 = *(_DWORD *)(v6 + 88);
      if ( v37 )
      {
        v22 = v37;
        do
        {
          if ( v13 )
          {
            v23 = v13 - 1;
            v24 = v34 + v21 + v20;
            do
            {
              v25 = *(_BYTE *)(v20 + v21 + v23--);
              *(_BYTE *)(v24 - 1) = v25;
              *(_BYTE *)(v24 - 3) = v25;
              *(_BYTE *)(v24 - 2) = v25;
              v24 -= 3;
            }
            while ( v23 != -1 );
          }
          --v22;
          v20 += v15;
        }
        while ( v22 );
      }
    }
    if ( a5 == 4 )
    {
      v26 = *(_DWORD *)(v6 + 88);
      if ( v37 )
      {
        v27 = (char *)(v26 + v15 * (v16 - v37));
        v28 = v37;
        v38 = v11;
        v42 = v6 + 108;
        v39 = v6;
        v41 = v7;
        v29 = 0;
        v30 = v15 + v26;
        v31 = *(_DWORD *)(v6 + 88);
        v32 = v28;
        v33 = v26 + 2 * v15;
        do
        {
          memcpy((void *)(v31 + v29), v27, v15);
          memcpy((void *)(v30 + v29), v27, v15);
          memcpy((void *)(v33 + v29), v27, v15);
          --v32;
          v27 += v15;
          v29 += 3 * v15;
        }
        while ( v32 );
        v11 = v38;
        v6 = v39;
        v7 = v41;
        v9 = v42;
      }
    }
    FT_Outline_Translate(v9, v11, v35);
    v18 = v48;
    if ( !v48 )
    {
      *(_DWORD *)(v6 + 104) = v36 >> 6;
      *(_DWORD *)(v6 + 72) = 1651078259;
      *(_DWORD *)(v6 + 100) = v11 >> 6;
    }
  }
  if ( !v7 )
    return v18;
  FT_Outline_Translate(v9, -*v7, -v7[1]);
  return v48;
}


// ===== 70e108 ft_smooth_render_lcd_v =====
int __fastcall ft_smooth_render_lcd_v(int a1, int a2, int a3, int *a4)
{
  int result; // r0

  result = ft_smooth_render_generic(a1, a2, a3, a4, 4);
  if ( !result )
    *(_BYTE *)(a2 + 94) = 6;
  return result;
}


// ===== 70e134 ft_smooth_render_lcd =====
int __fastcall ft_smooth_render_lcd(int a1, int a2, int a3, int *a4)
{
  int result; // r0

  result = ft_smooth_render_generic(a1, a2, a3, a4, 3);
  if ( !result )
    *(_BYTE *)(a2 + 94) = 5;
  return result;
}


// ===== 70e160 ft_smooth_render =====
int __fastcall ft_smooth_render(int a1, int a2, int a3, int *a4)
{
  if ( a3 == 1 )
    a3 = 0;
  return ft_smooth_render_generic(a1, a2, a3, a4, 0);
}


// ===== 70e184 ft_smooth_get_cbox =====
int __fastcall ft_smooth_get_cbox(int a1, int a2, _DWORD *a3)
{
  int v3; // r3
  int result; // r0

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 0;
  v3 = *(_DWORD *)(a1 + 24);
  result = *(_DWORD *)(a2 + 72);
  if ( result == v3 )
    return FT_Outline_Get_CBox(a2 + 108, a3);
  return result;
}


// ===== 70e1bc gray_render_span =====
void *__fastcall gray_render_span(void *result, int a2, int a3, _DWORD *a4)
{
  int v4; // r12
  int v5; // r7
  int v7; // r7
  int v8; // r6
  int i; // r4
  int v10; // r1
  size_t v11; // r2
  _BYTE *v12; // r3
  int v13; // r0

  v4 = a4[252];
  v5 = a4[253];
  if ( v4 >= 0 )
    a4 = (_DWORD *)a4[250];
  v7 = v5 - v4 * (_DWORD)result;
  if ( v4 >= 0 )
    v7 += v4 * ((_DWORD)a4 - 1);
  if ( a2 > 0 )
  {
    v8 = 6 * a2;
    for ( i = 0; i != v8; i += 6 )
    {
      while ( 1 )
      {
        v10 = *(unsigned __int8 *)(a3 + i + 4);
        if ( *(_BYTE *)(a3 + i + 4) )
          break;
LABEL_17:
        i += 6;
        if ( i == v8 )
          return result;
      }
      v11 = *(unsigned __int16 *)(a3 + i + 2);
      if ( v11 <= 7 )
      {
        result = (void *)*(__int16 *)(a3 + i);
        v12 = (char *)result + v7;
        switch ( *(_WORD *)(a3 + i + 2) )
        {
          case 1:
            goto LABEL_16;
          case 2:
            goto LABEL_15;
          case 3:
            goto LABEL_14;
          case 4:
            goto LABEL_13;
          case 5:
            goto LABEL_12;
          case 6:
            goto LABEL_11;
          case 7:
            *((_BYTE *)result + v7) = v10;
            ++v12;
LABEL_11:
            *v12++ = v10;
LABEL_12:
            *v12++ = v10;
LABEL_13:
            *v12++ = v10;
LABEL_14:
            *v12++ = v10;
LABEL_15:
            *v12++ = v10;
LABEL_16:
            *v12 = v10;
            break;
          default:
            goto LABEL_17;
        }
        goto LABEL_17;
      }
      v13 = *(__int16 *)(a3 + i);
      result = LC_API_MEMSET_0((void *)(v7 + v13), v10, v11);
    }
  }
  return result;
}


// ===== 70e290 ft_smooth_transform =====
int __fastcall ft_smooth_transform(int a1, int a2, int *a3, int *a4)
{
  if ( *(_DWORD *)(a2 + 72) != *(_DWORD *)(a1 + 24) )
    return 6;
  if ( a3 )
    FT_Outline_Transform((int *)(a2 + 108), a3);
  if ( a4 )
    FT_Outline_Translate(a2 + 108, *a4, a4[1]);
  return 0;
}


// ===== 70e2ec gray_record_cell =====
int *__fastcall gray_record_cell(int *result)
{
  int v1; // r4
  int v2; // r1
  int v3; // r2
  int v4; // r12
  _DWORD *v5; // r3
  _DWORD *v6; // r1
  int v7; // r2
  int v8; // r1

  if ( !result[10] )
  {
    v1 = result[8];
    if ( *((_QWORD *)result + 4) )
    {
      v2 = result[1];
      v3 = result[382];
      v4 = result[3];
      v5 = *(_DWORD **)(v3 + 4 * v2);
      v6 = (_DWORD *)(v3 + 4 * v2);
      if ( *result < v4 )
        v4 = *result;
      for ( ; v5; v5 = (_DWORD *)v5[3] )
      {
        if ( *v5 > v4 )
          break;
        if ( *v5 == v4 )
          goto LABEL_13;
        v6 = v5 + 3;
      }
      v7 = result[13];
      if ( v7 >= result[12] )
        longjmp((struct __jmp_buf_tag *)(result + 316), 1);
      v5 = (_DWORD *)(result[11] + 16 * v7);
      result[13] = v7 + 1;
      *v5 = v4;
      v5[1] = 0;
      v5[2] = 0;
      v5[3] = *v6;
      *v6 = v5;
      v1 = result[8];
LABEL_13:
      v8 = v5[1];
      v5[2] += v1;
      v5[1] = v8 + result[9];
    }
  }
  return result;
}


// ===== 70e3c8 gray_convert_glyph_inner =====
int __fastcall gray_convert_glyph_inner(int a1)
{
  int v3; // [sp+Ch] [bp-8h]

  if ( setjmp((struct __jmp_buf_tag *)(a1 + 1264)) )
    return 64;
  v3 = FT_Outline_Decompose((__int16 *)(a1 + 980), (int)func_interface_4485, a1);
  gray_record_cell((int *)a1);
  return v3;
}


// ===== 70e430 gray_raster_render =====
int __fastcall gray_raster_render(_DWORD *a1, int a2)
{
  _DWORD *v2; // r6
  __int16 *v4; // r5
  _DWORD *v5; // r7
  int v6; // r2
  int v7; // r1
  int v9; // r3
  int v10; // r3
  int v11; // r4
  int v12; // r3
  int v13; // r1
  int v14; // r2
  int v15; // r3
  int v16; // r3
  int v17; // r0
  int v18; // r1
  int v19; // r2
  int v20; // r3
  _DWORD *v21; // r7
  int v22; // r1
  int *v23; // r2
  int v24; // r7
  int v25; // r12
  unsigned int v26; // r7
  int v27; // r0
  int v28; // r5
  _DWORD *v29; // r2
  int v30; // r1
  int v31; // r3
  int v32; // r6
  int v33; // r3
  int v34; // r2
  int v35; // r1
  int v36; // r12
  int v37; // r5
  int v38; // r0
  int v39; // r7
  int v40; // r6
  bool v41; // cc
  int v42; // r2
  int v43; // r3
  char v44; // r2
  int v45; // r3
  int v46; // r2
  int v47; // r1
  int v48; // r3
  int v49; // r1
  int v50; // r3
  int v51; // r0
  int v52; // r2
  int v53; // r12
  unsigned int v54; // r2
  unsigned int v55; // r1
  int v56; // r2
  int v57; // r2
  int v58; // r0
  int v59; // r3
  int v60; // r2
  int v61; // r1
  int v62; // r1
  int v63; // r2
  int v64; // r3
  int v65; // r3
  int v66; // r8
  int v67; // r7
  int *v68; // r4
  int v69; // r1
  int v70; // r5
  int v71; // r12
  int v72; // r3
  int v73; // r2
  bool v74; // cc
  void (__fastcall *v75)(_DWORD, int, int, _DWORD); // r12
  int v76; // r1
  int v77; // [sp+Ch] [bp-160h]
  _DWORD v78[80]; // [sp+10h] [bp-15Ch] BYREF
  int v79; // [sp+150h] [bp-1Ch]
  int v80; // [sp+154h] [bp-18h]
  int v81; // [sp+158h] [bp-14h]
  int v82; // [sp+15Ch] [bp-10h]
  int v83; // [sp+160h] [bp-Ch]
  _DWORD *v84; // [sp+164h] [bp-8h]

  v2 = a1;
  v4 = *(__int16 **)(a2 + 4);
  v5 = *(_DWORD **)a2;
  if ( !a1 || !*a1 || !a1[1] )
    return 132;
  if ( !v4 )
    return 20;
  if ( !v4[1] )
    return 0;
  v6 = *v4;
  if ( v6 <= 0 )
    return 0;
  v7 = *((_DWORD *)v4 + 3);
  if ( !v7 || !*((_DWORD *)v4 + 1) || v4[1] != *(__int16 *)(v7 + 2 * v6 - 2) + 1 )
    return 20;
  v10 = *(_DWORD *)(a2 + 8);
  v11 = a1[4];
  if ( (v10 & 2) == 0 )
  {
    if ( !v5 )
      return 132;
    if ( !v5[1] || !*v5 )
      return 0;
    if ( !v5[3] )
      return 132;
  }
  if ( (v10 & 1) == 0 )
    return 19;
  if ( (v10 & 2) != 0 )
  {
    if ( (v10 & 4) != 0 )
    {
      v62 = *(_DWORD *)(a2 + 36);
      v63 = *(_DWORD *)(a2 + 40);
      v64 = *(_DWORD *)(a2 + 44);
      *(_DWORD *)(v11 + 1024) = *(_DWORD *)(a2 + 32);
      *(_DWORD *)(v11 + 1028) = v62;
      *(_DWORD *)(v11 + 1032) = v63;
      *(_DWORD *)(v11 + 1036) = v64;
    }
    else
    {
      *(_DWORD *)(v11 + 1028) = -32768;
      *(_DWORD *)(v11 + 1036) = 0x7FFF;
      *(_DWORD *)(v11 + 1024) = -32768;
      *(_DWORD *)(v11 + 1032) = 0x7FFF;
    }
  }
  else
  {
    *(_DWORD *)(v11 + 1028) = 0;
    *(_DWORD *)(v11 + 1024) = 0;
    *(_DWORD *)(v11 + 1032) = v5[1];
    *(_DWORD *)(v11 + 1036) = *v5;
  }
  v12 = *a1;
  *(_DWORD *)(v11 + 1524) = a1[1];
  *(_DWORD *)(v11 + 1528) = v12;
  *(_DWORD *)(v11 + 40) = 1;
  *(_DWORD *)(v11 + 1520) = v12;
  *(_DWORD *)(v11 + 44) = 0;
  *(_DWORD *)(v11 + 48) = 0;
  *(_DWORD *)(v11 + 52) = 0;
  *(_DWORD *)(v11 + 32) = 0;
  *(_DWORD *)(v11 + 36) = 0;
  v13 = *((_DWORD *)v4 + 1);
  v14 = *((_DWORD *)v4 + 2);
  v15 = *((_DWORD *)v4 + 3);
  *(_DWORD *)(v11 + 980) = *(_DWORD *)v4;
  *(_DWORD *)(v11 + 984) = v13;
  *(_DWORD *)(v11 + 988) = v14;
  *(_DWORD *)(v11 + 992) = v15;
  *(_DWORD *)(v11 + 996) = *((_DWORD *)v4 + 4);
  v16 = a1[2];
  *(_DWORD *)(v11 + 1232) = 0;
  *(_DWORD *)(v11 + 1248) = v16;
  if ( v5 )
  {
    v17 = *v5;
    v18 = v5[1];
    v19 = v5[2];
    v20 = v5[3];
    v21 = v5 + 4;
    *(_DWORD *)(v11 + 1000) = v17;
    *(_DWORD *)(v11 + 1004) = v18;
    *(_DWORD *)(v11 + 1008) = v19;
    *(_DWORD *)(v11 + 1012) = v20;
    v22 = v21[1];
    *(_DWORD *)(v11 + 1016) = *v21;
    *(_DWORD *)(v11 + 1020) = v22;
  }
  *(_DWORD *)(v11 + 1240) = v11;
  v23 = *(int **)(v11 + 984);
  *(_DWORD *)(v11 + 1236) = gray_render_span;
  if ( (*(_DWORD *)(a2 + 8) & 2) != 0 )
  {
    *(_DWORD *)(v11 + 1236) = *(_DWORD *)(a2 + 12);
    *(_DWORD *)(v11 + 1240) = *(_DWORD *)(a2 + 28);
  }
  v24 = *(__int16 *)(v11 + 982);
  if ( v24 <= 0 )
  {
    v32 = 0;
    *(_DWORD *)(v11 + 12) = 0;
    *(_DWORD *)(v11 + 8) = 0;
    *(_DWORD *)(v11 + 20) = 0;
    *(_DWORD *)(v11 + 16) = 0;
  }
  else
  {
    v25 = *v23;
    v26 = (unsigned int)&v23[2 * v24];
    *(_DWORD *)(v11 + 12) = *v23;
    *(_DWORD *)(v11 + 8) = v25;
    v27 = v23[1];
    if ( v26 <= (unsigned int)(v23 + 2) )
      v2 = (_DWORD *)v25;
    *(_DWORD *)(v11 + 20) = v27;
    *(_DWORD *)(v11 + 16) = v27;
    if ( v26 > (unsigned int)(v23 + 2) )
    {
      v29 = v23 + 4;
      v2 = (_DWORD *)v25;
      v28 = v27;
      while ( 1 )
      {
        v30 = *(v29 - 2);
        v31 = *(v29 - 1);
        if ( v30 < v25 )
          *(_DWORD *)(v11 + 8) = v30;
        if ( v30 > (int)v2 )
        {
          *(_DWORD *)(v11 + 12) = v30;
          v2 = (_DWORD *)v30;
        }
        if ( v31 < v27 )
        {
          *(_DWORD *)(v11 + 16) = v31;
          v27 = v31;
        }
        if ( v31 > v28 )
        {
          *(_DWORD *)(v11 + 20) = v31;
          v28 = v31;
        }
        if ( v26 <= (unsigned int)v29 )
          break;
        v25 = *(_DWORD *)(v11 + 8);
        v29 += 2;
      }
      v25 = *(_DWORD *)(v11 + 8);
    }
    else
    {
      v28 = v27;
    }
    v32 = ((int)v2 + 63) >> 6;
    *(_DWORD *)(v11 + 8) = v25 >> 6;
    *(_DWORD *)(v11 + 16) = v27 >> 6;
    *(_DWORD *)(v11 + 20) = (v28 + 63) >> 6;
    *(_DWORD *)(v11 + 12) = v32;
  }
  v33 = *(_DWORD *)(v11 + 1024);
  if ( v32 <= v33 )
    return 0;
  v34 = *(_DWORD *)(v11 + 8);
  v35 = *(_DWORD *)(v11 + 1032);
  if ( v34 >= v35 )
    return 0;
  v36 = *(_DWORD *)(v11 + 1028);
  v37 = *(_DWORD *)(v11 + 20);
  if ( v37 <= v36 )
    return 0;
  v38 = *(_DWORD *)(v11 + 16);
  v39 = *(_DWORD *)(v11 + 1036);
  if ( v38 >= v39 )
    return 0;
  v40 = *(_DWORD *)(v11 + 12);
  if ( v33 > v34 )
  {
    v34 = *(_DWORD *)(v11 + 1024);
    *(_DWORD *)(v11 + 8) = v33;
  }
  if ( v38 < v36 )
  {
    v38 = v36;
    *(_DWORD *)(v11 + 16) = v36;
  }
  if ( v40 > v35 )
  {
    v40 = v35;
    *(_DWORD *)(v11 + 12) = v35;
  }
  v41 = v37 <= v39;
  if ( v37 > v39 )
    v37 = v39;
  v42 = v40 - v34;
  if ( !v41 )
    *(_DWORD *)(v11 + 20) = v39;
  v43 = v37 - v38;
  *(_DWORD *)(v11 + 1256) = 32;
  *(_DWORD *)(v11 + 1260) = 16;
  *(_DWORD *)(v11 + 24) = v42;
  *(_DWORD *)(v11 + 28) = v37 - v38;
  if ( v42 > 24 )
  {
    if ( v42 > 120 )
      goto LABEL_121;
    goto LABEL_122;
  }
  if ( v43 > 24 )
  {
LABEL_122:
    if ( v43 <= 120 )
    {
      v44 = 1;
      goto LABEL_66;
    }
LABEL_121:
    v45 = 64;
    v46 = 128;
    goto LABEL_67;
  }
  v44 = 0;
LABEL_66:
  v45 = 16 << v44;
  v46 = 32 << v44;
LABEL_67:
  v47 = *(_DWORD *)(v11 + 1248);
  *(_DWORD *)(v11 + 1256) = v46;
  *(_DWORD *)(v11 + 1260) = v45;
  v82 = (v37 - v38) / v47;
  if ( !v82 )
    v82 = 1;
  if ( v82 > 38 )
    v82 = 39;
  v48 = *(_DWORD *)(v11 + 16);
  *(_DWORD *)(v11 + 1252) = 0;
  v81 = v48;
  v79 = *(_DWORD *)(v11 + 20);
  v83 = 0;
  if ( v82 <= 0 )
    return 0;
  v77 = v11 + 1040;
  while ( 2 )
  {
    v80 = v81 + *(_DWORD *)(v11 + 1248);
    if ( v82 - 1 == v83 || v80 > v79 )
      v80 = v79;
    v84 = v78;
    v78[0] = v81;
    v78[1] = v80;
    while ( v84 >= v78 )
    {
      v49 = *(_DWORD *)(v11 + 1520);
      *(_DWORD *)(v11 + 1528) = v49;
      v50 = v49;
      v51 = v84[1] - *v84;
      v52 = 4 * v51;
      if ( ((4 * v51) & 0xF) != 0 )
        v52 = v52 + 16 - ((4 * v51) & 0xF);
      v53 = *(_DWORD *)(v11 + 1524);
      v54 = v49 + v52;
      *(_DWORD *)(v11 + 1532) = v51;
      v55 = v49 + (v53 & 0xFFFFFFF0);
      *(_DWORD *)(v11 + 44) = v54;
      if ( v55 <= v54 )
        goto LABEL_88;
      v56 = (int)(v55 - v54) >> 4;
      *(_DWORD *)(v11 + 48) = v56;
      if ( v56 <= 1 )
        goto LABEL_88;
      if ( v51 > 0 )
      {
        v57 = 0;
        while ( 1 )
        {
          *(_DWORD *)(v50 + 4 * v57++) = 0;
          if ( v57 >= *(_DWORD *)(v11 + 1532) )
            break;
          v50 = *(_DWORD *)(v11 + 1528);
        }
      }
      *(_DWORD *)(v11 + 52) = 0;
      *(_DWORD *)(v11 + 40) = 1;
      *(_DWORD *)(v11 + 16) = *v84;
      *(_DWORD *)(v11 + 20) = v84[1];
      *(_DWORD *)(v11 + 28) = v84[1] - *v84;
      v58 = gray_convert_glyph_inner(v11);
      if ( v58 )
      {
        if ( v58 != 64 )
          return 1;
LABEL_88:
        v59 = *v84;
        v60 = v84[1];
        v61 = *v84 + ((v60 - *v84) >> 1);
        if ( *v84 == v61 )
          return 1;
        if ( v59 - v60 >= *(_DWORD *)(v11 + 1248) )
          ++*(_DWORD *)(v11 + 1252);
        v84[2] = v59;
        v84[3] = v61;
        *v84 = v61;
        v84[1] = v60;
        v84 += 2;
      }
      else
      {
        if ( *(_DWORD *)(v11 + 52) )
        {
          v65 = *(_DWORD *)(v11 + 1532);
          *(_DWORD *)(v11 + 1232) = 0;
          if ( v65 > 0 )
          {
            v66 = 0;
            v67 = v11;
            do
            {
              v68 = *(int **)(*(_DWORD *)(v67 + 1528) + 4 * v66);
              if ( v68 )
              {
                v69 = *v68;
                v70 = 0;
                v71 = *v68;
                while ( 1 )
                {
                  v70 += v68[1];
                  v72 = (v70 << 9) - v68[2];
                  if ( v72 )
                  {
                    if ( v69 >= 0 )
                    {
                      gray_hline((_DWORD *)v67, v69, v66, v72, 1);
                      v71 = *v68;
                    }
                  }
                  else
                  {
                    v71 = v69;
                  }
                  v68 = (int *)v68[3];
                  v73 = v71 + 1;
                  if ( !v68 )
                    break;
                  v71 = *v68;
                  v74 = v70 <= 0;
                  if ( v70 )
                    v74 = v71 <= v73;
                  v69 = *v68;
                  if ( !v74 )
                  {
                    gray_hline((_DWORD *)v67, v73, v66, v70 << 9, v71 - v73);
                    v71 = *v68;
                    v69 = *v68;
                  }
                }
                if ( v70 )
                  gray_hline((_DWORD *)v67, v71 + 1, v66, v70 << 9, *(_WORD *)(v67 + 24) - v73);
                v65 = *(_DWORD *)(v67 + 1532);
              }
              ++v66;
            }
            while ( v66 < v65 );
            v11 = v67;
          }
          v75 = *(void (__fastcall **)(_DWORD, int, int, _DWORD))(v11 + 1236);
          if ( v75 )
          {
            v76 = *(_DWORD *)(v11 + 1232);
            if ( v76 > 0 )
              v75(*(_DWORD *)(v11 + 1244), v76, v77, *(_DWORD *)(v11 + 1240));
          }
        }
        v84 -= 2;
      }
    }
    ++v83;
    v81 = v80;
    if ( v83 < v82 )
      continue;
    break;
  }
  if ( *(int *)(v11 + 1252) > 8 )
  {
    v9 = *(_DWORD *)(v11 + 1248);
    if ( v9 > 16 )
    {
      *(_DWORD *)(v11 + 1248) = v9 >> 1;
      return 0;
    }
  }
  return 0;
}


// ===== 70eb5c gray_set_cell =====
int *__fastcall gray_set_cell(int *a1, int a2, int a3)
{
  int v3; // r5
  int v4; // r12
  int *result; // r0
  int v7; // r5
  int v8; // r5
  unsigned int v9; // r6
  unsigned int v10; // r3
  _BOOL4 v11; // r5

  v3 = a1[3];
  v4 = a1[2];
  result = (int *)*a1;
  if ( a2 > v3 )
    v7 = v3 - v4;
  else
    v7 = a2 - v4;
  v8 = v7 | (v7 >> 31);
  v9 = a3 - a1[4];
  if ( result != (int *)v8 )
  {
    if ( a1[10] )
    {
LABEL_6:
      a1[9] = 0;
      a1[8] = 0;
      goto LABEL_7;
    }
LABEL_13:
    result = gray_record_cell(a1);
    goto LABEL_6;
  }
  if ( a1[1] != v9 )
  {
    if ( a1[10] )
      goto LABEL_6;
    goto LABEL_13;
  }
LABEL_7:
  v10 = a1[7];
  *a1 = v8;
  a1[1] = v9;
  v11 = v9 >= v10 || v8 >= a1[6];
  a1[10] = v11;
  return result;
}


// ===== 70ebf8 gray_render_scanline =====
int *__fastcall gray_render_scanline(int *result, int a2, int a3, int a4, int a5, int a6)
{
  int v8; // r12
  int *v9; // r4
  int v10; // r10
  int v11; // r6
  int v12; // r3
  bool v13; // nf
  int v14; // r9
  int v15; // r2
  int v16; // r1
  int v17; // r2
  int v18; // r8
  int v19; // r5
  int v20; // r3
  int v21; // r6
  int v22; // r2
  int v23; // r7
  int v24; // r6
  int v25; // r5
  int v26; // r1
  int v27; // r5
  int v28; // r2
  int v29; // r3
  int v30; // r1
  int v31; // r1
  int v32; // r7
  int v33; // r3
  int v34; // [sp+8h] [bp-1Ch]
  int v35; // [sp+Ch] [bp-18h]
  int v36; // [sp+14h] [bp-10h]
  int v37; // [sp+18h] [bp-Ch]
  int v38; // [sp+1Ch] [bp-8h]

  v8 = a5;
  v9 = result;
  v10 = a5 >> 8;
  if ( a4 == a6 )
    return gray_set_cell(result, a5 >> 8, a2);
  v11 = a3 >> 8;
  v12 = a3 - (a3 >> 8 << 8);
  v38 = a5 - (v10 << 8);
  if ( a3 >> 8 == v10 )
  {
    v31 = result[8];
    v32 = a6 - a4;
    v33 = v38 + v12;
  }
  else
  {
    v14 = a5 - a3;
    v13 = a5 - a3 < 0;
    if ( a5 - a3 < 0 )
      v14 = a3 - a5;
    v15 = a6 - a4;
    if ( v13 )
    {
      v17 = v12 * v15;
      v16 = 0;
    }
    else
    {
      v16 = 256 - v12;
      v17 = v15 * (256 - v12);
    }
    if ( v13 )
      v37 = v16;
    else
      v8 = 256;
    if ( v13 )
    {
      v18 = -1;
    }
    else
    {
      v18 = 1;
      v37 = v8;
    }
    v19 = v17 / v14;
    v35 = v17 % v14;
    if ( v17 % v14 < 0 )
    {
      v35 = v17 % v14 + v14;
      --v19;
    }
    v20 = result[8] + (v37 + v12) * v19;
    v21 = v18 + v11;
    result[9] += v19;
    result[8] = v20;
    result = gray_set_cell(result, v21, a2);
    v23 = v19 + a4;
    if ( v21 != v10 )
    {
      v24 = v21 + v18;
      v25 = (v19 + a6 - v23) << 8;
      v36 = v25 / v14;
      v26 = v25 % v14;
      if ( v25 % v14 < 0 )
        v22 = v25 / v14;
      v34 = v25 % v14;
      if ( v26 < 0 )
      {
        v36 = v22 - 1;
        v34 = v26 + v14;
      }
      v27 = v35 - v14;
      do
      {
        v28 = v9[9];
        v27 += v34;
        if ( v27 >= 0 )
          v29 = v36 + 1;
        else
          v29 = v36;
        v30 = v24;
        v24 += v18;
        v9[8] += v29 << 8;
        v9[9] = v28 + v29;
        if ( v27 >= 0 )
          v27 -= v14;
        v23 += v29;
        result = gray_set_cell(v9, v30, a2);
      }
      while ( v10 != v24 - v18 );
    }
    v31 = v9[8];
    v32 = a6 - v23;
    v33 = v38 + 256 - v37;
  }
  v9[9] += v32;
  v9[8] = v31 + v33 * v32;
  return result;
}


// ===== 70ee08 gray_render_line =====
int *__fastcall gray_render_line(int *a1, int a2, int a3)
{
  int v3; // r10
  int v4; // r5
  int v5; // r9
  int v6; // r4
  int v7; // r3
  int v8; // r6
  int v9; // r2
  int v10; // r1
  int v11; // r7
  int *result; // r0
  int v13; // r9
  int v14; // r1
  int v15; // r2
  int v16; // r3
  int v17; // r3
  int v18; // r8
  int v19; // r11
  int v20; // r10
  int v21; // r8
  int v22; // r10
  int v23; // lr
  int v24; // r3
  int v25; // r7
  int v26; // r8
  int v27; // r6
  int v28; // r2
  int v29; // r9
  int v30; // r1
  int v31; // r10
  int *v32; // r5
  bool v33; // nf
  int v34; // r8
  int v35; // r11
  int v36; // r9
  int v37; // r3
  int v38; // r7
  int v39; // r6
  int v40; // r6
  int v41; // r2
  int v42; // r3
  int v43; // r3
  int v44; // r11
  int v45; // r3
  int v46; // [sp+8h] [bp-2Ch]
  int v49; // [sp+14h] [bp-20h]
  int v50; // [sp+18h] [bp-1Ch]
  int v51; // [sp+1Ch] [bp-18h]
  int v52; // [sp+20h] [bp-14h]
  int v53; // [sp+24h] [bp-10h]
  int v54; // [sp+28h] [bp-Ch]
  int v55; // [sp+2Ch] [bp-8h]

  v4 = a3 >> 8;
  v5 = a1[18];
  v6 = (int)a1;
  v7 = a1[17];
  v50 = a3 >> 8 << 8;
  v8 = v5 >> 8;
  v9 = a1[5];
  if ( v5 >> 8 <= v4 )
    v10 = v5 >> 8;
  else
    v10 = v4;
  v11 = a1[16];
  if ( v5 >> 8 <= v4 )
    result = (int *)v4;
  else
    result = (int *)(v5 >> 8);
  if ( v10 < v9 && (int)result >= *(_DWORD *)(v6 + 16) )
  {
    v13 = v7 - v5;
    v54 = a3 - v50;
    if ( v8 == v4 )
    {
      v14 = v8;
      v15 = v11;
      v16 = v13;
LABEL_31:
      result = gray_render_scanline((int *)v6, v14, v15, v16, a2, v54);
      goto LABEL_32;
    }
    v17 = a3 - v7;
    v51 = a2 - v11;
    v49 = v17;
    if ( a2 != v11 )
    {
      if ( v17 < 0 )
      {
        v18 = v13 * v51;
        v49 = -v17;
        v53 = 256;
        v19 = -1;
        v52 = 0;
      }
      else
      {
        v18 = (256 - v13) * v51;
        v53 = 0;
        v19 = 1;
        v52 = 256;
      }
      v20 = v18 / v49;
      v21 = v18 % v49;
      if ( v21 < 0 )
      {
        --v20;
        v21 += v49;
      }
      v22 = v20 + v11;
      v46 = v19 + v8;
      gray_render_scanline((int *)v6, v8, v11, v13, v22, v52);
      gray_set_cell((int *)v6, v22 >> 8, v19 + v8);
      if ( v19 + v8 != v4 )
      {
        v55 = (v51 << 8) / v49;
        v24 = (v51 << 8) % v49;
        if ( v24 < 0 )
        {
          v23 = v49;
          v55 = (v51 << 8) / v49 - 1;
        }
        if ( (v51 << 8) % v49 < 0 )
          v24 += v23;
        v25 = v46 + v19;
        v26 = v21 - v49;
        v27 = v4;
        v28 = v22;
        v29 = v46 + v19;
        v30 = v46;
        v31 = v24;
        v32 = (int *)v6;
        while ( 1 )
        {
          v26 += v31;
          if ( v26 < 0 )
            v6 = v55;
          else
            v24 = v49;
          if ( v26 >= 0 )
          {
            v6 = v55 + 1;
            v26 -= v24;
          }
          v6 += v28;
          v29 += v19;
          gray_render_scanline(v32, v30, v28, v53, v6, v52);
          gray_set_cell(v32, v6 >> 8, v25);
          v24 = v29 - v19;
          v28 = v6;
          v30 = v25;
          if ( v27 == v29 - v19 )
            break;
          v25 += v19;
        }
        v22 = v6;
        v6 = (int)v32;
        v4 = v27;
      }
      v16 = v53;
      v14 = v4;
      v15 = v22;
      goto LABEL_31;
    }
    v33 = v17 < 0;
    if ( v17 >= 0 )
    {
      v3 = 256;
      v51 = 256;
    }
    v34 = v11 >> 8;
    v35 = 2 * (v11 - (v11 >> 8 << 8));
    v36 = v51 - v13;
    v37 = *(_DWORD *)(v6 + 32) + v35 * v36;
    if ( v33 )
      v38 = -1;
    else
      v38 = 1;
    v39 = v38 + v8;
    *(_DWORD *)(v6 + 36) += v36;
    *(_DWORD *)(v6 + 32) = v37;
    if ( v33 )
      v3 = -256;
    result = gray_set_cell((int *)v6, v34, v39);
    if ( v4 != v39 )
    {
      v40 = v39 + v38;
      do
      {
        v41 = v40;
        v42 = *(_DWORD *)(v6 + 36) + v3;
        *(_DWORD *)(v6 + 32) += v35 * v3;
        *(_DWORD *)(v6 + 36) = v42;
        v40 += v38;
        result = gray_set_cell((int *)v6, v34, v41);
      }
      while ( v4 != v40 - v38 );
    }
    v43 = v54 - 256 + v51;
    v44 = *(_DWORD *)(v6 + 32) + v35 * v43;
    v45 = *(_DWORD *)(v6 + 36) + v43;
    *(_DWORD *)(v6 + 32) = v44;
    *(_DWORD *)(v6 + 36) = v45;
  }
LABEL_32:
  *(_DWORD *)(v6 + 72) = v50;
  *(_DWORD *)(v6 + 64) = a2;
  *(_DWORD *)(v6 + 68) = a3;
  return result;
}


// ===== 70f15c gray_cubic_to =====
int __fastcall gray_cubic_to(int *a1, _DWORD *a2, int *a3, int *a4)
{
  int v6; // r0
  int v7; // r9
  int v10; // r2
  int v11; // r11
  int v12; // r5
  int v13; // r7
  int v14; // lr
  int v15; // r1
  int v16; // r0
  int v17; // r12
  int v18; // r5
  signed int v19; // lr
  signed int v20; // r0
  int v21; // r5
  signed int v22; // r0
  int v23; // r0
  bool v24; // cc
  int v25; // r12
  bool v26; // cc
  int v27; // r7
  int v28; // r0
  int v29; // r1
  int *v30; // r3
  int v31; // r2
  int v32; // r10
  int v33; // r11
  int *v34; // r5
  int *v35; // r1
  int v36; // r8
  int v37; // lr
  int v38; // r9
  int v39; // r8
  int v40; // r0
  int v41; // r10
  int v42; // r6
  int v43; // kr00_4
  int v44; // r12
  int v45; // r9
  int v46; // r10
  int v47; // r8
  int v48; // r6
  int v49; // r8
  int v50; // r11
  int v51; // r8
  int v52; // kr08_4
  int v53; // kr0C_4
  int v54; // r8
  int v55; // r6
  int v56; // r2
  int *v57; // r2
  int v58; // r0
  int v59; // r6
  int v60; // r8
  int v61; // r9
  int v63; // [sp+4h] [bp-18h]
  signed int v64; // [sp+8h] [bp-14h]
  int v65; // [sp+Ch] [bp-10h]
  int v66; // [sp+10h] [bp-Ch]

  v6 = *a1;
  v65 = a4[16];
  v7 = *a3;
  v66 = a4[17];
  v10 = a3[1];
  v11 = a2[1];
  v12 = v7 + (v65 >> 2);
  v13 = v6 + *a2;
  v14 = v10 + (v66 >> 2);
  v15 = v14 - 3 * (v11 + v6);
  v16 = v12 - 2 * v6;
  v17 = v12 - 3 * v13;
  v18 = v14 - 2 * a1[1];
  v19 = abs32(v16);
  v20 = abs32(v18);
  if ( v20 < v19 )
    v20 = v19;
  v63 = v10;
  v64 = abs32(v15);
  v21 = v20 / a4[315];
  v22 = abs32(v17);
  if ( v22 < v64 )
    v22 = v64;
  v23 = v22 / a4[314];
  v24 = v23 <= 0;
  if ( v23 <= 0 )
    v24 = v21 <= 0;
  if ( !v24 )
  {
    v25 = 1;
    do
    {
      v21 >>= 2;
      v23 >>= 3;
      v26 = v21 <= 0;
      if ( v21 <= 0 )
        v26 = v23 <= 0;
      v27 = !v26;
      ++v25;
    }
    while ( !v26 );
    a4[19] = 4 * v7;
    v28 = a4[16];
    v29 = a4[17];
    a4[20] = 4 * a3[1];
    v30 = a4 + 19;
    a4[21] = 4 * *a2;
    a4[22] = 4 * a2[1];
    a4[23] = 4 * *a1;
    v31 = a1[1];
    a4[25] = v28;
    a4[26] = v29;
    a4[24] = 4 * v31;
    a4[213] = v25;
    while ( 1 )
    {
      if ( v25 <= 1 )
      {
        v57 = v30 + 2;
        v35 = v30 + 4;
        v59 = v30[1];
        v58 = v30[3];
        v37 = v30[5];
      }
      else
      {
        v57 = v30 + 2;
        v58 = v30[3];
        v59 = v30[1];
        if ( v59 <= v58 )
        {
          v32 = v30[1];
          if ( v59 >= v58 )
            v33 = v30[1];
          else
            v33 = v30[3];
        }
        else
        {
          v32 = v30[3];
          v33 = v30[1];
        }
        v34 = v30 + 6;
        v35 = v30 + 4;
        v36 = v30[7];
        v37 = v30[5];
        if ( v36 >= v37 )
          v38 = v30[5];
        else
          v38 = v30[7];
        if ( v38 < v32 )
          v32 = v38;
        if ( a4[5] > v32 >> 8 )
        {
          if ( v36 < v37 )
            v36 = v30[5];
          if ( v36 >= v33 )
            v33 = v36;
          if ( v33 >= 0 )
          {
            ++v27;
            v30[12] = *v34;
            v39 = *v35;
            v40 = v27 + 212;
            v41 = *v35 + *v57;
            v42 = (*v57 + *v30) / 2;
            *v57 = v42;
            v43 = v41;
            v44 = v25 - 1;
            v45 = (v39 + *v34) / 2;
            v46 = (v41 / 2 + v42) / 2;
            v47 = (v43 / 2 + v45) / 2;
            v30[10] = v45;
            v48 = v47 + v46;
            *v35 = v46;
            v30[8] = v47;
            v49 = v30[7];
            *v34 = v48 / 2;
            v30[13] = v49;
            v50 = v30[3];
            v51 = v30[5];
            v52 = v50 + v30[1];
            v30[3] = v52 / 2;
            v53 = v51 + v50;
            v54 = (v51 + v30[7]) / 2;
            v55 = (v53 / 2 + v52 / 2) / 2;
            v56 = (v53 / 2 + v54) / 2;
            v30[11] = v54;
            v30[5] = v55;
            v30[9] = v56;
            v30[7] = (v56 + v55) / 2;
            a4[v27 + 212] = v44;
            a4[v27 + 213] = v44;
            goto LABEL_32;
          }
        }
      }
      v34 = v30 - 6;
      v60 = *v30;
      gray_render_line(a4, (*v30 + a4[16] + 3 * (*v35 + *v57)) / 8, (v59 + a4[17] + 3 * (v37 + v58)) / 8);
      --v27;
      gray_render_line(a4, v60, v59);
      if ( v27 == -1 )
        return 0;
      v40 = v27 + 212;
LABEL_32:
      v25 = a4[v40 + 1];
      v30 = v34;
    }
  }
  v61 = 4 * v7;
  gray_render_line(a4, (v61 + v65 + 12 * v13) / 8, (4 * v10 + v66 + 12 * (v11 + a1[1])) / 8);
  gray_render_line(a4, v61, 4 * v63);
  return 0;
}


// ===== 70f56c gray_conic_to =====
int __fastcall gray_conic_to(int *a1, _DWORD *a2, int *a3)
{
  int v3; // r10
  int v4; // r8
  int v5; // r9
  int v6; // r3
  int v7; // r7
  signed int v11; // r2
  signed int v12; // r0
  int v13; // r0
  int v14; // r3
  int v15; // r12
  int v16; // r1
  int v17; // r7
  int *v18; // r3
  int v19; // r2
  int v20; // r10
  int v21; // r9
  int *v22; // r5
  int v23; // r0
  int v24; // r8
  int v25; // r12
  int *v26; // r1
  int v27; // r2
  int v28; // r6
  int v29; // r0
  int v30; // kr00_4
  int v31; // r6
  int v32; // r0
  int v33; // r12
  int v34; // r0
  int *v35; // r10
  int v36; // kr08_4
  int v37; // r0
  int v39; // r11
  int v40; // r9

  v3 = a3[16];
  v4 = a3[17];
  v5 = a2[1];
  v6 = a1[1];
  v7 = *a1;
  v11 = abs32(*a2 + (v3 >> 2) - 2 * *a1);
  v12 = abs32(v5 + (v4 >> 2) - 2 * v6);
  if ( v12 < v11 )
    v12 = v11;
  v13 = v12 / a3[314];
  if ( v13 > 0 )
  {
    v14 = 1;
    do
    {
      v13 >>= 2;
      ++v14;
    }
    while ( v13 );
    a3[213] = v14;
    v15 = a3[16];
    v16 = a3[17];
    a3[19] = 4 * *a2;
    v17 = 0;
    v18 = a3 + 19;
    a3[20] = 4 * a2[1];
    a3[21] = 4 * *a1;
    v19 = a1[1];
    a3[23] = v15;
    a3[24] = v16;
    a3[22] = 4 * v19;
    while ( 1 )
    {
      v25 = a3[v17 + 213];
      if ( v25 <= 1 )
        break;
      v26 = v18 + 2;
      v27 = v18[3];
      v28 = v18[1];
      if ( v28 <= v27 )
      {
        v20 = v18[1];
        if ( v28 >= v27 )
          v21 = v18[1];
        else
          v21 = v18[3];
      }
      else
      {
        v20 = v18[3];
        v21 = v18[1];
      }
      v22 = v18 + 4;
      v23 = v18[5];
      if ( v20 >= v23 )
        v20 = v18[5];
      if ( a3[5] <= v20 >> 8 )
        goto LABEL_16;
      if ( v21 >= v23 )
        v23 = v21;
      if ( a3[4] > v23 >> 8 )
        goto LABEL_16;
      v29 = *v18;
      ++v17;
      v18[8] = *v22;
      v30 = *v26 + v29;
      v31 = (*v26 + *v22) / 2;
      v18[6] = v31;
      *v26 = v30 / 2;
      v32 = v18[5];
      v33 = v25 - 1;
      *v22 = (v30 / 2 + v31) / 2;
      v18[9] = v32;
      v34 = v18[3];
      v35 = &a3[v17];
      v36 = v34 + v18[1];
      v37 = (v34 + v18[5]) / 2;
      v18[7] = v37;
      v18[3] = v36 / 2;
      v18[5] = (v36 / 2 + v37) / 2;
      v35[212] = v33;
      v35[213] = v33;
      if ( v17 < 0 )
        return 0;
LABEL_17:
      v18 = v22;
    }
    v26 = v18 + 2;
    v28 = v18[1];
    v27 = v18[3];
LABEL_16:
    v22 = v18 - 4;
    v24 = *v18;
    gray_render_line(a3, (*v18 + a3[16] + 2 * *v26) / 4, (v28 + a3[17] + 2 * v27) / 4);
    --v17;
    gray_render_line(a3, v24, v28);
    if ( v17 < 0 )
      return 0;
    goto LABEL_17;
  }
  v39 = 4 * *a2;
  v40 = 4 * v5;
  gray_render_line(a3, (v39 + v3 + 8 * v7) / 4, (v40 + v4 + 8 * v6) / 4);
  gray_render_line(a3, v39, v40);
  return 0;
}


// ===== 70f838 gray_line_to =====
int __fastcall gray_line_to(_DWORD *a1, int *a2)
{
  gray_render_line(a2, 4 * *a1, 4 * a1[1]);
  return 0;
}


// ===== 70f85c gray_move_to =====
int __fastcall gray_move_to(int *a1, int *a2)
{
  int v4; // r6
  int v5; // r3
  int v6; // r7
  int v7; // r1
  int v8; // r2
  int v9; // r12

  gray_record_cell(a2);
  v4 = 4 * *a1;
  v5 = a2[2];
  v6 = 4 * a1[1];
  v7 = (char)(*a1 >> 6);
  if ( v7 >= a2[3] )
    v7 = a2[3];
  v8 = (char)(a1[1] >> 6);
  if ( v5 > v7 )
    v7 = v5 - 1;
  v9 = v8 - a2[4];
  a2[18] = v8 << 8;
  *a2 = v7 - v5;
  a2[1] = v9;
  a2[8] = 0;
  a2[9] = 0;
  a2[10] = 0;
  gray_set_cell(a2, v7, v8);
  a2[17] = v6;
  a2[16] = v4;
  return 0;
}


// ===== 70f8e0 FT_GlyphSlot_Own_Bitmap =====
int __fastcall FT_GlyphSlot_Own_Bitmap(int a1)
{
  int v2; // r12
  int v4; // r1
  int v5; // r2
  int v6; // r3
  int v7; // r1
  int v8[6]; // [sp+0h] [bp-18h] BYREF

  if ( !a1 || *(_DWORD *)(a1 + 72) != 1651078259 || (*(_DWORD *)(*(_DWORD *)(a1 + 156) + 4) & 1) != 0 )
    return 0;
  FT_Bitmap_New((int)v8);
  v2 = FT_Bitmap_Copy(*(int **)a1, (int *)(a1 + 76), v8);
  if ( !v2 )
  {
    v4 = v8[1];
    v5 = v8[2];
    v6 = v8[3];
    *(_DWORD *)(a1 + 76) = v8[0];
    *(_DWORD *)(a1 + 80) = v4;
    *(_DWORD *)(a1 + 84) = v5;
    *(_DWORD *)(a1 + 88) = v6;
    v7 = v8[5];
    *(_DWORD *)(a1 + 92) = v8[4];
    *(_DWORD *)(a1 + 96) = v7;
    *(_DWORD *)(*(_DWORD *)(a1 + 156) + 4) |= 1u;
  }
  return v2;
}


// ===== 70f970 FT_GlyphSlot_Embolden =====
int __fastcall FT_GlyphSlot_Embolden(int result)
{
  int v1; // r3
  bool v2; // zf
  int v3; // r4
  int *v4; // r8
  int v5; // r0
  int v6; // r2
  int v7; // r5
  int v8; // r3
  int v9; // r1
  int v10; // r8
  int v11; // r7
  int v12; // r1
  int v13; // r6
  int v14; // r12
  bool v15; // zf
  int v16; // r8
  int v17; // r7
  int v18; // r6
  int v19; // r11
  int v20; // r10
  int v21; // r5
  unsigned int v22; // r6

  v1 = *(_DWORD *)(result + 72);
  v2 = v1 == 1651078259;
  if ( v1 != 1651078259 )
    v2 = v1 == 1869968492;
  v3 = result;
  v4 = *(int **)result;
  if ( v2 )
  {
    v5 = FT_MulFix(
           *(unsigned __int16 *)(*(_DWORD *)(result + 4) + 68),
           *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(result + 4) + 88) + 20));
    v6 = *(_DWORD *)(v3 + 72);
    v7 = v5 / 24;
    if ( v6 == 1869968492 )
    {
      v7 *= 2;
      FT_Outline_Embolden((__int16 *)(v3 + 108), v5 / 24);
      v8 = v7;
      v6 = *(_DWORD *)(v3 + 72);
    }
    else if ( v6 == 1651078259 )
    {
      v22 = v7 & 0xFFFFFFC0;
      if ( (v7 & 0xFFFFFFC0) != 0 )
        v7 &= 0xFFFFFFC0;
      else
        v7 = 64;
      result = FT_GlyphSlot_Own_Bitmap(v3);
      if ( result )
        return result;
      result = FT_Bitmap_Embolden(v4, v3 + 76, v7, v22);
      if ( result )
        return result;
      v6 = *(_DWORD *)(v3 + 72);
      v8 = v22;
    }
    else
    {
      v8 = v5 / 24;
    }
    v9 = *(_DWORD *)(v3 + 64);
    v10 = *(_DWORD *)(v3 + 24);
    v11 = *(_DWORD *)(v3 + 28);
    if ( v9 )
      *(_DWORD *)(v3 + 64) = v7 + v9;
    v12 = *(_DWORD *)(v3 + 68);
    v13 = *(_DWORD *)(v3 + 36);
    v14 = *(_DWORD *)(v3 + 40);
    if ( v12 )
      *(_DWORD *)(v3 + 68) = v8 + v12;
    v15 = v6 == 1651078259;
    if ( v6 == 1651078259 )
      v6 = *(_DWORD *)(v3 + 104);
    v16 = v10 + v7;
    v17 = v11 + v8;
    v18 = v13 + v8;
    result = *(_DWORD *)(v3 + 48) + v8;
    v19 = *(_DWORD *)(v3 + 52) + v8;
    v20 = *(_DWORD *)(v3 + 44) - v7 / 2;
    v21 = v14 + v7;
    if ( v15 )
      v8 = v6 + (v8 >> 6);
    *(_DWORD *)(v3 + 24) = v16;
    *(_DWORD *)(v3 + 28) = v17;
    *(_DWORD *)(v3 + 36) = v18;
    *(_DWORD *)(v3 + 40) = v21;
    *(_DWORD *)(v3 + 44) = v20;
    *(_DWORD *)(v3 + 48) = result;
    *(_DWORD *)(v3 + 52) = v19;
    if ( v15 )
      *(_DWORD *)(v3 + 104) = v8;
  }
  return result;
}


// ===== 70fad4 FT_GlyphSlot_Oblique =====
int *__fastcall FT_GlyphSlot_Oblique(int *result)
{
  int v1[5]; // [sp+0h] [bp-14h] BYREF

  if ( result[18] == 1869968492 )
  {
    v1[2] = 0;
    v1[1] = 24576;
    v1[3] = 0x10000;
    v1[0] = 0x10000;
    return FT_Outline_Transform(result + 27, v1);
  }
  return result;
}


// ===== 70fb24 pcf_cmap_init =====
int __fastcall pcf_cmap_init(int *a1)
{
  int v1; // r2

  v1 = *a1;
  a1[4] = *(_DWORD *)(v1 + 296);
  a1[5] = *(_DWORD *)(v1 + 300);
  return 0;
}


// ===== 70fb44 pcf_cmap_done =====
int __fastcall pcf_cmap_done(int result)
{
  *(_DWORD *)(result + 16) = 0;
  *(_DWORD *)(result + 20) = 0;
  return result;
}


// ===== 70fb54 pcf_cmap_char_index =====
int __fastcall pcf_cmap_char_index(int a1, unsigned int a2)
{
  unsigned int v2; // r5
  int v3; // r12
  unsigned int i; // r0
  unsigned int v5; // r3
  unsigned int v6; // r2
  int v7; // r4
  bool v8; // cf
  unsigned int v9; // r2

  v2 = *(_DWORD *)(a1 + 16);
  v3 = *(_DWORD *)(a1 + 20);
  for ( i = 0; ; i = v5 + 1 )
  {
    if ( i >= v2 )
      return 0;
    v5 = (v2 + i) >> 1;
    v6 = *(_DWORD *)(v3 + 8 * v5);
    v7 = v3 + 8 * v5;
    if ( a2 == v6 )
      break;
    if ( a2 < v6 )
    {
      do
      {
        v8 = i >= v5;
        v2 = v5;
        v5 = (v5 + i) >> 1;
        if ( v8 )
          return 0;
        v9 = *(_DWORD *)(v3 + 8 * v5);
        v7 = v3 + 8 * v5;
        if ( a2 == v9 )
          return *(unsigned __int16 *)(v7 + 4) + 1;
      }
      while ( v9 > a2 );
    }
  }
  return *(unsigned __int16 *)(v7 + 4) + 1;
}


// ===== 70fbd4 pcf_cmap_char_next =====
int __fastcall pcf_cmap_char_next(int a1, unsigned int *a2, int a3, unsigned int a4)
{
  unsigned int v4; // r7
  int result; // r0
  unsigned int v6; // r4
  unsigned int v7; // r6
  unsigned int i; // r2
  unsigned int v9; // r12
  unsigned int v10; // r5
  bool v11; // cf
  unsigned int v12; // r12

  v4 = *(_DWORD *)(a1 + 16);
  result = *(_DWORD *)(a1 + 20);
  v6 = *a2 + 1;
  v7 = v4;
  for ( i = 0; i < v7; i = a4 + 1 )
  {
    a4 = (v7 + i) >> 1;
    v9 = *(_DWORD *)(result + 8 * a4);
    v10 = result + 8 * a4;
    v11 = v6 >= v9;
    if ( v6 == v9 )
    {
LABEL_7:
      result = *(unsigned __int16 *)(v10 + 4) + 1;
      goto LABEL_17;
    }
    while ( !v11 )
    {
      v11 = i >= a4;
      v7 = a4;
      a4 = (a4 + i) >> 1;
      if ( v11 )
        goto LABEL_9;
      v12 = *(_DWORD *)(result + 8 * a4);
      v10 = result + 8 * a4;
      v11 = v6 >= v12;
      if ( v6 == v12 )
        goto LABEL_7;
    }
  }
LABEL_9:
  if ( v4 <= i )
    result = 0;
  else
    a4 = *(unsigned __int16 *)(result + 8 * i + 4);
  if ( v4 <= i )
    v6 = result;
  else
    v6 = *(_DWORD *)(result + 8 * i);
  if ( v4 > i )
    result = a4 + 1;
LABEL_17:
  *a2 = v6;
  return result;
}


// ===== 70fc74 pcf_get_charset_id =====
int __fastcall pcf_get_charset_id(int a1, _DWORD *a2, _DWORD *a3)
{
  int v3; // r12

  v3 = *(_DWORD *)(a1 + 176);
  *a2 = v3;
  *a3 = *(_DWORD *)(a1 + 180);
  return 0;
}


// ===== 70fc90 PCF_Size_Select =====
int __fastcall PCF_Size_Select(int *a1, int a2)
{
  int v2; // r5

  v2 = *a1;
  FT_Select_Metrics(*a1, a2);
  a1[6] = *(_DWORD *)(v2 + 204) << 6;
  a1[7] = -64 * *(_DWORD *)(v2 + 208);
  a1[9] = *(__int16 *)(v2 + 236) << 6;
  return 0;
}


// ===== 70fcd4 PCF_Size_Request =====
int __fastcall PCF_Size_Request(int *a1, int *a2)
{
  int v2; // r2
  int v3; // r12
  _DWORD *v4; // r3
  int v5; // r2
  int v6; // r1

  v2 = a2[4];
  v3 = a2[2];
  v4 = (_DWORD *)*a1;
  if ( v2 )
    v3 = (v3 * v2 + 36) / 72;
  v5 = *a2;
  v6 = (v3 + 32) >> 6;
  if ( v5 )
  {
    if ( v5 != 1 )
      return 7;
    if ( v4[52] + v4[51] != v6 )
      return 23;
  }
  else if ( v6 != (*(_DWORD *)(v4[8] + 12) + 32) >> 6 )
  {
    return 23;
  }
  return PCF_Size_Select(a1, 0);
}


// ===== 70fd64 PCF_Glyph_Load =====
int __fastcall PCF_Glyph_Load(int a1, int a2, int a3)
{
  _DWORD *v3; // r6
  unsigned int v5; // r8
  _DWORD *v6; // r10
  int v7; // r11
  int v8; // r2
  bool v9; // zf
  __int16 *v10; // r8
  int v11; // r2
  int v12; // r1
  int v13; // r9
  int v14; // r9
  unsigned int v15; // r3
  int v16; // r2
  int v17; // r0
  int i; // r3
  unsigned int v19; // r1
  unsigned int v20; // r2
  int v21; // r2
  int v22; // r3
  int v23; // r1
  int v24; // r3
  int v25; // r2
  char *v27; // r3
  char *v28; // r2
  unsigned int v29; // r10
  char v30; // r0
  char v31; // r12
  char v32; // r1
  _BYTE *v33; // r3
  _BYTE *v34; // r2
  unsigned int v35; // r12
  char v36; // r1

  v3 = *(_DWORD **)a2;
  v5 = a3;
  v6 = *(_DWORD **)(*(_DWORD *)a2 + 104);
  if ( dword_A355CC > 3 )
    FT_Message("load_glyph %d ---", a3);
  if ( v5 < v3[4] )
  {
    v8 = v3[73];
    v9 = v5 == 0;
    if ( v5 )
      --v5;
    else
      a2 = 0;
    if ( !v9 )
      a2 = 16 * v5;
    v10 = (__int16 *)(v8 + a2);
    *(_DWORD *)(a1 + 76) = *(__int16 *)(v8 + a2 + 8) + *(__int16 *)(v8 + a2 + 6);
    v11 = *(__int16 *)(v8 + a2);
    v12 = v10[1];
    *(_WORD *)(a1 + 92) = 1;
    *(_BYTE *)(a1 + 94) = 1;
    *(_DWORD *)(a1 + 80) = v12 - v11;
    if ( dword_A355CC > 5 )
      FT_Message(
        "BIT_ORDER %d ; BYTE_ORDER %d ; GLYPH_PAD %d\n",
        (v3[77] >> 3) & 1,
        (v3[77] >> 2) & 1,
        1 << (v3[77] & 3));
    switch ( ~(-1 << (v3[77] & 3)) )
    {
      case 0:
        v13 = (*(_DWORD *)(a1 + 80) + 7) >> 3;
        *(_DWORD *)(a1 + 84) = v13;
        goto LABEL_14;
      case 1:
        v13 = 2 * ((*(_DWORD *)(a1 + 80) + 15) >> 4);
        *(_DWORD *)(a1 + 84) = v13;
        goto LABEL_14;
      case 3:
        v13 = 4 * ((*(_DWORD *)(a1 + 80) + 31) >> 5);
        *(_DWORD *)(a1 + 84) = v13;
        goto LABEL_14;
      case 7:
        v13 = 8 * ((*(_DWORD *)(a1 + 80) + 63) >> 6);
        *(_DWORD *)(a1 + 84) = v13;
LABEL_14:
        v14 = *(_DWORD *)(a1 + 76) * v13;
        v7 = ft_glyphslot_alloc_bitmap((_DWORD *)a1, v14);
        if ( !v7 )
        {
          v7 = FT_Stream_Seek(v6, *((_DWORD *)v10 + 3));
          if ( !v7 )
          {
            v7 = FT_Stream_Read(v6, *(void **)(a1 + 88), v14);
            if ( !v7 )
            {
              v15 = v3[77];
              v16 = v15 & 8;
              if ( (v15 & 8) == 0 )
              {
                v17 = *(_DWORD *)(a1 + 88);
                if ( v14 > 0 )
                {
                  for ( i = 0; i != v14; ++i )
                  {
                    v19 = (2 * *(_BYTE *)(v17 + i)) & 0xAA | (*(_BYTE *)(v17 + i) >> 1) & 0x55;
                    v20 = (4 * (_BYTE)v19) & 0xCC | (v19 >> 2) & 0x33;
                    *(_BYTE *)(v17 + i) = (16 * v20) | (v20 >> 4);
                  }
                  v15 = v3[77];
                  v16 = v15 & 8;
                }
              }
              if ( v16 )
                v21 = (v15 & 4) == 0;
              else
                v21 = (v15 >> 2) & 1;
              if ( v21 )
              {
                v22 = 1 << ((v15 >> 4) & 3);
                if ( v22 == 2 )
                {
                  v33 = *(_BYTE **)(a1 + 88);
                  if ( v14 > 1 )
                  {
                    v34 = v33 + 2;
                    v35 = (unsigned int)&v33[((v14 - 2) & 0xFFFFFFFE) + 2];
                    while ( 1 )
                    {
                      v36 = v33[1];
                      v33[1] = *v33;
                      *v33 = v36;
                      v33 = v34;
                      if ( v34 == (_BYTE *)v35 )
                        break;
                      v34 += 2;
                    }
                  }
                }
                else if ( v22 == 4 )
                {
                  v27 = *(char **)(a1 + 88);
                  if ( v14 > 3 )
                  {
                    v28 = v27 + 4;
                    v29 = (unsigned int)&v27[((v14 - 4) & 0xFFFFFFFC) + 4];
                    while ( 1 )
                    {
                      v30 = *v27;
                      v31 = v27[3];
                      v32 = v27[2];
                      v27[2] = v27[1];
                      *v27 = v31;
                      v27[3] = v30;
                      v27[1] = v32;
                      v27 = v28;
                      if ( v28 == (char *)v29 )
                        break;
                      v28 += 4;
                    }
                  }
                }
              }
              *(_DWORD *)(a1 + 72) = 1651078259;
              v23 = *(_DWORD *)(a1 + 76);
              *(_DWORD *)(a1 + 100) = *v10;
              *(_DWORD *)(a1 + 104) = v10[3];
              *(_DWORD *)(a1 + 40) = v10[2] << 6;
              *(_DWORD *)(a1 + 32) = *v10 << 6;
              *(_DWORD *)(a1 + 36) = v10[3] << 6;
              v24 = *v10;
              v25 = v10[1];
              *(_DWORD *)(a1 + 28) = v23 << 6;
              *(_DWORD *)(a1 + 24) = (v25 - v24) << 6;
              ft_synthesize_vertical_metrics((_DWORD *)(a1 + 24), (v3[52] + v3[51]) << 6);
              if ( dword_A355CC > 3 )
                FT_Message(" --- ok\n");
            }
          }
        }
        return v7;
      default:
        return 3;
    }
  }
  return 6;
}


// ===== 710100 PCF_Face_Done =====
int __fastcall PCF_Face_Done(_DWORD *a1)
{
  int v1; // r8
  int v3; // r4
  int v4; // r5
  int v5; // r3
  int v6; // r7
  int v7; // r10
  int v8; // r1
  int v9; // r1
  int v10; // r1
  int v11; // r1
  int v12; // r1
  int result; // r0

  v1 = a1[25];
  v3 = 0;
  ft_mem_free(v1, a1[75]);
  a1[75] = 0;
  ft_mem_free(v1, a1[73]);
  v4 = a1[71];
  a1[73] = 0;
  if ( v4 )
  {
    v5 = a1[70];
    if ( v5 > 0 )
    {
      v6 = 0;
      while ( 1 )
      {
        v7 = v4 + v3;
        if ( !(v4 + v3) )
          goto LABEL_5;
        ft_mem_free(v1, *(_DWORD *)(v4 + v3));
        *(_DWORD *)(v4 + v3) = 0;
        if ( *(_BYTE *)(v7 + 4) )
        {
          ft_mem_free(v1, *(_DWORD *)(v7 + 8));
          *(_DWORD *)(v7 + 8) = 0;
          v5 = a1[70];
          ++v6;
          v4 = a1[71];
          v3 += 12;
          if ( v5 <= v6 )
            break;
        }
        else
        {
          v4 = a1[71];
          v5 = a1[70];
LABEL_5:
          ++v6;
          v3 += 12;
          if ( v5 <= v6 )
            break;
        }
      }
    }
  }
  ft_mem_free(v1, v4);
  v8 = a1[48];
  a1[71] = 0;
  ft_mem_free(v1, v8);
  v9 = a1[5];
  a1[48] = 0;
  ft_mem_free(v1, v9);
  v10 = a1[6];
  a1[5] = 0;
  ft_mem_free(v1, v10);
  v11 = a1[8];
  a1[6] = 0;
  ft_mem_free(v1, v11);
  v12 = a1[44];
  a1[8] = 0;
  ft_mem_free(v1, v12);
  a1[44] = 0;
  ft_mem_free(v1, a1[45]);
  a1[45] = 0;
  if ( dword_A355CC <= 3 )
  {
    result = a1[26];
    if ( (_DWORD *)result != a1 + 33 )
      return result;
LABEL_13:
    result = FT_Stream_Close(result);
    a1[26] = a1[43];
    return result;
  }
  FT_Message("PCF_Face_Done: done face\n");
  result = a1[26];
  if ( (_DWORD *)result == a1 + 33 )
    goto LABEL_13;
  return result;
}


// ===== 710294 pcf_find_property =====
int __fastcall pcf_find_property(int a1, char *a2)
{
  int v2; // r6
  int v4; // r7
  int v5; // r4
  int v6; // r5
  _BOOL4 v7; // r0
  int v8; // r3

  v2 = *(_DWORD *)(a1 + 280);
  v4 = *(_DWORD *)(a1 + 284);
  if ( v2 <= 0 )
    return 0;
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = LC_API_STRCMP_0(*(const char **)(v4 + v5), a2) == 0;
    v8 = ++v6 < v2 && !v7;
    v5 += 12;
  }
  while ( v8 );
  if ( v7 )
    return v4 + 12 * (v6 - 1);
  else
    return 0;
}


// ===== 710308 pcf_get_bdf_property =====
int __fastcall pcf_get_bdf_property(int a1, char *a2, int *a3)
{
  int property; // r0
  int v5; // r3
  int result; // r0
  int v7; // r2
  int v8; // r3

  property = pcf_find_property(a1, a2);
  v5 = property;
  if ( !property )
    return 6;
  result = *(unsigned __int8 *)(property + 4);
  if ( *(_BYTE *)(v5 + 4) )
    v7 = 1;
  else
    v7 = 2;
  *a3 = v7;
  v8 = *(_DWORD *)(v5 + 8);
  if ( result )
    result = 0;
  a3[1] = v8;
  return result;
}


// ===== 710354 pcf_get_metric =====
int __fastcall pcf_get_metric(int *a1, int a2, _WORD *a3)
{
  void *v4; // r1
  int result; // r0
  __int16 v6; // r12
  __int16 v7; // r1
  __int16 v8; // r2
  __int16 v9; // r3
  _BYTE v10[12]; // [sp+0h] [bp-Ch] BYREF

  if ( (a2 & 0xFFFFFF00) != 0 )
  {
    result = FT_Stream_ReadFields(a1, (int)&pcf_compressed_metric_header, (int)v10);
    if ( !result )
    {
      v6 = v10[1] - 128;
      v7 = v10[2] - 128;
      v8 = v10[3] - 128;
      v9 = v10[4] - 128;
      *a3 = v10[0] - 128;
      a3[1] = v6;
      a3[2] = v7;
      a3[3] = v8;
      a3[4] = v9;
      a3[5] = 0;
    }
  }
  else
  {
    if ( (a2 & 4) != 0 )
      v4 = &pcf_metric_msb_header;
    else
      v4 = &pcf_metric_header;
    return FT_Stream_ReadFields(a1, (int)v4, (int)a3);
  }
  return result;
}


// ===== 71040c pcf_seek_to_table_type =====
int __fastcall pcf_seek_to_table_type(_DWORD *a1, _DWORD *a2, int a3, int a4, _DWORD *a5, _DWORD *a6)
{
  _DWORD *v6; // r4
  int v7; // r1
  int v8; // t1
  int result; // r0
  unsigned int v10; // r3
  unsigned int v11; // r1

  v6 = a2;
  if ( a3 <= 0 )
  {
LABEL_7:
    *a6 = 0;
    return 3;
  }
  if ( *a2 != a4 )
  {
    v7 = 0;
    while ( ++v7 != a3 )
    {
      v8 = v6[4];
      v6 += 4;
      if ( v8 == a4 )
        goto LABEL_8;
    }
    goto LABEL_7;
  }
LABEL_8:
  v10 = a1[2];
  v11 = v6[3];
  if ( v10 > v11 || (result = FT_Stream_Skip(a1, v11 - v10)) != 0 )
  {
    *a6 = 0;
    return 83;
  }
  else
  {
    *a6 = v6[2];
    *a5 = v6[1];
  }
  return result;
}


// ===== 7104a4 pcf_get_accel =====
int __fastcall pcf_get_accel(int *a1, int a2, int a3)
{
  int Fields; // r12
  int v7; // r0
  bool v8; // zf
  int *v9; // r0
  void *v10; // r1
  _DWORD *v11; // r6
  int v12; // r1
  int v13; // r2
  int v14; // r3
  _DWORD *v15; // r4
  int v16; // r1
  int v17; // r2
  int v18; // r3
  int v19; // [sp+Ch] [bp-10h] BYREF
  int v20; // [sp+10h] [bp-Ch] BYREF
  int v21; // [sp+14h] [bp-8h] BYREF

  Fields = pcf_seek_to_table_type(a1, *(_DWORD **)(a2 + 192), *(_DWORD *)(a2 + 188), a3, &v21, &v20);
  v19 = Fields;
  if ( !Fields )
  {
    v7 = FT_Stream_ReadLongLE(a1, &v19);
    Fields = v19;
    if ( !v19 )
    {
      v8 = (v7 & 0xFFFFFF00) == 256;
      if ( (v7 & 0xFFFFFF00) != 0x100 )
        v8 = (v7 & 0xFFFFFF00) == 0;
      if ( v8 )
      {
        v21 = v7;
        if ( (v7 & 4) != 0 )
        {
          v9 = a1;
          v10 = &pcf_accel_msb_header;
        }
        else
        {
          v9 = a1;
          v10 = &pcf_accel_header;
        }
        Fields = FT_Stream_ReadFields(v9, (int)v10, a2 + 196);
        v19 = Fields;
        if ( !Fields )
        {
          Fields = pcf_get_metric(a1, (unsigned __int8)v21, (_WORD *)(a2 + 216));
          v19 = Fields;
          if ( !Fields )
          {
            v11 = (_DWORD *)(a2 + 232);
            Fields = pcf_get_metric(a1, (unsigned __int8)v21, (_WORD *)(a2 + 232));
            v19 = Fields;
            if ( !Fields )
            {
              if ( (v21 & 0xFFFFFF00) == 0x100 )
              {
                Fields = pcf_get_metric(a1, (unsigned __int8)v21, (_WORD *)(a2 + 248));
                v19 = Fields;
                if ( !Fields )
                  return pcf_get_metric(a1, (unsigned __int8)v21, (_WORD *)(a2 + 264));
              }
              else
              {
                v12 = *(_DWORD *)(a2 + 220);
                v13 = *(_DWORD *)(a2 + 224);
                v14 = *(_DWORD *)(a2 + 228);
                *(_DWORD *)(a2 + 248) = *(_DWORD *)(a2 + 216);
                *(_DWORD *)(a2 + 252) = v12;
                *(_DWORD *)(a2 + 256) = v13;
                *(_DWORD *)(a2 + 260) = v14;
                v15 = (_DWORD *)(a2 + 264);
                v16 = v11[1];
                v17 = v11[2];
                v18 = v11[3];
                *v15 = *v11;
                v15[1] = v16;
                v15[2] = v17;
                v15[3] = v18;
              }
            }
          }
        }
      }
    }
  }
  return Fields;
}


// ===== 710620 pcf_load_font =====
int __fastcall pcf_load_font(int *a1, int a2)
{
  int v2; // r4
  int *v3; // r6
  int v4; // r10
  int v5; // r3
  unsigned int v7; // r3
  int v8; // r0
  unsigned int v9; // r8
  int v10; // r9
  unsigned int v11; // r2
  int v12; // r8
  _DWORD *v13; // r1
  int v14; // r7
  void *v15; // r8
  int v16; // r11
  unsigned int v17; // r3
  int v18; // r2
  _DWORD *v19; // r1
  int v20; // r11
  int v21; // r0
  unsigned int v22; // r3
  bool v23; // zf
  int v24; // r0
  unsigned int v25; // r8
  __int16 *v26; // r7
  int v27; // r0
  unsigned int v28; // r11
  unsigned int v29; // r1
  int v30; // r6
  int v31; // r0
  int *v32; // r12
  unsigned int v33; // r5
  unsigned int v34; // r4
  int v35; // r10
  int v36; // r8
  int v37; // r0
  int v38; // r1
  int v39; // r2
  int v40; // r3
  unsigned int v41; // r3
  unsigned int v42; // r2
  unsigned int v43; // r3
  _DWORD *v44; // r8
  int v45; // r12
  const char *v46; // r11
  unsigned int i; // r9
  int j; // r3
  int v49; // r0
  int v50; // r8
  unsigned int v51; // r4
  int v52; // r2
  int *v53; // r0
  void *v54; // r1
  int v55; // r0
  unsigned int v56; // r1
  void *v57; // r1
  void *v58; // r0
  _DWORD *v59; // r1
  int v60; // r2
  int v61; // r7
  int v62; // r8
  int v63; // r0
  unsigned int v64; // r11
  int v65; // r7
  signed int k; // r4
  int v67; // r0
  int v68; // r3
  int m; // r7
  int v70; // r11
  int v71; // r3
  int v72; // r2
  _DWORD *v73; // r1
  int v74; // r2
  int v75; // r8
  int ShortLE; // r9
  int v77; // r11
  int v78; // r11
  int v79; // r7
  int v80; // r9
  int v81; // r8
  int v82; // r1
  int v83; // r0
  unsigned int v84; // r2
  int v85; // r1
  unsigned int v86; // r3
  unsigned int v87; // r1
  __int16 v88; // r12
  int v89; // r3
  int v90; // r5
  int property; // r0
  int v92; // r3
  bool v93; // zf
  int v94; // r0
  int v95; // r3
  bool v96; // zf
  int v97; // r0
  _BYTE *v98; // r2
  int v99; // r3
  bool v100; // zf
  int v101; // r0
  _BYTE *v102; // r2
  int v103; // r3
  bool v104; // zf
  int v105; // r6
  signed int v106; // r8
  const char *v107; // r0
  size_t v108; // r0
  char *v109; // r0
  unsigned int v110; // r9
  int v111; // r8
  int v112; // r3
  _DWORD *v113; // r6
  const void *v114; // r1
  signed int v115; // r5
  char *v116; // r4
  bool v117; // zf
  int n; // r2
  int v119; // r4
  int v120; // r0
  __int16 *v121; // r0
  int v122; // r1
  __int16 *v123; // r6
  int v124; // r0
  bool v125; // zf
  int v126; // r0
  int v127; // r1
  int v128; // r0
  int v129; // r0
  int v130; // r0
  int v131; // r0
  __int16 v132; // r8
  int v133; // r0
  int v134; // r3
  int v135; // r7
  bool v136; // zf
  int v137; // r6
  int v138; // r0
  bool v139; // zf
  int v140; // r3
  bool v141; // zf
  void *v142; // r0
  int v143; // r3
  void *v144; // r0
  int v145; // r3
  void *v146; // r0
  int v147; // [sp+14h] [bp-68h]
  int v148; // [sp+14h] [bp-68h]
  int v149; // [sp+18h] [bp-64h]
  int v150; // [sp+20h] [bp-5Ch]
  int v151; // [sp+24h] [bp-58h]
  unsigned int v152; // [sp+24h] [bp-58h]
  int *v153; // [sp+28h] [bp-54h]
  unsigned int v154; // [sp+2Ch] [bp-50h]
  int v155; // [sp+2Ch] [bp-50h]
  int v156; // [sp+2Ch] [bp-50h]
  int Short; // [sp+2Ch] [bp-50h]
  int v158; // [sp+30h] [bp-4Ch]
  unsigned int v159; // [sp+30h] [bp-4Ch]
  int v160; // [sp+30h] [bp-4Ch]
  int v161; // [sp+30h] [bp-4Ch]
  int v162; // [sp+34h] [bp-48h]
  int v163; // [sp+34h] [bp-48h]
  int v164; // [sp+34h] [bp-48h]
  int v165; // [sp+34h] [bp-48h]
  unsigned int v166; // [sp+38h] [bp-44h]
  const char *v167; // [sp+38h] [bp-44h]
  int v168; // [sp+38h] [bp-44h]
  int v169; // [sp+3Ch] [bp-40h]
  int v170; // [sp+40h] [bp-3Ch]
  _DWORD v171[4]; // [sp+48h] [bp-34h]
  const char *v172; // [sp+58h] [bp-24h]
  const char *v173; // [sp+5Ch] [bp-20h]
  const char *v174; // [sp+60h] [bp-1Ch]
  int v175; // [sp+64h] [bp-18h]
  unsigned int Fields; // [sp+68h] [bp-14h] BYREF
  unsigned int LongLE; // [sp+6Ch] [bp-10h] BYREF
  unsigned int v178; // [sp+70h] [bp-Ch] BYREF
  int accel; // [sp+74h] [bp-8h] BYREF

  v2 = a2;
  accel = 0;
  v3 = a1;
  v4 = *(_DWORD *)(a2 + 100);
  if ( FT_Stream_Seek(a1, 0) )
    return 3;
  Fields = FT_Stream_ReadFields(v3, (int)&pcf_toc_header, v2 + 184);
  if ( Fields )
    return 3;
  if ( *(_DWORD *)(v2 + 184) != 1885562369 )
    return 3;
  v7 = *(_DWORD *)(v2 + 188);
  if ( v7 > 0x7FFFFFF )
    return 3;
  if ( !v7 )
    return 3;
  v8 = ft_mem_realloc(v4, 16, 0, v7, 0, (int *)&Fields);
  v9 = Fields;
  v10 = v8;
  *(_DWORD *)(v2 + 192) = v8;
  if ( v9 )
    return 3;
  v11 = *(_DWORD *)(v2 + 188);
  if ( v11 )
  {
    do
    {
      ++v9;
      Fields = FT_Stream_ReadFields(v3, (int)&pcf_table_header, v10);
      if ( Fields )
      {
        ft_mem_free(v4, *(_DWORD *)(v2 + 192));
        v12 = Fields;
        *(_DWORD *)(v2 + 192) = 0;
        accel = v12;
        if ( v12 )
          return 3;
        v11 = *(_DWORD *)(v2 + 188);
        v13 = nullptr;
        goto LABEL_15;
      }
      v11 = *(_DWORD *)(v2 + 188);
      v10 += 16;
    }
    while ( v9 < v11 );
    v10 = *(_DWORD *)(v2 + 192);
    if ( v11 == 1 )
      goto LABEL_73;
  }
  v153 = v3;
  v28 = 0;
  v29 = v11 - 1;
  v150 = v4;
  v30 = v2;
  do
  {
    v31 = 0;
    v32 = (int *)v10;
    v33 = 0;
    while ( v33 < v29 - v28 )
    {
      v34 = v32[3];
      ++v33;
      if ( v34 > v32[7] )
      {
        v35 = *v32;
        v36 = v32[1];
        v37 = v32[4];
        v38 = v32[5];
        v39 = v32[6];
        v40 = v32[7];
        v32[6] = v32[2];
        *v32 = v37;
        v32[1] = v38;
        v32[2] = v39;
        v32[3] = v40;
        v32[5] = v36;
        v32[4] = v35;
        v32[7] = v34;
        v31 = 1;
      }
      else
      {
        v34 = v32[7];
      }
      v41 = v32[2];
      v42 = v34 - v41;
      if ( v41 > v34 )
        return 3;
      v43 = v32[3];
      v32 += 4;
      if ( v43 > v42 )
        return 3;
      v11 = *(_DWORD *)(v30 + 188);
      v29 = v11 - 1;
    }
    if ( !v31 )
      break;
    ++v28;
  }
  while ( v28 < v29 );
  v2 = v30;
  v4 = v150;
  v3 = v153;
LABEL_73:
  if ( dword_A355D0 > 3 )
  {
    FT_Message("pcf_read_TOC:\n");
    if ( dword_A355D0 > 3 )
      FT_Message("  number of tables: %ld\n", *(_DWORD *)(v2 + 188));
    v11 = *(_DWORD *)(v2 + 188);
  }
  v13 = *(_DWORD **)(v2 + 192);
  if ( v11 )
  {
    v44 = *(_DWORD **)(v2 + 192);
    v45 = v4;
    v46 = "?";
    for ( i = 0; i < v11; ++i )
    {
      for ( j = 0; j != 9; ++j )
      {
        if ( *v44 == 1 << j )
          v46 = tableNames[j];
      }
      if ( dword_A355D0 > 3 )
      {
        v149 = v45;
        FT_Message(
          "  %d: type=%s, format=0x%X, size=%ld (0x%lX), offset=%ld (0x%lX)\n",
          i,
          v46,
          v44[1],
          v44[2],
          v44[2],
          v44[3],
          v44[3]);
        v11 = *(_DWORD *)(v2 + 188);
        v45 = v149;
      }
      v44 += 4;
    }
    v13 = *(_DWORD **)(v2 + 192);
    v4 = v45;
  }
  accel = 0;
LABEL_15:
  v14 = *(_DWORD *)(v2 + 100);
  v178 = pcf_seek_to_table_type(v3, v13, v11, 1, &Fields, &LongLE);
  if ( v178 )
    goto LABEL_16;
  v27 = FT_Stream_ReadLongLE(v3, &v178);
  Fields = v27;
  if ( v178 )
    goto LABEL_16;
  if ( dword_A355D0 > 3 )
  {
    FT_Message("pcf_get_properties:\n");
    if ( dword_A355D0 > 3 )
      FT_Message("  format = %ld\n", Fields);
    v27 = Fields;
  }
  if ( (v27 & 0xFFFFFF00) != 0
    || ((v27 & 4) == 0 ? (v152 = FT_Stream_ReadLongLE(v3, &v178)) : (v152 = FT_Stream_ReadLong(v3, &v178)), v178) )
  {
LABEL_16:
    v15 = nullptr;
    v16 = 0;
  }
  else
  {
    if ( dword_A355D0 > 3 )
      FT_Message("  nprop = %d\n", v152);
    if ( v152 <= LongLE / 9 )
    {
      *(_DWORD *)(v2 + 280) = v152;
      v49 = ft_mem_realloc(v14, 12, 0, v152, 0, (int *)&v178);
      v155 = v49;
      v16 = v49;
      if ( v178 )
        goto LABEL_93;
      if ( v152 )
      {
        v169 = v2;
        v50 = v49;
        v158 = v49;
        v51 = v178;
        do
        {
          v52 = v50;
          v53 = v3;
          v54 = &pcf_property_msb_header;
          if ( (Fields & 4) == 0 )
          {
            v52 = v50;
            v53 = v3;
            v54 = &pcf_property_header;
          }
          ++v51;
          v178 = FT_Stream_ReadFields(v53, (int)v54, v52);
          if ( v178 )
          {
            v2 = v169;
            v16 = v158;
            goto LABEL_93;
          }
          v50 += 12;
        }
        while ( v51 != v152 );
        v2 = v169;
        v16 = v158;
        if ( (v152 & 3) != 0 )
          FT_Stream_Skip(v3, 4 - (v152 & 3));
      }
      v159 = (Fields & 4) != 0 ? FT_Stream_ReadLong(v3, &v178) : FT_Stream_ReadLongLE(v3, &v178);
      if ( v178 )
      {
LABEL_93:
        v15 = nullptr;
      }
      else
      {
        if ( dword_A355D0 > 3 )
          FT_Message("  string_size = %ld\n", v159);
        if ( v159 <= LongLE - 9 * v152 )
        {
          v15 = (void *)ft_mem_realloc(v14, 1, 0, v159, 0, (int *)&v178);
          if ( !v178 )
          {
            v178 = FT_Stream_Read(v3, v15, v159);
            if ( !v178 )
            {
              v55 = ft_mem_realloc(v14, 12, 0, v152, 0, (int *)&v178);
              if ( !v178 )
              {
                *(_DWORD *)(v2 + 284) = v55;
                v166 = 0;
                v162 = v55;
                while ( v152 > v166 )
                {
                  if ( (v159 < *(_DWORD *)v155) | (*(_DWORD *)v155 >> 31) )
                  {
LABEL_312:
                    v178 = 9;
                    goto LABEL_17;
                  }
                  v58 = ft_mem_strdup(v14, (const char *)v15 + *(_DWORD *)v155, (int *)&v178);
                  *(_DWORD *)v162 = v58;
                  if ( v178 )
                    goto LABEL_17;
                  if ( dword_A355D0 > 3 )
                    FT_Message("  %s:", v58);
                  *(_BYTE *)(v162 + 4) = *(_BYTE *)(v155 + 4);
                  if ( *(_BYTE *)(v155 + 4) )
                  {
                    v56 = *(_DWORD *)(v155 + 8);
                    if ( (v159 < v56) | (v56 >> 31) )
                      goto LABEL_312;
                    v57 = ft_mem_strdup(v14, (const char *)v15 + v56, (int *)&v178);
                    *(_DWORD *)(v162 + 8) = v57;
                    if ( v178 )
                      goto LABEL_17;
                    if ( dword_A355D0 > 3 )
                      FT_Message(" `%s'\n", v57);
                  }
                  else
                  {
                    *(_DWORD *)(v162 + 8) = *(_DWORD *)(v155 + 8);
                    if ( dword_A355D0 > 3 )
                      FT_Message(" %d\n");
                  }
                  ++v166;
                  v155 += 12;
                  v162 += 12;
                }
                v178 = 0;
              }
            }
          }
        }
        else
        {
          v178 = 8;
          v15 = nullptr;
        }
      }
    }
    else
    {
      v15 = nullptr;
      v178 = 8;
      v16 = 0;
    }
  }
LABEL_17:
  ft_mem_free(v14, v16);
  ft_mem_free(v14, (int)v15);
  v17 = v178;
  accel = v178;
  if ( v178 )
    return 3;
  v18 = *(_DWORD *)(v2 + 188);
  v19 = *(_DWORD **)(v2 + 192);
  if ( v18 > 0 )
  {
    if ( *v19 == 256 )
    {
LABEL_55:
      v151 = 1;
      goto LABEL_25;
    }
    while ( v18 != ++v17 )
    {
      if ( v19[4 * v17] == 256 )
        goto LABEL_55;
    }
  }
  accel = pcf_get_accel(v3, v2, 2);
  if ( accel )
    return 3;
  v151 = 0;
  v18 = *(_DWORD *)(v2 + 188);
  v19 = *(_DWORD **)(v2 + 192);
LABEL_25:
  v178 = 0;
  v20 = *(_DWORD *)(v2 + 100);
  v178 = pcf_seek_to_table_type(v3, v19, v18, 4, &LongLE, &Fields);
  if ( v178 )
    return 3;
  v21 = FT_Stream_ReadLongLE(v3, &v178);
  LongLE = v21;
  if ( v178 )
    return 3;
  v22 = v21 & 0xFFFFFF00;
  v23 = (v21 & 0xFFFFFF00) == 256;
  if ( (v21 & 0xFFFFFF00) != 0x100 )
    v23 = v22 == 0;
  if ( !v23 )
    return 3;
  if ( v22 )
    v154 = (v21 & 4) != 0
         ? (unsigned __int16)FT_Stream_ReadShort(v3, &v178)
         : (unsigned __int16)FT_Stream_ReadShortLE(v3, &v178);
  else
    v154 = (v21 & 4) != 0 ? FT_Stream_ReadLong(v3, &v178) : FT_Stream_ReadLongLE(v3, &v178);
  if ( v178 )
    return 3;
  *(_DWORD *)(v2 + 288) = v154;
  if ( dword_A355D0 > 3 )
  {
    FT_Message("pcf_get_metrics:\n");
    if ( dword_A355D0 > 3 )
      FT_Message("  number of metrics: %d\n", v154);
  }
  if ( (LongLE & 0xFFFFFF00) != 0 )
  {
    if ( v154 > Fields / 5 )
      return 3;
  }
  else if ( v154 > Fields / 0xC )
  {
    return 3;
  }
  v24 = ft_mem_realloc(v20, 16, 0, v154, 0, (int *)&v178);
  v25 = v178;
  *(_DWORD *)(v2 + 292) = v24;
  if ( v25 )
    return 3;
  if ( v154 )
  {
    v26 = (__int16 *)v24;
    while ( 1 )
    {
      pcf_get_metric(v3, LongLE, v26);
      *((_DWORD *)v26 + 3) = 0;
      if ( dword_A355D0 > 4 )
        FT_Message(
          "  idx %d: width=%d, lsb=%d, rsb=%d, ascent=%d, descent=%d, swidth=%d\n",
          v25,
          v26[2],
          *v26,
          v26[1],
          v26[3],
          v26[4],
          v26[5]);
      ++v25;
      v26 += 8;
      if ( v178 )
        break;
      if ( v25 == v154 )
        goto LABEL_128;
    }
    ft_mem_free(v20, *(_DWORD *)(v2 + 292));
    v68 = v178;
    *(_DWORD *)(v2 + 292) = 0;
    accel = v68;
    if ( v68 )
      return 3;
  }
  else
  {
LABEL_128:
    accel = 0;
  }
  v59 = *(_DWORD **)(v2 + 192);
  v60 = *(_DWORD *)(v2 + 188);
  Fields = 0;
  v61 = *(_DWORD *)(v2 + 100);
  Fields = pcf_seek_to_table_type(v3, v59, v60, 8, &LongLE, &v178);
  if ( Fields )
    return 3;
  Fields = FT_Stream_EnterFrame((int)v3, 8u);
  if ( Fields )
    return 3;
  LongLE = FT_Stream_GetLongLE((int)v3);
  v62 = (LongLE & 4) != 0 ? FT_Stream_GetLong((int)v3) : FT_Stream_GetLongLE((int)v3);
  FT_Stream_ExitFrame(v3);
  if ( (LongLE & 0xFFFFFF00) != 0 )
    return 3;
  if ( dword_A355D0 > 3 )
  {
    FT_Message("pcf_get_bitmaps:\n");
    if ( dword_A355D0 > 3 )
      FT_Message("  number of bitmaps: %d\n", v62);
  }
  if ( v62 != *(_DWORD *)(v2 + 288) )
    return 3;
  v63 = ft_mem_realloc(v61, 4, 0, v62, 0, (int *)&Fields);
  v64 = Fields;
  v156 = v63;
  if ( Fields )
    return 3;
  if ( v62 <= 0 )
    goto LABEL_152;
  v163 = v61;
  v65 = v2;
  for ( k = Fields; k < v62; ++k )
  {
    if ( (LongLE & 4) != 0 )
      v67 = FT_Stream_ReadLong(v3, &Fields);
    else
      v67 = FT_Stream_ReadLongLE(v3, &Fields);
    *(_DWORD *)(v156 + v64) = v67;
    if ( dword_A355D0 > 4 )
      FT_Message("  bitmap %d: offset %ld (0x%lX)\n", k, *(_DWORD *)(v156 + v64), *(_DWORD *)(v156 + v64));
    v64 += 4;
  }
  v2 = v65;
  v61 = v163;
  if ( !Fields )
  {
LABEL_152:
    v164 = v61;
    v160 = 0;
    for ( m = 0; m != 4; ++m )
    {
      if ( (LongLE & 4) != 0 )
        (&v172)[m] = (const char *)FT_Stream_ReadLong(v3, &Fields);
      else
        (&v172)[m] = (const char *)FT_Stream_ReadLongLE(v3, &Fields);
      if ( Fields )
      {
        v61 = v164;
        goto LABEL_168;
      }
      v167 = (&v172)[LongLE & 3];
      if ( dword_A355D0 > 3 )
        FT_Message("  padding %d implies a size of %ld\n", v160, (&v172)[m]);
      ++v160;
    }
    v61 = v164;
    if ( dword_A355D0 > 3 )
    {
      FT_Message("  %d bitmaps, padding index %ld\n", v62, LongLE & 3);
      if ( dword_A355D0 > 3 )
        FT_Message("  bitmap size = %d\n", v167);
    }
    if ( v62 > 0 )
    {
      v70 = 0;
      v71 = v164;
      do
      {
        v72 = *(_DWORD *)(v156 + 4 * v70);
        if ( v72 >= 0 && v72 <= v178 )
        {
          *(_DWORD *)(*(_DWORD *)(v2 + 292) + 16 * v70 + 12) = v72 + v3[2];
        }
        else
        {
          v147 = v71;
          FT_Message("pcf_get_bitmaps:");
          FT_Message(" invalid offset to bitmap data of glyph %d\n", v70);
          v71 = v147;
        }
        ++v70;
      }
      while ( v70 != v62 );
      v61 = v71;
    }
    *(_DWORD *)(v2 + 308) = LongLE;
  }
LABEL_168:
  ft_mem_free(v61, v156);
  accel = Fields;
  if ( Fields )
    return 3;
  v73 = *(_DWORD **)(v2 + 192);
  v74 = *(_DWORD *)(v2 + 188);
  v178 = 0;
  v75 = *(_DWORD *)(v2 + 100);
  v178 = pcf_seek_to_table_type(v3, v73, v74, 32, &LongLE, &Fields);
  if ( v178 )
    return 3;
  v178 = FT_Stream_EnterFrame((int)v3, 0xEu);
  if ( v178 )
    return 3;
  LongLE = FT_Stream_GetLongLE((int)v3);
  if ( (LongLE & 4) != 0 )
  {
    Short = (__int16)FT_Stream_GetShort((int)v3);
    ShortLE = (__int16)FT_Stream_GetShort((int)v3);
    v161 = (__int16)FT_Stream_GetShort((int)v3);
    v77 = (__int16)FT_Stream_GetShort((int)v3);
    *(_WORD *)(v2 + 304) = FT_Stream_GetShort((int)v3);
  }
  else
  {
    Short = (__int16)FT_Stream_GetShortLE((int)v3);
    ShortLE = (__int16)FT_Stream_GetShortLE((int)v3);
    v161 = (__int16)FT_Stream_GetShortLE((int)v3);
    v77 = (__int16)FT_Stream_GetShortLE((int)v3);
    *(_WORD *)(v2 + 304) = FT_Stream_GetShortLE((int)v3);
  }
  FT_Stream_ExitFrame(v3);
  if ( (LongLE & 0xFFFFFF00) != 0 )
    return 3;
  if ( dword_A355D0 > 3 )
  {
    FT_Message("pdf_get_encodings:\n");
    if ( dword_A355D0 > 3 )
      FT_Message("  firstCol %d, lastCol %d, firstRow %d, lastRow %d\n", Short, ShortLE, v161, v77);
  }
  v168 = ShortLE + 1 - Short;
  v165 = v168 * (v77 + 1 - v161);
  v78 = ft_mem_realloc(v75, 8, 0, v165, 0, (int *)&v178);
  if ( v178 )
    return 3;
  v178 = FT_Stream_EnterFrame((int)v3, 2 * v165);
  if ( v178 )
  {
    v85 = 0;
LABEL_299:
    ft_mem_free(v75, v85);
    ft_mem_free(v75, v78);
    v89 = v178;
    goto LABEL_195;
  }
  if ( v165 > 0 )
  {
    v80 = 0;
    v79 = 0;
    v170 = v75;
    do
    {
      if ( (LongLE & 4) != 0 )
        v81 = (__int16)FT_Stream_GetShort((int)v3);
      else
        v81 = (__int16)FT_Stream_GetShortLE((int)v3);
      if ( v81 != -1 )
      {
        v82 = v80 % v168 + Short + ((v80 / v168 + v161) << 8);
        *(_DWORD *)(v78 + 8 * v79) = v82;
        *(_WORD *)(v78 + 8 * v79++ + 4) = v81;
        if ( dword_A355D0 > 4 )
          FT_Message("  code %d (0x%04X): idx %d\n", v82, v82);
      }
      ++v80;
    }
    while ( v80 != v165 );
    v75 = v170;
  }
  else
  {
    v79 = 0;
  }
  FT_Stream_ExitFrame(v3);
  v83 = ft_mem_realloc(v75, 8, 0, v79, 0, (int *)&v178);
  v84 = v178;
  v85 = v83;
  if ( v178 )
    goto LABEL_299;
  if ( v79 )
  {
    v86 = v178;
    do
    {
      ++v86;
      *(_DWORD *)(v83 + v84) = *(_DWORD *)(v78 + v84);
      v87 = v83 + v84;
      v88 = *(_WORD *)(v78 + v84 + 4);
      v84 += 8;
      *(_WORD *)(v87 + 4) = v88;
    }
    while ( v86 != v79 );
  }
  *(_DWORD *)(v2 + 300) = v83;
  *(_DWORD *)(v2 + 296) = v79;
  ft_mem_free(v75, v78);
  v89 = v178;
LABEL_195:
  accel = v89;
  if ( v89 )
    return 3;
  if ( v151 )
  {
    accel = pcf_get_accel(v3, v2, 256);
    if ( accel )
      return 3;
  }
  v23 = *(_BYTE *)(v2 + 199) == 0;
  *(_DWORD *)v2 = 1;
  *(_DWORD *)(v2 + 4) = 0;
  *(_DWORD *)(v2 + 8) = 146;
  if ( !v23 )
    *(_DWORD *)(v2 + 8) = 150;
  *(_DWORD *)(v2 + 12) = 0;
  Fields = 0;
  v172 = nullptr;
  v173 = nullptr;
  v174 = nullptr;
  v175 = 0;
  v90 = *(_DWORD *)(v2 + 100);
  property = pcf_find_property(v2, "SLANT");
  if ( property && *(_BYTE *)(property + 4) )
  {
    v92 = **(char **)(property + 8);
    v93 = v92 == 79;
    if ( v92 != 79 )
      v93 = v92 == 111;
    if ( v93 || v92 == 73 || v92 == 105 )
    {
      *(_DWORD *)(v2 + 12) |= 1u;
      v140 = **(char **)(property + 8);
      v141 = v140 == 79;
      if ( v140 != 79 )
        v141 = v140 == 111;
      if ( v141 )
        v174 = "Oblique";
      else
        v174 = "Italic";
    }
  }
  v94 = pcf_find_property(v2, "WEIGHT_NAME");
  if ( v94 && *(_BYTE *)(v94 + 4) )
  {
    v95 = **(char **)(v94 + 8);
    v96 = v95 == 66;
    if ( v95 != 66 )
      v96 = v95 == 98;
    if ( v96 )
    {
      *(_DWORD *)(v2 + 12) |= 2u;
      v173 = "Bold";
    }
  }
  v97 = pcf_find_property(v2, "SETWIDTH_NAME");
  if ( v97 )
  {
    if ( *(_BYTE *)(v97 + 4) )
    {
      v98 = *(_BYTE **)(v97 + 8);
      v99 = (unsigned __int8)*v98;
      if ( *v98 )
      {
        v100 = v99 == 110;
        if ( v99 != 110 )
          v100 = v99 == 78;
        if ( !v100 )
          v175 = *(_DWORD *)(v97 + 8);
      }
    }
  }
  v101 = pcf_find_property(v2, "ADD_STYLE_NAME");
  if ( v101 )
  {
    if ( *(_BYTE *)(v101 + 4) )
    {
      v102 = *(_BYTE **)(v101 + 8);
      v103 = (unsigned __int8)*v102;
      if ( *v102 )
      {
        v104 = v103 == 110;
        if ( v103 != 110 )
          v104 = v103 == 78;
        if ( !v104 )
          v172 = *(const char **)(v101 + 8);
      }
    }
  }
  v105 = 0;
  v106 = 0;
  do
  {
    v107 = (&v172)[v105];
    v171[v105] = 0;
    if ( v107 )
    {
      v108 = LC_API_STRLEN_0(v107);
      v106 += 1 + v108;
      v171[v105] = v108;
    }
    ++v105;
  }
  while ( v105 != 4 );
  if ( !v106 )
  {
    v171[0] = 7;
    v172 = "Regular";
    v106 = 8;
  }
  v109 = (char *)ft_mem_alloc(v90, v106, (int *)&Fields);
  v110 = Fields;
  *(_DWORD *)(v2 + 24) = v109;
  if ( v110 )
    return 3;
  v111 = 0;
  v112 = 45;
  v113 = (_DWORD *)v2;
  do
  {
    v114 = *(const char **)((char *)&v172 + v110);
    v115 = *(_DWORD *)((char *)v171 + v110);
    if ( v114 )
    {
      v116 = (char *)v113[6];
      if ( v116 != v109 )
      {
        *v109 = 32;
        v116 = v109 + 1;
      }
      v148 = v112;
      memcpy(v116, v114, v115);
      v117 = v111 == 0;
      if ( v111 )
        v117 = v111 == 3;
      v112 = v148;
      if ( v117 && v115 > 0 )
      {
        for ( n = 0; n != v115; ++n )
        {
          if ( v116[n] == 32 )
            v116[n] = v148;
        }
      }
      v109 = &v116[v115];
    }
    ++v111;
    v110 += 4;
  }
  while ( v111 != 4 );
  *v109 = 0;
  v119 = (int)v113;
  accel = Fields;
  if ( Fields )
    return 3;
  v120 = pcf_find_property((int)v113, "FAMILY_NAME");
  if ( v120 && *(_BYTE *)(v120 + 4) )
  {
    v142 = ft_mem_strdup(v4, *(const char **)(v120 + 8), &accel);
    v143 = accel;
    v113[5] = v142;
    if ( v143 )
      return 3;
  }
  else
  {
    v113[5] = 0;
  }
  v113[4] = v113[72] + 1;
  v113[7] = 1;
  v121 = (__int16 *)ft_mem_realloc(v4, 16, 0, 1, 0, &accel);
  v122 = accel;
  v123 = v121;
  *(_DWORD *)(v119 + 32) = v121;
  if ( !v122 )
  {
    LC_API_MEMSET_0(v121, 0, 0x10u);
    *v123 = *(_WORD *)(v119 + 208) + *(_WORD *)(v119 + 204);
    v124 = pcf_find_property(v119, "AVERAGE_WIDTH");
    v125 = v124 == 0;
    if ( v124 )
      v126 = *(_DWORD *)(v124 + 8);
    else
      v126 = *v123;
    if ( v125 )
      v127 = 3;
    else
      v127 = 10;
    if ( v125 )
      v128 = 2 * v126;
    else
      v128 = v126 + 5;
    v123[1] = v128 / v127;
    v129 = pcf_find_property(v119, "POINT_SIZE");
    if ( v129 )
      *((_DWORD *)v123 + 1) = (460800 * *(_DWORD *)(v129 + 8) + 36135) / ((int)&elf_hash_chain[1601] + 2);
    v130 = pcf_find_property(v119, "PIXEL_SIZE");
    if ( v130 )
      *((_DWORD *)v123 + 3) = *(__int16 *)(v130 + 8) << 6;
    v131 = pcf_find_property(v119, "RESOLUTION_X");
    if ( v131 )
      v132 = *(_WORD *)(v131 + 8);
    else
      v132 = 0;
    v133 = pcf_find_property(v119, "RESOLUTION_Y");
    v134 = *((_DWORD *)v123 + 3);
    if ( v133 )
      v135 = *(unsigned __int16 *)(v133 + 8);
    else
      v135 = 0;
    if ( v134 )
    {
      v135 = (__int16)v135;
    }
    else
    {
      v134 = *((_DWORD *)v123 + 1);
      *((_DWORD *)v123 + 3) = v134;
      if ( !v135 )
        goto LABEL_302;
      v135 = (__int16)v135;
      *((_DWORD *)v123 + 3) = v134 * (__int16)v135 / 72;
      v134 = v134 * (__int16)v135 / 72;
    }
    v136 = v135 == 0;
    if ( v135 )
      v136 = v132 == 0;
    if ( !v136 )
    {
      *((_DWORD *)v123 + 2) = v134 * v132 / v135;
      goto LABEL_281;
    }
LABEL_302:
    *((_DWORD *)v123 + 2) = v134;
LABEL_281:
    v137 = pcf_find_property(v119, "CHARSET_REGISTRY");
    v138 = pcf_find_property(v119, "CHARSET_ENCODING");
    if ( !v137 )
      goto LABEL_286;
    v139 = v138 == 0;
    if ( v138 )
      v139 = *(_BYTE *)(v137 + 4) == 0;
    if ( v139 || !*(_BYTE *)(v138 + 4) )
    {
LABEL_286:
      v5 = accel;
      goto LABEL_287;
    }
    v144 = ft_mem_strdup(v4, *(const char **)(v138 + 8), &accel);
    v145 = accel;
    *(_DWORD *)(v119 + 176) = v144;
    if ( !v145 )
    {
      v146 = ft_mem_strdup(v4, *(const char **)(v137 + 8), &accel);
      v5 = accel;
      *(_DWORD *)(v119 + 180) = v146;
LABEL_287:
      if ( !v5 )
        return v5;
    }
  }
  return 3;
}


// ===== 711e70 PCF_Face_Init =====
int __fastcall PCF_Face_Init(int *a1, signed int *a2)
{
  char *v4; // r7
  const char *v5; // r6
  bool v6; // zf
  int v8; // r3
  bool v9; // zf
  int v10; // r3
  bool v11; // zf
  int v12; // r3
  bool v13; // zf
  const char *v14; // r7
  int v15; // r0
  int v16; // r0
  signed int *v17; // [sp+4h] [bp-10h] BYREF
  int v18; // [sp+8h] [bp-Ch]
  __int16 v19; // [sp+Ch] [bp-8h]
  __int16 v20; // [sp+Eh] [bp-6h]

  if ( pcf_load_font(a1, (int)a2)
    && ((PCF_Face_Done(a2), v15 = FT_Stream_OpenGzip(a2 + 33, a1), (unsigned __int8)v15 == 7)
     || v15 && ((v16 = FT_Stream_OpenLZW(a2 + 33, a1), (unsigned __int8)v16 == 7) || v16)
     || (a2[43] = (signed int)a1, a2[26] = (signed int)(a2 + 33), pcf_load_font(a2 + 33, (int)a2))) )
  {
    if ( dword_A355CC > 1 )
      FT_Message("[not a valid PCF file]\n");
    PCF_Face_Done(a2);
    return 2;
  }
  else
  {
    v4 = (char *)a2[45];
    v5 = (const char *)a2[44];
    v6 = v5 == nullptr;
    if ( v5 )
      v6 = v4 == nullptr;
    if ( v6 )
      goto LABEL_6;
    v8 = *v4;
    v9 = v8 == 105;
    if ( v8 != 105 )
      v9 = v8 == 73;
    if ( !v9 )
      goto LABEL_6;
    v10 = v4[1];
    v11 = v10 == 115;
    if ( v10 != 115 )
      v11 = v10 == 83;
    if ( !v11 )
      goto LABEL_6;
    v12 = v4[2];
    v13 = v12 == 111;
    if ( v12 != 111 )
      v13 = v12 == 79;
    if ( !v13
      || (v14 = v4 + 3, LC_API_STRCMP_0(v14, "10646")) && (LC_API_STRCMP_0(v14, "8859") || LC_API_STRCMP_0(v5, "1")) )
    {
LABEL_6:
      v17 = a2;
      v20 = 0;
      v18 = 0;
      v19 = 0;
    }
    else
    {
      v18 = 1970170211;
      v19 = 3;
      v17 = a2;
      v20 = 1;
    }
    return FT_CMap_New(&pcf_cmap_class, 0, &v17, nullptr);
  }
}


// ===== 712034 pcf_driver_requester =====
const char *__fastcall pcf_driver_requester(int a1, char *a2)
{
  return ft_service_list_lookup((const char **)&pcf_services, a2);
}


// ===== 712048 pfr_glyph_close_contour =====
int __fastcall pfr_glyph_close_contour(int result, int a2)
{
  int v2; // r3
  __int16 v3; // r4
  __int16 v4; // r6
  int v5; // r12
  int v6; // r2
  int v7; // r1
  int v8; // r5
  int v9; // r7
  int v10; // r8
  int v11; // r10
  int v12; // r5

  v2 = *(_DWORD *)(result + 28);
  if ( *(_BYTE *)(result + 32) )
  {
    v3 = *(_WORD *)(v2 + 56);
    v4 = *(_WORD *)(v2 + 58);
    v5 = v3;
    if ( v3 > 0 )
      a2 = *(_DWORD *)(v2 + 68);
    v6 = v4 - 1;
    if ( v3 <= 0 )
      v7 = 0;
    else
      v7 = *(__int16 *)(a2 + 2 * v3 - 2);
    if ( v7 < v6 )
    {
      v8 = *(_DWORD *)(v2 + 60);
      v9 = *(_DWORD *)(v8 + 8 * v6);
      v10 = *(_DWORD *)(v8 + 8 * v7);
      v11 = v8 + 8 * v7;
      v12 = v8 + 8 * v6;
      if ( v10 != v9 || *(_DWORD *)(v11 + 4) != *(_DWORD *)(v12 + 4) )
      {
LABEL_9:
        *(_WORD *)(*(_DWORD *)(v2 + 68) + 2 * v5) = v6;
        *(_WORD *)(v2 + 56) = v3 + 1;
        *(_BYTE *)(result + 32) = 0;
        return result;
      }
      *(_WORD *)(v2 + 58) = v4 - 1;
      v6 = v4 - 2;
    }
    if ( v6 < v7 )
    {
      *(_BYTE *)(result + 32) = 0;
      return result;
    }
    v5 = v3;
    goto LABEL_9;
  }
  return result;
}


// ===== 712104 pfr_cmap_init =====
int __fastcall pfr_cmap_init(_DWORD *a1)
{
  int v1; // r3
  unsigned int v2; // r12
  _DWORD *v3; // r2
  int v4; // r3
  unsigned int v5; // t1

  v1 = *a1;
  v2 = *(_DWORD *)(*a1 + 408);
  a1[4] = v2;
  v3 = *(_DWORD **)(v1 + 416);
  a1[5] = v3;
  if ( v2 <= 1 )
    return 0;
  if ( *v3 < v3[4] )
  {
    v4 = 1;
    while ( ++v4 != v2 )
    {
      v5 = v3[4];
      v3 += 4;
      if ( v5 >= v3[4] )
        return 8;
    }
    return 0;
  }
  return 8;
}


// ===== 712164 pfr_cmap_done =====
int __fastcall pfr_cmap_done(int result)
{
  *(_DWORD *)(result + 16) = 0;
  *(_DWORD *)(result + 20) = 0;
  return result;
}


// ===== 712174 pfr_cmap_char_index =====
unsigned int __fastcall pfr_cmap_char_index(int a1, unsigned int a2)
{
  unsigned int v2; // r5
  unsigned int i; // r2
  int v4; // r4
  unsigned int v5; // r3
  unsigned int v6; // r12
  bool v7; // cf
  unsigned int v8; // r12

  v2 = *(_DWORD *)(a1 + 16);
  for ( i = 0; ; i = v5 + 1 )
  {
    if ( i >= v2 )
      return 0;
    v4 = *(_DWORD *)(a1 + 20);
    v5 = i + ((v2 - i) >> 1);
    v6 = *(_DWORD *)(v4 + 16 * v5);
    if ( v6 == a2 )
      break;
    if ( a2 <= v6 )
    {
      do
      {
        v7 = i >= v5;
        v2 = v5;
        v5 = i + ((v5 - i) >> 1);
        if ( v7 )
          return 0;
        v8 = *(_DWORD *)(v4 + 16 * v5);
        if ( v8 == a2 )
          return v5 + 1;
      }
      while ( v8 >= a2 );
    }
  }
  return v5 + 1;
}


// ===== 7121e8 pfr_cmap_char_next =====
unsigned int __fastcall pfr_cmap_char_next(int a1, unsigned int *a2)
{
  unsigned int v2; // r4
  unsigned int v3; // r7
  unsigned int v4; // r6
  unsigned int v5; // r2
  int v6; // r5
  unsigned int v7; // r3
  unsigned int v8; // r12
  bool v9; // cf
  unsigned int result; // r0

  v2 = *a2;
  v3 = *(_DWORD *)(a1 + 16);
  while ( 1 )
  {
    v4 = *(_DWORD *)(a1 + 16);
    v5 = 0;
    ++v2;
    if ( !v3 )
      break;
    while ( 1 )
    {
      v6 = *(_DWORD *)(a1 + 20);
      v7 = v5 + ((v4 - v5) >> 1);
      v8 = *(_DWORD *)(v6 + 16 * v7);
      if ( v8 == v2 )
        break;
      while ( v2 <= v8 )
      {
        v9 = v5 >= v7;
        v4 = v7;
        v7 = v5 + ((v7 - v5) >> 1);
        if ( v9 )
          goto LABEL_9;
        v8 = *(_DWORD *)(v6 + 16 * v7);
        if ( v8 == v2 )
          goto LABEL_14;
      }
      v5 = v7 + 1;
      if ( v4 <= v7 + 1 )
        goto LABEL_9;
    }
LABEL_14:
    if ( v7 )
    {
      result = v7 + 1;
      goto LABEL_13;
    }
  }
LABEL_9:
  if ( v3 > v5 && v5 )
  {
    v2 = *(_DWORD *)(*(_DWORD *)(a1 + 20) + 16 * v5);
    result = v5 + 1;
  }
  else
  {
    v2 = 0;
    result = 0;
  }
LABEL_13:
  *a2 = v2;
  return result;
}


// ===== 71229c pfr_get_advance =====
int __fastcall pfr_get_advance(int a1, unsigned int a2, _DWORD *a3)
{
  bool v3; // zf
  int result; // r0

  v3 = a1 == 0;
  result = 0;
  *a3 = 0;
  if ( v3 || *(_DWORD *)(a1 + 408) <= a2 )
    return 132;
  *a3 = *(_DWORD *)(*(_DWORD *)(a1 + 416) + 16 * a2 + 4);
  return result;
}


// ===== 7122d4 pfr_extra_items_parse =====
int __fastcall pfr_extra_items_parse(unsigned __int8 **a1, unsigned int a2, _DWORD *a3, int a4)
{
  unsigned __int8 *v5; // r0
  unsigned __int8 *v8; // r5
  int v10; // r8
  int v11; // r7
  int v12; // r0
  unsigned __int8 *v13; // r7
  int (__fastcall *v14)(unsigned __int8 *, unsigned __int8 *, int); // r3
  _DWORD *v15; // r2
  int v16; // t1
  int result; // r0

  v5 = *a1;
  v8 = v5 + 1;
  if ( (unsigned int)(v5 + 1) > a2 )
  {
    v8 = v5;
LABEL_15:
    FT_Message("pfr_extra_items_parse: invalid extra items table\n");
    result = 8;
LABEL_16:
    *a1 = v8;
  }
  else
  {
    v10 = *v5;
    if ( *v5 )
    {
      if ( a2 < (unsigned int)(v5 + 3) )
        goto LABEL_15;
      v11 = v5[1];
      v12 = v5[2];
      v8 += 2;
      v13 = &v8[v11];
      if ( a2 < (unsigned int)v13 )
        goto LABEL_15;
      while ( 1 )
      {
        if ( !a3 )
          goto LABEL_12;
        v14 = (int (__fastcall *)(unsigned __int8 *, unsigned __int8 *, int))a3[1];
        if ( !v14 )
          goto LABEL_12;
        if ( *a3 != v12 )
          break;
LABEL_17:
        result = v14(v8, v13, a4);
        if ( result )
          goto LABEL_16;
        if ( !--v10 )
        {
LABEL_19:
          v8 = v13;
          goto LABEL_20;
        }
LABEL_13:
        if ( a2 < (unsigned int)(v13 + 2) )
        {
          v8 = v13;
          goto LABEL_15;
        }
        v12 = v13[1];
        v8 = v13 + 2;
        v13 += *v13 + 2;
        if ( a2 < (unsigned int)v13 )
          goto LABEL_15;
      }
      v15 = a3;
      while ( 1 )
      {
        v14 = (int (__fastcall *)(unsigned __int8 *, unsigned __int8 *, int))v15[3];
        if ( !v14 )
          break;
        v16 = v15[2];
        v15 += 2;
        if ( v16 == v12 )
          goto LABEL_17;
      }
LABEL_12:
      if ( !--v10 )
        goto LABEL_19;
      goto LABEL_13;
    }
LABEL_20:
    *a1 = v8;
    return v10;
  }
  return result;
}


// ===== 7123f4 pfr_extra_item_load_stem_snaps =====
int __fastcall pfr_extra_item_load_stem_snaps(unsigned __int8 *a1, unsigned int a2, int *a3)
{
  int v3; // r12
  unsigned __int8 *v4; // r6
  int result; // r0
  unsigned int v7; // r5
  int v8; // r7
  int v9; // r5
  int v10; // r12
  int v11; // r3
  int v12; // r1
  int v13; // t1
  int v14; // [sp+Ch] [bp-8h] BYREF

  v3 = a3[19];
  v14 = 0;
  v4 = a1;
  if ( v3 )
    return 0;
  if ( (unsigned int)(a1 + 1) <= a2
    && (v7 = *a1, v8 = v7 & 0xF, v9 = v8 + (v7 >> 4), a2 >= (unsigned int)&a1[2 * v9 + 1]) )
  {
    v10 = ft_mem_realloc(*a3, 4, 0, v9, 0, &v14);
    result = v14;
    if ( !v14 )
    {
      a3[16] = v10 + 4 * v8;
      a3[19] = v10;
      if ( v9 )
      {
        v11 = 0;
        do
        {
          v12 = (char)v4[1];
          v13 = v4[2];
          v4 += 2;
          --v9;
          *(_DWORD *)(v10 + v11) = v13 | (v12 << 8);
          v11 += 4;
        }
        while ( v9 );
        return v14;
      }
    }
  }
  else
  {
    FT_Message("pfr_exta_item_load_stem_snaps: invalid stem snaps table\n");
    return 8;
  }
  return result;
}


// ===== 7124d0 pfr_extra_item_load_bitmap_info =====
int __fastcall pfr_extra_item_load_bitmap_info(int a1, unsigned int a2, int *a3)
{
  bool v3; // cf
  unsigned int v4; // r9
  int v6; // r1
  unsigned int v7; // r5
  signed int v8; // r2
  char v9; // r4
  int v10; // r10
  int v11; // r8
  int v12; // r3
  int v13; // r7
  int v14; // r12
  int v15; // r11
  int v16; // r4
  unsigned __int8 *v17; // r10
  signed int *v18; // r3
  unsigned int v19; // r0
  unsigned __int8 *v20; // r2
  int v21; // r1
  unsigned __int8 *v22; // r1
  int v23; // r10
  int v24; // r2
  int v25; // r2
  unsigned __int8 *v26; // r1
  signed int v27; // t1
  unsigned __int8 *v28; // r2
  signed int v29; // r1
  signed int v30; // t1
  int result; // r0
  unsigned int v32; // r7
  int v33; // [sp+Ch] [bp-8h] BYREF

  v3 = a2 >= a1 + 5;
  v33 = 0;
  v4 = a2;
  v6 = *a3;
  if ( !v3 )
  {
LABEL_55:
    v33 = 8;
    FT_Message("pfr_extra_item_load_bitmap_info: invalid bitmap info table\n", v6);
    return v33;
  }
  v7 = *(unsigned __int8 *)(a1 + 4);
  v8 = a3[23];
  v9 = *(_BYTE *)(a1 + 3);
  v10 = a1 + 4;
  if ( v7 + v8 > a3[24] )
  {
    v32 = (v7 + v8 + 3) & 0xFFFFFFFC;
    v6 = ft_mem_realloc(v6, 36, v8, (v7 + v8 + 3) & 0xFFFFFFFC, a3[25], &v33);
    result = v33;
    a3[25] = v6;
    if ( result )
      return result;
    v8 = a3[23];
    a3[24] = v32;
  }
  else
  {
    v6 = a3[25];
  }
  v11 = v9 & 1;
  if ( (v9 & 1) != 0 )
    v12 = 9;
  else
    v12 = 8;
  v13 = v9 & 2;
  if ( (v9 & 2) != 0 )
    ++v12;
  v14 = v9 & 4;
  if ( (v9 & 4) != 0 )
    ++v12;
  v15 = v9 & 8;
  if ( (v9 & 8) != 0 )
    ++v12;
  v16 = v9 & 0x10;
  if ( v16 )
    ++v12;
  v17 = (unsigned __int8 *)(v10 + 1);
  if ( v4 < (unsigned int)&v17[v7 * v12] )
    goto LABEL_55;
  if ( v7 )
  {
    v18 = (signed int *)(v6 + 36 * v8);
    v19 = 0;
    while ( 1 )
    {
      if ( v11 )
      {
        v26 = v17 + 2;
        v8 = v17[1];
      }
      else
      {
        v26 = v17;
      }
      if ( v11 )
      {
        v17 = (unsigned __int8 *)*v17;
      }
      else
      {
        v27 = *v26++;
        v8 = v27;
      }
      if ( v11 )
        v8 |= (_DWORD)v17 << 8;
      *v18 = v8;
      if ( v13 )
      {
        v28 = v26 + 2;
        v17 = (unsigned __int8 *)*v26;
      }
      else
      {
        v28 = v26;
      }
      if ( v13 )
      {
        v29 = *(v28 - 1);
      }
      else
      {
        v30 = *v28++;
        v29 = v30;
      }
      if ( v13 )
        v29 |= (_DWORD)v17 << 8;
      v18[1] = v29;
      v18[2] = *v28;
      if ( v14 )
      {
        v20 = v28 + 4;
        v4 = *(v20 - 3);
        v21 = (*(v20 - 2) << 8) | (v4 << 16) | *(v20 - 1);
      }
      else
      {
        v20 = v28 + 3;
        v21 = *(v20 - 1) | (*(v20 - 2) << 8);
      }
      v18[5] = v21;
      if ( v15 )
      {
        v22 = v20 + 3;
        v23 = v20[2];
        v4 = *v20;
      }
      else
      {
        v22 = v20 + 2;
        v23 = *v20;
      }
      v24 = v15 ? *(v22 - 2) : *(v22 - 1);
      v25 = v15 ? v23 | (v4 << 16) | (v24 << 8) : v24 | (v23 << 8);
      v18[6] = v25;
      if ( v16 )
      {
        v17 = v22 + 2;
        v8 = v22[1];
        v22 = (unsigned __int8 *)*v22;
      }
      else
      {
        v17 = v22 + 1;
        v8 = *v22;
      }
      ++v19;
      if ( v16 )
        v8 |= (_DWORD)v22 << 8;
      v18[7] = v8;
      if ( v7 <= v19 )
        break;
      v18 += 9;
    }
    v8 = a3[23];
  }
  result = v33;
  a3[23] = v8 + v7;
  return result;
}


// ===== 7126d4 pfr_glyph_line_to =====
int __fastcall pfr_glyph_line_to(int a1, _DWORD *a2)
{
  int v3; // r4
  int v4; // r3
  int v5; // r2
  int result; // r0

  v3 = *(_DWORD *)(a1 + 28);
  if ( !*(_BYTE *)(a1 + 32) )
  {
    FT_Message("pfr_glyph_line_to: invalid glyph data\n");
    return 8;
  }
  v4 = *(__int16 *)(v3 + 58);
  if ( v4 + *(__int16 *)(v3 + 22) < *(_DWORD *)(v3 + 4) )
    goto LABEL_3;
  result = FT_GlyphLoader_CheckPoints(*(_DWORD *)(a1 + 28), 1, 0);
  if ( !result )
  {
    v4 = *(__int16 *)(v3 + 58);
LABEL_3:
    v5 = *(_DWORD *)(v3 + 60);
    *(_DWORD *)(v5 + 8 * v4) = *a2;
    result = 0;
    *(_DWORD *)(v5 + 8 * v4 + 4) = a2[1];
    *(_BYTE *)(*(_DWORD *)(v3 + 64) + v4) = 1;
    ++*(_WORD *)(v3 + 58);
  }
  return result;
}


// ===== 712774 pfr_glyph_load_rec =====
unsigned __int8 *__fastcall pfr_glyph_load_rec(int a1, int *a2, int a3, int a4, unsigned int a5)
{
  int *v5; // r7
  unsigned __int8 *v7; // r10
  unsigned __int8 *v9; // r3
  unsigned int v10; // r6
  int *v11; // r1
  int v12; // r0
  unsigned __int8 v13; // r9
  unsigned __int8 *v14; // r2
  unsigned int v15; // r3
  unsigned int v16; // r2
  unsigned int v17; // r8
  int v18; // r0
  unsigned int v19; // r1
  unsigned int v20; // r2
  int v21; // r0
  int v22; // r3
  unsigned __int8 *v23; // r1
  unsigned __int8 *v24; // r1
  unsigned __int8 *v25; // r12
  int v26; // r1
  unsigned int v27; // r2
  unsigned __int8 *v28; // r2
  unsigned int v29; // r3
  int v30; // r8
  int v31; // r9
  int v32; // r11
  unsigned __int8 v33; // r4
  unsigned int v34; // r2
  int v35; // r4
  int v36; // r0
  char *v37; // r2
  unsigned __int8 *v38; // r1
  int v39; // r3
  int v40; // r0
  int v41; // r3
  char *v42; // lr
  unsigned __int8 *v43; // r1
  unsigned __int8 *v44; // r1
  unsigned __int8 *v45; // r1
  unsigned int v46; // r2
  unsigned __int8 *v47; // r1
  unsigned __int8 *v48; // r1
  int v49; // lr
  int v50; // r1
  int v51; // r1
  unsigned int v52; // r10
  unsigned int v53; // r10
  unsigned int v54; // r9
  int v55; // r5
  unsigned int v56; // r7
  int v57; // r2
  int v58; // r3
  int v59; // r0
  bool v60; // zf
  int v61; // r3
  int v62; // r2
  int v63; // r2
  int v64; // r5
  int v65; // r5
  int v66; // r3
  int v67; // r12
  _DWORD *v68; // r2
  int v69; // r0
  unsigned __int8 *v70; // r2
  bool v71; // cc
  unsigned __int8 *v72; // r3
  int v73; // r0
  int v74; // r12
  unsigned __int8 *v75; // r1
  unsigned __int8 *v76; // r8
  int v77; // r4
  __int16 v78; // r9
  int v79; // r7
  int v80; // r1
  int *v81; // r7
  int v82; // r11
  int v83; // r8
  int v84; // r9
  int v85; // r10
  int v86; // r6
  int v87; // r0
  int v88; // r1
  int v89; // r0
  int v90; // r2
  int v91; // r3
  int v92; // r6
  unsigned __int8 *v93; // r0
  unsigned __int8 *v94; // r3
  unsigned int v95; // r10
  unsigned __int8 *v96; // r0
  unsigned int v98; // [sp+8h] [bp-54h]
  unsigned int v99; // [sp+Ch] [bp-50h]
  int v100; // [sp+Ch] [bp-50h]
  int v101; // [sp+10h] [bp-4Ch]
  int v102; // [sp+10h] [bp-4Ch]
  unsigned int v103; // [sp+14h] [bp-48h]
  int rec; // [sp+14h] [bp-48h]
  int v105; // [sp+18h] [bp-44h]
  int *v106; // [sp+1Ch] [bp-40h]
  int *v107; // [sp+2Ch] [bp-30h]
  int v108; // [sp+30h] [bp-2Ch] BYREF
  int v109; // [sp+34h] [bp-28h]
  int v110; // [sp+38h] [bp-24h]
  int v111; // [sp+3Ch] [bp-20h]
  int v112; // [sp+40h] [bp-1Ch]
  int v113; // [sp+44h] [bp-18h]
  int v114; // [sp+48h] [bp-14h]
  int v115; // [sp+4Ch] [bp-10h]
  char *v116; // [sp+50h] [bp-Ch] BYREF
  unsigned __int8 *v117[2]; // [sp+54h] [bp-8h] BYREF

  v5 = a2;
  v7 = (unsigned __int8 *)FT_Stream_Seek(a2, a4 + a3);
  if ( v7 )
    return v7;
  v7 = (unsigned __int8 *)FT_Stream_EnterFrame((int)v5, a5);
  if ( v7 )
    return v7;
  v9 = (unsigned __int8 *)v5[8];
  v10 = (unsigned int)&v9[a5];
  if ( !a5 || (*v9 & 0x80u) == 0 )
  {
    v11 = *(int **)(a1 + 28);
    v116 = nullptr;
    v117[0] = v9;
    v12 = *v11;
    if ( v10 < (unsigned int)(v9 + 1) )
      goto LABEL_28;
    v13 = *v9;
    v117[0] = v9 + 1;
    if ( (v13 & 0x80) != 0 )
      goto LABEL_28;
    if ( (v13 & 4) != 0 )
    {
      v14 = v9 + 2;
      if ( v10 < (unsigned int)(v9 + 2) )
        goto LABEL_28;
      v15 = v9[1];
      v117[0] = v14;
      v99 = v15 >> 4;
      v98 = v15 & 0xF;
    }
    else
    {
      if ( (v13 & 2) != 0 )
      {
        v28 = v9 + 2;
        if ( v10 < (unsigned int)(v9 + 2) )
          goto LABEL_28;
        v29 = v9[1];
        v117[0] = v28;
        v98 = v29;
      }
      else
      {
        v98 = 0;
      }
      if ( (v13 & 1) != 0 )
      {
        if ( (unsigned __int8 *)v10 < v117[0] + 1 )
          goto LABEL_28;
        v27 = *v117[0]++;
        v99 = v27;
      }
      else
      {
        v99 = 0;
      }
    }
    v16 = *(_DWORD *)(a1 + 4);
    v17 = v99 + v98;
    if ( v99 + v98 > v16 )
    {
      v18 = ft_mem_realloc(v12, 4, v16, (v17 + 7) & 0xFFFFFFF8, *(_DWORD *)(a1 + 8), (int *)&v116);
      v7 = (unsigned __int8 *)v116;
      *(_DWORD *)(a1 + 8) = v18;
      if ( v7 )
        goto LABEL_29;
      *(_DWORD *)(a1 + 4) = (v17 + 7) & 0xFFFFFFF8;
    }
    else
    {
      v18 = *(_DWORD *)(a1 + 8);
    }
    v19 = v98;
    *(_DWORD *)(a1 + 12) = v18 + 4 * v98;
    if ( v17 )
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      while ( 1 )
      {
        if ( (v22 & 7) != 0 )
        {
          v24 = v117[0];
        }
        else
        {
          v24 = v117[0] + 1;
          if ( (unsigned __int8 *)v10 < v117[0] + 1 )
            goto LABEL_28;
          v20 = *v117[0]++;
        }
        if ( (v20 & 1) != 0 )
        {
          v23 = v24 + 2;
          if ( v10 < (unsigned int)v23 )
            goto LABEL_28;
          v117[0] = v23;
          v21 = *(v23 - 1) | ((char)*(v23 - 2) << 8);
        }
        else
        {
          v25 = v24 + 1;
          if ( v10 < (unsigned int)(v24 + 1) )
            goto LABEL_28;
          v26 = *v24;
          v117[0] = v25;
          v21 += v26;
        }
        v19 = *(_DWORD *)(a1 + 8);
        *(_DWORD *)(v19 + 4 * v22++) = v21;
        if ( v22 == v17 )
          break;
        v20 >>= 1;
      }
    }
    if ( (v13 & 8) != 0 )
    {
      v7 = (unsigned __int8 *)pfr_extra_items_parse(v117, v10, nullptr, 0);
      v116 = (char *)v7;
      if ( v7 )
        goto LABEL_29;
    }
    v115 = 0;
    *(_BYTE *)(a1 + 32) = 0;
    v109 = 0;
    v108 = 0;
    v114 = 0;
    v101 = a1;
    v107 = v5;
    while ( 2 )
    {
      if ( (unsigned __int8 *)v10 >= v117[0] + 1 )
      {
        v52 = *v117[0]++;
        v103 = v52 >> 4;
        v53 = v52 & 0xF;
        switch ( v103 )
        {
          case 0u:
            if ( dword_A355DC > 5 )
              FT_Message("- end glyph");
            goto LABEL_114;
          case 1u:
            if ( dword_A355DC <= 5 )
              goto LABEL_107;
            v54 = 1;
            FT_Message("- general line");
            break;
          case 2u:
            if ( dword_A355DC > 5 )
              FT_Message("- horizontal line to cx.%d", v53);
            if ( v98 < v53 )
              goto LABEL_27;
            v63 = *(_DWORD *)(*(_DWORD *)(v101 + 8) + 4 * v53);
            v109 = v115;
            v114 = v63;
            v108 = v63;
            goto LABEL_114;
          case 3u:
            if ( dword_A355DC > 5 )
              FT_Message("- vertical line to cy.%d", v53);
            if ( v99 < v53 )
              goto LABEL_27;
            v19 = v101;
            v62 = *(_DWORD *)(v101 + 12);
            v108 = v114;
            v115 = *(_DWORD *)(v62 + 4 * v53);
            v109 = v115;
            goto LABEL_114;
          case 4u:
            if ( dword_A355DC <= 5 )
              goto LABEL_107;
            v54 = 1;
            FT_Message("- move to inside");
            break;
          case 5u:
            if ( dword_A355DC > 5 )
            {
              v54 = 1;
              FT_Message("- move to outside");
            }
            else
            {
LABEL_107:
              v54 = 1;
            }
            break;
          case 6u:
            v54 = 3;
            v53 = 2958;
            if ( dword_A355DC > 5 )
              FT_Message("- hv curve ");
            break;
          case 7u:
            v54 = 3;
            v53 = 3627;
            if ( dword_A355DC > 5 )
              FT_Message("- vh curve");
            break;
          default:
            v54 = 4;
            if ( dword_A355DC > 5 )
              FT_Message("- general curve");
            break;
        }
        v55 = 0;
        v56 = 0;
        do
        {
          if ( (v53 & 3) == 1 )
          {
            v70 = v117[0] + 2;
            if ( (unsigned __int8 *)v10 < v117[0] + 2 )
              goto LABEL_27;
            v117[0] += 2;
            v71 = dword_A355DC <= 6;
            v19 = *(v70 - 1) | ((char)*(v70 - 2) << 8);
            *(int *)((char *)&v108 + v55) = v19;
            if ( !v71 )
              FT_Message(" x.%d");
          }
          else if ( (v53 & 3) != 0 )
          {
            if ( (v53 & 3) == 2 )
            {
              if ( (unsigned __int8 *)v10 < v117[0] + 1 )
                goto LABEL_27;
              v19 = (char)*v117[0];
              v69 = dword_A355DC;
              ++v117[0];
              *(int *)((char *)&v108 + v55) = v19 + v114;
              if ( v69 > 6 )
                FT_Message(" dx.%d");
            }
            else
            {
              if ( dword_A355DC > 6 )
                FT_Message(" |");
              *(int *)((char *)&v108 + v55) = v114;
            }
          }
          else
          {
            if ( (unsigned __int8 *)v10 < v117[0] + 1 )
              goto LABEL_27;
            v19 = *v117[0]++;
            if ( v98 < v19 )
              goto LABEL_27;
            v57 = dword_A355DC;
            *(int *)((char *)&v108 + v55) = *(_DWORD *)(*(_DWORD *)(v101 + 8) + 4 * v19);
            if ( v57 > 6 )
              FT_Message(" cx#%d");
          }
          v58 = (v53 >> 2) & 3;
          if ( v58 == 1 )
          {
            v72 = v117[0] + 2;
            if ( (unsigned __int8 *)v10 < v117[0] + 2 )
              goto LABEL_27;
            v117[0] += 2;
            v73 = dword_A355DC;
            v19 = *(v72 - 1) | ((char)*(v72 - 2) << 8);
            *(int *)((char *)&v108 + v55 + 4) = v19;
            if ( v73 > 6 )
              FT_Message(" y.%d");
          }
          else if ( v58 )
          {
            if ( v58 == 2 )
            {
              if ( (unsigned __int8 *)v10 < v117[0] + 1 )
                goto LABEL_27;
              v19 = (char)*v117[0];
              v74 = dword_A355DC;
              ++v117[0];
              *(int *)((char *)&v108 + v55 + 4) = v19 + v115;
              if ( v74 > 6 )
                FT_Message(" dy.%d", v19);
            }
            else
            {
              if ( dword_A355DC > 6 )
                FT_Message(" -");
              *(int *)((char *)&v108 + v55 + 4) = v115;
            }
          }
          else
          {
            if ( (unsigned __int8 *)v10 < v117[0] + 1 )
              goto LABEL_27;
            v19 = *v117[0]++;
            if ( v99 < v19 )
              goto LABEL_27;
            v59 = dword_A355DC;
            *(int *)((char *)&v108 + v55 + 4) = *(_DWORD *)(*(_DWORD *)(v101 + 12) + 4 * v19);
            if ( v59 > 6 )
              FT_Message(" cy#%d", v19);
          }
          v60 = v54 == 4;
          if ( v54 == 4 )
            v60 = v56 == 0;
          if ( v60 )
          {
            if ( (unsigned __int8 *)v10 < v117[0] + 1 )
              goto LABEL_27;
            v53 = *v117[0];
            v54 = 3;
            ++v117[0];
          }
          else
          {
            v53 >>= 4;
          }
          ++v56;
          v114 = *(int *)((char *)&v108 + v55);
          v61 = *(int *)((char *)&v108 + v55 + 4);
          v55 += 8;
          v115 = v61;
        }
        while ( v56 < v54 );
LABEL_114:
        if ( dword_A355DC > 6 )
          FT_Message("\n");
        switch ( v103 )
        {
          case 0u:
            v5 = v107;
            pfr_glyph_close_contour(v101, v19);
            FT_GlyphLoader_Add(*(_DWORD *)(v101 + 28));
            v7 = (unsigned __int8 *)v116;
            goto LABEL_29;
          case 1u:
          case 2u:
          case 3u:
            v7 = (unsigned __int8 *)pfr_glyph_line_to(v101, &v108);
            v116 = (char *)v7;
            goto LABEL_132;
          case 4u:
          case 5u:
            v64 = *(_DWORD *)(v101 + 28);
            pfr_glyph_close_contour(v101, v101);
            *(_BYTE *)(v101 + 32) = 1;
            if ( *(__int16 *)(v64 + 58) + *(__int16 *)(v64 + 22) < *(_DWORD *)(v64 + 4)
              && *(__int16 *)(v64 + 56) + *(__int16 *)(v64 + 20) < *(_DWORD *)(v64 + 8)
              || (v96 = (unsigned __int8 *)FT_GlyphLoader_CheckPoints(v64, 1, 1), (v7 = v96) == nullptr) )
            {
              v7 = (unsigned __int8 *)pfr_glyph_line_to(v101, &v108);
              goto LABEL_130;
            }
            v116 = (char *)v96;
            goto LABEL_132;
          default:
            v65 = *(_DWORD *)(v101 + 28);
            if ( *(_BYTE *)(v101 + 32) )
            {
              v66 = *(__int16 *)(v65 + 58);
              if ( *(__int16 *)(v65 + 22) + v66 + 2 >= *(_DWORD *)(v65 + 4) )
              {
                v7 = (unsigned __int8 *)FT_GlyphLoader_CheckPoints(*(_DWORD *)(v101 + 28), 3, 0);
                if ( v7 )
                {
LABEL_130:
                  v116 = (char *)v7;
                  goto LABEL_132;
                }
                v66 = *(__int16 *)(v65 + 58);
              }
              v67 = *(_DWORD *)(v65 + 64);
              v68 = (_DWORD *)(*(_DWORD *)(v65 + 60) + 8 * v66);
              *v68 = v108;
              v19 = v67 + v66;
              v68[1] = v109;
              v7 = nullptr;
              v68[2] = v110;
              v68[3] = v111;
              v68[4] = v112;
              v68[5] = v113;
              *(_BYTE *)(v67 + v66) = 2;
              *(_BYTE *)(v19 + 2) = 1;
              *(_BYTE *)(v19 + 1) = 2;
              *(_WORD *)(v65 + 58) += 3;
              v116 = nullptr;
            }
            else
            {
              v7 = (unsigned __int8 *)byte_8;
              FT_Message("pfr_glyph_line_to: invalid glyph data\n");
              v116 = byte_8;
            }
LABEL_132:
            if ( !v7 )
              continue;
            v5 = v107;
            break;
        }
        goto LABEL_29;
      }
      break;
    }
LABEL_27:
    v5 = v107;
LABEL_28:
    v116 = byte_8;
    FT_Message("pfr_glyph_load_simple: invalid glyph data\n");
    v7 = (unsigned __int8 *)v116;
LABEL_29:
    FT_Stream_ExitFrame(v5);
    return v7;
  }
  v100 = *(_DWORD *)(a1 + 28);
  v30 = *(_DWORD *)(a1 + 16);
  v116 = (char *)v5[8];
  v117[0] = nullptr;
  v31 = v30;
  v32 = *(_DWORD *)v100;
  if ( v10 >= (unsigned int)(v9 + 1) )
  {
    v33 = *v9;
    v116 = (char *)(v9 + 1);
    if ( (v33 & 0x80) != 0 )
    {
      if ( (v33 & 8) != 0 )
      {
        v93 = (unsigned __int8 *)pfr_extra_items_parse((unsigned __int8 **)&v116, v10, nullptr, 0);
        v117[0] = v93;
        if ( v93 )
          v94 = v93;
        else
          v30 = *(_DWORD *)(a1 + 16);
        if ( v93 )
          goto LABEL_189;
      }
      v34 = *(_DWORD *)(a1 + 20);
      v35 = v33 & 0x3F;
      if ( v35 + v30 > v34 )
      {
        v95 = (v35 + v30 + 3) & 0xFFFFFFFC;
        v36 = ft_mem_realloc(v32, 24, v34, v95, *(_DWORD *)(a1 + 24), (int *)v117);
        v94 = v117[0];
        *(_DWORD *)(a1 + 24) = v36;
        if ( v94 )
        {
LABEL_189:
          v7 = v94;
          FT_Stream_ExitFrame(v5);
          return v7;
        }
        *(_DWORD *)(a1 + 20) = v95;
      }
      else
      {
        v36 = *(_DWORD *)(a1 + 24);
      }
      if ( !v35 )
        goto LABEL_164;
      v37 = v116;
      v38 = (unsigned __int8 *)(v116 + 1);
      if ( v10 >= (unsigned int)(v116 + 1) )
      {
        v39 = v36 + 24 * v30;
        v40 = 0;
        v41 = v39 + 24;
        do
        {
          v46 = (unsigned __int8)*v37;
          v116 = (char *)v38;
          *(_DWORD *)(v41 - 24) = 0x10000;
          if ( (v46 & 0x10) != 0 )
          {
            v47 = (unsigned __int8 *)(v116 + 2);
            if ( v10 < (unsigned int)(v116 + 2) )
              break;
            v116 += 2;
            *(_DWORD *)(v41 - 24) = 16 * (*(v47 - 1) | ((char)*(v47 - 2) << 8));
          }
          *(_DWORD *)(v41 - 20) = 0x10000;
          if ( (v46 & 0x20) != 0 )
          {
            v48 = (unsigned __int8 *)(v116 + 2);
            if ( v10 < (unsigned int)(v116 + 2) )
              break;
            v116 += 2;
            *(_DWORD *)(v41 - 20) = 16 * (*(v48 - 1) | ((char)*(v48 - 2) << 8));
          }
          if ( (v46 & 3) == 1 )
          {
            v75 = (unsigned __int8 *)(v116 + 2);
            if ( v10 < (unsigned int)(v116 + 2) )
              break;
            v116 += 2;
            v49 = *(v75 - 1) | ((char)*(v75 - 2) << 8);
          }
          else if ( (v46 & 3) == 2 )
          {
            if ( v10 < (unsigned int)(v116 + 1) )
              break;
            v49 = *v116++;
          }
          else
          {
            v49 = 0;
          }
          v50 = (v46 >> 2) & 3;
          if ( v50 == 1 )
          {
            v76 = (unsigned __int8 *)(v116 + 2);
            if ( v10 < (unsigned int)(v116 + 2) )
              break;
            v116 += 2;
            v51 = *(v76 - 1) | ((char)*(v76 - 2) << 8);
          }
          else if ( v50 == 2 )
          {
            if ( v10 < (unsigned int)(v116 + 1) )
              break;
            v51 = *v116++;
          }
          else
          {
            v51 = 0;
          }
          *(_DWORD *)(v41 - 16) = v49;
          *(_DWORD *)(v41 - 12) = v51;
          if ( (v46 & 0x40) != 0 )
          {
            v42 = v116;
            v43 = (unsigned __int8 *)(v116 + 2);
            if ( v10 < (unsigned int)(v116 + 2) )
              break;
            v116 += 2;
            *(_DWORD *)(v41 - 4) = *(v43 - 1) | ((unsigned __int8)*v42 << 8);
            v44 = (unsigned __int8 *)v116;
          }
          else
          {
            v44 = (unsigned __int8 *)(v116 + 1);
            if ( v10 < (unsigned int)(v116 + 1) )
              break;
            *(_DWORD *)(v41 - 4) = (unsigned __int8)*v116;
            v116 = (char *)v44;
          }
          if ( (v46 & 0x80) != 0 )
          {
            v45 = v44 + 3;
            if ( v10 < (unsigned int)v45 )
              break;
            v116 = (char *)v45;
            *(_DWORD *)(v41 - 8) = *(v45 - 1) | (*(v45 - 2) << 8) | ((char)*(v45 - 3) << 16);
          }
          else
          {
            if ( v10 < (unsigned int)(v44 + 2) )
              break;
            v116 = (char *)(v44 + 2);
            *(_DWORD *)(v41 - 8) = v44[1] | (*v44 << 8);
          }
          ++v40;
          ++*(_DWORD *)(a1 + 16);
          if ( v40 == v35 )
            goto LABEL_164;
          v37 = v116;
          v41 += 24;
          v38 = (unsigned __int8 *)(v116 + 1);
        }
        while ( v10 >= (unsigned int)(v116 + 1) );
      }
    }
  }
  v117[0] = (unsigned __int8 *)byte_8;
  FT_Message("pfr_glyph_load_compound: invalid glyph data\n");
LABEL_164:
  v7 = v117[0];
  FT_Stream_ExitFrame(v5);
  if ( !v7 )
  {
    v105 = *(_DWORD *)(a1 + 16) - v31;
    if ( v105 > 0 )
    {
      v77 = 24 * v31;
      v102 = 0;
      v106 = v5;
      do
      {
        v78 = *(_WORD *)(v100 + 22);
        rec = pfr_glyph_load_rec(
                a1,
                v106,
                a3,
                *(_DWORD *)(*(_DWORD *)(a1 + 24) + v77 + 16),
                *(_DWORD *)(*(_DWORD *)(a1 + 24) + v77 + 20));
        if ( rec )
          break;
        v79 = *(_DWORD *)(a1 + 24);
        v80 = *(_DWORD *)(v79 + v77);
        v81 = (int *)(v79 + v77);
        v82 = *(__int16 *)(v100 + 22) - v78;
        if ( v80 == 0x10000 && v81[1] == 0x10000 )
        {
          if ( v82 > 0 )
          {
            v88 = 0;
            v89 = *(_DWORD *)(v100 + 24) + 8 * v78;
            v90 = 0;
            do
            {
              ++v90;
              *(_DWORD *)(v89 + v88) += v81[2];
              v91 = v89 + v88;
              v92 = *(_DWORD *)(v89 + v88 + 4);
              v88 += 8;
              *(_DWORD *)(v91 + 4) = v92 + v81[3];
            }
            while ( v90 != v82 );
          }
        }
        else if ( v82 > 0 )
        {
          v83 = 0;
          v84 = *(_DWORD *)(v100 + 24) + 8 * v78;
          v85 = 0;
          while ( 1 )
          {
            ++v85;
            *(_DWORD *)(v84 + v83) = FT_MulFix(*(_DWORD *)(v84 + v83), v80) + v81[2];
            v86 = v84 + v83;
            v87 = FT_MulFix(*(_DWORD *)(v84 + v83 + 4), v81[1]);
            v83 += 8;
            *(_DWORD *)(v86 + 4) = v87 + v81[3];
            if ( v85 == v82 )
              break;
            v80 = *v81;
          }
        }
        v77 += 24;
        v60 = v105 == ++v102;
      }
      while ( !v60 );
      return (unsigned __int8 *)rec;
    }
  }
  return v7;
}


// ===== 7135d8 pfr_slot_load =====
int __fastcall pfr_slot_load(int a1, int a2, unsigned int a3, __int16 a4)
{
  _DWORD *v4; // r5
  unsigned int v5; // r7
  int v9; // r3
  unsigned __int8 *rec; // r8
  int v12; // r1
  _DWORD *v13; // r7
  int v14; // r8
  int v15; // r11
  unsigned int v16; // r9
  int v17; // r1
  int v18; // r2
  int v19; // r3
  _DWORD *v20; // r12
  int v21; // r6
  unsigned int v22; // r3
  int v23; // r2
  int v24; // r1
  int v25; // r0
  int v26; // r3
  int v27; // r2
  int v28; // r9
  int v29; // r7
  int v30; // r10
  int v31; // r11
  int v32; // r2
  int v33; // r3
  int v34; // r0
  _DWORD *v35; // r9
  int v36; // r2
  int *v37; // r11
  _DWORD *v38; // r8
  int v39; // r1
  int v40; // r2
  int v41; // r3
  int v42; // r3
  int v43; // r0
  unsigned int v44; // lr
  int v45; // r9
  unsigned int v46; // r2
  unsigned int v47; // r3
  unsigned int v48; // r1
  unsigned int v49; // r8
  unsigned int v50; // r3
  unsigned int v51; // r8
  unsigned int v52; // t1
  unsigned __int8 *v53; // r2
  int v54; // r2
  int v55; // r1
  int v56; // r0
  unsigned __int8 *v57; // r1
  unsigned int v58; // r0
  unsigned int v59; // r2
  int v60; // r3
  unsigned __int8 *v61; // r3
  int v62; // lr
  int v63; // r8
  int v64; // lr
  int v65; // r2
  int v66; // r1
  unsigned __int8 *v67; // r2
  int v68; // r12
  int v69; // r3
  char *v70; // r3
  int v71; // r2
  char *v72; // r3
  int v73; // r1
  int v74; // r0
  int v75; // lr
  _BYTE *v76; // r2
  int v77; // r9
  unsigned int v78; // r1
  char v79; // r1
  _BOOL4 v80; // r10
  _BYTE *v81; // r4
  int v82; // r6
  unsigned int v83; // r12
  int v84; // r5
  int v85; // r7
  int v86; // t1
  int v87; // r6
  int v88; // r7
  char v89; // r5
  char v90; // t1
  int v91; // r6
  int v92; // r7
  _BYTE *v93; // r5
  int v94; // r10
  char v95; // r12
  unsigned int v96; // r1
  int v97; // r4
  _BOOL4 v98; // r11
  int v99; // t1
  unsigned int v100; // r12
  int v101; // [sp+Ch] [bp-40h]
  int v102; // [sp+10h] [bp-3Ch]
  char *v103; // [sp+10h] [bp-3Ch]
  int *v104; // [sp+14h] [bp-38h]
  int v105; // [sp+18h] [bp-34h]
  unsigned int v106; // [sp+18h] [bp-34h]
  int v107; // [sp+18h] [bp-34h]
  unsigned int v108; // [sp+18h] [bp-34h]
  int v109; // [sp+1Ch] [bp-30h]
  int v110; // [sp+1Ch] [bp-30h]
  unsigned int v111; // [sp+1Ch] [bp-30h]
  unsigned int v112; // [sp+1Ch] [bp-30h]
  unsigned int v113; // [sp+20h] [bp-2Ch]
  int v114; // [sp+20h] [bp-2Ch]
  int *v115; // [sp+20h] [bp-2Ch]
  unsigned int v116; // [sp+24h] [bp-28h]
  int v117; // [sp+24h] [bp-28h]
  int v118; // [sp+28h] [bp-24h]
  int v119; // [sp+2Ch] [bp-20h]
  int v120; // [sp+30h] [bp-1Ch]
  _DWORD *v121; // [sp+34h] [bp-18h]
  int v122; // [sp+38h] [bp-14h] BYREF
  int v123; // [sp+3Ch] [bp-10h]
  int v124; // [sp+40h] [bp-Ch]
  int v125; // [sp+44h] [bp-8h]

  v4 = *(_DWORD **)(a1 + 4);
  v5 = a3;
  if ( a3 )
    v5 = a3 - 1;
  if ( !v4 || v5 >= v4[102] )
    return 6;
  v9 = a4 & 9;
  if ( (a4 & 9) != 0 )
    goto LABEL_6;
  v35 = *(_DWORD **)(a1 + 4);
  v36 = v35[95];
  v37 = (int *)v35[26];
  v105 = v35[104];
  v38 = (_DWORD *)v35[97];
  if ( !v36 )
    goto LABEL_6;
  v39 = *(unsigned __int16 *)(a2 + 12);
  while ( 1 )
  {
    ++v9;
    if ( *v38 == v39 && v38[1] == *(unsigned __int16 *)(a2 + 14) )
      break;
    if ( v9 == v36 )
      goto LABEL_6;
    v38 += 9;
  }
  v40 = v38[2];
  if ( (v40 & 1) != 0 )
    v41 = 5;
  else
    v41 = 4;
  if ( (v40 & 2) != 0 )
    ++v41;
  if ( (v40 & 4) != 0 )
    ++v41;
  v102 = v41;
  if ( FT_Stream_Seek(v37, v38[6] + v35[108]) || FT_Stream_EnterFrame((int)v37, v38[7] * v102) )
    goto LABEL_6;
  v42 = v38[2];
  if ( (v42 & 1) != 0 )
    v43 = 5;
  else
    v43 = 4;
  v113 = *(_DWORD *)(v105 + 16 * v5);
  v118 = v105 + 16 * v5;
  v109 = v38[2] & 1;
  v119 = v38[2] & 2;
  if ( (v42 & 2) != 0 )
    ++v43;
  v116 = v37[9];
  v44 = v38[7];
  v120 = v38[2] & 4;
  v121 = v35;
  if ( (v42 & 4) != 0 )
    ++v43;
  v106 = 0;
  v45 = v37[8];
LABEL_49:
  if ( v106 >= v44 )
    goto LABEL_91;
  v46 = (v44 + v106) >> 1;
  v47 = v45 + v43 * v46;
  if ( v116 < v47 + v43 )
    goto LABEL_91;
  v101 = a1;
  while ( 1 )
  {
    if ( v109 )
    {
      v48 = v47 + 2;
      v49 = *(unsigned __int8 *)v47;
      v47 = *(unsigned __int8 *)(v47 + 1);
    }
    else
    {
      v48 = v47 + 1;
      v49 = *(unsigned __int8 *)v47;
    }
    if ( v109 )
      v49 = v47 | (v49 << 8);
    v47 = v45 + v43 * ((v46 + v44) >> 1);
    if ( v113 == v49 )
      break;
    if ( v113 <= v49 )
    {
      v44 = v46;
      goto LABEL_49;
    }
    if ( v44 <= v46 || v116 < v47 + v43 )
      goto LABEL_91;
    v106 = v46;
    v46 = (v46 + v44) >> 1;
  }
  if ( v119 )
  {
    v50 = v48 + 2;
    v46 = *(unsigned __int8 *)(v48 + 1);
  }
  else
  {
    v50 = v48;
  }
  if ( v119 )
  {
    v51 = *(unsigned __int8 *)v48;
  }
  else
  {
    v52 = *(unsigned __int8 *)v50++;
    v51 = v52;
  }
  if ( v119 )
    v51 = v46 | (v51 << 8);
  if ( v120 )
  {
    v53 = (unsigned __int8 *)(v50 + 3);
    v48 = *(unsigned __int8 *)v50;
    v50 = *(unsigned __int8 *)(v50 + 2);
  }
  else
  {
    v53 = (unsigned __int8 *)*(unsigned __int8 *)v50;
  }
  if ( v120 )
    v53 = (unsigned __int8 *)*(v53 - 2);
  else
    v50 = *(unsigned __int8 *)(v50 + 1);
  if ( v120 )
    v50 |= v48 << 16;
  v110 = v50 | ((_DWORD)v53 << 8);
  FT_Stream_ExitFrame(v37);
  if ( v51 )
  {
    v54 = v121[76];
    v55 = v121[75];
    v56 = *(_DWORD *)(v118 + 4);
    if ( v54 != v55 )
      v56 = FT_MulDiv(v56, v55, v54);
    *(_DWORD *)(a1 + 56) = v56;
    v107 = FT_MulDiv(*(unsigned __int16 *)(a2 + 12) << 8, *(_DWORD *)(v118 + 4), v121[76]);
    if ( !FT_Stream_Seek(v37, v110 + v121[47]) && !FT_Stream_EnterFrame((int)v37, v51) )
    {
      v57 = (unsigned __int8 *)v37[8];
      v58 = v37[9];
      if ( v58 < (unsigned int)(v57 + 1) )
        goto LABEL_90;
      v59 = *v57;
      v60 = v59 & 3;
      switch ( v60 )
      {
        case 2:
          v61 = v57 + 5;
          if ( v58 < (unsigned int)(v57 + 5) )
            goto LABEL_90;
          v64 = v57[2] | ((char)v57[1] << 8);
          v63 = v57[4] | ((char)v57[3] << 8);
          break;
        case 3:
          v61 = v57 + 7;
          if ( v58 < (unsigned int)(v57 + 7) )
            goto LABEL_90;
          v63 = v57[6] | (v57[5] << 8) | ((char)v57[4] << 16);
          v64 = v57[3] | (v57[2] << 8) | ((char)v57[1] << 16);
          break;
        case 1:
          if ( v58 < (unsigned int)(v57 + 3) )
            goto LABEL_90;
          v64 = (char)v57[1];
          v61 = v57 + 3;
          v63 = (char)v57[2];
          break;
        default:
          v61 = v57 + 2;
          if ( v58 < (unsigned int)(v57 + 2) )
            goto LABEL_90;
          v62 = (char)v57[1];
          v63 = v62 << 28 >> 28;
          v64 = v62 >> 4;
          break;
      }
      v111 = v59 >> 2;
      v65 = (v59 >> 2) & 3;
      switch ( v65 )
      {
        case 2:
          if ( v58 < (unsigned int)(v61 + 2) )
            goto LABEL_90;
          v68 = *v61;
          v66 = v61[1];
          v67 = v61 + 2;
          break;
        case 3:
          if ( v58 < (unsigned int)(v61 + 4) )
            goto LABEL_90;
          v67 = v61 + 4;
          v68 = v61[1] | (*v61 << 8);
          v66 = v61[3] | (v61[2] << 8);
          break;
        case 1:
          v67 = v61 + 1;
          if ( v58 < (unsigned int)(v61 + 1) )
            goto LABEL_90;
          v100 = *v61;
          v66 = v100 & 0xF;
          v68 = v100 >> 4;
          break;
        default:
          v66 = 0;
          v67 = v61;
          v68 = 0;
          break;
      }
      v112 = v111 >> 2;
      v69 = v112 & 3;
      switch ( v69 )
      {
        case 2:
          v70 = (char *)(v67 + 2);
          if ( v58 < (unsigned int)(v67 + 2) )
            goto LABEL_90;
          v107 = v67[1] | ((char)*v67 << 8);
          break;
        case 3:
          v70 = (char *)(v67 + 3);
          if ( v58 < (unsigned int)(v67 + 3) )
            goto LABEL_90;
          v107 = v67[2] | (v67[1] << 8) | ((char)*v67 << 16);
          break;
        case 1:
          v70 = (char *)(v67 + 1);
          if ( v58 >= (unsigned int)(v67 + 1) )
          {
            v107 = (char)*v67 << 8;
            break;
          }
LABEL_90:
          FT_Message("pfr_load_bitmap_metrics: invalid glyph data\n");
          goto LABEL_91;
        default:
          v70 = (char *)v67;
          break;
      }
      *(_DWORD *)(a1 + 24) = v68 << 6;
      v114 = (v68 + 7) >> 3;
      v117 = -*(_DWORD *)(a1 + 24);
      *(_DWORD *)(a1 + 40) = ((v107 >> 2) + 32) & 0xFFFFFFC0;
      *(_DWORD *)(a1 + 44) = v117 >> 1;
      *(_DWORD *)(a1 + 28) = v66 << 6;
      *(_DWORD *)(a1 + 72) = 1651078259;
      *(_DWORD *)(a1 + 32) = v64 << 6;
      *(_BYTE *)(a1 + 94) = 1;
      *(_DWORD *)(a1 + 36) = v63 << 6;
      *(_DWORD *)(a1 + 76) = v66;
      *(_DWORD *)(a1 + 48) = 0;
      *(_DWORD *)(a1 + 80) = v68;
      *(_DWORD *)(a1 + 84) = v114;
      v71 = *(_DWORD *)(a2 + 32);
      *(_DWORD *)(a1 + 100) = v64;
      *(_DWORD *)(a1 + 104) = v66 + v63;
      *(_DWORD *)(a1 + 52) = v71;
      v103 = v70;
      rec = (unsigned __int8 *)ft_glyphslot_alloc_bitmap((_DWORD *)a1, v66 * v114);
      v72 = v103;
      if ( !rec )
      {
        v73 = *(_DWORD *)(a1 + 76);
        v108 = v37[9];
        if ( v73 > 0 )
        {
          v74 = *(_DWORD *)(a1 + 80);
          if ( v74 > 0 )
          {
            v75 = *(_DWORD *)(a1 + 84);
            v76 = *(_BYTE **)(a1 + 88);
            v77 = v73 * v74;
            if ( (v121[52] & 2) == 0 )
              v76 += v75 * (v73 - 1);
            v78 = v112 >> 2;
            if ( (v121[52] & 2) == 0 )
              v75 = -v75;
            if ( v78 == 1 )
            {
              v91 = 1;
              v92 = 0;
              v115 = v37;
              v93 = v76;
              v94 = *(_DWORD *)(a1 + 80);
              v95 = 0;
              v96 = 128;
              v97 = 0;
              v98 = 1;
              while ( v77 > 0 )
              {
                if ( v98 )
                {
                  do
                  {
                    if ( v91 )
                    {
                      if ( v108 <= (unsigned int)v72 )
                        goto LABEL_151;
                      v99 = (unsigned __int8)*v72++;
                      v91 = 0;
                      v92 = v99 & 0xF;
                      v97 = v99 >> 4;
                    }
                    else
                    {
                      v97 = v92;
                      v91 = 1;
                    }
                  }
                  while ( !v97 );
                }
                if ( v91 )
LABEL_151:
                  v95 |= v96;
                if ( --v94 )
                {
                  v96 >>= 1;
                  if ( !v96 )
                  {
                    *v93++ = v95;
                    v95 = 0;
                    v96 = 128;
                  }
                }
                else
                {
                  v76 += v75;
                  *v93 = v95;
                  v94 = v74;
                  v93 = v76;
                  v95 = 0;
                  v96 = 128;
                }
                v98 = --v97 <= 0;
                --v77;
              }
              v37 = v115;
              if ( v96 != 128 )
                *v93 = v95;
            }
            else
            {
              if ( v78 )
              {
                if ( v78 != 2 )
                {
                  FT_Message("pfr_read_bitmap_data: invalid image type\n", v78, v76, v103);
                  FT_Stream_ExitFrame(v37);
                  goto LABEL_6;
                }
                v79 = 0;
                v80 = 1;
                v81 = v76;
                v82 = *(_DWORD *)(v101 + 80);
                v83 = 128;
                v84 = 0;
                v85 = 1;
                while ( v77 > 0 )
                {
                  if ( v80 )
                  {
                    do
                    {
                      if ( v108 <= (unsigned int)v72 )
                        break;
                      v86 = (unsigned __int8)*v72++;
                      v84 = v86;
                      v85 ^= 1u;
                    }
                    while ( !v86 );
                  }
                  if ( v85 )
                    v79 |= v83;
                  if ( --v82 )
                  {
                    v83 >>= 1;
                    if ( !v83 )
                    {
                      *v81++ = v79;
                      v79 = 0;
                      v83 = 128;
                    }
                  }
                  else
                  {
                    *v81 = v79;
                    v81 = &v76[v75];
                    v76 += v75;
                    v82 = v74;
                    v79 = 0;
                    v83 = 128;
                  }
                  v80 = --v84 <= 0;
                  --v77;
                }
              }
              else
              {
                v87 = *(_DWORD *)(a1 + 80);
                v83 = 128;
                if ( (int)(8 * (v108 - (_DWORD)v103)) < v77 )
                  v77 = 8 * (v108 - (_DWORD)v103);
                v79 = 0;
                v88 = v77 & 7;
                v81 = v76;
                v89 = 0;
                while ( v77 > 0 )
                {
                  if ( v88 == (v77 & 7) )
                  {
                    v90 = *v72++;
                    v89 = v90;
                  }
                  if ( v89 < 0 )
                    v79 |= v83;
                  --v87;
                  v89 *= 2;
                  if ( v87 )
                  {
                    v83 >>= 1;
                    if ( !v83 )
                    {
                      *v81++ = v79;
                      v79 = 0;
                      v83 = 128;
                    }
                  }
                  else
                  {
                    v76 += v75;
                    *v81 = v79;
                    v87 = v74;
                    v81 = v76;
                    v79 = 0;
                    v83 = 128;
                  }
                  --v77;
                }
              }
              if ( v83 != 128 )
                *v81 = v79;
            }
          }
        }
        FT_Stream_ExitFrame(v37);
        return (int)rec;
      }
LABEL_91:
      FT_Stream_ExitFrame(v37);
    }
  }
LABEL_6:
  if ( (a4 & 0x4000) != 0 )
    return 6;
  v12 = v4[104];
  *(_DWORD *)(a1 + 72) = 1869968492;
  *(_WORD *)(a1 + 110) = 0;
  *(_WORD *)(a1 + 108) = 0;
  v13 = (_DWORD *)(v12 + 16 * v5);
  v14 = v13[3];
  v15 = v4[47];
  v16 = v13[2];
  v104 = (int *)v4[26];
  FT_GlyphLoader_Rewind(*(_DWORD *)(a1 + 188));
  *(_DWORD *)(a1 + 176) = 0;
  rec = pfr_glyph_load_rec(a1 + 160, v104, v15, v14, v16);
  if ( !rec )
  {
    v17 = *(_DWORD *)(*(_DWORD *)(a1 + 188) + 24);
    v18 = *(_DWORD *)(*(_DWORD *)(a1 + 188) + 28);
    v19 = *(_DWORD *)(*(_DWORD *)(a1 + 188) + 32);
    v20 = (_DWORD *)(*(_DWORD *)(a1 + 188) + 36);
    *(_DWORD *)(a1 + 108) = *(_DWORD *)(*(_DWORD *)(a1 + 188) + 20);
    *(_DWORD *)(a1 + 112) = v17;
    *(_DWORD *)(a1 + 116) = v18;
    *(_DWORD *)(a1 + 120) = v19;
    v21 = a4 & 1;
    v22 = *v20 & 0xFFFFFFFE;
    *(_DWORD *)(a1 + 124) = *v20 & 0xFFFFFFFA | 4;
    if ( a2 && *(unsigned __int16 *)(a2 + 14) <= 0x17u )
      *(_DWORD *)(a1 + 124) = v22 | 0x104;
    *(_DWORD *)(a1 + 52) = 0;
    *(_DWORD *)(a1 + 40) = 0;
    v23 = v4[76];
    v24 = v4[75];
    v25 = v13[1];
    if ( v23 != v24 )
      v25 = FT_MulDiv(v25, v24, v23);
    v26 = v4[81];
    if ( (v26 & 1) != 0 )
      *(_DWORD *)(a1 + 52) = v25;
    v27 = *(_DWORD *)(a1 + 52);
    if ( (v26 & 1) != 0 )
      v25 = *(_DWORD *)(a1 + 40);
    else
      *(_DWORD *)(a1 + 40) = v25;
    *(_DWORD *)(a1 + 56) = v25;
    *(_DWORD *)(a1 + 60) = v27;
    *(_DWORD *)(a1 + 48) = 0;
    *(_DWORD *)(a1 + 44) = 0;
    if ( !v21 )
    {
      v28 = *(_DWORD *)(a2 + 20);
      v29 = *(_DWORD *)(a1 + 112);
      v30 = *(_DWORD *)(a2 + 16);
      if ( *(__int16 *)(a1 + 110) > 0 )
      {
        v31 = 0;
        do
        {
          *(_DWORD *)(v29 + v21) = FT_MulFix(*(_DWORD *)(v29 + v21), v30);
          *(_DWORD *)(v29 + v21 + 4) = FT_MulFix(*(_DWORD *)(v29 + v21 + 4), v28);
          ++v31;
          v21 += 8;
        }
        while ( *(__int16 *)(a1 + 110) > v31 );
      }
      *(_DWORD *)(a1 + 40) = FT_MulFix(*(_DWORD *)(a1 + 40), v30);
      *(_DWORD *)(a1 + 52) = FT_MulFix(*(_DWORD *)(a1 + 52), v28);
    }
    FT_Outline_Get_CBox(a1 + 108, &v122);
    v32 = v122;
    v33 = v125 - v123;
    v34 = v124 - v122;
    *(_DWORD *)(a1 + 36) = v123;
    *(_DWORD *)(a1 + 24) = v34;
    *(_DWORD *)(a1 + 32) = v32;
    *(_DWORD *)(a1 + 28) = v33;
  }
  return (int)rec;
}


// ===== 713ff8 pfr_slot_done =====
int __fastcall pfr_slot_done(int a1)
{
  int v2; // r6
  int result; // r0

  v2 = **(_DWORD **)(a1 + 188);
  ft_mem_free(v2, *(_DWORD *)(a1 + 168));
  *(_DWORD *)(a1 + 168) = 0;
  *(_DWORD *)(a1 + 172) = 0;
  *(_DWORD *)(a1 + 164) = 0;
  result = ft_mem_free(v2, *(_DWORD *)(a1 + 184));
  *(_BYTE *)(a1 + 192) = 0;
  *(_DWORD *)(a1 + 184) = 0;
  *(_DWORD *)(a1 + 180) = 0;
  *(_DWORD *)(a1 + 176) = 0;
  *(_DWORD *)(a1 + 188) = 0;
  return result;
}


// ===== 714048 pfr_face_done =====
int __fastcall pfr_face_done(_DWORD *a1)
{
  int v1; // r6
  int v3; // r7
  int v4; // r1
  int v5; // r1
  int v6; // r1
  int v7; // r1
  int v8; // r1
  int v9; // r1
  int v10; // r1
  _DWORD *v11; // r1
  _DWORD *v12; // r5
  int result; // r0

  v3 = *(_DWORD *)(a1[24] + 8);
  v1 = a1[25];
  v4 = a1[92];
  a1[5] = 0;
  a1[6] = 0;
  ft_mem_free(v1, v4);
  v5 = a1[93];
  a1[92] = 0;
  ft_mem_free(v1, v5);
  v6 = a1[94];
  a1[93] = 0;
  ft_mem_free(v1, v6);
  v7 = a1[91];
  a1[94] = 0;
  ft_mem_free(v1, v7);
  v8 = a1[97];
  a1[91] = 0;
  a1[90] = 0;
  a1[88] = 0;
  a1[87] = 0;
  ft_mem_free(v1, v8);
  v9 = a1[104];
  a1[97] = 0;
  a1[95] = 0;
  a1[96] = 0;
  ft_mem_free(v1, v9);
  v10 = a1[99];
  a1[104] = 0;
  a1[102] = 0;
  a1[103] = 0;
  ft_mem_free(v1, v10);
  v11 = (_DWORD *)a1[106];
  a1[98] = 0;
  a1[99] = 0;
  if ( v11 )
  {
    while ( 1 )
    {
      v12 = (_DWORD *)*v11;
      ft_mem_free(v1, (int)v11);
      if ( !v12 )
        break;
      v11 = v12;
    }
  }
  a1[106] = 0;
  a1[107] = 0;
  a1[105] = 0;
  result = ft_mem_free(v3, a1[8]);
  a1[8] = 0;
  return result;
}


// ===== 714144 pfr_slot_init =====
int __fastcall pfr_slot_init(int a1)
{
  int v2; // r0

  v2 = **(_DWORD **)(a1 + 156);
  *(_DWORD *)(a1 + 160) = 0;
  *(_DWORD *)(a1 + 164) = 0;
  *(_DWORD *)(a1 + 188) = v2;
  *(_DWORD *)(a1 + 168) = 0;
  *(_DWORD *)(a1 + 172) = 0;
  *(_DWORD *)(a1 + 176) = 0;
  *(_DWORD *)(a1 + 180) = 0;
  *(_DWORD *)(a1 + 184) = 0;
  *(_DWORD *)(a1 + 192) = 0;
  FT_GlyphLoader_Rewind(v2);
  return 0;
}


// ===== 714188 pfr_extra_item_load_kerning_pairs =====
int __fastcall pfr_extra_item_load_kerning_pairs(_BYTE *a1, unsigned int a2, int a3)
{
  int v6; // r6
  _BYTE *v7; // r1
  int result; // r0
  _BYTE *v9; // r3
  int v10; // r0
  char v11; // r2
  int v12; // r12
  int v13; // r8
  bool v14; // zf
  int v15; // r2
  int v16; // r6
  int v17; // r2
  int v18; // [sp+4h] [bp-4h] BYREF

  v18 = 0;
  v6 = *(_DWORD *)a3;
  if ( dword_A355DC > 1 )
    FT_Message("pfr_extra_item_load_kerning_pairs()\n");
  v7 = ft_mem_alloc(v6, 24, &v18);
  result = v18;
  if ( !v18 )
  {
    v9 = a1 + 4;
    if ( a2 < (unsigned int)(a1 + 4) )
      goto LABEL_15;
    v10 = 3;
    v7[4] = *a1;
    *((_WORD *)v7 + 3) = (unsigned __int8)a1[2] | (unsigned __int16)((char)a1[1] << 8);
    v11 = a1[3];
    v7[5] = v11;
    v12 = *(_DWORD *)(a3 + 148);
    v13 = *(_DWORD *)(a3 + 4);
    *((_DWORD *)v7 + 2) = 3;
    if ( (v11 & 1) != 0 )
    {
      v10 = 5;
      *((_DWORD *)v7 + 2) = 5;
    }
    v14 = (v11 & 2) == 0;
    v15 = (unsigned __int8)v7[4];
    if ( !v14 )
      *((_DWORD *)v7 + 2) = ++v10;
    *((_DWORD *)v7 + 3) = &v9[v13 - v12];
    if ( a2 < (unsigned int)&v9[v15 * v10] )
    {
LABEL_15:
      ft_mem_free(v6, (int)v7);
      v18 = 8;
      FT_Message("pfr_extra_item_load_kerning_pairs: invalid kerning pairs table\n");
      return v18;
    }
    else if ( v15 )
    {
      if ( (v7[5] & 1) != 0 )
      {
        v17 = *((_DWORD *)v7 + 2) * (v15 - 1);
        *((_DWORD *)v7 + 4) = (unsigned __int8)a1[7]
                            | ((unsigned __int8)a1[6] << 8)
                            | (((unsigned __int8)a1[5] | ((unsigned __int8)a1[4] << 8)) << 16);
        *((_DWORD *)v7 + 5) = (unsigned __int8)v9[v17 + 3]
                            | ((unsigned __int8)v9[v17 + 2] << 8)
                            | (((unsigned __int8)v9[v17 + 1] | ((unsigned __int8)v9[v17] << 8)) << 16);
      }
      else
      {
        v16 = *((_DWORD *)v7 + 2);
        *((_DWORD *)v7 + 4) = (unsigned __int8)a1[5] | ((unsigned __int8)a1[4] << 16);
        *((_DWORD *)v7 + 5) = (unsigned __int8)v9[v16 * (v15 - 1) + 1] | ((unsigned __int8)v9[v16 * (v15 - 1)] << 16);
      }
      *(_DWORD *)v7 = 0;
      **(_DWORD **)(a3 + 140) = v7;
      *(_DWORD *)(a3 + 140) = v7;
      result = v18;
      *(_DWORD *)(a3 + 132) += (unsigned __int8)v7[4];
    }
    else
    {
      ft_mem_free(v6, (int)v7);
      return v18;
    }
  }
  return result;
}


// ===== 71437c pfr_extra_item_load_font_id =====
int __fastcall pfr_extra_item_load_font_id(const void *a1, int a2, int *a3)
{
  int v3; // r3
  int v4; // r5
  size_t v8; // r7
  void *v9; // r0
  int v10; // [sp+4h] [bp-8h] BYREF

  v3 = a3[20];
  v4 = 0;
  v10 = 0;
  if ( !v3 )
  {
    v8 = a2 - (_DWORD)a1;
    v9 = ft_mem_alloc(*a3, a2 - (_DWORD)a1 + 1, &v10);
    v4 = v10;
    a3[20] = (int)v9;
    if ( !v4 )
    {
      memcpy(v9, a1, v8);
      *(_BYTE *)(a3[20] + v8) = 0;
      return v10;
    }
  }
  return v4;
}


// ===== 7143ec pfr_aux_name_load =====
int __fastcall pfr_aux_name_load(_BYTE *a1, size_t a2, int a3, _DWORD *a4)
{
  size_t v4; // r4
  int v7; // r0
  int v8; // r3
  _BYTE *v9; // r0
  int v10; // r6
  _BYTE *v11; // r7
  int v13; // [sp+4h] [bp-4h] BYREF

  v4 = a2;
  v13 = 0;
  if ( !a2 )
    goto LABEL_13;
  if ( a1[a2 - 1] )
  {
    v7 = 1;
  }
  else
  {
    v4 = a2 - 1;
    if ( a2 == 1 )
    {
      v7 = 0;
      goto LABEL_10;
    }
    v7 = 1;
  }
  if ( (unsigned __int8)(*a1 - 32) > 0x5Fu )
    goto LABEL_13;
  v8 = 0;
  while ( ++v8 < v4 )
  {
    if ( (unsigned __int8)(a1[v8] - 32) > 0x5Fu )
      goto LABEL_13;
  }
LABEL_10:
  if ( !v7 )
  {
LABEL_13:
    v10 = v13;
    v11 = nullptr;
    goto LABEL_14;
  }
  v9 = ft_mem_alloc(a3, v4 + 1, &v13);
  v10 = v13;
  v11 = v9;
  if ( !v13 )
  {
    memcpy(v9, a1, v4);
    v11[v4] = 0;
    v10 = v13;
  }
LABEL_14:
  *a4 = v11;
  return v10;
}


// ===== 7144cc pfr_face_init =====
int __fastcall pfr_face_init(int *a1, int a2, int a3)
{
  unsigned __int8 *Fields; // r2
  int v8; // r12
  unsigned __int16 v9; // r0
  int v10; // r10
  unsigned __int16 v11; // r0
  unsigned __int16 v12; // r0
  unsigned __int16 v13; // r9
  unsigned int v14; // r0
  unsigned __int8 *v15; // r2
  unsigned int v16; // r9
  unsigned __int8 *v17; // r0
  unsigned __int8 v18; // r3
  int v19; // r1
  unsigned int v20; // r1
  unsigned __int8 *v21; // r0
  int v22; // r2
  unsigned __int8 *v23; // r2
  int v24; // r1
  unsigned __int8 *v25; // r2
  unsigned __int8 *v26; // r3
  unsigned __int8 *v27; // r2
  int v28; // r0
  int v29; // r1
  int v30; // r1
  unsigned __int8 *v31; // r2
  int v32; // r3
  int v33; // r9
  unsigned int v34; // r10
  unsigned int v35; // r11
  unsigned __int8 *v36; // r3
  unsigned __int8 *v37; // r1
  int v38; // r12
  int v39; // r0
  unsigned __int8 *v40; // r2
  int v41; // r0
  int v42; // r3
  int v43; // r1
  int v44; // r3
  unsigned __int8 *v45; // r2
  int v46; // r0
  int v47; // r3
  int v48; // r12
  int v49; // r0
  int v50; // lr
  int v51; // r12
  int v52; // r3
  unsigned __int8 *v53; // r3
  unsigned __int8 *v54; // r8
  int v55; // r12
  unsigned __int8 *v56; // r2
  int v57; // r10
  unsigned int v58; // r5
  unsigned __int8 *v59; // r3
  unsigned int v60; // r4
  _BOOL4 v61; // r1
  _BYTE *v62; // r0
  int v63; // r1
  int v64; // r0
  int v65; // r0
  int v66; // r2
  int v67; // r3
  int v68; // r3
  int v69; // r2
  int v70; // r3
  int v71; // r3
  bool v72; // zf
  int v73; // r3
  int v74; // r1
  int v75; // r2
  int v76; // r3
  int v77; // r0
  __int16 v78; // r2
  __int16 v79; // r1
  __int16 v80; // r3
  int v81; // r12
  int v82; // r6
  unsigned __int16 v83; // kr00_2
  __int16 v84; // lr
  int v85; // r3
  bool v86; // zf
  int v87; // r3
  int v88; // r1
  int v89; // r2
  int v90; // r0
  int v91; // r0
  int v92; // r12
  int v93; // r0
  int v94; // r1
  unsigned __int8 *v95; // r3
  int v96; // lr
  unsigned __int8 *v97; // r0
  unsigned __int8 *v98; // r3
  unsigned int v99; // r8
  int v100; // r0
  unsigned int v101; // r3
  int v102; // r1
  unsigned __int8 *v103; // r3
  unsigned __int8 *v104; // lr
  int v105; // r12
  int v106; // r0
  int v107; // r12
  int v108; // r2
  int v109; // r12
  int v110; // r1
  unsigned int v111; // r8
  int v112; // r0
  unsigned __int8 *v113; // r3
  int v114; // r3
  unsigned int i; // r3
  int v116; // r0
  _DWORD *v117; // r12
  unsigned __int8 *v118; // r1
  _DWORD *v119; // r2
  unsigned int v120; // r10
  unsigned __int8 *v121; // r1
  unsigned __int8 *v122; // r1
  int v123; // r1
  unsigned __int8 *v124; // r1
  int v125; // r0
  unsigned __int8 *v126; // r1
  unsigned __int8 *v127; // r0
  int v128; // r1
  unsigned __int8 *v129; // r1
  char v130; // [sp+Ch] [bp-38h]
  unsigned __int8 *v131; // [sp+10h] [bp-34h]
  _DWORD *v132; // [sp+14h] [bp-30h]
  unsigned int v133; // [sp+18h] [bp-2Ch]
  int v134; // [sp+1Ch] [bp-28h]
  _DWORD *v135; // [sp+20h] [bp-24h]
  _DWORD *v136; // [sp+24h] [bp-20h]
  signed int *v137[2]; // [sp+28h] [bp-1Ch] BYREF
  __int16 v138; // [sp+30h] [bp-14h]
  __int16 v139; // [sp+32h] [bp-12h]
  unsigned __int8 *v140; // [sp+34h] [bp-10h] BYREF
  unsigned __int8 *v141; // [sp+38h] [bp-Ch] BYREF
  unsigned __int8 *v142; // [sp+3Ch] [bp-8h] BYREF

  Fields = (unsigned __int8 *)FT_Stream_Seek(a1, 0);
  if ( Fields )
    return (int)Fields;
  Fields = (unsigned __int8 *)FT_Stream_ReadFields(a1, (int)&pfr_header_fields, a2 + 132);
  if ( Fields )
    return (int)Fields;
  v8 = *(_DWORD *)(a2 + 132);
  *(_DWORD *)(a2 + 168) += *(_DWORD *)(a2 + 204) << 16;
  v142 = nullptr;
  if ( v8 != 1346785840 || *(_DWORD *)(a2 + 136) > 4u || *(_DWORD *)(a2 + 144) <= 0x39u || *(_DWORD *)(a2 + 140) != 3338 )
  {
    if ( dword_A355DC > 3 )
      FT_Message("pfr_face_init: not a valid PFR font\n");
    return 2;
  }
  Fields = (unsigned __int8 *)FT_Stream_Seek(a1, *(_DWORD *)(a2 + 152));
  v140 = Fields;
  if ( !Fields )
  {
    v9 = FT_Stream_ReadShort(a1, &v140);
    Fields = v140;
    if ( !v140 )
    {
      v142 = nullptr;
      *(_DWORD *)a2 = v9;
      if ( a3 >= 0 )
      {
        if ( v9 <= a3 )
        {
          FT_Message("pfr_face_init: invalid face index\n");
          return 6;
        }
        v10 = *(_DWORD *)(a2 + 204);
        Fields = (unsigned __int8 *)FT_Stream_Seek(a1, *(_DWORD *)(a2 + 152));
        v140 = Fields;
        if ( !Fields )
        {
          v11 = FT_Stream_ReadShort(a1, &v140);
          Fields = v140;
          if ( !v140 )
          {
            if ( a3 >= (unsigned int)v11 )
              return 6;
            Fields = (unsigned __int8 *)FT_Stream_Skip(a1, 5 * a3);
            v140 = Fields;
            if ( !Fields )
            {
              v12 = FT_Stream_ReadShort(a1, &v140);
              Fields = v140;
              v13 = v12;
              if ( !v140 )
              {
                v14 = FT_Stream_ReadOffset(a1, &v140);
                Fields = v140;
                if ( !v140 )
                {
                  *(_DWORD *)(a2 + 244) = v14;
                  *(_DWORD *)(a2 + 240) = v13;
                  Fields = (unsigned __int8 *)FT_Stream_Seek(a1, v14);
                  v140 = Fields;
                  if ( !Fields )
                  {
                    Fields = (unsigned __int8 *)FT_Stream_EnterFrame((int)a1, v13);
                    v140 = Fields;
                    if ( !Fields )
                    {
                      v15 = (unsigned __int8 *)a1[8];
                      v16 = (unsigned int)&v15[v13];
                      v17 = v15 + 13;
                      v141 = v15;
                      if ( v16 < (unsigned int)(v15 + 13) )
                        goto LABEL_183;
                      v141 = v15 + 3;
                      *(_DWORD *)(a2 + 248) = v15[2] | (v15[1] << 8) | ((char)*v15 << 16);
                      v141 = v15 + 6;
                      *(_DWORD *)(a2 + 252) = v15[5] | (v15[4] << 8) | ((char)v15[3] << 16);
                      v141 = v15 + 9;
                      *(_DWORD *)(a2 + 256) = v15[8] | (v15[7] << 8) | ((char)v15[6] << 16);
                      v141 = v15 + 12;
                      *(_DWORD *)(a2 + 260) = v15[11] | (v15[10] << 8) | ((char)v15[9] << 16);
                      v18 = v15[12];
                      v141 = v15 + 13;
                      if ( (v18 & 4) != 0 )
                      {
                        if ( (v18 & 8) != 0 )
                          v19 = 2;
                        else
                          v19 = 1;
                        if ( (v18 & 3) == 0 )
                          v19 += 3;
                      }
                      else
                      {
                        v19 = 0;
                      }
                      if ( (v18 & 0x10) != 0 )
                      {
                        ++v19;
                        if ( (v18 & 0x20) != 0 )
                          ++v19;
                      }
                      v20 = (unsigned int)&v17[v19];
                      if ( v16 < v20 )
                        goto LABEL_183;
                      if ( (v18 & 4) != 0 )
                      {
                        if ( (v18 & 8) != 0 )
                        {
                          v21 = v15 + 15;
                          v141 = v21;
                          v22 = v15[14];
                          v20 = (char)*(v21 - 2);
                        }
                        else
                        {
                          v22 = v15[13];
                          v21 = v17 + 1;
                        }
                        if ( (v18 & 8) != 0 )
                          v22 |= v20 << 8;
                        else
                          v141 = v21;
                        *(_DWORD *)(a2 + 268) = v22;
                        if ( (v18 & 3) == 0 )
                        {
                          v141 += 3;
                          *(_DWORD *)(a2 + 276) = *(v141 - 1) | (*(v141 - 2) << 8) | ((char)*(v141 - 3) << 16);
                        }
                      }
                      if ( (v18 & 0x10) != 0 )
                      {
                        v23 = v141;
                        if ( (v18 & 0x20) != 0 )
                        {
                          v141 += 2;
                          v24 = v23[1];
                          v25 = (unsigned __int8 *)(char)*v23;
                        }
                        else
                        {
                          v25 = v141 + 1;
                          v24 = *v141;
                        }
                        if ( (v18 & 0x20) != 0 )
                          v24 |= (_DWORD)v25 << 8;
                        else
                          v141 = v25;
                        *(_DWORD *)(a2 + 272) = v24;
                      }
                      if ( (v18 & 0x40) == 0
                        || (v140 = (unsigned __int8 *)pfr_extra_items_parse(&v141, v16, nullptr, 0)) == nullptr )
                      {
                        v26 = v141;
                        v27 = v141 + 5;
                        if ( v16 < (unsigned int)(v141 + 5) )
                          goto LABEL_183;
                        v141 += 2;
                        v28 = *v26;
                        v29 = v26[1];
                        v141 = v27;
                        v30 = v29 | (v28 << 8);
                        *(_DWORD *)(a2 + 280) = v30;
                        *(_DWORD *)(a2 + 284) = *(v27 - 1) | (v26[2] << 16) | (*(v27 - 2) << 8);
                        if ( v10 )
                        {
                          v31 = v26 + 6;
                          if ( v16 >= (unsigned int)(v26 + 6) )
                          {
                            v32 = v26[5];
                            v141 = v31;
                            *(_DWORD *)(a2 + 280) = v30 + (v32 << 16);
                            goto LABEL_58;
                          }
LABEL_183:
                          FT_Message("pfr_log_font_load: invalid logical font table\n");
                          v140 = (unsigned __int8 *)byte_8;
                        }
                      }
LABEL_58:
                      FT_Stream_ExitFrame(a1);
                      Fields = v140;
                      v142 = v140;
                      if ( v140 )
                        return (int)Fields;
                      v33 = a1[7];
                      v34 = *(_DWORD *)(a2 + 284);
                      *(_DWORD *)(a2 + 288) = v33;
                      *(_DWORD *)(a2 + 292) = v34;
                      v35 = *(_DWORD *)(a2 + 280);
                      *(_DWORD *)(a2 + 424) = 0;
                      *(_DWORD *)(a2 + 428) = a2 + 424;
                      Fields = (unsigned __int8 *)FT_Stream_Seek(a1, v34);
                      v141 = Fields;
                      if ( Fields )
                        return (int)Fields;
                      Fields = (unsigned __int8 *)FT_Stream_EnterFrame((int)a1, v35);
                      v141 = Fields;
                      if ( Fields )
                        return (int)Fields;
                      *(_DWORD *)(a2 + 436) = a1[8];
                      v36 = (unsigned __int8 *)a1[8];
                      v131 = &v36[v35];
                      v140 = v36;
                      if ( &v36[v35] < v36 + 15 )
                        goto LABEL_81;
                      v37 = v36 + 2;
                      v140 = v36 + 2;
                      v38 = *v36;
                      v39 = v36[1];
                      v40 = v36 + 4;
                      v140 = v36 + 4;
                      *(_DWORD *)(a2 + 296) = v39 | (v38 << 8);
                      v41 = v36[2];
                      v42 = v36[3];
                      v40 += 2;
                      v140 = v40;
                      *(_DWORD *)(a2 + 300) = v42 | (v41 << 8);
                      v43 = v37[2];
                      v44 = *(v40 - 1);
                      v45 = v40 + 2;
                      v140 = v45;
                      *(_DWORD *)(a2 + 304) = v44 | (v43 << 8);
                      v46 = (char)*(v45 - 2);
                      v47 = *(v45 - 1);
                      v140 = v45 + 2;
                      *(_DWORD *)(a2 + 308) = v47 | (v46 << 8);
                      v48 = (char)*v45;
                      v49 = v45[1];
                      v140 = v45 + 4;
                      *(_DWORD *)(a2 + 312) = v49 | (v48 << 8);
                      v50 = (char)v45[2];
                      v51 = v45[3];
                      v140 = v45 + 6;
                      *(_DWORD *)(a2 + 316) = v51 | (v50 << 8);
                      *(_DWORD *)(a2 + 320) = v45[5] | ((char)v45[4] << 8);
                      v52 = v45[6];
                      v140 = v45 + 7;
                      v130 = v52;
                      v134 = v52 & 4;
                      *(_DWORD *)(a2 + 324) = v52;
                      if ( (v52 & 4) == 0 )
                      {
                        if ( v131 < v45 + 9 )
                          goto LABEL_81;
                        v140 = v45 + 9;
                        *(_DWORD *)(a2 + 328) = v45[8] | ((char)v45[7] << 8);
                      }
                      v132 = (_DWORD *)(a2 + 288);
                      if ( (v52 & 0x80) != 0 )
                      {
                        v141 = (unsigned __int8 *)pfr_extra_items_parse(
                                                    &v140,
                                                    (unsigned int)v131,
                                                    &pfr_phy_font_extra_items,
                                                    a2 + 288);
                        if ( v141 )
                          goto LABEL_82;
                      }
                      v53 = v140;
                      v54 = v140 + 3;
                      if ( v131 >= v140 + 3 )
                      {
                        v140 += 3;
                        v55 = *(v54 - 1) | (*v53 << 16) | (*(v54 - 2) << 8);
                        if ( v55 )
                        {
                          v56 = &v54[v55];
                          if ( v131 >= &v54[v55] )
                          {
                            v133 = v34;
                            v57 = a2;
                            v140 = &v54[v55];
                            v135 = (_DWORD *)(a2 + 372);
                            v136 = (_DWORD *)(a2 + 376);
                            v58 = v55;
                            while ( 1 )
                            {
                              if ( v56 < v54 + 4 )
                                goto LABEL_130;
                              v59 = v54 + 2;
                              v60 = v54[1] | (*v54 << 8);
                              v61 = v60 <= 3;
                              if ( v60 > v58 )
                                v61 = 1;
                              if ( v61 )
                              {
LABEL_130:
                                a2 = v57;
                                v34 = v133;
                                goto LABEL_131;
                              }
                              v62 = v54 + 4;
                              v54 += v60;
                              v63 = v59[1] | (*v59 << 8);
                              if ( v63 == 2 )
                              {
                                if ( v54 >= v59 + 34 )
                                {
                                  v132[11] = v59[13] | ((char)v59[12] << 8);
                                  v56 = v140;
                                  v132[12] = v59[15] | ((char)v59[14] << 8);
                                  v132[13] = v59[17] | ((char)v59[16] << 8);
                                }
                                goto LABEL_72;
                              }
                              if ( v63 == 3 )
                                break;
                              if ( v63 == 1 )
                              {
                                v97 = (unsigned __int8 *)pfr_aux_name_load(v62, v60 - 4, v33, v135);
                                v141 = v97;
                                if ( v97 )
                                  return (int)v97;
LABEL_127:
                                v56 = v140;
                              }
LABEL_72:
                              v58 -= v60;
                              if ( !v58 )
                                goto LABEL_130;
                            }
                            v97 = (unsigned __int8 *)pfr_aux_name_load(v62, v60 - 4, v33, v136);
                            v141 = v97;
                            if ( v97 )
                              return (int)v97;
                            goto LABEL_127;
                          }
                          goto LABEL_81;
                        }
LABEL_131:
                        v98 = v140 + 1;
                        if ( v131 >= v140 + 1 )
                        {
                          v99 = *v140++;
                          *(_DWORD *)(a2 + 392) = v99;
                          if ( v131 >= &v98[2 * v99] )
                          {
                            v100 = ft_mem_realloc(v33, 4, 0, v99, 0, (int *)&v141);
                            v101 = (unsigned int)v141;
                            *(_DWORD *)(a2 + 396) = v100;
                            if ( v101 )
                              goto LABEL_82;
                            while ( v99 > v101 )
                            {
                              v102 = v132[27];
                              v140 += 2;
                              *(_DWORD *)(v102 + 4 * v101++) = *(v140 - 1) | ((char)*(v140 - 2) << 8);
                            }
                            v103 = v140;
                            v104 = v140 + 8;
                            if ( v131 >= v140 + 8 )
                            {
                              v105 = *v140++;
                              *(_DWORD *)(a2 + 400) = v105;
                              v106 = v103[1];
                              v140 = v103 + 4;
                              *(_DWORD *)(a2 + 404) = v106;
                              v107 = v103[3];
                              v108 = v103[2];
                              v140 = v103 + 6;
                              *(_DWORD *)(a2 + 356) = v107 | (v108 << 8);
                              v109 = v103[5];
                              v110 = v103[4];
                              v140 = v104;
                              *(_DWORD *)(a2 + 344) = v109 | (v110 << 8);
                              v111 = *(v104 - 1) | (v103[6] << 8);
                              *(_DWORD *)(a2 + 408) = v111;
                              *(_DWORD *)(a2 + 412) = &v104[v34 - a1[8]];
                              v112 = ft_mem_realloc(v33, 16, 0, v111, 0, (int *)&v141);
                              v113 = v141;
                              *(_DWORD *)(a2 + 416) = v112;
                              if ( v113 )
                                goto LABEL_82;
                              if ( (v130 & 2) != 0 )
                                v114 = 5;
                              else
                                v114 = 4;
                              if ( v134 )
                                v114 += 2;
                              if ( (v130 & 8) != 0 )
                                ++v114;
                              if ( (v130 & 0x10) != 0 )
                                ++v114;
                              if ( (v130 & 0x20) != 0 )
                                ++v114;
                              if ( v131 >= &v140[v111 * v114] )
                              {
                                for ( i = 0; v111 > i; ++i )
                                {
                                  v116 = 16 * i;
                                  v117 = (_DWORD *)v132[32];
                                  v118 = v140;
                                  v119 = &v117[4 * i];
                                  if ( (v130 & 2) != 0 )
                                  {
                                    v120 = (unsigned int)(v140 + 2);
                                    v140 += 2;
                                    v121 = (unsigned __int8 *)*v118;
                                  }
                                  else
                                  {
                                    v121 = v140 + 1;
                                    v120 = *v140;
                                  }
                                  if ( (v130 & 2) != 0 )
                                    v120 = *(unsigned __int8 *)(v120 - 1);
                                  else
                                    v140 = v121;
                                  if ( (v130 & 2) != 0 )
                                    v120 |= (_DWORD)v121 << 8;
                                  v122 = (unsigned __int8 *)v134;
                                  v117[4 * i] = v120;
                                  if ( v134 )
                                    v122 = v140;
                                  else
                                    v117 = v132;
                                  if ( v134 )
                                  {
                                    v140 = v122 + 2;
                                    v116 = v122[1];
                                    v123 = (char)*v122;
                                  }
                                  else
                                  {
                                    v123 = v117[10];
                                  }
                                  if ( v134 )
                                    v123 = v116 | (v123 << 8);
                                  v119[1] = v123;
                                  if ( (v130 & 8) != 0 )
                                    ++v140;
                                  v124 = v140;
                                  if ( (v130 & 0x10) != 0 )
                                  {
                                    v140 += 2;
                                    v125 = v124[1];
                                    v126 = (unsigned __int8 *)*v124;
                                  }
                                  else
                                  {
                                    v126 = v140 + 1;
                                    v125 = *v140;
                                  }
                                  if ( (v130 & 0x10) != 0 )
                                    v125 |= (_DWORD)v126 << 8;
                                  else
                                    v140 = v126;
                                  v119[2] = v125;
                                  if ( (v130 & 0x20) != 0 )
                                  {
                                    v127 = v140;
                                    v140 += 3;
                                    v128 = *(v140 - 1) | (*v127 << 16) | (*(v140 - 2) << 8);
                                  }
                                  else
                                  {
                                    v129 = v140;
                                    v140 += 2;
                                    v128 = *(v140 - 1) | (*v129 << 8);
                                  }
                                  v119[3] = v128;
                                }
LABEL_82:
                                FT_Stream_ExitFrame(a1);
                                v64 = FT_Stream_Pos((int)a1);
                                Fields = v141;
                                *(_DWORD *)(a2 + 432) = v64;
                                *(_DWORD *)(a2 + 436) = 0;
                                v142 = Fields;
                                if ( Fields )
                                  return (int)Fields;
                                v65 = *(_DWORD *)(a2 + 408);
                                *(_DWORD *)(a2 + 4) = a3;
                                *(_DWORD *)(a2 + 16) = v65 + 1;
                                *(_DWORD *)(a2 + 8) = 1;
                                if ( v65 )
                                {
                                  v66 = *(_DWORD *)(a2 + 416);
                                  v67 = *(_DWORD *)(v66 + 12);
                                  if ( v67 )
                                  {
LABEL_114:
                                    v68 = 1;
                                    goto LABEL_89;
                                  }
                                  while ( 1 )
                                  {
                                    ++v67;
                                    v66 += 16;
                                    if ( v67 == v65 )
                                      break;
                                    if ( *(_DWORD *)(v66 + 12) )
                                      goto LABEL_114;
                                  }
                                }
                                v68 = 0;
                                *(_DWORD *)(a2 + 8) = 0;
LABEL_89:
                                v69 = *(_DWORD *)(a2 + 324);
                                if ( (v69 & 4) == 0 )
                                {
                                  v68 |= 4u;
                                  *(_DWORD *)(a2 + 8) = v68;
                                }
                                if ( (v69 & 1) != 0 )
                                  v70 = v68 | 0x20;
                                else
                                  v70 = v68 | 0x10;
                                *(_DWORD *)(a2 + 8) = v70;
                                v71 = *(_DWORD *)(a2 + 380);
                                v72 = v71 == 0;
                                if ( v71 )
                                  v71 = *(_DWORD *)(a2 + 8);
                                *(_DWORD *)(a2 + 24) = *(_DWORD *)(a2 + 376);
                                if ( !v72 )
                                  *(_DWORD *)(a2 + 8) = v71 | 2;
                                if ( *(_DWORD *)(a2 + 420) )
                                  *(_DWORD *)(a2 + 8) |= 0x40u;
                                v73 = *(_DWORD *)(a2 + 372);
                                *(_DWORD *)(a2 + 20) = v73;
                                if ( !v73 )
                                  *(_DWORD *)(a2 + 20) = *(_DWORD *)(a2 + 368);
                                *(_DWORD *)(a2 + 32) = 0;
                                *(_DWORD *)(a2 + 28) = 0;
                                v74 = *(_DWORD *)(a2 + 312);
                                v75 = *(_DWORD *)(a2 + 316);
                                v76 = *(_DWORD *)(a2 + 320);
                                *(_DWORD *)(a2 + 52) = *(_DWORD *)(a2 + 308);
                                *(_DWORD *)(a2 + 56) = v74;
                                *(_DWORD *)(a2 + 60) = v75;
                                *(_DWORD *)(a2 + 64) = v76;
                                v77 = (unsigned __int16)*(_DWORD *)(a2 + 300);
                                v78 = *(_DWORD *)(a2 + 312);
                                v79 = *(_DWORD *)(a2 + 320);
                                v80 = (unsigned int)((unsigned __int64)(20615843028LL * v77) >> 32) >> 2;
                                v81 = v79 - v78;
                                v82 = *(_DWORD *)(a2 + 380);
                                *(_WORD *)(a2 + 72) = v78;
                                if ( v80 < v81 )
                                  v78 = v79 - v78;
                                *(_WORD *)(a2 + 74) = v80;
                                if ( v80 < v81 )
                                  *(_WORD *)(a2 + 74) = v78;
                                *(_WORD *)(a2 + 68) = v77;
                                *(_WORD *)(a2 + 70) = v79;
                                if ( v82 )
                                {
                                  v91 = ft_mem_realloc(
                                          *(_DWORD *)(*(_DWORD *)(a2 + 104) + 28),
                                          16,
                                          0,
                                          v82,
                                          0,
                                          (int *)&v142);
                                  Fields = v142;
                                  *(_DWORD *)(a2 + 32) = v91;
                                  if ( Fields )
                                    return (int)Fields;
                                  v92 = *(_DWORD *)(a2 + 388);
                                  v93 = v91 + 16;
                                  v94 = 0;
                                  do
                                  {
                                    v95 = &Fields[v92];
                                    ++v94;
                                    *(_WORD *)(v93 - 16) = *(_WORD *)&Fields[v92 + 4];
                                    *(_WORD *)(v93 - 14) = *(_WORD *)&Fields[v92];
                                    *(_DWORD *)(v93 - 12) = *(_DWORD *)&Fields[v92 + 4] << 6;
                                    v96 = *(_DWORD *)&Fields[v92];
                                    Fields += 36;
                                    *(_DWORD *)(v93 - 8) = v96 << 6;
                                    *(_DWORD *)(v93 - 4) = *((_DWORD *)v95 + 1) << 6;
                                    v93 += 16;
                                  }
                                  while ( v94 != v82 );
                                  *(_DWORD *)(a2 + 28) = v94;
                                }
                                if ( (*(_DWORD *)(a2 + 324) & 4) != 0 )
                                {
                                  v87 = *(_DWORD *)(a2 + 408);
                                  if ( v87 )
                                  {
                                    v89 = 0;
                                    v88 = 0;
                                    do
                                    {
                                      v90 = *(_DWORD *)(*(_DWORD *)(a2 + 416) + v89 + 4);
                                      v89 += 16;
                                      if ( v88 < v90 )
                                        v88 = v90;
                                      --v87;
                                    }
                                    while ( v87 );
                                  }
                                  else
                                  {
                                    LOWORD(v88) = 0;
                                  }
                                  *(_WORD *)(a2 + 76) = v88;
                                }
                                else
                                {
                                  *(_WORD *)(a2 + 76) = *(_DWORD *)(a2 + 328);
                                }
                                v83 = *(_WORD *)(a2 + 68);
                                v84 = *(_WORD *)(a2 + 74);
                                *(_WORD *)(a2 + 82) = v83 / 0x1Eu;
                                *(_WORD *)(a2 + 80) = v83 / -10;
                                *(_WORD *)(a2 + 78) = v84;
                                v137[1] = (signed int *)1970170211;
                                v137[0] = (signed int *)a2;
                                v138 = 3;
                                v139 = 1;
                                FT_CMap_New(&pfr_cmap_class_rec, 0, v137, nullptr);
                                v85 = *(_DWORD *)(a2 + 420);
                                v86 = v85 == 0;
                                if ( v85 )
                                  v85 = *(_DWORD *)(a2 + 8);
                                Fields = v142;
                                if ( !v86 )
                                  *(_DWORD *)(a2 + 8) = v85 | 0x40;
                                return (int)Fields;
                              }
                            }
                          }
                        }
                      }
LABEL_81:
                      v141 = (unsigned __int8 *)byte_8;
                      FT_Message("pfr_phy_font_load: invalid physical font table\n");
                      goto LABEL_82;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  return (int)Fields;
}


// ===== 715204 pfr_get_service =====
const char *__fastcall pfr_get_service(int a1, char *a2)
{
  return ft_service_list_lookup((const char **)&pfr_services, a2);
}


// ===== 715214 pfr_face_get_kerning =====
int __fastcall pfr_face_get_kerning(_DWORD *a1, unsigned int a2, unsigned int a3, _DWORD *a4)
{
  unsigned int v4; // r12
  int *v5; // r4
  int *v6; // r6
  unsigned int v7; // r5
  int v8; // r7
  int v10; // r10
  unsigned int v11; // r8
  int v12; // r0
  char v13; // lr
  unsigned __int8 *v14; // r12
  int v15; // lr
  int v16; // r2
  unsigned __int8 *v17; // r1
  unsigned __int8 *v18; // r1
  unsigned int v19; // r11
  unsigned int v20; // r2
  unsigned int v21; // r6
  unsigned __int8 *v22; // r0
  int v23; // r2
  int v24; // r1
  int v25; // r2
  int v27; // [sp+8h] [bp-Ch]
  int *v28; // [sp+Ch] [bp-8h]

  a4[1] = 0;
  *a4 = 0;
  v4 = a1[102];
  if ( a2 )
    --a2;
  if ( a3 )
    --a3;
  if ( a2 > v4 )
    return 0;
  if ( a3 > v4 )
    return 0;
  v5 = (int *)a1[106];
  v6 = (int *)a1[26];
  v7 = (unsigned __int16)*(_DWORD *)(a1[104] + 16 * a3) | (*(_DWORD *)(a1[104] + 16 * a2) << 16);
  if ( !v5 )
    return 0;
  while ( v7 < v5[4] || v7 > v5[5] )
  {
    v5 = (int *)*v5;
    if ( !v5 )
      return 0;
  }
  v8 = FT_Stream_Seek((_DWORD *)a1[26], v5[3]);
  if ( !v8 )
  {
    v8 = FT_Stream_EnterFrame((int)v6, v5[2] * *((unsigned __int8 *)v5 + 4));
    if ( !v8 )
    {
      v10 = *((unsigned __int8 *)v5 + 4);
      v11 = v5[2];
      v12 = ft_highpow2(v10);
      v13 = *((_BYTE *)v5 + 5);
      v14 = (unsigned __int8 *)v6[8];
      v27 = v13 & 2;
      v15 = v13 & 1;
      if ( v10 != v12 )
      {
        v16 = v11 * (v10 - v12);
        v17 = &v14[v16];
        if ( v15 )
        {
          v18 = v17 + 4;
          v19 = *(v18 - 1) | (v14[v16] << 24) | (*(v18 - 3) << 16) | (*(v18 - 2) << 8);
        }
        else
        {
          v18 = v17 + 2;
          v19 = *(v18 - 1) | (v14[v16] << 16);
        }
        if ( v19 == v7 )
        {
LABEL_33:
          v23 = v27;
          if ( v27 )
          {
            v23 = v18[1];
            v24 = (char)*v18;
          }
          else
          {
            v24 = *v18;
          }
          if ( v27 )
            v24 = v23 | (v24 << 8);
          *a4 = v24 + *((__int16 *)v5 + 3);
LABEL_39:
          FT_Stream_ExitFrame(v6);
          return v8;
        }
        if ( v19 < v7 )
        {
          if ( v27 )
            v14 = v18 + 2;
          else
            v14 = v18 + 1;
        }
      }
      v20 = v11 * v12;
      if ( v11 < v11 * v12 )
      {
        v28 = v6;
        do
        {
          v20 >>= 1;
          v22 = &v14[v20];
          if ( v15 )
          {
            v18 = v22 + 4;
            v21 = _byteswap_ulong(*(_DWORD *)&v14[v20]);
          }
          else
          {
            v18 = v22 + 2;
            v21 = v22[1] | (v14[v20] << 16);
          }
          if ( v21 == v7 )
          {
            v6 = v28;
            goto LABEL_33;
          }
          if ( v21 < v7 )
            v14 += v20;
        }
        while ( v11 < v20 );
        v6 = v28;
      }
      if ( v15 )
      {
        v18 = v14 + 4;
        v25 = _byteswap_ulong(*(_DWORD *)v14);
      }
      else
      {
        v18 = v14 + 2;
        v25 = v14[1] | (*v14 << 16);
      }
      if ( v25 != v7 )
        goto LABEL_39;
      goto LABEL_33;
    }
  }
  return v8;
}


// ===== 715454 pfr_get_kerning =====
int __fastcall pfr_get_kerning(_DWORD *a1, unsigned int a2, unsigned int a3, int *a4)
{
  int v6; // r1
  int v7; // r2

  pfr_face_get_kerning(a1, a2, a3, a4);
  v6 = a1[75];
  v7 = a1[76];
  if ( v6 == v7 )
    return 0;
  if ( *a4 )
    *a4 = FT_MulDiv(*a4, v6, v7);
  if ( !a4[1] )
    return 0;
  a4[1] = FT_MulDiv(*a4, a1[75], a1[76]);
  return 0;
}


// ===== 7154bc pfr_get_metrics =====
int __fastcall pfr_get_metrics(_DWORD *a1, unsigned int **a2, unsigned int **a3, unsigned int *a4, unsigned int *a5)
{
  unsigned int *v5; // r7
  int v6; // r5
  unsigned int v8; // r0
  unsigned int v9; // r8

  v5 = a4;
  if ( a2 )
    a4 = (unsigned int *)a1[75];
  v6 = a1[22];
  if ( a2 )
    *a2 = a4;
  if ( a3 )
    a4 = (unsigned int *)a1[76];
  if ( a3 )
    *a3 = a4;
  if ( v6 )
  {
    v9 = FT_DivFix(*(unsigned __int16 *)(v6 + 12) << 6, a1[76]);
    v8 = FT_DivFix(*(unsigned __int16 *)(v6 + 14) << 6, a1[76]);
  }
  else
  {
    v8 = 0x10000;
    v9 = 0x10000;
  }
  if ( v5 )
    *v5 = v9;
  if ( a5 )
    *a5 = v8;
  return 0;
}


// ===== 715534 skip_spaces =====
_BYTE **__fastcall skip_spaces(_BYTE **result, _BYTE *a2)
{
  _BYTE *i; // r3
  int v3; // r2
  bool v4; // zf
  int v5; // r2
  bool v6; // zf

  for ( i = *result; a2 > i; ++i )
  {
    v3 = (unsigned __int8)*i;
    if ( v3 != 32 )
    {
      v4 = v3 == 10;
      if ( v3 != 10 )
        v4 = v3 == 13;
      if ( !v4 && v3 != 9 && v3 != 12 && *i )
      {
        if ( v3 != 37 )
          break;
        if ( a2 > i )
        {
          do
          {
            if ( ++i == a2 )
              break;
            v5 = (unsigned __int8)*i;
            v6 = v5 == 13;
            if ( v5 != 13 )
              v6 = v5 == 10;
          }
          while ( !v6 );
        }
      }
    }
  }
  *result = i;
  return result;
}


// ===== 7155b4 skip_literal_string =====
int __fastcall skip_literal_string(_BYTE **a1, _BYTE *a2)
{
  _BYTE *v2; // r3
  int v4; // r4
  int v5; // r0
  int v6; // t1
  int result; // r0
  unsigned int v8; // r0
  _BOOL4 v9; // r12

  v2 = *a1;
  if ( *a1 < a2 )
  {
    v4 = 0;
    while ( 2 )
    {
      while ( 1 )
      {
        v6 = (unsigned __int8)*v2++;
        v5 = v6;
        if ( v6 == 92 )
          break;
        if ( v5 == 40 )
        {
          ++v4;
        }
        else if ( v5 == 41 && !--v4 )
        {
          result = 0;
          goto LABEL_12;
        }
LABEL_6:
        if ( a2 <= v2 )
          goto LABEL_11;
      }
      if ( v2 != a2 )
      {
        switch ( *v2 )
        {
          case '(':
          case ')':
          case '\\':
          case 'b':
          case 'f':
          case 'n':
          case 'r':
          case 't':
            if ( a2 <= ++v2 )
              break;
            continue;
          default:
            if ( a2 > v2 && (unsigned __int8)(*v2 - 48) <= 7u )
            {
              v8 = 0;
              do
              {
                ++v2;
                ++v8;
                v9 = a2 > v2;
                if ( v8 > 2 )
                  v9 = 0;
              }
              while ( v9 && (unsigned __int8)(*v2 - 48) <= 7u );
            }
            goto LABEL_6;
        }
      }
      break;
    }
  }
LABEL_11:
  result = 3;
LABEL_12:
  *a1 = v2;
  return result;
}


// ===== 7157d0 ps_parser_skip_spaces =====
_BYTE **__fastcall ps_parser_skip_spaces(_BYTE **a1)
{
  return skip_spaces(a1, a1[2]);
}


// ===== 7157d8 ps_parser_init =====
int (*__fastcall ps_parser_init(_DWORD *a1, int a2, int a3, int a4))()
{
  _DWORD *v4; // r12

  a1[4] = a4;
  a1[2] = a3;
  a1[3] = 0;
  *a1 = a2;
  a1[1] = a2;
  a1[5] = ps_parser_init;
  a1[6] = ps_parser_done;
  a1[7] = ps_parser_skip_spaces;
  a1[8] = ps_parser_skip_PS_token;
  a1[9] = ps_parser_to_int;
  a1[10] = ps_parser_to_fixed;
  a1[11] = ps_parser_to_bytes;
  a1[12] = ps_parser_to_coord_array;
  v4 = a1 + 13;
  *v4 = ps_parser_to_fixed_array;
  v4[1] = ps_parser_to_token;
  v4[2] = ps_parser_to_token_array;
  v4[3] = ps_parser_load_field;
  v4[4] = ps_parser_load_field_table;
  return ps_parser_to_fixed_array;
}


// ===== 715838 ps_parser_done =====
void ps_parser_done()
{
  ;
}


// ===== 71583c t1_builder_done =====
int __fastcall t1_builder_done(int result)
{
  int v1; // r12
  int *v2; // r4
  int *v3; // r12
  int v4; // r1
  int v5; // r2
  int v6; // r3

  v1 = *(_DWORD *)(result + 8);
  if ( v1 )
  {
    v2 = *(int **)(result + 16);
    v3 = (int *)(v1 + 108);
    result = *v2;
    v4 = v2[1];
    v5 = v2[2];
    v6 = v2[3];
    *v3 = *v2;
    v3[1] = v4;
    v3[2] = v5;
    v3[3] = v6;
    v3[4] = v2[4];
  }
  return result;
}


// ===== 71586c t1_builder_add_point =====
int __fastcall t1_builder_add_point(int result, int a2, int a3, int a4)
{
  int v4; // r12
  int v5; // r4
  int v6; // r5
  int v7; // r7
  int v8; // r6
  char v9; // r3

  v4 = *(_DWORD *)(result + 20);
  if ( *(_BYTE *)(result + 76) )
  {
    v5 = *(__int16 *)(v4 + 2);
    v6 = *(_DWORD *)(v4 + 4);
    v7 = *(_DWORD *)(v4 + 8);
    if ( *(_BYTE *)(result + 78) )
    {
      a2 >>= 16;
      a3 >>= 16;
    }
    v8 = v6 + 8 * v5;
    if ( a4 )
      v9 = 1;
    else
      v9 = 2;
    *(_DWORD *)(v6 + 8 * v5) = a2;
    *(_DWORD *)(v8 + 4) = a3;
    *(_BYTE *)(v7 + v5) = v9;
    *(_DWORD *)(result + 24) = *(_DWORD *)(v6 + 8 * v5);
    *(_DWORD *)(result + 28) = *(_DWORD *)(v8 + 4);
  }
  ++*(_WORD *)(v4 + 2);
  return result;
}


// ===== 7158d8 t1_builder_close_contour =====
int __fastcall t1_builder_close_contour(int result)
{
  __int16 *v1; // r3
  __int16 v2; // r4
  __int16 v3; // r5
  int v4; // r2
  int v5; // r1
  int v6; // r12
  int v7; // r6
  int v8; // r7
  int v9; // r8
  int v10; // r1
  __int16 v11; // r1
  int v12; // r12

  v1 = *(__int16 **)(result + 20);
  if ( v1 )
  {
    v2 = *v1;
    v3 = v1[1];
    v4 = *v1;
    if ( v4 <= 1 )
      result = 0;
    else
      result = *(__int16 *)(*((_DWORD *)v1 + 3) + 2 * v2 - 4) + 1;
    if ( v3 > 1 )
    {
      v5 = *((_DWORD *)v1 + 1);
      v6 = v3 - 1;
      v7 = *(_DWORD *)(v5 + 8 * v6);
      v8 = *(_DWORD *)(v5 + 8 * result);
      v9 = v5 + 8 * result;
      v10 = v5 + 8 * v6;
      if ( v8 == v7 && *(_DWORD *)(v9 + 4) == *(_DWORD *)(v10 + 4) && *(_BYTE *)(*((_DWORD *)v1 + 2) + v6) == 1 )
      {
        v1[1] = v3 - 1;
        v4 = v2;
      }
    }
    if ( v4 > 0 )
    {
      v11 = v1[1];
      v12 = v11 - 1;
      if ( result == v12 )
      {
        --v2;
        --v11;
      }
      else
      {
        v1 = *((__int16 **)v1 + 3);
      }
      if ( result == v12 )
      {
        v1[1] = v11;
        *v1 = v2;
      }
      else
      {
        --v11;
        v4 = (int)&v1[v4];
      }
      if ( result != v12 )
        *(_WORD *)(v4 - 2) = v11;
    }
  }
  return result;
}


// ===== 7159a4 t1_decrypt =====
int __fastcall t1_decrypt(int result, int a2, __int16 a3)
{
  int i; // r3
  __int16 v5; // r4

  if ( a2 )
  {
    for ( i = 0; i != a2; ++i )
    {
      v5 = *(unsigned __int8 *)(result + i);
      *(_BYTE *)(result + i) = v5 ^ HIBYTE(a3);
      a3 = -12691 * (a3 + v5) + 22719;
    }
  }
  return result;
}


// ===== 7159f0 t1_decoder_done =====
int __fastcall t1_decoder_done(int result)
{
  int v1; // r12
  int *v2; // r4
  int *v3; // r12
  int v4; // r1
  int v5; // r2
  int v6; // r3

  v1 = *(_DWORD *)(result + 8);
  if ( v1 )
  {
    v2 = *(int **)(result + 16);
    v3 = (int *)(v1 + 108);
    result = *v2;
    v4 = v2[1];
    v5 = v2[2];
    v6 = v2[3];
    *v3 = *v2;
    v3[1] = v4;
    v3[2] = v5;
    v3[3] = v6;
    v3[4] = v2[4];
  }
  return result;
}


// ===== 715a20 t1_cmap_std_done =====
_DWORD *__fastcall t1_cmap_std_done(_DWORD *result)
{
  result[4] = 0;
  result[6] = 0;
  result[7] = 0;
  result[5] = 0;
  return result;
}


// ===== 715a38 t1_cmap_custom_done =====
_DWORD *__fastcall t1_cmap_custom_done(_DWORD *result)
{
  result[5] = 0;
  result[6] = 0;
  result[4] = 0;
  return result;
}


// ===== 715a4c t1_cmap_custom_char_index =====
int __fastcall t1_cmap_custom_char_index(_DWORD *a1, unsigned int a2)
{
  unsigned int v2; // r3

  v2 = a1[4];
  if ( v2 > a2 || a2 >= v2 + a1[5] )
    return 0;
  else
    return *(unsigned __int16 *)(a1[6] + 2 * a2);
}


// ===== 715a80 t1_cmap_custom_char_next =====
int __fastcall t1_cmap_custom_char_next(_DWORD *a1, unsigned int *a2)
{
  unsigned int v2; // r3
  unsigned int v3; // r2
  unsigned int v4; // r4
  int result; // r0
  int v6; // r12
  unsigned int v7; // r3
  unsigned __int16 *v8; // r12
  int v9; // t1

  v2 = a1[4];
  v3 = *a2 + 1;
  if ( v3 < v2 )
    v3 = a1[4];
  v4 = v2 + a1[5];
  if ( v4 > v3 )
  {
    v6 = a1[6];
    result = *(unsigned __int16 *)(v6 + 2 * v3);
    if ( !*(_WORD *)(v6 + 2 * v3) )
    {
      v7 = v3 + 1;
      v8 = (unsigned __int16 *)(v6 + 2 * (v3 + 1));
      while ( 1 )
      {
        v3 = v7;
        if ( v4 <= v7 )
          break;
        v9 = *v8++;
        result = v9;
        ++v7;
        if ( v9 )
          goto LABEL_11;
      }
      result = 0;
      v3 = 0;
    }
  }
  else
  {
    v3 = 0;
    result = 0;
  }
LABEL_11:
  *a2 = v3;
  return result;
}


// ===== 715b00 t1_get_glyph_name =====
int __fastcall t1_get_glyph_name(int a1, int a2)
{
  return *(_DWORD *)(*(_DWORD *)(a1 + 416) + 4 * a2);
}


// ===== 715b0c t1_cmap_unicode_init =====
int __fastcall t1_cmap_unicode_init(_DWORD *a1)
{
  return (*(int (__fastcall **)(_DWORD, _DWORD *, _DWORD, int (__fastcall *)(int, int), _DWORD, _DWORD))(*(_DWORD *)(*a1 + 480) + 4))(
           *(_DWORD *)(*a1 + 100),
           a1,
           *(_DWORD *)(*a1 + 412),
           t1_get_glyph_name,
           0,
           *a1);
}


// ===== 715b54 t1_cmap_unicode_char_index =====
int __fastcall t1_cmap_unicode_char_index(int a1)
{
  return (*(int (**)(void))(*(_DWORD *)(*(_DWORD *)a1 + 480) + 8))();
}


// ===== 715b6c t1_cmap_unicode_char_next =====
int __fastcall t1_cmap_unicode_char_next(int a1)
{
  return (*(int (**)(void))(*(_DWORD *)(*(_DWORD *)a1 + 480) + 12))();
}


// ===== 715b84 afm_stream_read_one =====
unsigned __int8 *__fastcall afm_stream_read_one(unsigned __int8 *result)
{
  _DWORD *v1; // r1
  unsigned __int8 *v2; // r3
  unsigned int v3; // r12
  int v4; // r2
  int v5; // t1
  bool v6; // zf
  bool v7; // zf
  unsigned __int8 *v8; // r2
  int v9; // r3
  bool v10; // zf
  bool v11; // zf

  v1 = result;
  if ( *((int *)result + 3) > 0 )
    return nullptr;
  v2 = *(unsigned __int8 **)result;
  v3 = *((_DWORD *)result + 2);
  do
  {
    if ( v3 <= (unsigned int)v2 )
      goto LABEL_6;
    v5 = *v2++;
    v4 = v5;
    v6 = v5 == 9;
    if ( v5 != 9 )
      v6 = v4 == 32;
    *(_DWORD *)result = v2;
  }
  while ( v6 );
  v7 = v4 == 13;
  if ( v4 != 13 )
    v7 = v4 == 10;
  if ( v7 )
    v2 = (_BYTE *)(&dword_0 + 2);
  else
    result = nullptr;
  if ( v7 )
  {
    v1[3] = v2;
    return nullptr;
  }
  else if ( v4 == 59 )
  {
LABEL_18:
    v1[3] = 1;
  }
  else
  {
    if ( v4 == 26 )
    {
LABEL_6:
      v1[3] = 3;
      return nullptr;
    }
    result = v2 - 1;
    while ( 1 )
    {
      if ( v3 <= (unsigned int)v2 )
      {
LABEL_22:
        v1[3] = 3;
        return result;
      }
      v8 = v2 + 1;
      v9 = *v2;
      v10 = v9 == 32;
      if ( v9 != 32 )
        v10 = v9 == 9;
      *v1 = v8;
      if ( v10 )
        return result;
      v11 = v9 == 13;
      if ( v9 != 13 )
        v11 = v9 == 10;
      if ( v11 )
        break;
      if ( v9 == 59 )
        goto LABEL_18;
      if ( v9 == 26 )
        goto LABEL_22;
      v2 = v8;
    }
    v1[3] = 2;
  }
  return result;
}


// ===== 715c7c afm_stream_read_string =====
int __fastcall afm_stream_read_string(unsigned __int8 **a1)
{
  int v1; // r12
  unsigned int v3; // r1
  int result; // r0
  unsigned __int8 *v5; // r3
  int v6; // r12
  int v7; // t1
  bool v8; // zf
  unsigned __int8 *v9; // r3
  int v10; // r0
  int v11; // t1
  bool v12; // zf
  bool v13; // zf

  v1 = (int)a1[3];
  if ( v1 > 0 )
  {
LABEL_2:
    if ( v1 > 1 )
      return 0;
    v3 = (unsigned int)a1[2];
    goto LABEL_5;
  }
  v9 = *a1;
  v3 = (unsigned int)a1[2];
  do
  {
    if ( v3 <= (unsigned int)v9 )
      goto LABEL_15;
    v11 = *v9++;
    v10 = v11;
    v12 = v11 == 9;
    if ( v11 != 9 )
      v12 = v10 == 32;
    *a1 = v9;
  }
  while ( v12 );
  v13 = v10 == 13;
  if ( v10 != 13 )
    v13 = v10 == 10;
  if ( v13 )
  {
    a1[3] = (_BYTE *)(&dword_0 + 2);
    return 0;
  }
  if ( v10 != 59 )
  {
    if ( v10 == 26 )
    {
LABEL_15:
      a1[3] = (_BYTE *)(&dword_0 + 3);
      return 0;
    }
    goto LABEL_2;
  }
  a1[3] = (_BYTE *)(&dword_0 + 1);
LABEL_5:
  v5 = *a1;
  result = (int)(*a1 - 1);
  while ( 1 )
  {
    if ( v3 <= (unsigned int)v5 )
    {
LABEL_7:
      a1[3] = (_BYTE *)(&dword_0 + 3);
      return result;
    }
    v7 = *v5++;
    v6 = v7;
    v8 = v7 == 13;
    if ( v7 != 13 )
      v8 = v6 == 10;
    *a1 = v5;
    if ( v8 )
      break;
    if ( v6 == 26 )
      goto LABEL_7;
  }
  a1[3] = (_BYTE *)(&dword_0 + 2);
  return result;
}


// ===== 715d4c afm_compare_kern_pairs =====
int __fastcall afm_compare_kern_pairs(_DWORD *a1, _DWORD *a2)
{
  return (a1[1] | (*a1 << 16)) - (a2[1] | (*a2 << 16));
}


// ===== 715d6c PS_Conv_Strtol =====
int __fastcall PS_Conv_Strtol(_BYTE **a1, _BYTE *a2, int a3)
{
  _BYTE *v3; // r3
  bool v5; // cc
  int v6; // r0
  bool v7; // zf
  _BOOL4 v8; // r7
  int v9; // r4
  bool v10; // zf
  int result; // r0
  int v12; // r4
  int v13; // r4
  bool v14; // zf

  v3 = *a1;
  v5 = (int)*a1 <= (int)a2;
  if ( *a1 != a2 )
    v5 = a3 <= 1;
  if ( v5 || a3 > 36 )
    return 0;
  v6 = (unsigned __int8)*v3;
  v7 = v6 == 45;
  if ( v6 != 45 )
    v7 = v6 == 43;
  if ( v7 )
  {
    if ( ++v3 != a2 )
    {
      v8 = v6 == 45;
      goto LABEL_10;
    }
    return 0;
  }
  v8 = 0;
LABEL_10:
  if ( a2 <= v3 )
    goto LABEL_40;
  v9 = (unsigned __int8)*v3;
  if ( v9 == 32 )
    goto LABEL_40;
  v10 = v9 == 10;
  if ( v9 != 10 )
    v10 = v9 == 13;
  if ( v10 || (result = 0, v9 == 9 || v9 == 12 || !*v3 || (v9 & 0x80) != 0 || (v12 = ft_char_table[v9 & 0x7F], v12 < 0)) )
  {
LABEL_40:
    result = 0;
  }
  else
  {
    do
    {
      if ( a3 <= v12 )
        break;
      ++v3;
      result = v12 + a3 * result;
      if ( v3 == a2 )
        break;
      v13 = (unsigned __int8)*v3;
      if ( v13 == 32 )
        break;
      v14 = v13 == 13;
      if ( v13 != 13 )
        v14 = v13 == 10;
      if ( v14 )
        break;
      if ( v13 == 9 )
        break;
      if ( v13 == 12 )
        break;
      if ( !*v3 )
        break;
      if ( (v13 & 0x80) != 0 )
        break;
      v12 = ft_char_table[v13 & 0x7F];
    }
    while ( v12 >= 0 );
  }
  if ( v8 )
    result = -result;
  *a1 = v3;
  return result;
}


// ===== 715eb8 PS_Conv_ToInt =====
int __fastcall PS_Conv_ToInt(_BYTE **a1, _BYTE *a2)
{
  int result; // r0
  _BYTE *v5; // r3

  result = PS_Conv_Strtol(a1, a2, 10);
  v5 = *a1;
  if ( a2 > *a1 && *v5 == 35 )
  {
    *a1 = v5 + 1;
    return PS_Conv_Strtol(a1, a2, result);
  }
  return result;
}


// ===== 715f08 ps_parser_to_int =====
int __fastcall ps_parser_to_int(_BYTE **a1)
{
  ps_parser_skip_spaces(a1);
  return PS_Conv_ToInt(a1, a1[2]);
}


// ===== 715f24 t1_cmap_unicode_done =====
int __fastcall t1_cmap_unicode_done(_DWORD *a1)
{
  int result; // r0

  result = ft_mem_free(*(_DWORD *)(*a1 + 100), a1[5]);
  a1[4] = 0;
  a1[5] = 0;
  return result;
}


// ===== 715f4c afm_parser_done =====
int __fastcall afm_parser_done(int *a1)
{
  int result; // r0

  result = ft_mem_free(*a1, a1[1]);
  a1[1] = 0;
  return result;
}


// ===== 715f6c ps_table_release =====
int *__fastcall ps_table_release(int *result)
{
  int *v1; // r4
  int v2; // r5
  int v3; // r1

  v1 = result;
  v2 = result[8];
  if ( result[3] == -559038737 )
  {
    ft_mem_free(result[8], *result);
    v3 = v1[6];
    *v1 = 0;
    ft_mem_free(v2, v3);
    v1[6] = 0;
    result = (int *)ft_mem_free(v2, v1[7]);
    v1[3] = 0;
    v1[7] = 0;
  }
  return result;
}


// ===== 715fcc t1_cmap_custom_init =====
int __fastcall t1_cmap_custom_init(_DWORD *a1)
{
  _DWORD *v1; // r4
  int v2; // r3
  int v3; // r3

  v1 = (_DWORD *)*a1;
  v2 = *(_DWORD *)(*a1 + 372);
  a1[4] = v2;
  a1[5] = v1[94] + 1 - v2;
  v3 = v1[95];
  a1[6] = v3;
  if ( !v3 )
    FT_Panic(
      "assertion failed on line %d of file %s\n",
      185,
      "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\psaux\\/t1cmap.c");
  if ( v1[93] > v1[94] )
    FT_Panic(
      "assertion failed on line %d of file %s\n",
      186,
      "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\psaux\\/t1cmap.c");
  return 0;
}


// ===== 716058 t1_cmap_expert_init =====
int __fastcall t1_cmap_expert_init(_DWORD *a1)
{
  int v1; // r3
  int v2; // r2
  int v3; // r3

  v1 = *a1;
  v2 = *(_DWORD *)(*a1 + 480);
  a1[6] = *(_DWORD *)(*a1 + 412);
  a1[7] = *(_DWORD *)(v1 + 416);
  a1[5] = *(_DWORD *)(v2 + 20);
  v3 = *(_DWORD *)(v2 + 28);
  a1[4] = v3;
  if ( !v3 )
    FT_Panic(
      "assertion failed on line %d of file %s\n",
      48,
      "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\psaux\\/t1cmap.c");
  return 0;
}


// ===== 7160bc t1_cmap_standard_init =====
int __fastcall t1_cmap_standard_init(_DWORD *a1)
{
  int v1; // r3
  int v2; // r2
  int v3; // r3

  v1 = *a1;
  v2 = *(_DWORD *)(*a1 + 480);
  a1[6] = *(_DWORD *)(*a1 + 412);
  a1[7] = *(_DWORD *)(v1 + 416);
  a1[5] = *(_DWORD *)(v2 + 20);
  v3 = *(_DWORD *)(v2 + 24);
  a1[4] = v3;
  if ( !v3 )
    FT_Panic(
      "assertion failed on line %d of file %s\n",
      48,
      "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\psaux\\/t1cmap.c");
  return 0;
}


// ===== 716120 t1_cmap_std_char_index =====
int __fastcall t1_cmap_std_char_index(int a1, unsigned int a2)
{
  int v4; // r0
  int v5; // r6
  const char *v6; // r5
  int v7; // r7
  int v8; // r4
  const char *v9; // r0

  if ( a2 > 0xFF )
    return 0;
  v4 = (*(int (__fastcall **)(_DWORD))(a1 + 20))(*(unsigned __int16 *)(*(_DWORD *)(a1 + 16) + 2 * a2));
  v5 = *(_DWORD *)(a1 + 24);
  v6 = (const char *)v4;
  if ( !v5 )
    return 0;
  v7 = *(_DWORD *)(a1 + 28);
  v8 = 0;
  while ( 1 )
  {
    v9 = *(const char **)(v7 + 4 * v8);
    if ( v9 )
    {
      if ( *v9 == *v6 && !LC_API_STRCMP_0(v9, v6) )
        break;
    }
    if ( ++v8 == v5 )
      return 0;
  }
  return v8;
}


// ===== 7161a8 t1_cmap_std_char_next =====
int __fastcall t1_cmap_std_char_next(int a1, unsigned int *a2)
{
  unsigned int v4; // r4
  int result; // r0

  v4 = *a2 + 1;
  if ( v4 <= 0xFF )
  {
    while ( 1 )
    {
      result = t1_cmap_std_char_index(a1, v4);
      if ( result )
        break;
      if ( ++v4 == 256 )
      {
        *a2 = 0;
        return result;
      }
    }
  }
  else
  {
    v4 = 0;
    result = 0;
  }
  *a2 = v4;
  return result;
}


// ===== 716204 t1_lookup_glyph_by_stdcharcode =====
int __fastcall t1_lookup_glyph_by_stdcharcode(_DWORD *a1, unsigned int a2)
{
  int v4; // r0
  int v5; // r6
  const char *v6; // r5
  int v7; // r7
  int v8; // r4

  if ( a2 > 0xFF )
    return -1;
  v4 = (*(int (__fastcall **)(_DWORD))(a1[339] + 20))(*(unsigned __int16 *)(*(_DWORD *)(a1[339] + 24) + 2 * a2));
  v5 = a1[340];
  v6 = (const char *)v4;
  if ( !v5 )
    return -1;
  v7 = a1[341];
  v8 = 0;
  while ( !*(_DWORD *)(v7 + 4 * v8)
       || **(char **)(v7 + 4 * v8) != *v6
       || LC_API_STRCMP_0(*(const char **)(v7 + 4 * v8), v6) )
  {
    if ( ++v8 == v5 )
      return -1;
  }
  return v8;
}


// ===== 716290 afm_tokenize =====
int __fastcall afm_tokenize(char *a1, size_t a2)
{
  int v3; // r6
  int v5; // r4
  const char *v6; // r0
  char **v7; // r5
  const char *v8; // t1

  v3 = *a1;
  v5 = 0;
  while ( 1 )
  {
    v6 = afm_key_table[v5];
    if ( *v6 == v3 )
      break;
    if ( ++v5 > 73 )
      return 75;
  }
  v7 = &afm_key_table[v5];
  while ( LC_API_STRNCMP_0(v6, a1, a2) )
  {
    if ( ++v5 != 74 )
    {
      v8 = v7[1];
      ++v7;
      v6 = v8;
      if ( *v8 == v3 )
        continue;
    }
    return 75;
  }
  return v5;
}


// ===== 716320 PS_Conv_ToFixed =====
int __fastcall PS_Conv_ToFixed(_BYTE **a1, _BYTE *a2, int a3)
{
  _BYTE *v3; // r3
  int v7; // r2
  bool v8; // zf
  _BOOL4 v9; // r9
  int v10; // r7
  int v11; // r0
  int v12; // r10
  int v13; // r8
  _BYTE *v14; // r2
  int v16; // r2
  bool v17; // zf
  unsigned int v18; // r2
  int v19; // r2
  bool v20; // zf
  int v22; // r3
  bool v23; // zf
  _BYTE *v24; // [sp+Ch] [bp-8h] BYREF

  v3 = *a1;
  if ( *a1 == a2 )
    return 0;
  v24 = *a1;
  v7 = (unsigned __int8)*v3;
  v8 = v7 == 45;
  if ( v7 != 45 )
    v8 = v7 == 43;
  v9 = v8;
  if ( !v8 )
    goto LABEL_11;
  if ( a2 == ++v3 )
    return 0;
  v24 = v3;
  v9 = v7 == 45;
  v7 = (unsigned __int8)*v3;
LABEL_11:
  if ( v7 == 46 )
  {
    v10 = 0;
  }
  else
  {
    v11 = PS_Conv_ToInt(&v24, a2);
    v3 = v24;
    v10 = v11 << 16;
  }
  if ( v3 >= a2 )
    goto LABEL_15;
  if ( *v3 != 46 )
    goto LABEL_15;
  v24 = ++v3;
  if ( a2 <= v3 )
    goto LABEL_15;
  v16 = (unsigned __int8)*v3;
  if ( v16 == 32 )
    goto LABEL_15;
  v17 = v16 == 13;
  if ( v16 != 13 )
    v17 = v16 == 10;
  if ( v17
    || v16 == 9
    || v16 == 12
    || !*v3
    || (v16 & 0x80) != 0
    || (v18 = (unsigned __int8)ft_char_table[v16 & 0x7F], v18 > 9) )
  {
LABEL_15:
    v12 = 1;
    v13 = 0;
  }
  else
  {
    v12 = 1;
    v13 = 0;
    do
    {
      if ( a3 > 0 && v10 == 0 )
      {
        v13 = (char)v18 + 10 * v13;
        --a3;
      }
      else if ( v12 <= (int)&algn_98967C[3] )
      {
        v13 = (char)v18 + 10 * v13;
        v12 *= 10;
      }
      v24 = ++v3;
      if ( v3 == a2 )
        break;
      v19 = (unsigned __int8)*v3;
      if ( v19 == 32 )
        break;
      v20 = v19 == 13;
      if ( v19 != 13 )
        v20 = v19 == 10;
      if ( v20 )
        break;
      if ( v19 == 9 )
        break;
      if ( v19 == 12 )
        break;
      if ( !*v3 )
        break;
      if ( (v19 & 0x80) != 0 )
        break;
      v18 = (unsigned __int8)ft_char_table[v19 & 0x7F];
    }
    while ( v18 <= 9 );
  }
  v14 = v3 + 1;
  if ( a2 > v3 + 1 )
  {
    v22 = (unsigned __int8)*v3;
    v23 = v22 == 101;
    if ( v22 != 101 )
      v23 = v22 == 69;
    if ( v23 )
    {
      v24 = v14;
      a3 += PS_Conv_ToInt(&v24, a2);
    }
  }
  if ( a3 <= 0 )
  {
    for ( ; a3; v12 *= 10 )
    {
      ++a3;
      v10 /= 10;
    }
  }
  else
  {
    do
    {
      --a3;
      v10 *= 10;
      v13 *= 10;
    }
    while ( a3 );
  }
  if ( v13 )
    v10 += FT_DivFix(v13, v12);
  if ( v9 )
    v10 = -v10;
  *a1 = v24;
  return v10;
}


// ===== 716598 afm_parser_read_vals =====
int __fastcall afm_parser_read_vals(int *a1, int a2, int a3)
{
  unsigned __int8 *v5; // r7
  int v6; // r4
  int v7; // r9
  int v8; // r6
  unsigned __int8 *v9; // r0
  size_t v10; // r8
  bool v11; // r0
  int (*v13)(void); // r3
  int v14; // r0
  int v15; // r3
  int v16; // r0
  int v17; // r3
  int v18; // r0
  int v19; // r3
  void *v20; // r0
  int v21; // r3
  int v22; // r2
  int v23; // [sp+10h] [bp-Ch] BYREF
  void *v24[2]; // [sp+14h] [bp-8h] BYREF

  v5 = (unsigned __int8 *)a1[1];
  if ( a3 > 5 || a3 <= 0 )
    return 0;
  v6 = 0;
  v7 = 8 * a3;
  v8 = 0;
  while ( 1 )
  {
    v9 = *(_DWORD *)(a2 + v6)
       ? afm_stream_read_one(v5)
       : (unsigned __int8 *)afm_stream_read_string((unsigned __int8 **)v5);
    v24[0] = v9;
    if ( !v9 )
      return v8;
    v10 = *(_DWORD *)v5 - 1 - (_DWORD)v9;
    switch ( *(_DWORD *)(a2 + v6) )
    {
      case 0:
      case 1:
        v20 = (void *)ft_mem_qalloc(*a1, *(_DWORD *)v5 - (_DWORD)v9, &v23);
        v21 = v23;
        *(_DWORD *)(a2 + v6 + 4) = v20;
        if ( v21 )
          goto LABEL_12;
        memcpy(v20, v24[0], v10);
        v22 = *(_DWORD *)(a2 + v6 + 4);
        v6 += 8;
        *(_BYTE *)(v22 + v10) = 0;
        ++v8;
        if ( v6 != v7 )
          continue;
        return v8;
      case 2:
        v18 = PS_Conv_ToFixed((_BYTE **)v24, (_BYTE *)(*(_DWORD *)v5 - 1), 0);
        v19 = a2 + v6;
        v6 += 8;
        *(_DWORD *)(v19 + 4) = v18;
        ++v8;
        if ( v6 != v7 )
          continue;
        return v8;
      case 3:
        v16 = PS_Conv_ToInt((_BYTE **)v24, (_BYTE *)(*(_DWORD *)v5 - 1));
        v17 = a2 + v6;
        v6 += 8;
        *(_DWORD *)(v17 + 4) = v16;
        ++v8;
        if ( v6 != v7 )
          continue;
        return v8;
      case 4:
        v11 = v10 == 4 && LC_API_STRNCMP_0((const char *)v9, "true", *(_DWORD *)v5 - 1 - (_DWORD)v9) == 0;
        *(_BYTE *)(a2 + v6 + 4) = v11;
        goto LABEL_12;
      case 5:
        v13 = (int (*)(void))a1[3];
        if ( v13 )
        {
          v14 = v13();
          v15 = a2 + v6;
          v6 += 8;
          *(_DWORD *)(v15 + 4) = v14;
          ++v8;
          if ( v6 == v7 )
            return v8;
        }
        else
        {
          *(_DWORD *)(a2 + v6 + 4) = 0;
LABEL_12:
          v6 += 8;
          ++v8;
          if ( v6 == v7 )
            return v8;
        }
        break;
      default:
        goto LABEL_12;
    }
  }
}


// ===== 716780 afm_parser_read_int =====
int __fastcall afm_parser_read_int(int *a1, _DWORD *a2)
{
  int result; // r0
  int v4; // r3
  bool v5; // zf
  _DWORD v6[2]; // [sp+0h] [bp-8h] BYREF

  v6[0] = 3;
  result = afm_parser_read_vals(a1, (int)v6, 1);
  v5 = result == 1;
  if ( result == 1 )
    v4 = v6[1];
  else
    result = 160;
  if ( v5 )
  {
    *a2 = v4;
    return 0;
  }
  return result;
}


// ===== 7167c0 ps_tofixedarray =====
int __fastcall ps_tofixedarray(_BYTE **a1, _BYTE *a2, int a3, int a4, int a5)
{
  _BYTE *v5; // r4
  _BYTE *v6; // r5
  int v8; // r6
  int v9; // r3
  int v10; // r9
  int *v11; // r7
  int v12; // r3
  int v13; // r12
  int *v14; // r10
  char v18; // [sp+10h] [bp-Ch] BYREF
  _BYTE *v19[2]; // [sp+14h] [bp-8h] BYREF

  v5 = *a1;
  v6 = a2;
  v19[0] = v5;
  if ( v5 >= a2 )
  {
    v8 = 0;
    goto LABEL_22;
  }
  v9 = (unsigned __int8)*v5;
  if ( v9 == 91 )
  {
    v10 = 93;
  }
  else
  {
    if ( v9 != 123 )
    {
      v10 = 0;
      goto LABEL_8;
    }
    v10 = 125;
  }
  v19[0] = ++v5;
LABEL_8:
  v11 = (int *)a4;
  v8 = 0;
  if ( a2 > v5 )
  {
    do
    {
      skip_spaces(v19, a2);
      v5 = v19[0];
      if ( v6 <= v19[0] )
        break;
      if ( (unsigned __int8)*v19[0] == v10 )
      {
        v5 = v19[0] + 1;
        break;
      }
      v12 = a4;
      if ( a4 )
        v12 = 1;
      if ( v8 >= a3 )
        v13 = v12 & 1;
      else
        v13 = 0;
      if ( v13 )
        break;
      v14 = (int *)&v18;
      ++v8;
      if ( v12 )
        v14 = v11;
      *v14 = PS_Conv_ToFixed(v19, v6, a5);
      ++v11;
      if ( v5 == v19[0] )
      {
        v8 = -1;
        break;
      }
      if ( !v10 )
      {
        v5 = v19[0];
        break;
      }
      v5 = v19[0];
      a2 = v6;
    }
    while ( v6 > v19[0] );
  }
LABEL_22:
  *a1 = v5;
  return v8;
}


// ===== 7168f4 ps_parser_to_fixed_array =====
int __fastcall ps_parser_to_fixed_array(_BYTE **a1, int a2, int a3, int a4)
{
  ps_parser_skip_spaces(a1);
  return ps_tofixedarray(a1, a1[2], a2, a3, a4);
}


// ===== 716930 ps_parser_to_coord_array =====
int __fastcall ps_parser_to_coord_array(unsigned __int8 **a1, int a2, int a3)
{
  unsigned __int8 *v4; // r4
  unsigned __int8 *v5; // r5
  int v6; // r6
  int v7; // r3
  int v8; // r9
  char *v9; // r7
  unsigned __int8 *v10; // r1
  int v11; // r3
  int v12; // r12
  char *v13; // r10
  unsigned __int8 *v17; // [sp+10h] [bp-Ch] BYREF
  char v18; // [sp+16h] [bp-6h] BYREF

  ps_parser_skip_spaces(a1);
  v4 = *a1;
  v5 = a1[2];
  v17 = v4;
  if ( v5 <= v4 )
  {
    v6 = 0;
    goto LABEL_22;
  }
  v7 = *v4;
  if ( v7 == 91 )
  {
    v8 = 93;
  }
  else
  {
    if ( v7 != 123 )
    {
      v8 = 0;
      goto LABEL_8;
    }
    v8 = 125;
  }
  v17 = ++v4;
LABEL_8:
  v9 = (char *)a3;
  v6 = 0;
  v10 = v5;
  if ( v5 > v4 )
  {
    do
    {
      skip_spaces(&v17, v10);
      v4 = v17;
      if ( v5 <= v17 )
        break;
      if ( *v17 == v8 )
      {
        v4 = v17 + 1;
        break;
      }
      v11 = a3;
      if ( a3 )
        v11 = 1;
      if ( a2 <= v6 )
        v12 = v11 & 1;
      else
        v12 = 0;
      if ( v12 )
        break;
      v13 = &v18;
      ++v6;
      if ( v11 )
        v13 = v9;
      *(_WORD *)v13 = (unsigned int)PS_Conv_ToFixed(&v17, v5, 0) >> 16;
      v9 += 2;
      if ( v4 == v17 )
      {
        v6 = -1;
        break;
      }
      if ( !v8 )
      {
        v4 = v17;
        break;
      }
      v4 = v17;
      v10 = v5;
    }
    while ( v5 > v17 );
  }
LABEL_22:
  *a1 = v4;
  return v6;
}


// ===== 716a6c ps_parser_to_fixed =====
int __fastcall ps_parser_to_fixed(_BYTE **a1, int a2)
{
  ps_parser_skip_spaces(a1);
  return PS_Conv_ToFixed(a1, a1[2], a2);
}


// ===== 716a90 ps_table_new =====
int __fastcall ps_table_new(_DWORD *a1, int a2, int a3)
{
  int v6; // r0
  int v7; // r12
  int v8; // r1
  int v9; // r12
  int v11; // r0
  int v12; // [sp+Ch] [bp-4h] BYREF

  a1[8] = a3;
  v6 = ft_mem_realloc(a3, 4, 0, a2, 0, &v12);
  v7 = v12;
  a1[6] = v6;
  v8 = v6;
  if ( !v7 )
  {
    v11 = ft_mem_realloc(a3, 4, 0, a2, 0, &v12);
    v9 = v12;
    a1[7] = v11;
    if ( !v9 )
    {
      a1[3] = -559038737;
      a1[4] = a2;
      a1[5] = 0;
      *a1 = 0;
      a1[2] = 0;
      a1[1] = 0;
      a1[9] = ps_table_new;
      a1[10] = ps_table_done;
      a1[11] = ps_table_add;
      a1[12] = ps_table_release;
      return v9;
    }
    v8 = a1[6];
  }
  ft_mem_free(a3, v8);
  v9 = v12;
  a1[6] = 0;
  return v9;
}


// ===== 716b78 afm_parser_init =====
int __fastcall afm_parser_init(int *a1, int a2, int a3, int a4)
{
  _DWORD *v8; // r0
  int v9; // r3
  int v11; // [sp+4h] [bp-8h] BYREF

  v8 = ft_mem_alloc(a2, 16, &v11);
  v9 = v11;
  if ( !v11 )
  {
    *v8 = a3;
    v8[2] = a4;
    v8[3] = 2;
    v8[1] = a3;
    *a1 = a2;
    a1[1] = (int)v8;
    a1[3] = 0;
    a1[2] = 0;
  }
  return v9;
}


// ===== 716bdc ps_table_done =====
_DWORD *__fastcall ps_table_done(_DWORD *result)
{
  const void *v1; // r5
  _DWORD *v2; // r4
  int v3; // r6
  int v4; // r3
  _DWORD *v5; // r3
  _DWORD *v6; // r1
  int i; // r0
  int v8; // [sp+4h] [bp-4h] BYREF

  v1 = (const void *)*result;
  v2 = result;
  v3 = result[8];
  if ( *result )
  {
    result = ft_mem_alloc(result[8], result[1], &v8);
    v4 = v8;
    *v2 = result;
    if ( !v4 )
    {
      memcpy(result, v1, v2[1]);
      v5 = (_DWORD *)v2[6];
      v6 = &v5[v2[4]];
      for ( i = *v2 - (_DWORD)v1; v6 > v5; ++v5 )
      {
        if ( *v5 )
          *v5 += i;
      }
      v2[2] = v2[1];
      return (_DWORD *)ft_mem_free(v3, (int)v1);
    }
  }
  return result;
}


// ===== 716c7c skip_string =====
int __fastcall skip_string(_DWORD *a1, _BYTE *a2)
{
  _BYTE *v2; // r3
  int v5; // r2
  unsigned int v6; // r0
  bool v7; // cc
  _BYTE *v8; // r3
  int result; // r0
  _BYTE *v10; // [sp+4h] [bp-4h] BYREF

  v2 = (_BYTE *)*a1;
  while ( 1 )
  {
    v10 = ++v2;
    if ( v2 >= a2 )
      break;
    skip_spaces(&v10, a2);
    v2 = v10;
    if ( a2 <= v10 )
      break;
    v5 = (unsigned __int8)*v10;
    v6 = (unsigned __int8)(v5 - 65);
    v7 = v6 > 5;
    if ( v6 > 5 )
      v7 = (unsigned __int8)(v5 - 48) > 9u;
    if ( v7 && (unsigned __int8)(v5 - 97) > 5u )
    {
      if ( v5 != 62 )
      {
        FT_Message("skip_string: missing closing delimiter `>'\n");
        v8 = v10;
        result = 3;
        goto LABEL_12;
      }
      break;
    }
  }
  v8 = v2 + 1;
  result = 0;
LABEL_12:
  *a1 = v8;
  return result;
}


// ===== 716d24 skip_procedure =====
int __fastcall skip_procedure(_BYTE **a1, _BYTE *a2)
{
  _BYTE *v2; // r3
  int result; // r0
  int v6; // r6
  bool v7; // r2
  int v8; // r2
  unsigned int v9; // r2
  int v11; // r2
  bool v12; // zf
  _BYTE *v13[2]; // [sp+4h] [bp-8h] BYREF

  v2 = *a1;
  if ( **a1 != 123 )
    FT_Panic(
      "assertion failed on line %d of file %s\n",
      455,
      "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\psaux\\/psobjs.c");
  result = a2 > v2;
  v13[0] = v2;
  if ( a2 > v2 )
  {
    v6 = 0;
    while ( 1 )
    {
      while ( 1 )
      {
        v9 = (unsigned __int8)*v2;
        if ( v9 != 60 )
          break;
        result = skip_string(v13, a2);
        v2 = v13[0] + 1;
        if ( a2 <= ++v13[0] || result != 0 )
        {
LABEL_24:
          if ( v6 )
            result = 3;
          goto LABEL_18;
        }
      }
      if ( v9 <= 0x3C )
      {
        if ( v9 == 37 )
        {
          if ( a2 > v2 )
          {
            do
            {
              if ( ++v2 == a2 )
                break;
              v11 = (unsigned __int8)*v2;
              v12 = v11 == 13;
              if ( v11 != 13 )
                v12 = v11 == 10;
            }
            while ( !v12 );
          }
          v7 = 1;
          result = 0;
          goto LABEL_8;
        }
        if ( v9 == 40 )
        {
          result = skip_literal_string(v13, a2);
          v2 = v13[0];
          v7 = result == 0;
          goto LABEL_8;
        }
      }
      else if ( v9 == 123 )
      {
        ++v6;
      }
      else if ( v9 == 125 && !--v6 )
      {
        ++v2;
        result = 0;
        break;
      }
      v2 = v13[0];
      v7 = 1;
      result = 0;
LABEL_8:
      v8 = a2 > ++v2 && v7;
      v13[0] = v2;
      if ( !v8 )
        goto LABEL_24;
    }
  }
LABEL_18:
  *a1 = v2;
  return result;
}


// ===== 716e98 ps_parser_to_bytes =====
int __fastcall ps_parser_to_bytes(int a1, int a2, int a3, _DWORD *a4, char a5)
{
  _BYTE *v9; // r1
  unsigned int v10; // r0
  unsigned int v12; // r6
  unsigned int v13; // r0
  int v14; // r10
  int v15; // r12
  int i; // r2
  unsigned int v17; // r3
  bool v18; // zf
  bool v19; // zf
  unsigned int v20; // r3

  ps_parser_skip_spaces((_BYTE **)a1);
  v9 = *(_BYTE **)a1;
  v10 = *(_DWORD *)(a1 + 8);
  if ( *(_DWORD *)a1 >= v10 )
    return 0;
  if ( a5 )
  {
    if ( *v9 != 60 )
    {
      FT_Message("ps_parser_to_bytes: Missing starting delimiter `<'\n");
      return 3;
    }
    ++v9;
  }
  v12 = 2 * a3;
  v13 = v10 - (_DWORD)v9;
  if ( v13 >= v12 )
    v13 = v12;
  if ( !v13 )
  {
    v14 = 0;
    goto LABEL_28;
  }
  v14 = 0;
  v15 = 1;
  for ( i = 0; i != v13; ++i )
  {
    v17 = (unsigned __int8)v9[i];
    if ( v17 == 32 )
      continue;
    v18 = v17 == 13;
    if ( v17 != 13 )
      v18 = v17 == 10;
    if ( v18 )
      continue;
    v19 = v17 == 9;
    if ( v17 != 9 )
      v19 = v17 == 12;
    if ( v19 || !v9[i] )
      continue;
    if ( v17 > 0x7F )
      break;
    v20 = ft_char_table[v17 & 0x7F];
    if ( v20 > 0xF )
      break;
    v15 = v20 | (16 * v15);
    if ( (v15 & 0x100) != 0 )
    {
      *(_BYTE *)(a2 + v14++) = v15;
      v15 = 1;
    }
  }
  if ( v15 != 1 )
    *(_BYTE *)(a2 + v14) = 16 * v15;
  v9 += i;
  if ( v15 != 1 )
    ++v14;
LABEL_28:
  *a4 = v14;
  if ( a5 )
  {
    if ( *(_DWORD *)(a1 + 8) > (unsigned int)v9 && *v9 != 62 )
    {
      FT_Message("ps_parser_to_bytes: Missing closing delimiter `>'\n");
      return 3;
    }
    ++v9;
  }
  *(_DWORD *)a1 = v9;
  return 0;
}


// ===== 716ff4 ps_parser_skip_PS_token =====
_BYTE **__fastcall ps_parser_skip_PS_token(int a1)
{
  unsigned __int8 *v1; // r6
  _BYTE **result; // r0
  unsigned __int8 *v4; // r2
  int v5; // r3
  bool v6; // zf
  bool v7; // zf
  bool v8; // zf
  bool v9; // zf
  bool v10; // zf
  unsigned __int8 *v11; // r3
  unsigned __int8 *v12; // r3
  unsigned __int8 *v13; // [sp+4h] [bp-4h] BYREF

  v1 = *(unsigned __int8 **)(a1 + 8);
  v13 = *(unsigned __int8 **)a1;
  result = skip_spaces(&v13, v1);
  v4 = v13;
  if ( v1 <= v13 )
    goto LABEL_46;
  v5 = *v13;
  v6 = v5 == 91;
  if ( v5 != 91 )
    v6 = v5 == 93;
  if ( v6 )
    v4 = v13 + 1;
  else
    result = nullptr;
  if ( v6 )
  {
    v13 = v4;
    result = nullptr;
    goto LABEL_47;
  }
  switch ( v5 )
  {
    case '{':
      result = (_BYTE **)skip_procedure(&v13, v1);
      v4 = v13;
      goto LABEL_47;
    case '(':
      result = (_BYTE **)skip_literal_string(&v13, v1);
      v4 = v13;
      goto LABEL_47;
    case '<':
      v12 = v4 + 1;
      if ( v1 <= v4 + 1 || v4[1] != 60 )
      {
        result = (_BYTE **)skip_string(&v13, v1);
        v4 = v13;
        goto LABEL_47;
      }
LABEL_61:
      v4 = v12 + 1;
      v13 = v12 + 1;
      goto LABEL_47;
    case '>':
      v12 = v4 + 1;
      v13 = v4 + 1;
      if ( v1 <= v4 + 1 || v4[1] != 62 )
      {
        FT_Message("ps_parser_skip_PS_token: unexpected closing delimiter `>'\n");
        v4 = v13;
        result = (_BYTE **)(&dword_0 + 3);
        goto LABEL_47;
      }
      goto LABEL_61;
  }
  if ( v5 != 47 )
    goto LABEL_14;
  v13 = ++v4;
  if ( v1 <= v4 )
  {
LABEL_46:
    result = nullptr;
    goto LABEL_47;
  }
  v5 = *v4;
LABEL_14:
  if ( v5 == 32 )
    goto LABEL_53;
  v7 = v5 == 10;
  if ( v5 != 10 )
    v7 = v5 == 13;
  if ( v7 )
  {
LABEL_53:
    v4 = v13;
    result = nullptr;
    goto LABEL_47;
  }
  result = nullptr;
  if ( v5 != 9 && v5 != 12 )
  {
    if ( v5 )
    {
      v8 = v5 == 47;
      if ( v5 != 47 )
        v8 = v5 == 40;
      if ( !v8 )
      {
        while ( v5 != 41 && v5 != 60 && v5 != 62 && v5 != 91 && v5 != 93 && v5 != 123 && v5 != 125 && v5 != 37 )
        {
          v13 = ++v4;
          if ( v1 > v4 )
          {
            v5 = *v4;
            if ( v5 != 32 )
            {
              v9 = v5 == 13;
              if ( v5 != 13 )
                v9 = v5 == 10;
              if ( !v9 && v5 != 9 && v5 != 12 && *v4 )
              {
                v10 = v5 == 47;
                if ( v5 != 47 )
                  v10 = v5 == 40;
                if ( !v10 )
                  continue;
              }
            }
          }
          goto LABEL_46;
        }
        goto LABEL_53;
      }
    }
    else
    {
      result = nullptr;
    }
  }
  v4 = v13;
LABEL_47:
  if ( v4 == *(unsigned __int8 **)a1 )
  {
    FT_Message(
      "ps_parser_skip_PS_token: current token is `%c', which is self-delimiting but invalid at this point\n",
      *v4);
    result = (_BYTE **)(&dword_0 + 3);
  }
  v11 = v13;
  *(_DWORD *)(a1 + 12) = result;
  *(_DWORD *)a1 = v11;
  return result;
}


// ===== 717248 ps_parser_to_token =====
_BYTE **__fastcall ps_parser_to_token(int a1, _DWORD *a2)
{
  _BYTE **result; // r0
  unsigned __int8 *v5; // r3
  unsigned __int8 *v6; // r6
  int v7; // r2
  int v8; // r3
  int v9; // r3
  unsigned __int8 *v10; // r2
  unsigned __int8 *v11; // r3
  _BYTE *v12; // r3
  unsigned __int8 *v13; // r3
  bool v14; // cc
  int v15; // r7
  int v16; // r2
  _BYTE *v17; // r3
  _BYTE *v18; // r2
  bool v19; // zf
  _BYTE *v20[2]; // [sp+4h] [bp-8h] BYREF

  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  result = ps_parser_skip_spaces((_BYTE **)a1);
  v5 = *(unsigned __int8 **)a1;
  v6 = *(unsigned __int8 **)(a1 + 8);
  v20[0] = v5;
  if ( v5 >= v6 )
    return result;
  v7 = *v5;
  if ( v7 != 91 )
  {
    if ( v7 == 123 )
    {
      a2[2] = 3;
      *a2 = v5;
      result = (_BYTE **)skip_procedure(v20, v6);
      if ( !result )
        goto LABEL_33;
    }
    else
    {
      if ( v7 != 40 )
      {
        *a2 = v5;
        if ( *v5 == 47 )
          v8 = 4;
        else
          v8 = 1;
        a2[2] = v8;
        result = ps_parser_skip_PS_token(a1);
        v9 = *(_DWORD *)(a1 + 12);
        v10 = *(unsigned __int8 **)a1;
        v20[0] = *(_BYTE **)a1;
        if ( !v9 )
        {
          v11 = v10;
          a2[1] = v10;
          goto LABEL_11;
        }
        goto LABEL_16;
      }
      a2[2] = 2;
      *a2 = v5;
      result = (_BYTE **)skip_literal_string(v20, v6);
      if ( !result )
      {
LABEL_33:
        v17 = v20[0];
        v18 = v20[0];
        v19 = v20[0] == nullptr;
        a2[1] = v20[0];
        if ( v19 )
        {
          a2[2] = v18;
          *a2 = v18;
        }
        *(_DWORD *)a1 = v17;
        return result;
      }
    }
LABEL_16:
    v12 = v20[0];
    if ( !a2[1] )
    {
      a2[2] = 0;
      *a2 = 0;
    }
    *(_DWORD *)a1 = v12;
    return result;
  }
  *a2 = v5;
  a2[2] = 3;
  *(_DWORD *)a1 = v5 + 1;
  v20[0] = v5 + 1;
  result = ps_parser_skip_spaces((_BYTE **)a1);
  v13 = *(unsigned __int8 **)a1;
  v14 = (unsigned int)v6 > *(_DWORD *)a1;
  v20[0] = *(_BYTE **)a1;
  if ( !v14 || *(_DWORD *)(a1 + 12) )
  {
LABEL_36:
    if ( !a2[1] )
    {
      a2[2] = 0;
      *a2 = 0;
    }
    *(_DWORD *)a1 = v13;
    return result;
  }
  v15 = 1;
  while ( 1 )
  {
    v16 = *v13;
    if ( v16 != 91 )
      break;
    ++v15;
LABEL_24:
    *(_DWORD *)a1 = v13;
    ps_parser_skip_PS_token(a1);
    result = ps_parser_skip_spaces((_BYTE **)a1);
    v13 = *(unsigned __int8 **)a1;
    v14 = (unsigned int)v6 > *(_DWORD *)a1;
    v20[0] = *(_BYTE **)a1;
    if ( !v14 || *(_DWORD *)(a1 + 12) )
      goto LABEL_36;
  }
  if ( v16 != 93 )
    goto LABEL_24;
  if ( --v15 )
    goto LABEL_24;
  v10 = v13 + 1;
  a2[1] = v13 + 1;
  v11 = v13 + 1;
LABEL_11:
  if ( !v10 )
  {
    a2[2] = 0;
    *a2 = 0;
  }
  *(_DWORD *)a1 = v11;
  return result;
}


// ===== 717428 ps_parser_to_token_array =====
_BYTE **__fastcall ps_parser_to_token_array(int *a1, _DWORD *a2, int a3, int *a4)
{
  _BYTE **result; // r0
  int v9; // r3
  unsigned int v10; // r10
  int v11; // r3
  _DWORD *v12; // r6
  bool v13; // cf
  int v14; // r1
  int v15; // r2
  int v16; // [sp+0h] [bp-24h]
  int v17; // [sp+4h] [bp-20h]
  _DWORD v18[2]; // [sp+8h] [bp-1Ch] BYREF
  int v19; // [sp+10h] [bp-14h]
  int v20; // [sp+14h] [bp-10h] BYREF
  int v21; // [sp+18h] [bp-Ch]
  int v22; // [sp+1Ch] [bp-8h]

  *a4 = -1;
  result = ps_parser_to_token((int)a1, &v20);
  if ( v22 == 3 )
  {
    v9 = v21 - 1;
    v17 = *a1;
    v13 = v20 + 1 >= (unsigned int)(v21 - 1);
    *a1 = v20 + 1;
    v10 = (unsigned int)&a2[3 * a3];
    v16 = a1[2];
    a1[2] = v9;
    if ( v13 )
    {
      v11 = 0;
    }
    else
    {
      v12 = a2;
      do
      {
        result = ps_parser_to_token((int)a1, v18);
        if ( !v19 )
          break;
        v13 = 1;
        if ( a2 )
          v13 = (unsigned int)v12 >= v10;
        if ( !v13 )
        {
          result = (_BYTE **)v18[0];
          v14 = v18[1];
          v15 = v19;
          *v12 = v18[0];
          v12[1] = v14;
          v12[2] = v15;
        }
        v12 += 3;
      }
      while ( *a1 < (unsigned int)a1[2] );
      v11 = -1431655765 * (v12 - a2);
    }
    *a4 = v11;
    a1[2] = v16;
    *a1 = v17;
  }
  return result;
}


// ===== 71753c ps_table_add =====
void *__fastcall ps_table_add(char **a1, int a2, char *a3, size_t a4)
{
  char *v9; // r2
  unsigned int v10; // r7
  char *v11; // r1
  char *v12; // r9
  int v13; // r10
  int v14; // r11
  char *v15; // r0
  void *v16; // r3
  char *v17; // r3
  char *v18; // r1
  int i; // r0
  void *v20; // [sp+4h] [bp-8h] BYREF

  if ( a2 >= 0 && a2 < (int)a1[4] )
  {
    v9 = a1[1];
    v10 = (unsigned int)a1[2];
    if ( (unsigned int)&v9[a4] > v10 )
    {
      v12 = *a1;
      v13 = a3 - *a1;
      if ( v10 <= v13 )
        v13 = -1;
      do
        v10 = (v10 + 1024 + (v10 >> 2)) & 0xFFFFFC00;
      while ( (unsigned int)&v9[a4] > v10 );
      v14 = (int)a1[8];
      v15 = (char *)ft_mem_alloc(v14, v10, (int *)&v20);
      v16 = v20;
      *a1 = v15;
      if ( v16 )
      {
        *a1 = v12;
        return v16;
      }
      if ( v12 )
      {
        memcpy(v15, v12, (size_t)a1[2]);
        v17 = a1[6];
        v18 = &v17[4 * (_DWORD)a1[4]];
        for ( i = *a1 - v12; v18 > v17; v17 += 4 )
        {
          if ( *(_DWORD *)v17 )
            *(_DWORD *)v17 += i;
        }
        ft_mem_free(v14, (int)v12);
      }
      v11 = *a1;
      v9 = a1[1];
      a1[2] = (char *)v10;
      if ( v13 >= 0 )
        a3 = &v11[v13];
    }
    else
    {
      v11 = *a1;
    }
    *(_DWORD *)&a1[6][4 * a2] = &v9[(_DWORD)v11];
    *(_DWORD *)&a1[7][4 * a2] = a4;
    memcpy(&a1[1][(_DWORD)*a1], a3, a4);
    a1[1] += a4;
    return nullptr;
  }
  else
  {
    FT_Message("ps_table_add: invalid index\n");
    return &byte_6;
  }
}


// ===== 71768c t1_builder_add_contour =====
int __fastcall t1_builder_add_contour(int a1)
{
  int v1; // r4
  int v2; // r0
  __int16 v3; // r3
  int result; // r0

  v1 = *(_DWORD *)(a1 + 20);
  if ( *(_BYTE *)(a1 + 76) )
  {
    v2 = *(_DWORD *)(a1 + 12);
    if ( *(__int16 *)(v2 + 56) + *(__int16 *)(v2 + 20) < *(_DWORD *)(v2 + 8)
      || (result = FT_GlyphLoader_CheckPoints(v2, 0, 1)) == 0 )
    {
      v3 = *(_WORD *)v1;
      if ( *(__int16 *)v1 > 0 )
      {
        *(_WORD *)(*(_DWORD *)(v1 + 12) + 2 * v3 - 2) = *(_WORD *)(v1 + 2) - 1;
        v3 = *(_WORD *)v1;
      }
      *(_WORD *)v1 = v3 + 1;
      return 0;
    }
  }
  else
  {
    result = *(unsigned __int8 *)(a1 + 76);
    ++*(_WORD *)v1;
  }
  return result;
}


// ===== 717720 t1_builder_check_points =====
int __fastcall t1_builder_check_points(int a1, int a2)
{
  int v2; // r0

  if ( a2 && (v2 = *(_DWORD *)(a1 + 12), *(__int16 *)(v2 + 58) + *(__int16 *)(v2 + 22) + a2 > *(_DWORD *)(v2 + 4)) )
    return FT_GlyphLoader_CheckPoints(v2, a2, 0);
  else
    return 0;
}


// ===== 717764 t1_builder_add_point1 =====
int __fastcall t1_builder_add_point1(int a1, int a2, int a3)
{
  int v6; // r4

  v6 = t1_builder_check_points(a1, 1);
  if ( !v6 )
    t1_builder_add_point(a1, a2, a3, 1);
  return v6;
}


// ===== 7177a0 t1_builder_start_point =====
int __fastcall t1_builder_start_point(int a1, int a2, int a3)
{
  int v3; // r3
  int result; // r0

  v3 = *(_DWORD *)(a1 + 72);
  if ( v3 == 3 )
    return 0;
  if ( v3 != 2 )
    return 3;
  *(_DWORD *)(a1 + 72) = 3;
  result = t1_builder_add_contour(a1);
  if ( !result )
    return t1_builder_add_point1(a1, a2, a3);
  return result;
}


// ===== 717804 t1_decoder_parse_charstrings =====
int __fastcall t1_decoder_parse_charstrings(int a1, unsigned int *a2, int a3)
{
  int v3; // r3
  int v4; // r12
  int v5; // r4
  _BOOL4 v6; // r0
  _DWORD *v9; // r2
  Elf32_Dyn **v10; // r7
  int v11; // r0
  int v12; // r8
  int v13; // r6
  unsigned int *v14; // r10
  unsigned int *v15; // r3
  unsigned int v16; // r8
  bool v17; // cc
  unsigned int v18; // r11
  bool v19; // cc
  unsigned int v20; // r3
  bool v21; // zf
  int v22; // r11
  int v23; // r1
  int *v24; // r10
  int v25; // r8
  unsigned int *v26; // r10
  int v27; // r2
  int result; // r0
  int *v29; // r8
  int v30; // r0
  int v31; // r1
  int v32; // r3
  int v33; // r1
  int v34; // r3
  unsigned int **v35; // r1
  unsigned int *v36; // r2
  int v37; // r1
  unsigned int *v38; // r3
  int v39; // r11
  int v40; // r8
  int v41; // r11
  int v42; // r11
  int v43; // r8
  unsigned int v44; // r5
  int v45; // r9
  int v46; // r7
  int v47; // r8
  unsigned int v48; // r1
  int v49; // r10
  int v50; // r6
  int v51; // r0
  int v52; // r5
  int v53; // r7
  int v54; // r1
  int v55; // r8
  int v56; // r7
  int v57; // r6
  int v58; // r5
  int v59; // r12
  int v60; // r2
  int v61; // r1
  int v62; // r3
  int v63; // r11
  int v64; // r8
  int v65; // r3
  int v66; // r0
  int v67; // r2
  int v68; // r1
  int v69; // r3
  bool v70; // zf
  int v71; // r3
  unsigned int *v72; // r10
  unsigned int v73; // r3
  int v74; // r6
  int *v75; // r11
  unsigned int v76; // r7
  unsigned int v77; // r5
  unsigned int v78; // r4
  int v79; // t1
  int v80; // r0
  int v81; // r1
  int v82; // r1
  Elf32_Dyn *v83; // r5
  int d_tag; // r3
  unsigned int v85; // r2
  int v86; // r5
  Elf32_Dyn *v87; // r3
  int v88; // r10
  int *v89; // r4
  int v90; // r3
  int v91; // r1
  int v92; // r6
  int v93; // r1
  int v94; // r3
  int v95; // [sp+4h] [bp-58h]
  int v96; // [sp+8h] [bp-54h]
  unsigned int v97; // [sp+Ch] [bp-50h]
  int v98; // [sp+10h] [bp-4Ch]
  int v99; // [sp+14h] [bp-48h]
  _DWORD *v100; // [sp+18h] [bp-44h]
  int v101; // [sp+1Ch] [bp-40h]
  unsigned int v102; // [sp+20h] [bp-3Ch]
  unsigned int *v103; // [sp+2Ch] [bp-30h]
  unsigned int **v104; // [sp+30h] [bp-2Ch]
  int v105; // [sp+34h] [bp-28h]
  int v106; // [sp+44h] [bp-18h]
  unsigned int *v107; // [sp+48h] [bp-14h]
  int v108; // [sp+4Ch] [bp-10h]
  Elf32_Dyn **v109; // [sp+50h] [bp-Ch]

  v3 = *(_DWORD *)(a1 + 1500);
  v4 = *(_DWORD *)(a1 + 1496);
  v5 = a1;
  v6 = v3 == 0;
  if ( !v4 )
    v6 = v3 != 0;
  v96 = v5 + 120;
  v102 = v5 + 1148;
  *(_DWORD *)(v5 + 72) = 0;
  v9 = *(_DWORD **)(v5 + 80);
  v10 = &__GLOBAL_OFFSET_TABLE_;
  *(_DWORD *)(v5 + 1144) = v5 + 120;
  *(_DWORD *)(v5 + 1352) = v5 + 1148;
  v100 = v9;
  if ( v6 )
    FT_Panic(
      "assertion failed on line %d of file %s\n",
      354,
      "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\psaux\\/t1decode.c");
  if ( v3 )
  {
    LC_API_MEMSET_0(*(void **)(v5 + 1496), 0, 4 * v3);
    if ( dword_A35584 <= 3 )
      goto LABEL_7;
LABEL_105:
    FT_Message("\nStart charstring\n");
    goto LABEL_7;
  }
  if ( dword_A35584 > 3 )
    goto LABEL_105;
LABEL_7:
  v97 = (unsigned int)a2 + a3;
  *(_DWORD *)(v5 + 1152) = a2;
  v11 = *(_DWORD *)(v5 + 32);
  *(_DWORD *)(v5 + 1148) = a2;
  *(_DWORD *)(v5 + 1156) = (char *)a2 + a3;
  v105 = v11;
  v12 = *(_DWORD *)(v5 + 36);
  if ( v100 )
    ((void (__fastcall *)(_DWORD))v100[1])(*v100);
  if ( (unsigned int)a2 >= v97 )
  {
LABEL_106:
    if ( v10[2167][17].d_tag <= 3 )
      return 0;
    FT_Message("..end..\n\n");
    return 0;
  }
  v13 = 0;
  v101 = v12;
  v14 = *(unsigned int **)(v5 + 1144);
  v104 = (unsigned int **)(v5 + 1148);
  v99 = v105;
  v98 = 0;
  while ( 1 )
  {
    if ( v10[2167][17].d_tag > 4 )
    {
      FT_Message(" (%d)", (*(_DWORD *)(v5 + 1144) - v96) >> 2);
      v15 = (unsigned int *)((char *)a2 + 1);
      v16 = *(unsigned __int8 *)a2;
      v17 = v16 > 0xB;
      if ( v16 == 11 )
      {
LABEL_52:
        a2 = v15;
        v18 = 0;
        v16 = 24;
        goto LABEL_38;
      }
    }
    else
    {
      v15 = (unsigned int *)((char *)a2 + 1);
      v16 = *(unsigned __int8 *)a2;
      v17 = v16 > 0xB;
      if ( v16 == 11 )
        goto LABEL_52;
    }
    if ( v17 )
    {
      if ( v16 == 21 )
      {
        a2 = v15;
        v18 = 0;
        v16 = 10;
        goto LABEL_38;
      }
      if ( v16 > 0x15 )
      {
        if ( v16 == 30 )
        {
          a2 = v15;
          v18 = 0;
          v16 = 12;
          goto LABEL_38;
        }
        if ( v16 <= 0x1E )
        {
          if ( v16 == 22 )
          {
            a2 = v15;
            v18 = 0;
            v16 = 7;
            goto LABEL_38;
          }
        }
        else
        {
          if ( v16 == 31 )
          {
            a2 = v15;
            v18 = 0;
            v16 = 8;
            goto LABEL_38;
          }
          if ( v16 == 255 )
          {
            a2 = (unsigned int *)((char *)a2 + 5);
            if ( v97 < (unsigned int)a2 )
            {
              FT_Message("t1_decoder_parse_charstrings: unexpected EOF in integer\n");
              return 160;
            }
            v18 = _byteswap_ulong(*v15);
            v16 = 0;
            goto LABEL_38;
          }
        }
      }
      else
      {
        if ( v16 == 13 )
        {
          a2 = v15;
          v18 = 0;
          v16 = 2;
          goto LABEL_38;
        }
        if ( v16 < 0xD )
        {
          if ( v97 >= (unsigned int)v15 )
          {
            a2 = (unsigned int *)((char *)v15 + 1);
            switch ( *(_BYTE *)v15 )
            {
              case 0:
                v18 = 0;
                v16 = 15;
                goto LABEL_38;
              case 1:
                v18 = 0;
                v16 = 19;
                goto LABEL_38;
              case 2:
                v18 = 0;
                v16 = 17;
                goto LABEL_38;
              case 6:
                v18 = 0;
                v16 = 3;
                goto LABEL_38;
              case 7:
                v18 = 0;
                v16 = 4;
                goto LABEL_38;
              case 0xC:
                v18 = 0;
                v16 = 20;
                goto LABEL_38;
              case 0x10:
                v18 = 0;
                v16 = 21;
                goto LABEL_38;
              case 0x11:
                v18 = 0;
                v16 = 23;
                goto LABEL_38;
              case 0x21:
                v18 = 0;
                v16 = 25;
                goto LABEL_38;
              default:
                FT_Message("t1_decoder_parse_charstrings: invalid escape (12+%d)\n", *(unsigned __int8 *)v15);
                return 160;
            }
          }
          FT_Message("t1_decoder_parse_charstrings: invalid escape (12+EOF)\n");
          return 160;
        }
        if ( v16 == 14 )
        {
          a2 = v15;
          v18 = 0;
          v16 = 1;
          goto LABEL_38;
        }
        if ( v16 == 15 )
        {
          a2 = v15;
          v18 = 0;
          v16 = 26;
          goto LABEL_38;
        }
      }
    }
    else
    {
      if ( v16 == 6 )
      {
        a2 = v15;
        v18 = 0;
        goto LABEL_38;
      }
      if ( v16 > 6 )
      {
        if ( v16 == 8 )
        {
          a2 = v15;
          v18 = 0;
          v16 = 11;
          goto LABEL_38;
        }
        if ( v16 < 8 )
        {
          a2 = v15;
          v18 = 0;
          v16 = 13;
          goto LABEL_38;
        }
        if ( v16 == 9 )
        {
          a2 = v15;
          v18 = 0;
          v16 = 5;
          goto LABEL_38;
        }
        if ( v16 == 10 )
        {
          a2 = v15;
          v18 = 0;
          v16 = 22;
          goto LABEL_38;
        }
      }
      else
      {
        if ( v16 == 3 )
        {
          a2 = v15;
          v18 = 0;
          v16 = 18;
          goto LABEL_38;
        }
        if ( v16 > 3 )
        {
          a2 = v15;
          v18 = 0;
          if ( v16 == 4 )
            v16 = 14;
          else
            v16 = 9;
          goto LABEL_38;
        }
        if ( v16 == 1 )
        {
          a2 = v15;
          v18 = 0;
          v16 = 16;
          goto LABEL_38;
        }
      }
    }
    if ( v16 <= 0x1F )
    {
      FT_Message("t1_decoder_parse_charstrings: invalid byte (%d)\n", v16);
      return 160;
    }
    if ( v16 > 0xF6 )
    {
      a2 = (unsigned int *)((char *)v15 + 1);
      if ( v97 < (unsigned int)v15 + 1 )
      {
        FT_Message("t1_decoder_parse_charstrings: ");
        FT_Message("unexpected EOF in integer\n");
        return 160;
      }
      v19 = v16 > 0xFA;
      if ( v16 <= 0xFA )
      {
        v16 -= 247;
        v20 = *(unsigned __int8 *)v15;
      }
      else
      {
        v20 = v16 << 8;
      }
      if ( v19 )
        v18 = *((unsigned __int8 *)a2 - 1);
      else
        v18 = v16 << 8;
      if ( v19 )
        v20 = 64000 - v20;
      else
        v18 += 108;
      if ( v19 )
        v20 += 148;
      else
        v18 += v20;
      if ( v19 )
        v18 = v20 - v18;
      v16 = 0;
    }
    else
    {
      v18 = v16 - 139;
      a2 = v15;
      v16 = 0;
    }
LABEL_38:
    if ( v13 <= 0 || v16 <= 0x18 && ((1 << v16) & 0x1C00001) != 0 )
    {
      if ( !v16 )
        goto LABEL_42;
    }
    else
    {
      v13 = 0;
      if ( !v16 )
      {
LABEL_42:
        if ( (int)v14 - v96 >= 1024 )
        {
          FT_Message("t1_decoder_parse_charstrings: stack overflow!\n");
          return 160;
        }
        if ( v10[2167][17].d_tag > 3 )
          FT_Message(" %ld", v18);
        *v14 = v18;
        *(_DWORD *)(v5 + 1144) = v14 + 1;
        goto LABEL_46;
      }
    }
    if ( v16 == 21 )
      break;
    v22 = *(_DWORD *)&ft_char_table[4 * v16 + 128];
    if ( v22 < 0 )
      FT_Panic(
        "assertion failed on line %d of file %s\n",
        930,
        "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\psaux\\/t1decode.c");
    v23 = ((int)v14 - v96) >> 2;
    if ( v22 > v23 )
      return 161;
    if ( v16 - 20 > 4 && v22 != v23 && v10[2167][17].d_tag >= 0 )
      FT_Message("t1_decoder_parse_charstrings: too much operands on the stack (seen %d, expected %d)\n", v23, v22);
    v24 = (int *)&v14[-v22];
    switch ( v16 )
    {
      case 1u:
        if ( v10[2167][17].d_tag > 3 )
          FT_Message(" endchar");
        t1_builder_close_contour(v5);
        if ( !v100 )
          goto LABEL_280;
        if ( ((int (__fastcall *)(_DWORD, _DWORD))v100[2])(*v100, *(__int16 *)(*(_DWORD *)(v5 + 20) + 2)) )
          return 160;
        ((void (__fastcall *)(_DWORD, _DWORD, _DWORD, _DWORD))v100[6])(
          *v100,
          *(_DWORD *)(v5 + 20),
          *(_DWORD *)(v5 + 84),
          *(_DWORD *)(v5 + 1476));
LABEL_280:
        FT_GlyphLoader_Add(*(_DWORD *)(v5 + 12));
        v83 = v10[2167];
        d_tag = v83[17].d_tag;
        if ( d_tag > 3 )
        {
          FT_Message("\n");
          d_tag = v83[17].d_tag;
        }
        v85 = *(_DWORD *)(v5 + 1500);
        if ( !v85 )
          goto LABEL_305;
        if ( d_tag <= 3 )
          goto LABEL_284;
        FT_Message("BuildCharArray = [ ");
        v85 = *(_DWORD *)(v5 + 1500);
        v87 = v10[2167];
        if ( v85 )
        {
          d_tag = v87[17].d_tag;
LABEL_284:
          v86 = 0;
          while ( 1 )
          {
            if ( d_tag > 3 )
            {
              FT_Message("%d ", *(_DWORD *)(*(_DWORD *)(v5 + 1496) + 4 * v86));
              v85 = *(_DWORD *)(v5 + 1500);
              d_tag = v10[2167][17].d_tag;
            }
            if ( v85 <= ++v86 )
              break;
            d_tag = v10[2167][17].d_tag;
          }
        }
        else
        {
          d_tag = v87[17].d_tag;
        }
        if ( d_tag <= 3 )
          return 0;
        FT_Message("]\n");
        d_tag = v10[2167][17].d_tag;
LABEL_305:
        if ( d_tag <= 3 )
          return 0;
        FT_Message("\n");
        return 0;
      case 2u:
        if ( v10[2167][17].d_tag > 3 )
          FT_Message(" hsbw");
        *(_DWORD *)(v5 + 72) = 1;
        v65 = *(_DWORD *)(v5 + 32);
        v66 = *(_DWORD *)(v5 + 36);
        *(_DWORD *)(v5 + 40) += *v24;
        v67 = v24[1];
        *(_DWORD *)(v5 + 52) = 0;
        *(_DWORD *)(v5 + 48) = v67;
        v68 = *(unsigned __int8 *)(v5 + 79);
        v101 = v66;
        v99 = *v24 + v65;
        *(_DWORD *)(v5 + 24) = v99;
        *(_DWORD *)(v5 + 28) = v66;
        if ( v68 )
          return 0;
        v105 = v99;
        *(_DWORD *)(v5 + 1144) = v24;
        break;
      case 3u:
        v44 = v24[4];
        v45 = *v24;
        v46 = v24[1];
        v47 = v24[2];
        v48 = v24[3];
        v49 = *(_DWORD *)(v5 + 40);
        if ( *(_DWORD *)(v5 + 1364) )
        {
          v50 = t1_lookup_glyph_by_stdcharcode((_DWORD *)v5, v48);
          v51 = t1_lookup_glyph_by_stdcharcode((_DWORD *)v5, v44);
          v52 = v51;
          if ( (v51 | v50) < 0 )
          {
            FT_Message("t1operator_seac:", v51 | v50);
            FT_Message(" invalid seac character code arguments\n");
            return 160;
          }
          else
          {
            v53 = v46 + v49;
            if ( *(_BYTE *)(v5 + 77) )
            {
              v88 = *(_DWORD *)(v5 + 8);
              v89 = **(int ***)(v88 + 156);
              result = FT_GlyphLoader_CheckSubGlyphs(v89, 2);
              if ( !result )
              {
                v90 = v89[22];
                *(_DWORD *)(v90 + 32) = v52;
                *(_DWORD *)v90 = v50;
                *(_WORD *)(v90 + 4) = 514;
                *(_DWORD *)(v90 + 8) = 0;
                *(_DWORD *)(v90 + 12) = 0;
                *(_DWORD *)(v90 + 44) = v47;
                *(_DWORD *)(v90 + 40) = v53 - v45;
                *(_WORD *)(v90 + 36) = 2;
                *(_DWORD *)(v88 + 128) = 2;
                v91 = v89[13];
                *(_DWORD *)(v88 + 72) = 1668246896;
                *(_DWORD *)(v88 + 132) = v91;
                v89[21] = 2;
              }
            }
            else
            {
              FT_GlyphLoader_Prepare(*(_DWORD *)(v5 + 12));
              result = (*(int (__fastcall **)(int, int))(v5 + 1480))(v5, v50);
              if ( !result )
              {
                *(_DWORD *)(v5 + 32) = v53 - v45;
                *(_DWORD *)(v5 + 36) = v47;
                v54 = v52;
                v55 = *(_DWORD *)(v5 + 44);
                v56 = *(_DWORD *)(v5 + 40);
                *(_DWORD *)(v5 + 44) = 0;
                *(_DWORD *)(v5 + 40) = 0;
                v57 = *(_DWORD *)(v5 + 52);
                v58 = *(_DWORD *)(v5 + 48);
                result = (*(int (__fastcall **)(int, int))(v5 + 1480))(v5, v54);
                if ( !result )
                {
                  *(_DWORD *)(v5 + 44) = v55;
                  *(_DWORD *)(v5 + 40) = v56;
                  *(_DWORD *)(v5 + 52) = v57;
                  *(_DWORD *)(v5 + 48) = v58;
                  *(_DWORD *)(v5 + 36) = 0;
                  *(_DWORD *)(v5 + 32) = 0;
                }
              }
            }
          }
        }
        else
        {
          FT_Message("t1operator_seac:", v48);
          FT_Message(" glyph names table not available in this font!\n");
          return 160;
        }
        return result;
      case 4u:
        if ( v10[2167][17].d_tag > 3 )
          FT_Message(" sbw");
        *(_DWORD *)(v5 + 72) = 1;
        v59 = *(_DWORD *)(v5 + 44);
        v60 = *(_DWORD *)(v5 + 32);
        *(_DWORD *)(v5 + 40) += *v24;
        v61 = *(unsigned __int8 *)(v5 + 79);
        v62 = *(_DWORD *)(v5 + 36);
        *(_DWORD *)(v5 + 44) = v59 + v24[1];
        *(_DWORD *)(v5 + 48) = v24[2];
        *(_DWORD *)(v5 + 52) = v24[3];
        v99 = *v24 + v60;
        *(_DWORD *)(v5 + 24) = v99;
        v101 = v24[1] + v62;
        *(_DWORD *)(v5 + 28) = v101;
        if ( v61 )
          return 0;
        v29 = v24;
        goto LABEL_111;
      case 5u:
        if ( v10[2167][17].d_tag > 3 )
          FT_Message(" closepath");
        if ( (unsigned int)(*(_DWORD *)(v5 + 72) - 2) <= 1 )
          t1_builder_close_contour(v5);
        *(_DWORD *)(v5 + 72) = 1;
        *(_DWORD *)(v5 + 1144) = v24;
        break;
      case 6u:
        if ( v10[2167][17].d_tag > 3 )
          FT_Message(" hlineto");
        if ( t1_builder_start_point(v5, v99, v101) )
          return 0;
        v99 += *v24;
        v30 = t1_builder_add_point1(v5, v99, v101);
        goto LABEL_122;
      case 7u:
        if ( v10[2167][17].d_tag > 3 )
          FT_Message(" hmoveto");
        v99 += *v24;
        if ( !*(_DWORD *)(v5 + 1408) )
          goto LABEL_152;
        v29 = v24;
        goto LABEL_111;
      case 8u:
        if ( v10[2167][17].d_tag > 3 )
          FT_Message(" hvcurveto");
        if ( t1_builder_start_point(v5, v99, v101) || t1_builder_check_points(v5, 3) )
          return 0;
        v63 = v99 + *v24;
        t1_builder_add_point(v5, v63, v101, 0);
        v64 = v101 + v24[2];
        v99 = v63 + v24[1];
        t1_builder_add_point(v5, v99, v64, 0);
        v101 = v64 + v24[3];
        t1_builder_add_point(v5, v99, v101, 1);
        *(_DWORD *)(v5 + 1144) = v24;
        break;
      case 9u:
        if ( v10[2167][17].d_tag > 3 )
          FT_Message(" rlineto");
        if ( t1_builder_start_point(v5, v99, v101) )
          return 0;
        v99 += *v24;
        v101 += v24[1];
        v30 = t1_builder_add_point1(v5, v99, v101);
        goto LABEL_122;
      case 0xAu:
        if ( v10[2167][17].d_tag > 3 )
          FT_Message(" rmoveto");
        v99 += *v24;
        v101 += v24[1];
        if ( !*(_DWORD *)(v5 + 1408) )
          goto LABEL_152;
        goto LABEL_110;
      case 0xBu:
        if ( v10[2167][17].d_tag > 3 )
          FT_Message(" rcurveto");
        if ( t1_builder_start_point(v5, v99, v101) || t1_builder_check_points(v5, 3) )
          return 0;
        v39 = v99 + *v24;
        v95 = v101 + v24[1];
        t1_builder_add_point(v5, v39, v95, 0);
        v40 = v39 + v24[2];
        v41 = v95 + v24[3];
        t1_builder_add_point(v5, v40, v41, 0);
        v99 = v40 + v24[4];
        v101 = v41 + v24[5];
        t1_builder_add_point(v5, v99, v101, 1);
        *(_DWORD *)(v5 + 1144) = v24;
        break;
      case 0xCu:
        if ( v10[2167][17].d_tag > 3 )
          FT_Message(" vhcurveto");
        if ( t1_builder_start_point(v5, v99, v101) || t1_builder_check_points(v5, 3) )
          return 0;
        v42 = v101 + *v24;
        t1_builder_add_point(v5, v99, v42, 0);
        v43 = v99 + v24[1];
        v101 = v42 + v24[2];
        t1_builder_add_point(v5, v43, v101, 0);
        v99 = v43 + v24[3];
        t1_builder_add_point(v5, v99, v101, 1);
        *(_DWORD *)(v5 + 1144) = v24;
        break;
      case 0xDu:
        if ( v10[2167][17].d_tag > 3 )
          FT_Message(" vlineto");
        if ( t1_builder_start_point(v5, v99, v101) )
          return 0;
        v101 += *v24;
        v30 = t1_builder_add_point1(v5, v99, v101);
LABEL_122:
        if ( v30 )
          return 0;
        v29 = v24;
        goto LABEL_111;
      case 0xEu:
        if ( v10[2167][17].d_tag > 3 )
          FT_Message(" vmoveto");
        v101 += *v24;
        if ( *(_DWORD *)(v5 + 1408) )
        {
          v29 = v24;
          goto LABEL_111;
        }
LABEL_152:
        if ( !*(_DWORD *)(v5 + 72) )
          return 160;
        *(_DWORD *)(v5 + 72) = 2;
        *(_DWORD *)(v5 + 1144) = v24;
        break;
      case 0xFu:
        if ( v10[2167][17].d_tag <= 3 )
          goto LABEL_110;
        FT_Message(" dotsection");
        *(_DWORD *)(v5 + 1144) = v24;
        break;
      case 0x10u:
        if ( v10[2167][17].d_tag > 3 )
          FT_Message(" hstem");
        if ( !v100 )
          goto LABEL_110;
        ((void (__fastcall *)(_DWORD, int, int *))v100[3])(*v100, 1, v24);
        *(_DWORD *)(v5 + 1144) = v24;
        break;
      case 0x11u:
        if ( v10[2167][17].d_tag > 3 )
          FT_Message(" hstem3");
        if ( !v100 )
          goto LABEL_110;
        ((void (__fastcall *)(_DWORD, int, int *))v100[4])(*v100, 1, v24);
        *(_DWORD *)(v5 + 1144) = v24;
        break;
      case 0x12u:
        if ( v10[2167][17].d_tag > 3 )
          FT_Message(" vstem");
        if ( !v100 )
          goto LABEL_110;
        *v24 += v105;
        ((void (__fastcall *)(_DWORD, _DWORD, int *))v100[3])(*v100, 0, v24);
        *(_DWORD *)(v5 + 1144) = v24;
        break;
      case 0x13u:
        if ( v10[2167][17].d_tag > 3 )
          FT_Message(" vstem3");
        if ( !v100 )
          goto LABEL_110;
        v31 = *v24 + v105;
        v32 = v24[4] + v105;
        v24[2] += v105;
        *v24 = v31;
        v24[4] = v32;
        ((void (__fastcall *)(_DWORD, _DWORD, int *))v100[4])(*v100, 0, v24);
        *(_DWORD *)(v5 + 1144) = v24;
        break;
      case 0x14u:
        if ( v10[2167][17].d_tag > 3 )
          FT_Message(" div");
        v33 = v24[1];
        if ( !v33 )
        {
          FT_Message("t1_decoder_parse_charstrings: division by 0\n");
          return 160;
        }
        *v24 /= v33;
        *(_DWORD *)(v5 + 1144) = v24 + 1;
        break;
      case 0x16u:
        if ( v10[2167][17].d_tag > 3 )
          FT_Message(" callsubr");
        v34 = *v24;
        if ( *v24 < 0 || v34 >= *(_DWORD *)(v5 + 1372) )
        {
          FT_Message("t1_decoder_parse_charstrings: invalid subrs index\n");
          return 160;
        }
        if ( (int)((int)v104 - v102) > 191 )
        {
          FT_Message("t1_decoder_parse_charstrings: too many nested subrs\n");
          return 160;
        }
        v35 = v104;
        *v104 = a2;
        v104 += 3;
        v36 = *(unsigned int **)(*(_DWORD *)(v5 + 1376) + 4 * v34);
        v35[4] = v36;
        v37 = *(_DWORD *)(v5 + 1380);
        if ( v37 )
        {
          v104[2] = (unsigned int *)((char *)v36 + *(_DWORD *)(v37 + 4 * v34));
        }
        else
        {
          v93 = *(_DWORD *)(v5 + 1368);
          v94 = v34 + 1;
          if ( v93 >= 0 )
            v36 = (unsigned int *)((char *)v36 + v93);
          v104[1] = v36;
          v104[2] = *(unsigned int **)(*(_DWORD *)(v5 + 1376) + 4 * v94);
        }
        v38 = v104[1];
        *v104 = v36;
        if ( !v38 )
        {
          FT_Message("t1_decoder_parse_charstrings: invoking empty subrs!\n");
          return 160;
        }
        *(_DWORD *)(v5 + 1352) = v104;
        a2 = v104[1];
        v97 = (unsigned int)v104[2];
        *(_DWORD *)(v5 + 1144) = v24;
        break;
      case 0x17u:
        if ( v10[2167][17].d_tag > 3 )
          FT_Message(" pop");
        if ( v98 <= 0 )
        {
          if ( !v13 )
          {
            FT_Message("t1_decoder_parse_charstrings: no more operands for othersubr!\n");
            return 160;
          }
          --v13;
          *(_DWORD *)(v5 + 1144) = v24 + 1;
        }
        else
        {
          --v98;
          v29 = v24;
LABEL_111:
          *(_DWORD *)(v5 + 1144) = v29;
        }
        break;
      case 0x18u:
        if ( v10[2167][17].d_tag > 3 )
          FT_Message(" return");
        if ( v102 >= (unsigned int)v104 )
        {
          FT_Message("t1_decoder_parse_charstrings: unexpected return\n");
          return 160;
        }
        a2 = *(v104 - 3);
        v104 -= 3;
        v97 = (unsigned int)v104[2];
        *(_DWORD *)(v5 + 1352) = v104;
        *(_DWORD *)(v5 + 1144) = v24;
        break;
      case 0x19u:
        if ( v10[2167][17].d_tag > 3 )
          FT_Message(" setcurrentpoint");
        if ( *(_DWORD *)(v5 + 1408) != 1 )
        {
          FT_Message("t1_decoder_parse_charstrings: ");
          FT_Message("unexpected `setcurrentpoint'\n");
          return 160;
        }
        *(_DWORD *)(v5 + 1408) = 0;
        *(_DWORD *)(v5 + 1144) = v24;
        break;
      case 0x1Au:
        if ( v10[2167][17].d_tag <= 3 )
        {
LABEL_110:
          v29 = v24;
          goto LABEL_111;
        }
        FT_Message(" opcode_15");
        *(_DWORD *)(v5 + 1144) = v24;
        break;
    }
LABEL_46:
    if ( (unsigned int)a2 >= v97 )
      goto LABEL_106;
    v14 = *(unsigned int **)(v5 + 1144);
    v21 = v13 == 0;
    if ( v13 )
      v21 = v98 == 0;
    if ( !v21 )
      FT_Panic(
        "assertion failed on line %d of file %s\n",
        386,
        "..\\..\\lib\\glitch\\source\\freetype\\builds\\win32\\visualc/..\\..\\..\\src\\psaux\\/t1decode.c");
  }
  if ( v10[2167][17].d_tag > 3 )
    FT_Message(" callothersubr");
  if ( (int)v14 - v96 <= 7 )
    return 161;
  v25 = *(v14 - 2);
  v26 = v14 - 2;
  v27 = v26[1];
  if ( v25 > ((int)v26 - v96) >> 2 )
    return 161;
  v103 = &v26[-v25];
  switch ( v27 )
  {
    case 0:
      if ( v25 != 3 )
        goto LABEL_312;
      if ( !*(_DWORD *)(v5 + 1408) || *(_DWORD *)(v5 + 1412) != 7 )
      {
        FT_Message("t1_decoder_parse_charstrings: unexpected flex end\n");
        return 160;
      }
      v98 = 2;
      v13 = 0;
      *(_DWORD *)(v5 + 1144) = v103 + 2;
      goto LABEL_46;
    case 1:
      if ( v25 )
        goto LABEL_312;
      *(_DWORD *)(v5 + 1408) = 1;
      *(_DWORD *)(v5 + 1412) = 0;
      if ( !t1_builder_start_point(v5, v99, v101) && !t1_builder_check_points(v5, 6) )
        goto LABEL_231;
      return 0;
    case 2:
      if ( v25 )
        goto LABEL_312;
      v69 = *(_DWORD *)(v5 + 1412);
      *(_DWORD *)(v5 + 1412) = v69 + 1;
      if ( (unsigned int)(v69 - 1) > 5 )
      {
LABEL_231:
        v13 = 0;
        v98 = 0;
        *(_DWORD *)(v5 + 1144) = v103;
      }
      else
      {
        v70 = v69 == 3;
        if ( v69 != 3 )
          v70 = v69 == 6;
        v71 = v70;
        t1_builder_add_point(v5, v99, v101, v71);
        v98 = 0;
        v13 = 0;
        *(_DWORD *)(v5 + 1144) = v103;
      }
      goto LABEL_46;
    case 3:
      if ( v25 != 1 )
        goto LABEL_312;
      v98 = 1;
      if ( v100 )
        ((void (__fastcall *)(_DWORD, _DWORD))v100[5])(*v100, *(__int16 *)(*(_DWORD *)(v5 + 20) + 2));
      v13 = 0;
      *(_DWORD *)(v5 + 1144) = v103 + 1;
      goto LABEL_46;
    case 12:
    case 13:
      v13 = 0;
      v98 = 0;
      *(_DWORD *)(v5 + 1144) = v96;
      goto LABEL_46;
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
      v72 = *(unsigned int **)(v5 + 1472);
      if ( !v72 )
      {
        FT_Message("t1_decoder_parse_charstrings: ");
        FT_Message("unexpected multiple masters operator!\n");
        return 160;
      }
      v73 = *v72;
      if ( v27 == 18 )
        v27 = 19;
      v98 = v27 - 13;
      if ( v73 * (v27 - 13) != v25 )
      {
        FT_Message("t1_decoder_parse_charstrings: ");
        FT_Message("incorrect number of mm arguments\n");
        return 160;
      }
      if ( v27 == 13 )
      {
        v106 = 0;
      }
      else
      {
        v74 = 0;
        v109 = v10;
        v106 = v98;
        v75 = (int *)&v103[v98];
        v107 = a2;
        v108 = v5;
        v76 = 0;
        while ( 1 )
        {
          v77 = v103[v74];
          if ( v73 > 1 )
          {
            v78 = 1;
            do
            {
              v79 = *v75++;
              v80 = FT_MulFix(v79, *(_DWORD *)(v72[34] + 4 * v78++));
              v77 += v80;
            }
            while ( *v72 > v78 );
          }
          ++v76;
          v103[v74++] = v77;
          if ( v98 <= v76 )
            break;
          v73 = *v72;
        }
        a2 = v107;
        v5 = v108;
        v10 = v109;
      }
      v13 = 0;
      *(_DWORD *)(v5 + 1144) = &v103[v106];
      goto LABEL_46;
    case 24:
      v13 = *(_DWORD *)(v5 + 1472) == 0;
      if ( v25 != 2 )
        v13 = 1;
      if ( v13 )
        goto LABEL_312;
      v81 = v103[1];
      if ( v81 >= 0 && (unsigned int)v81 < *(_DWORD *)(v5 + 1500) )
      {
        *(_DWORD *)(*(_DWORD *)(v5 + 1496) + 4 * v81) = v26[-v25];
        v98 = 0;
        *(_DWORD *)(v5 + 1144) = v103;
        goto LABEL_46;
      }
      v92 = 2;
LABEL_313:
      FT_Message("t1_decoder_parse_charstrings: invalid othersubr [%d %d]!\n", v92, v27);
      return 160;
    case 25:
      v13 = *(_DWORD *)(v5 + 1472) == 0;
      if ( v25 != 1 )
        v13 = 1;
      if ( v13 )
        goto LABEL_312;
      v82 = v26[-v25];
      if ( v82 < 0 || (unsigned int)v82 >= *(_DWORD *)(v5 + 1500) )
      {
        v92 = 1;
        goto LABEL_313;
      }
      v98 = 1;
      v26[-v25] = *(_DWORD *)(*(_DWORD *)(v5 + 1496) + 4 * v82);
      *(_DWORD *)(v5 + 1144) = v103 + 1;
      goto LABEL_46;
    case 27:
      if ( v25 != 4 )
      {
LABEL_312:
        v92 = v25;
        goto LABEL_313;
      }
      if ( (int)v103[2] > (int)v103[3] )
      {
        v13 = 0;
        *(v26 - 4) = v103[1];
        v98 = 1;
      }
      else
      {
        v98 = 1;
        v13 = 0;
      }
      *(_DWORD *)(v5 + 1144) = v103 + 1;
      goto LABEL_46;
    default:
      v13 = v25;
      FT_Message("t1_decoder_parse_charstrings: unknown othersubr [%d %d], wish me luck!\n", v25, v27);
      v98 = 0;
      *(_DWORD *)(v5 + 1144) = v103;
      goto LABEL_46;
  }
}


// ===== 719298 t1_builder_init =====
int (__fastcall *__fastcall t1_builder_init(int a1, int a2, int a3, int a4, char a5))(int a1, int a2, int a3)
{
  int v8; // r0
  int v9; // r3

  *(_BYTE *)(a1 + 76) = 1;
  *(_DWORD *)(a1 + 72) = 0;
  *(_DWORD *)(a1 + 4) = a2;
  *(_DWORD *)(a1 + 8) = a4;
  *(_DWORD *)a1 = *(_DWORD *)(a2 + 100);
  if ( a4 )
  {
    v8 = **(_DWORD **)(a4 + 156);
    *(_DWORD *)(a1 + 20) = v8 + 56;
    *(_DWORD *)(a1 + 16) = v8 + 20;
    *(_DWORD *)(a1 + 12) = v8;
    FT_GlyphLoader_Rewind(v8);
    v9 = *(_DWORD *)(a3 + 40);
    *(_DWORD *)(a1 + 80) = 0;
    *(_DWORD *)(a1 + 84) = v9;
    if ( a5 )
      *(_DWORD *)(a1 + 80) = *(_DWORD *)(*(_DWORD *)(a4 + 156) + 36);
  }
  *(_DWORD *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 88) = t1_builder_init;
  *(_DWORD *)(a1 + 92) = t1_builder_done;
  *(_DWORD *)(a1 + 96) = t1_builder_check_points;
  *(_DWORD *)(a1 + 100) = t1_builder_add_point;
  *(_DWORD *)(a1 + 104) = t1_builder_add_point1;
  *(_DWORD *)(a1 + 108) = t1_builder_add_contour;
  *(_DWORD *)(a1 + 112) = t1_builder_start_point;
  *(_DWORD *)(a1 + 116) = t1_builder_close_contour;
  return t1_builder_add_point1;
}


// ===== 71935c t1_decoder_init =====
int __fastcall t1_decoder_init(_DWORD *a1, int a2, int a3, int a4, int a5, int a6, char a7, int a8, int a9)
{
  int service; // r0

  LC_API_MEMSET_0(a1, 0, 0x5E0u);
  service = ft_module_get_service(*(_DWORD **)(a2 + 96), (int)"postscript-cmaps");
  if ( service )
  {
    a1[339] = service;
    t1_builder_init((int)a1, a2, a3, a4, a7);
    a1[340] = *(_DWORD *)(a2 + 16);
    a1[373] = t1_decoder_parse_charstrings;
    a1[341] = a5;
    a1[369] = a8;
    a1[368] = a6;
    a1[371] = t1_decoder_init;
    a1[372] = t1_decoder_done;
    a1[370] = a9;
    return 0;
  }
  else
  {
    FT_Message("t1_decoder_init: ");
    FT_Message("the `psnames' module is not available\n");
    return 7;
  }
}


// ===== 719448 ps_parser_load_field =====
int __fastcall ps_parser_load_field(int *a1, int a2, int a3, int a4)
{
  int v7; // r1
  _BYTE *v8; // r8
  int v9; // r7
  int *v10; // r7
  int v11; // r6
  int v12; // r5
  _DWORD *v13; // r11
  int v14; // r11
  int v16; // r11
  int v17; // r2
  int v18; // r1
  _BYTE *v19; // r0
  int v20; // r0
  int v21; // r3
  char *v22; // r3
  _BYTE *v23; // r2
  int v24; // r7
  int v25; // r6
  bool v26; // zf
  _BYTE *v27; // [sp+8h] [bp-4Ch]
  size_t v29; // [sp+18h] [bp-3Ch]
  int v30[2]; // [sp+2Ch] [bp-28h] BYREF
  int v31; // [sp+34h] [bp-20h]
  int v32; // [sp+38h] [bp-1Ch]
  _DWORD v33[2]; // [sp+3Ch] [bp-18h] BYREF
  int v34; // [sp+44h] [bp-10h]
  int v35; // [sp+48h] [bp-Ch] BYREF
  void *v36[2]; // [sp+4Ch] [bp-8h] BYREF

  ps_parser_to_token((int)a1, v33);
  if ( !v34 )
    return 3;
  v7 = *(_DWORD *)(a2 + 8);
  v8 = (_BYTE *)v33[1];
  v36[0] = (void *)v33[0];
  if ( v7 == 7 )
  {
    v24 = *a1;
    v25 = a1[2];
    *a1 = v33[0] + 1;
    a1[2] = (int)(v8 - 1);
    ps_parser_to_token((int)a1, v30);
    v26 = v31 == 3;
    *a1 = v24;
    a1[2] = v25;
    if ( !v26 )
      goto LABEL_4;
  }
  else if ( v34 != 3 )
  {
LABEL_4:
    v9 = 0;
    a4 = 1;
    goto LABEL_5;
  }
  if ( !a4 )
    return 3;
  --v8;
  v9 = 1;
  ++v36[0];
LABEL_5:
  v10 = (int *)(a3 + 4 * v9);
  while ( 2 )
  {
    v11 = *v10;
    v12 = *(_DWORD *)(a2 + 16);
    skip_spaces((_BYTE **)v36, v8);
    v13 = (_DWORD *)(v11 + v12);
    switch ( *(_DWORD *)(a2 + 8) )
    {
      case 1:
        v22 = (char *)v36[0];
        v23 = (char *)v36[0] + 3;
        if ( v8 > (char *)v36[0] + 3
          && *(_BYTE *)v36[0] == 116
          && *((_BYTE *)v36[0] + 1) == 114
          && *((_BYTE *)v36[0] + 2) == 117
          && *v23 == 101 )
        {
          v20 = 1;
          v36[0] = (char *)v36[0] + 5;
        }
        else
        {
          if ( v8 > (char *)v36[0] + 4
            && *(_BYTE *)v36[0] == 102
            && *((_BYTE *)v36[0] + 1) == 97
            && *((_BYTE *)v36[0] + 2) == 108
            && *v23 == 115 )
          {
            if ( *((_BYTE *)v36[0] + 4) == 101 )
              v22 = (char *)v36[0] + 6;
            v20 = 0;
          }
          else
          {
            v20 = 0;
          }
          v36[0] = v22;
        }
        goto LABEL_24;
      case 2:
        v20 = PS_Conv_ToInt((_BYTE **)v36, v8);
        goto LABEL_24;
      case 3:
        v20 = PS_Conv_ToFixed((_BYTE **)v36, v8, 0);
        goto LABEL_24;
      case 4:
        v20 = PS_Conv_ToFixed((_BYTE **)v36, v8, 3);
LABEL_24:
        v21 = *(unsigned __int8 *)(a2 + 20);
        if ( v21 == 2 )
        {
          *(_WORD *)(v11 + v12) = v20;
        }
        else if ( v21 == 1 )
        {
          *(_BYTE *)(v11 + v12) = v20;
        }
        else
        {
          *(_DWORD *)(v11 + v12) = v20;
        }
        goto LABEL_11;
      case 5:
      case 6:
        v16 = a1[4];
        if ( v8 <= v36[0] )
          goto LABEL_11;
        v17 = v8 - (char *)v36[0];
        if ( v34 == 4 )
        {
          ++v36[0];
          v29 = v17 - 1;
        }
        else
        {
          if ( v34 != 2 )
          {
            v14 = 3;
            FT_Message("ps_parser_load_field: expected a name or string but found token of type %d instead\n", v34);
            return v14;
          }
          ++v36[0];
          v29 = v17 - 2;
        }
        v18 = *(_DWORD *)(v11 + v12);
        if ( v18 )
        {
          if ( dword_A35588 >= 0 )
          {
            FT_Message("ps_parser_load_field: overwriting field %s\n", *(_DWORD *)a2);
            v18 = *(_DWORD *)(v11 + v12);
          }
          ft_mem_free(v16, v18);
          *(_DWORD *)(v11 + v12) = 0;
        }
        v19 = ft_mem_alloc(v16, v29 + 1, &v35);
        v14 = v35;
        if ( v35 )
          return v14;
        v27 = v19;
        memcpy(v19, v36[0], v29);
        v27[v29] = 0;
        *(_DWORD *)(v11 + v12) = v27;
        goto LABEL_11;
      case 7:
        if ( ps_tofixedarray((_BYTE **)v36, v8, 4, (int)v30, 0) < 0 )
        {
          v14 = 3;
          FT_Message("ps_parser_load_field: expected four integers in bounding box\n");
          return v14;
        }
        *(_DWORD *)(v11 + v12) = FT_RoundFix(v30[0]);
        v13[1] = FT_RoundFix(v30[1]);
        v13[2] = FT_RoundFix(v31);
        v13[3] = FT_RoundFix(v32);
LABEL_11:
        --a4;
        ++v10;
        if ( a4 )
          continue;
        v14 = 0;
        break;
      default:
        return 3;
    }
    return v14;
  }
}


// ===== 719818 ps_parser_load_field_table =====
int __fastcall ps_parser_load_field_table(int *a1, int *a2, int *a3, int a4)
{
  int *v4; // lr
  int v9; // r0
  int v10; // r1
  int v11; // r2
  int v12; // r3
  int v13; // r1
  int v14; // r2
  int v15; // r3
  int v16; // r3
  int v17; // r2
  bool v18; // zf
  int v19; // r3
  int v21; // r2
  int v22; // r1
  bool v23; // zf
  int v24; // r11
  int v25; // r5
  int v26; // r3
  bool v27; // cc
  int v28; // [sp+Ch] [bp-1B0h]
  _DWORD v29[96]; // [sp+10h] [bp-1ACh] BYREF
  _DWORD v30[2]; // [sp+190h] [bp-2Ch] BYREF
  int v31; // [sp+198h] [bp-24h]
  int v32; // [sp+19Ch] [bp-20h]
  int v33; // [sp+1A0h] [bp-1Ch]
  int v34; // [sp+1A4h] [bp-18h]
  int v35; // [sp+1A8h] [bp-14h]
  int v36; // [sp+1ACh] [bp-10h]
  int v37; // [sp+1B0h] [bp-Ch]
  unsigned int v38; // [sp+1B4h] [bp-8h] BYREF

  v4 = a2;
  v9 = *a2;
  v10 = a2[1];
  v11 = v4[2];
  v12 = v4[3];
  v4 += 4;
  v30[0] = v9;
  v30[1] = v10;
  v31 = v11;
  v32 = v12;
  v13 = v4[1];
  v14 = v4[2];
  v15 = v4[3];
  v33 = *v4;
  v34 = v13;
  v35 = v14;
  v36 = v15;
  v16 = a2[2];
  v17 = v4[4];
  v18 = v16 == 9;
  if ( v16 != 9 )
    v18 = v16 == 7;
  v31 = 2;
  if ( v18 )
    v31 = 3;
  v37 = v17;
  ps_parser_to_token_array(a1, v29, 32, (int *)&v38);
  v19 = v38;
  if ( (v38 & 0x80000000) != 0 )
    return 162;
  if ( v38 > a2[6] )
  {
    v19 = a2[6];
    v38 = v19;
  }
  v21 = a2[2];
  v22 = *a1;
  v23 = v21 == 7;
  v28 = *a1;
  if ( v21 != 7 )
  {
    v21 = a2[7];
    v22 = *a3;
  }
  v24 = a1[2];
  if ( !v23 )
  {
    *(_BYTE *)(v22 + v21) = v19;
    v19 = v38;
  }
  if ( v19 > 0 )
  {
    v25 = 0;
    do
    {
      v26 = v29[v25 + 1];
      *a1 = v29[v25];
      a1[2] = v26;
      ps_parser_load_field(a1, (int)v30, (int)a3, a4);
      v27 = (int)(v38 - 1) <= 0;
      v33 += (unsigned __int8)v34;
      --v38;
      v25 += 3;
    }
    while ( !v27 );
  }
  a1[2] = v24;
  *a1 = v28;
  return 0;
}


// ===== 719948 afm_parser_next_key.clone.1 =====
unsigned __int8 *__fastcall afm_parser_next_key_clone_1(int a1, int *a2)
{
  int v2; // r4
  unsigned __int8 *result; // r0
  int v5; // r3

  v2 = *(_DWORD *)(a1 + 4);
  if ( *(int *)(v2 + 12) <= 1 )
    afm_stream_read_string(*(unsigned __int8 ***)(a1 + 4));
  do
  {
    *(_DWORD *)(v2 + 12) = 0;
    result = afm_stream_read_one((unsigned __int8 *)v2);
  }
  while ( !result && *(_DWORD *)(v2 + 12) == 2 );
  if ( a2 )
  {
    if ( result )
      v5 = *(_DWORD *)v2;
    else
      v5 = 0;
    if ( result )
      v5 = v5 - 1 - (_DWORD)result;
    *a2 = v5;
  }
  return result;
}


// ===== 7199b8 afm_parser_parse =====
int __fastcall afm_parser_parse(int *a1)
{
  int v1; // r5
  int v3; // r6
  size_t v4; // r8
  unsigned __int8 *key_clone_1; // r0
  unsigned __int8 *v7; // r0
  unsigned __int8 *v8; // r0
  size_t i; // r8
  unsigned __int8 *v10; // r0
  int v11; // r0
  bool v12; // zf
  bool v13; // zf
  int v14; // r10
  int v15; // r3
  int v16; // r8
  unsigned __int8 *v17; // r0
  unsigned int v18; // r0
  int v19; // r10
  int v20; // r3
  unsigned __int8 *v21; // r0
  int v22; // r8
  int v23; // r3
  int vals; // r0
  _DWORD *v25; // r2
  bool v26; // zf
  int v27; // r0
  void *v28; // r0
  bool v29; // nf
  _DWORD *v30; // r2
  int v31; // r3
  int v32; // [sp+8h] [bp-9Ch]
  int v33; // [sp+8h] [bp-9Ch]
  int v34; // [sp+14h] [bp-90h]
  int v35; // [sp+14h] [bp-90h]
  int v36; // [sp+24h] [bp-80h] BYREF
  int v37; // [sp+28h] [bp-7Ch]
  int v38; // [sp+2Ch] [bp-78h]
  int v39; // [sp+30h] [bp-74h]
  int v40; // [sp+34h] [bp-70h]
  int v41; // [sp+38h] [bp-6Ch]
  int v42; // [sp+3Ch] [bp-68h]
  int v43; // [sp+40h] [bp-64h]
  int v44; // [sp+44h] [bp-60h]
  int v45; // [sp+48h] [bp-5Ch]
  _DWORD v46[5]; // [sp+4Ch] [bp-58h] BYREF
  int v47; // [sp+60h] [bp-44h]
  int v48; // [sp+64h] [bp-40h]
  int v49; // [sp+68h] [bp-3Ch]
  int v50; // [sp+6Ch] [bp-38h] BYREF
  int v51; // [sp+70h] [bp-34h]
  int v52; // [sp+74h] [bp-30h]
  int v53; // [sp+78h] [bp-2Ch]
  int v54; // [sp+7Ch] [bp-28h]
  int v55; // [sp+80h] [bp-24h]
  int v56; // [sp+84h] [bp-20h]
  int v57; // [sp+88h] [bp-1Ch]
  size_t v58; // [sp+8Ch] [bp-18h] BYREF
  size_t v59; // [sp+90h] [bp-14h] BYREF
  size_t v60; // [sp+94h] [bp-10h] BYREF
  int v61; // [sp+98h] [bp-Ch] BYREF
  size_t v62[2]; // [sp+9Ch] [bp-8h] BYREF

  v1 = a1[2];
  v3 = *a1;
  if ( !v1 )
    return 6;
  v61 = 0;
  key_clone_1 = afm_parser_next_key_clone_1((int)a1, (int *)v62);
  if ( key_clone_1 && v62[0] == 16 && !LC_API_STRNCMP_0((const char *)key_clone_1, "StartFontMetrics", 0x10u) )
  {
    v4 = 160;
    while ( 2 )
    {
      v7 = afm_parser_next_key_clone_1((int)a1, (int *)v62);
      if ( v7 )
      {
        switch ( afm_tokenize((char *)v7, v62[0]) )
        {
          case 0:
            v50 = 2;
            if ( afm_parser_read_vals(a1, (int)&v50, 1) != 1 )
              goto LABEL_34;
            *(_DWORD *)(v1 + 20) = v51;
            continue;
          case 14:
            v50 = 2;
            if ( afm_parser_read_vals(a1, (int)&v50, 1) != 1 )
              goto LABEL_34;
            *(_DWORD *)(v1 + 24) = v51;
            continue;
          case 20:
            return 0;
          case 26:
            v50 = 2;
            v52 = 2;
            v54 = 2;
            v56 = 2;
            if ( afm_parser_read_vals(a1, (int)&v50, 4) != 4 )
              goto LABEL_34;
            *(_DWORD *)(v1 + 4) = v51;
            *(_DWORD *)(v1 + 8) = v53;
            *(_DWORD *)(v1 + 12) = v55;
            *(_DWORD *)(v1 + 16) = v57;
            continue;
          case 30:
            v50 = 4;
            if ( afm_parser_read_vals(a1, (int)&v50, 1) != 1 )
              goto LABEL_34;
            *(_BYTE *)v1 = v51;
            continue;
          case 40:
            if ( afm_parser_read_int(a1, &v61) )
              goto LABEL_34;
            v13 = v61 == 2;
            if ( v61 != 2 )
              v13 = v61 == 0;
            if ( v13 )
              continue;
            v4 = 7;
            goto LABEL_34;
          case 45:
            v58 = 0;
            if ( afm_parser_read_int(a1, &v58) )
              goto LABEL_34;
            for ( i = v58; i; --i )
            {
              if ( !afm_parser_next_key_clone_1((int)a1, nullptr) )
                return 160;
            }
            do
            {
              v10 = afm_parser_next_key_clone_1((int)a1, (int *)&v60);
              if ( !v10 )
                return 160;
              v11 = afm_tokenize((char *)v10, v60);
              v12 = v11 == 17;
              if ( v11 != 17 )
                v12 = v11 == 20;
            }
            while ( !v12 );
            v4 = 0;
            continue;
          case 49:
LABEL_16:
            while ( 2 )
            {
              v8 = afm_parser_next_key_clone_1((int)a1, (int *)&v60);
              if ( !v8 )
                goto LABEL_41;
              switch ( afm_tokenize((char *)v8, v60) )
              {
                case 20:
                case 21:
                  return 0;
                case 50:
                case 51:
                  v19 = a1[2];
                  if ( afm_parser_read_int(a1, (_DWORD *)(v19 + 40)) )
                    goto LABEL_41;
                  v20 = *(_DWORD *)(v19 + 40);
                  if ( v20 )
                  {
                    *(_DWORD *)(v19 + 36) = ft_mem_realloc(*a1, 16, 0, v20, 0, (int *)&v58);
                    v4 = v58;
                    if ( v58 )
                      goto LABEL_34;
                  }
                  v35 = -1;
                  while ( 1 )
                  {
                    v21 = afm_parser_next_key_clone_1((int)a1, (int *)&v59);
                    if ( !v21 )
                      goto LABEL_41;
                    v22 = afm_tokenize((char *)v21, v59);
                    switch ( v22 )
                    {
                      case 20:
                      case 21:
                      case 22:
                        v28 = *(void **)(v19 + 36);
                        *(_DWORD *)(v19 + 40) = v35 + 1;
                        qsort(v28, v35 + 1, 0x10u, (int (*)(const void *, const void *))afm_compare_kern_pairs);
                        goto LABEL_16;
                      case 34:
                      case 36:
                      case 37:
                        if ( ++v35 >= *(_DWORD *)(v19 + 40) )
                          goto LABEL_41;
                        v23 = *(_DWORD *)(v19 + 36);
                        v46[0] = 5;
                        v32 = v23;
                        v46[2] = 5;
                        v46[4] = 3;
                        v48 = 3;
                        vals = afm_parser_read_vals(a1, (int)v46, 4);
                        v25 = (_DWORD *)(v32 + 16 * v35);
                        if ( vals <= 2 )
                          goto LABEL_41;
                        *(_DWORD *)(v32 + 16 * v35) = v46[1];
                        v25[1] = v46[3];
                        if ( v22 == 37 )
                        {
                          v25[2] = 0;
                          v25[3] = v47;
                        }
                        else
                        {
                          v26 = vals == 4;
                          if ( vals == 4 )
                            v26 = v22 == 34;
                          v27 = v26;
                          v25[2] = v47;
                          if ( v26 )
                            v27 = v49;
                          v25[3] = v27;
                        }
                        break;
                      case 75:
                        continue;
                      default:
                        goto LABEL_41;
                    }
                  }
                case 53:
                  v14 = a1[2];
                  if ( afm_parser_read_int(a1, (_DWORD *)(v14 + 32)) )
                    goto LABEL_41;
                  v15 = *(_DWORD *)(v14 + 32);
                  if ( v15 )
                  {
                    *(_DWORD *)(v14 + 28) = ft_mem_realloc(*a1, 20, 0, v15, 0, (int *)&v59);
                    v4 = v59;
                    if ( v59 )
                      goto LABEL_34;
                  }
                  v34 = 0;
                  v16 = -1;
                  break;
                case 75:
                  continue;
                default:
                  goto LABEL_41;
              }
              break;
            }
            break;
          default:
            continue;
        }
        while ( 1 )
        {
          v17 = afm_parser_next_key_clone_1((int)a1, (int *)&v58);
          if ( !v17 )
            goto LABEL_41;
          v18 = afm_tokenize((char *)v17, v58);
          if ( v18 == 23 )
            goto LABEL_49;
          if ( v18 <= 0x17 )
            break;
          if ( v18 == 56 )
          {
            if ( ++v16 < *(_DWORD *)(v14 + 32) )
            {
              v33 = *(_DWORD *)(v14 + 28);
              v36 = 3;
              v38 = 2;
              v40 = 2;
              v42 = 2;
              v44 = 2;
              if ( afm_parser_read_vals(a1, (int)&v36, 5) == 5 )
              {
                v29 = v37 < 0;
                *(_DWORD *)(v33 + v34) = v37;
                v30 = (_DWORD *)(v33 + v34);
                v30[1] = v39;
                v31 = v41;
                v30[2] = v41;
                v30[3] = v43;
                v30[4] = v45;
                if ( v29 && v31 > 0 )
                  v30[2] = -v31;
                v34 += 20;
                continue;
              }
            }
            goto LABEL_41;
          }
          if ( v18 != 75 )
            goto LABEL_41;
        }
        if ( v18 - 20 <= 1 )
        {
LABEL_49:
          *(_DWORD *)(v14 + 32) = v16 + 1;
          goto LABEL_16;
        }
LABEL_41:
        v4 = 160;
      }
      break;
    }
LABEL_34:
    ft_mem_free(v3, *(_DWORD *)(v1 + 28));
    *(_DWORD *)(v1 + 28) = 0;
    *(_DWORD *)(v1 + 32) = 0;
    ft_mem_free(v3, *(_DWORD *)(v1 + 36));
    *(_BYTE *)v1 = 0;
    *(_DWORD *)(v1 + 36) = 0;
    *(_DWORD *)(v1 + 40) = 0;
    return v4;
  }
  return 2;
}


// ===== 71a1a8 t1_hints_open =====
_DWORD *__fastcall t1_hints_open(_DWORD *result)
{
  result[19] = 0;
  result[3] = 1;
  result[1] = 0;
  result[4] = 0;
  result[7] = 0;
  result[10] = 0;
  result[13] = 0;
  result[16] = 0;
  return result;
}


// ===== 71a1d4 t2_hints_open =====
_DWORD *__fastcall t2_hints_open(_DWORD *result)
{
  result[19] = 0;
  result[3] = 2;
  result[1] = 0;
  result[4] = 0;
  result[7] = 0;
  result[10] = 0;
  result[13] = 0;
  result[16] = 0;
  return result;
}


// ===== 71a200 psh_blues_set_zones_0 =====
int *__fastcall psh_blues_set_zones_0(int a1, int a2, unsigned int a3, __int16 *a4, int *a5, int *a6)
{
  int v7; // r0
  int v8; // r10
  _DWORD *v9; // r5
  int v10; // r8
  int v11; // r6
  _DWORD *v12; // r9
  _DWORD *v13; // r7
  _DWORD *v14; // r5
  int v15; // r1
  int v16; // r2
  int v17; // r3
  int *v18; // r12
  int *v19; // r5
  int v20; // r1
  int v21; // r2
  int v22; // r3
  int v23; // r2
  int v24; // r3
  unsigned int v26; // [sp+0h] [bp-20h]
  int v27; // [sp+4h] [bp-1Ch]
  int v28; // [sp+8h] [bp-18h]
  int v29; // [sp+Ch] [bp-14h]
  int v30; // [sp+10h] [bp-10h]

  v26 = a3;
  v30 = *a5;
  v29 = *a6;
  if ( a3 > 1 )
  {
    v7 = (int)(a5 + 1);
LABEL_3:
    v8 = a4[1];
    v9 = a6 + 1;
    v10 = v29;
    v27 = *a4 - v8;
    v28 = 0;
    while ( v10 )
    {
      while ( 1 )
      {
        if ( v8 < *v9 )
        {
          v11 = 0;
          v12 = &v9[8 * v10];
          v13 = v9;
          do
          {
            v14 = &v12[v11];
            v15 = v12[v11 - 7];
            v16 = v12[v11 - 6];
            v17 = v12[v11 - 5];
            v18 = &v12[v11 - 4];
            *v14 = v12[v11 - 8];
            v14[1] = v15;
            v14[2] = v16;
            v14[3] = v17;
            v19 = &v12[v11 + 4];
            --v10;
            v7 = *v18;
            v20 = v12[v11 - 3];
            v21 = v12[v11 - 2];
            v22 = v12[v11 - 1];
            v11 -= 8;
            *v19 = *v18;
            v19[1] = v20;
            v19[2] = v21;
            v19[3] = v22;
          }
          while ( v10 );
          v9 = v13;
          goto LABEL_12;
        }
        if ( v8 == *v9 )
          break;
        --v10;
        v9 += 8;
        if ( !v10 )
          goto LABEL_12;
      }
      v24 = v9[1];
      if ( v27 < 0 )
      {
        if ( v27 < v24 )
          v9[1] = v27;
LABEL_21:
        v26 -= 2;
        if ( v26 <= 1 )
          goto LABEL_28;
        goto LABEL_22;
      }
      v7 = v27;
      if ( v27 > v24 )
        v9[1] = v27;
      v26 -= 2;
      if ( v26 <= 1 )
        goto LABEL_28;
LABEL_22:
      a4 += 2;
      if ( a2 )
        goto LABEL_3;
      v8 = *a4;
      v7 = 1;
      v9 = a5 + 1;
      v10 = v30;
      v27 = a4[1] - v8;
      v28 = 1;
    }
LABEL_12:
    v23 = v28;
    *v9 = v8;
    v9[1] = v27;
    if ( v28 )
      v7 = v30;
    else
      v23 = v29;
    if ( v28 )
      ++v7;
    else
      ++v23;
    if ( v28 )
      v30 = v7;
    else
      v29 = v23;
    goto LABEL_21;
  }
LABEL_28:
  *a5 = v30;
  *a6 = v29;
  return a6;
}


// ===== 71a3b4 psh_blues_set_zones =====
int __fastcall psh_blues_set_zones(int a1, unsigned int a2, __int16 *a3, unsigned int a4, __int16 *a5, int a6, int a7)
{
  int *v8; // r6
  int *v9; // r5
  int result; // r0
  int v12; // r9
  int v13; // r8
  int *v14; // r3
  unsigned int v15; // r2
  int v16; // r1
  int v17; // r12
  int v18; // r0
  int v19; // r12
  int v20; // r1
  int v21; // r0
  int *v22; // r3
  unsigned int v23; // r2
  int v24; // r1
  int v25; // r12
  int v26; // r0
  int v27; // r12
  int v28; // r1
  int v29; // r0
  int *v30; // r6
  int v31; // r7
  int v32; // r10
  int v33; // r9
  int v34; // r2
  int v35; // r1
  int *v36; // r3
  int v37; // r12
  bool v38; // cc
  int v39; // r2

  if ( a7 )
  {
    v8 = (int *)(a1 + 1024);
    v9 = (int *)(a1 + 1536);
  }
  else
  {
    v8 = (int *)a1;
    v9 = (int *)(a1 + 516);
  }
  if ( a7 )
  {
    v8 += 2;
    v9 += 3;
  }
  *v8 = 0;
  *v9 = 0;
  psh_blues_set_zones_0(a1, 0, a2, a3, v8, v9);
  result = (int)psh_blues_set_zones_0(a1, 1, a4, a5, v8, v9);
  v12 = *v8;
  v13 = *v9;
  if ( *v8 > 0 )
  {
    v14 = v8 + 9;
    v15 = *v8;
    do
    {
      while ( v15 <= 1 )
      {
        v20 = *(v14 - 8);
        v21 = *(v14 - 7);
        --v15;
        *(v14 - 5) = v20;
        result = v20 + v21;
        *(v14 - 6) = result;
        v14 += 8;
        if ( !v15 )
          goto LABEL_13;
      }
      v16 = *(v14 - 8);
      v17 = *v14;
      v18 = *(v14 - 7);
      *(v14 - 5) = v16;
      v19 = v17 - v16;
      if ( v19 < v18 )
      {
        v18 = v19;
        *(v14 - 7) = v19;
      }
      result = v16 + v18;
      --v15;
      *(v14 - 6) = result;
      v14 += 8;
    }
    while ( v15 );
  }
LABEL_13:
  if ( v13 > 0 )
  {
    v22 = v9 + 9;
    v23 = v13;
    do
    {
      while ( v23 <= 1 )
      {
        v28 = *(v22 - 8);
        v29 = *(v22 - 7);
        --v23;
        *(v22 - 6) = v28;
        result = v28 + v29;
        *(v22 - 5) = result;
        v22 += 8;
        if ( !v23 )
          goto LABEL_20;
      }
      v24 = *(v22 - 8);
      v25 = *v22;
      v26 = *(v22 - 7);
      *(v22 - 6) = v24;
      v27 = v24 - v25;
      if ( v27 > v26 )
      {
        v26 = v27;
        *(v22 - 7) = v27;
      }
      result = v24 + v26;
      --v23;
      *(v22 - 5) = result;
      v22 += 8;
    }
    while ( v23 );
  }
LABEL_20:
  v30 = v8 + 1;
  v31 = 2 * a6;
  v32 = 1;
  while ( 1 )
  {
    if ( v12 )
    {
      v33 = v12 - 1;
      v30[3] -= a6;
      v34 = v30[2];
      v35 = v33;
      if ( v33 )
      {
        v36 = v30;
        do
        {
          v36 += 8;
          v37 = v36[3];
          result = v37 - v34;
          v38 = v31 <= v37 - v34;
          if ( v31 <= v37 - v34 )
            v37 -= a6;
          else
            result += (unsigned int)result >> 31;
          if ( v38 )
          {
            *(v36 - 6) = v34 + a6;
            v36[3] = v37;
          }
          else
          {
            v39 = v34 + (result >> 1);
            *(v36 - 6) = v39;
            v36[3] = v39;
          }
          --v35;
          v34 = v36[2];
        }
        while ( v35 );
        v30 += 8 * v33;
      }
      v30[2] = v34 + a6;
    }
    if ( v32-- == 0 )
      break;
    v12 = v13;
    v30 = v9 + 1;
  }
  return result;
}


// ===== 71a5bc psh_hint_table_find_strong_points =====
int __fastcall psh_hint_table_find_strong_points(int result, int a2, int a3, int a4, int a5)
{
  _DWORD *v5; // r4
  int v6; // r5
  int v7; // r11
  int v8; // r7
  int v9; // r12
  bool v10; // zf
  int v11; // r12
  int v12; // r6
  int v13; // r12
  int v14; // r6
  int v15; // r12
  _DWORD *v16; // r12
  _DWORD *v17; // r10
  _DWORD *v18; // r12
  _DWORD *v19; // r6
  _DWORD *v20; // r12
  _DWORD *v21; // r10
  int *v22; // r12

  v5 = *(_DWORD **)(result + 4);
  v6 = *(_DWORD *)(result + 12);
  if ( a3 )
  {
    v7 = -a5;
    while ( 1 )
    {
      v8 = *(_DWORD *)(a2 + 16);
      result = *(_DWORD *)(a2 + 36);
      if ( (v8 & 0x10) != 0 )
        goto LABEL_24;
      v9 = *(char *)(a2 + 20);
      if ( v9 == a5 )
        goto LABEL_26;
      v10 = v9 == v7;
      v11 = -a5;
      if ( v10 )
        goto LABEL_27;
      v12 = *(char *)(a2 + 21);
      if ( v12 == a5 )
      {
LABEL_26:
        v11 = a5;
      }
      else if ( v7 != v12 )
      {
        goto LABEL_8;
      }
LABEL_27:
      if ( !v11 )
      {
LABEL_8:
        if ( (v8 & 0x40) == 0 )
          goto LABEL_24;
        if ( a5 == 2 )
          v13 = 128;
        else
          v13 = 256;
        if ( a5 == 2 )
          v14 = 256;
        else
          v14 = 128;
        v15 = v13 & v8;
        if ( v15 )
        {
          if ( v5 )
          {
            v16 = nullptr;
            while ( 1 )
            {
              v17 = *(_DWORD **)(v6 + 4 * (_DWORD)v16);
              v16 = (_DWORD *)((char *)v16 + 1);
              if ( a4 > result - *v17 && a4 > *v17 - result )
                break;
              if ( v16 == v5 )
                goto LABEL_22;
            }
            *(_DWORD *)(a2 + 16) = v8 | 0x210;
            *(_DWORD *)(a2 + 32) = v17;
            if ( v17 )
              goto LABEL_24;
LABEL_50:
            if ( v5 )
            {
              while ( 1 )
              {
                v22 = *(int **)(v6 + 4 * (_DWORD)v17);
                v17 = (_DWORD *)((char *)v17 + 1);
                if ( result >= *v22 && result <= *v22 + v22[1] )
                  break;
                if ( v17 == v5 )
                  goto LABEL_24;
              }
              *(_DWORD *)(a2 + 32) = v22;
            }
            goto LABEL_24;
          }
LABEL_22:
          v17 = *(_DWORD **)(a2 + 32);
        }
        else
        {
          if ( (v14 & v8) == 0 || !v5 )
            goto LABEL_22;
          while ( 1 )
          {
            v17 = *(_DWORD **)(v6 + 4 * v15++);
            if ( a4 > result - *v17 - v17[1] && a4 > v17[1] - (result - *v17) )
              break;
            if ( (_DWORD *)v15 == v5 )
              goto LABEL_22;
          }
          *(_DWORD *)(a2 + 16) = v8 | 0x410;
          *(_DWORD *)(a2 + 32) = v17;
        }
        if ( v17 )
          goto LABEL_24;
        goto LABEL_50;
      }
      if ( v11 == a5 )
      {
        if ( v5 )
        {
          v20 = nullptr;
          while ( 1 )
          {
            v21 = *(_DWORD **)(v6 + 4 * (_DWORD)v20);
            v20 = (_DWORD *)((char *)v20 + 1);
            if ( result - *v21 < a4 && a4 > *v21 - result )
              break;
            if ( v20 == v5 )
              goto LABEL_24;
          }
          *(_DWORD *)(a2 + 16) = v8 | 0x210;
          *(_DWORD *)(a2 + 32) = v21;
        }
LABEL_24:
        if ( !--a3 )
          return result;
        goto LABEL_25;
      }
      if ( v7 != v11 || !v5 )
        goto LABEL_24;
      v18 = nullptr;
      while ( 1 )
      {
        v19 = *(_DWORD **)(v6 + 4 * (_DWORD)v18);
        v18 = (_DWORD *)((char *)v18 + 1);
        if ( a4 > result - *v19 - v19[1] && a4 > v19[1] - (result - *v19) )
          break;
        if ( v18 == v5 )
          goto LABEL_24;
      }
      --a3;
      *(_DWORD *)(a2 + 16) = v8 | 0x410;
      *(_DWORD *)(a2 + 32) = v19;
      if ( !a3 )
        return result;
LABEL_25:
      a2 += 48;
    }
  }
  return result;
}


// ===== 71a7fc pshinter_get_globals_funcs =====
int __fastcall pshinter_get_globals_funcs(int a1)
{
  return a1 + 108;
}


// ===== 71a804 pshinter_get_t1_funcs =====
int __fastcall pshinter_get_t1_funcs(int a1)
{
  return a1 + 120;
}


// ===== 71a80c pshinter_get_t2_funcs =====
int __fastcall pshinter_get_t2_funcs(int a1)
{
  return a1 + 148;
}


// ===== 71a814 ps_mask_table_done =====
int __fastcall ps_mask_table_done(_DWORD *a1, int a2)
{
  int v2; // r6
  _DWORD *v5; // r4
  int result; // r0

  v2 = a1[1];
  v5 = (_DWORD *)a1[2];
  if ( v2 )
  {
    do
    {
      ft_mem_free(a2, v5[2]);
      --v2;
      v5[2] = 0;
      *v5 = 0;
      v5[1] = 0;
      v5[3] = 0;
      v5 += 4;
    }
    while ( v2 );
    v5 = (_DWORD *)a1[2];
  }
  result = ft_mem_free(a2, (int)v5);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return result;
}


// ===== 71a880 ps_dimension_done =====
int __fastcall ps_dimension_done(_DWORD *a1, int a2)
{
  int result; // r0

  ps_mask_table_done(a1 + 6, a2);
  ps_mask_table_done(a1 + 3, a2);
  result = ft_mem_free(a2, a1[2]);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return result;
}


// ===== 71a8c0 ps_hinter_done =====
int __fastcall ps_hinter_done(_DWORD *a1)
{
  int v1; // r6
  int result; // r0

  v1 = a1[5];
  a1[30] = 0;
  a1[37] = 0;
  ps_dimension_done(a1 + 9, v1);
  result = ps_dimension_done(a1 + 18, v1);
  a1[5] = 0;
  a1[6] = 0;
  return result;
}


// ===== 71a8fc psh_globals_destroy =====
int *__fastcall psh_globals_destroy(int *result)
{
  int *v1; // r1
  int v2; // r0

  v1 = result;
  if ( result )
  {
    v2 = *result;
    v1[490] = 0;
    v1[1] = 0;
    v1[52] = 0;
    v1[103] = 0;
    v1[232] = 0;
    v1[361] = 0;
    return (int *)ft_mem_free(v2, (int)v1);
  }
  return result;
}


// ===== 71a928 psh_hint_table_done =====
int __fastcall psh_hint_table_done(_DWORD *a1, int a2)
{
  int v4; // r1
  int result; // r0

  ft_mem_free(a2, a1[6]);
  v4 = a1[3];
  a1[6] = 0;
  a1[5] = 0;
  a1[7] = 0;
  ft_mem_free(a2, v4);
  a1[3] = 0;
  result = ft_mem_free(a2, a1[2]);
  a1[4] = 0;
  a1[2] = 0;
  a1[1] = 0;
  *a1 = 0;
  return result;
}


// ===== 71a980 ps_hinter_init =====
int __fastcall ps_hinter_init(_DWORD *a1)
{
  _DWORD *v3; // [sp+14h] [bp-10h]
  int v4; // [sp+1Ch] [bp-8h]

  v3 = a1 + 5;
  v4 = a1[2];
  LC_API_MEMSET_0(a1 + 5, 0, 0x58u);
  a1[37] = v3;
  a1[5] = v4;
  a1[27] = psh_globals_new;
  a1[28] = psh_globals_set_scale;
  a1[29] = psh_globals_destroy;
  a1[35] = ps_hints_t1reset;
  a1[31] = t1_hints_open;
  a1[33] = t1_hints_stem;
  a1[34] = ps_hints_t1stem3;
  a1[38] = t2_hints_open;
  a1[39] = ps_hints_close;
  a1[40] = t2_hints_stems;
  a1[41] = ps_hints_t2mask;
  a1[42] = ps_hints_t2counter;
  a1[43] = ps_hints_apply;
  a1[32] = ps_hints_close;
  a1[36] = ps_hints_apply;
  a1[30] = v3;
  return 0;
}


// ===== 71aaec psh_globals_scale_widths =====
int __fastcall psh_globals_scale_widths(int result, int a2)
{
  _DWORD *v2; // r4
  int v3; // r5
  int v4; // r6
  int v5; // r5
  int *v6; // r7
  int *v7; // r4

  v2 = (_DWORD *)(result + 204 * a2);
  v3 = v2[1];
  v4 = v2[50];
  if ( v3 )
  {
    result = FT_MulFix(v2[2], v2[50]);
    v5 = v3 - 1;
    v2[4] = (result + 32) & 0xFFFFFFC0;
    v2[3] = result;
    if ( v5 )
    {
      v6 = v2 + 3;
      v7 = v2 + 2;
      do
      {
        result = FT_MulFix(v7[3], v4);
        if ( (int)abs32(result - *v6) <= 127 )
          result = *v6;
        --v5;
        v7[5] = (result + 32) & 0xFFFFFFC0;
        v7[4] = result;
        v7 += 3;
      }
      while ( v5 );
    }
  }
  return result;
}


// ===== 71ab7c psh_globals_set_scale =====
int __fastcall psh_globals_set_scale(int a1, int a2, int a3, int a4, int a5)
{
  int v7; // r6
  int v8; // r8
  int *v9; // r5
  int v10; // r6
  int *v11; // r5
  int v12; // r0
  int v13; // r3
  int i; // r11
  int *v15; // r7
  int *v16; // r10
  int v17; // r8
  _DWORD *j; // r7
  int v19; // r6
  _DWORD *k; // r5
  int v21; // r0
  int *v23; // [sp+0h] [bp-14h]
  int *v24; // [sp+4h] [bp-10h]
  int *v25; // [sp+8h] [bp-Ch]
  int *v26; // [sp+Ch] [bp-8h]

  if ( *(_DWORD *)(a1 + 200) != a2 || *(_DWORD *)(a1 + 204) != a4 )
  {
    *(_DWORD *)(a1 + 200) = a2;
    *(_DWORD *)(a1 + 204) = a4;
    psh_globals_scale_widths(a1, 0);
  }
  if ( *(_DWORD *)(a1 + 404) != a3 || *(_DWORD *)(a1 + 408) != a5 )
  {
    *(_DWORD *)(a1 + 404) = a3;
    *(_DWORD *)(a1 + 408) = a5;
    psh_globals_scale_widths(a1, 1);
    *(_BYTE *)(a1 + 2492) = a3 <= 34359737 && 125 * a3 < 8 * *(_DWORD *)(a1 + 2476);
    v7 = *(_DWORD *)(a1 + 2480);
    if ( v7 > 0 )
    {
      do
      {
        if ( FT_MulFix(v7, a3) <= 32 )
          break;
        --v7;
      }
      while ( v7 );
    }
    *(_DWORD *)(a1 + 2484) = v7;
    v24 = (int *)(a1 + 1444);
    v8 = 0;
    v23 = (int *)(a1 + 1960);
    v26 = (int *)(a1 + 412);
    v25 = (int *)(a1 + 928);
    do
    {
      if ( v8 == 1 )
      {
        v9 = v25;
      }
      else if ( v8 )
      {
        v9 = v24;
        if ( v8 != 2 )
          v9 = v23;
      }
      else
      {
        v9 = v26;
      }
      v10 = *v9;
      if ( *v9 )
      {
        v11 = v9 + 1;
        do
        {
          v11[7] = FT_MulFix(v11[2], a3) + a5;
          v11[6] = FT_MulFix(v11[3], a3) + a5;
          v11[4] = FT_MulFix(*v11, a3) + a5;
          v12 = FT_MulFix(v11[1], a3);
          v13 = v11[4];
          --v10;
          v11[5] = v12;
          v11[4] = (v13 + 32) & 0xFFFFFFC0;
          v11 += 8;
        }
        while ( v10 );
      }
      ++v8;
    }
    while ( v8 != 4 );
    for ( i = 0; i != 2; ++i )
    {
      if ( i )
        v15 = v25;
      else
        v15 = v26;
      if ( i )
        v16 = v23;
      else
        v16 = v24;
      v17 = *v15;
      if ( *v15 )
      {
        for ( j = v15 + 1; ; j += 8 )
        {
          v19 = *v16;
          if ( *v16 )
          {
            for ( k = v16 + 1; ; k += 8 )
            {
              v21 = *j - *k;
              if ( v21 < 0 )
                v21 = *k - *j;
              if ( FT_MulFix(v21, a3) <= 63 )
                break;
              if ( !--v19 )
                goto LABEL_39;
            }
            j[7] = k[7];
            j[6] = k[6];
            j[4] = k[4];
            j[5] = k[5];
          }
LABEL_39:
          if ( !--v17 )
            break;
        }
      }
    }
  }
  return 0;
}


// ===== 71ade8 psh_hint_align =====
int __fastcall psh_hint_align(int result, int a2, int a3, _BYTE *a4)
{
  int v5; // r2
  int *v6; // r4
  int v9; // r9
  int v10; // r7
  int v11; // r0
  int v12; // r9
  int v13; // r10
  _DWORD *v14; // r11
  int v15; // r1
  int v16; // r7
  signed int v17; // r2
  int v18; // r3
  int v19; // r3
  int v20; // r2
  bool v21; // cc
  int v22; // r3
  bool v23; // zf
  int v24; // r3
  int v25; // r2
  unsigned int v26; // r2
  unsigned int v27; // r2
  int v28; // r3
  int v29; // r10
  int v30; // r2
  int v31; // r1
  int v32; // r11
  int v33; // r12
  _DWORD *v34; // r3
  int v35; // r2
  int v36; // r3
  int v37; // r11
  int v38; // r12
  _DWORD *v39; // r3
  int v40; // r3
  int v41; // r1
  unsigned int v42; // r1
  signed int v43; // r12
  signed int v44; // r2
  bool v45; // cc
  int v46; // [sp+4h] [bp-20h]
  unsigned int v47; // [sp+8h] [bp-1Ch]
  int v48; // [sp+Ch] [bp-18h]
  int v49; // [sp+10h] [bp-14h]

  v5 = a2 + 204 * a3;
  v6 = (int *)result;
  v10 = *(_DWORD *)(v5 + 200);
  if ( (*(_DWORD *)(result + 16) & 8) != 0 )
    return result;
  v9 = *(_DWORD *)(v5 + 204);
  v47 = FT_MulFix(*(_DWORD *)result, *(_DWORD *)(v5 + 200)) + v9;
  v11 = FT_MulFix(v6[1], v10);
  v12 = v11;
  if ( !a3 )
  {
    if ( a4[120] )
    {
      if ( a4[122] )
      {
        v6[3] = v11;
        v48 = 1;
      }
      else
      {
        v6[3] = v11;
        v48 = 0;
      }
      goto LABEL_6;
    }
LABEL_41:
    v28 = v6[4];
    v6[3] = v11;
    v6[2] = v47;
    v6[4] = v28 | 8;
    return v47;
  }
  if ( a3 != 1 )
  {
    v6[3] = v11;
    v48 = 0;
LABEL_6:
    v13 = 0;
    v49 = 0;
    goto LABEL_7;
  }
  if ( !a4[121] )
    goto LABEL_41;
  v29 = (unsigned __int8)a4[123];
  if ( a4[123] )
  {
    v6[3] = v11;
    v48 = 1;
  }
  else
  {
    v6[3] = v11;
    v48 = v29;
  }
  v30 = *(_DWORD *)(a2 + 412);
  v31 = *v6;
  result = v6[1];
  if ( !v30 )
    goto LABEL_53;
  v32 = *(_DWORD *)(a2 + 2488);
  result += v31;
  v33 = result - *(_DWORD *)(a2 + 428);
  if ( v33 < -v32 )
    goto LABEL_53;
  v34 = (_DWORD *)(a2 + 416);
  if ( result > v32 + *(_DWORD *)(a2 + 424) )
  {
    do
    {
      --v30;
      v34 += 8;
      if ( !v30 )
        goto LABEL_53;
      v33 = result - v34[3];
      if ( v33 < -v32 )
        goto LABEL_53;
    }
    while ( result > v32 + v34[2] );
  }
  result = *(unsigned __int8 *)(a2 + 2492);
  if ( !*(_BYTE *)(a2 + 2492) && v33 > *(_DWORD *)(a2 + 2484) )
  {
LABEL_53:
    v13 = 0;
    v49 = 0;
    goto LABEL_54;
  }
  v13 = 1;
  v49 = v34[4];
LABEL_54:
  v35 = *(_DWORD *)(a2 + 928);
  if ( !v35 )
    goto LABEL_61;
  v36 = a2 + 32 * (v35 + 28);
  v37 = *(_DWORD *)(a2 + 2488);
  result = *(_DWORD *)(v36 + 12) - v31;
  if ( result < -v37 )
    goto LABEL_61;
  v38 = *(_DWORD *)(v36 + 16);
  v39 = (_DWORD *)(a2 + 32 * v35 + 900);
  if ( v31 < v38 - v37 )
  {
    do
    {
      --v35;
      v39 -= 8;
      if ( !v35 )
        goto LABEL_61;
      result = v39[2] - v31;
      if ( result < -v37 )
        goto LABEL_61;
    }
    while ( v31 < v39[3] - v37 );
  }
  if ( !*(_BYTE *)(a2 + 2492) && result >= *(_DWORD *)(a2 + 2484) )
  {
LABEL_61:
    v40 = 0;
    goto LABEL_62;
  }
  v13 |= 2u;
  v40 = v39[4];
LABEL_62:
  if ( v13 == 2 )
  {
LABEL_79:
    v6[2] = v40;
    goto LABEL_16;
  }
  if ( v13 == 3 )
  {
    v6[3] = v49 - v40;
    goto LABEL_79;
  }
  if ( v13 != 1 )
  {
LABEL_7:
    v14 = (_DWORD *)v6[5];
    if ( v14 )
    {
      if ( (v14[4] & 8) == 0 )
        psh_hint_align(v6[5], a2, a3, a4);
      v15 = v10;
      v16 = v14[2];
      v46 = (int)v14[3] >> 1;
      v47 = v46 + v16 - (v12 >> 1) + FT_MulFix((v6[1] >> 1) - *v14 + *v6 - ((int)v14[1] >> 1), v15);
    }
    v6[3] = v12;
    v6[2] = v47;
    if ( !a4[124] )
    {
LABEL_12:
      v17 = v12;
LABEL_13:
      v18 = ((v47 + 32) & 0xFFFFFFC0) - v47;
      result = abs32(((v47 + v17 + 32) & 0xFFFFFFC0) - v47 - v17);
      if ( (int)abs32(v18) > result )
        v18 = ((v47 + v17 + 32) & 0xFFFFFFC0) - v47 - v17;
      v6[3] = v17;
      v6[2] = v18 + v47;
      goto LABEL_16;
    }
    if ( v12 <= 64 )
    {
      if ( v12 > 31 )
      {
        v17 = 64;
        v47 = (v47 + (v12 >> 1)) & 0xFFFFFFC0;
        goto LABEL_13;
      }
      if ( v12 > 0 )
      {
        v42 = (v47 + 32) & 0xFFFFFFC0;
        v43 = abs32(v42 - v47);
        v44 = abs32(((v47 + v12 + 32) & 0xFFFFFFC0) - (v47 + v12));
        v45 = v43 <= v44;
        if ( v43 > v44 )
          v47 = (v47 + v12 + 32) & 0xFFFFFFC0;
        v17 = v12;
        if ( v45 )
          v47 = v42;
        goto LABEL_13;
      }
      v47 = (v47 + 32) & 0xFFFFFFC0;
      goto LABEL_12;
    }
    v17 = *(_DWORD *)(a2 + 204 * a3 + 12);
    if ( (int)abs32(v12 - v17) <= 39 )
    {
      if ( v17 <= 47 )
      {
        v41 = 0;
        goto LABEL_77;
      }
    }
    else
    {
      v17 = v12;
    }
    if ( v17 > 191 )
    {
      v17 = (v17 + 32) & 0xFFFFFFC0;
      goto LABEL_13;
    }
    if ( (v17 & 0x3Fu) <= 9 )
      goto LABEL_13;
    v41 = v17 & 0xC0;
    if ( (v17 & 0x3Fu) <= 0x1F )
    {
      v17 = v41 + 10;
      goto LABEL_13;
    }
    if ( (v17 & 0x3Fu) > 0x35 )
      goto LABEL_13;
LABEL_77:
    v17 = v41 + 54;
    goto LABEL_13;
  }
  v6[2] = v49 - v12;
LABEL_16:
  if ( v48 )
  {
    v19 = v6[3];
    v20 = v6[2];
    v21 = v19 <= 63;
    if ( v19 <= 63 )
      v22 = 64;
    else
      v22 = v19 + 32;
    if ( !v21 )
      v22 &= 0xFFFFFFC0;
    if ( v13 == 2 )
    {
      v6[3] = v22;
    }
    else if ( v13 != 3 )
    {
      if ( v13 == 1 )
      {
        v6[3] = v22;
        v6[2] = v49 - v22;
      }
      else
      {
        v23 = (v22 & 0x40) == 0;
        v6[3] = v22;
        v24 = v22 >> 1;
        if ( v23 )
          v25 = v20 + 32;
        else
          v25 = v24 + v20;
        if ( v23 )
          v26 = v25 + v24;
        else
          v26 = v25 & 0xFFFFFFC0;
        if ( v23 )
          v27 = v26 & 0xFFFFFFC0;
        else
          v27 = v26 + 32;
        v6[2] = v27 - v24;
      }
    }
  }
  v6[4] |= 8u;
  return result;
}


// ===== 71b2f8 psh_globals_new =====
int __fastcall psh_globals_new(int a1, int a2, _DWORD *a3)
{
  _DWORD *v6; // r5
  int result; // r0
  int v8; // r3
  int v9; // r2
  _DWORD *v10; // r2
  int v11; // r1
  int v12; // r3
  int v13; // r2
  _DWORD *v14; // r1
  int v15; // r2
  int v16; // r0
  int v17; // r3
  int v18; // [sp+14h] [bp-4h] BYREF

  v6 = ft_mem_alloc(a1, 2496, &v18);
  result = v18;
  if ( !v18 )
  {
    *v6 = a1;
    v6[53] = *(unsigned __int16 *)(a2 + 120);
    v8 = *(unsigned __int8 *)(a2 + 124);
    v9 = v8;
    if ( *(_BYTE *)(a2 + 124) )
    {
      v10 = v6 + 53;
      do
      {
        v11 = *(__int16 *)(a2 + 128 + result);
        --v8;
        result += 2;
        v10[3] = v11;
        v10 += 3;
      }
      while ( v8 );
      v9 = *(unsigned __int8 *)(a2 + 124);
    }
    v6[52] = v9 + 1;
    v6[2] = *(unsigned __int16 *)(a2 + 122);
    v12 = *(unsigned __int8 *)(a2 + 125);
    v13 = v12;
    if ( *(_BYTE *)(a2 + 125) )
    {
      v14 = v6 + 2;
      v15 = 0;
      do
      {
        v16 = *(__int16 *)(a2 + 154 + v15);
        --v12;
        v15 += 2;
        v14[3] = v16;
        v14 += 3;
      }
      while ( v12 );
      v13 = *(unsigned __int8 *)(a2 + 125);
    }
    v6[1] = v13 + 1;
    psh_blues_set_zones(
      (int)(v6 + 103),
      *(unsigned __int8 *)(a2 + 8),
      (__int16 *)(a2 + 12),
      *(unsigned __int8 *)(a2 + 9),
      (__int16 *)(a2 + 40),
      *(_DWORD *)(a2 + 116),
      0);
    psh_blues_set_zones(
      (int)(v6 + 103),
      *(unsigned __int8 *)(a2 + 10),
      (__int16 *)(a2 + 60),
      *(unsigned __int8 *)(a2 + 11),
      (__int16 *)(a2 + 88),
      *(_DWORD *)(a2 + 116),
      1);
    v6[619] = *(_DWORD *)(a2 + 108);
    v6[620] = *(_DWORD *)(a2 + 112);
    v17 = *(_DWORD *)(a2 + 116);
    v6[102] = 0;
    v6[50] = 0;
    v6[622] = v17;
    v6[51] = 0;
    v6[101] = 0;
    result = v18;
  }
  *a3 = v6;
  return result;
}


// ===== 71b440 ps_mask_table_alloc =====
int __fastcall ps_mask_table_alloc(unsigned int *a1, int a2, _DWORD *a3)
{
  unsigned int v3; // r5
  unsigned int v4; // r3
  unsigned int v5; // r6
  int v8; // lr
  _DWORD *v9; // r8
  int v10; // r0
  int v11; // r3
  int v13; // [sp+Ch] [bp-8h] BYREF

  v3 = *a1;
  v4 = a1[1];
  v5 = *a1 + 1;
  if ( v5 <= v4 )
    goto LABEL_4;
  v8 = a1[2];
  v9 = nullptr;
  v13 = 0;
  v10 = ft_mem_realloc(a2, 16, v4, (v3 + 8) & 0xFFFFFFF8, v8, &v13);
  v11 = v13;
  a1[2] = v10;
  if ( !v11 )
  {
    a1[1] = (v3 + 8) & 0xFFFFFFF8;
LABEL_4:
    v11 = 0;
    v9 = (_DWORD *)(a1[2] + 16 * v3);
    *v9 = 0;
    v9[3] = 0;
    *a1 = v5;
  }
  *a3 = v9;
  return v11;
}


// ===== 71b4d8 ps_hints_t1reset =====
int *__fastcall ps_hints_t1reset(int *result, int a2)
{
  int *v2; // r4
  int v4; // r6
  int v5; // r3
  unsigned int *v6; // r0
  int v7; // r3
  _DWORD v8[2]; // [sp+4h] [bp-8h] BYREF

  v2 = result;
  if ( !result[1] )
  {
    v4 = *result;
    if ( result[3] != 1 )
    {
      result = (_DWORD *)&byte_6;
LABEL_5:
      v2[1] = (int)result;
      return result;
    }
    v5 = result[7];
    v6 = (unsigned int *)(result + 7);
    if ( v5 )
      *(_DWORD *)(v2[9] + 16 * v5 - 4) = a2;
    result = (int *)ps_mask_table_alloc(v6, v4, v8);
    if ( result )
      goto LABEL_5;
    v7 = v2[16];
    if ( v7 )
      *(_DWORD *)(v2[18] + 16 * v7 - 4) = a2;
    result = (int *)ps_mask_table_alloc((unsigned int *)v2 + 16, v4, v8);
    if ( result )
      goto LABEL_5;
  }
  return result;
}


// ===== 71b574 ps_mask_ensure =====
int __fastcall ps_mask_ensure(int a1, int a2, int a3)
{
  unsigned int v3; // r5
  unsigned int v4; // r3
  int v5; // r12
  unsigned int v7; // r5
  int v8; // r0
  int v10; // [sp+Ch] [bp-8h] BYREF

  v3 = (unsigned int)(a2 + 7) >> 3;
  v4 = (unsigned int)(*(_DWORD *)(a1 + 4) + 7) >> 3;
  v5 = 0;
  v10 = 0;
  if ( v4 < v3 )
  {
    v7 = (v3 + 7) & 0xFFFFFFF8;
    v8 = ft_mem_realloc(a3, 1, v4, v7, *(_DWORD *)(a1 + 8), &v10);
    v5 = v10;
    *(_DWORD *)(a1 + 8) = v8;
    if ( !v5 )
      *(_DWORD *)(a1 + 4) = 8 * v7;
  }
  return v5;
}


// ===== 71b5f0 ps_mask_set_bit =====
int __fastcall ps_mask_set_bit(_DWORD *a1, int a2, int a3)
{
  int result; // r0

  if ( a2 < 0 )
    return 0;
  if ( (unsigned int)a2 < *a1 )
    goto LABEL_3;
  result = ps_mask_ensure((int)a1, a2 + 1, a3);
  if ( !result )
  {
    *a1 = a2 + 1;
LABEL_3:
    result = 0;
    *(_BYTE *)(a1[2] + (a2 >> 3)) |= 128 >> (a2 & 7);
  }
  return result;
}


// ===== 71b650 ps_dimension_add_t1stem =====
int __fastcall ps_dimension_add_t1stem(unsigned int *a1, int a2, int a3, int a4, unsigned int *a5)
{
  int v5; // r7
  int v7; // r6
  int v9; // r11
  unsigned int v10; // r5
  int v11; // r12
  int v12; // r3
  int v13; // r2
  unsigned int v14; // r4
  unsigned int v15; // r2
  _DWORD *v16; // r3
  int result; // r0
  unsigned int v18; // r2
  _DWORD *v19; // r2
  int v20[2]; // [sp+14h] [bp-8h] BYREF

  v5 = a3;
  v7 = a2;
  if ( a3 < 0 )
  {
    if ( a3 == -21 )
    {
      v7 = a2 - 21;
      v9 = 3;
    }
    else
    {
      v9 = 1;
    }
    v5 = 0;
  }
  else
  {
    v9 = 0;
  }
  if ( a5 )
    *a5 = -1;
  v10 = *a1;
  v11 = a1[2];
  v12 = v11;
  if ( !*a1 )
  {
    v14 = 0;
    goto LABEL_19;
  }
  v13 = 0;
  v14 = 0;
  while ( *(_DWORD *)(v11 + v13) != v7 || *(_DWORD *)(v11 + v13 + 4) != v5 )
  {
    ++v14;
    v13 += 12;
    if ( v14 == v10 )
      goto LABEL_19;
  }
  if ( v10 <= v14 )
  {
LABEL_19:
    v18 = a1[1];
    if ( v10 + 1 >= v18 )
    {
      v20[0] = 0;
      if ( v10 + 1 > v18 )
      {
        v12 = ft_mem_realloc(a4, 12, v18, (v10 + 8) & 0xFFFFFFF8, v11, v20);
        result = v20[0];
        a1[2] = v12;
        if ( result )
          return result;
        a1[1] = (v10 + 8) & 0xFFFFFFF8;
      }
      else
      {
        v12 = v11;
      }
    }
    v19 = (_DWORD *)(v12 + 12 * v10);
    *a1 = v10 + 1;
    *v19 = v7;
    v19[1] = v5;
    v19[2] = v9;
    v15 = a1[3];
    if ( v15 )
      goto LABEL_13;
LABEL_24:
    result = ps_mask_table_alloc(a1 + 3, a4, v20);
    v16 = (_DWORD *)v20[0];
    if ( result )
      return result;
    goto LABEL_14;
  }
  v15 = a1[3];
  if ( !v15 )
    goto LABEL_24;
LABEL_13:
  v16 = (_DWORD *)(a1[5] + 16 * (v15 - 1));
  v20[0] = (int)v16;
LABEL_14:
  result = ps_mask_set_bit(v16, v14, a4);
  if ( !result )
  {
    if ( a5 )
      *a5 = v14;
  }
  return result;
}


// ===== 71b7e4 ps_dimension_set_mask_bits =====
int __fastcall ps_dimension_set_mask_bits(int a1, int a2, unsigned int a3, int a4, int a5, int a6)
{
  int v7; // r0
  int v8; // r6
  bool v9; // zf
  int result; // r0
  int v13; // r3
  int *v14; // r4
  _BYTE *v15; // r1
  int v16; // r3
  int v17; // r2
  _BYTE *v18; // r5
  char v19; // r12
  int *v20; // [sp+4h] [bp-4h] BYREF

  v7 = *(_DWORD *)(a1 + 12);
  v8 = a4;
  v9 = v7 == 0;
  if ( v7 )
  {
    v7 = *(_DWORD *)(a1 + 20) + 16 * v7;
    a4 = a5;
  }
  if ( !v9 )
    *(_DWORD *)(v7 - 4) = a4;
  result = ps_mask_table_alloc((unsigned int *)(a1 + 12), a6, &v20);
  if ( !result )
  {
    v13 = *(_DWORD *)(a1 + 12);
    if ( v13 )
    {
      v14 = (int *)(*(_DWORD *)(a1 + 20) + 16 * (v13 - 1));
      v20 = v14;
    }
    else
    {
      result = ps_mask_table_alloc((unsigned int *)(a1 + 12), a6, &v20);
      v14 = v20;
      if ( result )
        return result;
    }
    result = ps_mask_ensure((int)v14, v8, a6);
    if ( !result )
    {
      *v14 = v8;
      v15 = (_BYTE *)v14[2];
      if ( v8 )
      {
        v16 = 128;
        v17 = 128 >> (a3 & 7);
        v18 = (_BYTE *)(a2 + (a3 >> 3));
        do
        {
          v19 = *v15 & ~(_BYTE)v16;
          if ( (*v18 & (unsigned __int8)v17) != 0 )
            v19 |= v16;
          v17 >>= 1;
          if ( !v17 )
          {
            ++v18;
            v17 = 128;
          }
          v16 >>= 1;
          *v15 = v19;
          if ( !v16 )
          {
            v16 = 128;
            ++v15;
          }
          --v8;
        }
        while ( v8 );
      }
    }
  }
  return result;
}


// ===== 71b8f0 ps_hints_t1stem3 =====
void __fastcall ps_hints_t1stem3(int *a1, unsigned int a2, int *a3)
{
  int v5; // r10
  unsigned int *v6; // r5
  int v7; // r0
  int v8; // r5
  int *v9; // r3
  int v10; // r6
  int v11; // r2
  _DWORD *v12; // r0
  int v13; // r7
  unsigned int v14; // r3
  int v15; // [sp+8h] [bp-1Ch]
  int v16; // [sp+Ch] [bp-18h]
  int v17; // [sp+10h] [bp-14h] BYREF
  int v18; // [sp+14h] [bp-10h]
  int v19; // [sp+18h] [bp-Ch]
  _DWORD *v20[2]; // [sp+1Ch] [bp-8h] BYREF

  if ( !a1[1] )
  {
    v15 = a2;
    v16 = *a1;
    if ( a2 > 1 )
    {
      v15 = 1;
      FT_Message("ps_hints_t1stem3: invalid dimension (%d) used\n", a2);
    }
    if ( a1[3] != 1 )
    {
      v5 = 6;
      FT_Message("ps_hints_t1stem3: called with invalid hint type!\n");
LABEL_6:
      FT_Message("ps_hints_t1stem3: could not add counter stems to table\n");
      a1[1] = v5;
      return;
    }
    v6 = (unsigned int *)&v17;
    while ( 1 )
    {
      v7 = ps_dimension_add_t1stem((unsigned int *)&a1[9 * v15 + 4], *a3, a3[1], v16, v6++);
      if ( v7 )
      {
        v5 = v7;
        goto LABEL_6;
      }
      if ( v6 == (unsigned int *)v20 )
        break;
      a3 += 2;
    }
    v8 = v17;
    v9 = &a1[9 * v15];
    v10 = v18;
    v11 = v9[10];
    v12 = (_DWORD *)v9[12];
    v13 = v19;
    v20[0] = v12;
    if ( v11 )
    {
      while ( 1 )
      {
        v14 = *v12;
        if ( *v12 > (unsigned int)v17 && (*(unsigned __int8 *)(v12[2] + (v17 >> 3)) & (128 >> (v17 & 7))) != 0 )
          break;
        if ( v14 > v18 && (*(unsigned __int8 *)(v12[2] + (v18 >> 3)) & (128 >> (v18 & 7))) != 0
          || v14 > v19 && (*(unsigned __int8 *)(v12[2] + (v19 >> 3)) & (128 >> (v19 & 7))) != 0 )
        {
          break;
        }
        v12 += 4;
        --v11;
        v20[0] = v12;
        if ( !v11 )
          goto LABEL_25;
      }
    }
    else
    {
LABEL_25:
      v5 = ps_mask_table_alloc((unsigned int *)&a1[9 * v15 + 10], v16, v20);
      if ( v5 )
        goto LABEL_6;
      v12 = v20[0];
    }
    v5 = ps_mask_set_bit(v12, v8, v16);
    if ( v5 )
      goto LABEL_6;
    v5 = ps_mask_set_bit(v20[0], v10, v16);
    if ( v5 )
      goto LABEL_6;
    v5 = ps_mask_set_bit(v20[0], v13, v16);
    if ( v5 )
      goto LABEL_6;
  }
}


// ===== 71baf4 ps_hints_stem =====
void __fastcall ps_hints_stem(int *a1, unsigned int a2, int a3, int *a4)
{
  int v7; // r3
  int v8; // r1
  unsigned int *v9; // r7
  int v10; // r10

  v7 = a2;
  if ( !a1[1] )
  {
    if ( a2 > 1 )
    {
      FT_Message("ps_hints_stem: invalid dimension (%d) used\n", a2);
      v7 = 1;
    }
    v8 = a1[3];
    if ( (unsigned int)(v8 - 1) > 1 )
    {
      FT_Message("ps_hints_stem: called with invalid hint type (%d)\n", v8);
    }
    else
    {
      v9 = (unsigned int *)&a1[9 * v7 + 4];
      if ( a3 )
      {
        while ( 1 )
        {
          v10 = ps_dimension_add_t1stem(v9, *a4, a4[1], *a1, nullptr);
          if ( v10 )
            break;
          if ( !--a3 )
            return;
          a4 += 2;
        }
        FT_Message("ps_hints_stem: could not add stem (%d,%d) to hints table\n", *a4, a4[1]);
        a1[1] = v10;
      }
    }
  }
}


// ===== 71bbc4 t1_hints_stem =====
void __fastcall t1_hints_stem(int *a1, unsigned int a2, int *a3)
{
  ps_hints_stem(a1, a2, 1, a3);
}


// ===== 71bbd0 t2_hints_stems =====
void __fastcall t2_hints_stems(int *a1, unsigned int a2, int a3, int a4)
{
  int v4; // r7
  int v8; // r4
  int v9; // r2
  int v10; // r3
  int *v11; // r3
  int v12; // r1
  int v13[33]; // [sp+0h] [bp-84h] BYREF

  v4 = a3;
  if ( a3 > 0 )
  {
    v8 = 0;
    do
    {
      if ( v4 >= 16 )
        v9 = 16;
      else
        v9 = v4;
      if ( 2 * v9 > 0 )
      {
        v10 = 0;
        do
        {
          v8 += *(_DWORD *)(a4 + v10 * 4);
          v13[v10++] = (v8 + 0x8000) >> 16;
        }
        while ( v10 != 2 * v9 );
      }
      v11 = v13;
      v12 = 0;
      do
      {
        v12 += 2;
        v11[1] -= *v11;
        v11 += 2;
      }
      while ( v12 < 2 * v9 );
      v4 -= v9;
      ps_hints_stem(a1, a2, v9, v13);
    }
    while ( v4 > 0 );
  }
}


// ===== 71bc7c ps_hints_t2counter =====
void __fastcall ps_hints_t2counter(int *a1, int a2, int a3)
{
  unsigned int v5; // r5
  int v6; // r7
  int v7; // r8
  int v8; // r0
  int v9; // r0
  int v10; // r0

  if ( !a1[1] )
  {
    v5 = a1[4];
    v6 = a1[13];
    v7 = *a1;
    v8 = (int)(a1 + 4);
    if ( v6 + v5 == a2 )
    {
      v9 = ps_dimension_set_mask_bits(v8, a3, 0, v5, 0, v7);
      if ( v9 )
      {
        a1[1] = v9;
      }
      else
      {
        v10 = ps_dimension_set_mask_bits((int)(a1 + 13), a3, v5, v6, 0, v7);
        if ( v10 )
          a1[1] = v10;
      }
    }
    else
    {
      FT_Message("ps_hints_t2counter: called with invalid bitcount %d (instead of %d)\n", a2, v6 + v5);
    }
  }
}


// ===== 71bd24 ps_hints_t2mask =====
void __fastcall ps_hints_t2mask(int *a1, int a2, int a3, int a4)
{
  int v7; // r3
  int v8; // r5
  int v9; // r8
  int v10; // r0
  int v11; // r0

  if ( !a1[1] )
  {
    v7 = a1[4];
    v8 = a1[13];
    v9 = *a1;
    if ( v8 + v7 == a3 )
    {
      v10 = ps_dimension_set_mask_bits((int)(a1 + 4), a4, a1[13], v7, a2, v9);
      if ( v10 )
      {
        a1[1] = v10;
      }
      else
      {
        v11 = ps_dimension_set_mask_bits((int)(a1 + 13), a4, 0, v8, a2, v9);
        if ( v11 )
          a1[1] = v11;
      }
    }
    else
    {
      FT_Message("ps_hints_t2mask: called with invalid bitcount %d (instead of %d)\n", a3, v8 + v7);
    }
  }
}


// ===== 71bdc8 psh_hint_table_record =====
void __fastcall psh_hint_table_record(unsigned int *a1, unsigned int a2)
{
  unsigned int v2; // r2
  int v3; // r5
  _DWORD *v4; // r8
  int v5; // r1
  int v6; // r3
  unsigned int v7; // r12
  unsigned int v8; // r4
  int v9; // r7
  _DWORD *v10; // r2
  unsigned int v11; // r3

  v2 = a1[2];
  if ( a2 >= *a1 )
  {
    FT_Message("psh_hint_table_record: invalid hint index %d\n");
  }
  else
  {
    v3 = 28 * a2;
    v4 = (_DWORD *)(v2 + 28 * a2);
    v5 = v4[4];
    v6 = v5 & 4;
    if ( (v5 & 4) == 0 )
    {
      v4[4] = v5 | 4;
      v7 = a1[1];
      v8 = a1[4];
      v4[5] = 0;
      if ( v7 )
      {
        v9 = *(_DWORD *)(v2 + v3);
        do
        {
          v10 = *(_DWORD **)(v8 + v6);
          v6 += 4;
          if ( *v10 <= v9 + v4[1] && *v10 + v10[1] >= v9 )
          {
            v4[5] = v10;
            goto LABEL_8;
          }
          --v7;
        }
        while ( v7 );
        v11 = a1[1];
        if ( v11 >= *a1 )
          goto LABEL_13;
      }
      else
      {
LABEL_8:
        v11 = a1[1];
        if ( v11 >= *a1 )
        {
LABEL_13:
          FT_Message("psh_hint_table_record: too many sorted hints!  BUG!\n");
          return;
        }
      }
      *(_DWORD *)(a1[4] + 4 * v11) = v4;
      a1[1] = v11 + 1;
    }
  }
}


// ===== 71bea4 psh_hint_table_init =====
int __fastcall psh_hint_table_init(unsigned int *a1, int *a2, int *a3, int a4, int a5)
{
  int v5; // r5
  int v6; // r7
  int v10; // r6
  int v11; // r0
  int v12; // r12
  int v14; // r0
  int v15; // r0
  unsigned int v16; // r3
  _DWORD *v17; // r2
  _DWORD *i; // r3
  int v19; // r1
  int v20; // r11
  int *v21; // r10
  int v22; // r8
  unsigned __int8 *v23; // r9
  int v24; // r7
  unsigned int v25; // r5
  int j; // r3
  bool v27; // zf
  int v28; // t1
  unsigned int v29; // r1
  unsigned int v30; // r6
  unsigned int v31; // r5
  unsigned int v32; // r1
  int v33[2]; // [sp+Ch] [bp-8h] BYREF

  v5 = *a2;
  v6 = 2 * *a2;
  v10 = (int)v33;
  v11 = ft_mem_realloc(a5, 4, 0, v6, 0, v33);
  v12 = v33[0];
  a1[3] = v11;
  if ( !v12 )
  {
    v14 = ft_mem_realloc(a5, 28, 0, v5, 0, v33);
    v12 = v33[0];
    a1[2] = v14;
    if ( !v12 )
    {
      v15 = ft_mem_realloc(a5, 16, 0, v6 + 1, 0, v33);
      v12 = v33[0];
      a1[6] = v15;
      if ( !v12 )
      {
        v16 = a1[3];
        a1[7] = 0;
        *a1 = v5;
        a1[4] = v16 + 4 * v5;
        a1[1] = 0;
        a1[5] = 0;
        v17 = (_DWORD *)a2[2];
        for ( i = (_DWORD *)a1[2]; v5; i += 7 )
        {
          --v5;
          *i = *v17;
          i[1] = v17[1];
          v19 = v17[2];
          v17 += 3;
          i[4] = v19;
        }
        if ( a3 )
        {
          v20 = *a3;
          v21 = (int *)a3[2];
          a1[8] = (unsigned int)a3;
          if ( v20 )
          {
            while ( 1 )
            {
              v22 = *v21;
              v23 = (unsigned __int8 *)v21[2];
              if ( *v21 )
              {
                v24 = 0;
                v25 = 0;
                for ( j = 0; ; j = v10 )
                {
                  v27 = j == 0;
                  if ( j )
                  {
                    v10 = j >> 1;
                  }
                  else
                  {
                    v28 = *v23++;
                    v24 = v28;
                    j = 128;
                  }
                  if ( v27 )
                    v10 = 64;
                  if ( (j & v24) != 0 )
                  {
                    v29 = v25++;
                    psh_hint_table_record(a1, v29);
                    if ( v25 == v22 )
                      break;
                  }
                  else if ( ++v25 == v22 )
                  {
                    break;
                  }
                }
              }
              if ( !--v20 )
                break;
              v21 += 4;
            }
          }
        }
        if ( a1[1] != *a1 )
        {
          FT_Message("psh_hint_table_init: missing/incorrect hint masks!\n");
          v30 = *a1;
          if ( *a1 )
          {
            v31 = 0;
            do
            {
              v32 = v31++;
              psh_hint_table_record(a1, v32);
            }
            while ( v31 != v30 );
          }
        }
        return v33[0];
      }
    }
  }
  return v12;
}


// ===== 71c08c psh_hint_table_activate_mask =====
void __fastcall psh_hint_table_activate_mask(int *a1, int *a2)
{
  int v2; // r8
  int v3; // r3
  int v5; // r9
  unsigned __int8 *v6; // r11
  int i; // r2
  int v8; // r1
  int v9; // r6
  int v10; // r7
  const char *v11; // r3
  int v12; // r5
  int v13; // r10
  int j; // r2
  bool v15; // zf
  int v16; // t1
  int v17; // r1
  int v18; // r2
  _DWORD **v19; // r12
  int k; // r8
  _DWORD *v21; // r4
  int v22; // r3
  int v23; // r2
  _DWORD *v24; // r0
  const char *v25; // [sp+4h] [bp-8h]

  v3 = *a1;
  v5 = *a2;
  v6 = (unsigned __int8 *)a2[2];
  for ( i = a1[2]; v3; i += 28 )
  {
    v8 = *(_DWORD *)(i + 16);
    --v3;
    *(_DWORD *)(i + 24) = -1;
    *(_DWORD *)(i + 16) = v8 & 0xFFFFFFFB;
  }
  if ( v5 )
  {
    v9 = 0;
    v10 = 0;
    v11 = "psh_hint_tableactivate_mask: too many active hints\n";
    v12 = 0;
    v13 = 0;
    for ( j = 0; ; j = v2 )
    {
      v15 = j == 0;
      if ( j )
      {
        v2 = j >> 1;
      }
      else
      {
        v16 = *v6++;
        v13 = v16;
        j = 128;
      }
      if ( v15 )
        v2 = 64;
      if ( (v13 & j) != 0 )
      {
        v17 = a1[2] + v9;
        v18 = *(_DWORD *)(v17 + 16);
        if ( (v18 & 4) == 0 )
        {
          *(_DWORD *)(v17 + 16) = v18 | 4;
          if ( *a1 <= (unsigned int)v10 )
          {
            v25 = v11;
            FT_Message(v11);
            v11 = v25;
          }
          else
          {
            *(_DWORD *)(a1[3] + 4 * v10++) = v17;
          }
        }
      }
      ++v12;
      v9 += 28;
      if ( v12 == v5 )
        break;
    }
    a1[1] = v10;
    if ( v10 > 1 )
    {
      v19 = (_DWORD **)(a1[3] + 4);
      for ( k = 1; k != v10; ++k )
      {
        v21 = *v19;
        v22 = 0;
        v23 = 0;
        do
        {
          v24 = v19[v22 - 1];
          ++v23;
          if ( *v24 < *v21 )
            break;
          v19[v22] = v24;
          v19[--v22] = v21;
        }
        while ( v23 != k );
        ++v19;
      }
    }
  }
  else
  {
    a1[1] = 0;
  }
}


// ===== 71c1e4 ps_mask_table_merge_all =====
int __fastcall ps_mask_table_merge_all(int *a1, int a2)
{
  int v2; // r3
  int v3; // r5
  int v4; // r6
  int v5; // r11
  int v6; // r4
  int v7; // r1
  _BYTE **v8; // r8
  int v9; // r7
  unsigned int v10; // r3
  _BYTE *v11; // r2
  _BYTE *v12; // r0
  int result; // r0
  int v14; // r3
  int v15; // r4
  unsigned int v16; // r9
  unsigned int v17; // r8
  unsigned int *v18; // r10
  _DWORD *v19; // r7
  unsigned int v20; // r2
  int v21; // r8
  int v22; // r3
  int v23; // r3
  int v24; // r5
  int v25; // r8
  int v26; // r10
  _DWORD *v27; // r4
  int i; // [sp+4h] [bp-18h]

  v2 = *a1;
  v3 = *a1 - 1;
  if ( v3 > 0 )
  {
    v4 = 16 * (v2 + 0xFFFFFFF);
    for ( i = 16 * (v2 - 2); ; i -= 16 )
    {
LABEL_3:
      v5 = v3 - 1;
      v6 = a1[2];
      v7 = v3 - 1;
      v8 = (_BYTE **)(v6 + i + 8);
      while ( 1 )
      {
        v10 = (unsigned int)*(v8 - 2);
        v11 = *v8;
        if ( *(_DWORD *)(v6 + v4) < v10 )
          v10 = *(_DWORD *)(v6 + v4);
        if ( v10 > 7 )
        {
          if ( (**(_BYTE **)(v6 + v4 + 8) & *v11) != 0 )
            break;
          v12 = *(_BYTE **)(v6 + v4 + 8);
          while ( 1 )
          {
            v10 -= 8;
            ++v12;
            ++v11;
            if ( v10 <= 7 )
              break;
            if ( (*v11 & *v12) != 0 )
              goto LABEL_18;
          }
        }
        else
        {
          v12 = *(_BYTE **)(v6 + v4 + 8);
        }
        if ( v10 && ((unsigned __int8)(*v11 & *v12) & ~(255 >> v10)) != 0 )
          break;
        --v7;
        v8 -= 4;
        if ( v7 == -1 )
        {
          --v3;
          v4 -= 16;
          i -= 16;
          if ( v5 > 0 )
            goto LABEL_3;
          return 0;
        }
      }
LABEL_18:
      v14 = v7;
      v9 = a1[2];
      v15 = v9;
      if ( v7 <= v3 )
      {
        if ( v7 >= v3 )
          break;
      }
      else
      {
        v7 = v3;
        v3 = v14;
      }
      v14 = *a1;
      if ( *a1 <= v3 )
        break;
      v16 = *(_DWORD *)(v9 + 16 * v3);
      v17 = *(_DWORD *)(v9 + 16 * v7);
      v18 = (unsigned int *)(v9 + 16 * v7);
      v19 = (_DWORD *)(v9 + 16 * v3);
      if ( v16 )
      {
        if ( v17 < v16 )
        {
          result = ps_mask_ensure(v15 + 16 * v7, v16, a2);
          if ( result )
            return result;
          do
          {
            if ( *v18 > v17 )
              *(_BYTE *)(v18[2] + ((int)v17 >> 3)) &= ~(128 >> (v17 & 7));
            ++v17;
          }
          while ( v16 > v17 );
        }
        v20 = v18[2];
        v21 = v19[2];
        if ( (v16 + 7) >> 3 )
        {
          v22 = 0;
          do
          {
            *(_BYTE *)(v20 + v22) |= *(_BYTE *)(v21 + v22);
            ++v22;
          }
          while ( v22 != (v16 + 7) >> 3 );
        }
      }
      *(_DWORD *)(v15 + 16 * v3) = 0;
      v19[3] = 0;
      v23 = *a1;
      v24 = *a1 - 1 - v3;
      if ( v24 > 0 )
      {
        v25 = v19[1];
        v26 = v19[2];
        memmove(v19, v19 + 4, 16 * v24);
        v27 = &v19[4 * v24];
        v27[1] = v25;
        v27[2] = v26;
        v27[3] = 0;
        *v27 = 0;
        v23 = *a1;
      }
      v3 = v5;
      *a1 = v23 - 1;
      v4 -= 16;
      if ( v5 <= 0 )
        return 0;
    }
    FT_Message("ps_mask_table_merge: ignoring invalid indices (%d,%d)\n", v7, v3, v14);
    v3 = v5;
    v4 -= 16;
    i -= 16;
    if ( v5 > 0 )
      goto LABEL_3;
  }
  return 0;
}


// ===== 71c480 ps_hints_close =====
int __fastcall ps_hints_close(int *a1, int a2)
{
  int result; // r0
  int v5; // r3
  int v6; // r5
  int v7; // r3

  result = a1[1];
  if ( !result )
  {
    v5 = a1[7];
    v6 = *a1;
    if ( v5 )
      *(_DWORD *)(a1[9] + 16 * v5 - 4) = a2;
    result = ps_mask_table_merge_all(a1 + 10, v6);
    if ( !result )
    {
      v7 = a1[16];
      if ( v7 )
        *(_DWORD *)(a1[18] + 16 * v7 - 4) = a2;
      return ps_mask_table_merge_all(a1 + 19, v6);
    }
  }
  return result;
}


// ===== 71c4f0 ps_hints_apply =====
int __fastcall ps_hints_apply(int *a1, __int16 *a2, int *a3, int a4)
{
  int v6; // r3
  int v7; // r4
  _DWORD *v8; // r0
  unsigned int v9; // r3
  _DWORD *v10; // r8
  int v11; // r12
  int v12; // r4
  int v13; // r3
  int v14; // r2
  _DWORD *v15; // lr
  int v16; // r5
  int v17; // r12
  int v18; // r1
  bool v19; // zf
  _DWORD *i; // r2
  unsigned int v21; // r3
  _DWORD *v22; // r5
  int v23; // r4
  int v24; // r7
  unsigned int v25; // r10
  int v26; // r8
  int v27; // r3
  int v28; // r12
  int v29; // r2
  int v30; // lr
  int v31; // r12
  int v32; // lr
  int v33; // r3
  int v34; // r0
  int v35; // r2
  int v36; // r1
  int v37; // r12
  int v38; // r0
  int v39; // lr
  int v40; // r1
  int v41; // r2
  int v42; // r12
  unsigned int v43; // r2
  _DWORD *v44; // r6
  _DWORD *v45; // r5
  unsigned int v46; // r10
  int v47; // r8
  _DWORD *v48; // r7
  _DWORD *v49; // r4
  unsigned int v50; // r9
  int v51; // r11
  int v52; // r0
  signed int v53; // r5
  _BOOL4 v54; // r3
  int v55; // r4
  bool v56; // zf
  unsigned int *v57; // r0
  char v58; // r1
  unsigned int v59; // r2
  _DWORD *v60; // r3
  int v61; // r12
  int v62; // r1
  unsigned int v63; // r0
  unsigned int v64; // r3
  _DWORD *v65; // r2
  _DWORD *v66; // lr
  _DWORD *v67; // r4
  _DWORD *v68; // r1
  _DWORD *v69; // r2
  int v70; // r12
  int v71; // r0
  unsigned int v72; // r0
  _DWORD *v73; // r10
  int v74; // r6
  int v75; // r7
  int v76; // r8
  _DWORD *v77; // r4
  __int64 v78; // r6
  unsigned int v79; // r0
  _DWORD *v80; // r1
  unsigned int v81; // r4
  int v82; // r7
  unsigned int v83; // r4
  int v84; // r5
  unsigned int *v85; // r3
  int v86; // r1
  unsigned int v87; // r5
  int *v88; // r7
  unsigned int v89; // r4
  signed int v90; // r0
  int v91; // r9
  int v92; // r11
  _DWORD *v93; // r4
  int v94; // r3
  int *m; // r4
  int v96; // r6
  int v97; // r8
  int v98; // r10
  int v99; // r4
  unsigned int v100; // r2
  unsigned int v101; // r3
  int v102; // r1
  int v103; // r8
  int v104; // r7
  _DWORD *v105; // r3
  int v106; // r1
  _DWORD *v107; // r3
  int v108; // r0
  int v109; // r2
  int v110; // r6
  _DWORD *v111; // r2
  int v112; // r5
  _DWORD *v113; // r0
  int v114; // r12
  int v115; // r1
  unsigned int v116; // r0
  int v117; // lr
  int v118; // r2
  unsigned int v119; // r6
  unsigned int v120; // r1
  int v121; // r3
  unsigned int *v122; // r7
  unsigned int v123; // r12
  unsigned int *v124; // r1
  unsigned int v125; // r2
  unsigned int *v126; // r3
  unsigned int v127; // t1
  unsigned int *v128; // r0
  unsigned int *v129; // r11
  int v130; // r2
  int v131; // r1
  int v132; // r3
  unsigned int v133; // r3
  int v134; // r0
  int v135; // r10
  int j; // r12
  unsigned int v137; // r10
  int v138; // r9
  unsigned int *v139; // r12
  int v140; // r2
  int v141; // t1
  int v142; // r3
  int v143; // r12
  int v144; // r2
  int v145; // r0
  int v146; // lr
  unsigned int v147; // r6
  unsigned int v148; // r1
  _DWORD *v149; // r3
  _DWORD *v150; // r7
  _DWORD *v151; // r9
  _DWORD *v152; // r6
  int v153; // r10
  int v154; // r2
  int v155; // r11
  int v156; // r3
  int v157; // r3
  int v158; // r7
  int v159; // r0
  int v160; // r3
  unsigned int v161; // r2
  int v162; // r12
  int v163; // r1
  unsigned int k; // r3
  unsigned int *v165; // r4
  int v166; // r4
  int v167; // r0
  int v168; // r10
  int v169; // r0
  int v170; // r1
  int v171; // r6
  int v172; // r8
  int v173; // r10
  int v174; // r0
  int v175; // r6
  _DWORD *v176; // r12
  int v177; // r3
  bool v178; // zf
  int v179; // r3
  bool v180; // zf
  int v181; // r4
  int v182; // r0
  int v183; // r2
  int v184; // lr
  int v185; // r6
  int *v186; // r3
  int v187; // lr
  int v188; // r3
  int v189; // lr
  int v190; // r0
  int v191; // r6
  int *v192; // r3
  int v193; // r0
  int v194; // [sp+Ch] [bp-110h]
  int v195; // [sp+10h] [bp-10Ch]
  _DWORD *v196; // [sp+10h] [bp-10Ch]
  unsigned int v197; // [sp+10h] [bp-10Ch]
  int v199; // [sp+14h] [bp-108h]
  unsigned int v200; // [sp+14h] [bp-108h]
  unsigned int v202; // [sp+18h] [bp-104h]
  int v204; // [sp+1Ch] [bp-100h]
  int v205; // [sp+20h] [bp-FCh]
  int v206; // [sp+20h] [bp-FCh]
  unsigned int v207; // [sp+28h] [bp-F4h]
  int v208; // [sp+28h] [bp-F4h]
  unsigned int *v209; // [sp+2Ch] [bp-F0h]
  _DWORD *v210; // [sp+2Ch] [bp-F0h]
  int v211; // [sp+34h] [bp-E8h]
  int v212; // [sp+38h] [bp-E4h]
  int v213; // [sp+40h] [bp-DCh]
  int v214; // [sp+44h] [bp-D8h]
  int *v215; // [sp+48h] [bp-D4h]
  int *v216; // [sp+4Ch] [bp-D0h]
  unsigned int v217; // [sp+54h] [bp-C8h] BYREF
  unsigned int v218; // [sp+58h] [bp-C4h]
  unsigned int v219; // [sp+5Ch] [bp-C0h]
  _DWORD *v220; // [sp+60h] [bp-BCh]
  int v221; // [sp+64h] [bp-B8h]
  __int16 *v222; // [sp+68h] [bp-B4h]
  int *v223; // [sp+6Ch] [bp-B0h]
  _QWORD v224[5]; // [sp+70h] [bp-ACh] BYREF
  unsigned int v225[13]; // [sp+98h] [bp-84h] BYREF
  char v226; // [sp+CCh] [bp-50h]
  char v227; // [sp+CDh] [bp-4Fh]
  bool v228; // [sp+CEh] [bp-4Eh]
  char v229; // [sp+CFh] [bp-4Dh]
  bool v230; // [sp+D0h] [bp-4Ch]
  _BYTE v231[64]; // [sp+D4h] [bp-48h] BYREF
  int v232[2]; // [sp+114h] [bp-8h] BYREF

  if ( a2[1] && *a2 )
  {
    LC_API_MEMSET_0(&v217, 0, 0x80u);
    v6 = a2[1];
    v221 = *a3;
    v205 = v221;
    v219 = ft_mem_realloc(v221, 48, 0, v6, 0, v232);
    v195 = v232[0];
    if ( v232[0] )
      goto LABEL_6;
    v8 = (_DWORD *)ft_mem_realloc(v205, 8, 0, *a2, 0, v232);
    v220 = v8;
    v195 = v232[0];
    if ( v232[0] )
      goto LABEL_6;
    v9 = *a2;
    v10 = (_DWORD *)v219;
    v217 = a2[1];
    v218 = v9;
    if ( v9 )
    {
      v11 = v232[0];
      v12 = v232[0];
      while ( 1 )
      {
        v13 = 12 * v11;
        v14 = *(__int16 *)(*((_DWORD *)a2 + 3) + 2 * v12);
        v15 = &v10[12 * v11];
        *v8 = v15;
        v16 = v14 + 1;
        v17 = v14 + 1 - v11;
        v8[1] = v17;
        v18 = v17;
        if ( v17 > 0 )
        {
          v19 = v17 == 1;
          v10[v13] = &v10[12 * v14];
          if ( v17 == 1 )
            v17 = (int)v15;
          v15[2] = v8;
          if ( !v19 )
          {
            for ( i = v15; ; i += 12 )
            {
              --v18;
              i[1] = i + 12;
              i[12] = i;
              i[14] = v8;
              if ( v18 == 1 )
                break;
            }
            v17 = (int)&v15[12 * v17 - 12];
          }
          *(_DWORD *)(v17 + 4) = v15;
        }
        if ( ++v12 >= v218 )
          break;
        v8 += 2;
        v11 = v16;
      }
      v10 = (_DWORD *)v219;
    }
    v21 = v217;
    v22 = v10;
    v23 = *((_DWORD *)a2 + 1);
    if ( v217 )
    {
      v24 = 0;
      v25 = 0;
      v196 = v10;
      while ( 1 )
      {
        v33 = (v22[1] - (int)v196) >> 4;
        v34 = -1431655765 * ((*v22 - (int)v196) >> 4);
        if ( (*(_BYTE *)(*((_DWORD *)a2 + 2) + v25) & 1) == 0 )
          v22[3] = 1;
        v35 = -1431655765 * v33;
        v36 = *(_DWORD *)(v23 + v24 + 4) - *(_DWORD *)(v23 + 8 * v34 + 4);
        v37 = abs32(v36);
        v38 = *(_DWORD *)(v23 + v24) - *(_DWORD *)(v23 + 8 * v34);
        v39 = abs32(v38);
        if ( v39 > 12 * v37 )
        {
          if ( v38 < 0 )
            v26 = 254;
          else
            v26 = 2;
        }
        else if ( v37 > 12 * v39 )
        {
          if ( v36 < 0 )
            v26 = 1;
          else
            v26 = 255;
        }
        else
        {
          v26 = 4;
        }
        *((_BYTE *)v22 + 20) = v26;
        v27 = *(_DWORD *)(v23 + 1431655768 * v33 + 4) - *(_DWORD *)(v23 + v24 + 4);
        v28 = abs32(v27);
        v29 = *(_DWORD *)(v23 + 8 * v35) - *(_DWORD *)(v23 + v24);
        v30 = abs32(v29);
        if ( v30 <= 12 * v28 )
        {
          if ( v28 > 12 * v30 )
          {
            if ( v27 < 0 )
              v31 = 1;
            else
              v31 = 255;
          }
          else
          {
            v31 = 4;
          }
        }
        else if ( v29 < 0 )
        {
          v31 = 254;
        }
        else
        {
          v31 = 2;
        }
        v32 = v22[3];
        *((_BYTE *)v22 + 21) = v31;
        if ( (v32 & 1) == 0 )
        {
          if ( v26 != v31 )
            goto LABEL_33;
          if ( (char)v31 == 4 )
          {
            if ( !ft_corner_is_flat(v38, v36, v29, v27) )
              goto LABEL_33;
            v32 = v22[3];
          }
        }
        v22[3] = v32 | 2;
LABEL_33:
        v21 = v217;
        ++v25;
        v24 += 8;
        if ( v25 >= v217 )
        {
          v10 = (_DWORD *)v219;
          v23 = *((_DWORD *)a2 + 1);
          break;
        }
        v22 += 12;
      }
    }
    v222 = a2;
    v223 = a3;
    if ( v21 )
    {
      v40 = 0;
      do
      {
        v10[4] = 0;
        v10[8] = 0;
        v41 = v23 + v40;
        v42 = *(_DWORD *)(v23 + v40);
        --v21;
        v40 += 8;
        v10[9] = v42;
        v10[10] = *(_DWORD *)(v41 + 4);
        v10 += 12;
      }
      while ( v21 );
    }
    v43 = v218;
    if ( !v218 )
      goto LABEL_67;
    v197 = 0;
    do
    {
      if ( v220[2 * v197 + 1] <= 3u )
        goto LABEL_66;
      v44 = (_DWORD *)v220[2 * v197];
      v45 = v44;
      do
      {
        v45 = (_DWORD *)v45[1];
        if ( v44 == v45 )
          goto LABEL_66;
        v46 = v45[9] - v44[9];
        v47 = v45[10] - v44[10];
      }
      while ( !(v47 | v46) );
      v48 = (_DWORD *)v220[2 * v197];
      v49 = (_DWORD *)*v44;
      if ( v44 == (_DWORD *)*v44 )
        goto LABEL_65;
      while ( 1 )
      {
        v50 = v48[9] - v49[9];
        v51 = v48[10] - v49[10];
        if ( v51 | v50 )
        {
          v72 = ft_corner_orientation(v46, v47, v48[9] - v49[9], v48[10] - v49[10]);
          if ( v72 )
            break;
        }
        v48 = v49;
        v49 = (_DWORD *)*v49;
        if ( v44 == v49 )
          goto LABEL_65;
      }
      v207 = v72;
      v73 = v48;
      v210 = v48;
      while ( 2 )
      {
        v74 = v45[9];
        v75 = v45[10];
        v76 = 0;
        while ( 1 )
        {
          v77 = (_DWORD *)v45[1];
          LODWORD(v78) = v77[9] - v74;
          HIDWORD(v78) = v77[10] - v75;
          if ( v73 == v77 )
            v76 = 1;
          if ( !v78 )
          {
            v74 = v77[9];
            v75 = v77[10];
            goto LABEL_116;
          }
          v79 = ft_corner_orientation(v50, v51, v78, SHIDWORD(v78));
          if ( v79 )
            break;
          v74 = v77[9];
          v75 = v77[10];
LABEL_116:
          v45 = v77;
        }
        if ( ((v79 ^ v207) & 0x80000000) != 0 )
        {
          v107 = v210;
          do
          {
            v107[3] |= 4u;
            v107 = (_DWORD *)v107[1];
          }
          while ( v45 != v107 );
          v45[3] |= 4u;
        }
        if ( !v76 )
        {
          v210 = v45;
          v207 = v79;
          v51 = HIDWORD(v78);
          v50 = v78;
          v45 = v77;
          continue;
        }
        break;
      }
LABEL_65:
      v43 = v218;
LABEL_66:
      ++v197;
    }
    while ( v197 < v43 );
LABEL_67:
    v195 = psh_hint_table_init((unsigned int *)v224, a1 + 4, a1 + 7, (int)(a1 + 10), v205);
    v232[0] = v195;
    if ( v195 || (v195 = psh_hint_table_init(v225, a1 + 13, a1 + 16, (int)(a1 + 19), v205), (v232[0] = v195) != 0) )
    {
LABEL_6:
      v7 = v221;
      psh_hint_table_done(v225, v221);
      psh_hint_table_done(v224, v7);
      ft_mem_free(v7, v219);
      v219 = 0;
      ft_mem_free(v7, (int)v220);
      return v195;
    }
    v211 = v223[101];
    v212 = v223[50];
    v52 = FT_MulFix(a3[104], v211);
    v53 = (v52 + 32) & 0xFFFFFFC0;
    v54 = v52 != v53 && ((v52 + 32) & 0xFFFFFFC0) != 0;
    v55 = v52;
    if ( v54 )
    {
      v169 = FT_MulDiv(v211, (v52 + 32) & 0xFFFFFFC0, v52);
      if ( v55 <= v53 )
        v170 = v212;
      else
        v170 = v212 / -50 + v212;
      psh_globals_set_scale((int)v223, v170, v169, 0, 0);
      v214 = 1;
    }
    else
    {
      v214 = 0;
    }
    v56 = a4 == 2;
    if ( a4 != 2 )
      v56 = a4 == 4;
    v228 = (unsigned int)(a4 - 2) <= 1;
    v57 = &v217;
    v58 = v56;
    v229 = v58;
    v206 = 0;
    v227 = 1;
    v230 = a4 != 1;
    v226 = 1;
    v215 = a3 + 104;
    v216 = a3 + 103;
    v209 = &v217;
    while ( 1 )
    {
      v59 = v217;
      v60 = (_DWORD *)v219;
      v61 = *((_DWORD *)v222 + 1);
      if ( v217 )
      {
        v62 = 0;
        while ( 1 )
        {
          if ( v206 )
            v57 = (unsigned int *)(v61 + v62);
          v60[4] = 0;
          v60[8] = 0;
          if ( v206 )
          {
            v57 = (unsigned int *)v57[1];
          }
          else
          {
            v57 = (unsigned int *)(v61 + v62);
            v55 = *(_DWORD *)(v61 + v62);
          }
          if ( v206 )
          {
            v60[9] = v57;
            v57 = *(unsigned int **)(v61 + v62);
          }
          else
          {
            v60[9] = v55;
          }
          if ( !v206 )
            v57 = (unsigned int *)v57[1];
          --v59;
          v62 += 8;
          v60[10] = v57;
          if ( !v59 )
            break;
          v60 += 12;
        }
      }
      v63 = v218;
      if ( !v218 )
        goto LABEL_123;
      v64 = 0;
LABEL_96:
      v65 = (_DWORD *)v220[2 * v64];
      if ( !v220[2 * v64 + 1] )
        goto LABEL_122;
      v66 = (_DWORD *)v220[2 * v64];
      while ( 1 )
      {
        v66 = (_DWORD *)*v66;
        if ( v65 == v66 )
          break;
        if ( v66[9] != v65[9] )
        {
          v67 = (_DWORD *)v66[1];
          v68 = v67;
LABEL_101:
          v69 = v68;
          while ( 1 )
          {
            v69 = (_DWORD *)v69[1];
            if ( v67 == v69 )
              break;
            v70 = v69[9];
            v71 = v68[9];
            if ( v70 != v71 )
            {
              if ( v66[9] >= v71 )
              {
                if ( v71 >= v70 )
                  goto LABEL_106;
              }
              else if ( v71 <= v70 )
              {
LABEL_106:
                v68 = v69;
                v66 = (_DWORD *)*v69;
                goto LABEL_101;
              }
              do
              {
                v68[4] |= 0x40u;
                v80 = (_DWORD *)v68[1];
                if ( v69 == v80 )
                  break;
                v80[4] |= 0x40u;
                v68 = (_DWORD *)v80[1];
              }
              while ( v69 != v68 );
              goto LABEL_106;
            }
          }
          v63 = v218;
LABEL_122:
          if ( ++v64 >= v63 )
          {
LABEL_123:
            v81 = v217;
            v64 = 0;
            goto LABEL_124;
          }
          goto LABEL_96;
        }
      }
LABEL_176:
      v81 = v217;
LABEL_177:
      while ( 1 )
      {
        ++v64;
LABEL_124:
        if ( v64 >= v81 )
          break;
        v111 = (_DWORD *)(v219 + 48 * v64);
        v112 = v111[4];
        if ( (v112 & 0x40) != 0 )
        {
          v113 = (_DWORD *)(v219 + 48 * v64);
          while ( 1 )
          {
            v113 = (_DWORD *)*v113;
            if ( v111 == v113 )
              break;
            v114 = v113[10];
            v115 = v111[10];
            if ( v114 != v115 )
            {
              v116 = v219 + 48 * v64;
              while ( 1 )
              {
                v116 = *(_DWORD *)(v116 + 4);
                if ( v111 == (_DWORD *)v116 )
                  goto LABEL_177;
                v117 = *(_DWORD *)(v116 + 40);
                if ( v115 != v117 )
                {
                  if ( v115 > v114 )
                  {
                    if ( v117 > v115 )
                    {
                      v111[4] = v112 | 0x80;
                      v81 = v217;
                    }
                    ++v64;
                    goto LABEL_124;
                  }
                  if ( v114 > v115 && v117 < v115 )
                  {
                    v111[4] = v112 | 0x100;
                    goto LABEL_176;
                  }
                  goto LABEL_177;
                }
              }
            }
          }
        }
      }
      v82 = (int)v223;
      v83 = v209[7];
      v84 = v209[9];
      if ( v83 )
      {
        do
        {
          psh_hint_align(v84, v82, v206, &v217);
          --v83;
          v84 += 28;
        }
        while ( v83 );
        v82 = (int)v223;
      }
      v85 = (unsigned int *)v209[15];
      v86 = *(_DWORD *)(v82 + 204 * v206 + 200);
      v87 = *v85;
      v88 = (int *)&v224[5 * v206];
      v89 = v85[2];
      v90 = FT_DivFix(32, v86);
      v91 = v90 >= 30 ? 30 : v90;
      v92 = v206 ? 2 : 1;
      if ( v87 > 1 )
        break;
      if ( v87 == 1 )
        goto LABEL_142;
LABEL_143:
      v100 = v217;
      v93 = (_DWORD *)v219;
      v101 = v219;
      if ( v217 )
      {
        while ( 1 )
        {
          if ( *(_DWORD *)(v101 + 32) )
          {
            v102 = *(_DWORD *)(v101 + 16);
            if ( (v102 & 0x10) == 0 )
              *(_DWORD *)(v101 + 16) = v102 | 0x10;
          }
          if ( !--v100 )
            break;
          v101 += 48;
        }
        v103 = v217;
        v93 = (_DWORD *)v219;
        goto LABEL_151;
      }
LABEL_162:
      v103 = 0;
LABEL_151:
      if ( v206 == 1 )
      {
        v176 = v93;
        if ( !v103 )
        {
          v104 = (int)v223;
LABEL_351:
          v118 = v104;
          v55 = *(_DWORD *)(v104 + 204 * v206 + 200);
          goto LABEL_233;
        }
        while ( 1 )
        {
          v177 = *((char *)v176 + 20);
          v178 = v177 == 2;
          if ( v177 != 2 )
            v178 = v177 == -2;
          if ( v178 )
            goto LABEL_326;
          v179 = *((char *)v176 + 21);
          v180 = v179 == 2;
          if ( v179 != 2 )
            v180 = v179 == -2;
          if ( v180 )
          {
LABEL_326:
            v181 = v176[4];
            if ( (v181 & 0x10) == 0 )
            {
              v182 = *v216;
              v183 = v176[9];
              if ( *v216 )
              {
                v184 = v216[519];
                v185 = v183 - v216[4];
                if ( v185 >= -v184 )
                {
                  v186 = v215;
                  do
                  {
                    if ( v183 <= v184 + v186[2] && (*((_BYTE *)v216 + 2080) || v216[518] >= v185) )
                    {
                      v187 = v186[6];
                      v181 |= 0x30u;
                      v176[4] = v181;
                      v176[11] = v187;
                    }
                    --v182;
                    v186 += 8;
                    if ( !v182 )
                      break;
                    v184 = v216[519];
                    v185 = v183 - v186[3];
                  }
                  while ( v185 >= -v184 );
                }
              }
              v188 = v216[129];
              if ( v188 )
              {
                v189 = v188 - 1;
                v190 = v216[519];
                v191 = v216[8 * v188 + 124] - v183;
                if ( -v190 <= v191 )
                {
                  v192 = &v216[8 * v188 + 122];
                  do
                  {
                    if ( v183 >= v192[3] - v190 && (*((_BYTE *)v216 + 2080) || v216[518] > v191) )
                    {
                      v193 = v192[7];
                      v181 |= 0x30u;
                      v176[4] = v181;
                      v176[11] = v193;
                    }
                    v192 -= 8;
                    if ( !v189 )
                      break;
                    v190 = v216[519];
                    --v189;
                    v191 = v192[2] - v183;
                  }
                  while ( v191 >= -v190 );
                }
              }
            }
          }
          if ( !--v103 )
            break;
          v176 += 12;
        }
        v103 = v217;
        v93 = (_DWORD *)v219;
      }
      v104 = (int)v223;
      v87 = v223[51 * v206 + 50];
      if ( !v103 )
        goto LABEL_351;
      while ( 1 )
      {
        v105 = (_DWORD *)v93[8];
        if ( v105 )
        {
          v106 = v93[4];
          if ( (v106 & 0x200) != 0 )
            goto LABEL_161;
          if ( (v106 & 0x400) != 0 )
          {
            v93[11] = v105[3] + v105[2];
          }
          else
          {
            v108 = v93[9] - *v105;
            if ( v108 <= 0 )
            {
              v175 = v105[2];
              v93[11] = FT_MulFix(v108, v87) + v175;
              v106 = v93[4];
            }
            else
            {
              v109 = v105[1];
              if ( v108 >= v109 )
              {
                v171 = v105[3] + v105[2];
                v93[11] = v171 + FT_MulFix(v108 - v109, v87);
                v106 = v93[4];
              }
              else if ( v109 <= 0 )
              {
LABEL_161:
                v93[11] = v105[2];
              }
              else
              {
                v110 = v105[2];
                v93[11] = FT_MulDiv(v108, v105[3], v109) + v110;
                v106 = v93[4];
              }
            }
          }
          v93[4] = v106 | 0x20;
        }
        if ( !--v103 )
          break;
        v93 += 12;
      }
      v87 = v219;
      v118 = (int)v223;
      v119 = v219 + 48 * v217;
      v55 = v223[51 * v206 + 50];
      v104 = (int)v223;
      v199 = v221;
      if ( v219 >= v119 )
        goto LABEL_351;
      v120 = v219;
      do
      {
        v121 = *(_DWORD *)(v120 + 16);
        v120 += 48;
        if ( (v121 & 0x10) != 0 )
          ++v103;
      }
      while ( v119 > v120 );
      if ( v103 )
      {
        if ( (unsigned int)v103 > 0x10 )
        {
          v145 = ft_mem_realloc(v221, 4, 0, v103, 0, v232);
          if ( v232[0] )
          {
            v118 = (int)v223;
            v55 = v223[51 * v206 + 50];
            goto LABEL_233;
          }
          v122 = (unsigned int *)v145;
        }
        else
        {
          v122 = (unsigned int *)v231;
        }
        v123 = v87;
        v103 = 0;
        do
        {
          if ( (*(_DWORD *)(v123 + 16) & 0x10) != 0 )
          {
            v124 = &v122[v103];
            if ( v122 < v124 )
            {
              v125 = *(v124 - 1);
              v126 = v124 - 1;
              if ( *(_DWORD *)(v123 + 36) < *(_DWORD *)(v125 + 36) )
              {
                do
                {
                  *v124 = v125;
                  v128 = v126;
                  if ( v126 <= v122 )
                    break;
                  v127 = *--v126;
                  v125 = v127;
                  v124 = v128;
                }
                while ( *(_DWORD *)(v127 + 36) > *(_DWORD *)(v123 + 36) );
                v124 = v128;
              }
            }
            *v124 = v123;
            ++v103;
          }
          v123 += 48;
        }
        while ( v119 > v123 );
        v129 = &v122[v103 - 1];
        while ( 1 )
        {
          v131 = *(_DWORD *)(v87 + 16);
          if ( (v131 & 0x10) == 0 )
            break;
LABEL_211:
          v87 += 48;
          if ( v119 <= v87 )
          {
            if ( v122 != (unsigned int *)v231 )
              ft_mem_free(v199, (int)v122);
            v118 = (int)v223;
            v55 = v223[51 * v206 + 50];
            goto LABEL_233;
          }
        }
        v132 = *(_DWORD *)(v87 + 12);
        if ( (v132 & 2) != 0 )
        {
          v130 = *(char *)(v87 + 20);
          if ( v130 == 4 || *(char *)(v87 + 21) != v130 || (v131 & 0x40) == 0 && (v132 & 4) == 0 )
            goto LABEL_211;
          *(_DWORD *)(v87 + 12) = v132 & 0xFFFFFFFD;
        }
        if ( !v103 )
        {
          v133 = *v122;
          v134 = *(_DWORD *)(v87 + 36);
          v135 = *(_DWORD *)(*v122 + 36);
          goto LABEL_296;
        }
        v133 = *v122;
        v134 = *(_DWORD *)(v87 + 36);
        v135 = *(_DWORD *)(*v122 + 36);
        if ( v135 > v134 )
        {
LABEL_296:
          v167 = v134 - v135;
        }
        else
        {
          for ( j = 0; j + 1 != v103; ++j )
          {
            if ( *(_DWORD *)(v122[j + 1] + 36) > v134 )
            {
              if ( j == -1 )
                goto LABEL_296;
              break;
            }
          }
          v133 = *v129;
          v137 = v122[j];
          v138 = *(_DWORD *)(*v129 + 36);
          if ( v134 <= v138 )
          {
            v139 = &v122[v103 - 2];
            v140 = v103;
            while ( --v140 )
            {
              v141 = *v139--;
              if ( *(_DWORD *)(v141 + 36) < v134 )
              {
                if ( v103 == v140 )
                  goto LABEL_305;
                v140 *= 4;
                break;
              }
            }
            v142 = *(_DWORD *)(v137 + 36);
            v143 = *(unsigned int *)((char *)v122 + v140);
            if ( v142 == v134 )
            {
              *(_DWORD *)(v87 + 44) = *(_DWORD *)(v137 + 44);
            }
            else
            {
              v144 = *(_DWORD *)(v143 + 36);
              if ( v144 == v134 )
              {
                *(_DWORD *)(v87 + 44) = *(_DWORD *)(v143 + 44);
              }
              else
              {
                v173 = *(_DWORD *)(v137 + 44);
                v174 = FT_MulDiv(v134 - v142, *(_DWORD *)(v143 + 44) - v173, v144 - v142);
                v131 = *(_DWORD *)(v87 + 16);
                *(_DWORD *)(v87 + 44) = v174 + v173;
              }
            }
            goto LABEL_229;
          }
LABEL_305:
          v167 = v134 - v138;
        }
        v168 = *(_DWORD *)(v133 + 44);
        *(_DWORD *)(v87 + 44) = FT_MulFix(v167, v55) + v168;
        v131 = *(_DWORD *)(v87 + 16);
LABEL_229:
        *(_DWORD *)(v87 + 16) = v131 | 0x20;
        goto LABEL_211;
      }
LABEL_233:
      v146 = v218;
      v202 = v218;
      v213 = *(_DWORD *)(v118 + 204 * v206 + 204);
      v208 = (int)v220;
      if ( v218 )
      {
        v204 = 0;
        while ( 1 )
        {
          v87 = *(_DWORD *)(v208 + v204);
          v147 = v87 + 48 * *(_DWORD *)(v208 + v204 + 4);
          if ( v87 >= v147 )
            goto LABEL_267;
          v148 = 0;
          v149 = *(_DWORD **)(v208 + v204);
          v150 = nullptr;
          do
          {
            if ( (v149[4] & 0x20) != 0 )
            {
              if ( !v150 )
                v150 = v149;
              ++v148;
            }
            v149 += 12;
          }
          while ( v147 > (unsigned int)v149 );
          v151 = v150;
          if ( v148 > 1 )
            break;
          if ( v148 == 1 )
          {
            v172 = v150[11];
            v103 = v172 - FT_MulFix(v150[9], v55);
            v213 = v103;
          }
          else
          {
            v103 = v213;
          }
          do
          {
            if ( v150 != (_DWORD *)v87 )
              *(_DWORD *)(v87 + 44) = FT_MulFix(*(_DWORD *)(v87 + 36), v55) + v103;
            v87 += 48;
          }
          while ( v147 > v87 );
LABEL_267:
          v19 = v202-- == 1;
          v204 += 8;
          if ( v19 )
            goto LABEL_269;
        }
LABEL_243:
        v87 = v150[1];
        if ( v151 == (_DWORD *)v87 )
          goto LABEL_267;
        while ( 1 )
        {
          if ( (*(_DWORD *)(v87 + 16) & 0x20) != 0 )
          {
            v150 = (_DWORD *)v87;
            goto LABEL_243;
          }
          v152 = (_DWORD *)v87;
          do
            v152 = (_DWORD *)v152[1];
          while ( (v152[4] & 0x20) == 0 );
          v153 = v150[9];
          v154 = v152[9];
          if ( v153 > v154 )
          {
            v155 = v152[11];
            v156 = v150[11];
            v103 = v153 - v154;
          }
          else
          {
            v155 = v150[11];
            v156 = v152[11];
          }
          if ( v153 > v154 )
            v153 = v152[9];
          else
            v103 = v154 - v153;
          if ( v103 <= 0 )
            v146 = 0x10000;
          v157 = v156 - v155;
          if ( v103 > 0 )
          {
            v194 = v157;
            v200 = FT_DivFix(v157, v103);
            v87 = v150[1];
            v157 = v194;
          }
          else
          {
            v200 = v146;
          }
          v158 = v155 + v157;
          do
          {
            while ( 1 )
            {
              v160 = *(_DWORD *)(v87 + 36) - v153;
              if ( v160 <= 0 )
              {
                v159 = FT_MulFix(*(_DWORD *)(v87 + 36) - v153, v55) + v155;
                goto LABEL_261;
              }
              if ( v103 > v160 )
                break;
              v159 = v158 + FT_MulFix(v160 - v103, v55);
LABEL_261:
              *(_DWORD *)(v87 + 44) = v159;
              v87 = *(_DWORD *)(v87 + 4);
              if ( v152 == (_DWORD *)v87 )
                goto LABEL_265;
            }
            *(_DWORD *)(v87 + 44) = FT_MulFix(*(_DWORD *)(v87 + 36) - v153, v200) + v155;
            v87 = *(_DWORD *)(v87 + 4);
          }
          while ( v152 != (_DWORD *)v87 );
LABEL_265:
          if ( v152 != v151 )
          {
            v150 = v152;
            v87 = v152[1];
            if ( v151 != (_DWORD *)v87 )
              continue;
          }
          goto LABEL_267;
        }
      }
LABEL_269:
      v161 = v219;
      v57 = *((unsigned int **)v222 + 1);
      v162 = *((_DWORD *)v222 + 2);
      if ( v217 )
      {
        v163 = 0;
        for ( k = 0; k < v217; ++k )
        {
          if ( v206 )
          {
            v87 = *(_DWORD *)(v161 + 44);
            v165 = &v57[v163];
          }
          else
          {
            v165 = *(unsigned int **)(v161 + 44);
          }
          if ( v206 )
            v165[1] = v87;
          else
            v57[v163] = (unsigned int)v165;
          v166 = *(_DWORD *)(v161 + 16);
          v163 += 2;
          v161 += 48;
          if ( (v166 & 0x10) != 0 )
          {
            if ( v206 )
              v87 = 64;
            else
              v87 = 32;
            *(_BYTE *)(v162 + k) |= v87;
          }
          v55 = v217;
        }
      }
      if ( v214 )
        v57 = (unsigned int *)psh_globals_set_scale((int)v223, v212, v211, 0, 0);
      v19 = v206++ == 1;
      v209 += 10;
      if ( v19 )
        goto LABEL_6;
    }
    if ( !v217 )
    {
      v93 = (_DWORD *)v219;
      goto LABEL_162;
    }
    v94 = *(_DWORD *)(v89 + 12);
    for ( m = (int *)(v89 + 16); ; m += 4 )
    {
      v96 = m[3];
      --v87;
      v97 = v96 - v94;
      if ( v96 - v94 > 0 )
      {
        v98 = v219 + 48 * v94;
        psh_hint_table_activate_mask(v88, m);
        psh_hint_table_find_strong_points((int)v88, v98, v97, v91, v92);
      }
      if ( v87 == 1 )
        break;
      v94 = v96;
    }
LABEL_142:
    v99 = v217;
    v87 = v219;
    psh_hint_table_activate_mask(v88, *(int **)(v209[15] + 8));
    psh_hint_table_find_strong_points((int)v88, v87, v99, v91, v92);
    goto LABEL_143;
  }
  return 0;
}


// ===== 71d7e8 ft_get_adobe_glyph_index =====
int __fastcall ft_get_adobe_glyph_index(char *a1, unsigned int a2)
{
  bool v2; // cf
  int v4; // r1
  int v5; // r4
  int v6; // r7
  int v7; // r3
  int v8; // r8
  char v9; // r12
  char *v10; // r8
  int v11; // r2
  bool v12; // cc
  int v13; // r8
  char *i; // r0
  int v16; // r5
  char v17; // r2
  unsigned __int8 *v18; // r3
  bool v19; // zf
  int v20; // r2
  int v21; // r8
  char v22; // r12
  int v23; // r12
  int v24; // r8
  int v25; // r8
  char v26; // t1

  v2 = 1;
  if ( a1 )
    v2 = (unsigned int)a1 >= a2;
  if ( v2 )
    return 0;
  v4 = 0;
  v5 = *a1;
  v6 = 52;
  while ( 1 )
  {
    v7 = (v4 + v6) >> 1;
    v8 = byte_8F4496[2 * v7 + 1] | (byte_8F4496[2 * v7] << 8);
    v9 = ft_adobe_glyph_list[v8];
    v10 = &ft_adobe_glyph_list[v8];
    v11 = v9 & 0x7F;
    if ( v11 == v5 )
      break;
    while ( v5 <= v11 )
    {
      v12 = v4 < v7;
      v6 = v7;
      v7 = (v7 + v4) >> 1;
      if ( !v12 )
        return 0;
      v13 = byte_8F4496[2 * v7 + 1] | (byte_8F4496[2 * v7] << 8);
      v9 = ft_adobe_glyph_list[v13];
      v10 = &ft_adobe_glyph_list[v13];
      v11 = v9 & 0x7F;
      if ( v11 == v5 )
        goto LABEL_14;
    }
    v4 = v7 + 1;
    if ( v6 <= v7 + 1 )
      return 0;
  }
LABEL_14:
  if ( a2 <= (unsigned int)(a1 + 1) )
  {
LABEL_28:
    if ( *v10 < 0 || v10[1] >= 0 )
      return 0;
    return (unsigned __int8)v10[3] | ((unsigned __int8)v10[2] << 8);
  }
  for ( i = a1 + 2; ; ++i )
  {
    v16 = *(i - 1);
    if ( v9 < 0 )
    {
      v26 = *++v10;
      if ( (v26 & 0x7F) != v16 )
        return 0;
      goto LABEL_26;
    }
    v17 = v10[1];
    v18 = (unsigned __int8 *)(v10 + 1);
    v19 = (v17 & 0x80) == 0;
    v20 = v17 & 0x7F;
    if ( !v19 )
      v18 = (unsigned __int8 *)(v10 + 3);
    if ( !v20 )
      return 0;
    v21 = v18[2] | (v18[1] << 8);
    v22 = ft_adobe_glyph_list[v21];
    v10 = &ft_adobe_glyph_list[v21];
    if ( (v22 & 0x7F) != v16 )
      break;
LABEL_26:
    if ( i == (char *)a2 )
      goto LABEL_28;
    v9 = *v10;
  }
  while ( --v20 )
  {
    v23 = v18[4];
    v24 = v18[3];
    v18 += 2;
    v25 = v23 | (v24 << 8);
    LOBYTE(v23) = ft_adobe_glyph_list[v25];
    v10 = &ft_adobe_glyph_list[v25];
    if ( (v23 & 0x7F) == v16 )
      goto LABEL_26;
  }
  return 0;
}


// ===== 71d9a4 ps_unicode_value =====
unsigned int __fastcall ps_unicode_value(char *a1)
{
  unsigned int v1; // r1
  _BOOL4 v2; // r2
  int v3; // r3
  int v4; // t1
  unsigned int v6; // r12
  int v7; // r3
  char *v8; // r1
  char *v9; // r5
  unsigned int v10; // r2
  int v11; // r5
  _BYTE *v12; // r1
  char *v13; // r2
  int v14; // r1
  int v15; // r4
  int v16; // r2

  if ( *a1 != 117 )
  {
    if ( *a1 )
      goto LABEL_3;
    v1 = (unsigned int)a1;
    return ft_get_adobe_glyph_index(a1, v1);
  }
  v7 = (unsigned __int8)a1[1];
  if ( v7 == 110 && a1[2] == 105 )
  {
    v13 = a1;
    v6 = 0;
    do
    {
      v14 = (unsigned __int8)v13[3];
      ++v13;
      v15 = v14 - 48;
      if ( (unsigned int)(v14 - 48) > 9 )
      {
        if ( (unsigned int)(v14 - 65) > 5 )
          goto LABEL_13;
        v15 = v14 - 55;
      }
      v6 = v15 + 16 * v6;
    }
    while ( v13 != a1 + 4 );
    if ( v13 - 1 == a1 + 3 )
    {
      v16 = (unsigned __int8)v13[3];
      if ( !v16 )
        return v6;
      if ( v16 == 46 )
      {
        v6 |= 0x80000000;
        return v6;
      }
    }
  }
LABEL_13:
  v8 = a1;
  v9 = a1 + 6;
  v6 = 0;
  while ( 1 )
  {
    v10 = (unsigned __int8)v7 - 48;
    if ( v10 <= 9 )
      goto LABEL_21;
    if ( (unsigned int)(unsigned __int8)v7 - 65 > 5 )
      break;
    v10 = (unsigned __int8)v7 - 55;
LABEL_21:
    ++v8;
    v6 = v10 + 16 * v6;
    if ( v8 == v9 )
    {
      v12 = v8 + 1;
      goto LABEL_17;
    }
    LOBYTE(v7) = v8[1];
  }
  v11 = v9 - v8;
  v12 = v8 + 1;
  if ( v11 > 2 )
    goto LABEL_3;
LABEL_17:
  if ( !*v12 )
    return v6;
  if ( *v12 == 46 )
  {
    v6 |= 0x80000000;
    return v6;
  }
LABEL_3:
  v1 = (unsigned int)a1;
  while ( 1 )
  {
    v4 = *(unsigned __int8 *)++v1;
    v3 = v4;
    if ( !v4 )
      break;
    v2 = (unsigned int)a1 < v1;
    if ( v3 != 46 )
      v2 = 0;
    if ( v2 )
    {
      if ( !v1 )
        return ft_get_adobe_glyph_index(a1, v1);
      return ft_get_adobe_glyph_index(a1, v1) | 0x80000000;
    }
  }
  return ft_get_adobe_glyph_index(a1, v1);
}


// ===== 71db08 compare_uni_maps =====
int __fastcall compare_uni_maps(int *a1, int *a2)
{
  int v2; // r3
  int v3; // r1
  int v4; // r0

  v2 = *a1;
  v3 = *a2;
  v4 = *a1 & 0x7FFFFFFF;
  if ( v4 == (v3 & 0x7FFFFFFF) )
    return v2 - v3;
  else
    return v4 - (v3 & 0x7FFFFFFF);
}


// ===== 71db28 ps_unicodes_char_index =====
int __fastcall ps_unicodes_char_index(int a1, unsigned int a2)
{
  unsigned int v2; // r3
  unsigned int v3; // r2
  int v4; // r12
  int v5; // r0
  unsigned int v6; // r12
  unsigned int v7; // r4
  int v8; // r12
  unsigned int v9; // r0

  v2 = *(_DWORD *)(a1 + 20);
  v3 = v2 + 8 * (*(_DWORD *)(a1 + 16) - 1);
  if ( v2 > v3 )
    return 0;
  v4 = (8 * (*(_DWORD *)(a1 + 16) - 1)) >> 4;
  v5 = *(_DWORD *)(v2 + 8 * v4);
  v6 = v2 + 8 * v4;
  if ( v5 == a2 )
  {
LABEL_16:
    v7 = v6;
  }
  else
  {
    v7 = 0;
    while ( 1 )
    {
      v9 = v5 & 0x7FFFFFFF;
      if ( v9 == a2 )
        v7 = v6;
      if ( v2 == v3 )
        break;
      if ( a2 <= v9 )
        v3 = v6 - 8;
      else
        v2 = v6 + 8;
      v8 = (int)(v3 - v2) >> 4;
      if ( v3 < v2 )
        break;
      v5 = *(_DWORD *)(v2 + 8 * v8);
      v6 = v2 + 8 * v8;
      if ( v5 == a2 )
        goto LABEL_16;
    }
  }
  if ( v7 )
    return *(_DWORD *)(v7 + 4);
  else
    return 0;
}


// ===== 71dbc8 ps_unicodes_char_next =====
int __fastcall ps_unicodes_char_next(int a1, unsigned int *a2)
{
  unsigned int v2; // r3
  unsigned int v3; // r5
  int result; // r0
  int v5; // r7
  unsigned int v6; // r2
  int v7; // r4
  int v8; // r8
  unsigned int v9; // r12
  unsigned int v10; // r6
  unsigned int v11; // r4

  v2 = *(_DWORD *)(a1 + 16);
  if ( !v2 )
  {
    v3 = 0;
    result = 0;
    goto LABEL_19;
  }
  v5 = *(_DWORD *)(a1 + 20);
  v6 = v2 >> 1;
  v3 = *a2 + 1;
  v7 = *(_DWORD *)(v5 + 8 * (v2 >> 1));
  v8 = v5 + 8 * (v2 >> 1);
  if ( v7 == v3 )
  {
LABEL_20:
    result = *(_DWORD *)(v8 + 4);
    goto LABEL_19;
  }
  v9 = 0;
  v10 = *(_DWORD *)(a1 + 16);
  result = 0;
  while ( 1 )
  {
    v11 = v7 & 0x7FFFFFFF;
    if ( v11 != v3 )
      break;
    v10 = v6;
    result = *(_DWORD *)(v8 + 4);
    v6 = v9 + ((v6 - v9) >> 1);
    if ( v10 <= v9 )
      goto LABEL_13;
LABEL_10:
    v7 = *(_DWORD *)(v5 + 8 * v6);
    v8 = v5 + 8 * v6;
    if ( v7 == v3 )
      goto LABEL_20;
  }
  if ( v3 <= v11 )
    v10 = v6;
  else
    v9 = v6 + 1;
  v6 = v9 + ((v10 - v9) >> 1);
  if ( v10 > v9 )
    goto LABEL_10;
LABEL_13:
  if ( !result )
  {
    if ( v9 >= v2 )
    {
      v3 = 0;
    }
    else
    {
      v3 = *(_DWORD *)(v5 + 8 * v9);
      result = *(_DWORD *)(v5 + 8 * v9 + 4);
    }
    if ( v9 < v2 )
      v3 &= ~0x80000000;
  }
LABEL_19:
  *a2 = v3;
  return result;
}


// ===== 71dc94 ps_get_macintosh_name =====
char *__fastcall ps_get_macintosh_name(unsigned int a1)
{
  unsigned int v1; // r2

  if ( a1 > 0x101 )
    v1 = 0;
  else
    v1 = a1;
  return &ft_standard_glyph_names[*(__int16 *)&aLsmall[2 * v1 + 1200]];
}


// ===== 71dcc8 ps_get_standard_strings =====
char *__fastcall ps_get_standard_strings(unsigned int a1)
{
  if ( a1 <= 0x186 )
    return &ft_standard_glyph_names[*(__int16 *)&aLsmall[2 * a1 + 1716]];
  else
    return nullptr;
}


// ===== 71dcfc ps_unicodes_init =====
int __fastcall ps_unicodes_init(
        int a1,
        int a2,
        unsigned int a3,
        int (__fastcall *a4)(int, int),
        void (__fastcall *a5)(int, char *),
        int a6)
{
  unsigned int *v6; // r9
  int result; // r0
  int v8; // r7
  char *v9; // r5
  int v10; // r4
  int v11; // r8
  unsigned int v13; // r0
  int v14; // r3
  int i; // r3
  unsigned int v16; // r2
  bool v17; // zf
  _BYTE *v18; // r12
  unsigned int v19; // r9
  int v20; // r0
  _BYTE v25[32]; // [sp+2Ch] [bp-48h]
  _DWORD v26[8]; // [sp+4Ch] [bp-28h] BYREF
  int v27[2]; // [sp+6Ch] [bp-8h] BYREF

  *(_DWORD *)(a2 + 16) = 0;
  *(_DWORD *)(a2 + 20) = 0;
  memset(v26, 0, sizeof(v26));
  v6 = (unsigned int *)ft_mem_realloc(a1, 8, 0, a3 + 8, 0, v27);
  result = v27[0];
  v17 = v27[0] == 0;
  *(_DWORD *)(a2 + 20) = v6;
  if ( v17 )
  {
    if ( a3 )
    {
      v8 = result;
      do
      {
        v9 = (char *)a4(a6, v8);
        if ( v9 )
        {
          v10 = 0;
          while ( 1 )
          {
            v11 = v10;
            if ( !LC_API_STRCMP_0(&ft_wgl_extra_glyph_names[ft_wgl_extra_glyph_name_offsets[v10++]], v9) )
              break;
            if ( v10 == 8 )
              goto LABEL_9;
          }
          if ( !v26[v11] )
          {
            v26[v11] = 1;
            *(_DWORD *)&v25[v11 * 4] = v8;
          }
LABEL_9:
          v13 = ps_unicode_value(v9);
          if ( (v13 & 0x7FFFFFFF) != 0 )
          {
            v14 = 0;
            while ( v13 != ft_wgl_extra_unicodes[v14] )
            {
              if ( ++v14 == 8 )
                goto LABEL_13;
            }
            v26[v14] = 2;
LABEL_13:
            *v6 = v13;
            v6[1] = v8;
            v6 += 2;
          }
          if ( a5 )
            a5(a6, v9);
        }
        ++v8;
      }
      while ( v8 != a3 );
    }
    for ( i = 0; i != 8; ++i )
    {
      v16 = v26[i];
      v17 = v16 == 1;
      if ( v16 == 1 )
      {
        *v6 = ft_wgl_extra_unicodes[i];
        v16 = *(_DWORD *)&v25[i * 4];
      }
      if ( v17 )
      {
        v6[1] = v16;
        v6 += 2;
      }
    }
    v18 = *(_BYTE **)(a2 + 20);
    v19 = ((char *)v6 - v18) >> 3;
    if ( v19 )
    {
      if ( v19 < a3 >> 1 )
      {
        v20 = ft_mem_realloc(a1, 8, a3, v19, *(_DWORD *)(a2 + 20), v27);
        v27[0] = 0;
        v18 = (_BYTE *)v20;
        *(_DWORD *)(a2 + 20) = v20;
      }
      qsort(v18, v19, 8u, (int (*)(const void *, const void *))compare_uni_maps);
      result = v27[0];
    }
    else
    {
      ft_mem_free(a1, *(_DWORD *)(a2 + 20));
      result = v27[0];
      v17 = v27[0] == 0;
      *(_DWORD *)(a2 + 20) = 0;
      if ( v17 )
        result = 6;
    }
    *(_DWORD *)(a2 + 16) = v19;
  }
  return result;
}


// ===== 71df98 psnames_get_service =====
const char *__fastcall psnames_get_service(int a1, char *a2)
{
  return ft_service_list_lookup((const char **)&pscmaps_services, a2);
}


// ===== 71dfa8 Insert_Y_Turn =====
int __fastcall Insert_Y_Turn(_DWORD *a1, int a2)
{
  int v2; // r3
  int v3; // r2
  int v4; // r5
  int v5; // r4
  int v6; // r12
  unsigned int v8; // r2
  unsigned int v9; // r3
  int v11; // r1
  int v12; // r3
  _DWORD *v13; // r3
  int v14; // r2
  int v15; // r1
  int v16; // t1

  v2 = a1[13];
  v3 = v2 - 1;
  if ( v2 - 1 < 0 )
  {
LABEL_6:
    v5 = a2;
    goto LABEL_7;
  }
  v4 = a1[9] - 4 * v2;
  v5 = *(_DWORD *)(v4 + 4 * v3);
  if ( a2 < v5 )
  {
    v6 = 0;
    while ( v3-- != 0 )
    {
      v5 = *(_DWORD *)(a1[9] + v6 - 8);
      v6 -= 4;
      if ( v5 <= a2 )
        goto LABEL_11;
    }
    goto LABEL_6;
  }
LABEL_11:
  if ( v5 >= a2 )
    return 0;
  v13 = (_DWORD *)(v4 + 4 * v3);
  v14 = v3 - 1;
  for ( *v13 = a2; v14 != -1; *v13 = v15 )
  {
    v15 = v5;
    v16 = *--v13;
    v5 = v16;
    --v14;
  }
LABEL_7:
  v8 = a1[11];
  v9 = a1[10] - 4;
  a1[10] = v9;
  if ( v9 <= v8 )
  {
    a1[12] = 98;
    return 1;
  }
  v11 = a1[9];
  v12 = a1[13] + 1;
  a1[13] = v12;
  *(_DWORD *)(v11 - 4 * v12) = v5;
  return 0;
}


// ===== 71e080 Split_Conic =====
int *__fastcall Split_Conic(int *result)
{
  int v1; // r2
  int v2; // r3
  int v3; // r1
  int v4; // r1
  int v5; // r12
  int v6; // kr0C_4
  int v7; // r12

  v1 = result[4];
  v2 = result[2];
  v3 = *result;
  result[8] = v1;
  result[6] = (v2 + v1) / 2;
  result[4] = ((v2 + v3) / 2 + (v2 + v1) / 2) / 2;
  result[2] = (v2 + v3) / 2;
  v4 = result[1];
  result[9] = result[5];
  v5 = result[3];
  v6 = v5 + v4;
  v7 = (v5 + result[5]) / 2;
  result[7] = v7;
  result[3] = v6 / 2;
  result[5] = (v6 / 2 + v7) / 2;
  return result;
}


// ===== 71e118 Split_Cubic =====
int *__fastcall Split_Cubic(int *result)
{
  int v1; // r3
  int v2; // r12
  int v3; // r1
  int v4; // r4
  int v5; // r2
  int v6; // r12
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r2
  int v11; // r3
  int v12; // r5
  int v13; // r6
  int v14; // r2
  int v15; // r5
  int v16; // r4
  int v17; // r12
  int v18; // r2
  int v19; // r12
  int v20; // r2

  v1 = result[6];
  v2 = result[2];
  v3 = result[4];
  v4 = *result;
  result[12] = v1;
  v5 = v2 + v3;
  v6 = (v2 + v4 + 1) >> 1;
  v7 = (v3 + v1 + 1) >> 1;
  v8 = (v5 + 1) >> 1;
  v9 = v7 + v8;
  v10 = (v6 + v8 + 1) >> 1;
  v11 = (v9 + 1) >> 1;
  result[6] = (v10 + v11 + 1) >> 1;
  result[2] = v6;
  result[10] = v7;
  result[8] = v11;
  result[4] = v10;
  v12 = result[1];
  result[13] = result[7];
  v13 = result[3];
  v14 = result[5];
  v15 = (v13 + v12 + 1) >> 1;
  result[3] = v15;
  v16 = (v14 + result[7] + 1) >> 1;
  v17 = (v13 + v14 + 1) >> 1;
  v18 = v16 + v17;
  v19 = (v15 + v17 + 1) >> 1;
  v20 = (v18 + 1) >> 1;
  result[11] = v16;
  result[5] = v19;
  result[9] = v20;
  result[7] = (v19 + v20 + 1) >> 1;
  return result;
}


// ===== 71e214 Bezier_Up =====
int __fastcall Bezier_Up(int a1, int a2, void (*a3)(void), int a4, int a5)
{
  _DWORD *v5; // r5
  int v6; // r6
  int v8; // r9
  int v9; // r0
  _BOOL4 v10; // r7
  _DWORD *v11; // r10
  int v12; // r11
  int v13; // r2
  int v14; // r9
  int v15; // r8
  int v17; // r7
  int v18; // r2
  _DWORD *v19; // r0
  int v20; // r3
  int v21; // r1
  int v22; // r12
  int v23; // r1
  _DWORD *v24; // r7
  _BOOL4 v25; // r2
  int v26; // r2
  _BOOL4 v27; // r2
  int v28; // [sp+4h] [bp-10h]

  v5 = *(_DWORD **)(a1 + 56);
  v6 = 8 * a2;
  v8 = v5[1];
  v9 = v5[2 * a2 + 1];
  v10 = v8 < a4;
  if ( v9 > a5 )
    v10 = 1;
  v11 = *(_DWORD **)(a1 + 44);
  if ( v10 )
  {
    v12 = -2 * a2;
    goto LABEL_13;
  }
  v13 = *(_DWORD *)(a1 + 4);
  v14 = -v13 & v8;
  if ( a5 < v14 )
    v14 = a5;
  if ( v9 >= a4 )
  {
    v17 = (v9 + v13 - 1) & -v13;
    if ( ((unsigned __int16)(v13 - 1) & (unsigned __int16)v9) == 0 )
    {
      v18 = *(char *)(a1 + 91);
      if ( *(_BYTE *)(a1 + 91) )
        *(_BYTE *)(a1 + 91) = 0;
      if ( v18 )
        --v11;
      a4 = v17;
      *v11++ = v5[2 * a2];
      v15 = v17 + *(_DWORD *)(a1 + 4);
      goto LABEL_9;
    }
    a4 = (v9 + v13 - 1) & -v13;
  }
  v15 = a4;
LABEL_9:
  if ( *(_BYTE *)(a1 + 90) )
  {
    *(_DWORD *)(*(_DWORD *)(a1 + 92) + 20) = a4 >> *(_DWORD *)a1;
    *(_BYTE *)(a1 + 90) = 0;
  }
  if ( v15 > v14 )
  {
    v5 = *(_DWORD **)(a1 + 56);
    v12 = -2 * a2;
    goto LABEL_13;
  }
  if ( *(_DWORD *)(a1 + 40) <= (unsigned int)&v11[((v14 - v15) >> *(_DWORD *)a1) + 1] )
  {
    *(_DWORD *)(a1 + 48) = 98;
    *(_DWORD *)(a1 + 44) = v11;
    return 1;
  }
  v12 = -2 * a2;
  v19 = v5;
  v20 = 0;
  while ( 1 )
  {
    *(_BYTE *)(a1 + 91) = v20;
    v26 = v19[1];
    v24 = &v19[v6 / 4u];
    if ( v26 > v15 )
      break;
    if ( v26 == v15 )
    {
      *(_BYTE *)(a1 + 91) = 1;
      v24 = &v19[v6 / 0xFFFFFFFC];
      *v11++ = *v19;
      v15 += *(_DWORD *)(a1 + 4);
    }
    else
    {
      v24 = &v19[v6 / 0xFFFFFFFC];
    }
    v27 = v14 >= v15;
    if ( v5 > v24 )
      v27 = 0;
    if ( !v27 )
      goto LABEL_35;
LABEL_28:
    v19 = v24;
  }
  v21 = v24[1];
  v22 = v15 - v21;
  v23 = v26 - v21;
  if ( v23 >= *(_DWORD *)(a1 + 20) )
  {
    v28 = v20;
    a3();
    v20 = v28;
  }
  else
  {
    v24 = &v19[v6 / 0xFFFFFFFC];
    *v11++ = (*v19 - v19[v6 / 4u]) * v22 / v23 + v19[v6 / 4u];
    v15 += *(_DWORD *)(a1 + 4);
  }
  v25 = v14 >= v15;
  if ( v5 > v24 )
    v25 = 0;
  if ( v25 )
    goto LABEL_28;
LABEL_35:
  v5 = *(_DWORD **)(a1 + 56);
LABEL_13:
  *(_DWORD *)(a1 + 56) = &v5[v12];
  *(_DWORD *)(a1 + 44) = v11;
  return 0;
}


// ===== 71e448 Bezier_Down =====
int __fastcall Bezier_Down(int a1, int a2, void (*a3)(void), int a4, int a5)
{
  _DWORD *v5; // r4
  int v7; // r6
  int result; // r0

  v5 = *(_DWORD **)(a1 + 56);
  v5[1] = -v5[1];
  v5[3] = -v5[3];
  v5[5] = -v5[5];
  if ( a2 > 2 )
    v5[7] = -v5[7];
  v7 = *(unsigned __int8 *)(a1 + 90);
  LOBYTE(result) = Bezier_Up(a1, a2, a3, -a5, -a4);
  if ( v7 && !*(_BYTE *)(a1 + 90) )
    *(_DWORD *)(*(_DWORD *)(a1 + 92) + 20) = -*(_DWORD *)(*(_DWORD *)(a1 + 92) + 20);
  v5[1] = -v5[1];
  return (char)result;
}


// ===== 71e4f0 Sort =====
_DWORD *__fastcall Sort(_DWORD *result)
{
  _DWORD *v1; // r3
  int *v2; // r2
  int v3; // r12
  int v4; // r1
  int *v5; // r2
  _DWORD *v6; // r2
  _DWORD *v7; // r3
  _DWORD *v8; // r4
  int v9; // r1

  v1 = (_DWORD *)*result;
  if ( *result )
  {
    do
    {
      v2 = (int *)v1[2];
      v3 = *v2;
      v4 = v1[4] - 1;
      v5 = &v2[v1[3]];
      *v1 = v3;
      v1[2] = v5;
      v1[4] = v4;
      v1 = (_DWORD *)v1[1];
    }
    while ( v1 );
    v6 = (_DWORD *)*result;
    if ( *result )
    {
      v7 = (_DWORD *)v6[1];
      if ( v7 )
      {
        v8 = result;
        do
        {
          while ( *v6 > *v7 )
          {
            *v8 = v7;
            v8 = result;
            v6[1] = v7[1];
            v7[1] = v6;
            v7 = *(_DWORD **)(*result + 4);
            v6 = (_DWORD *)*result;
            if ( !v7 )
              return result;
          }
          v9 = v6[1];
          v8 = v6 + 1;
          if ( !v9 )
            break;
          v7 = *(_DWORD **)(v9 + 4);
          v6 = (_DWORD *)v6[1];
        }
        while ( v7 );
      }
    }
  }
  return result;
}


// ===== 71e5b0 Vertical_Sweep_Init =====
int __fastcall Vertical_Sweep_Init(int result, __int16 *a2)
{
  int v2; // r3
  int v3; // r2
  bool v4; // cc
  int v5; // r2

  v2 = *(_DWORD *)(result + 116);
  *(_WORD *)(result + 160) = -(__int16)v2;
  v3 = *a2;
  v4 = v2 <= 0;
  if ( v2 > 0 )
    a2 = *(__int16 **)(result + 108);
  v5 = v2 * -v3;
  if ( v2 > 0 )
    v2 = v5 + v2 * ((_DWORD)a2 - 1);
  *(_DWORD *)(result + 152) = v5;
  if ( !v4 )
    *(_DWORD *)(result + 152) = v2;
  *(_WORD *)(result + 164) = 0;
  *(_WORD *)(result + 162) = 0;
  return result;
}


// ===== 71e5f0 Vertical_Sweep_Span =====
int __fastcall Vertical_Sweep_Span(int result, int a2, int a3, int a4)
{
  int v4; // r1
  int v5; // r5
  int v6; // r2
  int v7; // r1
  int v8; // r2
  int v9; // r1
  int v10; // r3
  unsigned int v11; // r2
  int v12; // r5
  int v13; // r4
  __int16 v14; // r2
  int v15; // r3
  __int16 v16; // r1
  int v17; // r2
  int v18; // r12
  int v19; // r3
  int v20; // r2
  int i; // r3

  v4 = *(_DWORD *)(result + 4);
  v5 = a4 - a3 - v4;
  v6 = v4 - 1 + a3;
  v7 = -v4;
  v8 = (v6 & v7) >> *(_DWORD *)result;
  if ( v5 <= *(_DWORD *)(result + 24) )
    v9 = v8;
  else
    v9 = (a4 & v7) >> *(_DWORD *)result;
  if ( v9 >= 0 )
  {
    v10 = *(unsigned __int16 *)(result + 60);
    if ( v8 < v10 )
    {
      if ( v9 >= v10 )
        v9 = v10 - 1;
      v11 = v8 & ~(v8 >> 31);
      v12 = 255 >> (v11 & 7);
      v13 = ~(127 >> (v9 & 7));
      v14 = v11 >> 3;
      v15 = v14;
      if ( v14 < *(__int16 *)(result + 162) )
        *(_WORD *)(result + 162) = v14;
      v16 = (unsigned int)v9 >> 3;
      if ( v16 > *(__int16 *)(result + 164) )
        *(_WORD *)(result + 164) = v16;
      v17 = *(_DWORD *)(result + 64);
      v18 = v16 - v15;
      v19 = v15 + *(_DWORD *)(result + 152);
      result = v17 + v19;
      if ( v18 <= 0 )
      {
        *(_BYTE *)(v17 + v19) |= (unsigned __int8)v13 & (unsigned __int8)v12;
      }
      else
      {
        *(_BYTE *)(v17 + v19) |= v12;
        if ( v18 != 1 )
        {
          v20 = v17 + v19;
          for ( i = v18; i != 1; --i )
            *(_BYTE *)++v20 = -1;
          result += v18 - 1;
        }
        *(_BYTE *)(result + 1) |= v13;
      }
    }
  }
  return result;
}


// ===== 71e710 Vertical_Sweep_Drop =====
int __fastcall Vertical_Sweep_Drop(int result, int a2, int a3, int a4, int *a5, int a6)
{
  int v6; // r12
  int v7; // r5
  int v8; // r4
  int v9; // r6
  int v10; // r3
  int v11; // r5
  int v12; // r5
  __int16 v13; // r1
  int v14; // r2
  int v15; // r3
  char v16; // r5
  bool v17; // cc
  int v18; // r3
  int v19; // r1
  int v20; // r2
  int v21; // r12
  int v22; // r12

  v6 = *(_DWORD *)(result + 4);
  v7 = -v6;
  v8 = (v6 - 1 + a3) & -v6;
  v9 = a4 & -v6;
  if ( v8 > v9 )
  {
    v21 = v9 + v6;
    if ( v21 == v8 )
    {
      switch ( *(_BYTE *)(result + 184) )
      {
        case 0:
          goto LABEL_22;
        case 1:
        case 5:
          if ( a5[7] == a6 && a5[4] <= 0 || *(int **)(a6 + 28) == a5 && a5[5] == a2 )
            return result;
          if ( *(_BYTE *)(result + 184) == 1 )
          {
LABEL_22:
            v11 = v9;
          }
          else
          {
LABEL_16:
            v11 = (*(_DWORD *)(result + 8) + (a3 + 1 + a4) / 2) & v7;
            if ( v11 == v8 )
              v21 = v9;
          }
          v10 = *(_DWORD *)result;
          v22 = v21 >> *(_DWORD *)result;
          if ( v22 >= 0
            && v22 < *(unsigned __int16 *)(result + 60)
            && (*(unsigned __int8 *)(*(_DWORD *)(result + 64) + (__int16)(v22 >> 3) + *(_DWORD *)(result + 152))
              & (128 >> (v22 & 7))) != 0 )
          {
            return result;
          }
          goto LABEL_3;
        case 4:
          goto LABEL_16;
        default:
          return result;
      }
    }
  }
  else
  {
    v10 = *(_DWORD *)result;
    v11 = (v6 - 1 + a3) & -v6;
LABEL_3:
    v12 = v11 >> v10;
    if ( v12 >= 0 && v12 < *(unsigned __int16 *)(result + 60) )
    {
      v13 = (unsigned int)v12 >> 3;
      v14 = v13;
      v15 = *(__int16 *)(result + 164);
      if ( *(__int16 *)(result + 162) > v13 )
        *(_WORD *)(result + 162) = v13;
      v16 = v12 & 7;
      v17 = v15 < v13;
      v18 = *(_DWORD *)(result + 152);
      if ( v17 )
        *(_WORD *)(result + 164) = v13;
      v19 = *(_DWORD *)(result + 64);
      v20 = v14 + v18;
      result = *(unsigned __int8 *)(v19 + v20);
      *(_BYTE *)(v19 + v20) = result | (128 >> v16);
    }
  }
  return result;
}


// ===== 71e87c Vertical_Sweep_Step =====
int __fastcall Vertical_Sweep_Step(int result)
{
  *(_DWORD *)(result + 152) += *(__int16 *)(result + 160);
  return result;
}


// ===== 71e890 Horizontal_Sweep_Init =====
void Horizontal_Sweep_Init()
{
  ;
}


// ===== 71e894 Horizontal_Sweep_Span =====
int __fastcall Horizontal_Sweep_Span(int result, int a2, int a3, int a4)
{
  int v4; // r12
  int v5; // r2
  int v6; // r12
  int v7; // r3
  int v8; // r12
  int v9; // r4
  int v10; // r12
  int v11; // r2
  int v12; // r4
  char v13; // r1
  _BYTE *v14; // r12

  v4 = *(_DWORD *)(result + 4);
  if ( a4 - a3 < v4 )
  {
    v5 = v4 - 1 + a3;
    v6 = -v4;
    v7 = a4 & v6;
    v8 = v5 & v6;
    if ( v8 == v7 )
    {
      v9 = *(_DWORD *)(result + 64);
      v10 = v8 >> *(_DWORD *)result;
      if ( v10 >= 0 )
      {
        v11 = *(_DWORD *)(result + 108);
        if ( v10 < v11 )
        {
          result = *(_DWORD *)(result + 116);
          v12 = v9 + (a2 >> 3);
          v13 = a2 & 7;
          v14 = (_BYTE *)(v12 - result * v10);
          if ( result > 0 )
            v14 += result * (v11 - 1);
          *v14 |= 128 >> v13;
        }
      }
    }
  }
  return result;
}


// ===== 71e918 Horizontal_Sweep_Drop =====
int __fastcall Horizontal_Sweep_Drop(int result, int a2, int a3, int a4, int *a5, int a6)
{
  int v6; // r12
  int v7; // r5
  int v8; // r4
  int v9; // r6
  unsigned __int8 v10; // r6
  int v11; // r5
  int v12; // r1
  int v13; // r3
  int v14; // r5
  int v15; // r2
  _BYTE *v16; // r5
  int v17; // r12
  int v18; // r12
  int v19; // r4
  int v20; // r7
  _BYTE *v21; // r2

  v6 = *(_DWORD *)(result + 4);
  v7 = -v6;
  v8 = (v6 - 1 + a3) & -v6;
  v9 = a4 & -v6;
  if ( v8 > v9 )
  {
    v17 = v9 + v6;
    if ( v17 == v8 )
    {
      switch ( *(_BYTE *)(result + 184) )
      {
        case 0:
          goto LABEL_24;
        case 1:
        case 5:
          if ( a5[7] == a6 && a5[4] <= 0 || *(int **)(a6 + 28) == a5 && a5[5] == a2 )
            return result;
          if ( *(_BYTE *)(result + 184) == 1 )
          {
LABEL_24:
            v11 = v9;
          }
          else
          {
LABEL_14:
            v11 = (*(_DWORD *)(result + 8) + (a3 + 1 + a4) / 2) & v7;
            if ( v11 == v8 )
              v17 = v9;
          }
          v13 = *(_DWORD *)result;
          v18 = v17 >> *(_DWORD *)result;
          v19 = *(_DWORD *)(result + 116);
          v20 = *(_DWORD *)(result + 64);
          v10 = 128 >> (a2 & 7);
          v12 = v20 + (a2 >> 3);
          if ( v19 > 0 )
            v20 = *(_DWORD *)(result + 108);
          v21 = (_BYTE *)(v12 - v19 * v18);
          if ( v19 > 0 )
            v21 += v19 * (v20 - 1);
          if ( v18 >= 0 && v18 < *(_DWORD *)(result + 108) && (v10 & *v21) != 0 )
            return result;
          goto LABEL_3;
        case 4:
          goto LABEL_14;
        default:
          return result;
      }
    }
  }
  else
  {
    v10 = 128 >> (a2 & 7);
    v11 = (v6 - 1 + a3) & -v6;
    v12 = *(_DWORD *)(result + 64) + (a2 >> 3);
    v13 = *(_DWORD *)result;
LABEL_3:
    v14 = v11 >> v13;
    if ( v14 >= 0 )
    {
      v15 = *(_DWORD *)(result + 108);
      if ( v14 < v15 )
      {
        result = *(_DWORD *)(result + 116);
        v16 = (_BYTE *)(v12 - result * v14);
        if ( result > 0 )
          v16 += result * (v15 - 1);
        *v16 |= v10;
      }
    }
  }
  return result;
}


// ===== 71ea98 Horizontal_Sweep_Step =====
void Horizontal_Sweep_Step()
{
  ;
}


// ===== 71ea9c ft_black_reset =====
int *__fastcall ft_black_reset(int *result, int a2, int a3)
{
  bool v3; // cc
  int v4; // r3

  if ( result )
  {
    v3 = a2 <= 0;
    if ( a2 )
      v3 = a3 <= 3079;
    v4 = !v3;
    if ( v3 )
    {
      result[3] = v4;
      *result = v4;
      result[1] = v4;
    }
    else
    {
      result[3] = a2;
      result[1] = (unsigned int)(a3 - 1032) >> 2;
      *result = a2 + 1032;
    }
  }
  return result;
}


// ===== 71eaec ft_black_set_mode =====
void ft_black_set_mode()
{
  ;
}


// ===== 71eaf0 ft_raster1_init =====
int __fastcall ft_raster1_init(_DWORD *a1)
{
  (*(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(*(_DWORD *)(a1[5] + 56) + 8))(
    a1[15],
    *(_DWORD *)(a1[1] + 172),
    *(_DWORD *)(a1[1] + 176));
  return 0;
}


// ===== 71eb1c ft_raster1_set_mode =====
int __fastcall ft_raster1_set_mode(int a1)
{
  return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)(*(_DWORD *)(a1 + 20) + 56) + 12))(*(_DWORD *)(a1 + 60));
}


// ===== 71eb38 ft_raster1_get_cbox =====
int __fastcall ft_raster1_get_cbox(int a1, int a2, _DWORD *a3)
{
  int v3; // r3
  int result; // r0

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 0;
  v3 = *(_DWORD *)(a1 + 24);
  result = *(_DWORD *)(a2 + 72);
  if ( result == v3 )
    return FT_Outline_Get_CBox(a2 + 108, a3);
  return result;
}


// ===== 71eb70 ft_raster1_transform =====
int __fastcall ft_raster1_transform(int a1, int a2, int *a3, int *a4)
{
  if ( *(_DWORD *)(a2 + 72) != *(_DWORD *)(a1 + 24) )
    return 6;
  if ( a3 )
    FT_Outline_Transform((int *)(a2 + 108), a3);
  if ( a4 )
    FT_Outline_Translate(a2 + 108, *a4, a4[1]);
  return 0;
}


// ===== 71ebcc ft_black_done =====
int __fastcall ft_black_done(int a1)
{
  return ft_mem_free(*(_DWORD *)(a1 + 8), a1);
}


// ===== 71ebd8 ft_raster1_render =====
int __fastcall ft_raster1_render(int a1, int a2, int a3, int *a4)
{
  char v6; // r6
  int v7; // r6
  int v9; // r1
  int v10; // r10
  int v11; // r8
  int v12; // r9
  unsigned int v13; // r3
  int v14; // r0
  int v15; // r2
  int v16; // r3
  _DWORD v17[12]; // [sp+Ch] [bp-44h] BYREF
  int v18; // [sp+3Ch] [bp-14h] BYREF
  int v19; // [sp+40h] [bp-10h]
  unsigned int v20; // [sp+44h] [bp-Ch]
  signed int v21; // [sp+48h] [bp-8h]
  int v22; // [sp+4Ch] [bp-4h] BYREF

  v6 = a3;
  if ( *(_DWORD *)(a2 + 72) != *(_DWORD *)(a1 + 24) )
    return 6;
  if ( a3 == 2 )
  {
    if ( *(_UNKNOWN **)(a1 + 20) != &ft_raster5_renderer_class )
      goto LABEL_7;
    return 19;
  }
  if ( *(_UNKNOWN **)(a1 + 20) == &ft_raster1_renderer_class )
    return 19;
LABEL_7:
  if ( a4 )
    FT_Outline_Translate(a2 + 108, *a4, a4[1]);
  FT_Outline_Get_CBox(a2 + 108, &v18);
  v9 = *(_DWORD *)(a2 + 156);
  v20 = (v20 + 63) & 0xFFFFFFC0;
  v21 = (v21 + 63) & 0xFFFFFFC0;
  v18 &= 0xFFFFFFC0;
  v19 &= 0xFFFFFFC0;
  v10 = (int)(v20 - v18) >> 6;
  v11 = (v21 - v19) >> 6;
  v12 = *(_DWORD *)(a1 + 8);
  if ( (*(_DWORD *)(v9 + 4) & 1) != 0 )
  {
    ft_mem_free(*(_DWORD *)(a1 + 8), *(_DWORD *)(a2 + 88));
    v16 = *(_DWORD *)(a2 + 156);
    *(_DWORD *)(a2 + 88) = 0;
    *(_DWORD *)(v16 + 4) &= ~1u;
  }
  if ( (v6 & 2) != 0 )
  {
    v13 = 2 * ((unsigned int)(v10 + 15) >> 4);
    *(_BYTE *)(a2 + 94) = 1;
  }
  else
  {
    *(_BYTE *)(a2 + 94) = 2;
    v13 = (v10 + 3) & 0xFFFFFFFC;
    *(_WORD *)(a2 + 92) = 256;
  }
  *(_DWORD *)(a2 + 80) = v10;
  *(_DWORD *)(a2 + 76) = v11;
  *(_DWORD *)(a2 + 84) = v13;
  v14 = ft_mem_realloc(v12, v11, 0, v13, 0, &v22);
  v7 = v22;
  *(_DWORD *)(a2 + 88) = v14;
  if ( !v7 )
  {
    *(_DWORD *)(*(_DWORD *)(a2 + 156) + 4) |= 1u;
    FT_Outline_Translate(a2 + 108, -v18, -v19);
    v17[2] = *(char *)(a2 + 94) == 2;
    v17[0] = a2 + 76;
    v17[1] = a2 + 108;
    v22 = (*(int (__fastcall **)(_DWORD, _DWORD *))(a1 + 64))(*(_DWORD *)(a1 + 60), v17);
    FT_Outline_Translate(a2 + 108, v18, v19);
    v7 = v22;
    if ( !v22 )
    {
      v15 = v18 >> 6;
      *(_DWORD *)(a2 + 104) = v21 >> 6;
      *(_DWORD *)(a2 + 72) = 1651078259;
      *(_DWORD *)(a2 + 100) = v15;
    }
  }
  return v7;
}


// ===== 71ee14 New_Profile =====
int __fastcall New_Profile(int a1, int a2)
{
  unsigned int v2; // r2
  int v3; // r5
  bool v4; // zf
  unsigned int v5; // r1
  int result; // r0
  int v8; // r3

  v2 = *(_DWORD *)(a1 + 96);
  v3 = a2;
  v4 = v2 == 0;
  if ( v2 )
    v2 = *(_DWORD *)(a1 + 44);
  else
    a2 = *(_DWORD *)(a1 + 44);
  if ( v4 )
  {
    v2 = a2 + 32;
    *(_DWORD *)(a1 + 92) = a2;
    *(_DWORD *)(a1 + 96) = a2;
  }
  v5 = *(_DWORD *)(a1 + 40);
  if ( v4 )
    *(_DWORD *)(a1 + 44) = v2;
  if ( v5 <= v2 )
  {
    *(_DWORD *)(a1 + 48) = 98;
    return 1;
  }
  else
  {
    if ( v3 == 1 )
    {
      *(_DWORD *)(*(_DWORD *)(a1 + 92) + 12) = 1;
      if ( dword_A35524 > 5 )
        FT_Message("New ascending profile = %lx\n", *(_DWORD *)(a1 + 92));
    }
    else
    {
      if ( v3 != 2 )
      {
        FT_Message("New_Profile: invalid profile direction!\n");
        *(_DWORD *)(a1 + 48) = 20;
        return 1;
      }
      *(_DWORD *)(*(_DWORD *)(a1 + 92) + 12) = -1;
      if ( dword_A35524 > 5 )
        FT_Message("New descending profile = %lx\n", *(_DWORD *)(a1 + 92));
    }
    result = 0;
    *(_DWORD *)(*(_DWORD *)(a1 + 92) + 20) = 0;
    *(_DWORD *)(*(_DWORD *)(a1 + 92) + 16) = 0;
    *(_DWORD *)(*(_DWORD *)(a1 + 92) + 8) = *(_DWORD *)(a1 + 44);
    *(_DWORD *)(*(_DWORD *)(a1 + 92) + 4) = 0;
    *(_DWORD *)(*(_DWORD *)(a1 + 92) + 28) = 0;
    v8 = *(_DWORD *)(a1 + 100);
    *(_DWORD *)(a1 + 104) = v3;
    *(_BYTE *)(a1 + 91) = 0;
    if ( !v8 )
      *(_DWORD *)(a1 + 100) = *(_DWORD *)(a1 + 92);
    *(_BYTE *)(a1 + 90) = 1;
  }
  return result;
}


// ===== 71ef60 End_Profile =====
int __fastcall End_Profile(int a1)
{
  _DWORD *v1; // r1
  unsigned int v2; // r3
  int v4; // r6
  int v5; // r3

  v1 = *(_DWORD **)(a1 + 92);
  v2 = *(_DWORD *)(a1 + 44);
  v4 = (int)(v2 - v1[2]) >> 2;
  if ( v4 < 0 )
  {
    FT_Message("End_Profile: negative height encountered!\n");
    *(_DWORD *)(a1 + 48) = 99;
    return 1;
  }
  else
  {
    if ( v4 )
    {
      if ( dword_A35524 > 5 )
      {
        FT_Message("Ending profile %lx, start = %ld, height = %ld\n", v1, v1[5], v4);
        v1 = *(_DWORD **)(a1 + 92);
      }
      v1[4] = v4;
      v5 = *(_DWORD *)(a1 + 44);
      *(_DWORD *)(a1 + 44) = v5 + 32;
      *(_DWORD *)(a1 + 92) = v5;
      *(_DWORD *)(v5 + 16) = 0;
      *(_DWORD *)(*(_DWORD *)(a1 + 92) + 8) = *(_DWORD *)(a1 + 44);
      v1[7] = *(_DWORD *)(a1 + 92);
      v2 = *(_DWORD *)(a1 + 44);
      ++*(_WORD *)(a1 + 88);
    }
    if ( v2 < *(_DWORD *)(a1 + 40) )
    {
      *(_BYTE *)(a1 + 91) = 0;
      return 0;
    }
    else
    {
      if ( dword_A35524 > 0 )
        FT_Message("overflow in End_Profile\n");
      *(_DWORD *)(a1 + 48) = 98;
      return 1;
    }
  }
}


// ===== 71f078 Conic_To =====
int __fastcall Conic_To(_DWORD *a1, int a2, int a3, int a4, int a5)
{
  int v6; // r0
  int *v7; // r0
  int v8; // r3
  int v9; // r5
  int v10; // r2
  int v11; // r7
  int v12; // r1
  int v13; // r12
  _BOOL4 v14; // r1
  int v15; // r2
  bool v16; // cc
  int v17; // r3
  int v18; // r9

  v6 = a1[18];
  a1[14] = a1 + 47;
  a1[51] = v6;
  a1[52] = a1[19];
  *(_DWORD *)(a1[14] + 8) = a2;
  *(_DWORD *)(a1[14] + 12) = a3;
  *(_DWORD *)a1[14] = a4;
  *(_DWORD *)(a1[14] + 4) = a5;
  v7 = (int *)a1[14];
  while ( 1 )
  {
    v8 = v7[5];
    v9 = v7[1];
    v10 = v7[3];
    v11 = *v7;
    if ( v8 <= v9 )
      v12 = v7[5];
    else
      v12 = v7[1];
    if ( v8 <= v9 )
      v13 = v7[1];
    else
      v13 = v7[5];
    v14 = v10 < v12;
    if ( v10 > v13 )
      v15 = v14 | 1;
    else
      v15 = v14;
    if ( v15 )
    {
      Split_Conic(v7);
      v7 = (int *)(a1[14] + 16);
      a1[14] = v7;
      goto LABEL_24;
    }
    v16 = v8 < v9;
    if ( v8 == v9 )
    {
      v7 -= 4;
      a1[14] = v7;
      goto LABEL_24;
    }
    v17 = a1[26];
    v18 = v16 ? 1 : 2;
    if ( v18 != v17 && (v17 && (unsigned __int8)End_Profile((int)a1) || (unsigned __int8)New_Profile((int)a1, v18)) )
      return 1;
    if ( v18 == 1 )
    {
      if ( (unsigned __int8)Bezier_Up((int)a1, 2, (void (*)(void))Split_Conic, a1[20], a1[21]) )
        return 1;
    }
    else if ( (unsigned __int8)Bezier_Down((int)a1, 2, (void (*)(void))Split_Conic, a1[20], a1[21]) )
    {
      return 1;
    }
    v7 = (int *)a1[14];
LABEL_24:
    if ( a1 + 47 > v7 )
    {
      a1[19] = v9;
      a1[18] = v11;
      return 0;
    }
  }
}


// ===== 71f1fc Cubic_To =====
int __fastcall Cubic_To(_DWORD *a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  int v8; // r0
  int *v9; // r0
  int v10; // r3
  int v11; // r5
  int v12; // r2
  int v13; // r12
  int v14; // r9
  int v15; // r10
  _BOOL4 v16; // r9
  int v17; // r12
  int v18; // r7
  bool v19; // cc
  int v20; // r3
  int v21; // r10

  v8 = a1[18];
  a1[14] = a1 + 47;
  a1[53] = v8;
  a1[54] = a1[19];
  *(_DWORD *)(a1[14] + 16) = a2;
  *(_DWORD *)(a1[14] + 20) = a3;
  *(_DWORD *)(a1[14] + 8) = a4;
  *(_DWORD *)(a1[14] + 12) = a5;
  *(_DWORD *)a1[14] = a6;
  *(_DWORD *)(a1[14] + 4) = a7;
  v9 = (int *)a1[14];
  while ( 1 )
  {
    v10 = v9[7];
    v11 = v9[1];
    v12 = v9[5];
    if ( v10 <= v11 )
    {
      v13 = v9[1];
      v14 = v9[7];
    }
    else
    {
      v13 = v9[7];
      v14 = v9[1];
    }
    if ( v12 <= v9[3] )
    {
      v15 = v9[3];
    }
    else
    {
      v15 = v9[5];
      v12 = v9[3];
    }
    v16 = v12 < v14;
    if ( v15 > v13 )
      v17 = v16 | 1;
    else
      v17 = v16;
    v18 = *v9;
    if ( v17 )
    {
      Split_Cubic(v9);
      v9 = (int *)(a1[14] + 24);
      a1[14] = v9;
      goto LABEL_24;
    }
    v19 = v10 <= v11;
    if ( v10 == v11 )
    {
      v9 -= 6;
      a1[14] = v9;
      goto LABEL_24;
    }
    v20 = a1[26];
    v21 = v19 ? 1 : 2;
    if ( v21 != v20 && (v20 && (unsigned __int8)End_Profile((int)a1) || (unsigned __int8)New_Profile((int)a1, v21)) )
      return 1;
    if ( v21 == 1 )
    {
      if ( (unsigned __int8)Bezier_Up((int)a1, 3, (void (*)(void))Split_Cubic, a1[20], a1[21]) )
        return 1;
    }
    else if ( (unsigned __int8)Bezier_Down((int)a1, 3, (void (*)(void))Split_Cubic, a1[20], a1[21]) )
    {
      return 1;
    }
    v9 = (int *)a1[14];
LABEL_24:
    if ( a1 + 47 > v9 )
    {
      a1[19] = v11;
      a1[18] = v18;
      return 0;
    }
  }
}


// ===== 71f3ac Line_Up =====
int __fastcall Line_Up(int *a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  int v7; // r6
  int v9; // r5
  bool v10; // cc
  int v11; // r11
  int v12; // r4
  int v13; // r9
  int v14; // r3
  int v15; // r8
  int v16; // r10
  int v17; // r3
  bool v18; // zf
  int v19; // r10
  int v20; // r6
  unsigned int v21; // r2
  int v22; // r8
  int v24; // r9
  int v25; // r10
  int v26; // r1
  int v27; // r0
  int v28; // r3
  int i; // r2
  int v30; // r0
  int v31; // r3
  int v32; // r3

  v7 = a5;
  v9 = a5 - a3;
  v10 = a5 <= a6;
  if ( a5 >= a6 )
    v10 = a5 - a3 <= 0;
  v11 = v10;
  v12 = a2;
  if ( v10 || a3 > a7 )
    return 0;
  v13 = a4 - a2;
  if ( a3 < a6 )
  {
    v30 = FT_MulDiv(v13, a6 - a3, a5 - a3);
    v14 = *a1;
    v12 += v30;
    v15 = a6 >> *a1;
  }
  else
  {
    v14 = *a1;
    v15 = a3 >> *a1;
    v11 = a3 & (a1[1] - 1);
  }
  if ( a5 > a7 )
  {
    v16 = a7 >> v14;
  }
  else
  {
    v16 = a5 >> v14;
    v14 = a1[1];
  }
  if ( a5 > a7 )
    v7 = 0;
  else
    --v14;
  if ( a5 <= a7 )
    v7 &= v14;
  if ( v11 <= 0 )
  {
    if ( *((_BYTE *)a1 + 91) )
    {
      v31 = a1[11];
      *((_BYTE *)a1 + 91) = 0;
      a1[11] = v31 - 4;
    }
    goto LABEL_21;
  }
  if ( v15 == v16 )
    return 0;
  ++v15;
  v12 += v13 * (a1[1] - v11) / v9;
LABEL_21:
  v17 = *((char *)a1 + 90);
  *((_BYTE *)a1 + 91) = v7 == 0;
  v18 = v17 == 0;
  if ( v17 )
    v17 = a1[23];
  v19 = v16 + 1;
  if ( !v18 )
    *(_DWORD *)(v17 + 20) = v15;
  v20 = a1[11];
  v21 = a1[10];
  v22 = v19 - v15;
  if ( !v18 )
    *((_BYTE *)a1 + 90) = 0;
  if ( v20 + 4 * v22 < v21 )
  {
    if ( v13 <= 0 )
    {
      v32 = a1[1];
      v25 = v32 * v13 / v9;
      v26 = v32 * -v13 % v9;
      v27 = -1;
    }
    else
    {
      v24 = a1[1] * v13;
      v25 = v24 / v9;
      v26 = v24 % v9;
      v27 = 1;
    }
    if ( v22 > 0 )
    {
      v28 = -v9;
      for ( i = 0; i != v22; ++i )
      {
        v28 += v26;
        *(_DWORD *)(v20 + 4 * i) = v12;
        v12 += v25;
        if ( v28 >= 0 )
        {
          v28 -= v9;
          v12 += v27;
        }
      }
      v20 += 4 * v22;
    }
    a1[11] = v20;
    return 0;
  }
  else
  {
    a1[12] = 98;
    return 1;
  }
}


// ===== 71f588 Line_To =====
int __fastcall Line_To(int a1, int a2, int a3)
{
  int v3; // r3
  int v4; // r4
  int v7; // r2
  int v9; // r3
  int v10; // r2
  int v11; // r7
  char v12; // r0

  v3 = *(_DWORD *)(a1 + 104);
  v4 = a1;
  if ( v3 == 1 )
  {
    v10 = *(_DWORD *)(a1 + 76);
    if ( a3 >= v10 )
    {
LABEL_13:
      if ( !(unsigned __int8)Line_Up(
                               (int *)v4,
                               *(_DWORD *)(v4 + 72),
                               v10,
                               a2,
                               a3,
                               *(_DWORD *)(v4 + 80),
                               *(_DWORD *)(v4 + 84)) )
        goto LABEL_6;
      return 1;
    }
    if ( (unsigned __int8)End_Profile(a1) )
      return 1;
    a1 = v4;
    goto LABEL_9;
  }
  if ( !v3 )
  {
    v9 = *(_DWORD *)(a1 + 76);
    if ( v9 < a3 )
    {
LABEL_26:
      if ( (unsigned __int8)New_Profile(a1, 1) )
        return 1;
      v3 = *(_DWORD *)(v4 + 104);
LABEL_11:
      if ( v3 != 1 )
      {
LABEL_4:
        if ( v3 == 2 )
        {
          v7 = *(_DWORD *)(v4 + 76);
          goto LABEL_16;
        }
LABEL_6:
        *(_DWORD *)(v4 + 76) = a3;
        *(_DWORD *)(v4 + 72) = a2;
        return 0;
      }
      v10 = *(_DWORD *)(v4 + 76);
      goto LABEL_13;
    }
    if ( v9 <= a3 )
      goto LABEL_6;
LABEL_9:
    if ( (unsigned __int8)New_Profile(a1, 2) )
      return 1;
    v3 = *(_DWORD *)(v4 + 104);
    goto LABEL_11;
  }
  if ( v3 != 2 )
    goto LABEL_4;
  v7 = *(_DWORD *)(a1 + 76);
  if ( a3 > v7 )
  {
    if ( (unsigned __int8)End_Profile(a1) )
      return 1;
    a1 = v4;
    goto LABEL_26;
  }
LABEL_16:
  v11 = *(unsigned __int8 *)(v4 + 90);
  v12 = Line_Up((int *)v4, *(_DWORD *)(v4 + 72), -v7, a2, -a3, -*(_DWORD *)(v4 + 84), -*(_DWORD *)(v4 + 80));
  if ( v11 )
  {
    if ( !*(_BYTE *)(v4 + 90) )
      *(_DWORD *)(*(_DWORD *)(v4 + 92) + 20) = -*(_DWORD *)(*(_DWORD *)(v4 + 92) + 20);
  }
  if ( !v12 )
    goto LABEL_6;
  return 1;
}


// ===== 71f6fc Render_Single_Pass =====
int __fastcall Render_Single_Pass(int a1, int a2)
{
  int v2; // r3
  int v4; // r0
  int v5; // r3
  int v6; // r1
  int v7; // r2
  int v8; // r0
  int v9; // r2
  int v10; // r2
  unsigned __int16 v11; // r2
  int v12; // r0
  int v13; // r3
  int v14; // r6
  int v15; // r1
  _DWORD *v16; // r8
  _DWORD *v17; // r5
  int v18; // r12
  int v19; // r0
  int v20; // r1
  char v21; // r6
  int v22; // r2
  int v23; // r6
  int v24; // r6
  int v25; // r12
  int v26; // r3
  int v27; // r7
  int v28; // r6
  int v29; // r11
  int v30; // r9
  int i; // r10
  int v32; // t1
  int v33; // r3
  int v34; // r2
  int v35; // r3
  int v36; // r0
  __int16 v37; // r1
  __int16 v38; // r3
  int v41; // lr
  int v42; // r0
  int v43; // r1
  int v44; // r7
  int v45; // r2
  int v46; // r3
  int v47; // r12
  int v48; // lr
  int v49; // r10
  int v50; // r8
  int v51; // r0
  int v52; // r3
  int v53; // r2
  int v54; // r1
  int v55; // r2
  int v56; // r3
  char v57; // r0
  int v58; // r2
  __int16 v59; // r6
  int v60; // r3
  int v61; // r5
  int v62; // r2
  int v63; // r3
  unsigned int v64; // r6
  _DWORD *v65; // r5
  int v66; // r1
  int v67; // r7
  int v68; // r3
  int *v69; // r0
  __int16 v70; // r2
  int v71; // r12
  __int16 v72; // r2
  bool v73; // cc
  __int16 v74; // r3
  int *v75; // r12
  int *v76; // r3
  int **v77; // r1
  __int16 v78; // r5
  int *j; // r3
  int v80; // r3
  int *v81; // r2
  int *v82; // r0
  bool v83; // zf
  int *v84; // r3
  int **v85; // r1
  int v86; // r3
  int *v87; // r3
  int v88; // lr
  int **v89; // r5
  int v90; // r3
  int *v91; // r5
  int *v92; // r6
  int v93; // r12
  int v94; // lr
  int v95; // r7
  int v96; // r9
  int v97; // r8
  int v98; // r7
  int *v99; // r5
  int *k; // r6
  int *v101; // r2
  int *v102; // r0
  int *v103; // r3
  int **v104; // r1
  int v105; // lr
  int *v106; // r2
  int *v107; // r0
  int *v108; // r3
  int **v109; // r1
  int v110; // [sp+10h] [bp-3Ch]
  int v111; // [sp+10h] [bp-3Ch]
  int v112; // [sp+14h] [bp-38h]
  __int16 v113; // [sp+14h] [bp-38h]
  int v114; // [sp+18h] [bp-34h]
  __int16 v115; // [sp+18h] [bp-34h]
  unsigned int v116; // [sp+1Ch] [bp-30h]
  int v118; // [sp+24h] [bp-28h]
  __int16 v119; // [sp+30h] [bp-1Ch]
  int *v120; // [sp+38h] [bp-14h] BYREF
  int *v121; // [sp+3Ch] [bp-10h] BYREF
  int *v122; // [sp+40h] [bp-Ch] BYREF
  __int16 v123; // [sp+44h] [bp-8h] BYREF
  __int16 v124[3]; // [sp+46h] [bp-6h] BYREF

  v2 = *(_DWORD *)(a1 + 1028);
LABEL_2:
  if ( v2 < 0 )
    return 0;
  while ( 1 )
  {
    v4 = *(__int16 *)(a1 + 4 * (v2 + 240) + 6);
    v5 = *(_DWORD *)(a1 + 4);
    v6 = *(_DWORD *)(a1 + 36);
    v7 = *(_DWORD *)(a1 + 1028) + 240;
    *(_DWORD *)(a1 + 84) = v5 * v4;
    v8 = *(__int16 *)(a1 + 4 * v7 + 4);
    v9 = *(_DWORD *)(a1 + 32);
    *(_DWORD *)(a1 + 44) = v9;
    *(_DWORD *)(a1 + 92) = v9;
    *(_DWORD *)(a1 + 80) = v5 * v8;
    *(_DWORD *)(a1 + 40) = v6 - 32;
    *(_DWORD *)(a1 + 48) = 0;
    *(_DWORD *)(a1 + 96) = 0;
    *(_BYTE *)(a1 + 91) = 0;
    *(_BYTE *)(a1 + 90) = 0;
    *(_DWORD *)(a1 + 52) = 0;
    *(_DWORD *)(v9 + 8) = v9;
    v10 = *(__int16 *)(a1 + 132);
    *(_WORD *)(a1 + 88) = 0;
    if ( v10 <= 0 )
      goto LABEL_81;
    v110 = 0;
    v11 = 0;
    while ( 2 )
    {
      *(_DWORD *)(a1 + 104) = 0;
      *(_DWORD *)(a1 + 100) = 0;
      v12 = *(_DWORD *)(a1 + 136);
      v13 = *(unsigned __int16 *)(*(_DWORD *)(a1 + 144) + 2 * v110);
      v14 = *(_DWORD *)(a1 + 28);
      v15 = *(_DWORD *)(a1 + 8);
      v16 = (_DWORD *)(v12 + 8 * v13);
      v17 = (_DWORD *)(v12 + 8 * v11);
      v18 = (*v17 << v14) - v15;
      v112 = (v16[1] << v14) - v15;
      v19 = (v17[1] << v14) - v15;
      v114 = (*v16 << v14) - v15;
      if ( a2 )
      {
        v112 = (*v16 << v14) - v15;
        v19 = (*v17 << v14) - v15;
        v114 = (v16[1] << v14) - v15;
        v18 = (v17[1] << v14) - v15;
      }
      v20 = *(_DWORD *)(a1 + 140);
      v21 = *(_BYTE *)(v20 + v11);
      v22 = v20 + v11;
      v23 = v21 & 3;
      if ( v23 == 2 )
      {
LABEL_50:
        *(_DWORD *)(a1 + 48) = 20;
        return 1;
      }
      if ( v23 )
      {
        v114 = v18;
        v112 = v19;
      }
      else
      {
        if ( (*(_BYTE *)(v20 + v13) & 3) == 1 )
        {
          v16 -= 2;
        }
        else
        {
          v114 = (v18 + v114) / 2;
          v112 = (v19 + v112) / 2;
        }
        v17 -= 2;
        --v22;
      }
      *(_DWORD *)(a1 + 72) = v114;
      *(_DWORD *)(a1 + 76) = v112;
      if ( v16 <= v17 )
      {
LABEL_53:
        if ( !(unsigned __int8)Line_To(a1, v114, v112) )
          goto LABEL_54;
LABEL_28:
        if ( *(_DWORD *)(a1 + 48) != 98 )
          return 1;
      }
      else
      {
        v116 = (unsigned int)v16;
        while ( 1 )
        {
          v17 += 2;
          v24 = v22 + 1;
          if ( (*(_BYTE *)(v22 + 1) & 3) != 0 )
            break;
          v25 = *(_DWORD *)(a1 + 28);
          v26 = *(_DWORD *)(a1 + 8);
          v27 = (v17[1] << v25) - v26;
          v28 = (*v17 << v25) - v26;
          if ( a2 )
          {
            v27 = (*v17 << v25) - v26;
            v28 = (v17[1] << v25) - v26;
          }
          if ( (unsigned int)v17 >= v116 )
          {
LABEL_65:
            if ( !(unsigned __int8)Conic_To((_DWORD *)a1, v28, v27, v114, v112) )
            {
              v58 = *(_DWORD *)(a1 + 76);
              v59 = *(_WORD *)(*(_DWORD *)(a1 + 144) + 2 * v110);
              if ( ((*(_DWORD *)(a1 + 4) - 1) & v58) == 0 )
                goto LABEL_55;
LABEL_67:
              v61 = *(_DWORD *)(a1 + 92);
              goto LABEL_60;
            }
            goto LABEL_28;
          }
          v29 = v22;
          v30 = v27;
          for ( i = v28; ; i = v28 )
          {
            v32 = v17[2];
            v17 += 2;
            v28 = (v32 << v25) - v26;
            v27 = (v17[1] << v25) - v26;
            if ( a2 )
            {
              v33 = v28;
              v28 = v27;
              v27 = v33;
            }
            if ( (*(_BYTE *)(v29 + 2) & 3) == 1 )
              break;
            if ( (*(_BYTE *)(v29 + 2) & 3) != 0 )
              goto LABEL_50;
            if ( (unsigned __int8)Conic_To((_DWORD *)a1, i, v30, (v28 + i) / 2, (v27 + v30) / 2) )
              goto LABEL_28;
            ++v29;
            if ( v116 <= (unsigned int)v17 )
              goto LABEL_65;
            v25 = *(_DWORD *)(a1 + 28);
            v26 = *(_DWORD *)(a1 + 8);
            v30 = v27;
          }
          v57 = Conic_To((_DWORD *)a1, i, v30, v28, v27);
          v24 = v29 + 2;
          if ( v57 )
            goto LABEL_28;
          if ( v116 <= (unsigned int)v17 )
            goto LABEL_53;
LABEL_44:
          v22 = v24;
        }
        if ( (*(_BYTE *)(v22 + 1) & 3) != 1 )
        {
          if ( v116 < (unsigned int)(v17 + 2) || (*(_BYTE *)(v22 + 2) & 3) != 2 )
            goto LABEL_50;
          v17 += 4;
          v41 = *(_DWORD *)(a1 + 28);
          v42 = *(_DWORD *)(a1 + 8);
          v43 = (*(v17 - 4) << v41) - v42;
          v44 = (v17[1] << v41) - v42;
          v45 = (*(v17 - 3) << v41) - v42;
          v46 = (*(v17 - 2) << v41) - v42;
          v47 = (*(v17 - 1) << v41) - v42;
          v48 = (*v17 << v41) - v42;
          if ( a2 )
          {
            v49 = v48;
            v50 = v46;
            v51 = v43;
            v48 = v44;
            v46 = v47;
            v43 = v45;
            v44 = v49;
            v47 = v50;
            v45 = v51;
          }
          if ( v116 >= (unsigned int)v17 )
          {
            if ( (unsigned __int8)Cubic_To((_DWORD *)a1, v43, v45, v46, v47, v48, v44) )
              goto LABEL_28;
            v24 += 2;
LABEL_43:
            if ( v116 <= (unsigned int)v17 )
              goto LABEL_53;
            goto LABEL_44;
          }
          if ( (unsigned __int8)Cubic_To((_DWORD *)a1, v43, v45, v46, v47, v114, v112) )
            goto LABEL_28;
LABEL_54:
          v58 = *(_DWORD *)(a1 + 76);
          v59 = *(_WORD *)(*(_DWORD *)(a1 + 144) + 2 * v110);
          if ( ((*(_DWORD *)(a1 + 4) - 1) & v58) != 0 )
            goto LABEL_67;
LABEL_55:
          if ( v58 < *(_DWORD *)(a1 + 80) )
            goto LABEL_67;
          if ( v58 > *(_DWORD *)(a1 + 84) )
            goto LABEL_67;
          v60 = *(_DWORD *)(a1 + 100);
          if ( !v60 )
            goto LABEL_67;
          v61 = *(_DWORD *)(a1 + 92);
          if ( *(_DWORD *)(v60 + 12) == *(_DWORD *)(v61 + 12) )
            *(_DWORD *)(a1 + 44) -= 4;
LABEL_60:
          if ( (unsigned __int8)End_Profile(a1) )
            goto LABEL_28;
          v63 = *(_DWORD *)(a1 + 100);
          if ( v63 )
            *(_DWORD *)(v61 + 28) = v63;
          if ( ++v110 < *(__int16 *)(a1 + 132) )
          {
            v11 = v59 + 1;
            continue;
          }
          v64 = *(unsigned __int16 *)(a1 + 88);
          if ( v64 > 1 )
          {
            v65 = *(_DWORD **)(a1 + 96);
            while ( 1 )
            {
              if ( v64 > 1 )
                v62 = v65[2];
              v68 = v65[4];
              v65[1] = v64 > 1 ? v62 + 4 * v68 : 0;
              if ( v65[3] == -1 )
              {
                v67 = v65[5];
                v66 = v67 + 1 - v68;
                v65[2] += 4 * (v68 - 1);
                v65[5] = v66;
              }
              else
              {
                v66 = v65[5];
                v67 = v66 + v68 - 1;
              }
              if ( (unsigned __int8)Insert_Y_Turn((_DWORD *)a1, v66) )
                goto LABEL_28;
              v64 = (unsigned __int16)(v64 - 1);
              if ( (unsigned __int8)Insert_Y_Turn((_DWORD *)a1, v67 + 1) )
                goto LABEL_28;
              v65 = (_DWORD *)v65[1];
              if ( !v64 )
                goto LABEL_82;
            }
          }
LABEL_81:
          *(_DWORD *)(a1 + 96) = 0;
LABEL_82:
          if ( *(_DWORD *)(a1 + 44) >= *(_DWORD *)(a1 + 40) )
            goto LABEL_28;
          v69 = *(int **)(a1 + 96);
          if ( v69 )
          {
            v70 = *(int *)(a1 + 84) >> *(_DWORD *)a1;
            v123 = *(int *)(a1 + 80) >> *(_DWORD *)a1;
            v122 = nullptr;
            v121 = nullptr;
            v120 = nullptr;
            for ( v124[0] = v70; ; v70 = v124[0] )
            {
              v71 = v70;
              v72 = v69[5];
              v73 = v71 <= v72;
              v74 = v72 + v69[4] - 1;
              v75 = (int *)v69[1];
              if ( !v73 )
                v124[0] = v69[5];
              if ( v123 < v74 )
                v123 = v74;
              *v69 = 0;
              v76 = v122;
              if ( v122 && *v122 <= 0 )
              {
                do
                {
                  v77 = (int **)(v76 + 1);
                  v76 = (int *)v76[1];
                }
                while ( v76 && *v76 <= 0 );
              }
              else
              {
                v77 = &v122;
              }
              v69[1] = (int)v76;
              *v77 = v69;
              if ( !v75 )
                break;
              v69 = v75;
            }
            if ( !*(_DWORD *)(a1 + 52) )
            {
              *(_DWORD *)(a1 + 48) = 20;
              return 20;
            }
            (*(void (__fastcall **)(int, __int16 *, __int16 *))(a1 + 168))(a1, v124, &v123);
            for ( j = v122; j; j = (int *)j[1] )
              j[6] = (unsigned __int16)(j[5] - v124[0]);
            v80 = *(_DWORD *)(a1 + 52);
            v115 = v124[0];
            if ( v80 > 0 && *(_DWORD *)(*(_DWORD *)(a1 + 36) - 4 * v80) == v124[0] )
              *(_DWORD *)(a1 + 52) = --v80;
            v119 = 0;
LABEL_109:
            if ( v80 > 0 )
            {
              v81 = v122;
              if ( v122 )
              {
                while ( 1 )
                {
                  v82 = (int *)v81[1];
                  v83 = v81[6] == v119;
                  v81[6] -= v119;
                  if ( !v83 )
                  {
LABEL_121:
                    if ( !v82 )
                      goto LABEL_131;
                    goto LABEL_122;
                  }
                  v84 = v122;
                  if ( !v122 )
                    goto LABEL_119;
                  if ( v122 != v81 )
                    break;
                  v85 = &v122;
LABEL_123:
                  *v85 = (int *)v84[1];
                  v86 = v81[3];
                  if ( v86 == -1 )
                  {
LABEL_124:
                    v87 = v120;
                    v88 = *v81;
                    if ( v120 && v88 >= *v120 )
                    {
                      do
                      {
                        v89 = (int **)(v87 + 1);
                        v87 = (int *)v87[1];
                      }
                      while ( v87 && v88 >= *v87 );
LABEL_129:
                      v81[1] = (int)v87;
                      *v89 = v81;
                    }
                    else
                    {
                      v81[1] = (int)v120;
                      v120 = v81;
                    }
                    goto LABEL_130;
                  }
LABEL_120:
                  if ( v86 != 1 )
                    goto LABEL_121;
                  v87 = v121;
                  v105 = *v81;
                  if ( v121 && *v121 <= v105 )
                  {
                    while ( 1 )
                    {
                      v89 = (int **)(v87 + 1);
                      v87 = (int *)v87[1];
                      if ( !v87 )
                        break;
                      if ( v105 < *v87 )
                        goto LABEL_129;
                    }
                    v81[1] = 0;
                    *v89 = v81;
                  }
                  else
                  {
                    v81[1] = (int)v121;
                    v121 = v81;
                  }
LABEL_130:
                  if ( !v82 )
                    goto LABEL_131;
LABEL_122:
                  v81 = v82;
                }
                while ( 1 )
                {
                  v85 = (int **)(v84 + 1);
                  v84 = (int *)v84[1];
                  if ( !v84 )
                    break;
                  if ( v84 == v81 )
                    goto LABEL_123;
                }
LABEL_119:
                v86 = v81[3];
                if ( v86 == -1 )
                  goto LABEL_124;
                goto LABEL_120;
              }
LABEL_131:
              Sort(&v121);
              Sort(&v120);
              v90 = *(_DWORD *)(a1 + 52);
              v118 = *(_DWORD *)(*(_DWORD *)(a1 + 36) - 4 * v90);
              *(_DWORD *)(a1 + 52) = v90 - 1;
              v119 = v118 - v115;
              if ( (__int16)v118 <= v115 )
                goto LABEL_152;
              v113 = v115;
LABEL_133:
              v91 = v121;
              v92 = v120;
              if ( !v121 )
                goto LABEL_150;
              v111 = 0;
              while ( 1 )
              {
LABEL_138:
                v93 = *v92;
                v94 = *v91;
                v95 = *(_DWORD *)(a1 + 4);
                if ( *v91 > *v92 )
                {
                  v94 = *v92;
                  v93 = *v91;
                }
                v96 = (v95 - 1 + v93) & -v95;
                v97 = v94 & -v95;
                if ( v93 - v94 > v95 )
                  break;
                v98 = v97 + v95;
                if ( v97 <= v96 && v96 != v98 )
                  break;
                if ( *(_BYTE *)(a1 + 184) == 2 )
                  goto LABEL_137;
                *v91 = v94;
                *v92 = v93;
                v111 = (unsigned __int16)(v111 + 1);
                v91[6] = 1;
                v91 = (int *)v91[1];
                v92 = (int *)v92[1];
                if ( !v91 )
                {
LABEL_144:
                  if ( v111 )
                  {
                    v99 = v121;
                    for ( k = v120; v99; k = (int *)k[1] )
                    {
                      while ( !v99[6] )
                      {
                        v99 = (int *)v99[1];
                        k = (int *)k[1];
                        if ( !v99 )
                          goto LABEL_150;
                      }
                      v99[6] = 0;
                      (*(void (__fastcall **)(int, _DWORD, int, int, int *, int *))(a1 + 176))(
                        a1,
                        v113,
                        *v99,
                        *k,
                        v99,
                        k);
                      v99 = (int *)v99[1];
                    }
                  }
LABEL_150:
                  (*(void (__fastcall **)(int))(a1 + 180))(a1);
                  if ( (__int16)v118 > ++v113 )
                  {
                    Sort(&v121);
                    Sort(&v120);
                    goto LABEL_133;
                  }
                  v115 += ~v115 + v118 + 1;
LABEL_152:
                  v101 = v121;
                  if ( v121 )
                  {
                    while ( 2 )
                    {
                      v102 = (int *)v101[1];
                      if ( !v101[4] )
                      {
                        v103 = v121;
                        if ( v121 )
                        {
                          if ( v121 == v101 )
                          {
                            v104 = &v121;
LABEL_169:
                            *v104 = (int *)v103[1];
                            if ( !v102 )
                              break;
                            goto LABEL_161;
                          }
                          while ( 1 )
                          {
                            v104 = (int **)(v103 + 1);
                            v103 = (int *)v103[1];
                            if ( !v103 )
                              break;
                            if ( v103 == v101 )
                              goto LABEL_169;
                          }
                        }
                      }
                      if ( !v102 )
                        break;
LABEL_161:
                      v101 = v102;
                      continue;
                    }
                  }
                  v106 = v120;
                  if ( v120 )
                  {
                    while ( 1 )
                    {
                      v107 = (int *)v106[1];
                      if ( !v106[4] )
                      {
                        v108 = v120;
                        if ( v120 )
                        {
                          if ( v120 == v106 )
                          {
                            v109 = &v120;
LABEL_172:
                            *v109 = (int *)v108[1];
                          }
                          else
                          {
                            while ( 1 )
                            {
                              v109 = (int **)(v108 + 1);
                              v108 = (int *)v108[1];
                              if ( !v108 )
                                break;
                              if ( v108 == v106 )
                                goto LABEL_172;
                            }
                          }
                        }
                      }
                      if ( !v107 )
                        break;
                      v106 = v107;
                    }
                  }
                  v80 = *(_DWORD *)(a1 + 52);
                  goto LABEL_109;
                }
              }
              (*(void (__fastcall **)(int, _DWORD))(a1 + 172))(a1, v113);
LABEL_137:
              v91 = (int *)v91[1];
              v92 = (int *)v92[1];
              if ( !v91 )
                goto LABEL_144;
              goto LABEL_138;
            }
            if ( v123 >= v115 )
            {
              v78 = v115;
              do
              {
                (*(void (__fastcall **)(int))(a1 + 180))(a1);
                ++v78;
              }
              while ( v123 >= v78 );
            }
          }
          v2 = *(_DWORD *)(a1 + 1028) - 1;
          *(_DWORD *)(a1 + 1028) = v2;
          goto LABEL_2;
        }
        v52 = *(_DWORD *)(a1 + 8);
        v53 = *(_DWORD *)(a1 + 28);
        v54 = (*v17 << v53) - v52;
        v55 = (v17[1] << v53) - v52;
        if ( a2 )
        {
          v56 = v54;
          v54 = v55;
          v55 = v56;
        }
        if ( !(unsigned __int8)Line_To(a1, v54, v55) )
          goto LABEL_43;
        if ( *(_DWORD *)(a1 + 48) != 98 )
          return 1;
      }
      break;
    }
    v34 = *(_DWORD *)(a1 + 1028);
    *(_DWORD *)(a1 + 48) = 0;
    v35 = a1 + 4 * (v34 + 240);
    v36 = *(__int16 *)(v35 + 4);
    v37 = *(_WORD *)(v35 + 6);
    v38 = (v36 + v37) / 2;
    if ( v38 < v36 || v34 > 6 )
      break;
    *(_WORD *)(a1 + 4 * (v34 + 241) + 4) = v38;
    *(_WORD *)(a1 + 4 * (*(_DWORD *)(a1 + 1028) + 241) + 6) = v37;
    *(_WORD *)(a1 + 4 * (*(_DWORD *)(a1 + 1028) + 240) + 6) = v38 - 1;
    v2 = *(_DWORD *)(a1 + 1028) + 1;
    *(_DWORD *)(a1 + 1028) = v2;
    if ( v2 < 0 )
      return 0;
  }
  *(_DWORD *)(a1 + 1028) = 0;
  *(_DWORD *)(a1 + 48) = 20;
  return 20;
}


// ===== 720394 ft_black_render =====
int __fastcall ft_black_render(int *a1, int a2)
{
  __int16 *v4; // r6
  int *v5; // r7
  int v6; // r2
  int v7; // r1
  int result; // r0
  int v9; // r8
  int v10; // r1
  int v11; // r2
  int v12; // r3
  int v13; // r0
  int v14; // r1
  int v15; // r2
  int v16; // r3
  _DWORD *v17; // r7
  int v18; // r1
  int v19; // r3
  int v20; // r3
  int v21; // r2
  int v22; // r2
  int v23; // r2
  const char *v24; // r1
  int v25; // r2
  int v26; // r1
  int v27; // r0
  int v28; // r12
  char v29; // r2
  int v30; // r6
  unsigned int v31; // r7
  __int16 v32; // r3
  __int16 v33; // r6

  v4 = *(__int16 **)(a2 + 4);
  v5 = *(int **)a2;
  if ( !a1 || !*a1 || !a1[1] )
    return 96;
  if ( !v4 )
    return 20;
  if ( !v4[1] )
    return 0;
  v6 = *v4;
  if ( v6 <= 0 )
    return 0;
  v7 = *((_DWORD *)v4 + 3);
  if ( !v7 || !*((_DWORD *)v4 + 1) || v4[1] != *(__int16 *)(v7 + 2 * v6 - 2) + 1 )
    return 20;
  v9 = a1[3];
  if ( (*(_DWORD *)(a2 + 8) & 2) != 0 )
    return 19;
  if ( !v5 )
    return 20;
  if ( !v5[1] || !*v5 )
    return 0;
  if ( !v5[3] )
    return 20;
  v10 = *((_DWORD *)v4 + 1);
  v11 = *((_DWORD *)v4 + 2);
  v12 = *((_DWORD *)v4 + 3);
  *(_DWORD *)(v9 + 132) = *(_DWORD *)v4;
  *(_DWORD *)(v9 + 136) = v10;
  *(_DWORD *)(v9 + 140) = v11;
  *(_DWORD *)(v9 + 144) = v12;
  *(_DWORD *)(v9 + 148) = *((_DWORD *)v4 + 4);
  v13 = *v5;
  v14 = v5[1];
  v15 = v5[2];
  v16 = v5[3];
  v17 = v5 + 4;
  *(_DWORD *)(v9 + 108) = v13;
  *(_DWORD *)(v9 + 112) = v14;
  *(_DWORD *)(v9 + 116) = v15;
  *(_DWORD *)(v9 + 120) = v16;
  v18 = v17[1];
  *(_DWORD *)(v9 + 124) = *v17;
  *(_DWORD *)(v9 + 128) = v18;
  v19 = *a1;
  *(_DWORD *)(v9 + 32) = *a1;
  *(_DWORD *)(v9 + 36) = v19 + (a1[1] & 0xFFFFFFFC);
  if ( (*(_DWORD *)(a2 + 8) & 1) != 0 )
    return 19;
  v20 = *(_DWORD *)(v9 + 148);
  if ( (v20 & 0x100) != 0 )
    v21 = 10;
  else
    v21 = 6;
  *(_DWORD *)v9 = v21;
  if ( (v20 & 0x100) != 0 )
    v22 = 128;
  else
    v22 = 32;
  *(_DWORD *)(v9 + 20) = v22;
  if ( (v20 & 0x100) != 0 )
    v23 = 24;
  else
    v23 = 2;
  *(_DWORD *)(v9 + 24) = v23;
  if ( dword_A35524 > 5 )
  {
    if ( (v20 & 0x100) != 0 )
      v24 = "true";
    else
      v24 = "false";
    FT_Message("Set_High_Precision(%s)\n", v24);
    v20 = *(_DWORD *)(v9 + 148);
  }
  v25 = 1 << *(_DWORD *)v9;
  v26 = *(_DWORD *)v9 - 6;
  v27 = -v25;
  v28 = v25 / 2;
  *(_DWORD *)(v9 + 4) = v25;
  if ( (v20 & 8) != 0 )
    LOBYTE(v25) = 2;
  *(_DWORD *)(v9 + 8) = v28;
  *(_DWORD *)(v9 + 12) = v27;
  *(_DWORD *)(v9 + 28) = v26;
  *(_DWORD *)(v9 + 16) = v26;
  if ( (v20 & 8) != 0 )
  {
    *(_BYTE *)(v9 + 184) = v25;
  }
  else
  {
    v29 = v20 & 0x10;
    if ( (v20 & 0x10) != 0 )
      v29 = 4;
    *(_BYTE *)(v9 + 184) = v29;
    if ( (v20 & 0x20) == 0 )
      ++*(_BYTE *)(v9 + 184);
  }
  v30 = *(_DWORD *)(v9 + 120);
  v31 = ((v20 ^ 0x200u) >> 9) & 1;
  v32 = *(_DWORD *)(v9 + 108) - 1;
  *(_DWORD *)(v9 + 176) = Vertical_Sweep_Drop;
  *(_BYTE *)(v9 + 185) = v31;
  *(_DWORD *)(v9 + 168) = Vertical_Sweep_Init;
  *(_DWORD *)(v9 + 172) = Vertical_Sweep_Span;
  *(_DWORD *)(v9 + 180) = Vertical_Sweep_Step;
  *(_WORD *)(v9 + 966) = v32;
  *(_DWORD *)(v9 + 64) = v30;
  *(_DWORD *)(v9 + 1028) = 0;
  *(_WORD *)(v9 + 964) = 0;
  *(_WORD *)(v9 + 60) = *(_WORD *)(v9 + 112);
  result = Render_Single_Pass(v9, 0);
  if ( !result && *(_BYTE *)(v9 + 185) && *(_BYTE *)(v9 + 184) != 2 )
  {
    v33 = *(_DWORD *)(v9 + 112) - 1;
    *(_WORD *)(v9 + 964) = 0;
    *(_WORD *)(v9 + 966) = v33;
    *(_DWORD *)(v9 + 172) = Horizontal_Sweep_Span;
    *(_DWORD *)(v9 + 1028) = 0;
    *(_DWORD *)(v9 + 168) = Horizontal_Sweep_Init;
    *(_DWORD *)(v9 + 176) = Horizontal_Sweep_Drop;
    *(_DWORD *)(v9 + 180) = Horizontal_Sweep_Step;
    return Render_Single_Pass(v9, 1);
  }
  return result;
}


// ===== 7206b0 ft_black_new =====
int __fastcall ft_black_new(int a1, _DWORD *a2)
{
  _DWORD *v4; // r0
  int v5; // r3
  int v7; // [sp+4h] [bp-8h] BYREF

  *a2 = 0;
  v4 = ft_mem_alloc(a1, 24, &v7);
  v5 = v7;
  if ( !v7 )
  {
    v4[2] = a1;
    v5 = v7;
    *a2 = v4;
  }
  return v5;
}


// ===== 7206f4 tt_face_get_metrics =====
int __fastcall tt_face_get_metrics(int a1, int a2, unsigned int a3, _WORD *a4, _WORD *a5)
{
  int v5; // r1
  unsigned int v6; // r12
  int v7; // r5
  int v9; // r2

  if ( a2 )
    v5 = a1 + 300;
  else
    v5 = a1 + 216;
  v6 = *(unsigned __int16 *)(v5 + 34);
  if ( *(_WORD *)(v5 + 34) && (v7 = *(_DWORD *)(v5 + 36)) != 0 && *(unsigned __int16 *)(a1 + 264) > a3 )
  {
    if ( a3 < v6 )
    {
      v9 = 4 * a3;
      *a4 = *(_WORD *)(v7 + v9 + 2);
      *a5 = *(_WORD *)(v7 + v9);
    }
    else
    {
      *a4 = *(_WORD *)(*(_DWORD *)(v5 + 40) + 2 * (a3 - v6));
      *a5 = *(_WORD *)(*(_DWORD *)(v5 + 36) + 4 * v6 - 4);
    }
  }
  else
  {
    *a5 = 0;
    *a4 = 0;
  }
  return 0;
}


// ===== 720794 tt_cmap_init =====
int __fastcall tt_cmap_init(int a1, int a2)
{
  *(_DWORD *)(a1 + 16) = a2;
  return 0;
}


// ===== 7207a0 tt_cmap0_char_index =====
int __fastcall tt_cmap0_char_index(int a1, unsigned int a2)
{
  if ( a2 <= 0xFF )
    return *(unsigned __int8 *)(*(_DWORD *)(a1 + 16) + a2 + 6);
  else
    return 0;
}


// ===== 7207b8 tt_cmap0_char_next =====
int __fastcall tt_cmap0_char_next(int a1, int *a2)
{
  int v2; // r3
  int v3; // r2
  int result; // r0

  v2 = *a2;
  v3 = *(_DWORD *)(a1 + 16) + *a2;
  while ( (unsigned int)++v2 <= 0xFF )
  {
    result = *(unsigned __int8 *)(v3 + 7);
    ++v3;
    if ( result )
    {
      *a2 = v2;
      return result;
    }
  }
  *a2 = 0;
  return 0;
}


// ===== 7207f8 tt_cmap0_get_info =====
int __fastcall tt_cmap0_get_info(int a1, int *a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(a1 + 16);
  a2[1] = 0;
  *a2 = *(unsigned __int8 *)(v2 + 5) | (*(unsigned __int8 *)(v2 + 4) << 8);
  return 0;
}


// ===== 720818 tt_cmap2_char_index =====
int __fastcall tt_cmap2_char_index(int a1, unsigned int a2)
{
  int v2; // r3
  unsigned __int8 *v3; // r0
  int v4; // r5
  int v5; // r3
  unsigned __int8 *v6; // r1
  int v7; // r2
  unsigned __int8 *v8; // r2
  unsigned __int8 *v9; // r3
  signed __int8 v10; // r6
  int v11; // r7
  int v12; // r1
  int v13; // r4
  int v14; // r0
  unsigned int v15; // r1
  _BOOL4 v16; // r2
  bool v17; // zf
  __int16 v18; // r2
  unsigned __int8 *v19; // r1
  unsigned __int16 v20; // r3

  v2 = *(_DWORD *)(a1 + 16);
  if ( a2 >= 0x10000 )
    return 0;
  v3 = (unsigned __int8 *)(v2 + 518);
  v4 = (unsigned __int8)a2;
  v5 = v2 + 6;
  if ( a2 >> 8 )
  {
    v6 = (unsigned __int8 *)(v5 + 2 * (a2 >> 8));
    v7 = *v6;
    if ( v3 == &v3[v6[1] & 0xF8 | (v7 << 8)] )
      return 0;
    v3 += v6[1] & 0xF8 | (v7 << 8);
  }
  else if ( *(unsigned __int8 *)(v5 + 2 * (unsigned __int8)a2 + 1)
          | (*(unsigned __int8 *)(v5 + 2 * (unsigned __int8)a2) << 8) )
  {
    return 0;
  }
  if ( v3 )
  {
    v8 = v3 + 4;
    v9 = v3 + 6;
    v10 = v3[4];
    v11 = v3[1];
    v12 = *v3;
    v13 = v3[3];
    v14 = v3[7] | (v3[6] << 8);
    v15 = v4 - (v11 | (v12 << 8));
    v16 = v15 < (v13 | (*(v8 - 2) << 8)) && v14 != 0;
    v17 = !v16;
    v18 = *(v9 - 1);
    if ( !v17 )
    {
      v19 = &v9[2 * v15 + v14];
      v20 = _byteswap_ushort(*(_WORD *)v19);
      if ( v19[1] | (*v19 << 8) )
        return (unsigned __int16)(v20 + (v18 | (v10 << 8)));
    }
  }
  return 0;
}


// ===== 720910 tt_cmap2_char_next =====
int __fastcall tt_cmap2_char_next(int a1, unsigned int *a2)
{
  int v2; // r9
  unsigned int v3; // r3
  unsigned __int8 *v4; // r11
  int v5; // r9
  unsigned int v6; // r12
  unsigned __int8 *v7; // r2
  unsigned __int8 *v8; // r1
  int v9; // r7
  int v10; // r10
  int v11; // r8
  unsigned __int8 *v12; // r2
  __int16 v13; // t1
  int v14; // r0
  int v15; // r6
  int v16; // r1
  __int16 v17; // r4
  unsigned int v18; // r8
  bool v19; // cc
  unsigned int v20; // r6
  unsigned __int8 *v21; // r2
  int v22; // t1
  int v23; // r1
  int result; // r0

  v2 = *(_DWORD *)(a1 + 16);
  v3 = *a2 + 1;
  if ( v3 > 0xFFFF )
  {
LABEL_22:
    v3 = 0;
    result = 0;
    goto LABEL_27;
  }
  v4 = (unsigned __int8 *)(v2 + 518);
  v5 = v2 + 6;
  while ( 1 )
  {
    while ( 1 )
    {
      v6 = (unsigned __int8)v3;
      if ( !(v3 >> 8) )
        break;
      v7 = &v4[*(_BYTE *)(v5 + 2 * (v3 >> 8) + 1) & 0xF8 | (*(unsigned __int8 *)(v5 + 2 * (v3 >> 8)) << 8)];
      if ( v7 != v4 )
        goto LABEL_7;
      v3 = (v3 & 0xFFFFFF00) + 256;
      if ( v3 > 0xFFFF )
        goto LABEL_22;
    }
    if ( !(*(unsigned __int8 *)(v5 + 2 * (unsigned __int8)v3 + 1)
         | (*(unsigned __int8 *)(v5 + 2 * (unsigned __int8)v3) << 8)) )
      break;
LABEL_21:
    v3 = (v3 & 0xFFFFFF00) + 256;
    if ( v3 > 0xFFFF )
      goto LABEL_22;
  }
  v7 = v4;
LABEL_7:
  if ( !v7 )
    goto LABEL_21;
  v9 = v7[2];
  v10 = *v7;
  v11 = v7[1];
  v8 = v7 + 4;
  v13 = (char)v7[4];
  v12 = v8 + 2;
  v14 = v8[2];
  v15 = *(v8 - 1);
  v16 = v8[3] | (v14 << 8);
  v17 = *(v12 - 1) | (unsigned __int16)(v13 << 8);
  if ( !(v12[1] | (v14 << 8)) )
    goto LABEL_21;
  v18 = v11 | (v10 << 8);
  v19 = v18 > (unsigned __int8)v3;
  if ( v18 <= (unsigned __int8)v3 )
  {
    v18 = (unsigned __int8)v3 - v18;
  }
  else
  {
    v14 = 0;
    v6 = v18;
  }
  if ( v19 )
    v18 = v14;
  v20 = v15 | (v9 << 8);
  if ( !v19 )
    v14 = 2 * v18;
  v3 = v6 + (v3 & 0xFFFFFF00);
  if ( v18 >= v20 )
    goto LABEL_21;
  v21 = &v12[v14 + v16];
  while ( 1 )
  {
    v22 = *v21;
    v21 += 2;
    ++v18;
    v23 = (unsigned __int16)(v17 + (*(v21 - 1) | (unsigned __int16)((_WORD)v22 << 8)));
    if ( *(v21 - 1) | (v22 << 8) )
    {
      if ( v23 )
        break;
    }
    ++v3;
    if ( v20 <= v18 )
      goto LABEL_21;
  }
  result = v23;
LABEL_27:
  *a2 = v3;
  return result;
}


// ===== 720a7c tt_cmap2_get_info =====
int __fastcall tt_cmap2_get_info(int a1, int *a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(a1 + 16);
  a2[1] = 2;
  *a2 = *(unsigned __int8 *)(v2 + 5) | (*(unsigned __int8 *)(v2 + 4) << 8);
  return 0;
}


// ===== 720aa0 tt_cmap4_init =====
int __fastcall tt_cmap4_init(_DWORD *a1, int a2)
{
  unsigned int v4; // r2

  a1[4] = a2;
  v4 = *(unsigned __int8 *)(a2 + 7) | (*(unsigned __int8 *)(a2 + 6) << 8);
  a1[6] = -1;
  a1[8] = v4 >> 1;
  a1[7] = 0;
  return 0;
}


// ===== 720ad0 tt_cmap4_set_range =====
int __fastcall tt_cmap4_set_range(_DWORD *a1, unsigned int a2)
{
  unsigned int v2; // r3
  int v3; // r6
  int v4; // r12
  int v5; // r2
  char *v6; // r4
  unsigned __int8 *v7; // r5
  unsigned __int8 *v8; // r12
  unsigned __int8 *v9; // r2
  int v10; // r7
  int v11; // r6
  int v12; // r7
  int v13; // r6
  int v14; // r7
  int v15; // r6
  int v16; // r6

  v2 = a1[8];
  v3 = a1[4];
  if ( v2 <= a2 )
    return -1;
  v4 = 2 * (v2 + 1);
  v5 = 2 * (a2 + 7);
  v6 = (char *)(v3 + v5 + v4 + 2 * v2);
  v7 = (unsigned __int8 *)(v3 + v4 + 4 * v2 + v5);
  v8 = (unsigned __int8 *)(v3 + v4 + v5);
  v9 = (unsigned __int8 *)(v3 + v5);
  while ( 1 )
  {
    v10 = *v9;
    v11 = v9[1];
    v9 += 2;
    a1[11] = v11 | (v10 << 8);
    v12 = *v8;
    v13 = v8[1];
    v8 += 2;
    a1[10] = v13 | (v12 << 8);
    v14 = *v6;
    v15 = (unsigned __int8)v6[1];
    v6 += 2;
    a1[12] = v15 | (v14 << 8);
    v16 = v7[1] | (*v7 << 8);
    if ( v16 != 0xFFFF )
      break;
    ++a2;
    v7 += 2;
    if ( v2 <= a2 )
      return -1;
  }
  if ( v16 )
    v16 += (int)v7;
  a1[9] = a2;
  a1[13] = v16;
  return 0;
}


// ===== 720ba4 tt_cmap4_next =====
unsigned int __fastcall tt_cmap4_next(unsigned int result)
{
  unsigned int v1; // r4
  _DWORD *v2; // r5
  unsigned int v3; // r2
  unsigned int v4; // r4
  int v5; // r1
  int v6; // r12
  unsigned __int8 *v7; // r3
  int v8; // t1
  int v9; // r2
  unsigned __int16 v10; // r12
  int v11; // r3

  v1 = *(_DWORD *)(result + 24);
  v2 = (_DWORD *)result;
  if ( v1 > 0xFFFE )
  {
LABEL_14:
    v2[7] = 0;
    v2[6] = -1;
    return result;
  }
  v3 = *(_DWORD *)(result + 40);
  v4 = v1 + 1;
  if ( v4 < v3 )
    v4 = *(_DWORD *)(result + 40);
  while ( 1 )
  {
    result = v2[11];
    v5 = v2[13];
    v6 = v2[12];
    if ( v4 > result )
      goto LABEL_10;
    if ( v5 )
      break;
    v10 = v4 + v6;
    v11 = v10;
    if ( v10 )
    {
LABEL_18:
      v2[7] = v11;
      v2[6] = v4;
      return result;
    }
    while ( 1 )
    {
      ++v4;
      ++v10;
      if ( result < v4 )
        break;
      v11 = v10;
      if ( v10 )
        goto LABEL_18;
    }
LABEL_10:
    result = tt_cmap4_set_range(v2, v2[9] + 1);
    if ( (result & 0x80000000) != 0 )
      goto LABEL_14;
    v3 = v2[10];
    if ( v4 < v3 )
      v4 = v2[10];
  }
  v7 = (unsigned __int8 *)(v5 + 2 * (v4 - v3));
  while ( 1 )
  {
    v8 = *v7;
    v7 += 2;
    v9 = (unsigned __int16)((*(v7 - 1) | (unsigned __int16)((_WORD)v8 << 8)) + v6);
    if ( *(v7 - 1) | (v8 << 8) )
    {
      if ( v9 )
        break;
    }
    if ( result < ++v4 )
      goto LABEL_10;
  }
  v2[7] = v9;
  v2[6] = v4;
  return result;
}


// ===== 720c9c tt_cmap4_char_map_linear =====
int __fastcall tt_cmap4_char_map_linear(int a1, unsigned int *a2, int a3)
{
  unsigned __int8 *v3; // r0
  unsigned int v4; // r2
  unsigned int v5; // r3
  int result; // r0
  unsigned int v7; // r9
  int v8; // r7
  __int16 v9; // r8
  unsigned __int8 *v10; // r0
  char v11; // r2
  unsigned __int8 *v12; // r2
  char *v13; // r5
  unsigned __int8 *v14; // r1
  unsigned __int8 *v15; // r6
  int v16; // r4
  int v17; // r10
  int v18; // t1
  unsigned int v19; // r12
  unsigned int v20; // r6
  _BOOL4 v21; // r7
  unsigned __int16 v22; // r8
  int v23; // r2
  unsigned __int8 *v24; // [sp+4h] [bp-1Ch]
  unsigned __int8 *v25; // [sp+8h] [bp-18h]
  bool v26; // [sp+Ch] [bp-14h]
  unsigned __int8 *v27; // [sp+10h] [bp-10h]
  unsigned __int8 *v28; // [sp+14h] [bp-Ch]

  v3 = *(unsigned __int8 **)(a1 + 16);
  v4 = v3[7] & 0xFE | (v3[6] << 8);
  v5 = *a2;
  if ( !(v4 >> 1) )
    return 0;
  if ( a3 )
    ++v5;
  if ( v5 > 0xFFFF )
    return 0;
  v24 = &v3[v4 + 16];
  v26 = a3 == 0;
  v25 = v3 + 14;
  v28 = &v24[2 * v4];
  result = 0;
  v27 = &v24[v4];
  v7 = v4 >> 1;
  while ( 2 )
  {
    v12 = v28;
    v13 = (char *)v27;
    v14 = v24;
    v15 = v25;
    v16 = 0;
    v17 = result;
    while ( 1 )
    {
      v18 = *v14;
      v14 += 2;
      v10 = v15 + 2;
      ++v16;
      v19 = v15[1] | (*v15 << 8);
      v20 = *(v14 - 1) | (v18 << 8);
      v21 = v5 <= v19;
      if ( v5 < v20 )
        v21 = 0;
      if ( v21 )
      {
        v8 = v12[1] | (*v12 << 8);
        v9 = (unsigned __int8)v13[1] | (unsigned __int16)(*v13 << 8);
        v10 = v12;
        if ( v8 != 0xFFFF )
          break;
      }
      v12 += 2;
      v13 += 2;
      if ( v16 == v7 )
      {
        result = v17;
        v11 = v17;
        if ( v17 )
          v11 = 1;
        goto LABEL_12;
      }
      v15 = v10;
    }
    if ( v8 )
    {
      result = v12[2 * (v5 - v20) + 1 + v8] | (v12[2 * (v5 - v20) + v8] << 8);
      if ( result )
      {
        result = (unsigned __int16)(_byteswap_ushort(*(_WORD *)&v12[2 * (v5 - v20) + v8]) + v9);
        v11 = result;
        if ( result )
          v11 = 1;
      }
      else
      {
        v11 = 0;
      }
LABEL_12:
      if ( (unsigned __int8)v11 | v26 )
        goto LABEL_23;
LABEL_13:
      if ( ++v5 == 0x10000 )
        return result;
      continue;
    }
    break;
  }
  v22 = v9 + v5;
  result = v22;
  v11 = v22;
  if ( v22 )
    v11 = 1;
  if ( !((unsigned __int8)v11 | v26) )
    goto LABEL_13;
LABEL_23:
  if ( a3 )
    v23 = v11 & 1;
  else
    v23 = 0;
  if ( v23 )
    *a2 = v5;
  return result;
}


// ===== 720e6c tt_cmap4_char_map_binary =====
int __fastcall tt_cmap4_char_map_binary(_DWORD *a1, unsigned int *a2, int a3)
{
  int v3; // r3
  unsigned int v4; // r4
  unsigned int v5; // r6
  int v6; // r5
  unsigned int v7; // r1
  unsigned int v8; // r8
  unsigned int v9; // r1
  unsigned int v10; // r0
  unsigned int v11; // r7
  unsigned int v12; // r2
  unsigned __int8 *v13; // r12
  unsigned __int8 *v14; // r8
  unsigned int v15; // r5
  int v17; // r12
  unsigned __int8 *v18; // r10
  unsigned int v19; // r11
  int v20; // r9
  unsigned int v21; // r7
  unsigned __int8 *v22; // r8
  unsigned int v23; // r4
  __int16 v24; // r11
  int v25; // r12
  __int16 v26; // r2
  __int16 v27; // r11
  unsigned __int8 *v28; // r12
  unsigned __int8 *v29; // r2
  unsigned __int8 *v30; // r7
  int v31; // r12
  int v32; // r5
  unsigned __int8 *v33; // r12
  unsigned __int8 *v34; // r5
  int v35; // r8
  int v36; // r0
  unsigned int v37; // r2
  unsigned __int8 *v38; // r3
  __int16 v39; // r11
  __int16 v40; // r11
  __int16 v41; // [sp+8h] [bp-34h]
  unsigned int v43; // [sp+10h] [bp-2Ch]
  int v44; // [sp+14h] [bp-28h]
  int v45; // [sp+14h] [bp-28h]
  unsigned int v46; // [sp+14h] [bp-28h]
  unsigned int v49; // [sp+20h] [bp-1Ch]
  int v50; // [sp+20h] [bp-1Ch]
  unsigned int v51; // [sp+24h] [bp-18h]
  int v52; // [sp+24h] [bp-18h]
  unsigned int v53; // [sp+28h] [bp-14h]
  unsigned int v54; // [sp+2Ch] [bp-10h]
  unsigned int v55; // [sp+34h] [bp-8h]

  v3 = a1[4];
  v4 = *a2;
  v5 = *(_BYTE *)(v3 + 7) & 0xFE | (*(unsigned __int8 *)(v3 + 6) << 8);
  if ( !v5 )
    return 0;
  v43 = v5 >> 1;
  if ( a3 )
    ++v4;
  if ( !(v5 >> 1) )
  {
    v6 = 0;
    v7 = 0;
    v8 = 0xFFFF;
    goto LABEL_13;
  }
  v9 = v5 >> 1;
  v10 = v5 + 2;
  v11 = 0;
  while ( 1 )
  {
    v12 = (v9 + v11) >> 1;
    v13 = (unsigned __int8 *)(v3 + 2 * (v12 + 7));
    v14 = &v13[v10];
    v15 = v13[1] | (*v13 << 8);
    if ( v4 >= (v13[v10 + 1] | (v13[v10] << 8)) )
      break;
    v9 = (v9 + v11) >> 1;
LABEL_11:
    if ( v9 <= v11 )
      goto LABEL_12;
  }
  if ( v4 > v15 )
  {
    v11 = v12 + 1;
    goto LABEL_11;
  }
  v17 = v13[v10 + 1] | (v13[v10] << 8);
  v18 = &v14[v5 + v5];
  v19 = v14[2 * v5];
  v41 = v14[v5 + 1] | (unsigned __int16)((char)v14[v5] << 8);
  v20 = v18[1] | (v19 << 8);
  v53 = (v9 + v11) >> 1;
  if ( (a1[5] & 2) != 0 )
  {
    v7 = 0xFFFF;
    if ( v20 == 0xFFFF )
      v7 = v12 + 1;
    else
      v19 = v12 + 1;
    if ( v20 == 0xFFFF )
    {
      v54 = v7;
    }
    else
    {
      v54 = v19;
      v7 = v12;
    }
    if ( v12 )
    {
      v22 = (unsigned __int8 *)(v3 + 2 * (v12 + 6));
      v49 = v22[1] | (*v22 << 8);
      if ( v4 <= v49 )
      {
        v21 = v12 - 1;
        v55 = v12;
        v51 = v4;
        while ( 1 )
        {
          v18 = &v22[v10 + v5 + v5];
          v20 = v18[1] | (v22[2 * v5 + v10] << 8);
          v23 = v21 + 6;
          v44 = v22[v10 + 1];
          v24 = v22[v10 + 1 + v5];
          v25 = v22[v10];
          v26 = (char)v22[v10 + v5];
          if ( v20 != 0xFFFF )
            v7 = v21;
          v22 = (unsigned __int8 *)(v3 + 2 * v23);
          v45 = v44 | (v25 << 8);
          v27 = v24 | (v26 << 8);
          if ( !v21 )
          {
            v12 = v55;
            v4 = v51;
            v17 = v45;
            v8 = v49;
            v41 = v27;
            goto LABEL_43;
          }
          if ( v51 > (v22[1] | (*(unsigned __int8 *)(v3 + 2 * v23) << 8)) )
            break;
          --v21;
          v49 = v22[1] | (*(unsigned __int8 *)(v3 + 2 * v23) << 8);
        }
        v4 = v51;
        v12 = v55;
        v41 = v27;
        v17 = v45;
        v8 = v49;
      }
      else
      {
        v8 = v15;
        v21 = v12;
      }
    }
    else
    {
      v8 = v15;
      v21 = 0;
    }
LABEL_43:
    if ( v7 != v54 )
    {
LABEL_44:
      if ( v7 != v21 )
      {
        v28 = (unsigned __int8 *)(v3 + 2 * (v7 + 7));
        v29 = &v28[v10];
        v30 = &v28[v10 + v5];
        v18 = &v30[v5];
        v8 = v28[1] | (*v28 << 8);
        v17 = v28[v10 + 1] | (v28[v10] << 8);
        v41 = v30[1] | (unsigned __int16)((char)v29[v5] << 8);
        v20 = v30[v5 + 1] | (v29[2 * v5] << 8);
      }
      goto LABEL_48;
    }
    if ( v21 != v12 )
      v8 = v15;
    if ( v43 <= v7
      || (v31 = v3 + 2 * (v7 + 7),
          v18 = (unsigned __int8 *)(v31 + v10),
          v46 = *(unsigned __int8 *)(v31 + v10 + 1) | (*(unsigned __int8 *)(v31 + v10) << 8),
          v4 < v46) )
    {
      --v7;
      v6 = 0;
    }
    else
    {
      v32 = 2 * (v7 + 8);
      v50 = *(unsigned __int8 *)(v31 + 1) | (*(unsigned __int8 *)(v3 + 2 * (v7 + 7)) << 8);
      v21 = v7;
      v33 = (unsigned __int8 *)(v3 + v10 + v32);
      v34 = (unsigned __int8 *)(v3 + v32);
      v7 = v12;
      v52 = v3;
      while ( 1 )
      {
        v38 = &v18[v5];
        v39 = (char)v18[v5];
        v18 += v5 + v5;
        v20 = v38[v5 + 1] | (v38[v5] << 8);
        if ( v20 != 0xFFFF )
          v7 = v21;
        v40 = v38[1] | (unsigned __int16)(v39 << 8);
        if ( v43 <= v21 + 1 )
          break;
        v35 = *v34;
        v36 = v34[1];
        v37 = v33[1] | (*v33 << 8);
        v18 = v33;
        v34 += 2;
        v33 += 2;
        if ( v4 < v37 )
          break;
        v50 = v36 | (v35 << 8);
        v46 = v37;
        ++v21;
      }
      v10 = v5 + 2;
      v3 = v52;
      v41 = v40;
      v8 = v50;
      v17 = v46;
      if ( v7 != v53 )
        goto LABEL_44;
      v7 = v21;
      v6 = 0;
    }
  }
  else
  {
    if ( v20 == 0xFFFF )
    {
LABEL_12:
      v8 = v15;
      v7 = v12;
      v6 = 0;
      goto LABEL_13;
    }
    v7 = (v9 + v11) >> 1;
    v8 = v15;
LABEL_48:
    if ( v20 )
    {
      v6 = v18[2 * (v4 - v17) + 1 + v20] | (v18[2 * (v4 - v17) + v20] << 8);
      if ( v6 )
        v6 = (unsigned __int16)(_byteswap_ushort(*(_WORD *)&v18[2 * (v4 - v17) + v20]) + v41);
    }
    else
    {
      v6 = (unsigned __int16)(v41 + v4);
    }
  }
LABEL_13:
  if ( !a3 )
    return v6;
  if ( v8 < v4 && ++v7 == v43 )
    return 0;
  if ( !tt_cmap4_set_range(a1, v7) )
  {
    a1[6] = v4;
    if ( v6 )
    {
      a1[7] = v6;
    }
    else
    {
      tt_cmap4_next((unsigned int)a1);
      v6 = a1[7];
      if ( !v6 )
        return v6;
      v4 = a1[6];
    }
    *a2 = v4;
    return v6;
  }
  if ( v6 )
    *a2 = v4;
  return v6;
}


// ===== 721300 tt_cmap4_char_index =====
int __fastcall tt_cmap4_char_index(_DWORD *a1, unsigned int a2)
{
  unsigned int v3[2]; // [sp+4h] [bp-8h] BYREF

  v3[0] = a2;
  if ( a2 >= 0x10000 )
    return 0;
  if ( (a1[5] & 1) != 0 )
    return tt_cmap4_char_map_linear((int)a1, v3, 0);
  return tt_cmap4_char_map_binary(a1, v3, 0);
}


// ===== 721348 tt_cmap4_char_next =====
int __fastcall tt_cmap4_char_next(_DWORD *a1, unsigned int *a2)
{
  int result; // r0

  if ( *a2 > 0xFFFE )
    return 0;
  if ( (a1[5] & 1) != 0 )
    return tt_cmap4_char_map_linear((int)a1, a2, 1);
  if ( *a2 != a1[6] )
    return tt_cmap4_char_map_binary(a1, a2, 1);
  tt_cmap4_next((unsigned int)a1);
  result = a1[7];
  if ( result )
    *a2 = a1[6];
  return result;
}


// ===== 7213bc tt_cmap4_get_info =====
int __fastcall tt_cmap4_get_info(int a1, int *a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(a1 + 16);
  a2[1] = 4;
  *a2 = *(unsigned __int8 *)(v2 + 5) | (*(unsigned __int8 *)(v2 + 4) << 8);
  return 0;
}


// ===== 7213e0 tt_cmap6_char_index =====
int __fastcall tt_cmap6_char_index(int a1, int a2)
{
  int v2; // r3
  int v3; // r2
  int v4; // r12
  int v5; // r3
  unsigned int v6; // r1
  unsigned int v7; // r2
  int result; // r0

  v2 = *(_DWORD *)(a1 + 16);
  v3 = v2 + 8;
  v4 = *(unsigned __int8 *)(v2 + 7);
  v5 = v2 + 10;
  v6 = a2 - (v4 | (*(unsigned __int8 *)(v3 - 2) << 8));
  v7 = *(unsigned __int8 *)(v5 - 1) | (*(unsigned __int8 *)(v5 - 2) << 8);
  if ( v7 <= v6 )
  {
    result = 0;
  }
  else
  {
    result = *(unsigned __int8 *)(v5 + 2 * v6);
    v5 = *(unsigned __int8 *)(v5 + 2 * v6 + 1);
  }
  if ( v7 > v6 )
    return v5 | (result << 8);
  return result;
}


// ===== 72142c tt_cmap6_char_next =====
int __fastcall tt_cmap6_char_next(int a1, unsigned int *a2)
{
  int v2; // r2
  unsigned int v3; // r3
  int v4; // r0
  int v5; // r2
  unsigned int v6; // r6
  unsigned int v7; // r5
  unsigned int v8; // r6
  unsigned __int8 *v9; // r2
  int result; // r0
  unsigned int v11; // r12
  unsigned int v12; // r12
  int v13; // r4
  int v14; // r0

  v2 = *(_DWORD *)(a1 + 16);
  v3 = *a2 + 1;
  v4 = v2 + 10;
  v5 = v2 + 8;
  if ( v3 >= 0x10000 )
    goto LABEL_10;
  v6 = *(unsigned __int8 *)(v5 - 1) | (*(unsigned __int8 *)(v5 - 2) << 8);
  if ( v6 >= v3 )
    v3 = *(unsigned __int8 *)(v5 - 1) | (*(unsigned __int8 *)(v5 - 2) << 8);
  v7 = *(unsigned __int8 *)(v4 - 1) | (*(unsigned __int8 *)(v4 - 2) << 8);
  v8 = v3 - v6;
  if ( v7 <= v8 )
  {
LABEL_10:
    result = 0;
    v11 = 0;
    goto LABEL_11;
  }
  v9 = (unsigned __int8 *)(v4 + 2 * v8);
  result = v9[1] | (*v9 << 8);
  if ( !result )
  {
    v12 = v8;
    while ( v7 > ++v12 )
    {
      v13 = v9[2];
      v14 = v9[3];
      v9 += 2;
      result = v14 | (v13 << 8);
      if ( result )
      {
        v11 = v3 - v8 + v12;
        goto LABEL_11;
      }
    }
    goto LABEL_10;
  }
  v11 = v3;
LABEL_11:
  *a2 = v11;
  return result;
}


// ===== 7214d8 tt_cmap6_get_info =====
int __fastcall tt_cmap6_get_info(int a1, int *a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(a1 + 16);
  a2[1] = 6;
  *a2 = *(unsigned __int8 *)(v2 + 5) | (*(unsigned __int8 *)(v2 + 4) << 8);
  return 0;
}


// ===== 7214fc tt_cmap8_char_index =====
unsigned int __fastcall tt_cmap8_char_index(int a1, unsigned int a2)
{
  unsigned int v2; // r2
  int v3; // r3
  unsigned int v4; // r12
  unsigned int v5; // r0
  unsigned int v6; // r7

  v2 = _byteswap_ulong(*(_DWORD *)(*(_DWORD *)(a1 + 16) + 8204));
  if ( v2 )
  {
    v3 = *(_DWORD *)(a1 + 16) + 8220;
    do
    {
      v5 = _byteswap_ulong(*(_DWORD *)(v3 - 12));
      v6 = _byteswap_ulong(*(_DWORD *)(v3 - 8));
      if ( v5 > a2 )
        break;
      v4 = _byteswap_ulong(*(_DWORD *)(v3 - 4));
      if ( v6 >= a2 )
        return v4 + a2 - v5;
      --v2;
      v3 += 12;
    }
    while ( v2 );
  }
  return 0;
}


// ===== 7215cc tt_cmap8_char_next =====
unsigned int __fastcall tt_cmap8_char_next(int a1, unsigned int *a2)
{
  unsigned int v2; // r12
  unsigned int v3; // r2
  int v4; // r3
  int v5; // r10
  int v6; // r7
  unsigned int v7; // r0
  unsigned int v8; // r4
  unsigned int v9; // r0
  unsigned int result; // r0

  v2 = _byteswap_ulong(*(_DWORD *)(*(_DWORD *)(a1 + 16) + 8204));
  if ( v2 )
  {
    v3 = *a2 + 1;
    v4 = *(_DWORD *)(a1 + 16) + 8220;
    while ( 1 )
    {
      v5 = *(unsigned __int8 *)(v4 - 9);
      v6 = *(unsigned __int8 *)(v4 - 10);
      v7 = (*(unsigned __int8 *)(v4 - 11) << 16) | (*(unsigned __int8 *)(v4 - 12) << 24) | v5 | (v6 << 8);
      v8 = _byteswap_ulong(*(_DWORD *)(v4 - 8));
      if ( v3 < v7 )
        v3 = (*(unsigned __int8 *)(v4 - 11) << 16) | (*(unsigned __int8 *)(v4 - 12) << 24) | v5 | (v6 << 8);
      v9 = _byteswap_ulong(*(_DWORD *)(v4 - 4)) - v7;
      if ( v3 <= v8 )
      {
        result = v9 + v3;
        if ( result )
          break;
      }
      --v2;
      v4 += 12;
      if ( !v2 )
        goto LABEL_8;
    }
  }
  else
  {
LABEL_8:
    result = 0;
    v3 = 0;
  }
  *a2 = v3;
  return result;
}


// ===== 7216a8 tt_cmap8_get_info =====
int __fastcall tt_cmap8_get_info(int a1, _DWORD *a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(a1 + 16);
  a2[1] = 8;
  *a2 = _byteswap_ulong(*(_DWORD *)(v2 + 8));
  return 0;
}


// ===== 7216e0 tt_cmap10_char_index =====
int __fastcall tt_cmap10_char_index(int a1, int a2)
{
  int v2; // r3
  int v3; // r2
  int v4; // r12
  int v5; // r3
  int v6; // r12
  unsigned int v7; // r2
  unsigned int v8; // r1
  int result; // r0

  v2 = *(_DWORD *)(a1 + 16);
  v3 = v2 + 16;
  v4 = *(unsigned __int8 *)(v2 + 13);
  v5 = v2 + 20;
  v6 = (v4 << 16)
     | (*(unsigned __int8 *)(v3 - 4) << 24)
     | *(unsigned __int8 *)(v3 - 1)
     | (*(unsigned __int8 *)(v3 - 2) << 8);
  v7 = _byteswap_ulong(*(_DWORD *)(v5 - 4));
  v8 = a2 - v6;
  if ( v7 <= v8 )
  {
    result = 0;
  }
  else
  {
    result = *(unsigned __int8 *)(v5 + 2 * v8);
    v5 = *(unsigned __int8 *)(v5 + 2 * v8 + 1);
  }
  if ( v7 > v8 )
    return v5 | (result << 8);
  return result;
}


// ===== 721754 tt_cmap10_char_next =====
int __fastcall tt_cmap10_char_next(int a1, unsigned int *a2)
{
  unsigned __int8 *v2; // r3
  unsigned __int8 *v3; // r0
  int v4; // r7
  int v5; // r6
  int v6; // r12
  int v7; // r2
  int v8; // r5
  int v9; // r3
  unsigned int v10; // r2
  int v11; // r5
  unsigned int v12; // r4
  unsigned int v13; // r5
  unsigned int v14; // r2
  int result; // r0
  unsigned __int8 *v16; // r3
  int v17; // r6
  int v18; // r12
  int v19; // r0

  v2 = *(unsigned __int8 **)(a1 + 16);
  v3 = v2 + 20;
  v4 = v2[14];
  v5 = v2[16];
  v6 = v2[19];
  v7 = (v2[13] << 16) | (v2[12] << 24) | v2[15];
  v8 = v2[17] << 16;
  v9 = v2[18];
  v10 = v7 | (v4 << 8);
  v11 = v8 | (v5 << 24);
  v12 = *a2 + 1;
  if ( v10 >= v12 )
    v12 = v10;
  v13 = v11 | v6 | (v9 << 8);
  v14 = v12 - v10;
  if ( v13 > v14 )
  {
    v16 = &v3[2 * v14];
    v17 = v16[1] | (*v16 << 8);
    if ( !v17 )
    {
      while ( 1 )
      {
        ++v14;
        ++v12;
        if ( v13 <= v14 )
          break;
        v18 = v16[2];
        v19 = v16[3];
        v16 += 2;
        result = v19 | (v18 << 8);
        if ( result )
          goto LABEL_10;
      }
    }
    result = v17;
  }
  else
  {
    result = 0;
  }
LABEL_10:
  *a2 = v12;
  return result;
}


// ===== 721810 tt_cmap10_get_info =====
int __fastcall tt_cmap10_get_info(int a1, _DWORD *a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(a1 + 16);
  a2[1] = 10;
  *a2 = _byteswap_ulong(*(_DWORD *)(v2 + 8));
  return 0;
}


// ===== 721848 tt_cmap12_init =====
int __fastcall tt_cmap12_init(int a1, int a2)
{
  *(_DWORD *)(a1 + 16) = a2;
  *(_DWORD *)(a1 + 40) = _byteswap_ulong(*(_DWORD *)(a2 + 12));
  *(_BYTE *)(a1 + 24) = 0;
  return 0;
}


// ===== 721888 tt_cmap12_next =====
int __fastcall tt_cmap12_next(int result)
{
  int v1; // r2
  unsigned int v2; // r1
  unsigned int v3; // r7
  unsigned int v4; // r2
  unsigned int *v5; // r3
  unsigned int v6; // r4
  unsigned int v7; // r12
  unsigned int v8; // r12
  int v9; // r12

  v1 = *(_DWORD *)(result + 28);
  if ( v1 == -1 || (v2 = *(_DWORD *)(result + 36), v3 = *(_DWORD *)(result + 40), v2 >= v3) )
  {
LABEL_12:
    *(_BYTE *)(result + 24) = 0;
  }
  else
  {
    v4 = v1 + 1;
    v5 = (unsigned int *)(*(_DWORD *)(result + 16) + 12 * v2);
    while ( 1 )
    {
      v6 = _byteswap_ulong(v5[5]);
      v7 = _byteswap_ulong(v5[4]);
      if ( v4 < v7 )
        v4 = v7;
      v8 = _byteswap_ulong(v5[6]) - v7;
      if ( v6 >= v4 )
      {
        v9 = v4 + v8;
        if ( v9 )
          goto LABEL_10;
        if ( v6 >= ++v4 )
          break;
      }
      ++v2;
      v5 += 3;
      if ( v2 >= v3 )
        goto LABEL_12;
    }
    v9 = 1;
LABEL_10:
    *(_DWORD *)(result + 36) = v2;
    *(_DWORD *)(result + 28) = v4;
    *(_DWORD *)(result + 32) = v9;
  }
  return result;
}


// ===== 721974 tt_cmap12_char_map_binary =====
unsigned int __fastcall tt_cmap12_char_map_binary(int a1, unsigned int *a2, int a3)
{
  int v3; // r3
  unsigned int v4; // r9
  unsigned int v5; // r0
  unsigned int v6; // r4
  unsigned int v7; // r12
  int v8; // r6
  unsigned int *v9; // r2
  unsigned int v10; // r7
  unsigned int v11; // r6
  unsigned int v12; // r7
  unsigned int v17; // [sp+Ch] [bp-8h]

  v3 = *(_DWORD *)(a1 + 16);
  v17 = _byteswap_ulong(*(_DWORD *)(v3 + 12));
  v4 = *a2;
  if ( !v17 )
    return 0;
  v5 = v17;
  v6 = 0;
  if ( a3 )
    ++v4;
  while ( 1 )
  {
    v7 = (v5 + v6) >> 1;
    v8 = 12 * v7 + 16;
    v9 = (unsigned int *)(v3 + v8 + 8);
    v10 = _byteswap_ulong(*(_DWORD *)(v3 + v8));
    v11 = _byteswap_ulong(*(_DWORD *)(v3 + v8 + 4));
    if ( v4 >= v10 )
      break;
    v5 = (v5 + v6) >> 1;
LABEL_8:
    if ( v5 <= v6 )
    {
      v12 = 0;
      goto LABEL_10;
    }
  }
  if ( v4 > v11 )
  {
    v6 = v7 + 1;
    goto LABEL_8;
  }
  v12 = v4 - v10 + _byteswap_ulong(*v9);
LABEL_10:
  if ( !a3 )
    return v12;
  if ( v4 > v11 && ++v7 == v17 )
    return 0;
  *(_BYTE *)(a1 + 24) = 1;
  *(_DWORD *)(a1 + 36) = v7;
  *(_DWORD *)(a1 + 28) = v4;
  if ( v12 )
  {
    *(_DWORD *)(a1 + 32) = v12;
    goto LABEL_15;
  }
  tt_cmap12_next(a1);
  if ( *(_BYTE *)(a1 + 24) )
  {
    v12 = *(_DWORD *)(a1 + 32);
    if ( v12 )
    {
      v4 = *(_DWORD *)(a1 + 28);
LABEL_15:
      *a2 = v4;
    }
  }
  return v12;
}


// ===== 721b08 tt_cmap12_char_index =====
unsigned int __fastcall tt_cmap12_char_index(int a1, unsigned int a2)
{
  unsigned int v3; // [sp+4h] [bp-8h] BYREF

  v3 = a2;
  return tt_cmap12_char_map_binary(a1, &v3, 0);
}


// ===== 721b2c tt_cmap12_char_next =====
unsigned int __fastcall tt_cmap12_char_next(int a1, unsigned int *a2)
{
  int v2; // r3
  unsigned int result; // r0

  v2 = *(_DWORD *)(a1 + 28);
  if ( v2 == -1 )
    return 0;
  if ( !*(_BYTE *)(a1 + 24) || v2 != *a2 )
    return tt_cmap12_char_map_binary(a1, a2, 1);
  tt_cmap12_next(a1);
  result = *(unsigned __int8 *)(a1 + 24);
  if ( *(_BYTE *)(a1 + 24) )
  {
    result = *(_DWORD *)(a1 + 32);
    if ( result )
      *a2 = *(_DWORD *)(a1 + 28);
  }
  return result;
}


// ===== 721ba4 tt_cmap12_get_info =====
int __fastcall tt_cmap12_get_info(int a1, _DWORD *a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(a1 + 16);
  a2[1] = 12;
  *a2 = _byteswap_ulong(*(_DWORD *)(v2 + 8));
  return 0;
}


// ===== 721bdc tt_cmap14_init =====
int __fastcall tt_cmap14_init(_DWORD *a1, int a2)
{
  a1[4] = a2;
  a1[6] = _byteswap_ulong(*(_DWORD *)(a2 + 6));
  a1[8] = 0;
  a1[7] = 0;
  return 0;
}


// ===== 721c20 tt_cmap14_char_index =====
int tt_cmap14_char_index()
{
  return 0;
}


// ===== 721c28 tt_cmap14_char_next =====
int __fastcall tt_cmap14_char_next(int a1, _DWORD *a2)
{
  *a2 = 0;
  return 0;
}


// ===== 721c34 tt_cmap14_get_info =====
int __fastcall tt_cmap14_get_info(int a1, _DWORD *a2)
{
  *a2 = -1;
  a2[1] = 14;
  return 0;
}


// ===== 721c4c tt_cmap14_char_map_def_binary =====
int __fastcall tt_cmap14_char_map_def_binary(unsigned int *a1, unsigned int a2)
{
  unsigned int v2; // r3
  unsigned int v3; // r5
  unsigned int *v4; // r0
  unsigned int v5; // r2
  unsigned __int8 *v6; // r4
  int v7; // r8
  unsigned int v8; // r12
  bool v9; // cf
  unsigned __int8 *v10; // r12

  v2 = _byteswap_ulong(*a1);
  v3 = 0;
  v4 = a1 + 1;
  if ( v2 )
  {
    while ( 1 )
    {
      v5 = (v2 + v3) >> 1;
      v6 = (unsigned __int8 *)&v4[v5];
      v7 = v6[3];
      v8 = v6[2] | (*v6 << 16) | (v6[1] << 8);
      if ( a2 < v8 )
        break;
LABEL_5:
      if ( a2 <= v7 + v8 )
        return 1;
      v3 = v5 + 1;
      if ( v5 + 1 >= v2 )
        return 0;
    }
    while ( 1 )
    {
      v9 = v3 >= v5;
      v2 = v5;
      v5 = (v5 + v3) >> 1;
      if ( v9 )
        break;
      v10 = (unsigned __int8 *)&v4[v5];
      v7 = v10[3];
      v8 = v10[2] | (*v10 << 16) | (v10[1] << 8);
      if ( v8 <= a2 )
        goto LABEL_5;
    }
  }
  return 0;
}


// ===== 721d14 tt_cmap14_char_map_nondef_binary =====
int __fastcall tt_cmap14_char_map_nondef_binary(unsigned int *a1, unsigned int a2)
{
  unsigned int v2; // r3
  unsigned int v3; // r5
  unsigned int *v4; // r0
  unsigned int v5; // r2
  unsigned __int8 *v6; // r12
  unsigned int v7; // r4
  bool v8; // cf

  v2 = _byteswap_ulong(*a1);
  v3 = 0;
  v4 = a1 + 1;
  if ( v2 )
  {
    while ( 1 )
    {
      v5 = (v2 + v3) >> 1;
      v6 = (unsigned __int8 *)v4 + 5 * v5 + 3;
      v7 = *((unsigned __int8 *)v4 + 5 * v5 + 2)
         | (*((unsigned __int8 *)v4 + 5 * v5) << 16)
         | (*((unsigned __int8 *)v4 + 5 * v5 + 1) << 8);
      if ( a2 < v7 )
        break;
LABEL_5:
      if ( a2 <= v7 )
        return v6[1] | (*v6 << 8);
      v3 = v5 + 1;
      if ( v5 + 1 >= v2 )
        return 0;
    }
    while ( 1 )
    {
      v8 = v3 >= v5;
      v2 = v5;
      v5 = (v5 + v3) >> 1;
      if ( v8 )
        break;
      v6 = (unsigned __int8 *)v4 + 5 * v5 + 3;
      v7 = *((unsigned __int8 *)v4 + 5 * v5 + 2)
         | (*((unsigned __int8 *)v4 + 5 * v5) << 16)
         | (*((unsigned __int8 *)v4 + 5 * v5 + 1) << 8);
      if ( v7 <= a2 )
        goto LABEL_5;
    }
  }
  return 0;
}


// ===== 721de0 tt_cmap14_find_variant =====
int __fastcall tt_cmap14_find_variant(unsigned int *a1, unsigned int a2)
{
  unsigned int v2; // r3
  unsigned int v3; // r4
  unsigned int *v4; // r5
  unsigned int v5; // r2
  int result; // r0
  unsigned int v7; // r12
  bool v8; // cf

  v2 = _byteswap_ulong(*a1);
  v3 = 0;
  v4 = a1 + 1;
  if ( v2 )
  {
    while ( 1 )
    {
      v5 = (v2 + v3) >> 1;
      result = (int)v4 + 11 * v5 + 3;
      v7 = *((unsigned __int8 *)v4 + 11 * v5 + 2)
         | (*((unsigned __int8 *)v4 + 11 * v5) << 16)
         | (*((unsigned __int8 *)v4 + 11 * v5 + 1) << 8);
      if ( a2 < v7 )
        break;
LABEL_5:
      if ( a2 <= v7 )
        return result;
      v3 = v5 + 1;
      if ( v5 + 1 >= v2 )
        return 0;
    }
    while ( 1 )
    {
      v8 = v3 >= v5;
      v2 = v5;
      v5 = (v5 + v3) >> 1;
      if ( v8 )
        break;
      result = (int)v4 + 11 * v5 + 3;
      v7 = *((unsigned __int8 *)v4 + 11 * v5 + 2)
         | (*((unsigned __int8 *)v4 + 11 * v5) << 16)
         | (*((unsigned __int8 *)v4 + 11 * v5 + 1) << 8);
      if ( v7 <= a2 )
        goto LABEL_5;
    }
  }
  return 0;
}


// ===== 721ea0 tt_cmap14_char_var_index =====
int __fastcall tt_cmap14_char_var_index(int a1, int a2, unsigned int a3, unsigned int a4)
{
  int variant; // r0
  unsigned int v8; // r3
  int v9; // r10
  int v10; // r8
  int v11; // r7
  int v12; // r6
  int v13; // r6

  variant = tt_cmap14_find_variant((unsigned int *)(*(_DWORD *)(a1 + 16) + 6), a4);
  if ( !variant )
    return 0;
  v8 = _byteswap_ulong(*(_DWORD *)variant);
  v9 = *(unsigned __int8 *)(variant + 4);
  v10 = *(unsigned __int8 *)(variant + 7);
  v11 = *(unsigned __int8 *)(variant + 5);
  v12 = *(unsigned __int8 *)(variant + 6);
  if ( !v8 || !tt_cmap14_char_map_def_binary((unsigned int *)(*(_DWORD *)(a1 + 16) + v8), a3) )
  {
    v13 = v10 | (v9 << 24) | (v11 << 16) | (v12 << 8);
    if ( v13 )
      return tt_cmap14_char_map_nondef_binary((unsigned int *)(*(_DWORD *)(a1 + 16) + v13), a3);
    return 0;
  }
  return (*(int (__fastcall **)(int, unsigned int))(*(_DWORD *)(a2 + 12) + 12))(a2, a3);
}


// ===== 721f58 tt_cmap14_char_var_isdefault =====
int __fastcall tt_cmap14_char_var_isdefault(int a1, unsigned int a2, unsigned int a3)
{
  int variant; // r0
  int v6; // r8
  unsigned int v7; // r3
  int v8; // r7
  int v9; // r10
  int v10; // r6
  int v11; // r6

  variant = tt_cmap14_find_variant((unsigned int *)(*(_DWORD *)(a1 + 16) + 6), a3);
  if ( variant )
  {
    v6 = *(unsigned __int8 *)(variant + 4);
    v7 = _byteswap_ulong(*(_DWORD *)variant);
    v8 = *(unsigned __int8 *)(variant + 7);
    v9 = *(unsigned __int8 *)(variant + 5);
    v10 = *(unsigned __int8 *)(variant + 6);
    if ( v7 && tt_cmap14_char_map_def_binary((unsigned int *)(*(_DWORD *)(a1 + 16) + v7), a2) )
      return 1;
    v11 = (v9 << 16) | (v6 << 24) | v8 | (v10 << 8);
    if ( v11 && tt_cmap14_char_map_nondef_binary((unsigned int *)(*(_DWORD *)(a1 + 16) + v11), a2) )
      return 0;
  }
  return -1;
}


// ===== 722010 tt_get_cmap_info =====
int __fastcall tt_get_cmap_info(int a1)
{
  return (*(int (**)(void))(*(_DWORD *)(a1 + 12) + 48))();
}


// ===== 722024 tt_face_get_kerning =====
unsigned int __fastcall tt_face_get_kerning(_DWORD *a1, int a2, int a3)
{
  int v3; // r3
  unsigned int v4; // r2
  unsigned __int8 *v5; // r6
  int v6; // r4
  unsigned __int8 *v7; // r1
  unsigned __int8 *v8; // r0
  unsigned int v9; // r12
  unsigned int v10; // r5
  unsigned __int8 *v11; // r6
  unsigned int v12; // r7
  char *v13; // r1
  unsigned int v14; // r1
  int v15; // r12
  bool v16; // cf
  unsigned int v17; // r8
  int v19; // r1
  int v20; // r0
  int v21; // r1
  int v22; // [sp+4h] [bp-14h]
  unsigned int v23; // [sp+8h] [bp-10h]
  unsigned int v25; // [sp+10h] [bp-8h]
  unsigned int v26; // [sp+14h] [bp-4h]

  v3 = a1[196];
  if ( v3 )
  {
    v4 = a3 | (a2 << 16);
    v22 = a1[197];
    v5 = (unsigned __int8 *)(a1[194] + 4);
    v6 = 1;
    v25 = 0;
    while ( 1 )
    {
      v7 = v5 + 4;
      v8 = v5 + 6;
      v9 = (unsigned int)&v5[v5[3] | (v5[2] << 8)];
      if ( (v6 & v22) == 0 )
        goto LABEL_14;
      if ( v9 < (unsigned int)(v5 + 14) )
        goto LABEL_14;
      v23 = v5[5] | (v5[4] << 8);
      v10 = v23 >> 8;
      if ( v23 >> 8 )
        goto LABEL_14;
      v11 = v5 + 14;
      v12 = v8[1] | (*v8 << 8);
      if ( (v6 & a1[198]) != 0 )
        break;
      if ( !v12 )
        goto LABEL_14;
      v13 = (char *)(v7 + 14);
      if ( ((unsigned __int8)*(v13 - 1)
          | (*v11 << 24)
          | ((unsigned __int8)*(v13 - 3) << 16)
          | ((unsigned __int8)*(v13 - 2) << 8)) == v4 )
      {
LABEL_31:
        v21 = (unsigned __int8)v13[1] | (*v13 << 8);
LABEL_25:
        if ( (v23 & 8) != 0 )
          v25 = v21;
        else
          v12 = v25;
        if ( (v23 & 8) == 0 )
          v25 = v12 + v21;
        goto LABEL_14;
      }
      while ( 1 )
      {
        --v12;
        v13 += 6;
        if ( !v12 )
          break;
        if ( _byteswap_ulong(*((_DWORD *)v13 - 1)) == v4 )
          goto LABEL_31;
      }
LABEL_14:
      if ( !--v3 )
        return v25;
      v6 *= 2;
      v5 = (unsigned __int8 *)v9;
    }
    v26 = v9;
LABEL_16:
    if ( v12 <= v10 )
    {
LABEL_23:
      v9 = v26;
      goto LABEL_14;
    }
    v14 = (v10 + v12) >> 1;
    v15 = 6 * v14;
    while ( 1 )
    {
      v17 = _byteswap_ulong(*(_DWORD *)&v11[v15]);
      if ( v17 == v4 )
        break;
      if ( v4 > v17 )
      {
        v10 = v14 + 1;
        goto LABEL_16;
      }
      v16 = v10 >= v14;
      v12 = v14;
      v14 = (v14 + v10) >> 1;
      v15 = 6 * v14;
      if ( v16 )
        goto LABEL_23;
    }
    v19 = v11[v15 + 5];
    v20 = (char)v11[v15 + 4];
    v9 = v26;
    v21 = v19 | (v20 << 8);
    goto LABEL_25;
  }
  return 0;
}


// ===== 722218 get_sfnt_table =====
int __fastcall get_sfnt_table(int a1, int a2)
{
  int result; // r0

  switch ( a2 )
  {
    case 0:
      result = a1 + 160;
      break;
    case 1:
      result = a1 + 260;
      break;
    case 2:
      if ( *(unsigned __int16 *)(a1 + 368) == 0xFFFF )
        goto LABEL_4;
      result = a1 + 368;
      break;
    case 3:
      result = a1 + 216;
      break;
    case 4:
      if ( !*(_BYTE *)(a1 + 296) )
        goto LABEL_4;
      result = a1 + 300;
      break;
    case 5:
      result = a1 + 468;
      break;
    case 6:
      if ( !*(_DWORD *)(a1 + 556) )
        goto LABEL_4;
      result = a1 + 556;
      break;
    default:
LABEL_4:
      result = 0;
      break;
  }
  return result;
}


// ===== 7222a8 sfnt_table_info =====
int __fastcall sfnt_table_info(int a1, unsigned int a2, _DWORD *a3, _DWORD *a4)
{
  bool v4; // zf
  int v5; // r12
  unsigned int v6; // r4
  bool v7; // cc

  v4 = a3 == nullptr;
  if ( a3 )
    v4 = a4 == nullptr;
  v5 = v4;
  if ( v4 )
    return 6;
  v6 = *(unsigned __int16 *)(a1 + 152);
  v7 = v6 > a2;
  if ( v6 <= a2 )
    v5 = 142;
  else
    v6 = *(_DWORD *)(a1 + 156);
  if ( v7 )
  {
    *a3 = *(_DWORD *)(v6 + 16 * a2);
    *a4 = *(_DWORD *)(*(_DWORD *)(a1 + 156) + 16 * a2 + 12);
  }
  return v5;
}


// ===== 7222f8 tt_face_load_sfnt_header_stub =====
int tt_face_load_sfnt_header_stub()
{
  return 7;
}


// ===== 722300 tt_face_load_directory_stub =====
int tt_face_load_directory_stub()
{
  return 7;
}


// ===== 722308 tt_face_load_hdmx_stub =====
int tt_face_load_hdmx_stub()
{
  return 7;
}


// ===== 722310 tt_face_free_hdmx_stub =====
void tt_face_free_hdmx_stub()
{
  ;
}


// ===== 722314 tt_face_load_sbit_stub =====
int tt_face_load_sbit_stub()
{
  return 7;
}


// ===== 72231c tt_face_free_sbit_stub =====
void tt_face_free_sbit_stub()
{
  ;
}


// ===== 722320 tt_face_load_charmap_stub =====
int tt_face_load_charmap_stub()
{
  return 7;
}


// ===== 722328 tt_face_free_charmap_stub =====
int tt_face_free_charmap_stub()
{
  return 0;
}


// ===== 722330 tt_face_load_strike_metrics =====
int __fastcall tt_face_load_strike_metrics(int a1, unsigned int a2, int a3)
{
  int v4; // r3
  int v5; // r1
  int v6; // r12
  int v7; // r3
  int v8; // r1

  if ( *(_DWORD *)(a1 + 612) <= a2 )
    return 6;
  v4 = *(_DWORD *)(a1 + 616);
  v5 = v4 + 48 * a2;
  *(_WORD *)a3 = *(unsigned __int8 *)(v5 + 44);
  *(_WORD *)(a3 + 2) = *(unsigned __int8 *)(v5 + 45);
  v6 = *(char *)(v5 + 16) << 6;
  *(_DWORD *)(a3 + 12) = v6;
  v7 = *(char *)(v5 + 17) << 6;
  *(_DWORD *)(a3 + 16) = v7;
  v8 = (*(unsigned __int8 *)(v5 + 18) + *(char *)(v5 + 22) + *(char *)(v5 + 23)) << 6;
  *(_DWORD *)(a3 + 20) = v6 - v7;
  *(_DWORD *)(a3 + 24) = v8;
  return 0;
}


// ===== 7223a8 find_sbit_range =====
int __fastcall find_sbit_range(unsigned int a1, int *a2, unsigned __int16 **a3, _DWORD *a4)
{
  int result; // r0
  int v5; // r1
  unsigned __int16 *v6; // r12
  unsigned __int16 *v8; // r4
  unsigned int v9; // r1
  int v10; // r1
  int v11; // r5
  unsigned __int16 *v12; // r6

  if ( *((unsigned __int16 *)a2 + 20) <= a1
    && a1 <= *((unsigned __int16 *)a2 + 21)
    && (v5 = *a2, (v6 = (unsigned __int16 *)a2[1]) != nullptr)
    && (v8 = &v6[20 * v5], v6 < v8) )
  {
    while ( 1 )
    {
      v9 = *v6;
      if ( a1 >= v9 && a1 <= v6[1] )
        break;
      v6 += 20;
      if ( v8 <= v6 )
        goto LABEL_2;
    }
    v10 = (unsigned __int16)(a1 - v9);
    switch ( v6[2] )
    {
      case 1u:
      case 3u:
        goto LABEL_20;
      case 2u:
        goto LABEL_18;
      case 4u:
      case 5u:
        v11 = *((_DWORD *)v6 + 6);
        if ( !v11 )
          goto LABEL_2;
        v12 = *((unsigned __int16 **)v6 + 8);
        if ( *v12 == a1 )
        {
          v10 = 0;
        }
        else
        {
          v10 = 0;
          do
          {
            if ( ++v10 == v11 )
              goto LABEL_2;
          }
          while ( v12[v10] != a1 );
        }
        if ( v6[2] == 4 )
LABEL_20:
          *a4 = *(_DWORD *)(*((_DWORD *)v6 + 7) + 4 * v10);
        else
LABEL_18:
          *a4 = *((_DWORD *)v6 + 2) + *((_DWORD *)v6 + 3) * v10;
        *a3 = v6;
        result = 0;
        break;
      default:
        goto LABEL_2;
    }
  }
  else
  {
LABEL_2:
    *a3 = nullptr;
    *a4 = 0;
    return 6;
  }
  return result;
}


// ===== 7224c4 tt_find_sbit_image =====
int __fastcall tt_find_sbit_image(
        int a1,
        unsigned int a2,
        unsigned int a3,
        unsigned __int16 **a4,
        int **a5,
        _DWORD *a6)
{
  int v6; // r12
  int result; // r0
  int *v9; // r7

  v6 = *(_DWORD *)(a1 + 616);
  if ( !v6
    || *(_DWORD *)(a1 + 612) <= a3
    || (v9 = (int *)(v6 + 48 * a3), (result = find_sbit_range(a2, v9, a4, a6)) != 0) )
  {
    *a4 = nullptr;
    *a5 = nullptr;
    *a6 = 0;
    return 6;
  }
  else
  {
    *a5 = v9;
  }
  return result;
}


// ===== 722530 tt_face_set_sbit_strike =====
int __fastcall tt_face_set_sbit_strike(_DWORD *a1, int a2, int *a3)
{
  return FT_Match_Size(a1, a2, 0, a3);
}


// ===== 72253c tt_face_set_sbit_strike_stub =====
int __fastcall tt_face_set_sbit_strike_stub(_DWORD *a1, int a2, int a3, int *a4)
{
  _DWORD v5[6]; // [sp+4h] [bp-18h] BYREF

  v5[2] = a3;
  v5[1] = a2;
  *a4 = 0x7FFFFFFF;
  v5[4] = 0;
  v5[0] = 0;
  v5[3] = 0;
  return tt_face_set_sbit_strike(a1, (int)v5, a4);
}


// ===== 722578 tt_face_free_eblc =====
_DWORD *__fastcall tt_face_free_eblc(_DWORD *result)
{
  _DWORD *v1; // r8
  _DWORD *v2; // r11
  int v3; // r6
  int v4; // r1
  _DWORD *v5; // r10
  unsigned int v6; // r4
  unsigned int v7; // r7

  v1 = (_DWORD *)result[154];
  v2 = result;
  v3 = result[25];
  v4 = (int)v1;
  if ( v1 )
  {
    v5 = &v1[12 * result[153]];
    if ( v1 < v5 )
    {
      do
      {
        v6 = v1[1];
        if ( v6 )
        {
          v7 = v6 + 40 * *v1;
          if ( v6 < v7 )
          {
            do
            {
              ft_mem_free(v3, *(_DWORD *)(v6 + 28));
              *(_DWORD *)(v6 + 28) = 0;
              ft_mem_free(v3, *(_DWORD *)(v6 + 32));
              *(_DWORD *)(v6 + 32) = 0;
              v6 += 40;
            }
            while ( v7 > v6 );
            v6 = v1[1];
          }
        }
        ft_mem_free(v3, v6);
        v1[1] = 0;
        *v1 = 0;
        v1 += 12;
      }
      while ( v5 > v1 );
      v4 = v2[154];
    }
    result = (_DWORD *)ft_mem_free(v3, v4);
    v2[154] = 0;
  }
  v2[153] = 0;
  return result;
}


// ===== 722638 tt_face_free_ps_names =====
int __fastcall tt_face_free_ps_names(int result)
{
  int v1; // r4
  int v2; // r6
  int v3; // r3
  unsigned int v4; // r5
  bool v5; // zf

  v1 = result;
  v2 = *(_DWORD *)(result + 100);
  if ( !*(_BYTE *)(result + 628) )
    goto LABEL_4;
  v3 = *(_DWORD *)(result + 468);
  if ( v3 == 0x20000 )
  {
    ft_mem_free(*(_DWORD *)(result + 100), *(_DWORD *)(result + 636));
    v4 = 0;
    v5 = *(unsigned __int16 *)(v1 + 634) == 0;
    *(_WORD *)(v1 + 632) = 0;
    *(_DWORD *)(v1 + 636) = 0;
    if ( !v5 )
    {
      do
      {
        ft_mem_free(v2, *(_DWORD *)(*(_DWORD *)(v1 + 640) + 4 * v4));
        *(_DWORD *)(*(_DWORD *)(v1 + 640) + 4 * v4) = 0;
        v4 = (unsigned __int16)(v4 + 1);
      }
      while ( *(unsigned __int16 *)(v1 + 634) > v4 );
    }
    result = ft_mem_free(v2, *(_DWORD *)(v1 + 640));
    *(_WORD *)(v1 + 634) = 0;
    *(_DWORD *)(v1 + 640) = 0;
    goto LABEL_4;
  }
  if ( v3 != 163840 )
  {
LABEL_4:
    *(_BYTE *)(v1 + 628) = 0;
    return result;
  }
  result = ft_mem_free(*(_DWORD *)(result + 100), *(_DWORD *)(result + 636));
  *(_WORD *)(v1 + 632) = 0;
  *(_DWORD *)(v1 + 636) = 0;
  *(_BYTE *)(v1 + 628) = 0;
  return result;
}


// ===== 722714 tt_face_free_name =====
_DWORD *__fastcall tt_face_free_name(_DWORD *result)
{
  int v1; // r4
  _DWORD *v2; // r8
  int v3; // r5
  int v4; // r7

  v1 = result[90];
  v2 = result;
  v3 = result[88];
  v4 = *(_DWORD *)(result[24] + 8);
  if ( v1 )
  {
    if ( v3 )
    {
      do
      {
        ft_mem_free(v4, *(_DWORD *)(v1 + 16));
        --v3;
        *(_DWORD *)(v1 + 16) = 0;
        *(_WORD *)(v1 + 8) = 0;
        v1 += 20;
      }
      while ( v3 );
      v1 = v2[90];
    }
    result = (_DWORD *)ft_mem_free(v4, v1);
    v2[90] = 0;
  }
  v2[89] = 0;
  *((_WORD *)v2 + 174) = 0;
  v2[88] = 0;
  return result;
}


// ===== 722790 tt_cmap14_done =====
int __fastcall tt_cmap14_done(_DWORD *a1)
{
  int result; // r0
  int v3; // r1

  result = a1[9];
  a1[7] = 0;
  if ( result )
  {
    v3 = a1[8];
    if ( v3 )
    {
      result = ft_mem_free(result, v3);
      a1[8] = 0;
    }
  }
  return result;
}


// ===== 7227c4 tt_face_lookup_table =====
_DWORD *__fastcall tt_face_lookup_table(int a1, int a2)
{
  int v3; // r1
  int v5; // r2
  _DWORD *v6; // r5
  _DWORD *v7; // r2

  v3 = dword_A35544;
  if ( dword_A35544 > 3 )
  {
    FT_Message(
      "tt_face_lookup_table: %08p, `%c%c%c%c' -- ",
      (const void *)a1,
      a2 >> 24,
      a2 << 8 >> 24,
      (__int16)a2 >> 8,
      (char)a2);
    v3 = dword_A35544;
  }
  v5 = *(unsigned __int16 *)(a1 + 152);
  v6 = *(_DWORD **)(a1 + 156);
  v7 = &v6[4 * v5];
  if ( v6 < v7 )
  {
    while ( *v6 != a2 || !v6[3] )
    {
      v6 += 4;
      if ( v7 <= v6 )
        goto LABEL_10;
    }
    if ( v3 > 3 )
      FT_Message("found table.\n");
  }
  else
  {
LABEL_10:
    v6 = nullptr;
    if ( v3 > 3 )
      FT_Message("could not find table!\n");
  }
  return v6;
}


// ===== 7228b4 tt_face_load_hmtx =====
int __fastcall tt_face_load_hmtx(int a1, int *a2, int a3)
{
  int v6; // r7
  int v7; // r1
  int v8; // r12
  unsigned int v9; // r11
  unsigned int v10; // r5
  int *v11; // r9
  int v12; // r0
  int v13; // r0
  bool v14; // zf
  int v15; // lr
  char *v16; // r1
  unsigned int v17; // r12
  _WORD *v18; // r2
  unsigned __int8 *v19; // r3
  __int16 v20; // r7
  __int16 v21; // r0
  int v22; // lr
  unsigned int v23; // r2
  signed int v24; // r11
  _WORD *v25; // lr
  _WORD *v26; // r3
  __int16 v27; // t1
  bool v28; // cc
  unsigned int v30; // r3
  __int16 i; // r1
  int v32; // [sp+8h] [bp-14h]
  int *v33; // [sp+Ch] [bp-10h]
  unsigned int v34; // [sp+10h] [bp-Ch] BYREF
  int v35[2]; // [sp+14h] [bp-8h] BYREF

  v6 = a2[7];
  if ( a3 )
  {
    v8 = (*(int (__fastcall **)(int, int, int *, unsigned int *))(a1 + 508))(a1, 1986884728, a2, &v34);
    v35[0] = v8;
    if ( v8 )
      return v8;
    v9 = v34;
    v10 = *(unsigned __int16 *)(a1 + 334);
    *(_WORD *)(a1 + 334) = 0;
    if ( v10 >= v9 >> 2 )
      v10 = v9 >> 2;
    v11 = (int *)(a1 + 336);
    v33 = (int *)(a1 + 340);
  }
  else
  {
    v8 = (*(int (__fastcall **)(int, int, int *, unsigned int *))(a1 + 508))(a1, 1752003704, a2, &v34);
    v35[0] = v8;
    if ( v8 )
      return v8;
    v9 = v34;
    v10 = *(unsigned __int16 *)(a1 + 250);
    v11 = (int *)(a1 + 252);
    if ( v10 >= v34 >> 2 )
      v10 = v34 >> 2;
    *(_WORD *)(a1 + 250) = 0;
    v33 = (int *)(a1 + 256);
  }
  v32 = *(unsigned __int16 *)(a1 + 264) - v10;
  if ( v32 < 0 )
  {
    v32 = 0;
    FT_Message("%cmtx has more metrics than glyphs.\n", v7);
  }
  v12 = ft_mem_realloc(v6, 4, 0, v10, 0, v35);
  v8 = v35[0];
  *v11 = v12;
  if ( !v8 )
  {
    v13 = ft_mem_realloc(v6, 2, 0, v32, 0, v35);
    v8 = v35[0];
    v14 = v35[0] == 0;
    *v33 = v13;
    if ( v14 )
    {
      v8 = FT_Stream_EnterFrame((int)a2, v34);
      v35[0] = v8;
      if ( !v8 )
      {
        v15 = *v11;
        v16 = (char *)a2[8];
        v17 = *v11 + 4 * v10;
        if ( *v11 < v17 )
        {
          v18 = (_WORD *)*v11;
          v19 = (unsigned __int8 *)a2[8];
          do
          {
            v20 = *v19;
            v21 = v19[1];
            v19 += 4;
            *v18 = v21 | (v20 << 8);
            v18[1] = *(v19 - 1) | (unsigned __int16)((char)*(v19 - 2) << 8);
            v18 += 2;
          }
          while ( v17 > (unsigned int)v18 );
          v16 += ((~v15 + v17) & 0xFFFFFFFC) + 4;
        }
        v22 = v32;
        v23 = *v33;
        v24 = (v9 - 4 * v10) >> 1;
        if ( v32 >= v24 )
          v22 = v24;
        v25 = (_WORD *)(v23 + 2 * v22);
        if ( v23 < (unsigned int)v25 )
        {
          v26 = (_WORD *)*v33;
          do
          {
            v27 = *v16;
            v16 += 2;
            *v26++ = (unsigned __int8)*(v16 - 1) | (unsigned __int16)(v27 << 8);
          }
          while ( v25 > v26 );
          v23 += (((unsigned int)v25 + ~v23) & 0xFFFFFFFE) + 2;
        }
        v28 = v24 <= 0;
        if ( v24 )
          v28 = v32 <= v24;
        if ( !v28 )
        {
          v30 = *v33 + 2 * v32;
          for ( i = *(_WORD *)(*v33 + 2 * v24 - 2); v30 > v23; v23 += 2 )
            *(_WORD *)v23 = i;
        }
        FT_Stream_ExitFrame(a2);
        if ( a3 )
        {
          *(_WORD *)(a1 + 334) = v10;
          return v35[0];
        }
        else
        {
          v8 = v35[0];
          *(_WORD *)(a1 + 250) = v10;
        }
      }
    }
  }
  return v8;
}


// ===== 722b44 tt_name_entry_ascii_from_other =====
int __fastcall tt_name_entry_ascii_from_other(int a1, int a2)
{
  unsigned int v2; // r4
  int v3; // r6
  int v4; // r5
  int v5; // r0
  unsigned int v6; // r3
  char v7; // r2
  unsigned int v9; // [sp+Ch] [bp-4h] BYREF

  v2 = *(unsigned __int16 *)(a1 + 8);
  v3 = 0;
  v4 = *(_DWORD *)(a1 + 16);
  v5 = ft_mem_realloc(a2, 1, 0, v2 + 1, 0, (int *)&v9);
  v6 = v9;
  if ( !v9 )
  {
    v3 = v5;
    if ( v2 )
    {
      do
      {
        v7 = 63;
        if ( (unsigned int)*(unsigned __int8 *)(v4 + v6) - 32 <= 0x5F )
          v7 = *(_BYTE *)(v4 + v6);
        *(_BYTE *)(v5 + v6++) = v7;
      }
      while ( v2 > v6 );
    }
    *(_BYTE *)(v5 + v2) = 0;
  }
  return v3;
}


// ===== 722bc8 tt_name_entry_ascii_from_utf16 =====
int __fastcall tt_name_entry_ascii_from_utf16(int a1, int a2)
{
  int v2; // r6
  unsigned int v3; // r5
  unsigned __int8 *v4; // r4
  int v5; // r0
  unsigned int v6; // r3
  int v7; // t1
  char v8; // r2
  int v9; // r1
  unsigned int v11; // [sp+Ch] [bp-4h] BYREF

  v2 = 0;
  v3 = *(unsigned __int16 *)(a1 + 8) >> 1;
  v4 = *(unsigned __int8 **)(a1 + 16);
  v5 = ft_mem_realloc(a2, 1, 0, v3 + 1, 0, (int *)&v11);
  v6 = v11;
  if ( !v11 )
  {
    v2 = v5;
    if ( v3 )
    {
      do
      {
        v7 = *v4;
        v4 += 2;
        v8 = 63;
        v9 = *(v4 - 1) | (v7 << 8);
        if ( (unsigned int)(v9 - 32) <= 0x5F )
          v8 = v9;
        *(_BYTE *)(v5 + v6++) = v8;
      }
      while ( v3 > v6 );
    }
    *(_BYTE *)(v5 + v3) = 0;
  }
  return v2;
}


// ===== 722c58 tt_cmap14_ensure =====
int __fastcall tt_cmap14_ensure(_DWORD *a1, unsigned int a2, int a3)
{
  unsigned int v3; // r3
  int v5; // r1
  int v8; // r12
  int v9; // r0
  int v10; // [sp+Ch] [bp-8h] BYREF

  v3 = a1[7];
  v5 = 0;
  v10 = 0;
  if ( v3 < a2 )
  {
    v8 = a1[8];
    a1[9] = a3;
    v9 = ft_mem_realloc(a3, 4, v3, a2, v8, &v10);
    v5 = v10;
    a1[8] = v9;
    if ( !v5 )
      a1[7] = a2;
  }
  return v5;
}


// ===== 722cc4 tt_cmap14_get_def_chars =====
int __fastcall tt_cmap14_get_def_chars(_DWORD *a1, unsigned int *a2, int a3)
{
  unsigned __int8 *v3; // r5
  unsigned int v4; // r4
  unsigned int v6; // r1
  unsigned int *v7; // r0
  unsigned int v8; // r3
  int v9; // r1
  int v10; // r12
  _DWORD *i; // r0
  int v12; // r12
  int v13; // r1
  int v14; // r2
  int v15; // r3

  v3 = (unsigned __int8 *)a2;
  v4 = _byteswap_ulong(*a2);
  if ( v4 )
  {
    v7 = a2;
    v8 = v4;
    v9 = 0;
    do
    {
      v10 = *((unsigned __int8 *)v7 + 7);
      --v8;
      ++v7;
      v9 += v10 + 1;
    }
    while ( v8 );
    v6 = v9 + 1;
  }
  else
  {
    v6 = 1;
  }
  if ( tt_cmap14_ensure(a1, v6, a3) )
    return 0;
  for ( i = (_DWORD *)a1[8]; v4; v3 += 4 )
  {
    v12 = v3[7] + 1;
    v13 = (v3[5] << 8) | (v3[4] << 16) | v3[6];
    v14 = v12;
    v15 = 0;
    do
    {
      --v14;
      i[v15++] = v13++;
    }
    while ( v14 );
    --v4;
    i += v12;
  }
  *i = 0;
  return a1[8];
}


// ===== 722da0 tt_cmap14_get_nondef_chars =====
int __fastcall tt_cmap14_get_nondef_chars(_DWORD *a1, unsigned int *a2, int a3)
{
  unsigned __int8 *v3; // r5
  unsigned int v4; // r4
  int v6; // r3
  int result; // r0
  int v8; // r6
  unsigned __int8 *v9; // r4
  int v10; // r1
  int v11; // r2

  v3 = (unsigned __int8 *)a2;
  v4 = _byteswap_ulong(*a2);
  v6 = tt_cmap14_ensure(a1, v4 + 1, a3);
  if ( v6 )
    return 0;
  result = a1[8];
  if ( v4 )
  {
    v8 = 4 * v4;
    v9 = &v3[5 * v4];
    do
    {
      v10 = v3[6];
      v11 = (v3[5] << 8) | (v3[4] << 16);
      v3 += 5;
      *(_DWORD *)(result + v6) = v11 | v10;
      v6 += 4;
    }
    while ( v3 != v9 );
  }
  else
  {
    v8 = 0;
  }
  *(_DWORD *)(result + v8) = 0;
  return result;
}


// ===== 722e38 tt_cmap14_variant_chars =====
int __fastcall tt_cmap14_variant_chars(_DWORD *a1, int a2, unsigned int a3)
{
  unsigned int *variant; // r0
  int result; // r0
  unsigned int v7; // r3
  unsigned int v8; // r12
  int v9; // r2
  int v10; // r7
  unsigned int *v11; // r1
  unsigned __int8 *v12; // r4
  unsigned int v13; // r11
  unsigned int v14; // r5
  int v15; // r12
  int v16; // r0
  unsigned int v17; // r2
  int v18; // r10
  int v19; // r2
  unsigned __int8 *v20; // r1
  int v21; // r12
  unsigned __int8 *v22; // r4
  unsigned int v23; // r7
  unsigned int v24; // r6
  unsigned int v25; // r10
  unsigned int v26; // r9
  unsigned __int8 *v27; // r8
  unsigned int v28; // r3
  unsigned int *v29; // r1
  unsigned int i; // r3
  unsigned int v31; // r12
  unsigned __int8 *v32; // r1
  int v33; // r9
  int v34; // t1
  unsigned int v35; // r6
  int v36; // r7
  int v37; // r3
  unsigned int *v38; // r1
  unsigned int j; // r3
  unsigned int v40; // r12
  unsigned int v41; // r6
  int v42; // r5
  unsigned int v43; // r4
  unsigned int *v44; // r1
  unsigned int k; // r3
  unsigned int v46; // r12
  int v47; // [sp+0h] [bp-Ch]
  unsigned int v48; // [sp+4h] [bp-8h]

  variant = (unsigned int *)tt_cmap14_find_variant((unsigned int *)(a1[4] + 6), a3);
  if ( !variant )
    return 0;
  v7 = _byteswap_ulong(*variant);
  v8 = _byteswap_ulong(variant[1]);
  if ( !(v8 | v7) )
    return 0;
  if ( !v7 )
    return tt_cmap14_get_nondef_chars(a1, (unsigned int *)(a1[4] + v8), a2);
  if ( !v8 )
    return tt_cmap14_get_def_chars(a1, (unsigned int *)(a1[4] + v7), a2);
  v9 = a1[4];
  v10 = v9 + v7;
  v11 = (unsigned int *)(v9 + v8);
  v12 = (unsigned __int8 *)(v9 + v8 + 4);
  v13 = _byteswap_ulong(*(_DWORD *)(v9 + v7));
  v14 = _byteswap_ulong(*(_DWORD *)(v9 + v8));
  if ( v13 )
  {
    v16 = v9 + v7;
    v17 = v13;
    v15 = 0;
    do
    {
      v18 = *(unsigned __int8 *)(v16 + 7);
      --v17;
      v16 += 4;
      v15 += v18 + 1;
    }
    while ( v17 );
  }
  else
  {
    v15 = 0;
  }
  if ( !v14 )
    return tt_cmap14_get_def_chars(a1, (unsigned int *)v10, a2);
  if ( !v15 )
    return tt_cmap14_get_nondef_chars(a1, v11, a2);
  v47 = v10 + 7;
  v19 = tt_cmap14_ensure(a1, v14 + 1 + v15, a2);
  if ( v19 )
    return 0;
  v20 = v12 + 3;
  v21 = *v12;
  v22 = v12 + 5;
  v23 = *(unsigned __int8 *)(v10 + 7);
  v24 = (*(unsigned __int8 *)(v47 - 2) << 8) | (*(unsigned __int8 *)(v47 - 3) << 16) | *(unsigned __int8 *)(v47 - 1);
  v25 = 1;
  result = a1[8];
  v26 = (*(v20 - 2) << 8) | (v21 << 16) | *(v20 - 1);
  v27 = (unsigned __int8 *)(v47 + 1);
  v48 = 1;
  v28 = v23 + v24;
  while ( 1 )
  {
    while ( v26 > v28 )
    {
      v29 = (unsigned int *)(result + 4 * v19);
      for ( i = 0; i <= v23; ++i )
      {
        v31 = i + v24;
        *v29++ = v31;
        ++v19;
      }
      if ( ++v48 > v13 )
      {
        v35 = v25;
        if ( v25 <= v14 )
        {
          *(_DWORD *)(result + 4 * v19) = v26;
          v36 = result + 4 * v19++;
          if ( v25 < v14 )
          {
            v37 = 0;
            do
            {
              ++v25;
              *(_DWORD *)(v36 + v37 + 4) = (v22[1] << 8) | (*v22 << 16) | v22[2];
              v22 += 5;
              v37 += 4;
            }
            while ( v14 > v25 );
            v19 += 1 + ~v35 + v14;
          }
        }
        goto LABEL_32;
      }
      v23 = v27[3];
      v24 = v27[2] | (*v27 << 16) | (v27[1] << 8);
      v27 += 4;
      v28 = v23 + v24;
    }
    ++v25;
    if ( v24 > v26 )
      *(_DWORD *)(result + 4 * v19++) = v26;
    if ( v14 < v25 )
      break;
    v32 = v22 + 3;
    v33 = v22[2];
    v34 = *v22;
    v22 += 5;
    v26 = v33 | (v34 << 16) | (*(v32 - 2) << 8);
  }
  if ( v48 <= v13 )
  {
    v38 = (unsigned int *)(result + 4 * v19);
    for ( j = 0; j <= v23; ++j )
    {
      v40 = j + v24;
      *v38++ = v40;
      ++v19;
    }
    if ( v48 < v13 )
    {
      v41 = v48;
      do
      {
        v42 = (v27[1] << 8) | (*v27 << 16) | v27[2];
        v43 = v27[3];
        v44 = (unsigned int *)(result + 4 * v19);
        v27 += 4;
        for ( k = 0; k <= v43; ++k )
        {
          v46 = k + v42;
          *v44++ = v46;
          ++v19;
        }
        ++v41;
      }
      while ( v41 < v13 );
    }
  }
LABEL_32:
  *(_DWORD *)(result + 4 * v19) = 0;
  return result;
}


// ===== 7231c8 tt_cmap14_char_variants =====
int __fastcall tt_cmap14_char_variants(_DWORD *a1, int a2, unsigned int a3)
{
  int v3; // r4
  int v5; // r6
  int v7; // r7
  unsigned int v8; // r2
  int v9; // r11
  int v10; // r3
  int v11; // r12
  int v12; // r10
  int v13; // r9
  int v14; // r7
  int v15; // r8
  int v16; // r0
  int v17; // r0
  int v18; // [sp+0h] [bp-14h]
  int v19; // [sp+0h] [bp-14h]
  int v20; // [sp+4h] [bp-10h]
  int v21; // [sp+4h] [bp-10h]
  int *i; // [sp+8h] [bp-Ch]

  v3 = a1[6];
  v5 = a1[4];
  if ( tt_cmap14_ensure(a1, v3 + 1, a2) )
    return 0;
  for ( i = (int *)a1[8]; v3; ++i )
  {
    while ( 1 )
    {
      v8 = _byteswap_ulong(*(_DWORD *)(v5 + 13));
      v9 = *(unsigned __int8 *)(v5 + 11);
      v10 = *(unsigned __int8 *)(v5 + 10);
      v11 = *(unsigned __int8 *)(v5 + 12);
      v12 = *(unsigned __int8 *)(v5 + 17);
      v13 = *(unsigned __int8 *)(v5 + 18);
      v14 = *(unsigned __int8 *)(v5 + 19);
      v15 = *(unsigned __int8 *)(v5 + 20);
      if ( v8 )
      {
        v18 = *(unsigned __int8 *)(v5 + 10);
        v20 = *(unsigned __int8 *)(v5 + 12);
        v16 = tt_cmap14_char_map_def_binary((unsigned int *)(a1[4] + v8), a3);
        v10 = v18;
        v11 = v20;
        if ( v16 )
          break;
      }
      v7 = (v13 << 16) | (v12 << 24) | v15 | (v14 << 8);
      if ( v7 )
      {
        v19 = v10;
        v21 = v11;
        v17 = tt_cmap14_char_map_nondef_binary((unsigned int *)(a1[4] + v7), a3);
        v10 = v19;
        v11 = v21;
        if ( v17 )
          break;
      }
      --v3;
      v5 += 11;
      if ( !v3 )
        goto LABEL_10;
    }
    --v3;
    v5 += 11;
    *i = (v9 << 8) | (v10 << 16) | v11;
  }
LABEL_10:
  *i = 0;
  return a1[8];
}


// ===== 7232f4 tt_cmap14_variants =====
int __fastcall tt_cmap14_variants(_DWORD *a1, int a2)
{
  int v2; // r4
  unsigned __int8 *v4; // r6
  int v5; // r3
  int result; // r0
  unsigned __int8 *v7; // r5
  int v8; // r1
  int v9; // r2

  v2 = a1[6];
  v4 = (unsigned __int8 *)a1[4];
  v5 = tt_cmap14_ensure(a1, v2 + 1, a2);
  if ( v5 )
    return 0;
  result = a1[8];
  if ( v2 )
  {
    v7 = &v4[11 * v2];
    do
    {
      v8 = v4[12];
      v9 = (v4[11] << 8) | (v4[10] << 16);
      v4 += 11;
      *(_DWORD *)(result + v5) = v9 | v8;
      v5 += 4;
    }
    while ( v4 != v7 );
    v2 *= 4;
  }
  *(_DWORD *)(result + v2) = 0;
  return result;
}


// ===== 723370 tt_load_sbit_metrics =====
int __fastcall tt_load_sbit_metrics(int *a1, unsigned __int16 *a2, _BYTE *a3)
{
  int v4; // r3
  bool v5; // zf
  int result; // r0
  int v7; // r3
  char v8; // r12
  char v9; // r1
  char v10; // r2
  char v11; // r3
  _BYTE v12[12]; // [sp+0h] [bp-Ch] BYREF

  if ( a2[3] > 9u )
    goto LABEL_2;
  v7 = 1 << a2[3];
  if ( (v7 & 0x2C0) != 0 )
    return FT_Stream_ReadFields(a1, (int)&sbit_metrics_fields, (int)a3);
  if ( (v7 & 0x106) != 0 )
  {
    result = FT_Stream_ReadFields(a1, (int)&sbit_small_metrics_fields_10114, (int)v12);
    if ( !result )
    {
      v8 = v12[1];
      v9 = v12[2];
      v10 = v12[3];
      v11 = v12[4];
      *a3 = v12[0];
      a3[1] = v8;
      a3[2] = v9;
      a3[3] = v10;
      a3[4] = v11;
      a3[7] = 0;
      a3[5] = 0;
      a3[6] = 0;
    }
  }
  else
  {
LABEL_2:
    v4 = a2[2];
    v5 = v4 == 2;
    if ( v4 != 2 )
      v5 = v4 == 5;
    if ( v5 )
    {
      memcpy(a3, a2 + 8, 8u);
      return 0;
    }
    else
    {
      return 3;
    }
  }
  return result;
}


// ===== 72344c tt_face_load_generic_header =====
int __fastcall tt_face_load_generic_header(int a1, int *a2, int a3)
{
  int Fields; // r7

  Fields = (*(int (__fastcall **)(int, int, int *, _DWORD))(a1 + 508))(a1, a3, a2, 0);
  if ( !Fields )
  {
    Fields = FT_Stream_ReadFields(a2, (int)&header_fields_4716, a1 + 160);
    if ( !Fields && dword_A35544 > 2 )
    {
      FT_Message("Units per EM: %4u\n", *(unsigned __int16 *)(a1 + 178));
      if ( dword_A35544 > 2 )
        FT_Message("IndexToLoc:   %4d\n", *(__int16 *)(a1 + 210));
    }
  }
  return Fields;
}


// ===== 7234fc tt_face_load_bhed =====
int __fastcall tt_face_load_bhed(int a1, int *a2)
{
  return tt_face_load_generic_header(a1, a2, 1651008868);
}


// ===== 723508 tt_face_load_head =====
int __fastcall tt_face_load_head(int a1, int *a2)
{
  return tt_face_load_generic_header(a1, a2, 1751474532);
}


// ===== 723514 tt_face_load_pclt =====
int __fastcall tt_face_load_pclt(int a1, int *a2)
{
  int result; // r0

  result = (*(int (__fastcall **)(int, int, int *, _DWORD))(a1 + 508))(a1, 1346587732, a2, 0);
  if ( !result )
    return FT_Stream_ReadFields(a2, (int)&pclt_fields_4951, a1 + 556);
  return result;
}


// ===== 723564 tt_face_load_name =====
int __fastcall tt_face_load_name(int a1, int *a2)
{
  int v3; // r8
  int Fields; // r12
  int v7; // r10
  int v8; // r7
  unsigned int v9; // r11
  int v10; // r0
  int v11; // r8
  unsigned int v12; // r2
  unsigned int v13; // r3
  unsigned int v14; // [sp+Ch] [bp-10h]
  int v15; // [sp+10h] [bp-Ch] BYREF
  int v16; // [sp+14h] [bp-8h] BYREF

  v3 = a2[7];
  *(_DWORD *)(a1 + 364) = a2;
  Fields = (*(int (__fastcall **)(int, int, int *, int *))(a1 + 508))(a1, 1851878757, a2, &v15);
  v16 = Fields;
  if ( !Fields )
  {
    v7 = FT_Stream_Pos((int)a2);
    Fields = FT_Stream_ReadFields(a2, (int)&name_table_fields_4790, a1 + 348);
    v16 = Fields;
    if ( !Fields )
    {
      v8 = *(_DWORD *)(a1 + 352);
      v9 = 12 * v8 + 6 + v7;
      v14 = v7 + v15;
      if ( v9 > v7 + v15 )
      {
        FT_Message("invalid `name' table\n");
        return 145;
      }
      else
      {
        *(_DWORD *)(a1 + 352) = 0;
        v10 = ft_mem_realloc(v3, 20, 0, v8, 0, &v16);
        Fields = v16;
        *(_DWORD *)(a1 + 360) = v10;
        if ( !Fields )
        {
          Fields = FT_Stream_EnterFrame((int)a2, 12 * v8);
          v16 = Fields;
          if ( !Fields )
          {
            v11 = *(_DWORD *)(a1 + 360);
            if ( v8 )
            {
              do
              {
                v16 = FT_Stream_ReadFields(a2, (int)&name_record_fields_4791, v11);
                if ( !v16 && *(_WORD *)(v11 + 8) )
                {
                  v12 = *(_DWORD *)(a1 + 356) + *(_DWORD *)(v11 + 12) + v7;
                  v13 = v12 + *(unsigned __int16 *)(v11 + 8);
                  *(_DWORD *)(v11 + 12) = v12;
                  if ( v9 > v12 || v14 < v13 )
                  {
                    *(_DWORD *)(v11 + 12) = 0;
                    *(_WORD *)(v11 + 8) = 0;
                  }
                  else
                  {
                    v11 += 20;
                  }
                }
                --v8;
              }
              while ( v8 );
              v8 = -858993459 * ((v11 - *(_DWORD *)(a1 + 360)) >> 2);
            }
            *(_DWORD *)(a1 + 352) = v8;
            FT_Stream_ExitFrame(a2);
            Fields = v16;
            *(_WORD *)(a1 + 344) = *(_DWORD *)(a1 + 352);
          }
        }
      }
    }
  }
  return Fields;
}


// ===== 723730 tt_face_load_post =====
int __fastcall tt_face_load_post(int a1, int *a2)
{
  int Fields; // r7
  const char *v6; // r1

  Fields = (*(int (__fastcall **)(int, int, int *, _DWORD))(a1 + 508))(a1, 1886352244, a2, 0);
  if ( Fields )
    return Fields;
  Fields = FT_Stream_ReadFields(a2, (int)&post_fields_4927, a1 + 468);
  if ( Fields )
    return Fields;
  if ( dword_A35544 <= 2 )
    return Fields;
  FT_Message("FormatType:   0x%x\n", *(_DWORD *)(a1 + 468));
  if ( dword_A35544 <= 2 )
    return Fields;
  if ( *(_DWORD *)(a1 + 480) )
    v6 = "  yes";
  else
    v6 = "   no";
  FT_Message("isFixedPitch:   %s\n", v6);
  return 0;
}


// ===== 72380c tt_face_load_os2 =====
int __fastcall tt_face_load_os2(int a1, int *a2)
{
  int result; // r0
  int Fields; // r7
  bool v6; // zf
  _BYTE v7[176]; // [sp+4h] [bp+0h] BYREF
  _DWORD v8[7]; // [sp+B4h] [bp+B0h] BYREF
  _DWORD v9[5]; // [sp+D0h] [bp+CCh] BYREF

  memcpy(v7, &C_35_4882, sizeof(v7));
  v9[0] = 524292;
  v9[1] = 5243920;
  v9[2] = 5506064;
  v9[3] = 0;
  v8[0] = 655364;
  v8[1] = 5767693;
  v8[2] = 5898765;
  v8[3] = 6029836;
  v8[4] = 6160908;
  v8[5] = 6291980;
  v8[6] = 0;
  result = (*(int (__fastcall **)(int, int, int *, _DWORD))(a1 + 508))(a1, 1330851634, a2, 0);
  if ( !result )
  {
    Fields = FT_Stream_ReadFields(a2, (int)v7, a1 + 368);
    if ( !Fields )
    {
      v6 = *(unsigned __int16 *)(a1 + 368) == 0;
      *(_WORD *)(a1 + 456) = 0;
      *(_WORD *)(a1 + 458) = 0;
      *(_WORD *)(a1 + 460) = 0;
      *(_WORD *)(a1 + 462) = 0;
      *(_WORD *)(a1 + 464) = 0;
      *(_DWORD *)(a1 + 448) = 0;
      *(_DWORD *)(a1 + 452) = 0;
      if ( !v6 )
      {
        result = FT_Stream_ReadFields(a2, (int)v9, a1 + 368);
        if ( result )
          return result;
        if ( *(unsigned __int16 *)(a1 + 368) > 1u )
        {
          result = FT_Stream_ReadFields(a2, (int)v8, a1 + 368);
          if ( result )
            return result;
        }
      }
      if ( dword_A35544 > 2 )
      {
        FT_Message("sTypoAscender:  %4d\n", *(__int16 *)(a1 + 438));
        if ( dword_A35544 > 2 )
        {
          FT_Message("sTypoDescender: %4d\n", *(__int16 *)(a1 + 440));
          if ( dword_A35544 > 2 )
          {
            FT_Message("usWinAscent:    %4u\n", *(unsigned __int16 *)(a1 + 444));
            if ( dword_A35544 > 2 )
            {
              FT_Message("usWinDescent:   %4u\n", *(unsigned __int16 *)(a1 + 446));
              if ( dword_A35544 > 2 )
              {
                FT_Message("fsSelection:    0x%2x\n", *(unsigned __int16 *)(a1 + 432));
                return 0;
              }
            }
          }
        }
      }
    }
    return Fields;
  }
  return result;
}


// ===== 723a0c tt_face_load_maxp =====
int __fastcall tt_face_load_maxp(int a1, int *a2)
{
  int result; // r0
  int Fields; // r6
  int v6; // r3
  _DWORD v7[15]; // [sp+4h] [bp-4Ch] BYREF
  _DWORD v8[4]; // [sp+40h] [bp-10h] BYREF

  v8[0] = 393220;
  v8[1] = 1041;
  v8[2] = 262668;
  v8[3] = 0;
  v7[0] = 1703940;
  v7[1] = 393740;
  v7[2] = 524812;
  v7[3] = 655884;
  v7[4] = 786956;
  v7[5] = 918028;
  v7[6] = 1049100;
  v7[7] = 1180172;
  v7[8] = 1311244;
  v7[9] = 1442316;
  v7[10] = 1573388;
  v7[11] = 1704460;
  v7[12] = 1835532;
  v7[13] = 1966604;
  v7[14] = 0;
  result = (*(int (__fastcall **)(int, int, int *, _DWORD))(a1 + 508))(a1, 1835104368, a2, 0);
  if ( !result )
  {
    Fields = FT_Stream_ReadFields(a2, (int)v8, a1 + 260);
    if ( !Fields )
    {
      v6 = *(_DWORD *)(a1 + 260);
      *(_WORD *)(a1 + 266) = 0;
      *(_WORD *)(a1 + 268) = 0;
      *(_WORD *)(a1 + 270) = 0;
      *(_WORD *)(a1 + 272) = 0;
      *(_WORD *)(a1 + 274) = 0;
      *(_WORD *)(a1 + 276) = 0;
      *(_WORD *)(a1 + 278) = 0;
      *(_WORD *)(a1 + 282) = 0;
      *(_WORD *)(a1 + 284) = 0;
      *(_WORD *)(a1 + 286) = 0;
      *(_WORD *)(a1 + 288) = 0;
      *(_WORD *)(a1 + 290) = 0;
      *(_WORD *)(a1 + 280) = 0;
      if ( v6 >= 0x10000 )
      {
        result = FT_Stream_ReadFields(a2, (int)v7, a1 + 260);
        if ( result )
          return result;
        if ( !*(_WORD *)(a1 + 280) )
          *(_WORD *)(a1 + 280) = 64;
        if ( *(unsigned __int16 *)(a1 + 276) > 0xFFFBu )
        {
          FT_Message("Too much twilight points in `maxp' table;\n");
          FT_Message("  some glyphs might be rendered incorrectly.\n");
          *(_WORD *)(a1 + 276) = -5;
        }
      }
      if ( dword_A35544 > 2 )
      {
        FT_Message("numGlyphs: %u\n", *(unsigned __int16 *)(a1 + 264));
        return 0;
      }
    }
    return Fields;
  }
  return result;
}


// ===== 723bd4 tt_face_load_hhea =====
int __fastcall tt_face_load_hhea(int a1, int *a2, int a3)
{
  int v6; // r8
  int v7; // r5
  int Fields; // r0
  _BYTE v10[76]; // [sp+4h] [bp-4Ch] BYREF

  memcpy(v10, &C_62_5140, sizeof(v10));
  if ( a3 )
  {
    v6 = (*(int (__fastcall **)(int, int, int *, _DWORD))(a1 + 508))(a1, 1986553185, a2, 0);
    if ( v6 )
      return v6;
    v7 = a1 + 300;
    Fields = FT_Stream_ReadFields(a2, (int)v10, v7);
    v6 = Fields;
    if ( Fields )
      return v6;
  }
  else
  {
    v6 = (*(int (__fastcall **)(int, int, int *, _DWORD))(a1 + 508))(a1, 1751672161, a2, 0);
    if ( v6 )
      return v6;
    v7 = a1 + 216;
    v6 = FT_Stream_ReadFields(a2, (int)v10, v7);
    if ( v6 )
      return v6;
  }
  if ( dword_A35548 > 2 )
  {
    FT_Message("Ascender:          %5d\n", *(__int16 *)(v7 + 4));
    if ( dword_A35548 > 2 )
    {
      FT_Message("Descender:         %5d\n", *(__int16 *)(v7 + 6));
      if ( dword_A35548 > 2 )
        FT_Message("number_Of_Metrics: %5u\n", *(unsigned __int16 *)(v7 + 34));
    }
  }
  *(_DWORD *)(v7 + 40) = 0;
  *(_DWORD *)(v7 + 36) = 0;
  return v6;
}


// ===== 723d28 tt_face_goto_table =====
int __fastcall tt_face_goto_table(int a1, int a2, _DWORD *a3, _DWORD *a4)
{
  _DWORD *v6; // r0

  v6 = tt_face_lookup_table(a1, a2);
  if ( !v6 )
    return 142;
  if ( a4 )
    *a4 = v6[3];
  return FT_Stream_Seek(a3, v6[2]);
}


// ===== 723d64 tt_face_load_gasp =====
int __fastcall tt_face_load_gasp(int a1, int *a2)
{
  int v4; // r7
  int v5; // r11
  unsigned int v7; // r8
  int v8; // r0
  int v9; // r10
  int v10; // r7
  unsigned int i; // r6
  unsigned __int16 Short; // r0
  int v13; // [sp+14h] [bp-8h] BYREF

  v4 = a2[7];
  v5 = (*(int (__fastcall **)(int, int, int *, _DWORD))(a1 + 508))(a1, 1734439792, a2, 0);
  if ( !v5 )
  {
    v5 = FT_Stream_EnterFrame((int)a2, 4u);
    v13 = v5;
    if ( !v5 )
    {
      *(_WORD *)(a1 + 548) = FT_Stream_GetShort((int)a2);
      *(_WORD *)(a1 + 550) = FT_Stream_GetShort((int)a2);
      FT_Stream_ExitFrame(a2);
      if ( *(unsigned __int16 *)(a1 + 548) <= 1u )
      {
        v7 = *(unsigned __int16 *)(a1 + 550);
        if ( dword_A35544 > 2 )
          FT_Message("numRanges: %u\n", v7);
        v8 = ft_mem_realloc(v4, 4, 0, v7, 0, &v13);
        v5 = v13;
        v9 = v8;
        if ( !v13 )
        {
          v5 = FT_Stream_EnterFrame((int)a2, 4 * v7);
          v13 = v5;
          if ( !v5 )
          {
            *(_DWORD *)(a1 + 552) = v9;
            if ( v7 )
            {
              v10 = 0;
              for ( i = 0; i < v7; ++i )
              {
                *(_WORD *)(v9 + v10) = FT_Stream_GetShort((int)a2);
                Short = FT_Stream_GetShort((int)a2);
                *(_WORD *)(v9 + v10 + 2) = Short;
                if ( dword_A35544 > 2 )
                  FT_Message(
                    "gaspRange %d: rangeMaxPPEM %5d, rangeGaspBehavior 0x%x\n",
                    i,
                    *(unsigned __int16 *)(v9 + v10),
                    Short);
                v10 += 4;
              }
            }
            FT_Stream_ExitFrame(a2);
            return v13;
          }
        }
      }
      else
      {
        *(_WORD *)(a1 + 550) = 0;
        return 8;
      }
    }
  }
  return v5;
}


// ===== 723f24 Load_SBit_Const_Metrics =====
bool __fastcall Load_SBit_Const_Metrics(int a1, int *a2)
{
  int v4; // r0
  int v5; // r3
  int v7; // [sp+4h] [bp-8h] BYREF

  v4 = FT_Stream_ReadLong(a2, &v7);
  v5 = v7;
  *(_DWORD *)(a1 + 12) = v4;
  if ( !v5 )
    return FT_Stream_ReadFields(a2, (int)&sbit_metrics_fields, a1 + 16) != 0;
  return v5;
}


// ===== 723f80 Load_SBit_Range_Codes =====
int __fastcall Load_SBit_Range_Codes(_DWORD *a1, int *a2, int a3)
{
  int v6; // r10
  int v7; // r0
  int v8; // r12
  int v9; // r6
  unsigned int v10; // r9
  int v11; // r0
  int i; // r8
  int v14; // r10
  int v15; // r10
  int v16; // r9
  int v17; // r0
  int v18; // [sp+Ch] [bp-4h] BYREF

  v6 = a2[7];
  v7 = FT_Stream_ReadLong(a2, &v18);
  v8 = v18;
  v9 = v7;
  if ( !v18 )
  {
    a1[6] = v7;
    if ( a3 )
    {
      v17 = ft_mem_realloc(v6, 4, 0, v7, 0, &v18);
      v8 = v18;
      a1[7] = v17;
      if ( v8 )
        return v8;
      v10 = 4 * v9;
    }
    else
    {
      v10 = 2 * v7;
    }
    v11 = ft_mem_realloc(v6, 2, 0, v9, 0, &v18);
    v8 = v18;
    a1[8] = v11;
    if ( !v8 )
    {
      v8 = FT_Stream_EnterFrame((int)a2, v10);
      v18 = v8;
      if ( !v8 )
      {
        if ( v9 )
        {
          for ( i = 0; i != v9; ++i )
          {
            while ( 1 )
            {
              v14 = a1[8];
              *(_WORD *)(v14 + 2 * i) = FT_Stream_GetShort((int)a2);
              if ( a3 )
                break;
              if ( v9 == ++i )
                goto LABEL_13;
            }
            v15 = a1[7];
            v16 = a1[2];
            *(_DWORD *)(v15 + 4 * i) = v16 + (unsigned __int16)FT_Stream_GetShort((int)a2);
          }
        }
LABEL_13:
        FT_Stream_ExitFrame(a2);
        return v18;
      }
    }
  }
  return v8;
}


// ===== 7240c0 tt_face_load_eblc =====
int __fastcall tt_face_load_eblc(int a1, int *a2)
{
  int v3; // r6
  int v5; // r8
  int v6; // r12
  int Long; // r7
  unsigned int v9; // r9
  _BOOL4 v10; // r12
  int v11; // r0
  int v12; // r7
  unsigned int v13; // r11
  int v14; // r7
  int v15; // r5
  int v16; // r0
  int v17; // r6
  int v18; // r10
  int v19; // r6
  unsigned __int16 *v20; // r5
  int v21; // r10
  int SBit_Const_Metrics; // r0
  int v23; // r12
  int v24; // r0
  unsigned int v25; // r2
  unsigned int v26; // r3
  unsigned int v27; // r3
  _BOOL4 v28; // r8
  unsigned int v29; // r7
  int v30; // r1
  unsigned int v31; // r9
  unsigned int v32; // r6
  _BOOL4 v33; // r10
  int Short; // r0
  int v35; // r7
  int v36; // r8
  int v37; // r11
  int v38; // [sp+14h] [bp-20h]
  int v39; // [sp+18h] [bp-1Ch]
  unsigned int v40; // [sp+1Ch] [bp-18h]
  int v41; // [sp+20h] [bp-14h]
  int v42; // [sp+24h] [bp-10h]
  int v43; // [sp+28h] [bp-Ch] BYREF
  int v44[2]; // [sp+2Ch] [bp-8h] BYREF

  v44[0] = 0;
  v3 = a2[7];
  *(_DWORD *)(a1 + 612) = 0;
  v44[0] = (*(int (__fastcall **)(int, int, int *, _DWORD))(a1 + 508))(a1, 1161972803, a2, 0);
  if ( !v44[0]
    || (v6 = (*(int (__fastcall **)(int, int, int *, _DWORD))(a1 + 508))(a1, 1651273571, a2, 0), (v44[0] = v6) == 0) )
  {
    v5 = FT_Stream_Pos((int)a2);
    v6 = FT_Stream_EnterFrame((int)a2, 8u);
    v44[0] = v6;
    if ( !v6 )
    {
      Long = FT_Stream_GetLong((int)a2);
      v9 = FT_Stream_GetLong((int)a2);
      FT_Stream_ExitFrame(a2);
      v10 = Long != 0x20000;
      if ( v9 >= 0x10000 )
        v10 = 1;
      if ( v10 )
      {
        FT_Message("tt_face_load_sbit_strikes: invalid table version!\n");
        return 3;
      }
      else
      {
        v11 = ft_mem_realloc(v3, 48, 0, v9, 0, v44);
        v6 = v44[0];
        v12 = v11;
        *(_DWORD *)(a1 + 616) = v11;
        if ( !v6 )
        {
          *(_DWORD *)(a1 + 612) = v9;
          v6 = FT_Stream_EnterFrame((int)a2, 48 * v9);
          v44[0] = v6;
          if ( !v6 )
          {
            if ( v9 )
            {
              v13 = v9;
              while ( 1 )
              {
                v44[0] = FT_Stream_ReadFields(a2, (int)&strike_start_fields_9855, v12);
                if ( v44[0] )
                  break;
                v44[0] = FT_Stream_ReadFields(a2, (int)&sbit_line_metrics_fields_9854, v12 + 16);
                if ( v44[0] )
                  break;
                v44[0] = FT_Stream_ReadFields(a2, (int)&sbit_line_metrics_fields_9854, v12 + 28);
                if ( v44[0] )
                  break;
                v44[0] = FT_Stream_ReadFields(a2, (int)&strike_end_fields_9856, v12);
                if ( v44[0] )
                  break;
                if ( !--v13 )
                  break;
                v12 += 48;
              }
              FT_Stream_ExitFrame(a2);
              v40 = v9;
              v14 = *(_DWORD *)(a1 + 616) + 48;
              v39 = v3;
              while ( 1 )
              {
                v15 = *(_DWORD *)(v14 - 48);
                v6 = FT_Stream_Seek(a2, v5 + *(_DWORD *)(v14 - 40));
                v44[0] = v6;
                if ( v6 )
                  break;
                v6 = FT_Stream_EnterFrame((int)a2, 8 * *(_DWORD *)(v14 - 48));
                v44[0] = v6;
                if ( v6 )
                  break;
                v16 = ft_mem_realloc(v39, 40, 0, *(_DWORD *)(v14 - 48), 0, v44);
                *(_DWORD *)(v14 - 44) = v16;
                v6 = v44[0];
                v17 = v16;
                if ( v44[0] )
                  break;
                for ( ; v15; v17 += 40 )
                {
                  *(_WORD *)v17 = FT_Stream_GetShort((int)a2);
                  *(_WORD *)(v17 + 2) = FT_Stream_GetShort((int)a2);
                  v18 = *(_DWORD *)(v14 - 40);
                  --v15;
                  *(_DWORD *)(v17 + 36) = v5 + v18 + FT_Stream_GetLong((int)a2);
                }
                FT_Stream_ExitFrame(a2);
                v19 = *(_DWORD *)(v14 - 48);
                v20 = *(unsigned __int16 **)(v14 - 44);
                if ( v19 )
                {
                  v38 = v14;
                  v21 = v5;
                  while ( 1 )
                  {
                    SBit_Const_Metrics = FT_Stream_Seek(a2, *((_DWORD *)v20 + 9));
                    v44[0] = SBit_Const_Metrics;
                    if ( SBit_Const_Metrics )
                      return SBit_Const_Metrics;
                    SBit_Const_Metrics = FT_Stream_EnterFrame((int)a2, 8u);
                    v44[0] = SBit_Const_Metrics;
                    if ( SBit_Const_Metrics )
                      return SBit_Const_Metrics;
                    v20[2] = FT_Stream_GetShort((int)a2);
                    v20[3] = FT_Stream_GetShort((int)a2);
                    *((_DWORD *)v20 + 2) = FT_Stream_GetLong((int)a2);
                    FT_Stream_ExitFrame(a2);
                    v23 = v20[2];
                    v24 = a2[7];
                    switch ( v20[2] )
                    {
                      case 1u:
                      case 3u:
                        v25 = v20[1];
                        v26 = *v20;
                        if ( v25 < v26 )
                          return 3;
                        v27 = v25 + 1 - v26;
                        *((_DWORD *)v20 + 6) = v27;
                        v28 = v23 == 1;
                        v29 = v27 + 1;
                        *((_DWORD *)v20 + 7) = ft_mem_realloc(v24, 4, 0, v27 + 1, 0, &v43);
                        SBit_Const_Metrics = v43;
                        if ( v28 )
                          v30 = 4;
                        else
                          v30 = 2;
                        if ( v43 )
                          return SBit_Const_Metrics;
                        SBit_Const_Metrics = FT_Stream_EnterFrame((int)a2, v29 * v30);
                        v43 = SBit_Const_Metrics;
                        if ( SBit_Const_Metrics )
                          return SBit_Const_Metrics;
                        if ( v29 )
                        {
                          v41 = v19;
                          v42 = v21;
                          v31 = 0;
                          v32 = v29;
                          v33 = v28;
                          do
                          {
                            v35 = *((_DWORD *)v20 + 7);
                            v36 = *((_DWORD *)v20 + 2);
                            v37 = 4 * v31;
                            if ( v33 )
                              Short = FT_Stream_GetLong((int)a2);
                            else
                              Short = (unsigned __int16)FT_Stream_GetShort((int)a2);
                            ++v31;
                            *(_DWORD *)(v35 + v37) = Short + v36;
                          }
                          while ( v32 > v31 );
                          v19 = v41;
                          v21 = v42;
                        }
                        FT_Stream_ExitFrame(a2);
                        SBit_Const_Metrics = v43;
                        goto LABEL_35;
                      case 2u:
                        SBit_Const_Metrics = Load_SBit_Const_Metrics((int)v20, a2);
                        v43 = SBit_Const_Metrics;
                        goto LABEL_35;
                      case 4u:
                        SBit_Const_Metrics = Load_SBit_Range_Codes(v20, a2, 1);
                        v43 = SBit_Const_Metrics;
                        goto LABEL_35;
                      case 5u:
                        SBit_Const_Metrics = Load_SBit_Const_Metrics((int)v20, a2);
                        v43 = SBit_Const_Metrics;
                        if ( SBit_Const_Metrics )
                          return SBit_Const_Metrics;
                        SBit_Const_Metrics = Load_SBit_Range_Codes(v20, a2, 0);
                        v43 = SBit_Const_Metrics;
LABEL_35:
                        v44[0] = SBit_Const_Metrics;
                        if ( SBit_Const_Metrics )
                          return SBit_Const_Metrics;
                        if ( !--v19 )
                        {
                          v14 = v38;
                          v5 = v21;
                          goto LABEL_55;
                        }
                        v20 += 20;
                        break;
                      default:
                        return 3;
                    }
                  }
                }
LABEL_55:
                v14 += 48;
                if ( !--v40 )
                  return v44[0];
              }
            }
            else
            {
              FT_Stream_ExitFrame(a2);
              return v44[0];
            }
          }
        }
      }
    }
  }
  return v6;
}


// ===== 724618 tt_face_load_font_dir =====
int __fastcall tt_face_load_font_dir(int a1, int *a2)
{
  int v4; // r10
  int v5; // r0
  int Fields; // r3
  int v8; // r11
  int v9; // r0
  unsigned int v10; // r11
  unsigned int i; // r9
  int v12; // r2
  int v13; // r0
  int v14; // r3
  bool v15; // zf
  int v16; // r0
  int v17; // r3
  int v19; // r2
  int v20; // r0
  int *v21; // r7
  int *j; // r8
  int Long; // r0
  _DWORD v24[4]; // [sp+18h] [bp-5Ch] BYREF
  int v25; // [sp+2Ch] [bp-48h]
  int v26; // [sp+44h] [bp-30h]
  int v27; // [sp+48h] [bp-2Ch] BYREF
  int v28; // [sp+50h] [bp-24h]
  unsigned int v29; // [sp+54h] [bp-20h]
  int v30; // [sp+58h] [bp-1Ch] BYREF
  unsigned __int16 v31; // [sp+5Ch] [bp-18h]
  int v32; // [sp+64h] [bp-10h]
  int v33; // [sp+68h] [bp-Ch] BYREF
  int v34; // [sp+6Ch] [bp-8h] BYREF

  v4 = a2[7];
  if ( dword_A35544 > 1 )
    FT_Message("tt_face_load_font_dir: %08p\n", (const void *)a1);
  v32 = FT_Stream_Pos((int)a2);
  v5 = FT_Stream_ReadLong(a2, &v34);
  Fields = v34;
  if ( v34 )
    return Fields;
  v30 = v5;
  Fields = FT_Stream_ReadFields(a2, (int)&offset_table_fields_4603, (int)&v30);
  v34 = Fields;
  if ( Fields )
    return Fields;
  if ( dword_A35544 > 1 )
  {
    FT_Message("-- Tables count:   %12u\n", v31);
    if ( dword_A35544 > 1 )
      FT_Message("-- Format version: %08lx\n", v30);
  }
  v8 = v32;
  if ( v31 && v32 + 12 + 16 * (unsigned int)v31 <= a2[1] )
  {
    v9 = FT_Stream_Seek(a2, v32 + 12);
    v33 = v9;
    if ( v9 )
      goto LABEL_12;
    if ( v31 )
    {
      BYTE1(v24[3]) = 0;
      HIWORD(v24[3]) = 0;
      v26 = 0;
      v25 = 0;
      v10 = v8 + 28;
      strcpy((char *)v24, "xylgdehbdaeh");
      for ( i = 1; ; ++i )
      {
        v9 = FT_Stream_ReadFields(a2, (int)&table_dir_entry_fields_4525, (int)&v27);
        v33 = v9;
        if ( v9 )
          goto LABEL_12;
        if ( v29 + v28 > a2[1] )
          break;
        v12 = v27;
        v15 = v27 == v24[2];
        if ( v27 != v24[2] )
          v15 = v27 == v24[1];
        if ( !v15 )
        {
          if ( v27 == 1397313095 )
          {
            v26 = 1;
            goto LABEL_26;
          }
          goto LABEL_23;
        }
        if ( v29 <= 0x35 )
          goto LABEL_40;
        v16 = FT_Stream_Seek(a2, v28 + 12);
        v33 = v16;
        if ( v16 || (v17 = FT_Stream_ReadLong(a2, &v33), (v16 = v33) != 0) )
        {
          v34 = v16;
          goto LABEL_13;
        }
        if ( v17 != 1594834165 )
        {
LABEL_40:
          v9 = 2;
          goto LABEL_12;
        }
        v9 = FT_Stream_Seek(a2, v10);
        v33 = v9;
        if ( v9 )
          goto LABEL_12;
        v25 = 1;
LABEL_26:
        v14 = v31;
        v10 += 16;
        if ( i >= v31 )
        {
          if ( !v25 && !(v24[3] ? v26 : 0) )
            goto LABEL_11;
          v19 = v30;
          *(_WORD *)(a1 + 152) = v31;
          *(_DWORD *)(a1 + 148) = v19;
          v34 = 0;
          v20 = ft_mem_realloc(v4, 16, 0, v14, 0, &v34);
          Fields = v34;
          *(_DWORD *)(a1 + 156) = v20;
          if ( Fields )
            return Fields;
          Fields = FT_Stream_Seek(a2, v32 + 12);
          v34 = Fields;
          if ( Fields )
            return Fields;
          Fields = FT_Stream_EnterFrame((int)a2, 16 * *(unsigned __int16 *)(a1 + 152));
          v34 = Fields;
          if ( Fields )
            return Fields;
          v21 = *(int **)(a1 + 156);
          for ( j = &v21[4 * *(unsigned __int16 *)(a1 + 152)]; j > v21; v21 += 4 )
          {
            *v21 = FT_Stream_GetLong((int)a2);
            v21[1] = FT_Stream_GetLong((int)a2);
            v21[2] = FT_Stream_GetLong((int)a2);
            Long = FT_Stream_GetLong((int)a2);
            v21[3] = Long;
            if ( dword_A35544 > 1 )
              FT_Message(
                "  %c%c%c%c  -  %08lx  -  %08lx\n",
                *v21 >> 24,
                *v21 << 8 >> 24,
                (__int16)*v21 >> 8,
                (char)*v21,
                v21[2],
                Long);
          }
          FT_Stream_ExitFrame(a2);
          if ( dword_A35544 > 1 )
          {
            FT_Message("table directory loaded\n\n");
            return v34;
          }
          return v34;
        }
      }
      if ( v27 == v24[0] )
      {
        v12 = v24[0];
      }
      else
      {
        if ( v27 != 1819239288 )
          goto LABEL_40;
        v12 = 1819239288;
      }
LABEL_23:
      v13 = v24[3];
      if ( v12 == 1296389185 )
        v13 = 1;
      v24[3] = v13;
      goto LABEL_26;
    }
  }
LABEL_11:
  v9 = 2;
LABEL_12:
  v34 = v9;
LABEL_13:
  if ( dword_A35544 > 1 )
    FT_Message("tt_face_load_font_dir: invalid table directory!\n");
  return v34;
}


// ===== 724af4 load_post_names =====
int __fastcall load_post_names(int a1)
{
  int *v1; // r6
  int v2; // r4
  int v3; // r5
  int v5; // r7
  int v6; // r10
  unsigned __int16 v7; // r0
  int v8; // r3
  signed int v9; // r7
  bool v10; // cc
  char *v11; // r8
  int v12; // r3
  int v13; // r8
  unsigned __int16 Short; // r0
  int v15; // r10
  int v16; // r11
  int v17; // r9
  int v18; // r2
  int v19; // r9
  int v20; // r3
  int v21; // r1
  int v22; // r0
  int v23; // r11
  int v24; // r5
  void *v25; // r0
  int v26; // r3
  size_t Char; // r4
  int v28; // r5
  int v29; // [sp+8h] [bp-24h]
  int v30; // [sp+Ch] [bp-20h]
  int v31; // [sp+10h] [bp-1Ch]
  int v32; // [sp+14h] [bp-18h]
  __int16 v33; // [sp+18h] [bp-14h]
  int v34[2]; // [sp+24h] [bp-8h] BYREF

  v1 = *(int **)(a1 + 104);
  v2 = a1;
  v3 = (*(int (__fastcall **)(int, int, int *, _DWORD))(a1 + 508))(a1, 1886352244, v1, 0);
  if ( !v3 )
  {
    v5 = *(_DWORD *)(v2 + 468);
    v3 = FT_Stream_Skip(v1, 32);
    if ( !v3 )
    {
      if ( v5 == 0x20000 )
      {
        v13 = v1[7];
        Short = FT_Stream_ReadShort(v1, v34);
        v3 = v34[0];
        if ( v34[0] )
          goto LABEL_7;
        v15 = Short;
        if ( Short <= (int)*(unsigned __int16 *)(v2 + 264) )
        {
          v29 = ft_mem_realloc(v13, 2, v34[0], Short, v34[0], v34);
          if ( v34[0] || (v16 = 2 * v15, (v34[0] = FT_Stream_EnterFrame((int)v1, 2 * v15)) != 0) )
          {
            ft_mem_free(v13, 0);
          }
          else
          {
            if ( v15 )
            {
              v17 = 0;
              do
              {
                *(_WORD *)(v29 + v17) = FT_Stream_GetShort((int)v1);
                v17 += 2;
              }
              while ( v17 != v16 );
              FT_Stream_ExitFrame(v1);
              v18 = 0;
              v19 = 0;
              do
              {
                v20 = v19;
                v21 = *(unsigned __int16 *)(v29 + v18) - 257;
                if ( *(unsigned __int16 *)(v29 + v18) > 0x101u && v21 > v19 )
                {
                  v19 = (unsigned __int16)v21;
                  v20 = (unsigned __int16)v21;
                }
                v18 += 2;
              }
              while ( v16 != v18 );
            }
            else
            {
              FT_Stream_ExitFrame(v1);
              v19 = 0;
              v20 = 0;
            }
            v22 = ft_mem_realloc(v13, 4, 0, v20, 0, v34);
            v23 = v34[0];
            v32 = v22;
            v31 = v22;
            if ( !v34[0] )
            {
              if ( !v19 )
              {
LABEL_49:
                *(_WORD *)(v2 + 632) = v15;
                *(_WORD *)(v2 + 634) = v19;
                *(_DWORD *)(v2 + 636) = v29;
                *(_DWORD *)(v2 + 640) = v32;
                goto LABEL_7;
              }
              v33 = v15;
              v30 = 4 * ((unsigned __int16)(v19 - 1) + 1);
              v15 = v2;
              v24 = v22;
              while ( 1 )
              {
                Char = (unsigned __int8)FT_Stream_ReadChar(v1, v34);
                if ( v34[0] )
                  break;
                v25 = (void *)ft_mem_realloc(v13, 1, 0, Char + 1, 0, v34);
                *(_DWORD *)(v24 + v23) = v25;
                if ( v34[0] )
                  break;
                v34[0] = FT_Stream_Read(v1, v25, Char);
                if ( v34[0] )
                  break;
                v26 = *(_DWORD *)(v24 + v23);
                v23 += 4;
                *(_BYTE *)(v26 + Char) = 0;
                if ( v23 == v30 )
                {
                  v3 = 0;
                  v2 = v15;
                  LOWORD(v15) = v33;
                  goto LABEL_49;
                }
              }
              v2 = v15;
              v28 = 0;
              do
              {
                ft_mem_free(v13, *(_DWORD *)(v32 + v28));
                *(_DWORD *)(v32 + v28) = 0;
                v28 += 4;
              }
              while ( v30 != v28 );
            }
            ft_mem_free(v13, v31);
          }
          ft_mem_free(v13, v29);
          v3 = v34[0];
LABEL_7:
          *(_BYTE *)(v2 + 628) = 1;
          return v3;
        }
LABEL_6:
        v3 = 3;
        goto LABEL_7;
      }
      if ( v5 != 163840 )
        goto LABEL_6;
      v6 = v1[7];
      v7 = FT_Stream_ReadShort(v1, v34);
      v3 = v34[0];
      if ( v34[0] )
        goto LABEL_7;
      v8 = *(unsigned __int16 *)(v2 + 264);
      v9 = v7;
      v10 = v7 <= v8;
      if ( v7 <= v8 )
        v10 = v7 <= 0x102u;
      if ( !v10 )
        goto LABEL_6;
      v11 = (char *)ft_mem_realloc(v6, 1, v34[0], v7, v34[0], v34);
      if ( !v34[0] )
      {
        v34[0] = FT_Stream_Read(v1, v11, v9);
        if ( !v34[0] )
        {
          if ( !v9 )
          {
LABEL_21:
            *(_WORD *)(v2 + 632) = v9;
            *(_DWORD *)(v2 + 636) = v11;
            goto LABEL_7;
          }
          if ( !((v9 < *v11) | ((unsigned int)*v11 >> 31)) )
          {
            v12 = 0;
            while ( v9 > ++v12 )
            {
              if ( (v9 < v12 + v11[v12]) | ((unsigned int)(v12 + v11[v12]) >> 31) )
                goto LABEL_46;
            }
            goto LABEL_21;
          }
LABEL_46:
          v34[0] = 3;
        }
      }
      ft_mem_free(v6, (int)v11);
      v3 = v34[0];
      goto LABEL_7;
    }
  }
  return v3;
}


// ===== 724eec tt_face_get_ps_name =====
int __fastcall tt_face_get_ps_name(int a1, unsigned int a2, _DWORD *a3)
{
  int v6; // r6
  int v7; // r3
  unsigned int v9; // r0

  if ( !a1 )
    return 35;
  if ( *(unsigned __int16 *)(a1 + 264) <= a2 )
    return 16;
  v6 = *(_DWORD *)(a1 + 536);
  if ( !v6 )
    return 7;
  *a3 = (*(int (__fastcall **)(_DWORD))(v6 + 16))(0);
  v7 = *(_DWORD *)(a1 + 468);
  if ( v7 == 0x10000 )
  {
    if ( a2 > 0x101 )
      return 0;
    *a3 = (*(int (__fastcall **)(unsigned int))(v6 + 16))(a2);
    return 0;
  }
  else
  {
    if ( v7 != 0x20000 )
    {
      if ( v7 == 163840 && (*(_BYTE *)(a1 + 628) || !load_post_names(a1)) && a2 < *(unsigned __int16 *)(a1 + 632) )
      {
        v9 = *(char *)(*(_DWORD *)(a1 + 636) + a2) + a2;
LABEL_13:
        *a3 = (*(int (__fastcall **)(unsigned int))(v6 + 16))(v9);
        return 0;
      }
      return 0;
    }
    if ( !*(_BYTE *)(a1 + 628) && load_post_names(a1) || a2 >= *(unsigned __int16 *)(a1 + 632) )
      return 0;
    v9 = *(unsigned __int16 *)(*(_DWORD *)(a1 + 636) + 2 * a2);
    if ( v9 <= 0x101 )
      goto LABEL_13;
    *a3 = *(_DWORD *)(*(_DWORD *)(a1 + 640) + 4 * (v9 - 258));
    return 0;
  }
}


// ===== 725040 tt_face_get_name =====
int __fastcall tt_face_get_name(int a1, int a2)
{
  unsigned int v2; // r3
  int v4; // r11
  int v5; // r0
  int v6; // r6
  unsigned int v7; // r4
  int v8; // r2
  _BOOL4 v9; // r10
  int v10; // r7
  unsigned int v11; // r8
  int v12; // r9
  int v13; // r7
  int (__fastcall *v14)(int, int); // r4
  _DWORD *v16; // r5
  int v17; // [sp+1Ch] [bp-8h] BYREF

  v2 = *(unsigned __int16 *)(a1 + 344);
  v4 = *(_DWORD *)(a1 + 100);
  v5 = *(_DWORD *)(a1 + 360);
  if ( v2 )
  {
    v6 = -1;
    v7 = 0;
    v8 = v5 + 20;
    v9 = 0;
    v10 = -1;
    v11 = -1;
    v12 = -1;
    do
    {
      if ( *(unsigned __int16 *)(v8 - 14) == a2 && *(_WORD *)(v8 - 12) )
      {
        switch ( *(_WORD *)(v8 - 20) )
        {
          case 0:
          case 2:
            v6 = v7;
            break;
          case 1:
            if ( *(_WORD *)(v8 - 16) )
            {
              if ( !*(_WORD *)(v8 - 18) )
                v12 = v7;
            }
            else
            {
              v11 = v7;
            }
            break;
          case 3:
            if ( (v10 == -1 || (*(_WORD *)(v8 - 16) & 0x3FF) == 9)
              && *(unsigned __int16 *)(v8 - 18) <= 0xAu
              && ((1 << *(_WORD *)(v8 - 18)) & 0x403) != 0 )
            {
              v10 = v7;
              v9 = (*(_WORD *)(v8 - 16) & 0x3FF) == 9;
            }
            break;
          default:
            break;
        }
      }
      ++v7;
      v8 += 20;
    }
    while ( v2 > (unsigned __int16)v7 );
    if ( v11 != -1 )
    {
      if ( v10 != -1 )
        goto LABEL_9;
LABEL_31:
      if ( v11 == -1 )
      {
        if ( v6 == -1 )
          return 0;
        v13 = v5 + 20 * v6;
        v14 = tt_name_entry_ascii_from_utf16;
LABEL_11:
        if ( v13 )
          goto LABEL_12;
        return 0;
      }
LABEL_10:
      v13 = v5 + 20 * v11;
      v14 = tt_name_entry_ascii_from_other;
      goto LABEL_11;
    }
  }
  else
  {
    v12 = -1;
    v9 = 0;
    v10 = -1;
    v6 = -1;
  }
  v11 = v12;
  if ( v10 == -1 )
    goto LABEL_31;
LABEL_9:
  if ( !(v9 | (v11 >> 31)) )
    goto LABEL_10;
  v13 = v5 + 20 * v10;
  if ( *(unsigned __int16 *)(v13 + 2) > 0xAu )
    return 0;
  if ( ((1 << *(_WORD *)(v13 + 2)) & 0x403) == 0 )
    return 0;
  v14 = tt_name_entry_ascii_from_utf16;
  if ( !v13 )
    return 0;
LABEL_12:
  if ( *(_DWORD *)(v13 + 16) )
    return v14(v13, v4);
  v17 = 0;
  v16 = *(_DWORD **)(a1 + 364);
  *(_DWORD *)(v13 + 16) = ft_mem_realloc(v4, 1, 0, *(unsigned __int16 *)(v13 + 8), 0, &v17);
  if ( !v17 )
  {
    v17 = FT_Stream_Seek(v16, *(_DWORD *)(v13 + 12));
    if ( !v17 )
    {
      v17 = FT_Stream_Read(v16, *(void **)(v13 + 16), *(unsigned __int16 *)(v13 + 8));
      if ( !v17 )
        return v14(v13, v4);
    }
  }
  ft_mem_free(v4, *(_DWORD *)(v13 + 16));
  *(_WORD *)(v13 + 8) = 0;
  *(_DWORD *)(v13 + 16) = 0;
  return 0;
}


// ===== 7252ec Load_SBit_Image =====
int __fastcall Load_SBit_Image(
        int a1,
        unsigned __int16 *a2,
        int a3,
        int a4,
        int a5,
        int a6,
        unsigned int a7,
        int *a8,
        unsigned __int8 *a9,
        int a10)
{
  int *v10; // r5
  int v14; // r10
  int sbit_metrics; // r4
  int v17; // r3
  int v18; // r1
  signed int v19; // r1
  unsigned int v20; // r2
  int v21; // r3
  unsigned __int16 Short; // r0
  int v23; // r9
  int v24; // r0
  unsigned __int16 *v25; // r7
  unsigned int v26; // r9
  unsigned __int16 *v27; // r4
  unsigned int v28; // r4
  int i; // r0
  unsigned __int16 *v30; // r3
  int v31; // r7
  int v32; // r0
  int v33; // r12
  int v34; // r9
  unsigned int v35; // r1
  int v36; // r0
  int v37; // r1
  int v38; // r2
  int v39; // r3
  unsigned __int8 *v40; // r6
  int v41; // r10
  unsigned int v42; // r0
  int v43; // r12
  unsigned int v44; // r2
  unsigned __int8 *v45; // r8
  int v46; // r11
  unsigned int v47; // r1
  int v48; // r3
  unsigned __int8 *v49; // lr
  unsigned __int8 *v50; // r3
  unsigned __int8 *v51; // t1
  char v52; // r0
  int v53; // r5
  int v54; // r0
  int v55; // r0
  int v56; // r5
  __int16 v57; // t1
  char v58; // r0
  int v59; // r0
  int v60; // r4
  int v61; // [sp+18h] [bp-34h]
  unsigned __int8 *v62; // [sp+1Ch] [bp-30h]
  int v63; // [sp+20h] [bp-2Ch]
  int v64; // [sp+24h] [bp-28h]
  int v65; // [sp+24h] [bp-28h]
  char v66[8]; // [sp+34h] [bp-18h] BYREF
  int v67; // [sp+3Ch] [bp-10h] BYREF
  unsigned __int16 *v68; // [sp+40h] [bp-Ch] BYREF
  int v69[2]; // [sp+44h] [bp-8h] BYREF

  v10 = a8;
  v14 = a8[7];
  sbit_metrics = FT_Stream_Seek(a8, a4 + a3);
  v69[0] = sbit_metrics;
  if ( !sbit_metrics )
  {
    sbit_metrics = tt_load_sbit_metrics(a8, a2, a9);
    v69[0] = sbit_metrics;
    if ( !sbit_metrics )
    {
      if ( a10 )
        goto LABEL_9;
      v17 = a9[1];
      *(_DWORD *)(a5 + 80) = v17;
      v18 = *a9;
      *(_DWORD *)(a5 + 76) = v18;
      switch ( *(_BYTE *)(a1 + 46) )
      {
        case 1:
          v17 = (v17 + 7) >> 3;
          *(_BYTE *)(a5 + 94) = 1;
          *(_DWORD *)(a5 + 84) = v17;
          break;
        case 2:
          v17 = (v17 + 3) >> 2;
          *(_BYTE *)(a5 + 94) = 3;
          *(_DWORD *)(a5 + 84) = v17;
          break;
        case 4:
          v17 = (v17 + 1) >> 1;
          *(_BYTE *)(a5 + 94) = 4;
          *(_DWORD *)(a5 + 84) = v17;
          break;
        case 8:
          *(_BYTE *)(a5 + 94) = 2;
          *(_DWORD *)(a5 + 84) = v17;
          break;
        default:
          return 3;
      }
      v19 = v18 * v17;
      if ( !v19 )
        return v69[0];
      sbit_metrics = ft_glyphslot_alloc_bitmap((_DWORD *)a5, v19);
      v69[0] = sbit_metrics;
      if ( !sbit_metrics )
      {
LABEL_9:
        v20 = a2[3];
        if ( v20 <= 9 )
        {
          v21 = 1 << v20;
          if ( ((1 << v20) & 0xE6) != 0 )
          {
            v31 = *(unsigned __int8 *)(a1 + 46);
            if ( a6 < 0 )
              return 6;
            v32 = a9[1];
            if ( (a6 + v32 > *(_DWORD *)(a5 + 80)) | (a7 >> 31) )
              return 6;
            v33 = *a9;
            if ( (signed int)(a7 + v33) > *(_DWORD *)(a5 + 76) )
              return 6;
            v34 = v31 * v32;
            if ( v20 > 7 )
              return 3;
            if ( (v21 & 0xA4) != 0 )
            {
              v65 = 0;
              v35 = (v33 * v34 + 7) >> 3;
            }
            else
            {
              if ( (v21 & 0x42) == 0 )
                return 3;
              switch ( v31 )
              {
                case 2:
                  v32 = (v32 + 3) >> 2;
                  break;
                case 4:
                  v32 = (v32 + 1) >> 1;
                  break;
                case 1:
                  v32 = (v32 + 7) >> 3;
                  break;
              }
              v35 = v33 * v32;
              v65 = 1;
            }
            v36 = FT_Stream_EnterFrame((int)a8, v35);
            sbit_metrics = v36;
            if ( !v36 )
            {
              v61 = *(_DWORD *)(a5 + 84);
              v38 = *(_DWORD *)(a5 + 76);
              if ( v61 < 0 )
                v36 = *(_DWORD *)(a5 + 84);
              v39 = *(_DWORD *)(a5 + 88);
              if ( v61 < 0 )
                v37 = 1 - v38;
              v40 = (unsigned __int8 *)a8[8];
              if ( v61 < 0 )
                v39 += v36 * v37;
              v41 = *(_DWORD *)(a5 + 76);
              if ( v38 > 0 )
              {
                v42 = (unsigned int)(v34 - 8) >> 3;
                v43 = (v31 * a6) & 7;
                v44 = 0;
                v63 = v34 - 8 - 8 * v42;
                v45 = (unsigned __int8 *)(v39 + ((v31 * a6) >> 3) + v61 * a7);
                v46 = (unsigned __int8)(8 - v43);
                v47 = 0;
                v62 = (unsigned __int8 *)(v42 + 2);
                while ( 1 )
                {
                  if ( v34 > 7 )
                  {
                    v49 = v62;
                    v50 = v45 + 1;
                    do
                    {
                      if ( v44 <= 7 )
                      {
                        v51 = (unsigned __int8 *)*v40++;
                        v49 = v51;
                      }
                      v52 = 8 - v44;
                      if ( v44 <= 7 )
                      {
                        v44 += 8;
                        v47 = (unsigned __int16)(v47 | ((_WORD)v49 << v52));
                      }
                      v53 = *(v50 - 1);
                      if ( v43 )
                        v31 = *v50;
                      v54 = v47 >> 8;
                      if ( v43 )
                      {
                        v56 = v53 | (v54 >> v43);
                        v55 = v31 | (v54 << v46);
                        v49 = v50;
                        *(v50 - 1) = v56;
                        *v50 = v55;
                      }
                      else
                      {
                        LOBYTE(v55) = BYTE1(v47) | v53;
                      }
                      if ( !v43 )
                      {
                        v49 = v50;
                        *(v50 - 1) = v55;
                      }
                      ++v50;
                      v47 = (unsigned __int16)((_WORD)v47 << 8);
                      v44 -= 8;
                    }
                    while ( v50 != &v45[(_DWORD)v62] );
                    v48 = v63;
                  }
                  else
                  {
                    v48 = v34;
                    v49 = v45;
                  }
                  if ( v48 > 0 )
                  {
                    if ( v48 > (int)v44 )
                    {
                      v57 = *v40++;
                      v58 = 8 - v44;
                      v44 += 8;
                      v47 = (unsigned __int16)(v47 | (v57 << v58));
                    }
                    v59 = ~(255 >> v48) & (v47 >> 8);
                    v60 = *v49 | (v59 >> v43);
                    *v49 = v60;
                    if ( v48 > v46 )
                      v60 = v49[1];
                    v47 <<= v48;
                    if ( v48 > v46 )
                      v59 = v60 | (v59 << v46);
                    v44 -= v48;
                    if ( v48 > v46 )
                      v49[1] = v59;
                    v47 = (unsigned __int16)v47;
                  }
                  if ( v65 )
                  {
                    v44 = 0;
                    v47 = 0;
                  }
                  if ( !--v41 )
                    break;
                  v45 += v61;
                }
                sbit_metrics = 0;
                v10 = a8;
              }
              FT_Stream_ExitFrame(v10);
            }
            return sbit_metrics;
          }
          if ( (v21 & 0x200) != 0 )
          {
LABEL_14:
            Short = FT_Stream_ReadShort(a8, v69);
            sbit_metrics = v69[0];
            if ( !v69[0] )
            {
              v23 = Short;
              v24 = ft_mem_realloc(v14, 4, 0, Short, 0, v69);
              sbit_metrics = v69[0];
              v25 = (unsigned __int16 *)v24;
              if ( !v69[0] )
              {
                v69[0] = FT_Stream_EnterFrame((int)a8, 4 * v23);
                if ( !v69[0] )
                {
                  if ( v23 )
                  {
                    v64 = 4 * ((unsigned __int16)(v23 - 1) + 1);
                    v26 = 0;
                    do
                    {
                      v25[v26 / 2] = FT_Stream_GetShort((int)a8);
                      v27 = &v25[v26 / 2];
                      *((_BYTE *)v27 + 2) = FT_Stream_GetChar((int)a8);
                      v26 += 4;
                      *((_BYTE *)v27 + 3) = FT_Stream_GetChar((int)a8);
                    }
                    while ( v26 != v64 );
                    FT_Stream_ExitFrame(a8);
                    v28 = 0;
                    for ( i = find_sbit_range(*v25, (int *)a1, &v68, &v67);
                          ;
                          i = find_sbit_range(v25[v28 / 2], (int *)a1, &v68, &v67) )
                    {
                      v30 = &v25[v28 / 2];
                      v28 += 4;
                      v69[0] = i;
                      if ( i )
                        break;
                      v69[0] = Load_SBit_Image(
                                 a1,
                                 v68,
                                 a3,
                                 v67,
                                 a5,
                                 a6 + *((char *)v30 + 2),
                                 a7 + *((char *)v30 + 3),
                                 a8,
                                 v66,
                                 a10 + 1);
                      if ( v69[0] || v28 == v64 )
                        break;
                    }
                  }
                  else
                  {
                    FT_Stream_ExitFrame(a8);
                  }
                }
                ft_mem_free(v14, (int)v25);
                return v69[0];
              }
            }
            return sbit_metrics;
          }
          if ( (v21 & 0x100) != 0 )
          {
            FT_Stream_Skip(a8, 1);
            goto LABEL_14;
          }
        }
        return 3;
      }
    }
  }
  return sbit_metrics;
}


// ===== 725864 tt_face_load_sbit_image =====
int __fastcall tt_face_load_sbit_image(
        int a1,
        unsigned int a2,
        unsigned int a3,
        char a4,
        int *a5,
        int a6,
        unsigned __int8 *a7)
{
  int sbit_image; // r4
  int v11; // r0
  int v12; // r0
  int v13; // r2
  int v14; // r0
  int v15; // r6
  char *i; // r0
  int v17; // r5
  _BYTE *v18; // r3
  int v19; // r7
  _BYTE *v20; // r1
  unsigned __int8 v21; // r2
  unsigned __int8 v22; // r3
  char *v23; // r10
  int v24; // r12
  int v25; // r7
  char *v26; // r9
  char *v27; // r3
  int v28; // r12
  int v29; // r9
  unsigned int v30; // r4
  char v31; // r1
  char *v32; // r6
  char *v33; // r7
  char *v34; // r3
  int v35; // r2
  char v36; // r1
  unsigned int v37; // r10
  char *v38; // r3
  unsigned int v39; // t1
  char v40; // t1
  unsigned __int8 v41; // r2
  unsigned __int8 v42; // r3
  int v43; // r6
  unsigned int v44; // r3
  unsigned int v45; // r1
  int v46; // r2
  int v47; // r0
  unsigned __int8 *v48; // r3
  int v49; // r2
  int v50; // [sp+18h] [bp-1Ch]
  unsigned __int16 *v51; // [sp+24h] [bp-10h] BYREF
  int *v52; // [sp+28h] [bp-Ch] BYREF
  int v53; // [sp+2Ch] [bp-8h] BYREF

  sbit_image = tt_find_sbit_image(a1, a3, a2, &v51, &v52, &v53);
  if ( sbit_image )
    return sbit_image;
  if ( (*(int (__fastcall **)(int, int, int *, _DWORD))(a1 + 508))(a1, 1161970772, a5, 0) )
  {
    sbit_image = (*(int (__fastcall **)(int, int, int *, _DWORD))(a1 + 508))(a1, 1650745716, a5, 0);
    if ( sbit_image )
      return sbit_image;
  }
  v11 = FT_Stream_Pos((int)a5);
  sbit_image = Load_SBit_Image((int)v52, v51, v11, v53, *(_DWORD *)(a1 + 84), 0, 0, a5, a7, 0);
  if ( sbit_image )
    return sbit_image;
  if ( (*((_BYTE *)v52 + 47) & 1) != 0 )
  {
    v12 = *((char *)v52 + 16) - *((char *)v52 + 17);
    v13 = 12 * v12 / 10;
    v14 = (v12 - *a7) / 2;
    a7[5] = -((int)a7[1] >> 1);
    a7[6] = v14;
    a7[7] = v13;
  }
  if ( (a4 & 0x40) == 0 )
    return sbit_image;
  v15 = *(_DWORD *)a6;
  i = *(char **)(a6 + 12);
  v17 = *(_DWORD *)(a6 + 8);
  if ( *(int *)a6 <= 0 )
    goto LABEL_41;
  v18 = *(_BYTE **)(a6 + 12);
  v19 = 0;
  while ( 1 )
  {
    v20 = &v18[v17];
    if ( &v18[v17] > v18 )
      break;
LABEL_39:
    if ( ++v19 == v15 )
      goto LABEL_41;
    v18 = v20;
  }
  while ( !*v18 )
  {
    if ( ++v18 == v20 )
      goto LABEL_39;
  }
  if ( v15 <= v19 )
  {
LABEL_41:
    *(_BYTE *)(a6 + 18) = 1;
    *(_DWORD *)(a6 + 8) = 0;
    *(_DWORD *)(a6 + 4) = 0;
    *(_DWORD *)a6 = 0;
    return sbit_image;
  }
  if ( v19 )
  {
    v15 -= v19;
    v50 = v17 * v15;
    memmove(i, &i[v17 * v19], v17 * v15);
    v21 = a7[6] - v19;
    v22 = a7[3] - v19;
    *a7 -= v19;
    a7[3] = v22;
    a7[6] = v21;
    i = *(char **)(a6 + 12);
    *(_DWORD *)a6 -= v19;
    if ( v15 <= 0 )
      goto LABEL_25;
  }
  v23 = &i[v17 * (v15 - 1)];
  v24 = 0;
  v25 = 0;
  v26 = &v23[v17];
  while ( 1 )
  {
    v27 = &v23[v24];
    if ( &v26[v24] > &v23[v24] )
      break;
LABEL_23:
    ++v25;
    v24 -= v17;
    if ( v25 == v15 )
      goto LABEL_24;
  }
  if ( !v23[v24] )
  {
    while ( ++v27 != &v26[v24] )
    {
      if ( *v27 )
        goto LABEL_45;
    }
    goto LABEL_23;
  }
LABEL_45:
  if ( v25 )
  {
LABEL_24:
    v50 = v17 * (v15 - v25);
    *a7 -= v25;
    i = *(char **)(a6 + 12);
    *(_DWORD *)a6 -= v25;
    goto LABEL_25;
  }
  v50 = v17 * v15;
LABEL_25:
  v28 = *(_DWORD *)(a6 + 4);
  v29 = v28;
  while ( 1 )
  {
    v30 = (unsigned int)&i[v50];
    if ( &i[v50] > i )
    {
      v31 = *i;
      if ( *i < 0 )
      {
LABEL_47:
        sbit_image = 0;
        v29 = v28;
        goto LABEL_48;
      }
      v32 = &i[v17];
      v33 = &i[v17];
      v34 = &i[v17];
      while ( v30 > (unsigned int)v34 )
      {
        v35 = *v34;
        v34 += v17;
        if ( v35 < 0 )
          goto LABEL_47;
      }
      while ( 1 )
      {
        v36 = 2 * v31;
        if ( v29 > 8 )
        {
          v37 = (unsigned int)(v29 - 9) >> 3;
          v38 = i;
          do
          {
            v39 = (unsigned __int8)*++v38;
            *(v38 - 1) = v36 | (v39 >> 7);
            v36 = 2 * v39;
          }
          while ( v38 != &i[v37 + 1] );
          i += v37 + 1;
        }
        v33 += v17;
        *i = v36;
        i = v32;
        if ( v30 <= (unsigned int)&v33[-v17] )
          break;
        v29 = *(_DWORD *)(a6 + 4);
        v40 = *v32;
        v32 += v17;
        v31 = v40;
      }
      v28 = *(_DWORD *)(a6 + 4);
    }
    *(_DWORD *)(a6 + 4) = v28 - 1;
    v41 = a7[5] + 1;
    v42 = a7[1] - 1;
    ++a7[2];
    a7[5] = v41;
    a7[1] = v42;
    v28 = *(_DWORD *)(a6 + 4);
    v29 = v28;
    if ( v28 <= 0 )
      break;
    i = *(char **)(a6 + 12);
  }
  sbit_image = 0;
  for ( i = *(char **)(a6 + 12); ; i = *(char **)(a6 + 12) )
  {
LABEL_48:
    v43 = v29 - 1;
    v44 = (unsigned int)&i[(v29 - 1) >> 3];
    v45 = v44 + v50;
    if ( v44 < v44 + v50 )
    {
      v46 = (unsigned __int8)i[v43 >> 3];
      v47 = (unsigned __int8)(128 >> (v43 & 7));
      if ( (v47 & v46) != 0 )
        return sbit_image;
      v48 = (unsigned __int8 *)(v44 + v17);
      while ( (unsigned int)v48 < v45 )
      {
        v49 = *v48;
        v48 += v17;
        if ( (v47 & v49) != 0 )
          return sbit_image;
      }
    }
    *(_DWORD *)(a6 + 4) = v43;
    --a7[1];
    v29 = *(_DWORD *)(a6 + 4);
    if ( v29 <= 0 )
      break;
  }
  return sbit_image;
}


// ===== 725cb8 tt_face_load_kern =====
int __fastcall tt_face_load_kern(int a1, int a2)
{
  _DWORD *v3; // r4
  int Frame; // r5
  unsigned int v6; // r12
  unsigned __int8 *v7; // r3
  unsigned __int8 *v8; // r1
  unsigned int v9; // r6
  unsigned int v10; // r12
  unsigned __int8 *v11; // r0
  unsigned int v12; // r2
  int v13; // r7
  int v14; // r8
  int v15; // r3
  int v16; // r4
  unsigned int v17; // r5
  int v18; // r4
  unsigned int v19; // r8
  int v20; // [sp+Ch] [bp-30h]
  int v21; // [sp+10h] [bp-2Ch]
  _DWORD *v22; // [sp+18h] [bp-24h]
  unsigned int v23; // [sp+34h] [bp-8h] BYREF

  v3 = (_DWORD *)a1;
  Frame = (*(int (__fastcall **)(int, int, int, unsigned int *))(a1 + 508))(a1, 1801810542, a2, &v23);
  if ( !Frame )
  {
    if ( v23 <= 3 )
    {
      Frame = 142;
      FT_Message("kerning table is too small - ignored\n");
      return Frame;
    }
    Frame = FT_Stream_ExtractFrame(a2, v23, v3 + 194);
    if ( Frame )
    {
      FT_Message("could not extract kerning table\n");
      return Frame;
    }
    v6 = v23;
    v7 = (unsigned __int8 *)v3[194];
    v3[195] = v23;
    v8 = v7 + 4;
    v9 = v7[3] | (v7[2] << 8);
    if ( v9 >= 0x20 )
      v9 = 32;
    if ( v9 )
    {
      v10 = (unsigned int)&v7[v6];
      if ( v10 >= (unsigned int)(v7 + 10) )
      {
        v11 = v7 + 10;
        v12 = v7[7] | (v7[6] << 8);
        if ( v12 > 6 )
        {
          v13 = 1;
          v14 = v7[9] | (v7[8] << 8);
          v21 = 0;
          v20 = 0;
          v15 = 0;
          v22 = v3;
          while ( 1 )
          {
            if ( (v14 & 0xFFFFFFF7) == 1 && v10 >= (unsigned int)(v11 + 8) )
            {
              v16 = v11[1] | (*v11 << 8);
              if ( v10 >= (unsigned int)&v11[6 * v16 + 8] )
              {
                v20 |= v13;
                if ( v16 )
                {
                  if ( v16 == 1 )
                    goto LABEL_26;
                  v17 = _byteswap_ulong(*(_DWORD *)(v11 + 14));
                  if ( _byteswap_ulong(*((_DWORD *)v11 + 2)) < v17 )
                    break;
                }
              }
            }
LABEL_12:
            if ( ++v15 == v9
              || (v8 += v12, v10 < (unsigned int)(v8 + 6))
              || (v11 = v8 + 6, v12 = v8[3] | (v8[2] << 8), v12 <= 6) )
            {
              Frame = 0;
              v3 = v22;
              goto LABEL_28;
            }
            v13 = 1 << v15;
            v14 = v8[5] | (v8[4] << 8);
          }
          v18 = v16 - 1;
          while ( --v18 )
          {
            v19 = _byteswap_ulong(*((_DWORD *)v11 + 5));
            v11 += 6;
            if ( v19 <= v17 )
              goto LABEL_12;
            v17 = v19;
          }
LABEL_26:
          v21 |= v13;
          goto LABEL_12;
        }
      }
    }
    v21 = 0;
    v20 = 0;
    v15 = 0;
LABEL_28:
    v3[196] = v15;
    v3[198] = v21;
    v3[197] = v20;
  }
  return Frame;
}


// ===== 725f64 tt_face_load_cmap =====
int __fastcall tt_face_load_cmap(int a1, int a2)
{
  int result; // r0

  result = (*(int (__fastcall **)(int, int, int, int))(a1 + 508))(a1, 1668112752, a2, a1 + 504);
  if ( !result )
  {
    result = FT_Stream_ExtractFrame(a2, *(_DWORD *)(a1 + 504), (_DWORD *)(a1 + 500));
    if ( result )
      *(_DWORD *)(a1 + 504) = 0;
  }
  return result;
}


// ===== 725fb0 tt_face_load_any =====
int __fastcall tt_face_load_any(int a1, int a2, unsigned int a3, void *a4, int *a5)
{
  size_t v8; // r12
  int result; // r0
  _DWORD *v10; // r0

  if ( a2 )
  {
    v10 = tt_face_lookup_table(a1, a2);
    if ( !v10 )
      return 142;
    v8 = v10[3];
    a3 += v10[2];
  }
  else
  {
    v8 = *(_DWORD *)(*(_DWORD *)(a1 + 104) + 4);
  }
  if ( a5 )
  {
    result = *a5;
    if ( !*a5 )
    {
      *a5 = v8;
      return result;
    }
    v8 = *a5;
  }
  return FT_Stream_ReadAt(*(_DWORD **)(a1 + 104), a3, a4, v8);
}


// ===== 726030 sfnt_done_face =====
int __fastcall sfnt_done_face(int a1)
{
  int v1; // r7
  int v3; // r6
  void (*v4)(void); // r3
  void (__fastcall *v5)(int); // r3
  int v6; // r1
  int v7; // r1
  int v8; // r0
  int v9; // r1
  int v10; // r3
  int v11; // r1
  int v12; // r1
  int result; // r0

  v1 = *(_DWORD *)(a1 + 532);
  v3 = *(_DWORD *)(a1 + 100);
  if ( v1 )
  {
    v4 = *(void (**)(void))(v1 + 116);
    if ( v4 )
      v4();
    v5 = *(void (__fastcall **)(int))(v1 + 144);
    if ( v5 )
      v5(a1);
  }
  if ( *(_BYTE *)(a1 + 816) )
  {
    if ( *(_DWORD *)(a1 + 796) )
      FT_Stream_ReleaseFrame(*(_DWORD *)(a1 + 104), (int *)(a1 + 796));
    *(_DWORD *)(a1 + 808) = 0;
    *(_DWORD *)(a1 + 800) = 0;
    *(_DWORD *)(a1 + 804) = 0;
  }
  FT_Stream_ReleaseFrame(*(_DWORD *)(a1 + 104), (int *)(a1 + 776));
  v6 = *(_DWORD *)(a1 + 144);
  *(_DWORD *)(a1 + 780) = 0;
  *(_DWORD *)(a1 + 784) = 0;
  *(_DWORD *)(a1 + 788) = 0;
  *(_DWORD *)(a1 + 792) = 0;
  ft_mem_free(v3, v6);
  v7 = *(_DWORD *)(a1 + 156);
  *(_DWORD *)(a1 + 144) = 0;
  *(_DWORD *)(a1 + 140) = 0;
  ft_mem_free(v3, v7);
  v8 = *(_DWORD *)(a1 + 104);
  *(_DWORD *)(a1 + 156) = 0;
  *(_WORD *)(a1 + 152) = 0;
  FT_Stream_ReleaseFrame(v8, (int *)(a1 + 500));
  v9 = *(_DWORD *)(a1 + 252);
  *(_DWORD *)(a1 + 504) = 0;
  ft_mem_free(v3, v9);
  *(_DWORD *)(a1 + 252) = 0;
  ft_mem_free(v3, *(_DWORD *)(a1 + 256));
  v10 = *(unsigned __int8 *)(a1 + 296);
  *(_DWORD *)(a1 + 256) = 0;
  if ( v10 )
  {
    ft_mem_free(v3, *(_DWORD *)(a1 + 336));
    *(_DWORD *)(a1 + 336) = 0;
    ft_mem_free(v3, *(_DWORD *)(a1 + 340));
    *(_DWORD *)(a1 + 340) = 0;
    *(_BYTE *)(a1 + 296) = 0;
  }
  ft_mem_free(v3, *(_DWORD *)(a1 + 552));
  *(_WORD *)(a1 + 550) = 0;
  *(_DWORD *)(a1 + 552) = 0;
  if ( v1 )
    (*(void (__fastcall **)(int))(v1 + 60))(a1);
  ft_mem_free(v3, *(_DWORD *)(a1 + 20));
  v11 = *(_DWORD *)(a1 + 24);
  *(_DWORD *)(a1 + 20) = 0;
  ft_mem_free(v3, v11);
  v12 = *(_DWORD *)(a1 + 32);
  *(_DWORD *)(a1 + 24) = 0;
  ft_mem_free(v3, v12);
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  result = ft_mem_free(v3, *(_DWORD *)(a1 + 704));
  *(_DWORD *)(a1 + 532) = 0;
  *(_DWORD *)(a1 + 704) = 0;
  return result;
}


// ===== 7261d0 tt_face_build_cmaps =====
int __fastcall tt_face_build_cmaps(int a1)
{
  int v1; // r2
  __int16 v2; // r12
  __int16 v3; // r0
  __int16 v4; // r2
  __int16 v5; // r1
  unsigned int v6; // r1
  unsigned int v8; // [sp+4h] [bp-164h]
  int v10; // [sp+Ch] [bp-15Ch]
  _DWORD v11[4]; // [sp+28h] [bp-140h] BYREF
  struct __jmp_buf_tag v12; // [sp+38h] [bp-130h] BYREF
  int v13; // [sp+138h] [bp-30h]
  signed int *v14[2]; // [sp+13Ch] [bp-2Ch] BYREF
  __int16 v15; // [sp+144h] [bp-24h]
  __int16 v16; // [sp+146h] [bp-22h]
  int v17; // [sp+148h] [bp-20h] BYREF
  int v18; // [sp+14Ch] [bp-1Ch]
  signed int *v19; // [sp+150h] [bp-18h]
  signed int **v20; // [sp+154h] [bp-14h]
  int v21; // [sp+158h] [bp-10h]
  unsigned __int8 *v22; // [sp+15Ch] [bp-Ch]
  int v23; // [sp+160h] [bp-8h]
  int i; // [sp+164h] [bp-4h]

  v1 = *(_DWORD *)(a1 + 504);
  v23 = *(_DWORD *)(a1 + 500);
  v10 = v23;
  v8 = v23 + v1;
  if ( v10 + v1 < (unsigned int)(v10 + 4) )
    return 8;
  v23 += 2;
  if ( *(unsigned __int8 *)(v23 - 1) | (*(unsigned __int8 *)(v23 - 2) << 8) )
  {
    FT_Message(
      "tt_face_build_cmaps: unsupported `cmap' table format = %d\n",
      *(unsigned __int8 *)(v23 - 1) | (*(unsigned __int8 *)(v23 - 2) << 8));
    return 8;
  }
  v23 += 2;
  for ( i = *(unsigned __int8 *)(v23 - 1) | (*(unsigned __int8 *)(v23 - 2) << 8); i && v8 >= v23 + 8; --i )
  {
    v23 += 2;
    v2 = *(unsigned __int8 *)(v23 - 2);
    v3 = *(unsigned __int8 *)(v23 - 1);
    v23 += 2;
    v15 = v3 | (v2 << 8);
    v4 = *(unsigned __int8 *)(v23 - 1);
    v5 = *(unsigned __int8 *)(v23 - 2);
    v23 += 4;
    v16 = v4 | (v5 << 8);
    v14[1] = nullptr;
    v14[0] = (signed int *)a1;
    v6 = _byteswap_ulong(*(_DWORD *)(v23 - 4));
    if ( v6 && v6 <= *(_DWORD *)(a1 + 504) - 2 )
    {
      v22 = (unsigned __int8 *)(v10 + v6);
      v21 = v22[1] | (*v22 << 8);
      v20 = (signed int **)&tt_cmap_classes;
      if ( &tt_cmap0_class_rec )
      {
        while ( 1 )
        {
          v19 = *v20;
          if ( v19[10] == v21 )
            break;
          if ( !*++v20 )
            goto LABEL_16;
        }
        v18 = 0;
        ft_validator_init(v11, (int)v22, v8, 0);
        v13 = *(unsigned __int16 *)(a1 + 264);
        if ( !setjmp(&v12) )
          v18 = ((int (__fastcall *)(unsigned __int8 *, _DWORD *))v19[11])(v22, v11);
        if ( v11[3] )
        {
          FT_Message("tt_face_build_cmaps:");
          FT_Message(" broken cmap sub-table ignored!\n");
        }
        else if ( !FT_CMap_New(v19, (int)v22, v14, &v17) )
        {
          *(_DWORD *)(v17 + 20) = v18;
        }
      }
LABEL_16:
      if ( !*v20 )
      {
        FT_Message("tt_face_build_cmaps:");
        FT_Message(" unsupported cmap sub-table ignored!\n");
      }
    }
  }
  return 0;
}


// ===== 726528 sfnt_load_face =====
int __fastcall sfnt_load_face(int a1, int a2)
{
  int v4; // r7
  int v5; // r0
  const char *v6; // r1
  int v7; // r10
  int v8; // r3
  int v10; // r0
  const char *v11; // r1
  int v12; // r3
  int v13; // r0
  const char *v14; // r1
  int v15; // r3
  int v16; // r0
  const char *v17; // r1
  int v18; // r3
  int v19; // r0
  int v20; // r2
  const char *v21; // r1
  int v22; // r10
  int v23; // r0
  const char *v24; // r1
  int v25; // r0
  const char *v26; // r1
  int v27; // r0
  const char *v28; // r1
  int v29; // r2
  int v30; // r0
  const char *v31; // r1
  bool v32; // zf
  int v33; // r0
  const char *v34; // r1
  int (__fastcall *v35)(int, int); // r3
  int v36; // r0
  const char *v37; // r1
  int v38; // r0
  const char *v39; // r1
  int v40; // r0
  const char *v41; // r1
  int v42; // r3
  int v43; // r0
  const char *v44; // r1
  int name; // r0
  int v46; // r0
  int v47; // r3
  int v48; // r8
  __int16 v49; // r3
  int v50; // r2
  int v51; // r8
  int v52; // r4
  int v53; // r3
  int v54; // r0
  int v55; // r3
  int v56; // r9
  __int16 v57; // r11
  int v58; // r0
  int v59; // r8
  int v60; // r10
  int v61; // r0
  int v62; // r3
  int v63; // r11
  int v64; // r1
  int (__fastcall *v65)(int, int); // r3
  int v66; // r0
  const char *v67; // r1
  __int16 v68; // r1
  __int16 v69; // r3
  __int16 v70; // r2
  int v71; // r9
  __int16 v72; // r3
  int v73; // r10
  int v74; // r8
  int v75; // r12
  __int16 v76; // r0
  __int16 v77; // r1
  __int16 v78; // r3
  __int16 v79; // r3
  int v80; // r2
  int v81; // [sp+Ch] [bp-38h]
  int v82; // [sp+10h] [bp-34h]
  int v83; // [sp+14h] [bp-30h]
  unsigned __int16 v84; // [sp+20h] [bp-24h] BYREF
  unsigned __int16 v85; // [sp+22h] [bp-22h]
  int v86; // [sp+34h] [bp-10h]
  int v87; // [sp+3Ch] [bp-8h] BYREF

  v4 = *(_DWORD *)(a2 + 532);
  if ( dword_A35538 > 1 )
    FT_Message("sfnt_load_face: %08p\n\n", (const void *)a2);
  if ( tt_face_lookup_table(a2, 1735162214) || tt_face_lookup_table(a2, 1128678944) )
  {
    v81 = 1;
  }
  else
  {
    v65 = *(int (__fastcall **)(int, int))(v4 + 84);
    if ( v65 )
    {
      if ( dword_A35538 > 1 )
      {
        FT_Message("`bhed' ");
        if ( dword_A35538 > 2 )
          FT_Message("-->\n");
        v65 = *(int (__fastcall **)(int, int))(v4 + 84);
      }
      v66 = v65(a2, a1);
      v87 = v66;
      if ( dword_A35538 > 1 )
      {
        if ( v66 )
          v67 = v66 == 142 ? "missing" : "failed to load";
        else
          v67 = "loaded";
        FT_Message("%s\n", v67);
        if ( dword_A35538 > 2 )
          FT_Message("\n");
      }
      if ( !v87 )
      {
        v81 = 0;
        v7 = 1;
        goto LABEL_18;
      }
      v81 = 0;
    }
    else
    {
      v81 = 0;
    }
  }
  if ( dword_A35538 > 1 )
  {
    FT_Message("`head' ");
    if ( dword_A35538 > 2 )
      FT_Message("-->\n");
  }
  v5 = (*(int (__fastcall **)(int, int))(v4 + 32))(a2, a1);
  v87 = v5;
  if ( dword_A35538 > 1 )
  {
    if ( v5 )
      v6 = v5 == 142 ? "missing" : "failed to load";
    else
      v6 = "loaded";
    FT_Message("%s\n", v6);
    if ( dword_A35538 > 2 )
      FT_Message("\n");
  }
  v7 = v87;
  if ( v87 )
    goto LABEL_14;
LABEL_18:
  if ( !*(_WORD *)(a2 + 178) )
  {
    v87 = 8;
    v8 = dword_A35538;
    goto LABEL_15;
  }
  if ( dword_A35538 > 1 )
  {
    FT_Message("`maxp' ");
    if ( dword_A35538 > 2 )
      FT_Message("-->\n");
  }
  v10 = (*(int (__fastcall **)(int, int))(v4 + 44))(a2, a1);
  v87 = v10;
  if ( dword_A35538 > 1 )
  {
    if ( v10 )
    {
      if ( v10 == 142 )
        v11 = "missing";
      else
        v11 = "failed to load";
    }
    else
    {
      v11 = "loaded";
    }
    FT_Message("%s\n", v11);
    v12 = dword_A35538;
    if ( dword_A35538 > 2 )
    {
      FT_Message("\n");
      v12 = dword_A35538;
    }
    if ( v12 > 1 )
    {
      FT_Message("`cmap' ");
      if ( dword_A35538 > 2 )
        FT_Message("-->\n");
    }
  }
  v13 = (*(int (__fastcall **)(int, int))(v4 + 40))(a2, a1);
  v87 = v13;
  if ( dword_A35538 > 1 )
  {
    if ( v13 )
    {
      if ( v13 == 142 )
        v14 = "missing";
      else
        v14 = "failed to load";
    }
    else
    {
      v14 = "loaded";
    }
    FT_Message("%s\n", v14);
    v15 = dword_A35538;
    if ( dword_A35538 > 2 )
    {
      FT_Message("\n");
      v15 = dword_A35538;
    }
    if ( v15 > 1 )
    {
      FT_Message("`name' ");
      if ( dword_A35538 > 2 )
        FT_Message("-->\n");
    }
  }
  v16 = (*(int (__fastcall **)(int, int))(v4 + 56))(a2, a1);
  v87 = v16;
  if ( dword_A35538 > 1 )
  {
    if ( v16 )
    {
      if ( v16 == 142 )
        v17 = "missing";
      else
        v17 = "failed to load";
    }
    else
    {
      v17 = "loaded";
    }
    FT_Message("%s\n", v17);
    v18 = dword_A35538;
    if ( dword_A35538 > 2 )
    {
      FT_Message("\n");
      v18 = dword_A35538;
    }
    if ( v18 > 1 )
    {
      FT_Message("`post' ");
      if ( dword_A35538 > 2 )
        FT_Message("-->\n");
    }
  }
  v19 = (*(int (__fastcall **)(int, int))(v4 + 52))(a2, a1);
  v87 = v19;
  v20 = dword_A35538;
  if ( dword_A35538 > 1 )
  {
    if ( v19 )
      v21 = v19 == 142 ? "missing" : "failed to load";
    else
      v21 = "loaded";
    FT_Message("%s\n", v21);
    v20 = dword_A35538;
    if ( dword_A35538 > 2 )
    {
      FT_Message("\n");
      v20 = dword_A35538;
    }
  }
  v32 = v7 == 0;
  v22 = v87;
  if ( !v32 )
  {
LABEL_108:
    v35 = *(int (__fastcall **)(int, int))(v4 + 140);
    if ( v35 )
    {
      if ( v20 > 1 )
      {
        FT_Message("`eblc' ");
        if ( dword_A35538 > 2 )
          FT_Message("-->\n");
        v35 = *(int (__fastcall **)(int, int))(v4 + 140);
      }
      v36 = v35(a2, a1);
      v87 = v36;
      if ( dword_A35538 > 1 )
      {
        if ( v36 )
          v37 = v36 == 142 ? "missing" : "failed to load";
        else
          v37 = "loaded";
        FT_Message("%s\n", v37);
        if ( dword_A35538 > 2 )
          FT_Message("\n");
      }
      if ( v87 )
      {
        if ( v87 == 142 )
          v64 = v81 & 1;
        else
          v64 = 0;
        if ( !v64 )
          goto LABEL_14;
        v87 = 0;
        v20 = dword_A35538;
      }
      else
      {
        v20 = dword_A35538;
      }
    }
    if ( v20 > 1 )
    {
      FT_Message("`pclt' ");
      if ( dword_A35538 > 2 )
        FT_Message("-->\n");
    }
    v38 = (*(int (__fastcall **)(int, int))(v4 + 80))(a2, a1);
    v87 = v38;
    if ( dword_A35538 > 1 )
    {
      if ( v38 )
        v39 = v38 == 142 ? "missing" : "failed to load";
      else
        v39 = "loaded";
      FT_Message("%s\n", v39);
      if ( dword_A35538 > 2 )
        FT_Message("\n");
    }
    if ( !v87 )
      goto LABEL_131;
    if ( v87 == 142 )
    {
      *(_DWORD *)(a2 + 556) = 0;
LABEL_131:
      if ( dword_A35538 > 1 )
      {
        FT_Message("`gasp' ");
        if ( dword_A35538 > 2 )
          FT_Message("-->\n");
      }
      v40 = (*(int (__fastcall **)(int, int))(v4 + 76))(a2, a1);
      v87 = v40;
      if ( dword_A35538 > 1 )
      {
        if ( v40 )
        {
          if ( v40 == 142 )
            v41 = "missing";
          else
            v41 = "failed to load";
        }
        else
        {
          v41 = "loaded";
        }
        FT_Message("%s\n", v41);
        v42 = dword_A35538;
        if ( dword_A35538 > 2 )
        {
          FT_Message("\n");
          v42 = dword_A35538;
        }
        if ( v42 > 1 )
        {
          FT_Message("`kern' ");
          if ( dword_A35538 > 2 )
            FT_Message("-->\n");
        }
      }
      v43 = (*(int (__fastcall **)(int, int))(v4 + 72))(a2, a1);
      v87 = v43;
      if ( dword_A35538 > 1 )
      {
        if ( v43 )
          v44 = v43 == 142 ? "missing" : "failed to load";
        else
          v44 = "loaded";
        FT_Message("%s\n", v44);
        if ( dword_A35538 > 2 )
          FT_Message("\n");
      }
      *(_DWORD *)(a2 + 16) = *(unsigned __int16 *)(a2 + 264);
      v87 = 0;
      name = tt_face_get_name(a2, 16);
      *(_DWORD *)(a2 + 20) = name;
      if ( !name )
        *(_DWORD *)(a2 + 20) = tt_face_get_name(a2, 1);
      v46 = tt_face_get_name(a2, 17);
      *(_DWORD *)(a2 + 24) = v46;
      if ( !v46 )
        *(_DWORD *)(a2 + 24) = tt_face_get_name(a2, 2);
      v47 = *(_DWORD *)(a2 + 8);
      if ( v81 == 1 )
        v47 |= 1u;
      v48 = v47 | 0x18;
      if ( !v22 && *(_DWORD *)(a2 + 468) != 196608 )
        v48 = v47 | 0x218;
      if ( *(_DWORD *)(a2 + 480) )
        v48 |= 4u;
      if ( *(_BYTE *)(a2 + 296) )
        v48 |= 0x20u;
      if ( *(_DWORD *)(a2 + 788) )
        v48 |= 0x40u;
      if ( tt_face_lookup_table(a2, 1735162214)
        && tt_face_lookup_table(a2, 1719034226)
        && tt_face_lookup_table(a2, 1735811442) )
      {
        v48 |= 0x100u;
      }
      *(_DWORD *)(a2 + 8) = v48;
      if ( v81 != 1 || *(unsigned __int16 *)(a2 + 368) == 0xFFFF )
      {
        v49 = *(_WORD *)(a2 + 204);
        v50 = v49 & 1;
        if ( (v49 & 1) != 0 )
          v50 = 2;
        if ( (v49 & 2) != 0 )
          v50 |= 1u;
      }
      else
      {
        v79 = *(_WORD *)(a2 + 432);
        if ( (v79 & 0x200) != 0 )
          v50 = 1;
        else
          v50 = v79 & 1;
        if ( (v79 & 0x20) != 0 )
          v50 |= 2u;
      }
      *(_DWORD *)(a2 + 12) = v50;
      tt_face_build_cmaps(a2);
      if ( *(int *)(a2 + 36) > 0 )
      {
        v51 = 0;
        do
        {
          v52 = *(_DWORD *)(*(_DWORD *)(a2 + 40) + 4 * v51);
          if ( &ttc_header_fields_8652 <= &tt_encodings_8630 )
          {
LABEL_201:
            v55 = 0;
          }
          else
          {
            v53 = 0;
            while ( 1 )
            {
              if ( *(unsigned __int16 *)(v52 + 8) == *(_DWORD *)((char *)&tt_encodings_8630 + v53) )
              {
                v54 = *(_DWORD *)((char *)&tt_encodings_8630 + v53 + 4);
                if ( *(unsigned __int16 *)(v52 + 10) == v54 || v54 == -1 )
                  break;
              }
              v53 += 12;
              if ( v53 == 132 )
                goto LABEL_201;
            }
            v55 = *(_DWORD *)((char *)&tt_encodings_8630 + v53 + 8);
          }
          *(_DWORD *)(v52 + 4) = v55;
          ++v51;
        }
        while ( *(_DWORD *)(a2 + 36) > v51 );
      }
      if ( v81 == 1 )
      {
        v68 = *(_WORD *)(a2 + 220);
        v69 = *(_WORD *)(a2 + 224);
        v70 = *(_WORD *)(a2 + 222);
        v71 = *(unsigned __int8 *)(a2 + 296);
        *(_DWORD *)(a2 + 64) = *(__int16 *)(a2 + 202);
        *(_WORD *)(a2 + 70) = v68;
        v72 = v69 + v68;
        v73 = *(__int16 *)(a2 + 196);
        v74 = *(__int16 *)(a2 + 198);
        v75 = *(__int16 *)(a2 + 200);
        v76 = *(_WORD *)(a2 + 178);
        v77 = *(_WORD *)(a2 + 226);
        v78 = v72 - v70;
        *(_WORD *)(a2 + 74) = v78;
        *(_DWORD *)(a2 + 52) = v73;
        *(_DWORD *)(a2 + 56) = v74;
        *(_DWORD *)(a2 + 60) = v75;
        *(_WORD *)(a2 + 68) = v76;
        *(_WORD *)(a2 + 72) = v70;
        *(_WORD *)(a2 + 76) = v77;
        if ( v71 )
          v78 = *(_WORD *)(a2 + 310);
        *(_WORD *)(a2 + 78) = v78;
        *(_WORD *)(a2 + 80) = *(_WORD *)(a2 + 476);
        *(_WORD *)(a2 + 82) = *(_WORD *)(a2 + 478);
      }
      v56 = *(_DWORD *)(a2 + 612);
      if ( v56 )
      {
        v83 = *(unsigned __int16 *)(a2 + 178);
        v57 = *(_WORD *)(a2 + 370);
        if ( !*(_WORD *)(a2 + 178) || *(unsigned __int16 *)(a2 + 368) == 0xFFFF )
        {
          v57 = 0;
          v83 = 1;
        }
        v58 = ft_mem_realloc(*(_DWORD *)(*(_DWORD *)(a2 + 104) + 28), 16, 0, v56, 0, &v87);
        v59 = v87;
        v60 = v58;
        *(_DWORD *)(a2 + 32) = v58;
        if ( !v59 )
        {
          v82 = v57;
          while ( 1 )
          {
            v61 = (*(int (__fastcall **)(int, int, unsigned __int16 *))(v4 + 152))(a2, v59, &v84);
            v62 = 16 * v59;
            v63 = v60 + 16 * v59++;
            v87 = v61;
            if ( v61 )
              break;
            *(_WORD *)(v60 + v62) = v86 >> 6;
            *(_WORD *)(v63 + 2) = (int)(((unsigned int)v83 >> 1) + v84 * v82) / v83;
            *(_DWORD *)(v63 + 8) = v84 << 6;
            *(_DWORD *)(v63 + 12) = v85 << 6;
            *(_DWORD *)(v63 + 4) = v85 << 6;
            if ( v59 == v56 )
            {
              v80 = *(_DWORD *)(a2 + 8);
              *(_DWORD *)(a2 + 28) = v59;
              *(_DWORD *)(a2 + 8) = v80 | 2;
              v8 = dword_A35538;
              goto LABEL_15;
            }
            v60 = *(_DWORD *)(a2 + 32);
          }
        }
      }
    }
LABEL_14:
    v8 = dword_A35538;
    goto LABEL_15;
  }
  if ( v20 > 1 )
  {
    FT_Message("`%shhea' ", "");
    if ( dword_A35538 > 2 )
      FT_Message("-->\n");
  }
  v23 = (*(int (__fastcall **)(int, int, _DWORD))(v4 + 36))(a2, a1, 0);
  v87 = v23;
  if ( dword_A35538 > 1 )
  {
    if ( v23 )
      v24 = v23 == 142 ? "missing" : "failed to load";
    else
      v24 = "loaded";
    FT_Message("%s\n", v24);
    if ( dword_A35538 > 2 )
      FT_Message("\n");
  }
  if ( v87 )
  {
    if ( v87 != 142 )
      goto LABEL_14;
    if ( *(_DWORD *)(a2 + 148) != 1953658213 )
    {
      v87 = 143;
      goto LABEL_14;
    }
    if ( dword_A35538 > 1 )
      FT_Message("This is an SFNT Mac font.\n");
    v87 = 0;
    v81 = 0;
  }
  else
  {
    if ( dword_A35538 > 1 )
    {
      FT_Message("`%shmtx' ", "");
      if ( dword_A35538 > 2 )
        FT_Message("-->\n");
    }
    v25 = (*(int (__fastcall **)(int, int, _DWORD))(v4 + 136))(a2, a1, 0);
    v87 = v25;
    if ( dword_A35538 > 1 )
    {
      if ( v25 )
        v26 = v25 == 142 ? "missing" : "failed to load";
      else
        v26 = "loaded";
      FT_Message("%s\n", v26);
      if ( dword_A35538 > 2 )
        FT_Message("\n");
    }
    if ( v87 == 142 )
    {
      v87 = 147;
      goto LABEL_14;
    }
    if ( v87 )
      goto LABEL_14;
  }
  if ( dword_A35538 > 1 )
  {
    FT_Message("`%shhea' ", "vertical ");
    if ( dword_A35538 > 2 )
      FT_Message("-->\n");
  }
  v27 = (*(int (__fastcall **)(int, int, int))(v4 + 36))(a2, a1, 1);
  v87 = v27;
  v8 = dword_A35538;
  if ( dword_A35538 > 1 )
  {
    if ( v27 )
      v28 = v27 == 142 ? "missing" : "failed to load";
    else
      v28 = "loaded";
    FT_Message("%s\n", v28);
    v8 = dword_A35538;
    if ( dword_A35538 > 2 )
    {
      FT_Message("\n");
      v8 = dword_A35538;
    }
  }
  v29 = v87;
  if ( !v87 )
  {
    if ( v8 > 1 )
    {
      FT_Message("`%shmtx' ", "vertical ");
      if ( dword_A35538 > 2 )
        FT_Message("-->\n");
    }
    v30 = (*(int (__fastcall **)(int, int, int))(v4 + 136))(a2, a1, 1);
    v87 = v30;
    if ( dword_A35538 > 1 )
    {
      if ( v30 )
        v31 = v30 == 142 ? "missing" : "failed to load";
      else
        v31 = "loaded";
      FT_Message("%s\n", v31);
      if ( dword_A35538 > 2 )
        FT_Message("\n");
    }
    v29 = v87;
    if ( !v87 )
      *(_BYTE *)(a2 + 296) = 1;
    v8 = dword_A35538;
  }
  v32 = v29 == 142;
  if ( v29 != 142 )
    v32 = v29 == 0;
  if ( v32 )
  {
    if ( v8 > 1 )
    {
      FT_Message("`os2' ");
      if ( dword_A35538 > 2 )
        FT_Message("-->\n");
    }
    v33 = (*(int (__fastcall **)(int, int))(v4 + 48))(a2, a1);
    v87 = v33;
    if ( dword_A35538 > 1 )
    {
      if ( v33 )
        v34 = v33 == 142 ? "missing" : "failed to load";
      else
        v34 = "loaded";
      FT_Message("%s\n", v34);
      if ( dword_A35538 > 2 )
        FT_Message("\n");
    }
    if ( v87 )
    {
      if ( v87 != 142 )
        goto LABEL_14;
      *(_WORD *)(a2 + 368) = -1;
      v20 = dword_A35538;
    }
    else
    {
      v20 = dword_A35538;
    }
    goto LABEL_108;
  }
LABEL_15:
  if ( v8 > 1 )
    FT_Message("sfnt_load_face: done\n");
  return v87;
}


// ===== 7277b8 sfnt_init_face =====
int __fastcall sfnt_init_face(int *a1, _DWORD *a2, int a3)
{
  _DWORD *v3; // r7
  int v7; // r11
  int Long; // r0
  int Fields; // r12
  bool v10; // zf
  bool v11; // zf
  _DWORD *v13; // r0
  int v14; // r10
  _DWORD *Module_Interface; // r0
  int v16; // r3
  int v17; // r0
  int v18; // r3
  int v19; // r8
  int v20; // r11
  int v21; // [sp+Ch] [bp-10h]
  int v22[2]; // [sp+14h] [bp-8h] BYREF

  v3 = (_DWORD *)a2[133];
  if ( !v3 )
  {
    Module_Interface = (_DWORD *)FT_Get_Module_Interface(*(_DWORD *)(a2[24] + 4), "sfnt");
    v3 = Module_Interface;
    if ( !Module_Interface )
      return 3;
    a2[133] = Module_Interface;
    a2[127] = *Module_Interface;
  }
  a2[134] = ft_module_get_service((_DWORD *)a2[24], (int)"postscript-cmaps");
  v7 = a1[7];
  a2[35] = 0;
  a2[33] = 0;
  a2[34] = 0;
  v21 = FT_Stream_Pos((int)a1);
  Long = FT_Stream_ReadLong(a1, v22);
  Fields = v22[0];
  if ( v22[0] )
    return Fields;
  v10 = Long == 1953784678;
  if ( Long != 1953784678 )
    v10 = Long == 0x10000;
  if ( !v10 )
  {
    v11 = Long == 1953658213;
    if ( Long != 1953658213 )
      v11 = Long == 1330926671;
    if ( !v11 && Long != 0x20000 )
      return 2;
    a2[33] = 1953784678;
LABEL_14:
    if ( dword_A35538 > 2 )
      FT_Message("sfnt_open_font: synthesize TTC\n");
    a2[34] = 0x10000;
    a2[35] = 1;
    v13 = ft_mem_alloc(v7, 4, v22);
    Fields = v22[0];
    a2[36] = v13;
    if ( !Fields )
    {
      *v13 = v21;
LABEL_18:
      Fields = v22[0];
      if ( !v22[0] )
      {
        if ( dword_A35538 > 1 )
          FT_Message("sfnt_init_face: %08p, %ld\n", a2, a3);
        v14 = a3 & ~(a3 >> 31);
        if ( a2[35] > v14 )
        {
          Fields = FT_Stream_Seek(a1, *(_DWORD *)(a2[36] + 4 * v14));
          if ( !Fields )
          {
            Fields = ((int (__fastcall *)(_DWORD *, int *))v3[33])(a2, a1);
            if ( !Fields )
              *a2 = a2[35];
          }
        }
        else
        {
          return 132;
        }
      }
      return Fields;
    }
    return Fields;
  }
  a2[33] = 1953784678;
  if ( Long != 1953784678 )
    goto LABEL_14;
  if ( dword_A35538 > 2 )
    FT_Message("sfnt_open_font: file is a collection\n");
  Fields = FT_Stream_ReadFields(a1, (int)&ttc_header_fields_8652, (int)(a2 + 33));
  if ( !Fields )
  {
    v16 = a2[35];
    v22[0] = 0;
    v17 = ft_mem_realloc(v7, 4, 0, v16, 0, v22);
    Fields = v22[0];
    a2[36] = v17;
    if ( !Fields )
    {
      Fields = FT_Stream_EnterFrame((int)a1, 4 * a2[35]);
      if ( !Fields )
      {
        v18 = a2[35];
        v22[0] = 0;
        if ( v18 > 0 )
        {
          v19 = 0;
          do
          {
            v20 = a2[36];
            *(_DWORD *)(v20 + 4 * v19++) = FT_Stream_GetLong((int)a1);
          }
          while ( v19 < a2[35] );
        }
        FT_Stream_ExitFrame(a1);
        goto LABEL_18;
      }
    }
  }
  return Fields;
}


// ===== 727a80 sfnt_get_ps_name =====
char *__fastcall sfnt_get_ps_name(int a1)
{
  char *v1; // r5
  int v4; // r6
  int v5; // r12
  int v6; // r3
  int v7; // r7
  int v8; // r6
  unsigned int v9; // r8
  int v10; // r7
  int *v11; // r10
  unsigned int v12; // r8
  _BYTE *v13; // r3
  _BYTE *v14; // r1
  unsigned int v15; // r2
  int v16; // r6
  int v17; // r7
  size_t v18; // r8
  _DWORD *v19; // r10
  int v20; // r1
  int v21; // r1
  int v22; // r1
  int v23; // [sp+4h] [bp-8h] BYREF

  v1 = *(char **)(a1 + 704);
  if ( v1 )
    return v1;
  if ( !*(_WORD *)(a1 + 344) )
  {
LABEL_13:
    v1 = nullptr;
LABEL_14:
    *(_DWORD *)(a1 + 704) = v1;
    return v1;
  }
  v4 = *(_DWORD *)(a1 + 360);
  v5 = -1;
  v6 = v4;
  v7 = -1;
  do
  {
    if ( *(_WORD *)(v6 + 6) == 6 && *(_WORD *)(v6 + 8) )
    {
      if ( *(_DWORD *)v6 == 65539 )
      {
        if ( *(_WORD *)(v6 + 4) == 1033 )
          v7 = (int)v1;
      }
      else if ( *(_DWORD *)v6 == 1 && !*(_WORD *)(v6 + 4) )
      {
        v5 = (int)v1;
      }
    }
    ++v1;
    v6 += 20;
  }
  while ( (int)v1 < *(unsigned __int16 *)(a1 + 344) );
  if ( v7 == -1 )
  {
    if ( v5 != -1 )
    {
      v16 = v4 + 20 * v5;
      v17 = *(_DWORD *)(a1 + 100);
      v18 = *(unsigned __int16 *)(v16 + 8);
      v23 = 0;
      v1 = (char *)ft_mem_alloc(v17, v18 + 1, &v23);
      if ( !v23 )
      {
        v19 = *(_DWORD **)(a1 + 364);
        v23 = FT_Stream_Seek(v19, *(_DWORD *)(v16 + 12));
        if ( v23 || (v23 = FT_Stream_Read(v19, v1, v18)) != 0 )
        {
          v20 = *(_DWORD *)(v16 + 16);
          *(_DWORD *)(v16 + 12) = 0;
          *(_WORD *)(v16 + 8) = 0;
          ft_mem_free(v17, v20);
          v21 = (int)v1;
          *(_DWORD *)(v16 + 16) = 0;
          v1 = nullptr;
          ft_mem_free(v17, v21);
          *(_DWORD *)(a1 + 704) = 0;
          return v1;
        }
        v1[v18] = 0;
      }
      goto LABEL_14;
    }
    goto LABEL_13;
  }
  v8 = v4 + 20 * v7;
  v9 = *(unsigned __int16 *)(v8 + 8);
  v23 = 0;
  v10 = *(_DWORD *)(a1 + 100);
  v1 = (char *)ft_mem_alloc(v10, *(unsigned __int16 *)(v8 + 8) + 1, &v23);
  if ( v23 )
    goto LABEL_14;
  v11 = *(int **)(a1 + 364);
  v23 = FT_Stream_Seek(v11, *(_DWORD *)(v8 + 12));
  if ( v23 || (v23 = FT_Stream_EnterFrame((int)v11, *(unsigned __int16 *)(v8 + 8))) != 0 )
  {
    v22 = (int)v1;
    v1 = nullptr;
    ft_mem_free(v10, v22);
    *(_WORD *)(v8 + 8) = 0;
    *(_DWORD *)(v8 + 12) = 0;
    ft_mem_free(v10, *(_DWORD *)(v8 + 16));
    *(_DWORD *)(v8 + 16) = 0;
    *(_DWORD *)(a1 + 704) = 0;
  }
  else
  {
    v12 = v9 >> 1;
    v13 = (_BYTE *)v11[8];
    if ( v12 )
    {
      v14 = v1;
      while ( 1 )
      {
        if ( !*v13 )
        {
          v15 = (unsigned __int8)v13[1];
          if ( v15 > 0x1F && (v15 & 0x80) == 0 )
            *v14++ = v15;
        }
        if ( !--v12 )
          break;
        v13 += 2;
      }
    }
    else
    {
      v14 = v1;
    }
    *v14 = 0;
    FT_Stream_ExitFrame(v11);
    *(_DWORD *)(a1 + 704) = v1;
  }
  return v1;
}


// ===== 727cf0 sfnt_get_interface =====
const char *__fastcall sfnt_get_interface(int a1, char *a2)
{
  return ft_service_list_lookup((const char **)&sfnt_services, a2);
}


// ===== 727d00 tt_face_find_bdf_prop =====
int __fastcall tt_face_find_bdf_prop(int a1, char *a2, _DWORD *a3)
{
  int v3; // r6
  int v4; // r3
  unsigned __int8 *v7; // r9
  bool v8; // zf
  int v9; // r8
  unsigned __int8 *v10; // r3
  int v11; // r10
  int v12; // r1
  int v13; // r7
  int v14; // r6
  int v15; // r1
  int v16; // r2
  int v17; // r0
  int result; // r0
  char v19; // r5
  size_t v20; // r8
  unsigned int v21; // r1
  int v22; // r9
  int v23; // r10
  int v24; // r11
  unsigned int v25; // r9
  _DWORD *v26; // r7
  unsigned int v27; // r1
  _BOOL4 v28; // r11
  unsigned int v29; // r0
  unsigned int v30; // r12
  unsigned __int8 *v31; // r11
  unsigned int v32; // r3
  unsigned __int8 *v33; // r2
  int v34; // r0
  int v35; // r1
  int v36; // [sp+Ch] [bp-20h]
  int v37; // [sp+10h] [bp-1Ch]
  size_t v39; // [sp+18h] [bp-14h]
  char *v40; // [sp+1Ch] [bp-10h]
  unsigned int v41; // [sp+24h] [bp-8h] BYREF

  v3 = *(_DWORD *)(a1 + 88);
  *a3 = 0;
  v4 = *(unsigned __int8 *)(a1 + 816);
  if ( *(_BYTE *)(a1 + 816) )
  {
    v7 = *(unsigned __int8 **)(a1 + 796);
  }
  else
  {
    v26 = *(_DWORD **)(a1 + 104);
    *(_DWORD *)(a1 + 816) = v4;
    *(_DWORD *)(a1 + 796) = v4;
    *(_DWORD *)(a1 + 800) = v4;
    *(_DWORD *)(a1 + 804) = v4;
    *(_DWORD *)(a1 + 808) = v4;
    *(_DWORD *)(a1 + 812) = v4;
    if ( tt_face_goto_table(a1, 1111770656, v26, &v41)
      || v41 <= 7
      || FT_Stream_ExtractFrame((int)v26, v41, (_DWORD *)(a1 + 796)) )
    {
      return 8;
    }
    v7 = *(unsigned __int8 **)(a1 + 796);
    v27 = v41;
    *(_DWORD *)(a1 + 800) = &v7[v41];
    v28 = (v7[1] | (*v7 << 8)) != 1;
    v29 = _byteswap_ulong(*((_DWORD *)v7 + 1));
    if ( v29 <= 7 )
      v28 = 1;
    if ( v28 )
      goto LABEL_35;
    v30 = v7[3] | (v7[2] << 8);
    if ( v30 > (v29 - 8) >> 2 || v29 + 1 > v27 )
      goto LABEL_35;
    v31 = &v7[v29];
    *(_DWORD *)(a1 + 808) = v27 - v29;
    *(_DWORD *)(a1 + 812) = v30;
    *(_DWORD *)(a1 + 804) = &v7[v29];
    v32 = (unsigned int)&v7[4 * v30 + 8];
    if ( v30 )
    {
      v33 = v7;
      do
      {
        v34 = v33[10];
        v35 = v33[11];
        --v30;
        v33 += 4;
        v32 += 10 * (v35 | (v34 << 8));
      }
      while ( v30 );
    }
    if ( v32 > (unsigned int)v31 )
    {
LABEL_35:
      FT_Stream_ReleaseFrame((int)v26, (int *)(a1 + 796));
      *(_DWORD *)(a1 + 796) = 0;
      *(_DWORD *)(a1 + 800) = 0;
      *(_DWORD *)(a1 + 804) = 0;
      *(_DWORD *)(a1 + 808) = 0;
      *(_DWORD *)(a1 + 812) = 0;
      *(_DWORD *)(a1 + 816) = 0;
      return 8;
    }
    *(_BYTE *)(a1 + 816) = 1;
  }
  v8 = v3 == 0;
  if ( v3 )
    v8 = a2 == nullptr;
  v9 = *(_DWORD *)(a1 + 812);
  if ( v8 )
    return 6;
  v39 = LC_API_STRLEN_0(a2);
  if ( !v39 || !v9 )
    return 6;
  v10 = v7 + 12;
  v11 = *(unsigned __int16 *)(v3 + 14);
  v12 = v7[9] | (v7[8] << 8);
  if ( v11 != v12 )
    v10 = v7;
  v13 = v7[11] | (v7[10] << 8);
  v14 = (int)&v7[4 * v9 + 8];
  if ( v11 != v12 )
  {
    while ( --v9 )
    {
      v15 = v10[14];
      v16 = v10[15];
      v17 = v10[13] | (v10[12] << 8);
      v14 += 10 * v13;
      v10 += 4;
      v13 = v16 | (v15 << 8);
      if ( v17 == v11 )
        goto LABEL_17;
    }
    return 6;
  }
LABEL_17:
  if ( !v13 )
    return 6;
  v40 = a2;
  while ( 1 )
  {
    v19 = *(_BYTE *)(v14 + 5);
    if ( (v19 & 0x10) != 0 )
    {
      v20 = *(_DWORD *)(a1 + 808);
      v21 = _byteswap_ulong(*(_DWORD *)v14);
      v22 = *(unsigned __int8 *)(v14 + 6);
      v23 = *(unsigned __int8 *)(v14 + 7);
      v24 = *(unsigned __int8 *)(v14 + 9);
      if ( v21 < v20 && v39 < v20 - v21 )
      {
        v36 = *(unsigned __int8 *)(v14 + 8);
        v37 = *(_DWORD *)(a1 + 804);
        if ( !LC_API_STRNCMP_0(v40, (const char *)(v37 + v21), v20 - v21) )
          break;
      }
    }
LABEL_20:
    if ( !--v13 )
      return 6;
    v14 += 10;
  }
  v25 = (v23 << 16) | (v22 << 24) | v24 | (v36 << 8);
  switch ( v19 & 0xF )
  {
    case 0:
    case 1:
      if ( v25 >= v20 || !memchr((const void *)(v37 + v25), 0, v20) )
        goto LABEL_20;
      *a3 = 1;
      a3[1] = *(_DWORD *)(a1 + 804) + v25;
      result = 0;
      break;
    case 2:
      result = 0;
      a3[1] = v25;
      *a3 = 2;
      break;
    case 3:
      result = 0;
      *a3 = 3;
      a3[1] = v25;
      break;
    default:
      goto LABEL_20;
  }
  return result;
}


// ===== 7280a0 sfnt_get_charset_id =====
int __fastcall sfnt_get_charset_id(int a1, _DWORD *a2, _DWORD *a3)
{
  int result; // r0
  int v7; // r3
  _DWORD v8[2]; // [sp+0h] [bp-10h] BYREF
  _DWORD v9[2]; // [sp+8h] [bp-8h] BYREF

  result = tt_face_find_bdf_prop(a1, "CHARSET_REGISTRY", v8);
  if ( !result )
  {
    result = tt_face_find_bdf_prop(a1, "CHARSET_ENCODING", v9);
    if ( !result )
    {
      if ( v8[0] == 1 && v9[0] == 1 )
      {
        v7 = v8[1];
        *a2 = v9[1];
        *a3 = v7;
      }
      else
      {
        return 6;
      }
    }
  }
  return result;
}


// ===== 72812c sfnt_get_glyph_name =====
int __fastcall sfnt_get_glyph_name(int a1, unsigned int a2, _BYTE *a3, unsigned int a4)
{
  int ps_name; // r5
  _BYTE *v8; // [sp+4h] [bp-4h] BYREF

  ps_name = tt_face_get_ps_name(a1, a2, &v8);
  if ( !ps_name )
    ft_mem_strcpyn(a3, v8, a4);
  return ps_name;
}


// ===== 728168 tt_cmap14_validate =====
int __fastcall tt_cmap14_validate(int a1, _DWORD *a2)
{
  int v2; // r3
  int v3; // r2
  unsigned int v4; // r0
  int v6; // r4
  int v7; // r10
  unsigned int i; // r9
  unsigned int v9; // r1
  unsigned int v10; // r6
  bool v11; // cf
  unsigned __int8 *v12; // r4
  unsigned int v13; // r3
  unsigned int v14; // r9
  int v15; // r6
  unsigned int v16; // r7
  unsigned int v17; // r8
  unsigned __int8 *v18; // r4
  unsigned int v19; // r6
  unsigned __int8 *v20; // r9
  unsigned int v21; // r7
  unsigned int v22; // r8
  unsigned int v23; // r6
  int v24; // r10
  int v25; // r8
  unsigned int v27; // [sp+8h] [bp-1Ch]
  int v28; // [sp+8h] [bp-1Ch]
  int v29; // [sp+Ch] [bp-18h]
  int v31; // [sp+18h] [bp-Ch]

  v2 = a1 + 10;
  v3 = *(unsigned __int8 *)(a1 + 7);
  v4 = _byteswap_ulong(*(_DWORD *)(a1 + 2));
  v6 = (v3 << 16)
     | (*(unsigned __int8 *)(v2 - 4) << 24)
     | *(unsigned __int8 *)(v2 - 1)
     | (*(unsigned __int8 *)(v2 - 2) << 8);
  if ( a2[1] < a1 + v4 || v4 < 11 * v6 + 10 )
    ft_validator_error((int)a2, 8);
  if ( v6 )
  {
    v7 = a1 + 21;
    v31 = a1 + 21 + 11 * v6;
    for ( i = 1; ; i = v29 + 1 )
    {
      v9 = _byteswap_ulong(*(_DWORD *)(v7 - 4));
      v10 = _byteswap_ulong(*(_DWORD *)(v7 - 8));
      v11 = v10 >= v4;
      if ( v10 < v4 )
        v11 = v9 >= v4;
      v27 = _byteswap_ulong(*(_DWORD *)(v7 - 4));
      v29 = (*(unsigned __int8 *)(v7 - 10) << 8) | (*(unsigned __int8 *)(v7 - 11) << 16) | *(unsigned __int8 *)(v7 - 9);
      if ( v11 )
        ft_validator_error((int)a2, 8);
      if ( ((*(unsigned __int8 *)(v7 - 10) << 8)
          | (*(unsigned __int8 *)(v7 - 11) << 16)
          | (unsigned int)*(unsigned __int8 *)(v7 - 9)) < i )
        ft_validator_error((int)a2, 8);
      if ( v10 )
      {
        v12 = (unsigned __int8 *)(a1 + v10);
        v13 = _byteswap_ulong(*(_DWORD *)(a1 + v10));
        if ( a2[1] < a1 + v10 + 4 + 4 * v13 )
          ft_validator_error((int)a2, 8);
        if ( v13 )
        {
          v14 = 0;
          v15 = 0;
          while ( 1 )
          {
            v16 = (v12[5] << 8) | (v12[4] << 16) | v12[6];
            v17 = v16 + v12[7];
            ++v15;
            if ( v17 > 0x10FFFF )
              ft_validator_error((int)a2, 8);
            if ( v16 < v14 )
              ft_validator_error((int)a2, 8);
            v12 += 4;
            if ( v15 == v13 )
              break;
            v14 = v17 + 1;
          }
        }
      }
      if ( v27 )
      {
        v18 = (unsigned __int8 *)(a1 + v27);
        v19 = _byteswap_ulong(*(_DWORD *)(a1 + v27));
        if ( a2[1] < a1 + v27 + 4 + 4 * v19 )
          ft_validator_error((int)a2, 8);
        if ( v19 )
        {
          v20 = &v18[5 * v19];
          v21 = 0;
          v28 = v7;
          do
          {
            v23 = (v18[5] << 8) | (v18[4] << 16) | v18[6];
            v24 = v18[7];
            v25 = v18[8];
            v18 += 5;
            if ( v23 > 0x10FFFF )
              ft_validator_error((int)a2, 8);
            if ( v23 < v21 )
              ft_validator_error((int)a2, 8);
            v22 = v25 | (v24 << 8);
            v21 = v23 + 1;
            if ( a2[2] && v22 >= a2[68] )
              ft_validator_error((int)a2, 16);
          }
          while ( v18 != v20 );
          v7 = v28;
        }
      }
      v7 += 11;
      if ( v7 == v31 )
        break;
    }
  }
  return 0;
}


// ===== 7284d8 tt_cmap12_validate =====
int __fastcall tt_cmap12_validate(int a1, _DWORD *a2)
{
  int v3; // r4
  unsigned int v4; // r6
  unsigned int v5; // r3
  unsigned int v6; // r1
  int v7; // r11
  int v8; // r12
  int v9; // r10
  int v10; // r5
  int v11; // r9
  unsigned int i; // r2
  _BOOL4 v13; // r1
  unsigned int v14; // r3
  unsigned int v15; // r6
  unsigned int v16; // r7
  unsigned int v18; // [sp+Ch] [bp-8h]

  v3 = a1;
  if ( a2[1] < (unsigned int)(a1 + 16) )
    ft_validator_error((int)a2, 8);
  v4 = a2[1];
  v5 = _byteswap_ulong(*(_DWORD *)(a1 + 4));
  v6 = _byteswap_ulong(*(_DWORD *)(a1 + 12));
  v18 = v6;
  if ( v4 < a1 + v5 || v5 < 12 * v6 + 16 )
    ft_validator_error((int)a2, 8);
  if ( v6 )
  {
    v7 = *(unsigned __int8 *)(a1 + 18);
    v8 = *(unsigned __int8 *)(a1 + 17);
    v9 = *(unsigned __int8 *)(a1 + 19);
    v10 = 0;
    v11 = *(unsigned __int8 *)(a1 + 16);
    for ( i = 0; ; i = v16 )
    {
      v15 = (v8 << 16) | (v11 << 24) | v9 | (v7 << 8);
      v16 = _byteswap_ulong(*(_DWORD *)(v3 + 20));
      if ( v15 > v16 )
        ft_validator_error((int)a2, 8);
      v13 = v15 <= i;
      if ( !v10 )
        v13 = 0;
      ++v10;
      if ( v13 )
        ft_validator_error((int)a2, 8);
      v14 = _byteswap_ulong(*(_DWORD *)(v3 + 24)) + v16 - v15;
      if ( a2[2] && v14 >= a2[68] )
        ft_validator_error((int)a2, 16);
      v3 += 12;
      if ( v10 == v18 )
        break;
      v7 = *(unsigned __int8 *)(v3 + 18);
      v8 = *(unsigned __int8 *)(v3 + 17);
      v11 = *(unsigned __int8 *)(v3 + 16);
      v9 = *(unsigned __int8 *)(v3 + 19);
    }
  }
  return 0;
}


// ===== 7286e8 tt_cmap10_validate =====
int __fastcall tt_cmap10_validate(int a1, _DWORD *a2)
{
  int v3; // r4
  unsigned int v4; // r3
  unsigned int v5; // r5
  int v6; // r1
  int v7; // r2

  v3 = a1;
  if ( a2[1] < (unsigned int)(a1 + 20) )
    ft_validator_error((int)a2, 8);
  v4 = _byteswap_ulong(*(_DWORD *)(a1 + 4));
  v5 = _byteswap_ulong(*(_DWORD *)(a1 + 16));
  if ( a2[1] < a1 + v4 || v4 < 2 * (v5 + 10) )
    ft_validator_error((int)a2, 8);
  if ( a2[2] && v5 )
  {
    do
    {
      v6 = *(unsigned __int8 *)(v3 + 20);
      v7 = *(unsigned __int8 *)(v3 + 21);
      v3 += 2;
      if ( (v7 | (unsigned int)(v6 << 8)) >= a2[68] )
        ft_validator_error((int)a2, 16);
      --v5;
    }
    while ( v5 );
  }
  return 0;
}


// ===== 7287dc tt_cmap8_validate =====
int __fastcall tt_cmap8_validate(int a1, _DWORD *a2)
{
  int v2; // r6
  unsigned int v4; // r3
  int v5; // r7
  int v6; // r4
  int v7; // r0
  int v8; // r5
  int v9; // r12
  int v10; // r6
  int v11; // r11
  unsigned int v12; // r5
  _BOOL4 v13; // r1
  unsigned int v14; // r4
  unsigned int v15; // r3
  int v16; // r3
  char v17; // r10
  int v18; // r3
  char v19; // r2
  unsigned int v21; // [sp+Ch] [bp-10h]
  unsigned int v22; // [sp+10h] [bp-Ch]
  unsigned int v23; // [sp+14h] [bp-8h]

  v2 = a1 + 0x2000;
  if ( a2[1] < (unsigned int)(a1 + 8208) )
    ft_validator_error((int)a2, 8);
  v4 = _byteswap_ulong(*(_DWORD *)(a1 + 4));
  if ( a2[1] < a1 + v4 || v4 <= 0x200F )
    ft_validator_error((int)a2, 8);
  v5 = a1 + 12;
  v23 = _byteswap_ulong(*(_DWORD *)(a1 + 8204));
  if ( a2[1] < a1 + 8208 + 12 * v23 )
    ft_validator_error((int)a2, 8);
  if ( v23 )
  {
    v6 = *(unsigned __int8 *)(a1 + 8208);
    v7 = *(unsigned __int8 *)(a1 + 8209);
    v8 = *(unsigned __int8 *)(v5 + 8198);
    v9 = *(unsigned __int8 *)(v5 + 8199);
    v10 = v2 + 28;
    v22 = 0;
    v11 = 0;
    while ( 1 )
    {
      v12 = (v7 << 16) | (v6 << 24) | v9 | (v8 << 8);
      v21 = _byteswap_ulong(*(_DWORD *)(v10 - 8));
      if ( v12 > v21 )
        ft_validator_error((int)a2, 8);
      v13 = v12 <= v22;
      if ( !v11 )
        v13 = 0;
      if ( v13 )
        ft_validator_error((int)a2, 8);
      if ( a2[2] )
      {
        v14 = v21 - v12;
        if ( v21 - v12 + _byteswap_ulong(*(_DWORD *)(v10 - 4)) >= a2[68] )
          ft_validator_error((int)a2, 16);
        v15 = HIWORD(v12);
        if ( HIWORD(v12) )
        {
          if ( v14 != -1 )
          {
            while ( 1 )
            {
              if ( (*(unsigned __int8 *)(v5 + (v12 >> 19)) & (128 >> (v15 & 7))) == 0 )
                ft_validator_error((int)a2, 8);
              v16 = *(unsigned __int8 *)(v5 + ((unsigned __int16)v12 >> 3));
              v17 = v12++ & 7;
              if ( (v16 & (128 >> v17)) == 0 )
                ft_validator_error((int)a2, 8);
              if ( !v14 )
                break;
              --v14;
              v15 = HIWORD(v12);
            }
          }
        }
        else
        {
          if ( HIWORD(v21) )
            ft_validator_error((int)a2, 8);
          if ( v14 != -1 )
          {
            while ( 1 )
            {
              v18 = *(unsigned __int8 *)(v5 + ((unsigned __int16)v12 >> 3));
              v19 = v12++ & 7;
              if ( (v18 & (128 >> v19)) != 0 )
                ft_validator_error((int)a2, 8);
              if ( !v14 )
                break;
              --v14;
            }
          }
        }
      }
      ++v11;
      v10 += 12;
      if ( v11 == v23 )
        break;
      v22 = v21;
      v8 = *(unsigned __int8 *)(v10 - 10);
      v7 = *(unsigned __int8 *)(v10 - 11);
      v6 = *(unsigned __int8 *)(v10 - 12);
      v9 = *(unsigned __int8 *)(v10 - 9);
    }
  }
  return 0;
}


// ===== 728ae4 tt_cmap6_validate =====
int __fastcall tt_cmap6_validate(unsigned __int8 *a1, _DWORD *a2)
{
  unsigned __int8 *v3; // r4
  unsigned int v4; // r3
  int v5; // r5
  int v6; // r1
  int v7; // r2

  v3 = a1;
  if ( a2[1] < (unsigned int)(a1 + 10) )
    ft_validator_error((int)a2, 8);
  v4 = a1[3] | (a1[2] << 8);
  v5 = a1[9] | (a1[8] << 8);
  if ( a2[1] < (unsigned int)&a1[v4] || v4 < 2 * (v5 + 5) )
    ft_validator_error((int)a2, 8);
  if ( a2[2] && v5 )
  {
    do
    {
      v6 = v3[10];
      v7 = v3[11];
      v3 += 2;
      if ( (v7 | (unsigned int)(v6 << 8)) >= a2[68] )
        ft_validator_error((int)a2, 16);
      --v5;
    }
    while ( v5 );
  }
  return 0;
}


// ===== 728bb0 tt_cmap4_validate =====
unsigned int __fastcall tt_cmap4_validate(unsigned __int8 *a1, _DWORD *a2)
{
  unsigned __int8 *v2; // r9
  unsigned int v4; // r4
  unsigned int v5; // r6
  int v6; // r1
  unsigned int v7; // r5
  unsigned __int8 *v8; // r5
  unsigned __int8 *v9; // r10
  int v10; // r12
  unsigned __int8 *v11; // r3
  unsigned __int8 *v12; // r5
  int v13; // r11
  int v14; // r2
  unsigned __int8 *v15; // r10
  unsigned int v16; // r6
  unsigned int v17; // r8
  int v18; // r2
  int v19; // r4
  unsigned int v20; // r12
  _BOOL4 v21; // r1
  unsigned int v22; // r0
  bool v23; // cc
  bool v24; // zf
  unsigned __int8 *v25; // r4
  unsigned int v26; // r5
  int v27; // t1
  unsigned int v28; // r3
  int v29; // r8
  bool v31; // zf
  int v32; // [sp+Ch] [bp-40h]
  int v33; // [sp+14h] [bp-38h]
  unsigned __int8 *v34; // [sp+24h] [bp-28h]
  unsigned int v35; // [sp+28h] [bp-24h]
  unsigned __int8 *v36; // [sp+2Ch] [bp-20h]
  unsigned int v37; // [sp+30h] [bp-1Ch]
  unsigned int v38; // [sp+34h] [bp-18h]
  unsigned int v39; // [sp+38h] [bp-14h]
  unsigned int v40; // [sp+3Ch] [bp-10h]
  unsigned int v41; // [sp+40h] [bp-Ch]

  v2 = a1;
  v4 = a1[3] | (a1[2] << 8);
  if ( v4 <= 0xF )
    ft_validator_error((int)a2, 8);
  if ( a2[1] < (unsigned int)&a1[v4] )
  {
    if ( a2[2] )
      ft_validator_error((int)a2, 8);
    v4 = a2[1] - (_DWORD)a1;
  }
  v5 = a1[7] | (a1[6] << 8);
  if ( a2[2] > 1u && (a1[7] & 1) != 0 )
    ft_validator_error((int)a2, 8);
  v37 = v5 >> 1;
  if ( v4 < 8 * ((v5 >> 1) + 2) )
    ft_validator_error((int)a2, 8);
  if ( a2[2] > 1u )
  {
    v6 = a1[9];
    if ( a1[13] & 1 | v6 & 1 )
      ft_validator_error((int)a2, 8);
    v7 = (unsigned int)(v6 | (a1[8] << 8)) >> 1;
    if ( v37 < v7 || v37 > 2 * v7 || v7 + ((unsigned int)(a1[13] | (a1[12] << 8)) >> 1) != v37 || v7 != 1 << a1[11] )
      ft_validator_error((int)a2, 8);
  }
  v8 = &a1[2 * v37 + 16];
  v9 = &v8[2 * v37];
  v40 = (unsigned int)&v9[2 * v37 + 2 * v37];
  if ( a2[2] > 1u && (__int16)_byteswap_ushort(*(_WORD *)&a1[2 * v37 + 14 - 2]) != -1 )
    ft_validator_error((int)a2, 8);
  if ( !v37 )
    return 0;
  v10 = v8[1];
  v39 = 0;
  v34 = &v8[2 * v37];
  v11 = &a1[2 * v37 + 16];
  v41 = (unsigned int)&a1[v4];
  v12 = &v9[2 * v37];
  v35 = 0;
  v38 = 0;
  v13 = 0;
  v32 = v10;
  v33 = *v11;
  while ( 1 )
  {
    v14 = (char)*v34;
    v34 += 2;
    v15 = v12 + 2;
    v16 = v2[15] | (v2[14] << 8);
    v17 = v32 | (v33 << 8);
    v18 = *(v34 - 1) | (v14 << 8);
    v19 = v12[1] | (*v12 << 8);
    if ( v17 > v16 )
      ft_validator_error((int)a2, 8);
    v20 = v35;
    v21 = v17 <= v35;
    if ( !v13 )
      v21 = 0;
    if ( v21 )
    {
      if ( a2[2] )
        ft_validator_error((int)a2, 8);
      v22 = v38;
      v23 = v35 > v16;
      if ( v35 <= v16 )
        v23 = v38 > v17;
      if ( v23 )
        v20 = v39;
      else
        v22 = v39;
      if ( v23 )
        v20 |= 1u;
      else
        v22 |= 2u;
      if ( v23 )
        v39 = v20;
      else
        v39 = v22;
    }
    v24 = v19 == 0xFFFF;
    if ( v19 != 0xFFFF )
      v24 = v19 == 0;
    if ( v24 )
    {
      if ( v19 == 0xFFFF )
      {
        if ( a2[2] > 1u || v37 - 1 != v13 )
          goto LABEL_54;
        v31 = v16 == 0xFFFF;
        if ( v16 == 0xFFFF )
          v31 = v17 == 0xFFFF;
        if ( !v31 || v18 != 1 )
LABEL_54:
          ft_validator_error((int)a2, 8);
      }
    }
    else
    {
      v25 = &v12[v19];
      if ( a2[2] )
      {
        if ( v40 > (unsigned int)v25 || (unsigned int)&v25[2 * (v16 + 1 - v17)] > v41 )
          ft_validator_error((int)a2, 8);
      }
      else if ( v40 > (unsigned int)v25 || a2[1] < (unsigned int)&v25[2 * (v16 + 1 - v17)] )
      {
        ft_validator_error((int)a2, 8);
      }
      if ( a2[2] && v17 < v16 )
      {
        v26 = v32 | (v33 << 8);
        v36 = v11;
        do
        {
          v27 = *v25;
          v25 += 2;
          ++v26;
          v28 = (unsigned __int16)(v18 + (*(v25 - 1) | (unsigned __int16)((_WORD)v27 << 8)));
          if ( *(v25 - 1) | (v27 << 8) && v28 >= a2[68] )
            ft_validator_error((int)a2, 16);
        }
        while ( v16 > v26 );
        v11 = v36;
      }
    }
    ++v13;
    v2 += 2;
    if ( v13 == v37 )
      return v39;
    v38 = v32 | (v33 << 8);
    v35 = v16;
    v12 = v15;
    v33 = v11[2];
    v29 = v11[3];
    v11 += 2;
    v32 = v29;
  }
}


// ===== 729068 tt_cmap0_validate =====
int __fastcall tt_cmap0_validate(int a1, _DWORD *a2)
{
  int v2; // r4
  unsigned int v3; // r2
  unsigned int v4; // r2

  v2 = a1;
  v3 = *(unsigned __int8 *)(a1 + 3) | (*(unsigned __int8 *)(a1 + 2) << 8);
  if ( a2[1] < a1 + v3 || v3 <= 0x105 )
    ft_validator_error((int)a2, 8);
  if ( a2[2] )
  {
    do
    {
      v4 = *(unsigned __int8 *)(v2 + 6);
      ++v2;
      if ( v4 >= a2[68] )
        ft_validator_error((int)a2, 16);
    }
    while ( v2 != a1 + 256 );
  }
  return 0;
}


// ===== 7290fc tt_cmap2_validate =====
int __fastcall tt_cmap2_validate(unsigned __int8 *a1, _DWORD *a2)
{
  unsigned int v3; // r3
  unsigned __int8 *v4; // r7
  unsigned int v5; // r4
  unsigned int v6; // r8
  int v7; // r8
  int v8; // r3
  unsigned int v9; // r8
  unsigned __int8 *v10; // r6
  int v11; // r11
  unsigned __int8 *v12; // r8
  int v13; // r9
  int v14; // r7
  unsigned int v15; // r1
  unsigned int v16; // r7
  unsigned int v17; // r9
  unsigned __int8 *v18; // r7
  int v19; // t1
  unsigned int v20; // r3
  unsigned int v22; // [sp+4h] [bp-8h]

  v3 = a1[3] | (a1[2] << 8);
  v22 = (unsigned int)&a1[v3];
  if ( (unsigned int)&a1[v3] > a2[1] || v3 <= 0x205 )
    ft_validator_error((int)a2, 8);
  v4 = a1;
  v5 = 0;
  do
  {
    v7 = v4[6];
    v8 = v4[7];
    v4 += 2;
    v9 = v8 | (v7 << 8);
    if ( a2[2] > 1u && (v9 & 7) != 0 )
      ft_validator_error((int)a2, 8);
    v6 = v9 >> 3;
    if ( v5 < v6 )
      v5 = v6;
  }
  while ( v4 != a1 + 512 );
  v10 = a1 + 518;
  if ( (unsigned int)&a1[8 * v5 + 526] > a2[1] )
    ft_validator_error((int)a2, 8);
  v11 = 0;
  while ( 1 )
  {
    v12 = v10 + 8;
    v13 = v10[3] | (v10[2] << 8);
    v14 = v10[7] | (v10[6] << 8);
    if ( a2[2] > 1u )
    {
      v15 = v10[1] | (*v10 << 8);
      if ( v15 > 0xFF || v13 + v15 > 0x100 )
        ft_validator_error((int)a2, 8);
    }
    if ( v14 )
    {
      v16 = (unsigned int)&v12[v14 - 2];
      if ( (unsigned int)&a1[8 * v5 + 526] > v16 || v22 < v16 + 2 * v13 )
        ft_validator_error((int)a2, 9);
      if ( a2[2] )
      {
        v17 = (unsigned int)&v12[2 * v13];
        if ( (unsigned int)v12 < v17 )
        {
          v18 = v10 + 8;
          do
          {
            v19 = *v18;
            v18 += 2;
            v20 = (unsigned __int16)((v10[5] | (unsigned __int16)((char)v10[4] << 8))
                                   + (*(v18 - 1) | (unsigned __int16)((_WORD)v19 << 8)));
            if ( *(v18 - 1) | (v19 << 8) && v20 >= a2[68] )
              ft_validator_error((int)a2, 16);
          }
          while ( v17 > (unsigned int)v18 );
          v12 += ((v17 - (_DWORD)v10 - 9) & 0xFFFFFFFE) + 2;
        }
      }
    }
    if ( v5 < ++v11 )
      break;
    v10 = v12;
  }
  return 0;
}


// ===== 72934c tt_get_kerning =====
int __fastcall tt_get_kerning(int a1, int a2, int a3, _DWORD *a4)
{
  int v4; // r12

  v4 = *(_DWORD *)(a1 + 532);
  a4[1] = 0;
  *a4 = 0;
  if ( v4 )
    *a4 = (*(int (**)(void))(v4 + 128))();
  return 0;
}


// ===== 729380 tt_face_get_location =====
unsigned int __fastcall tt_face_get_location(int a1, unsigned int a2, unsigned int *a3)
{
  unsigned int v3; // r12
  unsigned int result; // r0
  int v6; // r4
  unsigned int v7; // r12
  unsigned int v8; // r5
  bool v9; // cc
  int v10; // r0
  int v11; // r1
  unsigned int v12; // r1
  unsigned int v13; // r3
  int v14; // r5

  v3 = *(_DWORD *)(a1 + 736);
  if ( v3 <= a2 )
  {
    result = 0;
LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }
  if ( *(_WORD *)(a1 + 210) )
  {
    v14 = *(_DWORD *)(a1 + 740);
    result = _byteswap_ulong(*(_DWORD *)(v14 + 4 * a2));
    if ( v14 + 4 * a2 + 8 > v14 + 4 * v3 )
      goto LABEL_17;
    v12 = _byteswap_ulong(*(_DWORD *)(v14 + 4 * a2 + 4));
  }
  else
  {
    v6 = *(_DWORD *)(a1 + 740);
    v7 = v6 + 2 * v3;
    v8 = v6 + 2 * a2 + 4;
    v9 = v8 > v7;
    v10 = *(unsigned __int8 *)(v6 + 2 * a2 + 1) | (*(unsigned __int8 *)(v6 + 2 * a2) << 8);
    if ( v8 > v7 )
    {
      v11 = *(unsigned __int8 *)(v6 + 2 * a2 + 1) | (*(unsigned __int8 *)(v6 + 2 * a2) << 8);
    }
    else
    {
      v7 = *(unsigned __int8 *)(v6 + 2 * a2 + 2);
      v11 = *(unsigned __int8 *)(v6 + 2 * a2 + 3);
    }
    result = 2 * v10;
    if ( !v9 )
      v11 |= v7 << 8;
    v12 = 2 * v11;
  }
  if ( result <= v12 )
    v13 = v12 - result;
  else
    v13 = *(_DWORD *)(a1 + 708);
  if ( result > v12 )
    v13 -= result;
LABEL_18:
  *a3 = v13;
  return result;
}


// ===== 729460 tt_size_init =====
int __fastcall tt_size_init(int a1)
{
  *(_DWORD *)(a1 + 112) = -1;
  *(_BYTE *)(a1 + 300) = 0;
  *(_BYTE *)(a1 + 301) = 0;
  *(_BYTE *)(a1 + 108) = 0;
  return 0;
}


// ===== 729480 TT_MulFix14 =====
int __fastcall TT_MulFix14(int a1, int a2)
{
  unsigned int v2; // r3
  unsigned int v3; // r4
  unsigned int v4; // r2
  unsigned int v5; // r12
  unsigned int v6; // r3
  unsigned int v7; // r2
  int v8; // r0
  bool v9; // nf
  int result; // r0

  v2 = abs32(a1);
  v3 = abs32(a2);
  v4 = HIWORD(v2) * v3;
  v5 = (v4 << 16) + 0x2000;
  v6 = v5 + (unsigned __int16)v2 * v3;
  v7 = HIWORD(v4);
  v8 = a2 ^ a1;
  if ( v5 > v6 )
    ++v7;
  v9 = v8 < 0;
  result = (v6 >> 14) | (v7 << 18);
  if ( v9 )
    return -result;
  return result;
}


// ===== 7294d4 TT_DotFix14 =====
int __fastcall TT_DotFix14(int a1, int a2, int a3, int a4)
{
  int v4; // r12
  int v5; // r4
  int v6; // r2
  int v7; // r1
  int v8; // r0
  unsigned int v9; // r12
  int v10; // r0
  int v11; // r2
  int v12; // r2
  unsigned int v13; // r4
  int v14; // r1
  bool v15; // cf
  unsigned int v16; // r4
  int v17; // r3
  int v18; // r1
  unsigned int v19; // r4
  int v20; // r3
  unsigned int v21; // r4
  int v22; // r2

  v4 = (a1 >> 16) * a3;
  v5 = (a2 >> 16) * a4;
  v6 = (unsigned __int16)a1 * a3;
  v7 = (unsigned __int16)a2 * a4;
  v8 = (v4 >> 16) + (v5 >> 16);
  v9 = v6 + (v4 << 16);
  v10 = v8 + (v6 >> 31);
  if ( v9 < v6 )
    v11 = v10 + 1;
  else
    v11 = v10;
  v12 = v11 + (v7 >> 31);
  v13 = v7 + (v5 << 16);
  if ( v13 < v7 )
    v14 = v12 + 1;
  else
    v14 = v12;
  v15 = __CFADD__(v13, v9);
  v16 = v13 + v9;
  v17 = v15;
  v18 = v14 + v17;
  v15 = __CFADD__(v18 >> 31, v16);
  v19 = (v18 >> 31) + v16;
  v20 = (v18 >> 31) + v15 + v18;
  v15 = __CFADD__(v19, 0x2000);
  v21 = v19 + 0x2000;
  v22 = v15;
  return (v21 >> 14) | ((v20 + v22) << 18);
}


// ===== 729564 Read_CVT =====
int __fastcall Read_CVT(int a1, int a2)
{
  return *(_DWORD *)(*(_DWORD *)(a1 + 384) + 4 * a2);
}


// ===== 729570 Write_CVT =====
int __fastcall Write_CVT(int result, int a2, int a3)
{
  *(_DWORD *)(*(_DWORD *)(result + 384) + 4 * a2) = a3;
  return result;
}


// ===== 72957c Move_CVT =====
int __fastcall Move_CVT(int a1, int a2, int a3)
{
  int v3; // r3
  int result; // r0

  v3 = *(_DWORD *)(a1 + 384);
  result = *(_DWORD *)(v3 + 4 * a2);
  *(_DWORD *)(v3 + 4 * a2) = result + a3;
  return result;
}


// ===== 729590 Direct_Move_X =====
int __fastcall Direct_Move_X(int a1, int a2, int a3, int a4)
{
  int result; // r0

  result = *(_DWORD *)(a2 + 16);
  *(_DWORD *)(result + 8 * a3) += a4;
  *(_BYTE *)(*(_DWORD *)(a2 + 24) + a3) |= 8u;
  return result;
}


// ===== 7295b4 Direct_Move_Y =====
int __fastcall Direct_Move_Y(int a1, int a2, int a3, int a4)
{
  int result; // r0

  result = *(_DWORD *)(a2 + 16) + 8 * a3;
  *(_DWORD *)(result + 4) += a4;
  *(_BYTE *)(*(_DWORD *)(a2 + 24) + a3) |= 0x10u;
  return result;
}


// ===== 7295dc Direct_Move_Orig_X =====
int __fastcall Direct_Move_Orig_X(int a1, int a2, int a3, int a4)
{
  int v4; // r1
  int result; // r0

  v4 = *(_DWORD *)(a2 + 12);
  result = *(_DWORD *)(v4 + 8 * a3);
  *(_DWORD *)(v4 + 8 * a3) = result + a4;
  return result;
}


// ===== 7295f0 Direct_Move_Orig_Y =====
void __fastcall Direct_Move_Orig_Y(int a1, int a2, int a3, int a4)
{
  *(_DWORD *)(*(_DWORD *)(a2 + 12) + 8 * a3 + 4) += a4;
}


// ===== 729608 Round_None =====
int __fastcall Round_None(int a1, int a2, int a3)
{
  int result; // r0

  if ( a2 < 0 )
    return (a2 - a3) & ((a2 - a3) >> 31);
  result = a3 + a2;
  if ( ((a2 != 0) & ((unsigned int)(a3 + a2) >> 31)) != 0 )
    return 0;
  return result;
}


// ===== 729634 Round_To_Grid =====
unsigned int __fastcall Round_To_Grid(int a1, int a2, int a3)
{
  int v3; // r2
  bool v4; // zf
  bool v5; // nf

  if ( a2 < 0 )
    return -((a3 - a2 + 32) & 0xFFFFFFC0) & ((signed int)-((a3 - a2 + 32) & 0xFFFFFFC0) >> 31);
  v3 = a2 + 32 + a3;
  v4 = a2 == 0;
  v5 = a2 < 0;
  if ( a2 )
  {
    v4 = v3 == 0;
    v5 = v3 < 0;
  }
  if ( v5 || v4 )
    return 0;
  else
    return v3 & 0xFFFFFFC0;
}


// ===== 729674 Round_To_Half_Grid =====
unsigned int __fastcall Round_To_Half_Grid(int a1, int a2, int a3)
{
  unsigned int result; // r0

  if ( a2 < 0 )
    return (-32 - ((a3 - a2) & 0xFFFFFFC0)) & ((int)(-32 - ((a3 - a2) & 0xFFFFFFC0)) >> 31);
  result = ((a3 + a2) & 0xFFFFFFC0) + 32;
  if ( ((a2 != 0) & (result >> 31)) != 0 )
    return 0;
  return result;
}


// ===== 7296b8 Round_Down_To_Grid =====
unsigned int __fastcall Round_Down_To_Grid(int a1, int a2, int a3)
{
  int v3; // r2
  bool v4; // zf
  bool v5; // nf

  if ( a2 < 0 )
    return -((a3 - a2) & 0xFFFFFFC0) & ((signed int)-((a3 - a2) & 0xFFFFFFC0) >> 31);
  v3 = a3 + a2;
  v4 = a2 == 0;
  v5 = a2 < 0;
  if ( a2 )
  {
    v4 = v3 == 0;
    v5 = v3 < 0;
  }
  if ( v5 || v4 )
    return 0;
  else
    return v3 & 0xFFFFFFC0;
}


// ===== 7296f0 Round_Up_To_Grid =====
unsigned int __fastcall Round_Up_To_Grid(int a1, int a2, int a3)
{
  int v3; // r2
  bool v4; // zf
  bool v5; // nf

  if ( a2 < 0 )
    return -((a3 - a2 + 63) & 0xFFFFFFC0) & ((signed int)-((a3 - a2 + 63) & 0xFFFFFFC0) >> 31);
  v3 = a2 + 63 + a3;
  v4 = a2 == 0;
  v5 = a2 < 0;
  if ( a2 )
  {
    v4 = v3 == 0;
    v5 = v3 < 0;
  }
  if ( v5 || v4 )
    return 0;
  else
    return v3 & 0xFFFFFFC0;
}


// ===== 729730 Round_To_Double_Grid =====
unsigned int __fastcall Round_To_Double_Grid(int a1, int a2, int a3)
{
  int v3; // r2
  bool v4; // zf
  bool v5; // nf

  if ( a2 < 0 )
    return -((a3 - a2 + 16) & 0xFFFFFFE0) & ((signed int)-((a3 - a2 + 16) & 0xFFFFFFE0) >> 31);
  v3 = a2 + 16 + a3;
  v4 = a2 == 0;
  v5 = a2 < 0;
  if ( a2 )
  {
    v4 = v3 == 0;
    v5 = v3 < 0;
  }
  if ( v5 || v4 )
    return 0;
  else
    return v3 & 0xFFFFFFE0;
}


// ===== 729770 Round_Super =====
int __fastcall Round_Super(_DWORD *a1, int a2, int a3)
{
  int v3; // r3
  int v4; // r4
  int v5; // r12
  bool v6; // r0
  unsigned int v7; // r1
  int v9; // r12
  int v10; // r1
  int v11; // r3
  int v12; // r0

  if ( a2 < 0 )
  {
    v9 = a1[120];
    v10 = a1[121] - v9 + a3 - a2;
    v11 = -a1[119];
    v12 = -(v10 & v11);
    if ( v12 < 0 || (v10 & v11) == 0 )
      return v12 - v9;
    else
      return -v9;
  }
  else
  {
    v3 = a1[120];
    v4 = a1[121];
    v5 = a1[119];
    v6 = a2 != 0;
    v7 = (v4 - v3 + a2 + a3) & -v5;
    if ( (*(_DWORD *)&v6 & (v7 >> 31)) != 0 )
      v7 = 0;
    return v7 + v3;
  }
}


// ===== 7297ec Round_Super_45 =====
int __fastcall Round_Super_45(_DWORD *a1, int a2, int a3)
{
  int v3; // r5
  unsigned int v4; // r0
  int v6; // r7
  int v7; // r0

  if ( a2 < 0 )
  {
    v6 = a1[120];
    v7 = a1[119] * ((v6 - a1[121] + a2 - a3) / a1[119]);
    if ( v7 > 0 )
      return -v6;
    else
      return v7 - v6;
  }
  else
  {
    v3 = a1[120];
    v4 = a1[119] * ((a1[121] - v3 + a2 + a3) / a1[119]);
    if ( ((a2 != 0) & (v4 >> 31)) != 0 )
      v4 = 0;
    return v4 + v3;
  }
}


// ===== 729868 SetSuperRound =====
_DWORD *__fastcall SetSuperRound(_DWORD *result, int a2, char a3)
{
  int v3; // r3
  unsigned int v4; // r3
  bool v5; // cc
  int v6; // r3
  int v7; // r2
  int v8; // r1

  v3 = a3 & 0xC0;
  if ( v3 != 64 )
  {
    if ( (a3 & 0xC0u) <= 0x40 )
    {
      if ( (a3 & 0xC0) == 0 )
        result[119] = a2 / 2;
      goto LABEL_5;
    }
    if ( v3 == 128 )
    {
      result[119] = 2 * a2;
      goto LABEL_5;
    }
    if ( v3 != 192 )
    {
LABEL_5:
      v4 = a3 & 0x30;
      v5 = v4 <= 0x10;
      if ( v4 != 16 )
        goto LABEL_6;
LABEL_19:
      v6 = result[119];
      result[120] = v6 / 4;
      goto LABEL_11;
    }
  }
  v4 = a3 & 0x30;
  v5 = v4 <= 0x10;
  result[119] = a2;
  if ( v4 == 16 )
    goto LABEL_19;
LABEL_6:
  if ( v5 )
  {
    if ( !v4 )
      result[120] = 0;
    goto LABEL_10;
  }
  if ( v4 != 32 )
  {
    if ( v4 == 48 )
    {
      v6 = result[119];
      result[120] = 3 * v6 / 4;
      goto LABEL_11;
    }
LABEL_10:
    v6 = result[119];
    goto LABEL_11;
  }
  v6 = result[119];
  result[120] = v6 / 2;
LABEL_11:
  v7 = a3 & 0xF;
  if ( v7 )
    result[121] = v6 * (v7 - 4) / 8;
  else
    result[121] = v6 - 1;
  v8 = result[120];
  result[121] /= 256;
  result[119] = v6 / 256;
  result[120] = v8 / 256;
  return result;
}


// ===== 7299a8 Dual_Project =====
int __fastcall Dual_Project(int a1, int a2, int a3)
{
  return TT_DotFix14(a2, a3, *(__int16 *)(a1 + 290), *(__int16 *)(a1 + 292));
}


// ===== 7299c8 Project_x =====
int __fastcall Project_x(int a1, int a2)
{
  return a2;
}


// ===== 7299d0 Project_y =====
int __fastcall Project_y(int a1, int a2, int a3)
{
  return a3;
}


// ===== 7299d8 Compute_Funcs =====
int __fastcall Compute_Funcs(int result)
{
  int v1; // r3
  int v2; // r2
  int v3; // r1

  if ( *(_BYTE *)(*(_DWORD *)result + 692) )
  {
    if ( *(_WORD *)(result + 294) == 0x4000 && *(_WORD *)(result + 298) == 0x4000 )
    {
      *(_BYTE *)(result + 302) = 1;
      *(_WORD *)(result + 294) = 0;
      *(_WORD *)(result + 296) = 0;
      *(_WORD *)(result + 298) = 0;
      *(_WORD *)(result + 300) = 0;
      *(_DWORD *)(result + 572) = Project_x;
      *(_DWORD *)(result + 584) = Direct_Move_X;
      *(_DWORD *)(result + 588) = Direct_Move_Orig_X;
    }
    else
    {
      *(_WORD *)(result + 300) = 0;
      *(_WORD *)(result + 294) = 0;
      *(_WORD *)(result + 296) = 0;
      *(_WORD *)(result + 298) = 0;
      *(_DWORD *)(result + 572) = Project_y;
      *(_DWORD *)(result + 584) = Direct_Move_Y;
      *(_DWORD *)(result + 588) = Direct_Move_Orig_Y;
      *(_BYTE *)(result + 302) = 0;
    }
    if ( *(_WORD *)(result + 290) == 0x4000 )
    {
      *(_DWORD *)(result + 576) = Project_x;
    }
    else if ( *(_WORD *)(result + 292) == 0x4000 )
    {
      *(_DWORD *)(result + 576) = Project_y;
    }
    else
    {
      *(_DWORD *)(result + 576) = Dual_Project;
    }
    goto LABEL_7;
  }
  v1 = *(unsigned __int16 *)(result + 298);
  if ( v1 == 0x4000 )
  {
    *(_DWORD *)(result + 564) = *(__int16 *)(result + 294) << 16;
    if ( *(_WORD *)(result + 294) != 0x4000 )
      goto LABEL_12;
  }
  else
  {
    v2 = *(unsigned __int16 *)(result + 300);
    if ( v2 == 0x4000 )
      *(_DWORD *)(result + 564) = *(__int16 *)(result + 296) << 16;
    else
      *(_DWORD *)(result + 564) = 4
                                * (*(__int16 *)(result + 296) * (__int16)v2 + *(__int16 *)(result + 294) * (__int16)v1);
    if ( *(_WORD *)(result + 294) != 0x4000 )
    {
LABEL_12:
      if ( *(_WORD *)(result + 296) == 0x4000 )
        *(_DWORD *)(result + 572) = Project_y;
      else
        *(_DWORD *)(result + 572) = Project;
      if ( *(_WORD *)(result + 290) != 0x4000 )
        goto LABEL_15;
      goto LABEL_25;
    }
  }
  *(_DWORD *)(result + 572) = Project_x;
  if ( *(_WORD *)(result + 290) != 0x4000 )
  {
LABEL_15:
    if ( *(_WORD *)(result + 292) == 0x4000 )
      *(_DWORD *)(result + 576) = Project_y;
    else
      *(_DWORD *)(result + 576) = Dual_Project;
    goto LABEL_17;
  }
LABEL_25:
  *(_DWORD *)(result + 576) = Project_x;
LABEL_17:
  v3 = *(_DWORD *)(result + 564);
  *(_DWORD *)(result + 584) = Direct_Move;
  *(_DWORD *)(result + 588) = Direct_Move_Orig;
  if ( v3 == 0x40000000 )
  {
    if ( *(_WORD *)(result + 298) == 0x4000 )
    {
      *(_DWORD *)(result + 584) = Direct_Move_X;
      *(_DWORD *)(result + 588) = Direct_Move_Orig_X;
    }
    else
    {
      if ( *(_WORD *)(result + 300) != 0x4000 )
        goto LABEL_7;
      *(_DWORD *)(result + 584) = Direct_Move_Y;
      *(_DWORD *)(result + 588) = Direct_Move_Orig_Y;
    }
  }
  if ( (unsigned int)(v3 + 0x3FFFFFF) <= 0x7FFFFFE )
    *(_DWORD *)(result + 564) = 0x40000000;
LABEL_7:
  *(_DWORD *)(result + 256) = 0;
  return result;
}


// ===== 729d00 SkipCode =====
int __fastcall SkipCode(int a1)
{
  int v1; // r2
  int v2; // r3
  int v3; // r4
  int v4; // r12
  int v5; // r1
  bool v6; // nf
  int v7; // r3

  v1 = *(_DWORD *)(a1 + 364);
  v2 = *(_DWORD *)(a1 + 372) + *(_DWORD *)(a1 + 360);
  *(_DWORD *)(a1 + 360) = v2;
  if ( v2 < v1 )
  {
    v3 = *(_DWORD *)(a1 + 356);
    v4 = *(unsigned __int8 *)(v3 + v2);
    v5 = opcode_length[v4];
    *(_BYTE *)(a1 + 368) = v4;
    v6 = v5 < 0;
    *(_DWORD *)(a1 + 372) = v5;
    if ( v5 < 0 )
      v5 = 2 - *(unsigned __int8 *)(v3 + v2 + 1) * v5;
    v7 = v5 + v2;
    if ( v6 )
      *(_DWORD *)(a1 + 372) = v5;
    if ( v7 <= v1 )
      return 0;
  }
  *(_DWORD *)(a1 + 12) = 131;
  return 1;
}


// ===== 729d7c Move_Zp2_Point =====
int __fastcall Move_Zp2_Point(int result, int a2, int a3, int a4, char a5)
{
  if ( *(_BYTE *)(*(_DWORD *)result + 692) )
  {
    if ( !*(_BYTE *)(result + 302) )
    {
LABEL_3:
      *(_DWORD *)(*(_DWORD *)(result + 124) + 8 * a2 + 4) += a4;
      if ( a5 )
        *(_BYTE *)(*(_DWORD *)(result + 132) + a2) |= 0x10u;
      return result;
    }
    *(_DWORD *)(*(_DWORD *)(result + 124) + 8 * a2) += a3;
    if ( a5 )
      *(_BYTE *)(*(_DWORD *)(result + 132) + a2) |= 8u;
  }
  else
  {
    if ( *(_WORD *)(result + 298) )
    {
      *(_DWORD *)(*(_DWORD *)(result + 124) + 8 * a2) += a3;
      if ( a5 )
        *(_BYTE *)(*(_DWORD *)(result + 132) + a2) |= 8u;
    }
    if ( *(_WORD *)(result + 300) )
      goto LABEL_3;
  }
  return result;
}


// ===== 729e44 Ins_UNKNOWN =====
int __fastcall Ins_UNKNOWN(int result)
{
  int *v1; // r3
  unsigned int v2; // r1
  int v3; // r2
  int v4; // r1
  int v5; // r12
  _DWORD *v6; // r2
  int v7; // r2
  unsigned int v8; // r1
  int v9; // r3
  int v10; // r12
  unsigned int v11; // r3

  v1 = *(int **)(result + 416);
  v2 = (unsigned int)&v1[4 * *(_DWORD *)(result + 408)];
  if ( (unsigned int)v1 >= v2 )
  {
LABEL_16:
    *(_DWORD *)(result + 12) = 128;
  }
  else
  {
    while ( *((unsigned __int8 *)v1 + 8) != *(unsigned __int8 *)(result + 368) || !*((_BYTE *)v1 + 12) )
    {
      v1 += 4;
      if ( v2 <= (unsigned int)v1 )
        goto LABEL_16;
    }
    v3 = *(_DWORD *)(result + 428);
    if ( v3 < *(_DWORD *)(result + 432) )
    {
      v4 = *(_DWORD *)(result + 436);
      v5 = *(_DWORD *)(result + 352);
      *(_DWORD *)(result + 428) = v3 + 1;
      *(_DWORD *)(v4 + 16 * v3) = v5;
      v6 = (_DWORD *)(v4 + 16 * v3);
      v6[1] = *(_DWORD *)(result + 360) + 1;
      v6[2] = 1;
      v6[3] = v1[1];
      v7 = *v1;
      v8 = v1[1];
      if ( (unsigned int)(*v1 - 1) <= 2 )
      {
        v9 = result + 8 * (v7 + 54);
        v10 = *(_DWORD *)(v9 + 4);
        if ( v10 )
        {
          v11 = *(_DWORD *)(v9 + 8);
          if ( v8 <= v11 )
          {
            *(_DWORD *)(result + 356) = v10;
            *(_DWORD *)(result + 364) = v11;
            *(_DWORD *)(result + 360) = v8;
            *(_DWORD *)(result + 352) = v7;
          }
          else
          {
            *(_DWORD *)(result + 12) = 131;
          }
        }
        else
        {
          *(_DWORD *)(result + 12) = 138;
        }
      }
      else
      {
        *(_DWORD *)(result + 12) = 132;
      }
      *(_BYTE *)(result + 376) = 0;
    }
    else
    {
      *(_DWORD *)(result + 12) = 130;
    }
  }
  return result;
}


// ===== 729f48 tt_size_reset =====
int __fastcall tt_size_reset(int a1)
{
  _WORD *v1; // r6
  int v3; // r1
  int v4; // r2
  int v5; // r3
  int v6; // r1
  int v7; // r2
  unsigned int v8; // r3
  unsigned int v9; // r2
  int v10; // r0
  int v12; // r1
  unsigned int v13; // r0
  int v14; // r3
  unsigned int v15; // r0
  int v16; // r0

  *(_BYTE *)(a1 + 108) = 0;
  v1 = *(_WORD **)a1;
  v3 = *(_DWORD *)(a1 + 16);
  v4 = *(_DWORD *)(a1 + 20);
  v5 = *(_DWORD *)(a1 + 24);
  *(_DWORD *)(a1 + 44) = *(_DWORD *)(a1 + 12);
  *(_DWORD *)(a1 + 48) = v3;
  *(_DWORD *)(a1 + 52) = v4;
  *(_DWORD *)(a1 + 56) = v5;
  v6 = *(_DWORD *)(a1 + 32);
  v7 = *(_DWORD *)(a1 + 36);
  *(_DWORD *)(a1 + 60) = *(_DWORD *)(a1 + 28);
  *(_DWORD *)(a1 + 64) = v6;
  *(_DWORD *)(a1 + 68) = v7;
  v8 = *(unsigned __int16 *)(a1 + 44);
  if ( !*(_WORD *)(a1 + 44) )
    return 151;
  v9 = *(unsigned __int16 *)(a1 + 46);
  if ( !*(_WORD *)(a1 + 46) )
    return 151;
  if ( (v1[88] & 8) != 0 )
  {
    v13 = FT_DivFix(v8 << 6, (unsigned __int16)v1[34]);
    v14 = *(unsigned __int16 *)(a1 + 46);
    *(_DWORD *)(a1 + 48) = v13;
    v15 = FT_DivFix(v14 << 6, (unsigned __int16)v1[34]);
    *(_DWORD *)(a1 + 52) = v15;
    *(_DWORD *)(a1 + 56) = (FT_MulFix((__int16)v1[35], v15) + 32) & 0xFFFFFFC0;
    *(_DWORD *)(a1 + 60) = (FT_MulFix((__int16)v1[36], *(_DWORD *)(a1 + 52)) + 32) & 0xFFFFFFC0;
    *(_DWORD *)(a1 + 64) = (FT_MulFix((__int16)v1[37], *(_DWORD *)(a1 + 52)) + 32) & 0xFFFFFFC0;
    v16 = FT_MulFix((__int16)v1[38], *(_DWORD *)(a1 + 48));
    v8 = *(unsigned __int16 *)(a1 + 44);
    v9 = *(unsigned __int16 *)(a1 + 46);
    *(_DWORD *)(a1 + 68) = (v16 + 32) & 0xFFFFFFC0;
  }
  if ( v8 < v9 )
  {
    v12 = *(_DWORD *)(a1 + 52);
    *(_WORD *)(a1 + 80) = v9;
    *(_DWORD *)(a1 + 88) = v12;
    *(_DWORD *)(a1 + 72) = FT_MulDiv(v8, 0x10000, v9);
    *(_DWORD *)(a1 + 76) = 0x10000;
  }
  else
  {
    v10 = *(_DWORD *)(a1 + 48);
    *(_WORD *)(a1 + 80) = v8;
    *(_DWORD *)(a1 + 88) = v10;
    *(_DWORD *)(a1 + 72) = 0x10000;
    *(_DWORD *)(a1 + 76) = FT_MulDiv(v9, 0x10000, v8);
  }
  *(_BYTE *)(a1 + 108) = 1;
  *(_BYTE *)(a1 + 301) = 0;
  return 0;
}

