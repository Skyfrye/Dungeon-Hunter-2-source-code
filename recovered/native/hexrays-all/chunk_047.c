// ===== 75884c gameswf::hash<gameswf::character *,gameswf::filter_cache_infos,gameswf::fixed_size_hash<gameswf::character *>>::add(gameswf::character * const&,gameswf::filter_cache_infos const&) =====
int __fastcall gameswf::hash<gameswf::character *,gameswf::filter_cache_infos,gameswf::fixed_size_hash<gameswf::character *>>::add(
        _DWORD **a1,
        _DWORD *a2,
        _DWORD *a3)
{
  int v5; // r4
  int v6; // r3
  _DWORD *v7; // r12
  int v8; // r0
  int v9; // r3
  int v10; // r10
  int v11; // r9
  _DWORD *v12; // r6
  int v13; // r8
  int v14; // r5
  int v15; // r1
  int v16; // r2
  _DWORD *v17; // r1
  int v18; // r0
  int v19; // r8
  int *v20; // r8
  _DWORD *v21; // r9
  int v22; // r1
  int v23; // r2
  int v24; // r3
  int v25; // r0
  int v26; // r1
  int v27; // r1
  int v28; // r2
  int v29; // r3
  int result; // r0
  int v31; // r1
  int v32; // r2
  int v33; // r1
  int v34; // r2
  int v35; // r3
  int v36; // r1
  _DWORD *v37; // r8
  int v38; // r1
  int v39; // r2
  int v40; // r3
  int v41; // r0
  int v42; // r1
  int v43; // r1
  int v44; // r2
  int v45; // r3
  int v46; // r1
  int v47; // r2

  gameswf::hash<gameswf::character *,gameswf::filter_cache_infos,gameswf::fixed_size_hash<gameswf::character *>>::check_expand(a1);
  v5 = 5381;
  v6 = 4;
  ++**a1;
  do
  {
    --v6;
    v5 = 65600 * v5 + *((unsigned __int8 *)a2 + v6) - v5;
  }
  while ( v6 );
  v7 = *a1;
  if ( v5 == -1 )
    v5 = -32769;
  v8 = v7[1];
  v9 = v5 & v8;
  v10 = 5 * (v5 & v8) + 1;
  v11 = v7[2 * v10];
  v12 = &v7[2 * v10];
  if ( v11 == -2 )
  {
    v7[2 * v10] = -1;
LABEL_14:
    v12[1] = v5;
    v12[2] = *a2;
    v33 = a3[1];
    v34 = a3[2];
    v35 = a3[3];
    v12[3] = *a3;
    v12[4] = v33;
    v12[5] = v34;
    v12[6] = v35;
    result = a3[4];
    v36 = a3[5];
    *((_BYTE *)v12 + 36) = a3[6];
    v12[7] = result;
    v12[8] = v36;
    return result;
  }
  v13 = v12[1];
  if ( v13 == -1 )
    goto LABEL_14;
  v14 = v5 & v8;
  do
  {
    v14 = (v14 + 1) & v8;
    v15 = 5 * v14 + 1;
    v16 = v7[2 * v15];
    v17 = &v7[2 * v15];
  }
  while ( v16 != -2 );
  v18 = v8 & v13;
  if ( v18 == v9 )
  {
    *v17 = v11;
    v37 = v17 + 3;
    v17[1] = v12[1];
    v17[2] = v12[2];
    v38 = v12[4];
    v39 = v12[5];
    v40 = v12[6];
    *v37 = v12[3];
    v37[1] = v38;
    v37[2] = v39;
    v37[3] = v40;
    v37 += 4;
    v41 = v12[7];
    v42 = v12[8];
    *((_BYTE *)v37 + 8) = v12[9];
    *v37 = v41;
    v37[1] = v42;
    v12[2] = *a2;
    v43 = a3[1];
    v44 = a3[2];
    v45 = a3[3];
    v12[3] = *a3;
    v12[4] = v43;
    v12[5] = v44;
    v12[6] = v45;
    result = a3[4];
    v46 = a3[5];
    v47 = a3[6];
    v12[7] = result;
    v12[8] = v46;
    *((_BYTE *)v12 + 36) = v47;
    v7[2 * v10] = v14;
    v12[1] = v5;
  }
  else
  {
    do
    {
      v19 = 5 * v18 + 1;
      v18 = v7[2 * v19];
      v20 = &v7[2 * v19];
    }
    while ( v18 != v9 );
    *v17 = v11;
    v21 = v17 + 3;
    v17[1] = v12[1];
    v17[2] = v12[2];
    v22 = v12[4];
    v23 = v12[5];
    v24 = v12[6];
    *v21 = v12[3];
    v21[1] = v22;
    v21[2] = v23;
    v21[3] = v24;
    v21 += 4;
    v25 = v12[7];
    v26 = v12[8];
    *((_BYTE *)v21 + 8) = v12[9];
    *v21 = v25;
    v21[1] = v26;
    *v20 = v14;
    v12[2] = *a2;
    v27 = a3[1];
    v28 = a3[2];
    v29 = a3[3];
    v12[3] = *a3;
    v12[4] = v27;
    v12[5] = v28;
    v12[6] = v29;
    result = a3[4];
    v31 = a3[5];
    v32 = a3[6];
    v12[7] = result;
    v12[8] = v31;
    *((_BYTE *)v12 + 36) = v32;
    v12[1] = v5;
    v7[2 * v10] = -1;
  }
  return result;
}


// ===== 758a24 gameswf::hash<gameswf::character *,gameswf::filter_cache_infos,gameswf::fixed_size_hash<gameswf::character *>>::set(gameswf::character * const&,gameswf::filter_cache_infos const&) =====
int __fastcall gameswf::hash<gameswf::character *,gameswf::filter_cache_infos,gameswf::fixed_size_hash<gameswf::character *>>::set(
        int *a1,
        _DWORD *a2,
        int *a3)
{
  int index; // r0
  int v7; // r5
  int v8; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int *v12; // r4
  int result; // r0
  int v14; // r1
  int v15; // r2

  index = gameswf::hash<gameswf::character *,gameswf::filter_cache_infos,gameswf::fixed_size_hash<gameswf::character *>>::find_index(
            a1,
            a2);
  if ( index < 0 )
    return gameswf::hash<gameswf::character *,gameswf::filter_cache_infos,gameswf::fixed_size_hash<gameswf::character *>>::add(
             (_DWORD **)a1,
             a2,
             a3);
  v7 = *a1 + 8 * (5 * index + 1);
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v12 = a3 + 4;
  *(_DWORD *)(v7 + 12) = v8;
  *(_DWORD *)(v7 + 16) = v9;
  *(_DWORD *)(v7 + 20) = v10;
  *(_DWORD *)(v7 + 24) = v11;
  result = *v12;
  v14 = v12[1];
  v15 = v12[2];
  *(_DWORD *)(v7 + 28) = *v12;
  *(_DWORD *)(v7 + 32) = v14;
  *(_BYTE *)(v7 + 36) = v15;
  return result;
}


// ===== 758a80 gameswf::filter_texture_cache::get_character_region(gameswf::character *,int,int) =====
int __fastcall gameswf::filter_texture_cache::get_character_region(
        gameswf::filter_texture_cache *this,
        gameswf::character *a2,
        int a3,
        int a4)
{
  int index; // r0
  int v7; // [sp+0h] [bp-18h] BYREF
  int v8; // [sp+4h] [bp-14h] BYREF
  __int64 v9; // [sp+8h] [bp-10h] BYREF
  int v10; // [sp+10h] [bp-8h]
  int v11; // [sp+14h] [bp-4h]

  v8 = a3;
  v7 = a4;
  v9 = (int)a2;
  v10 = 0;
  v11 = 0;
  index = gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::find_index(
            (int *)this + 12,
            &v9);
  if ( index >= 0 )
    return *(_DWORD *)(*((_DWORD *)this + 12) + 32 * index + 32);
  gameswf::filter_texture_cache::get_region_size_requirement_cellsize(this, &v8, &v7);
  return gameswf::texture_cache::find_available_region(this, v8, v7);
}


// ===== 758af8 gameswf::effect::~effect() =====
void __fastcall gameswf::effect::~effect(gameswf::effect *this)
{
  int v1; // r12
  _DWORD *v3; // r0
  int v4; // r1
  _DWORD *v5; // r3

  v1 = *((_DWORD *)this + 2);
  v3 = (_DWORD *)((char *)this + 4);
  if ( v1 < 0 )
  {
    v4 = 44 * v1;
    do
    {
      ++v1;
      v5 = (_DWORD *)(*v3 + v4 + 4);
      *(_DWORD *)(*v3 + v4) = 0;
      memset(v5, 0, 0x24u);
      v5[9] = 0;
      v4 += 44;
    }
    while ( v1 );
  }
  *((_DWORD *)this + 2) = 0;
  gameswf::array<gameswf::filter>::reserve((int)v3, 0);
}


// ===== 758b8c gameswf::texture_cache::~texture_cache() =====
void __fastcall gameswf::texture_cache::~texture_cache(gameswf::texture_cache *this)
{
  gameswf::ref_counted *v2; // r0
  int v3; // r3
  int v4; // r3
  void *v5; // r0
  int v6; // r2
  _DWORD *v7; // r0
  int v8; // r2
  int v9; // r3
  int v10; // r1

  if ( *((_DWORD *)this + 15) )
  {
    (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 13) + 28))(*((_DWORD *)this + 13));
    *((_DWORD *)this + 15) = 0;
  }
  v2 = *((gameswf::ref_counted **)this + 13);
  if ( v2 )
    gameswf::ref_counted::drop_ref(v2);
  gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::clear((_DWORD **)this + 12);
  v3 = *((_DWORD *)this + 9);
  if ( v3 < 0 )
  {
    v8 = 4 * v3;
    do
    {
      ++v3;
      *(_DWORD *)(*((_DWORD *)this + 8) + v8) = 0;
      v8 += 4;
    }
    while ( v3 );
  }
  v4 = *((unsigned __int8 *)this + 44);
  *((_DWORD *)this + 9) = 0;
  if ( !v4 )
  {
    v5 = *((void **)this + 8);
    *((_DWORD *)this + 10) = 0;
    if ( v5 )
      gameswf::free_internal(v5);
    *((_DWORD *)this + 8) = 0;
  }
  v6 = *((_DWORD *)this + 5);
  v7 = (_DWORD *)((char *)this + 16);
  if ( v6 < 0 )
  {
    v9 = 16 * v6;
    do
    {
      ++v6;
      v10 = *v7 + v9;
      *(_QWORD *)v10 = 0;
      *(_DWORD *)(v10 + 12) = 0;
      *(_DWORD *)(v10 + 8) = 0;
      v9 += 16;
    }
    while ( v6 );
  }
  *((_DWORD *)this + 5) = 0;
  gameswf::array<gameswf::texture_cache::region>::reserve((int)v7, 0);
}


// ===== 758ca8 gameswf::read_filter_list(gameswf::stream *,gameswf::effect &) =====
void __fastcall gameswf::read_filter_list(gameswf *this, gameswf::stream *a2, gameswf::effect *a3)
{
  int v3; // r11
  int u8; // r8
  int v7; // r7
  int v8; // r10
  int v9; // r3
  int v10; // r9
  int v11; // r2
  int v12; // r11
  int v13; // r3
  int v14; // r9
  int v15; // r12
  int v16; // r1
  int v17; // r0
  int v18; // r3
  int v19; // [sp+0h] [bp-54h]
  int v20; // [sp+0h] [bp-54h]
  int v21; // [sp+0h] [bp-54h]
  int fixed; // [sp+8h] [bp-4Ch]
  char *v23; // [sp+10h] [bp-44h]
  int v24; // [sp+1Ch] [bp-38h]
  int v25; // [sp+20h] [bp-34h]
  float v26; // [sp+24h] [bp-30h]
  int v27; // [sp+28h] [bp-2Ch]
  float s8; // [sp+2Ch] [bp-28h]
  int v29; // [sp+30h] [bp-24h]
  int v30; // [sp+34h] [bp-20h]
  int uint; // [sp+38h] [bp-1Ch]
  int v32; // [sp+40h] [bp-14h]
  _BYTE v33[4]; // [sp+48h] [bp-Ch] BYREF
  char v34; // [sp+4Ch] [bp-8h] BYREF
  char v35; // [sp+4Dh] [bp-7h]
  char v36; // [sp+4Eh] [bp-6h]
  char v37; // [sp+4Fh] [bp-5h]

  v23 = (char *)a2 + 4;
  u8 = gameswf::stream::read_u8(this);
  gameswf::array<gameswf::filter>::reserve((int)v23, u8);
  if ( u8 )
  {
    v7 = 0;
    while ( 2 )
    {
      v8 = gameswf::stream::read_u8(this);
      switch ( v8 )
      {
        case 0:
          v34 = -1;
          v35 = -1;
          v36 = -1;
          v37 = -1;
          gameswf::rgba::read_rgba((gameswf::rgba *)&v34, this);
          BYTE2(v25) = v34;
          HIBYTE(v25) = v37;
          LOBYTE(v25) = v36;
          BYTE1(v25) = v35;
          fixed = gameswf::stream::read_fixed(this);
          v21 = gameswf::stream::read_fixed(this);
          v26 = COERCE_FLOAT(gameswf::stream::read_fixed(this));
          v27 = gameswf::stream::read_fixed(this);
          s8 = (float)(char)gameswf::stream::read_s8(this);
          LOBYTE(v29) = gameswf::stream::read_bool(this);
          BYTE1(v29) = gameswf::stream::read_bool(this);
          BYTE2(v29) = gameswf::stream::read_bool(this);
          uint = gameswf::stream::read_uint(this, 5);
          v17 = gameswf::stream::read_u8(this);
          v18 = *((_DWORD *)a2 + 2);
          v30 = v17;
          v10 = v18 + 1;
          if ( v18 + 1 > *((_DWORD *)a2 + 3) )
          {
            gameswf::array<gameswf::filter>::reserve((int)v23, v10 + (v10 >> 1));
            v18 = *((_DWORD *)a2 + 2);
          }
          v24 = v8;
          v32 = v21;
          v11 = *((_DWORD *)a2 + 1) + 44 * v18;
          goto LABEL_7;
        case 1:
          fixed = gameswf::stream::read_fixed(this);
          v19 = gameswf::stream::read_fixed(this);
          v3 = gameswf::stream::read_uint(this, 5);
          gameswf::stream::read_uint(this, 3);
          v9 = *((_DWORD *)a2 + 2);
          v10 = v9 + 1;
          if ( v9 + 1 > *((_DWORD *)a2 + 3) )
          {
            gameswf::array<gameswf::filter>::reserve((int)v23, v10 + (v10 >> 1));
            v9 = *((_DWORD *)a2 + 2);
          }
          v11 = *((_DWORD *)a2 + 1) + 44 * v9;
          v24 = v8;
          v32 = v19;
LABEL_7:
          *(_DWORD *)v11 = v24;
          *(_DWORD *)(v11 + 4) = v25;
          *(float *)(v11 + 8) = v26;
          *(_DWORD *)(v11 + 12) = v27;
          *(float *)(v11 + 16) = s8;
          *(_DWORD *)(v11 + 20) = v29;
          *(_DWORD *)(v11 + 24) = v30;
          *(_DWORD *)(v11 + 28) = uint;
          *(_DWORD *)(v11 + 32) = fixed;
          *(_DWORD *)(v11 + 36) = v32;
          *(_DWORD *)(v11 + 40) = v3;
          *((_DWORD *)a2 + 2) = v10;
          goto LABEL_8;
        case 2:
          v34 = -1;
          v35 = -1;
          v36 = -1;
          v37 = -1;
          gameswf::rgba::read_rgba((gameswf::rgba *)&v34, this);
          BYTE2(v25) = v34;
          HIBYTE(v25) = v37;
          LOBYTE(v25) = v36;
          BYTE1(v25) = v35;
          v20 = gameswf::stream::read_fixed(this);
          v12 = gameswf::stream::read_fixed(this);
          v26 = (float)(char)gameswf::stream::read_s8(this);
          LOBYTE(v27) = gameswf::stream::read_bool(this);
          BYTE1(v27) = gameswf::stream::read_bool(this);
          BYTE2(v27) = gameswf::stream::read_bool(this);
          s8 = COERCE_FLOAT(gameswf::stream::read_uint(this, 5));
          gameswf::stream::read_u8(this);
          v13 = *((_DWORD *)a2 + 2);
          v14 = v13 + 1;
          if ( v13 + 1 > *((_DWORD *)a2 + 3) )
          {
            gameswf::array<gameswf::filter>::reserve((int)v23, v14 + (v14 >> 1));
            v13 = *((_DWORD *)a2 + 2);
          }
          v15 = *((_DWORD *)a2 + 1) + 44 * v13;
          *(_DWORD *)v15 = v8;
          *(_DWORD *)(v15 + 4) = v25;
          *(float *)(v15 + 8) = v26;
          *(_DWORD *)(v15 + 12) = v27;
          v15 += 16;
          *(float *)v15 = s8;
          *(_DWORD *)(v15 + 4) = v29;
          *(_DWORD *)(v15 + 8) = v30;
          *(_DWORD *)(v15 + 12) = uint;
          v15 += 16;
          ++v7;
          v16 = v12;
          v3 = 1;
          *(_DWORD *)v15 = v20;
          *(_DWORD *)(v15 + 4) = v16;
          *(_DWORD *)(v15 + 8) = 1;
          *((_DWORD *)a2 + 2) = v14;
          if ( u8 > v7 )
            continue;
          return;
        case 3:
          v34 = -1;
          v35 = -1;
          v36 = -1;
          v37 = -1;
          gameswf::rgba::read_rgba((gameswf::rgba *)&v34, this);
          v33[0] = -1;
          v33[1] = -1;
          v33[2] = -1;
          v33[3] = -1;
          gameswf::rgba::read_rgba((gameswf::rgba *)v33, this);
          gameswf::stream::read_fixed(this);
          gameswf::stream::read_fixed(this);
          gameswf::stream::read_fixed(this);
          gameswf::stream::read_fixed(this);
          gameswf::stream::read_s8(this);
          gameswf::stream::read_bool(this);
          gameswf::stream::read_bool(this);
          gameswf::stream::read_bool(this);
          gameswf::stream::read_bool(this);
          gameswf::stream::read_uint(this, 4);
          ++v7;
          gameswf::stream::read_u8(this);
          if ( u8 > v7 )
            continue;
          return;
        default:
LABEL_8:
          if ( u8 <= ++v7 )
            return;
          continue;
      }
    }
  }
}


// ===== 7590a4 gameswf::filter_engine::~filter_engine() =====
void __fastcall gameswf::filter_engine::~filter_engine(gameswf::filter_engine *this)
{
  int v2; // r3
  _DWORD *v3; // r0
  int v4; // r3
  int v5; // r2

  gameswf::hash<gameswf::character *,gameswf::filter_cache_infos,gameswf::fixed_size_hash<gameswf::character *>>::clear((_DWORD **)this + 24);
  v2 = *((_DWORD *)this + 21);
  v3 = (_DWORD *)((char *)this + 80);
  if ( v2 < 0 )
  {
    do
      *(_BYTE *)(*v3 + v2++) = 0;
    while ( v2 );
  }
  *((_DWORD *)this + 21) = 0;
  gameswf::array<unsigned char>::reserve((int)v3, 0);
  v4 = *((_DWORD *)this + 17);
  if ( v4 < 0 )
  {
    v5 = 4 * v4;
    do
    {
      ++v4;
      *(_DWORD *)(*((_DWORD *)this + 16) + v5) = 0;
      v5 += 4;
    }
    while ( v4 );
  }
  *((_DWORD *)this + 17) = 0;
  gameswf::array<gameswf::character *>::reserve((int)this + 64, 0);
  gameswf::texture_cache::~texture_cache(this);
}


// ===== 759140 gameswf::close_filter_engine(void) =====
void __fastcall gameswf::close_filter_engine(gameswf *this)
{
  void *v1; // r6

  v1 = (void *)gameswf::filter_engine::s_instance;
  if ( gameswf::filter_engine::s_instance )
  {
    gameswf::filter_engine::~filter_engine((gameswf::filter_engine *)gameswf::filter_engine::s_instance);
    gameswf::free_internal(v1);
  }
  gameswf::filter_engine::s_instance = 0;
}


// ===== 75918c gameswf::filter_engine::run(gameswf::root *) =====
int *__fastcall gameswf::filter_engine::run(gameswf::filter_engine *this, gameswf::character **a2)
{
  int v3; // r3
  int v4; // r5
  int *result; // r0
  int v6; // r3
  int v7; // r11
  int v8; // r6
  _DWORD *v9; // r1
  int character_region; // r0
  int v11; // r1
  _DWORD *v12; // r1
  int v13; // r3
  int v14; // t1
  int v15; // r1
  int v16; // r2
  int v17; // r3
  int v18; // r12
  bool v19; // cc
  gameswf::filter_engine *v20; // r11
  int v21; // r2
  int v22; // r4
  int v23; // r7
  int v24; // r7
  int v25; // r3
  int v26; // r12
  int v27; // r5
  float *v28; // r12
  float v29; // r0
  float v30; // r1
  float v31; // r2
  float v32; // r3
  int v33; // r1
  int *v34; // lr
  int v35; // r0
  int v36; // r1
  int v37; // r2
  int v38; // r3
  int v39; // r1
  int v40; // r2
  int v41; // r3
  int v42; // r8
  gameswf::ref_counted *v43; // r6
  _BYTE *v44; // r0
  int v45; // r0
  void (__fastcall *v46)(int, int, int, int, int, int, _DWORD, _DWORD, _DWORD, _DWORD); // r12
  float v47; // r6
  int v48; // r8
  int v49; // r9
  char *v50; // r7
  char *v51; // r5
  int v52; // r0
  size_t v53; // r8
  int v54; // r10
  int v55; // r6
  int v57; // r2
  int i; // r5
  int v59; // r12
  int v60; // r8
  float v61; // r1
  float v62; // r2
  int v63; // r3
  int v64; // r1
  int v65; // r2
  int v66; // r1
  int v67; // r2
  float v68; // r3
  int v69; // r1
  int v70; // r2
  int v71; // r1
  int v72; // r2
  int v73; // r3
  _DWORD *v74; // r6
  int v75; // r1
  int v76; // r2
  int v77; // r3
  int v78; // r2
  int v79; // r1
  int v80; // r3
  int v81; // r12
  int v82; // r2
  int v83; // [sp+24h] [bp-F0h]
  gameswf::character *v84; // [sp+28h] [bp-ECh]
  int *v85; // [sp+30h] [bp-E4h]
  int v87[8]; // [sp+4Ch] [bp-C8h] BYREF
  int v88[8]; // [sp+6Ch] [bp-A8h] BYREF
  _DWORD v89[6]; // [sp+8Ch] [bp-88h] BYREF
  char v90; // [sp+A4h] [bp-70h]
  int v91; // [sp+A8h] [bp-6Ch]
  int v92; // [sp+ACh] [bp-68h]
  int v93; // [sp+B0h] [bp-64h]
  float v94; // [sp+B4h] [bp-60h]
  float v95; // [sp+B8h] [bp-5Ch]
  int v96; // [sp+BCh] [bp-58h]
  char v97; // [sp+C0h] [bp-54h]
  int v98; // [sp+C4h] [bp-50h]
  float v99; // [sp+C8h] [bp-4Ch]
  float v100; // [sp+CCh] [bp-48h]
  int v101; // [sp+D0h] [bp-44h]
  int v102; // [sp+D4h] [bp-40h]
  int v103; // [sp+D8h] [bp-3Ch]
  char v104; // [sp+DCh] [bp-38h]
  float v105; // [sp+E0h] [bp-34h] BYREF
  float v106; // [sp+E4h] [bp-30h] BYREF
  float v107; // [sp+E8h] [bp-2Ch]
  float v108; // [sp+ECh] [bp-28h]
  float v109; // [sp+F0h] [bp-24h]
  int v110; // [sp+F4h] [bp-20h]
  char v111; // [sp+F8h] [bp-1Ch]
  float v112; // [sp+FCh] [bp-18h] BYREF
  float v113; // [sp+100h] [bp-14h]
  float v114; // [sp+104h] [bp-10h]
  float v115; // [sp+108h] [bp-Ch]
  int v116; // [sp+10Ch] [bp-8h]

  v3 = *((_DWORD *)this + 17);
  if ( v3 < 0 )
  {
    v82 = 4 * v3;
    do
    {
      ++v3;
      *(_DWORD *)(*((_DWORD *)this + 16) + v82) = 0;
      v82 += 4;
    }
    while ( v3 );
  }
  v4 = 0;
  *((_DWORD *)this + 17) = 0;
  result = (int *)gameswf::filter_engine::collect_filtered_characters((int)this, a2[4]);
  v6 = *((_DWORD *)this + 17);
  if ( !v6 )
    return result;
  if ( v6 <= 0 )
  {
    v15 = *((_DWORD *)this + 24);
    v85 = (int *)((char *)this + 96);
  }
  else
  {
    v85 = (int *)((char *)this + 96);
    v7 = 0;
    do
    {
      v8 = 4 * v4;
      v9 = (_DWORD *)(*((_DWORD *)this + 16) + 4 * v4);
      v105 = 0.0;
      v110 = 0;
      v111 = 1;
      result = (int *)gameswf::hash<gameswf::character *,gameswf::filter_cache_infos,gameswf::fixed_size_hash<gameswf::character *>>::get(
                        v85,
                        v9,
                        (int)&v105);
      ++v4;
      if ( !result || v111 )
      {
        (*(void (__fastcall **)(_DWORD, float *))(**(_DWORD **)(*((_DWORD *)this + 16) + v8) + 300))(
          *(_DWORD *)(*((_DWORD *)this + 16) + v8),
          &v106);
        character_region = gameswf::filter_texture_cache::get_character_region(
                             this,
                             *(gameswf::character **)(*((_DWORD *)this + 16) + v8),
                             (int)(float)((float)(v107 - v106) / 20.0),
                             (int)(float)((float)(v109 - v108) / 20.0));
        v11 = *((_DWORD *)this + 16);
        v110 = character_region;
        v14 = *(_DWORD *)(v11 + v8);
        v12 = (_DWORD *)(v11 + v8);
        v13 = v14;
        if ( !character_region )
          v7 = 1;
        v105 = *(float *)&v13;
        result = (int *)gameswf::hash<gameswf::character *,gameswf::filter_cache_infos,gameswf::fixed_size_hash<gameswf::character *>>::set(
                          v85,
                          v12,
                          (int *)&v105);
      }
    }
    while ( v4 < *((_DWORD *)this + 17) );
    if ( !v7 )
      goto LABEL_12;
    result = (int *)gameswf::texture_cache::reset(this);
    v15 = *((_DWORD *)this + 24);
    if ( v15 )
    {
      v57 = *(_DWORD *)(v15 + 4);
      if ( v57 >= 0 )
      {
        v80 = 8;
        for ( i = 0; i <= v57; ++i )
        {
          result = *(int **)(v15 + v80);
          v81 = v15 + v80;
          v80 += 40;
          if ( result != (int *)-2 )
          {
            result = *(int **)(v81 + 4);
            if ( result != (int *)-1 )
              break;
          }
        }
      }
      else
      {
        i = 0;
      }
      if ( this != (gameswf::filter_engine *)-96 )
      {
        v59 = *((_DWORD *)this + 24);
        while ( v59 && *(_DWORD *)(v59 + 4) >= i )
        {
          v60 = 8 * (5 * i + 1);
          v84 = *(gameswf::character **)(v59 + v60 + 8);
          v61 = *(float *)(v59 + v60 + 16);
          v62 = *(float *)(v59 + v60 + 20);
          v63 = *(_DWORD *)(v59 + v60 + 24);
          v98 = *(_DWORD *)(v59 + v60 + 12);
          v99 = v61;
          v100 = v62;
          v101 = v63;
          v64 = *(_DWORD *)(v59 + v60 + 32);
          v65 = *(_DWORD *)(v59 + v60 + 36);
          v102 = *(_DWORD *)(v59 + v60 + 28);
          v103 = v64;
          v104 = v65;
          v66 = *(_DWORD *)(v59 + v60 + 16);
          v67 = *(_DWORD *)(v59 + v60 + 20);
          v68 = *(float *)(v59 + v60 + 24);
          v91 = *(_DWORD *)(v59 + v60 + 12);
          v92 = v66;
          v93 = v67;
          v94 = v68;
          v69 = *(_DWORD *)(v59 + v60 + 32);
          v70 = *(_DWORD *)(v59 + v60 + 36);
          v95 = *(float *)(v59 + v60 + 28);
          v96 = v69;
          v97 = v70;
          *(_DWORD *)(v59 + v60 + 32) = gameswf::filter_texture_cache::get_character_region(
                                          this,
                                          v84,
                                          (int)(float)((float)(v100 - v99) / 20.0),
                                          (int)(float)((float)(v95 - v68) / 20.0));
          v59 = *v85;
          v71 = *(_DWORD *)(*v85 + v60 + 16);
          v72 = *(_DWORD *)(*v85 + v60 + 20);
          v73 = *(_DWORD *)(*v85 + v60 + 24);
          v74 = (_DWORD *)(*v85 + v60 + 28);
          v89[0] = *(_DWORD *)(*v85 + v60 + 12);
          v89[1] = v71;
          v89[2] = v72;
          v89[3] = v73;
          v75 = v74[1];
          v76 = v74[2];
          v89[4] = *v74;
          v89[5] = v75;
          result = v89;
          v90 = v76;
          if ( !v75 )
          {
            gameswf::log_error((gameswf *)"filter texture cache allocation failed\n", nullptr);
            result = (int *)((char *)this + 96);
            v59 = *v85;
          }
          v77 = *(_DWORD *)(v59 + 4);
          if ( v77 < i )
            break;
          if ( v77 >= ++i )
          {
            v78 = 8 * (5 * i + 1);
            do
            {
              v79 = *(_DWORD *)(v59 + v78);
              result = (int *)(v59 + v78);
              v78 += 40;
              if ( v79 != -2 && result[1] != -1 )
                break;
              ++i;
            }
            while ( v77 >= i );
          }
        }
LABEL_12:
        v15 = *((_DWORD *)this + 24);
      }
    }
  }
  if ( v15 )
  {
    v16 = *(_DWORD *)(v15 + 4);
    if ( v16 >= 0 )
    {
      v17 = 8;
      v83 = 0;
      while ( 1 )
      {
        result = *(int **)(v15 + v17);
        v18 = v15 + v17;
        v17 += 40;
        if ( result != (int *)-2 )
        {
          result = *(int **)(v18 + 4);
          if ( result != (int *)-1 )
            break;
        }
        v19 = v16 < ++v83;
        if ( v19 )
        {
          if ( !v85 )
            return result;
          goto LABEL_24;
        }
      }
    }
    else
    {
      result = nullptr;
      v83 = 0;
    }
    if ( v85 )
    {
LABEL_24:
      result = v87;
      v20 = this;
      while ( v15 )
      {
        v21 = *(_DWORD *)(v15 + 4);
        if ( v21 < v83 )
          break;
        v22 = v15 + 8 * (5 * v83 + 1);
        v23 = *(_DWORD *)(v22 + 32);
        if ( v23 )
        {
          if ( *(_BYTE *)(v22 + 36) )
          {
            v27 = gameswf::s_render_handler;
            (*(void (__fastcall **)(int))(*(_DWORD *)gameswf::s_render_handler + 56))(gameswf::s_render_handler);
            v28 = *(float **)(*(_DWORD *)(v22 + 12) + 76);
            v29 = *v28;
            v30 = v28[1];
            v31 = v28[2];
            v32 = v28[3];
            v28 += 4;
            v105 = v29;
            v106 = v30;
            v107 = v31;
            v108 = v32;
            v33 = *((_DWORD *)v28 + 1);
            v109 = *v28;
            v110 = v33;
            v34 = *(int **)(*(_DWORD *)(v22 + 12) + 72);
            v35 = *v34;
            v36 = v34[1];
            v37 = v34[2];
            v38 = v34[3];
            v34 += 4;
            v88[0] = v35;
            v88[1] = v36;
            v88[2] = v37;
            v88[3] = v38;
            v39 = v34[1];
            v40 = v34[2];
            v41 = v34[3];
            v88[4] = *v34;
            v88[5] = v39;
            v88[6] = v40;
            v88[7] = v41;
            v42 = *(_DWORD *)(v22 + 12);
            v43 = *(gameswf::ref_counted **)(v42 + 64);
            if ( v43 )
            {
              v44 = *(_BYTE **)(v42 + 60);
              if ( !v44[4] )
              {
                if ( (*(_DWORD *)v44)-- == 1 )
                  gameswf::free_internal(v44);
                v43 = nullptr;
                *(_DWORD *)(v42 + 64) = 0;
                *(_DWORD *)(v42 + 60) = 0;
                v42 = *(_DWORD *)(v22 + 12);
              }
            }
            gameswf::weak_ptr<gameswf::character>::operator=(v42 + 60, nullptr);
            v45 = *(_DWORD *)(v22 + 12);
            v87[0] = 1065353216;
            v87[2] = 1065353216;
            v87[4] = 1065353216;
            v87[6] = 1065353216;
            v87[1] = 0;
            v87[3] = 0;
            v87[5] = 0;
            v87[7] = 0;
            gameswf::character::set_cxform(v45, v87);
            *((_DWORD *)v20 + 25) = *(_DWORD *)(v22 + 12);
            gameswf::texture_cache::get_region_bounds((int)v20, v23, &v112);
            v113 = (float)((float)(*(float *)(v22 + 20) - *(float *)(v22 + 16)) / 20.0) + v112;
            v115 = (float)((float)(*(float *)(v22 + 28) - *(float *)(v22 + 24)) / 20.0) + v114;
            v46 = *(void (__fastcall **)(int, int, int, int, int, int, _DWORD, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v27 + 40);
            v116 = -1;
            v46(
              v27,
              -1,
              (int)v112,
              (int)v114,
              (int)(float)(v113 - v112),
              (int)(float)(v115 - v114),
              *(_DWORD *)(v22 + 16),
              *(_DWORD *)(v22 + 20),
              *(_DWORD *)(v22 + 28),
              *(_DWORD *)(v22 + 24));
            (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(v22 + 12) + 288))(*(_DWORD *)(v22 + 12));
            (*(void (__fastcall **)(int))(*(_DWORD *)v27 + 44))(v27);
            gameswf::character::set_matrix(*(_DWORD *)(v22 + 12), (int *)&v105);
            gameswf::character::set_cxform(*(_DWORD *)(v22 + 12), v88);
            gameswf::weak_ptr<gameswf::character>::operator=(*(_DWORD *)(v22 + 12) + 60, v43);
            v47 = v112;
            *((_DWORD *)v20 + 25) = 0;
            v48 = (int)(float)(v113 - v47);
            v49 = (int)(float)(v115 - v114);
            gameswf::filter_engine::read_frame_buffer(v20, (int)v47, (int)a2[8] - v49 - (int)v114, v48, v49);
            v50 = (char *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)v20 + 13) + 24))(*((_DWORD *)v20 + 13));
            v51 = *((char **)v20 + 20);
            v52 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)v20 + 13) + 36))(*((_DWORD *)v20 + 13));
            if ( v49 > 0 )
            {
              v53 = 4 * v48;
              v54 = 4 * v52;
              v55 = 0;
              do
              {
                ++v55;
                memcpy(v50, v51, v53);
                v51 += v53;
                v50 += v54;
              }
              while ( v55 != v49 );
            }
            result = (int *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)v20 + 13) + 28))(*((_DWORD *)v20 + 13));
            *(_BYTE *)(v22 + 36) = 0;
            v15 = *v85;
            v21 = *(_DWORD *)(*v85 + 4);
            if ( v21 < v83 )
              break;
          }
        }
        v24 = v83 + 1;
        v19 = v21 < ++v83;
        if ( !v19 )
        {
          v25 = 8 * (5 * v24 + 1);
          do
          {
            result = *(int **)(v15 + v25);
            v26 = v15 + v25;
            v25 += 40;
            if ( result != (int *)-2 )
            {
              result = *(int **)(v26 + 4);
              if ( result != (int *)-1 )
                break;
            }
            v19 = v21 < ++v83;
          }
          while ( !v19 );
        }
      }
    }
  }
  return result;
}


// ===== 759998 gameswf::character_def::is(int) =====
bool __fastcall gameswf::character_def::is(gameswf::character_def *this, int a2)
{
  return a2 == 10;
}


// ===== 7599a8 gameswf::character_def::display(gameswf::character *) =====
void __fastcall gameswf::character_def::display(gameswf::character_def *this, gameswf::character *a2)
{
  ;
}


// ===== 7599ac gameswf::character_def::point_test_local(float,float) =====
int __fastcall gameswf::character_def::point_test_local(gameswf::character_def *this, float a2, float a3)
{
  return 0;
}


// ===== 7599b4 gameswf::character_def::get_bound(gameswf::rect *) =====
void gameswf::character_def::get_bound()
{
  ;
}


// ===== 7599b8 gameswf::character_def::output_cached_data(gameswf::tu_file *,gameswf::cache_options const&) =====
void gameswf::character_def::output_cached_data()
{
  ;
}


// ===== 7599bc gameswf::character_def::input_cached_data(gameswf::tu_file *) =====
void gameswf::character_def::input_cached_data()
{
  ;
}


// ===== 7599c0 gameswf::character_def::csm_textsetting(gameswf::stream *,int) =====
void gameswf::character_def::csm_textsetting()
{
  ;
}


// ===== 7599c4 gameswf::character_def::instanciate_class(gameswf::character *) =====
int __fastcall gameswf::character_def::instanciate_class(gameswf::character_def *this, gameswf::character *a2)
{
  return 0;
}


// ===== 7599cc gameswf::generic_character::is(int) =====
bool __fastcall gameswf::generic_character::is(gameswf::generic_character *this, int a2)
{
  return a2 == 3 || a2 == 1 || a2 == 0;
}


// ===== 7599f0 gameswf::generic_character::get_character_def(void) =====
int __fastcall gameswf::generic_character::get_character_def(gameswf::generic_character *this)
{
  return *((_DWORD *)this + 40);
}


// ===== 7599f8 gameswf::generic_character::hit_test(float,float) =====
bool __fastcall gameswf::generic_character::hit_test(gameswf::generic_character *this, float a2, float a3)
{
  return (*(int (__fastcall **)(gameswf::generic_character *, _DWORD, _DWORD))(*(_DWORD *)this + 104))(
           this,
           LODWORD(a2),
           LODWORD(a3)) != 0;
}


// ===== 759a14 gameswf::bitmap_character::is(int) =====
bool __fastcall gameswf::bitmap_character::is(gameswf::bitmap_character *this, int a2)
{
  return a2 == 33 || a2 == 10;
}


// ===== 759a30 gameswf::bitmap_character::point_test_local(float,float) =====
bool __fastcall gameswf::bitmap_character::point_test_local(gameswf::bitmap_character *this, float a2, float a3)
{
  return a2 >= *((float *)this + 9)
      && a2 <= *((float *)this + 10)
      && a3 >= *((float *)this + 11)
      && a3 <= *((float *)this + 12);
}


// ===== 759aa8 gameswf::bitmap_character::get_bound(gameswf::rect *) =====
int __fastcall gameswf::bitmap_character::get_bound(int a1, _DWORD *a2)
{
  int result; // r0
  int v4; // r1
  int v5; // r2
  int v6; // r3
  _DWORD *v7; // t0

  v7 = (_DWORD *)(a1 + 36);
  result = *(_DWORD *)(a1 + 36);
  v4 = *++v7;
  v5 = *++v7;
  v6 = v7[1];
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}


// ===== 759abc gameswf::bitmap_character::get_bitmap_info(void) =====
int __fastcall gameswf::bitmap_character::get_bitmap_info(gameswf::bitmap_character *this)
{
  return *((_DWORD *)this + 8);
}


// ===== 759ac4 gameswf::execute_tag::~execute_tag() =====
void __fastcall gameswf::execute_tag::~execute_tag(gameswf::execute_tag *this)
{
  ;
}


// ===== 759ac8 gameswf::execute_tag::execute(gameswf::character *) =====
void __fastcall gameswf::execute_tag::execute(gameswf::execute_tag *this, gameswf::character *a2)
{
  ;
}


// ===== 759acc gameswf::execute_tag::execute_state(gameswf::character *) =====
void __fastcall gameswf::execute_tag::execute_state(gameswf::execute_tag *this, gameswf::character *a2)
{
  ;
}


// ===== 759ad0 gameswf::execute_tag::execute_state_reverse(gameswf::character *,int) =====
int __fastcall gameswf::execute_tag::execute_state_reverse(gameswf::execute_tag *this, gameswf::character *a2, int a3)
{
  return (*(int (__fastcall **)(gameswf::execute_tag *, gameswf::character *, int))(*(_DWORD *)this + 12))(this, a2, a3);
}


// ===== 759ae4 gameswf::execute_tag::is_remove_tag(void) =====
int __fastcall gameswf::execute_tag::is_remove_tag(gameswf::execute_tag *this)
{
  return 0;
}


// ===== 759aec gameswf::execute_tag::is_action_tag(void) =====
int __fastcall gameswf::execute_tag::is_action_tag(gameswf::execute_tag *this)
{
  return 0;
}


// ===== 759af4 gameswf::execute_tag::get_depth_id_of_replace_or_add_tag(void) =====
int __fastcall gameswf::execute_tag::get_depth_id_of_replace_or_add_tag(gameswf::execute_tag *this)
{
  return -1;
}


// ===== 759afc gameswf::execute_tag::get_depth(void) =====
int __fastcall gameswf::execute_tag::get_depth(gameswf::execute_tag *this)
{
  return -1;
}


// ===== 759b04 gameswf::execute_tag::get_action_offset(void) =====
int __fastcall gameswf::execute_tag::get_action_offset(gameswf::execute_tag *this)
{
  return -1;
}


// ===== 759b0c gameswf::execute_tag::is_place_tag(void) =====
int __fastcall gameswf::execute_tag::is_place_tag(gameswf::execute_tag *this)
{
  return 0;
}


// ===== 759b14 gameswf::place_object_2::get_depth(void) =====
int __fastcall gameswf::place_object_2::get_depth(gameswf::place_object_2 *this)
{
  return *((unsigned __int16 *)this + 6);
}


// ===== 759b1c gameswf::place_object_2::is_place_tag(void) =====
int __fastcall gameswf::place_object_2::is_place_tag(gameswf::place_object_2 *this)
{
  return 1;
}


// ===== 759b24 gameswf::get_verbose_parse(void) =====
int __fastcall gameswf::get_verbose_parse(gameswf *this)
{
  return (unsigned __int8)gameswf::s_verbose_parse;
}


// ===== 759b44 gameswf::get_verbose_debug(void) =====
int __fastcall gameswf::get_verbose_debug(gameswf *this)
{
  return (unsigned __int8)gameswf::s_verbose_debug;
}


// ===== 759b64 gameswf::get_verbose_action(void) =====
int __fastcall gameswf::get_verbose_action(gameswf *this)
{
  return (unsigned __int8)gameswf::s_verbose_action;
}


// ===== 759b84 gameswf::get_verbose_dlist(void) =====
int __fastcall gameswf::get_verbose_dlist(gameswf *this)
{
  return (unsigned __int8)gameswf::s_verbose_dlist;
}


// ===== 759ba4 gameswf::set_verbose_action(bool) =====
char __fastcall gameswf::set_verbose_action(char this, bool a2)
{
  gameswf::s_verbose_action = this;
  return this;
}


// ===== 759bc4 gameswf::set_verbose_parse(bool) =====
char __fastcall gameswf::set_verbose_parse(char this, bool a2)
{
  gameswf::s_verbose_parse = this;
  return this;
}


// ===== 759be4 gameswf::set_verbose_dlist(bool) =====
char __fastcall gameswf::set_verbose_dlist(char this, bool a2)
{
  gameswf::s_verbose_dlist = this;
  return this;
}


// ===== 759c04 gameswf::ref_counted::ref_counted(void) =====
_DWORD *__fastcall gameswf::ref_counted::ref_counted(_DWORD *this)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = off_98FE90;
  return this;
}


// ===== 759c34 gameswf::ref_counted::ref_counted(void) =====
_DWORD *__fastcall gameswf::ref_counted::ref_counted(_DWORD *this)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = off_98FE90;
  return this;
}


// ===== 759c64 gameswf::ref_counted::add_ref(void) =====
int __fastcall gameswf::ref_counted::add_ref(int this)
{
  ++*(_DWORD *)(this + 4);
  return this;
}


// ===== 759c74 gameswf::null_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
void gameswf::null_loader()
{
  ;
}


// ===== 759c78 gameswf::set_background_color::execute(gameswf::character *) =====
int __fastcall gameswf::set_background_color::execute(gameswf::set_background_color *this, gameswf::character *a2)
{
  *((_BYTE *)this + 7) = (int)(float)((float)(COERCE_FLOAT((*(int (__fastcall **)(gameswf::character *))(*(_DWORD *)a2 + 244))(a2))
                                            * 255.0)
                                    + 0.5);
  return (*(int (__fastcall **)(gameswf::character *, char *))(*(_DWORD *)a2 + 236))(a2, (char *)this + 4);
}


// ===== 759cc8 gameswf::set_background_color::execute_state(gameswf::character *) =====
int __fastcall gameswf::set_background_color::execute_state(
        gameswf::set_background_color *this,
        gameswf::character *a2)
{
  return (*(int (__fastcall **)(gameswf::set_background_color *, gameswf::character *))(*(_DWORD *)this + 8))(this, a2);
}


// ===== 759cdc gameswf::register_texture_loader_callback(glitch::video::ITexture * (*)(char const*,int,int)) =====
void *__fastcall gameswf::register_texture_loader_callback(
        void *this,
        glitch::video::ITexture *(*a2)(const char *, int, int))
{
  gameswf::s_texture_loader_callback = this;
  return this;
}


// ===== 759cfc gameswf::substitute_bitmap_character(gameswf::tu_string &,gameswf::bitmap_character_def *,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::substitute_bitmap_character(int result, int a2)
{
  char *v2; // r6
  int v3; // r0
  int v4; // r4
  int (__fastcall *v5)(char *, int, int); // r5
  char *v6; // r6
  int v7; // r7
  int v8; // r0

  v2 = (char *)result;
  if ( gameswf::s_texture_loader_callback )
  {
    v3 = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 44))(a2);
    v4 = v3;
    v5 = (int (__fastcall *)(char *, int, int))gameswf::s_texture_loader_callback;
    if ( *v2 == -1 )
      v6 = *((char **)v2 + 3);
    else
      v6 = v2 + 1;
    v7 = (*(int (__fastcall **)(int))(*(_DWORD *)v3 + 36))(v3);
    v8 = (*(int (__fastcall **)(int))(*(_DWORD *)v4 + 40))(v4);
    result = v5(v6, v7, v8);
    if ( result )
      return (*(int (__fastcall **)(int, int))(*(_DWORD *)v4 + 32))(v4, result);
  }
  return result;
}


// ===== 759d9c gameswf::define_debug_id_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::define_debug_id_loader(int result, int a2, int a3)
{
  int v4; // r5

  v4 = result;
  if ( a3 )
  {
    result = (*(int (__fastcall **)(int, int))(*(_DWORD *)a3 + 8))(a3, 8);
    if ( result )
      return (*(int (__fastcall **)(int, int, _DWORD))(*(_DWORD *)(v4 + 4) + 8))(a3 + 244, 16, **(_DWORD **)(v4 + 4));
  }
  return result;
}


// ===== 759de4 gameswf::place_object_2::execute_state(gameswf::character *) =====
int __fastcall gameswf::place_object_2::execute_state(gameswf::place_object_2 *this, gameswf::character *a2)
{
  return (*(int (__fastcall **)(gameswf::place_object_2 *, gameswf::character *))(*(_DWORD *)this + 8))(this, a2);
}


// ===== 759df8 gameswf::place_object_2::get_depth_id_of_replace_or_add_tag(void) =====
int __fastcall gameswf::place_object_2::get_depth_id_of_replace_or_add_tag(gameswf::place_object_2 *this)
{
  int v1; // r3
  bool v2; // zf
  int v4; // r2

  v1 = *((unsigned __int8 *)this + 9);
  v2 = v1 == 0;
  if ( *((_BYTE *)this + 9) )
    v2 = v1 == 2;
  if ( !v2 )
    return -1;
  if ( *((_WORD *)this + 9) == 4 )
    v4 = *((unsigned __int16 *)this + 7);
  else
    v4 = 0xFFFF;
  return v4 | (*((unsigned __int16 *)this + 6) << 16);
}


// ===== 759e28 gameswf::end_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
void gameswf::end_loader()
{
  ;
}


// ===== 759e2c gameswf::remove_object_2::execute(gameswf::character *) =====
int __fastcall gameswf::remove_object_2::execute(gameswf::remove_object_2 *this, gameswf::character *a2)
{
  return (*(int (__fastcall **)(gameswf::character *, _DWORD, _DWORD))(*(_DWORD *)a2 + 196))(
           a2,
           *((_DWORD *)this + 1),
           *((_DWORD *)this + 2));
}


// ===== 759e4c gameswf::remove_object_2::execute_state(gameswf::character *) =====
int __fastcall gameswf::remove_object_2::execute_state(gameswf::remove_object_2 *this, gameswf::character *a2)
{
  return (*(int (__fastcall **)(gameswf::remove_object_2 *, gameswf::character *))(*(_DWORD *)this + 8))(this, a2);
}


// ===== 759e60 gameswf::remove_object_2::is_remove_tag(void) =====
int __fastcall gameswf::remove_object_2::is_remove_tag(gameswf::remove_object_2 *this)
{
  return 1;
}


// ===== 759e68 gameswf::hash<int,gameswf::matrix *,gameswf::fixed_size_hash<int>>::find_index(int const&) =====
int __fastcall gameswf::hash<int,gameswf::matrix *,gameswf::fixed_size_hash<int>>::find_index(int *a1, _DWORD *a2)
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


// ===== 759f28 gameswf::hash<int,gameswf::cxform *,gameswf::fixed_size_hash<int>>::find_index(int const&) =====
int __fastcall gameswf::hash<int,gameswf::cxform *,gameswf::fixed_size_hash<int>>::find_index(int *a1, _DWORD *a2)
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


// ===== 759fe8 gameswf::remove_object_2::~remove_object_2() =====
void __fastcall gameswf::remove_object_2::~remove_object_2(gameswf::remove_object_2 *this)
{
  ;
}


// ===== 759fec gameswf::set_background_color::~set_background_color() =====
void __fastcall gameswf::set_background_color::~set_background_color(gameswf::set_background_color *this)
{
  ;
}


// ===== 759ff0 gameswf::execute_tag::~execute_tag() =====
void __fastcall gameswf::execute_tag::~execute_tag(gameswf::execute_tag *this)
{
  LC_API_FREE_0(this);
}


// ===== 75a004 gameswf::remove_object_2::~remove_object_2() =====
void __fastcall gameswf::remove_object_2::~remove_object_2(gameswf::remove_object_2 *this)
{
  LC_API_FREE_0(this);
}


// ===== 75a018 gameswf::set_background_color::~set_background_color() =====
void __fastcall gameswf::set_background_color::~set_background_color(gameswf::set_background_color *this)
{
  LC_API_FREE_0(this);
}


// ===== 75a02c gameswf::destructp<uchar>(uchar const*,uint) =====
void __fastcall gameswf::destructp<unsigned char>(void *p)
{
  if ( p )
    gameswf::free_internal(p);
}


// ===== 75a03c gameswf::hash<gameswf::string_pointer,gameswf::permanent_string *,gameswf::string_pointer_hash_functor<gameswf::string_pointer>>::clear(void) =====
void __fastcall gameswf::hash<gameswf::string_pointer,gameswf::permanent_string *,gameswf::string_pointer_hash_functor<gameswf::string_pointer>>::clear(
        _DWORD **a1)
{
  _DWORD *v2; // r0
  int v3; // r1
  int v4; // r2
  int v5; // r3
  _DWORD *v6; // r12

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
          v6[1] = 0;
          *v6 = -2;
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


// ===== 75a0bc gameswf::hash<int,gameswf::matrix *,gameswf::fixed_size_hash<int>>::clear(void) =====
void __fastcall gameswf::hash<int,gameswf::matrix *,gameswf::fixed_size_hash<int>>::clear(_DWORD **a1)
{
  _DWORD *v2; // r0
  int v3; // r1
  int v4; // r2
  int v5; // r3
  _DWORD *v6; // r12

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
          v6[1] = 0;
          *v6 = -2;
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


// ===== 75a13c gameswf::hash<int,gameswf::cxform *,gameswf::fixed_size_hash<int>>::clear(void) =====
void __fastcall gameswf::hash<int,gameswf::cxform *,gameswf::fixed_size_hash<int>>::clear(_DWORD **a1)
{
  _DWORD *v2; // r0
  int v3; // r1
  int v4; // r2
  int v5; // r3
  _DWORD *v6; // r12

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
          v6[1] = 0;
          *v6 = -2;
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


// ===== 75a1bc gameswf::destruct<gameswf::image_rgb>(gameswf::image_rgb const*) =====
void __fastcall gameswf::destruct<gameswf::image_rgb>(void (__fastcall ***a1)(_DWORD))
{
  if ( a1 )
  {
    (**a1)(a1);
    gameswf::free_internal(a1);
  }
}


// ===== 75a1e8 gameswf::destruct<gameswf::image_rgba>(gameswf::image_rgba const*) =====
void __fastcall gameswf::destruct<gameswf::image_rgba>(void (__fastcall ***a1)(_DWORD))
{
  if ( a1 )
  {
    (**a1)(a1);
    gameswf::free_internal(a1);
  }
}


// ===== 75a214 gameswf::destruct<gameswf::ref_counted>(gameswf::ref_counted const*) =====
void __fastcall gameswf::destruct<gameswf::ref_counted>(void (__fastcall ***a1)(_DWORD))
{
  if ( a1 )
  {
    (**a1)(a1);
    gameswf::free_internal(a1);
  }
}


// ===== 75a240 gameswf::ref_counted::drop_ref(void) =====
void __fastcall gameswf::ref_counted::drop_ref(void (__fastcall ***this)(_DWORD))
{
  bool v1; // zf

  v1 = *(this + 1) == (void (__fastcall **)(_DWORD))((char *)&dword_0 + 1);
  *(this + 1) = (void (__fastcall **)(_DWORD))((char *)*(this + 1) - 1);
  if ( v1 )
    gameswf::destruct<gameswf::ref_counted>(this);
}


// ===== 75a258 gameswf::smart_ptr<gameswf::root>::set_ref(gameswf::root*) =====
void __fastcall gameswf::smart_ptr<gameswf::root>::set_ref(gameswf::ref_counted **a1, gameswf::ref_counted *this)
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


// ===== 75a298 gameswf::array<gameswf::swf_event *>::reserve(int) =====
void __fastcall gameswf::array<gameswf::swf_event *>::reserve(int a1, int a2)
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


// ===== 75a314 gameswf::array<gameswf::with_stack_entry>::reserve(int) =====
void __fastcall gameswf::array<gameswf::with_stack_entry>::reserve(int a1, int a2)
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


// ===== 75a390 gameswf::array<gameswf::as_environment::frame_slot>::reserve(int) =====
void __fastcall gameswf::array<gameswf::as_environment::frame_slot>::reserve(int a1, int a2)
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


// ===== 75a40c gameswf::array<gameswf::as_value>::reserve(int) =====
void __fastcall gameswf::array<gameswf::as_value>::reserve(int a1, int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 12 * a2, 12 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(12 * a2);
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


// ===== 75a494 gameswf::video_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::video_loader(gameswf *this, gameswf::stream *a2, int a3, gameswf::movie_definition_sub *a4)
{
  int u16; // r0

  u16 = gameswf::stream::read_u16(this);
  return (*(int (__fastcall **)(int, int))(*(_DWORD *)a3 + 92))(a3, u16);
}


// ===== 75a4b8 gameswf::define_video_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
// attributes: thunk
int __fastcall gameswf::define_video_loader(
        gameswf *this,
        gameswf::stream *a2,
        int a3,
        gameswf::movie_definition_sub *a4)
{
  return gameswf::stream::read_u16(this);
}


// ===== 75a4bc gameswf::define_tabindex_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::define_tabindex_loader(
        gameswf *this,
        gameswf::stream *a2,
        int a3,
        gameswf::movie_definition_sub *a4)
{
  gameswf::stream::read_u16(this);
  return gameswf::stream::read_u16(this);
}


// ===== 75a4d4 gameswf::jpeg_tables_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::jpeg_tables_loader(
        gameswf *this,
        gameswf::stream *a2,
        int a3,
        gameswf::movie_definition_sub *a4)
{
  gameswf::stream::get_position(this);
  return gameswf::stream::get_tag_end_position(this);
}


// ===== 75a4ec gameswf::define_file_attribute_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::define_file_attribute_loader(
        gameswf *this,
        gameswf::stream *a2,
        _BYTE *a3,
        gameswf::movie_definition_sub *a4)
{
  unsigned int u8; // r5
  int result; // r0
  int v8; // r3
  int v9; // r5

  u8 = gameswf::stream::read_u8(this);
  result = gameswf::stream::read_uint(this, 24);
  v8 = (u8 >> 3) & 1;
  v9 = (u8 >> 4) & 1;
  a3[46] = v9;
  a3[45] = v8;
  a3[44] = v9;
  return result;
}


// ===== 75a524 gameswf::sound_stream_head_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int (__fastcall ***__fastcall gameswf::sound_stream_head_loader(
        gameswf *this,
        gameswf::stream *a2,
        int a3,
        gameswf::movie_definition_sub *a4))(_DWORD, _DWORD, _DWORD, gameswf *, int, int, bool)
{
  int uint; // r4
  gameswf *v7; // r10
  int v8; // r9
  gameswf *u16; // r0
  gameswf *v10; // r8
  int (__fastcall ***result)(_DWORD, _DWORD, _DWORD, gameswf *, int, int, bool); // r0
  int v12; // r1
  int (__fastcall ***v13)(_DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD); // r7
  int (__fastcall *v14)(_DWORD, _DWORD, _DWORD, gameswf *, int, int, bool); // r6
  int sample_rate; // r0

  gameswf::stream::read_u8(this);
  uint = gameswf::stream::read_uint(this, 4);
  v7 = (gameswf *)gameswf::stream::read_uint(this, 2);
  gameswf::stream::read_uint(this, 1);
  v8 = gameswf::stream::read_uint(this, 1);
  u16 = (gameswf *)gameswf::stream::read_u16(this);
  v10 = u16;
  if ( uint == 2 )
    u16 = (gameswf *)gameswf::stream::read_s16(this);
  result = (int (__fastcall ***)(_DWORD, _DWORD, _DWORD, gameswf *, int, int, bool))gameswf::get_sound_handler(u16);
  v13 = (int (__fastcall ***)(_DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD))result;
  if ( result )
  {
    v14 = **result;
    sample_rate = gameswf::get_sample_rate(v7, v12);
    result = (int (__fastcall ***)(_DWORD, _DWORD, _DWORD, gameswf *, int, int, bool))v14(
                                                                                        v13,
                                                                                        0,
                                                                                        0,
                                                                                        v10,
                                                                                        uint,
                                                                                        sample_rate,
                                                                                        v8 != 0);
    *(_DWORD *)(a3 + 36) = uint;
    *(_DWORD *)(a3 + 32) = result;
  }
  return result;
}


// ===== 75a5e4 gameswf::remove_object_2::execute_state_reverse(gameswf::character *,int) =====
int __fastcall gameswf::remove_object_2::execute_state_reverse(
        gameswf::remove_object_2 *this,
        gameswf::character *a2,
        const char *a3)
{
  int v6; // r0

  v6 = (*(int (__fastcall **)(gameswf::character *, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 160))(
         a2,
         a3,
         *((_DWORD *)this + 1),
         *((_DWORD *)this + 2));
  if ( v6 )
    return (*(int (__fastcall **)(int, gameswf::character *))(*(_DWORD *)v6 + 12))(v6, a2);
  else
    return gameswf::log_error(
             (gameswf *)"reverse REMOVE can't find previous replace or add tag(%d, %d)\n",
             a3,
             *((_DWORD *)this + 1));
}


// ===== 75a648 gameswf::place_object_2::execute_state_reverse(gameswf::character *,int) =====
int __fastcall gameswf::place_object_2::execute_state_reverse(
        gameswf::place_object_2 *this,
        gameswf::character *a2,
        const char *a3)
{
  int result; // r0
  int v7; // r2
  int *v8; // r8
  int *v9; // r7
  int v10; // r9
  float v11; // r0
  int v12; // r0

  result = *((unsigned __int8 *)this + 9);
  if ( result == 1 )
  {
    v8 = *((int **)this + 5);
    if ( !v8 )
      v8 = &gameswf::cxform::identity;
    v9 = *((int **)this + 6);
    if ( !v9 )
      v9 = &gameswf::matrix::identity;
    v10 = *((unsigned __int8 *)this + 7);
    if ( *((_BYTE *)this + 7) )
      v10 += (int)this;
    if ( *((_WORD *)this + 5) )
      v11 = (float)*((unsigned __int16 *)this + 5) / 65535.0;
    else
      v11 = 0.0;
    return (*(int (__fastcall **)(gameswf::character *, _DWORD, int *, int *, int, float, _DWORD))(*(_DWORD *)a2 + 184))(
             a2,
             *((unsigned __int16 *)this + 6),
             v8,
             v9,
             v10,
             COERCE_FLOAT(LODWORD(v11)),
             *((unsigned __int16 *)this + 8));
  }
  else if ( result )
  {
    if ( result == 2 )
    {
      v12 = (*(int (__fastcall **)(gameswf::character *, const char *, _DWORD, int))(*(_DWORD *)a2 + 160))(
              a2,
              a3,
              *((unsigned __int16 *)this + 6),
              -1);
      if ( v12 )
        return (*(int (__fastcall **)(int, gameswf::character *))(*(_DWORD *)v12 + 12))(v12, a2);
      else
        return gameswf::log_error(
                 (gameswf *)"reverse REPLACE can't find previous replace or add tag(%d, %d)\n",
                 a3,
                 *((unsigned __int16 *)this + 6));
    }
  }
  else
  {
    if ( *((_WORD *)this + 9) == 4 )
      v7 = *((unsigned __int16 *)this + 7);
    else
      v7 = -1;
    return (*(int (__fastcall **)(gameswf::character *, _DWORD, int))(*(_DWORD *)a2 + 196))(
             a2,
             *((unsigned __int16 *)this + 6),
             v7);
  }
  return result;
}


// ===== 75a7a0 gameswf::define_csm_textsetting_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::define_csm_textsetting_loader(
        gameswf *this,
        gameswf::stream *a2,
        int a3,
        gameswf::movie_definition_sub *a4)
{
  const char *u16; // r5
  int v8; // r0

  u16 = (const char *)gameswf::stream::read_u16(this);
  v8 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a3 + 92))(a3, u16);
  if ( v8 )
    return (*(int (__fastcall **)(int, gameswf *, gameswf::stream *))(*(_DWORD *)v8 + 36))(v8, this, a2);
  else
    return gameswf::log_error((gameswf *)"define_font_alignzones: can't find font w/ id %d\n", u16);
}


// ===== 75a804 gameswf::remove_object_2_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::remove_object_2_loader(
        gameswf *this,
        gameswf::stream *a2,
        int a3,
        gameswf::movie_definition_sub *a4)
{
  _DWORD *v7; // r8

  v7 = operator new(0xCu, 0);
  v7[2] = -1;
  *v7 = off_98FBC0;
  v7[1] = -1;
  if ( a2 == (gameswf::stream *)&byte_5 )
    v7[2] = gameswf::stream::read_u16(this);
  v7[1] = gameswf::stream::read_u16(this);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a3 + 128))(a3, v7);
}


// ===== 75a88c gameswf::ref_counted::get_weak_proxy(void) =====
int __fastcall gameswf::ref_counted::get_weak_proxy(gameswf::ref_counted *this)
{
  _BYTE *v3; // r0

  if ( *((_DWORD *)this + 2) )
    return *((_DWORD *)this + 2);
  v3 = operator new(8u, 0);
  *(_DWORD *)v3 = 0;
  v3[4] = 1;
  *((_DWORD *)this + 2) = v3;
  ++*(_DWORD *)v3;
  return *((_DWORD *)this + 2);
}


// ===== 75a8dc gameswf::button_sound_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::button_sound_loader(
        gameswf *this,
        gameswf::stream *a2,
        gameswf::movie_definition_sub *a3,
        gameswf::movie_definition_sub *a4)
{
  int u16; // r0
  gameswf::button_character_definition *v8; // r0

  u16 = gameswf::stream::read_u16(this);
  v8 = (gameswf::button_character_definition *)(*(int (__fastcall **)(gameswf::movie_definition_sub *, int))(*(_DWORD *)a3 + 92))(
                                                 a3,
                                                 u16);
  return gameswf::button_character_definition::read(v8, this, (int)a2, a3);
}


// ===== 75a918 gameswf::hash<gameswf::string_pointer,gameswf::permanent_string *,gameswf::string_pointer_hash_functor<gameswf::string_pointer>>::find_index(gameswf::string_pointer const&) =====
int __fastcall gameswf::hash<gameswf::string_pointer,gameswf::permanent_string *,gameswf::string_pointer_hash_functor<gameswf::string_pointer>>::find_index(
        char **a1,
        char **a2)
{
  char *v2; // r4
  int v4; // r5
  _DWORD *v6; // r5
  int v7; // r8
  int v8; // r7
  int v9; // r5
  int v10; // r3
  int v11; // r8
  int v12; // r2
  int *v13; // r8
  int v14; // r2
  char *v15; // r2
  char *v16; // r3
  const char *v17; // r0
  const char *v18; // r1
  int v19; // r3
  bool v20; // zf
  int v21; // r3
  int v22; // r2
  char *v23; // r3
  int v24; // r2
  int v25; // r1
  int v26; // r2

  v2 = *a1;
  if ( !*a1 )
    return -1;
  v6 = *a2;
  v7 = *((_DWORD *)*a2 + 4);
  if ( (v7 & 0xFFFFFF) == 0xFFFFFF )
  {
    v19 = *(char *)v6;
    v20 = v19 == -1;
    if ( v19 == -1 )
    {
      v21 = v6[1];
    }
    else
    {
      v21 = v19 - 1;
      v2 = (char *)v6 + 1;
    }
    if ( v20 )
    {
      --v21;
      v2 = (char *)v6[3];
    }
    if ( v21 > 0 )
    {
      v23 = &v2[v21];
      v24 = 5381;
      do
      {
        v25 = (unsigned __int8)*--v23;
        v26 = 33 * v24;
        if ( (unsigned __int8)(v25 - 65) <= 0x19u )
          v25 += 32;
        v24 = v25 ^ v26;
      }
      while ( v23 != v2 );
      v22 = v24 << 8 >> 8;
      v8 = v22;
    }
    else
    {
      v8 = 5381;
      v22 = 5381;
    }
    v6[4] = v7 & 0xFF000000 | v22 & 0xFFFFFF;
    v2 = *a1;
  }
  else
  {
    v8 = v7 << 8 >> 8;
  }
  v9 = *((_DWORD *)v2 + 1);
  if ( v8 == -1 )
    v8 = -32769;
  v10 = v8 & v9;
  v11 = 2 * (v8 & v9) + 1;
  v12 = *(_DWORD *)&v2[8 * v11];
  v13 = (int *)&v2[8 * v11];
  if ( v12 == -2 )
    return -1;
  v14 = v13[1];
  if ( v14 == -1 )
  {
    v4 = v8 & v9;
    goto LABEL_16;
  }
  v4 = v9 & v14;
  if ( v4 != v10 )
    return -1;
LABEL_16:
  while ( 1 )
  {
    if ( v8 == v14 )
    {
      v15 = (char *)v13[2];
      v16 = *a2;
      if ( v15 == *a2 )
        break;
      v17 = *v15 == -1 ? *((const char **)v15 + 3) : v15 + 1;
      v18 = *v16 == -1 ? *((const char **)v16 + 3) : v16 + 1;
      if ( !LC_API_STRCMP_0(v17, v18) )
        break;
    }
    v4 = *v13;
    if ( *v13 == -1 )
      break;
    v13 = (int *)&v2[16 * v4 + 8];
    v14 = *(_DWORD *)&v2[16 * v4 + 12];
  }
  return v4;
}


// ===== 75aa70 gameswf::hash<int,gameswf::cxform *,gameswf::fixed_size_hash<int>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<int,gameswf::cxform *,gameswf::fixed_size_hash<int>>::set_raw_capacity(
        _DWORD **a1,
        int a2)
{
  _DWORD *v2; // r8
  int v3; // r4
  _DWORD *v4; // r3
  int v5; // r5
  int v6; // r3
  _DWORD *v7; // r3
  int v8; // r7
  int v9; // r6
  int v10; // r4
  _DWORD *v11; // r5
  _DWORD v12[2]; // [sp+4h] [bp-8h] BYREF

  v2 = a1;
  if ( a2 <= 0 )
  {
LABEL_17:
    gameswf::hash<int,gameswf::cxform *,gameswf::fixed_size_hash<int>>::clear(a1);
    return;
  }
  v3 = 1 << (int)(float)((float)(logf((float)(a2 - 1)) / 0.69315) + 1.0);
  v4 = (_DWORD *)*v2;
  if ( v3 < 4 )
    v3 = 4;
  if ( !v4 || v4[1] + 1 != v3 )
  {
    v5 = 0;
    v12[0] = gameswf::malloc_internal(16 * v3 + 8);
    *(_DWORD *)v12[0] = 0;
    *(_DWORD *)(v12[0] + 4) = v3 - 1;
    v6 = 8;
    do
    {
      ++v5;
      *(_DWORD *)(v12[0] + v6) = -2;
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
          ++v9;
          v11 = &v7[v10];
          if ( v7[v10] != -2 && v11[1] != -1 )
          {
            gameswf::hash<int,gameswf::cxform *,gameswf::fixed_size_hash<int>>::add(v12, v11 + 2, v11 + 3);
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
    a1 = (_DWORD **)v12;
    *v2 = v12[0];
    v12[0] = 0;
    goto LABEL_17;
  }
}


// ===== 75abc8 gameswf::hash<int,gameswf::cxform *,gameswf::fixed_size_hash<int>>::check_expand(void) =====
void __fastcall gameswf::hash<int,gameswf::cxform *,gameswf::fixed_size_hash<int>>::check_expand(_DWORD **a1)
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
  gameswf::hash<int,gameswf::cxform *,gameswf::fixed_size_hash<int>>::set_raw_capacity(a1, v2);
}


// ===== 75abfc gameswf::hash<int,gameswf::cxform *,gameswf::fixed_size_hash<int>>::add(int const&,gameswf::cxform * const&) =====
_DWORD *__fastcall gameswf::hash<int,gameswf::cxform *,gameswf::fixed_size_hash<int>>::add(
        _DWORD **a1,
        _DWORD *a2,
        _DWORD *a3)
{
  int v6; // r2
  int v7; // r3
  _DWORD *result; // r0
  _DWORD *v9; // r3
  int v10; // r7
  int v11; // r6
  int v12; // r10
  int v13; // r9
  _DWORD *v14; // r8
  int v15; // r11
  int v16; // r1
  int v17; // r0
  int v18; // r12
  int v19; // r7
  int v20; // r11
  int *v21; // r11
  int v22; // r1

  gameswf::hash<int,gameswf::cxform *,gameswf::fixed_size_hash<int>>::check_expand(a1);
  v6 = 5381;
  v7 = 4;
  ++**a1;
  do
  {
    --v7;
    result = (_DWORD *)*((unsigned __int8 *)a2 + v7);
    v6 = (int)&result[16400 * v6] - v6;
  }
  while ( v7 );
  v9 = *a1;
  if ( v6 == -1 )
    v6 = -32769;
  v10 = v9[1];
  v11 = v6 & v10;
  v12 = 2 * (v6 & v10) + 1;
  v13 = v9[2 * v12];
  v14 = &v9[2 * v12];
  if ( v13 == -2 )
  {
    v9[2 * v12] = -1;
LABEL_14:
    v14[1] = v6;
    v14[2] = *a2;
    v14[3] = *a3;
    return result;
  }
  v15 = v14[1];
  if ( v15 == -1 )
    goto LABEL_14;
  v16 = v6 & v10;
  do
  {
    v16 = (v16 + 1) & v10;
    v17 = 2 * v16 + 1;
    v18 = v9[2 * v17];
    result = &v9[2 * v17];
  }
  while ( v18 != -2 );
  v19 = v10 & v15;
  if ( v19 == v11 )
  {
    *result = v13;
    result[1] = v14[1];
    result[2] = v14[2];
    result[3] = v14[3];
    v14[2] = *a2;
    result = (_DWORD *)*a3;
    v14[3] = *a3;
    v9[2 * v12] = v16;
    v14[1] = v6;
  }
  else
  {
    do
    {
      v20 = 2 * v19 + 1;
      v19 = v9[2 * v20];
      v21 = &v9[2 * v20];
    }
    while ( v19 != v11 );
    *result = v13;
    result[1] = v14[1];
    result[2] = v14[2];
    result[3] = v14[3];
    *v21 = v16;
    v14[2] = *a2;
    v22 = *a3;
    v14[1] = v6;
    v14[3] = v22;
    v9[2 * v12] = -1;
  }
  return result;
}


// ===== 75ad60 gameswf::hash<int,gameswf::cxform *,gameswf::fixed_size_hash<int>>::set(int const&,gameswf::cxform * const&) =====
_DWORD *__fastcall gameswf::hash<int,gameswf::cxform *,gameswf::fixed_size_hash<int>>::set(
        int *a1,
        _DWORD *a2,
        _DWORD *a3)
{
  int index; // r0
  _DWORD *result; // r0

  index = gameswf::hash<int,gameswf::cxform *,gameswf::fixed_size_hash<int>>::find_index(a1, a2);
  if ( index < 0 )
    return gameswf::hash<int,gameswf::cxform *,gameswf::fixed_size_hash<int>>::add((_DWORD **)a1, a2, a3);
  result = (_DWORD *)(*a1 + 16 * index);
  result[5] = *a3;
  return result;
}


// ===== 75ada4 gameswf::define_font_alignzones(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::define_font_alignzones(
        gameswf *this,
        gameswf::stream *a2,
        int a3,
        gameswf::movie_definition_sub *a4)
{
  const char *u16; // r5
  gameswf::font *v8; // r0

  u16 = (const char *)gameswf::stream::read_u16(this);
  v8 = (gameswf::font *)(*(int (__fastcall **)(int, const char *))(*(_DWORD *)a3 + 124))(a3, u16);
  if ( v8 )
    return gameswf::font::read_font_alignzones(v8, this, (int)a2);
  else
    return gameswf::log_error((gameswf *)"define_font_alignzones: can't find font w/ id %d\n", u16);
}


// ===== 75ae00 gameswf::define_font_info_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::define_font_info_loader(
        gameswf *this,
        gameswf::stream *a2,
        int a3,
        gameswf::movie_definition_sub *a4)
{
  const char *u16; // r5
  gameswf::font *v8; // r0

  u16 = (const char *)gameswf::stream::read_u16(this);
  v8 = (gameswf::font *)(*(int (__fastcall **)(int, const char *))(*(_DWORD *)a3 + 124))(a3, u16);
  if ( v8 )
    return gameswf::font::read_font_info(v8, this, (int)a2);
  else
    return gameswf::log_error((gameswf *)"define_font_info_loader: can't find font w/ id %d\n", u16);
}


// ===== 75ae5c gameswf::membuf::resize(int) =====
gameswf::membuf *__fastcall gameswf::membuf::resize(gameswf::membuf *this, gameswf::membuf *a2)
{
  gameswf::membuf *v2; // r4
  int v4; // r0

  v2 = this;
  if ( *(gameswf::membuf **)this != a2 )
  {
    if ( (int)a2 > *((_DWORD *)this + 1) )
    {
      v4 = gameswf::membuf::capacity(a2, (int)a2);
      this = (gameswf::membuf *)gameswf::membuf::reserve(v2, v4);
    }
    *(_DWORD *)v2 = a2;
  }
  return this;
}


// ===== 75aea0 gameswf::bitmap_character::display(gameswf::character *) =====
int __fastcall gameswf::bitmap_character::display(gameswf::bitmap_character *this, gameswf::character *a2)
{
  char *world_cxform; // r0
  int v5; // r1
  int v6; // r2
  int v7; // r3
  int v8; // r1
  int v9; // r2
  int v10; // r3
  char *world_matrix; // r0
  int v12; // r1
  int v13; // r2
  int v14; // r3
  int v15; // r1
  int result; // r0
  _DWORD v17[8]; // [sp+14h] [bp-58h] BYREF
  _DWORD v18[6]; // [sp+34h] [bp-38h] BYREF
  _DWORD v19[6]; // [sp+4Ch] [bp-20h] BYREF
  int v20; // [sp+64h] [bp-8h]

  v19[2] = 0;
  v19[3] = 1065353216;
  v19[0] = 0;
  v19[1] = 1065353216;
  world_cxform = gameswf::character::get_world_cxform(a2);
  v5 = *((_DWORD *)world_cxform + 1);
  v6 = *((_DWORD *)world_cxform + 2);
  v7 = *((_DWORD *)world_cxform + 3);
  v17[0] = *(_DWORD *)world_cxform;
  v17[1] = v5;
  v17[2] = v6;
  v17[3] = v7;
  v8 = *((_DWORD *)world_cxform + 5);
  v9 = *((_DWORD *)world_cxform + 6);
  v10 = *((_DWORD *)world_cxform + 7);
  v17[4] = *((_DWORD *)world_cxform + 4);
  v17[5] = v8;
  v17[6] = v9;
  v17[7] = v10;
  v19[5] = -1;
  v20 = gameswf::cxform::transform(v17, -1);
  world_matrix = gameswf::character::get_world_matrix(a2);
  v12 = *((_DWORD *)world_matrix + 1);
  v13 = *((_DWORD *)world_matrix + 2);
  v14 = *((_DWORD *)world_matrix + 3);
  v18[0] = *(_DWORD *)world_matrix;
  v18[1] = v12;
  v18[2] = v13;
  v18[3] = v14;
  v15 = *((_DWORD *)world_matrix + 5);
  result = *((_DWORD *)world_matrix + 4);
  v18[4] = result;
  v18[5] = v15;
  v19[4] = v20;
  if ( gameswf::s_render_handler )
    return (*(int (__fastcall **)(int, _DWORD *, _DWORD, char *, _DWORD *, int))(*(_DWORD *)gameswf::s_render_handler
                                                                               + 128))(
             gameswf::s_render_handler,
             v18,
             *((_DWORD *)this + 8),
             (char *)this + 36,
             v19,
             v20);
  return result;
}


// ===== 75afb0 gameswf::inflate_wrapper(gameswf::tu_file *,void *,int) =====
const char *__fastcall gameswf::inflate_wrapper(gameswf *this, gameswf::tu_file *a2, void *a3, int a4)
{
  const char *v5; // r1
  const char *v6; // r0
  const char *result; // r0
  char *v8; // [sp+0h] [bp-44h] BYREF
  int v9; // [sp+4h] [bp-40h]
  gameswf::tu_file *v10; // [sp+Ch] [bp-38h]
  void *v11; // [sp+10h] [bp-34h]
  int v12; // [sp+20h] [bp-24h]
  int v13; // [sp+24h] [bp-20h]
  int v14; // [sp+28h] [bp-1Ch]
  char v15; // [sp+3Bh] [bp-9h] BYREF
  char v16; // [sp+3Ch] [bp-8h] BYREF

  v10 = a2;
  v11 = a3;
  v9 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v8 = nullptr;
  v5 = (const char *)inflateInit_(&v8, "1.2.3", 56);
  if ( v5 )
    return (const char *)gameswf::log_error((gameswf *)"error: inflate_wrapper() inflateInit() returned %d\n", v5);
  while ( 1 )
  {
    (*((void (__fastcall **)(char *, int, _DWORD))this + 2))(&v15, 1, *(_DWORD *)this);
    v16 = v15;
    v8 = &v16;
    v9 = 1;
    v6 = (const char *)inflate((unsigned __int8 **)&v8, 2);
    if ( v6 == (_BYTE *)&dword_0 + 1 )
      break;
    if ( v6 )
      gameswf::log_error((gameswf *)"error: inflate_wrapper() inflate() returned %d\n", v6);
  }
  result = (const char *)inflateEnd_0(&v8);
  if ( result )
    return (const char *)gameswf::log_error((gameswf *)"error: inflate_wrapper() inflateEnd() return %d\n", result);
  return result;
}


// ===== 75b0a8 gameswf::set_background_color_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::set_background_color_loader(
        gameswf *this,
        gameswf::stream *a2,
        int a3,
        gameswf::movie_definition_sub *a4)
{
  char *v6; // r6

  v6 = (char *)operator new(8u, 0);
  v6[7] = -1;
  *(_DWORD *)v6 = off_98FC68;
  v6[4] = -1;
  v6[5] = -1;
  v6[6] = -1;
  gameswf::rgba::read_rgb((gameswf::rgba *)(v6 + 4), this);
  return (*(int (__fastcall **)(int, char *))(*(_DWORD *)a3 + 128))(a3, v6);
}


// ===== 75b11c gameswf::precompute_cached_data(gameswf::movie_definition *) =====
int __fastcall gameswf::precompute_cached_data(gameswf *this, gameswf::movie_definition *a2)
{
  int v3; // r7
  int sound_handler; // r0
  int v5; // r11
  const char *v6; // r1
  gameswf::root *v7; // r4
  const char *current_frame; // r5
  int v10; // [sp+0h] [bp-Ch]
  int v11; // [sp+4h] [bp-8h]

  v3 = 0;
  v11 = gameswf::s_render_handler;
  sound_handler = gameswf::get_sound_handler(this);
  gameswf::s_render_handler = 0;
  v5 = sound_handler;
  gameswf::set_sound_handler(0);
  v7 = (gameswf::root *)(*(int (__fastcall **)(gameswf *))(*(_DWORD *)this + 64))(this);
  if ( v7 )
  {
    while ( 1 )
    {
      current_frame = (const char *)gameswf::root::get_current_frame(v7);
      gameswf::root::advance(v7, 0.01, 0);
      gameswf::root::display(v7);
      v10 = gameswf::root::get_current_frame(v7);
      if ( v10 == (*(int (__fastcall **)(gameswf *))(*(_DWORD *)this + 56))(this) - 1 )
        break;
      if ( (*(int (__fastcall **)(gameswf::root *))(*(_DWORD *)v7 + 28))(v7) == 1 )
      {
        gameswf::root::goto_frame(v7, (int)(current_frame + 1));
        ++v3;
        (*(void (__fastcall **)(gameswf::root *, _DWORD))(*(_DWORD *)v7 + 24))(v7, 0);
        if ( v3 > 10 )
          break;
      }
      else if ( (int)current_frame > gameswf::root::get_current_frame(v7) )
      {
        gameswf::log_error((gameswf *)"loop back; jumping to frame %d\n", current_frame);
        gameswf::root::goto_frame(v7, (int)(current_frame + 1));
      }
      else
      {
        v3 = 0;
      }
    }
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v7);
    gameswf::s_render_handler = v11;
    return gameswf::set_sound_handler(v5);
  }
  else
  {
    gameswf::log_error((gameswf *)"error: precompute_cached_data can't create instance of movie\n", v6);
    gameswf::s_render_handler = v11;
    return gameswf::set_sound_handler(v5);
  }
}


// ===== 75b298 gameswf::ensure_loaders_registered(void) =====
int __fastcall gameswf::ensure_loaders_registered(gameswf *this)
{
  int result; // r0
  void (*v2)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v3)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v4)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v5)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v6)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v7)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v8)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v9)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v10)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v11)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v12)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v13)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v14)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v15)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v16)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v17)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v18)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v19)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v20)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v21)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v22)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v23)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v24)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v25)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v26)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v27)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v28)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v29)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v30)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v31)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v32)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v33)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v34)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v35)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v36)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v37)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v38)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v39)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v40)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v41)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v42)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v43)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v44)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v45)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v46)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v47)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v48)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v49)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v50)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v51)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v52)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v53)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v54)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v55)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2
  void (*v56)(gameswf::stream *, int, gameswf::movie_definition_sub *); // r2

  result = gameswf::is_tag_loaders_initialized(this);
  if ( !result )
  {
    gameswf::register_tag_loader(nullptr, (int)gameswf::end_loader, v2);
    gameswf::register_tag_loader((gameswf *)((char *)&dword_0 + 2), (int)gameswf::define_shape_loader, v3);
    gameswf::register_tag_loader((gameswf *)byte_4, (int)gameswf::place_object_2_loader, v4);
    gameswf::register_tag_loader((gameswf *)&byte_5, (int)gameswf::remove_object_2_loader, v5);
    gameswf::register_tag_loader((gameswf *)&byte_6, (int)gameswf::define_bits_jpeg_loader, v6);
    gameswf::register_tag_loader((gameswf *)&byte_7, (int)gameswf::button_character_loader, v7);
    gameswf::register_tag_loader((gameswf *)byte_8, (int)gameswf::jpeg_tables_loader, v8);
    gameswf::register_tag_loader((gameswf *)byte_9, (int)gameswf::set_background_color_loader, v9);
    gameswf::register_tag_loader((gameswf *)&byte_9[1], (int)gameswf::define_font_loader, v10);
    gameswf::register_tag_loader((gameswf *)&byte_9[2], (int)gameswf::define_text_loader, v11);
    gameswf::register_tag_loader((gameswf *)&byte_9[3], (int)gameswf::do_action_loader, v12);
    gameswf::register_tag_loader(
      (gameswf *)&byte_9[4],
      (int)gameswf::define_font_info_loader,
      (void (*)(gameswf::stream *, int, gameswf::movie_definition_sub *))gameswf::define_font_info_loader);
    gameswf::register_tag_loader((gameswf *)&byte_9[5], (int)gameswf::define_sound_loader, v13);
    gameswf::register_tag_loader((gameswf *)&byte_9[6], (int)gameswf::start_sound_loader, v14);
    gameswf::register_tag_loader((gameswf *)((char *)&word_10 + 1), (int)gameswf::button_sound_loader, v15);
    gameswf::register_tag_loader((gameswf *)&word_12, (int)gameswf::sound_stream_head_loader, v16);
    gameswf::register_tag_loader((gameswf *)((char *)&word_12 + 1), (int)gameswf::sound_stream_block_loader, v17);
    gameswf::register_tag_loader((gameswf *)&dword_14, (int)gameswf::define_bits_lossless_2_loader, v18);
    gameswf::register_tag_loader((gameswf *)((char *)&dword_14 + 1), (int)gameswf::define_bits_jpeg2_loader, v19);
    gameswf::register_tag_loader((gameswf *)((char *)&dword_14 + 2), (int)gameswf::define_shape_loader, v20);
    gameswf::register_tag_loader((gameswf *)&off_18, (int)gameswf::null_loader, v21);
    gameswf::register_tag_loader((gameswf *)((char *)&off_18 + 2), (int)gameswf::place_object_2_loader, v22);
    gameswf::register_tag_loader((gameswf *)&dword_1C, (int)gameswf::remove_object_2_loader, v23);
    gameswf::register_tag_loader((gameswf *)&dword_20, (int)gameswf::define_shape_loader, v24);
    gameswf::register_tag_loader((gameswf *)((char *)&dword_20 + 1), (int)gameswf::define_text_loader, v25);
    gameswf::register_tag_loader((gameswf *)((char *)&dword_24 + 1), (int)gameswf::define_edit_text_loader, v26);
    gameswf::register_tag_loader((gameswf *)((char *)&dword_20 + 2), (int)gameswf::button_character_loader, v27);
    gameswf::register_tag_loader((gameswf *)((char *)&dword_20 + 3), (int)gameswf::define_bits_jpeg3_loader, v28);
    gameswf::register_tag_loader((gameswf *)&dword_24, (int)gameswf::define_bits_lossless_2_loader, v29);
    gameswf::register_tag_loader((gameswf *)((char *)&dword_24 + 3), (int)gameswf::sprite_loader, v30);
    gameswf::register_tag_loader((gameswf *)((char *)&word_2A + 1), (int)gameswf::frame_label_loader, v31);
    gameswf::register_tag_loader((gameswf *)((char *)&word_2C + 1), (int)gameswf::sound_stream_head_loader, v32);
    gameswf::register_tag_loader((gameswf *)&word_2E, (int)gameswf::define_shape_morph_loader, v33);
    gameswf::register_tag_loader((gameswf *)&word_30, (int)gameswf::define_font_loader, v34);
    gameswf::register_tag_loader((gameswf *)&dword_38, (int)gameswf::export_loader, v35);
    gameswf::register_tag_loader((gameswf *)((char *)&dword_38 + 1), (int)gameswf::import_loader, v36);
    gameswf::register_tag_loader((gameswf *)((char *)&dword_38 + 2), (int)gameswf::define_enable_debugger_loader, v37);
    gameswf::register_tag_loader((gameswf *)((char *)&dword_38 + 3), (int)gameswf::do_init_action_loader, v38);
    gameswf::register_tag_loader((gameswf *)&off_3C, (int)gameswf::define_video_loader, v39);
    gameswf::register_tag_loader((gameswf *)((char *)&off_3C + 1), (int)gameswf::video_loader, v40);
    gameswf::register_tag_loader(
      (gameswf *)((char *)&off_3C + 2),
      (int)gameswf::define_font_info_loader,
      (void (*)(gameswf::stream *, int, gameswf::movie_definition_sub *))gameswf::define_font_info_loader);
    gameswf::register_tag_loader((gameswf *)((char *)&off_3C + 3), (int)gameswf::define_debug_id_loader, v41);
    gameswf::register_tag_loader((gameswf *)&dword_40, (int)gameswf::define_enable_debugger_loader, v42);
    gameswf::register_tag_loader((gameswf *)((char *)&dword_40 + 2), (int)gameswf::define_tabindex_loader, v43);
    gameswf::register_tag_loader((gameswf *)((char *)&dword_44 + 1), (int)gameswf::define_file_attribute_loader, v44);
    gameswf::register_tag_loader((gameswf *)((char *)&dword_44 + 2), (int)gameswf::place_object_2_loader, v45);
    gameswf::register_tag_loader((gameswf *)((char *)&dword_48 + 1), (int)gameswf::define_font_alignzones, v46);
    gameswf::register_tag_loader((gameswf *)((char *)&dword_48 + 2), (int)gameswf::define_csm_textsetting_loader, v47);
    gameswf::register_tag_loader((gameswf *)((char *)&dword_48 + 3), (int)gameswf::define_font_loader, v48);
    gameswf::register_tag_loader((gameswf *)&dword_4C, (int)gameswf::symbol_class_loader, v49);
    gameswf::register_tag_loader((gameswf *)((char *)&dword_4C + 1), (int)gameswf::define_metadata_loader, v50);
    gameswf::register_tag_loader((gameswf *)((char *)&dword_50 + 2), (int)gameswf::define_abc_loader, v51);
    gameswf::register_tag_loader((gameswf *)((char *)&dword_50 + 3), (int)gameswf::define_shape_loader, v52);
    gameswf::register_tag_loader((gameswf *)&dword_54, (int)gameswf::define_shape_morph_loader, v53);
    gameswf::register_tag_loader((gameswf *)((char *)&dword_54 + 2), (int)gameswf::define_scene_loader, v54);
    gameswf::register_tag_loader((gameswf *)&dword_58, (int)gameswf::define_font_name, v55);
    return gameswf::register_tag_loader((gameswf *)&dword_C8, (int)gameswf::define_native_image_loader, v56);
  }
  return result;
}


// ===== 75b6fc gameswf::generic_character::get_topmost_mouse_entity(float,float) =====
gameswf::generic_character *__fastcall gameswf::generic_character::get_topmost_mouse_entity(
        gameswf::generic_character *this,
        float a2,
        float a3)
{
  gameswf::matrix *v4; // r0
  _DWORD v6[2]; // [sp+0h] [bp-10h] BYREF
  int v7; // [sp+8h] [bp-8h] BYREF
  int v8; // [sp+Ch] [bp-4h]

  v4 = *((gameswf::matrix **)this + 19);
  *(float *)v6 = a2;
  *(float *)&v6[1] = a3;
  v8 = 0;
  v7 = 0;
  gameswf::matrix::transform_by_inverse(v4, (gameswf::point *)&v7, (const gameswf::point *)v6);
  if ( (*(int (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 40) + 16))(*((_DWORD *)this + 40), v7, v8) )
    return this;
  else
    return nullptr;
}


// ===== 75b75c gameswf::generic_character::generic_character(gameswf::player *,gameswf::character_def *,gameswf::character *,int) =====
gameswf::generic_character *__fastcall gameswf::generic_character::generic_character(
        gameswf::generic_character *this,
        gameswf::player *a2,
        gameswf::character_def *a3,
        gameswf::character *a4,
        int a5)
{
  gameswf::character::character(this, a2, a4, a5, 3);
  *((_DWORD *)this + 40) = a3;
  *(_DWORD *)this = off_98FCA0;
  if ( a3 )
    gameswf::ref_counted::add_ref((int)a3);
  *((_BYTE *)this + 157) = 0;
  return this;
}


// ===== 75b7c8 gameswf::generic_character::display(void) =====
int __fastcall gameswf::generic_character::display(gameswf::generic_character *this)
{
  int result; // r0
  int v3; // r3

  result = (*(int (__fastcall **)(_DWORD, gameswf::generic_character *))(**((_DWORD **)this + 40) + 12))(
             *((_DWORD *)this + 40),
             this);
  v3 = *((_DWORD *)this + 21);
  if ( v3 )
  {
    if ( *(_DWORD *)(v3 + 96) )
      return gameswf::character::do_display_callback(this);
  }
  return result;
}


// ===== 75b810 gameswf::execute_actions(gameswf::as_environment *,gameswf::array<gameswf::action_buffer *> const&) =====
gameswf::as_environment *__fastcall gameswf::execute_actions(gameswf::as_environment *result, _DWORD *a2)
{
  gameswf::as_environment *v3; // r6
  int v4; // r4

  v3 = result;
  if ( (int)a2[1] > 0 )
  {
    v4 = 0;
    do
      result = (gameswf::as_environment *)gameswf::action_buffer::execute(
                                            *(gameswf::action_buffer **)(*a2 + 4 * v4++),
                                            v3);
    while ( v4 < a2[1] );
  }
  return result;
}


// ===== 75b850 `global constructor keyed to'.._.._src_gameswf_gameswf_impl.cpp =====
int `global constructor keyed to'.._.._src_gameswf_gameswf_impl.cpp()
{
  char *v0; // r4

  dword_9FC4C8 = 1056964608;
  gameswf::s_empty_name = 1;
  glitch::ps::vHalf = 1056964608;
  dword_9FC4C4 = 1056964608;
  byte_9FC4CD = 0;
  gameswf::tu_string::resize((gameswf::tu_string *)&gameswf::s_empty_name, 0);
  if ( gameswf::s_empty_name == -1 )
    v0 = (char *)dword_9FC4D8;
  else
    v0 = &byte_9FC4CD;
  *v0 = 0;
  dword_9FC4DC = dword_9FC4DC & 0xFF000000 | 0xFFFFFF;
  HIBYTE(dword_9FC4DC) |= 1u;
  return _aeabi_atexit(
           (int)&gameswf::s_empty_name,
           (int)gameswf::permanent_string::~permanent_string,
           (int)&_dso_handle);
}


// ===== 75b8f8 gameswf::array<gameswf::as_value>::resize(int) [clone] =====
int __fastcall gameswf::array<gameswf::as_value>::resize(int result)
{
  int v1; // r4
  _DWORD *v2; // r7
  int v3; // r5
  int i; // r6
  int v5; // r3

  v1 = *(_DWORD *)(result + 4);
  v2 = (_DWORD *)result;
  if ( v1 <= 0 )
  {
    if ( v1 < 0 )
    {
      v5 = 12 * v1;
      do
      {
        ++v1;
        result = *v2 + v5;
        *(_BYTE *)result = 0;
        *(_BYTE *)(result + 1) = 0;
        v5 += 12;
      }
      while ( v1 );
    }
  }
  else
  {
    v3 = 0;
    for ( i = 0; i != v1; ++i )
    {
      result = gameswf::as_value::drop_refs((gameswf::as_value *)(*v2 + v3));
      v3 += 12;
    }
  }
  v2[1] = 0;
  return result;
}


// ===== 75b974 gameswf::counted_buffer::~counted_buffer() =====
void __fastcall gameswf::counted_buffer::~counted_buffer(gameswf::counted_buffer *this)
{
  int v1; // r3
  int v3; // r3
  void *v4; // r0
  int v5; // r2

  v1 = *((_DWORD *)this + 6);
  if ( v1 < 0 )
  {
    v5 = 4 * v1;
    do
    {
      ++v1;
      *(_DWORD *)(*((_DWORD *)this + 5) + v5) = 0;
      v5 += 4;
    }
    while ( v1 );
  }
  v3 = *((unsigned __int8 *)this + 32);
  *((_DWORD *)this + 6) = 0;
  if ( !v3 )
  {
    v4 = *((void **)this + 5);
    *((_DWORD *)this + 7) = 0;
    if ( v4 )
      gameswf::free_internal(v4);
    *((_DWORD *)this + 5) = 0;
  }
  gameswf::membuf::~membuf(this);
}


// ===== 75b9f4 gameswf::counted_buffer::drop_ref(void) =====
void __fastcall gameswf::counted_buffer::drop_ref(gameswf::counted_buffer *this)
{
  if ( (*((_DWORD *)this + 4))-- == 1 )
  {
    gameswf::counted_buffer::~counted_buffer(this);
    gameswf::free_internal(this);
  }
}


// ===== 75ba28 gameswf::sound_stream_block_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
void __fastcall gameswf::sound_stream_block_loader(
        gameswf *this,
        gameswf::stream *a2,
        _DWORD *a3,
        gameswf::movie_definition_sub *a4)
{
  int tag_end_position; // r7
  signed int v7; // r7
  int v8; // r5
  _BYTE *v9; // r4
  gameswf *u8; // r0
  int sound_handler; // r0

  if ( (int)a3[8] >= 0 )
  {
    if ( a3[10] == -1 )
      a3[10] = a3[15];
    if ( a3[9] == 2 )
    {
      gameswf::stream::read_u16(this);
      gameswf::stream::read_s16(this);
    }
    tag_end_position = gameswf::stream::get_tag_end_position(this);
    v7 = tag_end_position - gameswf::stream::get_position(this);
    if ( v7 > 0 )
    {
      v8 = 0;
      v9 = operator new[](v7);
      do
      {
        u8 = (gameswf *)gameswf::stream::read_u8(this);
        v9[v8++] = (_BYTE)u8;
      }
      while ( v8 != v7 );
      sound_handler = gameswf::get_sound_handler(u8);
      if ( sound_handler )
        (*(void (__fastcall **)(int, _DWORD, _BYTE *, int))(*(_DWORD *)sound_handler + 8))(sound_handler, a3[8], v9, v8);
      if ( v9 )
        gameswf::free_internal(v9);
    }
  }
}


// ===== 75baf8 gameswf::hash<int,gameswf::matrix *,gameswf::fixed_size_hash<int>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<int,gameswf::matrix *,gameswf::fixed_size_hash<int>>::set_raw_capacity(
        _DWORD **a1,
        int a2)
{
  _DWORD *v2; // r8
  int v3; // r4
  _DWORD *v4; // r3
  int v5; // r5
  int v6; // r3
  _DWORD *v7; // r3
  int v8; // r7
  int v9; // r6
  int v10; // r4
  _DWORD *v11; // r5
  _DWORD v12[2]; // [sp+4h] [bp-8h] BYREF

  v2 = a1;
  if ( a2 <= 0 )
  {
LABEL_17:
    gameswf::hash<int,gameswf::matrix *,gameswf::fixed_size_hash<int>>::clear(a1);
    return;
  }
  v3 = 1 << (int)(float)((float)(logf((float)(a2 - 1)) / 0.69315) + 1.0);
  v4 = (_DWORD *)*v2;
  if ( v3 < 4 )
    v3 = 4;
  if ( !v4 || v4[1] + 1 != v3 )
  {
    v5 = 0;
    v12[0] = gameswf::malloc_internal(16 * v3 + 8);
    *(_DWORD *)v12[0] = 0;
    *(_DWORD *)(v12[0] + 4) = v3 - 1;
    v6 = 8;
    do
    {
      ++v5;
      *(_DWORD *)(v12[0] + v6) = -2;
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
          ++v9;
          v11 = &v7[v10];
          if ( v7[v10] != -2 && v11[1] != -1 )
          {
            gameswf::hash<int,gameswf::matrix *,gameswf::fixed_size_hash<int>>::add(v12, v11 + 2, v11 + 3);
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
    a1 = (_DWORD **)v12;
    *v2 = v12[0];
    v12[0] = 0;
    goto LABEL_17;
  }
}


// ===== 75bc50 gameswf::hash<int,gameswf::matrix *,gameswf::fixed_size_hash<int>>::check_expand(void) =====
void __fastcall gameswf::hash<int,gameswf::matrix *,gameswf::fixed_size_hash<int>>::check_expand(_DWORD **a1)
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
  gameswf::hash<int,gameswf::matrix *,gameswf::fixed_size_hash<int>>::set_raw_capacity(a1, v2);
}


// ===== 75bc84 gameswf::hash<int,gameswf::matrix *,gameswf::fixed_size_hash<int>>::add(int const&,gameswf::matrix * const&) =====
_DWORD *__fastcall gameswf::hash<int,gameswf::matrix *,gameswf::fixed_size_hash<int>>::add(
        _DWORD **a1,
        _DWORD *a2,
        _DWORD *a3)
{
  int v6; // r2
  int v7; // r3
  _DWORD *result; // r0
  _DWORD *v9; // r3
  int v10; // r7
  int v11; // r6
  int v12; // r10
  int v13; // r9
  _DWORD *v14; // r8
  int v15; // r11
  int v16; // r1
  int v17; // r0
  int v18; // r12
  int v19; // r7
  int v20; // r11
  int *v21; // r11
  int v22; // r1

  gameswf::hash<int,gameswf::matrix *,gameswf::fixed_size_hash<int>>::check_expand(a1);
  v6 = 5381;
  v7 = 4;
  ++**a1;
  do
  {
    --v7;
    result = (_DWORD *)*((unsigned __int8 *)a2 + v7);
    v6 = (int)&result[16400 * v6] - v6;
  }
  while ( v7 );
  v9 = *a1;
  if ( v6 == -1 )
    v6 = -32769;
  v10 = v9[1];
  v11 = v6 & v10;
  v12 = 2 * (v6 & v10) + 1;
  v13 = v9[2 * v12];
  v14 = &v9[2 * v12];
  if ( v13 == -2 )
  {
    v9[2 * v12] = -1;
LABEL_14:
    v14[1] = v6;
    v14[2] = *a2;
    v14[3] = *a3;
    return result;
  }
  v15 = v14[1];
  if ( v15 == -1 )
    goto LABEL_14;
  v16 = v6 & v10;
  do
  {
    v16 = (v16 + 1) & v10;
    v17 = 2 * v16 + 1;
    v18 = v9[2 * v17];
    result = &v9[2 * v17];
  }
  while ( v18 != -2 );
  v19 = v10 & v15;
  if ( v19 == v11 )
  {
    *result = v13;
    result[1] = v14[1];
    result[2] = v14[2];
    result[3] = v14[3];
    v14[2] = *a2;
    result = (_DWORD *)*a3;
    v14[3] = *a3;
    v9[2 * v12] = v16;
    v14[1] = v6;
  }
  else
  {
    do
    {
      v20 = 2 * v19 + 1;
      v19 = v9[2 * v20];
      v21 = &v9[2 * v20];
    }
    while ( v19 != v11 );
    *result = v13;
    result[1] = v14[1];
    result[2] = v14[2];
    result[3] = v14[3];
    *v21 = v16;
    v14[2] = *a2;
    v22 = *a3;
    v14[1] = v6;
    v14[3] = v22;
    v9[2 * v12] = -1;
  }
  return result;
}


// ===== 75bde8 gameswf::hash<int,gameswf::matrix *,gameswf::fixed_size_hash<int>>::set(int const&,gameswf::matrix * const&) =====
_DWORD *__fastcall gameswf::hash<int,gameswf::matrix *,gameswf::fixed_size_hash<int>>::set(
        int *a1,
        _DWORD *a2,
        _DWORD *a3)
{
  int index; // r0
  _DWORD *result; // r0

  index = gameswf::hash<int,gameswf::matrix *,gameswf::fixed_size_hash<int>>::find_index(a1, a2);
  if ( index < 0 )
    return gameswf::hash<int,gameswf::matrix *,gameswf::fixed_size_hash<int>>::add((_DWORD **)a1, a2, a3);
  result = (_DWORD *)(*a1 + 16 * index);
  result[5] = *a3;
  return result;
}


// ===== 75be2c gameswf::tu_string::tu_string(gameswf::tu_string const&) =====
gameswf::tu_string *__fastcall gameswf::tu_string::tu_string(gameswf::tu_string *this, const gameswf::tu_string *a2)
{
  int v3; // r1
  char *v5; // r0
  const char *v6; // r1
  char *v7; // r12
  int v8; // r6
  int v9; // r2
  unsigned int v11; // r3
  int v12; // r3
  bool v13; // zf
  int v14; // r3
  char *v15; // r3
  int v16; // r2
  int v17; // r1
  int v18; // r2

  *(_BYTE *)this = 1;
  *((_BYTE *)this + 1) = 0;
  v3 = *(char *)a2;
  if ( v3 == -1 )
    v3 = *((_DWORD *)a2 + 1);
  gameswf::tu_string::resize(this, v3 - 1);
  if ( *(char *)this == -1 )
    v5 = *((char **)this + 3);
  else
    v5 = (char *)this + 1;
  if ( *(char *)a2 == -1 )
    v6 = *((const char **)a2 + 3);
  else
    v6 = (char *)a2 + 1;
  LC_API_STRCPY_0(v5, v6);
  v8 = *((_DWORD *)a2 + 4);
  if ( (v8 & 0xFFFFFF) == 0xFFFFFF )
  {
    v12 = *(char *)a2;
    v13 = v12 == -1;
    if ( v12 == -1 )
    {
      v14 = *((_DWORD *)a2 + 1);
    }
    else
    {
      v14 = v12 - 1;
      v7 = (char *)a2 + 1;
    }
    if ( v13 )
    {
      --v14;
      v7 = *((char **)a2 + 3);
    }
    if ( v14 > 0 )
    {
      v15 = &v7[v14];
      v16 = 5381;
      do
      {
        v17 = (unsigned __int8)*--v15;
        v18 = 33 * v16;
        if ( (unsigned __int8)(v17 - 65) <= 0x19u )
          v17 += 32;
        v16 = v17 ^ v18;
      }
      while ( v15 != v7 );
      v9 = v16 << 8 >> 8;
    }
    else
    {
      v9 = 5381;
    }
    *((_DWORD *)a2 + 4) = v8 & 0xFF000000 | v9 & 0xFFFFFF;
  }
  else
  {
    v9 = v8 << 8 >> 8;
  }
  v11 = *((_DWORD *)this + 4) & 0xFF000000 | v9 & 0xFFFFFF;
  *((_DWORD *)this + 4) = v11;
  *((_BYTE *)this + 19) = HIBYTE(v11) & 0xFE;
  return this;
}


// ===== 75bf20 gameswf::hash<gameswf::string_pointer,gameswf::permanent_string *,gameswf::string_pointer_hash_functor<gameswf::string_pointer>>::add(gameswf::string_pointer const&,gameswf::permanent_string * const&) =====
unsigned int __fastcall gameswf::hash<gameswf::string_pointer,gameswf::permanent_string *,gameswf::string_pointer_hash_functor<gameswf::string_pointer>>::add(
        _DWORD **a1,
        int a2,
        _DWORD *a3)
{
  char *v3; // r8
  unsigned int result; // r0
  _DWORD *v8; // r12
  int v9; // r7
  int v10; // r8
  _DWORD *v11; // r3
  int v12; // r6
  int v13; // r12
  int v14; // r10
  int v15; // r9
  _DWORD *v16; // r7
  int v17; // r11
  int v18; // r2
  int v19; // r1
  int v20; // r0
  _DWORD *v21; // r1
  int v22; // r6
  int v23; // r11
  int *v24; // r11
  int v25; // r2
  int v26; // r3
  bool v27; // zf
  int v28; // r3
  int v29; // r2
  char *v30; // r3
  int v31; // r2
  int v32; // r1
  int v33; // r2

  result = gameswf::hash<gameswf::string_pointer,gameswf::permanent_string *,gameswf::string_pointer_hash_functor<gameswf::string_pointer>>::check_expand();
  ++**a1;
  v8 = *(_DWORD **)a2;
  v9 = *(_DWORD *)(*(_DWORD *)a2 + 16);
  if ( (v9 & 0xFFFFFF) == 0xFFFFFF )
  {
    v26 = *(char *)v8;
    v27 = v26 == -1;
    if ( v26 == -1 )
    {
      v28 = v8[1];
      v3 = (char *)v8[3];
    }
    else
    {
      v28 = v26 - 1;
    }
    if ( v27 )
      --v28;
    else
      v3 = (char *)v8 + 1;
    if ( v28 > 0 )
    {
      v30 = &v3[v28];
      v31 = 5381;
      do
      {
        v32 = (unsigned __int8)*--v30;
        v33 = 33 * v31;
        result = (unsigned __int8)(v32 - 65);
        if ( result <= 0x19 )
          v32 += 32;
        v31 = v32 ^ v33;
      }
      while ( v30 != v3 );
      v29 = v31 << 8 >> 8;
      v10 = v29;
    }
    else
    {
      v10 = 5381;
      v29 = 5381;
    }
    v8[4] = v9 & 0xFF000000 | v29 & 0xFFFFFF;
  }
  else
  {
    v10 = v9 << 8 >> 8;
  }
  v11 = *a1;
  if ( v10 == -1 )
    v10 = -32769;
  v12 = v11[1];
  v13 = v10 & v12;
  v14 = 2 * (v10 & v12) + 1;
  v15 = v11[2 * v14];
  v16 = &v11[2 * v14];
  if ( v15 == -2 )
  {
    v11[2 * v14] = -1;
LABEL_29:
    v16[1] = v10;
    v16[2] = *(_DWORD *)a2;
    v16[3] = *a3;
    return result;
  }
  v17 = v16[1];
  if ( v17 == -1 )
    goto LABEL_29;
  v18 = v10 & v12;
  do
  {
    v18 = (v18 + 1) & v12;
    v19 = 2 * v18 + 1;
    v20 = v11[2 * v19];
    v21 = &v11[2 * v19];
  }
  while ( v20 != -2 );
  v22 = v12 & v17;
  if ( v22 == v13 )
  {
    *v21 = v15;
    v21[1] = v16[1];
    v21[2] = v16[2];
    result = v16[3];
    v21[3] = result;
    v16[2] = *(_DWORD *)a2;
    v16[3] = *a3;
    v11[2 * v14] = v18;
    v16[1] = v10;
  }
  else
  {
    do
    {
      v23 = 2 * v22 + 1;
      v22 = v11[2 * v23];
      v24 = &v11[2 * v23];
    }
    while ( v22 != v13 );
    *v21 = v15;
    v21[1] = v16[1];
    v21[2] = v16[2];
    result = v16[3];
    v21[3] = result;
    *v24 = v18;
    v16[2] = *(_DWORD *)a2;
    v25 = *a3;
    v16[1] = v10;
    v16[3] = v25;
    v11[2 * v14] = -1;
  }
  return result;
}


// ===== 75c0e8 gameswf::hash<gameswf::string_pointer,gameswf::permanent_string *,gameswf::string_pointer_hash_functor<gameswf::string_pointer>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<gameswf::string_pointer,gameswf::permanent_string *,gameswf::string_pointer_hash_functor<gameswf::string_pointer>>::set_raw_capacity(
        _DWORD **a1,
        int a2)
{
  _DWORD *v2; // r8
  int v3; // r4
  _DWORD *v4; // r3
  int v5; // r5
  int v6; // r3
  _DWORD *v7; // r3
  int v8; // r7
  int v9; // r6
  int v10; // r4
  _DWORD *v11; // r5
  _DWORD *v12[2]; // [sp+4h] [bp-8h] BYREF

  v2 = a1;
  if ( a2 <= 0 )
  {
LABEL_17:
    gameswf::hash<gameswf::string_pointer,gameswf::permanent_string *,gameswf::string_pointer_hash_functor<gameswf::string_pointer>>::clear(a1);
    return;
  }
  v3 = 1 << (int)(float)((float)(logf((float)(a2 - 1)) / 0.69315) + 1.0);
  v4 = (_DWORD *)*v2;
  if ( v3 < 4 )
    v3 = 4;
  if ( !v4 || v4[1] + 1 != v3 )
  {
    v5 = 0;
    v12[0] = gameswf::malloc_internal(16 * v3 + 8);
    *v12[0] = 0;
    v12[0][1] = v3 - 1;
    v6 = 2;
    do
    {
      ++v5;
      v12[0][v6] = -2;
      v6 += 4;
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
          ++v9;
          v11 = &v7[v10];
          if ( v7[v10] != -2 && v11[1] != -1 )
          {
            gameswf::hash<gameswf::string_pointer,gameswf::permanent_string *,gameswf::string_pointer_hash_functor<gameswf::string_pointer>>::add(
              v12,
              (int)(v11 + 2),
              v11 + 3);
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
    a1 = v12;
    *v2 = v12[0];
    v12[0] = nullptr;
    goto LABEL_17;
  }
}


// ===== 75c240 gameswf::hash<gameswf::string_pointer,gameswf::permanent_string *,gameswf::string_pointer_hash_functor<gameswf::string_pointer>>::check_expand(void) =====
void __fastcall gameswf::hash<gameswf::string_pointer,gameswf::permanent_string *,gameswf::string_pointer_hash_functor<gameswf::string_pointer>>::check_expand(
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
  gameswf::hash<gameswf::string_pointer,gameswf::permanent_string *,gameswf::string_pointer_hash_functor<gameswf::string_pointer>>::set_raw_capacity(
    a1,
    v2);
}


// ===== 75c274 gameswf::hash<gameswf::string_pointer,gameswf::permanent_string *,gameswf::string_pointer_hash_functor<gameswf::string_pointer>>::operator[](gameswf::string_pointer const&) =====
int __fastcall gameswf::hash<gameswf::string_pointer,gameswf::permanent_string *,gameswf::string_pointer_hash_functor<gameswf::string_pointer>>::operator[](
        char **a1,
        char **a2)
{
  int index; // r0
  int v6; // [sp+4h] [bp-8h] BYREF

  index = gameswf::hash<gameswf::string_pointer,gameswf::permanent_string *,gameswf::string_pointer_hash_functor<gameswf::string_pointer>>::find_index(
            a1,
            a2);
  if ( index < 0 )
  {
    v6 = 0;
    gameswf::hash<gameswf::string_pointer,gameswf::permanent_string *,gameswf::string_pointer_hash_functor<gameswf::string_pointer>>::add(
      (_DWORD **)a1,
      (int)a2,
      &v6);
    index = gameswf::hash<gameswf::string_pointer,gameswf::permanent_string *,gameswf::string_pointer_hash_functor<gameswf::string_pointer>>::find_index(
              a1,
              a2);
  }
  return (int)&(*a1)[16 * index + 20];
}


// ===== 75c2cc gameswf::permanent_string_cache::get(gameswf::tu_string const&) =====
gameswf::tu_string *__fastcall gameswf::permanent_string_cache::get(char **this, const gameswf::tu_string *a2)
{
  int index; // r0
  gameswf::tu_string *v5; // r4
  gameswf::tu_string *v7; // [sp+0h] [bp-8h] BYREF
  char *v8; // [sp+4h] [bp-4h] BYREF

  v8 = (char *)a2;
  index = gameswf::hash<gameswf::string_pointer,gameswf::permanent_string *,gameswf::string_pointer_hash_functor<gameswf::string_pointer>>::find_index(
            this,
            &v8);
  if ( index >= 0 )
    return *(gameswf::tu_string **)&(*this)[16 * index + 20];
  v5 = (gameswf::tu_string *)operator new(0x14u, 0);
  gameswf::tu_string::tu_string(v5, a2);
  *((_BYTE *)v5 + 19) |= 1u;
  v7 = v5;
  *(_DWORD *)gameswf::hash<gameswf::string_pointer,gameswf::permanent_string *,gameswf::string_pointer_hash_functor<gameswf::string_pointer>>::operator[](
               this,
               (char **)&v7) = v5;
  return v5;
}


// ===== 75c348 gameswf::symbol_class_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::symbol_class_loader(
        gameswf *this,
        gameswf::stream *a2,
        int a3,
        gameswf::movie_definition_sub *a4)
{
  int result; // r0
  int v7; // r8
  int v8; // r4
  int u16; // r11
  _BYTE v10[8]; // [sp+8h] [bp-1Ch] BYREF
  void *p; // [sp+14h] [bp-10h]
  unsigned int v12; // [sp+18h] [bp-Ch]

  result = gameswf::stream::read_u16(this);
  v7 = result;
  if ( result )
  {
    v8 = 0;
    do
    {
      while ( 1 )
      {
        u16 = gameswf::stream::read_u16(this);
        v12 = v12 & 0xFF000000 | 0xFFFFFF;
        v10[0] = 1;
        HIBYTE(v12) &= ~1u;
        v10[1] = 0;
        gameswf::stream::read_string(this, (gameswf::tu_string *)v10);
        result = (*(int (__fastcall **)(int, int, _BYTE *))(*(_DWORD *)a3 + 100))(a3, u16, v10);
        if ( v10[0] == -1 )
          break;
        if ( v7 <= ++v8 )
          return result;
      }
      ++v8;
      gameswf::free_internal(p);
    }
    while ( v7 > v8 );
  }
  return result;
}


// ===== 75c44c gameswf::define_scene_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::define_scene_loader(
        gameswf *this,
        gameswf::stream *a2,
        int a3,
        gameswf::movie_definition_sub *a4)
{
  int vu32; // r8
  int i; // r6
  int v8; // r11
  int result; // r0
  int v10; // r8
  int v11; // r6
  int v12; // r11
  _BYTE v13[8]; // [sp+Ch] [bp-30h] BYREF
  void *v14; // [sp+18h] [bp-24h]
  unsigned int v15; // [sp+1Ch] [bp-20h]
  _BYTE v16[8]; // [sp+20h] [bp-1Ch] BYREF
  void *p; // [sp+2Ch] [bp-10h]
  unsigned int v18; // [sp+30h] [bp-Ch]

  vu32 = gameswf::stream::read_vu32(this);
  if ( vu32 > 0 )
  {
    for ( i = 0; i != vu32; ++i )
    {
      while ( 1 )
      {
        v8 = gameswf::stream::read_vu32(this);
        v18 = v18 & 0xFF000000 | 0xFFFFFF;
        v16[0] = 1;
        HIBYTE(v18) &= ~1u;
        v16[1] = 0;
        gameswf::stream::read_string(this, (gameswf::tu_string *)v16);
        (*(void (__fastcall **)(int, int, _BYTE *))(*(_DWORD *)a3 + 104))(a3, v8, v16);
        if ( v16[0] == -1 )
          break;
        if ( ++i == vu32 )
          goto LABEL_6;
      }
      gameswf::free_internal(p);
    }
  }
LABEL_6:
  result = gameswf::stream::read_vu32(this);
  v10 = result;
  if ( result > 0 )
  {
    v11 = 0;
    do
    {
      while ( 1 )
      {
        v12 = gameswf::stream::read_vu32(this);
        v15 = v15 & 0xFF000000 | 0xFFFFFF;
        v13[0] = 1;
        HIBYTE(v15) &= ~1u;
        v13[1] = 0;
        gameswf::stream::read_string(this, (gameswf::tu_string *)v13);
        result = (*(int (__fastcall **)(int, int, _BYTE *))(*(_DWORD *)a3 + 108))(a3, v12, v13);
        if ( v13[0] == -1 )
          break;
        if ( ++v11 == v10 )
          return result;
      }
      ++v11;
      gameswf::free_internal(v14);
    }
    while ( v11 != v10 );
  }
  return result;
}


// ===== 75c5f8 gameswf::export_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::export_loader(gameswf *this, gameswf::stream *a2, int a3, gameswf::movie_definition_sub *a4)
{
  int result; // r0
  int v7; // r5
  int v8; // r9
  int u16; // r8
  int v10; // r2
  int v11; // r12
  int v12; // [sp+4h] [bp-30h]
  char v13; // [sp+18h] [bp-1Ch] BYREF
  char v14[7]; // [sp+19h] [bp-1Bh] BYREF
  void *p; // [sp+24h] [bp-10h]
  unsigned int v16; // [sp+28h] [bp-Ch]

  result = gameswf::stream::read_u16(this);
  if ( result )
  {
    v7 = 0;
    v8 = result;
    while ( 1 )
    {
      u16 = gameswf::stream::read_u16(this);
      v16 = v16 & 0xFF000000 | 0xFFFFFF;
      v13 = 1;
      HIBYTE(v16) &= ~1u;
      v14[0] = 0;
      gameswf::stream::read_string(this, (gameswf::tu_string *)&v13);
      v10 = (*(int (__fastcall **)(int, int))(*(_DWORD *)a3 + 124))(a3, u16);
      if ( !v10 )
      {
        v10 = (*(int (__fastcall **)(int, int))(*(_DWORD *)a3 + 92))(a3, u16);
        if ( !v10 )
        {
          v11 = (*(int (__fastcall **)(int, int))(*(_DWORD *)a3 + 152))(a3, u16);
          if ( v11 )
          {
            v12 = v11;
            (*(void (__fastcall **)(int, char *, int))(*(_DWORD *)a3 + 168))(a3, &v13, v11);
            result = gameswf::substitute_bitmap_character((int)&v13, v12);
            goto LABEL_6;
          }
          v10 = (*(int (__fastcall **)(int, int))(*(_DWORD *)a3 + 160))(a3, u16);
          if ( !v10 )
          {
            if ( v13 == -1 )
              result = gameswf::log_error(
                         (gameswf *)"export error: don't know how to export resource '%s'\n",
                         (const char *)p,
                         0);
            else
              result = gameswf::log_error((gameswf *)"export error: don't know how to export resource '%s'\n", v14, 0);
            goto LABEL_6;
          }
        }
      }
      result = (*(int (__fastcall **)(int, char *, int))(*(_DWORD *)a3 + 168))(a3, &v13, v10);
LABEL_6:
      if ( v13 == -1 )
      {
        ++v7;
        gameswf::free_internal(p);
        if ( v8 <= v7 )
          return result;
      }
      else if ( v8 <= ++v7 )
      {
        return result;
      }
    }
  }
  return result;
}


// ===== 75c7d4 gameswf::define_metadata_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
void __fastcall gameswf::define_metadata_loader(
        gameswf *this,
        gameswf::stream *a2,
        int a3,
        gameswf::movie_definition_sub *a4)
{
  _BYTE v4[8]; // [sp+0h] [bp-1Ch] BYREF
  void *p; // [sp+Ch] [bp-10h]
  unsigned int v6; // [sp+10h] [bp-Ch]

  v6 = v6 & 0xFF000000 | 0xFFFFFF;
  v4[0] = 1;
  HIBYTE(v6) &= ~1u;
  v4[1] = 0;
  gameswf::stream::read_string(this, (gameswf::tu_string *)v4);
  if ( v4[0] == -1 )
    gameswf::free_internal(p);
}


// ===== 75c86c gameswf::frame_label_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
void __fastcall gameswf::frame_label_loader(
        gameswf *this,
        gameswf::stream *a2,
        int a3,
        gameswf::movie_definition_sub *a4)
{
  char *v5; // r1
  char v6; // [sp+0h] [bp-1Ch] BYREF
  char v7; // [sp+1h] [bp-1Bh] BYREF
  void *p; // [sp+Ch] [bp-10h]
  unsigned int v9; // [sp+10h] [bp-Ch]

  v9 = v9 & 0xFF000000 | 0xFFFFFF;
  v6 = 1;
  HIBYTE(v9) &= ~1u;
  v7 = 0;
  gameswf::stream::read_string(this, (gameswf::tu_string *)&v6);
  if ( v6 == -1 )
    v5 = (char *)p;
  else
    v5 = &v7;
  (*(void (__fastcall **)(int, char *))(*(_DWORD *)a3 + 140))(a3, v5);
  if ( v6 == -1 )
    gameswf::free_internal(p);
}


// ===== 75c92c gameswf::define_enable_debugger_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
void __fastcall gameswf::define_enable_debugger_loader(
        gameswf *this,
        gameswf::stream *a2,
        int a3,
        gameswf::movie_definition_sub *a4)
{
  _BYTE v5[8]; // [sp+0h] [bp-18h] BYREF
  void *p; // [sp+Ch] [bp-Ch]
  unsigned int v7; // [sp+10h] [bp-8h]

  if ( a2 == (gameswf::stream *)&dword_40 )
    gameswf::stream::read_u16(this);
  v7 = v7 & 0xFF000000 | 0xFFFFFF;
  v5[0] = 1;
  HIBYTE(v7) &= ~1u;
  v5[1] = 0;
  gameswf::stream::read_string(this, (gameswf::tu_string *)v5);
  if ( v5[0] == -1 )
    gameswf::free_internal(p);
}


// ===== 75c9dc gameswf::define_font_name(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
void __fastcall gameswf::define_font_name(
        gameswf *this,
        gameswf::stream *a2,
        int a3,
        gameswf::movie_definition_sub *a4)
{
  int v6; // r0
  int v7; // r7
  int u16; // [sp+4h] [bp-38h]
  _BYTE v9[8]; // [sp+Ch] [bp-30h] BYREF
  void *p; // [sp+18h] [bp-24h]
  unsigned int v11; // [sp+1Ch] [bp-20h]
  char v12[8]; // [sp+20h] [bp-1Ch] BYREF
  void *v13; // [sp+2Ch] [bp-10h]
  unsigned int v14; // [sp+30h] [bp-Ch]

  v14 = v14 & 0xFF000000 | 0xFFFFFF;
  u16 = gameswf::stream::read_u16(this);
  HIBYTE(v14) &= ~1u;
  v12[0] = 1;
  v12[1] = 0;
  gameswf::stream::read_string(this, (gameswf::tu_string *)v12);
  v11 = v11 & 0xFF000000 | 0xFFFFFF;
  v9[0] = 1;
  HIBYTE(v11) &= ~1u;
  v9[1] = 0;
  gameswf::stream::read_string(this, (gameswf::tu_string *)v9);
  v6 = (*(int (__fastcall **)(int, int))(*(_DWORD *)a3 + 124))(a3, u16);
  v7 = v6;
  if ( v6 )
  {
    gameswf::tu_string::operator=((gameswf::tu_string *)(v6 + 48), v12);
    *(_BYTE *)(v7 + 76) = 0;
    *(_BYTE *)(v7 + 77) = 0;
  }
  if ( v9[0] != -1 )
  {
    if ( v12[0] != -1 )
      return;
LABEL_7:
    gameswf::free_internal(v13);
    return;
  }
  gameswf::free_internal(p);
  if ( v12[0] == -1 )
    goto LABEL_7;
}


// ===== 75cb14 gameswf::destruct<gameswf::character::custom>(gameswf::character::custom const*) =====
void __fastcall gameswf::destruct<gameswf::character::custom>(int a1)
{
  if ( a1 )
  {
    if ( *(char *)(a1 + 76) == -1 )
      gameswf::free_internal(*(void **)(a1 + 88));
    gameswf::array<gameswf::filter>::resize((_DWORD *)(a1 + 60), 0);
    gameswf::array<gameswf::filter>::reserve(a1 + 60, 0);
    gameswf::free_internal((void *)a1);
  }
}


// ===== 75cb6c gameswf::place_object_2::read(gameswf::player *,gameswf::stream *,int,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::place_object_2::read(
        char **this,
        gameswf::player *a2,
        gameswf::stream *a3,
        int a4,
        int a5,
        gameswf::movie_definition_sub *a6)
{
  int v6; // r11
  int v8; // r7
  __int16 u16; // r9
  int v10; // r5
  int index; // r0
  bool v12; // nf
  int v13; // r0
  int v14; // r3
  int position; // r8
  int v16; // r0
  int v17; // r8
  int v18; // r1
  int v19; // r2
  int v20; // r3
  int v21; // r1
  int v22; // r1
  int v23; // r2
  int v24; // r3
  int v25; // r1
  int v26; // r2
  int v27; // r3
  int v28; // r3
  int v29; // r3
  int v31; // r11
  _BOOL4 v32; // r0
  int v33; // r9
  int v34; // r4
  int v35; // r6
  int v36; // r11
  char v37; // r3
  int v38; // r6
  int v39; // r0
  int v40; // r3
  bool v41; // nf
  int v42; // r0
  int v43; // r3
  _WORD *v44; // r0
  int v45; // r1
  int v46; // r2
  int v47; // r3
  int v48; // r1
  char *v49; // r3
  int v50; // lr
  int *v51; // lr
  int v52; // r1
  int v53; // r2
  int v54; // r3
  int v55; // r1
  int v56; // r2
  int v57; // r3
  int v58; // r3
  int v59; // r4
  int v60; // r1
  int v61; // r2
  _DWORD *v62; // r3
  int v63; // r4
  int v64; // r5
  int v65; // r6
  int *v66; // r12
  int v67; // r1
  int v68; // r2
  int v69; // r3
  int *v70; // lr
  int v71; // r0
  int v72; // r1
  int v73; // r2
  int v74; // r3
  int v75; // r1
  int v76; // r2
  int v77; // r3
  gameswf::counted_buffer *v78; // r5
  const char *u32; // r8
  const char *v80; // r4
  int v81; // r5
  int i; // r7
  _BYTE *v83; // r0
  _BYTE *v84; // r6
  gameswf::as_object *v85; // r10
  int v86; // r0
  int v87; // r10
  bool v88; // zf
  int v89; // r3
  int v90; // r11
  int v91; // r6
  bool v92; // nf
  int v93; // r10
  void (__fastcall ***v94)(_DWORD); // r0
  int v95; // r3
  _DWORD *v96; // r1
  int v97; // r0
  int v98; // [sp+8h] [bp-FCh]
  int uint; // [sp+10h] [bp-F4h]
  int v101; // [sp+14h] [bp-F0h]
  int v102; // [sp+14h] [bp-F0h]
  int v103; // [sp+14h] [bp-F0h]
  gameswf::effect *v104; // [sp+18h] [bp-ECh]
  int v106; // [sp+28h] [bp-DCh]
  char v107; // [sp+28h] [bp-DCh]
  int v108; // [sp+2Ch] [bp-D8h]
  _BOOL4 v110; // [sp+34h] [bp-D0h]
  gameswf *v111; // [sp+34h] [bp-D0h]
  int v112; // [sp+38h] [bp-CCh]
  _BOOL4 v113; // [sp+3Ch] [bp-C8h]
  _BOOL4 v114; // [sp+40h] [bp-C4h]
  __int16 v115; // [sp+48h] [bp-BCh]
  char v116; // [sp+4Ch] [bp-B8h]
  int v117; // [sp+50h] [bp-B4h] BYREF
  int v118; // [sp+54h] [bp-B0h]
  int v119; // [sp+58h] [bp-ACh]
  int v120; // [sp+5Ch] [bp-A8h]
  int v121; // [sp+60h] [bp-A4h]
  int v122; // [sp+64h] [bp-A0h]
  int v123; // [sp+68h] [bp-9Ch]
  int v124; // [sp+6Ch] [bp-98h]
  int v125; // [sp+70h] [bp-94h] BYREF
  int v126; // [sp+74h] [bp-90h]
  int v127; // [sp+78h] [bp-8Ch]
  int v128; // [sp+7Ch] [bp-88h]
  int v129; // [sp+80h] [bp-84h]
  int v130; // [sp+84h] [bp-80h]
  int u8; // [sp+88h] [bp-7Ch] BYREF
  int v132; // [sp+8Ch] [bp-78h] BYREF
  int v133; // [sp+90h] [bp-74h]
  int v134; // [sp+94h] [bp-70h]
  char v135; // [sp+98h] [bp-6Ch]
  int v136; // [sp+9Ch] [bp-68h] BYREF
  int v137; // [sp+A0h] [bp-64h]
  int v138; // [sp+A4h] [bp-60h]
  char v139; // [sp+A8h] [bp-5Ch]
  gameswf::counted_buffer *v140[3]; // [sp+ACh] [bp-58h] BYREF
  int v141; // [sp+B8h] [bp-4Ch] BYREF
  int v142; // [sp+BCh] [bp-48h] BYREF
  char *v143; // [sp+C0h] [bp-44h] BYREF
  int v144; // [sp+C4h] [bp-40h] BYREF
  int v145; // [sp+C8h] [bp-3Ch] BYREF
  int v146; // [sp+CCh] [bp-38h] BYREF
  int v147; // [sp+D0h] [bp-34h] BYREF
  int v148; // [sp+D4h] [bp-30h] BYREF
  int v149; // [sp+D8h] [bp-2Ch] BYREF
  int v150; // [sp+DCh] [bp-28h] BYREF
  int v151; // [sp+E0h] [bp-24h] BYREF
  int v152; // [sp+E4h] [bp-20h] BYREF
  _BYTE v153[8]; // [sp+E8h] [bp-1Ch] BYREF
  void *p; // [sp+F4h] [bp-10h]
  unsigned int v155; // [sp+F8h] [bp-Ch]

  v127 = 0;
  v128 = 0;
  v130 = 0;
  v155 = v155 & 0xFF000000 | 0xFFFFFF;
  v123 = 1065353216;
  v124 = 0;
  HIBYTE(v155) &= ~1u;
  v126 = 0;
  v125 = 1065353216;
  v129 = 1065353216;
  v117 = 1065353216;
  v119 = 1065353216;
  v121 = 1065353216;
  v118 = 0;
  v120 = 0;
  v122 = 0;
  u8 = 0;
  v132 = 0;
  v133 = 0;
  v134 = 0;
  v135 = 0;
  v153[0] = 1;
  v153[1] = 0;
  v8 = a5;
  if ( a3 == (gameswf::stream *)byte_4 )
  {
    u16 = gameswf::stream::read_u16(a2);
    v10 = gameswf::stream::read_u16(a2);
    gameswf::matrix::read((gameswf::matrix *)&v125, a2);
    v152 = v10;
    index = gameswf::hash<int,gameswf::matrix *,gameswf::fixed_size_hash<int>>::find_index((int *)(a5 + 52), &v152);
    v12 = index < 0;
    if ( index < 0 )
      v6 = 0;
    else
      index = *(_DWORD *)(a5 + 52) + 16 * index;
    if ( !v12 )
      v6 = *(_DWORD *)(index + 20);
    v151 = v10;
    v13 = gameswf::hash<int,gameswf::cxform *,gameswf::fixed_size_hash<int>>::find_index((int *)(a5 + 48), &v151);
    if ( v13 < 0 )
      v8 = 0;
    else
      v14 = *(_DWORD *)(a5 + 48);
    if ( v13 >= 0 )
      v8 = *(_DWORD *)(v14 + 16 * v13 + 20);
    position = gameswf::stream::get_position(a2);
    if ( position < gameswf::stream::get_tag_end_position(a2) )
      gameswf::cxform::read_rgb((gameswf::cxform *)&v117, a2);
    v16 = (int)gameswf::malloc_internal(0x54u);
    *(_WORD *)(v16 + 16) = 0;
    *(_WORD *)(v16 + 14) = u16;
    *(_DWORD *)(v16 + 24) = v6;
    *(_DWORD *)v16 = off_98FE20;
    *(_BYTE *)(v16 + 6) = 28;
    *(_DWORD *)(v16 + 20) = v8;
    *(_BYTE *)(v16 + 5) = 0;
    *(_BYTE *)(v16 + 4) = 0;
    *(_BYTE *)(v16 + 7) = 0;
    *(_BYTE *)(v16 + 8) = 0;
    *(_BYTE *)(v16 + 9) = 0;
    *(_WORD *)(v16 + 10) = 0;
    *(_WORD *)(v16 + 18) = 4;
    *(_WORD *)(v16 + 12) = v10;
    v17 = v16;
    v18 = v126;
    v19 = v127;
    v20 = v128;
    *(_DWORD *)(v16 + 28) = v125;
    *(_DWORD *)(v16 + 32) = v18;
    *(_DWORD *)(v16 + 36) = v19;
    *(_DWORD *)(v16 + 40) = v20;
    v21 = v130;
    *(_DWORD *)(v16 + 44) = v129;
    *(_DWORD *)(v16 + 48) = v21;
    *(_BYTE *)(v16 + 5) = 52;
    v22 = v118;
    v23 = v119;
    v24 = v120;
    *(_DWORD *)(v16 + 52) = v117;
    *(_DWORD *)(v16 + 56) = v22;
    *(_DWORD *)(v16 + 60) = v23;
    *(_DWORD *)(v16 + 64) = v24;
    v25 = v122;
    v26 = v123;
    v27 = v124;
    *(_DWORD *)(v16 + 68) = v121;
    *(_DWORD *)(v16 + 72) = v25;
    *(_DWORD *)(v16 + 76) = v26;
    *(_DWORD *)(v16 + 80) = v27;
    v150 = v10;
    v28 = *(unsigned __int8 *)(v16 + 6);
    if ( *(_BYTE *)(v16 + 6) )
      v28 += v16;
    v149 = v28;
    gameswf::hash<int,gameswf::matrix *,gameswf::fixed_size_hash<int>>::set((int *)(a5 + 52), &v150, &v149);
    v148 = v10;
    v29 = *(unsigned __int8 *)(v17 + 5);
    if ( *(_BYTE *)(v17 + 5) )
      v29 += v17;
    v147 = v29;
    gameswf::hash<int,gameswf::cxform *,gameswf::fixed_size_hash<int>>::set((int *)(a5 + 48), &v148, &v147);
    goto LABEL_19;
  }
  v17 = a3 == (gameswf::stream *)((char *)&off_18 + 2) || a3 == (gameswf::stream *)((char *)&dword_44 + 2);
  if ( !v17 )
    goto LABEL_19;
  gameswf::stream::align(a2);
  v104 = (gameswf::effect *)(gameswf::stream::read_uint(a2, 1) != 0);
  uint = gameswf::stream::read_uint(a2, 1);
  v108 = gameswf::stream::read_uint(a2, 1);
  v98 = gameswf::stream::read_uint(a2, 1);
  v101 = gameswf::stream::read_uint(a2, 1);
  v31 = gameswf::stream::read_uint(a2, 1);
  v113 = gameswf::stream::read_uint(a2, 1) != 0;
  v32 = gameswf::stream::read_uint(a2, 1) != 0;
  if ( a3 != (gameswf::stream *)((char *)&dword_44 + 2) )
    v17 = 0;
  v114 = v32;
  if ( a3 == (gameswf::stream *)((char *)&dword_44 + 2) )
  {
    gameswf::stream::read_uint(a2, 3);
    gameswf::stream::read_uint(a2, 1);
    gameswf::stream::read_uint(a2, 1);
    gameswf::stream::read_uint(a2, 1);
    v110 = gameswf::stream::read_uint(a2, 1) != 0;
    v97 = gameswf::stream::read_uint(a2, 1);
    v17 = v97;
    if ( v97 )
      v17 = 1;
  }
  else
  {
    v110 = v17;
  }
  v33 = gameswf::stream::read_u16(a2);
  if ( v113 )
    v115 = gameswf::stream::read_u16(a2);
  else
    v115 = 0;
  if ( v31 )
  {
    gameswf::matrix::read((gameswf::matrix *)&v125, a2);
    v34 = 24;
    v112 = 0;
    v35 = 24;
  }
  else
  {
    v34 = 0;
    v112 = -1;
    v35 = 0;
  }
  if ( v101 )
  {
    v36 = v34 + 32;
    gameswf::cxform::read_rgba((gameswf::cxform *)&v117, a2);
    v34 += 32;
    v106 = v35;
  }
  else
  {
    v36 = v35;
    v106 = -1;
  }
  v37 = v98;
  if ( v98 )
    LOWORD(v98) = gameswf::stream::read_u16(a2);
  if ( v108 )
  {
    v38 = v34 + 4;
    gameswf::stream::read_string(a2, (gameswf::tu_string *)v153);
    v34 += 4;
  }
  else
  {
    v38 = v36;
    v36 = -1;
  }
  if ( uint )
    LOWORD(uint) = gameswf::stream::read_u16(a2);
  if ( v17 || v110 )
  {
    v102 = v38;
    v38 = v34 + 20;
  }
  else
  {
    v102 = -1;
  }
  if ( v104 )
  {
    v116 = v38;
    v38 += 16;
  }
  else
  {
    v37 = -1;
  }
  if ( !v104 )
    v116 = v37;
  if ( v17 )
    gameswf::read_filter_list(a2, (gameswf::stream *)&u8, v104);
  if ( v110 )
    u8 = gameswf::stream::read_u8(a2);
  v146 = v33;
  v39 = gameswf::hash<int,gameswf::matrix *,gameswf::fixed_size_hash<int>>::find_index((int *)(a5 + 52), &v146);
  v41 = v39 < 0;
  if ( v39 < 0 )
    v39 = 0;
  else
    v40 = *(_DWORD *)(a5 + 52);
  if ( v41 )
    v111 = (gameswf *)v39;
  else
    v111 = *(gameswf **)(v40 + 16 * v39 + 20);
  v145 = v33;
  v42 = gameswf::hash<int,gameswf::cxform *,gameswf::fixed_size_hash<int>>::find_index((int *)(a5 + 48), &v145);
  if ( v42 < 0 )
    v8 = 0;
  else
    v43 = *(_DWORD *)(a5 + 48) + 16 * v42;
  if ( v42 >= 0 )
    v8 = *(_DWORD *)(v43 + 20);
  v44 = gameswf::malloc_internal(v38 + 28);
  v44[9] = (_WORD)a3;
  *((_BYTE *)v44 + 9) = 0;
  *(_DWORD *)v44 = off_98FE20;
  v17 = (int)v44;
  v44[7] = v115;
  *((_DWORD *)v44 + 5) = v8;
  *((_DWORD *)v44 + 6) = v111;
  v44[8] = uint;
  *((_BYTE *)v44 + 4) = 0;
  *((_BYTE *)v44 + 5) = 0;
  v44[5] = v98;
  *((_BYTE *)v44 + 6) = 0;
  *((_BYTE *)v44 + 7) = 0;
  *((_BYTE *)v44 + 8) = 0;
  v44[6] = v33;
  if ( !v112 )
  {
    *((_BYTE *)v44 + 6) = 28;
    v45 = v126;
    v46 = v127;
    v47 = v128;
    *((_DWORD *)v44 + 7) = v125;
    *((_DWORD *)v44 + 8) = v45;
    *((_DWORD *)v44 + 9) = v46;
    *((_DWORD *)v44 + 10) = v47;
    v48 = v130;
    *((_DWORD *)v44 + 11) = v129;
    *((_DWORD *)v44 + 12) = v48;
    v144 = v33;
    if ( *((_BYTE *)v44 + 6) )
      v49 = (char *)v44 + *((unsigned __int8 *)v44 + 6);
    else
      v49 = nullptr;
    v143 = v49;
    gameswf::hash<int,gameswf::matrix *,gameswf::fixed_size_hash<int>>::set((int *)(a5 + 52), &v144, &v143);
  }
  if ( v106 != -1 )
  {
    v50 = (unsigned __int8)(v106 + 28);
    *(_BYTE *)(v17 + 5) = v50;
    v51 = (int *)(v17 + v50);
    v52 = v118;
    v53 = v119;
    v54 = v120;
    *v51 = v117;
    v51[1] = v52;
    v51[2] = v53;
    v51[3] = v54;
    v51 += 4;
    v55 = v122;
    v56 = v123;
    v57 = v124;
    *v51 = v121;
    v51[1] = v55;
    v51[2] = v56;
    v51[3] = v57;
    v142 = v33;
    v58 = *(unsigned __int8 *)(v17 + 5);
    if ( *(_BYTE *)(v17 + 5) )
      v58 += v17;
    v141 = v58;
    gameswf::hash<int,gameswf::cxform *,gameswf::fixed_size_hash<int>>::set((int *)(a5 + 48), &v142, &v141);
  }
  if ( v36 != -1 )
  {
    v59 = (unsigned __int8)(v36 + 28);
    *(_BYTE *)(v17 + 4) = v59;
    *(_DWORD *)(v17 + v59) = gameswf::permanent_string_cache::get(this + 11, (const gameswf::tu_string *)v153);
  }
  if ( v102 != -1 )
  {
    v60 = (unsigned __int8)(v102 + 28);
    v61 = v17 + v60;
    *(_BYTE *)(v17 + 7) = v60;
    *(_DWORD *)(v17 + v60) = 0;
    *(_BYTE *)(v61 + 16) = 0;
    *(_DWORD *)(v61 + 4) = 0;
    *(_DWORD *)(v61 + 8) = 0;
    *(_DWORD *)(v61 + 12) = 0;
    v62 = (_DWORD *)*(unsigned __int8 *)(v17 + 7);
    if ( *(_BYTE *)(v17 + 7) )
      v62 = (_DWORD *)((char *)v62 + v17);
    *v62 = u8;
    v63 = *(unsigned __int8 *)(v17 + 7);
    if ( *(_BYTE *)(v17 + 7) )
      v63 += v17;
    gameswf::array<gameswf::filter>::resize((_DWORD *)(v63 + 4), v133);
    if ( *(int *)(v63 + 8) > 0 )
    {
      v64 = 0;
      v65 = 0;
      do
      {
        ++v65;
        v66 = (int *)(*(_DWORD *)(v63 + 4) + v64);
        v67 = *(_DWORD *)(v132 + v64 + 4);
        v68 = *(_DWORD *)(v132 + v64 + 8);
        v69 = *(_DWORD *)(v132 + v64 + 12);
        v70 = (int *)(v132 + v64 + 16);
        *v66 = *(_DWORD *)(v132 + v64);
        v66[1] = v67;
        v66[2] = v68;
        v66[3] = v69;
        v66 += 4;
        v71 = *v70;
        v72 = v70[1];
        v73 = v70[2];
        v74 = v70[3];
        v70 += 4;
        *v66 = v71;
        v66[1] = v72;
        v66[2] = v73;
        v66[3] = v74;
        v66 += 4;
        v75 = v70[1];
        v76 = v70[2];
        *v66 = *v70;
        v66[1] = v75;
        v66[2] = v76;
        v64 += 44;
      }
      while ( v65 < *(_DWORD *)(v63 + 8) );
    }
  }
  if ( v104 )
  {
    v77 = (unsigned __int8)(v116 + 28);
    *(_BYTE *)(v17 + 8) = v77;
    if ( v116 != -28 )
      v77 += v17;
    *(_BYTE *)(v77 + 12) = 0;
    *(_DWORD *)v77 = 0;
    *(_DWORD *)(v77 + 4) = 0;
    *(_DWORD *)(v77 + 8) = 0;
    gameswf::stream::read_u16(a2);
    if ( a4 > 5 )
      gameswf::stream::read_u32(a2);
    else
      gameswf::stream::read_u16(a2);
    v103 = v17;
LABEL_95:
    gameswf::stream::align(a2);
    v78 = (gameswf::counted_buffer *)gameswf::stream::get_position(a2);
    if ( a4 <= 5 )
      goto LABEL_125;
LABEL_96:
    u32 = (const char *)gameswf::stream::read_u32(a2);
LABEL_97:
    if ( u32 )
    {
      v80 = (const char *)gameswf::stream::read_u32(a2);
      if ( ((unsigned int)u32 & 0x20000) != 0 )
      {
        --v80;
        v107 = gameswf::stream::read_u8(a2);
      }
      else
      {
        v107 = 0;
      }
      gameswf::action_buffer::action_buffer((gameswf::action_buffer *)v140);
      gameswf::action_buffer::read((gameswf::action_buffer *)v140, a2);
      v140[2] = v78;
      if ( v80 == *(const char **)v140[0] )
      {
        if ( (`guard variable for'gameswf::place_object_2::read(gameswf::player *,gameswf::stream *,int,int,gameswf::movie_definition_sub *)::s_code_bits
            & 1) == 0
          && _cxa_guard_acquire(&`guard variable for'gameswf::place_object_2::read(gameswf::player *,gameswf::stream *,int,int,gameswf::movie_definition_sub *)::s_code_bits) )
        {
          gameswf::place_object_2::read(gameswf::player *,gameswf::stream *,int,int,gameswf::movie_definition_sub *)::s_code_bits[0] = 10;
          byte_9FC4EC = 12;
          byte_9FC4F4 = 11;
          byte_9FC4FC = 15;
          byte_9FC504 = 13;
          byte_9FC50C = 14;
          byte_9FC514 = 16;
          byte_9FC524 = 18;
          byte_9FC4E5 = 0;
          word_9FC4E6 = 0;
          dword_9FC4E8 = 0;
          byte_9FC4ED = 0;
          word_9FC4EE = 0;
          dword_9FC4F0 = 0;
          byte_9FC4F5 = 0;
          word_9FC4F6 = 0;
          dword_9FC4F8 = 0;
          byte_9FC4FD = 0;
          word_9FC4FE = 0;
          dword_9FC500 = 0;
          byte_9FC505 = 0;
          word_9FC506 = 0;
          dword_9FC508 = 0;
          byte_9FC50D = 0;
          word_9FC50E = 0;
          dword_9FC510 = 0;
          byte_9FC515 = 0;
          word_9FC516 = 0;
          dword_9FC518 = 0;
          byte_9FC51C = 17;
          byte_9FC51D = 0;
          word_9FC51E = 0;
          dword_9FC520 = 0;
          byte_9FC52C = 9;
          byte_9FC534 = 1;
          byte_9FC53C = 2;
          byte_9FC544 = 3;
          byte_9FC54C = 4;
          byte_9FC554 = 5;
          byte_9FC55C = 6;
          byte_9FC525 = 0;
          byte_9FC564 = 7;
          word_9FC526 = 0;
          dword_9FC528 = 0;
          byte_9FC52D = 0;
          word_9FC52E = 0;
          dword_9FC530 = 0;
          byte_9FC535 = 0;
          word_9FC536 = 0;
          dword_9FC538 = 0;
          byte_9FC53D = 0;
          word_9FC53E = 0;
          dword_9FC540 = 0;
          byte_9FC545 = 0;
          word_9FC546 = 0;
          dword_9FC548 = 0;
          byte_9FC54D = 0;
          word_9FC54E = 0;
          dword_9FC550 = 0;
          byte_9FC555 = 0;
          word_9FC556 = 0;
          dword_9FC558 = 0;
          byte_9FC55D = 0;
          word_9FC55E = 0;
          dword_9FC560 = 0;
          byte_9FC565 = 0;
          word_9FC566 = 0;
          byte_9FC56D = 17;
          dword_9FC568 = 0;
          byte_9FC56C = 8;
          byte_9FC574 = 19;
          byte_9FC575 = 0;
          dword_9FC578 = 0;
          word_9FC56E = 0;
          dword_9FC570 = 0;
          word_9FC576 = 0;
          _cxa_guard_release(&`guard variable for'gameswf::place_object_2::read(gameswf::player *,gameswf::stream *,int,int,gameswf::movie_definition_sub *)::s_code_bits);
        }
        if ( (unsigned int)u32 > 0x80000 )
          gameswf::log_error((gameswf *)"swf_event::read() -- unknown event type received, flags = 0x%x\n", u32);
        v81 = 0;
        for ( i = 1; ; i *= 2 )
        {
          if ( (i & (unsigned int)u32) == 0 )
          {
            if ( ++v81 == 19 )
              goto LABEL_123;
            continue;
          }
          v83 = operator new(0x14u, 0);
          *v83 = 0;
          v83[1] = 0;
          v84 = v83;
          *((_WORD *)v83 + 1) = 0;
          *((_DWORD *)v83 + 1) = 0;
          v83[8] = 0;
          v83[9] = 0;
          *(_DWORD *)v83 = *(_DWORD *)&gameswf::place_object_2::read(gameswf::player *,gameswf::stream *,int,int,gameswf::movie_definition_sub *)::s_code_bits[8 * v81];
          *((_DWORD *)v83 + 1) = *(_DWORD *)&gameswf::place_object_2::read(gameswf::player *,gameswf::stream *,int,int,gameswf::movie_definition_sub *)::s_code_bits[8 * v81 + 4];
          if ( v81 == 17 )
            v83[1] = v107;
          v136 = 0;
          v137 = 0;
          v138 = 0;
          v139 = 0;
          v85 = (gameswf::as_object *)operator new(0x7Cu, 0);
          gameswf::as_s_function::as_s_function(v85, this, v140, 0, &v136);
          *((_DWORD *)v85 + 23) = *(_DWORD *)v140[0];
          v86 = gameswf::as_value::set_as_object((gameswf::as_value *)(v84 + 8), v85);
          v87 = *(unsigned __int8 *)(v103 + 8);
          v88 = v87 == 0;
          if ( *(_BYTE *)(v103 + 8) )
            v86 = v103;
          else
            v87 = 0;
          if ( !v88 )
            v87 += v86;
          v89 = *(_DWORD *)(v87 + 4);
          v90 = v89 + 1;
          if ( v89 + 1 > *(_DWORD *)(v87 + 8) )
          {
            gameswf::array<gameswf::swf_event *>::reserve(v87, v90 + (v90 >> 1));
            *(_DWORD *)(*(_DWORD *)v87 + 4 * *(_DWORD *)(v87 + 4)) = v84;
            *(_DWORD *)(v87 + 4) = v90;
            v91 = v137;
            v92 = v137 < 0;
            if ( v137 > 0 )
            {
LABEL_118:
              v93 = 0;
              do
              {
                v94 = *(void (__fastcall ****)(_DWORD))(v136 + 8 * v93);
                if ( v94 )
                  gameswf::ref_counted::drop_ref(v94);
                ++v93;
              }
              while ( v93 != v91 );
              goto LABEL_122;
            }
          }
          else
          {
            *(_DWORD *)(*(_DWORD *)v87 + 4 * v89) = v84;
            *(_DWORD *)(v87 + 4) = v90;
            v91 = v137;
            v92 = v137 < 0;
            if ( v137 > 0 )
              goto LABEL_118;
          }
          if ( v92 )
          {
            v95 = 8 * v91;
            do
            {
              ++v91;
              v96 = (_DWORD *)(v136 + v95);
              *v96 = 0;
              v96[1] = 0;
              v95 += 8;
            }
            while ( v91 );
          }
LABEL_122:
          v137 = 0;
          gameswf::array<gameswf::with_stack_entry>::reserve((int)&v136, 0);
          if ( ++v81 == 19 )
          {
LABEL_123:
            if ( !v140[0] )
              goto LABEL_95;
            gameswf::counted_buffer::drop_ref(v140[0]);
            gameswf::stream::align(a2);
            v78 = (gameswf::counted_buffer *)gameswf::stream::get_position(a2);
            if ( a4 > 5 )
              goto LABEL_96;
LABEL_125:
            u32 = (const char *)gameswf::stream::read_u16(a2);
            goto LABEL_97;
          }
        }
      }
      v17 = v103;
      gameswf::log_error((gameswf *)"swf_event::read(), event_length = %d, but read %d\n", v80);
      if ( v140[0] )
        gameswf::counted_buffer::drop_ref(v140[0]);
    }
    else
    {
      v17 = v103;
    }
  }
  if ( v113 )
  {
    if ( v114 )
      *(_BYTE *)(v17 + 9) = 2;
    else
      *(_BYTE *)(v17 + 9) = 0;
  }
  else if ( v114 )
  {
    *(_BYTE *)(v17 + 9) = 1;
  }
LABEL_19:
  if ( v153[0] == -1 )
    gameswf::free_internal(p);
  gameswf::array<gameswf::filter>::resize(&v132, 0);
  gameswf::array<gameswf::filter>::reserve((int)&v132, 0);
  return v17;
}


// ===== 75d89c gameswf::array<gameswf::swf_event *>::release_buffer(void) =====
void __fastcall gameswf::array<gameswf::swf_event *>::release_buffer(_DWORD *a1)
{
  int v1; // r3
  int v2; // r2

  v1 = a1[1];
  if ( v1 < 0 )
  {
    v2 = 4 * v1;
    do
    {
      ++v1;
      *(_DWORD *)(*a1 + v2) = 0;
      v2 += 4;
    }
    while ( v1 );
  }
  a1[1] = 0;
  gameswf::array<gameswf::swf_event *>::reserve((int)a1, 0);
}


// ===== 75d8d8 gameswf::place_object_2::execute(gameswf::character *) =====
void __fastcall gameswf::place_object_2::execute(gameswf::place_object_2 *this, gameswf::character *a2)
{
  int v2; // r3
  int v5; // r2
  void (__fastcall *v6)(_DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD); // r12
  int v7; // r10
  char *v8; // r7
  int v9; // r10
  int v10; // r8
  int v11; // r3
  float v12; // r0
  int v13; // r8
  int v14; // r7
  int v15; // r9
  int v16; // r10
  unsigned int v17; // r0
  float v18; // r0
  int v19; // r8
  void (__fastcall *v20)(gameswf::character *, int, char *, _DWORD, int, int, int, _DWORD, _DWORD); // r12
  char *v21; // r7
  int v22; // r11
  int v23; // r9
  int v24; // r10
  unsigned int v25; // r0
  char *v26; // r7
  float v27; // r0
  _DWORD *v28; // r10
  int v29; // r8
  int v30; // r9
  int v31; // r3
  void (__fastcall *v32)(_DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD); // [sp+24h] [bp-20h]
  int v33; // [sp+28h] [bp-1Ch]
  int v34; // [sp+30h] [bp-14h] BYREF
  int v35; // [sp+34h] [bp-10h]
  int v36; // [sp+38h] [bp-Ch]
  char v37; // [sp+3Ch] [bp-8h]

  v2 = *((unsigned __int8 *)this + 9);
  if ( v2 != 1 )
  {
    if ( *((_BYTE *)this + 9) )
    {
      if ( v2 == 2 )
      {
        v19 = *((unsigned __int16 *)this + 7);
        v20 = *(void (__fastcall **)(gameswf::character *, int, char *, _DWORD, int, int, int, _DWORD, _DWORD))(*(_DWORD *)a2 + 188);
        if ( !*((_BYTE *)this + 4) || (v21 = *(char **)((char *)this + *((unsigned __int8 *)this + 4))) == nullptr )
          v21 = &gameswf::s_empty_name;
        v22 = *((unsigned __int8 *)this + 5);
        v23 = *((unsigned __int8 *)this + 6);
        v24 = *((unsigned __int8 *)this + 7);
        v25 = *((unsigned __int16 *)this + 5);
        if ( *v21 == -1 )
          v26 = *((char **)v21 + 3);
        else
          v26 = v21 + 1;
        if ( *((_BYTE *)this + 5) )
          v22 += (int)this;
        if ( *((_BYTE *)this + 6) )
          v23 += (int)this;
        if ( *((_BYTE *)this + 7) )
          v24 += (int)this;
        if ( *((_WORD *)this + 5) )
        {
          v27 = (float)v25 / 65535.0;
          v20 = *(void (__fastcall **)(gameswf::character *, int, char *, _DWORD, int, int, int, _DWORD, _DWORD))(*(_DWORD *)a2 + 188);
        }
        else
        {
          v27 = 0.0;
        }
        v20(a2, v19, v26, *((unsigned __int16 *)this + 6), v22, v23, v24, LODWORD(v27), *((unsigned __int16 *)this + 8));
      }
      return;
    }
    v5 = *((unsigned __int16 *)this + 7);
    v6 = *(void (__fastcall **)(_DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD))(*(_DWORD *)a2 + 180);
    if ( *((_BYTE *)this + 4) && (v8 = *(char **)((char *)this + *((unsigned __int8 *)this + 4))) != nullptr )
    {
      v7 = *((unsigned __int8 *)this + 8);
      if ( *((_BYTE *)this + 8) )
      {
LABEL_45:
        v28 = (_DWORD *)((char *)this + v7);
        v29 = v28[1];
        v30 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        if ( v29 > 0 )
        {
          v33 = v5;
          v32 = v6;
          gameswf::array<gameswf::swf_event *>::reserve((int)&v34, v29 + (v29 >> 1));
          v6 = v32;
          v5 = v33;
          v31 = 0;
          do
            *(_DWORD *)(v34 + 4 * v30++) = 0;
          while ( v30 != v29 );
          v35 = v30;
          do
          {
            *(_DWORD *)(v34 + 4 * v31) = *(_DWORD *)(*v28 + 4 * v31);
            ++v31;
          }
          while ( v31 < v35 );
        }
        else
        {
          v35 = v29;
        }
        goto LABEL_8;
      }
    }
    else
    {
      v7 = *((unsigned __int8 *)this + 8);
      v8 = &gameswf::s_empty_name;
      if ( *((_BYTE *)this + 8) )
        goto LABEL_45;
    }
    v37 = v7;
    v34 = v7;
    v35 = v7;
    v36 = v7;
LABEL_8:
    v9 = *((unsigned __int8 *)this + 5);
    v10 = *((unsigned __int8 *)this + 6);
    v11 = *((unsigned __int8 *)this + 7);
    if ( *((_BYTE *)this + 5) )
      v9 += (int)this;
    if ( *((_BYTE *)this + 6) )
      v10 += (int)this;
    if ( *((_BYTE *)this + 7) )
      v11 += (int)this;
    if ( *((_WORD *)this + 5) )
      v12 = (float)*((unsigned __int16 *)this + 5) / 65535.0;
    else
      v12 = 0.0;
    v6(
      a2,
      v5,
      v8,
      &v34,
      *((unsigned __int16 *)this + 6),
      *((unsigned __int16 *)this + 9) != 4,
      v9,
      v10,
      v11,
      LODWORD(v12),
      *((unsigned __int16 *)this + 8));
    gameswf::array<gameswf::swf_event *>::release_buffer(&v34);
    return;
  }
  v13 = *((unsigned __int8 *)this + 5);
  v14 = *((unsigned __int8 *)this + 6);
  v15 = *((unsigned __int8 *)this + 7);
  if ( *((_BYTE *)this + 5) )
    v13 += (int)this;
  if ( *((_BYTE *)this + 6) )
    v14 += (int)this;
  if ( *((_BYTE *)this + 7) )
    v15 += (int)this;
  v16 = *((unsigned __int16 *)this + 6);
  v17 = *((unsigned __int16 *)this + 5);
  if ( v17 )
    v18 = (float)v17 / 65535.0;
  else
    v18 = 0.0;
  (*(void (__fastcall **)(gameswf::character *, int, int, int, int, float, _DWORD))(*(_DWORD *)a2 + 184))(
    a2,
    v16,
    v13,
    v14,
    v15,
    COERCE_FLOAT(LODWORD(v18)),
    *((unsigned __int16 *)this + 8));
}


// ===== 75dbe4 gameswf::ref_counted::detach_weak_proxy(void) =====
void __fastcall gameswf::ref_counted::detach_weak_proxy(gameswf::ref_counted *this)
{
  int v1; // r3
  int *v3; // r0
  int v4; // r1

  v1 = *((_DWORD *)this + 2);
  if ( v1 )
  {
    *(_BYTE *)(v1 + 4) = 0;
    v3 = *((int **)this + 2);
    v4 = *v3 - 1;
    *v3 = v4;
    if ( !v4 )
      gameswf::free_internal(v3);
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 75dc28 gameswf::ref_counted::~ref_counted() =====
void __fastcall gameswf::ref_counted::~ref_counted(gameswf::ref_counted *this)
{
  int v1; // r1
  int *v2; // r0
  int v3; // r1

  v1 = *((_DWORD *)this + 2);
  *(_DWORD *)this = off_98FE90;
  if ( v1 )
  {
    *(_BYTE *)(v1 + 4) = 0;
    v2 = *((int **)this + 2);
    v3 = *v2 - 1;
    *v2 = v3;
    if ( !v3 )
      gameswf::free_internal(v2);
  }
}


// ===== 75dc88 gameswf::ref_counted::~ref_counted() =====
void __fastcall gameswf::ref_counted::~ref_counted(gameswf::ref_counted *this)
{
  gameswf::ref_counted::~ref_counted(this);
  LC_API_FREE_0(this);
}


// ===== 75dca4 gameswf::ref_counted::~ref_counted() =====
void __fastcall gameswf::ref_counted::~ref_counted(gameswf::ref_counted *this)
{
  int v1; // r1
  int *v2; // r0
  int v3; // r1

  v1 = *((_DWORD *)this + 2);
  *(_DWORD *)this = off_98FE90;
  if ( v1 )
  {
    *(_BYTE *)(v1 + 4) = 0;
    v2 = *((int **)this + 2);
    v3 = *v2 - 1;
    *v2 = v3;
    if ( !v3 )
      gameswf::free_internal(v2);
  }
}


// ===== 75dd04 gameswf::as_object_interface::~as_object_interface() =====
void __fastcall gameswf::as_object_interface::~as_object_interface(gameswf::as_object_interface *this)
{
  *(_DWORD *)this = off_98FB70;
  gameswf::ref_counted::~ref_counted(this);
}


// ===== 75dd38 gameswf::as_object_interface::~as_object_interface() =====
void __fastcall gameswf::as_object_interface::~as_object_interface(gameswf::as_object_interface *this)
{
  *(_DWORD *)this = off_98FB70;
  gameswf::ref_counted::~ref_counted(this);
  LC_API_FREE_0(this);
}


// ===== 75dd74 gameswf::character::~character() =====
void __fastcall gameswf::character::~character(gameswf::character *this)
{
  int v2; // r0
  _DWORD *v3; // r0

  v2 = *((_DWORD *)this + 21);
  *(_DWORD *)this = off_98F9F0;
  if ( v2 )
    gameswf::destruct<gameswf::character::custom>(v2);
  v3 = *((_DWORD **)this + 15);
  if ( v3 )
  {
    if ( (*v3)-- == 1 )
      gameswf::free_internal(v3);
  }
  gameswf::as_object::~as_object(this);
}


// ===== 75dde0 gameswf::generic_character::~generic_character() =====
void __fastcall gameswf::generic_character::~generic_character(gameswf::generic_character *this)
{
  void (__fastcall ***v2)(_DWORD); // r0

  v2 = *((void (__fastcall ****)(_DWORD))this + 40);
  *(_DWORD *)this = off_98FCA0;
  if ( v2 )
    gameswf::ref_counted::drop_ref(v2);
  gameswf::character::~character(this);
}


// ===== 75de28 gameswf::generic_character::~generic_character() =====
void __fastcall gameswf::generic_character::~generic_character(gameswf::generic_character *this)
{
  void (__fastcall ***v2)(_DWORD); // r0

  v2 = *((void (__fastcall ****)(_DWORD))this + 40);
  *(_DWORD *)this = off_98FCA0;
  if ( v2 )
    gameswf::ref_counted::drop_ref(v2);
  gameswf::character::~character(this);
  LC_API_FREE_0(this);
}


// ===== 75de78 gameswf::character_def::~character_def() =====
void __fastcall gameswf::character_def::~character_def(gameswf::character_def *this)
{
  _DWORD *v2; // r0
  bool v3; // zf
  _DWORD *v4; // r0

  v2 = *((_DWORD **)this + 6);
  *(_DWORD *)this = off_98FE58;
  if ( v2 )
  {
    v3 = (*v2)-- == 1;
    if ( v3 )
      gameswf::free_internal(v2);
  }
  v4 = *((_DWORD **)this + 4);
  if ( v4 )
  {
    v3 = (*v4)-- == 1;
    if ( v3 )
      gameswf::free_internal(v4);
  }
  *(_DWORD *)this = off_98FB70;
  gameswf::ref_counted::~ref_counted(this);
}


// ===== 75df0c gameswf::bitmap_character_def::~bitmap_character_def() =====
void __fastcall gameswf::bitmap_character_def::~bitmap_character_def(gameswf::bitmap_character_def *this)
{
  *(_DWORD *)this = off_98FC30;
  gameswf::character_def::~character_def(this);
}


// ===== 75df40 gameswf::bitmap_character::~bitmap_character() =====
void __fastcall gameswf::bitmap_character::~bitmap_character(gameswf::bitmap_character *this)
{
  void (__fastcall ***v2)(_DWORD); // r0

  v2 = *((void (__fastcall ****)(_DWORD))this + 8);
  *(_DWORD *)this = off_98FBF8;
  if ( v2 )
    gameswf::ref_counted::drop_ref(v2);
  *(_DWORD *)this = off_98FC30;
  gameswf::character_def::~character_def(this);
}


// ===== 75df9c gameswf::bitmap_character_def::~bitmap_character_def() =====
void __fastcall gameswf::bitmap_character_def::~bitmap_character_def(gameswf::bitmap_character_def *this)
{
  *(_DWORD *)this = off_98FC30;
  gameswf::character_def::~character_def(this);
  LC_API_FREE_0(this);
}


// ===== 75dfd8 gameswf::bitmap_character::~bitmap_character() =====
void __fastcall gameswf::bitmap_character::~bitmap_character(gameswf::bitmap_character *this)
{
  void (__fastcall ***v2)(_DWORD); // r0

  v2 = *((void (__fastcall ****)(_DWORD))this + 8);
  *(_DWORD *)this = off_98FBF8;
  if ( v2 )
    gameswf::ref_counted::drop_ref(v2);
  *(_DWORD *)this = off_98FC30;
  gameswf::character_def::~character_def(this);
  LC_API_FREE_0(this);
}


// ===== 75e03c gameswf::as_environment::~as_environment() =====
void __fastcall gameswf::as_environment::~as_environment(gameswf::as_environment *this)
{
  _DWORD *v2; // r0
  int v4; // r4
  int *v5; // r7
  int v6; // r5
  int v7; // r9
  int v8; // r10
  int v9; // r6
  void (__fastcall ***v10)(_DWORD); // r0
  gameswf::as_value *v11; // r4
  int v12; // r2
  int v13; // r3
  int v14; // r3
  int v15; // r1
  unsigned int v16; // r1

  v2 = *((_DWORD **)this + 25);
  if ( v2 )
  {
    if ( (*v2)-- == 1 )
      gameswf::free_internal(v2);
  }
  v4 = *((_DWORD *)this + 22);
  v5 = (int *)((char *)this + 84);
  if ( v4 <= 0 )
  {
    if ( v4 < 0 )
    {
      v12 = 32 * v4;
      do
      {
        v13 = *v5;
        ++v4;
        *(_BYTE *)(v13 + v12) = 1;
        v14 = v13 + v12;
        v15 = *(_DWORD *)(v14 + 16);
        *(_BYTE *)(v14 + 21) = 0;
        *(_BYTE *)(v14 + 1) = 0;
        v16 = v15 & 0xFF000000 | 0xFFFFFF;
        *(_DWORD *)(v14 + 16) = v16;
        *(_BYTE *)(v14 + 20) = 0;
        *(_BYTE *)(v14 + 19) = HIBYTE(v16) & 0xFE;
        v12 += 32;
      }
      while ( v4 );
    }
  }
  else
  {
    v6 = 0;
    do
    {
      while ( 1 )
      {
        v7 = *v5;
        v8 = 32 * v6++;
        v9 = *v5 + v8;
        gameswf::as_value::drop_refs((gameswf::as_value *)(v9 + 20));
        if ( *(char *)(v7 + v8) == -1 )
          break;
        if ( v6 == v4 )
          goto LABEL_10;
      }
      gameswf::free_internal(*(void **)(v9 + 12));
    }
    while ( v6 != v4 );
  }
LABEL_10:
  *((_DWORD *)this + 22) = 0;
  gameswf::array<gameswf::as_environment::frame_slot>::reserve((int)this + 84, 0);
  v10 = *((void (__fastcall ****)(_DWORD))this + 20);
  if ( v10 )
    gameswf::ref_counted::drop_ref(v10);
  v11 = (gameswf::as_environment *)((char *)this + 64);
  gameswf::array<gameswf::as_value>::resize((int)this + 64);
  gameswf::array<gameswf::as_value>::reserve((int)this + 64, 0);
  do
  {
    v11 = (gameswf::as_value *)((char *)v11 - 12);
    gameswf::as_value::drop_refs(v11);
  }
  while ( v11 != (gameswf::as_environment *)((char *)this + 16) );
  gameswf::array<gameswf::as_value>::resize((int)this);
  gameswf::array<gameswf::as_value>::reserve((int)this, 0);
}


// ===== 75e180 gameswf::character_def::~character_def() =====
void __fastcall gameswf::character_def::~character_def(gameswf::character_def *this)
{
  _DWORD *v2; // r0
  bool v3; // zf
  _DWORD *v4; // r0

  v2 = *((_DWORD **)this + 6);
  *(_DWORD *)this = off_98FE58;
  if ( v2 )
  {
    v3 = (*v2)-- == 1;
    if ( v3 )
      gameswf::free_internal(v2);
  }
  v4 = *((_DWORD **)this + 4);
  if ( v4 )
  {
    v3 = (*v4)-- == 1;
    if ( v3 )
      gameswf::free_internal(v4);
  }
  *(_DWORD *)this = off_98FB70;
  gameswf::ref_counted::~ref_counted(this);
}


// ===== 75e214 gameswf::character_def::~character_def() =====
void __fastcall gameswf::character_def::~character_def(gameswf::character_def *this)
{
  gameswf::character_def::~character_def(this);
  LC_API_FREE_0(this);
}


// ===== 75e230 gameswf::place_object_2::~place_object_2() =====
void __fastcall gameswf::place_object_2::~place_object_2(gameswf::place_object_2 *this)
{
  int v1; // r1
  int v3; // r4
  _DWORD *v4; // r4
  _DWORD *v5; // r6
  int v6; // r4
  int v7; // r5
  int v8; // r8
  int v9; // r3

  v1 = *((unsigned __int8 *)this + 7);
  *(_DWORD *)this = off_98FE20;
  if ( v1 )
  {
    gameswf::array<gameswf::filter>::resize((gameswf::place_object_2 *)((char *)this + v1 + 4), 0);
    v3 = *((unsigned __int8 *)this + 7);
    if ( *((_BYTE *)this + 7) )
      v3 += (int)this;
    v4 = (_DWORD *)(v3 + 4);
    gameswf::array<gameswf::filter>::resize(v4, 0);
    gameswf::array<gameswf::filter>::reserve((int)v4, 0);
  }
  if ( *((_BYTE *)this + 8) )
  {
    v5 = (_DWORD *)((char *)this + *((unsigned __int8 *)this + 8));
    v6 = v5[1];
    if ( v6 <= 0 )
      goto LABEL_14;
    v7 = 0;
    do
    {
      v8 = *(_DWORD *)(*v5 + 4 * v7++);
      if ( v8 )
      {
        gameswf::as_value::drop_refs((gameswf::as_value *)(v8 + 8));
        gameswf::free_internal((void *)v8);
      }
    }
    while ( v7 != v6 );
    v6 = v5[1];
    if ( v6 <= 0 )
    {
LABEL_14:
      if ( v6 < 0 )
      {
        v9 = 4 * v6;
        do
        {
          ++v6;
          *(_DWORD *)(*v5 + v9) = 0;
          v9 += 4;
        }
        while ( v6 );
      }
    }
    v5[1] = 0;
    gameswf::array<gameswf::swf_event *>::reserve((int)v5, 0);
  }
}


// ===== 75e338 gameswf::place_object_2::~place_object_2() =====
void __fastcall gameswf::place_object_2::~place_object_2(gameswf::place_object_2 *this)
{
  gameswf::place_object_2::~place_object_2(this);
  LC_API_FREE_0(this);
}


// ===== 75e354 gameswf::character_def::get_player(void) =====
int __fastcall gameswf::character_def::get_player(gameswf::character_def *this)
{
  int result; // r0
  _BYTE *v3; // r3

  result = *((_DWORD *)this + 7);
  if ( result )
  {
    v3 = *((_BYTE **)this + 6);
    if ( !v3[4] )
    {
      if ( (*(_DWORD *)v3)-- == 1 )
        gameswf::free_internal(v3);
      *((_DWORD *)this + 7) = 0;
      *((_DWORD *)this + 6) = 0;
      return 0;
    }
  }
  return result;
}


// ===== 75e3a8 gameswf::character::do_mouse_drag(void) =====
int __fastcall gameswf::character::do_mouse_drag(gameswf::character *this)
{
  int result; // r0
  gameswf::character *v3; // r5
  int v4; // r0
  gameswf::character *v5; // r10
  int v6; // r3
  gameswf::scene_node *v7; // r0
  int v8; // r3
  _BYTE *v9; // r0
  char *world_matrix; // r0
  int v12; // r1
  int v13; // r2
  int v14; // r3
  int v15; // r1
  int *v16; // r12
  int v17; // r0
  int v18; // r1
  float v19; // r2
  int v20; // r3
  float v21; // r1
  float v22; // r7
  float v23; // r6
  gameswf::character *v24; // r0
  int v25; // r3
  char *v26; // r0
  int v27; // r1
  int v28; // r2
  int v29; // r3
  int v30; // r1
  int *v31; // r12
  int v32; // r0
  int v33; // r1
  float v34; // r2
  int v35; // r3
  float v36; // r6
  float v37; // r1
  float v38; // r7
  gameswf::character *v39; // [sp+4h] [bp-90h] BYREF
  char v40; // [sp+8h] [bp-8Ch]
  char v41; // [sp+9h] [bp-8Bh]
  char v42; // [sp+Ah] [bp-8Ah]
  float v43; // [sp+Ch] [bp-88h]
  float v44; // [sp+10h] [bp-84h]
  float v45; // [sp+14h] [bp-80h]
  float v46; // [sp+18h] [bp-7Ch]
  float v47; // [sp+1Ch] [bp-78h]
  float v48; // [sp+20h] [bp-74h]
  int v49; // [sp+24h] [bp-70h] BYREF
  int v50; // [sp+28h] [bp-6Ch]
  float v51; // [sp+2Ch] [bp-68h]
  int v52; // [sp+30h] [bp-64h]
  int v53; // [sp+34h] [bp-60h]
  float v54; // [sp+38h] [bp-5Ch]
  int v55; // [sp+3Ch] [bp-58h] BYREF
  int v56; // [sp+40h] [bp-54h]
  int v57; // [sp+44h] [bp-50h]
  int v58; // [sp+48h] [bp-4Ch]
  int v59; // [sp+4Ch] [bp-48h]
  int v60; // [sp+50h] [bp-44h]
  _DWORD v61[6]; // [sp+54h] [bp-40h] BYREF
  float v62; // [sp+6Ch] [bp-28h] BYREF
  float v63; // [sp+70h] [bp-24h]
  _DWORD v64[2]; // [sp+74h] [bp-20h] BYREF
  float v65; // [sp+7Ch] [bp-18h] BYREF
  float v66; // [sp+80h] [bp-14h]
  char v67[4]; // [sp+84h] [bp-10h] BYREF
  int v68; // [sp+88h] [bp-Ch] BYREF
  int v69[2]; // [sp+8Ch] [bp-8h] BYREF

  v46 = 1.0;
  v45 = 1.0;
  v42 = 0;
  v48 = 0.0;
  v39 = nullptr;
  v40 = 0;
  v41 = 0;
  v43 = 0.0;
  v44 = 0.0;
  v47 = 0.0;
  result = (*(int (__fastcall **)(gameswf::character *, gameswf::character **))(*(_DWORD *)this + 220))(this, &v39);
  v3 = v39;
  if ( v39 == this )
  {
    *((_BYTE *)v39 + 157) = 1;
    v4 = (*(int (__fastcall **)(gameswf::character *))(*(_DWORD *)v3 + 308))(v3);
    v5 = v3;
    (*(void (__fastcall **)(int, int *, int *, char *))(*(_DWORD *)v4 + 112))(v4, v69, &v68, v67);
    v6 = *((_DWORD *)v3 + 21);
    if ( !v6 )
      goto LABEL_4;
LABEL_3:
    v7 = *(gameswf::scene_node **)(v6 + 104);
    if ( v7 )
    {
      gameswf::scene_node::get_world_mouse(v7, v69, &v68);
    }
    else
    {
LABEL_4:
      while ( 1 )
      {
        v8 = *((_DWORD *)v5 + 16);
        if ( !v8 )
          break;
        v9 = *((_BYTE **)v5 + 15);
        if ( !v9[4] )
        {
          if ( (*(_DWORD *)v9)-- == 1 )
            gameswf::free_internal(v9);
          *((_DWORD *)v5 + 16) = 0;
          *((_DWORD *)v5 + 15) = 0;
          break;
        }
        v5 = *((gameswf::character **)v5 + 16);
        v6 = *(_DWORD *)(v8 + 84);
        if ( v6 )
          goto LABEL_3;
      }
    }
    v65 = (float)v69[0] * 20.0;
    v66 = (float)v68 * 20.0;
    world_matrix = gameswf::character::get_world_matrix(v3);
    v12 = *((_DWORD *)world_matrix + 1);
    v13 = *((_DWORD *)world_matrix + 2);
    v14 = *((_DWORD *)world_matrix + 3);
    v61[0] = *(_DWORD *)world_matrix;
    v61[1] = v12;
    v61[2] = v13;
    v61[3] = v14;
    v15 = *((_DWORD *)world_matrix + 5);
    v61[4] = *((_DWORD *)world_matrix + 4);
    v61[5] = v15;
    v64[1] = 0;
    v64[0] = 0;
    gameswf::matrix::transform_by_inverse((gameswf::matrix *)v61, (gameswf::point *)v64, (const gameswf::point *)&v65);
    if ( v41 )
    {
      v57 = 0;
      v58 = 0;
      v60 = 0;
      v56 = 0;
      v59 = 1065353216;
      v55 = 1065353216;
      v24 = *((gameswf::character **)v3 + 16);
      if ( v24 )
      {
        v25 = *((_DWORD *)v3 + 15);
        if ( *(_BYTE *)(v25 + 4) )
        {
          v26 = gameswf::character::get_world_matrix(v24);
          v27 = *((_DWORD *)v26 + 1);
          v28 = *((_DWORD *)v26 + 2);
          v29 = *((_DWORD *)v26 + 3);
          v55 = *(_DWORD *)v26;
          v56 = v27;
          v57 = v28;
          v58 = v29;
          v30 = *((_DWORD *)v26 + 5);
          v59 = *((_DWORD *)v26 + 4);
          v60 = v30;
        }
        else
        {
          gameswf::smart_ptr_proxy::operator=((_DWORD **)v3 + 15, (_DWORD *)*(unsigned __int8 *)(v25 + 4));
          *((_DWORD *)v3 + 16) = 0;
        }
      }
      v63 = 0.0;
      v62 = 0.0;
      gameswf::matrix::transform_by_inverse(
        (gameswf::matrix *)&v55,
        (gameswf::point *)&v62,
        (const gameswf::point *)&v65);
      v31 = *((int **)v3 + 19);
      v32 = *v31;
      v33 = v31[1];
      v34 = *((float *)v31 + 2);
      v35 = v31[3];
      v31 += 4;
      v49 = v32;
      v50 = v33;
      v51 = v34;
      v52 = v35;
      v36 = v62;
      v37 = *((float *)v31 + 1);
      v53 = *v31;
      v54 = v37;
      if ( v62 < -3.4028e38 || v62 > 3.4028e38 )
        v36 = 0.0;
      v38 = v63;
      v51 = v36;
      if ( v63 < -3.4028e38 || v63 > 3.4028e38 )
        v38 = 0.0;
      v54 = v38;
      if ( v42 )
      {
        if ( (float)(v45 * 20.0) <= v36 )
          v36 = v45 * 20.0;
        if ( (float)(v43 * 20.0) >= v36 )
          v36 = v43 * 20.0;
        if ( v36 < -3.4028e38 || v36 > 3.4028e38 )
          v36 = 0.0;
        v51 = v36;
        if ( (float)(v46 * 20.0) <= v38 )
          v38 = v46 * 20.0;
        if ( (float)(v44 * 20.0) >= v38 )
          v38 = v44 * 20.0;
        if ( v38 < -3.4028e38 || v38 > 3.4028e38 )
          v54 = 0.0;
        else
          v54 = v38;
      }
    }
    else
    {
      if ( !v40 )
      {
        v47 = v65 - *(float *)(*((_DWORD *)v3 + 19) + 8);
        v48 = v66 - *(float *)(*((_DWORD *)v3 + 19) + 20);
        v40 = 1;
        (*(void (__fastcall **)(gameswf::character *, gameswf::character **))(*(_DWORD *)this + 224))(this, &v39);
      }
      v16 = *((int **)v3 + 19);
      v17 = *v16;
      v18 = v16[1];
      v19 = *((float *)v16 + 2);
      v20 = v16[3];
      v16 += 4;
      v49 = v17;
      v50 = v18;
      v51 = v19;
      v52 = v20;
      v21 = *((float *)v16 + 1);
      v53 = *v16;
      v54 = v21;
      v22 = v65 - v47;
      if ( (float)(v65 - v47) < -3.4028e38 || v22 > 3.4028e38 )
        v22 = 0.0;
      v51 = v22;
      v23 = v66 - v48;
      if ( (float)(v66 - v48) < -3.4028e38 || v23 > 3.4028e38 )
        v23 = 0.0;
      v54 = v23;
      if ( v42 )
      {
        if ( (float)(v45 * 20.0) <= v22 )
          v22 = v45 * 20.0;
        if ( (float)(v43 * 20.0) >= v22 )
          v22 = v43 * 20.0;
        if ( v22 < -3.4028e38 || v22 > 3.4028e38 )
          v22 = 0.0;
        v51 = v22;
        if ( (float)(v46 * 20.0) <= v23 )
          v23 = v46 * 20.0;
        if ( (float)(v44 * 20.0) >= v23 )
          v23 = v44 * 20.0;
        if ( v23 < -3.4028e38 || v23 > 3.4028e38 )
          v54 = 0.0;
        else
          v54 = v23;
      }
    }
    return gameswf::character::set_matrix((int)v3, &v49);
  }
  return result;
}


// ===== 75e9ac gameswf::weak_ptr<gameswf::player>::operator=(gameswf::player*) =====
void __fastcall gameswf::weak_ptr<gameswf::player>::operator=(int a1, gameswf::ref_counted *this)
{
  _DWORD *weak_proxy; // r4
  _DWORD *v4; // r0
  bool v5; // zf
  _DWORD *v6; // r0

  *(_DWORD *)(a1 + 4) = this;
  if ( this )
  {
    weak_proxy = (_DWORD *)gameswf::ref_counted::get_weak_proxy(this);
    v4 = *(_DWORD **)a1;
    if ( weak_proxy != *(_DWORD **)a1 )
    {
      if ( v4 )
      {
        v5 = (*v4)-- == 1;
        if ( v5 )
          gameswf::free_internal(v4);
      }
      *(_DWORD *)a1 = weak_proxy;
      if ( weak_proxy )
        ++*weak_proxy;
    }
  }
  else
  {
    v6 = *(_DWORD **)a1;
    if ( v6 )
    {
      v5 = (*v6)-- == 1;
      if ( v5 )
        gameswf::free_internal(v6);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 75ea44 gameswf::character_def::character_def(gameswf::player *) =====
_DWORD *__fastcall gameswf::character_def::character_def(_DWORD *a1, gameswf::ref_counted *a2)
{
  gameswf::ref_counted::ref_counted(a1);
  a1[3] = -1;
  *a1 = off_98FE58;
  a1[7] = 0;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  gameswf::weak_ptr<gameswf::player>::operator=((int)(a1 + 6), a2);
  return a1;
}


// ===== 75eaa4 gameswf::bitmap_character::bitmap_character(gameswf::player *,gameswf::bitmap_info *,gameswf::rect *) [clone] =====
int __fastcall gameswf::bitmap_character::bitmap_character(int a1, gameswf::ref_counted *a2, int a3)
{
  int v5; // r3
  float v6; // r0
  int v7; // r3

  gameswf::character_def::character_def((_DWORD *)a1, a2);
  *(_DWORD *)(a1 + 32) = a3;
  *(_DWORD *)a1 = off_98FBF8;
  if ( a3 )
    gameswf::ref_counted::add_ref(a3);
  v5 = *(_DWORD *)(a1 + 32);
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  v6 = (float)(*(int (__fastcall **)(int))(*(_DWORD *)v5 + 36))(v5) * 20.0;
  v7 = *(_DWORD *)(a1 + 32);
  *(float *)(a1 + 40) = v6;
  *(float *)(a1 + 48) = (float)(*(int (__fastcall **)(int))(*(_DWORD *)v7 + 40))(v7) * 20.0;
  return a1;
}


// ===== 75eb4c gameswf::as_environment::as_environment(gameswf::player *) =====
int __fastcall gameswf::as_environment::as_environment(int a1, gameswf::ref_counted *a2)
{
  *(_DWORD *)a1 = 0;
  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 8) = 0;
  *(_BYTE *)(a1 + 12) = 0;
  *(_BYTE *)(a1 + 16) = 0;
  *(_BYTE *)(a1 + 17) = 0;
  *(_BYTE *)(a1 + 28) = 0;
  *(_BYTE *)(a1 + 29) = 0;
  *(_BYTE *)(a1 + 40) = 0;
  *(_BYTE *)(a1 + 41) = 0;
  *(_BYTE *)(a1 + 52) = 0;
  *(_BYTE *)(a1 + 53) = 0;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)(a1 + 72) = 0;
  *(_BYTE *)(a1 + 76) = 0;
  *(_DWORD *)(a1 + 80) = 0;
  *(_DWORD *)(a1 + 84) = 0;
  *(_DWORD *)(a1 + 88) = 0;
  *(_DWORD *)(a1 + 92) = 0;
  *(_BYTE *)(a1 + 96) = 0;
  *(_DWORD *)(a1 + 100) = 0;
  gameswf::weak_ptr<gameswf::player>::operator=(a1 + 100, a2);
  return a1;
}


// ===== 75ebd0 gameswf::weak_ptr<gameswf::as_function>::operator=(gameswf::as_function*) =====
void __fastcall gameswf::weak_ptr<gameswf::as_function>::operator=(int a1, gameswf::ref_counted *this)
{
  _DWORD *weak_proxy; // r4
  _DWORD *v4; // r0
  bool v5; // zf
  _DWORD *v6; // r0

  *(_DWORD *)(a1 + 4) = this;
  if ( this )
  {
    weak_proxy = (_DWORD *)gameswf::ref_counted::get_weak_proxy(this);
    v4 = *(_DWORD **)a1;
    if ( weak_proxy != *(_DWORD **)a1 )
    {
      if ( v4 )
      {
        v5 = (*v4)-- == 1;
        if ( v5 )
          gameswf::free_internal(v4);
      }
      *(_DWORD *)a1 = weak_proxy;
      if ( weak_proxy )
        ++*weak_proxy;
    }
  }
  else
  {
    v6 = *(_DWORD **)a1;
    if ( v6 )
    {
      v5 = (*v6)-- == 1;
      if ( v5 )
        gameswf::free_internal(v6);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 75ec68 gameswf::character_def::set_registered_class_constructor(gameswf::as_value const&) =====
void __fastcall gameswf::character_def::set_registered_class_constructor(
        gameswf::character_def *this,
        const gameswf::as_value *a2)
{
  gameswf::ref_counted *v3; // r1

  v3 = (gameswf::ref_counted *)gameswf::as_value::to_function(a2);
  gameswf::weak_ptr<gameswf::as_function>::operator=((int)this + 16, v3);
}


// ===== 75ec88 gameswf::weak_ptr<gameswf::as_object>::operator=(gameswf::as_object*) =====
void __fastcall gameswf::weak_ptr<gameswf::as_object>::operator=(int a1, gameswf::ref_counted *this)
{
  _DWORD *weak_proxy; // r4
  _DWORD *v4; // r0
  bool v5; // zf
  _DWORD *v6; // r0

  *(_DWORD *)(a1 + 4) = this;
  if ( this )
  {
    weak_proxy = (_DWORD *)gameswf::ref_counted::get_weak_proxy(this);
    v4 = *(_DWORD **)a1;
    if ( weak_proxy != *(_DWORD **)a1 )
    {
      if ( v4 )
      {
        v5 = (*v4)-- == 1;
        if ( v5 )
          gameswf::free_internal(v4);
      }
      *(_DWORD *)a1 = weak_proxy;
      if ( weak_proxy )
        ++*weak_proxy;
    }
  }
  else
  {
    v6 = *(_DWORD **)a1;
    if ( v6 )
    {
      v5 = (*v6)-- == 1;
      if ( v5 )
        gameswf::free_internal(v6);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 75ed20 gameswf::define_bits_lossless_2_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::define_bits_lossless_2_loader(
        gameswf **this,
        gameswf::stream *a2,
        _DWORD *a3,
        gameswf::movie_definition_sub *a4)
{
  int u8; // r6
  gameswf *v8; // r4
  gameswf::render *tag_end_position; // r0
  gameswf::image_base *v10; // r8
  int position; // r9
  int v12; // r2
  gameswf::image_rgba *v13; // r1
  int bitmap_info_empty; // r7
  gameswf::ref_counted *v15; // r6
  _BYTE *v16; // r0
  void *v17; // r4
  gameswf::image_rgb *v20; // r1
  gameswf *rgb; // r10
  int v22; // r2
  gameswf::image_base *v23; // r11
  unsigned __int8 *v24; // r0
  unsigned __int8 *v25; // r5
  gameswf::image_rgba *v26; // r6
  int v27; // r10
  int v28; // r7
  int v29; // r9
  unsigned int v30; // r10
  gameswf::tu_file *v31; // r6
  int v32; // r3
  int v33; // r2
  char *v34; // r7
  _BYTE *v35; // r0
  int v36; // r3
  int v37; // r2
  _BYTE *v38; // r1
  unsigned int v39; // r9
  gameswf::tu_file *v40; // r10
  int v41; // r3
  int v42; // r2
  gameswf::image_base *v43; // r7
  _BYTE *v44; // r0
  unsigned __int8 *v45; // r3
  int v46; // r2
  int v47; // t1
  char v48; // r1
  int v49; // r2
  unsigned int v50; // lr
  gameswf::tu_file *v51; // r11
  int v52; // r3
  int v53; // r2
  unsigned __int8 *v54; // r7
  _BYTE *v55; // r0
  _BYTE *v56; // lr
  unsigned __int8 *v57; // r3
  unsigned __int8 v58; // r1
  int v59; // r0
  unsigned int v60; // r9
  void *v61; // r11
  gameswf::tu_file *v62; // r6
  int v63; // r3
  int v64; // r2
  char *v65; // r7
  _BYTE *v66; // r0
  int v67; // r1
  _BYTE *v68; // r3
  unsigned int v69; // r9
  int v70; // r3
  int v71; // r2
  gameswf::image_base *v72; // r7
  _BYTE *v73; // r0
  unsigned __int8 *v74; // r3
  int v75; // r2
  int v76; // t1
  char v77; // r1
  int v78; // r2
  unsigned int v79; // lr
  int v80; // [sp+0h] [bp-1Ch]
  int v81; // [sp+4h] [bp-18h]
  int u16; // [sp+8h] [bp-14h]
  gameswf::tu_file **rgba; // [sp+Ch] [bp-10h]
  _DWORD *v84; // [sp+14h] [bp-8h]

  u16 = gameswf::stream::read_u16((gameswf::stream *)this);
  u8 = gameswf::stream::read_u8((gameswf::stream *)this);
  v8 = (gameswf *)gameswf::stream::read_u16((gameswf::stream *)this);
  v81 = gameswf::stream::read_u16((gameswf::stream *)this);
  tag_end_position = (gameswf::render *)(*(int (__fastcall **)(_DWORD *))(*a3 + 180))(a3);
  v10 = tag_end_position;
  if ( tag_end_position
    || (position = gameswf::stream::get_position((gameswf::stream *)this),
        tag_end_position = (gameswf::render *)gameswf::stream::get_tag_end_position((gameswf::stream *)this),
        position >= (int)tag_end_position) )
  {
    bitmap_info_empty = gameswf::render::create_bitmap_info_empty(tag_end_position);
    goto LABEL_9;
  }
  if ( a2 == (gameswf::stream *)&dword_14 )
  {
    rgb = (gameswf *)gameswf::create_rgb(v8, v81, v12);
    if ( u8 == 3 )
    {
      v59 = gameswf::stream::read_u8((gameswf::stream *)this);
      v60 = ((unsigned int)v8 + 3) & 0xFFFFFFFC;
      v61 = (void *)(3 * (v59 + 1) + v81 * v60);
      v80 = 3 * (v59 + 1);
      v62 = (gameswf::tu_file *)operator new[]((size_t)v61);
      gameswf::inflate_wrapper(*(this + 1), v62, v61, v63);
      v64 = v81;
      if ( v81 )
      {
        v65 = (char *)v62 + v80;
        do
        {
          v66 = (_BYTE *)gameswf::scanline(rgb, v10, v64);
          if ( v8 )
          {
            v64 = 0;
            do
            {
              v67 = (unsigned __int8)v65[v64++];
              v68 = (char *)v62 + 3 * v67;
              *v66 = *v68;
              v66[1] = v68[1];
              v66[2] = v68[2];
              v66 += 3;
            }
            while ( (int)v8 > v64 );
          }
          v10 = (gameswf::image_base *)((char *)v10 + 1);
          v65 += v60;
        }
        while ( v81 > (int)v10 );
      }
    }
    else
    {
      if ( u8 != 4 )
      {
        if ( u8 == 5 )
        {
          v51 = (gameswf::tu_file *)operator new[](v81 * 4 * (_DWORD)v8);
          gameswf::inflate_wrapper(*(this + 1), v51, (void *)(v81 * 4 * (_DWORD)v8), v52);
          v53 = v81;
          if ( v81 )
          {
            v54 = (unsigned __int8 *)v51;
            do
            {
              v55 = (_BYTE *)gameswf::scanline(rgb, v10, v53);
              if ( v8 )
              {
                v56 = &v55[3 * (_DWORD)v8];
                v57 = v54;
                do
                {
                  v58 = v57[3];
                  v53 = v57[1];
                  v55[1] = v57[2];
                  v55[2] = v58;
                  *v55 = v53;
                  v55 += 3;
                  v57 += 4;
                }
                while ( v55 != v56 );
              }
              v10 = (gameswf::image_base *)((char *)v10 + 1);
              v54 += 4 * (_DWORD)v8;
            }
            while ( v81 > (int)v10 );
          }
          gameswf::destructp<unsigned char>(v51);
        }
        goto LABEL_19;
      }
      v69 = (2 * (_DWORD)v8 + 3) & 0xFFFFFFFC;
      v62 = (gameswf::tu_file *)operator new[](v81 * v69);
      gameswf::inflate_wrapper(*(this + 1), v62, (void *)(v81 * v69), v70);
      v71 = v81;
      if ( v81 )
      {
        v72 = nullptr;
        do
        {
          v73 = (_BYTE *)gameswf::scanline(rgb, v72, v71);
          if ( v8 )
          {
            v74 = (unsigned __int8 *)v62 + (_DWORD)v10;
            do
            {
              v75 = v74[1];
              v76 = *v74;
              v74 += 2;
              v77 = v75 & 0xF8;
              v78 = v76 | (v75 << 8);
              v79 = (v78 >> 3) & 0xFFFFFFFC;
              v71 = 8 * v78;
              *v73 = v77;
              v73[1] = v79;
              v73[2] = v71;
              v73 += 3;
            }
            while ( v74 != (unsigned __int8 *)v10 + (_DWORD)v62 + 2 * (_DWORD)v8 );
          }
          v72 = (gameswf::image_base *)((char *)v72 + 1);
          v10 = (gameswf::image_base *)((char *)v10 + v69);
        }
        while ( v81 > (int)v72 );
      }
    }
    gameswf::destructp<unsigned char>(v62);
LABEL_19:
    bitmap_info_empty = gameswf::render::create_bitmap_info_rgb(rgb, v20);
    gameswf::destruct<gameswf::image_rgb>((void (__fastcall ***)(_DWORD))rgb);
    goto LABEL_9;
  }
  rgba = (gameswf::tu_file **)gameswf::create_rgba(v8, v81, v12);
  switch ( u8 )
  {
    case 3:
      v29 = 4 * (gameswf::stream::read_u8((gameswf::stream *)this) + 1);
      v30 = ((unsigned int)v8 + 3) & 0xFFFFFFFC;
      v31 = (gameswf::tu_file *)operator new[](v29 + v81 * v30);
      gameswf::inflate_wrapper(*(this + 1), v31, (void *)(v29 + v81 * v30), v32);
      v33 = v81;
      if ( v81 )
      {
        v34 = (char *)v31 + v29;
        do
        {
          v35 = (_BYTE *)gameswf::scanline((gameswf *)rgba, v10, v33);
          if ( v8 )
          {
            v36 = 0;
            do
            {
              v37 = (unsigned __int8)v34[v36++];
              v38 = (char *)v31 + 4 * v37;
              *v35 = *v38;
              v35[1] = v38[1];
              v35[2] = v38[2];
              v33 = (unsigned __int8)v38[3];
              v35[3] = v33;
              v35 += 4;
            }
            while ( (int)v8 > v36 );
          }
          v10 = (gameswf::image_base *)((char *)v10 + 1);
          v34 += v30;
        }
        while ( v81 > (int)v10 );
      }
      gameswf::destructp<unsigned char>(v31);
      break;
    case 4:
      v39 = (2 * (_DWORD)v8 + 3) & 0xFFFFFFFC;
      v40 = (gameswf::tu_file *)operator new[](v81 * v39);
      gameswf::inflate_wrapper(*(this + 1), v40, (void *)(v81 * v39), v41);
      v42 = v81;
      if ( v81 )
      {
        v43 = nullptr;
        do
        {
          v44 = (_BYTE *)gameswf::scanline((gameswf *)rgba, v43, v42);
          if ( v8 )
          {
            v45 = (unsigned __int8 *)v40 + (_DWORD)v10;
            do
            {
              v46 = v45[1];
              v47 = *v45;
              v45 += 2;
              *v44 = -1;
              v48 = v46 & 0xF8;
              v49 = v47 | (v46 << 8);
              v50 = (v49 >> 3) & 0xFFFFFFFC;
              v42 = 8 * v49;
              v44[1] = v48;
              v44[2] = v50;
              v44[3] = v42;
              v44 += 4;
            }
            while ( v45 != (unsigned __int8 *)v10 + (_DWORD)v40 + 2 * (_DWORD)v8 );
          }
          v43 = (gameswf::image_base *)((char *)v43 + 1);
          v10 = (gameswf::image_base *)((char *)v10 + v39);
        }
        while ( v81 > (int)v43 );
      }
      gameswf::destructp<unsigned char>(v40);
      break;
    case 5:
      gameswf::inflate_wrapper(*(this + 1), rgba[2], (void *)(4 * v81 * (_DWORD)v8), (int)rgba);
      if ( v81 )
      {
        v22 = 4 * (_DWORD)v8;
        v23 = nullptr;
        v84 = a3;
        do
        {
          v24 = (unsigned __int8 *)gameswf::scanline((gameswf *)rgba, v23, v22);
          if ( v8 )
          {
            v25 = v24;
            do
            {
              v26 = (gameswf::image_rgba *)*v25;
              v27 = v25[2];
              v13 = v26;
              v28 = v25[3];
              if ( *v25 )
              {
                *v25 = 255 * v25[1] / (int)v26;
                v25[1] = 255 * v27 / (int)v26;
                v25[2] = 255 * v28 / (int)v26;
              }
              else
              {
                *v25 = (unsigned __int8)v26;
                v25[1] = (unsigned __int8)v26;
                v25[2] = (unsigned __int8)v26;
              }
              v25[3] = (unsigned __int8)v26;
              v25 += 4;
            }
            while ( v25 != &v24[4 * (_DWORD)v8] );
          }
          v22 = v81;
          v23 = (gameswf::image_base *)((char *)v23 + 1);
        }
        while ( v81 > (int)v23 );
        a3 = v84;
      }
      break;
  }
  bitmap_info_empty = gameswf::render::create_bitmap_info_rgba((gameswf::render *)rgba, v13);
  gameswf::destruct<gameswf::image_rgba>((void (__fastcall ***)(_DWORD))rgba);
LABEL_9:
  v15 = (gameswf::ref_counted *)a3[7];
  if ( v15 )
  {
    v16 = (_BYTE *)a3[6];
    if ( !v16[4] )
    {
      if ( (*(_DWORD *)v16)-- == 1 )
        gameswf::free_internal(v16);
      v15 = nullptr;
      a3[6] = 0;
      a3[7] = 0;
    }
  }
  v17 = operator new(0x34u, 0);
  gameswf::bitmap_character::bitmap_character((int)v17, v15, bitmap_info_empty);
  return (*(int (__fastcall **)(_DWORD *, int, void *))(*a3 + 156))(a3, u16, v17);
}


// ===== 75f36c gameswf::character_def::create_character_instance(gameswf::character *,int) =====
gameswf::generic_character *__fastcall gameswf::character_def::create_character_instance(
        gameswf::character_def *this,
        gameswf::character *a2,
        int a3)
{
  gameswf::player *v3; // r7
  _BYTE *v7; // r0
  gameswf::generic_character *v8; // r4

  v3 = *((gameswf::player **)this + 7);
  if ( v3 )
  {
    v7 = *((_BYTE **)this + 6);
    if ( !v7[4] )
    {
      if ( (*(_DWORD *)v7)-- == 1 )
        gameswf::free_internal(v7);
      v3 = nullptr;
      *((_DWORD *)this + 6) = 0;
      *((_DWORD *)this + 7) = 0;
    }
  }
  v8 = (gameswf::generic_character *)operator new(0xA4u, 0);
  gameswf::generic_character::generic_character(v8, v3, this, a2, a3);
  return v8;
}


// ===== 75f3f4 gameswf::button_character_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::button_character_loader(
        gameswf *this,
        gameswf::stream *a2,
        gameswf::movie_definition_sub *a3,
        gameswf::movie_definition_sub *a4)
{
  int u16; // r0
  gameswf::player *v8; // r7
  int v9; // r6
  _BYTE *v10; // r0
  gameswf::button_character_definition *v11; // r5

  u16 = gameswf::stream::read_u16(this);
  v8 = *((gameswf::player **)a3 + 7);
  v9 = u16;
  if ( v8 )
  {
    v10 = *((_BYTE **)a3 + 6);
    if ( !v10[4] )
    {
      if ( (*(_DWORD *)v10)-- == 1 )
        gameswf::free_internal(v10);
      v8 = nullptr;
      *((_DWORD *)a3 + 6) = 0;
      *((_DWORD *)a3 + 7) = 0;
    }
  }
  v11 = (gameswf::button_character_definition *)operator new(0x48u, 0);
  gameswf::button_character_definition::button_character_definition(v11, v8);
  gameswf::button_character_definition::read(v11, this, (int)a2, a3);
  return (*(int (__fastcall **)(gameswf::movie_definition_sub *, int, gameswf::button_character_definition *))(*(_DWORD *)a3 + 116))(
           a3,
           v9,
           v11);
}


// ===== 75f498 gameswf::place_object_2_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::place_object_2_loader(
        gameswf *this,
        gameswf::stream *a2,
        _DWORD *a3,
        gameswf::movie_definition_sub *a4)
{
  char **v4; // r5
  _BYTE *v8; // r0
  int v9; // r0
  int v10; // r0
  gameswf::movie_definition_sub *v13; // [sp+4h] [bp-8h]

  v4 = (char **)a3[7];
  if ( v4 )
  {
    v8 = (_BYTE *)a3[6];
    if ( !v8[4] )
    {
      if ( (*(_DWORD *)v8)-- == 1 )
        gameswf::free_internal(v8);
      v4 = nullptr;
      a3[6] = 0;
      a3[7] = 0;
    }
  }
  v9 = (*(int (__fastcall **)(_DWORD *))(*a3 + 44))(a3);
  v10 = gameswf::place_object_2::read(v4, this, a2, v9, (int)a3, v13);
  return (*(int (__fastcall **)(_DWORD *, int))(*a3 + 128))(a3, v10);
}


// ===== 75f534 gameswf::sprite_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::sprite_loader(
        gameswf *this,
        gameswf::stream *a2,
        gameswf::movie_definition_sub *a3,
        gameswf::movie_definition_sub *a4)
{
  int u16; // r0
  gameswf::player *v7; // r8
  int v8; // r6
  _BYTE *v9; // r0
  gameswf::sprite_definition *v10; // r5

  u16 = gameswf::stream::read_u16(this);
  v7 = *((gameswf::player **)a3 + 7);
  v8 = u16;
  if ( v7 )
  {
    v9 = *((_BYTE **)a3 + 6);
    if ( !v9[4] )
    {
      if ( (*(_DWORD *)v9)-- == 1 )
        gameswf::free_internal(v9);
      v7 = nullptr;
      *((_DWORD *)a3 + 6) = 0;
      *((_DWORD *)a3 + 7) = 0;
    }
  }
  v10 = (gameswf::sprite_definition *)operator new(0x5Cu, 0);
  gameswf::sprite_definition::sprite_definition(v10, v7, a3);
  gameswf::sprite_definition::read(v10, this);
  return (*(int (__fastcall **)(gameswf::movie_definition_sub *, int, gameswf::sprite_definition *))(*(_DWORD *)a3 + 116))(
           a3,
           v8,
           v10);
}


// ===== 75f5d0 gameswf::sprite_definition::create_character_instance(gameswf::character *,int) =====
int __fastcall gameswf::sprite_definition::create_character_instance(
        gameswf::sprite_definition *this,
        gameswf::character *a2,
        int a3)
{
  gameswf::player *v3; // r7
  _BYTE *v7; // r0
  gameswf::root *v8; // r0

  v3 = *((gameswf::player **)this + 7);
  if ( v3 )
  {
    v7 = *((_BYTE **)this + 6);
    if ( !v7[4] )
    {
      if ( (*(_DWORD *)v7)-- == 1 )
        gameswf::free_internal(v7);
      v3 = nullptr;
      *((_DWORD *)this + 6) = 0;
      *((_DWORD *)this + 7) = 0;
    }
  }
  v8 = (gameswf::root *)(*(int (__fastcall **)(gameswf::character *))(*(_DWORD *)a2 + 84))(a2);
  return gameswf::player::create_sprite_instance(v3, this, v8, a2, a3);
}


// ===== 75f658 gameswf::define_font_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::define_font_loader(
        gameswf *this,
        gameswf::stream *a2,
        gameswf::movie_definition_sub *a3,
        gameswf::movie_definition_sub *a4)
{
  int u16; // r0
  gameswf::player *v8; // r7
  int v9; // r6
  _BYTE *v10; // r0
  gameswf::font *v11; // r5

  u16 = gameswf::stream::read_u16(this);
  v8 = *((gameswf::player **)a3 + 7);
  v9 = u16;
  if ( v8 )
  {
    v10 = *((_BYTE **)a3 + 6);
    if ( !v10[4] )
    {
      if ( (*(_DWORD *)v10)-- == 1 )
        gameswf::free_internal(v10);
      v8 = nullptr;
      *((_DWORD *)a3 + 6) = 0;
      *((_DWORD *)a3 + 7) = 0;
    }
  }
  v11 = (gameswf::font *)operator new(0x88u, 0);
  gameswf::font::font(v11, v8);
  gameswf::font::read(v11, this, (int)a2, a3);
  return (*(int (__fastcall **)(gameswf::movie_definition_sub *, int, gameswf::font *))(*(_DWORD *)a3 + 120))(
           a3,
           v9,
           v11);
}


// ===== 75f6fc gameswf::define_bits_jpeg3_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::define_bits_jpeg3_loader(
        gameswf *this,
        gameswf::stream *a2,
        _DWORD *a3,
        gameswf::movie_definition_sub *a4)
{
  int u16; // r6
  gameswf::render *v7; // r0
  const char *v8; // r1
  int bitmap_info_empty; // r8
  gameswf::ref_counted *v10; // r7
  _BYTE *v11; // r0
  void *v12; // r5

  u16 = gameswf::stream::read_u16(this);
  gameswf::stream::read_u32(this);
  gameswf::stream::get_position(this);
  v7 = (gameswf::render *)(*(int (__fastcall **)(_DWORD *))(*a3 + 180))(a3);
  if ( !v7 )
    v7 = (gameswf::render *)gameswf::log_error(
                              (gameswf *)"gameswf is not linked to jpeglib/zlib -- can't load jpeg/zipped image data!\n",
                              v8);
  bitmap_info_empty = gameswf::render::create_bitmap_info_empty(v7);
  v10 = (gameswf::ref_counted *)a3[7];
  if ( v10 )
  {
    v11 = (_BYTE *)a3[6];
    if ( !v11[4] )
    {
      if ( (*(_DWORD *)v11)-- == 1 )
        gameswf::free_internal(v11);
      v10 = nullptr;
      a3[6] = 0;
      a3[7] = 0;
    }
  }
  v12 = operator new(0x34u, 0);
  gameswf::bitmap_character::bitmap_character((int)v12, v10, bitmap_info_empty);
  return (*(int (__fastcall **)(_DWORD *, int, void *))(*a3 + 156))(a3, u16, v12);
}


// ===== 75f7d8 gameswf::define_shape_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::define_shape_loader(
        gameswf *this,
        gameswf::stream *a2,
        gameswf::movie_definition_sub *a3,
        gameswf::movie_definition_sub *a4)
{
  int u16; // r0
  gameswf::player *v8; // r7
  int v9; // r6
  _BYTE *v10; // r0
  gameswf::shape_character_def *v11; // r5

  u16 = gameswf::stream::read_u16(this);
  v8 = *((gameswf::player **)a3 + 7);
  v9 = u16;
  if ( v8 )
  {
    v10 = *((_BYTE **)a3 + 6);
    if ( !v10[4] )
    {
      if ( (*(_DWORD *)v10)-- == 1 )
        gameswf::free_internal(v10);
      v8 = nullptr;
      *((_DWORD *)a3 + 6) = 0;
      *((_DWORD *)a3 + 7) = 0;
    }
  }
  v11 = (gameswf::shape_character_def *)operator new(0x88u, 0);
  gameswf::shape_character_def::shape_character_def(v11, v8);
  gameswf::shape_character_def::read(v11, this, (int)a2, 1, a3);
  return (*(int (__fastcall **)(gameswf::movie_definition_sub *, int, gameswf::shape_character_def *))(*(_DWORD *)a3 + 116))(
           a3,
           v9,
           v11);
}


// ===== 75f888 gameswf::define_bits_jpeg_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::define_bits_jpeg_loader(
        gameswf *this,
        gameswf::stream *a2,
        _DWORD *a3,
        gameswf::movie_definition_sub *a4)
{
  int u16; // r6
  gameswf::render *v6; // r0
  const char *v7; // r1
  int bitmap_info_empty; // r8
  gameswf::ref_counted *v9; // r7
  _BYTE *v10; // r0
  void *v11; // r5

  u16 = gameswf::stream::read_u16(this);
  v6 = (gameswf::render *)(*(int (__fastcall **)(_DWORD *))(*a3 + 180))(a3);
  if ( !v6 )
    v6 = (gameswf::render *)gameswf::log_error(
                              (gameswf *)"gameswf is not linked to jpeglib -- can't load jpeg image data!\n",
                              v7);
  bitmap_info_empty = gameswf::render::create_bitmap_info_empty(v6);
  v9 = (gameswf::ref_counted *)a3[7];
  if ( v9 )
  {
    v10 = (_BYTE *)a3[6];
    if ( !v10[4] )
    {
      if ( (*(_DWORD *)v10)-- == 1 )
        gameswf::free_internal(v10);
      v9 = nullptr;
      a3[6] = 0;
      a3[7] = 0;
    }
  }
  v11 = operator new(0x34u, 0);
  gameswf::bitmap_character::bitmap_character((int)v11, v9, bitmap_info_empty);
  return (*(int (__fastcall **)(_DWORD *, int, void *))(*a3 + 156))(a3, u16, v11);
}


// ===== 75f950 gameswf::define_shape_morph_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::define_shape_morph_loader(
        gameswf *this,
        gameswf::stream *a2,
        gameswf::movie_definition_sub *a3,
        gameswf::movie_definition_sub *a4)
{
  int u16; // r0
  gameswf::player *v8; // r7
  int v9; // r6
  _BYTE *v10; // r0
  gameswf::morph2_character_def *v11; // r5

  u16 = gameswf::stream::read_u16(this);
  v8 = *((gameswf::player **)a3 + 7);
  v9 = u16;
  if ( v8 )
  {
    v10 = *((_BYTE **)a3 + 6);
    if ( !v10[4] )
    {
      if ( (*(_DWORD *)v10)-- == 1 )
        gameswf::free_internal(v10);
      v8 = nullptr;
      *((_DWORD *)a3 + 6) = 0;
      *((_DWORD *)a3 + 7) = 0;
    }
  }
  v11 = (gameswf::morph2_character_def *)operator new(0xA4u, 0);
  gameswf::morph2_character_def::morph2_character_def(v11, v8);
  gameswf::morph2_character_def::read(v11, this, (int)a2, 1, a3);
  return (*(int (__fastcall **)(gameswf::movie_definition_sub *, int, gameswf::morph2_character_def *))(*(_DWORD *)a3 + 116))(
           a3,
           v9,
           v11);
}


// ===== 75fa00 gameswf::define_bits_jpeg2_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::define_bits_jpeg2_loader(
        gameswf *this,
        gameswf::stream *a2,
        _DWORD *a3,
        gameswf::movie_definition_sub *a4)
{
  int u16; // r6
  gameswf::render *v6; // r0
  const char *v7; // r1
  int bitmap_info_empty; // r8
  gameswf::ref_counted *v9; // r7
  _BYTE *v10; // r0
  void *v11; // r5

  u16 = gameswf::stream::read_u16(this);
  v6 = (gameswf::render *)(*(int (__fastcall **)(_DWORD *))(*a3 + 180))(a3);
  if ( !v6 )
    v6 = (gameswf::render *)gameswf::log_error(
                              (gameswf *)"gameswf is not linked to jpeglib -- can't load jpeg image data!\n",
                              v7);
  bitmap_info_empty = gameswf::render::create_bitmap_info_empty(v6);
  v9 = (gameswf::ref_counted *)a3[7];
  if ( v9 )
  {
    v10 = (_BYTE *)a3[6];
    if ( !v10[4] )
    {
      if ( (*(_DWORD *)v10)-- == 1 )
        gameswf::free_internal(v10);
      v9 = nullptr;
      a3[6] = 0;
      a3[7] = 0;
    }
  }
  v11 = operator new(0x34u, 0);
  gameswf::bitmap_character::bitmap_character((int)v11, v9, bitmap_info_empty);
  return (*(int (__fastcall **)(_DWORD *, int, void *))(*a3 + 156))(a3, u16, v11);
}


// ===== 75fac8 gameswf::define_abc_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
void __fastcall gameswf::define_abc_loader(
        gameswf *this,
        gameswf::stream *a2,
        gameswf::movie_definition_sub *a3,
        gameswf::movie_definition_sub *a4)
{
  gameswf::player *v6; // r10
  _BYTE *v7; // r0
  gameswf::abc_def *v8; // r7
  _BYTE v10[8]; // [sp+0h] [bp-18h] BYREF
  void *p; // [sp+Ch] [bp-Ch]
  unsigned int v12; // [sp+10h] [bp-8h]

  gameswf::stream::read_u32(this);
  v12 = v12 & 0xFF000000 | 0xFFFFFF;
  v10[0] = 1;
  HIBYTE(v12) &= ~1u;
  v10[1] = 0;
  gameswf::stream::read_string(this, (gameswf::tu_string *)v10);
  v6 = *((gameswf::player **)a3 + 7);
  if ( v6 )
  {
    v7 = *((_BYTE **)a3 + 6);
    if ( !v7[4] )
    {
      if ( (*(_DWORD *)v7)-- == 1 )
        gameswf::free_internal(v7);
      v6 = nullptr;
      *((_DWORD *)a3 + 6) = 0;
      *((_DWORD *)a3 + 7) = 0;
    }
  }
  v8 = (gameswf::abc_def *)operator new(0xCCu, 0);
  gameswf::abc_def::abc_def(v8, v6);
  gameswf::abc_def::read(v8, this, a3);
  (*(void (__fastcall **)(gameswf::movie_definition_sub *, _BYTE *, gameswf::abc_def *))(*(_DWORD *)a3 + 112))(
    a3,
    v10,
    v8);
  if ( v10[0] == -1 )
    gameswf::free_internal(p);
}


// ===== 75fbf8 gameswf::define_native_image_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::define_native_image_loader(
        gameswf **this,
        gameswf::stream *a2,
        _DWORD *a3,
        gameswf::movie_definition_sub *a4)
{
  int u16; // r7
  gameswf::render *v7; // r10
  int v8; // r8
  int u8; // r11
  gameswf::membuf *u32; // r9
  gameswf::tu_file **v11; // r6
  int v12; // r3
  const gameswf::membuf *v13; // r3
  int bitmap_info_native; // r0
  gameswf::ref_counted *v15; // r6
  int v16; // r8
  _BYTE *v17; // r0
  void *v18; // r4

  u16 = gameswf::stream::read_u16((gameswf::stream *)this);
  v7 = (gameswf::render *)gameswf::stream::read_u16((gameswf::stream *)this);
  v8 = gameswf::stream::read_u16((gameswf::stream *)this);
  u8 = gameswf::stream::read_u8((gameswf::stream *)this);
  u32 = (gameswf::membuf *)gameswf::stream::read_u32((gameswf::stream *)this);
  v11 = (gameswf::tu_file **)operator new(0x10u, 0);
  gameswf::membuf::membuf((gameswf::membuf *)v11);
  gameswf::membuf::resize((gameswf::membuf *)v11, u32);
  if ( u8 )
    gameswf::inflate_wrapper(*(this + 1), v11[2], u32, v12);
  else
    gameswf::tu_file::read_fully(*(this + 1), (gameswf::membuf *)v11, -1);
  bitmap_info_native = gameswf::render::create_bitmap_info_native(v7, v8, (int)v11, v13);
  v15 = (gameswf::ref_counted *)a3[7];
  v16 = bitmap_info_native;
  if ( v15 )
  {
    v17 = (_BYTE *)a3[6];
    if ( !v17[4] )
    {
      if ( (*(_DWORD *)v17)-- == 1 )
        gameswf::free_internal(v17);
      v15 = nullptr;
      a3[6] = 0;
      a3[7] = 0;
    }
  }
  v18 = operator new(0x34u, 0);
  gameswf::bitmap_character::bitmap_character((int)v18, v15, v16);
  return (*(int (__fastcall **)(_DWORD *, int, void *))(*a3 + 156))(a3, u16, v18);
}


// ===== 75fd18 gameswf::character_def::instanciate_registered_class(gameswf::character *) =====
void __fastcall gameswf::character_def::instanciate_registered_class(
        gameswf::character_def *this,
        gameswf::character *a2)
{
  _BYTE *v4; // r0
  int v5; // r3
  _BYTE *v6; // r0
  gameswf::ref_counted *v7; // r1
  _BYTE *v8; // r0
  int v9; // r3
  _BYTE *v10; // r0
  bool v11; // zf
  gameswf::ref_counted *v12; // r0
  _BYTE *v13; // r0
  _BYTE v14[108]; // [sp+14h] [bp-A0h] BYREF
  _BYTE v15[12]; // [sp+80h] [bp-34h] BYREF
  _BYTE v16[4]; // [sp+8Ch] [bp-28h] BYREF
  gameswf::character *v17; // [sp+90h] [bp-24h]
  char v18; // [sp+98h] [bp-1Ch] BYREF
  char v19; // [sp+99h] [bp-1Bh]
  int v20; // [sp+9Ch] [bp-18h]
  char v21; // [sp+A4h] [bp-10h] BYREF
  char v22; // [sp+A5h] [bp-Fh]
  int v23; // [sp+A8h] [bp-Ch]

  if ( *((_DWORD *)this + 5) )
  {
    v4 = *((_BYTE **)this + 4);
    if ( v4[4] )
      goto LABEL_3;
    v11 = (*(_DWORD *)v4)-- == 1;
    if ( v11 )
      gameswf::free_internal(v4);
    *((_DWORD *)this + 5) = 0;
    *((_DWORD *)this + 4) = 0;
  }
  v12 = (gameswf::ref_counted *)(*(int (__fastcall **)(gameswf::character_def *, gameswf::character *))(*(_DWORD *)this + 40))(
                                  this,
                                  a2);
  gameswf::weak_ptr<gameswf::as_function>::operator=((int)this + 16, v12);
  if ( !*((_DWORD *)this + 5) )
    return;
  v13 = *((_BYTE **)this + 4);
  if ( v13[4] )
  {
LABEL_3:
    gameswf::weak_ptr<gameswf::as_object>::operator=((int)a2 + 32, a2);
    v5 = *((_DWORD *)this + 5);
    if ( v5 )
    {
      v6 = *((_BYTE **)this + 4);
      if ( v6[4] )
      {
        v21 = 0;
        v22 = 5;
        v23 = v5;
        gameswf::ref_counted::add_ref(v5);
LABEL_6:
        gameswf::as_object::create_proto(a2, (const gameswf::as_value *)&v21);
        gameswf::as_value::drop_refs((gameswf::as_value *)&v21);
        v7 = *((gameswf::ref_counted **)this + 7);
        if ( v7 )
        {
          v8 = *((_BYTE **)this + 6);
          if ( !v8[4] )
          {
            v11 = (*(_DWORD *)v8)-- == 1;
            if ( v11 )
              gameswf::free_internal(v8);
            v7 = nullptr;
            *((_DWORD *)this + 6) = 0;
            *((_DWORD *)this + 7) = 0;
          }
        }
        gameswf::as_environment::as_environment((int)v14, v7);
        v9 = *((_DWORD *)this + 5);
        if ( v9 )
        {
          v10 = *((_BYTE **)this + 4);
          if ( v10[4] )
          {
            v18 = 0;
            v19 = 5;
            v20 = v9;
            gameswf::ref_counted::add_ref(v9);
LABEL_11:
            v16[0] = 0;
            v16[1] = 5;
            v17 = a2;
            if ( a2 )
              gameswf::ref_counted::add_ref((int)a2);
            gameswf::call_method((int)v15, (gameswf::as_value *)&v18, (int)v14, (int)v16, 0, 0, (int)"???");
            gameswf::as_value::drop_refs((gameswf::as_value *)v15);
            gameswf::as_value::drop_refs((gameswf::as_value *)v16);
            gameswf::as_value::drop_refs((gameswf::as_value *)&v18);
            gameswf::as_environment::~as_environment((gameswf::as_environment *)v14);
            return;
          }
          v11 = (*(_DWORD *)v10)-- == 1;
          if ( v11 )
            gameswf::free_internal(v10);
          *((_DWORD *)this + 5) = 0;
          *((_DWORD *)this + 4) = 0;
        }
        v19 = 5;
        v20 = 0;
        v18 = 0;
        goto LABEL_11;
      }
      v11 = (*(_DWORD *)v6)-- == 1;
      if ( v11 )
        gameswf::free_internal(v6);
      *((_DWORD *)this + 5) = 0;
      *((_DWORD *)this + 4) = 0;
    }
    v22 = 5;
    v23 = 0;
    v21 = 0;
    goto LABEL_6;
  }
  v11 = (*(_DWORD *)v13)-- == 1;
  if ( v11 )
    gameswf::free_internal(v13);
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 4) = 0;
}


// ===== 75ffb0 gameswf::movie_def_impl::create_root(void) =====
gameswf::root *__fastcall gameswf::movie_def_impl::create_root(gameswf::movie_def_impl *this)
{
  gameswf::root *v2; // r6
  gameswf::player *v4; // r10
  _BYTE *v5; // r0
  gameswf::player *v6; // r0
  _BYTE *v7; // r3
  gameswf::character *sprite_instance; // r8
  void (__fastcall *v9)(gameswf::character *, _BYTE *, _BYTE *); // r10
  gameswf::tu_string *v10; // r0
  int v11; // r11
  const char *gameswf_version; // r0
  gameswf::tu_string *v13; // r0
  bool v14; // zf
  _BYTE v15[4]; // [sp+8h] [bp-3Ch] BYREF
  int v16; // [sp+Ch] [bp-38h]
  _BYTE v17[8]; // [sp+14h] [bp-30h] BYREF
  void *p; // [sp+20h] [bp-24h]
  _BYTE v19[8]; // [sp+28h] [bp-1Ch] BYREF
  void *v20; // [sp+34h] [bp-10h]

  if ( !gameswf::s_use_cached_movie_instance || (v2 = *((gameswf::root **)this + 58)) == nullptr )
  {
    v4 = *((gameswf::player **)this + 7);
    if ( v4 )
    {
      v5 = *((_BYTE **)this + 6);
      if ( !v5[4] )
      {
        v14 = (*(_DWORD *)v5)-- == 1;
        if ( v14 )
          gameswf::free_internal(v5);
        v4 = nullptr;
        *((_DWORD *)this + 6) = 0;
        *((_DWORD *)this + 7) = 0;
      }
    }
    v2 = (gameswf::root *)operator new(0xD0u, 0);
    gameswf::root::root(v2, v4, this);
    if ( gameswf::s_use_cached_movie_instance )
      gameswf::smart_ptr<gameswf::root>::set_ref((gameswf::ref_counted **)this + 58, v2);
    v6 = *((gameswf::player **)this + 7);
    if ( v6 )
    {
      v7 = *((_BYTE **)this + 6);
      if ( !v7[4] )
      {
        v14 = (*(_DWORD *)v7)-- == 1;
        if ( v14 )
          gameswf::free_internal(v7);
        v6 = nullptr;
        *((_DWORD *)this + 6) = 0;
        *((_DWORD *)this + 7) = 0;
      }
    }
    sprite_instance = (gameswf::character *)gameswf::player::create_sprite_instance(v6, this, v2, nullptr, -1);
    v9 = *(void (__fastcall **)(gameswf::character *, _BYTE *, _BYTE *))(*(_DWORD *)sprite_instance + 28);
    v10 = gameswf::tu_string::tu_string((gameswf::tu_string *)v17, "$version");
    v11 = *((_DWORD *)this + 7);
    if ( v11 )
    {
      v10 = *((gameswf::tu_string **)this + 6);
      if ( !*((_BYTE *)v10 + 4) )
      {
        v14 = (*(_DWORD *)v10)-- == 1;
        if ( v14 )
          gameswf::free_internal(v10);
        v11 = 0;
        *((_DWORD *)this + 7) = 0;
        *((_DWORD *)this + 6) = 0;
      }
    }
    gameswf_version = (const char *)gameswf::get_gameswf_version(v10);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v19, gameswf_version);
    v13 = gameswf::permanent_string_cache::get((char **)(v11 + 44), (const gameswf::tu_string *)v19);
    v16 = 0;
    v15[0] = 0;
    v15[1] = 0;
    gameswf::as_value::set_tu_string((gameswf::as_value *)v15, v13);
    v9(sprite_instance, v17, v15);
    gameswf::as_value::drop_refs((gameswf::as_value *)v15);
    if ( v19[0] == -1 )
      gameswf::free_internal(v20);
    if ( v17[0] == -1 )
      gameswf::free_internal(p);
    gameswf::root::set_root_movie(v2, sprite_instance);
  }
  return v2;
}


// ===== 76020c gameswf::movie_def_impl::create_instance(void) =====
gameswf::root *__fastcall gameswf::movie_def_impl::create_instance(gameswf::movie_def_impl *this)
{
  gameswf::root *root; // r4
  int root_movie; // r0

  root = gameswf::movie_def_impl::create_root(this);
  root_movie = gameswf::root::get_root_movie(root);
  (*(void (__fastcall **)(int, _DWORD, _DWORD))(*(_DWORD *)root_movie + 200))(root_movie, 0, 0);
  return root;
}


// ===== 760238 gameswf::import_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::import_loader(
        gameswf *this,
        gameswf::stream *a2,
        gameswf::character_def *a3,
        gameswf::movie_definition_sub *a4)
{
  int u16; // r8
  gameswf::player *v6; // r0
  _BYTE *v7; // r3
  char *v8; // r1
  int result; // r0
  int v10; // r5
  int v11; // r4
  int v12; // r9
  int v13; // r10
  int v14; // r3
  int v15; // r8
  gameswf::player *player; // r0
  const char *workdir; // r0
  int v19; // r3
  gameswf::player *v20; // r0
  char *v21; // r1
  _BYTE v23[8]; // [sp+10h] [bp-44h] BYREF
  void *p; // [sp+1Ch] [bp-38h]
  unsigned int v25; // [sp+20h] [bp-34h]
  char v26; // [sp+24h] [bp-30h] BYREF
  _BYTE v27[7]; // [sp+25h] [bp-2Fh] BYREF
  char *v28; // [sp+30h] [bp-24h]
  char v29; // [sp+38h] [bp-1Ch] BYREF
  char v30[7]; // [sp+39h] [bp-1Bh] BYREF
  char *v31; // [sp+44h] [bp-10h]
  unsigned int v32; // [sp+48h] [bp-Ch]

  v32 = v32 & 0xFF000000 | 0xFFFFFF;
  HIBYTE(v32) &= ~1u;
  v30[0] = 0;
  v29 = 1;
  gameswf::stream::read_string(this, (gameswf::tu_string *)&v29);
  u16 = gameswf::stream::read_u16(this);
  v6 = *((gameswf::player **)a3 + 7);
  if ( v6 )
  {
    v7 = *((_BYTE **)a3 + 6);
    if ( !v7[4] )
    {
      if ( (*(_DWORD *)v7)-- == 1 )
        gameswf::free_internal(v7);
      v6 = nullptr;
      *((_DWORD *)a3 + 6) = 0;
      *((_DWORD *)a3 + 7) = 0;
    }
  }
  if ( v29 == -1 )
    v8 = v31;
  else
    v8 = v30;
  result = gameswf::player::create_movie(v6, v8);
  v10 = result;
  if ( !result )
  {
    player = (gameswf::player *)gameswf::character_def::get_player(a3);
    workdir = (const char *)gameswf::player::get_workdir(player);
    gameswf::tu_string::tu_string((gameswf::tu_string *)&v26, workdir);
    v19 = v26;
    if ( v26 == -1 )
      v19 = *(_DWORD *)&v27[3];
    if ( v19 == 1
      || ((gameswf::tu_string::operator+=((gameswf::tu_string *)&v26, &v29),
           v20 = (gameswf::player *)gameswf::character_def::get_player(a3),
           v26 == -1)
        ? (v21 = v28)
        : (v21 = v27),
          result = gameswf::player::create_movie(v20, v21),
          (v10 = result) == 0) )
    {
      if ( v29 == -1 )
        result = gameswf::log_error((gameswf *)"can't import movie from url %s\n", v31);
      else
        result = gameswf::log_error((gameswf *)"can't import movie from url %s\n", v30);
      if ( v26 == -1 )
        gameswf::free_internal(v28);
      goto LABEL_20;
    }
    if ( v26 == -1 )
      gameswf::free_internal(v28);
  }
  if ( u16 )
  {
    v11 = 0;
    v12 = u16;
    while ( 1 )
    {
      v13 = gameswf::stream::read_u16(this);
      v25 = v25 & 0xFF000000 | 0xFFFFFF;
      v23[1] = 0;
      HIBYTE(v25) &= ~1u;
      v23[0] = 1;
      gameswf::stream::read_string(this, (gameswf::tu_string *)v23);
      if ( (*(int (__fastcall **)(int, int))(*(_DWORD *)v10 + 8))(v10, 8) )
        v14 = v10;
      else
        v14 = 0;
      result = (*(int (__fastcall **)(int, _BYTE *))(*(_DWORD *)v14 + 88))(v14, v23);
      v15 = result;
      if ( !result )
        goto LABEL_11;
      if ( (*(int (__fastcall **)(int, int))(*(_DWORD *)result + 8))(result, 19) )
      {
        result = (*(int (__fastcall **)(gameswf::character_def *, int, int))(*(_DWORD *)a3 + 120))(a3, v13, v15);
        if ( v23[0] == -1 )
          goto LABEL_19;
LABEL_12:
        if ( v12 <= ++v11 )
          break;
      }
      else
      {
        result = (*(int (__fastcall **)(int, int))(*(_DWORD *)v15 + 8))(v15, 10);
        if ( result )
          result = (*(int (__fastcall **)(gameswf::character_def *, int, int))(*(_DWORD *)a3 + 116))(a3, v13, v15);
LABEL_11:
        if ( v23[0] != -1 )
          goto LABEL_12;
LABEL_19:
        ++v11;
        gameswf::free_internal(p);
        if ( v12 <= v11 )
          break;
      }
    }
  }
LABEL_20:
  if ( v29 == -1 )
    gameswf::free_internal(v31);
  return result;
}


// ===== 760560 gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::reserve(int) =====
void __fastcall gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::reserve(int a1, int a2)
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


// ===== 7605dc gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::resize(int) =====
void __fastcall gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::resize(_DWORD *a1, int a2)
{
  int v2; // r8
  int v5; // r5
  int v6; // r4
  _DWORD *v7; // r3
  int v9; // r3
  int v10; // r8
  _DWORD *v11; // r0

  v2 = a1[1];
  if ( v2 > a2 )
  {
    v5 = 8 * a2;
    v6 = a2;
    do
    {
      ++v6;
      v7 = *(_DWORD **)(*a1 + v5);
      v5 += 8;
      if ( v7 )
      {
        if ( (*v7)-- == 1 )
          gameswf::free_internal(v7);
      }
    }
    while ( v6 != v2 );
  }
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v2 < a2 )
  {
    v9 = v2;
    v10 = 8 * v2;
    do
    {
      ++v9;
      v11 = (_DWORD *)(*a1 + v10);
      *v11 = 0;
      v11[1] = 0;
      v10 += 8;
    }
    while ( v9 != a2 );
  }
  a1[1] = a2;
}


// ===== 76069c gameswf::array<gameswf::as_value>::push_back<int>(int const&) =====
double __fastcall gameswf::array<gameswf::as_value>::push_back<int>(_DWORD *a1, int *a2)
{
  int v2; // r3
  int v3; // r6
  int v6; // r0
  int v7; // r5
  double result; // r0

  v2 = a1[1];
  v3 = v2 + 1;
  if ( v2 + 1 > a1[2] )
  {
    gameswf::array<gameswf::as_value>::reserve((int)a1, v3 + (v3 >> 1));
    v2 = a1[1];
  }
  v6 = *a2;
  v7 = *a1 + 12 * v2;
  *(_BYTE *)v7 = 0;
  *(_BYTE *)(v7 + 1) = 2;
  result = (double)v6;
  *(double *)(v7 + 4) = result;
  a1[1] = v3;
  return result;
}


// ===== 760718 gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::operator=(gameswf::array<gameswf::weak_ptr<gameswf::as_object>> const&) =====
void __fastcall gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::operator=(int *a1, _DWORD *a2)
{
  int v4; // r4
  int v5; // r7
  int v6; // r6
  _DWORD *v7; // r3
  _DWORD *v8; // r5
  int v9; // r11
  int v10; // r10

  gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::resize(a1, a2[1]);
  if ( a1[1] > 0 )
  {
    v4 = 0;
    do
    {
      v5 = *a1;
      v6 = 8 * v4;
      v7 = *(_DWORD **)(*a1 + 8 * v4);
      v8 = *(_DWORD **)(*a2 + 8 * v4);
      v9 = *a1 + 8 * v4++;
      v10 = *a2 + v6;
      if ( v8 != v7 )
      {
        if ( v7 )
        {
          if ( (*v7)-- == 1 )
            gameswf::free_internal(v7);
        }
        *(_DWORD *)(v5 + v6) = v8;
        if ( v8 )
          ++*v8;
      }
      *(_DWORD *)(v9 + 4) = *(_DWORD *)(v10 + 4);
    }
    while ( a1[1] > v4 );
  }
}


// ===== 7607b8 gameswf::listener::notify(gameswf::event_id const&) =====
void __fastcall gameswf::listener::notify(_DWORD *a1, int a2)
{
  int v2; // r4
  int v4; // r10
  int v5; // r6
  int v6; // r8
  int v7; // r7
  void (__fastcall ***v8)(_DWORD); // r5
  int v9; // r3
  void *v10; // r0
  int v12; // [sp+8h] [bp-14h] BYREF
  int v13; // [sp+Ch] [bp-10h]
  int v14; // [sp+10h] [bp-Ch]
  char v15; // [sp+14h] [bp-8h]

  v2 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::operator=(&v12, a1);
  v4 = v13;
  if ( v13 > 0 )
  {
    while ( 1 )
    {
      v5 = v12;
      v6 = 8 * v2;
      v7 = v12 + 8 * v2;
      v8 = *(void (__fastcall ****)(_DWORD))(v7 + 4);
      if ( !v8 )
        goto LABEL_4;
      v9 = *(_DWORD *)(v12 + 8 * v2);
      if ( *(_BYTE *)(v9 + 4) )
      {
        gameswf::ref_counted::add_ref(*(_DWORD *)(v7 + 4));
        ((void (__fastcall *)(void (__fastcall ***)(_DWORD), int))(*v8)[11])(v8, a2);
        gameswf::ref_counted::drop_ref(v8);
LABEL_4:
        if ( ++v2 == v4 )
          break;
      }
      else
      {
        v10 = *(void **)(v12 + 8 * v2);
        if ( (*(_DWORD *)v9)-- == 1 )
          gameswf::free_internal(v10);
        ++v2;
        *(_DWORD *)(v5 + v6) = 0;
        *(_DWORD *)(v7 + 4) = 0;
        if ( v2 == v4 )
          break;
      }
    }
  }
  gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::resize(&v12, 0);
  gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::reserve((int)&v12, 0);
}


// ===== 7608a4 gameswf::listener::size(void) =====
int __fastcall gameswf::listener::size(gameswf::listener *this)
{
  int v1; // r9
  int v3; // r8
  int v4; // r4
  int v5; // r5
  int v6; // r7
  int v7; // r6
  int v8; // r3
  void *v9; // r0

  v1 = *((_DWORD *)this + 1);
  if ( v1 > 0 )
  {
    v4 = 0;
    v3 = 0;
    while ( 1 )
    {
      while ( 1 )
      {
        v5 = *(_DWORD *)this;
        v6 = 8 * v4;
        v7 = *(_DWORD *)this + 8 * v4;
        if ( *(_DWORD *)(v7 + 4) )
          break;
LABEL_4:
        if ( ++v4 == v1 )
          return v3;
      }
      v8 = *(_DWORD *)(v5 + 8 * v4);
      if ( *(_BYTE *)(v8 + 4) )
      {
        ++v3;
        goto LABEL_4;
      }
      v9 = *(void **)(v5 + 8 * v4);
      if ( (*(_DWORD *)v8)-- == 1 )
        gameswf::free_internal(v9);
      ++v4;
      *(_DWORD *)(v5 + v6) = 0;
      *(_DWORD *)(v7 + 4) = 0;
      if ( v4 == v1 )
        return v3;
    }
  }
  return 0;
}


// ===== 760940 gameswf::listener::alive(void) =====
void __fastcall gameswf::listener::alive(gameswf::listener *this)
{
  int v1; // r3
  int v3; // r4
  int v4; // r5
  int v5; // r6
  int v6; // r2
  int v7; // r3
  void *v8; // r0

  v1 = *((_DWORD *)this + 1);
  if ( v1 > 0 )
  {
    v3 = 0;
    while ( 1 )
    {
      v4 = *(_DWORD *)this;
      v5 = *(_DWORD *)this + 8 * v3;
      v6 = *(_DWORD *)(v5 + 4);
      if ( !v6 )
        goto LABEL_4;
      v7 = *(_DWORD *)(v4 + 8 * v3);
      if ( *(_BYTE *)(v7 + 4) )
      {
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 68))(*(_DWORD *)(v5 + 4));
        v1 = *((_DWORD *)this + 1);
LABEL_4:
        if ( ++v3 >= v1 )
          return;
      }
      else
      {
        v8 = *(void **)(v4 + 8 * v3);
        if ( (*(_DWORD *)v7)-- == 1 )
          gameswf::free_internal(v8);
        *(_DWORD *)(v4 + 8 * v3) = 0;
        *(_DWORD *)(v5 + 4) = 0;
        v1 = *((_DWORD *)this + 1);
        if ( ++v3 >= v1 )
          return;
      }
    }
  }
}


// ===== 7609e4 gameswf::listener::enumerate(gameswf::as_environment *) =====
void __fastcall gameswf::listener::enumerate(gameswf::listener *this, gameswf::as_environment *a2)
{
  int v2; // r9
  int v5; // r4
  int v6; // r8
  int v7; // r5
  int v8; // r7
  int v9; // r6
  int v10; // r3
  void *v11; // r0
  int v13; // [sp+Ch] [bp-8h] BYREF

  v2 = *((_DWORD *)this + 1);
  if ( v2 > 0 )
  {
    v5 = 0;
    v6 = 0;
    while ( 1 )
    {
      v7 = *(_DWORD *)this;
      v8 = 8 * v5;
      v9 = *(_DWORD *)this + 8 * v5;
      if ( !*(_DWORD *)(v9 + 4) )
        goto LABEL_4;
      v10 = *(_DWORD *)(v7 + 8 * v5);
      if ( *(_BYTE *)(v10 + 4) )
      {
        v13 = v6;
        gameswf::array<gameswf::as_value>::push_back<int>(a2, &v13);
        ++v6;
LABEL_4:
        if ( ++v5 == v2 )
          return;
      }
      else
      {
        v11 = *(void **)(v7 + 8 * v5);
        if ( (*(_DWORD *)v10)-- == 1 )
          gameswf::free_internal(v11);
        ++v5;
        *(_DWORD *)(v7 + v8) = 0;
        *(_DWORD *)(v9 + 4) = 0;
        if ( v5 == v2 )
          return;
      }
    }
  }
}


// ===== 760a9c gameswf::weak_ptr<gameswf::as_object>::check_proxy(void) =====
void __fastcall gameswf::weak_ptr<gameswf::as_object>::check_proxy(int a1)
{
  _BYTE *v2; // r0

  if ( *(_DWORD *)(a1 + 4) )
  {
    v2 = *(_BYTE **)a1;
    if ( !v2[4] )
    {
      if ( (*(_DWORD *)v2)-- == 1 )
        gameswf::free_internal(v2);
      *(_DWORD *)(a1 + 4) = 0;
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 760aec gameswf::listener::notify(gameswf::tu_string const&,gameswf::fn_call const&) =====
void __fastcall gameswf::listener::notify(
        gameswf::listener *this,
        const gameswf::tu_string *a2,
        const gameswf::fn_call *a3)
{
  int v3; // r4
  gameswf::player *v5; // r0
  _BYTE *v7; // r3
  gameswf::listener *v8; // r1
  int v9; // r5
  void (__fastcall *v10)(_DWORD); // r10
  int v11; // r10
  int v12; // r10
  int v13; // r9
  void (__fastcall ***v14)(_DWORD); // r4
  _BYTE *v15; // r0
  bool v16; // zf
  int v17; // [sp+14h] [bp-78h]
  int v19; // [sp+3Ch] [bp-50h] BYREF
  int v20; // [sp+40h] [bp-4Ch]
  int v21; // [sp+44h] [bp-48h]
  char v22; // [sp+48h] [bp-44h]
  _BYTE v23[12]; // [sp+4Ch] [bp-40h] BYREF
  _BYTE v24[4]; // [sp+58h] [bp-34h] BYREF
  void (__fastcall ***v25)(_DWORD); // [sp+5Ch] [bp-30h]
  _BYTE v26[12]; // [sp+64h] [bp-28h] BYREF
  _BYTE v27[8]; // [sp+70h] [bp-1Ch] BYREF
  void *p; // [sp+7Ch] [bp-10h]

  v3 = *((_DWORD *)a3 + 3);
  v5 = *(gameswf::player **)(v3 + 104);
  if ( v5 )
  {
    v7 = *(_BYTE **)(v3 + 100);
    if ( !v7[4] )
    {
      v16 = (*(_DWORD *)v7)-- == 1;
      if ( v16 )
        gameswf::free_internal(v7);
      v5 = nullptr;
      *(_DWORD *)(v3 + 104) = 0;
      *(_DWORD *)(v3 + 100) = 0;
    }
  }
  if ( gameswf::player::get_root(v5) )
  {
    v8 = this;
    v9 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::operator=(&v19, v8);
    v17 = v20;
    if ( v20 > 0 )
    {
      do
      {
        while ( 1 )
        {
          v12 = v19;
          v13 = v19 + 8 * v9;
          v14 = *(void (__fastcall ****)(_DWORD))(v13 + 4);
          if ( v14 )
            break;
LABEL_11:
          if ( ++v9 == v17 )
            goto LABEL_18;
        }
        v15 = *(_BYTE **)(v19 + 8 * v9);
        if ( v15[4] )
        {
          gameswf::ref_counted::add_ref(*(_DWORD *)(v13 + 4));
          v26[0] = 0;
          v26[1] = 0;
          v10 = (*v14)[8];
          gameswf::tu_string::tu_string((gameswf::tu_string *)v27, a2);
          v11 = ((int (__fastcall *)(void (__fastcall ***)(_DWORD), _BYTE *, _BYTE *))v10)(v14, v27, v26);
          if ( v27[0] == -1 )
            gameswf::free_internal(p);
          if ( v11 )
          {
            v24[1] = 5;
            v24[0] = 0;
            v25 = v14;
            gameswf::ref_counted::add_ref((int)v14);
            gameswf::call_method(
              (int)v23,
              (gameswf::as_value *)v26,
              *((_DWORD *)a3 + 3),
              (int)v24,
              *((_DWORD *)a3 + 4),
              *(_DWORD *)(*((_DWORD *)a3 + 3) + 4) - 1,
              (int)"???");
            gameswf::as_value::drop_refs((gameswf::as_value *)v23);
            gameswf::as_value::drop_refs((gameswf::as_value *)v24);
          }
          gameswf::as_value::drop_refs((gameswf::as_value *)v26);
          gameswf::ref_counted::drop_ref(v14);
          goto LABEL_11;
        }
        v16 = (*(_DWORD *)v15)-- == 1;
        if ( v16 )
          gameswf::free_internal(v15);
        *(_DWORD *)(v12 + 8 * v9) = 0;
        *(_DWORD *)(v13 + 4) = 0;
        ++v9;
      }
      while ( v9 != v17 );
    }
LABEL_18:
    gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::resize(&v19, 0);
    gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::reserve((int)&v19, 0);
  }
}


// ===== 760d58 gameswf::listener::advance(float) =====
void __fastcall gameswf::listener::advance(gameswf::listener *this, float a2)
{
  int v2; // r4
  int v4; // r10
  int v5; // r6
  int v6; // r8
  int v7; // r7
  void (__fastcall ***v8)(_DWORD); // r5
  int v9; // r3
  void *v10; // r0
  int v12; // [sp+8h] [bp-14h] BYREF
  int v13; // [sp+Ch] [bp-10h]
  int v14; // [sp+10h] [bp-Ch]
  char v15; // [sp+14h] [bp-8h]

  v2 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::operator=(&v12, this);
  v4 = v13;
  if ( v13 > 0 )
  {
    while ( 1 )
    {
      v5 = v12;
      v6 = 8 * v2;
      v7 = v12 + 8 * v2;
      v8 = *(void (__fastcall ****)(_DWORD))(v7 + 4);
      if ( !v8 )
        goto LABEL_4;
      v9 = *(_DWORD *)(v12 + 8 * v2);
      if ( *(_BYTE *)(v9 + 4) )
      {
        gameswf::ref_counted::add_ref(*(_DWORD *)(v7 + 4));
        ((void (__fastcall *)(void (__fastcall ***)(_DWORD), _DWORD))(*v8)[23])(v8, LODWORD(a2));
        gameswf::ref_counted::drop_ref(v8);
LABEL_4:
        if ( ++v2 == v4 )
          break;
      }
      else
      {
        v10 = *(void **)(v12 + 8 * v2);
        if ( (*(_DWORD *)v9)-- == 1 )
          gameswf::free_internal(v10);
        ++v2;
        *(_DWORD *)(v5 + v6) = 0;
        *(_DWORD *)(v7 + 4) = 0;
        if ( v2 == v4 )
          break;
      }
    }
  }
  gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::resize(&v12, 0);
  gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::reserve((int)&v12, 0);
}


// ===== 760e44 gameswf::listener::remove(gameswf::as_object *) =====
void __fastcall gameswf::listener::remove(gameswf::listener *this, gameswf::as_object *a2)
{
  int v2; // r10
  int v5; // r4
  int v6; // r5
  int v7; // r6
  int v8; // r7
  gameswf::as_object *v9; // r2
  int v10; // r3
  void *v11; // r0

  v2 = *((_DWORD *)this + 1);
  if ( v2 > 0 )
  {
    v5 = 0;
    while ( 1 )
    {
      v6 = *(_DWORD *)this;
      v7 = 8 * v5;
      v8 = *(_DWORD *)this + 8 * v5;
      v9 = *(gameswf::as_object **)(v8 + 4);
      if ( !v9 || (v10 = *(_DWORD *)(v6 + 8 * v5), *(_BYTE *)(v10 + 4)) )
      {
        ++v5;
        if ( a2 != v9 )
          goto LABEL_4;
LABEL_11:
        gameswf::weak_ptr<gameswf::as_object>::operator=(*(_DWORD *)this + v7, nullptr);
        if ( v5 == v2 )
          return;
      }
      else
      {
        v11 = *(void **)(v6 + 8 * v5);
        if ( (*(_DWORD *)v10)-- == 1 )
          gameswf::free_internal(v11);
        *(_DWORD *)(v6 + 8 * v5++) = 0;
        *(_DWORD *)(v8 + 4) = 0;
        if ( !a2 )
          goto LABEL_11;
LABEL_4:
        if ( v5 == v2 )
          return;
      }
    }
  }
}


// ===== 760ef8 gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::push_back<gameswf::as_object*>(gameswf::as_object* const&) =====
void __fastcall gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::push_back<gameswf::as_object*>(
        _DWORD *a1,
        gameswf::ref_counted **a2)
{
  int v2; // r3
  int v4; // r5
  gameswf::ref_counted *v6; // r1
  _DWORD *v7; // r0

  v2 = a1[1];
  v4 = v2 + 1;
  if ( v2 + 1 > a1[2] )
  {
    gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::reserve((int)a1, v4 + (v4 >> 1));
    v2 = a1[1];
  }
  v6 = *a2;
  v7 = (_DWORD *)(*a1 + 8 * v2);
  *v7 = 0;
  v7[1] = 0;
  gameswf::weak_ptr<gameswf::as_object>::operator=((int)v7, v6);
  a1[1] = v4;
}


// ===== 760f4c gameswf::listener::add(gameswf::as_object *) =====
void __fastcall gameswf::listener::add(gameswf::listener *this, gameswf::as_object *a2)
{
  gameswf::ref_counted *v2; // r10
  int v4; // r11
  int v5; // r4
  int v6; // r3
  int v7; // r6
  int v8; // r7
  _BYTE *v9; // r0
  int v10; // r6
  int v11; // r7
  gameswf::ref_counted *v12; // r2
  _BYTE *v13; // r0
  bool v14; // zf
  int v15; // [sp+0h] [bp-Ch]
  gameswf::ref_counted *v16; // [sp+4h] [bp-8h] BYREF

  v2 = a2;
  v16 = a2;
  if ( !a2 )
    return;
  v4 = *((_DWORD *)this + 1);
  if ( v4 <= 0 )
    goto LABEL_23;
  v5 = 0;
  v6 = -1;
  while ( 1 )
  {
    v10 = *(_DWORD *)this;
    v11 = *(_DWORD *)this + 8 * v5;
    v12 = *(gameswf::ref_counted **)(v11 + 4);
    if ( !v12 || (v13 = *(_BYTE **)(v10 + 8 * v5), v13[4]) )
    {
      if ( v2 == v12 )
        return;
    }
    else
    {
      v14 = (*(_DWORD *)v13)-- == 1;
      if ( v14 )
      {
        v15 = v6;
        gameswf::free_internal(v13);
        v6 = v15;
      }
      *(_DWORD *)(v10 + 8 * v5) = 0;
      *(_DWORD *)(v11 + 4) = 0;
      if ( !v2 )
        return;
    }
    v7 = *(_DWORD *)this;
    v8 = *(_DWORD *)this + 8 * v5;
    if ( !*(_DWORD *)(v8 + 4) )
      break;
    v9 = *(_BYTE **)(v7 + 8 * v5);
    if ( !v9[4] )
    {
      v14 = (*(_DWORD *)v9)-- == 1;
      if ( v14 )
        gameswf::free_internal(v9);
      *(_DWORD *)(v7 + 8 * v5) = 0;
      *(_DWORD *)(v8 + 4) = 0;
      break;
    }
    if ( ++v5 == v4 )
      goto LABEL_21;
LABEL_8:
    v2 = v16;
  }
  v6 = v5++;
  if ( v5 != v4 )
    goto LABEL_8;
LABEL_21:
  if ( v6 != -1 )
  {
    gameswf::weak_ptr<gameswf::as_object>::operator=(*(_DWORD *)this + 8 * v6, v16);
    return;
  }
LABEL_23:
  gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::push_back<gameswf::as_object*>(this, &v16);
}


// ===== 76107c gameswf::listener::operator[](int) =====
int __fastcall gameswf::listener::operator[](int *a1, int a2)
{
  int v4; // r7
  int v5; // r4
  int v6; // r6
  int v7; // r12
  int v8; // r5
  int v9; // r10
  int v10; // r3
  void *v11; // r0
  int v14; // [sp+4h] [bp-8h]

  if ( a2 < 0 )
    return 0;
  v4 = a1[1];
  if ( a2 >= v4 || v4 <= 0 )
    return 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  while ( 1 )
  {
    v8 = *a1;
    v9 = *a1 + 8 * v5;
    if ( !*(_DWORD *)(v9 + 4) )
      goto LABEL_7;
    v10 = *(_DWORD *)(v8 + 8 * v5);
    if ( !*(_BYTE *)(v10 + 4) )
    {
      v11 = *(void **)(v8 + 8 * v5);
      if ( (*(_DWORD *)v10)-- == 1 )
      {
        v14 = v7;
        gameswf::free_internal(v11);
        v7 = v14;
      }
      *(_DWORD *)(v8 + 8 * v5) = v7;
      *(_DWORD *)(v9 + 4) = v7;
      goto LABEL_7;
    }
    if ( v6 == a2 )
      break;
    ++v6;
LABEL_7:
    if ( ++v5 == v4 )
      return 0;
  }
  gameswf::weak_ptr<gameswf::as_object>::check_proxy(*a1 + 8 * v5);
  return *(_DWORD *)(v9 + 4);
}


// ===== 761144 gameswf::listener::operator[](gameswf::tu_stringi const&) =====
int __fastcall gameswf::listener::operator[](int *a1, char *a2)
{
  const char *v3; // r0
  int v4; // r1

  if ( *a2 == -1 )
    v3 = *((const char **)a2 + 3);
  else
    v3 = a2 + 1;
  v4 = LC_API_ATOI_0(v3);
  return gameswf::listener::operator[](a1, v4);
}


// ===== 761170 gameswf::register_log_callback(void (*)(bool,char const*)) =====
_DWORD (__fastcall *__fastcall gameswf::register_log_callback(
        _DWORD (__fastcall *this)(gameswf *__hidden this, char *format, const char *),
        void (*a2)(bool, const char *)))(gameswf *__hidden this, char *format, const char *)
{
  gameswf::s_log_callback = this;
  return this;
}


// ===== 761184 gameswf::log_error(char const*,...) =====
const char *gameswf::log_error(const char *this, const char *a2, ...)
{
  const char *v2; // r2
  char varg_r1; // [sp+1Ch] [bp+10h] BYREF

  if ( gameswf::s_log_callback )
  {
    vsnprintf(gameswf::s_buffer, 0x1F4u, this, (__gnuc_va_list)&varg_r1);
    return (const char *)gameswf::s_log_callback((gameswf *)((char *)&dword_0 + 1), gameswf::s_buffer, v2);
  }
  return this;
}


// ===== 7611f0 gameswf::log_msg(char const*,...) =====
const char *gameswf::log_msg(const char *this, const char *a2, ...)
{
  const char *v2; // r2
  char varg_r1; // [sp+1Ch] [bp+10h] BYREF

  if ( gameswf::s_log_callback )
  {
    vsnprintf(gameswf::s_buffer, 0x1F4u, this, (__gnuc_va_list)&varg_r1);
    return (const char *)gameswf::s_log_callback(nullptr, gameswf::s_buffer, v2);
  }
  return this;
}


// ===== 76125c gameswf::standard_logger(bool,char const*) =====
int __fastcall gameswf::standard_logger(gameswf *this, char *format, const char *a3)
{
  if ( this )
    return fprintf((FILE *)&_sF + 2, format, a3);
  else
    return printf(format, format, a3, &__GLOBAL_OFFSET_TABLE_);
}


// ===== 76128c gameswf::matrix::concatenate_scale(float) =====
bool __fastcall gameswf::matrix::concatenate_scale(gameswf::matrix *this, float a2)
{
  float v4; // r6
  float v5; // r6
  float v6; // r6
  float v7; // r1
  float v8; // r5
  _BOOL4 result; // r0

  v4 = a2 * *(float *)this;
  if ( v4 < -3.4028e38 || v4 > 3.4028e38 )
    v4 = 0.0;
  *(float *)this = v4;
  v5 = a2 * *((float *)this + 1);
  if ( v5 < -3.4028e38 || v5 > 3.4028e38 )
    v5 = 0.0;
  *((float *)this + 1) = v5;
  v6 = a2 * *((float *)this + 3);
  if ( v6 < -3.4028e38 || v6 > 3.4028e38 )
    v6 = 0.0;
  v7 = *((float *)this + 4);
  *((float *)this + 3) = v6;
  v8 = a2 * v7;
  result = v8 >= -3.4028e38;
  if ( v8 < -3.4028e38 || (result = v8 <= 3.4028e38, v8 > 3.4028e38) )
    *((_DWORD *)this + 4) = 0;
  else
    *((float *)this + 4) = v8;
  return result;
}


// ===== 7613b0 gameswf::base_fill_style::~base_fill_style() =====
void __fastcall gameswf::base_fill_style::~base_fill_style(gameswf::base_fill_style *this)
{
  ;
}


// ===== 7613b4 gameswf::base_line_style::~base_line_style() =====
void __fastcall gameswf::base_line_style::~base_line_style(gameswf::base_line_style *this)
{
  ;
}


// ===== 7613b8 gameswf::destruct<gameswf::shape_character_def>(gameswf::shape_character_def const*) =====
void __fastcall gameswf::destruct<gameswf::shape_character_def>(void (__fastcall ***a1)(_DWORD))
{
  if ( a1 )
  {
    (**a1)(a1);
    gameswf::free_internal(a1);
  }
}


// ===== 7613e4 gameswf::array<gameswf::fill_style>::reserve(int) =====
void __fastcall gameswf::array<gameswf::fill_style>::reserve(int a1, int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 84 * a2, 84 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(84 * a2);
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


// ===== 76146c gameswf::array<gameswf::fill_style>::resize(int) =====
void __fastcall gameswf::array<gameswf::fill_style>::resize(_DWORD *a1, int a2)
{
  int v2; // r6
  int v5; // r7
  int v6; // r8
  int v7; // r7

  v2 = a1[1];
  if ( v2 > a2 )
  {
    v5 = 84 * a2;
    v6 = a2;
    do
    {
      ++v6;
      (**(void (__fastcall ***)(int))(*a1 + v5))(*a1 + v5);
      v5 += 84;
    }
    while ( v6 != v2 );
  }
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::fill_style>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v2 < a2 )
  {
    v7 = 84 * v2;
    do
    {
      ++v2;
      gameswf::fill_style::fill_style((gameswf::fill_style *)(*a1 + v7));
      v7 += 84;
    }
    while ( v2 != a2 );
  }
  a1[1] = a2;
}


// ===== 76150c gameswf::array<gameswf::line_style>::reserve(int) =====
void __fastcall gameswf::array<gameswf::line_style>::reserve(int a1, int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 108 * a2, 108 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(108 * a2);
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


// ===== 761594 gameswf::array<gameswf::line_style>::resize(int) =====
void __fastcall gameswf::array<gameswf::line_style>::resize(_DWORD *a1, int a2)
{
  int v2; // r6
  int v5; // r7
  int v6; // r8
  int v7; // r7

  v2 = a1[1];
  if ( v2 > a2 )
  {
    v5 = 108 * a2;
    v6 = a2;
    do
    {
      ++v6;
      (**(void (__fastcall ***)(int))(*a1 + v5))(*a1 + v5);
      v5 += 108;
    }
    while ( v6 != v2 );
  }
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::line_style>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v2 < a2 )
  {
    v7 = 108 * v2;
    do
    {
      ++v2;
      gameswf::line_style::line_style((gameswf::line_style *)(*a1 + v7));
      v7 += 108;
    }
    while ( v2 != a2 );
  }
  a1[1] = a2;
}


// ===== 761634 gameswf::array<gameswf::gradient_record>::reserve(int) =====
void __fastcall gameswf::array<gameswf::gradient_record>::reserve(int a1, int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 5 * a2, 5 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(5 * a2);
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


// ===== 7616b0 gameswf::array<gameswf::edge>::reserve(int) =====
void __fastcall gameswf::array<gameswf::edge>::reserve(int a1, int a2)
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


// ===== 76172c gameswf::array<gameswf::path>::reserve(int) =====
void __fastcall gameswf::array<gameswf::path>::reserve(int a1, int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 40 * a2, 40 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(40 * a2);
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


// ===== 7617b4 gameswf::base_fill_style::~base_fill_style() =====
void __fastcall gameswf::base_fill_style::~base_fill_style(gameswf::base_fill_style *this)
{
  LC_API_FREE_0(this);
}


// ===== 7617c8 gameswf::base_line_style::~base_line_style() =====
void __fastcall gameswf::base_line_style::~base_line_style(gameswf::base_line_style *this)
{
  LC_API_FREE_0(this);
}


// ===== 7617dc gameswf::smart_ptr<gameswf::bitmap_character_def>::set_ref(gameswf::bitmap_character_def*) =====
void __fastcall gameswf::smart_ptr<gameswf::bitmap_character_def>::set_ref(
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


// ===== 76181c gameswf::array<gameswf::gradient_record>::resize(int) =====
void __fastcall gameswf::array<gameswf::gradient_record>::resize(_DWORD *a1, int a2)
{
  int v4; // r6
  int v5; // r6
  gameswf::gradient_record *v6; // r0

  v4 = a1[1];
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::gradient_record>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v4 < a2 )
  {
    v5 = 5 * v4;
    do
    {
      v6 = (gameswf::gradient_record *)(*a1 + v5);
      v5 += 5;
      gameswf::gradient_record::gradient_record(v6);
    }
    while ( v5 != 5 * a2 );
  }
  a1[1] = a2;
}


// ===== 761878 gameswf::fill_style::fill_style(gameswf::fill_style const&) =====
gameswf::fill_style *__fastcall gameswf::fill_style::fill_style(
        gameswf::fill_style *this,
        const gameswf::fill_style *a2)
{
  _DWORD *v2; // r12
  _DWORD *v3; // lr
  int v6; // r6
  int v7; // r0
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v11; // r1
  int v12; // r7
  int v13; // r0
  int v14; // r0
  int *v15; // r5
  int v16; // r0
  int v17; // r1
  int v18; // r2
  int v19; // r3
  int v20; // r1

  v2 = (_DWORD *)((char *)this + 12);
  v3 = (_DWORD *)((char *)a2 + 12);
  *(_DWORD *)this = off_990900;
  *((_DWORD *)this + 1) = *((_DWORD *)a2 + 1);
  v6 = 0;
  *((_DWORD *)this + 2) = *((_DWORD *)a2 + 2);
  v7 = *((_DWORD *)a2 + 3);
  v8 = *((_DWORD *)a2 + 4);
  v9 = v3[2];
  v10 = v3[3];
  v3 += 4;
  *v2 = v7;
  v2[1] = v8;
  v2[2] = v9;
  v2[3] = v10;
  v2 += 4;
  v11 = v3[1];
  *v2 = *v3;
  v2[1] = v11;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_BYTE *)this + 48) = 0;
  gameswf::array<gameswf::gradient_record>::resize((_DWORD *)this + 9, *((_DWORD *)a2 + 10));
  if ( *((int *)this + 10) > 0 )
  {
    v12 = 0;
    do
    {
      memcpy((void *)(*((_DWORD *)this + 9) + v6), (const void *)(*((_DWORD *)a2 + 9) + v6), 5u);
      ++v12;
      v6 += 5;
    }
    while ( v12 < *((_DWORD *)this + 10) );
  }
  v13 = *((_DWORD *)a2 + 13);
  *((_DWORD *)this + 13) = v13;
  if ( v13 )
    gameswf::ref_counted::add_ref(v13);
  v14 = *((_DWORD *)a2 + 14);
  *((_DWORD *)this + 14) = v14;
  if ( v14 )
    gameswf::ref_counted::add_ref(v14);
  v15 = (int *)((char *)a2 + 60);
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  v19 = v15[3];
  v15 += 4;
  *((_DWORD *)this + 15) = v16;
  *((_DWORD *)this + 16) = v17;
  *((_DWORD *)this + 17) = v18;
  *((_DWORD *)this + 18) = v19;
  v20 = v15[1];
  *((_DWORD *)this + 19) = *v15;
  *((_DWORD *)this + 20) = v20;
  return this;
}


// ===== 761970 gameswf::array<gameswf::fill_style>::push_back<gameswf::fill_style>(gameswf::fill_style const&) =====
gameswf::fill_style *__fastcall gameswf::array<gameswf::fill_style>::push_back<gameswf::fill_style>(
        _DWORD *a1,
        gameswf::fill_style *a2)
{
  int v2; // r3
  int v4; // r5
  gameswf::fill_style *result; // r0

  v2 = a1[1];
  v4 = v2 + 1;
  if ( v2 + 1 > a1[2] )
  {
    gameswf::array<gameswf::fill_style>::reserve((int)a1, v4 + (v4 >> 1));
    v2 = a1[1];
  }
  result = gameswf::fill_style::fill_style((gameswf::fill_style *)(*a1 + 84 * v2), a2);
  a1[1] = v4;
  return result;
}


// ===== 7619b8 gameswf::array<gameswf::line_style>::push_back<gameswf::line_style>(gameswf::line_style const&) =====
gameswf::fill_style *__fastcall gameswf::array<gameswf::line_style>::push_back<gameswf::line_style>(int *a1, int a2)
{
  int v2; // r3
  int v3; // r8
  int v6; // r3
  int v7; // r4
  int v8; // r4
  gameswf::fill_style *result; // r0

  v2 = a1[1];
  v3 = v2 + 1;
  if ( v2 + 1 > a1[2] )
  {
    gameswf::array<gameswf::line_style>::reserve((int)a1, v3 + (v3 >> 1));
    v2 = a1[1];
  }
  v6 = 108 * v2;
  v7 = *a1;
  *(_DWORD *)(v7 + v6) = off_9908E8;
  v8 = v7 + v6;
  *(_WORD *)(v8 + 4) = *(_WORD *)(a2 + 4);
  *(_WORD *)(v8 + 6) = *(_WORD *)(a2 + 6);
  *(_WORD *)(v8 + 8) = *(_WORD *)(a2 + 8);
  result = gameswf::fill_style::fill_style((gameswf::fill_style *)(v8 + 12), (const gameswf::fill_style *)(a2 + 12));
  *(_BYTE *)(v8 + 96) = *(_BYTE *)(a2 + 96);
  *(_BYTE *)(v8 + 97) = *(_BYTE *)(a2 + 97);
  *(_BYTE *)(v8 + 98) = *(_BYTE *)(a2 + 98);
  *(_BYTE *)(v8 + 99) = *(_BYTE *)(a2 + 99);
  *(_BYTE *)(v8 + 100) = *(_BYTE *)(a2 + 100);
  *(_BYTE *)(v8 + 101) = *(_BYTE *)(a2 + 101);
  *(_BYTE *)(v8 + 102) = *(_BYTE *)(a2 + 102);
  *(_BYTE *)(v8 + 103) = *(_BYTE *)(a2 + 103);
  *(_WORD *)(v8 + 104) = *(_WORD *)(a2 + 104);
  a1[1] = v3;
  return result;
}


// ===== 761a8c gameswf::array<gameswf::edge>::resize(int) =====
void __fastcall gameswf::array<gameswf::edge>::resize(_DWORD *a1, int a2)
{
  int v4; // r6
  int v5; // r7
  int v6; // r6

  v4 = a1[1];
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::edge>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v4 < a2 )
  {
    v5 = v4;
    v6 = 16 * v4;
    do
    {
      ++v5;
      gameswf::edge::edge((gameswf::edge *)(*a1 + v6));
      v6 += 16;
    }
    while ( v5 != a2 );
  }
  a1[1] = a2;
}


// ===== 761aec gameswf::array<gameswf::path>::resize(int) =====
void __fastcall gameswf::array<gameswf::path>::resize(_DWORD *a1, int a2)
{
  int v2; // r10
  int v5; // r5
  int v6; // r4
  _DWORD *v7; // r6
  int v8; // r4

  v2 = a1[1];
  if ( v2 > a2 )
  {
    v5 = 40 * a2;
    v6 = a2;
    do
    {
      ++v6;
      v7 = (_DWORD *)(*a1 + v5 + 20);
      gameswf::array<gameswf::edge>::resize(v7, 0);
      gameswf::array<gameswf::edge>::reserve((int)v7, 0);
      v5 += 40;
    }
    while ( v6 != v2 );
  }
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::path>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v2 < a2 )
  {
    v8 = 40 * v2;
    do
    {
      ++v2;
      gameswf::path::path((gameswf::path *)(*a1 + v8));
      v8 += 40;
    }
    while ( v2 != a2 );
  }
  a1[1] = a2;
}


// ===== 761b9c gameswf::morph2_character_def::display(gameswf::character *) =====
int __fastcall gameswf::morph2_character_def::display(gameswf::morph2_character_def *this, gameswf::character *a2)
{
  int v3; // r1
  int v4; // r2
  int v5; // r3
  int v6; // r5
  int v7; // r6
  int v8; // r5
  int v9; // r6
  int v10; // r10
  int v11; // r9
  int v12; // r8
  int v13; // r11
  int v14; // r2
  int v15; // r3
  int v16; // r9
  int v17; // r8
  int v18; // r6
  int v19; // r3
  int v20; // r2
  int v21; // r10
  float v22; // r0
  int v23; // r5
  float v24; // r3
  bool v25; // cc
  char *world_matrix; // r0
  float v27; // r1
  int v28; // r2
  float v29; // r3
  int v30; // r1
  char *world_cxform; // r0
  int v32; // r1
  int v33; // r2
  int v34; // r3
  int v35; // r1
  int v36; // r2
  int v37; // r3
  float v38; // r7
  float v39; // r10
  float v40; // r8
  gameswf::mesh_set *v41; // r7
  void *v42; // r7
  int v44; // [sp+Ch] [bp-68h]
  float v45; // [sp+10h] [bp-64h]
  float v46; // [sp+10h] [bp-64h]
  float v47; // [sp+14h] [bp-60h]
  int v48; // [sp+18h] [bp-5Ch]
  int v49; // [sp+1Ch] [bp-58h]
  int v50; // [sp+20h] [bp-54h]
  _DWORD v52[8]; // [sp+28h] [bp-4Ch] BYREF
  float v53; // [sp+48h] [bp-2Ch] BYREF
  float v54; // [sp+4Ch] [bp-28h]
  int v55; // [sp+50h] [bp-24h]
  float v56; // [sp+54h] [bp-20h]
  float v57; // [sp+58h] [bp-1Ch]
  int v58; // [sp+5Ch] [bp-18h]
  _DWORD v59[5]; // [sp+60h] [bp-14h] BYREF

  v47 = *((float *)a2 + 36);
  gameswf::rect::set_lerp(
    (gameswf::rect *)v59,
    (const gameswf::rect *)(*((_DWORD *)this + 34) + 84),
    (const gameswf::rect *)(*((_DWORD *)this + 35) + 84),
    v47);
  v3 = v59[1];
  v4 = v59[2];
  v5 = v59[3];
  *((_DWORD *)this + 21) = v59[0];
  *((_DWORD *)this + 22) = v3;
  *((_DWORD *)this + 23) = v4;
  *((_DWORD *)this + 24) = v5;
  if ( *((int *)this + 10) > 0 )
  {
    v6 = 0;
    v7 = 0;
    do
    {
      gameswf::fill_style::set_lerp(
        (gameswf::fill_style *)(*((_DWORD *)this + 9) + v6),
        (const gameswf::fill_style *)(*(_DWORD *)(*((_DWORD *)this + 34) + 36) + v6),
        (const gameswf::fill_style *)(*(_DWORD *)(*((_DWORD *)this + 35) + 36) + v6),
        v47);
      ++v7;
      v6 += 84;
    }
    while ( v7 < *((_DWORD *)this + 10) );
  }
  if ( *((int *)this + 14) > 0 )
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *((_DWORD *)this + 13) + v8;
      v11 = *(_DWORD *)(*((_DWORD *)this + 34) + 52) + v8;
      v12 = *(_DWORD *)(*((_DWORD *)this + 35) + 52) + v8;
      *(_WORD *)(v10 + 4) = (int)(float)((float)((float)*(unsigned __int16 *)(v11 + 4)
                                               + (float)(v47
                                                       * (float)((float)*(unsigned __int16 *)(v12 + 4)
                                                               - (float)*(unsigned __int16 *)(v11 + 4))))
                                       + 0.5);
      gameswf::rgba::set_lerp(
        (gameswf::rgba *)(v10 + 6),
        (const gameswf::rgba *)(v11 + 6),
        (const gameswf::rgba *)(v12 + 6),
        v47);
      ++v9;
      v8 += 108;
    }
    while ( v9 < *((_DWORD *)this + 14) );
  }
  if ( *((int *)this + 18) > 0 )
  {
    v49 = 0;
    v48 = 0;
    v13 = 0;
    v50 = 0;
    do
    {
      v14 = *((_DWORD *)this + 17);
      v15 = *(_DWORD *)(*((_DWORD *)this + 34) + 68);
      v16 = v15 + v49;
      v17 = v14 + v49;
      *(_DWORD *)(v14 + v49) = *(_DWORD *)(v15 + v49 + 4);
      *(_DWORD *)(v17 + 4) = *(_DWORD *)(v15 + v49);
      *(_DWORD *)(v17 + 8) = *(_DWORD *)(v15 + v49 + 8);
      *(float *)(v17 + 12) = *(float *)(v15 + v49 + 12)
                           + (float)(v47
                                   * (float)(*(float *)(*(_DWORD *)(*((_DWORD *)this + 35) + 68) + 40 * v48 + 12)
                                           - *(float *)(v15 + v49 + 12)));
      *(float *)(v17 + 16) = *(float *)(v15 + v49 + 16)
                           + (float)(v47
                                   * (float)(*(float *)(*(_DWORD *)(*((_DWORD *)this + 35) + 68) + 40 * v48 + 16)
                                           - *(float *)(v15 + v49 + 16)));
      gameswf::array<gameswf::edge>::resize((_DWORD *)(v14 + v49 + 20), *(_DWORD *)(v15 + v49 + 24));
      if ( *(int *)(v17 + 24) > 0 )
      {
        v18 = 0;
        v19 = *(_DWORD *)(*((_DWORD *)this + 35) + 68);
        do
        {
          v20 = *(_DWORD *)(v16 + 20);
          v21 = 16 * v13;
          v22 = *(float *)(*(_DWORD *)(v19 + 40 * v48 + 20) + 16 * v13) - *(float *)(v20 + 16 * v18);
          v23 = 16 * v18;
          ++v13;
          *(float *)(*(_DWORD *)(v17 + 20) + 16 * v18) = *(float *)(v20 + 16 * v18) + (float)(v47 * v22);
          v44 = *(_DWORD *)(v17 + 20) + 16 * v18;
          v45 = *(float *)(*(_DWORD *)(v16 + 20) + 16 * v18++ + 4);
          *(float *)(v44 + 4) = v45
                              + (float)(v47
                                      * (float)(*(float *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 35) + 68)
                                                                     + 40 * v48
                                                                     + 20)
                                                         + v21
                                                         + 4)
                                              - v45));
          v46 = *(float *)(*(_DWORD *)(v16 + 20) + v23 + 8);
          *(float *)(*(_DWORD *)(v17 + 20) + v23 + 8) = v46
                                                      + (float)(v47
                                                              * (float)(*(float *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 35) + 68)
                                                                                             + 40 * v48
                                                                                             + 20)
                                                                                 + v21
                                                                                 + 8)
                                                                      - v46));
          v24 = *(float *)(*(_DWORD *)(v16 + 20) + v23 + 12);
          *(float *)(*(_DWORD *)(v17 + 20) + v23 + 12) = v24
                                                       + (float)(v47
                                                               * (float)(*(float *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 35) + 68)
                                                                                              + 40 * v48
                                                                                              + 20)
                                                                                  + v21
                                                                                  + 12)
                                                                       - v24));
          v19 = *(_DWORD *)(*((_DWORD *)this + 35) + 68);
          if ( v13 >= *(_DWORD *)(v19 + 40 * v48 + 24) )
          {
            v13 = 0;
            ++v48;
          }
        }
        while ( v18 < *(_DWORD *)(v17 + 24) );
      }
      v25 = ++v50 < *((_DWORD *)this + 18);
      v49 += 40;
    }
    while ( v25 );
  }
  world_matrix = gameswf::character::get_world_matrix(a2);
  v27 = *((float *)world_matrix + 1);
  v28 = *((_DWORD *)world_matrix + 2);
  v29 = *((float *)world_matrix + 3);
  v53 = *(float *)world_matrix;
  v54 = v27;
  v55 = v28;
  v56 = v29;
  v30 = *((_DWORD *)world_matrix + 5);
  v57 = *((float *)world_matrix + 4);
  v58 = v30;
  world_cxform = gameswf::character::get_world_cxform(a2);
  v32 = *((_DWORD *)world_cxform + 1);
  v33 = *((_DWORD *)world_cxform + 2);
  v34 = *((_DWORD *)world_cxform + 3);
  v52[0] = *(_DWORD *)world_cxform;
  v52[1] = v32;
  v52[2] = v33;
  v52[3] = v34;
  v35 = *((_DWORD *)world_cxform + 5);
  v36 = *((_DWORD *)world_cxform + 6);
  v37 = *((_DWORD *)world_cxform + 7);
  v52[4] = *((_DWORD *)world_cxform + 4);
  v52[5] = v35;
  v52[6] = v36;
  v52[7] = v37;
  v38 = (float)(v56 * v56) + (float)(v57 * v57);
  if ( (float)((float)(v53 * v53) + (float)(v54 * v54)) >= v38 )
    v38 = (float)(v53 * v53) + (float)(v54 * v54);
  v39 = sqrtf(v38);
  gameswf::weak_ptr<gameswf::character>::check_proxy((int)a2 + 60);
  v40 = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(**((_DWORD **)a2 + 16) + 120))(*((_DWORD *)a2 + 16)));
  if ( *((float *)this + 39) == v47 )
  {
    v41 = *((gameswf::mesh_set **)this + 40);
  }
  else
  {
    v42 = *((void **)this + 40);
    if ( v42 )
    {
      gameswf::mesh_set::~mesh_set(*((gameswf::mesh_set **)this + 40));
      gameswf::free_internal(v42);
    }
    *((float *)this + 39) = v47;
    v41 = (gameswf::mesh_set *)operator new(0x14u, 0);
    gameswf::mesh_set::mesh_set(
      v41,
      (gameswf::morph2_character_def *)((char *)this + 32),
      (float)((float)(20.0 / v39) / v40) * 0.75);
    *((_DWORD *)this + 40) = v41;
  }
  return gameswf::mesh_set::display(v41, &v53, v52, (char *)this + 36, (char *)this + 52);
}


// ===== 762124 `non-virtual thunk to'gameswf::morph2_character_def::~morph2_character_def() =====
void __fastcall `non-virtual thunk to'gameswf::morph2_character_def::~morph2_character_def(
        gameswf::morph2_character_def *this)
{
  gameswf::morph2_character_def::~morph2_character_def((gameswf::morph2_character_def *)((char *)this - 32));
}


// ===== 76212c gameswf::morph2_character_def::~morph2_character_def() =====
void __fastcall gameswf::morph2_character_def::~morph2_character_def(gameswf::morph2_character_def *this)
{
  void (__fastcall ***v2)(_DWORD); // r0

  v2 = *((void (__fastcall ****)(_DWORD))this + 35);
  *(_DWORD *)this = off_98FED0;
  *((_DWORD *)this + 8) = off_98FF0C;
  gameswf::destruct<gameswf::shape_character_def>(v2);
  gameswf::destruct<gameswf::shape_character_def>(*((void (__fastcall ****)(_DWORD))this + 34));
  gameswf::shape_character_def::~shape_character_def(this);
}


// ===== 76217c `non-virtual thunk to'gameswf::morph2_character_def::~morph2_character_def() =====
void __fastcall `non-virtual thunk to'gameswf::morph2_character_def::~morph2_character_def(
        gameswf::morph2_character_def *this)
{
  gameswf::morph2_character_def::~morph2_character_def((gameswf::morph2_character_def *)((char *)this - 32));
}


// ===== 762184 gameswf::morph2_character_def::~morph2_character_def() =====
void __fastcall gameswf::morph2_character_def::~morph2_character_def(gameswf::morph2_character_def *this)
{
  gameswf::morph2_character_def::~morph2_character_def(this);
  LC_API_FREE_0(this);
}


// ===== 7621a0 gameswf::morph2_character_def::~morph2_character_def() =====
void __fastcall gameswf::morph2_character_def::~morph2_character_def(gameswf::morph2_character_def *this)
{
  void (__fastcall ***v2)(_DWORD); // r0

  v2 = *((void (__fastcall ****)(_DWORD))this + 35);
  *(_DWORD *)this = off_98FED0;
  *((_DWORD *)this + 8) = off_98FF0C;
  gameswf::destruct<gameswf::shape_character_def>(v2);
  gameswf::destruct<gameswf::shape_character_def>(*((void (__fastcall ****)(_DWORD))this + 34));
  gameswf::shape_character_def::~shape_character_def(this);
}


// ===== 7621f0 gameswf::morph2_character_def::morph2_character_def(gameswf::player *) =====
gameswf::morph2_character_def *__fastcall gameswf::morph2_character_def::morph2_character_def(
        gameswf::morph2_character_def *this,
        gameswf::player *a2)
{
  gameswf::shape_character_def *v4; // r8
  gameswf::shape_character_def *v5; // r5

  gameswf::shape_character_def::shape_character_def(this, a2);
  *((_DWORD *)this + 39) = -1082130432;
  *(_DWORD *)this = off_98FED0;
  *((_DWORD *)this + 8) = off_98FF0C;
  *((_DWORD *)this + 40) = 0;
  v4 = (gameswf::shape_character_def *)operator new(0x88u, 0);
  gameswf::shape_character_def::shape_character_def(v4, a2);
  *((_DWORD *)this + 34) = v4;
  v5 = (gameswf::shape_character_def *)operator new(0x88u, 0);
  gameswf::shape_character_def::shape_character_def(v5, a2);
  *((_DWORD *)this + 35) = v5;
  return this;
}


// ===== 76227c gameswf::morph2_character_def::morph2_character_def(gameswf::player *) =====
gameswf::morph2_character_def *__fastcall gameswf::morph2_character_def::morph2_character_def(
        gameswf::morph2_character_def *this,
        gameswf::player *a2)
{
  gameswf::shape_character_def *v4; // r8
  gameswf::shape_character_def *v5; // r5

  gameswf::shape_character_def::shape_character_def(this, a2);
  *((_DWORD *)this + 39) = -1082130432;
  *(_DWORD *)this = off_98FED0;
  *((_DWORD *)this + 8) = off_98FF0C;
  *((_DWORD *)this + 40) = 0;
  v4 = (gameswf::shape_character_def *)operator new(0x88u, 0);
  gameswf::shape_character_def::shape_character_def(v4, a2);
  *((_DWORD *)this + 34) = v4;
  v5 = (gameswf::shape_character_def *)operator new(0x88u, 0);
  gameswf::shape_character_def::shape_character_def(v5, a2);
  *((_DWORD *)this + 35) = v5;
  return this;
}


// ===== 762308 gameswf::morph2_character_def::read(gameswf::stream *,int,bool,gameswf::movie_definition_sub *) =====
void __fastcall gameswf::morph2_character_def::read(
        gameswf::morph2_character_def *this,
        gameswf::stream *a2,
        int a3,
        bool a4,
        gameswf::movie_definition_sub *a5)
{
  int v8; // r1
  int v9; // r2
  int v10; // r3
  _DWORD *v11; // r12
  _DWORD *v12; // r12
  int v13; // r1
  int v14; // r2
  int v15; // r3
  int u8; // r0
  int v17; // r9
  bool v18; // zf
  int v19; // r0
  float v20; // r7
  float v21; // r7
  float v22; // r7
  float v23; // r7
  int v24; // r7
  int v25; // r11
  int v26; // r11
  gameswf::gradient_record *v27; // r0
  int v28; // r0
  gameswf::matrix *v29; // r9
  int v30; // r3
  int uint; // r11
  int v32; // r7
  int v33; // r0
  bool v34; // zf
  int v35; // r7
  int v36; // r2
  int v37; // r4
  int v38; // r6
  int v39; // r4
  int v40; // r6
  float v41; // r7
  float v42; // r7
  float v43; // r7
  float v44; // r7
  int v45; // r7
  int v46; // r3
  int v47; // r7
  gameswf::morph2_character_def *v48; // r9
  int v49; // r5
  gameswf::gradient_record *v50; // r0
  int u16; // r0
  gameswf::ref_counted *v52; // r0
  float v53; // r7
  float v54; // r7
  float v55; // r7
  float v56; // r7
  int v57; // r0
  gameswf::ref_counted *v58; // r0
  float v59; // r7
  float v60; // r7
  float v61; // r7
  float v62; // r7
  gameswf::matrix *v63; // [sp+28h] [bp-230h]
  void (**v64)(gameswf::base_line_style *__hidden); // [sp+48h] [bp-210h] BYREF
  __int16 v65; // [sp+4Ch] [bp-20Ch]
  __int16 v66; // [sp+4Eh] [bp-20Ah] BYREF
  int v67; // [sp+54h] [bp-204h] BYREF
  void (**v68)(gameswf::base_line_style *__hidden); // [sp+B4h] [bp-1A4h] BYREF
  __int16 v69; // [sp+B8h] [bp-1A0h]
  __int16 v70; // [sp+BAh] [bp-19Eh] BYREF
  int v71; // [sp+C0h] [bp-198h] BYREF
  void (**v72)(gameswf::base_line_style *__hidden); // [sp+120h] [bp-138h] BYREF
  int v73; // [sp+124h] [bp-134h] BYREF
  _BYTE v74[4]; // [sp+128h] [bp-130h] BYREF
  float v75; // [sp+12Ch] [bp-12Ch] BYREF
  float v76; // [sp+130h] [bp-128h]
  float v77; // [sp+134h] [bp-124h]
  float v78; // [sp+138h] [bp-120h]
  float v79; // [sp+13Ch] [bp-11Ch]
  float v80; // [sp+140h] [bp-118h]
  _DWORD v81[5]; // [sp+144h] [bp-114h] BYREF
  gameswf::ref_counted *v82; // [sp+158h] [bp-100h] BYREF
  int v83; // [sp+15Ch] [bp-FCh] BYREF
  void (**v84)(gameswf::base_line_style *__hidden); // [sp+18Ch] [bp-CCh] BYREF
  int v85; // [sp+190h] [bp-C8h] BYREF
  _BYTE v86[4]; // [sp+194h] [bp-C4h] BYREF
  float v87; // [sp+198h] [bp-C0h] BYREF
  float v88; // [sp+19Ch] [bp-BCh]
  float v89; // [sp+1A0h] [bp-B8h]
  float v90; // [sp+1A4h] [bp-B4h]
  float v91; // [sp+1A8h] [bp-B0h]
  float v92; // [sp+1ACh] [bp-ACh]
  _DWORD v93[5]; // [sp+1B0h] [bp-A8h] BYREF
  gameswf::ref_counted *v94; // [sp+1C4h] [bp-94h] BYREF
  int v95; // [sp+1C8h] [bp-90h] BYREF
  int v96; // [sp+1F8h] [bp-60h] BYREF
  int v97; // [sp+1FCh] [bp-5Ch]
  int v98; // [sp+200h] [bp-58h]
  int v99; // [sp+204h] [bp-54h]
  int v100; // [sp+208h] [bp-50h]
  int v101; // [sp+20Ch] [bp-4Ch]
  int v102; // [sp+210h] [bp-48h] BYREF
  int v103; // [sp+214h] [bp-44h]
  int v104; // [sp+218h] [bp-40h]
  int v105; // [sp+21Ch] [bp-3Ch]
  int v106; // [sp+220h] [bp-38h]
  int v107; // [sp+224h] [bp-34h]
  int v108; // [sp+228h] [bp-30h] BYREF
  int v109; // [sp+22Ch] [bp-2Ch]
  int v110; // [sp+230h] [bp-28h]
  int v111; // [sp+234h] [bp-24h]
  int v112; // [sp+238h] [bp-20h]
  int v113; // [sp+23Ch] [bp-1Ch]
  int v114; // [sp+240h] [bp-18h] BYREF
  int v115; // [sp+244h] [bp-14h]
  int v116; // [sp+248h] [bp-10h]
  int v117; // [sp+24Ch] [bp-Ch]
  int v118; // [sp+250h] [bp-8h]
  int v119; // [sp+254h] [bp-4h]
  _DWORD v120[4]; // [sp+258h] [bp+0h] BYREF
  _DWORD v121[4]; // [sp+268h] [bp+10h] BYREF

  gameswf::rect::read((gameswf::rect *)v121, a2);
  gameswf::rect::read((gameswf::rect *)v120, a2);
  v8 = v121[1];
  v9 = v121[2];
  v10 = v121[3];
  v11 = (_DWORD *)(*((_DWORD *)this + 34) + 84);
  *v11 = v121[0];
  v11[1] = v8;
  v11[2] = v9;
  v11[3] = v10;
  v12 = (_DWORD *)(*((_DWORD *)this + 35) + 84);
  v13 = v120[1];
  v14 = v120[2];
  v15 = v120[3];
  *v12 = v120[0];
  v12[1] = v13;
  v12[2] = v14;
  v12[3] = v15;
  if ( a3 == 84 )
  {
    gameswf::rect::read((gameswf::rect *)&v96, a2);
    gameswf::rect::read((gameswf::rect *)&v102, a2);
    gameswf::stream::read_uint(a2, 6);
    *((_BYTE *)this + 116) = gameswf::stream::read_uint(a2, 1) == 1;
    *((_BYTE *)this + 117) = gameswf::stream::read_uint(a2, 1) == 1;
  }
  *((_DWORD *)this + 36) = gameswf::stream::read_u32(a2);
  u8 = gameswf::stream::read_u8(a2);
  if ( u8 == 255 )
    u8 = gameswf::stream::read_u16(a2);
  *((_DWORD *)this + 37) = u8;
  if ( u8 )
  {
    v17 = 0;
    do
    {
      gameswf::fill_style::fill_style((gameswf::fill_style *)&v84);
      gameswf::fill_style::fill_style((gameswf::fill_style *)&v72);
      v19 = gameswf::stream::read_u8(a2);
      v85 = v19;
      v73 = v19;
      if ( v19 )
      {
        v18 = v19 == 16;
        if ( v19 != 16 )
          v18 = v19 == 18;
        if ( v18 )
        {
          v104 = 0;
          v105 = 0;
          v107 = 0;
          v102 = 1065353216;
          v106 = 1065353216;
          v98 = 0;
          v99 = 0;
          v101 = 0;
          v103 = 0;
          v97 = 0;
          v96 = 1065353216;
          v100 = 1065353216;
          gameswf::matrix::read((gameswf::matrix *)&v102, a2);
          gameswf::matrix::read((gameswf::matrix *)&v96, a2);
          v88 = 0.0;
          v89 = 0.0;
          v90 = 0.0;
          v92 = 0.0;
          v87 = 1.0;
          v91 = 1.0;
          v80 = 0.0;
          v76 = 0.0;
          v77 = 0.0;
          v78 = 0.0;
          v79 = 1.0;
          v75 = 1.0;
          if ( v85 == 16 )
          {
            v53 = (float)((float)(v87 * 128.0) + (float)(v88 * 0.0)) + v89;
            if ( v53 < -3.4028e38 || v53 > 3.4028e38 )
              v53 = 0.0;
            v89 = v53;
            v54 = (float)((float)(v90 * 128.0) + (float)(v91 * 0.0)) + v92;
            if ( v54 < -3.4028e38 || v54 > 3.4028e38 )
              v54 = 0.0;
            v92 = v54;
            gameswf::matrix::concatenate_scale((gameswf::matrix *)&v87, 0.0078125);
            v55 = (float)((float)(v75 * 128.0) + (float)(v76 * 0.0)) + v77;
            if ( v55 < -3.4028e38 || v55 > 3.4028e38 )
              v55 = 0.0;
            v77 = v55;
            v56 = (float)((float)(v78 * 128.0) + (float)(v79 * 0.0)) + v80;
            if ( v56 < -3.4028e38 || v56 > 3.4028e38 )
              v56 = 0.0;
            v80 = v56;
            gameswf::matrix::concatenate_scale((gameswf::matrix *)&v75, 0.0078125);
          }
          else
          {
            v20 = (float)((float)(v87 * 32.0) + (float)(v88 * 32.0)) + v89;
            if ( v20 < -3.4028e38 || v20 > 3.4028e38 )
              v20 = 0.0;
            v89 = v20;
            v21 = (float)((float)(v90 * 32.0) + (float)(v91 * 32.0)) + v92;
            if ( v21 < -3.4028e38 || v21 > 3.4028e38 )
              v21 = 0.0;
            v92 = v21;
            gameswf::matrix::concatenate_scale((gameswf::matrix *)&v87, 0.0019531);
            v22 = (float)((float)(v75 * 32.0) + (float)(v76 * 32.0)) + v77;
            if ( v22 < -3.4028e38 || v22 > 3.4028e38 )
              v22 = 0.0;
            v77 = v22;
            v23 = (float)((float)(v78 * 32.0) + (float)(v79 * 32.0)) + v80;
            if ( v23 < -3.4028e38 || v23 > 3.4028e38 )
              v23 = 0.0;
            v80 = v23;
            gameswf::matrix::concatenate_scale((gameswf::matrix *)&v75, 0.0019531);
          }
          v24 = 0;
          v116 = 0;
          v119 = 0;
          v112 = 1065353216;
          v115 = 0;
          v117 = 0;
          v114 = 1065353216;
          v118 = 1065353216;
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v113 = 0;
          v108 = 1065353216;
          gameswf::matrix::set_inverse((gameswf::matrix *)&v114, (const gameswf::matrix *)&v102);
          gameswf::matrix::concatenate(&v87, (float *)&v114);
          gameswf::matrix::set_inverse((gameswf::matrix *)&v108, (const gameswf::matrix *)&v96);
          gameswf::matrix::concatenate(&v75, (float *)&v108);
          v25 = gameswf::stream::read_u8(a2);
          gameswf::array<gameswf::gradient_record>::resize(v93, v25);
          gameswf::array<gameswf::gradient_record>::resize(v81, v25);
          if ( v25 )
          {
            v26 = 5 * v25;
            do
            {
              gameswf::gradient_record::read((gameswf::gradient_record *)(v93[0] + v24), a2, a3);
              v27 = (gameswf::gradient_record *)(v81[0] + v24);
              v24 += 5;
              gameswf::gradient_record::read(v27, a2, a3);
            }
            while ( v24 != v26 );
            memcpy(v86, (const void *)(v93[0] + 1), sizeof(v86));
            memcpy(v74, (const void *)(v81[0] + 1), sizeof(v74));
          }
        }
        else if ( (unsigned int)(v19 - 64) <= 1 )
        {
          u16 = gameswf::stream::read_u16(a2);
          v52 = (gameswf::ref_counted *)(*(int (__fastcall **)(gameswf::movie_definition_sub *, int))(*(_DWORD *)a5 + 152))(
                                          a5,
                                          u16);
          gameswf::smart_ptr<gameswf::bitmap_character_def>::set_ref(&v94, v52);
          gameswf::smart_ptr<gameswf::bitmap_character_def>::set_ref(&v82, v94);
          v108 = 1065353216;
          v112 = 1065353216;
          v116 = 0;
          v119 = 0;
          v118 = 1065353216;
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v113 = 0;
          v115 = 0;
          v117 = 0;
          v114 = 1065353216;
          gameswf::matrix::read((gameswf::matrix *)&v108, a2);
          gameswf::matrix::read((gameswf::matrix *)&v114, a2);
          gameswf::matrix::set_inverse((gameswf::matrix *)&v95, (const gameswf::matrix *)&v108);
          gameswf::matrix::set_inverse((gameswf::matrix *)&v83, (const gameswf::matrix *)&v114);
        }
      }
      else
      {
        gameswf::rgba::read_rgba((gameswf::rgba *)v86, a2);
        gameswf::rgba::read_rgba((gameswf::rgba *)v74, a2);
      }
      ++v17;
      gameswf::array<gameswf::fill_style>::push_back<gameswf::fill_style>(
        (_DWORD *)(*((_DWORD *)this + 34) + 36),
        (gameswf::fill_style *)&v84);
      gameswf::array<gameswf::fill_style>::push_back<gameswf::fill_style>(
        (_DWORD *)(*((_DWORD *)this + 35) + 36),
        (gameswf::fill_style *)&v72);
      gameswf::fill_style::~fill_style((gameswf::fill_style *)&v72);
      gameswf::fill_style::~fill_style((gameswf::fill_style *)&v84);
    }
    while ( *((_DWORD *)this + 37) > v17 );
  }
  v28 = gameswf::stream::read_u8(a2);
  if ( v28 == 255 )
    v28 = gameswf::stream::read_u16(a2);
  *((_DWORD *)this + 38) = v28;
  if ( a3 == 46 )
  {
    if ( v28 )
    {
      v35 = 0;
      do
      {
        gameswf::line_style::line_style((gameswf::line_style *)&v84);
        gameswf::line_style::line_style((gameswf::line_style *)&v72);
        LOWORD(v85) = gameswf::stream::read_u16(a2);
        ++v35;
        LOWORD(v73) = gameswf::stream::read_u16(a2);
        gameswf::rgba::read((gameswf::rgba *)((char *)&v85 + 2), a2, 46);
        gameswf::rgba::read((gameswf::rgba *)((char *)&v73 + 2), a2, 46);
        gameswf::array<gameswf::line_style>::push_back<gameswf::line_style>(
          (int *)(*((_DWORD *)this + 34) + 52),
          (int)&v84);
        gameswf::array<gameswf::line_style>::push_back<gameswf::line_style>(
          (int *)(*((_DWORD *)this + 35) + 52),
          (int)&v72);
        v72 = off_9908E8;
        gameswf::fill_style::~fill_style((gameswf::fill_style *)&v75);
        v84 = off_9908E8;
        v72 = off_98FEB8;
        gameswf::fill_style::~fill_style((gameswf::fill_style *)&v87);
        v36 = *((_DWORD *)this + 38);
        v84 = off_98FEB8;
      }
      while ( v36 > v35 );
    }
  }
  else if ( v28 )
  {
    v29 = nullptr;
    do
    {
      gameswf::line_style::line_style((gameswf::line_style *)&v68);
      gameswf::line_style::line_style((gameswf::line_style *)&v64);
      v69 = gameswf::stream::read_u16(a2);
      v65 = gameswf::stream::read_u16(a2);
      gameswf::stream::read_uint(a2, 2);
      uint = gameswf::stream::read_uint(a2, 2);
      v32 = gameswf::stream::read_uint(a2, 1);
      gameswf::stream::read_uint(a2, 1);
      gameswf::stream::read_uint(a2, 1);
      gameswf::stream::read_uint(a2, 1);
      gameswf::stream::read_uint(a2, 1);
      gameswf::stream::read_uint(a2, 1);
      gameswf::stream::read_uint(a2, 2);
      if ( uint == 2 )
        gameswf::stream::read_u16(a2);
      if ( v32 )
      {
        gameswf::fill_style::fill_style((gameswf::fill_style *)&v72);
        gameswf::fill_style::fill_style((gameswf::fill_style *)&v84);
        v33 = gameswf::stream::read_u8(a2);
        v73 = v33;
        v85 = v33;
        if ( v33 )
        {
          v34 = v33 == 16;
          if ( v33 != 16 )
            v34 = v33 == 18;
          if ( v34 )
          {
            v116 = 0;
            v117 = 0;
            v119 = 0;
            v114 = 1065353216;
            v118 = 1065353216;
            v110 = 0;
            v111 = 0;
            v113 = 0;
            v108 = 1065353216;
            v112 = 1065353216;
            v115 = 0;
            v109 = 0;
            gameswf::matrix::read((gameswf::matrix *)&v114, a2);
            gameswf::matrix::read((gameswf::matrix *)&v108, a2);
            v76 = 0.0;
            v77 = 0.0;
            v78 = 0.0;
            v80 = 0.0;
            v75 = 1.0;
            v79 = 1.0;
            v92 = 0.0;
            v88 = 0.0;
            v89 = 0.0;
            v90 = 0.0;
            v91 = 1.0;
            v87 = 1.0;
            if ( v73 == 16 )
            {
              v59 = (float)((float)(v75 * 128.0) + (float)(v76 * 0.0)) + v77;
              if ( v59 < -3.4028e38 || v59 > 3.4028e38 )
                v59 = 0.0;
              v77 = v59;
              v60 = (float)((float)(v78 * 128.0) + (float)(v79 * 0.0)) + v80;
              if ( v60 < -3.4028e38 || v60 > 3.4028e38 )
                v60 = 0.0;
              v80 = v60;
              gameswf::matrix::concatenate_scale((gameswf::matrix *)&v75, 0.0078125);
              v61 = (float)((float)(v87 * 128.0) + (float)(v88 * 0.0)) + v89;
              if ( v61 < -3.4028e38 || v61 > 3.4028e38 )
                v61 = 0.0;
              v89 = v61;
              v62 = (float)((float)(v90 * 128.0) + (float)(v91 * 0.0)) + v92;
              if ( v62 < -3.4028e38 || v62 > 3.4028e38 )
                v62 = 0.0;
              v92 = v62;
              gameswf::matrix::concatenate_scale((gameswf::matrix *)&v87, 0.0078125);
            }
            else
            {
              v41 = (float)((float)(v75 * 32.0) + (float)(v76 * 32.0)) + v77;
              if ( v41 < -3.4028e38 || v41 > 3.4028e38 )
                v41 = 0.0;
              v77 = v41;
              v42 = (float)((float)(v78 * 32.0) + (float)(v79 * 32.0)) + v80;
              if ( v42 < -3.4028e38 || v42 > 3.4028e38 )
                v42 = 0.0;
              v80 = v42;
              gameswf::matrix::concatenate_scale((gameswf::matrix *)&v75, 0.0019531);
              v43 = (float)((float)(v87 * 32.0) + (float)(v88 * 32.0)) + v89;
              if ( v43 < -3.4028e38 || v43 > 3.4028e38 )
                v43 = 0.0;
              v89 = v43;
              v44 = (float)((float)(v90 * 32.0) + (float)(v91 * 32.0)) + v92;
              if ( v44 < -3.4028e38 || v44 > 3.4028e38 )
                v44 = 0.0;
              v92 = v44;
              gameswf::matrix::concatenate_scale((gameswf::matrix *)&v87, 0.0019531);
            }
            v98 = 0;
            v101 = 0;
            v106 = 1065353216;
            v97 = 0;
            v99 = 0;
            v96 = 1065353216;
            v100 = 1065353216;
            v103 = 0;
            v104 = 0;
            v105 = 0;
            v107 = 0;
            v102 = 1065353216;
            gameswf::matrix::set_inverse((gameswf::matrix *)&v96, (const gameswf::matrix *)&v114);
            gameswf::matrix::concatenate(&v75, (float *)&v96);
            gameswf::matrix::set_inverse((gameswf::matrix *)&v102, (const gameswf::matrix *)&v108);
            gameswf::matrix::concatenate(&v87, (float *)&v102);
            v45 = gameswf::stream::read_u8(a2);
            gameswf::array<gameswf::gradient_record>::resize(v81, v45);
            gameswf::array<gameswf::gradient_record>::resize(v93, v45);
            if ( v45 )
            {
              v46 = 5 * v45;
              v63 = v29;
              v47 = 0;
              v48 = this;
              v49 = v46;
              do
              {
                gameswf::gradient_record::read((gameswf::gradient_record *)(v81[0] + v47), a2, a3);
                v50 = (gameswf::gradient_record *)(v93[0] + v47);
                v47 += 5;
                gameswf::gradient_record::read(v50, a2, a3);
              }
              while ( v47 != v49 );
              this = v48;
              v29 = v63;
              memcpy(v74, (const void *)(v81[0] + 1), sizeof(v74));
              memcpy(v86, (const void *)(v93[0] + 1), sizeof(v86));
            }
          }
          else if ( (unsigned int)(v33 - 64) <= 1 )
          {
            v57 = gameswf::stream::read_u16(a2);
            v58 = (gameswf::ref_counted *)(*(int (__fastcall **)(gameswf::movie_definition_sub *, int))(*(_DWORD *)a5 + 152))(
                                            a5,
                                            v57);
            gameswf::smart_ptr<gameswf::bitmap_character_def>::set_ref(&v82, v58);
            gameswf::smart_ptr<gameswf::bitmap_character_def>::set_ref(&v94, v82);
            v102 = 1065353216;
            v106 = 1065353216;
            v98 = 0;
            v101 = 0;
            v100 = 1065353216;
            v103 = 0;
            v104 = 0;
            v105 = 0;
            v107 = 0;
            v97 = 0;
            v99 = 0;
            v96 = 1065353216;
            gameswf::matrix::read((gameswf::matrix *)&v102, a2);
            gameswf::matrix::read((gameswf::matrix *)&v96, a2);
          }
        }
        else
        {
          gameswf::rgba::read_rgba((gameswf::rgba *)v74, a2);
          gameswf::rgba::read_rgba((gameswf::rgba *)v86, a2);
        }
        gameswf::fill_style::~fill_style((gameswf::fill_style *)&v84);
        gameswf::fill_style::~fill_style((gameswf::fill_style *)&v72);
      }
      else
      {
        gameswf::rgba::read((gameswf::rgba *)&v70, a2, a3);
        gameswf::rgba::read((gameswf::rgba *)&v66, a2, a3);
      }
      v29 = (gameswf::matrix *)((char *)v29 + 1);
      gameswf::array<gameswf::line_style>::push_back<gameswf::line_style>(
        (int *)(*((_DWORD *)this + 34) + 52),
        (int)&v68);
      gameswf::array<gameswf::line_style>::push_back<gameswf::line_style>(
        (int *)(*((_DWORD *)this + 35) + 52),
        (int)&v64);
      v64 = off_9908E8;
      gameswf::fill_style::~fill_style((gameswf::fill_style *)&v67);
      v68 = off_9908E8;
      v64 = off_98FEB8;
      gameswf::fill_style::~fill_style((gameswf::fill_style *)&v71);
      v30 = *((_DWORD *)this + 38);
      v68 = off_98FEB8;
    }
    while ( v30 > (int)v29 );
  }
  gameswf::shape_character_def::read(*((gameswf::shape_character_def **)this + 34), a2, a3, 0, a5);
  gameswf::stream::align(a2);
  gameswf::shape_character_def::read(*((gameswf::shape_character_def **)this + 35), a2, a3, 0, a5);
  gameswf::array<gameswf::fill_style>::resize((_DWORD *)this + 9, *(_DWORD *)(*((_DWORD *)this + 34) + 40));
  if ( *((int *)this + 10) > 0 )
  {
    v37 = 0;
    v38 = 0;
    do
    {
      ++v38;
      gameswf::array<gameswf::gradient_record>::resize(
        (_DWORD *)(*((_DWORD *)this + 9) + v37 + 36),
        *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 34) + 36) + v37 + 40));
      v37 += 84;
    }
    while ( v38 < *((_DWORD *)this + 10) );
  }
  gameswf::array<gameswf::line_style>::resize((_DWORD *)this + 13, *(_DWORD *)(*((_DWORD *)this + 34) + 56));
  gameswf::array<gameswf::path>::resize((_DWORD *)this + 17, *(_DWORD *)(*((_DWORD *)this + 34) + 72));
  if ( *((int *)this + 18) > 0 )
  {
    v39 = 0;
    v40 = 0;
    do
    {
      ++v40;
      gameswf::array<gameswf::edge>::resize(
        (_DWORD *)(*((_DWORD *)this + 17) + v39 + 20),
        *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 34) + 68) + v39 + 24));
      v39 += 40;
    }
    while ( v40 < *((_DWORD *)this + 18) );
  }
}


// ===== 7635c8 gameswf::tu_string::get_hashi(void) =====
int __fastcall gameswf::tu_string::get_hashi(gameswf::tu_string *this)
{
  char *v1; // r4
  int v2; // r5
  int v3; // r3
  int v5; // r3
  bool v6; // zf
  int v7; // r3
  int v8; // r2
  char *v9; // r3
  int v10; // r2
  int v11; // r1
  int v12; // r2

  v2 = *((_DWORD *)this + 4);
  if ( (v2 & 0xFFFFFF) != 0xFFFFFF )
    return v2 << 8 >> 8;
  v5 = *(char *)this;
  v6 = v5 == -1;
  if ( v5 == -1 )
  {
    v7 = *((_DWORD *)this + 1);
  }
  else
  {
    v7 = v5 - 1;
    v1 = (char *)this + 1;
  }
  if ( v6 )
  {
    --v7;
    v1 = *((char **)this + 3);
  }
  if ( v7 > 0 )
  {
    v9 = &v1[v7];
    v10 = 5381;
    do
    {
      v11 = (unsigned __int8)*--v9;
      v12 = 33 * v10;
      if ( (unsigned __int8)(v11 - 65) <= 0x19u )
        v11 += 32;
      v10 = v11 ^ v12;
    }
    while ( v9 != v1 );
    v8 = v10 << 8 >> 8;
    v3 = v8;
  }
  else
  {
    v3 = 5381;
    v8 = 5381;
  }
  *((_DWORD *)this + 4) = v2 & 0xFF000000 | v8 & 0xFFFFFF;
  return v3;
}


// ===== 763660 gameswf::movie_definition_sub::is(int) =====
bool __fastcall gameswf::movie_definition_sub::is(gameswf::movie_definition_sub *this, int a2)
{
  return a2 == 9 || a2 == 10;
}


// ===== 76367c gameswf::movie_definition_sub::get_frame_count(void) =====
int __fastcall gameswf::movie_definition_sub::get_frame_count(gameswf::movie_definition_sub *this)
{
  return *((_DWORD *)this + 14);
}


// ===== 763684 gameswf::movie_definition_sub::is_multithread(void) =====
int __fastcall gameswf::movie_definition_sub::is_multithread(gameswf::movie_definition_sub *this)
{
  return 0;
}


// ===== 76368c gameswf::movie_def_impl::is(int) =====
bool __fastcall gameswf::movie_def_impl::is(gameswf::movie_def_impl *this, int a2)
{
  return a2 == 8 || a2 == 9 || a2 == 10;
}


// ===== 7636b4 gameswf::movie_def_impl::has_init_actions(void) =====
int __fastcall gameswf::movie_def_impl::has_init_actions(gameswf::movie_def_impl *this)
{
  return *((unsigned __int8 *)this + 236);
}


// ===== 7636bc gameswf::movie_def_impl::is_multithread(void) =====
bool __fastcall gameswf::movie_def_impl::is_multithread(gameswf::movie_def_impl *this)
{
  return *((_DWORD *)this + 57) != 0;
}


// ===== 7636cc gameswf::movie_def_impl::get_frame_rate(void) =====
int __fastcall gameswf::movie_def_impl::get_frame_rate(gameswf::movie_def_impl *this)
{
  return *((_DWORD *)this + 49);
}


// ===== 7636d4 gameswf::movie_def_impl::set_frame_rate(float) =====
int __fastcall gameswf::movie_def_impl::set_frame_rate(int this, float a2)
{
  *(float *)(this + 196) = a2;
  return this;
}


// ===== 7636dc gameswf::movie_def_impl::get_version(void) =====
int __fastcall gameswf::movie_def_impl::get_version(gameswf::movie_def_impl *this)
{
  return *((_DWORD *)this + 50);
}


// ===== 7636e4 gameswf::movie_def_impl::get_file_bytes(void) =====
int __fastcall gameswf::movie_def_impl::get_file_bytes(gameswf::movie_def_impl *this)
{
  return *((_DWORD *)this + 54);
}


// ===== 7636ec gameswf::movie_def_impl::get_loaded_bytes(void) =====
int __fastcall gameswf::movie_def_impl::get_loaded_bytes(gameswf::movie_def_impl *this)
{
  return *((_DWORD *)this + 51);
}


// ===== 7636f4 gameswf::movie_def_impl::get_create_bitmaps(void) =====
int __fastcall gameswf::movie_def_impl::get_create_bitmaps(gameswf::movie_def_impl *this)
{
  return *((_DWORD *)this + 43);
}


// ===== 7636fc gameswf::movie_def_impl::get_create_font_shapes(void) =====
int __fastcall gameswf::movie_def_impl::get_create_font_shapes(gameswf::movie_def_impl *this)
{
  return *((_DWORD *)this + 44);
}


// ===== 763704 gameswf::movie_def_impl::get_bitmap_info_count(void) =====
int __fastcall gameswf::movie_def_impl::get_bitmap_info_count(gameswf::movie_def_impl *this)
{
  return *((_DWORD *)this + 40);
}


// ===== 76370c gameswf::movie_def_impl::get_bitmap_info(int) =====
int __fastcall gameswf::movie_def_impl::get_bitmap_info(gameswf::movie_def_impl *this, int a2)
{
  return *(_DWORD *)(*((_DWORD *)this + 39) + 4 * a2);
}


// ===== 763718 gameswf::movie_def_impl::in_import_table(int) =====
int __fastcall gameswf::movie_def_impl::in_import_table(gameswf::movie_def_impl *this, int a2)
{
  int v2; // r3
  int v3; // r4
  int v4; // r0
  int v5; // r2
  int v6; // r12

  v2 = *((_DWORD *)this + 32);
  if ( v2 <= 0 )
    return 0;
  v3 = *((_DWORD *)this + 31);
  if ( *(_DWORD *)(v3 + 20) != a2 )
  {
    v4 = 44;
    v5 = 0;
    while ( ++v5 != v2 )
    {
      v6 = *(_DWORD *)(v3 + v4 + 20);
      v4 += 44;
      if ( v6 == a2 )
        return 1;
    }
    return 0;
  }
  return 1;
}


// ===== 763778 gameswf::movie_def_impl::set_jpeg_loader(gameswf::jpeg::input *) =====
int __fastcall gameswf::movie_def_impl::set_jpeg_loader(int result, int a2)
{
  *(_DWORD *)(result + 208) = a2;
  return result;
}


// ===== 763780 gameswf::movie_def_impl::get_jpeg_loader(void) =====
int __fastcall gameswf::movie_def_impl::get_jpeg_loader(gameswf::movie_def_impl *this)
{
  return *((_DWORD *)this + 52);
}


// ===== 763788 gameswf::movie_def_impl::get_playlist(int) =====
int __fastcall gameswf::movie_def_impl::get_playlist(gameswf::movie_def_impl *this, int a2)
{
  return *((_DWORD *)this + 21) + 16 * a2;
}


// ===== 763794 gameswf::movie_def_impl::get_init_actions(int) =====
int __fastcall gameswf::movie_def_impl::get_init_actions(gameswf::movie_def_impl *this, int a2)
{
  return *((_DWORD *)this + 25) + 16 * a2;
}


// ===== 7637a0 gameswf::movie_def_impl::output_cached_data(gameswf::tu_file *,gameswf::cache_options const&) =====
int __fastcall gameswf::movie_def_impl::output_cached_data(int a1, _DWORD *a2, int a3)
{
  int v3; // r4
  int v7; // r2
  int *v8; // r6
  int v9; // r1
  int v11; // r3
  int v12; // r0
  int v13; // r12
  int v14; // r7
  int v15; // r1
  int v16; // r3
  int v17; // r0
  int v18; // r12
  _WORD v19[6]; // [sp+0h] [bp-Ch] BYREF

  strcpy((char *)v19, "gscX");
  v3 = 0;
  HIBYTE(v19[1]) = 6;
  ((void (__fastcall *)(_WORD *, int, _DWORD))a2[3])(v19, 4, *a2);
  v7 = *(_DWORD *)(a1 + 68);
  v8 = (int *)(a1 + 68);
  if ( v7 )
  {
    v9 = *(_DWORD *)(v7 + 4);
    if ( v9 >= 0 )
    {
      v11 = 8;
      while ( 1 )
      {
        v12 = *(_DWORD *)(v7 + v11);
        v13 = v7 + v11;
        v11 += 16;
        if ( v12 != -2 && *(_DWORD *)(v13 + 4) != -1 )
          break;
        if ( ++v3 > v9 )
        {
          if ( !v8 )
            goto LABEL_4;
          goto LABEL_10;
        }
      }
    }
    if ( v8 )
    {
LABEL_10:
      while ( v7 )
      {
        if ( *(_DWORD *)(v7 + 4) < v3 )
          break;
        v14 = 16 * v3 + 8;
        v19[3] = *(_WORD *)(v7 + v14 + 8);
        ((void (__fastcall *)(_WORD *, int, _DWORD))a2[3])(&v19[3], 2, *a2);
        (*(void (__fastcall **)(_DWORD, _DWORD *, int))(**(_DWORD **)(*v8 + v14 + 12) + 28))(
          *(_DWORD *)(*v8 + v14 + 12),
          a2,
          a3);
        v7 = *v8;
        v15 = *(_DWORD *)(*v8 + 4);
        if ( v3 > v15 )
          break;
        if ( v15 >= ++v3 )
        {
          v16 = 16 * v3 + 8;
          do
          {
            v17 = *(_DWORD *)(v7 + v16);
            v18 = v7 + v16;
            v16 += 16;
            if ( v17 != -2 && *(_DWORD *)(v18 + 4) != -1 )
              break;
            ++v3;
          }
          while ( v15 >= v3 );
        }
      }
    }
  }
LABEL_4:
  v19[3] = -1;
  return ((int (__fastcall *)(_WORD *, int, _DWORD))a2[3])(&v19[3], 2, *a2);
}


// ===== 763920 gameswf::hash<int,gameswf::smart_ptr<gameswf::character_def>,gameswf::fixed_size_hash<int>>::find_index(int const&) =====
int __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::character_def>,gameswf::fixed_size_hash<int>>::find_index(
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


// ===== 7639e0 gameswf::hash<int,gameswf::smart_ptr<gameswf::font>,gameswf::fixed_size_hash<int>>::find_index(int const&) =====
int __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::font>,gameswf::fixed_size_hash<int>>::find_index(
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


// ===== 763aa0 gameswf::hash<int,gameswf::smart_ptr<gameswf::bitmap_character_def>,gameswf::fixed_size_hash<int>>::find_index(int const&) =====
int __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::bitmap_character_def>,gameswf::fixed_size_hash<int>>::find_index(
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


// ===== 763b60 gameswf::hash<int,gameswf::smart_ptr<gameswf::sound_sample>,gameswf::fixed_size_hash<int>>::find_index(int const&) =====
int __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::sound_sample>,gameswf::fixed_size_hash<int>>::find_index(
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


// ===== 763c20 gameswf::hash<int,gameswf::tu_string,gameswf::fixed_size_hash<int>>::find_index(int const&) =====
int __fastcall gameswf::hash<int,gameswf::tu_string,gameswf::fixed_size_hash<int>>::find_index(int *a1, _DWORD *a2)
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
  v8 = 4 * (v4 & v6) + 1;
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
    v10 = (int *)(v2 + 32 * result + 8);
    v11 = *(_DWORD *)(v2 + 32 * result + 12);
  }
  return result;
}


// ===== 763ce0 `global constructor keyed to'.._.._src_gameswf_gameswf_movie_def.cpp =====
int `global constructor keyed to'.._.._src_gameswf_gameswf_movie_def.cpp()
{
  gameswf::s_tag_loaders = 0;
  return _aeabi_atexit(
           (int)&gameswf::s_tag_loaders,
           (int)gameswf::hash<int,void (*)(gameswf::stream *,int,gameswf::movie_definition_sub *),gameswf::fixed_size_hash<int>>::~hash,
           (int)&_dso_handle);
}


// ===== 763d1c gameswf::hash<int,void (*)(gameswf::stream *,int,gameswf::movie_definition_sub *),gameswf::fixed_size_hash<int>>::clear(void) =====
void __fastcall gameswf::hash<int,void (*)(gameswf::stream *,int,gameswf::movie_definition_sub *),gameswf::fixed_size_hash<int>>::clear(
        _DWORD **a1)
{
  _DWORD *v2; // r0
  int v3; // r1
  int v4; // r2
  int v5; // r3
  _DWORD *v6; // r12

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
          v6[1] = 0;
          *v6 = -2;
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


// ===== 763d9c gameswf::hash<int,void (*)(gameswf::stream *,int,gameswf::movie_definition_sub *),gameswf::fixed_size_hash<int>>::~hash() =====
_DWORD **__fastcall gameswf::hash<int,void (*)(gameswf::stream *,int,gameswf::movie_definition_sub *),gameswf::fixed_size_hash<int>>::~hash(
        _DWORD **a1)
{
  gameswf::hash<int,void (*)(gameswf::stream *,int,gameswf::movie_definition_sub *),gameswf::fixed_size_hash<int>>::clear(a1);
  return a1;
}


// ===== 763db0 gameswf::clears_tag_loaders(void) =====
void __fastcall gameswf::clears_tag_loaders(gameswf *this)
{
  gameswf::hash<int,void (*)(gameswf::stream *,int,gameswf::movie_definition_sub *),gameswf::fixed_size_hash<int>>::clear((_DWORD **)&gameswf::s_tag_loaders);
}


// ===== 763dc0 gameswf::destruct<gameswf::jpeg::input>(gameswf::jpeg::input const*) =====
void __fastcall gameswf::destruct<gameswf::jpeg::input>(void (__fastcall ***a1)(_DWORD))
{
  if ( a1 )
  {
    (**a1)(a1);
    gameswf::free_internal(a1);
  }
}


// ===== 763dec gameswf::hash<gameswf::stringi_pointer,int,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::clear(void) =====
void __fastcall gameswf::hash<gameswf::stringi_pointer,int,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::clear(
        _DWORD **a1)
{
  _DWORD *v2; // r0
  int v3; // r1
  int v4; // r2
  int v5; // r3
  _DWORD *v6; // r12

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
          v6[1] = 0;
          *v6 = -2;
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


// ===== 763e6c gameswf::destruct<gameswf::execute_tag>(gameswf::execute_tag const*) =====
void __fastcall gameswf::destruct<gameswf::execute_tag>(void (__fastcall ***a1)(_DWORD))
{
  if ( a1 )
  {
    (**a1)(a1);
    gameswf::free_internal(a1);
  }
}


// ===== 763e98 gameswf::hash<int,gameswf::smart_ptr<gameswf::sound_sample>,gameswf::fixed_size_hash<int>>::clear(void) =====
void __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::sound_sample>,gameswf::fixed_size_hash<int>>::clear(
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


// ===== 763f28 gameswf::hash<int,gameswf::smart_ptr<gameswf::bitmap_character_def>,gameswf::fixed_size_hash<int>>::clear(void) =====
void __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::bitmap_character_def>,gameswf::fixed_size_hash<int>>::clear(
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


// ===== 763fb8 gameswf::hash<int,gameswf::smart_ptr<gameswf::font>,gameswf::fixed_size_hash<int>>::clear(void) =====
void __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::font>,gameswf::fixed_size_hash<int>>::clear(_DWORD **a1)
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


// ===== 764048 gameswf::smart_ptr<gameswf::character_def>::set_ref(gameswf::character_def*) =====
void __fastcall gameswf::smart_ptr<gameswf::character_def>::set_ref(
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


// ===== 764088 gameswf::hash<int,gameswf::smart_ptr<gameswf::character_def>,gameswf::fixed_size_hash<int>>::get(int const&,gameswf::smart_ptr<gameswf::character_def>*) =====
int __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::character_def>,gameswf::fixed_size_hash<int>>::get(
        int *a1,
        _DWORD *a2,
        gameswf::ref_counted **a3)
{
  int index; // r3

  index = gameswf::hash<int,gameswf::smart_ptr<gameswf::character_def>,gameswf::fixed_size_hash<int>>::find_index(
            a1,
            a2);
  if ( index < 0 )
    return 0;
  if ( a3 )
    gameswf::smart_ptr<gameswf::character_def>::set_ref(a3, *(gameswf::ref_counted **)(*a1 + 16 * index + 20));
  return 1;
}


// ===== 7640d4 gameswf::smart_ptr<gameswf::sound_sample>::set_ref(gameswf::sound_sample*) =====
void __fastcall gameswf::smart_ptr<gameswf::sound_sample>::set_ref(
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


// ===== 764114 gameswf::hash<int,gameswf::smart_ptr<gameswf::sound_sample>,gameswf::fixed_size_hash<int>>::get(int const&,gameswf::smart_ptr<gameswf::sound_sample>*) =====
int __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::sound_sample>,gameswf::fixed_size_hash<int>>::get(
        int *a1,
        _DWORD *a2,
        gameswf::ref_counted **a3)
{
  int index; // r3

  index = gameswf::hash<int,gameswf::smart_ptr<gameswf::sound_sample>,gameswf::fixed_size_hash<int>>::find_index(a1, a2);
  if ( index < 0 )
    return 0;
  if ( a3 )
    gameswf::smart_ptr<gameswf::sound_sample>::set_ref(a3, *(gameswf::ref_counted **)(*a1 + 16 * index + 20));
  return 1;
}


// ===== 764160 gameswf::movie_def_impl::get_sound_sample(int) =====
gameswf::ref_counted *__fastcall gameswf::movie_def_impl::get_sound_sample(gameswf::movie_def_impl *this, int a2)
{
  gameswf::ref_counted *v2; // r4
  int v4; // [sp+4h] [bp-Ch] BYREF
  gameswf::ref_counted *v5; // [sp+Ch] [bp-4h] BYREF

  v4 = a2;
  v5 = nullptr;
  gameswf::hash<int,gameswf::smart_ptr<gameswf::sound_sample>,gameswf::fixed_size_hash<int>>::get(
    (int *)this + 20,
    &v4,
    &v5);
  v2 = v5;
  if ( v5 )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v5);
  return v2;
}


// ===== 7641a4 gameswf::hash<int,gameswf::smart_ptr<gameswf::bitmap_character_def>,gameswf::fixed_size_hash<int>>::get(int const&,gameswf::smart_ptr<gameswf::bitmap_character_def>*) =====
int __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::bitmap_character_def>,gameswf::fixed_size_hash<int>>::get(
        int *a1,
        _DWORD *a2,
        gameswf::ref_counted **a3)
{
  int index; // r3

  index = gameswf::hash<int,gameswf::smart_ptr<gameswf::bitmap_character_def>,gameswf::fixed_size_hash<int>>::find_index(
            a1,
            a2);
  if ( index < 0 )
    return 0;
  if ( a3 )
    gameswf::smart_ptr<gameswf::bitmap_character_def>::set_ref(a3, *(gameswf::ref_counted **)(*a1 + 16 * index + 20));
  return 1;
}


// ===== 7641f0 gameswf::movie_def_impl::get_bitmap_character(int) =====
gameswf::ref_counted *__fastcall gameswf::movie_def_impl::get_bitmap_character(gameswf::movie_def_impl *this, int a2)
{
  gameswf::ref_counted *v2; // r4
  int v4; // [sp+4h] [bp-Ch] BYREF
  gameswf::ref_counted *v5; // [sp+Ch] [bp-4h] BYREF

  v4 = a2;
  v5 = nullptr;
  gameswf::hash<int,gameswf::smart_ptr<gameswf::bitmap_character_def>,gameswf::fixed_size_hash<int>>::get(
    (int *)this + 19,
    &v4,
    &v5);
  v2 = v5;
  if ( v5 )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v5);
  return v2;
}


// ===== 764234 gameswf::smart_ptr<gameswf::font>::set_ref(gameswf::font*) =====
void __fastcall gameswf::smart_ptr<gameswf::font>::set_ref(gameswf::ref_counted **a1, gameswf::ref_counted *this)
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


// ===== 764274 gameswf::hash<int,gameswf::smart_ptr<gameswf::font>,gameswf::fixed_size_hash<int>>::get(int const&,gameswf::smart_ptr<gameswf::font>*) =====
int __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::font>,gameswf::fixed_size_hash<int>>::get(
        int *a1,
        _DWORD *a2,
        gameswf::ref_counted **a3)
{
  int index; // r3

  index = gameswf::hash<int,gameswf::smart_ptr<gameswf::font>,gameswf::fixed_size_hash<int>>::find_index(a1, a2);
  if ( index < 0 )
    return 0;
  if ( a3 )
    gameswf::smart_ptr<gameswf::font>::set_ref(a3, *(gameswf::ref_counted **)(*a1 + 16 * index + 20));
  return 1;
}


// ===== 7642c0 gameswf::movie_def_impl::get_font(int) =====
gameswf::ref_counted *__fastcall gameswf::movie_def_impl::get_font(gameswf::movie_def_impl *this, int a2)
{
  gameswf::ref_counted *v2; // r4
  int v4; // [sp+4h] [bp-Ch] BYREF
  gameswf::ref_counted *v5; // [sp+Ch] [bp-4h] BYREF

  v4 = a2;
  v5 = nullptr;
  gameswf::hash<int,gameswf::smart_ptr<gameswf::font>,gameswf::fixed_size_hash<int>>::get((int *)this + 18, &v4, &v5);
  v2 = v5;
  if ( v5 )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v5);
  return v2;
}


// ===== 764304 gameswf::smart_ptr<gameswf::abc_def>::set_ref(gameswf::abc_def*) =====
void __fastcall gameswf::smart_ptr<gameswf::abc_def>::set_ref(gameswf::ref_counted **a1, gameswf::ref_counted *this)
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


// ===== 764344 gameswf::array<gameswf::font *>::reserve(int) =====
void __fastcall gameswf::array<gameswf::font *>::reserve(int a1, int a2)
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


// ===== 7643c0 gameswf::array<int>::reserve(int) =====
void __fastcall gameswf::array<int>::reserve(int a1, int a2)
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


// ===== 76443c gameswf::array<gameswf::execute_tag *>::reserve(int) =====
void __fastcall gameswf::array<gameswf::execute_tag *>::reserve(int a1, int a2)
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


// ===== 7644b8 gameswf::movie_def_impl::add_init_action(int,gameswf::execute_tag *) =====
void __fastcall gameswf::movie_def_impl::add_init_action(
        gameswf::movie_def_impl *this,
        int a2,
        gameswf::execute_tag *a3)
{
  int v3; // r6
  int v4; // r5
  int v7; // r7
  int v8; // r3
  int v9; // r8

  v3 = *((_DWORD *)this + 15);
  v4 = *((_DWORD *)this + 25);
  v7 = v4 + 16 * v3;
  v8 = *(_DWORD *)(v7 + 4);
  v9 = v8 + 1;
  if ( v8 + 1 > *(_DWORD *)(v7 + 8) )
  {
    gameswf::array<gameswf::execute_tag *>::reserve(v4 + 16 * v3, v9 + (v9 >> 1));
    v8 = *(_DWORD *)(v7 + 4);
  }
  *(_DWORD *)(*(_DWORD *)(v4 + 16 * v3) + 4 * v8) = a3;
  *(_DWORD *)(v7 + 4) = v9;
  *((_BYTE *)this + 236) = 1;
}


// ===== 76450c gameswf::movie_def_impl::add_execute_tag(gameswf::execute_tag *) =====
void __fastcall gameswf::movie_def_impl::add_execute_tag(gameswf::movie_def_impl *this, gameswf::execute_tag *a2)
{
  int v2; // r6
  int v3; // r7
  int v5; // r4
  int v6; // r3
  int v7; // r5

  v2 = *((_DWORD *)this + 21);
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


// ===== 764554 gameswf::array<gameswf::array<gameswf::execute_tag *>>::reserve(int) =====
void __fastcall gameswf::array<gameswf::array<gameswf::execute_tag *>>::reserve(int a1, int a2)
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


// ===== 7645d0 gameswf::array<gameswf::array<gameswf::execute_tag *>>::resize(int) =====
void __fastcall gameswf::array<gameswf::array<gameswf::execute_tag *>>::resize(_DWORD *a1, int a2)
{
  int v2; // r10
  int v5; // r6
  int v6; // r5
  _DWORD *v7; // r0
  int v8; // r3
  int v9; // r2
  int v10; // r1
  int v11; // r10
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
        gameswf::array<gameswf::execute_tag *>::reserve((int)v7, 0);
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
      gameswf::array<gameswf::execute_tag *>::reserve((int)v7, 0);
      v5 += 16;
    }
    while ( v6 != v2 );
  }
LABEL_8:
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::array<gameswf::execute_tag *>>::reserve((int)a1, a2 + (a2 >> 1));
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


// ===== 7646c8 gameswf::array<gameswf::import_info>::reserve(int) =====
void __fastcall gameswf::array<gameswf::import_info>::reserve(int a1, int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 44 * a2, 44 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(44 * a2);
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


// ===== 764750 gameswf::array<gameswf::smart_ptr<gameswf::bitmap_info>>::reserve(int) =====
void __fastcall gameswf::array<gameswf::smart_ptr<gameswf::bitmap_info>>::reserve(int a1, int a2)
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


// ===== 7647cc gameswf::array<gameswf::smart_ptr<gameswf::bitmap_info>>::push_back<gameswf::bitmap_info*>(gameswf::bitmap_info* const&) =====
int __fastcall gameswf::array<gameswf::smart_ptr<gameswf::bitmap_info>>::push_back<gameswf::bitmap_info*>(
        _DWORD *a1,
        int *a2)
{
  int v2; // r3
  int v4; // r5
  int result; // r0
  bool v7; // zf

  v2 = a1[1];
  v4 = v2 + 1;
  if ( v2 + 1 > a1[2] )
  {
    gameswf::array<gameswf::smart_ptr<gameswf::bitmap_info>>::reserve((int)a1, v4 + (v4 >> 1));
    v2 = a1[1];
  }
  result = *a2;
  v7 = *a2 == 0;
  *(_DWORD *)(*a1 + 4 * v2) = *a2;
  if ( !v7 )
    result = gameswf::ref_counted::add_ref(result);
  a1[1] = v4;
  return result;
}


// ===== 76481c gameswf::movie_def_impl::add_bitmap_info(gameswf::bitmap_info *) =====
int __fastcall gameswf::movie_def_impl::add_bitmap_info(int a1, int a2)
{
  int v3; // [sp+4h] [bp-8h] BYREF

  v3 = a2;
  return gameswf::array<gameswf::smart_ptr<gameswf::bitmap_info>>::push_back<gameswf::bitmap_info*>(
           (_DWORD *)(a1 + 156),
           &v3);
}


// ===== 764840 gameswf::array<gameswf::smart_ptr<gameswf::movie_definition>>::reserve(int) =====
void __fastcall gameswf::array<gameswf::smart_ptr<gameswf::movie_definition>>::reserve(int a1, int a2)
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


// ===== 7648bc gameswf::array<int>::insert(int,int const&) =====
void __fastcall gameswf::array<int>::insert(_DWORD *a1, int a2, _DWORD *a3)
{
  int v3; // r5
  int v6; // r7

  v3 = a1[1];
  v6 = v3 + 1;
  if ( v3 != -1 && v6 > a1[2] )
    gameswf::array<int>::reserve((int)a1, v6 + (v6 >> 1));
  *(_DWORD *)(*a1 + 4 * v3) = 0;
  a1[1] = v6;
  if ( v3 > a2 )
    memmove((void *)(*a1 + 4 * (a2 + 1)), (const void *)(*a1 + 4 * a2), 4 * (v3 - a2));
  *(_DWORD *)(*a1 + 4 * a2) = *a3;
}


// ===== 76493c gameswf::hash<int,void (*)(gameswf::stream *,int,gameswf::movie_definition_sub *),gameswf::fixed_size_hash<int>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<int,void (*)(gameswf::stream *,int,gameswf::movie_definition_sub *),gameswf::fixed_size_hash<int>>::set_raw_capacity(
        _DWORD **a1,
        int a2)
{
  _DWORD *v2; // r8
  int v3; // r4
  _DWORD *v4; // r3
  int v5; // r5
  int v6; // r3
  _DWORD *v7; // r3
  int v8; // r7
  int v9; // r6
  int v10; // r4
  _DWORD *v11; // r5
  _DWORD v12[2]; // [sp+4h] [bp-8h] BYREF

  v2 = a1;
  if ( a2 <= 0 )
  {
LABEL_17:
    gameswf::hash<int,void (*)(gameswf::stream *,int,gameswf::movie_definition_sub *),gameswf::fixed_size_hash<int>>::clear(a1);
    return;
  }
  v3 = 1 << (int)(float)((float)(logf((float)(a2 - 1)) / 0.69315) + 1.0);
  v4 = (_DWORD *)*v2;
  if ( v3 < 4 )
    v3 = 4;
  if ( !v4 || v4[1] + 1 != v3 )
  {
    v5 = 0;
    v12[0] = gameswf::malloc_internal(16 * v3 + 8);
    *(_DWORD *)v12[0] = 0;
    *(_DWORD *)(v12[0] + 4) = v3 - 1;
    v6 = 8;
    do
    {
      ++v5;
      *(_DWORD *)(v12[0] + v6) = -2;
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
          ++v9;
          v11 = &v7[v10];
          if ( v7[v10] != -2 && v11[1] != -1 )
          {
            gameswf::hash<int,void (*)(gameswf::stream *,int,gameswf::movie_definition_sub *),gameswf::fixed_size_hash<int>>::add(
              v12,
              v11 + 2,
              v11 + 3);
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
    a1 = (_DWORD **)v12;
    *v2 = v12[0];
    v12[0] = 0;
    goto LABEL_17;
  }
}


// ===== 764a94 gameswf::hash<int,void (*)(gameswf::stream *,int,gameswf::movie_definition_sub *),gameswf::fixed_size_hash<int>>::check_expand(void) =====
void __fastcall gameswf::hash<int,void (*)(gameswf::stream *,int,gameswf::movie_definition_sub *),gameswf::fixed_size_hash<int>>::check_expand(
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
  gameswf::hash<int,void (*)(gameswf::stream *,int,gameswf::movie_definition_sub *),gameswf::fixed_size_hash<int>>::set_raw_capacity(
    a1,
    v2);
}


// ===== 764ac8 gameswf::hash<int,void (*)(gameswf::stream *,int,gameswf::movie_definition_sub *),gameswf::fixed_size_hash<int>>::add(int const&,void (* const&)(gameswf::stream *,int,gameswf::movie_definition_sub *)) =====
_DWORD *__fastcall gameswf::hash<int,void (*)(gameswf::stream *,int,gameswf::movie_definition_sub *),gameswf::fixed_size_hash<int>>::add(
        _DWORD **a1,
        _DWORD *a2,
        _DWORD *a3)
{
  int v6; // r2
  int v7; // r3
  _DWORD *result; // r0
  _DWORD *v9; // r3
  int v10; // r7
  int v11; // r6
  int v12; // r10
  int v13; // r9
  _DWORD *v14; // r8
  int v15; // r11
  int v16; // r1
  int v17; // r0
  int v18; // r12
  int v19; // r7
  int v20; // r11
  int *v21; // r11
  int v22; // r1

  gameswf::hash<int,void (*)(gameswf::stream *,int,gameswf::movie_definition_sub *),gameswf::fixed_size_hash<int>>::check_expand(a1);
  v6 = 5381;
  v7 = 4;
  ++**a1;
  do
  {
    --v7;
    result = (_DWORD *)*((unsigned __int8 *)a2 + v7);
    v6 = (int)&result[16400 * v6] - v6;
  }
  while ( v7 );
  v9 = *a1;
  if ( v6 == -1 )
    v6 = -32769;
  v10 = v9[1];
  v11 = v6 & v10;
  v12 = 2 * (v6 & v10) + 1;
  v13 = v9[2 * v12];
  v14 = &v9[2 * v12];
  if ( v13 == -2 )
  {
    v9[2 * v12] = -1;
LABEL_14:
    v14[1] = v6;
    v14[2] = *a2;
    v14[3] = *a3;
    return result;
  }
  v15 = v14[1];
  if ( v15 == -1 )
    goto LABEL_14;
  v16 = v6 & v10;
  do
  {
    v16 = (v16 + 1) & v10;
    v17 = 2 * v16 + 1;
    v18 = v9[2 * v17];
    result = &v9[2 * v17];
  }
  while ( v18 != -2 );
  v19 = v10 & v15;
  if ( v19 == v11 )
  {
    *result = v13;
    result[1] = v14[1];
    result[2] = v14[2];
    result[3] = v14[3];
    v14[2] = *a2;
    result = (_DWORD *)*a3;
    v14[3] = *a3;
    v9[2 * v12] = v16;
    v14[1] = v6;
  }
  else
  {
    do
    {
      v20 = 2 * v19 + 1;
      v19 = v9[2 * v20];
      v21 = &v9[2 * v20];
    }
    while ( v19 != v11 );
    *result = v13;
    result[1] = v14[1];
    result[2] = v14[2];
    result[3] = v14[3];
    *v21 = v16;
    v14[2] = *a2;
    v22 = *a3;
    v14[1] = v6;
    v14[3] = v22;
    v9[2 * v12] = -1;
  }
  return result;
}


// ===== 764c2c gameswf::register_tag_loader(int,void (*)(gameswf::stream *,int,gameswf::movie_definition_sub *)) =====
_DWORD *__fastcall gameswf::register_tag_loader(
        gameswf *this,
        int a2,
        void (*a3)(gameswf::stream *, int, gameswf::movie_definition_sub *))
{
  int v4; // [sp+0h] [bp-Ch] BYREF
  gameswf *v5; // [sp+4h] [bp-8h] BYREF

  v5 = this;
  v4 = a2;
  return gameswf::hash<int,void (*)(gameswf::stream *,int,gameswf::movie_definition_sub *),gameswf::fixed_size_hash<int>>::add(
           (_DWORD **)&gameswf::s_tag_loaders,
           &v5,
           &v4);
}


// ===== 764c5c gameswf::is_tag_loaders_initialized(void) =====
int __fastcall gameswf::is_tag_loaders_initialized(gameswf *this)
{
  int v1; // r1
  int v2; // r1
  int result; // r0

  if ( gameswf::s_tag_loaders )
  {
    v2 = *(_DWORD *)gameswf::s_tag_loaders;
    if ( *(int *)gameswf::s_tag_loaders < 96 )
      v2 = 96;
    v1 = (3 * v2) >> 1;
  }
  else
  {
    v1 = 144;
  }
  gameswf::hash<int,void (*)(gameswf::stream *,int,gameswf::movie_definition_sub *),gameswf::fixed_size_hash<int>>::set_raw_capacity(
    (_DWORD **)&gameswf::s_tag_loaders,
    v1);
  result = gameswf::s_tag_loaders;
  if ( gameswf::s_tag_loaders )
    return *(_DWORD *)gameswf::s_tag_loaders > 0;
  return result;
}


// ===== 764cc0 gameswf::hash<gameswf::stringi_pointer,int,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::find_index(gameswf::stringi_pointer const&) =====
int __fastcall gameswf::hash<gameswf::stringi_pointer,int,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::find_index(
        int *a1,
        gameswf::tu_string **a2)
{
  int v4; // r4
  int hashi; // r0
  int v7; // r3
  int v8; // r7
  int v9; // r2
  int v10; // r8
  int v11; // r1
  int *v12; // r8
  int v13; // r3
  gameswf::tu_string *v14; // r2
  gameswf::tu_string *v15; // r3
  const char *v16; // r0
  const char *v17; // r1

  if ( !*a1 )
    return -1;
  hashi = gameswf::tu_string::get_hashi(*a2);
  v7 = *a1;
  v8 = hashi;
  v9 = *(_DWORD *)(*a1 + 4);
  if ( hashi == -1 )
    v8 = -32769;
  v4 = v8 & v9;
  v10 = 2 * (v8 & v9) + 1;
  v11 = *(_DWORD *)(v7 + 8 * v10);
  v12 = (int *)(v7 + 8 * v10);
  if ( v11 == -2 )
    return -1;
  v13 = v12[1];
  if ( v13 != -1 && (v9 & v13) != v4 )
    return -1;
  while ( 1 )
  {
    if ( v13 == v8 )
    {
      v14 = (gameswf::tu_string *)v12[2];
      v15 = *a2;
      if ( v14 == *a2 )
        break;
      v16 = *(char *)v14 == -1 ? *((const char **)v14 + 3) : (char *)v14 + 1;
      v17 = *(char *)v15 == -1 ? *((const char **)v15 + 3) : (char *)v15 + 1;
      if ( !gameswf::tu_string::stricmp(v16, v17) )
        break;
    }
    v4 = *v12;
    if ( *v12 == -1 )
      break;
    v12 = (int *)(*a1 + 16 * v4 + 8);
    v13 = v12[1];
  }
  return v4;
}


// ===== 764da0 gameswf::movie_def_impl::get_labeled_frame(gameswf::tu_stringi const&,int *) =====
int __fastcall gameswf::movie_def_impl::get_labeled_frame(int a1, gameswf::tu_string *a2, _DWORD *a3)
{
  int result; // r0
  int v6; // r2
  int v7; // r3
  gameswf::tu_string *v8; // [sp+4h] [bp-8h] BYREF

  v8 = a2;
  result = gameswf::hash<gameswf::stringi_pointer,int,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::find_index(
             (int *)(a1 + 116),
             &v8);
  v7 = result;
  if ( result < 0 )
    return 0;
  if ( a3 )
    v6 = *(_DWORD *)(a1 + 116);
  else
    result = 1;
  if ( a3 )
  {
    *a3 = *(_DWORD *)(v6 + 16 * v7 + 20);
    return 1;
  }
  return result;
}


// ===== 764df4 gameswf::hash<gameswf::tu_stringi,bool,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(gameswf::tu_stringi const&) =====
int __fastcall gameswf::hash<gameswf::tu_stringi,bool,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(
        int *a1,
        gameswf::tu_string *this)
{
  int v4; // r4
  int hashi; // r0
  int v7; // r3
  int v8; // r7
  int v9; // r2
  int v10; // r8
  int v11; // r1
  int *v12; // r8
  int v13; // r3
  const char *v14; // r0
  const char *v15; // r1

  if ( !*a1 )
    return -1;
  hashi = gameswf::tu_string::get_hashi(this);
  v7 = *a1;
  v8 = hashi;
  v9 = *(_DWORD *)(*a1 + 4);
  if ( hashi == -1 )
    v8 = -32769;
  v4 = v8 & v9;
  v10 = 4 * (v8 & v9) + 1;
  v11 = *(_DWORD *)(v7 + 8 * v10);
  v12 = (int *)(v7 + 8 * v10);
  if ( v11 == -2 )
    return -1;
  v13 = v12[1];
  if ( v13 != -1 && (v9 & v13) != v4 )
    return -1;
  while ( 1 )
  {
    if ( v8 == v13 )
    {
      if ( this == (gameswf::tu_string *)(v12 + 2) )
        break;
      v14 = *((char *)v12 + 8) == -1 ? (const char *)v12[5] : (char *)v12 + 9;
      v15 = *(char *)this == -1 ? *((const char **)this + 3) : (char *)this + 1;
      if ( !gameswf::tu_string::stricmp(v14, v15) )
        break;
    }
    v4 = *v12;
    if ( *v12 == -1 )
      break;
    v12 = (int *)(*a1 + 32 * v4 + 8);
    v13 = v12[1];
  }
  return v4;
}


// ===== 764ed4 gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(gameswf::tu_stringi const&) =====
int __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(
        int *a1,
        gameswf::tu_string *this)
{
  int v4; // r4
  int hashi; // r0
  int v7; // r3
  int v8; // r7
  int v9; // r2
  int v10; // r8
  int v11; // r1
  int *v12; // r8
  int v13; // r3
  const char *v14; // r0
  const char *v15; // r1

  if ( !*a1 )
    return -1;
  hashi = gameswf::tu_string::get_hashi(this);
  v7 = *a1;
  v8 = hashi;
  v9 = *(_DWORD *)(*a1 + 4);
  if ( hashi == -1 )
    v8 = -32769;
  v4 = v8 & v9;
  v10 = 4 * (v8 & v9) + 1;
  v11 = *(_DWORD *)(v7 + 8 * v10);
  v12 = (int *)(v7 + 8 * v10);
  if ( v11 == -2 )
    return -1;
  v13 = v12[1];
  if ( v13 != -1 && (v9 & v13) != v4 )
    return -1;
  while ( 1 )
  {
    if ( v8 == v13 )
    {
      if ( this == (gameswf::tu_string *)(v12 + 2) )
        break;
      v14 = *((char *)v12 + 8) == -1 ? (const char *)v12[5] : (char *)v12 + 9;
      v15 = *(char *)this == -1 ? *((const char **)this + 3) : (char *)this + 1;
      if ( !gameswf::tu_string::stricmp(v14, v15) )
        break;
    }
    v4 = *v12;
    if ( *v12 == -1 )
      break;
    v12 = (int *)(*a1 + 32 * v4 + 8);
    v13 = v12[1];
  }
  return v4;
}


// ===== 764fb4 gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::get(gameswf::tu_stringi const&,gameswf::smart_ptr<gameswf::character_def>*) =====
int __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::get(
        int *a1,
        gameswf::tu_string *a2,
        gameswf::ref_counted **a3)
{
  int index; // r3

  index = gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(
            a1,
            a2);
  if ( index < 0 )
    return 0;
  if ( a3 )
    gameswf::smart_ptr<gameswf::character_def>::set_ref(a3, *(gameswf::ref_counted **)(*a1 + 32 * index + 36));
  return 1;
}


// ===== 765000 gameswf::movie_def_impl::get_height_pixels(void) =====
float __fastcall gameswf::movie_def_impl::get_height_pixels(gameswf::movie_def_impl *this)
{
  return ceilf((float)(*((float *)this + 48) - *((float *)this + 47)) / 20.0);
}


// ===== 765024 gameswf::movie_def_impl::get_width_pixels(void) =====
float __fastcall gameswf::movie_def_impl::get_width_pixels(gameswf::movie_def_impl *this)
{
  return ceilf((float)(*((float *)this + 46) - *((float *)this + 45)) / 20.0);
}


// ===== 765048 gameswf::movie_definition_sub::~movie_definition_sub() =====
void __fastcall gameswf::movie_definition_sub::~movie_definition_sub(gameswf::movie_definition_sub *this)
{
  int sound_handler; // r0

  *((_BYTE *)this + 65) = 1;
  *(_DWORD *)this = off_98FF28;
  sound_handler = gameswf::get_sound_handler(this);
  if ( sound_handler )
    (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)sound_handler + 28))(sound_handler, *((_DWORD *)this + 8));
  gameswf::hash<int,gameswf::matrix *,gameswf::fixed_size_hash<int>>::clear((_DWORD **)this + 13);
  gameswf::hash<int,gameswf::cxform *,gameswf::fixed_size_hash<int>>::clear((_DWORD **)this + 12);
  *(_DWORD *)this = off_98FFF0;
  gameswf::character_def::~character_def(this);
}


// ===== 7650c8 gameswf::movie_definition_sub::~movie_definition_sub() =====
void __fastcall gameswf::movie_definition_sub::~movie_definition_sub(gameswf::movie_definition_sub *this)
{
  int sound_handler; // r0

  *((_BYTE *)this + 65) = 1;
  *(_DWORD *)this = off_98FF28;
  sound_handler = gameswf::get_sound_handler(this);
  if ( sound_handler )
    (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)sound_handler + 28))(sound_handler, *((_DWORD *)this + 8));
  gameswf::hash<int,gameswf::matrix *,gameswf::fixed_size_hash<int>>::clear((_DWORD **)this + 13);
  gameswf::hash<int,gameswf::cxform *,gameswf::fixed_size_hash<int>>::clear((_DWORD **)this + 12);
  *(_DWORD *)this = off_98FFF0;
  gameswf::character_def::~character_def(this);
}


// ===== 765148 gameswf::movie_definition_sub::~movie_definition_sub() =====
void __fastcall gameswf::movie_definition_sub::~movie_definition_sub(gameswf::movie_definition_sub *this)
{
  gameswf::movie_definition_sub::~movie_definition_sub(this);
  LC_API_FREE_0(this);
}


// ===== 765164 gameswf::movie_definition::~movie_definition() =====
void __fastcall gameswf::movie_definition::~movie_definition(gameswf::movie_definition *this)
{
  *(_DWORD *)this = off_98FFF0;
  gameswf::character_def::~character_def(this);
}


// ===== 765198 gameswf::array<gameswf::smart_ptr<gameswf::bitmap_info>>::resize(int) [clone] =====
void __fastcall gameswf::array<gameswf::smart_ptr<gameswf::bitmap_info>>::resize(_DWORD *a1)
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


// ===== 765208 gameswf::hash<int,void (*)(gameswf::stream *,int,gameswf::movie_definition_sub *),gameswf::fixed_size_hash<int>>::find_index(int const&) [clone] =====
int __fastcall gameswf::hash<int,void (*)(gameswf::stream *,int,gameswf::movie_definition_sub *),gameswf::fixed_size_hash<int>>::find_index(
        _DWORD *a1)
{
  int result; // r0
  int v3; // r3
  int v4; // r2
  int v5; // r4
  int v6; // r2
  int v7; // r5
  int *v8; // r2
  int v9; // r5

  if ( !gameswf::s_tag_loaders )
    return -1;
  v3 = 5381;
  v4 = 4;
  do
  {
    --v4;
    v3 = 65600 * v3 + *((unsigned __int8 *)a1 + v4) - v3;
  }
  while ( v4 );
  v5 = *(_DWORD *)(gameswf::s_tag_loaders + 4);
  if ( v3 == -1 )
    v3 = -32769;
  result = v3 & v5;
  v6 = 2 * (v3 & v5) + 1;
  v7 = *(_DWORD *)(gameswf::s_tag_loaders + 8 * v6);
  v8 = (int *)(gameswf::s_tag_loaders + 8 * v6);
  if ( v7 == -2 )
    return -1;
  v9 = v8[1];
  if ( v9 != -1 && result != (v5 & v9) )
    return -1;
  while ( v3 != v9 || v8[2] != *a1 )
  {
    result = *v8;
    if ( *v8 == -1 )
      break;
    v8 = (int *)(gameswf::s_tag_loaders + 16 * result + 8);
    v9 = *(_DWORD *)(gameswf::s_tag_loaders + 16 * result + 12);
  }
  return result;
}


// ===== 7652d0 gameswf::get_tag_loader(int,void (**)(gameswf::stream *,int,gameswf::movie_definition_sub *)) =====
int __fastcall gameswf::get_tag_loader(int a1, _DWORD *a2)
{
  int index; // r3
  int v5; // [sp+4h] [bp-4h] BYREF

  v5 = a1;
  index = gameswf::hash<int,void (*)(gameswf::stream *,int,gameswf::movie_definition_sub *),gameswf::fixed_size_hash<int>>::find_index(&v5);
  if ( index < 0 )
    return 0;
  if ( a2 )
    *a2 = *(_DWORD *)(gameswf::s_tag_loaders + 16 * index + 20);
  return 1;
}


// ===== 765328 gameswf::array<gameswf::smart_ptr<gameswf::movie_definition>>::resize(int) [clone] =====
void __fastcall gameswf::array<gameswf::smart_ptr<gameswf::movie_definition>>::resize(_DWORD *a1)
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


// ===== 765398 gameswf::movie_definition::~movie_definition() =====
void __fastcall gameswf::movie_definition::~movie_definition(gameswf::movie_definition *this)
{
  *(_DWORD *)this = off_98FFF0;
  gameswf::character_def::~character_def(this);
  LC_API_FREE_0(this);
}


// ===== 7653d4 gameswf::hash<int,gameswf::smart_ptr<gameswf::character_def>,gameswf::fixed_size_hash<int>>::clear(void) =====
void __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::character_def>,gameswf::fixed_size_hash<int>>::clear(
        _DWORD **a1)
{
  _DWORD *v2; // r0
  int v3; // r8
  int v4; // r6
  int v5; // r5
  _DWORD *v6; // r7
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


// ===== 765464 gameswf::movie_def_impl::get_character_def(int) =====
gameswf::ref_counted *__fastcall gameswf::movie_def_impl::get_character_def(gameswf::movie_def_impl *this, int a2)
{
  gameswf::ref_counted *v2; // r4
  int v4; // [sp+4h] [bp-Ch] BYREF
  gameswf::ref_counted *v5; // [sp+Ch] [bp-4h] BYREF

  v4 = a2;
  v5 = nullptr;
  gameswf::hash<int,gameswf::smart_ptr<gameswf::character_def>,gameswf::fixed_size_hash<int>>::get(
    (int *)this + 17,
    &v4,
    &v5);
  v2 = v5;
  if ( v5 )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v5);
  return v2;
}


// ===== 7654a8 gameswf::movie_def_impl::input_cached_data(gameswf::tu_file *) =====
void __fastcall gameswf::movie_def_impl::input_cached_data(int a1, char *a2)
{
  const char *v4; // r1
  const char *v5; // r1
  int *v6; // r8
  int v7; // [sp+0h] [bp-14h] BYREF
  gameswf::ref_counted *v8; // [sp+4h] [bp-10h] BYREF
  _BYTE v9[3]; // [sp+8h] [bp-Ch] BYREF
  _BYTE v10[9]; // [sp+Bh] [bp-9h] BYREF

  (*((void (__fastcall **)(_BYTE *, int, _DWORD))a2 + 2))(v9, 4, *(_DWORD *)a2);
  if ( v9[0] == 103 && v9[1] == 115 && v9[2] == 99 )
  {
    v5 = (const char *)v10[0];
    if ( v10[0] == 6 )
    {
      v6 = (int *)(a1 + 68);
LABEL_8:
      if ( *((_DWORD *)a2 + 9) )
      {
LABEL_15:
        gameswf::log_error("error reading cache file (characters); skipping\n", v5);
      }
      else
      {
        while ( 1 )
        {
          if ( (*((int (__fastcall **)(_DWORD))a2 + 7))(*(_DWORD *)a2) )
          {
            gameswf::log_error("unexpected eof reading cache file (characters); skipping\n", (const char *)&dword_0 + 2);
            return;
          }
          (*((void (__fastcall **)(_BYTE *, char *, _DWORD))a2 + 2))(&v10[3], (char *)&dword_0 + 2, *(_DWORD *)a2);
          if ( *(__int16 *)&v10[3] == -1 )
            return;
          v7 = *(__int16 *)&v10[3];
          v8 = nullptr;
          gameswf::hash<int,gameswf::smart_ptr<gameswf::character_def>,gameswf::fixed_size_hash<int>>::get(v6, &v7, &v8);
          if ( !v8 )
            break;
          (*(void (__fastcall **)(gameswf::ref_counted *, char *))(*(_DWORD *)v8 + 32))(v8, a2);
          if ( !v8 )
            goto LABEL_8;
          gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v8);
          if ( *((_DWORD *)a2 + 9) )
            goto LABEL_15;
        }
        gameswf::log_error("sync error in cache file (reading characters)!  Skipping rest of cache data.\n", a2);
        if ( v8 )
          gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v8);
      }
    }
    else
    {
      gameswf::log_error("cached data is version %d, but we require version %d; skipping\n", (const char *)v10[0], 6);
    }
  }
  else
  {
    gameswf::log_error("cache file does not have the correct format; skipping\n", v4);
  }
}


// ===== 765614 gameswf::hash<int,gameswf::tu_string,gameswf::fixed_size_hash<int>>::clear(void) =====
void __fastcall gameswf::hash<int,gameswf::tu_string,gameswf::fixed_size_hash<int>>::clear(_DWORD **a1)
{
  _DWORD *v2; // r0
  int v3; // r7
  int v4; // r5
  int v5; // r4
  _DWORD *v6; // r6

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
          if ( *((char *)v6 + 12) == -1 )
            gameswf::free_internal((void *)v6[6]);
          *v6 = -2;
          v6[1] = 0;
          v2 = *a1;
        }
        v5 += 8;
      }
      while ( v3 >= v4 );
    }
    gameswf::free_internal(v2);
    *a1 = nullptr;
  }
}


// ===== 7656b4 gameswf::hash<gameswf::tu_stringi,bool,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(void) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,bool,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(
        _DWORD **a1)
{
  _DWORD *v2; // r0
  int v3; // r7
  int v4; // r5
  int v5; // r4
  _DWORD *v6; // r6

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
          if ( *((char *)v6 + 8) == -1 )
            gameswf::free_internal((void *)v6[5]);
          *v6 = -2;
          v6[1] = 0;
          v2 = *a1;
        }
        v5 += 8;
      }
      while ( v3 >= v4 );
    }
    gameswf::free_internal(v2);
    *a1 = nullptr;
  }
}


// ===== 765754 gameswf::array<gameswf::import_info>::resize(int) [clone] =====
void __fastcall gameswf::array<gameswf::import_info>::resize(int *a1)
{
  int v1; // r4
  int v3; // r6
  int v4; // r7
  void **v5; // r5
  int v6; // r2
  int v7; // r3
  int v8; // r3
  int v9; // r0
  int v10; // r1
  unsigned int v11; // r0
  unsigned int v12; // r1

  v1 = a1[1];
  if ( v1 > 0 )
  {
    v3 = 0;
    v4 = 0;
    while ( 1 )
    {
      ++v4;
      v5 = (void **)(*a1 + v3);
      v3 += 44;
      if ( *((char *)v5 + 24) == -1 )
      {
        gameswf::free_internal(v5[9]);
        if ( *(char *)v5 == -1 )
          goto LABEL_7;
LABEL_4:
        if ( v4 == v1 )
          goto LABEL_12;
      }
      else
      {
        if ( *(char *)v5 != -1 )
          goto LABEL_4;
LABEL_7:
        gameswf::free_internal(v5[3]);
        if ( v4 == v1 )
          goto LABEL_12;
      }
    }
  }
  if ( v1 < 0 )
  {
    v6 = 44 * v1;
    do
    {
      v7 = *a1;
      ++v1;
      *(_BYTE *)(v7 + v6) = 1;
      v8 = v7 + v6;
      v9 = *(_DWORD *)(v8 + 16);
      v10 = *(_DWORD *)(v8 + 40);
      *(_BYTE *)(v8 + 1) = 0;
      v11 = v9 & 0xFF000000 | 0xFFFFFF;
      v12 = v10 & 0xFF000000 | 0xFFFFFF;
      *(_DWORD *)(v8 + 16) = v11;
      *(_DWORD *)(v8 + 40) = v12;
      *(_BYTE *)(v8 + 19) = HIBYTE(v11) & 0xFE;
      *(_BYTE *)(v8 + 43) = HIBYTE(v12) & 0xFE;
      *(_DWORD *)(v8 + 20) = -1;
      *(_BYTE *)(v8 + 24) = 1;
      *(_BYTE *)(v8 + 25) = 0;
      v6 += 44;
    }
    while ( v1 );
  }
LABEL_12:
  a1[1] = 0;
}


// ===== 765858 gameswf::array<gameswf::font *>::insert(int,gameswf::font * const&) =====
void __fastcall gameswf::array<gameswf::font *>::insert(_DWORD *a1, int a2, _DWORD *a3)
{
  int v3; // r5
  int v6; // r7

  v3 = a1[1];
  v6 = v3 + 1;
  if ( v3 != -1 && v6 > a1[2] )
    gameswf::array<gameswf::font *>::reserve((int)a1, v6 + (v6 >> 1));
  *(_DWORD *)(*a1 + 4 * v3) = 0;
  a1[1] = v6;
  if ( v3 > a2 )
    memmove((void *)(*a1 + 4 * (a2 + 1)), (const void *)(*a1 + 4 * a2), 4 * (v3 - a2));
  *(_DWORD *)(*a1 + 4 * a2) = *a3;
}


// ===== 7658d8 gameswf::movie_def_impl::get_owned_fonts(gameswf::array<gameswf::font *> *) =====
void __fastcall gameswf::movie_def_impl::get_owned_fonts(int a1, _DWORD *a2)
{
  int v2; // r3
  int v5; // r5
  int v6; // r2
  int *v7; // r6
  int v8; // r1
  int v9; // r3
  int v10; // r0
  int v11; // r12
  int v12; // r3
  int v13; // r2
  int v14; // r1
  int v15; // r1
  int v16; // r3
  int v17; // r0
  int v18; // r12
  int v19; // r1
  int v20; // r4
  int v21; // r2
  _DWORD *v22; // [sp+0h] [bp-1Ch] BYREF
  int v23; // [sp+4h] [bp-18h]
  int v24; // [sp+8h] [bp-14h]
  char v25; // [sp+Ch] [bp-10h]
  int v26; // [sp+10h] [bp-Ch] BYREF
  int v27; // [sp+14h] [bp-8h] BYREF

  v2 = a2[1];
  if ( v2 < 0 )
  {
    v21 = 4 * v2;
    do
    {
      ++v2;
      *(_DWORD *)(*a2 + v21) = 0;
      v21 += 4;
    }
    while ( v2 );
  }
  v5 = 0;
  a2[1] = 0;
  v6 = *(_DWORD *)(a1 + 72);
  v7 = (int *)(a1 + 72);
  v22 = nullptr;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if ( v6 )
  {
    v8 = *(_DWORD *)(v6 + 4);
    if ( v8 >= 0 )
    {
      v9 = 8;
      while ( 1 )
      {
        v10 = *(_DWORD *)(v6 + v9);
        v11 = v6 + v9;
        v9 += 16;
        if ( v10 != -2 && *(_DWORD *)(v11 + 4) != -1 )
          break;
        if ( ++v5 > v8 )
        {
          if ( a1 == -72 )
            goto LABEL_5;
          goto LABEL_11;
        }
      }
    }
    if ( a1 != -72 )
    {
LABEL_11:
      v12 = 0;
LABEL_12:
      while ( v6 && *(_DWORD *)(v6 + 4) >= v5 )
      {
        v14 = 16 * v5 + 8;
        v27 = *(_DWORD *)(v6 + v14 + 12);
        if ( a1 == *(_DWORD *)(v27 + 68) )
        {
          v19 = *(_DWORD *)(*v7 + v14 + 8);
          v26 = v19;
          if ( v12 <= 0 || v19 < *v22 )
          {
            v20 = 0;
          }
          else
          {
            v20 = 0;
            do
              ++v20;
            while ( v20 != v12 && v19 >= v22[v20] );
          }
          gameswf::array<gameswf::font *>::insert(a2, v20, &v27);
          gameswf::array<int>::insert(&v22, v20, &v26);
          v12 = v23;
        }
        v6 = *v7;
        v15 = *(_DWORD *)(*v7 + 4);
        if ( v15 < v5 )
          break;
        if ( v15 >= ++v5 )
        {
          v16 = 16 * v5 + 8;
          while ( 1 )
          {
            v17 = *(_DWORD *)(v6 + v16);
            v18 = v6 + v16;
            v16 += 16;
            if ( v17 != -2 && *(_DWORD *)(v18 + 4) != -1 )
              break;
            if ( v15 < ++v5 )
            {
              v12 = v23;
              goto LABEL_12;
            }
          }
        }
        v12 = v23;
      }
      if ( v12 < 0 )
      {
        v13 = v12;
        do
        {
          ++v12;
          v22[v13++] = 0;
        }
        while ( v12 );
      }
    }
  }
LABEL_5:
  v23 = 0;
  gameswf::array<int>::reserve((int)&v22, 0);
}


// ===== 765af4 gameswf::movie_def_impl::read_tags(void) =====
void __fastcall gameswf::movie_def_impl::read_tags(gameswf::stream **this)
{
  void (__fastcall ***v2)(_DWORD); // r0
  void *v3; // r5
  void *v4; // r5
  gameswf::tu_file *v5; // r4
  int index; // r3
  const char *v7; // r1
  gameswf::stream *v8; // r3
  char *v9; // [sp+4h] [bp-8h] BYREF

  while ( gameswf::stream::get_position(*(this + 53)) < (unsigned int)*(this + 54) && !*((_BYTE *)this + 65) )
  {
    v9 = (char *)gameswf::stream::open_tag(*(this + 53));
    if ( v9 == (_BYTE *)&dword_0 + 1 )
    {
      v8 = *this;
      *(this + 15) = (gameswf::stream *)((char *)*(this + 15) + 1);
      (*((void (__fastcall **)(gameswf::stream **))v8 + 47))(this);
    }
    else
    {
      index = gameswf::hash<int,void (*)(gameswf::stream *,int,gameswf::movie_definition_sub *),gameswf::fixed_size_hash<int>>::find_index(&v9);
      if ( index < 0 )
        gameswf::log_msg("*** no tag loader for type %d\n", v9);
      else
        (*(void (__fastcall **)(_DWORD, char *, gameswf::stream **))(gameswf::s_tag_loaders + 16 * index + 20))(
          *(this + 53),
          v9,
          this);
    }
    gameswf::stream::close_tag(*(this + 53));
    if ( !v9 && (gameswf::stream *)gameswf::stream::get_position(*(this + 53)) != *(this + 54) )
    {
      gameswf::log_msg("warning: hit stream-end tag, but not at the end of the file yet; stopping for safety\n", v7);
      break;
    }
    *(this + 51) = (gameswf::stream *)gameswf::stream::get_position(*(this + 53));
  }
  v2 = (void (__fastcall ***)(_DWORD))*(this + 52);
  if ( v2 )
  {
    gameswf::destruct<gameswf::jpeg::input>(v2);
    *(this + 52) = nullptr;
  }
  v3 = *(this + 55);
  if ( v3 )
  {
    gameswf::tu_file::~tu_file(*(this + 55));
    gameswf::free_internal(v3);
  }
  v4 = *(this + 53);
  if ( v4 )
  {
    gameswf::stream::~stream(*(this + 53));
    gameswf::free_internal(v4);
  }
  v5 = *(this + 56);
  if ( v5 )
  {
    gameswf::tu_file::~tu_file(v5);
    gameswf::free_internal(v5);
  }
}


// ===== 765c78 gameswf::movie_def_loader(void *) =====
int __fastcall gameswf::movie_def_loader(gameswf::stream **this, void *a2)
{
  gameswf::movie_def_impl::read_tags(this);
  return 0;
}


// ===== 765c88 gameswf::movie_def_impl::read(gameswf::tu_file *) =====
void __fastcall gameswf::movie_def_impl::read(gameswf::movie_def_impl *this, gameswf::tu_file *a2)
{
  int v4; // r7
  unsigned int v5; // r6
  unsigned int v6; // r8
  bool v7; // zf
  unsigned int v8; // r7
  int v9; // r2
  _BOOL4 v10; // r6
  gameswf::tu_file *inflater; // r7
  gameswf::stream *v12; // r5
  int u16; // r0
  int v14; // r3
  int v15; // r0
  int v16; // r0
  unsigned int v17; // [sp+4h] [bp-4h] BYREF

  *((_DWORD *)this + 56) = a2;
  v4 = (*((int (__fastcall **)(_DWORD))a2 + 6))(*(_DWORD *)a2);
  (*((void (__fastcall **)(unsigned int *, int, _DWORD))a2 + 2))(&v17, 4, *(_DWORD *)a2);
  v5 = v17;
  (*((void (__fastcall **)(unsigned int *, int, _DWORD))a2 + 2))(&v17, 4, *(_DWORD *)a2);
  v6 = v17;
  v7 = (v5 & 0xFFFFFF) == (_DWORD)&loc_535740 + 3;
  if ( (_UNKNOWN *)(v5 & 0xFFFFFF) != (_UNKNOWN *)((char *)&loc_535740 + 3) )
    v7 = (v5 & 0xFFFFFF) == (_DWORD)&loc_535744 + 2;
  v8 = v4 + v17;
  v9 = !v7;
  *((_DWORD *)this + 54) = v8;
  *((_DWORD *)this + 50) = HIBYTE(v5);
  if ( v7 )
  {
    v10 = (unsigned __int8)v5 == 67;
    *((_DWORD *)this + 55) = v9;
    if ( v10 )
    {
      inflater = (gameswf::tu_file *)gameswf::zlib_adapter::make_inflater(
                                       a2,
                                       (gameswf::tu_file *)((char *)&loc_535740 + 3));
      *((_DWORD *)this + 54) = v6 - 8;
    }
    else
    {
      inflater = (gameswf::tu_file *)gameswf::get_buffered_file(a2, (gameswf::tu_file *)((char *)&loc_535740 + 3));
    }
    *((_DWORD *)this + 55) = inflater;
    v12 = (gameswf::stream *)operator new(0x2Cu, 0);
    gameswf::stream::stream(v12, inflater, v10);
    *((_DWORD *)this + 53) = v12;
    gameswf::rect::read((gameswf::movie_def_impl *)((char *)this + 180), v12);
    *((float *)this + 49) = (float)(int)gameswf::stream::read_u16(*((gameswf::stream **)this + 53)) * 0.0039062;
    u16 = gameswf::stream::read_u16(*((gameswf::stream **)this + 53));
    if ( !u16 )
      v14 = 1;
    *((_DWORD *)this + 14) = u16;
    if ( !u16 )
      *((_DWORD *)this + 14) = v14;
    v15 = (*(int (__fastcall **)(gameswf::movie_def_impl *))(*(_DWORD *)this + 56))(this);
    gameswf::array<gameswf::array<gameswf::execute_tag *>>::resize((_DWORD *)this + 21, v15);
    v16 = (*(int (__fastcall **)(gameswf::movie_def_impl *))(*(_DWORD *)this + 56))(this);
    gameswf::array<gameswf::array<gameswf::execute_tag *>>::resize((_DWORD *)this + 25, v16);
    gameswf::movie_def_impl::read_tags((gameswf::stream **)this);
  }
  else
  {
    gameswf::log_error(
      "gameswf::movie_def_impl::read() -- file does not start with a SWF header!\n",
      (const char *)&loc_535740 + 3,
      v9);
  }
}


// ===== 765e18 gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(void) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(
        _DWORD **a1)
{
  _DWORD *v2; // r0
  int v3; // r7
  int v4; // r6
  int v5; // r4
  void (__fastcall ***v6)(_DWORD); // r0
  _DWORD *v7; // r5

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
        v7 = &v2[v5];
        if ( v2[v5] != -2 && v7[1] != -1 )
        {
          if ( *((char *)v7 + 8) == -1 )
            gameswf::free_internal((void *)v7[5]);
          v6 = (void (__fastcall ***)(_DWORD))v7[7];
          if ( v6 )
            gameswf::ref_counted::drop_ref(v6);
          *v7 = -2;
          v7[1] = 0;
          v2 = *a1;
        }
        v5 += 8;
      }
      while ( v3 >= v4 );
    }
    gameswf::free_internal(v2);
    *a1 = nullptr;
  }
}


// ===== 765ec8 gameswf::movie_def_impl::movie_def_impl(gameswf::player *,gameswf::create_bitmaps_flag,gameswf::create_font_shapes_flag) =====
int __fastcall gameswf::movie_def_impl::movie_def_impl(int a1, gameswf::ref_counted *a2, int a3, int a4)
{
  unsigned int v8; // r2
  int v9; // r1
  int v11; // r2

  gameswf::character_def::character_def((_DWORD *)a1, a2);
  *(_DWORD *)(a1 + 32) = -1;
  *(_DWORD *)a1 = off_990048;
  *(_DWORD *)(a1 + 40) = -1;
  *(_DWORD *)(a1 + 36) = 0;
  *(_BYTE *)(a1 + 44) = 0;
  *(_BYTE *)(a1 + 45) = 0;
  *(_BYTE *)(a1 + 46) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 60) = 0;
  *(_BYTE *)(a1 + 65) = 0;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)(a1 + 72) = 0;
  *(_DWORD *)(a1 + 76) = 0;
  *(_DWORD *)(a1 + 80) = 0;
  *(_DWORD *)(a1 + 84) = 0;
  *(_DWORD *)(a1 + 88) = 0;
  *(_DWORD *)(a1 + 92) = 0;
  *(_BYTE *)(a1 + 96) = 0;
  *(_DWORD *)(a1 + 100) = 0;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_BYTE *)(a1 + 112) = 0;
  *(_DWORD *)(a1 + 116) = 0;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
  *(_DWORD *)(a1 + 132) = 0;
  *(_BYTE *)(a1 + 136) = 0;
  *(_DWORD *)(a1 + 140) = 0;
  *(_DWORD *)(a1 + 144) = 0;
  *(_DWORD *)(a1 + 148) = 0;
  v8 = *(_DWORD *)(a1 + 276) & 0xFF000000 | 0xFFFFFF;
  *(_DWORD *)(a1 + 196) = 1106247680;
  *(_BYTE *)(a1 + 260) = 1;
  *(_DWORD *)(a1 + 240) = 0;
  *(_DWORD *)(a1 + 276) = v8;
  *(_DWORD *)(a1 + 172) = a3;
  *(_DWORD *)(a1 + 176) = a4;
  *(_BYTE *)(a1 + 279) = HIBYTE(v8) & 0xFE;
  *(_BYTE *)(a1 + 152) = 0;
  *(_DWORD *)(a1 + 156) = 0;
  *(_DWORD *)(a1 + 160) = 0;
  *(_DWORD *)(a1 + 164) = 0;
  *(_BYTE *)(a1 + 168) = 0;
  *(_DWORD *)(a1 + 200) = 0;
  *(_DWORD *)(a1 + 204) = 0;
  *(_DWORD *)(a1 + 208) = 0;
  *(_DWORD *)(a1 + 212) = 0;
  *(_DWORD *)(a1 + 216) = 0;
  *(_DWORD *)(a1 + 220) = 0;
  *(_DWORD *)(a1 + 224) = 0;
  *(_DWORD *)(a1 + 228) = 0;
  *(_DWORD *)(a1 + 232) = 0;
  *(_BYTE *)(a1 + 236) = 0;
  *(_BYTE *)(a1 + 261) = 0;
  *(_DWORD *)(a1 + 280) = 0;
  *(_DWORD *)(a1 + 284) = 0;
  *(_DWORD *)(a1 + 288) = 0;
  *(_DWORD *)(a1 + 292) = 0;
  v9 = *((_DWORD *)a2 + 43);
  v11 = *(_DWORD *)(v9 + 36);
  *(_DWORD *)(v9 + 36) = v11 + 1;
  *(_DWORD *)(a1 + 240) = v11;
  *(_DWORD *)(a1 + 244) = 0;
  *(_DWORD *)(a1 + 248) = 0;
  *(_DWORD *)(a1 + 256) = 0;
  *(_DWORD *)(a1 + 252) = 0;
  return a1;
}


// ===== 76603c gameswf::movie_def_impl::movie_def_impl(gameswf::player *,gameswf::create_bitmaps_flag,gameswf::create_font_shapes_flag) =====
int __fastcall gameswf::movie_def_impl::movie_def_impl(int a1, gameswf::ref_counted *a2, int a3, int a4)
{
  unsigned int v8; // r2
  int v9; // r1
  int v11; // r2

  gameswf::character_def::character_def((_DWORD *)a1, a2);
  *(_DWORD *)(a1 + 32) = -1;
  *(_DWORD *)a1 = off_990048;
  *(_DWORD *)(a1 + 40) = -1;
  *(_DWORD *)(a1 + 36) = 0;
  *(_BYTE *)(a1 + 44) = 0;
  *(_BYTE *)(a1 + 45) = 0;
  *(_BYTE *)(a1 + 46) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 60) = 0;
  *(_BYTE *)(a1 + 65) = 0;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)(a1 + 72) = 0;
  *(_DWORD *)(a1 + 76) = 0;
  *(_DWORD *)(a1 + 80) = 0;
  *(_DWORD *)(a1 + 84) = 0;
  *(_DWORD *)(a1 + 88) = 0;
  *(_DWORD *)(a1 + 92) = 0;
  *(_BYTE *)(a1 + 96) = 0;
  *(_DWORD *)(a1 + 100) = 0;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_BYTE *)(a1 + 112) = 0;
  *(_DWORD *)(a1 + 116) = 0;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
  *(_DWORD *)(a1 + 132) = 0;
  *(_BYTE *)(a1 + 136) = 0;
  *(_DWORD *)(a1 + 140) = 0;
  *(_DWORD *)(a1 + 144) = 0;
  *(_DWORD *)(a1 + 148) = 0;
  v8 = *(_DWORD *)(a1 + 276) & 0xFF000000 | 0xFFFFFF;
  *(_DWORD *)(a1 + 196) = 1106247680;
  *(_BYTE *)(a1 + 260) = 1;
  *(_DWORD *)(a1 + 240) = 0;
  *(_DWORD *)(a1 + 276) = v8;
  *(_DWORD *)(a1 + 172) = a3;
  *(_DWORD *)(a1 + 176) = a4;
  *(_BYTE *)(a1 + 279) = HIBYTE(v8) & 0xFE;
  *(_BYTE *)(a1 + 152) = 0;
  *(_DWORD *)(a1 + 156) = 0;
  *(_DWORD *)(a1 + 160) = 0;
  *(_DWORD *)(a1 + 164) = 0;
  *(_BYTE *)(a1 + 168) = 0;
  *(_DWORD *)(a1 + 200) = 0;
  *(_DWORD *)(a1 + 204) = 0;
  *(_DWORD *)(a1 + 208) = 0;
  *(_DWORD *)(a1 + 212) = 0;
  *(_DWORD *)(a1 + 216) = 0;
  *(_DWORD *)(a1 + 220) = 0;
  *(_DWORD *)(a1 + 224) = 0;
  *(_DWORD *)(a1 + 228) = 0;
  *(_DWORD *)(a1 + 232) = 0;
  *(_BYTE *)(a1 + 236) = 0;
  *(_BYTE *)(a1 + 261) = 0;
  *(_DWORD *)(a1 + 280) = 0;
  *(_DWORD *)(a1 + 284) = 0;
  *(_DWORD *)(a1 + 288) = 0;
  *(_DWORD *)(a1 + 292) = 0;
  v9 = *((_DWORD *)a2 + 43);
  v11 = *(_DWORD *)(v9 + 36);
  *(_DWORD *)(v9 + 36) = v11 + 1;
  *(_DWORD *)(a1 + 240) = v11;
  *(_DWORD *)(a1 + 244) = 0;
  *(_DWORD *)(a1 + 248) = 0;
  *(_DWORD *)(a1 + 256) = 0;
  *(_DWORD *)(a1 + 252) = 0;
  return a1;
}


// ===== 7661b0 gameswf::movie_def_impl::~movie_def_impl() =====
void __fastcall gameswf::movie_def_impl::~movie_def_impl(gameswf::movie_def_impl *this)
{
  void *v2; // r0
  int v3; // r10
  int i; // r8
  int v5; // r3
  int v6; // r7
  int v7; // r5
  void (__fastcall ***v8)(_DWORD); // r0
  int v9; // r10
  int j; // r8
  int v11; // r3
  int v12; // r7
  int v13; // r5
  void (__fastcall ***v14)(_DWORD); // r0
  void (__fastcall ***v15)(_DWORD); // r0
  void (__fastcall ***v16)(_DWORD); // r0

  v2 = *((void **)this + 57);
  *(_DWORD *)this = off_990048;
  *((_BYTE *)this + 65) = 1;
  if ( v2 )
    gameswf::free_internal(v2);
  v3 = *((_DWORD *)this + 22);
  if ( v3 > 0 )
  {
    for ( i = 0; i != v3; ++i )
    {
      v5 = *((_DWORD *)this + 21);
      v6 = *(_DWORD *)(v5 + 16 * i + 4);
      if ( v6 > 0 )
      {
        v7 = 0;
        while ( 1 )
        {
          v8 = *(void (__fastcall ****)(_DWORD))(*(_DWORD *)(v5 + 16 * i) + 4 * v7++);
          gameswf::destruct<gameswf::execute_tag>(v8);
          if ( v7 == v6 )
            break;
          v5 = *((_DWORD *)this + 21);
        }
      }
    }
  }
  v9 = *((_DWORD *)this + 26);
  if ( v9 > 0 )
  {
    for ( j = 0; j != v9; ++j )
    {
      v11 = *((_DWORD *)this + 25);
      v12 = *(_DWORD *)(v11 + 16 * j + 4);
      if ( v12 > 0 )
      {
        v13 = 0;
        while ( 1 )
        {
          v14 = *(void (__fastcall ****)(_DWORD))(*(_DWORD *)(v11 + 16 * j) + 4 * v13++);
          gameswf::destruct<gameswf::execute_tag>(v14);
          if ( v13 == v12 )
            break;
          v11 = *((_DWORD *)this + 25);
        }
      }
    }
  }
  gameswf::hash<int,gameswf::tu_string,gameswf::fixed_size_hash<int>>::clear((_DWORD **)this + 73);
  gameswf::hash<int,gameswf::tu_string,gameswf::fixed_size_hash<int>>::clear((_DWORD **)this + 72);
  gameswf::hash<int,gameswf::tu_string,gameswf::fixed_size_hash<int>>::clear((_DWORD **)this + 71);
  v15 = *((void (__fastcall ****)(_DWORD))this + 70);
  if ( v15 )
    gameswf::ref_counted::drop_ref(v15);
  if ( *((unsigned __int8 *)this + 260) == 255 )
    gameswf::free_internal(*((void **)this + 68));
  v16 = *((void (__fastcall ****)(_DWORD))this + 58);
  if ( v16 )
    gameswf::ref_counted::drop_ref(v16);
  gameswf::array<gameswf::smart_ptr<gameswf::bitmap_info>>::resize((_DWORD *)this + 39);
  gameswf::array<gameswf::smart_ptr<gameswf::bitmap_info>>::reserve((int)this + 156, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::movie_definition>>::resize((_DWORD *)this + 35);
  gameswf::array<gameswf::smart_ptr<gameswf::movie_definition>>::reserve((int)this + 140, 0);
  gameswf::array<gameswf::import_info>::resize((int *)this + 31);
  gameswf::array<gameswf::import_info>::reserve((int)this + 124, 0);
  gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear((_DWORD **)this + 30);
  gameswf::hash<gameswf::stringi_pointer,int,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::clear((_DWORD **)this + 29);
  gameswf::array<gameswf::array<gameswf::execute_tag *>>::resize((_DWORD *)this + 25, 0);
  gameswf::array<gameswf::array<gameswf::execute_tag *>>::reserve((int)this + 100, 0);
  gameswf::array<gameswf::array<gameswf::execute_tag *>>::resize((_DWORD *)this + 21, 0);
  gameswf::array<gameswf::array<gameswf::execute_tag *>>::reserve((int)this + 84, 0);
  gameswf::hash<int,gameswf::smart_ptr<gameswf::sound_sample>,gameswf::fixed_size_hash<int>>::clear((_DWORD **)this + 20);
  gameswf::hash<int,gameswf::smart_ptr<gameswf::bitmap_character_def>,gameswf::fixed_size_hash<int>>::clear((_DWORD **)this + 19);
  gameswf::hash<int,gameswf::smart_ptr<gameswf::font>,gameswf::fixed_size_hash<int>>::clear((_DWORD **)this + 18);
  gameswf::hash<int,gameswf::smart_ptr<gameswf::character_def>,gameswf::fixed_size_hash<int>>::clear((_DWORD **)this + 17);
  gameswf::movie_definition_sub::~movie_definition_sub(this);
}


// ===== 7663b8 gameswf::movie_def_impl::~movie_def_impl() =====
void __fastcall gameswf::movie_def_impl::~movie_def_impl(gameswf::movie_def_impl *this)
{
  gameswf::movie_def_impl::~movie_def_impl(this);
  LC_API_FREE_0(this);
}


// ===== 7663d4 gameswf::movie_def_impl::~movie_def_impl() =====
void __fastcall gameswf::movie_def_impl::~movie_def_impl(gameswf::movie_def_impl *this)
{
  void *v2; // r0
  int v3; // r10
  int i; // r8
  int v5; // r3
  int v6; // r7
  int v7; // r5
  void (__fastcall ***v8)(_DWORD); // r0
  int v9; // r10
  int j; // r8
  int v11; // r3
  int v12; // r7
  int v13; // r5
  void (__fastcall ***v14)(_DWORD); // r0
  void (__fastcall ***v15)(_DWORD); // r0
  void (__fastcall ***v16)(_DWORD); // r0

  v2 = *((void **)this + 57);
  *(_DWORD *)this = off_990048;
  *((_BYTE *)this + 65) = 1;
  if ( v2 )
    gameswf::free_internal(v2);
  v3 = *((_DWORD *)this + 22);
  if ( v3 > 0 )
  {
    for ( i = 0; i != v3; ++i )
    {
      v5 = *((_DWORD *)this + 21);
      v6 = *(_DWORD *)(v5 + 16 * i + 4);
      if ( v6 > 0 )
      {
        v7 = 0;
        while ( 1 )
        {
          v8 = *(void (__fastcall ****)(_DWORD))(*(_DWORD *)(v5 + 16 * i) + 4 * v7++);
          gameswf::destruct<gameswf::execute_tag>(v8);
          if ( v7 == v6 )
            break;
          v5 = *((_DWORD *)this + 21);
        }
      }
    }
  }
  v9 = *((_DWORD *)this + 26);
  if ( v9 > 0 )
  {
    for ( j = 0; j != v9; ++j )
    {
      v11 = *((_DWORD *)this + 25);
      v12 = *(_DWORD *)(v11 + 16 * j + 4);
      if ( v12 > 0 )
      {
        v13 = 0;
        while ( 1 )
        {
          v14 = *(void (__fastcall ****)(_DWORD))(*(_DWORD *)(v11 + 16 * j) + 4 * v13++);
          gameswf::destruct<gameswf::execute_tag>(v14);
          if ( v13 == v12 )
            break;
          v11 = *((_DWORD *)this + 25);
        }
      }
    }
  }
  gameswf::hash<int,gameswf::tu_string,gameswf::fixed_size_hash<int>>::clear((_DWORD **)this + 73);
  gameswf::hash<int,gameswf::tu_string,gameswf::fixed_size_hash<int>>::clear((_DWORD **)this + 72);
  gameswf::hash<int,gameswf::tu_string,gameswf::fixed_size_hash<int>>::clear((_DWORD **)this + 71);
  v15 = *((void (__fastcall ****)(_DWORD))this + 70);
  if ( v15 )
    gameswf::ref_counted::drop_ref(v15);
  if ( *((unsigned __int8 *)this + 260) == 255 )
    gameswf::free_internal(*((void **)this + 68));
  v16 = *((void (__fastcall ****)(_DWORD))this + 58);
  if ( v16 )
    gameswf::ref_counted::drop_ref(v16);
  gameswf::array<gameswf::smart_ptr<gameswf::bitmap_info>>::resize((_DWORD *)this + 39);
  gameswf::array<gameswf::smart_ptr<gameswf::bitmap_info>>::reserve((int)this + 156, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::movie_definition>>::resize((_DWORD *)this + 35);
  gameswf::array<gameswf::smart_ptr<gameswf::movie_definition>>::reserve((int)this + 140, 0);
  gameswf::array<gameswf::import_info>::resize((int *)this + 31);
  gameswf::array<gameswf::import_info>::reserve((int)this + 124, 0);
  gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear((_DWORD **)this + 30);
  gameswf::hash<gameswf::stringi_pointer,int,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::clear((_DWORD **)this + 29);
  gameswf::array<gameswf::array<gameswf::execute_tag *>>::resize((_DWORD *)this + 25, 0);
  gameswf::array<gameswf::array<gameswf::execute_tag *>>::reserve((int)this + 100, 0);
  gameswf::array<gameswf::array<gameswf::execute_tag *>>::resize((_DWORD *)this + 21, 0);
  gameswf::array<gameswf::array<gameswf::execute_tag *>>::reserve((int)this + 84, 0);
  gameswf::hash<int,gameswf::smart_ptr<gameswf::sound_sample>,gameswf::fixed_size_hash<int>>::clear((_DWORD **)this + 20);
  gameswf::hash<int,gameswf::smart_ptr<gameswf::bitmap_character_def>,gameswf::fixed_size_hash<int>>::clear((_DWORD **)this + 19);
  gameswf::hash<int,gameswf::smart_ptr<gameswf::font>,gameswf::fixed_size_hash<int>>::clear((_DWORD **)this + 18);
  gameswf::hash<int,gameswf::smart_ptr<gameswf::character_def>,gameswf::fixed_size_hash<int>>::clear((_DWORD **)this + 17);
  gameswf::movie_definition_sub::~movie_definition_sub(this);
}


// ===== 7665dc gameswf::hash<int,gameswf::smart_ptr<gameswf::sound_sample>,gameswf::fixed_size_hash<int>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::sound_sample>,gameswf::fixed_size_hash<int>>::set_raw_capacity(
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
    gameswf::hash<int,gameswf::smart_ptr<gameswf::sound_sample>,gameswf::fixed_size_hash<int>>::clear(a1);
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
            gameswf::hash<int,gameswf::smart_ptr<gameswf::sound_sample>,gameswf::fixed_size_hash<int>>::add(
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


// ===== 766744 gameswf::hash<int,gameswf::smart_ptr<gameswf::sound_sample>,gameswf::fixed_size_hash<int>>::check_expand(void) =====
void __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::sound_sample>,gameswf::fixed_size_hash<int>>::check_expand(
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
  gameswf::hash<int,gameswf::smart_ptr<gameswf::sound_sample>,gameswf::fixed_size_hash<int>>::set_raw_capacity(a1, v2);
}


// ===== 766778 gameswf::hash<int,gameswf::smart_ptr<gameswf::sound_sample>,gameswf::fixed_size_hash<int>>::add(int const&,gameswf::smart_ptr<gameswf::sound_sample> const&) =====
void __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::sound_sample>,gameswf::fixed_size_hash<int>>::add(
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

  gameswf::hash<int,gameswf::smart_ptr<gameswf::sound_sample>,gameswf::fixed_size_hash<int>>::check_expand(a1);
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
    gameswf::smart_ptr<gameswf::sound_sample>::set_ref(v13 + 3, *a3);
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
    gameswf::smart_ptr<gameswf::sound_sample>::set_ref(v13 + 3, *a3);
    v13[1] = (gameswf::ref_counted *)v6;
    v8[2 * v11] = -1;
  }
}


// ===== 766914 gameswf::movie_def_impl::add_sound_sample(int,gameswf::sound_sample *) =====
void __fastcall gameswf::movie_def_impl::add_sound_sample(
        gameswf::movie_def_impl *this,
        gameswf::ref_counted *a2,
        gameswf::sound_sample *a3)
{
  _DWORD **v3; // r4
  gameswf::ref_counted *v4; // [sp+4h] [bp-Ch] BYREF
  gameswf::ref_counted *v5; // [sp+Ch] [bp-4h] BYREF

  v4 = a2;
  v3 = (_DWORD **)((char *)this + 80);
  v5 = a3;
  if ( a3 )
    gameswf::ref_counted::add_ref((int)a3);
  gameswf::hash<int,gameswf::smart_ptr<gameswf::sound_sample>,gameswf::fixed_size_hash<int>>::add(v3, &v4, &v5);
  if ( v5 )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v5);
}


// ===== 766960 gameswf::hash<int,gameswf::smart_ptr<gameswf::bitmap_character_def>,gameswf::fixed_size_hash<int>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::bitmap_character_def>,gameswf::fixed_size_hash<int>>::set_raw_capacity(
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
    gameswf::hash<int,gameswf::smart_ptr<gameswf::bitmap_character_def>,gameswf::fixed_size_hash<int>>::clear(a1);
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
            gameswf::hash<int,gameswf::smart_ptr<gameswf::bitmap_character_def>,gameswf::fixed_size_hash<int>>::add(
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


// ===== 766ac8 gameswf::hash<int,gameswf::smart_ptr<gameswf::bitmap_character_def>,gameswf::fixed_size_hash<int>>::check_expand(void) =====
void __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::bitmap_character_def>,gameswf::fixed_size_hash<int>>::check_expand(
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
  gameswf::hash<int,gameswf::smart_ptr<gameswf::bitmap_character_def>,gameswf::fixed_size_hash<int>>::set_raw_capacity(
    a1,
    v2);
}


// ===== 766afc gameswf::hash<int,gameswf::smart_ptr<gameswf::bitmap_character_def>,gameswf::fixed_size_hash<int>>::add(int const&,gameswf::smart_ptr<gameswf::bitmap_character_def> const&) =====
void __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::bitmap_character_def>,gameswf::fixed_size_hash<int>>::add(
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

  gameswf::hash<int,gameswf::smart_ptr<gameswf::bitmap_character_def>,gameswf::fixed_size_hash<int>>::check_expand(a1);
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
    gameswf::smart_ptr<gameswf::bitmap_character_def>::set_ref(v13 + 3, *a3);
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
    gameswf::smart_ptr<gameswf::bitmap_character_def>::set_ref(v13 + 3, *a3);
    v13[1] = (gameswf::ref_counted *)v6;
    v8[2 * v11] = -1;
  }
}


// ===== 766c98 gameswf::movie_def_impl::add_bitmap_character(int,gameswf::bitmap_character_def *) =====
int __fastcall gameswf::movie_def_impl::add_bitmap_character(
        gameswf::movie_def_impl *this,
        gameswf::ref_counted *a2,
        gameswf::bitmap_character_def *a3)
{
  _DWORD **v5; // r6
  int v6; // r3
  gameswf::bitmap_character_def *v7; // r0
  int (__fastcall *v8)(gameswf::movie_def_impl *, int); // r4
  int v9; // r0
  gameswf::ref_counted *v11; // [sp+4h] [bp-Ch] BYREF
  gameswf::ref_counted *v12; // [sp+Ch] [bp-4h] BYREF

  v11 = a2;
  v12 = a3;
  v5 = (_DWORD **)((char *)this + 76);
  if ( a3 )
    gameswf::ref_counted::add_ref((int)a3);
  gameswf::hash<int,gameswf::smart_ptr<gameswf::bitmap_character_def>,gameswf::fixed_size_hash<int>>::add(
    v5,
    &v11,
    &v12);
  if ( v12 )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v12);
  v6 = *(_DWORD *)a3;
  v7 = a3;
  v8 = *(int (__fastcall **)(gameswf::movie_def_impl *, int))(*(_DWORD *)this + 176);
  v9 = (*(int (__fastcall **)(gameswf::bitmap_character_def *))(v6 + 44))(v7);
  return v8(this, v9);
}


// ===== 766d10 gameswf::hash<int,gameswf::smart_ptr<gameswf::font>,gameswf::fixed_size_hash<int>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::font>,gameswf::fixed_size_hash<int>>::set_raw_capacity(
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
    gameswf::hash<int,gameswf::smart_ptr<gameswf::font>,gameswf::fixed_size_hash<int>>::clear(a1);
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
            gameswf::hash<int,gameswf::smart_ptr<gameswf::font>,gameswf::fixed_size_hash<int>>::add(
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


// ===== 766e78 gameswf::hash<int,gameswf::smart_ptr<gameswf::font>,gameswf::fixed_size_hash<int>>::check_expand(void) =====
void __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::font>,gameswf::fixed_size_hash<int>>::check_expand(
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
  gameswf::hash<int,gameswf::smart_ptr<gameswf::font>,gameswf::fixed_size_hash<int>>::set_raw_capacity(a1, v2);
}


// ===== 766eac gameswf::hash<int,gameswf::smart_ptr<gameswf::font>,gameswf::fixed_size_hash<int>>::add(int const&,gameswf::smart_ptr<gameswf::font> const&) =====
void __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::font>,gameswf::fixed_size_hash<int>>::add(
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

  gameswf::hash<int,gameswf::smart_ptr<gameswf::font>,gameswf::fixed_size_hash<int>>::check_expand(a1);
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
    gameswf::smart_ptr<gameswf::font>::set_ref(v13 + 3, *a3);
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
    gameswf::smart_ptr<gameswf::font>::set_ref(v13 + 3, *a3);
    v13[1] = (gameswf::ref_counted *)v6;
    v8[2 * v11] = -1;
  }
}


// ===== 767048 gameswf::movie_def_impl::add_font(int,gameswf::font *) =====
void __fastcall gameswf::movie_def_impl::add_font(
        gameswf::movie_def_impl *this,
        gameswf::ref_counted *a2,
        gameswf::font *a3)
{
  _DWORD **v3; // r4
  gameswf::ref_counted *v4; // [sp+4h] [bp-Ch] BYREF
  gameswf::ref_counted *v5; // [sp+Ch] [bp-4h] BYREF

  v4 = a2;
  v3 = (_DWORD **)((char *)this + 72);
  v5 = a3;
  if ( a3 )
    gameswf::ref_counted::add_ref((int)a3);
  gameswf::hash<int,gameswf::smart_ptr<gameswf::font>,gameswf::fixed_size_hash<int>>::add(v3, &v4, &v5);
  if ( v5 )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v5);
}


// ===== 767094 gameswf::hash<int,gameswf::smart_ptr<gameswf::character_def>,gameswf::fixed_size_hash<int>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::character_def>,gameswf::fixed_size_hash<int>>::set_raw_capacity(
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
    gameswf::hash<int,gameswf::smart_ptr<gameswf::character_def>,gameswf::fixed_size_hash<int>>::clear(a1);
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
            gameswf::hash<int,gameswf::smart_ptr<gameswf::character_def>,gameswf::fixed_size_hash<int>>::add(
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


// ===== 7671fc gameswf::hash<int,gameswf::smart_ptr<gameswf::character_def>,gameswf::fixed_size_hash<int>>::check_expand(void) =====
void __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::character_def>,gameswf::fixed_size_hash<int>>::check_expand(
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
  gameswf::hash<int,gameswf::smart_ptr<gameswf::character_def>,gameswf::fixed_size_hash<int>>::set_raw_capacity(a1, v2);
}


// ===== 767230 gameswf::hash<int,gameswf::smart_ptr<gameswf::character_def>,gameswf::fixed_size_hash<int>>::add(int const&,gameswf::smart_ptr<gameswf::character_def> const&) =====
void __fastcall gameswf::hash<int,gameswf::smart_ptr<gameswf::character_def>,gameswf::fixed_size_hash<int>>::add(
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

  gameswf::hash<int,gameswf::smart_ptr<gameswf::character_def>,gameswf::fixed_size_hash<int>>::check_expand(a1);
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
    gameswf::smart_ptr<gameswf::character_def>::set_ref(v13 + 3, *a3);
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
    gameswf::smart_ptr<gameswf::character_def>::set_ref(v13 + 3, *a3);
    v13[1] = (gameswf::ref_counted *)v6;
    v8[2 * v11] = -1;
  }
}


// ===== 7673cc gameswf::movie_def_impl::add_character(int,gameswf::character_def *) =====
void __fastcall gameswf::movie_def_impl::add_character(
        gameswf::movie_def_impl *this,
        gameswf::ref_counted *a2,
        gameswf::character_def *a3)
{
  _DWORD **v3; // r4
  gameswf::ref_counted *v4; // [sp+4h] [bp-Ch] BYREF
  gameswf::ref_counted *v5; // [sp+Ch] [bp-4h] BYREF

  v4 = a2;
  v3 = (_DWORD **)((char *)this + 68);
  v5 = a3;
  if ( a3 )
    gameswf::ref_counted::add_ref((int)a3);
  gameswf::hash<int,gameswf::smart_ptr<gameswf::character_def>,gameswf::fixed_size_hash<int>>::add(v3, &v4, &v5);
  if ( v5 )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v5);
}


// ===== 767418 gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(gameswf::tu_stringi const&,gameswf::smart_ptr<gameswf::character_def> const&,int,int) =====
_DWORD *__fastcall gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(
        _DWORD *a1,
        const gameswf::tu_string *a2,
        int *a3,
        int a4,
        int a5)
{
  int v7; // r0
  bool v8; // zf

  *a1 = a4;
  a1[1] = a5;
  gameswf::tu_string::tu_string((gameswf::tu_string *)(a1 + 2), a2);
  v7 = *a3;
  v8 = *a3 == 0;
  a1[7] = *a3;
  if ( !v8 )
    gameswf::ref_counted::add_ref(v7);
  return a1;
}


// ===== 767454 gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry const&) =====
_DWORD *__fastcall gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(
        _DWORD *a1,
        _DWORD *a2)
{
  int v4; // r0

  *a1 = *a2;
  a1[1] = a2[1];
  gameswf::tu_string::tu_string((gameswf::tu_string *)(a1 + 2), (const gameswf::tu_string *)(a2 + 2));
  v4 = a2[7];
  a1[7] = v4;
  if ( v4 )
    gameswf::ref_counted::add_ref(v4);
  return a1;
}


// ===== 767498 gameswf::array<gameswf::import_info>::push_back<gameswf::import_info>(gameswf::import_info const&) =====
gameswf::tu_string *__fastcall gameswf::array<gameswf::import_info>::push_back<gameswf::import_info>(
        _DWORD *a1,
        gameswf::tu_string *a2)
{
  int v2; // r3
  int v4; // r7
  _DWORD *v6; // r5
  gameswf::tu_string *result; // r0

  v2 = a1[1];
  v4 = v2 + 1;
  if ( v2 + 1 > a1[2] )
  {
    gameswf::array<gameswf::import_info>::reserve((int)a1, v4 + (v4 >> 1));
    v2 = a1[1];
  }
  v6 = (_DWORD *)(*a1 + 44 * v2);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v6, a2);
  v6[5] = *((_DWORD *)a2 + 5);
  result = gameswf::tu_string::tu_string((gameswf::tu_string *)(v6 + 6), (gameswf::tu_string *)((char *)a2 + 24));
  a1[1] = v4;
  return result;
}


// ===== 7674fc gameswf::movie_def_impl::add_import(gameswf::tu_string const&,int,gameswf::tu_string const&) =====
void __fastcall gameswf::movie_def_impl::add_import(
        gameswf::movie_def_impl *this,
        const gameswf::tu_string *a2,
        int a3,
        const gameswf::tu_string *a4)
{
  _DWORD *v5; // r7
  _BYTE v7[8]; // [sp+0h] [bp-34h] BYREF
  void *v8; // [sp+Ch] [bp-28h]
  int v9; // [sp+14h] [bp-20h]
  _BYTE v10[8]; // [sp+18h] [bp-1Ch] BYREF
  void *p; // [sp+24h] [bp-10h]

  v5 = (_DWORD *)((char *)this + 124);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v7, a2);
  v9 = a3;
  gameswf::tu_string::tu_string((gameswf::tu_string *)v10, a4);
  gameswf::array<gameswf::import_info>::push_back<gameswf::import_info>(v5, (gameswf::tu_string *)v7);
  if ( v10[0] != -1 )
  {
    if ( v7[0] != -1 )
      return;
LABEL_5:
    gameswf::free_internal(v8);
    return;
  }
  gameswf::free_internal(p);
  if ( v7[0] == -1 )
    goto LABEL_5;
}


// ===== 7675b8 gameswf::movie_def_impl::get_exported_resource(gameswf::tu_string const&) =====
gameswf::ref_counted *__fastcall gameswf::movie_def_impl::get_exported_resource(
        gameswf::movie_def_impl *this,
        const gameswf::tu_string *a2)
{
  int *v2; // r7
  gameswf::ref_counted *v3; // r6
  gameswf::ref_counted *v5; // [sp+4h] [bp-20h] BYREF
  _BYTE v6[8]; // [sp+8h] [bp-1Ch] BYREF
  void *p; // [sp+14h] [bp-10h]

  v2 = (int *)((char *)this + 120);
  v5 = nullptr;
  gameswf::tu_string::tu_string((gameswf::tu_string *)v6, a2);
  gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::get(
    v2,
    (gameswf::tu_string *)v6,
    &v5);
  if ( v6[0] == -1 )
    gameswf::free_internal(p);
  v3 = v5;
  if ( v5 )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v5);
  return v3;
}


// ===== 76765c gameswf::hash<gameswf::stringi_pointer,int,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::add(gameswf::stringi_pointer const&,int const&) =====
unsigned int __fastcall gameswf::hash<gameswf::stringi_pointer,int,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::add(
        _DWORD **a1,
        int a2,
        _DWORD *a3)
{
  char *v3; // r8
  unsigned int result; // r0
  _DWORD *v8; // r12
  int v9; // r7
  int v10; // r8
  _DWORD *v11; // r3
  int v12; // r6
  int v13; // r12
  int v14; // r10
  int v15; // r9
  _DWORD *v16; // r7
  int v17; // r11
  int v18; // r2
  int v19; // r1
  int v20; // r0
  _DWORD *v21; // r1
  int v22; // r6
  int v23; // r11
  int *v24; // r11
  int v25; // r2
  int v26; // r3
  bool v27; // zf
  int v28; // r3
  int v29; // r2
  char *v30; // r3
  int v31; // r2
  int v32; // r1
  int v33; // r2

  result = gameswf::hash<gameswf::stringi_pointer,int,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::check_expand();
  ++**a1;
  v8 = *(_DWORD **)a2;
  v9 = *(_DWORD *)(*(_DWORD *)a2 + 16);
  if ( (v9 & 0xFFFFFF) == 0xFFFFFF )
  {
    v26 = *(char *)v8;
    v27 = v26 == -1;
    if ( v26 == -1 )
    {
      v28 = v8[1];
      v3 = (char *)v8[3];
    }
    else
    {
      v28 = v26 - 1;
    }
    if ( v27 )
      --v28;
    else
      v3 = (char *)v8 + 1;
    if ( v28 > 0 )
    {
      v30 = &v3[v28];
      v31 = 5381;
      do
      {
        v32 = (unsigned __int8)*--v30;
        v33 = 33 * v31;
        result = (unsigned __int8)(v32 - 65);
        if ( result <= 0x19 )
          v32 += 32;
        v31 = v32 ^ v33;
      }
      while ( v30 != v3 );
      v29 = v31 << 8 >> 8;
      v10 = v29;
    }
    else
    {
      v10 = 5381;
      v29 = 5381;
    }
    v8[4] = v9 & 0xFF000000 | v29 & 0xFFFFFF;
  }
  else
  {
    v10 = v9 << 8 >> 8;
  }
  v11 = *a1;
  if ( v10 == -1 )
    v10 = -32769;
  v12 = v11[1];
  v13 = v10 & v12;
  v14 = 2 * (v10 & v12) + 1;
  v15 = v11[2 * v14];
  v16 = &v11[2 * v14];
  if ( v15 == -2 )
  {
    v11[2 * v14] = -1;
LABEL_29:
    v16[1] = v10;
    v16[2] = *(_DWORD *)a2;
    v16[3] = *a3;
    return result;
  }
  v17 = v16[1];
  if ( v17 == -1 )
    goto LABEL_29;
  v18 = v10 & v12;
  do
  {
    v18 = (v18 + 1) & v12;
    v19 = 2 * v18 + 1;
    v20 = v11[2 * v19];
    v21 = &v11[2 * v19];
  }
  while ( v20 != -2 );
  v22 = v12 & v17;
  if ( v22 == v13 )
  {
    *v21 = v15;
    v21[1] = v16[1];
    v21[2] = v16[2];
    result = v16[3];
    v21[3] = result;
    v16[2] = *(_DWORD *)a2;
    v16[3] = *a3;
    v11[2 * v14] = v18;
    v16[1] = v10;
  }
  else
  {
    do
    {
      v23 = 2 * v22 + 1;
      v22 = v11[2 * v23];
      v24 = &v11[2 * v23];
    }
    while ( v22 != v13 );
    *v21 = v15;
    v21[1] = v16[1];
    v21[2] = v16[2];
    result = v16[3];
    v21[3] = result;
    *v24 = v18;
    v16[2] = *(_DWORD *)a2;
    v25 = *a3;
    v16[1] = v10;
    v16[3] = v25;
    v11[2 * v14] = -1;
  }
  return result;
}


// ===== 767824 gameswf::hash<gameswf::stringi_pointer,int,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<gameswf::stringi_pointer,int,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::set_raw_capacity(
        _DWORD **a1,
        int a2)
{
  _DWORD *v2; // r8
  int v3; // r4
  _DWORD *v4; // r3
  int v5; // r5
  int v6; // r3
  _DWORD *v7; // r3
  int v8; // r7
  int v9; // r6
  int v10; // r4
  _DWORD *v11; // r5
  _DWORD *v12[2]; // [sp+4h] [bp-8h] BYREF

  v2 = a1;
  if ( a2 <= 0 )
  {
LABEL_17:
    gameswf::hash<gameswf::stringi_pointer,int,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::clear(a1);
    return;
  }
  v3 = 1 << (int)(float)((float)(logf((float)(a2 - 1)) / 0.69315) + 1.0);
  v4 = (_DWORD *)*v2;
  if ( v3 < 4 )
    v3 = 4;
  if ( !v4 || v4[1] + 1 != v3 )
  {
    v5 = 0;
    v12[0] = gameswf::malloc_internal(16 * v3 + 8);
    *v12[0] = 0;
    v12[0][1] = v3 - 1;
    v6 = 2;
    do
    {
      ++v5;
      v12[0][v6] = -2;
      v6 += 4;
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
          ++v9;
          v11 = &v7[v10];
          if ( v7[v10] != -2 && v11[1] != -1 )
          {
            gameswf::hash<gameswf::stringi_pointer,int,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::add(
              v12,
              (int)(v11 + 2),
              v11 + 3);
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
    a1 = v12;
    *v2 = v12[0];
    v12[0] = nullptr;
    goto LABEL_17;
  }
}


// ===== 76797c gameswf::hash<gameswf::stringi_pointer,int,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::check_expand(void) =====
void __fastcall gameswf::hash<gameswf::stringi_pointer,int,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::check_expand(
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
  gameswf::hash<gameswf::stringi_pointer,int,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::set_raw_capacity(
    a1,
    v2);
}


// ===== 7679b0 gameswf::hash<int,gameswf::tu_string,gameswf::fixed_size_hash<int>>::get(int const&,gameswf::tu_string*) =====
int __fastcall gameswf::hash<int,gameswf::tu_string,gameswf::fixed_size_hash<int>>::get(
        int *a1,
        _DWORD *a2,
        gameswf::tu_string *a3)
{
  int index; // r3

  index = gameswf::hash<int,gameswf::tu_string,gameswf::fixed_size_hash<int>>::find_index(a1, a2);
  if ( index < 0 )
    return 0;
  if ( a3 )
    gameswf::tu_string::operator=(a3, (char *)(*a1 + 32 * index + 20));
  return 1;
}


// ===== 7679fc gameswf::movie_def_impl::instanciate_class(gameswf::character *) =====
int __fastcall gameswf::movie_def_impl::instanciate_class(gameswf::movie_def_impl *this, gameswf::character *a2)
{
  int v3; // r4
  int class_constructor; // r0
  gameswf::abc_def *v6; // r3
  int v7; // r1
  gameswf::abc_def *v8; // r0
  int v9; // r2
  int v10; // r2
  int v11; // r1
  int v12; // r10
  int v13; // r12
  int v14; // r10
  int v15; // r1
  const char *v16; // r1
  void (__fastcall *v17)(gameswf::character *, _BYTE *, _BYTE *); // r10
  int v18; // r4
  int *v20; // [sp+4h] [bp-70h]
  _BYTE v21[4]; // [sp+20h] [bp-54h] BYREF
  int v22; // [sp+24h] [bp-50h]
  int v23; // [sp+28h] [bp-4Ch]
  _BYTE v24[12]; // [sp+2Ch] [bp-48h] BYREF
  int v25; // [sp+38h] [bp-3Ch]
  int v26; // [sp+3Ch] [bp-38h]
  int v27; // [sp+40h] [bp-34h] BYREF
  _BYTE v28[8]; // [sp+44h] [bp-30h] BYREF
  void *p; // [sp+50h] [bp-24h]
  _BYTE v30[8]; // [sp+58h] [bp-1Ch] BYREF
  void *v31; // [sp+64h] [bp-10h]
  unsigned int v32; // [sp+68h] [bp-Ch]

  v27 = *((_DWORD *)a2 + 14);
  if ( v27 == -1 )
    v27 = 0;
  v3 = 0;
  v32 = v32 & 0xFF000000 | 0xFFFFFF;
  v30[0] = 1;
  HIBYTE(v32) &= ~1u;
  v30[1] = 0;
  class_constructor = gameswf::hash<int,gameswf::tu_string,gameswf::fixed_size_hash<int>>::get(
                        (int *)this + 71,
                        &v27,
                        (gameswf::tu_string *)v30);
  if ( !class_constructor )
    goto LABEL_18;
  v6 = *((gameswf::abc_def **)this + 70);
  v7 = *((_DWORD *)v6 + 39);
  v8 = v6;
  v9 = *(_DWORD *)(v7 + 4 * v27);
  v20 = (int *)(v7 + 4 * v27);
  if ( *(int *)(v9 + 52) <= 0 )
    goto LABEL_17;
  while ( 1 )
  {
    v10 = *(_DWORD *)(v9 + 48);
    v11 = *((_DWORD *)v6 + 15);
    v12 = 20 * *(_DWORD *)(*((_DWORD *)v6 + 27) + 20 * *(_DWORD *)(*(_DWORD *)(v10 + 4 * v3) + 12) + 16);
    v13 = *(char *)(v11 + v12);
    v14 = v11 + v12;
    if ( v13 == -1 )
      v14 = *(_DWORD *)(v14 + 12);
    v24[0] = 0;
    v24[1] = 0;
    v15 = *(_DWORD *)(v10 + 4 * v3);
    if ( v13 != -1 )
      ++v14;
    switch ( *(_BYTE *)(v15 + 16) )
    {
      case 0:
      case 6:
        v25 = 0;
        v26 = 0;
        v23 = 0;
        v22 = 0;
        v21[0] = 0;
        v21[1] = 2;
        gameswf::as_value::operator=((gameswf::as_value *)v24);
        gameswf::as_value::drop_refs((gameswf::as_value *)v21);
        break;
      case 1:
      case 2:
      case 3:
        gameswf::as_value::set_as_object(
          (gameswf::as_value *)v24,
          *(gameswf::as_object **)(*((_DWORD *)v6 + 31) + 4 * *(_DWORD *)(v15 + 24)));
        break;
      default:
        break;
    }
    v16 = (const char *)v14;
    v17 = *(void (__fastcall **)(gameswf::character *, _BYTE *, _BYTE *))(*(_DWORD *)a2 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v28, v16);
    v17(a2, v28, v24);
    if ( v28[0] == -1 )
      break;
    gameswf::as_value::drop_refs((gameswf::as_value *)v24);
    ++v3;
    v9 = *v20;
    if ( v3 >= *(_DWORD *)(*v20 + 52) )
      goto LABEL_16;
LABEL_13:
    v6 = *((gameswf::abc_def **)this + 70);
  }
  gameswf::free_internal(p);
  gameswf::as_value::drop_refs((gameswf::as_value *)v24);
  ++v3;
  v9 = *v20;
  if ( v3 < *(_DWORD *)(*v20 + 52) )
    goto LABEL_13;
LABEL_16:
  v8 = *((gameswf::abc_def **)this + 70);
LABEL_17:
  class_constructor = gameswf::abc_def::get_class_constructor(v8, (gameswf::tu_string *)v30);
LABEL_18:
  v18 = class_constructor;
  if ( v30[0] == -1 )
    gameswf::free_internal(v31);
  return v18;
}


// ===== 767c8c gameswf::movie_def_impl::add_abc(gameswf::tu_string &,gameswf::abc_def *) =====
gameswf::tu_string *__fastcall gameswf::movie_def_impl::add_abc(
        gameswf::ref_counted **this,
        gameswf::tu_string *a2,
        gameswf::abc_def *a3)
{
  gameswf::smart_ptr<gameswf::abc_def>::set_ref(this + 70, a3);
  return gameswf::tu_string::operator=((gameswf::tu_string *)(this + 65), (char *)a2);
}


// ===== 767cb4 gameswf::hash<int,gameswf::tu_string,gameswf::fixed_size_hash<int>>::add(int const&,gameswf::tu_string const&) =====
gameswf::tu_string *__fastcall gameswf::hash<int,gameswf::tu_string,gameswf::fixed_size_hash<int>>::add(
        _DWORD **a1,
        _DWORD *a2,
        const gameswf::tu_string *a3)
{
  int v5; // r6
  int v6; // r3
  _DWORD *v7; // r5
  int v8; // r1
  int v9; // r2
  int v10; // r9
  int v11; // r0
  _DWORD *v12; // r10
  int v13; // r12
  int v14; // r7
  int v15; // r3
  int v16; // lr
  _DWORD *v17; // r3
  int v18; // r1
  int v19; // r8
  int *v20; // r8
  gameswf::tu_string *result; // r0

  gameswf::hash<int,gameswf::tu_string,gameswf::fixed_size_hash<int>>::check_expand();
  v5 = 5381;
  v6 = 4;
  ++**a1;
  do
  {
    --v6;
    v5 = 65600 * v5 + *((unsigned __int8 *)a2 + v6) - v5;
  }
  while ( v6 );
  v7 = *a1;
  if ( v5 == -1 )
    v5 = -32769;
  v8 = v7[1];
  v9 = v5 & v8;
  v10 = 4 * (v5 & v8) + 1;
  v11 = v7[2 * v10];
  v12 = &v7[2 * v10];
  if ( v11 == -2 )
  {
    v7[2 * v10] = -1;
LABEL_14:
    v12[1] = v5;
    v12[2] = *a2;
    return gameswf::tu_string::tu_string((gameswf::tu_string *)(v12 + 3), a3);
  }
  v13 = v12[1];
  if ( v13 == -1 )
    goto LABEL_14;
  v14 = v5 & v8;
  do
  {
    v14 = (v14 + 1) & v8;
    v15 = 4 * v14 + 1;
    v16 = v7[2 * v15];
    v17 = &v7[2 * v15];
  }
  while ( v16 != -2 );
  v18 = v8 & v13;
  if ( v18 == v9 )
  {
    *v17 = v11;
    v17[1] = v12[1];
    v17[2] = v12[2];
    gameswf::tu_string::tu_string((gameswf::tu_string *)(v17 + 3), (const gameswf::tu_string *)(v12 + 3));
    v12[2] = *a2;
    result = gameswf::tu_string::operator=((gameswf::tu_string *)(v12 + 3), (char *)a3);
    v7[2 * v10] = v14;
    v12[1] = v5;
  }
  else
  {
    do
    {
      v19 = 4 * v18 + 1;
      v18 = v7[2 * v19];
      v20 = &v7[2 * v19];
    }
    while ( v18 != v9 );
    *v17 = v11;
    v17[1] = v12[1];
    v17[2] = v12[2];
    gameswf::tu_string::tu_string((gameswf::tu_string *)(v17 + 3), (const gameswf::tu_string *)(v12 + 3));
    *v20 = v14;
    v12[2] = *a2;
    result = gameswf::tu_string::operator=((gameswf::tu_string *)(v12 + 3), (char *)a3);
    v12[1] = v5;
    v7[2 * v10] = -1;
  }
  return result;
}


// ===== 767e40 gameswf::hash<int,gameswf::tu_string,gameswf::fixed_size_hash<int>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<int,gameswf::tu_string,gameswf::fixed_size_hash<int>>::set_raw_capacity(
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
  _DWORD *v12[2]; // [sp+4h] [bp-8h] BYREF

  v2 = a1;
  if ( a2 <= 0 )
  {
LABEL_19:
    gameswf::hash<int,gameswf::tu_string,gameswf::fixed_size_hash<int>>::clear(a1);
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
    *v12[0] = 0;
    v12[0][1] = v3 - 1;
    v6 = 2;
    do
    {
      ++v5;
      v12[0][v6] = -2;
      v6 += 8;
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
            gameswf::hash<int,gameswf::tu_string,gameswf::fixed_size_hash<int>>::add(
              v12,
              &v7[v10 + 2],
              (const gameswf::tu_string *)&v7[v10 + 3]);
            if ( *((char *)v11 + 12) == -1 )
              gameswf::free_internal((void *)v11[6]);
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
    a1 = v12;
    *v2 = v12[0];
    v12[0] = nullptr;
    goto LABEL_19;
  }
}


// ===== 767fb8 gameswf::hash<int,gameswf::tu_string,gameswf::fixed_size_hash<int>>::check_expand(void) =====
void __fastcall gameswf::hash<int,gameswf::tu_string,gameswf::fixed_size_hash<int>>::check_expand(_DWORD **a1)
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
  gameswf::hash<int,gameswf::tu_string,gameswf::fixed_size_hash<int>>::set_raw_capacity(a1, v2);
}


// ===== 767fec gameswf::movie_def_impl::add_frame_label(int,gameswf::tu_string const&) =====
gameswf::tu_string *__fastcall gameswf::movie_def_impl::add_frame_label(
        gameswf::movie_def_impl *this,
        int a2,
        const gameswf::tu_string *a3)
{
  int v4; // [sp+4h] [bp-8h] BYREF

  v4 = a2;
  return gameswf::hash<int,gameswf::tu_string,gameswf::fixed_size_hash<int>>::add((_DWORD **)this + 73, &v4, a3);
}


// ===== 768010 gameswf::movie_def_impl::add_scene(int,gameswf::tu_string const&) =====
gameswf::tu_string *__fastcall gameswf::movie_def_impl::add_scene(
        gameswf::movie_def_impl *this,
        int a2,
        const gameswf::tu_string *a3)
{
  int v4; // [sp+4h] [bp-8h] BYREF

  v4 = a2;
  return gameswf::hash<int,gameswf::tu_string,gameswf::fixed_size_hash<int>>::add((_DWORD **)this + 72, &v4, a3);
}


// ===== 768034 gameswf::movie_def_impl::add_symbol_class(int,gameswf::tu_string const&) =====
gameswf::tu_string *__fastcall gameswf::movie_def_impl::add_symbol_class(
        gameswf::movie_def_impl *this,
        int a2,
        const gameswf::tu_string *a3)
{
  int v4; // [sp+4h] [bp-8h] BYREF

  v4 = a2;
  return gameswf::hash<int,gameswf::tu_string,gameswf::fixed_size_hash<int>>::add((_DWORD **)this + 71, &v4, a3);
}


// ===== 768058 gameswf::hash<gameswf::tu_stringi,bool,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(gameswf::tu_stringi const&,bool const&) =====
gameswf::tu_string *__fastcall gameswf::hash<gameswf::tu_stringi,bool,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
        _DWORD **a1,
        const gameswf::tu_string *a2,
        _BYTE *a3)
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
  char v23; // r3
  int v24; // r3
  bool v25; // zf
  int v26; // r3
  int v27; // r2
  char *v28; // r3
  int v29; // r2
  int v30; // r1
  int v31; // r2

  gameswf::hash<gameswf::tu_stringi,bool,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::check_expand();
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
    *((_BYTE *)v13 + 28) = *a3;
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
    *((_BYTE *)v18 + 28) = *((_BYTE *)v13 + 28);
    result = gameswf::tu_string::operator=((gameswf::tu_string *)(v13 + 2), (char *)a2);
    *((_BYTE *)v13 + 28) = *a3;
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
    *((_BYTE *)v18 + 28) = *((_BYTE *)v13 + 28);
    *v21 = v15;
    result = gameswf::tu_string::operator=((gameswf::tu_string *)(v13 + 2), (char *)a2);
    v23 = *a3;
    v13[1] = v7;
    *((_BYTE *)v13 + 28) = v23;
    v8[2 * v11] = -1;
  }
  return result;
}


// ===== 768254 gameswf::hash<gameswf::tu_stringi,bool,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,bool,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(
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
  _DWORD *v12[2]; // [sp+4h] [bp-8h] BYREF

  v2 = a1;
  if ( a2 <= 0 )
  {
LABEL_19:
    gameswf::hash<gameswf::tu_stringi,bool,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(a1);
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
    *v12[0] = 0;
    v12[0][1] = v3 - 1;
    v6 = 2;
    do
    {
      ++v5;
      v12[0][v6] = -2;
      v6 += 8;
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
            gameswf::hash<gameswf::tu_stringi,bool,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
              v12,
              (const gameswf::tu_string *)&v7[v10 + 2],
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
    a1 = v12;
    *v2 = v12[0];
    v12[0] = nullptr;
    goto LABEL_19;
  }
}


// ===== 7683cc gameswf::hash<gameswf::tu_stringi,bool,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::check_expand(void) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,bool,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::check_expand(
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
  gameswf::hash<gameswf::tu_stringi,bool,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(a1, v2);
}


// ===== 768400 gameswf::hash<gameswf::tu_stringi,bool,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set(gameswf::tu_stringi const&,bool const&) =====
gameswf::tu_string *__fastcall gameswf::hash<gameswf::tu_stringi,bool,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set(
        int *a1,
        gameswf::tu_string *a2,
        _BYTE *a3)
{
  int index; // r0
  gameswf::tu_string *result; // r0

  index = gameswf::hash<gameswf::tu_stringi,bool,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(a1, a2);
  if ( index < 0 )
    return gameswf::hash<gameswf::tu_stringi,bool,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
             (_DWORD **)a1,
             a2,
             a3);
  result = (gameswf::tu_string *)(*a1 + 32 * index);
  *((_BYTE *)result + 36) = *a3;
  return result;
}


// ===== 768444 gameswf::movie_def_impl::visit_imported_movies(gameswf::movie_definition::import_visitor *) =====
int __fastcall gameswf::movie_def_impl::visit_imported_movies(int a1, int a2)
{
  int v3; // r4
  int v5; // r5
  _BOOL4 v6; // r11
  char *v7; // r1
  const gameswf::tu_string *v8; // r9
  int index; // r0
  int result; // r0
  int v11; // [sp+4h] [bp-18h]
  int v12; // [sp+1Ch] [bp+0h] BYREF
  char v13; // [sp+23h] [bp+7h] BYREF
  _BYTE v14[8]; // [sp+24h] [bp+8h] BYREF
  void *v15; // [sp+30h] [bp+14h]
  _BYTE v16[8]; // [sp+38h] [bp+1Ch] BYREF
  void *p; // [sp+44h] [bp+28h]

  v3 = 0;
  v11 = *(_DWORD *)(a1 + 128);
  v12 = 0;
  if ( v11 > 0 )
  {
    v5 = 0;
    while ( 1 )
    {
      v8 = (const gameswf::tu_string *)(*(_DWORD *)(a1 + 124) + v3);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v16, v8);
      index = gameswf::hash<gameswf::tu_stringi,bool,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(
                &v12,
                (gameswf::tu_string *)v16);
      if ( index >= 0 && v12 )
      {
        v6 = index > *(_DWORD *)(v12 + 4);
        if ( v16[0] != -1 )
          goto LABEL_5;
      }
      else
      {
        v6 = 1;
        if ( v16[0] != -1 )
          goto LABEL_5;
      }
      gameswf::free_internal(p);
LABEL_5:
      if ( v6
        && (*(char *)v8 == -1 ? (v7 = *((char **)v8 + 3)) : (v7 = (char *)v8 + 1),
            (*(void (__fastcall **)(int, char *))(*(_DWORD *)a2 + 8))(a2, v7),
            gameswf::tu_string::tu_string((gameswf::tu_string *)v14, v8),
            v13 = 1,
            gameswf::hash<gameswf::tu_stringi,bool,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set(
              &v12,
              (gameswf::tu_string *)v14,
              &v13),
            v14[0] == -1) )
      {
        gameswf::free_internal(v15);
        ++v5;
        v3 += 44;
        if ( v5 == v11 )
          break;
      }
      else
      {
        ++v5;
        v3 += 44;
        if ( v5 == v11 )
          break;
      }
    }
  }
  gameswf::hash<gameswf::tu_stringi,bool,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear((_DWORD **)&v12);
  return result;
}


// ===== 7685e4 gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(gameswf::tu_stringi const&,gameswf::smart_ptr<gameswf::character_def> const&) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
        _DWORD **a1,
        const gameswf::tu_string *a2,
        int *a3)
{
  char *v6; // r12
  int v7; // lr
  int v8; // r4
  _DWORD *v9; // r6
  int v10; // r12
  int v11; // r2
  int v12; // r11
  int v13; // r3
  gameswf::ref_counted **v14; // r10
  gameswf::ref_counted *v15; // lr
  int v16; // r7
  int v17; // r0
  int v18; // r1
  _DWORD *v19; // r0
  int v20; // r3
  int v21; // r8
  int *v22; // r8
  int v23; // r3
  bool v24; // zf
  int v25; // r3
  int v26; // r2
  char *v27; // r3
  int v28; // r2
  int v29; // r1
  int v30; // r2

  gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::check_expand();
  ++**a1;
  v7 = *((_DWORD *)a2 + 4);
  if ( (v7 & 0xFFFFFF) == 0xFFFFFF )
  {
    v23 = *(char *)a2;
    v24 = v23 == -1;
    if ( v23 == -1 )
    {
      v25 = *((_DWORD *)a2 + 1);
    }
    else
    {
      v25 = v23 - 1;
      v6 = (char *)a2 + 1;
    }
    if ( v24 )
    {
      --v25;
      v6 = *((char **)a2 + 3);
    }
    if ( v25 > 0 )
    {
      v27 = &v6[v25];
      v28 = 5381;
      do
      {
        v29 = (unsigned __int8)*--v27;
        v30 = 33 * v28;
        if ( (unsigned __int8)(v29 - 65) <= 0x19u )
          v29 += 32;
        v28 = v29 ^ v30;
      }
      while ( v27 != v6 );
      v26 = v28 << 8 >> 8;
      v8 = v26;
    }
    else
    {
      v8 = 5381;
      v26 = 5381;
    }
    *((_DWORD *)a2 + 4) = v7 & 0xFF000000 | v26 & 0xFFFFFF;
  }
  else
  {
    v8 = v7 << 8 >> 8;
  }
  v9 = *a1;
  if ( v8 == -1 )
    v8 = -32769;
  v10 = v9[1];
  v11 = v8 & v10;
  v12 = 4 * (v8 & v10) + 1;
  v13 = v9[2 * v12];
  v14 = (gameswf::ref_counted **)&v9[2 * v12];
  if ( v13 == -2 )
  {
    gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(
      &v9[2 * v12],
      a2,
      a3,
      -1,
      v8);
  }
  else
  {
    v15 = v14[1];
    if ( v15 == (gameswf::ref_counted *)-1 )
    {
      gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(
        &v9[2 * v12],
        a2,
        a3,
        v13,
        v8);
    }
    else
    {
      v16 = v8 & v10;
      do
      {
        v16 = (v16 + 1) & v10;
        v17 = 4 * v16 + 1;
        v18 = v9[2 * v17];
        v19 = &v9[2 * v17];
      }
      while ( v18 != -2 );
      v20 = v10 & (unsigned int)v15;
      if ( (v10 & (unsigned int)v15) == v11 )
      {
        gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(
          v19,
          &v9[2 * v12]);
        gameswf::tu_string::operator=((gameswf::tu_string *)(v14 + 2), (char *)a2);
        gameswf::smart_ptr<gameswf::character_def>::set_ref(v14 + 7, (gameswf::ref_counted *)*a3);
        v9[2 * v12] = v16;
        v14[1] = (gameswf::ref_counted *)v8;
      }
      else
      {
        do
        {
          v21 = 4 * v20 + 1;
          v20 = v9[2 * v21];
          v22 = &v9[2 * v21];
        }
        while ( v20 != v11 );
        gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(
          v19,
          &v9[2 * v12]);
        *v22 = v16;
        gameswf::tu_string::operator=((gameswf::tu_string *)(v14 + 2), (char *)a2);
        gameswf::smart_ptr<gameswf::character_def>::set_ref(v14 + 7, (gameswf::ref_counted *)*a3);
        v14[1] = (gameswf::ref_counted *)v8;
        v9[2 * v12] = -1;
      }
    }
  }
}


// ===== 7687ac gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(
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
  void (__fastcall ***v11)(_DWORD); // r0
  _DWORD *v12; // r4
  _DWORD *v13[2]; // [sp+4h] [bp-8h] BYREF

  v2 = a1;
  if ( a2 <= 0 )
  {
LABEL_21:
    gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(a1);
    return;
  }
  v3 = 1 << (int)(float)((float)(logf((float)(a2 - 1)) / 0.69315) + 1.0);
  v4 = (_DWORD *)*v2;
  if ( v3 < 4 )
    v3 = 4;
  if ( !v4 || v4[1] + 1 != v3 )
  {
    v5 = 0;
    v13[0] = gameswf::malloc_internal(32 * v3 + 8);
    *v13[0] = 0;
    v13[0][1] = v3 - 1;
    v6 = 2;
    do
    {
      ++v5;
      v13[0][v6] = -2;
      v6 += 8;
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
          v12 = &v7[v10];
          ++v9;
          if ( v7[v10] != -2 && v12[1] != -1 )
          {
            gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
              v13,
              (const gameswf::tu_string *)&v7[v10 + 2],
              &v7[v10 + 7]);
            if ( *((char *)v12 + 8) == -1 )
              gameswf::free_internal((void *)v12[5]);
            v11 = (void (__fastcall ***)(_DWORD))v12[7];
            if ( v11 )
              gameswf::ref_counted::drop_ref(v11);
            *v12 = -2;
            v12[1] = 0;
            v7 = (_DWORD *)*v2;
          }
          v10 += 8;
        }
        while ( v8 >= v9 );
      }
      gameswf::free_internal(v7);
    }
    a1 = v13;
    *v2 = v13[0];
    v13[0] = nullptr;
    goto LABEL_21;
  }
}


// ===== 768934 gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::check_expand(void) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::check_expand(
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
  gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(
    a1,
    v2);
}


// ===== 768968 gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set(gameswf::tu_stringi const&,gameswf::smart_ptr<gameswf::character_def> const&) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set(
        int *a1,
        gameswf::tu_string *a2,
        int *a3)
{
  int index; // r0

  index = gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(
            a1,
            a2);
  if ( index < 0 )
    gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)a1,
      a2,
      a3);
  else
    gameswf::smart_ptr<gameswf::character_def>::set_ref(
      (gameswf::ref_counted **)(*a1 + 32 * index + 36),
      (gameswf::ref_counted *)*a3);
}


// ===== 7689b0 gameswf::movie_def_impl::export_resource(gameswf::tu_string const&,gameswf::character_def *) =====
void __fastcall gameswf::movie_def_impl::export_resource(
        gameswf::movie_def_impl *this,
        const gameswf::tu_string *a2,
        gameswf::character_def *a3)
{
  int *v4; // r8
  gameswf::ref_counted *v5; // [sp+4h] [bp-1Ch] BYREF
  _BYTE v6[8]; // [sp+8h] [bp-18h] BYREF
  void *p; // [sp+14h] [bp-Ch]

  v4 = (int *)((char *)this + 120);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v6, a2);
  v5 = a3;
  if ( a3 )
    gameswf::ref_counted::add_ref((int)a3);
  gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::character_def>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set(
    v4,
    (gameswf::tu_string *)v6,
    (int *)&v5);
  if ( v5 )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v5);
  if ( v6[0] == -1 )
    gameswf::free_internal(p);
}


// ===== 768a5c gameswf::movie_def_impl::add_frame_name(char const*) =====
int __fastcall gameswf::movie_def_impl::add_frame_name(gameswf::movie_def_impl *this, const char *a2)
{
  int v2; // r7
  _BYTE *v5; // r0
  int v8; // [sp+0h] [bp-24h] BYREF
  int v9; // [sp+4h] [bp-20h] BYREF
  _BYTE v10[8]; // [sp+8h] [bp-1Ch] BYREF
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
  gameswf::tu_string::tu_string((gameswf::tu_string *)v10, a2);
  v9 = gameswf::permanent_string_cache::get(
         (gameswf::permanent_string_cache *)(v2 + 44),
         (const gameswf::tu_string *)v10);
  if ( v10[0] == -1 )
    gameswf::free_internal(p);
  v8 = *((_DWORD *)this + 15);
  return ((int (__fastcall *)(char *, int *, int *))gameswf::hash<gameswf::stringi_pointer,int,gameswf::string_pointer_hash_functor<gameswf::stringi_pointer>>::add)(
           (char *)this + 116,
           &v9,
           &v8);
}


// ===== 768b44 gameswf::as_object::is(int) =====
bool __fastcall gameswf::as_object::is(gameswf::as_object *this, int a2)
{
  return a2 == 0;
}


// ===== 768b50 gameswf::as_object::advance(float) =====
void __fastcall gameswf::as_object::advance(gameswf::as_object *this, float a2)
{
  ;
}


// ===== 768b54 gameswf::as_object::builtin_member(gameswf::tu_stringi const&,gameswf::as_value const&) =====
int __fastcall gameswf::as_object::builtin_member(int a1, int a2, _BYTE *a3)
{
  *a3 = 1;
  return (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 28))(a1);
}


// ===== 768b70 gameswf::as_object::get_proto(void) =====
int __fastcall gameswf::as_object::get_proto(gameswf::as_object *this)
{
  return *((_DWORD *)this + 10);
}


// ===== 768b78 gameswf::as_object::set_member(int,gameswf::as_value const&) =====
int gameswf::as_object::set_member()
{
  return 0;
}


// ===== 768b80 gameswf::as_object::get_member(int,gameswf::as_value *) =====
int gameswf::as_object::get_member()
{
  return 0;
}


// ===== 768b88 gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>>::find_index(gameswf::as_object * const&) =====
int __fastcall gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>>::find_index(
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


// ===== 768c48 gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>>::clear(void) =====
void __fastcall gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>>::clear(
        _DWORD **a1)
{
  _DWORD *v2; // r0
  int v3; // r1
  int v4; // r2
  int v5; // r3
  _DWORD *v6; // r12

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
          v6[1] = 0;
          *v6 = -2;
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


// ===== 768cc8 gameswf::smart_ptr<gameswf::as_object>::set_ref(gameswf::as_object*) =====
void __fastcall gameswf::smart_ptr<gameswf::as_object>::set_ref(gameswf::ref_counted **a1, gameswf::ref_counted *this)
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


// ===== 768d08 gameswf::as_object::set_ctor(gameswf::as_value const&) =====
int __fastcall gameswf::as_object::set_ctor(gameswf::as_object *this, const gameswf::as_value *a2)
{
  return gameswf::as_value::operator=((gameswf::as_object *)((char *)this + 16));
}


// ===== 768d10 gameswf::as_object::get_ctor(gameswf::as_value *) =====
int __fastcall gameswf::as_object::get_ctor(gameswf::as_object *this, gameswf::as_value *a2)
{
  int result; // r0

  result = gameswf::as_value::is_function((gameswf::as_object *)((char *)this + 16));
  if ( result )
  {
    gameswf::as_value::operator=(a2);
    return 1;
  }
  return result;
}


// ===== 768d40 gameswf::as_object::is_instance_of(gameswf::as_function const*) =====
int __fastcall gameswf::as_object::is_instance_of(gameswf::as_object *this, const gameswf::as_function *a2)
{
  const gameswf::as_function *v4; // r0
  const gameswf::as_function *v5; // r7
  const gameswf::as_function *v6; // r8
  int v7; // r0
  int v8; // r7
  gameswf::as_object *v9; // r0
  int is_instance_of; // r4
  char v12; // [sp+4h] [bp-Ch] BYREF
  char v13; // [sp+5h] [bp-Bh]

  v13 = 0;
  v12 = 0;
  gameswf::as_object::get_ctor(this, (gameswf::as_value *)&v12);
  if ( !v13 )
    gameswf::as_value::set_as_c_function(
      (gameswf::as_value *)&v12,
      (void (*)(const gameswf::fn_call *))gameswf::as_global_object_ctor);
  if ( !a2 )
    goto LABEL_17;
  if ( (*(int (__fastcall **)(const gameswf::as_function *, int))(*(_DWORD *)a2 + 8))(a2, 6) )
  {
    v4 = (const gameswf::as_function *)gameswf::as_value::to_function((gameswf::as_value *)&v12);
    v5 = v4;
    if ( v4 )
    {
      if ( (*(int (__fastcall **)(const gameswf::as_function *, int))(*(_DWORD *)v4 + 8))(v4, 6) && a2 == v5 )
        goto LABEL_20;
    }
  }
  if ( (*(int (__fastcall **)(const gameswf::as_function *, int))(*(_DWORD *)a2 + 8))(a2, 5) )
    v6 = a2;
  else
LABEL_17:
    v6 = nullptr;
  v7 = gameswf::as_value::to_function((gameswf::as_value *)&v12);
  v8 = v7;
  if ( v7
    && (*(int (__fastcall **)(int, int))(*(_DWORD *)v7 + 8))(v7, 5)
    && v6
    && *((_DWORD *)v6 + 15) == *(_DWORD *)(v8 + 60) )
  {
LABEL_20:
    is_instance_of = 1;
    goto LABEL_16;
  }
  v9 = (gameswf::as_object *)(*(int (__fastcall **)(gameswf::as_object *))(*(_DWORD *)this + 52))(this);
  if ( v9 )
    is_instance_of = gameswf::as_object::is_instance_of(v9, a2);
  else
    is_instance_of = 0;
LABEL_16:
  gameswf::as_value::drop_refs((gameswf::as_value *)&v12);
  return is_instance_of;
}


// ===== 768e98 gameswf::as_object::to_number(void) =====
unsigned __int64 __fastcall gameswf::as_object::to_number(gameswf::as_object *this)
{
  double *v1; // r0
  const char *v2; // r2
  __int64 v4; // [sp+0h] [bp-Ch] BYREF

  v1 = (double *)(*(int (__fastcall **)(gameswf::as_object *))(*(_DWORD *)this + 12))(this);
  v4 = 0;
  if ( gameswf::string_to_number((gameswf *)&v4, v1, v2) )
    return v4;
  else
    return 0xFFF8000000000000LL;
}


// ===== 768eec gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(gameswf::tu_stringi const&) =====
int __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(
        int *a1,
        _DWORD *a2)
{
  char *v2; // r4
  int v3; // r3
  int v6; // r4
  int v8; // r12
  int v9; // r7
  int v10; // r2
  int v11; // r8
  int v12; // r1
  int v13; // r8
  int v14; // r3
  const char *v15; // r0
  const char *v16; // r1
  int v17; // r3
  bool v18; // zf
  int v19; // r3
  int v20; // r2
  char *v21; // r3
  int v22; // r2
  int v23; // r1
  int v24; // r2

  v3 = *a1;
  if ( !*a1 )
    return -1;
  v8 = a2[4];
  if ( (v8 & 0xFFFFFF) == 0xFFFFFF )
  {
    v17 = *(char *)a2;
    v18 = v17 == -1;
    if ( v17 == -1 )
    {
      v19 = a2[1];
    }
    else
    {
      v19 = v17 - 1;
      v2 = (char *)a2 + 1;
    }
    if ( v18 )
    {
      --v19;
      v2 = (char *)a2[3];
    }
    if ( v19 > 0 )
    {
      v21 = &v2[v19];
      v22 = 5381;
      do
      {
        v23 = (unsigned __int8)*--v21;
        v24 = 33 * v22;
        if ( (unsigned __int8)(v23 - 65) <= 0x19u )
          v23 += 32;
        v22 = v23 ^ v24;
      }
      while ( v21 != v2 );
      v20 = v22 << 8 >> 8;
      v9 = v20;
    }
    else
    {
      v9 = 5381;
      v20 = 5381;
    }
    a2[4] = v8 & 0xFF000000 | v20 & 0xFFFFFF;
    v3 = *a1;
  }
  else
  {
    v9 = v8 << 8 >> 8;
  }
  v10 = *(_DWORD *)(v3 + 4);
  if ( v9 == -1 )
    v9 = -32769;
  v6 = v9 & v10;
  v11 = 5 * (v9 & v10) + 1;
  v12 = *(_DWORD *)(v3 + 8 * v11);
  v13 = v3 + 8 * v11;
  if ( v12 == -2 )
    return -1;
  v14 = *(_DWORD *)(v13 + 4);
  if ( v14 != -1 && (v10 & v14) != v6 )
    return -1;
  while ( 1 )
  {
    if ( v9 == v14 )
    {
      if ( a2 == (_DWORD *)(v13 + 8) )
        break;
      v15 = *(char *)(v13 + 8) == -1 ? *(const char **)(v13 + 20) : (const char *)(v13 + 9);
      v16 = *(char *)a2 == -1 ? (const char *)a2[3] : (char *)a2 + 1;
      if ( !gameswf::tu_string::stricmp(v15, v16) )
        break;
    }
    v6 = *(_DWORD *)v13;
    if ( *(_DWORD *)v13 == -1 )
      break;
    v13 = *a1 + 8 * (5 * v6 + 1);
    v14 = *(_DWORD *)(v13 + 4);
  }
  return v6;
}


// ===== 769048 gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::get(gameswf::tu_stringi const&,gameswf::as_value*) =====
int __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::get(
        int *a1,
        _DWORD *a2,
        gameswf::as_value *a3)
{
  if ( gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(
         a1,
         a2) < 0 )
    return 0;
  if ( a3 )
    gameswf::as_value::operator=(a3);
  return 1;
}


// ===== 769098 gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(gameswf::as_value const&) =====
int __fastcall gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(_DWORD *a1)
{
  int v1; // r3
  int v3; // r5
  gameswf::as_value *v4; // r0
  int result; // r0

  v1 = a1[1];
  v3 = v1 + 1;
  if ( v1 + 1 > a1[2] )
  {
    gameswf::array<gameswf::as_value>::reserve((int)a1, v3 + (v3 >> 1));
    v1 = a1[1];
  }
  v4 = (gameswf::as_value *)(*a1 + 12 * v1);
  *(_BYTE *)v4 = 0;
  *((_BYTE *)v4 + 1) = 0;
  result = gameswf::as_value::operator=(v4);
  a1[1] = v3;
  return result;
}


// ===== 7690f4 gameswf::array<gameswf::as_value>::push_back<gameswf::tu_string>(gameswf::tu_string const&) =====
int __fastcall gameswf::array<gameswf::as_value>::push_back<gameswf::tu_string>(_DWORD *a1, gameswf::tu_string *a2)
{
  int v2; // r3
  int v4; // r5
  int v6; // r0
  int result; // r0

  v2 = a1[1];
  v4 = v2 + 1;
  if ( v2 + 1 > a1[2] )
  {
    gameswf::array<gameswf::as_value>::reserve((int)a1, v4 + (v4 >> 1));
    v2 = a1[1];
  }
  v6 = *a1 + 12 * v2;
  *(_BYTE *)v6 = 0;
  *(_DWORD *)(v6 + 4) = 0;
  *(_BYTE *)(v6 + 1) = 0;
  result = gameswf::as_value::set_tu_string((gameswf::as_value *)v6, a2);
  a1[1] = v4;
  return result;
}


// ===== 769154 gameswf::as_object::get_member(gameswf::tu_stringi const&,gameswf::as_value *) =====
int __fastcall gameswf::as_object::get_member(int *a1, _DWORD *a2, gameswf::as_value *a3)
{
  int v7; // r0

  if ( gameswf::get_builtin(0) )
    return 1;
  if ( !gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::get(
          a1 + 3,
          a2,
          a3) )
  {
    v7 = (*(int (__fastcall **)(int *))(*a1 + 52))(a1);
    if ( !v7 || !(*(int (__fastcall **)(int, _DWORD *, gameswf::as_value *))(*(_DWORD *)v7 + 32))(v7, a2, a3) )
      return 0;
  }
  if ( *((_BYTE *)a3 + 1) != 6 )
    return 1;
  gameswf::as_value::set_property_target(a3, (gameswf::as_object *)a1);
  return 1;
}


// ===== 7691f0 gameswf::array<gameswf::as_value>::push_back<char const*>(char const* const&) =====
int __fastcall gameswf::array<gameswf::as_value>::push_back<char const*>(_DWORD *a1, const char **a2)
{
  int v2; // r3
  int v4; // r5
  const char *v6; // r1
  gameswf::as_value *v7; // r0
  int result; // r0

  v2 = a1[1];
  v4 = v2 + 1;
  if ( v2 + 1 > a1[2] )
  {
    gameswf::array<gameswf::as_value>::reserve((int)a1, v4 + (v4 >> 1));
    v2 = a1[1];
  }
  v6 = *a2;
  v7 = (gameswf::as_value *)(*a1 + 12 * v2);
  *(_BYTE *)v7 = 0;
  *((_BYTE *)v7 + 1) = 0;
  result = gameswf::as_value::set_string(v7, v6);
  a1[1] = v4;
  return result;
}


// ===== 76924c gameswf::as_object_unwatch(gameswf::fn_call const&) =====
int __fastcall gameswf::as_object_unwatch(gameswf *this, const gameswf::fn_call *a2)
{
  char v3; // r1
  int v5; // r6
  int (__fastcall *v6)(int, char *); // r5
  char *v7; // r0

  if ( *((_DWORD *)this + 4) == 1 )
  {
    v5 = *((_DWORD *)this + 1);
    v6 = *(int (__fastcall **)(int, char *))(*(_DWORD *)v5 + 60);
    v7 = gameswf::as_value::to_tu_string((gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)));
    v3 = v6(v5, v7);
  }
  else
  {
    v3 = 0;
  }
  return gameswf::as_value::set_bool(*(gameswf::as_value **)this, v3);
}


// ===== 7692a8 gameswf::as_object_watch(gameswf::fn_call const&) =====
int __fastcall gameswf::as_object_watch(gameswf *this, const gameswf::fn_call *a2)
{
  char v3; // r6
  int v4; // r7
  int (__fastcall *v5)(int, char *, int, char *); // r6
  char *v6; // r10
  int v7; // r8
  char v9; // [sp+4h] [bp-Ch] BYREF
  char v10; // [sp+5h] [bp-Bh]

  if ( *((int *)this + 4) > 1 )
  {
    v4 = *((_DWORD *)this + 1);
    v5 = *(int (__fastcall **)(int, char *, int, char *))(*(_DWORD *)v4 + 56);
    v6 = gameswf::as_value::to_tu_string((gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)));
    v7 = gameswf::as_value::to_function((gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 1)));
    if ( *((int *)this + 4) > 2 )
    {
      v10 = 0;
      v9 = 0;
      gameswf::as_value::operator=((gameswf::as_value *)&v9);
    }
    else
    {
      v10 = 0;
      v9 = 0;
    }
    v3 = v5(v4, v6, v7, &v9);
    gameswf::as_value::drop_refs((gameswf::as_value *)&v9);
  }
  else
  {
    v3 = 0;
  }
  return gameswf::as_value::set_bool(*(gameswf::as_value **)this, v3);
}


// ===== 769388 gameswf::as_object_hasownproperty(gameswf::fn_call const&) =====
int __fastcall gameswf::as_object_hasownproperty(gameswf *this, const gameswf::fn_call *a2)
{
  _DWORD *v4; // r2
  int v5; // r7
  char *v6; // r0
  _BYTE v7[16]; // [sp+4h] [bp-10h] BYREF

  if ( *((_DWORD *)this + 4) == 1 )
  {
    v4 = *((_DWORD **)this + 3);
    v7[1] = 0;
    v7[0] = 0;
    v5 = *((_DWORD *)this + 1);
    v6 = gameswf::as_value::to_tu_string((gameswf::as_value *)(*v4 + 12 * *((_DWORD *)this + 5)));
    if ( gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::get(
           (int *)(v5 + 12),
           v6,
           (gameswf::as_value *)v7) )
    {
      gameswf::as_value::set_bool(*(gameswf::as_value **)this, 1);
      return gameswf::as_value::drop_refs((gameswf::as_value *)v7);
    }
    gameswf::as_value::drop_refs((gameswf::as_value *)v7);
  }
  return gameswf::as_value::set_bool(*(gameswf::as_value **)this, 0);
}


// ===== 769420 gameswf::as_object_registerclass(gameswf::fn_call const&) =====
const char *__fastcall gameswf::as_object_registerclass(gameswf::as_value **this, const gameswf::fn_call *a2)
{
  const char *result; // r0
  int target; // r7
  int (__fastcall *v5)(int, char *); // r6
  char *v6; // r0
  gameswf::character_def *v7; // r7
  int v8; // r5
  int v9; // r5
  const char *v10; // r0
  _BYTE v11[4]; // [sp+4h] [bp-10h] BYREF
  int v12; // [sp+8h] [bp-Ch]

  result = (const char *)gameswf::as_value::set_bool(*this, 0);
  if ( *(this + 4) == (gameswf::as_value *)((char *)&dword_0 + 2) )
  {
    target = gameswf::as_environment::get_target(*(this + 3));
    v5 = *(int (__fastcall **)(int, char *))(*(_DWORD *)target + 132);
    v6 = gameswf::as_value::to_tu_string((gameswf::as_value *)(*(_DWORD *)*(this + 3) + 12 * (_DWORD)*(this + 5)));
    result = (const char *)v5(target, v6);
    v7 = (gameswf::character_def *)result;
    if ( result )
    {
      v8 = *(_DWORD *)*(this + 3) + 12 * ((_DWORD)*(this + 5) - 1);
      if ( *(_BYTE *)(v8 + 1) == 5 )
      {
        v9 = *(_DWORD *)(v8 + 4);
        if ( v9 )
        {
          result = (const char *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v9 + 8))(v9, 4);
          if ( result )
          {
            gameswf::as_value::set_bool(*this, 1);
            v11[0] = 0;
            v11[1] = 5;
            v12 = v9;
            gameswf::ref_counted::add_ref(v9);
            gameswf::character_def::set_registered_class_constructor(v7, (const gameswf::as_value *)v11);
            return (const char *)gameswf::as_value::drop_refs((gameswf::as_value *)v11);
          }
        }
      }
    }
    else
    {
      v10 = (const char *)gameswf::as_value::to_string((gameswf::as_value *)(*(_DWORD *)*(this + 3)
                                                                           + 12 * (_DWORD)*(this + 5)));
      return gameswf::log_error("can't find exported resource '%s'\n", v10);
    }
  }
  return result;
}


// ===== 769540 gameswf::as_value::as_value(gameswf::as_value const&,gameswf::as_value const&) =====
gameswf::as_value *__fastcall gameswf::as_value::as_value(
        gameswf::as_value *this,
        const gameswf::as_value *a2,
        const gameswf::as_value *a3)
{
  gameswf::as_property *v6; // r5

  *(_BYTE *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_BYTE *)this + 1) = 6;
  v6 = (gameswf::as_property *)operator new(0x14u, 0);
  gameswf::as_property::as_property(v6, a2, a3);
  *((_DWORD *)this + 2) = v6;
  gameswf::ref_counted::add_ref((int)v6);
  return this;
}


// ===== 769594 gameswf::array<gameswf::as_value>::resize(int) [clone] =====
int __fastcall gameswf::array<gameswf::as_value>::resize(int result)
{
  int v1; // r4
  _DWORD *v2; // r7
  int v3; // r5
  int i; // r6
  int v5; // r3

  v1 = *(_DWORD *)(result + 4);
  v2 = (_DWORD *)result;
  if ( v1 <= 0 )
  {
    if ( v1 < 0 )
    {
      v5 = 12 * v1;
      do
      {
        ++v1;
        result = *v2 + v5;
        *(_BYTE *)result = 0;
        *(_BYTE *)(result + 1) = 0;
        v5 += 12;
      }
      while ( v1 );
    }
  }
  else
  {
    v3 = 0;
    for ( i = 0; i != v1; ++i )
    {
      result = gameswf::as_value::drop_refs((gameswf::as_value *)(*v2 + v3));
      v3 += 12;
    }
  }
  v2[1] = 0;
  return result;
}


// ===== 769610 gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>>::set_raw_capacity(
        _DWORD **a1,
        int a2)
{
  _DWORD *v2; // r8
  int v3; // r4
  _DWORD *v4; // r3
  int v5; // r5
  int v6; // r3
  _DWORD *v7; // r3
  int v8; // r7
  int v9; // r6
  int v10; // r4
  _DWORD *v11; // r5
  _DWORD v12[2]; // [sp+4h] [bp-8h] BYREF

  v2 = a1;
  if ( a2 <= 0 )
  {
LABEL_17:
    gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>>::clear(a1);
    return;
  }
  v3 = 1 << (int)(float)((float)(logf((float)(a2 - 1)) / 0.69315) + 1.0);
  v4 = (_DWORD *)*v2;
  if ( v3 < 4 )
    v3 = 4;
  if ( !v4 || v4[1] + 1 != v3 )
  {
    v5 = 0;
    v12[0] = gameswf::malloc_internal(16 * v3 + 8);
    *(_DWORD *)v12[0] = 0;
    *(_DWORD *)(v12[0] + 4) = v3 - 1;
    v6 = 8;
    do
    {
      ++v5;
      *(_DWORD *)(v12[0] + v6) = -2;
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
          ++v9;
          v11 = &v7[v10];
          if ( v7[v10] != -2 && v11[1] != -1 )
          {
            gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>>::add(
              v12,
              v11 + 2,
              v11 + 3);
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
    a1 = (_DWORD **)v12;
    *v2 = v12[0];
    v12[0] = 0;
    goto LABEL_17;
  }
}


// ===== 769768 gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>>::check_expand(void) =====
void __fastcall gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>>::check_expand(
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
  gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>>::set_raw_capacity(a1, v2);
}


// ===== 76979c gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>>::add(gameswf::as_object * const&,bool const&) =====
_DWORD *__fastcall gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>>::add(
        _DWORD **a1,
        _DWORD *a2,
        _BYTE *a3)
{
  int v6; // r2
  int v7; // r3
  _DWORD *result; // r0
  _DWORD *v9; // r3
  int v10; // r6
  int v11; // r5
  int v12; // r8
  int v13; // r10
  _DWORD *v14; // r7
  int v15; // r9
  int v16; // r1
  int v17; // r0
  int v18; // r12
  int v19; // r6
  int v20; // r9
  int *v21; // r9
  char v22; // r1

  gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>>::check_expand(a1);
  v6 = 5381;
  v7 = 4;
  ++**a1;
  do
  {
    --v7;
    result = (_DWORD *)*((unsigned __int8 *)a2 + v7);
    v6 = (int)&result[16400 * v6] - v6;
  }
  while ( v7 );
  v9 = *a1;
  if ( v6 == -1 )
    v6 = -32769;
  v10 = v9[1];
  v11 = v6 & v10;
  v12 = 2 * (v6 & v10) + 1;
  v13 = v9[2 * v12];
  v14 = &v9[2 * v12];
  if ( v13 == -2 )
  {
    v9[2 * v12] = -1;
LABEL_14:
    v14[1] = v6;
    v14[2] = *a2;
    *((_BYTE *)v14 + 12) = *a3;
    return result;
  }
  v15 = v14[1];
  if ( v15 == -1 )
    goto LABEL_14;
  v16 = v6 & v10;
  do
  {
    v16 = (v16 + 1) & v10;
    v17 = 2 * v16 + 1;
    v18 = v9[2 * v17];
    result = &v9[2 * v17];
  }
  while ( v18 != -2 );
  v19 = v10 & v15;
  if ( v19 == v11 )
  {
    *result = v13;
    result[1] = v14[1];
    result[2] = v14[2];
    *((_BYTE *)result + 12) = *((_BYTE *)v14 + 12);
    v14[2] = *a2;
    result = (_DWORD *)(unsigned __int8)*a3;
    *((_BYTE *)v14 + 12) = (_BYTE)result;
    v9[2 * v12] = v16;
    v14[1] = v6;
  }
  else
  {
    do
    {
      v20 = 2 * v19 + 1;
      v19 = v9[2 * v20];
      v21 = &v9[2 * v20];
    }
    while ( v19 != v11 );
    *result = v13;
    result[1] = v14[1];
    result[2] = v14[2];
    *((_BYTE *)result + 12) = *((_BYTE *)v14 + 12);
    *v21 = v16;
    v14[2] = *a2;
    v22 = *a3;
    v14[1] = v6;
    *((_BYTE *)v14 + 12) = v22;
    v9[2 * v12] = -1;
  }
  return result;
}


// ===== 769900 gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>>::set(gameswf::as_object * const&,bool const&) =====
_DWORD *__fastcall gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>>::set(
        int *a1,
        _DWORD *a2,
        _BYTE *a3)
{
  int index; // r0
  _DWORD *result; // r0

  index = gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>>::find_index(a1, a2);
  if ( index < 0 )
    return gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>>::add(
             (_DWORD **)a1,
             a2,
             a3);
  result = (_DWORD *)(*a1 + 16 * index);
  *((_BYTE *)result + 20) = *a3;
  return result;
}


// ===== 769944 gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(void) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(
        _DWORD **a1)
{
  _DWORD *v2; // r0
  int v3; // r7
  int v4; // r6
  int v5; // r4
  _DWORD *v6; // r5

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
          if ( *((char *)v6 + 8) == -1 )
            gameswf::free_internal((void *)v6[5]);
          gameswf::as_value::drop_refs((gameswf::as_value *)(v6 + 7));
          *v6 = -2;
          v6[1] = 0;
          v2 = *a1;
        }
        v5 += 10;
      }
      while ( v3 >= v4 );
    }
    gameswf::free_internal(v2);
    *a1 = nullptr;
  }
}


// ===== 7699f0 gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(void) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(
        _DWORD **a1)
{
  _DWORD *v2; // r0
  int v3; // r7
  int v4; // r6
  int v5; // r4
  _DWORD *v6; // r5

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
          if ( *((char *)v6 + 8) == -1 )
            gameswf::free_internal((void *)v6[5]);
          gameswf::as_value::drop_refs((gameswf::as_value *)(v6 + 8));
          *v6 = -2;
          v6[1] = 0;
          v2 = *a1;
        }
        v5 += 11;
      }
      while ( v3 >= v4 );
    }
    gameswf::free_internal(v2);
    *a1 = nullptr;
  }
}


// ===== 769a9c gameswf::as_object::~as_object() =====
void __fastcall gameswf::as_object::~as_object(gameswf::as_object *this)
{
  _DWORD **v1; // r6
  _DWORD *v3; // r0
  bool v4; // zf
  void (__fastcall ***v5)(_DWORD); // r0
  _DWORD *v6; // r0

  v1 = *((_DWORD ***)this + 7);
  *(_DWORD *)this = off_990110;
  if ( v1 )
  {
    gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(v1);
    gameswf::free_internal(v1);
  }
  v3 = *((_DWORD **)this + 11);
  if ( v3 )
  {
    v4 = (*v3)-- == 1;
    if ( v4 )
      gameswf::free_internal(v3);
  }
  v5 = *((void (__fastcall ****)(_DWORD))this + 10);
  if ( v5 )
    gameswf::ref_counted::drop_ref(v5);
  v6 = *((_DWORD **)this + 8);
  if ( v6 )
  {
    v4 = (*v6)-- == 1;
    if ( v4 )
      gameswf::free_internal(v6);
  }
  gameswf::as_value::drop_refs((gameswf::as_object *)((char *)this + 16));
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear((_DWORD **)this + 3);
  *(_DWORD *)this = off_98FB70;
  gameswf::ref_counted::~ref_counted(this);
}


// ===== 769b70 gameswf::as_object::~as_object() =====
void __fastcall gameswf::as_object::~as_object(gameswf::as_object *this)
{
  _DWORD **v1; // r6
  _DWORD *v3; // r0
  bool v4; // zf
  void (__fastcall ***v5)(_DWORD); // r0
  _DWORD *v6; // r0

  v1 = *((_DWORD ***)this + 7);
  *(_DWORD *)this = off_990110;
  if ( v1 )
  {
    gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(v1);
    gameswf::free_internal(v1);
  }
  v3 = *((_DWORD **)this + 11);
  if ( v3 )
  {
    v4 = (*v3)-- == 1;
    if ( v4 )
      gameswf::free_internal(v3);
  }
  v5 = *((void (__fastcall ****)(_DWORD))this + 10);
  if ( v5 )
    gameswf::ref_counted::drop_ref(v5);
  v6 = *((_DWORD **)this + 8);
  if ( v6 )
  {
    v4 = (*v6)-- == 1;
    if ( v4 )
      gameswf::free_internal(v6);
  }
  gameswf::as_value::drop_refs((gameswf::as_object *)((char *)this + 16));
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear((_DWORD **)this + 3);
  *(_DWORD *)this = off_98FB70;
  gameswf::ref_counted::~ref_counted(this);
}


// ===== 769c44 gameswf::as_object::~as_object() =====
void __fastcall gameswf::as_object::~as_object(gameswf::as_object *this)
{
  gameswf::as_object::~as_object(this);
  LC_API_FREE_0(this);
}


// ===== 769c60 gameswf::as_object::dump(void) =====
void __fastcall gameswf::as_object::dump(gameswf::as_object *this)
{
  char v1; // r1
  _BYTE v2[8]; // [sp+0h] [bp-1Ch] BYREF
  void *p; // [sp+Ch] [bp-10h]
  unsigned int v4; // [sp+10h] [bp-Ch]

  v1 = ((v4 & 0xFF000000 | 0xFFFFFF) >> 24) & 0xFE;
  v4 = v4 & 0xFF000000 | 0xFFFFFF;
  v2[0] = 1;
  HIBYTE(v4) = v1;
  v2[1] = 0;
  (*(void (__fastcall **)(gameswf::as_object *, _BYTE *))(*(_DWORD *)this + 76))(this, v2);
  if ( v2[0] == -1 )
    gameswf::free_internal(p);
}


// ===== 769d00 gameswf::as_object_dump(gameswf::fn_call const&) =====
void __fastcall gameswf::as_object_dump(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r3
  char v3; // r0
  _BYTE v4[8]; // [sp+0h] [bp-1Ch] BYREF
  void *p; // [sp+Ch] [bp-10h]
  unsigned int v6; // [sp+10h] [bp-Ch]

  v2 = *((_DWORD *)this + 1);
  if ( v2 )
  {
    v3 = ((v6 & 0xFF000000 | 0xFFFFFF) >> 24) & 0xFE;
    v6 = v6 & 0xFF000000 | 0xFFFFFF;
    v4[1] = 0;
    HIBYTE(v6) = v3;
    v4[0] = 1;
    (*(void (__fastcall **)(int, _BYTE *))(*(_DWORD *)v2 + 76))(v2, v4);
    if ( v4[0] == -1 )
      gameswf::free_internal(p);
  }
}


// ===== 769db0 gameswf::as_object::clear_refs(gameswf::hash<gameswf::as_object*,bool,gameswf::fixed_size_hash<gameswf::as_object*>> *,gameswf::as_object*) =====
int __fastcall gameswf::as_object::clear_refs(int a1, int *a2, int a3)
{
  int result; // r0
  int v7; // r2
  int v8; // r4
  int v9; // r1
  int *v10; // r8
  int v11; // r3
  int v12; // r3
  int v13; // r0
  int v14; // r12
  int v15; // r3
  int v16; // r11
  int v17; // r7
  int v18; // r11
  int v19; // r0
  int v20; // r3
  int v21; // r2
  int v22; // r1
  int v23; // r3
  _BYTE v24[12]; // [sp+0h] [bp-1Ch] BYREF
  int v25; // [sp+Ch] [bp-10h] BYREF
  int v26; // [sp+10h] [bp-Ch] BYREF
  char v27; // [sp+17h] [bp-5h] BYREF

  v26 = a1;
  result = gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>>::find_index(a2, &v26);
  if ( result < 0 )
  {
    v27 = 1;
    v25 = a1;
    gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>>::set(a2, &v25, &v27);
    v7 = *(_DWORD *)(a1 + 12);
    v8 = 0;
    v24[0] = 0;
    v24[1] = 0;
    if ( v7 )
    {
      v9 = *(_DWORD *)(v7 + 4);
      if ( v9 >= 0 )
      {
        v12 = 8;
        do
        {
          v13 = *(_DWORD *)(v7 + v12);
          v14 = v7 + v12;
          v12 += 40;
          if ( v13 != -2 && *(_DWORD *)(v14 + 4) != -1 )
            break;
          ++v8;
        }
        while ( v9 >= v8 );
      }
      v10 = (int *)(a1 + 12);
      if ( a1 != -12 )
      {
        v16 = *v10;
LABEL_22:
        v17 = 8 * (5 * v8 + 1);
        while ( v16 && v8 <= *(_DWORD *)(v16 + 4) )
        {
          v18 = v16 + v17;
          if ( *(_BYTE *)(v18 + 29) == 5 && (v23 = *(_DWORD *)(v18 + 32)) != 0 )
          {
            if ( a3 == v23 )
            {
              gameswf::as_value::drop_refs((gameswf::as_value *)(v18 + 28));
              *(_BYTE *)(v18 + 29) = 0;
            }
            else
            {
              (*(void (__fastcall **)(_DWORD, int *, int))(*(_DWORD *)v23 + 64))(*(_DWORD *)(v18 + 32), a2, a3);
            }
          }
          else if ( gameswf::as_value::to_property((gameswf::as_value *)(v18 + 28))
                 && a3 == gameswf::as_value::get_property_target((gameswf::as_value *)(*v10 + v17 + 28)) )
          {
            gameswf::as_value::set_property_target((gameswf::as_value *)(*v10 + v17 + 28), nullptr);
          }
          v16 = *v10;
          v19 = *(_DWORD *)(*v10 + 4);
          if ( v19 >= v8 )
          {
            if ( v19 >= ++v8 )
            {
              v20 = 8 * (5 * v8 + 1);
              do
              {
                v21 = *(_DWORD *)(v16 + v20);
                v22 = v16 + v20;
                v20 += 40;
                if ( v21 != -2 && *(_DWORD *)(v22 + 4) != -1 )
                  break;
                ++v8;
              }
              while ( v19 >= v8 );
            }
            goto LABEL_22;
          }
        }
      }
    }
    v11 = *(_DWORD *)(a1 + 40);
    if ( v11 )
    {
      if ( a3 == v11 )
        gameswf::smart_ptr<gameswf::as_object>::set_ref((gameswf::ref_counted **)(a1 + 40), nullptr);
      else
        (*(void (__fastcall **)(_DWORD, int *, int))(*(_DWORD *)v11 + 64))(*(_DWORD *)(a1 + 40), a2, a3);
    }
    if ( *(_BYTE *)(a1 + 17) == 5 )
    {
      v15 = *(_DWORD *)(a1 + 20);
      if ( v15 )
      {
        if ( a3 == v15 )
        {
          gameswf::as_value::drop_refs((gameswf::as_value *)(a1 + 16));
          *(_BYTE *)(a1 + 17) = 0;
        }
        else
        {
          (*(void (__fastcall **)(_DWORD, int *, int))(*(_DWORD *)v15 + 64))(*(_DWORD *)(a1 + 20), a2, a3);
        }
      }
    }
    return gameswf::as_value::drop_refs((gameswf::as_value *)v24);
  }
  return result;
}


// ===== 76a010 gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(gameswf::tu_stringi const&,gameswf::as_value const&,int,int) =====
int __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(
        int a1,
        const gameswf::tu_string *a2,
        int a3,
        int a4,
        int a5)
{
  *(_DWORD *)a1 = a4;
  *(_DWORD *)(a1 + 4) = a5;
  gameswf::tu_string::tu_string((gameswf::tu_string *)(a1 + 8), a2);
  *(_BYTE *)(a1 + 29) = 0;
  *(_BYTE *)(a1 + 28) = 0;
  gameswf::as_value::operator=((gameswf::as_value *)(a1 + 28));
  return a1;
}


// ===== 76a050 gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry const&) =====
int __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(
        int a1,
        _DWORD *a2)
{
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + 4) = a2[1];
  gameswf::tu_string::tu_string((gameswf::tu_string *)(a1 + 8), (const gameswf::tu_string *)(a2 + 2));
  *(_BYTE *)(a1 + 29) = 0;
  *(_BYTE *)(a1 + 28) = 0;
  gameswf::as_value::operator=((gameswf::as_value *)(a1 + 28));
  return a1;
}


// ===== 76a098 gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(gameswf::tu_stringi const&,gameswf::as_object::as_watch const&,int,int) =====
int __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(
        int a1,
        const gameswf::tu_string *a2,
        int *a3,
        int a4,
        int a5)
{
  int v7; // r2

  *(_DWORD *)a1 = a4;
  *(_DWORD *)(a1 + 4) = a5;
  gameswf::tu_string::tu_string((gameswf::tu_string *)(a1 + 8), a2);
  v7 = *a3;
  *(_BYTE *)(a1 + 33) = 0;
  *(_DWORD *)(a1 + 28) = v7;
  *(_BYTE *)(a1 + 32) = 0;
  gameswf::as_value::operator=((gameswf::as_value *)(a1 + 32));
  return a1;
}


// ===== 76a0e0 gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry const&) =====
int __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(
        int a1,
        _DWORD *a2)
{
  int v4; // r2

  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + 4) = a2[1];
  gameswf::tu_string::tu_string((gameswf::tu_string *)(a1 + 8), (const gameswf::tu_string *)(a2 + 2));
  v4 = a2[7];
  *(_BYTE *)(a1 + 33) = 0;
  *(_DWORD *)(a1 + 28) = v4;
  *(_BYTE *)(a1 + 32) = 0;
  gameswf::as_value::operator=((gameswf::as_value *)(a1 + 32));
  return a1;
}


// ===== 76a130 gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(gameswf::tu_stringi const&,gameswf::as_value const&) =====
int __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
        _DWORD **a1,
        const gameswf::tu_string *a2,
        int a3)
{
  char *v6; // r12
  int v7; // lr
  int v8; // r4
  _DWORD *v9; // r6
  int v10; // r12
  int v11; // r2
  int v12; // r11
  int v13; // r3
  _DWORD *v14; // r10
  int v15; // lr
  int v16; // r7
  int v17; // r0
  int v18; // r1
  int v19; // r0
  int v20; // r3
  int v21; // r8
  int *v22; // r8
  int v23; // r3
  bool v24; // zf
  int v25; // r3
  int v26; // r2
  char *v27; // r3
  int v28; // r2
  int v29; // r1
  int v30; // r2
  int result; // r0

  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::check_expand();
  ++**a1;
  v7 = *((_DWORD *)a2 + 4);
  if ( (v7 & 0xFFFFFF) == 0xFFFFFF )
  {
    v23 = *(char *)a2;
    v24 = v23 == -1;
    if ( v23 == -1 )
    {
      v25 = *((_DWORD *)a2 + 1);
    }
    else
    {
      v25 = v23 - 1;
      v6 = (char *)a2 + 1;
    }
    if ( v24 )
    {
      --v25;
      v6 = *((char **)a2 + 3);
    }
    if ( v25 > 0 )
    {
      v27 = &v6[v25];
      v28 = 5381;
      do
      {
        v29 = (unsigned __int8)*--v27;
        v30 = 33 * v28;
        if ( (unsigned __int8)(v29 - 65) <= 0x19u )
          v29 += 32;
        v28 = v29 ^ v30;
      }
      while ( v27 != v6 );
      v26 = v28 << 8 >> 8;
      v8 = v26;
    }
    else
    {
      v8 = 5381;
      v26 = 5381;
    }
    *((_DWORD *)a2 + 4) = v7 & 0xFF000000 | v26 & 0xFFFFFF;
  }
  else
  {
    v8 = v7 << 8 >> 8;
  }
  v9 = *a1;
  if ( v8 == -1 )
    v8 = -32769;
  v10 = v9[1];
  v11 = v8 & v10;
  v12 = 5 * (v8 & v10) + 1;
  v13 = v9[2 * v12];
  v14 = &v9[2 * v12];
  if ( v13 == -2 )
    return gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(
             (int)&v9[2 * v12],
             a2,
             a3,
             -1,
             v8);
  v15 = v14[1];
  if ( v15 == -1 )
    return gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(
             (int)&v9[2 * v12],
             a2,
             a3,
             v13,
             v8);
  v16 = v8 & v10;
  do
  {
    v16 = (v16 + 1) & v10;
    v17 = 5 * v16 + 1;
    v18 = v9[2 * v17];
    v19 = (int)&v9[2 * v17];
  }
  while ( v18 != -2 );
  v20 = v10 & v15;
  if ( (v10 & v15) == v11 )
  {
    gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(
      v19,
      &v9[2 * v12]);
    gameswf::tu_string::operator=((gameswf::tu_string *)(v14 + 2), (char *)a2);
    result = gameswf::as_value::operator=((gameswf::as_value *)(v14 + 7));
    v9[2 * v12] = v16;
    v14[1] = v8;
  }
  else
  {
    do
    {
      v21 = 5 * v20 + 1;
      v20 = v9[2 * v21];
      v22 = &v9[2 * v21];
    }
    while ( v20 != v11 );
    gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(
      v19,
      &v9[2 * v12]);
    *v22 = v16;
    gameswf::tu_string::operator=((gameswf::tu_string *)(v14 + 2), (char *)a2);
    result = gameswf::as_value::operator=((gameswf::as_value *)(v14 + 7));
    v14[1] = v8;
    v9[2 * v12] = -1;
  }
  return result;
}


// ===== 76a2f8 gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(
        _DWORD **a1,
        int a2)
{
  _DWORD *v2; // r9
  int v3; // r4
  _DWORD *v4; // r3
  int v5; // r5
  int v6; // r3
  _DWORD *v7; // r3
  int v8; // r8
  int v9; // r6
  int v10; // r5
  _DWORD *v11; // r4
  gameswf::as_value *v12; // r7
  _DWORD *v13[2]; // [sp+4h] [bp-8h] BYREF

  v2 = a1;
  if ( a2 <= 0 )
  {
LABEL_19:
    gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(a1);
    return;
  }
  v3 = 1 << (int)(float)((float)(logf((float)(a2 - 1)) / 0.69315) + 1.0);
  v4 = (_DWORD *)*v2;
  if ( v3 < 4 )
    v3 = 4;
  if ( !v4 || v4[1] + 1 != v3 )
  {
    v5 = 0;
    v13[0] = gameswf::malloc_internal(8 * (5 * v3 + 1));
    *v13[0] = 0;
    v13[0][1] = v3 - 1;
    v6 = 2;
    do
    {
      ++v5;
      v13[0][v6] = -2;
      v6 += 10;
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
          v12 = (gameswf::as_value *)&v7[v10 + 7];
          ++v9;
          if ( v7[v10] != -2 && v11[1] != -1 )
          {
            gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
              v13,
              (const gameswf::tu_string *)&v7[v10 + 2],
              (int)&v7[v10 + 7]);
            if ( *((char *)v11 + 8) == -1 )
              gameswf::free_internal((void *)v11[5]);
            gameswf::as_value::drop_refs(v12);
            v11[1] = 0;
            *v11 = -2;
            v7 = (_DWORD *)*v2;
          }
          v10 += 10;
        }
        while ( v8 >= v9 );
      }
      gameswf::free_internal(v7);
    }
    a1 = v13;
    *v2 = v13[0];
    v13[0] = nullptr;
    goto LABEL_19;
  }
}


// ===== 76a488 gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::check_expand(void) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::check_expand(
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
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(
    a1,
    v2);
}


// ===== 76a4bc gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set(gameswf::tu_stringi const&,gameswf::as_value const&) =====
int __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set(
        int *a1,
        const gameswf::tu_string *a2,
        int a3)
{
  int index; // r0

  index = gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(
            a1,
            a2);
  if ( index < 0 )
    return gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
             (_DWORD **)a1,
             a2,
             a3);
  else
    return gameswf::as_value::operator=((gameswf::as_value *)(*a1 + 40 * index + 36));
}


// ===== 76a508 gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(gameswf::tu_stringi const&,gameswf::as_object::as_watch const&) =====
int __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
        _DWORD **a1,
        const gameswf::tu_string *a2,
        int *a3)
{
  char *v6; // r12
  int v7; // lr
  int v8; // r4
  _DWORD *v9; // r6
  int v10; // r12
  int v11; // r2
  int v12; // r11
  int v13; // r3
  _DWORD *v14; // r10
  int v15; // lr
  int v16; // r7
  int v17; // r0
  int v18; // r1
  int v19; // r0
  int v20; // r3
  int v21; // r8
  int *v22; // r8
  int v23; // r3
  bool v24; // zf
  int v25; // r3
  int v26; // r2
  char *v27; // r3
  int v28; // r2
  int v29; // r1
  int v30; // r2
  int result; // r0

  gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::check_expand();
  ++**a1;
  v7 = *((_DWORD *)a2 + 4);
  if ( (v7 & 0xFFFFFF) == 0xFFFFFF )
  {
    v23 = *(char *)a2;
    v24 = v23 == -1;
    if ( v23 == -1 )
    {
      v25 = *((_DWORD *)a2 + 1);
    }
    else
    {
      v25 = v23 - 1;
      v6 = (char *)a2 + 1;
    }
    if ( v24 )
    {
      --v25;
      v6 = *((char **)a2 + 3);
    }
    if ( v25 > 0 )
    {
      v27 = &v6[v25];
      v28 = 5381;
      do
      {
        v29 = (unsigned __int8)*--v27;
        v30 = 33 * v28;
        if ( (unsigned __int8)(v29 - 65) <= 0x19u )
          v29 += 32;
        v28 = v29 ^ v30;
      }
      while ( v27 != v6 );
      v26 = v28 << 8 >> 8;
      v8 = v26;
    }
    else
    {
      v8 = 5381;
      v26 = 5381;
    }
    *((_DWORD *)a2 + 4) = v7 & 0xFF000000 | v26 & 0xFFFFFF;
  }
  else
  {
    v8 = v7 << 8 >> 8;
  }
  v9 = *a1;
  if ( v8 == -1 )
    v8 = -32769;
  v10 = v9[1];
  v11 = v8 & v10;
  v12 = 44 * (v8 & v10) + 8;
  v13 = *(_DWORD *)((char *)v9 + v12);
  v14 = (_DWORD *)((char *)v9 + v12);
  if ( v13 == -2 )
    return gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(
             (int)v9 + v12,
             a2,
             a3,
             -1,
             v8);
  v15 = v14[1];
  if ( v15 == -1 )
    return gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(
             (int)v9 + v12,
             a2,
             a3,
             v13,
             v8);
  v16 = v8 & v10;
  do
  {
    v16 = (v16 + 1) & v10;
    v17 = 44 * v16 + 8;
    v18 = *(_DWORD *)((char *)v9 + v17);
    v19 = (int)v9 + v17;
  }
  while ( v18 != -2 );
  v20 = v10 & v15;
  if ( (v10 & v15) == v11 )
  {
    gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(
      v19,
      (_DWORD *)((char *)v9 + v12));
    gameswf::tu_string::operator=((gameswf::tu_string *)(v14 + 2), (char *)a2);
    v14[7] = *a3;
    result = gameswf::as_value::operator=((gameswf::as_value *)(v14 + 8));
    *(_DWORD *)((char *)v9 + v12) = v16;
    v14[1] = v8;
  }
  else
  {
    do
    {
      v21 = 44 * v20 + 8;
      v20 = *(_DWORD *)((char *)v9 + v21);
      v22 = (_DWORD *)((char *)v9 + v21);
    }
    while ( v20 != v11 );
    gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(
      v19,
      (_DWORD *)((char *)v9 + v12));
    *v22 = v16;
    gameswf::tu_string::operator=((gameswf::tu_string *)(v14 + 2), (char *)a2);
    v14[7] = *a3;
    result = gameswf::as_value::operator=((gameswf::as_value *)(v14 + 8));
    v14[1] = v8;
    *(_DWORD *)((char *)v9 + v12) = -1;
  }
  return result;
}


// ===== 76a6ec gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(
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
  _DWORD *v12[2]; // [sp+4h] [bp-8h] BYREF

  v2 = a1;
  if ( a2 <= 0 )
  {
LABEL_19:
    gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(a1);
    return;
  }
  v3 = 1 << (int)(float)((float)(logf((float)(a2 - 1)) / 0.69315) + 1.0);
  v4 = (_DWORD *)*v2;
  if ( v3 < 4 )
    v3 = 4;
  if ( !v4 || v4[1] + 1 != v3 )
  {
    v5 = 0;
    v12[0] = gameswf::malloc_internal(44 * v3 + 8);
    *v12[0] = 0;
    v12[0][1] = v3 - 1;
    v6 = 2;
    do
    {
      ++v5;
      v12[0][v6] = -2;
      v6 += 11;
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
            gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
              v12,
              (const gameswf::tu_string *)&v7[v10 + 2],
              &v7[v10 + 7]);
            if ( *((char *)v11 + 8) == -1 )
              gameswf::free_internal((void *)v11[5]);
            gameswf::as_value::drop_refs((gameswf::as_value *)(v11 + 8));
            *v11 = -2;
            v11[1] = 0;
            v7 = (_DWORD *)*v2;
          }
          v10 += 11;
        }
        while ( v8 >= v9 );
      }
      gameswf::free_internal(v7);
    }
    a1 = v12;
    *v2 = v12[0];
    v12[0] = nullptr;
    goto LABEL_19;
  }
}


// ===== 76a874 gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::check_expand(void) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::check_expand(
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
  gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(
    a1,
    v2);
}


// ===== 76a8a8 gameswf::as_object::dump(gameswf::tu_string &) =====
void __fastcall gameswf::as_object::dump(gameswf::as_object *this, gameswf::tu_string *a2)
{
  int v2; // r4
  int v4; // r4
  char *v5; // r1
  int v6; // r2
  const char *v7; // r1
  int v8; // r8
  int v9; // r3
  int i; // r4
  char *v11; // r5
  int v12; // r3
  int v13; // r1
  int v14; // r2
  int v15; // r10
  int v16; // r8
  gameswf::as_value *v17; // r0
  int v18; // r9
  int v19; // r3
  char *v20; // r1
  int v21; // r2
  int v22; // r2
  int v23; // r3
  int v24; // r0
  int v25; // r3
  int v26; // r3
  const char *v27; // r0
  int v28; // r2
  char *v29; // r1
  int v30; // r2
  int v31; // r3
  int v32; // r0
  char *v33; // r9
  int v34; // r8
  int v35; // r0
  int v36; // r10
  int v37; // r10
  char *v38; // r1
  int v39; // r2

  v2 = *(char *)a2;
  if ( v2 == -1 )
    v2 = *((_DWORD *)a2 + 1);
  v4 = v2 - 1;
  gameswf::tu_string::resize(a2, v4 + 2);
  if ( *(char *)a2 == -1 )
    v5 = *((char **)a2 + 3);
  else
    v5 = (char *)a2 + 1;
  v5[v4] = 32;
  *(_WORD *)&v5[v4 + 1] = 32;
  v6 = *(char *)a2;
  *((_DWORD *)a2 + 4) = *((_DWORD *)a2 + 4) & 0xFF000000 | 0xFFFFFF;
  if ( v6 == -1 )
    v7 = *((const char **)a2 + 3);
  else
    v7 = (char *)a2 + 1;
  printf("%s*** object 0x%p ***\n", v7, this);
  v8 = *((_DWORD *)this + 3);
  if ( v8 )
  {
    v9 = *(_DWORD *)(v8 + 4);
    if ( v9 >= 0 )
    {
      v14 = 8;
      for ( i = 0; i <= v9; ++i )
      {
        if ( *(_DWORD *)(v8 + v14) != -2 && *(_DWORD *)(v8 + v14 + 4) != -1 )
          break;
        v14 += 40;
      }
    }
    else
    {
      i = 0;
    }
    v11 = (char *)this + 12;
    if ( this != (gameswf::as_object *)-12 )
    {
      while ( v8 && *(_DWORD *)(v8 + 4) >= i )
      {
        v15 = 8 * (5 * i + 1);
        v16 = v8 + v15;
        v17 = (gameswf::as_value *)(v16 + 28);
        if ( *(_BYTE *)(v16 + 29) == 6 )
        {
          gameswf::as_value::to_property(v17);
          gameswf::as_value::get_property_target((gameswf::as_value *)(v16 + 28));
          abort();
        }
        if ( !gameswf::as_value::is_function(v17) )
        {
          if ( *(_BYTE *)(v16 + 29) == 5 )
          {
            v37 = *(_DWORD *)v11 + v15;
            if ( *(char *)a2 == -1 )
              v38 = *((char **)a2 + 3);
            else
              v38 = (char *)a2 + 1;
            if ( *(char *)(v37 + 8) == -1 )
              v39 = *(_DWORD *)(v37 + 20);
            else
              v39 = v37 + 9;
            printf("%s%s: <as_object 0x%p>\n", v38, v39, *(_DWORD *)(v16 + 32));
          }
          else
          {
            v32 = *(_DWORD *)v11 + v15;
            if ( *(char *)a2 == -1 )
              v33 = *((char **)a2 + 3);
            else
              v33 = (char *)a2 + 1;
            if ( *(char *)(v32 + 8) == -1 )
              v34 = *(_DWORD *)(v32 + 20);
            else
              v34 = v32 + 9;
            v35 = gameswf::as_value::to_string((gameswf::as_value *)(v32 + 28));
            printf("%s%s: %s\n", v33, v34, v35);
          }
          goto LABEL_39;
        }
        v18 = *(unsigned __int8 *)(v16 + 29);
        if ( v18 != 5 )
        {
LABEL_28:
          v19 = (char)v18;
LABEL_29:
          if ( *(char *)a2 == -1 )
            v20 = *((char **)a2 + 3);
          else
            v20 = (char *)a2 + 1;
          v21 = *(_DWORD *)v11 + v15;
          if ( *(char *)(v21 + 8) == -1 )
            v22 = *(_DWORD *)(v21 + 20);
          else
            v22 = v21 + 9;
          if ( v19 == 5 )
            v23 = *(_DWORD *)(v16 + 32);
          else
            v23 = 0;
          printf("%s%s: <as_c_function 0x%p>\n", v20, v22, v23);
          goto LABEL_39;
        }
        v26 = *(_DWORD *)(v16 + 32);
        if ( v26 )
        {
          if ( (*(int (__fastcall **)(_DWORD, int))(*(_DWORD *)v26 + 8))(*(_DWORD *)(v16 + 32), 6) )
          {
            v27 = "%s%s: <as_s_function 0x%p>\n";
            v36 = *(_DWORD *)v11 + v15;
            if ( *(char *)a2 == -1 )
              v29 = *((char **)a2 + 3);
            else
              v29 = (char *)a2 + 1;
            if ( *(char *)(v36 + 8) == -1 )
              v30 = *(_DWORD *)(v36 + 20);
            else
              v30 = v36 + 9;
            if ( *(_BYTE *)(v16 + 29) == 5 )
              v31 = *(_DWORD *)(v16 + 32);
            else
              v31 = 0;
            goto LABEL_63;
          }
          v19 = *(char *)(v16 + 29);
          if ( v19 != 5 )
            goto LABEL_29;
          v26 = *(_DWORD *)(v16 + 32);
        }
        if ( !v26 )
          goto LABEL_28;
        if ( !(*(int (__fastcall **)(int, int))(*(_DWORD *)v26 + 8))(v26, 7) )
        {
          v19 = *(char *)(v16 + 29);
          goto LABEL_29;
        }
        v27 = "%s%s: <as_3_function 0x%p>\n";
        v28 = *(_DWORD *)v11 + v15;
        if ( *(char *)a2 == -1 )
          v29 = *((char **)a2 + 3);
        else
          v29 = (char *)a2 + 1;
        if ( *(char *)(v28 + 8) == -1 )
          v30 = *(_DWORD *)(v28 + 20);
        else
          v30 = v28 + 9;
        if ( *(_BYTE *)(v16 + 29) == 5 )
          v31 = *(_DWORD *)(v16 + 32);
        else
          v31 = 0;
LABEL_63:
        printf(v27, v29, v30, v31);
LABEL_39:
        v8 = *(_DWORD *)v11;
        v24 = *(_DWORD *)(*(_DWORD *)v11 + 4);
        if ( v24 >= i && v24 >= ++i )
        {
          v25 = 8 * (5 * i + 1);
          do
          {
            if ( *(_DWORD *)(v8 + v25) != -2 && *(_DWORD *)(v8 + v25 + 4) != -1 )
              break;
            ++i;
            v25 += 40;
          }
          while ( v24 >= i );
        }
      }
    }
  }
  v12 = *((_DWORD *)this + 10);
  if ( v12 )
    (*(void (__fastcall **)(_DWORD, gameswf::tu_string *))(*(_DWORD *)v12 + 76))(*((_DWORD *)this + 10), a2);
  v13 = *(char *)a2;
  if ( v13 == -1 )
    v13 = *((_DWORD *)a2 + 1);
  gameswf::tu_string::resize(a2, v13 - 3);
}


// ===== 76aca0 gameswf::as_object::enumerate(gameswf::as_environment *) =====
int __fastcall gameswf::as_object::enumerate(int this, gameswf::as_environment *a2)
{
  int v2; // r3
  int v4; // r1
  int i; // r4
  int v6; // r6
  int v7; // r2
  int v8; // r12
  int v9; // r3
  int v10; // r1
  int v11; // r1
  int v12; // r2
  int v13; // r12
  int v14; // r5

  v2 = *(_DWORD *)(this + 12);
  if ( v2 )
  {
    v4 = *(_DWORD *)(v2 + 4);
    if ( v4 >= 0 )
    {
      v12 = 8;
      for ( i = 0; i <= v4; ++i )
      {
        v13 = *(_DWORD *)(v2 + v12);
        v14 = v2 + v12;
        v12 += 40;
        if ( v13 != -2 && *(_DWORD *)(v14 + 4) != -1 )
          break;
      }
    }
    else
    {
      i = 0;
    }
    v6 = this + 12;
    if ( this != -12 )
    {
      v7 = *(_DWORD *)v6;
      while ( 1 )
      {
        v11 = v7 + 8 * (5 * i + 1);
        if ( !v7 )
          break;
        v8 = *(_DWORD *)(v7 + 4);
        if ( i > v8 )
          break;
        if ( (*(_BYTE *)(v11 + 28) & 1) == 0 )
        {
          this = gameswf::array<gameswf::as_value>::push_back<gameswf::tu_string>(a2, (gameswf::tu_string *)(v11 + 8));
          v7 = *(_DWORD *)v6;
          v8 = *(_DWORD *)(*(_DWORD *)v6 + 4);
          if ( i > v8 )
            continue;
        }
        if ( v8 >= ++i )
        {
          v9 = 8 * (5 * i + 1);
          do
          {
            v10 = *(_DWORD *)(v7 + v9);
            this = v7 + v9;
            v9 += 40;
            if ( v10 != -2 && *(_DWORD *)(this + 4) != -1 )
              break;
            ++i;
          }
          while ( i <= v8 );
        }
      }
    }
  }
  return this;
}


// ===== 76ada4 gameswf::as_object_addproperty(gameswf::fn_call const&) =====
int __fastcall gameswf::as_object_addproperty(gameswf::as_value **this, const gameswf::fn_call *a2)
{
  int v4; // r9
  const char *v5; // r0
  _BYTE v6[12]; // [sp+4h] [bp-24h] BYREF
  _BYTE v7[8]; // [sp+10h] [bp-18h] BYREF
  void *p; // [sp+1Ch] [bp-Ch]

  if ( *(this + 4) != (gameswf::as_value *)((char *)&dword_0 + 3) )
    return gameswf::as_value::set_bool(*this, 0);
  v4 = (int)*(this + 1);
  v5 = (const char *)gameswf::as_value::to_string((gameswf::as_value *)(*(_DWORD *)*(this + 3) + 12
                                                                                               * (_DWORD)*(this + 5)));
  gameswf::tu_string::tu_string((gameswf::tu_string *)v7, v5);
  gameswf::as_value::as_value(
    (gameswf::as_value *)v6,
    (const gameswf::as_value *)(*(_DWORD *)*(this + 3) + 12 * ((_DWORD)*(this + 5) - 1)),
    (const gameswf::as_value *)(*(_DWORD *)*(this + 3) + 12 * ((_DWORD)*(this + 5) - 2)));
  gameswf::as_object::builtin_member(v4, (int)v7, v6);
  gameswf::as_value::drop_refs((gameswf::as_value *)v6);
  if ( v7[0] == -1 )
    gameswf::free_internal(p);
  return gameswf::as_value::set_bool(*this, 1);
}


// ===== 76aea0 gameswf::as_object::copy_to(gameswf::as_object*) =====
gameswf::as_object *__fastcall gameswf::as_object::copy_to(gameswf::as_object *this, gameswf::as_object *a2)
{
  int v3; // r2
  int v4; // r1
  int i; // r4
  char *v6; // r7
  int v7; // r3
  int v8; // r12
  int v9; // r2
  int v10; // r1
  int v11; // r0
  int v12; // r3
  int v13; // r12
  int v14; // r6

  if ( a2 )
  {
    v3 = *((_DWORD *)this + 3);
    if ( v3 )
    {
      v4 = *(_DWORD *)(v3 + 4);
      if ( v4 >= 0 )
      {
        v12 = 8;
        for ( i = 0; i <= v4; ++i )
        {
          v13 = *(_DWORD *)(v3 + v12);
          v14 = v3 + v12;
          v12 += 40;
          if ( v13 != -2 && *(_DWORD *)(v14 + 4) != -1 )
            break;
        }
      }
      else
      {
        i = 0;
      }
      v6 = (char *)this + 12;
      if ( this != (gameswf::as_object *)-12 )
      {
        v7 = *(_DWORD *)v6;
        while ( 1 )
        {
          this = a2;
          if ( !v7 || i > *(_DWORD *)(v7 + 4) )
            break;
          (*(void (__fastcall **)(gameswf::as_object *, int, int))(*(_DWORD *)a2 + 28))(
            a2,
            v7 + 8 * (5 * i + 1) + 8,
            v7 + 8 * (5 * i + 1) + 28);
          v7 = *(_DWORD *)v6;
          v8 = *(_DWORD *)(*(_DWORD *)v6 + 4);
          if ( i <= v8 && v8 >= ++i )
          {
            v9 = 8 * (5 * i + 1);
            do
            {
              v10 = *(_DWORD *)(v7 + v9);
              v11 = v7 + v9;
              v9 += 40;
              if ( v10 != -2 && *(_DWORD *)(v11 + 4) != -1 )
                break;
              ++i;
            }
            while ( v8 >= i );
          }
        }
      }
    }
  }
  return this;
}


// ===== 76afa4 gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::operator=(gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>> const&) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::operator=(
        int **a1,
        int **a2)
{
  int v4; // r3
  int *v5; // r2
  int v6; // r1
  int v7; // r1
  int *v8; // r2
  int v9; // r1
  int i; // r4
  int *v11; // r3
  int v12; // r12
  int v13; // r2
  int v14; // r1
  int *v15; // r0
  int v16; // r3
  int v17; // r0
  int *v18; // r12

  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(a1);
  if ( *a2 )
  {
    v4 = **a2;
    if ( v4 )
    {
      v5 = *a1;
      if ( *a1 )
        v6 = *v5;
      else
        v6 = 0;
      if ( v4 < v6 )
      {
        if ( v5 )
          v7 = *v5;
        else
          v7 = 0;
        if ( v5 )
          v7 = 3 * v7 / 2;
      }
      else
      {
        v7 = 3 * v4 / 2;
      }
      gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(
        a1,
        v7);
      v8 = *a2;
      if ( *a2 )
      {
        v9 = v8[1];
        if ( v9 >= 0 )
        {
          v16 = 2;
          for ( i = 0; i <= v9; ++i )
          {
            v17 = v8[v16];
            v18 = &v8[v16];
            v16 += 10;
            if ( v17 != -2 && v18[1] != -1 )
              break;
          }
        }
        else
        {
          i = 0;
        }
        if ( a2 )
        {
          v11 = *a2;
          while ( v11 && i <= v11[1] )
          {
            gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
              a1,
              (const gameswf::tu_string *)&v11[10 * i + 4],
              (int)&v11[10 * i + 9]);
            v11 = *a2;
            v12 = (*a2)[1];
            if ( i <= v12 && ++i <= v12 )
            {
              v13 = 2 * (5 * i + 1);
              do
              {
                v14 = v11[v13];
                v15 = &v11[v13];
                v13 += 10;
                if ( v14 != -2 && v15[1] != -1 )
                  break;
                ++i;
              }
              while ( i <= v12 );
            }
          }
        }
      }
    }
  }
}


// ===== 76b108 gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::erase(gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::iterator const&) =====
int __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::erase(
        int result,
        int **a2)
{
  int *v2; // r3
  int *v3; // r5
  int v4; // r4
  int v5; // r2
  int v6; // r6
  int v7; // r7
  int v8; // r0
  int v9; // r0
  int v10; // r3
  _DWORD *i; // r0
  int v12; // r0
  int v13; // r7
  int v14; // r6
  int v15; // r4

  v2 = *a2;
  v3 = (int *)result;
  if ( *a2 )
  {
    v4 = *v2;
    if ( *v2 )
    {
      v5 = (int)a2[1];
      result = *(_DWORD *)(v4 + 4);
      if ( v5 <= result && v3 == v2 )
      {
        v6 = 44 * v5 + 8;
        v7 = v4 + v6;
        v8 = result & *(_DWORD *)(v4 + v6 + 4);
        if ( v8 != v5 )
        {
          v9 = 44 * v8 + 8;
          v10 = *(_DWORD *)(v4 + v9);
          for ( i = (_DWORD *)(v4 + v9); v10 != v5; i = (_DWORD *)(v4 + v12) )
          {
            v12 = 44 * v10 + 8;
            v10 = *(_DWORD *)(v4 + v12);
          }
          *i = *(_DWORD *)(v4 + v6);
          v13 = **a2;
          v14 = 44 * (_DWORD)a2[1] + 8;
          v15 = v13 + v14;
          if ( *(char *)(v13 + v14 + 8) == -1 )
            gameswf::free_internal(*(void **)(v15 + 20));
          result = gameswf::as_value::drop_refs((gameswf::as_value *)(v15 + 32));
          *(_DWORD *)(v13 + v14) = -2;
          *(_DWORD *)(v15 + 4) = 0;
LABEL_12:
          --*(_DWORD *)*v3;
          return result;
        }
        if ( *(_DWORD *)(v4 + v6) == -1 )
        {
          if ( *(char *)(v7 + 8) == -1 )
            gameswf::free_internal(*(void **)(v7 + 20));
          result = gameswf::as_value::drop_refs((gameswf::as_value *)(v7 + 32));
          *(_DWORD *)(v4 + v6) = -2;
          *(_DWORD *)(v7 + 4) = 0;
          goto LABEL_12;
        }
        if ( *(char *)(v7 + 8) == -1 )
          gameswf::free_internal(*(void **)(v7 + 20));
        result = gameswf::as_value::drop_refs((gameswf::as_value *)(v7 + 32));
        *(_DWORD *)(v7 + 4) = -1;
        --*(_DWORD *)*v3;
      }
    }
  }
  return result;
}


// ===== 76b284 gameswf::as_object::find_target(char const*) =====
gameswf::as_object *__fastcall gameswf::as_object::find_target(gameswf::player **this, const char *a2)
{
  int v2; // r3
  gameswf::as_object *target; // r5
  char *v5; // r8
  char *v7; // r0
  gameswf::player *v8; // r0
  _BYTE *v9; // r3
  gameswf::root *root; // r0
  gameswf::as_object *root_movie; // r0
  char v13; // [sp+0h] [bp-3Ch] BYREF
  char v14; // [sp+1h] [bp-3Bh]
  gameswf::as_object *v15; // [sp+4h] [bp-38h]
  void *v16[5]; // [sp+Ch] [bp-30h] BYREF
  void *v17[5]; // [sp+20h] [bp-1Ch] BYREF

  v2 = *a2;
  target = (gameswf::as_object *)this;
  if ( *a2 )
  {
    v14 = 0;
    v13 = 0;
    if ( v2 == 47 )
    {
      v8 = *(this + 12);
      if ( v8 )
      {
        v9 = *((_BYTE **)target + 11);
        if ( !v9[4] )
        {
          if ( (*(_DWORD *)v9)-- == 1 )
            gameswf::free_internal(v9);
          v8 = nullptr;
          *((_DWORD *)target + 12) = 0;
          *((_DWORD *)target + 11) = 0;
        }
      }
      root = (gameswf::root *)gameswf::player::get_root(v8);
      root_movie = (gameswf::as_object *)gameswf::root::get_root_movie(root);
      target = (gameswf::as_object *)gameswf::as_object::find_target(root_movie, a2 + 1);
    }
    else
    {
      v5 = strchr(a2, 47);
      if ( v5 || (v7 = strchr(a2, 46), (v5 = v7) != nullptr) && v7[1] != 46 )
      {
        gameswf::tu_string::tu_string((gameswf::tu_string *)v17, a2, v5 - a2);
        (*(void (__fastcall **)(gameswf::as_object *, void **, char *))(*(_DWORD *)target + 32))(target, v17, &v13);
        if ( v14 == 5 && v15 )
        {
          target = (gameswf::as_object *)gameswf::as_object::find_target(v15, v5 + 1);
          if ( SLOBYTE(v17[0]) == -1 )
            gameswf::free_internal(v17[3]);
        }
        else
        {
          gameswf::tu_string::~tu_string(v17);
          target = nullptr;
        }
      }
      else
      {
        gameswf::tu_string::tu_string((gameswf::tu_string *)v16, a2);
        (*(void (__fastcall **)(gameswf::as_object *, void **, char *))(*(_DWORD *)target + 32))(target, v16, &v13);
        if ( v14 == 5 )
          target = v15;
        else
          target = nullptr;
        gameswf::tu_string::~tu_string(v16);
      }
    }
    gameswf::as_value::drop_refs((gameswf::as_value *)&v13);
  }
  return target;
}


// ===== 76b45c gameswf::as_object::find_target(gameswf::as_value const&) =====
gameswf::as_object *__fastcall gameswf::as_object::find_target(gameswf::player **this, const gameswf::as_value *a2)
{
  int v2; // r3
  char *v5; // r0
  const char *v6; // r1

  v2 = *((unsigned __int8 *)a2 + 1);
  if ( (unsigned __int8)(v2 - 3) <= 1u )
  {
    v5 = gameswf::as_value::to_tu_string(a2);
    if ( *v5 == -1 )
      v6 = *((const char **)v5 + 3);
    else
      v6 = v5 + 1;
    return gameswf::as_object::find_target(this, v6);
  }
  else if ( v2 == 5 )
  {
    return *((gameswf::as_object **)a2 + 1);
  }
  else
  {
    return nullptr;
  }
}


// ===== 76b4ac gameswf::as_object::get_root(void) =====
int __fastcall gameswf::as_object::get_root(gameswf::as_object *this)
{
  gameswf::player *v2; // r0
  _BYTE *v3; // r3

  v2 = *((gameswf::player **)this + 12);
  if ( v2 )
  {
    v3 = *((_BYTE **)this + 11);
    if ( !v3[4] )
    {
      if ( (*(_DWORD *)v3)-- == 1 )
        gameswf::free_internal(v3);
      v2 = nullptr;
      *((_DWORD *)this + 12) = 0;
      *((_DWORD *)this + 11) = 0;
    }
  }
  return gameswf::player::get_root(v2);
}


// ===== 76b504 gameswf::as_object::get_global(void) =====
int __fastcall gameswf::as_object::get_global(gameswf::as_object *this)
{
  gameswf::player *v2; // r0
  _BYTE *v3; // r3

  v2 = *((gameswf::player **)this + 12);
  if ( v2 )
  {
    v3 = *((_BYTE **)this + 11);
    if ( !v3[4] )
    {
      if ( (*(_DWORD *)v3)-- == 1 )
        gameswf::free_internal(v3);
      v2 = nullptr;
      *((_DWORD *)this + 12) = 0;
      *((_DWORD *)this + 11) = 0;
    }
  }
  return gameswf::player::get_global(v2);
}


// ===== 76b55c gameswf::as_object_add_event_listener(gameswf::fn_call const&) =====
int __fastcall gameswf::as_object_add_event_listener(int this, const gameswf::fn_call *a2)
{
  gameswf::as_object *v2; // r0
  int global; // r10
  int (__fastcall *v4)(int, _BYTE *, char *); // r7
  int v5; // r7
  gameswf::as_object *v6; // r0
  int v7; // r10
  void (__fastcall *v8)(int, _BYTE *, char *); // r7
  char v9; // [sp+0h] [bp-3Ch] BYREF
  char v10; // [sp+1h] [bp-3Bh]
  gameswf::as_object *v11; // [sp+4h] [bp-38h]
  _BYTE v12[8]; // [sp+Ch] [bp-30h] BYREF
  void *p; // [sp+18h] [bp-24h]
  _BYTE v14[8]; // [sp+20h] [bp-1Ch] BYREF
  void *v15; // [sp+2Ch] [bp-10h]

  if ( *(int *)(this + 16) > 1 )
  {
    v2 = *(gameswf::as_object **)(this + 4);
    v10 = 0;
    v9 = 0;
    global = gameswf::as_object::get_global(v2);
    v4 = *(int (__fastcall **)(int, _BYTE *, char *))(*(_DWORD *)global + 32);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v14, "flash");
    v5 = v4(global, v14, &v9);
    if ( v14[0] == -1 )
      gameswf::free_internal(v15);
    if ( v5 )
    {
      if ( v10 == 5 )
        v6 = v11;
      else
        v6 = nullptr;
      v7 = gameswf::as_object::get_global(v6);
      v8 = *(void (__fastcall **)(int, _BYTE *, char *))(*(_DWORD *)v7 + 32);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v12, "MouseEvent");
      v8(v7, v12, &v9);
      if ( v12[0] == -1 )
        gameswf::free_internal(p);
    }
    return gameswf::as_value::drop_refs((gameswf::as_value *)&v9);
  }
  return this;
}


// ===== 76b694 gameswf::as_object::on_event(gameswf::event_id const&) =====
int __fastcall gameswf::as_object::on_event(gameswf::ref_counted **this, const gameswf::event_id *a2)
{
  char *function_name; // r0
  int v5; // r3
  int v6; // r4
  gameswf::ref_counted *v7; // r1
  _BYTE *v8; // r0
  int v9; // r3
  int v10; // r5
  int v11; // r9
  int i; // r10
  _DWORD v15[27]; // [sp+10h] [bp-90h] BYREF
  _BYTE v16[12]; // [sp+7Ch] [bp-24h] BYREF
  _BYTE v17[4]; // [sp+88h] [bp-18h] BYREF
  gameswf::as_object *v18; // [sp+8Ch] [bp-14h]
  _BYTE v19[12]; // [sp+94h] [bp-Ch] BYREF

  function_name = (char *)gameswf::event_id::get_function_name(a2);
  v5 = *function_name;
  if ( v5 == -1 )
    v5 = *((_DWORD *)function_name + 1);
  if ( v5 - 1 <= 0 )
    return 0;
  v19[1] = 0;
  v19[0] = 0;
  v6 = (*((int (__fastcall **)(gameswf::ref_counted **, char *, _BYTE *))*this + 8))(this, function_name, v19);
  if ( v6 )
  {
    v7 = *(this + 12);
    if ( v7 )
    {
      v8 = *(this + 11);
      if ( !v8[4] )
      {
        if ( (*(_DWORD *)v8)-- == 1 )
          gameswf::free_internal(v8);
        v7 = nullptr;
        *(this + 11) = nullptr;
        *(this + 12) = nullptr;
      }
    }
    gameswf::as_environment::as_environment((int)v15, v7);
    v9 = *((_DWORD *)a2 + 1);
    if ( v9 )
    {
      v10 = *(_DWORD *)(v9 + 4);
      if ( v10 - 1 >= 0 )
      {
        v11 = 12 * (v10 - 1);
        for ( i = 0; i != v10; ++i )
        {
          gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(v15);
          v11 -= 12;
        }
      }
    }
    else
    {
      v10 = 0;
    }
    v17[0] = 0;
    v17[1] = 5;
    v18 = (gameswf::as_object *)this;
    gameswf::ref_counted::add_ref((int)this);
    gameswf::call_method((int)v16, (gameswf::as_value *)v19, (int)v15, (int)v17, v10, v15[1] - 1, (int)"???");
    gameswf::as_value::drop_refs((gameswf::as_value *)v16);
    gameswf::as_value::drop_refs((gameswf::as_value *)v17);
    gameswf::as_environment::~as_environment((gameswf::as_environment *)v15);
    v6 = 1;
  }
  gameswf::as_value::drop_refs((gameswf::as_value *)v19);
  return v6;
}


// ===== 76b820 gameswf::as_object::as_object(gameswf::player *) =====
gameswf::as_object *__fastcall gameswf::as_object::as_object(gameswf::as_object *this, gameswf::player *a2)
{
  gameswf::ref_counted *v5; // [sp+4h] [bp-8h] BYREF

  gameswf::ref_counted::ref_counted(this);
  *((_DWORD *)this + 3) = 0;
  *((_BYTE *)this + 16) = 0;
  *(_DWORD *)this = off_990110;
  *((_BYTE *)this + 17) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  gameswf::weak_ptr<gameswf::player>::operator=((int)this + 44, a2);
  *((_DWORD *)this + 13) = 0;
  if ( a2 )
  {
    v5 = this;
    gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::push_back<gameswf::as_object*>((_DWORD *)a2 + 3, &v5);
  }
  return this;
}


// ===== 76b8b0 gameswf::as_object::create_proto(gameswf::as_value const&) =====
int __fastcall gameswf::as_object::create_proto(gameswf::as_object *this, const gameswf::as_value *a2)
{
  gameswf::as_object *v2; // r11
  gameswf::player *v3; // r4
  gameswf::ref_counted **v5; // r7
  _BYTE *v6; // r0
  gameswf::as_object *v7; // r6
  int v8; // r6
  _DWORD *v9; // r4
  _DWORD *v10; // r0
  bool v11; // zf
  int v13; // r7
  void (__fastcall *v14)(int, _BYTE *, char *); // r4
  int v15; // r4
  int v16; // r2
  int *v17; // r10
  int v18; // r8
  int v19; // r10
  int *v20; // r1
  int v21; // r1
  int v22; // r3
  int v23; // r1
  _BYTE v25[12]; // [sp+10h] [bp-44h] BYREF
  char v26; // [sp+1Ch] [bp-38h] BYREF
  char v27; // [sp+1Dh] [bp-37h]
  char v28; // [sp+28h] [bp-2Ch] BYREF
  char v29; // [sp+29h] [bp-2Bh]
  gameswf::as_object *v30; // [sp+2Ch] [bp-28h]
  int *v31; // [sp+34h] [bp-20h] BYREF
  _BYTE v32[8]; // [sp+38h] [bp-1Ch] BYREF
  void *p; // [sp+44h] [bp-10h]

  v3 = *((gameswf::player **)this + 12);
  v5 = (gameswf::ref_counted **)((char *)this + 40);
  if ( v3 )
  {
    v6 = *((_BYTE **)this + 11);
    if ( !v6[4] )
    {
      v11 = (*(_DWORD *)v6)-- == 1;
      if ( v11 )
        gameswf::free_internal(v6);
      v3 = nullptr;
      *((_DWORD *)this + 11) = 0;
      *((_DWORD *)this + 12) = 0;
    }
  }
  v7 = (gameswf::as_object *)operator new(0x38u, 0);
  gameswf::as_object::as_object(v7, v3);
  gameswf::smart_ptr<gameswf::as_object>::set_ref(v5, v7);
  v8 = *((_DWORD *)this + 10);
  v9 = *((_DWORD **)this + 8);
  v10 = *(_DWORD **)(v8 + 32);
  if ( v9 != v10 )
  {
    if ( v10 )
    {
      v11 = (*v10)-- == 1;
      if ( v11 )
        gameswf::free_internal(v10);
    }
    *(_DWORD *)(v8 + 32) = v9;
    if ( v9 )
      ++*v9;
  }
  *(_DWORD *)(v8 + 36) = *((_DWORD *)this + 9);
  if ( *((_BYTE *)a2 + 1) == 5 )
  {
    v13 = *((_DWORD *)a2 + 1);
    if ( v13 )
    {
      v29 = 0;
      v28 = 0;
      v14 = *(void (__fastcall **)(int, _BYTE *, char *))(*(_DWORD *)v13 + 32);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v32, "prototype");
      v14(v13, v32, &v28);
      if ( v32[0] == -1 )
        gameswf::free_internal(p);
      v15 = 0;
      if ( v29 == 5 )
        v2 = v30;
      v31 = nullptr;
      if ( v29 != 5 )
        v2 = nullptr;
      gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::operator=(
        &v31,
        (int **)this + 3);
      (*(void (__fastcall **)(gameswf::as_object *, gameswf::as_object *))(*(_DWORD *)v2 + 72))(v2, this);
      if ( v31 )
      {
        v16 = v31[1];
        if ( v16 >= 0 )
        {
          v23 = 2;
          do
          {
            if ( v31[v23] != -2 && v31[v23 + 1] != -1 )
              break;
            ++v15;
            v23 += 10;
          }
          while ( v15 <= v16 );
        }
        if ( &v31 )
        {
          v17 = v31;
LABEL_26:
          v18 = 2 * (5 * v15 + 1);
          while ( v17 && v15 <= v17[1] )
          {
            v26 = 0;
            v27 = 0;
            v19 = (int)&v17[v18 + 2];
            if ( (*(int (__fastcall **)(gameswf::as_object *, int, char *))(*(_DWORD *)this + 32))(this, v19, &v26) )
            {
              if ( v27 != 6 )
              {
                v20 = &v31[v18];
LABEL_32:
                if ( gameswf::as_value::operator!=(&v26, v20 + 7) )
                  (*(void (__fastcall **)(gameswf::as_object *, int, int *))(*(_DWORD *)this + 28))(
                    this,
                    v19,
                    &v31[v18 + 7]);
                goto LABEL_34;
              }
              v20 = &v31[v18];
              if ( BYTE1(v31[v18 + 7]) == 6 )
                goto LABEL_32;
              gameswf::as_value::set_property((gameswf::as_value *)&v26, (const gameswf::as_value *)(v20 + 7));
            }
LABEL_34:
            gameswf::as_value::drop_refs((gameswf::as_value *)&v26);
            v17 = v31;
            v21 = v31[1];
            if ( v15 <= v21 )
            {
              if ( ++v15 <= v21 )
              {
                v22 = 2 * (5 * v15 + 1);
                do
                {
                  if ( v31[v22] != -2 && v31[v22 + 1] != -1 )
                    break;
                  ++v15;
                  v22 += 10;
                }
                while ( v15 <= v21 );
              }
              goto LABEL_26;
            }
          }
        }
      }
      v25[1] = 0;
      v25[0] = 0;
      if ( gameswf::as_object::get_ctor(v2, (gameswf::as_value *)v25) )
        gameswf::as_object::set_ctor(*((gameswf::as_object **)this + 10), (const gameswf::as_value *)v25);
      gameswf::as_value::drop_refs((gameswf::as_value *)v25);
      gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(&v31);
      gameswf::as_value::drop_refs((gameswf::as_value *)&v28);
    }
  }
  gameswf::as_object::set_ctor(this, a2);
  return *((_DWORD *)this + 10);
}


// ===== 76bc68 gameswf::as_global_object_ctor(gameswf::fn_call const&) =====
int __fastcall gameswf::as_global_object_ctor(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r4
  gameswf::as_value *v3; // r6
  gameswf::player *v4; // r5
  _BYTE *v5; // r0
  gameswf::as_object *v6; // r4

  v2 = *((_DWORD *)this + 3);
  v3 = *(gameswf::as_value **)this;
  v4 = *(gameswf::player **)(v2 + 104);
  if ( v4 )
  {
    v5 = *(_BYTE **)(v2 + 100);
    if ( !v5[4] )
    {
      if ( (*(_DWORD *)v5)-- == 1 )
        gameswf::free_internal(v5);
      v4 = nullptr;
      *(_DWORD *)(v2 + 104) = 0;
      *(_DWORD *)(v2 + 100) = 0;
    }
  }
  v6 = (gameswf::as_object *)operator new(0x38u, 0);
  gameswf::as_object::as_object(v6, v4);
  return gameswf::as_value::set_as_object(v3, v6);
}


// ===== 76bce0 gameswf::as_object::as_object(gameswf::player *) =====
gameswf::as_object *__fastcall gameswf::as_object::as_object(gameswf::as_object *this, gameswf::player *a2)
{
  gameswf::ref_counted *v5; // [sp+4h] [bp-8h] BYREF

  gameswf::ref_counted::ref_counted(this);
  *((_DWORD *)this + 3) = 0;
  *((_BYTE *)this + 16) = 0;
  *(_DWORD *)this = off_990110;
  *((_BYTE *)this + 17) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  gameswf::weak_ptr<gameswf::player>::operator=((int)this + 44, a2);
  *((_DWORD *)this + 13) = 0;
  if ( a2 )
  {
    v5 = this;
    gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::push_back<gameswf::as_object*>((_DWORD *)a2 + 3, &v5);
  }
  return this;
}


// ===== 76bd70 gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(gameswf::tu_stringi const&) =====
int __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(
        int *a1,
        _DWORD *a2)
{
  char *v2; // r4
  int v3; // r3
  int v6; // r4
  int v8; // r12
  int v9; // r7
  int v10; // r2
  int v11; // r8
  int v12; // r1
  int v13; // r8
  int v14; // r3
  const char *v15; // r0
  const char *v16; // r1
  int v17; // r3
  bool v18; // zf
  int v19; // r3
  int v20; // r2
  char *v21; // r3
  int v22; // r2
  int v23; // r1
  int v24; // r2

  v3 = *a1;
  if ( !*a1 )
    return -1;
  v8 = a2[4];
  if ( (v8 & 0xFFFFFF) == 0xFFFFFF )
  {
    v17 = *(char *)a2;
    v18 = v17 == -1;
    if ( v17 == -1 )
    {
      v19 = a2[1];
    }
    else
    {
      v19 = v17 - 1;
      v2 = (char *)a2 + 1;
    }
    if ( v18 )
    {
      --v19;
      v2 = (char *)a2[3];
    }
    if ( v19 > 0 )
    {
      v21 = &v2[v19];
      v22 = 5381;
      do
      {
        v23 = (unsigned __int8)*--v21;
        v24 = 33 * v22;
        if ( (unsigned __int8)(v23 - 65) <= 0x19u )
          v23 += 32;
        v22 = v23 ^ v24;
      }
      while ( v21 != v2 );
      v20 = v22 << 8 >> 8;
      v9 = v20;
    }
    else
    {
      v9 = 5381;
      v20 = 5381;
    }
    a2[4] = v8 & 0xFF000000 | v20 & 0xFFFFFF;
    v3 = *a1;
  }
  else
  {
    v9 = v8 << 8 >> 8;
  }
  v10 = *(_DWORD *)(v3 + 4);
  if ( v9 == -1 )
    v9 = -32769;
  v6 = v9 & v10;
  v11 = 44 * (v9 & v10) + 8;
  v12 = *(_DWORD *)(v3 + v11);
  v13 = v3 + v11;
  if ( v12 == -2 )
    return -1;
  v14 = *(_DWORD *)(v13 + 4);
  if ( v14 != -1 && (v10 & v14) != v6 )
    return -1;
  while ( 1 )
  {
    if ( v9 == v14 )
    {
      if ( a2 == (_DWORD *)(v13 + 8) )
        break;
      v15 = *(char *)(v13 + 8) == -1 ? *(const char **)(v13 + 20) : (const char *)(v13 + 9);
      v16 = *(char *)a2 == -1 ? (const char *)a2[3] : (char *)a2 + 1;
      if ( !gameswf::tu_string::stricmp(v15, v16) )
        break;
    }
    v6 = *(_DWORD *)v13;
    if ( *(_DWORD *)v13 == -1 )
      break;
    v13 = *a1 + 44 * v6 + 8;
    v14 = *(_DWORD *)(v13 + 4);
  }
  return v6;
}


// ===== 76bed4 gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::get(gameswf::tu_stringi const&,gameswf::as_object::as_watch*) =====
int __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::get(
        int *a1,
        _DWORD *a2,
        _DWORD *a3)
{
  int index; // r0

  index = gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(
            a1,
            a2);
  if ( index < 0 )
    return 0;
  if ( a3 )
  {
    *a3 = *(_DWORD *)(*a1 + 44 * index + 8 + 28);
    gameswf::as_value::operator=((gameswf::as_value *)(a3 + 1));
  }
  return 1;
}


// ===== 76bf34 gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::erase(gameswf::tu_stringi const&) =====
int *__fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::erase(
        int *a1,
        _DWORD *a2)
{
  int *result; // r0
  int *v4[2]; // [sp+0h] [bp-8h] BYREF

  result = (int *)gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(
                    a1,
                    a2);
  if ( (int)result >= 0 )
  {
    v4[0] = a1;
    v4[1] = result;
    if ( a1 )
    {
      if ( *a1 )
      {
        if ( (int)result <= *(_DWORD *)(*a1 + 4) )
          return (int *)gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::erase(
                          (int)a1,
                          v4);
      }
    }
  }
  return result;
}


// ===== 76bf8c gameswf::as_object::unwatch(gameswf::tu_string const&) =====
int __fastcall gameswf::as_object::unwatch(gameswf::as_object *this, const gameswf::tu_string *a2)
{
  int *v2; // r10
  int *v5; // r7
  int v7; // [sp+4h] [bp-3Ch] BYREF
  _BYTE v8[12]; // [sp+8h] [bp-38h] BYREF
  void *v9[5]; // [sp+14h] [bp-2Ch] BYREF
  void *v10[5]; // [sp+28h] [bp-18h] BYREF

  v2 = *((int **)this + 7);
  if ( !v2 )
    return (int)v2;
  v8[1] = 0;
  v7 = 0;
  v8[0] = 0;
  gameswf::tu_string::tu_string((gameswf::tu_string *)v10, a2);
  v2 = (int *)gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::get(
                v2,
                v10,
                &v7);
  if ( SLOBYTE(v10[0]) == -1 )
    gameswf::free_internal(v10[3]);
  if ( !v2 )
  {
    gameswf::as_value::drop_refs((gameswf::as_value *)v8);
    return (int)v2;
  }
  v5 = *((int **)this + 7);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v9, a2);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::erase(
    v5,
    v9);
  if ( SLOBYTE(v9[0]) == -1 )
    gameswf::free_internal(v9[3]);
  gameswf::as_value::drop_refs((gameswf::as_value *)v8);
  return 1;
}


// ===== 76c098 gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set(gameswf::tu_stringi const&,gameswf::as_object::as_watch const&) =====
int __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set(
        int *a1,
        const gameswf::tu_string *a2,
        int *a3)
{
  int index; // r0
  int v7; // r0

  index = gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(
            a1,
            a2);
  if ( index < 0 )
    return gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
             (_DWORD **)a1,
             a2,
             a3);
  v7 = *a1 + 44 * index + 8;
  *(_DWORD *)(v7 + 28) = *a3;
  return gameswf::as_value::operator=((gameswf::as_value *)(v7 + 32));
}


// ===== 76c0f4 gameswf::as_object::watch(gameswf::tu_string const&,gameswf::as_function *,gameswf::as_value const&) =====
int __fastcall gameswf::as_object::watch(
        gameswf::as_object *this,
        const gameswf::tu_string *a2,
        gameswf::as_function *a3,
        const gameswf::as_value *a4)
{
  int *v7; // r10
  int *v8; // r0
  gameswf::as_function *v9; // [sp+0h] [bp-28h] BYREF
  _BYTE v10[12]; // [sp+4h] [bp-24h] BYREF
  _BYTE v11[8]; // [sp+10h] [bp-18h] BYREF
  void *p; // [sp+1Ch] [bp-Ch]

  if ( !a3 )
    return 0;
  v9 = a3;
  v10[0] = 0;
  v10[1] = 0;
  gameswf::as_value::operator=((gameswf::as_value *)v10);
  v7 = *((int **)this + 7);
  if ( !v7 )
  {
    v8 = (int *)operator new(4u, *((_DWORD *)this + 7));
    *v8 = 0;
    v7 = v8;
    *((_DWORD *)this + 7) = v8;
  }
  gameswf::tu_string::tu_string((gameswf::tu_string *)v11, a2);
  gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set(
    v7,
    (const gameswf::tu_string *)v11,
    (int *)&v9);
  if ( v11[0] == -1 )
    gameswf::free_internal(p);
  gameswf::as_value::drop_refs((gameswf::as_value *)v10);
  return 1;
}


// ===== 76c1e0 gameswf::as_object::set_member(gameswf::tu_stringi const&,gameswf::as_value const&) =====
int __fastcall gameswf::as_object::set_member(int *a1, char *a2, const gameswf::as_value *a3)
{
  int *v3; // r10
  int index; // r0
  int v8; // r6
  int v9; // r3
  int v10; // r9
  int *v11; // r0
  gameswf::ref_counted *v12; // r1
  _BYTE *v13; // r0
  const char *v14; // r3
  void (__fastcall *v15)(gameswf::as_value *, _DWORD *); // r1
  char *v16; // r12
  int *v17; // r1
  int v18; // r0
  int v20; // r1
  gameswf::as_value *v21; // [sp+4h] [bp-E8h]
  int *v22; // [sp+10h] [bp-DCh]
  void (__fastcall *v23)(gameswf::as_value *, _DWORD *); // [sp+14h] [bp-D8h]
  _DWORD v24[27]; // [sp+1Ch] [bp-D0h] BYREF
  _DWORD v25[7]; // [sp+88h] [bp-64h] BYREF
  gameswf::as_value *v26; // [sp+A4h] [bp-48h] BYREF
  _BYTE v27[12]; // [sp+A8h] [bp-44h] BYREF
  char v28; // [sp+B4h] [bp-38h] BYREF
  char v29; // [sp+B5h] [bp-37h]
  int *v30; // [sp+B8h] [bp-34h]
  char v31; // [sp+C0h] [bp-2Ch] BYREF
  char v32; // [sp+C1h] [bp-2Bh]
  char v33; // [sp+CCh] [bp-20h] BYREF
  char v34; // [sp+CDh] [bp-1Fh]
  _BYTE v35[12]; // [sp+D8h] [bp-14h] BYREF
  const char *v36; // [sp+E4h] [bp-8h] BYREF

  v3 = a1 + 3;
  index = gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(
            a1 + 3,
            a2);
  v8 = index;
  if ( index < 0 )
  {
    v8 = 0;
    v22 = nullptr;
LABEL_7:
    v10 = 0;
LABEL_8:
    if ( a1[7] )
    {
      if ( v10 )
      {
        v34 = 0;
        v33 = 0;
        gameswf::as_value::operator=((gameswf::as_value *)&v33);
      }
      else
      {
        v33 = 0;
        v34 = 0;
      }
      v31 = 0;
      v32 = 0;
      gameswf::as_value::operator=((gameswf::as_value *)&v31);
      v11 = (int *)a1[7];
      v27[1] = 0;
      v26 = nullptr;
      v27[0] = 0;
      gameswf::hash<gameswf::tu_stringi,gameswf::as_object::as_watch,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::get(
        v11,
        a2,
        &v26);
      if ( v26 )
      {
        v12 = (gameswf::ref_counted *)a1[12];
        if ( v12 )
        {
          v13 = (_BYTE *)a1[11];
          if ( !v13[4] )
          {
            v20 = *(_DWORD *)v13 - 1;
            *(_DWORD *)v13 = v20;
            if ( !v20 )
              gameswf::free_internal(v13);
            v12 = nullptr;
            a1[11] = 0;
            a1[12] = 0;
          }
        }
        gameswf::as_environment::as_environment((int)v24, v12);
        gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(v24);
        gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(v24);
        gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(v24);
        if ( *a2 == -1 )
          v14 = *((const char **)a2 + 3);
        else
          v14 = a2 + 1;
        v36 = v14;
        gameswf::array<gameswf::as_value>::push_back<char const*>(v24, &v36);
        gameswf::as_value::drop_refs((gameswf::as_value *)&v31);
        v32 = 0;
        v15 = *(void (__fastcall **)(gameswf::as_value *, _DWORD *))(*(_DWORD *)v26 + 100);
        v28 = 0;
        v23 = v15;
        v29 = 5;
        v21 = v26;
        v30 = a1;
        gameswf::ref_counted::add_ref((int)a1);
        if ( *a2 == -1 )
          v16 = *((char **)a2 + 3);
        else
          v16 = a2 + 1;
        v25[5] = v24[1] - 1;
        if ( v29 == 5 )
          v17 = v30;
        else
          v17 = nullptr;
        v25[4] = 4;
        v25[6] = v16;
        v25[2] = &v28;
        v25[1] = v17;
        v25[0] = &v31;
        v25[3] = v24;
        v23(v21, v25);
        gameswf::as_value::drop_refs((gameswf::as_value *)&v28);
        gameswf::as_environment::~as_environment((gameswf::as_environment *)v24);
      }
      gameswf::as_value::drop_refs((gameswf::as_value *)v27);
      gameswf::as_value::drop_refs((gameswf::as_value *)&v31);
      gameswf::as_value::drop_refs((gameswf::as_value *)&v33);
    }
    (*(void (__fastcall **)(int *, char *, const gameswf::as_value *))(*a1 + 96))(a1, a2, a3);
    if ( v10 )
    {
      v18 = *v22 + 8 * (5 * v8 + 1);
      if ( (*(_BYTE *)(v18 + 28) & 4) == 0 )
        gameswf::as_value::operator=((gameswf::as_value *)(v18 + 28));
    }
    else
    {
      gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set(
        v3,
        (const gameswf::tu_string *)a2,
        (int)a3);
    }
    return 1;
  }
  if ( !v3 || (v9 = a1[3]) == 0 || index > *(_DWORD *)(v9 + 4) )
  {
    v22 = v3;
    goto LABEL_7;
  }
  if ( *(_BYTE *)(v9 + 40 * index + 37) != 6 )
  {
    v22 = v3;
    v10 = 1;
    goto LABEL_8;
  }
  v35[1] = 0;
  v35[0] = 0;
  if ( (*(int (__fastcall **)(int *, char *, _BYTE *))(*a1 + 32))(a1, a2, v35) )
    gameswf::as_value::set_property((gameswf::as_value *)v35, a3);
  gameswf::as_value::drop_refs((gameswf::as_value *)v35);
  return 1;
}


// ===== 76c518 gameswf::as_object::this_alive(void) =====
void __fastcall gameswf::as_object::this_alive(gameswf::as_object *this)
{
  int v1; // r3
  _BYTE *v3; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r1
  int i; // r4
  char *v8; // r10
  int v9; // r3
  int v10; // r3
  int v11; // r0
  int v12; // r12
  bool v13; // zf
  int v14; // r3
  int v15; // r2
  int v16; // r7
  int v17; // r12
  int v18; // r3
  int v19; // r1
  int v20; // r0
  _DWORD *v21; // r6
  int v22; // r3
  _BYTE *v23; // r0

  v1 = *((_DWORD *)this + 12);
  if ( v1 )
  {
    v3 = *((_BYTE **)this + 11);
    if ( v3[4] )
    {
      v4 = *(_DWORD *)(v1 + 48);
      if ( *((_DWORD *)this + 13) != v4 )
      {
        v5 = *((_DWORD *)this + 3);
        *((_DWORD *)this + 13) = v4;
        if ( v5 )
        {
          v6 = *(_DWORD *)(v5 + 4);
          if ( v6 >= 0 )
          {
            v10 = 8;
            for ( i = 0; i <= v6; ++i )
            {
              v11 = *(_DWORD *)(v5 + v10);
              v12 = v5 + v10;
              v10 += 40;
              if ( v11 != -2 && *(_DWORD *)(v12 + 4) != -1 )
                break;
            }
          }
          else
          {
            i = 0;
          }
          v8 = (char *)this + 12;
          if ( this != (gameswf::as_object *)-12 )
          {
            v15 = *(_DWORD *)v8;
LABEL_25:
            v16 = 8 * (5 * i + 1);
            while ( v15 )
            {
              v17 = *(_DWORD *)(v15 + 4);
              if ( i > v17 )
                break;
              if ( *(_BYTE *)(v15 + v16 + 29) == 5 )
              {
                v21 = *(_DWORD **)(v15 + v16 + 32);
                if ( v21 )
                {
                  v22 = *((_DWORD *)this + 12);
                  if ( v22 )
                  {
                    v23 = *((_BYTE **)this + 11);
                    if ( !v23[4] )
                    {
                      v13 = (*(_DWORD *)v23)-- == 1;
                      if ( v13 )
                        gameswf::free_internal(v23);
                      *((_DWORD *)this + 11) = 0;
                      *((_DWORD *)this + 12) = 0;
                      v22 = 0;
                    }
                  }
                  if ( v21[13] != *(_DWORD *)(v22 + 48) )
                    (*(void (__fastcall **)(_DWORD *))(*v21 + 68))(v21);
                  v15 = *(_DWORD *)v8;
                  v17 = *(_DWORD *)(*(_DWORD *)v8 + 4);
                  if ( i > v17 )
                    continue;
                }
              }
              if ( ++i <= v17 )
              {
                v18 = 8 * (5 * i + 1);
                do
                {
                  v19 = *(_DWORD *)(v15 + v18);
                  v20 = v15 + v18;
                  v18 += 40;
                  if ( v19 != -2 && *(_DWORD *)(v20 + 4) != -1 )
                    break;
                  ++i;
                }
                while ( v17 >= i );
              }
              goto LABEL_25;
            }
          }
        }
        v9 = *((_DWORD *)this + 10);
        if ( v9 )
          (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v9 + 68))(*((_DWORD *)this + 10));
        if ( *((_BYTE *)this + 17) == 5 )
        {
          v14 = *((_DWORD *)this + 5);
          if ( v14 )
            (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v14 + 68))(*((_DWORD *)this + 5));
        }
      }
    }
    else
    {
      v13 = (*(_DWORD *)v3)-- == 1;
      if ( v13 )
        gameswf::free_internal(v3);
      *((_DWORD *)this + 12) = 0;
      *((_DWORD *)this + 11) = 0;
    }
  }
}


// ===== 76c728 gameswf::as_stage::is(int) =====
bool __fastcall gameswf::as_stage::is(gameswf::as_stage *this, int a2)
{
  return a2 == 21 || a2 == 0;
}


// ===== 76c740 gameswf::register_file_opener_callback(gameswf::tu_file * (*)(char const*)) =====
void *__fastcall gameswf::register_file_opener_callback(void *result)
{
  gameswf::s_opener_function = result;
  return result;
}


// ===== 76c754 gameswf::set_use_cache_files(bool) =====
char __fastcall gameswf::set_use_cache_files(char this, bool a2)
{
  gameswf::s_use_cache_files = this;
  return this;
}


// ===== 76c768 gameswf::get_standard_property_map(void) =====
int *__fastcall gameswf::get_standard_property_map(gameswf *this)
{
  return &gameswf::s_standard_property_map;
}


// ===== 76c77c gameswf::get_gameswf_version(void) =====
void *__fastcall gameswf::get_gameswf_version(gameswf *this)
{
  if ( gameswf::s_gameswf_version == -1 )
    return (void *)dword_9FC798;
  else
    return &unk_9FC78D;
}


// ===== 76c79c gameswf::get_shared_libs(void) =====
int *__fastcall gameswf::get_shared_libs(gameswf *this)
{
  return &gameswf::s_shared_libs;
}


// ===== 76c7b0 gameswf::get_fscommand_callback(void) =====
int __fastcall gameswf::get_fscommand_callback(gameswf *this)
{
  return gameswf::s_fscommand_handler;
}


// ===== 76c7c4 gameswf::register_fscommand_callback(void (*)(gameswf::character *,char const*,char const*)) =====
int __fastcall gameswf::register_fscommand_callback(
        int this,
        void (*a2)(gameswf::character *, const char *, const char *))
{
  gameswf::s_fscommand_handler = this;
  return this;
}


// ===== 76c7d8 gameswf::player::action_clear(void) =====
void __fastcall gameswf::player::action_clear(gameswf::player *this)
{
  ;
}


// ===== 76c7dc gameswf::player::get_global(void) =====
int __fastcall gameswf::player::get_global(gameswf::player *this)
{
  return *((_DWORD *)this + 13);
}


// ===== 76c7e4 gameswf::player::get_stage(void) =====
int __fastcall gameswf::player::get_stage(gameswf::player *this)
{
  return *((_DWORD *)this + 14);
}


// ===== 76c7ec gameswf::player::get_workdir(void) =====
char *__fastcall gameswf::player::get_workdir(gameswf::player *this)
{
  if ( *((char *)this + 80) == -1 )
    return *((char **)this + 23);
  else
    return (char *)this + 81;
}


// ===== 76c800 gameswf::player::get_chardef_library(void) =====
char *__fastcall gameswf::player::get_chardef_library(gameswf::player *this)
{
  return (char *)this + 100;
}


// ===== 76c808 gameswf::player::set_as_garbage(void) =====
int __fastcall gameswf::player::set_as_garbage(int this)
{
  ++*(_DWORD *)(this + 48);
  return this;
}


// ===== 76c818 gameswf::tu_string::operator=(char const*) =====
char *__fastcall gameswf::tu_string::operator=(char *result, const char *a2)
{
  char *v3; // r4
  size_t v4; // r0
  char *v5; // r0

  v3 = result;
  if ( a2 )
  {
    v4 = LC_API_STRLEN_0(a2);
    gameswf::tu_string::resize((gameswf::tu_string *)v3, v4);
    if ( *v3 == -1 )
      v5 = *((char **)v3 + 3);
    else
      v5 = v3 + 1;
    result = LC_API_STRCPY_0(v5, a2);
    *((_DWORD *)v3 + 4) = *((_DWORD *)v3 + 4) & 0xFF000000 | 0xFFFFFF;
  }
  return result;
}


// ===== 76c868 gameswf::player::set_workdir(char const*) =====
char *__fastcall gameswf::player::set_workdir(gameswf::player *this, const char *a2)
{
  return gameswf::tu_string::operator=((char *)this + 80, a2);
}


// ===== 76c870 gameswf::destruct<gameswf::permanent_string>(gameswf::permanent_string const*) =====
void __fastcall gameswf::destruct<gameswf::permanent_string>(void **a1)
{
  if ( a1 )
  {
    if ( *(char *)a1 == -1 )
      gameswf::free_internal(a1[3]);
    gameswf::free_internal(a1);
  }
}


// ===== 76c8ac gameswf::permanent_string_cache::clear(void) =====
void __fastcall gameswf::permanent_string_cache::clear(gameswf::permanent_string_cache *this)
{
  int v1; // r2
  int v3; // r1
  int i; // r4
  int v5; // r3
  int v6; // r0
  int v7; // r12
  int v8; // r1
  int v9; // r3
  int v10; // r0
  int v11; // r12

  v1 = *(_DWORD *)this;
  if ( *(_DWORD *)this )
  {
    v3 = *(_DWORD *)(v1 + 4);
    if ( v3 >= 0 )
    {
      v5 = 8;
      for ( i = 0; i <= v3; ++i )
      {
        v6 = *(_DWORD *)(v1 + v5);
        v7 = v1 + v5;
        v5 += 16;
        if ( v6 != -2 && *(_DWORD *)(v7 + 4) != -1 )
          break;
      }
    }
    else
    {
      i = 0;
    }
    if ( this )
    {
      while ( v1 )
      {
        if ( i > *(_DWORD *)(v1 + 4) )
          break;
        gameswf::destruct<gameswf::permanent_string>(*(void ***)(v1 + 16 * i + 20));
        v1 = *(_DWORD *)this;
        v8 = *(_DWORD *)(*(_DWORD *)this + 4);
        if ( i > v8 )
          break;
        if ( v8 >= ++i )
        {
          v9 = 16 * i + 8;
          do
          {
            v10 = *(_DWORD *)(v1 + v9);
            v11 = v1 + v9;
            v9 += 16;
            if ( v10 != -2 && *(_DWORD *)(v11 + 4) != -1 )
              break;
            ++i;
          }
          while ( v8 >= i );
        }
      }
    }
  }
  gameswf::hash<gameswf::string_pointer,gameswf::permanent_string *,gameswf::string_pointer_hash_functor<gameswf::string_pointer>>::clear((_DWORD **)this);
}


// ===== 76c990 gameswf::permanent_string_cache::~permanent_string_cache() =====
void __fastcall gameswf::permanent_string_cache::~permanent_string_cache(gameswf::permanent_string_cache *this)
{
  gameswf::permanent_string_cache::clear(this);
  gameswf::hash<gameswf::string_pointer,gameswf::permanent_string *,gameswf::string_pointer_hash_functor<gameswf::string_pointer>>::clear((_DWORD **)this);
}


// ===== 76c9ac gameswf::destruct<gameswf::bitmap_glyph_provider>(gameswf::bitmap_glyph_provider const*) =====
void __fastcall gameswf::destruct<gameswf::bitmap_glyph_provider>(void (__fastcall ***a1)(_DWORD))
{
  if ( a1 )
  {
    (**a1)(a1);
    gameswf::free_internal(a1);
  }
}


// ===== 76c9d8 gameswf::player::clear_unused_instances(void) =====
void __fastcall gameswf::player::clear_unused_instances(gameswf::player *this)
{
  gameswf::array<gameswf::smart_ptr<gameswf::character>>::resize((_DWORD *)this + 44, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::character>>::resize((_DWORD *)this + 48, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::character>>::resize((_DWORD *)this + 52, 0);
}


// ===== 76ca08 gameswf::array<gameswf::player *>::reserve(int) =====
void __fastcall gameswf::array<gameswf::player *>::reserve(int a1, int a2)
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


// ===== 76ca84 gameswf::smart_ptr<gameswf::edit_text_character_def>::set_ref(gameswf::edit_text_character_def*) =====
void __fastcall gameswf::smart_ptr<gameswf::edit_text_character_def>::set_ref(
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


// ===== 76cac4 gameswf::smart_ptr<gameswf::movie_definition_sub>::set_ref(gameswf::movie_definition_sub*) =====
void __fastcall gameswf::smart_ptr<gameswf::movie_definition_sub>::set_ref(
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


// ===== 76cb04 gameswf::new_standard_method_map(gameswf::builtin_object) =====
_DWORD *__fastcall gameswf::new_standard_method_map(int a1)
{
  _UNKNOWN **v1; // r4
  _DWORD *result; // r0

  v1 = &gameswf::s_opener_function + a1;
  result = v1[10];
  if ( !result )
  {
    result = operator new(4u, 0);
    *result = 0;
    v1[10] = result;
  }
  return result;
}


// ===== 76cb44 gameswf::player::create_edit_text_character(gameswf::edit_text_character_def *,gameswf::character *,int) =====
gameswf::ref_counted **__fastcall gameswf::player::create_edit_text_character(
        gameswf::player *this,
        gameswf::edit_text_character_def *a2,
        gameswf::character *a3,
        int a4)
{
  int v5; // r0
  gameswf::ref_counted **v9; // r4
  gameswf::ref_counted **v11; // [sp+Ch] [bp-4h] BYREF

  v5 = *((_DWORD *)this + 53);
  if ( v5 <= 0 )
  {
    v9 = (gameswf::ref_counted **)operator new(0x198u, 0);
    gameswf::edit_text_character::edit_text_character((gameswf::edit_text_character *)v9, this, a3, a2, a4);
  }
  else
  {
    v9 = *(gameswf::ref_counted ***)(*((_DWORD *)this + 52) + 4 * (v5 - 1));
    gameswf::smart_ptr<gameswf::edit_text_character_def>::set_ref(v9 + 40, a2);
    (*((void (__fastcall **)(gameswf::ref_counted **, gameswf::character *, int))*v9 + 25))(v9, a3, a4);
    if ( v9[1] == (gameswf::ref_counted *)((char *)&dword_0 + 1) )
    {
      v11 = v9;
      gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::push_back<gameswf::as_object*>(
        (_DWORD *)this + 3,
        (gameswf::ref_counted **)&v11);
    }
    v9[13] = *((gameswf::ref_counted **)this + 12);
    gameswf::array<gameswf::smart_ptr<gameswf::character>>::resize((_DWORD *)this + 52, *((_DWORD *)this + 53) - 1);
  }
  return v9;
}


// ===== 76cc00 gameswf::player::create_generic_character(gameswf::character_def *,gameswf::character *,int) =====
gameswf::ref_counted **__fastcall gameswf::player::create_generic_character(
        gameswf::player *this,
        gameswf::character_def *a2,
        gameswf::character *a3,
        int a4)
{
  int v5; // r0
  gameswf::ref_counted **v9; // r4
  gameswf::ref_counted **v11; // [sp+Ch] [bp-4h] BYREF

  v5 = *((_DWORD *)this + 49);
  if ( v5 <= 0 )
  {
    v9 = (gameswf::ref_counted **)operator new(0xA4u, 0);
    gameswf::generic_character::generic_character((gameswf::generic_character *)v9, this, a2, a3, a4);
  }
  else
  {
    v9 = *(gameswf::ref_counted ***)(*((_DWORD *)this + 48) + 4 * (v5 - 1));
    gameswf::smart_ptr<gameswf::character_def>::set_ref(v9 + 40, a2);
    (*((void (__fastcall **)(gameswf::ref_counted **, gameswf::character *, int))*v9 + 25))(v9, a3, a4);
    if ( v9[1] == (gameswf::ref_counted *)((char *)&dword_0 + 1) )
    {
      v11 = v9;
      gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::push_back<gameswf::as_object*>(
        (_DWORD *)this + 3,
        (gameswf::ref_counted **)&v11);
    }
    v9[13] = *((gameswf::ref_counted **)this + 12);
    gameswf::array<gameswf::smart_ptr<gameswf::character>>::resize((_DWORD *)this + 48, *((_DWORD *)this + 49) - 1);
  }
  return v9;
}


// ===== 76ccbc gameswf::as_stage::~as_stage() =====
void __fastcall gameswf::as_stage::~as_stage(gameswf::as_stage *this)
{
  *(_DWORD *)this = off_990180;
  gameswf::as_object::~as_object(this);
}


// ===== 76ccf0 gameswf::player::create_sprite_instance(gameswf::movie_definition_sub *,gameswf::root *,gameswf::character *,int) =====
gameswf::ref_counted **__fastcall gameswf::player::create_sprite_instance(
        gameswf::player *this,
        gameswf::movie_definition_sub *a2,
        gameswf::root *a3,
        gameswf::character *a4,
        int a5)
{
  int v6; // r0
  gameswf::ref_counted **v10; // r4
  gameswf::ref_counted **v12; // [sp+Ch] [bp-8h] BYREF

  v6 = *((_DWORD *)this + 45);
  if ( v6 <= 0 )
  {
    v10 = (gameswf::ref_counted **)operator new(0x100u, 0);
    gameswf::sprite_instance::sprite_instance((gameswf::sprite_instance *)v10, this, a2, a3, a4, a5);
  }
  else
  {
    v10 = *(gameswf::ref_counted ***)(*((_DWORD *)this + 44) + 4 * (v6 - 1));
    v10[41] = a3;
    gameswf::smart_ptr<gameswf::movie_definition_sub>::set_ref(v10 + 40, a2);
    (*((void (__fastcall **)(gameswf::ref_counted **, gameswf::character *, int))*v10 + 25))(v10, a4, a5);
    if ( v10[1] == (gameswf::ref_counted *)((char *)&dword_0 + 1) )
    {
      v12 = v10;
      gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::push_back<gameswf::as_object*>(
        (_DWORD *)this + 3,
        (gameswf::ref_counted **)&v12);
    }
    v10[13] = *((gameswf::ref_counted **)this + 12);
    gameswf::array<gameswf::smart_ptr<gameswf::character>>::resize((_DWORD *)this + 44, *((_DWORD *)this + 45) - 1);
  }
  return v10;
}


// ===== 76cdb4 gameswf::array<gameswf::player *>::remove(int) =====
_DWORD *__fastcall gameswf::array<gameswf::player *>::remove(_DWORD *result, int a2)
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


// ===== 76ce08 gameswf::get_builtin(gameswf::builtin_object,gameswf::tu_stringi const&,gameswf::as_value *) =====
int *__fastcall gameswf::get_builtin(int a1, _DWORD *a2, gameswf::as_value *a3)
{
  int *result; // r0

  result = (int *)*(&gameswf::s_opener_function + a1 + 10);
  if ( result )
    return (int *)gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::get(
                    result,
                    a2,
                    a3);
  return result;
}


// ===== 76ce28 gameswf::player::verbose_parse(bool) =====
int __fastcall gameswf::player::verbose_parse(gameswf::player *this, gameswf *a2)
{
  return gameswf::set_verbose_parse((char)a2, (bool)a2);
}


// ===== 76ce30 gameswf::player::verbose_action(bool) =====
int __fastcall gameswf::player::verbose_action(gameswf::player *this, gameswf *a2)
{
  return gameswf::set_verbose_action((char)a2, (bool)a2);
}


// ===== 76ce38 gameswf::player_context::player_context(void) =====
gameswf::player_context *__fastcall gameswf::player_context::player_context(gameswf::player_context *this)
{
  gameswf::ref_counted::ref_counted(this);
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 3) = 0;
  *(_DWORD *)this = off_990200;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_BYTE *)this + 32) = 0;
  *((_DWORD *)this + 9) = 0;
  return this;
}


// ===== 76ce90 gameswf::player_context::player_context(void) =====
gameswf::player_context *__fastcall gameswf::player_context::player_context(gameswf::player_context *this)
{
  gameswf::ref_counted::ref_counted(this);
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 3) = 0;
  *(_DWORD *)this = off_990200;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_BYTE *)this + 32) = 0;
  *((_DWORD *)this + 9) = 0;
  return this;
}


// ===== 76cee8 gameswf::player_context::~player_context() =====
void __fastcall gameswf::player_context::~player_context(gameswf::player_context *this)
{
  gameswf::glyph_provider *v1; // r5
  void (__fastcall ***v3)(_DWORD); // r0
  int v4; // r3
  int v5; // r2

  v1 = *((gameswf::glyph_provider **)this + 3);
  *(_DWORD *)this = off_990200;
  if ( v1 )
  {
    gameswf::glyph_provider::~glyph_provider(v1);
    gameswf::free_internal(v1);
  }
  v3 = *((void (__fastcall ****)(_DWORD))this + 4);
  if ( v3 )
    gameswf::destruct<gameswf::bitmap_glyph_provider>(v3);
  v4 = *((_DWORD *)this + 6);
  if ( v4 < 0 )
  {
    v5 = 4 * v4;
    do
    {
      ++v4;
      *(_DWORD *)(*((_DWORD *)this + 5) + v5) = 0;
      v5 += 4;
    }
    while ( v4 );
  }
  *((_DWORD *)this + 6) = 0;
  gameswf::array<gameswf::player *>::reserve((int)this + 20, 0);
  gameswf::ref_counted::~ref_counted(this);
}


// ===== 76cf94 `global constructor keyed to'.._.._src_gameswf_gameswf_player.cpp =====
int `global constructor keyed to'.._.._src_gameswf_gameswf_player.cpp()
{
  gameswf::s_static_strings = 0;
  _aeabi_atexit(
    (int)&gameswf::s_static_strings,
    (int)gameswf::permanent_string_cache::~permanent_string_cache,
    (int)&_dso_handle);
  gameswf::s_standard_property_map = 0;
  _aeabi_atexit(
    (int)&gameswf::s_standard_property_map,
    (int)gameswf::stringi_hash<gameswf::as_standard_member>::~stringi_hash,
    (int)&_dso_handle);
  gameswf::tu_string::tu_string((gameswf::tu_string *)&gameswf::s_gameswf_version, "LINUX");
  _aeabi_atexit((int)&gameswf::s_gameswf_version, (int)gameswf::tu_string::~tu_string, (int)&_dso_handle);
  gameswf::s_shared_libs = 0;
  _aeabi_atexit(
    (int)&gameswf::s_shared_libs,
    (int)gameswf::string_hash<gameswf::tu_loadlib *>::~string_hash,
    (int)&_dso_handle);
  gameswf::tu_string::tu_string((gameswf::tu_string *)&gameswf::s_property_names, "_x");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_9FC7E0, "_y");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_9FC7F4, "_xscale");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_9FC808, "_yscale");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_9FC81C, "_currentframe");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_9FC830, "_totalframes");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_9FC844, "_alpha");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_9FC858, "_visible");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_9FC86C, "_width");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_9FC880, "_height");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_9FC894, "_rotation");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_9FC8A8, "_target");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_9FC8BC, "_framesloaded");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_9FC8D0, "_name");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_9FC8E4, "_droptarget");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_9FC8F8, "_url");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_9FC90C, "_highquality");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_9FC920, "_focusrect");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_9FC934, "_soundbuftime");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_9FC948, "@@ mystery");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_9FC95C, "_xmouse");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_9FC970, "_ymouse");
  return _aeabi_atexit(0, (int)_tcf_0_2, (int)&_dso_handle);
}


// ===== 76d218 gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::resize(int) [clone] =====
void __fastcall gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::resize(_DWORD *a1)
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


// ===== 76d288 gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::remove(int) =====
void __fastcall gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::remove(int *a1, int a2)
{
  int v2; // r3
  int v5; // r2
  int v6; // r6
  void (__fastcall ***v7)(_DWORD); // r1
  void *v8; // r0

  v2 = a1[1];
  if ( v2 == 1 )
  {
    gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::resize(a1);
  }
  else
  {
    v5 = *a1;
    v6 = 4 * a2;
    v7 = *(void (__fastcall ****)(_DWORD))(*a1 + 4 * a2);
    v8 = (void *)(*a1 + v6);
    if ( v7 )
    {
      gameswf::ref_counted::drop_ref(v7);
      v5 = *a1;
      v2 = a1[1];
      v8 = (void *)(*a1 + v6);
    }
    memmove(v8, (const void *)(v5 + 4 * (a2 + 1)), 4 * (~a2 + v2));
    --a1[1];
  }
}


// ===== 76d2f8 gameswf::player::clear_garbage(void) =====
void __fastcall gameswf::player::clear_garbage(gameswf::player *this)
{
  int global; // r0
  int v3; // r9
  int v4; // r6
  int v5; // r4
  int v6; // r12
  int *v7; // r3
  gameswf::ref_counted **v8; // r8
  int v9; // r0
  _DWORD *v10[2]; // [sp+Ch] [bp-8h] BYREF

  global = gameswf::player::get_global(this);
  (*(void (__fastcall **)(int))(*(_DWORD *)global + 68))(global);
  v3 = *((_DWORD *)this + 4);
  if ( v3 - 1 >= 0 )
  {
    v4 = 0;
    v5 = 4 * (v3 - 1);
    do
    {
      v6 = *((_DWORD *)this + 3);
      ++v4;
      v7 = *(int **)(v6 + v5);
      v8 = (gameswf::ref_counted **)(v6 + v5);
      if ( v7 )
      {
        v9 = *(_DWORD *)(v6 + v5);
        if ( v7[13] != *((_DWORD *)this + 12) )
        {
          if ( v7[1] > 1 )
          {
            v10[0] = nullptr;
            (*(void (__fastcall **)(int, _DWORD **, int))(*v7 + 64))(v9, v10, v9);
            gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>>::clear(v10);
            v6 = *((_DWORD *)this + 3);
            v8 = (gameswf::ref_counted **)(v6 + v5);
          }
          gameswf::smart_ptr<gameswf::as_object>::set_ref(
            v8,
            *(gameswf::ref_counted **)(v6 + 4 * (*((_DWORD *)this + 4) - 1)));
          gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::remove((int *)this + 3, *((_DWORD *)this + 4) - 1);
        }
      }
      v5 -= 4;
    }
    while ( v4 != v3 );
  }
}


// ===== 76d3d0 gameswf::player::clear_heap(void) =====
void __fastcall gameswf::player::clear_heap(gameswf::player *this)
{
  int v1; // r12
  int i; // r4
  int *v4; // r3
  _DWORD *v5[2]; // [sp+4h] [bp-8h] BYREF

  v1 = *((_DWORD *)this + 4);
  if ( v1 > 0 )
  {
    for ( i = 0; i < v1; ++i )
    {
      v4 = *(int **)(*((_DWORD *)this + 3) + 4 * i);
      if ( v4 && v4[1] > 1 )
      {
        v5[0] = nullptr;
        (*(void (__fastcall **)(int *, _DWORD **, int *))(*v4 + 64))(v4, v5, v4);
        gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>>::clear(v5);
        v1 = *((_DWORD *)this + 4);
      }
    }
  }
  gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::resize((_DWORD *)this + 3);
}


// ===== 76d454 gameswf::array<gameswf::blend_mode::id>::reserve(int) [clone] =====
void __fastcall gameswf::array<gameswf::blend_mode::id>::reserve(int a1)
{
  int v1; // r3
  void *v3; // r0

  v1 = *(unsigned __int8 *)(a1 + 12);
  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(void **)a1;
    *(_DWORD *)(a1 + 8) = v1;
    if ( v3 )
      gameswf::free_internal(v3);
    *(_DWORD *)a1 = 0;
  }
}


// ===== 76d490 gameswf::as_stage::~as_stage() =====
void __fastcall gameswf::as_stage::~as_stage(gameswf::as_stage *this)
{
  *(_DWORD *)this = off_990180;
  gameswf::as_object::~as_object(this);
  LC_API_FREE_0(this);
}


// ===== 76d4cc gameswf::player_context::~player_context() =====
void __fastcall gameswf::player_context::~player_context(gameswf::player_context *this)
{
  gameswf::glyph_provider *v1; // r5
  void (__fastcall ***v3)(_DWORD); // r0
  int v4; // r3
  int v5; // r2

  v1 = *((gameswf::glyph_provider **)this + 3);
  *(_DWORD *)this = off_990200;
  if ( v1 )
  {
    gameswf::glyph_provider::~glyph_provider(v1);
    gameswf::free_internal(v1);
  }
  v3 = *((void (__fastcall ****)(_DWORD))this + 4);
  if ( v3 )
    gameswf::destruct<gameswf::bitmap_glyph_provider>(v3);
  v4 = *((_DWORD *)this + 6);
  if ( v4 < 0 )
  {
    v5 = 4 * v4;
    do
    {
      ++v4;
      *(_DWORD *)(*((_DWORD *)this + 5) + v5) = 0;
      v5 += 4;
    }
    while ( v4 );
  }
  *((_DWORD *)this + 6) = 0;
  gameswf::array<gameswf::player *>::reserve((int)this + 20, 0);
  gameswf::ref_counted::~ref_counted(this);
}


// ===== 76d578 gameswf::player_context::~player_context() =====
void __fastcall gameswf::player_context::~player_context(gameswf::player_context *this)
{
  gameswf::player_context::~player_context(this);
  LC_API_FREE_0(this);
}


// ===== 76d594 gameswf::get_static_string(gameswf::tu_string const&) =====
gameswf::tu_string *__fastcall gameswf::get_static_string(gameswf *this, const gameswf::tu_string *a2)
{
  return gameswf::permanent_string_cache::get((char **)&gameswf::s_static_strings, this);
}


// ===== 76d5ac gameswf::player::set_flash_vars(gameswf::tu_string const&) =====
gameswf::tu_string *__fastcall gameswf::player::set_flash_vars(gameswf::player *this, const gameswf::tu_string *a2)
{
  return gameswf::tu_string::operator=((gameswf::player *)((char *)this + 104), (char *)a2);
}


// ===== 76d5b4 gameswf::player::get_root(void) =====
int __fastcall gameswf::player::get_root(gameswf::player *this)
{
  int result; // r0
  _BYTE *v3; // r3

  result = *((_DWORD *)this + 19);
  if ( result )
  {
    v3 = *((_BYTE **)this + 18);
    if ( !v3[4] )
    {
      if ( (*(_DWORD *)v3)-- == 1 )
        gameswf::free_internal(v3);
      *((_DWORD *)this + 19) = 0;
      *((_DWORD *)this + 18) = 0;
      return 0;
    }
  }
  return result;
}


// ===== 76d608 gameswf::player::notify_key_event(gameswf::key::code,bool) =====
int __fastcall gameswf::player::notify_key_event(int a1)
{
  _BYTE *v2; // r2

  if ( *(_DWORD *)(a1 + 76) )
  {
    v2 = *(_BYTE **)(a1 + 72);
    if ( !v2[4] )
    {
      if ( (*(_DWORD *)v2)-- == 1 )
        gameswf::free_internal(v2);
      *(_DWORD *)(a1 + 72) = 0;
      *(_DWORD *)(a1 + 76) = 0;
    }
  }
  return gameswf::root::notify_key_event();
}


// ===== 76d680 gameswf::weak_ptr<gameswf::root>::operator=(gameswf::root*) =====
void __fastcall gameswf::weak_ptr<gameswf::root>::operator=(int a1, gameswf::ref_counted *this)
{
  _DWORD *weak_proxy; // r4
  _DWORD *v4; // r0
  bool v5; // zf
  _DWORD *v6; // r0

  *(_DWORD *)(a1 + 4) = this;
  if ( this )
  {
    weak_proxy = (_DWORD *)gameswf::ref_counted::get_weak_proxy(this);
    v4 = *(_DWORD **)a1;
    if ( weak_proxy != *(_DWORD **)a1 )
    {
      if ( v4 )
      {
        v5 = (*v4)-- == 1;
        if ( v5 )
          gameswf::free_internal(v4);
      }
      *(_DWORD *)a1 = weak_proxy;
      if ( weak_proxy )
        ++*weak_proxy;
    }
  }
  else
  {
    v6 = *(_DWORD **)a1;
    if ( v6 )
    {
      v5 = (*v6)-- == 1;
      if ( v5 )
        gameswf::free_internal(v6);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 76d71c gameswf::player::set_root(gameswf::root *) =====
void __fastcall gameswf::player::set_root(int a1, gameswf::ref_counted *a2)
{
  gameswf::weak_ptr<gameswf::root>::operator=(a1 + 72, a2);
}


// ===== 76d724 gameswf::as_stage::get_member(gameswf::tu_stringi const&,gameswf::as_value *) =====
int __fastcall gameswf::as_stage::get_member(int a1, char *a2, gameswf::as_value *a3)
{
  const char *v5; // r0
  int v7; // r4
  _BYTE *v8; // r0
  int v9; // r3
  _BYTE *v10; // r0
  double v11; // r0
  const char *v13; // r0
  int v14; // r4
  int v15; // r3
  int v16; // r7
  int v17; // r3
  int v18; // r2
  int v19; // r5
  double v20; // r0
  bool v21; // zf

  if ( *a2 == -1 )
    v5 = *((const char **)a2 + 3);
  else
    v5 = a2 + 1;
  if ( !gameswf::tu_string::stricmp(v5, "width") )
  {
    v7 = *(_DWORD *)(a1 + 48);
    if ( v7 && (v8 = *(_BYTE **)(a1 + 44), !v8[4]) )
    {
      v21 = (*(_DWORD *)v8)-- == 1;
      if ( v21 )
        gameswf::free_internal(v8);
      v7 = 0;
      *(_DWORD *)(a1 + 48) = 0;
      *(_DWORD *)(a1 + 44) = 0;
      v9 = 4;
    }
    else
    {
      v9 = *(_DWORD *)(v7 + 76);
      if ( !v9 )
      {
LABEL_9:
        v11 = (double)(*(int (__fastcall **)(int))(*(_DWORD *)v9 + 80))(v9);
        gameswf::as_value::set_double(a3, v11);
        return 1;
      }
    }
    v10 = *(_BYTE **)(v7 + 72);
    if ( !v10[4] )
    {
      v21 = (*(_DWORD *)v10)-- == 1;
      if ( v21 )
        gameswf::free_internal(v10);
      v9 = 0;
      *(_DWORD *)(v7 + 76) = 0;
      *(_DWORD *)(v7 + 72) = 0;
    }
    goto LABEL_9;
  }
  if ( *a2 == -1 )
    v13 = *((const char **)a2 + 3);
  else
    v13 = a2 + 1;
  if ( gameswf::tu_string::stricmp(v13, "height") )
    return 0;
  v14 = *(_DWORD *)(a1 + 48);
  if ( v14 )
  {
    v15 = *(_DWORD *)(a1 + 44);
    v16 = *(unsigned __int8 *)(v15 + 4);
    if ( !*(_BYTE *)(v15 + 4) )
    {
      gameswf::smart_ptr_proxy::operator=((_DWORD **)(a1 + 44), (_DWORD *)*(unsigned __int8 *)(v15 + 4));
      v14 = v16;
      *(_DWORD *)(a1 + 48) = v16;
    }
  }
  v17 = *(_DWORD *)(v14 + 76);
  if ( v17 )
  {
    v18 = *(_DWORD *)(v14 + 72);
    v19 = *(unsigned __int8 *)(v18 + 4);
    if ( !*(_BYTE *)(v18 + 4) )
    {
      gameswf::smart_ptr_proxy::operator=((_DWORD **)(v14 + 72), (_DWORD *)*(unsigned __int8 *)(v18 + 4));
      *(_DWORD *)(v14 + 76) = v19;
      v17 = v19;
    }
  }
  v20 = (double)(*(int (__fastcall **)(int))(*(_DWORD *)v17 + 84))(v17);
  gameswf::as_value::set_double(a3, v20);
  return 1;
}


// ===== 76d8e0 __tcf_0_2 =====
void _tcf_0_2()
{
  char *v0; // r4
  void *v1; // r0

  v0 = (char *)&gameswf::render::s_mask_bound;
  do
  {
    while ( *(v0 - 20) != -1 )
    {
      v0 -= 20;
      if ( v0 == (char *)&gameswf::s_property_names )
        return;
    }
    v1 = *((void **)v0 - 2);
    v0 -= 20;
    gameswf::free_internal(v1);
  }
  while ( v0 != (char *)&gameswf::s_property_names );
}


// ===== 76d930 gameswf::hash<gameswf::tu_string,gameswf::tu_loadlib *,gameswf::string_hash_functor<gameswf::tu_string>>::clear(void) =====
void __fastcall gameswf::hash<gameswf::tu_string,gameswf::tu_loadlib *,gameswf::string_hash_functor<gameswf::tu_string>>::clear(
        _DWORD **a1)
{
  _DWORD *v2; // r0
  int v3; // r7
  int v4; // r5
  int v5; // r4
  _DWORD *v6; // r6

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
          if ( *((char *)v6 + 8) == -1 )
            gameswf::free_internal((void *)v6[5]);
          *v6 = -2;
          v6[1] = 0;
          v2 = *a1;
        }
        v5 += 8;
      }
      while ( v3 >= v4 );
    }
    gameswf::free_internal(v2);
    *a1 = nullptr;
  }
}


// ===== 76d9d0 gameswf::string_hash<gameswf::tu_loadlib *>::~string_hash() =====
_DWORD **__fastcall gameswf::string_hash<gameswf::tu_loadlib *>::~string_hash(_DWORD **a1)
{
  gameswf::hash<gameswf::tu_string,gameswf::tu_loadlib *,gameswf::string_hash_functor<gameswf::tu_string>>::clear(a1);
  return a1;
}


// ===== 76d9e4 gameswf::clear_shared_libs(void) =====
void __fastcall gameswf::clear_shared_libs(gameswf *this)
{
  int v1; // r1
  int i; // r4
  int v3; // r3
  int v4; // r0
  int v5; // r12
  int v6; // r3
  int v7; // r2
  int v8; // r1
  void *v9; // r6
  int v10; // r1
  int v11; // r0
  int v12; // r12

  if ( gameswf::s_shared_libs )
  {
    v1 = *(_DWORD *)(gameswf::s_shared_libs + 4);
    if ( v1 >= 0 )
    {
      v3 = 8;
      for ( i = 0; i <= v1; ++i )
      {
        v4 = *(_DWORD *)(gameswf::s_shared_libs + v3);
        v5 = gameswf::s_shared_libs + v3;
        v3 += 32;
        if ( v4 != -2 && *(_DWORD *)(v5 + 4) != -1 )
          break;
      }
    }
    else
    {
      i = 0;
    }
    v6 = gameswf::s_shared_libs;
    while ( v6 )
    {
      v7 = *(_DWORD *)(v6 + 4);
      if ( i > v7 )
        break;
      v8 = v6 + 32 * i;
      v9 = *(void **)(v8 + 36);
      if ( v9 )
      {
        gameswf::tu_loadlib::~tu_loadlib(*(gameswf::tu_loadlib **)(v8 + 36));
        gameswf::free_internal(v9);
        v6 = gameswf::s_shared_libs;
        v7 = *(_DWORD *)(gameswf::s_shared_libs + 4);
        if ( v7 < i )
          break;
      }
      if ( ++i <= v7 )
      {
        v10 = 32 * i + 8;
        do
        {
          v11 = *(_DWORD *)(v6 + v10);
          v12 = v6 + v10;
          v10 += 32;
          if ( v11 != -2 && *(_DWORD *)(v12 + 4) != -1 )
            break;
          ++i;
        }
        while ( i <= v7 );
      }
    }
  }
  gameswf::hash<gameswf::tu_string,gameswf::tu_loadlib *,gameswf::string_hash_functor<gameswf::tu_string>>::clear((_DWORD **)&gameswf::s_shared_libs);
}


// ===== 76db08 gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(void) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_standard_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(
        _DWORD **a1)
{
  _DWORD *v2; // r0
  int v3; // r7
  int v4; // r5
  int v5; // r4
  _DWORD *v6; // r6

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
          if ( *((char *)v6 + 8) == -1 )
            gameswf::free_internal((void *)v6[5]);
          *v6 = -2;
          v6[1] = 0;
          v2 = *a1;
        }
        v5 += 8;
      }
      while ( v3 >= v4 );
    }
    gameswf::free_internal(v2);
    *a1 = nullptr;
  }
}

