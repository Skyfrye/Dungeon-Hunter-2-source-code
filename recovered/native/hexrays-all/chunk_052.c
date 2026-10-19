// ===== 7e27c0 b2BroadPhase::IncrementOverlapCount(int) =====
int __fastcall b2BroadPhase::IncrementOverlapCount(int this, int a2)
{
  unsigned int v2; // r2

  v2 = *(unsigned __int16 *)(this + 380984);
  if ( *(unsigned __int16 *)(this + 16 * a2 + 294942) >= v2 )
  {
    *(_WORD *)(this + 16 * a2 + 294940) = 2;
    *(_WORD *)(this + 2 * (*(_DWORD *)(this + 380952) + 188416) + 22) = a2;
    ++*(_DWORD *)(this + 380952);
  }
  else
  {
    *(_WORD *)(this + 16 * a2 + 294942) = v2;
    *(_WORD *)(this + 16 * a2 + 294940) = 1;
  }
  return this;
}


// ===== 7e2820 b2BroadPhase::Query(int *,int *,ushort,ushort,b2Bound *,int,int) =====
int __fastcall b2BroadPhase::Query(
        int this,
        int *a2,
        int *a3,
        unsigned int a4,
        unsigned __int16 a5,
        int a6,
        int a7,
        int a8)
{
  int v8; // r6
  int v9; // r4
  int v10; // r1
  int v12; // r7
  int v13; // r0
  int v14; // r2
  unsigned int v15; // r12
  int v16; // r3
  unsigned int v17; // r2
  _WORD *v18; // r8
  int v19; // r11
  _WORD *v20; // r10
  int v21; // r8
  int v22; // r1

  v9 = this;
  v10 = a7 - 1;
  if ( a7 - 1 < 0 )
    v8 = 0;
  if ( a7 - 1 < 0 )
  {
    v12 = v8;
    goto LABEL_31;
  }
  v13 = a7 - 1;
  v12 = 0;
  while ( 1 )
  {
    v14 = (v13 + v12) >> 1;
    v15 = *(unsigned __int16 *)(a6 + 6 * v14);
    if ( a4 >= v15 )
      break;
    v13 = v14 - 1;
LABEL_11:
    if ( v12 > v13 )
      goto LABEL_12;
  }
  if ( a4 > v15 )
  {
    v12 = v14 + 1;
    goto LABEL_11;
  }
  v12 = (unsigned __int16)v14;
LABEL_12:
  v8 = 0;
  this = 6;
  while ( 2 )
  {
    v16 = (v10 + v8) >> 1;
    v17 = *(unsigned __int16 *)(a6 + 6 * v16);
    if ( a5 < v17 )
    {
      v10 = v16 - 1;
      goto LABEL_18;
    }
    if ( a5 > v17 )
    {
      v8 = v16 + 1;
LABEL_18:
      if ( v10 < v8 )
        goto LABEL_19;
      continue;
    }
    break;
  }
  v8 = (unsigned __int16)v16;
LABEL_19:
  if ( v12 < v8 )
  {
    v18 = (_WORD *)(a6 + 6 * v12);
    v19 = v12;
    do
    {
      while ( 1 )
      {
        ++v19;
        if ( (*v18 & 1) == 0 )
          break;
        v18 += 3;
        if ( v19 == v8 )
          goto LABEL_24;
      }
      this = b2BroadPhase::IncrementOverlapCount(v9, (unsigned __int16)v18[1]);
      v18 += 3;
    }
    while ( v19 != v8 );
  }
LABEL_24:
  if ( v12 > 0 )
  {
    v20 = (_WORD *)(a6 + 6 * (v12 - 1));
    v21 = (unsigned __int16)v20[2];
    if ( v20[2] )
    {
      do
      {
        while ( 1 )
        {
          if ( (*v20 & 1) == 0 )
          {
            v22 = (unsigned __int16)v20[1];
            if ( *(unsigned __int16 *)(v9 + 2 * (a8 + 8 * v22 + 147456) + 24) >= v12 )
              break;
          }
          v20 -= 3;
          if ( !v21 )
            goto LABEL_31;
        }
        --v21;
        this = b2BroadPhase::IncrementOverlapCount(v9, v22);
        v20 -= 3;
      }
      while ( v21 );
    }
  }
LABEL_31:
  *a2 = v12;
  *a3 = v8;
  return this;
}


// ===== 7e29a0 b2BroadPhase::Query(b2AABB const&,void **,int) =====
int __fastcall b2BroadPhase::Query(int a1, float *a2, int a3, int a4)
{
  int v7; // r9
  bool v8; // cc
  int v9; // r3
  unsigned __int16 *v10; // r2
  int v11; // t1
  bool v12; // cc
  int v14; // [sp+10h] [bp-14h] BYREF
  int v15; // [sp+14h] [bp-10h] BYREF
  unsigned __int16 v16[2]; // [sp+18h] [bp-Ch] BYREF
  _WORD v17[4]; // [sp+1Ch] [bp-8h] BYREF

  b2BroadPhase::ComputeBounds((float *)a1, v17, v16, a2);
  v7 = 0;
  b2BroadPhase::Query(a1, &v15, &v14, v17[0], v16[0], a1 + 327702, 2 * *(_DWORD *)(a1 + 380980), 0);
  b2BroadPhase::Query(a1, &v15, &v14, v17[1], v16[1], a1 + 352278, 2 * *(_DWORD *)(a1 + 380980), 1);
  v8 = a4 <= 0;
  if ( a4 > 0 )
    v8 = *(_DWORD *)(a1 + 380952) <= 0;
  v9 = !v8;
  if ( v8 )
  {
    v7 = v9;
  }
  else
  {
    v10 = (unsigned __int16 *)(a1 + 376854);
    do
    {
      v11 = *v10++;
      *(_DWORD *)(a3 + 4 * v7++) = *(_DWORD *)(a1 + 16 * v11 + 294944);
      v12 = a4 <= v7;
      if ( a4 > v7 )
        v12 = *(_DWORD *)(a1 + 380952) <= v7;
    }
    while ( !v12 );
  }
  *(_DWORD *)(a1 + 380952) = 0;
  b2BroadPhase::IncrementTimeStamp(a1);
  return v7;
}


// ===== 7e2ac4 b2BroadPhase::Validate(void) =====
void __fastcall b2BroadPhase::Validate(b2BroadPhase *this)
{
  ;
}


// ===== 7e2ac8 b2BroadPhase::Commit(void) =====
// attributes: thunk
int __fastcall b2BroadPhase::Commit(b2BroadPhase *this)
{
  return b2PairManager::Commit(this);
}


// ===== 7e2acc b2BroadPhase::DestroyProxy(int) =====
void __fastcall b2BroadPhase::DestroyProxy(b2BroadPhase *this, int a2)
{
  unsigned __int16 *v3; // r9
  int v4; // r7
  int v5; // r6
  int v6; // r0
  char *v7; // r5
  unsigned __int16 v8; // r11
  unsigned int v9; // r10
  int v10; // r3
  char *v11; // r2
  int v12; // r1
  __int16 v13; // r0
  char *v14; // r1
  char *v15; // r2
  unsigned __int16 *v16; // r7
  int v17; // r6
  int v18; // t1
  char *v19; // r12
  char *v20; // r11
  int v21; // [sp+Ch] [bp-28h]
  int v22; // [sp+14h] [bp-20h]
  int v24; // [sp+24h] [bp-10h]
  int v25; // [sp+28h] [bp-Ch] BYREF
  int v26; // [sp+2Ch] [bp-8h] BYREF

  v22 = 2 * *((_DWORD *)this + 95245);
  v3 = (unsigned __int16 *)((char *)this + 16 * a2 + 294932);
  v4 = v22 - 2;
  v5 = 0;
  v24 = a2 + 18433;
  do
  {
    v26 = *v3;
    v6 = v3[2];
    v7 = (char *)this + 24576 * v5 + 327702;
    v25 = v6;
    v8 = *(_WORD *)&v7[6 * v6];
    v9 = *(unsigned __int16 *)&v7[6 * v26];
    memmove(&v7[6 * v26], &v7[6 * v26 + 6], 6 * (v6 - 1 - v26));
    memmove(&v7[6 * v25 - 6], &v7[6 * v25 + 6], 6 * (v22 - v25 - 1));
    v10 = v26;
    if ( v26 < v4 )
    {
      v11 = &v7[6 * v26 + 2];
      do
      {
        v12 = *(unsigned __int16 *)v11;
        v13 = *((_WORD *)v11 - 1);
        v11 += 6;
        v14 = (char *)this + 16 * v12 + 2 * v5 + 294912;
        if ( (v13 & 1) != 0 )
          *((_WORD *)v14 + 12) = v10;
        else
          *((_WORD *)v14 + 10) = v10;
        ++v10;
      }
      while ( v10 < v4 );
      v10 = v26;
    }
    if ( v25 - 1 > v10 )
    {
      v15 = &v7[6 * v10 + 4];
      do
      {
        ++v10;
        --*(_WORD *)v15;
        v15 += 6;
      }
      while ( v25 - 1 > v10 );
    }
    v21 = v5++;
    b2BroadPhase::Query((int)this, &v26, &v25, v9, v8, (int)v7, v4, v21);
    ++v3;
  }
  while ( v5 != 2 );
  if ( *((int *)this + 95238) > 0 )
  {
    v16 = (unsigned __int16 *)((char *)this + 376854);
    v17 = 0;
    do
    {
      v18 = *v16++;
      b2PairManager::RemoveBufferedPair(this, a2, v18);
      ++v17;
    }
    while ( *((_DWORD *)this + 95238) > v17 );
  }
  b2PairManager::Commit(this);
  *((_DWORD *)this + 95238) = 0;
  b2BroadPhase::IncrementTimeStamp((int)this);
  v19 = (char *)this + 16 * a2;
  *((_DWORD *)v19 + 73736) = 0;
  v20 = (char *)this + 16 * v24;
  *((_WORD *)v19 + 147470) = -1;
  *((_WORD *)v20 + 2) = -1;
  *((_WORD *)v19 + 147467) = -1;
  *((_WORD *)v20 + 4) = -1;
  *((_WORD *)v19 + 147469) = -1;
  *((_WORD *)v20 + 2) = *((_WORD *)this + 163850);
  *((_WORD *)this + 163850) = a2;
  --*((_DWORD *)this + 95245);
  if ( b2BroadPhase::s_validate )
    b2BroadPhase::Validate(this);
}


// ===== 7e2d54 b2BroadPhase::CreateProxy(b2AABB const&,void *) =====
int __fastcall b2BroadPhase::CreateProxy(int a1, float *a2, int a3)
{
  int v3; // r5
  int v4; // r7
  __int16 *v6; // r12
  int v7; // r10
  int v8; // r9
  int v9; // r7
  int v10; // r8
  int v11; // r5
  __int16 v12; // lr
  __int16 v13; // r3
  int v14; // r3
  _WORD *v15; // r2
  unsigned __int16 *v16; // r5
  int v17; // r2
  __int16 v18; // r1
  int v19; // r2
  unsigned __int16 *v20; // r7
  int v21; // r6
  int v22; // t1
  __int16 *v24; // [sp+14h] [bp-20h]
  int v25; // [sp+18h] [bp-1Ch]
  int v26; // [sp+28h] [bp-Ch] BYREF
  int v27; // [sp+2Ch] [bp-8h] BYREF
  __int16 v28; // [sp+30h] [bp-4h] BYREF
  _WORD v29[4]; // [sp+34h] [bp+0h] BYREF

  v3 = *(unsigned __int16 *)(a1 + 327700);
  v4 = a1 + 16 * v3;
  *(_WORD *)(a1 + 327700) = *(_WORD *)(a1 + 16 * (v3 + 18433) + 4);
  *(_WORD *)(v4 + 294940) = 0;
  *(_DWORD *)(v4 + 294944) = a3;
  v25 = 2 * *(_DWORD *)(a1 + 380980);
  b2BroadPhase::ComputeBounds((float *)a1, v29, &v28, a2);
  v6 = &v28;
  v7 = v25 + 1;
  v8 = 0;
  v9 = 0;
  v10 = v3;
  do
  {
    v11 = a1 + 24576 * v9 + 327680 + 22;
    v24 = v6;
    b2BroadPhase::Query(a1, &v27, &v26, (unsigned __int16)v29[v8], v6[v8], v11, v25, v9);
    memmove((void *)(v11 + 6 * v26 + 12), (const void *)(v11 + 6 * v26), 6 * (v25 - v26));
    memmove((void *)(v11 + 6 * v27 + 6), (const void *)(v11 + 6 * v27), 6 * (v26 - v27));
    v12 = v29[v8];
    ++v26;
    *(_WORD *)(v11 + 6 * v27) = v12;
    *(_WORD *)(v11 + 6 * v27 + 2) = v10;
    v6 = v24;
    *(_WORD *)(v11 + 6 * v26) = v24[v8];
    *(_WORD *)(v11 + 6 * v26 + 2) = v10;
    v13 = v27;
    if ( v27 )
      v13 = *(_WORD *)(v11 + 6 * (v27 - 1) + 4);
    *(_WORD *)(v11 + 6 * v27 + 4) = v13;
    *(_WORD *)(v11 + 6 * v26 + 4) = *(_WORD *)(v11 + 6 * (v26 - 1) + 4);
    v14 = v27;
    if ( v27 < v26 )
    {
      v15 = (_WORD *)(v11 + 6 * v27 + 4);
      do
      {
        ++v14;
        ++*v15;
        v15 += 3;
      }
      while ( v26 > v14 );
      v14 = v27;
    }
    if ( v7 >= v14 )
    {
      v16 = (unsigned __int16 *)(v11 + 6 * v14 + 2);
      do
      {
        v17 = *v16;
        v18 = *(v16 - 1);
        v16 += 3;
        v19 = a1 + 2 * (v9 + 8 * v17 + 147456);
        if ( (v18 & 1) != 0 )
          *(_WORD *)(v19 + 24) = v14;
        else
          *(_WORD *)(v19 + 20) = v14;
        ++v14;
      }
      while ( v14 <= v7 );
    }
    ++v9;
    ++v8;
  }
  while ( v9 != 2 );
  ++*(_DWORD *)(a1 + 380980);
  if ( *(int *)(a1 + 380952) > 0 )
  {
    v20 = (unsigned __int16 *)(a1 + 376854);
    v21 = 0;
    do
    {
      v22 = *v20++;
      b2PairManager::AddBufferedPair((b2PairManager *)a1, v10, v22);
      ++v21;
    }
    while ( *(_DWORD *)(a1 + 380952) > v21 );
  }
  b2PairManager::Commit((b2PairManager *)a1);
  if ( b2BroadPhase::s_validate )
    b2BroadPhase::Validate((b2BroadPhase *)a1);
  *(_DWORD *)(a1 + 380952) = 0;
  b2BroadPhase::IncrementTimeStamp(a1);
  return v10;
}


// ===== 7e3048 b2BroadPhase::b2BroadPhase(b2AABB const&,b2PairCallback *) =====
int __fastcall b2BroadPhase::b2BroadPhase(int a1, float *a2, b2PairCallback *a3)
{
  int v5; // r1
  int v6; // r2
  int v7; // r3
  float v9; // r7
  int v10; // r2

  b2PairManager::b2PairManager((b2PairManager *)a1);
  b2PairManager::Initialize((b2PairManager *)a1, (b2BroadPhase *)a1, a3);
  v5 = *((_DWORD *)a2 + 1);
  v6 = *((_DWORD *)a2 + 2);
  v7 = *((_DWORD *)a2 + 3);
  *(float *)(a1 + 380956) = *a2;
  *(_DWORD *)(a1 + 380960) = v5;
  *(_DWORD *)(a1 + 380964) = v6;
  *(_DWORD *)(a1 + 380968) = v7;
  LOWORD(a3) = 0;
  *(_DWORD *)(a1 + 380980) = 0;
  v9 = a2[3] - a2[1];
  *(float *)(a1 + 380972) = 65535.0 / (float)(a2[2] - *a2);
  *(float *)(a1 + 380976) = 65535.0 / v9;
  v10 = a1 + 294932;
  do
  {
    a3 = (b2PairCallback *)(unsigned __int16)((_WORD)a3 + 1);
    *(_WORD *)v10 = (_WORD)a3;
    *(_DWORD *)(v10 + 8) = 0xFFFF;
    *(_DWORD *)(v10 + 12) = 0;
    v10 += 16;
  }
  while ( a3 != (b2PairCallback *)((char *)&elf_hash_bucket[456] + 3) );
  *(_WORD *)(a1 + 327684) = -1;
  *(_WORD *)(a1 + 327694) = 0;
  *(_WORD *)(a1 + 327692) = -1;
  *(_DWORD *)(a1 + 327696) = 0;
  *(_WORD *)(a1 + 327700) = 0;
  *(_WORD *)(a1 + 380984) = 1;
  *(_DWORD *)(a1 + 380952) = 0;
  return a1;
}


// ===== 7e317c b2BroadPhase::b2BroadPhase(b2AABB const&,b2PairCallback *) =====
int __fastcall b2BroadPhase::b2BroadPhase(int a1, float *a2, b2PairCallback *a3)
{
  int v5; // r1
  int v6; // r2
  int v7; // r3
  float v9; // r7
  int v10; // r2

  b2PairManager::b2PairManager((b2PairManager *)a1);
  b2PairManager::Initialize((b2PairManager *)a1, (b2BroadPhase *)a1, a3);
  v5 = *((_DWORD *)a2 + 1);
  v6 = *((_DWORD *)a2 + 2);
  v7 = *((_DWORD *)a2 + 3);
  *(float *)(a1 + 380956) = *a2;
  *(_DWORD *)(a1 + 380960) = v5;
  *(_DWORD *)(a1 + 380964) = v6;
  *(_DWORD *)(a1 + 380968) = v7;
  LOWORD(a3) = 0;
  *(_DWORD *)(a1 + 380980) = 0;
  v9 = a2[3] - a2[1];
  *(float *)(a1 + 380972) = 65535.0 / (float)(a2[2] - *a2);
  *(float *)(a1 + 380976) = 65535.0 / v9;
  v10 = a1 + 294932;
  do
  {
    a3 = (b2PairCallback *)(unsigned __int16)((_WORD)a3 + 1);
    *(_WORD *)v10 = (_WORD)a3;
    *(_DWORD *)(v10 + 8) = 0xFFFF;
    *(_DWORD *)(v10 + 12) = 0;
    v10 += 16;
  }
  while ( a3 != (b2PairCallback *)((char *)&elf_hash_bucket[456] + 3) );
  *(_WORD *)(a1 + 327684) = -1;
  *(_WORD *)(a1 + 327694) = 0;
  *(_WORD *)(a1 + 327692) = -1;
  *(_DWORD *)(a1 + 327696) = 0;
  *(_WORD *)(a1 + 327700) = 0;
  *(_WORD *)(a1 + 380984) = 1;
  *(_DWORD *)(a1 + 380952) = 0;
  return a1;
}


// ===== 7e32b0 b2AABB::IsValid(void) =====
bool __fastcall b2AABB::IsValid(b2AABB *this)
{
  return (float)(*((float *)this + 2) - *(float *)this) >= 0.0
      && (float)(*((float *)this + 3) - *((float *)this + 1)) >= 0.0
      && _isfinitef()
      && _isfinitef()
      && _isfinitef()
      && _isfinitef() != 0;
}


// ===== 7e3344 b2BroadPhase::MoveProxy(int,b2AABB const&) =====
void __fastcall b2BroadPhase::MoveProxy(b2BroadPhase *this, int a2, const b2AABB *a3)
{
  int v5; // r9
  char *v6; // r7
  int v7; // r1
  unsigned __int16 *v8; // r7
  int v9; // r9
  int v10; // r8
  char *v11; // r11
  int v12; // r0
  bool v13; // nf
  char *v14; // r1
  int v15; // r6
  unsigned int v16; // r3
  char *v17; // r6
  unsigned __int16 *v18; // r6
  int v19; // r10
  __int16 v20; // r2
  char *v21; // r5
  int v22; // r11
  char *v23; // r11
  unsigned __int16 v24; // r3
  unsigned __int16 v25; // r2
  unsigned __int16 v26; // r1
  int v27; // r6
  unsigned int v28; // r3
  char *v29; // r6
  unsigned __int16 *v30; // r6
  int v31; // r10
  __int16 v32; // r2
  char *v33; // r5
  int v34; // r11
  char *v35; // r11
  unsigned __int16 v36; // r3
  unsigned __int16 v37; // r2
  unsigned __int16 v38; // r1
  unsigned int v39; // t1
  __int16 v40; // r2
  char *v41; // r11
  unsigned int v42; // t1
  __int16 v43; // r2
  char *v44; // r11
  int v45; // r5
  unsigned int v46; // r2
  char *v47; // r5
  unsigned __int16 *v48; // r5
  char *v49; // r6
  unsigned __int16 *v50; // r11
  char *v51; // r3
  unsigned __int16 v52; // r3
  unsigned __int16 v53; // r2
  unsigned __int16 v54; // r1
  unsigned int v55; // t1
  __int16 v56; // r2
  int v57; // r10
  char *v58; // r3
  int v59; // r5
  unsigned int v60; // r3
  char *v61; // r5
  unsigned __int16 *v62; // r5
  char *v63; // r6
  char *v64; // r3
  unsigned __int16 v65; // r3
  unsigned __int16 v66; // r2
  unsigned __int16 v67; // r1
  unsigned int v68; // t1
  __int16 v69; // r2
  int v70; // r10
  char *v71; // r3
  unsigned int v72; // [sp+4h] [bp-40h]
  unsigned int v74; // [sp+Ch] [bp-38h]
  char *v75; // [sp+10h] [bp-34h]
  int v76; // [sp+18h] [bp-2Ch]
  int v77; // [sp+1Ch] [bp-28h]
  int v78; // [sp+24h] [bp-20h]
  int v79; // [sp+28h] [bp-1Ch]
  int v80; // [sp+2Ch] [bp-18h]
  unsigned __int16 v81[4]; // [sp+30h] [bp-14h] BYREF
  unsigned __int16 v82[2]; // [sp+38h] [bp-Ch] BYREF
  __int16 v83[4]; // [sp+3Ch] [bp-8h] BYREF

  if ( a2 < 2048 && b2AABB::IsValid(a3) )
  {
    v5 = *((_DWORD *)this + 95245);
    b2BroadPhase::ComputeBounds((float *)this, v82, v83, (float *)a3);
    v6 = (char *)this + 16 * a2 + 294928;
    v81[0] = *((_WORD *)this + 3 * *((unsigned __int16 *)v6 + 2) + 163851);
    v7 = *((unsigned __int16 *)v6 + 4);
    v79 = 0;
    v8 = (unsigned __int16 *)(v6 + 4);
    v9 = 2 * v5 - 1;
    v10 = 0;
    v81[2] = *((_WORD *)this + 3 * v7 + 163851);
    v81[1] = *((_WORD *)this + 3 * *((unsigned __int16 *)this + 8 * a2 + 147467) + 176139);
    v81[3] = *((_WORD *)this + 3 * *((unsigned __int16 *)this + 8 * a2 + 147469) + 176139);
    do
    {
      v77 = *v8;
      v76 = v8[2];
      v11 = (char *)this + 24576 * v10 + 327696;
      v72 = v82[v79];
      v75 = v11 + 6;
      v74 = v82[v79 + 2];
      v12 = *(unsigned __int16 *)&v11[6 * v76 + 6];
      v13 = (int)(v72 - *(unsigned __int16 *)&v11[6 * v77 + 6]) < 0;
      v80 = v72 - *(unsigned __int16 *)&v11[6 * v77 + 6];
      v14 = v11 + 6;
      *(_WORD *)&v14[6 * v77] = v72;
      *(_WORD *)&v14[6 * v76] = v74;
      v78 = v74 - v12;
      if ( v13 )
      {
        if ( v77 )
        {
          v45 = 6 * (v77 - 1);
          v46 = *(unsigned __int16 *)&v75[v45];
          v47 = &v75[v45];
          if ( v46 > v72 )
          {
            v48 = (unsigned __int16 *)(v47 + 2);
            v49 = &v75[6 * v77 - 12];
            v50 = (unsigned __int16 *)(v11 + 8);
            do
            {
              v56 = *(v48 - 1);
              v57 = *v48;
              ++v48[1];
              if ( (v56 & 1) != 0 )
              {
                if ( b2BroadPhase::TestOverlap((int)this, v82, (unsigned __int16 *)this + 8 * v57 + 147466) )
                  b2PairManager::AddBufferedPair(this, a2, v57);
                v58 = (char *)this + 16 * v57 + 2 * v10 + 294928;
                ++*((_WORD *)v58 + 4);
                ++*((_WORD *)v49 + 8);
              }
              else
              {
                v51 = (char *)this + 16 * v57 + 2 * v10 + 294928;
                ++*((_WORD *)v51 + 2);
                --*((_WORD *)v49 + 8);
              }
              --*v8;
              v52 = *((_WORD *)v49 + 6);
              v53 = *((_WORD *)v49 + 7);
              *((_WORD *)v49 + 6) = *(v48 - 1);
              v54 = *((_WORD *)v49 + 8);
              *((_WORD *)v49 + 7) = *v48;
              *((_WORD *)v49 + 8) = v48[1];
              v48[1] = v54;
              *v48 = v53;
              *(v48 - 1) = v52;
              if ( v48 == v50 )
                break;
              v55 = *(unsigned __int16 *)v49;
              v49 -= 6;
              v48 -= 3;
            }
            while ( v72 < v55 );
          }
        }
      }
      if ( v78 > 0 && v76 < v9 )
      {
        v15 = 6 * v76 + 6;
        v16 = *(unsigned __int16 *)&v75[v15];
        v17 = &v75[v15];
        if ( v16 <= v74 )
        {
          v18 = (unsigned __int16 *)(v17 + 2);
          v19 = v76;
          v20 = *(v18 - 1);
          v21 = &v75[6 * v76 + 12];
          v22 = *v18;
          ++v18[1];
          if ( (v20 & 1) != 0 )
          {
LABEL_10:
            v23 = (char *)this + 16 * v22 + 2 * v10 + 294928;
            --*((_WORD *)v23 + 4);
            --*((_WORD *)v21 - 4);
            goto LABEL_11;
          }
          while ( 1 )
          {
            if ( b2BroadPhase::TestOverlap((int)this, v82, (unsigned __int16 *)this + 8 * v22 + 147466) )
              b2PairManager::AddBufferedPair(this, a2, v22);
            v41 = (char *)this + 16 * v22 + 2 * v10 + 294928;
            --*((_WORD *)v41 + 2);
            ++*((_WORD *)v21 - 4);
LABEL_11:
            ++v19;
            ++v8[2];
            v24 = *((_WORD *)v21 - 6);
            v25 = *((_WORD *)v21 - 5);
            *((_WORD *)v21 - 6) = *(v18 - 1);
            v26 = *((_WORD *)v21 - 4);
            *((_WORD *)v21 - 5) = *v18;
            *((_WORD *)v21 - 4) = v18[1];
            v18[1] = v26;
            *v18 = v25;
            *(v18 - 1) = v24;
            if ( v19 == v9 )
              break;
            v39 = *(unsigned __int16 *)v21;
            v21 += 6;
            v18 += 3;
            if ( v74 < v39 )
              break;
            v40 = *(v18 - 1);
            v22 = *v18;
            ++v18[1];
            if ( (v40 & 1) != 0 )
              goto LABEL_10;
          }
        }
      }
      if ( v80 > 0 && v77 < v9 )
      {
        v27 = 6 * v77 + 6;
        v28 = *(unsigned __int16 *)&v75[v27];
        v29 = &v75[v27];
        if ( v28 <= v72 )
        {
          v30 = (unsigned __int16 *)(v29 + 2);
          v31 = v77;
          v32 = *(v30 - 1);
          v33 = &v75[6 * v77 + 12];
          v34 = *v30;
          --v30[1];
          if ( (v32 & 1) == 0 )
          {
LABEL_16:
            v35 = (char *)this + 16 * v34 + 2 * v10 + 294928;
            --*((_WORD *)v35 + 2);
            ++*((_WORD *)v33 - 4);
            goto LABEL_17;
          }
          while ( 1 )
          {
            if ( b2BroadPhase::TestOverlap((int)this, v81, (unsigned __int16 *)this + 8 * v34 + 147466) )
              b2PairManager::RemoveBufferedPair(this, a2, v34);
            v44 = (char *)this + 16 * v34 + 2 * v10 + 294928;
            --*((_WORD *)v44 + 4);
            --*((_WORD *)v33 - 4);
LABEL_17:
            ++v31;
            ++*v8;
            v36 = *((_WORD *)v33 - 6);
            v37 = *((_WORD *)v33 - 5);
            *((_WORD *)v33 - 6) = *(v30 - 1);
            v38 = *((_WORD *)v33 - 4);
            *((_WORD *)v33 - 5) = *v30;
            *((_WORD *)v33 - 4) = v30[1];
            v30[1] = v38;
            *v30 = v37;
            *(v30 - 1) = v36;
            if ( v31 == v9 )
              break;
            v42 = *(unsigned __int16 *)v33;
            v33 += 6;
            v30 += 3;
            if ( v72 < v42 )
              break;
            v43 = *(v30 - 1);
            v34 = *v30;
            --v30[1];
            if ( (v43 & 1) == 0 )
              goto LABEL_16;
          }
        }
      }
      if ( v78 < 0 )
      {
        if ( v76 )
        {
          v59 = 6 * (v76 - 1);
          v60 = *(unsigned __int16 *)&v75[v59];
          v61 = &v75[v59];
          if ( v60 > v74 )
          {
            v62 = (unsigned __int16 *)(v61 + 2);
            v63 = &v75[6 * v76 - 12];
            do
            {
              v69 = *(v62 - 1);
              v70 = *v62;
              --v62[1];
              if ( (v69 & 1) != 0 )
              {
                v64 = (char *)this + 16 * v70 + 2 * v10 + 294928;
                ++*((_WORD *)v64 + 4);
                ++*((_WORD *)v63 + 8);
              }
              else
              {
                if ( b2BroadPhase::TestOverlap((int)this, v81, (unsigned __int16 *)this + 8 * v70 + 147466) )
                  b2PairManager::RemoveBufferedPair(this, a2, v70);
                v71 = (char *)this + 16 * v70 + 2 * v10 + 294928;
                ++*((_WORD *)v71 + 2);
                --*((_WORD *)v63 + 8);
              }
              --v8[2];
              v65 = *((_WORD *)v63 + 6);
              v66 = *((_WORD *)v63 + 7);
              *((_WORD *)v63 + 6) = *(v62 - 1);
              v67 = *((_WORD *)v63 + 8);
              *((_WORD *)v63 + 7) = *v62;
              *((_WORD *)v63 + 8) = v62[1];
              v62[1] = v67;
              *v62 = v66;
              *(v62 - 1) = v65;
              if ( v62 == (unsigned __int16 *)(v75 + 2) )
                break;
              v68 = *(unsigned __int16 *)v63;
              v63 -= 6;
              v62 -= 3;
            }
            while ( v74 < v68 );
          }
        }
      }
      ++v10;
      ++v8;
      ++v79;
    }
    while ( v10 != 2 );
    if ( b2BroadPhase::s_validate )
      b2BroadPhase::Validate(this);
  }
}


// ===== 7e3a94 b2Sweep::Advance(float) =====
float __fastcall b2Sweep::Advance(b2Sweep *this, float a2)
{
  float v2; // r5
  float result; // r0
  float v6; // r5
  float v7; // r8
  float v8; // r0
  float v9; // r1

  v2 = *((float *)this + 8);
  LODWORD(result) = v2 < a2;
  if ( v2 < a2 )
  {
    LODWORD(result) = (float)(1.0 - v2) > 0.00000011921;
    if ( (float)(1.0 - v2) > 0.00000011921 )
    {
      v6 = (float)(a2 - v2) / (float)(1.0 - v2);
      v7 = (float)(1.0 - v6) * *((float *)this + 2);
      v8 = v6 * *((float *)this + 4);
      *((float *)this + 3) = (float)((float)(1.0 - v6) * *((float *)this + 3)) + (float)(v6 * *((float *)this + 5));
      v9 = *((float *)this + 6);
      *((float *)this + 2) = v7 + v8;
      result = (float)((float)(1.0 - v6) * v9) + (float)(v6 * *((float *)this + 7));
      *((float *)this + 8) = a2;
      *((float *)this + 6) = result;
    }
  }
  return result;
}


// ===== 7e3b88 `global constructor keyed to'.._.._src_Common_b2Math.cpp =====
int `global constructor keyed to'.._.._src_Common_b2Math.cpp()
{
  dword_A2ED50 = 0;
  dword_A2ED54 = 1065353216;
  b2Mat22_identity = 1065353216;
  dword_A2ED4C = 0;
  unk_A2ED60 = 1065353216;
  unk_A2ED64 = 0;
  unk_A2ED68 = 0;
  unk_A2ED6C = 1065353216;
  b2XForm_identity = 0;
  dword_A2ED5C = 0;
  dword_A2ED44 = 0;
  b2Vec2_zero = 0;
  return 1065353216;
}


// ===== 7e3bfc b2Sweep::GetXForm(b2XForm *,float) =====
float __fastcall b2Sweep::GetXForm(int a1, int a2, float a3)
{
  float v3; // r6
  float v6; // r6
  float v7; // r11
  float v8; // r0
  float v9; // r8
  float v10; // r10
  float v11; // r7
  float v12; // r6
  float v13; // r7
  float v14; // r8
  float v15; // r5
  float result; // r0
  float v17; // r7
  float v18; // r0

  v3 = *(float *)(a1 + 32);
  if ( (float)(1.0 - v3) <= 0.00000011921 )
  {
    *(_DWORD *)a2 = *(_DWORD *)(a1 + 16);
    *(_DWORD *)(a2 + 4) = *(_DWORD *)(a1 + 20);
    v17 = *(float *)(a1 + 28);
    v12 = cosf(v17);
    v18 = sinf(v17);
    v10 = *(float *)a2;
    v13 = v18;
  }
  else
  {
    v6 = (float)(a3 - v3) / (float)(1.0 - v3);
    v7 = (float)(1.0 - v6) * *(float *)(a1 + 8);
    v8 = (float)(1.0 - v6) * *(float *)(a1 + 12);
    v9 = v6 * *(float *)(a1 + 20);
    v10 = v7 + (float)(v6 * *(float *)(a1 + 16));
    *(float *)a2 = v10;
    *(float *)(a2 + 4) = v8 + v9;
    v11 = (float)((float)(1.0 - v6) * *(float *)(a1 + 24)) + (float)(v6 * *(float *)(a1 + 28));
    v12 = cosf(v11);
    v13 = sinf(v11);
  }
  *(float *)(a2 + 12) = v13;
  *(float *)(a2 + 8) = v12;
  *(_DWORD *)(a2 + 16) = LODWORD(v13) + 0x80000000;
  *(float *)(a2 + 20) = v12;
  v14 = *(float *)a1;
  v15 = *(float *)(a1 + 4);
  *(float *)a2 = v10 - (float)((float)(v14 * v12) + (float)(v15 * COERCE_FLOAT(LODWORD(v13) + 0x80000000)));
  result = *(float *)(a2 + 4) - (float)((float)(v14 * v13) + (float)(v15 * v12));
  *(float *)(a2 + 4) = result;
  return result;
}


// ===== 7e3dbc b2PairManager::b2PairManager(void) =====
void __fastcall b2PairManager::b2PairManager(b2PairManager *this)
{
  int i; // r3
  char *v2; // r2
  b2PairManager *v3; // r3
  int v4; // r2

  for ( i = 0; i != 0x8000; i += 2 )
  {
    v2 = (char *)this + i;
    *((_WORD *)v2 + 131082) = -1;
  }
  *((_WORD *)this + 98308) = 0;
  v3 = this;
  v4 = 1;
  do
  {
    *((_WORD *)v3 + 8) = v4++;
    *((_WORD *)v3 + 6) = -1;
    *((_WORD *)v3 + 7) = -1;
    *((_DWORD *)v3 + 2) = 0;
    *((_WORD *)v3 + 9) = 0;
    v3 = (b2PairManager *)((char *)v3 + 12);
  }
  while ( v4 != 16385 );
  *((_WORD *)this + 98306) = -1;
  *((_DWORD *)this + 49155) = 0;
  *((_DWORD *)this + 65540) = 0;
}


// ===== 7e3e54 b2PairManager::b2PairManager(void) =====
void __fastcall b2PairManager::b2PairManager(b2PairManager *this)
{
  int i; // r3
  char *v2; // r2
  b2PairManager *v3; // r3
  int v4; // r2

  for ( i = 0; i != 0x8000; i += 2 )
  {
    v2 = (char *)this + i;
    *((_WORD *)v2 + 131082) = -1;
  }
  *((_WORD *)this + 98308) = 0;
  v3 = this;
  v4 = 1;
  do
  {
    *((_WORD *)v3 + 8) = v4++;
    *((_WORD *)v3 + 6) = -1;
    *((_WORD *)v3 + 7) = -1;
    *((_DWORD *)v3 + 2) = 0;
    *((_WORD *)v3 + 9) = 0;
    v3 = (b2PairManager *)((char *)v3 + 12);
  }
  while ( v4 != 16385 );
  *((_WORD *)this + 98306) = -1;
  *((_DWORD *)this + 49155) = 0;
  *((_DWORD *)this + 65540) = 0;
}


// ===== 7e3eec b2PairManager::Initialize(b2BroadPhase *,b2PairCallback *) =====
_DWORD *__fastcall b2PairManager::Initialize(_DWORD *result, int a2, int a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}


// ===== 7e3ef4 b2PairManager::Find(int,int,uint) =====
char *__fastcall b2PairManager::Find(b2PairManager *this, int a2, int a3, unsigned int a4)
{
  int v4; // r3
  unsigned __int16 *v5; // r8

  v4 = *((unsigned __int16 *)this + a4 + 131082);
  if ( v4 == 0xFFFF )
    return nullptr;
  while ( 1 )
  {
    v5 = (unsigned __int16 *)((char *)this + 12 * v4);
    if ( a2 == v5[6] && a3 == v5[7] )
      break;
    v4 = v5[8];
    if ( v4 == 0xFFFF )
      return nullptr;
  }
  return (char *)this + 12 * v4 + 8;
}


// ===== 7e3f68 b2PairManager::Find(int,int) =====
char *__fastcall b2PairManager::Find(b2PairManager *this, int a2, int a3)
{
  int v3; // r3
  unsigned int v4; // r3
  unsigned int v5; // r3

  if ( a2 > a3 )
  {
    v3 = a2;
    a2 = a3;
    a3 = v3;
  }
  v4 = ~(a2 | (a3 << 16)) + ((a2 | (a3 << 16)) << 15);
  v5 = 2057 * ((5 * (v4 ^ (v4 >> 12))) ^ ((5 * (v4 ^ (v4 >> 12))) >> 4));
  return b2PairManager::Find(this, a2, a3, (v5 ^ HIWORD(v5)) & 0x3FFF);
}


// ===== 7e3fa8 b2PairManager::AddPair(int,int) =====
char *__fastcall b2PairManager::AddPair(b2PairManager *this, int a2, int a3, int a4)
{
  int v4; // r4
  int v5; // r5
  unsigned int v6; // r6
  unsigned int v7; // r6
  unsigned int v9; // r6
  char *result; // r0
  int v11; // r1
  char *v12; // r12
  char *v13; // r6

  if ( a2 > a3 )
    a4 = a2;
  v4 = a2;
  v5 = a3;
  if ( a2 > a3 )
  {
    v4 = a3;
    v5 = a4;
  }
  v6 = ~(v4 | (v5 << 16)) + ((v4 | (v5 << 16)) << 15);
  v7 = 2057 * ((5 * (v6 ^ (v6 >> 12))) ^ ((5 * (v6 ^ (v6 >> 12))) >> 4));
  v9 = (v7 ^ HIWORD(v7)) & 0x3FFF;
  result = b2PairManager::Find(this, v4, v5, v9);
  if ( !result )
  {
    v11 = *((unsigned __int16 *)this + 98308);
    v12 = (char *)this + 12 * v11;
    v13 = (char *)this + 2 * v9 + 262160;
    *((_WORD *)this + 98308) = *((_WORD *)v12 + 8);
    *((_WORD *)v12 + 7) = v5;
    *((_WORD *)v12 + 6) = v4;
    *((_DWORD *)v12 + 2) = 0;
    *((_WORD *)v12 + 9) = 0;
    *((_WORD *)v12 + 8) = *((_WORD *)v13 + 2);
    *((_WORD *)v13 + 2) = v11;
    ++*((_DWORD *)this + 49155);
    return (char *)this + 12 * v11 + 8;
  }
  return result;
}


// ===== 7e4084 b2PairManager::RemovePair(int,int) =====
int __fastcall b2PairManager::RemovePair(b2PairManager *this, int a2, int a3)
{
  int v3; // r3
  unsigned int v4; // r3
  unsigned int v5; // r3
  char *v6; // r10
  int v7; // r3
  _WORD *v8; // r10
  unsigned __int16 *v9; // r5
  int *v10; // r4
  int v11; // r12
  int v12; // r12

  if ( a2 > a3 )
  {
    v3 = a2;
    a2 = a3;
    a3 = v3;
  }
  v4 = ~(a2 | (a3 << 16)) + ((a2 | (a3 << 16)) << 15);
  v5 = 2057 * ((5 * (v4 ^ (v4 >> 12))) ^ ((5 * (v4 ^ (v4 >> 12))) >> 4));
  v6 = (char *)this + 2 * ((v5 ^ HIWORD(v5)) & 0x3FFF) + 262160;
  v7 = *((unsigned __int16 *)v6 + 2);
  if ( v7 == 0xFFFF )
    return 0;
  v8 = v6 + 4;
  while ( 1 )
  {
    v9 = (unsigned __int16 *)((char *)this + 12 * v7);
    v10 = (int *)(v9 + 4);
    v11 = 12 * v7 + 16;
    if ( a2 == v9[6] && a3 == v9[7] )
      break;
    v7 = *((unsigned __int16 *)this + 6 * v7 + 8);
    v8 = (_WORD *)((char *)this + v11);
    if ( v7 == 0xFFFF )
      return 0;
  }
  *v8 = v9[8];
  v12 = *v10;
  v9[8] = *((_WORD *)this + 98308);
  *v10 = 0;
  v9[6] = -1;
  v9[7] = -1;
  v9[9] = 0;
  *((_WORD *)this + 98308) = v7;
  --*((_DWORD *)this + 49155);
  return v12;
}


// ===== 7e418c b2PairManager::ValidateBuffer(void) =====
void __fastcall b2PairManager::ValidateBuffer(b2PairManager *this)
{
  ;
}


// ===== 7e4190 b2PairManager::AddBufferedPair(int,int) =====
void __fastcall b2PairManager::AddBufferedPair(b2PairManager *this, int a2, int a3, int a4)
{
  char *v5; // r0
  __int16 v6; // r2
  int v7; // r12
  int v8; // r2

  v5 = b2PairManager::AddPair(this, a2, a3, a4);
  v6 = *((_WORD *)v5 + 5);
  if ( (v6 & 1) == 0 )
  {
    *((_WORD *)v5 + 5) = v6 | 1;
    v7 = *((_DWORD *)this + 65540);
    v8 = 4 * (v7 + 49156);
    *(_WORD *)((char *)this + v8) = *((_WORD *)v5 + 2);
    *(_WORD *)((char *)this + v8 + 2) = *((_WORD *)v5 + 3);
    *((_DWORD *)this + 65540) = v7 + 1;
    v6 = *((_WORD *)v5 + 5);
  }
  *((_WORD *)v5 + 5) = v6 & 0xFFFD;
  if ( b2BroadPhase::s_validate )
    b2PairManager::ValidateBuffer(this);
}


// ===== 7e4224 b2PairManager::RemoveBufferedPair(int,int) =====
void __fastcall b2PairManager::RemoveBufferedPair(b2PairManager *this, int a2, int a3)
{
  char *v4; // r0
  __int16 v5; // r2
  int v6; // r12
  int v7; // r2

  v4 = b2PairManager::Find(this, a2, a3);
  if ( v4 )
  {
    v5 = *((_WORD *)v4 + 5);
    if ( (v5 & 1) != 0 )
    {
      *((_WORD *)v4 + 5) = v5 | 2;
      if ( !b2BroadPhase::s_validate )
        return;
LABEL_6:
      b2PairManager::ValidateBuffer(this);
      return;
    }
    *((_WORD *)v4 + 5) = v5 | 1;
    v6 = *((_DWORD *)this + 65540);
    v7 = 4 * (v6 + 49156);
    *(_WORD *)((char *)this + v7) = *((_WORD *)v4 + 2);
    *(_WORD *)((char *)this + v7 + 2) = *((_WORD *)v4 + 3);
    *((_DWORD *)this + 65540) = v6 + 1;
    *((_WORD *)v4 + 5) |= 2u;
    if ( b2BroadPhase::s_validate )
      goto LABEL_6;
  }
}


// ===== 7e42dc b2PairManager::ValidateTable(void) =====
void __fastcall b2PairManager::ValidateTable(b2PairManager *this)
{
  ;
}


// ===== 7e42e0 b2PairManager::Commit(void) =====
void __fastcall b2PairManager::Commit(b2PairManager *this)
{
  int v1; // r11
  int v3; // r8
  unsigned __int16 *v4; // r5
  unsigned __int16 *v5; // r7
  int v6; // r9
  int v7; // r3
  unsigned __int16 *v8; // r0
  unsigned __int16 v9; // r1
  unsigned __int16 *v10; // r4
  int v11; // r2
  int v12; // r0
  unsigned __int16 v13; // r3
  unsigned __int16 *v14; // r9
  int v15; // r1
  int v16; // r2
  int v17; // r0
  char *v18; // [sp+4h] [bp-8h]

  v1 = *(_DWORD *)this;
  if ( *((int *)this + 65540) <= 0 )
    goto LABEL_13;
  v3 = 0;
  v18 = (char *)this + 196624;
  v4 = (unsigned __int16 *)((char *)this + 196624);
  v5 = (unsigned __int16 *)((char *)this + 196624);
  v6 = 0;
  do
  {
    while ( 1 )
    {
      v8 = (unsigned __int16 *)b2PairManager::Find(this, *v5, v5[1]);
      v9 = v8[5];
      v10 = v8;
      v11 = v8[3];
      v17 = v8[2];
      v10[5] = v9 & 0xFFFE;
      if ( (v9 & 2) != 0 )
      {
        if ( (v9 & 4) != 0 )
        {
          (*(void (__fastcall **)(_DWORD, _DWORD, _DWORD, _DWORD))(**((_DWORD **)this + 1) + 12))(
            *((_DWORD *)this + 1),
            *(_DWORD *)(v1 + 16 * v17 + 294944),
            *(_DWORD *)(v1 + 16 * v11 + 294944),
            *(_DWORD *)v10);
          LOWORD(v17) = v10[2];
        }
        v7 = 4 * (v6 + 49156);
        *(_WORD *)((char *)this + v7) = v17;
        ++v6;
        *(_WORD *)((char *)this + v7 + 2) = v10[3];
        goto LABEL_6;
      }
      if ( (v9 & 4) == 0 )
        break;
LABEL_6:
      ++v3;
      v5 += 2;
      if ( *((_DWORD *)this + 65540) <= v3 )
        goto LABEL_10;
    }
    v12 = (*(int (__fastcall **)(_DWORD, _DWORD, _DWORD))(**((_DWORD **)this + 1) + 8))(
            *((_DWORD *)this + 1),
            *(_DWORD *)(v1 + 16 * v17 + 294944),
            *(_DWORD *)(v1 + 16 * v11 + 294944));
    v13 = v10[5];
    *(_DWORD *)v10 = v12;
    ++v3;
    v10[5] = v13 | 4;
    v5 += 2;
  }
  while ( *((_DWORD *)this + 65540) > v3 );
LABEL_10:
  if ( v6 )
  {
    v14 = (unsigned __int16 *)&v18[4 * v6];
    do
    {
      v15 = *v4;
      v16 = v4[1];
      v4 += 2;
      b2PairManager::RemovePair(this, v15, v16);
    }
    while ( v4 != v14 );
  }
LABEL_13:
  *((_DWORD *)this + 65540) = 0;
  if ( b2BroadPhase::s_validate )
    b2PairManager::ValidateTable(this);
}


// ===== 7e44b8 b2PolygonDef::SetAsBox(float,float) =====
int __fastcall b2PolygonDef::SetAsBox(int this, float a2, float a3)
{
  *(float *)(this + 60) = a3;
  *(_DWORD *)(this + 96) = 4;
  *(_DWORD *)(this + 44) = LODWORD(a3) + 0x80000000;
  *(float *)(this + 48) = a2;
  *(_DWORD *)(this + 56) = LODWORD(a2) + 0x80000000;
  *(_DWORD *)(this + 32) = LODWORD(a2) + 0x80000000;
  *(_DWORD *)(this + 36) = LODWORD(a3) + 0x80000000;
  *(float *)(this + 40) = a2;
  *(float *)(this + 52) = a3;
  return this;
}


// ===== 7e44f4 ComputeCentroid(b2Vec2 const*,int) =====
float *__fastcall ComputeCentroid(float *a1, float *a2, int a3)
{
  float v3; // r7
  int v5; // r6
  float *v6; // r5
  float *v7; // r3
  float v8; // r0
  float v9; // r8
  float v10; // r0
  float v11; // r10
  float v13; // [sp+8h] [bp-Ch]

  v3 = 0.0;
  *a1 = 0.0;
  a1[1] = 0.0;
  if ( a3 > 0 )
  {
    v5 = 0;
    v13 = 0.0;
    v6 = a2 + 2;
    do
    {
      v7 = a2;
      if ( a3 > ++v5 )
        v7 = v6;
      v8 = (float)((float)(*(v6 - 2) * v7[1]) - (float)(*(v6 - 1) * *v7)) * 0.5;
      v13 = v13 + v8;
      v9 = v8 * 0.33333;
      v10 = (float)(*(v6 - 2) + 0.0) + *v7;
      v11 = (float)(*(v6 - 1) + 0.0) + v7[1];
      *a1 = v3 + (float)(v9 * v10);
      v3 = v3 + (float)(v9 * v10);
      v6 += 2;
      a1[1] = a1[1] + (float)(v9 * v11);
    }
    while ( v5 != a3 );
  }
  else
  {
    v13 = 0.0;
  }
  *a1 = (float)(1.0 / v13) * v3;
  a1[1] = a1[1] * (float)(1.0 / v13);
  return a1;
}


// ===== 7e4670 b2PolygonShape::TestPoint(b2XForm const&,b2Vec2 const&) =====
int __fastcall b2PolygonShape::TestPoint(int a1, float *a2, float *a3)
{
  int v3; // r4
  float *v4; // r5
  float v5; // r11
  float v6; // r0
  float v7; // r2
  float v8; // r9
  float v9; // r8
  float v10; // r10
  int v11; // r6
  bool v12; // r3

  v3 = *(_DWORD *)(a1 + 280);
  v4 = (float *)a1;
  v5 = a3[1];
  v6 = *a3;
  v7 = *a2;
  if ( v3 <= 0 )
    return 1;
  v8 = v5 - a2[1];
  v9 = (float)((float)(v6 - v7) * a2[2]) + (float)(v8 * a2[3]);
  v10 = (float)((float)(v6 - v7) * a2[4]) + (float)(v8 * a2[5]);
  v11 = (float)((float)((float)(v9 - v4[22]) * v4[38]) + (float)((float)(v10 - v4[23]) * v4[39])) > 0.0;
  if ( (float)((float)((float)(v9 - v4[22]) * v4[38]) + (float)((float)(v10 - v4[23]) * v4[39])) <= 0.0 )
  {
    while ( ++v11 != v3 )
    {
      v12 = (float)((float)((float)(v9 - v4[24]) * v4[40]) + (float)((float)(v10 - v4[25]) * v4[41])) > 0.0;
      v4 += 2;
      if ( v12 )
        return 0;
    }
    return 1;
  }
  return 0;
}


// ===== 7e47e8 b2PolygonShape::TestSegment(b2XForm const&,float *,b2Vec2 *,b2Segment const&,float) =====
int __fastcall b2PolygonShape::TestSegment(int a1, float *a2, float *a3, float *a4, float *a5, float a6)
{
  float v6; // r0
  float v7; // r6
  float v8; // r9
  float v9; // r11
  float v10; // r5
  float v11; // r4
  float v12; // r8
  float *v14; // r4
  int v15; // r5
  float v16; // r7
  float v17; // r6
  float v18; // r10
  float v19; // r6
  float v21; // r5
  float v22; // r4
  float v23; // r6
  float v24; // [sp+4h] [bp-30h]
  float v25; // [sp+Ch] [bp-28h]
  float v26; // [sp+14h] [bp-20h]
  float v27; // [sp+18h] [bp-1Ch]
  int v28; // [sp+20h] [bp-14h]

  v6 = *a5 - *a2;
  v7 = a2[3];
  v25 = (float)(v6 * a2[2]) + (float)((float)(a5[1] - a2[1]) * v7);
  v8 = a2[5];
  v24 = a2[4];
  v9 = (float)(v6 * v24) + (float)((float)(a5[1] - a2[1]) * v8);
  v10 = a5[2] - *a2;
  v11 = a5[3] - a2[1];
  v26 = (float)((float)(a2[2] * v10) + (float)(v7 * v11)) - v25;
  v27 = (float)((float)(v24 * v10) + (float)(v8 * v11)) - v9;
  if ( *(int *)(a1 + 280) <= 0 )
    return 0;
  v12 = 0.0;
  v14 = (float *)a1;
  v15 = 0;
  v28 = -1;
  do
  {
    v16 = v14[38];
    v17 = v14[39];
    v18 = (float)((float)(v14[22] - v25) * v16) + (float)((float)(v14[23] - v9) * v17);
    v19 = (float)(v26 * v16) + (float)(v27 * v17);
    if ( v19 < 0.0 && (float)(v12 * v19) > v18 )
    {
      v28 = v15;
      v12 = v18 / v19;
LABEL_5:
      ++v15;
      if ( a6 < v12 )
        return 0;
      goto LABEL_6;
    }
    if ( v19 <= 0.0 || (float)(a6 * v19) <= v18 )
      goto LABEL_5;
    a6 = v18 / v19;
    ++v15;
    if ( (float)(v18 / v19) < v12 )
      return 0;
LABEL_6:
    v14 += 2;
  }
  while ( v15 != *(_DWORD *)(a1 + 280) );
  if ( v28 == -1 )
    return 0;
  *a3 = v12;
  v21 = *(float *)(a1 + 8 * (v28 + 19));
  v22 = *(float *)(a1 + 8 * (v28 + 19) + 4);
  v23 = (float)(v21 * a2[2]) + (float)(v22 * a2[4]);
  a4[1] = (float)(v21 * a2[3]) + (float)(v22 * a2[5]);
  *a4 = v23;
  return 1;
}


// ===== 7e4b54 b2PolygonShape::ComputeAABB(b2AABB *,b2XForm const&) =====
float __fastcall b2PolygonShape::ComputeAABB(float *a1, float *a2, float *a3)
{
  float v3; // r7
  float v4; // r8
  float v6; // r10
  float v7; // r11
  float v8; // r10
  float v9; // r3
  float v10; // r9
  float v11; // r8
  float v12; // r9
  float v13; // r0
  float v14; // r8
  float v15; // r10
  float v16; // r4
  float v17; // r0
  float v18; // r4
  float v19; // r0
  float v21; // [sp+4h] [bp-10h]
  float v22; // [sp+8h] [bp-Ch]
  float v23; // [sp+Ch] [bp-8h]

  v3 = a3[2];
  v4 = a1[14];
  v23 = a3[4];
  v6 = a1[15];
  v7 = (float)(v3 * v4) + (float)(v23 * v6);
  v22 = a3[3];
  v21 = a3[5];
  v8 = (float)(v4 * v22) + (float)(v6 * v21);
  v9 = a1[16];
  v10 = (float)(v3 * v9) + (float)(v23 * a1[17]);
  v11 = (float)(v22 * v9) + (float)(v21 * a1[17]);
  if ( v7 <= 0.0 )
    LODWORD(v7) += 0x80000000;
  if ( v8 <= 0.0 )
    LODWORD(v8) += 0x80000000;
  if ( v10 <= 0.0 )
    LODWORD(v10) += 0x80000000;
  if ( v11 <= 0.0 )
    LODWORD(v11) += 0x80000000;
  v12 = (float)(v7 * a1[20]) + (float)(v10 * a1[21]);
  v13 = v11 * a1[21];
  v14 = a1[18];
  v15 = (float)(v8 * a1[20]) + v13;
  v16 = a1[19];
  v17 = (float)(v22 * v14) + (float)(v21 * v16);
  v18 = (float)((float)(v3 * v14) + (float)(v23 * v16)) + *a3;
  v19 = v17 + a3[1];
  a2[1] = v19 - v15;
  *a2 = v18 - v12;
  a2[3] = v15 + v19;
  a2[2] = v12 + v18;
  return v12 + v18;
}


// ===== 7e4dc8 b2PolygonShape::ComputeSweptAABB(b2AABB *,b2XForm const&,b2XForm const&) =====
bool __fastcall b2PolygonShape::ComputeSweptAABB(int a1, float *a2, int a3, int a4)
{
  float v7; // r4
  float v8; // r7
  float v9; // r8
  float v10; // r6
  float v11; // r4
  _BOOL4 result; // r0
  float v13; // [sp+0h] [bp-20h] BYREF
  float v14; // [sp+4h] [bp-1Ch]
  float v15; // [sp+8h] [bp-18h]
  float v16; // [sp+Ch] [bp-14h]
  float v17; // [sp+10h] [bp-10h] BYREF
  float v18; // [sp+14h] [bp-Ch]
  float v19; // [sp+18h] [bp-8h]
  float v20; // [sp+1Ch] [bp-4h]

  (*(void (__fastcall **)(int, float *))(*(_DWORD *)a1 + 8))(a1, &v17);
  (*(void (__fastcall **)(int, float *, int))(*(_DWORD *)a1 + 8))(a1, &v13, a4);
  v7 = v17;
  v8 = v18;
  if ( v17 >= v13 )
    v7 = v13;
  v9 = v15;
  if ( v18 >= v14 )
    v8 = v14;
  v10 = v19;
  a2[1] = v8;
  *a2 = v7;
  v11 = v20;
  if ( v10 <= v9 )
    v10 = v9;
  result = v20 > v16;
  if ( v20 <= v16 )
    v11 = v16;
  a2[2] = v10;
  a2[3] = v11;
  return result;
}


// ===== 7e4e8c b2PolygonShape::ComputeMass(b2MassData *) =====
float __fastcall b2PolygonShape::ComputeMass(int a1, float *a2)
{
  int v2; // r10
  float v3; // r11
  float *v4; // r3
  int v5; // r8
  int v6; // r2
  float v7; // r7
  float v8; // r4
  float v9; // r5
  float v10; // r0
  float result; // r0
  float v12; // [sp+8h] [bp-24h]
  int v13; // [sp+Ch] [bp-20h]
  float v14; // [sp+10h] [bp-1Ch]
  float v15; // [sp+14h] [bp-18h]

  v13 = *(_DWORD *)(a1 + 280);
  if ( v13 <= 0 )
  {
    v3 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v12 = 0.0;
  }
  else
  {
    v2 = a1;
    v3 = 0.0;
    v4 = (float *)(a1 + 88);
    v14 = 0.0;
    v5 = 0;
    v15 = 0.0;
    v12 = 0.0;
    do
    {
      v6 = v13;
      ++v5;
      v7 = *(float *)(v2 + 88);
      if ( v5 >= v13 )
        v4 = (float *)(a1 + 88);
      else
        v6 = a1;
      if ( v5 < v13 )
        v4 = (float *)(v6 + 8 * (v5 + 11));
      v8 = v4[1];
      v9 = *(float *)(v2 + 92);
      v10 = (float)((float)(v7 * v8) - (float)(v9 * *v4)) * 0.5;
      v12 = v12 + v10;
      v3 = v3 + (float)((float)(v10 * 0.33333) * (float)((float)(v7 + 0.0) + *v4));
      v14 = v14 + (float)((float)(v10 * 0.33333) * (float)((float)(v9 + 0.0) + v8));
      v15 = v15
          + (float)((float)((float)((float)((float)((float)((float)((float)((float)(v7 * v7) + (float)(v7 * *v4))
                                                                  + (float)(*v4 * *v4))
                                                          * 0.25)
                                                  + (float)((float)(v7 * 0.0) + (float)(*v4 * 0.0)))
                                          * 0.33333)
                                  + 0.0)
                          + (float)((float)((float)((float)((float)((float)((float)(v9 * v9) + (float)(v9 * v8))
                                                                  + (float)(v8 * v8))
                                                          * 0.25)
                                                  + (float)((float)(v9 * 0.0) + (float)(v8 * 0.0)))
                                          * 0.33333)
                                  + 0.0))
                  * (float)((float)(v7 * v8) - (float)(v9 * *v4)));
      v4 = (float *)v13;
      v2 += 8;
    }
    while ( v5 != v13 );
  }
  *a2 = *(float *)(a1 + 20) * v12;
  a2[2] = v14 * (float)(1.0 / v12);
  a2[1] = (float)(1.0 / v12) * v3;
  result = *(float *)(a1 + 20) * v15;
  a2[3] = result;
  return result;
}


// ===== 7e51dc b2PolygonShape::Centroid(b2XForm const&) =====
float *__fastcall b2PolygonShape::Centroid(float *a1, int a2, float *a3)
{
  float v3; // r4
  float v4; // r7
  float v6; // r0

  v3 = *(float *)(a2 + 48);
  v4 = *(float *)(a2 + 52);
  v6 = (float)((float)(v3 * a3[2]) + (float)(v4 * a3[4])) + *a3;
  a1[1] = (float)((float)(v3 * a3[3]) + (float)(v4 * a3[5])) + a3[1];
  *a1 = v6;
  return a1;
}


// ===== 7e526c b2PolygonShape::Support(b2XForm const&,b2Vec2 const&) =====
float *__fastcall b2PolygonShape::Support(float *a1, int a2, float *a3, float *a4)
{
  int v4; // r4
  float v5; // r8
  float v6; // r10
  float v7; // r7
  float v8; // r6
  float v9; // r11
  float v10; // r9
  float v11; // r0
  int v12; // r6
  float v13; // r10
  int v14; // r7
  float v15; // r0
  int v17; // [sp+8h] [bp-1Ch]
  float v19; // [sp+10h] [bp-14h]
  float v20; // [sp+14h] [bp-10h]
  float v21; // [sp+18h] [bp-Ch]
  float v22; // [sp+1Ch] [bp-8h]

  v4 = *(_DWORD *)(a2 + 280);
  v5 = a4[1];
  v6 = *a4;
  v20 = a3[2];
  v19 = a3[3];
  v22 = a3[4];
  v21 = a3[5];
  v7 = *(float *)(a2 + 216);
  v8 = *(float *)(a2 + 220);
  if ( v4 > 1 )
  {
    v9 = (float)(v6 * v20) + (float)(v5 * v19);
    v10 = (float)(v6 * v22) + (float)(v5 * v21);
    v11 = v10 * v8;
    v12 = a2;
    v13 = (float)(v9 * v7) + v11;
    v14 = 1;
    v17 = 0;
    do
    {
      if ( v13 < (float)((float)(v9 * *(float *)(v12 + 224)) + (float)(v10 * *(float *)(v12 + 228))) )
        v17 = v14;
      ++v14;
      if ( v13 < (float)((float)(v9 * *(float *)(v12 + 224)) + (float)(v10 * *(float *)(v12 + 228))) )
        v13 = (float)(v9 * *(float *)(v12 + 224)) + (float)(v10 * *(float *)(v12 + 228));
      v12 += 8;
    }
    while ( v14 != v4 );
    v8 = *(float *)(a2 + 8 * (v17 + 27) + 4);
    v7 = *(float *)(a2 + 8 * (v17 + 27));
  }
  v15 = (float)((float)(v20 * v7) + (float)(v22 * v8)) + *a3;
  a1[1] = (float)((float)(v19 * v7) + (float)(v21 * v8)) + a3[1];
  *a1 = v15;
  return a1;
}


// ===== 7e5444 b2PolygonShape::~b2PolygonShape() =====
void __fastcall b2PolygonShape::~b2PolygonShape(b2PolygonShape *this)
{
  *(_DWORD *)this = &off_991A20;
  b2Shape::~b2Shape(this);
}


// ===== 7e5478 b2PolygonShape::UpdateSweepRadius(b2Vec2 const&) =====
int __fastcall b2PolygonShape::UpdateSweepRadius(int result, float *a2)
{
  int v2; // r3
  float v3; // r7
  int v4; // r8
  int v6; // r4
  int v7; // r6
  float v8; // r9
  float v9; // r5
  int v10; // r3

  v2 = *(_DWORD *)(result + 280);
  v3 = 0.0;
  v4 = result;
  *(_DWORD *)(result + 16) = 0;
  if ( v2 > 0 )
  {
    v6 = result;
    v7 = 0;
    while ( 1 )
    {
      v8 = *(float *)(v6 + 220) - a2[1];
      v9 = sqrtf((float)((float)(*(float *)(v6 + 216) - *a2) * (float)(*(float *)(v6 + 216) - *a2)) + (float)(v8 * v8));
      result = v9 < v3;
      v10 = *(_DWORD *)(v4 + 280);
      ++v7;
      if ( v9 < v3 )
        v9 = v3;
      *(float *)(v4 + 16) = v9;
      v6 += 8;
      if ( v10 <= v7 )
        break;
      v3 = v9;
    }
  }
  return result;
}


// ===== 7e5524 b2Vec2::Normalize(void) =====
int __fastcall b2Vec2::Normalize(b2Vec2 *this)
{
  float v2; // r5

  v2 = sqrtf((float)(*(float *)this * *(float *)this) + (float)(*((float *)this + 1) * *((float *)this + 1)));
  if ( v2 >= 0.00000011921 )
  {
    *(float *)this = *(float *)this * (float)(1.0 / v2);
    *((float *)this + 1) = *((float *)this + 1) * (float)(1.0 / v2);
  }
  else
  {
    v2 = 0.0;
  }
  return LODWORD(v2);
}


// ===== 7e55ac ComputeOBB(b2OBB *,b2Vec2 const*,int) =====
float __fastcall ComputeOBB(float result, int a2, int a3)
{
  int v3; // r0
  int v4; // r4
  char *v5; // r3
  int v6; // r2
  _BYTE *v7; // r3
  float v8; // r10
  float v9; // r9
  int v10; // r5
  float v11; // r4
  float v12; // r8
  float v13; // r11
  float v14; // r7
  float v15; // r6
  float v16; // r4
  float v17; // r6
  float v18; // r5
  float v19; // r6
  float v20; // r2
  float v21; // r0
  float v22; // r9
  bool v23; // cc
  float v24; // [sp+4h] [bp-88h]
  float v25; // [sp+8h] [bp-84h]
  float v26; // [sp+Ch] [bp-80h]
  float v27; // [sp+10h] [bp-7Ch]
  int v28; // [sp+1Ch] [bp-70h]
  float *v29; // [sp+20h] [bp-6Ch]
  float v30; // [sp+24h] [bp-68h]
  int v31; // [sp+28h] [bp-64h]
  float v32; // [sp+2Ch] [bp-60h]
  int v34; // [sp+38h] [bp-54h] BYREF
  int v35; // [sp+3Ch] [bp-50h] BYREF
  float v36; // [sp+80h] [bp-Ch] BYREF
  float v37; // [sp+84h] [bp-8h]
  _BYTE v38[4]; // [sp+88h] [bp-4h] BYREF

  v30 = result;
  if ( a3 > 0 )
  {
    v28 = 8 * a3;
    v3 = 0;
    v4 = 8 * a3;
    do
    {
      *(int *)((char *)&v34 + v3) = *(_DWORD *)(a2 + v3);
      v5 = (char *)&v34 + v3;
      v6 = *(_DWORD *)(a2 + v3 + 4);
      v3 += 8;
      *((_DWORD *)v5 + 1) = v6;
    }
    while ( v3 != v4 );
    v7 = &v38[v28];
    *((_DWORD *)v7 - 20) = v34;
    v32 = 3.4028e38;
    v29 = (float *)&v35;
    v31 = 1;
    *((_DWORD *)v7 - 19) = v35;
    do
    {
      v8 = 3.4028e38;
      v26 = *v29;
      v9 = -3.4028e38;
      v10 = 0;
      v25 = *(v29 - 1);
      v11 = v29[2] - *v29;
      v36 = v29[1] - v25;
      v37 = v11;
      b2Vec2::Normalize((b2Vec2 *)&v36);
      v12 = v36;
      v24 = -3.4028e38;
      LODWORD(v27) = LODWORD(v37) + 0x80000000;
      v13 = 3.4028e38;
      do
      {
        v14 = *(float *)((char *)&v34 + v10) - v25;
        v15 = *(float *)((char *)&v34 + v10 + 4) - v26;
        v16 = (float)(v36 * v14) + (float)(v37 * v15);
        v17 = (float)(v27 * v14) + (float)(v36 * v15);
        if ( v8 >= v16 )
          v8 = v16;
        if ( v13 >= v17 )
          v13 = v17;
        if ( v9 <= v16 )
          v9 = v16;
        v10 += 8;
        if ( v24 <= v17 )
          v24 = v17;
      }
      while ( v10 != v28 );
      v18 = v9 - v8;
      v19 = (float)(v9 - v8) * (float)(v24 - v13);
      LODWORD(result) = (float)(v32 * 0.95) > v19;
      if ( (float)(v32 * 0.95) > v19 )
      {
        v20 = v37;
        *(float *)LODWORD(v30) = v36;
        *(float *)(LODWORD(v30) + 12) = v12;
        *(float *)(LODWORD(v30) + 4) = v20;
        *(float *)(LODWORD(v30) + 8) = v27;
        v21 = (float)(v9 + v8) * 0.5;
        v22 = (float)(v21 * *(float *)LODWORD(v30)) + (float)(v27 * (float)((float)(v13 + v24) * 0.5));
        *(float *)(LODWORD(v30) + 20) = v26
                                      + (float)((float)(v21 * *(float *)(LODWORD(v30) + 4))
                                              + (float)(v12 * (float)((float)(v13 + v24) * 0.5)));
        *(float *)(LODWORD(v30) + 16) = v25 + v22;
        *(float *)(LODWORD(v30) + 28) = (float)(v24 - v13) * 0.5;
        result = v18 * 0.5;
        *(float *)(LODWORD(v30) + 24) = v18 * 0.5;
        v32 = v19;
      }
      v23 = a3 < ++v31;
      v29 += 2;
    }
    while ( !v23 );
  }
  return result;
}


// ===== 7e5928 b2PolygonShape::b2PolygonShape(b2ShapeDef const*) =====
void __fastcall b2PolygonShape::b2PolygonShape(b2PolygonShape *this, const b2ShapeDef *a2)
{
  int v4; // r3
  const b2ShapeDef *v5; // r2
  b2PolygonShape *v6; // r6
  b2PolygonShape *v7; // r3
  int v8; // r1
  int v9; // r0
  int v10; // r10
  int v11; // r8
  int v12; // r7
  int v13; // r10
  int v14; // r10
  float v15; // r9
  float v16; // r2
  float *v17; // r5
  int v18; // r6
  b2PolygonShape *v19; // r2
  int v20; // r3
  float *v21; // r12
  float v22; // r8
  float v23; // r0
  float v24; // r4
  float v25; // r9
  float v26; // r10
  float v27; // r11
  float v28; // [sp+Ch] [bp-20h]
  float v29; // [sp+10h] [bp-1Ch]
  float v30; // [sp+14h] [bp-18h]
  int v31; // [sp+18h] [bp-14h]
  float v32[3]; // [sp+20h] [bp-Ch] BYREF

  b2Shape::b2Shape(this, a2);
  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = &off_991A20;
  v4 = *((_DWORD *)a2 + 24);
  *((_DWORD *)this + 70) = v4;
  if ( v4 > 0 )
  {
    v5 = a2;
    v6 = this;
    v7 = this;
    v8 = 0;
    do
    {
      ++v8;
      *((_DWORD *)v7 + 22) = *((_DWORD *)v5 + 8);
      v9 = *((_DWORD *)v5 + 9);
      v5 = (const b2ShapeDef *)((char *)v5 + 8);
      *((_DWORD *)v7 + 23) = v9;
      v10 = *((_DWORD *)this + 70);
      v7 = (b2PolygonShape *)((char *)v7 + 8);
    }
    while ( v10 > v8 );
    if ( v10 > 0 )
    {
      v11 = 0;
      do
      {
        v12 = v11 + 1;
        if ( v11 + 1 >= v10 )
          v13 = 0;
        else
          v13 = v11 + 1;
        v14 = v13 + 11;
        v15 = *((float *)this + 2 * v14) - *((float *)v6 + 22);
        *((float *)v6 + 38) = *((float *)this + 2 * v14 + 1) - *((float *)v6 + 23);
        *((_DWORD *)v6 + 39) = LODWORD(v15) + 0x80000000;
        b2Vec2::Normalize((b2PolygonShape *)((char *)this + 8 * v11 + 152));
        v10 = *((_DWORD *)this + 70);
        v6 = (b2PolygonShape *)((char *)v6 + 8);
        ++v11;
      }
      while ( v10 > v12 );
    }
  }
  ComputeCentroid(v32, (float *)a2 + 8, *((_DWORD *)a2 + 24));
  v16 = v32[0];
  *((float *)this + 13) = v32[1];
  *((float *)this + 12) = v16;
  ComputeOBB(COERCE_FLOAT((b2PolygonShape *)((char *)this + 56)), (int)this + 88, *((_DWORD *)this + 70));
  v31 = *((_DWORD *)this + 70);
  if ( v31 > 0 )
  {
    v17 = (float *)this;
    v18 = 0;
    v29 = *((float *)this + 12);
    v19 = this;
    v30 = *((float *)this + 13);
    do
    {
      if ( v18 )
        v20 = v18 - 1;
      else
        v20 = v31 - 1;
      v21 = (float *)((char *)v19 + 8 * v20 + 152);
      v22 = v21[1];
      v23 = v17[22] - v29;
      v24 = v17[38];
      v25 = (float)((float)(*v21 * v23) + (float)(v22 * (float)(v17[23] - v30))) - 0.04;
      v26 = v17[39];
      ++v18;
      v27 = (float)((float)(v24 * v23) + (float)(v26 * (float)(v17[23] - v30))) - 0.04;
      v28 = 1.0 / (float)((float)(v26 * *v21) - (float)(v24 * v22));
      v17[55] = v30 + (float)(v28 * (float)((float)(*v21 * v27) - (float)(v24 * v25)));
      v17[54] = v29 + (float)(v28 * (float)((float)(v26 * v25) - (float)(v22 * v27)));
      v17 += 2;
    }
    while ( v18 < v31 );
  }
}


// ===== 7e5c34 b2PolygonShape::b2PolygonShape(b2ShapeDef const*) =====
void __fastcall b2PolygonShape::b2PolygonShape(b2PolygonShape *this, const b2ShapeDef *a2)
{
  int v4; // r3
  const b2ShapeDef *v5; // r2
  b2PolygonShape *v6; // r6
  b2PolygonShape *v7; // r3
  int v8; // r1
  int v9; // r0
  int v10; // r10
  int v11; // r8
  int v12; // r7
  int v13; // r10
  int v14; // r10
  float v15; // r9
  float v16; // r2
  float *v17; // r5
  int v18; // r6
  b2PolygonShape *v19; // r2
  int v20; // r3
  float *v21; // r12
  float v22; // r8
  float v23; // r0
  float v24; // r4
  float v25; // r9
  float v26; // r10
  float v27; // r11
  float v28; // [sp+Ch] [bp-20h]
  float v29; // [sp+10h] [bp-1Ch]
  float v30; // [sp+14h] [bp-18h]
  int v31; // [sp+18h] [bp-14h]
  float v32[3]; // [sp+20h] [bp-Ch] BYREF

  b2Shape::b2Shape(this, a2);
  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = &off_991A20;
  v4 = *((_DWORD *)a2 + 24);
  *((_DWORD *)this + 70) = v4;
  if ( v4 > 0 )
  {
    v5 = a2;
    v6 = this;
    v7 = this;
    v8 = 0;
    do
    {
      ++v8;
      *((_DWORD *)v7 + 22) = *((_DWORD *)v5 + 8);
      v9 = *((_DWORD *)v5 + 9);
      v5 = (const b2ShapeDef *)((char *)v5 + 8);
      *((_DWORD *)v7 + 23) = v9;
      v10 = *((_DWORD *)this + 70);
      v7 = (b2PolygonShape *)((char *)v7 + 8);
    }
    while ( v10 > v8 );
    if ( v10 > 0 )
    {
      v11 = 0;
      do
      {
        v12 = v11 + 1;
        if ( v11 + 1 >= v10 )
          v13 = 0;
        else
          v13 = v11 + 1;
        v14 = v13 + 11;
        v15 = *((float *)this + 2 * v14) - *((float *)v6 + 22);
        *((float *)v6 + 38) = *((float *)this + 2 * v14 + 1) - *((float *)v6 + 23);
        *((_DWORD *)v6 + 39) = LODWORD(v15) + 0x80000000;
        b2Vec2::Normalize((b2PolygonShape *)((char *)this + 8 * v11 + 152));
        v10 = *((_DWORD *)this + 70);
        v6 = (b2PolygonShape *)((char *)v6 + 8);
        ++v11;
      }
      while ( v10 > v12 );
    }
  }
  ComputeCentroid(v32, (float *)a2 + 8, *((_DWORD *)a2 + 24));
  v16 = v32[0];
  *((float *)this + 13) = v32[1];
  *((float *)this + 12) = v16;
  ComputeOBB(COERCE_FLOAT((b2PolygonShape *)((char *)this + 56)), (int)this + 88, *((_DWORD *)this + 70));
  v31 = *((_DWORD *)this + 70);
  if ( v31 > 0 )
  {
    v17 = (float *)this;
    v18 = 0;
    v29 = *((float *)this + 12);
    v19 = this;
    v30 = *((float *)this + 13);
    do
    {
      if ( v18 )
        v20 = v18 - 1;
      else
        v20 = v31 - 1;
      v21 = (float *)((char *)v19 + 8 * v20 + 152);
      v22 = v21[1];
      v23 = v17[22] - v29;
      v24 = v17[38];
      v25 = (float)((float)(*v21 * v23) + (float)(v22 * (float)(v17[23] - v30))) - 0.04;
      v26 = v17[39];
      ++v18;
      v27 = (float)((float)(v24 * v23) + (float)(v26 * (float)(v17[23] - v30))) - 0.04;
      v28 = 1.0 / (float)((float)(v26 * *v21) - (float)(v24 * v22));
      v17[55] = v30 + (float)(v28 * (float)((float)(*v21 * v27) - (float)(v24 * v25)));
      v17[54] = v29 + (float)(v28 * (float)((float)(v26 * v25) - (float)(v22 * v27)));
      v17 += 2;
    }
    while ( v18 < v31 );
  }
}


// ===== 7e5f40 b2PolygonDef::SetAsBox(float,float,b2Vec2 const&,float) =====
float __fastcall b2PolygonDef::SetAsBox(b2PolygonDef *this, float a2, float a3, const b2Vec2 *a4, float a5)
{
  b2PolygonDef *v6; // r4
  float v7; // r8
  float result; // r0
  int v9; // r11
  float v10; // r9
  int i; // r5
  float v12; // r6
  float v13; // r10
  float v14; // [sp+4h] [bp-10h]
  float v15; // [sp+8h] [bp-Ch]
  float v16; // [sp+Ch] [bp-8h]

  v6 = this;
  b2PolygonDef::SetAsBox((int)this, a2, a3);
  v7 = cosf(a5);
  result = sinf(a5);
  v9 = *((_DWORD *)v6 + 24);
  v10 = result;
  v14 = *(float *)a4;
  v15 = *((float *)a4 + 1);
  LODWORD(v16) = LODWORD(result) + 0x80000000;
  if ( v9 > 0 )
  {
    for ( i = 0; i < v9; ++i )
    {
      v12 = *((float *)v6 + 9);
      v13 = (float)(v7 * *((float *)v6 + 8)) + (float)(v16 * v12);
      *((float *)v6 + 9) = v15 + (float)((float)(v10 * *((float *)v6 + 8)) + (float)(v7 * v12));
      result = v14 + v13;
      *((float *)v6 + 8) = v14 + v13;
      v6 = (b2PolygonDef *)((char *)v6 + 8);
    }
  }
  return result;
}


// ===== 7e602c b2PolygonShape::~b2PolygonShape() =====
void __fastcall b2PolygonShape::~b2PolygonShape(b2PolygonShape *this)
{
  *(_DWORD *)this = &off_991A20;
  b2Shape::~b2Shape(this);
  LC_API_FREE_0(this);
}


// ===== 7e6068 b2Shape::b2Shape(b2ShapeDef const*) =====
void __fastcall b2Shape::b2Shape(b2Shape *this, const b2ShapeDef *a2)
{
  int v2; // r2

  *(_DWORD *)this = &off_991A48;
  *((_DWORD *)this + 11) = *((_DWORD *)a2 + 2);
  *((_DWORD *)this + 6) = *((_DWORD *)a2 + 3);
  *((_DWORD *)this + 7) = *((_DWORD *)a2 + 4);
  v2 = *((_DWORD *)a2 + 5);
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 5) = v2;
  *((_DWORD *)this + 3) = 0;
  *((_WORD *)this + 16) = -1;
  *((_WORD *)this + 17) = *((_WORD *)a2 + 13);
  *((_WORD *)this + 18) = *((_WORD *)a2 + 14);
  *((_WORD *)this + 19) = *((_WORD *)a2 + 15);
  *((_BYTE *)this + 40) = *((_BYTE *)a2 + 24);
}


// ===== 7e60f0 b2Shape::b2Shape(b2ShapeDef const*) =====
void __fastcall b2Shape::b2Shape(b2Shape *this, const b2ShapeDef *a2)
{
  int v2; // r2

  *(_DWORD *)this = &off_991A48;
  *((_DWORD *)this + 11) = *((_DWORD *)a2 + 2);
  *((_DWORD *)this + 6) = *((_DWORD *)a2 + 3);
  *((_DWORD *)this + 7) = *((_DWORD *)a2 + 4);
  v2 = *((_DWORD *)a2 + 5);
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 5) = v2;
  *((_DWORD *)this + 3) = 0;
  *((_WORD *)this + 16) = -1;
  *((_WORD *)this + 17) = *((_WORD *)a2 + 13);
  *((_WORD *)this + 18) = *((_WORD *)a2 + 14);
  *((_WORD *)this + 19) = *((_WORD *)a2 + 15);
  *((_BYTE *)this + 40) = *((_BYTE *)a2 + 24);
}


// ===== 7e6178 b2Shape::~b2Shape() =====
void __fastcall b2Shape::~b2Shape(b2Shape *this)
{
  ;
}


// ===== 7e617c b2Shape::~b2Shape() =====
void __fastcall b2Shape::~b2Shape(b2Shape *this)
{
  ;
}


// ===== 7e6180 b2Shape::DestroyProxy(b2BroadPhase *) =====
void __fastcall b2Shape::DestroyProxy(b2Shape *this, b2BroadPhase *a2)
{
  int v2; // r3

  v2 = *((unsigned __int16 *)this + 16);
  if ( v2 != 0xFFFF )
  {
    b2BroadPhase::DestroyProxy(a2, v2);
    *((_WORD *)this + 16) = -1;
  }
}


// ===== 7e61b0 b2Shape::RefilterProxy(b2BroadPhase *,b2XForm const&) =====
int __fastcall b2Shape::RefilterProxy(int result, b2BroadPhase *this, int a3)
{
  _WORD *v4; // r5
  float v6; // r7
  float v7; // r8
  float v8[2]; // [sp+0h] [bp-10h] BYREF
  float v9; // [sp+8h] [bp-8h]
  float v10; // [sp+Ch] [bp-4h]

  v4 = (_WORD *)result;
  if ( *(unsigned __int16 *)(result + 32) != 0xFFFF )
  {
    b2BroadPhase::DestroyProxy(this, *(unsigned __int16 *)(result + 32));
    (*(void (__fastcall **)(_WORD *, float *, int))(*(_DWORD *)v4 + 8))(v4, v8, a3);
    v6 = v8[0] - *((float *)this + 95241);
    v7 = v8[1] - *((float *)this + 95242);
    if ( v6 <= (float)(*((float *)this + 95239) - v9) )
      v6 = *((float *)this + 95239) - v9;
    if ( v7 <= (float)(*((float *)this + 95240) - v10) )
      v7 = *((float *)this + 95240) - v10;
    if ( v6 <= v7 )
      v6 = v7;
    result = v6 < 0.0;
    if ( v6 < 0.0 )
    {
      result = b2BroadPhase::CreateProxy((int)this, v8, (int)v4);
      v4[16] = result;
    }
    else
    {
      v4[16] = -1;
    }
  }
  return result;
}


// ===== 7e62d4 b2Shape::CreateProxy(b2BroadPhase *,b2XForm const&) =====
int __fastcall b2Shape::CreateProxy(_WORD *a1, float *a2)
{
  float v4; // r7
  float v5; // r8
  int result; // r0
  float v7[2]; // [sp+0h] [bp-10h] BYREF
  float v8; // [sp+8h] [bp-8h]
  float v9; // [sp+Ch] [bp-4h]

  (*(void (__fastcall **)(_WORD *, float *))(*(_DWORD *)a1 + 8))(a1, v7);
  v4 = v7[0] - a2[95241];
  v5 = v7[1] - a2[95242];
  if ( v4 <= (float)(a2[95239] - v8) )
    v4 = a2[95239] - v8;
  if ( v5 <= (float)(a2[95240] - v9) )
    v5 = a2[95240] - v9;
  if ( v4 <= v5 )
    v4 = v5;
  result = v4 < 0.0;
  if ( v4 < 0.0 )
  {
    result = b2BroadPhase::CreateProxy((int)a2, v7, (int)a1);
    a1[16] = result;
  }
  else
  {
    a1[16] = -1;
  }
  return result;
}


// ===== 7e63d0 b2Shape::Synchronize(b2BroadPhase *,b2XForm const&,b2XForm const&) =====
int __fastcall b2Shape::Synchronize(unsigned __int16 *a1, float *a2)
{
  float v4; // r7
  float v5; // r8
  float v7[2]; // [sp+0h] [bp-10h] BYREF
  float v8; // [sp+8h] [bp-8h]
  float v9; // [sp+Ch] [bp-4h]

  if ( a1[16] == 0xFFFF )
    return 0;
  (*(void (__fastcall **)(unsigned __int16 *, float *))(*(_DWORD *)a1 + 12))(a1, v7);
  v4 = v7[0] - a2[95241];
  v5 = v7[1] - a2[95242];
  if ( v4 <= (float)(a2[95239] - v8) )
    v4 = a2[95239] - v8;
  if ( v5 <= (float)(a2[95240] - v9) )
    v5 = a2[95240] - v9;
  if ( v4 <= v5 )
    v4 = v5;
  if ( v4 >= 0.0 )
    return 0;
  b2BroadPhase::MoveProxy((b2BroadPhase *)a2, a1[16], (const b2AABB *)v7);
  return 1;
}


// ===== 7e64d8 b2Shape::~b2Shape() =====
void __fastcall b2Shape::~b2Shape(b2Shape *this)
{
  b2Shape::~b2Shape(this);
  LC_API_FREE_0(this);
}


// ===== 7e64f4 b2Shape::Destroy(b2Shape*,b2BlockAllocator *) =====
_DWORD *__fastcall b2Shape::Destroy(_DWORD *this, b2Shape *a2, b2BlockAllocator *a3)
{
  int v3; // r3
  void *v4; // r4

  v3 = *(this + 1);
  v4 = this;
  if ( v3 )
  {
    if ( v3 == 1 )
    {
      (*(void (__fastcall **)(_DWORD *, b2Shape *, b2BlockAllocator *))(*this + 20))(this, a2, a3);
      return (_DWORD *)b2BlockAllocator::Free(a2, v4, 284);
    }
  }
  else
  {
    (*(void (__fastcall **)(_DWORD *, b2Shape *, b2BlockAllocator *))(*this + 20))(this, a2, a3);
    return (_DWORD *)b2BlockAllocator::Free(a2, v4, 60);
  }
  return this;
}


// ===== 7e6558 b2Shape::Create(b2ShapeDef const*,b2BlockAllocator *) =====
b2CircleShape *__fastcall b2Shape::Create(b2Shape *this, const b2ShapeDef *a2, b2BlockAllocator *a3)
{
  int v3; // r3
  b2CircleShape *v5; // r5
  b2PolygonShape *v7; // r5

  v3 = *((_DWORD *)this + 1);
  if ( v3 )
  {
    if ( v3 == 1 )
    {
      v7 = (b2PolygonShape *)b2BlockAllocator::Allocate(a2, 284);
      b2PolygonShape::b2PolygonShape(v7, this);
      return v7;
    }
    else
    {
      return nullptr;
    }
  }
  else
  {
    v5 = (b2CircleShape *)b2BlockAllocator::Allocate(a2, 60);
    b2CircleShape::b2CircleShape(v5, this);
    return v5;
  }
}


// ===== 7e65bc b2PairCallback::~b2PairCallback() =====
void __fastcall b2PairCallback::~b2PairCallback(b2PairCallback *this)
{
  ;
}


// ===== 7e65c0 b2Contact::~b2Contact() =====
void __fastcall b2Contact::~b2Contact(b2Contact *this)
{
  ;
}


// ===== 7e65c4 b2NullContact::Evaluate(b2ContactListener *) =====
void __fastcall b2NullContact::Evaluate(b2NullContact *this, b2ContactListener *a2)
{
  ;
}


// ===== 7e65c8 b2NullContact::GetManifolds(void) =====
int __fastcall b2NullContact::GetManifolds(b2NullContact *this)
{
  return 0;
}


// ===== 7e65d0 b2NullContact::~b2NullContact() =====
void __fastcall b2NullContact::~b2NullContact(b2NullContact *this)
{
  ;
}


// ===== 7e65d4 b2World::SetDestructionListener(b2DestructionListener *) =====
int __fastcall b2World::SetDestructionListener(int this, b2DestructionListener *a2)
{
  *(_DWORD *)(this + 103000) = a2;
  return this;
}


// ===== 7e65e4 b2World::SetBoundaryListener(b2BoundaryListener *) =====
int __fastcall b2World::SetBoundaryListener(int this, b2BoundaryListener *a2)
{
  *(_DWORD *)(this + 103004) = a2;
  return this;
}


// ===== 7e65f4 b2World::SetContactFilter(b2ContactFilter *) =====
int __fastcall b2World::SetContactFilter(int result, int a2)
{
  *(_DWORD *)(result + 103008) = a2;
  return result;
}


// ===== 7e6604 b2World::SetContactListener(b2ContactListener *) =====
int __fastcall b2World::SetContactListener(int this, b2ContactListener *a2)
{
  *(_DWORD *)(this + 103012) = a2;
  return this;
}


// ===== 7e6614 b2World::SetDebugDraw(b2DebugDraw *) =====
int __fastcall b2World::SetDebugDraw(int result, int a2)
{
  *(_DWORD *)(result + 103016) = a2;
  return result;
}


// ===== 7e6624 b2World::DrawShape(b2Shape *,b2XForm const&,b2Color const&,bool) =====
int __fastcall b2World::DrawShape(int result, int a2, float *a3, int a4, char a5)
{
  int v5; // r6
  int v6; // r1
  float v8; // r5
  float v9; // r7
  float v10; // r0
  int v11; // r1
  int v12; // r2
  int v13; // r3
  float v14; // r4
  int v15; // r8
  int v16; // r7
  float v17; // r6
  float v18; // r0
  int v19; // r7
  float v20; // r8
  float v21; // r0
  int v22; // [sp+Ch] [bp-70h]
  int v23; // [sp+10h] [bp-6Ch]
  int v25; // [sp+1Ch] [bp-60h]
  _DWORD v26[16]; // [sp+24h] [bp-58h] BYREF
  _DWORD v27[3]; // [sp+64h] [bp-18h] BYREF
  _DWORD v28[3]; // [sp+70h] [bp-Ch] BYREF

  v5 = a2;
  v6 = *(_DWORD *)(a2 + 4);
  v27[0] = 1063675494;
  v27[2] = 1058642330;
  v22 = result;
  v27[1] = 1058642330;
  if ( v6 )
  {
    if ( v6 == 1 )
    {
      v23 = *(_DWORD *)(v5 + 280);
      if ( v23 > 0 )
      {
        v15 = v5;
        v16 = 0;
        v25 = v5;
        do
        {
          v17 = *(float *)(v15 + 92);
          v18 = (float)((float)(*(float *)(v15 + 88) * a3[2]) + (float)(v17 * a3[4])) + *a3;
          *(float *)&v26[v16 + 1] = (float)((float)(*(float *)(v15 + 88) * a3[3]) + (float)(v17 * a3[5])) + a3[1];
          *(float *)&v26[v16] = v18;
          v16 += 2;
          v15 += 8;
        }
        while ( v16 != 2 * v23 );
        v5 = v25;
      }
      result = (*(int (__fastcall **)(_DWORD, _DWORD *, int, int))(**(_DWORD **)(v22 + 103016) + 12))(
                 *(_DWORD *)(v22 + 103016),
                 v26,
                 v23,
                 a4);
      if ( a5 )
      {
        if ( v23 > 0 )
        {
          v19 = 0;
          do
          {
            v20 = *(float *)(v5 + 220);
            v21 = (float)((float)(*(float *)(v5 + 216) * a3[2]) + (float)(v20 * a3[4])) + *a3;
            *(float *)&v26[v19 + 1] = (float)((float)(*(float *)(v5 + 216) * a3[3]) + (float)(v20 * a3[5])) + a3[1];
            *(float *)&v26[v19] = v21;
            v19 += 2;
            v5 += 8;
          }
          while ( v19 != 2 * v23 );
        }
        return (*(int (__fastcall **)(_DWORD, _DWORD *, int, _DWORD *))(**(_DWORD **)(v22 + 103016) + 8))(
                 *(_DWORD *)(v22 + 103016),
                 v26,
                 v23,
                 v27);
      }
    }
  }
  else
  {
    v8 = *(float *)(v5 + 52);
    v9 = (float)((float)(*(float *)(v5 + 48) * a3[3]) + (float)(v8 * a3[5])) + a3[1];
    v10 = (float)((float)(*(float *)(v5 + 48) * a3[2]) + (float)(v8 * a3[4])) + *a3;
    v11 = *((_DWORD *)a3 + 2);
    v12 = *((_DWORD *)a3 + 3);
    v13 = *(_DWORD *)(v22 + 103016);
    v14 = *(float *)(v5 + 56);
    v26[0] = v11;
    *(float *)v28 = v10;
    v26[1] = v12;
    *(float *)&v28[1] = v9;
    result = (*(int (__fastcall **)(int, _DWORD *, float, _DWORD *, int))(*(_DWORD *)v13 + 20))(
               v13,
               v28,
               COERCE_FLOAT(LODWORD(v14)),
               v26,
               a4);
    if ( a5 )
      return (*(int (__fastcall **)(_DWORD, _DWORD *, _DWORD, _DWORD *))(**(_DWORD **)(v22 + 103016) + 16))(
               *(_DWORD *)(v22 + 103016),
               v28,
               v14 - 0.04,
               v27);
  }
  return result;
}


// ===== 7e6968 b2World::GetProxyCount(void) =====
int __fastcall b2World::GetProxyCount(b2World *this)
{
  return *(_DWORD *)(*((_DWORD *)this + 25718) + 380980);
}


// ===== 7e6984 b2World::GetPairCount(void) =====
int __fastcall b2World::GetPairCount(b2World *this)
{
  return *(_DWORD *)(*((_DWORD *)this + 25718) + 196620);
}


// ===== 7e69a0 b2World::Validate(void) =====
void __fastcall b2World::Validate(b2BroadPhase **this)
{
  b2BroadPhase::Validate(*(this + 25718));
}


// ===== 7e69b0 b2World::DrawJoint(b2Joint *) =====
int __fastcall b2World::DrawJoint(b2World *this, b2Joint *a2)
{
  int v2; // r12
  int v3; // r2
  void (__fastcall **v4)(_BYTE *); // r3
  int result; // r0
  int v8; // r3
  _DWORD v9[3]; // [sp+4h] [bp-3Ch] BYREF
  _BYTE v10[8]; // [sp+10h] [bp-30h] BYREF
  _BYTE v11[8]; // [sp+18h] [bp-28h] BYREF
  _BYTE v12[8]; // [sp+20h] [bp-20h] BYREF
  _BYTE v13[8]; // [sp+28h] [bp-18h] BYREF
  _DWORD v14[2]; // [sp+30h] [bp-10h] BYREF
  _DWORD v15[2]; // [sp+38h] [bp-8h] BYREF

  v2 = *((_DWORD *)a2 + 12);
  v3 = *((_DWORD *)a2 + 13);
  v4 = *(void (__fastcall ***)(_BYTE *))a2;
  v15[0] = *(_DWORD *)(v2 + 4);
  v15[1] = *(_DWORD *)(v2 + 8);
  v14[0] = *(_DWORD *)(v3 + 4);
  v14[1] = *(_DWORD *)(v3 + 8);
  (*v4)(v13);
  result = (*(int (__fastcall **)(_BYTE *, b2Joint *))(*(_DWORD *)a2 + 4))(v12, a2);
  v8 = *((_DWORD *)a2 + 1);
  v9[2] = 1061997773;
  v9[0] = 1056964608;
  v9[1] = 1061997773;
  switch ( v8 )
  {
    case 4:
      b2PulleyJoint::GetGroundAnchor1((b2PulleyJoint *)v11);
      b2PulleyJoint::GetGroundAnchor2((b2PulleyJoint *)v10);
      (*(void (__fastcall **)(_DWORD, _BYTE *, _BYTE *, _DWORD *))(**((_DWORD **)this + 25754) + 24))(
        *((_DWORD *)this + 25754),
        v11,
        v13,
        v9);
      (*(void (__fastcall **)(_DWORD, _BYTE *, _BYTE *, _DWORD *))(**((_DWORD **)this + 25754) + 24))(
        *((_DWORD *)this + 25754),
        v10,
        v12,
        v9);
      return (*(int (__fastcall **)(_DWORD, _BYTE *, _BYTE *, _DWORD *))(**((_DWORD **)this + 25754) + 24))(
               *((_DWORD *)this + 25754),
               v11,
               v10,
               v9);
    case 5:
      break;
    case 3:
      return (*(int (__fastcall **)(_DWORD, _BYTE *, _BYTE *, _DWORD *))(**((_DWORD **)this + 25754) + 24))(
               *((_DWORD *)this + 25754),
               v13,
               v12,
               v9);
    default:
      (*(void (__fastcall **)(_DWORD, _DWORD *, _BYTE *, _DWORD *))(**((_DWORD **)this + 25754) + 24))(
        *((_DWORD *)this + 25754),
        v15,
        v13,
        v9);
      (*(void (__fastcall **)(_DWORD, _BYTE *, _BYTE *, _DWORD *))(**((_DWORD **)this + 25754) + 24))(
        *((_DWORD *)this + 25754),
        v13,
        v12,
        v9);
      return (*(int (__fastcall **)(_DWORD, _DWORD *, _BYTE *, _DWORD *))(**((_DWORD **)this + 25754) + 24))(
               *((_DWORD *)this + 25754),
               v14,
               v12,
               v9);
  }
  return result;
}


// ===== 7e6b78 b2World::DrawDebugData(void) =====
b2DebugDraw *__fastcall b2World::DrawDebugData(b2World *this)
{
  b2DebugDraw *result; // r0
  int i; // r5
  int j; // r4
  _DWORD *v4; // r3
  b2Joint *k; // r4
  float *v6; // r4
  float v7; // r6
  float v8; // r7
  int m; // r3
  int v10; // r9
  float v11; // r10
  float *v12; // r11
  int v13; // r9
  float v14; // r8
  float v15; // r2
  float *v16; // r9
  float v17; // r10
  float v18; // r0
  int v19; // r3
  int v20; // r5
  float v21; // r11
  float v22; // r7
  unsigned __int16 *v23; // r4
  float v24; // r9
  float v25; // r10
  float v26; // r8
  int v27; // r3
  int v28; // r0
  void (__fastcall *v29)(int, float *, int, int *); // r12
  int v30; // r5
  int n; // r4
  int v32; // r3
  int v33; // r2
  int v34; // r7
  float v35; // r10
  float v36; // r8
  float v37; // r0
  float v38; // r8
  float v39; // r0
  float v40; // r11
  float v41; // r8
  float v42; // r0
  _DWORD *ii; // r5
  int v44; // r1
  int v45; // r2
  int v46; // r3
  int v47; // r1
  int v48; // r3
  float v49; // [sp+8h] [bp-D4h]
  float v50; // [sp+10h] [bp-CCh]
  int v51; // [sp+14h] [bp-C8h]
  float v52; // [sp+14h] [bp-C8h]
  unsigned __int16 *v53; // [sp+18h] [bp-C4h]
  float v54; // [sp+18h] [bp-C4h]
  float v55; // [sp+1Ch] [bp-C0h]
  float v56; // [sp+20h] [bp-BCh]
  float v57; // [sp+24h] [bp-B8h]
  int v59; // [sp+30h] [bp-ACh]
  int v60; // [sp+34h] [bp-A8h]
  float *v61; // [sp+44h] [bp-98h]
  b2DebugDraw *Flags; // [sp+4Ch] [bp-90h]
  float v63; // [sp+50h] [bp-8Ch] BYREF
  float v64; // [sp+54h] [bp-88h]
  int v65; // [sp+58h] [bp-84h]
  float v66; // [sp+5Ch] [bp-80h]
  int v67; // [sp+60h] [bp-7Ch]
  int v68; // [sp+64h] [bp-78h]
  float v69; // [sp+68h] [bp-74h]
  int v70; // [sp+6Ch] [bp-70h]
  float v71; // [sp+70h] [bp-6Ch] BYREF
  float v72; // [sp+74h] [bp-68h]
  float v73; // [sp+78h] [bp-64h]
  float v74; // [sp+7Ch] [bp-60h]
  float v75; // [sp+80h] [bp-5Ch]
  float v76; // [sp+84h] [bp-58h]
  float v77; // [sp+88h] [bp-54h]
  float v78; // [sp+8Ch] [bp-50h]
  _DWORD v79[2]; // [sp+90h] [bp-4Ch] BYREF
  int v80; // [sp+98h] [bp-44h]
  int v81; // [sp+9Ch] [bp-40h]
  int v82; // [sp+A0h] [bp-3Ch]
  int v83; // [sp+A4h] [bp-38h]
  int v84; // [sp+A8h] [bp-34h] BYREF
  _DWORD v85[2]; // [sp+ACh] [bp-30h] BYREF
  _DWORD v86[3]; // [sp+B4h] [bp-28h] BYREF
  _DWORD v87[3]; // [sp+C0h] [bp-1Ch] BYREF
  _DWORD v88[4]; // [sp+CCh] [bp-10h] BYREF

  result = *((b2DebugDraw **)this + 25754);
  if ( result )
  {
    Flags = (b2DebugDraw *)b2DebugDraw::GetFlags(result);
    if ( ((unsigned __int8)Flags & 1) != 0 )
    {
      for ( i = *((_DWORD *)this + 25740); i; i = *(_DWORD *)(i + 96) )
      {
        for ( j = *(_DWORD *)(i + 100); j; j = *(_DWORD *)(j + 8) )
        {
          while ( !*(_WORD *)(i + 2) )
          {
            v88[0] = 1056964608;
            v88[1] = 1063675494;
            v88[2] = 1056964608;
            b2World::DrawShape((int)this, j, (float *)(i + 4), (int)v88, ((unsigned __int8)Flags & 4) != 0);
            j = *(_DWORD *)(j + 8);
            if ( !j )
              goto LABEL_12;
          }
          v4 = v86;
          if ( (*(_WORD *)i & 8) != 0 )
          {
            v4 = v87;
            v87[0] = 1056964608;
            v87[1] = 1056964608;
            v87[2] = 1063675494;
          }
          else
          {
            qmemcpy(v86, "fff?fff?fff?", sizeof(v86));
          }
          b2World::DrawShape((int)this, j, (float *)(i + 4), (int)v4, ((unsigned __int8)Flags & 4) != 0);
        }
LABEL_12:
        ;
      }
    }
    if ( ((unsigned __int8)Flags & 2) != 0 )
    {
      for ( k = *((b2Joint **)this + 25741); k; k = *((b2Joint **)k + 3) )
      {
        if ( *((_DWORD *)k + 1) != 5 )
          b2World::DrawJoint(this, k);
      }
    }
    if ( ((unsigned __int8)Flags & 0x20) != 0 )
    {
      v6 = *((float **)this + 25718);
      v7 = 1.0 / v6[95243];
      v8 = 1.0 / v6[95244];
      qmemcpy(v79, "fff?fff?", sizeof(v79));
      v61 = v6 + 65541;
      v80 = 1050253722;
      do
      {
        for ( m = *(unsigned __int16 *)v61; m != 0xFFFF; m = v53[8] )
        {
          v53 = (unsigned __int16 *)&v6[3 * m];
          v10 = v53[6];
          v11 = v6[95239];
          v51 = v53[7];
          v12 = &v6[4 * v10 + 73732];
          v13 = (int)&v6[4 * v10 + 73732] + 2;
          v55 = v11 + (float)(v7 * (float)*((unsigned __int16 *)v6 + 3 * *((unsigned __int16 *)v12 + 2) + 163851));
          v14 = v6[95240];
          v56 = v14 + (float)(v8 * (float)*((unsigned __int16 *)v6 + 3 * *(unsigned __int16 *)(v13 + 4) + 176139));
          v49 = v11 + (float)(v7 * (float)*((unsigned __int16 *)v6 + 3 * *((unsigned __int16 *)v12 + 4) + 163851));
          v15 = v14 + (float)(v8 * (float)*((unsigned __int16 *)v6 + 3 * *(unsigned __int16 *)(v13 + 8) + 176139));
          v16 = &v6[4 * v51 + 73732];
          v57 = v11 + (float)(v7 * (float)*((unsigned __int16 *)v6 + 3 * *((unsigned __int16 *)v16 + 2) + 163851));
          v50 = v14 + (float)(v8 * (float)*((unsigned __int16 *)v6 + 3 * HIWORD(v6[4 * v51 + 73733]) + 176139));
          v17 = v11 + (float)(v7 * (float)*((unsigned __int16 *)v6 + 3 * *((unsigned __int16 *)v16 + 4) + 163851));
          v18 = v14 + (float)(v8 * (float)*((unsigned __int16 *)v6 + 3 * HIWORD(v6[4 * v51 + 73734]) + 176139));
          v63 = (float)(v55 + v49) * 0.5;
          v64 = (float)(v56 + v15) * 0.5;
          v71 = (float)(v57 + v17) * 0.5;
          v19 = *((_DWORD *)this + 25754);
          v72 = (float)(v50 + v18) * 0.5;
          (*(void (__fastcall **)(int, float *, float *, _DWORD *))(*(_DWORD *)v19 + 24))(v19, &v63, &v71, v79);
        }
        v61 = (float *)((char *)v61 + 2);
      }
      while ( v61 != v6 + 73733 );
    }
    if ( ((unsigned __int8)Flags & 8) != 0 )
    {
      v20 = *((_DWORD *)this + 25718);
      v21 = *(float *)(v20 + 380960);
      v22 = *(float *)(v20 + 380956);
      v60 = *(_DWORD *)(v20 + 380968);
      v59 = *(_DWORD *)(v20 + 380964);
      v54 = 1.0 / *(float *)(v20 + 380972);
      v52 = 1.0 / *(float *)(v20 + 380976);
      v79[1] = 1050253722;
      v80 = 1063675494;
      v79[0] = 1063675494;
      v23 = (unsigned __int16 *)(v20 + 294940);
      do
      {
        if ( *v23 != 0xFFFF )
        {
          v24 = (float)(v54 * (float)*(unsigned __int16 *)(v20 + 6 * *(v23 - 4) + 327702)) + v22;
          v25 = (float)(v52 * (float)*(unsigned __int16 *)(v20 + 6 * *(v23 - 3) + 352278)) + v21;
          v26 = (float)(v54 * (float)*(unsigned __int16 *)(v20 + 6 * *(v23 - 2) + 327702)) + v22;
          v27 = *((_DWORD *)this + 25754);
          v78 = (float)(v52 * (float)*(unsigned __int16 *)(v20 + 6 * *(v23 - 1) + 352278)) + v21;
          v74 = v25;
          v75 = v26;
          v77 = v24;
          v71 = v24;
          v72 = v25;
          v73 = v26;
          v76 = v78;
          (*(void (__fastcall **)(int, float *, int, _DWORD *))(*(_DWORD *)v27 + 8))(v27, &v71, 4, v79);
        }
        v23 += 8;
      }
      while ( v23 != (unsigned __int16 *)(v20 + 327708) );
      v28 = *((_DWORD *)this + 25754);
      v66 = v21;
      v67 = v59;
      v70 = v60;
      v68 = v60;
      v69 = v22;
      v63 = v22;
      v64 = v21;
      v65 = v59;
      v29 = *(void (__fastcall **)(int, float *, int, int *))(*(_DWORD *)v28 + 8);
      v84 = 1050253722;
      qmemcpy(v85, "fff?fff?", sizeof(v85));
      v29(v28, &v63, 4, &v84);
    }
    result = Flags;
    if ( ((unsigned __int8)Flags & 0x10) != 0 )
    {
      v30 = *((_DWORD *)this + 25740);
      v80 = 1056964608;
      v79[1] = 1050253722;
      for ( v79[0] = 1056964608; v30; v30 = *(_DWORD *)(v30 + 96) )
      {
        for ( n = *(_DWORD *)(v30 + 100); n; n = *(_DWORD *)(n + 8) )
        {
          if ( *(_DWORD *)(n + 4) == 1 )
          {
            v32 = *(_DWORD *)(n + 84);
            v33 = *(_DWORD *)(n + 80);
            v34 = 0;
            LODWORD(v35) = v32 + 0x80000000;
            LODWORD(v36) = v33 + 0x80000000;
            v67 = v33;
            v70 = v32;
            LODWORD(v63) = v33 + 0x80000000;
            LODWORD(v64) = v32 + 0x80000000;
            v65 = v33;
            LODWORD(v66) = v32 + 0x80000000;
            v68 = v32;
            LODWORD(v69) = v33 + 0x80000000;
            while ( 1 )
            {
              v37 = (float)(v36 * *(float *)(n + 60)) + (float)(v35 * *(float *)(n + 68));
              v38 = (float)((float)(v36 * *(float *)(n + 56)) + (float)(v35 * *(float *)(n + 64))) + *(float *)(n + 72);
              v39 = v37 + *(float *)(n + 76);
              *(float *)((char *)&v63 + v34 + 4) = v39;
              *(float *)((char *)&v63 + v34) = v38;
              v40 = (float)(v38 * *(float *)(v30 + 12)) + (float)(v39 * *(float *)(v30 + 20));
              v41 = (float)(v38 * *(float *)(v30 + 16)) + (float)(v39 * *(float *)(v30 + 24));
              v42 = v40 + *(float *)(v30 + 4);
              *(float *)((char *)&v63 + v34 + 4) = v41 + *(float *)(v30 + 8);
              *(float *)((char *)&v63 + v34) = v42;
              v34 += 8;
              if ( v34 == 32 )
                break;
              v36 = *(float *)((char *)&v63 + v34);
              v35 = *(float *)((char *)&v63 + v34 + 4);
            }
            result = (b2DebugDraw *)(*(int (__fastcall **)(_DWORD, float *, int, _DWORD *))(**((_DWORD **)this + 25754)
                                                                                          + 8))(
                                      *((_DWORD *)this + 25754),
                                      &v63,
                                      4,
                                      v79);
          }
        }
      }
    }
    if ( ((unsigned __int8)Flags & 0x40) != 0 )
    {
      result = this;
      for ( ii = *((_DWORD **)this + 25740); ii; ii = (_DWORD *)ii[24] )
      {
        v44 = ii[2];
        v45 = ii[3];
        v46 = ii[4];
        v79[0] = ii[1];
        v79[1] = v44;
        v80 = v45;
        v81 = v46;
        v47 = ii[6];
        v82 = ii[5];
        v83 = v47;
        v48 = *((_DWORD *)this + 25754);
        v79[0] = ii[11];
        v79[1] = ii[12];
        result = (b2DebugDraw *)(*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v48 + 28))(v48, v79);
      }
    }
  }
  return result;
}


// ===== 7e759c b2World::Query(b2AABB const&,b2Shape **,int) =====
int __fastcall b2World::Query(b2World *this, const b2AABB *a2, b2Shape **a3, int a4)
{
  b2StackAllocator *v4; // r6
  char *v9; // r4
  int v10; // r0
  int v11; // r7
  int v12; // r3
  int i; // r2

  v4 = (b2World *)((char *)this + 68);
  v9 = (char *)b2StackAllocator::Allocate((b2World *)((char *)this + 68), 4 * a4);
  v10 = b2BroadPhase::Query(*((_DWORD *)this + 25718), (float *)a2, (int)v9, a4);
  v11 = v10;
  if ( v10 > 0 )
  {
    v12 = 0;
    for ( i = 0; i != v10; ++i )
    {
      a3[v12] = *(b2Shape **)&v9[v12 * 4];
      ++v12;
    }
  }
  b2StackAllocator::Free(v4, v9);
  return v11;
}


// ===== 7e761c b2Body::SynchronizeTransform(void) =====
float __fastcall b2Body::SynchronizeTransform(b2Body *this)
{
  float v1; // r6
  float v3; // r5
  float v4; // r0
  float v5; // r8
  float v6; // r10
  float result; // r0

  v1 = *((float *)this + 14);
  v3 = cosf(v1);
  v4 = sinf(v1);
  v5 = *((float *)this + 7);
  LODWORD(v6) = LODWORD(v4) + 0x80000000;
  *((float *)this + 3) = v3;
  *((_DWORD *)this + 5) = LODWORD(v4) + 0x80000000;
  *((float *)this + 4) = v4;
  *((float *)this + 6) = v3;
  result = *((float *)this + 12) - (float)((float)(v4 * v5) + (float)(v3 * *((float *)this + 8)));
  *((float *)this + 1) = *((float *)this + 11) - (float)((float)(v3 * v5) + (float)(v6 * *((float *)this + 8)));
  *((float *)this + 2) = result;
  return result;
}


// ===== 7e76dc b2World::Solve(b2TimeStep const&) =====
void __fastcall b2World::Solve(int a1, int a2)
{
  int i; // r3
  int j; // r3
  int k; // r3
  _DWORD *v6; // r0
  int v7; // r6
  _DWORD *m; // r4
  int v9; // r11
  int v10; // r1
  int v11; // r0
  int v12; // r2
  int v13; // r3
  char *v14; // r11
  int n; // r3
  int v16; // r2
  int v17; // lr
  _WORD *v18; // r2
  int ii; // r3
  int v20; // r2
  int v21; // r12
  _WORD *v22; // r2
  char *v23; // r0
  int v24; // r12
  int v25; // r12
  int v26; // r0
  int v27; // r3
  int jj; // r3
  _WORD *v29; // r2
  int kk; // r4
  int v31; // r3
  b2StackAllocator *v32; // [sp+Ch] [bp-40h]
  _BYTE v34[8]; // [sp+18h] [bp-34h] BYREF
  int v35; // [sp+20h] [bp-2Ch]
  int v36; // [sp+24h] [bp-28h]
  int v37; // [sp+28h] [bp-24h]
  int v38; // [sp+2Ch] [bp-20h]
  int v39; // [sp+30h] [bp-1Ch]
  int v40; // [sp+34h] [bp-18h]
  int v41; // [sp+44h] [bp-8h]

  *(_DWORD *)(a1 + 103024) = 0;
  v32 = (b2StackAllocator *)(a1 + 68);
  b2Island::b2Island(
    (b2Island *)v34,
    *(_DWORD *)(a1 + 102972),
    *(_DWORD *)(a1 + 102976),
    *(_DWORD *)(a1 + 102980),
    (b2StackAllocator *)(a1 + 68),
    *(b2ContactListener **)(a1 + 103012));
  for ( i = *(_DWORD *)(a1 + 102960); i; i = *(_DWORD *)(i + 96) )
    *(_WORD *)i &= ~4u;
  for ( j = *(_DWORD *)(a1 + 102968); j; j = *(_DWORD *)(j + 16) )
    *(_DWORD *)(j + 4) &= ~4u;
  for ( k = *(_DWORD *)(a1 + 102964); k; k = *(_DWORD *)(k + 12) )
    *(_BYTE *)(k + 60) = 0;
  v6 = (_DWORD *)b2StackAllocator::Allocate(v32, 4 * *(_DWORD *)(a1 + 102972));
  v7 = *(_DWORD *)(a1 + 102960);
  for ( m = v6; v7; v7 = *(_DWORD *)(v7 + 96) )
  {
    if ( (*(_WORD *)v7 & 0xE) == 0 && *(_WORD *)(v7 + 2) )
    {
      v39 = *(_WORD *)v7 & 0xE;
      v38 = 0;
      v40 = 0;
      *m = v7;
      v9 = 1;
      *(_WORD *)v7 |= 4u;
      while ( 1 )
      {
        v10 = v9 - 1;
        v11 = m[v9 - 1];
        v12 = v38 + 1;
        *(_DWORD *)(v35 + 4 * v38) = v11;
        v38 = v12;
        v13 = *(__int16 *)(v11 + 2);
        *(_WORD *)v11 &= ~8u;
        if ( !v13 )
        {
          v14 = (char *)&m[v9];
          v23 = v14;
          if ( !v10 )
            break;
          while ( 1 )
          {
            v11 = *((_DWORD *)v23 - 2);
            v24 = v38 + 1;
            --v10;
            *(_DWORD *)(v35 + 4 * v38) = v11;
            v38 = v24;
            v25 = *(__int16 *)(v11 + 2);
            v13 -= 4;
            *(_WORD *)v11 &= ~8u;
            if ( v25 )
              break;
            v23 = &v14[v13];
            if ( !v10 )
              goto LABEL_29;
          }
        }
        for ( n = *(_DWORD *)(v11 + 112); n; n = *(_DWORD *)(n + 12) )
        {
          v16 = *(_DWORD *)(n + 4);
          if ( (*(_DWORD *)(v16 + 4) & 5) == 0 )
          {
            if ( *(_DWORD *)(v16 + 8) )
            {
              v17 = v40 + 1;
              *(_DWORD *)(v36 + 4 * v40) = v16;
              v40 = v17;
              *(_DWORD *)(*(_DWORD *)(n + 4) + 4) |= 4u;
              v18 = *(_WORD **)n;
              if ( (**(_WORD **)n & 4) == 0 )
              {
                m[v10++] = v18;
                *v18 |= 4u;
              }
            }
          }
        }
        for ( ii = *(_DWORD *)(v11 + 108); ii; ii = *(_DWORD *)(ii + 12) )
        {
          v20 = *(_DWORD *)(ii + 4);
          if ( !*(_BYTE *)(v20 + 60) )
          {
            v21 = v39 + 1;
            *(_DWORD *)(v37 + 4 * v39) = v20;
            v39 = v21;
            *(_BYTE *)(*(_DWORD *)(ii + 4) + 60) = 1;
            v22 = *(_WORD **)ii;
            if ( (**(_WORD **)ii & 4) == 0 )
            {
              m[v10++] = v22;
              *v22 |= 4u;
            }
          }
        }
        if ( !v10 )
          break;
        v9 = v10;
      }
LABEL_29:
      b2Island::Solve((int)v34, a2, a1 + 102984, *(unsigned __int8 *)(a1 + 103028), *(_BYTE *)(a1 + 102992));
      v26 = v38;
      v27 = *(_DWORD *)(a1 + 103024);
      if ( v41 < v27 )
        *(_DWORD *)(a1 + 103024) = v27;
      else
        *(_DWORD *)(a1 + 103024) = v41;
      if ( v26 > 0 )
      {
        for ( jj = 0; jj < v26; ++jj )
        {
          v29 = *(_WORD **)(v35 + 4 * jj);
          if ( !v29[1] )
          {
            *v29 &= ~4u;
            v26 = v38;
          }
        }
      }
    }
  }
  b2StackAllocator::Free(v32, m);
  for ( kk = *(_DWORD *)(a1 + 102960); kk; kk = *(_DWORD *)(kk + 96) )
  {
    while ( 1 )
    {
      if ( (*(_WORD *)kk & 0xA) == 0 )
      {
        if ( *(_WORD *)(kk + 2) )
        {
          if ( !b2Body::SynchronizeShapes((b2Body *)kk) )
          {
            v31 = *(_DWORD *)(a1 + 103004);
            if ( v31 )
              break;
          }
        }
      }
      kk = *(_DWORD *)(kk + 96);
      if ( !kk )
        goto LABEL_46;
    }
    (*(void (__fastcall **)(_DWORD, int))(*(_DWORD *)v31 + 8))(*(_DWORD *)(a1 + 103004), kk);
  }
LABEL_46:
  b2BroadPhase::Commit(*(b2BroadPhase **)(a1 + 102872));
  b2Island::~b2Island((b2Island *)v34);
}


// ===== 7e7afc b2World::Refilter(b2Shape *) =====
int __fastcall b2World::Refilter(b2BroadPhase **this, b2Shape *a2)
{
  return b2Shape::RefilterProxy((int)a2, *(this + 25718), *((_DWORD *)a2 + 3) + 4);
}


// ===== 7e7b1c b2World::DestroyJoint(b2Joint *) =====
int __fastcall b2World::DestroyJoint(b2World *this, b2Joint *a2)
{
  int v2; // r3
  int v3; // r7
  int v5; // r3
  __int16 *v6; // r6
  __int16 *v7; // r4
  __int16 v8; // r2
  __int16 v9; // r2
  int v10; // r3
  int v11; // r3
  int v12; // r2
  int v13; // r3
  b2Joint *v14; // r2
  int result; // r0
  __int16 *v16; // r7
  int v17; // r4
  int v18; // r7

  v2 = *((_DWORD *)a2 + 2);
  v3 = *((unsigned __int8 *)a2 + 61);
  if ( v2 )
    *(_DWORD *)(v2 + 12) = *((_DWORD *)a2 + 3);
  v5 = *((_DWORD *)a2 + 3);
  if ( v5 )
    *(_DWORD *)(v5 + 8) = *((_DWORD *)a2 + 2);
  if ( *((b2Joint **)this + 25741) == a2 )
    *((_DWORD *)this + 25741) = *((_DWORD *)a2 + 3);
  v6 = *((__int16 **)a2 + 12);
  v7 = *((__int16 **)a2 + 13);
  v8 = *v6;
  *((_DWORD *)v6 + 35) = 0;
  *v6 = v8 & 0xFFF7;
  v9 = *v7;
  *((_DWORD *)v7 + 35) = 0;
  *v7 = v9 & 0xFFF7;
  v10 = *((_DWORD *)a2 + 6);
  if ( v10 )
    *(_DWORD *)(v10 + 12) = *((_DWORD *)a2 + 7);
  v11 = *((_DWORD *)a2 + 7);
  if ( v11 )
    *(_DWORD *)(v11 + 8) = *((_DWORD *)a2 + 6);
  if ( *((b2Joint **)v6 + 27) == (b2Joint *)((char *)a2 + 16) )
    *((_DWORD *)v6 + 27) = *((_DWORD *)a2 + 7);
  v12 = *((_DWORD *)a2 + 10);
  *((_DWORD *)a2 + 7) = 0;
  *((_DWORD *)a2 + 6) = 0;
  if ( v12 )
    *(_DWORD *)(v12 + 12) = *((_DWORD *)a2 + 11);
  v13 = *((_DWORD *)a2 + 11);
  if ( v13 )
    *(_DWORD *)(v13 + 8) = *((_DWORD *)a2 + 10);
  v14 = *((b2Joint **)v7 + 27);
  if ( v14 == (b2Joint *)((char *)a2 + 32) )
    *((_DWORD *)v7 + 27) = *((_DWORD *)a2 + 11);
  *((_DWORD *)a2 + 11) = 0;
  *((_DWORD *)a2 + 10) = 0;
  result = b2Joint::Destroy(a2, this, v14);
  --*((_DWORD *)this + 25745);
  if ( !v3 )
  {
    if ( *((_DWORD *)v6 + 26) >= *((_DWORD *)v7 + 26) )
      v16 = v7;
    else
      v16 = v6;
    v17 = *((_DWORD *)v16 + 25);
    if ( v17 )
    {
      v18 = (int)(v16 + 2);
      do
      {
        result = b2Shape::RefilterProxy(v17, *((b2BroadPhase **)this + 25718), v18);
        v17 = *(_DWORD *)(v17 + 8);
      }
      while ( v17 );
    }
  }
  return result;
}


// ===== 7e7c80 b2World::CreateJoint(b2JointDef const*) =====
b2BroadPhase *__fastcall b2World::CreateJoint(b2BroadPhase **this, int a2)
{
  b2BroadPhase *v4; // r0
  b2BroadPhase *v5; // r5
  int v6; // r3
  int v7; // r2
  int v8; // r3
  int v9; // r1
  _DWORD *v10; // r2
  int v11; // r3
  int v12; // r1
  _DWORD *v13; // r2
  int v14; // r8
  int v15; // r4
  int v16; // r8

  v4 = (b2BroadPhase *)b2Joint::Create(a2, (b2BlockAllocator *)this);
  *((_DWORD *)v4 + 2) = 0;
  v5 = v4;
  *((_DWORD *)v4 + 3) = *(this + 25741);
  v6 = (int)*(this + 25741);
  if ( v6 )
    *(_DWORD *)(v6 + 8) = v4;
  *(this + 25741) = v4;
  *(this + 25745) = (b2BroadPhase *)((char *)*(this + 25745) + 1);
  v7 = *((_DWORD *)v4 + 13);
  v8 = *((_DWORD *)v4 + 12);
  *((_DWORD *)v4 + 6) = 0;
  *((_DWORD *)v4 + 4) = v7;
  *((_DWORD *)v4 + 5) = v4;
  *((_DWORD *)v4 + 7) = *(_DWORD *)(v8 + 108);
  v9 = *(_DWORD *)(v8 + 108);
  v10 = (_DWORD *)((char *)v4 + 16);
  if ( v9 )
  {
    *(_DWORD *)(v9 + 8) = v10;
    v8 = *((_DWORD *)v4 + 12);
  }
  *(_DWORD *)(v8 + 108) = v10;
  v11 = *((_DWORD *)v4 + 13);
  *((_DWORD *)v4 + 8) = *((_DWORD *)v4 + 12);
  *((_DWORD *)v4 + 10) = 0;
  *((_DWORD *)v4 + 9) = v4;
  *((_DWORD *)v4 + 11) = *(_DWORD *)(v11 + 108);
  v12 = *(_DWORD *)(v11 + 108);
  v13 = (_DWORD *)((char *)v4 + 32);
  if ( v12 )
  {
    *(_DWORD *)(v12 + 8) = v13;
    v11 = *((_DWORD *)v4 + 13);
  }
  *(_DWORD *)(v11 + 108) = v13;
  if ( !*(_BYTE *)(a2 + 16) )
  {
    v14 = *(_DWORD *)(a2 + 8);
    if ( *(_DWORD *)(v14 + 104) >= *(_DWORD *)(*(_DWORD *)(a2 + 12) + 104) )
      v14 = *(_DWORD *)(a2 + 12);
    v15 = *(_DWORD *)(v14 + 100);
    if ( v15 )
    {
      v16 = v14 + 4;
      do
      {
        b2Shape::RefilterProxy(v15, *(this + 25718), v16);
        v15 = *(_DWORD *)(v15 + 8);
      }
      while ( v15 );
    }
  }
  return v5;
}


// ===== 7e7db0 b2World::DestroyBody(b2Body *) =====
int __fastcall b2World::DestroyBody(int this, b2Body *a2)
{
  int v2; // r4
  int v4; // r5
  int v5; // r3
  int v6; // r6
  b2Shape *v7; // r5
  int v8; // r3
  b2Shape *v9; // r6
  b2BlockAllocator *v10; // r2
  int v11; // r3
  int v12; // r3

  v2 = this;
  if ( !*(_BYTE *)(this + 102868) )
  {
    v4 = *((_DWORD *)a2 + 27);
    if ( v4 )
    {
      while ( 1 )
      {
        v5 = *(_DWORD *)(v2 + 103000);
        v6 = *(_DWORD *)(v4 + 12);
        if ( v5 )
          (*(void (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)v5 + 8))(*(_DWORD *)(v2 + 103000), *(_DWORD *)(v4 + 4));
        b2World::DestroyJoint((b2World *)v2, *(b2Joint **)(v4 + 4));
        if ( !v6 )
          break;
        v4 = v6;
      }
    }
    v7 = *((b2Shape **)a2 + 25);
    if ( v7 )
    {
      while ( 1 )
      {
        v8 = *(_DWORD *)(v2 + 103000);
        v9 = *((b2Shape **)v7 + 2);
        if ( v8 )
          (*(void (__fastcall **)(_DWORD, b2Shape *))(*(_DWORD *)v8 + 12))(*(_DWORD *)(v2 + 103000), v7);
        b2Shape::DestroyProxy(v7, *(b2BroadPhase **)(v2 + 102872));
        b2Shape::Destroy(v7, (b2Shape *)v2, v10);
        if ( !v9 )
          break;
        v7 = v9;
      }
    }
    v11 = *((_DWORD *)a2 + 23);
    if ( v11 )
      *(_DWORD *)(v11 + 96) = *((_DWORD *)a2 + 24);
    v12 = *((_DWORD *)a2 + 24);
    if ( v12 )
      *(_DWORD *)(v12 + 92) = *((_DWORD *)a2 + 23);
    if ( *(b2Body **)(v2 + 102960) == a2 )
      *(_DWORD *)(v2 + 102960) = *((_DWORD *)a2 + 24);
    --*(_DWORD *)(v2 + 102972);
    b2Body::~b2Body(a2);
    return b2BlockAllocator::Free((b2BlockAllocator *)v2, a2, 148);
  }
  return this;
}


// ===== 7e7ef8 b2World::CreateBody(b2BodyDef const*) =====
int __fastcall b2World::CreateBody(int a1, int a2)
{
  int v2; // r6
  int v5; // r5
  int v6; // r3

  v2 = *(unsigned __int8 *)(a1 + 102868);
  if ( *(_BYTE *)(a1 + 102868) )
    return 0;
  v5 = b2BlockAllocator::Allocate((b2BlockAllocator *)a1, 148);
  b2Body::b2Body(v5, a2, a1);
  *(_DWORD *)(v5 + 92) = v2;
  *(_DWORD *)(v5 + 96) = *(_DWORD *)(a1 + 102960);
  v6 = *(_DWORD *)(a1 + 102960);
  if ( v6 )
    *(_DWORD *)(v6 + 92) = v5;
  *(_DWORD *)(a1 + 102960) = v5;
  ++*(_DWORD *)(a1 + 102972);
  return v5;
}


// ===== 7e7f7c b2World::~b2World() =====
void __fastcall b2World::~b2World(b2Body **this)
{
  b2World::DestroyBody((int)this, *(this + 25749));
  b2BroadPhase::~b2BroadPhase(*(this + 25718));
  b2Free(*(this + 25718));
  *(this + 25721) = (b2Body *)&off_991A88;
  *(this + 25719) = (b2Body *)off_991AA0;
  b2StackAllocator::~b2StackAllocator((b2StackAllocator *)(this + 17));
  b2BlockAllocator::~b2BlockAllocator((b2BlockAllocator *)this);
}


// ===== 7e7ffc b2World::~b2World() =====
void __fastcall b2World::~b2World(b2Body **this)
{
  b2World::DestroyBody((int)this, *(this + 25749));
  b2BroadPhase::~b2BroadPhase(*(this + 25718));
  b2Free(*(this + 25718));
  *(this + 25721) = (b2Body *)&off_991A88;
  *(this + 25719) = (b2Body *)off_991AA0;
  b2StackAllocator::~b2StackAllocator((b2StackAllocator *)(this + 17));
  b2BlockAllocator::~b2BlockAllocator((b2BlockAllocator *)this);
}


// ===== 7e807c b2NullContact::~b2NullContact() =====
void __fastcall b2NullContact::~b2NullContact(b2NullContact *this)
{
  LC_API_FREE_0(this);
}


// ===== 7e8090 b2Contact::~b2Contact() =====
void __fastcall b2Contact::~b2Contact(b2Contact *this)
{
  LC_API_FREE_0(this);
}


// ===== 7e80a4 b2PairCallback::~b2PairCallback() =====
void __fastcall b2PairCallback::~b2PairCallback(b2PairCallback *this)
{
  LC_API_FREE_0(this);
}


// ===== 7e80b8 b2World::b2World(b2AABB const&,b2Vec2 const&,bool) =====
void __fastcall b2World::b2World(b2World *this, const b2AABB *a2, const b2Vec2 *a3, bool a4)
{
  int v6; // r9
  _DWORD v9[10]; // [sp+14h] [bp-30h] BYREF
  char v10; // [sp+3Ch] [bp-8h]
  char v11; // [sp+3Dh] [bp-7h]
  char v12; // [sp+3Eh] [bp-6h]
  char v13; // [sp+3Fh] [bp-5h]

  b2BlockAllocator::b2BlockAllocator(this);
  b2StackAllocator::b2StackAllocator((b2World *)((char *)this + 68));
  *((_DWORD *)this + 25719) = off_991B20;
  *((_DWORD *)this + 25721) = &off_991A70;
  *((_DWORD *)this + 25752) = &b2_defaultFilter;
  *((_DWORD *)this + 25734) = 0;
  *((_DWORD *)this + 25735) = 0;
  *((_BYTE *)this + 102956) = 0;
  *((_DWORD *)this + 25750) = 0;
  *((_DWORD *)this + 25751) = 0;
  *((_DWORD *)this + 25753) = 0;
  *((_DWORD *)this + 25754) = 0;
  *((_DWORD *)this + 25740) = 0;
  *((_DWORD *)this + 25742) = 0;
  *((_DWORD *)this + 25741) = 0;
  *((_DWORD *)this + 25743) = 0;
  *((_DWORD *)this + 25744) = 0;
  *((_DWORD *)this + 25745) = 0;
  *((_BYTE *)this + 103028) = 1;
  *((_DWORD *)this + 25720) = 0;
  *((_BYTE *)&elf_hash_chain[9291] + (_DWORD)this + 1) = 1;
  *((_BYTE *)&elf_hash_chain[9291] + (_DWORD)this + 2) = 1;
  *((_BYTE *)this + 102992) = a4;
  *((_DWORD *)this + 25746) = *(_DWORD *)a3;
  *((_DWORD *)this + 25747) = *((_DWORD *)a3 + 1);
  *((_BYTE *)this + 102868) = 0;
  *((_DWORD *)this + 25755) = 0;
  *((_DWORD *)this + 25720) = this;
  v6 = b2Alloc(380988);
  b2BroadPhase::b2BroadPhase(v6, (float *)a2, (b2World *)((char *)this + 102876));
  *((_DWORD *)this + 25718) = v6;
  v10 = 1;
  v13 = 0;
  memset(v9, 0, sizeof(v9));
  v11 = 0;
  v12 = 0;
  *((_DWORD *)this + 25749) = b2World::CreateBody((int)this, (int)v9);
}


// ===== 7e8288 b2World::b2World(b2AABB const&,b2Vec2 const&,bool) =====
void __fastcall b2World::b2World(b2World *this, const b2AABB *a2, const b2Vec2 *a3, bool a4)
{
  int v6; // r9
  _DWORD v9[10]; // [sp+14h] [bp-30h] BYREF
  char v10; // [sp+3Ch] [bp-8h]
  char v11; // [sp+3Dh] [bp-7h]
  char v12; // [sp+3Eh] [bp-6h]
  char v13; // [sp+3Fh] [bp-5h]

  b2BlockAllocator::b2BlockAllocator(this);
  b2StackAllocator::b2StackAllocator((b2World *)((char *)this + 68));
  *((_DWORD *)this + 25719) = off_991B20;
  *((_DWORD *)this + 25721) = &off_991A70;
  *((_DWORD *)this + 25752) = &b2_defaultFilter;
  *((_DWORD *)this + 25734) = 0;
  *((_DWORD *)this + 25735) = 0;
  *((_BYTE *)this + 102956) = 0;
  *((_DWORD *)this + 25750) = 0;
  *((_DWORD *)this + 25751) = 0;
  *((_DWORD *)this + 25753) = 0;
  *((_DWORD *)this + 25754) = 0;
  *((_DWORD *)this + 25740) = 0;
  *((_DWORD *)this + 25742) = 0;
  *((_DWORD *)this + 25741) = 0;
  *((_DWORD *)this + 25743) = 0;
  *((_DWORD *)this + 25744) = 0;
  *((_DWORD *)this + 25745) = 0;
  *((_BYTE *)this + 103028) = 1;
  *((_DWORD *)this + 25720) = 0;
  *((_BYTE *)&elf_hash_chain[9291] + (_DWORD)this + 1) = 1;
  *((_BYTE *)&elf_hash_chain[9291] + (_DWORD)this + 2) = 1;
  *((_BYTE *)this + 102992) = a4;
  *((_DWORD *)this + 25746) = *(_DWORD *)a3;
  *((_DWORD *)this + 25747) = *((_DWORD *)a3 + 1);
  *((_BYTE *)this + 102868) = 0;
  *((_DWORD *)this + 25755) = 0;
  *((_DWORD *)this + 25720) = this;
  v6 = b2Alloc(380988);
  b2BroadPhase::b2BroadPhase(v6, (float *)a2, (b2World *)((char *)this + 102876));
  *((_DWORD *)this + 25718) = v6;
  v10 = 1;
  v13 = 0;
  memset(v9, 0, sizeof(v9));
  v11 = 0;
  v12 = 0;
  *((_DWORD *)this + 25749) = b2World::CreateBody((int)this, (int)v9);
}


// ===== 7e8458 b2World::SolveTOI(b2TimeStep const&) =====
void __fastcall b2World::SolveTOI(int a1, float *a2)
{
  _DWORD *v2; // r0
  __int16 *v3; // r3
  _DWORD *i; // r8
  __int16 v5; // r2
  int j; // r3
  int v7; // r4
  float v8; // r6
  float v9; // r5
  _BOOL4 v10; // r7
  int v11; // r3
  const b2Shape *v12; // r5
  const b2Shape *v13; // r9
  int v14; // r8
  int v15; // r10
  float v16; // r11
  float v17; // r7
  b2Sweep *v18; // r8
  b2Sweep *v19; // r10
  int v20; // r3
  _DWORD *v21; // r7
  _DWORD *v22; // r10
  int v23; // r3
  int v24; // r1
  int v25; // r1
  int v26; // r3
  int v27; // r2
  int v28; // r3
  int v29; // r1
  int v30; // r7
  int v31; // r3
  int v32; // r0
  int v33; // r2
  int k; // r4
  int v35; // r3
  int v36; // r2
  _WORD *v37; // r5
  char *v38; // r3
  int v39; // r0
  int v40; // r0
  float v41; // r3
  int m; // r4
  b2Body *v43; // r5
  __int16 v44; // r2
  int v45; // r3
  int v46; // r3
  int n; // r3
  int v48; // r2
  int v49; // r3
  int v50; // r2
  __int16 v51; // r3
  b2Contact *v53; // [sp+10h] [bp-64h]
  _DWORD *v54; // [sp+14h] [bp-60h]
  b2StackAllocator *v56; // [sp+24h] [bp-50h]
  _BYTE v57[8]; // [sp+2Ch] [bp-48h] BYREF
  int v58; // [sp+34h] [bp-40h]
  int v59; // [sp+38h] [bp-3Ch]
  int v60; // [sp+40h] [bp-34h]
  int v61; // [sp+44h] [bp-30h]
  int v62; // [sp+48h] [bp-2Ch]
  int v63; // [sp+50h] [bp-24h]
  float v64[6]; // [sp+5Ch] [bp-18h] BYREF

  v56 = (b2StackAllocator *)(a1 + 68);
  b2Island::b2Island(
    (b2Island *)v57,
    *(_DWORD *)(a1 + 102972),
    32,
    0,
    (b2StackAllocator *)(a1 + 68),
    *(b2ContactListener **)(a1 + 103012));
  v2 = (_DWORD *)b2StackAllocator::Allocate(v56, 4 * *(_DWORD *)(a1 + 102972));
  v3 = *(__int16 **)(a1 + 102960);
  for ( i = v2; v3; v3 = *((__int16 **)v3 + 24) )
  {
    v5 = *v3;
    *((_DWORD *)v3 + 15) = 0;
    *v3 = v5 & 0xFFFB;
  }
  for ( j = *(_DWORD *)(a1 + 102968); j; j = *(_DWORD *)(j + 16) )
    *(_DWORD *)(j + 4) &= 0xFFFFFFF3;
LABEL_5:
  v7 = *(_DWORD *)(a1 + 102968);
  if ( !v7 )
    goto LABEL_65;
  do
  {
    v8 = 1.0;
    v53 = nullptr;
    v54 = i;
    do
    {
      while ( 1 )
      {
        v11 = *(_DWORD *)(v7 + 4);
        if ( (v11 & 3) == 0 )
        {
          if ( (v11 & 8) != 0 )
          {
            v9 = *(float *)(v7 + 68);
            v10 = v9 > 0.00000011921;
            goto LABEL_8;
          }
          v12 = *(const b2Shape **)(v7 + 52);
          v13 = *(const b2Shape **)(v7 + 56);
          v14 = *((_DWORD *)v12 + 3);
          v15 = *((_DWORD *)v13 + 3);
          if ( *(_WORD *)(v14 + 2) && (*(_WORD *)v14 & 8) == 0 )
          {
LABEL_16:
            v16 = *(float *)(v14 + 60);
            v17 = *(float *)(v15 + 60);
            if ( v16 < v17 )
            {
              v18 = (b2Sweep *)(v14 + 28);
              b2Sweep::Advance(v18, *(float *)(v15 + 60));
              v19 = (b2Sweep *)(v15 + 28);
              v12 = *(const b2Shape **)(v7 + 52);
              v13 = *(const b2Shape **)(v7 + 56);
            }
            else if ( v16 > v17 )
            {
              v19 = (b2Sweep *)(v15 + 28);
              b2Sweep::Advance(v19, *(float *)(v14 + 60));
              v17 = v16;
              v12 = *(const b2Shape **)(v7 + 52);
              v13 = *(const b2Shape **)(v7 + 56);
              v18 = (b2Sweep *)(v14 + 28);
            }
            else
            {
              v17 = *(float *)(v14 + 60);
              v18 = (b2Sweep *)(v14 + 28);
              v19 = (b2Sweep *)(v15 + 28);
            }
            v9 = COERCE_FLOAT(b2TimeOfImpact(v12, v18, v13, v19));
            if ( v9 <= 0.0 || v9 >= 1.0 || (v9 = v9 + (float)((float)(1.0 - v9) * v17), v9 < 1.0) )
            {
              v10 = v9 > 0.00000011921;
            }
            else
            {
              v10 = 1;
              v9 = 1.0;
            }
            v20 = *(_DWORD *)(v7 + 4);
            *(float *)(v7 + 68) = v9;
            *(_DWORD *)(v7 + 4) = v20 | 8;
LABEL_8:
            if ( v10 && v9 < v8 )
            {
              v8 = v9;
              v53 = (b2Contact *)v7;
            }
            goto LABEL_11;
          }
          if ( *(_WORD *)(v15 + 2) )
            break;
        }
LABEL_11:
        v7 = *(_DWORD *)(v7 + 16);
        if ( !v7 )
          goto LABEL_29;
      }
      if ( (*(_WORD *)v15 & 8) == 0 )
        goto LABEL_16;
      v7 = *(_DWORD *)(v7 + 16);
    }
    while ( v7 );
LABEL_29:
    i = v54;
    if ( !v53 || v8 > 0.99999 )
      break;
    v21 = *(_DWORD **)(*((_DWORD *)v53 + 13) + 12);
    v22 = *(_DWORD **)(*((_DWORD *)v53 + 14) + 12);
    b2Sweep::Advance((b2Sweep *)(v21 + 7), v8);
    v23 = v21[13];
    v24 = v21[9];
    v21[12] = v21[10];
    v21[14] = v23;
    v21[11] = v24;
    b2Body::SynchronizeTransform((b2Body *)v21);
    b2Sweep::Advance((b2Sweep *)(v22 + 7), v8);
    v25 = v22[9];
    v26 = v22[13];
    v22[12] = v22[10];
    v22[11] = v25;
    v22[14] = v26;
    b2Body::SynchronizeTransform((b2Body *)v22);
    b2Contact::Update(v53, *(b2ContactListener **)(a1 + 103012));
    v27 = *((_DWORD *)v53 + 2);
    *((_DWORD *)v53 + 1) &= ~8u;
    if ( !v27 )
      goto LABEL_5;
    v28 = *((__int16 *)v21 + 1);
    v61 = v7;
    v60 = v7;
    if ( !v28 )
      v21 = v22;
    v62 = v7;
    *v54 = v21;
    v29 = 1;
    *(_WORD *)v21 |= 4u;
    while ( 1 )
    {
      v30 = v29 - 1;
      v31 = v54[v29 - 1];
      v32 = v60 + 1;
      *(_DWORD *)(v58 + 4 * v60) = v31;
      v60 = v32;
      v33 = *(__int16 *)(v31 + 2);
      *(_WORD *)v31 &= ~8u;
      if ( !v33 )
      {
        v38 = (char *)&v54[v29];
        if ( v29 == 1 )
          break;
        while ( 1 )
        {
          v31 = *((_DWORD *)v38 - 2);
          v39 = v60 + 1;
          --v30;
          *(_DWORD *)(v58 + 4 * v60) = v31;
          v60 = v39;
          v40 = *(__int16 *)(v31 + 2);
          v33 -= 4;
          *(_WORD *)v31 &= ~8u;
          if ( v40 )
            break;
          v38 = (char *)&v54[v29] + v33;
          if ( !v30 )
            goto LABEL_50;
        }
      }
      for ( k = *(_DWORD *)(v31 + 112); k; k = *(_DWORD *)(k + 12) )
      {
        v35 = v62;
        if ( v62 != v63 )
        {
          v36 = *(_DWORD *)(k + 4);
          if ( (*(_DWORD *)(v36 + 4) & 7) == 0 )
          {
            if ( *(_DWORD *)(v36 + 8) )
            {
              *(_DWORD *)(v59 + 4 * v62) = v36;
              v62 = v35 + 1;
              *(_DWORD *)(*(_DWORD *)(k + 4) + 4) |= 4u;
              v37 = *(_WORD **)k;
              if ( (**(_WORD **)k & 4) == 0 )
              {
                if ( v37[1] )
                {
                  b2Sweep::Advance((b2Sweep *)(v37 + 14), v8);
                  v49 = *((_DWORD *)v37 + 13);
                  v50 = *((_DWORD *)v37 + 10);
                  *((_DWORD *)v37 + 11) = *((_DWORD *)v37 + 9);
                  *((_DWORD *)v37 + 14) = v49;
                  *((_DWORD *)v37 + 12) = v50;
                  b2Body::SynchronizeTransform((b2Body *)v37);
                  v51 = *v37;
                  *((_DWORD *)v37 + 35) = 0;
                  *v37 = v51 & 0xFFF7;
                }
                v54[v30++] = v37;
                *v37 |= 4u;
              }
            }
          }
        }
      }
      if ( !v30 )
        break;
      v29 = v30;
    }
LABEL_50:
    v64[0] = (float)(1.0 - v8) * *a2;
    v41 = a2[3];
    v64[1] = 1.0 / v64[0];
    v64[3] = v41;
    b2Island::SolveTOI(v57, v64);
    if ( v60 > 0 )
    {
      for ( m = 0; m < v60; ++m )
      {
        while ( 1 )
        {
          v43 = *(b2Body **)(v58 + 4 * m);
          v44 = *(_WORD *)v43;
          *(_WORD *)v43 &= ~4u;
          if ( (v44 & 0xA) == 0 )
          {
            if ( *((_WORD *)v43 + 1) )
            {
              if ( !b2Body::SynchronizeShapes(v43) )
              {
                v45 = *(_DWORD *)(a1 + 103004);
                if ( v45 )
                  (*(void (__fastcall **)(_DWORD, b2Body *))(*(_DWORD *)v45 + 8))(*(_DWORD *)(a1 + 103004), v43);
              }
              v46 = *((_DWORD *)v43 + 28);
              if ( v46 )
                break;
            }
          }
          if ( v60 <= ++m )
            goto LABEL_61;
        }
        do
        {
          *(_DWORD *)(*(_DWORD *)(v46 + 4) + 4) &= ~8u;
          v46 = *(_DWORD *)(v46 + 12);
        }
        while ( v46 );
      }
    }
LABEL_61:
    if ( v62 > 0 )
    {
      for ( n = 0; n < v62; ++n )
      {
        v48 = *(_DWORD *)(v59 + 4 * n);
        *(_DWORD *)(v48 + 4) &= 0xFFFFFFF3;
      }
    }
    b2BroadPhase::Commit(*(b2BroadPhase **)(a1 + 102872));
    v7 = *(_DWORD *)(a1 + 102968);
  }
  while ( v7 );
LABEL_65:
  b2StackAllocator::Free(v56, i);
  b2Island::~b2Island((b2Island *)v57);
}


// ===== 7e8b1c b2World::Step(float,int) =====
b2DebugDraw *__fastcall b2World::Step(b2World *this, float a2, int a3)
{
  char v4; // r2
  char v5; // r3
  b2DebugDraw *result; // r0
  float v7; // [sp+4h] [bp-14h] BYREF
  float v8; // [sp+8h] [bp-10h]
  float v9; // [sp+Ch] [bp-Ch]
  int v10; // [sp+10h] [bp-8h]
  char v11; // [sp+14h] [bp-4h]
  char v12; // [sp+15h] [bp-3h]

  *((_BYTE *)this + 102868) = 1;
  v10 = a3;
  v7 = a2;
  if ( a2 > 0.0 )
    v8 = 1.0 / a2;
  else
    v8 = 0.0;
  v4 = *((_BYTE *)this + 103028);
  v5 = *((_BYTE *)&elf_hash_chain[9291] + (_DWORD)this + 1);
  v9 = *((float *)this + 25755) * a2;
  v12 = v4;
  v11 = v5;
  b2ContactManager::Collide((b2World *)((char *)this + 102876));
  if ( v7 > 0.0 )
    b2World::Solve((int)this, (int)&v7);
  if ( *((_BYTE *)this + 103030) && v7 > 0.0 )
    b2World::SolveTOI((int)this, &v7);
  result = b2World::DrawDebugData(this);
  *((float *)this + 25755) = v8;
  *((_BYTE *)this + 102868) = 0;
  return result;
}


// ===== 7e8c40 b2ContactFilter::~b2ContactFilter() =====
void __fastcall b2ContactFilter::~b2ContactFilter(b2ContactFilter *this)
{
  ;
}


// ===== 7e8c44 b2DebugDraw::~b2DebugDraw() =====
void __fastcall b2DebugDraw::~b2DebugDraw(b2DebugDraw *this)
{
  ;
}


// ===== 7e8c48 b2ContactFilter::ShouldCollide(b2Shape *,b2Shape *) =====
int __fastcall b2ContactFilter::ShouldCollide(b2ContactFilter *this, b2Shape *a2, b2Shape *a3)
{
  int v3; // r0
  int result; // r0

  v3 = *((__int16 *)a3 + 19);
  if ( v3 == *((__int16 *)a2 + 19) && *((_WORD *)a2 + 19) )
    return v3 > 0;
  result = (unsigned __int16)(*((_WORD *)a3 + 17) & *((_WORD *)a2 + 18));
  if ( (*((_WORD *)a3 + 17) & *((_WORD *)a2 + 18)) != 0 )
    return (unsigned __int16)(*((_WORD *)a3 + 18) & *((_WORD *)a2 + 17)) != 0;
  return result;
}


// ===== 7e8c9c b2DebugDraw::b2DebugDraw(void) =====
void __fastcall b2DebugDraw::b2DebugDraw(b2DebugDraw *this)
{
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_991AB8;
}


// ===== 7e8cc8 b2DebugDraw::b2DebugDraw(void) =====
void __fastcall b2DebugDraw::b2DebugDraw(b2DebugDraw *this)
{
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_991AB8;
}


// ===== 7e8cf4 b2DebugDraw::SetFlags(uint) =====
int __fastcall b2DebugDraw::SetFlags(int this, unsigned int a2)
{
  *(_DWORD *)(this + 4) = a2;
  return this;
}


// ===== 7e8cfc b2DebugDraw::GetFlags(void) =====
int __fastcall b2DebugDraw::GetFlags(b2DebugDraw *this)
{
  return *((_DWORD *)this + 1);
}


// ===== 7e8d04 b2DebugDraw::AppendFlags(uint) =====
int __fastcall b2DebugDraw::AppendFlags(int this, unsigned int a2)
{
  *(_DWORD *)(this + 4) |= a2;
  return this;
}


// ===== 7e8d14 b2DebugDraw::ClearFlags(uint) =====
int __fastcall b2DebugDraw::ClearFlags(int this, unsigned int a2)
{
  *(_DWORD *)(this + 4) &= ~a2;
  return this;
}


// ===== 7e8d24 b2ContactFilter::~b2ContactFilter() =====
void __fastcall b2ContactFilter::~b2ContactFilter(b2ContactFilter *this)
{
  LC_API_FREE_0(this);
}


// ===== 7e8d38 b2DebugDraw::~b2DebugDraw() =====
void __fastcall b2DebugDraw::~b2DebugDraw(b2DebugDraw *this)
{
  LC_API_FREE_0(this);
}


// ===== 7e8d4c `global constructor keyed to'.._.._src_Dynamics_b2WorldCallbacks.cpp =====
int `global constructor keyed to'.._.._src_Dynamics_b2WorldCallbacks.cpp()
{
  b2_defaultFilter = (int)off_991AE0;
  return _aeabi_atexit((int)&b2_defaultFilter, (int)b2ContactFilter::~b2ContactFilter, (int)&_dso_handle);
}


// ===== 7e8da0 b2BlockAllocator::Free(void *,int) =====
int __fastcall b2BlockAllocator::Free(int this, _DWORD *a2, int a3)
{
  if ( a3 )
  {
    this += 4 * (b2BlockAllocator::s_blockSizeLookup[a3] + 2);
    *a2 = *(_DWORD *)(this + 4);
    *(_DWORD *)(this + 4) = a2;
  }
  return this;
}


// ===== 7e8ddc b2BlockAllocator::~b2BlockAllocator() =====
void __fastcall b2BlockAllocator::~b2BlockAllocator(b2BlockAllocator *this)
{
  int v2; // r4

  if ( *((int *)this + 1) > 0 )
  {
    v2 = 0;
    do
      b2Free(*(void **)(*(_DWORD *)this + 8 * v2++ + 4));
    while ( *((_DWORD *)this + 1) > v2 );
  }
  b2Free(*(void **)this);
}


// ===== 7e8e24 b2BlockAllocator::~b2BlockAllocator() =====
void __fastcall b2BlockAllocator::~b2BlockAllocator(b2BlockAllocator *this)
{
  int v2; // r4

  if ( *((int *)this + 1) > 0 )
  {
    v2 = 0;
    do
      b2Free(*(void **)(*(_DWORD *)this + 8 * v2++ + 4));
    while ( *((_DWORD *)this + 1) > v2 );
  }
  b2Free(*(void **)this);
}


// ===== 7e8e6c b2BlockAllocator::Clear(void) =====
void *__fastcall b2BlockAllocator::Clear(b2BlockAllocator *this)
{
  int v2; // r5
  int v3; // r2
  void *result; // r0

  if ( *((int *)this + 1) > 0 )
  {
    v2 = 0;
    do
      b2Free(*(void **)(*(_DWORD *)this + 8 * v2++ + 4));
    while ( *((_DWORD *)this + 1) > v2 );
  }
  v3 = *((_DWORD *)this + 2);
  *((_DWORD *)this + 1) = 0;
  result = LC_API_MEMSET_0(*(void **)this, 0, 8 * v3);
  *((_DWORD *)this + 16) = 0;
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
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  return result;
}


// ===== 7e8efc b2BlockAllocator::b2BlockAllocator(void) =====
void __fastcall b2BlockAllocator::b2BlockAllocator(b2BlockAllocator *this)
{
  void *v2; // r0
  size_t v3; // r2
  int v4; // r2
  int i; // r3

  *((_DWORD *)this + 2) = 128;
  *((_DWORD *)this + 1) = 0;
  v2 = (void *)b2Alloc(1024);
  v3 = 8 * *((_DWORD *)this + 2);
  *(_DWORD *)this = v2;
  LC_API_MEMSET_0(v2, 0, v3);
  *((_DWORD *)this + 16) = 0;
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
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  v4 = (unsigned __int8)b2BlockAllocator::s_blockSizeLookupInitialized;
  if ( !b2BlockAllocator::s_blockSizeLookupInitialized )
  {
    for ( i = 1; i != 641; ++i )
    {
      if ( i > b2BlockAllocator::s_blockSizes[v4] )
        ++v4;
      b2BlockAllocator::s_blockSizeLookup[i] = v4;
    }
    b2BlockAllocator::s_blockSizeLookupInitialized = 1;
  }
}


// ===== 7e8fdc b2BlockAllocator::b2BlockAllocator(void) =====
void __fastcall b2BlockAllocator::b2BlockAllocator(b2BlockAllocator *this)
{
  void *v2; // r0
  size_t v3; // r2
  int v4; // r2
  int i; // r3

  *((_DWORD *)this + 2) = 128;
  *((_DWORD *)this + 1) = 0;
  v2 = (void *)b2Alloc(1024);
  v3 = 8 * *((_DWORD *)this + 2);
  *(_DWORD *)this = v2;
  LC_API_MEMSET_0(v2, 0, v3);
  *((_DWORD *)this + 16) = 0;
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
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  v4 = (unsigned __int8)b2BlockAllocator::s_blockSizeLookupInitialized;
  if ( !b2BlockAllocator::s_blockSizeLookupInitialized )
  {
    for ( i = 1; i != 641; ++i )
    {
      if ( i > b2BlockAllocator::s_blockSizes[v4] )
        ++v4;
      b2BlockAllocator::s_blockSizeLookup[i] = v4;
    }
    b2BlockAllocator::s_blockSizeLookupInitialized = 1;
  }
}


// ===== 7e90bc b2BlockAllocator::Allocate(int) =====
int __fastcall b2BlockAllocator::Allocate(b2BlockAllocator *this, int a2)
{
  int v3; // r8
  char *v4; // r3
  _DWORD *v5; // r6
  int result; // r0
  int v7; // r9
  int v8; // r11
  int v9; // r0
  _DWORD *v10; // r10
  int v11; // r6
  int v12; // r4
  int v13; // r0
  int v14; // r3
  int v15; // r2
  _DWORD *v16; // r1
  void *v17; // r10
  void *v18; // r0
  int v19; // r2

  if ( !a2 )
    return 0;
  v3 = b2BlockAllocator::s_blockSizeLookup[a2];
  v4 = (char *)this + 4 * v3 + 8;
  v5 = *((_DWORD **)v4 + 1);
  if ( v5 )
  {
    result = *((_DWORD *)v4 + 1);
    *((_DWORD *)v4 + 1) = *v5;
  }
  else
  {
    v7 = *((_DWORD *)this + 1);
    if ( v7 == *((_DWORD *)this + 2) )
    {
      *((_DWORD *)this + 2) = v7 + 128;
      v17 = *(void **)this;
      v18 = (void *)b2Alloc(8 * (v7 + 128));
      v19 = *((_DWORD *)this + 1);
      *(_DWORD *)this = v18;
      memcpy(v18, v17, 8 * v19);
      LC_API_MEMSET_0((void *)(*(_DWORD *)this + 8 * *((_DWORD *)this + 1)), 0, 0x400u);
      b2Free(v17);
      v7 = *((_DWORD *)this + 1);
    }
    v8 = *(_DWORD *)this;
    v9 = b2Alloc(4096);
    v10 = (_DWORD *)(v8 + 8 * v7);
    v10[1] = v9;
    v11 = v9;
    v12 = b2BlockAllocator::s_blockSizes[v3];
    *v10 = v12;
    v13 = 4096 / v12;
    if ( 4096 / v12 - 1 > 0 )
    {
      v14 = 0;
      v15 = 1;
      while ( 1 )
      {
        v16 = (_DWORD *)(v11 + v14);
        ++v15;
        v14 += v12;
        *v16 = v11 + v14;
        if ( v15 == v13 )
          break;
        v11 = v10[1];
      }
      v11 = v10[1];
    }
    *(_DWORD *)(v11 + v12 * (v13 - 1)) = 0;
    *((_DWORD *)this + v3 + 3) = *(_DWORD *)v10[1];
    ++*((_DWORD *)this + 1);
    return v10[1];
  }
  return result;
}


// ===== 7e9218 b2CircleShape::TestPoint(b2XForm const&,b2Vec2 const&) =====
bool __fastcall b2CircleShape::TestPoint(float *a1, float *a2, float *a3)
{
  float v4; // r6
  float v6; // r10
  float v7; // r0
  float v8; // r6
  float v9; // r7

  v4 = a1[13];
  v6 = a1[12] * a2[2];
  v7 = (float)(a1[12] * a2[3]) + (float)(v4 * a2[5]);
  v8 = (float)(v6 + (float)(v4 * a2[4])) + *a2;
  v9 = a3[1] - (float)(v7 + a2[1]);
  return (float)(a1[14] * a1[14]) >= (float)((float)((float)(*a3 - v8) * (float)(*a3 - v8)) + (float)(v9 * v9));
}


// ===== 7e9320 b2CircleShape::ComputeAABB(b2AABB *,b2XForm const&) =====
float __fastcall b2CircleShape::ComputeAABB(float *a1, float *a2, float *a3)
{
  float v3; // r8
  float v5; // r10
  float v6; // r0
  float v7; // r8
  float v8; // r0
  float v9; // r6
  float v10; // r4
  float result; // r0

  v3 = a1[13];
  v5 = a1[12] * a3[2];
  v6 = (float)(a1[12] * a3[3]) + (float)(v3 * a3[5]);
  v7 = (float)(v5 + (float)(v3 * a3[4])) + *a3;
  v8 = v6 + a3[1];
  v9 = a1[14];
  *a2 = v7 - v9;
  a2[1] = v8 - v9;
  v10 = a1[14];
  a2[2] = v10 + v7;
  result = v10 + v8;
  a2[3] = result;
  return result;
}


// ===== 7e93fc b2CircleShape::ComputeSweptAABB(b2AABB *,b2XForm const&,b2XForm const&) =====
float __fastcall b2CircleShape::ComputeSweptAABB(float *a1, float *a2, float *a3, float *a4)
{
  float v4; // r5
  float v5; // r8
  float v7; // r9
  float v8; // r6
  float v9; // r11
  float v10; // r0
  float v11; // r8
  float v12; // r5
  float v13; // r11
  float v14; // r10
  float v15; // r5
  float v16; // r4

  v4 = a1[12];
  v5 = a1[13];
  v7 = (float)((float)(v4 * a3[2]) + (float)(v5 * a3[4])) + *a3;
  v8 = (float)((float)(v4 * a3[3]) + (float)(v5 * a3[5])) + a3[1];
  v9 = (float)(v4 * a4[2]) + (float)(v5 * a4[4]);
  v10 = (float)(v4 * a4[3]) + (float)(v5 * a4[5]);
  v11 = v9 + *a4;
  v12 = v10 + a4[1];
  if ( v7 >= v11 )
    v13 = v9 + *a4;
  else
    v13 = v7;
  if ( v8 < v12 )
    v14 = v8;
  else
    v14 = v10 + a4[1];
  if ( v7 <= v11 )
    v7 = v11;
  if ( v8 <= v12 )
    v8 = v10 + a4[1];
  v15 = a1[14];
  *a2 = v13 - v15;
  a2[1] = v14 - v15;
  v16 = a1[14];
  a2[2] = v16 + v7;
  a2[3] = v16 + v8;
  return v16 + v8;
}


// ===== 7e95ac b2CircleShape::ComputeMass(b2MassData *) =====
float __fastcall b2CircleShape::ComputeMass(int a1, int a2)
{
  float v3; // r0
  float result; // r0

  v3 = *(float *)(a1 + 56) * (float)((float)(*(float *)(a1 + 20) * 3.1416) * *(float *)(a1 + 56));
  *(float *)a2 = v3;
  *(_DWORD *)(a2 + 4) = *(_DWORD *)(a1 + 48);
  *(_DWORD *)(a2 + 8) = *(_DWORD *)(a1 + 52);
  result = v3
         * (float)((float)(*(float *)(a1 + 56) * (float)(*(float *)(a1 + 56) * 0.5))
                 + (float)((float)(*(float *)(a1 + 48) * *(float *)(a1 + 48))
                         + (float)(*(float *)(a1 + 52) * *(float *)(a1 + 52))));
  *(float *)(a2 + 12) = result;
  return result;
}


// ===== 7e9668 b2CircleShape::~b2CircleShape() =====
void __fastcall b2CircleShape::~b2CircleShape(b2CircleShape *this)
{
  *(_DWORD *)this = &off_991AF8;
  b2Shape::~b2Shape(this);
}


// ===== 7e969c b2CircleShape::TestSegment(b2XForm const&,float *,b2Vec2 *,b2Segment const&,float) =====
int __fastcall b2CircleShape::TestSegment(float *a1, float *a2, float *a3, float *a4, float *a5, float a6)
{
  float v6; // r6
  float v7; // r10
  float v8; // r4
  float v9; // r6
  float v10; // r9
  float v11; // r7
  float v12; // r0
  float v13; // r5
  float v14; // r8
  float v15; // r10
  float v16; // r0
  float v18; // r8

  v6 = a1[13];
  v7 = a5[1];
  v8 = *a5 - (float)((float)((float)(a1[12] * a2[2]) + (float)(v6 * a2[4])) + *a2);
  v9 = v7 - (float)((float)((float)(a1[12] * a2[3]) + (float)(v6 * a2[5])) + a2[1]);
  v10 = (float)((float)(v8 * v8) + (float)(v9 * v9)) - (float)(a1[14] * a1[14]);
  if ( v10 < 0.0 )
    return 0;
  v11 = a5[2] - *a5;
  v12 = a5[3] - v7;
  v13 = v12;
  v14 = (float)(v8 * v11) + (float)(v9 * v12);
  v15 = (float)(v11 * v11) + (float)(v12 * v12);
  v16 = (float)(v14 * v14) - (float)(v10 * v15);
  if ( v16 < 0.0 )
    return 0;
  if ( v15 < 0.00000011921 )
    return 0;
  LODWORD(v18) = COERCE_INT(sqrtf(v16) + v14) + 0x80000000;
  if ( v18 < 0.0 || (float)(a6 * v15) < v18 )
    return 0;
  *a3 = v18 / v15;
  a4[1] = v9 + (float)((float)(v18 / v15) * v13);
  *a4 = v8 + (float)((float)(v18 / v15) * v11);
  b2Vec2::Normalize((b2Vec2 *)a4);
  return 1;
}


// ===== 7e993c b2CircleShape::UpdateSweepRadius(b2Vec2 const&) =====
float __fastcall b2CircleShape::UpdateSweepRadius(b2CircleShape *this, const b2Vec2 *a2)
{
  float v3; // r7
  float v4; // r0
  float result; // r0

  v3 = *((float *)this + 12) - *(float *)a2;
  v4 = *((float *)this + 13) - *((float *)a2 + 1);
  result = (float)(sqrtf((float)(v3 * v3) + (float)(v4 * v4)) + *((float *)this + 14)) - 0.04;
  *((float *)this + 4) = result;
  return result;
}


// ===== 7e99b0 b2CircleShape::b2CircleShape(b2ShapeDef const*) =====
void __fastcall b2CircleShape::b2CircleShape(b2CircleShape *this, const b2ShapeDef *a2)
{
  b2Shape::b2Shape(this, a2);
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = &off_991AF8;
  *((_DWORD *)this + 12) = *((_DWORD *)a2 + 8);
  *((_DWORD *)this + 13) = *((_DWORD *)a2 + 9);
  *((_DWORD *)this + 14) = *((_DWORD *)a2 + 10);
}


// ===== 7e9a08 b2CircleShape::b2CircleShape(b2ShapeDef const*) =====
void __fastcall b2CircleShape::b2CircleShape(b2CircleShape *this, const b2ShapeDef *a2)
{
  b2Shape::b2Shape(this, a2);
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = &off_991AF8;
  *((_DWORD *)this + 12) = *((_DWORD *)a2 + 8);
  *((_DWORD *)this + 13) = *((_DWORD *)a2 + 9);
  *((_DWORD *)this + 14) = *((_DWORD *)a2 + 10);
}


// ===== 7e9a60 b2CircleShape::~b2CircleShape() =====
void __fastcall b2CircleShape::~b2CircleShape(b2CircleShape *this)
{
  *(_DWORD *)this = &off_991AF8;
  b2Shape::~b2Shape(this);
  LC_API_FREE_0(this);
}


// ===== 7e9a9c b2Contact::AddType(b2Contact* (*)(b2Shape *,b2Shape *,b2BlockAllocator *),void (*)(b2Contact*,b2BlockAllocator *),b2ShapeType,b2ShapeType) =====
int __fastcall b2Contact::AddType(int result, int a2, int a3, int a4)
{
  char *v4; // r12
  char *v5; // r12

  v4 = (char *)&b2Contact::s_registers + 24 * a3 + 12 * a4;
  *(_DWORD *)v4 = result;
  v4[8] = 1;
  *((_DWORD *)v4 + 1) = a2;
  if ( a3 != a4 )
  {
    v5 = (char *)&b2Contact::s_registers + 24 * a4 + 12 * a3;
    *(_DWORD *)v5 = result;
    v5[8] = 0;
    *((_DWORD *)v5 + 1) = a2;
  }
  return result;
}


// ===== 7e9b08 b2Contact::InitializeRegisters(void) =====
int __fastcall b2Contact::InitializeRegisters(b2Contact *this)
{
  b2Contact::AddType((int)b2CircleContact::Create, (int)b2CircleContact::Destroy, 0, 0);
  b2Contact::AddType((int)b2PolyAndCircleContact::Create, (int)b2PolyAndCircleContact::Destroy, 1, 0);
  return b2Contact::AddType((int)b2PolygonContact::Create, (int)b2PolygonContact::Destroy, 1, 1);
}


// ===== 7e9b88 b2Contact::Create(b2Shape *,b2Shape *,b2BlockAllocator *) =====
int __fastcall b2Contact::Create(b2Contact *this, b2Shape *a2, b2Shape *a3, b2BlockAllocator *a4)
{
  int v6; // r1
  int (__fastcall *v7)(b2Contact *, b2Shape *); // r3
  char *v8; // r1
  int v9; // r5
  int v10; // r4
  int v11; // r6
  int v12; // r0
  unsigned int v13; // r3

  if ( !b2Contact::s_initialized )
  {
    b2Contact::InitializeRegisters(this);
    b2Contact::s_initialized = 1;
  }
  v6 = 24 * *((_DWORD *)this + 1) + 12 * *((_DWORD *)a2 + 1);
  v7 = *(int (__fastcall **)(b2Contact *, b2Shape *))((char *)&b2Contact::s_registers + v6);
  v8 = (char *)&b2Contact::s_registers + v6;
  if ( !v7 )
    return 0;
  v10 = (unsigned __int8)v8[8];
  if ( v8[8] )
    return v7(this, a2);
  v9 = v7(a2, this);
  if ( *(int *)(v9 + 8) > 0 )
  {
    v11 = v10;
    do
    {
      v12 = (**(int (__fastcall ***)(int))v9)(v9) + v10;
      ++v11;
      v13 = *(_DWORD *)(v12 + 68) + 0x80000000;
      *(_DWORD *)(v12 + 64) += 0x80000000;
      *(_DWORD *)(v12 + 68) = v13;
      v10 += 76;
    }
    while ( v11 < *(_DWORD *)(v9 + 8) );
  }
  return v9;
}


// ===== 7e9c98 b2Contact::Destroy(b2Contact*,b2BlockAllocator *) =====
int __fastcall b2Contact::Destroy(b2Contact *this, b2Contact *a2, b2BlockAllocator *a3)
{
  __int16 *v3; // r3
  __int16 v4; // lr
  __int16 *v5; // r3
  __int16 v6; // lr

  if ( *((int *)this + 2) > 0 )
  {
    v3 = *(__int16 **)(*((_DWORD *)this + 13) + 12);
    v4 = *v3;
    *((_DWORD *)v3 + 35) = 0;
    *v3 = v4 & 0xFFF7;
    v5 = *(__int16 **)(*((_DWORD *)this + 14) + 12);
    v6 = *v5;
    *((_DWORD *)v5 + 35) = 0;
    *v5 = v6 & 0xFFF7;
  }
  return (*(&b2Contact::s_registers[6 * *(_DWORD *)(*((_DWORD *)this + 13) + 4) + 1]
          + 3 * *(_DWORD *)(*((_DWORD *)this + 14) + 4)))();
}


// ===== 7e9d24 b2Contact::Update(b2ContactListener *) =====
int __fastcall b2Contact::Update(b2Contact *this, b2ContactListener *a2)
{
  int v3; // r5
  int result; // r0
  _BOOL4 v5; // r1
  __int16 *v6; // r3
  unsigned __int16 *v7; // r2
  __int16 v8; // r0

  v3 = *((_DWORD *)this + 2);
  (*(void (__fastcall **)(b2Contact *, b2ContactListener *))(*(_DWORD *)this + 12))(this, a2);
  result = *((_DWORD *)this + 2);
  v5 = v3 > 0;
  if ( result )
    v5 = 0;
  v6 = *(__int16 **)(*((_DWORD *)this + 13) + 12);
  v7 = *(unsigned __int16 **)(*((_DWORD *)this + 14) + 12);
  if ( v5 )
  {
    v8 = *v6;
    *((_DWORD *)v6 + 35) = 0;
    *v6 = v8 & 0xFFF7;
    result = *v7;
    *((_DWORD *)v7 + 35) = 0;
    *v7 = result & 0xFFF7;
  }
  if ( !v6[1] || (*v6 & 0x20) != 0 || !v7[1] || (*v7 & 0x20) != 0 )
    *((_DWORD *)this + 1) &= ~2u;
  else
    *((_DWORD *)this + 1) |= 2u;
  return result;
}


// ===== 7e9de0 b2Contact::b2Contact(b2Shape *,b2Shape *) =====
void __fastcall b2Contact::b2Contact(b2Contact *this, b2Shape *a2, b2Shape *a3)
{
  float v4; // r0
  int v5; // r3
  int v6; // r2
  float v7; // r5

  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = &off_991A88;
  if ( *((_BYTE *)a2 + 40) || *((_BYTE *)a3 + 40) )
    *((_DWORD *)this + 1) = 1;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 14) = a3;
  *((_DWORD *)this + 13) = a2;
  v4 = sqrtf(*((float *)a2 + 6) * *((float *)a3 + 6));
  v5 = *((_DWORD *)this + 14);
  v6 = *((_DWORD *)this + 13);
  *((float *)this + 15) = v4;
  v7 = *(float *)(v5 + 28);
  if ( *(float *)(v6 + 28) > v7 )
    v7 = *(float *)(v6 + 28);
  *((float *)this + 16) = v7;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
}


// ===== 7e9eb8 b2Contact::b2Contact(b2Shape *,b2Shape *) =====
void __fastcall b2Contact::b2Contact(b2Contact *this, b2Shape *a2, b2Shape *a3)
{
  float v4; // r0
  int v5; // r3
  int v6; // r2
  float v7; // r5

  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = &off_991A88;
  if ( *((_BYTE *)a2 + 40) || *((_BYTE *)a3 + 40) )
    *((_DWORD *)this + 1) = 1;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 14) = a3;
  *((_DWORD *)this + 13) = a2;
  v4 = sqrtf(*((float *)a2 + 6) * *((float *)a3 + 6));
  v5 = *((_DWORD *)this + 14);
  v6 = *((_DWORD *)this + 13);
  *((float *)this + 15) = v4;
  v7 = *(float *)(v5 + 28);
  if ( *(float *)(v6 + 28) > v7 )
    v7 = *(float *)(v6 + 28);
  *((float *)this + 16) = v7;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
}


// ===== 7e9f90 b2ContactManager::~b2ContactManager() =====
void __fastcall b2ContactManager::~b2ContactManager(b2ContactManager *this)
{
  *((_DWORD *)this + 2) = &off_991A88;
  *(_DWORD *)this = off_991B20;
}


// ===== 7e9fc8 b2ContactManager::~b2ContactManager() =====
void __fastcall b2ContactManager::~b2ContactManager(b2ContactManager *this)
{
  *(_DWORD *)this = off_991B20;
  *((_DWORD *)this + 2) = &off_991A88;
  LC_API_FREE_0(this);
}


// ===== 7ea010 b2ContactManager::Collide(void) =====
int __fastcall b2ContactManager::Collide(int this)
{
  b2Contact *v1; // r4
  int i; // r6

  v1 = *(b2Contact **)(*(_DWORD *)(this + 4) + 102968);
  for ( i = this; v1; v1 = *((b2Contact **)v1 + 4) )
  {
    this = (int)v1;
    if ( (**(_WORD **)(*((_DWORD *)v1 + 13) + 12) & 8) == 0 || (**(_WORD **)(*((_DWORD *)v1 + 14) + 12) & 8) == 0 )
      this = b2Contact::Update(v1, *(b2ContactListener **)(*(_DWORD *)(i + 4) + 103012));
  }
  return this;
}


// ===== 7ea084 b2ContactManager::Destroy(b2Contact *) =====
int __fastcall b2ContactManager::Destroy(b2ContactManager *this, b2Contact *a2)
{
  b2Contact *v2; // r12
  float *v3; // r4
  float *v4; // r5
  float *v5; // r7
  int v6; // r3
  int v7; // lr
  int v8; // r1
  float *v9; // r6
  int v10; // r8
  float v11; // r10
  float v12; // r0
  float v13; // r10
  float v14; // r0
  float v15; // r11
  float v16; // r10
  float v17; // r0
  float v18; // r10
  float v19; // r11
  float v20; // r0
  float v21; // r10
  float v22; // r0
  int v23; // r3
  int v24; // r2
  int v25; // r3
  int v26; // r3
  int v27; // r2
  int v28; // r3
  int v29; // r1
  int v30; // r2
  int v31; // r3
  int v32; // r3
  int v33; // r3
  int result; // r0
  float v35; // [sp+4h] [bp-58h]
  float v37; // [sp+8h] [bp-54h]
  int v38; // [sp+Ch] [bp-50h]
  int v40; // [sp+18h] [bp-44h]
  int v41; // [sp+1Ch] [bp-40h]
  int v42; // [sp+20h] [bp-3Ch]
  b2Contact *v43; // [sp+24h] [bp-38h]
  _DWORD v44[13]; // [sp+28h] [bp-34h] BYREF

  v2 = a2;
  v40 = *((_DWORD *)a2 + 2);
  v42 = *((_DWORD *)a2 + 13);
  v41 = *((_DWORD *)a2 + 14);
  if ( v40 > 0 && *(_DWORD *)(*((_DWORD *)this + 1) + 103012) )
  {
    v3 = *(float **)(*((_DWORD *)a2 + 13) + 12);
    v4 = *(float **)(v41 + 12);
    v5 = (float *)(**(int (__fastcall ***)(b2Contact *))a2)(a2);
    v6 = *((_DWORD *)a2 + 16);
    v7 = *((_DWORD *)a2 + 13);
    v8 = *((_DWORD *)a2 + 14);
    v44[9] = *((_DWORD *)a2 + 15);
    v44[10] = v6;
    v44[0] = v7;
    v44[1] = v8;
    v38 = 0;
    v43 = a2;
    do
    {
      *(float *)&v44[6] = v5[16];
      *(float *)&v44[7] = v5[17];
      if ( *((int *)v5 + 18) > 0 )
      {
        v9 = v5;
        v10 = 0;
        do
        {
          v11 = v9[1];
          v12 = (float)((float)(*v9 * v3[4]) + (float)(v11 * v3[6])) + v3[2];
          *(float *)&v44[2] = (float)((float)(*v9 * v3[3]) + (float)(v11 * v3[5])) + v3[1];
          *(float *)&v44[3] = v12;
          v13 = v9[1];
          v14 = (float)(*v9 * v3[4]) + (float)(v13 * v3[6]);
          v15 = (float)((float)(*v9 * v3[3]) + (float)(v13 * v3[5])) + v3[1];
          v16 = v3[18];
          v35 = (float)((float)((float)(v14 + v3[2]) - v3[12]) * COERCE_FLOAT(LODWORD(v16) + 0x80000000)) + v3[16];
          v17 = (float)(v16 * (float)(v15 - v3[11])) + v3[17];
          v18 = v9[3];
          v37 = v17;
          v19 = (float)(v9[2] * v4[3]) + (float)(v18 * v4[5]);
          v20 = (float)(v9[2] * v4[4]) + (float)(v18 * v4[6]);
          v21 = v4[18];
          v22 = (float)((float)((float)(v20 + v4[2]) - v4[12]) * COERCE_FLOAT(LODWORD(v21) + 0x80000000)) + v4[16];
          ++v10;
          *(float *)&v44[5] = (float)((float)(v21 * (float)((float)(v19 + v4[1]) - v4[11])) + v4[17]) - v37;
          *(float *)&v44[4] = v22 - v35;
          v23 = *((_DWORD *)this + 1);
          *(float *)&v44[8] = v9[4];
          v24 = *((_DWORD *)v9 + 7);
          v9 += 8;
          v44[11] = v24;
          (*(void (__fastcall **)(_DWORD, _DWORD *))(**(_DWORD **)(v23 + 103012) + 16))(*(_DWORD *)(v23 + 103012), v44);
        }
        while ( *((_DWORD *)v5 + 18) > v10 );
      }
      v5 += 19;
      ++v38;
    }
    while ( v38 != v40 );
    v2 = v43;
  }
  v25 = *((_DWORD *)v2 + 3);
  if ( v25 )
    *(_DWORD *)(v25 + 16) = *((_DWORD *)v2 + 4);
  v26 = *((_DWORD *)v2 + 4);
  if ( v26 )
    *(_DWORD *)(v26 + 12) = *((_DWORD *)v2 + 3);
  v27 = *((_DWORD *)this + 1);
  if ( *(b2Contact **)(v27 + 102968) == v2 )
    *(_DWORD *)(v27 + 102968) = *((_DWORD *)v2 + 4);
  v28 = *((_DWORD *)v2 + 7);
  v29 = *(_DWORD *)(v42 + 12);
  v30 = *(_DWORD *)(v41 + 12);
  if ( v28 )
    *(_DWORD *)(v28 + 12) = *((_DWORD *)v2 + 8);
  v31 = *((_DWORD *)v2 + 8);
  if ( v31 )
    *(_DWORD *)(v31 + 8) = *((_DWORD *)v2 + 7);
  if ( *(b2Contact **)(v29 + 112) == (b2Contact *)((char *)v2 + 20) )
    *(_DWORD *)(v29 + 112) = *((_DWORD *)v2 + 8);
  v32 = *((_DWORD *)v2 + 11);
  if ( v32 )
    *(_DWORD *)(v32 + 12) = *((_DWORD *)v2 + 12);
  v33 = *((_DWORD *)v2 + 12);
  if ( v33 )
    *(_DWORD *)(v33 + 8) = *((_DWORD *)v2 + 11);
  if ( *(b2Contact **)(v30 + 112) == (b2Contact *)((char *)v2 + 36) )
    *(_DWORD *)(v30 + 112) = *((_DWORD *)v2 + 12);
  result = b2Contact::Destroy(v2, *((b2Contact **)this + 1), this);
  --*(_DWORD *)(*((_DWORD *)this + 1) + 102976);
  return result;
}


// ===== 7ea508 b2ContactManager::PairRemoved(void *,void *,void *) =====
int __fastcall b2ContactManager::PairRemoved(int this, void *a2, void *a3, b2Contact *a4)
{
  if ( a4 )
  {
    if ( a4 != (b2Contact *)(this + 8) )
      return b2ContactManager::Destroy((b2ContactManager *)this, a4);
  }
  return this;
}


// ===== 7ea520 b2ContactManager::PairAdded(void *,void *) =====
_DWORD *__fastcall b2ContactManager::PairAdded(b2ContactManager *this, b2Contact *a2, b2Shape *a3)
{
  int v3; // r3
  int v7; // r2
  _DWORD *v8; // r2
  _DWORD *result; // r0
  b2Shape *v10; // r2
  b2BlockAllocator *v11; // r3
  int v12; // r2
  int v13; // r3
  int v14; // r12
  int v15; // r1
  int v16; // r12
  _DWORD *v17; // r1
  int v18; // r1
  _DWORD *v19; // r2

  v3 = *((_DWORD *)a2 + 3);
  v7 = *((_DWORD *)a3 + 3);
  if ( !*(_WORD *)(v3 + 2) && !*(_WORD *)(v7 + 2) || v3 == v7 )
    return (_DWORD *)((char *)this + 8);
  v8 = *(_DWORD **)(v7 + 108);
  if ( v8 )
  {
    while ( v3 != *v8 )
    {
      v8 = (_DWORD *)v8[3];
      if ( !v8 )
        goto LABEL_10;
    }
    if ( *(_BYTE *)(v8[1] + 61) != 1 )
      return (_DWORD *)((char *)this + 8);
  }
LABEL_10:
  v10 = *((b2Shape **)this + 1);
  v11 = *((b2BlockAllocator **)v10 + 25752);
  if ( v11 )
  {
    if ( !(*(int (__fastcall **)(_DWORD, b2Contact *, b2Shape *))(*(_DWORD *)v11 + 8))(*((_DWORD *)v10 + 25752), a2, a3) )
      return (_DWORD *)((char *)this + 8);
    v10 = *((b2Shape **)this + 1);
  }
  result = (_DWORD *)b2Contact::Create(a2, a3, v10, v11);
  if ( !result )
    return (_DWORD *)((char *)this + 8);
  v12 = *(_DWORD *)(result[13] + 12);
  v13 = *(_DWORD *)(result[14] + 12);
  result[3] = 0;
  result[4] = *(_DWORD *)(*((_DWORD *)this + 1) + 102968);
  v14 = *((_DWORD *)this + 1);
  v15 = *(_DWORD *)(v14 + 102968);
  if ( v15 )
  {
    *(_DWORD *)(v15 + 12) = result;
    v14 = *((_DWORD *)this + 1);
  }
  *(_DWORD *)(v14 + 102968) = result;
  result[5] = v13;
  result[7] = 0;
  result[6] = result;
  result[8] = *(_DWORD *)(v12 + 112);
  v16 = *(_DWORD *)(v12 + 112);
  v17 = result + 5;
  if ( v16 )
    *(_DWORD *)(v16 + 8) = v17;
  *(_DWORD *)(v12 + 112) = v17;
  result[9] = v12;
  result[11] = 0;
  result[10] = result;
  result[12] = *(_DWORD *)(v13 + 112);
  v18 = *(_DWORD *)(v13 + 112);
  v19 = result + 9;
  if ( v18 )
    *(_DWORD *)(v18 + 8) = v19;
  *(_DWORD *)(v13 + 112) = v19;
  ++*(_DWORD *)(*((_DWORD *)this + 1) + 102976);
  return result;
}


// ===== 7ea6a8 b2Island::Report(b2ContactConstraint *) =====
int __fastcall b2Island::Report(int result, int a2)
{
  int v2; // r3
  float *v3; // r4
  float *v4; // r7
  int v5; // r6
  float *v6; // r5
  int v7; // r8
  float v8; // r10
  float v9; // r0
  int v10; // r3
  int v11; // r2
  bool v12; // cc
  int i; // [sp+0h] [bp-44h]
  _DWORD *v14; // [sp+4h] [bp-40h]
  int v15; // [sp+Ch] [bp-38h]
  int v17; // [sp+14h] [bp-30h]
  _DWORD v18[10]; // [sp+1Ch] [bp-28h] BYREF

  v14 = (_DWORD *)result;
  if ( *(_DWORD *)(result + 4) && *(int *)(result + 28) > 0 )
  {
    v17 = 0;
    do
    {
      v2 = *(_DWORD *)(v14[3] + 4 * v17);
      v18[0] = *(_DWORD *)(v2 + 52);
      v18[1] = *(_DWORD *)(v2 + 56);
      v15 = *(_DWORD *)(v2 + 8);
      v3 = *(float **)(v18[0] + 12);
      result = (**(int (__fastcall ***)(int))v2)(v2);
      if ( v15 > 0 )
      {
        v4 = (float *)result;
        for ( i = 0; i != v15; ++i )
        {
          *(float *)&v18[4] = v4[16];
          *(float *)&v18[5] = v4[17];
          if ( *((int *)v4 + 18) > 0 )
          {
            v5 = a2;
            v6 = v4;
            v7 = 0;
            do
            {
              v8 = v6[1];
              v9 = (float)((float)(*v6 * v3[4]) + (float)(v8 * v3[6])) + v3[2];
              *(float *)&v18[2] = (float)((float)(*v6 * v3[3]) + (float)(v8 * v3[5])) + v3[1];
              *(float *)&v18[3] = v9;
              ++v7;
              v10 = v14[1];
              v18[6] = *(_DWORD *)(v5 + 32);
              v18[7] = *(_DWORD *)(v5 + 36);
              v11 = *((_DWORD *)v6 + 7);
              v5 += 64;
              v6 += 8;
              v18[8] = v11;
              result = (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v10 + 20))(v10, v18);
            }
            while ( *((_DWORD *)v4 + 18) > v7 );
          }
          v4 += 19;
        }
      }
      v12 = v14[7] <= ++v17;
      a2 += 160;
    }
    while ( !v12 );
  }
  return result;
}


// ===== 7ea878 b2Island::SolveTOI(b2TimeStep const&) =====
void __fastcall b2Island::SolveTOI(int a1, int a2)
{
  int v4; // r3
  int i; // r7
  int v6; // r2
  int j; // r8
  int v8; // r7
  int v9; // r3
  float v10; // r10
  float v11; // r0
  int v12; // r7
  _BYTE v13[24]; // [sp+8h] [bp-24h] BYREF
  int v14; // [sp+20h] [bp-Ch]

  b2ContactSolver::b2ContactSolver((int)v13, a2, *(_DWORD *)(a1 + 12), *(_DWORD *)(a1 + 28), *(b2StackAllocator **)a1);
  v4 = *(_DWORD *)(a2 + 12);
  if ( v4 > 0 )
  {
    for ( i = 0; i < v4; ++i )
    {
      b2ContactSolver::SolveVelocityConstraints((b2ContactSolver *)v13);
      v4 = *(_DWORD *)(a2 + 12);
    }
  }
  v6 = *(_DWORD *)(a1 + 20);
  if ( v6 > 0 )
  {
    for ( j = 0; j < v6; ++j )
    {
      v8 = *(_DWORD *)(*(_DWORD *)(a1 + 8) + 4 * j);
      if ( *(_WORD *)(v8 + 2) )
      {
        v9 = *(_DWORD *)(v8 + 48);
        v10 = *(float *)(v8 + 56);
        *(_DWORD *)(v8 + 36) = *(_DWORD *)(v8 + 44);
        *(_DWORD *)(v8 + 40) = v9;
        *(float *)(v8 + 52) = v10;
        v11 = *(float *)a2 * *(float *)(v8 + 68);
        *(float *)(v8 + 44) = *(float *)(v8 + 44) + (float)(*(float *)a2 * *(float *)(v8 + 64));
        *(float *)(v8 + 48) = *(float *)(v8 + 48) + v11;
        *(float *)(v8 + 56) = v10 + (float)(*(float *)a2 * *(float *)(v8 + 72));
        b2Body::SynchronizeTransform((b2Body *)v8);
        v6 = *(_DWORD *)(a1 + 20);
      }
    }
    v4 = *(_DWORD *)(a2 + 12);
  }
  if ( v4 > 0 )
  {
    v12 = 0;
    do
      ++v12;
    while ( !b2ContactSolver::SolvePositionConstraints((b2ContactSolver *)v13, 0.75) && *(_DWORD *)(a2 + 12) > v12 );
  }
  b2Island::Report(a1, v14);
  b2ContactSolver::~b2ContactSolver((b2ContactSolver *)v13);
}


// ===== 7ea9d0 b2Island::Solve(b2TimeStep const&,b2Vec2 const&,bool,bool) =====
void __fastcall b2Island::Solve(int a1, int a2, float *a3, int a4, char a5)
{
  int v6; // r6
  int v8; // r8
  int v9; // r7
  float v10; // r6
  float v11; // r11
  float v12; // r0
  float v13; // r9
  float v14; // r0
  float v15; // r6
  float v16; // r9
  float v17; // r11
  float v18; // r6
  float v19; // r6
  int v20; // r6
  int v21; // r3
  int v22; // r8
  int v23; // r6
  int v24; // r3
  int v25; // r6
  int i; // r10
  int v27; // r8
  int v28; // r3
  float v29; // r6
  float v30; // r0
  int v31; // r6
  int v32; // r3
  int v33; // r10
  int v34; // r8
  int v35; // r6
  int v36; // r3
  int v37; // r0
  int v38; // r3
  int v39; // r6
  float v40; // r11
  int v41; // r8
  int v42; // r10
  float v43; // r0
  int v44; // r2
  int v45; // r3
  int v46; // r0
  float v47; // [sp+Ch] [bp-38h]
  _BYTE v50[24]; // [sp+20h] [bp-24h] BYREF
  int v51; // [sp+38h] [bp-Ch]

  v6 = *(_DWORD *)(a1 + 20);
  if ( v6 > 0 )
  {
    v8 = 0;
    while ( 1 )
    {
      v9 = *(_DWORD *)(*(_DWORD *)(a1 + 8) + 4 * v8);
      if ( !*(_WORD *)(v9 + 2) )
        goto LABEL_6;
      v10 = *(float *)a2;
      v11 = (float)(*(float *)(v9 + 120) * *(float *)(v9 + 80)) + a3[1];
      v12 = (float)(*(float *)a2 * (float)((float)(*(float *)(v9 + 120) * *(float *)(v9 + 76)) + *a3))
          + *(float *)(v9 + 64);
      *(float *)(v9 + 64) = v12;
      v13 = v12;
      v14 = (float)(v10 * v11) + *(float *)(v9 + 68);
      *(float *)(v9 + 68) = v14;
      v47 = (float)((float)(*(float *)a2 * *(float *)(v9 + 128)) * *(float *)(v9 + 84)) + *(float *)(v9 + 72);
      *(float *)(v9 + 72) = v47;
      *(_DWORD *)(v9 + 76) = 0;
      *(_DWORD *)(v9 + 80) = 0;
      *(_DWORD *)(v9 + 84) = 0;
      v15 = 1.0 - (float)(*(float *)a2 * *(float *)(v9 + 132));
      if ( v15 < 1.0 )
      {
        if ( v15 < 0.0 )
          v15 = 0.0;
      }
      else
      {
        v15 = 1.0;
      }
      *(float *)(v9 + 64) = v13 * v15;
      v16 = v13 * v15;
      *(float *)(v9 + 68) = v14 * v15;
      v17 = v14 * v15;
      v18 = 1.0 - (float)(*(float *)a2 * *(float *)(v9 + 136));
      if ( v18 < 1.0 )
      {
        if ( v18 < 0.0 )
          v18 = 0.0;
      }
      else
      {
        v18 = 1.0;
      }
      v19 = v47 * v18;
      *(float *)(v9 + 72) = v19;
      if ( (float)((float)(v16 * v16) + (float)(v17 * v17)) > 40000.0 )
      {
        b2Vec2::Normalize((b2Vec2 *)(v9 + 64));
        *(float *)(v9 + 64) = *(float *)(v9 + 64) * 200.0;
        v19 = *(float *)(v9 + 72);
        *(float *)(v9 + 68) = *(float *)(v9 + 68) * 200.0;
      }
      if ( (float)(v19 * v19) <= 62500.0 )
        goto LABEL_19;
      if ( v19 < 0.0 )
      {
        *(_DWORD *)(v9 + 72) = -1015414784;
        v6 = *(_DWORD *)(a1 + 20);
LABEL_6:
        if ( v6 <= ++v8 )
          break;
      }
      else
      {
        *(_DWORD *)(v9 + 72) = 1132068864;
LABEL_19:
        v6 = *(_DWORD *)(a1 + 20);
        if ( v6 <= ++v8 )
          break;
      }
    }
  }
  b2ContactSolver::b2ContactSolver((int)v50, a2, *(_DWORD *)(a1 + 12), *(_DWORD *)(a1 + 28), *(b2StackAllocator **)a1);
  b2ContactSolver::InitVelocityConstraints(v50, a2);
  if ( *(int *)(a1 + 24) > 0 )
  {
    v20 = 0;
    do
    {
      v21 = *(_DWORD *)(*(_DWORD *)(a1 + 16) + 4 * v20++);
      (*(void (__fastcall **)(int, int))(*(_DWORD *)v21 + 24))(v21, a2);
    }
    while ( *(_DWORD *)(a1 + 24) > v20 );
  }
  if ( *(int *)(a2 + 12) > 0 )
  {
    v22 = 0;
    do
    {
      b2ContactSolver::SolveVelocityConstraints((b2ContactSolver *)v50);
      if ( *(int *)(a1 + 24) > 0 )
      {
        v23 = 0;
        do
        {
          v24 = *(_DWORD *)(*(_DWORD *)(a1 + 16) + 4 * v23++);
          (*(void (__fastcall **)(int, int))(*(_DWORD *)v24 + 28))(v24, a2);
        }
        while ( *(_DWORD *)(a1 + 24) > v23 );
      }
      ++v22;
    }
    while ( *(_DWORD *)(a2 + 12) > v22 );
  }
  b2ContactSolver::FinalizeVelocityConstraints((b2ContactSolver *)v50);
  v25 = *(_DWORD *)(a1 + 20);
  if ( v25 > 0 )
  {
    for ( i = 0; i < v25; ++i )
    {
      v27 = *(_DWORD *)(*(_DWORD *)(a1 + 8) + 4 * i);
      if ( *(_WORD *)(v27 + 2) )
      {
        v28 = *(_DWORD *)(v27 + 48);
        v29 = *(float *)(v27 + 56);
        *(_DWORD *)(v27 + 36) = *(_DWORD *)(v27 + 44);
        *(_DWORD *)(v27 + 40) = v28;
        *(float *)(v27 + 52) = v29;
        v30 = *(float *)a2 * *(float *)(v27 + 68);
        *(float *)(v27 + 44) = *(float *)(v27 + 44) + (float)(*(float *)a2 * *(float *)(v27 + 64));
        *(float *)(v27 + 48) = *(float *)(v27 + 48) + v30;
        *(float *)(v27 + 56) = v29 + (float)(*(float *)a2 * *(float *)(v27 + 72));
        b2Body::SynchronizeTransform((b2Body *)v27);
        v25 = *(_DWORD *)(a1 + 20);
      }
    }
  }
  if ( a4 )
  {
    if ( *(int *)(a1 + 24) > 0 )
    {
      v31 = 0;
      do
      {
        v32 = *(_DWORD *)(*(_DWORD *)(a1 + 16) + 4 * v31++);
        (*(void (__fastcall **)(int))(*(_DWORD *)v32 + 32))(v32);
      }
      while ( *(_DWORD *)(a1 + 24) > v31 );
    }
    *(_DWORD *)(a1 + 44) = 0;
    if ( *(int *)(a2 + 12) > 0 )
    {
      do
      {
        v33 = b2ContactSolver::SolvePositionConstraints((b2ContactSolver *)v50, 0.2);
        if ( *(int *)(a1 + 24) > 0 )
        {
          v35 = 0;
          v34 = 1;
          do
          {
            v36 = *(_DWORD *)(*(_DWORD *)(a1 + 16) + 4 * v35++);
            v37 = (*(int (__fastcall **)(int))(*(_DWORD *)v36 + 36))(v36);
            if ( v34 )
              v34 = v37;
            else
              v34 = 0;
          }
          while ( *(_DWORD *)(a1 + 24) > v35 );
        }
        else
        {
          v34 = 1;
        }
        if ( v33 && v34 )
          break;
        v38 = *(_DWORD *)(a1 + 44) + 1;
        *(_DWORD *)(a1 + 44) = v38;
      }
      while ( *(_DWORD *)(a2 + 12) > v38 );
    }
  }
  b2Island::Report(a1, v51);
  if ( a5 )
  {
    v39 = *(_DWORD *)(a1 + 20);
    if ( v39 > 0 )
    {
      v40 = 3.4028e38;
      v41 = 0;
      while ( 1 )
      {
        v42 = *(_DWORD *)(*(_DWORD *)(a1 + 8) + 4 * v41);
        if ( *(float *)(v42 + 120) == 0.0 )
          goto LABEL_53;
        if ( (*(_WORD *)v42 & 0x10) != 0 )
        {
          if ( (float)(*(float *)(v42 + 72) * *(float *)(v42 + 72)) > 0.00012346
            || (float)((float)(*(float *)(v42 + 64) * *(float *)(v42 + 64))
                     + (float)(*(float *)(v42 + 68) * *(float *)(v42 + 68))) > 0.0001 )
          {
            goto LABEL_52;
          }
          v43 = *(float *)(v42 + 140) + *(float *)a2;
          *(float *)(v42 + 140) = v43;
          if ( v40 >= v43 )
            v40 = v43;
          v39 = *(_DWORD *)(a1 + 20);
          if ( v39 <= ++v41 )
          {
LABEL_62:
            if ( v40 >= 0.5 && v39 > 0 )
            {
              v44 = 0;
              do
              {
                v45 = *(_DWORD *)(*(_DWORD *)(a1 + 8) + 4 * v44++);
                *(_WORD *)v45 |= 8u;
                *(_DWORD *)(v45 + 64) = b2Vec2_zero;
                v46 = dword_A2ED44;
                *(_DWORD *)(v45 + 72) = 0;
                *(_DWORD *)(v45 + 68) = v46;
              }
              while ( *(_DWORD *)(a1 + 20) > v44 );
            }
            break;
          }
        }
        else
        {
          *(_DWORD *)(v42 + 140) = 0;
LABEL_52:
          *(_DWORD *)(v42 + 140) = 0;
          v39 = *(_DWORD *)(a1 + 20);
          v40 = 0.0;
LABEL_53:
          if ( v39 <= ++v41 )
            goto LABEL_62;
        }
      }
    }
  }
  b2ContactSolver::~b2ContactSolver((b2ContactSolver *)v50);
}


// ===== 7eb078 b2Island::~b2Island() =====
void __fastcall b2Island::~b2Island(b2Island *this)
{
  b2StackAllocator::Free(*(b2StackAllocator **)this, *((void **)this + 4));
  b2StackAllocator::Free(*(b2StackAllocator **)this, *((void **)this + 3));
  b2StackAllocator::Free(*(b2StackAllocator **)this, *((void **)this + 2));
}


// ===== 7eb0ac b2Island::~b2Island() =====
void __fastcall b2Island::~b2Island(b2Island *this)
{
  b2StackAllocator::Free(*(b2StackAllocator **)this, *((void **)this + 4));
  b2StackAllocator::Free(*(b2StackAllocator **)this, *((void **)this + 3));
  b2StackAllocator::Free(*(b2StackAllocator **)this, *((void **)this + 2));
}


// ===== 7eb0e0 b2Island::b2Island(int,int,int,b2StackAllocator *,b2ContactListener *) =====
void __fastcall b2Island::b2Island(b2Island *this, int a2, int a3, int a4, b2StackAllocator *a5, b2ContactListener *a6)
{
  int v9; // r0

  *((_DWORD *)this + 1) = a6;
  *((_DWORD *)this + 8) = a2;
  *(_DWORD *)this = a5;
  *((_DWORD *)this + 9) = a3;
  *((_DWORD *)this + 10) = a4;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 2) = b2StackAllocator::Allocate(a5, 4 * a2);
  *((_DWORD *)this + 3) = b2StackAllocator::Allocate(*(b2StackAllocator **)this, 4 * a3);
  v9 = b2StackAllocator::Allocate(*(b2StackAllocator **)this, 4 * a4);
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 4) = v9;
}


// ===== 7eb15c b2Island::b2Island(int,int,int,b2StackAllocator *,b2ContactListener *) =====
void __fastcall b2Island::b2Island(b2Island *this, int a2, int a3, int a4, b2StackAllocator *a5, b2ContactListener *a6)
{
  int v9; // r0

  *((_DWORD *)this + 1) = a6;
  *((_DWORD *)this + 8) = a2;
  *(_DWORD *)this = a5;
  *((_DWORD *)this + 9) = a3;
  *((_DWORD *)this + 10) = a4;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 2) = b2StackAllocator::Allocate(a5, 4 * a2);
  *((_DWORD *)this + 3) = b2StackAllocator::Allocate(*(b2StackAllocator **)this, 4 * a3);
  v9 = b2StackAllocator::Allocate(*(b2StackAllocator **)this, 4 * a4);
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 4) = v9;
}


// ===== 7eb1d8 b2Joint::~b2Joint() =====
void __fastcall b2Joint::~b2Joint(b2Joint *this)
{
  ;
}


// ===== 7eb1dc b2Joint::InitPositionConstraints(void) =====
void __fastcall b2Joint::InitPositionConstraints(b2Joint *this)
{
  ;
}


// ===== 7eb1e0 b2Joint::b2Joint(b2JointDef const*) =====
int __fastcall b2Joint::b2Joint(int result, int *a2)
{
  int v2; // r12
  char v3; // r2

  *(_DWORD *)result = &off_991B38;
  v2 = *a2;
  *(_DWORD *)(result + 8) = 0;
  *(_DWORD *)(result + 12) = 0;
  *(_DWORD *)(result + 4) = v2;
  *(_DWORD *)(result + 48) = a2[2];
  *(_DWORD *)(result + 52) = a2[3];
  v3 = *((_BYTE *)a2 + 16);
  *(_BYTE *)(result + 60) = 0;
  *(_BYTE *)(result + 61) = v3;
  *(_DWORD *)(result + 64) = a2[1];
  return result;
}


// ===== 7eb244 b2Joint::b2Joint(b2JointDef const*) =====
int __fastcall b2Joint::b2Joint(int result, int *a2)
{
  int v2; // r12
  char v3; // r2

  *(_DWORD *)result = &off_991B38;
  v2 = *a2;
  *(_DWORD *)(result + 8) = 0;
  *(_DWORD *)(result + 12) = 0;
  *(_DWORD *)(result + 4) = v2;
  *(_DWORD *)(result + 48) = a2[2];
  *(_DWORD *)(result + 52) = a2[3];
  v3 = *((_BYTE *)a2 + 16);
  *(_BYTE *)(result + 60) = 0;
  *(_BYTE *)(result + 61) = v3;
  *(_DWORD *)(result + 64) = a2[1];
  return result;
}


// ===== 7eb2a8 b2Joint::~b2Joint() =====
void __fastcall b2Joint::~b2Joint(b2Joint *this)
{
  LC_API_FREE_0(this);
}


// ===== 7eb2bc b2Joint::Destroy(b2Joint*,b2BlockAllocator *) =====
int __fastcall b2Joint::Destroy(b2Joint *this, b2Joint *a2, b2BlockAllocator *a3)
{
  int result; // r0

  result = (*(int (__fastcall **)(b2Joint *, b2Joint *, b2BlockAllocator *))(*(_DWORD *)this + 16))(this, a2, a3);
  switch ( *((_DWORD *)this + 1) )
  {
    case 1:
      result = b2BlockAllocator::Free((int)a2, this, 156);
      break;
    case 2:
      result = b2BlockAllocator::Free((int)a2, this, 208);
      break;
    case 3:
      result = b2BlockAllocator::Free((int)a2, this, 120);
      break;
    case 4:
      result = b2BlockAllocator::Free((int)a2, this, 184);
      break;
    case 5:
      result = b2BlockAllocator::Free((int)a2, this, 128);
      break;
    case 6:
      result = b2BlockAllocator::Free((int)a2, this, 164);
      break;
    default:
      return result;
  }
  return result;
}


// ===== 7eb37c b2Joint::Create(b2JointDef const*,b2BlockAllocator *) =====
b2RevoluteJoint *__fastcall b2Joint::Create(const b2RevoluteJointDef *a1, b2BlockAllocator *this)
{
  int v3; // r5
  b2RevoluteJoint *result; // r0
  b2RevoluteJoint *v5; // r5
  b2PrismaticJoint *v6; // r5
  b2DistanceJoint *v7; // r5
  b2PulleyJoint *v8; // r5
  int v9; // r5

  switch ( *(_DWORD *)a1 )
  {
    case 1:
      v5 = (b2RevoluteJoint *)b2BlockAllocator::Allocate(this, 156);
      b2RevoluteJoint::b2RevoluteJoint(v5, a1);
      result = v5;
      break;
    case 2:
      v6 = (b2PrismaticJoint *)b2BlockAllocator::Allocate(this, 208);
      b2PrismaticJoint::b2PrismaticJoint(v6, a1);
      result = v6;
      break;
    case 3:
      v7 = (b2DistanceJoint *)b2BlockAllocator::Allocate(this, 120);
      b2DistanceJoint::b2DistanceJoint(v7, a1);
      result = v7;
      break;
    case 4:
      v8 = (b2PulleyJoint *)b2BlockAllocator::Allocate(this, 184);
      b2PulleyJoint::b2PulleyJoint(v8, a1);
      result = v8;
      break;
    case 5:
      v9 = b2BlockAllocator::Allocate(this, 128);
      b2MouseJoint::b2MouseJoint(v9, a1);
      result = (b2RevoluteJoint *)v9;
      break;
    case 6:
      v3 = b2BlockAllocator::Allocate(this, 164);
      b2GearJoint::b2GearJoint(v3, a1);
      result = (b2RevoluteJoint *)v3;
      break;
    default:
      result = nullptr;
      break;
  }
  return result;
}


// ===== 7eb478 b2MouseJoint::SolvePositionConstraints(void) =====
int __fastcall b2MouseJoint::SolvePositionConstraints(b2MouseJoint *this)
{
  return 1;
}


// ===== 7eb480 b2MouseJoint::SetTarget(b2Vec2 const&) =====
_DWORD *__fastcall b2MouseJoint::SetTarget(_DWORD *result, _DWORD *a2)
{
  int v2; // r3

  v2 = result[13];
  if ( (*(_WORD *)v2 & 8) != 0 )
  {
    *(_WORD *)v2 &= ~8u;
    *(_DWORD *)(v2 + 140) = 0;
  }
  result[19] = *a2;
  result[20] = a2[1];
  return result;
}


// ===== 7eb4b0 b2MouseJoint::InitVelocityConstraints(b2TimeStep const&) =====
float __fastcall b2MouseJoint::InitVelocityConstraints(int a1, float *a2)
{
  float *v2; // r4
  float v4; // r0
  float v5; // r7
  float v6; // r8
  float v7; // r6
  float v8; // r10
  float v9; // r11
  float v10; // r9
  float v11; // r11
  float v12; // r0
  float v13; // r0
  float v14; // r9
  float v15; // r0
  float result; // r0
  float v17; // [sp+4h] [bp-10h]
  float v18; // [sp+4h] [bp-10h]
  float v19; // [sp+4h] [bp-10h]
  float v20; // [sp+Ch] [bp-8h]

  v2 = *(float **)(a1 + 52);
  v4 = *(float *)(a1 + 68) - v2[7];
  v5 = (float)(v4 * v2[3]) + (float)((float)(*(float *)(a1 + 72) - v2[8]) * v2[5]);
  v6 = v2[32];
  v7 = (float)(v4 * v2[4]) + (float)((float)(*(float *)(a1 + 72) - v2[8]) * v2[6]);
  v8 = v2[30];
  v9 = (float)((float)(COERCE_FLOAT(LODWORD(v6) + 0x80000000) * v5) * v7) + 0.0;
  v17 = *(float *)(a1 + 124);
  v20 = v17 + (float)(v8 + (float)((float)(v6 * v7) * v7));
  v18 = v17 + (float)(v8 + (float)((float)(v6 * v5) * v5));
  v10 = 1.0 / (float)((float)(v20 * v18) - (float)(v9 * v9));
  v11 = v9 * COERCE_FLOAT(LODWORD(v10) + 0x80000000);
  *(float *)(a1 + 96) = v11;
  *(float *)(a1 + 104) = v20 * v10;
  *(float *)(a1 + 100) = v11;
  *(float *)(a1 + 92) = v18 * v10;
  v12 = (float)(v7 + v2[12]) - *(float *)(a1 + 80);
  *(float *)(a1 + 108) = (float)(v5 + v2[11]) - *(float *)(a1 + 76);
  *(float *)(a1 + 112) = v12;
  v13 = v2[18] * 0.98;
  v2[18] = v13;
  v19 = v13;
  v14 = *a2 * *(float *)(a1 + 84);
  v15 = *a2 * *(float *)(a1 + 88);
  v2[16] = v2[16] + (float)(v8 * v14);
  v2[17] = v2[17] + (float)(v8 * v15);
  result = v19 + (float)(v6 * (float)((float)(v5 * v15) - (float)(v7 * v14)));
  v2[18] = result;
  return result;
}


// ===== 7eb778 b2MouseJoint::GetAnchor1(void) =====
_DWORD *__fastcall b2MouseJoint::GetAnchor1(_DWORD *this, int a2)
{
  *this = *(_DWORD *)(a2 + 76);
  *(this + 1) = *(_DWORD *)(a2 + 80);
  return this;
}


// ===== 7eb78c b2MouseJoint::GetAnchor2(void) =====
b2MouseJoint *__fastcall b2MouseJoint::GetAnchor2(b2MouseJoint *this, int a2)
{
  float *v2; // r4
  float v3; // r7
  float v4; // r6
  float v6; // r0

  v2 = *(float **)(a2 + 52);
  v3 = *(float *)(a2 + 68);
  v4 = *(float *)(a2 + 72);
  v6 = (float)((float)(v3 * v2[3]) + (float)(v4 * v2[5])) + v2[1];
  *((float *)this + 1) = (float)((float)(v3 * v2[4]) + (float)(v4 * v2[6])) + v2[2];
  *(float *)this = v6;
  return this;
}


// ===== 7eb81c b2MouseJoint::GetReactionForce(void) =====
_DWORD *__fastcall b2MouseJoint::GetReactionForce(_DWORD *this, int a2)
{
  int v2; // r2

  v2 = *(_DWORD *)(a2 + 88);
  *this = *(_DWORD *)(a2 + 84);
  *(this + 1) = v2;
  return this;
}


// ===== 7eb830 b2MouseJoint::GetReactionTorque(void) =====
int __fastcall b2MouseJoint::GetReactionTorque(b2MouseJoint *this)
{
  return 0;
}


// ===== 7eb838 b2MouseJoint::~b2MouseJoint() =====
void __fastcall b2MouseJoint::~b2MouseJoint(b2MouseJoint *this)
{
  ;
}


// ===== 7eb83c b2MouseJoint::~b2MouseJoint() =====
void __fastcall b2MouseJoint::~b2MouseJoint(b2MouseJoint *this)
{
  LC_API_FREE_0(this);
}


// ===== 7eb850 b2MouseJoint::SolveVelocityConstraints(b2TimeStep const&) =====
float __fastcall b2MouseJoint::SolveVelocityConstraints(int a1, float *a2)
{
  float *v2; // r5
  float v5; // r8
  float v6; // r0
  float v7; // r7
  float v8; // r11
  float v9; // r0
  float v10; // r8
  float v11; // r7
  float v12; // r11
  float v13; // r9
  float v14; // r10
  float v15; // r0
  float v16; // r11
  float v17; // r0
  float v18; // r9
  float v19; // r10
  float v20; // r9
  float v21; // r6
  float v22; // r4
  float v23; // r0
  float v24; // r7
  float result; // r0
  float v26; // r10
  float v27; // r0
  float v28; // r1
  float v29; // [sp+0h] [bp-14h]
  float v30; // [sp+8h] [bp-Ch]
  float v31; // [sp+Ch] [bp-8h]

  v2 = *(float **)(a1 + 52);
  v5 = *(float *)(a1 + 68) - v2[7];
  v6 = *(float *)(a1 + 72) - v2[8];
  v30 = (float)(v5 * v2[3]) + (float)(v6 * v2[5]);
  v31 = (float)(v5 * v2[4]) + (float)((float)(*(float *)(a1 + 72) - v2[8]) * v2[6]);
  v7 = v2[18];
  v8 = (float)((float)((float)(v5 * v2[4]) + (float)(v6 * v2[6])) * COERCE_FLOAT(LODWORD(v7) + 0x80000000)) + v2[16];
  v9 = a2[1] * *(float *)(a1 + 120);
  v10 = *(float *)(a1 + 84);
  v29 = (float)((float)(v7 * v30) + v2[17]) + (float)(v9 * *(float *)(a1 + 112));
  v11 = *(float *)(a1 + 88);
  v12 = (float)(v8 + (float)(v9 * *(float *)(a1 + 108))) + (float)(*a2 * (float)(*(float *)(a1 + 124) * v10));
  v13 = v29 + (float)(*a2 * (float)(*(float *)(a1 + 124) * v11));
  LODWORD(v14) = *((_DWORD *)a2 + 1) + 0x80000000;
  v15 = (float)(v12 * *(float *)(a1 + 96)) + (float)(v13 * *(float *)(a1 + 104));
  v16 = v10 + (float)(v14 * (float)((float)(v12 * *(float *)(a1 + 92)) + (float)(v13 * *(float *)(a1 + 100))));
  *(float *)(a1 + 84) = v16;
  v17 = (float)(v14 * v15) + v11;
  *(float *)(a1 + 88) = v17;
  v18 = sqrtf((float)(v16 * v16) + (float)(v17 * v17));
  if ( *(float *)(a1 + 116) < v18 )
  {
    v26 = *(float *)(a1 + 116) / v18;
    v27 = v26 * *(float *)(a1 + 84);
    v28 = *(float *)(a1 + 88);
    *(float *)(a1 + 84) = v27;
    v20 = v27;
    v19 = v26 * v28;
    *(float *)(a1 + 88) = v19;
  }
  else
  {
    v19 = *(float *)(a1 + 88);
    v20 = *(float *)(a1 + 84);
  }
  v21 = *a2;
  v22 = v21 * (float)(v20 - v10);
  v23 = v21 * (float)(v19 - v11);
  v24 = v2[30];
  v2[16] = v2[16] + (float)(v24 * v22);
  v2[17] = v2[17] + (float)(v24 * v23);
  result = v2[18] + (float)((float)((float)(v30 * v23) - (float)(v31 * v22)) * v2[32]);
  v2[18] = result;
  return result;
}


// ===== 7ebbe0 b2MouseJoint::b2MouseJoint(b2MouseJointDef const*) =====
int __fastcall b2MouseJoint::b2MouseJoint(int a1, int a2)
{
  float *v4; // r5
  float v5; // r0
  float v6; // r0
  float v7; // r10
  float v8; // r8
  float v9; // r0
  int v10; // r2
  float v11; // r0
  float v12; // r8
  float v13; // r7
  float v14; // r0

  b2Joint::b2Joint(a1, (int *)a2);
  v4 = *(float **)(a1 + 52);
  *(_DWORD *)a1 = off_991B68;
  *(_DWORD *)(a1 + 76) = *(_DWORD *)(a2 + 20);
  v5 = *(float *)(a1 + 76);
  *(_DWORD *)(a1 + 80) = *(_DWORD *)(a2 + 24);
  v6 = v5 - v4[1];
  v7 = v6 * v4[3];
  v8 = v6 * v4[5];
  v9 = (float)(*(float *)(a1 + 80) - v4[2]) * v4[6];
  *(float *)(a1 + 68) = v7 + (float)((float)(*(float *)(a1 + 80) - v4[2]) * v4[4]);
  *(float *)(a1 + 72) = v8 + v9;
  v10 = *(_DWORD *)(a2 + 28);
  *(_DWORD *)(a1 + 88) = 0;
  *(_DWORD *)(a1 + 116) = v10;
  *(_DWORD *)(a1 + 84) = 0;
  v11 = *(float *)(a2 + 32) * 6.2832;
  v12 = v4[29];
  v13 = (float)(v12 * *(float *)(a2 + 40)) * (float)(v11 * v11);
  v14 = (float)((float)((float)(v12 + v12) * *(float *)(a2 + 36)) * v11) + v13;
  *(float *)(a1 + 124) = 1.0 / v14;
  *(float *)(a1 + 120) = v13 / v14;
  return a1;
}


// ===== 7ebd48 b2MouseJoint::b2MouseJoint(b2MouseJointDef const*) =====
int __fastcall b2MouseJoint::b2MouseJoint(int a1, int a2)
{
  float *v4; // r5
  float v5; // r0
  float v6; // r0
  float v7; // r10
  float v8; // r8
  float v9; // r0
  int v10; // r2
  float v11; // r0
  float v12; // r8
  float v13; // r7
  float v14; // r0

  b2Joint::b2Joint(a1, (int *)a2);
  v4 = *(float **)(a1 + 52);
  *(_DWORD *)a1 = off_991B68;
  *(_DWORD *)(a1 + 76) = *(_DWORD *)(a2 + 20);
  v5 = *(float *)(a1 + 76);
  *(_DWORD *)(a1 + 80) = *(_DWORD *)(a2 + 24);
  v6 = v5 - v4[1];
  v7 = v6 * v4[3];
  v8 = v6 * v4[5];
  v9 = (float)(*(float *)(a1 + 80) - v4[2]) * v4[6];
  *(float *)(a1 + 68) = v7 + (float)((float)(*(float *)(a1 + 80) - v4[2]) * v4[4]);
  *(float *)(a1 + 72) = v8 + v9;
  v10 = *(_DWORD *)(a2 + 28);
  *(_DWORD *)(a1 + 88) = 0;
  *(_DWORD *)(a1 + 116) = v10;
  *(_DWORD *)(a1 + 84) = 0;
  v11 = *(float *)(a2 + 32) * 6.2832;
  v12 = v4[29];
  v13 = (float)(v12 * *(float *)(a2 + 40)) * (float)(v11 * v11);
  v14 = (float)((float)((float)(v12 + v12) * *(float *)(a2 + 36)) * v11) + v13;
  *(float *)(a1 + 124) = 1.0 / v14;
  *(float *)(a1 + 120) = v13 / v14;
  return a1;
}


// ===== 7ebeb0 b2PolyAndCircleContact::~b2PolyAndCircleContact() =====
void __fastcall b2PolyAndCircleContact::~b2PolyAndCircleContact(b2PolyAndCircleContact *this)
{
  ;
}


// ===== 7ebeb4 b2PolyAndCircleContact::GetManifolds(void) =====
char *__fastcall b2PolyAndCircleContact::GetManifolds(b2PolyAndCircleContact *this)
{
  return (char *)this + 72;
}


// ===== 7ebebc b2PolyAndCircleContact::~b2PolyAndCircleContact() =====
void __fastcall b2PolyAndCircleContact::~b2PolyAndCircleContact(b2PolyAndCircleContact *this)
{
  LC_API_FREE_0(this);
}


// ===== 7ebed0 b2PolyAndCircleContact::b2PolyAndCircleContact(b2Shape *,b2Shape *) =====
void __fastcall b2PolyAndCircleContact::b2PolyAndCircleContact(b2PolyAndCircleContact *this, b2Shape *a2, b2Shape *a3)
{
  b2Contact::b2Contact(this, a2, a3);
  *((_DWORD *)this + 36) = 0;
  *(_DWORD *)this = &off_991B98;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 23) = 0;
}


// ===== 7ebf18 b2PolyAndCircleContact::b2PolyAndCircleContact(b2Shape *,b2Shape *) =====
void __fastcall b2PolyAndCircleContact::b2PolyAndCircleContact(b2PolyAndCircleContact *this, b2Shape *a2, b2Shape *a3)
{
  b2Contact::b2Contact(this, a2, a3);
  *((_DWORD *)this + 36) = 0;
  *(_DWORD *)this = &off_991B98;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 23) = 0;
}


// ===== 7ebf60 b2PolyAndCircleContact::Destroy(b2Contact *,b2BlockAllocator *) =====
int __fastcall b2PolyAndCircleContact::Destroy(b2PolyAndCircleContact *this, b2Contact *a2, b2BlockAllocator *a3)
{
  (*(void (__fastcall **)(b2PolyAndCircleContact *, b2Contact *, b2BlockAllocator *))(*(_DWORD *)this + 4))(
    this,
    a2,
    a3);
  return b2BlockAllocator::Free((int)a2, this, 148);
}


// ===== 7ebf8c b2PolyAndCircleContact::Create(b2Shape *,b2Shape *,b2BlockAllocator *) =====
b2PolyAndCircleContact *__fastcall b2PolyAndCircleContact::Create(
        b2PolyAndCircleContact *this,
        b2Shape *a2,
        b2Shape *a3,
        b2BlockAllocator *a4)
{
  b2PolyAndCircleContact *v6; // r4

  v6 = (b2PolyAndCircleContact *)b2BlockAllocator::Allocate(a3, 148);
  b2PolyAndCircleContact::b2PolyAndCircleContact(v6, this, a2);
  return v6;
}


// ===== 7ebfbc b2PolyAndCircleContact::Evaluate(b2ContactListener *) =====
int __fastcall b2PolyAndCircleContact::Evaluate(b2PolyAndCircleContact *this, b2ContactListener *a2)
{
  float *v2; // r4
  float *v3; // r5
  char *v4; // r8
  int v7; // r12
  int result; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int v12; // r11
  b2PolyAndCircleContact *v13; // r10
  int v14; // r9
  _DWORD *v15; // r2
  int v16; // r3
  int v17; // r2
  int v18; // r3
  float v19; // r2
  int v20; // r3
  int v21; // r3
  int v22; // r8
  float *v23; // r6
  _BYTE *v24; // r12
  float v25; // r10
  float v26; // r0
  float v27; // r10
  float v28; // r0
  float v29; // r11
  float v30; // r10
  float v31; // r0
  float v32; // r10
  float v33; // r11
  float v34; // r0
  float v35; // r10
  float v36; // r0
  int v37; // r3
  int v38; // r2
  int v39; // r3
  float v40; // r2
  int v41; // r3
  _BYTE *v42; // [sp+Ch] [bp-A0h]
  float v43; // [sp+10h] [bp-9Ch]
  float v44; // [sp+10h] [bp-9Ch]
  float v45; // [sp+10h] [bp-9Ch]
  float v46; // [sp+10h] [bp-9Ch]
  float v47; // [sp+10h] [bp-9Ch]
  float v48; // [sp+10h] [bp-9Ch]
  float v49; // [sp+10h] [bp-9Ch]
  float v50; // [sp+10h] [bp-9Ch]
  float v51; // [sp+10h] [bp-9Ch]
  float v52; // [sp+14h] [bp-98h]
  float v53; // [sp+14h] [bp-98h]
  float v54; // [sp+14h] [bp-98h]
  float v55; // [sp+14h] [bp-98h]
  float v56; // [sp+14h] [bp-98h]
  float v57; // [sp+1Ch] [bp-90h]
  float v58; // [sp+1Ch] [bp-90h]
  float v59; // [sp+20h] [bp-8Ch]
  float v60; // [sp+20h] [bp-8Ch]
  _DWORD v61[19]; // [sp+28h] [bp-84h] BYREF
  _DWORD v62[2]; // [sp+74h] [bp-38h] BYREF
  float v63; // [sp+7Ch] [bp-30h]
  float v64; // [sp+80h] [bp-2Ch]
  float v65; // [sp+84h] [bp-28h]
  float v66; // [sp+88h] [bp-24h]
  int v67; // [sp+8Ch] [bp-20h]
  int v68; // [sp+90h] [bp-1Ch]
  float v69; // [sp+94h] [bp-18h]
  int v70; // [sp+98h] [bp-14h]
  int v71; // [sp+9Ch] [bp-10h]
  int v72; // [sp+A0h] [bp-Ch]
  _BYTE v73[8]; // [sp+A4h] [bp-8h] BYREF

  v2 = *(float **)(*((_DWORD *)this + 13) + 12);
  v3 = *(float **)(*((_DWORD *)this + 14) + 12);
  v4 = (char *)this + 72;
  memcpy(v61, (char *)this + 72, sizeof(v61));
  b2CollidePolygonAndCircle(v4, *((_DWORD *)this + 13), v2 + 1, *((_DWORD *)this + 14), v3 + 1);
  v7 = *((_DWORD *)this + 36);
  result = *((_DWORD *)this + 13);
  v9 = *((_DWORD *)this + 14);
  v10 = *((_DWORD *)this + 15);
  v11 = *((_DWORD *)this + 16);
  v12 = 0;
  v62[0] = result;
  v62[1] = v9;
  v70 = v10;
  v71 = v11;
  v73[0] = 0;
  v73[1] = 0;
  if ( v7 > 0 )
  {
    v13 = this;
    do
    {
      *((_DWORD *)v13 + 23) = 0;
      *((_DWORD *)v13 + 24) = 0;
      result = v61[18];
      v14 = *((_DWORD *)v13 + 25);
      if ( v61[18] <= 0 )
      {
LABEL_9:
        if ( a2 )
        {
          v43 = *((float *)v13 + 18);
          v52 = (float)(v43 * v2[4]) + (float)(*((float *)v13 + 19) * v2[6]);
          v44 = (float)((float)(v43 * v2[3]) + (float)(*((float *)v13 + 19) * v2[5])) + v2[1];
          v64 = v52 + v2[2];
          v63 = v44;
          v45 = *((float *)v13 + 18);
          v57 = (float)((float)((float)((float)((float)(v45 * v2[4]) + (float)(*((float *)v13 + 19) * v2[6])) + v2[2])
                              - v2[12])
                      * COERCE_FLOAT(*((_DWORD *)v2 + 18) + 0x80000000))
              + v2[16];
          v59 = (float)(v2[18]
                      * (float)((float)((float)((float)(v45 * v2[3]) + (float)(*((float *)v13 + 19) * v2[5])) + v2[1])
                              - v2[11]))
              + v2[17];
          v46 = *((float *)v13 + 20);
          v53 = (float)((float)((float)((float)((float)(v46 * v3[4]) + (float)(*((float *)v13 + 21) * v3[6])) + v3[2])
                              - v3[12])
                      * COERCE_FLOAT(*((_DWORD *)v3 + 18) + 0x80000000))
              + v3[16];
          v66 = (float)((float)(v3[18]
                              * (float)((float)((float)((float)(v46 * v3[3]) + (float)(*((float *)v13 + 21) * v3[5]))
                                              + v3[1])
                                      - v3[11]))
                      + v3[17])
              - v59;
          v17 = *((_DWORD *)this + 34);
          v18 = *((_DWORD *)this + 35);
          v65 = v53 - v57;
          v67 = v17;
          v68 = v18;
          v19 = *((float *)v13 + 22);
          v72 = v14;
          v20 = *(_DWORD *)a2;
          v69 = v19;
          result = (*(int (__fastcall **)(b2ContactListener *, _DWORD *))(v20 + 8))(a2, v62);
        }
      }
      else
      {
        v15 = v61;
        v16 = 0;
        while ( v73[v16] || v15[7] != v14 )
        {
          ++v16;
          v15 += 8;
          if ( v16 == v61[18] )
            goto LABEL_9;
        }
        v73[v16] = 1;
        *((_DWORD *)v13 + 23) = v15[5];
        *((_DWORD *)v13 + 24) = v15[6];
        if ( a2 )
        {
          v48 = *((float *)v13 + 18);
          v55 = (float)(v48 * v2[4]) + (float)(*((float *)v13 + 19) * v2[6]);
          v49 = (float)((float)(v48 * v2[3]) + (float)(*((float *)v13 + 19) * v2[5])) + v2[1];
          v64 = v55 + v2[2];
          v63 = v49;
          v50 = *((float *)v13 + 18);
          v58 = (float)((float)((float)((float)((float)(v50 * v2[4]) + (float)(*((float *)v13 + 19) * v2[6])) + v2[2])
                              - v2[12])
                      * COERCE_FLOAT(*((_DWORD *)v2 + 18) + 0x80000000))
              + v2[16];
          v60 = (float)(v2[18]
                      * (float)((float)((float)((float)(v50 * v2[3]) + (float)(*((float *)v13 + 19) * v2[5])) + v2[1])
                              - v2[11]))
              + v2[17];
          v51 = *((float *)v13 + 20);
          v56 = (float)((float)((float)((float)((float)(v51 * v3[4]) + (float)(*((float *)v13 + 21) * v3[6])) + v3[2])
                              - v3[12])
                      * COERCE_FLOAT(*((_DWORD *)v3 + 18) + 0x80000000))
              + v3[16];
          v66 = (float)((float)(v3[18]
                              * (float)((float)((float)((float)(v51 * v3[3]) + (float)(*((float *)v13 + 21) * v3[5]))
                                              + v3[1])
                                      - v3[11]))
                      + v3[17])
              - v60;
          v38 = *((_DWORD *)this + 34);
          v39 = *((_DWORD *)this + 35);
          v65 = v56 - v58;
          v67 = v38;
          v68 = v39;
          v40 = *((float *)v13 + 22);
          v72 = v14;
          v41 = *(_DWORD *)a2;
          v69 = v40;
          result = (*(int (__fastcall **)(b2ContactListener *, _DWORD *))(v41 + 12))(a2, v62);
        }
      }
      ++v12;
      v13 = (b2PolyAndCircleContact *)((char *)v13 + 32);
    }
    while ( *((_DWORD *)this + 36) > v12 );
    *((_DWORD *)this + 2) = 1;
  }
  else
  {
    *((_DWORD *)this + 2) = 0;
  }
  if ( a2 )
  {
    v21 = v61[18];
    if ( v61[18] > 0 )
    {
      v22 = 0;
      v23 = (float *)&v61[4];
      v24 = v73;
      do
      {
        if ( !v24[v22] )
        {
          v25 = *(v23 - 3);
          v42 = v24;
          v26 = (float)((float)(*(v23 - 4) * v2[4]) + (float)(v25 * v2[6])) + v2[2];
          v63 = (float)((float)(*(v23 - 4) * v2[3]) + (float)(v25 * v2[5])) + v2[1];
          v64 = v26;
          v27 = *(v23 - 3);
          v28 = (float)(*(v23 - 4) * v2[4]) + (float)(v27 * v2[6]);
          v29 = (float)((float)(*(v23 - 4) * v2[3]) + (float)(v27 * v2[5])) + v2[1];
          v30 = v2[18];
          v47 = (float)((float)((float)(v28 + v2[2]) - v2[12]) * COERCE_FLOAT(LODWORD(v30) + 0x80000000)) + v2[16];
          v31 = (float)(v30 * (float)(v29 - v2[11])) + v2[17];
          v32 = *(v23 - 1);
          v54 = v31;
          v33 = (float)(*(v23 - 2) * v3[3]) + (float)(v32 * v3[5]);
          v34 = (float)(*(v23 - 2) * v3[4]) + (float)(v32 * v3[6]);
          v35 = v3[18];
          v36 = (float)((float)((float)(v34 + v3[2]) - v3[12]) * COERCE_FLOAT(LODWORD(v35) + 0x80000000)) + v3[16];
          v66 = (float)((float)(v35 * (float)((float)(v33 + v3[1]) - v3[11])) + v3[17]) - v54;
          v65 = v36 - v47;
          v67 = v61[16];
          v68 = v61[17];
          v37 = *(_DWORD *)a2;
          v69 = *v23;
          v72 = *((_DWORD *)v23 + 3);
          result = (*(int (__fastcall **)(b2ContactListener *, _DWORD *))(v37 + 16))(a2, v62);
          v21 = v61[18];
          v24 = v42;
        }
        ++v22;
        v23 += 8;
      }
      while ( v21 > v22 );
    }
  }
  return result;
}


// ===== 7eca90 b2PolygonContact::~b2PolygonContact() =====
void __fastcall b2PolygonContact::~b2PolygonContact(b2PolygonContact *this)
{
  ;
}


// ===== 7eca94 b2PolygonContact::GetManifolds(void) =====
char *__fastcall b2PolygonContact::GetManifolds(b2PolygonContact *this)
{
  return (char *)this + 72;
}


// ===== 7eca9c b2PolygonContact::~b2PolygonContact() =====
void __fastcall b2PolygonContact::~b2PolygonContact(b2PolygonContact *this)
{
  LC_API_FREE_0(this);
}


// ===== 7ecab0 b2PolygonContact::b2PolygonContact(b2Shape *,b2Shape *) =====
void __fastcall b2PolygonContact::b2PolygonContact(b2PolygonContact *this, b2Shape *a2, b2Shape *a3)
{
  b2Contact::b2Contact(this, a2, a3);
  *((_DWORD *)this + 36) = 0;
  *(_DWORD *)this = &off_991BB0;
}


// ===== 7ecaec b2PolygonContact::b2PolygonContact(b2Shape *,b2Shape *) =====
void __fastcall b2PolygonContact::b2PolygonContact(b2PolygonContact *this, b2Shape *a2, b2Shape *a3)
{
  b2Contact::b2Contact(this, a2, a3);
  *((_DWORD *)this + 36) = 0;
  *(_DWORD *)this = &off_991BB0;
}


// ===== 7ecb28 b2PolygonContact::Destroy(b2Contact *,b2BlockAllocator *) =====
int __fastcall b2PolygonContact::Destroy(b2PolygonContact *this, b2Contact *a2, b2BlockAllocator *a3)
{
  (*(void (__fastcall **)(b2PolygonContact *, b2Contact *, b2BlockAllocator *))(*(_DWORD *)this + 4))(this, a2, a3);
  return b2BlockAllocator::Free((int)a2, this, 148);
}


// ===== 7ecb54 b2PolygonContact::Create(b2Shape *,b2Shape *,b2BlockAllocator *) =====
b2PolygonContact *__fastcall b2PolygonContact::Create(
        b2PolygonContact *this,
        b2Shape *a2,
        b2Shape *a3,
        b2BlockAllocator *a4)
{
  b2PolygonContact *v6; // r4

  v6 = (b2PolygonContact *)b2BlockAllocator::Allocate(a3, 148);
  b2PolygonContact::b2PolygonContact(v6, this, a2);
  return v6;
}


// ===== 7ecb84 b2PolygonContact::Evaluate(b2ContactListener *) =====
int __fastcall b2PolygonContact::Evaluate(b2PolygonContact *this, b2ContactListener *a2)
{
  float *v2; // r4
  float *v3; // r5
  char *v4; // r8
  int v7; // r12
  int result; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int v12; // r11
  b2PolygonContact *v13; // r10
  int v14; // r9
  _DWORD *v15; // r2
  int v16; // r3
  int v17; // r2
  int v18; // r3
  float v19; // r2
  int v20; // r3
  int v21; // r3
  int v22; // r8
  float *v23; // r6
  _BYTE *v24; // r12
  float v25; // r10
  float v26; // r0
  float v27; // r10
  float v28; // r0
  float v29; // r11
  float v30; // r10
  float v31; // r0
  float v32; // r10
  float v33; // r11
  float v34; // r0
  float v35; // r10
  float v36; // r0
  int v37; // r3
  int v38; // r2
  int v39; // r3
  float v40; // r2
  int v41; // r3
  _BYTE *v42; // [sp+Ch] [bp-A0h]
  float v43; // [sp+10h] [bp-9Ch]
  float v44; // [sp+10h] [bp-9Ch]
  float v45; // [sp+10h] [bp-9Ch]
  float v46; // [sp+10h] [bp-9Ch]
  float v47; // [sp+10h] [bp-9Ch]
  float v48; // [sp+10h] [bp-9Ch]
  float v49; // [sp+10h] [bp-9Ch]
  float v50; // [sp+10h] [bp-9Ch]
  float v51; // [sp+10h] [bp-9Ch]
  float v52; // [sp+14h] [bp-98h]
  float v53; // [sp+14h] [bp-98h]
  float v54; // [sp+14h] [bp-98h]
  float v55; // [sp+14h] [bp-98h]
  float v56; // [sp+14h] [bp-98h]
  float v57; // [sp+1Ch] [bp-90h]
  float v58; // [sp+1Ch] [bp-90h]
  float v59; // [sp+20h] [bp-8Ch]
  float v60; // [sp+20h] [bp-8Ch]
  _DWORD v61[19]; // [sp+28h] [bp-84h] BYREF
  _DWORD v62[2]; // [sp+74h] [bp-38h] BYREF
  float v63; // [sp+7Ch] [bp-30h]
  float v64; // [sp+80h] [bp-2Ch]
  float v65; // [sp+84h] [bp-28h]
  float v66; // [sp+88h] [bp-24h]
  int v67; // [sp+8Ch] [bp-20h]
  int v68; // [sp+90h] [bp-1Ch]
  float v69; // [sp+94h] [bp-18h]
  int v70; // [sp+98h] [bp-14h]
  int v71; // [sp+9Ch] [bp-10h]
  int v72; // [sp+A0h] [bp-Ch]
  _BYTE v73[8]; // [sp+A4h] [bp-8h] BYREF

  v2 = *(float **)(*((_DWORD *)this + 13) + 12);
  v3 = *(float **)(*((_DWORD *)this + 14) + 12);
  v4 = (char *)this + 72;
  memcpy(v61, (char *)this + 72, sizeof(v61));
  b2CollidePolygons(v4, *((_DWORD *)this + 13), v2 + 1, *((_DWORD *)this + 14), v3 + 1);
  v7 = *((_DWORD *)this + 36);
  result = *((_DWORD *)this + 13);
  v9 = *((_DWORD *)this + 14);
  v10 = *((_DWORD *)this + 15);
  v11 = *((_DWORD *)this + 16);
  v12 = 0;
  v62[0] = result;
  v62[1] = v9;
  v70 = v10;
  v71 = v11;
  v73[0] = 0;
  v73[1] = 0;
  if ( v7 > 0 )
  {
    v13 = this;
    do
    {
      *((_DWORD *)v13 + 23) = 0;
      *((_DWORD *)v13 + 24) = 0;
      result = v61[18];
      v14 = *((_DWORD *)v13 + 25);
      if ( v61[18] <= 0 )
      {
LABEL_9:
        if ( a2 )
        {
          v43 = *((float *)v13 + 18);
          v52 = (float)(v43 * v2[4]) + (float)(*((float *)v13 + 19) * v2[6]);
          v44 = (float)((float)(v43 * v2[3]) + (float)(*((float *)v13 + 19) * v2[5])) + v2[1];
          v64 = v52 + v2[2];
          v63 = v44;
          v45 = *((float *)v13 + 18);
          v57 = (float)((float)((float)((float)((float)(v45 * v2[4]) + (float)(*((float *)v13 + 19) * v2[6])) + v2[2])
                              - v2[12])
                      * COERCE_FLOAT(*((_DWORD *)v2 + 18) + 0x80000000))
              + v2[16];
          v59 = (float)(v2[18]
                      * (float)((float)((float)((float)(v45 * v2[3]) + (float)(*((float *)v13 + 19) * v2[5])) + v2[1])
                              - v2[11]))
              + v2[17];
          v46 = *((float *)v13 + 20);
          v53 = (float)((float)((float)((float)((float)(v46 * v3[4]) + (float)(*((float *)v13 + 21) * v3[6])) + v3[2])
                              - v3[12])
                      * COERCE_FLOAT(*((_DWORD *)v3 + 18) + 0x80000000))
              + v3[16];
          v66 = (float)((float)(v3[18]
                              * (float)((float)((float)((float)(v46 * v3[3]) + (float)(*((float *)v13 + 21) * v3[5]))
                                              + v3[1])
                                      - v3[11]))
                      + v3[17])
              - v59;
          v17 = *((_DWORD *)this + 34);
          v18 = *((_DWORD *)this + 35);
          v65 = v53 - v57;
          v67 = v17;
          v68 = v18;
          v19 = *((float *)v13 + 22);
          v72 = v14;
          v20 = *(_DWORD *)a2;
          v69 = v19;
          result = (*(int (__fastcall **)(b2ContactListener *, _DWORD *))(v20 + 8))(a2, v62);
        }
      }
      else
      {
        v15 = v61;
        v16 = 0;
        while ( v73[v16] || v15[7] != v14 )
        {
          ++v16;
          v15 += 8;
          if ( v16 == v61[18] )
            goto LABEL_9;
        }
        v73[v16] = 1;
        *((_DWORD *)v13 + 23) = v15[5];
        *((_DWORD *)v13 + 24) = v15[6];
        if ( a2 )
        {
          v48 = *((float *)v13 + 18);
          v55 = (float)(v48 * v2[4]) + (float)(*((float *)v13 + 19) * v2[6]);
          v49 = (float)((float)(v48 * v2[3]) + (float)(*((float *)v13 + 19) * v2[5])) + v2[1];
          v64 = v55 + v2[2];
          v63 = v49;
          v50 = *((float *)v13 + 18);
          v58 = (float)((float)((float)((float)((float)(v50 * v2[4]) + (float)(*((float *)v13 + 19) * v2[6])) + v2[2])
                              - v2[12])
                      * COERCE_FLOAT(*((_DWORD *)v2 + 18) + 0x80000000))
              + v2[16];
          v60 = (float)(v2[18]
                      * (float)((float)((float)((float)(v50 * v2[3]) + (float)(*((float *)v13 + 19) * v2[5])) + v2[1])
                              - v2[11]))
              + v2[17];
          v51 = *((float *)v13 + 20);
          v56 = (float)((float)((float)((float)((float)(v51 * v3[4]) + (float)(*((float *)v13 + 21) * v3[6])) + v3[2])
                              - v3[12])
                      * COERCE_FLOAT(*((_DWORD *)v3 + 18) + 0x80000000))
              + v3[16];
          v66 = (float)((float)(v3[18]
                              * (float)((float)((float)((float)(v51 * v3[3]) + (float)(*((float *)v13 + 21) * v3[5]))
                                              + v3[1])
                                      - v3[11]))
                      + v3[17])
              - v60;
          v38 = *((_DWORD *)this + 34);
          v39 = *((_DWORD *)this + 35);
          v65 = v56 - v58;
          v67 = v38;
          v68 = v39;
          v40 = *((float *)v13 + 22);
          v72 = v14;
          v41 = *(_DWORD *)a2;
          v69 = v40;
          result = (*(int (__fastcall **)(b2ContactListener *, _DWORD *))(v41 + 12))(a2, v62);
        }
      }
      ++v12;
      v13 = (b2PolygonContact *)((char *)v13 + 32);
    }
    while ( *((_DWORD *)this + 36) > v12 );
    *((_DWORD *)this + 2) = 1;
  }
  else
  {
    *((_DWORD *)this + 2) = 0;
  }
  if ( a2 )
  {
    v21 = v61[18];
    if ( v61[18] > 0 )
    {
      v22 = 0;
      v23 = (float *)&v61[4];
      v24 = v73;
      do
      {
        if ( !v24[v22] )
        {
          v25 = *(v23 - 3);
          v42 = v24;
          v26 = (float)((float)(*(v23 - 4) * v2[4]) + (float)(v25 * v2[6])) + v2[2];
          v63 = (float)((float)(*(v23 - 4) * v2[3]) + (float)(v25 * v2[5])) + v2[1];
          v64 = v26;
          v27 = *(v23 - 3);
          v28 = (float)(*(v23 - 4) * v2[4]) + (float)(v27 * v2[6]);
          v29 = (float)((float)(*(v23 - 4) * v2[3]) + (float)(v27 * v2[5])) + v2[1];
          v30 = v2[18];
          v47 = (float)((float)((float)(v28 + v2[2]) - v2[12]) * COERCE_FLOAT(LODWORD(v30) + 0x80000000)) + v2[16];
          v31 = (float)(v30 * (float)(v29 - v2[11])) + v2[17];
          v32 = *(v23 - 1);
          v54 = v31;
          v33 = (float)(*(v23 - 2) * v3[3]) + (float)(v32 * v3[5]);
          v34 = (float)(*(v23 - 2) * v3[4]) + (float)(v32 * v3[6]);
          v35 = v3[18];
          v36 = (float)((float)((float)(v34 + v3[2]) - v3[12]) * COERCE_FLOAT(LODWORD(v35) + 0x80000000)) + v3[16];
          v66 = (float)((float)(v35 * (float)((float)(v33 + v3[1]) - v3[11])) + v3[17]) - v54;
          v65 = v36 - v47;
          v67 = v61[16];
          v68 = v61[17];
          v37 = *(_DWORD *)a2;
          v69 = *v23;
          v72 = *((_DWORD *)v23 + 3);
          result = (*(int (__fastcall **)(b2ContactListener *, _DWORD *))(v37 + 16))(a2, v62);
          v21 = v61[18];
          v24 = v42;
        }
        ++v22;
        v23 += 8;
      }
      while ( v21 > v22 );
    }
  }
  return result;
}


// ===== 7ed658 b2PrismaticJointDef::Initialize(b2Body *,b2Body *,b2Vec2 const&,b2Vec2 const&) =====
float __fastcall b2PrismaticJointDef::Initialize(
        b2PrismaticJointDef *this,
        b2Body *a2,
        b2Body *a3,
        const b2Vec2 *a4,
        const b2Vec2 *a5)
{
  float v6; // r0
  float v7; // r9
  float v8; // r10
  float v9; // r0
  float v10; // r0
  float v11; // r10
  float v12; // r7
  float v13; // r8
  float v14; // r0
  float result; // r0

  *((_DWORD *)this + 3) = a3;
  *((_DWORD *)this + 2) = a2;
  v6 = *(float *)a4 - *((float *)a2 + 1);
  v7 = v6 * *((float *)a2 + 3);
  v8 = v6 * *((float *)a2 + 5);
  v9 = (float)(*((float *)a4 + 1) - *((float *)a2 + 2)) * *((float *)a2 + 6);
  *((float *)this + 5) = v7 + (float)((float)(*((float *)a4 + 1) - *((float *)a2 + 2)) * *((float *)a2 + 4));
  *((float *)this + 6) = v8 + v9;
  v10 = *(float *)a4 - *((float *)a3 + 1);
  v11 = (float)(v10 * *((float *)a3 + 3))
      + (float)((float)(*((float *)a4 + 1) - *((float *)a3 + 2)) * *((float *)a3 + 4));
  *((float *)this + 8) = (float)(v10 * *((float *)a3 + 5))
                       + (float)((float)(*((float *)a4 + 1) - *((float *)a3 + 2)) * *((float *)a3 + 6));
  *((float *)this + 7) = v11;
  v12 = *((float *)a5 + 1);
  v13 = *(float *)a5 * *((float *)a2 + 5);
  v14 = v12 * *((float *)a2 + 6);
  *((float *)this + 9) = (float)(*(float *)a5 * *((float *)a2 + 3)) + (float)(v12 * *((float *)a2 + 4));
  *((float *)this + 10) = v13 + v14;
  result = *((float *)a3 + 14) - *((float *)a2 + 14);
  *((float *)this + 11) = result;
  return result;
}


// ===== 7ed7e8 b2PrismaticJoint::InitVelocityConstraints(b2TimeStep const&) =====
float __fastcall b2PrismaticJoint::InitVelocityConstraints(int a1, int a2)
{
  float *v2; // r6
  float v4; // r0
  float *v5; // r5
  float v6; // r10
  float v7; // r8
  float v8; // r7
  float v9; // r8
  float v10; // r11
  float v11; // r0
  float v12; // r10
  float v13; // r7
  float result; // r0
  int v15; // r9
  float v16; // r8
  float v17; // r7
  float v18; // r11
  float *v19; // r2
  float v20; // r8
  float v21; // r9
  float v22; // r11
  float v23; // r0
  float v24; // r11
  float v25; // r7
  float v26; // [sp+0h] [bp-54h]
  float v27; // [sp+4h] [bp-50h]
  float v28; // [sp+4h] [bp-50h]
  float v29; // [sp+8h] [bp-4Ch]
  float v30; // [sp+8h] [bp-4Ch]
  float v31; // [sp+Ch] [bp-48h]
  float v32; // [sp+Ch] [bp-48h]
  float v33; // [sp+10h] [bp-44h]
  float v34; // [sp+14h] [bp-40h]
  float v35; // [sp+14h] [bp-40h]
  float v36; // [sp+18h] [bp-3Ch]
  float v37; // [sp+1Ch] [bp-38h]
  float v38; // [sp+20h] [bp-34h]
  int v39; // [sp+2Ch] [bp-28h]
  float v40; // [sp+30h] [bp-24h]
  float v41; // [sp+34h] [bp-20h]
  float v42; // [sp+38h] [bp-1Ch]
  float v43; // [sp+3Ch] [bp-18h]
  float v44; // [sp+40h] [bp-14h]
  float v45; // [sp+44h] [bp-10h]
  float v46; // [sp+48h] [bp-Ch]
  float v47; // [sp+4Ch] [bp-8h]

  v2 = *(float **)(a1 + 52);
  v4 = *(float *)(a1 + 76) - v2[7];
  v5 = *(float **)(a1 + 48);
  v29 = (float)(v4 * v2[3]) + (float)((float)(*(float *)(a1 + 80) - v2[8]) * v2[5]);
  v31 = (float)(v4 * v2[4]) + (float)((float)(*(float *)(a1 + 80) - v2[8]) * v2[6]);
  v6 = *(float *)(a1 + 92);
  v40 = v5[3];
  v7 = *(float *)(a1 + 96);
  v41 = v5[5];
  v42 = v5[4];
  v8 = (float)(v40 * v6) + (float)(v41 * v7);
  v43 = v5[6];
  v9 = (float)(v42 * v6) + (float)(v43 * v7);
  v34 = (float)(v29 + v2[11]) - v5[11];
  v38 = (float)(v31 + v2[12]) - v5[12];
  LODWORD(v10) = COERCE_INT((float)(v9 * v34) - (float)(v8 * v38)) + 0x80000000;
  v11 = (float)(v29 * v9) - (float)(v31 * v8);
  v12 = v5[32];
  v33 = v2[32];
  v37 = v5[30];
  v36 = v2[30];
  v44 = *(float *)(a1 + 68);
  v45 = v5[7];
  v46 = *(float *)(a1 + 72);
  v47 = v5[8];
  *(_DWORD *)(a1 + 108) = LODWORD(v9) + 0x80000000;
  *(_DWORD *)(a1 + 104) = LODWORD(v8) + 0x80000000;
  *(float *)(a1 + 116) = v8;
  *(float *)(a1 + 124) = v11;
  *(float *)(a1 + 120) = v9;
  *(float *)(a1 + 112) = v10;
  *(float *)(a1 + 128) = 1.0
                       / (float)((float)((float)((float)(v10 * (float)(v12 * v10)) + v37) + v36)
                               + (float)((float)(v33 * v11) * v11));
  v13 = v12 + v33;
  *(float *)(a1 + 136) = v12 + v33;
  LODWORD(result) = (float)(v12 + v33) > 0.00000011921;
  if ( (float)(v12 + v33) > 0.00000011921 )
  {
    result = 1.0 / v13;
    *(float *)(a1 + 136) = 1.0 / v13;
  }
  v15 = *(unsigned __int8 *)(a1 + 200);
  if ( *(_BYTE *)(a1 + 200) )
  {
    v39 = *(unsigned __int8 *)(a1 + 201);
  }
  else
  {
    v39 = *(unsigned __int8 *)(a1 + 201);
    if ( !*(_BYTE *)(a1 + 201) )
      goto LABEL_13;
  }
  v16 = (float)(*(float *)(a1 + 84) * v5[3]) + (float)(*(float *)(a1 + 88) * v5[5]);
  v17 = (float)(*(float *)(a1 + 84) * v5[4]) + (float)(*(float *)(a1 + 88) * v5[6]);
  LODWORD(v27) = COERCE_INT((float)(v34 * v17) - (float)(v38 * v16)) + 0x80000000;
  *(_DWORD *)(a1 + 144) = LODWORD(v16) + 0x80000000;
  *(_DWORD *)(a1 + 148) = LODWORD(v17) + 0x80000000;
  v18 = (float)(v29 * v17) - (float)(v31 * v16);
  *(float *)(a1 + 164) = v18;
  *(float *)(a1 + 152) = v27;
  *(float *)(a1 + 160) = v17;
  *(float *)(a1 + 156) = v16;
  result = 1.0
         / (float)((float)((float)((float)(v27 * (float)(v12 * v27)) + v37) + v36) + (float)((float)(v33 * v18) * v18));
  *(float *)(a1 + 168) = result;
  if ( v15 )
  {
    v32 = *(float *)(a1 + 188);
    v30 = *(float *)(a1 + 184);
    v24 = v32 - v30;
    if ( (float)(v32 - v30) <= 0.0 )
      LODWORD(v24) += 0x80000000;
    LODWORD(result) = v24 < 0.01;
    if ( v24 >= 0.01 )
    {
      v25 = (float)(v16 * (float)(v34 - (float)((float)((float)(v44 - v45) * v40) + (float)((float)(v46 - v47) * v41))))
          + (float)(v17 * (float)(v38 - (float)((float)((float)(v44 - v45) * v42) + (float)((float)(v46 - v47) * v43))));
      LODWORD(result) = v30 >= v25;
      if ( v30 < v25 )
      {
        LODWORD(result) = v32 <= v25;
        if ( v32 > v25 )
        {
          *(_DWORD *)(a1 + 204) = 0;
          *(_DWORD *)(a1 + 176) = 0;
        }
        else
        {
          if ( *(_DWORD *)(a1 + 204) != 2 )
            *(_DWORD *)(a1 + 176) = 0;
          *(_DWORD *)(a1 + 204) = 2;
        }
      }
      else
      {
        if ( *(_DWORD *)(a1 + 204) != 1 )
          *(_DWORD *)(a1 + 176) = 0;
        *(_DWORD *)(a1 + 204) = 1;
      }
    }
    else
    {
      *(_DWORD *)(a1 + 204) = 3;
    }
  }
  if ( !v39 )
  {
LABEL_13:
    *(_DWORD *)(a1 + 172) = 0;
    if ( !v15 )
      *(_DWORD *)(a1 + 176) = 0;
    v19 = (float *)a2;
    if ( *(_BYTE *)(a2 + 16) )
      goto LABEL_10;
LABEL_16:
    *(_DWORD *)(a1 + 172) = 0;
    *(_DWORD *)(a1 + 132) = 0;
    *(_DWORD *)(a1 + 140) = 0;
    *(_DWORD *)(a1 + 176) = 0;
    goto LABEL_11;
  }
  if ( !v15 )
    *(_DWORD *)(a1 + 176) = 0;
  v19 = (float *)a2;
  if ( !*(_BYTE *)(a2 + 16) )
    goto LABEL_16;
LABEL_10:
  v20 = *(float *)(a1 + 132);
  v21 = *(float *)(a1 + 172) + *(float *)(a1 + 176);
  v35 = *v19 * (float)((float)(v20 * *(float *)(a1 + 108)) + (float)(v21 * *(float *)(a1 + 148)));
  v26 = *v19 * (float)((float)(v20 * *(float *)(a1 + 116)) + (float)(v21 * *(float *)(a1 + 156)));
  v28 = *v19 * (float)((float)(v20 * *(float *)(a1 + 120)) + (float)(v21 * *(float *)(a1 + 160)));
  v22 = *v19
      * (float)((float)((float)(v20 * *(float *)(a1 + 112)) - *(float *)(a1 + 140)) + (float)(v21 * *(float *)(a1 + 152)));
  v23 = *v19
      * (float)((float)(*(float *)(a1 + 140) + (float)(v20 * *(float *)(a1 + 124))) + (float)(v21 * *(float *)(a1 + 164)));
  v5[16] = v5[16]
         + (float)(v37
                 * (float)(*v19 * (float)((float)(v20 * *(float *)(a1 + 104)) + (float)(v21 * *(float *)(a1 + 144)))));
  v5[17] = v5[17] + (float)(v37 * v35);
  v5[18] = v5[18] + (float)(v12 * v22);
  v2[16] = v2[16] + (float)(v36 * v26);
  v2[17] = v2[17] + (float)(v36 * v28);
  result = v2[18] + (float)(v33 * v23);
  v2[18] = result;
LABEL_11:
  *(_DWORD *)(a1 + 180) = 0;
  return result;
}


// ===== 7ee080 b2PrismaticJoint::SolveVelocityConstraints(b2TimeStep const&) =====
float __fastcall b2PrismaticJoint::SolveVelocityConstraints(int a1, int a2)
{
  float *v3; // r5
  float *v4; // r6
  float v5; // r8
  float v6; // r9
  float v7; // r10
  float v8; // r11
  float v9; // r8
  float v10; // r0
  float v11; // r0
  float v12; // r0
  float result; // r0
  float v14; // r8
  float v15; // r8
  int v16; // r8
  float v17; // r0
  float v18; // r3
  float v19; // r7
  float v20; // r0
  float v21; // r8
  float v22; // r3
  float v23; // [sp+4h] [bp-20h]
  float v24; // [sp+8h] [bp-1Ch]
  float v25; // [sp+8h] [bp-1Ch]
  float v26; // [sp+8h] [bp-1Ch]
  float v27; // [sp+Ch] [bp-18h]
  float v28; // [sp+10h] [bp-14h]
  float v29; // [sp+10h] [bp-14h]
  float v30; // [sp+14h] [bp-10h]
  float v31; // [sp+14h] [bp-10h]
  float v32; // [sp+18h] [bp-Ch]
  float v33; // [sp+18h] [bp-Ch]
  float v34; // [sp+1Ch] [bp-8h]

  v3 = *(float **)(a1 + 48);
  v4 = *(float **)(a1 + 52);
  v5 = (float)(COERCE_FLOAT(*(_DWORD *)(a2 + 4) + 0x80000000) * *(float *)(a1 + 128))
     * (float)((float)((float)((float)((float)(*(float *)(a1 + 104) * v3[16]) + (float)(*(float *)(a1 + 108) * v3[17]))
                             + (float)(v3[18] * *(float *)(a1 + 112)))
                     + (float)((float)(*(float *)(a1 + 116) * v4[16]) + (float)(*(float *)(a1 + 120) * v4[17])))
             + (float)(v4[18] * *(float *)(a1 + 124)));
  v6 = v3[32];
  v7 = v4[32];
  v8 = v3[30];
  v27 = v4[30];
  *(float *)(a1 + 132) = *(float *)(a1 + 132) + v5;
  v9 = v5 * *(float *)a2;
  v24 = (float)(v8 * v9) * *(float *)(a1 + 108);
  v3[16] = v3[16] + (float)((float)(v8 * v9) * *(float *)(a1 + 104));
  v3[17] = v3[17] + v24;
  v3[18] = v3[18] + (float)((float)(v6 * v9) * *(float *)(a1 + 112));
  v25 = (float)(v27 * v9) * *(float *)(a1 + 120);
  v4[16] = v4[16] + (float)((float)(v27 * v9) * *(float *)(a1 + 116));
  v4[17] = v4[17] + v25;
  v10 = (float)((float)(v7 * v9) * *(float *)(a1 + 124)) + v4[18];
  v4[18] = v10;
  v11 = (float)(COERCE_FLOAT(*(_DWORD *)(a2 + 4) + 0x80000000) * *(float *)(a1 + 136)) * (float)(v10 - v3[18]);
  *(float *)(a1 + 140) = *(float *)(a1 + 140) + v11;
  v12 = v11 * *(float *)a2;
  v3[18] = v3[18] - (float)(v6 * v12);
  result = (float)(v7 * v12) + v4[18];
  v4[18] = result;
  if ( *(_BYTE *)(a1 + 201) && *(_DWORD *)(a1 + 204) != 3 )
  {
    v32 = *(float *)(a1 + 144);
    v30 = *(float *)(a1 + 148);
    v34 = *(float *)(a1 + 172);
    v28 = (float)((float)(COERCE_FLOAT(*(_DWORD *)(a2 + 4) + 0x80000000) * *(float *)(a1 + 168))
                * (float)((float)((float)((float)((float)((float)(v32 * v3[16]) + (float)(v30 * v3[17]))
                                                + (float)(v3[18] * *(float *)(a1 + 152)))
                                        + (float)((float)(*(float *)(a1 + 156) * v4[16])
                                                + (float)(*(float *)(a1 + 160) * v4[17])))
                                + (float)(result * *(float *)(a1 + 164)))
                        - *(float *)(a1 + 196)))
        + v34;
    v23 = *(float *)(a1 + 192);
    LODWORD(v14) = LODWORD(v23) + 0x80000000;
    if ( v28 >= v23 )
      v28 = *(float *)(a1 + 192);
    if ( v14 <= v28 )
      v14 = v28;
    *(float *)(a1 + 172) = v14;
    v15 = (float)(v14 - v34) * *(float *)a2;
    v3[16] = v3[16] + (float)((float)(v8 * v15) * v32);
    v3[17] = v3[17] + (float)((float)(v8 * v15) * v30);
    v3[18] = v3[18] + (float)((float)(v6 * v15) * *(float *)(a1 + 152));
    v26 = (float)(v27 * v15) * *(float *)(a1 + 160);
    v4[16] = v4[16] + (float)((float)(v27 * v15) * *(float *)(a1 + 156));
    v4[17] = v4[17] + v26;
    result = v4[18] + (float)((float)(v7 * v15) * *(float *)(a1 + 164));
    v4[18] = result;
  }
  if ( *(_BYTE *)(a1 + 200) )
  {
    v16 = *(_DWORD *)(a1 + 204);
    if ( v16 )
    {
      v31 = *(float *)(a1 + 144);
      v29 = v3[16];
      v33 = *(float *)(a1 + 148);
      v17 = (float)(COERCE_FLOAT(*(_DWORD *)(a2 + 4) + 0x80000000) * *(float *)(a1 + 168))
          * (float)((float)((float)((float)((float)(v31 * v29) + (float)(v33 * v3[17]))
                                  + (float)(v3[18] * *(float *)(a1 + 152)))
                          + (float)((float)(*(float *)(a1 + 156) * v4[16]) + (float)(*(float *)(a1 + 160) * v4[17])))
                  + (float)(v4[18] * *(float *)(a1 + 164)));
      v18 = v17;
      switch ( v16 )
      {
        case 3:
          *(float *)(a1 + 176) = *(float *)(a1 + 176) + v17;
          v29 = v3[16];
          goto LABEL_13;
        case 1:
          v21 = v17 + *(float *)(a1 + 176);
          v22 = *(float *)(a1 + 176);
          if ( v21 <= 0.0 )
LABEL_18:
            v21 = 0.0;
          break;
        case 2:
          v21 = v17 + *(float *)(a1 + 176);
          v22 = *(float *)(a1 + 176);
          if ( v21 >= 0.0 )
            goto LABEL_18;
          break;
        default:
LABEL_13:
          v19 = v18 * *(float *)a2;
          v3[16] = (float)((float)(v8 * v19) * v31) + v29;
          v3[17] = v3[17] + (float)((float)(v8 * v19) * v33);
          v3[18] = v3[18] + (float)((float)(v6 * v19) * *(float *)(a1 + 152));
          v20 = (float)(v27 * v19) * *(float *)(a1 + 160);
          v4[16] = v4[16] + (float)((float)(v27 * v19) * *(float *)(a1 + 156));
          v4[17] = v4[17] + v20;
          result = v4[18] + (float)((float)(v7 * v19) * *(float *)(a1 + 164));
          v4[18] = result;
          return result;
      }
      *(float *)(a1 + 176) = v21;
      v18 = v21 - v22;
      v29 = v3[16];
      goto LABEL_13;
    }
  }
  return result;
}


// ===== 7ee820 b2PrismaticJoint::GetAnchor1(void) =====
b2PrismaticJoint *__fastcall b2PrismaticJoint::GetAnchor1(b2PrismaticJoint *this, int a2)
{
  float *v2; // r4
  float v3; // r7
  float v4; // r6
  float v6; // r0

  v2 = *(float **)(a2 + 48);
  v3 = *(float *)(a2 + 68);
  v4 = *(float *)(a2 + 72);
  v6 = (float)((float)(v3 * v2[3]) + (float)(v4 * v2[5])) + v2[1];
  *((float *)this + 1) = (float)((float)(v3 * v2[4]) + (float)(v4 * v2[6])) + v2[2];
  *(float *)this = v6;
  return this;
}


// ===== 7ee8b0 b2PrismaticJoint::GetAnchor2(void) =====
b2PrismaticJoint *__fastcall b2PrismaticJoint::GetAnchor2(b2PrismaticJoint *this, int a2)
{
  float *v2; // r4
  float v3; // r7
  float v4; // r6
  float v6; // r0

  v2 = *(float **)(a2 + 52);
  v3 = *(float *)(a2 + 76);
  v4 = *(float *)(a2 + 80);
  v6 = (float)((float)(v3 * v2[3]) + (float)(v4 * v2[5])) + v2[1];
  *((float *)this + 1) = (float)((float)(v3 * v2[4]) + (float)(v4 * v2[6])) + v2[2];
  *(float *)this = v6;
  return this;
}


// ===== 7ee940 b2PrismaticJoint::GetReactionForce(void) =====
b2PrismaticJoint *__fastcall b2PrismaticJoint::GetReactionForce(b2PrismaticJoint *this, int a2)
{
  float *v2; // r7
  float v3; // r11
  float v4; // r6
  float v5; // r8
  float v7; // r9
  float v8; // r10
  float v9; // r7
  float v10; // r0
  float v11; // r6
  float v12; // r9
  float v13; // r0
  float v14; // r0
  float v15; // r6
  float v16; // r4
  float v18; // [sp+0h] [bp-Ch]

  v2 = *(float **)(a2 + 48);
  v3 = *(float *)(a2 + 84);
  v4 = v2[3];
  v5 = *(float *)(a2 + 88);
  v7 = v2[5];
  v8 = v2[4];
  v9 = v2[6];
  v18 = (float)(v4 * v3) + (float)(v7 * v5);
  v10 = v4;
  v11 = *(float *)(a2 + 96);
  v12 = (float)(v10 * *(float *)(a2 + 92)) + (float)(v7 * v11);
  v13 = v9 * v11;
  v15 = *(float *)(a2 + 176);
  v14 = (float)(v8 * *(float *)(a2 + 92)) + v13;
  v16 = *(float *)(a2 + 132);
  *(float *)this = (float)(v15 * v18) + (float)(v16 * v12);
  *((float *)this + 1) = (float)(v15 * (float)((float)(v3 * v8) + (float)(v5 * v9))) + (float)(v16 * v14);
  return this;
}


// ===== 7eeaac b2PrismaticJoint::GetReactionTorque(void) =====
int __fastcall b2PrismaticJoint::GetReactionTorque(b2PrismaticJoint *this)
{
  return *((_DWORD *)this + 35);
}


// ===== 7eeab4 b2PrismaticJoint::GetJointTranslation(void) =====
float __fastcall b2PrismaticJoint::GetJointTranslation(b2PrismaticJoint *this)
{
  float *v1; // r5
  float v2; // r10
  float v3; // r9
  float v5; // r8
  float v6; // r7
  float v7; // r6
  float v8; // r11
  float v9; // r0
  float v10; // r1
  float *v11; // r5

  v1 = *((float **)this + 12);
  v2 = v1[3];
  v3 = *((float *)this + 18);
  v5 = v1[5];
  v6 = v1[4];
  v7 = v1[6];
  v8 = *((float *)this + 17) * v6;
  v9 = (float)((float)(v2 * *((float *)this + 17)) + (float)(v5 * v3)) + v1[1];
  v10 = v1[2];
  v11 = *((float **)this + 13);
  return (float)((float)((float)((float)((float)(*((float *)this + 19) * v11[3])
                                       + (float)(*((float *)this + 20) * v11[5]))
                               + v11[1])
                       - v9)
               * (float)((float)(v2 * *((float *)this + 21)) + (float)(v5 * *((float *)this + 22))))
       + (float)((float)((float)((float)((float)(*((float *)this + 19) * v11[4])
                                       + (float)(*((float *)this + 20) * v11[6]))
                               + v11[2])
                       - (float)((float)(v8 + (float)(v3 * v7)) + v10))
               * (float)((float)(v6 * *((float *)this + 21)) + (float)(v7 * *((float *)this + 22))));
}


// ===== 7eec94 b2PrismaticJoint::GetJointSpeed(void) =====
float __fastcall b2PrismaticJoint::GetJointSpeed(b2PrismaticJoint *this)
{
  float *v1; // r4
  float v3; // r8
  int v4; // r5
  float v5; // r0
  float v6; // r7
  float v7; // r8
  float v8; // r9
  float v9; // r6
  float v10; // r10
  float v11; // r0
  float v12; // r6
  float v14; // [sp+8h] [bp-Ch]
  float v15; // [sp+Ch] [bp-8h]

  v1 = *((float **)this + 12);
  v3 = *((float *)this + 17) - v1[7];
  v4 = *((_DWORD *)this + 13);
  v14 = (float)(v3 * v1[3]) + (float)((float)(*((float *)this + 18) - v1[8]) * v1[5]);
  v15 = (float)(v3 * v1[4]) + (float)((float)(*((float *)this + 18) - v1[8]) * v1[6]);
  v5 = *((float *)this + 19) - *(float *)(v4 + 28);
  v6 = (float)(v5 * *(float *)(v4 + 12))
     + (float)((float)(*((float *)this + 20) - *(float *)(v4 + 32)) * *(float *)(v4 + 20));
  v7 = (float)(v5 * *(float *)(v4 + 16))
     + (float)((float)(*((float *)this + 20) - *(float *)(v4 + 32)) * *(float *)(v4 + 24));
  v8 = *((float *)this + 21);
  v9 = *((float *)this + 22);
  v10 = (float)(v1[3] * v8) + (float)(v1[5] * v9);
  v11 = (float)(v1[4] * v8) + (float)(v1[6] * v9);
  v12 = v1[18];
  return (float)((float)((float)((float)(v6 + *(float *)(v4 + 44)) - (float)(v14 + v1[11]))
                       * (float)(v11 * COERCE_FLOAT(LODWORD(v12) + 0x80000000)))
               + (float)((float)((float)(v7 + *(float *)(v4 + 48)) - (float)(v15 + v1[12])) * (float)(v12 * v10)))
       + (float)((float)(v10
                       * (float)((float)((float)((float)(v7 * COERCE_FLOAT(*(_DWORD *)(v4 + 72) + 0x80000000))
                                               + *(float *)(v4 + 64))
                                       - v1[16])
                               - (float)(v15 * COERCE_FLOAT(LODWORD(v12) + 0x80000000))))
               + (float)(v11
                       * (float)((float)((float)(*(float *)(v4 + 68) + (float)(*(float *)(v4 + 72) * v6)) - v1[17])
                               - (float)(v12 * v14))));
}


// ===== 7eefa4 b2PrismaticJoint::IsLimitEnabled(void) =====
int __fastcall b2PrismaticJoint::IsLimitEnabled(b2PrismaticJoint *this)
{
  return *((unsigned __int8 *)this + 200);
}


// ===== 7eefac b2PrismaticJoint::EnableLimit(bool) =====
int __fastcall b2PrismaticJoint::EnableLimit(int this, bool a2)
{
  *(_BYTE *)(this + 200) = a2;
  return this;
}


// ===== 7eefb4 b2PrismaticJoint::GetLowerLimit(void) =====
int __fastcall b2PrismaticJoint::GetLowerLimit(b2PrismaticJoint *this)
{
  return *((_DWORD *)this + 46);
}


// ===== 7eefbc b2PrismaticJoint::GetUpperLimit(void) =====
int __fastcall b2PrismaticJoint::GetUpperLimit(b2PrismaticJoint *this)
{
  return *((_DWORD *)this + 47);
}


// ===== 7eefc4 b2PrismaticJoint::SetLimits(float,float) =====
int __fastcall b2PrismaticJoint::SetLimits(int this, float a2, float a3)
{
  *(float *)(this + 188) = a3;
  *(float *)(this + 184) = a2;
  return this;
}


// ===== 7eefd0 b2PrismaticJoint::IsMotorEnabled(void) =====
int __fastcall b2PrismaticJoint::IsMotorEnabled(b2PrismaticJoint *this)
{
  return *((unsigned __int8 *)this + 201);
}


// ===== 7eefd8 b2PrismaticJoint::EnableMotor(bool) =====
int __fastcall b2PrismaticJoint::EnableMotor(int this, bool a2)
{
  *(_BYTE *)(this + 201) = a2;
  return this;
}


// ===== 7eefe0 b2PrismaticJoint::SetMotorSpeed(float) =====
int __fastcall b2PrismaticJoint::SetMotorSpeed(int this, float a2)
{
  *(float *)(this + 196) = a2;
  return this;
}


// ===== 7eefe8 b2PrismaticJoint::SetMaxMotorForce(float) =====
int __fastcall b2PrismaticJoint::SetMaxMotorForce(int this, float a2)
{
  *(float *)(this + 192) = a2;
  return this;
}


// ===== 7eeff0 b2PrismaticJoint::GetMotorForce(void) =====
int __fastcall b2PrismaticJoint::GetMotorForce(b2PrismaticJoint *this)
{
  return *((_DWORD *)this + 43);
}


// ===== 7eeff8 b2PrismaticJoint::~b2PrismaticJoint() =====
void __fastcall b2PrismaticJoint::~b2PrismaticJoint(b2PrismaticJoint *this)
{
  ;
}


// ===== 7eeffc b2PrismaticJoint::~b2PrismaticJoint() =====
void __fastcall b2PrismaticJoint::~b2PrismaticJoint(b2PrismaticJoint *this)
{
  LC_API_FREE_0(this);
}


// ===== 7ef010 b2PrismaticJoint::SolvePositionConstraints(void) =====
bool __fastcall b2PrismaticJoint::SolvePositionConstraints(b2PrismaticJoint *this)
{
  float *v1; // r5
  float v3; // r8
  float *v4; // r4
  float v5; // r9
  float v6; // r8
  float v7; // r10
  float v8; // r0
  float v9; // r7
  float v10; // r8
  _BOOL4 v11; // r0
  _BOOL4 v12; // r3
  float v13; // r10
  float v14; // r0
  float v15; // r0
  float v16; // r0
  float v17; // r10
  float v18; // r7
  _BOOL4 v19; // r9
  float v20; // r0
  float v21; // r11
  float v22; // r1
  int v23; // r10
  _BOOL4 result; // r0
  float v25; // r0
  float v26; // r10
  float v27; // r0
  float v28; // r0
  float v29; // r3
  float v30; // r1
  float v31; // r0
  float v32; // r7
  float v33; // r10
  float v34; // r7
  float v35; // r7
  float v36; // r7
  float v37; // r10
  float v38; // r7
  float v39; // [sp+0h] [bp-2Ch]
  float v40; // [sp+4h] [bp-28h]
  float v41; // [sp+4h] [bp-28h]
  float v42; // [sp+8h] [bp-24h]
  float v43; // [sp+8h] [bp-24h]
  float v44; // [sp+Ch] [bp-20h]
  float v45; // [sp+10h] [bp-1Ch]
  float v46; // [sp+14h] [bp-18h]
  float v47; // [sp+14h] [bp-18h]
  float v48; // [sp+18h] [bp-14h]
  float v49; // [sp+18h] [bp-14h]
  float v50; // [sp+18h] [bp-14h]
  float v51; // [sp+1Ch] [bp-10h]
  float v52; // [sp+20h] [bp-Ch]
  float v53; // [sp+24h] [bp-8h]

  v1 = *((float **)this + 12);
  v3 = *((float *)this + 17) - v1[7];
  v4 = *((float **)this + 13);
  v42 = v1[3];
  v5 = (float)(v3 * v42) + (float)((float)(*((float *)this + 18) - v1[8]) * v1[5]);
  v40 = v1[4];
  v6 = (float)(v3 * v40) + (float)((float)(*((float *)this + 18) - v1[8]) * v1[6]);
  v7 = *((float *)this + 19) - v4[7];
  v8 = *((float *)this + 20) - v4[8];
  v9 = v1[11];
  v52 = v1[30];
  v10 = (float)((float)((float)((float)((float)(v7 * v4[3]) + (float)(v8 * v4[5])) + v4[11]) - (float)(v5 + v9))
              * (float)((float)(v42 * *((float *)this + 23)) + (float)(v1[5] * *((float *)this + 24))))
      + (float)((float)((float)((float)((float)(v7 * v4[4]) + (float)(v8 * v4[6])) + v4[12]) - (float)(v6 + v1[12]))
              * (float)((float)(v40 * *((float *)this + 23)) + (float)(v1[6] * *((float *)this + 24))));
  v11 = v10 < 0.2;
  if ( v10 >= 0.2 )
    LODWORD(v10) = 52429;
  v51 = v4[30];
  if ( !v11 )
    HIWORD(v10) = 15948;
  v45 = v1[32];
  v44 = v4[32];
  if ( v11 && v10 < -0.2 )
  {
    v10 = -0.2;
    v12 = 0;
  }
  else
  {
    v12 = v10 > 0.0;
  }
  v13 = COERCE_FLOAT(*((_DWORD *)this + 32) + 0x80000000) * v10;
  v14 = (float)(v52 * v13) * *((float *)this + 27);
  v1[11] = v9 + (float)((float)(v52 * v13) * *((float *)this + 26));
  v1[12] = v1[12] + v14;
  v1[14] = v1[14] + (float)((float)(v45 * v13) * *((float *)this + 28));
  v15 = (float)(v51 * v13) * *((float *)this + 30);
  v4[11] = v4[11] + (float)((float)(v51 * v13) * *((float *)this + 29));
  v4[12] = v4[12] + v15;
  v16 = (float)((float)(v44 * v13) * *((float *)this + 31)) + v4[14];
  v4[14] = v16;
  v17 = v1[14];
  if ( !v12 )
    LODWORD(v10) += 0x80000000;
  v18 = (float)(v16 - v17) - *((float *)this + 25);
  if ( v18 < 0.13963 )
  {
    if ( v18 < -0.13963 )
    {
      v18 = -0.13963;
      v19 = 0;
      goto LABEL_16;
    }
  }
  else
  {
    v18 = 0.13963;
  }
  v19 = v18 > 0.0;
LABEL_16:
  v20 = COERCE_FLOAT(*((_DWORD *)this + 34) + 0x80000000) * v18;
  v21 = v20;
  v1[14] = v17 - (float)(v20 * v1[32]);
  v4[14] = v4[14] + (float)(v20 * v4[32]);
  b2Body::SynchronizeTransform((b2Body *)v1);
  b2Body::SynchronizeTransform((b2Body *)v4);
  if ( v19 )
    v21 = v18;
  else
    LODWORD(v22) = LODWORD(v18) + 0x80000000;
  if ( !v19 )
    v21 = v22;
  if ( *((_BYTE *)this + 200) )
  {
    v23 = *((_DWORD *)this + 51);
    if ( v23 )
    {
      v48 = *((float *)this + 17) - v1[7];
      v46 = *((float *)this + 18) - v1[8];
      v41 = (float)(v48 * v1[3]) + (float)(v46 * v1[5]);
      v53 = (float)(v48 * v1[4]) + (float)(v46 * v1[6]);
      v49 = *((float *)this + 19) - v4[7];
      v47 = *((float *)this + 20) - v4[8];
      v43 = (float)(v49 * v4[3]) + (float)(v47 * v4[5]);
      v39 = (float)(v49 * v4[4]) + (float)(v47 * v4[6]);
      v50 = v1[11];
      v25 = (float)((float)((float)(v43 + v4[11]) - (float)(v41 + v50))
                  * (float)((float)(v1[3] * *((float *)this + 21)) + (float)(v1[5] * *((float *)this + 22))))
          + (float)((float)((float)(v39 + v4[12]) - (float)(v53 + v1[12]))
                  * (float)((float)(v1[4] * *((float *)this + 21)) + (float)(v1[6] * *((float *)this + 22))));
      if ( v23 != 3 )
      {
        if ( v23 == 1 )
        {
          v31 = v25 - *((float *)this + 46);
          if ( COERCE_FLOAT(LODWORD(v31) + 0x80000000) >= v10 )
            LODWORD(v10) = LODWORD(v31) + 0x80000000;
          v32 = v31 + 0.005;
          if ( (float)(v31 + 0.005) < 0.0 )
          {
            if ( v32 < -0.2 )
              v32 = -0.2;
          }
          else
          {
            v32 = 0.0;
          }
          v33 = *((float *)this + 45);
          v34 = (float)(COERCE_FLOAT(*((_DWORD *)this + 42) + 0x80000000) * v32) + v33;
          if ( v34 <= 0.0 )
            v34 = 0.0;
          *((float *)this + 45) = v34;
          v26 = v34 - v33;
          v50 = v1[11];
        }
        else if ( v23 == 2 )
        {
          v35 = v25 - *((float *)this + 47);
          if ( v35 >= v10 )
            v10 = v25 - *((float *)this + 47);
          v36 = v35 - 0.005;
          if ( v36 < 0.2 )
          {
            if ( v36 < 0.0 )
              v36 = 0.0;
          }
          else
          {
            v36 = 0.2;
          }
          v37 = *((float *)this + 45);
          v38 = (float)(COERCE_FLOAT(*((_DWORD *)this + 42) + 0x80000000) * v36) + v37;
          if ( v38 >= 0.0 )
            v38 = 0.0;
          *((float *)this + 45) = v38;
          v26 = v38 - v37;
          v50 = v1[11];
        }
        else
        {
          v26 = 0.0;
        }
LABEL_33:
        v27 = (float)(v52 * v26) * *((float *)this + 37);
        v1[11] = (float)((float)(v52 * v26) * *((float *)this + 36)) + v50;
        v1[12] = v1[12] + v27;
        v1[14] = v1[14] + (float)((float)(v45 * v26) * *((float *)this + 38));
        v28 = (float)(v51 * v26) * *((float *)this + 40);
        v4[11] = v4[11] + (float)((float)(v51 * v26) * *((float *)this + 39));
        v4[12] = v4[12] + v28;
        v4[14] = v4[14] + (float)((float)(v44 * v26) * *((float *)this + 41));
        b2Body::SynchronizeTransform((b2Body *)v1);
        b2Body::SynchronizeTransform((b2Body *)v4);
        goto LABEL_23;
      }
      if ( v25 < 0.2 )
      {
        if ( v25 < -0.2 )
          LOWORD(v30) = -13107;
        v29 = (float)((float)((float)(v43 + v4[11]) - (float)(v41 + v50))
                    * (float)((float)(v1[3] * *((float *)this + 21)) + (float)(v1[5] * *((float *)this + 22))))
            + (float)((float)((float)(v39 + v4[12]) - (float)(v53 + v1[12]))
                    * (float)((float)(v1[4] * *((float *)this + 21)) + (float)(v1[6] * *((float *)this + 22))));
        if ( v25 < -0.2 )
        {
          HIWORD(v30) = -16820;
LABEL_41:
          if ( !v19 )
            LODWORD(v18) += 0x80000000;
          v26 = COERCE_FLOAT(*((_DWORD *)this + 42) + 0x80000000) * v30;
          if ( v10 <= v18 )
            v10 = v18;
          goto LABEL_33;
        }
      }
      else
      {
        v29 = 0.2;
      }
      v30 = v29;
      goto LABEL_41;
    }
  }
LABEL_23:
  result = v10 <= 0.005;
  if ( v10 <= 0.005 )
    return v21 <= 0.034907;
  return result;
}


// ===== 7efa08 b2PrismaticJoint::b2PrismaticJoint(b2PrismaticJointDef const*) =====
int __fastcall b2PrismaticJoint::b2PrismaticJoint(int a1, int a2)
{
  int v5; // r2
  int v6; // r2

  b2Joint::b2Joint(a1, (int *)a2);
  *(_DWORD *)a1 = off_991BC8;
  *(_DWORD *)(a1 + 68) = *(_DWORD *)(a2 + 20);
  *(_DWORD *)(a1 + 72) = *(_DWORD *)(a2 + 24);
  *(_DWORD *)(a1 + 76) = *(_DWORD *)(a2 + 28);
  *(_DWORD *)(a1 + 80) = *(_DWORD *)(a2 + 32);
  *(_DWORD *)(a1 + 84) = *(_DWORD *)(a2 + 36);
  v5 = *(_DWORD *)(a2 + 40);
  *(_DWORD *)(a1 + 96) = *(_DWORD *)(a1 + 84);
  *(_DWORD *)(a1 + 92) = v5 + 0x80000000;
  *(_DWORD *)(a1 + 88) = v5;
  v6 = *(_DWORD *)(a2 + 44);
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 112) = 0;
  *(_DWORD *)(a1 + 116) = 0;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
  *(_DWORD *)(a1 + 132) = 0;
  *(_DWORD *)(a1 + 136) = 0;
  *(_DWORD *)(a1 + 140) = 0;
  *(_DWORD *)(a1 + 144) = 0;
  *(_DWORD *)(a1 + 148) = 0;
  *(_DWORD *)(a1 + 152) = 0;
  *(_DWORD *)(a1 + 156) = 0;
  *(_DWORD *)(a1 + 100) = v6;
  *(_DWORD *)(a1 + 160) = 0;
  *(_DWORD *)(a1 + 180) = 0;
  *(_DWORD *)(a1 + 164) = 0;
  *(_DWORD *)(a1 + 168) = 0;
  *(_DWORD *)(a1 + 172) = 0;
  *(_DWORD *)(a1 + 176) = 0;
  *(_DWORD *)(a1 + 184) = *(_DWORD *)(a2 + 52);
  *(_DWORD *)(a1 + 188) = *(_DWORD *)(a2 + 56);
  *(_DWORD *)(a1 + 192) = *(_DWORD *)(a2 + 64);
  *(_DWORD *)(a1 + 196) = *(_DWORD *)(a2 + 68);
  *(_BYTE *)(a1 + 200) = *(_BYTE *)(a2 + 48);
  *(_BYTE *)(a1 + 201) = *(_BYTE *)(a2 + 60);
  return a1;
}


// ===== 7efb0c b2PrismaticJoint::b2PrismaticJoint(b2PrismaticJointDef const*) =====
int __fastcall b2PrismaticJoint::b2PrismaticJoint(int a1, int a2)
{
  int v5; // r2
  int v6; // r2

  b2Joint::b2Joint(a1, (int *)a2);
  *(_DWORD *)a1 = off_991BC8;
  *(_DWORD *)(a1 + 68) = *(_DWORD *)(a2 + 20);
  *(_DWORD *)(a1 + 72) = *(_DWORD *)(a2 + 24);
  *(_DWORD *)(a1 + 76) = *(_DWORD *)(a2 + 28);
  *(_DWORD *)(a1 + 80) = *(_DWORD *)(a2 + 32);
  *(_DWORD *)(a1 + 84) = *(_DWORD *)(a2 + 36);
  v5 = *(_DWORD *)(a2 + 40);
  *(_DWORD *)(a1 + 96) = *(_DWORD *)(a1 + 84);
  *(_DWORD *)(a1 + 92) = v5 + 0x80000000;
  *(_DWORD *)(a1 + 88) = v5;
  v6 = *(_DWORD *)(a2 + 44);
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 112) = 0;
  *(_DWORD *)(a1 + 116) = 0;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
  *(_DWORD *)(a1 + 132) = 0;
  *(_DWORD *)(a1 + 136) = 0;
  *(_DWORD *)(a1 + 140) = 0;
  *(_DWORD *)(a1 + 144) = 0;
  *(_DWORD *)(a1 + 148) = 0;
  *(_DWORD *)(a1 + 152) = 0;
  *(_DWORD *)(a1 + 156) = 0;
  *(_DWORD *)(a1 + 100) = v6;
  *(_DWORD *)(a1 + 160) = 0;
  *(_DWORD *)(a1 + 180) = 0;
  *(_DWORD *)(a1 + 164) = 0;
  *(_DWORD *)(a1 + 168) = 0;
  *(_DWORD *)(a1 + 172) = 0;
  *(_DWORD *)(a1 + 176) = 0;
  *(_DWORD *)(a1 + 184) = *(_DWORD *)(a2 + 52);
  *(_DWORD *)(a1 + 188) = *(_DWORD *)(a2 + 56);
  *(_DWORD *)(a1 + 192) = *(_DWORD *)(a2 + 64);
  *(_DWORD *)(a1 + 196) = *(_DWORD *)(a2 + 68);
  *(_BYTE *)(a1 + 200) = *(_BYTE *)(a2 + 48);
  *(_BYTE *)(a1 + 201) = *(_BYTE *)(a2 + 60);
  return a1;
}


// ===== 7efc10 b2PulleyJoint::SolveVelocityConstraints(b2TimeStep const&) =====
float __fastcall b2PulleyJoint::SolveVelocityConstraints(int a1, _DWORD *a2)
{
  int v2; // r6
  float v4; // r0
  float v5; // r11
  float *v6; // r5
  float v7; // r8
  float v8; // r0
  float v9; // r9
  float result; // r0
  float v11; // r7
  float v12; // r6
  float v13; // r0
  float v14; // r11
  float v15; // r6
  float v16; // r8
  float v17; // r0
  float v18; // r6
  float v19; // r0
  float v20; // r8
  float v21; // r8
  float v22; // r0
  float v23; // r0
  float v24; // r8
  float v25; // r0
  float v26; // r2
  float v27; // r8
  float v28; // r0
  float v29; // [sp+4h] [bp-20h]
  float v30; // [sp+4h] [bp-20h]
  float v31; // [sp+4h] [bp-20h]
  float v32; // [sp+10h] [bp-14h]
  float v33; // [sp+10h] [bp-14h]
  float v34; // [sp+10h] [bp-14h]
  float v35; // [sp+10h] [bp-14h]
  float v36; // [sp+14h] [bp-10h]
  float v37; // [sp+18h] [bp-Ch]
  float v38; // [sp+1Ch] [bp-8h]

  v2 = *(_DWORD *)(a1 + 48);
  v4 = *(float *)(a1 + 88) - *(float *)(v2 + 28);
  v5 = (float)(v4 * *(float *)(v2 + 12))
     + (float)((float)(*(float *)(a1 + 92) - *(float *)(v2 + 32)) * *(float *)(v2 + 20));
  v6 = *(float **)(a1 + 52);
  v36 = (float)(v4 * *(float *)(v2 + 16))
      + (float)((float)(*(float *)(a1 + 92) - *(float *)(v2 + 32)) * *(float *)(v2 + 24));
  v7 = *(float *)(a1 + 96) - v6[7];
  v8 = *(float *)(a1 + 100) - v6[8];
  v9 = (float)(v7 * v6[3]) + (float)(v8 * v6[5]);
  result = (float)(v7 * v6[4]) + (float)(v8 * v6[6]);
  v11 = (float)(v7 * v6[4]) + (float)((float)(*(float *)(a1 + 100) - v6[8]) * v6[6]);
  if ( *(_DWORD *)(a1 + 172) == 2 )
  {
    v34 = *(float *)(a1 + 148);
    v24 = (float)((float)(COERCE_FLOAT(a2[1] + 0x80000000) * *(float *)(a1 + 136))
                * (float)(COERCE_FLOAT(
                            COERCE_INT(
                              (float)((float)((float)(v36 * COERCE_FLOAT(*(_DWORD *)(v2 + 72) + 0x80000000))
                                            + *(float *)(v2 + 64))
                                    * *(float *)(a1 + 104))
                            + (float)((float)((float)(*(float *)(v2 + 72) * v5) + *(float *)(v2 + 68))
                                    * *(float *)(a1 + 108)))
                          + 0x80000000)
                        - (float)((float)((float)((float)((float)(v11 * COERCE_FLOAT(*((_DWORD *)v6 + 18) + 0x80000000))
                                                        + v6[16])
                                                * *(float *)(a1 + 112))
                                        + (float)((float)((float)(v6[18] * v9) + v6[17]) * *(float *)(a1 + 116)))
                                * *(float *)(a1 + 124))))
        + v34;
    if ( v24 < 0.0 )
      v24 = 0.0;
    *(float *)(a1 + 148) = v24;
    v25 = v24 - v34;
    v26 = COERCE_FLOAT(*a2 + 0x80000000) * (float)(v24 - v34);
    v35 = v26 * *(float *)(a1 + 104);
    v37 = v26 * *(float *)(a1 + 108);
    v27 = (float)(COERCE_FLOAT(*a2 + 0x80000000) * *(float *)(a1 + 124)) * v25;
    v38 = v27 * *(float *)(a1 + 112);
    v28 = v27 * *(float *)(a1 + 116);
    v30 = *(float *)(v2 + 120);
    *(float *)(v2 + 64) = *(float *)(v2 + 64) + (float)(v30 * v35);
    *(float *)(v2 + 68) = *(float *)(v2 + 68) + (float)(v30 * v37);
    *(float *)(v2 + 72) = *(float *)(v2 + 72)
                        + (float)((float)((float)(v5 * v37) - (float)(v36 * v35)) * *(float *)(v2 + 128));
    v31 = v6[30];
    v6[16] = v6[16] + (float)(v31 * v38);
    v6[17] = v6[17] + (float)(v31 * v28);
    result = v6[18] + (float)((float)((float)(v9 * v28) - (float)(v11 * v38)) * v6[32]);
    v6[18] = result;
  }
  if ( *(_DWORD *)(a1 + 176) == 2 )
  {
    v32 = *(float *)(a1 + 152);
    v21 = (float)((float)(COERCE_FLOAT(a2[1] + 0x80000000) * *(float *)(a1 + 140))
                * COERCE_FLOAT(
                    COERCE_INT(
                      (float)((float)((float)(v36 * COERCE_FLOAT(*(_DWORD *)(v2 + 72) + 0x80000000))
                                    + *(float *)(v2 + 64))
                            * *(float *)(a1 + 104))
                    + (float)((float)((float)(*(float *)(v2 + 72) * v5) + *(float *)(v2 + 68)) * *(float *)(a1 + 108)))
                  + 0x80000000))
        + v32;
    if ( v21 < 0.0 )
      v21 = 0.0;
    *(float *)(a1 + 152) = v21;
    v22 = COERCE_FLOAT(*a2 + 0x80000000) * (float)(v21 - v32);
    v33 = v22 * *(float *)(a1 + 104);
    v23 = v22 * *(float *)(a1 + 108);
    v29 = *(float *)(v2 + 120);
    *(float *)(v2 + 64) = *(float *)(v2 + 64) + (float)(v29 * v33);
    *(float *)(v2 + 68) = *(float *)(v2 + 68) + (float)(v29 * v23);
    result = *(float *)(v2 + 72) + (float)((float)((float)(v5 * v23) - (float)(v36 * v33)) * *(float *)(v2 + 128));
    *(float *)(v2 + 72) = result;
  }
  if ( *(_DWORD *)(a1 + 180) == 2 )
  {
    v12 = v6[18];
    v13 = v11 * COERCE_FLOAT(LODWORD(v12) + 0x80000000);
    v14 = v12 * v9;
    v15 = *(float *)(a1 + 156);
    v16 = (float)((float)(COERCE_FLOAT(a2[1] + 0x80000000) * *(float *)(a1 + 144))
                * COERCE_FLOAT(
                    COERCE_INT(
                      (float)((float)(v13 + v6[16]) * *(float *)(a1 + 112))
                    + (float)((float)(v14 + v6[17]) * *(float *)(a1 + 116)))
                  + 0x80000000))
        + v15;
    if ( v16 < 0.0 )
      v16 = 0.0;
    *(float *)(a1 + 156) = v16;
    v17 = COERCE_FLOAT(*a2 + 0x80000000) * (float)(v16 - v15);
    v18 = v17 * *(float *)(a1 + 112);
    v19 = v17 * *(float *)(a1 + 116);
    v20 = v6[30];
    v6[16] = v6[16] + (float)(v20 * v18);
    v6[17] = v6[17] + (float)(v20 * v19);
    result = v6[18] + (float)((float)((float)(v9 * v19) - (float)(v11 * v18)) * v6[32]);
    v6[18] = result;
  }
  return result;
}


// ===== 7f0314 b2PulleyJoint::GetAnchor1(void) =====
b2PulleyJoint *__fastcall b2PulleyJoint::GetAnchor1(b2PulleyJoint *this, int a2)
{
  float *v2; // r4
  float v3; // r7
  float v4; // r6
  float v6; // r0

  v2 = *(float **)(a2 + 48);
  v3 = *(float *)(a2 + 88);
  v4 = *(float *)(a2 + 92);
  v6 = (float)((float)(v3 * v2[3]) + (float)(v4 * v2[5])) + v2[1];
  *((float *)this + 1) = (float)((float)(v3 * v2[4]) + (float)(v4 * v2[6])) + v2[2];
  *(float *)this = v6;
  return this;
}


// ===== 7f03a4 b2PulleyJoint::GetAnchor2(void) =====
b2PulleyJoint *__fastcall b2PulleyJoint::GetAnchor2(b2PulleyJoint *this, int a2)
{
  float *v2; // r4
  float v3; // r7
  float v4; // r6
  float v6; // r0

  v2 = *(float **)(a2 + 52);
  v3 = *(float *)(a2 + 96);
  v4 = *(float *)(a2 + 100);
  v6 = (float)((float)(v3 * v2[3]) + (float)(v4 * v2[5])) + v2[1];
  *((float *)this + 1) = (float)((float)(v3 * v2[4]) + (float)(v4 * v2[6])) + v2[2];
  *(float *)this = v6;
  return this;
}


// ===== 7f0434 b2PulleyJoint::GetReactionForce(void) =====
b2PulleyJoint *__fastcall b2PulleyJoint::GetReactionForce(b2PulleyJoint *this, float *a2)
{
  float v3; // r0

  v3 = a2[37] * a2[28];
  *((float *)this + 1) = a2[37] * a2[29];
  *(float *)this = v3;
  return this;
}


// ===== 7f0470 b2PulleyJoint::GetReactionTorque(void) =====
int __fastcall b2PulleyJoint::GetReactionTorque(b2PulleyJoint *this)
{
  return 0;
}


// ===== 7f0478 b2PulleyJoint::GetGroundAnchor1(void) =====
b2PulleyJoint *__fastcall b2PulleyJoint::GetGroundAnchor1(b2PulleyJoint *this, int a2)
{
  int v2; // r6
  float v4; // r0

  v2 = *(_DWORD *)(a2 + 68);
  v4 = *(float *)(v2 + 4) + *(float *)(a2 + 72);
  *((float *)this + 1) = *(float *)(v2 + 8) + *(float *)(a2 + 76);
  *(float *)this = v4;
  return this;
}


// ===== 7f04b4 b2PulleyJoint::GetGroundAnchor2(void) =====
b2PulleyJoint *__fastcall b2PulleyJoint::GetGroundAnchor2(b2PulleyJoint *this, int a2)
{
  int v2; // r6
  float v4; // r0

  v2 = *(_DWORD *)(a2 + 68);
  v4 = *(float *)(v2 + 4) + *(float *)(a2 + 80);
  *((float *)this + 1) = *(float *)(v2 + 8) + *(float *)(a2 + 84);
  *(float *)this = v4;
  return this;
}


// ===== 7f04f0 b2PulleyJoint::GetRatio(void) =====
int __fastcall b2PulleyJoint::GetRatio(b2PulleyJoint *this)
{
  return *((_DWORD *)this + 31);
}


// ===== 7f04f8 b2PulleyJoint::~b2PulleyJoint() =====
void __fastcall b2PulleyJoint::~b2PulleyJoint(b2PulleyJoint *this)
{
  ;
}


// ===== 7f04fc b2PulleyJoint::~b2PulleyJoint() =====
void __fastcall b2PulleyJoint::~b2PulleyJoint(b2PulleyJoint *this)
{
  LC_API_FREE_0(this);
}


// ===== 7f0510 b2PulleyJoint::b2PulleyJoint(b2PulleyJointDef const*) =====
int __fastcall b2PulleyJoint::b2PulleyJoint(int a1, int a2)
{
  int v4; // r1
  int v5; // r6
  float v6; // r0
  float v7; // r0
  float v8; // r6
  float v9; // r0
  float v10; // r7
  float v11; // r8
  float v12; // r0
  float v13; // r5
  float v14; // r6

  b2Joint::b2Joint(a1, (int *)a2);
  v4 = *(_DWORD *)(a1 + 48);
  *(_DWORD *)a1 = off_991BF8;
  v5 = *(_DWORD *)(*(_DWORD *)(v4 + 88) + 102996);
  *(_DWORD *)(a1 + 68) = v5;
  v6 = *(float *)(a2 + 24) - *(float *)(v5 + 8);
  *(float *)(a1 + 72) = *(float *)(a2 + 20) - *(float *)(v5 + 4);
  *(float *)(a1 + 76) = v6;
  v7 = *(float *)(a2 + 32) - *(float *)(v5 + 8);
  *(float *)(a1 + 80) = *(float *)(a2 + 28) - *(float *)(v5 + 4);
  *(float *)(a1 + 84) = v7;
  *(_DWORD *)(a1 + 88) = *(_DWORD *)(a2 + 36);
  *(_DWORD *)(a1 + 92) = *(_DWORD *)(a2 + 40);
  *(_DWORD *)(a1 + 96) = *(_DWORD *)(a2 + 44);
  *(_DWORD *)(a1 + 100) = *(_DWORD *)(a2 + 48);
  v8 = *(float *)(a2 + 68);
  *(float *)(a1 + 124) = v8;
  v9 = (float)(v8 * *(float *)(a2 + 60)) + *(float *)(a2 + 52);
  v10 = v9;
  *(float *)(a1 + 120) = v9;
  v11 = *(float *)(a2 + 56);
  if ( v11 >= (float)(v9 + (float)(v8 * -2.0)) )
    v11 = v9 + (float)(v8 * -2.0);
  *(float *)(a1 + 128) = v11;
  v12 = (float)(v9 - 2.0) / v8;
  v13 = *(float *)(a2 + 64);
  v14 = (float)(v10 - 2.0) / v8;
  if ( v13 >= v12 )
    v13 = v14;
  *(float *)(a1 + 132) = v13;
  *(_DWORD *)(a1 + 156) = 0;
  *(_DWORD *)(a1 + 148) = 0;
  *(_DWORD *)(a1 + 152) = 0;
  return a1;
}


// ===== 7f0668 b2PulleyJoint::b2PulleyJoint(b2PulleyJointDef const*) =====
int __fastcall b2PulleyJoint::b2PulleyJoint(int a1, int a2)
{
  int v4; // r1
  int v5; // r6
  float v6; // r0
  float v7; // r0
  float v8; // r6
  float v9; // r0
  float v10; // r7
  float v11; // r8
  float v12; // r0
  float v13; // r5
  float v14; // r6

  b2Joint::b2Joint(a1, (int *)a2);
  v4 = *(_DWORD *)(a1 + 48);
  *(_DWORD *)a1 = off_991BF8;
  v5 = *(_DWORD *)(*(_DWORD *)(v4 + 88) + 102996);
  *(_DWORD *)(a1 + 68) = v5;
  v6 = *(float *)(a2 + 24) - *(float *)(v5 + 8);
  *(float *)(a1 + 72) = *(float *)(a2 + 20) - *(float *)(v5 + 4);
  *(float *)(a1 + 76) = v6;
  v7 = *(float *)(a2 + 32) - *(float *)(v5 + 8);
  *(float *)(a1 + 80) = *(float *)(a2 + 28) - *(float *)(v5 + 4);
  *(float *)(a1 + 84) = v7;
  *(_DWORD *)(a1 + 88) = *(_DWORD *)(a2 + 36);
  *(_DWORD *)(a1 + 92) = *(_DWORD *)(a2 + 40);
  *(_DWORD *)(a1 + 96) = *(_DWORD *)(a2 + 44);
  *(_DWORD *)(a1 + 100) = *(_DWORD *)(a2 + 48);
  v8 = *(float *)(a2 + 68);
  *(float *)(a1 + 124) = v8;
  v9 = (float)(v8 * *(float *)(a2 + 60)) + *(float *)(a2 + 52);
  v10 = v9;
  *(float *)(a1 + 120) = v9;
  v11 = *(float *)(a2 + 56);
  if ( v11 >= (float)(v9 + (float)(v8 * -2.0)) )
    v11 = v9 + (float)(v8 * -2.0);
  *(float *)(a1 + 128) = v11;
  v12 = (float)(v9 - 2.0) / v8;
  v13 = *(float *)(a2 + 64);
  v14 = (float)(v10 - 2.0) / v8;
  if ( v13 >= v12 )
    v13 = v14;
  *(float *)(a1 + 132) = v13;
  *(_DWORD *)(a1 + 156) = 0;
  *(_DWORD *)(a1 + 148) = 0;
  *(_DWORD *)(a1 + 152) = 0;
  return a1;
}


// ===== 7f07c0 b2PulleyJoint::GetLength2(void) =====
float __fastcall b2PulleyJoint::GetLength2(b2PulleyJoint *this)
{
  float *v1; // r5
  float v3; // r6
  float v4; // r8
  float v5; // r0
  int v6; // r5
  float v7; // r6
  float v8; // r7
  float v9; // r0

  v1 = *((float **)this + 13);
  v3 = *((float *)this + 25);
  v4 = (float)((float)(*((float *)this + 24) * v1[3]) + (float)(v3 * v1[5])) + v1[1];
  v5 = (float)((float)(*((float *)this + 24) * v1[4]) + (float)(v3 * v1[6])) + v1[2];
  v6 = *((_DWORD *)this + 17);
  v7 = v5;
  v8 = *(float *)(v6 + 4) + *((float *)this + 20);
  v9 = *(float *)(v6 + 8) + *((float *)this + 21);
  return sqrtf((float)((float)(v4 - v8) * (float)(v4 - v8)) + (float)((float)(v7 - v9) * (float)(v7 - v9)));
}


// ===== 7f08c0 b2PulleyJoint::GetLength1(void) =====
float __fastcall b2PulleyJoint::GetLength1(b2PulleyJoint *this)
{
  float *v1; // r5
  float v3; // r6
  float v4; // r8
  float v5; // r0
  int v6; // r5
  float v7; // r6
  float v8; // r7
  float v9; // r0

  v1 = *((float **)this + 12);
  v3 = *((float *)this + 23);
  v4 = (float)((float)(*((float *)this + 22) * v1[3]) + (float)(v3 * v1[5])) + v1[1];
  v5 = (float)((float)(*((float *)this + 22) * v1[4]) + (float)(v3 * v1[6])) + v1[2];
  v6 = *((_DWORD *)this + 17);
  v7 = v5;
  v8 = *(float *)(v6 + 4) + *((float *)this + 18);
  v9 = *(float *)(v6 + 8) + *((float *)this + 19);
  return sqrtf((float)((float)(v4 - v8) * (float)(v4 - v8)) + (float)((float)(v7 - v9) * (float)(v7 - v9)));
}


// ===== 7f09c0 b2PulleyJoint::InitVelocityConstraints(b2TimeStep const&) =====
float __fastcall b2PulleyJoint::InitVelocityConstraints(int a1, int a2)
{
  float *v2; // r6
  float v4; // r0
  float v5; // r11
  float *v6; // r5
  float v7; // r9
  float v8; // r0
  float v9; // r10
  int v10; // r7
  float v11; // r8
  float v12; // r7
  float v13; // r8
  float v14; // r0
  float v15; // r8
  float v16; // r0
  int v17; // r2
  float v18; // r7
  _BOOL4 v19; // r0
  int v20; // r3
  _BOOL4 v21; // r0
  int v22; // r3
  _BOOL4 v23; // r0
  int v24; // r3
  float v25; // r8
  float v26; // r0
  float v27; // r7
  float v28; // r0
  float v29; // r3
  float result; // r0
  float v31; // r7
  float v32; // r0
  float v33; // r8
  float v34; // r7
  float v35; // r4
  float v36; // r6
  float v37; // [sp+8h] [bp-24h]
  float v38; // [sp+8h] [bp-24h]
  float v39; // [sp+8h] [bp-24h]
  float v40; // [sp+8h] [bp-24h]
  float v42; // [sp+Ch] [bp-20h]
  float v43; // [sp+14h] [bp-18h]
  float v44; // [sp+18h] [bp-14h]
  float v45; // [sp+1Ch] [bp-10h]
  float v46; // [sp+24h] [bp-8h]

  v2 = *(float **)(a1 + 48);
  v4 = *(float *)(a1 + 88) - v2[7];
  v5 = (float)(v4 * v2[3]) + (float)((float)(*(float *)(a1 + 92) - v2[8]) * v2[5]);
  v6 = *(float **)(a1 + 52);
  v7 = (float)(v4 * v2[4]) + (float)((float)(*(float *)(a1 + 92) - v2[8]) * v2[6]);
  v8 = *(float *)(a1 + 96) - v6[7];
  v9 = (float)(v8 * v6[3]) + (float)((float)(*(float *)(a1 + 100) - v6[8]) * v6[5]);
  v43 = (float)(v8 * v6[4]) + (float)((float)(*(float *)(a1 + 100) - v6[8]) * v6[6]);
  v44 = v9 + v6[11];
  v45 = v43 + v6[12];
  v10 = *(_DWORD *)(a1 + 68);
  v11 = *(float *)(v10 + 4);
  v12 = *(float *)(v10 + 8);
  v46 = v11 + *(float *)(a1 + 80);
  v37 = v12 + *(float *)(a1 + 84);
  v13 = (float)(v5 + v2[11]) - (float)(v11 + *(float *)(a1 + 72));
  v14 = (float)(v7 + v2[12]) - (float)(v12 + *(float *)(a1 + 76));
  *(float *)(a1 + 108) = v14;
  *(float *)(a1 + 104) = v13;
  *(float *)(a1 + 116) = v45 - v37;
  *(float *)(a1 + 112) = v44 - v46;
  v15 = sqrtf((float)(v13 * v13) + (float)(v14 * v14));
  v16 = sqrtf((float)(*(float *)(a1 + 112) * *(float *)(a1 + 112)) + (float)(*(float *)(a1 + 116) * *(float *)(a1 + 116)));
  v18 = v16;
  if ( v15 > 0.005 )
  {
    *(float *)(a1 + 104) = *(float *)(a1 + 104) * (float)(1.0 / v15);
    *(float *)(a1 + 108) = *(float *)(a1 + 108) * (float)(1.0 / v15);
  }
  else
  {
    *(_DWORD *)(a1 + 108) = 0;
    *(_DWORD *)(a1 + 104) = 0;
  }
  if ( v16 > 0.005 )
  {
    *(float *)(a1 + 112) = *(float *)(a1 + 112) * (float)(1.0 / v16);
    *(float *)(a1 + 116) = *(float *)(a1 + 116) * (float)(1.0 / v16);
  }
  else
  {
    *(_DWORD *)(a1 + 116) = 0;
    *(_DWORD *)(a1 + 112) = 0;
  }
  v19 = (float)((float)(*(float *)(a1 + 120) - v15) - (float)(v16 * *(float *)(a1 + 124))) > 0.0;
  if ( (float)((float)(*(float *)(a1 + 120) - v15) - (float)(v18 * *(float *)(a1 + 124))) > 0.0 )
    v20 = 0;
  else
    v20 = 2;
  if ( v19 )
    v17 = 0;
  else
    *(_DWORD *)(a1 + 172) = v20;
  if ( v19 )
    *(_DWORD *)(a1 + 172) = v20;
  else
    v20 = 0;
  if ( v19 )
    *(_DWORD *)(a1 + 148) = v17;
  else
    *(_DWORD *)(a1 + 160) = v20;
  v21 = *(float *)(a1 + 128) > v15;
  if ( *(float *)(a1 + 128) <= v15 )
    v22 = 2;
  else
    v22 = 0;
  *(_DWORD *)(a1 + 176) = v22;
  if ( v21 )
    *(_DWORD *)(a1 + 152) = 0;
  else
    *(_DWORD *)(a1 + 164) = 0;
  v23 = *(float *)(a1 + 132) > v18;
  if ( *(float *)(a1 + 132) <= v18 )
    v24 = 2;
  else
    v24 = 0;
  *(_DWORD *)(a1 + 180) = v24;
  if ( v23 )
    *(_DWORD *)(a1 + 156) = 0;
  else
    *(_DWORD *)(a1 + 168) = 0;
  v25 = (float)(v9 * *(float *)(a1 + 116)) - (float)(v43 * *(float *)(a1 + 112));
  v26 = (float)((float)((float)((float)(v5 * *(float *)(a1 + 108)) - (float)(v7 * *(float *)(a1 + 104))) * v2[32])
              * (float)((float)(v5 * *(float *)(a1 + 108)) - (float)(v7 * *(float *)(a1 + 104))))
      + v2[30];
  *(float *)(a1 + 140) = v26;
  v27 = v26;
  v28 = (float)((float)(v25 * v6[32]) * v25) + v6[30];
  *(float *)(a1 + 144) = v28;
  *(float *)(a1 + 140) = 1.0 / v27;
  v29 = *(float *)(a1 + 124);
  *(float *)(a1 + 144) = 1.0 / v28;
  result = 1.0 / (float)(v27 + (float)(v28 * (float)(v29 * v29)));
  *(float *)(a1 + 136) = result;
  if ( *(_BYTE *)(a2 + 16) )
  {
    v31 = *(float *)a2;
    v38 = *(float *)(a1 + 148);
    v32 = *(float *)a2 * (float)(COERCE_FLOAT(LODWORD(v38) + 0x80000000) - *(float *)(a1 + 152));
    v42 = v32 * *(float *)(a1 + 104);
    v33 = v32 * *(float *)(a1 + 108);
    v39 = v31 * (float)((float)(v38 * COERCE_FLOAT(*(_DWORD *)(a1 + 124) + 0x80000000)) - *(float *)(a1 + 156));
    v34 = v39 * *(float *)(a1 + 112);
    v35 = v39 * *(float *)(a1 + 116);
    v40 = v2[30];
    v2[16] = v2[16] + (float)(v40 * v42);
    v2[17] = v2[17] + (float)(v40 * v33);
    v2[18] = v2[18] + (float)((float)((float)(v5 * v33) - (float)(v7 * v42)) * v2[32]);
    v36 = v6[30];
    v6[16] = v6[16] + (float)(v36 * v34);
    v6[17] = v6[17] + (float)(v36 * v35);
    result = v6[18] + (float)((float)((float)(v9 * v35) - (float)(v43 * v34)) * v6[32]);
    v6[18] = result;
  }
  else
  {
    *(_DWORD *)(a1 + 156) = 0;
    *(_DWORD *)(a1 + 148) = 0;
    *(_DWORD *)(a1 + 152) = 0;
  }
  return result;
}


// ===== 7f1038 b2PulleyJointDef::Initialize(b2Body *,b2Body *,b2Vec2 const&,b2Vec2 const&,b2Vec2 const&,b2Vec2 const&,float) =====
float __fastcall b2PulleyJointDef::Initialize(
        b2PulleyJointDef *this,
        b2Body *a2,
        b2Body *a3,
        const b2Vec2 *a4,
        const b2Vec2 *a5,
        const b2Vec2 *a6,
        const b2Vec2 *a7,
        float a8)
{
  float v9; // r6
  float v10; // r6
  float v11; // r6
  float v12; // r0
  float v13; // r0
  float result; // r0
  float v15; // [sp+0h] [bp-14h]
  float v16; // [sp+4h] [bp-10h]
  float v17; // [sp+8h] [bp-Ch]
  float v18; // [sp+8h] [bp-Ch]
  float v19; // [sp+Ch] [bp-8h]

  *((_DWORD *)this + 3) = a3;
  *((_DWORD *)this + 2) = a2;
  *((_DWORD *)this + 5) = *(_DWORD *)a4;
  *((_DWORD *)this + 6) = *((_DWORD *)a4 + 1);
  *((_DWORD *)this + 7) = *(_DWORD *)a5;
  *((_DWORD *)this + 8) = *((_DWORD *)a5 + 1);
  v17 = *(float *)a6 - *((float *)a2 + 1);
  v19 = *((float *)a6 + 1) - *((float *)a2 + 2);
  v16 = (float)(v17 * *((float *)a2 + 3)) + (float)(v19 * *((float *)a2 + 4));
  *((float *)this + 10) = (float)(v17 * *((float *)a2 + 5)) + (float)(v19 * *((float *)a2 + 6));
  *((float *)this + 9) = v16;
  v9 = *(float *)a7 - *((float *)a3 + 1);
  v18 = *((float *)a7 + 1) - *((float *)a3 + 2);
  v15 = (float)(v9 * *((float *)a3 + 3)) + (float)(v18 * *((float *)a3 + 4));
  *((float *)this + 12) = (float)(v9 * *((float *)a3 + 5)) + (float)(v18 * *((float *)a3 + 6));
  *((float *)this + 11) = v15;
  v10 = *((float *)a6 + 1) - *((float *)a4 + 1);
  *((float *)this + 13) = sqrtf(
                            (float)((float)(*(float *)a6 - *(float *)a4) * (float)(*(float *)a6 - *(float *)a4))
                          + (float)(v10 * v10));
  v11 = *((float *)a7 + 1) - *((float *)a5 + 1);
  v12 = sqrtf((float)((float)(*(float *)a7 - *(float *)a5) * (float)(*(float *)a7 - *(float *)a5)) + (float)(v11 * v11));
  *((float *)this + 17) = a8;
  *((float *)this + 15) = v12;
  v13 = (float)(a8 * v12) + *((float *)this + 13);
  *((float *)this + 14) = (float)(a8 * -2.0) + v13;
  result = (float)(v13 - 2.0) / a8;
  *((float *)this + 16) = result;
  return result;
}


// ===== 7f129c b2PulleyJoint::SolvePositionConstraints(void) =====
bool __fastcall b2PulleyJoint::SolvePositionConstraints(b2PulleyJoint *this)
{
  int v1; // r7
  float v3; // r9
  float *v4; // r6
  float *v5; // r5
  float v6; // r7
  float v7; // r10
  float v8; // r8
  float v9; // r7
  float v11; // r10
  float v12; // r0
  float v13; // r8
  float v14; // r6
  float v15; // r9
  float v16; // r10
  float v17; // r10
  float v18; // r9
  float v19; // r10
  float v20; // r10
  float v21; // r9
  float v22; // r10
  float v23; // r0
  float v24; // r10
  float v25; // r0
  float v26; // r9
  float v27; // r11
  float v28; // r9
  float v29; // r10
  float v30; // r8
  float v31; // r8
  float v32; // r10
  float v33; // r8
  float v34; // r8
  float v35; // r10
  float v36; // r8
  float v37; // r10
  float v38; // r8
  float v39; // r0
  float v40; // r11
  float v41; // r0
  float v42; // r0
  float v43; // r7
  float v44; // r0
  float v45; // r9
  float v46; // r9
  float v47; // r0
  float v48; // r0
  float v49; // r9
  float v50; // r11
  float v51; // r9
  float v52; // r0
  float v53; // r11
  float v54; // r0
  float v55; // r9
  float v56; // r11
  float v57; // [sp+4h] [bp-28h]
  float v58; // [sp+4h] [bp-28h]
  float v59; // [sp+8h] [bp-24h]
  float v60; // [sp+8h] [bp-24h]
  float v61; // [sp+Ch] [bp-20h]
  float v62; // [sp+10h] [bp-1Ch]
  float v63; // [sp+14h] [bp-18h]
  float v64; // [sp+18h] [bp-14h]
  float v65; // [sp+1Ch] [bp-10h]
  float v66; // [sp+20h] [bp-Ch]
  float v67; // [sp+24h] [bp-8h]

  v1 = *((_DWORD *)this + 17);
  v3 = *(float *)(v1 + 4);
  v4 = *((float **)this + 12);
  v5 = *((float **)this + 13);
  v6 = *(float *)(v1 + 8);
  v7 = v3 + *((float *)this + 18);
  v8 = v6 + *((float *)this + 19);
  v61 = v3 + *((float *)this + 20);
  v62 = v6 + *((float *)this + 21);
  if ( *((_DWORD *)this + 43) == 2 )
  {
    v41 = *((float *)this + 22) - v4[7];
    v64 = (float)(v41 * v4[3]) + (float)((float)(*((float *)this + 23) - v4[8]) * v4[5]);
    v65 = (float)(v41 * v4[4]) + (float)((float)(*((float *)this + 23) - v4[8]) * v4[6]);
    v42 = *((float *)this + 24) - v5[7];
    v60 = (float)(v42 * v5[3]) + (float)((float)(*((float *)this + 25) - v5[8]) * v5[5]);
    v63 = (float)(v42 * v5[4]) + (float)((float)(*((float *)this + 25) - v5[8]) * v5[6]);
    v43 = v65 + v4[12];
    v57 = v60 + v5[11];
    v44 = v63 + v5[12];
    v45 = (float)(v64 + v4[11]) - v7;
    *((float *)this + 26) = v45;
    *((float *)this + 27) = v43 - v8;
    *((float *)this + 29) = v44 - v62;
    *((float *)this + 28) = v57 - v61;
    v46 = sqrtf((float)(v45 * v45) + (float)((float)(v43 - v8) * (float)(v43 - v8)));
    v47 = sqrtf(
            (float)(*((float *)this + 28) * *((float *)this + 28))
          + (float)(*((float *)this + 29) * *((float *)this + 29)));
    if ( v46 > 0.005 )
    {
      *((float *)this + 26) = *((float *)this + 26) * (float)(1.0 / v46);
      *((float *)this + 27) = *((float *)this + 27) * (float)(1.0 / v46);
    }
    else
    {
      *((_DWORD *)this + 27) = 0;
      *((_DWORD *)this + 26) = 0;
    }
    if ( v47 > 0.005 )
    {
      *((float *)this + 28) = *((float *)this + 28) * (float)(1.0 / v47);
      *((float *)this + 29) = *((float *)this + 29) * (float)(1.0 / v47);
    }
    else
    {
      *((_DWORD *)this + 29) = 0;
      *((_DWORD *)this + 28) = 0;
    }
    v48 = (float)(*((float *)this + 30) - v46) - (float)(v47 * *((float *)this + 31));
    LODWORD(v9) = LODWORD(v48) + 0x80000000;
    if ( COERCE_FLOAT(LODWORD(v48) + 0x80000000) < 0.0 )
      v9 = 0.0;
    v49 = v48 + 0.005;
    if ( (float)(v48 + 0.005) < 0.0 )
    {
      if ( v49 < -0.2 )
        v49 = -0.2;
    }
    else
    {
      v49 = 0.0;
    }
    v50 = *((float *)this + 40);
    v51 = (float)(COERCE_FLOAT(*((_DWORD *)this + 34) + 0x80000000) * v49) + v50;
    if ( v51 < 0.0 )
      v51 = 0.0;
    *((float *)this + 40) = v51;
    v52 = v51 - v50;
    v66 = COERCE_FLOAT(COERCE_INT(v51 - v50) + 0x80000000) * *((float *)this + 26);
    v53 = COERCE_FLOAT(COERCE_INT(v51 - v50) + 0x80000000) * *((float *)this + 27);
    v54 = COERCE_FLOAT(*((_DWORD *)this + 31) + 0x80000000) * v52;
    v67 = v54 * *((float *)this + 28);
    v55 = v54 * *((float *)this + 29);
    v58 = v4[30];
    v4[11] = v4[11] + (float)(v58 * v66);
    v4[12] = v4[12] + (float)(v58 * v53);
    v4[14] = v4[14] + (float)((float)((float)(v64 * v53) - (float)(v65 * v66)) * v4[32]);
    v56 = v5[30];
    v5[11] = v5[11] + (float)(v56 * v67);
    v5[12] = v5[12] + (float)(v56 * v55);
    v5[14] = v5[14] + (float)((float)((float)(v60 * v55) - (float)(v63 * v67)) * v5[32]);
    b2Body::SynchronizeTransform((b2Body *)v4);
    b2Body::SynchronizeTransform((b2Body *)v5);
  }
  else
  {
    v9 = 0.0;
  }
  if ( *((_DWORD *)this + 44) == 2 )
  {
    v27 = *((float *)this + 22) - v4[7];
    v59 = (float)(v27 * v4[3]) + (float)((float)(*((float *)this + 23) - v4[8]) * v4[5]);
    v28 = (float)(v27 * v4[4]) + (float)((float)(*((float *)this + 23) - v4[8]) * v4[6]);
    v29 = (float)(v59 + v4[11]) - v7;
    v30 = (float)(v28 + v4[12]) - v8;
    *((float *)this + 27) = v30;
    *((float *)this + 26) = v29;
    v31 = sqrtf((float)(v29 * v29) + (float)(v30 * v30));
    if ( v31 > 0.005 )
    {
      *((float *)this + 26) = *((float *)this + 26) * (float)(1.0 / v31);
      *((float *)this + 27) = *((float *)this + 27) * (float)(1.0 / v31);
    }
    else
    {
      *((_DWORD *)this + 27) = 0;
      *((_DWORD *)this + 26) = 0;
    }
    LODWORD(v32) = COERCE_INT(*((float *)this + 32) - v31) + 0x80000000;
    v33 = *((float *)this + 32) - v31;
    if ( v9 <= v32 )
      v9 = v32;
    v34 = v33 + 0.005;
    if ( v34 < 0.0 )
    {
      if ( v34 < -0.2 )
        v34 = -0.2;
    }
    else
    {
      v34 = 0.0;
    }
    v35 = *((float *)this + 41);
    v36 = (float)(COERCE_FLOAT(*((_DWORD *)this + 35) + 0x80000000) * v34) + v35;
    if ( v36 < 0.0 )
      v36 = 0.0;
    *((float *)this + 41) = v36;
    LODWORD(v37) = COERCE_INT(v36 - v35) + 0x80000000;
    v38 = v37 * *((float *)this + 26);
    v40 = v4[30];
    v39 = v37 * *((float *)this + 27);
    v4[11] = v4[11] + (float)(v40 * v38);
    v4[12] = v4[12] + (float)(v40 * v39);
    v4[14] = v4[14] + (float)((float)((float)(v59 * v39) - (float)(v28 * v38)) * v4[32]);
    b2Body::SynchronizeTransform((b2Body *)v4);
  }
  if ( *((_DWORD *)this + 45) == 2 )
  {
    v11 = *((float *)this + 24) - v5[7];
    v12 = *((float *)this + 25) - v5[8];
    v13 = (float)(v11 * v5[3]) + (float)(v12 * v5[5]);
    v14 = (float)(v11 * v5[4]) + (float)(v12 * v5[6]);
    v15 = (float)(v13 + v5[11]) - v61;
    v16 = (float)(v14 + v5[12]) - v62;
    *((float *)this + 29) = v16;
    *((float *)this + 28) = v15;
    v17 = sqrtf((float)(v15 * v15) + (float)(v16 * v16));
    if ( v17 > 0.005 )
    {
      *((float *)this + 28) = *((float *)this + 28) * (float)(1.0 / v17);
      *((float *)this + 29) = *((float *)this + 29) * (float)(1.0 / v17);
    }
    else
    {
      *((_DWORD *)this + 29) = 0;
      *((_DWORD *)this + 28) = 0;
    }
    LODWORD(v18) = COERCE_INT(*((float *)this + 33) - v17) + 0x80000000;
    v19 = *((float *)this + 33) - v17;
    if ( v9 <= v18 )
      v9 = v18;
    v20 = v19 + 0.005;
    if ( v20 < 0.0 )
    {
      if ( v20 < -0.2 )
        v20 = -0.2;
    }
    else
    {
      v20 = 0.0;
    }
    v21 = *((float *)this + 42);
    v22 = (float)(COERCE_FLOAT(*((_DWORD *)this + 36) + 0x80000000) * v20) + v21;
    if ( v22 < 0.0 )
      v22 = 0.0;
    *((float *)this + 42) = v22;
    v23 = v22 - v21;
    v24 = COERCE_FLOAT(COERCE_INT(v22 - v21) + 0x80000000) * *((float *)this + 28);
    v25 = COERCE_FLOAT(LODWORD(v23) + 0x80000000) * *((float *)this + 29);
    v26 = v5[30];
    v5[11] = v5[11] + (float)(v26 * v24);
    v5[12] = v5[12] + (float)(v26 * v25);
    v5[14] = v5[14] + (float)((float)((float)(v13 * v25) - (float)(v14 * v24)) * v5[32]);
    b2Body::SynchronizeTransform((b2Body *)v5);
  }
  return v9 < 0.005;
}


// ===== 7f1d5c b2RevoluteJointDef::Initialize(b2Body *,b2Body *,b2Vec2 const&) =====
float __fastcall b2RevoluteJointDef::Initialize(b2RevoluteJointDef *this, b2Body *a2, b2Body *a3, const b2Vec2 *a4)
{
  float v5; // r0
  float v6; // r9
  float v7; // r10
  float v8; // r0
  float v9; // r0
  float v10; // r10
  float result; // r0

  *((_DWORD *)this + 3) = a3;
  *((_DWORD *)this + 2) = a2;
  v5 = *(float *)a4 - *((float *)a2 + 1);
  v6 = v5 * *((float *)a2 + 3);
  v7 = v5 * *((float *)a2 + 5);
  v8 = (float)(*((float *)a4 + 1) - *((float *)a2 + 2)) * *((float *)a2 + 6);
  *((float *)this + 5) = v6 + (float)((float)(*((float *)a4 + 1) - *((float *)a2 + 2)) * *((float *)a2 + 4));
  *((float *)this + 6) = v7 + v8;
  v9 = *(float *)a4 - *((float *)a3 + 1);
  v10 = (float)(v9 * *((float *)a3 + 3))
      + (float)((float)(*((float *)a4 + 1) - *((float *)a3 + 2)) * *((float *)a3 + 4));
  *((float *)this + 8) = (float)(v9 * *((float *)a3 + 5))
                       + (float)((float)(*((float *)a4 + 1) - *((float *)a3 + 2)) * *((float *)a3 + 6));
  *((float *)this + 7) = v10;
  result = *((float *)a3 + 14) - *((float *)a2 + 14);
  *((float *)this + 9) = result;
  return result;
}


// ===== 7f1e84 b2RevoluteJoint::InitVelocityConstraints(b2TimeStep const&) =====
float __fastcall b2RevoluteJoint::InitVelocityConstraints(int a1, int a2)
{
  float *v2; // r6
  float v4; // r0
  float v5; // r11
  float *v6; // r5
  float v7; // r9
  float v8; // r0
  float v9; // r10
  float v10; // r8
  float v11; // r7
  float result; // r0
  int v13; // r3
  float v14; // r3
  float v15; // r0
  float v16; // [sp+0h] [bp-34h]
  float v17; // [sp+0h] [bp-34h]
  float v18; // [sp+4h] [bp-30h]
  float v19; // [sp+4h] [bp-30h]
  float v20; // [sp+8h] [bp-2Ch]
  float v21; // [sp+Ch] [bp-28h]
  float v22; // [sp+Ch] [bp-28h]
  float v23; // [sp+10h] [bp-24h]
  float v24; // [sp+18h] [bp-1Ch]
  float v25; // [sp+1Ch] [bp-18h]
  float v26; // [sp+24h] [bp-10h]
  float v27; // [sp+28h] [bp-Ch]

  v2 = *(float **)(a1 + 48);
  v4 = *(float *)(a1 + 68) - v2[7];
  v5 = (float)(v4 * v2[3]) + (float)((float)(*(float *)(a1 + 72) - v2[8]) * v2[5]);
  v6 = *(float **)(a1 + 52);
  v7 = (float)(v4 * v2[4]) + (float)((float)(*(float *)(a1 + 72) - v2[8]) * v2[6]);
  v8 = *(float *)(a1 + 76) - v6[7];
  v9 = (float)(v8 * v6[3]) + (float)((float)(*(float *)(a1 + 80) - v6[8]) * v6[5]);
  v23 = (float)(v8 * v6[4]) + (float)((float)(*(float *)(a1 + 80) - v6[8]) * v6[6]);
  v27 = v2[30];
  v26 = v6[30];
  v10 = v2[32];
  v11 = v6[32];
  v21 = (float)((float)(v11 * v23) * v23) + (float)((float)(v27 + v26) + (float)((float)(v10 * v7) * v7));
  v16 = (float)((float)(COERCE_FLOAT(LODWORD(v11) + 0x80000000) * v9) * v23)
      + (float)((float)((float)(COERCE_FLOAT(LODWORD(v10) + 0x80000000) * v5) * v7) + 0.0);
  v20 = (float)((float)(v11 * v9) * v9) + (float)((float)(v27 + v26) + (float)((float)(v10 * v5) * v5));
  v18 = 1.0 / (float)((float)(v21 * v20) - (float)(v16 * v16));
  v17 = v16 * COERCE_FLOAT(LODWORD(v18) + 0x80000000);
  *(float *)(a1 + 116) = v21 * v18;
  *(float *)(a1 + 108) = v17;
  *(float *)(a1 + 112) = v17;
  *(float *)(a1 + 104) = v20 * v18;
  result = 1.0 / (float)(v10 + v11);
  v13 = *(unsigned __int8 *)(a1 + 124);
  *(float *)(a1 + 120) = result;
  if ( !v13 )
    *(_DWORD *)(a1 + 92) = 0;
  if ( *(_BYTE *)(a1 + 136) )
  {
    v24 = *(float *)(a1 + 148);
    v22 = *(float *)(a1 + 144);
    v14 = v24 - v22;
    if ( (float)(v24 - v22) <= 0.0 )
      LODWORD(v14) = COERCE_INT(v24 - v22) + 0x80000000;
    LODWORD(result) = v14 < 0.069813;
    if ( v14 >= 0.069813 )
    {
      v25 = (float)(v6[14] - v2[14]) - *(float *)(a1 + 140);
      LODWORD(result) = v25 <= v22;
      if ( v25 <= v22 )
      {
        if ( *(_DWORD *)(a1 + 152) != 1 )
          *(_DWORD *)(a1 + 96) = 0;
        *(_DWORD *)(a1 + 152) = 1;
      }
      else
      {
        LODWORD(result) = v25 >= v24;
        if ( v25 < v24 )
        {
          *(_DWORD *)(a1 + 152) = 0;
          *(_DWORD *)(a1 + 96) = 0;
        }
        else
        {
          if ( *(_DWORD *)(a1 + 152) != 2 )
            *(_DWORD *)(a1 + 96) = 0;
          *(_DWORD *)(a1 + 152) = 2;
        }
      }
    }
    else
    {
      *(_DWORD *)(a1 + 152) = 3;
    }
  }
  else
  {
    *(_DWORD *)(a1 + 96) = 0;
  }
  if ( *(_BYTE *)(a2 + 16) )
  {
    v19 = (float)(v27 * *(float *)a2) * *(float *)(a1 + 88);
    v2[16] = v2[16] - (float)((float)(v27 * *(float *)a2) * *(float *)(a1 + 84));
    v2[17] = v2[17] - v19;
    v2[18] = v2[18]
           - (float)((float)(v10 * *(float *)a2)
                   * (float)((float)(*(float *)(a1 + 92) + *(float *)(a1 + 96))
                           + (float)((float)(v5 * *(float *)(a1 + 88)) - (float)(v7 * *(float *)(a1 + 84)))));
    v15 = (float)(v26 * *(float *)a2) * *(float *)(a1 + 88);
    v6[16] = v6[16] + (float)((float)(v26 * *(float *)a2) * *(float *)(a1 + 84));
    v6[17] = v6[17] + v15;
    result = v6[18]
           + (float)((float)(v11 * *(float *)a2)
                   * (float)((float)(*(float *)(a1 + 92) + *(float *)(a1 + 96))
                           + (float)((float)(v9 * *(float *)(a1 + 88)) - (float)(v23 * *(float *)(a1 + 84)))));
    v6[18] = result;
  }
  else
  {
    *(_DWORD *)(a1 + 96) = 0;
    *(_DWORD *)(a1 + 84) = 0;
    *(_DWORD *)(a1 + 88) = 0;
    *(_DWORD *)(a1 + 92) = 0;
  }
  *(_DWORD *)(a1 + 100) = 0;
  return result;
}


// ===== 7f2478 b2RevoluteJoint::SolveVelocityConstraints(b2TimeStep const&) =====
float __fastcall b2RevoluteJoint::SolveVelocityConstraints(int a1, int a2)
{
  float *v2; // r4
  float v4; // r0
  float v5; // r8
  float *v6; // r6
  float v7; // r0
  float v8; // r10
  float v9; // r11
  float v10; // r0
  float v11; // r10
  float v12; // r11
  float v13; // r9
  float v14; // r10
  float v15; // r3
  float v16; // r0
  float v17; // r11
  float v18; // r9
  float v19; // r10
  float v20; // r8
  float result; // r0
  float v22; // r9
  float v23; // r11
  float v24; // r8
  float v25; // r0
  int v26; // r8
  float v27; // r10
  float v28; // r0
  float v29; // r9
  float v30; // r0
  float v31; // r10
  float v32; // r8
  float v33; // r0
  float v34; // [sp+0h] [bp-14h]
  float v35; // [sp+8h] [bp-Ch]
  float v36; // [sp+Ch] [bp-8h]

  v2 = *(float **)(a1 + 48);
  v4 = *(float *)(a1 + 68) - v2[7];
  v5 = (float)(v4 * v2[3]) + (float)((float)(*(float *)(a1 + 72) - v2[8]) * v2[5]);
  v6 = *(float **)(a1 + 52);
  v35 = (float)(v4 * v2[4]) + (float)((float)(*(float *)(a1 + 72) - v2[8]) * v2[6]);
  v7 = *(float *)(a1 + 76) - v6[7];
  v36 = (float)(v7 * v6[3]) + (float)((float)(*(float *)(a1 + 80) - v6[8]) * v6[5]);
  v8 = v6[18];
  v34 = (float)(v7 * v6[4]) + (float)((float)(*(float *)(a1 + 80) - v6[8]) * v6[6]);
  v9 = (float)((float)(v34 * COERCE_FLOAT(LODWORD(v8) + 0x80000000)) + v6[16]) - v2[16];
  v10 = (float)((float)(v8 * v36) + v6[17]) - v2[17];
  v11 = v2[18];
  v12 = v9 - (float)(v35 * COERCE_FLOAT(LODWORD(v11) + 0x80000000));
  v13 = v10 - (float)(v11 * v5);
  LODWORD(v14) = *(_DWORD *)(a2 + 4) + 0x80000000;
  v15 = (float)(v12 * *(float *)(a1 + 104)) + (float)(v13 * *(float *)(a1 + 112));
  v16 = v14 * (float)((float)(v12 * *(float *)(a1 + 108)) + (float)(v13 * *(float *)(a1 + 116)));
  *(float *)(a1 + 84) = *(float *)(a1 + 84) + (float)(v14 * v15);
  *(float *)(a1 + 88) = *(float *)(a1 + 88) + v16;
  v17 = *(float *)a2 * (float)(v14 * v15);
  v18 = v2[30];
  v19 = *(float *)a2 * v16;
  v2[16] = v2[16] - (float)(v18 * v17);
  v2[17] = v2[17] - (float)(v18 * v19);
  v2[18] = v2[18] - (float)((float)((float)(v5 * v19) - (float)(v35 * v17)) * v2[32]);
  v20 = v6[30];
  v6[16] = v6[16] + (float)(v20 * v17);
  v6[17] = v6[17] + (float)(v20 * v19);
  result = (float)((float)((float)(v36 * v19) - (float)(v34 * v17)) * v6[32]) + v6[18];
  v6[18] = result;
  if ( *(_BYTE *)(a1 + 124) && *(_DWORD *)(a1 + 152) != 3 )
  {
    v22 = *(float *)(a1 + 92);
    v23 = (float)((float)(COERCE_FLOAT(*(_DWORD *)(a2 + 4) + 0x80000000) * *(float *)(a1 + 120))
                * (float)((float)(result - v2[18]) - *(float *)(a1 + 132)))
        + v22;
    LODWORD(v24) = *(_DWORD *)(a1 + 128) + 0x80000000;
    if ( v23 >= *(float *)(a1 + 128) )
      v23 = *(float *)(a1 + 128);
    if ( v24 <= v23 )
      v24 = v23;
    *(float *)(a1 + 92) = v24;
    v25 = (float)(v24 - v22) * *(float *)a2;
    v2[18] = v2[18] - (float)(v25 * v2[32]);
    result = v6[18] + (float)(v25 * v6[32]);
    v6[18] = result;
  }
  if ( *(_BYTE *)(a1 + 136) )
  {
    v26 = *(_DWORD *)(a1 + 152);
    if ( v26 )
    {
      v27 = v2[18];
      v28 = (float)(COERCE_FLOAT(*(_DWORD *)(a2 + 4) + 0x80000000) * *(float *)(a1 + 120)) * (float)(v6[18] - v27);
      v29 = v28;
      switch ( v26 )
      {
        case 3:
          *(float *)(a1 + 96) = *(float *)(a1 + 96) + v28;
          v27 = v2[18];
          goto LABEL_13;
        case 1:
          v31 = *(float *)(a1 + 96);
          v32 = v28 + v31;
          if ( (float)(v28 + v31) <= 0.0 )
LABEL_18:
            v32 = 0.0;
          break;
        case 2:
          v31 = *(float *)(a1 + 96);
          v32 = v28 + v31;
          if ( (float)(v28 + v31) >= 0.0 )
            goto LABEL_18;
          break;
        default:
LABEL_13:
          v30 = v29 * *(float *)a2;
          v2[18] = v27 - (float)(v30 * v2[32]);
          result = v6[18] + (float)(v30 * v6[32]);
          v6[18] = result;
          return result;
      }
      *(float *)(a1 + 96) = v32;
      v33 = v32 - v31;
      v27 = v2[18];
      v29 = v33;
      goto LABEL_13;
    }
  }
  return result;
}


// ===== 7f2a00 b2RevoluteJoint::GetAnchor1(void) =====
b2RevoluteJoint *__fastcall b2RevoluteJoint::GetAnchor1(b2RevoluteJoint *this, int a2)
{
  float *v2; // r4
  float v3; // r7
  float v4; // r6
  float v6; // r0

  v2 = *(float **)(a2 + 48);
  v3 = *(float *)(a2 + 68);
  v4 = *(float *)(a2 + 72);
  v6 = (float)((float)(v3 * v2[3]) + (float)(v4 * v2[5])) + v2[1];
  *((float *)this + 1) = (float)((float)(v3 * v2[4]) + (float)(v4 * v2[6])) + v2[2];
  *(float *)this = v6;
  return this;
}


// ===== 7f2a90 b2RevoluteJoint::GetAnchor2(void) =====
b2RevoluteJoint *__fastcall b2RevoluteJoint::GetAnchor2(b2RevoluteJoint *this, int a2)
{
  float *v2; // r4
  float v3; // r7
  float v4; // r6
  float v6; // r0

  v2 = *(float **)(a2 + 52);
  v3 = *(float *)(a2 + 76);
  v4 = *(float *)(a2 + 80);
  v6 = (float)((float)(v3 * v2[3]) + (float)(v4 * v2[5])) + v2[1];
  *((float *)this + 1) = (float)((float)(v3 * v2[4]) + (float)(v4 * v2[6])) + v2[2];
  *(float *)this = v6;
  return this;
}


// ===== 7f2b20 b2RevoluteJoint::GetReactionForce(void) =====
_DWORD *__fastcall b2RevoluteJoint::GetReactionForce(_DWORD *this, int a2)
{
  int v2; // r2

  v2 = *(_DWORD *)(a2 + 88);
  *this = *(_DWORD *)(a2 + 84);
  *(this + 1) = v2;
  return this;
}


// ===== 7f2b34 b2RevoluteJoint::GetReactionTorque(void) =====
int __fastcall b2RevoluteJoint::GetReactionTorque(b2RevoluteJoint *this)
{
  return *((_DWORD *)this + 24);
}


// ===== 7f2b3c b2RevoluteJoint::GetJointAngle(void) =====
float __fastcall b2RevoluteJoint::GetJointAngle(b2RevoluteJoint *this)
{
  return (float)(*(float *)(*((_DWORD *)this + 13) + 56) - *(float *)(*((_DWORD *)this + 12) + 56))
       - *((float *)this + 35);
}


// ===== 7f2b64 b2RevoluteJoint::GetJointSpeed(void) =====
float __fastcall b2RevoluteJoint::GetJointSpeed(b2RevoluteJoint *this)
{
  return *(float *)(*((_DWORD *)this + 13) + 72) - *(float *)(*((_DWORD *)this + 12) + 72);
}


// ===== 7f2b80 b2RevoluteJoint::IsMotorEnabled(void) =====
int __fastcall b2RevoluteJoint::IsMotorEnabled(b2RevoluteJoint *this)
{
  return *((unsigned __int8 *)this + 124);
}


// ===== 7f2b88 b2RevoluteJoint::EnableMotor(bool) =====
int __fastcall b2RevoluteJoint::EnableMotor(int this, bool a2)
{
  *(_BYTE *)(this + 124) = a2;
  return this;
}


// ===== 7f2b90 b2RevoluteJoint::GetMotorTorque(void) =====
int __fastcall b2RevoluteJoint::GetMotorTorque(b2RevoluteJoint *this)
{
  return *((_DWORD *)this + 23);
}


// ===== 7f2b98 b2RevoluteJoint::SetMotorSpeed(float) =====
int __fastcall b2RevoluteJoint::SetMotorSpeed(int this, float a2)
{
  *(float *)(this + 132) = a2;
  return this;
}


// ===== 7f2ba0 b2RevoluteJoint::SetMaxMotorTorque(float) =====
int __fastcall b2RevoluteJoint::SetMaxMotorTorque(int this, float a2)
{
  *(float *)(this + 128) = a2;
  return this;
}


// ===== 7f2ba8 b2RevoluteJoint::IsLimitEnabled(void) =====
int __fastcall b2RevoluteJoint::IsLimitEnabled(b2RevoluteJoint *this)
{
  return *((unsigned __int8 *)this + 136);
}


// ===== 7f2bb0 b2RevoluteJoint::EnableLimit(bool) =====
int __fastcall b2RevoluteJoint::EnableLimit(int this, bool a2)
{
  *(_BYTE *)(this + 136) = a2;
  return this;
}


// ===== 7f2bb8 b2RevoluteJoint::GetLowerLimit(void) =====
int __fastcall b2RevoluteJoint::GetLowerLimit(b2RevoluteJoint *this)
{
  return *((_DWORD *)this + 36);
}


// ===== 7f2bc0 b2RevoluteJoint::GetUpperLimit(void) =====
int __fastcall b2RevoluteJoint::GetUpperLimit(b2RevoluteJoint *this)
{
  return *((_DWORD *)this + 37);
}


// ===== 7f2bc8 b2RevoluteJoint::SetLimits(float,float) =====
int __fastcall b2RevoluteJoint::SetLimits(int this, float a2, float a3)
{
  *(float *)(this + 148) = a3;
  *(float *)(this + 144) = a2;
  return this;
}


// ===== 7f2bd4 b2RevoluteJoint::~b2RevoluteJoint() =====
void __fastcall b2RevoluteJoint::~b2RevoluteJoint(b2RevoluteJoint *this)
{
  ;
}


// ===== 7f2bd8 b2RevoluteJoint::~b2RevoluteJoint() =====
void __fastcall b2RevoluteJoint::~b2RevoluteJoint(b2RevoluteJoint *this)
{
  LC_API_FREE_0(this);
}


// ===== 7f2bec b2RevoluteJoint::SolvePositionConstraints(void) =====
bool __fastcall b2RevoluteJoint::SolvePositionConstraints(b2RevoluteJoint *this)
{
  float *v1; // r5
  float v3; // r0
  float v4; // r9
  float *v5; // r4
  float v6; // r10
  float v7; // r0
  float v8; // r8
  float v9; // r7
  float v10; // r11
  float v11; // r11
  float v12; // r11
  float v13; // r10
  int v14; // r8
  float v15; // r7
  _BOOL4 result; // r0
  float v17; // r10
  float v18; // r0
  float v19; // r6
  float v20; // r0
  float v21; // r8
  float v22; // r10
  float v23; // r8
  float v24; // r0
  float v25; // r8
  float v26; // r8
  float v27; // [sp+0h] [bp-2Ch]
  float v28; // [sp+4h] [bp-28h]
  float v29; // [sp+8h] [bp-24h]
  float v30; // [sp+Ch] [bp-20h]
  float v31; // [sp+Ch] [bp-20h]
  float v32; // [sp+18h] [bp-14h]
  float v33; // [sp+1Ch] [bp-10h]
  float v34; // [sp+20h] [bp-Ch]
  float v35; // [sp+24h] [bp-8h]

  v1 = *((float **)this + 12);
  v3 = *((float *)this + 17) - v1[7];
  v4 = (float)(v3 * v1[3]) + (float)((float)(*((float *)this + 18) - v1[8]) * v1[5]);
  v5 = *((float **)this + 13);
  v6 = (float)(v3 * v1[4]) + (float)((float)(*((float *)this + 18) - v1[8]) * v1[6]);
  v7 = *((float *)this + 19) - v5[7];
  v8 = (float)(v7 * v5[3]) + (float)((float)(*((float *)this + 20) - v5[8]) * v5[5]);
  v9 = (float)(v7 * v5[4]) + (float)((float)(*((float *)this + 20) - v5[8]) * v5[6]);
  v27 = (float)(v8 + v5[11]) - (float)(v4 + v1[11]);
  v28 = (float)(v9 + v5[12]) - (float)(v6 + v1[12]);
  v34 = sqrtf((float)(v27 * v27) + (float)(v28 * v28));
  v30 = v1[30] + v5[30];
  v10 = v5[32];
  v35 = (float)(v10 * v8) * v8;
  v32 = (float)((float)(v10 * v9) * v9) + (float)(v30 + (float)((float)(v1[32] * v6) * v6));
  v11 = (float)((float)(COERCE_FLOAT(LODWORD(v10) + 0x80000000) * v8) * v9)
      + (float)((float)((float)(COERCE_FLOAT(*((_DWORD *)v1 + 32) + 0x80000000) * v4) * v6) + 0.0);
  v29 = v35 + (float)(v30 + (float)((float)(v1[32] * v4) * v4));
  v33 = 1.0 / (float)((float)(v32 * v29) - (float)(v11 * v11));
  v31 = v33
      * (float)((float)(v29 * COERCE_FLOAT(LODWORD(v27) + 0x80000000))
              - (float)(v11 * COERCE_FLOAT(LODWORD(v28) + 0x80000000)));
  v12 = v33
      * (float)((float)(v32 * COERCE_FLOAT(LODWORD(v28) + 0x80000000))
              - (float)(v11 * COERCE_FLOAT(LODWORD(v27) + 0x80000000)));
  v1[11] = v1[11] - (float)(v1[30] * v31);
  v1[12] = v1[12] - (float)(v1[30] * v12);
  v1[14] = v1[14] - (float)((float)((float)(v4 * v12) - (float)(v6 * v31)) * v1[32]);
  v13 = v5[30];
  v5[11] = v5[11] + (float)(v13 * v31);
  v5[12] = v5[12] + (float)(v13 * v12);
  v5[14] = v5[14] + (float)((float)((float)(v8 * v12) - (float)(v9 * v31)) * v5[32]);
  b2Body::SynchronizeTransform((b2Body *)v1);
  b2Body::SynchronizeTransform((b2Body *)v5);
  if ( !*((_BYTE *)this + 136) || (v14 = *((_DWORD *)this + 38)) == 0 )
  {
    v15 = 0.0;
    goto LABEL_4;
  }
  v17 = v1[14];
  v18 = (float)(v5[14] - v17) - *((float *)this + 35);
  v15 = v18;
  switch ( v14 )
  {
    case 3:
      if ( v18 >= 0.13963 )
      {
        v15 = 0.13963;
        v19 = COERCE_FLOAT(*((_DWORD *)this + 30) + 0x80000000) * 0.13963;
      }
      else if ( v18 >= -0.13963 )
      {
        v19 = v18 * COERCE_FLOAT(*((_DWORD *)this + 30) + 0x80000000);
        if ( v18 <= 0.0 )
          LODWORD(v15) = LODWORD(v18) + 0x80000000;
      }
      else
      {
        v15 = 0.13963;
        v19 = COERCE_FLOAT(*((_DWORD *)this + 30) + 0x80000000) * -0.13963;
      }
      goto LABEL_12;
    case 1:
      v20 = v18 - *((float *)this + 36);
      LODWORD(v15) = LODWORD(v20) + 0x80000000;
      if ( COERCE_FLOAT(LODWORD(v20) + 0x80000000) < 0.0 )
        v15 = 0.0;
      v21 = v20 + 0.034907;
      if ( (float)(v20 + 0.034907) < 0.0 )
      {
        if ( v21 < -0.13963 )
          v21 = -0.13963;
      }
      else
      {
        v21 = 0.0;
      }
      v22 = *((float *)this + 25);
      v23 = (float)(COERCE_FLOAT(*((_DWORD *)this + 30) + 0x80000000) * v21) + v22;
      if ( v23 > 0.0 )
        goto LABEL_22;
LABEL_32:
      v23 = 0.0;
LABEL_22:
      *((float *)this + 25) = v23;
      v24 = v23 - v22;
      v17 = v1[14];
      v19 = v24;
      goto LABEL_12;
    case 2:
      v25 = v18 - *((float *)this + 37);
      if ( v25 < 0.0 )
        v15 = 0.0;
      else
        v15 = v18 - *((float *)this + 37);
      v26 = v25 - 0.034907;
      if ( v26 < 0.13963 )
      {
        if ( v26 < 0.0 )
          v26 = 0.0;
      }
      else
      {
        v26 = 0.13963;
      }
      v22 = *((float *)this + 25);
      v23 = (float)(COERCE_FLOAT(*((_DWORD *)this + 30) + 0x80000000) * v26) + v22;
      if ( v23 < 0.0 )
        goto LABEL_22;
      goto LABEL_32;
  }
  v19 = 0.0;
  v15 = 0.0;
LABEL_12:
  v1[14] = v17 - (float)(v19 * v1[32]);
  v5[14] = v5[14] + (float)(v19 * v5[32]);
  b2Body::SynchronizeTransform((b2Body *)v1);
  b2Body::SynchronizeTransform((b2Body *)v5);
LABEL_4:
  result = v34 <= 0.005;
  if ( v34 <= 0.005 )
    return v15 <= 0.034907;
  return result;
}


// ===== 7f336c b2RevoluteJoint::b2RevoluteJoint(b2RevoluteJointDef const*) =====
int __fastcall b2RevoluteJoint::b2RevoluteJoint(int a1, int a2)
{
  int v5; // r2

  b2Joint::b2Joint(a1, (int *)a2);
  *(_DWORD *)a1 = off_991C28;
  *(_DWORD *)(a1 + 68) = *(_DWORD *)(a2 + 20);
  *(_DWORD *)(a1 + 72) = *(_DWORD *)(a2 + 24);
  *(_DWORD *)(a1 + 76) = *(_DWORD *)(a2 + 28);
  *(_DWORD *)(a1 + 80) = *(_DWORD *)(a2 + 32);
  v5 = *(_DWORD *)(a2 + 36);
  *(_DWORD *)(a1 + 100) = 0;
  *(_DWORD *)(a1 + 84) = 0;
  *(_DWORD *)(a1 + 140) = v5;
  *(_DWORD *)(a1 + 88) = 0;
  *(_DWORD *)(a1 + 92) = 0;
  *(_DWORD *)(a1 + 96) = 0;
  *(_DWORD *)(a1 + 144) = *(_DWORD *)(a2 + 44);
  *(_DWORD *)(a1 + 148) = *(_DWORD *)(a2 + 48);
  *(_DWORD *)(a1 + 128) = *(_DWORD *)(a2 + 60);
  *(_DWORD *)(a1 + 132) = *(_DWORD *)(a2 + 56);
  *(_BYTE *)(a1 + 136) = *(_BYTE *)(a2 + 40);
  *(_BYTE *)(a1 + 124) = *(_BYTE *)(a2 + 52);
  return a1;
}


// ===== 7f3414 b2RevoluteJoint::b2RevoluteJoint(b2RevoluteJointDef const*) =====
int __fastcall b2RevoluteJoint::b2RevoluteJoint(int a1, int a2)
{
  int v5; // r2

  b2Joint::b2Joint(a1, (int *)a2);
  *(_DWORD *)a1 = off_991C28;
  *(_DWORD *)(a1 + 68) = *(_DWORD *)(a2 + 20);
  *(_DWORD *)(a1 + 72) = *(_DWORD *)(a2 + 24);
  *(_DWORD *)(a1 + 76) = *(_DWORD *)(a2 + 28);
  *(_DWORD *)(a1 + 80) = *(_DWORD *)(a2 + 32);
  v5 = *(_DWORD *)(a2 + 36);
  *(_DWORD *)(a1 + 100) = 0;
  *(_DWORD *)(a1 + 84) = 0;
  *(_DWORD *)(a1 + 140) = v5;
  *(_DWORD *)(a1 + 88) = 0;
  *(_DWORD *)(a1 + 92) = 0;
  *(_DWORD *)(a1 + 96) = 0;
  *(_DWORD *)(a1 + 144) = *(_DWORD *)(a2 + 44);
  *(_DWORD *)(a1 + 148) = *(_DWORD *)(a2 + 48);
  *(_DWORD *)(a1 + 128) = *(_DWORD *)(a2 + 60);
  *(_DWORD *)(a1 + 132) = *(_DWORD *)(a2 + 56);
  *(_BYTE *)(a1 + 136) = *(_BYTE *)(a2 + 40);
  *(_BYTE *)(a1 + 124) = *(_BYTE *)(a2 + 52);
  return a1;
}


// ===== 7f34bc b2Free(void *) =====
void __fastcall b2Free(_DWORD *a1)
{
  if ( a1 )
  {
    b2_byteCount -= *(a1 - 1);
    free(a1 - 1);
  }
}


// ===== 7f34f4 b2Alloc(int) =====
_DWORD *__fastcall b2Alloc(int a1)
{
  int v1; // r4
  _DWORD *v2; // r0

  v1 = a1 + 4;
  b2_byteCount += a1 + 4;
  v2 = LC_API_MALLOC_0(a1 + 4);
  *v2 = v1;
  return v2 + 1;
}


// ===== 7f3530 b2StackAllocator::b2StackAllocator(void) =====
void __fastcall b2StackAllocator::b2StackAllocator(b2StackAllocator *this)
{
  *((_DWORD *)this + 25699) = 0;
  *((_DWORD *)this + 25601) = 0;
  *((_DWORD *)this + 25602) = 0;
  *((_DWORD *)this + 25600) = 0;
}


// ===== 7f3560 b2StackAllocator::b2StackAllocator(void) =====
void __fastcall b2StackAllocator::b2StackAllocator(b2StackAllocator *this)
{
  *((_DWORD *)this + 25699) = 0;
  *((_DWORD *)this + 25601) = 0;
  *((_DWORD *)this + 25602) = 0;
  *((_DWORD *)this + 25600) = 0;
}


// ===== 7f3590 b2StackAllocator::~b2StackAllocator() =====
void __fastcall b2StackAllocator::~b2StackAllocator(b2StackAllocator *this)
{
  ;
}


// ===== 7f3594 b2StackAllocator::~b2StackAllocator() =====
void __fastcall b2StackAllocator::~b2StackAllocator(b2StackAllocator *this)
{
  ;
}


// ===== 7f3598 b2StackAllocator::GetMaxAllocation(void) =====
int __fastcall b2StackAllocator::GetMaxAllocation(b2StackAllocator *this)
{
  return *((_DWORD *)this + 25602);
}


// ===== 7f35a8 b2StackAllocator::Free(void *) =====
int __fastcall b2StackAllocator::Free(b2StackAllocator *this, _DWORD *a2)
{
  int v2; // r5
  char *v3; // r2
  int result; // r0

  v2 = *((_DWORD *)this + 25699) - 1;
  v3 = (char *)this + 12 * v2;
  if ( v3[102420] )
    b2Free(a2);
  else
    *((_DWORD *)this + 25600) -= *((_DWORD *)v3 + 25604);
  result = *((_DWORD *)this + 25601);
  *((_DWORD *)this + 25601) = result - *((_DWORD *)this + 3 * v2 + 25604);
  --*((_DWORD *)this + 25699);
  return result;
}


// ===== 7f3644 b2StackAllocator::Allocate(int) =====
int __fastcall b2StackAllocator::Allocate(b2StackAllocator *this, int a2)
{
  int v2; // r6
  char *v3; // r5
  int v5; // r1
  int v7; // r7
  int v8; // r1

  v2 = *((_DWORD *)this + 25699);
  v3 = (char *)this + 12 * v2;
  *((_DWORD *)v3 + 25604) = a2;
  v5 = *((_DWORD *)this + 25600);
  if ( a2 + v5 > 102400 )
  {
    *((_DWORD *)v3 + 25603) = b2Alloc(a2);
    v3[102420] = 1;
  }
  else
  {
    *((_DWORD *)v3 + 25603) = (char *)this + v5;
    v3[102420] = 0;
    *((_DWORD *)this + 25600) += a2;
  }
  v7 = a2 + *((_DWORD *)this + 25601);
  *((_DWORD *)this + 25601) = v7;
  v8 = *((_DWORD *)this + 25602);
  if ( v7 < v8 )
    *((_DWORD *)this + 25602) = v8;
  else
    *((_DWORD *)this + 25602) = v7;
  ++*((_DWORD *)this + 25699);
  return *((_DWORD *)this + 3 * v2 + 25603);
}


// ===== 7f3728 b2TimeOfImpact(b2Shape const*,b2Sweep const&,b2Shape const*,b2Sweep const&) =====
int __fastcall b2TimeOfImpact(const b2Shape *a1, const b2Sweep *a2, const b2Shape *a3, const b2Sweep *a4)
{
  int v4; // r5
  float v5; // r8
  float v6; // r9
  float i; // r4
  float v8; // r0
  float v9; // r11
  bool v10; // r3
  float v12; // r1
  float v13; // r10
  float v14; // r1
  float v15; // r10
  float v16; // r0
  float v17; // r10
  float v18; // [sp+Ch] [bp-88h]
  float v23; // [sp+20h] [bp-74h]
  float v24; // [sp+2Ch] [bp-68h]
  float v25; // [sp+30h] [bp-64h]
  float v26; // [sp+34h] [bp-60h]
  float v27; // [sp+38h] [bp-5Ch]
  float v28; // [sp+3Ch] [bp-58h]
  float v29; // [sp+40h] [bp-54h]
  _BYTE v30[24]; // [sp+48h] [bp-4Ch] BYREF
  _BYTE v31[24]; // [sp+60h] [bp-34h] BYREF
  float v32; // [sp+78h] [bp-1Ch] BYREF
  float v33; // [sp+7Ch] [bp-18h]
  float v34[2]; // [sp+80h] [bp-14h] BYREF
  float v35[3]; // [sp+88h] [bp-Ch] BYREF

  v26 = *((float *)a2 + 4) - *((float *)a2 + 2);
  v4 = 0;
  v27 = *((float *)a2 + 5) - *((float *)a2 + 3);
  v24 = *((float *)a4 + 4) - *((float *)a4 + 2);
  v25 = *((float *)a4 + 5) - *((float *)a4 + 3);
  v5 = *((float *)a2 + 7) - *((float *)a2 + 6);
  v18 = 0.0;
  v6 = *((float *)a4 + 7) - *((float *)a4 + 6);
  v29 = *((float *)a1 + 4);
  v28 = *((float *)a3 + 4);
  v23 = *((float *)a2 + 8);
  v33 = *(float *)&dword_A2ED44;
  v32 = *(float *)&b2Vec2_zero;
  for ( i = 0.0; ; i = v17 )
  {
    b2Sweep::GetXForm((int)a2, (int)v31, (float)((float)(1.0 - i) * v23) + i);
    b2Sweep::GetXForm((int)a4, (int)v30, (float)((float)(1.0 - i) * v23) + i);
    v8 = COERCE_FLOAT(b2Distance(v35, v34, a1, v31, a3, v30));
    if ( !v4 )
    {
      if ( v8 <= 0.08 )
      {
        v18 = v8 - 0.02;
        if ( (float)(v8 - 0.02) < 0.002 )
          v18 = 0.002;
      }
      else
      {
        v18 = 0.06;
      }
    }
    v9 = v8 - v18;
    v10 = (float)(v8 - v18) < 0.002;
    if ( v4 == 20 )
      v10 = 1;
    if ( v10 )
      break;
    v33 = v34[1] - v35[1];
    v32 = v34[0] - v35[0];
    b2Vec2::Normalize((b2Vec2 *)&v32);
    if ( v5 <= 0.0 )
      LODWORD(v12) = LODWORD(v5) + 0x80000000;
    else
      v12 = v5;
    v13 = (float)(v29 * v12) + (float)((float)((float)(v26 - v24) * v32) + (float)((float)(v27 - v25) * v33));
    if ( v6 <= 0.0 )
      LODWORD(v14) = LODWORD(v6) + 0x80000000;
    else
      v14 = v6;
    v15 = v13 + (float)(v28 * v14);
    if ( v15 <= 0.0 )
      LODWORD(v16) = LODWORD(v15) + 0x80000000;
    else
      v16 = v15;
    if ( v16 < 0.00000011921 || (v17 = i + (float)(v9 / v15), v17 < 0.0) || v17 > 1.0 )
    {
      i = 1.0;
      return LODWORD(i);
    }
    if ( (float)(i * 1.0) > v17 )
      return LODWORD(i);
    ++v4;
  }
  return LODWORD(i);
}


// ===== 7f3a90 b2CircleContact::~b2CircleContact() =====
void __fastcall b2CircleContact::~b2CircleContact(b2CircleContact *this)
{
  ;
}


// ===== 7f3a94 b2CircleContact::GetManifolds(void) =====
char *__fastcall b2CircleContact::GetManifolds(b2CircleContact *this)
{
  return (char *)this + 72;
}


// ===== 7f3a9c b2CircleContact::~b2CircleContact() =====
void __fastcall b2CircleContact::~b2CircleContact(b2CircleContact *this)
{
  LC_API_FREE_0(this);
}


// ===== 7f3ab0 b2CircleContact::b2CircleContact(b2Shape *,b2Shape *) =====
void __fastcall b2CircleContact::b2CircleContact(b2CircleContact *this, b2Shape *a2, b2Shape *a3)
{
  b2Contact::b2Contact(this, a2, a3);
  *((_DWORD *)this + 36) = 0;
  *(_DWORD *)this = &off_991C58;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 23) = 0;
}


// ===== 7f3af8 b2CircleContact::b2CircleContact(b2Shape *,b2Shape *) =====
void __fastcall b2CircleContact::b2CircleContact(b2CircleContact *this, b2Shape *a2, b2Shape *a3)
{
  b2Contact::b2Contact(this, a2, a3);
  *((_DWORD *)this + 36) = 0;
  *(_DWORD *)this = &off_991C58;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 23) = 0;
}


// ===== 7f3b40 b2CircleContact::Destroy(b2Contact *,b2BlockAllocator *) =====
int __fastcall b2CircleContact::Destroy(b2CircleContact *this, b2Contact *a2, b2BlockAllocator *a3)
{
  (*(void (__fastcall **)(b2CircleContact *, b2Contact *, b2BlockAllocator *))(*(_DWORD *)this + 4))(this, a2, a3);
  return b2BlockAllocator::Free((int)a2, this, 148);
}


// ===== 7f3b6c b2CircleContact::Create(b2Shape *,b2Shape *,b2BlockAllocator *) =====
b2CircleContact *__fastcall b2CircleContact::Create(
        b2CircleContact *this,
        b2Shape *a2,
        b2Shape *a3,
        b2BlockAllocator *a4)
{
  b2CircleContact *v6; // r4

  v6 = (b2CircleContact *)b2BlockAllocator::Allocate(a3, 148);
  b2CircleContact::b2CircleContact(v6, this, a2);
  return v6;
}


// ===== 7f3b9c b2CircleContact::Evaluate(b2ContactListener *) =====
int __fastcall b2CircleContact::Evaluate(b2CircleContact *this, b2ContactListener *a2)
{
  int v2; // r9
  int v3; // r8
  float *v4; // r6
  char *v5; // r10
  float *v8; // r5
  char *v9; // r0
  int v10; // r1
  int v11; // r3
  float v12; // r9
  float v13; // r10
  int v14; // r11
  int v15; // r8
  int result; // r0
  int v17; // r1
  int v18; // r2
  int v19; // r3
  float v20; // r10
  float v21; // r8
  float v22; // r0
  float v23; // r0
  float v24; // r9
  float v25; // r8
  float v26; // r10
  float v27; // r9
  float v28; // r5
  float v29; // r0
  int v30; // r3
  int v31; // r1
  int v32; // r12
  int v33; // r2
  float v34; // r10
  float v35; // r8
  float v36; // r0
  float v37; // r0
  float v38; // r9
  float v39; // r8
  float v40; // r10
  float v41; // r9
  float v42; // r5
  float v43; // r0
  int v44; // r3
  int v45; // r1
  int v46; // r12
  int v47; // r2
  bool v48; // cc
  float v49; // r0
  float v50; // r0
  float v51; // r10
  float v52; // r9
  float v53; // r0
  float v54; // r9
  float v55; // r10
  float v56; // r4
  float v57; // r0
  int v58; // [sp+8h] [bp-9Ch]
  float v59; // [sp+Ch] [bp-98h]
  float v60; // [sp+10h] [bp-94h]
  int v61; // [sp+14h] [bp-90h]
  int v62; // [sp+18h] [bp-8Ch]
  int v63; // [sp+1Ch] [bp-88h]
  _DWORD v64[19]; // [sp+24h] [bp-80h] BYREF
  _DWORD v65[2]; // [sp+70h] [bp-34h] BYREF
  float v66; // [sp+78h] [bp-2Ch]
  float v67; // [sp+7Ch] [bp-28h]
  float v68; // [sp+80h] [bp-24h]
  float v69; // [sp+84h] [bp-20h]
  int v70; // [sp+88h] [bp-1Ch]
  int v71; // [sp+8Ch] [bp-18h]
  int v72; // [sp+90h] [bp-14h]
  int v73; // [sp+94h] [bp-10h]
  int v74; // [sp+98h] [bp-Ch]
  int v75; // [sp+9Ch] [bp-8h]

  v2 = *((_DWORD *)this + 14);
  v3 = *((_DWORD *)this + 13);
  v4 = *(float **)(v2 + 12);
  v5 = (char *)this + 72;
  v8 = *(float **)(v3 + 12);
  memcpy(v64, (char *)this + 72, sizeof(v64));
  v9 = v5;
  v10 = v3;
  v61 = v64[17];
  v11 = v2;
  v62 = v64[16];
  v12 = *(float *)&v64[1];
  v13 = *(float *)v64;
  v63 = v64[4];
  v14 = v64[5];
  v15 = v64[18];
  v60 = *(float *)&v64[3];
  v59 = *(float *)&v64[2];
  v58 = v64[6];
  b2CollideCircles(v9, v10, v8 + 1, v11, v4 + 1);
  result = *((_DWORD *)this + 36);
  v17 = *((_DWORD *)this + 14);
  v18 = *((_DWORD *)this + 15);
  v19 = *((_DWORD *)this + 16);
  v65[0] = *((_DWORD *)this + 13);
  v65[1] = v17;
  v73 = v18;
  v74 = v19;
  if ( result <= 0 )
  {
    v48 = (int)a2 <= 0;
    if ( a2 )
      v48 = v15 <= 0;
    *((_DWORD *)this + 2) = 0;
    if ( !v48 )
    {
      v49 = (float)((float)(v13 * v8[4]) + (float)(v12 * v8[6])) + v8[2];
      v66 = (float)((float)(v13 * v8[3]) + (float)(v12 * v8[5])) + v8[1];
      v67 = v49;
      v50 = (float)(v13 * v8[3]) + (float)(v12 * v8[5]);
      v51 = (float)((float)(v13 * v8[4]) + (float)(v12 * v8[6])) + v8[2];
      v52 = v8[18];
      v53 = v52 * (float)((float)(v50 + v8[1]) - v8[11]);
      v54 = (float)((float)(v51 - v8[12]) * COERCE_FLOAT(LODWORD(v52) + 0x80000000)) + v8[16];
      v55 = v53 + v8[17];
      v56 = v4[18];
      v57 = (float)((float)((float)((float)((float)(v59 * v4[4]) + (float)(v60 * v4[6])) + v4[2]) - v4[12])
                  * COERCE_FLOAT(LODWORD(v56) + 0x80000000))
          + v4[16];
      v69 = (float)((float)(v56 * (float)((float)((float)((float)(v59 * v4[3]) + (float)(v60 * v4[5])) + v4[1]) - v4[11]))
                  + v4[17])
          - v55;
      v68 = v57 - v54;
      v71 = v61;
      v70 = v62;
      v72 = v63;
      v75 = v64[7];
      return (*(int (__fastcall **)(b2ContactListener *, _DWORD *))(*(_DWORD *)a2 + 16))(a2, v65);
    }
  }
  else
  {
    *((_DWORD *)this + 2) = 1;
    if ( v15 )
    {
      *((_DWORD *)this + 23) = v14;
      *((_DWORD *)this + 24) = v58;
      if ( a2 )
      {
        v20 = *((float *)this + 18);
        v21 = *((float *)this + 19);
        v22 = (float)((float)(v20 * v8[4]) + (float)(v21 * v8[6])) + v8[2];
        v66 = (float)((float)(v20 * v8[3]) + (float)(v21 * v8[5])) + v8[1];
        v67 = v22;
        v23 = (float)(v20 * v8[4]) + (float)(v21 * v8[6]);
        v24 = (float)((float)(v20 * v8[3]) + (float)(v21 * v8[5])) + v8[1];
        v25 = v8[18];
        v26 = (float)((float)((float)(v23 + v8[2]) - v8[12]) * COERCE_FLOAT(LODWORD(v25) + 0x80000000)) + v8[16];
        v27 = (float)(v25 * (float)(v24 - v8[11])) + v8[17];
        v28 = v4[18];
        v29 = (float)((float)((float)((float)((float)(*((float *)this + 20) * v4[4])
                                            + (float)(*((float *)this + 21) * v4[6]))
                                    + v4[2])
                            - v4[12])
                    * COERCE_FLOAT(LODWORD(v28) + 0x80000000))
            + v4[16];
        v69 = (float)((float)(v28
                            * (float)((float)((float)((float)(*((float *)this + 20) * v4[3])
                                                    + (float)(*((float *)this + 21) * v4[5]))
                                            + v4[1])
                                    - v4[11]))
                    + v4[17])
            - v27;
        v30 = *((_DWORD *)this + 25);
        v31 = *((_DWORD *)this + 35);
        v32 = *((_DWORD *)this + 34);
        v33 = *((_DWORD *)this + 22);
        v68 = v29 - v26;
        v71 = v31;
        v70 = v32;
        v72 = v33;
        v75 = v30;
        return (*(int (__fastcall **)(b2ContactListener *, _DWORD *))(*(_DWORD *)a2 + 12))(a2, v65);
      }
    }
    else
    {
      *((_DWORD *)this + 24) = 0;
      *((_DWORD *)this + 23) = 0;
      if ( a2 )
      {
        v34 = *((float *)this + 18);
        v35 = *((float *)this + 19);
        v36 = (float)((float)(v34 * v8[4]) + (float)(v35 * v8[6])) + v8[2];
        v66 = (float)((float)(v34 * v8[3]) + (float)(v35 * v8[5])) + v8[1];
        v67 = v36;
        v37 = (float)(v34 * v8[4]) + (float)(v35 * v8[6]);
        v38 = (float)((float)(v34 * v8[3]) + (float)(v35 * v8[5])) + v8[1];
        v39 = v8[18];
        v40 = (float)((float)((float)(v37 + v8[2]) - v8[12]) * COERCE_FLOAT(LODWORD(v39) + 0x80000000)) + v8[16];
        v41 = (float)(v39 * (float)(v38 - v8[11])) + v8[17];
        v42 = v4[18];
        v43 = (float)((float)((float)((float)((float)(*((float *)this + 20) * v4[4])
                                            + (float)(*((float *)this + 21) * v4[6]))
                                    + v4[2])
                            - v4[12])
                    * COERCE_FLOAT(LODWORD(v42) + 0x80000000))
            + v4[16];
        v69 = (float)((float)(v42
                            * (float)((float)((float)((float)(*((float *)this + 20) * v4[3])
                                                    + (float)(*((float *)this + 21) * v4[5]))
                                            + v4[1])
                                    - v4[11]))
                    + v4[17])
            - v41;
        v44 = *((_DWORD *)this + 25);
        v45 = *((_DWORD *)this + 35);
        v46 = *((_DWORD *)this + 34);
        v47 = *((_DWORD *)this + 22);
        v68 = v43 - v40;
        v71 = v45;
        v70 = v46;
        v72 = v47;
        v75 = v44;
        return (*(int (__fastcall **)(b2ContactListener *, _DWORD *))(*(_DWORD *)a2 + 8))(a2, v65);
      }
    }
  }
  return result;
}


// ===== 7f4424 b2CollidePolygonAndCircle(b2Manifold *,b2PolygonShape const*,b2XForm const&,b2CircleShape const*,b2XForm const&) =====
float __fastcall b2CollidePolygonAndCircle(int a1, int a2, float *a3, float *a4, float *a5)
{
  float v5; // r5
  float v6; // r6
  float v7; // r0
  float v8; // r11
  float v9; // r9
  int v10; // r10
  float v11; // r8
  char v12; // r10
  int v13; // r3
  float v14; // r7
  int v15; // r5
  float *v16; // r4
  float v17; // r6
  float result; // r0
  char v19; // r7
  int v20; // r6
  int v21; // r6
  float *v22; // r5
  float v23; // r10
  float v24; // r4
  float v25; // r5
  float v26; // r9
  float v27; // r4
  float v28; // r5
  float v29; // r0
  float v30; // r4
  float v31; // r4
  float v32; // r0
  float v33; // r10
  float v34; // r7
  float v35; // r0
  float v36; // r0
  float v37; // r6
  int v38; // r3
  float v39; // r5
  float v40; // r4
  float v41; // r6
  float v42; // r0
  float v43; // r10
  float v44; // r4
  float v45; // r0
  float v46; // r9
  float v47; // r6
  float v48; // r0
  float v49; // r0
  float v50; // r6
  int v52; // [sp+Ch] [bp-38h]
  float v55; // [sp+18h] [bp-2Ch]
  float v56; // [sp+1Ch] [bp-28h]
  float v57; // [sp+28h] [bp-1Ch]
  float v58; // [sp+2Ch] [bp-18h]
  float v59; // [sp+30h] [bp-14h] BYREF
  float v60; // [sp+34h] [bp-10h]
  float v61; // [sp+38h] [bp-Ch] BYREF
  float v62; // [sp+3Ch] [bp-8h]

  *(_DWORD *)(a1 + 72) = 0;
  v5 = a4[12];
  v6 = a4[13];
  v56 = (float)((float)(v5 * a5[2]) + (float)(v6 * a5[4])) + *a5;
  v55 = (float)((float)(v5 * a5[3]) + (float)(v6 * a5[5])) + a5[1];
  v7 = v56 - *a3;
  v8 = (float)(v7 * a3[2]) + (float)((float)(v55 - a3[1]) * a3[3]);
  v9 = (float)(v7 * a3[4]) + (float)((float)(v55 - a3[1]) * a3[5]);
  v10 = *(_DWORD *)(a2 + 280);
  v11 = a4[14];
  if ( v10 > 0 )
  {
    v14 = -3.4028e38;
    v15 = 0;
    v16 = (float *)a2;
    v52 = 0;
    while ( 1 )
    {
      v17 = (float)((float)(v8 - v16[22]) * v16[38]) + (float)((float)(v9 - v16[23]) * v16[39]);
      result = v14;
      if ( v11 < v17 )
        break;
      if ( v14 < v17 )
        v52 = v15;
      ++v15;
      if ( v14 < v17 )
        v14 = (float)((float)(v8 - v16[22]) * v16[38]) + (float)((float)(v9 - v16[23]) * v16[39]);
      v16 += 2;
      if ( v15 == v10 )
      {
        if ( v14 < 0.00000011921 )
        {
          v13 = v52;
          v12 = v52;
          goto LABEL_23;
        }
        v19 = v52 + 1;
        if ( v52 + 1 < v15 )
          v20 = v52 + 1;
        else
          v20 = 0;
        if ( v52 + 1 >= v15 )
          v19 = v20;
        v21 = v20 + 11;
        v22 = (float *)(a2 + 8 * (v52 + 11));
        v23 = *(float *)(a2 + 8 * v21 + 4) - v22[1];
        v61 = *(float *)(a2 + 8 * v21) - *v22;
        v62 = v23;
        v58 = COERCE_FLOAT(b2Vec2::Normalize((b2Vec2 *)&v61));
        v24 = *(float *)(a2 + 8 * (v52 + 11));
        v25 = v22[1];
        v57 = (float)((float)(v8 - v24) * v61) + (float)((float)(v9 - v25) * v62);
        if ( v57 <= 0.0 )
        {
          *(_BYTE *)(a1 + 29) = -1;
          *(_BYTE *)(a1 + 30) = v52;
        }
        else if ( v58 > v57 )
        {
          v24 = v24 + (float)(v61 * v57);
          v25 = v25 + (float)(v62 * v57);
          *(_BYTE *)(a1 + 29) = v52;
          *(_BYTE *)(a1 + 30) = 0;
        }
        else
        {
          v24 = *(float *)(a2 + 8 * v21);
          v25 = *(float *)(a2 + 8 * v21 + 4);
          *(_BYTE *)(a1 + 29) = -1;
          *(_BYTE *)(a1 + 30) = v19;
        }
        v59 = v8 - v24;
        v60 = v9 - v25;
        v26 = COERCE_FLOAT(b2Vec2::Normalize((b2Vec2 *)&v59));
        LODWORD(result) = v26 > v11;
        if ( v26 <= v11 )
        {
          v27 = v59;
          *(_DWORD *)(a1 + 72) = 1;
          v28 = (float)(v27 * a3[2]) + (float)(v60 * a3[4]);
          v29 = v27 * a3[3];
          v30 = v29 + (float)(v60 * a3[5]);
          *(float *)(a1 + 68) = v30;
          *(float *)(a1 + 64) = v28;
          v31 = v55 - (float)(v11 * v30);
          v32 = (float)(v56 - (float)(v11 * v28)) - *a3;
          v33 = v32 * a3[2];
          v34 = v32 * a3[4];
          v35 = (float)(v31 - a3[1]) * a3[5];
          *(float *)a1 = v33 + (float)((float)(v31 - a3[1]) * a3[3]);
          *(float *)(a1 + 4) = v34 + v35;
          v36 = (float)(v56 - (float)(v11 * v28)) - *a5;
          v37 = (float)(v36 * a5[2]) + (float)((float)(v31 - a5[1]) * a5[3]);
          *(float *)(a1 + 12) = (float)(v36 * a5[4]) + (float)((float)(v31 - a5[1]) * a5[5]);
          *(float *)(a1 + 8) = v37;
          *(_BYTE *)(a1 + 31) = 0;
          *(float *)(a1 + 16) = v26 - v11;
          *(_BYTE *)(a1 + 28) = 0;
          return v26 - v11;
        }
        return result;
      }
    }
  }
  else
  {
    v12 = 0;
    v13 = 0;
    v14 = -3.4028e38;
LABEL_23:
    v38 = v13 + 19;
    *(_DWORD *)(a1 + 72) = 1;
    v39 = *(float *)(a2 + 8 * v38);
    v40 = *(float *)(a2 + 8 * v38 + 4);
    v41 = (float)(v39 * a3[2]) + (float)(v40 * a3[4]);
    v42 = (float)(v39 * a3[3]) + (float)(v40 * a3[5]);
    *(_BYTE *)(a1 + 31) = 0;
    *(_BYTE *)(a1 + 28) = 0;
    *(_BYTE *)(a1 + 30) = -1;
    *(_BYTE *)(a1 + 29) = v12;
    *(float *)(a1 + 68) = v42;
    *(float *)(a1 + 64) = v41;
    v43 = v56 - (float)(v11 * v41);
    v44 = v55 - (float)(v11 * v42);
    v45 = v43 - *a3;
    v46 = v45 * a3[2];
    v47 = v45 * a3[4];
    v48 = (float)(v44 - a3[1]) * a3[5];
    *(float *)a1 = v46 + (float)((float)(v44 - a3[1]) * a3[3]);
    *(float *)(a1 + 4) = v47 + v48;
    v49 = v43 - *a5;
    v50 = (float)(v49 * a5[2]) + (float)((float)(v44 - a5[1]) * a5[3]);
    *(float *)(a1 + 12) = (float)(v49 * a5[4]) + (float)((float)(v44 - a5[1]) * a5[5]);
    *(float *)(a1 + 8) = v50;
    *(float *)(a1 + 16) = v14 - v11;
    return v14 - v11;
  }
  return result;
}


// ===== 7f4c4c b2CollideCircles(b2Manifold *,b2CircleShape const*,b2XForm const&,b2CircleShape const*,b2XForm const&) =====
float __fastcall b2CollideCircles(int a1, float *a2, float *a3, float *a4, float *a5)
{
  float v6; // r10
  float v8; // r10
  float v9; // r11
  float v10; // r5
  float v11; // r8
  float result; // r0
  float v13; // r8
  float v14; // r9
  float v15; // r8
  float v16; // r5
  float v17; // r0
  float v18; // r11
  float v19; // r9
  float v20; // r0
  float v21; // r0
  float v22; // r5
  float v23; // r8
  float v24; // [sp+0h] [bp-1Ch]
  float x; // [sp+4h] [bp-18h]
  float v26; // [sp+8h] [bp-14h]
  float v27; // [sp+Ch] [bp-10h]
  float v28; // [sp+10h] [bp-Ch]
  float v29; // [sp+14h] [bp-8h]

  *(_DWORD *)(a1 + 72) = 0;
  v6 = a2[13];
  v29 = (float)((float)(a2[12] * a3[2]) + (float)(v6 * a3[4])) + *a3;
  v28 = (float)((float)(a2[12] * a3[3]) + (float)(v6 * a3[5])) + a3[1];
  v8 = a4[13];
  v27 = (float)((float)(a4[12] * a5[2]) + (float)(v8 * a5[4])) + *a5;
  v26 = (float)((float)(a4[12] * a5[3]) + (float)(v8 * a5[5])) + a5[1];
  x = (float)((float)(v27 - v29) * (float)(v27 - v29)) + (float)((float)(v26 - v28) * (float)(v26 - v28));
  v9 = a2[14];
  v10 = a4[14];
  v11 = v9 + v10;
  LODWORD(result) = (float)((float)(v9 + v10) * (float)(v9 + v10)) < x;
  if ( (float)((float)(v9 + v10) * (float)(v9 + v10)) >= x )
  {
    if ( x >= 0.00000011921 )
    {
      v24 = sqrtf(x);
      v13 = v24 - v11;
      *(float *)(a1 + 64) = (float)(1.0 / v24) * (float)(v27 - v29);
      *(float *)(a1 + 68) = (float)(1.0 / v24) * (float)(v26 - v28);
    }
    else
    {
      *(_DWORD *)(a1 + 64) = 0;
      LODWORD(v13) = LODWORD(v11) + 0x80000000;
      *(_DWORD *)(a1 + 68) = 1065353216;
    }
    v14 = *(float *)(a1 + 64);
    *(_DWORD *)(a1 + 72) = 1;
    *(_DWORD *)(a1 + 28) = 0;
    *(float *)(a1 + 16) = v13;
    v15 = (float)((float)(v29 + (float)(v9 * v14)) + (float)(v27 - (float)(v10 * v14))) * 0.5;
    v16 = (float)((float)(v28 + (float)(v9 * *(float *)(a1 + 68))) + (float)(v26 - (float)(v10 * *(float *)(a1 + 68))))
        * 0.5;
    v17 = v15 - *a3;
    v18 = v17 * a3[2];
    v19 = v17 * a3[4];
    v20 = (float)(v16 - a3[1]) * a3[5];
    *(float *)a1 = v18 + (float)((float)(v16 - a3[1]) * a3[3]);
    *(float *)(a1 + 4) = v19 + v20;
    v21 = v15 - *a5;
    v22 = v16 - a5[1];
    v23 = v21 * a5[2];
    result = (float)(v21 * a5[4]) + (float)(v22 * a5[5]);
    *(float *)(a1 + 8) = v23 + (float)(v22 * a5[3]);
    *(float *)(a1 + 12) = result;
  }
  return result;
}


// ===== 7f5038 ClipSegmentToLine(ClipVertex *,ClipVertex *,b2Vec2 const&,float) =====
int __fastcall ClipSegmentToLine(_DWORD *a1, int a2, float *a3, float a4)
{
  float v6; // r6
  float v7; // r0
  float v8; // r10
  int v9; // r1
  _DWORD *v10; // r3
  float v11; // r9
  float v12; // r11
  int v13; // r10
  int v14; // r3
  float v16; // [sp+8h] [bp-Ch]
  float *v17; // [sp+Ch] [bp-8h]

  v6 = a3[1];
  v7 = (float)((float)(*a3 * *(float *)a2) + (float)(v6 * *(float *)(a2 + 4))) - a4;
  v8 = (float)((float)(*a3 * *(float *)(a2 + 12)) + (float)(v6 * *(float *)(a2 + 16))) - a4;
  if ( v7 > 0.0 )
  {
    v6 = 0.0;
  }
  else
  {
    a3 = (float *)(a2 + 4);
    *a1 = *(_DWORD *)a2;
    LODWORD(a4) = a1 + 1;
    v9 = *(_DWORD *)(a2 + 4);
  }
  if ( v7 <= 0.0 )
  {
    LODWORD(v6) = 1;
    a1[1] = v9;
    *(float *)(LODWORD(a4) + 4) = a3[1];
  }
  if ( v8 <= 0.0 )
  {
    v10 = &a1[3 * LODWORD(v6)++];
    *v10 = *(_DWORD *)(a2 + 12);
    v10[1] = *(_DWORD *)(a2 + 16);
    v10[2] = *(_DWORD *)(a2 + 20);
  }
  if ( (float)(v7 * v8) < 0.0 )
  {
    v11 = *(float *)a2;
    v12 = v7 / (float)(v7 - v8);
    v13 = 3 * LODWORD(v6);
    v17 = (float *)&a1[3 * LODWORD(v6)];
    v16 = v12 * (float)(*(float *)(a2 + 12) - *(float *)a2);
    ++LODWORD(v6);
    v17[1] = *(float *)(a2 + 4) + (float)(v12 * (float)(*(float *)(a2 + 16) - *(float *)(a2 + 4)));
    *(float *)&a1[v13] = v11 + v16;
    if ( v7 <= 0.0 )
      v14 = *(_DWORD *)(a2 + 20);
    else
      v14 = *(_DWORD *)(a2 + 8);
    *((_DWORD *)v17 + 2) = v14;
  }
  return LODWORD(v6);
}


// ===== 7f5234 EdgeSeparation(b2PolygonShape const*,b2XForm const&,int,b2PolygonShape const*,b2XForm const&) =====
float __fastcall EdgeSeparation(int a1, float *a2, int a3, int a4, float *a5)
{
  int v5; // r2
  float v6; // r6
  float v7; // r5
  float v8; // r9
  int v9; // r10
  float v10; // r11
  int v11; // r8
  int v12; // r5
  int v13; // r6
  float v14; // r8
  float v15; // r5
  int v16; // r8
  int v18; // [sp+0h] [bp-3Ch]
  float v19; // [sp+Ch] [bp-30h]
  float v20; // [sp+10h] [bp-2Ch]
  float v21; // [sp+14h] [bp-28h]
  float v22; // [sp+1Ch] [bp-20h]
  float v23; // [sp+20h] [bp-1Ch]
  float v24; // [sp+24h] [bp-18h]
  float v25; // [sp+28h] [bp-14h]
  float v26; // [sp+2Ch] [bp-10h]
  float v27; // [sp+30h] [bp-Ch]

  v5 = a3 + 19;
  v6 = *(float *)(a1 + 8 * v5);
  v24 = a2[2];
  v7 = *(float *)(a1 + 8 * v5 + 4);
  v25 = a2[4];
  v19 = (float)(v24 * v6) + (float)(v25 * v7);
  v26 = a2[3];
  v27 = a2[5];
  v20 = (float)(v6 * v26) + (float)(v7 * v27);
  v21 = a5[3];
  v8 = (float)(v19 * a5[2]) + (float)(v20 * v21);
  v23 = a5[4];
  v9 = *(_DWORD *)(a4 + 280);
  v22 = a5[5];
  v10 = (float)(v19 * v23) + (float)(v20 * v22);
  if ( v9 > 0 )
  {
    v12 = a4;
    v13 = 0;
    v14 = 3.4028e38;
    v18 = 0;
    do
    {
      if ( v14 > (float)((float)(v8 * *(float *)(v12 + 88)) + (float)(v10 * *(float *)(v12 + 92))) )
        v18 = v13;
      ++v13;
      if ( v14 > (float)((float)(v8 * *(float *)(v12 + 88)) + (float)(v10 * *(float *)(v12 + 92))) )
        v14 = (float)(v8 * *(float *)(v12 + 88)) + (float)(v10 * *(float *)(v12 + 92));
      v12 += 8;
    }
    while ( v13 != v9 );
    v11 = v18;
  }
  else
  {
    v11 = 0;
  }
  v15 = *(float *)(a1 + 8 * (a3 + 11) + 4);
  v16 = v11 + 11;
  return (float)(v19
               * (float)((float)((float)((float)(a5[2] * *(float *)(a4 + 8 * v16))
                                       + (float)(v23 * *(float *)(a4 + 8 * v16 + 4)))
                               + *a5)
                       - (float)((float)((float)(v24 * *(float *)(a1 + 8 * (a3 + 11))) + (float)(v25 * v15)) + *a2)))
       + (float)(v20
               * (float)((float)((float)((float)(v21 * *(float *)(a4 + 8 * v16))
                                       + (float)(v22 * *(float *)(a4 + 8 * v16 + 4)))
                               + a5[1])
                       - (float)((float)((float)(v26 * *(float *)(a1 + 8 * (a3 + 11))) + (float)(v27 * v15)) + a2[1])));
}


// ===== 7f5544 FindMaxSeparation(int *,b2PolygonShape const*,b2XForm const&,b2PolygonShape const*,b2XForm const&) =====
int __fastcall FindMaxSeparation(int *a1, int a2, float *a3, int a4, float *a5)
{
  float v5; // r6
  float v6; // r4
  int v8; // r2
  float v9; // r7
  float v10; // r10
  float v11; // r4
  float v12; // r6
  float v13; // r7
  float v14; // r9
  int v15; // r4
  float v16; // r11
  float v17; // r0
  int v18; // r6
  int v19; // r7
  float v20; // r10
  float v21; // r6
  int v22; // r7
  float v23; // r10
  int v24; // r8
  float v25; // r9
  int v26; // r9
  int v27; // r7
  int v28; // r4
  int v30; // [sp+8h] [bp-14h]
  int v31; // [sp+8h] [bp-14h]

  v5 = *(float *)(a4 + 48);
  v6 = *(float *)(a4 + 52);
  v8 = (int)a5;
  v9 = (float)((float)(v5 * a5[2]) + (float)(v6 * a5[4])) + *a5;
  v10 = (float)((float)(v5 * a5[3]) + (float)(v6 * a5[5])) + a5[1];
  v11 = *(float *)(a2 + 52);
  v12 = v9 - (float)((float)((float)(a3[2] * *(float *)(a2 + 48)) + (float)(a3[4] * v11)) + *a3);
  v13 = v10 - (float)((float)((float)(*(float *)(a2 + 48) * a3[3]) + (float)(v11 * a3[5])) + a3[1]);
  v14 = (float)(a3[2] * v12) + (float)(a3[3] * v13);
  v15 = *(_DWORD *)(a2 + 280);
  if ( v15 <= 0 )
    v8 = 0;
  v16 = (float)(a3[4] * v12) + (float)(a3[5] * v13);
  if ( v15 > 0 )
  {
    v18 = a2;
    v19 = 0;
    v20 = -3.4028e38;
    v30 = 0;
    do
    {
      if ( v20 < (float)((float)(v14 * *(float *)(v18 + 152)) + (float)(v16 * *(float *)(v18 + 156))) )
        v30 = v19;
      ++v19;
      if ( v20 < (float)((float)(v14 * *(float *)(v18 + 152)) + (float)(v16 * *(float *)(v18 + 156))) )
        v20 = (float)(v14 * *(float *)(v18 + 152)) + (float)(v16 * *(float *)(v18 + 156));
      v18 += 8;
    }
    while ( v19 != v15 );
    v17 = EdgeSeparation(a2, a3, v30, a4, a5);
  }
  else
  {
    v30 = v8;
    v17 = EdgeSeparation(a2, a3, v8, a4, a5);
  }
  v21 = v17;
  if ( v17 <= 0.0 )
  {
    if ( v30 )
      v22 = v30 - 1;
    else
      v22 = v15 - 1;
    v23 = EdgeSeparation(a2, a3, v22, a4, a5);
    if ( v23 > 0.0 )
    {
LABEL_37:
      v21 = v23;
      return LODWORD(v21);
    }
    v24 = v30 + 1;
    if ( v30 + 1 >= v15 )
      v24 = 0;
    v25 = EdgeSeparation(a2, a3, v24, a4, a5);
    if ( v25 <= 0.0 )
    {
      if ( v21 >= v23 || v23 <= v25 )
      {
        if ( v21 >= v25 )
        {
          *a1 = v30;
          return LODWORD(v21);
        }
        v23 = v25;
        v26 = 1;
      }
      else
      {
        v24 = v22;
        v26 = -1;
      }
      v31 = v15 - 1;
      v27 = v15;
      while ( 1 )
      {
        if ( v26 == -1 )
        {
          v28 = v24 <= 0 ? v31 : v24 - 1;
        }
        else
        {
          v28 = v24 + 1;
          if ( v24 + 1 >= v27 )
            v28 = 0;
        }
        v21 = EdgeSeparation(a2, a3, v28, a4, a5);
        if ( v21 > 0.0 )
          break;
        if ( v23 >= v21 )
        {
          *a1 = v24;
          goto LABEL_37;
        }
        v23 = v21;
        v24 = v28;
      }
    }
    else
    {
      v21 = v25;
    }
  }
  return LODWORD(v21);
}


// ===== 7f5920 b2CollidePolygons(b2Manifold *,b2PolygonShape const*,b2XForm const&,b2PolygonShape const*,b2XForm const&) =====
int __fastcall b2CollidePolygons(int a1, int a2, float *a3, int a4, float *a5)
{
  float *v7; // r5
  float v9; // r9
  int result; // r0
  float v11; // r11
  float v12; // r7
  float v13; // r8
  float v14; // r7
  float v15; // r9
  int v16; // r11
  float v17; // r0
  char v18; // r3
  float v19; // r10
  int v20; // r7
  int v21; // r8
  float v22; // r5
  int v23; // r10
  int v24; // r2
  char v25; // r9
  int v26; // r2
  int v27; // r10
  float v28; // r8
  float v29; // r7
  float v30; // r9
  float v31; // r8
  int v32; // r2
  int v33; // r1
  int v34; // r3
  bool v35; // cc
  int v36; // r2
  float v37; // r7
  float *v38; // r8
  float v39; // r9
  float v40; // r0
  float v41; // r11
  float v42; // r0
  float v43; // r7
  float v44; // r10
  float v45; // r8
  unsigned int v46; // r1
  float *v47; // r11
  int v48; // r10
  int v49; // r9
  float v50; // r2
  float v51; // [sp+8h] [bp-BCh]
  float v52; // [sp+8h] [bp-BCh]
  int v53; // [sp+Ch] [bp-B8h]
  float v54; // [sp+10h] [bp-B4h]
  int v55; // [sp+14h] [bp-B0h]
  float v56; // [sp+14h] [bp-B0h]
  float v57; // [sp+14h] [bp-B0h]
  int v58; // [sp+18h] [bp-ACh]
  float v59; // [sp+18h] [bp-ACh]
  int v60; // [sp+1Ch] [bp-A8h]
  unsigned int v61; // [sp+1Ch] [bp-A8h]
  float v62; // [sp+1Ch] [bp-A8h]
  float v63; // [sp+1Ch] [bp-A8h]
  int v64; // [sp+20h] [bp-A4h]
  float v65; // [sp+20h] [bp-A4h]
  float v66; // [sp+24h] [bp-A0h]
  float v67; // [sp+28h] [bp-9Ch]
  float v68; // [sp+2Ch] [bp-98h]
  float v69; // [sp+30h] [bp-94h]
  float v70; // [sp+34h] [bp-90h]
  float v71; // [sp+38h] [bp-8Ch]
  float v72; // [sp+3Ch] [bp-88h]
  float v73; // [sp+40h] [bp-84h]
  float v74; // [sp+44h] [bp-80h]
  float v75; // [sp+48h] [bp-7Ch]
  float v76; // [sp+4Ch] [bp-78h]
  float v77; // [sp+50h] [bp-74h]
  int v78; // [sp+54h] [bp-70h]
  float *v79; // [sp+5Ch] [bp-68h]
  int v80; // [sp+60h] [bp-64h] BYREF
  int v81; // [sp+68h] [bp-5Ch] BYREF
  _DWORD v82[2]; // [sp+78h] [bp-4Ch] BYREF
  int v83; // [sp+80h] [bp-44h] BYREF
  float v84[2]; // [sp+90h] [bp-34h] BYREF
  char v85; // [sp+98h] [bp-2Ch]
  char v86; // [sp+99h] [bp-2Bh]
  char v87; // [sp+9Ah] [bp-2Ah]
  float v88; // [sp+9Ch] [bp-28h]
  float v89; // [sp+A0h] [bp-24h]
  char v90; // [sp+A4h] [bp-20h]
  char v91; // [sp+A5h] [bp-1Fh]
  char v92; // [sp+A6h] [bp-1Eh]
  float v93[2]; // [sp+A8h] [bp-1Ch] BYREF
  float v94; // [sp+B0h] [bp-14h] BYREF
  float v95; // [sp+B4h] [bp-10h]
  int v96; // [sp+B8h] [bp-Ch] BYREF
  int v97; // [sp+BCh] [bp-8h] BYREF

  v97 = 0;
  *(_DWORD *)(a1 + 72) = 0;
  v7 = a3;
  v9 = COERCE_FLOAT(FindMaxSeparation(&v97, a2, a3, a4, a5));
  result = v9 > 0.0;
  if ( v9 <= 0.0 )
  {
    v96 = 0;
    v11 = COERCE_FLOAT(FindMaxSeparation(&v96, a4, a5, a2, v7));
    result = v11 > 0.0;
    if ( v11 <= 0.0 )
    {
      if ( v11 > (float)((float)(v9 * 0.98) + 0.001) )
      {
        v60 = a2;
        v55 = a4;
        v77 = a5[1];
        v76 = *a5;
        v69 = a5[5];
        v68 = a5[4];
        v67 = a5[3];
        v66 = a5[2];
        v75 = v7[1];
        v74 = *v7;
        v73 = v7[5];
        v72 = v7[4];
        v71 = v7[3];
        v64 = v96;
        v78 = 1;
        v70 = v7[2];
      }
      else
      {
        v77 = v7[1];
        v76 = *v7;
        v69 = v7[5];
        v68 = v7[4];
        v67 = v7[3];
        v66 = v7[2];
        v75 = a5[1];
        v74 = *a5;
        v73 = a5[5];
        v72 = a5[4];
        v71 = a5[3];
        v64 = v97;
        v60 = a4;
        v70 = a5[2];
        v55 = a2;
        v78 = 0;
      }
      v12 = *(float *)(v55 + 8 * (v64 + 19) + 4);
      v13 = (float)(*(float *)(v55 + 8 * (v64 + 19)) * v66) + (float)(v68 * v12);
      v14 = (float)(*(float *)(v55 + 8 * (v64 + 19)) * v67) + (float)(v12 * v69);
      v15 = (float)(v70 * v13) + (float)(v71 * v14);
      v16 = *(_DWORD *)(v60 + 280);
      v17 = (float)(v72 * v13) + (float)(v73 * v14);
      if ( v16 <= 0 )
      {
        v25 = 0;
        v24 = 0;
        v18 = 0;
        v23 = 0;
      }
      else
      {
        v18 = 0;
        v19 = 3.4028e38;
        v58 = 0;
        v20 = v60;
        v21 = 0;
        v79 = v7;
        while ( 1 )
        {
          v22 = (float)(v15 * *(float *)(v20 + 152)) + (float)(v17 * *(float *)(v20 + 156));
          if ( v22 < v19 )
            v58 = v21;
          ++v21;
          if ( (float)((float)(v15 * *(float *)(v20 + 152)) + (float)(v17 * *(float *)(v20 + 156))) >= v19 )
            v22 = v19;
          v20 += 8;
          if ( v21 == v16 )
            break;
          v19 = v22;
        }
        v7 = v79;
        v23 = v58 + 1;
        if ( v21 <= v58 + 1 )
          v18 = 0;
        v24 = v58;
        v25 = v58;
        if ( v21 > v58 + 1 )
          v18 = v58 + 1;
        else
          v23 = 0;
      }
      v26 = v24 + 11;
      v27 = v23 + 11;
      v28 = *(float *)(v60 + 8 * v26);
      v29 = *(float *)(v60 + 8 * v26 + 4);
      v84[1] = (float)((float)(v71 * v28) + (float)(v73 * v29)) + v75;
      v87 = 0;
      v84[0] = (float)((float)(v70 * v28) + (float)(v72 * v29)) + v74;
      v85 = v64;
      v86 = v25;
      v30 = *(float *)(v60 + 8 * v27);
      v31 = *(float *)(v60 + 8 * v27 + 4);
      v89 = (float)((float)(v71 * v30) + (float)(v73 * v31)) + v75;
      v88 = (float)((float)(v70 * v30) + (float)(v72 * v31)) + v74;
      v91 = v18;
      v92 = 1;
      v90 = v64;
      v32 = *(_DWORD *)(v55 + 280);
      v33 = v64 + 1;
      v34 = v64 + 11;
      v35 = v64 + 1 < v32;
      if ( v64 + 1 < v32 )
        v33 = v64;
      v36 = v55 + 8 * v34;
      v37 = *(float *)(v36 + 4);
      if ( v35 )
      {
        v36 = v55;
        v38 = (float *)(v33 + 12);
      }
      else
      {
        v38 = (float *)(v55 + 88);
      }
      if ( v35 )
        v38 = (float *)(v36 + 8 * (_DWORD)v38);
      v39 = *(float *)(v55 + 8 * v34);
      v51 = *v38;
      v59 = v38[1];
      v40 = *v38 - v39;
      v94 = (float)(v40 * v66) + (float)(v68 * (float)(v59 - v37));
      v95 = (float)(v40 * v67) + (float)((float)(v59 - v37) * v69);
      b2Vec2::Normalize((b2Vec2 *)&v94);
      v41 = (float)((float)(v39 * v66) + (float)(v68 * v37)) + v76;
      v42 = (float)((float)(v39 * v67) + (float)(v37 * v69)) + v77;
      v43 = v95;
      v44 = v94;
      LODWORD(v45) = LODWORD(v94) + 0x80000000;
      v65 = (float)(v95 * v41) + (float)(COERCE_FLOAT(LODWORD(v94) + 0x80000000) * v42);
      v61 = LODWORD(v95) + 0x80000000;
      LODWORD(v93[0]) = LODWORD(v94) + 0x80000000;
      LODWORD(v93[1]) = LODWORD(v95) + 0x80000000;
      result = ClipSegmentToLine(
                 v82,
                 (int)v84,
                 v93,
                 COERCE_FLOAT(COERCE_INT((float)(v94 * v41) + (float)(v95 * v42)) + 0x80000000));
      if ( result > 1 )
      {
        result = ClipSegmentToLine(
                   &v80,
                   (int)v82,
                   &v94,
                   (float)(v44 * (float)((float)((float)(v51 * v66) + (float)(v68 * v59)) + v76))
                 + (float)(v43 * (float)((float)((float)(v51 * v67) + (float)(v59 * v69)) + v77)));
        if ( result > 1 )
        {
          v47 = (float *)&v81;
          if ( v78 )
          {
            *(float *)(a1 + 68) = v44;
            v46 = v61;
          }
          else
          {
            *(float *)(a1 + 68) = v45;
            *(float *)(a1 + 64) = v43;
          }
          if ( v78 )
            *(_DWORD *)(a1 + 64) = v46;
          v48 = 0;
          do
          {
            result = (float)((float)((float)(v43 * *(v47 - 2)) + (float)(v45 * *(v47 - 1))) - v65) <= 0.0;
            v49 = a1 + 32 * v48;
            if ( (float)((float)((float)(v43 * *(v47 - 2)) + (float)(v45 * *(v47 - 1))) - v65) <= 0.0 )
            {
              *(float *)(a1 + 32 * v48 + 16) = (float)((float)(v43 * *(v47 - 2)) + (float)(v45 * *(v47 - 1))) - v65;
              v56 = *(v47 - 2) - *v7;
              v62 = *(v47 - 1) - v7[1];
              v54 = (float)(v56 * v7[2]) + (float)(v62 * v7[3]);
              *(float *)(v49 + 4) = (float)(v56 * v7[4]) + (float)(v62 * v7[5]);
              *(float *)(a1 + 32 * v48) = v54;
              v57 = *(v47 - 2) - *a5;
              v63 = *(v47 - 1) - a5[1];
              v53 = 4 * v48 + 1;
              v52 = (float)(v57 * a5[2]) + (float)(v63 * a5[3]);
              ++v48;
              *(float *)(a1 + 8 * v53 + 4) = (float)(v57 * a5[4]) + (float)(v63 * a5[5]);
              v50 = *v47;
              *(float *)(a1 + 8 * v53) = v52;
              *(float *)(v49 + 28) = v50;
              result = v78;
              *(_BYTE *)(v49 + 31) = v78;
            }
            v47 += 3;
          }
          while ( v47 != (float *)&v83 );
          *(_DWORD *)(a1 + 72) = v48;
        }
      }
    }
  }
  return result;
}


// ===== 7f6210 b2ContactSolver::InitVelocityConstraints(b2TimeStep const&) =====
float __fastcall b2ContactSolver::InitVelocityConstraints(float result, int a2)
{
  int v2; // r2
  float v3; // r12
  int v4; // r11
  int i; // r3
  int v6; // r7
  int v7; // r1
  float *v8; // r6
  float *v9; // r5
  float *v10; // r4
  int v11; // r9
  float v12; // r0
  float v13; // r10
  float v14; // r0
  float v15; // r3
  float v16; // r10
  float v17; // r8
  float v19; // [sp+Ch] [bp-28h]
  float v20; // [sp+10h] [bp-24h]
  float v21; // [sp+14h] [bp-20h]
  float v22; // [sp+18h] [bp-1Ch]
  float v23; // [sp+20h] [bp-14h]
  float v24; // [sp+24h] [bp-10h]
  int v25; // [sp+2Ch] [bp-8h]

  v2 = *(_DWORD *)(LODWORD(result) + 28);
  v3 = result;
  if ( v2 > 0 )
  {
    v4 = 0;
    for ( i = 0; i < v2; ++i )
    {
      v6 = *(_DWORD *)(LODWORD(v3) + 24) + v4;
      v7 = *(unsigned __int8 *)(a2 + 16);
      v8 = *(float **)(v6 + 140);
      v9 = *(float **)(v6 + 144);
      v20 = *(float *)(v6 + 128);
      v22 = v8[30];
      v24 = v8[32];
      v21 = v9[30];
      v23 = v9[32];
      v19 = *(float *)(v6 + 132);
      LODWORD(result) = LODWORD(v20) + 0x80000000;
      if ( *(_BYTE *)(a2 + 16) )
      {
        if ( *(int *)(v6 + 156) > 0 )
        {
          v10 = (float *)(*(_DWORD *)(LODWORD(v3) + 24) + v4);
          v11 = 0;
          v25 = i;
          do
          {
            ++v11;
            v12 = v10[8] * *(float *)(a2 + 8);
            v10[8] = v12;
            v13 = v12;
            v14 = v10[9] * *(float *)(a2 + 8);
            v10[9] = v14;
            v15 = v13 * v19;
            v16 = (float)(v20 * v13) + (float)(v14 * v19);
            v17 = v15 + (float)(v14 * COERCE_FLOAT(LODWORD(v20) + 0x80000000));
            v8[18] = v8[18] - (float)(v24 * (float)((float)(v17 * v10[4]) - (float)(v16 * v10[5])));
            v8[16] = v8[16] - (float)(v22 * v16);
            v8[17] = v8[17] - (float)(v22 * v17);
            v9[18] = v9[18] + (float)(v23 * (float)((float)(v17 * v10[6]) - (float)(v16 * v10[7])));
            v9[16] = v9[16] + (float)(v21 * v16);
            result = v9[17] + (float)(v21 * v17);
            v9[17] = result;
            v10 += 16;
          }
          while ( *(_DWORD *)(v6 + 156) > v11 );
          i = v25;
          v2 = *(_DWORD *)(LODWORD(v3) + 28);
        }
      }
      else
      {
        result = *(float *)(v6 + 156);
        if ( SLODWORD(result) > 0 )
        {
          do
          {
            ++v7;
            *(_DWORD *)(v6 + 32) = 0;
            *(_DWORD *)(v6 + 36) = 0;
            v6 += 64;
          }
          while ( v7 < SLODWORD(result) );
          v2 = *(_DWORD *)(LODWORD(v3) + 28);
        }
      }
      v4 += 160;
    }
  }
  return result;
}


// ===== 7f64a8 b2ContactSolver::SolveVelocityConstraints(void) =====
float __fastcall b2ContactSolver::SolveVelocityConstraints(float this)
{
  int v1; // r3
  float v2; // r7
  float v3; // r11
  float v4; // r9
  float v5; // r6
  float v6; // r10
  float v7; // r8
  int v8; // r5
  float v9; // r4
  float v10; // r0
  float v11; // r4
  float v12; // r0
  float *v13; // r4
  float v14; // r8
  float v15; // r10
  float v16; // r5
  float v17; // r5
  float v18; // r0
  bool v19; // cc
  float v20; // [sp+Ch] [bp-60h]
  float v21; // [sp+10h] [bp-5Ch]
  float v22; // [sp+10h] [bp-5Ch]
  int v23; // [sp+14h] [bp-58h]
  int v24; // [sp+14h] [bp-58h]
  float v25; // [sp+18h] [bp-54h]
  float v26; // [sp+18h] [bp-54h]
  float v27; // [sp+1Ch] [bp-50h]
  float v28; // [sp+1Ch] [bp-50h]
  float v29; // [sp+20h] [bp-4Ch]
  float v30; // [sp+20h] [bp-4Ch]
  float v31; // [sp+24h] [bp-48h]
  float v32; // [sp+24h] [bp-48h]
  float v33; // [sp+28h] [bp-44h]
  float v34; // [sp+28h] [bp-44h]
  float v35; // [sp+2Ch] [bp-40h]
  float v36; // [sp+30h] [bp-3Ch]
  float v37; // [sp+34h] [bp-38h]
  float *v38; // [sp+38h] [bp-34h]
  float *v39; // [sp+3Ch] [bp-30h]
  int v40; // [sp+40h] [bp-2Ch]
  int v41; // [sp+40h] [bp-2Ch]
  float v42; // [sp+44h] [bp-28h]
  float v43; // [sp+48h] [bp-24h]
  float v44; // [sp+4Ch] [bp-20h]
  int v45; // [sp+50h] [bp-1Ch]
  int v46; // [sp+54h] [bp-18h]
  float v47; // [sp+58h] [bp-14h]
  float v48; // [sp+5Ch] [bp-10h]
  float *v49; // [sp+60h] [bp-Ch]
  int v50; // [sp+64h] [bp-8h]

  v48 = this;
  if ( *(int *)(LODWORD(this) + 28) > 0 )
  {
    v45 = 0;
    v46 = 0;
    do
    {
      v1 = *(_DWORD *)(LODWORD(v48) + 24) + v45;
      v40 = *(_DWORD *)(v1 + 156);
      v39 = *(float **)(v1 + 140);
      v38 = *(float **)(v1 + 144);
      v25 = *(float *)(v1 + 128);
      v2 = v39[18];
      v3 = v39[17];
      v4 = v39[16];
      v5 = v38[18];
      v6 = v38[17];
      v7 = v38[16];
      v37 = v39[30];
      v44 = v39[32];
      v36 = v38[30];
      v43 = v38[32];
      v35 = *(float *)(v1 + 132);
      LODWORD(v42) = LODWORD(v25) + 0x80000000;
      v47 = *(float *)(v1 + 148);
      if ( v40 > 0 )
      {
        v8 = *(_DWORD *)(LODWORD(v48) + 24) + v45;
        v23 = 0;
        v49 = (float *)v8;
        v20 = v38[16];
        v50 = v8;
        do
        {
          v31 = *(float *)(v8 + 28);
          v33 = *(float *)(v8 + 24);
          v27 = *(float *)(v8 + 20);
          v29 = *(float *)(v8 + 16);
          v9 = *(float *)(v8 + 32);
          v21 = v9
              + (float)(COERCE_FLOAT(*(_DWORD *)(v8 + 44) + 0x80000000)
                      * (float)((float)((float)(v25
                                              * (float)((float)((float)(v20
                                                                      + (float)(COERCE_FLOAT(LODWORD(v5) + 0x80000000)
                                                                              * v31))
                                                              - v4)
                                                      - (float)(COERCE_FLOAT(LODWORD(v2) + 0x80000000) * v27)))
                                      + (float)(v35
                                              * (float)((float)((float)(v6 + (float)(v5 * v33)) - v3) - (float)(v2 * v29))))
                              - *(float *)(v8 + 60)));
          if ( v21 <= 0.0 )
            v21 = 0.0;
          v10 = v21 - v9;
          v11 = v25 * (float)(v21 - v9);
          v12 = v10 * v35;
          v4 = v4 - (float)(v37 * v11);
          v3 = v3 - (float)(v37 * v12);
          v2 = v2 - (float)(v44 * (float)((float)(v29 * v12) - (float)(v27 * v11)));
          v20 = v20 + (float)(v36 * v11);
          v6 = v6 + (float)(v36 * v12);
          ++v23;
          v5 = v5 + (float)(v43 * (float)((float)(v33 * v12) - (float)(v31 * v11)));
          *(float *)(v8 + 32) = v21;
          v8 += 64;
        }
        while ( v23 < v40 );
        v13 = v49;
        v24 = 0;
        v22 = v6;
        v41 = *(_DWORD *)(v50 + 156);
        do
        {
          v30 = v13[7];
          v32 = v13[6];
          v26 = v13[5];
          v28 = v13[4];
          v14 = v47 * v13[8];
          LODWORD(v15) = LODWORD(v14) + 0x80000000;
          v34 = v13[9];
          v16 = v34
              + (float)(COERCE_FLOAT(
                          COERCE_INT(
                            (float)(v35
                                  * (float)((float)((float)(v20 + (float)(COERCE_FLOAT(LODWORD(v5) + 0x80000000) * v30))
                                                  - v4)
                                          - (float)(COERCE_FLOAT(LODWORD(v2) + 0x80000000) * v26)))
                          + (float)(v42 * (float)((float)((float)(v22 + (float)(v5 * v32)) - v3) - (float)(v2 * v28))))
                        + 0x80000000)
                      * v13[12]);
          if ( v14 <= v16 )
            v16 = v47 * v13[8];
          if ( v15 <= v16 )
            v15 = v16;
          v17 = (float)(v15 - v34) * v35;
          v18 = (float)(v15 - v34) * v42;
          v4 = v4 - (float)(v37 * v17);
          v3 = v3 - (float)(v37 * v18);
          v2 = v2 - (float)(v44 * (float)((float)(v28 * v18) - (float)(v26 * v17)));
          v20 = v20 + (float)(v36 * v17);
          v22 = v22 + (float)(v36 * v18);
          ++v24;
          this = v5 + (float)(v43 * (float)((float)(v32 * v18) - (float)(v30 * v17)));
          v5 = v5 + (float)(v43 * (float)((float)(v32 * (float)((float)(v15 - v34) * v42)) - (float)(v30 * v17)));
          v13[9] = v15;
          v13 += 16;
        }
        while ( v41 > v24 );
        v7 = v20;
        v6 = v22;
      }
      v39[18] = v2;
      v39[17] = v3;
      v39[16] = v4;
      v38[18] = v5;
      v38[17] = v6;
      v38[16] = v7;
      v19 = *(_DWORD *)(LODWORD(v48) + 28) <= ++v46;
      v45 += 160;
    }
    while ( !v19 );
  }
  return this;
}


// ===== 7f6b20 b2ContactSolver::FinalizeVelocityConstraints(void) =====
int __fastcall b2ContactSolver::FinalizeVelocityConstraints(int this)
{
  int v1; // r1
  int v2; // r5
  int i; // r6
  int v4; // r12
  int v5; // r2
  int v6; // r3
  int v7; // r1
  int v8; // r4

  v1 = *(_DWORD *)(this + 28);
  if ( v1 > 0 )
  {
    v2 = 0;
    for ( i = 0; i < v1; ++i )
    {
      v4 = *(_DWORD *)(this + 24) + v2;
      v5 = *(_DWORD *)(v4 + 136);
      if ( *(int *)(v4 + 156) > 0 )
      {
        v6 = *(_DWORD *)(this + 24) + v2;
        v7 = 0;
        do
        {
          ++v7;
          *(_DWORD *)(v5 + 20) = *(_DWORD *)(v6 + 32);
          v8 = *(_DWORD *)(v6 + 36);
          v6 += 64;
          *(_DWORD *)(v5 + 24) = v8;
          v5 += 32;
        }
        while ( *(_DWORD *)(v4 + 156) > v7 );
        v1 = *(_DWORD *)(this + 28);
      }
      v2 += 160;
    }
  }
  return this;
}


// ===== 7f6b9c b2ContactSolver::SolvePositionConstraints(float) =====
bool __fastcall b2ContactSolver::SolvePositionConstraints(b2ContactSolver *this, float a2)
{
  int v2; // r6
  int v4; // r7
  float *v5; // r5
  float *v6; // r4
  int v7; // r6
  int v8; // r8
  float v9; // r0
  float v10; // r11
  float v11; // r0
  float v12; // r9
  float v13; // r7
  float v14; // r7
  float v15; // r10
  float v16; // r7
  float v17; // r0
  float v18; // r7
  float v19; // r10
  bool v20; // cc
  float v21; // [sp+8h] [bp-3Ch]
  float v22; // [sp+Ch] [bp-38h]
  float v23; // [sp+10h] [bp-34h]
  float v24; // [sp+14h] [bp-30h]
  float v25; // [sp+18h] [bp-2Ch]
  float v26; // [sp+1Ch] [bp-28h]
  int v27; // [sp+20h] [bp-24h]
  float v28; // [sp+24h] [bp-20h]
  int v29; // [sp+28h] [bp-1Ch]
  float v30; // [sp+2Ch] [bp-18h]
  float v31; // [sp+30h] [bp-14h]
  int v32; // [sp+34h] [bp-10h]

  v2 = *((_DWORD *)this + 7);
  if ( v2 <= 0 )
    return 1;
  v28 = 0.0;
  v27 = 0;
  v29 = 0;
  do
  {
    v4 = *((_DWORD *)this + 6) + v27;
    v5 = *(float **)(v4 + 140);
    v6 = *(float **)(v4 + 144);
    v26 = v5[29] * v5[30];
    v31 = v5[29] * v5[32];
    v25 = v6[29] * v6[30];
    v30 = v6[29] * v6[32];
    v24 = *(float *)(v4 + 132);
    v23 = *(float *)(v4 + 128);
    if ( *(int *)(v4 + 156) > 0 )
    {
      v7 = *((_DWORD *)this + 6) + v27;
      v8 = 0;
      v32 = v7;
      do
      {
        v9 = *(float *)v7 - v5[7];
        v10 = (float)(v9 * v5[3]) + (float)((float)(*(float *)(v7 + 4) - v5[8]) * v5[5]);
        v22 = (float)(v9 * v5[4]) + (float)((float)(*(float *)(v7 + 4) - v5[8]) * v5[6]);
        v11 = *(float *)(v7 + 8) - v6[7];
        v12 = (float)(v11 * v6[3]) + (float)((float)(*(float *)(v7 + 12) - v6[8]) * v6[5]);
        v21 = (float)(v11 * v6[4]) + (float)((float)(*(float *)(v7 + 12) - v6[8]) * v6[6]);
        v13 = (float)((float)(v23 * (float)((float)(v12 + v6[11]) - (float)(v10 + v5[11])))
                    + (float)(v24 * (float)((float)(v21 + v6[12]) - (float)(v22 + v5[12]))))
            + *(float *)(v7 + 56);
        if ( v28 >= v13 )
          v28 = (float)((float)(v23 * (float)((float)(v12 + v6[11]) - (float)(v10 + v5[11])))
                      + (float)(v24 * (float)((float)(v21 + v6[12]) - (float)(v22 + v5[12]))))
              + *(float *)(v7 + 56);
        v14 = v13 + 0.005;
        if ( v14 < 0.0 )
        {
          if ( v14 < -0.2 )
            v14 = -0.2;
        }
        else
        {
          v14 = 0.0;
        }
        v15 = *(float *)(v7 + 40);
        ++v8;
        v16 = v15 + (float)(COERCE_FLOAT(*(_DWORD *)(v7 + 52) + 0x80000000) * (float)(a2 * v14));
        if ( v16 <= 0.0 )
          v16 = 0.0;
        *(float *)(v7 + 40) = v16;
        v17 = v16 - v15;
        v18 = v23 * (float)(v16 - v15);
        v19 = v24 * v17;
        v5[11] = v5[11] - (float)(v26 * v18);
        v5[12] = v5[12] - (float)(v26 * (float)(v24 * v17));
        v5[14] = v5[14] - (float)(v31 * (float)((float)(v10 * (float)(v24 * v17)) - (float)(v22 * v18)));
        b2Body::SynchronizeTransform((b2Body *)v5);
        v6[11] = v6[11] + (float)(v25 * v18);
        v6[12] = v6[12] + (float)(v25 * v19);
        v6[14] = v6[14] + (float)(v30 * (float)((float)(v12 * v19) - (float)(v21 * v18)));
        b2Body::SynchronizeTransform((b2Body *)v6);
        v7 += 64;
      }
      while ( *(_DWORD *)(v32 + 156) > v8 );
      v2 = *((_DWORD *)this + 7);
    }
    v20 = v2 <= ++v29;
    v27 += 160;
  }
  while ( !v20 );
  return v28 >= -0.0075;
}


// ===== 7f7020 b2ContactSolver::~b2ContactSolver() =====
void __fastcall b2ContactSolver::~b2ContactSolver(b2StackAllocator **this)
{
  b2StackAllocator::Free(*(this + 5), *(this + 6));
}


// ===== 7f703c b2ContactSolver::~b2ContactSolver() =====
void __fastcall b2ContactSolver::~b2ContactSolver(b2StackAllocator **this)
{
  b2StackAllocator::Free(*(this + 5), *(this + 6));
}


// ===== 7f7058 b2ContactSolver::b2ContactSolver(b2TimeStep const&,b2Contact **,int,b2StackAllocator *) =====
_DWORD *__fastcall b2ContactSolver::b2ContactSolver(_DWORD *a1, int *a2, int a3, int a4, b2StackAllocator *a5)
{
  int v7; // r0
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v11; // r1
  int v12; // r3
  int v13; // r2
  int v14; // r4
  float *v15; // r5
  float *v16; // r6
  int v17; // r0
  int v18; // r8
  int v19; // r3
  int v20; // r7
  int v21; // r4
  float v22; // r0
  float v23; // r11
  float v24; // r0
  float v25; // r9
  float v26; // r0
  float v27; // r10
  float v28; // r0
  float v29; // r8
  float v30; // r9
  float v32; // [sp+8h] [bp-84h]
  float v33; // [sp+Ch] [bp-80h]
  int v34; // [sp+10h] [bp-7Ch]
  float v35; // [sp+14h] [bp-78h]
  int v36; // [sp+18h] [bp-74h]
  float v37; // [sp+1Ch] [bp-70h]
  int v38; // [sp+20h] [bp-6Ch]
  float v39; // [sp+24h] [bp-68h]
  float v40; // [sp+28h] [bp-64h]
  float v41; // [sp+2Ch] [bp-60h]
  float v42; // [sp+30h] [bp-5Ch]
  float v43; // [sp+34h] [bp-58h]
  int v44; // [sp+38h] [bp-54h]
  int v45; // [sp+3Ch] [bp-50h]
  float v46; // [sp+48h] [bp-44h]
  float v47; // [sp+4Ch] [bp-40h]
  float v48; // [sp+50h] [bp-3Ch]
  float v49; // [sp+54h] [bp-38h]
  float v50; // [sp+58h] [bp-34h]
  float v51; // [sp+5Ch] [bp-30h]
  int v52; // [sp+60h] [bp-2Ch]
  int v54; // [sp+68h] [bp-24h]
  int v55; // [sp+6Ch] [bp-20h]
  float v56; // [sp+74h] [bp-18h]
  int v57; // [sp+78h] [bp-14h]
  int v58; // [sp+7Ch] [bp-10h]

  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  *a1 = v7;
  a1[1] = v8;
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = a2[4];
  v11 = 0;
  a1[5] = a5;
  a1[7] = 0;
  if ( a4 <= 0 )
  {
    a1[6] = b2StackAllocator::Allocate(a5, 0);
  }
  else
  {
    v12 = 0;
    do
    {
      v13 = *(_DWORD *)(a3 + 4 * v12++);
      v11 += *(_DWORD *)(v13 + 8);
      a1[7] = v11;
    }
    while ( v12 != a4 );
    v57 = 0;
    a1[6] = b2StackAllocator::Allocate(a5, 160 * v11);
    v58 = 0;
    do
    {
      v14 = *(_DWORD *)(a3 + 4 * v57);
      v52 = *(_DWORD *)(v14 + 8);
      v15 = *(float **)(*(_DWORD *)(v14 + 56) + 12);
      v16 = *(float **)(*(_DWORD *)(v14 + 52) + 12);
      v17 = (**(int (__fastcall ***)(int))v14)(v14);
      v54 = *(_DWORD *)(v14 + 64);
      v55 = *(_DWORD *)(v14 + 60);
      v51 = v16[17];
      v50 = v16[16];
      v49 = v15[17];
      v48 = v15[16];
      v47 = v16[18];
      v46 = v15[18];
      if ( v52 > 0 )
      {
        v45 = 160 * v58;
        v36 = v17;
        v44 = 0;
        LODWORD(v56) = LODWORD(v47) + 0x80000000;
        do
        {
          v33 = *(float *)(v36 + 68);
          v18 = a1[6] + v45;
          v37 = *(float *)(v36 + 64);
          *(_DWORD *)(v18 + 140) = v16;
          *(_DWORD *)(v18 + 144) = v15;
          *(_DWORD *)(v18 + 136) = v36;
          *(float *)(v18 + 132) = v33;
          *(float *)(v18 + 128) = v37;
          v19 = *(_DWORD *)(v36 + 72);
          *(_DWORD *)(v18 + 148) = v55;
          *(_DWORD *)(v18 + 156) = v19;
          *(_DWORD *)(v18 + 152) = v54;
          if ( v19 > 0 )
          {
            v20 = v36;
            v21 = v18;
            v38 = 0;
            v34 = v18;
            do
            {
              *(_DWORD *)(v21 + 32) = *(_DWORD *)(v20 + 20);
              *(_DWORD *)(v21 + 36) = *(_DWORD *)(v20 + 24);
              v35 = *(float *)(v20 + 16);
              *(float *)(v21 + 56) = v35;
              *(_DWORD *)(v21 + 40) = 0;
              *(_DWORD *)v21 = *(_DWORD *)v20;
              *(_DWORD *)(v21 + 4) = *(_DWORD *)(v20 + 4);
              *(_DWORD *)(v21 + 8) = *(_DWORD *)(v20 + 8);
              *(_DWORD *)(v21 + 12) = *(_DWORD *)(v20 + 12);
              v22 = *(float *)v20 - v16[7];
              v23 = (float)(v22 * v16[3]) + (float)((float)(*(float *)(v20 + 4) - v16[8]) * v16[5]);
              v24 = (float)(v22 * v16[4]) + (float)((float)(*(float *)(v20 + 4) - v16[8]) * v16[6]);
              *(float *)(v21 + 16) = v23;
              *(float *)(v21 + 20) = v24;
              v25 = v24;
              v26 = *(float *)(v20 + 8) - v15[7];
              v32 = *(float *)(v20 + 12) - v15[8];
              v27 = (float)(v26 * v15[3]) + (float)(v32 * v15[5]);
              v28 = (float)(v26 * v15[4]) + (float)(v32 * v15[6]);
              v29 = (float)((float)(*(float *)(v20 + 8) - v15[7]) * v15[4]) + (float)(v32 * v15[6]);
              *(float *)(v21 + 28) = v28;
              *(float *)(v21 + 24) = v27;
              v39 = (float)(v23 * v23) + (float)(v25 * v25);
              v40 = (float)(v27 * v27) + (float)(v28 * v28);
              v41 = v39
                  - (float)((float)((float)(v37 * v23) + (float)(v33 * v25))
                          * (float)((float)(v37 * v23) + (float)(v33 * v25)));
              v42 = v40
                  - (float)((float)((float)(v37 * v27) + (float)(v33 * v29))
                          * (float)((float)(v37 * v27) + (float)(v33 * v29)));
              *(float *)(v21 + 44) = 1.0
                                   / (float)((float)((float)(v41 * v16[32]) + (float)(v42 * v15[32]))
                                           + (float)(v16[30] + v15[30]));
              *(float *)(v21 + 52) = 1.0
                                   / (float)((float)((float)(v41 * (float)(v16[29] * v16[32]))
                                                   + (float)(v42 * (float)(v15[29] * v15[32])))
                                           + (float)((float)(v16[29] * v16[30]) + (float)(v15[29] * v15[30])));
              LODWORD(v43) = LODWORD(v37) + 0x80000000;
              *(float *)(v21 + 48) = 1.0
                                   / (float)((float)((float)((float)(v39
                                                                   - (float)((float)((float)(v33 * v23)
                                                                                   + (float)(v43 * v25))
                                                                           * (float)((float)(v33 * v23)
                                                                                   + (float)(v43 * v25))))
                                                           * v16[32])
                                                   + (float)((float)(v40
                                                                   - (float)((float)((float)(v33 * v27)
                                                                                   + (float)(v43 * v29))
                                                                           * (float)((float)(v33 * v27)
                                                                                   + (float)(v43 * v29))))
                                                           * v15[32]))
                                           + (float)(v16[30] + v15[30]));
              *(_DWORD *)(v21 + 60) = 0;
              if ( v35 > 0.0 )
                *(float *)(v21 + 60) = v35 * -60.0;
              v30 = (float)(v48 + (float)(COERCE_FLOAT(LODWORD(v46) + 0x80000000) * *(float *)(v21 + 28))) - v50;
              if ( (float)((float)((float)(v30 - (float)(v56 * *(float *)(v21 + 20))) * *(float *)(v34 + 128))
                         + (float)((float)((float)((float)(v49 + (float)(v46 * *(float *)(v21 + 24))) - v51)
                                         - (float)(v47 * *(float *)(v21 + 16)))
                                 * *(float *)(v34 + 132))) < -1.0 )
                *(float *)(v21 + 60) = *(float *)(v21 + 60)
                                     + (float)(COERCE_FLOAT(*(_DWORD *)(v34 + 152) + 0x80000000)
                                             * (float)((float)((float)(v30 - (float)(v56 * *(float *)(v21 + 20)))
                                                             * *(float *)(v34 + 128))
                                                     + (float)((float)((float)((float)(v49
                                                                                     + (float)(v46 * *(float *)(v21 + 24)))
                                                                             - v51)
                                                                     - (float)(v47 * *(float *)(v21 + 16)))
                                                             * *(float *)(v34 + 132))));
              v20 += 32;
              ++v38;
              v21 += 64;
            }
            while ( *(_DWORD *)(v34 + 156) > v38 );
          }
          ++v44;
          v36 += 76;
          v45 += 160;
        }
        while ( v44 != v52 );
        v58 += v44;
      }
      ++v57;
    }
    while ( v57 != a4 );
  }
  return a1;
}


// ===== 7f7838 b2ContactSolver::b2ContactSolver(b2TimeStep const&,b2Contact **,int,b2StackAllocator *) =====
_DWORD *__fastcall b2ContactSolver::b2ContactSolver(_DWORD *a1, int *a2, int a3, int a4, b2StackAllocator *a5)
{
  int v7; // r0
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v11; // r1
  int v12; // r3
  int v13; // r2
  int v14; // r4
  float *v15; // r5
  float *v16; // r6
  int v17; // r0
  int v18; // r8
  int v19; // r3
  int v20; // r7
  int v21; // r4
  float v22; // r0
  float v23; // r11
  float v24; // r0
  float v25; // r9
  float v26; // r0
  float v27; // r10
  float v28; // r0
  float v29; // r8
  float v30; // r9
  float v32; // [sp+8h] [bp-84h]
  float v33; // [sp+Ch] [bp-80h]
  int v34; // [sp+10h] [bp-7Ch]
  float v35; // [sp+14h] [bp-78h]
  int v36; // [sp+18h] [bp-74h]
  float v37; // [sp+1Ch] [bp-70h]
  int v38; // [sp+20h] [bp-6Ch]
  float v39; // [sp+24h] [bp-68h]
  float v40; // [sp+28h] [bp-64h]
  float v41; // [sp+2Ch] [bp-60h]
  float v42; // [sp+30h] [bp-5Ch]
  float v43; // [sp+34h] [bp-58h]
  int v44; // [sp+38h] [bp-54h]
  int v45; // [sp+3Ch] [bp-50h]
  float v46; // [sp+48h] [bp-44h]
  float v47; // [sp+4Ch] [bp-40h]
  float v48; // [sp+50h] [bp-3Ch]
  float v49; // [sp+54h] [bp-38h]
  float v50; // [sp+58h] [bp-34h]
  float v51; // [sp+5Ch] [bp-30h]
  int v52; // [sp+60h] [bp-2Ch]
  int v54; // [sp+68h] [bp-24h]
  int v55; // [sp+6Ch] [bp-20h]
  float v56; // [sp+74h] [bp-18h]
  int v57; // [sp+78h] [bp-14h]
  int v58; // [sp+7Ch] [bp-10h]

  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  *a1 = v7;
  a1[1] = v8;
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = a2[4];
  v11 = 0;
  a1[5] = a5;
  a1[7] = 0;
  if ( a4 <= 0 )
  {
    a1[6] = b2StackAllocator::Allocate(a5, 0);
  }
  else
  {
    v12 = 0;
    do
    {
      v13 = *(_DWORD *)(a3 + 4 * v12++);
      v11 += *(_DWORD *)(v13 + 8);
      a1[7] = v11;
    }
    while ( v12 != a4 );
    v57 = 0;
    a1[6] = b2StackAllocator::Allocate(a5, 160 * v11);
    v58 = 0;
    do
    {
      v14 = *(_DWORD *)(a3 + 4 * v57);
      v52 = *(_DWORD *)(v14 + 8);
      v15 = *(float **)(*(_DWORD *)(v14 + 56) + 12);
      v16 = *(float **)(*(_DWORD *)(v14 + 52) + 12);
      v17 = (**(int (__fastcall ***)(int))v14)(v14);
      v54 = *(_DWORD *)(v14 + 64);
      v55 = *(_DWORD *)(v14 + 60);
      v51 = v16[17];
      v50 = v16[16];
      v49 = v15[17];
      v48 = v15[16];
      v47 = v16[18];
      v46 = v15[18];
      if ( v52 > 0 )
      {
        v45 = 160 * v58;
        v36 = v17;
        v44 = 0;
        LODWORD(v56) = LODWORD(v47) + 0x80000000;
        do
        {
          v33 = *(float *)(v36 + 68);
          v18 = a1[6] + v45;
          v37 = *(float *)(v36 + 64);
          *(_DWORD *)(v18 + 140) = v16;
          *(_DWORD *)(v18 + 144) = v15;
          *(_DWORD *)(v18 + 136) = v36;
          *(float *)(v18 + 132) = v33;
          *(float *)(v18 + 128) = v37;
          v19 = *(_DWORD *)(v36 + 72);
          *(_DWORD *)(v18 + 148) = v55;
          *(_DWORD *)(v18 + 156) = v19;
          *(_DWORD *)(v18 + 152) = v54;
          if ( v19 > 0 )
          {
            v20 = v36;
            v21 = v18;
            v38 = 0;
            v34 = v18;
            do
            {
              *(_DWORD *)(v21 + 32) = *(_DWORD *)(v20 + 20);
              *(_DWORD *)(v21 + 36) = *(_DWORD *)(v20 + 24);
              v35 = *(float *)(v20 + 16);
              *(float *)(v21 + 56) = v35;
              *(_DWORD *)(v21 + 40) = 0;
              *(_DWORD *)v21 = *(_DWORD *)v20;
              *(_DWORD *)(v21 + 4) = *(_DWORD *)(v20 + 4);
              *(_DWORD *)(v21 + 8) = *(_DWORD *)(v20 + 8);
              *(_DWORD *)(v21 + 12) = *(_DWORD *)(v20 + 12);
              v22 = *(float *)v20 - v16[7];
              v23 = (float)(v22 * v16[3]) + (float)((float)(*(float *)(v20 + 4) - v16[8]) * v16[5]);
              v24 = (float)(v22 * v16[4]) + (float)((float)(*(float *)(v20 + 4) - v16[8]) * v16[6]);
              *(float *)(v21 + 16) = v23;
              *(float *)(v21 + 20) = v24;
              v25 = v24;
              v26 = *(float *)(v20 + 8) - v15[7];
              v32 = *(float *)(v20 + 12) - v15[8];
              v27 = (float)(v26 * v15[3]) + (float)(v32 * v15[5]);
              v28 = (float)(v26 * v15[4]) + (float)(v32 * v15[6]);
              v29 = (float)((float)(*(float *)(v20 + 8) - v15[7]) * v15[4]) + (float)(v32 * v15[6]);
              *(float *)(v21 + 28) = v28;
              *(float *)(v21 + 24) = v27;
              v39 = (float)(v23 * v23) + (float)(v25 * v25);
              v40 = (float)(v27 * v27) + (float)(v28 * v28);
              v41 = v39
                  - (float)((float)((float)(v37 * v23) + (float)(v33 * v25))
                          * (float)((float)(v37 * v23) + (float)(v33 * v25)));
              v42 = v40
                  - (float)((float)((float)(v37 * v27) + (float)(v33 * v29))
                          * (float)((float)(v37 * v27) + (float)(v33 * v29)));
              *(float *)(v21 + 44) = 1.0
                                   / (float)((float)((float)(v41 * v16[32]) + (float)(v42 * v15[32]))
                                           + (float)(v16[30] + v15[30]));
              *(float *)(v21 + 52) = 1.0
                                   / (float)((float)((float)(v41 * (float)(v16[29] * v16[32]))
                                                   + (float)(v42 * (float)(v15[29] * v15[32])))
                                           + (float)((float)(v16[29] * v16[30]) + (float)(v15[29] * v15[30])));
              LODWORD(v43) = LODWORD(v37) + 0x80000000;
              *(float *)(v21 + 48) = 1.0
                                   / (float)((float)((float)((float)(v39
                                                                   - (float)((float)((float)(v33 * v23)
                                                                                   + (float)(v43 * v25))
                                                                           * (float)((float)(v33 * v23)
                                                                                   + (float)(v43 * v25))))
                                                           * v16[32])
                                                   + (float)((float)(v40
                                                                   - (float)((float)((float)(v33 * v27)
                                                                                   + (float)(v43 * v29))
                                                                           * (float)((float)(v33 * v27)
                                                                                   + (float)(v43 * v29))))
                                                           * v15[32]))
                                           + (float)(v16[30] + v15[30]));
              *(_DWORD *)(v21 + 60) = 0;
              if ( v35 > 0.0 )
                *(float *)(v21 + 60) = v35 * -60.0;
              v30 = (float)(v48 + (float)(COERCE_FLOAT(LODWORD(v46) + 0x80000000) * *(float *)(v21 + 28))) - v50;
              if ( (float)((float)((float)(v30 - (float)(v56 * *(float *)(v21 + 20))) * *(float *)(v34 + 128))
                         + (float)((float)((float)((float)(v49 + (float)(v46 * *(float *)(v21 + 24))) - v51)
                                         - (float)(v47 * *(float *)(v21 + 16)))
                                 * *(float *)(v34 + 132))) < -1.0 )
                *(float *)(v21 + 60) = *(float *)(v21 + 60)
                                     + (float)(COERCE_FLOAT(*(_DWORD *)(v34 + 152) + 0x80000000)
                                             * (float)((float)((float)(v30 - (float)(v56 * *(float *)(v21 + 20)))
                                                             * *(float *)(v34 + 128))
                                                     + (float)((float)((float)((float)(v49
                                                                                     + (float)(v46 * *(float *)(v21 + 24)))
                                                                             - v51)
                                                                     - (float)(v47 * *(float *)(v21 + 16)))
                                                             * *(float *)(v34 + 132))));
              v20 += 32;
              ++v38;
              v21 += 64;
            }
            while ( *(_DWORD *)(v34 + 156) > v38 );
          }
          ++v44;
          v36 += 76;
          v45 += 160;
        }
        while ( v44 != v52 );
        v58 += v44;
      }
      ++v57;
    }
    while ( v57 != a4 );
  }
  return a1;
}


// ===== 7f8018 ProcessThree(b2Vec2 *,b2Vec2 *,b2Vec2 *,b2Vec2 *,b2Vec2 *) =====
int __fastcall ProcessThree(b2Vec2 *a1, b2Vec2 *a2, b2Vec2 *a3, b2Vec2 *a4, b2Vec2 *a5)
{
  float v5; // r7
  float v6; // r6
  float v7; // r5
  float v8; // r9
  float v9; // r11
  float v10; // r9
  float v11; // r0
  float v12; // r11
  float v14; // r5
  float v15; // r0
  float v16; // r6
  float v17; // r0
  float v18; // r4
  float v19; // r5
  float v20; // r11
  float v21; // r9
  float v22; // r0
  float v23; // r8
  float v24; // r9
  float v25; // r0
  float v26; // r6
  float v27; // r9
  float v28; // r0
  float v29; // r9
  float v30; // r0
  float v31; // [sp+4h] [bp-40h]
  float v32; // [sp+Ch] [bp-38h]
  float v33; // [sp+14h] [bp-30h]
  float v34; // [sp+18h] [bp-2Ch]
  float v35; // [sp+18h] [bp-2Ch]
  float v36; // [sp+1Ch] [bp-28h]
  float v37; // [sp+20h] [bp-24h]
  float v39; // [sp+2Ch] [bp-18h]
  float v40; // [sp+34h] [bp-10h]
  float v41; // [sp+38h] [bp-Ch]
  float v42; // [sp+3Ch] [bp-8h]

  v5 = *(float *)a5;
  v6 = *((float *)a5 + 4);
  v7 = *((float *)a5 + 5);
  v32 = *((float *)a5 + 1);
  v8 = *((float *)a5 + 2);
  v34 = v6 - *(float *)a5;
  v37 = v7 - v32;
  v9 = *((float *)a5 + 3);
  v41 = (float)(v34 * v6) + (float)((float)(v7 - v32) * v7);
  v42 = (float)((float)(v6 - v8) * v6) + (float)((float)(v7 - v9) * v7);
  if ( v41 <= 0.0 && v42 <= 0.0 )
  {
    *(_DWORD *)a1 = *((_DWORD *)a3 + 4);
    *((_DWORD *)a1 + 1) = *((_DWORD *)a3 + 5);
    *(_DWORD *)a2 = *((_DWORD *)a4 + 4);
    *((_DWORD *)a2 + 1) = *((_DWORD *)a4 + 5);
    *(_DWORD *)a3 = *((_DWORD *)a3 + 4);
    *((_DWORD *)a3 + 1) = *((_DWORD *)a3 + 5);
    *(_DWORD *)a4 = *((_DWORD *)a4 + 4);
    *((_DWORD *)a4 + 1) = *((_DWORD *)a4 + 5);
    *(_DWORD *)a5 = *((_DWORD *)a5 + 4);
    *((_DWORD *)a5 + 1) = *((_DWORD *)a5 + 5);
    return 1;
  }
  else
  {
    v36 = (float)((float)(v8 - v5) * v37) - (float)((float)(v9 - v32) * v34);
    v40 = v36 * (float)((float)(v8 * v7) - (float)(v9 * v6));
    if ( v40 > 0.0
      || (LODWORD(v33) = COERCE_INT((float)((float)(v6 - v8) * v8) + (float)((float)(v7 - v9) * v9)) + 0x80000000,
          v33 < 0.0)
      || v42 < 0.0
      || (v39 = v33 + v42, (float)(v33 + v42) <= 0.0) )
    {
      v14 = v36 * (float)((float)(v32 * v6) - (float)(v5 * v7));
      if ( v14 > 0.0
        || (LODWORD(v26) = COERCE_INT((float)(v5 * v34) + (float)(v32 * v37)) + 0x80000000, v26 < 0.0)
        || v41 < 0.0
        || (v35 = v26 + v41, (float)(v26 + v41) <= 0.0) )
      {
        v15 = 1.0 / (float)((float)(v40 + v14) + (float)(v36 * (float)((float)(v5 * v9) - (float)(v32 * v8))));
        v16 = v40 * v15;
        v17 = v14 * v15;
        v18 = v14
            * (float)(1.0 / (float)((float)(v40 + v14) + (float)(v36 * (float)((float)(v5 * v9) - (float)(v32 * v8)))));
        v19 = (float)(1.0 - v16) - v17;
        v20 = v16 * *(float *)a3;
        v21 = v17 * *((float *)a3 + 2);
        v22 = v19 * *((float *)a3 + 4);
        *((float *)a1 + 1) = (float)((float)(v16 * *((float *)a3 + 1)) + (float)(v18 * *((float *)a3 + 3)))
                           + (float)(v19 * *((float *)a3 + 5));
        *(float *)a1 = (float)(v20 + v21) + v22;
        v23 = v16 * *(float *)a4;
        v24 = v18 * *((float *)a4 + 2);
        v25 = v19 * *((float *)a4 + 4);
        *((float *)a2 + 1) = (float)((float)(v16 * *((float *)a4 + 1)) + (float)(v18 * *((float *)a4 + 3)))
                           + (float)(v19 * *((float *)a4 + 5));
        *(float *)a2 = (float)(v23 + v24) + v25;
        return 3;
      }
      else
      {
        v27 = *(float *)a3;
        v28 = (float)(v26 / v35) * (float)(*((float *)a3 + 4) - *(float *)a3);
        *((float *)a1 + 1) = *((float *)a3 + 1)
                           + (float)((float)(v26 / v35) * (float)(*((float *)a3 + 5) - *((float *)a3 + 1)));
        *(float *)a1 = v27 + v28;
        v29 = *(float *)a4;
        v30 = (float)(v26 / v35) * (float)(*((float *)a4 + 4) - *(float *)a4);
        *((float *)a2 + 1) = *((float *)a4 + 1)
                           + (float)((float)(v26 / v35) * (float)(*((float *)a4 + 5) - *((float *)a4 + 1)));
        *(float *)a2 = v29 + v30;
        *((_DWORD *)a3 + 2) = *((_DWORD *)a3 + 4);
        *((_DWORD *)a3 + 3) = *((_DWORD *)a3 + 5);
        *((_DWORD *)a4 + 2) = *((_DWORD *)a4 + 4);
        *((_DWORD *)a4 + 3) = *((_DWORD *)a4 + 5);
        *((_DWORD *)a5 + 2) = *((_DWORD *)a5 + 4);
        *((_DWORD *)a5 + 3) = *((_DWORD *)a5 + 5);
        return 2;
      }
    }
    else
    {
      v10 = *((float *)a3 + 2);
      v11 = *((float *)a3 + 4) - v10;
      *((float *)a1 + 1) = *((float *)a3 + 3)
                         + (float)((float)(v33 / v39) * (float)(*((float *)a3 + 5) - *((float *)a3 + 3)));
      *(float *)a1 = v10 + (float)((float)(v33 / v39) * v11);
      v12 = *((float *)a4 + 2);
      v31 = (float)(v33 / v39) * (float)(*((float *)a4 + 4) - v12);
      *((float *)a2 + 1) = *((float *)a4 + 3)
                         + (float)((float)(v33 / v39) * (float)(*((float *)a4 + 5) - *((float *)a4 + 3)));
      *(float *)a2 = v12 + v31;
      *(_DWORD *)a3 = *((_DWORD *)a3 + 4);
      *((_DWORD *)a3 + 1) = *((_DWORD *)a3 + 5);
      *(_DWORD *)a4 = *((_DWORD *)a4 + 4);
      *((_DWORD *)a4 + 1) = *((_DWORD *)a4 + 5);
      *(_DWORD *)a5 = *((_DWORD *)a5 + 4);
      *((_DWORD *)a5 + 1) = *((_DWORD *)a5 + 5);
      return 2;
    }
  }
}


// ===== 7f881c InPoints(b2Vec2 const&,b2Vec2 const*,int) =====
int __fastcall InPoints(const b2Vec2 *a1, const b2Vec2 *a2, int a3)
{
  int v3; // r11
  int v4; // r9
  float v5; // r5
  float v6; // r4
  float v7; // r6
  float v8; // r7
  float v9; // r8
  float v10; // r10
  float v12; // [sp+0h] [bp-24h]
  float v13; // [sp+4h] [bp-20h]

  if ( a3 <= 0 )
    return 0;
  v13 = *(float *)a1;
  v3 = 0;
  v4 = 0;
  v12 = *((float *)a1 + 1);
  while ( 1 )
  {
    v5 = *(float *)((char *)a2 + v3);
    v6 = *(float *)((char *)a2 + v3 + 4);
    v7 = v13 - v5;
    v8 = v12 - v6;
    if ( (float)(v13 - v5) <= 0.0 )
      LODWORD(v7) = COERCE_INT(v13 - v5) + 0x80000000;
    if ( v8 <= 0.0 )
      LODWORD(v8) += 0x80000000;
    if ( *(float *)a1 <= 0.0 )
      LODWORD(v9) = *(_DWORD *)a1 + 0x80000000;
    else
      v9 = *(float *)a1;
    if ( v12 <= 0.0 )
      LODWORD(v10) = LODWORD(v12) + 0x80000000;
    else
      v10 = *((float *)a1 + 1);
    if ( v5 <= 0.0 )
      LODWORD(v5) += 0x80000000;
    if ( v6 <= 0.0 )
      LODWORD(v6) += 0x80000000;
    if ( v9 <= v5 )
      v9 = v5;
    if ( v10 <= v6 )
      v10 = v6;
    if ( (float)((float)(v9 + 1.0) * 0.000011921) > v7 && (float)((float)(v10 + 1.0) * 0.000011921) > v8 )
      break;
    ++v4;
    v3 += 8;
    if ( v4 == a3 )
      return 0;
  }
  return 1;
}


// ===== 7f89e0 ProcessTwo(b2Vec2 *,b2Vec2 *,b2Vec2 *,b2Vec2 *,b2Vec2 *) =====
int __fastcall ProcessTwo(b2Vec2 *a1, b2Vec2 *a2, b2Vec2 *a3, b2Vec2 *a4, b2Vec2 *a5)
{
  float v8; // r1
  float v10; // r5
  float v11; // r11
  float v12; // r11
  float v13; // r5
  float v14; // r0
  float v15; // r5
  float v16; // r4
  float v17; // r11
  float v18; // r5
  float v19; // r0
  float v21; // [sp+4h] [bp-10h]
  float v22; // [sp+8h] [bp-Ch] BYREF
  float v23; // [sp+Ch] [bp-8h]

  v8 = *((float *)a5 + 3);
  v10 = *((float *)a5 + 2);
  LODWORD(v21) = LODWORD(v8) + 0x80000000;
  v11 = *((float *)a5 + 1) - v8;
  v22 = *(float *)a5 - v10;
  v23 = v11;
  v12 = COERCE_FLOAT(b2Vec2::Normalize((b2Vec2 *)&v22));
  v13 = (float)(COERCE_FLOAT(LODWORD(v10) + 0x80000000) * v22) + (float)(v21 * v23);
  if ( v13 <= 0.0 || v12 < 0.00000011921 )
  {
    *(_DWORD *)a1 = *((_DWORD *)a3 + 2);
    *((_DWORD *)a1 + 1) = *((_DWORD *)a3 + 3);
    *(_DWORD *)a2 = *((_DWORD *)a4 + 2);
    *((_DWORD *)a2 + 1) = *((_DWORD *)a4 + 3);
    *(_DWORD *)a3 = *((_DWORD *)a3 + 2);
    *((_DWORD *)a3 + 1) = *((_DWORD *)a3 + 3);
    *(_DWORD *)a4 = *((_DWORD *)a4 + 2);
    *((_DWORD *)a4 + 1) = *((_DWORD *)a4 + 3);
    *(_DWORD *)a5 = *((_DWORD *)a5 + 2);
    *((_DWORD *)a5 + 1) = *((_DWORD *)a5 + 3);
    return 1;
  }
  else
  {
    v14 = v13 / v12;
    v15 = *((float *)a3 + 2);
    v16 = v14;
    v17 = *(float *)a3 - v15;
    *((float *)a1 + 1) = *((float *)a3 + 3) + (float)(v14 * (float)(*((float *)a3 + 1) - *((float *)a3 + 3)));
    *(float *)a1 = v15 + (float)(v14 * v17);
    v18 = *((float *)a4 + 2);
    v19 = *(float *)a4 - v18;
    *((float *)a2 + 1) = *((float *)a4 + 3) + (float)(v16 * (float)(*((float *)a4 + 1) - *((float *)a4 + 3)));
    *(float *)a2 = v18 + (float)(v16 * v19);
    return 2;
  }
}


// ===== 7f8bec DistanceGeneric<b2PolygonShape,b2PolygonShape>(b2Vec2 *,b2Vec2 *,b2PolygonShape const*,b2XForm const&,b2PolygonShape const*,b2XForm const&) =====
float __fastcall DistanceGeneric<b2PolygonShape,b2PolygonShape>(
        float *a1,
        float *a2,
        int a3,
        float *a4,
        int a5,
        float *a6)
{
  float v6; // r4
  float v7; // r5
  float v8; // r0
  float v9; // r6
  float v10; // r7
  float v11; // r0
  int v12; // r4
  float v13; // r5
  float v14; // r7
  float v15; // r5
  float v17; // r9
  int v18; // r10
  int v19; // r7
  float i; // r8
  float v21; // r0
  float *v22; // r3
  float v23; // r0
  float v24; // r1
  float v25; // r0
  int v28; // [sp+10h] [bp-ACh]
  float v29; // [sp+14h] [bp-A8h]
  float v30; // [sp+18h] [bp-A4h]
  float v31; // [sp+1Ch] [bp-A0h]
  _DWORD v34[6]; // [sp+48h] [bp-74h] BYREF
  _DWORD v35[6]; // [sp+60h] [bp-5Ch] BYREF
  _DWORD v36[6]; // [sp+78h] [bp-44h] BYREF
  float v37; // [sp+90h] [bp-2Ch] BYREF
  float v38; // [sp+94h] [bp-28h]
  float v39[2]; // [sp+98h] [bp-24h] BYREF
  float v40; // [sp+A0h] [bp-1Ch] BYREF
  float v41; // [sp+A4h] [bp-18h]
  float v42[2]; // [sp+A8h] [bp-14h] BYREF
  float v43; // [sp+B0h] [bp-Ch] BYREF
  float v44; // [sp+B4h] [bp-8h]

  v6 = *(float *)(a3 + 216);
  v7 = *(float *)(a3 + 220);
  v8 = (float)((float)(v6 * a4[2]) + (float)(v7 * a4[4])) + *a4;
  a1[1] = (float)((float)(v6 * a4[3]) + (float)(v7 * a4[5])) + a4[1];
  *a1 = v8;
  v9 = *(float *)(a5 + 220);
  v10 = (float)((float)(*(float *)(a5 + 216) * a6[2]) + (float)(v9 * a6[4])) + *a6;
  v11 = (float)((float)(*(float *)(a5 + 216) * a6[3]) + (float)(v9 * a6[5])) + a6[1];
  v28 = 0;
  a2[1] = v11;
  *a2 = v10;
  v12 = 0;
  while ( 1 )
  {
    v13 = v11 - a1[1];
    v43 = v10 - *a1;
    v44 = v13;
    b2PolygonShape::Support(v42, a3, a4, &v43);
    LODWORD(v39[0]) = LODWORD(v43) + 0x80000000;
    LODWORD(v39[1]) = LODWORD(v44) + 0x80000000;
    v31 = v42[1];
    v14 = v42[0];
    b2PolygonShape::Support(&v40, a5, a6, v39);
    v29 = v40;
    v15 = (float)(v43 * v43) + (float)(v44 * v44);
    v30 = v41;
    v37 = v40 - v14;
    v38 = v41 - v31;
    if ( (float)(v15 - (float)((float)(v43 * (float)(v40 - v14)) + (float)(v44 * (float)(v41 - v31)))) <= (float)(v15 * 0.01)
      || InPoints((const b2Vec2 *)&v37, (const b2Vec2 *)v34, v12) )
    {
      break;
    }
    if ( v12 == 1 )
    {
      *(float *)&v35[2] = v29;
      *(float *)&v34[2] = v37;
      *(float *)&v35[3] = v30;
      *(float *)&v36[3] = v31;
      *(float *)&v36[2] = v14;
      *(float *)&v34[3] = v38;
      v12 = ProcessTwo((b2Vec2 *)a1, (b2Vec2 *)a2, (b2Vec2 *)v36, (b2Vec2 *)v35, (b2Vec2 *)v34);
LABEL_10:
      if ( v12 == 3 )
        goto LABEL_23;
      goto LABEL_11;
    }
    if ( v12 != 2 )
    {
      if ( !v12 )
      {
        *(float *)&v36[1] = v31;
        *(float *)v36 = v14;
        *(float *)&v35[1] = v30;
        *(float *)v35 = v29;
        v23 = v37;
        v24 = v38;
        *a1 = v14;
        a1[1] = v31;
        *(float *)v34 = v23;
        *(float *)&v34[1] = v24;
        v12 = 1;
        *a2 = v29;
        a2[1] = v30;
        goto LABEL_13;
      }
      goto LABEL_10;
    }
    *(float *)&v35[4] = v29;
    *(float *)&v34[4] = v37;
    *(float *)&v35[5] = v30;
    *(float *)&v36[5] = v31;
    *(float *)&v36[4] = v14;
    *(float *)&v34[5] = v38;
    v12 = ProcessThree((b2Vec2 *)a1, (b2Vec2 *)a2, (b2Vec2 *)v36, (b2Vec2 *)v35, (b2Vec2 *)v34);
    if ( v12 == 3 )
    {
LABEL_23:
      g_GJK_Iterations = v28;
      return 0.0;
    }
LABEL_11:
    if ( v12 <= 0 )
    {
      v17 = -3.4028e38;
      goto LABEL_19;
    }
LABEL_13:
    v18 = 0;
    v19 = 0;
    for ( i = -3.4028e38; ; i = v17 )
    {
      v22 = (float *)&v34[v18];
      v21 = *(float *)&v34[v18];
      ++v19;
      v18 += 2;
      v17 = (float)(v21 * v21) + (float)(v22[1] * v22[1]);
      if ( i > v17 )
        v17 = i;
      if ( v19 >= v12 )
        break;
    }
LABEL_19:
    if ( (float)(v17 * 0.000011921) >= v15 )
    {
      g_GJK_Iterations = v28;
      v25 = a2[1] - a1[1];
      v43 = *a2 - *a1;
      v44 = v25;
      return sqrtf((float)(v43 * v43) + (float)(v25 * v25));
    }
    if ( ++v28 == 20 )
    {
      g_GJK_Iterations = 20;
      return sqrtf(v15);
    }
    v10 = *a2;
    v11 = a2[1];
  }
  if ( !v12 )
  {
    *a1 = v14;
    a1[1] = v31;
    *a2 = v29;
    a2[1] = v30;
  }
  g_GJK_Iterations = v28;
  return sqrtf(v15);
}


// ===== 7f91d4 DistancePC(b2Vec2 *,b2Vec2 *,b2PolygonShape const*,b2XForm const&,b2CircleShape const*,b2XForm const&) =====
int __fastcall DistancePC(float *a1, float *a2, int a3, float *a4, float *a5, float *a6)
{
  float v7; // r5
  float v8; // r7
  float v9; // r7
  float v10; // r4
  float v11; // r0
  float v12; // r7
  int v13; // r4
  float v14; // r5
  float v15; // r5
  float v16; // r11
  float v17; // r5
  float v18; // r9
  int v19; // r8
  float v20; // r10
  int v21; // r7
  float v22; // r0
  float *v23; // r3
  float v24; // r0
  float v25; // r1
  float v26; // r4
  float v27; // r5
  float v28; // r7
  float v29; // r0
  float v31; // r0
  int v33; // [sp+10h] [bp-94h]
  float v34; // [sp+14h] [bp-90h]
  float v35; // [sp+18h] [bp-8Ch]
  float v36; // [sp+1Ch] [bp-88h]
  _DWORD v39[6]; // [sp+40h] [bp-64h] BYREF
  _DWORD v40[6]; // [sp+58h] [bp-4Ch] BYREF
  _DWORD v41[6]; // [sp+70h] [bp-34h] BYREF
  float v42; // [sp+88h] [bp-1Ch] BYREF
  float v43; // [sp+8Ch] [bp-18h]
  float v44; // [sp+90h] [bp-14h] BYREF
  float v45; // [sp+94h] [bp-10h]
  float v46; // [sp+98h] [bp-Ch] BYREF
  float v47; // [sp+9Ch] [bp-8h]

  v7 = a5[12];
  v8 = a5[13];
  v36 = (float)((float)(v7 * a6[2]) + (float)(v8 * a6[4])) + *a6;
  v35 = (float)((float)(v7 * a6[3]) + (float)(v8 * a6[5])) + a6[1];
  v9 = *(float *)(a3 + 220);
  v10 = (float)((float)(*(float *)(a3 + 216) * a4[2]) + (float)(v9 * a4[4])) + *a4;
  v33 = 0;
  a1[1] = (float)((float)(*(float *)(a3 + 216) * a4[3]) + (float)(v9 * a4[5])) + a4[1];
  *a1 = v10;
  a2[1] = v35;
  *a2 = v36;
  v11 = v35;
  v12 = v36;
  v13 = 0;
  while ( 1 )
  {
    v14 = v11 - a1[1];
    v46 = v12 - *a1;
    v47 = v14;
    b2PolygonShape::Support(&v44, a3, a4, &v46);
    v34 = v44;
    v15 = (float)(v46 * v46) + (float)(v47 * v47);
    v16 = v45;
    v42 = v36 - v44;
    v43 = v35 - v45;
    if ( (float)(v15 - (float)((float)(v46 * (float)(v36 - v44)) + (float)(v47 * (float)(v35 - v45)))) <= (float)(v15 * 0.01)
      || InPoints((const b2Vec2 *)&v42, (const b2Vec2 *)v39, v13) )
    {
      break;
    }
    if ( v13 == 1 )
    {
      *(float *)&v41[2] = v34;
      *(float *)&v39[2] = v42;
      *(float *)&v41[3] = v16;
      *(float *)&v39[3] = v43;
      *(float *)&v40[3] = v35;
      *(float *)&v40[2] = v36;
      v13 = ProcessTwo((b2Vec2 *)a1, (b2Vec2 *)a2, (b2Vec2 *)v41, (b2Vec2 *)v40, (b2Vec2 *)v39);
LABEL_10:
      if ( v13 == 3 )
        goto LABEL_23;
      goto LABEL_11;
    }
    if ( v13 != 2 )
    {
      if ( !v13 )
      {
        *(float *)v41 = v34;
        *(float *)&v41[1] = v16;
        *(float *)v40 = v36;
        v24 = v42;
        *(float *)&v40[1] = v35;
        v25 = v43;
        *a1 = v34;
        a1[1] = v16;
        *(float *)v39 = v24;
        *(float *)&v39[1] = v25;
        v13 = 1;
        *a2 = v36;
        a2[1] = v35;
        goto LABEL_13;
      }
      goto LABEL_10;
    }
    *(float *)&v41[4] = v34;
    *(float *)&v39[4] = v42;
    *(float *)&v41[5] = v16;
    *(float *)&v39[5] = v43;
    *(float *)&v40[5] = v35;
    *(float *)&v40[4] = v36;
    v13 = ProcessThree((b2Vec2 *)a1, (b2Vec2 *)a2, (b2Vec2 *)v41, (b2Vec2 *)v40, (b2Vec2 *)v39);
    if ( v13 == 3 )
    {
LABEL_23:
      v17 = 0.0;
      g_GJK_Iterations = v33;
      goto LABEL_26;
    }
LABEL_11:
    if ( v13 <= 0 )
    {
      v18 = -3.4028e38;
      goto LABEL_19;
    }
LABEL_13:
    v19 = 0;
    v20 = -3.4028e38;
    v21 = 0;
    while ( 1 )
    {
      ++v21;
      v23 = (float *)&v39[v19];
      v22 = *(float *)&v39[v19];
      v19 += 2;
      v18 = (float)(v22 * v22) + (float)(v23[1] * v23[1]);
      if ( v18 < v20 )
        v18 = v20;
      if ( v21 >= v13 )
        break;
      v20 = v18;
    }
LABEL_19:
    if ( v15 <= (float)(v18 * 0.000011921) )
    {
      g_GJK_Iterations = v33;
      v31 = a2[1] - a1[1];
      v46 = *a2 - *a1;
      v47 = v31;
      v17 = sqrtf((float)(v46 * v46) + (float)(v31 * v31));
      goto LABEL_26;
    }
    if ( ++v33 == 20 )
    {
      g_GJK_Iterations = 20;
      v17 = sqrtf(v15);
      goto LABEL_26;
    }
    v12 = *a2;
    v11 = a2[1];
  }
  if ( !v13 )
  {
    a1[1] = v16;
    *a1 = v34;
    a2[1] = v35;
    *a2 = v36;
  }
  g_GJK_Iterations = v33;
  v17 = sqrtf(v15);
LABEL_26:
  v26 = a5[14] - 0.04;
  if ( v26 >= v17 )
  {
    v27 = 0.0;
    *a2 = *a1;
    a2[1] = a1[1];
  }
  else
  {
    v27 = v17 - v26;
    v28 = a2[1] - a1[1];
    v46 = *a2 - *a1;
    v47 = v28;
    b2Vec2::Normalize((b2Vec2 *)&v46);
    v29 = v26 * v47;
    *a2 = *a2 - (float)(v26 * v46);
    a2[1] = a2[1] - v29;
  }
  return LODWORD(v27);
}


// ===== 7f9848 b2Distance(b2Vec2 *,b2Vec2 *,b2Shape const*,b2XForm const&,b2Shape const*,b2XForm const&) =====
int __fastcall b2Distance(float *a1, float *a2, int a3, float *a4, int a5, float *a6)
{
  int v6; // r12
  int v7; // r4
  bool v10; // zf
  bool v11; // zf
  float v12; // r7
  float v14; // r6
  float v15; // r9
  float v16; // r8
  float v17; // r4
  float v18; // r5
  float v19; // r7
  float v20; // r0
  float v21; // r0
  float v22; // r0
  float v23; // [sp+8h] [bp-14h]
  float v24; // [sp+Ch] [bp-10h]
  float v25; // [sp+10h] [bp-Ch] BYREF
  float v26; // [sp+14h] [bp-8h]

  v6 = *(_DWORD *)(a3 + 4);
  v7 = *(_DWORD *)(a5 + 4);
  if ( v7 | v6 )
  {
    v10 = v7 == 0;
    if ( !v7 )
      v10 = v6 == 1;
    if ( v10 )
    {
      v12 = COERCE_FLOAT(DistancePC(a1, a2, a3, a4, (float *)a5, a6));
    }
    else
    {
      v11 = v6 == 0;
      if ( !v6 )
        v11 = v7 == 1;
      if ( v11 )
      {
        v12 = COERCE_FLOAT(DistancePC(a2, a1, a5, a6, (float *)a3, a4));
      }
      else if ( v7 == 1 && v6 == 1 )
      {
        v12 = DistanceGeneric<b2PolygonShape,b2PolygonShape>(a1, a2, a3, a4, a5, a6);
      }
      else
      {
        v12 = 0.0;
      }
    }
  }
  else
  {
    v24 = (float)((float)(*(float *)(a3 + 48) * a4[2]) + (float)(*(float *)(a3 + 52) * a4[4])) + *a4;
    v14 = (float)((float)(*(float *)(a3 + 48) * a4[3]) + (float)(*(float *)(a3 + 52) * a4[5])) + a4[1];
    v23 = (float)((float)(*(float *)(a5 + 48) * a6[2]) + (float)(*(float *)(a5 + 52) * a6[4])) + *a6;
    v15 = (float)((float)(*(float *)(a5 + 48) * a6[3]) + (float)(*(float *)(a5 + 52) * a6[5])) + a6[1];
    v25 = v23 - v24;
    v26 = v15 - v14;
    v16 = (float)((float)(v23 - v24) * (float)(v23 - v24)) + (float)((float)(v15 - v14) * (float)(v15 - v14));
    v17 = *(float *)(a3 + 56) - 0.04;
    v18 = *(float *)(a5 + 56) - 0.04;
    v19 = v17 + v18;
    if ( v16 > (float)(v19 * v19) )
    {
      v12 = COERCE_FLOAT(b2Vec2::Normalize((b2Vec2 *)&v25)) - v19;
      v20 = v17 * v25;
      a1[1] = v14 + (float)(v17 * v26);
      *a1 = v24 + v20;
      v21 = v18 * v25;
      a2[1] = v15 - (float)(v18 * v26);
      *a2 = v23 - v21;
    }
    else
    {
      if ( v16 > 1.4211e-14 )
      {
        b2Vec2::Normalize((b2Vec2 *)&v25);
        v22 = v17 * v25;
        a1[1] = v14 + (float)(v17 * v26);
        *a1 = v24 + v22;
        v12 = 0.0;
      }
      else
      {
        a1[1] = v14;
        v12 = 0.0;
        *a1 = v24;
      }
      *a2 = *a1;
      a2[1] = a1[1];
    }
  }
  return LODWORD(v12);
}


// ===== 7f9bc8 b2DistanceJoint::SolveVelocityConstraints(b2TimeStep const&) =====
float __fastcall b2DistanceJoint::SolveVelocityConstraints(int a1)
{
  int v1; // r5
  float v3; // r0
  float v4; // r10
  int v5; // r4
  float v6; // r8
  float v7; // r0
  float v8; // r7
  float v9; // r0
  float v10; // r9
  float v11; // r11
  float v12; // r6
  float v13; // r5
  float result; // r0
  float v15; // [sp+Ch] [bp-8h]

  v1 = *(_DWORD *)(a1 + 48);
  v3 = *(float *)(a1 + 68) - *(float *)(v1 + 28);
  v4 = (float)(v3 * *(float *)(v1 + 12))
     + (float)((float)(*(float *)(a1 + 72) - *(float *)(v1 + 32)) * *(float *)(v1 + 20));
  v5 = *(_DWORD *)(a1 + 52);
  v6 = (float)(v3 * *(float *)(v1 + 16))
     + (float)((float)(*(float *)(a1 + 72) - *(float *)(v1 + 32)) * *(float *)(v1 + 24));
  v7 = *(float *)(a1 + 76) - *(float *)(v5 + 28);
  v8 = (float)(v7 * *(float *)(v5 + 12))
     + (float)((float)(*(float *)(a1 + 80) - *(float *)(v5 + 32)) * *(float *)(v5 + 20));
  v15 = (float)(v7 * *(float *)(v5 + 16))
      + (float)((float)(*(float *)(a1 + 80) - *(float *)(v5 + 32)) * *(float *)(v5 + 24));
  v9 = COERCE_FLOAT(*(_DWORD *)(a1 + 112) + 0x80000000)
     * (float)((float)((float)((float)((float)((float)((float)(v15 * COERCE_FLOAT(*(_DWORD *)(v5 + 72) + 0x80000000))
                                                     + *(float *)(v5 + 64))
                                             - (float)((float)(v6 * COERCE_FLOAT(*(_DWORD *)(v1 + 72) + 0x80000000))
                                                     + *(float *)(v1 + 64)))
                                     * *(float *)(a1 + 84))
                             + (float)((float)((float)((float)(*(float *)(v5 + 72) * v8) + *(float *)(v5 + 68))
                                             - (float)((float)(*(float *)(v1 + 72) * v4) + *(float *)(v1 + 68)))
                                     * *(float *)(a1 + 88)))
                     + *(float *)(a1 + 104))
             + (float)(*(float *)(a1 + 108) * *(float *)(a1 + 100)));
  *(float *)(a1 + 108) = *(float *)(a1 + 108) + v9;
  v10 = v9 * *(float *)(a1 + 84);
  v11 = *(float *)(v1 + 120);
  v12 = v9 * *(float *)(a1 + 88);
  *(float *)(v1 + 64) = *(float *)(v1 + 64) - (float)(v11 * v10);
  *(float *)(v1 + 68) = *(float *)(v1 + 68) - (float)(v11 * v12);
  *(float *)(v1 + 72) = *(float *)(v1 + 72)
                      - (float)((float)((float)(v4 * v12) - (float)(v6 * v10)) * *(float *)(v1 + 128));
  v13 = *(float *)(v5 + 120);
  *(float *)(v5 + 64) = *(float *)(v5 + 64) + (float)(v13 * v10);
  *(float *)(v5 + 68) = *(float *)(v5 + 68) + (float)(v13 * v12);
  result = *(float *)(v5 + 72) + (float)((float)((float)(v8 * v12) - (float)(v15 * v10)) * *(float *)(v5 + 128));
  *(float *)(v5 + 72) = result;
  return result;
}


// ===== 7f9f14 b2DistanceJoint::GetAnchor1(void) =====
b2DistanceJoint *__fastcall b2DistanceJoint::GetAnchor1(b2DistanceJoint *this, int a2)
{
  float *v2; // r4
  float v3; // r7
  float v4; // r6
  float v6; // r0

  v2 = *(float **)(a2 + 48);
  v3 = *(float *)(a2 + 68);
  v4 = *(float *)(a2 + 72);
  v6 = (float)((float)(v3 * v2[3]) + (float)(v4 * v2[5])) + v2[1];
  *((float *)this + 1) = (float)((float)(v3 * v2[4]) + (float)(v4 * v2[6])) + v2[2];
  *(float *)this = v6;
  return this;
}


// ===== 7f9fa4 b2DistanceJoint::GetAnchor2(void) =====
b2DistanceJoint *__fastcall b2DistanceJoint::GetAnchor2(b2DistanceJoint *this, int a2)
{
  float *v2; // r4
  float v3; // r7
  float v4; // r6
  float v6; // r0

  v2 = *(float **)(a2 + 52);
  v3 = *(float *)(a2 + 76);
  v4 = *(float *)(a2 + 80);
  v6 = (float)((float)(v3 * v2[3]) + (float)(v4 * v2[5])) + v2[1];
  *((float *)this + 1) = (float)((float)(v3 * v2[4]) + (float)(v4 * v2[6])) + v2[2];
  *(float *)this = v6;
  return this;
}


// ===== 7fa034 b2DistanceJoint::GetReactionForce(void) =====
b2DistanceJoint *__fastcall b2DistanceJoint::GetReactionForce(b2DistanceJoint *this, float *a2)
{
  float v3; // r0
  float v4; // r6
  float v5; // r0

  v3 = a2[14] * a2[27];
  v4 = v3 * a2[22];
  v5 = v3 * a2[21];
  *((float *)this + 1) = v4;
  *(float *)this = v5;
  return this;
}


// ===== 7fa078 b2DistanceJoint::GetReactionTorque(void) =====
int __fastcall b2DistanceJoint::GetReactionTorque(b2DistanceJoint *this)
{
  return 0;
}


// ===== 7fa080 b2DistanceJoint::~b2DistanceJoint() =====
void __fastcall b2DistanceJoint::~b2DistanceJoint(b2DistanceJoint *this)
{
  ;
}


// ===== 7fa084 b2DistanceJoint::~b2DistanceJoint() =====
void __fastcall b2DistanceJoint::~b2DistanceJoint(b2DistanceJoint *this)
{
  LC_API_FREE_0(this);
}


// ===== 7fa098 b2DistanceJoint::InitVelocityConstraints(b2TimeStep const&) =====
float __fastcall b2DistanceJoint::InitVelocityConstraints(int a1, int a2)
{
  float *v2; // r6
  float v4; // r0
  float v6; // r0
  float v7; // r9
  float *v8; // r5
  float v9; // r0
  float v10; // r10
  float v11; // r11
  float v12; // r8
  float v13; // r0
  float v14; // r1
  float v15; // r8
  float v16; // r11
  float v17; // r11
  float v18; // r8
  float result; // r0
  float v20; // r11
  float v21; // r0
  float v22; // r0
  float v23; // r1
  float v24; // r7
  float v25; // r0
  float v26; // r8
  float v27; // r6
  float v28; // [sp+4h] [bp-20h]
  float v29; // [sp+10h] [bp-14h]
  float v30; // [sp+14h] [bp-10h]
  float v31; // [sp+18h] [bp-Ch]
  float v32; // [sp+1Ch] [bp-8h]
  float v33; // [sp+1Ch] [bp-8h]

  v2 = *(float **)(a1 + 48);
  v4 = *(float *)(a1 + 68);
  *(_DWORD *)(a1 + 56) = *(_DWORD *)(a2 + 4);
  v6 = v4 - v2[7];
  v7 = (float)(v6 * v2[3]) + (float)((float)(*(float *)(a1 + 72) - v2[8]) * v2[5]);
  v8 = *(float **)(a1 + 52);
  v31 = (float)(v6 * v2[4]) + (float)((float)(*(float *)(a1 + 72) - v2[8]) * v2[6]);
  v9 = *(float *)(a1 + 76) - v8[7];
  v10 = (float)(v9 * v8[3]) + (float)((float)(*(float *)(a1 + 80) - v8[8]) * v8[5]);
  v30 = (float)(v9 * v8[4]) + (float)((float)(*(float *)(a1 + 80) - v8[8]) * v8[6]);
  v11 = (float)((float)(v10 + v8[11]) - v2[11]) - v7;
  v12 = (float)((float)(v30 + v8[12]) - v2[12]) - v31;
  *(float *)(a1 + 84) = v11;
  *(float *)(a1 + 88) = v12;
  v32 = sqrtf((float)(v11 * v11) + (float)(v12 * v12));
  if ( v32 <= 0.005 )
  {
    v15 = 0.0;
    *(_DWORD *)(a1 + 84) = 0;
    *(_DWORD *)(a1 + 88) = 0;
    v16 = 0.0;
  }
  else
  {
    v13 = (float)(1.0 / v32) * *(float *)(a1 + 84);
    v14 = *(float *)(a1 + 88);
    *(float *)(a1 + 84) = v13;
    v15 = v13;
    v16 = (float)(1.0 / v32) * v14;
    *(float *)(a1 + 88) = v16;
  }
  v29 = (float)((float)((float)((float)((float)((float)(v7 * v16) - (float)(v31 * v15)) * v2[32])
                              * (float)((float)(v7 * v16) - (float)(v31 * v15)))
                      + v2[30])
              + v8[30])
      + (float)((float)((float)((float)(v10 * v16) - (float)(v30 * v15)) * v8[32])
              * (float)((float)(v10 * v16) - (float)(v30 * v15)));
  v17 = *(float *)(a1 + 92);
  *(float *)(a1 + 112) = 1.0 / v29;
  v18 = 1.0 / v29;
  LODWORD(result) = v17 > 0.0;
  if ( v17 > 0.0 )
  {
    v33 = v32 - *(float *)(a1 + 116);
    v20 = v17 * 6.2832;
    v28 = (float)(v18 * v20) * v20;
    v21 = 1.0
        / (float)(*(float *)a2
                * (float)((float)(*(float *)a2 * v28) + (float)((float)((float)(v18 + v18) * *(float *)(a1 + 96)) * v20)));
    *(float *)(a1 + 100) = v21;
    *(float *)(a1 + 104) = v21 * (float)((float)(v33 * *(float *)a2) * v28);
    result = 1.0 / (float)(v29 + v21);
    *(float *)(a1 + 112) = result;
  }
  if ( *(_BYTE *)(a2 + 16) )
  {
    v22 = *(float *)(a1 + 108) * *(float *)(a2 + 8);
    v23 = *(float *)(a1 + 84);
    *(float *)(a1 + 108) = v22;
    v24 = v22 * v23;
    v25 = v22 * *(float *)(a1 + 88);
    v26 = v2[30];
    v2[16] = v2[16] - (float)(v26 * v24);
    v2[17] = v2[17] - (float)(v26 * v25);
    v2[18] = v2[18] - (float)((float)((float)(v7 * v25) - (float)(v31 * v24)) * v2[32]);
    v27 = v8[30];
    v8[16] = v8[16] + (float)(v27 * v24);
    v8[17] = v8[17] + (float)(v27 * v25);
    result = v8[18] + (float)((float)((float)(v10 * v25) - (float)(v30 * v24)) * v8[32]);
    v8[18] = result;
  }
  else
  {
    *(_DWORD *)(a1 + 108) = 0;
  }
  return result;
}


// ===== 7fa5a8 b2DistanceJointDef::Initialize(b2Body *,b2Body *,b2Vec2 const&,b2Vec2 const&) =====
float __fastcall b2DistanceJointDef::Initialize(
        b2DistanceJointDef *this,
        b2Body *a2,
        b2Body *a3,
        const b2Vec2 *a4,
        const b2Vec2 *a5)
{
  float v6; // r10
  float v7; // r0
  float v8; // r9
  float v9; // r10
  float v10; // r0
  float v11; // r0
  float v12; // r9
  float v13; // r6
  float result; // r0

  *((_DWORD *)this + 3) = a3;
  *((_DWORD *)this + 2) = a2;
  v6 = *(float *)a4 - *((float *)a2 + 1);
  v7 = *((float *)a4 + 1) - *((float *)a2 + 2);
  v8 = (float)(v6 * *((float *)a2 + 3)) + (float)(v7 * *((float *)a2 + 4));
  v9 = v6 * *((float *)a2 + 5);
  v10 = v7 * *((float *)a2 + 6);
  *((float *)this + 5) = v8;
  *((float *)this + 6) = v9 + v10;
  v11 = *(float *)a5 - *((float *)a3 + 1);
  v12 = (float)(v11 * *((float *)a3 + 3))
      + (float)((float)(*((float *)a5 + 1) - *((float *)a3 + 2)) * *((float *)a3 + 4));
  *((float *)this + 8) = (float)(v11 * *((float *)a3 + 5))
                       + (float)((float)(*((float *)a5 + 1) - *((float *)a3 + 2)) * *((float *)a3 + 6));
  *((float *)this + 7) = v12;
  v13 = *((float *)a5 + 1) - *((float *)a4 + 1);
  result = sqrtf((float)((float)(*(float *)a5 - *(float *)a4) * (float)(*(float *)a5 - *(float *)a4)) + (float)(v13 * v13));
  *((float *)this + 9) = result;
  return result;
}


// ===== 7fa714 b2DistanceJoint::SolvePositionConstraints(void) =====
bool __fastcall b2DistanceJoint::SolvePositionConstraints(b2DistanceJoint *this)
{
  float *v3; // r5
  float *v4; // r4
  float v5; // r0
  float v6; // r11
  float v7; // r9
  float v8; // r0
  float v9; // r10
  float v10; // r0
  float v11; // r7
  _BOOL4 v12; // r2
  float v13; // r0
  float v14; // r1
  float v15; // r8
  float v16; // r6
  float v17; // r9
  _BOOL4 v18; // [sp+4h] [bp-18h]
  float v19; // [sp+8h] [bp-14h]
  float v20; // [sp+Ch] [bp-10h]
  float v21; // [sp+10h] [bp-Ch] BYREF
  float v22; // [sp+14h] [bp-8h]

  if ( *((float *)this + 23) > 0.0 )
    return 1;
  v3 = *((float **)this + 12);
  v4 = *((float **)this + 13);
  v5 = *((float *)this + 17) - v3[7];
  v6 = (float)(v5 * v3[3]) + (float)((float)(*((float *)this + 18) - v3[8]) * v3[5]);
  v7 = (float)(v5 * v3[4]) + (float)((float)(*((float *)this + 18) - v3[8]) * v3[6]);
  v8 = *((float *)this + 19) - v4[7];
  v9 = (float)(v8 * v4[3]) + (float)((float)(*((float *)this + 20) - v4[8]) * v4[5]);
  v20 = (float)(v8 * v4[4]) + (float)((float)(*((float *)this + 20) - v4[8]) * v4[6]);
  v10 = (float)(v20 + v4[12]) - v3[12];
  v21 = (float)((float)(v9 + v4[11]) - v3[11]) - v6;
  v22 = v10 - v7;
  v11 = COERCE_FLOAT(b2Vec2::Normalize((b2Vec2 *)&v21)) - *((float *)this + 29);
  if ( v11 >= 0.2 )
  {
    v11 = 0.2;
LABEL_11:
    v12 = v11 > 0.0;
    goto LABEL_8;
  }
  if ( v11 >= -0.2 )
    goto LABEL_11;
  v11 = -0.2;
  v12 = 0;
LABEL_8:
  v18 = v12;
  v13 = COERCE_FLOAT(*((_DWORD *)this + 28) + 0x80000000) * v11;
  v14 = v22;
  *((float *)this + 21) = v21;
  *((float *)this + 22) = v14;
  v15 = v13 * *((float *)this + 21);
  v16 = v13 * *((float *)this + 22);
  v19 = v3[30];
  v3[11] = v3[11] - (float)(v19 * v15);
  v3[12] = v3[12] - (float)(v19 * v16);
  v3[14] = v3[14] - (float)((float)((float)(v6 * v16) - (float)(v7 * v15)) * v3[32]);
  v17 = v4[30];
  v4[11] = v4[11] + (float)(v17 * v15);
  v4[12] = v4[12] + (float)(v17 * v16);
  v4[14] = v4[14] + (float)((float)((float)(v9 * v16) - (float)(v20 * v15)) * v4[32]);
  b2Body::SynchronizeTransform((b2Body *)v3);
  b2Body::SynchronizeTransform((b2Body *)v4);
  if ( !v18 )
    LODWORD(v11) += 0x80000000;
  return v11 < 0.005;
}


// ===== 7faa90 b2DistanceJoint::b2DistanceJoint(b2DistanceJointDef const*) =====
_DWORD *__fastcall b2DistanceJoint::b2DistanceJoint(_DWORD *a1, int *a2)
{
  int v5; // r2

  b2Joint::b2Joint((int)a1, a2);
  *a1 = off_991C70;
  a1[17] = a2[5];
  a1[18] = a2[6];
  a1[19] = a2[7];
  a1[20] = a2[8];
  a1[29] = a2[9];
  a1[23] = a2[10];
  v5 = a2[11];
  a1[14] = 0;
  a1[27] = 0;
  a1[24] = v5;
  a1[25] = 0;
  a1[26] = 0;
  return a1;
}


// ===== 7fab14 b2DistanceJoint::b2DistanceJoint(b2DistanceJointDef const*) =====
_DWORD *__fastcall b2DistanceJoint::b2DistanceJoint(_DWORD *a1, int *a2)
{
  int v5; // r2

  b2Joint::b2Joint((int)a1, a2);
  *a1 = off_991C70;
  a1[17] = a2[5];
  a1[18] = a2[6];
  a1[19] = a2[7];
  a1[20] = a2[8];
  a1[29] = a2[9];
  a1[23] = a2[10];
  v5 = a2[11];
  a1[14] = 0;
  a1[27] = 0;
  a1[24] = v5;
  a1[25] = 0;
  a1[26] = 0;
  return a1;
}


// ===== 7fab98 b2GearJoint::InitVelocityConstraints(b2TimeStep const&) =====
float __fastcall b2GearJoint::InitVelocityConstraints(int a1, int a2)
{
  int v2; // r3
  float *v5; // r9
  float *v6; // r10
  float *v7; // r7
  float *v8; // r6
  float v9; // r5
  float v10; // r0
  float v11; // r1
  float result; // r0
  float v13; // r5
  float v14; // r0
  float v15; // r1
  float v16; // r0
  float v17; // r1
  int v18; // r3
  float v19; // r11
  float v20; // r11
  float v21; // r0
  int v22; // r3
  float v23; // r9
  float v24; // r11
  float v25; // r1
  float v26; // r9
  float v27; // r10
  float v28; // r3
  float v29; // [sp+8h] [bp-Ch]
  float v30; // [sp+8h] [bp-Ch]
  float v31; // [sp+8h] [bp-Ch]
  float v32; // [sp+Ch] [bp-8h]

  v2 = *(_DWORD *)(a1 + 76);
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
  *(_DWORD *)(a1 + 132) = 0;
  *(_DWORD *)(a1 + 136) = 0;
  *(_DWORD *)(a1 + 140) = 0;
  *(_DWORD *)(a1 + 144) = 0;
  v5 = *(float **)(a1 + 68);
  v6 = *(float **)(a1 + 72);
  v7 = *(float **)(a1 + 48);
  v8 = *(float **)(a1 + 52);
  if ( v2 )
  {
    *(_DWORD *)(a1 + 132) = -1082130432;
    v9 = v7[32] + 0.0;
    if ( *(_DWORD *)(a1 + 84) )
    {
LABEL_3:
      v10 = *(float *)(a1 + 152);
      *(_DWORD *)(a1 + 144) = LODWORD(v10) + 0x80000000;
      v11 = (float)((float)(v10 * v10) * v8[32]) + v9;
      goto LABEL_4;
    }
  }
  else
  {
    v18 = *(_DWORD *)(a1 + 80);
    v19 = *(float *)(v18 + 84);
    v29 = *(float *)(v18 + 88);
    v32 = (float)(v19 * v5[3]) + (float)(v29 * v5[5]);
    v30 = (float)(v19 * v5[4]) + (float)(v29 * v5[6]);
    v20 = *(float *)(a1 + 108) - v7[7];
    v21 = (float)(v30 * (float)((float)(v20 * v7[3]) + (float)((float)(*(float *)(a1 + 112) - v7[8]) * v7[5])))
        - (float)(v32 * (float)((float)(v20 * v7[4]) + (float)((float)(*(float *)(a1 + 112) - v7[8]) * v7[6])));
    *(_DWORD *)(a1 + 128) = LODWORD(v30) + 0x80000000;
    *(_DWORD *)(a1 + 132) = LODWORD(v21) + 0x80000000;
    *(_DWORD *)(a1 + 124) = LODWORD(v32) + 0x80000000;
    v9 = (float)((float)((float)(v21 * v7[32]) * v21) + v7[30]) + 0.0;
    if ( *(_DWORD *)(a1 + 84) )
      goto LABEL_3;
  }
  v22 = *(_DWORD *)(a1 + 88);
  v23 = *(float *)(v22 + 88);
  v31 = (float)(*(float *)(v22 + 84) * v6[3]) + (float)(v23 * v6[5]);
  v24 = *(float *)(a1 + 116) - v8[7];
  v25 = (float)(*(float *)(v22 + 84) * v6[4]) + (float)(v23 * v6[6]);
  v26 = (float)(v25 * (float)((float)(v24 * v8[3]) + (float)((float)(*(float *)(a1 + 120) - v8[8]) * v8[5])))
      - (float)(v31 * (float)((float)(v24 * v8[4]) + (float)((float)(*(float *)(a1 + 120) - v8[8]) * v8[6])));
  LODWORD(v27) = *(_DWORD *)(a1 + 152) + 0x80000000;
  *(float *)(a1 + 140) = v27 * v25;
  *(float *)(a1 + 136) = v27 * v31;
  v28 = *(float *)(a1 + 152);
  *(float *)(a1 + 144) = v27 * v26;
  v11 = (float)((float)(v28 * v28) * (float)((float)((float)(v26 * v8[32]) * v26) + v8[30])) + v9;
LABEL_4:
  result = 1.0 / v11;
  *(float *)(a1 + 156) = 1.0 / v11;
  if ( *(_BYTE *)(a2 + 16) )
  {
    v13 = *(float *)a2 * *(float *)(a1 + 160);
    v14 = (float)(v13 * v7[30]) * *(float *)(a1 + 128);
    v7[16] = v7[16] + (float)((float)(v13 * v7[30]) * *(float *)(a1 + 124));
    v15 = v7[32];
    v7[17] = v7[17] + v14;
    v7[18] = v7[18] + (float)((float)(v13 * v15) * *(float *)(a1 + 132));
    v16 = (float)(v13 * v8[30]) * *(float *)(a1 + 140);
    v8[16] = v8[16] + (float)((float)(v13 * v8[30]) * *(float *)(a1 + 136));
    v17 = v8[32];
    v8[17] = v8[17] + v16;
    result = v8[18] + (float)((float)(v13 * v17) * *(float *)(a1 + 144));
    v8[18] = result;
  }
  else
  {
    *(_DWORD *)(a1 + 160) = 0;
  }
  return result;
}


// ===== 7fb048 b2GearJoint::SolveVelocityConstraints(b2TimeStep const&) =====
float __fastcall b2GearJoint::SolveVelocityConstraints(int a1, int a2)
{
  float *v3; // r6
  float *v4; // r5
  float v5; // r0
  float v6; // r7
  float v7; // r10
  float v8; // r0
  float v9; // r1
  float v10; // r0
  float v11; // r1
  float result; // r0

  v3 = *(float **)(a1 + 48);
  v4 = *(float **)(a1 + 52);
  v5 = (float)(COERCE_FLOAT(*(_DWORD *)(a2 + 4) + 0x80000000) * *(float *)(a1 + 156))
     * (float)((float)((float)((float)((float)(*(float *)(a1 + 124) * v3[16]) + (float)(*(float *)(a1 + 128) * v3[17]))
                             + (float)(v3[18] * *(float *)(a1 + 132)))
                     + (float)((float)(*(float *)(a1 + 136) * v4[16]) + (float)(*(float *)(a1 + 140) * v4[17])))
             + (float)(v4[18] * *(float *)(a1 + 144)));
  *(float *)(a1 + 160) = *(float *)(a1 + 160) + v5;
  v6 = v5 * *(float *)a2;
  v7 = v6 * v3[30];
  v8 = v7 * *(float *)(a1 + 128);
  v3[16] = v3[16] + (float)(v7 * *(float *)(a1 + 124));
  v9 = v3[32];
  v3[17] = v3[17] + v8;
  v3[18] = v3[18] + (float)((float)(v6 * v9) * *(float *)(a1 + 132));
  v10 = (float)(v6 * v4[30]) * *(float *)(a1 + 140);
  v4[16] = v4[16] + (float)((float)(v6 * v4[30]) * *(float *)(a1 + 136));
  v11 = v4[32];
  v4[17] = v4[17] + v10;
  result = v4[18] + (float)((float)(v6 * v11) * *(float *)(a1 + 144));
  v4[18] = result;
  return result;
}


// ===== 7fb210 b2GearJoint::GetAnchor1(void) =====
b2GearJoint *__fastcall b2GearJoint::GetAnchor1(b2GearJoint *this, int a2)
{
  float *v2; // r4
  float v3; // r7
  float v4; // r6
  float v6; // r0

  v2 = *(float **)(a2 + 48);
  v3 = *(float *)(a2 + 108);
  v4 = *(float *)(a2 + 112);
  v6 = (float)((float)(v3 * v2[3]) + (float)(v4 * v2[5])) + v2[1];
  *((float *)this + 1) = (float)((float)(v3 * v2[4]) + (float)(v4 * v2[6])) + v2[2];
  *(float *)this = v6;
  return this;
}


// ===== 7fb2a0 b2GearJoint::GetAnchor2(void) =====
b2GearJoint *__fastcall b2GearJoint::GetAnchor2(b2GearJoint *this, int a2)
{
  float *v2; // r4
  float v3; // r7
  float v4; // r6
  float v6; // r0

  v2 = *(float **)(a2 + 52);
  v3 = *(float *)(a2 + 116);
  v4 = *(float *)(a2 + 120);
  v6 = (float)((float)(v3 * v2[3]) + (float)(v4 * v2[5])) + v2[1];
  *((float *)this + 1) = (float)((float)(v3 * v2[4]) + (float)(v4 * v2[6])) + v2[2];
  *(float *)this = v6;
  return this;
}


// ===== 7fb330 b2GearJoint::GetReactionForce(void) =====
b2GearJoint *__fastcall b2GearJoint::GetReactionForce(b2GearJoint *this, float *a2)
{
  float v3; // r0

  v3 = a2[40] * a2[34];
  *((float *)this + 1) = a2[40] * a2[35];
  *(float *)this = v3;
  return this;
}


// ===== 7fb36c b2GearJoint::GetReactionTorque(void) =====
float __fastcall b2GearJoint::GetReactionTorque(b2GearJoint *this)
{
  float *v1; // r5
  float v3; // r7
  float v4; // r0

  v1 = *((float **)this + 13);
  v3 = *((float *)this + 29) - v1[7];
  v4 = *((float *)this + 30) - v1[8];
  return (float)(*((float *)this + 40) * *((float *)this + 36))
       - (float)((float)((float)((float)(v3 * v1[3]) + (float)(v4 * v1[5]))
                       * (float)(*((float *)this + 40) * *((float *)this + 35)))
               - (float)((float)((float)(v3 * v1[4]) + (float)(v4 * v1[6]))
                       * (float)(*((float *)this + 40) * *((float *)this + 34))));
}


// ===== 7fb454 b2GearJoint::GetRatio(void) =====
int __fastcall b2GearJoint::GetRatio(b2GearJoint *this)
{
  return *((_DWORD *)this + 38);
}


// ===== 7fb45c b2GearJoint::~b2GearJoint() =====
void __fastcall b2GearJoint::~b2GearJoint(b2GearJoint *this)
{
  ;
}


// ===== 7fb460 b2GearJoint::~b2GearJoint() =====
void __fastcall b2GearJoint::~b2GearJoint(b2GearJoint *this)
{
  LC_API_FREE_0(this);
}


// ===== 7fb474 b2GearJoint::SolvePositionConstraints(void) =====
int __fastcall b2GearJoint::SolvePositionConstraints(b2GearJoint *this)
{
  b2RevoluteJoint *v2; // r0
  float *v3; // r6
  float *v4; // r5
  float JointTranslation; // r8
  b2RevoluteJoint *v6; // r0
  float JointAngle; // r0
  float v8; // r7
  float v9; // r10
  float v10; // r0
  float v11; // r1
  float v12; // r0

  v2 = *((b2RevoluteJoint **)this + 19);
  v3 = *((float **)this + 12);
  v4 = *((float **)this + 13);
  if ( !v2 )
  {
    JointTranslation = b2PrismaticJoint::GetJointTranslation(*((b2PrismaticJoint **)this + 20));
    v6 = *((b2RevoluteJoint **)this + 21);
    if ( v6 )
      goto LABEL_3;
LABEL_6:
    JointAngle = b2PrismaticJoint::GetJointTranslation(*((b2PrismaticJoint **)this + 22));
    goto LABEL_4;
  }
  JointTranslation = b2RevoluteJoint::GetJointAngle(v2);
  v6 = *((b2RevoluteJoint **)this + 21);
  if ( !v6 )
    goto LABEL_6;
LABEL_3:
  JointAngle = b2RevoluteJoint::GetJointAngle(v6);
LABEL_4:
  v8 = COERCE_FLOAT(*((_DWORD *)this + 39) + 0x80000000)
     * (float)(*((float *)this + 37) - (float)((float)(JointAngle * *((float *)this + 38)) + JointTranslation));
  v9 = v8 * v3[30];
  v10 = v9 * *((float *)this + 32);
  v3[11] = v3[11] + (float)(v9 * *((float *)this + 31));
  v11 = v3[32];
  v3[12] = v3[12] + v10;
  v3[14] = v3[14] + (float)((float)(v8 * v11) * *((float *)this + 33));
  v12 = (float)(v8 * v4[30]) * *((float *)this + 35);
  v4[11] = v4[11] + (float)((float)(v8 * v4[30]) * *((float *)this + 34));
  v4[12] = v4[12] + v12;
  v4[14] = v4[14] + (float)((float)(v8 * v4[32]) * *((float *)this + 36));
  b2Body::SynchronizeTransform((b2Body *)v3);
  b2Body::SynchronizeTransform((b2Body *)v4);
  return 1;
}


// ===== 7fb5ec b2GearJoint::b2GearJoint(b2GearJointDef const*) =====
int __fastcall b2GearJoint::b2GearJoint(int a1, int a2)
{
  int v4; // r2
  int v5; // r7
  b2PrismaticJoint *v6; // r3
  float JointAngle; // r6
  b2PrismaticJoint *v8; // r3
  float JointTranslation; // r0
  float v10; // r1
  b2RevoluteJoint *v12; // r3
  b2RevoluteJoint *v13; // r3

  b2Joint::b2Joint(a1, (int *)a2);
  *(_DWORD *)a1 = off_991CA0;
  v4 = *(_DWORD *)(*(_DWORD *)(a2 + 20) + 4);
  v5 = *(_DWORD *)(*(_DWORD *)(a2 + 24) + 4);
  *(_DWORD *)(a1 + 88) = 0;
  *(_DWORD *)(a1 + 76) = 0;
  *(_DWORD *)(a1 + 80) = 0;
  *(_DWORD *)(a1 + 84) = 0;
  *(_DWORD *)(a1 + 68) = *(_DWORD *)(*(_DWORD *)(a2 + 20) + 48);
  *(_DWORD *)(a1 + 48) = *(_DWORD *)(*(_DWORD *)(a2 + 20) + 52);
  if ( v4 == 1 )
  {
    v12 = *(b2RevoluteJoint **)(a2 + 20);
    *(_DWORD *)(a1 + 76) = v12;
    *(_DWORD *)(a1 + 92) = *((_DWORD *)v12 + 17);
    *(_DWORD *)(a1 + 96) = *((_DWORD *)v12 + 18);
    *(_DWORD *)(a1 + 108) = *((_DWORD *)v12 + 19);
    *(_DWORD *)(a1 + 112) = *((_DWORD *)v12 + 20);
    JointAngle = b2RevoluteJoint::GetJointAngle(v12);
    *(_DWORD *)(a1 + 72) = *(_DWORD *)(*(_DWORD *)(a2 + 24) + 48);
    *(_DWORD *)(a1 + 52) = *(_DWORD *)(*(_DWORD *)(a2 + 24) + 52);
    if ( v5 != 1 )
      goto LABEL_3;
LABEL_6:
    v13 = *(b2RevoluteJoint **)(a2 + 24);
    *(_DWORD *)(a1 + 84) = v13;
    *(_DWORD *)(a1 + 100) = *((_DWORD *)v13 + 17);
    *(_DWORD *)(a1 + 104) = *((_DWORD *)v13 + 18);
    *(_DWORD *)(a1 + 116) = *((_DWORD *)v13 + 19);
    *(_DWORD *)(a1 + 120) = *((_DWORD *)v13 + 20);
    JointTranslation = b2RevoluteJoint::GetJointAngle(v13);
    goto LABEL_4;
  }
  v6 = *(b2PrismaticJoint **)(a2 + 20);
  *(_DWORD *)(a1 + 80) = v6;
  *(_DWORD *)(a1 + 92) = *((_DWORD *)v6 + 17);
  *(_DWORD *)(a1 + 96) = *((_DWORD *)v6 + 18);
  *(_DWORD *)(a1 + 108) = *((_DWORD *)v6 + 19);
  *(_DWORD *)(a1 + 112) = *((_DWORD *)v6 + 20);
  JointAngle = b2PrismaticJoint::GetJointTranslation(v6);
  *(_DWORD *)(a1 + 72) = *(_DWORD *)(*(_DWORD *)(a2 + 24) + 48);
  *(_DWORD *)(a1 + 52) = *(_DWORD *)(*(_DWORD *)(a2 + 24) + 52);
  if ( v5 == 1 )
    goto LABEL_6;
LABEL_3:
  v8 = *(b2PrismaticJoint **)(a2 + 24);
  *(_DWORD *)(a1 + 88) = v8;
  *(_DWORD *)(a1 + 100) = *((_DWORD *)v8 + 17);
  *(_DWORD *)(a1 + 104) = *((_DWORD *)v8 + 18);
  *(_DWORD *)(a1 + 116) = *((_DWORD *)v8 + 19);
  *(_DWORD *)(a1 + 120) = *((_DWORD *)v8 + 20);
  JointTranslation = b2PrismaticJoint::GetJointTranslation(v8);
LABEL_4:
  v10 = *(float *)(a2 + 28);
  *(float *)(a1 + 152) = v10;
  *(float *)(a1 + 148) = (float)(JointTranslation * v10) + JointAngle;
  *(_DWORD *)(a1 + 160) = 0;
  return a1;
}


// ===== 7fb794 b2GearJoint::b2GearJoint(b2GearJointDef const*) =====
int __fastcall b2GearJoint::b2GearJoint(int a1, int a2)
{
  int v4; // r2
  int v5; // r7
  b2PrismaticJoint *v6; // r3
  float JointAngle; // r6
  b2PrismaticJoint *v8; // r3
  float JointTranslation; // r0
  float v10; // r1
  b2RevoluteJoint *v12; // r3
  b2RevoluteJoint *v13; // r3

  b2Joint::b2Joint(a1, (int *)a2);
  *(_DWORD *)a1 = off_991CA0;
  v4 = *(_DWORD *)(*(_DWORD *)(a2 + 20) + 4);
  v5 = *(_DWORD *)(*(_DWORD *)(a2 + 24) + 4);
  *(_DWORD *)(a1 + 88) = 0;
  *(_DWORD *)(a1 + 76) = 0;
  *(_DWORD *)(a1 + 80) = 0;
  *(_DWORD *)(a1 + 84) = 0;
  *(_DWORD *)(a1 + 68) = *(_DWORD *)(*(_DWORD *)(a2 + 20) + 48);
  *(_DWORD *)(a1 + 48) = *(_DWORD *)(*(_DWORD *)(a2 + 20) + 52);
  if ( v4 == 1 )
  {
    v12 = *(b2RevoluteJoint **)(a2 + 20);
    *(_DWORD *)(a1 + 76) = v12;
    *(_DWORD *)(a1 + 92) = *((_DWORD *)v12 + 17);
    *(_DWORD *)(a1 + 96) = *((_DWORD *)v12 + 18);
    *(_DWORD *)(a1 + 108) = *((_DWORD *)v12 + 19);
    *(_DWORD *)(a1 + 112) = *((_DWORD *)v12 + 20);
    JointAngle = b2RevoluteJoint::GetJointAngle(v12);
    *(_DWORD *)(a1 + 72) = *(_DWORD *)(*(_DWORD *)(a2 + 24) + 48);
    *(_DWORD *)(a1 + 52) = *(_DWORD *)(*(_DWORD *)(a2 + 24) + 52);
    if ( v5 != 1 )
      goto LABEL_3;
LABEL_6:
    v13 = *(b2RevoluteJoint **)(a2 + 24);
    *(_DWORD *)(a1 + 84) = v13;
    *(_DWORD *)(a1 + 100) = *((_DWORD *)v13 + 17);
    *(_DWORD *)(a1 + 104) = *((_DWORD *)v13 + 18);
    *(_DWORD *)(a1 + 116) = *((_DWORD *)v13 + 19);
    *(_DWORD *)(a1 + 120) = *((_DWORD *)v13 + 20);
    JointTranslation = b2RevoluteJoint::GetJointAngle(v13);
    goto LABEL_4;
  }
  v6 = *(b2PrismaticJoint **)(a2 + 20);
  *(_DWORD *)(a1 + 80) = v6;
  *(_DWORD *)(a1 + 92) = *((_DWORD *)v6 + 17);
  *(_DWORD *)(a1 + 96) = *((_DWORD *)v6 + 18);
  *(_DWORD *)(a1 + 108) = *((_DWORD *)v6 + 19);
  *(_DWORD *)(a1 + 112) = *((_DWORD *)v6 + 20);
  JointAngle = b2PrismaticJoint::GetJointTranslation(v6);
  *(_DWORD *)(a1 + 72) = *(_DWORD *)(*(_DWORD *)(a2 + 24) + 48);
  *(_DWORD *)(a1 + 52) = *(_DWORD *)(*(_DWORD *)(a2 + 24) + 52);
  if ( v5 == 1 )
    goto LABEL_6;
LABEL_3:
  v8 = *(b2PrismaticJoint **)(a2 + 24);
  *(_DWORD *)(a1 + 88) = v8;
  *(_DWORD *)(a1 + 100) = *((_DWORD *)v8 + 17);
  *(_DWORD *)(a1 + 104) = *((_DWORD *)v8 + 18);
  *(_DWORD *)(a1 + 116) = *((_DWORD *)v8 + 19);
  *(_DWORD *)(a1 + 120) = *((_DWORD *)v8 + 20);
  JointTranslation = b2PrismaticJoint::GetJointTranslation(v8);
LABEL_4:
  v10 = *(float *)(a2 + 28);
  *(float *)(a1 + 152) = v10;
  *(float *)(a1 + 148) = (float)(JointTranslation * v10) + JointAngle;
  *(_DWORD *)(a1 + 160) = 0;
  return a1;
}


// ===== 7fb93c CNetworkId::IsEqual(CNetworkId&) =====
bool __fastcall CNetworkId::IsEqual(unsigned __int16 *a1, unsigned __int16 *a2)
{
  int v2; // r2
  __int64 v4; // r8
  __int64 v5; // r4
  __int64 v6; // r6
  unsigned int v7; // r10
  __int64 v8; // r8
  __int64 v9; // r10
  unsigned int v10; // r12
  __int64 v11; // r4
  __int64 v12; // r4
  __int64 v13; // r8
  unsigned int v14; // r1
  __int64 v15; // r10
  unsigned int v16; // r1
  __int64 v17; // r6
  unsigned int v18; // r6
  __int64 v19; // r8
  unsigned int v20; // r8
  __int64 v21; // r4
  __int64 v22; // [sp+0h] [bp-30h]
  int v23; // [sp+Ch] [bp-24h]
  __int64 v24; // [sp+10h] [bp-20h]
  __int64 v25; // [sp+28h] [bp-8h]

  v2 = *((_DWORD *)a2 + 6);
  v23 = *((_DWORD *)a1 + 6);
  if ( (v23 & v2) == 0 )
    return 0;
  if ( (v2 & 1) != 0 )
  {
    v20 = *((_DWORD *)a2 + 3);
    LODWORD(v21) = v20 << 16;
    HIDWORD(v21) = HIWORD(v20);
    v4 = v21 + a2[4];
    v22 = v2 & 2;
    if ( (v2 & 2) != 0 )
LABEL_7:
      v4 += ((unsigned __int64)*((unsigned int *)a2 + 1) << 16) + *a2;
  }
  else
  {
    v4 = 0;
    v22 = v2 & 2;
    if ( (v2 & 2) != 0 )
      goto LABEL_7;
  }
  if ( (v2 & 4) != 0 )
    v4 += *((unsigned int *)a2 + 4);
  if ( (v2 & 8) != 0 )
    v4 += *((unsigned int *)a2 + 5);
  HIDWORD(v5) = v2 << 23;
  LODWORD(v5) = 0;
  v24 = (v4 & 0xFFFFFFFFFFFFFFLL) + v5;
  if ( (v2 & 1) != 0 )
  {
    v18 = *((_DWORD *)a1 + 3);
    LODWORD(v19) = v18 << 16;
    HIDWORD(v19) = HIWORD(v18);
    v6 = v19 + a1[4];
    if ( !v22 )
      goto LABEL_17;
  }
  else
  {
    v6 = 0;
    if ( !v22 )
      goto LABEL_17;
  }
  v7 = *((_DWORD *)a1 + 1);
  LODWORD(v8) = v7 << 16;
  HIDWORD(v8) = HIWORD(v7);
  v6 += v8 + *a1;
LABEL_17:
  if ( (v2 & 4) != 0 )
    v6 += *((unsigned int *)a1 + 4);
  if ( (v2 & 8) != 0 )
    v6 += *((unsigned int *)a1 + 5);
  if ( v24 == __PAIR64__(((v6 & 0xFFFFFFFFFFFFFFuLL) + v5) >> 32, v6) )
    return 1;
  if ( (v23 & 1) != 0 )
  {
    v10 = *((_DWORD *)a2 + 3);
    LODWORD(v11) = v10 << 16;
    HIDWORD(v11) = HIWORD(v10);
    v9 = v11 + a2[4];
  }
  else
  {
    v9 = 0;
  }
  if ( (v23 & 2) != 0 )
    v9 += ((unsigned __int64)*((unsigned int *)a2 + 1) << 16) + *a2;
  if ( (v23 & 4) != 0 )
    v9 += *((unsigned int *)a2 + 4);
  if ( (v23 & 8) != 0 )
    v9 += *((unsigned int *)a2 + 5);
  HIDWORD(v12) = v23 << 23;
  LODWORD(v12) = 0;
  v25 = (v9 & 0xFFFFFFFFFFFFFFLL) + v12;
  if ( (v23 & 1) != 0 )
  {
    v14 = *((_DWORD *)a1 + 3);
    LODWORD(v15) = v14 << 16;
    HIDWORD(v15) = HIWORD(v14);
    v13 = v15 + a1[4];
  }
  else
  {
    v13 = 0;
  }
  if ( (v23 & 2) != 0 )
  {
    v16 = *((_DWORD *)a1 + 1);
    LODWORD(v17) = v16 << 16;
    HIDWORD(v17) = HIWORD(v16);
    v13 += v17 + *a1;
  }
  if ( (v23 & 4) != 0 )
    v13 += *((unsigned int *)a1 + 4);
  if ( (v23 & 8) != 0 )
    v13 += *((unsigned int *)a1 + 5);
  return (_DWORD)v25 == (_DWORD)v13 && HIDWORD(v25) == ((v13 & 0xFFFFFFFFFFFFFFuLL) + v12) >> 32;
}


// ===== 7fbd4c CConnectionManager::GetImpl(void) =====
int __fastcall CConnectionManager::GetImpl(CConnectionManager *this)
{
  return 0;
}


// ===== 7fbd54 CConnectionManager::GetInstance(void) =====
int __fastcall CConnectionManager::GetInstance(CConnectionManager *this)
{
  return CConnectionManager::s_connectionManager;
}


// ===== 7fbd74 GetConnectionMgr(void) =====
// attributes: thunk
int __fastcall GetConnectionMgr(CConnectionManager *this)
{
  return CConnectionManager::GetInstance(this);
}


// ===== 7fbd78 CConnectionManager::IsInitialized(void) =====
int __fastcall CConnectionManager::IsInitialized(CConnectionManager *this)
{
  int result; // r0

  result = CConnectionManager::s_connectionManager;
  if ( CConnectionManager::s_connectionManager )
    return *(unsigned __int8 *)(CConnectionManager::s_connectionManager + 168);
  return result;
}


// ===== 7fbda0 CConnectionManager::GetConnectionByNetworkId(CNetworkId &) =====
int __fastcall CConnectionManager::GetConnectionByNetworkId(int a1, unsigned __int16 *a2)
{
  int v4; // r4
  int i; // r5
  int v6; // r3

  v4 = a1;
  for ( i = 0; i != 32; ++i )
  {
    v6 = *(_DWORD *)(v4 + 28);
    v4 += 4;
    if ( v6 && CNetworkId::IsEqual((unsigned __int16 *)(v6 + 32), a2) )
      return *(_DWORD *)(a1 + 4 * i + 28);
  }
  return 0;
}


// ===== 7fbdf8 CConnectionManager::GetMemberId(CNetworkId &) =====
int __fastcall CConnectionManager::GetMemberId(int a1, unsigned __int16 *a2)
{
  int v4; // r4
  int i; // r5
  int v6; // r3

  v4 = a1;
  for ( i = 0; i != 32; ++i )
  {
    v6 = *(_DWORD *)(v4 + 28);
    v4 += 4;
    if ( v6 && CNetworkId::IsEqual((unsigned __int16 *)(v6 + 32), a2) )
      return *(_DWORD *)(*(_DWORD *)(a1 + 4 * i + 28) + 28);
  }
  return -1;
}


// ===== 7fbe54 CConnectionManager::DisconnectAll(void) =====
int __fastcall CConnectionManager::DisconnectAll(CConnectionManager *this)
{
  int i; // r4
  int v3; // r3

  for ( i = 0; i != 32; ++i )
  {
    v3 = *((_DWORD *)this + 7);
    this = (CConnectionManager *)((char *)this + 4);
    if ( v3 )
      (*(void (__fastcall **)(int))(*(_DWORD *)v3 + 16))(v3);
  }
  return 0;
}


// ===== 7fbe94 CConnectionManager::GetConnectionCount(bool) =====
int __fastcall CConnectionManager::GetConnectionCount(CConnectionManager *this, int a2)
{
  int v2; // r3
  int result; // r0
  int v5; // r12

  v2 = 0;
  result = 0;
  do
  {
    while ( 1 )
    {
      v5 = *((_DWORD *)this + 7);
      if ( v5 )
      {
        if ( !a2 || *(_DWORD *)(v5 + 24) == 4 )
          break;
      }
      ++v2;
      this = (CConnectionManager *)((char *)this + 4);
      if ( v2 == 32 )
        return result;
    }
    ++v2;
    ++result;
    this = (CConnectionManager *)((char *)this + 4);
  }
  while ( v2 != 32 );
  return result;
}


// ===== 7fbeec CConnectionManager::SendToAll(tPACKET_TYPE,void *,int) =====
int __fastcall CConnectionManager::SendToAll(int a1, int a2, int a3, int a4)
{
  int v8; // r4
  _DWORD *v9; // r3

  v8 = 0;
  do
  {
    while ( 1 )
    {
      v9 = *(_DWORD **)(a1 + 28);
      ++v8;
      a1 += 4;
      if ( v9 )
      {
        if ( v9[6] == 4 )
          break;
      }
      if ( v8 == 32 )
        return 0;
    }
    (*(void (__fastcall **)(_DWORD *, int, int, int))(*v9 + 24))(v9, a2, a3, a4);
  }
  while ( v8 != 32 );
  return 0;
}


// ===== 7fbf5c CConnectionManager::RegisterPacketType(tPACKET_TYPE,tPROTOCOL_TYPE,void (*)(int,char *,int)) =====
int __fastcall CConnectionManager::RegisterPacketType(int a1, int a2, int a3)
{
  int v3; // r12
  _DWORD *v5; // r4

  v3 = 12 * a1;
  v5 = (_DWORD *)((char *)&CConnectionManager::s_recvCBMap + v3);
  *v5 = a2;
  v5[1] = a3;
  return 0;
}


// ===== 7fbf98 CConnectionManager::RegisterPacketType(tPACKET_TYPE,tPROTOCOL_TYPE,void (*)(CNetworkId &,char *,int)) =====
int __fastcall CConnectionManager::RegisterPacketType(int a1, int a2, int a3)
{
  int v3; // r12
  _DWORD *v5; // r4

  v3 = 12 * a1;
  v5 = (_DWORD *)((char *)&CConnectionManager::s_recvCBMap + v3);
  *v5 = a2;
  v5[2] = a3;
  return 0;
}


// ===== 7fbfd4 CConnectionManager::IsPacketTypeRegistered(tPACKET_TYPE) =====
bool __fastcall CConnectionManager::IsPacketTypeRegistered(int a1)
{
  char *v1; // r2

  v1 = (char *)&CConnectionManager::s_recvCBMap + 12 * a1;
  return *((_DWORD *)v1 + 2) || *((_DWORD *)v1 + 1) != 0;
}


// ===== 7fc014 CConnectionManager::GetPacketTransportType(tPACKET_TYPE) =====
int __fastcall CConnectionManager::GetPacketTransportType(int a1, int a2)
{
  int result; // r0

  result = CConnectionManager::IsPacketTypeRegistered(a2);
  if ( result )
    return *(_DWORD *)(a1 + 4 * CConnectionManager::s_recvCBMap[3 * a2] + 156);
  return result;
}


// ===== 7fc060 CConnectionManager::GetTransportType(tPROTOCOL_TYPE) =====
int __fastcall CConnectionManager::GetTransportType(int a1, int a2)
{
  return *(_DWORD *)(a1 + 4 * a2 + 156);
}


// ===== 7fc06c CConnectionManager::PingConnections(void) =====
void __fastcall CConnectionManager::PingConnections(CConnectionManager *this)
{
  ;
}


// ===== 7fc070 CConnectionManager::SetConnectionTimeouts(uint) =====
int __fastcall CConnectionManager::SetConnectionTimeouts(int this, unsigned int a2)
{
  int i; // r3
  int v3; // r2

  for ( i = 0; i != 32; ++i )
  {
    v3 = *(_DWORD *)(this + 28);
    this += 4;
    if ( v3 )
      *(_DWORD *)(v3 + 80) = a2;
  }
  return this;
}


// ===== 7fc094 CConnectionManager::ReportStatistic(int,tCONNECTION_STATISTIC,int) =====
void CConnectionManager::ReportStatistic()
{
  ;
}


// ===== 7fc098 CConnectionManager::ReportStatistic(tTRANSPORT_TYPE,CNetworkId &,tCONNECTION_STATISTIC,int) =====
void CConnectionManager::ReportStatistic()
{
  ;
}


// ===== 7fc09c CConnectionManager::PrintStatistics(void) =====
void __fastcall CConnectionManager::PrintStatistics(CConnectionManager *this)
{
  ;
}


// ===== 7fc0a0 CConnectionManager::PrintMergedStatistics(void) =====
void __fastcall CConnectionManager::PrintMergedStatistics(CConnectionManager *this)
{
  ;
}


// ===== 7fc0a4 CConnectionManager::GetBandwidth(int &,int &) =====
void __fastcall CConnectionManager::GetBandwidth(CConnectionManager *this, int *a2, int *a3)
{
  ;
}


// ===== 7fc0a8 CConnectionManager::CConnectionManager(void) =====
void __fastcall CConnectionManager::CConnectionManager(CConnectionManager *this)
{
  int v2; // r3
  CConnectionManager *v3; // r2

  *(_DWORD *)this = off_991D00;
  *((_DWORD *)this + 2) = &off_991D70;
  CNetMutex::CNetMutex((CConnectionManager *)((char *)this + 12));
  v2 = 0;
  *((_DWORD *)this + 2) = &off_991CD0;
  *((_DWORD *)this + 5) = (char *)this + 16;
  *((_DWORD *)this + 6) = 100;
  *((_DWORD *)this + 4) = (char *)this + 16;
  *((_BYTE *)this + 168) = 0;
  v3 = this;
  do
  {
    ++v2;
    *((_DWORD *)v3 + 7) = 0;
    v3 = (CConnectionManager *)((char *)v3 + 4);
  }
  while ( v2 != 32 );
}


// ===== 7fc140 CConnectionManager::CConnectionManager(void) =====
void __fastcall CConnectionManager::CConnectionManager(CConnectionManager *this)
{
  int v2; // r3
  CConnectionManager *v3; // r2

  *(_DWORD *)this = off_991D00;
  *((_DWORD *)this + 2) = &off_991D70;
  CNetMutex::CNetMutex((CConnectionManager *)((char *)this + 12));
  v2 = 0;
  *((_DWORD *)this + 2) = &off_991CD0;
  *((_DWORD *)this + 5) = (char *)this + 16;
  *((_DWORD *)this + 6) = 100;
  *((_DWORD *)this + 4) = (char *)this + 16;
  *((_BYTE *)this + 168) = 0;
  v3 = this;
  do
  {
    ++v2;
    *((_DWORD *)v3 + 7) = 0;
    v3 = (CConnectionManager *)((char *)v3 + 4);
  }
  while ( v2 != 32 );
}


// ===== 7fc1d8 CConnectionManager::KeepAliveConnections(void) =====
int __fastcall CConnectionManager::KeepAliveConnections(CConnectionManager *this)
{
  int (__fastcall ***Online)(_DWORD); // r0
  unsigned int v3; // r6
  int i; // r4
  CConnection *v5; // r0

  Online = (int (__fastcall ***)(_DWORD))GetOnline();
  v3 = (**Online)(Online);
  CNetMutex::Lock(&CConnectionManager::m_connections_mutex);
  for ( i = 0; i != 32; ++i )
  {
    v5 = *((CConnection **)this + 7);
    if ( v5 )
      CConnection::SendKeepAlive(v5, v3);
    this = (CConnectionManager *)((char *)this + 4);
  }
  return CNetMutex::Unlock(&CConnectionManager::m_connections_mutex);
}


// ===== 7fc244 CConnectionManager::sReceiverCallback(tPACKET_TYPE,CNetworkId &,char *,int) =====
int __fastcall CConnectionManager::sReceiverCallback(int a1, unsigned __int16 *a2, int a3, int a4)
{
  CConnectionManager *v8; // r0
  int Instance; // r11
  CConnection *ConnectionByNetworkId; // r0
  int v11; // r7
  _DWORD *v12; // r5
  void (__fastcall *v13)(int, int, int); // r3
  void (__fastcall *v14)(unsigned __int16 *, int, int); // r12

  v8 = (CConnectionManager *)CNetMutex::Lock(&CConnectionManager::m_connections_mutex);
  Instance = CConnectionManager::GetInstance(v8);
  if ( (unsigned int)(a1 - 7) <= 1 || CConnectionManager::IsPacketTypeRegistered(a1) )
  {
    ConnectionByNetworkId = (CConnection *)CConnectionManager::GetConnectionByNetworkId(Instance, a2);
    if ( ConnectionByNetworkId )
    {
      v11 = *((_DWORD *)ConnectionByNetworkId + 7);
      CConnection::SetLastRecvTime(ConnectionByNetworkId);
      v12 = &CConnectionManager::s_recvCBMap[3 * a1];
      v13 = (void (__fastcall *)(int, int, int))v12[1];
      v14 = (void (__fastcall *)(unsigned __int16 *, int, int))v12[2];
      if ( v13 )
      {
        v13(v11, a3, a4);
        return CNetMutex::Unlock(&CConnectionManager::m_connections_mutex);
      }
    }
    else
    {
      v14 = (void (__fastcall *)(unsigned __int16 *, int, int))CConnectionManager::s_recvCBMap[3 * a1 + 2];
    }
    if ( v14 )
      v14(a2, a3, a4);
  }
  return CNetMutex::Unlock(&CConnectionManager::m_connections_mutex);
}


// ===== 7fc33c CConnectionManager::UnregisterPacketType(tPACKET_TYPE) =====
int __fastcall CConnectionManager::UnregisterPacketType(int a1)
{
  _DWORD *v1; // r2

  v1 = &CConnectionManager::s_recvCBMap[3 * a1];
  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  return -1;
}


// ===== 7fc384 CNetworkId::Reset(void) =====
_DWORD *__fastcall CNetworkId::Reset(_DWORD *this)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 6) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}


// ===== 7fc3ac CConnectionManager::SendTo(tPACKET_TYPE,CNetworkId &,void *,int) =====
int __fastcall CConnectionManager::SendTo(int a1, int a2, int a3, int a4, int a5)
{
  int PacketTransportType; // r7
  int TransportMgr; // r0

  PacketTransportType = CConnectionManager::GetPacketTransportType(a1, a2);
  TransportMgr = GetTransportMgr();
  return CTransportManager::Send(TransportMgr, PacketTransportType, a3, a2, a4, a5);
}


// ===== 7fc3ec CConnectionManager::SendBroadcast(tPACKET_TYPE,void *,int) =====
int __fastcall CConnectionManager::SendBroadcast(int a1, int a2, int a3, int a4)
{
  int TransportMgr; // r8
  int PacketTransportType; // r0

  TransportMgr = GetTransportMgr();
  PacketTransportType = CConnectionManager::GetPacketTransportType(a1, a2);
  return CTransportManager::Send(TransportMgr, PacketTransportType, a2, a3, a4);
}


// ===== 7fc438 CConnectionManager::GetConnectionByMemberId(int) =====
unsigned int __fastcall CConnectionManager::GetConnectionByMemberId(CConnectionManager *this, int a2)
{
  CConnectionManager *v3; // r4
  CMatching *v4; // r0
  unsigned int result; // r0
  bool v6; // cc

  v3 = this;
  v4 = (CMatching *)CMatching::Get(this);
  result = CMatching::GetMemberIndex(v4, a2);
  v6 = result > 0x1F;
  if ( result > 0x1F )
    result = 0;
  else
    v3 = (CConnectionManager *)((char *)v3 + 4 * result);
  if ( !v6 )
    return *((_DWORD *)v3 + 7);
  return result;
}


// ===== 7fc464 CConnectionManager::PingReceiverCallback(CNetworkId &,char *,int) =====
unsigned int __fastcall CConnectionManager::PingReceiverCallback(
        CConnectionManager *this,
        CNetworkId *a2,
        char *a3,
        int a4)
{
  unsigned int result; // r0
  int v7[5]; // [sp+8h] [bp-14h] BYREF

  memcpy(v7, a3, 0x10u);
  if ( LOBYTE(v7[3]) )
  {
    LOBYTE(v7[3]) = 0;
    return CConnectionManager::SendTo((int)this, 0, (int)a2, (int)v7, 16);
  }
  else
  {
    result = CConnectionManager::GetConnectionByMemberId(this, v7[1]);
    if ( result )
      return CConnection::ProcessPing(result, v7);
  }
  return result;
}


// ===== 7fc4e0 CConnectionManager::sPingReceiverCallback(CNetworkId &,char *,int) =====
unsigned int __fastcall CConnectionManager::sPingReceiverCallback(
        CConnectionManager *this,
        CNetworkId *a2,
        char *a3,
        int a4)
{
  CConnectionManager *Instance; // r0

  Instance = (CConnectionManager *)CConnectionManager::GetInstance(this);
  return CConnectionManager::PingReceiverCallback(Instance, this, (char *)a2, (int)a3);
}


// ===== 7fc508 CConnectionManager::ProcessConnectionFinalize(CNetworkId &,NetBitStream &) =====
CConnection *__fastcall CConnectionManager::ProcessConnectionFinalize(
        CConnectionManager *this,
        CNetworkId *a2,
        NetBitStream *a3)
{
  CConnection *result; // r0
  CConnection *v6; // [sp+0h] [bp-14h] BYREF

  NetBitStream::ReadByteArray(a3, &v6, 0x10u);
  result = (CConnection *)CConnectionManager::GetMemberId((int)this, (unsigned __int16 *)a2);
  if ( result == v6 )
  {
    result = (CConnection *)CConnectionManager::GetConnectionByMemberId(this, (int)result);
    if ( result )
      return (CConnection *)CConnection::ProcessConnectFinalize(result, a2);
  }
  return result;
}


// ===== 7fc568 CConnectionManager::ProcessConnectionResponse(CNetworkId &,NetBitStream &) =====
CMatching *__fastcall CConnectionManager::ProcessConnectionResponse(
        CConnectionManager *this,
        CNetworkId *a2,
        NetBitStream *a3)
{
  CConnection *MemberId; // r0
  CMatching *v6; // r4
  int v7; // r0
  CMatching *result; // r0
  int v9; // r0
  CConnection *v10; // [sp+0h] [bp-14h] BYREF
  CMatching *v11; // [sp+4h] [bp-10h]

  NetBitStream::ReadByteArray(a3, &v10, 0x10u);
  MemberId = (CConnection *)CConnectionManager::GetMemberId((int)this, (unsigned __int16 *)a2);
  if ( MemberId == v10 )
  {
    MemberId = (CConnection *)CConnectionManager::GetConnectionByMemberId(this, (int)MemberId);
    if ( MemberId )
      MemberId = (CConnection *)CConnection::ProcessConnectResponse(MemberId, a2);
  }
  v6 = v11;
  v7 = CMatching::Get(MemberId);
  result = (CMatching *)(*(int (__fastcall **)(int))(*(_DWORD *)v7 + 108))(v7);
  if ( v6 != result )
  {
    v9 = CMatching::Get(result);
    return (CMatching *)(*(int (__fastcall **)(int, CMatching *))(*(_DWORD *)v9 + 112))(v9, v11);
  }
  return result;
}


// ===== 7fc5f8 CConnectionManager::SendTo(tPACKET_TYPE,int,void *,int) =====
int __fastcall CConnectionManager::SendTo(CConnectionManager *a1, int a2, int a3, int a4, int a5)
{
  unsigned int ConnectionByMemberId; // r0

  ConnectionByMemberId = CConnectionManager::GetConnectionByMemberId(a1, a3);
  if ( ConnectionByMemberId )
    return (*(int (__fastcall **)(unsigned int, int, int, int))(*(_DWORD *)ConnectionByMemberId + 24))(
             ConnectionByMemberId,
             a2,
             a4,
             a5);
  else
    return 0;
}


// ===== 7fc638 CConnectionManager::SendToServer(tPACKET_TYPE,void *,int) =====
int __fastcall CConnectionManager::SendToServer(CMatching *a1, int a2, int a3, int a4)
{
  int v8; // r0
  int v9; // r0

  v8 = CMatching::Get(a1);
  v9 = (*(int (__fastcall **)(int))(*(_DWORD *)v8 + 116))(v8);
  return CConnectionManager::SendTo(a1, a2, v9, a3, a4);
}


// ===== 7fc680 CConnectionManager::DisconnectPeer(int) =====
int __fastcall CConnectionManager::DisconnectPeer(CConnectionManager *this, int a2)
{
  unsigned int ConnectionByMemberId; // r0

  ConnectionByMemberId = CConnectionManager::GetConnectionByMemberId(this, a2);
  if ( ConnectionByMemberId )
    return (*(int (__fastcall **)(unsigned int))(*(_DWORD *)ConnectionByMemberId + 16))(ConnectionByMemberId);
  else
    return 0;
}


// ===== 7fc6a8 CConnectionManager::GetMemberNetworkId(int) =====
CConnectionManager *__fastcall CConnectionManager::GetMemberNetworkId(
        CConnectionManager *this,
        CConnectionManager *a2,
        int a3)
{
  _DWORD *ConnectionByMemberId; // r0
  int v5; // r1
  int v6; // r2
  int v7; // r3
  int v8; // r1
  int v9; // r2

  ConnectionByMemberId = (_DWORD *)CConnectionManager::GetConnectionByMemberId(a2, a3);
  if ( ConnectionByMemberId )
  {
    v5 = ConnectionByMemberId[9];
    v6 = ConnectionByMemberId[10];
    v7 = ConnectionByMemberId[11];
    *(_DWORD *)this = ConnectionByMemberId[8];
    *((_DWORD *)this + 1) = v5;
    *((_DWORD *)this + 2) = v6;
    *((_DWORD *)this + 3) = v7;
    v8 = ConnectionByMemberId[13];
    v9 = ConnectionByMemberId[14];
    *((_DWORD *)this + 4) = ConnectionByMemberId[12];
    *((_DWORD *)this + 5) = v8;
    *((_DWORD *)this + 6) = v9;
  }
  else
  {
    CNetworkId::Reset(this);
  }
  return this;
}


// ===== 7fc6f4 CConnectionManager::IsConnected(int) =====
unsigned int __fastcall CConnectionManager::IsConnected(CConnectionManager *this, int a2)
{
  unsigned int result; // r0

  result = CConnectionManager::GetConnectionByMemberId(this, a2);
  if ( result )
    return *(_DWORD *)(result + 24) == 4;
  return result;
}


// ===== 7fc718 CConnectionManager::Disconnect(int,bool) =====
int __fastcall CConnectionManager::Disconnect(CConnectionManager *this, int a2, int a3)
{
  CMatching *v5; // r0
  CMatching *IsServer; // r0
  CMatching *v7; // r0
  int v8; // r1
  int v10; // r0
  int v11; // r0
  CConnectionManager *v12; // r0
  int ConnectionMgr; // r0
  int v14; // r3
  int v15; // [sp+4h] [bp-34h] BYREF
  _BYTE v16[4]; // [sp+Ch] [bp-2Ch] BYREF
  int v17; // [sp+10h] [bp-28h]
  unsigned int v18; // [sp+1Ch] [bp-1Ch]
  int v19; // [sp+2Ch] [bp-Ch] BYREF
  char v20; // [sp+30h] [bp-8h]
  char v21[4]; // [sp+34h] [bp-4h] BYREF

  v15 = a2;
  v5 = (CMatching *)CMatching::Get(this);
  IsServer = (CMatching *)CMatching::IsServer(v5);
  if ( IsServer )
  {
    IsServer = (CMatching *)CConnectionManager::IsConnected(this, v15);
    if ( IsServer )
    {
      v19 = v15;
      v20 = a3;
      NetBitStream::NetBitStream((NetBitStream *)v16, 0x800u);
      v21[0] = 3;
      NetBitStream::WriteByteArray((NetBitStream *)v16, v21, 1u);
      v12 = (CConnectionManager *)NetBitStream::WriteByteArray((NetBitStream *)v16, &v19, 8u);
      ConnectionMgr = GetConnectionMgr(v12);
      v14 = v18 & 7;
      if ( (v18 & 7) != 0 )
        v14 = 1;
      CConnectionManager::SendToAll(ConnectionMgr, 5, v17, v14 + (v18 >> 3));
      NetBitStream::~NetBitStream((NetBitStream *)v16);
    }
  }
  v7 = (CMatching *)CMatching::Get(IsServer);
  if ( CMatching::IsServer(v7) )
  {
    v8 = v15;
LABEL_5:
    CConnectionManager::DisconnectPeer(this, v8);
    goto LABEL_6;
  }
  v10 = CMatching::Get(nullptr);
  v11 = (*(int (__fastcall **)(int))(*(_DWORD *)v10 + 108))(v10);
  v8 = v15;
  if ( v11 != v15 )
    goto LABEL_5;
  CConnectionManager::DisconnectAll(this);
LABEL_6:
  if ( a3 )
    CEventQueueBase::AddEvent((CConnectionManager *)((char *)this + 8), 6291460, &v15, 4);
  return 0;
}


// ===== 7fc830 CConnectionManager::ProcessDisconnect(CNetworkId &,NetBitStream &) =====
int __fastcall CConnectionManager::ProcessDisconnect(CConnectionManager *this, CNetworkId *a2, NetBitStream *a3)
{
  int v5; // [sp+0h] [bp-8h] BYREF
  bool v6; // [sp+4h] [bp-4h]

  NetBitStream::ReadByteArray(a3, &v5, 8u);
  return CConnectionManager::Disconnect(this, v5, v6);
}


// ===== 7fc864 CConnectionManager::ProcessDisconnectPeer(CNetworkId &,NetBitStream &) =====
CMatching *__fastcall CConnectionManager::ProcessDisconnectPeer(
        CConnectionManager *this,
        CNetworkId *a2,
        NetBitStream *a3)
{
  CMatching *result; // r0
  CMatching *v5; // r0
  int v6; // [sp+4h] [bp-4h] BYREF

  NetBitStream::ReadByteArray(a3, &v6, 4u);
  result = (CMatching *)CConnectionManager::IsConnected(this, v6);
  if ( result )
  {
    v5 = (CMatching *)CMatching::Get(result);
    if ( CMatching::IsServer(v5) )
      return (CMatching *)CConnectionManager::Disconnect(this, v6, 0);
    else
      return (CMatching *)CConnectionManager::DisconnectPeer(this, v6);
  }
  return result;
}


// ===== 7fc8d0 CConnectionManager::AddConnection(int,CConnection *) =====
int __fastcall CConnectionManager::AddConnection(CConnectionManager *this, int a2, CConnection *a3)
{
  CMatching *v6; // r0
  int result; // r0
  _BOOL4 v8; // r3
  char *v9; // r6

  v6 = (CMatching *)CMatching::Get(this);
  result = CMatching::GetMemberIndex(v6, a2);
  v8 = result >= 0;
  if ( !a3 )
    v8 = 0;
  if ( !v8 )
    return -1;
  if ( result > 31 )
    return -1;
  v9 = (char *)this + 4 * result + 24;
  if ( *((_DWORD *)v9 + 1) )
    return -1;
  *((_DWORD *)v9 + 1) = a3;
  return result;
}


// ===== 7fc930 CConnectionManager::Connect(int,CNetworkId &) =====
int __fastcall CConnectionManager::Connect(CConnectionManager *this, int a2, CNetworkId *a3)
{
  unsigned int ConnectionByMemberId; // r3
  CConnection *v7; // r4
  int v8; // r7

  ConnectionByMemberId = CConnectionManager::GetConnectionByMemberId(this, a2);
  if ( !ConnectionByMemberId )
  {
    v7 = (CConnection *)operator new(0x1C0u, 2);
    CConnection::CConnection(v7);
    v8 = CConnectionManager::AddConnection(this, a2, v7);
    ConnectionByMemberId = (unsigned int)v7;
    if ( v8 < 0 )
    {
      if ( v7 )
        (*(void (__fastcall **)(CConnection *))(*(_DWORD *)v7 + 4))(v7);
      return v8;
    }
    if ( !v7 )
      return -1;
  }
  return (*(int (__fastcall **)(unsigned int, int, CNetworkId *))(*(_DWORD *)ConnectionByMemberId + 8))(
           ConnectionByMemberId,
           a2,
           a3);
}


// ===== 7fc9cc CConnectionManager::Accept(int,CNetworkId &,ulong long) =====
int __fastcall CConnectionManager::Accept(
        CConnectionManager *this,
        int a2,
        CNetworkId *a3,
        int a4,
        unsigned __int64 a5)
{
  _DWORD *ConnectionByMemberId; // r3
  CConnection *v9; // r4
  int v10; // r7

  ConnectionByMemberId = (_DWORD *)CConnectionManager::GetConnectionByMemberId(this, a2);
  if ( ConnectionByMemberId )
    return (*(int (__fastcall **)(_DWORD *, int, CNetworkId *, _DWORD, _DWORD, _DWORD))(*ConnectionByMemberId + 12))(
             ConnectionByMemberId,
             a2,
             a3,
             *ConnectionByMemberId,
             a5,
             HIDWORD(a5));
  v9 = (CConnection *)operator new(0x1C0u, 2);
  CConnection::CConnection(v9);
  v10 = CConnectionManager::AddConnection(this, a2, v9);
  ConnectionByMemberId = v9;
  if ( v10 >= 0 )
  {
    if ( !v9 )
      return -1;
    return (*(int (__fastcall **)(_DWORD *, int, CNetworkId *, _DWORD, _DWORD, _DWORD))(*ConnectionByMemberId + 12))(
             ConnectionByMemberId,
             a2,
             a3,
             *ConnectionByMemberId,
             a5,
             HIDWORD(a5));
  }
  if ( v9 )
    (*(void (__fastcall **)(CConnection *))(*(_DWORD *)v9 + 4))(v9);
  return v10;
}


// ===== 7fca74 CConnectionManager::ProcessConnectionRequest(CNetworkId &,NetBitStream &) =====
int __fastcall CConnectionManager::ProcessConnectionRequest(CConnectionManager *this, CNetworkId *a2, NetBitStream *a3)
{
  int v5; // r1
  int v6; // r3
  unsigned int v7; // r12
  CConnectionManager *v9; // r1
  CMatching *v10; // r0
  _DWORD *v11; // r2
  int v12; // r0
  int v13; // [sp+8h] [bp-14h] BYREF
  int v14; // [sp+10h] [bp-Ch]
  unsigned int v15; // [sp+14h] [bp-8h]

  NetBitStream::ReadByteArray(a3, &v13, 0x10u);
  v5 = v13;
  if ( v13 < 0 )
  {
    v6 = v14;
    v7 = v15;
    v9 = this;
    v10 = nullptr;
    while ( 1 )
    {
      v11 = *((_DWORD **)v9 + 7);
      v10 = (CMatching *)((char *)v10 + 1);
      v9 = (CConnectionManager *)((char *)v9 + 4);
      if ( v11 )
      {
        if ( v11[110] == v14 && v11[111] == v15 )
          break;
      }
      if ( v10 == (CMatching *)&dword_20 )
        goto LABEL_10;
    }
    v5 = v11[7];
    if ( v5 >= 0 )
      return CConnectionManager::Accept(this, v5, a2, v6, __PAIR64__(v7, v6));
LABEL_10:
    v12 = CMatching::Get(v10);
    v5 = (*(int (__fastcall **)(int))(*(_DWORD *)v12 + 172))(v12);
  }
  v6 = v14;
  v7 = v15;
  return CConnectionManager::Accept(this, v5, a2, v6, __PAIR64__(v7, v6));
}


// ===== 7fcb2c CConnectionManager::PacketReceiverCallback(CNetworkId &,char *,int) =====
void __fastcall CConnectionManager::PacketReceiverCallback(
        CConnectionManager *this,
        CNetworkId *a2,
        char *a3,
        unsigned int a4)
{
  _BYTE v8[32]; // [sp+4h] [bp-24h] BYREF
  _BYTE v9[4]; // [sp+24h] [bp-4h] BYREF

  NetBitStream::NetBitStream((NetBitStream *)v8, a4);
  NetBitStream::SetBuffer((NetBitStream *)v8, a3, a4);
  NetBitStream::ReadByteArray((NetBitStream *)v8, v9, 1u);
  switch ( v9[0] )
  {
    case 0:
      CConnectionManager::ProcessConnectionRequest(this, a2, (NetBitStream *)v8);
      break;
    case 1:
      CConnectionManager::ProcessConnectionResponse(this, a2, (NetBitStream *)v8);
      break;
    case 2:
      CConnectionManager::ProcessConnectionFinalize(this, a2, (NetBitStream *)v8);
      break;
    case 3:
      CConnectionManager::ProcessDisconnect(this, a2, (NetBitStream *)v8);
      break;
    case 4:
      CConnectionManager::ProcessDisconnectPeer(this, a2, (NetBitStream *)v8);
      break;
    default:
      break;
  }
  NetBitStream::~NetBitStream((NetBitStream *)v8);
}


// ===== 7fcc08 CConnectionManager::sPacketReceiverCallback(CNetworkId &,char *,int) =====
void __fastcall CConnectionManager::sPacketReceiverCallback(CConnectionManager *this, CNetworkId *a2, char *a3, int a4)
{
  CConnectionManager *Instance; // r0

  Instance = (CConnectionManager *)CConnectionManager::GetInstance(this);
  CConnectionManager::PacketReceiverCallback(Instance, this, (char *)a2, (unsigned int)a3);
}


// ===== 7fcc30 CConnectionManager::Update(void) =====
int __fastcall CConnectionManager::Update(CConnectionManager *this)
{
  int v2; // r5
  CTransportManager *TransportMgr; // r0
  CConnectionManager *v4; // r4
  CTransportManager *v5; // r0
  int v6; // r3

  v2 = 0;
  TransportMgr = (CTransportManager *)GetTransportMgr();
  CTransportManager::Update(TransportMgr);
  v4 = this;
  do
  {
    while ( 1 )
    {
      ++v2;
      if ( *((_DWORD *)v4 + 7) )
      {
        (*(void (__fastcall **)(_DWORD))(**((_DWORD **)v4 + 7) + 20))(*((_DWORD *)v4 + 7));
        if ( *(_DWORD *)(*((_DWORD *)v4 + 7) + 24) == 1 )
          break;
      }
      v4 = (CConnectionManager *)((char *)v4 + 4);
      if ( v2 == 32 )
        goto LABEL_8;
    }
    v5 = (CTransportManager *)GetTransportMgr();
    CTransportManager::Disconnect(v5, (CNetworkId *)(*((_DWORD *)v4 + 7) + 32));
    CNetMutex::Lock(&CConnectionManager::m_connections_mutex);
    v6 = *((_DWORD *)v4 + 7);
    if ( v6 )
    {
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 4))(*((_DWORD *)v4 + 7));
      *((_DWORD *)v4 + 7) = 0;
    }
    CNetMutex::Unlock(&CConnectionManager::m_connections_mutex);
    v4 = (CConnectionManager *)((char *)v4 + 4);
  }
  while ( v2 != 32 );
LABEL_8:
  CConnectionManager::PingConnections(this);
  CConnectionManager::PrintStatistics(this);
  return 0;
}


// ===== 7fcd00 CEventQueue<CConnectionManager::EVENTS,100u>::Clear(void) =====
// attributes: thunk
int __fastcall CEventQueue<CConnectionManager::EVENTS,100u>::Clear(CEventQueueBase *a1)
{
  return CEventQueueBase::Clear(a1);
}


// ===== 7fcd04 CConnectionManager::TerminateInternal(void) =====
int __fastcall CConnectionManager::TerminateInternal(CConnectionManager *this)
{
  int v1; // r5
  CConnectionManager *v3; // r4
  int v4; // r3
  CTransportManager *v5; // r0

  v1 = 0;
  *((_BYTE *)this + 168) = 0;
  CConnectionManager::DisconnectAll(this);
  v3 = this;
  do
  {
    CNetMutex::Lock(&CConnectionManager::m_connections_mutex);
    v4 = *((_DWORD *)v3 + 7);
    ++v1;
    if ( v4 )
    {
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 4))(*((_DWORD *)v3 + 7));
      *((_DWORD *)v3 + 7) = 0;
    }
    v5 = (CTransportManager *)CNetMutex::Unlock(&CConnectionManager::m_connections_mutex);
    v3 = (CConnectionManager *)((char *)v3 + 4);
  }
  while ( v1 != 32 );
  CTransportManager::Terminate(v5);
  CConnectionManager::UnregisterPacketType(5);
  CConnectionManager::UnregisterPacketType(0);
  return CEventQueueBase::Clear((CConnectionManager *)((char *)this + 8));
}


// ===== 7fcd98 CConnectionManager::Terminate(void) =====
int __fastcall CConnectionManager::Terminate(CConnectionManager *this)
{
  int result; // r0

  result = CConnectionManager::s_connectionManager;
  if ( CConnectionManager::s_connectionManager )
  {
    result = CConnectionManager::TerminateInternal((CConnectionManager *)CConnectionManager::s_connectionManager);
    if ( CConnectionManager::s_connectionManager )
    {
      result = (*(int (__fastcall **)(int))(*(_DWORD *)CConnectionManager::s_connectionManager + 4))(CConnectionManager::s_connectionManager);
      CConnectionManager::s_connectionManager = 0;
    }
  }
  return result;
}


// ===== 7fcdec CConnectionManager::InitializeInternal(void) =====
int __fastcall CConnectionManager::InitializeInternal(CConnectionManager *this)
{
  CMatching *v2; // r0
  int v3; // r0
  CMatching *v4; // r0
  int v5; // r0
  CMatching *v6; // r0
  int v7; // r0
  CTransportManager *v8; // r0
  int TransportMgr; // r0
  int v10; // r0
  int v11; // r0

  CConnectionManager::RegisterPacketType(5, 0, (int)CConnectionManager::sPacketReceiverCallback);
  v2 = (CMatching *)CConnectionManager::RegisterPacketType(0, 0, (int)CConnectionManager::sPingReceiverCallback);
  v3 = CMatching::Get(v2);
  v4 = (CMatching *)(*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v3 + 52))(v3, 0);
  *((_DWORD *)this + 39) = v4;
  v5 = CMatching::Get(v4);
  v6 = (CMatching *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v5 + 52))(v5, 1);
  *((_DWORD *)this + 40) = v6;
  v7 = CMatching::Get(v6);
  *((_DWORD *)this + 41) = (*(int (__fastcall **)(int, int))(*(_DWORD *)v7 + 52))(v7, 2);
  v8 = (CTransportManager *)LC_API_MEMSET_0((char *)this + 28, 0, 0x80u);
  CTransportManager::Initialize(v8);
  TransportMgr = GetTransportMgr();
  CTransportManager::InitializeTransport(TransportMgr, *((_DWORD *)this + 39));
  v10 = GetTransportMgr();
  CTransportManager::InitializeTransport(v10, *((_DWORD *)this + 40));
  v11 = GetTransportMgr();
  CTransportManager::InitializeTransport(v11, *((_DWORD *)this + 41));
  *((_BYTE *)this + 168) = 1;
  return 0;
}


// ===== 7fcec0 CConnectionManager::Initialize(void) =====
int __fastcall CConnectionManager::Initialize(CConnectionManager *this)
{
  CConnectionManager *v1; // r5

  v1 = (CConnectionManager *)CConnectionManager::s_connectionManager;
  if ( CConnectionManager::s_connectionManager )
    return CConnectionManager::InitializeInternal(v1);
  v1 = (CConnectionManager *)operator new(0xACu, 2);
  CConnectionManager::CConnectionManager(v1);
  CConnectionManager::s_connectionManager = (int)v1;
  if ( v1 )
    return CConnectionManager::InitializeInternal(v1);
  else
    return -1;
}


// ===== 7fcf1c `global constructor keyed to'.._src_generic_ConnectionManager.cpp =====
int `global constructor keyed to'.._src_generic_ConnectionManager.cpp()
{
  int result; // r0
  int *v1; // r3

  CNetMutex::CNetMutex((CNetMutex *)&CConnectionManager::m_connections_mutex);
  result = _aeabi_atexit((int)&CConnectionManager::m_connections_mutex, (int)CNetMutex::~CNetMutex, (int)&_dso_handle);
  v1 = &CConnectionManager::s_recvCBMap[3];
  do
  {
    *(v1 - 3) = 0;
    *(v1 - 2) = 0;
    *(v1 - 1) = 0;
    v1 += 3;
  }
  while ( v1 != &CMatching::m_eventQueueInternal );
  return result;
}


// ===== 7fcf94 CConnectionManager::GetServerPing(void) =====
int __fastcall CConnectionManager::GetServerPing(CConnectionManager *this)
{
  CMatching *v2; // r0
  int v4; // r0
  int v5; // r0
  unsigned int ConnectionByMemberId; // r0
  unsigned int v7; // r6
  CReadWriteLock *v8; // r5
  clock_t v9; // r0
  int v10; // r1
  _DWORD *v11; // lr
  _DWORD *v12; // r6
  int v13; // r3
  _DWORD *v14; // r12
  int v15; // r4
  _DWORD *v16; // r12
  _DWORD *v17; // r12

  v2 = (CMatching *)CMatching::Get(this);
  if ( CMatching::IsServer(v2) )
    return 0;
  v4 = CMatching::Get(nullptr);
  v5 = (*(int (__fastcall **)(int))(*(_DWORD *)v4 + 116))(v4);
  ConnectionByMemberId = CConnectionManager::GetConnectionByMemberId(this, v5);
  v7 = ConnectionByMemberId;
  if ( !ConnectionByMemberId )
    return 0;
  v8 = (CReadWriteLock *)(ConnectionByMemberId + 380);
  CReadWriteLock::LockRead((CReadWriteLock *)(ConnectionByMemberId + 380));
  v9 = clock();
  if ( !*(_DWORD *)(v7 + 400) )
    goto LABEL_17;
  v10 = 0;
  v11 = *(_DWORD **)(v7 + 392);
  v12 = (_DWORD *)(v7 + 384);
  v13 = 0;
  while ( v12 != v11 )
  {
    if ( *(_BYTE *)v12 || v12 != *(_DWORD **)(v12[1] + 4) )
    {
      v14 = (_DWORD *)v12[2];
      if ( v14 )
      {
        while ( v14[3] )
          v14 = (_DWORD *)v14[3];
      }
      else
      {
        v14 = (_DWORD *)v12[1];
        if ( v12 == (_DWORD *)v14[2] )
        {
          while ( *(_DWORD **)(v14[1] + 8) == v14 )
            v14 = (_DWORD *)v14[1];
          v14 = (_DWORD *)v14[1];
        }
      }
    }
    else
    {
      v14 = (_DWORD *)v12[3];
    }
    if ( v9 - v14[4] > 30000000 )
      break;
    if ( *(_BYTE *)v12 || v12 != *(_DWORD **)(v12[1] + 4) )
    {
      v16 = (_DWORD *)v12[2];
      if ( v16 )
      {
        while ( v16[3] )
          v16 = (_DWORD *)v16[3];
      }
      else
      {
        v16 = (_DWORD *)v12[1];
        if ( v12 == (_DWORD *)v16[2] )
        {
          while ( *(_DWORD **)(v16[1] + 8) == v16 )
            v16 = (_DWORD *)v16[1];
          v16 = (_DWORD *)v16[1];
        }
      }
    }
    else
    {
      v16 = (_DWORD *)v12[3];
    }
    ++v10;
    v13 += v16[5];
    if ( !*(_BYTE *)v12 && v12 == *(_DWORD **)(v12[1] + 4) )
    {
      v17 = (_DWORD *)v12[3];
      goto LABEL_33;
    }
    v17 = (_DWORD *)v12[2];
    if ( v17 )
    {
      while ( v17[3] )
        v17 = (_DWORD *)v17[3];
LABEL_33:
      v12 = v17;
    }
    else
    {
      v17 = (_DWORD *)v12[1];
      if ( v12 != (_DWORD *)v17[2] )
        goto LABEL_33;
      while ( *(_DWORD **)(v17[1] + 8) == v17 )
        v17 = (_DWORD *)v17[1];
      v12 = (_DWORD *)v17[1];
    }
  }
  if ( v10 )
  {
    v15 = (int)(float)(v13 / v10);
    goto LABEL_18;
  }
LABEL_17:
  v15 = 0;
LABEL_18:
  CReadWriteLock::UnlockRead(v8);
  return v15;
}


// ===== 7fd1bc std::vector<int,std::allocator<int>>::_M_insert_overflow(int *,int const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<int>::_M_insert_overflow(int a1, int a2, _DWORD *a3)
{
  unsigned int v5; // r3
  unsigned int v6; // r1
  char *v8; // r0
  char *v9; // r5
  size_t v10; // r6
  char *v11; // r6
  _DWORD *v12; // r6
  void *v13; // r0
  size_t v14; // r1
  size_t v15; // r3
  size_t v16; // [sp+4h] [bp-8h] BYREF

  v5 = (*(_DWORD *)(a1 + 4) - *(_DWORD *)a1) >> 2;
  if ( v5 )
    v6 = 2 * v5;
  else
    v6 = 1;
  if ( v6 > 0x3FFFFFFF || v5 > v6 )
    v6 = 0x3FFFFFFF;
  v16 = v6;
  v8 = (char *)std::allocator<int>::_M_allocate(a1 + 8, v6, &v16);
  v9 = v8;
  v10 = a2 - *(_DWORD *)a1;
  if ( v10 )
    v11 = (char *)memmove(v8, *(const void **)a1, v10) + v10;
  else
    v11 = v8;
  *(_DWORD *)v11 = *a3;
  v12 = v11 + 4;
  v13 = *(void **)a1;
  if ( *(_DWORD *)a1 )
  {
    v14 = (*(_DWORD *)(a1 + 8) - (_DWORD)v13) & 0xFFFFFFFC;
    if ( v14 > 0x80 )
      CustomFree(v13);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v13, v14);
  }
  v15 = v16;
  *(_DWORD *)a1 = v9;
  *(_DWORD *)(a1 + 4) = v12;
  *(_DWORD *)(a1 + 8) = &v9[4 * v15];
}


// ===== 7fd284 CConnectionManager::GetConnMemberIdList(bool) =====
CConnectionManager *__fastcall CConnectionManager::GetConnMemberIdList(CConnectionManager *this, int a2, int a3)
{
  CMatching *v6; // r0
  int v7; // r5
  int v8; // r2
  _DWORD *v9; // r1
  int v11; // r0
  int v12; // r0
  int *v13; // r1
  int *v14; // r3
  int v15; // [sp+4h] [bp-4h] BYREF

  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  v6 = (CMatching *)CMatching::Get(this);
  if ( CMatching::IsServer(v6) || a3 )
  {
    v7 = 0;
    while ( 1 )
    {
      v8 = *(_DWORD *)(a2 + 28);
      if ( !v8 )
        goto LABEL_5;
      v9 = *((_DWORD **)this + 1);
      if ( v9 == *((_DWORD **)this + 2) )
      {
        ++v7;
        std::vector<int>::_M_insert_overflow((int)this, (int)v9, (_DWORD *)(v8 + 28));
        a2 += 4;
        if ( v7 == 32 )
          return this;
      }
      else
      {
        *v9 = *(_DWORD *)(v8 + 28);
        *((_DWORD *)this + 1) += 4;
LABEL_5:
        ++v7;
        a2 += 4;
        if ( v7 == 32 )
          return this;
      }
    }
  }
  v11 = CMatching::Get(nullptr);
  v12 = (*(int (__fastcall **)(int))(*(_DWORD *)v11 + 116))(v11);
  v13 = *((int **)this + 1);
  v14 = *((int **)this + 2);
  v15 = v12;
  if ( v13 == v14 )
  {
    std::vector<int>::_M_insert_overflow((int)this, (int)v13, &v15);
  }
  else
  {
    *v13 = v12;
    *((_DWORD *)this + 1) += 4;
  }
  return this;
}


// ===== 7fd370 std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear(void) =====
void __fastcall std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear(void **a1)
{
  void (__fastcall ***v1)(int); // r6
  void (__fastcall **v3)(int); // r4

  v1 = (void (__fastcall ***)(int))*a1;
  if ( *a1 != a1 )
  {
    while ( 1 )
    {
      v3 = *v1;
      (*v1[2])((int)(v1 + 2));
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v1, 0x1Cu);
      if ( v3 == (void (__fastcall **)(int))a1 )
        break;
      v1 = (void (__fastcall ***)(int))v3;
    }
    v1 = (void (__fastcall ***)(int))a1;
  }
  a1[1] = v1;
  *a1 = v1;
}


// ===== 7fd3c4 CEventQueue<CConnectionManager::EVENTS,100u>::~CEventQueue() =====
int __fastcall CEventQueue<CConnectionManager::EVENTS,100u>::~CEventQueue(int a1)
{
  *(_DWORD *)a1 = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)(a1 + 8));
  CNetMutex::~CNetMutex((CNetMutex *)(a1 + 4));
  return a1;
}


// ===== 7fd400 CConnectionManager::~CConnectionManager() =====
void __fastcall CConnectionManager::~CConnectionManager(CConnectionManager *this)
{
  *(_DWORD *)this = off_991D00;
  *((_DWORD *)this + 2) = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)this + 4);
  CNetMutex::~CNetMutex((CConnectionManager *)((char *)this + 12));
}


// ===== 7fd454 CConnectionManager::~CConnectionManager() =====
void __fastcall CConnectionManager::~CConnectionManager(CConnectionManager *this)
{
  CConnectionManager::~CConnectionManager(this);
  CustomFree(this);
}


// ===== 7fd470 CEventQueue<CConnectionManager::EVENTS,100u>::~CEventQueue() =====
void **__fastcall CEventQueue<CConnectionManager::EVENTS,100u>::~CEventQueue(void **a1)
{
  *a1 = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear(a1 + 2);
  CNetMutex::~CNetMutex((CNetMutex *)(a1 + 1));
  CustomFree(a1);
  return a1;
}


// ===== 7fd4b4 CConnectionManager::~CConnectionManager() =====
void __fastcall CConnectionManager::~CConnectionManager(CConnectionManager *this)
{
  *(_DWORD *)this = off_991D00;
  *((_DWORD *)this + 2) = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)this + 4);
  CNetMutex::~CNetMutex((CConnectionManager *)((char *)this + 12));
}


// ===== 7fd508 COnline::DetectDisconnect(void) =====
void __fastcall COnline::DetectDisconnect(COnline *this)
{
  ;
}


// ===== 7fd50c COnline::SetIsOnlineGame(bool) =====
int __fastcall COnline::SetIsOnlineGame(int this, bool a2)
{
  *(_BYTE *)(this + 5) = a2;
  return this;
}


// ===== 7fd514 COnline::IsAgeRestricted(void) =====
int __fastcall COnline::IsAgeRestricted(COnline *this)
{
  return 0;
}


// ===== 7fd51c COnline::ReportDisconnect(COnline::tDisconnectCause,int) =====
int __fastcall COnline::ReportDisconnect(int a1, int a2, int a3)
{
  _BOOL4 v3; // r3
  CEventQueueBase *v4; // r0
  int v5; // r1
  int *v6; // r2
  int v8; // [sp+0h] [bp-Ch] BYREF
  int v9; // [sp+4h] [bp-8h] BYREF

  v3 = a2 == 0;
  if ( a3 )
    v3 = 1;
  v9 = a2;
  v8 = a3;
  v4 = (CEventQueueBase *)(a1 + 8);
  if ( v3 )
  {
    v5 = 5242883;
    v6 = &v8;
  }
  else
  {
    v5 = 5242882;
    v6 = &v9;
  }
  return CEventQueueBase::AddEvent(v4, v5, v6, 4);
}


// ===== 7fd568 COnline::GetPing(void) =====
int __fastcall COnline::GetPing(COnline *this)
{
  int result; // r0
  CConnectionManager *ConnectionMgr; // r0

  result = *((unsigned __int8 *)this + 5);
  if ( result )
  {
    ConnectionMgr = (CConnectionManager *)GetConnectionMgr((CConnectionManager *)result);
    return CConnectionManager::GetServerPing(ConnectionMgr);
  }
  return result;
}


// ===== 7fd588 COnline::GetLocalMemberId(void) =====
char *__fastcall COnline::GetLocalMemberId(COnline *this)
{
  int v2; // r0

  if ( !*((_BYTE *)this + 5) )
    return (char *)&dword_0 + 1;
  v2 = CMatching::Get(this);
  return (char *)(*(int (__fastcall **)(int))(*(_DWORD *)v2 + 108))(v2);
}


// ===== 7fd5b4 COnline::IsServer(void) =====
char *__fastcall COnline::IsServer(COnline *this)
{
  CMatching *v2; // r0

  if ( !*((_BYTE *)this + 5) )
    return (char *)&dword_0 + 1;
  v2 = (CMatching *)CMatching::Get(this);
  return (char *)CMatching::IsServer(v2);
}


// ===== 7fd5d8 COnline::IsTimeSynced(void) =====
int __fastcall COnline::IsTimeSynced(COnline *this)
{
  if ( COnline::IsServer(this) )
    return 1;
  else
    return *((unsigned __int8 *)this + 48);
}


// ===== 7fd5f4 std::priv::_List_base<COnline::tTimeSyncMsg,std::allocator<COnline::tTimeSyncMsg>>::clear(void) =====
_DWORD *__fastcall std::priv::_List_base<COnline::tTimeSyncMsg,std::allocator<COnline::tTimeSyncMsg>>::clear(
        _DWORD *a1)
{
  _DWORD *result; // r0
  _DWORD *v3; // r4

  result = (_DWORD *)*a1;
  if ( result != a1 )
  {
    while ( 1 )
    {
      v3 = (_DWORD *)*result;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(result, 0x14u);
      if ( v3 == a1 )
        break;
      result = v3;
    }
    result = a1;
  }
  a1[1] = result;
  *a1 = result;
  return result;
}


// ===== 7fd634 COnline::SendPackets(void) =====
CMessaging *__fastcall COnline::SendPackets(COnline *this)
{
  CMessaging *IsInitialized; // r0
  CMessaging *result; // r0
  CMessaging *v3; // r0
  CPacketManager *PacketManager; // r0

  IsInitialized = (CMessaging *)CPacketManager::IsInitialized(this);
  if ( IsInitialized )
  {
    PacketManager = (CPacketManager *)GetPacketManager();
    IsInitialized = (CMessaging *)CPacketManager::SendPackets(PacketManager);
  }
  result = (CMessaging *)CMessaging::IsInitialized(IsInitialized);
  if ( result )
  {
    v3 = (CMessaging *)CMessaging::Get(result);
    return (CMessaging *)CMessaging::ProcessSendQueue(v3);
  }
  return result;
}


// ===== 7fd66c COnline::Destroy(void) =====
CMatching *__fastcall COnline::Destroy(CMatching *this)
{
  CMatching *v1; // r0

  if ( COnline::s_Online )
  {
    v1 = (CMatching *)CMatching::Get(this);
    CMatching::Destroy(v1);
    this = (CMatching *)COnlineImpl::Terminate((COnlineImpl *)COnline::s_Online);
    if ( COnline::s_Online )
    {
      this = (CMatching *)(*(int (__fastcall **)(int))(*(_DWORD *)COnline::s_Online + 12))(COnline::s_Online);
      COnline::s_Online = 0;
    }
  }
  return this;
}


// ===== 7fd6cc CEventQueue<COnline::EVENTS,0u>::Clear(void) =====
// attributes: thunk
int __fastcall CEventQueue<COnline::EVENTS,0u>::Clear(CEventQueueBase *a1)
{
  return CEventQueueBase::Clear(a1);
}


// ===== 7fd6d0 COnline::Terminate(void) =====
int __fastcall COnline::Terminate(COnline *this)
{
  *((_BYTE *)this + 4) = 0;
  CConnectionManager::UnregisterPacketType(1);
  return CEventQueueBase::Clear((COnline *)((char *)this + 8));
}


// ===== 7fd6f4 COnline::Initialize(void) =====
int __fastcall COnline::Initialize(__int64 (__fastcall ***this)(COnline *))
{
  int v1; // r4

  v1 = *((unsigned __int8 *)this + 4);
  if ( !*((_BYTE *)this + 4) )
  {
    *((_QWORD *)this + 4) = (**this)((COnline *)this);
    CConnectionManager::RegisterPacketType(1, v1, (int)COnline::sPacketReceiverCallback);
  }
  return 0;
}


// ===== 7fd744 COnline::GetInstance(void) =====
int __fastcall COnline::GetInstance(COnline *this)
{
  COnlineImpl *v2; // r5

  if ( COnline::s_Online )
    return COnline::s_Online;
  v2 = (COnlineImpl *)operator new(0x48u, 2);
  COnlineImpl::COnlineImpl(v2);
  COnline::s_Online = (int)v2;
  return (int)v2;
}


// ===== 7fd794 GetOnline(void) =====
// attributes: thunk
int __fastcall GetOnline(COnline *this)
{
  return COnline::GetInstance(this);
}


// ===== 7fd798 COnline::COnline(void) =====
void __fastcall COnline::COnline(COnline *this)
{
  *(_DWORD *)this = &off_991D48;
  *((_DWORD *)this + 2) = &off_991D70;
  *((_BYTE *)this + 4) = 0;
  *((_BYTE *)this + 5) = 0;
  CNetMutex::CNetMutex((COnline *)((char *)this + 12));
  *((_DWORD *)this + 5) = (char *)this + 16;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 4) = (char *)this + 16;
  *((_DWORD *)this + 2) = &off_991D18;
  *((_BYTE *)this + 48) = 1;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  CNetMutex::CNetMutex((COnline *)((char *)this + 52));
  *((_DWORD *)this + 15) = (char *)this + 56;
  *((_DWORD *)this + 14) = (char *)this + 56;
}


// ===== 7fd838 COnline::COnline(void) =====
void __fastcall COnline::COnline(COnline *this)
{
  *(_DWORD *)this = &off_991D48;
  *((_DWORD *)this + 2) = &off_991D70;
  *((_BYTE *)this + 4) = 0;
  *((_BYTE *)this + 5) = 0;
  CNetMutex::CNetMutex((COnline *)((char *)this + 12));
  *((_DWORD *)this + 5) = (char *)this + 16;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 4) = (char *)this + 16;
  *((_DWORD *)this + 2) = &off_991D18;
  *((_BYTE *)this + 48) = 1;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  CNetMutex::CNetMutex((COnline *)((char *)this + 52));
  *((_DWORD *)this + 15) = (char *)this + 56;
  *((_DWORD *)this + 14) = (char *)this + 56;
}


// ===== 7fd8d8 CEventQueue<COnline::EVENTS,0u>::~CEventQueue() =====
int __fastcall CEventQueue<COnline::EVENTS,0u>::~CEventQueue(int a1)
{
  *(_DWORD *)a1 = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)(a1 + 8));
  CNetMutex::~CNetMutex((CNetMutex *)(a1 + 4));
  return a1;
}


// ===== 7fd914 COnline::ReceivePackets(void) =====
int __fastcall COnline::ReceivePackets(COnline *this)
{
  CMessaging *v2; // r0
  char *v3; // r2
  CMessaging *IsInitialized; // r0
  int result; // r0
  CPacketManager *PacketManager; // r0
  CMessaging *v7; // r0

  v2 = (CMessaging *)(**(int (__fastcall ***)(COnline *))this)(this);
  v3 = (char *)v2 - *((_DWORD *)this + 8);
  ++*((_DWORD *)this + 10);
  *((_DWORD *)this + 7) = v3;
  IsInitialized = (CMessaging *)CMessaging::IsInitialized(v2);
  if ( IsInitialized )
  {
    v7 = (CMessaging *)CMessaging::Get(IsInitialized);
    IsInitialized = (CMessaging *)CMessaging::ProcessRecvQueue(v7);
  }
  result = CPacketManager::IsInitialized(IsInitialized);
  if ( result )
  {
    PacketManager = (CPacketManager *)GetPacketManager();
    return CPacketManager::ReceivePackets(PacketManager);
  }
  return result;
}


// ===== 7fd974 COnline::SendSyncTime(void) =====
char *__fastcall COnline::SendSyncTime(COnline *this)
{
  char *result; // r0
  CConnectionManager *v3; // r0
  char *v4; // r3
  CMatching *ConnectionMgr; // r4
  int v6; // r0
  int v7; // r0
  char *v8; // [sp+Ch] [bp-10h] BYREF

  result = COnline::IsServer(this);
  if ( !result )
  {
    v3 = (CConnectionManager *)(**(int (__fastcall ***)(COnline *))this)(this);
    v4 = (char *)v3 - *((_DWORD *)this + 8);
    *((_DWORD *)this + 11) = v4;
    v8 = v4;
    ConnectionMgr = (CMatching *)GetConnectionMgr(v3);
    v6 = CMatching::Get(ConnectionMgr);
    v7 = (*(int (__fastcall **)(int))(*(_DWORD *)v6 + 116))(v6);
    return (char *)CConnectionManager::SendTo(ConnectionMgr, 1, v7, (int)&v8, 12);
  }
  return result;
}


// ===== 7fd9ec COnline::SyncTime(void) =====
char *__fastcall COnline::SyncTime(pthread_mutex_t *this)
{
  char *result; // r0

  result = COnline::IsServer((COnline *)this);
  if ( result )
  {
    *((_BYTE *)this + 48) = 1;
  }
  else
  {
    CNetMutex::Lock(this + 13);
    std::priv::_List_base<COnline::tTimeSyncMsg,std::allocator<COnline::tTimeSyncMsg>>::clear((_DWORD *)this + 14);
    *((_BYTE *)this + 48) = 0;
    COnline::SendSyncTime((COnline *)this);
    return (char *)CNetMutex::Unlock(this + 13);
  }
  return result;
}


// ===== 7fda38 COnline::~COnline() =====
void __fastcall COnline::~COnline(COnline *this)
{
  *(_DWORD *)this = &off_991D48;
  std::priv::_List_base<COnline::tTimeSyncMsg,std::allocator<COnline::tTimeSyncMsg>>::clear((_DWORD *)this + 14);
  CNetMutex::~CNetMutex((COnline *)((char *)this + 52));
  *((_DWORD *)this + 2) = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)this + 4);
  CNetMutex::~CNetMutex((COnline *)((char *)this + 12));
}


// ===== 7fda98 COnline::~COnline() =====
void __fastcall COnline::~COnline(COnline *this)
{
  *(_DWORD *)this = &off_991D48;
  std::priv::_List_base<COnline::tTimeSyncMsg,std::allocator<COnline::tTimeSyncMsg>>::clear((_DWORD *)this + 14);
  CNetMutex::~CNetMutex((COnline *)((char *)this + 52));
  *((_DWORD *)this + 2) = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)this + 4);
  CNetMutex::~CNetMutex((COnline *)((char *)this + 12));
}


// ===== 7fdaf8 COnline::~COnline() =====
void __fastcall COnline::~COnline(COnline *this)
{
  COnline::~COnline(this);
  CustomFree(this);
}


// ===== 7fdb14 CEventQueue<COnline::EVENTS,0u>::~CEventQueue() =====
void **__fastcall CEventQueue<COnline::EVENTS,0u>::~CEventQueue(void **a1)
{
  *a1 = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear(a1 + 2);
  CNetMutex::~CNetMutex((CNetMutex *)(a1 + 1));
  CustomFree(a1);
  return a1;
}


// ===== 7fdb58 COnline::Update(float) =====
char *__fastcall COnline::Update(char *this, float a2)
{
  char *v2; // r4
  int v3; // r0
  int NetLog; // r0

  v2 = this;
  if ( *(this + 4) )
  {
    v3 = CMatching::Get((CMatching *)this);
    (*(void (__fastcall **)(int))(*(_DWORD *)v3 + 48))(v3);
    NetLog = GetNetLog();
    (*(void (__fastcall **)(int))(*(_DWORD *)NetLog + 8))(NetLog);
    (*(void (__fastcall **)(char *))(*(_DWORD *)v2 + 4))(v2);
    this = (char *)COnline::IsTimeSynced((COnline *)v2);
    if ( !this )
    {
      this = (char *)(**(int (__fastcall ***)(char *))v2)(v2);
      if ( (unsigned int)(this - *((_DWORD *)v2 + 8) - *((_DWORD *)v2 + 11)) > 0x3E8 )
        return COnline::SendSyncTime((COnline *)v2);
    }
  }
  return this;
}


// ===== 7fdbe4 COnline::PacketReceiverCallback(int,char *,int) =====
CMatching *__fastcall COnline::PacketReceiverCallback(pthread_mutex_t *this, int a2, char *a3, int a4)
{
  CConnectionManager *ConnectionMgr; // r0
  CMatching *result; // r0
  CMatching *v10; // r0
  unsigned int v11; // r7
  int v12; // r0
  int v13; // r2
  _DWORD *v14; // r0
  COnline *v15; // r4
  _DWORD *v16; // r3
  COnline *v17; // r2
  COnline *v18; // r3
  COnline *v19; // r3
  unsigned __int64 v20; // r6
  int v21; // r0
  int v22; // r1
  unsigned int v23; // r8
  unsigned __int64 v24; // r0
  unsigned int v25; // r6
  int Online; // r0
  CConnectionManager *v27; // r0
  CConnectionManager *v28; // r0
  _DWORD v29[3]; // [sp+8h] [bp-10h] BYREF
  size_t v30; // [sp+14h] [bp-4h] BYREF

  ConnectionMgr = (CConnectionManager *)GetConnectionMgr((CConnectionManager *)this);
  result = (CMatching *)CConnectionManager::IsConnected(ConnectionMgr, a2);
  if ( result && a4 == 12 )
  {
    v10 = (CMatching *)CMatching::Get(result);
    result = (CMatching *)CMatching::IsServer(v10);
    if ( result )
    {
      memcpy(v29, a3, sizeof(v29));
      v27 = (CConnectionManager *)(*(int (__fastcall **)(pthread_mutex_t *))this->value)(this);
      v29[1] = (char *)v27 - *((_DWORD *)this + 8);
      v28 = (CConnectionManager *)GetConnectionMgr(v27);
      return (CMatching *)CConnectionManager::SendTo(v28, 1, a2, (int)v29, 12);
    }
    else
    {
      v11 = *((unsigned __int8 *)this + 48);
      if ( !*((_BYTE *)this + 48) )
      {
        CNetMutex::Lock(this + 13);
        memcpy(v29, a3, sizeof(v29));
        v12 = (*(int (__fastcall **)(pthread_mutex_t *))this->value)(this);
        v13 = *((_DWORD *)this + 8);
        v30 = 20;
        v29[2] = v12 - v13;
        v14 = __ZNSt12__node_alloc11_M_allocateERj_veneer_0(&v30);
        v15 = (COnline *)(this + 14);
        v14[2] = v29[0];
        v14[3] = v29[1];
        v14[4] = v29[2];
        v16 = *((_DWORD **)this + 15);
        *v14 = this + 14;
        v14[1] = v16;
        *v16 = v14;
        v17 = *((COnline **)this + 14);
        *((_DWORD *)this + 15) = v14;
        if ( this + 14 == (pthread_mutex_t *)v17 )
          goto LABEL_19;
        v18 = v17;
        do
        {
          v18 = *(COnline **)v18;
          ++v11;
        }
        while ( v15 != v18 );
        if ( v11 <= 0x13 )
        {
LABEL_19:
          COnline::SendSyncTime((COnline *)this);
        }
        else
        {
          v19 = v17;
          v20 = 0;
          while ( v19 != v15 )
          {
            v21 = *((_DWORD *)v19 + 4);
            v22 = *((_DWORD *)v19 + 2);
            v19 = *(COnline **)v19;
            v20 += (unsigned int)(v21 - v22);
          }
          v23 = 0;
          do
          {
            v17 = *(COnline **)v17;
            ++v23;
          }
          while ( v15 != v17 );
          (*(void (__fastcall **)(pthread_mutex_t *))this->value)(this);
          v24 = v20 / v23;
          v25 = *(_DWORD *)(*((_DWORD *)this + 15) + 12)
              - *(_DWORD *)(*((_DWORD *)this + 15) + 16)
              + ((unsigned int)v24 >> 1);
          Online = GetOnline((COnline *)v24);
          *(_QWORD *)(Online + 32) -= v25;
          *((_BYTE *)this + 48) = 1;
          std::priv::_List_base<COnline::tTimeSyncMsg,std::allocator<COnline::tTimeSyncMsg>>::clear((_DWORD *)this + 14);
        }
        return (CMatching *)CNetMutex::Unlock(this + 13);
      }
    }
  }
  return result;
}


// ===== 7fdde8 COnline::sPacketReceiverCallback(int,char *,int) =====
CMatching *__fastcall COnline::sPacketReceiverCallback(COnline *this, char *a2, char *a3, int a4)
{
  pthread_mutex_t *Instance; // r0

  Instance = (pthread_mutex_t *)COnline::GetInstance(this);
  return COnline::PacketReceiverCallback(Instance, (int)this, a2, (int)a3);
}


// ===== 7fde10 CEventQueueBase::HasEvents(void) =====
int __fastcall CEventQueueBase::HasEvents(CEventQueueBase *this)
{
  char *v1; // r0
  char *v2; // r3
  char *v3; // t1
  int result; // r0
  int v5; // r2

  v3 = *((char **)this + 2);
  v1 = (char *)this + 8;
  v2 = v3;
  if ( v3 == v1 )
    return 0;
  v5 = 0;
  do
  {
    v2 = *(char **)v2;
    ++v5;
  }
  while ( v1 != v2 );
  result = v5;
  if ( v5 )
    return 1;
  return result;
}


// ===== 7fde40 CEvent::~CEvent() =====
void __fastcall CEvent::~CEvent(CEvent *this)
{
  void *v2; // r0

  v2 = *((void **)this + 2);
  *(_DWORD *)this = off_991DA0;
  if ( v2 )
  {
    CustomFree(v2);
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 7fde88 CEvent::~CEvent() =====
void __fastcall CEvent::~CEvent(CEvent *this)
{
  CEvent::~CEvent(this);
  CustomFree(this);
}


// ===== 7fdea4 CEvent::~CEvent() =====
void __fastcall CEvent::~CEvent(CEvent *this)
{
  void *v2; // r0

  v2 = *((void **)this + 2);
  *(_DWORD *)this = off_991DA0;
  if ( v2 )
  {
    CustomFree(v2);
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 7fdeec CEvent::IsExpired(uint) =====
bool __fastcall CEvent::IsExpired(CEvent *this, unsigned int a2)
{
  return a2 && (unsigned int)(*(_DWORD *)(GetOnline(this) + 40) - *((_DWORD *)this + 4)) > 0x63;
}


// ===== 7fdf24 CEvent::CopyData(void *,int) =====
int __fastcall CEvent::CopyData(CEvent *this, void *a2, int a3)
{
  bool v3; // cc
  signed int v6; // r3

  v3 = (int)a2 <= 0;
  if ( a2 )
    v3 = a3 <= 0;
  if ( v3 )
    return -1;
  v6 = *((_DWORD *)this + 3);
  if ( a3 < v6 )
    return -1;
  memcpy(a2, *((const void **)this + 2), v6);
  return *((_DWORD *)this + 3);
}


// ===== 7fdf64 CEventQueueBase::GetEventData(int,void *,int) =====
int __fastcall CEventQueueBase::GetEventData(pthread_mutex_t *this, int a2, void *a3, int a4)
{
  pthread_mutex_t *v4; // r4
  char *i; // r0
  char *v10; // r5
  char *v11; // t1
  int v12; // r5

  v4 = this + 1;
  CNetMutex::Lock(this + 1);
  v11 = *((char **)this + 2);
  v10 = (char *)(this + 2);
  for ( i = v11; v10 != i; i = *(char **)i )
  {
    if ( a2 == *((_DWORD *)i + 3) )
    {
      v12 = CEvent::CopyData((CEvent *)(i + 8), a3, a4);
      CNetMutex::Unlock(v4);
      return v12;
    }
  }
  CNetMutex::Unlock(v4);
  return -1;
}


// ===== 7fdfe0 CEvent::Init(int,void *,int) =====
_DWORD *__fastcall CEvent::Init(CEvent *this, int a2, void *a3, int a4)
{
  _DWORD *result; // r0
  bool v8; // cc

  *((_DWORD *)this + 1) = a2;
  result = (_DWORD *)GetOnline(this);
  v8 = (int)a3 <= 0;
  if ( a3 )
    v8 = a4 <= 0;
  *((_DWORD *)this + 4) = result[10];
  if ( !v8 )
  {
    result = operator new[](a4, 2);
    *((_DWORD *)this + 2) = result;
    if ( result )
    {
      *((_DWORD *)this + 3) = a4;
      return memcpy(result, a3, a4);
    }
  }
  return result;
}


// ===== 7fe03c CEvent::operator=(CEvent const&) =====
CEvent *__fastcall CEvent::operator=(CEvent *this, int a2)
{
  void *v4; // r0

  if ( this != (CEvent *)a2 )
  {
    v4 = *((void **)this + 2);
    if ( v4 )
    {
      CustomFree(v4);
      *((_DWORD *)this + 3) = 0;
      *((_DWORD *)this + 2) = 0;
    }
    CEvent::Init(this, *(_DWORD *)(a2 + 4), *(void **)(a2 + 8), *(_DWORD *)(a2 + 12));
  }
  return this;
}


// ===== 7fe084 CEvent::CEvent(CEvent const&) =====
void __fastcall CEvent::CEvent(CEvent *this, const CEvent *a2)
{
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = off_991DA0;
  CEvent::Init(this, *((_DWORD *)a2 + 1), *((void **)a2 + 2), *((_DWORD *)a2 + 3));
}


// ===== 7fe0d4 CEvent::CEvent(CEvent const&) =====
void __fastcall CEvent::CEvent(CEvent *this, const CEvent *a2)
{
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = off_991DA0;
  CEvent::Init(this, *((_DWORD *)a2 + 1), *((void **)a2 + 2), *((_DWORD *)a2 + 3));
}


// ===== 7fe124 CEvent::CEvent(int,void *,int) =====
void __fastcall CEvent::CEvent(CEvent *this, int a2, void *a3, int a4)
{
  *((_DWORD *)this + 3) = 0;
  *(_DWORD *)this = off_991DA0;
  *((_DWORD *)this + 2) = 0;
  CEvent::Init(this, a2, a3, a4);
}


// ===== 7fe164 CEvent::CEvent(int,void *,int) =====
void __fastcall CEvent::CEvent(CEvent *this, int a2, void *a3, int a4)
{
  *((_DWORD *)this + 3) = 0;
  *(_DWORD *)this = off_991DA0;
  *((_DWORD *)this + 2) = 0;
  CEvent::Init(this, a2, a3, a4);
}


// ===== 7fe1a4 std::list<CEvent,std::allocator<CEvent>>::insert(std::priv::_List_iterator<CEvent,std::_Nonconst_traits<CEvent>>,CEvent const&) =====
_DWORD *__fastcall std::list<CEvent>::insert(_DWORD *a1, int a2, int *a3, const CEvent *a4)
{
  _DWORD *v7; // r6
  int v8; // r3
  _DWORD *v10; // r2
  size_t v11; // [sp+4h] [bp-8h] BYREF

  v11 = 28;
  v7 = __ZNSt12__node_alloc11_M_allocateERj_veneer_0(&v11);
  CEvent::CEvent((CEvent *)(v7 + 2), a4);
  v8 = *a3;
  v10 = *(_DWORD **)(*a3 + 4);
  *v7 = *a3;
  v7[1] = v10;
  *v10 = v7;
  *(_DWORD *)(v8 + 4) = v7;
  *a1 = v7;
  return a1;
}


// ===== 7fe204 CEventQueueBase::AddEvent(int,void *,int) =====
int __fastcall CEventQueueBase::AddEvent(pthread_mutex_t *this, int a2, void *a3, int a4)
{
  pthread_mutex_t *v4; // r5
  int v10; // [sp+0h] [bp-24h] BYREF
  _BYTE v11[20]; // [sp+8h] [bp-1Ch] BYREF
  pthread_mutex_t *v12; // [sp+1Ch] [bp-8h] BYREF

  v4 = this + 1;
  CNetMutex::Lock(this + 1);
  CEvent::CEvent((CEvent *)v11, a2, a3, a4);
  v12 = this + 2;
  std::list<CEvent>::insert(&v10, (int)(this + 2), (int *)&v12, (const CEvent *)v11);
  CEvent::~CEvent((CEvent *)v11);
  return CNetMutex::Unlock(v4);
}


// ===== 7fe274 std::list<CEvent,std::allocator<CEvent>>::erase(std::priv::_List_iterator<CEvent,std::_Nonconst_traits<CEvent>>) =====
_DWORD *__fastcall std::list<CEvent>::erase(_DWORD *a1, int a2, int **a3)
{
  int *v3; // r6
  int v5; // r4
  _DWORD *v6; // r3

  v3 = *a3;
  v5 = **a3;
  v6 = (_DWORD *)(*a3)[1];
  *v6 = v5;
  *(_DWORD *)(v5 + 4) = v6;
  (*(void (__fastcall **)(int *))v3[2])(v3 + 2);
  __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v3, 0x1Cu);
  *a1 = v5;
  return a1;
}


// ===== 7fe2b8 CEventQueueBase::Clear(int) =====
int __fastcall CEventQueueBase::Clear(pthread_mutex_t *this, int a2)
{
  pthread_mutex_t *v2; // r10
  int *v5; // r3
  int *v6; // r5
  int *v7; // t1
  int v8; // r4
  _DWORD v10[3]; // [sp+0h] [bp-14h] BYREF
  int *v11; // [sp+Ch] [bp-8h] BYREF

  v2 = this + 1;
  CNetMutex::Lock(this + 1);
  v7 = *((int **)this + 2);
  v6 = (int *)(this + 2);
  v5 = v7;
  while ( v6 != v5 )
  {
    v8 = *v5;
    if ( a2 == v5[3] )
    {
      v11 = v5;
      std::list<CEvent>::erase(v10, (int)v6, &v11);
      v5 = (int *)v8;
    }
    else
    {
      v5 = (int *)*v5;
    }
  }
  return CNetMutex::Unlock(v2);
}


// ===== 7fe330 CEventQueueBase::FindEvent(int,bool) =====
int __fastcall CEventQueueBase::FindEvent(pthread_mutex_t *this, int a2, int a3)
{
  pthread_mutex_t *v4; // r11
  pthread_mutex_t *v6; // r4
  char *v7; // r6
  pthread_mutex_t *v8; // r0
  char *value; // r5
  int v10; // r4
  _DWORD v13[2]; // [sp+8h] [bp-14h] BYREF
  pthread_mutex_t *v14; // [sp+10h] [bp-Ch] BYREF
  pthread_mutex_t *v15; // [sp+14h] [bp-8h] BYREF

  v4 = this + 1;
  CNetMutex::Lock(this + 1);
  v7 = (char *)(this + 2);
  v6 = *((pthread_mutex_t **)this + 2);
  v8 = v6;
  if ( this + 2 == v6 )
  {
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }
  while ( 1 )
  {
    value = (char *)v8->value;
    if ( !CEvent::IsExpired((CEvent *)&v8[2], *((_DWORD *)this + 4)) )
      break;
    v15 = v6;
    std::list<CEvent>::erase(v13, (int)v7, (int **)&v15);
LABEL_4:
    v6 = (pthread_mutex_t *)value;
    v8 = (pthread_mutex_t *)value;
    if ( v7 == value )
      goto LABEL_5;
  }
  if ( a2 != v6[3].value )
    goto LABEL_4;
  if ( a3 )
  {
    v14 = v6;
    std::list<CEvent>::erase(v13, (int)v7, (int **)&v14);
  }
  v10 = 1;
LABEL_6:
  CNetMutex::Unlock(v4);
  return v10;
}


// ===== 7fe3f0 CEventQueueBase::ConsumeEvent(int) =====
int __fastcall CEventQueueBase::ConsumeEvent(pthread_mutex_t *this, int a2)
{
  return CEventQueueBase::FindEvent(this, a2, 1);
}


// ===== 7fe3f8 CEventQueueBase::HasEventOccured(int,bool) =====
// attributes: thunk
int __fastcall CEventQueueBase::HasEventOccured(pthread_mutex_t *this, int a2, int a3)
{
  return CEventQueueBase::FindEvent(this, a2, a3);
}


// ===== 7fe3fc CEventQueueBase::~CEventQueueBase() =====
void __fastcall CEventQueueBase::~CEventQueueBase(void **this)
{
  *this = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear(this + 2);
  CNetMutex::~CNetMutex((CNetMutex *)(this + 1));
}


// ===== 7fe438 CEventQueueBase::Clear(void) =====
int __fastcall CEventQueueBase::Clear(CEventQueueBase *this)
{
  pthread_mutex_t *v1; // r4

  v1 = (pthread_mutex_t *)((char *)this + 4);
  CNetMutex::Lock((pthread_mutex_t *)this + 1);
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)this + 2);
  return CNetMutex::Unlock(v1);
}


// ===== 7fe460 CEventQueueBase::~CEventQueueBase() =====
void __fastcall CEventQueueBase::~CEventQueueBase(void **this)
{
  *this = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear(this + 2);
  CNetMutex::~CNetMutex((CNetMutex *)(this + 1));
  CustomFree(this);
}


// ===== 7fe4a4 CMatching::ReceiveGameBootInvitation(void) =====
int __fastcall CMatching::ReceiveGameBootInvitation(CMatching *this)
{
  return 0;
}


// ===== 7fe4ac CMatching::GetRoomId(void) =====
__int64 __fastcall CMatching::GetRoomId(CMatching *this)
{
  return 0;
}


// ===== 7fe4b8 CMatching::LimitRoomSlots(uint) =====
int __fastcall CMatching::LimitRoomSlots(CMatching *this, unsigned int a2)
{
  return 0;
}


// ===== 7fe4c0 CMatching::SetMatchingProvider(CMatching::MATCHING_PROVIDERS) =====
int __fastcall CMatching::SetMatchingProvider(int result)
{
  CMatching::s_matchingProvider = result;
  return result;
}


// ===== 7fe4e0 CMatching::IsServer(void) =====
bool __fastcall CMatching::IsServer(CMatching *this)
{
  int v3; // r5

  if ( !*((_BYTE *)this + 12) || (*(int (__fastcall **)(CMatching *))(*(_DWORD *)this + 108))(this) < 0 )
    return 0;
  v3 = (*(int (__fastcall **)(CMatching *))(*(_DWORD *)this + 108))(this);
  return v3 == (*(int (__fastcall **)(CMatching *))(*(_DWORD *)this + 116))(this);
}


// ===== 7fe544 CMatching::IsMemberServer(int) =====
bool __fastcall CMatching::IsMemberServer(CMatching *this, int a2)
{
  return a2 >= 0 && a2 == (*(int (__fastcall **)(CMatching *))(*(_DWORD *)this + 116))(this);
}


// ===== 7fe574 CMatching::LockRoom(bool) =====
int __fastcall CMatching::LockRoom(int this, int a2)
{
  int v2; // r4

  v2 = this;
  if ( a2 )
    this = (*(int (__fastcall **)(int))(*(_DWORD *)this + 72))(this);
  *(_BYTE *)(v2 + 14) = 1;
  return this;
}


// ===== 7fe59c CMatching::GetMemberIndex(int) =====
int __fastcall CMatching::GetMemberIndex(CMatching *this, int a2)
{
  int v2; // r0
  unsigned int v3; // r3
  int result; // r0

  v2 = (*(int (__fastcall **)(CMatching *, int))(*(_DWORD *)this + 132))(this, a2);
  v3 = v2;
  if ( !v2 )
    return -1;
  result = v2 & 1;
  if ( (v3 & 1) != 0 )
    return 0;
  do
  {
    v3 >>= 1;
    ++result;
  }
  while ( (v3 & 1) == 0 );
  return result;
}


// ===== 7fe5e0 CMatching::GetTeamId(int) =====
int __fastcall CMatching::GetTeamId(CMatching *this, int a2)
{
  int MemberIndex; // r0

  MemberIndex = CMatching::GetMemberIndex(this, a2);
  if ( MemberIndex < 0 || MemberIndex >= *((_DWORD *)this + 7) )
    return 0;
  else
    return *((unsigned __int8 *)this + 432 * MemberIndex + 408);
}


// ===== 7fe618 CMatching::GetMemberIdByIndex(uint) =====
int __fastcall CMatching::GetMemberIdByIndex(CMatching *this, unsigned int a2)
{
  return *((_DWORD *)this + 108 * a2 + 92);
}


// ===== 7fe628 CMatching::sReadPacketData(int,int,NetBitStream &) =====
int __fastcall CMatching::sReadPacketData(int a1, int a2, int a3)
{
  return (*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)CMatching::s_Matching + 16))(
           CMatching::s_Matching,
           a1,
           a2,
           a3);
}


// ===== 7fe66c CMatching::sWritePacketData(int,int,NetBitStream &) =====
int __fastcall CMatching::sWritePacketData(int a1, int a2, int a3)
{
  return (*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)CMatching::s_Matching + 12))(
           CMatching::s_Matching,
           a1,
           a2,
           a3);
}


// ===== 7fe6b0 CMatching::sProcessAcknowledgedPacket(int,int) =====
int __fastcall CMatching::sProcessAcknowledgedPacket(CMatching *this, int a2, int a3)
{
  return (*(int (__fastcall **)(int, CMatching *, int))(*(_DWORD *)CMatching::s_Matching + 20))(
           CMatching::s_Matching,
           this,
           a2);
}


// ===== 7fe6ec CMatching::sProcessLostPacket(int,int) =====
int __fastcall CMatching::sProcessLostPacket(CMatching *this, int a2, int a3)
{
  return (*(int (__fastcall **)(int, CMatching *, int))(*(_DWORD *)CMatching::s_Matching + 24))(
           CMatching::s_Matching,
           this,
           a2);
}


// ===== 7fe728 NetStructArray<CMatching::MemberInfoNetStruct,32u>::ProcessAcknowledgedPacket(int,int) =====
int __fastcall NetStructArray<CMatching::MemberInfoNetStruct,32u>::ProcessAcknowledgedPacket(
        int result,
        int a2,
        int a3)
{
  int v3; // r6
  int v6; // r5
  int v7; // r4

  v3 = result;
  if ( *(int *)(result + 4) > 0 )
  {
    v6 = result;
    v7 = 0;
    do
    {
      result = (*(int (__fastcall **)(int, int, int))(*(_DWORD *)(v6 + 8) + 64))(v3 + 8 * (54 * v7++ + 1), a2, a3);
      v6 += 432;
    }
    while ( *(_DWORD *)(v3 + 4) > v7 );
  }
  return result;
}


// ===== 7fe788 NetStructArray<CMatching::MemberInfoNetStruct,32u>::ProcessLostPacket(int,int) =====
int __fastcall NetStructArray<CMatching::MemberInfoNetStruct,32u>::ProcessLostPacket(int result, int a2, int a3)
{
  int v3; // r6
  int v6; // r5
  int v7; // r4

  v3 = result;
  if ( *(int *)(result + 4) > 0 )
  {
    v6 = result;
    v7 = 0;
    do
    {
      result = (*(int (__fastcall **)(int, int, int))(*(_DWORD *)(v6 + 8) + 68))(v3 + 8 * (54 * v7++ + 1), a2, a3);
      v6 += 432;
    }
    while ( *(_DWORD *)(v3 + 4) > v7 );
  }
  return result;
}


// ===== 7fe7e8 NetStructArray<CMatching::MemberInfoNetStruct,32u>::HasDataToSend(int) =====
int __fastcall NetStructArray<CMatching::MemberInfoNetStruct,32u>::HasDataToSend(int a1, int a2)
{
  int v4; // r5
  int v5; // r4

  if ( *(int *)(a1 + 4) <= 0 )
    return 0;
  v4 = a1;
  v5 = 0;
  while ( !(*(int (__fastcall **)(int, int))(*(_DWORD *)(v4 + 8) + 40))(a1 + 8 * (54 * v5++ + 1), a2) )
  {
    v4 += 432;
    if ( *(_DWORD *)(a1 + 4) <= v5 )
      return 0;
  }
  return 1;
}


// ===== 7fe858 NetStructString<256u>::TestValue(std::string const&) =====
bool __fastcall NetStructString<256u>::TestValue(int a1, int a2)
{
  return (unsigned int)(*(_DWORD *)(a2 + 16) - *(_DWORD *)(a2 + 20)) <= 0xFF;
}


// ===== 7fe874 NetStructByteArray<64u>::GetBufferPtr(void) =====
int __fastcall NetStructByteArray<64u>::GetBufferPtr(int a1)
{
  return *(_DWORD *)(a1 + 32);
}


// ===== 7fe87c NetStructByteArray<64u>::GetBufferSize(void) =====
int __fastcall NetStructByteArray<64u>::GetBufferSize(int a1)
{
  return *(_DWORD *)(a1 + 36);
}


// ===== 7fe884 NetStructByteArray<64u>::GetMaxBufferSize(void) =====
int NetStructByteArray<64u>::GetMaxBufferSize()
{
  return 64;
}


// ===== 7fe88c CEventQueue<CMatching::EVENTS_INTERNAL,100u>::Clear(void) =====
// attributes: thunk
int __fastcall CEventQueue<CMatching::EVENTS_INTERNAL,100u>::Clear(CEventQueueBase *this)
{
  return CEventQueueBase::Clear(this);
}


// ===== 7fe890 CEventQueue<CMatching::EVENTS,100u>::Clear(void) =====
// attributes: thunk
int __fastcall CEventQueue<CMatching::EVENTS,100u>::Clear(CEventQueueBase *this)
{
  return CEventQueueBase::Clear(this);
}


// ===== 7fe894 NetStructArray<CMatching::MemberInfoNetStruct,32u>::Serialize(NetBitStream &,int,int) =====
bool __fastcall NetStructArray<CMatching::MemberInfoNetStruct,32u>::Serialize(int a1, NetBitStream *a2, int a3, int a4)
{
  int v8; // r3
  _BOOL4 v9; // r6
  int v10; // r4
  int v11; // r5
  int v12; // r0

  if ( (**(int (__fastcall ***)(int, int))a1)(a1, a3) )
  {
    NetBitStream::WriteBit(a2, 1u);
    v8 = *(_DWORD *)(a1 + 4);
    if ( v8 <= 0 )
      return 0;
    v10 = 0;
    v11 = a1;
    v9 = 0;
    do
    {
      while ( v9 )
      {
        ++v10;
        v11 += 432;
        if ( v8 <= v10 )
          return v9;
      }
      v12 = (*(int (__fastcall **)(int, NetBitStream *, int, int))(*(_DWORD *)(v11 + 8) + 8))(
              a1 + 8 * (54 * v10 + 1),
              a2,
              a3,
              a4);
      v8 = *(_DWORD *)(a1 + 4);
      ++v10;
      v9 = v12 != 0;
      v11 += 432;
    }
    while ( v8 > v10 );
    return v9;
  }
  else
  {
    NetBitStream::WriteBit(a2, 0);
    return 0;
  }
}


// ===== 7fe964 NetStructArray<CMatching::MemberInfoNetStruct,32u>::Load(NetBitStream &,int,int) =====
bool __fastcall NetStructArray<CMatching::MemberInfoNetStruct,32u>::Load(int a1, NetBitStream *this, int a3, int a4)
{
  int v8; // r3
  int v9; // r4
  int v10; // r5
  _BOOL4 v11; // r6
  int v12; // r0

  if ( !NetBitStream::ReadBit(this) )
    return 0;
  v8 = *(_DWORD *)(a1 + 4);
  if ( v8 <= 0 )
    return 0;
  v9 = 0;
  v10 = a1;
  v11 = 0;
  do
  {
    while ( v11 )
    {
      ++v9;
      v10 += 432;
      if ( v8 <= v9 )
        return v11;
    }
    v12 = (*(int (__fastcall **)(int, NetBitStream *, int, int))(*(_DWORD *)(v10 + 8) + 20))(
            a1 + 8 * (54 * v9 + 1),
            this,
            a3,
            a4);
    v8 = *(_DWORD *)(a1 + 4);
    ++v9;
    v11 = v12 != 0;
    v10 += 432;
  }
  while ( v8 > v9 );
  return v11;
}


// ===== 7fea14 CMatching::ReadPacketData(int,int,NetBitStream &) =====
bool __fastcall CMatching::ReadPacketData(CMatching *this, int a2, int a3, NetBitStream *a4)
{
  char *v6; // r4
  CRoomAttributes *v8; // r0

  v6 = (char *)this + 24;
  v8 = (CRoomAttributes *)(*(int (__fastcall **)(CMatching *))(*(_DWORD *)this + 164))(this);
  CRoomAttributes::Unserialize(v8, a2, a4);
  return NetStructArray<CMatching::MemberInfoNetStruct,32u>::Load((int)v6, a4, a2, a3);
}


// ===== 7fea58 NetStructArray<CMatching::MemberInfoNetStruct,32u>::Erase(NetBitStream &) =====
int __fastcall NetStructArray<CMatching::MemberInfoNetStruct,32u>::Erase(int a1, NetBitStream *this)
{
  int v4; // r5
  int v5; // r4

  if ( NetBitStream::ReadBit(this) && *(int *)(a1 + 4) > 0 )
  {
    v4 = a1;
    v5 = 0;
    do
    {
      (*(void (__fastcall **)(int, NetBitStream *))(*(_DWORD *)(v4 + 8) + 28))(a1 + 8 * (54 * v5++ + 1), this);
      v4 += 432;
    }
    while ( *(_DWORD *)(a1 + 4) > v5 );
  }
  return 0;
}


// ===== 7feac4 CMatching::ResendMemberData(void) =====
int __fastcall CMatching::ResendMemberData(int this)
{
  int v1; // r5
  int v2; // r4
  int v3; // r0

  v1 = this;
  if ( *(int *)(this + 28) > 0 )
  {
    v2 = 0;
    do
    {
      v3 = 432 * v2++;
      this = NetStruct::Resend((NetStruct *)(v1 + v3 + 32));
    }
    while ( v2 < *(_DWORD *)(v1 + 28) );
  }
  return this;
}


// ===== 7feb04 NetStructByteArray<64u>::GetBuffer(void *,int) =====
int __fastcall NetStructByteArray<64u>::GetBuffer(int a1, void *a2)
{
  const void *v2; // r3
  signed int v4; // r2

  v2 = *(const void **)(a1 + 32);
  if ( !v2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 36);
  if ( v4 <= 0 )
    return 0;
  memcpy(a2, v2, v4);
  return *(_DWORD *)(a1 + 36);
}


// ===== 7feb40 CMatching::SearchRoom(CRoomSearchFilter,bool,uchar) =====
int __fastcall CMatching::SearchRoom(int a1, int a2, int a3, int a4)
{
  CRoomSearchFilter::SetSearchAttributeInt(a2, 0, 0, -1342128411);
  return (*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)a1 + 8))(a1, a2, a3, a4);
}


// ===== 7feb8c CMatching::Destroy(void) =====
void __fastcall CMatching::Destroy(CMatching *this)
{
  CSignIn *v1; // r0
  int v2; // r0

  if ( CMatching::s_Matching )
  {
    v1 = (CSignIn *)(*(int (__fastcall **)(int))(*(_DWORD *)CMatching::s_Matching + 44))(CMatching::s_Matching);
    v2 = CSignIn::Get(v1);
    (*(void (__fastcall **)(int))(*(_DWORD *)v2 + 36))(v2);
    if ( CMatching::s_Matching )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)CMatching::s_Matching + 36))(CMatching::s_Matching);
      CMatching::s_Matching = 0;
    }
  }
}


// ===== 7febfc NetStructByteArray<64u>::Write(NetBitStream &) =====
int __fastcall NetStructByteArray<64u>::Write(int a1, NetBitStream *this)
{
  NetBitStream::WriteU32(this, *(_DWORD *)(a1 + 36), 0x10u);
  return NetBitStream::WriteByteArray(this, *(const void **)(a1 + 32), *(_DWORD *)(a1 + 36));
}


// ===== 7fec2c `global constructor keyed to'.._src_generic_Matching.cpp =====
int `global constructor keyed to'.._src_generic_Matching.cpp()
{
  CMatching::m_eventQueueInternal = (int)&off_991D70;
  CNetMutex::CNetMutex((CNetMutex *)&unk_A2F0C0);
  dword_A2F0CC = 100;
  CMatching::m_eventQueueInternal = (int)&off_991DB0;
  dword_A2F0C8 = (int)&dword_A2F0C4;
  dword_A2F0C4 = (int)&dword_A2F0C4;
  _aeabi_atexit(
    (int)&CMatching::m_eventQueueInternal,
    (int)CEventQueue<CMatching::EVENTS_INTERNAL,100u>::~CEventQueue,
    (int)&_dso_handle);
  CMatching::m_eventQueue = (int)&off_991D70;
  CNetMutex::CNetMutex((CNetMutex *)algn_A2F0D4);
  dword_A2F0DC = (int)&dword_A2F0D8;
  dword_A2F0E0 = 100;
  CMatching::m_eventQueue = (int)&off_991DE0;
  dword_A2F0D8 = (int)&dword_A2F0D8;
  return _aeabi_atexit(
           (int)&CMatching::m_eventQueue,
           (int)CEventQueue<CMatching::EVENTS,100u>::~CEventQueue,
           (int)&_dso_handle);
}


// ===== 7fed08 CMatching::ProcessAcknowledgedPacket(int,int) =====
int __fastcall CMatching::ProcessAcknowledgedPacket(CMatching *this, int a2, int a3)
{
  char *v3; // r6
  CRoomAttributes *v7; // r0
  int result; // r0
  char *v9; // r5
  int v10; // r4

  v3 = (char *)this + 24;
  v7 = (CRoomAttributes *)(*(int (__fastcall **)(CMatching *))(*(_DWORD *)this + 164))(this);
  result = CRoomAttributes::ProcessAcknowledgedPacket(v7, a2, a3);
  if ( *((int *)this + 7) > 0 )
  {
    v9 = v3;
    v10 = 0;
    do
    {
      result = (*(int (__fastcall **)(char *, int, int))(*((_DWORD *)v9 + 2) + 64))(&v3[432 * v10++ + 8], a2, a3);
      v9 += 432;
    }
    while ( v10 < *((_DWORD *)v3 + 1) );
  }
  return result;
}


// ===== 7fed84 CMatching::ProcessLostPacket(int,int) =====
int __fastcall CMatching::ProcessLostPacket(CMatching *this, int a2, int a3)
{
  char *v3; // r6
  CRoomAttributes *v7; // r0
  int result; // r0
  char *v9; // r5
  int v10; // r4

  v3 = (char *)this + 24;
  v7 = (CRoomAttributes *)(*(int (__fastcall **)(CMatching *))(*(_DWORD *)this + 164))(this);
  result = CRoomAttributes::ProcessLostPacket(v7, a2, a3);
  if ( *((int *)this + 7) > 0 )
  {
    v9 = v3;
    v10 = 0;
    do
    {
      result = (*(int (__fastcall **)(char *, int, int))(*((_DWORD *)v9 + 2) + 68))(&v3[432 * v10++ + 8], a2, a3);
      v9 += 432;
    }
    while ( v10 < *((_DWORD *)v3 + 1) );
  }
  return result;
}


// ===== 7fee00 NetStructByteArray<64u>::Read(NetBitStream &) =====
void __fastcall NetStructByteArray<64u>::Read(int a1, NetBitStream *this)
{
  unsigned int U32; // r10
  void (__fastcall *v5)(int, void **); // r8
  void *p[2]; // [sp+4h] [bp-50h] BYREF
  _BYTE v7[64]; // [sp+Ch] [bp-48h] BYREF

  U32 = NetBitStream::ReadU32(this, 0x10u);
  NetBitStream::ReadByteArray(this, v7, U32);
  v5 = *(void (__fastcall **)(int, void **))(*(_DWORD *)a1 + 28);
  p[1] = nullptr;
  p[0] = nullptr;
  ByteArray::SetBuffer((ByteArray *)p, v7, U32);
  v5(a1, p);
  if ( p[0] )
    CustomFree(p[0]);
}


// ===== 7feeb8 NetStructByteArray<64u>::NetStructByteArray(ByteArray) =====
int __fastcall NetStructByteArray<64u>::NetStructByteArray(int a1, int a2)
{
  size_t v3; // r2
  const void *v4; // r1
  void *p[3]; // [sp+0h] [bp-Ch] BYREF

  v3 = *(_DWORD *)(a2 + 4);
  v4 = *(const void **)a2;
  p[0] = nullptr;
  p[1] = nullptr;
  ByteArray::SetBuffer((ByteArray *)p, v4, v3);
  *(_DWORD *)(a1 + 4) = 512;
  *(_QWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 20) = -1;
  *(_DWORD *)a1 = &off_963868;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 16) = -1;
  *(_DWORD *)(a1 + 24) = 0;
  *(_BYTE *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  NetStructMemberType<ByteArray>::SetValue((NetStructMember *)a1, (int)p);
  if ( p[0] )
    CustomFree(p[0]);
  *(_DWORD *)a1 = &off_991F00;
  return a1;
}


// ===== 7fef70 NetStructByteArray<64u>::~NetStructByteArray() =====
_DWORD *__fastcall NetStructByteArray<64u>::~NetStructByteArray(_DWORD *a1)
{
  void *v2; // r0

  v2 = (void *)a1[8];
  *a1 = &off_963868;
  if ( v2 )
  {
    CustomFree(v2);
    a1[8] = 0;
  }
  return a1;
}


// ===== 7fefb8 NetStructByteArray<64u>::SetBuffer(void const*,int) =====
void __fastcall NetStructByteArray<64u>::SetBuffer(int a1, const void *a2, size_t a3)
{
  void (__fastcall *v4)(int, void **); // r6
  void *p[2]; // [sp+0h] [bp-8h] BYREF

  v4 = *(void (__fastcall **)(int, void **))(*(_DWORD *)a1 + 28);
  p[1] = nullptr;
  p[0] = nullptr;
  ByteArray::SetBuffer((ByteArray *)p, a2, a3);
  v4(a1, p);
  if ( p[0] )
    CustomFree(p[0]);
}


// ===== 7ff008 CMatching::SetRoomMemberAttibute(int,void const*,int) =====
void __fastcall CMatching::SetRoomMemberAttibute(CMatching *this, int a2, const void *a3, size_t a4)
{
  int MemberIndex; // r0

  MemberIndex = CMatching::GetMemberIndex(this, a2);
  if ( MemberIndex >= 0 && MemberIndex < *((_DWORD *)this + 7) )
    NetStructByteArray<64u>::SetBuffer((int)this + 432 * MemberIndex + 416, a3, a4);
}


// ===== 7ff054 CMatching::GetRoomMemberAttibute(int,void *,int) =====
int __fastcall CMatching::GetRoomMemberAttibute(CMatching *this, int a2, void *a3, int a4)
{
  int MemberIndex; // r0
  char *v7; // r4
  const void *v8; // r1
  char *v9; // r4
  signed int v10; // r2

  MemberIndex = CMatching::GetMemberIndex(this, a2);
  if ( MemberIndex < 0 || MemberIndex >= *((_DWORD *)this + 7) )
    return 0;
  v7 = (char *)this + 432 * MemberIndex;
  v8 = *((const void **)v7 + 112);
  v9 = v7 + 448;
  if ( !v8 )
    return 0;
  v10 = *((_DWORD *)v9 + 1);
  if ( v10 <= 0 )
    return 0;
  memcpy(a3, v8, v10);
  return *((_DWORD *)v9 + 1);
}


// ===== 7ff0bc NetStructByteArray<64u>::~NetStructByteArray() =====
_DWORD *__fastcall NetStructByteArray<64u>::~NetStructByteArray(_DWORD *p)
{
  void *v2; // r0

  v2 = (void *)p[8];
  *p = &off_963868;
  if ( v2 )
  {
    CustomFree(v2);
    p[8] = 0;
  }
  *p = &off_963648;
  CustomFree(p);
  return p;
}


// ===== 7ff120 CMatching::JoinRoom(ulong long) =====
int __fastcall CMatching::JoinRoom(CMatching *this, unsigned __int64 a2)
{
  CMessaging *v4; // r0
  CNetPlayerManager *NetPlayerMgr; // r0
  int v6; // r7
  CMatching *v7; // r8
  int v8; // r9
  int v9; // r3
  int v10; // r5
  _DWORD v13[7]; // [sp+28h] [bp-54h] BYREF
  char v14; // [sp+44h] [bp-38h]
  int v15; // [sp+48h] [bp-34h] BYREF
  _DWORD v16[7]; // [sp+50h] [bp-2Ch] BYREF
  char v17; // [sp+6Ch] [bp-10h]
  int v18[3]; // [sp+70h] [bp-Ch] BYREF

  v4 = (CMessaging *)CMessaging::Get(this);
  CMessaging::ResetQueues(v4, 1);
  NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr();
  CNetPlayerManager::ResetPlayers(NetPlayerMgr);
  if ( *((int *)this + 7) > 0 )
  {
    v6 = 0;
    v7 = this;
    do
    {
      v16[0] = &off_963618;
      v16[1] = 32;
      v8 = 432 * v6;
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = -1;
      v16[5] = -1;
      v16[6] = 0;
      v17 = 0;
      if ( v18[0] != -1 )
      {
        v18[0] = -1;
        NetStructMember::SetChanged((NetStructMember *)v16);
      }
      v16[0] = &off_9635E8;
      (*(void (__fastcall **)(char *, int *))(*((_DWORD *)v7 + 84) + 28))((char *)this + 432 * v6++ + 336, v18);
      v13[0] = &off_9636A0;
      v16[0] = &off_963648;
      v13[1] = 8;
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = -1;
      v13[5] = -1;
      v13[6] = 0;
      v14 = 0;
      if ( v15 )
      {
        v15 = 0;
        NetStructMember::SetChanged((NetStructMember *)v13);
      }
      v13[0] = &off_963670;
      (*(void (__fastcall **)(char *, int *))(*((_DWORD *)v7 + 94) + 28))((char *)this + v8 + 376, &v15);
      v13[0] = &off_963648;
      NetStructByteArray<64u>::SetBuffer((int)this + v8 + 416, nullptr, 0);
      *((_DWORD *)v7 + 114) = -1;
      v9 = *((_DWORD *)this + 7);
      v7 = (CMatching *)((char *)v7 + 432);
    }
    while ( v6 < v9 );
    if ( v9 > 0 )
    {
      v10 = 0;
      do
        NetStruct::SetEnabled((CMatching *)((char *)this + 432 * v10++ + 32), 0);
      while ( v10 < *((_DWORD *)this + 7) );
    }
  }
  return (**(int (__fastcall ***)(CMatching *, _DWORD, _DWORD, _DWORD))this)(this, *(_DWORD *)this, a2, HIDWORD(a2));
}


// ===== 7ff350 CMatching::CreateJoinRoom(bool,CRoomAttributes) =====
int __fastcall CMatching::CreateJoinRoom(CMessaging *a1, int a2, int a3)
{
  CMessaging *v4; // r0
  CNetPlayerManager *NetPlayerMgr; // r0
  int v6; // r6
  CMessaging *v7; // r7
  int v8; // r9
  int v9; // r4
  _DWORD v13[7]; // [sp+28h] [bp-54h] BYREF
  char v14; // [sp+44h] [bp-38h]
  int v15; // [sp+48h] [bp-34h] BYREF
  _DWORD v16[7]; // [sp+50h] [bp-2Ch] BYREF
  char v17; // [sp+6Ch] [bp-10h]
  int v18[3]; // [sp+70h] [bp-Ch] BYREF

  v4 = (CMessaging *)CMessaging::Get(a1);
  CMessaging::ResetQueues(v4, 1);
  NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr();
  CNetPlayerManager::ResetPlayers(NetPlayerMgr);
  if ( *((int *)a1 + 7) > 0 )
  {
    v6 = 0;
    v7 = a1;
    do
    {
      v16[0] = &off_963618;
      v16[1] = 32;
      v8 = 432 * v6;
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = -1;
      v16[5] = -1;
      v16[6] = 0;
      v17 = 0;
      if ( v18[0] != -1 )
      {
        v18[0] = -1;
        NetStructMember::SetChanged((NetStructMember *)v16);
      }
      v16[0] = &off_9635E8;
      (*(void (__fastcall **)(_DWORD *, int *))(*((_DWORD *)v7 + 84) + 28))((_DWORD *)a1 + 108 * v6++ + 84, v18);
      v13[0] = &off_9636A0;
      v16[0] = &off_963648;
      v13[1] = 8;
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = -1;
      v13[5] = -1;
      v13[6] = 0;
      v14 = 0;
      if ( v15 )
      {
        v15 = 0;
        NetStructMember::SetChanged((NetStructMember *)v13);
      }
      v13[0] = &off_963670;
      (*(void (__fastcall **)(char *, int *))(*((_DWORD *)v7 + 94) + 28))((char *)a1 + v8 + 376, &v15);
      v13[0] = &off_963648;
      NetStructByteArray<64u>::SetBuffer((int)a1 + v8 + 416, nullptr, 0);
      *((_DWORD *)v7 + 114) = -1;
      v7 = (CMessaging *)((char *)v7 + 432);
    }
    while ( v6 < *((_DWORD *)a1 + 7) );
  }
  CRoomAttributes::SetAttributeInt(a3, 0, -1342128411);
  if ( *((int *)a1 + 7) > 0 )
  {
    v9 = 0;
    do
      NetStruct::SetEnabled((CMessaging *)((char *)a1 + 432 * v9++ + 32), 1);
    while ( v9 < *((_DWORD *)a1 + 7) );
  }
  return (*(int (__fastcall **)(CMessaging *, int, int))(*(_DWORD *)a1 + 4))(a1, a2, a3);
}


// ===== 7ff5a0 CMatching::Terminate(void) =====
int __fastcall CMatching::Terminate(CMatching *this)
{
  int v2; // r6
  CNetPlayerManager *v3; // r0
  CMessaging *v4; // r0
  CPacketManager *v5; // r0
  CConnectionManager *v6; // r0
  CSignIn *v7; // r0
  int v8; // r0
  int v9; // r0
  CMatching *v10; // r7
  int v11; // r9
  int v12; // r3
  int v13; // r4
  _DWORD v15[7]; // [sp+28h] [bp-54h] BYREF
  char v16; // [sp+44h] [bp-38h]
  int v17; // [sp+48h] [bp-34h] BYREF
  _DWORD v18[7]; // [sp+50h] [bp-2Ch] BYREF
  char v19; // [sp+6Ch] [bp-10h]
  int v20[3]; // [sp+70h] [bp-Ch] BYREF

  if ( (*(int (__fastcall **)(CMatching *))(*(_DWORD *)this + 100))(this) )
    (*(void (__fastcall **)(CMatching *))(*(_DWORD *)this + 60))(this);
  v2 = 0;
  v3 = (CNetPlayerManager *)CPacketManager::UnregisterPacketSlot(0);
  *((_BYTE *)this + 12) = 0;
  v4 = (CMessaging *)CNetPlayerManager::Terminate(v3);
  v5 = (CPacketManager *)CMessaging::Terminate(v4);
  v6 = (CConnectionManager *)CPacketManager::Terminate(v5);
  v7 = (CSignIn *)CConnectionManager::Terminate(v6);
  v8 = CSignIn::Get(v7);
  (*(void (__fastcall **)(int))(*(_DWORD *)v8 + 32))(v8);
  CEventQueueBase::Clear((CEventQueueBase *)&CMatching::m_eventQueue);
  CEventQueueBase::Clear((CEventQueueBase *)&CMatching::m_eventQueueInternal);
  v9 = (*(int (__fastcall **)(CMatching *))(*(_DWORD *)this + 164))(this);
  (*(void (__fastcall **)(int))(*(_DWORD *)v9 + 16))(v9);
  if ( *((int *)this + 7) > 0 )
  {
    v10 = this;
    do
    {
      v11 = 432 * v2;
      v18[0] = &off_963618;
      v18[1] = 32;
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = -1;
      v18[5] = -1;
      v18[6] = 0;
      v19 = 0;
      if ( v20[0] != -1 )
      {
        v20[0] = -1;
        NetStructMember::SetChanged((NetStructMember *)v18);
      }
      v18[0] = &off_9635E8;
      (*(void (__fastcall **)(char *, int *))(*((_DWORD *)v10 + 84) + 28))((char *)this + 432 * v2++ + 336, v20);
      v15[0] = &off_9636A0;
      v18[0] = &off_963648;
      v15[1] = 8;
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = -1;
      v15[5] = -1;
      v15[6] = 0;
      v16 = 0;
      if ( v17 )
      {
        v17 = 0;
        NetStructMember::SetChanged((NetStructMember *)v15);
      }
      v15[0] = &off_963670;
      (*(void (__fastcall **)(char *, int *))(*((_DWORD *)v10 + 94) + 28))((char *)this + v11 + 376, &v17);
      v15[0] = &off_963648;
      NetStructByteArray<64u>::SetBuffer((int)this + v11 + 416, nullptr, 0);
      *((_DWORD *)v10 + 114) = -1;
      v12 = *((_DWORD *)this + 7);
      v10 = (CMatching *)((char *)v10 + 432);
    }
    while ( v2 < v12 );
    if ( v12 > 0 )
    {
      v13 = 0;
      do
        NetStruct::SetEnabled((CMatching *)((char *)this + 432 * v13++ + 32), 0);
      while ( v13 < *((_DWORD *)this + 7) );
    }
  }
  CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueue, 4194306, nullptr, 0);
  return 0;
}


// ===== 7ff85c CMatching::Initialize(int) =====
int __fastcall CMatching::Initialize(CMatching *this, int a2)
{
  int v2; // r7
  CSignIn *v5; // r0
  int v6; // r0
  CConnectionManager *v7; // r0
  int v8; // r0
  CMatching *v9; // r8
  int v10; // r10
  int v11; // r9
  int v12; // r3
  int v13; // r4
  _DWORD v15[7]; // [sp+28h] [bp-54h] BYREF
  char v16; // [sp+44h] [bp-38h]
  int v17; // [sp+48h] [bp-34h] BYREF
  _DWORD v18[7]; // [sp+50h] [bp-2Ch] BYREF
  char v19; // [sp+6Ch] [bp-10h]
  int v20[3]; // [sp+70h] [bp-Ch] BYREF

  v2 = *((unsigned __int8 *)this + 12);
  if ( *((_BYTE *)this + 12) )
  {
    CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueue, 4194305, nullptr, 0);
  }
  else
  {
    CPacketManager::RegisterPacketSlot(
      *((unsigned __int8 *)this + 12),
      (int)CMatching::sWritePacketData,
      (int)CMatching::sReadPacketData,
      (int)CMatching::sProcessAcknowledgedPacket,
      (int)CMatching::sProcessLostPacket);
    *((_DWORD *)this + 2) = a2;
    *((_BYTE *)this + 14) = v2;
    *((_BYTE *)this + 13) = v2;
    CEventQueueBase::Clear((CEventQueueBase *)&CMatching::m_eventQueue);
    v5 = (CSignIn *)CEventQueueBase::Clear((CEventQueueBase *)&CMatching::m_eventQueueInternal);
    v6 = CSignIn::Get(v5);
    v7 = (CConnectionManager *)(*(int (__fastcall **)(int))(*(_DWORD *)v6 + 8))(v6);
    CConnectionManager::Initialize(v7);
    v8 = (*(int (__fastcall **)(CMatching *))(*(_DWORD *)this + 164))(this);
    (*(void (__fastcall **)(int))(*(_DWORD *)v8 + 16))(v8);
    if ( *((int *)this + 7) > 0 )
    {
      v9 = this;
      v10 = v2;
      do
      {
        v18[0] = &off_963618;
        v18[1] = 32;
        v11 = 432 * v2;
        v18[2] = 0;
        v18[3] = 0;
        v18[4] = -1;
        v18[5] = -1;
        v18[6] = v10;
        v19 = v10;
        if ( v20[0] != -1 )
        {
          v20[0] = -1;
          NetStructMember::SetChanged((NetStructMember *)v18);
        }
        v18[0] = &off_9635E8;
        (*(void (__fastcall **)(char *, int *))(*((_DWORD *)v9 + 84) + 28))((char *)this + 432 * v2++ + 336, v20);
        v15[0] = &off_9636A0;
        v18[0] = &off_963648;
        v15[1] = 8;
        v15[2] = 0;
        v15[3] = 0;
        v15[4] = -1;
        v15[5] = -1;
        v15[6] = v10;
        v16 = v10;
        if ( v17 )
        {
          v17 = v10;
          NetStructMember::SetChanged((NetStructMember *)v15);
        }
        v15[0] = &off_963670;
        (*(void (__fastcall **)(char *, int *))(*((_DWORD *)v9 + 94) + 28))((char *)this + v11 + 376, &v17);
        v15[0] = &off_963648;
        NetStructByteArray<64u>::SetBuffer((int)this + v11 + 416, nullptr, 0);
        *((_DWORD *)v9 + 114) = -1;
        v12 = *((_DWORD *)this + 7);
        v9 = (CMatching *)((char *)v9 + 432);
      }
      while ( v2 < v12 );
      if ( v12 > 0 )
      {
        v13 = 0;
        do
          NetStruct::SetEnabled((CMatching *)((char *)this + 432 * v13++ + 32), 0);
        while ( v13 < *((_DWORD *)this + 7) );
      }
    }
  }
  return 0;
}


// ===== 7ffb28 CEventQueue<CMatching::EVENTS,100u>::~CEventQueue() =====
void **__fastcall CEventQueue<CMatching::EVENTS,100u>::~CEventQueue(void **a1)
{
  *a1 = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear(a1 + 2);
  CNetMutex::~CNetMutex((CNetMutex *)(a1 + 1));
  CustomFree(a1);
  return a1;
}


// ===== 7ffb6c CEventQueue<CMatching::EVENTS,100u>::~CEventQueue() =====
int __fastcall CEventQueue<CMatching::EVENTS,100u>::~CEventQueue(int a1)
{
  *(_DWORD *)a1 = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)(a1 + 8));
  CNetMutex::~CNetMutex((CNetMutex *)(a1 + 4));
  return a1;
}


// ===== 7ffba8 CEventQueue<CMatching::EVENTS_INTERNAL,100u>::~CEventQueue() =====
int __fastcall CEventQueue<CMatching::EVENTS_INTERNAL,100u>::~CEventQueue(int a1)
{
  *(_DWORD *)a1 = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear((void **)(a1 + 8));
  CNetMutex::~CNetMutex((CNetMutex *)(a1 + 4));
  return a1;
}


// ===== 7ffbe4 CEventQueue<CMatching::EVENTS_INTERNAL,100u>::~CEventQueue() =====
void **__fastcall CEventQueue<CMatching::EVENTS_INTERNAL,100u>::~CEventQueue(void **a1)
{
  *a1 = &off_991D70;
  std::priv::_List_base<CEvent,std::allocator<CEvent>>::clear(a1 + 2);
  CNetMutex::~CNetMutex((CNetMutex *)(a1 + 1));
  CustomFree(a1);
  return a1;
}


// ===== 7ffc28 CMatching::MemberInfoNetStruct::~MemberInfoNetStruct() =====
void __fastcall CMatching::MemberInfoNetStruct::~MemberInfoNetStruct(CMatching::MemberInfoNetStruct *this)
{
  char *v1; // r6
  void *v3; // r0
  int v4; // r1

  *(_DWORD *)this = off_991EB0;
  v1 = (char *)this + 384;
  *((_DWORD *)this + 96) = &off_963868;
  v3 = *((void **)this + 104);
  if ( v3 )
  {
    CustomFree(v3);
    *((_DWORD *)v1 + 8) = 0;
  }
  v4 = *((_DWORD *)this + 71);
  *((_DWORD *)this + 76) = &off_963648;
  *(_DWORD *)this = off_9924D8;
  *((_DWORD *)this + 96) = &off_963648;
  *((_DWORD *)this + 86) = &off_963648;
  if ( v4 )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_erase(
      (int)this + 268,
      *((_DWORD *)this + 68));
    *((_DWORD *)this + 70) = (char *)this + 268;
    *((_DWORD *)this + 71) = 0;
    *((_DWORD *)this + 69) = (char *)this + 268;
    *((_DWORD *)this + 68) = 0;
  }
}


// ===== 7ffce8 CMatching::MemberInfoNetStruct::~MemberInfoNetStruct() =====
void __fastcall CMatching::MemberInfoNetStruct::~MemberInfoNetStruct(CMatching::MemberInfoNetStruct *this)
{
  CMatching::MemberInfoNetStruct::~MemberInfoNetStruct(this);
  CustomFree(this);
}


// ===== 7ffd04 CMatching::MemberInfoNetStruct::MemberInfoNetStruct(void) =====
CMatching::MemberInfoNetStruct *__fastcall CMatching::MemberInfoNetStruct::MemberInfoNetStruct(
        CMatching::MemberInfoNetStruct *this)
{
  int v2; // r2
  NetStructMember *v3; // r8
  int v4; // r3
  NetStructMember *v5; // r7
  _DWORD v7[7]; // [sp+8h] [bp-5Ch] BYREF
  char v8; // [sp+24h] [bp-40h]
  int v9; // [sp+28h] [bp-3Ch] BYREF
  _DWORD v10[7]; // [sp+30h] [bp-34h] BYREF
  char v11; // [sp+4Ch] [bp-18h]
  int v12; // [sp+50h] [bp-14h] BYREF
  void *p[3]; // [sp+58h] [bp-Ch] BYREF

  NetStruct::NetStruct(this);
  v2 = *((_DWORD *)this + 84);
  *((_QWORD *)this + 39) = 0;
  *(_DWORD *)this = off_991EB0;
  *((_DWORD *)this + 77) = 32;
  *((_DWORD *)this + 81) = -1;
  *((_DWORD *)this + 76) = &off_963618;
  *((_DWORD *)this + 80) = -1;
  *((_DWORD *)this + 82) = 0;
  *((_BYTE *)this + 332) = 0;
  v3 = (CMatching::MemberInfoNetStruct *)((char *)this + 304);
  if ( v2 )
  {
    *((_DWORD *)this + 84) = 0;
    NetStructMember::SetChanged((CMatching::MemberInfoNetStruct *)((char *)this + 304));
  }
  v4 = *((_DWORD *)this + 94);
  *((_QWORD *)this + 44) = 0;
  *((_DWORD *)this + 76) = &off_9635E8;
  *((_DWORD *)this + 87) = 8;
  *((_DWORD *)this + 91) = -1;
  *((_DWORD *)this + 86) = &off_9636A0;
  *((_DWORD *)this + 90) = -1;
  *((_DWORD *)this + 92) = 0;
  *((_BYTE *)this + 372) = 0;
  v5 = (CMatching::MemberInfoNetStruct *)((char *)this + 344);
  if ( v4 )
  {
    *((_DWORD *)this + 94) = 0;
    NetStructMember::SetChanged((CMatching::MemberInfoNetStruct *)((char *)this + 344));
  }
  *((_DWORD *)this + 86) = &off_963670;
  p[0] = nullptr;
  p[1] = nullptr;
  NetStructByteArray<64u>::NetStructByteArray((int)this + 384, (int)p);
  if ( p[0] )
  {
    CustomFree(p[0]);
    p[0] = nullptr;
  }
  *((_DWORD *)this + 106) = -1;
  NetStruct::DeclareMember(this, v3);
  NetStruct::DeclareMember(this, v5);
  NetStruct::DeclareMember(this, (CMatching::MemberInfoNetStruct *)((char *)this + 384));
  v10[1] = 32;
  v10[2] = 0;
  v10[3] = 0;
  v11 = 0;
  v10[0] = &off_963618;
  v10[4] = -1;
  v10[5] = -1;
  v10[6] = 0;
  if ( v12 != -1 )
  {
    v12 = -1;
    NetStructMember::SetChanged((NetStructMember *)v10);
  }
  v10[0] = &off_9635E8;
  (*(void (__fastcall **)(NetStructMember *, int *))(*((_DWORD *)this + 76) + 28))(v3, &v12);
  v10[0] = &off_963648;
  v7[1] = 8;
  v7[2] = 0;
  v7[3] = 0;
  v7[5] = -1;
  v7[0] = &off_9636A0;
  v7[4] = -1;
  v7[6] = 0;
  v8 = 0;
  if ( v9 )
  {
    v9 = 0;
    NetStructMember::SetChanged((NetStructMember *)v7);
  }
  v7[0] = &off_963670;
  (*(void (__fastcall **)(NetStructMember *, int *))(*((_DWORD *)this + 86) + 28))(v5, &v9);
  return this;
}


// ===== 7fff9c CMatching::CMatching(void) =====
void __fastcall CMatching::CMatching(CMatching *this)
{
  int v1; // r4
  char *v3; // r5
  CMatching::MemberInfoNetStruct *v4; // r0

  v1 = 0;
  *(_DWORD *)this = &off_991F48;
  *((_DWORD *)this + 6) = off_991E90;
  *((_BYTE *)this + 16) = 1;
  *((_DWORD *)this + 7) = 32;
  *((_DWORD *)this + 2) = 0;
  *((_BYTE *)this + 12) = 0;
  *((_BYTE *)this + 13) = 0;
  *((_BYTE *)this + 14) = 0;
  *((_BYTE *)this + 15) = 0;
  v3 = (char *)this + 32;
  do
  {
    v4 = (CMatching::MemberInfoNetStruct *)&v3[v1];
    v1 += 432;
    CMatching::MemberInfoNetStruct::MemberInfoNetStruct(v4);
  }
  while ( v1 != 13824 );
  *((_DWORD *)this + 3466) = 0;
  *((_DWORD *)this + 3464) = 0;
  *((_DWORD *)this + 3465) = 0;
}


// ===== 80003c CMatching::CMatching(void) =====
void __fastcall CMatching::CMatching(CMatching *this)
{
  int v1; // r4
  char *v3; // r5
  CMatching::MemberInfoNetStruct *v4; // r0

  v1 = 0;
  *(_DWORD *)this = &off_991F48;
  *((_DWORD *)this + 6) = off_991E90;
  *((_BYTE *)this + 16) = 1;
  *((_DWORD *)this + 7) = 32;
  *((_DWORD *)this + 2) = 0;
  *((_BYTE *)this + 12) = 0;
  *((_BYTE *)this + 13) = 0;
  *((_BYTE *)this + 14) = 0;
  *((_BYTE *)this + 15) = 0;
  v3 = (char *)this + 32;
  do
  {
    v4 = (CMatching::MemberInfoNetStruct *)&v3[v1];
    v1 += 432;
    CMatching::MemberInfoNetStruct::MemberInfoNetStruct(v4);
  }
  while ( v1 != 13824 );
  *((_DWORD *)this + 3466) = 0;
  *((_DWORD *)this + 3464) = 0;
  *((_DWORD *)this + 3465) = 0;
}


// ===== 8000dc CMatching::GetRoomMask(void) =====
int __fastcall CMatching::GetRoomMask(CMatching *this)
{
  int v2; // r5
  int (__fastcall *v4)(CMatching *, int); // r5
  int v5; // r0
  int *i; // r6
  int v7; // t1
  int (__fastcall *v8)(CMatching *, int); // r6
  int v9; // r0
  int *v10; // [sp+4h] [bp-10h] BYREF
  int *v11; // [sp+8h] [bp-Ch]

  if ( !*((_BYTE *)this + 16) )
    return CMatching::GetRoomMask(void)::maskCache;
  v4 = *(int (__fastcall **)(CMatching *, int))(*(_DWORD *)this + 132);
  v5 = (*(int (__fastcall **)(CMatching *))(*(_DWORD *)this + 116))(this);
  v2 = v4(this, v5);
  if ( CMatching::IsServer(this) )
  {
    (*(void (__fastcall **)(int **, CMatching *))(*(_DWORD *)this + 136))(&v10, this);
    for ( i = v10; i != v11; v2 |= (*(int (__fastcall **)(CMatching *, int))(*(_DWORD *)this + 132))(this, v7) )
      v7 = *i++;
    std::vector<int>::~vector((int)&v10);
  }
  else
  {
    v8 = *(int (__fastcall **)(CMatching *, int))(*(_DWORD *)this + 132);
    v9 = (*(int (__fastcall **)(CMatching *))(*(_DWORD *)this + 108))(this);
    v2 |= v8(this, v9);
  }
  CMatching::GetRoomMask(void)::maskCache = v2;
  *((_BYTE *)this + 16) = 0;
  return v2;
}


// ===== 8001d4 CMatching::TestRoomMask(uint) =====
bool __fastcall CMatching::TestRoomMask(CMatching *this, unsigned int a2)
{
  int RoomMask; // r0

  RoomMask = CMatching::GetRoomMask(this);
  return (RoomMask & a2) == RoomMask;
}


// ===== 8001f4 std::vector<int,std::allocator<int>>::_M_insert_overflow(int *,int const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<int>::_M_insert_overflow(int a1, int a2, _DWORD *a3)
{
  unsigned int v5; // r3
  unsigned int v6; // r1
  char *v8; // r0
  char *v9; // r5
  size_t v10; // r6
  char *v11; // r6
  _DWORD *v12; // r6
  void *v13; // r0
  size_t v14; // r1
  size_t v15; // r3
  size_t v16; // [sp+4h] [bp-8h] BYREF

  v5 = (*(_DWORD *)(a1 + 4) - *(_DWORD *)a1) >> 2;
  if ( v5 )
    v6 = 2 * v5;
  else
    v6 = 1;
  if ( v6 > 0x3FFFFFFF || v5 > v6 )
    v6 = 0x3FFFFFFF;
  v16 = v6;
  v8 = (char *)std::allocator<int>::_M_allocate(a1 + 8, v6, &v16);
  v9 = v8;
  v10 = a2 - *(_DWORD *)a1;
  if ( v10 )
    v11 = (char *)memmove(v8, *(const void **)a1, v10) + v10;
  else
    v11 = v8;
  *(_DWORD *)v11 = *a3;
  v12 = v11 + 4;
  v13 = *(void **)a1;
  if ( *(_DWORD *)a1 )
  {
    v14 = (*(_DWORD *)(a1 + 8) - (_DWORD)v13) & 0xFFFFFFFC;
    if ( v14 > 0x80 )
      CustomFree(v13);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v13, v14);
  }
  v15 = v16;
  *(_DWORD *)a1 = v9;
  *(_DWORD *)(a1 + 4) = v12;
  *(_DWORD *)(a1 + 8) = &v9[4 * v15];
}


// ===== 8002bc CMatching::UpdateMemberIdList(void) =====
int __fastcall CMatching::UpdateMemberIdList(CMatching *this)
{
  int result; // r0
  int v3; // r3
  CMatching *v4; // r4
  int v5; // r5
  int v6; // r12
  int v7; // r6
  int ConnectionMgr; // r0
  int v9; // r0
  int *v10; // r2
  int v11; // r3
  unsigned int v12; // r4
  int MemberIndex; // r0
  int v14; // r9
  int v15; // r3
  CMatching *v16; // r4
  int i; // r5
  int v18; // r1
  CConnectionManager *v19; // r0
  int v20; // r3
  int v21; // r9
  CConnectionManager *v22; // r0
  _DWORD v23[7]; // [sp+18h] [bp-BCh] BYREF
  char v24; // [sp+34h] [bp-A0h]
  int v25; // [sp+38h] [bp-9Ch] BYREF
  _DWORD v26[7]; // [sp+40h] [bp-94h] BYREF
  char v27; // [sp+5Ch] [bp-78h]
  int v28; // [sp+60h] [bp-74h] BYREF
  _DWORD v29[7]; // [sp+68h] [bp-6Ch] BYREF
  char v30; // [sp+84h] [bp-50h]
  int v31; // [sp+88h] [bp-4Ch] BYREF
  _DWORD v32[7]; // [sp+90h] [bp-44h] BYREF
  char v33; // [sp+ACh] [bp-28h]
  int v34[3]; // [sp+B0h] [bp-24h] BYREF
  int v35; // [sp+BCh] [bp-18h] BYREF
  int *v36; // [sp+C0h] [bp-14h]
  int *v37; // [sp+C4h] [bp-10h]
  int v38; // [sp+C8h] [bp-Ch] BYREF
  int v39; // [sp+CCh] [bp-8h] BYREF

  result = (*(int (__fastcall **)(CMatching *))(*(_DWORD *)this + 100))(this);
  if ( result )
  {
    result = CMatching::IsServer(this);
    if ( result )
    {
      result = (*(int (__fastcall **)(CMatching *))(*(_DWORD *)this + 100))(this);
      if ( result )
      {
        ConnectionMgr = GetConnectionMgr((CConnectionManager *)&v35);
        CConnectionManager::GetConnMemberIdList((CConnectionManager *)&v35, ConnectionMgr, 0);
        v9 = (*(int (__fastcall **)(CMatching *))(*(_DWORD *)this + 108))(this);
        v39 = v9;
        if ( v36 == v37 )
        {
          std::vector<int>::_M_insert_overflow((int)&v35, (int)v36, &v39);
          v10 = v36;
        }
        else
        {
          *v36 = v9;
          v10 = ++v36;
        }
        v11 = v35;
        if ( ((unsigned int)v10 - v35) >> 2 )
        {
          v12 = 0;
          do
          {
            MemberIndex = CMatching::GetMemberIndex(this, *(_DWORD *)(v11 + 4 * v12));
            v14 = MemberIndex;
            if ( MemberIndex >= 0 && MemberIndex < *((_DWORD *)this + 7) && *((int *)this + 108 * MemberIndex + 92) < 0 )
            {
              if ( CMatching::IsMemberServer(this, *(_DWORD *)(v35 + 4 * v12))
                || (v22 = (CConnectionManager *)GetConnectionMgr(nullptr),
                    CConnectionManager::IsConnected(v22, *(_DWORD *)(v35 + 4 * v12))) )
              {
                v20 = *(_DWORD *)(v35 + 4 * v12);
                v32[2] = 0;
                v32[3] = 0;
                v32[5] = -1;
                v33 = 0;
                v32[0] = &off_963618;
                v32[1] = 32;
                v32[4] = -1;
                v32[6] = 0;
                if ( v20 != v34[0] )
                {
                  v34[0] = v20;
                  NetStructMember::SetChanged((NetStructMember *)v32);
                }
                v32[0] = &off_9635E8;
                (*(void (__fastcall **)(char *, int *))(*((_DWORD *)this + 108 * v14 + 84) + 28))(
                  (char *)this + 432 * v14 + 336,
                  v34);
                v32[0] = &off_963648;
                v29[1] = 8;
                v29[2] = 0;
                v29[3] = 0;
                v29[5] = -1;
                v29[0] = &off_9636A0;
                v29[4] = -1;
                v29[6] = 0;
                v30 = 0;
                if ( v31 )
                {
                  v31 = 0;
                  NetStructMember::SetChanged((NetStructMember *)v29);
                }
                v21 = 432 * v14;
                v29[0] = &off_963670;
                (*(void (__fastcall **)(char *, int *))(*(_DWORD *)((char *)this + v21 + 376) + 28))(
                  (char *)this + v21 + 376,
                  &v31);
                v29[0] = &off_963648;
                NetStructByteArray<64u>::SetBuffer((int)this + v21 + 416, nullptr, 0);
              }
            }
            v11 = v35;
            ++v12;
          }
          while ( v12 < ((int)v36 - v35) >> 2 );
        }
        v15 = *((_DWORD *)this + 7);
        if ( v15 > 0 )
        {
          v16 = this;
          for ( i = 0; i < v15; ++i )
          {
            v18 = *((_DWORD *)v16 + 92);
            if ( v18 >= 0 )
            {
              if ( !CMatching::IsMemberServer(this, v18) )
              {
                v19 = (CConnectionManager *)GetConnectionMgr(nullptr);
                if ( !CConnectionManager::IsConnected(v19, *((_DWORD *)v16 + 92)) )
                {
                  v26[1] = 32;
                  v27 = 0;
                  v26[0] = &off_963618;
                  v26[2] = 0;
                  v26[3] = 0;
                  v26[4] = -1;
                  v26[5] = -1;
                  v26[6] = 0;
                  if ( v28 != -1 )
                  {
                    v28 = -1;
                    NetStructMember::SetChanged((NetStructMember *)v26);
                  }
                  v26[0] = &off_9635E8;
                  (*(void (__fastcall **)(char *, int *))(*((_DWORD *)v16 + 84) + 28))(
                    (char *)this + 432 * i + 336,
                    &v28);
                  v26[0] = &off_963648;
                  v23[1] = 8;
                  v23[0] = &off_9636A0;
                  v23[5] = -1;
                  v23[2] = 0;
                  v23[3] = 0;
                  v23[4] = -1;
                  v23[6] = 0;
                  v24 = 0;
                  if ( v25 )
                  {
                    v25 = 0;
                    NetStructMember::SetChanged((NetStructMember *)v23);
                  }
                  v23[0] = &off_963670;
                  (*(void (__fastcall **)(char *, int *))(*((_DWORD *)v16 + 94) + 28))(
                    (char *)this + 432 * i + 376,
                    &v25);
                  v23[0] = &off_963648;
                  NetStructByteArray<64u>::SetBuffer((int)this + 432 * i + 416, nullptr, 0);
                }
              }
              v15 = *((_DWORD *)this + 7);
            }
            v16 = (CMatching *)((char *)v16 + 432);
          }
        }
        result = std::vector<int>::~vector((int)&v35);
      }
    }
    v3 = *((_DWORD *)this + 7);
    if ( v3 > 0 )
    {
      v4 = this;
      v5 = 0;
      do
      {
        v6 = *((_DWORD *)v4 + 92);
        v7 = *((_DWORD *)v4 + 114);
        ++v5;
        if ( v7 == v6 )
          goto LABEL_8;
        if ( v6 >= 0 )
        {
          if ( v7 < 0 )
            goto LABEL_12;
        }
        else
        {
          v38 = *((_DWORD *)v4 + 114);
          result = CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388615, &v38, 4);
          v6 = *((_DWORD *)v4 + 92);
          if ( *((int *)v4 + 114) < 0 )
          {
LABEL_12:
            v38 = v6;
            result = CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388614, &v38, 4);
            v6 = *((_DWORD *)v4 + 92);
          }
        }
        *((_DWORD *)v4 + 114) = v6;
        v3 = *((_DWORD *)this + 7);
LABEL_8:
        v4 = (CMatching *)((char *)v4 + 432);
      }
      while ( v5 < v3 );
    }
  }
  return result;
}


// ===== 800808 CMatching::GetMemberIdList(void) =====
CMatching *__fastcall CMatching::GetMemberIdList(CMatching *this, int a2)
{
  int v2; // r5
  int v3; // r2
  int v6; // r4
  int v7; // r3
  int *v8; // r1
  int *v9; // r2
  int v11; // [sp+4h] [bp-4h] BYREF

  v2 = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  v3 = *(_DWORD *)(a2 + 28);
  if ( v3 > 0 )
  {
    v6 = a2;
    while ( 1 )
    {
      v7 = *(_DWORD *)(v6 + 368);
      if ( v7 < 0 )
        goto LABEL_4;
      v8 = *((int **)this + 1);
      v9 = *((int **)this + 2);
      v11 = *(_DWORD *)(v6 + 368);
      if ( v8 == v9 )
      {
        std::vector<int>::_M_insert_overflow((int)this, (int)v8, &v11);
        v3 = *(_DWORD *)(a2 + 28);
        ++v2;
        v6 += 432;
        if ( v2 >= v3 )
          return this;
      }
      else
      {
        *v8 = v7;
        *((_DWORD *)this + 1) += 4;
        v3 = *(_DWORD *)(a2 + 28);
LABEL_4:
        ++v2;
        v6 += 432;
        if ( v2 >= v3 )
          return this;
      }
    }
  }
  return this;
}


// ===== 8008ac CMatching::SetTeamId(int,uchar) =====
int __fastcall CMatching::SetTeamId(CMatching *this, int a2, int a3)
{
  int result; // r0
  int v6; // r7
  _DWORD v7[7]; // [sp+0h] [bp-2Ch] BYREF
  char v8; // [sp+1Ch] [bp-10h]
  _DWORD v9[3]; // [sp+20h] [bp-Ch] BYREF

  result = CMatching::GetMemberIndex(this, a2);
  v6 = result;
  if ( result >= 0 && result < *((_DWORD *)this + 7) )
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[1] = 8;
    v7[5] = -1;
    v8 = 0;
    v7[0] = &off_9636A0;
    v7[4] = -1;
    v7[6] = 0;
    if ( a3 != v9[0] )
    {
      v9[0] = a3;
      NetStructMember::SetChanged((NetStructMember *)v7);
    }
    v7[0] = &off_963670;
    return (*(int (__fastcall **)(char *, _DWORD *))(*((_DWORD *)this + 108 * v6 + 94) + 28))(
             (char *)this + 432 * v6 + 376,
             v9);
  }
  return result;
}


// ===== 800980 NetStructString<256u>::~NetStructString() =====
char *__fastcall NetStructString<256u>::~NetStructString(char *p)
{
  char *v2; // r2
  char *v3; // r0
  size_t v4; // r1

  *(_DWORD *)p = &off_963790;
  v2 = p + 32;
  v3 = *((char **)p + 13);
  if ( v3 != v2 && v3 )
  {
    v4 = *((_DWORD *)p + 8) - (_DWORD)v3;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v3, v4);
  }
  *(_DWORD *)p = &off_963648;
  CustomFree(p);
  return p;
}


// ===== 800a00 NetStructString<256u>::~NetStructString() =====
_DWORD *__fastcall NetStructString<256u>::~NetStructString(_DWORD *a1)
{
  _DWORD *v2; // r1
  _DWORD *v3; // r0
  size_t v4; // r1

  *a1 = &off_963790;
  v2 = a1 + 8;
  v3 = (_DWORD *)a1[13];
  if ( v3 == v2 || !v3 )
    return a1;
  v4 = a1[8] - (_DWORD)v3;
  if ( v4 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v3, v4);
    return a1;
  }
  CustomFree(v3);
  return a1;
}


// ===== 800a68 CMatching::~CMatching() =====
void __fastcall CMatching::~CMatching(CMatching *this)
{
  char *v2; // r1
  void *v3; // r0
  size_t v4; // r1
  CMatching *v5; // r6
  void (__fastcall **v6)(CMatching *, char *); // t1

  v2 = (char *)this + 13856;
  *(_DWORD *)this = &off_991F48;
  v3 = *((void **)this + 3464);
  if ( v3 )
  {
    v4 = (*((_DWORD *)v2 + 2) - (_DWORD)v3) & 0xFFFFFFFC;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v3, v4);
  }
  v5 = (CMatching *)((char *)this + 13856);
  *((_DWORD *)this + 6) = off_991E90;
  do
  {
    v6 = *((void (__fastcall ***)(CMatching *, char *))v5 - 108);
    v5 = (CMatching *)((char *)v5 - 432);
    (*v6)(v5, v2);
  }
  while ( v5 != (CMatching *)((char *)this + 32) );
}


// ===== 800b00 CMatching::~CMatching() =====
void __fastcall CMatching::~CMatching(CMatching *this)
{
  char *v2; // r1
  void *v3; // r0
  size_t v4; // r1
  CMatching *v5; // r6
  void (__fastcall **v6)(CMatching *, char *); // t1

  v2 = (char *)this + 13856;
  *(_DWORD *)this = &off_991F48;
  v3 = *((void **)this + 3464);
  if ( v3 )
  {
    v4 = (*((_DWORD *)v2 + 2) - (_DWORD)v3) & 0xFFFFFFFC;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v3, v4);
  }
  v5 = (CMatching *)((char *)this + 13856);
  *((_DWORD *)this + 6) = off_991E90;
  do
  {
    v6 = *((void (__fastcall ***)(CMatching *, char *))v5 - 108);
    v5 = (CMatching *)((char *)v5 - 432);
    (*v6)(v5, v2);
  }
  while ( v5 != (CMatching *)((char *)this + 32) );
}


// ===== 800b98 CMatching::~CMatching() =====
void __fastcall CMatching::~CMatching(CMatching *this)
{
  CMatching::~CMatching(this);
  CustomFree(this);
}


// ===== 800bb4 NetStructString<256u>::Write(NetBitStream &) =====
void __fastcall NetStructString<256u>::Write(int a1, NetBitStream *a2)
{
  const char *v3; // r2
  const char *v4; // r1
  unsigned int v5; // [sp+Ch] [bp-18h]
  char **p_M_finish; // [sp+14h] [bp-10h]
  char **v7; // [sp+18h] [bp-Ch]
  std::string v8; // 0:r1.12,12:^0.12 BYREF

  v3 = *(const char **)(a1 + 48);
  v4 = *(const char **)(a1 + 52);
  p_M_finish = &v8._M_finish;
  v7 = &v8._M_finish;
  std::string::_M_range_initialize((std::string *)&v8._M_finish, v4, v3);
  v8._M_buffers._M_end_of_storage = (char *)&v8._M_finish;
  *(_DWORD *)&v8._M_buffers._M_static_buf[4] = 256;
  NetBitStream::WriteString(a2, v8, v5);
  if ( v7 != &v8._M_finish && v7 )
  {
    if ( (unsigned int)(v8._M_finish - (char *)v7) > 0x80 )
      CustomFree(v7);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v7, v8._M_finish - (char *)v7);
  }
}


// ===== 800c60 NetStructString<256u>::NetStructString(std::string) =====
int __fastcall NetStructString<256u>::NetStructString(int a1, int a2)
{
  const char *v3; // r2
  const char *v4; // r1
  std::string v6; // [sp+4h] [bp-1Ch] BYREF

  v3 = *(const char **)(a2 + 16);
  v4 = *(const char **)(a2 + 20);
  v6._M_finish = (char *)&v6;
  v6._M_start_of_storage._M_data = (char *)&v6;
  std::string::_M_range_initialize(&v6, v4, v3);
  *(_DWORD *)(a1 + 4) = 2048;
  *(_DWORD *)(a1 + 20) = -1;
  *(_DWORD *)(a1 + 16) = -1;
  *(_QWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 24) = 0;
  *(_BYTE *)(a1 + 28) = 0;
  *(_DWORD *)a1 = &off_963790;
  *(_DWORD *)(a1 + 48) = a1 + 32;
  *(_DWORD *)(a1 + 52) = a1 + 32;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 32), 0x10u);
  **(_BYTE **)(a1 + 48) = 0;
  NetStructMemberType<std::string>::SetValue((NetStructMember *)a1, (const char **)&v6._M_buffers._M_end_of_storage);
  if ( (std::string *)v6._M_start_of_storage._M_data != &v6 && v6._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v6._M_buffers._M_end_of_storage - v6._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v6._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(
        v6._M_start_of_storage._M_data,
        v6._M_buffers._M_end_of_storage - v6._M_start_of_storage._M_data);
  }
  *(_DWORD *)a1 = off_991E60;
  return a1;
}


// ===== 800d7c CBluetoothNetRoomInfo::CBluetoothNetRoomInfo(void) =====
void __fastcall CBluetoothNetRoomInfo::CBluetoothNetRoomInfo(CBluetoothNetRoomInfo *this)
{
  NetStructMember *v3; // r7
  int v4; // r2
  std::string v5; // [sp+4h] [bp-1Ch] BYREF

  NetStruct::NetStruct(this);
  *(_DWORD *)this = off_991E10;
  v3 = (CBluetoothNetRoomInfo *)((char *)this + 304);
  v5._M_finish = (char *)&v5;
  v5._M_start_of_storage._M_data = (char *)&v5;
  std::string::_M_range_initialize(&v5, "", "");
  NetStructString<256u>::NetStructString((int)v3, (int)&v5);
  if ( (std::string *)v5._M_start_of_storage._M_data != &v5 && v5._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v5._M_buffers._M_end_of_storage - v5._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v5._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(
        v5._M_start_of_storage._M_data,
        v5._M_buffers._M_end_of_storage - v5._M_start_of_storage._M_data);
  }
  v4 = *((_DWORD *)this + 98);
  *((_QWORD *)this + 46) = 0;
  *((_DWORD *)this + 91) = 32;
  *((_DWORD *)this + 95) = -1;
  *((_DWORD *)this + 90) = &off_963618;
  *((_DWORD *)this + 94) = -1;
  *((_DWORD *)this + 96) = 0;
  *((_BYTE *)this + 388) = 0;
  if ( v4 )
  {
    *((_DWORD *)this + 98) = 0;
    NetStructMember::SetChanged((CBluetoothNetRoomInfo *)((char *)this + 360));
  }
  *((_DWORD *)this + 90) = &off_9635E8;
  NetStruct::DeclareMember(this, v3);
  NetStruct::DeclareMember(this, (CBluetoothNetRoomInfo *)((char *)this + 360));
}


// ===== 800ed8 CMatchingBluetooth::CMatchingBluetooth(void) =====
void __fastcall CMatchingBluetooth::CMatchingBluetooth(CMatchingBluetooth *this)
{
  CMatchingLocal::CMatchingLocal(this);
  *(_DWORD *)this = &off_992068;
  CBluetoothNetRoomInfo::CBluetoothNetRoomInfo((CMatchingBluetooth *)((char *)this + 43496));
  *((_DWORD *)this + 10974) = 0;
  *((_BYTE *)this + 43900) = 0;
  *((_BYTE *)this + 43908) = 0;
  *((_DWORD *)this + 10983) = (char *)this + 43912;
  *((_DWORD *)this + 10982) = (char *)this + 43912;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 10978, 0x10u);
  **((_BYTE **)this + 10982) = 0;
  *((_DWORD *)this + 10987) = (char *)this + 43936;
  *((_DWORD *)this + 10988) = 0;
  *((_DWORD *)this + 10985) = 0;
  *((_BYTE *)this + 43936) = 0;
  *((_DWORD *)this + 10986) = (char *)this + 43936;
}


// ===== 800f8c CMatching::Get(void) =====
int __fastcall CMatching::Get(CMatching *this)
{
  int result; // r0
  int v2; // r1
  CMatchingLocal *v3; // r7
  CMatchingGLLive *v4; // r6
  CMatchingGLLive *v5; // r7
  CMatchingBluetooth *v6; // r7

  result = CMatching::s_Matching;
  if ( CMatching::s_Matching )
    return result;
  v2 = CMatching::s_matchingProvider;
  if ( !CMatching::s_matchingProvider )
  {
    CMatching::s_matchingProvider = 1;
LABEL_11:
    v3 = (CMatchingLocal *)operator new(0xA9E8u, 2);
    CMatchingLocal::CMatchingLocal(v3);
    v2 = CMatching::s_matchingProvider;
    CMatching::s_Matching = (int)v3;
    goto LABEL_5;
  }
  if ( CMatching::s_matchingProvider == 1 )
    goto LABEL_11;
LABEL_5:
  if ( v2 == 2 )
  {
    v6 = (CMatchingBluetooth *)operator new(0xABB8u, 2);
    CMatchingBluetooth::CMatchingBluetooth(v6);
    v2 = CMatching::s_matchingProvider;
    CMatching::s_Matching = (int)v6;
  }
  if ( v2 == 3 )
  {
    v5 = (CMatchingGLLive *)operator new(0x6C08u, 2);
    CMatchingGLLive::CMatchingGLLive(v5, 0);
    v2 = CMatching::s_matchingProvider;
    CMatching::s_Matching = (int)v5;
  }
  if ( v2 != 4 )
    return CMatching::s_Matching;
  v4 = (CMatchingGLLive *)operator new(0x6C08u, 2);
  CMatchingGLLive::CMatchingGLLive(v4, 1);
  CMatching::s_Matching = (int)v4;
  return (int)v4;
}


// ===== 8010a4 CMatching::WritePacketData(int,int,NetBitStream &) =====
int __fastcall CMatching::WritePacketData(CMatching *this, int a2, int a3, NetBitStream *a4)
{
  int v8; // r7
  CMatching *v9; // r0
  bool IsServer; // r0
  CRoomAttributes *v11; // r0

  v8 = (*(int (__fastcall **)(CMatching *))(*(_DWORD *)this + 164))(this);
  v9 = (CMatching *)CMatching::Get((CMatching *)v8);
  IsServer = CMatching::IsServer(v9);
  NetStruct::SetEnabled((NetStruct *)(v8 + 8), IsServer);
  v11 = (CRoomAttributes *)(*(int (__fastcall **)(CMatching *))(*(_DWORD *)this + 164))(this);
  LOBYTE(v8) = CRoomAttributes::Serialize(v11, a2, a3, a4);
  return NetStructArray<CMatching::MemberInfoNetStruct,32u>::Serialize((int)this + 24, a4, a2, a3) | (unsigned __int8)v8;
}


// ===== 801120 CMatching::ProcessEvents(void) =====
CConnectionManager *__fastcall CMatching::ProcessEvents(CMatching *this)
{
  CPacketManager *HasEventOccured; // r0
  CConnectionManager *result; // r0
  int v4; // r0
  pthread_mutex_t *v5; // r0
  CConnectionManager *v6; // r0
  pthread_mutex_t *v7; // r0
  pthread_mutex_t *v8; // r0
  CConnectionManager *EventData; // r0
  pthread_mutex_t *v10; // r0
  int v11; // r0
  CMessaging *v12; // r0
  int v13; // r1
  CConnectionManager *v14; // r0
  CConnectionManager *v15; // r0
  CConnectionManager *IsConnected; // r0
  CConnectionManager *v17; // r0
  bool IsServer; // r8
  int v19; // r7
  COnline *v20; // r0
  pthread_mutex_t *v21; // r0
  int v22; // r0
  CNetPlayerManager *v23; // r0
  CConnectionManager *v24; // r0
  CConnectionManager *v25; // r0
  CMessaging *v26; // r0
  CMessaging *v27; // r0
  COnline *v28; // r0
  int v29; // r0
  CNetPlayerManager *v30; // r0
  CConnectionManager *v31; // r0
  CConnectionManager *v32; // r0
  CMessaging *v33; // r0
  CMessaging *v34; // r0
  CNetPlayerManager *v35; // r0
  CConnectionManager *v36; // r0
  CConnectionManager *ConnectionMgr; // r0
  CMessaging *v38; // r0
  CMessaging *v39; // r0
  CNetPlayerManager *NetPlayerMgr; // r7
  int v41; // r0
  COnline *v42; // r0
  pthread_mutex_t *Online; // r0
  int v44; // r0
  int v45; // r7
  CNetPlayerManager *v46; // r8
  int v47; // r0
  COnline *v48; // r0
  int v49; // r0
  int v50; // [sp+4h] [bp-8h] BYREF

  if ( CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 0x800000, 0) )
  {
    v50 = 0;
    CEventQueueBase::GetEventData((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 0x800000, &v50, 4);
    CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueue, 0x400000, &v50, 4);
    CEventQueueBase::ConsumeEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 0x800000);
  }
  HasEventOccured = (CPacketManager *)CEventQueueBase::HasEventOccured(
                                        (pthread_mutex_t *)&CMatching::m_eventQueueInternal,
                                        8388609,
                                        1);
  if ( HasEventOccured )
  {
    *((_BYTE *)this + 12) = 1;
    v12 = (CMessaging *)CPacketManager::Initialize(HasEventOccured);
    CMessaging::Initialize(v12);
    CNetPlayerManager::Initialize(*((CNetPlayerManager **)this + 2), v13);
    CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueue, 4194305, nullptr, 0);
  }
  if ( CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388631, 1)
    || CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388629, 1) )
  {
    CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueue, 4194324, nullptr, 0);
  }
  if ( CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388628, 1)
    || (result = (CConnectionManager *)CEventQueueBase::HasEventOccured(
                                         (pthread_mutex_t *)&CMatching::m_eventQueueInternal,
                                         8388630,
                                         1)) != nullptr )
  {
    result = (CConnectionManager *)CEventQueueBase::AddEvent(
                                     (pthread_mutex_t *)&CMatching::m_eventQueue,
                                     4194323,
                                     nullptr,
                                     0);
  }
  if ( *((_BYTE *)this + 12) )
  {
    if ( CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388611, 1) )
    {
      NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr();
      v41 = (*(int (__fastcall **)(CMatching *))(*(_DWORD *)this + 108))(this);
      v42 = (COnline *)CNetPlayerManager::AddPlayer(NetPlayerMgr, v41, 0);
      Online = (pthread_mutex_t *)GetOnline(v42);
      COnline::SyncTime(Online);
    }
    if ( CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388620, 1) )
      CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueue, 4194320, nullptr, 0);
    if ( CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388621, 1) )
      CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueue, 4194321, nullptr, 0);
    if ( CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388612, 1) )
    {
      v35 = (CNetPlayerManager *)GetNetPlayerMgr();
      v36 = (CConnectionManager *)CNetPlayerManager::ResetPlayers(v35);
      ConnectionMgr = (CConnectionManager *)GetConnectionMgr(v36);
      v38 = (CMessaging *)CConnectionManager::DisconnectAll(ConnectionMgr);
      v39 = (CMessaging *)CMessaging::Get(v38);
      CMessaging::ResetQueues(v39, 1);
      CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueue, 4194313, nullptr, 0);
    }
    if ( CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388613, 1) )
    {
      v30 = (CNetPlayerManager *)GetNetPlayerMgr();
      v31 = (CConnectionManager *)CNetPlayerManager::ResetPlayers(v30);
      v32 = (CConnectionManager *)GetConnectionMgr(v31);
      v33 = (CMessaging *)CConnectionManager::DisconnectAll(v32);
      v34 = (CMessaging *)CMessaging::Get(v33);
      CMessaging::ResetQueues(v34, 1);
      CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueue, 4194314, nullptr, 0);
    }
    if ( CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388617, 1) )
    {
      v23 = (CNetPlayerManager *)GetNetPlayerMgr();
      v24 = (CConnectionManager *)CNetPlayerManager::ResetPlayers(v23);
      v25 = (CConnectionManager *)GetConnectionMgr(v24);
      v26 = (CMessaging *)CConnectionManager::DisconnectAll(v25);
      v27 = (CMessaging *)CMessaging::Get(v26);
      CMessaging::ResetQueues(v27, 1);
      v28 = (COnline *)CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueue, 4194315, nullptr, 0);
      v29 = GetOnline(v28);
      COnline::ReportDisconnect(v29, 3, 0);
    }
    if ( CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388625, 1) )
      CEventQueueBase::ConsumeEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388625);
    if ( CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388624, 1) )
      CEventQueueBase::ConsumeEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388624);
    if ( CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388626, 1) )
      CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueue, 4194311, nullptr, 0);
    if ( CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388622, 1) )
      CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueue, 4194307, nullptr, 0);
    if ( CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388623, 1) )
      CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueue, 4194308, nullptr, 0);
    v4 = (*(int (__fastcall **)(CMatching *))(*(_DWORD *)this + 164))(this);
    if ( (*(int (__fastcall **)(int))(*(_DWORD *)v4 + 20))(v4) )
    {
      CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueue, 4194319, nullptr, 0);
      if ( CMatching::IsServer(this)
        || (v44 = CMatching::Get(nullptr),
            v45 = (*(int (__fastcall **)(int))(*(_DWORD *)v44 + 108))(v44),
            v46 = (CNetPlayerManager *)GetNetPlayerMgr(),
            v47 = GetNetPlayerMgr(),
            v45 == *(_DWORD *)(CNetPlayerManager::GetPlayer(v46, *(_DWORD *)(v47 + 368), 0) + 416)) )
      {
        v22 = (*(int (__fastcall **)(CMatching *))(*(_DWORD *)this + 164))(this);
        (*(void (__fastcall **)(int))(*(_DWORD *)v22 + 24))(v22);
      }
    }
    v5 = (pthread_mutex_t *)GetNetPlayerMgr();
    if ( CEventQueueBase::HasEventOccured(v5 + 96, 3145729, 1) )
    {
      v20 = (COnline *)CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueue, 4194312, nullptr, 0);
      v21 = (pthread_mutex_t *)GetOnline(v20);
      COnline::SyncTime(v21);
    }
    if ( CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388614, 0) )
    {
      CEventQueueBase::GetEventData((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388614, &v50, 4);
      CEventQueueBase::ConsumeEvent((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388614);
      CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueue, 4194316, &v50, 4);
    }
    if ( CEventQueueBase::HasEventOccured((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388619, 1) )
    {
      IsServer = CMatching::IsServer(this);
      if ( *((int *)this + 7) > 0 )
      {
        v19 = 0;
        do
          NetStruct::SetEnabled((CMatching *)((char *)this + 432 * v19++ + 32), IsServer);
        while ( v19 < *((_DWORD *)this + 7) );
      }
      CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueue, 4194322, nullptr, 0);
    }
    v6 = (CConnectionManager *)CEventQueueBase::HasEventOccured(
                                 (pthread_mutex_t *)&CMatching::m_eventQueueInternal,
                                 8388615,
                                 0);
    if ( v6 )
    {
      CEventQueueBase::GetEventData((pthread_mutex_t *)&CMatching::m_eventQueueInternal, 8388615, &v50, 4);
      v14 = (CConnectionManager *)CEventQueueBase::ConsumeEvent(
                                    (pthread_mutex_t *)&CMatching::m_eventQueueInternal,
                                    8388615);
      v15 = (CConnectionManager *)GetConnectionMgr(v14);
      IsConnected = (CConnectionManager *)CConnectionManager::IsConnected(v15, v50);
      if ( IsConnected )
      {
        v17 = (CConnectionManager *)GetConnectionMgr(IsConnected);
        v6 = (CConnectionManager *)CConnectionManager::Disconnect(v17, v50, 0);
      }
      else
      {
        v6 = (CConnectionManager *)CEventQueueBase::AddEvent(
                                     (pthread_mutex_t *)&CMatching::m_eventQueue,
                                     4194317,
                                     &v50,
                                     4);
      }
    }
    v7 = (pthread_mutex_t *)GetConnectionMgr(v6);
    result = (CConnectionManager *)CEventQueueBase::HasEventOccured(v7 + 2, 6291460, 0);
    if ( result )
    {
      v8 = (pthread_mutex_t *)GetConnectionMgr(result);
      EventData = (CConnectionManager *)CEventQueueBase::GetEventData(v8 + 2, 6291460, &v50, 4);
      v10 = (pthread_mutex_t *)GetConnectionMgr(EventData);
      CEventQueueBase::ConsumeEvent(v10 + 2, 6291460);
      v11 = (*(int (__fastcall **)(CMatching *))(*(_DWORD *)this + 108))(this);
      if ( v11 == v50 )
      {
        v48 = (COnline *)CEventQueueBase::AddEvent((pthread_mutex_t *)&CMatching::m_eventQueue, 4194314, &v50, 4);
        v49 = GetOnline(v48);
        return (CConnectionManager *)COnline::ReportDisconnect(v49, 6, 0);
      }
      else
      {
        return (CConnectionManager *)CEventQueueBase::AddEvent(
                                       (pthread_mutex_t *)&CMatching::m_eventQueue,
                                       4194318,
                                       &v50,
                                       4);
      }
    }
  }
  return result;
}


// ===== 8018fc CMatching::Update(void) =====
int __fastcall CMatching::Update(CMatching *this)
{
  CConnectionManager *v2; // r0
  CMessaging *v3; // r0
  CConnectionManager *v4; // r0
  int ConnectionMgr; // r0
  int NetPlayerMgr; // r0
  CSignIn *v7; // r0
  int v8; // r0

  v2 = CMatching::ProcessEvents(this);
  if ( *((_BYTE *)this + 12) )
  {
    v3 = (CMessaging *)CMessaging::Get(v2);
    v4 = (CConnectionManager *)CMessaging::Update(v3);
    ConnectionMgr = GetConnectionMgr(v4);
    (*(void (__fastcall **)(int))(*(_DWORD *)ConnectionMgr + 8))(ConnectionMgr);
    NetPlayerMgr = GetNetPlayerMgr();
    v7 = (CSignIn *)(*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)NetPlayerMgr + 8))(NetPlayerMgr, 0);
    v8 = CSignIn::Get(v7);
    (*(void (__fastcall **)(int))(*(_DWORD *)v8 + 28))(v8);
    (*(void (__fastcall **)(CMatching *))(*(_DWORD *)this + 28))(this);
  }
  *((_BYTE *)this + 16) = 1;
  return 0;
}


// ===== 801970 NetStructString<256u>::Read(NetBitStream &) =====
void __fastcall NetStructString<256u>::Read(int a1)
{
  _DWORD v2[5]; // [sp+4h] [bp-20h] BYREF
  void *__p; // [sp+18h] [bp-Ch]

  NetBitStream::ReadString((NetBitStream *)v2);
  (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)a1 + 28))(a1, v2);
  if ( __p != v2 && __p )
  {
    if ( (unsigned int)(v2[0] - (_DWORD)__p) > 0x80 )
      CustomFree(__p);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(__p, v2[0] - (_DWORD)__p);
  }
}


// ===== 801a0c CBluetoothNetRoomInfo::~CBluetoothNetRoomInfo() =====
void __fastcall CBluetoothNetRoomInfo::~CBluetoothNetRoomInfo(CBluetoothNetRoomInfo *this)
{
  char *v1; // r3
  char *v3; // r0
  size_t v4; // r1
  int v5; // r1

  *((_DWORD *)this + 76) = &off_963790;
  *(_DWORD *)this = off_991E10;
  v1 = (char *)this + 336;
  *((_DWORD *)this + 90) = &off_963648;
  v3 = *((char **)this + 89);
  if ( v3 != v1 && v3 )
  {
    v4 = *((_DWORD *)this + 84) - (_DWORD)v3;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v3, v4);
  }
  v5 = *((_DWORD *)this + 71);
  *((_DWORD *)this + 76) = &off_963648;
  *(_DWORD *)this = off_9924D8;
  if ( v5 )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_erase(
      (int)this + 268,
      *((_DWORD *)this + 68));
    *((_DWORD *)this + 70) = (char *)this + 268;
    *((_DWORD *)this + 71) = 0;
    *((_DWORD *)this + 69) = (char *)this + 268;
    *((_DWORD *)this + 68) = 0;
  }
}


// ===== 801ae8 CBluetoothNetRoomInfo::~CBluetoothNetRoomInfo() =====
void __fastcall CBluetoothNetRoomInfo::~CBluetoothNetRoomInfo(CBluetoothNetRoomInfo *this)
{
  CBluetoothNetRoomInfo::~CBluetoothNetRoomInfo(this);
  CustomFree(this);
}


// ===== 801b04 NetStructNetworkId::~NetStructNetworkId() =====
void __fastcall NetStructNetworkId::~NetStructNetworkId(NetStructNetworkId *this)
{
  ;
}


// ===== 801b08 CMatchingLocal::IsRoomClosed(void) =====
int __fastcall CMatchingLocal::IsRoomClosed(CMatchingLocal *this)
{
  return *((unsigned __int8 *)this + 19309);
}


// ===== 801b14 CMatchingLocal::IsRoomHidden(void) =====
int __fastcall CMatchingLocal::IsRoomHidden(int this)
{
  int v1; // r3
  bool v2; // zf

  v1 = *(unsigned __int8 *)(this + 19341);
  v2 = v1 == 0;
  if ( *(_BYTE *)(this + 19341) )
    this = 1;
  else
    v1 = 19309;
  if ( v2 )
    return *(unsigned __int8 *)(this + v1);
  return this;
}


// ===== 801b30 CMatchingLocal::GetMemberId(void) =====
int __fastcall CMatchingLocal::GetMemberId(CMatchingLocal *this)
{
  return *((_DWORD *)this + 3470);
}


// ===== 801b3c CMatchingLocal::SetMemberId(int) =====
int __fastcall CMatchingLocal::SetMemberId(int this, int a2)
{
  *(_DWORD *)(this + 13880) = a2;
  return this;
}


// ===== 801b48 CMatchingLocal::GetServerMemberId(void) =====
int __fastcall CMatchingLocal::GetServerMemberId(CMatchingLocal *this)
{
  return *((_DWORD *)this + 3471);
}


// ===== 801b54 CMatchingLocal::GetRoomAttributes(void) =====
char *__fastcall CMatchingLocal::GetRoomAttributes(CMatchingLocal *this)
{
  return (char *)this + 18016;
}


// ===== 801b60 CMatchingBluetooth::GetTransportType(tPROTOCOL_TYPE) =====
int __fastcall CMatchingBluetooth::GetTransportType(int a1, unsigned int a2)
{
  if ( a2 <= 2 )
    return CSWTCH_653[a2];
  else
    return 0;
}

