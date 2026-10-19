// ===== 68eff4 png_crc_finish =====
bool __fastcall png_crc_finish(int a1, unsigned int a2)
{
  unsigned int v2; // r6
  unsigned int v4; // r5
  int v5; // r2
  _BOOL4 result; // r0

  v2 = *(_DWORD *)(a1 + 368);
  if ( v2 < a2 )
  {
    v4 = a2 - v2;
    v5 = *(_DWORD *)(a1 + 368);
    while ( 1 )
    {
      png_crc_read((struct __jmp_buf_tag *)a1, *(_DWORD *)(a1 + 364), v5);
      if ( v4 <= v2 )
        break;
      v5 = *(_DWORD *)(a1 + 368);
      v4 -= v2;
    }
  }
  else
  {
    v4 = a2;
  }
  if ( v4 )
    png_crc_read((struct __jmp_buf_tag *)a1, *(_DWORD *)(a1 + 364), v4);
  result = png_crc_error(a1);
  if ( result )
  {
    if ( (*(_BYTE *)(a1 + 476) & 0x20) != 0 )
    {
      if ( (*(_DWORD *)(a1 + 300) & 0x200) != 0 )
        goto LABEL_11;
    }
    else if ( (*(_DWORD *)(a1 + 300) & 0x400) == 0 )
    {
LABEL_11:
      png_chunk_error((unsigned __int8 *)a1, "CRC error");
      return 1;
    }
    png_chunk_warning((unsigned __int8 *)a1, "CRC error");
    return 1;
  }
  return result;
}


// ===== 68f0c0 png_handle_IEND =====
bool __fastcall png_handle_IEND(struct __jmp_buf_tag *a1, int a2, unsigned int a3)
{
  if ( (a1[1].__saved_mask.__val[28] & 5) != 5 )
    png_error(a1, "No image in file");
  a1[1].__saved_mask.__val[28] |= 0x18u;
  if ( a3 )
    png_warning((int)a1, "Incorrect IEND chunk length");
  return png_crc_finish((int)a1, a3);
}


// ===== 68f124 png_read_finish_row =====
int __fastcall png_read_finish_row(int result)
{
  unsigned int v1; // r2
  unsigned int v2; // r3
  int v3; // r4
  _DWORD *v4; // r10
  int v5; // r0
  const char *v6; // r1
  unsigned int v7; // r2
  int v8; // r0
  unsigned int v9; // r1
  unsigned int v10; // r3
  int v11; // r1
  int v12; // r3
  int v13; // r2
  int v14; // r3
  unsigned int v15; // r6
  unsigned int v16; // r3
  int v17; // r7
  bool v18; // cc
  unsigned int v19; // r2
  int v20; // r3
  int v21; // r2
  unsigned __int8 v22[7]; // [sp+0h] [bp-Ch] BYREF
  char v23; // [sp+7h] [bp-5h] BYREF

  v1 = *(_DWORD *)(result + 400);
  v2 = *(_DWORD *)(result + 420) + 1;
  *(_DWORD *)(result + 420) = v2;
  v3 = result;
  if ( v2 >= v1 )
  {
    if ( *(_BYTE *)(result + 483) )
    {
      v14 = *(_DWORD *)(result + 408);
      *(_DWORD *)(result + 420) = 0;
      png_memset_check(result, *(void **)(result + 424), 0, v14 + 1);
      LOBYTE(v15) = *(_BYTE *)(v3 + 484);
      while ( 1 )
      {
        v15 = (unsigned __int8)(v15 + 1);
        *(_BYTE *)(v3 + 484) = v15;
        if ( v15 > 6 )
          break;
        result = (*(_DWORD *)(v3 + 392) - 1 + png_pass_inc[v15] - png_pass_start[v15]) / (unsigned int)png_pass_inc[v15];
        v16 = *(unsigned __int8 *)(v3 + 489);
        v17 = result;
        *(_DWORD *)(v3 + 416) = result;
        v18 = v16 > 7;
        if ( v16 > 7 )
          v19 = (v16 >> 3) * result;
        else
          v19 = v16 * result;
        v20 = *(_DWORD *)(v3 + 304);
        if ( !v18 )
          v19 = (v19 + 7) >> 3;
        *(_DWORD *)(v3 + 412) = v19 + 1;
        if ( (v20 & 2) == 0 )
        {
          result = (*(_DWORD *)(v3 + 396) - 1 + png_pass_yinc[v15] - png_pass_ystart[v15])
                 / (unsigned int)png_pass_yinc[v15];
          *(_DWORD *)(v3 + 400) = result;
          if ( !v17 )
            continue;
        }
        return result;
      }
    }
    if ( (*(_DWORD *)(v3 + 300) & 0x20) != 0 )
    {
      v12 = *(_DWORD *)(v3 + 460);
      v4 = (_DWORD *)(v3 + 308);
    }
    else
    {
      *(_DWORD *)(v3 + 320) = &v23;
      *(_DWORD *)(v3 + 324) = 1;
      v4 = (_DWORD *)(v3 + 308);
      while ( 1 )
      {
        if ( !*(_DWORD *)(v3 + 312) )
        {
          while ( 1 )
          {
            v7 = *(_DWORD *)(v3 + 460);
            v8 = v3;
            v9 = v7;
            if ( v7 )
              break;
            while ( 1 )
            {
              png_crc_finish(v8, v9);
              png_read_data((struct __jmp_buf_tag *)v3);
              *(_DWORD *)(v3 + 460) = png_get_uint_31((struct __jmp_buf_tag *)v3, v22);
              png_reset_crc(v3);
              png_crc_read((struct __jmp_buf_tag *)v3, v3 + 476, 4);
              if ( !memcmp((const void *)(v3 + 476), png_IDAT, 4u) )
                break;
              png_error((struct __jmp_buf_tag *)v3, "Not enough image data");
              v7 = *(_DWORD *)(v3 + 460);
              v8 = v3;
              v9 = v7;
              if ( v7 )
                goto LABEL_15;
            }
          }
LABEL_15:
          v10 = *(_DWORD *)(v3 + 368);
          v11 = *(_DWORD *)(v3 + 364);
          *(_DWORD *)(v3 + 312) = v10;
          if ( v10 > v7 )
            *(_DWORD *)(v3 + 312) = v7;
          else
            v7 = v10;
          *(_DWORD *)(v3 + 308) = v11;
          png_crc_read((struct __jmp_buf_tag *)v3, v11, v7);
          *(_DWORD *)(v3 + 460) -= *(_DWORD *)(v3 + 312);
        }
        v5 = inflate((unsigned __int8 **)(v3 + 308), 1);
        if ( v5 == 1 )
          break;
        if ( v5 )
        {
          v6 = *(const char **)(v3 + 332);
          if ( !v6 )
            v6 = "Decompression Error";
          png_error((struct __jmp_buf_tag *)v3, v6);
        }
        if ( !*(_DWORD *)(v3 + 324) )
        {
          png_warning(v3, "Extra compressed data.");
          v12 = *(_DWORD *)(v3 + 460);
          v13 = *(_DWORD *)(v3 + 300) | 0x20;
          *(_DWORD *)(v3 + 296) |= 8u;
          *(_DWORD *)(v3 + 300) = v13;
          goto LABEL_26;
        }
      }
      if ( !*(_DWORD *)(v3 + 324) || *(_DWORD *)(v3 + 312) || (v12 = *(_DWORD *)(v3 + 460)) != 0 )
      {
        png_warning(v3, "Extra compressed data");
        v12 = *(_DWORD *)(v3 + 460);
      }
      v21 = *(_DWORD *)(v3 + 300) | 0x20;
      *(_DWORD *)(v3 + 296) |= 8u;
      *(_DWORD *)(v3 + 300) = v21;
LABEL_26:
      *(_DWORD *)(v3 + 324) = 0;
    }
    if ( v12 || *(_DWORD *)(v3 + 312) )
      png_warning(v3, "Extra compression data");
    result = inflateReset(v4);
    *(_DWORD *)(v3 + 296) |= 8u;
  }
  return result;
}


// ===== 68f470 png_handle_unknown =====
bool __fastcall png_handle_unknown(int a1, int a2, size_t a3)
{
  int v3; // r6
  unsigned int v7; // r1
  int v8; // r3
  int (__fastcall *v9)(int, int); // r3
  int v10; // r0
  void *v12; // r0

  v3 = *(_DWORD *)(a1 + 296);
  if ( (v3 & 4) != 0 && memcmp((const void *)(a1 + 476), png_IDAT, 4u) )
    *(_DWORD *)(a1 + 296) = v3 | 8;
  if ( (*(_BYTE *)(a1 + 476) & 0x20) == 0
    && png_handle_as_unknown(a1, (void *)(a1 + 476)) != 3
    && !*(_DWORD *)(a1 + 732) )
  {
    png_chunk_error((unsigned __int8 *)a1, "unknown critical chunk");
  }
  if ( (*(_DWORD *)(a1 + 300) & 0x8000) != 0 || *(_DWORD *)(a1 + 732) )
  {
    v8 = *(_DWORD *)(a1 + 476);
    *(_DWORD *)(a1 + 824) = a3;
    *(_DWORD *)(a1 + 812) = v8;
    *(_BYTE *)(a1 + 816) = 0;
    if ( a3 )
    {
      v12 = png_malloc((struct __jmp_buf_tag *)a1, a3);
      *(_DWORD *)(a1 + 820) = v12;
      png_crc_read((struct __jmp_buf_tag *)a1, (int)v12, a3);
    }
    else
    {
      *(_DWORD *)(a1 + 820) = 0;
    }
    v9 = *(int (__fastcall **)(int, int))(a1 + 732);
    if ( v9 )
    {
      v10 = v9(a1, a1 + 812);
      if ( v10 < 0 )
      {
        png_chunk_error((unsigned __int8 *)a1, "error in user chunk");
        goto LABEL_16;
      }
      if ( v10 )
      {
LABEL_16:
        png_free(a1, *(void **)(a1 + 820));
        v7 = 0;
        *(_DWORD *)(a1 + 820) = 0;
        return png_crc_finish(a1, v7);
      }
      if ( (*(_BYTE *)(a1 + 476) & 0x20) == 0 && png_handle_as_unknown(a1, (void *)(a1 + 476)) != 3 )
        png_chunk_error((unsigned __int8 *)a1, "unknown critical chunk");
    }
    png_set_unknown_chunks(a1, a2, a1 + 812, 1);
    goto LABEL_16;
  }
  v7 = a3;
  return png_crc_finish(a1, v7);
}


// ===== 68f610 png_handle_zTXt =====
void __fastcall png_handle_zTXt(int a1, int a2, int a3)
{
  int v3; // r3
  void *v7; // r0
  _BYTE *v8; // r2
  unsigned int v9; // r7
  int v11; // r3
  unsigned int v12; // r7
  size_t v13; // r6
  _DWORD *v14; // r0
  void *v15; // r5
  int v16; // r6
  size_t v17; // [sp+Ch] [bp-4h] BYREF

  v3 = *(_DWORD *)(a1 + 296);
  if ( (v3 & 1) == 0 )
  {
    png_error((struct __jmp_buf_tag *)a1, "Missing IHDR before zTXt");
    v3 = *(_DWORD *)(a1 + 296);
  }
  if ( (v3 & 4) != 0 )
    *(_DWORD *)(a1 + 296) = v3 | 8;
  png_free(a1, *(void **)(a1 + 840));
  v7 = png_malloc_warn((struct __jmp_buf_tag *)a1, a3 + 1);
  *(_DWORD *)(a1 + 840) = v7;
  if ( !v7 )
  {
    png_warning(a1, "Out of memory processing zTXt chunk.");
    return;
  }
  png_crc_read((struct __jmp_buf_tag *)a1, (int)v7, a3);
  if ( png_crc_finish(a1, 0) )
  {
LABEL_18:
    png_free(a1, *(void **)(a1 + 840));
    *(_DWORD *)(a1 + 840) = 0;
    return;
  }
  *(_BYTE *)(*(_DWORD *)(a1 + 840) + a3) = 0;
  v8 = *(_BYTE **)(a1 + 840);
  if ( *v8 )
  {
    v9 = *(_DWORD *)(a1 + 840);
    while ( *(_BYTE *)++v9 )
      ;
  }
  else
  {
    v9 = *(_DWORD *)(a1 + 840);
  }
  if ( v9 >= (unsigned int)&v8[a3 - 2] )
  {
    png_warning(a1, "Truncated zTXt chunk");
    goto LABEL_18;
  }
  v11 = *(char *)(v9 + 1);
  v12 = v9 + 1;
  if ( v11 )
  {
    png_warning(a1, "Unknown compression type in zTXt chunk");
    v8 = *(_BYTE **)(a1 + 840);
  }
  v13 = v12 + 1 - (_DWORD)v8;
  png_decompress_chunk(a1, 0, a3, v13, &v17);
  v14 = png_malloc_warn((struct __jmp_buf_tag *)a1, 0x10u);
  v15 = v14;
  if ( v14 )
  {
    *v14 = 0;
    v14[1] = *(_DWORD *)(a1 + 840);
    v14[2] = *(_DWORD *)(a1 + 840) + v13;
    v14[3] = v17;
    v16 = png_set_text_2(a1, a2, v14, 1);
    png_free(a1, v15);
    png_free(a1, *(void **)(a1 + 840));
    *(_DWORD *)(a1 + 840) = 0;
    if ( v16 )
      png_error((struct __jmp_buf_tag *)a1, "Insufficient memory to store zTXt chunk.");
  }
  else
  {
    png_warning(a1, "Not enough memory to process zTXt chunk.");
    png_free(a1, *(void **)(a1 + 840));
    *(_DWORD *)(a1 + 840) = 0;
  }
}


// ===== 68f828 png_handle_tEXt =====
void __fastcall png_handle_tEXt(struct __jmp_buf_tag *a1, int a2, int a3)
{
  unsigned int v3; // r3
  _BYTE *v7; // r5
  const char *v8; // r6
  const char *v9; // r8
  _DWORD *v11; // r0
  void *v12; // r6
  int v13; // r7
  unsigned int v14; // r3

  v3 = a1[1].__saved_mask.__val[28];
  if ( (v3 & 1) != 0 )
  {
    if ( (v3 & 4) != 0 )
      a1[1].__saved_mask.__val[28] = v3 | 8;
    v7 = png_malloc_warn(a1, a3 + 1);
    if ( v7 )
      goto LABEL_5;
LABEL_18:
    png_warning((int)a1, "No memory to process text chunk.");
    return;
  }
  png_error(a1, "Missing IHDR before tEXt");
  v14 = a1[1].__saved_mask.__val[28];
  if ( (v14 & 4) != 0 )
    a1[1].__saved_mask.__val[28] = v14 | 8;
  v7 = png_malloc_warn(a1, a3 + 1);
  if ( !v7 )
    goto LABEL_18;
LABEL_5:
  png_crc_read(a1, (int)v7, a3);
  if ( png_crc_finish((int)a1, 0) )
  {
LABEL_20:
    png_free((int)a1, v7);
    return;
  }
  v7[a3] = 0;
  v8 = &v7[a3];
  if ( *v7 )
  {
    v9 = v7;
    while ( *++v9 )
      ;
  }
  else
  {
    v9 = v7;
  }
  if ( v9 != v8 )
    ++v9;
  v11 = png_malloc_warn(a1, 0x10u);
  v12 = v11;
  if ( !v11 )
  {
    png_warning((int)a1, "Not enough memory to process text chunk.");
    goto LABEL_20;
  }
  *v11 = -1;
  v11[1] = v7;
  v11[2] = v9;
  v11[3] = LC_API_STRLEN_0(v9);
  v13 = png_set_text_2(a1, a2, v12, 1);
  png_free((int)a1, v7);
  png_free((int)a1, v12);
  if ( v13 )
    png_warning((int)a1, "Insufficient memory to process text chunk.");
}


// ===== 68f9a4 png_handle_tIME =====
int __fastcall png_handle_tIME(struct __jmp_buf_tag *a1, int a2, unsigned int a3)
{
  unsigned int v3; // r3
  int result; // r0
  __int16 uint_16; // [sp+0h] [bp-14h] BYREF
  unsigned __int8 v9; // [sp+2h] [bp-12h]
  __int16 v10; // [sp+3h] [bp-11h]
  __int16 v11; // [sp+5h] [bp-Fh]
  unsigned __int8 v12[3]; // [sp+8h] [bp-Ch] BYREF
  __int16 v13; // [sp+Bh] [bp-9h]
  __int16 v14; // [sp+Dh] [bp-7h]

  v3 = a1[1].__saved_mask.__val[28];
  if ( (v3 & 1) != 0 )
  {
    if ( a2 && (*(_DWORD *)(a2 + 8) & 0x200) != 0 )
    {
      png_warning((int)a1, "Duplicate tIME chunk");
      return png_crc_finish((int)a1, a3);
    }
  }
  else
  {
    png_error(a1, "Out of place tIME chunk");
    v3 = a1[1].__saved_mask.__val[28];
  }
  if ( (v3 & 4) != 0 )
    a1[1].__saved_mask.__val[28] = v3 | 8;
  if ( a3 == 7 )
  {
    png_crc_read(a1, (int)v12, 7);
    result = png_crc_finish((int)a1, 0);
    if ( !result )
    {
      v10 = v13;
      v11 = v14;
      v9 = v12[2];
      uint_16 = png_get_uint_16(v12);
      return png_set_tIME((int)a1, a2, &uint_16);
    }
  }
  else
  {
    png_warning((int)a1, "Incorrect tIME chunk length");
    return png_crc_finish((int)a1, a3);
  }
  return result;
}


// ===== 68fac0 png_handle_sCAL =====
void __fastcall png_handle_sCAL(int a1, int a2, unsigned int a3)
{
  int v3; // r3
  void *v7; // r0
  double v8; // r10
  _BYTE *v9; // r2
  int v10; // r9
  const char *v12; // r9
  int v13; // r6
  char *v14; // r7
  int v15; // r3
  double v16; // [sp+10h] [bp-14h]
  char *v17[2]; // [sp+1Ch] [bp-8h] BYREF

  v3 = *(_DWORD *)(a1 + 296);
  if ( (v3 & 1) != 0 )
  {
    if ( (v3 & 4) != 0 )
    {
      png_warning(a1, "Invalid sCAL after IDAT");
      png_crc_finish(a1, a3);
      return;
    }
    if ( a2 && (*(_DWORD *)(a2 + 8) & 0x4000) != 0 )
    {
      png_warning(a1, "Duplicate sCAL chunk");
      png_crc_finish(a1, a3);
      return;
    }
  }
  else
  {
    png_error((struct __jmp_buf_tag *)a1, "Missing IHDR before sCAL");
  }
  v7 = png_malloc_warn((struct __jmp_buf_tag *)a1, a3 + 1);
  *(_DWORD *)(a1 + 840) = v7;
  if ( v7 )
  {
    png_crc_read((struct __jmp_buf_tag *)a1, (int)v7, a3);
    if ( png_crc_finish(a1, 0) )
    {
LABEL_18:
      png_free(a1, *(void **)(a1 + 840));
      *(_DWORD *)(a1 + 840) = 0;
      return;
    }
    *(_BYTE *)(*(_DWORD *)(a1 + 840) + a3) = 0;
    v8 = strtod((const char *)(*(_DWORD *)(a1 + 840) + 1), v17);
    if ( *v17[0] )
    {
      png_warning(a1, "malformed width string in sCAL chunk");
    }
    else
    {
      v9 = *(_BYTE **)(a1 + 840);
      if ( *v9 )
      {
        v10 = *(_DWORD *)(a1 + 840);
        while ( *(_BYTE *)++v10 )
          ;
      }
      else
      {
        v10 = *(_DWORD *)(a1 + 840);
      }
      v12 = (const char *)(v10 + 1);
      if ( v12 > &v9[a3] )
      {
        png_warning(a1, "Truncated sCAL chunk");
        goto LABEL_18;
      }
      v16 = strtod(v12, v17);
      v13 = *v17[0];
      if ( *v17[0] )
      {
        png_warning(a1, "malformed height string in sCAL chunk");
      }
      else
      {
        v14 = *(char **)(a1 + 840);
        if ( v12 > &v14[a3] || v8 <= 0.0 || v16 <= 0.0 )
        {
          png_warning(a1, "Invalid sCAL data");
          goto LABEL_18;
        }
        png_set_sCAL(a1, a2, *v14, v15, LODWORD(v8), HIDWORD(v8), LODWORD(v16), HIDWORD(v16));
        png_free(a1, *(void **)(a1 + 840));
        *(_DWORD *)(a1 + 840) = v13;
      }
    }
  }
  else
  {
    png_warning(a1, "Out of memory while processing sCAL chunk");
  }
}


// ===== 68fd18 png_handle_pCAL =====
void __fastcall png_handle_pCAL(int a1, int a2, unsigned int a3)
{
  int v3; // r3
  void *v7; // r0
  _BYTE *v8; // r9
  unsigned __int8 *v9; // r10
  unsigned int v11; // r9
  int int_32; // r11
  int v13; // r0
  unsigned int v14; // r6
  int v15; // r5
  int v16; // r12
  _BOOL4 v17; // r3
  bool v18; // zf
  _BOOL4 v19; // r3
  _BYTE *v20; // r10
  void *v21; // r0
  void *v22; // r7
  int v23; // r2
  const char *v24; // r1
  int v25; // [sp+18h] [bp-Ch]
  int v26; // [sp+18h] [bp-Ch]
  int v27; // [sp+1Ch] [bp-8h]

  v3 = *(_DWORD *)(a1 + 296);
  if ( (v3 & 1) == 0 )
  {
    png_error((struct __jmp_buf_tag *)a1, "Missing IHDR before pCAL");
    goto LABEL_5;
  }
  if ( (v3 & 4) != 0 )
  {
    v24 = "Invalid pCAL after IDAT";
    goto LABEL_47;
  }
  if ( a2 && (*(_DWORD *)(a2 + 8) & 0x400) != 0 )
  {
    v24 = "Duplicate pCAL chunk";
LABEL_47:
    png_warning(a1, v24);
    png_crc_finish(a1, a3);
    return;
  }
LABEL_5:
  png_free(a1, *(void **)(a1 + 840));
  v7 = png_malloc_warn((struct __jmp_buf_tag *)a1, a3 + 1);
  *(_DWORD *)(a1 + 840) = v7;
  if ( !v7 )
  {
    png_warning(a1, "No memory for pCAL purpose.");
    return;
  }
  png_crc_read((struct __jmp_buf_tag *)a1, (int)v7, a3);
  if ( png_crc_finish(a1, 0) )
  {
LABEL_43:
    png_free(a1, *(void **)(a1 + 840));
    *(_DWORD *)(a1 + 840) = 0;
    return;
  }
  *(_BYTE *)(*(_DWORD *)(a1 + 840) + a3) = 0;
  v8 = *(_BYTE **)(a1 + 840);
  if ( *v8 )
  {
    v9 = *(unsigned __int8 **)(a1 + 840);
    while ( *++v9 )
      ;
  }
  else
  {
    v9 = *(unsigned __int8 **)(a1 + 840);
  }
  v11 = (unsigned int)&v8[a3];
  if ( v11 <= (unsigned int)(v9 + 12) )
  {
    png_warning(a1, "Invalid pCAL data");
    goto LABEL_43;
  }
  int_32 = png_get_int_32(v9 + 1);
  v13 = png_get_int_32(v9 + 5);
  v14 = v9[9];
  v15 = v9[10];
  v16 = v13;
  v17 = v15 != 2;
  if ( v9[9] )
    v17 = 0;
  if ( v17 )
    goto LABEL_42;
  v18 = v14 == 1;
  if ( v14 != 1 )
    v18 = v14 == 2;
  LOBYTE(v17) = v18;
  if ( v15 == 3 )
    v17 = 0;
  if ( v17 )
    goto LABEL_42;
  v19 = v15 != 4;
  if ( v14 != 3 )
    v19 = 0;
  if ( v19 )
  {
LABEL_42:
    png_warning(a1, "Invalid pCAL parameters for equation type");
    goto LABEL_43;
  }
  if ( v14 > 3 )
  {
    v26 = v13;
    png_warning(a1, "Unrecognized equation type for pCAL chunk");
    v16 = v26;
  }
  v27 = (int)(v9 + 11);
  if ( v9[11] )
  {
    do
      ++v9;
    while ( v9[11] );
    v20 = v9 + 11;
  }
  else
  {
    v20 = v9 + 11;
  }
  v25 = v16;
  v21 = png_malloc_warn((struct __jmp_buf_tag *)a1, 4 * v15);
  v22 = v21;
  if ( v21 )
  {
    if ( v15 )
    {
      v23 = 0;
      while ( 1 )
      {
        *((_DWORD *)v21 + v23) = ++v20;
        if ( v11 < (unsigned int)v20 )
          break;
        while ( *v20 )
        {
          if ( v11 < (unsigned int)++v20 )
            goto LABEL_48;
        }
        if ( ++v23 >= v15 )
          goto LABEL_41;
      }
LABEL_48:
      png_warning(a1, "Invalid pCAL data");
    }
    else
    {
LABEL_41:
      png_set_pCAL(a1, a2, *(char **)(a1 + 840), int_32, v25, v14, v15, v27, (int)v21);
    }
    png_free(a1, *(void **)(a1 + 840));
    *(_DWORD *)(a1 + 840) = 0;
    png_free(a1, v22);
  }
  else
  {
    png_free(a1, *(void **)(a1 + 840));
    *(_DWORD *)(a1 + 840) = 0;
    png_warning(a1, "No memory for pCAL params.");
  }
}


// ===== 690044 png_handle_oFFs =====
int __fastcall png_handle_oFFs(struct __jmp_buf_tag *a1, int a2, unsigned int a3)
{
  unsigned int v3; // r3
  int result; // r0
  int int_32; // r10
  int v9; // r0
  unsigned __int8 v10[4]; // [sp+8h] [bp-14h] BYREF
  unsigned __int8 v11[8]; // [sp+Ch] [bp-10h] BYREF

  v3 = a1[1].__saved_mask.__val[28];
  if ( (v3 & 1) != 0 )
  {
    if ( (v3 & 4) != 0 )
    {
      png_warning((int)a1, "Invalid oFFs after IDAT");
      return png_crc_finish((int)a1, a3);
    }
    if ( a2 && (*(_DWORD *)(a2 + 8) & 0x100) != 0 )
    {
      png_warning((int)a1, "Duplicate oFFs chunk");
      return png_crc_finish((int)a1, a3);
    }
    if ( a3 != 9 )
      goto LABEL_6;
  }
  else
  {
    png_error(a1, "Missing IHDR before oFFs");
    if ( a3 != 9 )
    {
LABEL_6:
      png_warning((int)a1, "Incorrect oFFs chunk length");
      return png_crc_finish((int)a1, a3);
    }
  }
  png_crc_read(a1, (int)v10, a3);
  result = png_crc_finish((int)a1, 0);
  if ( !result )
  {
    int_32 = png_get_int_32(v10);
    v9 = png_get_int_32(v11);
    return png_set_oFFs(a1, a2, int_32, v9, v11[4]);
  }
  return result;
}


// ===== 6901a0 png_handle_pHYs =====
int __fastcall png_handle_pHYs(struct __jmp_buf_tag *a1, int a2, unsigned int a3)
{
  unsigned int v3; // r3
  int result; // r0
  int uint_32; // r10
  int v9; // r0
  unsigned __int8 v10[4]; // [sp+8h] [bp-14h] BYREF
  unsigned __int8 v11[8]; // [sp+Ch] [bp-10h] BYREF

  v3 = a1[1].__saved_mask.__val[28];
  if ( (v3 & 1) != 0 )
  {
    if ( (v3 & 4) != 0 )
    {
      png_warning((int)a1, "Invalid pHYs after IDAT");
      return png_crc_finish((int)a1, a3);
    }
    if ( a2 && (*(_DWORD *)(a2 + 8) & 0x80) != 0 )
    {
      png_warning((int)a1, "Duplicate pHYs chunk");
      return png_crc_finish((int)a1, a3);
    }
    if ( a3 != 9 )
      goto LABEL_6;
  }
  else
  {
    png_error(a1, "Missing IHDR before pHYs");
    if ( a3 != 9 )
    {
LABEL_6:
      png_warning((int)a1, "Incorrect pHYs chunk length");
      return png_crc_finish((int)a1, a3);
    }
  }
  png_crc_read(a1, (int)v10, a3);
  result = png_crc_finish((int)a1, 0);
  if ( !result )
  {
    uint_32 = png_get_uint_32(v10);
    v9 = png_get_uint_32(v11);
    return png_set_pHYs(a1, a2, uint_32, v9, v11[4]);
  }
  return result;
}


// ===== 6902fc png_handle_hIST =====
int __fastcall png_handle_hIST(int a1, int a2, unsigned int a3)
{
  int v3; // r3
  unsigned int v7; // r8
  bool v8; // zf
  int v9; // r4
  int v10; // r8
  int result; // r0
  bool v12; // zf
  _BYTE v13[512]; // [sp+4h] [bp-208h] BYREF
  unsigned __int8 v14[8]; // [sp+204h] [bp-8h] BYREF

  v3 = *(_DWORD *)(a1 + 296);
  if ( (v3 & 1) == 0 )
  {
    v7 = a3 >> 1;
    png_error((struct __jmp_buf_tag *)a1, "Missing IHDR before hIST");
    v12 = v7 == 256;
    if ( v7 <= 0x100 )
      v12 = *(unsigned __int16 *)(a1 + 472) == v7;
    v9 = !v12;
    if ( v12 )
      goto LABEL_11;
LABEL_23:
    png_warning(a1, "Incorrect hIST chunk length");
    return png_crc_finish(a1, a3);
  }
  if ( (v3 & 4) != 0 )
  {
    png_warning(a1, "Invalid hIST after IDAT");
    return png_crc_finish(a1, a3);
  }
  if ( (v3 & 2) == 0 )
  {
    png_warning(a1, "Missing PLTE before hIST");
    return png_crc_finish(a1, a3);
  }
  if ( a2 && (*(_DWORD *)(a2 + 8) & 0x40) != 0 )
  {
    png_warning(a1, "Duplicate hIST chunk");
    return png_crc_finish(a1, a3);
  }
  v7 = a3 >> 1;
  v8 = a3 >> 1 == 256;
  if ( a3 >> 1 <= 0x100 )
    v8 = *(unsigned __int16 *)(a1 + 472) == v7;
  if ( !v8 )
    goto LABEL_23;
  v9 = 0;
LABEL_11:
  if ( v7 )
  {
    v10 = 2 * v7;
    do
    {
      png_crc_read((struct __jmp_buf_tag *)a1, (int)v14, 2);
      *(_WORD *)&v13[v9] = png_get_uint_16(v14);
      v9 += 2;
    }
    while ( v9 != v10 );
  }
  result = png_crc_finish(a1, 0);
  if ( !result )
    return png_set_hIST(a1, a2, v13);
  return result;
}


// ===== 69047c png_handle_bKGD =====
int __fastcall png_handle_bKGD(int a1, int a2, unsigned int a3)
{
  int v3; // r3
  int v7; // r2
  int v8; // r3
  int result; // r0
  int v10; // r3
  __int16 uint_16; // r0
  unsigned int v12; // r3
  int v13; // r2
  int v14; // r3
  __int16 v15; // r1
  int v16; // r3
  unsigned __int8 v17[2]; // [sp+0h] [bp-Ch] BYREF
  unsigned __int8 v18[2]; // [sp+2h] [bp-Ah] BYREF
  unsigned __int8 v19[8]; // [sp+4h] [bp-8h] BYREF

  v3 = *(_DWORD *)(a1 + 296);
  if ( (v3 & 1) != 0 )
  {
    if ( (v3 & 4) != 0 )
    {
      png_warning(a1, "Invalid bKGD after IDAT");
      return png_crc_finish(a1, a3);
    }
    v7 = *(unsigned __int8 *)(a1 + 486);
    if ( v7 == 3 && (v3 & 2) == 0 )
    {
      png_warning(a1, "Missing PLTE before bKGD");
      return png_crc_finish(a1, a3);
    }
    if ( a2 && (*(_DWORD *)(a2 + 8) & 0x20) != 0 )
    {
      png_warning(a1, "Duplicate bKGD chunk");
      return png_crc_finish(a1, a3);
    }
  }
  else
  {
    png_error((struct __jmp_buf_tag *)a1, "Missing IHDR before bKGD");
    v7 = *(unsigned __int8 *)(a1 + 486);
  }
  if ( v7 == 3 )
  {
    v8 = 1;
  }
  else if ( (v7 & 2) != 0 )
  {
    v8 = 6;
  }
  else
  {
    v8 = 2;
  }
  if ( a3 == v8 )
  {
    png_crc_read((struct __jmp_buf_tag *)a1, (int)v17, a3);
    result = png_crc_finish(a1, 0);
    if ( !result )
    {
      v10 = *(unsigned __int8 *)(a1 + 486);
      if ( v10 == 3 )
      {
        v12 = v17[0];
        *(_BYTE *)(a1 + 504) = v17[0];
        if ( a2 && *(_WORD *)(a2 + 20) )
        {
          if ( *(unsigned __int16 *)(a2 + 20) < v12 )
            return png_warning(a1, "Incorrect bKGD chunk index value");
          v13 = *(_DWORD *)(a1 + 468);
          v14 = 3 * v12;
          v15 = *(unsigned __int8 *)(v13 + v14);
          v16 = v13 + v14;
          *(_WORD *)(a1 + 506) = v15;
          *(_WORD *)(a1 + 508) = *(unsigned __int8 *)(v16 + 1);
          *(_WORD *)(a1 + 510) = *(unsigned __int8 *)(v16 + 2);
        }
      }
      else if ( (v10 & 2) != 0 )
      {
        *(_WORD *)(a1 + 506) = png_get_uint_16(v17);
        *(_WORD *)(a1 + 508) = png_get_uint_16(v18);
        *(_WORD *)(a1 + 510) = png_get_uint_16(v19);
      }
      else
      {
        uint_16 = png_get_uint_16(v17);
        *(_WORD *)(a1 + 506) = uint_16;
        *(_WORD *)(a1 + 512) = uint_16;
        *(_WORD *)(a1 + 510) = uint_16;
        *(_WORD *)(a1 + 508) = uint_16;
      }
      return png_set_bKGD(a1, a2, (void *)(a1 + 504));
    }
  }
  else
  {
    png_warning(a1, "Incorrect bKGD chunk length");
    return png_crc_finish(a1, a3);
  }
  return result;
}


// ===== 6906ac png_handle_tRNS =====
int __fastcall png_handle_tRNS(int a1, int a2, unsigned int a3)
{
  int v3; // r3
  int v7; // r3
  unsigned int v8; // r3
  bool v9; // cc
  int result; // r0
  unsigned __int8 v11[2]; // [sp+Ch] [bp-110h] BYREF
  unsigned __int8 v12[2]; // [sp+Eh] [bp-10Eh] BYREF
  unsigned __int8 v13[4]; // [sp+10h] [bp-10Ch] BYREF
  _BYTE v14[256]; // [sp+14h] [bp-108h] BYREF

  v3 = *(_DWORD *)(a1 + 296);
  if ( (v3 & 1) != 0 )
  {
    if ( (v3 & 4) != 0 )
    {
      png_warning(a1, "Invalid tRNS after IDAT");
      return png_crc_finish(a1, a3);
    }
    if ( a2 && (*(_DWORD *)(a2 + 8) & 0x10) != 0 )
    {
      png_warning(a1, "Duplicate tRNS chunk");
      return png_crc_finish(a1, a3);
    }
    v7 = *(unsigned __int8 *)(a1 + 486);
    if ( !*(_BYTE *)(a1 + 486) )
      goto LABEL_6;
LABEL_8:
    if ( v7 == 2 )
    {
      if ( a3 != 6 )
        goto LABEL_30;
      png_crc_read((struct __jmp_buf_tag *)a1, (int)v11, 6);
      *(_WORD *)(a1 + 474) = 1;
      *(_WORD *)(a1 + 590) = png_get_uint_16(v11);
      *(_WORD *)(a1 + 592) = png_get_uint_16(v12);
      *(_WORD *)(a1 + 594) = png_get_uint_16(v13);
    }
    else
    {
      if ( v7 != 3 )
      {
        png_warning(a1, "tRNS chunk not allowed with alpha channel");
        return png_crc_finish(a1, a3);
      }
      if ( (*(_DWORD *)(a1 + 296) & 2) == 0 )
        png_warning(a1, "Missing PLTE before tRNS");
      v8 = *(unsigned __int16 *)(a1 + 472);
      v9 = a3 > v8;
      if ( a3 <= v8 )
        v9 = a3 > 0x100;
      if ( v9 )
        goto LABEL_30;
      if ( !a3 )
      {
        png_warning(a1, "Zero length tRNS chunk");
        return png_crc_finish(a1, 0);
      }
      png_crc_read((struct __jmp_buf_tag *)a1, (int)v14, a3);
      *(_WORD *)(a1 + 474) = a3;
    }
    goto LABEL_17;
  }
  png_error((struct __jmp_buf_tag *)a1, "Missing IHDR before tRNS");
  v7 = *(unsigned __int8 *)(a1 + 486);
  if ( *(_BYTE *)(a1 + 486) )
    goto LABEL_8;
LABEL_6:
  if ( a3 != 2 )
  {
LABEL_30:
    png_warning(a1, "Incorrect tRNS chunk length");
    return png_crc_finish(a1, a3);
  }
  png_crc_read((struct __jmp_buf_tag *)a1, (int)v11, 2);
  *(_WORD *)(a1 + 474) = 1;
  *(_WORD *)(a1 + 596) = png_get_uint_16(v11);
LABEL_17:
  result = png_crc_finish(a1, 0);
  if ( !result )
    return png_set_tRNS(a1, a2, (int)v14, *(unsigned __int16 *)(a1 + 474), (void *)(a1 + 588));
  *(_WORD *)(a1 + 474) = 0;
  return result;
}


// ===== 690988 png_handle_sPLT =====
void __fastcall png_handle_sPLT(int a1, int a2, unsigned int a3)
{
  int v3; // r3
  void *v7; // r0
  _BYTE *v8; // r8
  int v9; // r3
  int v11; // r7
  int v12; // r3
  unsigned __int8 *v13; // r7
  int v14; // r10
  signed int v15; // r5
  int v16; // r9
  char *v17; // r8
  int v18; // r10
  __int16 v19; // r1
  unsigned __int8 *v20; // r2
  unsigned __int8 *v21; // r7
  char *v22; // r5
  unsigned __int8 *v23; // [sp+4h] [bp-18h]
  int v24; // [sp+8h] [bp-14h] BYREF
  char v25; // [sp+Ch] [bp-10h]
  char *v26; // [sp+10h] [bp-Ch]
  int v27; // [sp+14h] [bp-8h]

  v3 = *(_DWORD *)(a1 + 296);
  if ( (v3 & 1) != 0 )
  {
    if ( (v3 & 4) != 0 )
    {
      png_warning(a1, "Invalid sPLT after IDAT");
      png_crc_finish(a1, a3);
      return;
    }
  }
  else
  {
    png_error((struct __jmp_buf_tag *)a1, "Missing IHDR before sPLT");
  }
  png_free(a1, *(void **)(a1 + 840));
  v7 = png_malloc((struct __jmp_buf_tag *)a1, a3 + 1);
  *(_DWORD *)(a1 + 840) = v7;
  png_crc_read((struct __jmp_buf_tag *)a1, (int)v7, a3);
  if ( png_crc_finish(a1, 0) )
  {
    png_free(a1, *(void **)(a1 + 840));
    *(_DWORD *)(a1 + 840) = 0;
  }
  else
  {
    *(_BYTE *)(*(_DWORD *)(a1 + 840) + a3) = 0;
    v8 = *(_BYTE **)(a1 + 840);
    if ( *v8 )
    {
      v9 = *(_DWORD *)(a1 + 840);
      while ( *(_BYTE *)++v9 )
        ;
    }
    else
    {
      v9 = *(_DWORD *)(a1 + 840);
    }
    v11 = v9 + 1;
    if ( v9 + 1 > (unsigned int)&v8[a3 - 2] )
    {
      png_free(a1, *(void **)(a1 + 840));
      *(_DWORD *)(a1 + 840) = 0;
      png_warning(a1, "malformed sPLT chunk");
    }
    else
    {
      v12 = *(unsigned __int8 *)(v9 + 1);
      v13 = (unsigned __int8 *)(v11 + 1);
      if ( v12 == 8 )
        v14 = 6;
      else
        v14 = 10;
      v15 = v8 - v13 + a3;
      v25 = v12;
      v16 = v15 % v14;
      if ( v15 % v14 )
      {
        png_free(a1, v8);
        *(_DWORD *)(a1 + 840) = 0;
        png_warning(a1, "sPLT chunk has bad length");
      }
      else
      {
        v27 = v15 / v14;
        if ( (unsigned int)(v15 / v14) > 0x19999999 )
        {
          png_warning(a1, "sPLT chunk too long");
        }
        else
        {
          v17 = (char *)png_malloc_warn((struct __jmp_buf_tag *)a1, 10 * (v15 / v14));
          v26 = v17;
          if ( v17 )
          {
            if ( v27 > 0 )
            {
              v18 = 0;
              while ( 1 )
              {
                v23 = v13 + 6;
                v22 = &v17[v16];
                if ( v25 == 8 )
                {
                  ++v18;
                  *(_WORD *)&v17[v16] = *v13;
                  v19 = v13[1];
                  v20 = v13 + 2;
                  v21 = v13 + 4;
                  *((_WORD *)v22 + 1) = v19;
                  v16 += 10;
                  *((_WORD *)v22 + 2) = *v20;
                  *((_WORD *)v22 + 3) = v20[1];
                  *((_WORD *)v22 + 4) = png_get_uint_16(v21);
                  if ( v27 <= v18 )
                    break;
                }
                else
                {
                  *(_WORD *)&v17[v16] = png_get_uint_16(v13);
                  ++v18;
                  v16 += 10;
                  *((_WORD *)v22 + 1) = png_get_uint_16(v13 + 2);
                  *((_WORD *)v22 + 2) = png_get_uint_16(v13 + 4);
                  *((_WORD *)v22 + 3) = png_get_uint_16(v23);
                  v21 = v13 + 8;
                  *((_WORD *)v22 + 4) = png_get_uint_16(v23 + 2);
                  if ( v27 <= v18 )
                    break;
                }
                v17 = v26;
                v13 = v21 + 2;
              }
            }
            v24 = *(_DWORD *)(a1 + 840);
            png_set_sPLT(a1, a2, &v24, 1);
            png_free(a1, *(void **)(a1 + 840));
            *(_DWORD *)(a1 + 840) = 0;
            png_free(a1, v26);
          }
          else
          {
            png_warning(a1, "sPLT chunk requires too much memory");
          }
        }
      }
    }
  }
}


// ===== 690ca4 png_handle_iCCP =====
void __fastcall png_handle_iCCP(int a1, int a2, unsigned int a3)
{
  int v3; // r3
  void *v7; // r0
  _BYTE *v8; // r1
  int v9; // r3
  int v11; // r6
  size_t v12; // r6
  _BOOL4 v13; // r7
  unsigned int v14; // r12
  char *v15; // r2
  unsigned int v16; // r3
  size_t v17[2]; // [sp+Ch] [bp-8h] BYREF

  v3 = *(_DWORD *)(a1 + 296);
  if ( (v3 & 1) != 0 )
  {
    if ( (v3 & 4) != 0 )
    {
      png_warning(a1, "Invalid iCCP after IDAT");
      png_crc_finish(a1, a3);
      return;
    }
    if ( (v3 & 2) != 0 )
      png_warning(a1, "Out of place iCCP chunk");
  }
  else
  {
    png_error((struct __jmp_buf_tag *)a1, "Missing IHDR before iCCP");
  }
  if ( a2 && (*(_DWORD *)(a2 + 8) & 0x1000) != 0 )
  {
    png_warning(a1, "Duplicate iCCP chunk");
    png_crc_finish(a1, a3);
  }
  else
  {
    png_free(a1, *(void **)(a1 + 840));
    v7 = png_malloc((struct __jmp_buf_tag *)a1, a3 + 1);
    *(_DWORD *)(a1 + 840) = v7;
    png_crc_read((struct __jmp_buf_tag *)a1, (int)v7, a3);
    if ( png_crc_finish(a1, 0) )
    {
LABEL_22:
      png_free(a1, *(void **)(a1 + 840));
      *(_DWORD *)(a1 + 840) = 0;
      return;
    }
    *(_BYTE *)(*(_DWORD *)(a1 + 840) + a3) = 0;
    v8 = *(_BYTE **)(a1 + 840);
    if ( *v8 )
    {
      v9 = *(_DWORD *)(a1 + 840);
      while ( *(_BYTE *)++v9 )
        ;
    }
    else
    {
      v9 = *(_DWORD *)(a1 + 840);
    }
    if ( v9 + 1 >= (unsigned int)&v8[a3 - 1] )
    {
      png_free(a1, v8);
      *(_DWORD *)(a1 + 840) = 0;
      png_warning(a1, "Malformed iCCP chunk");
    }
    else
    {
      v11 = v9 + 2;
      if ( *(_BYTE *)(v9 + 1) )
      {
        png_warning(a1, "Ignoring nonzero compression type in iCCP chunk");
        v8 = *(_BYTE **)(a1 + 840);
      }
      v12 = v11 - (_DWORD)v8;
      png_decompress_chunk(a1, 0, a3, v12, v17);
      v13 = v12 > v17[0];
      v14 = v17[0] - v12;
      if ( v17[0] - v12 <= 3 )
        v13 = 1;
      if ( v13 )
      {
        png_free(a1, *(void **)(a1 + 840));
        *(_DWORD *)(a1 + 840) = 0;
        png_warning(a1, "Profile size field missing from iCCP chunk");
      }
      else
      {
        v15 = *(char **)(a1 + 840);
        v16 = _byteswap_ulong(*(_DWORD *)&v15[v12]);
        if ( v14 > v16 )
        {
          v14 = v16;
LABEL_21:
          png_set_iCCP(a1, a2, v15, 0, (int)&v15[v12], v14);
          goto LABEL_22;
        }
        if ( v14 >= v16 )
          goto LABEL_21;
        png_free(a1, v15);
        *(_DWORD *)(a1 + 840) = 0;
        png_warning(a1, "Ignoring truncated iCCP profile.");
      }
    }
  }
}


// ===== 690f28 png_handle_sRGB =====
int __fastcall png_handle_sRGB(struct __jmp_buf_tag *a1, _DWORD *a2, unsigned int a3)
{
  unsigned int v3; // r3
  int result; // r0
  int v8; // r7
  int v9; // r3
  _BYTE v10[8]; // [sp+4h] [bp-8h] BYREF

  v3 = a1[1].__saved_mask.__val[28];
  if ( (v3 & 1) != 0 )
  {
    if ( (v3 & 4) != 0 )
    {
      png_warning((int)a1, "Invalid sRGB after IDAT");
      return png_crc_finish((int)a1, a3);
    }
    if ( (v3 & 2) != 0 )
      png_warning((int)a1, "Out of place sRGB chunk");
  }
  else
  {
    png_error(a1, "Missing IHDR before sRGB");
  }
  if ( a2 && (a2[2] & 0x800) != 0 )
  {
    png_warning((int)a1, "Duplicate sRGB chunk");
    return png_crc_finish((int)a1, a3);
  }
  else if ( a3 == 1 )
  {
    png_crc_read(a1, (int)v10, 1);
    result = png_crc_finish((int)a1, 0);
    if ( !result )
    {
      v8 = v10[0];
      if ( v10[0] > 3u )
      {
        return png_warning((int)a1, "Unknown sRGB intent");
      }
      else
      {
        if ( a2 )
        {
          v9 = a2[2];
          if ( (v9 & 1) != 0 && (unsigned int)(a2[63] - 45000) > 0x3E8 )
          {
            png_warning((int)a1, "Ignoring incorrect gAMA value when sRGB is also present");
            fprintf((FILE *)&_sF + 2, "incorrect gamma=(%d/100000)\n", a1[4].__saved_mask.__val[26]);
            v9 = a2[2];
          }
          if ( (v9 & 4) != 0
            && ((unsigned int)(a2[64] - 30270) > 0x7D0
             || (unsigned int)(a2[65] - 31900) > 0x7D0
             || (unsigned int)(a2[66] - 63000) > 0x7D0
             || (unsigned int)(a2[67] - 32000) > 0x7D0
             || (unsigned int)(a2[68] - 29000) > 0x7D0
             || (unsigned int)(a2[69] - 59000) > 0x7D0
             || (unsigned int)(a2[70] - 14000) > 0x7D0
             || (unsigned int)(a2[71] - 5000) > 0x7D0) )
          {
            png_warning((int)a1, "Ignoring incorrect cHRM value when sRGB is also present");
          }
        }
        return png_set_sRGB_gAMA_and_cHRM(a1, a2, v8);
      }
    }
  }
  else
  {
    png_warning((int)a1, "Incorrect sRGB chunk length");
    return png_crc_finish((int)a1, a3);
  }
  return result;
}


// ===== 691190 png_handle_cHRM =====
int __fastcall png_handle_cHRM(struct __jmp_buf_tag *a1, int a2, unsigned int a3)
{
  unsigned int v3; // r3
  int result; // r0
  unsigned int uint_32; // r8
  unsigned int v9; // r0
  bool v10; // cc
  int v11; // r9
  int v12; // r11
  int v13; // r0
  int v14; // r10
  float v15; // r12
  float v16; // [sp+3Ch] [bp-60h]
  int v17; // [sp+44h] [bp-58h]
  int v18; // [sp+48h] [bp-54h]
  int v19; // [sp+4Ch] [bp-50h]
  int v20; // [sp+50h] [bp-4Ch]
  float v21; // [sp+54h] [bp-48h]
  float v22; // [sp+58h] [bp-44h]
  float v23; // [sp+5Ch] [bp-40h]
  float v24; // [sp+60h] [bp-3Ch]
  float v25; // [sp+64h] [bp-38h]
  float v26; // [sp+68h] [bp-34h]
  float v27; // [sp+6Ch] [bp-30h]
  unsigned __int8 v28[4]; // [sp+74h] [bp-28h] BYREF
  unsigned __int8 v29[4]; // [sp+78h] [bp-24h] BYREF
  unsigned __int8 v30[4]; // [sp+7Ch] [bp-20h] BYREF
  unsigned __int8 v31[4]; // [sp+80h] [bp-1Ch] BYREF
  unsigned __int8 v32[4]; // [sp+84h] [bp-18h] BYREF
  unsigned __int8 v33[4]; // [sp+88h] [bp-14h] BYREF
  unsigned __int8 v34[4]; // [sp+8Ch] [bp-10h] BYREF
  unsigned __int8 v35[4]; // [sp+90h] [bp-Ch] BYREF

  v3 = a1[1].__saved_mask.__val[28];
  if ( (v3 & 1) != 0 )
  {
    if ( (v3 & 4) != 0 )
    {
      png_warning((int)a1, "Invalid cHRM after IDAT");
      return png_crc_finish((int)a1, a3);
    }
    if ( (v3 & 2) != 0 )
      png_warning((int)a1, "Missing PLTE before cHRM");
  }
  else
  {
    png_error(a1, "Missing IHDR before cHRM");
  }
  if ( a2 && (*(_DWORD *)(a2 + 8) & 0x804) == 4 )
  {
    png_warning((int)a1, "Duplicate cHRM chunk");
    return png_crc_finish((int)a1, a3);
  }
  else if ( a3 == 32 )
  {
    png_crc_read(a1, (int)v28, 32);
    result = png_crc_finish((int)a1, 0);
    if ( !result )
    {
      uint_32 = png_get_uint_32(v28);
      v9 = png_get_uint_32(v29);
      v10 = uint_32 > 0x13880;
      if ( uint_32 <= 0x13880 )
        v10 = v9 > 0x13880;
      v11 = v9;
      if ( v10 || v9 + uint_32 > 0x186A0 )
      {
        return png_warning((int)a1, "Invalid cHRM white point");
      }
      else
      {
        v12 = png_get_uint_32(v30);
        v17 = png_get_uint_32(v31);
        if ( (unsigned int)(v17 + v12) > 0x186A0 )
        {
          return png_warning((int)a1, "Invalid cHRM red point");
        }
        else
        {
          v19 = png_get_uint_32(v32);
          v18 = png_get_uint_32(v33);
          if ( (unsigned int)(v18 + v19) > 0x186A0 )
          {
            return png_warning((int)a1, "Invalid cHRM green point");
          }
          else
          {
            v20 = png_get_uint_32(v34);
            v13 = png_get_uint_32(v35);
            v14 = v13;
            if ( (unsigned int)(v13 + v20) > 0x186A0 )
            {
              return png_warning((int)a1, "Invalid cHRM blue point");
            }
            else
            {
              v27 = (float)(int)uint_32 / 100000.0;
              v26 = (float)v11 / 100000.0;
              v25 = (float)v12 / 100000.0;
              v24 = (float)v17 / 100000.0;
              v23 = (float)v19 / 100000.0;
              v22 = (float)v18 / 100000.0;
              v21 = (float)v20 / 100000.0;
              v15 = (float)v13 / 100000.0;
              if ( a2 && (*(_DWORD *)(a2 + 8) & 0x800) != 0 )
              {
                if ( uint_32 - 30270 > 0x7D0
                  || (unsigned int)(v11 - 31900) > 0x7D0
                  || (unsigned int)(v12 - 63000) > 0x7D0
                  || (unsigned int)(v17 - 32000) > 0x7D0
                  || (unsigned int)(v19 - 29000) > 0x7D0
                  || (unsigned int)(v18 - 59000) > 0x7D0
                  || (result = v20, (unsigned int)(v20 - 14000) > 0x7D0)
                  || (unsigned int)(v14 - 5000) > 0x7D0 )
                {
                  v16 = v15;
                  png_warning((int)a1, "Ignoring incorrect cHRM value when sRGB is also present");
                  fprintf((FILE *)&_sF + 2, "wx=%f, wy=%f, rx=%f, ry=%f\n", v27, v26, v25, v24);
                  return fprintf((FILE *)&_sF + 2, "gx=%f, gy=%f, bx=%f, by=%f\n", v23, v22, v21, v16);
                }
              }
              else
              {
                png_set_cHRM(
                  a1,
                  a2,
                  COERCE_UNSIGNED_INT64(v27),
                  HIDWORD(COERCE_UNSIGNED_INT64(v27)),
                  COERCE_UNSIGNED_INT64(v26),
                  HIDWORD(COERCE_UNSIGNED_INT64(v26)),
                  COERCE_UNSIGNED_INT64(v25),
                  HIDWORD(COERCE_UNSIGNED_INT64(v25)),
                  COERCE_UNSIGNED_INT64(v24),
                  HIDWORD(COERCE_UNSIGNED_INT64(v24)),
                  COERCE_UNSIGNED_INT64(v23),
                  HIDWORD(COERCE_UNSIGNED_INT64(v23)),
                  COERCE_UNSIGNED_INT64(v22),
                  HIDWORD(COERCE_UNSIGNED_INT64(v22)),
                  COERCE_UNSIGNED_INT64(v21),
                  HIDWORD(COERCE_UNSIGNED_INT64(v21)),
                  COERCE_UNSIGNED_INT64((float)((float)v13 / 100000.0)),
                  HIDWORD(COERCE_UNSIGNED_INT64((float)((float)v13 / 100000.0))));
                return png_set_cHRM_fixed(a1, a2, uint_32, v11, v12, v17, v19, v18, v20, v14);
              }
            }
          }
        }
      }
    }
  }
  else
  {
    png_warning((int)a1, "Incorrect cHRM chunk length");
    return png_crc_finish((int)a1, a3);
  }
  return result;
}


// ===== 691704 png_handle_sBIT =====
int __fastcall png_handle_sBIT(int a1, int a2, unsigned int a3)
{
  int v3; // r12
  int v7; // r6
  bool v8; // zf
  int result; // r0
  char v10; // r3
  char v11; // r2
  char v12; // r1
  char v13; // r2
  char v14; // r3
  char v15; // [sp+4h] [bp-8h] BYREF
  char v16; // [sp+5h] [bp-7h]
  char v17; // [sp+6h] [bp-6h]
  char v18; // [sp+7h] [bp-5h]

  v3 = *(_DWORD *)(a1 + 296);
  v15 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  if ( (v3 & 1) != 0 )
  {
    if ( (v3 & 4) != 0 )
    {
      png_warning(a1, "Invalid sBIT after IDAT");
      return png_crc_finish(a1, a3);
    }
    if ( (v3 & 2) != 0 )
      png_warning(a1, "Out of place sBIT chunk");
  }
  else
  {
    png_error((struct __jmp_buf_tag *)a1, "Missing IHDR before sBIT");
  }
  if ( a2 && (*(_DWORD *)(a2 + 8) & 2) != 0 )
  {
    png_warning(a1, "Duplicate sBIT chunk");
    return png_crc_finish(a1, a3);
  }
  else
  {
    v7 = *(unsigned __int8 *)(a1 + 486);
    if ( v7 != 3 )
      v7 = *(unsigned __int8 *)(a1 + 490);
    v8 = a3 == 4;
    if ( a3 <= 4 )
      v8 = a3 == v7;
    if ( v8 )
    {
      png_crc_read((struct __jmp_buf_tag *)a1, (int)&v15, a3);
      result = png_crc_finish(a1, 0);
      if ( !result )
      {
        if ( (*(_BYTE *)(a1 + 486) & 2) != 0 )
        {
          v12 = v16;
          v13 = v17;
          v14 = v18;
          *(_BYTE *)(a1 + 572) = v15;
          *(_BYTE *)(a1 + 573) = v12;
          *(_BYTE *)(a1 + 574) = v13;
          *(_BYTE *)(a1 + 576) = v14;
        }
        else
        {
          v10 = v15;
          v11 = v16;
          *(_BYTE *)(a1 + 574) = v15;
          *(_BYTE *)(a1 + 576) = v11;
          *(_BYTE *)(a1 + 575) = v10;
          *(_BYTE *)(a1 + 572) = v10;
          *(_BYTE *)(a1 + 573) = v10;
        }
        return png_set_sBIT(a1, a2, (void *)(a1 + 572));
      }
    }
    else
    {
      png_warning(a1, "Incorrect sBIT chunk length");
      return png_crc_finish(a1, a3);
    }
  }
  return result;
}


// ===== 691894 png_handle_gAMA =====
int __fastcall png_handle_gAMA(int a1, int a2, unsigned int a3)
{
  int v3; // r3
  int result; // r0
  int uint_32; // r0
  int v9; // r6
  float v10; // r0
  unsigned __int8 v11[4]; // [sp+4h] [bp-4h] BYREF

  v3 = *(_DWORD *)(a1 + 296);
  if ( (v3 & 1) != 0 )
  {
    if ( (v3 & 4) != 0 )
    {
      png_warning(a1, "Invalid gAMA after IDAT");
      return png_crc_finish(a1, a3);
    }
    if ( (v3 & 2) != 0 )
      png_warning(a1, "Out of place gAMA chunk");
  }
  else
  {
    png_error((struct __jmp_buf_tag *)a1, "Missing IHDR before gAMA");
  }
  if ( a2 && (*(_DWORD *)(a2 + 8) & 0x801) == 1 )
  {
    png_warning(a1, "Duplicate gAMA chunk");
    return png_crc_finish(a1, a3);
  }
  else if ( a3 == 4 )
  {
    png_crc_read((struct __jmp_buf_tag *)a1, (int)v11, 4);
    result = png_crc_finish(a1, 0);
    if ( !result )
    {
      uint_32 = png_get_uint_32(v11);
      v9 = uint_32;
      if ( uint_32 )
      {
        if ( a2 && (*(_DWORD *)(a2 + 8) & 0x800) != 0 && (unsigned int)(uint_32 - 45000) > 0x3E8 )
        {
          png_warning(a1, "Ignoring incorrect gAMA value when sRGB is also present");
          return fprintf((FILE *)&_sF + 2, "gamma = (%d/100000)\n", v9);
        }
        else
        {
          v10 = (float)uint_32 / 100000.0;
          *(float *)(a1 + 540) = v10;
          png_set_gAMA(a1, a2, COERCE_UNSIGNED_INT64(v10), HIDWORD(COERCE_UNSIGNED_INT64(v10)));
          return png_set_gAMA_fixed(a1, a2, v9);
        }
      }
      else
      {
        return png_warning(a1, "Ignoring gAMA chunk with gamma=0");
      }
    }
  }
  else
  {
    png_warning(a1, "Incorrect gAMA chunk length");
    return png_crc_finish(a1, a3);
  }
  return result;
}


// ===== 691a80 png_handle_PLTE =====
int __fastcall png_handle_PLTE(int a1, int a2, unsigned int a3)
{
  int v3; // r3
  int v7; // r2
  int result; // r0
  int v9; // r9
  int v10; // r6
  _BYTE *v11; // r3
  _BYTE v12[768]; // [sp+4h] [bp-304h] BYREF
  _BYTE v13[4]; // [sp+304h] [bp-4h] BYREF

  v3 = *(_DWORD *)(a1 + 296);
  if ( (v3 & 1) == 0 )
  {
    png_error((struct __jmp_buf_tag *)a1, "Missing IHDR before PLTE");
    v7 = *(unsigned __int8 *)(a1 + 486);
    *(_DWORD *)(a1 + 296) |= 2u;
    if ( (v7 & 2) != 0 )
      goto LABEL_6;
LABEL_22:
    png_warning(a1, "Ignoring PLTE chunk in grayscale PNG");
    return png_crc_finish(a1, a3);
  }
  if ( (v3 & 4) != 0 )
  {
    png_warning(a1, "Invalid PLTE after IDAT");
    return png_crc_finish(a1, a3);
  }
  if ( (v3 & 2) != 0 )
  {
    png_error((struct __jmp_buf_tag *)a1, "Duplicate PLTE chunk");
    v3 = *(_DWORD *)(a1 + 296);
  }
  v7 = *(unsigned __int8 *)(a1 + 486);
  *(_DWORD *)(a1 + 296) = v3 | 2;
  if ( (v7 & 2) == 0 )
    goto LABEL_22;
LABEL_6:
  if ( a3 > 0x300 || a3 != 3 * (a3 / 3) )
  {
    if ( v7 != 3 )
    {
      png_warning(a1, "Invalid palette chunk");
      return png_crc_finish(a1, a3);
    }
    png_error((struct __jmp_buf_tag *)a1, "Invalid palette chunk");
  }
  v9 = (int)a3 / 3;
  if ( (int)a3 / 3 > 0 )
  {
    v10 = 0;
    do
    {
      png_crc_read((struct __jmp_buf_tag *)a1, (int)v13, 3);
      v12[v10] = v13[0];
      v11 = &v12[v10];
      v10 += 3;
      v11[1] = v13[1];
      v11[2] = v13[2];
    }
    while ( v10 != 3 * v9 );
  }
  png_crc_finish(a1, 0);
  result = png_set_PLTE(a1, a2, v12, v9);
  if ( *(_BYTE *)(a1 + 486) == 3 && a2 && (*(_DWORD *)(a2 + 8) & 0x10) != 0 )
  {
    if ( *(unsigned __int16 *)(a1 + 474) > (unsigned int)(unsigned __int16)v9 )
    {
      result = png_warning(a1, "Truncating incorrect tRNS chunk length");
      *(_WORD *)(a1 + 474) = v9;
    }
    if ( *(unsigned __int16 *)(a2 + 22) > (unsigned int)(unsigned __int16)v9 )
    {
      result = png_warning(a1, "Truncating incorrect info tRNS chunk length");
      *(_WORD *)(a2 + 22) = v9;
    }
  }
  return result;
}


// ===== 691cb0 png_handle_IHDR =====
int __fastcall png_handle_IHDR(int a1, int a2, int a3)
{
  int uint_31; // r8
  int v7; // r0
  int v8; // lr
  int v9; // r12
  int v10; // r6
  int v11; // r10
  int v12; // r7
  char v13; // r2
  int v14; // r1
  unsigned int v15; // r2
  bool v16; // cc
  unsigned int v17; // r2
  unsigned __int8 v19[4]; // [sp+1Ch] [bp-18h] BYREF
  unsigned __int8 v20[12]; // [sp+20h] [bp-14h] BYREF

  if ( (*(_DWORD *)(a1 + 296) & 1) != 0 )
    png_error((struct __jmp_buf_tag *)a1, "Out of place IHDR");
  if ( a3 != 13 )
    png_error((struct __jmp_buf_tag *)a1, "Invalid IHDR chunk");
  *(_DWORD *)(a1 + 296) |= 1u;
  png_crc_read((struct __jmp_buf_tag *)a1, (int)v19, 13);
  png_crc_finish(a1, 0);
  uint_31 = png_get_uint_31((struct __jmp_buf_tag *)a1, v19);
  v7 = png_get_uint_31((struct __jmp_buf_tag *)a1, v20);
  v8 = v20[4];
  v9 = v20[5];
  v10 = v20[6];
  v11 = v20[7];
  v12 = v20[8];
  *(_DWORD *)(a1 + 392) = uint_31;
  *(_DWORD *)(a1 + 396) = v7;
  *(_BYTE *)(a1 + 487) = v8;
  *(_BYTE *)(a1 + 483) = v12;
  *(_BYTE *)(a1 + 486) = v9;
  *(_BYTE *)(a1 + 760) = v11;
  *(_BYTE *)(a1 + 800) = v10;
  switch ( v9 )
  {
    case 0:
    case 3:
      v13 = 1;
      *(_BYTE *)(a1 + 490) = 1;
      break;
    case 2:
      v13 = 3;
      *(_BYTE *)(a1 + 490) = 3;
      break;
    case 4:
      v13 = 2;
      *(_BYTE *)(a1 + 490) = 2;
      break;
    case 6:
      v13 = 4;
      *(_BYTE *)(a1 + 490) = 4;
      break;
    default:
      v13 = *(_BYTE *)(a1 + 490);
      break;
  }
  v14 = *(_DWORD *)(a1 + 392);
  v15 = (unsigned __int8)(v8 * v13);
  v16 = v15 > 7;
  *(_BYTE *)(a1 + 489) = v15;
  if ( v15 > 7 )
    v17 = v14 * (v15 >> 3);
  else
    v17 = v14 * v15;
  if ( !v16 )
    v17 = (v17 + 7) >> 3;
  *(_DWORD *)(a1 + 408) = v17;
  return png_set_IHDR(a1, a2, uint_31, v7, v8, v9, v12, v10, v11);
}


// ===== 691e68 png_read_chunk_header =====
int __fastcall png_read_chunk_header(struct __jmp_buf_tag *a1)
{
  int *v2; // r6
  int uint_31; // r7
  unsigned __int8 v5[4]; // [sp+4h] [bp+0h] BYREF
  int v6; // [sp+8h] [bp+4h]

  v2 = &a1[3].__jmpbuf[2];
  png_read_data(a1);
  uint_31 = png_get_uint_31(a1, v5);
  a1[3].__jmpbuf[2] = v6;
  png_reset_crc((int)a1);
  png_calculate_crc((int)a1, (int)v2, 4);
  png_check_chunk_name((unsigned __int8 *)a1, v2);
  return uint_31;
}


// ===== 691f04 png_set_oFFs =====
int __fastcall png_set_oFFs(int result, int a2, int a3, int a4, char a5)
{
  bool v5; // zf

  v5 = result == 0;
  if ( result )
    v5 = a2 == 0;
  if ( !v5 )
  {
    result = *(_DWORD *)(a2 + 8);
    *(_DWORD *)(a2 + 104) = a4;
    *(_DWORD *)(a2 + 100) = a3;
    *(_DWORD *)(a2 + 8) = result | 0x100;
    *(_BYTE *)(a2 + 108) = a5;
  }
  return result;
}


// ===== 691f30 png_set_sCAL =====
int __fastcall png_set_sCAL(int result, int a2, char a3, int a4, __int64 a5, __int64 a6)
{
  bool v6; // zf
  int v7; // r3

  v6 = result == 0;
  if ( result )
    v6 = a2 == 0;
  if ( !v6 )
  {
    v7 = *(_DWORD *)(a2 + 8);
    *(_QWORD *)(a2 + 224) = a5;
    *(_QWORD *)(a2 + 232) = a6;
    *(_DWORD *)(a2 + 8) = v7 | 0x4000;
    *(_BYTE *)(a2 + 220) = a3;
  }
  return result;
}


// ===== 691f68 png_set_pHYs =====
int __fastcall png_set_pHYs(int result, int a2, int a3, int a4, char a5)
{
  bool v5; // zf

  v5 = result == 0;
  if ( result )
    v5 = a2 == 0;
  if ( !v5 )
  {
    result = *(_DWORD *)(a2 + 8);
    *(_DWORD *)(a2 + 116) = a4;
    *(_DWORD *)(a2 + 112) = a3;
    *(_DWORD *)(a2 + 8) = result | 0x80;
    *(_BYTE *)(a2 + 120) = a5;
  }
  return result;
}


// ===== 691f94 png_set_sRGB =====
int __fastcall png_set_sRGB(int result, int a2, char a3)
{
  bool v3; // zf
  int v4; // r3

  v3 = result == 0;
  if ( result )
    v3 = a2 == 0;
  if ( !v3 )
  {
    v4 = *(_DWORD *)(a2 + 8);
    *(_BYTE *)(a2 + 44) = a3;
    *(_DWORD *)(a2 + 8) = v4 | 0x800;
  }
  return result;
}


// ===== 691fb0 png_set_unknown_chunk_location =====
int __fastcall png_set_unknown_chunk_location(int result, int a2, int a3, char a4)
{
  bool v4; // zf

  v4 = a2 == 0;
  if ( a2 )
    v4 = result == 0;
  if ( !v4 && a3 >= 0 )
  {
    result = *(_DWORD *)(a2 + 192);
    if ( a3 < result )
    {
      *(_BYTE *)(*(_DWORD *)(a2 + 188) + 20 * a3 + 16) = a4;
      return 20;
    }
  }
  return result;
}


// ===== 691fe0 png_permit_empty_plte =====
int __fastcall png_permit_empty_plte(int result, char a2)
{
  if ( result )
    *(_DWORD *)(result + 752) = *(_DWORD *)(result + 752) & 0xFE | a2 & 1;
  return result;
}


// ===== 691ffc png_permit_mng_features =====
int __fastcall png_permit_mng_features(int a1, char a2)
{
  bool v2; // zf
  int result; // r0

  v2 = a1 == 0;
  if ( a1 )
    result = a2 & 5;
  else
    result = 0;
  if ( !v2 )
    *(_DWORD *)(a1 + 752) = result;
  return result;
}


// ===== 692010 png_set_read_user_chunk_fn =====
int __fastcall png_set_read_user_chunk_fn(int result, int a2, int a3)
{
  if ( result )
  {
    *(_DWORD *)(result + 728) = a2;
    *(_DWORD *)(result + 732) = a3;
  }
  return result;
}


// ===== 692020 png_set_invalid =====
int __fastcall png_set_invalid(int result, int a2, int a3)
{
  bool v3; // zf

  v3 = a2 == 0;
  if ( a2 )
    v3 = result == 0;
  if ( !v3 )
    *(_DWORD *)(a2 + 8) &= ~a3;
  return result;
}


// ===== 692038 png_set_asm_flags =====
int __fastcall png_set_asm_flags(int result)
{
  if ( result )
    *(_DWORD *)(result + 768) = 0;
  return result;
}


// ===== 692048 png_set_mmx_thresholds =====
void png_set_mmx_thresholds()
{
  ;
}


// ===== 69204c png_set_user_limits =====
int __fastcall png_set_user_limits(int result, int a2, int a3)
{
  if ( result )
  {
    *(_DWORD *)(result + 808) = a3;
    *(_DWORD *)(result + 804) = a2;
  }
  return result;
}


// ===== 69205c png_set_compression_buffer_size =====
void *__fastcall png_set_compression_buffer_size(void *result, size_t a2)
{
  struct __jmp_buf_tag *v2; // r4
  int v4; // r3

  v2 = (struct __jmp_buf_tag *)result;
  if ( result )
  {
    png_free((int)result, *((void **)result + 91));
    v2[2].__saved_mask.__val[7] = a2;
    result = png_malloc(v2, a2);
    v4 = v2[2].__saved_mask.__val[7];
    v2[2].__jmpbuf[2] = (int)result;
    v2[2].__saved_mask.__val[6] = (unsigned int)result;
    v2[2].__jmpbuf[3] = v4;
  }
  return result;
}


// ===== 692098 png_set_rows =====
int __fastcall png_set_rows(int result, int a2, int a3)
{
  bool v3; // zf
  int v4; // r3
  int v7; // r2

  v3 = result == 0;
  if ( result )
    v3 = a2 == 0;
  v4 = v3;
  if ( !v3 )
  {
    v7 = *(_DWORD *)(a2 + 248);
    if ( v7 && v7 != a3 )
      result = png_free_data(result, a2, 64, v4);
    if ( a3 )
      v4 = *(_DWORD *)(a2 + 8);
    *(_DWORD *)(a2 + 248) = a3;
    if ( a3 )
      *(_DWORD *)(a2 + 8) = v4 | 0x8000;
  }
  return result;
}


// ===== 6920ec png_set_keep_unknown_chunks =====
struct __jmp_buf_tag *__fastcall png_set_keep_unknown_chunks(
        struct __jmp_buf_tag *result,
        int a2,
        const void *a3,
        int a4)
{
  int v4; // r4
  char v5; // r5
  unsigned int v8; // r11
  unsigned int v9; // r10
  char *v10; // r0
  const void *v11; // r1
  char *v12; // r9
  size_t v13; // r11
  char *v14; // r11
  int v15; // r3
  int v16; // r3
  unsigned int v17; // r3
  unsigned int v18; // r2

  v4 = (int)result;
  v5 = a2;
  if ( result )
  {
    if ( !a4 )
    {
      if ( (unsigned int)(a2 - 2) <= 1 )
      {
        v18 = result[1].__saved_mask.__val[29];
        v17 = v18 | 0x8000;
        result[1].__saved_mask.__val[29] = v18 | 0x8000;
        if ( a2 == 3 )
        {
          result[1].__saved_mask.__val[29] = v18 | 0x18000;
          return result;
        }
      }
      else
      {
        v17 = result[1].__saved_mask.__val[29] & 0xFFFF7FFF;
        result[1].__saved_mask.__val[29] = v17;
      }
      result[1].__saved_mask.__val[29] = v17 & 0xFFFEFFFF;
      return result;
    }
    if ( a3 )
    {
      v8 = result[4].__saved_mask.__val[21];
      v9 = a4 + v8;
      v10 = (char *)png_malloc(result, 5 * (a4 + v8));
      v11 = *(const void **)(v4 + 740);
      v12 = v10;
      v13 = 5 * v8;
      if ( v11 )
      {
        memcpy(v10, v11, v13);
        png_free(v4, *(void **)(v4 + 740));
        *(_DWORD *)(v4 + 740) = 0;
      }
      result = (struct __jmp_buf_tag *)memcpy(&v12[v13], a3, 5 * a4);
      if ( a4 > 0 )
      {
        v14 = &v12[v13 + 4];
        v15 = 0;
        do
        {
          v14[v15] = v5;
          v15 += 5;
        }
        while ( v15 != 5 * a4 );
      }
      v16 = *(_DWORD *)(v4 + 724);
      *(_DWORD *)(v4 + 736) = v9;
      *(_DWORD *)(v4 + 740) = v12;
      *(_DWORD *)(v4 + 724) = v16 | 0x400;
    }
  }
  return result;
}


// ===== 6921f0 png_set_tIME =====
_DWORD *__fastcall png_set_tIME(_DWORD *result, int a2, void *a3)
{
  bool v3; // zf

  v3 = result == nullptr;
  if ( result )
    v3 = a2 == 0;
  if ( !v3 && (result[74] & 0x200) == 0 )
  {
    result = memcpy((void *)(a2 + 60), a3, 8u);
    *(_DWORD *)(a2 + 8) |= 0x200u;
  }
  return result;
}


// ===== 692234 png_set_sBIT =====
void *__fastcall png_set_sBIT(void *result, int a2, void *a3)
{
  bool v3; // zf

  v3 = result == nullptr;
  if ( result )
    v3 = a2 == 0;
  if ( !v3 )
  {
    result = memcpy((void *)(a2 + 68), a3, 5u);
    *(_DWORD *)(a2 + 8) |= 2u;
  }
  return result;
}


// ===== 692268 png_set_bKGD =====
void *__fastcall png_set_bKGD(void *result, int a2, void *a3)
{
  bool v3; // zf

  v3 = result == nullptr;
  if ( result )
    v3 = a2 == 0;
  if ( !v3 )
  {
    result = memcpy((void *)(a2 + 90), a3, 0xAu);
    *(_DWORD *)(a2 + 8) |= 0x20u;
  }
  return result;
}


// ===== 69229c png_set_unknown_chunks =====
void __fastcall png_set_unknown_chunks(struct __jmp_buf_tag *a1, int a2, int a3, int a4)
{
  bool v4; // zf
  int v6; // r6
  char *v10; // r0
  char *v11; // r7
  int v12; // r3
  char *v13; // r9
  size_t v14; // r1
  void *v15; // r0
  int v16; // r2
  int v17; // r3

  v4 = a1 == nullptr;
  if ( a1 )
    v4 = a2 == 0;
  v6 = v4;
  if ( !v4 && a4 )
  {
    v10 = (char *)png_malloc_warn(a1, 20 * (a4 + *(_DWORD *)(a2 + 192)));
    v11 = v10;
    if ( !v10 )
    {
      png_warning((int)a1, "Out of memory while processing unknown chunk.");
      return;
    }
    memcpy(v10, *(const void **)(a2 + 188), 20 * *(_DWORD *)(a2 + 192));
    png_free((int)a1, *(void **)(a2 + 188));
    *(_DWORD *)(a2 + 188) = v6;
    if ( a4 <= 0 )
    {
LABEL_17:
      v16 = *(_DWORD *)(a2 + 192);
      v17 = *(_DWORD *)(a2 + 184);
      *(_DWORD *)(a2 + 188) = v11;
      *(_DWORD *)(a2 + 184) = v17 | 0x200;
      *(_DWORD *)(a2 + 192) = v16 + a4;
      return;
    }
    while ( 1 )
    {
      while ( 1 )
      {
        v12 = 20 * (v6 + *(_DWORD *)(a2 + 192));
        *(_DWORD *)&v11[v12] = *(_DWORD *)a3;
        v13 = &v11[v12];
        v13[4] = 0;
        *((_DWORD *)v13 + 3) = *(_DWORD *)(a3 + 12);
        v13[16] = a1[1].__saved_mask.__val[28];
        v14 = *(_DWORD *)(a3 + 12);
        if ( v14 )
          break;
        *((_DWORD *)v13 + 2) = 0;
LABEL_12:
        ++v6;
        a3 += 20;
        if ( v6 == a4 )
          goto LABEL_17;
      }
      v15 = png_malloc_warn(a1, v14);
      *((_DWORD *)v13 + 2) = v15;
      if ( !v15 )
      {
        png_warning((int)a1, "Out of memory while processing unknown chunk.");
        *((_DWORD *)v13 + 3) = 0;
        goto LABEL_12;
      }
      ++v6;
      memcpy(v15, *(const void **)(a3 + 8), *(_DWORD *)(a3 + 12));
      a3 += 20;
      if ( v6 == a4 )
        goto LABEL_17;
    }
  }
}


// ===== 692408 png_set_tRNS =====
struct __jmp_buf_tag *__fastcall png_set_tRNS(
        struct __jmp_buf_tag *result,
        int a2,
        const void *a3,
        size_t a4,
        unsigned __int16 *a5)
{
  bool v5; // zf
  int v6; // r12
  struct __jmp_buf_tag *v10; // r6
  int v11; // r2
  int v12; // r3

  v5 = result == nullptr;
  if ( result )
    v5 = a2 == 0;
  v6 = v5;
  v10 = result;
  if ( !v5 )
  {
    if ( a3 )
    {
      png_free_data((int)result, a2, 0x2000, v6);
      result = (struct __jmp_buf_tag *)png_malloc(v10, 0x100u);
      *(_DWORD *)(a2 + 76) = result;
      v10[3].__saved_mask.__val[22] = (unsigned int)result;
      if ( a4 - 1 <= 0xFF )
        result = (struct __jmp_buf_tag *)memcpy(*(void **)(a2 + 76), a3, a4);
    }
    if ( a5 )
    {
      v11 = 1 << *(_BYTE *)(a2 + 24);
      if ( *(_BYTE *)(a2 + 25) )
      {
        if ( *(_BYTE *)(a2 + 25) != 2 || v11 >= a5[1] && v11 >= a5[2] && v11 >= a5[3] )
        {
LABEL_13:
          result = (struct __jmp_buf_tag *)memcpy((void *)(a2 + 80), a5, 0xAu);
          if ( !a4 )
            LOWORD(a4) = 1;
          *(_WORD *)(a2 + 22) = a4;
          goto LABEL_16;
        }
      }
      else if ( v11 >= a5[4] )
      {
        goto LABEL_13;
      }
      png_warning((int)v10, "tRNS chunk has out-of-range samples for bit_depth");
      goto LABEL_13;
    }
    *(_WORD *)(a2 + 22) = a4;
    if ( a4 )
    {
LABEL_16:
      v12 = *(_DWORD *)(a2 + 8) | 0x10;
      *(_DWORD *)(a2 + 184) |= 0x2000u;
      *(_DWORD *)(a2 + 8) = v12;
    }
  }
  return result;
}


// ===== 69253c png_set_hIST =====
struct __jmp_buf_tag *__fastcall png_set_hIST(struct __jmp_buf_tag *result, int a2, int a3)
{
  bool v3; // zf
  int v4; // r7
  struct __jmp_buf_tag *v7; // r5
  int v8; // r3
  int v9; // r3
  int v10; // r2

  v3 = result == nullptr;
  if ( result )
    v3 = a2 == 0;
  v4 = v3;
  v7 = result;
  if ( !v3 )
  {
    if ( (unsigned __int16)(*(_WORD *)(a2 + 20) - 1) > 0xFFu )
    {
      return (struct __jmp_buf_tag *)png_warning((int)result, "Invalid palette size, hIST allocation skipped.");
    }
    else
    {
      png_free_data((int)result, a2, 8, v4);
      result = (struct __jmp_buf_tag *)png_malloc_warn(v7, 0x200u);
      v7[4].__saved_mask.__val[10] = (unsigned int)result;
      if ( result )
      {
        if ( *(_WORD *)(a2 + 20) )
        {
          v8 = v4;
          while ( 1 )
          {
            ++v8;
            *(_WORD *)((char *)result->__jmpbuf + v4) = *(_WORD *)(a3 + v4);
            v4 += 2;
            if ( *(unsigned __int16 *)(a2 + 20) <= v8 )
              break;
            result = (struct __jmp_buf_tag *)v7[4].__saved_mask.__val[10];
          }
          result = (struct __jmp_buf_tag *)v7[4].__saved_mask.__val[10];
        }
        v9 = *(_DWORD *)(a2 + 8);
        v10 = *(_DWORD *)(a2 + 184);
        *(_DWORD *)(a2 + 124) = result;
        *(_DWORD *)(a2 + 184) = v10 | 8;
        *(_DWORD *)(a2 + 8) = v9 | 0x40;
      }
      else
      {
        return (struct __jmp_buf_tag *)png_warning((int)v7, "Insufficient memory for hIST chunk data.");
      }
    }
  }
  return result;
}


// ===== 69261c png_set_gAMA_fixed =====
float __fastcall png_set_gAMA_fixed(float result, float *a2, int a3)
{
  bool v3; // zf
  int v5; // r7
  int v6; // r6
  int v7; // r3
  int v8; // r3

  v3 = LODWORD(result) == 0;
  if ( result != 0.0 )
    v3 = a2 == nullptr;
  v5 = v3;
  v6 = LODWORD(result);
  if ( !v3 )
  {
    if ( a3 < 0 )
    {
      png_warning(SLODWORD(result), "Setting negative gamma to zero");
      v8 = *((_DWORD *)a2 + 2);
      *((_DWORD *)a2 + 63) = v5;
      *((_DWORD *)a2 + 2) = v8 | 1;
      a2[10] = 0.0;
    }
    else
    {
      result = (double)a3 / 100000.0;
      v7 = *((_DWORD *)a2 + 2);
      a2[10] = result;
      *((_DWORD *)a2 + 2) = v7 | 1;
      *((_DWORD *)a2 + 63) = a3;
      if ( a3 )
        return result;
    }
    return COERCE_FLOAT(png_warning(v6, "Setting gamma=0"));
  }
  return result;
}


// ===== 6926c4 png_set_gAMA =====
int __fastcall png_set_gAMA(int result, float *a2, double a3)
{
  bool v3; // zf
  int v5; // r5
  float v7; // r0
  int v8; // r3

  v3 = result == 0;
  if ( result )
    v3 = a2 == nullptr;
  v5 = result;
  if ( !v3 )
  {
    if ( a3 > 21474.83 )
    {
      result = png_warning(result, "Limiting gamma to 21474.83");
      *((_DWORD *)a2 + 2) |= 1u;
      a2[10] = 21475.0;
      a2[63] = NAN;
    }
    else
    {
      v7 = a3;
      a2[10] = v7;
      v8 = *((_DWORD *)a2 + 2);
      *((_DWORD *)a2 + 63) = (int)(a3 * 100000.0 + 0.5);
      *((_DWORD *)a2 + 2) = v8 | 1;
      result = a3 == 0.0;
      if ( a3 == 0.0 )
        return png_warning(v5, "Setting gamma=0");
    }
  }
  return result;
}


// ===== 6927c8 png_set_cHRM_fixed =====
float __fastcall png_set_cHRM_fixed(float result, int a2, int a3, int a4, int a5, int a6, __int64 a7, __int64 a8)
{
  bool v8; // zf
  float v9; // r0
  float v10; // r0
  float v11; // r0
  float v12; // r0
  float v13; // r0
  float v14; // r0
  float v15; // r0
  int v16; // r3
  const char *v17; // r1

  v8 = LODWORD(result) == 0;
  if ( result != 0.0 )
    v8 = a2 == 0;
  if ( !v8 )
  {
    if ( a4 | a3 | a5 | a6 | (unsigned int)a7 | HIDWORD(a7) | (unsigned int)a8 | HIDWORD(a8) )
    {
      if ( (a4 | a3) >= 0 && (a6 | a5) >= 0 && (int)(HIDWORD(a7) | a7) >= 0 && (int)(HIDWORD(a8) | a8) >= 0 )
      {
        *(_DWORD *)(a2 + 256) = a3;
        *(_DWORD *)(a2 + 260) = a4;
        *(_DWORD *)(a2 + 264) = a5;
        *(_DWORD *)(a2 + 268) = a6;
        *(_QWORD *)(a2 + 272) = a7;
        *(_QWORD *)(a2 + 280) = a8;
        v9 = (double)a3 / 100000.0;
        *(float *)(a2 + 128) = v9;
        v10 = (double)a4 / 100000.0;
        *(float *)(a2 + 132) = v10;
        v11 = (double)a5 / 100000.0;
        *(float *)(a2 + 136) = v11;
        v12 = (double)a6 / 100000.0;
        *(float *)(a2 + 140) = v12;
        v13 = (double)(int)a7 / 100000.0;
        *(float *)(a2 + 144) = v13;
        v14 = (double)SHIDWORD(a7) / 100000.0;
        *(float *)(a2 + 148) = v14;
        v15 = (double)(int)a8 / 100000.0;
        *(float *)(a2 + 152) = v15;
        result = (double)SHIDWORD(a8) / 100000.0;
        v16 = *(_DWORD *)(a2 + 8);
        *(float *)(a2 + 156) = result;
        *(_DWORD *)(a2 + 8) = v16 | 4;
        return result;
      }
      v17 = "Ignoring attempt to set negative chromaticity value";
    }
    else
    {
      v17 = "Ignoring attempt to set all-zero chromaticity values";
    }
    return COERCE_FLOAT(png_warning(SLODWORD(result), v17));
  }
  return result;
}


// ===== 6929a4 png_set_cHRM =====
int __fastcall png_set_cHRM(
        int result,
        int a2,
        double a3,
        double a4,
        double a5,
        double a6,
        double a7,
        double a8,
        double a9,
        double a10)
{
  bool v10; // zf
  const char *v11; // r1
  float v12; // r0
  float v13; // r0
  float v14; // r0
  float v15; // r0
  float v16; // r0
  float v17; // r0
  float v18; // r0
  float v19; // r0
  int v20; // r3

  v10 = result == 0;
  if ( result )
    v10 = a2 == 0;
  if ( !v10 )
  {
    if ( a3 == 0.0 && a4 == 0.0 && a5 == 0.0 && a6 == 0.0 && a7 == 0.0 && a8 == 0.0 && a9 == 0.0 && a10 == 0.0 )
    {
      v11 = "Ignoring attempt to set all-zero chromaticity values";
      return png_warning(result, v11);
    }
    if ( a3 < 0.0 || a4 < 0.0 || a5 < 0.0 || a6 < 0.0 || a7 < 0.0 || a8 < 0.0 || a9 < 0.0 || a10 < 0.0 )
    {
      v11 = "Ignoring attempt to set negative chromaticity value";
      return png_warning(result, v11);
    }
    if ( a3 > 21474.83
      || a4 > 21474.83
      || a5 > 21474.83
      || a6 > 21474.83
      || a7 > 21474.83
      || a8 > 21474.83
      || a9 > 21474.83
      || a10 > 21474.83 )
    {
      return png_warning(result, "Ignoring attempt to set chromaticity value exceeding 21474.83");
    }
    else
    {
      v12 = a3;
      *(float *)(a2 + 128) = v12;
      v13 = a4;
      *(float *)(a2 + 132) = v13;
      v14 = a5;
      *(float *)(a2 + 136) = v14;
      v15 = a6;
      *(float *)(a2 + 140) = v15;
      v16 = a7;
      *(float *)(a2 + 144) = v16;
      v17 = a8;
      *(float *)(a2 + 148) = v17;
      v18 = a9;
      *(float *)(a2 + 152) = v18;
      v19 = a10;
      *(float *)(a2 + 156) = v19;
      *(_DWORD *)(a2 + 256) = (int)(a3 * 100000.0 + 0.5);
      *(_DWORD *)(a2 + 260) = (int)(a4 * 100000.0 + 0.5);
      *(_DWORD *)(a2 + 264) = (int)(a5 * 100000.0 + 0.5);
      *(_DWORD *)(a2 + 268) = (int)(a6 * 100000.0 + 0.5);
      *(_DWORD *)(a2 + 272) = (int)(a7 * 100000.0 + 0.5);
      *(_DWORD *)(a2 + 276) = (int)(a8 * 100000.0 + 0.5);
      *(_DWORD *)(a2 + 280) = (int)(a9 * 100000.0 + 0.5);
      result = (int)(a10 * 100000.0 + 0.5);
      v20 = *(_DWORD *)(a2 + 8);
      *(_DWORD *)(a2 + 284) = result;
      *(_DWORD *)(a2 + 8) = v20 | 4;
    }
  }
  return result;
}


// ===== 692edc png_set_sRGB_gAMA_and_cHRM =====
int __fastcall png_set_sRGB_gAMA_and_cHRM(int result, float *a2, char a3)
{
  bool v3; // zf
  int v5; // r5

  v3 = result == 0;
  if ( result )
    v3 = a2 == nullptr;
  v5 = result;
  if ( !v3 )
  {
    png_set_sRGB(result, (int)a2, a3);
    png_set_gAMA(v5, a2, 0.454549998);
    png_set_gAMA_fixed(*(float *)&v5, a2, 45455);
    png_set_cHRM_fixed(*(float *)&v5, (int)a2, 31270, 32900, 64000, 33000, 257698037790000LL, 0x177000003A98LL);
    return png_set_cHRM(
             v5,
             (int)a2,
             0.312700003,
             0.328999996,
             0.639999986,
             0.330000013,
             0.300000012,
             0.600000024,
             0.150000006,
             0.0599999987);
  }
  return result;
}


// ===== 692ff8 png_set_sPLT =====
struct __jmp_buf_tag *__fastcall png_set_sPLT(struct __jmp_buf_tag *result, int a2, int a3, int a4)
{
  bool v4; // zf
  int v5; // r4
  int v6; // r6
  struct __jmp_buf_tag *v8; // r10
  _DWORD *v9; // r0
  _DWORD *v10; // r9
  int v11; // r8
  void *v12; // r0
  size_t v13; // r4
  int v14; // r7
  void *v15; // r0
  int v16; // r7
  size_t v17; // r2
  char *v18; // r4
  int v19; // r2
  int v20; // r3

  v4 = result == nullptr;
  if ( result )
    v4 = a2 == 0;
  v5 = a2;
  v6 = v4;
  v8 = result;
  if ( !v4 )
  {
    v9 = png_malloc_warn(result, 16 * (a4 + *(_DWORD *)(a2 + 216)));
    v10 = v9;
    if ( v9 )
    {
      memcpy(v9, *(const void **)(v5 + 212), 16 * *(_DWORD *)(v5 + 216));
      png_free((int)v8, *(void **)(v5 + 212));
      *(_DWORD *)(v5 + 212) = v6;
      if ( a4 > 0 )
      {
        v11 = v5;
        do
        {
          while ( 1 )
          {
            v13 = LC_API_STRLEN_0(*(const char **)a3) + 1;
            v14 = *(_DWORD *)(v11 + 216);
            v15 = png_malloc_warn(v8, v13);
            v16 = v6 + v14;
            v17 = v13;
            v10[4 * v16] = v15;
            v18 = (char *)&v10[4 * v16];
            if ( v15 )
              break;
            png_warning((int)v8, "Out of memory while processing sPLT chunk");
            ++v6;
            a3 += 16;
            if ( v6 == a4 )
              goto LABEL_17;
          }
          memcpy(v15, *(const void **)a3, v17);
          v12 = png_malloc_warn(v8, 10 * *(_DWORD *)(a3 + 12));
          *((_DWORD *)v18 + 2) = v12;
          if ( v12 )
          {
            memcpy(v12, *(const void **)(a3 + 8), 10 * *(_DWORD *)(a3 + 12));
            *((_DWORD *)v18 + 3) = *(_DWORD *)(a3 + 12);
            v18[4] = *(_BYTE *)(a3 + 4);
          }
          else
          {
            png_warning((int)v8, "Out of memory while processing sPLT chunk");
            png_free((int)v8, (void *)v10[4 * v16]);
            v10[4 * v16] = 0;
          }
          ++v6;
          a3 += 16;
        }
        while ( v6 != a4 );
LABEL_17:
        v5 = v11;
      }
      v19 = *(_DWORD *)(v5 + 216) + a4;
      v20 = *(_DWORD *)(v5 + 8) | 0x2000;
      *(_DWORD *)(v5 + 184) |= 0x20u;
      *(_DWORD *)(v5 + 212) = v10;
      *(_DWORD *)(v5 + 216) = v19;
      *(_DWORD *)(v5 + 8) = v20;
      return (struct __jmp_buf_tag *)a4;
    }
    else
    {
      return (struct __jmp_buf_tag *)png_warning((int)v8, "No memory for sPLT palettes.");
    }
  }
  return result;
}


// ===== 6931c0 png_set_text_2 =====
int __fastcall png_set_text_2(struct __jmp_buf_tag *a1, _DWORD *a2, int a3, int a4)
{
  bool v4; // zf
  int v8; // r7
  int v9; // r3
  int v10; // r6
  const char *v11; // r0
  size_t v12; // r0
  int v13; // r11
  size_t v14; // r8
  const char *v15; // r0
  _DWORD *v16; // r7
  size_t v17; // r10
  void *v18; // r0
  void *v19; // r0
  void *v21; // r6
  int v22; // r3
  void *v23; // r0
  void *v24; // r0
  int v25; // [sp+0h] [bp-14h]
  int v26; // [sp+4h] [bp-10h]

  v4 = a1 == nullptr;
  if ( a1 )
    v4 = a2 == nullptr;
  if ( v4 || !a4 )
    return 0;
  v8 = a2[13];
  v9 = a4 + a2[12];
  if ( v9 <= v8 )
  {
LABEL_6:
    if ( a4 > 0 )
    {
      v10 = 0;
      while ( 1 )
      {
        v11 = *(const char **)(a3 + 4);
        v26 = a2[14];
        v25 = a2[12];
        if ( !v11 )
          goto LABEL_9;
        v12 = LC_API_STRLEN_0(v11);
        v13 = *(_DWORD *)a3;
        v14 = v12;
        if ( *(int *)a3 > 0 )
        {
          png_warning((int)a1, "iTXt chunk not supported.");
LABEL_9:
          ++v10;
          a3 += 16;
          if ( v10 == a4 )
            return 0;
        }
        else
        {
          v15 = *(const char **)(a3 + 8);
          v16 = (_DWORD *)(v26 + 16 * v25);
          if ( v15 && *v15 )
          {
            v17 = LC_API_STRLEN_0(v15);
            *(_DWORD *)(v26 + 16 * v25) = v13;
          }
          else
          {
            v17 = 0;
            *(_DWORD *)(v26 + 16 * v25) = -1;
          }
          v18 = png_malloc_warn(a1, v14 + 4 + v17);
          v16[1] = v18;
          if ( !v18 )
            return 1;
          memcpy(v18, *(const void **)(a3 + 4), v14);
          *(_BYTE *)(v16[1] + v14) = 0;
          v19 = (void *)(v16[1] + v14 + 1);
          v16[2] = v19;
          if ( v17 )
          {
            memcpy(v19, *(const void **)(a3 + 8), v17);
            v19 = (void *)v16[2];
          }
          *((_BYTE *)v19 + v17) = 0;
          v16[3] = v17;
          ++v10;
          ++a2[12];
          a3 += 16;
          if ( v10 == a4 )
            return 0;
        }
      }
    }
    return 0;
  }
  v21 = (void *)a2[14];
  if ( v21 )
  {
    v22 = v9 + 8;
    a2[13] = v22;
    v23 = png_malloc_warn(a1, 16 * v22);
    a2[14] = v23;
    if ( v23 )
    {
      memcpy(v23, v21, 16 * v8);
      png_free((int)a1, v21);
      goto LABEL_6;
    }
    png_free((int)a1, v21);
    return 1;
  }
  else
  {
    a2[13] = a4 + 8;
    a2[12] = 0;
    v24 = png_malloc_warn(a1, 16 * (a4 + 8));
    a2[14] = v24;
    if ( v24 )
    {
      a2[46] |= 0x4000u;
      goto LABEL_6;
    }
    return 1;
  }
}


// ===== 6933d4 png_set_iCCP =====
struct __jmp_buf_tag *__fastcall png_set_iCCP(
        struct __jmp_buf_tag *result,
        int a2,
        char *a3,
        char a4,
        const void *a5,
        size_t a6)
{
  bool v6; // zf
  struct __jmp_buf_tag *v8; // r5
  bool v11; // zf
  int v12; // r9
  size_t v13; // r11
  void *v14; // r0
  void *v15; // r0
  void *v16; // r6
  int v17; // r2
  int v18; // r3
  void *v19; // [sp+4h] [bp-8h]

  v6 = result == nullptr;
  if ( result )
    v6 = a2 == 0;
  v8 = result;
  if ( !v6 )
  {
    v11 = a3 == nullptr;
    if ( a3 )
      v11 = a5 == nullptr;
    v12 = v11;
    if ( !v11 )
    {
      v13 = LC_API_STRLEN_0(a3) + 1;
      v14 = png_malloc_warn(v8, v13);
      v19 = v14;
      if ( v14 )
      {
        memcpy(v14, a3, v13);
        v15 = png_malloc_warn(v8, a6);
        v16 = v15;
        if ( v15 )
        {
          memcpy(v15, a5, a6);
          result = (struct __jmp_buf_tag *)png_free_data((int)v8, a2, 16, v12);
          v17 = *(_DWORD *)(a2 + 8);
          v18 = *(_DWORD *)(a2 + 184);
          *(_DWORD *)(a2 + 204) = a6;
          *(_DWORD *)(a2 + 8) = v17 | 0x1000;
          *(_DWORD *)(a2 + 200) = v16;
          *(_DWORD *)(a2 + 196) = v19;
          *(_BYTE *)(a2 + 208) = a4;
          *(_DWORD *)(a2 + 184) = v18 | 0x10;
        }
        else
        {
          png_free((int)v8, v19);
          return (struct __jmp_buf_tag *)png_warning((int)v8, "Insufficient memory to process iCCP profile.");
        }
      }
      else
      {
        return (struct __jmp_buf_tag *)png_warning((int)v8, "Insufficient memory to process iCCP chunk.");
      }
    }
  }
  return result;
}


// ===== 6934f4 png_set_pCAL =====
struct __jmp_buf_tag *__fastcall png_set_pCAL(
        struct __jmp_buf_tag *result,
        int a2,
        char *a3,
        int a4,
        int a5,
        char a6,
        int a7,
        const char *a8,
        int a9)
{
  bool v10; // zf
  struct __jmp_buf_tag *v12; // r5
  int v13; // r9
  void *v15; // r0
  size_t v16; // r8
  void *v17; // r0
  int v18; // r8
  size_t v19; // r10
  int v20; // r11
  int v21; // r3
  size_t v22; // [sp+4h] [bp-10h]

  v10 = result == nullptr;
  if ( result )
    v10 = a2 == 0;
  v12 = result;
  v13 = v10;
  if ( !v10 )
  {
    v22 = LC_API_STRLEN_0(a3) + 1;
    v15 = png_malloc_warn(v12, v22);
    *(_DWORD *)(a2 + 160) = v15;
    if ( v15 )
    {
      memcpy(v15, a3, v22);
      *(_DWORD *)(a2 + 164) = a4;
      *(_DWORD *)(a2 + 168) = a5;
      *(_BYTE *)(a2 + 181) = a7;
      *(_BYTE *)(a2 + 180) = a6;
      v16 = LC_API_STRLEN_0(a8) + 1;
      v17 = png_malloc_warn(v12, v16);
      *(_DWORD *)(a2 + 172) = v17;
      if ( v17 )
      {
        memcpy(v17, a8, v16);
        result = (struct __jmp_buf_tag *)png_malloc_warn(v12, 4 * (a7 + 1));
        *(_DWORD *)(a2 + 176) = result;
        if ( result )
        {
          result->__jmpbuf[a7] = v13;
          if ( a7 <= 0 )
          {
LABEL_17:
            v21 = *(_DWORD *)(a2 + 8) | 0x400;
            *(_DWORD *)(a2 + 184) |= 0x80u;
            *(_DWORD *)(a2 + 8) = v21;
          }
          else
          {
            v18 = v13;
            while ( 1 )
            {
              v19 = LC_API_STRLEN_0(*(const char **)(a9 + v13)) + 1;
              v20 = *(_DWORD *)(a2 + 176);
              *(_DWORD *)(v20 + v13) = png_malloc_warn(v12, v19);
              ++v18;
              if ( !*(_DWORD *)(*(_DWORD *)(a2 + 176) + v13) )
                return (struct __jmp_buf_tag *)png_warning((int)v12, "Insufficient memory for pCAL parameter.");
              result = (struct __jmp_buf_tag *)memcpy(
                                                 *(void **)(*(_DWORD *)(a2 + 176) + v13),
                                                 *(const void **)(a9 + v13),
                                                 v19);
              v13 += 4;
              if ( v18 == a7 )
                goto LABEL_17;
            }
          }
        }
        else
        {
          return (struct __jmp_buf_tag *)png_warning((int)v12, "Insufficient memory for pCAL params.");
        }
      }
      else
      {
        return (struct __jmp_buf_tag *)png_warning((int)v12, "Insufficient memory for pCAL units.");
      }
    }
    else
    {
      return (struct __jmp_buf_tag *)png_warning((int)v12, "Insufficient memory for pCAL purpose.");
    }
  }
  return result;
}


// ===== 6936c8 png_set_text =====
int __fastcall png_set_text(struct __jmp_buf_tag *a1, _DWORD *a2, int a3, int a4)
{
  int result; // r0

  result = png_set_text_2(a1, a2, a3, a4);
  if ( result )
    return png_error(a1, "Insufficient memory to store text");
  return result;
}


// ===== 6936f8 png_set_IHDR =====
struct __jmp_buf_tag *__fastcall png_set_IHDR(
        struct __jmp_buf_tag *result,
        int a2,
        unsigned int a3,
        unsigned int a4,
        int a5,
        int a6,
        int a7,
        int a8,
        int a9)
{
  bool v9; // zf
  unsigned int v11; // r5
  struct __jmp_buf_tag *v13; // r6
  bool v14; // zf
  bool v15; // cc
  bool v16; // zf
  _BOOL4 v17; // r3
  _BOOL4 v18; // r3
  bool v19; // zf
  unsigned int v20; // r3
  unsigned int v21; // r2
  bool v22; // cc
  unsigned int v23; // r5
  bool v24; // zf

  v9 = result == nullptr;
  if ( result )
    v9 = a2 == 0;
  v11 = a3;
  v13 = result;
  if ( !v9 )
  {
    v14 = a3 == 0;
    if ( a3 )
      v14 = a4 == 0;
    if ( v14 )
    {
      result = (struct __jmp_buf_tag *)png_error(result, "Image width or height is zero in IHDR");
      if ( v11 > v13[5].__mask_was_saved )
        goto LABEL_9;
    }
    else if ( a3 > result[5].__mask_was_saved )
    {
      goto LABEL_9;
    }
    if ( a4 <= v13[5].__saved_mask.__val[0] )
    {
LABEL_10:
      if ( ((a4 | v11) & 0x80000000) != 0 )
        result = (struct __jmp_buf_tag *)png_error(v13, "Invalid image size in IHDR");
      if ( v11 > 0x1FFFFF7E )
        result = (struct __jmp_buf_tag *)png_warning((int)v13, "Width is too large for libpng to process pixels");
      v15 = (unsigned int)a5 > 4;
      if ( a5 != 4 )
        v15 = (unsigned int)(a5 - 1) > 1;
      if ( v15 )
      {
        v16 = a5 == 16;
        if ( a5 != 16 )
          v16 = a5 == 8;
        if ( !v16 )
          result = (struct __jmp_buf_tag *)png_error(v13, "Invalid bit depth in IHDR");
      }
      if ( (a6 == 1) | ((unsigned int)a6 >> 31) )
        goto LABEL_26;
      v17 = a6 == 5;
      if ( a6 > 6 )
        v17 = 1;
      if ( v17 )
LABEL_26:
        result = (struct __jmp_buf_tag *)png_error(v13, "Invalid color type in IHDR");
      v18 = a6 == 3;
      if ( a5 <= 8 )
        v18 = 0;
      if ( v18 )
        goto LABEL_65;
      v19 = a6 == 2;
      if ( a6 != 2 )
        v19 = a6 == 4;
      if ( (v19 || a6 == 6) && a5 <= 7 )
LABEL_65:
        result = (struct __jmp_buf_tag *)png_error(v13, "Invalid color type/bit depth combination in IHDR");
      if ( a7 > 1 )
        result = (struct __jmp_buf_tag *)png_error(v13, "Unknown interlace method in IHDR");
      if ( a8 )
        result = (struct __jmp_buf_tag *)png_error(v13, "Unknown compression method in IHDR");
      if ( (v13[1].__saved_mask.__val[28] & 0x1000) != 0 && v13[4].__saved_mask.__val[25] )
        result = (struct __jmp_buf_tag *)png_warning((int)v13, "MNG features are not allowed in a PNG datastream");
      if ( a9 )
      {
        v20 = ((v13[4].__saved_mask.__val[25] ^ 4) >> 2) & 1;
        if ( a9 != 64 )
          v20 = 1;
        if ( v20 || (v13[1].__saved_mask.__val[28] & 0x1000) != 0 )
          goto LABEL_46;
        v24 = a6 == 6;
        if ( a6 != 6 )
          v24 = a6 == 2;
        if ( !v24 )
        {
LABEL_46:
          result = (struct __jmp_buf_tag *)png_error(v13, "Unknown filter method in IHDR");
          if ( (v13[1].__saved_mask.__val[28] & 0x1000) != 0 )
            result = (struct __jmp_buf_tag *)png_warning((int)v13, "Invalid filter method in IHDR");
        }
      }
      *(_DWORD *)(a2 + 4) = a4;
      *(_BYTE *)(a2 + 24) = a5;
      *(_BYTE *)(a2 + 26) = a8;
      *(_BYTE *)(a2 + 27) = a9;
      if ( (unsigned __int8)a6 == 3 )
        LOBYTE(a3) = 1;
      *(_BYTE *)(a2 + 28) = a7;
      *(_DWORD *)a2 = v11;
      *(_BYTE *)(a2 + 25) = a6;
      if ( (unsigned __int8)a6 == 3 )
      {
        *(_BYTE *)(a2 + 29) = a3;
      }
      else
      {
        if ( (a6 & 2) != 0 )
          LOBYTE(a3) = 3;
        else
          LOBYTE(a3) = 1;
        *(_BYTE *)(a2 + 29) = a3;
        if ( (a6 & 4) != 0 )
        {
          LOBYTE(a3) = a3 + 1;
          *(_BYTE *)(a2 + 29) = a3;
        }
      }
      v21 = (unsigned __int8)(*(_BYTE *)(a2 + 24) * a3);
      *(_BYTE *)(a2 + 30) = v21;
      if ( v11 > 0x1FFFFF7E )
      {
        *(_DWORD *)(a2 + 12) = 0;
      }
      else
      {
        v22 = v21 > 7;
        if ( v21 > 7 )
          v21 >>= 3;
        v23 = v11 * v21;
        if ( !v22 )
          v23 = (v23 + 7) >> 3;
        *(_DWORD *)(a2 + 12) = v23;
      }
      return result;
    }
LABEL_9:
    result = (struct __jmp_buf_tag *)png_error(v13, "image size exceeds user limits in IHDR");
    goto LABEL_10;
  }
  return result;
}


// ===== 693a18 png_set_PLTE =====
struct __jmp_buf_tag *__fastcall png_set_PLTE(struct __jmp_buf_tag *result, int a2, const void *a3, unsigned int a4)
{
  bool v4; // zf
  int v8; // r5
  void *v9; // r0
  int v10; // r3
  int v11; // r2

  v4 = result == nullptr;
  if ( result )
    v4 = a2 == 0;
  v8 = (int)result;
  if ( !v4 )
  {
    if ( a4 > 0x100 )
    {
      if ( *(_BYTE *)(a2 + 25) != 3 )
        return (struct __jmp_buf_tag *)png_warning((int)result, "Invalid palette length");
      png_error(result, "Invalid palette length");
    }
    png_free_data(v8, a2, 4096, 0);
    v9 = png_malloc((struct __jmp_buf_tag *)v8, 0x300u);
    *(_DWORD *)(v8 + 468) = v9;
    LC_API_MEMSET_0(v9, 0, 0x300u);
    result = (struct __jmp_buf_tag *)memcpy(*(void **)(v8 + 468), a3, 3 * a4);
    *(_DWORD *)(a2 + 16) = *(_DWORD *)(v8 + 468);
    *(_WORD *)(v8 + 472) = a4;
    v10 = *(_DWORD *)(a2 + 184);
    v11 = *(_DWORD *)(a2 + 8);
    *(_WORD *)(a2 + 20) = a4;
    *(_DWORD *)(a2 + 8) = v11 | 8;
    *(_DWORD *)(a2 + 184) = v10 | 0x1000;
  }
  return result;
}


// ===== 693ae4 png_set_bgr =====
int __fastcall png_set_bgr(int result)
{
  if ( result )
    *(_DWORD *)(result + 304) |= 1u;
  return result;
}


// ===== 693af8 png_set_swap =====
int __fastcall png_set_swap(int result)
{
  if ( result )
  {
    if ( *(_BYTE *)(result + 487) == 16 )
      *(_DWORD *)(result + 304) |= 0x10u;
  }
  return result;
}


// ===== 693b18 png_set_packing =====
int __fastcall png_set_packing(int result)
{
  int v1; // r3

  if ( result )
  {
    if ( *(unsigned __int8 *)(result + 487) <= 7u )
    {
      v1 = *(_DWORD *)(result + 304);
      *(_BYTE *)(result + 488) = 8;
      *(_DWORD *)(result + 304) = v1 | 4;
    }
  }
  return result;
}


// ===== 693b40 png_set_packswap =====
int __fastcall png_set_packswap(int result)
{
  if ( result )
  {
    if ( *(unsigned __int8 *)(result + 487) <= 7u )
      *(_DWORD *)(result + 304) |= 0x10000u;
  }
  return result;
}


// ===== 693b60 png_set_shift =====
_DWORD *__fastcall png_set_shift(_DWORD *result, const void *a2)
{
  if ( result )
  {
    result[76] |= 8u;
    return memcpy((char *)result + 577, a2, 5u);
  }
  return result;
}


// ===== 693b8c png_set_interlace_handling =====
int __fastcall png_set_interlace_handling(int a1)
{
  if ( !a1 || !*(_BYTE *)(a1 + 483) )
    return 1;
  *(_DWORD *)(a1 + 304) |= 2u;
  return 7;
}


// ===== 693bbc png_set_filler =====
int __fastcall png_set_filler(int result, unsigned __int8 a2, int a3)
{
  int v3; // r3
  int v4; // r3
  unsigned int v5; // r3

  if ( result )
  {
    v3 = *(_DWORD *)(result + 304);
    *(_WORD *)(result + 494) = a2;
    *(_DWORD *)(result + 304) = v3 | 0x8000;
    v4 = *(_DWORD *)(result + 300);
    if ( a3 == 1 )
      v5 = v4 | 0x80;
    else
      v5 = v4 & 0xFFFFFF7F;
    *(_DWORD *)(result + 300) = v5;
    if ( *(_BYTE *)(result + 486) == 2 )
    {
      *(_BYTE *)(result + 491) = 4;
    }
    else if ( !*(_BYTE *)(result + 486) && *(unsigned __int8 *)(result + 487) > 7u )
    {
      *(_BYTE *)(result + 491) = 2;
    }
  }
  return result;
}


// ===== 693c20 png_set_add_alpha =====
int __fastcall png_set_add_alpha(int result, unsigned __int8 a2, int a3)
{
  int v3; // r4

  v3 = result;
  if ( result )
  {
    result = png_set_filler(result, a2, a3);
    *(_DWORD *)(v3 + 304) |= 0x1000000u;
  }
  return result;
}


// ===== 693c40 png_set_swap_alpha =====
int __fastcall png_set_swap_alpha(int result)
{
  if ( result )
    *(_DWORD *)(result + 304) |= 0x20000u;
  return result;
}


// ===== 693c54 png_set_invert_alpha =====
int __fastcall png_set_invert_alpha(int result)
{
  if ( result )
    *(_DWORD *)(result + 304) |= 0x80000u;
  return result;
}


// ===== 693c68 png_set_invert_mono =====
int __fastcall png_set_invert_mono(int result)
{
  if ( result )
    *(_DWORD *)(result + 304) |= 0x20u;
  return result;
}


// ===== 693c7c png_do_invert =====
unsigned int __fastcall png_do_invert(unsigned int result, int a2)
{
  int v2; // r3
  int v3; // r3
  unsigned int v4; // r12
  int v5; // r2
  unsigned int v6; // r3
  unsigned int i; // r3

  v2 = *(unsigned __int8 *)(result + 8);
  if ( *(_BYTE *)(result + 8) )
  {
    v3 = *(unsigned __int16 *)(result + 8);
    if ( v3 == 2052 )
    {
      result = *(_DWORD *)(result + 4);
      if ( result )
      {
        for ( i = 0; i < result; i += 2 )
          *(_BYTE *)(a2 + i) = ~*(_BYTE *)(a2 + i);
      }
    }
    else if ( v3 == 4100 )
    {
      v4 = *(_DWORD *)(result + 4);
      if ( v4 )
      {
        v5 = a2;
        v6 = 0;
        do
        {
          *(_BYTE *)(a2 + v6) = ~*(_BYTE *)(a2 + v6);
          v6 += 4;
          result = ~*(unsigned __int8 *)(v5 + 1);
          *(_BYTE *)(v5 + 1) = result;
          v5 += 4;
        }
        while ( v4 > v6 );
      }
    }
  }
  else
  {
    result = *(_DWORD *)(result + 4);
    if ( result )
    {
      do
      {
        *(_BYTE *)(a2 + v2) = ~*(_BYTE *)(a2 + v2);
        ++v2;
      }
      while ( v2 != result );
    }
  }
  return result;
}


// ===== 693d38 png_do_swap =====
int __fastcall png_do_swap(int result, char *a2)
{
  int v2; // r12
  int v3; // r3
  char v4; // r2

  if ( *(_BYTE *)(result + 9) == 16 )
  {
    v2 = *(_DWORD *)result * *(unsigned __int8 *)(result + 10);
    if ( v2 )
    {
      v3 = 0;
      do
      {
        v4 = *a2;
        result = (unsigned __int8)a2[1];
        ++v3;
        *a2 = result;
        a2[1] = v4;
        a2 += 2;
      }
      while ( v3 != v2 );
    }
  }
  return result;
}


// ===== 693d80 png_do_packswap =====
_DWORD *__fastcall png_do_packswap(_DWORD *result, _BYTE *a2)
{
  unsigned int v2; // r3
  int v3; // r2
  _BYTE *v4; // r2

  v2 = *((unsigned __int8 *)result + 9);
  if ( v2 <= 7 )
  {
    v3 = result[1];
    switch ( v2 )
    {
      case 1u:
        v4 = &a2[v3];
        result = &onebppswaptable;
        if ( a2 >= v4 )
          return result;
        break;
      case 2u:
        v4 = &a2[v3];
        result = &twobppswaptable;
        if ( a2 >= v4 )
          return result;
        break;
      case 4u:
        v4 = &a2[v3];
        result = &fourbppswaptable;
        if ( a2 >= v4 )
          return result;
        break;
      default:
        return result;
    }
    do
    {
      *a2 = *((_BYTE *)result + (unsigned __int8)*a2);
      ++a2;
    }
    while ( a2 != v4 );
  }
  return result;
}


// ===== 693e18 png_do_strip_filler =====
int __fastcall png_do_strip_filler(int result, _BYTE *a2, int a3)
{
  int v3; // r3
  unsigned int v4; // r12
  int v5; // r4
  int v6; // r2
  _BYTE *v7; // r3
  int v8; // r2
  char v9; // r5
  int v10; // r2
  _BYTE *v11; // r3
  char v12; // r5
  _BYTE *v13; // r3
  int v14; // r2
  char v15; // r5
  _BYTE *v16; // r3
  char v17; // r5
  int v18; // r2
  _BYTE *v19; // r3
  char v20; // r5
  int v21; // r6
  _BYTE *v22; // r3
  _BYTE *v23; // r1
  _BYTE *v24; // r2
  char v25; // r5
  int i; // r3
  _BYTE *v27; // r5
  _BYTE *v28; // r3
  char v29; // r2

  v3 = *(unsigned __int8 *)(result + 8);
  v4 = *(_DWORD *)result;
  if ( v3 == 2 )
  {
    v5 = a3 & 0x400000;
  }
  else
  {
    if ( v3 != 6 )
    {
      v5 = a3 & 0x400000;
      goto LABEL_6;
    }
    v5 = a3 & 0x400000;
    if ( (a3 & 0x400000) == 0 )
      return result;
  }
  if ( *(_BYTE *)(result + 10) == 4 )
  {
    if ( *(_BYTE *)(result + 9) == 8 )
    {
      if ( (a3 & 0x80) != 0 )
      {
        if ( v4 > 1 )
        {
          v21 = 2 * v4;
          v27 = &a2[3 * v4 - 3];
          v28 = a2;
          do
          {
            a2[3] = v28[4];
            a2[4] = v28[5];
            v29 = v28[6];
            v28 += 4;
            a2[5] = v29;
            a2 += 3;
          }
          while ( a2 != v27 );
        }
        else
        {
          v21 = 2 * v4;
        }
      }
      else if ( v4 )
      {
        v21 = 2 * v4;
        v22 = a2;
        v23 = &a2[3 * v4];
        v24 = v22;
        do
        {
          *v22 = v24[1];
          v22[1] = v24[2];
          v25 = v24[3];
          v24 += 4;
          v22[2] = v25;
          v22 += 3;
        }
        while ( v22 != v23 );
      }
      else
      {
        v21 = 0;
      }
      *(_BYTE *)(result + 11) = 24;
      *(_DWORD *)(result + 4) = v21 + v4;
    }
    else
    {
      v6 = a3 & 0x80;
      if ( v6 )
      {
        if ( v4 > 1 )
        {
          v7 = a2;
          v8 = 1;
          do
          {
            ++v8;
            a2[6] = v7[8];
            a2[7] = v7[9];
            a2[8] = v7[10];
            a2[9] = v7[11];
            a2[10] = v7[12];
            v9 = v7[13];
            v7 += 8;
            a2[11] = v9;
            a2 += 6;
          }
          while ( v8 != v4 );
        }
      }
      else if ( v4 )
      {
        v16 = a2;
        do
        {
          ++v6;
          *a2 = v16[2];
          a2[1] = v16[3];
          a2[2] = v16[4];
          a2[3] = v16[5];
          a2[4] = v16[6];
          v17 = v16[7];
          v16 += 8;
          a2[5] = v17;
          a2 += 6;
        }
        while ( v6 != v4 );
      }
      *(_BYTE *)(result + 11) = 48;
      *(_DWORD *)(result + 4) = 6 * v4;
    }
    *(_BYTE *)(result + 10) = 3;
    goto LABEL_8;
  }
LABEL_6:
  if ( !*(_BYTE *)(result + 8) )
  {
LABEL_7:
    if ( *(_BYTE *)(result + 10) == 2 )
    {
      if ( *(_BYTE *)(result + 9) == 8 )
      {
        v18 = a3 & 0x80;
        if ( v18 )
        {
          if ( v4 )
          {
            for ( i = 0; i != v4; ++i )
              a2[i] = a2[2 * i];
          }
        }
        else if ( v4 )
        {
          v19 = a2;
          do
          {
            v20 = v19[1];
            v19 += 2;
            a2[v18++] = v20;
          }
          while ( v18 != v4 );
        }
        *(_BYTE *)(result + 11) = 8;
        *(_DWORD *)(result + 4) = v4;
      }
      else
      {
        v10 = a3 & 0x80;
        if ( v10 )
        {
          if ( v4 > 1 )
          {
            v13 = a2;
            v14 = 1;
            do
            {
              ++v14;
              a2[2] = v13[4];
              v15 = v13[5];
              v13 += 4;
              a2[3] = v15;
              a2 += 2;
            }
            while ( v14 != v4 );
          }
        }
        else if ( v4 )
        {
          v11 = a2;
          do
          {
            ++v10;
            *a2 = v11[2];
            v12 = v11[3];
            v11 += 4;
            a2[1] = v12;
            a2 += 2;
          }
          while ( v10 != v4 );
        }
        *(_BYTE *)(result + 11) = 16;
        *(_DWORD *)(result + 4) = 2 * v4;
      }
      *(_BYTE *)(result + 10) = 1;
    }
    goto LABEL_8;
  }
  if ( v3 == 4 )
  {
    if ( !v5 )
      return result;
    goto LABEL_7;
  }
LABEL_8:
  if ( v5 )
    *(_BYTE *)(result + 8) &= ~4u;
  return result;
}


// ===== 694114 png_do_bgr =====
int __fastcall png_do_bgr(int result, unsigned __int8 *a2)
{
  int v2; // r3
  int v3; // r12
  int v4; // r2
  int v5; // r3
  int v6; // r3
  unsigned __int8 v7; // r4
  unsigned __int8 v8; // r12
  unsigned __int8 *v9; // r2
  unsigned __int8 v10; // r3
  int v11; // r3
  unsigned __int8 v12; // r4
  unsigned __int8 v13; // r12

  v2 = *(unsigned __int8 *)(result + 8);
  if ( (v2 & 2) != 0 )
  {
    v3 = *(unsigned __int8 *)(result + 9);
    v4 = *(_DWORD *)result;
    if ( v3 == 8 )
    {
      if ( v2 == 2 )
      {
        if ( v4 )
        {
          v9 = &a2[3 * v4];
          do
          {
            result = *a2;
            v10 = a2[2];
            a2[2] = result;
            *a2 = v10;
            a2 += 3;
          }
          while ( a2 != v9 );
        }
      }
      else if ( v2 == 6 && v4 )
      {
        v5 = 0;
        do
        {
          result = *a2;
          ++v5;
          *a2 = a2[2];
          a2[2] = result;
          a2 += 4;
        }
        while ( v5 != v4 );
      }
    }
    else if ( v3 == 16 )
    {
      if ( v2 == 2 )
      {
        if ( v4 )
        {
          v11 = 0;
          do
          {
            v12 = *a2;
            result = a2[1];
            v13 = a2[5];
            ++v11;
            *a2 = a2[4];
            a2[4] = v12;
            a2[1] = v13;
            a2[5] = result;
            a2 += 6;
          }
          while ( v11 != v4 );
        }
      }
      else if ( v2 == 6 && v4 )
      {
        v6 = 0;
        do
        {
          v7 = *a2;
          result = a2[1];
          v8 = a2[5];
          ++v6;
          *a2 = a2[4];
          a2[4] = v7;
          a2[1] = v8;
          a2[5] = result;
          a2 += 8;
        }
        while ( v6 != v4 );
      }
    }
  }
  return result;
}


// ===== 694244 png_set_user_transform_info =====
int __fastcall png_set_user_transform_info(int result, int a2, char a3, char a4)
{
  if ( result )
  {
    *(_BYTE *)(result + 293) = a4;
    *(_DWORD *)(result + 288) = a2;
    *(_BYTE *)(result + 292) = a3;
  }
  return result;
}


// ===== 694258 png_get_user_transform_ptr =====
int __fastcall png_get_user_transform_ptr(int result)
{
  if ( result )
    return *(_DWORD *)(result + 288);
  return result;
}


// ===== 694264 png_flush =====
int __fastcall png_flush(int result)
{
  int (*v1)(void); // r3

  v1 = *(int (**)(void))(result + 524);
  if ( v1 )
    return v1();
  return result;
}


// ===== 69427c png_set_write_fn =====
_DWORD *__fastcall png_set_write_fn(_DWORD *result, int a2, int (__fastcall *a3)(int, void *ptr), int (*a4)())
{
  int v4; // r4

  v4 = (int)result;
  if ( result )
  {
    result[69] = a2;
    if ( !a3 )
      a3 = png_default_write_data;
    result[67] = a3;
    if ( !a4 )
      a4 = png_default_flush;
    result[131] = a4;
    if ( result[68] )
    {
      result[68] = 0;
      png_warning((int)result, "Attempted to set both read_data_fn and write_data_fn in");
      return (_DWORD *)png_warning(v4, "the same structure.  Resetting read_data_fn to NULL.");
    }
  }
  return result;
}


// ===== 694314 png_default_flush =====
FILE *__fastcall png_default_flush(FILE *result)
{
  if ( result )
  {
    result = (FILE *)result[3]._lbfsize;
    if ( result )
      return (FILE *)fflush(result);
  }
  return result;
}


// ===== 69432c png_default_write_data =====
size_t __fastcall png_default_write_data(size_t result, void *ptr, size_t a3)
{
  struct __jmp_buf_tag *v3; // r4

  v3 = (struct __jmp_buf_tag *)result;
  if ( result )
  {
    result = fwrite(ptr, 1u, a3, *(FILE **)(result + 276));
    if ( a3 != result )
      return png_error(v3, "Write Error");
  }
  return result;
}


// ===== 694370 png_write_data =====
int __fastcall png_write_data(struct __jmp_buf_tag *a1)
{
  int (*v1)(void); // r3

  v1 = (int (*)(void))a1[1].__saved_mask.__val[21];
  if ( v1 )
    return v1();
  else
    return png_error(a1, "Call to NULL write function");
}


// ===== 69439c png_convert_from_struct_tm =====
int __fastcall png_convert_from_struct_tm(int result, _DWORD *a2)
{
  *(_WORD *)result = a2[5] + 1900;
  *(_BYTE *)(result + 2) = a2[4] + 1;
  *(_BYTE *)(result + 3) = a2[3];
  *(_BYTE *)(result + 4) = a2[2];
  *(_BYTE *)(result + 5) = a2[1];
  *(_BYTE *)(result + 6) = *a2;
  return result;
}


// ===== 6943dc png_set_flush =====
int __fastcall png_set_flush(int result, int a2)
{
  if ( result )
    *(_DWORD *)(result + 528) = a2 & ~(a2 >> 31);
  return result;
}


// ===== 6943ec png_set_compression_level =====
int __fastcall png_set_compression_level(int result, int a2)
{
  int v2; // r3

  if ( result )
  {
    v2 = *(_DWORD *)(result + 300);
    *(_DWORD *)(result + 372) = a2;
    *(_DWORD *)(result + 300) = v2 | 2;
  }
  return result;
}


// ===== 694404 png_set_compression_mem_level =====
int __fastcall png_set_compression_mem_level(int result, int a2)
{
  int v2; // r3

  if ( result )
  {
    v2 = *(_DWORD *)(result + 300);
    *(_DWORD *)(result + 384) = a2;
    *(_DWORD *)(result + 300) = v2 | 4;
  }
  return result;
}


// ===== 69441c png_set_compression_strategy =====
int __fastcall png_set_compression_strategy(int result, int a2)
{
  int v2; // r3

  if ( result )
  {
    v2 = *(_DWORD *)(result + 300);
    *(_DWORD *)(result + 388) = a2;
    *(_DWORD *)(result + 300) = v2 | 1;
  }
  return result;
}


// ===== 694434 png_set_write_status_fn =====
int __fastcall png_set_write_status_fn(int result, int a2)
{
  if ( result )
    *(_DWORD *)(result + 604) = a2;
  return result;
}


// ===== 694440 png_set_write_user_transform_fn =====
int __fastcall png_set_write_user_transform_fn(int result, int a2)
{
  int v2; // r3

  if ( result )
  {
    v2 = *(_DWORD *)(result + 304);
    *(_DWORD *)(result + 284) = a2;
    *(_DWORD *)(result + 304) = v2 | 0x100000;
  }
  return result;
}


// ===== 694458 png_set_compression_method =====
int __fastcall png_set_compression_method(int result, int a2)
{
  int v2; // r4
  int v4; // r3

  v2 = result;
  if ( result )
  {
    if ( a2 != 8 )
      result = png_warning(result, "Only compression method 8 is supported by PNG");
    v4 = *(_DWORD *)(v2 + 300);
    *(_DWORD *)(v2 + 376) = a2;
    *(_DWORD *)(v2 + 300) = v4 | 0x10;
  }
  return result;
}


// ===== 694494 png_set_compression_window_bits =====
int __fastcall png_set_compression_window_bits(int result, int a2)
{
  int v2; // r5
  int v3; // r4
  int v4; // r3

  v2 = result;
  v3 = a2;
  if ( result )
  {
    if ( a2 > 15 )
    {
      result = png_warning(result, "Only compression windows <= 32k supported by PNG");
    }
    else if ( a2 <= 7 )
    {
      result = png_warning(result, "Only compression windows >= 256 supported by PNG");
    }
    else if ( a2 == 8 )
    {
      v3 = 9;
      result = png_warning(result, "Compression window is being reset to 512");
    }
    v4 = *(_DWORD *)(v2 + 300);
    *(_DWORD *)(v2 + 380) = v3;
    *(_DWORD *)(v2 + 300) = v4 | 8;
  }
  return result;
}


// ===== 694510 png_set_filter_heuristics =====
int __fastcall png_set_filter_heuristics(double a1, signed int a2, int a3, int a4)
{
  struct __jmp_buf_tag *v4; // r4
  char v7; // r3
  unsigned int v8; // r5
  int v9; // r5
  int v10; // r6
  double v11; // r8
  unsigned int v12; // r3
  signed int v13; // r5
  signed int v14; // r5
  int v15; // r5
  int v16; // r6
  signed int v17; // r7
  unsigned int v18; // r3
  _BYTE *v19; // r0
  char *v20; // r0
  int v21; // r3

  v4 = (struct __jmp_buf_tag *)LODWORD(a1);
  if ( LODWORD(a1) )
  {
    if ( SHIDWORD(a1) > 2 )
    {
      LODWORD(a1) = png_warning(SLODWORD(a1), "Unknown filter heuristic method");
    }
    else
    {
      if ( HIDWORD(a1) )
      {
        v7 = BYTE4(a1);
      }
      else
      {
        v7 = 1;
        HIDWORD(a1) = 1;
      }
      if ( (a3 == 0) | ((unsigned int)a2 >> 31) || HIDWORD(a1) == 1 )
      {
        *(_BYTE *)(LODWORD(a1) + 697) = 0;
        *(_BYTE *)(LODWORD(a1) + 696) = v7;
      }
      else
      {
        *(_BYTE *)(LODWORD(a1) + 696) = v7;
        *(_BYTE *)(LODWORD(a1) + 697) = a2;
        if ( a2 )
        {
          v13 = *(_DWORD *)(LODWORD(a1) + 700);
          if ( !v13 )
          {
            v19 = png_malloc((struct __jmp_buf_tag *)LODWORD(a1), a2);
            for ( v4[4].__saved_mask.__val[12] = (unsigned int)v19; ; v19 = (_BYTE *)v4[4].__saved_mask.__val[12] )
            {
              v19[v13++] = -1;
              if ( a2 <= v13 )
                break;
            }
          }
          v14 = v4[4].__saved_mask.__val[13];
          if ( !v14 )
          {
            v4[4].__saved_mask.__val[13] = (unsigned int)png_malloc(v4, 2 * a2);
            v20 = (char *)png_malloc(v4, 2 * a2);
            for ( v4[4].__saved_mask.__val[14] = (unsigned int)v20; ; v20 = (char *)v4[4].__saved_mask.__val[14] )
            {
              v21 = 2 * v14++;
              *(_WORD *)(v4[4].__saved_mask.__val[13] + v21) = 256;
              *(_WORD *)&v20[v21] = 256;
              if ( a2 <= v14 )
                break;
            }
          }
          v15 = 0;
          v16 = 0;
          v17 = 0;
          do
          {
            a1 = *(double *)(a3 + v16);
            if ( a1 >= 0.0 )
            {
              *(_WORD *)(v4[4].__saved_mask.__val[14] + v15) = (unsigned int)(a1 * 256.0 + 0.5);
              LODWORD(a1) = (unsigned int)(256.0 / *(double *)(a3 + v16) + 0.5);
              *(_WORD *)(v4[4].__saved_mask.__val[13] + v15) = LOWORD(a1);
            }
            else
            {
              v18 = v4[4].__saved_mask.__val[14];
              *(_WORD *)(v4[4].__saved_mask.__val[13] + v15) = 256;
              *(_WORD *)(v18 + v15) = 256;
            }
            ++v17;
            v16 += 8;
            v15 += 2;
          }
          while ( a2 > v17 );
        }
      }
      v8 = v4[4].__saved_mask.__val[15];
      if ( !v8 )
      {
        v4[4].__saved_mask.__val[15] = (unsigned int)png_malloc(v4, 0xAu);
        LODWORD(a1) = png_malloc(v4, 0xAu);
        for ( v4[4].__saved_mask.__val[16] = LODWORD(a1); ; LODWORD(a1) = v4[4].__saved_mask.__val[16] )
        {
          *(_WORD *)(v4[4].__saved_mask.__val[15] + v8) = 8;
          *(_WORD *)(LODWORD(a1) + v8) = 8;
          v8 += 2;
          if ( v8 == 10 )
            break;
        }
      }
      v9 = 0;
      v10 = 0;
      do
      {
        while ( 1 )
        {
          if ( a4 )
          {
            v11 = *(double *)(a4 + v9);
            LODWORD(a1) = LODWORD(v11);
            if ( v11 >= 0.0 )
              break;
          }
          v12 = v4[4].__saved_mask.__val[16];
          v9 += 8;
          *(_WORD *)(v4[4].__saved_mask.__val[15] + v10) = 8;
          *(_WORD *)(v12 + v10) = 8;
          v10 += 2;
          if ( v9 == 40 )
            return LODWORD(a1);
        }
        LODWORD(a1) = 0;
        if ( v11 >= 1.0 )
        {
          *(_WORD *)(v4[4].__saved_mask.__val[16] + v10) = (unsigned int)(8.0 / v11 + 0.5);
          LODWORD(a1) = (unsigned int)(*(double *)(a4 + v9) * 8.0 + 0.5);
          *(_WORD *)(v4[4].__saved_mask.__val[15] + v10) = LOWORD(a1);
        }
        v9 += 8;
        v10 += 2;
      }
      while ( v9 != 40 );
    }
  }
  return LODWORD(a1);
}


// ===== 69481c png_set_filter =====
struct __jmp_buf_tag *__fastcall png_set_filter(struct __jmp_buf_tag *result, int a2, char a3)
{
  int v3; // r4
  int v4; // r3
  int v5; // r3

  v3 = (int)result;
  if ( result )
  {
    v4 = (result[4].__saved_mask.__val[25] >> 2) & 1;
    if ( a2 != 64 )
      v4 = 0;
    if ( v4 || !a2 )
    {
      switch ( a3 )
      {
        case 0:
          goto LABEL_10;
        case 1:
          BYTE1(result[3].__jmpbuf[4]) = 16;
          break;
        case 2:
          BYTE1(result[3].__jmpbuf[4]) = 32;
          break;
        case 3:
          BYTE1(result[3].__jmpbuf[4]) = 64;
          break;
        case 4:
          BYTE1(result[3].__jmpbuf[4]) = 0x80;
          break;
        case 5:
        case 6:
        case 7:
          result = (struct __jmp_buf_tag *)png_warning((int)result, "Unknown row filter for method 0");
LABEL_10:
          *(_BYTE *)(v3 + 485) = 8;
          break;
        default:
          BYTE1(result[3].__jmpbuf[4]) = a3;
          break;
      }
      if ( *(_DWORD *)(v3 + 428) )
      {
        v5 = *(unsigned __int8 *)(v3 + 485);
        if ( (v5 & 0x10) != 0 && !*(_DWORD *)(v3 + 432) )
        {
          result = (struct __jmp_buf_tag *)png_malloc((struct __jmp_buf_tag *)v3, *(_DWORD *)(v3 + 408) + 1);
          *(_DWORD *)(v3 + 432) = result;
          LOBYTE(result->__jmpbuf[0]) = 1;
          v5 = *(unsigned __int8 *)(v3 + 485);
        }
        if ( (v5 & 0x20) != 0 && !*(_DWORD *)(v3 + 436) )
        {
          if ( *(_DWORD *)(v3 + 424) )
          {
            result = (struct __jmp_buf_tag *)png_malloc((struct __jmp_buf_tag *)v3, *(_DWORD *)(v3 + 408) + 1);
            *(_DWORD *)(v3 + 436) = result;
            LOBYTE(result->__jmpbuf[0]) = 2;
            v5 = *(unsigned __int8 *)(v3 + 485);
          }
          else
          {
            result = (struct __jmp_buf_tag *)png_warning(v3, "Can't add Up filter after starting");
            v5 = *(_BYTE *)(v3 + 485) & 0xDF;
            *(_BYTE *)(v3 + 485) = v5;
          }
        }
        if ( (v5 & 0x40) != 0 && !*(_DWORD *)(v3 + 440) )
        {
          if ( *(_DWORD *)(v3 + 424) )
          {
            result = (struct __jmp_buf_tag *)png_malloc((struct __jmp_buf_tag *)v3, *(_DWORD *)(v3 + 408) + 1);
            *(_DWORD *)(v3 + 440) = result;
            LOBYTE(result->__jmpbuf[0]) = 3;
            v5 = *(unsigned __int8 *)(v3 + 485);
          }
          else
          {
            result = (struct __jmp_buf_tag *)png_warning(v3, "Can't add Average filter after starting");
            v5 = *(_BYTE *)(v3 + 485) & 0xBF;
            *(_BYTE *)(v3 + 485) = v5;
          }
        }
        if ( (v5 & 0x80) != 0 && !*(_DWORD *)(v3 + 444) )
        {
          if ( *(_DWORD *)(v3 + 424) )
          {
            result = (struct __jmp_buf_tag *)png_malloc((struct __jmp_buf_tag *)v3, *(_DWORD *)(v3 + 408) + 1);
            *(_DWORD *)(v3 + 444) = result;
            LOBYTE(result->__jmpbuf[0]) = 4;
            v5 = *(unsigned __int8 *)(v3 + 485);
          }
          else
          {
            result = (struct __jmp_buf_tag *)png_warning(v3, "Can't add Paeth filter after starting");
            v5 = *(_BYTE *)(v3 + 485) & 0x7F;
            *(_BYTE *)(v3 + 485) = v5;
          }
        }
        if ( !v5 )
          *(_BYTE *)(v3 + 485) = 8;
      }
    }
    else
    {
      return (struct __jmp_buf_tag *)png_error(result, "Unknown custom filter method");
    }
  }
  return result;
}


// ===== 694a7c png_write_destroy =====
void *__fastcall png_write_destroy(int a1)
{
  int v2; // r10
  int v3; // r8
  int v4; // r7
  int v5; // r9
  _BYTE v7[256]; // [sp+0h] [bp-100h] BYREF

  deflateEnd(a1 + 308);
  png_free(a1, *(void **)(a1 + 364));
  png_free(a1, *(void **)(a1 + 428));
  png_free(a1, *(void **)(a1 + 424));
  png_free(a1, *(void **)(a1 + 432));
  png_free(a1, *(void **)(a1 + 436));
  png_free(a1, *(void **)(a1 + 440));
  png_free(a1, *(void **)(a1 + 444));
  png_free(a1, *(void **)(a1 + 720));
  png_free(a1, *(void **)(a1 + 700));
  png_free(a1, *(void **)(a1 + 704));
  png_free(a1, *(void **)(a1 + 708));
  png_free(a1, *(void **)(a1 + 712));
  png_free(a1, *(void **)(a1 + 716));
  memcpy(v7, (const void *)a1, sizeof(v7));
  v2 = *(_DWORD *)(a1 + 256);
  v3 = *(_DWORD *)(a1 + 260);
  v4 = *(_DWORD *)(a1 + 264);
  v5 = *(_DWORD *)(a1 + 780);
  LC_API_MEMSET_0((void *)a1, 0, 0x34Cu);
  *(_DWORD *)(a1 + 256) = v2;
  *(_DWORD *)(a1 + 260) = v3;
  *(_DWORD *)(a1 + 264) = v4;
  *(_DWORD *)(a1 + 780) = v5;
  return memcpy((void *)a1, v7, 0x100u);
}


// ===== 694b8c png_destroy_write_struct =====
void __fastcall png_destroy_write_struct(int *a1, int *a2)
{
  void (__fastcall *v2)(_BYTE *, void *); // r8
  int v3; // r10
  int v5; // r4
  void *v7; // r6

  if ( a1 )
  {
    v5 = *a1;
  }
  else
  {
    v5 = 0;
    v3 = 0;
    v2 = nullptr;
  }
  if ( a1 )
  {
    v2 = *(void (__fastcall **)(_BYTE *, void *))(v5 + 780);
    v3 = *(_DWORD *)(v5 + 772);
  }
  if ( a2 )
  {
    v7 = (void *)*a2;
    if ( *a2 )
    {
      if ( v5 )
      {
        png_free_data(v5, *a2, 0x7FFF, -1);
        if ( *(_DWORD *)(v5 + 736) )
        {
          png_free(v5, *(void **)(v5 + 740));
          *(_DWORD *)(v5 + 736) = 0;
          *(_DWORD *)(v5 + 740) = 0;
        }
      }
      png_destroy_struct_2(v7, v2, v3);
      *a2 = 0;
    }
  }
  if ( v5 )
  {
    png_write_destroy(v5);
    png_destroy_struct_2((void *)v5, v2, v3);
    *a1 = 0;
  }
}


// ===== 694c4c png_write_flush =====
int __fastcall png_write_flush(int result)
{
  struct __jmp_buf_tag *v1; // r4
  const char *v2; // r1
  struct __jmp_buf_tag *v3; // r0
  int v4; // r3
  unsigned int v5; // r2
  int v6; // r3
  int v7; // r3

  v1 = (struct __jmp_buf_tag *)result;
  if ( result && *(_DWORD *)(result + 420) < *(_DWORD *)(result + 400) )
  {
    while ( 1 )
    {
      if ( deflate(&v1[1].__saved_mask.__val[31], 2) )
      {
        v2 = (const char *)v1[2].__jmpbuf[5];
        v3 = v1;
        if ( !v2 )
        {
          v3 = v1;
          v2 = "zlib error";
        }
        png_error(v3, v2);
      }
      v4 = v1[2].__jmpbuf[3];
      if ( v4 )
        break;
      png_write_IDAT(v1, v1[2].__saved_mask.__val[6], v1[2].__saved_mask.__val[7]);
      v7 = v1[2].__saved_mask.__val[7];
      v1[2].__jmpbuf[2] = v1[2].__saved_mask.__val[6];
      v1[2].__jmpbuf[3] = v7;
    }
    v5 = v1[2].__saved_mask.__val[7];
    if ( v5 != v4 )
    {
      png_write_IDAT(v1, v1[2].__saved_mask.__val[6], v5 - v4);
      v6 = v1[2].__saved_mask.__val[7];
      v1[2].__jmpbuf[2] = v1[2].__saved_mask.__val[6];
      v1[2].__jmpbuf[3] = v6;
    }
    v1[3].__saved_mask.__val[9] = 0;
    return png_flush((int)v1);
  }
  return result;
}


// ===== 694d18 png_write_row =====
int __fastcall png_write_row(int result, void *a2)
{
  int v2; // r4
  char v4; // r0
  char v5; // r1
  int v6; // r12
  unsigned int v7; // r2
  size_t v8; // r3
  int v9; // r1
  int v10; // r3
  int v11; // r5
  int (__fastcall *v12)(int, _DWORD, _DWORD); // r3

  v2 = result;
  if ( result )
  {
    if ( !*(_DWORD *)(result + 420) && !*(_BYTE *)(result + 484) )
    {
      if ( (*(_DWORD *)(result + 296) & 0x400) == 0 )
        png_error((struct __jmp_buf_tag *)result, "png_write_info was never called before png_write_row.");
      png_write_start_row(v2);
    }
    if ( *(_BYTE *)(v2 + 483) && (*(_DWORD *)(v2 + 304) & 2) != 0 )
    {
      switch ( *(_BYTE *)(v2 + 484) )
      {
        case 0:
          if ( (*(_DWORD *)(v2 + 420) & 7) != 0 )
            return png_write_finish_row(v2);
          break;
        case 1:
          if ( (*(_DWORD *)(v2 + 420) & 7) != 0 || *(_DWORD *)(v2 + 392) <= 4u )
            return png_write_finish_row(v2);
          break;
        case 2:
          if ( (*(_DWORD *)(v2 + 420) & 7) != 4 )
            return png_write_finish_row(v2);
          break;
        case 3:
          if ( (*(_DWORD *)(v2 + 420) & 3) != 0 || *(_DWORD *)(v2 + 392) <= 2u )
            return png_write_finish_row(v2);
          break;
        case 4:
          if ( (*(_DWORD *)(v2 + 420) & 3) != 2 )
            return png_write_finish_row(v2);
          break;
        case 5:
          if ( (*(_DWORD *)(v2 + 420) & 1) == 0 && *(_DWORD *)(v2 + 392) > 1u )
            break;
          return png_write_finish_row(v2);
        case 6:
          if ( (*(_DWORD *)(v2 + 420) & 1) == 0 )
            return png_write_finish_row(v2);
          break;
        default:
          break;
      }
    }
    v4 = *(_BYTE *)(v2 + 491);
    v5 = *(_BYTE *)(v2 + 488);
    v6 = *(_DWORD *)(v2 + 404);
    *(_BYTE *)(v2 + 456) = *(_BYTE *)(v2 + 486);
    v7 = (unsigned __int8)(v4 * v5);
    if ( v7 > 7 )
      v8 = v6 * (v7 >> 3);
    else
      v8 = v6 * v7;
    *(_BYTE *)(v2 + 457) = v5;
    v9 = *(_DWORD *)(v2 + 428);
    if ( v7 <= 7 )
      v8 = (v8 + 7) >> 3;
    *(_BYTE *)(v2 + 458) = v4;
    *(_BYTE *)(v2 + 459) = v7;
    *(_DWORD *)(v2 + 452) = v8;
    *(_DWORD *)(v2 + 448) = v6;
    png_memcpy_check(v2, (void *)(v9 + 1), a2, v8);
    if ( *(_BYTE *)(v2 + 483) )
    {
      if ( *(unsigned __int8 *)(v2 + 484) > 5u )
      {
        v11 = v2 + 448;
        if ( !*(_DWORD *)(v2 + 304) )
        {
LABEL_22:
          if ( (*(_DWORD *)(v2 + 752) & 4) == 0 )
            goto LABEL_23;
          goto LABEL_29;
        }
LABEL_28:
        png_do_write_transformations(v2);
        if ( (*(_DWORD *)(v2 + 752) & 4) == 0 )
        {
LABEL_23:
          result = png_write_find_filter(v2, v11);
          v12 = *(int (__fastcall **)(int, _DWORD, _DWORD))(v2 + 604);
          if ( v12 )
            return v12(v2, *(_DWORD *)(v2 + 420), *(unsigned __int8 *)(v2 + 484));
          return result;
        }
LABEL_29:
        if ( *(_BYTE *)(v2 + 760) == 64 )
          png_do_write_intrapixel(v11, *(_DWORD *)(v2 + 428) + 1);
        goto LABEL_23;
      }
      v10 = *(_DWORD *)(v2 + 304);
      if ( (v10 & 2) != 0 )
      {
        v11 = v2 + 448;
        png_do_write_interlace(v2 + 448, (void *)(*(_DWORD *)(v2 + 428) + 1));
        if ( !*(_DWORD *)(v2 + 448) )
          return png_write_finish_row(v2);
        v10 = *(_DWORD *)(v2 + 304);
LABEL_21:
        if ( !v10 )
          goto LABEL_22;
        goto LABEL_28;
      }
    }
    else
    {
      v10 = *(_DWORD *)(v2 + 304);
    }
    v11 = v2 + 448;
    goto LABEL_21;
  }
  return result;
}


// ===== 694f80 png_write_rows =====
int __fastcall png_write_rows(int result, int a2, int a3)
{
  int v3; // r4
  int i; // r6
  void *v7; // r1

  v3 = result;
  if ( result && a3 )
  {
    for ( i = 0; i != a3; ++i )
    {
      v7 = *(void **)(a2 + 4 * i);
      result = png_write_row(v3, v7);
    }
  }
  return result;
}


// ===== 694fbc png_write_image =====
int __fastcall png_write_image(int result, int a2)
{
  int v2; // r5
  int v4; // r8
  unsigned int v5; // r3
  int v6; // r7
  unsigned int i; // r4

  v2 = result;
  if ( result )
  {
    result = png_set_interlace_handling(result);
    v4 = result;
    if ( result > 0 )
    {
      v5 = *(_DWORD *)(v2 + 396);
      v6 = 0;
      do
      {
        if ( v5 )
        {
          for ( i = 0; i < v5; ++i )
          {
            result = png_write_row(v2, *(void **)(a2 + 4 * i));
            v5 = *(_DWORD *)(v2 + 396);
          }
        }
        ++v6;
      }
      while ( v6 != v4 );
    }
  }
  return result;
}


// ===== 695018 png_write_init_3 =====
struct __jmp_buf_tag **__fastcall png_write_init_3(struct __jmp_buf_tag **result, int a2, unsigned int a3)
{
  struct __jmp_buf_tag *v3; // r4
  struct __jmp_buf_tag **v4; // r6
  int v6; // r2
  int v7; // r3
  int v8; // r0
  _BYTE v9[256]; // [sp+8h] [bp-104h] BYREF

  v3 = *result;
  v4 = result;
  if ( *result )
  {
    v6 = 0;
    while ( 1 )
    {
      v7 = *(unsigned __int8 *)(a2 + v6);
      v8 = (unsigned __int8)png_libpng_ver[v6++];
      if ( v7 != v8 )
        break;
      if ( !v7 )
        goto LABEL_5;
    }
    v3[1].__saved_mask.__val[19] = 0;
    png_warning((int)v3, "Application uses deprecated png_write_init() and should be recompiled.");
LABEL_5:
    memcpy(v9, v3, sizeof(v9));
    if ( a3 < 0x34C )
    {
      png_destroy_struct(v3);
      v3 = (struct __jmp_buf_tag *)png_create_struct(1);
      *v4 = v3;
    }
    LC_API_MEMSET_0(v3, 0, 0x34Cu);
    v3[5].__saved_mask.__val[0] = 1000000;
    v3[5].__mask_was_saved = 1000000;
    memcpy(v3, v9, 0x100u);
    png_set_write_fn(v3, 0, nullptr, nullptr);
    v3[2].__saved_mask.__val[7] = 0x2000;
    v3[2].__saved_mask.__val[6] = (unsigned int)png_malloc(v3, 0x2000u);
    return (struct __jmp_buf_tag **)png_set_filter_heuristics(COERCE_DOUBLE((unsigned __int64)v3), 1, 0, 0);
  }
  return result;
}


// ===== 695144 png_write_init_2 =====
struct __jmp_buf_tag *__fastcall png_write_init_2(
        struct __jmp_buf_tag *result,
        const char *a2,
        unsigned int a3,
        unsigned int a4)
{
  _BOOL4 v6; // r10
  _BOOL4 v7; // r8
  struct __jmp_buf_tag *v8; // [sp+4h] [bp-5Ch] BYREF
  char s[80]; // [sp+Ch] [bp-54h] BYREF

  v8 = result;
  if ( result )
  {
    v6 = a4 < 0x120;
    v7 = a3 < 0x34C;
    if ( v6 || v7 )
    {
      result[1].__saved_mask.__val[19] = 0;
      if ( a2 )
      {
        snprintf(s, 0x50u, "Application was compiled with png.h from libpng-%.20s", a2);
        png_warning((int)v8, s);
      }
      snprintf(s, 0x50u, "Application  is  running with png.c from libpng-%.20s", "1.2.32");
      png_warning((int)v8, s);
      if ( v7 )
      {
        v8[1].__saved_mask.__val[18] = 0;
        v8[1].__saved_mask.__val[29] = 0;
        png_error(v8, "The png struct allocated by the application for writing is too small.");
      }
      if ( v6 )
      {
        v8[1].__saved_mask.__val[18] = 0;
        v8[1].__saved_mask.__val[29] = 0;
        png_error(v8, "The info struct allocated by the application for writing is too small.");
      }
    }
    return (struct __jmp_buf_tag *)png_write_init_3(&v8, (int)a2, a3);
  }
  return result;
}


// ===== 6952a0 png_write_init =====
struct __jmp_buf_tag *__fastcall png_write_init(struct __jmp_buf_tag *a1)
{
  return png_write_init_2(a1, "1.0.6 or earlier", 0, 0);
}


// ===== 6952b8 png_create_write_struct_2 =====
struct __jmp_buf_tag *__fastcall png_create_write_struct_2(
        char *a1,
        int a2,
        int a3,
        int a4,
        int a5,
        int (__fastcall *a6)(char *, size_t),
        int a7)
{
  struct __jmp_buf_tag *result; // r0
  int v8; // r4
  int v9; // r3
  struct __jmp_buf_tag *__attribute__((__org_typedef(jmp_buf))) env; // [sp+28h] [bp-58h]
  char s[80]; // [sp+2Ch] [bp-54h] BYREF

  result = (struct __jmp_buf_tag *)png_create_struct_2(1, a6, a5);
  env = result;
  if ( !result )
    return result;
  result[5].__mask_was_saved = 1000000;
  result[5].__saved_mask.__val[0] = 1000000;
  v8 = setjmp(result);
  if ( v8 )
  {
    png_free((int)env, (void *)env[2].__saved_mask.__val[6]);
    env[2].__saved_mask.__val[6] = 0;
    png_destroy_struct(env);
    return nullptr;
  }
  png_set_mem_fn(env, a5, (int)a6, a7);
  png_set_error_fn(env, a2, a3, a4);
  if ( a1 )
  {
    while ( 1 )
    {
      v9 = (unsigned __int8)a1[v8];
      if ( v9 != (unsigned __int8)png_libpng_ver[v8] )
      {
        v9 = (unsigned __int8)png_libpng_ver[v8];
        env[1].__saved_mask.__val[29] |= 0x20000u;
      }
      if ( !v9 )
        break;
      ++v8;
    }
  }
  if ( (env[1].__saved_mask.__val[29] & 0x20000) != 0 )
  {
    if ( !a1 )
    {
LABEL_13:
      snprintf(s, 0x50u, "Application  is  running with png.c from libpng-%.20s", "1.2.32");
      png_warning((int)env, s);
      env[1].__saved_mask.__val[29] = 0;
      png_error(env, "Incompatible libpng version in application and library");
      goto LABEL_14;
    }
    if ( png_libpng_ver[0] != *a1 )
      goto LABEL_12;
    if ( png_libpng_ver[0] == 49 )
    {
      if ( a1[2] == png_libpng_ver[2] )
        goto LABEL_14;
      goto LABEL_12;
    }
    if ( png_libpng_ver[0] == 48 && a1[2] <= 56 )
    {
LABEL_12:
      snprintf(s, 0x50u, "Application was compiled with png.h from libpng-%.20s", a1);
      png_warning((int)env, s);
      goto LABEL_13;
    }
  }
LABEL_14:
  env[2].__saved_mask.__val[7] = 0x2000;
  env[2].__saved_mask.__val[6] = (unsigned int)png_malloc(env, env[2].__saved_mask.__val[7]);
  png_set_write_fn(env, 0, nullptr, nullptr);
  png_set_filter_heuristics(COERCE_DOUBLE((unsigned __int64)env), 1, 0, 0);
  if ( setjmp(env) )
    abort();
  return env;
}


// ===== 695580 png_create_write_struct =====
struct __jmp_buf_tag *__fastcall png_create_write_struct(char *a1, int a2, int a3, int a4)
{
  return png_create_write_struct_2(a1, a2, a3, a4, 0, nullptr, 0);
}


// ===== 6955a4 png_convert_from_time_t =====
int __fastcall png_convert_from_time_t(int a1, time_t a2)
{
  struct tm *v3; // r0
  time_t v5; // [sp+4h] [bp-4h] BYREF

  v5 = a2;
  v3 = gmtime(&v5);
  return png_convert_from_struct_tm(a1, v3);
}


// ===== 6955d4 png_write_end =====
struct __jmp_buf_tag *__fastcall png_write_end(struct __jmp_buf_tag *result, _DWORD *a2)
{
  int v2; // r6
  int v4; // r2
  int i; // r4
  int v6; // r3
  int v7; // r7
  int v8; // r12
  int v9; // r3
  int v10; // r3
  unsigned int v11; // r4
  int v12; // r3
  int v13; // r3

  v2 = (int)result;
  if ( result )
  {
    if ( (result[1].__saved_mask.__val[28] & 4) == 0 )
      png_error(result, "No IDATs written into file");
    if ( a2 )
    {
      if ( (a2[2] & 0x200) != 0 && (*(_DWORD *)(v2 + 296) & 0x200) == 0 )
        png_write_tIME(v2, a2 + 15);
      v4 = a2[12];
      if ( v4 > 0 )
      {
        for ( i = 0; i < v4; ++i )
        {
          while ( 1 )
          {
            v6 = a2[14];
            v7 = 16 * i;
            v8 = *(_DWORD *)(v6 + 16 * i);
            v9 = v6 + 16 * i;
            if ( v8 <= 0 )
              break;
            png_warning(v2, "Unable to write international text");
            *(_DWORD *)(a2[14] + 16 * i) = -3;
            v4 = a2[12];
LABEL_9:
            if ( v4 <= ++i )
              goto LABEL_13;
          }
          if ( v8 )
          {
            if ( v8 == -1 )
            {
              png_write_tEXt(v2, *(_DWORD *)(v9 + 4), *(_DWORD *)(v9 + 8), 0);
              *(_DWORD *)(a2[14] + 16 * i) = -3;
              v4 = a2[12];
            }
            goto LABEL_9;
          }
          png_write_zTXt(v2, *(_DWORD *)(v9 + 4), *(_DWORD *)(v9 + 8), 0, 0);
          *(_DWORD *)(a2[14] + v7) = -2;
          v4 = a2[12];
        }
      }
LABEL_13:
      v10 = a2[48];
      if ( v10 )
      {
        v11 = a2[47];
        if ( v11 < v11 + 20 * v10 )
        {
          do
          {
            v12 = png_handle_as_unknown(v2, (void *)v11);
            if ( v12 != 1 && *(_BYTE *)(v11 + 16) && (*(_BYTE *)(v11 + 16) & 8) != 0 )
            {
              if ( v12 == 3 )
                v13 = 1;
              else
                v13 = (*(unsigned __int8 *)(v11 + 3) >> 5) & 1;
              if ( v13 || (*(_DWORD *)(v2 + 300) & 0x10000) != 0 )
                png_write_chunk(v2, v11, *(_DWORD *)(v11 + 8), *(_DWORD *)(v11 + 12));
            }
            v11 += 20;
          }
          while ( v11 < a2[47] + 20 * a2[48] );
        }
      }
    }
    *(_DWORD *)(v2 + 296) |= 8u;
    return (struct __jmp_buf_tag *)png_write_IEND(v2);
  }
  return result;
}


// ===== 6957b8 png_write_info_before_PLTE =====
int __fastcall png_write_info_before_PLTE(int result, int a2)
{
  bool v2; // zf
  _DWORD *v4; // r6
  int v5; // r3
  int v6; // r3
  unsigned int v7; // r5
  int v8; // r3
  double v9; // r8

  v2 = result == 0;
  if ( result )
    v2 = a2 == 0;
  v4 = (_DWORD *)result;
  if ( !v2 && (*(_DWORD *)(result + 296) & 0x400) == 0 )
  {
    png_write_sig();
    if ( (v4[74] & 0x1000) != 0 && v4[188] )
    {
      png_warning((int)v4, "MNG features are not allowed in a PNG datastream");
      v4[188] = 0;
    }
    result = png_write_IHDR(
               v4,
               *(_DWORD *)a2,
               *(_DWORD *)(a2 + 4),
               *(unsigned __int8 *)(a2 + 24),
               *(unsigned __int8 *)(a2 + 25),
               *(unsigned __int8 *)(a2 + 26),
               *(unsigned __int8 *)(a2 + 27),
               *(unsigned __int8 *)(a2 + 28));
    v5 = *(_DWORD *)(a2 + 8);
    if ( (v5 & 1) != 0 )
    {
      result = png_write_gAMA(
                 v4,
                 HIDWORD(COERCE_UNSIGNED_INT64(*(float *)(a2 + 40))),
                 COERCE_UNSIGNED_INT64(*(float *)(a2 + 40)),
                 HIDWORD(COERCE_UNSIGNED_INT64(*(float *)(a2 + 40))));
      v5 = *(_DWORD *)(a2 + 8);
    }
    if ( (v5 & 0x800) != 0 )
    {
      result = png_write_sRGB(v4, *(unsigned __int8 *)(a2 + 44));
      v5 = *(_DWORD *)(a2 + 8);
    }
    if ( (v5 & 0x1000) != 0 )
    {
      result = png_write_iCCP(v4, *(_DWORD *)(a2 + 196), 0, *(_DWORD *)(a2 + 200), *(_DWORD *)(a2 + 204));
      v5 = *(_DWORD *)(a2 + 8);
    }
    if ( (v5 & 2) != 0 )
    {
      result = png_write_sBIT(v4, a2 + 68, *(unsigned __int8 *)(a2 + 25));
      v5 = *(_DWORD *)(a2 + 8);
    }
    if ( (v5 & 4) != 0 )
    {
      v9 = *(float *)(a2 + 128);
      result = png_write_cHRM(
                 v4,
                 HIDWORD(COERCE_UNSIGNED_INT64(*(float *)(a2 + 156))),
                 LODWORD(v9),
                 HIDWORD(v9),
                 COERCE_UNSIGNED_INT64(*(float *)(a2 + 132)),
                 HIDWORD(COERCE_UNSIGNED_INT64(*(float *)(a2 + 132))),
                 COERCE_UNSIGNED_INT64(*(float *)(a2 + 136)),
                 HIDWORD(COERCE_UNSIGNED_INT64(*(float *)(a2 + 136))),
                 COERCE_UNSIGNED_INT64(*(float *)(a2 + 140)),
                 HIDWORD(COERCE_UNSIGNED_INT64(*(float *)(a2 + 140))),
                 COERCE_UNSIGNED_INT64(*(float *)(a2 + 144)),
                 HIDWORD(COERCE_UNSIGNED_INT64(*(float *)(a2 + 144))),
                 COERCE_UNSIGNED_INT64(*(float *)(a2 + 148)),
                 HIDWORD(COERCE_UNSIGNED_INT64(*(float *)(a2 + 148))),
                 COERCE_UNSIGNED_INT64(*(float *)(a2 + 152)),
                 HIDWORD(COERCE_UNSIGNED_INT64(*(float *)(a2 + 152))),
                 COERCE_UNSIGNED_INT64(*(float *)(a2 + 156)),
                 HIDWORD(COERCE_UNSIGNED_INT64(*(float *)(a2 + 156))));
    }
    v6 = *(_DWORD *)(a2 + 192);
    if ( v6 )
    {
      v7 = *(_DWORD *)(a2 + 188);
      if ( v7 < v7 + 20 * v6 )
      {
        do
        {
          result = png_handle_as_unknown((int)v4, (void *)v7);
          if ( result != 1 && *(_BYTE *)(v7 + 16) && (*(_BYTE *)(v7 + 16) & 6) == 0 )
          {
            result = result == 3 || (*(unsigned __int8 *)(v7 + 3) >> 5) & 1;
            if ( result || (v4[75] & 0x10000) != 0 )
            {
              v8 = *(_DWORD *)(v7 + 12);
              if ( !v8 )
              {
                png_warning((int)v4, "Writing zero-length unknown chunk");
                v8 = *(_DWORD *)(v7 + 12);
              }
              result = png_write_chunk(v4, v7, *(_DWORD *)(v7 + 8), v8);
            }
          }
          v7 += 20;
        }
        while ( v7 < *(_DWORD *)(a2 + 188) + 20 * *(_DWORD *)(a2 + 192) );
      }
    }
    v4[74] |= 0x400u;
  }
  return result;
}


// ===== 695a34 png_write_info =====
int __fastcall png_write_info(int result, int a2)
{
  bool v2; // zf
  struct __jmp_buf_tag *v4; // r6
  int v5; // r3
  int v6; // r2
  int v7; // r5
  int v8; // r3
  int v9; // r7
  int v10; // r12
  int v11; // r3
  int v12; // r3
  unsigned int v13; // r5
  int v14; // r3
  int v15; // r3
  int v16; // r5
  int v17; // r3
  int v18; // r12
  int v19; // r2

  v2 = result == 0;
  if ( result )
    v2 = a2 == 0;
  v4 = (struct __jmp_buf_tag *)result;
  if ( v2 )
    return result;
  result = png_write_info_before_PLTE(result, a2);
  v5 = *(_DWORD *)(a2 + 8);
  if ( (v5 & 8) != 0 )
  {
    result = png_write_PLTE(v4, *(_DWORD *)(a2 + 16), *(unsigned __int16 *)(a2 + 20));
    v5 = *(_DWORD *)(a2 + 8);
  }
  else if ( *(_BYTE *)(a2 + 25) == 3 )
  {
    result = png_error(v4, "Valid palette required for paletted images");
    v5 = *(_DWORD *)(a2 + 8);
  }
  if ( (v5 & 0x10) != 0 )
  {
    if ( (v4[1].__saved_mask.__val[30] & 0x80000) != 0 )
    {
      v18 = *(unsigned __int8 *)(a2 + 25);
      if ( v18 == 3 )
      {
        v17 = *(unsigned __int16 *)(a2 + 22);
        if ( *(_WORD *)(a2 + 22) )
        {
          v19 = 0;
          do
          {
            *(_BYTE *)(*(_DWORD *)(a2 + 76) + v19) = ~*(_BYTE *)(*(_DWORD *)(a2 + 76) + v19);
            v17 = *(unsigned __int16 *)(a2 + 22);
            ++v19;
          }
          while ( v17 > v19 );
          v18 = *(unsigned __int8 *)(a2 + 25);
        }
      }
      else
      {
        v17 = *(unsigned __int16 *)(a2 + 22);
      }
    }
    else
    {
      v17 = *(unsigned __int16 *)(a2 + 22);
      v18 = *(unsigned __int8 *)(a2 + 25);
    }
    result = png_write_tRNS(v4, *(_DWORD *)(a2 + 76), a2 + 80, v17, v18);
    v5 = *(_DWORD *)(a2 + 8);
    if ( (v5 & 0x20) == 0 )
    {
LABEL_11:
      if ( (v5 & 0x40) == 0 )
        goto LABEL_12;
      goto LABEL_49;
    }
  }
  else if ( (v5 & 0x20) == 0 )
  {
    goto LABEL_11;
  }
  result = png_write_bKGD(v4, a2 + 90, *(unsigned __int8 *)(a2 + 25));
  v5 = *(_DWORD *)(a2 + 8);
  if ( (v5 & 0x40) == 0 )
  {
LABEL_12:
    if ( (v5 & 0x100) == 0 )
      goto LABEL_13;
    goto LABEL_50;
  }
LABEL_49:
  result = png_write_hIST(v4, *(_DWORD *)(a2 + 124), *(unsigned __int16 *)(a2 + 20));
  v5 = *(_DWORD *)(a2 + 8);
  if ( (v5 & 0x100) == 0 )
  {
LABEL_13:
    if ( (v5 & 0x400) == 0 )
      goto LABEL_14;
    goto LABEL_51;
  }
LABEL_50:
  result = png_write_oFFs(v4, *(_DWORD *)(a2 + 100), *(_DWORD *)(a2 + 104), *(unsigned __int8 *)(a2 + 108));
  v5 = *(_DWORD *)(a2 + 8);
  if ( (v5 & 0x400) == 0 )
  {
LABEL_14:
    if ( (v5 & 0x4000) == 0 )
      goto LABEL_15;
    goto LABEL_52;
  }
LABEL_51:
  result = png_write_pCAL(
             v4,
             *(_DWORD *)(a2 + 160),
             *(_DWORD *)(a2 + 164),
             *(_DWORD *)(a2 + 168),
             *(unsigned __int8 *)(a2 + 180),
             *(unsigned __int8 *)(a2 + 181),
             *(_DWORD *)(a2 + 172),
             *(_DWORD *)(a2 + 176));
  v5 = *(_DWORD *)(a2 + 8);
  if ( (v5 & 0x4000) == 0 )
  {
LABEL_15:
    if ( (v5 & 0x80) == 0 )
      goto LABEL_16;
LABEL_53:
    result = png_write_pHYs(v4, *(_DWORD *)(a2 + 112), *(_DWORD *)(a2 + 116), *(unsigned __int8 *)(a2 + 120));
    v5 = *(_DWORD *)(a2 + 8);
    if ( (v5 & 0x200) == 0 )
      goto LABEL_17;
    goto LABEL_54;
  }
LABEL_52:
  result = png_write_sCAL(
             v4,
             *(unsigned __int8 *)(a2 + 220),
             *(_DWORD *)(a2 + 224),
             *(_DWORD *)(a2 + 228),
             *(_DWORD *)(a2 + 232),
             *(_DWORD *)(a2 + 236));
  v5 = *(_DWORD *)(a2 + 8);
  if ( (v5 & 0x80) != 0 )
    goto LABEL_53;
LABEL_16:
  if ( (v5 & 0x200) == 0 )
    goto LABEL_17;
LABEL_54:
  result = png_write_tIME(v4, a2 + 60);
  v4[1].__saved_mask.__val[28] |= 0x200u;
  v5 = *(_DWORD *)(a2 + 8);
LABEL_17:
  if ( (v5 & 0x2000) != 0 && *(int *)(a2 + 216) > 0 )
  {
    v16 = 0;
    do
      result = png_write_sPLT(v4, *(_DWORD *)(a2 + 212) + 16 * v16++);
    while ( *(_DWORD *)(a2 + 216) > v16 );
  }
  v6 = *(_DWORD *)(a2 + 48);
  if ( v6 > 0 )
  {
    v7 = 0;
    while ( 1 )
    {
      v8 = *(_DWORD *)(a2 + 56);
      v9 = 16 * v7;
      result = (int)v4;
      v10 = *(_DWORD *)(v8 + 16 * v7);
      v11 = v8 + 16 * v7;
      if ( v10 > 0 )
        break;
      if ( !v10 )
      {
        result = png_write_zTXt(v4, *(_DWORD *)(v11 + 4), *(_DWORD *)(v11 + 8), 0, 0);
        *(_DWORD *)(*(_DWORD *)(a2 + 56) + 16 * v7) = -2;
        v6 = *(_DWORD *)(a2 + 48);
        goto LABEL_21;
      }
      if ( v10 == -1 )
      {
        result = png_write_tEXt(v4, *(_DWORD *)(v11 + 4), *(_DWORD *)(v11 + 8), 0);
        ++v7;
        *(_DWORD *)(*(_DWORD *)(a2 + 56) + v9) = -3;
        v6 = *(_DWORD *)(a2 + 48);
        if ( v6 <= v7 )
          goto LABEL_26;
      }
      else
      {
LABEL_21:
        if ( v6 <= ++v7 )
          goto LABEL_26;
      }
    }
    result = png_warning((int)v4, "Unable to write international text");
    *(_DWORD *)(*(_DWORD *)(a2 + 56) + 16 * v7) = -3;
    v6 = *(_DWORD *)(a2 + 48);
    goto LABEL_21;
  }
LABEL_26:
  v12 = *(_DWORD *)(a2 + 192);
  if ( v12 )
  {
    v13 = *(_DWORD *)(a2 + 188);
    if ( v13 < v13 + 20 * v12 )
    {
      do
      {
        result = png_handle_as_unknown((int)v4, (void *)v13);
        v14 = result;
        if ( result != 1 && *(_BYTE *)(v13 + 16) && (*(_BYTE *)(v13 + 16) & 6) == 2 )
        {
          result = (int)v4;
          if ( v14 == 3 )
            v15 = 1;
          else
            v15 = (*(unsigned __int8 *)(v13 + 3) >> 5) & 1;
          if ( v15 || (v4[1].__saved_mask.__val[29] & 0x10000) != 0 )
            result = png_write_chunk(v4, v13, *(_DWORD *)(v13 + 8), *(_DWORD *)(v13 + 12));
        }
        v13 += 20;
      }
      while ( v13 < *(_DWORD *)(a2 + 188) + 20 * *(_DWORD *)(a2 + 192) );
    }
  }
  return result;
}


// ===== 695e00 png_write_png =====
struct __jmp_buf_tag *__fastcall png_write_png(struct __jmp_buf_tag *result, _DWORD *a2, __int16 a3)
{
  bool v3; // zf
  struct __jmp_buf_tag *v6; // r6

  v3 = result == nullptr;
  if ( result )
    v3 = a2 == nullptr;
  v6 = result;
  if ( !v3 )
  {
    if ( (a3 & 0x400) != 0 )
    {
      png_set_invert_alpha((int)result);
      png_write_info((int)v6, (int)a2);
      if ( (a3 & 0x20) == 0 )
      {
LABEL_6:
        if ( (a3 & 0x40) == 0 )
          goto LABEL_9;
LABEL_7:
        if ( (a2[2] & 2) != 0 )
          png_set_shift(v6, a2 + 17);
LABEL_9:
        if ( (a3 & 4) != 0 )
        {
          png_set_packing((int)v6);
          if ( (a3 & 0x100) == 0 )
          {
LABEL_11:
            if ( (a3 & 0x800) == 0 )
              goto LABEL_12;
            goto LABEL_22;
          }
        }
        else if ( (a3 & 0x100) == 0 )
        {
          goto LABEL_11;
        }
        png_set_swap_alpha((int)v6);
        if ( (a3 & 0x800) == 0 )
        {
LABEL_12:
          if ( (a3 & 0x80) == 0 )
            goto LABEL_13;
          goto LABEL_23;
        }
LABEL_22:
        png_set_filler((int)v6, 0, 0);
        if ( (a3 & 0x80) == 0 )
        {
LABEL_13:
          if ( (a3 & 0x200) == 0 )
            goto LABEL_14;
          goto LABEL_24;
        }
LABEL_23:
        png_set_bgr((int)v6);
        if ( (a3 & 0x200) == 0 )
        {
LABEL_14:
          if ( (a3 & 8) == 0 )
            goto LABEL_15;
          goto LABEL_25;
        }
LABEL_24:
        png_set_swap((int)v6);
        if ( (a3 & 8) == 0 )
        {
LABEL_15:
          if ( (a2[2] & 0x8000) == 0 )
            return png_write_end(v6, a2);
LABEL_26:
          png_write_image((int)v6, a2[62]);
          return png_write_end(v6, a2);
        }
LABEL_25:
        png_set_packswap((int)v6);
        if ( (a2[2] & 0x8000) == 0 )
          return png_write_end(v6, a2);
        goto LABEL_26;
      }
    }
    else
    {
      png_write_info((int)result, (int)a2);
      if ( (a3 & 0x20) == 0 )
        goto LABEL_6;
    }
    png_set_invert_mono((int)v6);
    if ( (a3 & 0x40) == 0 )
      goto LABEL_9;
    goto LABEL_7;
  }
  return result;
}


// ===== 695f58 png_do_pack =====
int *__fastcall png_do_pack(int *result, _BYTE *a2, int a3)
{
  int v3; // r3
  char v4; // r1
  unsigned int v5; // r2
  unsigned int v6; // r3
  int v7; // r4
  _BYTE *v8; // r7
  int v9; // r5
  int v10; // r12
  char v11; // r6
  int v12; // r12
  _BYTE *v13; // r7
  char v14; // r6
  int v15; // r4
  bool v17; // cc
  int v18; // r4
  _BYTE *v19; // r7
  int v20; // r5
  int v21; // r12
  char v22; // r6

  if ( (result[2] & 0xFFFF00) != 0x10800 )
    return result;
  switch ( a3 )
  {
    case 2:
      v3 = *result;
      if ( !*result )
        goto LABEL_6;
      v18 = 0;
      v19 = a2;
      v20 = 0;
      v21 = 6;
      do
      {
        v22 = a2[v18++];
        v20 |= (v22 & 3) << v21;
        if ( v21 )
        {
          v21 -= 2;
        }
        else
        {
          *v19++ = v20;
          v20 = 0;
          v21 = 6;
        }
      }
      while ( v18 != v3 );
      if ( v21 != 6 )
      {
        *v19 = v20;
        v3 = *result;
        goto LABEL_6;
      }
      break;
    case 4:
      v3 = *result;
      if ( !*result )
        goto LABEL_6;
      v7 = 0;
      v8 = a2;
      v9 = 0;
      v10 = 4;
      do
      {
        v11 = a2[v7++];
        v9 |= (v11 & 0xF) << v10;
        if ( v10 )
        {
          v10 -= 4;
        }
        else
        {
          *v8++ = v9;
          v9 = 0;
          v10 = 4;
        }
      }
      while ( v7 != v3 );
      if ( v10 != 4 )
        *v8 = v9;
      break;
    case 1:
      v3 = *result;
      if ( !*result )
        goto LABEL_6;
      v12 = 0;
      v13 = a2;
      v14 = 0;
      v15 = 128;
      do
      {
        if ( a2[v12++] )
          v14 |= v15;
        v17 = v15 <= 1;
        if ( v15 > 1 )
          v15 >>= 1;
        else
          *v13++ = v14;
        if ( v17 )
        {
          v15 = 128;
          v14 = 0;
        }
      }
      while ( v12 != v3 );
      if ( v15 != 128 )
      {
        *v13 = v14;
        v3 = *result;
        goto LABEL_6;
      }
      break;
  }
  v3 = *result;
LABEL_6:
  v4 = *((_BYTE *)result + 10);
  *((_BYTE *)result + 9) = a3;
  v5 = (unsigned __int8)(v4 * a3);
  if ( v5 <= 7 )
    v3 *= v5;
  *((_BYTE *)result + 11) = v5;
  if ( v5 <= 7 )
    v6 = (unsigned int)(v3 + 7) >> 3;
  else
    v6 = v3 * (v5 >> 3);
  result[1] = v6;
  return result;
}


// ===== 6960d4 png_do_shift =====
int __fastcall png_do_shift(int result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  int v3; // r8
  int v4; // r3
  unsigned int v6; // r1
  unsigned int v7; // r6
  int v8; // r12
  _BYTE *v9; // r3
  int v10; // r3
  int v11; // r11
  int v12; // r10
  int v13; // r5
  int v14; // r9
  int v15; // r2
  int v16; // r7
  int v17; // r1
  char v18; // r12
  int v19; // r3
  int k; // r6
  int v21; // r5
  int v22; // r12
  unsigned int v23; // r10
  int v24; // r7
  unsigned int v25; // r5
  _BYTE *v26; // r1
  int v27; // r12
  int v28; // r3
  unsigned __int16 v29; // r9
  unsigned __int8 v30; // r3
  int v31; // r8
  int v32; // r1
  int v33; // r8
  int v34; // r7
  unsigned int i; // r5
  _BYTE *v36; // r1
  int v37; // r12
  int v38; // r3
  int v39; // r9
  int v40; // r1
  int j; // r10
  int v42; // r10
  int v43; // [sp+0h] [bp-2Ch]
  int v44; // [sp+4h] [bp-28h]
  int v45; // [sp+8h] [bp-24h]
  int v46; // [sp+Ch] [bp-20h]
  int v47; // [sp+10h] [bp-1Ch]
  unsigned int v48; // [sp+18h] [bp-14h]
  int v49; // [sp+1Ch] [bp-10h]
  int v50; // [sp+20h] [bp-Ch]
  _BYTE v51[4]; // [sp+28h] [bp-4h] BYREF

  v4 = *(unsigned __int8 *)(result + 8);
  if ( v4 != 3 )
  {
    v6 = *(unsigned __int8 *)(result + 9);
    if ( (v4 & 2) != 0 )
    {
      v21 = a3[1];
      v22 = a3[2];
      v23 = v6 - *a3;
      LOBYTE(v3) = v6 - v21;
      v45 = *a3;
      v48 = v23;
      v49 = v6 - v21;
      v46 = v21;
      v50 = v6 - v22;
      v47 = v22;
      v7 = 3;
    }
    else
    {
      v7 = 1;
      v45 = a3[3];
      v48 = v6 - v45;
    }
    if ( (v4 & 4) != 0 )
    {
      v8 = a3[4];
      v9 = &v51[4 * v7++];
      *((_DWORD *)v9 - 8) = v8;
      *((_DWORD *)v9 - 4) = v6 - v8;
    }
    if ( v6 > 7 )
    {
      if ( v6 == 8 )
      {
        v34 = *(_DWORD *)result * v7;
        if ( v34 )
        {
          for ( i = 0; i != v34; ++i )
          {
            result = i / v7;
            v36 = &v51[4 * (i % v7)];
            v37 = *((_DWORD *)v36 - 8);
            v38 = *((_DWORD *)v36 - 4);
            v39 = a2[i];
            a2[i] = 0;
            if ( v38 > -v37 )
            {
              v40 = v38 - v37;
              result = -v38;
              for ( j = 0; ; j = a2[i] )
              {
                v42 = v38 <= 0 ? j | (v39 >> result) : j | (v39 << v38);
                v40 -= v37;
                a2[i] = v42;
                v38 -= v37;
                result += v37;
                if ( -v37 >= v40 + v37 )
                  break;
              }
            }
          }
        }
      }
      else
      {
        v24 = *(_DWORD *)result * v7;
        if ( v24 )
        {
          v25 = 0;
          while ( 1 )
          {
            v26 = &v51[4 * (v25 % v7)];
            v27 = *((_DWORD *)v26 - 8);
            v28 = *((_DWORD *)v26 - 4);
            result = a2[1];
            v29 = result + (*a2 << 8);
            if ( -v27 < v28 )
            {
              v32 = v28 - v27;
              result = -v28;
              v33 = 0;
              do
              {
                if ( v28 <= 0 )
                  v33 |= (int)v29 >> result;
                else
                  v33 |= v29 << v28;
                v32 -= v27;
                v33 = (unsigned __int16)v33;
                v28 -= v27;
                result += v27;
              }
              while ( -v27 < v32 + v27 );
              v30 = v33;
              v31 = BYTE1(v33);
            }
            else
            {
              v30 = 0;
              LOBYTE(v31) = 0;
            }
            ++v25;
            *a2 = v31;
            a2[1] = v30;
            if ( v25 == v24 )
              break;
            a2 += 2;
          }
        }
      }
    }
    else
    {
      v10 = a3[3];
      v11 = *(_DWORD *)(result + 4);
      if ( v10 == 1 && v6 == 2 )
      {
        v12 = 85;
      }
      else if ( v6 == 4 && v10 == 3 )
      {
        v12 = 17;
      }
      else
      {
        v12 = 255;
      }
      if ( v11 )
      {
        v13 = v45;
        v14 = v48;
        result = 0;
        v15 = -v45;
        v43 = v48 - v45;
        v44 = -v48;
        do
        {
          v16 = a2[result];
          a2[result] = 0;
          if ( v15 < v14 )
          {
            v17 = v43;
            v18 = v44;
            v19 = v14;
            for ( k = 0; ; k = a2[result] )
            {
              if ( v19 > 0 )
                k |= v16 << v19;
              else
                v3 = v12 & (v16 >> v18);
              if ( v19 <= 0 )
                LOBYTE(k) = k | v3;
              v17 += v15;
              a2[result] = k;
              v19 += v15;
              v18 += v13;
              if ( v15 >= v17 + v13 )
                break;
            }
          }
          ++result;
        }
        while ( result != v11 );
      }
    }
  }
  return result;
}


// ===== 696388 png_do_write_swap_alpha =====
int __fastcall png_do_write_swap_alpha(int result, unsigned __int8 *a2)
{
  int v2; // r3
  int v3; // r5
  int v4; // r3
  unsigned __int8 v5; // r2
  unsigned __int8 v6; // r12
  int v7; // r10
  int v8; // r3
  unsigned __int8 v9; // r2
  unsigned __int8 v10; // r7
  unsigned __int8 v11; // r6
  unsigned __int8 v12; // r5
  unsigned __int8 v13; // r4
  unsigned __int8 v14; // r12
  int v15; // r12
  int v16; // r3
  unsigned __int8 v17; // r2
  int v18; // r5
  int v19; // r3
  unsigned __int8 v20; // r12
  unsigned __int8 v21; // r2

  v2 = *(unsigned __int8 *)(result + 8);
  if ( v2 == 6 )
  {
    if ( *(_BYTE *)(result + 9) == 8 )
    {
      v18 = *(_DWORD *)result;
      if ( *(_DWORD *)result )
      {
        v19 = 0;
        do
        {
          v20 = a2[2];
          result = a2[3];
          v21 = *a2;
          ++v19;
          *a2 = a2[1];
          a2[1] = v20;
          a2[2] = result;
          a2 += 4;
          *(a2 - 1) = v21;
        }
        while ( v19 != v18 );
      }
    }
    else
    {
      v7 = *(_DWORD *)result;
      if ( *(_DWORD *)result )
      {
        v8 = 0;
        do
        {
          result = *a2;
          v9 = a2[1];
          v10 = a2[3];
          v11 = a2[4];
          v12 = a2[5];
          v13 = a2[6];
          v14 = a2[7];
          ++v8;
          *a2 = a2[2];
          a2[1] = v10;
          a2[2] = v11;
          a2[3] = v12;
          a2[4] = v13;
          a2[5] = v14;
          a2[6] = result;
          a2[7] = v9;
          a2 += 8;
        }
        while ( v8 != v7 );
      }
    }
  }
  else if ( v2 == 4 )
  {
    if ( *(_BYTE *)(result + 9) == 8 )
    {
      v15 = *(_DWORD *)result;
      if ( *(_DWORD *)result )
      {
        v16 = 0;
        do
        {
          v17 = *a2;
          result = a2[1];
          ++v16;
          *a2 = result;
          a2[1] = v17;
          a2 += 2;
        }
        while ( v16 != v15 );
      }
    }
    else
    {
      v3 = *(_DWORD *)result;
      if ( *(_DWORD *)result )
      {
        v4 = 0;
        do
        {
          result = *a2;
          v5 = a2[1];
          v6 = a2[3];
          ++v4;
          *a2 = a2[2];
          a2[1] = v6;
          a2[2] = result;
          a2[3] = v5;
          a2 += 4;
        }
        while ( v4 != v3 );
      }
    }
  }
  return result;
}


// ===== 6964e0 png_do_write_invert_alpha =====
int __fastcall png_do_write_invert_alpha(int result, _BYTE *a2)
{
  int v2; // r3
  int v3; // r12
  int v4; // r3
  char v5; // r2
  int v6; // r12
  int v7; // r3
  char v8; // r2
  int j; // r3
  int i; // r3

  v2 = *(unsigned __int8 *)(result + 8);
  if ( v2 == 6 )
  {
    if ( *(_BYTE *)(result + 9) == 8 )
    {
      result = *(_DWORD *)result;
      if ( result )
      {
        for ( i = 0; i != result; ++i )
        {
          a2[3] = ~a2[3];
          a2 += 4;
        }
      }
    }
    else
    {
      v6 = *(_DWORD *)result;
      if ( *(_DWORD *)result )
      {
        v7 = 0;
        do
        {
          ++v7;
          result = ~(unsigned __int8)a2[6];
          v8 = ~a2[7];
          a2[6] = result;
          a2[7] = v8;
          a2 += 8;
        }
        while ( v7 != v6 );
      }
    }
  }
  else if ( v2 == 4 )
  {
    if ( *(_BYTE *)(result + 9) == 8 )
    {
      result = *(_DWORD *)result;
      if ( result )
      {
        for ( j = 0; j != result; ++j )
        {
          a2[1] = ~a2[1];
          a2 += 2;
        }
      }
    }
    else
    {
      v3 = *(_DWORD *)result;
      if ( *(_DWORD *)result )
      {
        v4 = 0;
        do
        {
          ++v4;
          result = ~(unsigned __int8)a2[2];
          v5 = ~a2[3];
          a2[2] = result;
          a2[3] = v5;
          a2 += 4;
        }
        while ( v4 != v3 );
      }
    }
  }
  return result;
}


// ===== 6965e4 png_do_write_intrapixel =====
unsigned int __fastcall png_do_write_intrapixel(unsigned int result, unsigned __int8 *a2)
{
  int v2; // r3
  int v3; // r2
  int v4; // r12
  int v5; // r6
  int v6; // r3
  int v7; // r2
  int v8; // r6
  int v9; // r3
  int v10; // r0
  int v11; // r2
  unsigned int v12; // r0
  unsigned int v13; // r5

  v2 = *(unsigned __int8 *)(result + 8);
  if ( (v2 & 2) != 0 )
  {
    v3 = *(unsigned __int8 *)(result + 9);
    v4 = *(_DWORD *)result;
    if ( v3 == 8 )
    {
      if ( v2 == 2 )
      {
        v5 = 3;
      }
      else
      {
        if ( v2 != 6 )
          return result;
        v5 = 4;
      }
      if ( v4 )
      {
        v6 = 0;
        do
        {
          v7 = a2[1];
          ++v6;
          result = *a2 - v7;
          LOBYTE(v7) = a2[2] - v7;
          *a2 = result;
          a2[2] = v7;
          a2 += v5;
        }
        while ( v6 != v4 );
      }
    }
    else
    {
      if ( v3 != 16 )
        return result;
      if ( v2 == 2 )
      {
        v8 = 6;
      }
      else
      {
        if ( v2 != 6 )
          return result;
        v8 = 8;
      }
      if ( v4 )
      {
        v9 = 0;
        do
        {
          v10 = a2[3] | (a2[2] << 8);
          v11 = (a2[5] | (a2[4] << 8)) - v10;
          v12 = ((a2[1] | (*a2 << 8)) - v10) << 16;
          v11 <<= 16;
          ++v9;
          v13 = HIBYTE(v12);
          result = HIWORD(v12);
          *a2 = v13;
          a2[1] = result;
          a2[4] = HIBYTE(v11);
          a2[5] = BYTE2(v11);
          a2 += v8;
        }
        while ( v9 != v4 );
      }
    }
  }
  return result;
}


// ===== 6966f8 png_do_write_transformations =====
_DWORD *__fastcall png_do_write_transformations(_DWORD *result)
{
  _DWORD *v1; // r4
  int v2; // r2
  int (*v3)(void); // r3

  v1 = result;
  if ( !result )
    return result;
  v2 = result[76];
  if ( (v2 & 0x100000) == 0 || (v3 = (int (*)(void))result[71]) == nullptr )
  {
    if ( (v2 & 0x8000) != 0 )
      goto LABEL_15;
LABEL_4:
    if ( (v2 & 0x10000) != 0 )
      goto LABEL_16;
LABEL_5:
    if ( (v2 & 4) != 0 )
      goto LABEL_17;
LABEL_6:
    if ( (v2 & 0x10) != 0 )
      goto LABEL_18;
LABEL_7:
    if ( (v2 & 8) != 0 )
      goto LABEL_19;
LABEL_8:
    if ( (v2 & 0x20000) != 0 )
      goto LABEL_20;
LABEL_9:
    if ( (v2 & 0x80000) != 0 )
      goto LABEL_21;
LABEL_10:
    if ( (v2 & 1) != 0 )
      goto LABEL_22;
    goto LABEL_11;
  }
  result = (_DWORD *)v3();
  v2 = v1[76];
  if ( (v2 & 0x8000) == 0 )
    goto LABEL_4;
LABEL_15:
  result = (_DWORD *)png_do_strip_filler((int)(v1 + 112), (_BYTE *)(v1[107] + 1), v1[75]);
  v2 = v1[76];
  if ( (v2 & 0x10000) == 0 )
    goto LABEL_5;
LABEL_16:
  result = png_do_packswap(v1 + 112, (_BYTE *)(v1[107] + 1));
  v2 = v1[76];
  if ( (v2 & 4) == 0 )
    goto LABEL_6;
LABEL_17:
  result = png_do_pack(v1 + 112, (_BYTE *)(v1[107] + 1), *((unsigned __int8 *)v1 + 487));
  v2 = v1[76];
  if ( (v2 & 0x10) == 0 )
    goto LABEL_7;
LABEL_18:
  result = (_DWORD *)png_do_swap((int)(v1 + 112), (char *)(v1[107] + 1));
  v2 = v1[76];
  if ( (v2 & 8) == 0 )
    goto LABEL_8;
LABEL_19:
  result = (_DWORD *)png_do_shift((int)(v1 + 112), (unsigned __int8 *)(v1[107] + 1), (unsigned __int8 *)v1 + 577);
  v2 = v1[76];
  if ( (v2 & 0x20000) == 0 )
    goto LABEL_9;
LABEL_20:
  result = (_DWORD *)png_do_write_swap_alpha((int)(v1 + 112), (unsigned __int8 *)(v1[107] + 1));
  v2 = v1[76];
  if ( (v2 & 0x80000) == 0 )
    goto LABEL_10;
LABEL_21:
  result = (_DWORD *)png_do_write_invert_alpha((int)(v1 + 112), (_BYTE *)(v1[107] + 1));
  v2 = v1[76];
  if ( (v2 & 1) != 0 )
  {
LABEL_22:
    result = (_DWORD *)png_do_bgr((int)(v1 + 112), (unsigned __int8 *)(v1[107] + 1));
    if ( (v1[76] & 0x20) != 0 )
      return (_DWORD *)png_do_invert((unsigned int)(v1 + 112), v1[107] + 1);
    return result;
  }
LABEL_11:
  if ( (v2 & 0x20) != 0 )
    return (_DWORD *)png_do_invert((unsigned int)(v1 + 112), v1[107] + 1);
  return result;
}


// ===== 696888 png_save_uint_32 =====
_BYTE *__fastcall png_save_uint_32(_BYTE *result, int a2)
{
  result[3] = a2;
  *result = HIBYTE(a2);
  result[1] = BYTE2(a2);
  result[2] = BYTE1(a2);
  return result;
}


// ===== 6968a8 png_save_int_32 =====
_BYTE *__fastcall png_save_int_32(_BYTE *result, int a2)
{
  result[3] = a2;
  *result = HIBYTE(a2);
  result[1] = BYTE2(a2);
  result[2] = BYTE1(a2);
  return result;
}


// ===== 6968c8 png_save_uint_16 =====
_BYTE *__fastcall png_save_uint_16(_BYTE *result, __int16 a2)
{
  result[1] = a2;
  *result = HIBYTE(a2);
  return result;
}


// ===== 6968d8 png_do_write_interlace =====
unsigned int __fastcall png_do_write_interlace(unsigned int result, unsigned __int8 *a2, int a3)
{
  int v3; // r8
  unsigned int v4; // r5
  unsigned int v5; // r9
  size_t v6; // r10
  unsigned __int8 *v7; // r6
  unsigned __int8 *v8; // r5
  unsigned int v9; // r4
  unsigned int v10; // r7
  unsigned int v11; // r0
  _BYTE *v12; // r6
  int v13; // r5
  int v14; // r12
  int v15; // r7
  bool v16; // zf
  unsigned int v17; // r0
  bool v18; // cc
  int v19; // r12
  int v20; // r7
  bool v21; // zf
  _BYTE *v22; // r6
  unsigned int v23; // r12
  int v24; // r7
  char v25; // r4
  bool v26; // zf
  unsigned int v27; // [sp+4h] [bp-8h]

  v3 = result;
  if ( a3 > 5 )
    return result;
  v4 = *(unsigned __int8 *)(result + 11);
  if ( v4 == 2 )
  {
    v5 = *(_DWORD *)result;
    v11 = png_pass_start[a3];
    if ( v5 > v11 )
    {
      v12 = a2;
      v13 = 0;
      v14 = 6;
      v15 = png_pass_inc[a3];
      do
      {
        v13 |= (((int)a2[v11 >> 2] >> (2 * (~(_BYTE)v11 & 3))) & 3) << v14;
        v16 = v14 == 0;
        v11 += v15;
        if ( v14 )
          v14 -= 2;
        else
          *v12++ = v13;
        if ( v16 )
        {
          v13 = v14;
          v14 = 6;
        }
        v9 = v15;
      }
      while ( v5 > v11 );
      if ( v14 == 6 )
        goto LABEL_37;
      goto LABEL_21;
    }
LABEL_52:
    v27 = v11;
    v9 = png_pass_inc[a3];
    goto LABEL_22;
  }
  if ( v4 == 4 )
  {
    v5 = *(_DWORD *)result;
    v11 = png_pass_start[a3];
    if ( v5 > v11 )
    {
      v22 = a2;
      v23 = 0;
      v24 = png_pass_inc[a3];
      do
      {
        if ( (v11 & 1) != 0 )
          v25 = 0;
        else
          v25 = 4;
        v23 |= (((int)a2[v11 >> 1] >> v25) & 0xF) << v4;
        v26 = v4 == 0;
        v11 += v24;
        if ( v4 )
          v4 -= 4;
        else
          *v22++ = v23;
        if ( v26 )
        {
          v23 = v4;
          v4 = 4;
        }
        v9 = v24;
      }
      while ( v5 > v11 );
      if ( v4 != 4 )
      {
        *v22 = v23;
        v5 = *(_DWORD *)v3;
        v27 = png_pass_start[a3];
        v4 = *(unsigned __int8 *)(v3 + 11);
        goto LABEL_22;
      }
      goto LABEL_37;
    }
    goto LABEL_52;
  }
  if ( v4 != 1 )
  {
    v5 = *(_DWORD *)result;
    v6 = v4 >> 3;
    v27 = png_pass_start[a3];
    if ( *(_DWORD *)result <= v27 )
    {
      v9 = png_pass_inc[a3];
    }
    else
    {
      v7 = a2;
      v8 = &a2[v27 * v6];
      v9 = png_pass_inc[a3];
      v10 = v27 + v9;
      while ( 1 )
      {
        v10 += v9;
        if ( v7 != v8 )
          memcpy(v7, v8, v6);
        v8 += v6 * v9;
        if ( v5 <= v10 - v9 )
          break;
        v7 += v6;
      }
      v5 = *(_DWORD *)v3;
      v4 = *(unsigned __int8 *)(v3 + 11);
    }
    goto LABEL_22;
  }
  v5 = *(_DWORD *)result;
  v11 = png_pass_start[a3];
  if ( v5 <= v11 )
    goto LABEL_52;
  v12 = a2;
  v13 = 0;
  v19 = 7;
  v20 = png_pass_inc[a3];
  do
  {
    v13 |= (((int)a2[v11 >> 3] >> (~(_BYTE)v11 & 7)) & 1) << v19;
    v21 = v19 == 0;
    v11 += v20;
    if ( v19 )
      --v19;
    else
      *v12++ = v13;
    if ( v21 )
    {
      v13 = v19;
      v19 = 7;
    }
    v9 = v20;
  }
  while ( v5 > v11 );
  if ( v19 == 7 )
  {
LABEL_37:
    v5 = *(_DWORD *)v3;
    v4 = *(unsigned __int8 *)(v3 + 11);
    v27 = png_pass_start[a3];
    goto LABEL_22;
  }
LABEL_21:
  *v12 = v13;
  v5 = *(_DWORD *)v3;
  v27 = png_pass_start[a3];
  v4 = *(unsigned __int8 *)(v3 + 11);
LABEL_22:
  v17 = (v5 + v9 - 1 - v27) / v9;
  v18 = v4 > 7;
  *(_DWORD *)v3 = v17;
  if ( v4 > 7 )
    v4 >>= 3;
  result = v4 * v17;
  if ( !v18 )
    result = (result + 7) >> 3;
  *(_DWORD *)(v3 + 4) = result;
  return result;
}


// ===== 696bb0 png_write_start_row =====
_BYTE *__fastcall png_write_start_row(int a1)
{
  int v2; // r3
  int v3; // r6
  bool v4; // cc
  unsigned int v5; // r6
  size_t v6; // r6
  _BYTE *result; // r0
  char v8; // r3
  int v9; // r3
  int v10; // r3
  int v11; // r2
  int v12; // r2
  int v13; // r3
  void *v14; // r0
  char v15; // r3

  v2 = *(unsigned __int8 *)(a1 + 491) * *(unsigned __int8 *)(a1 + 488);
  v3 = *(_DWORD *)(a1 + 392);
  v4 = v2 <= 7;
  if ( v2 <= 7 )
    v3 *= v2;
  else
    v2 = (unsigned int)v2 >> 3;
  if ( v4 )
    v5 = (unsigned int)(v3 + 7) >> 3;
  else
    v5 = v3 * v2;
  v6 = v5 + 1;
  result = png_malloc((struct __jmp_buf_tag *)a1, v6);
  *(_DWORD *)(a1 + 428) = result;
  *result = 0;
  v8 = *(_BYTE *)(a1 + 485);
  if ( (v8 & 0x10) != 0 )
  {
    result = png_malloc((struct __jmp_buf_tag *)a1, *(_DWORD *)(a1 + 408) + 1);
    *(_DWORD *)(a1 + 432) = result;
    *result = 1;
    v8 = *(_BYTE *)(a1 + 485);
  }
  if ( (v8 & 0xE0) != 0 )
  {
    v14 = png_malloc((struct __jmp_buf_tag *)a1, v6);
    *(_DWORD *)(a1 + 424) = v14;
    result = LC_API_MEMSET_0(v14, 0, v6);
    v15 = *(_BYTE *)(a1 + 485);
    if ( (v15 & 0x20) != 0 )
    {
      result = png_malloc((struct __jmp_buf_tag *)a1, *(_DWORD *)(a1 + 408) + 1);
      *(_DWORD *)(a1 + 436) = result;
      *result = 2;
      v15 = *(_BYTE *)(a1 + 485);
    }
    if ( (v15 & 0x40) != 0 )
    {
      result = png_malloc((struct __jmp_buf_tag *)a1, *(_DWORD *)(a1 + 408) + 1);
      *(_DWORD *)(a1 + 440) = result;
      *result = 3;
      v15 = *(_BYTE *)(a1 + 485);
    }
    if ( v15 < 0 )
    {
      result = png_malloc((struct __jmp_buf_tag *)a1, *(_DWORD *)(a1 + 408) + 1);
      *(_DWORD *)(a1 + 444) = result;
      *result = 4;
    }
  }
  if ( *(_BYTE *)(a1 + 483) && (*(_DWORD *)(a1 + 304) & 2) == 0 )
  {
    v11 = *(_DWORD *)(a1 + 392);
    *(_DWORD *)(a1 + 400) = (*(_DWORD *)(a1 + 396) + 7) / 8u;
    result = (_BYTE *)((v11 + 7) / 8u);
    v12 = *(_DWORD *)(a1 + 368);
    v13 = *(_DWORD *)(a1 + 364);
    *(_DWORD *)(a1 + 404) = result;
    *(_DWORD *)(a1 + 324) = v12;
    *(_DWORD *)(a1 + 320) = v13;
  }
  else
  {
    v9 = *(_DWORD *)(a1 + 392);
    *(_DWORD *)(a1 + 400) = *(_DWORD *)(a1 + 396);
    *(_DWORD *)(a1 + 404) = v9;
    v10 = *(_DWORD *)(a1 + 364);
    *(_DWORD *)(a1 + 324) = *(_DWORD *)(a1 + 368);
    *(_DWORD *)(a1 + 320) = v10;
  }
  return result;
}


// ===== 696d9c png_text_compress =====
int __fastcall png_text_compress(int result, int a2, int a3, int a4, _DWORD *a5)
{
  int v5; // r4
  int v6; // r4
  int v9; // r3
  int v10; // r2
  const char *v11; // r1
  int v12; // r9
  int v13; // r11
  _DWORD *v14; // r10
  void *v15; // r10
  int v16; // r9
  void *v17; // r0
  int v18; // r3
  int v19; // r0
  int v20; // r9
  int v21; // r11
  _DWORD *v22; // r10
  void *v23; // r10
  void *v24; // r0
  int v25; // r3
  const char *v26; // r1
  unsigned int v27; // r3
  unsigned int v28; // r2
  int v29; // r10
  char s[52]; // [sp+8h] [bp-3Ch] BYREF
  int v31; // [sp+3Ch] [bp-8h]

  v5 = _stack_chk_guard;
  a5[1] = 0;
  v31 = v5;
  v6 = result;
  if ( a4 == -1 )
    result = a3;
  *a5 = 0;
  a5[2] = 0;
  a5[3] = 0;
  a5[4] = 0;
  if ( a4 == -1 )
  {
    *a5 = a2;
    a5[1] = result;
  }
  else
  {
    if ( a4 > 2 )
    {
      snprintf(s, 0x32u, "Unknown compression type %d", a4);
      png_warning(v6, s);
    }
    v9 = *(_DWORD *)(v6 + 364);
    v10 = *(_DWORD *)(v6 + 368);
    *(_DWORD *)(v6 + 312) = a3;
    *(_DWORD *)(v6 + 320) = v9;
    *(_DWORD *)(v6 + 308) = a2;
    *(_DWORD *)(v6 + 324) = v10;
    do
    {
      if ( deflate(v6 + 308, 0) )
      {
        v11 = *(const char **)(v6 + 332);
        if ( !v11 )
          v11 = "zlib error";
        png_error((struct __jmp_buf_tag *)v6, v11);
      }
      if ( !*(_DWORD *)(v6 + 324) )
      {
        v12 = a5[2];
        v13 = a5[3];
        if ( v12 >= v13 )
        {
          v15 = (void *)a5[4];
          v16 = v12 + 4;
          a5[3] = v16;
          v17 = png_malloc((struct __jmp_buf_tag *)v6, 4 * v16);
          if ( v15 )
          {
            a5[4] = v17;
            memcpy(v17, v15, 4 * v13);
            png_free(v6, v15);
            v14 = (_DWORD *)a5[4];
            v12 = a5[2];
          }
          else
          {
            v12 = a5[2];
            v14 = v17;
            a5[4] = v17;
          }
        }
        else
        {
          v14 = (_DWORD *)a5[4];
        }
        v14[v12] = png_malloc((struct __jmp_buf_tag *)v6, *(_DWORD *)(v6 + 368));
        memcpy(*(void **)(a5[4] + 4 * a5[2]++), *(const void **)(v6 + 364), *(_DWORD *)(v6 + 368));
        v18 = *(_DWORD *)(v6 + 364);
        *(_DWORD *)(v6 + 324) = *(_DWORD *)(v6 + 368);
        *(_DWORD *)(v6 + 320) = v18;
      }
    }
    while ( *(_DWORD *)(v6 + 312) );
    while ( 1 )
    {
      while ( 1 )
      {
        v19 = deflate(v6 + 308, 4);
        if ( v19 )
          break;
        while ( !*(_DWORD *)(v6 + 324) )
        {
          v20 = a5[2];
          v21 = a5[3];
          if ( v20 >= v21 )
          {
            v23 = (void *)a5[4];
            a5[3] = v20 + 4;
            v24 = png_malloc((struct __jmp_buf_tag *)v6, 4 * (v20 + 4));
            if ( v23 )
            {
              a5[4] = v24;
              memcpy(v24, v23, 4 * v21);
              png_free(v6, v23);
              v22 = (_DWORD *)a5[4];
              v20 = a5[2];
            }
            else
            {
              v20 = a5[2];
              v22 = v24;
              a5[4] = v24;
            }
          }
          else
          {
            v22 = (_DWORD *)a5[4];
          }
          v22[v20] = png_malloc((struct __jmp_buf_tag *)v6, *(_DWORD *)(v6 + 368));
          memcpy(*(void **)(a5[4] + 4 * a5[2]++), *(const void **)(v6 + 364), *(_DWORD *)(v6 + 368));
          v25 = *(_DWORD *)(v6 + 364);
          *(_DWORD *)(v6 + 324) = *(_DWORD *)(v6 + 368);
          *(_DWORD *)(v6 + 320) = v25;
          v19 = deflate(v6 + 308, 4);
          if ( v19 )
            goto LABEL_26;
        }
      }
LABEL_26:
      if ( v19 == 1 )
        break;
      v26 = *(const char **)(v6 + 332);
      if ( !v26 )
        v26 = "zlib error";
      png_error((struct __jmp_buf_tag *)v6, v26);
    }
    v27 = *(_DWORD *)(v6 + 368);
    v28 = *(_DWORD *)(v6 + 324);
    v29 = a5[2] * v27;
    if ( v27 > v28 )
      v29 += v27 - v28;
    return v29;
  }
  return result;
}


// ===== 6970b8 png_check_keyword =====
size_t __fastcall png_check_keyword(struct __jmp_buf_tag *a1, const char *a2, void **a3)
{
  int v4; // r3
  const char *v5; // r5
  size_t v7; // r11
  _BYTE *v9; // r4
  unsigned __int8 v10; // r2
  int v11; // t1
  int v12; // t1
  unsigned __int8 *v13; // r4
  int v14; // r3
  int v15; // r2
  _BYTE *v16; // r0
  int v17; // r8
  int v18; // r1
  _BOOL4 v19; // r2
  int v20; // t1
  int v21; // t1
  size_t v22; // r3
  int v23; // [sp+0h] [bp-3Ch]
  char s[40]; // [sp+Ch] [bp-30h] BYREF
  int v25; // [sp+34h] [bp-8h]

  v4 = _stack_chk_guard;
  v5 = a2;
  *a3 = nullptr;
  v25 = v4;
  if ( a2 && (v7 = LC_API_STRLEN_0(a2)) != 0 )
  {
    v9 = png_malloc_warn(a1, v7 + 2);
    *a3 = v9;
    if ( v9 )
    {
      v10 = *v5;
      if ( *v5 )
      {
        do
        {
          while ( v10 <= 0x1Fu || v10 > 0x7Eu && v10 <= 0xA0u )
          {
            snprintf(s, 0x28u, "invalid keyword character 0x%02X");
            png_warning((int)a1, s);
            *v9 = 32;
            v11 = *(unsigned __int8 *)++v5;
            v10 = v11;
            ++v9;
            if ( !v11 )
              goto LABEL_13;
          }
          *v9 = v10;
          v12 = *(unsigned __int8 *)++v5;
          v10 = v12;
          ++v9;
        }
        while ( v12 );
      }
LABEL_13:
      *v9 = 0;
      v13 = (unsigned __int8 *)*a3;
      if ( *((_BYTE *)*a3 + v7 - 1) == 32 )
      {
        v23 = (int)*a3 + v7 - 1;
        png_warning((int)a1, "trailing spaces removed from keyword");
        if ( v13[v7 - 1] == 32 )
        {
          v22 = v23 - v7;
          do
            *(_BYTE *)(v22 + v7--) = 0;
          while ( *(_BYTE *)(v22 + v7) == 32 );
        }
        v13 = (unsigned __int8 *)*a3;
      }
      v14 = *v13;
      v15 = (char)v14;
      if ( (char)v14 == 32 )
      {
        png_warning((int)a1, "leading spaces removed from keyword");
        v14 = *v13;
        v15 = (char)v14;
        if ( (char)v14 == 32 )
        {
          do
          {
            v21 = *++v13;
            v14 = v21;
            --v7;
            v15 = (char)v21;
          }
          while ( (char)v21 == 32 );
        }
        v16 = *a3;
      }
      else
      {
        v16 = v13;
      }
      if ( v14 )
      {
        v17 = 0;
        v18 = 0;
        while ( 1 )
        {
          v19 = v15 == 32;
          if ( (v19 & (v18 ^ 1)) != 0 )
          {
            *v16++ = 32;
            v18 = 1;
          }
          else if ( v19 )
          {
            --v7;
            v17 = 1;
          }
          else
          {
            *v16++ = v14;
            v18 = 0;
          }
          v20 = *++v13;
          LOBYTE(v14) = v20;
          if ( !v20 )
            break;
          v15 = (char)v14;
        }
        *v16 = 0;
        if ( v17 )
          png_warning((int)a1, "extra interior spaces removed from keyword");
      }
      else
      {
        *v16 = 0;
      }
      if ( v7 )
      {
        if ( v7 > 0x4F )
        {
          v7 = 79;
          png_warning((int)a1, "keyword length must be 1 - 79 characters");
          a3[79] = nullptr;
        }
      }
      else
      {
        png_free((int)a1, *a3);
        *a3 = nullptr;
        png_warning((int)a1, "Zero length keyword");
      }
    }
    else
    {
      v7 = 0;
      png_warning((int)a1, "Out of memory while procesing keyword");
    }
  }
  else
  {
    v7 = 0;
    png_warning((int)a1, "zero length keyword");
  }
  return v7;
}


// ===== 6973a0 png_write_chunk_end =====
int __fastcall png_write_chunk_end(int result)
{
  struct __jmp_buf_tag *v1; // r4
  _BYTE v2[8]; // [sp+4h] [bp-8h] BYREF

  v1 = (struct __jmp_buf_tag *)result;
  if ( result )
  {
    png_save_uint_32(v2, *(_DWORD *)(result + 464));
    return png_write_data(v1);
  }
  return result;
}


// ===== 6973d8 png_write_sig =====
int __fastcall png_write_sig(int a1)
{
  int result; // r0

  result = png_write_data((struct __jmp_buf_tag *)a1);
  if ( *(unsigned __int8 *)(a1 + 492) <= 2u )
    *(_DWORD *)(a1 + 296) |= 0x1000u;
  return result;
}


// ===== 697468 png_write_chunk_data =====
struct __jmp_buf_tag *__fastcall png_write_chunk_data(struct __jmp_buf_tag *result, int a2, int a3)
{
  int v3; // r6
  bool v6; // zf

  v3 = (int)result;
  if ( result )
  {
    v6 = a3 == 0;
    if ( a3 )
      v6 = a2 == 0;
    if ( !v6 )
    {
      png_write_data(result);
      return (struct __jmp_buf_tag *)png_calculate_crc(v3, a2, a3);
    }
  }
  return result;
}


// ===== 6974a4 png_write_compressed_data_out =====
struct __jmp_buf_tag *__fastcall png_write_compressed_data_out(struct __jmp_buf_tag *a1, int a2)
{
  int v3; // r1
  struct __jmp_buf_tag *result; // r0
  int v6; // r4
  unsigned int v7; // r3
  unsigned int v8; // r2

  v3 = *(_DWORD *)a2;
  if ( v3 )
    return png_write_chunk_data(a1, v3, *(_DWORD *)(a2 + 4));
  if ( *(int *)(a2 + 8) > 0 )
  {
    v6 = 0;
    do
    {
      png_write_chunk_data(a1, *(_DWORD *)(*(_DWORD *)(a2 + 16) + 4 * v6), a1[2].__saved_mask.__val[7]);
      png_free((int)a1, *(void **)(*(_DWORD *)(a2 + 16) + 4 * v6));
      *(_DWORD *)(*(_DWORD *)(a2 + 16) + 4 * v6++) = 0;
    }
    while ( *(_DWORD *)(a2 + 8) > v6 );
  }
  if ( *(_DWORD *)(a2 + 12) )
  {
    png_free((int)a1, *(void **)(a2 + 16));
    *(_DWORD *)(a2 + 16) = 0;
    v7 = a1[2].__jmpbuf[3];
    v8 = a1[2].__saved_mask.__val[7];
    if ( v7 >= v8 )
      goto LABEL_9;
  }
  else
  {
    *(_DWORD *)(a2 + 16) = 0;
    v7 = a1[2].__jmpbuf[3];
    v8 = a1[2].__saved_mask.__val[7];
    if ( v7 >= v8 )
    {
LABEL_9:
      result = (struct __jmp_buf_tag *)deflateReset(&a1[1].__saved_mask.__val[31]);
      a1[2].__saved_mask.__val[3] = 0;
      return result;
    }
  }
  png_write_chunk_data(a1, a1[2].__saved_mask.__val[6], v8 - v7);
  result = (struct __jmp_buf_tag *)deflateReset(&a1[1].__saved_mask.__val[31]);
  a1[2].__saved_mask.__val[3] = 0;
  return result;
}


// ===== 697598 png_write_chunk_start =====
int __fastcall png_write_chunk_start(int result, const void *a2, int a3)
{
  struct __jmp_buf_tag *v3; // r5
  _BYTE v5[4]; // [sp+4h] [bp-Ch] BYREF
  _BYTE v6[4]; // [sp+8h] [bp-8h] BYREF

  v3 = (struct __jmp_buf_tag *)result;
  if ( result )
  {
    png_save_uint_32(v5, a3);
    memcpy(v6, a2, sizeof(v6));
    png_write_data(v3);
    memcpy(&v3[3].__jmpbuf[2], a2, sizeof(v3[3].__jmpbuf[2]));
    png_reset_crc((int)v3);
    return png_calculate_crc((int)v3, (int)a2, 4);
  }
  return result;
}


// ===== 697644 png_write_pCAL =====
int __fastcall png_write_pCAL(
        struct __jmp_buf_tag *a1,
        const char *a2,
        int a3,
        int a4,
        int a5,
        int a6,
        const char *a7,
        int a8)
{
  int v10; // r6
  int v11; // r8
  int v12; // r4
  size_t v13; // r0
  int v14; // r5
  char *v15; // r7
  int v16; // r11
  int v17; // r9
  int v18; // r4
  size_t v19; // r0
  int v20; // r4
  int i; // r5
  int v23; // [sp+4h] [bp-38h]
  void *v26; // [sp+24h] [bp-18h] BYREF
  _BYTE v27[4]; // [sp+28h] [bp-14h] BYREF
  _BYTE v28[8]; // [sp+2Ch] [bp-10h] BYREF

  v10 = a6;
  v11 = a8;
  if ( a5 > 3 )
    png_warning((int)a1, "Unrecognized equation type for pCAL chunk");
  v12 = png_check_keyword(a1, a2, &v26) + 1;
  v13 = LC_API_STRLEN_0(a7);
  if ( a6 )
    ++v13;
  v23 = v13;
  v14 = v12 + v13 + 10;
  v15 = (char *)png_malloc(a1, 4 * a6);
  if ( a6 > 0 )
  {
    v16 = 0;
    v17 = v12;
    v18 = 0;
    do
    {
      v19 = LC_API_STRLEN_0(*(const char **)(a8 + v18));
      if ( a6 - 1 != v16 )
        ++v19;
      ++v16;
      *(_DWORD *)&v15[v18] = v19;
      v14 += v19;
      v18 += 4;
    }
    while ( v16 != a6 );
    v12 = v17;
    v10 = a6;
    v11 = a8;
  }
  png_write_chunk_start((int)a1, png_pCAL, v14);
  png_write_chunk_data(a1, (int)v26, v12);
  png_save_int_32(v27, a3);
  png_save_int_32(v28, a4);
  v28[4] = a5;
  v28[5] = v10;
  png_write_chunk_data(a1, (int)v27, 10);
  png_write_chunk_data(a1, (int)a7, v23);
  png_free((int)a1, v26);
  if ( v10 > 0 )
  {
    v20 = 0;
    for ( i = 0; i != v10; ++i )
    {
      png_write_chunk_data(a1, *(_DWORD *)(v11 + v20), *(_DWORD *)&v15[v20]);
      v20 += 4;
    }
  }
  png_free((int)a1, v15);
  return png_write_chunk_end((int)a1);
}


// ===== 69783c png_write_tEXt =====
void __fastcall png_write_tEXt(struct __jmp_buf_tag *a1, const char *a2, const char *a3)
{
  size_t v5; // r0
  size_t v6; // r8
  int v7; // r8
  size_t v8; // r7
  void *v9; // [sp+4h] [bp-4h] BYREF

  if ( a2 && (v5 = png_check_keyword(a1, a2, &v9), (v6 = v5) != 0) )
  {
    if ( a3 && *a3 )
    {
      v7 = v5 + 1;
      v8 = LC_API_STRLEN_0(a3);
      png_write_chunk_start((int)a1, png_tEXt, v8 + v7);
      png_write_chunk_data(a1, (int)v9, v7);
      if ( v8 )
        png_write_chunk_data(a1, (int)a3, v8);
    }
    else
    {
      png_write_chunk_start((int)a1, png_tEXt, v5 + 1);
      png_write_chunk_data(a1, (int)v9, v6 + 1);
    }
    png_write_chunk_end((int)a1);
    png_free((int)a1, v9);
  }
  else
  {
    png_warning((int)a1, "Empty keyword in tEXt chunk");
  }
}


// ===== 697934 png_write_zTXt =====
void __fastcall png_write_zTXt(struct __jmp_buf_tag *a1, const char *a2, const char *a3, int a4, int a5)
{
  size_t v7; // r7
  bool v8; // zf
  size_t v9; // r0
  int v10; // r0
  _DWORD v11[5]; // [sp+Ch] [bp-1Ch] BYREF
  char *v12; // [sp+20h] [bp-8h] BYREF
  _BYTE v13[4]; // [sp+24h] [bp-4h] BYREF

  memset(v11, 0, sizeof(v11));
  if ( a2 && (v7 = png_check_keyword(a1, a2, (void **)&v12)) != 0 )
  {
    if ( !a3 )
      goto LABEL_8;
    v8 = a5 == -1;
    if ( a5 != -1 )
      v8 = *a3 == 0;
    if ( v8 )
    {
LABEL_8:
      png_write_tEXt(a1, v12, a3);
      png_free((int)a1, v12);
    }
    else
    {
      v9 = LC_API_STRLEN_0(a3);
      v10 = png_text_compress((int)a1, (int)a3, v9, a5, v11);
      png_write_chunk_start((int)a1, png_zTXt, v7 + 2 + v10);
      png_write_chunk_data(a1, (int)v12, v7 + 1);
      png_free((int)a1, v12);
      v13[0] = a5;
      png_write_chunk_data(a1, (int)v13, 1);
      png_write_compressed_data_out(a1, (int)v11);
      png_write_chunk_end((int)a1);
    }
  }
  else
  {
    png_warning((int)a1, "Empty keyword in zTXt chunk");
    png_free((int)a1, v12);
  }
}


// ===== 697a70 png_write_hIST =====
int __fastcall png_write_hIST(int a1, int a2, int a3)
{
  int v6; // r7
  int v7; // r4
  _BYTE v9[4]; // [sp+4h] [bp-4h] BYREF

  if ( *(unsigned __int16 *)(a1 + 472) < a3 )
    return png_warning(a1, "Invalid number of histogram entries specified");
  v6 = 2 * a3;
  png_write_chunk_start(a1, png_hIST, 2 * a3);
  if ( a3 > 0 )
  {
    v7 = 0;
    do
    {
      png_save_uint_16(v9, *(_WORD *)(a2 + v7));
      v7 += 2;
      png_write_chunk_data((struct __jmp_buf_tag *)a1, (int)v9, 2);
    }
    while ( v7 != v6 );
  }
  return png_write_chunk_end(a1);
}


// ===== 697b14 png_write_sPLT =====
void __fastcall png_write_sPLT(struct __jmp_buf_tag *a1, int a2)
{
  int v2; // r10
  const char *v4; // r1
  int v5; // r10
  int v7; // r6
  size_t v8; // r0
  size_t v9; // r4
  unsigned int v10; // r4
  unsigned int v11; // r4
  unsigned int v12; // r3
  void *v13; // [sp+14h] [bp-18h] BYREF
  _BYTE v14[2]; // [sp+18h] [bp-14h] BYREF
  _BYTE v15[2]; // [sp+1Ah] [bp-12h] BYREF
  _BYTE v16[2]; // [sp+1Ch] [bp-10h] BYREF
  _BYTE v17[2]; // [sp+1Eh] [bp-Eh] BYREF
  _BYTE v18[4]; // [sp+20h] [bp-Ch] BYREF

  v2 = *(unsigned __int8 *)(a2 + 4);
  v4 = *(const char **)a2;
  if ( v2 == 8 )
    v5 = 6;
  else
    v5 = 10;
  v7 = *(_DWORD *)(a2 + 12);
  if ( v4 && (v8 = png_check_keyword(a1, v4, &v13), (v9 = v8) != 0) )
  {
    png_write_chunk_start((int)a1, png_sPLT, v7 * v5 + 2 + v8);
    png_write_chunk_data(a1, (int)v13, v9 + 1);
    png_write_chunk_data(a1, a2 + 4, 1);
    v10 = *(_DWORD *)(a2 + 8);
    if ( v10 < v10 + 10 * *(_DWORD *)(a2 + 12) )
    {
      v11 = v10 + 10;
      do
      {
        if ( *(_BYTE *)(a2 + 4) == 8 )
        {
          v14[0] = *(_WORD *)(v11 - 10);
          v14[1] = *(_WORD *)(v11 - 8);
          v15[0] = *(_WORD *)(v11 - 6);
          v15[1] = *(_WORD *)(v11 - 4);
          png_save_uint_16(v16, *(_WORD *)(v11 - 2));
        }
        else
        {
          png_save_uint_16(v14, *(_WORD *)(v11 - 10));
          png_save_uint_16(v15, *(_WORD *)(v11 - 8));
          png_save_uint_16(v16, *(_WORD *)(v11 - 6));
          png_save_uint_16(v17, *(_WORD *)(v11 - 4));
          png_save_uint_16(v18, *(_WORD *)(v11 - 2));
        }
        png_write_chunk_data(a1, (int)v14, v5);
        v12 = v11;
        v11 += 10;
      }
      while ( v12 < *(_DWORD *)(a2 + 8) + 10 * *(_DWORD *)(a2 + 12) );
    }
    png_write_chunk_end((int)a1);
    png_free((int)a1, v13);
  }
  else
  {
    png_warning((int)a1, "Empty keyword in sPLT chunk");
  }
}


// ===== 697cf4 png_write_iCCP =====
void __fastcall png_write_iCCP(struct __jmp_buf_tag *a1, const char *a2, int a3, unsigned __int8 *a4, int a5)
{
  int v8; // r10
  int v9; // r2
  size_t v10; // r6
  int v11; // r3
  int v12; // r8
  _DWORD v13[5]; // [sp+8h] [bp-1Ch] BYREF
  _BYTE *v14; // [sp+1Ch] [bp-8h] BYREF

  memset(v13, 0, sizeof(v13));
  v8 = a5;
  if ( a2 && (v10 = png_check_keyword(a1, a2, (void **)&v14)) != 0 )
  {
    if ( a3 )
    {
      png_warning((int)a1, "Unknown compression type in iCCP chunk");
      if ( !a4 )
        goto LABEL_14;
    }
    else if ( !a4 )
    {
      goto LABEL_14;
    }
    if ( a5 <= 3 )
    {
      v11 = 0;
    }
    else
    {
      v9 = a4[2];
      v11 = a4[3] | (*a4 << 24) | (a4[1] << 16);
    }
    if ( a5 > 3 )
      v11 |= v9 << 8;
    if ( v11 <= a5 )
    {
      if ( v11 < a5 )
      {
        v8 = v11;
        png_warning((int)a1, "Truncating profile to actual length in iCCP chunk");
      }
      if ( v8 )
      {
        v12 = png_text_compress((int)a1, (int)a4, v8, 0, v13);
        png_write_chunk_start((int)a1, png_iCCP, v12 + v10 + 2);
        v14[v10 + 1] = 0;
        png_write_chunk_data(a1, (int)v14, v10 + 2);
        if ( v12 )
          png_write_compressed_data_out(a1, (int)v13);
        goto LABEL_15;
      }
LABEL_14:
      png_write_chunk_start((int)a1, png_iCCP, v10 + 2);
      v14[v10 + 1] = 0;
      png_write_chunk_data(a1, (int)v14, v10 + 2);
LABEL_15:
      png_write_chunk_end((int)a1);
      png_free((int)a1, v14);
      return;
    }
    png_warning((int)a1, "Embedded profile length too large in iCCP chunk");
  }
  else
  {
    png_warning((int)a1, "Empty keyword in iCCP chunk");
  }
}


// ===== 697ec0 png_write_PLTE =====
int __fastcall png_write_PLTE(int a1, int a2, unsigned __int64 a3)
{
  int v4; // r4
  int result; // r0
  int v7; // r7
  int v8; // r4
  int v9; // r2
  char v10; // lr
  char v11; // r3
  char v12; // r12
  _BYTE v13[4]; // [sp+4h] [bp-4h] BYREF

  HIDWORD(a3) = *(_DWORD *)(a1 + 752) ^ 1;
  if ( (_DWORD)a3 )
    HIDWORD(a3) = 0;
  else
    a3 &= 0x100000000uLL;
  v4 = a3;
  if ( a3 > 0x100 )
  {
    if ( *(_BYTE *)(a1 + 486) != 3 )
      return png_warning(a1, "Invalid number of colors in palette");
    png_error((struct __jmp_buf_tag *)a1, "Invalid number of colors in palette");
  }
  if ( (*(_BYTE *)(a1 + 486) & 2) == 0 )
    return png_warning(a1, "Ignoring request to write a PLTE chunk in grayscale PNG");
  *(_WORD *)(a1 + 472) = v4;
  v7 = 3 * v4;
  png_write_chunk_start(a1, png_PLTE, 3 * v4);
  if ( v4 )
  {
    v8 = 0;
    do
    {
      v9 = a2 + v8;
      v10 = *(_BYTE *)(a2 + v8);
      v8 += 3;
      v11 = *(_BYTE *)(v9 + 2);
      v12 = *(_BYTE *)(v9 + 1);
      v13[0] = v10;
      v13[1] = v12;
      v13[2] = v11;
      png_write_chunk_data((struct __jmp_buf_tag *)a1, (int)v13, 3);
    }
    while ( v7 != v8 );
  }
  result = png_write_chunk_end(a1);
  *(_DWORD *)(a1 + 296) |= 2u;
  return result;
}


// ===== 697fe8 png_write_chunk =====
int __fastcall png_write_chunk(int result, const void *a2, int a3, int a4)
{
  struct __jmp_buf_tag *v4; // r4

  v4 = (struct __jmp_buf_tag *)result;
  if ( result )
  {
    png_write_chunk_start(result, a2, a4);
    png_write_chunk_data(v4, a3, a4);
    return png_write_chunk_end((int)v4);
  }
  return result;
}


// ===== 698024 png_write_tIME =====
int __fastcall png_write_tIME(int a1, int a2)
{
  char v4; // r12
  char v5; // r5
  char v6; // r4
  char v7; // lr
  _BYTE v9[8]; // [sp+0h] [bp-8h] BYREF

  if ( (unsigned __int8)(*(_BYTE *)(a2 + 2) - 1) > 0xBu
    || *(unsigned __int8 *)(a2 + 3) > 0x1Fu
    || !*(_BYTE *)(a2 + 3)
    || *(unsigned __int8 *)(a2 + 4) > 0x17u
    || *(unsigned __int8 *)(a2 + 6) > 0x3Cu )
  {
    return png_warning(a1, "Invalid time specified for tIME chunk");
  }
  png_save_uint_16(v9, *(_WORD *)a2);
  v4 = *(_BYTE *)(a2 + 6);
  v5 = *(_BYTE *)(a2 + 3);
  v6 = *(_BYTE *)(a2 + 4);
  v7 = *(_BYTE *)(a2 + 5);
  v9[2] = *(_BYTE *)(a2 + 2);
  v9[3] = v5;
  v9[4] = v6;
  v9[5] = v7;
  v9[6] = v4;
  return png_write_chunk(a1, png_tIME, (int)v9, 7);
}


// ===== 6980f4 png_write_pHYs =====
int __fastcall png_write_pHYs(int a1, int a2, int a3, int a4)
{
  char v4; // r6
  _BYTE v9[4]; // [sp+0h] [bp-10h] BYREF
  _BYTE v10[8]; // [sp+4h] [bp-Ch] BYREF

  v4 = a4;
  if ( a4 > 1 )
    png_warning(a1, "Unrecognized unit type for pHYs chunk");
  png_save_uint_32(v9, a2);
  png_save_uint_32(v10, a3);
  v10[4] = v4;
  return png_write_chunk(a1, png_pHYs, (int)v9, 9);
}


// ===== 6981a0 png_write_sCAL =====
int __fastcall png_write_sCAL(int a1, char a2, double a3, double a4)
{
  size_t v5; // r0
  size_t v6; // r8
  char *v7; // r10
  size_t v8; // r0
  char v10; // [sp+Ch] [bp-48h] BYREF
  char v11[63]; // [sp+Dh] [bp-47h] BYREF

  v10 = a2;
  snprintf(v11, 0x3Fu, "%12.12e", a3);
  v5 = LC_API_STRLEN_0(v11);
  v6 = v5 + 2;
  v7 = v11 + v5 + 1;
  snprintf(v7, 62 - v5, "%12.12e", a4);
  v8 = LC_API_STRLEN_0(v7);
  return png_write_chunk(a1, png_sCAL, (int)&v10, v6 + v8);
}


// ===== 698260 png_write_oFFs =====
int __fastcall png_write_oFFs(int a1, int a2, int a3, int a4)
{
  char v4; // r6
  _BYTE v9[4]; // [sp+0h] [bp-10h] BYREF
  _BYTE v10[8]; // [sp+4h] [bp-Ch] BYREF

  v4 = a4;
  if ( a4 > 1 )
    png_warning(a1, "Unrecognized unit type for oFFs chunk");
  png_save_int_32(v9, a2);
  png_save_int_32(v10, a3);
  v10[4] = v4;
  return png_write_chunk(a1, png_oFFs, (int)v9, 9);
}


// ===== 69830c png_write_bKGD =====
int __fastcall png_write_bKGD(int a1, unsigned int a2, int a3)
{
  unsigned int v3; // r6
  int v5; // r1
  _BYTE v7[2]; // [sp+0h] [bp-Ch] BYREF
  _BYTE v8[2]; // [sp+2h] [bp-Ah] BYREF
  _BYTE v9[4]; // [sp+4h] [bp-8h] BYREF

  v3 = a2;
  if ( a3 == 3 )
  {
    if ( *(_WORD *)(a1 + 472) || (*(_DWORD *)(a1 + 752) & 1) == 0 )
    {
      a2 = *(unsigned __int8 *)a2;
      if ( *(unsigned __int16 *)(a1 + 472) < a2 )
        return png_warning(a1, "Invalid background palette index");
    }
    else
    {
      LOBYTE(a2) = *(_BYTE *)a2;
    }
    v7[0] = a2;
    return png_write_chunk(a1, png_bKGD, (int)v7, 1);
  }
  if ( (a3 & 2) != 0 )
  {
    png_save_uint_16(v7, *(_WORD *)(a2 + 2));
    png_save_uint_16(v8, *(_WORD *)(v3 + 4));
    png_save_uint_16(v9, *(_WORD *)(v3 + 6));
    if ( *(_BYTE *)(a1 + 487) == 8 && v8[0] | v7[0] | v9[0] )
      return png_warning(a1, "Ignoring attempt to write 16-bit bKGD chunk when bit_depth is 8");
    else
      return png_write_chunk(a1, png_bKGD, (int)v7, 6);
  }
  else
  {
    v5 = *(unsigned __int16 *)(a2 + 8);
    if ( v5 >= 1 << *(_BYTE *)(a1 + 487) )
    {
      return png_warning(a1, "Ignoring attempt to write bKGD chunk out-of-range for bit_depth");
    }
    else
    {
      png_save_uint_16(v7, v5);
      return png_write_chunk(a1, png_bKGD, (int)v7, 2);
    }
  }
}


// ===== 698478 png_write_tRNS =====
int __fastcall png_write_tRNS(int a1, int a2, int a3, int a4, int a5)
{
  int v8; // r1
  _BYTE v9[2]; // [sp+0h] [bp-Ch] BYREF
  _BYTE v10[2]; // [sp+2h] [bp-Ah] BYREF
  _BYTE v11[8]; // [sp+4h] [bp-8h] BYREF

  if ( a5 == 3 )
  {
    if ( a4 > 0 && a4 <= *(unsigned __int16 *)(a1 + 472) )
      return png_write_chunk(a1, png_tRNS, a2, a4);
    else
      return png_warning(a1, "Invalid number of transparent colors specified");
  }
  else if ( a5 )
  {
    if ( a5 == 2 )
    {
      png_save_uint_16(v9, *(_WORD *)(a3 + 2));
      png_save_uint_16(v10, *(_WORD *)(a3 + 4));
      png_save_uint_16(v11, *(_WORD *)(a3 + 6));
      if ( *(_BYTE *)(a1 + 487) == 8 && v10[0] | v9[0] | v11[0] )
        return png_warning(a1, "Ignoring attempt to write 16-bit tRNS chunk when bit_depth is 8");
      else
        return png_write_chunk(a1, png_tRNS, (int)v9, 6);
    }
    else
    {
      return png_warning(a1, "Can't write tRNS with an alpha channel");
    }
  }
  else
  {
    v8 = *(unsigned __int16 *)(a3 + 8);
    if ( v8 < 1 << *(_BYTE *)(a1 + 487) )
    {
      png_save_uint_16(v9, v8);
      return png_write_chunk(a1, png_tRNS, (int)v9, 2);
    }
    else
    {
      return png_warning(a1, "Ignoring attempt to write tRNS chunk out-of-range for bit_depth");
    }
  }
}


// ===== 6985e0 png_write_cHRM_fixed =====
int __fastcall png_write_cHRM_fixed(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9)
{
  bool v10; // cc
  _BYTE v15[4]; // [sp+4h] [bp-28h] BYREF
  _BYTE v16[4]; // [sp+8h] [bp-24h] BYREF
  _BYTE v17[4]; // [sp+Ch] [bp-20h] BYREF
  _BYTE v18[4]; // [sp+10h] [bp-1Ch] BYREF
  _BYTE v19[4]; // [sp+14h] [bp-18h] BYREF
  _BYTE v20[4]; // [sp+18h] [bp-14h] BYREF
  _BYTE v21[4]; // [sp+1Ch] [bp-10h] BYREF
  _BYTE v22[4]; // [sp+20h] [bp-Ch] BYREF

  v10 = a2 <= 80000;
  if ( a2 <= 80000 )
    v10 = a3 <= 80000;
  if ( v10 && a3 + a2 <= 100000 )
  {
    png_save_uint_32(v15, a2);
    png_save_uint_32(v16, a3);
    if ( a5 + a4 > 100000 )
    {
      return png_warning(a1, "Invalid cHRM fixed red point specified");
    }
    else
    {
      png_save_uint_32(v17, a4);
      png_save_uint_32(v18, a5);
      if ( a7 + a6 > 100000 )
      {
        return png_warning(a1, "Invalid fixed cHRM green point specified");
      }
      else
      {
        png_save_uint_32(v19, a6);
        png_save_uint_32(v20, a7);
        if ( a9 + a8 > 100000 )
        {
          return png_warning(a1, "Invalid fixed cHRM blue point specified");
        }
        else
        {
          png_save_uint_32(v21, a8);
          png_save_uint_32(v22, a9);
          return png_write_chunk(a1, png_cHRM, (int)v15, 32);
        }
      }
    }
  }
  else
  {
    png_warning(a1, "Invalid fixed cHRM white point specified");
    return fprintf((FILE *)&_sF + 2, "white_x=%ld, white_y=%ld\n", a2, a3);
  }
}


// ===== 69879c png_write_cHRM =====
int __fastcall png_write_cHRM(
        int a1,
        double a2,
        double a3,
        double a4,
        double a5,
        double a6,
        double a7,
        double a8,
        double a9)
{
  _BYTE v13[4]; // [sp+Ch] [bp-24h] BYREF
  _BYTE v14[4]; // [sp+10h] [bp-20h] BYREF
  _BYTE v15[4]; // [sp+14h] [bp-1Ch] BYREF
  _BYTE v16[4]; // [sp+18h] [bp-18h] BYREF
  _BYTE v17[4]; // [sp+1Ch] [bp-14h] BYREF
  _BYTE v18[4]; // [sp+20h] [bp-10h] BYREF
  _BYTE v19[4]; // [sp+24h] [bp-Ch] BYREF
  _BYTE v20[4]; // [sp+28h] [bp-8h] BYREF

  if ( a2 < 0.0 || a2 > 0.8 || a3 < 0.0 || a3 > 0.8 || a2 + a3 > 1.0 )
  {
    png_warning(a1, "Invalid cHRM white point specified");
    return fprintf((FILE *)&_sF + 2, "white_x=%f, white_y=%f\n", a2, a3);
  }
  else
  {
    png_save_uint_32(v13, (unsigned int)(a2 * 100000.0 + 0.5));
    png_save_uint_32(v14, (unsigned int)(a3 * 100000.0 + 0.5));
    if ( a4 < 0.0 || a5 < 0.0 || a4 + a5 > 1.0 )
    {
      return png_warning(a1, "Invalid cHRM red point specified");
    }
    else
    {
      png_save_uint_32(v15, (unsigned int)(a4 * 100000.0 + 0.5));
      png_save_uint_32(v16, (unsigned int)(a5 * 100000.0 + 0.5));
      if ( a6 >= 0.0 && a7 >= 0.0 && a6 + a7 <= 1.0 )
      {
        png_save_uint_32(v17, (unsigned int)(a6 * 100000.0 + 0.5));
        png_save_uint_32(v18, (unsigned int)(a7 * 100000.0 + 0.5));
        if ( a8 >= 0.0 && a9 >= 0.0 && a8 + a9 <= 1.0 )
        {
          png_save_uint_32(v19, (unsigned int)(a8 * 100000.0 + 0.5));
          png_save_uint_32(v20, (unsigned int)(a9 * 100000.0 + 0.5));
          return png_write_chunk(a1, png_cHRM, (int)v13, 32);
        }
        else
        {
          return png_warning(a1, "Invalid cHRM blue point specified");
        }
      }
      else
      {
        return png_warning(a1, "Invalid cHRM green point specified");
      }
    }
  }
}


// ===== 698c0c png_write_sBIT =====
int __fastcall png_write_sBIT(int a1, unsigned __int8 *a2, int a3)
{
  unsigned int v3; // lr
  unsigned int v4; // r4
  unsigned int v5; // r5
  int v6; // r3
  unsigned int v7; // r2
  _BYTE v9[8]; // [sp+4h] [bp-8h] BYREF

  if ( (a3 & 2) != 0 )
  {
    if ( a3 == 3 )
      v3 = 8;
    else
      v3 = *(unsigned __int8 *)(a1 + 488);
    if ( !*a2 )
      return png_warning(a1, "Invalid sBIT depth specified");
    if ( v3 < *a2 )
      return png_warning(a1, "Invalid sBIT depth specified");
    v4 = a2[1];
    if ( !a2[1] )
      return png_warning(a1, "Invalid sBIT depth specified");
    if ( v3 < v4 )
      return png_warning(a1, "Invalid sBIT depth specified");
    v5 = a2[2];
    if ( !a2[2] || v3 < v5 )
      return png_warning(a1, "Invalid sBIT depth specified");
    v9[0] = *a2;
    v9[1] = v4;
    v9[2] = v5;
    v6 = 3;
  }
  else
  {
    if ( !a2[3] || *(unsigned __int8 *)(a1 + 488) < (unsigned int)a2[3] )
      return png_warning(a1, "Invalid sBIT depth specified");
    v9[0] = a2[3];
    v6 = 1;
  }
  if ( (a3 & 4) == 0 )
    return png_write_chunk(a1, png_sBIT, (int)v9, v6);
  v7 = a2[4];
  if ( a2[4] && *(unsigned __int8 *)(a1 + 488) >= v7 )
  {
    v9[v6++] = v7;
    return png_write_chunk(a1, png_sBIT, (int)v9, v6);
  }
  return png_warning(a1, "Invalid sBIT depth specified");
}


// ===== 698d2c png_write_sRGB =====
int __fastcall png_write_sRGB(int a1, int a2)
{
  char v2; // r5
  _BYTE v5[4]; // [sp+4h] [bp-4h] BYREF

  v2 = a2;
  if ( a2 > 3 )
    png_warning(a1, "Invalid sRGB rendering intent specified");
  v5[0] = v2;
  return png_write_chunk(a1, png_sRGB, (int)v5, 1);
}


// ===== 698d88 png_write_gAMA_fixed =====
int __fastcall png_write_gAMA_fixed(int a1, int a2)
{
  _BYTE v4[4]; // [sp+4h] [bp-4h] BYREF

  png_save_uint_32(v4, a2);
  return png_write_chunk(a1, png_gAMA, (int)v4, 4);
}


// ===== 698dd0 png_write_gAMA =====
int __fastcall png_write_gAMA(int a1, double a2)
{
  _BYTE v5[4]; // [sp+4h] [bp-4h] BYREF

  png_save_uint_32(v5, (unsigned int)(a2 * 100000.0 + 0.5));
  return png_write_chunk(a1, png_gAMA, (int)v5, 4);
}


// ===== 698e48 png_write_IEND =====
int __fastcall png_write_IEND(int a1)
{
  int result; // r0

  result = png_write_chunk(a1, png_IEND, 0, 0);
  *(_DWORD *)(a1 + 296) |= 0x10u;
  return result;
}


// ===== 698e84 png_write_IDAT =====
int __fastcall png_write_IDAT(int a1, unsigned __int8 *a2, unsigned int a3)
{
  unsigned int v6; // r2
  int result; // r0
  unsigned int v8; // r0
  unsigned int v9; // r12
  unsigned int v10; // r1
  unsigned int v11; // r3
  unsigned int v12; // r12
  _BOOL4 v13; // r0
  _BOOL4 v14; // r0
  int v15; // r3
  int v16; // r1

  if ( (*(_DWORD *)(a1 + 296) & 4) == 0 && !*(_BYTE *)(a1 + 800) )
  {
    v6 = *a2;
    if ( (v6 & 0xF) == 8 && (v6 & 0xF0) <= 0x70 )
    {
      if ( a3 > 1 )
      {
        v8 = *(_DWORD *)(a1 + 396);
        if ( v8 <= 0x3FFF )
        {
          v9 = *(_DWORD *)(a1 + 392);
          if ( v9 <= 0x3FFF )
          {
            v10 = v6 >> 4;
            v11 = 1 << ((v6 >> 4) + 7);
            v12 = v8 * ((v9 * *(unsigned __int8 *)(a1 + 487) * *(unsigned __int8 *)(a1 + 490) + 15) >> 3);
            v13 = v12 <= v11;
            if ( v11 <= 0xFF )
              v13 = 0;
            if ( v13 )
            {
              do
              {
                v11 >>= 1;
                v14 = v11 > 0xFF;
                if ( v12 > v11 )
                  v14 = 0;
                --v10;
              }
              while ( v14 );
            }
            v15 = (16 * v10) | 8;
            if ( v6 != (unsigned __int8)v15 )
            {
              v16 = a2[1] & 0xE0;
              *a2 = v15;
              a2[1] = v16 + 31 - (v16 + (v15 << 8)) % 0x1Fu;
            }
          }
        }
      }
    }
    else
    {
      png_error((struct __jmp_buf_tag *)a1, "Invalid zlib compression method or flags in IDAT");
    }
  }
  result = png_write_chunk(a1, png_IDAT, (int)a2, a3);
  *(_DWORD *)(a1 + 296) |= 4u;
  return result;
}


// ===== 698ff8 png_write_finish_row =====
_DWORD *__fastcall png_write_finish_row(_DWORD *result)
{
  unsigned int v1; // r2
  unsigned int v2; // r3
  int v3; // r4
  int v4; // r0
  int v5; // r3
  const char *v6; // r1
  struct __jmp_buf_tag *v7; // r0
  unsigned int v8; // r3
  unsigned int v9; // r2
  int v10; // r3
  unsigned int v11; // r5
  unsigned int v12; // r7
  unsigned int v13; // r1
  unsigned int v14; // r0
  int v15; // r0
  unsigned int v16; // r3
  int v17; // r3
  int v18; // r2
  bool v19; // cc
  unsigned int v20; // r2

  v1 = result[100];
  v2 = result[105] + 1;
  result[105] = v2;
  v3 = (int)result;
  if ( v2 < v1 )
    return result;
  if ( *((_BYTE *)result + 483) )
  {
    v10 = result[76];
    result[105] = 0;
    if ( (v10 & 2) != 0 )
    {
      v16 = (unsigned __int8)(*((_BYTE *)result + 484) + 1);
      *((_BYTE *)result + 484) = v16;
      if ( v16 <= 6 )
      {
LABEL_21:
        result = *(_DWORD **)(v3 + 424);
        if ( result )
        {
          v17 = *(unsigned __int8 *)(v3 + 491) * *(unsigned __int8 *)(v3 + 488);
          v18 = *(_DWORD *)(v3 + 392);
          v19 = v17 <= 7;
          if ( v17 <= 7 )
            v18 *= v17;
          else
            v17 = (unsigned int)v17 >> 3;
          if ( v19 )
            v20 = (unsigned int)(v18 + 7) >> 3;
          else
            v20 = v18 * v17;
          return LC_API_MEMSET_0(result, 0, v20 + 1);
        }
        return result;
      }
    }
    else
    {
      LOBYTE(v11) = *((_BYTE *)result + 484);
      while ( 1 )
      {
        v11 = (unsigned __int8)(v11 + 1);
        *(_BYTE *)(v3 + 484) = v11;
        if ( v11 > 6 )
          break;
        v12 = (*(_DWORD *)(v3 + 392) - 1 + png_pass_inc[v11] - png_pass_start[v11]) / (unsigned int)png_pass_inc[v11];
        v13 = png_pass_yinc[v11];
        v14 = *(_DWORD *)(v3 + 396) - 1 + v13 - png_pass_ystart[v11];
        *(_DWORD *)(v3 + 404) = v12;
        v15 = v14 / v13;
        *(_DWORD *)(v3 + 400) = v15;
        if ( v12 && v15 )
          goto LABEL_21;
      }
    }
  }
  while ( 1 )
  {
    while ( 1 )
    {
      v4 = deflate(v3 + 308, 4);
      if ( v4 )
        break;
      while ( !*(_DWORD *)(v3 + 324) )
      {
        png_write_IDAT(v3, *(unsigned __int8 **)(v3 + 364), *(_DWORD *)(v3 + 368));
        v5 = *(_DWORD *)(v3 + 368);
        *(_DWORD *)(v3 + 320) = *(_DWORD *)(v3 + 364);
        *(_DWORD *)(v3 + 324) = v5;
        v4 = deflate(v3 + 308, 4);
        if ( v4 )
          goto LABEL_6;
      }
    }
LABEL_6:
    if ( v4 == 1 )
      break;
    v6 = *(const char **)(v3 + 332);
    v7 = (struct __jmp_buf_tag *)v3;
    if ( !v6 )
    {
      v7 = (struct __jmp_buf_tag *)v3;
      v6 = "zlib error";
    }
    png_error(v7, v6);
  }
  v8 = *(_DWORD *)(v3 + 324);
  v9 = *(_DWORD *)(v3 + 368);
  if ( v8 < v9 )
    png_write_IDAT(v3, *(unsigned __int8 **)(v3 + 364), v9 - v8);
  result = (_DWORD *)deflateReset(v3 + 308);
  *(_DWORD *)(v3 + 352) = 0;
  return result;
}


// ===== 699218 png_write_filtered_row =====
_DWORD *__fastcall png_write_filtered_row(int a1, int a2)
{
  int v3; // r3
  int v4; // r5
  const char *v5; // r1
  struct __jmp_buf_tag *v6; // r0
  int v7; // r2
  int v8; // r3
  int v9; // r3
  int v10; // r2
  _DWORD *result; // r0
  unsigned int v12; // r3
  unsigned int v13; // r2

  v3 = *(_DWORD *)(a1 + 452) + 1;
  *(_DWORD *)(a1 + 308) = a2;
  *(_DWORD *)(a1 + 312) = v3;
  v4 = a1 + 308;
  do
  {
    while ( 1 )
    {
      if ( deflate(v4, 0) )
      {
        v5 = *(const char **)(a1 + 332);
        v6 = (struct __jmp_buf_tag *)a1;
        if ( !v5 )
        {
          v6 = (struct __jmp_buf_tag *)a1;
          v5 = "zlib error";
        }
        png_error(v6, v5);
      }
      if ( !*(_DWORD *)(a1 + 324) )
        break;
      if ( !*(_DWORD *)(a1 + 312) )
        goto LABEL_9;
    }
    png_write_IDAT(a1, *(unsigned __int8 **)(a1 + 364), *(_DWORD *)(a1 + 368));
    v7 = *(_DWORD *)(a1 + 364);
    *(_DWORD *)(a1 + 324) = *(_DWORD *)(a1 + 368);
    v8 = *(_DWORD *)(a1 + 312);
    *(_DWORD *)(a1 + 320) = v7;
  }
  while ( v8 );
LABEL_9:
  v9 = *(_DWORD *)(a1 + 424);
  if ( v9 )
  {
    v10 = *(_DWORD *)(a1 + 428);
    *(_DWORD *)(a1 + 428) = v9;
    *(_DWORD *)(a1 + 424) = v10;
  }
  result = png_write_finish_row((_DWORD *)a1);
  v12 = *(_DWORD *)(a1 + 528);
  v13 = *(_DWORD *)(a1 + 532) + 1;
  *(_DWORD *)(a1 + 532) = v13;
  if ( v12 )
  {
    if ( v13 >= v12 )
      return (_DWORD *)png_write_flush(a1);
  }
  return result;
}


// ===== 699300 png_write_find_filter =====
_DWORD *__fastcall png_write_find_filter(int a1, int a2)
{
  unsigned int v2; // r9
  unsigned int v3; // r7
  int v4; // r4
  unsigned int v5; // r0
  unsigned int v6; // r2
  int v7; // r5
  int v8; // r12
  _BYTE *v9; // r3
  unsigned int v10; // r6
  int v11; // r1
  int v12; // lr
  _BYTE *v13; // r10
  unsigned int v14; // r8
  unsigned int v15; // r1
  int v16; // lr
  int v17; // r6
  unsigned int v18; // r11
  _BYTE *v19; // r6
  int v20; // lr
  int v21; // r5
  int v22; // r6
  int v23; // r10
  unsigned int v24; // lr
  int v25; // r1
  int v26; // r6
  int v27; // r10
  _BYTE *v28; // r9
  unsigned int v29; // lr
  int v30; // r1
  int v31; // r6
  int v32; // r10
  _BYTE *v33; // r6
  int v34; // r1
  int v35; // r5
  _DWORD *result; // r0
  int kk; // r3
  int v38; // r6
  _BYTE *v39; // r10
  int v40; // r8
  int v41; // r1
  _BYTE *v42; // lr
  int v43; // r1
  char v44; // t1
  _BYTE *v45; // lr
  int v46; // r1
  int v47; // r6
  _BYTE *v48; // r10
  int v49; // r1
  _BYTE *v50; // r6
  int v51; // r9
  unsigned int v52; // r1
  int v53; // r3
  _BYTE *v54; // r11
  int v55; // r12
  int v56; // r8
  int v57; // r5
  signed int v58; // r6
  signed int v59; // r7
  signed int v60; // lr
  bool v61; // cc
  int v62; // r10
  _BYTE *v63; // r7
  int v64; // r6
  int v65; // lr
  int v66; // r1
  int v67; // r1
  int v68; // t1
  unsigned int v69; // r10
  int v70; // r1
  int v71; // lr
  int v72; // r8
  int v73; // lr
  int v74; // lr
  unsigned int v75; // r10
  int v76; // r8
  unsigned int v77; // r1
  int v78; // lr
  int v79; // r6
  _BYTE *v80; // r6
  int v81; // r9
  int v82; // r3
  unsigned int v83; // r12
  _BYTE *v84; // r11
  int v85; // lr
  int v86; // r10
  int v87; // r6
  signed int v88; // r7
  signed int v89; // r8
  signed int v90; // r4
  bool v91; // cc
  int v92; // r10
  unsigned int v93; // r8
  int k; // r1
  int v95; // r10
  int v96; // r10
  unsigned int v97; // r6
  unsigned int v98; // r6
  unsigned int v99; // r8
  int m; // r1
  int v101; // r10
  unsigned int v102; // r1
  int v103; // r10
  unsigned int v104; // lr
  bool v105; // cc
  unsigned int v106; // r10
  int i; // lr
  int v108; // r6
  int v109; // r8
  unsigned int v110; // r6
  unsigned int v111; // r10
  int n; // r1
  int v113; // r6
  int v114; // r8
  int v115; // r6
  int v116; // r8
  unsigned int v117; // r6
  unsigned int v118; // r8
  unsigned int v119; // r10
  int v120; // r1
  int v121; // lr
  int v122; // r6
  unsigned int v123; // lr
  unsigned int v124; // r1
  unsigned int v125; // r10
  unsigned int v126; // r11
  int j; // r1
  int v128; // lr
  unsigned int v129; // lr
  unsigned int v130; // r8
  unsigned int v131; // r7
  unsigned int v132; // r8
  int ii; // r1
  int v134; // lr
  int v135; // r6
  unsigned int v136; // lr
  unsigned int v137; // r1
  unsigned int v138; // r12
  int jj; // r3
  int v140; // r2
  int v141; // r0
  unsigned int v142; // r2
  unsigned int v143; // [sp+0h] [bp-24h]
  int v144; // [sp+0h] [bp-24h]
  _BYTE *v145; // [sp+0h] [bp-24h]
  int v146; // [sp+0h] [bp-24h]
  unsigned int v147; // [sp+4h] [bp-20h]
  int v148; // [sp+4h] [bp-20h]
  int v149; // [sp+8h] [bp-1Ch]
  int v150; // [sp+8h] [bp-1Ch]
  int v151; // [sp+8h] [bp-1Ch]
  int v152; // [sp+8h] [bp-1Ch]
  int v153; // [sp+Ch] [bp-18h]
  int v154; // [sp+Ch] [bp-18h]
  unsigned int v155; // [sp+10h] [bp-14h]
  _BYTE *v156; // [sp+10h] [bp-14h]
  unsigned int v157; // [sp+14h] [bp-10h]
  int v158; // [sp+1Ch] [bp-8h]

  v3 = *(unsigned __int8 *)(a1 + 485);
  v4 = a1;
  v5 = *(_DWORD *)(a2 + 4);
  v6 = (*(unsigned __int8 *)(a2 + 11) + 7) >> 3;
  v7 = *(unsigned __int8 *)(v4 + 697);
  v8 = *(_DWORD *)(v4 + 424);
  v9 = *(_BYTE **)(v4 + 428);
  if ( ((v3 != 8) & (v3 >> 3)) == 0 )
    goto LABEL_79;
  if ( v5 )
  {
    v11 = 1;
    v10 = 0;
    do
    {
      v12 = (unsigned __int8)v9[v11++];
      if ( v12 > 127 )
        v12 = 256 - v12;
      v10 += v12;
    }
    while ( v11 != v5 + 1 );
  }
  else
  {
    v10 = 0;
  }
  if ( *(_BYTE *)(v4 + 696) != 2 )
  {
    v147 = v10;
    goto LABEL_11;
  }
  v69 = (v10 >> 10) & 0x3FFFC0;
  v10 = (unsigned __int16)v10;
  if ( *(_BYTE *)(v4 + 697) )
  {
    v2 = *(_DWORD *)(v4 + 700);
    v70 = 0;
    do
    {
      v71 = *(unsigned __int8 *)(v2 + v70);
      v72 = 2 * v70++;
      if ( !v71 )
      {
        v73 = *(unsigned __int16 *)(*(_DWORD *)(v4 + 704) + v72);
        v69 = (v69 * v73) >> 8;
        v10 = (v10 * v73) >> 8;
      }
    }
    while ( v7 > v70 );
  }
  v74 = **(unsigned __int16 **)(v4 + 712);
  v75 = (v74 * v69) >> 3;
  if ( v75 > 0x3FFFC0 )
  {
LABEL_79:
    v147 = 0x7FFFFFFF;
    if ( v3 != 16 )
      goto LABEL_12;
LABEL_80:
    v38 = *(_DWORD *)(v4 + 432);
    v39 = v9 + 1;
    v40 = v38 + 1;
    if ( v6 )
    {
      v41 = 1;
      do
      {
        *(_BYTE *)(v38 + v41) = v9[v41];
        ++v41;
      }
      while ( v41 != v6 + 1 );
      v39 += v6;
      v40 += v6;
    }
    if ( v5 > v6 )
    {
      v42 = v9;
      v43 = 0;
      do
      {
        v44 = *++v42;
        *(_BYTE *)(v40 + v43) = v39[v43] - v44;
        ++v43;
      }
      while ( v5 > v43 + v6 );
    }
    v145 = *(_BYTE **)(v4 + 432);
LABEL_48:
    if ( v3 == 64 )
    {
      v62 = *(_DWORD *)(v4 + 440);
      v63 = v9 + 1;
      v64 = v62 + 1;
      v65 = v8 + 1;
      if ( v6 )
      {
        v66 = 1;
        do
        {
          *(_BYTE *)(v62 + v66) = v9[v66] - (*(_BYTE *)(v8 + v66) >> 1);
          ++v66;
        }
        while ( v66 != v6 + 1 );
        v64 += v6;
        v63 += v6;
        v65 += v6;
      }
      if ( v5 > v6 )
      {
        v67 = 0;
        do
        {
          v68 = (unsigned __int8)*++v9;
          *(_BYTE *)(v64 + v67) = v63[v67] - ((v68 + (unsigned int)*(unsigned __int8 *)(v65 + v67)) >> 1);
          ++v67;
        }
        while ( v5 > v67 + v6 );
      }
      v145 = *(_BYTE **)(v4 + 440);
      result = png_write_filtered_row(v4, (int)v145);
      goto LABEL_72;
    }
    goto LABEL_49;
  }
  v147 = ((v74 * v10) >> 3) + (v75 << 10);
LABEL_11:
  if ( v3 == 16 )
    goto LABEL_80;
LABEL_12:
  if ( (v3 & 0x10) == 0 )
    goto LABEL_31;
  if ( *(_BYTE *)(v4 + 696) == 2 )
  {
    v118 = (v147 >> 10) & 0x3FFFC0;
    v119 = (unsigned __int16)v147;
    if ( *(_BYTE *)(v4 + 697) )
    {
      v120 = 0;
      do
      {
        if ( *(_BYTE *)(*(_DWORD *)(v4 + 700) + v120) == 1 )
        {
          v121 = *(unsigned __int16 *)(*(_DWORD *)(v4 + 708) + 2 * v120);
          v118 = (v118 * v121) >> 8;
          v119 = (v119 * v121) >> 8;
        }
        ++v120;
      }
      while ( v7 > v120 );
    }
    v122 = *(unsigned __int16 *)(*(_DWORD *)(v4 + 716) + 2);
    v123 = (v122 * v118) >> 3;
    if ( v123 > 0x3FFFC0 )
      v124 = 0x7FFFFFFF;
    else
      v124 = v122 * v119;
    if ( v123 <= 0x3FFFC0 )
      v124 = (v124 >> 3) + (v123 << 10);
    v143 = v124;
  }
  else
  {
    v143 = v147;
  }
  v2 = *(_DWORD *)(v4 + 432);
  v13 = v9 + 1;
  v14 = v2 + 1;
  if ( v6 )
  {
    v16 = 1;
    v15 = 0;
    do
    {
      v17 = (unsigned __int8)v9[v16];
      *(_BYTE *)(v2 + v16++) = v17;
      if ( v17 > 127 )
        v17 = 256 - v17;
      v15 += v17;
    }
    while ( v16 != v6 + 1 );
    v13 += v6;
    v14 += v6;
  }
  else
  {
    v15 = 0;
  }
  if ( v5 > v6 )
  {
    v18 = v143;
    v19 = v9;
    v20 = 0;
    v144 = v7;
    do
    {
      v2 = (unsigned __int8)v13[v20];
      v21 = (unsigned __int8)(v2 - v19[1]);
      *(_BYTE *)(v14 + v20) = v21;
      if ( v21 > 127 )
        v21 = 256 - v21;
      v15 += v21;
      ++v20;
      if ( v18 < v15 )
        break;
      ++v19;
    }
    while ( v5 > v20 + v6 );
    v7 = v144;
  }
  if ( *(_BYTE *)(v4 + 696) == 2 )
  {
    v106 = (v15 >> 10) & 0x3FFFC0;
    v15 = (unsigned __int16)v15;
    if ( v7 )
    {
      for ( i = 0; i < v7; ++i )
      {
        if ( *(_BYTE *)(*(_DWORD *)(v4 + 700) + i) == 1 )
        {
          v2 = *(_DWORD *)(v4 + 708);
          v108 = *(unsigned __int16 *)(v2 + 2 * i);
          v106 = (v106 * v108) >> 8;
          v15 = (v15 * v108) >> 8;
        }
      }
    }
    v109 = *(unsigned __int16 *)(*(_DWORD *)(v4 + 716) + 2);
    v110 = (v109 * v106) >> 3;
    if ( v110 > 0x3FFFC0 )
      v15 = 0x7FFFFFFF;
    else
      v15 *= v109;
    if ( v110 <= 0x3FFFC0 )
      v15 = (v15 >> 3) + (v110 << 10);
  }
  if ( v147 > v15 )
  {
    v147 = v15;
    v145 = *(_BYTE **)(v4 + 432);
  }
  else
  {
LABEL_31:
    v145 = v9;
  }
  if ( v3 != 32 )
  {
    if ( (v3 & 0x20) != 0 )
    {
      v22 = *(unsigned __int8 *)(v4 + 696);
      if ( v22 == 2 )
      {
        v125 = (v147 >> 10) & 0x3FFFC0;
        v126 = (unsigned __int16)v147;
        if ( v7 )
        {
          for ( j = 0; j < v7; ++j )
          {
            if ( *(_BYTE *)(*(_DWORD *)(v4 + 700) + j) == 2 )
            {
              v2 = *(_DWORD *)(v4 + 708);
              v128 = *(unsigned __int16 *)(v2 + 2 * j);
              v125 = (v125 * v128) >> 8;
              v126 = (v126 * v128) >> 8;
            }
          }
        }
        v129 = *(unsigned __int16 *)(*(_DWORD *)(v4 + 716) + 4);
        v130 = (v129 * v125) >> 3;
        if ( v130 > 0x3FFFC0 )
          v2 = 0x7FFFFFFF;
        else
          v129 *= v126;
        if ( v130 <= 0x3FFFC0 )
          v2 = (v129 >> 3) + (v130 << 10);
      }
      else
      {
        v2 = v147;
      }
      v23 = *(_DWORD *)(v4 + 436);
      if ( v5 )
      {
        v25 = 1;
        v24 = 0;
        do
        {
          v26 = (unsigned __int8)(v9[v25] - *(_BYTE *)(v8 + v25));
          *(_BYTE *)(v23 + v25) = v26;
          if ( v26 > 127 )
            v26 = 256 - v26;
          v24 += v26;
          ++v25;
        }
        while ( v2 >= v24 && v25 != v5 + 1 );
        v22 = *(unsigned __int8 *)(v4 + 696);
      }
      else
      {
        v24 = 0;
      }
      if ( v22 == 2 )
      {
        v93 = (v24 >> 10) & 0x3FFFC0;
        v24 = (unsigned __int16)v24;
        if ( v7 )
        {
          for ( k = 0; k < v7; ++k )
          {
            if ( *(_BYTE *)(*(_DWORD *)(v4 + 700) + k) == 2 )
            {
              v95 = *(unsigned __int16 *)(*(_DWORD *)(v4 + 704) + 2 * k);
              v93 = (v93 * v95) >> 8;
              v24 = (v24 * v95) >> 8;
            }
          }
        }
        v96 = *(unsigned __int16 *)(*(_DWORD *)(v4 + 712) + 4);
        v97 = (v96 * v93) >> 3;
        if ( v97 > 0x3FFFC0 )
          v24 = 0x7FFFFFFF;
        else
          v24 *= v96;
        if ( v97 <= 0x3FFFC0 )
          v24 = (v24 >> 3) + (v97 << 10);
      }
      if ( v24 < v147 )
      {
        v147 = v24;
        v145 = *(_BYTE **)(v4 + 436);
      }
    }
    goto LABEL_48;
  }
  v45 = *(_BYTE **)(v4 + 436);
  v145 = v45;
  if ( !v5 )
  {
LABEL_49:
    if ( (v3 & 0x40) != 0 )
    {
      if ( *(_BYTE *)(v4 + 696) == 2 )
      {
        v98 = (v147 >> 10) & 0x3FFFC0;
        v99 = (unsigned __int16)v147;
        if ( v7 )
        {
          for ( m = 0; m < v7; ++m )
          {
            if ( *(_BYTE *)(*(_DWORD *)(v4 + 700) + m) == 3 )
            {
              v101 = *(unsigned __int16 *)(*(_DWORD *)(v4 + 708) + 2 * m);
              v98 = (v98 * v101) >> 8;
              v99 = (v99 * v101) >> 8;
            }
          }
        }
        v102 = 4194240;
        v103 = *(unsigned __int16 *)(*(_DWORD *)(v4 + 716) + 6);
        v104 = (v103 * v98) >> 3;
        v105 = v104 > 0x3FFFC0;
        if ( v104 > 0x3FFFC0 )
          v104 = 0x7FFFFFFF;
        else
          v102 = v103 * v99;
        if ( v105 )
          v155 = v104;
        else
          v102 = (v102 >> 3) + (v104 << 10);
        if ( !v105 )
          v155 = v102;
      }
      else
      {
        v155 = v147;
      }
      v27 = *(_DWORD *)(v4 + 440);
      v149 = v8 + 1;
      v28 = v9 + 1;
      v153 = v27 + 1;
      if ( v6 )
      {
        v30 = 1;
        v29 = 0;
        do
        {
          v31 = (unsigned __int8)(v9[v30] - (*(_BYTE *)(v8 + v30) >> 1));
          *(_BYTE *)(v27 + v30++) = v31;
          if ( v31 > 127 )
            v31 = 256 - v31;
          v29 += v31;
        }
        while ( v30 != v6 + 1 );
        v28 += v6;
        v153 += v6;
        v149 += v6;
      }
      else
      {
        v29 = 0;
      }
      if ( v6 < v5 )
      {
        v32 = v149;
        v33 = v9;
        v34 = 0;
        v150 = v7;
        do
        {
          v35 = (unsigned __int8)(v28[v34]
                                - (((unsigned __int8)v33[1] + (unsigned int)*(unsigned __int8 *)(v32 + v34)) >> 1));
          *(_BYTE *)(v153 + v34) = v35;
          if ( v35 > 127 )
            v35 = 256 - v35;
          v29 += v35;
          ++v34;
          if ( v155 < v29 )
            break;
          ++v33;
        }
        while ( v5 > v34 + v6 );
        v7 = v150;
      }
      if ( *(_BYTE *)(v4 + 696) == 2 )
      {
        v111 = (v29 >> 10) & 0x3FFFC0;
        v29 = (unsigned __int16)v29;
        if ( v7 )
        {
          for ( n = 0; n < v7; ++n )
          {
            v113 = *(unsigned __int8 *)(*(_DWORD *)(v4 + 700) + n);
            v114 = 2 * n;
            if ( !v113 )
            {
              v115 = *(unsigned __int16 *)(*(_DWORD *)(v4 + 704) + v114);
              v111 = (v111 * v115) >> 8;
              v29 = (v29 * v115) >> 8;
            }
          }
        }
        v116 = *(unsigned __int16 *)(*(_DWORD *)(v4 + 712) + 6);
        v117 = (v116 * v111) >> 3;
        if ( v117 > 0x3FFFC0 )
          v29 = 0x7FFFFFFF;
        else
          v29 *= v116;
        if ( v117 <= 0x3FFFC0 )
          v29 = (v29 >> 3) + (v117 << 10);
      }
      if ( v29 < v147 )
      {
        v147 = v29;
        v145 = *(_BYTE **)(v4 + 440);
      }
    }
    goto LABEL_69;
  }
  v46 = 1;
  do
  {
    v45[v46] = v9[v46] - *(_BYTE *)(v8 + v46);
    ++v46;
  }
  while ( v46 != v5 + 1 );
  v145 = *(_BYTE **)(v4 + 436);
LABEL_69:
  if ( v3 == 128 )
  {
    v47 = *(_DWORD *)(v4 + 444);
    v48 = v9 + 1;
    v146 = v8 + 1;
    v148 = v47 + 1;
    if ( v6 )
    {
      v49 = 1;
      do
      {
        *(_BYTE *)(v47 + v49) = v9[v49] - *(_BYTE *)(v8 + v49);
        ++v49;
      }
      while ( v49 != v6 + 1 );
      v48 += v6;
      v146 += v6;
      v148 += v6;
    }
    if ( v5 > v6 )
    {
      v50 = &v9[-v6];
      v51 = v8 - v6;
      v52 = v6 + 1;
      v53 = 0;
      v151 = v7;
      v54 = v50;
      do
      {
        v55 = *(unsigned __int8 *)(v51 + v52);
        v56 = (unsigned __int8)v54[v52];
        v57 = *(unsigned __int8 *)(v146 + v53);
        v58 = abs32(v56 - v55 + v57 - v55);
        v59 = abs32(v56 - v55);
        v60 = abs32(v57 - v55);
        v61 = v60 <= v59;
        if ( v60 <= v59 )
          v61 = v60 <= v58;
        if ( !v61 )
        {
          if ( v59 > v58 )
            LOBYTE(v56) = *(_BYTE *)(v51 + v52);
          else
            LOBYTE(v56) = *(_BYTE *)(v146 + v53);
        }
        ++v52;
        *(_BYTE *)(v148 + v53) = v48[v53] - v56;
        ++v53;
      }
      while ( v5 > v53 + v6 );
      v7 = v151;
    }
  }
  else
  {
    if ( (v3 & 0x80) == 0 )
      goto LABEL_71;
    if ( *(_BYTE *)(v4 + 696) == 2 )
    {
      v131 = (v147 >> 10) & 0x3FFFC0;
      v132 = (unsigned __int16)v147;
      if ( v7 )
      {
        for ( ii = 0; ii < v7; ++ii )
        {
          if ( *(_BYTE *)(*(_DWORD *)(v4 + 700) + ii) == 4 )
          {
            v134 = *(unsigned __int16 *)(*(_DWORD *)(v4 + 708) + 2 * ii);
            v131 = (v131 * v134) >> 8;
            v132 = (v132 * v134) >> 8;
          }
        }
      }
      v135 = *(unsigned __int16 *)(*(_DWORD *)(v4 + 716) + 8);
      v136 = (v135 * v131) >> 3;
      if ( v136 > 0x3FFFC0 )
        v137 = 0x7FFFFFFF;
      else
        v137 = v135 * v132;
      if ( v136 <= 0x3FFFC0 )
        v137 = (v137 >> 3) + (v136 << 10);
      v157 = v137;
    }
    else
    {
      v157 = v147;
    }
    v76 = *(_DWORD *)(v4 + 444);
    v156 = v9 + 1;
    v154 = v76 + 1;
    v152 = v8 + 1;
    if ( v6 )
    {
      v78 = 1;
      v77 = 0;
      do
      {
        v79 = (unsigned __int8)(v9[v78] - *(_BYTE *)(v8 + v78));
        *(_BYTE *)(v76 + v78++) = v79;
        if ( v79 > 127 )
          v79 = 256 - v79;
        v77 += v79;
      }
      while ( v78 != v6 + 1 );
      v154 += v6;
      v156 += v6;
      v152 += v6;
    }
    else
    {
      v77 = 0;
    }
    if ( v5 > v6 )
    {
      v80 = &v9[-v6];
      v81 = v8 - v6;
      v82 = 0;
      v83 = v6 + 1;
      v158 = v4;
      v84 = v80;
      do
      {
        v85 = *(unsigned __int8 *)(v81 + v83);
        v86 = (unsigned __int8)v84[v83];
        v87 = *(unsigned __int8 *)(v152 + v82);
        v88 = abs32(v86 - v85 + v87 - v85);
        v89 = abs32(v86 - v85);
        v90 = abs32(v87 - v85);
        v91 = v90 <= v89;
        if ( v90 <= v89 )
          v91 = v90 <= v88;
        if ( !v91 )
        {
          if ( v89 > v88 )
            LOBYTE(v86) = *(_BYTE *)(v81 + v83);
          else
            LOBYTE(v86) = *(_BYTE *)(v152 + v82);
        }
        v92 = (unsigned __int8)(v156[v82] - v86);
        *(_BYTE *)(v154 + v82) = v92;
        if ( v92 > 127 )
          v92 = 256 - v92;
        v77 += v92;
        ++v82;
        if ( v157 < v77 )
          break;
        ++v83;
      }
      while ( v5 > v82 + v6 );
      v4 = v158;
    }
    if ( *(_BYTE *)(v4 + 696) == 2 )
    {
      v138 = (v77 >> 10) & 0x3FFFC0;
      v77 = (unsigned __int16)v77;
      if ( v7 )
      {
        for ( jj = 0; jj < v7; ++jj )
        {
          if ( *(_BYTE *)(*(_DWORD *)(v4 + 700) + jj) == 4 )
          {
            v140 = *(unsigned __int16 *)(*(_DWORD *)(v4 + 704) + 2 * jj);
            v138 = (v138 * v140) >> 8;
            v77 = (v77 * v140) >> 8;
          }
        }
      }
      v141 = *(unsigned __int16 *)(*(_DWORD *)(v4 + 712) + 8);
      v142 = (v141 * v138) >> 3;
      if ( v142 > 0x3FFFC0 )
        v77 = 0x7FFFFFFF;
      else
        v77 *= v141;
      if ( v142 <= 0x3FFFC0 )
        v77 = (v77 >> 3) + (v142 << 10);
    }
    if ( v77 >= v147 )
    {
LABEL_71:
      result = png_write_filtered_row(v4, (int)v145);
      goto LABEL_72;
    }
  }
  v145 = *(_BYTE **)(v4 + 444);
  result = png_write_filtered_row(v4, (int)v145);
LABEL_72:
  if ( *(_BYTE *)(v4 + 697) )
  {
    if ( v7 > 1 )
    {
      for ( kk = 1; kk < v7; ++kk )
        *(_BYTE *)(*(_DWORD *)(v4 + 700) + kk) = *(_BYTE *)(*(_DWORD *)(v4 + 700) + kk - 1);
    }
    else
    {
      v7 = 1;
    }
    *(_BYTE *)(*(_DWORD *)(v4 + 700) + v7) = *v145;
  }
  return result;
}


// ===== 699f84 png_write_IHDR =====
int __fastcall png_write_IHDR(int a1, int a2, int a3, unsigned int a4, int a5, int a6, int a7, unsigned int a8)
{
  char v11; // r11
  char v12; // r9
  bool v13; // zf
  bool v14; // zf
  char v15; // r3
  char v16; // r7
  int v17; // r2
  unsigned int v18; // r11
  unsigned int v19; // r2
  int v20; // r1
  int v21; // r3
  int v22; // r6
  int v23; // lr
  int v24; // r2
  int v25; // r0
  int v26; // r1
  bool v28; // zf
  bool v29; // zf
  int v30; // [sp+10h] [bp-24h]
  _BYTE v31[4]; // [sp+1Ch] [bp-18h] BYREF
  _BYTE v32[12]; // [sp+20h] [bp-14h] BYREF

  v11 = a4;
  v12 = a7;
  switch ( a5 )
  {
    case 0:
      if ( a4 <= 0x10 && ((1 << a4) & 0x10116) != 0 )
        *(_BYTE *)(a1 + 490) = 1;
      else
        png_error((struct __jmp_buf_tag *)a1, "Invalid bit depth for grayscale image");
      goto LABEL_7;
    case 2:
      v28 = a4 == 16;
      if ( a4 != 16 )
        v28 = a4 == 8;
      if ( !v28 )
        png_error((struct __jmp_buf_tag *)a1, "Invalid bit depth for RGB image");
      *(_BYTE *)(a1 + 490) = 3;
      goto LABEL_7;
    case 3:
      if ( a4 <= 8 && ((1 << a4) & 0x116) != 0 )
        *(_BYTE *)(a1 + 490) = 1;
      else
        png_error((struct __jmp_buf_tag *)a1, "Invalid bit depth for paletted image");
      goto LABEL_7;
    case 4:
      v29 = a4 == 16;
      if ( a4 != 16 )
        v29 = a4 == 8;
      if ( !v29 )
        png_error((struct __jmp_buf_tag *)a1, "Invalid bit depth for grayscale+alpha image");
      *(_BYTE *)(a1 + 490) = 2;
      goto LABEL_7;
    case 6:
      v13 = a4 == 16;
      if ( a4 != 16 )
        v13 = a4 == 8;
      if ( !v13 )
        png_error((struct __jmp_buf_tag *)a1, "Invalid bit depth for RGBA image");
      *(_BYTE *)(a1 + 490) = 4;
LABEL_7:
      if ( !a6 )
        goto LABEL_8;
      goto LABEL_49;
    default:
      png_error((struct __jmp_buf_tag *)a1, "Invalid image color type specified");
      if ( a6 )
LABEL_49:
        png_warning(a1, "Invalid compression type specified");
LABEL_8:
      if ( (*(_DWORD *)(a1 + 752) & 4) == 0 || (*(_DWORD *)(a1 + 296) & 0x1000) != 0 )
        goto LABEL_15;
      v14 = a5 == 6;
      if ( a5 != 6 )
        v14 = a5 == 2;
      if ( !v14 || a7 != 64 )
      {
LABEL_15:
        if ( a7 )
        {
          v12 = 0;
          png_warning(a1, "Invalid filter type specified");
        }
      }
      if ( a8 > 1 )
      {
        v30 = 1;
        png_warning(a1, "Invalid interlace type specified");
      }
      else
      {
        v30 = (unsigned __int8)a8;
      }
      v15 = *(_BYTE *)(a1 + 490);
      v16 = v11;
      *(_BYTE *)(a1 + 800) = 0;
      *(_BYTE *)(a1 + 487) = v11;
      *(_BYTE *)(a1 + 486) = a5;
      v17 = v30;
      v18 = (unsigned __int8)(v15 * v11);
      *(_BYTE *)(a1 + 483) = v30;
      if ( v18 <= 7 )
        v17 = a2 * v18;
      *(_BYTE *)(a1 + 489) = v18;
      if ( v18 <= 7 )
        v19 = (unsigned int)(v17 + 7) >> 3;
      else
        v19 = a2 * (v18 >> 3);
      *(_DWORD *)(a1 + 408) = v19;
      *(_BYTE *)(a1 + 491) = v15;
      *(_BYTE *)(a1 + 760) = v12;
      *(_DWORD *)(a1 + 392) = a2;
      *(_DWORD *)(a1 + 396) = a3;
      *(_DWORD *)(a1 + 404) = a2;
      *(_BYTE *)(a1 + 488) = v16;
      png_save_uint_32(v31, a2);
      png_save_uint_32(v32, a3);
      v32[4] = v16;
      v32[5] = a5;
      v32[6] = 0;
      v32[7] = v12;
      v32[8] = v30;
      png_write_chunk(a1, png_IHDR, (int)v31, 13);
      v20 = *(unsigned __int8 *)(a1 + 485);
      *(_DWORD *)(a1 + 348) = a1;
      *(_DWORD *)(a1 + 340) = png_zalloc;
      *(_DWORD *)(a1 + 344) = png_zfree;
      if ( !v20 )
      {
        if ( *(_BYTE *)(a1 + 486) == 3 || *(unsigned __int8 *)(a1 + 487) <= 7u )
          *(_BYTE *)(a1 + 485) = 8;
        else
          *(_BYTE *)(a1 + 485) = -8;
      }
      v21 = *(_DWORD *)(a1 + 300);
      if ( (v21 & 1) == 0 )
        *(_DWORD *)(a1 + 388) = *(unsigned __int8 *)(a1 + 485) != 8;
      if ( (v21 & 2) == 0 )
        *(_DWORD *)(a1 + 372) = -1;
      if ( (v21 & 4) == 0 )
        *(_DWORD *)(a1 + 384) = 8;
      if ( (v21 & 8) == 0 )
        *(_DWORD *)(a1 + 380) = 15;
      v22 = *(_DWORD *)(a1 + 384);
      v23 = *(_DWORD *)(a1 + 388);
      if ( (v21 & 0x10) != 0 )
      {
        v24 = *(_DWORD *)(a1 + 376);
      }
      else
      {
        v24 = 8;
        *(_DWORD *)(a1 + 376) = 8;
      }
      v25 = deflateInit2_(a1 + 308, *(_DWORD *)(a1 + 372), v24, *(_DWORD *)(a1 + 380), v22, v23, "1.2.3", 56);
      if ( v25 )
      {
        switch ( v25 )
        {
          case -6:
            png_error((struct __jmp_buf_tag *)a1, "zlib failed to initialize compressor -- version error");
            break;
          case -2:
            png_error((struct __jmp_buf_tag *)a1, "zlib failed to initialize compressor -- stream error");
            break;
          case -4:
            png_error((struct __jmp_buf_tag *)a1, "zlib failed to initialize compressor -- mem error");
            break;
        }
        png_error((struct __jmp_buf_tag *)a1, "zlib failed to initialize compressor");
      }
      v26 = *(_DWORD *)(a1 + 364);
      *(_DWORD *)(a1 + 324) = *(_DWORD *)(a1 + 368);
      *(_DWORD *)(a1 + 296) = 1;
      *(_DWORD *)(a1 + 320) = v26;
      *(_DWORD *)(a1 + 352) = 0;
      return 1;
  }
}


// ===== 69a40c glitch::res::File::Init(void) =====
int __fastcall glitch::res::File::Init(glitch::res::File *this)
{
  int v1; // r3
  int v2; // r4
  int v3; // r12
  int v5; // r12
  int v6; // r12
  int v7; // r4
  int v8; // r6
  unsigned int v9; // r4
  unsigned int i; // r5
  int v11; // r7
  unsigned int v12; // r8
  unsigned int v13; // r6
  int v14; // r11
  unsigned int v15; // r12
  _DWORD *v16; // r10
  unsigned int v17; // r9
  signed int v18; // r10
  int v19; // r4
  int v20; // r10
  int v21; // r8
  unsigned int v22; // r9
  unsigned int v23; // r5
  int v24; // r8
  int v25; // r10
  int v26; // r7
  int v27; // r4
  int v28; // r11
  unsigned int v29; // r9
  unsigned int *v30; // r6
  unsigned int v31; // r4
  unsigned int v32; // r8
  unsigned int v33; // r7
  unsigned int v34; // r12
  bool v35; // cc
  _DWORD *v36; // r8
  _DWORD *v37; // r10
  int v38; // r8
  int j; // r4
  int v40; // r9
  unsigned int v41; // r2
  int v42; // r0
  bool v43; // zf
  int v44; // r1
  int v45; // [sp+Ch] [bp-1Ch]
  int v46; // [sp+Ch] [bp-1Ch]
  _DWORD *v47; // [sp+10h] [bp-18h]
  _DWORD *v48; // [sp+14h] [bp-14h]
  int v49; // [sp+20h] [bp-8h]
  _DWORD *v50; // [sp+24h] [bp-4h]
  int v51; // [sp+24h] [bp-4h]

  v1 = *(_DWORD *)this;
  v2 = *(_DWORD *)(*(_DWORD *)this + 12);
  *((_DWORD *)this + 3) = v2;
  *((_DWORD *)this + 10) = *(_DWORD *)(v1 + 56);
  v3 = *(_DWORD *)(v1 + 44);
  *((_DWORD *)this + 4) = v3;
  *((_DWORD *)this + 6) = v2 - v3 - *(_DWORD *)(v1 + 56);
  *((_DWORD *)this + 5) = *(_DWORD *)(v1 + 48);
  glitch::res::File::ExternalFilePtr[*(_DWORD *)(v1 + 20) >> 31] = v1;
  if ( *(_BYTE *)v1 != 66 || *(_BYTE *)(v1 + 1) != 82 || *(_BYTE *)(v1 + 2) != 69 || *(_BYTE *)(v1 + 3) != 83 )
    return -1;
  v5 = *(unsigned __int16 *)(v1 + 6);
  if ( (v5 & 0x8000) == 0 )
  {
    *(_WORD *)(v1 + 6) = ~((unsigned int)~(v5 << 17) >> 17);
    v6 = *((_DWORD *)this + 2);
    if ( v6 )
    {
      v7 = *(_DWORD *)(v1 + 8);
      *(_DWORD *)(v1 + 24) = v6;
      v8 = *(_DWORD *)(v1 + 16);
      glitch::res::File::SizeOfHeader = v7;
      v48 = (_DWORD *)(v7 + 4 * v8);
      glitch::res::File::ExternalFileOffsetTableSize[*(_DWORD *)(v1 + 20) >> 31] = v48;
      v9 = *(_DWORD *)(v1 + 16);
      for ( i = 0; ; ++i )
      {
        if ( i >= v9 )
          return 0;
        v11 = *(_DWORD *)(v1 + 24);
        v12 = *(_DWORD *)(v1 + 20);
        v13 = *(_DWORD *)(v11 + 4 * i);
        v14 = 4 * i;
        v15 = v13 - v12;
        v47 = v48;
        if ( v13 - v12 > *((_DWORD *)this + 3) )
        {
          v15 = *(_DWORD *)(v11 + 4 * i);
          v16 = (_DWORD *)glitch::res::File::ExternalFileOffsetTableSize[v13 >> 31];
          v49 = 1;
          v50 = (_DWORD *)glitch::res::File::ExternalFilePtr[v13 >> 31];
          v12 = v13 & 0x80000000;
        }
        else
        {
          v16 = v48;
          v50 = (_DWORD *)v1;
          v49 = 0;
        }
        if ( (unsigned int)v16 > v15 )
        {
          v16 = v50;
          *(_DWORD *)(v11 + 4 * i) = (char *)v50 + v13 - v12;
        }
        else
        {
          v17 = *((_DWORD *)this + 6);
          if ( v15 <= v17 )
          {
            *(_DWORD *)(v11 + 4 * i) = (char *)v50 + glitch::res::File::SizeOfHeader - (_DWORD)v16 - v12 + v13;
          }
          else
          {
            v18 = *((_DWORD *)this + 5);
            if ( v18 >= (int)((-4 - v17 + v15) >> 3) )
              continue;
            v51 = v18 - 1;
            v19 = *((_DWORD *)this + 7);
            v20 = 4;
            v21 = 0;
            v22 = i;
            while ( 1 )
            {
              v45 = v19 + v20;
              if ( v21 >= v51 )
                break;
              v23 = *(_DWORD *)(v19 + v20);
              v20 += 8;
              if ( v15 > v23 && v15 < *(_DWORD *)(v45 + 8) )
                break;
              ++v21;
            }
            i = v22;
            v24 = *(_DWORD *)(*((_DWORD *)this + 8) + 4 * v21) - *(_DWORD *)(v19 + 8 * v21 + 4);
            *(_DWORD *)(v11 + v14) = v24 + v13;
            v46 = *(_DWORD *)(v24 + v13);
            v16 = *((_DWORD **)this + 6);
            if ( v46 - *(_DWORD *)(v1 + 20) > (unsigned int)v16 )
            {
              v25 = 4;
              v26 = 0;
              v27 = *((_DWORD *)this + 7);
              while ( 1 )
              {
                v28 = v27 + v25;
                if ( v26 >= *((_DWORD *)this + 5) - 1 )
                  break;
                v29 = *(_DWORD *)(v27 + v25);
                v25 += 8;
                if ( v15 > v29 && v15 < *(_DWORD *)(v28 + 8) )
                  break;
                ++v26;
              }
              *(_DWORD *)(v24 + v13) = *(_DWORD *)(*((_DWORD *)this + 8) + 4 * v26)
                                     - *(_DWORD *)(v27 + 8 * v26 + 4)
                                     + v46;
              v9 = *(_DWORD *)(v1 + 16);
              continue;
            }
          }
        }
        if ( v49 || !i )
          goto LABEL_45;
        v30 = *(unsigned int **)(v11 + v14);
        v31 = *(_DWORD *)(v1 + 20);
        v32 = *((_DWORD *)this + 3);
        v33 = *v30;
        v34 = *v30 - v31;
        v35 = v34 > v32;
        if ( v34 <= v32 )
        {
          v36 = (_DWORD *)v1;
        }
        else
        {
          v34 = *v30;
          v31 = *v30 >> 31;
          v16 = glitch::res::File::ExternalFileOffsetTableSize;
          v36 = glitch::res::File::ExternalFilePtr;
        }
        if ( v35 )
        {
          v37 = (_DWORD *)v16[v31];
          v36 = (_DWORD *)v36[v31];
          v31 = v34 & 0x80000000;
          v47 = v37;
        }
        if ( (unsigned int)v47 > v34 )
        {
          *v30 = (unsigned int)v36 + v33 - v31;
LABEL_45:
          v9 = *(_DWORD *)(v1 + 16);
          continue;
        }
        if ( v34 <= *((_DWORD *)this + 6) )
        {
          *v30 = (unsigned int)v36 + glitch::res::File::SizeOfHeader - (_DWORD)v47 - v31 + v33;
          v9 = *(_DWORD *)(v1 + 16);
        }
        else
        {
          v38 = 4;
          for ( j = 0; j < *((_DWORD *)this + 5); ++j )
          {
            v40 = *(_DWORD *)(*((_DWORD *)this + 7) + v38);
            v38 += 8;
            if ( v40 == v34 )
              break;
          }
          *v30 = *(_DWORD *)(*((_DWORD *)this + 8) + 4 * j) - v34 + v33;
          v9 = *(_DWORD *)(v1 + 16);
        }
      }
    }
    v41 = 0;
    *(_DWORD *)(v1 + 24) += v1;
    while ( v41 < *(_DWORD *)(v1 + 16) )
    {
      v42 = *(_DWORD *)(v1 + 24);
      v43 = v41 == 0;
      v44 = *(_DWORD *)(v42 + 4 * v41);
      *(_DWORD *)(v42 + 4 * v41) = v1 + v44;
      if ( v41 )
        v42 = *(_DWORD *)(v1 + v44);
      ++v41;
      if ( !v43 )
        *(_DWORD *)(v1 + v44) = v1 + v42;
    }
  }
  return 0;
}


// ===== 69a860 `global constructor keyed to'.._tools_ResFile_src_resFile.cpp =====
void `global constructor keyed to'.._tools_ResFile_src_resFile.cpp()
{
  dword_9F75D0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F75CC = 1056964608;
}


// ===== 69a880 glitch::res::File::Init(glitch::res::FileReader *) =====
int __fastcall glitch::res::File::Init(glitch::res::File *this, glitch::res::FileReader *a2)
{
  _DWORD *v4; // r7
  int v5; // r10
  int v6; // r1
  size_t v7; // r5
  int v8; // r3
  void *v9; // r10
  void *v10; // r11
  int v11; // r3
  void *v12; // r0
  int v13; // r3
  void *v14; // r0
  int v15; // r2
  int v16; // r5
  int v17; // r9
  int v18; // r1
  int v19; // r2
  char v20; // r3
  int v21; // r0
  int v22; // r2
  bool v23; // r7
  void *v24; // r6
  int v25; // r5
  int v26; // r12
  int v27; // r0
  int v28; // r1
  int v29; // r3
  char v30; // r9
  int v31; // r0
  void **v33; // r5
  int v34; // r2
  int v35; // r3
  int v36; // r0
  int v37; // lr
  int v38; // r0
  int v39; // [sp+4h] [bp-148h]
  void *v40; // [sp+14h] [bp-138h] BYREF
  bool v41; // [sp+18h] [bp-134h]
  void *v42; // [sp+1Ch] [bp-130h]
  int v43; // [sp+20h] [bp-12Ch]
  int v44; // [sp+24h] [bp-128h]
  int v45; // [sp+28h] [bp-124h]
  int v46; // [sp+2Ch] [bp-120h]
  int v47; // [sp+30h] [bp-11Ch]
  int v48; // [sp+34h] [bp-118h]
  char v49; // [sp+38h] [bp-114h]
  int v50; // [sp+3Ch] [bp-110h]
  int v51; // [sp+40h] [bp-10Ch] BYREF
  char v52[256]; // [sp+44h] [bp-108h] BYREF

  *((_DWORD *)this + 3) = (*(int (__fastcall **)(glitch::res::FileReader *))(*(_DWORD *)a2 + 20))(a2);
  v4 = operator new(0x3Cu, 0);
  (*(void (__fastcall **)(glitch::res::FileReader *, _DWORD *, int))(*(_DWORD *)a2 + 12))(a2, v4, 60);
  v5 = v4[9];
  if ( !v4[5] )
  {
    v51 = 0;
    (*(void (__fastcall **)(glitch::res::FileReader *, int, _DWORD))(*(_DWORD *)a2 + 16))(a2, v5, 0);
    (*(void (__fastcall **)(glitch::res::FileReader *, int *, int))(*(_DWORD *)a2 + 12))(a2, &v51, 4);
    if ( v51 > 1 )
    {
      (*(void (__fastcall **)(glitch::res::FileReader *, int, _DWORD))(*(_DWORD *)a2 + 16))(a2, v5 + 4, 0);
      (*(void (__fastcall **)(glitch::res::FileReader *, char *, unsigned int))(*(_DWORD *)a2 + 12))(
        a2,
        v52,
        (v51 + 3) & 0xFFFFFFFC);
      glitch::collada::CResFileManager::get(
        (glitch::collada::CResFileManager *)glitch::collada::CResFileManager::Inst,
        v52,
        1);
    }
  }
  (*(void (__fastcall **)(glitch::res::FileReader *, int, _DWORD))(*(_DWORD *)a2 + 16))(a2, 60, 0);
  v6 = v4[11];
  v7 = v4[4];
  v8 = *((_DWORD *)this + 3);
  *((_DWORD *)this + 4) = v6;
  v7 *= 4;
  *((_DWORD *)this + 5) = v4[12];
  *((_DWORD *)this + 6) = v8 - v7 - v6 - v4[14];
  *((_BYTE *)this + 36) = v4[13] != 0;
  v9 = operator new[](v7, 0);
  v10 = GlitchAlloc(*((_DWORD *)this + 6), 1024);
  memcpy(v10, v4, 0x3Cu);
  (*(void (__fastcall **)(glitch::res::FileReader *, void *, size_t))(*(_DWORD *)a2 + 12))(a2, v9, v7);
  (*(void (__fastcall **)(glitch::res::FileReader *, int, int))(*(_DWORD *)a2 + 12))(
    a2,
    (int)v10 + 60,
    *((_DWORD *)this + 6) - 60);
  v11 = *((_DWORD *)this + 4);
  *((_DWORD *)this + 8) = 0;
  if ( v11 > 0 )
  {
    v12 = operator new[](4 * *((_DWORD *)this + 5), 0);
    v13 = *((_DWORD *)this + 5);
    *((_DWORD *)this + 8) = v12;
    v14 = operator new[](8 * v13, 0);
    v15 = *((_DWORD *)this + 5);
    *((_DWORD *)this + 7) = v14;
    (*(void (__fastcall **)(glitch::res::FileReader *, void *, int))(*(_DWORD *)a2 + 12))(a2, v14, 8 * v15);
    if ( *((_BYTE *)this + 36) )
    {
      if ( *((int *)this + 5) > 0 )
      {
        v16 = 0;
        do
        {
          v17 = *((_DWORD *)this + 8);
          *(_DWORD *)(v17 + 4 * v16) = operator new[](*(_DWORD *)(*((_DWORD *)this + 7) + 8 * v16), 0);
          (*(void (__fastcall **)(glitch::res::FileReader *, _DWORD, _DWORD))(*(_DWORD *)a2 + 12))(
            a2,
            *(_DWORD *)(*((_DWORD *)this + 8) + 4 * v16),
            *(_DWORD *)(*((_DWORD *)this + 7) + 8 * v16));
          ++v16;
        }
        while ( *((_DWORD *)this + 5) > v16 );
      }
    }
    else
    {
      v33 = *((void ***)this + 8);
      *v33 = operator new[](*((_DWORD *)this + 4) - 8 * *((_DWORD *)this + 5), 0);
      (*(void (__fastcall **)(glitch::res::FileReader *, _DWORD, int))(*(_DWORD *)a2 + 12))(
        a2,
        **((_DWORD **)this + 8),
        *((_DWORD *)this + 4) - 8 * *((_DWORD *)this + 5));
      if ( *((int *)this + 5) > 1 )
      {
        v34 = 12;
        v35 = 1;
        do
        {
          v36 = *((_DWORD *)this + 7);
          v37 = *(_DWORD *)(v36 + 4);
          v38 = *(_DWORD *)(v36 + v34);
          v34 += 8;
          *(_DWORD *)(*((_DWORD *)this + 8) + 4 * v35++) = **((_DWORD **)this + 8) + v38 - v37;
        }
        while ( *((_DWORD *)this + 5) > v35 );
      }
    }
  }
  LC_API_FREE_0(v4);
  v18 = *((_DWORD *)this + 7);
  v19 = *((_DWORD *)this + 8);
  v20 = *((_BYTE *)this + 36);
  v41 = 0;
  v47 = v18;
  v48 = v19;
  v49 = v20;
  v40 = v10;
  v42 = v9;
  if ( v10 )
  {
    v21 = glitch::res::File::Init((glitch::res::File *)&v40);
    v10 = v40;
    v41 = v21 == 0;
  }
  v22 = v47;
  v23 = v41;
  v39 = v48;
  v24 = v42;
  v25 = v43;
  v26 = v44;
  v27 = v45;
  v28 = v46;
  v29 = v50;
  v30 = v49;
  *(_DWORD *)this = v10;
  *((_DWORD *)this + 10) = v29;
  *((_BYTE *)this + 4) = v23;
  *((_DWORD *)this + 2) = v24;
  *((_DWORD *)this + 3) = v25;
  *((_DWORD *)this + 4) = v26;
  *((_DWORD *)this + 5) = v27;
  *((_DWORD *)this + 6) = v28;
  *((_DWORD *)this + 7) = v22;
  *((_BYTE *)this + 36) = v30;
  *((_DWORD *)this + 8) = v39;
  if ( v9 )
    operator delete[](v9);
  v31 = *((unsigned __int8 *)this + 4);
  *((_DWORD *)this + 2) = 0;
  return v31 ^ 1;
}


// ===== 69ac8c glitch::ps::PDomain::~PDomain() =====
void __fastcall glitch::ps::PDomain::~PDomain(glitch::ps::PDomain *this)
{
  ;
}


// ===== 69ac90 glitch::ps::PDPoint::~PDPoint() =====
void __fastcall glitch::ps::PDPoint::~PDPoint(glitch::ps::PDPoint *this)
{
  ;
}


// ===== 69ac94 glitch::ps::PDPoint::getType(void) =====
int __fastcall glitch::ps::PDPoint::getType(glitch::ps::PDPoint *this)
{
  return 3;
}


// ===== 69ac9c glitch::ps::PDLine::~PDLine() =====
void __fastcall glitch::ps::PDLine::~PDLine(glitch::ps::PDLine *this)
{
  ;
}


// ===== 69aca0 glitch::ps::PDLine::getType(void) =====
int __fastcall glitch::ps::PDLine::getType(glitch::ps::PDLine *this)
{
  return 4;
}


// ===== 69aca8 glitch::ps::PDBox::~PDBox() =====
void __fastcall glitch::ps::PDBox::~PDBox(glitch::ps::PDBox *this)
{
  ;
}


// ===== 69acac glitch::ps::PDBox::getType(void) =====
int __fastcall glitch::ps::PDBox::getType(glitch::ps::PDBox *this)
{
  return 0;
}


// ===== 69acb4 glitch::ps::PDCylinder::~PDCylinder() =====
void __fastcall glitch::ps::PDCylinder::~PDCylinder(glitch::ps::PDCylinder *this)
{
  ;
}


// ===== 69acb8 glitch::ps::PDCylinder::getType(void) =====
int __fastcall glitch::ps::PDCylinder::getType(glitch::ps::PDCylinder *this)
{
  return 2;
}


// ===== 69acc0 glitch::ps::PDCone::~PDCone() =====
void __fastcall glitch::ps::PDCone::~PDCone(glitch::ps::PDCone *this)
{
  ;
}


// ===== 69acc4 glitch::ps::PDCone::getType(void) =====
int __fastcall glitch::ps::PDCone::getType(glitch::ps::PDCone *this)
{
  return 5;
}


// ===== 69accc glitch::ps::PDSphere::~PDSphere() =====
void __fastcall glitch::ps::PDSphere::~PDSphere(glitch::ps::PDSphere *this)
{
  ;
}


// ===== 69acd0 glitch::ps::PDSphere::getType(void) =====
int __fastcall glitch::ps::PDSphere::getType(glitch::ps::PDSphere *this)
{
  return 1;
}


// ===== 69acd8 glitch::ps::PDBlob::~PDBlob() =====
void __fastcall glitch::ps::PDBlob::~PDBlob(glitch::ps::PDBlob *this)
{
  ;
}


// ===== 69acdc glitch::ps::PDBlob::getType(void) =====
int __fastcall glitch::ps::PDBlob::getType(glitch::ps::PDBlob *this)
{
  return 6;
}


// ===== 69ace4 glitch::ps::PDPoint::PDPoint(glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::ps::PDPoint::PDPoint(_DWORD *result, _DWORD *a2)
{
  result[3] = 0;
  result[1] = 0;
  result[2] = 0;
  *result = &off_985830;
  result[1] = *a2;
  result[2] = a2[1];
  result[3] = a2[2];
  return result;
}


// ===== 69ad38 glitch::ps::PDPoint::PDPoint(glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::ps::PDPoint::PDPoint(_DWORD *result, _DWORD *a2)
{
  result[3] = 0;
  result[1] = 0;
  result[2] = 0;
  *result = &off_985830;
  result[1] = *a2;
  result[2] = a2[1];
  result[3] = a2[2];
  return result;
}


// ===== 69ad8c glitch::ps::PDPoint::within(glitch::core::vector3d<float> const&) =====
bool __fastcall glitch::ps::PDPoint::within(float *a1, float *a2)
{
  return a1[1] == *a2 && a1[2] == a2[1] && a1[3] == a2[2];
}


// ===== 69ade8 glitch::ps::PDPoint::generate(glitch::ps::PSRandom &) =====
_DWORD *__fastcall glitch::ps::PDPoint::generate(_DWORD *result, _DWORD *a2)
{
  *result = a2[1];
  result[1] = a2[2];
  result[2] = a2[3];
  return result;
}


// ===== 69ae04 glitch::ps::PDPoint::transform(glitch::core::CMatrix4<float> const&) =====
float __fastcall glitch::ps::PDPoint::transform(float *a1, float *a2)
{
  float v3; // r6
  float v4; // r5
  float result; // r0

  v3 = a2[13];
  v4 = a2[14];
  a1[1] = a1[1] + a2[12];
  a1[2] = a1[2] + v3;
  result = a1[3] + v4;
  a1[3] = result;
  return result;
}


// ===== 69ae4c glitch::ps::PDPoint::size(void) =====
int __fastcall glitch::ps::PDPoint::size(glitch::ps::PDPoint *this)
{
  return 1065353216;
}


// ===== 69ae54 glitch::ps::PDLine::generate(glitch::ps::PSRandom &) =====
glitch::ps::PDLine *__fastcall glitch::ps::PDLine::generate(
        glitch::ps::PDLine *this,
        glitch::ps::PSRandom *a2,
        glitch::ps::PSRandom *a3)
{
  float v5; // r0
  float v6; // r8
  float v7; // r7
  float v8; // r0

  v5 = glitch::ps::PSRandom::Rand(a3);
  v6 = (float)(v5 * *((float *)a2 + 5)) + *((float *)a2 + 2);
  v7 = (float)(v5 * *((float *)a2 + 6)) + *((float *)a2 + 3);
  v8 = (float)(v5 * *((float *)a2 + 4)) + *((float *)a2 + 1);
  *((float *)this + 1) = v6;
  *(float *)this = v8;
  *((float *)this + 2) = v7;
  return this;
}


// ===== 69aec4 glitch::ps::PDLine::size(void) =====
int __fastcall glitch::ps::PDLine::size(glitch::ps::PDLine *this)
{
  return *((_DWORD *)this + 10);
}


// ===== 69aecc glitch::ps::PDBox::PDBox(glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&) =====
int __fastcall glitch::ps::PDBox::PDBox(int a1, float *a2, float *a3)
{
  float v4; // r5
  float v5; // r8
  bool v6; // zf
  float v7; // r1
  float v8; // r0
  float v9; // r6

  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)a1 = &off_9857E0;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 88) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 60) = 0;
  *(_DWORD *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)(a1 + 72) = 0;
  *(_DWORD *)(a1 + 76) = 0;
  *(_DWORD *)(a1 + 80) = 0;
  *(_DWORD *)(a1 + 84) = 0;
  v4 = *(float *)&a2;
  *(float *)(a1 + 4) = *a2;
  *(float *)(a1 + 8) = a2[1];
  *(float *)(a1 + 12) = a2[2];
  *(float *)(a1 + 16) = *a3;
  *(float *)(a1 + 20) = a3[1];
  *(float *)(a1 + 24) = a3[2];
  if ( *a3 < *a2 )
  {
    *(float *)(a1 + 4) = *a3;
    *(float *)(a1 + 16) = *a2;
  }
  if ( a3[1] < a2[1] )
  {
    *(float *)(a1 + 8) = a3[1];
    *(float *)(a1 + 20) = a2[1];
  }
  v5 = a3[2];
  v6 = v5 >= a2[2];
  if ( v5 < a2[2] )
  {
    *(float *)(a1 + 12) = v5;
    v4 = a2[2];
  }
  v7 = *(float *)(a1 + 4);
  v8 = *(float *)(a1 + 16);
  if ( v6 )
  {
    v4 = *(float *)(a1 + 24);
    v5 = *(float *)(a1 + 12);
  }
  else
  {
    *(float *)(a1 + 24) = v4;
  }
  v9 = *(float *)(a1 + 20) - *(float *)(a1 + 8);
  *(_DWORD *)(a1 + 84) = 0;
  *(float *)(a1 + 36) = v4 - v5;
  *(float *)(a1 + 28) = v8 - v7;
  *(float *)(a1 + 32) = v9;
  *(float *)(a1 + 56) = v8 - v7;
  *(_DWORD *)(a1 + 60) = 0;
  *(_DWORD *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)(a1 + 76) = 0;
  *(_DWORD *)(a1 + 80) = 0;
  *(float *)(a1 + 88) = v4 - v5;
  *(float *)(a1 + 52) = v4 - v5;
  *(float *)(a1 + 44) = v8 - v7;
  *(float *)(a1 + 72) = v9;
  *(float *)(a1 + 48) = v9;
  *(float *)(a1 + 40) = (float)(v4 - v5) + (float)((float)(v8 - v7) + v9);
  return a1;
}


// ===== 69b074 glitch::ps::PDBox::PDBox(glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&) =====
int __fastcall glitch::ps::PDBox::PDBox(int a1, float *a2, float *a3)
{
  float v4; // r5
  float v5; // r8
  bool v6; // zf
  float v7; // r1
  float v8; // r0
  float v9; // r6

  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)a1 = &off_9857E0;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 88) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 60) = 0;
  *(_DWORD *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)(a1 + 72) = 0;
  *(_DWORD *)(a1 + 76) = 0;
  *(_DWORD *)(a1 + 80) = 0;
  *(_DWORD *)(a1 + 84) = 0;
  v4 = *(float *)&a2;
  *(float *)(a1 + 4) = *a2;
  *(float *)(a1 + 8) = a2[1];
  *(float *)(a1 + 12) = a2[2];
  *(float *)(a1 + 16) = *a3;
  *(float *)(a1 + 20) = a3[1];
  *(float *)(a1 + 24) = a3[2];
  if ( *a3 < *a2 )
  {
    *(float *)(a1 + 4) = *a3;
    *(float *)(a1 + 16) = *a2;
  }
  if ( a3[1] < a2[1] )
  {
    *(float *)(a1 + 8) = a3[1];
    *(float *)(a1 + 20) = a2[1];
  }
  v5 = a3[2];
  v6 = v5 >= a2[2];
  if ( v5 < a2[2] )
  {
    *(float *)(a1 + 12) = v5;
    v4 = a2[2];
  }
  v7 = *(float *)(a1 + 4);
  v8 = *(float *)(a1 + 16);
  if ( v6 )
  {
    v4 = *(float *)(a1 + 24);
    v5 = *(float *)(a1 + 12);
  }
  else
  {
    *(float *)(a1 + 24) = v4;
  }
  v9 = *(float *)(a1 + 20) - *(float *)(a1 + 8);
  *(_DWORD *)(a1 + 84) = 0;
  *(float *)(a1 + 36) = v4 - v5;
  *(float *)(a1 + 28) = v8 - v7;
  *(float *)(a1 + 32) = v9;
  *(float *)(a1 + 56) = v8 - v7;
  *(_DWORD *)(a1 + 60) = 0;
  *(_DWORD *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)(a1 + 76) = 0;
  *(_DWORD *)(a1 + 80) = 0;
  *(float *)(a1 + 88) = v4 - v5;
  *(float *)(a1 + 52) = v4 - v5;
  *(float *)(a1 + 44) = v8 - v7;
  *(float *)(a1 + 72) = v9;
  *(float *)(a1 + 48) = v9;
  *(float *)(a1 + 40) = (float)(v4 - v5) + (float)((float)(v8 - v7) + v9);
  return a1;
}


// ===== 69b21c glitch::ps::PDBox::PDBox(float,float,float) =====
int __fastcall glitch::ps::PDBox::PDBox(int this, float a2, float a3, float a4)
{
  *(_DWORD *)(this + 88) = 0;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)(this + 8) = 0;
  *(_DWORD *)(this + 12) = 0;
  *(_DWORD *)(this + 16) = 0;
  *(_DWORD *)(this + 20) = 0;
  *(_DWORD *)(this + 24) = 0;
  *(_DWORD *)(this + 28) = 0;
  *(_DWORD *)(this + 32) = 0;
  *(_DWORD *)(this + 36) = 0;
  *(_DWORD *)this = &off_9857E0;
  *(float *)(this + 48) = a3;
  *(float *)(this + 52) = a4;
  *(float *)(this + 44) = a2;
  *(_DWORD *)(this + 56) = 0;
  *(_DWORD *)(this + 60) = 0;
  *(_DWORD *)(this + 64) = 0;
  *(_DWORD *)(this + 68) = 0;
  *(_DWORD *)(this + 72) = 0;
  *(_DWORD *)(this + 76) = 0;
  *(_DWORD *)(this + 80) = 0;
  *(_DWORD *)(this + 84) = 0;
  *(float *)(this + 4) = a2 * -0.5;
  *(float *)(this + 12) = a4 * -0.5;
  *(float *)(this + 8) = a3 * -0.5;
  *(float *)(this + 24) = a4 * 0.5;
  *(float *)(this + 16) = a2 * 0.5;
  *(float *)(this + 20) = a3 * 0.5;
  *(float *)(this + 28) = a2;
  *(float *)(this + 32) = a3;
  *(float *)(this + 36) = a4;
  *(float *)(this + 56) = a2;
  *(float *)(this + 72) = a3;
  *(float *)(this + 88) = a4;
  *(float *)(this + 40) = a4 + (float)(a2 + a3);
  return this;
}


// ===== 69b354 glitch::ps::PDBox::PDBox(float,float,float) =====
int __fastcall glitch::ps::PDBox::PDBox(int this, float a2, float a3, float a4)
{
  *(_DWORD *)(this + 88) = 0;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)(this + 8) = 0;
  *(_DWORD *)(this + 12) = 0;
  *(_DWORD *)(this + 16) = 0;
  *(_DWORD *)(this + 20) = 0;
  *(_DWORD *)(this + 24) = 0;
  *(_DWORD *)(this + 28) = 0;
  *(_DWORD *)(this + 32) = 0;
  *(_DWORD *)(this + 36) = 0;
  *(_DWORD *)this = &off_9857E0;
  *(float *)(this + 48) = a3;
  *(float *)(this + 52) = a4;
  *(float *)(this + 44) = a2;
  *(_DWORD *)(this + 56) = 0;
  *(_DWORD *)(this + 60) = 0;
  *(_DWORD *)(this + 64) = 0;
  *(_DWORD *)(this + 68) = 0;
  *(_DWORD *)(this + 72) = 0;
  *(_DWORD *)(this + 76) = 0;
  *(_DWORD *)(this + 80) = 0;
  *(_DWORD *)(this + 84) = 0;
  *(float *)(this + 4) = a2 * -0.5;
  *(float *)(this + 12) = a4 * -0.5;
  *(float *)(this + 8) = a3 * -0.5;
  *(float *)(this + 24) = a4 * 0.5;
  *(float *)(this + 16) = a2 * 0.5;
  *(float *)(this + 20) = a3 * 0.5;
  *(float *)(this + 28) = a2;
  *(float *)(this + 32) = a3;
  *(float *)(this + 36) = a4;
  *(float *)(this + 56) = a2;
  *(float *)(this + 72) = a3;
  *(float *)(this + 88) = a4;
  *(float *)(this + 40) = a4 + (float)(a2 + a3);
  return this;
}


// ===== 69b48c glitch::ps::PDBox::within(glitch::core::vector3d<float> const&) =====
bool __fastcall glitch::ps::PDBox::within(float *a1, float *a2)
{
  return *a2 >= a1[1] && *a2 <= a1[4] && a2[1] >= a1[2] && a2[1] <= a1[5] && a2[2] >= a1[3] && a2[2] <= a1[6];
}


// ===== 69b534 glitch::ps::PDBox::generate(glitch::ps::PSRandom &) =====
glitch::ps::PDBox *__fastcall glitch::ps::PDBox::generate(glitch::ps::PDBox *this, glitch::ps::PSRandom *a2)
{
  float v4; // r9
  float v5; // r10
  float v7; // [sp+4h] [bp-Ch] BYREF
  float v8; // [sp+8h] [bp-8h]
  float v9; // [sp+Ch] [bp-4h]

  glitch::ps::PSRandom::RandVec((glitch::ps::PSRandom *)&v7);
  v4 = (float)((float)((float)(v7 * *((float *)a2 + 15)) + *((float *)a2 + 2)) + (float)(v8 * *((float *)a2 + 18)))
     + (float)(v9 * *((float *)a2 + 21));
  v5 = (float)((float)((float)(v7 * *((float *)a2 + 16)) + *((float *)a2 + 3)) + (float)(v8 * *((float *)a2 + 19)))
     + (float)(v9 * *((float *)a2 + 22));
  *(float *)this = (float)((float)((float)(v7 * *((float *)a2 + 14)) + *((float *)a2 + 1))
                         + (float)(v8 * *((float *)a2 + 17)))
                 + (float)(v9 * *((float *)a2 + 20));
  *((float *)this + 1) = v4;
  *((float *)this + 2) = v5;
  return this;
}


// ===== 69b660 glitch::ps::PDBox::size(void) =====
int __fastcall glitch::ps::PDBox::size(glitch::ps::PDBox *this)
{
  return *((_DWORD *)this + 10);
}


// ===== 69b668 glitch::ps::PDCylinder::within(glitch::core::vector3d<float> const&) =====
bool __fastcall glitch::ps::PDCylinder::within(float *a1, float *a2)
{
  float v2; // r9
  float v3; // r8
  float v4; // r6
  float v5; // r5
  float v6; // r5

  v2 = *a2 - a1[1];
  v4 = a2[2] - a1[3];
  v5 = (float)((float)((float)(v2 * a1[4]) + (float)((float)(a2[1] - a1[2]) * a1[5])) + (float)(v4 * a1[6])) * a1[18];
  if ( v5 < 0.0 )
    return 0;
  if ( v5 > 1.0 )
    return 0;
  v3 = a2[1] - a1[2];
  v6 = (float)((float)((float)(v2 - (float)(v5 * a1[4])) * (float)(v2 - (float)(v5 * a1[4])))
             + (float)((float)(v3 - (float)(v5 * a1[5])) * (float)(v3 - (float)(v5 * a1[5]))))
     + (float)((float)(v4 - (float)(v5 * a1[6])) * (float)(v4 - (float)(v5 * a1[6])));
  return a1[16] <= v6 && a1[15] >= v6;
}


// ===== 69b7fc glitch::ps::PDCylinder::size(void) =====
int __fastcall glitch::ps::PDCylinder::size(glitch::ps::PDCylinder *this)
{
  return *((_DWORD *)this + 19);
}


// ===== 69b804 glitch::ps::PDCone::within(glitch::core::vector3d<float> const&) =====
bool __fastcall glitch::ps::PDCone::within(float *a1, float *a2)
{
  float v3; // r9
  float v4; // r8
  float v5; // r6
  float v6; // r5
  float v7; // r0

  v3 = *a2 - a1[1];
  v5 = a2[2] - a1[3];
  v6 = (float)((float)((float)(v3 * a1[4]) + (float)((float)(a2[1] - a1[2]) * a1[5])) + (float)(v5 * a1[6])) * a1[18];
  if ( v6 < 0.0 )
    return 0;
  if ( v6 > 1.0 )
    return 0;
  v4 = a2[1] - a1[2];
  v7 = (float)((float)((float)(v3 - (float)(v6 * a1[4])) * (float)(v3 - (float)(v6 * a1[4])))
             + (float)((float)(v4 - (float)(v6 * a1[5])) * (float)(v4 - (float)(v6 * a1[5]))))
     + (float)((float)(v5 - (float)(v6 * a1[6])) * (float)(v5 - (float)(v6 * a1[6])));
  return v7 >= (float)((float)(v6 * a1[14]) * (float)(v6 * a1[14]))
      && v7 <= (float)((float)(v6 * a1[13]) * (float)(v6 * a1[13]));
}


// ===== 69b9c0 glitch::ps::PDCone::transform(glitch::core::CMatrix4<float> const&) =====
void glitch::ps::PDCone::transform()
{
  ;
}


// ===== 69b9c4 glitch::ps::PDCone::size(void) =====
int __fastcall glitch::ps::PDCone::size(glitch::ps::PDCone *this)
{
  return *((_DWORD *)this + 19);
}


// ===== 69b9cc glitch::ps::PDSphere::PDSphere(glitch::core::vector3d<float> const&,float,float) =====
int __fastcall glitch::ps::PDSphere::PDSphere(int a1, _DWORD *a2, float a3, float a4)
{
  float v4; // r6
  char v6; // r8
  float v7; // r0
  float v8; // r6
  float v9; // r1
  float v10; // r5
  float v11; // r0
  float v12; // r6
  float v13; // r0
  float v15; // r0

  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)a1 = &off_985768;
  *(_DWORD *)(a1 + 8) = 0;
  v4 = a4;
  *(_DWORD *)(a1 + 4) = *a2;
  *(_DWORD *)(a1 + 8) = a2[1];
  v6 = 0;
  *(_DWORD *)(a1 + 12) = a2[2];
  if ( a3 < a4 )
  {
    *(float *)(a1 + 20) = a3;
    *(float *)(a1 + 16) = a4;
  }
  else
  {
    *(float *)(a1 + 20) = a4;
    v4 = a3;
  }
  if ( a3 >= a4 )
    *(float *)(a1 + 16) = a3;
  v7 = v4 * v4;
  v8 = *(float *)(a1 + 20);
  *(float *)(a1 + 24) = v7;
  v9 = *(float *)(a1 + 16);
  *(float *)(a1 + 28) = v8 * v8;
  v10 = v8 * v8;
  if ( v8 == v9 )
    v6 = 1;
  *(_BYTE *)(a1 + 40) = v6;
  *(float *)(a1 + 32) = *(float *)(a1 + 16) - *(float *)(a1 + 20);
  if ( v6 )
  {
    v15 = v7 * 12.5663706;
    *(float *)(a1 + 36) = v15;
  }
  else
  {
    v11 = v7 * 4.18879033 * *(float *)(a1 + 16);
    v12 = v11;
    v13 = v10 * 4.18879033 * *(float *)(a1 + 20);
    *(float *)(a1 + 36) = v12 - v13;
  }
  return a1;
}


// ===== 69bb80 glitch::ps::PDSphere::PDSphere(glitch::core::vector3d<float> const&,float,float) =====
int __fastcall glitch::ps::PDSphere::PDSphere(int a1, _DWORD *a2, float a3, float a4)
{
  float v4; // r6
  char v6; // r8
  float v7; // r0
  float v8; // r6
  float v9; // r1
  float v10; // r5
  float v11; // r0
  float v12; // r6
  float v13; // r0
  float v15; // r0

  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)a1 = &off_985768;
  *(_DWORD *)(a1 + 8) = 0;
  v4 = a4;
  *(_DWORD *)(a1 + 4) = *a2;
  *(_DWORD *)(a1 + 8) = a2[1];
  v6 = 0;
  *(_DWORD *)(a1 + 12) = a2[2];
  if ( a3 < a4 )
  {
    *(float *)(a1 + 20) = a3;
    *(float *)(a1 + 16) = a4;
  }
  else
  {
    *(float *)(a1 + 20) = a4;
    v4 = a3;
  }
  if ( a3 >= a4 )
    *(float *)(a1 + 16) = a3;
  v7 = v4 * v4;
  v8 = *(float *)(a1 + 20);
  *(float *)(a1 + 24) = v7;
  v9 = *(float *)(a1 + 16);
  *(float *)(a1 + 28) = v8 * v8;
  v10 = v8 * v8;
  if ( v8 == v9 )
    v6 = 1;
  *(_BYTE *)(a1 + 40) = v6;
  *(float *)(a1 + 32) = *(float *)(a1 + 16) - *(float *)(a1 + 20);
  if ( v6 )
  {
    v15 = v7 * 12.5663706;
    *(float *)(a1 + 36) = v15;
  }
  else
  {
    v11 = v7 * 4.18879033 * *(float *)(a1 + 16);
    v12 = v11;
    v13 = v10 * 4.18879033 * *(float *)(a1 + 20);
    *(float *)(a1 + 36) = v12 - v13;
  }
  return a1;
}


// ===== 69bd34 glitch::ps::PDSphere::within(glitch::core::vector3d<float> const&) =====
bool __fastcall glitch::ps::PDSphere::within(float *a1, float *a2)
{
  float v3; // r8
  float v4; // r0
  float v5; // r6
  float v6; // r5
  _BOOL4 result; // r0

  v3 = *a2 - a1[1];
  v5 = a2[2] - a1[3];
  v4 = a2[1] - a1[2];
  v6 = (float)((float)(v3 * v3) + (float)(v4 * v4)) + (float)(v5 * v5);
  result = a1[6] >= v6;
  if ( a1[6] >= v6 )
    return a1[7] <= v6;
  return result;
}


// ===== 69bdec glitch::ps::PDSphere::transform(glitch::core::CMatrix4<float> const&) =====
_DWORD *__fastcall glitch::ps::PDSphere::transform(_DWORD *result, _DWORD *a2)
{
  int v2; // r3
  int v3; // r2

  v2 = a2[13];
  v3 = a2[14];
  result[1] = a2[12];
  result[2] = v2;
  result[3] = v3;
  return result;
}


// ===== 69be08 glitch::ps::PDSphere::size(void) =====
int __fastcall glitch::ps::PDSphere::size(glitch::ps::PDSphere *this)
{
  return *((_DWORD *)this + 9);
}


// ===== 69be10 glitch::ps::PDBlob::PDBlob(glitch::core::vector3d<float> const&,float) =====
int __fastcall glitch::ps::PDBlob::PDBlob(int a1, _DWORD *a2, float a3)
{
  int v4; // r3
  float v5; // r0

  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)a1 = &off_985740;
  *(_DWORD *)(a1 + 4) = *a2;
  *(_DWORD *)(a1 + 8) = a2[1];
  v4 = a2[2];
  *(float *)(a1 + 16) = a3;
  *(_DWORD *)(a1 + 12) = v4;
  v5 = 1.0 / (float)(a3 + 1.0e-12);
  *(float *)(a1 + 20) = (float)(v5 * v5) * -0.5;
  *(float *)(a1 + 24) = v5 * 0.39894;
  return a1;
}


// ===== 69beb8 glitch::ps::PDBlob::PDBlob(glitch::core::vector3d<float> const&,float) =====
int __fastcall glitch::ps::PDBlob::PDBlob(int a1, _DWORD *a2, float a3)
{
  int v4; // r3
  float v5; // r0

  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)a1 = &off_985740;
  *(_DWORD *)(a1 + 4) = *a2;
  *(_DWORD *)(a1 + 8) = a2[1];
  v4 = a2[2];
  *(float *)(a1 + 16) = a3;
  *(_DWORD *)(a1 + 12) = v4;
  v5 = 1.0 / (float)(a3 + 1.0e-12);
  *(float *)(a1 + 20) = (float)(v5 * v5) * -0.5;
  *(float *)(a1 + 24) = v5 * 0.39894;
  return a1;
}


// ===== 69bf60 glitch::ps::PDBlob::transform(glitch::core::CMatrix4<float> const&) =====
_DWORD *__fastcall glitch::ps::PDBlob::transform(_DWORD *result, _DWORD *a2)
{
  int v2; // r3
  int v3; // r2

  v2 = a2[13];
  v3 = a2[14];
  result[1] = a2[12];
  result[2] = v2;
  result[3] = v3;
  return result;
}


// ===== 69bf7c glitch::ps::PDBlob::size(void) =====
int __fastcall glitch::ps::PDBlob::size(glitch::ps::PDBlob *this)
{
  return 1065353216;
}


// ===== 69bf84 `global constructor keyed to'.._source_particlesystem_scr_PDomain.cpp =====
void `global constructor keyed to'.._source_particlesystem_scr_PDomain.cpp()
{
  dword_9F75F0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F75EC = 1056964608;
}


// ===== 69bfa4 glitch::ps::PDPoint::~PDPoint() =====
void __fastcall glitch::ps::PDPoint::~PDPoint(glitch::ps::PDPoint *this)
{
  LC_API_FREE_0(this);
}


// ===== 69bfb8 glitch::ps::PDomain::~PDomain() =====
void __fastcall glitch::ps::PDomain::~PDomain(glitch::ps::PDomain *this)
{
  LC_API_FREE_0(this);
}


// ===== 69bfcc glitch::ps::PDLine::~PDLine() =====
void __fastcall glitch::ps::PDLine::~PDLine(glitch::ps::PDLine *this)
{
  LC_API_FREE_0(this);
}


// ===== 69bfe0 glitch::ps::PDBox::~PDBox() =====
void __fastcall glitch::ps::PDBox::~PDBox(glitch::ps::PDBox *this)
{
  LC_API_FREE_0(this);
}


// ===== 69bff4 glitch::ps::PDCylinder::~PDCylinder() =====
void __fastcall glitch::ps::PDCylinder::~PDCylinder(glitch::ps::PDCylinder *this)
{
  LC_API_FREE_0(this);
}


// ===== 69c008 glitch::ps::PDCone::~PDCone() =====
void __fastcall glitch::ps::PDCone::~PDCone(glitch::ps::PDCone *this)
{
  LC_API_FREE_0(this);
}


// ===== 69c01c glitch::ps::PDSphere::~PDSphere() =====
void __fastcall glitch::ps::PDSphere::~PDSphere(glitch::ps::PDSphere *this)
{
  LC_API_FREE_0(this);
}


// ===== 69c030 glitch::ps::PDBlob::~PDBlob() =====
void __fastcall glitch::ps::PDBlob::~PDBlob(glitch::ps::PDBlob *this)
{
  LC_API_FREE_0(this);
}


// ===== 69c044 glitch::ps::PDBlob::copy(void) =====
_DWORD *__fastcall glitch::ps::PDBlob::copy(glitch::ps::PDBlob *this)
{
  _DWORD *result; // r0

  result = operator new(0x1Cu, 0);
  *result = &off_985740;
  result[1] = *((_DWORD *)this + 1);
  result[2] = *((_DWORD *)this + 2);
  result[3] = *((_DWORD *)this + 3);
  result[4] = *((_DWORD *)this + 4);
  result[5] = *((_DWORD *)this + 5);
  result[6] = *((_DWORD *)this + 6);
  return result;
}


// ===== 69c0ac glitch::ps::PDSphere::copy(void) =====
_DWORD *__fastcall glitch::ps::PDSphere::copy(glitch::ps::PDSphere *this)
{
  _DWORD *result; // r0

  result = operator new(0x2Cu, 0);
  *result = &off_985768;
  result[1] = *((_DWORD *)this + 1);
  result[2] = *((_DWORD *)this + 2);
  result[3] = *((_DWORD *)this + 3);
  result[4] = *((_DWORD *)this + 4);
  result[5] = *((_DWORD *)this + 5);
  result[6] = *((_DWORD *)this + 6);
  result[7] = *((_DWORD *)this + 7);
  result[8] = *((_DWORD *)this + 8);
  result[9] = *((_DWORD *)this + 9);
  *((_BYTE *)result + 40) = *((_BYTE *)this + 40);
  return result;
}


// ===== 69c134 glitch::ps::PDCone::copy(void) =====
_DWORD *__fastcall glitch::ps::PDCone::copy(glitch::ps::PDCone *this)
{
  _DWORD *result; // r0

  result = operator new(0x54u, 0);
  *result = &off_985790;
  result[1] = *((_DWORD *)this + 1);
  result[2] = *((_DWORD *)this + 2);
  result[3] = *((_DWORD *)this + 3);
  result[4] = *((_DWORD *)this + 4);
  result[5] = *((_DWORD *)this + 5);
  result[6] = *((_DWORD *)this + 6);
  result[7] = *((_DWORD *)this + 7);
  result[8] = *((_DWORD *)this + 8);
  result[9] = *((_DWORD *)this + 9);
  result[10] = *((_DWORD *)this + 10);
  result[11] = *((_DWORD *)this + 11);
  result[12] = *((_DWORD *)this + 12);
  result[13] = *((_DWORD *)this + 13);
  result[14] = *((_DWORD *)this + 14);
  result[15] = *((_DWORD *)this + 15);
  result[16] = *((_DWORD *)this + 16);
  result[17] = *((_DWORD *)this + 17);
  result[18] = *((_DWORD *)this + 18);
  result[19] = *((_DWORD *)this + 19);
  *((_BYTE *)result + 80) = *((_BYTE *)this + 80);
  return result;
}


// ===== 69c20c glitch::ps::PDCylinder::copy(void) =====
_DWORD *__fastcall glitch::ps::PDCylinder::copy(glitch::ps::PDCylinder *this)
{
  _DWORD *result; // r0

  result = operator new(0x58u, 0);
  *result = &off_9857B8;
  result[1] = *((_DWORD *)this + 1);
  result[2] = *((_DWORD *)this + 2);
  result[3] = *((_DWORD *)this + 3);
  result[4] = *((_DWORD *)this + 4);
  result[5] = *((_DWORD *)this + 5);
  result[6] = *((_DWORD *)this + 6);
  result[7] = *((_DWORD *)this + 7);
  result[8] = *((_DWORD *)this + 8);
  result[9] = *((_DWORD *)this + 9);
  result[10] = *((_DWORD *)this + 10);
  result[11] = *((_DWORD *)this + 11);
  result[12] = *((_DWORD *)this + 12);
  result[13] = *((_DWORD *)this + 13);
  result[14] = *((_DWORD *)this + 14);
  result[15] = *((_DWORD *)this + 15);
  result[16] = *((_DWORD *)this + 16);
  result[17] = *((_DWORD *)this + 17);
  result[18] = *((_DWORD *)this + 18);
  result[19] = *((_DWORD *)this + 19);
  result[20] = *((_DWORD *)this + 20);
  *((_BYTE *)result + 84) = *((_BYTE *)this + 84);
  return result;
}


// ===== 69c2ec glitch::ps::PDBox::copy(void) =====
_DWORD *__fastcall glitch::ps::PDBox::copy(glitch::ps::PDBox *this)
{
  _DWORD *result; // r0

  result = operator new(0x5Cu, 0);
  *result = &off_9857E0;
  result[1] = *((_DWORD *)this + 1);
  result[2] = *((_DWORD *)this + 2);
  result[3] = *((_DWORD *)this + 3);
  result[4] = *((_DWORD *)this + 4);
  result[5] = *((_DWORD *)this + 5);
  result[6] = *((_DWORD *)this + 6);
  result[7] = *((_DWORD *)this + 7);
  result[8] = *((_DWORD *)this + 8);
  result[9] = *((_DWORD *)this + 9);
  result[10] = *((_DWORD *)this + 10);
  result[11] = *((_DWORD *)this + 11);
  result[12] = *((_DWORD *)this + 12);
  result[13] = *((_DWORD *)this + 13);
  result[14] = *((_DWORD *)this + 14);
  result[15] = *((_DWORD *)this + 15);
  result[16] = *((_DWORD *)this + 16);
  result[17] = *((_DWORD *)this + 17);
  result[18] = *((_DWORD *)this + 18);
  result[19] = *((_DWORD *)this + 19);
  result[20] = *((_DWORD *)this + 20);
  result[21] = *((_DWORD *)this + 21);
  result[22] = *((_DWORD *)this + 22);
  return result;
}


// ===== 69c3d4 glitch::ps::PDLine::copy(void) =====
_DWORD *__fastcall glitch::ps::PDLine::copy(glitch::ps::PDLine *this)
{
  _DWORD *result; // r0

  result = operator new(0x2Cu, 0);
  *result = &off_985808;
  result[1] = *((_DWORD *)this + 1);
  result[2] = *((_DWORD *)this + 2);
  result[3] = *((_DWORD *)this + 3);
  result[4] = *((_DWORD *)this + 4);
  result[5] = *((_DWORD *)this + 5);
  result[6] = *((_DWORD *)this + 6);
  result[7] = *((_DWORD *)this + 7);
  result[8] = *((_DWORD *)this + 8);
  result[9] = *((_DWORD *)this + 9);
  result[10] = *((_DWORD *)this + 10);
  return result;
}


// ===== 69c45c glitch::ps::PDPoint::copy(void) =====
_DWORD *__fastcall glitch::ps::PDPoint::copy(glitch::ps::PDPoint *this)
{
  _DWORD *result; // r0

  result = operator new(0x10u, 0);
  *result = &off_985830;
  result[1] = *((_DWORD *)this + 1);
  result[2] = *((_DWORD *)this + 2);
  result[3] = *((_DWORD *)this + 3);
  return result;
}


// ===== 69c4ac glitch::ps::PSRandom::NRandf(float) =====
float __fastcall glitch::ps::PSRandom::NRandf(glitch::ps::PSRandom *this, float a2)
{
  float v4; // r0
  float v5; // r4
  float v6; // r0
  float v7; // r7
  float v8; // r5
  float v9; // r0

  do
  {
    do
    {
      v4 = glitch::ps::PSRandom::Rand(this);
      v5 = (float)(v4 + v4) - 1.0;
      v6 = glitch::ps::PSRandom::Rand(this);
      v7 = (float)(v6 + v6) - 1.0;
      v8 = (float)(v5 * v5) + (float)(v7 * v7);
    }
    while ( v8 > 1.0 );
  }
  while ( v8 == 0.0 );
  v9 = (float)(logf((float)(v5 * v5) + (float)(v7 * v7)) * -2.0) / v8;
  return (float)(v5 * sqrtf(v9)) * a2;
}


// ===== 69c57c glitch::ps::PSRandom::NRandVec(float) =====
glitch::ps::PSRandom *__fastcall glitch::ps::PSRandom::NRandVec(
        glitch::ps::PSRandom *this,
        glitch::ps::PSRandom *a2,
        float a3)
{
  float v6; // r0
  float v7; // r7
  float v8; // r0
  float v9; // r6
  float v10; // r8
  float v11; // r0
  float v12; // r8
  float v13; // r0

  do
  {
    do
    {
      v6 = glitch::ps::PSRandom::Rand(a2);
      v7 = (float)(v6 + v6) - 1.0;
      v8 = glitch::ps::PSRandom::Rand(a2);
      v9 = (float)(v8 + v8) - 1.0;
      v10 = (float)(v7 * v7) + (float)(v9 * v9);
    }
    while ( v10 > 1.0 );
  }
  while ( v10 == 0.0 );
  v11 = (float)(logf((float)(v7 * v7) + (float)(v9 * v9)) * -2.0) / v10;
  v12 = sqrtf(v11);
  v13 = glitch::ps::PSRandom::NRandf(a2, a3);
  *(float *)this = (float)(v7 * v12) * a3;
  *((float *)this + 2) = v13;
  *((float *)this + 1) = (float)(v9 * v12) * a3;
  return this;
}


// ===== 69c688 glitch::ps::PDBlob::generate(glitch::ps::PSRandom &) =====
glitch::ps::PDBlob *__fastcall glitch::ps::PDBlob::generate(
        glitch::ps::PDBlob *this,
        glitch::ps::PSRandom *a2,
        glitch::ps::PSRandom *a3)
{
  float v5; // r6
  float v6; // r0
  float v8[4]; // [sp+4h] [bp-10h] BYREF

  glitch::ps::PSRandom::NRandVec((glitch::ps::PSRandom *)v8, a3, *((float *)a2 + 4));
  v5 = *((float *)a2 + 3) + v8[2];
  v6 = *((float *)a2 + 1) + v8[0];
  *((float *)this + 1) = *((float *)a2 + 2) + v8[1];
  *(float *)this = v6;
  *((float *)this + 2) = v5;
  return this;
}


// ===== 69c6ec glitch::ps::PDSphere::generate(glitch::ps::PSRandom &) =====
glitch::ps::PDSphere *__fastcall glitch::ps::PDSphere::generate(
        glitch::ps::PDSphere *this,
        glitch::ps::PSRandom *a2,
        glitch::ps::PSRandom *a3)
{
  float v6; // r10
  float v7; // r8
  float v8; // r0
  float v9; // r7
  float v10; // r6
  float v11; // r1
  float v12; // r0
  float v13; // r8
  float v14; // r7
  float v15; // r0
  float v17; // r6
  double v18; // r0
  float v19[2]; // [sp+4h] [bp+0h] BYREF
  float v20; // [sp+Ch] [bp+8h]

  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  do
  {
    glitch::ps::PSRandom::RandVec((glitch::ps::PSRandom *)v19);
    v6 = v19[0] - *(float *)&glitch::ps::vHalf;
    v7 = v19[1] - *(float *)&dword_9F75EC;
    v8 = v20 - *(float *)&dword_9F75F0;
    v9 = v20 - *(float *)&dword_9F75F0;
    *(float *)this = v19[0] - *(float *)&glitch::ps::vHalf;
    *((float *)this + 1) = v7;
    *((float *)this + 2) = v8;
  }
  while ( (float)((float)((float)(v6 * v6) + (float)(v7 * v7)) + (float)(v9 * v9)) > 0.25 );
  glitch::core::vector3d<float>::normalize(this);
  if ( *((_BYTE *)a2 + 40) )
  {
    v10 = *((float *)a2 + 4);
    v11 = *((float *)this + 1);
    v12 = v10;
  }
  else
  {
    v17 = *((float *)a2 + 5);
    LODWORD(v18) = glitch::ps::PSRandom::Rand(a3);
    *(float *)&v18 = v18;
    v12 = v17 + (float)(*(float *)&v18 * *((float *)a2 + 8));
    v11 = *((float *)this + 1);
    v10 = v12;
  }
  v13 = (float)(v12 * v11) + *((float *)a2 + 2);
  v14 = (float)(v10 * *((float *)this + 2)) + *((float *)a2 + 3);
  v15 = (float)(v10 * *(float *)this) + *((float *)a2 + 1);
  *((float *)this + 1) = v13;
  *(float *)this = v15;
  *((float *)this + 2) = v14;
  return this;
}


// ===== 69c860 glitch::ps::PDCone::PDCone(glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,float,float) =====
int __fastcall glitch::ps::PDCone::PDCone(int a1, float *a2, float *a3, float a4, float a5)
{
  float v5; // r7
  float v7; // r9
  float v8; // r0
  float v9; // r5
  float v10; // r1
  bool v11; // r6
  float v12; // r1
  float v13; // r6
  float v14; // r5
  float v15; // r7
  float v16; // r11
  float v17; // r0
  float v18; // r8
  float v19; // r6
  float v20; // r5
  float v21; // r7
  _BOOL4 v22; // r0
  float v23; // r10
  float v24; // r8
  float v25; // r0
  float v26; // r9
  float v27; // r10
  float v28; // r8
  int v29; // r3
  float v30; // r0
  float v31; // r5
  float v32; // r0
  float v34; // r0
  float v35; // [sp+4h] [bp-8h]

  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)a1 = &off_985790;
  *(float *)(a1 + 4) = *a2;
  v5 = a5;
  *(float *)(a1 + 8) = a2[1];
  *(float *)(a1 + 12) = a2[2];
  v7 = a3[1] - a2[1];
  v8 = a3[2] - a2[2];
  *(float *)(a1 + 16) = *a3 - *a2;
  *(float *)(a1 + 20) = v7;
  *(float *)(a1 + 24) = v8;
  if ( a4 < a5 )
  {
    *(float *)(a1 + 56) = a4;
    *(float *)(a1 + 52) = a5;
  }
  else
  {
    *(float *)(a1 + 56) = a5;
    v5 = a4;
  }
  if ( a4 >= a5 )
    *(float *)(a1 + 52) = a4;
  v9 = *(float *)(a1 + 56);
  *(float *)(a1 + 60) = v5 * v5;
  v10 = *(float *)(a1 + 52);
  *(float *)(a1 + 64) = v9 * v9;
  v11 = v9 == v10;
  v12 = *(float *)(a1 + 56);
  *(_BYTE *)(a1 + 80) = v11;
  v13 = *(float *)(a1 + 16);
  *(float *)(a1 + 68) = *(float *)(a1 + 52) - v12;
  v14 = *(float *)(a1 + 20);
  v15 = *(float *)(a1 + 24);
  v16 = (float)((float)(v13 * v13) + (float)(v14 * v14)) + (float)(v15 * v15);
  v35 = sqrtf(v16);
  if ( v16 == 0.0 )
    v17 = 0.0;
  else
    v17 = 1.0 / v16;
  *(float *)(a1 + 72) = v17;
  v18 = sqrtf(v17);
  v19 = v18 * v13;
  v20 = v18 * v14;
  v21 = v18 * v15;
  v22 = fabs((float)(v19 + (float)(v20 * 0.0)) + (float)(v21 * 0.0)) > 0.999;
  if ( v22 )
    v23 = 0.0;
  else
    v23 = 1.0;
  if ( v22 )
    v24 = 1.0;
  else
    v24 = 0.0;
  v25 = (float)(v21 * 0.0) + (float)((float)(v23 * v19) + (float)(v24 * v20));
  *(float *)(a1 + 28) = v23 - (float)(v19 * v25);
  *(float *)(a1 + 32) = v24 - (float)(v20 * v25);
  *(float *)(a1 + 36) = 0.0 - (float)(v21 * v25);
  glitch::core::vector3d<float>::normalize((float *)(a1 + 28));
  v26 = *(float *)(a1 + 36);
  v27 = *(float *)(a1 + 32);
  v28 = *(float *)(a1 + 28);
  *(float *)(a1 + 40) = (float)(COERCE_FLOAT(LODWORD(v20) + 0x80000000) * v26) + (float)(v21 * v27);
  *(float *)(a1 + 44) = (float)(COERCE_FLOAT(LODWORD(v21) + 0x80000000) * v28) + (float)(v19 * v26);
  v29 = *(unsigned __int8 *)(a1 + 80);
  *(float *)(a1 + 48) = (float)(v27 * COERCE_FLOAT(LODWORD(v19) + 0x80000000)) + (float)(v20 * v28);
  if ( v29 )
  {
    v34 = sqrtf(v16 + *(float *)(a1 + 60)) * 3.14159265 * *(float *)(a1 + 52);
    *(float *)(a1 + 76) = v34;
  }
  else
  {
    v30 = *(float *)(a1 + 60) * 1.04719758 * v35;
    v31 = v30;
    v32 = v35 * (*(float *)(a1 + 64) * 1.04719758);
    *(float *)(a1 + 76) = v31 - v32;
  }
  return a1;
}


// ===== 69ccc0 glitch::ps::PDCone::PDCone(glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,float,float) =====
int __fastcall glitch::ps::PDCone::PDCone(int a1, float *a2, float *a3, float a4, float a5)
{
  float v5; // r7
  float v7; // r9
  float v8; // r0
  float v9; // r5
  float v10; // r1
  bool v11; // r6
  float v12; // r1
  float v13; // r6
  float v14; // r5
  float v15; // r7
  float v16; // r11
  float v17; // r0
  float v18; // r8
  float v19; // r6
  float v20; // r5
  float v21; // r7
  _BOOL4 v22; // r0
  float v23; // r10
  float v24; // r8
  float v25; // r0
  float v26; // r9
  float v27; // r10
  float v28; // r8
  int v29; // r3
  float v30; // r0
  float v31; // r5
  float v32; // r0
  float v34; // r0
  float v35; // [sp+4h] [bp-8h]

  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)a1 = &off_985790;
  *(float *)(a1 + 4) = *a2;
  v5 = a5;
  *(float *)(a1 + 8) = a2[1];
  *(float *)(a1 + 12) = a2[2];
  v7 = a3[1] - a2[1];
  v8 = a3[2] - a2[2];
  *(float *)(a1 + 16) = *a3 - *a2;
  *(float *)(a1 + 20) = v7;
  *(float *)(a1 + 24) = v8;
  if ( a4 < a5 )
  {
    *(float *)(a1 + 56) = a4;
    *(float *)(a1 + 52) = a5;
  }
  else
  {
    *(float *)(a1 + 56) = a5;
    v5 = a4;
  }
  if ( a4 >= a5 )
    *(float *)(a1 + 52) = a4;
  v9 = *(float *)(a1 + 56);
  *(float *)(a1 + 60) = v5 * v5;
  v10 = *(float *)(a1 + 52);
  *(float *)(a1 + 64) = v9 * v9;
  v11 = v9 == v10;
  v12 = *(float *)(a1 + 56);
  *(_BYTE *)(a1 + 80) = v11;
  v13 = *(float *)(a1 + 16);
  *(float *)(a1 + 68) = *(float *)(a1 + 52) - v12;
  v14 = *(float *)(a1 + 20);
  v15 = *(float *)(a1 + 24);
  v16 = (float)((float)(v13 * v13) + (float)(v14 * v14)) + (float)(v15 * v15);
  v35 = sqrtf(v16);
  if ( v16 == 0.0 )
    v17 = 0.0;
  else
    v17 = 1.0 / v16;
  *(float *)(a1 + 72) = v17;
  v18 = sqrtf(v17);
  v19 = v18 * v13;
  v20 = v18 * v14;
  v21 = v18 * v15;
  v22 = fabs((float)(v19 + (float)(v20 * 0.0)) + (float)(v21 * 0.0)) > 0.999;
  if ( v22 )
    v23 = 0.0;
  else
    v23 = 1.0;
  if ( v22 )
    v24 = 1.0;
  else
    v24 = 0.0;
  v25 = (float)(v21 * 0.0) + (float)((float)(v23 * v19) + (float)(v24 * v20));
  *(float *)(a1 + 28) = v23 - (float)(v19 * v25);
  *(float *)(a1 + 32) = v24 - (float)(v20 * v25);
  *(float *)(a1 + 36) = 0.0 - (float)(v21 * v25);
  glitch::core::vector3d<float>::normalize((float *)(a1 + 28));
  v26 = *(float *)(a1 + 36);
  v27 = *(float *)(a1 + 32);
  v28 = *(float *)(a1 + 28);
  *(float *)(a1 + 40) = (float)(COERCE_FLOAT(LODWORD(v20) + 0x80000000) * v26) + (float)(v21 * v27);
  *(float *)(a1 + 44) = (float)(COERCE_FLOAT(LODWORD(v21) + 0x80000000) * v28) + (float)(v19 * v26);
  v29 = *(unsigned __int8 *)(a1 + 80);
  *(float *)(a1 + 48) = (float)(v27 * COERCE_FLOAT(LODWORD(v19) + 0x80000000)) + (float)(v20 * v28);
  if ( v29 )
  {
    v34 = sqrtf(v16 + *(float *)(a1 + 60)) * 3.14159265 * *(float *)(a1 + 52);
    *(float *)(a1 + 76) = v34;
  }
  else
  {
    v30 = *(float *)(a1 + 60) * 1.04719758 * v35;
    v31 = v30;
    v32 = v35 * (*(float *)(a1 + 64) * 1.04719758);
    *(float *)(a1 + 76) = v31 - v32;
  }
  return a1;
}


// ===== 69d120 glitch::ps::PDCylinder::PDCylinder(float,float) =====
glitch::ps::PDCylinder *__fastcall glitch::ps::PDCylinder::PDCylinder(glitch::ps::PDCylinder *this, float a2, float a3)
{
  float v6; // r8
  float v7; // r0
  float v8; // r8
  float v9; // r5
  float v10; // r6
  float v11; // r8
  _BOOL4 v12; // r0
  float v13; // r11
  float v14; // r10
  float v15; // r9
  float v16; // r9
  float v17; // r8
  float v18; // r3
  float v19; // r0
  float v21; // [sp+4h] [bp-8h]

  *(_DWORD *)this = &off_9857B8;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((float *)this + 20) = a2;
  *((float *)this + 2) = a2 * -0.5;
  *((float *)this + 5) = a2;
  v6 = (float)((float)(a2 * a2) + 0.0) + 0.0;
  v21 = sqrtf(v6);
  if ( v6 == 0.0 )
    v7 = 0.0;
  else
    v7 = 1.0 / v6;
  *((float *)this + 18) = v7;
  v8 = sqrtf(v7);
  v9 = v8 * 0.0;
  v10 = a2 * v8;
  v11 = (float)(v8 * 0.0) * 0.0;
  v12 = fabs((float)(v9 + (float)(v10 * 0.0)) + (float)(v9 * 0.0)) > 0.999;
  if ( v12 )
    v13 = 0.0;
  else
    v13 = 1.0;
  if ( v12 )
    v14 = 1.0;
  else
    v14 = 0.0;
  v15 = v11 + (float)((float)(v13 * v9) + (float)(v14 * v10));
  *((float *)this + 7) = v13 - (float)(v9 * v15);
  *((float *)this + 8) = v14 - (float)(v10 * v15);
  *((float *)this + 9) = 0.0 - (float)(v9 * v15);
  glitch::core::vector3d<float>::normalize((char *)this + 28);
  v16 = *((float *)this + 9);
  v17 = *((float *)this + 8);
  v18 = *((float *)this + 7);
  *((float *)this + 10) = (float)(COERCE_FLOAT(LODWORD(v10) + 0x80000000) * v16) + (float)(v9 * v17);
  *((float *)this + 11) = (float)(COERCE_FLOAT(LODWORD(v9) + 0x80000000) * v18) + (float)(v9 * v16);
  *((float *)this + 12) = (float)(v17 * COERCE_FLOAT(LODWORD(v9) + 0x80000000)) + (float)(v10 * v18);
  *((_DWORD *)this + 14) = 0;
  *((float *)this + 17) = a3;
  *((float *)this + 13) = a3;
  *((_BYTE *)this + 84) = 0;
  *((_DWORD *)this + 16) = 0;
  *((float *)this + 15) = a3 * a3;
  v19 = (float)(a3 * a3) * 3.14159265;
  *((float *)this + 19) = v21 * v19;
  return this;
}


// ===== 69d3f4 glitch::ps::PDCylinder::PDCylinder(float,float) =====
glitch::ps::PDCylinder *__fastcall glitch::ps::PDCylinder::PDCylinder(glitch::ps::PDCylinder *this, float a2, float a3)
{
  float v6; // r8
  float v7; // r0
  float v8; // r8
  float v9; // r5
  float v10; // r6
  float v11; // r8
  _BOOL4 v12; // r0
  float v13; // r11
  float v14; // r10
  float v15; // r9
  float v16; // r9
  float v17; // r8
  float v18; // r3
  float v19; // r0
  float v21; // [sp+4h] [bp-8h]

  *(_DWORD *)this = &off_9857B8;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((float *)this + 20) = a2;
  *((float *)this + 2) = a2 * -0.5;
  *((float *)this + 5) = a2;
  v6 = (float)((float)(a2 * a2) + 0.0) + 0.0;
  v21 = sqrtf(v6);
  if ( v6 == 0.0 )
    v7 = 0.0;
  else
    v7 = 1.0 / v6;
  *((float *)this + 18) = v7;
  v8 = sqrtf(v7);
  v9 = v8 * 0.0;
  v10 = a2 * v8;
  v11 = (float)(v8 * 0.0) * 0.0;
  v12 = fabs((float)(v9 + (float)(v10 * 0.0)) + (float)(v9 * 0.0)) > 0.999;
  if ( v12 )
    v13 = 0.0;
  else
    v13 = 1.0;
  if ( v12 )
    v14 = 1.0;
  else
    v14 = 0.0;
  v15 = v11 + (float)((float)(v13 * v9) + (float)(v14 * v10));
  *((float *)this + 7) = v13 - (float)(v9 * v15);
  *((float *)this + 8) = v14 - (float)(v10 * v15);
  *((float *)this + 9) = 0.0 - (float)(v9 * v15);
  glitch::core::vector3d<float>::normalize((float *)this + 7);
  v16 = *((float *)this + 9);
  v17 = *((float *)this + 8);
  v18 = *((float *)this + 7);
  *((float *)this + 10) = (float)(COERCE_FLOAT(LODWORD(v10) + 0x80000000) * v16) + (float)(v9 * v17);
  *((float *)this + 11) = (float)(COERCE_FLOAT(LODWORD(v9) + 0x80000000) * v18) + (float)(v9 * v16);
  *((float *)this + 12) = (float)(v17 * COERCE_FLOAT(LODWORD(v9) + 0x80000000)) + (float)(v10 * v18);
  *((_DWORD *)this + 14) = 0;
  *((float *)this + 17) = a3;
  *((float *)this + 13) = a3;
  *((_BYTE *)this + 84) = 0;
  *((_DWORD *)this + 16) = 0;
  *((float *)this + 15) = a3 * a3;
  v19 = (float)(a3 * a3) * 3.14159265;
  *((float *)this + 19) = v21 * v19;
  return this;
}


// ===== 69d6c8 glitch::ps::PDCylinder::PDCylinder(glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,float,float) =====
int __fastcall glitch::ps::PDCylinder::PDCylinder(int a1, float *a2, float *a3, float a4, float a5)
{
  float v5; // r7
  float v7; // r9
  float v8; // r0
  float v9; // r5
  float v10; // r1
  bool v11; // r6
  float v12; // r1
  float v13; // r6
  float v14; // r5
  float v15; // r7
  float v16; // r8
  float v17; // r0
  float v18; // r8
  float v19; // r6
  float v20; // r5
  float v21; // r7
  _BOOL4 v22; // r0
  float v23; // r10
  float v24; // r8
  float v25; // r0
  float v26; // r9
  float v27; // r10
  float v28; // r8
  double v29; // r2
  float v30; // r0
  float v32; // r0
  float v33; // [sp+4h] [bp-8h]

  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)a1 = &off_9857B8;
  *(float *)(a1 + 4) = *a2;
  v5 = a5;
  *(float *)(a1 + 8) = a2[1];
  *(float *)(a1 + 12) = a2[2];
  v7 = a3[1] - a2[1];
  v8 = a3[2] - a2[2];
  *(float *)(a1 + 16) = *a3 - *a2;
  *(float *)(a1 + 20) = v7;
  *(float *)(a1 + 24) = v8;
  if ( a4 < a5 )
  {
    *(float *)(a1 + 56) = a4;
    *(float *)(a1 + 52) = a5;
  }
  else
  {
    *(float *)(a1 + 56) = a5;
    v5 = a4;
  }
  if ( a4 >= a5 )
    *(float *)(a1 + 52) = a4;
  v9 = *(float *)(a1 + 56);
  *(float *)(a1 + 60) = v5 * v5;
  v10 = *(float *)(a1 + 52);
  *(float *)(a1 + 64) = v9 * v9;
  v11 = v9 == v10;
  v12 = *(float *)(a1 + 56);
  *(_BYTE *)(a1 + 84) = v11;
  v13 = *(float *)(a1 + 16);
  *(float *)(a1 + 68) = *(float *)(a1 + 52) - v12;
  v14 = *(float *)(a1 + 20);
  v15 = *(float *)(a1 + 24);
  v16 = (float)((float)(v13 * v13) + (float)(v14 * v14)) + (float)(v15 * v15);
  v33 = sqrtf(v16);
  if ( v16 == 0.0 )
    v17 = 0.0;
  else
    v17 = 1.0 / v16;
  *(float *)(a1 + 72) = v17;
  v18 = sqrtf(v17);
  v19 = v18 * v13;
  v20 = v18 * v14;
  v21 = v18 * v15;
  v22 = fabs((float)(v19 + (float)(v20 * 0.0)) + (float)(v21 * 0.0)) > 0.999;
  if ( v22 )
    v23 = 0.0;
  else
    v23 = 1.0;
  if ( v22 )
    v24 = 1.0;
  else
    v24 = 0.0;
  v25 = (float)(v21 * 0.0) + (float)((float)(v23 * v19) + (float)(v24 * v20));
  *(float *)(a1 + 28) = v23 - (float)(v19 * v25);
  *(float *)(a1 + 32) = v24 - (float)(v20 * v25);
  *(float *)(a1 + 36) = 0.0 - (float)(v21 * v25);
  glitch::core::vector3d<float>::normalize(a1 + 28);
  v26 = *(float *)(a1 + 36);
  v27 = *(float *)(a1 + 32);
  v28 = *(float *)(a1 + 28);
  *(float *)(a1 + 40) = (float)(COERCE_FLOAT(LODWORD(v20) + 0x80000000) * v26) + (float)(v21 * v27);
  *(float *)(a1 + 44) = (float)(COERCE_FLOAT(LODWORD(v21) + 0x80000000) * v28) + (float)(v19 * v26);
  HIDWORD(v29) = *(unsigned __int8 *)(a1 + 84);
  *(float *)(a1 + 48) = (float)(v27 * COERCE_FLOAT(LODWORD(v19) + 0x80000000)) + (float)(v20 * v28);
  LOWORD(v29) = 11544;
  if ( HIDWORD(v29) )
  {
    HIDWORD(v29) = 1074340347;
    WORD1(v29) = 21572;
    v32 = (float)(v33 + v33) * v29 * *(float *)(a1 + 52);
    *(float *)(a1 + 76) = v32;
  }
  else
  {
    HIDWORD(v29) = 1074340347;
    WORD1(v29) = 21572;
    v30 = *(float *)(a1 + 60) * v29 + *(float *)(a1 + 64) * -3.14159265;
    *(float *)(a1 + 76) = v33 * v30;
  }
  return a1;
}


// ===== 69db04 glitch::ps::PDCylinder::PDCylinder(glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,float,float) =====
int __fastcall glitch::ps::PDCylinder::PDCylinder(int a1, float *a2, float *a3, float a4, float a5)
{
  float v5; // r7
  float v7; // r9
  float v8; // r0
  float v9; // r5
  float v10; // r1
  bool v11; // r6
  float v12; // r1
  float v13; // r6
  float v14; // r5
  float v15; // r7
  float v16; // r8
  float v17; // r0
  float v18; // r8
  float v19; // r6
  float v20; // r5
  float v21; // r7
  _BOOL4 v22; // r0
  float v23; // r10
  float v24; // r8
  float v25; // r0
  float v26; // r9
  float v27; // r10
  float v28; // r8
  double v29; // r2
  float v30; // r0
  float v32; // r0
  float v33; // [sp+4h] [bp-8h]

  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)a1 = &off_9857B8;
  *(float *)(a1 + 4) = *a2;
  v5 = a5;
  *(float *)(a1 + 8) = a2[1];
  *(float *)(a1 + 12) = a2[2];
  v7 = a3[1] - a2[1];
  v8 = a3[2] - a2[2];
  *(float *)(a1 + 16) = *a3 - *a2;
  *(float *)(a1 + 20) = v7;
  *(float *)(a1 + 24) = v8;
  if ( a4 < a5 )
  {
    *(float *)(a1 + 56) = a4;
    *(float *)(a1 + 52) = a5;
  }
  else
  {
    *(float *)(a1 + 56) = a5;
    v5 = a4;
  }
  if ( a4 >= a5 )
    *(float *)(a1 + 52) = a4;
  v9 = *(float *)(a1 + 56);
  *(float *)(a1 + 60) = v5 * v5;
  v10 = *(float *)(a1 + 52);
  *(float *)(a1 + 64) = v9 * v9;
  v11 = v9 == v10;
  v12 = *(float *)(a1 + 56);
  *(_BYTE *)(a1 + 84) = v11;
  v13 = *(float *)(a1 + 16);
  *(float *)(a1 + 68) = *(float *)(a1 + 52) - v12;
  v14 = *(float *)(a1 + 20);
  v15 = *(float *)(a1 + 24);
  v16 = (float)((float)(v13 * v13) + (float)(v14 * v14)) + (float)(v15 * v15);
  v33 = sqrtf(v16);
  if ( v16 == 0.0 )
    v17 = 0.0;
  else
    v17 = 1.0 / v16;
  *(float *)(a1 + 72) = v17;
  v18 = sqrtf(v17);
  v19 = v18 * v13;
  v20 = v18 * v14;
  v21 = v18 * v15;
  v22 = fabs((float)(v19 + (float)(v20 * 0.0)) + (float)(v21 * 0.0)) > 0.999;
  if ( v22 )
    v23 = 0.0;
  else
    v23 = 1.0;
  if ( v22 )
    v24 = 1.0;
  else
    v24 = 0.0;
  v25 = (float)(v21 * 0.0) + (float)((float)(v23 * v19) + (float)(v24 * v20));
  *(float *)(a1 + 28) = v23 - (float)(v19 * v25);
  *(float *)(a1 + 32) = v24 - (float)(v20 * v25);
  *(float *)(a1 + 36) = 0.0 - (float)(v21 * v25);
  glitch::core::vector3d<float>::normalize((float *)(a1 + 28));
  v26 = *(float *)(a1 + 36);
  v27 = *(float *)(a1 + 32);
  v28 = *(float *)(a1 + 28);
  *(float *)(a1 + 40) = (float)(COERCE_FLOAT(LODWORD(v20) + 0x80000000) * v26) + (float)(v21 * v27);
  *(float *)(a1 + 44) = (float)(COERCE_FLOAT(LODWORD(v21) + 0x80000000) * v28) + (float)(v19 * v26);
  HIDWORD(v29) = *(unsigned __int8 *)(a1 + 84);
  *(float *)(a1 + 48) = (float)(v27 * COERCE_FLOAT(LODWORD(v19) + 0x80000000)) + (float)(v20 * v28);
  LOWORD(v29) = 11544;
  if ( HIDWORD(v29) )
  {
    HIDWORD(v29) = 1074340347;
    WORD1(v29) = 21572;
    v32 = (float)(v33 + v33) * v29 * *(float *)(a1 + 52);
    *(float *)(a1 + 76) = v32;
  }
  else
  {
    HIDWORD(v29) = 1074340347;
    WORD1(v29) = 21572;
    v30 = *(float *)(a1 + 60) * v29 + *(float *)(a1 + 64) * -3.14159265;
    *(float *)(a1 + 76) = v33 * v30;
  }
  return a1;
}


// ===== 69df40 glitch::ps::PDBlob::within(glitch::core::vector3d<float> const&) =====
bool __fastcall glitch::ps::PDBlob::within(float *a1, float *a2)
{
  float v3; // r8
  float v4; // r7
  float v5; // r0
  float v6; // r4

  v3 = *a2 - a1[1];
  v4 = a2[1] - a1[2];
  v5 = a2[2] - a1[3];
  v6 = expf((float)((float)((float)(v3 * v3) + (float)(v4 * v4)) + (float)(v5 * v5)) * a1[5]) * a1[6];
  return v6 > (float)((float)lrand48() * 4.6566e-10);
}


// ===== 69e008 glitch::ps::PDCone::generate(glitch::ps::PSRandom &) =====
glitch::ps::PDCone *__fastcall glitch::ps::PDCone::generate(
        glitch::ps::PDCone *this,
        glitch::ps::PSRandom *a2,
        glitch::ps::PSRandom *a3)
{
  float v6; // r0
  float v7; // r5
  float v8; // r0
  float v9; // r8
  glitch::ps::PSRandom *v10; // r0
  float v11; // r7
  float v12; // r0
  float v13; // r7
  float v14; // r10
  float v15; // r0
  float v16; // r8
  float v17; // r9
  float v18; // r10

  v6 = glitch::ps::PSRandom::Rand(a3);
  v7 = v6;
  v8 = glitch::ps::PSRandom::Rand(a3);
  v9 = (float)(v8 + v8) * 3.1416;
  v10 = a3;
  v11 = *((float *)a2 + 14);
  v12 = glitch::ps::PSRandom::Rand(v10);
  v13 = v11 + (float)(v12 * *((float *)a2 + 17));
  v14 = cosf(v9) * v13;
  v15 = sinf(v9) * v13;
  v16 = v14 * v7;
  v17 = (float)((float)((float)(v7 * *((float *)a2 + 5)) + *((float *)a2 + 2))
              + (float)((float)(v14 * v7) * *((float *)a2 + 8)))
      + (float)((float)(v15 * v7) * *((float *)a2 + 11));
  v18 = (float)((float)((float)(v7 * *((float *)a2 + 6)) + *((float *)a2 + 3))
              + (float)((float)(v14 * v7) * *((float *)a2 + 9)))
      + (float)((float)(v15 * v7) * *((float *)a2 + 12));
  *(float *)this = (float)((float)((float)(v7 * *((float *)a2 + 4)) + *((float *)a2 + 1))
                         + (float)(v16 * *((float *)a2 + 7)))
                 + (float)((float)(v15 * v7) * *((float *)a2 + 10));
  *((float *)this + 1) = v17;
  *((float *)this + 2) = v18;
  return this;
}


// ===== 69e1bc glitch::ps::PDCylinder::generate(glitch::ps::PSRandom &) =====
glitch::ps::PDCylinder *__fastcall glitch::ps::PDCylinder::generate(
        glitch::ps::PDCylinder *this,
        glitch::ps::PSRandom *a2,
        glitch::ps::PSRandom *a3)
{
  double v6; // r0
  float v7; // r8
  double v8; // r0
  float v9; // r10
  float v10; // r6
  double v11; // r0
  float v12; // r6
  float v13; // r7
  float v14; // r6
  float v15; // r9
  float v16; // r10

  LODWORD(v6) = glitch::ps::PSRandom::Rand(a3);
  *(float *)&v6 = v6;
  v7 = *(float *)&v6;
  LODWORD(v8) = glitch::ps::PSRandom::Rand(a3);
  *(float *)&v8 = v8;
  v9 = (float)(*(float *)&v8 + *(float *)&v8) * 3.1416;
  LODWORD(v8) = a3;
  v10 = *((float *)a2 + 14);
  LODWORD(v11) = glitch::ps::PSRandom::Rand((glitch::ps::PSRandom *)LODWORD(v8));
  *(float *)&v11 = v11;
  v12 = v10 + (float)(*(float *)&v11 * *((float *)a2 + 17));
  v13 = cosf(v9) * v12;
  v14 = sinf(v9) * v12;
  v15 = (float)((float)((float)(v7 * *((float *)a2 + 5)) + *((float *)a2 + 2)) + (float)(v13 * *((float *)a2 + 8)))
      + (float)(v14 * *((float *)a2 + 11));
  v16 = (float)((float)((float)(v7 * *((float *)a2 + 6)) + *((float *)a2 + 3)) + (float)(v13 * *((float *)a2 + 9)))
      + (float)(v14 * *((float *)a2 + 12));
  *(float *)this = (float)((float)((float)(v7 * *((float *)a2 + 4)) + *((float *)a2 + 1))
                         + (float)(v13 * *((float *)a2 + 7)))
                 + (float)(v14 * *((float *)a2 + 10));
  *((float *)this + 1) = v15;
  *((float *)this + 2) = v16;
  return this;
}


// ===== 69e350 glitch::ps::PDLine::within(glitch::core::vector3d<float> const&) =====
bool __fastcall glitch::ps::PDLine::within(float *a1, float *a2)
{
  float v3; // r0
  float v4; // r6
  float v5; // r5
  float v6; // r8
  float v7; // r0

  v3 = *a2 - a1[1];
  v4 = a2[1] - a1[2];
  v6 = (float)((float)(v3 * a1[7]) + (float)(v4 * a1[8])) + (float)((float)(a2[2] - a1[3]) * a1[9]);
  v5 = a2[2] - a1[3];
  v7 = sqrt((float)((float)((float)(v3 * v3) + (float)(v4 * v4)) + (float)(v5 * v5)));
  return (float)(fabs(v6 - v7) / a1[10]) < 0.0000001;
}


// ===== 69e45c glitch::ps::PDLine::PDLine(glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&) =====
int __fastcall glitch::ps::PDLine::PDLine(int a1, float *a2, float *a3)
{
  float v4; // r8
  float v5; // r7
  float v6; // r0
  float v7; // r0

  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)a1 = &off_985808;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(float *)(a1 + 4) = *a2;
  *(float *)(a1 + 8) = a2[1];
  *(float *)(a1 + 12) = a2[2];
  v4 = *a3 - *a2;
  v5 = a3[1] - a2[1];
  v6 = a3[2] - a2[2];
  *(float *)(a1 + 32) = v5;
  *(float *)(a1 + 36) = v6;
  *(float *)(a1 + 20) = v5;
  *(float *)(a1 + 24) = v6;
  *(float *)(a1 + 28) = v4;
  *(float *)(a1 + 16) = v4;
  glitch::core::vector3d<float>::normalize((float *)(a1 + 28));
  v7 = sqrt((float)((float)((float)(*(float *)(a1 + 16) * *(float *)(a1 + 16))
                          + (float)(*(float *)(a1 + 20) * *(float *)(a1 + 20)))
                  + (float)(*(float *)(a1 + 24) * *(float *)(a1 + 24))));
  *(float *)(a1 + 40) = v7;
  return a1;
}


// ===== 69e57c glitch::ps::PDLine::PDLine(glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&) =====
int __fastcall glitch::ps::PDLine::PDLine(int a1, float *a2, float *a3)
{
  float v4; // r8
  float v5; // r7
  float v6; // r0
  float v7; // r0

  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)a1 = &off_985808;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(float *)(a1 + 4) = *a2;
  *(float *)(a1 + 8) = a2[1];
  *(float *)(a1 + 12) = a2[2];
  v4 = *a3 - *a2;
  v5 = a3[1] - a2[1];
  v6 = a3[2] - a2[2];
  *(float *)(a1 + 32) = v5;
  *(float *)(a1 + 36) = v6;
  *(float *)(a1 + 20) = v5;
  *(float *)(a1 + 24) = v6;
  *(float *)(a1 + 28) = v4;
  *(float *)(a1 + 16) = v4;
  glitch::core::vector3d<float>::normalize((float *)(a1 + 28));
  v7 = sqrt((float)((float)((float)(*(float *)(a1 + 16) * *(float *)(a1 + 16))
                          + (float)(*(float *)(a1 + 20) * *(float *)(a1 + 20)))
                  + (float)(*(float *)(a1 + 24) * *(float *)(a1 + 24))));
  *(float *)(a1 + 40) = v7;
  return a1;
}


// ===== 69e69c glitch::ps::PDCylinder::transform(glitch::core::CMatrix4<float> const&) =====
float __fastcall glitch::ps::PDCylinder::transform(int a1, float *a2)
{
  float v4; // r7
  float v5; // r0
  float v6; // r0
  float v7; // r9
  float v8; // r10
  float v9; // r6
  _BOOL4 v10; // r0
  float v11; // r11
  float v12; // r7
  float v13; // r8
  float v14; // r6
  float v15; // r7
  float v16; // r8
  float v17; // r11
  float v18; // r9
  float v19; // r0
  float v20; // r11
  float v21; // r3
  float v22; // r10
  float v23; // r0
  float v24; // r11
  float v25; // r3
  float result; // r0
  float v27; // [sp+8h] [bp-Ch]
  float v28; // [sp+Ch] [bp-8h]

  v4 = *(float *)(a1 + 80);
  *(float *)(a1 + 8) = v4 * -0.5;
  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  *(float *)(a1 + 20) = v4;
  *(_DWORD *)(a1 + 24) = 0;
  if ( (float)((float)((float)(v4 * v4) + 0.0) + 0.0) == 0.0 )
    v5 = 0.0;
  else
    v5 = 1.0 / (float)((float)((float)(v4 * v4) + 0.0) + 0.0);
  *(float *)(a1 + 72) = v5;
  v6 = sqrtf(v5);
  v7 = v6 * 0.0;
  v8 = v4 * v6;
  v9 = (float)(v6 * 0.0) * 0.0;
  v10 = fabs((float)(v7 + (float)((float)(v4 * v6) * 0.0)) + (float)(v7 * 0.0)) > 0.999;
  if ( v10 )
    v11 = 0.0;
  else
    v11 = 1.0;
  if ( v10 )
    v12 = 1.0;
  else
    v12 = 0.0;
  v13 = v9 + (float)((float)(v11 * v7) + (float)(v12 * v8));
  *(float *)(a1 + 28) = v11 - (float)(v7 * v13);
  *(float *)(a1 + 32) = v12 - (float)(v8 * v13);
  *(float *)(a1 + 36) = 0.0 - (float)(v7 * v13);
  glitch::core::vector3d<float>::normalize(a1 + 28);
  v14 = *(float *)(a1 + 36);
  v15 = *(float *)(a1 + 32);
  v28 = (float)(COERCE_FLOAT(LODWORD(v8) + 0x80000000) * v14) + (float)(v7 * v15);
  v16 = *(float *)(a1 + 28);
  LODWORD(v17) = LODWORD(v7) + 0x80000000;
  v18 = (float)(COERCE_FLOAT(LODWORD(v7) + 0x80000000) * v16) + (float)(v7 * v14);
  v19 = (float)(v15 * v17) + (float)(v8 * v16);
  v20 = *(float *)(a1 + 4);
  *(float *)(a1 + 48) = v19;
  *(float *)(a1 + 40) = v28;
  v21 = *(float *)(a1 + 8);
  *(float *)(a1 + 44) = v18;
  v22 = v19;
  v27 = v21;
  *(float *)(a1 + 4) = (float)((float)(v20 * *a2) + (float)(v21 * a2[4])) + (float)(*(float *)(a1 + 12) * a2[8]);
  *(float *)(a1 + 8) = (float)((float)(v20 * a2[1]) + (float)(v21 * a2[5])) + (float)(*(float *)(a1 + 12) * a2[9]);
  v23 = v20 * a2[2];
  v24 = *(float *)(a1 + 16);
  v25 = *(float *)(a1 + 20);
  *(float *)(a1 + 12) = (float)(v23 + (float)(v27 * a2[6])) + (float)(*(float *)(a1 + 12) * a2[10]);
  *(float *)(a1 + 16) = (float)((float)(v24 * *a2) + (float)(v25 * a2[4])) + (float)(*(float *)(a1 + 24) * a2[8]);
  *(float *)(a1 + 20) = (float)((float)(v24 * a2[1]) + (float)(v25 * a2[5])) + (float)(*(float *)(a1 + 24) * a2[9]);
  *(float *)(a1 + 24) = (float)((float)(v24 * a2[2]) + (float)(v25 * a2[6])) + (float)(*(float *)(a1 + 24) * a2[10]);
  *(float *)(a1 + 28) = (float)((float)(v16 * *a2) + (float)(v15 * a2[4])) + (float)(v14 * a2[8]);
  *(float *)(a1 + 32) = (float)((float)(v16 * a2[1]) + (float)(v15 * a2[5])) + (float)(v14 * a2[9]);
  *(float *)(a1 + 36) = (float)((float)(v16 * a2[2]) + (float)(v15 * a2[6])) + (float)(v14 * a2[10]);
  *(float *)(a1 + 40) = (float)((float)(v28 * *a2) + (float)(v18 * a2[4])) + (float)(v22 * a2[8]);
  *(float *)(a1 + 44) = (float)((float)(v28 * a2[1]) + (float)(v18 * a2[5])) + (float)(v22 * a2[9]);
  result = (float)((float)(v28 * a2[2]) + (float)(v18 * a2[6])) + (float)(v22 * a2[10]);
  *(float *)(a1 + 48) = result;
  return result;
}


// ===== 69ec90 glitch::ps::PDLine::transform(glitch::core::CMatrix4<float> const&) =====
float __fastcall glitch::ps::PDLine::transform(float *a1, float *a2)
{
  float v2; // r8
  float v5; // r7
  float v6; // r6
  float v7; // r9
  float v8; // r10
  float v9; // r8
  float v10; // r7
  float v11; // r6
  float v12; // r9
  float v13; // r10
  float v14; // r8
  float v15; // r7
  float v16; // r6
  float v17; // r10
  float v18; // r9
  float result; // r0

  v2 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = (float)((float)((float)(v2 * a2[1]) + (float)(v5 * a2[5])) + (float)(v6 * a2[9])) + a2[13];
  v8 = (float)((float)((float)(v2 * a2[2]) + (float)(v5 * a2[6])) + (float)(v6 * a2[10])) + a2[14];
  a1[1] = (float)((float)((float)(v2 * *a2) + (float)(v5 * a2[4])) + (float)(v6 * a2[8])) + a2[12];
  v9 = a1[4];
  a1[2] = v7;
  a1[3] = v8;
  v10 = a1[5];
  v11 = a1[6];
  v12 = (float)((float)((float)(v9 * a2[1]) + (float)(a1[5] * a2[5])) + (float)(a1[6] * a2[9])) + a2[13];
  v13 = (float)((float)((float)(v9 * a2[2]) + (float)(v10 * a2[6])) + (float)(v11 * a2[10])) + a2[14];
  a1[4] = (float)((float)((float)(v9 * *a2) + (float)(v10 * a2[4])) + (float)(v11 * a2[8])) + a2[12];
  v14 = a1[7];
  a1[5] = v12;
  a1[6] = v13;
  v15 = a1[8];
  v16 = a1[9];
  v17 = (float)((float)((float)(v14 * a2[1]) + (float)(a1[8] * a2[5])) + (float)(a1[9] * a2[9])) + a2[13];
  v18 = (float)((float)((float)(v14 * a2[2]) + (float)(v15 * a2[6])) + (float)(v16 * a2[10])) + a2[14];
  result = (float)((float)((float)(v14 * *a2) + (float)(v15 * a2[4])) + (float)(v16 * a2[8])) + a2[12];
  a1[7] = result;
  a1[9] = v18;
  a1[8] = v17;
  return result;
}


// ===== 69efac glitch::ps::PDBox::transform(glitch::core::CMatrix4<float> const&) =====
float __fastcall glitch::ps::PDBox::transform(int a1, float *a2)
{
  float v4; // r11
  float v5; // r9
  float v6; // r0
  float v7; // r10
  float v8; // r8
  float v9; // r0
  int v10; // r3
  int v11; // r3
  int v12; // r3
  float v13; // r11
  float v14; // r10
  float v15; // r9
  float v16; // r0
  float result; // r0
  float v18; // [sp+4h] [bp-10h]
  float v19; // [sp+8h] [bp-Ch]
  float v20; // [sp+Ch] [bp-8h]

  v4 = *(float *)(a1 + 44) * -0.5;
  v5 = *(float *)(a1 + 48) * -0.5;
  v6 = *(float *)(a1 + 52) * -0.5;
  *(float *)(a1 + 4) = v4;
  v7 = v6;
  *(float *)(a1 + 8) = v5;
  *(float *)(a1 + 12) = v6;
  v8 = *(float *)(a1 + 44) * 0.5;
  v9 = *(float *)(a1 + 48) * 0.5;
  v18 = *(float *)(a1 + 52) * 0.5;
  *(float *)(a1 + 16) = v8;
  *(float *)(a1 + 20) = v9;
  *(_DWORD *)(a1 + 60) = 0;
  *(float *)(a1 + 24) = v18;
  v10 = *(_DWORD *)(a1 + 44);
  *(_DWORD *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)(a1 + 56) = v10;
  v11 = *(_DWORD *)(a1 + 48);
  *(_DWORD *)(a1 + 76) = 0;
  *(_DWORD *)(a1 + 80) = 0;
  *(_DWORD *)(a1 + 72) = v11;
  v12 = *(_DWORD *)(a1 + 52);
  *(_DWORD *)(a1 + 84) = 0;
  *(_DWORD *)(a1 + 88) = v12;
  v19 = (float)((float)((float)(v4 * *a2) + (float)(v5 * a2[4])) + (float)(v7 * a2[8])) + a2[12];
  v20 = (float)((float)((float)(v4 * a2[1]) + (float)(v5 * a2[5])) + (float)(v7 * a2[9])) + a2[13];
  v13 = (float)((float)((float)(v4 * a2[2]) + (float)(v5 * a2[6])) + (float)(v7 * a2[10])) + a2[14];
  *(float *)(a1 + 4) = v19;
  *(float *)(a1 + 12) = v13;
  *(float *)(a1 + 8) = v20;
  v14 = (float)((float)((float)(v8 * *a2) + (float)(v9 * a2[4])) + (float)(v18 * a2[8])) + a2[12];
  v15 = (float)((float)((float)(v8 * a2[1]) + (float)(v9 * a2[5])) + (float)(v18 * a2[9])) + a2[13];
  v16 = (float)((float)((float)(v8 * a2[2]) + (float)(v9 * a2[6])) + (float)(v18 * a2[10])) + a2[14];
  *(float *)(a1 + 16) = v14;
  *(float *)(a1 + 24) = v16;
  *(float *)(a1 + 20) = v15;
  *(float *)(a1 + 56) = (float)((float)(*(float *)(a1 + 44) * *a2) + (float)(a2[4] * 0.0)) + (float)(a2[8] * 0.0);
  *(float *)(a1 + 60) = (float)((float)(*(float *)(a1 + 44) * a2[1]) + (float)(a2[5] * 0.0)) + (float)(a2[9] * 0.0);
  *(float *)(a1 + 64) = (float)((float)(*(float *)(a1 + 44) * a2[2]) + (float)(a2[6] * 0.0)) + (float)(a2[10] * 0.0);
  *(float *)(a1 + 68) = (float)((float)(*a2 * 0.0) + (float)(*(float *)(a1 + 48) * a2[4])) + (float)(a2[8] * 0.0);
  *(float *)(a1 + 72) = (float)((float)(a2[1] * 0.0) + (float)(*(float *)(a1 + 48) * a2[5])) + (float)(a2[9] * 0.0);
  *(float *)(a1 + 76) = (float)((float)(a2[2] * 0.0) + (float)(*(float *)(a1 + 48) * a2[6])) + (float)(a2[10] * 0.0);
  *(float *)(a1 + 80) = (float)((float)(*a2 * 0.0) + (float)(a2[4] * 0.0)) + (float)(*(float *)(a1 + 52) * a2[8]);
  *(float *)(a1 + 84) = (float)((float)(a2[1] * 0.0) + (float)(a2[5] * 0.0)) + (float)(*(float *)(a1 + 52) * a2[9]);
  *(float *)(a1 + 88) = (float)((float)(a2[2] * 0.0) + (float)(a2[6] * 0.0)) + (float)(*(float *)(a1 + 52) * a2[10]);
  *(float *)(a1 + 28) = v14 - v19;
  *(float *)(a1 + 32) = v15 - v20;
  result = v16 - v13;
  *(float *)(a1 + 36) = result;
  return result;
}


// ===== 69f54c util_number_is_power_2(uint) =====
bool __fastcall util_number_is_power_2(_BOOL4 result)
{
  if ( result )
    return (result ? result : -1) == ((result - 1) ^ result);
  return result;
}


// ===== 69f570 InterpolateColours(int const*,int const*,int const*,int const*,int,int,int,int *) =====
int __fastcall InterpolateColours(
        const int *a1,
        const int *a2,
        const int *a3,
        const int *a4,
        int a5,
        char a6,
        char a7,
        int *a8)
{
  int i; // r1
  int v10; // r10
  int v11; // r8
  int v12; // r12
  int result; // r0
  int v14; // r8
  unsigned int j; // r3
  int v16; // r1
  int v17; // r2
  int v18; // r3
  int k; // r3
  int v20; // r1
  int v21; // r2
  int v22; // r3
  _BYTE v23[64]; // [sp+8h] [bp-30h]

  for ( i = 0; i != 4; ++i )
  {
    v10 = a2[i];
    v11 = a3[i];
    v12 = a4[i];
    *(_DWORD *)&v23[i * 4 + 48] = a1[i];
    *(_DWORD *)&v23[i * 4 + 32] = v10;
    *(_DWORD *)&v23[i * 4 + 16] = v11;
    *(_DWORD *)&v23[i * 4] = v12;
  }
  if ( a5 )
  {
    result = 8;
    v14 = (a6 & 7 | (2 * (~a6 & 4))) - 4;
  }
  else
  {
    result = 4;
    v14 = (a6 & 3 | (2 * (~a6 & 2))) - 2;
  }
  for ( j = 0; j != 16; j += 4 )
  {
    v16 = *(_DWORD *)&v23[j + 48] * result + (*(_DWORD *)&v23[j + 32] - *(_DWORD *)&v23[j + 48]) * v14;
    a8[j / 4] = ((a7 & 3 | (2 * (~a7 & 2))) - 2)
              * (*(_DWORD *)&v23[j + 16] * result + (*(_DWORD *)&v23[j] - *(_DWORD *)&v23[j + 16]) * v14 - v16)
              + 4 * v16;
  }
  if ( a5 )
  {
    v20 = a8[1] >> 2;
    result = *a8 >> 2;
    v21 = a8[2] >> 2;
    v22 = a8[3] >> 1;
    *a8 = result;
    a8[1] = v20;
    a8[2] = v21;
    a8[3] = v22;
  }
  else
  {
    v17 = a8[1] >> 1;
    v18 = a8[2] >> 1;
    *a8 >>= 1;
    a8[1] = v17;
    a8[2] = v18;
  }
  for ( k = 0; k != 3; ++k )
    a8[k] += a8[k] >> 5;
  a8[3] += a8[3] >> 4;
  return result;
}


// ===== 69f6f4 TwiddleUV(ulong,ulong,ulong,ulong) =====
unsigned int __fastcall TwiddleUV(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  bool v4; // cf
  char v5; // r3
  int v6; // r5
  char v7; // r6
  int v8; // r4
  unsigned int v9; // r12
  bool v10; // zf

  v4 = a1 >= a2;
  if ( a1 < a2 )
    a2 = a4;
  else
    a1 = a2;
  if ( v4 )
    a2 = a3;
  if ( a1 > 1 )
  {
    v6 = 0;
    v8 = 1;
    v7 = 0;
    v9 = 1;
    while ( 1 )
    {
      if ( (v9 & a3) != 0 )
        v6 |= v8;
      v10 = (v9 & a4) == 0;
      v9 *= 2;
      if ( !v10 )
        v6 |= 2 * v8;
      ++v7;
      if ( a1 <= v9 )
        break;
      v8 *= 4;
    }
    v5 = 2 * v7;
  }
  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }
  return v6 | (a2 >> v7 << v5);
}


// ===== 69f768 PVRTCDecompress(void const*,int,int,int,uchar *) =====
int __fastcall PVRTCDecompress(char *a1, int a2, int a3, int a4, unsigned __int8 *a5)
{
  int v5; // r1
  int result; // r0
  unsigned int v7; // r4
  int v8; // r5
  int v9; // lr
  unsigned int v10; // r0
  char **v11; // r6
  int i; // r5
  int v13; // r12
  int *v14; // r4
  _DWORD *v15; // r1
  unsigned int v16; // r3
  int v17; // r7
  int v18; // r3
  int v19; // r7
  unsigned int v20; // r1
  int v21; // r12
  int v22; // r10
  int v23; // r9
  int j; // r7
  int v25; // r3
  int v26; // r12
  int v27; // r4
  int *v28; // r7
  char v29; // r12
  char v30; // r2
  int v31; // r2
  int v32; // r3
  int v33; // r3
  int v34; // r4
  int v35; // r12
  int ii; // r3
  bool v37; // zf
  int v38; // r4
  unsigned __int8 v39; // r1
  unsigned __int8 *v40; // r3
  int v41; // r12
  unsigned __int8 v42; // r2
  int m; // r10
  int n; // r3
  _BYTE *v45; // r7
  int k; // r3
  int v47; // r4
  int v48; // r4
  int v49; // [sp+10h] [bp-594h]
  int v50; // [sp+18h] [bp-58Ch]
  int v51; // [sp+20h] [bp-584h]
  int v52; // [sp+24h] [bp-580h]
  unsigned int v54; // [sp+2Ch] [bp-578h]
  _BYTE *v56; // [sp+38h] [bp-56Ch]
  int v57; // [sp+50h] [bp-554h]
  int v58; // [sp+54h] [bp-550h]
  int v59; // [sp+58h] [bp-54Ch]
  int v60; // [sp+68h] [bp-53Ch]
  int v62; // [sp+70h] [bp-534h]
  unsigned int v63; // [sp+90h] [bp-514h]
  int v64; // [sp+A4h] [bp-500h]
  int v65; // [sp+A8h] [bp-4FCh]
  _BYTE *v67; // [sp+B8h] [bp-4ECh]
  _BYTE *v68; // [sp+BCh] [bp-4E8h]
  _BYTE v69[8]; // [sp+C8h] [bp-4DCh] BYREF
  _DWORD v70[126]; // [sp+2C8h] [bp-2DCh] BYREF
  int v71[4]; // [sp+4C8h] [bp-DCh] BYREF
  int v72[4]; // [sp+4D8h] [bp-CCh] BYREF
  int v73[4]; // [sp+4E8h] [bp-BCh] BYREF
  int v74[4]; // [sp+4F8h] [bp-ACh] BYREF
  int v75[4]; // [sp+508h] [bp-9Ch] BYREF
  int v76[4]; // [sp+518h] [bp-8Ch] BYREF
  int v77[4]; // [sp+528h] [bp-7Ch] BYREF
  int v78; // [sp+538h] [bp-6Ch] BYREF
  int v79; // [sp+548h] [bp-5Ch]
  int v80; // [sp+54Ch] [bp-58h]
  int v81; // [sp+550h] [bp-54h]
  int v82; // [sp+554h] [bp-50h]
  int v83[2]; // [sp+558h] [bp-4Ch] BYREF
  int v84[2]; // [sp+568h] [bp-3Ch] BYREF
  char *v85; // [sp+578h] [bp-2Ch] BYREF
  char *v86; // [sp+57Ch] [bp-28h]
  char *v87; // [sp+580h] [bp-24h]
  char *v88; // [sp+584h] [bp-20h]
  char *v89; // [sp+588h] [bp-1Ch] BYREF
  char *v90; // [sp+58Ch] [bp-18h]
  char *v91; // [sp+590h] [bp-14h]
  char *v92; // [sp+594h] [bp-10h]
  unsigned int v93; // [sp+598h] [bp-Ch]
  unsigned int v94; // [sp+59Ch] [bp-8h]

  if ( a2 )
    v5 = 8;
  else
    v5 = 4;
  v60 = v5;
  result = a3 / v5;
  if ( a3 / v5 < 2 )
    result = 2;
  v54 = result;
  if ( a4 > 7 )
  {
    v52 = a4 >> 2;
LABEL_10:
    v62 = 0;
    v85 = nullptr;
    v86 = nullptr;
    v87 = nullptr;
    v88 = nullptr;
    v57 = 0;
    while ( 1 )
    {
      if ( a3 <= 0 )
        goto LABEL_65;
      v65 = v57 & 3 | (2 * (~(_BYTE)v57 & 2));
      v58 = ((v57 - 2) & (a4 - 1)) / 4;
      v68 = &v70[16 * v65 + 16];
      v64 = v65 << 6;
      v59 = (v58 + 1) & (v52 - 1);
      v67 = &v70[16 * v65 - 16];
      v63 = v54 - 1;
      v49 = 0;
      do
      {
        v7 = (int)((a3 - 1) & (v49 - ((unsigned int)v60 >> 1))) / v60;
        v89 = &a1[8 * TwiddleUV(v52, v54, v58, v7)];
        v90 = &a1[8 * TwiddleUV(v52, v54, v58, (v7 + 1) & v63)];
        v91 = &a1[8 * TwiddleUV(v52, v54, v59, v7)];
        v92 = &a1[8 * TwiddleUV(v52, v54, v59, (v7 + 1) & v63)];
        if ( !memcmp(&v85, &v89, 0x10u) )
          goto LABEL_42;
        v8 = a2;
        v9 = 0;
        if ( a2 )
          v8 = 1;
        v50 = v8;
        v56 = v70;
        v51 = 0;
        do
        {
          v10 = 0;
          v11 = &(&v89)[2 * v51];
          for ( i = 0; i != 2; ++i )
          {
            v13 = 0;
            v14 = &v71[16 * v51 + 8 * i];
            v15 = v14;
            v16 = *((_DWORD *)*v11 + 1) & 0xFFFE;
            v94 = HIWORD(*((_DWORD *)*v11 + 1));
            v93 = v16;
            while ( (v16 & 0x8000) == 0 )
            {
              *v15 = (v16 >> 7) & 0x1E | (((v16 >> 7) & 0x1E) >> 4);
              v15[1] = (v16 >> 3) & 0x1E | (((v16 >> 3) & 0x1E) >> 4);
              v15[2] = 2 * (v16 & 0xF);
              v17 = v14[2];
              v18 = (v16 >> 11) & 0xE;
              if ( v13 )
                v19 = v17 | (v17 >> 4);
              else
                v19 = v17 | (v17 >> 3);
              v14[2] = v19;
              v15[3] = v18;
              v15 += 4;
              if ( v13 == 1 )
                goto LABEL_28;
LABEL_23:
              v16 = v94;
              v13 = 1;
            }
            *v15 = (v16 >> 10) & 0x1F;
            v15[1] = (v16 >> 5) & 0x1F;
            v15[2] = v16 & 0x1F;
            if ( !v13 )
              v14[2] |= v14[2] >> 4;
            v15[3] = 15;
            v15 += 4;
            if ( v13 != 1 )
              goto LABEL_23;
LABEL_28:
            v20 = *(_DWORD *)*v11;
            v21 = *((_DWORD *)*v11 + 1) & 1;
            v22 = v50 & v21;
            if ( (v50 & v21) != 0 )
            {
              v23 = 0;
              for ( j = 0; j != 4; ++j )
              {
                v25 = 0;
                v26 = 0;
                do
                {
                  v27 = v26 ^ j;
                  if ( ((v26 ^ j) & 1) == 0 )
                    v27 = v20 & 3;
                  *(_DWORD *)&v69[v23 + v9 * 4 + v10 + v25] = 1;
                  if ( ((v26 ^ j) & 1) == 0 )
                    *(_DWORD *)&v56[v10 + v23 + v25] = v27;
                  v25 += 4;
                  if ( ((v26 ^ j) & 1) == 0 )
                    v20 >>= 2;
                  ++v26;
                }
                while ( v25 != 32 );
                v23 += 64;
              }
            }
            else if ( v50 )
            {
              v45 = &v56[v10];
              do
              {
                for ( k = 0; k != 32; k += 4 )
                {
                  v47 = v20 & 1;
                  if ( (v20 & 1) != 0 )
                    v47 = 3;
                  *(_DWORD *)&v69[v9 * 4 + v22 + v10 + k] = v21;
                  *(_DWORD *)&v45[k] = v47;
                  v20 >>= 1;
                }
                v22 += 64;
                v45 += 64;
              }
              while ( v22 != 256 );
            }
            else
            {
              for ( m = 0; m != 64; m += 16 )
              {
                for ( n = 0; n != 4; ++n )
                {
                  *(_DWORD *)&v69[v9 * 4 + m * 4 + v10 + n * 4] = v21;
                  v70[v9 + m + v10 / 4 + n] = v20 & 3;
                  v20 >>= 2;
                }
              }
            }
            ++v11;
            v10 += 4 * v60;
          }
          v9 += 64;
          ++v51;
          v56 += 256;
        }
        while ( v9 != 128 );
        v85 = v89;
        v86 = v90;
        v87 = v91;
        v88 = v92;
LABEL_42:
        v28 = v84;
        InterpolateColours(v71, v73, v75, v77, a2, v49, v57, v84);
        InterpolateColours(v72, v74, v76, &v78, a2, v49, v57, v83);
        if ( a2 )
          LOBYTE(v28) = v49;
        else
          v29 = v49;
        if ( a2 )
          v30 = ~(_BYTE)v28;
        else
          v30 = ~v29;
        if ( a2 )
        {
          v31 = v30 & 4;
          v32 = (unsigned __int8)v28 & 7;
        }
        else
        {
          v31 = v30 & 2;
          v32 = v29 & 3;
        }
        v33 = v32 | (2 * v31);
        v34 = *(_DWORD *)&v69[64 * v65 + 4 * v33];
        if ( v34 )
        {
          if ( a2 )
          {
            if ( (((unsigned __int8)v33 ^ (unsigned __int8)v65) & 1) != 0 )
            {
              if ( v34 == 1 )
              {
                v35 = (*((_DWORD *)&GetModulationValue(int,int,int,int const(*)[16],int const(*)[16],int *,int *)::RepVals0
                       + *(_DWORD *)&v67[4 * v33])
                     + *((_DWORD *)&GetModulationValue(int,int,int,int const(*)[16],int const(*)[16],int *,int *)::RepVals0
                       + *(_DWORD *)&v68[4 * v33])
                     + 2
                     + *((_DWORD *)&GetModulationValue(int,int,int,int const(*)[16],int const(*)[16],int *,int *)::RepVals0
                       + *(_DWORD *)((char *)&v70[v33 - 1] + v64))
                     + *((_DWORD *)&GetModulationValue(int,int,int,int const(*)[16],int const(*)[16],int *,int *)::RepVals0
                       + *(_DWORD *)((char *)&v70[v33 + 1] + v64)))
                    / 4;
                v34 = 0;
              }
              else if ( v34 == 2 )
              {
                v34 = 0;
                v35 = (*((_DWORD *)&GetModulationValue(int,int,int,int const(*)[16],int const(*)[16],int *,int *)::RepVals0
                       + *(_DWORD *)((char *)&v70[v33 - 1] + v64))
                     + *((_DWORD *)&GetModulationValue(int,int,int,int const(*)[16],int const(*)[16],int *,int *)::RepVals0
                       + *(_DWORD *)((char *)&v70[v33 + 1] + v64))
                     + 1)
                    / 2;
              }
              else
              {
                v34 = 0;
                v35 = (*((_DWORD *)&GetModulationValue(int,int,int,int const(*)[16],int const(*)[16],int *,int *)::RepVals0
                       + *(_DWORD *)&v67[4 * v33])
                     + *((_DWORD *)&GetModulationValue(int,int,int,int const(*)[16],int const(*)[16],int *,int *)::RepVals0
                       + *(_DWORD *)&v68[4 * v33])
                     + 1)
                    / 2;
              }
            }
            else
            {
              v34 = ((unsigned __int8)v33 ^ (unsigned __int8)v65) & 1;
              v35 = *((_DWORD *)&GetModulationValue(int,int,int,int const(*)[16],int const(*)[16],int *,int *)::RepVals0
                    + *(_DWORD *)((char *)&v70[v33] + v64));
            }
          }
          else
          {
            v48 = *(_DWORD *)((char *)&v70[v33] + v64);
            v35 = *((_DWORD *)&GetModulationValue(int,int,int,int const(*)[16],int const(*)[16],int *,int *)::RepVals0
                  + v48
                  + 4);
            v34 = v48 == 2;
          }
        }
        else
        {
          v35 = *((_DWORD *)&GetModulationValue(int,int,int,int const(*)[16],int const(*)[16],int *,int *)::RepVals0
                + *(_DWORD *)((char *)&v70[v33] + v64));
        }
        for ( ii = 0; ii != 4; ++ii )
          *(int *)((char *)&v79 + ii * 4) = (8 * v84[ii] + (v83[ii] - v84[ii]) * v35) >> 3;
        v37 = v34 == 0;
        v38 = v49;
        v39 = v80;
        v40 = &a5[4 * v62 + 4 * v49];
        if ( v37 )
          v41 = (unsigned __int8)v82;
        else
          v41 = 0;
        if ( !v37 )
          v82 = v41;
        a5[4 * v62 + 4 * v49] = v79;
        v40[1] = v39;
        v42 = v81;
        ++v49;
        v40[3] = v41;
        v40[2] = v42;
      }
      while ( v38 + 1 != a3 );
LABEL_65:
      result = a4;
      v37 = ++v57 == a4;
      v62 += a3;
      if ( v37 )
        return result;
    }
  }
  if ( a4 > 0 )
  {
    v52 = 2;
    goto LABEL_10;
  }
  return result;
}


// ===== 69ffe4 glitch::gui::ICursorControl::~ICursorControl() =====
void __fastcall glitch::gui::ICursorControl::~ICursorControl(glitch::gui::ICursorControl *this)
{
  ;
}


// ===== 69ffe8 glitch::CAndroidOSDevice::CCursorControl::CCursorControl(glitch::core::dimension2d<int> const&,glitch::CAndroidOSDevice*) =====
int __fastcall glitch::CAndroidOSDevice::CCursorControl::CCursorControl(int a1, int *a2, int a3)
{
  int v4; // r0
  int v5; // r3
  int v6; // r0

  *(_DWORD *)a1 = off_985858;
  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  v4 = *a2;
  *(_DWORD *)(a1 + 16) = *a2;
  v5 = a2[1];
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 20) = v5;
  *(_DWORD *)(a1 + 48) = a3;
  *(_BYTE *)(a1 + 52) = 1;
  *(_BYTE *)(a1 + 53) = 0;
  *(_DWORD *)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  if ( v4 )
    *(float *)(a1 + 24) = 1.0 / (float)v4;
  v6 = *(_DWORD *)(a1 + 20);
  if ( v6 )
    *(float *)(a1 + 28) = 1.0 / (float)v6;
  return a1;
}


// ===== 6a00a0 glitch::CAndroidOSDevice::CCursorControl::isVisible(void) =====
int __fastcall glitch::CAndroidOSDevice::CCursorControl::isVisible(glitch::CAndroidOSDevice::CCursorControl *this)
{
  return *((unsigned __int8 *)this + 52);
}


// ===== 6a00a8 glitch::CAndroidOSDevice::CCursorControl::setPosition(glitch::core::position2d<float> const&) =====
int __fastcall glitch::CAndroidOSDevice::CCursorControl::setPosition(int a1, _DWORD *a2)
{
  return (*(int (__fastcall **)(int, _DWORD, _DWORD))(*(_DWORD *)a1 + 24))(a1, *a2, a2[1]);
}


// ===== 6a00c4 glitch::CAndroidOSDevice::CCursorControl::setPosition(float,float) =====
int __fastcall glitch::CAndroidOSDevice::CCursorControl::setPosition(
        glitch::CAndroidOSDevice::CCursorControl *this,
        float a2,
        float a3)
{
  return (*(int (__fastcall **)(glitch::CAndroidOSDevice::CCursorControl *, int, int))(*(_DWORD *)this + 32))(
           this,
           (int)(float)((float)*((int *)this + 4) * a2),
           (int)(float)((float)*((int *)this + 5) * a3));
}


// ===== 6a011c glitch::CAndroidOSDevice::CCursorControl::setPosition(glitch::core::position2d<int> const&) =====
_DWORD *__fastcall glitch::CAndroidOSDevice::CCursorControl::setPosition(_DWORD *result, _DWORD *a2)
{
  int v2; // r2

  if ( result[2] != *a2 )
  {
    v2 = a2[1];
    return (_DWORD *)(*(int (__fastcall **)(_DWORD *, _DWORD, int))(*result + 32))(result, *a2, v2);
  }
  v2 = a2[1];
  if ( result[3] != v2 )
    return (_DWORD *)(*(int (__fastcall **)(_DWORD *, _DWORD, int))(*result + 32))(result, *a2, v2);
  return result;
}


// ===== 6a0164 glitch::CAndroidOSDevice::CCursorControl::getPosition(void) =====
_DWORD *__fastcall glitch::CAndroidOSDevice::CCursorControl::getPosition(_DWORD *this, int a2)
{
  *this = *(_DWORD *)(a2 + 8);
  *(this + 1) = *(_DWORD *)(a2 + 12);
  return this;
}


// ===== 6a0178 glitch::CAndroidOSDevice::CCursorControl::getRelativePosition(void) =====
glitch::CAndroidOSDevice::CCursorControl *__fastcall glitch::CAndroidOSDevice::CCursorControl::getRelativePosition(
        glitch::CAndroidOSDevice::CCursorControl *this,
        int a2)
{
  float v3; // r7
  float v4; // r0
  float v6; // r0

  if ( *(_BYTE *)(a2 + 53) )
  {
    v3 = (float)*(int *)(a2 + 8);
    v4 = (float)(*(_DWORD *)(a2 + 40) - *(_DWORD *)(a2 + 32));
    *((float *)this + 1) = (float)*(int *)(a2 + 12) / (float)(*(_DWORD *)(a2 + 44) - *(_DWORD *)(a2 + 36));
    *(float *)this = v3 / v4;
  }
  else
  {
    v6 = (float)*(int *)(a2 + 8) * *(float *)(a2 + 24);
    *((float *)this + 1) = (float)*(int *)(a2 + 12) * *(float *)(a2 + 28);
    *(float *)this = v6;
  }
  return this;
}


// ===== 6a0228 glitch::CAndroidOSDevice::CCursorControl::setReferenceRect(glitch::core::rect<int> *) =====
int __fastcall glitch::CAndroidOSDevice::CCursorControl::setReferenceRect(int result, int *a2)
{
  int v2; // r12
  int v3; // r4
  int v4; // r3
  int v5; // r2

  if ( a2 )
  {
    v2 = *a2;
    *(_DWORD *)(result + 32) = *a2;
    v3 = a2[1];
    *(_DWORD *)(result + 36) = v3;
    v4 = a2[2];
    *(_DWORD *)(result + 40) = v4;
    v5 = a2[3];
    *(_BYTE *)(result + 53) = 1;
    *(_DWORD *)(result + 44) = v5;
    if ( v3 == v5 || (((_BYTE)v5 - (_BYTE)v3) & 1) != 0 )
      *(_DWORD *)(result + 44) = v5 + 1;
    if ( v2 == v4 || (((_BYTE)v4 - (_BYTE)v2) & 1) != 0 )
      *(_DWORD *)(result + 40) = v4 + 1;
  }
  else
  {
    *(_BYTE *)(result + 53) = 0;
  }
  return result;
}


// ===== 6a02a4 glitch::CAndroidOSDevice::closeDevice(void) =====
int __fastcall glitch::CAndroidOSDevice::closeDevice(int this)
{
  *(_BYTE *)(this + 265) = 0;
  return this;
}


// ===== 6a02b0 glitch::CAndroidOSDevice::createWindow(void) =====
int __fastcall glitch::CAndroidOSDevice::createWindow(glitch::CAndroidOSDevice *this)
{
  return 1;
}


// ===== 6a02b8 glitch::CAndroidOSDevice::setResize(int,int) =====
void __fastcall glitch::CAndroidOSDevice::setResize(glitch::CAndroidOSDevice *this, int a2, int a3)
{
  ;
}


// ===== 6a02bc glitch::CAndroidOSDevice::flush(void) =====
void __fastcall glitch::CAndroidOSDevice::flush(glitch::CAndroidOSDevice *this)
{
  ;
}


// ===== 6a02c0 glitch::CAndroidOSDevice::yield(void) =====
void __fastcall glitch::CAndroidOSDevice::yield(glitch::CAndroidOSDevice *this)
{
  ;
}


// ===== 6a02c4 glitch::CAndroidOSDevice::setWindowCaption(wchar_t const*) =====
void __fastcall glitch::CAndroidOSDevice::setWindowCaption(glitch::CAndroidOSDevice *this, const wchar_t *a2)
{
  ;
}


// ===== 6a02c8 glitch::CAndroidOSDevice::isWindowActive(void) =====
int __fastcall glitch::CAndroidOSDevice::isWindowActive(glitch::CAndroidOSDevice *this)
{
  return 1;
}


// ===== 6a02d0 glitch::CAndroidOSDevice::isWindowFocused(void) =====
int __fastcall glitch::CAndroidOSDevice::isWindowFocused(glitch::CAndroidOSDevice *this)
{
  return 1;
}


// ===== 6a02d8 glitch::CAndroidOSDevice::isWindowMinimized(void) =====
int __fastcall glitch::CAndroidOSDevice::isWindowMinimized(glitch::CAndroidOSDevice *this)
{
  return 0;
}


// ===== 6a02e0 glitch::CAndroidOSDevice::postKeyEvent(void *,glitch::SEvent &,bool) =====
void glitch::CAndroidOSDevice::postKeyEvent()
{
  ;
}


// ===== 6a02e4 glitch::CAndroidOSDevice::postMouseEvent(void *,glitch::SEvent &) =====
void glitch::CAndroidOSDevice::postMouseEvent()
{
  ;
}


// ===== 6a02e8 glitch::CAndroidOSDevice::storeMouseLocation(void) =====
void __fastcall glitch::CAndroidOSDevice::storeMouseLocation(glitch::CAndroidOSDevice *this)
{
  ;
}


// ===== 6a02ec glitch::CAndroidOSDevice::setMouseLocation(int,int) =====
void __fastcall glitch::CAndroidOSDevice::setMouseLocation(glitch::CAndroidOSDevice *this, int a2, int a3)
{
  ;
}


// ===== 6a02f0 glitch::CAndroidOSDevice::CCursorControl::setPosition(int,int) =====
void __fastcall glitch::CAndroidOSDevice::CCursorControl::setPosition(
        glitch::CAndroidOSDevice::CCursorControl *this,
        int a2,
        int a3)
{
  int v3; // r5
  int v4; // r6
  glitch::CAndroidOSDevice *v6; // r0

  v3 = a2;
  v4 = a3;
  if ( *((_BYTE *)this + 53) )
  {
    a2 = *((_DWORD *)this + 8);
    a3 = *((_DWORD *)this + 9);
  }
  if ( *((_BYTE *)this + 53) )
  {
    a2 += v3;
    v6 = *((glitch::CAndroidOSDevice **)this + 12);
    a3 += v4;
  }
  else
  {
    v6 = *((glitch::CAndroidOSDevice **)this + 12);
  }
  glitch::CAndroidOSDevice::setMouseLocation(v6, a2, a3);
  *((_DWORD *)this + 3) = v4;
  *((_DWORD *)this + 2) = v3;
}


// ===== 6a0330 glitch::CAndroidOSDevice::setCursorVisible(bool) =====
void __fastcall glitch::CAndroidOSDevice::setCursorVisible(glitch::CAndroidOSDevice *this, bool a2)
{
  ;
}


// ===== 6a0334 glitch::CAndroidOSDevice::CCursorControl::setVisible(bool) =====
void __fastcall glitch::CAndroidOSDevice::CCursorControl::setVisible(
        glitch::CAndroidOSDevice::CCursorControl *this,
        bool a2)
{
  *((_BYTE *)this + 52) = a2;
  glitch::CAndroidOSDevice::setCursorVisible(*((glitch::CAndroidOSDevice **)this + 12), a2);
}


// ===== 6a0340 glitch::CAndroidOSDevice::initKeycodes(void) =====
void __fastcall glitch::CAndroidOSDevice::initKeycodes(glitch::CAndroidOSDevice *this)
{
  ;
}


// ===== 6a0344 glitch::CAndroidOSDevice::setResizeAble(bool) =====
void __fastcall glitch::CAndroidOSDevice::setResizeAble(glitch::CAndroidOSDevice *this, bool a2)
{
  ;
}


// ===== 6a0348 glitch::CAndroidOSDevice::getVideoModeList(void) =====
int __fastcall glitch::CAndroidOSDevice::getVideoModeList(glitch::CAndroidOSDevice *this)
{
  return 0;
}


// ===== 6a0350 glitch::CAndroidOSDevice::CCursorControl::~CCursorControl() =====
void __fastcall glitch::CAndroidOSDevice::CCursorControl::~CCursorControl(
        glitch::CAndroidOSDevice::CCursorControl *this)
{
  ;
}


// ===== 6a0354 `global constructor keyed to'.._source_glitch_CAndroidOSDevice.cpp =====
void `global constructor keyed to'.._source_glitch_CAndroidOSDevice.cpp()
{
  dword_9F75FC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F75F8 = 1056964608;
}


// ===== 6a0374 glitch::CAndroidOSDevice::sleep(uint,bool) =====
int __fastcall glitch::CAndroidOSDevice::sleep(
        glitch::CAndroidOSDevice *this,
        unsigned int a2,
        struct timespec *remaining)
{
  int v3; // r3
  int v7; // r7
  _DWORD v9[3]; // [sp+0h] [bp-Ch] BYREF

  v3 = *((_DWORD *)this + 8);
  if ( v3 )
    v7 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 40))(*((_DWORD *)this + 8));
  else
    v7 = 1;
  v9[0] = a2 / 0x3E8;
  v9[1] = 1000000 * (a2 % 0x3E8);
  if ( !remaining )
    return nanosleep((const struct timespec *)v9, nullptr);
  if ( v7 )
    return nanosleep((const struct timespec *)v9, nullptr);
  (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 8) + 24))(*((_DWORD *)this + 8));
  nanosleep((const struct timespec *)v9, nullptr);
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 8) + 28))(*((_DWORD *)this + 8));
}


// ===== 6a0440 glitch::CAndroidOSDevice::runImpl(void) =====
int __fastcall glitch::CAndroidOSDevice::runImpl(glitch::CAndroidOSDevice *this)
{
  glitch::os::Timer::tick(this);
  return *((unsigned __int8 *)this + 265);
}


// ===== 6a0454 glitch::CAndroidOSDevice::createDriver(void) =====
int *__fastcall glitch::CAndroidOSDevice::createDriver(glitch::CAndroidOSDevice *this, glitch::IDevice *a2)
{
  int v2; // r3
  int *result; // r0

  v2 = *((_DWORD *)this + 23);
  if ( v2 == 1 )
  {
    result = (int *)glitch::video::createOpenGLES2Driver(this, a2);
    *((_DWORD *)this + 4) = result;
    if ( !result )
      return glitch::os::Printer::log((int)"No OpenGL support compiled in.", 3);
  }
  else if ( v2 <= 1 )
  {
    if ( v2 )
      return glitch::os::Printer::log((int)"Unable to create video driver of unknown type.", 3);
    result = (int *)glitch::video::createNullDriver(this, a2);
    *((_DWORD *)this + 4) = result;
  }
  else
  {
    if ( v2 != 128 && v2 != 256 )
      return glitch::os::Printer::log((int)"Unable to create video driver of unknown type.", 3);
    return glitch::os::Printer::log(
             (int)"This driver is not available in OSX. Try OpenGL or Software renderer.",
             (int)&dword_0 + 3);
  }
  return result;
}


// ===== 6a04ec glitch::CAndroidOSDevice::CCursorControl::~CCursorControl() =====
void __fastcall glitch::CAndroidOSDevice::CCursorControl::~CCursorControl(
        glitch::CAndroidOSDevice::CCursorControl *this)
{
  LC_API_FREE_0(this);
}


// ===== 6a0500 glitch::gui::ICursorControl::~ICursorControl() =====
void __fastcall glitch::gui::ICursorControl::~ICursorControl(glitch::gui::ICursorControl *this)
{
  LC_API_FREE_0(this);
}


// ===== 6a0514 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,glitch::core::SAllocator<std::pair<int const,int>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,glitch::core::SAllocator<std::pair<int const,int>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        _DWORD *a2)
{
  _DWORD *v2; // r4
  _DWORD *v4; // r6

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,glitch::core::SAllocator<std::pair<int const,int>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      GlitchFree(v2);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 6a0548 glitch::CAndroidOSDevice::~CAndroidOSDevice() =====
void __fastcall glitch::CAndroidOSDevice::~CAndroidOSDevice(glitch::CAndroidOSDevice *this)
{
  int v1; // r1
  char *v3; // r5

  v1 = *((_DWORD *)this + 62);
  *(_DWORD *)this = off_9858C8;
  if ( v1 )
  {
    v3 = (char *)this + 232;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,glitch::core::SAllocator<std::pair<int const,int>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 232,
      *((_DWORD **)this + 59));
    *((_DWORD *)this + 61) = v3;
    *((_DWORD *)this + 62) = 0;
    *((_DWORD *)this + 60) = v3;
    *((_DWORD *)this + 59) = 0;
  }
  glitch::IDevice::~IDevice(this);
}


// ===== 6a05b0 glitch::CAndroidOSDevice::~CAndroidOSDevice() =====
void __fastcall glitch::CAndroidOSDevice::~CAndroidOSDevice(glitch::CAndroidOSDevice *this)
{
  glitch::CAndroidOSDevice::~CAndroidOSDevice(this);
  LC_API_FREE_0(this);
}


// ===== 6a05cc glitch::CAndroidOSDevice::~CAndroidOSDevice() =====
void __fastcall glitch::CAndroidOSDevice::~CAndroidOSDevice(glitch::CAndroidOSDevice *this)
{
  int v1; // r1
  char *v3; // r5

  v1 = *((_DWORD *)this + 62);
  *(_DWORD *)this = off_9858C8;
  if ( v1 )
  {
    v3 = (char *)this + 232;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,int>,std::priv::_Select1st<std::pair<int const,int>>,std::priv::_MapTraitsT<std::pair<int const,int>>,glitch::core::SAllocator<std::pair<int const,int>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 232,
      *((_DWORD **)this + 59));
    *((_DWORD *)this + 61) = v3;
    *((_DWORD *)this + 62) = 0;
    *((_DWORD *)this + 60) = v3;
    *((_DWORD *)this + 59) = 0;
  }
  glitch::IDevice::~IDevice(this);
}


// ===== 6a0634 glitch::CAndroidOSDevice::CAndroidOSDevice(glitch::SCreationParameters const&) =====
int __fastcall glitch::CAndroidOSDevice::CAndroidOSDevice(int a1, int a2)
{
  glitch::COSOperator *v3; // r10
  int v4; // r7
  glitch::IDevice *v5; // r1
  struct utsname v7; // [sp+4h] [bp-190h] BYREF

  glitch::IDevice::IDevice((_DWORD *)a1, a2);
  *(_DWORD *)(a1 + 220) = 0;
  *(_DWORD *)(a1 + 236) = 0;
  *(_DWORD *)a1 = off_9858C8;
  *(_BYTE *)(a1 + 232) = 0;
  *(_DWORD *)(a1 + 244) = a1 + 232;
  *(_DWORD *)(a1 + 240) = a1 + 232;
  *(_DWORD *)(a1 + 248) = 0;
  *(_BYTE *)(a1 + 264) = 1;
  *(_BYTE *)(a1 + 265) = 1;
  uname(&v7);
  v3 = (glitch::COSOperator *)operator new(0x50u);
  glitch::COSOperator::COSOperator(v3, v7.version);
  *(_DWORD *)(a1 + 48) = v3;
  glitch::os::Printer::log((int)v7.version, 1);
  glitch::CAndroidOSDevice::initKeycodes((glitch::CAndroidOSDevice *)a1);
  if ( *(_DWORD *)(a1 + 92) )
    glitch::CAndroidOSDevice::createWindow((glitch::CAndroidOSDevice *)a1);
  v4 = operator new(0x38u);
  glitch::CAndroidOSDevice::CCursorControl::CCursorControl(v4, (int *)(a1 + 96), a1);
  *(_DWORD *)(a1 + 36) = v4;
  glitch::CAndroidOSDevice::createDriver((glitch::CAndroidOSDevice *)a1, v5);
  glitch::IDevice::createGUIAndScene((glitch::IDevice *)a1);
  return a1;
}


// ===== 6a0748 glitch::createDeviceEx(glitch::SCreationParameters const&) =====
glitch::IReferenceCounted *__fastcall glitch::createDeviceEx(_DWORD *a1)
{
  glitch::IReferenceCounted *v2; // r4

  v2 = (glitch::IReferenceCounted *)operator new(0x10Cu);
  glitch::CAndroidOSDevice::CAndroidOSDevice((int)v2, (int)a1);
  if ( !v2 || *((_DWORD *)v2 + 4) || !*a1 )
    return v2;
  glitch::IReferenceCounted::drop(v2);
  return nullptr;
}


// ===== 6a079c glitch::CAndroidOSDevice::CAndroidOSDevice(glitch::SCreationParameters const&) =====
int __fastcall glitch::CAndroidOSDevice::CAndroidOSDevice(int a1, int a2)
{
  glitch::COSOperator *v3; // r10
  int v4; // r7
  glitch::IDevice *v5; // r1
  struct utsname v7; // [sp+4h] [bp-190h] BYREF

  glitch::IDevice::IDevice((_DWORD *)a1, a2);
  *(_DWORD *)(a1 + 220) = 0;
  *(_DWORD *)(a1 + 236) = 0;
  *(_DWORD *)a1 = off_9858C8;
  *(_BYTE *)(a1 + 232) = 0;
  *(_DWORD *)(a1 + 244) = a1 + 232;
  *(_DWORD *)(a1 + 240) = a1 + 232;
  *(_DWORD *)(a1 + 248) = 0;
  *(_BYTE *)(a1 + 264) = 1;
  *(_BYTE *)(a1 + 265) = 1;
  uname(&v7);
  v3 = (glitch::COSOperator *)operator new(0x50u);
  glitch::COSOperator::COSOperator(v3, v7.version);
  *(_DWORD *)(a1 + 48) = v3;
  glitch::os::Printer::log((int)v7.version, 1);
  glitch::CAndroidOSDevice::initKeycodes((glitch::CAndroidOSDevice *)a1);
  if ( *(_DWORD *)(a1 + 92) )
    glitch::CAndroidOSDevice::createWindow((glitch::CAndroidOSDevice *)a1);
  v4 = operator new(0x38u);
  glitch::CAndroidOSDevice::CCursorControl::CCursorControl(v4, (int *)(a1 + 96), a1);
  *(_DWORD *)(a1 + 36) = v4;
  glitch::CAndroidOSDevice::createDriver((glitch::CAndroidOSDevice *)a1, v5);
  glitch::IDevice::createGUIAndScene((glitch::IDevice *)a1);
  return a1;
}


// ===== 6a08b0 glitch::ILogger::~ILogger() =====
void __fastcall glitch::ILogger::~ILogger(glitch::ILogger *this)
{
  ;
}


// ===== 6a08b4 glitch::CLogger::CLogger(glitch::IEventReceiver *) =====
_DWORD *__fastcall glitch::CLogger::CLogger(_DWORD *this, glitch::IEventReceiver *a2)
{
  *(this + 3) = a2;
  *this = off_985948;
  *(this + 2) = 1;
  *(this + 1) = 1;
  return this;
}


// ===== 6a08f0 glitch::CLogger::CLogger(glitch::IEventReceiver *) =====
_DWORD *__fastcall glitch::CLogger::CLogger(_DWORD *this, glitch::IEventReceiver *a2)
{
  *(this + 3) = a2;
  *this = off_985948;
  *(this + 2) = 1;
  *(this + 1) = 1;
  return this;
}


// ===== 6a092c glitch::CLogger::getLogLevel(void) =====
int __fastcall glitch::CLogger::getLogLevel(glitch::CLogger *this)
{
  return *((_DWORD *)this + 2);
}


// ===== 6a0934 glitch::CLogger::setLogLevel(glitch::ELOG_LEVEL) =====
int __fastcall glitch::CLogger::setLogLevel(int result, int a2)
{
  *(_DWORD *)(result + 8) = a2;
  return result;
}


// ===== 6a093c glitch::CLogger::setReceiver(glitch::IEventReceiver *) =====
int __fastcall glitch::CLogger::setReceiver(int this, glitch::IEventReceiver *a2)
{
  *(_DWORD *)(this + 12) = a2;
  return this;
}


// ===== 6a0944 glitch::CLogger::~CLogger() =====
void __fastcall glitch::CLogger::~CLogger(glitch::CLogger *this)
{
  ;
}


// ===== 6a0948 `global constructor keyed to'.._source_glitch_CLogger.cpp =====
void `global constructor keyed to'.._source_glitch_CLogger.cpp()
{
  dword_9F7608 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7604 = 1056964608;
}


// ===== 6a0968 glitch::CLogger::~CLogger() =====
void __fastcall glitch::CLogger::~CLogger(glitch::CLogger *this)
{
  LC_API_FREE_0(this);
}


// ===== 6a097c glitch::ILogger::~ILogger() =====
void __fastcall glitch::ILogger::~ILogger(glitch::ILogger *this)
{
  LC_API_FREE_0(this);
}


// ===== 6a0990 glitch::CLogger::vlogf(glitch::ELOG_LEVEL,char const*,std::__va_list) =====
void __fastcall glitch::CLogger::vlogf(int a1, int a2, glitch::os::Printer *this, char *a4)
{
  char *v8; // r6
  int v9; // r3
  _DWORD v10[6]; // [sp+0h] [bp-18h] BYREF

  if ( a2 >= *(_DWORD *)(a1 + 8) )
  {
    if ( *(_DWORD *)(a1 + 12) )
    {
      v8 = (char *)operator new[](0xFA0u, 0);
      vsnprintf(v8, 0xF9Eu, (const char *)this, (__gnuc_va_list)a4);
      v9 = *(_DWORD *)(a1 + 12);
      v10[0] = 3;
      v10[3] = a2;
      v10[2] = v8;
      if ( (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v9 + 8))(v9, v10) )
      {
        if ( v8 )
          operator delete[](v8);
        return;
      }
      if ( v8 )
        operator delete[](v8);
    }
    glitch::os::Printer::vprint(this, a4, (__va_list)this);
  }
}


// ===== 6a0a48 glitch::ILogger::logf(glitch::ELOG_LEVEL,char const*,...) =====
int __fastcall glitch::ILogger::logf(int a1, int a2, int a3, int a4)
{
  return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)a1 + 36))(a1, a2, a3);
}


// ===== 6a0a7c glitch::CLogger::log(char const*,char const*,glitch::ELOG_LEVEL) =====
int __fastcall glitch::CLogger::log(int a1, int a2, int a3, int a4)
{
  return glitch::ILogger::logf(a1, a4, (int)"%s: %s", a2);
}


// ===== 6a0aac glitch::CLogger::log(char const*,glitch::ELOG_LEVEL) =====
int __fastcall glitch::CLogger::log(int result, glitch::os::Printer *this, __va_list a3)
{
  int v4; // r3
  _DWORD v5[6]; // [sp+0h] [bp-18h] BYREF

  if ( (int)a3.__ap >= *(_DWORD *)(result + 8) )
  {
    v4 = *(_DWORD *)(result + 12);
    if ( !v4 )
      return glitch::os::Printer::print(this, (const char *)this, a3);
    v5[0] = 3;
    v5[3] = a3.__ap;
    v5[2] = this;
    result = (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v4 + 8))(v4, v5);
    if ( !result )
      return glitch::os::Printer::print(this, (const char *)this, a3);
  }
  return result;
}


// ===== 6a0b0c glitch::CLogger::log(wchar_t const*,glitch::ELOG_LEVEL) =====
void __fastcall glitch::CLogger::log(_DWORD *a1, const wchar_t *a2, int a3)
{
  _BYTE v5[20]; // [sp+4h] [bp-1Ch] BYREF
  void *p; // [sp+18h] [bp-8h]

  if ( a3 >= a1[2] )
  {
    glitch::core::stringw2stringc((glitch::core *)v5, a2);
    (*(void (__fastcall **)(_DWORD *, void *, int))(*a1 + 20))(a1, p, a3);
    if ( p != v5 )
    {
      if ( p )
        GlitchFree(p);
    }
  }
}


// ===== 6a0ba8 glitch::CLogger::log(wchar_t const*,wchar_t const*,glitch::ELOG_LEVEL) =====
void __fastcall glitch::CLogger::log(int a1, const wchar_t *a2, const wchar_t *a3, int a4)
{
  _BYTE v7[20]; // [sp+Ch] [bp-34h] BYREF
  void *p; // [sp+20h] [bp-20h]
  _BYTE v9[20]; // [sp+24h] [bp-1Ch] BYREF
  void *v10; // [sp+38h] [bp-8h]

  if ( a4 >= *(_DWORD *)(a1 + 8) )
  {
    glitch::core::stringw2stringc((glitch::core *)v9, a2);
    glitch::core::stringw2stringc((glitch::core *)v7, a3);
    glitch::ILogger::logf(a1, a4, (int)"%s: %s", (int)v10);
    if ( p != v7 && p )
      GlitchFree(p);
    if ( v10 != v9 )
    {
      if ( v10 )
        GlitchFree(v10);
    }
  }
}


// ===== 6a0c7c glitch::IOSOperator::~IOSOperator() =====
void __fastcall glitch::IOSOperator::~IOSOperator(glitch::IOSOperator *this)
{
  ;
}


// ===== 6a0c80 glitch::COSOperator::getOperationSystemVersion(void) =====
int __fastcall glitch::COSOperator::getOperationSystemVersion(glitch::COSOperator *this)
{
  return *((_DWORD *)this + 19);
}


// ===== 6a0c88 glitch::COSOperator::copyToClipboard(char const*) =====
void __fastcall glitch::COSOperator::copyToClipboard(glitch::COSOperator *this, const char *a2)
{
  ;
}


// ===== 6a0c8c glitch::COSOperator::getTextFromClipboard(void) =====
int __fastcall glitch::COSOperator::getTextFromClipboard(glitch::COSOperator *this)
{
  return 0;
}


// ===== 6a0c94 glitch::COSOperator::getProcessorSpeedMHz(uint *) =====
int __fastcall glitch::COSOperator::getProcessorSpeedMHz(glitch::COSOperator *this, unsigned int *a2)
{
  return 0;
}


// ===== 6a0c9c glitch::COSOperator::getSystemMemory(uint *,uint *) =====
int __fastcall glitch::COSOperator::getSystemMemory(glitch::COSOperator *this, unsigned int *a2, unsigned int *a3)
{
  return 0;
}


// ===== 6a0ca4 `global constructor keyed to'.._source_glitch_COSOperator.cpp =====
void `global constructor keyed to'.._source_glitch_COSOperator.cpp()
{
  dword_9F7614 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7610 = 1056964608;
}


// ===== 6a0cc4 glitch::IOSOperator::~IOSOperator() =====
void __fastcall glitch::IOSOperator::~IOSOperator(glitch::IOSOperator *this)
{
  LC_API_FREE_0(this);
}


// ===== 6a0cd8 glitch::COSOperator::~COSOperator() =====
void __fastcall glitch::COSOperator::~COSOperator(glitch::COSOperator *this)
{
  char *v2; // r1
  char *v3; // r0

  *(_DWORD *)this = off_9859A0;
  v2 = (char *)this + 8;
  v3 = *((char **)this + 19);
  if ( v3 != v2 && v3 )
    GlitchFree(v3);
  LC_API_FREE_0(this);
}


// ===== 6a0d2c glitch::COSOperator::~COSOperator() =====
void __fastcall glitch::COSOperator::~COSOperator(glitch::COSOperator *this)
{
  char *v1; // r1
  char *v2; // r0

  *(_DWORD *)this = off_9859A0;
  v1 = (char *)this + 8;
  v2 = *((char **)this + 19);
  if ( v2 != v1 )
  {
    if ( v2 )
      GlitchFree(v2);
  }
}


// ===== 6a0d78 glitch::COSOperator::COSOperator(char const*) =====
glitch::COSOperator *__fastcall glitch::COSOperator::COSOperator(glitch::COSOperator *this, const char *a2)
{
  _DWORD **v3; // r6
  _DWORD *v6[17]; // [sp+0h] [bp-4Ch] BYREF
  void *p; // [sp+44h] [bp-8h]

  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_9859A0;
  v3 = (_DWORD **)((char *)this + 8);
  *((_DWORD *)this + 18) = (char *)this + 8;
  *((_DWORD *)this + 19) = (char *)this + 8;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 2,
    0x10u);
  **((_DWORD **)this + 18) = 0;
  glitch::core::stringc2stringw((glitch::core *)v6, a2);
  if ( v3 != v6 )
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (int)v3,
      (const wchar_t *)p,
      v6[16]);
  if ( p != v6 && p )
    GlitchFree(p);
  return this;
}


// ===== 6a0e20 glitch::COSOperator::COSOperator(char const*) =====
glitch::COSOperator *__fastcall glitch::COSOperator::COSOperator(glitch::COSOperator *this, const char *a2)
{
  _DWORD **v3; // r6
  _DWORD *v6[17]; // [sp+0h] [bp-4Ch] BYREF
  void *p; // [sp+44h] [bp-8h]

  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_9859A0;
  v3 = (_DWORD **)((char *)this + 8);
  *((_DWORD *)this + 18) = (char *)this + 8;
  *((_DWORD *)this + 19) = (char *)this + 8;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 2,
    0x10u);
  **((_DWORD **)this + 18) = 0;
  glitch::core::stringc2stringw((glitch::core *)v6, a2);
  if ( v3 != v6 )
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (int)v3,
      (const wchar_t *)p,
      v6[16]);
  if ( p != v6 && p )
    GlitchFree(p);
  return this;
}


// ===== 6a0ec8 `global constructor keyed to'.._source_glitch_init.cpp =====
void `global constructor keyed to'.._source_glitch_init.cpp()
{
  dword_9F7620 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F761C = 1056964608;
}


// ===== 6a0ee8 std::vector<void (*)(bool),glitch::core::SAllocator<void (*)(bool),(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
void **__fastcall std::vector<void (*)(bool),glitch::core::SAllocator<void (*)(bool),(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        void **a1)
{
  void *v2; // r0

  v2 = *a1;
  if ( v2 )
    GlitchFree(v2);
  return a1;
}


// ===== 6a0f08 glitch::getInitializationSteps(void) =====
int *__fastcall glitch::getInitializationSteps(glitch *this)
{
  if ( (`guard variable for'glitch::getInitializationSteps(void)::InitializationSteps & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'glitch::getInitializationSteps(void)::InitializationSteps) )
  {
    dword_9F7630 = 0;
    glitch::getInitializationSteps(void)::InitializationSteps = 0;
    dword_9F762C = 0;
    _cxa_guard_release(&`guard variable for'glitch::getInitializationSteps(void)::InitializationSteps);
    _aeabi_atexit(
      (int)&glitch::getInitializationSteps(void)::InitializationSteps,
      (int)std::vector<void (*)(bool),glitch::core::SAllocator<void (*)(bool),(glitch::memory::E_MEMORY_HINT)0>>::~vector,
      (int)&_dso_handle);
  }
  return &glitch::getInitializationSteps(void)::InitializationSteps;
}


// ===== 6a0f90 glitch::exit(void) =====
bool __fastcall glitch::exit(glitch *this)
{
  glitch *v1; // r0
  int *InitializationSteps; // r0
  int v4; // r5
  int v5; // r4
  int v6; // r5
  int *v7; // r0

  v1 = (glitch *)--glitch::InitializationCount;
  if ( glitch::InitializationCount )
    return v1 == nullptr;
  InitializationSteps = glitch::getInitializationSteps(v1);
  v4 = (InitializationSteps[1] - *InitializationSteps) >> 2;
  v5 = v4 - 1;
  if ( v4 - 1 < 0 )
  {
    v1 = (glitch *)glitch::InitializationCount;
    return v1 == nullptr;
  }
  v6 = 4 * (v4 + 0x3FFFFFFF);
  do
  {
    v7 = glitch::getInitializationSteps((glitch *)InitializationSteps);
    InitializationSteps = (int *)(*(int (__fastcall **)(_DWORD))(*v7 + v6))(0);
    --v5;
    v6 -= 4;
  }
  while ( v5 >= 0 );
  return glitch::InitializationCount == 0;
}


// ===== 6a1024 glitch::init(void) =====
char *__fastcall glitch::init(glitch *this)
{
  int v1; // r4
  int v2; // r4
  char *result; // r0
  int *InitializationSteps; // r0
  int v5; // r6
  int *v6; // r0

  v1 = glitch::InitializationCount;
  if ( !glitch::InitializationCount )
  {
    InitializationSteps = glitch::getInitializationSteps(this);
    v5 = (InitializationSteps[1] - *InitializationSteps) >> 2;
    if ( v5 > 0 )
    {
      do
      {
        v6 = glitch::getInitializationSteps((glitch *)InitializationSteps);
        InitializationSteps = (int *)(*(int (__fastcall **)(int))(*v6 + 4 * v1++))(1);
      }
      while ( v1 != v5 );
      v1 = glitch::InitializationCount;
    }
    else
    {
      v1 = glitch::InitializationCount;
    }
  }
  v2 = v1 + 1;
  if ( v2 == 1 )
    result = (char *)&dword_0 + 1;
  else
    result = nullptr;
  glitch::InitializationCount = v2;
  return result;
}


// ===== 6a10b0 glitch::registerInitStep(void (*)(bool)) =====
int __fastcall glitch::registerInitStep(glitch *this, void (*a2)(bool))
{
  int *InitializationSteps; // r0
  _DWORD *v4; // r8
  int *v5; // r4
  int *v6; // r0
  unsigned int v8; // r3
  unsigned int v9; // r7
  size_t v10; // r7
  void *v11; // r0
  int v12; // r6
  size_t v13; // r8
  _DWORD *v14; // r8
  glitch *v15; // r0
  int *v16; // r0

  InitializationSteps = glitch::getInitializationSteps(this);
  v4 = (_DWORD *)InitializationSteps[1];
  v5 = InitializationSteps;
  if ( v4 == (_DWORD *)InitializationSteps[2] )
  {
    v8 = ((int)v4 - *InitializationSteps) >> 2;
    if ( v8 )
      v9 = 2 * v8;
    else
      v9 = 1;
    if ( v9 > 0x3FFFFFFF || v8 > v9 )
      v10 = -4;
    else
      v10 = 4 * v9;
    v11 = GlitchAlloc(v10, 0);
    v12 = (int)v11;
    v13 = (size_t)v4 - *v5;
    if ( v13 )
      v14 = (char *)memmove(v11, (const void *)*v5, v13) + v13;
    else
      v14 = v11;
    *v14 = this;
    GlitchFree((void *)*v5);
    v5[2] = v12 + v10;
    *v5 = v12;
    v5[1] = (int)(v14 + 1);
    v16 = glitch::getInitializationSteps(v15);
    return (v16[1] - *v16) >> 2;
  }
  else
  {
    *v4 = this;
    InitializationSteps[1] += 4;
    v6 = glitch::getInitializationSteps((glitch *)InitializationSteps);
    return (v6[1] - *v6) >> 2;
  }
}


// ===== 6a118c glitch::IObject::IObject(void) =====
void __fastcall glitch::IObject::IObject(glitch::IObject *this)
{
  ;
}


// ===== 6a1190 glitch::IObject::IObject(void) =====
void __fastcall glitch::IObject::IObject(glitch::IObject *this)
{
  ;
}


// ===== 6a1194 glitch::IObject::~IObject() =====
void __fastcall glitch::IObject::~IObject(glitch::IObject *this)
{
  ;
}


// ===== 6a1198 glitch::IObject::~IObject() =====
void __fastcall glitch::IObject::~IObject(glitch::IObject *this)
{
  ;
}


// ===== 6a119c `global constructor keyed to'.._source_glitch_IObject.cpp =====
void `global constructor keyed to'.._source_glitch_IObject.cpp()
{
  dword_9F7640 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F763C = 1056964608;
}


// ===== 6a11bc glitch::core::computeBoundingBox<float>(float const*,uint,uint,uint,glitch::core::aabbox3d<float> &) =====
int __fastcall glitch::core::computeBoundingBox<float>(int result, unsigned int a2, int a3, int a4, _DWORD *a5)
{
  unsigned int v5; // r9
  int v6; // r2
  _DWORD *v7; // r8
  int v8; // r1
  int v9; // r2
  unsigned int i; // r1
  int v11; // r11
  int v12; // r10
  int v13; // r4
  int v14; // r6
  float v15; // r5
  int v17; // [sp+8h] [bp-Ch]
  int v18; // [sp+Ch] [bp-8h]

  if ( !a4 )
  {
    a5[2] = 0;
    a5[3] = 0;
    a5[4] = 0;
    a5[5] = 0;
    *a5 = 0;
    a5[1] = 0;
    return result;
  }
  if ( a2 >= 3 )
    v5 = 3;
  else
    v5 = a2;
  if ( !v5 )
  {
    v7 = a5 + 3;
LABEL_10:
    v9 = v5;
    for ( i = v5; i <= 2; ++i )
    {
      a5[v9] = 0;
      v7[v9++] = 0;
    }
    goto LABEL_12;
  }
  v6 = 0;
  v7 = a5 + 3;
  v8 = 0;
  do
  {
    ++v8;
    a5[v6] = *(_DWORD *)(result + v6 * 4);
    v7[v6] = *(_DWORD *)(result + v6 * 4);
    ++v6;
  }
  while ( v8 != v5 );
  if ( v5 <= 2 )
    goto LABEL_10;
LABEL_12:
  result += a3;
  v17 = result;
  v18 = result + a3 * (a4 - 1);
  if ( result != v18 )
  {
    v11 = 0;
    v12 = result;
    do
    {
      if ( v5 )
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = *(float *)(v12 + v13 * 4);
          ++v14;
          if ( v15 < *(float *)&a5[v13] )
          {
            *(float *)&a5[v13] = v15;
            v15 = *(float *)(v12 + v13 * 4);
          }
          result = *(float *)&v7[v13] < v15;
          if ( *(float *)&v7[v13] < v15 )
            *(float *)&v7[v13] = v15;
          ++v13;
        }
        while ( v14 != v5 );
      }
      v11 += a3;
      v12 = v17 + v11;
    }
    while ( v18 != v17 + v11 );
  }
  return result;
}


// ===== 6a1300 glitch::core::quantizeScaleOffset<glitch::core::vector3d<short>,glitch::core::vector3d<float>>(glitch::core::vector3d<short> *,uint,glitch::core::vector3d<float> const*,uint,uint,glitch::core::vector3d<float>&,glitch::core::vector3d<float>&) =====
float __fastcall glitch::core::quantizeScaleOffset<glitch::core::vector3d<short>,glitch::core::vector3d<float>>(
        _WORD *a1,
        int a2,
        int a3,
        int a4,
        int a5,
        float *a6,
        float *a7)
{
  float *v7; // r4
  float v9; // r6
  float v10; // r0
  float v11; // r11
  float v12; // r10
  float result; // r0
  float v14; // r8
  int v15; // r7
  _WORD *v16; // r6
  float v17; // r1
  float v18; // r10
  float v19; // r8
  _WORD *v20; // [sp+Ch] [bp-48h]
  float v23; // [sp+20h] [bp-34h] BYREF
  float v24; // [sp+24h] [bp-30h]
  float v25; // [sp+28h] [bp-2Ch]
  float v26; // [sp+2Ch] [bp-28h]
  float v27; // [sp+30h] [bp-24h]
  float v28; // [sp+34h] [bp-20h]
  float v29[2]; // [sp+38h] [bp-1Ch] BYREF
  float v30; // [sp+40h] [bp-14h]
  float v31[4]; // [sp+44h] [bp-10h] BYREF

  v7 = (float *)a3;
  v25 = -1.0;
  v23 = -1.0;
  v24 = -1.0;
  v28 = 1.0;
  v26 = 1.0;
  v27 = 1.0;
  glitch::core::computeBoundingBox<float>(a3, 3u, a4, a5, &v23);
  v9 = (float)(v28 - v25) * 0.000015259;
  v10 = v26 - v23;
  a6[1] = (float)(v27 - v24) * 0.000015259;
  *a6 = v10 * 0.000015259;
  a6[2] = v9;
  v11 = (float)(v23 + v26) * 0.5;
  v20 = (_WORD *)((char *)a1 + a2 * a5);
  v12 = (float)(v24 + v27) * 0.5;
  result = (float)(v25 + v28) * 0.5;
  v14 = result;
  *a7 = v11;
  a7[1] = v12;
  a7[2] = result;
  if ( a1 != v20 )
  {
    v15 = 0;
    v16 = a1;
    v17 = v12;
    while ( 1 )
    {
      v18 = v7[1] - v17;
      v19 = v7[2] - v14;
      v31[0] = *v7 - v11;
      v31[1] = v18;
      v31[2] = v19;
      glitch::core::vector3d<float>::operator/(v29, v31, a6);
      LOWORD(v18) = (int)v29[0];
      LOWORD(v19) = (int)v29[1];
      LODWORD(result) = (int)v30;
      v16[2] = (int)v30;
      *v16 = LOWORD(v18);
      v16[1] = LOWORD(v19);
      v15 += a2;
      v16 = (_WORD *)((char *)a1 + v15);
      if ( v20 == (_WORD *)((char *)a1 + v15) )
        break;
      v11 = *a7;
      v17 = a7[1];
      v14 = a7[2];
      v7 = (float *)((char *)v7 + a4);
    }
  }
  return result;
}


// ===== 6a14f0 glitch::core::quantizeScaleOffset<glitch::core::vector2d<short>,glitch::core::vector2d<float>>(glitch::core::vector2d<short> *,uint,glitch::core::vector2d<float> const*,uint,uint,glitch::core::vector2d<float>&,glitch::core::vector2d<float>&) =====
float __fastcall glitch::core::quantizeScaleOffset<glitch::core::vector2d<short>,glitch::core::vector2d<float>>(
        _WORD *a1,
        int a2,
        int a3,
        int a4,
        int a5,
        float *a6,
        float *a7)
{
  float *v7; // r4
  float v8; // r7
  _WORD *v9; // r11
  float v10; // r9
  float result; // r0
  float v12; // r10
  int v13; // r8
  _WORD *v14; // r7
  float v15; // r1
  __int16 v16; // r10
  float v20; // [sp+18h] [bp-1Ch] BYREF
  float v21; // [sp+1Ch] [bp-18h]
  int v22; // [sp+20h] [bp-14h]
  float v23; // [sp+24h] [bp-10h]
  float v24; // [sp+28h] [bp-Ch]
  int v25; // [sp+2Ch] [bp-8h]

  v7 = (float *)a3;
  v22 = -1082130432;
  v20 = -1.0;
  v21 = -1.0;
  v25 = 1065353216;
  v23 = 1.0;
  v24 = 1.0;
  glitch::core::computeBoundingBox<float>(a3, 2u, a4, a5, &v20);
  v8 = v24 - v21;
  *a6 = (float)(v23 - v20) / 65535.0;
  a6[1] = v8 / 65535.0;
  v9 = (_WORD *)((char *)a1 + a2 * a5);
  v10 = (float)(v20 + v23) * 0.5;
  result = (float)(v21 + v24) * 0.5;
  v12 = result;
  *a7 = v10;
  a7[1] = result;
  if ( a1 != v9 )
  {
    v13 = 0;
    v14 = a1;
    while ( 1 )
    {
      v15 = v12;
      v16 = (int)(float)((float)(*v7 - v10) / *a6);
      LODWORD(result) = (int)(float)((float)(v7[1] - v15) / a6[1]);
      v14[1] = LOWORD(result);
      *v14 = v16;
      v13 += a2;
      v14 = (_WORD *)((char *)a1 + v13);
      if ( v9 == (_WORD *)((char *)a1 + v13) )
        break;
      v10 = *a7;
      v12 = a7[1];
      v7 = (float *)((char *)v7 + a4);
    }
  }
  return result;
}


// ===== 6a1664 `global constructor keyed to'.._source_glitch_core_BatchUtils.cpp =====
void `global constructor keyed to'.._source_glitch_core_BatchUtils.cpp()
{
  dword_9F764C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7648 = 1056964608;
}


// ===== 6a1684 std::vector<glitch::core::SQuantizationOpData,std::allocator<glitch::core::SQuantizationOpData>>::~vector() =====
void **__fastcall std::vector<glitch::core::SQuantizationOpData>::~vector(void **a1)
{
  char *v1; // r5
  char *v2; // r6
  glitch::IReferenceCounted *v4; // r0
  _BYTE *v5; // r0
  size_t v6; // r1

  v1 = (char *)a1[1];
  v2 = (char *)*a1;
  if ( v1 != *a1 )
  {
    do
    {
      v4 = *((glitch::IReferenceCounted **)v1 - 4);
      v1 -= 20;
      if ( v4 )
        glitch::IReferenceCounted::drop(v4);
    }
    while ( v2 != v1 );
  }
  v5 = *a1;
  if ( !*a1 )
    return a1;
  v6 = 4 * (((_BYTE *)a1[2] - v5) >> 2);
  if ( v6 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, v6);
    return a1;
  }
  LC_API_FREE_0(v5);
  return a1;
}


// ===== 6a170c std::allocator<std::priv::_Rb_tree_node<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 28;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 6a172c std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::_M_find<boost::intrusive_ptr<glitch::video::IBuffer>>(boost::intrusive_ptr<glitch::video::IBuffer> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::_M_find<boost::intrusive_ptr<glitch::video::IBuffer>>(
        _DWORD *a1,
        glitch::IReferenceCounted **a2)
{
  _DWORD *v2; // r4
  _DWORD *v5; // r10
  glitch::IReferenceCounted *v6; // r6
  glitch::IReferenceCounted *v7; // r0
  unsigned int v8; // r7
  glitch::IReferenceCounted *v9; // r4
  unsigned int v10; // r6

  v2 = (_DWORD *)a1[1];
  if ( !v2 )
    return a1;
  v5 = a1;
  do
  {
    while ( 1 )
    {
      v6 = *a2;
      v7 = *a2;
      if ( *a2 )
      {
        ++*((_DWORD *)v6 + 1);
        v8 = v2[4];
        glitch::IReferenceCounted::drop(v7);
        if ( v8 < (unsigned int)v6 )
          break;
      }
      v5 = v2;
      v2 = (_DWORD *)v2[2];
      if ( !v2 )
        goto LABEL_8;
    }
    v2 = (_DWORD *)v2[3];
  }
  while ( v2 );
LABEL_8:
  if ( v5 != a1 )
  {
    v9 = *a2;
    if ( *a2 )
      ++*((_DWORD *)v9 + 1);
    v10 = v5[4];
    if ( v9 )
      glitch::IReferenceCounted::drop(v9);
    if ( (unsigned int)v9 < v10 )
      return a1;
  }
  return v5;
}


// ===== 6a17d4 std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::_M_erase(
        int a1,
        _DWORD *a2)
{
  _DWORD *v2; // r4
  glitch::IReferenceCounted *v4; // r0
  _DWORD *v5; // r5
  glitch::IReferenceCounted *v6; // r0

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (glitch::IReferenceCounted *)v2[5];
      v5 = (_DWORD *)v2[2];
      if ( v4 )
        glitch::IReferenceCounted::drop(v4);
      v6 = (glitch::IReferenceCounted *)v2[4];
      if ( v6 )
        glitch::IReferenceCounted::drop(v6);
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x1Cu);
      v2 = v5;
    }
    while ( v5 );
  }
}


// ===== 6a182c std::vector<glitch::core::SQuantizationOpData,std::allocator<glitch::core::SQuantizationOpData>>::_M_clear_after_move(void) =====
void __fastcall std::vector<glitch::core::SQuantizationOpData>::_M_clear_after_move(void **a1)
{
  char *v2; // r5
  char *v3; // r0
  char *v4; // r4
  glitch::IReferenceCounted *v5; // r0

  v2 = (char *)*a1;
  v3 = (char *)a1[1];
  if ( v3 != v2 )
  {
    v4 = v3;
    do
    {
      v5 = *((glitch::IReferenceCounted **)v4 - 4);
      v4 -= 20;
      if ( v5 )
        glitch::IReferenceCounted::drop(v5);
    }
    while ( v2 != v4 );
    v3 = (char *)*a1;
  }
  if ( v3 )
  {
    if ( (unsigned int)(4 * (((_BYTE *)a1[2] - v3) >> 2)) > 0x80 )
      LC_API_FREE_0(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, 4 * (((_BYTE *)a1[2] - v3) >> 2));
  }
}


// ===== 6a18b4 glitch::core::copyParameter(boost::intrusive_ptr<glitch::video::CMaterial> const&,ushort,boost::intrusive_ptr<glitch::video::CMaterial const> const&,ushort) =====
int __fastcall glitch::core::copyParameter(_DWORD **a1, unsigned int a2, int *a3, unsigned int a4)
{
  int v6; // r3
  int v9; // r6
  int v10; // r3
  unsigned int v11; // r2
  int v12; // r3
  unsigned int v13; // r10
  unsigned int v14; // r4
  int v15; // r0
  int v17; // r0
  glitch::IReferenceCounted *v18; // r0
  _DWORD *v20; // r2
  int v21; // r0
  unsigned int v22; // r2
  unsigned int v23; // r2
  int v24; // r0
  unsigned int v25; // r2
  int v26; // r0
  unsigned int v27; // r2
  int v28; // r0
  unsigned int v29; // r2
  int v30; // r0
  unsigned int v31; // r2
  unsigned int v32; // r2
  int v33; // r0
  unsigned int v34; // r2
  int v35; // r0
  unsigned int v36; // r2
  int v37; // r0
  unsigned int v38; // r2
  unsigned int v39; // r2
  glitch::IReferenceCounted *v40; // [sp+10h] [bp-4Ch] BYREF
  int v41; // [sp+14h] [bp-48h]
  int v42; // [sp+18h] [bp-44h]
  int v43; // [sp+1Ch] [bp-40h]
  int v44; // [sp+24h] [bp-38h]
  int v45; // [sp+38h] [bp-24h]
  int v46; // [sp+4Ch] [bp-10h]
  char v47; // [sp+50h] [bp-Ch]
  float v48[2]; // [sp+54h] [bp-8h] BYREF

  v6 = *(_DWORD *)(*a3 + 4);
  if ( *(unsigned __int16 *)(v6 + 14) <= a4 )
    v9 = 0;
  else
    v9 = *(_DWORD *)(v6 + 32) + 16 * a4;
  v10 = (*a1)[1];
  v11 = *(unsigned __int16 *)(v10 + 14);
  if ( v11 <= a2 )
    v12 = 0;
  else
    v12 = *(_DWORD *)(v10 + 32);
  if ( v11 > a2 )
    v12 += 16 * a2;
  v13 = *(_DWORD *)(v12 + 8);
  if ( v13 >= *(_DWORD *)(v9 + 8) )
    v13 = *(_DWORD *)(v9 + 8);
  if ( v13 )
  {
    v14 = 0;
    while ( 2 )
    {
      switch ( *(_BYTE *)(v9 + 6) )
      {
        case 1:
          glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<int>(
            *a3,
            a4,
            v14,
            v48);
          v39 = v14++;
          glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<int>(
            *a1,
            a2,
            v39,
            (int *)v48);
          if ( v14 != v13 )
            continue;
          return 1;
        case 2:
          v37 = *a3;
          v40 = nullptr;
          v41 = 0;
          glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector2d<int>>(
            v37,
            a4,
            v14,
            &v40);
          v38 = v14++;
          glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector2d<int>>(
            *a1,
            a2,
            v38,
            (int *)&v40);
          if ( v14 != v13 )
            continue;
          return 1;
        case 3:
          v35 = *a3;
          v40 = nullptr;
          v41 = 0;
          v42 = 0;
          glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector3d<int>>(
            v35,
            a4,
            v14,
            &v40);
          v36 = v14++;
          glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector3d<int>>(
            *a1,
            a2,
            v36,
            (int *)&v40);
          if ( v14 != v13 )
            continue;
          return 1;
        case 4:
          v33 = *a3;
          v40 = nullptr;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector4d<int>>(
            v33,
            a4,
            v14,
            &v40);
          v34 = v14++;
          glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector4d<int>>(
            *a1,
            a2,
            v34,
            (int *)&v40);
          if ( v14 != v13 )
            continue;
          return 1;
        case 5:
          glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<float>(
            *a3,
            a4,
            v14,
            v48);
          v32 = v14++;
          glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<float>(
            *a1,
            a2,
            v32,
            v48);
          if ( v14 != v13 )
            continue;
          return 1;
        case 6:
          v30 = *a3;
          v40 = nullptr;
          v41 = 0;
          glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector2d<float>>(
            v30,
            a4,
            v14,
            &v40);
          v31 = v14++;
          glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector2d<float>>(
            *a1,
            a2,
            v31,
            (float *)&v40);
          if ( v14 != v13 )
            continue;
          return 1;
        case 7:
          v28 = *a3;
          v40 = nullptr;
          v41 = 0;
          v42 = 0;
          glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector3d<float>>(
            v28,
            a4,
            v14,
            &v40);
          v29 = v14++;
          glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector3d<float>>(
            *a1,
            a2,
            v29,
            (float *)&v40);
          if ( v14 != v13 )
            continue;
          return 1;
        case 8:
          v26 = *a3;
          v40 = nullptr;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector4d<float>>(
            v26,
            a4,
            v14,
            &v40);
          v27 = v14++;
          glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector4d<float>>(
            *a1,
            a2,
            v27,
            (float *)&v40);
          if ( v14 != v13 )
            continue;
          return 1;
        case 0xB:
          LC_API_MEMSET_0(&v40, 0, 0x40u);
          v24 = *a3;
          v40 = (glitch::IReferenceCounted *)1065353216;
          v44 = 1065353216;
          v45 = 1065353216;
          v46 = 1065353216;
          v47 = 1;
          glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter(
            v24,
            a4,
            v14,
            &v40);
          v25 = v14++;
          glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter(
            *a1,
            a2,
            v25,
            &v40);
          if ( v14 != v13 )
            continue;
          return 1;
        case 0xC:
        case 0xD:
        case 0xE:
        case 0xF:
          v15 = *a3;
          v40 = nullptr;
          glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
            v15,
            a4,
            v14,
            &v40);
          glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
            *a1,
            a2,
            v14,
            (int *)&v40);
          if ( v40 )
            glitch::IReferenceCounted::drop(v40);
          goto LABEL_16;
        case 0x10:
          glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::video::SColor>(
            *a3,
            a4,
            v14,
            &v40);
          v23 = v14++;
          glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::video::SColor>(
            *a1,
            a2,
            v23,
            &v40);
          if ( v14 != v13 )
            continue;
          return 1;
        case 0x11:
          v21 = *a3;
          v40 = nullptr;
          v41 = 0;
          v42 = 0;
          v43 = 1065353216;
          glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::video::SColorf>(
            v21,
            a4,
            v14,
            &v40);
          v22 = v14++;
          glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::video::SColorf>(
            *a1,
            a2,
            v22,
            (int)&v40);
          if ( v14 != v13 )
            continue;
          return 1;
        case 0x12:
          v17 = *a3;
          v40 = nullptr;
          glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<boost::intrusive_ptr<glitch::video::CLight>>(
            v17,
            a4,
            v14,
            (void **)&v40);
          glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::CLight>>(
            *a1,
            a2,
            v14,
            (_DWORD **)&v40);
          v18 = v40;
          if ( !v40 )
            goto LABEL_16;
          if ( (*(_DWORD *)v40)-- != 1 )
            goto LABEL_16;
          if ( !*((_BYTE *)&dword_54 + (_DWORD)v18) )
          {
            v20 = *(_DWORD **)((char *)&dword_50 + (_DWORD)v18);
            *v20 = glitch::memory::Matrix4Pool;
            glitch::memory::Matrix4Pool = (int)v20;
          }
          *(int *)((char *)&dword_50 + (_DWORD)v18) = 0;
          ++v14;
          LC_API_FREE_0(v18);
          if ( v14 == v13 )
            return 1;
          continue;
        default:
LABEL_16:
          if ( ++v14 == v13 )
            return 1;
          continue;
      }
    }
  }
  return 1;
}


// ===== 6a1d9c glitch::core::copyMaterialParameters(boost::intrusive_ptr<glitch::video::CMaterial> const&,boost::intrusive_ptr<glitch::video::CMaterial const> const&) =====
int __fastcall glitch::core::copyMaterialParameters(glitch::video::CMaterial **a1, glitch::video::CMaterial **a2)
{
  glitch::video::CMaterial *v2; // r4
  int Technique; // r0
  int v6; // r3
  glitch::video::CMaterial *v7; // r4
  int v8; // r9
  int v9; // r7
  int v10; // r0
  int v11; // r2
  int v12; // r4
  int v13; // r8
  int result; // r0
  int v15; // r11
  int v16; // r10
  int v17; // r4
  unsigned int v18; // r1
  int v19; // r3
  unsigned int v20; // r2
  bool v21; // cc
  unsigned int v22; // r2
  int v23; // r3
  int v24; // r12
  unsigned int v25; // r3
  int v26; // r2
  bool v27; // zf

  v2 = *a1;
  Technique = glitch::video::CMaterial::getTechnique(*a1);
  v6 = *((_DWORD *)v2 + 1);
  v7 = *a2;
  v8 = 0;
  v9 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v6 + 24) + 12 * Technique + 8) + 36);
  v10 = glitch::video::CMaterial::getTechnique(*a2);
  v11 = *(_DWORD *)(*((_DWORD *)v7 + 1) + 24);
  v12 = *((_DWORD *)*a1 + 1);
  v13 = *(_DWORD *)(*(_DWORD *)(v11 + 12 * v10 + 8) + 36);
  result = glitch::video::CMaterial::getTechnique(*a1);
  v15 = *(_DWORD *)(*(_DWORD *)(v12 + 24) + 12 * result + 8);
  do
  {
    if ( *(_WORD *)(*(_DWORD *)(v15 + 32) + 8 * v8 + 46) )
    {
      v16 = 2 * ((unsigned __int16)(*(_WORD *)(*(_DWORD *)(v15 + 32) + 8 * v8 + 46) - 1) + 1);
      v17 = 0;
      do
      {
        v18 = *(unsigned __int16 *)(v9 + v17);
        result = 0;
        v19 = *((_DWORD *)*a1 + 1);
        v20 = *(unsigned __int16 *)(v19 + 14);
        v21 = v20 > v18;
        if ( v20 > v18 )
          result = *(_DWORD *)(v19 + 32);
        v22 = *(unsigned __int16 *)(v13 + v17);
        if ( v21 )
          result += 16 * v18;
        v23 = *((_DWORD *)*a2 + 1);
        v17 += 2;
        if ( *(unsigned __int16 *)(v23 + 14) > v22 )
        {
          v24 = *(_DWORD *)(v23 + 32);
          v25 = v22;
          v26 = v24 + 16 * v22;
          v27 = result == 0;
          if ( result )
            v27 = v26 == 0;
          result = (int)a1;
          if ( !v27 )
            result = glitch::core::copyParameter((_DWORD **)a1, v18, (int *)a2, v25);
        }
      }
      while ( v17 != v16 );
      v13 += v17;
      v9 += v17;
    }
    ++v8;
  }
  while ( v8 != 2 );
  return result;
}


// ===== 6a1eb4 glitch::core::overridePrimitiveStream(glitch::video::CPrimitiveStream const&,uint,uint,glitch::video::CPrimitiveStream&,uint,int) =====
int __fastcall glitch::core::overridePrimitiveStream(
        glitch::core *this,
        unsigned int a2,
        unsigned int a3,
        int *a4,
        glitch::video::CPrimitiveStream *a5,
        unsigned int a6,
        int a7)
{
  int v11; // r0
  int v12; // r1
  int v13; // r10
  int v14; // r6
  char *v15; // r7
  int v16; // r0
  int v17; // r3
  int v18; // r2
  int v19; // r10
  _BYTE *v20; // r4
  char v21; // r3
  _BYTE *v22; // r4
  char v23; // r3
  unsigned __int16 v25; // r3
  _WORD *v26; // r7
  __int16 *v27; // r8
  bool v28; // zf
  __int16 v29; // r2
  __int16 v30; // r2
  __int16 v31; // r2
  int v32; // r3
  __int16 v33; // r2
  __int16 v34; // r11
  char *v35; // r3
  char *v36; // r0
  unsigned int v37; // r12
  int v38; // r11
  _WORD *v39; // r3
  int v40; // r0
  int v41; // r2
  _WORD *v42; // r3
  _WORD *v43; // r8
  int v44; // r3
  int v45; // r1
  __int16 v46; // r1
  int v47; // r3
  __int16 v48; // r2
  __int16 *v49; // r3
  __int16 v50; // r2
  __int16 v51; // t1

  v11 = glitch::video::IBuffer::map(*a4, 2);
  v13 = *(_DWORD *)this;
  v14 = v11 + a4[1];
  v15 = (char *)(v14 + 6 * (_DWORD)a5);
  if ( !*(_DWORD *)this )
  {
    v32 = *((unsigned __int16 *)this + 11);
    switch ( v32 )
    {
      case 5:
        v40 = *((_DWORD *)this + 4) - 2 - *((_DWORD *)this + 3);
        if ( v40 )
        {
          v41 = (unsigned __int16)(a6 + 1);
          v42 = (_WORD *)(v14 + 6 * (_DWORD)a5);
          do
          {
            v12 = v41 + 1;
            ++v13;
            v42[1] = v41;
            v41 = (unsigned __int16)(v41 + 1);
            *v42 = a6;
            v42[2] = v41;
            v42 += 3;
          }
          while ( v13 != v40 );
          v19 = 6 * v13;
          goto LABEL_11;
        }
        break;
      case 6:
        v37 = (*((_DWORD *)this + 4) - *((_DWORD *)this + 3)) / 3u;
        if ( v37 )
        {
          v38 = (unsigned __int16)a6;
          v39 = (_WORD *)(v14 + 6 * (_DWORD)a5);
          do
          {
            ++v13;
            v12 = v38 + 2;
            *v39 = v38;
            v39[1] = v38 + 1;
            v39[2] = v38 + 2;
            v38 = (unsigned __int16)(v38 + 3);
            v39 += 3;
          }
          while ( v13 != v37 );
          v19 = 6 * v13;
          goto LABEL_11;
        }
        break;
      case 4:
        v12 = *((_DWORD *)this + 4) - 2 - *((_DWORD *)this + 3);
        if ( v12 )
        {
          v33 = a6 + 2;
          v34 = a6 + 1;
          v35 = v15 + 6;
          do
          {
            v28 = (v13 & 1) == 0;
            *((_WORD *)v35 - 3) = v34 - 1;
            ++v13;
            if ( v28 )
            {
              *((_WORD *)v35 - 2) = v34;
              *((_WORD *)v35 - 1) = v33;
            }
            else
            {
              *((_WORD *)v35 - 2) = v33;
              *((_WORD *)v35 - 1) = v34;
            }
            v36 = v35;
            ++v34;
            v35 += 6;
            ++v33;
          }
          while ( v13 != v12 );
          v19 = v36 - v15;
          goto LABEL_11;
        }
        break;
    }
    v19 = 0;
    goto LABEL_11;
  }
  v16 = glitch::video::IBuffer::map(*(_DWORD *)this, 0);
  v17 = *((_DWORD *)this + 1);
  v18 = a3 - a2;
  v19 = v16 + v17;
  if ( a6 )
  {
    v12 = *((unsigned __int16 *)this + 11);
    goto LABEL_5;
  }
  v12 = *((unsigned __int16 *)this + 11);
  if ( v12 != 6 )
  {
LABEL_5:
    switch ( v12 )
    {
      case 5:
        v46 = *(_WORD *)(v16 + v17);
        v47 = 2 * (a2 + 1);
        v48 = *(_WORD *)(v19 + v47);
        v12 = (unsigned __int16)(a6 + v46);
        v49 = (__int16 *)(v19 + v47);
        if ( a3 > a2 )
        {
          v50 = v48 + a6;
          do
          {
            *((_WORD *)v15 + 1) = v50;
            *(_WORD *)v15 = v12;
            v51 = *v49++;
            ++a2;
            v50 = a6 + v51;
            *((_WORD *)v15 + 2) = a6 + v51;
            v15 += 6;
          }
          while ( a3 > a2 );
        }
        break;
      case 6:
        if ( v18 )
        {
          v43 = (_WORD *)(v19 + 6 * a2);
          v44 = 0;
          do
          {
            ++v44;
            *(_WORD *)v15 = a6 + *v43;
            *((_WORD *)v15 + 1) = a6 + v43[1];
            v45 = (unsigned __int16)v43[2];
            v43 += 3;
            v12 = (unsigned __int16)a6 + v45;
            *((_WORD *)v15 + 2) = v12;
            v15 += 6;
          }
          while ( v44 != v18 );
        }
        break;
      case 4:
        v25 = a2;
        if ( a3 > (unsigned __int16)a2 )
        {
          v26 = v15 + 6;
          v27 = (__int16 *)(v19 + 2 * a2 + 4);
          do
          {
            v28 = (v25 & 1) == 0;
            if ( (v25 & 1) != 0 )
              v29 = *(v27 - 1);
            else
              v29 = *(v27 - 2);
            ++v25;
            *(v26 - 3) = a6 + v29;
            if ( v28 )
              v30 = *(v27 - 1);
            else
              v30 = *(v27 - 2);
            *(v26 - 2) = a6 + v30;
            v31 = *v27++;
            *(v26 - 1) = a6 + v31;
            v26 += 3;
          }
          while ( a3 > v25 );
        }
        break;
    }
    goto LABEL_8;
  }
  memcpy(v15, (const void *)(v19 + 6 * a2), 6 * v18);
LABEL_8:
  if ( v19 )
  {
    v20 = *(_BYTE **)this;
    v21 = v20[19];
    if ( (v21 & 0x1Fu) <= 1 )
    {
      if ( (v20[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_BYTE *, int))(*(_DWORD *)v20 + 24))(v20, v12);
      v19 = 0;
      v20[19] = 0;
    }
    else
    {
      v20[19] = ((v21 & 0x1F) - 1) | v21 & 0xE0;
      v19 = 0;
    }
  }
LABEL_11:
  if ( !v14 )
    return v19;
  v22 = (_BYTE *)*a4;
  v23 = *(_BYTE *)(*a4 + 19);
  if ( (v23 & 0x1Fu) > 1 )
  {
    v22[19] = ((v23 & 0x1F) - 1) | v23 & 0xE0;
    return v19;
  }
  if ( (v22[18] & 0x20) != 0 )
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v22 + 24))(*a4, v12);
  v22[19] = 0;
  return v19;
}


// ===== 6a228c std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
int *__fastcall std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::_M_insert(
        int *a1,
        _DWORD *a2,
        _DWORD *a3,
        int *a4,
        int a5,
        int a6)
{
  _DWORD *v10; // r0
  int v11; // r3
  bool v12; // zf
  int v13; // r3
  int v14; // r6
  __int16 v15; // r8
  _DWORD *v17; // r0
  int v18; // r3
  int v19; // r3
  __int16 v20; // r8
  _DWORD *v21; // r0
  int v22; // r3
  int v23; // r3
  __int16 v24; // r8

  if ( a2 == a3 )
  {
    v21 = std::allocator<std::priv::_Rb_tree_node<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::allocate();
    v22 = *a4;
    v14 = (int)v21;
    v21[4] = *a4;
    if ( v22 )
      ++*(_DWORD *)(v22 + 4);
    v23 = a4[1];
    v21[5] = v23;
    if ( v23 )
      ++*(_DWORD *)(v23 + 4);
    *((_WORD *)v21 + 12) = *((_WORD *)a4 + 4);
    v24 = *((_WORD *)a4 + 5);
    v21[3] = 0;
    *((_WORD *)v21 + 13) = v24;
    v21[2] = 0;
    a2[2] = v21;
    a2[1] = v21;
    a2[3] = v21;
  }
  else if ( a6 || !a5 && (unsigned int)*a4 >= a3[4] )
  {
    v10 = std::allocator<std::priv::_Rb_tree_node<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::allocate();
    v11 = *a4;
    v12 = *a4 == 0;
    v10[4] = *a4;
    if ( !v12 )
      ++*(_DWORD *)(v11 + 4);
    v13 = a4[1];
    v14 = (int)v10;
    v10[5] = v13;
    if ( v13 )
      ++*(_DWORD *)(v13 + 4);
    *((_WORD *)v10 + 12) = *((_WORD *)a4 + 4);
    v15 = *((_WORD *)a4 + 5);
    v10[3] = 0;
    *((_WORD *)v10 + 13) = v15;
    v10[2] = 0;
    a3[3] = v10;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v10;
  }
  else
  {
    v17 = std::allocator<std::priv::_Rb_tree_node<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::allocate();
    v18 = *a4;
    v14 = (int)v17;
    v17[4] = *a4;
    if ( v18 )
      ++*(_DWORD *)(v18 + 4);
    v19 = a4[1];
    v17[5] = v19;
    if ( v19 )
      ++*(_DWORD *)(v19 + 4);
    *((_WORD *)v17 + 12) = *((_WORD *)a4 + 4);
    v20 = *((_WORD *)a4 + 5);
    v17[3] = 0;
    *((_WORD *)v17 + 13) = v20;
    v17[2] = 0;
    a3[2] = v17;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v17;
  }
  *(_DWORD *)(v14 + 4) = a3;
  std::priv::_Rb_global<bool>::_Rebalance(v14, a2 + 1);
  ++a2[4];
  *a1 = v14;
  return a1;
}


// ===== 6a243c std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::insert_unique(std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData> const&) =====
int __fastcall std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::insert_unique(
        int a1,
        _DWORD *a2,
        int *a3)
{
  _DWORD *v3; // r12
  unsigned int v6; // r6
  unsigned int v7; // r0
  int v8; // r5
  _DWORD *v9; // r2
  _DWORD *v10; // r5
  int v12; // r0
  int v13; // r3
  _DWORD *v14; // r2
  int v15; // r3
  int v16; // [sp+8h] [bp-8h] BYREF
  int v17; // [sp+Ch] [bp-4h] BYREF

  v3 = (_DWORD *)a2[1];
  if ( v3 )
  {
    v6 = *a3;
    while ( 1 )
    {
      v7 = v3[4];
      v8 = 1;
      if ( v7 <= v6 )
      {
        v9 = (_DWORD *)v3[3];
        v8 = 0;
      }
      else
      {
        v9 = (_DWORD *)v3[2];
      }
      if ( !v9 )
        break;
      v3 = v9;
    }
    if ( !v8 )
    {
      v10 = v3;
      goto LABEL_12;
    }
  }
  else
  {
    v3 = a2;
  }
  if ( v3 == (_DWORD *)a2[2] )
  {
    std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::_M_insert(
      &v17,
      a2,
      v3,
      a3,
      (int)v3,
      0);
    v15 = v17;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v15;
    return a1;
  }
  if ( !*(_BYTE *)v3 && v3 == *(_DWORD **)(v3[1] + 4) )
  {
    v6 = *a3;
    v10 = (_DWORD *)v3[3];
    v7 = v10[4];
  }
  else
  {
    v12 = v3[2];
    if ( v12 )
    {
      while ( *(_DWORD *)(v12 + 12) )
        v12 = *(_DWORD *)(v12 + 12);
      if ( (unsigned int)*a3 <= *(_DWORD *)(v12 + 16) )
      {
        *(_DWORD *)a1 = v12;
        *(_BYTE *)(a1 + 4) = 0;
        return a1;
      }
LABEL_25:
      std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::_M_insert(
        &v16,
        a2,
        v3,
        a3,
        0,
        0);
      v13 = v16;
      *(_BYTE *)(a1 + 4) = 1;
      *(_DWORD *)a1 = v13;
      return a1;
    }
    v14 = (_DWORD *)v3[1];
    if ( v3 == (_DWORD *)v14[2] )
    {
      while ( 1 )
      {
        v10 = (_DWORD *)v14[1];
        if ( (_DWORD *)v10[2] != v14 )
          break;
        v14 = (_DWORD *)v14[1];
      }
      v6 = *a3;
      v7 = v10[4];
    }
    else
    {
      v10 = (_DWORD *)v3[1];
      v6 = *a3;
      v7 = v14[4];
    }
  }
LABEL_12:
  if ( v6 > v7 )
    goto LABEL_25;
  *(_DWORD *)a1 = v10;
  *(_BYTE *)(a1 + 4) = 0;
  return a1;
}


// ===== 6a25c4 std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData> const&) =====
int *__fastcall std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::insert_unique(
        int *a1,
        _DWORD *a2,
        _DWORD **a3,
        int *a4)
{
  _DWORD *v4; // r4
  _DWORD *v7; // r12
  unsigned int v8; // r2
  unsigned int v9; // r0
  int v10; // r8
  _DWORD *i; // r12
  unsigned int v13; // r2
  unsigned int v14; // r12
  int v15; // lr
  _DWORD *v16; // r2
  int v17; // r3
  int v18; // r3
  int v19; // [sp+8h] [bp-24h] BYREF
  int v20; // [sp+10h] [bp-1Ch] BYREF
  int v21; // [sp+18h] [bp-14h] BYREF
  int v22[3]; // [sp+20h] [bp-Ch] BYREF

  v4 = *a3;
  if ( *a3 == (_DWORD *)a2[2] )
  {
    if ( !a2[4] )
    {
      std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::insert_unique(
        (int)v22,
        a2,
        a4);
      *a1 = v22[0];
      return a1;
    }
    v13 = *a4;
    v14 = v4[4];
    if ( *a4 < v14 )
    {
      std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        (int)v4,
        0);
      return a1;
    }
    if ( *a4 > v14 )
    {
      v15 = v4[3];
      if ( v15 )
      {
        for ( i = (_DWORD *)v4[3]; i[2]; i = (_DWORD *)i[2] )
          ;
      }
      else
      {
        v18 = v4[1];
        if ( v4 == *(_DWORD **)(v18 + 12) )
        {
          do
          {
            i = (_DWORD *)v18;
            v18 = *(_DWORD *)(v18 + 4);
          }
          while ( *(_DWORD **)(v18 + 12) == i );
        }
        else
        {
          i = v4;
        }
        if ( v18 != i[3] )
          i = (_DWORD *)v18;
      }
      if ( a2 == i )
        goto LABEL_63;
      if ( v13 >= i[4] )
      {
        std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::_M_insert(
          a1,
          a2,
          v4,
          a4,
          0,
          (int)v4);
        return a1;
      }
      goto LABEL_42;
    }
    goto LABEL_45;
  }
  if ( v4 != a2 )
  {
    if ( *(_BYTE *)v4 )
    {
      v7 = (_DWORD *)v4[2];
      if ( !v7 )
      {
LABEL_26:
        v7 = (_DWORD *)v4[1];
        if ( v4 == (_DWORD *)v7[2] )
        {
          while ( *(_DWORD **)(v7[1] + 8) == v7 )
            v7 = (_DWORD *)v7[1];
          v7 = (_DWORD *)v7[1];
        }
        goto LABEL_8;
      }
    }
    else
    {
      if ( v4 == *(_DWORD **)(v4[1] + 4) )
      {
        v7 = (_DWORD *)v4[3];
LABEL_8:
        v8 = *a4;
        v9 = v4[4];
        if ( *a4 < v9 && v8 > v7[4] )
        {
          if ( v7[3] )
            std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::_M_insert(
              a1,
              a2,
              v7,
              a4,
              0,
              (int)v7);
          return a1;
        }
        v10 = v4[3];
        if ( v10 )
        {
          for ( i = (_DWORD *)v4[3]; i[2]; i = (_DWORD *)i[2] )
            ;
        }
        else
        {
          v17 = v4[1];
          if ( v4 == *(_DWORD **)(v17 + 12) )
          {
            do
            {
              i = (_DWORD *)v17;
              v17 = *(_DWORD *)(v17 + 4);
            }
            while ( *(_DWORD **)(v17 + 12) == i );
          }
          else
          {
            i = v4;
          }
          if ( v17 != i[3] )
            i = (_DWORD *)v17;
        }
        if ( *a4 < v9 )
          goto LABEL_31;
        if ( v8 > v9 )
        {
          if ( a2 == i || v8 < i[4] )
          {
            if ( !v10 )
            {
              std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::insert_unique(
            (int)&v19,
            a2,
            a4);
          *a1 = v19;
          return a1;
        }
LABEL_45:
        *a1 = (int)v4;
        return a1;
      }
      v7 = (_DWORD *)v4[2];
      if ( !v7 )
        goto LABEL_26;
    }
    while ( v7[3] )
      v7 = (_DWORD *)v7[3];
    goto LABEL_8;
  }
  v16 = (_DWORD *)v4[3];
  if ( v16[4] >= (unsigned int)*a4 )
  {
    std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 6a2938 std::map<boost::intrusive_ptr<glitch::video::IBuffer const>,glitch::core::SBufferData,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::operator[]<boost::intrusive_ptr<glitch::video::IBuffer>>(boost::intrusive_ptr<glitch::video::IBuffer> const&) =====
int __fastcall std::map<boost::intrusive_ptr<glitch::video::IBuffer const>,glitch::core::SBufferData>::operator[]<boost::intrusive_ptr<glitch::video::IBuffer>>(
        _DWORD *a1,
        glitch::IReferenceCounted **a2,
        int a3,
        _DWORD *a4)
{
  _DWORD *v4; // r5
  glitch::IReferenceCounted *v7; // r4
  _DWORD *v8; // r8
  unsigned int v9; // r7
  int v10; // r7
  unsigned int v11; // r8
  glitch::IReferenceCounted *v13; // [sp+4h] [bp-18h] BYREF
  glitch::IReferenceCounted *v14; // [sp+8h] [bp-14h]
  __int16 v15; // [sp+Ch] [bp-10h]
  __int16 v16; // [sp+Eh] [bp-Eh]
  _DWORD *v17; // [sp+10h] [bp-Ch] BYREF
  int v18; // [sp+14h] [bp-8h] BYREF

  v4 = (_DWORD *)a1[1];
  if ( v4 )
  {
    v7 = *a2;
    v8 = a1;
    while ( 1 )
    {
      if ( v7 )
      {
        ++*((_DWORD *)v7 + 1);
        v9 = v4[4];
        glitch::IReferenceCounted::drop(v7);
        if ( v9 < (unsigned int)v7 )
        {
          a4 = (_DWORD *)v4[3];
          v4 = v8;
          v7 = *a2;
          if ( !a4 )
            goto LABEL_9;
          goto LABEL_4;
        }
        v7 = *a2;
      }
      a4 = (_DWORD *)v4[2];
      v8 = v4;
      if ( !a4 )
        goto LABEL_9;
LABEL_4:
      v4 = a4;
    }
  }
  v7 = *a2;
  v4 = a1;
LABEL_9:
  if ( a1 == v4 )
    goto LABEL_18;
  if ( v7 )
    a4 = *((_DWORD **)v7 + 1);
  v10 = (int)v4;
  if ( v7 )
    *((_DWORD *)v7 + 1) = (char *)a4 + 1;
  v11 = v4[4];
  if ( v7 )
    glitch::IReferenceCounted::drop(v7);
  if ( v11 > (unsigned int)v7 )
  {
    v7 = *a2;
LABEL_18:
    if ( v7 )
      ++*((_DWORD *)v7 + 1);
    v13 = v7;
    if ( v7 )
      ++*((_DWORD *)v7 + 1);
    v16 = 0;
    v17 = v4;
    v14 = nullptr;
    v15 = 0;
    std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::insert_unique(
      &v18,
      a1,
      &v17,
      (int *)&v13);
    v10 = v18;
    if ( v14 )
      glitch::IReferenceCounted::drop(v14);
    if ( v13 )
      glitch::IReferenceCounted::drop(v13);
    if ( v7 )
      glitch::IReferenceCounted::drop(v7);
  }
  return v10 + 20;
}


// ===== 6a2a88 std::allocator<glitch::core::SQuantizationOpData>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<glitch::core::SQuantizationOpData>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0xCCCCCCC )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 20 * a2;
  if ( 20 * a2 > 0x80 )
    result = (void *)operator new(20 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n / 0x14;
  return result;
}


// ===== 6a2b10 std::vector<glitch::core::SQuantizationOpData,std::allocator<glitch::core::SQuantizationOpData>>::push_back(glitch::core::SQuantizationOpData const&) =====
void __fastcall std::vector<glitch::core::SQuantizationOpData>::push_back(int a1, int a2)
{
  int v2; // r3
  int v3; // r6
  int v6; // r2
  unsigned int v7; // r2
  unsigned int v8; // r1
  char *v9; // r0
  char *v10; // r7
  int v11; // r6
  char *v12; // r6
  char *v13; // r3
  int v14; // r2
  int v15; // r0
  int v16; // r1
  __int16 v17; // r1
  int v18; // r3
  char *v19; // r3
  size_t v20; // [sp+4h] [bp-8h] BYREF

  v2 = *(_DWORD *)(a1 + 4);
  v3 = *(_DWORD *)(a1 + 8);
  if ( v2 == v3 )
  {
    v7 = -858993459 * ((v3 - *(_DWORD *)a1) >> 2);
    if ( v7 )
      v8 = -1717986918 * ((v3 - *(_DWORD *)a1) >> 2);
    else
      v8 = 1;
    if ( v8 > 0xCCCCCCC || v7 > v8 )
      v8 = 214748364;
    v20 = v8;
    v9 = (char *)std::allocator<glitch::core::SQuantizationOpData>::_M_allocate(a1 + 8, v8, &v20);
    v10 = v9;
    v11 = -858993459 * ((v3 - *(_DWORD *)a1) >> 2);
    if ( v11 > 0 )
    {
      v13 = v9 + 20;
      v14 = *(_DWORD *)a1 + 20;
      v15 = v11;
      do
      {
        *((_DWORD *)v13 - 5) = *(_DWORD *)(v14 - 20);
        v16 = *(_DWORD *)(v14 - 16);
        *((_DWORD *)v13 - 4) = v16;
        if ( v16 )
          ++*(_DWORD *)(v16 + 4);
        --v15;
        *((_DWORD *)v13 - 3) = *(_DWORD *)(v14 - 12);
        *((_DWORD *)v13 - 2) = *(_DWORD *)(v14 - 8);
        *((_WORD *)v13 - 2) = *(_WORD *)(v14 - 4);
        v17 = *(_WORD *)(v14 - 2);
        v14 += 20;
        *((_WORD *)v13 - 1) = v17;
        v13 += 20;
      }
      while ( v15 );
      v12 = &v10[20 * v11];
    }
    else
    {
      v12 = v9;
    }
    *(_DWORD *)v12 = *(_DWORD *)a2;
    v18 = *(_DWORD *)(a2 + 4);
    *((_DWORD *)v12 + 1) = v18;
    if ( v18 )
      ++*(_DWORD *)(v18 + 4);
    *((_DWORD *)v12 + 2) = *(_DWORD *)(a2 + 8);
    *((_DWORD *)v12 + 3) = *(_DWORD *)(a2 + 12);
    *((_WORD *)v12 + 8) = *(_WORD *)(a2 + 16);
    *((_WORD *)v12 + 9) = *(_WORD *)(a2 + 18);
    std::vector<glitch::core::SQuantizationOpData>::_M_clear_after_move((void **)a1);
    v19 = &v10[20 * v20];
    *(_DWORD *)a1 = v10;
    *(_DWORD *)(a1 + 8) = v19;
    *(_DWORD *)(a1 + 4) = v12 + 20;
  }
  else
  {
    *(_DWORD *)v2 = *(_DWORD *)a2;
    v6 = *(_DWORD *)(a2 + 4);
    *(_DWORD *)(v2 + 4) = v6;
    if ( v6 )
      ++*(_DWORD *)(v6 + 4);
    *(_DWORD *)(v2 + 8) = *(_DWORD *)(a2 + 8);
    *(_DWORD *)(v2 + 12) = *(_DWORD *)(a2 + 12);
    *(_WORD *)(v2 + 16) = *(_WORD *)(a2 + 16);
    *(_WORD *)(v2 + 18) = *(_WORD *)(a2 + 18);
    *(_DWORD *)(a1 + 4) += 20;
  }
}


// ===== 6a2cdc glitch::core::createQuantizedBuffer(boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&,bool,bool,glitch::video::IVideoDriver *) =====
_DWORD *__fastcall glitch::core::createQuantizedBuffer(_DWORD *a1, _DWORD *a2, int a3, int a4, int a5)
{
  _DWORD *v5; // r11
  int v6; // r12
  glitch::video::CVertexStreams *v7; // r4
  int v8; // r2
  int v9; // r3
  glitch::video::CVertexStreams *v10; // r5
  int v11; // r4
  bool v12; // zf
  _DWORD *v13; // r8
  glitch::IReferenceCounted *v14; // r7
  unsigned int v15; // r11
  signed int v16; // r2
  int v17; // r1
  int v18; // r10
  int v19; // r3
  unsigned int v20; // r8
  signed int v21; // r3
  __int16 v22; // r1
  int v23; // r2
  __int16 v24; // r8
  glitch::IReferenceCounted **v25; // r0
  int v26; // r3
  glitch::IReferenceCounted **v27; // r10
  glitch::IReferenceCounted *v28; // r0
  int *v29; // r4
  int v30; // r3
  unsigned int v31; // r5
  glitch::video::IBuffer *v32; // r6
  void *v33; // r0
  int *v34; // r2
  glitch::video::CVertexStreams *v35; // r4
  glitch::video::CVertexStreams *v36; // r0
  unsigned int ActiveAttributeMask; // r1
  int v38; // r2
  unsigned int v39; // r3
  glitch::IReferenceCounted ***v40; // r4
  _DWORD *v41; // r3
  _DWORD *v42; // r3
  char *v43; // r2
  int v44; // r3
  glitch::video::CVertexStreams *v45; // r7
  char *v46; // r6
  glitch::IReferenceCounted *v47; // r0
  int v48; // r3
  int v49; // r3
  int v50; // r0
  int *v51; // r3
  int v52; // r6
  int v53; // r5
  int v54; // r0
  int v55; // r0
  int v56; // r3
  glitch::IReferenceCounted *v57; // r9
  int v58; // r1
  int v59; // r6
  int v60; // r3
  char *v61; // r7
  float *v62; // r8
  int v63; // r3
  int v64; // r1
  int v65; // r0
  int v66; // r3
  int v67; // r2
  int v68; // r3
  int *v69; // r3
  int v70; // r2
  _DWORD *v71; // r3
  glitch::IReferenceCounted **v72; // r0
  int v73; // r3
  glitch::IReferenceCounted **v74; // r8
  glitch::IReferenceCounted *v75; // r0
  unsigned int v76; // r10
  int v77; // r9
  size_t v78; // r5
  _DWORD *v79; // r3
  char *v80; // r6
  int v81; // r4
  char v82; // r10
  char v83; // r5
  char *v84; // r10
  int v85; // r6
  __int16 v86; // r4
  int v87; // r0
  char *v88; // r3
  int v89; // r4
  char v90; // r5
  _DWORD *v91; // r0
  glitch::video::CVertexStreams *v92; // r3
  int v93; // r3
  __int16 v94; // r4
  glitch::video::CVertexStreams *v95; // r4
  char *v97; // [sp+10h] [bp-9Ch]
  unsigned int v98; // [sp+14h] [bp-98h]
  void *v99; // [sp+14h] [bp-98h]
  int v100; // [sp+18h] [bp-94h]
  int v101; // [sp+18h] [bp-94h]
  int v102; // [sp+1Ch] [bp-90h]
  int v103; // [sp+20h] [bp-8Ch]
  glitch::IReferenceCounted *v104; // [sp+24h] [bp-88h]
  int v105; // [sp+24h] [bp-88h]
  int v106; // [sp+24h] [bp-88h]
  int v107; // [sp+2Ch] [bp-80h]
  int v109; // [sp+3Ch] [bp-70h]
  _DWORD *v110; // [sp+44h] [bp-68h]
  glitch::IReferenceCounted ***v111; // [sp+44h] [bp-68h]
  glitch::IReferenceCounted ***v112; // [sp+44h] [bp-68h]
  int v113; // [sp+4Ch] [bp-60h]
  int v115; // [sp+5Ch] [bp-50h] BYREF
  _DWORD *v116; // [sp+60h] [bp-4Ch]
  int *v117; // [sp+64h] [bp-48h]
  int *v118; // [sp+68h] [bp-44h]
  int v119; // [sp+6Ch] [bp-40h]
  int v120; // [sp+74h] [bp-38h] BYREF
  glitch::IReferenceCounted *v121; // [sp+78h] [bp-34h]
  char *v122; // [sp+7Ch] [bp-30h]
  int v123; // [sp+80h] [bp-2Ch]
  __int16 v124; // [sp+84h] [bp-28h]
  __int16 v125; // [sp+86h] [bp-26h]
  int v126; // [sp+88h] [bp-24h] BYREF
  char *v127; // [sp+8Ch] [bp-20h]
  int v128; // [sp+90h] [bp-1Ch]
  glitch::IReferenceCounted ***v129; // [sp+94h] [bp-18h] BYREF
  glitch::IReferenceCounted ***v130; // [sp+98h] [bp-14h]
  int v131; // [sp+9Ch] [bp-10h]
  glitch::video::CVertexStreams *v132; // [sp+A0h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v133; // [sp+A4h] [bp-8h] BYREF

  v5 = a2;
  v6 = *a2;
  LOBYTE(v115) = 0;
  v131 = 0;
  v116 = nullptr;
  v119 = 0;
  v129 = nullptr;
  v130 = nullptr;
  v117 = &v115;
  v118 = &v115;
  v7 = *(glitch::video::CVertexStreams **)(v6 + 20);
  v109 = a4;
  if ( v7 )
    a4 = *(_DWORD *)v7;
  v8 = *((_DWORD *)v7 + 2);
  if ( v7 )
    *(_DWORD *)v7 = a4 + 1;
  v107 = v8;
  v9 = *(_DWORD *)v7 - 1;
  *(_DWORD *)v7 = v9;
  if ( !v9 )
  {
    glitch::video::CVertexStreams::~CVertexStreams(v7);
    LC_API_FREE_0(v7);
  }
  v10 = *(glitch::video::CVertexStreams **)(*v5 + 20);
  if ( v10 )
  {
    v11 = (int)v10 + 20;
    v12 = *(_DWORD *)v10 == 0;
    *(_DWORD *)v10 = *(_DWORD *)v10;
    if ( v12 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v10);
      LC_API_FREE_0(v10);
    }
    v10 = *(glitch::video::CVertexStreams **)(*v5 + 20);
    if ( v10 )
      ++*(_DWORD *)v10;
  }
  else
  {
    v11 = 20;
  }
  v12 = *(_DWORD *)v10 == 1;
  v100 = *((_DWORD *)v10 + 4);
  --*(_DWORD *)v10;
  if ( v12 )
  {
    glitch::video::CVertexStreams::~CVertexStreams(v10);
    LC_API_FREE_0(v10);
  }
  if ( v11 == v100 )
    goto LABEL_46;
  v110 = v5;
  do
  {
    v13 = std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::_M_find<boost::intrusive_ptr<glitch::video::IBuffer>>(
            &v115,
            (glitch::IReferenceCounted **)v11);
    if ( &v115 == std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::_M_find<boost::intrusive_ptr<glitch::video::IBuffer>>(
                    &v115,
                    (glitch::IReferenceCounted **)v11) )
    {
      (*(void (__fastcall **)(glitch::IReferenceCounted **, int, _DWORD, _DWORD, _DWORD, _DWORD, int))(*(_DWORD *)a5 + 120))(
        &v133,
        a5,
        0,
        *(unsigned __int8 *)(*(_DWORD *)v11 + 17),
        0,
        0,
        1);
      v14 = v133;
      if ( v133 )
      {
        v71 = (_DWORD *)(*((_DWORD *)v133 + 1) + 1);
        *((_DWORD *)v133 + 1) = v71;
        if ( v133 )
          glitch::IReferenceCounted::drop(v133);
      }
      v72 = (glitch::IReferenceCounted **)std::map<boost::intrusive_ptr<glitch::video::IBuffer const>,glitch::core::SBufferData>::operator[]<boost::intrusive_ptr<glitch::video::IBuffer>>(
                                            &v115,
                                            (glitch::IReferenceCounted **)v11,
                                            v70,
                                            v71);
      if ( v14 )
        v73 = *((_DWORD *)v14 + 1);
      v74 = v72;
      if ( v14 )
        *((_DWORD *)v14 + 1) = v73 + 1;
      v75 = *v72;
      *v74 = v14;
      if ( v75 )
        glitch::IReferenceCounted::drop(v75);
      v16 = 0;
      *((_WORD *)v74 + 3) = 0;
      *((_WORD *)v74 + 2) = 0;
      v15 = 0;
    }
    else
    {
      v14 = (glitch::IReferenceCounted *)v13[5];
      if ( v14 )
        ++*((_DWORD *)v14 + 1);
      v15 = *((unsigned __int16 *)v13 + 13);
      v16 = *((unsigned __int16 *)v13 + 12);
    }
    v121 = nullptr;
    v122 = nullptr;
    v123 = 255;
    v124 = 0;
    v125 = 0;
    v120 = v11;
    v17 = *(unsigned __int16 *)(v11 + 8);
    v18 = *(unsigned __int16 *)(v11 + 10);
    if ( ((1 << v17) & 0x1FFFE) != 0 )
    {
LABEL_26:
      v19 = 2;
      goto LABEL_27;
    }
    if ( v17 == 17 )
    {
      v19 = a3;
      if ( a3 )
        v19 = 2;
LABEL_27:
      v18 = v19;
      v20 = glitch::video::detail::SVertexAttributeTypeInspection::ValueTypeSize[v19];
      if ( v20 >= v15 )
        LOWORD(v15) = glitch::video::detail::SVertexAttributeTypeInspection::ValueTypeSize[v19];
      if ( !v16 )
        goto LABEL_91;
      goto LABEL_30;
    }
    if ( !*(_WORD *)(v11 + 8) && v109 )
      goto LABEL_26;
    v20 = glitch::video::detail::SVertexAttributeTypeInspection::ValueTypeSize[v18];
    if ( v20 >= v15 )
      LOWORD(v15) = glitch::video::detail::SVertexAttributeTypeInspection::ValueTypeSize[v18];
    if ( !v16 )
      goto LABEL_91;
LABEL_30:
    if ( (((1 << v20) - 1) & v16) != 0 )
    {
      v21 = (unsigned __int16)((int)(v16 - 1 + v20) / (int)v20 * v20);
      v16 = v21;
      goto LABEL_32;
    }
LABEL_91:
    v21 = v16;
LABEL_32:
    v22 = *(_WORD *)(v11 + 12);
    v121 = v14;
    if ( v14 )
      ++*((_DWORD *)v14 + 1);
    v124 = v22;
    v123 = v18;
    v125 = 0;
    v122 = (char *)v16;
    v23 = *(unsigned __int16 *)(v11 + 12);
    v24 = v21 + v23 * v20;
    v25 = (glitch::IReferenceCounted **)std::map<boost::intrusive_ptr<glitch::video::IBuffer const>,glitch::core::SBufferData>::operator[]<boost::intrusive_ptr<glitch::video::IBuffer>>(
                                          &v115,
                                          (glitch::IReferenceCounted **)v11,
                                          v23,
                                          (_DWORD *)v21);
    if ( v14 )
      v26 = *((_DWORD *)v14 + 1);
    v27 = v25;
    if ( v14 )
      *((_DWORD *)v14 + 1) = v26 + 1;
    v28 = *v25;
    *v27 = v14;
    if ( v28 )
      glitch::IReferenceCounted::drop(v28);
    *((_WORD *)v27 + 3) = v15;
    *((_WORD *)v27 + 2) = v24;
    std::vector<glitch::core::SQuantizationOpData>::push_back((int)&v129, (int)&v120);
    if ( v121 )
      glitch::IReferenceCounted::drop(v121);
    if ( v14 )
      glitch::IReferenceCounted::drop(v14);
    v11 += 16;
  }
  while ( v11 != v100 );
  v5 = v110;
LABEL_46:
  v29 = v117;
  while ( v29 != &v115 )
  {
    while ( 1 )
    {
      v30 = (unsigned __int16)((*((unsigned __int16 *)v29 + 12) + *((unsigned __int16 *)v29 + 13) - 1)
                             / *((unsigned __int16 *)v29 + 13)
                             * *((_WORD *)v29 + 13));
      *((_WORD *)v29 + 12) = v30;
      v31 = v107 * v30;
      v32 = (glitch::video::IBuffer *)v29[5];
      v33 = operator new[](v107 * v30, 0);
      glitch::video::IBuffer::reset(v32, v31, v33, 1);
      v34 = (int *)v29[3];
      if ( !v34 )
        break;
      while ( v34[2] )
        v34 = (int *)v34[2];
      v29 = v34;
      if ( v34 == &v115 )
        goto LABEL_53;
    }
    v69 = (int *)v29[1];
    if ( v29 == (int *)v69[3] )
    {
      do
      {
        v29 = v69;
        v69 = (int *)v69[1];
      }
      while ( (int *)v69[3] == v29 );
      v34 = (int *)v29[3];
    }
    if ( v69 != v34 )
      v29 = v69;
  }
LABEL_53:
  v35 = *(glitch::video::CVertexStreams **)(*v5 + 20);
  if ( v35 )
  {
    v36 = *(glitch::video::CVertexStreams **)(*v5 + 20);
    ++*(_DWORD *)v35;
    ActiveAttributeMask = glitch::video::CVertexStreams::getActiveAttributeMask(v36);
    v12 = (*(_DWORD *)v35)-- == 1;
    if ( v12 )
    {
      v98 = ActiveAttributeMask;
      glitch::video::CVertexStreams::~CVertexStreams(v35);
      LC_API_FREE_0(v35);
      ActiveAttributeMask = v98;
    }
  }
  else
  {
    ActiveAttributeMask = glitch::video::CVertexStreams::getActiveAttributeMask(nullptr);
  }
  glitch::video::CVertexStreams::allocate(&v132, ActiveAttributeMask);
  *((_DWORD *)v132 + 2) = v107;
  if ( v129 != v130 )
  {
    v38 = 0;
    v39 = (unsigned int)&v126;
    v101 = 0;
    v40 = v129 + 5;
    do
    {
      v50 = std::map<boost::intrusive_ptr<glitch::video::IBuffer const>,glitch::core::SBufferData>::operator[]<boost::intrusive_ptr<glitch::video::IBuffer>>(
              &v115,
              *(v40 - 5),
              v38,
              (_DWORD *)v39);
      v51 = (int *)*(v40 - 5);
      v52 = v50;
      v53 = *v51;
      if ( *v51 )
      {
        v54 = *v51;
        *(_DWORD *)(v53 + 4) += 2;
        v103 = glitch::video::IBuffer::map(v54, 1);
        v55 = glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)v53);
      }
      else
      {
        v55 = glitch::video::IBuffer::map(0, 1);
        v103 = v55;
      }
      v57 = *(glitch::IReferenceCounted **)v52;
      if ( *(_DWORD *)v52 )
        v56 = *((_DWORD *)v57 + 1);
      else
        v55 = 0;
      if ( *(_DWORD *)v52 )
      {
        *((_DWORD *)v57 + 1) = v56 + 1;
        v55 = *(_DWORD *)v52;
      }
      v102 = glitch::video::IBuffer::map(v55, 4);
      v58 = *(unsigned __int16 *)(v52 + 4);
      v59 = (int)*(v40 - 5);
      v60 = (int)*(v40 - 2);
      *((_WORD *)v40 - 1) = v58;
      v61 = (char *)*(v40 - 3) + v102;
      v62 = (float *)(v103 + *(_DWORD *)(v59 + 4));
      if ( v60 == *(unsigned __int16 *)(v59 + 10) )
      {
        v76 = 0;
        v104 = v57;
        v77 = v53;
        v78 = *((unsigned __int16 *)v40 - 2) * glitch::video::detail::SVertexAttributeTypeInspection::ValueTypeSize[v60];
        while ( 1 )
        {
          v79 = *(_DWORD **)(*v5 + 20);
          if ( v79 )
            ++*v79;
          v43 = (char *)v79[2];
          v12 = (*v79)-- == 1;
          if ( v12 )
          {
            v97 = v43;
            v99 = v79;
            glitch::video::CVertexStreams::~CVertexStreams((glitch::video::CVertexStreams *)v79);
            LC_API_FREE_0(v99);
            v43 = v97;
            if ( v76 >= (unsigned int)v97 )
            {
LABEL_119:
              v53 = v77;
              v57 = v104;
              goto LABEL_60;
            }
          }
          else if ( v76 >= (unsigned int)v43 )
          {
            goto LABEL_119;
          }
          memcpy(v61, v62, v78);
          ++v76;
          v61 += *((unsigned __int16 *)v40 - 1);
          v62 = (float *)((char *)v62 + *(unsigned __int16 *)(v59 + 14));
        }
      }
      if ( *(_WORD *)(v59 + 8) )
      {
        if ( *(_WORD *)(v59 + 8) == 17 )
        {
          if ( v60 )
          {
            v43 = (char *)v107;
            v84 = &v61[v107 * v58];
            v106 = *(unsigned __int16 *)(v59 + 14);
            if ( v61 != v84 )
            {
              v85 = 0;
              v112 = v40;
              while ( 1 )
              {
                v86 = (int)(float)(v62[1] * 32767.0);
                v87 = (int)(float)(v62[2] * 32767.0);
                *(_WORD *)&v61[v85] = (int)(float)(*v62 * 32767.0);
                v88 = &v61[v85];
                v85 += v58;
                v43 = &v61[v85];
                *((_WORD *)v88 + 2) = v87;
                *((_WORD *)v88 + 1) = v86;
                if ( v84 == &v61[v85] )
                  break;
                v62 = (float *)((char *)v62 + v106);
              }
              v40 = v112;
            }
          }
          else
          {
            v43 = &v61[v107 * v58];
            v105 = *(unsigned __int16 *)(v59 + 14);
            if ( v61 != v43 )
            {
              v111 = v40;
              v80 = (char *)*(v40 - 3) + v102;
              v81 = 0;
              v113 = v53;
              while ( 1 )
              {
                v82 = (int)(float)(*v62 * 127.0);
                v83 = (int)(float)(v62[1] * 127.0);
                v81 += v58;
                v80[2] = (int)(float)(v62[2] * 127.0);
                *v80 = v82;
                v80[1] = v83;
                v80 = &v61[v81];
                if ( v43 == &v61[v81] )
                  break;
                v62 = (float *)((char *)v62 + v105);
              }
              v40 = v111;
              v53 = v113;
            }
          }
        }
        else
        {
          v120 = 0;
          v121 = nullptr;
          v126 = 0;
          v127 = nullptr;
          glitch::core::quantizeScaleOffset<glitch::core::vector2d<short>,glitch::core::vector2d<float>>(
            v61,
            *((unsigned __int16 *)v40 - 1),
            (int)v62,
            *(unsigned __int16 *)(v59 + 14),
            v107,
            (float *)&v120,
            (float *)&v126);
          v63 = (unsigned __int8)(*(_WORD *)(v59 + 8) - 1);
          *((_WORD *)v132 + 7) |= 8 << v63;
          v64 = 24 * v63 + 24;
          v65 = *((_DWORD *)v132 + 4);
          v66 = 24 * v63 + 36;
          *(_DWORD *)(v65 + v64) = v120;
          *(_DWORD *)(v65 + v64 + 4) = v121;
          v67 = *((_DWORD *)v132 + 4);
          *(_DWORD *)(v67 + v66) = v126;
          v68 = v67 + v66;
          v43 = v127;
          *(_DWORD *)(v68 + 4) = v127;
        }
      }
      else
      {
        v126 = 0;
        v127 = nullptr;
        v128 = 0;
        v120 = 0;
        v121 = nullptr;
        v122 = nullptr;
        glitch::core::quantizeScaleOffset<glitch::core::vector3d<short>,glitch::core::vector3d<float>>(
          v61,
          *((unsigned __int16 *)v40 - 1),
          (int)v62,
          *(unsigned __int16 *)(v59 + 14),
          v107,
          (float *)&v126,
          (float *)&v120);
        *((_WORD *)v132 + 7) |= 4u;
        v41 = *((_DWORD **)v132 + 4);
        *v41 = v126;
        v41[1] = v127;
        v41[2] = v128;
        v42 = *((_DWORD **)v132 + 4);
        v42[3] = v120;
        v42 += 3;
        v42[1] = v121;
        v43 = v122;
        v42[2] = v122;
      }
LABEL_60:
      v44 = (int)*(v40 - 4);
      v45 = v132;
      if ( v44 )
        v43 = *(char **)(v44 + 4);
      v46 = (char *)v132 + v101 + 20;
      if ( v44 )
        *(_DWORD *)(v44 + 4) = v43 + 1;
      v47 = *(glitch::IReferenceCounted **)v46;
      *(_DWORD *)v46 = v44;
      if ( v47 )
        glitch::IReferenceCounted::drop(v47);
      *((_DWORD *)v46 + 1) = *(v40 - 3);
      *((_WORD *)v46 + 5) = *((_WORD *)v40 - 4);
      *((_WORD *)v46 + 6) = *((_WORD *)v40 - 2);
      *((_WORD *)v46 + 7) = *((_WORD *)v40 - 1);
      glitch::video::CVertexStreams::updateHomogeneityInternal((int)v45, 0);
      if ( v102 )
      {
        v48 = *((unsigned __int8 *)v57 + 19);
        if ( (v48 & 0x1Fu) <= 1 )
        {
          v39 = *((unsigned __int8 *)v57 + 18);
          if ( (v39 & 0x20) != 0 )
            (*(void (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v57 + 24))(v57);
          *((_BYTE *)v57 + 19) = 0;
        }
        else
        {
          v39 = ((v48 & 0x1F) - 1) | v48 & 0xFFFFFFE0;
          *((_BYTE *)v57 + 19) = v39;
        }
      }
      if ( v57 )
        glitch::IReferenceCounted::drop(v57);
      if ( v103 )
      {
        v49 = *(unsigned __int8 *)(v53 + 19);
        if ( (v49 & 0x1Fu) <= 1 )
        {
          v39 = *(unsigned __int8 *)(v53 + 18);
          if ( (v39 & 0x20) != 0 )
            (*(void (__fastcall **)(int))(*(_DWORD *)v53 + 24))(v53);
          *(_BYTE *)(v53 + 19) = 0;
        }
        else
        {
          v39 = ((v49 & 0x1F) - 1) | v49 & 0xFFFFFFE0;
          *(_BYTE *)(v53 + 19) = v39;
        }
      }
      if ( v53 )
        glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)v53);
      v101 += 16;
      v38 = (int)v130;
      v12 = v130 == v40;
      v40 += 5;
    }
    while ( !v12 );
  }
  v89 = *v5;
  v90 = *(_BYTE *)(*v5 + 52);
  v91 = operator new(0x38u, 0);
  v91[4] = 0;
  v91[1] = 0;
  v91[2] = 0;
  v91[3] = 0;
  *v91 = off_988098;
  v92 = v132;
  v91[5] = v132;
  if ( v92 )
    ++*(_DWORD *)v92;
  v93 = *(_DWORD *)(v89 + 24);
  v91[6] = v93;
  if ( v93 )
    ++*(_DWORD *)(v93 + 4);
  v91[7] = *(_DWORD *)(v89 + 28);
  v91[8] = *(_DWORD *)(v89 + 32);
  v91[9] = *(_DWORD *)(v89 + 36);
  v91[10] = *(_DWORD *)(v89 + 40);
  *((_WORD *)v91 + 22) = *(_WORD *)(v89 + 44);
  v94 = *(_WORD *)(v89 + 46);
  v91[12] = 0;
  *((_BYTE *)v91 + 52) = v90;
  *((_WORD *)v91 + 23) = v94;
  *a1 = v91;
  ++v91[1];
  v95 = v132;
  if ( v132 )
  {
    v12 = (*(_DWORD *)v132)-- == 1;
    if ( v12 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v95);
      LC_API_FREE_0(v95);
    }
  }
  std::vector<glitch::core::SQuantizationOpData>::~vector((void **)&v129);
  if ( v119 )
    std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>,std::less<boost::intrusive_ptr<glitch::video::IBuffer const>>,std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>,std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const,glitch::core::SBufferData>>>::_M_erase(
      (int)&v115,
      v116);
  return a1;
}


// ===== 6a38e4 glitch::core::compareParameter(boost::intrusive_ptr<glitch::video::CMaterial const> const&,ushort,boost::intrusive_ptr<glitch::video::CMaterial const> const&,ushort) =====
int __fastcall glitch::core::compareParameter(int *a1, unsigned int a2, int *a3, unsigned int a4)
{
  int v6; // r3
  unsigned int v7; // r2
  int v10; // r3
  unsigned int v11; // r2
  int v12; // r3
  unsigned int v13; // r1
  int v15; // r2
  int v16; // r3
  unsigned int v17; // r4
  int v18; // r0
  glitch::IReferenceCounted *v19; // r0
  glitch::IReferenceCounted *v20; // r3
  bool v21; // zf
  _DWORD *v22; // r2
  glitch::IReferenceCounted *v23; // r0
  _DWORD *v24; // r2
  int v25; // r0
  int v26; // r0
  glitch::IReferenceCounted *v27; // r0
  int v28; // r0
  int v29; // r11
  _BOOL4 v30; // r0
  int v31; // r0
  int v32; // r0
  int v33; // r0
  int v34; // r0
  int v35; // r0
  int v36; // r0
  _DWORD *v37; // r2
  _DWORD *v38; // r1
  int v39; // [sp+4h] [bp-B8h]
  unsigned int v40; // [sp+8h] [bp-B4h]
  glitch::IReferenceCounted *v41; // [sp+28h] [bp-94h] BYREF
  float v42; // [sp+2Ch] [bp-90h]
  float v43; // [sp+30h] [bp-8Ch]
  float v44; // [sp+34h] [bp-88h]
  int v45; // [sp+3Ch] [bp-80h]
  int v46; // [sp+50h] [bp-6Ch]
  int v47; // [sp+64h] [bp-58h]
  char v48; // [sp+68h] [bp-54h]
  glitch::IReferenceCounted *v49; // [sp+6Ch] [bp-50h] BYREF
  float v50; // [sp+70h] [bp-4Ch]
  float v51; // [sp+74h] [bp-48h]
  float v52; // [sp+78h] [bp-44h]
  int v53; // [sp+80h] [bp-3Ch]
  int v54; // [sp+94h] [bp-28h]
  int v55; // [sp+A8h] [bp-14h]
  char v56; // [sp+ACh] [bp-10h]
  int v57; // [sp+B0h] [bp-Ch] BYREF
  _DWORD v58[2]; // [sp+B4h] [bp-8h] BYREF

  v6 = *(_DWORD *)(*a3 + 4);
  v7 = *(unsigned __int16 *)(v6 + 14);
  if ( v7 <= a4 )
    v39 = 0;
  else
    v6 = *(_DWORD *)(v6 + 32);
  if ( v7 > a4 )
    v39 = v6 + 16 * a4;
  v10 = *(_DWORD *)(*a1 + 4);
  v11 = *(unsigned __int16 *)(v10 + 14);
  if ( v11 <= a2 )
    v12 = 0;
  else
    v12 = *(_DWORD *)(v10 + 32);
  if ( v11 > a2 )
    v12 += 16 * a2;
  v13 = *(_DWORD *)(v39 + 8);
  v40 = v13;
  if ( v13 != *(_DWORD *)(v12 + 8) )
    return 0;
  v15 = *(unsigned __int8 *)(v12 + 6);
  v16 = *(unsigned __int8 *)(v39 + 6);
  if ( v16 != v15 )
    return 0;
  if ( !v13 )
    return 1;
  v17 = 0;
  while ( 2 )
  {
    switch ( v16 )
    {
      case 1:
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<int>(
          *a3,
          a4,
          v17,
          &v57);
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<int>(
          *a1,
          a2,
          v17,
          v58);
        if ( v58[0] != v57 )
          return 0;
        goto LABEL_30;
      case 2:
        v33 = *a3;
        *(float *)&v41 = 0.0;
        v42 = 0.0;
        *(float *)&v49 = 0.0;
        v50 = 0.0;
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector2d<int>>(
          v33,
          a4,
          v17,
          &v41);
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector2d<int>>(
          *a1,
          a2,
          v17,
          &v49);
        if ( v41 != v49 || LODWORD(v42) != LODWORD(v50) )
          return 0;
        goto LABEL_30;
      case 3:
        v32 = *a3;
        *(float *)&v41 = 0.0;
        v42 = 0.0;
        v43 = 0.0;
        *(float *)&v49 = 0.0;
        v50 = 0.0;
        v51 = 0.0;
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector3d<int>>(
          v32,
          a4,
          v17,
          &v41);
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector3d<int>>(
          *a1,
          a2,
          v17,
          &v49);
        if ( v49 != v41 || LODWORD(v50) != LODWORD(v42) || LODWORD(v51) != LODWORD(v43) )
          return 0;
        goto LABEL_30;
      case 4:
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<int>(
          *a3,
          a4,
          v17,
          v58);
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<int>(
          *a1,
          a2,
          v17,
          &v57);
        if ( v57 != v58[0] )
          return 0;
        goto LABEL_30;
      case 5:
        v35 = *a3;
        *(float *)&v41 = 0.0;
        v42 = 0.0;
        v43 = 0.0;
        v44 = 0.0;
        *(float *)&v49 = 0.0;
        v50 = 0.0;
        v51 = 0.0;
        v52 = 0.0;
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector4d<int>>(
          v35,
          a4,
          v17,
          &v41);
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector4d<int>>(
          *a1,
          a2,
          v17,
          &v49);
        if ( v49 != v41 || LODWORD(v50) != LODWORD(v42) || LODWORD(v51) != LODWORD(v43) || LODWORD(v52) != LODWORD(v44) )
          return 0;
        goto LABEL_30;
      case 6:
        v34 = *a3;
        *(float *)&v49 = 0.0;
        v50 = 0.0;
        *(float *)&v41 = 0.0;
        v42 = 0.0;
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector2d<float>>(
          v34,
          a4,
          v17,
          &v49);
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector2d<float>>(
          *a1,
          a2,
          v17,
          &v41);
        if ( *(float *)&v49 != *(float *)&v41 || v50 != v42 )
          return 0;
        goto LABEL_30;
      case 7:
        v36 = *a3;
        *(float *)&v49 = 0.0;
        v50 = 0.0;
        v51 = 0.0;
        *(float *)&v41 = 0.0;
        v42 = 0.0;
        v43 = 0.0;
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector3d<float>>(
          v36,
          a4,
          v17,
          &v49);
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector3d<float>>(
          *a1,
          a2,
          v17,
          &v41);
        if ( *(float *)&v41 != *(float *)&v49 || v42 != v50 || v43 != v51 )
          return 0;
        goto LABEL_30;
      case 8:
        v31 = *a3;
        *(float *)&v49 = 0.0;
        v50 = 0.0;
        v51 = 0.0;
        v52 = 0.0;
        *(float *)&v41 = 0.0;
        v42 = 0.0;
        v43 = 0.0;
        v44 = 0.0;
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector4d<float>>(
          v31,
          a4,
          v17,
          &v49);
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector4d<float>>(
          *a1,
          a2,
          v17,
          &v41);
        if ( *(float *)&v41 != *(float *)&v49 || v42 != v50 || v43 != v51 || v44 != v52 )
          return 0;
        goto LABEL_30;
      case 11:
        LC_API_MEMSET_0(&v49, 0, 0x40u);
        *(float *)&v49 = 1.0;
        v53 = 1065353216;
        v54 = 1065353216;
        v55 = 1065353216;
        v56 = 1;
        LC_API_MEMSET_0(&v41, 0, 0x40u);
        v28 = *a3;
        *(float *)&v41 = 1.0;
        v45 = 1065353216;
        v46 = 1065353216;
        v47 = 1065353216;
        v48 = 1;
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter(
          v28,
          a4,
          v17,
          &v49);
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter(
          *a1,
          a2,
          v17,
          &v41);
        if ( v48 && v56 )
          goto LABEL_30;
        v29 = 0;
        while ( 1 )
        {
          v30 = *(float *)((char *)&v41 + v29) == *(float *)((char *)&v49 + v29);
          v29 += 4;
          if ( !v30 )
            return 0;
          if ( v29 == 64 )
            goto LABEL_30;
        }
      case 12:
      case 13:
      case 14:
      case 15:
        v26 = *a3;
        *(float *)&v49 = 0.0;
        *(float *)&v41 = 0.0;
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
          v26,
          a4,
          v17,
          &v49);
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
          *a1,
          a2,
          v17,
          &v41);
        v27 = v49;
        if ( v41 != v49 )
        {
          if ( *(float *)&v41 != 0.0 )
          {
            glitch::IReferenceCounted::drop(v41);
            v27 = v49;
          }
          if ( v27 )
          {
            glitch::IReferenceCounted::drop(v27);
            return 0;
          }
          return 0;
        }
        if ( *(float *)&v41 != 0.0 )
        {
          glitch::IReferenceCounted::drop(v41);
          if ( *(float *)&v49 != 0.0 )
            glitch::IReferenceCounted::drop(v49);
        }
        goto LABEL_30;
      case 16:
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::video::SColor>(
          *a3,
          a4,
          v17,
          &v41);
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::video::SColor>(
          *a1,
          a2,
          v17,
          &v49);
        if ( v49 != v41 )
          return 0;
        goto LABEL_30;
      case 17:
        v25 = *a3;
        v44 = 1.0;
        v52 = 1.0;
        *(float *)&v41 = 0.0;
        v42 = 0.0;
        v43 = 0.0;
        *(float *)&v49 = 0.0;
        v50 = 0.0;
        v51 = 0.0;
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::video::SColorf>(
          v25,
          a4,
          v17,
          &v41);
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::video::SColorf>(
          *a1,
          a2,
          v17,
          &v49);
        if ( *(float *)&v41 > (float)(*(float *)&v49 + 0.000001)
          || *(float *)&v41 < (float)(*(float *)&v49 - 0.000001)
          || v42 > (float)(v50 + 0.000001)
          || v42 < (float)(v50 - 0.000001)
          || v43 > (float)(v51 + 0.000001)
          || v43 < (float)(v51 - 0.000001)
          || v44 > (float)(v52 + 0.000001)
          || v44 < (float)(v52 - 0.000001) )
        {
          return 0;
        }
        goto LABEL_30;
      case 18:
        v18 = *a3;
        *(float *)&v49 = 0.0;
        *(float *)&v41 = 0.0;
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<boost::intrusive_ptr<glitch::video::CLight>>(
          v18,
          a4,
          v17,
          (void **)&v49);
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<boost::intrusive_ptr<glitch::video::CLight>>(
          *a1,
          a2,
          v17,
          (void **)&v41);
        v19 = v41;
        v20 = v49;
        if ( v41 == v49 )
        {
          if ( *(float *)&v41 != 0.0 )
          {
            v21 = (*(_DWORD *)v41)-- == 1;
            if ( v21 )
            {
              if ( !*((_BYTE *)&dword_54 + (_DWORD)v19) )
              {
                v22 = *(_DWORD **)((char *)&dword_50 + (_DWORD)v19);
                *v22 = glitch::memory::Matrix4Pool;
                glitch::memory::Matrix4Pool = (int)v22;
              }
              *(int *)((char *)&dword_50 + (_DWORD)v19) = 0;
              LC_API_FREE_0(v19);
            }
            v23 = v49;
            if ( *(float *)&v49 != 0.0 )
            {
              v21 = (*(_DWORD *)v49)-- == 1;
              if ( v21 )
              {
                if ( !*((_BYTE *)&dword_54 + (_DWORD)v23) )
                {
                  v24 = *(_DWORD **)((char *)&dword_50 + (_DWORD)v23);
                  *v24 = glitch::memory::Matrix4Pool;
                  glitch::memory::Matrix4Pool = (int)v24;
                }
                *(int *)((char *)&dword_50 + (_DWORD)v23) = 0;
                LC_API_FREE_0(v23);
              }
            }
          }
LABEL_30:
          if ( ++v17 >= v40 )
            return 1;
          v16 = *(unsigned __int8 *)(v39 + 6);
          continue;
        }
        if ( *(float *)&v41 != 0.0 )
        {
          v21 = (*(_DWORD *)v41)-- == 1;
          if ( v21 )
          {
            if ( !*((_BYTE *)&dword_54 + (_DWORD)v19) )
            {
              v37 = *(_DWORD **)((char *)&dword_50 + (_DWORD)v19);
              *v37 = glitch::memory::Matrix4Pool;
              glitch::memory::Matrix4Pool = (int)v37;
            }
            *(int *)((char *)&dword_50 + (_DWORD)v19) = 0;
            LC_API_FREE_0(v19);
          }
          v20 = v49;
        }
        if ( !v20 )
          return 0;
        v21 = (*(_DWORD *)v20)-- == 1;
        if ( !v21 )
          return 0;
        if ( !*((_BYTE *)&dword_54 + (_DWORD)v20) )
        {
          v38 = *(_DWORD **)((char *)&dword_50 + (_DWORD)v20);
          *v38 = glitch::memory::Matrix4Pool;
          glitch::memory::Matrix4Pool = (int)v38;
        }
        *(int *)((char *)&dword_50 + (_DWORD)v20) = 0;
        LC_API_FREE_0(v20);
        return 0;
      default:
        goto LABEL_30;
    }
  }
}


// ===== 6a4288 glitch::core::computeBoundingBox<signed char>(signed char const*,uint,uint,uint,glitch::core::aabbox3d<signed char> &) =====
int __fastcall glitch::core::computeBoundingBox<signed char>(int result, unsigned int a2, int a3, int a4, _BYTE *a5)
{
  _BYTE *v5; // r7
  int j; // r12
  unsigned int i; // r12
  int v8; // r9
  int v9; // r10
  int v10; // r8
  int k; // r3
  char v12; // r12
  int v13; // r4

  if ( !a4 )
  {
    a5[2] = 0;
    a5[3] = 0;
    a5[4] = 0;
    a5[5] = 0;
    *a5 = 0;
    a5[1] = 0;
    return result;
  }
  if ( a2 >= 3 )
    a2 = 3;
  if ( !a2 )
  {
    v5 = a5 + 3;
LABEL_9:
    for ( i = a2; i <= 2; ++i )
    {
      a5[i] = 0;
      v5[i] = 0;
    }
    goto LABEL_11;
  }
  v5 = a5 + 3;
  for ( j = 0; j != a2; ++j )
  {
    a5[j] = *(_BYTE *)(result + j);
    v5[j] = *(_BYTE *)(result + j);
  }
  if ( a2 <= 2 )
    goto LABEL_9;
LABEL_11:
  result += a3;
  v8 = result + a3 * (a4 - 1);
  if ( result != v8 )
  {
    v9 = 0;
    v10 = result;
    do
    {
      if ( a2 )
      {
        for ( k = 0; k != a2; ++k )
        {
          v12 = *(_BYTE *)(v10 + k);
          v13 = v12;
          if ( (char)a5[k] > v12 )
          {
            a5[k] = v12;
            v12 = *(_BYTE *)(v10 + k);
            v13 = v12;
          }
          if ( (char)v5[k] < v13 )
            v5[k] = v12;
        }
      }
      v9 += a3;
      v10 = result + v9;
    }
    while ( v8 != result + v9 );
  }
  return result;
}


// ===== 6a4388 glitch::core::computeBoundingBox<uchar>(uchar const*,uint,uint,uint,glitch::core::aabbox3d<uchar> &) =====
int __fastcall glitch::core::computeBoundingBox<unsigned char>(int result, unsigned int a2, int a3, int a4, _BYTE *a5)
{
  _BYTE *v5; // r6
  int j; // r12
  unsigned int i; // r12
  int v8; // r10
  int v9; // r8
  int v10; // r7
  int k; // r3
  unsigned int v12; // r12

  if ( !a4 )
  {
    a5[2] = 0;
    a5[3] = 0;
    a5[4] = 0;
    a5[5] = 0;
    *a5 = 0;
    a5[1] = 0;
    return result;
  }
  if ( a2 >= 3 )
    a2 = 3;
  if ( !a2 )
  {
    v5 = a5 + 3;
LABEL_9:
    for ( i = a2; i <= 2; ++i )
    {
      a5[i] = 0;
      v5[i] = 0;
    }
    goto LABEL_11;
  }
  v5 = a5 + 3;
  for ( j = 0; j != a2; ++j )
  {
    a5[j] = *(_BYTE *)(result + j);
    v5[j] = *(_BYTE *)(result + j);
  }
  if ( a2 <= 2 )
    goto LABEL_9;
LABEL_11:
  result += a3;
  v8 = result + a3 * (a4 - 1);
  if ( result != v8 )
  {
    v9 = 0;
    v10 = result;
    do
    {
      if ( a2 )
      {
        for ( k = 0; k != a2; ++k )
        {
          v12 = *(unsigned __int8 *)(v10 + k);
          if ( (unsigned __int8)a5[k] > v12 )
          {
            a5[k] = v12;
            v12 = *(unsigned __int8 *)(v10 + k);
          }
          if ( (unsigned __int8)v5[k] < v12 )
            v5[k] = v12;
        }
      }
      v9 += a3;
      v10 = result + v9;
    }
    while ( v8 != result + v9 );
  }
  return result;
}


// ===== 6a4480 glitch::core::computeBoundingBox<short>(short const*,uint,uint,uint,glitch::core::aabbox3d<short> &) =====
int __fastcall glitch::core::computeBoundingBox<short>(int result, unsigned int a2, int a3, int a4, _WORD *a5)
{
  unsigned int v5; // r8
  int v6; // r1
  _WORD *v7; // r6
  int v8; // r12
  int v9; // r1
  unsigned int i; // r12
  int v11; // r9
  int v12; // r11
  int v13; // r10
  int v14; // r7
  int v15; // r3
  int v16; // r12
  __int16 v17; // r1

  if ( !a4 )
  {
    a5[2] = 0;
    a5[3] = 0;
    a5[4] = 0;
    a5[5] = 0;
    *a5 = 0;
    a5[1] = 0;
    return result;
  }
  if ( a2 >= 3 )
    v5 = 3;
  else
    v5 = a2;
  if ( !v5 )
  {
    v7 = a5 + 3;
LABEL_10:
    v9 = v5;
    for ( i = v5; i <= 2; ++i )
    {
      a5[v9] = 0;
      v7[v9++] = 0;
    }
    goto LABEL_12;
  }
  v6 = 0;
  v7 = a5 + 3;
  v8 = 0;
  do
  {
    ++v8;
    a5[v6] = *(_WORD *)(result + v6 * 2);
    v7[v6] = *(_WORD *)(result + v6 * 2);
    ++v6;
  }
  while ( v8 != v5 );
  if ( v5 <= 2 )
    goto LABEL_10;
LABEL_12:
  v11 = result + a3;
  v12 = result + a3 + a3 * (a4 - 1);
  if ( result + a3 != v12 )
  {
    v13 = 0;
    v14 = result + a3;
    do
    {
      if ( v5 )
      {
        v15 = 0;
        v16 = 0;
        do
        {
          v17 = *(_WORD *)(v14 + v15 * 2);
          ++v16;
          result = v17;
          if ( (__int16)a5[v15] > v17 )
          {
            a5[v15] = v17;
            v17 = *(_WORD *)(v14 + v15 * 2);
            result = v17;
          }
          if ( (__int16)v7[v15] < result )
            v7[v15] = v17;
          ++v15;
        }
        while ( v16 != v5 );
      }
      v13 += a3;
      v14 = v11 + v13;
    }
    while ( v12 != v11 + v13 );
  }
  return result;
}


// ===== 6a459c glitch::core::computeBoundingBox<ushort>(ushort const*,uint,uint,uint,glitch::core::aabbox3d<ushort> &) =====
int __fastcall glitch::core::computeBoundingBox<unsigned short>(int result, unsigned int a2, int a3, int a4, _WORD *a5)
{
  int v5; // r12
  _WORD *v6; // r7
  int v7; // r4
  int v8; // r12
  unsigned int i; // r4
  int v10; // r9
  int v11; // r10
  int v12; // r8
  int v13; // r3
  int v14; // r4
  unsigned int v15; // r12

  if ( !a4 )
  {
    a5[2] = 0;
    a5[3] = 0;
    a5[4] = 0;
    a5[5] = 0;
    *a5 = 0;
    a5[1] = 0;
    return result;
  }
  if ( a2 >= 3 )
    a2 = 3;
  if ( !a2 )
  {
    v6 = a5 + 3;
LABEL_9:
    v8 = a2;
    for ( i = a2; i <= 2; ++i )
    {
      a5[v8] = 0;
      v6[v8++] = 0;
    }
    goto LABEL_11;
  }
  v5 = 0;
  v6 = a5 + 3;
  v7 = 0;
  do
  {
    ++v7;
    a5[v5] = *(_WORD *)(result + v5 * 2);
    v6[v5] = *(_WORD *)(result + v5 * 2);
    ++v5;
  }
  while ( v7 != a2 );
  if ( a2 <= 2 )
    goto LABEL_9;
LABEL_11:
  result += a3;
  v10 = result + a3 * (a4 - 1);
  if ( result != v10 )
  {
    v11 = 0;
    v12 = result;
    do
    {
      if ( a2 )
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = *(unsigned __int16 *)(v12 + v13 * 2);
          ++v14;
          if ( (unsigned __int16)a5[v13] > v15 )
          {
            a5[v13] = v15;
            v15 = *(unsigned __int16 *)(v12 + v13 * 2);
          }
          if ( (unsigned __int16)v6[v13] < v15 )
            v6[v13] = v15;
          ++v13;
        }
        while ( v14 != a2 );
      }
      v11 += a3;
      v12 = result + v11;
    }
    while ( v10 != result + v11 );
  }
  return result;
}


// ===== 6a46ac glitch::core::computeBoundingBox<int>(int const*,uint,uint,uint,glitch::core::aabbox3d<int> &) =====
int __fastcall glitch::core::computeBoundingBox<int>(int result, unsigned int a2, int a3, int a4, _DWORD *a5)
{
  int v5; // r12
  _DWORD *v6; // r7
  int v7; // r4
  int v8; // r12
  unsigned int i; // r4
  int v10; // r9
  int v11; // r10
  int v12; // r8
  int v13; // r3
  int v14; // r4
  int v15; // r12

  if ( !a4 )
  {
    a5[2] = 0;
    a5[3] = 0;
    a5[4] = 0;
    a5[5] = 0;
    *a5 = 0;
    a5[1] = 0;
    return result;
  }
  if ( a2 >= 3 )
    a2 = 3;
  if ( !a2 )
  {
    v6 = a5 + 3;
LABEL_9:
    v8 = a2;
    for ( i = a2; i <= 2; ++i )
    {
      a5[v8] = 0;
      v6[v8++] = 0;
    }
    goto LABEL_11;
  }
  v5 = 0;
  v6 = a5 + 3;
  v7 = 0;
  do
  {
    ++v7;
    a5[v5] = *(_DWORD *)(result + v5 * 4);
    v6[v5] = *(_DWORD *)(result + v5 * 4);
    ++v5;
  }
  while ( v7 != a2 );
  if ( a2 <= 2 )
    goto LABEL_9;
LABEL_11:
  result += a3;
  v10 = result + a3 * (a4 - 1);
  if ( result != v10 )
  {
    v11 = 0;
    v12 = result;
    do
    {
      if ( a2 )
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = *(_DWORD *)(v12 + v13 * 4);
          ++v14;
          if ( v15 < a5[v13] )
          {
            a5[v13] = v15;
            v15 = *(_DWORD *)(v12 + v13 * 4);
          }
          if ( v6[v13] < v15 )
            v6[v13] = v15;
          ++v13;
        }
        while ( v14 != a2 );
      }
      v11 += a3;
      v12 = result + v11;
    }
    while ( v10 != result + v11 );
  }
  return result;
}


// ===== 6a47bc glitch::core::computeBoundingBox<uint>(uint const*,uint,uint,uint,glitch::core::aabbox3d<uint> &) =====
int __fastcall glitch::core::computeBoundingBox<unsigned int>(int result, unsigned int a2, int a3, int a4, _DWORD *a5)
{
  int v5; // r12
  _DWORD *v6; // r7
  int v7; // r4
  int v8; // r12
  unsigned int i; // r4
  int v10; // r9
  int v11; // r10
  int v12; // r8
  int v13; // r3
  int v14; // r4
  unsigned int v15; // r12

  if ( !a4 )
  {
    a5[2] = 0;
    a5[3] = 0;
    a5[4] = 0;
    a5[5] = 0;
    *a5 = 0;
    a5[1] = 0;
    return result;
  }
  if ( a2 >= 3 )
    a2 = 3;
  if ( !a2 )
  {
    v6 = a5 + 3;
LABEL_9:
    v8 = a2;
    for ( i = a2; i <= 2; ++i )
    {
      a5[v8] = 0;
      v6[v8++] = 0;
    }
    goto LABEL_11;
  }
  v5 = 0;
  v6 = a5 + 3;
  v7 = 0;
  do
  {
    ++v7;
    a5[v5] = *(_DWORD *)(result + v5 * 4);
    v6[v5] = *(_DWORD *)(result + v5 * 4);
    ++v5;
  }
  while ( v7 != a2 );
  if ( a2 <= 2 )
    goto LABEL_9;
LABEL_11:
  result += a3;
  v10 = result + a3 * (a4 - 1);
  if ( result != v10 )
  {
    v11 = 0;
    v12 = result;
    do
    {
      if ( a2 )
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = *(_DWORD *)(v12 + v13 * 4);
          ++v14;
          if ( v15 < a5[v13] )
          {
            a5[v13] = v15;
            v15 = *(_DWORD *)(v12 + v13 * 4);
          }
          if ( v6[v13] < v15 )
            v6[v13] = v15;
          ++v13;
        }
        while ( v14 != a2 );
      }
      v11 += a3;
      v12 = result + v11;
    }
    while ( v10 != result + v11 );
  }
  return result;
}


// ===== 6a48cc glitch::core::computeBoundingBox(void const*,glitch::video::E_VERTEX_ATTRIBUTE_VALUE_TYPE,uint,uint,uint,glitch::core::aabbox3d<float> &) =====
float __fastcall glitch::core::computeBoundingBox(float result, int a2, unsigned int a3, int a4, int a5, int a6)
{
  float v6; // r5
  float v7; // r0
  float v8; // r5
  float v9; // r5
  float v10; // r0
  float v11; // r5
  float v12; // r5
  float v13; // r0
  float v14; // r5
  float v15; // r5
  float v16; // r0
  float v17; // r5
  float v18; // r5
  float v19; // r0
  float v20; // r5
  float v21; // r5
  float v22; // r0
  float v23; // r5
  int v24; // [sp+8h] [bp-18h] BYREF
  int v25; // [sp+Ch] [bp-14h]
  int v26; // [sp+10h] [bp-10h]
  int v27; // [sp+14h] [bp-Ch]
  int v28; // [sp+18h] [bp-8h]
  int v29; // [sp+1Ch] [bp-4h]

  switch ( a2 )
  {
    case 0:
      v24 = 0x1FFFFFF;
      LOWORD(v25) = 257;
      glitch::core::computeBoundingBox<signed char>(SLODWORD(result), a3, a4, a5, &v24);
      v6 = (float)SBYTE1(v24);
      v7 = (float)SBYTE2(v24);
      *(float *)a6 = (float)(char)v24;
      *(float *)(a6 + 4) = v6;
      *(float *)(a6 + 8) = v7;
      v8 = (float)(char)v25;
      result = (float)SBYTE1(v25);
      *(float *)(a6 + 12) = (float)SHIBYTE(v24);
      *(float *)(a6 + 20) = result;
      *(float *)(a6 + 16) = v8;
      break;
    case 1:
      v24 = 0x1FFFFFF;
      LOWORD(v25) = 257;
      glitch::core::computeBoundingBox<unsigned char>(SLODWORD(result), a3, a4, a5, &v24);
      v9 = (float)BYTE1(v24);
      v10 = (float)BYTE2(v24);
      *(float *)a6 = (float)(unsigned __int8)v24;
      *(float *)(a6 + 4) = v9;
      *(float *)(a6 + 8) = v10;
      v11 = (float)(unsigned __int8)v25;
      result = (float)BYTE1(v25);
      *(float *)(a6 + 12) = (float)HIBYTE(v24);
      *(float *)(a6 + 20) = result;
      *(float *)(a6 + 16) = v11;
      break;
    case 2:
      v24 = -1;
      v25 = 0x1FFFF;
      v26 = 65537;
      glitch::core::computeBoundingBox<short>(SLODWORD(result), a3, a4, a5, &v24);
      v12 = (float)SHIWORD(v24);
      v13 = (float)(__int16)v25;
      *(float *)a6 = (float)(__int16)v24;
      *(float *)(a6 + 4) = v12;
      *(float *)(a6 + 8) = v13;
      v14 = (float)(__int16)v26;
      result = (float)SHIWORD(v26);
      *(float *)(a6 + 12) = (float)SHIWORD(v25);
      *(float *)(a6 + 20) = result;
      *(float *)(a6 + 16) = v14;
      break;
    case 3:
      v24 = -1;
      v25 = 0x1FFFF;
      v26 = 65537;
      glitch::core::computeBoundingBox<unsigned short>(SLODWORD(result), a3, a4, a5, &v24);
      v15 = (float)HIWORD(v24);
      v16 = (float)(unsigned __int16)v25;
      *(float *)a6 = (float)(unsigned __int16)v24;
      *(float *)(a6 + 4) = v15;
      *(float *)(a6 + 8) = v16;
      v17 = (float)(unsigned __int16)v26;
      result = (float)HIWORD(v26);
      *(float *)(a6 + 12) = (float)HIWORD(v25);
      *(float *)(a6 + 20) = result;
      *(float *)(a6 + 16) = v17;
      break;
    case 4:
      v26 = -1;
      v29 = 1;
      v24 = -1;
      v25 = -1;
      v27 = 1;
      v28 = 1;
      glitch::core::computeBoundingBox<int>(SLODWORD(result), a3, a4, a5, &v24);
      v18 = (float)v25;
      v19 = (float)v26;
      *(float *)a6 = (float)v24;
      *(float *)(a6 + 4) = v18;
      *(float *)(a6 + 8) = v19;
      v20 = (float)v28;
      result = (float)v29;
      *(float *)(a6 + 12) = (float)v27;
      *(float *)(a6 + 20) = result;
      *(float *)(a6 + 16) = v20;
      break;
    case 5:
      v26 = -1;
      v29 = 1;
      v24 = -1;
      v25 = -1;
      v27 = 1;
      v28 = 1;
      glitch::core::computeBoundingBox<unsigned int>(SLODWORD(result), a3, a4, a5, &v24);
      v21 = (float)(unsigned int)v25;
      v22 = (float)(unsigned int)v26;
      *(float *)a6 = (float)(unsigned int)v24;
      *(float *)(a6 + 4) = v21;
      *(float *)(a6 + 8) = v22;
      v23 = (float)(unsigned int)v28;
      result = (float)(unsigned int)v29;
      *(float *)(a6 + 12) = (float)(unsigned int)v27;
      *(float *)(a6 + 20) = result;
      *(float *)(a6 + 16) = v23;
      break;
    case 6:
      result = COERCE_FLOAT(glitch::core::computeBoundingBox<float>(SLODWORD(result), a3, a4, a5, (_DWORD *)a6));
      break;
    default:
      return result;
  }
  return result;
}


// ===== 6a4c98 `global constructor keyed to'.._source_glitch_core_GeometryUtil.cpp =====
void `global constructor keyed to'.._source_glitch_core_GeometryUtil.cpp()
{
  dword_9F7658 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7654 = 1056964608;
}


// ===== 6a4cb8 glitch::core::detail::SSharedStringHeapEntry::commit(void) =====
char *__fastcall glitch::core::detail::SSharedStringHeapEntry::commit(const char ***this)
{
  const char *v2; // r4
  size_t v3; // r0
  void *v4; // r0

  v2 = **this;
  v3 = LC_API_STRLEN_0(v2) + 5;
  if ( v3 < 8 )
    v3 = 8;
  v4 = operator new[](v3, 0);
  *this = (const char **)v4;
  *(_DWORD *)v4 = 0;
  return LC_API_STRCPY_0((char *)v4 + 4, v2);
}


// ===== 6a4d04 boost::unordered_detail::hash_table_unique_keys<glitch::core::detail::SSharedStringHeapEntry,glitch::core::detail::SSharedStringHeapEntry,glitch::core::detail::`anonymous namespace'::CSharedStringHeap::SHash,glitch::core::detail::`anonymous namespace'::CSharedStringHeap::SEqual,glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry,(glitch::memory::E_MEMORY_HINT)0>>::find_iterator(boost::unordered_detail::hash_table_data_unique_keys<glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry,(glitch::memory::E_MEMORY_HINT)0>>::bucket *,glitch::core::detail::SSharedStringHeapEntry const&) =====
_DWORD *__fastcall boost::unordered_detail::hash_table_unique_keys<glitch::core::detail::SSharedStringHeapEntry,glitch::core::detail::SSharedStringHeapEntry,glitch::core::detail::`anonymous namespace'::CSharedStringHeap::SHash,glitch::core::detail::`anonymous namespace'::CSharedStringHeap::SEqual,glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry,(glitch::memory::E_MEMORY_HINT)0>>::find_iterator(
        int a1,
        _DWORD **a2,
        const char ***a3)
{
  _DWORD *v3; // r4
  const char **v4; // r7
  int v5; // r5
  const char *v6; // r6
  int v7; // r3
  const char *v8; // r0
  const char *v9; // r1
  _BOOL4 i; // r0

  v3 = *a2;
  if ( *a2 )
  {
    v4 = *a3;
    v6 = (const char *)(*a3 + 1);
    v5 = *(_DWORD *)v6;
    if ( *(_DWORD *)v6 )
      goto LABEL_9;
LABEL_3:
    v7 = *(v3 - 1);
    v8 = *v4;
    v9 = (const char *)(v7 + 4);
    if ( !*(_DWORD *)(v7 + 4) )
LABEL_10:
      v9 = *(const char **)v7;
    for ( i = LC_API_STRCMP_0(v8, v9) == 0; !i; i = v4 == (const char **)v7 )
    {
      v3 = (_DWORD *)*v3;
      if ( !v3 )
        break;
      if ( !v5 )
        goto LABEL_3;
LABEL_9:
      v7 = *(v3 - 1);
      v8 = v6;
      if ( !*(_DWORD *)(v7 + 4) )
        goto LABEL_10;
    }
  }
  return v3;
}


// ===== 6a4d9c glitch::core::detail::SSharedStringHeapEntry::SData::release(glitch::core::detail::SSharedStringHeapEntry::SData*) =====
void __fastcall glitch::core::detail::SSharedStringHeapEntry::SData::release(_DWORD *a1)
{
  int v1; // r5
  _DWORD *v3; // r8
  const char *v4; // r3
  int v5; // r7
  int v6; // r10
  unsigned int v7; // r0
  int v8; // r1
  int v9; // t1
  _DWORD *v10; // r4
  _DWORD *v11; // r10
  _DWORD **v12; // r7
  _DWORD *v13; // r3
  const char *v14; // r0
  const char *v15; // r1
  _BOOL4 i; // r0
  _DWORD *v17; // r0

  v1 = a1[1];
  v3 = (_DWORD *)glitch::core::detail::`anonymous namespace'::SharedStringHeap;
  if ( v1 )
    v4 = (const char *)(a1 + 1);
  else
    v4 = (const char *)*a1;
  v5 = *(_DWORD *)(glitch::core::detail::`anonymous namespace'::SharedStringHeap + 20);
  v6 = *(unsigned __int8 *)v4;
  if ( *v4 )
  {
    v7 = 0;
    do
    {
      v8 = (v7 << 6) + (char)v6;
      v9 = *(unsigned __int8 *)++v4;
      LOBYTE(v6) = v9;
      v7 ^= v8 - 1640531527 + (v7 >> 2);
    }
    while ( v9 );
    v6 = 4 * (v7 % *(_DWORD *)(glitch::core::detail::`anonymous namespace'::SharedStringHeap + 24));
  }
  v10 = *(_DWORD **)(v5 + v6);
  v11 = (_DWORD *)(v5 + v6);
  v12 = (_DWORD **)v11;
  if ( v10 )
  {
    if ( v1 )
      goto LABEL_19;
LABEL_11:
    v13 = (_DWORD *)*(v10 - 1);
    v14 = (const char *)*a1;
    v15 = (const char *)(v13 + 1);
    if ( !v13[1] )
LABEL_20:
      v15 = (const char *)*v13;
    for ( i = LC_API_STRCMP_0(v14, v15) == 0; !i; i = a1 == v13 )
    {
      v12 = (_DWORD **)v10;
      v10 = (_DWORD *)*v10;
      if ( !v10 )
        break;
      if ( !v1 )
        goto LABEL_11;
LABEL_19:
      v13 = (_DWORD *)*(v10 - 1);
      v14 = (const char *)(a1 + 1);
      if ( !v13[1] )
        goto LABEL_20;
    }
  }
  v17 = *v12;
  if ( *v12 )
  {
    *v12 = (_DWORD *)*v17;
    --v3[8];
    GlitchFree(v17 - 1);
    if ( v11 == (_DWORD *)v3[7] )
    {
      if ( v3[8] )
      {
        for ( ; !*v11; v3[7] = v11 )
          ++v11;
      }
      else
      {
        v3[7] = v3[5] + 4 * v3[6];
      }
    }
  }
  operator delete[](a1);
}


// ===== 6a4f18 boost::unordered_detail::hash_table_data_unique_keys<glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry,(glitch::memory::E_MEMORY_HINT)0>>::delete_buckets(void) =====
void __fastcall boost::unordered_detail::hash_table_data_unique_keys<glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry,(glitch::memory::E_MEMORY_HINT)0>>::delete_buckets(
        _DWORD *a1)
{
  char *v2; // r0
  char *v3; // r5
  char *v4; // r6
  _DWORD *v5; // r4
  _DWORD *v6; // r0

  v2 = (char *)a1[1];
  if ( v2 )
  {
    v3 = (char *)a1[3];
    v4 = &v2[4 * a1[2]];
    if ( v3 != v4 )
    {
      do
      {
        v5 = *(_DWORD **)v3;
        *(_DWORD *)v3 = 0;
        while ( v5 )
        {
          v6 = v5 - 1;
          v5 = (_DWORD *)*v5;
          GlitchFree(v6);
        }
        v3 += 4;
      }
      while ( v3 != v4 );
      v2 = (char *)a1[1];
    }
    GlitchFree(v2);
  }
}


// ===== 6a4f84 boost::unordered_detail::hash_table_data_unique_keys<glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry,(glitch::memory::E_MEMORY_HINT)0>>::create_buckets(void) =====
_DWORD *__fastcall boost::unordered_detail::hash_table_data_unique_keys<glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry,(glitch::memory::E_MEMORY_HINT)0>>::create_buckets(
        _DWORD *a1)
{
  int v1; // r5
  _DWORD *result; // r0
  _DWORD *v4; // r6
  _DWORD *v5; // r3
  _DWORD *v6; // r3

  v1 = a1[2];
  result = GlitchAlloc(4 * (v1 + 1), 0);
  v4 = &result[v1 + 1];
  if ( result != v4 )
  {
    v5 = result;
    do
      *v5++ = 0;
    while ( v4 != v5 );
  }
  v6 = &result[v1];
  a1[3] = v6;
  *v6 = v6;
  a1[1] = result;
  return result;
}


// ===== 6a4fd8 boost::unordered_detail::hash_table_data_unique_keys<glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry,(glitch::memory::E_MEMORY_HINT)0>>::hash_table_data_unique_keys(boost::unordered_detail::hash_table_data_unique_keys<glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry,(glitch::memory::E_MEMORY_HINT)0>> const&,uint) =====
_DWORD *__fastcall boost::unordered_detail::hash_table_data_unique_keys<glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry,(glitch::memory::E_MEMORY_HINT)0>>::hash_table_data_unique_keys(
        _DWORD *a1,
        int a2,
        unsigned int a3)
{
  char *v3; // r12
  int v5; // r5
  int v6; // r0
  bool v7; // cc
  int v8; // r2

  v3 = (char *)&boost::unordered_detail::prime_list_template<unsigned int>::value;
  a1[1] = 0;
  v5 = 40;
  do
  {
    v6 = v5 >> 1;
    while ( a3 <= *(_DWORD *)&v3[4 * v6] )
    {
      v7 = v6 <= 0;
      v5 = v6;
      v6 >>= 1;
      if ( v7 )
        goto LABEL_6;
    }
    v5 = v5 - 1 - v6;
    v3 += 4 * v6 + 4;
  }
  while ( v5 > 0 );
LABEL_6:
  if ( v3 == "Shared string objects not properly cleaned up" )
    v3 = (char *)&unk_8EB05C;
  v8 = *(_DWORD *)v3;
  a1[4] = 0;
  a1[2] = v8;
  a1[3] = 0;
  boost::unordered_detail::hash_table_data_unique_keys<glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry,(glitch::memory::E_MEMORY_HINT)0>>::create_buckets(a1);
  return a1;
}


// ===== 6a5074 glitch::core::detail::SSharedStringHeapEntry::SData::get(char const*,bool) =====
int __fastcall glitch::core::detail::SSharedStringHeapEntry::SData::get(
        glitch::core::detail::SSharedStringHeapEntry::SData *this,
        unsigned int a2,
        bool a3)
{
  int v3; // r5
  unsigned int v5; // r4
  char v6; // r2
  int v7; // r1
  int v8; // t1
  _DWORD **v9; // r8
  _DWORD *v10; // r0
  _DWORD *v11; // r0
  _DWORD *v12; // r7
  unsigned int v13; // r3
  unsigned int v14; // r2
  unsigned int v15; // r3
  unsigned int v16; // r0
  double v17; // r8
  unsigned int v18; // r0
  unsigned int v19; // lr
  int v20; // r0
  char *v21; // r2
  int v22; // r3
  bool v23; // cc
  unsigned int v24; // r2
  int v25; // r3
  _DWORD **v26; // r10
  _DWORD **v27; // r9
  _DWORD *i; // r8
  unsigned __int8 **v29; // r1
  char *v30; // r1
  char v31; // r2
  int v32; // r1
  unsigned int v33; // r0
  int v34; // r12
  int v35; // t1
  int v36; // r3
  int v37; // r1
  unsigned int v38; // r2
  unsigned int v39; // r3
  unsigned int v40; // r2
  unsigned int v41; // r3
  int v42; // r2
  int v43; // r3
  float v44; // r0
  double v45; // r8
  unsigned int v46; // r0
  unsigned int v47; // r2
  char v48; // r2
  int v49; // r12
  int v50; // t1
  _DWORD *iterator; // r0
  int v52; // r3
  int v53; // r2
  int v54; // [sp+4h] [bp-2Ch] BYREF
  int v55; // [sp+8h] [bp-28h]
  unsigned int v56; // [sp+Ch] [bp-24h]
  unsigned int v57; // [sp+10h] [bp-20h]
  int v58; // [sp+14h] [bp-1Ch]
  int v59; // [sp+18h] [bp-18h]
  int v60; // [sp+1Ch] [bp-14h]
  _DWORD v61[2]; // [sp+20h] [bp-10h] BYREF
  const char **v62; // [sp+28h] [bp-8h] BYREF
  const char **v63; // [sp+2Ch] [bp-4h] BYREF

  v3 = glitch::core::detail::`anonymous namespace'::SharedStringHeap;
  if ( !this || !*(_BYTE *)this )
    return 0;
  v5 = 0;
  v61[0] = this;
  v61[1] = 0;
  if ( !a2 )
  {
    v63 = (const char **)v61;
    v48 = *(_BYTE *)this;
    if ( *(_BYTE *)this )
    {
      do
      {
        v49 = (a2 << 6) + v48;
        v50 = *((unsigned __int8 *)this + 1);
        this = (glitch::core::detail::SSharedStringHeapEntry::SData *)((char *)this + 1);
        v48 = v50;
        a2 ^= v49 - 1640531527 + (a2 >> 2);
      }
      while ( v50 );
    }
    else
    {
      a2 = *(unsigned __int8 *)this;
    }
    iterator = boost::unordered_detail::hash_table_unique_keys<glitch::core::detail::SSharedStringHeapEntry,glitch::core::detail::SSharedStringHeapEntry,glitch::core::detail::`anonymous namespace'::CSharedStringHeap::SHash,glitch::core::detail::`anonymous namespace'::CSharedStringHeap::SEqual,glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry,(glitch::memory::E_MEMORY_HINT)0>>::find_iterator(
                 glitch::core::detail::`anonymous namespace'::SharedStringHeap,
                 (_DWORD **)(*(_DWORD *)(glitch::core::detail::`anonymous namespace'::SharedStringHeap + 20)
                           + 4 * (a2 % *(_DWORD *)(glitch::core::detail::`anonymous namespace'::SharedStringHeap + 24))),
                 &v63);
    if ( iterator )
    {
      v53 = *(_DWORD *)(v3 + 24);
      v52 = *(_DWORD *)(v3 + 20);
    }
    else
    {
      v52 = *(_DWORD *)(v3 + 20);
      v53 = *(_DWORD *)(v3 + 24);
    }
    if ( !iterator )
      iterator = *(_DWORD **)(v52 + 4 * v53);
    if ( *(_DWORD **)(v52 + 4 * v53) != iterator )
    {
      if ( iterator )
        --iterator;
      return *iterator;
    }
    return 0;
  }
  v62 = (const char **)v61;
  v6 = *(_BYTE *)this;
  if ( *(_BYTE *)this )
  {
    do
    {
      v7 = (v5 << 6) + v6;
      v8 = *((unsigned __int8 *)this + 1);
      this = (glitch::core::detail::SSharedStringHeapEntry::SData *)((char *)this + 1);
      v6 = v8;
      v5 ^= v7 - 1640531527 + (v5 >> 2);
    }
    while ( v8 );
  }
  else
  {
    v5 = *(unsigned __int8 *)this;
  }
  v9 = (_DWORD **)(*(_DWORD *)(glitch::core::detail::`anonymous namespace'::SharedStringHeap + 20)
                 + 4 * (v5 % *(_DWORD *)(glitch::core::detail::`anonymous namespace'::SharedStringHeap + 24)));
  v10 = boost::unordered_detail::hash_table_unique_keys<glitch::core::detail::SSharedStringHeapEntry,glitch::core::detail::SSharedStringHeapEntry,glitch::core::detail::`anonymous namespace'::CSharedStringHeap::SHash,glitch::core::detail::`anonymous namespace'::CSharedStringHeap::SEqual,glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry,(glitch::memory::E_MEMORY_HINT)0>>::find_iterator(
          glitch::core::detail::`anonymous namespace'::SharedStringHeap,
          v9,
          &v62);
  if ( v10 )
    return *(v10 - 1);
  v11 = GlitchAlloc(8u, 0);
  v59 = 0;
  v60 = 0;
  *v11 = 0;
  v11[1] = 0;
  v12 = v11;
  *v11 = v62;
  v13 = *(_DWORD *)(v3 + 32);
  v14 = v13 + 1;
  if ( v13 + 1 >= *(_DWORD *)(v3 + 12) )
  {
    v15 = v13 + (v13 >> 1);
    if ( v15 < v14 )
      v16 = v14;
    else
      v16 = v15;
    v17 = floor((double)v16 / *(float *)(v3 + 8));
    if ( v17 < 4294967300.0 )
      v18 = (unsigned int)v17;
    else
      v18 = -1;
    v19 = v18 + 1;
    v20 = 40;
    v21 = (char *)&boost::unordered_detail::prime_list_template<unsigned int>::value;
    do
    {
      v22 = v20 >> 1;
      while ( v19 <= *(_DWORD *)&v21[4 * v22] )
      {
        v23 = v22 <= 0;
        v20 = v22;
        v22 >>= 1;
        if ( v23 )
          goto LABEL_22;
      }
      v20 = v20 - 1 - v22;
      v21 += 4 * v22 + 4;
    }
    while ( v20 > 0 );
LABEL_22:
    if ( v21 == "Shared string objects not properly cleaned up" )
      v21 = (char *)&unk_8EB05C;
    v24 = *(_DWORD *)v21;
    if ( v24 != *(_DWORD *)(v3 + 24) )
    {
      boost::unordered_detail::hash_table_data_unique_keys<glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry,(glitch::memory::E_MEMORY_HINT)0>>::hash_table_data_unique_keys(
        &v54,
        v3 + 16,
        v24);
      v25 = *(_DWORD *)(v3 + 20);
      v26 = *(_DWORD ***)(v3 + 28);
      v27 = (_DWORD **)(v25 + 4 * *(_DWORD *)(v3 + 24));
      if ( v27 != v26 )
      {
        do
        {
          for ( i = *v26; *v26; i = *v26 )
          {
            v29 = (unsigned __int8 **)*(i - 1);
            if ( v29[1] )
              v30 = (char *)(v29 + 1);
            else
              v30 = (char *)*v29;
            v31 = *v30;
            if ( *v30 )
            {
              v33 = 0;
              do
              {
                v34 = (v33 << 6) + v31;
                v35 = (unsigned __int8)*++v30;
                v31 = v35;
                v33 ^= v34 - 1640531527 + (v33 >> 2);
              }
              while ( v35 );
              v32 = 4 * (v33 % v56);
            }
            else
            {
              v32 = (unsigned __int8)*v30;
            }
            v36 = v55;
            *v26 = (_DWORD *)*i;
            --*(_DWORD *)(v3 + 32);
            *i = *(_DWORD *)(v36 + v32);
            *(_DWORD *)(v36 + v32) = i;
            if ( v36 + v32 < v57 )
              v57 = v36 + v32;
            ++v58;
          }
          v26 = (_DWORD **)(*(_DWORD *)(v3 + 28) + 4);
          *(_DWORD *)(v3 + 28) = v26;
        }
        while ( v27 != v26 );
        v25 = *(_DWORD *)(v3 + 20);
      }
      v37 = v55;
      v55 = v25;
      v38 = *(_DWORD *)(v3 + 24);
      *(_DWORD *)(v3 + 20) = v37;
      v39 = v56;
      v56 = v38;
      v40 = *(_DWORD *)(v3 + 28);
      *(_DWORD *)(v3 + 24) = v39;
      v41 = v57;
      v57 = v40;
      v42 = *(_DWORD *)(v3 + 32);
      *(_DWORD *)(v3 + 28) = v41;
      v43 = v58;
      v58 = v42;
      v44 = *(float *)(v3 + 8);
      *(_DWORD *)(v3 + 32) = v43;
      v45 = ceil(v44 * (double)*(unsigned int *)(v3 + 24));
      if ( v45 < 4294967300.0 )
        v46 = (unsigned int)v45;
      else
        v46 = -1;
      *(_DWORD *)(v3 + 12) = v46;
      boost::unordered_detail::hash_table_data_unique_keys<glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry,(glitch::memory::E_MEMORY_HINT)0>>::delete_buckets(&v54);
    }
    v9 = (_DWORD **)(*(_DWORD *)(v3 + 20) + 4 * (v5 % *(_DWORD *)(v3 + 24)));
  }
  v12[1] = *v9;
  *v9 = v12 + 1;
  v47 = *(_DWORD *)(v3 + 28);
  ++*(_DWORD *)(v3 + 32);
  if ( (unsigned int)v9 < v47 )
    *(_DWORD *)(v3 + 28) = v9;
  glitch::core::detail::SSharedStringHeapEntry::commit((const char ***)v12);
  return *v12;
}


// ===== 6a54d0 glitch::core::detail::registerSharedStringHeapInit(void) =====
int __fastcall glitch::core::detail::registerSharedStringHeapInit(glitch::core::detail *this, void (*a2)(bool))
{
  if ( !glitch::core::detail::registerSharedStringHeapInit(void)::isRegistered )
  {
    glitch::registerInitStep((glitch *)glitch::core::detail::`anonymous namespace'::initSharedStringHeap, a2);
    glitch::core::detail::registerSharedStringHeapInit(void)::isRegistered = 1;
  }
  return 0;
}


// ===== 6a550c `global constructor keyed to'.._source_glitch_core_detail_SSharedStringHeapEntry.cpp =====
int __fastcall `global constructor keyed to'.._source_glitch_core_detail_SSharedStringHeapEntry.cpp(
        glitch::core::detail *a1,
        void (*a2)(bool))
{
  int result; // r0

  dword_9F766C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7668 = 1056964608;
  result = glitch::core::detail::registerSharedStringHeapInit(a1, a2);
  glitch::core::detail::`anonymous namespace'::initSharedStringHeapDummy = result;
  return result;
}


// ===== 6a5538 glitch::core::detail::`anonymous namespace'::initSharedStringHeap(bool) =====
void __fastcall glitch::core::detail::`anonymous namespace'::initSharedStringHeap(
        glitch::core::detail::_anonymous_namespace_ *this,
        bool a2)
{
  _DWORD *v2; // r4
  _DWORD *v3; // r0
  char *v4; // r2
  int v5; // r4
  int v6; // r12
  _DWORD *v7; // r0
  int v8; // r3
  bool v9; // cc
  int v10; // r2
  double v11; // r6
  unsigned int v12; // r0

  if ( this )
  {
    v3 = operator new(0x24u, 0);
    v3[2] = 1065353216;
    v4 = (char *)&boost::unordered_detail::prime_list_template<unsigned int>::value;
    v5 = (int)v3;
    v3[5] = 0;
    v3[1] = 0;
    v6 = 40;
    v7 = v3 + 4;
    do
    {
      v8 = v6 >> 1;
      while ( *(_DWORD *)&v4[4 * v8] > 0xAu )
      {
        v9 = v8 <= 0;
        v6 = v8;
        v8 >>= 1;
        if ( v9 )
          goto LABEL_12;
      }
      v6 = v6 - 1 - v8;
      v4 += 4 * v8 + 4;
    }
    while ( v6 > 0 );
LABEL_12:
    if ( v4 == "Shared string objects not properly cleaned up" )
      v4 = (char *)&unk_8EB05C;
    v10 = *(_DWORD *)v4;
    *(_DWORD *)(v5 + 32) = 0;
    *(_DWORD *)(v5 + 24) = v10;
    *(_DWORD *)(v5 + 28) = 0;
    boost::unordered_detail::hash_table_data_unique_keys<glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry,(glitch::memory::E_MEMORY_HINT)0>>::create_buckets(v7);
    v11 = ceil(*(float *)(v5 + 8) * (double)*(unsigned int *)(v5 + 24));
    if ( v11 < 4294967300.0 )
      v12 = (unsigned int)v11;
    else
      v12 = -1;
    *(_DWORD *)(v5 + 12) = v12;
    glitch::core::detail::`anonymous namespace'::SharedStringHeap = v5;
  }
  else
  {
    v2 = (_DWORD *)glitch::core::detail::`anonymous namespace'::SharedStringHeap;
    if ( glitch::core::detail::`anonymous namespace'::SharedStringHeap )
    {
      if ( *(_DWORD *)(glitch::core::detail::`anonymous namespace'::SharedStringHeap + 32) )
        glitch::os::Printer::log((int)"Shared string objects not properly cleaned up", 3);
      boost::unordered_detail::hash_table_data_unique_keys<glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry,(glitch::memory::E_MEMORY_HINT)0>>::delete_buckets(v2 + 4);
      LC_API_FREE_0(v2);
    }
    glitch::core::detail::`anonymous namespace'::SharedStringHeap = 0;
  }
}


// ===== 6a56c8 `global constructor keyed to'.._source_glitch_gui_BuildInFont.cpp =====
void `global constructor keyed to'.._source_glitch_gui_BuildInFont.cpp()
{
  dword_9F767C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7678 = 1056964608;
}


// ===== 6a56e8 glitch::gui::IGUIElementFactory::~IGUIElementFactory() =====
void __fastcall glitch::gui::IGUIElementFactory::~IGUIElementFactory(glitch::gui::IGUIElementFactory *this)
{
  ;
}


// ===== 6a56ec glitch::gui::CDefaultGUIElementFactory::CDefaultGUIElementFactory(glitch::gui::IGUIEnvironment *) =====
_DWORD *__fastcall glitch::gui::CDefaultGUIElementFactory::CDefaultGUIElementFactory(
        _DWORD *this,
        glitch::gui::IGUIEnvironment *a2)
{
  *(this + 2) = a2;
  *(this + 1) = 1;
  *this = off_9859F8;
  return this;
}


// ===== 6a571c glitch::gui::CDefaultGUIElementFactory::CDefaultGUIElementFactory(glitch::gui::IGUIEnvironment *) =====
_DWORD *__fastcall glitch::gui::CDefaultGUIElementFactory::CDefaultGUIElementFactory(
        _DWORD *this,
        glitch::gui::IGUIEnvironment *a2)
{
  *(this + 2) = a2;
  *(this + 1) = 1;
  *this = off_9859F8;
  return this;
}


// ===== 6a574c glitch::gui::CDefaultGUIElementFactory::addGUIElement(glitch::gui::EGUI_ELEMENT_TYPE,glitch::gui::IGUIElement *) =====
int __fastcall glitch::gui::CDefaultGUIElementFactory::addGUIElement(int a1, int a2, int a3)
{
  int v3; // r0
  int (__fastcall *v4)(int, _DWORD *, _DWORD, _DWORD, int, int); // r12
  int v5; // r4
  int v7; // r0
  int (__fastcall *v8)(int, _DWORD *, int, int, _DWORD); // r12
  int v9; // r0
  int (__fastcall *v10)(int, _DWORD *, int, _DWORD, int, int); // r12
  int v11; // r0
  int (__fastcall *v12)(int, _DWORD *, int, int); // r12
  int v13; // r0
  int (__fastcall *v14)(int, _DWORD, _DWORD *, _DWORD, int, int, int, _DWORD); // r12
  int v15; // r0
  int (__fastcall *v16)(int, const char *, _DWORD *, int, int); // r12
  int v17; // r0
  int (__fastcall *v18)(int, _DWORD, _DWORD *, int, int); // r12
  int v19; // r0
  int (__fastcall *v20)(int, _DWORD *, int, int, _DWORD); // r12
  int v21; // r0
  int (__fastcall *v22)(int, _DWORD *, int, int, _DWORD); // r12
  int v23; // r0
  int (__fastcall *v24)(int, glitch::IReferenceCounted **, _DWORD *, int, int, int, _DWORD); // r12
  int v25; // r0
  int (__fastcall *v26)(int, _DWORD, _DWORD *, int, int, int); // r12
  int v27; // r0
  int (__fastcall *v28)(int, _DWORD *, int, int); // r12
  int v29; // r0
  int (__fastcall *v30)(int, _DWORD *, int, int); // r12
  int v31; // r0
  int (__fastcall *v32)(int, _DWORD, _DWORD *, int, int, _DWORD); // r12
  int v33; // r0
  int (__fastcall *v34)(int, _DWORD *, int, int, _DWORD, _DWORD); // r12
  _DWORD v35[4]; // [sp+14h] [bp-ECh] BYREF
  _DWORD v36[4]; // [sp+24h] [bp-DCh] BYREF
  _DWORD v37[4]; // [sp+34h] [bp-CCh] BYREF
  _DWORD v38[4]; // [sp+44h] [bp-BCh] BYREF
  _DWORD v39[4]; // [sp+54h] [bp-ACh] BYREF
  _DWORD v40[4]; // [sp+64h] [bp-9Ch] BYREF
  _DWORD v41[4]; // [sp+74h] [bp-8Ch] BYREF
  _DWORD v42[4]; // [sp+84h] [bp-7Ch] BYREF
  _DWORD v43[4]; // [sp+94h] [bp-6Ch] BYREF
  _DWORD v44[4]; // [sp+A4h] [bp-5Ch] BYREF
  _DWORD v45[4]; // [sp+B4h] [bp-4Ch] BYREF
  _DWORD v46[4]; // [sp+C4h] [bp-3Ch] BYREF
  _DWORD v47[4]; // [sp+D4h] [bp-2Ch] BYREF
  _DWORD v48[4]; // [sp+E4h] [bp-1Ch] BYREF
  _DWORD v49[2]; // [sp+F4h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v50; // [sp+FCh] [bp-4h] BYREF

  switch ( a2 )
  {
    case 0:
      v33 = *(_DWORD *)(a1 + 8);
      v34 = *(int (__fastcall **)(int, _DWORD *, int, int, _DWORD, _DWORD))(*(_DWORD *)v33 + 120);
      v48[0] = 0;
      v48[1] = 0;
      v48[3] = 100;
      v48[2] = 100;
      v5 = v34(v33, v48, a3, -1, 0, 0);
      break;
    case 1:
      v31 = *(_DWORD *)(a1 + 8);
      v32 = *(int (__fastcall **)(int, _DWORD, _DWORD *, int, int, _DWORD))(*(_DWORD *)v31 + 148);
      v47[3] = 100;
      v47[2] = 100;
      v47[0] = 0;
      v47[1] = 0;
      v5 = v32(v31, 0, v47, a3, -1, 0);
      break;
    case 2:
      v29 = *(_DWORD *)(a1 + 8);
      v30 = *(int (__fastcall **)(int, _DWORD *, int, int))(*(_DWORD *)v29 + 204);
      v46[3] = 100;
      v46[2] = 100;
      v46[1] = 0;
      v46[0] = 0;
      v5 = v30(v29, v46, a3, -1);
      break;
    case 3:
      v27 = *(_DWORD *)(a1 + 8);
      v28 = *(int (__fastcall **)(int, _DWORD *, int, int))(*(_DWORD *)v27 + 192);
      v45[3] = 100;
      v45[2] = 100;
      v45[1] = 0;
      v45[0] = 0;
      v5 = v28(v27, v45, a3, -1);
      break;
    case 4:
      v5 = (*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(a1 + 8) + 196))(*(_DWORD *)(a1 + 8), a3, -1);
      break;
    case 5:
      v25 = *(_DWORD *)(a1 + 8);
      v26 = *(int (__fastcall **)(int, _DWORD, _DWORD *, int, int, int))(*(_DWORD *)v25 + 172);
      v44[3] = 100;
      v44[2] = 100;
      v44[0] = 0;
      v44[1] = 0;
      v5 = v26(v25, 0, v44, 1, a3, -1);
      break;
    case 6:
      v5 = (*(int (__fastcall **)(_DWORD, _DWORD, int, int, int))(**(_DWORD **)(a1 + 8) + 160))(
             *(_DWORD *)(a1 + 8),
             0,
             1,
             a3,
             -1);
      break;
    case 7:
      v5 = (*(int (__fastcall **)(_DWORD, _DWORD, int, int, int))(**(_DWORD **)(a1 + 8) + 164))(
             *(_DWORD *)(a1 + 8),
             0,
             1,
             a3,
             -1);
      break;
    case 8:
      v5 = (*(int (__fastcall **)(_DWORD, _DWORD, int, int))(**(_DWORD **)(a1 + 8) + 180))(
             *(_DWORD *)(a1 + 8),
             0,
             a3,
             -1);
      break;
    case 9:
      v23 = *(_DWORD *)(a1 + 8);
      v24 = *(int (__fastcall **)(int, glitch::IReferenceCounted **, _DWORD *, int, int, int, _DWORD))(*(_DWORD *)v23 + 140);
      v50 = nullptr;
      v49[0] = 0;
      v49[1] = 0;
      v5 = v24(v23, &v50, v49, 1, a3, -1, 0);
      if ( v50 )
        glitch::IReferenceCounted::drop(v50);
      break;
    case 10:
      v21 = *(_DWORD *)(a1 + 8);
      v22 = *(int (__fastcall **)(int, _DWORD *, int, int, _DWORD))(*(_DWORD *)v21 + 152);
      v43[0] = 0;
      v43[1] = 0;
      v43[3] = 100;
      v43[2] = 100;
      v5 = v22(v21, v43, a3, -1, 0);
      break;
    case 11:
      v19 = *(_DWORD *)(a1 + 8);
      v20 = *(int (__fastcall **)(int, _DWORD *, int, int, _DWORD))(*(_DWORD *)v19 + 156);
      v42[0] = 0;
      v42[1] = 0;
      v42[3] = 100;
      v42[2] = 100;
      v5 = v20(v19, v42, a3, -1, 0);
      break;
    case 12:
      v5 = (*(int (__fastcall **)(_DWORD, _DWORD, _DWORD, _DWORD, _DWORD, int, int))(**(_DWORD **)(a1 + 8) + 132))(
             *(_DWORD *)(a1 + 8),
             0,
             0,
             0,
             0,
             a3,
             -1);
      break;
    case 13:
      v5 = (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 8) + 128))(*(_DWORD *)(a1 + 8), a3);
      break;
    case 14:
      v17 = *(_DWORD *)(a1 + 8);
      v18 = *(int (__fastcall **)(int, _DWORD, _DWORD *, int, int))(*(_DWORD *)v17 + 136);
      v41[3] = 100;
      v41[2] = 100;
      v41[0] = 0;
      v41[1] = 0;
      v5 = v18(v17, 0, v41, a3, -1);
      break;
    case 15:
      v15 = *(_DWORD *)(a1 + 8);
      v16 = *(int (__fastcall **)(int, const char *, _DWORD *, int, int))(*(_DWORD *)v15 + 176);
      v35[1] = 0;
      v35[0] = 0;
      v35[3] = 100;
      v35[2] = 100;
      v5 = v16(v15, "0", v35, a3, -1);
      break;
    case 16:
      v13 = *(_DWORD *)(a1 + 8);
      v14 = *(int (__fastcall **)(int, _DWORD, _DWORD *, _DWORD, int, int, int, _DWORD))(*(_DWORD *)v13 + 168);
      v40[0] = 0;
      v40[1] = 0;
      v40[3] = 100;
      v40[2] = 100;
      v5 = v14(v13, 0, v40, 0, 1, a3, -1, 0);
      break;
    case 17:
      v11 = *(_DWORD *)(a1 + 8);
      v12 = *(int (__fastcall **)(int, _DWORD *, int, int))(*(_DWORD *)v11 + 188);
      v39[3] = 100;
      v39[2] = 100;
      v39[1] = 0;
      v39[0] = 0;
      v5 = v12(v11, v39, a3, -1);
      break;
    case 18:
      v9 = *(_DWORD *)(a1 + 8);
      v10 = *(int (__fastcall **)(int, _DWORD *, int, _DWORD, int, int))(*(_DWORD *)v9 + 184);
      v38[3] = 100;
      v38[0] = 0;
      v38[1] = 0;
      v38[2] = 100;
      v5 = v10(v9, v38, a3, 0, 1, -1);
      break;
    case 19:
      v7 = *(_DWORD *)(a1 + 8);
      v8 = *(int (__fastcall **)(int, _DWORD *, int, int, _DWORD))(*(_DWORD *)v7 + 208);
      v37[0] = 0;
      v37[1] = 0;
      v37[3] = 100;
      v37[2] = 100;
      v5 = v8(v7, v37, a3, -1, 0);
      break;
    case 20:
      v5 = (*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(a1 + 8) + 200))(*(_DWORD *)(a1 + 8), a3, -1);
      break;
    case 21:
      v3 = *(_DWORD *)(a1 + 8);
      v4 = *(int (__fastcall **)(int, _DWORD *, _DWORD, _DWORD, int, int))(*(_DWORD *)v3 + 124);
      v36[0] = 0;
      v36[1] = 0;
      v36[3] = 100;
      v36[2] = 100;
      v5 = v4(v3, v36, 0, 0, a3, -1);
      break;
    default:
      v5 = 0;
      break;
  }
  return v5;
}


// ===== 6a5cc8 glitch::gui::CDefaultGUIElementFactory::getCreatableGUIElementTypeCount(void) =====
int __fastcall glitch::gui::CDefaultGUIElementFactory::getCreatableGUIElementTypeCount(
        glitch::gui::CDefaultGUIElementFactory *this)
{
  return 22;
}


// ===== 6a5cd0 glitch::gui::CDefaultGUIElementFactory::getCreateableGUIElementType(int) =====
int __fastcall glitch::gui::CDefaultGUIElementFactory::getCreateableGUIElementType(
        glitch::gui::CDefaultGUIElementFactory *this,
        unsigned int a2)
{
  if ( a2 > 0x15 )
    return 23;
  else
    return a2;
}


// ===== 6a5ce0 glitch::gui::CDefaultGUIElementFactory::getCreateableGUIElementTypeName(int) =====
char *__fastcall glitch::gui::CDefaultGUIElementFactory::getCreateableGUIElementTypeName(
        glitch::gui::CDefaultGUIElementFactory *this,
        unsigned int a2)
{
  if ( a2 <= 0x15 )
    return glitch::gui::GUIElementTypeNames[a2];
  else
    return nullptr;
}


// ===== 6a5d00 glitch::gui::CDefaultGUIElementFactory::getCreateableGUIElementTypeName(glitch::gui::EGUI_ELEMENT_TYPE) =====
char *__fastcall glitch::gui::CDefaultGUIElementFactory::getCreateableGUIElementTypeName(int a1, unsigned int a2)
{
  if ( a2 <= 0x15 )
    return glitch::gui::GUIElementTypeNames[a2];
  else
    return nullptr;
}


// ===== 6a5d20 glitch::gui::CDefaultGUIElementFactory::~CDefaultGUIElementFactory() =====
void __fastcall glitch::gui::CDefaultGUIElementFactory::~CDefaultGUIElementFactory(
        glitch::gui::CDefaultGUIElementFactory *this)
{
  ;
}


// ===== 6a5d24 `global constructor keyed to'.._source_glitch_gui_CDefaultGUIElementFactory.cpp =====
void `global constructor keyed to'.._source_glitch_gui_CDefaultGUIElementFactory.cpp()
{
  dword_9F7688 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7684 = 1056964608;
}


// ===== 6a5d44 glitch::gui::CDefaultGUIElementFactory::~CDefaultGUIElementFactory() =====
void __fastcall glitch::gui::CDefaultGUIElementFactory::~CDefaultGUIElementFactory(
        glitch::gui::CDefaultGUIElementFactory *this)
{
  LC_API_FREE_0(this);
}


// ===== 6a5d58 glitch::gui::IGUIElementFactory::~IGUIElementFactory() =====
void __fastcall glitch::gui::IGUIElementFactory::~IGUIElementFactory(glitch::gui::IGUIElementFactory *this)
{
  LC_API_FREE_0(this);
}


// ===== 6a5d6c glitch::gui::CDefaultGUIElementFactory::getTypeFromName(char const*) =====
int __fastcall glitch::gui::CDefaultGUIElementFactory::getTypeFromName(
        glitch::gui::CDefaultGUIElementFactory *this,
        const char *a2)
{
  int v3; // r4
  const char *v4; // r1

  v3 = 0;
  v4 = "button";
  do
  {
    if ( !LC_API_STRCMP_0(a2, v4) )
      return v3;
    v4 = glitch::gui::GUIElementTypeNames[++v3];
  }
  while ( v4 );
  return 23;
}


// ===== 6a5dc4 glitch::gui::CDefaultGUIElementFactory::addGUIElement(char const*,glitch::gui::IGUIElement *) =====
int __fastcall glitch::gui::CDefaultGUIElementFactory::addGUIElement(
        glitch::gui::CDefaultGUIElementFactory *this,
        const char *a2,
        glitch::gui::IGUIElement *a3)
{
  int (__fastcall *v5)(glitch::gui::CDefaultGUIElementFactory *, int, glitch::gui::IGUIElement *); // r5
  int TypeFromName; // r0

  v5 = *(int (__fastcall **)(glitch::gui::CDefaultGUIElementFactory *, int, glitch::gui::IGUIElement *))(*(_DWORD *)this + 12);
  TypeFromName = glitch::gui::CDefaultGUIElementFactory::getTypeFromName(this, a2);
  return v5(this, TypeFromName, a3);
}


// ===== 6a5df0 glitch::gui::CGUIButton::setDrawBorder(bool) =====
int __fastcall glitch::gui::CGUIButton::setDrawBorder(int this, bool a2)
{
  *(_BYTE *)(this + 347) = a2;
  return this;
}


// ===== 6a5df8 glitch::gui::CGUIButton::setSpriteBank(glitch::gui::IGUISpriteBank *) =====
glitch::IReferenceCounted *__fastcall glitch::gui::CGUIButton::setSpriteBank(
        glitch::gui::CGUIButton *this,
        glitch::gui::IGUISpriteBank *a2,
        int a3,
        int a4)
{
  glitch::IReferenceCounted *result; // r0

  if ( a2 )
    a4 = *((_DWORD *)a2 + 1);
  if ( a2 )
    *((_DWORD *)a2 + 1) = a4 + 1;
  result = *((glitch::IReferenceCounted **)this + 88);
  if ( result )
    result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
  *((_DWORD *)this + 88) = a2;
  return result;
}


// ===== 6a5e28 glitch::gui::CGUIButton::setSprite(glitch::gui::EGUI_BUTTON_STATE,int,glitch::video::SColor,bool) =====
int __fastcall glitch::gui::CGUIButton::setSprite(int a1, int a2, int a3, int a4, char a5)
{
  int result; // r0

  if ( *(_DWORD *)(a1 + 352) )
  {
    result = a1 + 12 * a2;
    *(_BYTE *)(result + 368) = a5;
    *(_DWORD *)(result + 360) = a3;
    *(_DWORD *)(result + 364) = a4;
  }
  else
  {
    result = a1 + 12 * a2;
    *(_DWORD *)(result + 360) = -1;
  }
  return result;
}


// ===== 6a5e90 glitch::gui::CGUIButton::setOverrideFont(glitch::gui::IGUIFont *) =====
glitch::IReferenceCounted *__fastcall glitch::gui::CGUIButton::setOverrideFont(
        glitch::gui::CGUIButton *this,
        glitch::gui::IGUIFont *a2)
{
  glitch::IReferenceCounted *result; // r0

  result = *((glitch::IReferenceCounted **)this + 89);
  if ( result )
    result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
  *((_DWORD *)this + 89) = a2;
  if ( a2 )
    ++*((_DWORD *)a2 + 1);
  return result;
}


// ===== 6a5ec4 glitch::gui::CGUIButton::setIsPushButton(bool) =====
int __fastcall glitch::gui::CGUIButton::setIsPushButton(int this, bool a2)
{
  *(_BYTE *)(this + 345) = a2;
  return this;
}


// ===== 6a5ecc glitch::gui::CGUIButton::isPressed(void) =====
int __fastcall glitch::gui::CGUIButton::isPressed(glitch::gui::CGUIButton *this)
{
  return *((unsigned __int8 *)this + 344);
}


// ===== 6a5ed4 glitch::gui::CGUIButton::isPushButton(void) =====
int __fastcall glitch::gui::CGUIButton::isPushButton(glitch::gui::CGUIButton *this)
{
  return *((unsigned __int8 *)this + 345);
}


// ===== 6a5edc glitch::gui::CGUIButton::setUseAlphaChannel(bool) =====
int __fastcall glitch::gui::CGUIButton::setUseAlphaChannel(int this, bool a2)
{
  *(_BYTE *)(this + 346) = a2;
  return this;
}


// ===== 6a5ee4 glitch::gui::CGUIButton::isAlphaChannelUsed(void) =====
int __fastcall glitch::gui::CGUIButton::isAlphaChannelUsed(glitch::gui::CGUIButton *this)
{
  return *((unsigned __int8 *)this + 346);
}


// ===== 6a5eec glitch::gui::CGUIButton::isDrawingBorder(void) =====
int __fastcall glitch::gui::CGUIButton::isDrawingBorder(glitch::gui::CGUIButton *this)
{
  return *((unsigned __int8 *)this + 347);
}


// ===== 6a5ef4 `global constructor keyed to'.._source_glitch_gui_CGUIButton.cpp =====
void `global constructor keyed to'.._source_glitch_gui_CGUIButton.cpp()
{
  dword_9F7694 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7690 = 1056964608;
}


// ===== 6a5f14 glitch::gui::CGUIButton::setPressed(bool) =====
unsigned __int8 *__fastcall glitch::gui::CGUIButton::setPressed(unsigned __int8 *this, int a2)
{
  unsigned __int8 *v2; // r4
  unsigned __int8 v3; // r5

  v2 = this;
  v3 = a2;
  if ( *(this + 344) != a2 )
  {
    this = (unsigned __int8 *)glitch::os::Timer::getTime((glitch::os::Timer *)this);
    v2[344] = v3;
    *((_DWORD *)v2 + 87) = this;
  }
  return this;
}


// ===== 6a5f3c glitch::gui::IGUIElement::getNextElement(int,bool,bool,glitch::gui::IGUIElement*&,glitch::gui::IGUIElement*&,bool) [clone] =====
int __fastcall glitch::gui::IGUIElement::getNextElement(int a1, int a2, int a3, int a4, char a5)
{
  int *v5; // r4
  int *v6; // r6
  int v10; // r0
  int v12; // r3
  _BOOL4 v13; // r2

  v6 = (int *)(a1 + 4);
  v5 = *(int **)(a1 + 4);
  if ( v5 == (int *)(a1 + 4) )
    return 0;
  while ( 1 )
  {
    if ( !(*(int (__fastcall **)(int))(*(_DWORD *)v5[2] + 44))(v5[2]) && !a5 )
      goto LABEL_10;
    if ( a2 )
    {
      v10 = v5[2];
    }
    else
    {
      v10 = v5[2];
      if ( *(_BYTE *)(v10 + 316) )
        goto LABEL_10;
    }
    if ( !*(_BYTE *)(v10 + 308) || *(unsigned __int8 *)(v10 + 316) != a2 )
    {
LABEL_9:
      if ( glitch::gui::IGUIElement::getNextElement(v10, a2, a3, a4, 0) )
        return 1;
      goto LABEL_10;
    }
    v12 = *(_DWORD *)(v10 + 312);
    if ( v12 == 0x40000000 )
      break;
    if ( !*(_DWORD *)a4 )
    {
      if ( v12 >= -1 )
        goto LABEL_18;
LABEL_17:
      *(_DWORD *)a4 = v10;
      v10 = v5[2];
      goto LABEL_18;
    }
    v13 = v12 > *(_DWORD *)(*(_DWORD *)a4 + 312);
    if ( v12 >= -1 )
      v13 = 0;
    if ( v13 )
      goto LABEL_17;
LABEL_18:
    if ( *(_DWORD *)a3 && v12 <= *(_DWORD *)(*(_DWORD *)a3 + 312) )
      goto LABEL_9;
    *(_DWORD *)a3 = v10;
    if ( glitch::gui::IGUIElement::getNextElement(v5[2], a2, a3, a4, 0) )
      return 1;
LABEL_10:
    v5 = (int *)*v5;
    if ( v5 == v6 )
      return 0;
  }
  *(_DWORD *)a4 = v10;
  return 1;
}


// ===== 6a6090 glitch::gui::IGUIElement::setTabOrder(int) [clone] =====
int __fastcall glitch::gui::IGUIElement::setTabOrder(int this, int a2)
{
  int v2; // r1
  int v3; // r4
  int i; // r3
  int v5; // [sp+8h] [bp-8h] BYREF
  int v6; // [sp+Ch] [bp-4h] BYREF

  v2 = *(unsigned __int8 *)(this + 316);
  v3 = this;
  *(_DWORD *)(this + 312) = 0;
  if ( v2 )
  {
    this = *(_DWORD *)(this + 36);
    if ( this )
    {
      for ( i = *(_DWORD *)(this + 36); i; i = *(_DWORD *)(i + 36) )
        this = i;
    }
    else
    {
      this = v3;
    }
LABEL_9:
    v5 = 0;
    v6 = 0;
    this = glitch::gui::IGUIElement::getNextElement(this, v2, (int)&v6, (int)&v5, 1);
    if ( v6 )
      *(_DWORD *)(v3 + 312) = *(_DWORD *)(v6 + 312) + 1;
  }
  else
  {
    while ( 1 )
    {
      this = *(_DWORD *)(this + 36);
      if ( !this )
        break;
      if ( *(_BYTE *)(this + 316) )
        goto LABEL_9;
    }
  }
  return this;
}


// ===== 6a613c std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block()
{
  ;
}


// ===== 6a6140 glitch::gui::IGUIButton::IGUIButton(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::IGUIButton::IGUIButton(int a1, int *a2, int a3, int a4, int a5, int *a6)
{
  int v7; // r8
  int v8; // r7
  int v9; // lr
  int v10; // r10
  int v12; // r1
  int v13; // r0
  _DWORD *v16; // r3
  int v17; // r0
  int v18; // r12
  int v19; // r10
  int v20; // r8
  int v21; // r2
  int v22; // r1
  int v23; // r6
  int v24; // r7
  int v25; // r0
  int v26; // r1
  int v27; // r1
  int v28; // r2
  int v29; // r1
  int v30; // r3
  int v31; // r1
  bool v32; // cc
  int v33; // r3
  int v34; // r3
  int v36; // [sp+Ch] [bp-10h]

  v7 = *a6;
  v8 = a6[1];
  v9 = a6[2];
  v10 = a6[3];
  *(_DWORD *)a1 = off_95C300;
  v12 = a2[1];
  *(_DWORD *)a1 = v12;
  *(_DWORD *)(a1 + *(_DWORD *)(v12 - 12)) = a2[2];
  v36 = a1 + 4;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[3];
  *(_DWORD *)(a1 + 8) = a1 + 4;
  v13 = a1 + 12;
  *(_DWORD *)(a1 + 48) = v9;
  *(_DWORD *)(a1 + 40) = v7;
  *(_DWORD *)(a1 + 32) = v13;
  *(_DWORD *)(a1 + 28) = v13;
  *(_DWORD *)(a1 + 44) = v8;
  *(_DWORD *)(a1 + 4) = v36;
  *(_DWORD *)(a1 + 52) = v10;
  *(_DWORD *)(a1 + 56) = v7;
  *(_DWORD *)(a1 + 60) = v8;
  *(_DWORD *)(a1 + 64) = v9;
  *(_DWORD *)(a1 + 72) = v7;
  *(_DWORD *)(a1 + 76) = v8;
  *(_DWORD *)(a1 + 80) = v9;
  *(_DWORD *)(a1 + 88) = v7;
  *(_DWORD *)(a1 + 92) = v8;
  *(_DWORD *)(a1 + 96) = v9;
  *(_DWORD *)(a1 + 132) = 0;
  *(_BYTE *)(a1 + 153) = 1;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
  *(_DWORD *)(a1 + 144) = 1;
  *(_DWORD *)(a1 + 148) = 1;
  *(_BYTE *)(a1 + 152) = 1;
  *(_DWORD *)(a1 + 68) = v10;
  *(_BYTE *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 100) = v10;
  *(_DWORD *)(a1 + 84) = v10;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 112) = 0;
  *(_DWORD *)(a1 + 116) = 0;
  *(_DWORD *)(a1 + 136) = 0;
  *(_DWORD *)(a1 + 140) = 0;
  *(_BYTE *)(a1 + 154) = 0;
  *(_BYTE *)(a1 + 155) = 0;
  *(_BYTE *)(a1 + 156) = 0;
  *(_DWORD *)(a1 + 224) = a1 + 160;
  *(_DWORD *)(a1 + 228) = a1 + 160;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_DWORD **)(a1 + 224) = 0;
  *(_DWORD *)(a1 + 296) = a1 + 232;
  *(_DWORD *)(a1 + 300) = a1 + 232;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_DWORD **)(a1 + 296) = 0;
  *(_DWORD *)(a1 + 336) = a3;
  *(_DWORD *)(a1 + 340) = 0;
  *(_DWORD *)(a1 + 304) = a5;
  *(_DWORD *)(a1 + 312) = -1;
  *(_BYTE *)(a1 + 308) = 0;
  *(_BYTE *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  if ( a4 )
    (*(void (__fastcall **)(int, int))(*(_DWORD *)a4 + 20))(a4, a1);
  v16 = *(_DWORD **)(a1 + 36);
  if ( v16 )
  {
    v17 = v16[15];
    v18 = v16[14];
    v19 = v16[16];
    v20 = v16[17];
    v21 = v17 + *(_DWORD *)(a1 + 68);
    v22 = v18 + *(_DWORD *)(a1 + 64);
    v23 = v17 + *(_DWORD *)(a1 + 60);
    v24 = v18 + *(_DWORD *)(a1 + 56);
    *(_DWORD *)(a1 + 76) = v23;
    *(_DWORD *)(a1 + 84) = v21;
    *(_DWORD *)(a1 + 72) = v24;
    *(_DWORD *)(a1 + 80) = v22;
    *(_DWORD *)(a1 + 68) = v21;
    *(_DWORD *)(a1 + 112) = v19;
    *(_DWORD *)(a1 + 116) = v20;
    *(_DWORD *)(a1 + 104) = v18;
    *(_DWORD *)(a1 + 108) = v17;
    *(_DWORD *)(a1 + 56) = v24;
    *(_DWORD *)(a1 + 60) = v23;
    *(_DWORD *)(a1 + 64) = v22;
    v25 = v16[20];
    if ( v22 > v25 )
      *(_DWORD *)(a1 + 80) = v25;
    v26 = v16[21];
    if ( v21 > v26 )
      *(_DWORD *)(a1 + 84) = v26;
    v27 = v16[18];
    v28 = *(_DWORD *)(a1 + 72);
    if ( v27 > v28 )
    {
      *(_DWORD *)(a1 + 72) = v27;
      v28 = v27;
    }
    v29 = v16[19];
    v30 = *(_DWORD *)(a1 + 76);
    if ( v29 > v30 )
    {
      *(_DWORD *)(a1 + 76) = v29;
      v30 = v29;
    }
    v31 = *(_DWORD *)(a1 + 84);
    v32 = v31 < v30;
    v33 = *(_DWORD *)(a1 + 80);
    if ( v32 )
      *(_DWORD *)(a1 + 76) = v31;
    if ( v28 > v33 )
      *(_DWORD *)(a1 + 72) = v33;
  }
  v34 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v34 - 12)) = a2[4];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[5];
  return a1;
}


// ===== 6a63fc glitch::gui::CGUIButton::CGUIButton(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>,bool) =====
int __fastcall glitch::gui::CGUIButton::CGUIButton(int a1, int a2, int a3, int a4, int *a5, char a6, int a7)
{
  int v7; // r9
  int v8; // r10
  int v9; // r11
  int v12[5]; // [sp+8h] [bp-14h] BYREF

  *(_DWORD *)(a1 + 480) = 1;
  *(_DWORD *)(a1 + 472) = off_985F84;
  *(_DWORD *)(a1 + 476) = off_95B720;
  *(_DWORD *)&byte_4[a1 + 472] = off_985FA4;
  v7 = a5[3];
  v8 = a5[1];
  v9 = a5[2];
  v12[0] = *a5;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v7;
  glitch::gui::IGUIButton::IGUIButton(a1, (int *)off_985D6C, a2, a3, a4, v12);
  *(_DWORD *)(a1 + 468) = 0;
  *(_BYTE *)(a1 + 155) = a6;
  *(_DWORD *)(a1 + 476) = off_985D58;
  *(_DWORD *)a1 = off_985C68;
  *(_DWORD *)(a1 + 472) = off_985D38;
  *(_DWORD *)(a1 + 420) = -1;
  *(_BYTE *)(a1 + 308) = 1;
  *(_BYTE *)(a1 + 344) = 0;
  *(_BYTE *)(a1 + 345) = 0;
  *(_BYTE *)(a1 + 346) = 0;
  *(_BYTE *)(a1 + 347) = 1;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 356) = 0;
  *(_DWORD *)(a1 + 432) = 0;
  *(_DWORD *)(a1 + 436) = 0;
  *(_DWORD *)(a1 + 440) = 0;
  *(_DWORD *)(a1 + 444) = 0;
  *(_DWORD *)(a1 + 448) = 0;
  *(_DWORD *)(a1 + 452) = 0;
  *(_DWORD *)(a1 + 456) = 0;
  *(_DWORD *)(a1 + 460) = 0;
  *(_DWORD *)(a1 + 464) = 0;
  *(_DWORD *)(a1 + 360) = -1;
  *(_DWORD *)(a1 + 372) = -1;
  *(_DWORD *)(a1 + 384) = -1;
  *(_DWORD *)(a1 + 396) = -1;
  *(_DWORD *)(a1 + 408) = -1;
  glitch::gui::IGUIElement::setTabOrder(a1, (int)off_985D38);
  return a1;
}


// ===== 6a653c glitch::gui::CGUIButton::CGUIButton(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>,bool) =====
int __fastcall glitch::gui::CGUIButton::CGUIButton(int a1, int *a2, int a3, int a4, int a5, int *a6, char a7)
{
  int v8; // lr
  int v9; // r4
  int v10; // r12
  int v12; // r1
  int v14[4]; // [sp+8h] [bp-10h] BYREF

  v8 = a6[3];
  v9 = a6[1];
  v10 = a6[2];
  v14[0] = *a6;
  v14[1] = v9;
  v14[2] = v10;
  v14[3] = v8;
  glitch::gui::IGUIButton::IGUIButton(a1, a2 + 1, a3, a4, a5, v14);
  v12 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v12 - 12)) = a2[7];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[8];
  *(_DWORD *)(a1 + 468) = 0;
  *(_DWORD *)(a1 + 420) = -1;
  *(_BYTE *)(a1 + 344) = 0;
  *(_BYTE *)(a1 + 345) = 0;
  *(_BYTE *)(a1 + 346) = 0;
  *(_BYTE *)(a1 + 347) = 1;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 356) = 0;
  *(_DWORD *)(a1 + 432) = 0;
  *(_DWORD *)(a1 + 436) = 0;
  *(_DWORD *)(a1 + 440) = 0;
  *(_DWORD *)(a1 + 444) = 0;
  *(_DWORD *)(a1 + 448) = 0;
  *(_DWORD *)(a1 + 452) = 0;
  *(_DWORD *)(a1 + 456) = 0;
  *(_DWORD *)(a1 + 460) = 0;
  *(_DWORD *)(a1 + 464) = 0;
  *(_DWORD *)(a1 + 360) = -1;
  *(_DWORD *)(a1 + 372) = -1;
  *(_DWORD *)(a1 + 384) = -1;
  *(_DWORD *)(a1 + 396) = -1;
  *(_DWORD *)(a1 + 408) = -1;
  *(_BYTE *)(a1 + 155) = a7;
  *(_BYTE *)(a1 + 308) = 1;
  glitch::gui::IGUIElement::setTabOrder(a1, 1);
  return a1;
}


// ===== 6a6630 glitch::gui::CGUIButton::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::CGUIButton::serializeAttributes(int a1, int a2)
{
  void (__fastcall *v4)(int, const char *, glitch::IReferenceCounted **, _DWORD); // r12
  int v5; // r0
  int v6; // r2
  int v7; // r3
  void (__fastcall *v8)(int, const char *, _DWORD *, _DWORD); // r12
  void (__fastcall *v9)(int, const char *, glitch::IReferenceCounted **, _DWORD); // r12
  int v10; // r0
  int v11; // r2
  int v12; // r3
  void (__fastcall *v13)(int, const char *, _DWORD *, _DWORD); // r12
  _DWORD v15[4]; // [sp+0h] [bp-2Ch] BYREF
  _DWORD v16[4]; // [sp+10h] [bp-1Ch] BYREF
  glitch::IReferenceCounted *v17; // [sp+20h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v18; // [sp+24h] [bp-8h] BYREF

  glitch::gui::IGUIElement::serializeAttributes((_DWORD *)a1, a2);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "PushButton",
    *(unsigned __int8 *)(a1 + 345),
    0);
  if ( *(_BYTE *)(a1 + 345) )
    (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
      a2,
      "Pressed",
      *(unsigned __int8 *)(a1 + 344),
      0);
  v4 = *(void (__fastcall **)(int, const char *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)a2 + 688);
  v18 = *(glitch::IReferenceCounted **)(a1 + 432);
  if ( v18 )
    ++*((_DWORD *)v18 + 1);
  v4(a2, "Image", &v18, 0);
  if ( v18 )
    glitch::IReferenceCounted::drop(v18);
  v5 = *(_DWORD *)(a1 + 440);
  v6 = *(_DWORD *)(a1 + 448);
  v7 = *(_DWORD *)(a1 + 452);
  v8 = *(void (__fastcall **)(int, const char *, _DWORD *, _DWORD))(*(_DWORD *)a2 + 496);
  v16[1] = *(_DWORD *)(a1 + 444);
  v16[0] = v5;
  v16[2] = v6;
  v16[3] = v7;
  v8(a2, "ImageRect", v16, 0);
  v9 = *(void (__fastcall **)(int, const char *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)a2 + 688);
  v17 = *(glitch::IReferenceCounted **)(a1 + 436);
  if ( v17 )
    ++*((_DWORD *)v17 + 1);
  v9(a2, "PressedImage", &v17, 0);
  if ( v17 )
    glitch::IReferenceCounted::drop(v17);
  v10 = *(_DWORD *)(a1 + 456);
  v11 = *(_DWORD *)(a1 + 464);
  v12 = *(_DWORD *)(a1 + 468);
  v13 = *(void (__fastcall **)(int, const char *, _DWORD *, _DWORD))(*(_DWORD *)a2 + 496);
  v15[1] = *(_DWORD *)(a1 + 460);
  v15[0] = v10;
  v15[2] = v11;
  v15[3] = v12;
  v13(a2, "PressedImageRect", v15, 0);
  (*(void (__fastcall **)(int, char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "Border",
    *(unsigned __int8 *)(a1 + 347),
    0);
  return (*(int (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
           a2,
           "UseAlphaChannel",
           *(unsigned __int8 *)(a1 + 346),
           0);
}


// ===== 6a67fc glitch::gui::CGUIButton::setImage(boost::intrusive_ptr<glitch::video::ITexture> const&,glitch::core::rect<int> const&) =====
glitch::IReferenceCounted *__fastcall glitch::gui::CGUIButton::setImage(_DWORD *a1, int *a2, _DWORD *a3)
{
  int v3; // r3
  glitch::IReferenceCounted *result; // r0
  int v7; // r2

  v3 = *a2;
  if ( *a2 )
    ++*(_DWORD *)(v3 + 4);
  result = (glitch::IReferenceCounted *)a1[108];
  a1[108] = v3;
  if ( result )
    result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
  v7 = a1[109];
  a1[110] = *a3;
  a1[111] = a3[1];
  a1[112] = a3[2];
  a1[113] = a3[3];
  if ( !v7 )
    return (glitch::IReferenceCounted *)(*(int (__fastcall **)(_DWORD *, _DWORD *, _DWORD *))(*a1 + 140))(
                                          a1,
                                          a1 + 108,
                                          a3);
  return result;
}


// ===== 6a687c glitch::gui::CGUIButton::setPressedImage(boost::intrusive_ptr<glitch::video::ITexture> const&,glitch::core::rect<int> const&) =====
glitch::IReferenceCounted *__fastcall glitch::gui::CGUIButton::setPressedImage(_DWORD *a1, int *a2, _DWORD *a3)
{
  int v3; // r3
  glitch::IReferenceCounted *result; // r0

  v3 = *a2;
  if ( *a2 )
    ++*(_DWORD *)(v3 + 4);
  result = (glitch::IReferenceCounted *)a1[109];
  a1[109] = v3;
  if ( result )
    result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
  a1[114] = *a3;
  a1[115] = a3[1];
  a1[116] = a3[2];
  a1[117] = a3[3];
  return result;
}


// ===== 6a68d4 glitch::gui::CGUIButton::setImage(boost::intrusive_ptr<glitch::video::ITexture> const&) =====
glitch::IReferenceCounted *__fastcall glitch::gui::CGUIButton::setImage(_DWORD *a1, int *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *result; // r0
  int v6; // r3
  int v7; // r2
  int v8; // r1

  v2 = *a2;
  if ( *a2 )
    ++*(_DWORD *)(v2 + 4);
  result = (glitch::IReferenceCounted *)a1[108];
  a1[108] = v2;
  if ( result )
    result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
  v6 = *a2;
  if ( *a2 )
  {
    v7 = *(_DWORD *)(v6 + 36);
    v8 = *(_DWORD *)(v6 + 32);
    a1[111] = 0;
    a1[112] = v8;
    a1[113] = v7;
    a1[110] = 0;
  }
  if ( !a1[109] )
    return (glitch::IReferenceCounted *)(*(int (__fastcall **)(_DWORD *, _DWORD *))(*a1 + 136))(a1, a1 + 108);
  return result;
}


// ===== 6a6958 glitch::gui::CGUIButton::setPressedImage(boost::intrusive_ptr<glitch::video::ITexture> const&) =====
glitch::IReferenceCounted *__fastcall glitch::gui::CGUIButton::setPressedImage(_DWORD *a1, int *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *result; // r0
  int v6; // r3
  int v7; // r2

  v2 = *a2;
  if ( *a2 )
    ++*(_DWORD *)(v2 + 4);
  result = (glitch::IReferenceCounted *)a1[109];
  a1[109] = v2;
  if ( result )
    result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
  v6 = *a2;
  if ( *a2 )
  {
    v7 = *(_DWORD *)(v6 + 32);
    a1[117] = *(_DWORD *)(v6 + 36);
    a1[115] = 0;
    a1[116] = v7;
    a1[114] = 0;
  }
  return result;
}


// ===== 6a69b8 glitch::gui::IGUIButton::~IGUIButton() =====
void __fastcall glitch::gui::IGUIButton::~IGUIButton(glitch::gui::IGUIButton *this)
{
  *(_DWORD *)this = off_985A30;
  *((_DWORD *)this + 86) = off_985B00;
  *((_DWORD *)this + 87) = off_985B20;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_985B34);
}


// ===== 6a6a0c `virtual thunk to'glitch::gui::IGUIButton::~IGUIButton() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIButton::~IGUIButton(glitch::gui::IGUIButton *this)
{
  glitch::gui::IGUIButton::~IGUIButton((glitch::gui::IGUIButton *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6a6a1c `virtual thunk to'glitch::gui::IGUIButton::~IGUIButton() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIButton::~IGUIButton(glitch::gui::IGUIButton *this)
{
  glitch::gui::IGUIButton::~IGUIButton((glitch::gui::IGUIButton *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6a6a2c glitch::gui::CGUIButton::~CGUIButton() =====
void __fastcall glitch::gui::CGUIButton::~CGUIButton(glitch::gui::CGUIButton *this)
{
  glitch::IReferenceCounted *v2; // r0
  glitch::IReferenceCounted *v3; // r0
  glitch::IReferenceCounted *v4; // r0
  glitch::IReferenceCounted *v5; // r0

  v2 = *((glitch::IReferenceCounted **)this + 89);
  *(_DWORD *)this = off_985C68;
  *((_DWORD *)this + 118) = off_985D38;
  *((_DWORD *)this + 119) = off_985D58;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  v3 = *((glitch::IReferenceCounted **)this + 88);
  if ( v3 )
    glitch::IReferenceCounted::drop(v3);
  v4 = *((glitch::IReferenceCounted **)this + 109);
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  v5 = *((glitch::IReferenceCounted **)this + 108);
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  *(_DWORD *)this = off_985DA8;
  *(int *)((char *)&elf_hash_bucket[63] + (_DWORD)this) = (int)off_985E78;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = off_985E98;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_985D70);
}


// ===== 6a6ae8 glitch::gui::CGUIButton::~CGUIButton() =====
void __fastcall glitch::gui::CGUIButton::~CGUIButton(glitch::gui::CGUIButton *this)
{
  glitch::gui::CGUIButton::~CGUIButton(this);
  LC_API_FREE_0(this);
}


// ===== 6a6b04 glitch::gui::CGUIButton::~CGUIButton() =====
void __fastcall glitch::gui::CGUIButton::~CGUIButton(glitch::gui::CGUIButton *this, int *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *v5; // r0
  glitch::IReferenceCounted *v6; // r0
  glitch::IReferenceCounted *v7; // r0
  glitch::IReferenceCounted *v8; // r0
  int v9; // r3
  int *v10; // r5

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[7];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = a2[8];
  v5 = *((glitch::IReferenceCounted **)this + 89);
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  v6 = *((glitch::IReferenceCounted **)this + 88);
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  v7 = *((glitch::IReferenceCounted **)this + 109);
  if ( v7 )
    glitch::IReferenceCounted::drop(v7);
  v8 = *((glitch::IReferenceCounted **)this + 108);
  if ( v8 )
    glitch::IReferenceCounted::drop(v8);
  v9 = a2[1];
  v10 = a2 + 1;
  *(_DWORD *)this = v9;
  *(_DWORD *)((char *)this + *(_DWORD *)(v9 - 12)) = v10[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = v10[5];
  glitch::gui::IGUIElement::~IGUIElement(this, v10 + 1);
}


// ===== 6a6bb0 glitch::gui::CGUIButton::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::CGUIButton::deserializeAttributes(int a1, int a2)
{
  int v4; // r0
  void (__fastcall *v5)(int, glitch::IReferenceCounted **, int *); // r8
  glitch::IReferenceCounted *v6; // r0
  void (__fastcall *v7)(int, glitch::IReferenceCounted **, int *); // r8
  glitch::IReferenceCounted *v8; // r0
  void (__fastcall *v9)(int, int); // r6
  int v10; // r0
  char v11; // r0
  float v12; // r3
  void (__fastcall *v14)(int, glitch::IReferenceCounted **); // r8
  void (__fastcall *v15)(int, glitch::IReferenceCounted **); // r7
  int v16; // [sp+0h] [bp-30h] BYREF
  int v17; // [sp+4h] [bp-2Ch]
  int v18; // [sp+8h] [bp-28h]
  int v19; // [sp+Ch] [bp-24h]
  int v20; // [sp+10h] [bp-20h] BYREF
  int v21; // [sp+14h] [bp-1Ch]
  int v22; // [sp+18h] [bp-18h]
  int v23; // [sp+1Ch] [bp-14h]
  glitch::IReferenceCounted *v24; // [sp+20h] [bp-10h] BYREF
  glitch::IReferenceCounted *v25; // [sp+24h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v26; // [sp+28h] [bp-8h] BYREF
  glitch::IReferenceCounted *v27; // [sp+2Ch] [bp-4h] BYREF

  glitch::gui::IGUIElement::deserializeAttributes((float *)a1, a2);
  v4 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "PushButton");
  *(_BYTE *)(a1 + 345) = v4;
  if ( v4 )
    LOBYTE(v4) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "Pressed");
  *(_BYTE *)(a1 + 344) = v4;
  (*(void (__fastcall **)(int *, int, const char *))(*(_DWORD *)a2 + 508))(&v20, a2, "ImageRect");
  if ( v22 < v20 || v23 < v21 )
  {
    v14 = *(void (__fastcall **)(int, glitch::IReferenceCounted **))(*(_DWORD *)a1 + 128);
    (*(void (__fastcall **)(glitch::IReferenceCounted **, int, const char *))(*(_DWORD *)a2 + 700))(&v26, a2, "Image");
    v14(a1, &v26);
    v6 = v26;
    if ( !v26 )
      goto LABEL_7;
    goto LABEL_6;
  }
  v5 = *(void (__fastcall **)(int, glitch::IReferenceCounted **, int *))(*(_DWORD *)a1 + 132);
  (*(void (__fastcall **)(glitch::IReferenceCounted **, int, const char *))(*(_DWORD *)a2 + 700))(&v27, a2, "Image");
  v5(a1, &v27, &v20);
  v6 = v27;
  if ( v27 )
LABEL_6:
    glitch::IReferenceCounted::drop(v6);
LABEL_7:
  (*(void (__fastcall **)(int *, int, const char *))(*(_DWORD *)a2 + 508))(&v16, a2, "PressedImageRect");
  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = v19;
  if ( v16 > v18 || v17 > v19 )
  {
    v15 = *(void (__fastcall **)(int, glitch::IReferenceCounted **))(*(_DWORD *)a1 + 136);
    (*(void (__fastcall **)(glitch::IReferenceCounted **, int, const char *))(*(_DWORD *)a2 + 700))(
      &v24,
      a2,
      "PressedImage");
    v15(a1, &v24);
    v8 = v24;
    if ( !v24 )
      goto LABEL_11;
    goto LABEL_10;
  }
  v7 = *(void (__fastcall **)(int, glitch::IReferenceCounted **, int *))(*(_DWORD *)a1 + 140);
  (*(void (__fastcall **)(glitch::IReferenceCounted **, int, const char *))(*(_DWORD *)a2 + 700))(
    &v25,
    a2,
    "PressedImage");
  v7(a1, &v25, &v20);
  v8 = v25;
  if ( v25 )
LABEL_10:
    glitch::IReferenceCounted::drop(v8);
LABEL_11:
  v9 = *(void (__fastcall **)(int, int))(*(_DWORD *)a1 + 176);
  v10 = (*(int (__fastcall **)(int, char *))(*(_DWORD *)a2 + 228))(a2, "Border");
  v9(a1, v10);
  v11 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "UseAlphaChannel");
  v12 = *(float *)a1;
  *(_BYTE *)(a1 + 346) = v11;
  return (*(int (__fastcall **)(int))(LODWORD(v12) + 12))(a1);
}


// ===== 6a6e30 glitch::gui::IGUIButton::~IGUIButton() =====
void __fastcall glitch::gui::IGUIButton::~IGUIButton(glitch::gui::IGUIButton *this)
{
  *(_DWORD *)this = off_985A30;
  *((_DWORD *)this + 86) = off_985B00;
  *((_DWORD *)this + 87) = off_985B20;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_985B34);
  LC_API_FREE_0(this);
}


// ===== 6a6e8c `virtual thunk to'glitch::gui::IGUIButton::~IGUIButton() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIButton::~IGUIButton(glitch::gui::IGUIButton *this)
{
  glitch::gui::IGUIButton::~IGUIButton((glitch::gui::IGUIButton *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6a6e9c `virtual thunk to'glitch::gui::IGUIButton::~IGUIButton() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIButton::~IGUIButton(glitch::gui::IGUIButton *this)
{
  glitch::gui::IGUIButton::~IGUIButton((glitch::gui::IGUIButton *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6a6eac glitch::gui::CGUIButton::onEvent(glitch::SEvent const&) =====
int __fastcall glitch::gui::CGUIButton::onEvent(int *a1, _DWORD *a2)
{
  int v4; // r3
  int v5; // r3
  int v7; // r2
  bool v8; // zf
  int v9; // r3
  bool v10; // zf
  int v11; // r3
  int v12; // r3
  int v13; // r3
  int v14; // r1
  int v15; // r5
  int v16; // r3
  int v17; // r3
  int v18; // r1
  int v19; // r3
  bool v20; // zf
  _DWORD v21[6]; // [sp+0h] [bp-34h] BYREF
  _DWORD v22[7]; // [sp+18h] [bp-1Ch] BYREF

  if ( !*((_BYTE *)a1 + 153) )
  {
    v5 = a1[9];
    if ( !v5 )
      return v5;
    return (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 8))(a1[9]);
  }
  v4 = *a2;
  if ( *a2 == 1 )
  {
    v12 = a2[5];
    if ( !v12 )
    {
      if ( (*(int (__fastcall **)(int, int *))(*(_DWORD *)a1[84] + 28))(a1[84], a1)
        && ((v17 = a2[2], v18 = a2[3], v17 < a1[18]) || v18 < a1[19] || v17 > a1[20] || v18 > a1[21]) )
      {
        (*(void (__fastcall **)(int, int *))(*(_DWORD *)a1[84] + 24))(a1[84], a1);
        return 0;
      }
      else
      {
        if ( !*((_BYTE *)a1 + 345) )
          (*(void (__fastcall **)(int *, int))(*a1 + 156))(a1, 1);
        (*(void (__fastcall **)(int, int *))(*(_DWORD *)a1[84] + 16))(a1[84], a1);
        return 1;
      }
    }
    if ( v12 != 3 )
      goto LABEL_5;
    v13 = a2[2];
    v14 = a2[3];
    v15 = *((unsigned __int8 *)a1 + 344);
    if ( v13 < a1[18] || v14 < a1[19] || v13 > a1[20] || v14 > a1[21] )
    {
      if ( !*((_BYTE *)a1 + 345) )
      {
LABEL_21:
        (*(void (__fastcall **)(int *))(*a1 + 156))(a1);
        return 1;
      }
    }
    else
    {
      if ( *((_BYTE *)a1 + 345) )
        (*(void (__fastcall **)(int *, int))(*a1 + 156))(a1, v15 ^ 1);
      else
        (*(void (__fastcall **)(int *))(*a1 + 156))(a1);
      if ( *((_BYTE *)a1 + 345) )
      {
        if ( *((unsigned __int8 *)a1 + 344) != v15 )
        {
          v16 = a1[9];
LABEL_44:
          v21[4] = 5;
          v21[2] = a1;
          v21[3] = 0;
          v21[0] = 0;
          (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v16 + 8))(v16, v21);
          return 1;
        }
      }
      else if ( v15 )
      {
        v16 = a1[9];
        if ( v16 )
          goto LABEL_44;
      }
    }
    return 1;
  }
  if ( v4 != 2 )
  {
    if ( !v4 && !a2[4] && (int *)a2[2] == a1 && !*((_BYTE *)a1 + 345) )
      (*(void (__fastcall **)(int *))(*a1 + 156))(a1);
    goto LABEL_5;
  }
  if ( !*((_BYTE *)a2 + 16) )
    goto LABEL_66;
  v7 = a2[3];
  v8 = v7 == 13;
  if ( v7 != 13 )
    v8 = v7 == 32;
  if ( !v8 )
  {
LABEL_66:
    if ( !*((_BYTE *)a1 + 344) || *((_BYTE *)a1 + 345) )
    {
      if ( *((_BYTE *)a2 + 16) || !*((_BYTE *)a1 + 344) )
        goto LABEL_5;
    }
    else if ( *((_BYTE *)a2 + 16) )
    {
      if ( a2[3] != 27 )
        goto LABEL_5;
      goto LABEL_21;
    }
    v9 = a2[3];
    v10 = v9 == 13;
    if ( v9 != 13 )
      v10 = v9 == 32;
    if ( !v10 )
    {
LABEL_5:
      v5 = a1[9];
      if ( v5 )
        return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v5 + 8))(a1[9], a2);
      return v5;
    }
    if ( !*((_BYTE *)a1 + 345) )
      (*(void (__fastcall **)(int *))(*a1 + 156))(a1);
    v11 = a1[9];
    if ( v11 )
    {
      v22[4] = 5;
      v22[2] = a1;
      v22[3] = 0;
      v22[0] = 0;
      (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v11 + 8))(v11, v22);
      return 1;
    }
    return 1;
  }
  v19 = *((unsigned __int8 *)a1 + 345);
  v20 = v19 == 0;
  if ( !*((_BYTE *)a1 + 345) )
    v19 = *a1;
  if ( !v20 )
    v19 = *a1;
  (*(void (**)(void))(v19 + 156))();
  return 1;
}


// ===== 6a7224 glitch::gui::CGUIButton::draw(void) =====
int __fastcall glitch::gui::CGUIButton::draw(int this)
{
  int v1; // r4
  int v2; // r6
  int v3; // r0
  int v4; // r5
  int v5; // r7
  int v6; // r1
  int v7; // r2
  int v8; // r3
  int v9; // r10
  int v10; // r3
  int v11; // lr
  int v12; // r0
  int v13; // r12
  int v14; // r8
  int v15; // r11
  int v16; // kr00_4
  int v17; // r10
  int v18; // r8
  int v19; // r10
  int v20; // r9
  int (__fastcall *v21)(int, int, _DWORD *, int, int, int, unsigned int, _DWORD, int); // r7
  unsigned int Time; // r0
  int v23; // r7
  int v24; // r12
  int v25; // r3
  int v26; // r1
  int v27; // r2
  int v28; // r3
  int v29; // r0
  int v30; // r1
  int (__fastcall *v31)(int, int, int *, int, int, int, int); // r6
  int v32; // r4
  int *i; // r5
  int *v34; // t1
  int v35; // r8
  int v36; // lr
  int v37; // kr08_4
  int v38; // kr0C_4
  int v39; // r1
  int v40; // lr
  int v41; // r8
  int v42; // r10
  int v43; // r9
  int (__fastcall *v44)(int, int, _DWORD *, int, int, int, unsigned int, _DWORD, int); // r7
  unsigned int v45; // r0
  int v46; // [sp+24h] [bp-30h] BYREF
  int v47; // [sp+28h] [bp-2Ch]
  int v48; // [sp+2Ch] [bp-28h]
  int v49; // [sp+30h] [bp-24h]
  int v50; // [sp+34h] [bp-20h] BYREF
  int v51; // [sp+38h] [bp-1Ch]
  _DWORD v52[2]; // [sp+3Ch] [bp-18h] BYREF
  int v53; // [sp+44h] [bp-10h]
  int v54; // [sp+48h] [bp-Ch]
  int v55; // [sp+4Ch] [bp-8h]

  v1 = this;
  if ( *(_BYTE *)(this + 152) )
  {
    v2 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 336) + 56))(*(_DWORD *)(this + 336));
    v3 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 336) + 32))(*(_DWORD *)(v1 + 336));
    v4 = *(_DWORD *)(v1 + 356);
    v5 = v3;
    if ( !v4 )
      v4 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 40))(v2, 1);
    this = *(_DWORD *)(v1 + 56);
    v6 = *(_DWORD *)(v1 + 60);
    v7 = *(_DWORD *)(v1 + 64);
    v8 = *(_DWORD *)(v1 + 68);
    v9 = *(unsigned __int8 *)(v1 + 344);
    v52[0] = (v7 + this) / 2;
    v52[1] = (v8 + v6) / 2;
    v46 = this;
    v47 = v6;
    v48 = v7;
    v49 = v8;
    if ( v9 )
    {
      if ( *(_BYTE *)(v1 + 347) )
        this = (*(int (__fastcall **)(int, int, int *, int))(*(_DWORD *)v2 + 68))(v2, v1, &v46, v1 + 72);
      v10 = *(_DWORD *)(v1 + 436);
      if ( v10 )
      {
        v11 = *(_DWORD *)(v1 + 464);
        v12 = *(_DWORD *)(v1 + 456);
        v13 = *(_DWORD *)(v1 + 468);
        v14 = *(_DWORD *)(v1 + 460);
        v15 = *(_DWORD *)(v1 + 432);
        v16 = *(_DWORD *)(v1 + 64) + *(_DWORD *)(v1 + 56);
        v17 = (*(_DWORD *)(v1 + 68) + *(_DWORD *)(v1 + 60)) / 2 - (v13 - v14) / 2;
        v50 = v16 / 2 - (v11 - v12) / 2;
        v51 = v17;
        if ( v15 == v10
          && v12 == *(_DWORD *)(v1 + 440)
          && v14 == *(_DWORD *)(v1 + 444)
          && v11 == *(_DWORD *)(v1 + 448)
          && v13 == *(_DWORD *)(v1 + 452) )
        {
          v50 = v16 / 2 - (v11 - v12) / 2 + 1;
          v51 = v17 + 1;
        }
        v54 = -1;
        this = glitch::video::C2DDriver::draw2DImage(
                 v5,
                 (_DWORD *)(v1 + 436),
                 &v50,
                 (_DWORD *)(v1 + 456),
                 v1 + 72,
                 -1,
                 *(_BYTE *)(v1 + 346));
      }
      v18 = *(_DWORD *)(v1 + 352);
      if ( v18 )
      {
        v19 = *(_DWORD *)(v1 + 372);
        if ( v19 != -1 )
        {
          v20 = *(_DWORD *)(v1 + 348);
          v21 = *(int (__fastcall **)(int, int, _DWORD *, int, int, int, unsigned int, _DWORD, int))(*(_DWORD *)v18 + 36);
          Time = glitch::os::Timer::getTime((glitch::os::Timer *)this);
          this = v21(v18, v19, v52, v1 + 72, v1 + 376, v20, Time, *(unsigned __int8 *)(v1 + 380), 1);
        }
      }
    }
    else
    {
      if ( *(_BYTE *)(v1 + 347) )
        this = (*(int (__fastcall **)(int, int, int *, int))(*(_DWORD *)v2 + 64))(v2, v1, &v46, v1 + 72);
      if ( *(_DWORD *)(v1 + 432) )
      {
        v35 = *(_DWORD *)(v1 + 64);
        v36 = *(_DWORD *)(v1 + 56);
        v37 = *(_DWORD *)(v1 + 452) - *(_DWORD *)(v1 + 444);
        v38 = *(_DWORD *)(v1 + 68) + *(_DWORD *)(v1 + 60);
        v39 = *(_DWORD *)(v1 + 448) - *(_DWORD *)(v1 + 440);
        v55 = -1;
        v40 = v35 + v36;
        LOBYTE(v35) = *(_BYTE *)(v1 + 346);
        v51 = v38 / 2 - v37 / 2;
        v50 = v40 / 2 - v39 / 2;
        this = glitch::video::C2DDriver::draw2DImage(
                 v5,
                 (_DWORD *)(v1 + 432),
                 &v50,
                 (_DWORD *)(v1 + 440),
                 v1 + 72,
                 -1,
                 v35);
      }
      v41 = *(_DWORD *)(v1 + 352);
      if ( v41 )
      {
        v42 = *(_DWORD *)(v1 + 360);
        if ( v42 != -1 )
        {
          v43 = *(_DWORD *)(v1 + 348);
          v44 = *(int (__fastcall **)(int, int, _DWORD *, int, int, int, unsigned int, _DWORD, int))(*(_DWORD *)v41 + 36);
          v45 = glitch::os::Timer::getTime((glitch::os::Timer *)this);
          this = v44(v41, v42, v52, v1 + 72, v1 + 364, v43, v45, *(unsigned __int8 *)(v1 + 368), 1);
        }
      }
    }
    v23 = *(_DWORD *)(v1 + 228);
    if ( (unsigned int)(*(_DWORD *)(v1 + 224) - v23) >> 2 )
    {
      v24 = *(unsigned __int8 *)(v1 + 344);
      v25 = *(_DWORD *)(v1 + 60);
      this = *(_DWORD *)(v1 + 56);
      v26 = *(_DWORD *)(v1 + 64);
      v27 = *(_DWORD *)(v1 + 68);
      v47 = v25;
      if ( v24 )
        v47 = v25 + 2;
      v46 = this;
      v48 = v26;
      v49 = v27;
      if ( v4 )
      {
        v28 = *(_DWORD *)v2;
        v29 = v2;
        if ( *(_BYTE *)(v1 + 153) )
          v30 = 8;
        else
          v30 = 9;
        v31 = *(int (__fastcall **)(int, int, int *, int, int, int, int))(*(_DWORD *)v4 + 12);
        v53 = (*(int (__fastcall **)(int, int))(v28 + 16))(v29, v30);
        this = v31(v4, v23, &v46, v53, 1, 1, v1 + 72);
      }
    }
    if ( *(_BYTE *)(v1 + 152) )
    {
      v34 = *(int **)(v1 + 4);
      v32 = v1 + 4;
      for ( i = v34; i != (int *)v32; i = (int *)*i )
        this = (*(int (__fastcall **)(int))(*(_DWORD *)i[2] + 32))(i[2]);
    }
  }
  return this;
}


// ===== 6a764c `virtual thunk to'glitch::gui::CGUIButton::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::CGUIButton::deserializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUIButton::deserializeAttributes((int)a1 + *(_DWORD *)(*a1 - 20), a2);
}


// ===== 6a765c `virtual thunk to'glitch::gui::CGUIButton::~CGUIButton() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIButton::~CGUIButton(glitch::gui::CGUIButton *this)
{
  glitch::gui::CGUIButton::~CGUIButton((glitch::gui::CGUIButton *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6a766c `virtual thunk to'glitch::gui::CGUIButton::~CGUIButton() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIButton::~CGUIButton(glitch::gui::CGUIButton *this)
{
  glitch::gui::CGUIButton::~CGUIButton((glitch::gui::CGUIButton *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6a767c `virtual thunk to'glitch::gui::CGUIButton::~CGUIButton() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIButton::~CGUIButton(glitch::gui::CGUIButton *this)
{
  glitch::gui::CGUIButton::~CGUIButton((glitch::gui::CGUIButton *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6a768c `virtual thunk to'glitch::gui::CGUIButton::~CGUIButton() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIButton::~CGUIButton(glitch::gui::CGUIButton *this)
{
  glitch::gui::CGUIButton::~CGUIButton((glitch::gui::CGUIButton *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6a769c `virtual thunk to'glitch::gui::CGUIButton::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::CGUIButton::serializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUIButton::serializeAttributes((int)a1 + *(_DWORD *)(*a1 - 16), a2);
}


// ===== 6a76ac glitch::gui::CGUICheckBox::setChecked(bool) =====
int __fastcall glitch::gui::CGUICheckBox::setChecked(int this, bool a2)
{
  *(_BYTE *)(this + 345) = a2;
  return this;
}


// ===== 6a76b4 glitch::gui::CGUICheckBox::isChecked(void) =====
int __fastcall glitch::gui::CGUICheckBox::isChecked(glitch::gui::CGUICheckBox *this)
{
  return *((unsigned __int8 *)this + 345);
}


// ===== 6a76bc glitch::gui::CGUICheckBox::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::CGUICheckBox::serializeAttributes(int a1, int a2)
{
  glitch::gui::IGUIElement::serializeAttributes((_DWORD *)a1, a2);
  return (*(int (__fastcall **)(int, char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
           a2,
           "Checked",
           *(unsigned __int8 *)(a1 + 345),
           0);
}


// ===== 6a76f4 `global constructor keyed to'.._source_glitch_gui_CGUICheckBox.cpp =====
void `global constructor keyed to'.._source_glitch_gui_CGUICheckBox.cpp()
{
  dword_9F76A0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F769C = 1056964608;
}


// ===== 6a7714 glitch::gui::IGUIElement::getNextElement(int,bool,bool,glitch::gui::IGUIElement*&,glitch::gui::IGUIElement*&,bool) [clone] =====
int __fastcall glitch::gui::IGUIElement::getNextElement(int a1, int a2, int a3, int a4, char a5)
{
  int *v5; // r4
  int *v6; // r6
  int v10; // r0
  int v12; // r3
  _BOOL4 v13; // r2

  v6 = (int *)(a1 + 4);
  v5 = *(int **)(a1 + 4);
  if ( v5 == (int *)(a1 + 4) )
    return 0;
  while ( 1 )
  {
    if ( !(*(int (__fastcall **)(int))(*(_DWORD *)v5[2] + 44))(v5[2]) && !a5 )
      goto LABEL_10;
    if ( a2 )
    {
      v10 = v5[2];
    }
    else
    {
      v10 = v5[2];
      if ( *(_BYTE *)(v10 + 316) )
        goto LABEL_10;
    }
    if ( !*(_BYTE *)(v10 + 308) || *(unsigned __int8 *)(v10 + 316) != a2 )
    {
LABEL_9:
      if ( glitch::gui::IGUIElement::getNextElement(v10, a2, a3, a4, 0) )
        return 1;
      goto LABEL_10;
    }
    v12 = *(_DWORD *)(v10 + 312);
    if ( v12 == 0x40000000 )
      break;
    if ( !*(_DWORD *)a4 )
    {
      if ( v12 >= -1 )
        goto LABEL_18;
LABEL_17:
      *(_DWORD *)a4 = v10;
      v10 = v5[2];
      goto LABEL_18;
    }
    v13 = v12 > *(_DWORD *)(*(_DWORD *)a4 + 312);
    if ( v12 >= -1 )
      v13 = 0;
    if ( v13 )
      goto LABEL_17;
LABEL_18:
    if ( *(_DWORD *)a3 && v12 <= *(_DWORD *)(*(_DWORD *)a3 + 312) )
      goto LABEL_9;
    *(_DWORD *)a3 = v10;
    if ( glitch::gui::IGUIElement::getNextElement(v5[2], a2, a3, a4, 0) )
      return 1;
LABEL_10:
    v5 = (int *)*v5;
    if ( v5 == v6 )
      return 0;
  }
  *(_DWORD *)a4 = v10;
  return 1;
}


// ===== 6a7868 glitch::gui::IGUIElement::setTabOrder(int) [clone] =====
int __fastcall glitch::gui::IGUIElement::setTabOrder(int this, int a2)
{
  int v2; // r1
  int v3; // r4
  int i; // r3
  int v5; // [sp+8h] [bp-8h] BYREF
  int v6; // [sp+Ch] [bp-4h] BYREF

  v2 = *(unsigned __int8 *)(this + 316);
  v3 = this;
  *(_DWORD *)(this + 312) = 0;
  if ( v2 )
  {
    this = *(_DWORD *)(this + 36);
    if ( this )
    {
      for ( i = *(_DWORD *)(this + 36); i; i = *(_DWORD *)(i + 36) )
        this = i;
    }
    else
    {
      this = v3;
    }
LABEL_9:
    v5 = 0;
    v6 = 0;
    this = glitch::gui::IGUIElement::getNextElement(this, v2, (int)&v6, (int)&v5, 1);
    if ( v6 )
      *(_DWORD *)(v3 + 312) = *(_DWORD *)(v6 + 312) + 1;
  }
  else
  {
    while ( 1 )
    {
      this = *(_DWORD *)(this + 36);
      if ( !this )
        break;
      if ( *(_BYTE *)(this + 316) )
        goto LABEL_9;
    }
  }
  return this;
}


// ===== 6a7914 std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block()
{
  ;
}


// ===== 6a7918 glitch::gui::IGUICheckBox::IGUICheckBox(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::IGUICheckBox::IGUICheckBox(int a1, int *a2, int a3, int a4, int a5, int *a6)
{
  int v7; // r10
  int v8; // r8
  int v9; // lr
  int v10; // r12
  int v11; // r6
  int v13; // r0
  _DWORD *v16; // r3
  int v17; // r0
  int v18; // r12
  int v19; // r10
  int v20; // r8
  int v21; // r2
  int v22; // r1
  int v23; // r6
  int v24; // r7
  int v25; // r0
  int v26; // r1
  int v27; // r1
  int v28; // r2
  int v29; // r1
  int v30; // r3
  int v31; // r1
  bool v32; // cc
  int v33; // r3
  int v34; // r3
  int v36; // [sp+Ch] [bp-10h]

  v7 = a6[3];
  v8 = *a6;
  v9 = a6[1];
  v10 = a6[2];
  *(_DWORD *)a1 = off_95C300;
  v11 = a2[1];
  *(_DWORD *)a1 = v11;
  *(_DWORD *)(a1 + *(_DWORD *)(v11 - 12)) = a2[2];
  v36 = a1 + 4;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[3];
  *(_DWORD *)(a1 + 8) = a1 + 4;
  v13 = a1 + 12;
  *(_DWORD *)(a1 + 44) = v9;
  *(_DWORD *)(a1 + 48) = v10;
  *(_DWORD *)(a1 + 32) = v13;
  *(_DWORD *)(a1 + 28) = v13;
  *(_DWORD *)(a1 + 40) = v8;
  *(_DWORD *)(a1 + 4) = v36;
  *(_DWORD *)(a1 + 52) = v7;
  *(_DWORD *)(a1 + 56) = v8;
  *(_DWORD *)(a1 + 60) = v9;
  *(_DWORD *)(a1 + 64) = v10;
  *(_DWORD *)(a1 + 68) = v7;
  *(_DWORD *)(a1 + 72) = v8;
  *(_DWORD *)(a1 + 76) = v9;
  *(_DWORD *)(a1 + 80) = v10;
  *(_DWORD *)(a1 + 88) = v8;
  *(_DWORD *)(a1 + 92) = v9;
  *(_DWORD *)(a1 + 96) = v10;
  *(_DWORD *)(a1 + 100) = v7;
  *(_DWORD *)(a1 + 132) = 0;
  *(_DWORD *)(a1 + 84) = v7;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
  *(_BYTE *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 112) = 0;
  *(_DWORD *)(a1 + 116) = 0;
  *(_DWORD *)(a1 + 136) = 0;
  *(_DWORD *)(a1 + 140) = 0;
  *(_DWORD *)(a1 + 144) = 1;
  *(_DWORD *)(a1 + 148) = 1;
  *(_BYTE *)(a1 + 152) = 1;
  *(_BYTE *)(a1 + 153) = 1;
  *(_BYTE *)(a1 + 154) = 0;
  *(_BYTE *)(a1 + 155) = 0;
  *(_BYTE *)(a1 + 156) = 0;
  *(_DWORD *)(a1 + 224) = a1 + 160;
  *(_DWORD *)(a1 + 228) = a1 + 160;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_DWORD **)(a1 + 224) = 0;
  *(_DWORD *)(a1 + 296) = a1 + 232;
  *(_DWORD *)(a1 + 300) = a1 + 232;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_DWORD **)(a1 + 296) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 336) = a3;
  *(_DWORD *)(a1 + 304) = a5;
  *(_DWORD *)(a1 + 312) = -1;
  *(_DWORD *)(a1 + 340) = 1;
  *(_BYTE *)(a1 + 308) = 0;
  *(_BYTE *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  if ( a4 )
    (*(void (__fastcall **)(int, int))(*(_DWORD *)a4 + 20))(a4, a1);
  v16 = *(_DWORD **)(a1 + 36);
  if ( v16 )
  {
    v17 = v16[15];
    v18 = v16[14];
    v19 = v16[16];
    v20 = v16[17];
    v21 = v17 + *(_DWORD *)(a1 + 68);
    v22 = v18 + *(_DWORD *)(a1 + 64);
    v23 = v17 + *(_DWORD *)(a1 + 60);
    v24 = v18 + *(_DWORD *)(a1 + 56);
    *(_DWORD *)(a1 + 76) = v23;
    *(_DWORD *)(a1 + 84) = v21;
    *(_DWORD *)(a1 + 72) = v24;
    *(_DWORD *)(a1 + 80) = v22;
    *(_DWORD *)(a1 + 68) = v21;
    *(_DWORD *)(a1 + 112) = v19;
    *(_DWORD *)(a1 + 116) = v20;
    *(_DWORD *)(a1 + 104) = v18;
    *(_DWORD *)(a1 + 108) = v17;
    *(_DWORD *)(a1 + 56) = v24;
    *(_DWORD *)(a1 + 60) = v23;
    *(_DWORD *)(a1 + 64) = v22;
    v25 = v16[20];
    if ( v22 > v25 )
      *(_DWORD *)(a1 + 80) = v25;
    v26 = v16[21];
    if ( v21 > v26 )
      *(_DWORD *)(a1 + 84) = v26;
    v27 = v16[18];
    v28 = *(_DWORD *)(a1 + 72);
    if ( v27 > v28 )
    {
      *(_DWORD *)(a1 + 72) = v27;
      v28 = v27;
    }
    v29 = v16[19];
    v30 = *(_DWORD *)(a1 + 76);
    if ( v29 > v30 )
    {
      *(_DWORD *)(a1 + 76) = v29;
      v30 = v29;
    }
    v31 = *(_DWORD *)(a1 + 84);
    v32 = v31 < v30;
    v33 = *(_DWORD *)(a1 + 80);
    if ( v32 )
      *(_DWORD *)(a1 + 76) = v31;
    if ( v28 > v33 )
      *(_DWORD *)(a1 + 72) = v33;
  }
  v34 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v34 - 12)) = a2[4];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[5];
  return a1;
}


// ===== 6a7bd4 glitch::gui::CGUICheckBox::CGUICheckBox(bool,glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::CGUICheckBox::CGUICheckBox(int a1, char a2, int a3, int a4, int a5, int *a6)
{
  int v6; // r10
  int v7; // r7
  int v8; // r8
  int v12[4]; // [sp+8h] [bp-10h] BYREF

  *(_DWORD *)(a1 + 360) = 1;
  *(_DWORD *)(a1 + 352) = off_98646C;
  *(_DWORD *)(a1 + 356) = off_95B720;
  *(_DWORD *)&byte_4[a1 + 352] = off_98648C;
  v6 = a6[3];
  v7 = *a6;
  v8 = a6[1];
  v12[2] = a6[2];
  v12[0] = v7;
  v12[1] = v8;
  v12[3] = v6;
  glitch::gui::IGUICheckBox::IGUICheckBox(a1, (int *)off_98628C, a3, a4, a5, v12);
  *(_BYTE *)(a1 + 345) = a2;
  *(_DWORD *)(a1 + 348) = 0;
  *(_BYTE *)(a1 + 308) = 1;
  *(_DWORD *)a1 = off_9861C0;
  *(_DWORD *)(a1 + 352) = off_98625C;
  *(_DWORD *)(a1 + 356) = off_98627C;
  *(_BYTE *)(a1 + 344) = 0;
  glitch::gui::IGUIElement::setTabOrder(a1, (int)off_98627C);
  return a1;
}


// ===== 6a7cb0 glitch::gui::CGUICheckBox::CGUICheckBox(bool,glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::CGUICheckBox::CGUICheckBox(int a1, int *a2, char a3, int a4, int a5, int a6, int *a7)
{
  int v9; // lr
  int v10; // r7
  int v11; // r4
  int v13; // r2
  int v14; // r1
  int v16[5]; // [sp+8h] [bp-14h] BYREF

  v9 = a7[3];
  v10 = *a7;
  v11 = a7[1];
  v16[2] = a7[2];
  v16[1] = v11;
  v16[3] = v9;
  v16[0] = v10;
  glitch::gui::IGUICheckBox::IGUICheckBox(a1, a2 + 1, a4, a5, a6, v16);
  v13 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v13 - 12)) = a2[7];
  v14 = a2[8];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = v14;
  *(_BYTE *)(a1 + 345) = a3;
  *(_DWORD *)(a1 + 348) = 0;
  *(_BYTE *)(a1 + 308) = 1;
  *(_BYTE *)(a1 + 344) = 0;
  glitch::gui::IGUIElement::setTabOrder(a1, v14);
  return a1;
}


// ===== 6a7d54 glitch::gui::IGUICheckBox::~IGUICheckBox() =====
void __fastcall glitch::gui::IGUICheckBox::~IGUICheckBox(glitch::gui::IGUICheckBox *this)
{
  *(_DWORD *)this = off_985FC0;
  *((_DWORD *)this + 86) = off_98605C;
  *((_DWORD *)this + 87) = off_98607C;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_98608C);
}


// ===== 6a7da8 `virtual thunk to'glitch::gui::IGUICheckBox::~IGUICheckBox() =====
void __fastcall `virtual thunk to'glitch::gui::IGUICheckBox::~IGUICheckBox(glitch::gui::IGUICheckBox *this)
{
  glitch::gui::IGUICheckBox::~IGUICheckBox((glitch::gui::IGUICheckBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6a7db8 `virtual thunk to'glitch::gui::IGUICheckBox::~IGUICheckBox() =====
void __fastcall `virtual thunk to'glitch::gui::IGUICheckBox::~IGUICheckBox(glitch::gui::IGUICheckBox *this)
{
  glitch::gui::IGUICheckBox::~IGUICheckBox((glitch::gui::IGUICheckBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6a7dc8 glitch::gui::CGUICheckBox::~CGUICheckBox() =====
void __fastcall glitch::gui::CGUICheckBox::~CGUICheckBox(glitch::gui::CGUICheckBox *this)
{
  *((_DWORD *)this + 88) = off_98625C;
  *((_DWORD *)this + 89) = off_98627C;
  *(_DWORD *)this = off_9862C8;
  *(int *)((char *)&elf_hash_bucket[33] + (_DWORD)this) = (int)off_986364;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = off_986384;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_986290);
}


// ===== 6a7e38 `virtual thunk to'glitch::gui::CGUICheckBox::~CGUICheckBox() =====
void __fastcall `virtual thunk to'glitch::gui::CGUICheckBox::~CGUICheckBox(glitch::gui::CGUICheckBox *this)
{
  glitch::gui::CGUICheckBox::~CGUICheckBox((glitch::gui::CGUICheckBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6a7e48 `virtual thunk to'glitch::gui::CGUICheckBox::~CGUICheckBox() =====
void __fastcall `virtual thunk to'glitch::gui::CGUICheckBox::~CGUICheckBox(glitch::gui::CGUICheckBox *this)
{
  glitch::gui::CGUICheckBox::~CGUICheckBox((glitch::gui::CGUICheckBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6a7e58 glitch::gui::CGUICheckBox::~CGUICheckBox() =====
void __fastcall glitch::gui::CGUICheckBox::~CGUICheckBox(glitch::gui::CGUICheckBox *this)
{
  glitch::gui::CGUICheckBox::~CGUICheckBox(this);
  LC_API_FREE_0(this);
}


// ===== 6a7e74 `virtual thunk to'glitch::gui::CGUICheckBox::~CGUICheckBox() =====
void __fastcall `virtual thunk to'glitch::gui::CGUICheckBox::~CGUICheckBox(glitch::gui::CGUICheckBox *this)
{
  glitch::gui::CGUICheckBox::~CGUICheckBox((glitch::gui::CGUICheckBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6a7e84 `virtual thunk to'glitch::gui::CGUICheckBox::~CGUICheckBox() =====
void __fastcall `virtual thunk to'glitch::gui::CGUICheckBox::~CGUICheckBox(glitch::gui::CGUICheckBox *this)
{
  glitch::gui::CGUICheckBox::~CGUICheckBox((glitch::gui::CGUICheckBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6a7e94 glitch::gui::CGUICheckBox::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::CGUICheckBox::deserializeAttributes(int a1, int a2)
{
  *(_BYTE *)(a1 + 345) = (*(int (__fastcall **)(int, char *))(*(_DWORD *)a2 + 228))(a2, "Checked");
  return glitch::gui::IGUIElement::deserializeAttributes((float *)a1, a2);
}


// ===== 6a7ed8 glitch::gui::CGUICheckBox::onEvent(glitch::SEvent const&) =====
char *__fastcall glitch::gui::CGUICheckBox::onEvent(int a1, _DWORD *a2)
{
  int v4; // r6
  int v5; // r3
  int v7; // r3
  bool v8; // zf
  int v9; // r3
  bool v10; // zf
  int v11; // r3
  char v12; // r1
  int v13; // r3
  int v14; // r6
  int v15; // r3
  int v16; // r2
  int v17; // r0
  int v18; // r0
  unsigned int Time; // r0
  int v20; // r3
  _DWORD v21[6]; // [sp+0h] [bp-30h] BYREF
  _DWORD v22[6]; // [sp+18h] [bp-18h] BYREF

  if ( !*(_BYTE *)(a1 + 153) )
    goto LABEL_5;
  v4 = *a2;
  if ( *a2 == 1 )
  {
    v13 = a2[5];
    if ( !v13 )
    {
      *(_BYTE *)(a1 + 344) = 1;
      Time = glitch::os::Timer::getTime((glitch::os::Timer *)a1);
      v20 = *(_DWORD *)(a1 + 336);
      *(_DWORD *)(a1 + 348) = Time;
      (*(void (__fastcall **)(int, int))(*(_DWORD *)v20 + 16))(v20, a1);
      return (_BYTE *)(&dword_0 + 1);
    }
    if ( v13 != 3 )
      goto LABEL_5;
    v14 = *(unsigned __int8 *)(a1 + 344);
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 336) + 24))(*(_DWORD *)(a1 + 336), a1);
    *(_BYTE *)(a1 + 344) = 0;
    if ( v14 )
    {
      v15 = *(_DWORD *)(a1 + 36);
      if ( v15 )
      {
        v16 = a2[2];
        v17 = a2[3];
        if ( v16 >= *(_DWORD *)(a1 + 72)
          && v17 >= *(_DWORD *)(a1 + 76)
          && v16 <= *(_DWORD *)(a1 + 80)
          && v17 <= *(_DWORD *)(a1 + 84) )
        {
          v18 = *(_DWORD *)(a1 + 36);
          *(_BYTE *)(a1 + 345) ^= 1u;
          v21[4] = 7;
          v21[3] = 0;
          v21[0] = 0;
          v21[2] = a1;
          (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v15 + 8))(v18, v21);
          return (_BYTE *)(&dword_0 + 1);
        }
      }
    }
    return (_BYTE *)(&dword_0 + 1);
  }
  if ( v4 != 2 )
  {
    if ( !v4 && !a2[4] && a2[2] == a1 )
      *(_BYTE *)(a1 + 344) = 0;
    goto LABEL_5;
  }
  if ( *((_BYTE *)a2 + 16) )
  {
    v7 = a2[3];
    v8 = v7 == 13;
    if ( v7 != 13 )
      v8 = v7 == 32;
    if ( v8 )
    {
      *(_BYTE *)(a1 + 344) = 1;
      return (_BYTE *)(&dword_0 + 1);
    }
  }
  if ( *(_BYTE *)(a1 + 344) )
  {
    if ( *((_BYTE *)a2 + 16) )
    {
      if ( a2[3] == 27 )
      {
        *(_BYTE *)(a1 + 344) = 0;
        return (char *)&dword_0 + 1;
      }
      goto LABEL_5;
    }
    v9 = a2[3];
    v10 = v9 == 13;
    if ( v9 != 13 )
      v10 = v9 == 32;
    if ( v10 )
    {
      v11 = *(_DWORD *)(a1 + 36);
      *(_BYTE *)(a1 + 344) = 0;
      if ( v11 )
      {
        v12 = *(_BYTE *)(a1 + 345);
        v22[3] = 0;
        *(_BYTE *)(a1 + 345) = v12 ^ 1;
        v22[4] = 7;
        v22[0] = 0;
        v22[2] = a1;
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v11 + 8))(v11, v22);
        return (_BYTE *)(&dword_0 + 1);
      }
      return (_BYTE *)(&dword_0 + 1);
    }
  }
LABEL_5:
  v5 = *(_DWORD *)(a1 + 36);
  if ( v5 )
    return (char *)(*(int (__fastcall **)(_DWORD, _DWORD *))(*(_DWORD *)v5 + 8))(*(_DWORD *)(a1 + 36), a2);
  else
    return nullptr;
}


// ===== 6a8100 glitch::gui::IGUICheckBox::~IGUICheckBox() =====
void __fastcall glitch::gui::IGUICheckBox::~IGUICheckBox(glitch::gui::IGUICheckBox *this)
{
  *(_DWORD *)this = off_985FC0;
  *((_DWORD *)this + 86) = off_98605C;
  *((_DWORD *)this + 87) = off_98607C;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_98608C);
  LC_API_FREE_0(this);
}


// ===== 6a815c `virtual thunk to'glitch::gui::IGUICheckBox::~IGUICheckBox() =====
void __fastcall `virtual thunk to'glitch::gui::IGUICheckBox::~IGUICheckBox(glitch::gui::IGUICheckBox *this)
{
  glitch::gui::IGUICheckBox::~IGUICheckBox((glitch::gui::IGUICheckBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6a816c `virtual thunk to'glitch::gui::IGUICheckBox::~IGUICheckBox() =====
void __fastcall `virtual thunk to'glitch::gui::IGUICheckBox::~IGUICheckBox(glitch::gui::IGUICheckBox *this)
{
  glitch::gui::IGUICheckBox::~IGUICheckBox((glitch::gui::IGUICheckBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6a817c glitch::gui::CGUICheckBox::draw(void) =====
int __fastcall glitch::gui::CGUICheckBox::draw(int this)
{
  int v1; // r4
  int v2; // r5
  int v3; // r6
  int v4; // r2
  int v5; // r3
  int v6; // r0
  int (__fastcall *v7)(int, int); // r10
  int v8; // r1
  int v9; // r4
  int *i; // r5
  int *v11; // t1
  int v12; // r2
  int v13; // r3
  int v14; // r6
  int v15; // r6
  int v16; // r3
  int v17; // r0
  int (__fastcall *v18)(int, int, int *, int, _DWORD, int, int); // r5
  int v19; // r10
  glitch::os::Timer *v20; // r9
  int (__fastcall *v21)(glitch::os::Timer *, int, int, _DWORD *, int, unsigned int, _DWORD, int); // r10
  int v22; // r11
  unsigned int Time; // r0
  int v24; // [sp+18h] [bp-24h] BYREF
  int v25; // [sp+1Ch] [bp-20h]
  int v26; // [sp+20h] [bp-1Ch]
  int v27; // [sp+24h] [bp-18h]
  _DWORD v28[2]; // [sp+28h] [bp-14h] BYREF
  int v29; // [sp+30h] [bp-Ch]
  int v30; // [sp+34h] [bp-8h]

  v1 = this;
  if ( *(_BYTE *)(this + 152) )
  {
    v2 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 336) + 56))(*(_DWORD *)(this + 336));
    v3 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 24))(v2, 3);
    v4 = *(_DWORD *)(v1 + 56);
    v5 = *(_DWORD *)(v1 + 60) + (*(_DWORD *)(v1 + 68) - *(_DWORD *)(v1 + 60) - v3) / 2;
    v6 = *(unsigned __int8 *)(v1 + 344);
    v26 = v3 + v4;
    v27 = v5 + v3;
    v24 = v4;
    v25 = v5;
    v7 = *(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 72);
    if ( v6 || !*(_BYTE *)(v1 + 153) )
      v8 = 2;
    else
      v8 = 6;
    v30 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 16))(v2, v8);
    this = v7(v2, v1);
    if ( *(_BYTE *)(v1 + 345) )
    {
      this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 336) + 56))(*(_DWORD *)(v1 + 336));
      if ( this )
      {
        v20 = (glitch::os::Timer *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 336) + 56))(*(_DWORD *)(v1 + 336));
        v21 = *(int (__fastcall **)(glitch::os::Timer *, int, int, _DWORD *, int, unsigned int, _DWORD, int))(*(_DWORD *)v20 + 96);
        v28[0] = (v26 + v24) / 2;
        v28[1] = (v27 + v25) / 2;
        v22 = *(_DWORD *)(v1 + 348);
        Time = glitch::os::Timer::getTime(v20);
        this = v21(v20, v1, 10, v28, v22, Time, 0, v1 + 72);
      }
    }
    if ( (unsigned int)(*(_DWORD *)(v1 + 224) - *(_DWORD *)(v1 + 228)) >> 2 )
    {
      v12 = *(_DWORD *)(v1 + 64);
      v13 = *(_DWORD *)(v1 + 68);
      v14 = *(_DWORD *)(v1 + 56) + 5 + v3;
      v25 = *(_DWORD *)(v1 + 60);
      v24 = v14;
      v26 = v12;
      v27 = v13;
      this = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v2 + 40))(v2, 0);
      v15 = this;
      if ( this )
      {
        v16 = *(_DWORD *)v2;
        v17 = v2;
        v18 = *(int (__fastcall **)(int, int, int *, int, _DWORD, int, int))(*(_DWORD *)v15 + 12);
        v19 = *(_DWORD *)(v1 + 228);
        v29 = (*(int (__fastcall **)(int, int))(v16 + 16))(v17, 8);
        this = v18(v15, v19, &v24, v29, 0, 1, v1 + 72);
      }
    }
    if ( *(_BYTE *)(v1 + 152) )
    {
      v11 = *(int **)(v1 + 4);
      v9 = v1 + 4;
      for ( i = v11; i != (int *)v9; i = (int *)*i )
        this = (*(int (__fastcall **)(int))(*(_DWORD *)i[2] + 32))(i[2]);
    }
  }
  return this;
}


// ===== 6a8418 `virtual thunk to'glitch::gui::CGUICheckBox::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::CGUICheckBox::deserializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUICheckBox::deserializeAttributes((int)a1 + *(_DWORD *)(*a1 - 20), a2);
}


// ===== 6a8428 `virtual thunk to'glitch::gui::CGUICheckBox::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::CGUICheckBox::serializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUICheckBox::serializeAttributes((int)a1 + *(_DWORD *)(*a1 - 16), a2);
}


// ===== 6a8438 glitch::video::SColorHSL::toRGB1(float,float,float) =====
unsigned int __fastcall glitch::video::SColorHSL::toRGB1(glitch::video::SColorHSL *this, float a2, float a3, float a4)
{
  float v4; // r5
  float i; // r4
  float v6; // r1
  float v7; // r0

  v4 = a2;
  for ( i = a4; i > 6.2832; i = i - 6.2832 )
    ;
  for ( ; i < 0.0; i = i + 6.2832 )
    ;
  if ( i < 1.0472 )
  {
    v7 = a3 - a2;
    v6 = i;
    goto LABEL_10;
  }
  if ( i >= 3.1416 )
  {
    if ( i >= 4.1888 )
      return (unsigned int)(float)(v4 * 255.0);
    v6 = 4.1888 - i;
    v7 = a3 - v4;
LABEL_10:
    v4 = v4 + (float)((float)(v7 * v6) / 1.0472);
    return (unsigned int)(float)(v4 * 255.0);
  }
  v4 = a3;
  return (unsigned int)(float)(v4 * 255.0);
}


// ===== 6a8580 glitch::video::SColorHSL::toRGB(glitch::video::SColor &) =====
unsigned int __fastcall glitch::video::SColorHSL::toRGB(float *a1, _BYTE *a2)
{
  float v2; // r6
  float v5; // r7
  float v6; // r6
  float v7; // r7
  unsigned int result; // r0

  v2 = a1[1];
  if ( v2 == 0.0 )
  {
    result = (unsigned __int8)(unsigned int)(float)(a1[2] * 255.0);
    a2[2] = result;
    *a2 = result;
    a2[1] = result;
  }
  else
  {
    v5 = a1[2];
    if ( v5 <= 0.5 )
      v6 = v5 + (float)(v2 * v5);
    else
      v6 = (float)(v2 + v5) - (float)(v2 * v5);
    v7 = (float)(v5 + v5) - v6;
    *a2 = glitch::video::SColorHSL::toRGB1((glitch::video::SColorHSL *)a1, v7, v6, *a1 + 2.0944);
    a2[1] = glitch::video::SColorHSL::toRGB1((glitch::video::SColorHSL *)a1, v7, v6, *a1);
    result = glitch::video::SColorHSL::toRGB1((glitch::video::SColorHSL *)a1, v7, v6, *a1 - 2.0944);
    a2[2] = result;
  }
  return result;
}


// ===== 6a86b4 glitch::gui::CGUIColorSelectDialog::sendSelectedEvent(void) =====
int __fastcall glitch::gui::CGUIColorSelectDialog::sendSelectedEvent(glitch::gui::CGUIColorSelectDialog *this)
{
  int v1; // r3
  _DWORD v3[7]; // [sp+0h] [bp-1Ch] BYREF

  v1 = *((_DWORD *)this + 9);
  v3[4] = 10;
  v3[2] = this;
  v3[3] = 0;
  v3[0] = 0;
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v1 + 8))(v1, v3);
}


// ===== 6a86f4 glitch::gui::CGUIColorSelectDialog::sendCancelEvent(void) =====
int __fastcall glitch::gui::CGUIColorSelectDialog::sendCancelEvent(glitch::gui::CGUIColorSelectDialog *this)
{
  int v1; // r3
  _DWORD v3[7]; // [sp+0h] [bp-1Ch] BYREF

  v1 = *((_DWORD *)this + 9);
  v3[4] = 11;
  v3[2] = this;
  v3[3] = 0;
  v3[0] = 0;
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v1 + 8))(v1, v3);
}


// ===== 6a8734 `global constructor keyed to'.._source_glitch_gui_CGUIColorSelectDialog.cpp =====
void `global constructor keyed to'.._source_glitch_gui_CGUIColorSelectDialog.cpp()
{
  dword_9F76AC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F76A8 = 1056964608;
}


// ===== 6a8754 glitch::gui::CGUIColorSelectDialog::buildColorRing(glitch::core::dimension2d<int> const&,int,glitch::video::SColor) =====
glitch::IReferenceCounted *__fastcall glitch::gui::CGUIColorSelectDialog::buildColorRing(int a1, _DWORD *a2, int a3)
{
  int v3; // r12
  glitch::IReferenceCounted *v4; // r5
  glitch::IReferenceCounted *v5; // r0
  int v6; // r7
  int v7; // r1
  int v8; // r9
  int v9; // r6
  int v10; // r4
  int v11; // r5
  int v12; // r0
  float v13; // r11
  float v14; // r0
  glitch::IReferenceCounted *v15; // r4
  glitch::IReferenceCounted *v16; // r3
  glitch::IReferenceCounted *v17; // r0
  _DWORD *v18; // r4
  unsigned int v19; // r5
  glitch::IReferenceCounted *v20; // r3
  int v21; // r5
  glitch::IReferenceCounted *v22; // r0
  glitch::IReferenceCounted *result; // r0
  int v24; // r11
  float v25; // [sp+10h] [bp-74h]
  int v26; // [sp+14h] [bp-70h]
  int v27; // [sp+20h] [bp-64h]
  int v28; // [sp+24h] [bp-60h]
  float v32; // [sp+54h] [bp-30h] BYREF
  int v33; // [sp+58h] [bp-2Ch]
  int v34; // [sp+5Ch] [bp-28h]
  _DWORD v35[2]; // [sp+60h] [bp-24h] BYREF
  int v36; // [sp+68h] [bp-1Ch]
  glitch::IReferenceCounted *v37; // [sp+6Ch] [bp-18h] BYREF
  glitch::IReferenceCounted *v38; // [sp+70h] [bp-14h] BYREF
  __int16 v39; // [sp+74h] [bp-10h] BYREF
  char v40; // [sp+76h] [bp-Eh]
  char v41; // [sp+77h] [bp-Dh]
  char v42[4]; // [sp+78h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v43; // [sp+7Ch] [bp-8h] BYREF

  v3 = a2[1] * a3;
  v35[0] = *a2 * a3;
  v35[1] = v3;
  v43 = nullptr;
  v4 = (glitch::IReferenceCounted *)operator new(0x2Cu, 0);
  glitch::video::CImage::CImage((int)v4, 12, v35);
  if ( v4 )
    ++*((_DWORD *)v4 + 1);
  v5 = v43;
  v43 = v4;
  if ( v5 )
  {
    glitch::IReferenceCounted::drop(v5);
    v4 = v43;
  }
  memset(v42, 128, 3);
  v42[3] = 0;
  glitch::video::CImage::fill((int *)v4, v42);
  v6 = v35[0] / 2 - 4;
  v27 = 4 - v35[0] / 2;
  v28 = *((_DWORD *)v43 + 6);
  v7 = *((_DWORD *)v43 + 2);
  v32 = 0.0;
  v41 = -1;
  v40 = 0;
  v39 = 0;
  v34 = 1056964608;
  v33 = 1065353216;
  if ( v6 >= v27 )
  {
    v8 = 4 - v35[0] / 2;
    v26 = v7 + 4 * v28 + 16;
    do
    {
      v9 = v6;
      v10 = v27;
      v11 = 0;
      do
      {
        while ( 1 )
        {
          v12 = v8 * v8 + v10 * v10;
          ++v10;
          if ( v12 - v6 * v6 < 0 )
          {
            v13 = sqrtf((float)v12);
            v14 = acosf((float)v9 * (float)(1.0 / v13));
            if ( v8 > 0 )
              v14 = 6.2832 - v14;
            v32 = v14 - 1.5708;
            v25 = v13 / (float)v6;
            if ( v25 >= 0.5 )
            {
              v34 = 1056964608;
              v33 = 1065353216;
              glitch::video::SColorHSL::toRGB(&v32, &v39);
              LOBYTE(v36) = v41;
              *(_WORD *)((char *)&v36 + 1) = v39;
              HIBYTE(v36) = v40;
              v24 = v36;
              *(_DWORD *)(v26 + v11) = v36;
              if ( v25 <= 0.55 )
                *(_DWORD *)(v26 + v11) = v24 & 0xFFFFFF00 | (int)(float)((float)(v25 - 0.5) * 5100.0);
            }
            if ( v25 >= 0.95 )
              break;
          }
          v11 += 4;
          --v9;
          if ( v6 < v10 )
            goto LABEL_15;
        }
        --v9;
        *(_DWORD *)(v26 + v11) = *(_DWORD *)(v26 + v11) & 0xFFFFFF00
                               | (255 - (int)(float)((float)(v25 - 0.95) * 5100.0));
        v11 += 4;
      }
      while ( v6 >= v10 );
LABEL_15:
      ++v8;
      v26 += v28;
    }
    while ( v6 >= v8 );
  }
  if ( a3 > 1 )
  {
    v15 = (glitch::IReferenceCounted *)operator new(0x2Cu, 0);
    glitch::video::CImage::CImage((int)v15, 12, a2);
    v38 = v15;
    if ( v15 )
      ++*((_DWORD *)v15 + 1);
    glitch::video::CImage::copyToScalingBoxFilter(v43, (unsigned int *)&v38, 0);
    v16 = v38;
    if ( v38 )
      ++*((_DWORD *)v38 + 1);
    v17 = v43;
    v43 = v16;
    if ( v17 )
      glitch::IReferenceCounted::drop(v17);
    if ( v38 )
      glitch::IReferenceCounted::drop(v38);
  }
  v18 = (_DWORD *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 336) + 32))(*(_DWORD *)(a1 + 336));
  v19 = v18[34];
  (*(void (__fastcall **)(_DWORD *, int, _DWORD))(*v18 + 160))(v18, 16, 0);
  glitch::video::CTextureManager::addTexture(
    &v37,
    v18[56],
    (glitch::IReferenceCounted *)"#colorring",
    (int *)&v43,
    1u,
    0);
  v20 = v37;
  v21 = (v19 >> 4) & 1;
  if ( v37 )
    ++*((_DWORD *)v37 + 1);
  v22 = *(glitch::IReferenceCounted **)(a1 + 384);
  *(_DWORD *)(a1 + 384) = v20;
  if ( v22 )
    glitch::IReferenceCounted::drop(v22);
  if ( v37 )
    glitch::IReferenceCounted::drop(v37);
  (*(void (__fastcall **)(_DWORD *, int, int))(*v18 + 160))(v18, 16, v21);
  result = v43;
  if ( v43 )
    return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v43);
  return result;
}


// ===== 6a8c10 std::vector<glitch::gui::CGUIColorSelectDialog::SBatteryItem,glitch::core::SAllocator<glitch::gui::CGUIColorSelectDialog::SBatteryItem,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::gui::CGUIColorSelectDialog::SBatteryItem*,glitch::gui::CGUIColorSelectDialog::SBatteryItem const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<glitch::gui::CGUIColorSelectDialog::SBatteryItem,glitch::core::SAllocator<glitch::gui::CGUIColorSelectDialog::SBatteryItem,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        _DWORD *a1,
        int a2,
        _DWORD *a3)
{
  unsigned int v6; // r3
  unsigned int v7; // r6
  size_t v8; // r6
  _DWORD *v9; // r0
  char *v10; // lr
  _DWORD *v11; // r8
  int v12; // r5
  _DWORD *v13; // r5
  int v14; // r1
  int v15; // r0
  _DWORD *v16; // r3
  int v17; // r2
  _DWORD *v18; // r6
  char *v19; // r0

  v6 = (a1[1] - *a1) >> 3;
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0x1FFFFFFF || v6 > v7 )
    v8 = -2;
  else
    v8 = 2 * v7;
  v9 = GlitchAlloc(v8 * 4, 0);
  v10 = (char *)*a1;
  v11 = v9;
  v12 = (a2 - *a1) >> 3;
  if ( v12 > 0 )
  {
    v14 = v12;
    v15 = 0;
    do
    {
      --v14;
      v11[v15] = *(_DWORD *)&v10[v15 * 4];
      v16 = &v11[v15];
      v17 = *(_DWORD *)&v10[v15 * 4 + 4];
      v15 += 2;
      v16[1] = v17;
    }
    while ( v14 );
    v13 = &v11[2 * v12];
  }
  else
  {
    v13 = v9;
  }
  v18 = &v11[v8];
  *v13 = *a3;
  v13[1] = a3[1];
  v19 = (char *)a1[1];
  if ( v19 != (char *)*a1 )
    v19 += 8 * ~((unsigned int)&v19[-*a1 - 8] >> 3);
  GlitchFree(v19);
  a1[2] = v18;
  *a1 = v11;
  a1[1] = v13 + 2;
}


// ===== 6a8cf4 glitch::gui::IGUIColorSelectDialog::IGUIColorSelectDialog(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::IGUIColorSelectDialog::IGUIColorSelectDialog(
        int a1,
        int *a2,
        int a3,
        int a4,
        int a5,
        int *a6)
{
  int v7; // r8
  int v8; // r7
  int v9; // lr
  int v10; // r10
  int v12; // r1
  _DWORD *v13; // r9
  int v14; // r0
  _DWORD *v17; // r3
  int v18; // r0
  int v19; // r12
  int v20; // r10
  int v21; // r8
  int v22; // r2
  int v23; // r1
  int v24; // r5
  int v25; // r7
  int v26; // r0
  int v27; // r1
  int v28; // r1
  int v29; // r2
  int v30; // r1
  int v31; // r3
  int v32; // r1
  bool v33; // cc
  int v34; // r3
  int v35; // r3
  int v37; // [sp+Ch] [bp-10h]

  v7 = *a6;
  v8 = a6[1];
  v9 = a6[2];
  v10 = a6[3];
  *(_DWORD *)a1 = off_95C300;
  v12 = a2[1];
  *(_DWORD *)a1 = v12;
  *(_DWORD *)(a1 + *(_DWORD *)(v12 - 12)) = a2[2];
  v13 = (_DWORD *)(a1 + 160);
  v37 = a1 + 4;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[3];
  *(_DWORD *)(a1 + 8) = a1 + 4;
  v14 = a1 + 12;
  *(_DWORD *)(a1 + 48) = v9;
  *(_DWORD *)(a1 + 40) = v7;
  *(_DWORD *)(a1 + 32) = v14;
  *(_DWORD *)(a1 + 28) = v14;
  *(_DWORD *)(a1 + 44) = v8;
  *(_DWORD *)(a1 + 4) = v37;
  *(_DWORD *)(a1 + 52) = v10;
  *(_DWORD *)(a1 + 56) = v7;
  *(_DWORD *)(a1 + 60) = v8;
  *(_DWORD *)(a1 + 64) = v9;
  *(_DWORD *)(a1 + 72) = v7;
  *(_DWORD *)(a1 + 76) = v8;
  *(_DWORD *)(a1 + 80) = v9;
  *(_DWORD *)(a1 + 88) = v7;
  *(_DWORD *)(a1 + 92) = v8;
  *(_DWORD *)(a1 + 96) = v9;
  *(_DWORD *)(a1 + 132) = 0;
  *(_BYTE *)(a1 + 153) = 1;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
  *(_DWORD *)(a1 + 144) = 1;
  *(_DWORD *)(a1 + 148) = 1;
  *(_BYTE *)(a1 + 152) = 1;
  *(_DWORD *)(a1 + 68) = v10;
  *(_BYTE *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 100) = v10;
  *(_DWORD *)(a1 + 84) = v10;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 112) = 0;
  *(_DWORD *)(a1 + 116) = 0;
  *(_DWORD *)(a1 + 136) = 0;
  *(_DWORD *)(a1 + 140) = 0;
  *(_BYTE *)(a1 + 154) = 0;
  *(_BYTE *)(a1 + 155) = 0;
  *(_BYTE *)(a1 + 156) = 0;
  *(_DWORD *)(a1 + 224) = a1 + 160;
  *(_DWORD *)(a1 + 228) = a1 + 160;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v13,
    0x10u);
  **(_DWORD **)(a1 + 224) = 0;
  *(_DWORD *)(a1 + 296) = a1 + 232;
  *(_DWORD *)(a1 + 300) = a1 + 232;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 232),
    0x10u);
  **(_DWORD **)(a1 + 296) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 336) = a3;
  *(_DWORD *)(a1 + 304) = a5;
  *(_DWORD *)(a1 + 312) = -1;
  *(_DWORD *)(a1 + 340) = 7;
  *(_BYTE *)(a1 + 308) = 0;
  *(_BYTE *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  if ( a4 )
    (*(void (__fastcall **)(int, int))(*(_DWORD *)a4 + 20))(a4, a1);
  v17 = *(_DWORD **)(a1 + 36);
  if ( v17 )
  {
    v18 = v17[15];
    v19 = v17[14];
    v20 = v17[16];
    v21 = v17[17];
    v22 = v18 + *(_DWORD *)(a1 + 68);
    v23 = v19 + *(_DWORD *)(a1 + 64);
    v24 = v18 + *(_DWORD *)(a1 + 60);
    v25 = v19 + *(_DWORD *)(a1 + 56);
    *(_DWORD *)(a1 + 76) = v24;
    *(_DWORD *)(a1 + 84) = v22;
    *(_DWORD *)(a1 + 72) = v25;
    *(_DWORD *)(a1 + 80) = v23;
    *(_DWORD *)(a1 + 68) = v22;
    *(_DWORD *)(a1 + 112) = v20;
    *(_DWORD *)(a1 + 116) = v21;
    *(_DWORD *)(a1 + 104) = v19;
    *(_DWORD *)(a1 + 108) = v18;
    *(_DWORD *)(a1 + 56) = v25;
    *(_DWORD *)(a1 + 60) = v24;
    *(_DWORD *)(a1 + 64) = v23;
    v26 = v17[20];
    if ( v23 > v26 )
      *(_DWORD *)(a1 + 80) = v26;
    v27 = v17[21];
    if ( v22 > v27 )
      *(_DWORD *)(a1 + 84) = v27;
    v28 = v17[18];
    v29 = *(_DWORD *)(a1 + 72);
    if ( v28 > v29 )
    {
      *(_DWORD *)(a1 + 72) = v28;
      v29 = v28;
    }
    v30 = v17[19];
    v31 = *(_DWORD *)(a1 + 76);
    if ( v30 > v31 )
    {
      *(_DWORD *)(a1 + 76) = v30;
      v31 = v30;
    }
    v32 = *(_DWORD *)(a1 + 84);
    v33 = v32 < v31;
    v34 = *(_DWORD *)(a1 + 80);
    if ( v33 )
      *(_DWORD *)(a1 + 76) = v32;
    if ( v29 > v34 )
      *(_DWORD *)(a1 + 72) = v34;
  }
  v35 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v35 - 12)) = a2[4];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[5];
  return a1;
}


// ===== 6a8fbc glitch::gui::CGUIColorSelectDialog::CGUIColorSelectDialog(wchar_t const*,glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int) =====
int __fastcall glitch::gui::CGUIColorSelectDialog::CGUIColorSelectDialog(
        int this,
        const wchar_t *a2,
        glitch::gui::IGUIEnvironment *a3,
        glitch::gui::IGUIElement *a4,
        int a5)
{
  int v5; // r5
  int v7; // r8
  size_t v10; // r0
  int v11; // r6
  int v12; // r0
  int v13; // r0
  int v14; // r8
  int (__fastcall *v15)(int, _DWORD *, int, int, wchar_t *, int); // r7
  int v16; // r0
  int v17; // r8
  void (__fastcall *v18)(int, int); // r7
  int v19; // r0
  int v20; // r8
  void (__fastcall *v21)(int, _DWORD, int, int, _DWORD); // r7
  int v22; // r9
  int v23; // r8
  void (__fastcall *v24)(int, int, int); // r7
  int v25; // r9
  int v26; // r3
  int v27; // r3
  int v28; // r8
  int v29; // r3
  int (__fastcall *v30)(int, _DWORD *, int, int, const char *, _DWORD); // r7
  const char *v31; // r0
  int v32; // r0
  int v33; // r3
  int v34; // r8
  int v35; // r3
  int (__fastcall *v36)(int, _DWORD *, int, int, const char *, _DWORD); // r7
  const char *v37; // r0
  int v38; // r0
  int v39; // r3
  int v40; // r3
  int v41; // r0
  glitch::IReferenceCounted *v42; // r3
  glitch::IReferenceCounted *v43; // r0
  int v44; // r0
  int (__fastcall *v45)(int, int, _DWORD *, int, int, int, _DWORD); // r12
  int v46; // r0
  int v47; // r3
  char **v48; // r5
  int v49; // r3
  int v50; // r10
  int v51; // r9
  int v52; // r0
  int v53; // r1
  int v54; // r3
  int v55; // r0
  int v56; // r3
  int v57; // r12
  int *v58; // r1
  int v59; // r1
  int v60; // r7
  int v61; // r6
  int v63; // r3
  int v64; // r0
  int v65; // [sp+28h] [bp-7Ch] BYREF
  int v66; // [sp+2Ch] [bp-78h]
  int v67; // [sp+30h] [bp-74h]
  int v68; // [sp+34h] [bp-70h]
  _DWORD v69[4]; // [sp+38h] [bp-6Ch] BYREF
  _DWORD v70[4]; // [sp+48h] [bp-5Ch] BYREF
  _DWORD v71[4]; // [sp+58h] [bp-4Ch] BYREF
  int v72[4]; // [sp+68h] [bp-3Ch] BYREF
  int v73; // [sp+78h] [bp-2Ch] BYREF
  int v74; // [sp+7Ch] [bp-28h]
  _DWORD v75[2]; // [sp+80h] [bp-24h] BYREF
  _DWORD v76[3]; // [sp+88h] [bp-1Ch] BYREF
  glitch::IReferenceCounted *v77[2]; // [sp+94h] [bp-10h] BYREF
  int v78; // [sp+9Ch] [bp-8h]

  *(_DWORD *)(this + 392) = off_95B720;
  *(_DWORD *)(this + 396) = 1;
  *(_DWORD *)(this + 388) = off_98693C;
  *(_DWORD *)&byte_4[this + 388] = off_98695C;
  v5 = (*((_DWORD *)a4 + 16) - 350 - *((_DWORD *)a4 + 14)) / 2;
  v7 = (*((_DWORD *)a4 + 17) - 300 - *((_DWORD *)a4 + 15)) / 2;
  v72[2] = v5 + 350;
  v72[3] = v7 + 300;
  v72[0] = v5;
  v72[1] = v7;
  glitch::gui::IGUIColorSelectDialog::IGUIColorSelectDialog(this, (int *)off_986764, (int)a3, (int)a4, a5, v72);
  *(_DWORD *)(this + 344) = 0;
  *(_DWORD *)(this + 348) = 0;
  *(_DWORD *)(this + 388) = off_986734;
  *(_DWORD *)this = off_9866A0;
  *(_DWORD *)(this + 392) = off_986754;
  *(_BYTE *)(this + 352) = 0;
  *(_DWORD *)(this + 368) = 0;
  *(_DWORD *)(this + 372) = 0;
  *(_DWORD *)(this + 376) = 0;
  *(_DWORD *)(this + 384) = 0;
  v10 = wcslen(a2);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    this + 160,
    a2,
    &a2[v10]);
  v11 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 336) + 56))(*(_DWORD *)(this + 336));
  v12 = (*(int (__fastcall **)(glitch::gui::IGUIEnvironment *))(*(_DWORD *)a3 + 56))(a3);
  v13 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v12 + 24))(v12, 2);
  v14 = *(_DWORD *)(this + 336);
  v15 = *(int (__fastcall **)(int, _DWORD *, int, int, wchar_t *, int))(*(_DWORD *)v14 + 120);
  v71[0] = *(_DWORD *)(this + 48) - 4 - *(_DWORD *)(this + 40) - v13;
  v71[1] = 3;
  v71[2] = v71[0] + v13;
  v71[3] = v13 + 3;
  if ( v11 )
  {
    v16 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v11 + 28))(v11, 4);
    *(_DWORD *)(this + 356) = v15(v14, v71, this, -1, dword_8BEC18, v16);
    if ( (*(int (__fastcall **)(int))(*(_DWORD *)v11 + 48))(v11) )
    {
      v17 = *(_DWORD *)(this + 356);
      v18 = *(void (__fastcall **)(int, int))(*(_DWORD *)v17 + 144);
      v19 = (*(int (__fastcall **)(int))(*(_DWORD *)v11 + 48))(v11);
      v18(v17, v19);
      v20 = *(_DWORD *)(this + 356);
      v21 = *(void (__fastcall **)(int, _DWORD, int, int, _DWORD))(*(_DWORD *)v20 + 148);
      v22 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v11 + 56))(v11, 2);
      v78 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v11 + 16))(v11, 18);
      v21(v20, 0, v22, v78, 0);
      v23 = *(_DWORD *)(this + 356);
      v24 = *(void (__fastcall **)(int, int, int))(*(_DWORD *)v23 + 148);
      v25 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v11 + 56))(v11, 2);
      v77[1] = (glitch::IReferenceCounted *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v11 + 16))(v11, 18);
      v24(v23, 1, v25);
    }
    v26 = *(_DWORD *)(this + 356);
  }
  else
  {
    v26 = v15(v14, v71, this, -1, dword_8BEC18, (int)"C");
    *(_DWORD *)(this + 356) = v26;
  }
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v26 + 56))(v26, 1);
  *(_BYTE *)(*(_DWORD *)(this + 356) + 308) = 0;
  glitch::gui::IGUIElement::setAlignment(*(float *)(this + 356), 1, 1, 0, 0);
  v27 = *(_DWORD *)(this + 356) + *(_DWORD *)(**(_DWORD **)(this + 356) - 16);
  ++*(_DWORD *)(v27 + 4);
  v28 = *(_DWORD *)(this + 336);
  v29 = *(_DWORD *)(this + 48) - *(_DWORD *)(this + 40);
  v30 = *(int (__fastcall **)(int, _DWORD *, int, int, const char *, _DWORD))(*(_DWORD *)v28 + 120);
  v70[0] = v29 - 80;
  v70[2] = v29 - 10;
  v70[1] = 30;
  v70[3] = 50;
  if ( v11 )
    v31 = (const char *)(*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v11 + 28))(v11, 0);
  else
    v31 = "O";
  v32 = v30(v28, v70, this, -1, v31, 0);
  *(_DWORD *)(this + 360) = v32;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v32 + 56))(v32, 1);
  glitch::gui::IGUIElement::setAlignment(*(float *)(this + 360), 1, 1, 0, 0);
  v33 = *(_DWORD *)(this + 360) + *(_DWORD *)(**(_DWORD **)(this + 360) - 16);
  ++*(_DWORD *)(v33 + 4);
  v34 = *(_DWORD *)(this + 336);
  v35 = *(_DWORD *)(this + 48) - *(_DWORD *)(this + 40);
  v36 = *(int (__fastcall **)(int, _DWORD *, int, int, const char *, _DWORD))(*(_DWORD *)v34 + 120);
  v69[0] = v35 - 80;
  v69[2] = v35 - 10;
  v69[1] = 55;
  v69[3] = 75;
  if ( v11 )
    v37 = (const char *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v11 + 28))(v11, 1);
  else
    v37 = "C";
  v38 = v36(v34, v69, this, -1, v37, 0);
  *(_DWORD *)(this + 364) = v38;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v38 + 56))(v38, 1);
  glitch::gui::IGUIElement::setAlignment(*(float *)(this + 364), 1, 1, 0, 0);
  v39 = *(_DWORD *)(this + 364) + *(_DWORD *)(**(_DWORD **)(this + 364) - 16);
  ++*(_DWORD *)(v39 + 4);
  v40 = *(_DWORD *)(this + 336);
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v41 = (*(int (__fastcall **)(int))(*(_DWORD *)v40 + 32))(v40);
  glitch::video::CTextureManager::getTexture(v77, *(char **)(v41 + 224), "#colorring", nullptr);
  v42 = v77[0];
  if ( v77[0] )
    ++*((_DWORD *)v77[0] + 1);
  v43 = *(glitch::IReferenceCounted **)(this + 384);
  *(_DWORD *)(this + 384) = v42;
  if ( v43 )
    glitch::IReferenceCounted::drop(v43);
  if ( v77[0] )
    glitch::IReferenceCounted::drop(v77[0]);
  if ( !*(_DWORD *)(this + 384) )
  {
    v63 = *(_DWORD *)(this + 336);
    v76[1] = 128;
    v76[0] = 128;
    v64 = (*(int (__fastcall **)(int))(*(_DWORD *)v63 + 56))(v63);
    v76[2] = (*(int (__fastcall **)(int, int))(*(_DWORD *)v64 + 16))(v64, 1);
    glitch::gui::CGUIColorSelectDialog::buildColorRing(this, v76, 1);
  }
  v44 = *(_DWORD *)(this + 336);
  v65 = 20;
  v66 = 20;
  v45 = *(int (__fastcall **)(int, int, _DWORD *, int, int, int, _DWORD))(*(_DWORD *)v44 + 140);
  v75[1] = 20;
  v75[0] = 20;
  v46 = v45(v44, this + 384, v75, 1, this, -1, 0);
  *(_DWORD *)(this + 380) = v46;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v46 + 56))(v46, 1);
  v47 = *(_DWORD *)(this + 380) + *(_DWORD *)(**(_DWORD **)(this + 380) - 16);
  ++*(_DWORD *)(v47 + 4);
  v48 = (char **)&unk_9579A8;
  do
  {
    v59 = (int)*(v48 - 6);
    v60 = (int)*(v48 - 3);
    v61 = (int)*(v48 - 2);
    if ( v59 )
    {
      v49 = *(_DWORD *)(this + 336);
      v50 = v60 + 15;
      v51 = v61 + 20;
      v65 = (int)*(v48 - 3);
      v66 = v61;
      v67 = v60 + 15;
      v68 = v61 + 20;
      v52 = (*(int (__fastcall **)(int, int, int *, _DWORD, _DWORD, int, int, _DWORD))(*(_DWORD *)v49 + 168))(
              v49,
              v59,
              &v65,
              0,
              0,
              this,
              -1,
              0);
      (*(void (__fastcall **)(int, int))(*(_DWORD *)v52 + 56))(v52, 1);
    }
    else
    {
      v50 = v60 + 15;
      v51 = v61 + 20;
    }
    v53 = (int)*(v48 - 4);
    if ( v53 )
    {
      v54 = *(_DWORD *)(this + 336);
      v65 = v60 + 52;
      v67 = v60 + 67;
      v66 = v61;
      v68 = v51;
      v55 = (*(int (__fastcall **)(int, int, int *, _DWORD, _DWORD, int, int, _DWORD))(*(_DWORD *)v54 + 168))(
              v54,
              v53,
              &v65,
              0,
              0,
              this,
              -1,
              0);
      (*(void (__fastcall **)(int, int))(*(_DWORD *)v55 + 56))(v55, 1);
    }
    v56 = *(_DWORD *)(this + 336);
    v67 = v50 + 35;
    v65 = v50;
    v66 = v61;
    v68 = v51;
    v73 = (*(int (__fastcall **)(int, _DWORD, int *, int, int, int))(*(_DWORD *)v56 + 172))(
            v56,
            *(v48 - 5),
            &v65,
            1,
            this,
            -1);
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v73 + 56))(v73, 1);
    ++*(_DWORD *)(v73 + *(_DWORD *)(*(_DWORD *)v73 - 16) + 4);
    v57 = *(_DWORD *)(this + 336);
    v67 = v60 + 130;
    v65 = v60 + 70;
    v66 = v61 + 4;
    v68 = v61 + 16;
    v74 = (*(int (__fastcall **)(int, int, int *, int, int))(*(_DWORD *)v57 + 136))(v57, 1, &v65, this, -1);
    ++*(_DWORD *)(v74 + *(_DWORD *)(*(_DWORD *)v74 - 16) + 4);
    (*(void (__fastcall **)(int))(*(_DWORD *)v74 + 56))(v74);
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v74 + 128))(v74, *v48 - *(v48 - 1));
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v74 + 136))(v74, 1);
    v58 = *(int **)(this + 372);
    if ( v58 == *(int **)(this + 376) )
    {
      std::vector<glitch::gui::CGUIColorSelectDialog::SBatteryItem,glitch::core::SAllocator<glitch::gui::CGUIColorSelectDialog::SBatteryItem,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        (_DWORD *)(this + 368),
        (int)v58,
        &v73);
    }
    else
    {
      *v58 = v73;
      v58[1] = v74;
      *(_DWORD *)(this + 372) += 8;
    }
    v48 += 7;
  }
  while ( v48 != off_957A6C );
  glitch::gui::IGUIElement::bringToFront((glitch::gui::IGUIElement *)this, *(glitch::gui::IGUIElement **)(this + 364));
  glitch::gui::IGUIElement::bringToFront((glitch::gui::IGUIElement *)this, *(glitch::gui::IGUIElement **)(this + 360));
  return this;
}


// ===== 6a98e4 glitch::gui::CGUIColorSelectDialog::onEvent(glitch::SEvent const&) =====
int __fastcall glitch::gui::CGUIColorSelectDialog::onEvent(glitch::gui::CGUIColorSelectDialog *this, int *a2)
{
  int v4; // r6
  int v5; // r3
  int v6; // r3
  int v8; // r3
  int v9; // r3
  int v10; // r2
  int v11; // r3
  int v12; // r3
  int v13; // r2
  int v14; // r0
  char **v15; // r7
  int v16; // r3
  _DWORD *v17; // r3
  int v18; // r2
  int v19; // r1
  int v20; // r2
  void (__fastcall *v21)(glitch::gui::CGUIColorSelectDialog *, _DWORD *); // r3
  int v22; // r0
  int v23; // r0
  _BYTE v24[68]; // [sp+0h] [bp-50h] BYREF
  void *p; // [sp+44h] [bp-Ch]
  _DWORD v26[2]; // [sp+48h] [bp-8h] BYREF

  if ( *((_BYTE *)this + 153) )
  {
    v4 = *a2;
    if ( *a2 )
    {
      if ( v4 == 1 )
      {
        v8 = a2[5];
        if ( v8 == 3 )
        {
          v11 = *((_DWORD *)this + 84);
          *((_BYTE *)this + 352) = 0;
          (*(void (__fastcall **)(int, glitch::gui::CGUIColorSelectDialog *))(*(_DWORD *)v11 + 24))(v11, this);
          return 1;
        }
        if ( v8 != 6 )
        {
          if ( !v8 )
          {
            v9 = *((_DWORD *)this + 84);
            *((_DWORD *)this + 86) = a2[2];
            v10 = a2[3];
            *((_BYTE *)this + 352) = 1;
            *((_DWORD *)this + 87) = v10;
            (*(void (__fastcall **)(int, glitch::gui::CGUIColorSelectDialog *))(*(_DWORD *)v9 + 16))(v9, this);
            return 1;
          }
          goto LABEL_7;
        }
        if ( *((_BYTE *)this + 352) )
        {
          v17 = *((_DWORD **)this + 9);
          if ( v17 )
          {
            v18 = a2[2];
            if ( v18 <= v17[14] )
              return 1;
            v19 = a2[3];
            if ( v19 <= v17[15] || v18 >= v17[16] || v19 >= v17[17] )
              return 1;
          }
          else
          {
            v18 = a2[2];
            v19 = a2[3];
          }
          v20 = v18 - *((_DWORD *)this + 86);
          v21 = *(void (__fastcall **)(glitch::gui::CGUIColorSelectDialog *, _DWORD *))(*(_DWORD *)this + 40);
          v26[1] = v19 - *((_DWORD *)this + 87);
          v26[0] = v20;
          v21(this, v26);
          *((_DWORD *)this + 86) = a2[2];
          *((_DWORD *)this + 87) = a2[3];
          return 1;
        }
      }
    }
    else
    {
      v5 = a2[4];
      if ( v5 != 5 )
      {
        if ( v5 != 6 )
        {
          if ( !v5 )
            *((_BYTE *)this + 352) = 0;
          goto LABEL_7;
        }
        v13 = *((_DWORD *)this + 92);
        v14 = *((_DWORD *)this + 93);
        if ( (unsigned int)(v14 - v13) >> 3 )
        {
          v15 = glitch::gui::Template;
          do
          {
            v16 = a2[2];
            if ( v16 == *(_DWORD *)(v13 + 8 * v4 + 4) )
            {
              v22 = (*(int (__fastcall **)(int))(*(_DWORD *)v16 + 148))(a2[2]);
              glitch::core::int2stringw((glitch::core *)v24, (int)&v15[5][v22]);
              v23 = *(_DWORD *)(*((_DWORD *)this + 92) + 8 * v4);
              (*(void (__fastcall **)(int, void *))(*(_DWORD *)v23 + 68))(v23, p);
              if ( p != v24 && p )
                GlitchFree(p);
              v13 = *((_DWORD *)this + 92);
              v14 = *((_DWORD *)this + 93);
            }
            ++v4;
            v15 += 7;
          }
          while ( v4 != (v14 - v13) >> 3 );
        }
        return 1;
      }
      v12 = a2[2];
      if ( v12 == *((_DWORD *)this + 89) || v12 == *((_DWORD *)this + 91) )
      {
        glitch::gui::CGUIColorSelectDialog::sendCancelEvent(this);
        (*(void (__fastcall **)(glitch::gui::CGUIColorSelectDialog *))(*(_DWORD *)this + 28))(this);
        return 1;
      }
      if ( v12 == *((_DWORD *)this + 90) )
      {
        glitch::gui::CGUIColorSelectDialog::sendSelectedEvent(this);
        (*(void (__fastcall **)(glitch::gui::CGUIColorSelectDialog *))(*(_DWORD *)this + 28))(this);
        return 1;
      }
    }
  }
LABEL_7:
  v6 = *((_DWORD *)this + 9);
  if ( v6 )
    return (*(int (__fastcall **)(_DWORD, int *))(*(_DWORD *)v6 + 8))(*((_DWORD *)this + 9), a2);
  else
    return 0;
}


// ===== 6a9b90 glitch::gui::IGUIColorSelectDialog::~IGUIColorSelectDialog() =====
void __fastcall glitch::gui::IGUIColorSelectDialog::~IGUIColorSelectDialog(glitch::gui::IGUIColorSelectDialog *this)
{
  *(_DWORD *)this = off_9864A8;
  *((_DWORD *)this + 86) = off_98653C;
  *((_DWORD *)this + 87) = off_98655C;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_98656C);
}


// ===== 6a9be4 `virtual thunk to'glitch::gui::IGUIColorSelectDialog::~IGUIColorSelectDialog() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIColorSelectDialog::~IGUIColorSelectDialog(
        glitch::gui::IGUIColorSelectDialog *this)
{
  glitch::gui::IGUIColorSelectDialog::~IGUIColorSelectDialog((glitch::gui::IGUIColorSelectDialog *)((char *)this
                                                                                                  + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6a9bf4 `virtual thunk to'glitch::gui::IGUIColorSelectDialog::~IGUIColorSelectDialog() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIColorSelectDialog::~IGUIColorSelectDialog(
        glitch::gui::IGUIColorSelectDialog *this)
{
  glitch::gui::IGUIColorSelectDialog::~IGUIColorSelectDialog((glitch::gui::IGUIColorSelectDialog *)((char *)this
                                                                                                  + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6a9c04 glitch::gui::CGUIColorSelectDialog::~CGUIColorSelectDialog() =====
void __fastcall glitch::gui::CGUIColorSelectDialog::~CGUIColorSelectDialog(glitch::gui::CGUIColorSelectDialog *this)
{
  _DWORD *v1; // r2
  _DWORD *v3; // r3
  _DWORD *v4; // r3
  int v5; // r3
  int v6; // r5
  _DWORD *v7; // r3
  int v8; // r6
  _DWORD *v9; // r3
  _DWORD *v10; // r3
  glitch::IReferenceCounted *v11; // r0
  void *v12; // r0

  v1 = *((_DWORD **)this + 89);
  *(_DWORD *)this = off_9866A0;
  *((_DWORD *)this + 97) = off_986734;
  *((_DWORD *)this + 98) = off_986754;
  if ( v1 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 16)));
  v3 = *((_DWORD **)this + 90);
  if ( v3 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v3 + *(_DWORD *)(*v3 - 16)));
  v4 = *((_DWORD **)this + 91);
  if ( v4 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v4 + *(_DWORD *)(*v4 - 16)));
  v5 = *((_DWORD *)this + 92);
  if ( (unsigned int)(*((_DWORD *)this + 93) - v5) >> 3 )
  {
    v6 = 0;
    do
    {
      v7 = *(_DWORD **)(v5 + 8 * v6);
      v8 = 8 * v6++;
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v7 + *(_DWORD *)(*v7 - 16)));
      v9 = *(_DWORD **)(*((_DWORD *)this + 92) + v8 + 4);
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v9 + *(_DWORD *)(*v9 - 16)));
      v5 = *((_DWORD *)this + 92);
    }
    while ( v6 != (*((_DWORD *)this + 93) - v5) >> 3 );
  }
  v10 = *((_DWORD **)this + 95);
  if ( v10 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v10 + *(_DWORD *)(*v10 - 16)));
  v11 = *((glitch::IReferenceCounted **)this + 96);
  if ( v11 )
    glitch::IReferenceCounted::drop(v11);
  v12 = *((void **)this + 92);
  if ( v12 )
    GlitchFree(v12);
  *(_DWORD *)this = off_9867A0;
  *(int *)((char *)&elf_hash_bucket[42] + (_DWORD)this) = (int)off_986834;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = off_986854;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_986768);
}


// ===== 6a9d74 glitch::gui::CGUIColorSelectDialog::~CGUIColorSelectDialog() =====
void __fastcall glitch::gui::CGUIColorSelectDialog::~CGUIColorSelectDialog(glitch::gui::CGUIColorSelectDialog *this)
{
  glitch::gui::CGUIColorSelectDialog::~CGUIColorSelectDialog(this);
  LC_API_FREE_0(this);
}


// ===== 6a9d90 glitch::gui::CGUIColorSelectDialog::~CGUIColorSelectDialog() =====
void __fastcall glitch::gui::CGUIColorSelectDialog::~CGUIColorSelectDialog(
        glitch::gui::CGUIColorSelectDialog *this,
        int *a2)
{
  int v2; // r3
  _DWORD *v5; // r3
  _DWORD *v6; // r3
  _DWORD *v7; // r3
  int v8; // r3
  int v9; // r5
  _DWORD *v10; // r3
  int v11; // r6
  _DWORD *v12; // r3
  _DWORD *v13; // r3
  glitch::IReferenceCounted *v14; // r0
  void *v15; // r0
  int v16; // r3
  int *v17; // r7

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[7];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = a2[8];
  v5 = *((_DWORD **)this + 89);
  if ( v5 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v5 + *(_DWORD *)(*v5 - 16)));
  v6 = *((_DWORD **)this + 90);
  if ( v6 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v6 + *(_DWORD *)(*v6 - 16)));
  v7 = *((_DWORD **)this + 91);
  if ( v7 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v7 + *(_DWORD *)(*v7 - 16)));
  v8 = *((_DWORD *)this + 92);
  if ( (unsigned int)(*((_DWORD *)this + 93) - v8) >> 3 )
  {
    v9 = 0;
    do
    {
      v10 = *(_DWORD **)(v8 + 8 * v9);
      v11 = 8 * v9++;
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v10 + *(_DWORD *)(*v10 - 16)));
      v12 = *(_DWORD **)(*((_DWORD *)this + 92) + v11 + 4);
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v12 + *(_DWORD *)(*v12 - 16)));
      v8 = *((_DWORD *)this + 92);
    }
    while ( v9 != (*((_DWORD *)this + 93) - v8) >> 3 );
  }
  v13 = *((_DWORD **)this + 95);
  if ( v13 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v13 + *(_DWORD *)(*v13 - 16)));
  v14 = *((glitch::IReferenceCounted **)this + 96);
  if ( v14 )
    glitch::IReferenceCounted::drop(v14);
  v15 = *((void **)this + 92);
  if ( v15 )
    GlitchFree(v15);
  v16 = a2[1];
  v17 = a2 + 1;
  *(_DWORD *)this = v16;
  *(_DWORD *)((char *)this + *(_DWORD *)(v16 - 12)) = v17[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = v17[5];
  glitch::gui::IGUIElement::~IGUIElement(this, v17 + 1);
}


// ===== 6a9ef0 glitch::gui::IGUIColorSelectDialog::~IGUIColorSelectDialog() =====
void __fastcall glitch::gui::IGUIColorSelectDialog::~IGUIColorSelectDialog(glitch::gui::IGUIColorSelectDialog *this)
{
  *(_DWORD *)this = off_9864A8;
  *((_DWORD *)this + 86) = off_98653C;
  *((_DWORD *)this + 87) = off_98655C;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_98656C);
  LC_API_FREE_0(this);
}


// ===== 6a9f4c `virtual thunk to'glitch::gui::IGUIColorSelectDialog::~IGUIColorSelectDialog() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIColorSelectDialog::~IGUIColorSelectDialog(
        glitch::gui::IGUIColorSelectDialog *this)
{
  glitch::gui::IGUIColorSelectDialog::~IGUIColorSelectDialog((glitch::gui::IGUIColorSelectDialog *)((char *)this
                                                                                                  + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6a9f5c `virtual thunk to'glitch::gui::IGUIColorSelectDialog::~IGUIColorSelectDialog() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIColorSelectDialog::~IGUIColorSelectDialog(
        glitch::gui::IGUIColorSelectDialog *this)
{
  glitch::gui::IGUIColorSelectDialog::~IGUIColorSelectDialog((glitch::gui::IGUIColorSelectDialog *)((char *)this
                                                                                                  + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6a9f6c glitch::gui::CGUIColorSelectDialog::draw(void) =====
int __fastcall glitch::gui::CGUIColorSelectDialog::draw(int this)
{
  int v1; // r4
  int v2; // r7
  int v3; // r0
  int v4; // r1
  int v5; // r2
  int v6; // r3
  int v7; // r5
  int (__fastcall *v8)(_DWORD *, int, int, int, int, int *, int); // r8
  int v9; // r8
  bool v10; // zf
  int v11; // r4
  int *i; // r5
  int *v13; // t1
  int v14; // r8
  int v15; // r3
  int v16; // r0
  int (__fastcall *v17)(int, int, int *, int, _DWORD, int, int); // r5
  int v18; // r10
  _DWORD v19[2]; // [sp+18h] [bp-2Ch] BYREF
  int v20; // [sp+20h] [bp-24h]
  int v21; // [sp+24h] [bp-20h]
  int v22; // [sp+28h] [bp-1Ch] BYREF
  int v23; // [sp+2Ch] [bp-18h]
  int v24; // [sp+30h] [bp-14h]
  int v25; // [sp+34h] [bp-10h]
  int v26; // [sp+38h] [bp-Ch]
  int v27; // [sp+3Ch] [bp-8h]

  v1 = this;
  if ( *(_BYTE *)(this + 152) )
  {
    v2 = this + 72;
    v3 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 336) + 56))(*(_DWORD *)(this + 336));
    v4 = *(_DWORD *)(v1 + 60);
    v5 = *(_DWORD *)(v1 + 64);
    v6 = *(_DWORD *)(v1 + 68);
    v22 = *(_DWORD *)(v1 + 56);
    v23 = v4;
    v24 = v5;
    v25 = v6;
    v7 = v3;
    v8 = *(int (__fastcall **)(_DWORD *, int, int, int, int, int *, int))(*(_DWORD *)v3 + 76);
    v27 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v3 + 16))(v3, 5);
    this = v8(v19, v7, v1, 1, v27, &v22, v2);
    v9 = v20;
    v10 = (unsigned int)(*(_DWORD *)(v1 + 224) - *(_DWORD *)(v1 + 228)) >> 2 == 0;
    v22 = v19[0];
    v24 = v20;
    v23 = v19[1];
    v25 = v21;
    if ( !v10 )
    {
      v22 = v19[0] + 2;
      v24 = v9 - 5 - (*(int (__fastcall **)(int, int))(*(_DWORD *)v7 + 24))(v7, 2);
      this = (*(int (__fastcall **)(int, int))(*(_DWORD *)v7 + 40))(v7, 2);
      v14 = this;
      if ( this )
      {
        v15 = *(_DWORD *)v7;
        v16 = v7;
        v17 = *(int (__fastcall **)(int, int, int *, int, _DWORD, int, int))(*(_DWORD *)v14 + 12);
        v18 = *(_DWORD *)(v1 + 228);
        v26 = (*(int (__fastcall **)(int, int))(v15 + 16))(v16, 6);
        this = v17(v14, v18, &v22, v26, 0, 1, v2);
      }
    }
    if ( *(_BYTE *)(v1 + 152) )
    {
      v13 = *(int **)(v1 + 4);
      v11 = v1 + 4;
      for ( i = v13; i != (int *)v11; i = (int *)*i )
        this = (*(int (__fastcall **)(int))(*(_DWORD *)i[2] + 32))(i[2]);
    }
  }
  return this;
}


// ===== 6aa138 glitch::gui::CGUIColorSelectDialog::CGUIColorSelectDialog(wchar_t const*,glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int) =====
glitch::gui::CGUIColorSelectDialog *__fastcall glitch::gui::CGUIColorSelectDialog::CGUIColorSelectDialog(
        glitch::gui::CGUIColorSelectDialog *this,
        const wchar_t *a2,
        const wchar_t *a3,
        glitch::gui::IGUIElement *a4,
        _DWORD *a5,
        int a6)
{
  int v8; // lr
  int v9; // r5
  int v12; // r3
  size_t v13; // r0
  int v14; // r6
  int v15; // r0
  int v16; // r0
  int v17; // r8
  int (__fastcall *v18)(int, _DWORD *, glitch::gui::CGUIColorSelectDialog *, int, wchar_t *, int); // r7
  int v19; // r0
  int v20; // r8
  void (__fastcall *v21)(int, int); // r7
  int v22; // r0
  int v23; // r8
  void (__fastcall *v24)(int, _DWORD, int, int, _DWORD); // r7
  int v25; // r10
  int v26; // r8
  void (__fastcall *v27)(int, int, int); // r7
  int v28; // r10
  int v29; // r3
  int v30; // r3
  int v31; // r8
  int v32; // r3
  int (__fastcall *v33)(int, _DWORD *, glitch::gui::CGUIColorSelectDialog *, int, const char *, _DWORD); // r7
  const char *v34; // r0
  int v35; // r0
  int v36; // r3
  int v37; // r8
  int v38; // r3
  int (__fastcall *v39)(int, _DWORD *, glitch::gui::CGUIColorSelectDialog *, int, const char *, _DWORD); // r7
  const char *v40; // r0
  int v41; // r0
  int v42; // r3
  int v43; // r3
  int v44; // r0
  glitch::IReferenceCounted *v45; // r3
  glitch::IReferenceCounted *v46; // r0
  int v47; // r0
  int (__fastcall *v48)(int, char *, _DWORD *, int, glitch::gui::CGUIColorSelectDialog *, int, _DWORD); // r12
  int v49; // r0
  int v50; // r3
  char **v51; // r5
  int v52; // r3
  int v53; // r10
  int v54; // r9
  int v55; // r0
  int v56; // r1
  int v57; // r3
  int v58; // r0
  int v59; // r3
  int v60; // r12
  int *v61; // r1
  int v62; // r1
  int v63; // r7
  int v64; // r6
  int v66; // r3
  int v67; // r0
  int v68; // [sp+28h] [bp-7Ch] BYREF
  int v69; // [sp+2Ch] [bp-78h]
  int v70; // [sp+30h] [bp-74h]
  int v71; // [sp+34h] [bp-70h]
  _DWORD v72[4]; // [sp+38h] [bp-6Ch] BYREF
  _DWORD v73[4]; // [sp+48h] [bp-5Ch] BYREF
  _DWORD v74[4]; // [sp+58h] [bp-4Ch] BYREF
  int v75[4]; // [sp+68h] [bp-3Ch] BYREF
  int v76; // [sp+78h] [bp-2Ch] BYREF
  int v77; // [sp+7Ch] [bp-28h]
  _DWORD v78[2]; // [sp+80h] [bp-24h] BYREF
  _DWORD v79[3]; // [sp+88h] [bp-1Ch] BYREF
  glitch::IReferenceCounted *v80[2]; // [sp+94h] [bp-10h] BYREF
  int v81; // [sp+9Ch] [bp-8h]

  v8 = (a5[16] - 350 - a5[14]) / 2;
  v9 = a5[17] - 300 - a5[15];
  v75[2] = v8 + 350;
  v75[0] = v8;
  v75[1] = v9 / 2;
  v75[3] = v9 / 2 + 300;
  glitch::gui::IGUIColorSelectDialog::IGUIColorSelectDialog((int)this, (int *)a2 + 1, (int)a4, (int)a5, a6, v75);
  v12 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v12 - 12)) = a2[7];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = a2[8];
  *((_DWORD *)this + 86) = 0;
  *((_DWORD *)this + 87) = 0;
  *((_BYTE *)this + 352) = 0;
  *((_DWORD *)this + 92) = 0;
  *((_DWORD *)this + 93) = 0;
  *((_DWORD *)this + 94) = 0;
  *((_DWORD *)this + 96) = 0;
  v13 = wcslen(a3);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    (int)this + 160,
    a3,
    &a3[v13]);
  v14 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 84) + 56))(*((_DWORD *)this + 84));
  v15 = (*(int (__fastcall **)(glitch::gui::IGUIElement *))(*(_DWORD *)a4 + 56))(a4);
  v16 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v15 + 24))(v15, 2);
  v17 = *((_DWORD *)this + 84);
  v18 = *(int (__fastcall **)(int, _DWORD *, glitch::gui::CGUIColorSelectDialog *, int, wchar_t *, int))(*(_DWORD *)v17 + 120);
  v74[0] = *((_DWORD *)this + 12) - 4 - *((_DWORD *)this + 10) - v16;
  v74[1] = 3;
  v74[2] = v74[0] + v16;
  v74[3] = v16 + 3;
  if ( v14 )
  {
    v19 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v14 + 28))(v14, 4);
    *((_DWORD *)this + 89) = v18(v17, v74, this, -1, dword_8BEC18, v19);
    if ( (*(int (__fastcall **)(int))(*(_DWORD *)v14 + 48))(v14) )
    {
      v20 = *((_DWORD *)this + 89);
      v21 = *(void (__fastcall **)(int, int))(*(_DWORD *)v20 + 144);
      v22 = (*(int (__fastcall **)(int))(*(_DWORD *)v14 + 48))(v14);
      v21(v20, v22);
      v23 = *((_DWORD *)this + 89);
      v24 = *(void (__fastcall **)(int, _DWORD, int, int, _DWORD))(*(_DWORD *)v23 + 148);
      v25 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v14 + 56))(v14, 2);
      v81 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v14 + 16))(v14, 18);
      v24(v23, 0, v25, v81, 0);
      v26 = *((_DWORD *)this + 89);
      v27 = *(void (__fastcall **)(int, int, int))(*(_DWORD *)v26 + 148);
      v28 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v14 + 56))(v14, 2);
      v80[1] = (glitch::IReferenceCounted *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v14 + 16))(v14, 18);
      v27(v26, 1, v28);
    }
    v29 = *((_DWORD *)this + 89);
  }
  else
  {
    v29 = v18(v17, v74, this, -1, dword_8BEC18, (int)"C");
    *((_DWORD *)this + 89) = v29;
  }
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v29 + 56))(v29, 1);
  *(_BYTE *)(*((_DWORD *)this + 89) + 308) = 0;
  glitch::gui::IGUIElement::setAlignment(*((float *)this + 89), 1, 1, 0, 0);
  v30 = *((_DWORD *)this + 89) + *(_DWORD *)(**((_DWORD **)this + 89) - 16);
  ++*(_DWORD *)(v30 + 4);
  v31 = *((_DWORD *)this + 84);
  v32 = *((_DWORD *)this + 12) - *((_DWORD *)this + 10);
  v33 = *(int (__fastcall **)(int, _DWORD *, glitch::gui::CGUIColorSelectDialog *, int, const char *, _DWORD))(*(_DWORD *)v31 + 120);
  v73[0] = v32 - 80;
  v73[2] = v32 - 10;
  v73[1] = 30;
  v73[3] = 50;
  if ( v14 )
    v34 = (const char *)(*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v14 + 28))(v14, 0);
  else
    v34 = "O";
  v35 = v33(v31, v73, this, -1, v34, 0);
  *((_DWORD *)this + 90) = v35;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v35 + 56))(v35, 1);
  glitch::gui::IGUIElement::setAlignment(*((float *)this + 90), 1, 1, 0, 0);
  v36 = *((_DWORD *)this + 90) + *(_DWORD *)(**((_DWORD **)this + 90) - 16);
  ++*(_DWORD *)(v36 + 4);
  v37 = *((_DWORD *)this + 84);
  v38 = *((_DWORD *)this + 12) - *((_DWORD *)this + 10);
  v39 = *(int (__fastcall **)(int, _DWORD *, glitch::gui::CGUIColorSelectDialog *, int, const char *, _DWORD))(*(_DWORD *)v37 + 120);
  v72[0] = v38 - 80;
  v72[2] = v38 - 10;
  v72[1] = 55;
  v72[3] = 75;
  if ( v14 )
    v40 = (const char *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v14 + 28))(v14, 1);
  else
    v40 = "C";
  v41 = v39(v37, v72, this, -1, v40, 0);
  *((_DWORD *)this + 91) = v41;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v41 + 56))(v41, 1);
  glitch::gui::IGUIElement::setAlignment(*((float *)this + 91), 1, 1, 0, 0);
  v42 = *((_DWORD *)this + 91) + *(_DWORD *)(**((_DWORD **)this + 91) - 16);
  ++*(_DWORD *)(v42 + 4);
  v43 = *((_DWORD *)this + 84);
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v44 = (*(int (__fastcall **)(int))(*(_DWORD *)v43 + 32))(v43);
  glitch::video::CTextureManager::getTexture(v80, *(char **)(v44 + 224), "#colorring", nullptr);
  v45 = v80[0];
  if ( v80[0] )
    ++*((_DWORD *)v80[0] + 1);
  v46 = *((glitch::IReferenceCounted **)this + 96);
  *((_DWORD *)this + 96) = v45;
  if ( v46 )
    glitch::IReferenceCounted::drop(v46);
  if ( v80[0] )
    glitch::IReferenceCounted::drop(v80[0]);
  if ( !*((_DWORD *)this + 96) )
  {
    v66 = *((_DWORD *)this + 84);
    v79[1] = 128;
    v79[0] = 128;
    v67 = (*(int (__fastcall **)(int))(*(_DWORD *)v66 + 56))(v66);
    v79[2] = (*(int (__fastcall **)(int, int))(*(_DWORD *)v67 + 16))(v67, 1);
    glitch::gui::CGUIColorSelectDialog::buildColorRing((int)this, v79, 1);
  }
  v47 = *((_DWORD *)this + 84);
  v68 = 20;
  v69 = 20;
  v48 = *(int (__fastcall **)(int, char *, _DWORD *, int, glitch::gui::CGUIColorSelectDialog *, int, _DWORD))(*(_DWORD *)v47 + 140);
  v78[1] = 20;
  v78[0] = 20;
  v49 = v48(v47, (char *)this + 384, v78, 1, this, -1, 0);
  *((_DWORD *)this + 95) = v49;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v49 + 56))(v49, 1);
  v50 = *((_DWORD *)this + 95) + *(_DWORD *)(**((_DWORD **)this + 95) - 16);
  ++*(_DWORD *)(v50 + 4);
  v51 = (char **)&unk_9579A8;
  do
  {
    v62 = (int)*(v51 - 6);
    v63 = (int)*(v51 - 3);
    v64 = (int)*(v51 - 2);
    if ( v62 )
    {
      v52 = *((_DWORD *)this + 84);
      v53 = v63 + 15;
      v54 = v64 + 20;
      v68 = (int)*(v51 - 3);
      v69 = v64;
      v70 = v63 + 15;
      v71 = v64 + 20;
      v55 = (*(int (__fastcall **)(int, int, int *, _DWORD, _DWORD, glitch::gui::CGUIColorSelectDialog *, int, _DWORD))(*(_DWORD *)v52 + 168))(
              v52,
              v62,
              &v68,
              0,
              0,
              this,
              -1,
              0);
      (*(void (__fastcall **)(int, int))(*(_DWORD *)v55 + 56))(v55, 1);
    }
    else
    {
      v53 = v63 + 15;
      v54 = v64 + 20;
    }
    v56 = (int)*(v51 - 4);
    if ( v56 )
    {
      v57 = *((_DWORD *)this + 84);
      v68 = v63 + 52;
      v70 = v63 + 67;
      v69 = v64;
      v71 = v54;
      v58 = (*(int (__fastcall **)(int, int, int *, _DWORD, _DWORD, glitch::gui::CGUIColorSelectDialog *, int, _DWORD))(*(_DWORD *)v57 + 168))(
              v57,
              v56,
              &v68,
              0,
              0,
              this,
              -1,
              0);
      (*(void (__fastcall **)(int, int))(*(_DWORD *)v58 + 56))(v58, 1);
    }
    v59 = *((_DWORD *)this + 84);
    v70 = v53 + 35;
    v68 = v53;
    v69 = v64;
    v71 = v54;
    v76 = (*(int (__fastcall **)(int, _DWORD, int *, int, glitch::gui::CGUIColorSelectDialog *, int))(*(_DWORD *)v59 + 172))(
            v59,
            *(v51 - 5),
            &v68,
            1,
            this,
            -1);
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v76 + 56))(v76, 1);
    ++*(_DWORD *)(v76 + *(_DWORD *)(*(_DWORD *)v76 - 16) + 4);
    v60 = *((_DWORD *)this + 84);
    v70 = v63 + 130;
    v68 = v63 + 70;
    v69 = v64 + 4;
    v71 = v64 + 16;
    v77 = (*(int (__fastcall **)(int, int, int *, glitch::gui::CGUIColorSelectDialog *, int))(*(_DWORD *)v60 + 136))(
            v60,
            1,
            &v68,
            this,
            -1);
    ++*(_DWORD *)(v77 + *(_DWORD *)(*(_DWORD *)v77 - 16) + 4);
    (*(void (__fastcall **)(int))(*(_DWORD *)v77 + 56))(v77);
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v77 + 128))(v77, *v51 - *(v51 - 1));
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v77 + 136))(v77, 1);
    v61 = *((int **)this + 93);
    if ( v61 == *((int **)this + 94) )
    {
      std::vector<glitch::gui::CGUIColorSelectDialog::SBatteryItem,glitch::core::SAllocator<glitch::gui::CGUIColorSelectDialog::SBatteryItem,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        (_DWORD *)this + 92,
        (int)v61,
        &v76);
    }
    else
    {
      *v61 = v76;
      v61[1] = v77;
      *((_DWORD *)this + 93) += 8;
    }
    v51 += 7;
  }
  while ( v51 != off_957A6C );
  glitch::gui::IGUIElement::bringToFront(this, *((glitch::gui::IGUIElement **)this + 91));
  glitch::gui::IGUIElement::bringToFront(this, *((glitch::gui::IGUIElement **)this + 90));
  return this;
}


// ===== 6aaa24 `virtual thunk to'glitch::gui::CGUIColorSelectDialog::~CGUIColorSelectDialog() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIColorSelectDialog::~CGUIColorSelectDialog(
        glitch::gui::CGUIColorSelectDialog *this)
{
  glitch::gui::CGUIColorSelectDialog::~CGUIColorSelectDialog((glitch::gui::CGUIColorSelectDialog *)((char *)this
                                                                                                  + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6aaa34 `virtual thunk to'glitch::gui::CGUIColorSelectDialog::~CGUIColorSelectDialog() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIColorSelectDialog::~CGUIColorSelectDialog(
        glitch::gui::CGUIColorSelectDialog *this)
{
  glitch::gui::CGUIColorSelectDialog::~CGUIColorSelectDialog((glitch::gui::CGUIColorSelectDialog *)((char *)this
                                                                                                  + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6aaa44 `virtual thunk to'glitch::gui::CGUIColorSelectDialog::~CGUIColorSelectDialog() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIColorSelectDialog::~CGUIColorSelectDialog(
        glitch::gui::CGUIColorSelectDialog *this)
{
  glitch::gui::CGUIColorSelectDialog::~CGUIColorSelectDialog((glitch::gui::CGUIColorSelectDialog *)((char *)this
                                                                                                  + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6aaa54 `virtual thunk to'glitch::gui::CGUIColorSelectDialog::~CGUIColorSelectDialog() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIColorSelectDialog::~CGUIColorSelectDialog(
        glitch::gui::CGUIColorSelectDialog *this)
{
  glitch::gui::CGUIColorSelectDialog::~CGUIColorSelectDialog((glitch::gui::CGUIColorSelectDialog *)((char *)this
                                                                                                  + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6aaa64 glitch::gui::CGUIComboBox::setTextAlignment(glitch::gui::EGUI_ALIGNMENT,glitch::gui::EGUI_ALIGNMENT) =====
int __fastcall glitch::gui::CGUIComboBox::setTextAlignment(_DWORD *a1, int a2, int a3)
{
  int v3; // r3

  v3 = a1[87];
  a1[95] = a2;
  a1[96] = a3;
  return (*(int (__fastcall **)(int))(*(_DWORD *)v3 + 160))(v3);
}


// ===== 6aaa88 glitch::gui::CGUIComboBox::getItemCount(void) =====
int __fastcall glitch::gui::CGUIComboBox::getItemCount(glitch::gui::CGUIComboBox *this)
{
  return 954437177 * ((*((_DWORD *)this + 90) - *((_DWORD *)this + 89)) >> 3);
}


// ===== 6aaab8 glitch::gui::CGUIComboBox::getItem(uint) =====
int __fastcall glitch::gui::CGUIComboBox::getItem(glitch::gui::CGUIComboBox *this, unsigned int a2)
{
  int v2; // r3
  int v3; // r2
  int result; // r0
  unsigned int v5; // r2

  v2 = *((_DWORD *)this + 89);
  v3 = (*((_DWORD *)this + 90) - v2) >> 3;
  result = 119304647 * v3;
  v5 = 954437177 * v3;
  if ( a2 >= v5 )
    result = 0;
  else
    v2 += 72 * a2;
  if ( a2 < v5 )
    return *(_DWORD *)(v2 + 68);
  return result;
}


// ===== 6aaafc glitch::gui::CGUIComboBox::getText(void) =====
int __fastcall glitch::gui::CGUIComboBox::getText(glitch::gui::CGUIComboBox *this)
{
  return (*(int (__fastcall **)(glitch::gui::CGUIComboBox *, _DWORD))(*(_DWORD *)this + 128))(
           this,
           *((_DWORD *)this + 92));
}


// ===== 6aab14 glitch::gui::CGUIComboBox::getSelected(void) =====
int __fastcall glitch::gui::CGUIComboBox::getSelected(glitch::gui::CGUIComboBox *this)
{
  return *((_DWORD *)this + 92);
}


// ===== 6aab1c glitch::gui::CGUIComboBox::setSelected(int) =====
int __fastcall glitch::gui::CGUIComboBox::setSelected(int this, int a2)
{
  int v2; // r12

  if ( a2 >= -1 )
  {
    v2 = *(_DWORD *)(this + 356);
    if ( a2 < 954437177 * ((*(_DWORD *)(this + 360) - v2) >> 3) )
    {
      *(_DWORD *)(this + 368) = a2;
      if ( a2 == -1 )
        return (*(int (__fastcall **)(_DWORD, wchar_t *))(**(_DWORD **)(this + 348) + 68))(
                 *(_DWORD *)(this + 348),
                 dword_8BEC18);
      else
        return (*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(this + 348) + 68))(
                 *(_DWORD *)(this + 348),
                 *(_DWORD *)(v2 + 72 * a2 + 68));
    }
  }
  return this;
}


// ===== 6aabb4 glitch::gui::CGUIComboBox::sendSelectionChangedEvent(void) =====
int __fastcall glitch::gui::CGUIComboBox::sendSelectionChangedEvent(int this)
{
  int v1; // r3
  _DWORD v2[7]; // [sp+0h] [bp-1Ch] BYREF

  v1 = *(_DWORD *)(this + 36);
  if ( v1 )
  {
    v2[2] = this;
    v2[4] = 19;
    v2[3] = 0;
    v2[0] = 0;
    return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v1 + 8))(v1, v2);
  }
  return this;
}


// ===== 6aabfc `global constructor keyed to'.._source_glitch_gui_CGUIComboBox.cpp =====
void `global constructor keyed to'.._source_glitch_gui_CGUIComboBox.cpp()
{
  dword_9F76B8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F76B4 = 1056964608;
}


// ===== 6aac1c glitch::gui::CGUIComboBox::openCloseMenu(void) =====
int __fastcall glitch::gui::CGUIComboBox::openCloseMenu(glitch::gui::CGUIComboBox *this)
{
  int result; // r0
  int v3; // r3
  int v4; // r0
  int v5; // r6
  int v6; // r0
  int v7; // r5
  int v8; // r2
  int v9; // r6
  void *v10; // r6
  int v11; // r2
  int v12; // r6
  int v13[4]; // [sp+10h] [bp-1Ch] BYREF
  _BYTE v14[4]; // [sp+20h] [bp-Ch] BYREF
  int v15; // [sp+24h] [bp-8h]

  if ( *((_DWORD *)this + 88) )
  {
    (*(void (__fastcall **)(_DWORD, glitch::gui::CGUIComboBox *))(**((_DWORD **)this + 84) + 16))(
      *((_DWORD *)this + 84),
      this);
    result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 88) + 28))(*((_DWORD *)this + 88));
    *((_DWORD *)this + 88) = 0;
  }
  else
  {
    v3 = *((_DWORD *)this + 9);
    if ( v3 )
      (*(void (__fastcall **)(_DWORD, glitch::gui::CGUIComboBox *))(*(_DWORD *)v3 + 100))(*((_DWORD *)this + 9), this);
    v4 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 84) + 56))(*((_DWORD *)this + 84));
    v5 = 954437177 * ((*((_DWORD *)this + 90) - *((_DWORD *)this + 89)) >> 3);
    if ( v5 <= 5 )
    {
      if ( !v5 )
        v5 = 1;
    }
    else
    {
      v5 = 5;
    }
    v6 = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v4 + 40))(v4, 0);
    if ( v6 )
    {
      (*(void (__fastcall **)(_BYTE *, int, const char *))(*(_DWORD *)v6 + 28))(v14, v6, "A");
      v5 *= v15 + 4;
    }
    v7 = 0;
    v8 = *((_DWORD *)this + 16) - *((_DWORD *)this + 14);
    v9 = v5 + *((_DWORD *)this + 17) - *((_DWORD *)this + 15);
    v13[1] = *((_DWORD *)this + 17) - *((_DWORD *)this + 15);
    v13[2] = v8;
    v13[3] = v9;
    v13[0] = 0;
    v10 = operator new(0x1E8u, 0);
    glitch::gui::CGUIListBox::CGUIListBox((int)v10, *((_DWORD *)this + 84), (int)this, -1, v13, 0, 1, 1);
    *((_DWORD *)this + 88) = v10;
    (*(void (__fastcall **)(void *, int))(*(_DWORD *)v10 + 56))(v10, 1);
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*((_DWORD *)this + 88)
                                                                + *(_DWORD *)(**((_DWORD **)this + 88) - 16)));
    v11 = *((_DWORD *)this + 89);
    if ( *((_DWORD *)this + 90) - v11 > 71 )
    {
      v12 = 0;
      do
      {
        (*(void (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 88) + 132))(
          *((_DWORD *)this + 88),
          *(_DWORD *)(v11 + v7 + 68));
        v11 = *((_DWORD *)this + 89);
        ++v12;
        v7 += 72;
      }
      while ( v12 < 954437177 * ((*((_DWORD *)this + 90) - v11) >> 3) );
    }
    (*(void (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 88) + 160))(
      *((_DWORD *)this + 88),
      *((_DWORD *)this + 92));
    return (*(int (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 84) + 16))(
             *((_DWORD *)this + 84),
             *((_DWORD *)this + 88));
  }
  return result;
}


// ===== 6aae64 glitch::gui::IGUIComboBox::IGUIComboBox(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::IGUIComboBox::IGUIComboBox(int a1, int *a2, int a3, int a4, int a5, int *a6)
{
  int v7; // r10
  int v8; // r7
  int v9; // r6
  int v10; // r8
  int v11; // r0
  _DWORD *v13; // r1
  _DWORD *v15; // r3
  int v16; // r0
  int v17; // r12
  int v18; // r10
  int v19; // r8
  int v20; // r2
  int v21; // r1
  int v22; // r6
  int v23; // r7
  int v24; // r0
  int v25; // r1
  int v26; // r1
  int v27; // r2
  int v28; // r1
  int v29; // r3
  int v30; // r1
  bool v31; // cc
  int v32; // r3
  int v33; // r3

  v7 = a6[3];
  v8 = *a6;
  v9 = a6[1];
  v10 = a6[2];
  *(_DWORD *)a1 = off_95C300;
  v11 = a2[1];
  v13 = a2 + 1;
  *(_DWORD *)a1 = v11;
  *(_DWORD *)(a1 + *(_DWORD *)(v11 - 12)) = v13[1];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = v13[2];
  *(_DWORD *)(a1 + 28) = a1 + 12;
  *(_DWORD *)(a1 + 32) = a1 + 12;
  *(_DWORD *)(a1 + 8) = a1 + 4;
  *(_DWORD *)(a1 + 4) = a1 + 4;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 12),
    0x10u);
  **(_BYTE **)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 132) = 0;
  *(_BYTE *)(a1 + 153) = 1;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
  *(_DWORD *)(a1 + 144) = 1;
  *(_DWORD *)(a1 + 148) = 1;
  *(_BYTE *)(a1 + 152) = 1;
  *(_DWORD *)(a1 + 88) = v8;
  *(_DWORD *)(a1 + 92) = v9;
  *(_DWORD *)(a1 + 96) = v10;
  *(_DWORD *)(a1 + 100) = v7;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = v8;
  *(_DWORD *)(a1 + 44) = v9;
  *(_DWORD *)(a1 + 48) = v10;
  *(_DWORD *)(a1 + 52) = v7;
  *(_DWORD *)(a1 + 56) = v8;
  *(_DWORD *)(a1 + 60) = v9;
  *(_DWORD *)(a1 + 64) = v10;
  *(_DWORD *)(a1 + 68) = v7;
  *(_DWORD *)(a1 + 72) = v8;
  *(_DWORD *)(a1 + 76) = v9;
  *(_DWORD *)(a1 + 80) = v10;
  *(_DWORD *)(a1 + 84) = v7;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 112) = 0;
  *(_DWORD *)(a1 + 116) = 0;
  *(_DWORD *)(a1 + 136) = 0;
  *(_DWORD *)(a1 + 140) = 0;
  *(_BYTE *)(a1 + 154) = 0;
  *(_DWORD *)(a1 + 224) = a1 + 160;
  *(_DWORD *)(a1 + 228) = a1 + 160;
  *(_BYTE *)(a1 + 155) = 0;
  *(_BYTE *)(a1 + 156) = 0;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 160),
    0x10u);
  **(_DWORD **)(a1 + 224) = 0;
  *(_DWORD *)(a1 + 296) = a1 + 232;
  *(_DWORD *)(a1 + 300) = a1 + 232;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 232),
    0x10u);
  **(_DWORD **)(a1 + 296) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 304) = a5;
  *(_DWORD *)(a1 + 312) = -1;
  *(_BYTE *)(a1 + 308) = 0;
  *(_BYTE *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 336) = a3;
  *(_DWORD *)(a1 + 340) = 2;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  if ( a4 )
    (*(void (__fastcall **)(int, int))(*(_DWORD *)a4 + 20))(a4, a1);
  v15 = *(_DWORD **)(a1 + 36);
  if ( v15 )
  {
    v16 = v15[15];
    v17 = v15[14];
    v18 = v15[16];
    v19 = v15[17];
    v20 = v16 + *(_DWORD *)(a1 + 68);
    v21 = v17 + *(_DWORD *)(a1 + 64);
    v22 = v16 + *(_DWORD *)(a1 + 60);
    v23 = v17 + *(_DWORD *)(a1 + 56);
    *(_DWORD *)(a1 + 76) = v22;
    *(_DWORD *)(a1 + 84) = v20;
    *(_DWORD *)(a1 + 72) = v23;
    *(_DWORD *)(a1 + 80) = v21;
    *(_DWORD *)(a1 + 68) = v20;
    *(_DWORD *)(a1 + 112) = v18;
    *(_DWORD *)(a1 + 116) = v19;
    *(_DWORD *)(a1 + 104) = v17;
    *(_DWORD *)(a1 + 108) = v16;
    *(_DWORD *)(a1 + 56) = v23;
    *(_DWORD *)(a1 + 60) = v22;
    *(_DWORD *)(a1 + 64) = v21;
    v24 = v15[20];
    if ( v21 > v24 )
      *(_DWORD *)(a1 + 80) = v24;
    v25 = v15[21];
    if ( v20 > v25 )
      *(_DWORD *)(a1 + 84) = v25;
    v26 = v15[18];
    v27 = *(_DWORD *)(a1 + 72);
    if ( v26 > v27 )
    {
      *(_DWORD *)(a1 + 72) = v26;
      v27 = v26;
    }
    v28 = v15[19];
    v29 = *(_DWORD *)(a1 + 76);
    if ( v28 > v29 )
    {
      *(_DWORD *)(a1 + 76) = v28;
      v29 = v28;
    }
    v30 = *(_DWORD *)(a1 + 84);
    v31 = v29 <= v30;
    v32 = *(_DWORD *)(a1 + 80);
    if ( !v31 )
      *(_DWORD *)(a1 + 76) = v30;
    if ( v27 > v32 )
      *(_DWORD *)(a1 + 72) = v32;
  }
  v33 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v33 - 12)) = a2[4];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[5];
  return a1;
}


// ===== 6ab13c std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(char const*,char const*) [clone] =====
_BYTE *__fastcall std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
        _DWORD *a1,
        char *a2)
{
  size_t v4; // r4
  _BYTE *result; // r0

  v4 = a2 - "Item";
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    a1,
    a2 - "Item" + 1);
  result = (_BYTE *)a1[5];
  if ( a2 != "Item" )
    result = (char *)memcpy(result, "Item", v4) + v4;
  a1[4] = result;
  *result = 0;
  return result;
}


// ===== 6ab18c glitch::gui::IGUIElement::getNextElement(int,bool,bool,glitch::gui::IGUIElement*&,glitch::gui::IGUIElement*&,bool) [clone] =====
int __fastcall glitch::gui::IGUIElement::getNextElement(int a1, int a2, int a3, int a4, char a5)
{
  int *v5; // r4
  int *v6; // r6
  int v10; // r0
  int v12; // r3
  _BOOL4 v13; // r2

  v6 = (int *)(a1 + 4);
  v5 = *(int **)(a1 + 4);
  if ( v5 == (int *)(a1 + 4) )
    return 0;
  while ( 1 )
  {
    if ( !(*(int (__fastcall **)(int))(*(_DWORD *)v5[2] + 44))(v5[2]) && !a5 )
      goto LABEL_10;
    if ( a2 )
    {
      v10 = v5[2];
    }
    else
    {
      v10 = v5[2];
      if ( *(_BYTE *)(v10 + 316) )
        goto LABEL_10;
    }
    if ( !*(_BYTE *)(v10 + 308) || *(unsigned __int8 *)(v10 + 316) != a2 )
    {
LABEL_9:
      if ( glitch::gui::IGUIElement::getNextElement(v10, a2, a3, a4, 0) )
        return 1;
      goto LABEL_10;
    }
    v12 = *(_DWORD *)(v10 + 312);
    if ( v12 == 0x40000000 )
      break;
    if ( !*(_DWORD *)a4 )
    {
      if ( v12 >= -1 )
        goto LABEL_18;
LABEL_17:
      *(_DWORD *)a4 = v10;
      v10 = v5[2];
      goto LABEL_18;
    }
    v13 = v12 > *(_DWORD *)(*(_DWORD *)a4 + 312);
    if ( v12 >= -1 )
      v13 = 0;
    if ( v13 )
      goto LABEL_17;
LABEL_18:
    if ( *(_DWORD *)a3 && v12 <= *(_DWORD *)(*(_DWORD *)a3 + 312) )
      goto LABEL_9;
    *(_DWORD *)a3 = v10;
    if ( glitch::gui::IGUIElement::getNextElement(v5[2], a2, a3, a4, 0) )
      return 1;
LABEL_10:
    v5 = (int *)*v5;
    if ( v5 == v6 )
      return 0;
  }
  *(_DWORD *)a4 = v10;
  return 1;
}


// ===== 6ab2e0 glitch::gui::IGUIElement::setTabOrder(int) [clone] =====
int __fastcall glitch::gui::IGUIElement::setTabOrder(int this, int a2)
{
  int v2; // r1
  int v3; // r4
  int i; // r3
  int v5; // [sp+8h] [bp-8h] BYREF
  int v6; // [sp+Ch] [bp-4h] BYREF

  v2 = *(unsigned __int8 *)(this + 316);
  v3 = this;
  *(_DWORD *)(this + 312) = 0;
  if ( v2 )
  {
    this = *(_DWORD *)(this + 36);
    if ( this )
    {
      for ( i = *(_DWORD *)(this + 36); i; i = *(_DWORD *)(i + 36) )
        this = i;
    }
    else
    {
      this = v3;
    }
LABEL_9:
    v5 = 0;
    v6 = 0;
    this = glitch::gui::IGUIElement::getNextElement(this, v2, (int)&v6, (int)&v5, 1);
    if ( v6 )
      *(_DWORD *)(v3 + 312) = *(_DWORD *)(v6 + 312) + 1;
  }
  else
  {
    while ( 1 )
    {
      this = *(_DWORD *)(this + 36);
      if ( !this )
        break;
      if ( *(_BYTE *)(this + 316) )
        goto LABEL_9;
    }
  }
  return this;
}


// ===== 6ab38c glitch::gui::CGUIComboBox::CGUIComboBox(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::CGUIComboBox::CGUIComboBox(int a1, int *a2, int a3, int a4, int a5, int *a6)
{
  int v7; // r7
  int v8; // r4
  int v9; // lr
  int v11; // r3
  int v12; // r3
  int v13; // r0
  int v14; // r5
  int v15; // r0
  int v16; // r2
  int v17; // r12
  int v18; // r0
  float v19; // r0
  int v20; // r10
  void (__fastcall *v21)(int, int); // r7
  int v22; // r0
  int v23; // r10
  void (__fastcall *v24)(int, _DWORD, int, int, _DWORD); // r7
  int v25; // r9
  int v26; // r10
  void (__fastcall *v27)(int, int, int); // r7
  int v28; // r9
  int v29; // r3
  int v30; // r0
  int v31; // r1
  int v32; // r3
  int v33; // r2
  int v34; // r0
  int v35; // r1
  int v37; // [sp+18h] [bp-28h] BYREF
  int v38; // [sp+1Ch] [bp-24h]
  int v39; // [sp+20h] [bp-20h]
  int v40; // [sp+24h] [bp-1Ch]
  int v41[5]; // [sp+28h] [bp-18h] BYREF
  int v42; // [sp+3Ch] [bp-4h]

  v7 = *a6;
  v8 = a6[1];
  v9 = a6[2];
  v41[3] = a6[3];
  v41[0] = v7;
  v41[1] = v8;
  v41[2] = v9;
  glitch::gui::IGUIComboBox::IGUIComboBox(a1, a2 + 1, a3, a4, a5, v41);
  v11 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v11 - 12)) = a2[7];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[8];
  v12 = *(_DWORD *)(a1 + 336);
  *(_DWORD *)(a1 + 368) = -1;
  *(_DWORD *)(a1 + 380) = 0;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 356) = 0;
  *(_DWORD *)(a1 + 360) = 0;
  *(_DWORD *)(a1 + 364) = 0;
  *(_BYTE *)(a1 + 372) = 0;
  *(_DWORD *)(a1 + 376) = 0;
  *(_DWORD *)(a1 + 384) = 2;
  v13 = (*(int (__fastcall **)(int))(*(_DWORD *)v12 + 56))(v12);
  v14 = v13;
  if ( v13 )
    v15 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v13 + 24))(v13, 2);
  else
    v15 = 15;
  v16 = *(_DWORD *)(a1 + 336);
  v17 = a6[3] - 2 - a6[1];
  v18 = a6[2] - 2 - *a6 - v15;
  v39 = a6[2] - 2 - *a6;
  v37 = v18;
  v38 = 2;
  v40 = v17;
  v19 = COERCE_FLOAT(
          (*(int (__fastcall **)(int, int *, int, int, wchar_t *, _DWORD))(*(_DWORD *)v16 + 120))(
            v16,
            &v37,
            a1,
            -1,
            dword_8BEC18,
            0));
  *(float *)(a1 + 344) = v19;
  if ( v14 )
  {
    if ( (*(int (__fastcall **)(int))(*(_DWORD *)v14 + 48))(v14) )
    {
      v20 = *(_DWORD *)(a1 + 344);
      v21 = *(void (__fastcall **)(int, int))(*(_DWORD *)v20 + 144);
      v22 = (*(int (__fastcall **)(int))(*(_DWORD *)v14 + 48))(v14);
      v21(v20, v22);
      v23 = *(_DWORD *)(a1 + 344);
      v24 = *(void (__fastcall **)(int, _DWORD, int, int, _DWORD))(*(_DWORD *)v23 + 148);
      v25 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v14 + 56))(v14, 6);
      v42 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v14 + 16))(v14, 18);
      v24(v23, 0, v25, v42, 0);
      v26 = *(_DWORD *)(a1 + 344);
      v27 = *(void (__fastcall **)(int, int, int))(*(_DWORD *)v26 + 148);
      v28 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v14 + 56))(v14, 6);
      v41[4] = (*(int (__fastcall **)(int, int))(*(_DWORD *)v14 + 16))(v14, 18);
      v27(v26, 1, v28);
    }
    v19 = *(float *)(a1 + 344);
  }
  glitch::gui::IGUIElement::setAlignment(v19, 1, 1, 0, 1);
  (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 344) + 56))(*(_DWORD *)(a1 + 344), 1);
  *(_BYTE *)(*(_DWORD *)(a1 + 344) + 308) = 0;
  v29 = *(_DWORD *)(a1 + 344);
  v37 = 2;
  v38 = 2;
  v30 = *(_DWORD *)(a1 + 44);
  v31 = *(_DWORD *)(a1 + 48) - 2 - *(_DWORD *)(a1 + 40) - (*(_DWORD *)(v29 + 64) - *(_DWORD *)(v29 + 56));
  v32 = *(_DWORD *)(a1 + 336);
  v33 = *(_DWORD *)(a1 + 52) - 2;
  v39 = v31;
  v40 = v33 - v30;
  v34 = (*(int (__fastcall **)(int, wchar_t *, int *, _DWORD, _DWORD, int, int, _DWORD))(*(_DWORD *)v32 + 168))(
          v32,
          dword_8BEC18,
          &v37,
          0,
          0,
          a1,
          -1,
          0);
  *(_DWORD *)(a1 + 348) = v34;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v34 + 56))(v34, 1);
  glitch::gui::IGUIElement::setAlignment(*(float *)(a1 + 348), 0, 1, 0, 1);
  (*(void (__fastcall **)(_DWORD, _DWORD, int))(**(_DWORD **)(a1 + 348) + 160))(*(_DWORD *)(a1 + 348), 0, 2);
  (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 348) + 140))(*(_DWORD *)(a1 + 348), 1);
  *(_BYTE *)(a1 + 308) = 1;
  *(_BYTE *)(a1 + 155) = 1;
  glitch::gui::IGUIElement::setTabOrder(a1, v35);
  return a1;
}


// ===== 6ab740 glitch::gui::CGUIComboBox::CGUIComboBox(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::CGUIComboBox::CGUIComboBox(int a1, int a2, int a3, int a4, int *a5)
{
  int v5; // r10
  int v6; // r9
  int v7; // r11
  int v9; // r3
  int v10; // r0
  int v11; // r5
  int v12; // r0
  int v13; // r2
  int v14; // r12
  int v15; // r0
  float v16; // r0
  int v17; // r10
  void (__fastcall *v18)(int, int); // r7
  int v19; // r0
  int v20; // r10
  void (__fastcall *v21)(int, _DWORD, int, int, _DWORD); // r7
  int v22; // r9
  int v23; // r10
  void (__fastcall *v24)(int, int, int); // r7
  int v25; // r9
  int v26; // r3
  int v27; // r0
  int v28; // r1
  int v29; // r3
  int v30; // r2
  int v31; // r0
  int v32; // r1
  int v34; // [sp+18h] [bp-2Ch] BYREF
  int v35; // [sp+1Ch] [bp-28h]
  int v36; // [sp+20h] [bp-24h]
  int v37; // [sp+24h] [bp-20h]
  int v38[5]; // [sp+28h] [bp-1Ch] BYREF
  int v39; // [sp+3Ch] [bp-8h]

  *(_DWORD *)(a1 + 396) = 1;
  *(_DWORD *)(a1 + 392) = off_95B720;
  *(_DWORD *)(a1 + 388) = off_986E6C;
  *(_DWORD *)&byte_4[a1 + 388] = off_986E8C;
  v5 = a5[1];
  v6 = a5[2];
  v7 = a5[3];
  v38[0] = *a5;
  v38[1] = v5;
  v38[2] = v6;
  v38[3] = v7;
  glitch::gui::IGUIComboBox::IGUIComboBox(a1, (int *)off_986C74, a2, a3, a4, v38);
  v9 = *(_DWORD *)(a1 + 336);
  *(_DWORD *)(a1 + 380) = 0;
  *(_DWORD *)(a1 + 388) = off_986C44;
  *(_DWORD *)(a1 + 392) = off_986C64;
  *(_DWORD *)a1 = off_986B90;
  *(_DWORD *)(a1 + 368) = -1;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 356) = 0;
  *(_DWORD *)(a1 + 360) = 0;
  *(_DWORD *)(a1 + 364) = 0;
  *(_BYTE *)(a1 + 372) = 0;
  *(_DWORD *)(a1 + 376) = 0;
  *(_DWORD *)(a1 + 384) = 2;
  v10 = (*(int (__fastcall **)(int))(*(_DWORD *)v9 + 56))(v9);
  v11 = v10;
  if ( v10 )
    v12 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v10 + 24))(v10, 2);
  else
    v12 = 15;
  v13 = *(_DWORD *)(a1 + 336);
  v14 = a5[3] - 2 - a5[1];
  v15 = a5[2] - 2 - *a5 - v12;
  v36 = a5[2] - 2 - *a5;
  v34 = v15;
  v35 = 2;
  v37 = v14;
  v16 = COERCE_FLOAT(
          (*(int (__fastcall **)(int, int *, int, int, wchar_t *, _DWORD))(*(_DWORD *)v13 + 120))(
            v13,
            &v34,
            a1,
            -1,
            dword_8BEC18,
            0));
  *(float *)(a1 + 344) = v16;
  if ( v11 )
  {
    if ( (*(int (__fastcall **)(int))(*(_DWORD *)v11 + 48))(v11) )
    {
      v17 = *(_DWORD *)(a1 + 344);
      v18 = *(void (__fastcall **)(int, int))(*(_DWORD *)v17 + 144);
      v19 = (*(int (__fastcall **)(int))(*(_DWORD *)v11 + 48))(v11);
      v18(v17, v19);
      v20 = *(_DWORD *)(a1 + 344);
      v21 = *(void (__fastcall **)(int, _DWORD, int, int, _DWORD))(*(_DWORD *)v20 + 148);
      v22 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v11 + 56))(v11, 6);
      v39 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v11 + 16))(v11, 18);
      v21(v20, 0, v22, v39, 0);
      v23 = *(_DWORD *)(a1 + 344);
      v24 = *(void (__fastcall **)(int, int, int))(*(_DWORD *)v23 + 148);
      v25 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v11 + 56))(v11, 6);
      v38[4] = (*(int (__fastcall **)(int, int))(*(_DWORD *)v11 + 16))(v11, 18);
      v24(v23, 1, v25);
    }
    v16 = *(float *)(a1 + 344);
  }
  glitch::gui::IGUIElement::setAlignment(v16, 1, 1, 0, 1);
  (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 344) + 56))(*(_DWORD *)(a1 + 344), 1);
  *(_BYTE *)(*(_DWORD *)(a1 + 344) + 308) = 0;
  v26 = *(_DWORD *)(a1 + 344);
  v34 = 2;
  v35 = 2;
  v27 = *(_DWORD *)(a1 + 44);
  v28 = *(_DWORD *)(a1 + 48) - 2 - *(_DWORD *)(a1 + 40) - (*(_DWORD *)(v26 + 64) - *(_DWORD *)(v26 + 56));
  v29 = *(_DWORD *)(a1 + 336);
  v30 = *(_DWORD *)(a1 + 52) - 2;
  v36 = v28;
  v37 = v30 - v27;
  v31 = (*(int (__fastcall **)(int, wchar_t *, int *, _DWORD, _DWORD, int, int, _DWORD))(*(_DWORD *)v29 + 168))(
          v29,
          dword_8BEC18,
          &v34,
          0,
          0,
          a1,
          -1,
          0);
  *(_DWORD *)(a1 + 348) = v31;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v31 + 56))(v31, 1);
  glitch::gui::IGUIElement::setAlignment(*(float *)(a1 + 348), 0, 1, 0, 1);
  (*(void (__fastcall **)(_DWORD, _DWORD, int))(**(_DWORD **)(a1 + 348) + 160))(*(_DWORD *)(a1 + 348), 0, 2);
  (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 348) + 140))(*(_DWORD *)(a1 + 348), 1);
  *(_BYTE *)(a1 + 308) = 1;
  *(_BYTE *)(a1 + 155) = 1;
  glitch::gui::IGUIElement::setTabOrder(a1, v32);
  return a1;
}


// ===== 6abb48 glitch::gui::CGUIComboBox::onEvent(glitch::SEvent const&) =====
int __fastcall glitch::gui::CGUIComboBox::onEvent(glitch::gui::CGUIComboBox *this, int *a2)
{
  glitch::gui::CGUIComboBox *v2; // r4
  float v4; // r6
  int v5; // r3
  int v7; // r1
  int v8; // r2
  int v9; // r3
  bool v10; // zf
  int v11; // r3
  int v12; // r3
  int v13; // r2
  int v14; // r6
  int v15; // r3
  void (__fastcall *v16)(glitch::gui::CGUIComboBox *, int); // r5
  int v17; // r0
  int v18; // r2
  int v19; // r1
  int v20; // r0
  int v21; // r3
  bool v22; // zf
  glitch::gui::CGUIComboBox *v23; // r1
  glitch::gui::CGUIComboBox *v24; // r0
  glitch::gui::CGUIComboBox *i; // r3
  bool v26; // zf
  int v27; // r2
  int v28; // r7
  int v29; // r3
  void (__fastcall *v30)(glitch::gui::CGUIComboBox *, int); // r7
  int v31; // r6
  int v32; // r0
  int v33; // r1
  int v34; // r2
  int v35; // r3
  _DWORD *v36; // r3
  int v37; // r12
  int v38; // r2
  _DWORD v39[3]; // [sp+0h] [bp-Ch] BYREF

  v2 = this;
  if ( !*((_BYTE *)this + 153) )
    goto LABEL_5;
  v4 = *(float *)a2;
  if ( *a2 == 1 )
  {
    v11 = a2[5];
    switch ( v11 )
    {
      case 3:
        v36 = *((_DWORD **)this + 88);
        v37 = a2[3];
        v38 = a2[2];
        if ( !v36
          || v38 < v36[14]
          || v37 < v36[15]
          || v38 > v36[16]
          || v37 > v36[17]
          || !(*(int (__fastcall **)(_DWORD *))(*v36 + 8))(v36) )
        {
          this = v2;
          goto LABEL_36;
        }
        return (int)&dword_0 + 1;
      case 7:
        v30 = *(void (__fastcall **)(glitch::gui::CGUIComboBox *, int))(*(_DWORD *)this + 148);
        v31 = *((_DWORD *)this + 92);
        if ( *((float *)a2 + 4) < 0.0 )
          v32 = v31 + 1;
        else
          v32 = *((_DWORD *)this + 92);
        if ( v32 )
          v33 = 1;
        else
          v33 = -1;
        v30(v2, v33);
        v34 = *((_DWORD *)v2 + 92);
        if ( v34 < 0 )
        {
          (*(void (__fastcall **)(glitch::gui::CGUIComboBox *, _DWORD))(*(_DWORD *)v2 + 148))(v2, 0);
          v34 = *((_DWORD *)v2 + 92);
        }
        v35 = 954437177 * ((*((_DWORD *)v2 + 90) - *((_DWORD *)v2 + 89)) >> 3);
        if ( v34 >= v35 )
        {
          (*(void (__fastcall **)(glitch::gui::CGUIComboBox *, int))(*(_DWORD *)v2 + 148))(v2, v35 - 1);
          v34 = *((_DWORD *)v2 + 92);
        }
        if ( v34 != v31 )
          glitch::gui::CGUIComboBox::sendSelectionChangedEvent((int)v2);
        break;
      case 0:
        v12 = *((_DWORD *)this + 88);
        v13 = a2[2];
        v39[1] = a2[3];
        v39[0] = v13;
        if ( v12 && (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v12 + 16))(v12, v39) )
        {
          (*(void (__fastcall **)(_DWORD, int *))(**((_DWORD **)v2 + 88) + 8))(*((_DWORD *)v2 + 88), a2);
          return 1;
        }
        return (int)&dword_0 + 1;
    }
LABEL_5:
    v5 = *((_DWORD *)v2 + 9);
    if ( v5 )
      return (*(int (__fastcall **)(_DWORD, int *))(*(_DWORD *)v5 + 8))(*((_DWORD *)v2 + 9), a2);
    else
      return 0;
  }
  if ( LODWORD(v4) != 2 )
  {
    if ( v4 == 0.0 )
    {
      switch ( a2[4] )
      {
        case 0:
          if ( !*((_DWORD *)this + 88) )
            goto LABEL_5;
          if ( (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 84) + 28))(*((_DWORD *)this + 84)) )
            goto LABEL_48;
          v19 = a2[2];
          v20 = *((_DWORD *)v2 + 88);
          if ( !v19 )
            goto LABEL_5;
          v21 = *(_DWORD *)(v19 + 36);
          break;
        case 5:
          if ( a2[2] == *((_DWORD *)this + 86) )
            goto LABEL_36;
          goto LABEL_5;
        case 8:
        case 9:
          v15 = a2[2];
          if ( v15 != *((_DWORD *)this + 88) )
            return (int)&dword_0 + 1;
          v16 = *(void (__fastcall **)(glitch::gui::CGUIComboBox *, int))(*(_DWORD *)this + 148);
          v17 = (*(int (__fastcall **)(int))(*(_DWORD *)v15 + 156))(a2[2]);
          v16(v2, v17);
          v18 = *((_DWORD *)v2 + 92);
          if ( v18 < 0 || v18 >= 954437177 * ((*((_DWORD *)v2 + 90) - *((_DWORD *)v2 + 89)) >> 3) )
            (*(void (__fastcall **)(glitch::gui::CGUIComboBox *, int))(*(_DWORD *)v2 + 148))(v2, -1);
          glitch::gui::CGUIComboBox::openCloseMenu(v2);
          glitch::gui::CGUIComboBox::sendSelectionChangedEvent((int)v2);
          return (int)&dword_0 + 1;
        default:
          goto LABEL_5;
      }
      while ( v21 )
      {
        v19 = v21;
        v22 = v20 == v21;
        if ( v20 != v21 )
          v22 = *(_DWORD *)(v21 + 36) == 0;
        if ( v22 )
          goto LABEL_47;
        v21 = *(_DWORD *)(v21 + 36);
      }
      v21 = v19;
LABEL_47:
      if ( v20 == v21 )
      {
LABEL_48:
        v23 = (glitch::gui::CGUIComboBox *)a2[3];
        if ( v23 != v2 && v23 != *((glitch::gui::CGUIComboBox **)v2 + 86) )
        {
          v24 = *((glitch::gui::CGUIComboBox **)v2 + 88);
          if ( v23 != v24 )
          {
            if ( !v23 )
              goto LABEL_60;
            for ( i = *((glitch::gui::CGUIComboBox **)v23 + 9); i; i = *((glitch::gui::CGUIComboBox **)i + 9) )
            {
              v23 = i;
              v26 = v24 == i;
              if ( v24 != i )
                v26 = *((_DWORD *)i + 9) == 0;
              if ( v26 )
                goto LABEL_59;
            }
            i = v23;
LABEL_59:
            if ( v24 != i )
LABEL_60:
              glitch::gui::CGUIComboBox::openCloseMenu(v2);
          }
        }
      }
    }
    goto LABEL_5;
  }
  v7 = *((_DWORD *)this + 88);
  if ( v7 )
  {
    if ( !*((_BYTE *)a2 + 16) )
    {
      v8 = *((unsigned __int8 *)a2 + 16);
      v9 = a2[3];
      goto LABEL_12;
    }
    v9 = a2[3];
    if ( v9 != 27 )
    {
      v8 = 1;
      goto LABEL_12;
    }
LABEL_36:
    glitch::gui::CGUIComboBox::openCloseMenu(this);
    return 1;
  }
  v8 = *((unsigned __int8 *)a2 + 16);
  v9 = a2[3];
LABEL_12:
  v10 = v9 == 13;
  if ( v9 != 13 )
    v10 = v9 == 32;
  if ( !v10 )
  {
    if ( v8 )
    {
      v14 = *((_DWORD *)this + 92);
      switch ( v9 )
      {
        case '!':
        case '$':
          (*(void (__fastcall **)(glitch::gui::CGUIComboBox *, _DWORD))(*(_DWORD *)this + 148))(this, 0);
          v28 = 1;
          v27 = *((_DWORD *)v2 + 92);
          break;
        case '"':
        case '#':
          v28 = 1;
          (*(void (__fastcall **)(glitch::gui::CGUIComboBox *, int))(*(_DWORD *)this + 148))(
            this,
            954437177 * ((*((_DWORD *)this + 90) - *((_DWORD *)this + 89)) >> 3) - 1);
          v27 = *((_DWORD *)v2 + 92);
          break;
        case '&':
          (*(void (__fastcall **)(glitch::gui::CGUIComboBox *, int))(*(_DWORD *)this + 148))(this, v14 - 1);
          v28 = 1;
          v27 = *((_DWORD *)v2 + 92);
          break;
        case '(':
          (*(void (__fastcall **)(glitch::gui::CGUIComboBox *, int))(*(_DWORD *)this + 148))(this, v14 + 1);
          v27 = *((_DWORD *)v2 + 92);
          v28 = 1;
          break;
        default:
          v27 = *((_DWORD *)this + 92);
          v28 = 0;
          break;
      }
      if ( v27 < 0 )
      {
        (*(void (__fastcall **)(glitch::gui::CGUIComboBox *, _DWORD))(*(_DWORD *)v2 + 148))(v2, 0);
        v27 = *((_DWORD *)v2 + 92);
      }
      v29 = 954437177 * ((*((_DWORD *)v2 + 90) - *((_DWORD *)v2 + 89)) >> 3);
      if ( v27 >= v29 )
      {
        (*(void (__fastcall **)(glitch::gui::CGUIComboBox *, int))(*(_DWORD *)v2 + 148))(v2, v29 - 1);
        v27 = *((_DWORD *)v2 + 92);
      }
      if ( v14 != v27 )
        glitch::gui::CGUIComboBox::sendSelectionChangedEvent((int)v2);
      if ( v28 )
        return 1;
    }
    goto LABEL_5;
  }
  if ( !v8 )
  {
    glitch::gui::CGUIComboBox::openCloseMenu(this);
    v7 = *((_DWORD *)v2 + 88);
  }
  (*(void (__fastcall **)(_DWORD, bool))(**((_DWORD **)v2 + 86) + 156))(*((_DWORD *)v2 + 86), v7 == 0);
  return 1;
}


// ===== 6ac12c glitch::gui::CGUIComboBox::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void *__fastcall glitch::gui::CGUIComboBox::serializeAttributes(_DWORD *a1, int a2)
{
  int v4; // r8
  void *result; // r0
  unsigned int v6; // r5
  void *v7[5]; // [sp+14h] [bp-20h] BYREF
  void *p; // [sp+28h] [bp-Ch]

  glitch::gui::IGUIElement::serializeAttributes(a1, a2);
  v4 = 0;
  (*(void (__fastcall **)(int, const char *, _DWORD, char **, _DWORD))(*(_DWORD *)a2 + 244))(
    a2,
    "HTextAlign",
    a1[95],
    glitch::gui::GUIAlignmentNames,
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, char **, _DWORD))(*(_DWORD *)a2 + 244))(
    a2,
    "VTextAlign",
    a1[96],
    glitch::gui::GUIAlignmentNames,
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(a2, "Selected", a1[92], 0);
  result = (void *)(*(int (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 76))(
                     a2,
                     "ItemCount",
                     954437177 * ((a1[90] - a1[89]) >> 3),
                     0);
  if ( 954437177 * ((a1[90] - a1[89]) >> 3) )
  {
    v6 = 0;
    do
    {
      v7[4] = v7;
      p = v7;
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
        v7,
        "");
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        v7,
        (_DWORD *)(char)v6);
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
        v7,
        "Text",
        "");
      (*(void (__fastcall **)(int, void *, _DWORD, _DWORD))(*(_DWORD *)a2 + 148))(
        a2,
        p,
        *(_DWORD *)(a1[89] + v4 + 68),
        0);
      result = p;
      if ( p != v7 )
      {
        if ( p )
          GlitchFree(p);
      }
      ++v6;
      v4 += 72;
    }
    while ( v6 < 954437177 * ((a1[90] - a1[89]) >> 3) );
  }
  return result;
}


// ===== 6ac368 glitch::gui::CGUIComboBox::draw(void) =====
int __fastcall glitch::gui::CGUIComboBox::draw(int this)
{
  int v1; // r4
  int v2; // r6
  int v3; // r0
  bool v4; // r3
  int v5; // r3
  int v6; // r1
  bool v7; // zf
  int v8; // r5
  void (__fastcall *v9)(int, int); // r7
  int v10; // r5
  int v11; // r1
  void (__fastcall *v12)(int); // r7
  int (__fastcall *v13)(int, int); // r5
  int v14; // r4
  int *i; // r5
  int *v16; // t1
  int v17; // [sp+10h] [bp-2Ch]

  v1 = this;
  if ( *(_BYTE *)(this + 152) )
  {
    v2 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 336) + 56))(*(_DWORD *)(this + 336));
    v3 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 336) + 20))(*(_DWORD *)(v1 + 336));
    if ( v3 != *(_DWORD *)(v1 + 376) )
    {
      if ( v3 == v1 )
      {
        v4 = 1;
      }
      else if ( v3 )
      {
        v5 = *(_DWORD *)(v3 + 36);
        v6 = v3;
        while ( v5 )
        {
          v6 = v5;
          v7 = v5 == v1;
          if ( v5 != v1 )
            v7 = *(_DWORD *)(v5 + 36) == 0;
          if ( v7 )
            goto LABEL_14;
          v5 = *(_DWORD *)(v5 + 36);
        }
        v5 = v6;
LABEL_14:
        v4 = v1 == v5;
      }
      else
      {
        v4 = 0;
      }
      v8 = *(_DWORD *)(v1 + 348);
      *(_DWORD *)(v1 + 376) = v3;
      *(_BYTE *)(v1 + 372) = v4;
      v9 = *(void (__fastcall **)(int, int))(*(_DWORD *)v8 + 148);
      v17 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 16))(v2, 10);
      v9(v8, v17);
      (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(v1 + 348) + 152))(
        *(_DWORD *)(v1 + 348),
        *(unsigned __int8 *)(v1 + 372));
      v10 = *(_DWORD *)(v1 + 348);
      if ( *(_BYTE *)(v1 + 372) )
        v11 = 11;
      else
        v11 = 8;
      v12 = *(void (__fastcall **)(int))(*(_DWORD *)v10 + 132);
      (*(void (__fastcall **)(int, int))(*(_DWORD *)v2 + 16))(v2, v11);
      v12(v10);
    }
    v13 = *(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 72);
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v2 + 16))(v2, 3);
    this = v13(v2, v1);
    if ( *(_BYTE *)(v1 + 152) )
    {
      v16 = *(int **)(v1 + 4);
      v14 = v1 + 4;
      for ( i = v16; i != (int *)v14; i = (int *)*i )
        this = (*(int (__fastcall **)(int))(*(_DWORD *)i[2] + 32))(i[2]);
    }
  }
  return this;
}


// ===== 6ac588 std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>*,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        void ***a1,
        int a2,
        int a3)
{
  unsigned int v5; // r0
  unsigned int v6; // r2
  size_t v7; // r11
  void **v8; // r0
  void **v9; // r12
  void **v10; // r10
  int v11; // r3
  int v12; // r9
  void **v13; // r9
  int v14; // r5
  void **v15; // lr
  void **v16; // r3
  void *v17; // r1
  void *v18; // r2
  void *v19; // r3
  void *v20; // r1
  void *v21; // r2
  void *v22; // r3
  void *v23; // r1
  void *v24; // r2
  void *v25; // r3
  void *v26; // r1
  void *v27; // r2
  void *v28; // r3
  _BYTE *v29; // r2
  _BYTE *v30; // r3
  void **v31; // r0
  void **v32; // r9
  void **v33; // r5
  void **v34; // r6
  void **v35; // r3

  v5 = 954437177 * (((char *)a1[1] - (char *)*a1) >> 3);
  if ( v5 )
    v6 = 2 * v5;
  else
    v6 = 1;
  if ( v6 <= 0x38E38E3 && v5 <= v6 )
    v7 = 18 * v6;
  else
    v7 = -10;
  v8 = (void **)GlitchAlloc(v7 * 4, 0);
  v9 = *a1;
  v10 = v8;
  v11 = (a2 - (int)*a1) >> 3;
  v12 = 954437177 * v11;
  if ( 954437177 * v11 <= 0 )
  {
    v13 = v8;
    goto LABEL_15;
  }
  v14 = 954437177 * v11;
  v15 = v8;
  while ( 1 )
  {
    v15[17] = v9[17];
    v16 = (void **)v9[17];
    if ( v16 == v9 )
      break;
    v15[17] = v16;
    --v14;
    v15[16] = v9[16];
    *v15 = *v9;
    v9[17] = nullptr;
    v15 += 18;
    if ( !v14 )
      goto LABEL_14;
LABEL_11:
    v9 += 18;
  }
  v17 = v9[1];
  v18 = v9[2];
  v19 = v9[3];
  *v15 = *v9;
  v15[1] = v17;
  v15[2] = v18;
  v15[3] = v19;
  v20 = v9[5];
  v21 = v9[6];
  v22 = v9[7];
  v15[4] = v9[4];
  v15[5] = v20;
  v15[6] = v21;
  v15[7] = v22;
  v23 = v9[9];
  v24 = v9[10];
  v25 = v9[11];
  v15[8] = v9[8];
  v15[9] = v23;
  v15[10] = v24;
  v15[11] = v25;
  v26 = v9[13];
  v27 = v9[14];
  v28 = v9[15];
  v15[12] = v9[12];
  v15[13] = v26;
  v15[14] = v27;
  v15[15] = v28;
  v29 = v9[16];
  v30 = v9[17];
  --v14;
  v15[17] = v15;
  v15[16] = (char *)v15 + ((v29 - v30) & 0xFFFFFFFC);
  v15 += 18;
  if ( v14 )
    goto LABEL_11;
LABEL_14:
  v13 = &v8[18 * v12];
LABEL_15:
  v13[16] = v13;
  v13[17] = v13;
  v31 = v13;
  v32 = v13 + 18;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v31,
    *(_BYTE **)(a3 + 68),
    *(_BYTE **)(a3 + 64));
  v33 = a1[1];
  v34 = *a1;
  if ( v33 != *a1 )
  {
    do
    {
      v33 -= 18;
      v35 = (void **)v33[17];
      if ( v35 != v33 && v35 )
        GlitchFree(v33[17]);
    }
    while ( v34 != v33 );
    v34 = *a1;
  }
  GlitchFree(v34);
  a1[1] = v32;
  a1[2] = &v10[v7];
  *a1 = v10;
}


// ===== 6ac760 glitch::gui::CGUIComboBox::clear(void) =====
int __fastcall glitch::gui::CGUIComboBox::clear(glitch::gui::CGUIComboBox *this)
{
  _DWORD *v1; // r1
  _DWORD *v2; // r2

  v1 = *((_DWORD **)this + 89);
  v2 = *((_DWORD **)this + 90);
  if ( v1 != v2 )
    std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 356,
      v1,
      v2);
  return (*(int (__fastcall **)(glitch::gui::CGUIComboBox *, int))(*(_DWORD *)this + 148))(this, -1);
}


// ===== 6ac7a4 glitch::gui::CGUIComboBox::addItem(wchar_t const*) =====
int __fastcall glitch::gui::CGUIComboBox::addItem(glitch::gui::CGUIComboBox *this, wchar_t *a2)
{
  char *v2; // r6
  _DWORD v5[17]; // [sp+4h] [bp-4Ch] BYREF
  void *p; // [sp+48h] [bp-8h]

  v2 = (char *)this + 356;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v5,
    a2);
  std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    (int)v2,
    (unsigned int)v5);
  if ( p != v5 && p )
    GlitchFree(p);
  if ( *((_DWORD *)this + 92) == -1 )
    (*(void (__fastcall **)(glitch::gui::CGUIComboBox *, _DWORD))(*(_DWORD *)this + 148))(this, 0);
  return 954437177 * ((*((_DWORD *)this + 90) - *((_DWORD *)this + 89)) >> 3) - 1;
}


// ===== 6ac844 std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>*,std::__true_type const&) =====
int __fastcall std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        int a2)
{
  int v2; // r3
  int v5; // r7
  int v6; // r4
  _DWORD *v7; // r12
  int v8; // r1
  int v9; // r2
  int v10; // r3
  bool v11; // zf
  int v12; // r3
  _DWORD *v13; // r5
  _DWORD *v14; // r10
  int v15; // r1
  int v16; // r2
  int v17; // r3
  _DWORD *v18; // r10
  int v19; // r1
  int v20; // r2
  int v21; // r3
  _DWORD *v22; // r10
  int v23; // r1
  int v24; // r2
  int v25; // r3
  _DWORD *v26; // r10
  int v27; // r1
  int v28; // r2
  int v29; // r3
  int v30; // r2
  int v31; // r3

  v2 = *(_DWORD *)(a2 + 68);
  if ( v2 != a2 && v2 )
    GlitchFree(*(void **)(a2 + 68));
  v5 = *(_DWORD *)(a1 + 4);
  v6 = a2 + 72;
  if ( a2 + 72 == v5 )
  {
    v7 = (_DWORD *)a2;
  }
  else
  {
    v7 = (_DWORD *)a2;
    do
    {
      v12 = v7[35];
      v13 = v7 + 18;
      v7[17] = v12;
      if ( v12 == v6 )
      {
        v14 = (_DWORD *)(v6 - 72);
        v15 = v7[19];
        v16 = v7[20];
        v17 = v7[21];
        *v14 = *v13;
        v14[1] = v15;
        v14[2] = v16;
        v14[3] = v17;
        v18 = (_DWORD *)(v6 - 56);
        v19 = v7[23];
        v20 = v7[24];
        v21 = v7[25];
        *v18 = v7[22];
        v18[1] = v19;
        v18[2] = v20;
        v18[3] = v21;
        v22 = (_DWORD *)(v6 - 40);
        v23 = v7[27];
        v24 = v7[28];
        v25 = v7[29];
        *v22 = v7[26];
        v22[1] = v23;
        v22[2] = v24;
        v22[3] = v25;
        v26 = (_DWORD *)(v6 - 24);
        v27 = v7[31];
        v28 = v7[32];
        v29 = v7[33];
        *v26 = v7[30];
        v26[1] = v27;
        v26[2] = v28;
        v26[3] = v29;
        v30 = v7[34];
        v31 = v7[35];
        v7[17] = v7;
        v7[16] = (char *)v7 + ((v30 - v31) & 0xFFFFFFFC);
      }
      else
      {
        v8 = v7[34];
        v9 = v7[18];
        v7[17] = v12;
        v7[16] = v8;
        *(_DWORD *)(v6 - 72) = v9;
        v7[35] = 0;
      }
      v10 = v7[35];
      v11 = v10 == v6;
      v6 += 72;
      if ( !v11 && v10 )
        GlitchFree((void *)v7[35]);
      v7 = v13;
    }
    while ( v6 != v5 );
  }
  *(_DWORD *)(a1 + 4) = v7;
  return a2;
}


// ===== 6ac938 glitch::gui::CGUIComboBox::removeItem(uint) =====
_DWORD *__fastcall glitch::gui::CGUIComboBox::removeItem(_DWORD *this, unsigned int a2)
{
  int v2; // r3
  _DWORD *v4; // r4

  v2 = *(this + 89);
  v4 = this;
  if ( a2 < 954437177 * ((*(this + 90) - v2) >> 3) )
  {
    if ( *(this + 92) == a2 )
    {
      (*(void (__fastcall **)(_DWORD *, int))(*this + 148))(this, -1);
      v2 = v4[89];
    }
    return (_DWORD *)std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
                       (int)(v4 + 89),
                       v2 + 72 * a2);
  }
  return this;
}


// ===== 6ac9bc glitch::gui::CGUIComboBox::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::CGUIComboBox::deserializeAttributes(float *a1, int a2)
{
  void (__fastcall *v4)(float *, int, int); // r5
  int v5; // r8
  int v6; // r0
  int v7; // r11
  int i; // r5
  void (__fastcall *v9)(float *, void *); // r10
  int (__fastcall *v10)(float *, int); // r4
  int v11; // r0
  _BYTE v13[68]; // [sp+14h] [bp-68h] BYREF
  void *p; // [sp+58h] [bp-24h]
  void *v15[5]; // [sp+5Ch] [bp-20h] BYREF
  void *v16; // [sp+70h] [bp-Ch]

  glitch::gui::IGUIElement::deserializeAttributes(a1, a2);
  v4 = *(void (__fastcall **)(float *, int, int))(*(_DWORD *)a1 + 152);
  v5 = (*(int (__fastcall **)(int, const char *, char **))(*(_DWORD *)a2 + 256))(
         a2,
         "HTextAlign",
         glitch::gui::GUIAlignmentNames);
  v6 = (*(int (__fastcall **)(int, const char *, char **))(*(_DWORD *)a2 + 256))(
         a2,
         "VTextAlign",
         glitch::gui::GUIAlignmentNames);
  v4(a1, v5, v6);
  (*(void (__fastcall **)(float *))(*(_DWORD *)a1 + 140))(a1);
  v7 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 88))(a2, "ItemCount");
  if ( v7 )
  {
    for ( i = 0; i != v7; ++i )
    {
      v15[4] = v15;
      v16 = v15;
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
        v15,
        "");
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        v15,
        (_DWORD *)(char)i);
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
        v15,
        "Text",
        "");
      v9 = *(void (__fastcall **)(float *, void *))(*(_DWORD *)a1 + 132);
      (*(void (__fastcall **)(_BYTE *, int, void *))(*(_DWORD *)a2 + 156))(v13, a2, v16);
      v9(a1, p);
      if ( p != v13 && p )
        GlitchFree(p);
      if ( v16 != v15 && v16 )
        GlitchFree(v16);
    }
  }
  v10 = *(int (__fastcall **)(float *, int))(*(_DWORD *)a1 + 148);
  v11 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 88))(a2, "Selected");
  return v10(a1, v11);
}


// ===== 6acbbc glitch::gui::IGUIComboBox::~IGUIComboBox() =====
void __fastcall glitch::gui::IGUIComboBox::~IGUIComboBox(glitch::gui::IGUIComboBox *this)
{
  *(_DWORD *)this = off_986978;
  *((_DWORD *)this + 86) = off_986A2C;
  *((_DWORD *)this + 87) = off_986A4C;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_986A5C);
}


// ===== 6acc10 `virtual thunk to'glitch::gui::IGUIComboBox::~IGUIComboBox() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIComboBox::~IGUIComboBox(glitch::gui::IGUIComboBox *this)
{
  glitch::gui::IGUIComboBox::~IGUIComboBox((glitch::gui::IGUIComboBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6acc20 `virtual thunk to'glitch::gui::IGUIComboBox::~IGUIComboBox() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIComboBox::~IGUIComboBox(glitch::gui::IGUIComboBox *this)
{
  glitch::gui::IGUIComboBox::~IGUIComboBox((glitch::gui::IGUIComboBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6acc30 glitch::gui::CGUIComboBox::~CGUIComboBox() =====
void __fastcall glitch::gui::CGUIComboBox::~CGUIComboBox(glitch::gui::CGUIComboBox *this)
{
  *(_DWORD *)this = off_986B90;
  *((_DWORD *)this + 97) = off_986C44;
  *((_DWORD *)this + 98) = off_986C64;
  std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void ***)this + 89);
  *(_DWORD *)this = off_986CB0;
  *(int *)((char *)&elf_hash_bucket[42] + (_DWORD)this) = (int)off_986D64;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = off_986D84;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_986C78);
}


// ===== 6accb4 `virtual thunk to'glitch::gui::CGUIComboBox::~CGUIComboBox() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIComboBox::~CGUIComboBox(glitch::gui::CGUIComboBox *this)
{
  glitch::gui::CGUIComboBox::~CGUIComboBox((glitch::gui::CGUIComboBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6accc4 `virtual thunk to'glitch::gui::CGUIComboBox::~CGUIComboBox() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIComboBox::~CGUIComboBox(glitch::gui::CGUIComboBox *this)
{
  glitch::gui::CGUIComboBox::~CGUIComboBox((glitch::gui::CGUIComboBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6accd4 glitch::gui::CGUIComboBox::~CGUIComboBox() =====
void __fastcall glitch::gui::CGUIComboBox::~CGUIComboBox(glitch::gui::CGUIComboBox *this)
{
  glitch::gui::CGUIComboBox::~CGUIComboBox(this);
  LC_API_FREE_0(this);
}


// ===== 6accf0 `virtual thunk to'glitch::gui::CGUIComboBox::~CGUIComboBox() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIComboBox::~CGUIComboBox(glitch::gui::CGUIComboBox *this)
{
  glitch::gui::CGUIComboBox::~CGUIComboBox((glitch::gui::CGUIComboBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6acd00 `virtual thunk to'glitch::gui::CGUIComboBox::~CGUIComboBox() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIComboBox::~CGUIComboBox(glitch::gui::CGUIComboBox *this)
{
  glitch::gui::CGUIComboBox::~CGUIComboBox((glitch::gui::CGUIComboBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6acd10 glitch::gui::IGUIComboBox::~IGUIComboBox() =====
void __fastcall glitch::gui::IGUIComboBox::~IGUIComboBox(glitch::gui::IGUIComboBox *this)
{
  *(_DWORD *)this = off_986978;
  *((_DWORD *)this + 86) = off_986A2C;
  *((_DWORD *)this + 87) = off_986A4C;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_986A5C);
  LC_API_FREE_0(this);
}


// ===== 6acd6c `virtual thunk to'glitch::gui::IGUIComboBox::~IGUIComboBox() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIComboBox::~IGUIComboBox(glitch::gui::IGUIComboBox *this)
{
  glitch::gui::IGUIComboBox::~IGUIComboBox((glitch::gui::IGUIComboBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6acd7c `virtual thunk to'glitch::gui::IGUIComboBox::~IGUIComboBox() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIComboBox::~IGUIComboBox(glitch::gui::IGUIComboBox *this)
{
  glitch::gui::IGUIComboBox::~IGUIComboBox((glitch::gui::IGUIComboBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6acd8c `virtual thunk to'glitch::gui::CGUIComboBox::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::CGUIComboBox::deserializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUIComboBox::deserializeAttributes((float *)((char *)a1 + *(_DWORD *)(*a1 - 20)), a2);
}

