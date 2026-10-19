// ===== 58acac glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS,std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>> &,bool,bool) [clone] =====
void __fastcall glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(
        _DWORD *a1,
        int a2,
        char **a3)
{
  char *v3; // r1
  char *v4; // r6
  char *v6; // r2
  int v8; // r6
  int v9; // r0
  int v10; // r2
  int v11; // r1
  int v12; // r3
  int v13; // r7
  int v14; // r1
  int v15; // r0
  int v16; // r2
  char *v17; // r2
  int v18; // r6
  int v19; // r12
  int v20; // r0
  int v21; // r1
  int v22; // r1
  char *v23; // r3
  int v24; // [sp+Ch] [bp-14h] BYREF
  int v25; // [sp+10h] [bp-10h]
  _DWORD v26[2]; // [sp+14h] [bp-Ch] BYREF
  char v27[4]; // [sp+1Ch] [bp-4h] BYREF

  a1[93] = a2;
  v3 = a3[1];
  v4 = *a3;
  v6 = a3[2];
  v8 = (v3 - v4) >> 3;
  v24 = 0;
  v25 = 0;
  if ( v3 == v6 )
  {
    std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      a3,
      (int)v3,
      &v24,
      (int)v27,
      1u,
      1u);
  }
  else
  {
    *(_DWORD *)v3 = 0;
    *((_DWORD *)v3 + 1) = v25;
    a3[1] += 8;
  }
  v9 = a1[43];
  v10 = *((_DWORD *)*a3 + 1);
  v11 = a1[44];
  v12 = *(_DWORD *)*a3;
  v13 = 0;
  a1[39] = a1[42];
  a1[40] = v9;
  a1[41] = v11;
  a1[43] = v10;
  a1[42] = v12;
  a1[44] = 0;
  if ( v8 )
  {
    while ( 1 )
    {
      ++v13;
      v14 = a1[43];
      v15 = *(_DWORD *)&(*a3)[8 * v13 + 4];
      v16 = a1[44];
      a1[42] = *(_DWORD *)&(*a3)[8 * v13];
      a1[43] = v15;
      a1[41] = v16;
      a1[39] = v12;
      a1[40] = v14;
      a1[44] = 0;
      (*(void (__fastcall **)(int))(*(_DWORD *)v12 + 28))(v12);
      if ( v8 == v13 )
        break;
      v12 = a1[42];
    }
    v12 = a1[42];
  }
  v17 = a3[1];
  v18 = a1[43];
  v19 = a1[44];
  v20 = *((_DWORD *)v17 - 2);
  v21 = *((_DWORD *)v17 - 1);
  a1[44] = 0;
  a1[39] = v12;
  a1[40] = v18;
  a1[41] = v19;
  a1[42] = v20;
  a1[43] = v21;
  v22 = (int)a3[1];
  v23 = *a3;
  v26[1] = 0;
  v26[0] = 0;
  if ( (v22 - (int)v23) >> 3 )
  {
    if ( (char *)v22 != v23 )
      a3[1] = v23;
  }
  else
  {
    std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      a3,
      v22,
      0,
      v26);
  }
}


// ===== 58ae20 glitch::scene::CSceneManager::registerSceneNodeFactory(glitch::scene::ISceneNodeFactory *) =====
void __fastcall glitch::scene::CSceneManager::registerSceneNodeFactory(int a1, int a2)
{
  char *v4; // r8
  unsigned int v5; // r3
  unsigned int v6; // r7
  size_t v7; // r7
  char *v8; // r0
  _BYTE *v9; // r1
  char *v10; // r6
  size_t v11; // r8
  char *v12; // r8

  if ( a2 )
  {
    ++*(_DWORD *)(a2 + 4);
    v4 = *(char **)(a1 + 208);
    if ( v4 == *(char **)(a1 + 212) )
    {
      v5 = (int)&v4[-*(_DWORD *)(a1 + 204)] >> 2;
      if ( v5 )
        v6 = 2 * v5;
      else
        v6 = 1;
      if ( v6 > 0x3FFFFFFF || v5 > v6 )
        v7 = -4;
      else
        v7 = 4 * v6;
      v8 = (char *)GlitchAlloc(v7, 0);
      v9 = *(_BYTE **)(a1 + 204);
      v10 = v8;
      v11 = v4 - v9;
      if ( v11 )
        v12 = (char *)memmove(v8, v9, v11) + v11;
      else
        v12 = v8;
      *(_DWORD *)v12 = a2;
      GlitchFree(*(void **)(a1 + 204));
      *(_DWORD *)(a1 + 212) = &v10[v7];
      *(_DWORD *)(a1 + 208) = v12 + 4;
      *(_DWORD *)(a1 + 204) = v10;
    }
    else
    {
      *(_DWORD *)v4 = a2;
      *(_DWORD *)(a1 + 208) += 4;
    }
  }
}


// ===== 58aee4 glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS,std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>> &,bool,bool) =====
void __fastcall glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(
        glitch::scene::CSceneManager *this,
        int a2,
        const glitch::scene::ISceneNode ***a3,
        int a4,
        char a5)
{
  char *v5; // r1
  char *v7; // r0
  int v10; // r6
  int v11; // r0
  const glitch::scene::ISceneNode *v12; // r2
  int v13; // r1
  const glitch::scene::ISceneNode *v14; // r3
  int v15; // r10
  int v16; // r2
  const glitch::scene::ISceneNode *v17; // r1
  int v18; // r0
  const glitch::scene::ISceneNode **v19; // r2
  int v20; // r6
  int v21; // r12
  int v22; // r0
  int v23; // r1
  int v24; // r1
  int v25; // r3
  _DWORD v26[2]; // [sp+Ch] [bp-14h] BYREF
  int v27; // [sp+14h] [bp-Ch] BYREF
  int v28; // [sp+18h] [bp-8h]
  char v29[4]; // [sp+1Ch] [bp-4h] BYREF

  *((_DWORD *)this + 93) = a2;
  v5 = (char *)a3[1];
  v7 = (char *)a3[2];
  v10 = (v5 - (char *)*a3) >> 3;
  v27 = 0;
  v28 = 0;
  if ( v5 == v7 )
  {
    std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      a3,
      (int)v5,
      &v27,
      (int)v29,
      1u,
      1u);
  }
  else
  {
    *(_DWORD *)v5 = 0;
    *((_DWORD *)v5 + 1) = v28;
    a3[1] += 2;
  }
  v11 = *((_DWORD *)this + 43);
  v12 = (*a3)[1];
  v13 = *((_DWORD *)this + 44);
  v14 = **a3;
  v15 = 0;
  *((_DWORD *)this + 39) = *((_DWORD *)this + 42);
  *((_DWORD *)this + 40) = v11;
  *((_DWORD *)this + 41) = v13;
  *((_DWORD *)this + 43) = v12;
  *((_DWORD *)this + 42) = v14;
  *((_DWORD *)this + 44) = 0;
  if ( v10 )
  {
    while ( 1 )
    {
      ++v15;
      v16 = *((_DWORD *)this + 43);
      v17 = (*a3)[2 * v15 + 1];
      v18 = *((_DWORD *)this + 44);
      *((_DWORD *)this + 42) = (*a3)[2 * v15];
      *((_DWORD *)this + 41) = v18;
      *((_DWORD *)this + 43) = v17;
      *((_DWORD *)this + 39) = v14;
      *((_DWORD *)this + 40) = v16;
      *((_DWORD *)this + 44) = 0;
      if ( a5 && v14 )
      {
        if ( glitch::scene::CSceneManager::isCulled(this, v14) )
          goto LABEL_11;
        v14 = *((const glitch::scene::ISceneNode **)this + 39);
        v16 = *((_DWORD *)this + 40);
      }
      (*(void (__fastcall **)(const glitch::scene::ISceneNode *, int))(*(_DWORD *)v14 + 28))(v14, v16);
LABEL_11:
      if ( v15 == v10 )
      {
        v14 = *((const glitch::scene::ISceneNode **)this + 42);
        break;
      }
      v14 = *((const glitch::scene::ISceneNode **)this + 42);
    }
  }
  v19 = a3[1];
  v20 = *((_DWORD *)this + 43);
  v21 = *((_DWORD *)this + 44);
  v22 = (int)*(v19 - 2);
  v23 = (int)*(v19 - 1);
  *((_DWORD *)this + 39) = v14;
  *((_DWORD *)this + 40) = v20;
  *((_DWORD *)this + 41) = v21;
  *((_DWORD *)this + 42) = v22;
  *((_DWORD *)this + 43) = v23;
  *((_DWORD *)this + 44) = 0;
  if ( !a4 )
  {
    v25 = (int)(a3[1] - 2);
LABEL_16:
    a3[1] = (const glitch::scene::ISceneNode **)v25;
    return;
  }
  v24 = (int)a3[1];
  v25 = (int)*a3;
  v26[1] = 0;
  v26[0] = 0;
  if ( !((v24 - v25) >> 3) )
  {
    std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      a3,
      v24,
      0,
      v26);
    return;
  }
  if ( v24 != v25 )
    goto LABEL_16;
}


// ===== 58b0a8 glitch::scene::CSceneManager::drawShadowReceivers(void) =====
int __fastcall glitch::scene::CSceneManager::drawShadowReceivers(int this)
{
  int v1; // r7
  bool v2; // zf
  int v3; // r0
  _DWORD *v4; // r5
  char v5; // r2
  char v6; // r12
  char v7; // r1
  void (__fastcall *v8)(int, int); // r3
  glitch::scene::ICameraSceneNode *v9; // r4
  int v10; // r0
  int v11; // r9
  int v12; // r11
  int v13; // r6
  const void *v14; // r0
  _BOOL4 v15; // r3
  int v16; // [sp+10h] [bp-64h]
  glitch::scene::ICameraSceneNode *v17; // [sp+14h] [bp-60h]
  int v18; // [sp+18h] [bp-5Ch]
  _DWORD v19[17]; // [sp+24h] [bp-50h] BYREF
  int v20; // [sp+68h] [bp-Ch]
  int v21; // [sp+6Ch] [bp-8h]

  v1 = this;
  if ( *(_DWORD *)(this + 144) != *(_DWORD *)(this + 148) && *(_DWORD *)(this + 48) != *(_DWORD *)(this + 52) )
  {
    v17 = *(glitch::scene::ICameraSceneNode **)(this + 228);
    ++*(_DWORD *)((char *)v17 + *(_DWORD *)(*(_DWORD *)v17 - 12) + 4);
    v18 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 20) + 216))(*(_DWORD *)(this + 20));
    v16 = *(_DWORD *)(v1 + 144);
    v2 = v16 == *(_DWORD *)(v1 + 148);
    v21 = v18;
    if ( !v2 )
    {
      do
      {
        v3 = *(_DWORD *)(v1 + 20);
        v4 = *(_DWORD **)v16;
        v5 = *(_BYTE *)(*(_DWORD *)v16 + 28);
        v6 = *(_BYTE *)(*(_DWORD *)v16 + 31);
        v7 = *(_BYTE *)(*(_DWORD *)v16 + 29);
        v8 = *(void (__fastcall **)(int, int))(*(_DWORD *)v3 + 220);
        BYTE2(v20) = *(_BYTE *)(*(_DWORD *)v16 + 30);
        HIBYTE(v20) = v6;
        LOBYTE(v20) = v5;
        BYTE1(v20) = v7;
        v8(v3, v20);
        v9 = (glitch::scene::ICameraSceneNode *)v4[5];
        glitch::scene::CSceneManager::setActiveCamera(v1, v9);
        (*(void (__fastcall **)(_DWORD *, _DWORD))(*v4 + 20))(v4, *(_DWORD *)(v1 + 20));
        v10 = (*(int (__fastcall **)(_DWORD *))(*v4 + 12))(v4);
        v11 = v10;
        if ( v10 > 0 )
        {
          v12 = v10 - 1;
          v13 = 0;
          do
          {
            (*(void (__fastcall **)(_DWORD *, int))(*v4 + 16))(v4, v13);
            (*(void (__fastcall **)(glitch::scene::ICameraSceneNode *, _DWORD))(*(_DWORD *)v9 + 184))(v9, 0);
            glitch::scene::CCameraSceneNode::recalculateMatrices(v9);
            v14 = (const void *)(*(int (__fastcall **)(glitch::scene::ICameraSceneNode *))(*(_DWORD *)v9 + 248))(v9);
            LOBYTE(v19[16]) = 0;
            memcpy(v19, v14, 0x41u);
            v19[0] += 0x80000000;
            v19[4] += 0x80000000;
            v19[8] += 0x80000000;
            v19[12] += 0x80000000;
            LOBYTE(v19[16]) = 0;
            (*(void (__fastcall **)(glitch::scene::ICameraSceneNode *, _DWORD *, _DWORD))(*(_DWORD *)v9 + 244))(
              v9,
              v19,
              0);
            (*(void (__fastcall **)(glitch::scene::ICameraSceneNode *, _DWORD))(*(_DWORD *)v9 + 28))(v9, 0);
            (*(void (__fastcall **)(_DWORD *, _DWORD))(*v4 + 24))(v4, *(_DWORD *)(v1 + 20));
            (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(v1 + 20) + 168))(*(_DWORD *)(v1 + 20), 3);
            v15 = v13++ == v12;
            glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(
              (glitch::scene::CSceneManager *)v1,
              7,
              (const glitch::scene::ISceneNode ***)(v1 + 48),
              v15,
              1);
            (*(void (__fastcall **)(_DWORD *, _DWORD))(*v4 + 28))(v4, *(_DWORD *)(v1 + 20));
          }
          while ( v11 != v13 );
        }
        v16 += 4;
      }
      while ( v16 != *(_DWORD *)(v1 + 148) );
    }
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(v1 + 20) + 220))(*(_DWORD *)(v1 + 20), v21);
    glitch::scene::CSceneManager::setActiveCamera(v1, v17);
    return glitch::IReferenceCounted::drop((glitch::scene::ICameraSceneNode *)((char *)v17
                                                                             + *(_DWORD *)(*(_DWORD *)v17 - 12)));
  }
  return this;
}


// ===== 58b350 glitch::scene::CSceneManager::clearDeletionList(void) =====
int __fastcall glitch::scene::CSceneManager::clearDeletionList(int this)
{
  int v1; // r3
  int v2; // r2
  int v3; // r5
  unsigned int v4; // r4
  _DWORD *v5; // r3
  int v6; // r2

  v1 = *(_DWORD *)(this + 192);
  v2 = *(_DWORD *)(this + 196);
  v3 = this;
  if ( v1 != v2 )
  {
    if ( !((unsigned int)(v2 - v1) >> 2) )
      goto LABEL_6;
    v4 = 0;
    do
    {
      (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 4 * v4) + 104))(*(_DWORD *)(v1 + 4 * v4));
      v5 = *(_DWORD **)(*(_DWORD *)(v3 + 192) + 4 * v4++);
      this = glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v5 + *(_DWORD *)(*v5 - 12)));
      v6 = *(_DWORD *)(v3 + 196);
      v1 = *(_DWORD *)(v3 + 192);
    }
    while ( v4 < (v6 - v1) >> 2 );
    if ( v6 != v1 )
LABEL_6:
      *(_DWORD *)(v3 + 196) = v1;
  }
  return this;
}


// ===== 58b3cc std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(glitch::scene::ISceneNode **,glitch::scene::ISceneNode * const&,std::__true_type const&,uint,bool) =====
void __fastcall std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        const void **a1,
        _BYTE *a2,
        _DWORD *a3,
        int a4,
        unsigned int a5,
        char a6)
{
  size_t v9; // r8
  char *v10; // r0
  char *v11; // r7
  size_t v12; // r10
  char *v13; // r10
  unsigned int v14; // r2
  int v15; // r3
  size_t v16; // r4

  v9 = 4
     * std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
         a1,
         a5);
  v10 = (char *)GlitchAlloc(v9, 0);
  v11 = v10;
  if ( a2 != *a1 )
  {
    v12 = a2 - (_BYTE *)*a1;
    v10 = (char *)memmove(v10, *a1, v12) + v12;
  }
  v13 = v10;
  if ( a5 )
  {
    v14 = a5;
    v15 = 0;
    do
    {
      --v14;
      *(_DWORD *)&v10[v15] = *a3;
      v15 += 4;
    }
    while ( v14 );
    v13 = &v10[4 * a5];
  }
  if ( !a6 )
  {
    v16 = (_BYTE *)a1[1] - a2;
    if ( v16 )
      v13 = (char *)memmove(v13, a2, v16) + v16;
  }
  GlitchFree((void *)*a1);
  a1[2] = &v11[v9];
  *a1 = v11;
  a1[1] = v13;
}


// ===== 58b48c std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::scene::ISceneNode **,uint,glitch::scene::ISceneNode * const&) =====
void __fastcall std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        int a1,
        char *a2,
        unsigned int a3,
        char *a4)
{
  _BYTE v4[4]; // [sp+8h] [bp-Ch] BYREF

  if ( a3 )
  {
    if ( a3 <= (*(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4)) >> 2 )
      std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        (char *)a1,
        a2,
        a3,
        a4);
    else
      std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)a1,
        a2,
        a4,
        (int)v4,
        a3,
        0);
  }
}


// ===== 58b4e0 glitch::scene::CSceneManager::addToDeletionQueue(glitch::scene::ISceneNode *) =====
void __fastcall glitch::scene::CSceneManager::addToDeletionQueue(
        glitch::scene::CSceneManager *this,
        glitch::scene::ISceneNode *a2)
{
  _BYTE *v2; // r1
  glitch::scene::ISceneNode *v3; // [sp+Ch] [bp-10h] BYREF
  _BYTE v4[8]; // [sp+14h] [bp-8h] BYREF

  v3 = a2;
  if ( a2 )
  {
    ++*(_DWORD *)((char *)a2 + *(_DWORD *)(*(_DWORD *)a2 - 12) + 4);
    v2 = *((_BYTE **)this + 49);
    if ( v2 == *((_BYTE **)this + 50) )
    {
      std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)this + 48,
        v2,
        &v3,
        (int)v4,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v2 = v3;
      *((_DWORD *)this + 49) += 4;
    }
  }
}


// ===== 58b558 glitch::scene::CSceneManager::collectAllNodes(glitch::scene::ISceneNode *) =====
void __fastcall glitch::scene::CSceneManager::collectAllNodes(
        glitch::scene::CSceneManager *this,
        glitch::scene::ISceneNode *a2)
{
  _BYTE *v3; // r1
  _DWORD *Animators; // r0
  _BYTE *v5; // r1
  glitch::scene::ISceneNode *v6; // r5
  glitch::scene::ISceneNode *v7; // r6
  glitch::scene::ISceneNode *v8; // r1
  glitch::scene::ISceneNode *v9; // [sp+Ch] [bp-Ch] BYREF
  _BYTE v10[4]; // [sp+10h] [bp-8h] BYREF
  _BYTE v11[4]; // [sp+14h] [bp-4h] BYREF

  v9 = a2;
  if ( (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 188))(a2) != 2037673317
    && (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)v9 + 188))(v9) != 2037214564
    && (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)v9 + 188))(v9) != 1852137828
    && (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)v9 + 188))(v9) != 1919380851 )
  {
    v3 = *((_BYTE **)this + 157);
    if ( v3 == *((_BYTE **)this + 158) )
    {
      std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)this + 156,
        v3,
        &v9,
        (int)v11,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v3 = v9;
      *((_DWORD *)this + 157) += 4;
    }
  }
  Animators = (_DWORD *)glitch::scene::ISceneNode::getAnimators(v9);
  if ( (_DWORD *)*Animators != Animators )
  {
    v5 = *((_BYTE **)this + 160);
    if ( v5 == *((_BYTE **)this + 161) )
    {
      std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)this + 159,
        v5,
        &v9,
        (int)v10,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v5 = v9;
      *((_DWORD *)this + 160) += 4;
    }
  }
  v7 = (glitch::scene::ISceneNode *)((char *)v9 + 244);
  v6 = *((glitch::scene::ISceneNode **)v9 + 61);
  if ( v6 != (glitch::scene::ISceneNode *)((char *)v9 + 244) )
  {
    do
    {
      if ( v6 )
        v8 = (glitch::scene::ISceneNode *)((char *)v6 - 4);
      else
        v8 = nullptr;
      glitch::scene::CSceneManager::collectAllNodes(this, v8);
      v6 = *(glitch::scene::ISceneNode **)v6;
    }
    while ( v7 != v6 );
  }
}


// ===== 58b6c8 glitch::scene::CSceneManager::collectAllNodes(std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
void __fastcall glitch::scene::CSceneManager::collectAllNodes(
        glitch::scene::CSceneManager *this,
        glitch::scene::ISceneNode ***a2)
{
  int v2; // r3
  int v5; // r3
  glitch::scene::ISceneNode **i; // r4
  glitch::scene::ISceneNode *v7; // t1

  v2 = *((_DWORD *)this + 156);
  if ( v2 != *((_DWORD *)this + 157) )
    *((_DWORD *)this + 157) = v2;
  v5 = *((_DWORD *)this + 159);
  if ( v5 != *((_DWORD *)this + 160) )
    *((_DWORD *)this + 160) = v5;
  for ( i = *a2; i != a2[1]; ++i )
  {
    v7 = *i;
    glitch::scene::CSceneManager::collectAllNodes(this, v7);
  }
  *((_BYTE *)this + 648) = 0;
}


// ===== 58b728 glitch::scene::CSceneManager::drawAll(std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
int __fastcall glitch::scene::CSceneManager::drawAll(glitch::scene::CSceneManager *a1, glitch::scene::ISceneNode ***a2)
{
  glitch::io::IAttributes *v4; // r1

  (*(void (__fastcall **)(glitch::scene::CSceneManager *, _DWORD))(*(_DWORD *)a1 + 64))(a1, *((_DWORD *)a1 + 5));
  glitch::scene::CSceneManager::collectAllNodes(a1, a2);
  (*(void (__fastcall **)(glitch::scene::CSceneManager *))(*(_DWORD *)a1 + 68))(a1);
  (*(void (__fastcall **)(glitch::scene::CSceneManager *, glitch::scene::ISceneNode ***))(*(_DWORD *)a1 + 44))(a1, a2);
  (*(void (__fastcall **)(glitch::scene::CSceneManager *))(*(_DWORD *)a1 + 76))(a1);
  (*(void (__fastcall **)(glitch::scene::CSceneManager *, _DWORD))(*(_DWORD *)a1 + 72))(a1, *((_DWORD *)a1 + 5));
  *((_DWORD *)a1 + 93) = 9;
  return `anonymous namespace'::SStats::reset((int)a1 + 276, v4);
}


// ===== 58b7ac glitch::scene::CSceneManager::collectAllNodes(void) =====
void __fastcall glitch::scene::CSceneManager::collectAllNodes(glitch::scene::CSceneManager *this)
{
  int v2; // r3
  int v3; // r3

  if ( *((_BYTE *)this + 648) )
  {
    v2 = *((_DWORD *)this + 156);
    if ( v2 != *((_DWORD *)this + 157) )
      *((_DWORD *)this + 157) = v2;
    v3 = *((_DWORD *)this + 159);
    if ( v3 != *((_DWORD *)this + 160) )
      *((_DWORD *)this + 160) = v3;
    glitch::scene::CSceneManager::collectAllNodes(this, *((glitch::scene::ISceneNode **)this + 1));
    *((_BYTE *)this + 648) = 0;
  }
}


// ===== 58b7f4 glitch::scene::CSceneManager::drawAll(glitch::scene::ISceneNode *) =====
int __fastcall glitch::scene::CSceneManager::drawAll(glitch::scene::CSceneManager *this, glitch::scene::ISceneNode *a2)
{
  glitch::io::IAttributes *v4; // r1

  (*(void (__fastcall **)(glitch::scene::CSceneManager *, _DWORD))(*(_DWORD *)this + 64))(this, *((_DWORD *)this + 6));
  if ( !a2 && *((_BYTE *)this + 648) )
    glitch::scene::CSceneManager::collectAllNodes(this);
  (*(void (__fastcall **)(glitch::scene::CSceneManager *))(*(_DWORD *)this + 68))(this);
  (*(void (__fastcall **)(glitch::scene::CSceneManager *, glitch::scene::ISceneNode *))(*(_DWORD *)this + 40))(this, a2);
  (*(void (__fastcall **)(glitch::scene::CSceneManager *))(*(_DWORD *)this + 76))(this);
  (*(void (__fastcall **)(glitch::scene::CSceneManager *, _DWORD))(*(_DWORD *)this + 72))(this, *((_DWORD *)this + 6));
  *((_DWORD *)this + 93) = 9;
  return `anonymous namespace'::SStats::reset((int)this + 276, v4);
}


// ===== 58b88c glitch::scene::CSceneManager::registerSceneNodes(glitch::scene::ISceneNode *) =====
void __fastcall glitch::scene::CSceneManager::registerSceneNodes(
        const glitch::scene::ISceneNode ***this,
        glitch::scene::ISceneNode *a2)
{
  glitch::scene::ISceneNode *Parent; // r0
  _DWORD *v5; // r6
  glitch::scene::ISceneNode *v6; // r7
  _DWORD *v7; // r5
  glitch::scene::ISceneNode *v8; // r4
  _DWORD *v9; // r3
  const glitch::scene::ISceneNode *v10; // r1
  _DWORD *v11; // r3
  glitch::scene::ISceneNode *v12; // r0
  const glitch::scene::ISceneNode **v13; // r4
  const glitch::scene::ISceneNode **v14; // r5
  const glitch::scene::ISceneNode *v15; // r3

  if ( a2 )
  {
    Parent = (glitch::scene::ISceneNode *)glitch::scene::ISceneNode::getParent(a2);
    v5 = *((_DWORD **)a2 + 1);
    v6 = Parent;
    v7 = (_DWORD *)((char *)a2 + 4);
    v8 = Parent;
    while ( 1 )
    {
      if ( v7 )
        v9 = v7 - 1;
      else
        v9 = nullptr;
      if ( (v9[71] & 1) != 0
        && (v7 ? (v10 = (const glitch::scene::ISceneNode *)(v7 - 1)) : (v10 = nullptr),
            !glitch::scene::CSceneManager::isCulled((glitch::scene::CSceneManager *)this, v10)
         && (v7 ? (v11 = v7 - 1) : (v11 = nullptr), (*(int (__fastcall **)(_DWORD *))(*v11 + 16))(v11))) )
      {
        if ( v7 )
          v8 = (glitch::scene::ISceneNode *)(v7 - 1);
        else
          v8 = nullptr;
        v7 = *((_DWORD **)v8 + 61);
        v5 = (_DWORD *)((char *)v8 + 244);
        if ( (_DWORD *)((char *)v8 + 244) != v7 )
          goto LABEL_19;
      }
      else
      {
        v7 = (_DWORD *)*v7;
        if ( v5 != v7 )
          goto LABEL_19;
      }
      if ( v6 == v8 )
        return;
      while ( 1 )
      {
        v12 = (glitch::scene::ISceneNode *)glitch::scene::ISceneNode::getParent(v8);
        v7 = *((_DWORD **)v8 + 1);
        v5 = (_DWORD *)((char *)v12 + 244);
        if ( (_DWORD *)((char *)v12 + 244) != v7 )
          break;
        v8 = v12;
        if ( v6 == v12 )
          return;
      }
      v8 = v12;
LABEL_19:
      if ( v8 == v6 )
        return;
    }
  }
  if ( *((_BYTE *)this + 648) )
    glitch::scene::CSceneManager::collectAllNodes((glitch::scene::CSceneManager *)this);
  v13 = *(this + 156);
  v14 = *(this + 157);
  while ( v13 != v14 )
  {
    while ( (*((_DWORD *)*v13 + 71) & 1) == 0
         || glitch::scene::CSceneManager::isCulled((glitch::scene::CSceneManager *)this, *v13) )
    {
      if ( ++v13 == v14 )
        return;
    }
    v15 = *v13++;
    (*(void (__fastcall **)(const glitch::scene::ISceneNode *))(*(_DWORD *)v15 + 16))(v15);
  }
}


// ===== 58b9f0 glitch::scene::CSceneManager::update(float,bool) =====
void __fastcall glitch::scene::CSceneManager::update(glitch::scene::CSceneManager *this, float a2, int a3)
{
  float v5; // r0
  unsigned int v6; // r6
  int v7; // r3
  unsigned int v8; // r5
  int v9; // r3
  float Time; // r0

  if ( a2 == -123460.0 )
  {
    Time = (float)(unsigned int)glitch::os::Timer::getTime((glitch::os::Timer *)(a2 == -123460.0));
    *((float *)this + 149) = Time;
    v6 = (unsigned int)Time;
    if ( !*((_BYTE *)this + 648) )
      goto LABEL_3;
  }
  else
  {
    v5 = a2 + *((float *)this + 149);
    *((float *)this + 149) = v5;
    v6 = (unsigned int)v5;
    if ( !*((_BYTE *)this + 648) )
      goto LABEL_3;
  }
  glitch::scene::CSceneManager::collectAllNodes(this);
LABEL_3:
  if ( a3 )
  {
    v7 = *((_DWORD *)this + 159);
    if ( (unsigned int)(*((_DWORD *)this + 160) - v7) >> 2 )
    {
      v8 = 0;
      do
      {
        v9 = *(_DWORD *)(v7 + 4 * v8++);
        (*(void (__fastcall **)(int, unsigned int))(*(_DWORD *)v9 + 24))(v9, v6);
        v7 = *((_DWORD *)this + 159);
      }
      while ( v8 < (*((_DWORD *)this + 160) - v7) >> 2 );
    }
  }
  else
  {
    (*(void (__fastcall **)(_DWORD, unsigned int))(**((_DWORD **)this + 1) + 20))(*((_DWORD *)this + 1), v6);
  }
}


// ===== 58bad8 glitch::core::randomString(int) =====
glitch::core *__fastcall glitch::core::randomString(glitch::core *this, int a2)
{
  int v3; // r7
  unsigned int v4; // r0
  _DWORD v7[4]; // [sp+Ch] [bp-20h] BYREF
  _BYTE *v8; // [sp+1Ch] [bp-10h]
  void *p; // [sp+20h] [bp-Ch]

  v8 = v7;
  p = v7;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v7,
    0x10u);
  v3 = 0;
  *v8 = 0;
  if ( a2 > 0 )
  {
    do
    {
      v4 = lrand48();
      ++v3;
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        v7,
        (_DWORD *)glitch::core::randomString(int)::alphanum[v4 % 0x3E]);
    }
    while ( v3 != a2 );
  }
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    this,
    (char *)p);
  if ( p != v7 && p )
    GlitchFree(p);
  return this;
}


// ===== 58bbc4 glitch::scene::CSceneManager::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CSceneManager::deserializeAttributes(int a1, int a2)
{
  int v2; // r8
  void (__fastcall *v5)(int, void **); // r10
  int v6; // r7
  void (__fastcall *v7)(int, int); // r8
  int v8; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int v12; // r0
  void (__fastcall *v13)(int, _DWORD *); // r3
  int v14; // r0
  void (__fastcall *v15)(int, _DWORD *); // r3
  int v16; // r0
  void (__fastcall *v17)(int, _DWORD *); // r3
  _DWORD v19[5]; // [sp+0h] [bp-3Ch] BYREF
  _DWORD v20[4]; // [sp+14h] [bp-28h] BYREF
  _DWORD v21[3]; // [sp+24h] [bp-18h] BYREF
  _DWORD v22[3]; // [sp+30h] [bp-Ch] BYREF
  void *v23[5]; // [sp+3Ch] [bp+0h] BYREF
  void *p; // [sp+50h] [bp+14h]

  v2 = *(_DWORD *)(a1 + 4);
  v5 = *(void (__fastcall **)(int, void **))(*(_DWORD *)v2 + 44);
  (*(void (__fastcall **)(void **))(*(_DWORD *)a2 + 132))(v23);
  v5(v2, v23);
  if ( p != v23 && p )
    GlitchFree(p);
  v6 = *(_DWORD *)(a1 + 4);
  v7 = *(void (__fastcall **)(int, int))(*(_DWORD *)v6 + 80);
  v8 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 88))(a2, "Id");
  v7(v6, v8);
  (*(void (__fastcall **)(_DWORD *, int, const char *))(*(_DWORD *)a2 + 316))(v19, a2, "AmbientLight");
  v9 = v19[1];
  v10 = v19[2];
  v11 = v19[3];
  *(_DWORD *)(a1 + 260) = v19[0];
  *(_DWORD *)(a1 + 264) = v9;
  *(_DWORD *)(a1 + 268) = v10;
  *(_DWORD *)(a1 + 272) = v11;
  v12 = *(_DWORD *)(a1 + 4);
  v13 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v12 + 164);
  memset(v22, 0, sizeof(v22));
  v13(v12, v22);
  v14 = *(_DWORD *)(a1 + 4);
  v15 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v14 + 156);
  memset(v20, 0, 12);
  v20[3] = 1065353216;
  v15(v14, v20);
  v16 = *(_DWORD *)(a1 + 4);
  v17 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v16 + 148);
  v21[2] = 1065353216;
  v21[0] = 1065353216;
  v21[1] = 1065353216;
  v17(v16, v21);
  (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 4) + 72))(*(_DWORD *)(a1 + 4), 1);
  glitch::scene::ISceneNode::setAutomaticCulling(*(_DWORD *)(a1 + 4), 0);
  glitch::scene::ISceneNode::setIsDebugObject(*(glitch::scene::ISceneNode **)(a1 + 4), 0);
  return (*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(a1 + 4) + 184))(*(_DWORD *)(a1 + 4), 0);
}


// ===== 58bd7c std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,glitch::scene::ISceneNode * const&) [clone] =====
void __fastcall std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        int a1,
        char *a2)
{
  int v2; // r4
  int v3; // r5

  v2 = *(_DWORD *)a1;
  v3 = *(_DWORD *)(a1 + 4);
  if ( (v3 - *(_DWORD *)a1) >> 2 )
  {
    if ( v3 != v2 )
      *(_DWORD *)(a1 + 4) = v2;
  }
  else
  {
    std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      a1,
      *(char **)(a1 + 4),
      0,
      a2);
  }
}


// ===== 58bdb0 glitch::scene::CSceneManager::getMesh(glitch::io::IReadFile *) =====
glitch::scene::CSceneManager *__fastcall glitch::scene::CSceneManager::getMesh(
        glitch::scene::CSceneManager *this,
        glitch::io::IReadFile *a2,
        int a3)
{
  char *v6; // r0
  int v7; // r5
  void (__fastcall *v8)(glitch::IReferenceCounted **, int, int); // r4
  int v9; // r0
  glitch::IReferenceCounted *v10; // r3
  glitch::IReferenceCounted *v11; // r0
  void *v13; // r1
  char v14; // r2
  _BYTE *v15; // r1
  int v16; // r3
  int v17; // r10
  int v18; // r4
  int v19; // r5
  glitch::IReferenceCounted *v20; // r3
  glitch::IReferenceCounted *v21; // r0
  int v22; // r5
  void (__fastcall *v23)(int, int, glitch::IReferenceCounted **); // r4
  int v24; // r0
  int v25; // r0
  bool v26; // zf
  int v27; // r0
  glitch::IReferenceCounted *v28; // [sp+10h] [bp-2Ch] BYREF
  glitch::IReferenceCounted *v29; // [sp+14h] [bp-28h] BYREF
  _DWORD v30[4]; // [sp+1Ch] [bp-20h] BYREF
  _BYTE *v31; // [sp+2Ch] [bp-10h]
  void *p; // [sp+30h] [bp-Ch]

  if ( a3 )
  {
    v6 = (char *)(*(int (__fastcall **)(int))(*(_DWORD *)a3 + 40))(a3);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v30,
      v6);
    v7 = *((_DWORD *)a2 + 92);
    v8 = *(void (__fastcall **)(glitch::IReferenceCounted **, int, int))(*(_DWORD *)v7 + 40);
    v9 = (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 40))(a3);
    v8(&v29, v7, v9);
    v10 = v29;
    if ( v29 )
    {
      *(_DWORD *)this = v29;
      ++*((_DWORD *)v10 + 1);
      v11 = v29;
    }
    else
    {
      v13 = p;
      if ( v31 != p )
      {
        do
        {
          v14 = *((_BYTE *)v10 + (_DWORD)v13);
          v15 = (char *)v10 + (_DWORD)v13;
          v10 = (glitch::IReferenceCounted *)((char *)v10 + 1);
          if ( (unsigned __int8)(v14 - 65) <= 0x19u )
            v14 += 32;
          *v15 = v14;
          v13 = p;
        }
        while ( (unsigned int)v10 < v31 - (_BYTE *)p );
      }
      v16 = *((_DWORD *)a2 + 45);
      v17 = (*((_DWORD *)a2 + 46) - v16) >> 2;
      if ( v17 - 1 >= 0 )
      {
        v18 = 4 * (v17 - 1);
        v19 = 0;
        while ( 1 )
        {
          if ( (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v16 + v18) + 12))(*(_DWORD *)(v16 + v18)) )
          {
            (*(void (__fastcall **)(int, _DWORD, _DWORD))(*(_DWORD *)a3 + 24))(a3, 0, 0);
            (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int))(**(_DWORD **)(*((_DWORD *)a2 + 45) + v18)
                                                                              + 16))(
              &v28,
              *(_DWORD *)(*((_DWORD *)a2 + 45) + v18),
              a3);
            v20 = v28;
            if ( v28 )
              ++*((_DWORD *)v28 + 1);
            v21 = v29;
            v29 = v20;
            if ( v21 )
              glitch::IReferenceCounted::drop(v21);
            if ( v28 )
              glitch::IReferenceCounted::drop(v28);
            if ( v29 )
              break;
          }
          ++v19;
          v18 -= 4;
          if ( v19 == v17 )
            goto LABEL_28;
          v16 = *((_DWORD *)a2 + 45);
        }
        v22 = *((_DWORD *)a2 + 92);
        v23 = *(void (__fastcall **)(int, int, glitch::IReferenceCounted **))(*(_DWORD *)v22 + 12);
        v24 = (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 40))(a3);
        v23(v22, v24, &v29);
      }
LABEL_28:
      if ( v29 )
      {
        v25 = (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 40))(a3);
        glitch::os::Printer::log("Loaded mesh", v25, 1);
      }
      else
      {
        v27 = (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 40))(a3);
        glitch::os::Printer::log("Could not load mesh, file format seems to be unsupported", v27, 3);
      }
      v11 = v29;
      v26 = v29 == nullptr;
      *(_DWORD *)this = v29;
      if ( !v26 )
      {
        ++*((_DWORD *)v11 + 1);
        v11 = v29;
      }
    }
    if ( v11 )
      glitch::IReferenceCounted::drop(v11);
    if ( p != v30 && p )
      GlitchFree(p);
  }
  else
  {
    *(_DWORD *)this = 0;
  }
  return this;
}


// ===== 58c088 glitch::scene::CSceneManagerRootNode::~CSceneManagerRootNode() =====
void __fastcall glitch::scene::CSceneManagerRootNode::~CSceneManagerRootNode(
        glitch::scene::CSceneManagerRootNode *this)
{
  *((_DWORD *)this + 82) = off_976400;
  *(_DWORD *)this = off_97645C;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_97645C;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_976560;
  glitch::scene::ISceneNode::~ISceneNode(this);
  LC_API_FREE_0(this);
}


// ===== 58c0f8 `virtual thunk to'glitch::scene::CSceneManagerRootNode::~CSceneManagerRootNode() =====
void __fastcall `virtual thunk to'glitch::scene::CSceneManagerRootNode::~CSceneManagerRootNode(
        glitch::scene::CSceneManagerRootNode *this)
{
  glitch::scene::CSceneManagerRootNode::~CSceneManagerRootNode((glitch::scene::CSceneManagerRootNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 58c108 `virtual thunk to'glitch::scene::CSceneManagerRootNode::~CSceneManagerRootNode() =====
void __fastcall `virtual thunk to'glitch::scene::CSceneManagerRootNode::~CSceneManagerRootNode(
        glitch::scene::CSceneManagerRootNode *this)
{
  glitch::scene::CSceneManagerRootNode::~CSceneManagerRootNode((glitch::scene::CSceneManagerRootNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 58c118 glitch::scene::SDefaultSegmentCompileCallback::operator()(glitch::scene::CBatchMesh *,void *,glitch::scene::SCompileInfo const&) =====
void __fastcall glitch::scene::SDefaultSegmentCompileCallback::operator()(int a1, int a2, int a3, int a4)
{
  int v4; // r2
  glitch::scene::CBatchMesh *v7; // r6
  glitch::video::CPrimitiveStream *v8; // r0
  int v9; // r8
  int PrimitiveCount; // r7
  int CurrentRenderedNode; // r0
  __int16 v12; // r0
  unsigned int v13; // r0
  int v14; // r7
  unsigned int v15; // r8
  glitch::video::CVertexStreams *v16; // r3
  glitch::IReferenceCounted *v17; // r3
  int v18; // r3
  glitch::video::CVertexStreams *v19; // r4
  int v21; // r10
  int v22; // r0
  int *v23; // r0
  glitch::video::CVertexStreams *v24[2]; // [sp+0h] [bp-14h] BYREF
  glitch::IReferenceCounted *v25; // [sp+8h] [bp-Ch]
  int v26; // [sp+Ch] [bp-8h]

  v4 = *(_DWORD *)(a1 + 4);
  v7 = *(glitch::scene::CBatchMesh **)(v4 + 304);
  if ( *(_DWORD *)(a1 + 16) == -1 )
    *(_DWORD *)(a1 + 16) = glitch::scene::CBatchMesh::addBatch(*(glitch::scene::CBatchMesh **)(v4 + 304));
  v8 = *(glitch::video::CPrimitiveStream **)(a4 + 4);
  v9 = *((_DWORD *)v8 + 4) - *((_DWORD *)v8 + 3);
  PrimitiveCount = glitch::video::CPrimitiveStream::getPrimitiveCount(v8);
  CurrentRenderedNode = glitch::scene::CSceneManager::getCurrentRenderedNode(
                          *(glitch::scene::CSceneManager **)(a1 + 8),
                          nullptr,
                          nullptr);
  v12 = (*(int (__fastcall **)(int))(*(_DWORD *)CurrentRenderedNode + 216))(CurrentRenderedNode);
  v13 = glitch::scene::CBatchMesh::addSegment(v7, v9, 3 * PrimitiveCount, v12);
  v14 = *(_DWORD *)(a4 + 8);
  v15 = v13;
  if ( v14 && *(_BYTE *)(v14 + 52) )
  {
    v21 = *((_DWORD *)v7 + 2)
        + *((_DWORD *)v7 + 28)
        * (*(unsigned __int16 *)(*((_DWORD *)v7 + 8) + 20 * *(_DWORD *)(*((_DWORD *)v7 + 5) + 8 * v13) + 12)
         + *(_DWORD *)(*((_DWORD *)v7 + 5) + 8 * v13 + 4));
    v22 = glitch::scene::CSceneManager::getCurrentRenderedNode(
            *(glitch::scene::CSceneManager **)(a1 + 8),
            nullptr,
            nullptr);
    v23 = (int *)(*(int (__fastcall **)(int))(*(_DWORD *)v22 + 48))(v22);
    glitch::scene::CBatchMesh::SSegment::setSourceBuffer(v21, v14, v23);
  }
  if ( *(_DWORD *)(a1 + 12) )
  {
    v16 = *(glitch::video::CVertexStreams **)a4;
    v24[0] = v16;
    if ( v16 )
      ++*(_DWORD *)v16;
    v17 = *(glitch::IReferenceCounted **)(a4 + 8);
    v24[1] = *(glitch::video::CVertexStreams **)(a4 + 4);
    v25 = v17;
    if ( v17 )
      ++*((_DWORD *)v17 + 1);
    v18 = *(_DWORD *)(a1 + 12);
    v26 = *(_DWORD *)(a1 + 8);
    (*(void (__fastcall **)(int, glitch::scene::CBatchMesh *, unsigned int, glitch::video::CVertexStreams **))(*(_DWORD *)v18 + 8))(
      v18,
      v7,
      v15,
      v24);
    if ( v25 )
      glitch::IReferenceCounted::drop(v25);
    v19 = v24[0];
    if ( v24[0] )
    {
      if ( (*(_DWORD *)v24[0])-- == 1 )
      {
        glitch::video::CVertexStreams::~CVertexStreams(v19);
        LC_API_FREE_0(v19);
      }
    }
  }
}


// ===== 58c2c4 glitch::scene::CAppendMeshBuffer::copyVertexData(void *) =====
void *__fastcall glitch::scene::CAppendMeshBuffer::copyVertexData(glitch::scene::CAppendMeshBuffer *this, void *a2)
{
  const void *v4; // r0
  void *result; // r0
  _BYTE *v6; // r4
  char v7; // r3

  v4 = (const void *)glitch::video::IBuffer::map(*((_DWORD *)this + 22), 1);
  result = memcpy(a2, v4, *((_DWORD *)this + 15));
  v6 = *((_BYTE **)this + 22);
  v7 = v6[19];
  if ( (v7 & 0x1Fu) <= 1 )
  {
    if ( (v6[18] & 0x20) != 0 )
      result = (void *)(*(int (__fastcall **)(_BYTE *))(*(_DWORD *)v6 + 24))(v6);
    v6[19] = 0;
  }
  else
  {
    v6[19] = ((v7 & 0x1F) - 1) | v7 & 0xE0;
  }
  return result;
}


// ===== 58c348 glitch::scene::CAppendMeshBuffer::copyIndexData(void *) =====
void *__fastcall glitch::scene::CAppendMeshBuffer::copyIndexData(glitch::scene::CAppendMeshBuffer *this, void *a2)
{
  const void *v4; // r0
  void *result; // r0
  _BYTE *v6; // r4
  char v7; // r3

  v4 = (const void *)glitch::video::IBuffer::map(*((_DWORD *)this + 23), 1);
  result = memcpy(a2, v4, *((_DWORD *)this + 17));
  v6 = *((_BYTE **)this + 23);
  v7 = v6[19];
  if ( (v7 & 0x1Fu) <= 1 )
  {
    if ( (v6[18] & 0x20) != 0 )
      result = (void *)(*(int (__fastcall **)(_BYTE *))(*(_DWORD *)v6 + 24))(v6);
    v6[19] = 0;
  }
  else
  {
    v6[19] = ((v7 & 0x1F) - 1) | v7 & 0xE0;
  }
  return result;
}


// ===== 58c3cc glitch::scene::CSceneManager::getSceneNodesFromType(glitch::scene::E_SCENE_NODE_TYPE,std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>> &,glitch::scene::ISceneNode *) =====
void __fastcall glitch::scene::CSceneManager::getSceneNodesFromType(_DWORD *a1, int a2, int a3, int a4)
{
  int v4; // r12
  _DWORD *v8; // r4
  _DWORD *v9; // r6
  _DWORD *v10; // r3
  _BYTE *v11; // r1
  int v12; // [sp+Ch] [bp-Ch] BYREF
  _BYTE v13[4]; // [sp+14h] [bp-4h] BYREF

  v4 = a4;
  v12 = a4;
  if ( !a4 )
    v4 = a1[1];
  if ( !a4 )
    v12 = v4;
  if ( (*(int (__fastcall **)(int))(*(_DWORD *)v4 + 188))(v4) == a2 || a2 == 1601793633 )
  {
    v11 = *(_BYTE **)(a3 + 4);
    if ( v11 == *(_BYTE **)(a3 + 8) )
    {
      std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)a3,
        v11,
        &v12,
        (int)v13,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v11 = v12;
      *(_DWORD *)(a3 + 4) += 4;
    }
  }
  v9 = (_DWORD *)(v12 + 244);
  v8 = *(_DWORD **)(v12 + 244);
  if ( v8 != (_DWORD *)(v12 + 244) )
  {
    do
    {
      v10 = v8 - 1;
      if ( !v8 )
        v10 = nullptr;
      (*(void (__fastcall **)(_DWORD *, int, int, _DWORD *))(*a1 + 32))(a1, a2, a3, v10);
      v8 = (_DWORD *)*v8;
    }
    while ( v9 != v8 );
  }
}


// ===== 58c4a4 glitch::scene::CSceneManager::readUserData(glitch::io::IIrrXMLReader<wchar_t,glitch::IReferenceCounted> *,glitch::scene::ISceneNode *,glitch::scene::ISceneUserDataSerializer *) =====
void __fastcall glitch::scene::CSceneManager::readUserData(int a1, int a2, int a3, int a4)
{
  wchar_t *v5; // r10
  int v6; // r0
  _BOOL4 v7; // r10
  _BOOL4 v8; // r10
  glitch::io::IAttributes *v9; // r10
  bool v10; // zf
  _DWORD v14[17]; // [sp+10h] [bp-A4h] BYREF
  void *v15; // [sp+54h] [bp-60h]
  _DWORD v16[17]; // [sp+58h] [bp-5Ch] BYREF
  void *p; // [sp+9Ch] [bp-18h]
  _BYTE v18[16]; // [sp+A0h] [bp-14h] BYREF

  while ( (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 12))(a2) )
  {
    v5 = (wchar_t *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
    v6 = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 20))(a2);
    if ( v6 == 1 )
    {
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        v14,
        U"attributes");
      v8 = std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
             (int)v14,
             v5);
      if ( v15 != v14 && v15 )
        GlitchFree(v15);
      if ( v8 )
      {
        v9 = (glitch::io::IAttributes *)(*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(a1 + 32) + 100))(
                                          *(_DWORD *)(a1 + 32),
                                          *(_DWORD *)(a1 + 20));
        glitch::io::CXMLAttributesReader::CXMLAttributesReader((int)v18, a2, 0, 0);
        glitch::io::CXMLAttributesReader::read((glitch::io::CXMLAttributesReader *)v18, v9);
        v10 = a4 == 0;
        if ( a4 )
          v10 = a3 == 0;
        if ( !v10 )
          (*(void (__fastcall **)(int, int, glitch::io::IAttributes *))(*(_DWORD *)a4 + 12))(a4, a3, v9);
        glitch::IReferenceCounted::drop(v9);
        glitch::io::CXMLAttributesReader::~CXMLAttributesReader((glitch::io::CXMLAttributesReader *)v18);
      }
    }
    else if ( v6 == 2 )
    {
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        v16,
        (wchar_t *)"u");
      v7 = std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
             (int)v16,
             v5);
      if ( p != v16 )
      {
        if ( p )
          GlitchFree(p);
      }
      if ( v7 )
        return;
    }
  }
}


// ===== 58c644 glitch::scene::CSceneManager::readAnimators(glitch::io::IIrrXMLReader<wchar_t,glitch::IReferenceCounted> *,glitch::scene::ISceneNode *) =====
void *__fastcall glitch::scene::CSceneManager::readAnimators(int a1, int a2, int a3)
{
  void *result; // r0
  wchar_t *v6; // r7
  int v7; // r0
  _BOOL4 v8; // r7
  _BOOL4 v9; // r7
  glitch::io::IAttributes *v10; // r8
  int v11; // r3
  int v12; // r7
  int v13; // r0
  int v14; // r7
  _DWORD v16[17]; // [sp+1Ch] [bp-A0h] BYREF
  void *v17; // [sp+60h] [bp-5Ch]
  _DWORD v18[17]; // [sp+64h] [bp-58h] BYREF
  void *p; // [sp+A8h] [bp-14h]
  _BYTE v20[20]; // [sp+ACh] [bp-10h] BYREF
  _BYTE v21[20]; // [sp+C4h] [bp+8h] BYREF
  void *v22; // [sp+D8h] [bp+1Ch]

  while ( 1 )
  {
    result = (void *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 12))(a2);
    if ( !result )
      return result;
    v6 = (wchar_t *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
    v7 = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 20))(a2);
    if ( v7 == 1 )
    {
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        v16,
        U"attributes");
      v9 = std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
             (int)v16,
             v6);
      if ( v17 != v16 && v17 )
        GlitchFree(v17);
      if ( v9 )
      {
        v10 = (glitch::io::IAttributes *)(*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(a1 + 32) + 100))(
                                           *(_DWORD *)(a1 + 32),
                                           *(_DWORD *)(a1 + 20));
        glitch::io::CXMLAttributesReader::CXMLAttributesReader((int)v20, a2, 0, 0);
        glitch::io::CXMLAttributesReader::read((glitch::io::CXMLAttributesReader *)v20, v10);
        if ( a3 )
        {
          (*(void (__fastcall **)(_BYTE *, glitch::io::IAttributes *, char *))(*(_DWORD *)v10 + 132))(v21, v10, "Type");
          v11 = *(_DWORD *)(a1 + 216);
          if ( *(_DWORD *)(a1 + 220) - v11 > 3 )
          {
            v12 = 0;
            while ( 1 )
            {
              v13 = (*(int (__fastcall **)(_DWORD, void *, int))(**(_DWORD **)(v11 + 4 * v12) + 16))(
                      *(_DWORD *)(v11 + 4 * v12),
                      v22,
                      a3);
              v11 = *(_DWORD *)(a1 + 216);
              if ( ++v12 >= (*(_DWORD *)(a1 + 220) - v11) >> 2 )
                break;
              if ( v13 )
              {
                v14 = v13;
                goto LABEL_25;
              }
            }
            v14 = v13;
            if ( !v13 )
              goto LABEL_19;
LABEL_25:
            (*(void (__fastcall **)(int, glitch::io::IAttributes *, _DWORD))(*(_DWORD *)v14 + 4))(v14, v10, 0);
            glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(v14 + *(_DWORD *)(*(_DWORD *)v14 - 12)));
          }
LABEL_19:
          if ( v22 != v21 && v22 )
            GlitchFree(v22);
        }
        glitch::IReferenceCounted::drop(v10);
        glitch::io::CXMLAttributesReader::~CXMLAttributesReader((glitch::io::CXMLAttributesReader *)v20);
      }
    }
    else if ( v7 == 2 )
    {
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        v18,
        (wchar_t *)"a");
      v8 = std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
             (int)v18,
             v6);
      result = p;
      if ( p != v18 )
      {
        if ( p )
          GlitchFree(p);
      }
      if ( v8 )
        return result;
    }
  }
}


// ===== 58c8dc glitch::scene::CSceneManager::readMaterials(glitch::io::IIrrXMLReader<wchar_t,glitch::IReferenceCounted> *,glitch::scene::ISceneNode *) =====
void __fastcall glitch::scene::CSceneManager::readMaterials(int a1, int a2, int a3)
{
  wchar_t *v4; // r10
  int v5; // r0
  _BOOL4 v6; // r10
  _BOOL4 v7; // r10
  glitch::io::IAttributes *v8; // r10
  _DWORD v11[17]; // [sp+10h] [bp-A4h] BYREF
  void *v12; // [sp+54h] [bp-60h]
  _DWORD v13[17]; // [sp+58h] [bp-5Ch] BYREF
  void *p; // [sp+9Ch] [bp-18h]
  _BYTE v15[16]; // [sp+A0h] [bp-14h] BYREF

  while ( (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 12))(a2) )
  {
    v4 = (wchar_t *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
    v5 = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 20))(a2);
    if ( v5 == 1 )
    {
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        v11,
        U"attributes");
      v7 = std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
             (int)v11,
             v4);
      if ( v12 != v11 && v12 )
        GlitchFree(v12);
      if ( v7 )
      {
        v8 = (glitch::io::IAttributes *)(*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(a1 + 32) + 100))(
                                          *(_DWORD *)(a1 + 32),
                                          *(_DWORD *)(a1 + 20));
        glitch::io::CXMLAttributesReader::CXMLAttributesReader((int)v15, a2, 0, 0);
        glitch::io::CXMLAttributesReader::read((glitch::io::CXMLAttributesReader *)v15, v8);
        if ( a3 )
          (*(void (__fastcall **)(int))(*(_DWORD *)a3 + 136))(a3);
        glitch::IReferenceCounted::drop(v8);
        glitch::io::CXMLAttributesReader::~CXMLAttributesReader((glitch::io::CXMLAttributesReader *)v15);
      }
    }
    else if ( v5 == 2 )
    {
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        v13,
        (wchar_t *)"m");
      v6 = std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
             (int)v13,
             v4);
      if ( p != v13 )
      {
        if ( p )
          GlitchFree(p);
      }
      if ( v6 )
        return;
    }
  }
}


// ===== 58ca64 glitch::scene::CSceneManager::isCulled(glitch::core::aabbox3d<float> const&,glitch::scene::E_CULLING_TYPE) =====
int __fastcall glitch::scene::CSceneManager::isCulled(int a1, float *a2, int a3)
{
  int v3; // r3
  float *v6; // r0
  bool v7; // r0
  float *v8; // r0
  float *v9; // r5

  v3 = *(_DWORD *)(a1 + 228);
  if ( !v3 )
    return 0;
  switch ( a3 )
  {
    case 2:
      v8 = (float *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 324))(*(_DWORD *)(a1 + 228));
      return (unsigned __int8)glitch::scene::SViewFrustum::intersects(v8, a2) ^ 1;
    case 8:
      v6 = (float *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 324))(*(_DWORD *)(a1 + 228));
      v7 = glitch::scene::SViewFrustum::intersects3(v6, a2);
      return !v7;
    case 1:
      v9 = (float *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 324))(*(_DWORD *)(a1 + 228));
      if ( *a2 <= v9[30] && a2[1] <= v9[31] && a2[2] <= v9[32] && a2[3] >= v9[27] && a2[4] >= v9[28] )
      {
        v7 = a2[5] >= v9[29];
        return !v7;
      }
      return 1;
    default:
      return 0;
  }
}


// ===== 58cb7c std::allocator<glitch::video::SVertexStreamData>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<glitch::video::SVertexStreamData>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0xFFFFFFF )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 16 * a2;
  if ( 16 * a2 > 0x80 )
    result = (void *)operator new(16 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n >> 4;
  return result;
}


// ===== 58cbec std::vector<glitch::video::SVertexStreamData,std::allocator<glitch::video::SVertexStreamData>>::vector(uint) =====
_DWORD *__fastcall std::vector<glitch::video::SVertexStreamData>::vector(_DWORD *a1, unsigned int a2)
{
  _DWORD *v4; // r0
  int v5; // r3
  char *v6; // r6
  size_t v8; // [sp+4h] [bp-4h] BYREF

  v8 = a2;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = std::allocator<glitch::video::SVertexStreamData>::_M_allocate((int)(a1 + 2), a2, &v8);
  v5 = (int)(16 * a2) >> 4;
  a1[2] = &v4[4 * v8];
  *a1 = v4;
  a1[1] = v4;
  v6 = (char *)&v4[4 * a2];
  if ( v5 > 0 )
  {
    while ( 1 )
    {
      --v5;
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 255;
      *((_WORD *)v4 + 6) = 0;
      *((_WORD *)v4 + 7) = 0;
      if ( !v5 )
        break;
      v4 += 4;
    }
  }
  a1[1] = v6;
  return a1;
}


// ===== 58cc74 glitch::scene::CAppendMeshBuffer::allocateConfiguredVertexStreams(boost::intrusive_ptr<glitch::video::IBuffer> const&) =====
glitch::video::CVertexStreams *__fastcall glitch::scene::CAppendMeshBuffer::allocateConfiguredVertexStreams(
        glitch::video::CVertexStreams *this,
        _DWORD *a2,
        glitch::IReferenceCounted **a3)
{
  char *v3; // r3
  char *v4; // r12
  unsigned int v7; // r1
  char v8; // t1
  unsigned __int8 *v9; // r5
  glitch::IReferenceCounted *v10; // r4
  int v11; // r2
  int v12; // r3
  glitch::IReferenceCounted *v13; // r8
  __int16 v14; // r9
  __int16 v15; // r11
  __int16 v16; // r10
  glitch::IReferenceCounted **Stream; // r0
  int v18; // r1
  glitch::video::CVertexStreams *v19; // r2
  glitch::IReferenceCounted **v20; // r3
  glitch::IReferenceCounted *v21; // r0
  glitch::IReferenceCounted **v23; // [sp+0h] [bp-24h]
  glitch::video::CVertexStreams *v24; // [sp+4h] [bp-20h]
  void *v26[4]; // [sp+14h] [bp-10h] BYREF

  v3 = (char *)a2[25];
  v4 = (char *)a2[26];
  if ( v3 == v4 )
  {
    v7 = 0;
  }
  else
  {
    v7 = 0;
    do
    {
      v8 = *v3++;
      v7 |= 1 << v8;
    }
    while ( v3 != v4 );
  }
  glitch::video::CVertexStreams::allocate(this, v7);
  std::vector<glitch::video::SVertexStreamData>::vector(v26, a2[26] - a2[25]);
  v9 = (unsigned __int8 *)a2[25];
  while ( v9 != (unsigned __int8 *)a2[26] )
  {
    while ( 1 )
    {
      v10 = *a3;
      v11 = *v9;
      v12 = a2[5] + 20 + 16 * v11;
      if ( *a3 )
        v11 = *((_DWORD *)v10 + 1);
      v13 = *(glitch::IReferenceCounted **)(v12 + 4);
      v14 = *(_WORD *)(v12 + 10);
      if ( *a3 )
        ++v11;
      v15 = *(_WORD *)(v12 + 12);
      v16 = *(_WORD *)(v12 + 14);
      if ( *a3 )
        *((_DWORD *)v10 + 1) = v11;
      ++v9;
      Stream = (glitch::IReferenceCounted **)glitch::video::CVertexStreams::getStream(
                                               *(_DWORD *)this,
                                               *(unsigned __int16 *)(v12 + 8),
                                               *(_DWORD *)this + 20,
                                               *(_DWORD *)(*(_DWORD *)this + 16));
      if ( v10 )
        v18 = *((_DWORD *)v10 + 1);
      v19 = *(glitch::video::CVertexStreams **)this;
      v20 = Stream;
      if ( v10 )
        *((_DWORD *)v10 + 1) = v18 + 1;
      v21 = *Stream;
      *v20 = v10;
      if ( v21 )
      {
        v24 = v19;
        v23 = v20;
        glitch::IReferenceCounted::drop(v21);
        v20 = v23;
        v19 = v24;
      }
      v20[1] = v13;
      *((_WORD *)v20 + 7) = v16;
      *((_WORD *)v20 + 5) = v14;
      *((_WORD *)v20 + 6) = v15;
      glitch::video::CVertexStreams::updateHomogeneityInternal(v19, 0);
      if ( !v10 )
        break;
      glitch::IReferenceCounted::drop(v10);
      if ( v9 == (unsigned __int8 *)a2[26] )
        goto LABEL_21;
    }
  }
LABEL_21:
  *(_DWORD *)(*(_DWORD *)this + 8) = a2[15] / a2[18];
  std::vector<glitch::video::SVertexStreamData>::~vector(v26);
  return this;
}


// ===== 58cdd4 glitch::scene::CSceneManager::writeSceneNode(glitch::io::IXMLWriter *,glitch::scene::ISceneNode const*,glitch::scene::ISceneUserDataSerializer *) =====
int __fastcall glitch::scene::CSceneManager::writeSceneNode(int result, int a2, glitch::scene::ISceneNode *a3, int a4)
{
  bool v4; // zf
  int v6; // r4
  int v7; // r10
  void (__fastcall *v9)(int, int, _DWORD, int, void *, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD); // r9
  int v10; // r8
  int v11; // r0
  const char *SceneNodeTypeName; // r0
  glitch::io::IAttributes *v13; // r5
  unsigned int v14; // r7
  _DWORD *Animators; // r0
  int *v16; // r7
  int v17; // r9
  int v18; // r10
  void (__fastcall *v19)(glitch::io::IAttributes *, char *, int, _DWORD); // r4
  int v20; // r0
  int AnimatorTypeName; // r0
  int v22; // r0
  _DWORD *i; // r7
  _DWORD *v24; // r2
  glitch::IReferenceCounted *v25; // [sp+28h] [bp-64h]
  int v26; // [sp+2Ch] [bp-60h]
  _BYTE v27[68]; // [sp+30h] [bp-5Ch] BYREF
  void *p; // [sp+74h] [bp-18h]
  _BYTE v29[20]; // [sp+78h] [bp-14h] BYREF

  v4 = a2 == 0;
  if ( a2 )
    v4 = a3 == nullptr;
  v6 = a2;
  v7 = result;
  if ( !v4 )
  {
    result = glitch::scene::ISceneNode::isDebugObject(a3);
    if ( !result )
    {
      if ( a3 == *(glitch::scene::ISceneNode **)(v7 + 4) )
      {
        v26 = *(_DWORD *)(v7 + 444);
        (*(void (__fastcall **)(int, int, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v6 + 16))(
          v6,
          v26,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0);
      }
      else
      {
        v9 = *(void (__fastcall **)(int, int, _DWORD, int, void *, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v6 + 16);
        v26 = *(_DWORD *)(v7 + 516);
        v10 = *(_DWORD *)(v7 + 588);
        v11 = (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a3 + 188))(a3);
        SceneNodeTypeName = (const char *)glitch::scene::CSceneManager::getSceneNodeTypeName(v7, v11);
        glitch::core::stringc2stringw((glitch::core *)v27, SceneNodeTypeName);
        v9(v6, v26, 0, v10, p, 0, 0, 0, 0, 0, 0, 0, 0);
        if ( p != v27 && p )
          GlitchFree(p);
      }
      (*(void (__fastcall **)(int))(*(_DWORD *)v6 + 36))(v6);
      (*(void (__fastcall **)(int))(*(_DWORD *)v6 + 36))(v6);
      v13 = (glitch::io::IAttributes *)(*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(v7 + 32) + 100))(
                                         *(_DWORD *)(v7 + 32),
                                         *(_DWORD *)(v7 + 20));
      (**(void (__fastcall ***)(glitch::scene::ISceneNode *, glitch::io::IAttributes *, _DWORD))a3)(a3, v13, 0);
      if ( (*(int (__fastcall **)(glitch::io::IAttributes *))(*(_DWORD *)v13 + 12))(v13) )
      {
        glitch::io::CXMLAttributesWriter::CXMLAttributesWriter((int)v29, v6, 1, 0);
        glitch::io::CXMLAttributesWriter::write((glitch::io::CXMLAttributesWriter *)v29, v13);
        (*(void (__fastcall **)(int))(*(_DWORD *)v6 + 36))(v6);
        glitch::io::CXMLAttributesWriter::~CXMLAttributesWriter((glitch::io::CXMLAttributesWriter *)v29);
      }
      if ( (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a3 + 136))(a3) && *(_DWORD *)(v7 + 20) )
      {
        v14 = 0;
        (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v6 + 16))(
          v6,
          "m",
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0);
        (*(void (__fastcall **)(int))(*(_DWORD *)v6 + 36))(v6);
        while ( v14 < (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a3 + 136))(a3) )
          ++v14;
        (*(void (__fastcall **)(int, const char *))(*(_DWORD *)v6 + 28))(v6, "m");
        (*(void (__fastcall **)(int))(*(_DWORD *)v6 + 36))(v6);
      }
      Animators = (_DWORD *)glitch::scene::ISceneNode::getAnimators(a3);
      if ( (_DWORD *)*Animators != Animators )
      {
        (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v6 + 16))(
          v6,
          "a",
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          0);
        (*(void (__fastcall **)(int))(*(_DWORD *)v6 + 36))(v6);
        v16 = *(int **)glitch::scene::ISceneNode::getAnimators(a3);
        v17 = v7;
        v18 = v6;
        while ( v16 != (int *)glitch::scene::ISceneNode::getAnimators(a3) )
        {
          (*(void (__fastcall **)(glitch::io::IAttributes *))(*(_DWORD *)v13 + 44))(v13);
          v19 = *(void (__fastcall **)(glitch::io::IAttributes *, char *, int, _DWORD))(*(_DWORD *)v13 + 124);
          v20 = (*(int (__fastcall **)(int))(*(_DWORD *)v16[2] + 36))(v16[2]);
          AnimatorTypeName = glitch::scene::CSceneManager::getAnimatorTypeName(v17, v20);
          v19(v13, "Type", AnimatorTypeName, 0);
          (**(void (__fastcall ***)(int, glitch::io::IAttributes *, _DWORD))v16[2])(v16[2], v13, 0);
          glitch::io::CXMLAttributesWriter::CXMLAttributesWriter((int)v29, v18, 1, 0);
          glitch::io::CXMLAttributesWriter::write((glitch::io::CXMLAttributesWriter *)v29, v13);
          glitch::io::CXMLAttributesWriter::~CXMLAttributesWriter((glitch::io::CXMLAttributesWriter *)v29);
          v16 = (int *)*v16;
        }
        v6 = v18;
        (*(void (__fastcall **)(int, const char *))(*(_DWORD *)v18 + 28))(v18, "a");
        v22 = v18;
        v7 = v17;
        (*(void (__fastcall **)(int))(*(_DWORD *)v6 + 36))(v22);
      }
      if ( a4 )
      {
        v25 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(int, glitch::scene::ISceneNode *))(*(_DWORD *)a4 + 16))(
                                             a4,
                                             a3);
        if ( v25 )
        {
          (*(void (__fastcall **)(int))(*(_DWORD *)v6 + 36))(v6);
          (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v6 + 16))(
            v6,
            "u",
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0);
          (*(void (__fastcall **)(int))(*(_DWORD *)v6 + 36))(v6);
          glitch::io::CXMLAttributesWriter::CXMLAttributesWriter((int)v29, v6, 1, 0);
          glitch::io::CXMLAttributesWriter::write((glitch::io::CXMLAttributesWriter *)v29, v25);
          (*(void (__fastcall **)(int, const char *))(*(_DWORD *)v6 + 28))(v6, "u");
          (*(void (__fastcall **)(int))(*(_DWORD *)v6 + 36))(v6);
          (*(void (__fastcall **)(int))(*(_DWORD *)v6 + 36))(v6);
          glitch::IReferenceCounted::drop(v25);
          glitch::io::CXMLAttributesWriter::~CXMLAttributesWriter((glitch::io::CXMLAttributesWriter *)v29);
        }
      }
      for ( i = *(_DWORD **)(glitch::scene::ISceneNode::getChildren(a3) + 4);
            (_DWORD *)(glitch::scene::ISceneNode::getChildren(a3) + 4) != i;
            i = (_DWORD *)*i )
      {
        if ( i )
          v24 = i - 1;
        else
          v24 = nullptr;
        glitch::scene::CSceneManager::writeSceneNode(v7, v6, v24, a4);
      }
      glitch::IReferenceCounted::drop(v13);
      (*(void (__fastcall **)(int, int))(*(_DWORD *)v6 + 28))(v6, v26);
      (*(void (__fastcall **)(int))(*(_DWORD *)v6 + 36))(v6);
      return (*(int (__fastcall **)(int))(*(_DWORD *)v6 + 36))(v6);
    }
  }
  return result;
}


// ===== 58d36c glitch::scene::CSceneManager::saveScene(glitch::io::IWriteFile *,glitch::scene::ISceneUserDataSerializer *) =====
int __fastcall glitch::scene::CSceneManager::saveScene(int a1, int a2, int a3)
{
  int v5; // r0
  glitch::IReferenceCounted *v6; // r4

  if ( !a2 )
    return 0;
  v5 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 32) + 96))(*(_DWORD *)(a1 + 32));
  v6 = (glitch::IReferenceCounted *)v5;
  if ( !v5 )
    return 0;
  (*(void (__fastcall **)(int))(*(_DWORD *)v5 + 12))(v5);
  glitch::scene::CSceneManager::writeSceneNode(a1, (int)v6, *(glitch::scene::ISceneNode **)(a1 + 4), a3);
  glitch::IReferenceCounted::drop(v6);
  return 1;
}


// ===== 58d3d4 glitch::scene::SDefaultEndOfBatchCallback::finalize(void) =====
_DWORD *__fastcall glitch::scene::SDefaultEndOfBatchCallback::finalize(_DWORD *this)
{
  int v1; // r4
  glitch::video::CMaterialRendererManager *v2; // r5
  _DWORD *v3; // r10
  glitch::video::CMaterial *v4; // r0
  glitch::video::CMaterialRenderer *v5; // r6
  int v6; // r7
  unsigned __int8 Technique; // r0
  unsigned __int16 BindedLightCount; // r0
  unsigned int Id; // r0
  int v10; // r1
  glitch::video::CMaterialRenderer **v11; // r3
  bool v12; // r11
  int v13; // r2
  bool v14; // cf
  glitch::video::CMaterialRenderer *v15; // r7
  glitch::video::CMaterial *v16; // r11
  glitch::video::CMaterial *v17; // r11
  bool v18; // zf
  glitch::video::CMaterial *v19; // r11
  int v20; // r3
  int v21; // r2
  int v22; // [sp+4h] [bp-48h]
  char *v23; // [sp+8h] [bp-44h]
  glitch::video::CMaterial *v24; // [sp+24h] [bp-28h] BYREF
  glitch::video::CMaterial *v25; // [sp+28h] [bp-24h] BYREF
  _BYTE v26[20]; // [sp+2Ch] [bp-20h] BYREF
  void *p; // [sp+40h] [bp-Ch]

  v1 = *(this + 7);
  v2 = *(glitch::video::CMaterialRendererManager **)(*(this + 3) + 220);
  v3 = this;
  v23 = (char *)(this + 5);
  while ( v23 != (char *)v1 )
  {
    while ( 1 )
    {
      v4 = *(glitch::video::CMaterial **)(v1 + 20);
      v22 = *(_DWORD *)(v1 + 16);
      v5 = *((glitch::video::CMaterialRenderer **)v4 + 1);
      if ( v5 )
      {
        ++*(_DWORD *)v5;
        v4 = *(glitch::video::CMaterial **)(v1 + 20);
      }
      v6 = *(_DWORD *)(*((_DWORD *)v5 + 6) + 12 * glitch::video::CMaterial::getTechnique(v4) + 8);
      glitch::core::randomString((glitch::core *)v26, 20);
      glitch::video::CMaterialRendererManager::beginMaterialRenderer(v2, (const char *)p, 1);
      glitch::video::CMaterialRendererManager::beginTechnique(v2, "ZeTechnique", 1);
      glitch::video::CMaterialRendererManager::addRenderPass(v2, v6 + 32, v1 + 24, v1 + 56);
      Technique = glitch::video::CMaterial::getTechnique(*(glitch::video::CMaterial **)(v1 + 20));
      BindedLightCount = glitch::video::CMaterialRenderer::getBindedLightCount(v5, Technique, 0);
      glitch::video::CMaterialRendererManager::endTechnique(v2, 1, BindedLightCount);
      glitch::video::CMaterialRendererManager::endMaterialRenderer(v2);
      Id = glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::getId(
             v2,
             p);
      v11 = *((glitch::video::CMaterialRenderer ***)v2 + 6);
      v12 = Id;
      v13 = *((_DWORD *)v2 + 7) - (_DWORD)v11;
      v14 = Id >= v13 >> 3;
      if ( Id < v13 >> 3 )
      {
        v11 += 2 * Id;
      }
      else
      {
        v13 = (int)&__GLOBAL_OFFSET_TABLE_;
        v10 = 12508;
      }
      if ( v14 )
        v11 = *(glitch::video::CMaterialRenderer ***)(v13 + v10);
      v15 = *v11;
      if ( *v11 )
      {
        v11 = (glitch::video::CMaterialRenderer **)(*(_DWORD *)v15 + 1);
        *(_DWORD *)v15 = v11;
      }
      glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::initParametersToIdentity(
        v15,
        v10,
        v13,
        v11);
      glitch::video::CMaterialRendererManager::getMaterialInstance(
        (glitch::video::CMaterialRendererManager *)&v25,
        (unsigned __int16)v2,
        v12);
      v16 = v25;
      glitch::video::CMaterial::getTechnique(*(glitch::video::CMaterial **)(v1 + 20));
      glitch::video::CMaterial::getTechnique(v16);
      v24 = *(glitch::video::CMaterial **)(v1 + 20);
      if ( v24 )
        ++*(_DWORD *)v24;
      glitch::core::copyMaterialParameters(&v25, &v24);
      v17 = v24;
      if ( v24 )
      {
        v18 = (*(_DWORD *)v24)-- == 1;
        if ( v18 )
        {
          glitch::video::CMaterial::~CMaterial(v17);
          LC_API_FREE_0(v17);
        }
      }
      glitch::scene::CBatchMesh::setBuffer(*(_DWORD *)(v3[1] + 304), v22, (int *)(v1 + 60), (char **)&v25);
      v19 = v25;
      if ( v25 )
      {
        v18 = (*(_DWORD *)v25)-- == 1;
        if ( v18 )
        {
          glitch::video::CMaterial::~CMaterial(v19);
          LC_API_FREE_0(v19);
        }
      }
      if ( v15 )
      {
        v18 = (*(_DWORD *)v15)-- == 1;
        if ( v18 )
        {
          glitch::video::CMaterialRenderer::~CMaterialRenderer(v15);
          LC_API_FREE_0(v15);
        }
      }
      this = p;
      if ( p != v26 && p )
        GlitchFree(p);
      v18 = (*(_DWORD *)v5)-- == 1;
      if ( v18 )
        break;
      v20 = *(_DWORD *)(v1 + 12);
      if ( !v20 )
        goto LABEL_37;
LABEL_33:
      while ( *(_DWORD *)(v20 + 8) )
        v20 = *(_DWORD *)(v20 + 8);
      v1 = v20;
      if ( v23 == (char *)v20 )
        return this;
    }
    glitch::video::CMaterialRenderer::~CMaterialRenderer(v5);
    LC_API_FREE_0(v5);
    v20 = *(_DWORD *)(v1 + 12);
    if ( v20 )
      goto LABEL_33;
LABEL_37:
    v21 = *(_DWORD *)(v1 + 4);
    if ( v1 == *(_DWORD *)(v21 + 12) )
    {
      do
      {
        v1 = v21;
        v21 = *(_DWORD *)(v21 + 4);
      }
      while ( *(_DWORD *)(v21 + 12) == v1 );
      v20 = *(_DWORD *)(v1 + 12);
    }
    if ( v21 != v20 )
      v1 = v21;
  }
  return this;
}


// ===== 58d710 glitch::scene::CSceneManager::STransparentNodeEntry::~STransparentNodeEntry() =====
void __fastcall glitch::scene::CSceneManager::STransparentNodeEntry::~STransparentNodeEntry(
        glitch::scene::CSceneManager::STransparentNodeEntry *this)
{
  glitch::video::CMaterial *v1; // r4

  v1 = *((glitch::video::CMaterial **)this + 2);
  if ( v1 )
  {
    if ( (*(_DWORD *)v1)-- == 1 )
    {
      glitch::video::CMaterial::~CMaterial(v1);
      LC_API_FREE_0(v1);
    }
  }
}


// ===== 58d758 glitch::scene::CSceneManager::registerSceneNodeAnimatorFactory(glitch::scene::ISceneNodeAnimatorFactory *) =====
void __fastcall glitch::scene::CSceneManager::registerSceneNodeAnimatorFactory(int a1, int a2)
{
  char *v4; // r8
  unsigned int v5; // r3
  unsigned int v6; // r7
  size_t v7; // r7
  char *v8; // r0
  _BYTE *v9; // r1
  char *v10; // r6
  size_t v11; // r8
  char *v12; // r8

  if ( a2 )
  {
    ++*(_DWORD *)(a2 + 4);
    v4 = *(char **)(a1 + 220);
    if ( v4 == *(char **)(a1 + 224) )
    {
      v5 = (int)&v4[-*(_DWORD *)(a1 + 216)] >> 2;
      if ( v5 )
        v6 = 2 * v5;
      else
        v6 = 1;
      if ( v6 > 0x3FFFFFFF || v5 > v6 )
        v7 = -4;
      else
        v7 = 4 * v6;
      v8 = (char *)GlitchAlloc(v7, 0);
      v9 = *(_BYTE **)(a1 + 216);
      v10 = v8;
      v11 = v4 - v9;
      if ( v11 )
        v12 = (char *)memmove(v8, v9, v11) + v11;
      else
        v12 = v8;
      *(_DWORD *)v12 = a2;
      GlitchFree(*(void **)(a1 + 216));
      *(_DWORD *)(a1 + 224) = &v10[v7];
      *(_DWORD *)(a1 + 220) = v12 + 4;
      *(_DWORD *)(a1 + 216) = v10;
    }
    else
    {
      *(_DWORD *)v4 = a2;
      *(_DWORD *)(a1 + 220) += 4;
    }
  }
}


// ===== 58d81c std::vector<glitch::scene::IMeshLoader *,glitch::core::SAllocator<glitch::scene::IMeshLoader *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(glitch::scene::IMeshLoader **,glitch::scene::IMeshLoader * const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<glitch::scene::IMeshLoader *,glitch::core::SAllocator<glitch::scene::IMeshLoader *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        int a1,
        int a2,
        _DWORD *a3)
{
  unsigned int v6; // r3
  unsigned int v7; // r7
  size_t v8; // r7
  char *v9; // r0
  char *v10; // r5
  size_t v11; // r6
  char *v12; // r6

  v6 = (*(_DWORD *)(a1 + 4) - *(_DWORD *)a1) >> 2;
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0x3FFFFFFF || v6 > v7 )
    v8 = -4;
  else
    v8 = 4 * v7;
  v9 = (char *)GlitchAlloc(v8, 0);
  v10 = v9;
  v11 = a2 - *(_DWORD *)a1;
  if ( v11 )
    v12 = (char *)memmove(v9, *(const void **)a1, v11) + v11;
  else
    v12 = v9;
  *(_DWORD *)v12 = *a3;
  GlitchFree(*(void **)a1);
  *(_DWORD *)a1 = v10;
  *(_DWORD *)(a1 + 4) = v12 + 4;
  *(_DWORD *)(a1 + 8) = &v10[v8];
}


// ===== 58d8ac glitch::scene::CSceneManager::addExternalMeshLoader(glitch::scene::IMeshLoader *) =====
void __fastcall glitch::scene::CSceneManager::addExternalMeshLoader(int a1, int a2)
{
  _DWORD *v2; // r1
  int v3; // [sp+4h] [bp-8h] BYREF

  v3 = a2;
  if ( a2 )
  {
    ++*(_DWORD *)(a2 + 4);
    v2 = *(_DWORD **)(a1 + 184);
    if ( v2 == *(_DWORD **)(a1 + 188) )
    {
      std::vector<glitch::scene::IMeshLoader *,glitch::core::SAllocator<glitch::scene::IMeshLoader *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        a1 + 180,
        (int)v2,
        &v3);
    }
    else
    {
      *v2 = v3;
      *(_DWORD *)(a1 + 184) += 4;
    }
  }
}


// ===== 58d908 glitch::scene::CSceneManager::CSceneManager(glitch::video::IVideoDriver *,boost::intrusive_ptr<glitch::io::IFileSystem> const&,glitch::gui::ICursorControl *,glitch::scene::IMeshCache *,glitch::gui::IGUIEnvironment *) =====
int __fastcall glitch::scene::CSceneManager::CSceneManager(
        int a1,
        glitch::video::IVideoDriver *a2,
        int *a3,
        int a4,
        int a5,
        int a6)
{
  int v10; // r3
  unsigned int v11; // r9
  unsigned int v12; // r11
  glitch::video::CBatchDriver *v13; // r5
  int v14; // r3
  int v15; // r3
  glitch::scene::CSceneManagerRootNode *v16; // r5
  _DWORD *v17; // r2
  int v18; // r2
  int v19; // r3
  int v20; // r3
  int v21; // r3
  int v22; // r1
  glitch::scene::CSceneCollisionManager *v23; // r5
  void *v24; // r5
  _DWORD *v25; // r1
  _DWORD *v26; // r3
  glitch::IReferenceCounted *v27; // r5
  glitch::scene::CDefaultSceneNodeAnimatorFactory *v28; // r5
  glitch::scene::CMeshCache *v30; // r5
  void *v31; // [sp+8h] [bp-14h] BYREF

  *(_DWORD *)(a1 + 656) = 1;
  *(_DWORD *)a1 = off_9767BC;
  *(_DWORD *)(a1 + 652) = off_95B720;
  *(int *)((char *)&elf_hash_bucket[108] + a1) = (int)off_9767DC;
  glitch::IObject::IObject((glitch::IObject *)a1);
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 12) = a1 + 12;
  *(_DWORD *)(a1 + 652) = off_97678C;
  *(_DWORD *)a1 = off_9766F4;
  *(_DWORD *)(a1 + 16) = a1 + 12;
  *(_DWORD *)(a1 + 20) = a2;
  *(_DWORD *)(a1 + 24) = a2;
  v10 = *((_DWORD *)a2 + 53);
  v11 = *(_DWORD *)(v10 + 160);
  v12 = *(_DWORD *)(v10 + 156);
  v13 = (glitch::video::CBatchDriver *)operator new(0x264u, 0);
  glitch::video::CBatchDriver::CBatchDriver(v13, v12, v11, a2);
  *(_DWORD *)(a1 + 28) = v13;
  v14 = *a3;
  *(_DWORD *)(a1 + 32) = *a3;
  if ( v14 )
    ++*(_DWORD *)(v14 + 4);
  *(_DWORD *)(a1 + 40) = a4;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 36) = a6;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 60) = 0;
  *(_DWORD *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)(a1 + 72) = 0;
  *(_DWORD *)(a1 + 76) = 0;
  *(_DWORD *)(a1 + 80) = 0;
  *(_DWORD *)(a1 + 84) = 0;
  *(_DWORD *)(a1 + 88) = 0;
  *(_DWORD *)(a1 + 92) = 0;
  *(_DWORD *)(a1 + 96) = 0;
  *(_DWORD *)(a1 + 100) = 0;
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
  *(_DWORD *)(a1 + 160) = 0;
  *(_DWORD *)(a1 + 164) = 0;
  *(_DWORD *)(a1 + 168) = 0;
  *(_DWORD *)(a1 + 172) = 0;
  *(_DWORD *)(a1 + 176) = 0;
  *(_DWORD *)(a1 + 180) = 0;
  *(_DWORD *)(a1 + 184) = 0;
  *(_DWORD *)(a1 + 188) = 0;
  *(_DWORD *)(a1 + 192) = 0;
  *(_DWORD *)(a1 + 196) = 0;
  *(_DWORD *)(a1 + 200) = 0;
  *(_DWORD *)(a1 + 204) = 0;
  *(_DWORD *)(a1 + 208) = 0;
  *(_DWORD *)(a1 + 212) = 0;
  *(_DWORD *)(a1 + 216) = 0;
  *(_DWORD *)(a1 + 220) = 0;
  *(_DWORD *)(a1 + 224) = 0;
  *(_DWORD *)(a1 + 228) = 0;
  *(_DWORD *)(a1 + 232) = 0;
  *(_DWORD *)(a1 + 236) = 0;
  *(_DWORD *)(a1 + 240) = 0;
  *(_DWORD *)(a1 + 260) = 0;
  *(_DWORD *)(a1 + 264) = 0;
  *(_DWORD *)(a1 + 268) = 0;
  *(_DWORD *)(a1 + 272) = 0;
  glitch::io::CAttributes::CAttributes((_DWORD *)(a1 + 276), 0);
  *(_DWORD *)(a1 + 368) = a5;
  *(_DWORD *)(a1 + 372) = 9;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    (_DWORD *)(a1 + 376),
    (wchar_t *)"i");
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    (_DWORD *)(a1 + 448),
    (wchar_t *)"n");
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    (_DWORD *)(a1 + 520),
    (wchar_t *)"t");
  v15 = *(_DWORD *)(a1 + 20);
  *(_DWORD *)(a1 + 600) = 0;
  *(_DWORD *)(a1 + 604) = 0;
  *(_DWORD *)(a1 + 608) = 0;
  *(_DWORD *)(a1 + 612) = 0;
  *(_DWORD *)(a1 + 616) = 0;
  *(_DWORD *)(a1 + 620) = 0;
  *(_DWORD *)(a1 + 624) = 0;
  *(_DWORD *)(a1 + 628) = 0;
  *(_DWORD *)(a1 + 632) = 0;
  *(_DWORD *)(a1 + 636) = 0;
  *(_DWORD *)(a1 + 640) = 0;
  *(_DWORD *)(a1 + 644) = 0;
  *(_BYTE *)(a1 + 650) = 0;
  *(_DWORD *)(a1 + 596) = 0;
  *(_BYTE *)(a1 + 648) = 1;
  *(_BYTE *)(a1 + 649) = 1;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v15 + 476))(v15, 127);
  v16 = (glitch::scene::CSceneManagerRootNode *)operator new(0x150u, 0);
  glitch::scene::CSceneManagerRootNode::CSceneManagerRootNode(v16, (glitch::scene::CSceneManager *)a1);
  v17 = *(_DWORD **)(a1 + 16);
  *(_DWORD *)(a1 + 4) = v16;
  *((_DWORD *)v16 + 2) = v17;
  *v17 = (char *)v16 + 4;
  *(_DWORD *)(a1 + 16) = (char *)v16 + 4;
  *((_DWORD *)v16 + 1) = a1 + 12;
  v18 = *(_DWORD *)(a1 + 8);
  v19 = *(_DWORD *)(a1 + 20);
  *(_BYTE *)(a1 + 592) = 1;
  *(_DWORD *)(a1 + 8) = v18 + 1;
  if ( v19 )
    ++*(_DWORD *)(v19 + 4);
  v20 = *(_DWORD *)(a1 + 40);
  if ( v20 )
    ++*(_DWORD *)(v20 + 4);
  v21 = *(_DWORD *)(a1 + 36);
  if ( v21 )
    ++*(_DWORD *)(v21 + 4);
  v22 = *(_DWORD *)(a1 + 368);
  if ( v22 )
  {
    ++*(_DWORD *)(v22 + 4);
  }
  else
  {
    v30 = (glitch::scene::CMeshCache *)operator new(0x18u, 0);
    glitch::scene::CMeshCache::CMeshCache(v30, a2);
    *(_DWORD *)(a1 + 368) = v30;
  }
  v23 = (glitch::scene::CSceneCollisionManager *)operator new(0x1Cu, 0);
  glitch::scene::CSceneCollisionManager::CSceneCollisionManager(
    v23,
    (glitch::scene::CSceneManager *)a1,
    *(glitch::video::IVideoDriver **)(a1 + 20));
  *(_DWORD *)(a1 + 44) = v23;
  v24 = operator new(0x10u, 0);
  glitch::scene::CColladaBinaryFileLoader::CColladaBinaryFileLoader(v24, a1, a1 + 32);
  v25 = *(_DWORD **)(a1 + 184);
  v26 = *(_DWORD **)(a1 + 188);
  v31 = v24;
  if ( v25 == v26 )
  {
    std::vector<glitch::scene::IMeshLoader *,glitch::core::SAllocator<glitch::scene::IMeshLoader *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      a1 + 180,
      (int)v25,
      &v31);
  }
  else
  {
    *v25 = v24;
    *(_DWORD *)(a1 + 184) += 4;
  }
  v27 = (glitch::IReferenceCounted *)operator new(0x20u, 0);
  glitch::scene::CDefaultSceneNodeFactory::CDefaultSceneNodeFactory(v27, a1, *(_DWORD *)(a1 + 40), a1 + 32);
  glitch::scene::CSceneManager::registerSceneNodeFactory(a1, (int)v27);
  glitch::IReferenceCounted::drop(v27);
  v28 = (glitch::scene::CDefaultSceneNodeAnimatorFactory *)operator new(0x10u, 0);
  glitch::scene::CDefaultSceneNodeAnimatorFactory::CDefaultSceneNodeAnimatorFactory(
    v28,
    (glitch::scene::CSceneManager *)a1,
    *(glitch::gui::ICursorControl **)(a1 + 40));
  glitch::scene::CSceneManager::registerSceneNodeAnimatorFactory(a1, (int)v28);
  glitch::IReferenceCounted::drop(v28);
  glitch::scene::CSceneManager::setShadowColor((_DWORD *)a1, -1778384896);
  return a1;
}


// ===== 58dd50 glitch::scene::CSceneManager::createNewSceneManager(bool) =====
_DWORD *__fastcall glitch::scene::CSceneManager::createNewSceneManager(glitch::scene::CSceneManager *this, int a2)
{
  _DWORD *v4; // r5

  v4 = operator new(0x294u, 0);
  glitch::scene::CSceneManager::CSceneManager(
    (int)v4,
    *((glitch::video::IVideoDriver **)this + 5),
    (int *)this + 8,
    *((_DWORD *)this + 10),
    *((_DWORD *)this + 92),
    *((_DWORD *)this + 9));
  if ( a2 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(v4[1] + *(_DWORD *)(*(_DWORD *)v4[1] - 12)));
    v4[1] = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 192))(*((_DWORD *)this + 1));
  }
  return v4;
}


// ===== 58ddd0 glitch::scene::CSceneManager::CSceneManager(glitch::video::IVideoDriver *,boost::intrusive_ptr<glitch::io::IFileSystem> const&,glitch::gui::ICursorControl *,glitch::scene::IMeshCache *,glitch::gui::IGUIEnvironment *) =====
int __fastcall glitch::scene::CSceneManager::CSceneManager(
        int a1,
        int *a2,
        glitch::video::IVideoDriver *a3,
        int *a4,
        int a5,
        int a6,
        int a7)
{
  int v11; // r2
  int v12; // r3
  unsigned int v13; // r10
  unsigned int v14; // r9
  glitch::video::CBatchDriver *v15; // r7
  int v16; // r3
  int v17; // r3
  glitch::scene::CSceneManagerRootNode *v18; // r7
  _DWORD *v19; // r2
  int v20; // r2
  int v21; // r3
  int v22; // r3
  int v23; // r3
  int v24; // r1
  glitch::scene::CSceneCollisionManager *v25; // r5
  void *v26; // r5
  _DWORD *v27; // r1
  _DWORD *v28; // r3
  glitch::IReferenceCounted *v29; // r5
  glitch::scene::CDefaultSceneNodeAnimatorFactory *v30; // r5
  glitch::scene::CMeshCache *v32; // r6
  void *v33; // [sp+8h] [bp-10h] BYREF

  glitch::IObject::IObject((glitch::IObject *)a1);
  v11 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v11 - 28)) = a2[1];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[2];
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 12) = a1 + 12;
  *(_DWORD *)(a1 + 16) = a1 + 12;
  *(_DWORD *)(a1 + 20) = a3;
  *(_DWORD *)(a1 + 24) = a3;
  v12 = *((_DWORD *)a3 + 53);
  v13 = *(_DWORD *)(v12 + 160);
  v14 = *(_DWORD *)(v12 + 156);
  v15 = (glitch::video::CBatchDriver *)operator new(0x264u, 0);
  glitch::video::CBatchDriver::CBatchDriver(v15, v14, v13, a3);
  *(_DWORD *)(a1 + 28) = v15;
  v16 = *a4;
  *(_DWORD *)(a1 + 32) = *a4;
  if ( v16 )
    ++*(_DWORD *)(v16 + 4);
  *(_DWORD *)(a1 + 36) = a7;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 40) = a5;
  *(_DWORD *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 60) = 0;
  *(_DWORD *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)(a1 + 72) = 0;
  *(_DWORD *)(a1 + 76) = 0;
  *(_DWORD *)(a1 + 80) = 0;
  *(_DWORD *)(a1 + 84) = 0;
  *(_DWORD *)(a1 + 88) = 0;
  *(_DWORD *)(a1 + 92) = 0;
  *(_DWORD *)(a1 + 96) = 0;
  *(_DWORD *)(a1 + 100) = 0;
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
  *(_DWORD *)(a1 + 160) = 0;
  *(_DWORD *)(a1 + 164) = 0;
  *(_DWORD *)(a1 + 168) = 0;
  *(_DWORD *)(a1 + 172) = 0;
  *(_DWORD *)(a1 + 176) = 0;
  *(_DWORD *)(a1 + 180) = 0;
  *(_DWORD *)(a1 + 184) = 0;
  *(_DWORD *)(a1 + 188) = 0;
  *(_DWORD *)(a1 + 192) = 0;
  *(_DWORD *)(a1 + 196) = 0;
  *(_DWORD *)(a1 + 200) = 0;
  *(_DWORD *)(a1 + 204) = 0;
  *(_DWORD *)(a1 + 208) = 0;
  *(_DWORD *)(a1 + 212) = 0;
  *(_DWORD *)(a1 + 216) = 0;
  *(_DWORD *)(a1 + 220) = 0;
  *(_DWORD *)(a1 + 224) = 0;
  *(_DWORD *)(a1 + 228) = 0;
  *(_DWORD *)(a1 + 232) = 0;
  *(_DWORD *)(a1 + 236) = 0;
  *(_DWORD *)(a1 + 240) = 0;
  *(_DWORD *)(a1 + 260) = 0;
  *(_DWORD *)(a1 + 264) = 0;
  *(_DWORD *)(a1 + 268) = 0;
  *(_DWORD *)(a1 + 272) = 0;
  glitch::io::CAttributes::CAttributes((_DWORD *)(a1 + 276), 0);
  *(_DWORD *)(a1 + 368) = a6;
  *(_DWORD *)(a1 + 372) = 9;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    (_DWORD *)(a1 + 376),
    (wchar_t *)"i");
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    (_DWORD *)(a1 + 448),
    (wchar_t *)"n");
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    (_DWORD *)(a1 + 520),
    (wchar_t *)"t");
  v17 = *(_DWORD *)(a1 + 20);
  *(_DWORD *)(a1 + 600) = 0;
  *(_DWORD *)(a1 + 604) = 0;
  *(_DWORD *)(a1 + 608) = 0;
  *(_DWORD *)(a1 + 612) = 0;
  *(_DWORD *)(a1 + 616) = 0;
  *(_DWORD *)(a1 + 620) = 0;
  *(_DWORD *)(a1 + 624) = 0;
  *(_DWORD *)(a1 + 628) = 0;
  *(_DWORD *)(a1 + 632) = 0;
  *(_DWORD *)(a1 + 636) = 0;
  *(_DWORD *)(a1 + 640) = 0;
  *(_DWORD *)(a1 + 644) = 0;
  *(_BYTE *)(a1 + 650) = 0;
  *(_DWORD *)(a1 + 596) = 0;
  *(_BYTE *)(a1 + 648) = 1;
  *(_BYTE *)(a1 + 649) = 1;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v17 + 476))(v17, 127);
  v18 = (glitch::scene::CSceneManagerRootNode *)operator new(0x150u, 0);
  glitch::scene::CSceneManagerRootNode::CSceneManagerRootNode(v18, (glitch::scene::CSceneManager *)a1);
  v19 = *(_DWORD **)(a1 + 16);
  *(_DWORD *)(a1 + 4) = v18;
  *((_DWORD *)v18 + 2) = v19;
  *v19 = (char *)v18 + 4;
  *(_DWORD *)(a1 + 16) = (char *)v18 + 4;
  *((_DWORD *)v18 + 1) = a1 + 12;
  v20 = *(_DWORD *)(a1 + 8);
  v21 = *(_DWORD *)(a1 + 20);
  *(_BYTE *)(a1 + 592) = 1;
  *(_DWORD *)(a1 + 8) = v20 + 1;
  if ( v21 )
    ++*(_DWORD *)(v21 + 4);
  v22 = *(_DWORD *)(a1 + 40);
  if ( v22 )
    ++*(_DWORD *)(v22 + 4);
  v23 = *(_DWORD *)(a1 + 36);
  if ( v23 )
    ++*(_DWORD *)(v23 + 4);
  v24 = *(_DWORD *)(a1 + 368);
  if ( v24 )
  {
    ++*(_DWORD *)(v24 + 4);
  }
  else
  {
    v32 = (glitch::scene::CMeshCache *)operator new(0x18u, 0);
    glitch::scene::CMeshCache::CMeshCache(v32, a3);
    *(_DWORD *)(a1 + 368) = v32;
  }
  v25 = (glitch::scene::CSceneCollisionManager *)operator new(0x1Cu, 0);
  glitch::scene::CSceneCollisionManager::CSceneCollisionManager(
    v25,
    (glitch::scene::CSceneManager *)a1,
    *(glitch::video::IVideoDriver **)(a1 + 20));
  *(_DWORD *)(a1 + 44) = v25;
  v26 = operator new(0x10u, 0);
  glitch::scene::CColladaBinaryFileLoader::CColladaBinaryFileLoader(v26, a1, a1 + 32);
  v27 = *(_DWORD **)(a1 + 184);
  v28 = *(_DWORD **)(a1 + 188);
  v33 = v26;
  if ( v27 == v28 )
  {
    std::vector<glitch::scene::IMeshLoader *,glitch::core::SAllocator<glitch::scene::IMeshLoader *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      a1 + 180,
      (int)v27,
      &v33);
  }
  else
  {
    *v27 = v26;
    *(_DWORD *)(a1 + 184) += 4;
  }
  v29 = (glitch::IReferenceCounted *)operator new(0x20u, 0);
  glitch::scene::CDefaultSceneNodeFactory::CDefaultSceneNodeFactory(v29, a1, *(_DWORD *)(a1 + 40), a1 + 32);
  glitch::scene::CSceneManager::registerSceneNodeFactory(a1, (int)v29);
  glitch::IReferenceCounted::drop(v29);
  v30 = (glitch::scene::CDefaultSceneNodeAnimatorFactory *)operator new(0x10u, 0);
  glitch::scene::CDefaultSceneNodeAnimatorFactory::CDefaultSceneNodeAnimatorFactory(
    v30,
    (glitch::scene::CSceneManager *)a1,
    *(glitch::gui::ICursorControl **)(a1 + 40));
  glitch::scene::CSceneManager::registerSceneNodeAnimatorFactory(a1, (int)v30);
  glitch::IReferenceCounted::drop(v30);
  glitch::scene::CSceneManager::setShadowColor((_DWORD *)a1, -1778384896);
  return a1;
}


// ===== 58e1e0 glitch::scene::CSceneManager::readSceneNode(glitch::io::IIrrXMLReader<wchar_t,glitch::IReferenceCounted> *,glitch::scene::ISceneNode *,glitch::scene::ISceneUserDataSerializer *) =====
int __fastcall glitch::scene::CSceneManager::readSceneNode(int result, int a2, int a3, int a4)
{
  int v6; // r6
  wchar_t *v7; // r0
  int v8; // r7
  int v9; // r0
  wchar_t *v10; // r0
  wchar_t *v11; // r0
  _BOOL4 v12; // r10
  glitch::io::IAttributes *v13; // r10
  wchar_t *v14; // r0
  _BOOL4 v15; // r10
  wchar_t *v16; // r0
  wchar_t *v17; // r0
  _BOOL4 v18; // r10
  wchar_t *v19; // r0
  _BOOL4 v20; // r10
  wchar_t *v21; // r0
  const wchar_t *v22; // r0
  int v23; // r3
  int v24; // r8
  int v25; // r10
  int v26; // r0
  bool v27; // zf
  bool v28; // zf
  int v29; // r2
  wchar_t *v30; // r0
  bool v31; // zf
  int v32; // r3
  wchar_t *v33; // r0
  const wchar_t *v34; // r0
  int v35; // [sp+0h] [bp-19Ch]
  int v36; // [sp+4h] [bp-198h]
  int v38; // [sp+10h] [bp-18Ch]
  _DWORD v39[17]; // [sp+24h] [bp-178h] BYREF
  void *v40; // [sp+68h] [bp-134h]
  _DWORD v41[17]; // [sp+6Ch] [bp-130h] BYREF
  void *v42; // [sp+B0h] [bp-ECh]
  _DWORD v43[17]; // [sp+B4h] [bp-E8h] BYREF
  void *v44; // [sp+F8h] [bp-A4h]
  _DWORD v45[17]; // [sp+FCh] [bp-A0h] BYREF
  void *p; // [sp+140h] [bp-5Ch]
  _BYTE v47[16]; // [sp+144h] [bp-58h] BYREF
  _BYTE v48[20]; // [sp+164h] [bp-38h] BYREF
  void *v49; // [sp+178h] [bp-24h]
  _BYTE v50[20]; // [sp+17Ch] [bp-20h] BYREF
  void *v51; // [sp+190h] [bp-Ch]

  v6 = result;
  if ( a2 )
  {
    if ( a3 )
    {
      v7 = (wchar_t *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
      v35 = v6 + 448;
      if ( std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
             v6 + 448,
             v7) )
      {
        v22 = (const wchar_t *)(*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)a2 + 36))(a2, *(_DWORD *)(v6 + 588));
        glitch::core::stringw2stringc((glitch::core *)v50, v22);
        v23 = *(_DWORD *)(v6 + 204);
        v24 = ((*(_DWORD *)(v6 + 208) - v23) >> 2) - 1;
        if ( v24 < 0 )
          goto LABEL_67;
        v25 = 4 * v24;
        while ( 1 )
        {
          v26 = (*(int (__fastcall **)(_DWORD, void *, int))(**(_DWORD **)(v23 + v25) + 16))(
                  *(_DWORD *)(v23 + v25),
                  v51,
                  a3);
          v27 = --v24 == 0;
          if ( v24 >= 0 )
            v27 = v26 == 0;
          v25 -= 4;
          if ( !v27 )
            break;
          v23 = *(_DWORD *)(v6 + 204);
        }
        v8 = v26;
        if ( !v26 )
        {
LABEL_67:
          glitch::os::Printer::log("Could not create scene node of unknown type", v51, 1);
          v8 = 0;
        }
        if ( v51 != v50 && v51 )
          GlitchFree(v51);
        v38 = v6 + 376;
        v28 = v8 == 0;
        if ( v8 )
          v28 = a4 == 0;
        v29 = !v28;
        v36 = v29;
        goto LABEL_6;
      }
      v38 = v6 + 376;
LABEL_5:
      v36 = 0;
      v8 = 0;
      goto LABEL_6;
    }
    v30 = (wchar_t *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
    v38 = v6 + 376;
    if ( !std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
            v6 + 376,
            v30) )
    {
      v35 = v6 + 448;
      goto LABEL_5;
    }
    v8 = *(_DWORD *)(v6 + 4);
    v35 = v6 + 448;
    v31 = a4 == 0;
    if ( a4 )
      v31 = v8 == 0;
    v32 = !v31;
    v36 = v32;
LABEL_6:
    while ( 1 )
    {
      result = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 12))(a2);
      if ( !result )
        break;
      v9 = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 20))(a2);
      if ( v9 == 1 )
      {
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
          v45,
          U"attributes");
        v11 = (wchar_t *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
        v12 = std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
                (int)v45,
                v11);
        if ( p != v45 && p )
          GlitchFree(p);
        if ( v12 )
        {
          v13 = (glitch::io::IAttributes *)(*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(v6 + 32) + 100))(
                                             *(_DWORD *)(v6 + 32),
                                             *(_DWORD *)(v6 + 20));
          glitch::io::CXMLAttributesReader::CXMLAttributesReader((int)v47, a2, 1, 0);
          glitch::io::CXMLAttributesReader::read((glitch::io::CXMLAttributesReader *)v47, v13);
          if ( v8 )
            (*(void (__fastcall **)(int, glitch::io::IAttributes *, _DWORD))(*(_DWORD *)v8 + 4))(v8, v13, 0);
          glitch::IReferenceCounted::drop(v13);
          glitch::io::CXMLAttributesReader::~CXMLAttributesReader((glitch::io::CXMLAttributesReader *)v47);
        }
        else
        {
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
            v43,
            (wchar_t *)"m");
          v14 = (wchar_t *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
          v15 = std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
                  (int)v43,
                  v14);
          if ( v44 != v43 && v44 )
            GlitchFree(v44);
          if ( v15 )
          {
            glitch::scene::CSceneManager::readMaterials(v6, a2, v8);
          }
          else
          {
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
              v41,
              (wchar_t *)"a");
            v17 = (wchar_t *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
            v18 = std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
                    (int)v41,
                    v17);
            if ( v42 != v41 && v42 )
              GlitchFree(v42);
            if ( v18 )
            {
              glitch::scene::CSceneManager::readAnimators(v6, a2, v8);
            }
            else
            {
              std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
                v39,
                (wchar_t *)"u");
              v19 = (wchar_t *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
              v20 = std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
                      (int)v39,
                      v19);
              if ( v40 != v39 && v40 )
                GlitchFree(v40);
              if ( v20 )
              {
                glitch::scene::CSceneManager::readUserData(v6, a2, v8, a4);
              }
              else
              {
                v21 = (wchar_t *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
                if ( std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
                       v35,
                       v21)
                  || (v33 = (wchar_t *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2),
                      std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
                        v38,
                        v33)) )
                {
                  glitch::scene::CSceneManager::readSceneNode(v6, a2, v8, a4);
                }
                else
                {
                  v34 = (const wchar_t *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
                  glitch::core::stringw2stringc((glitch::core *)v48, v34);
                  glitch::os::Printer::log("Found unknown element in irrlicht scene file", v49, 1);
                  if ( v49 != v48 && v49 )
                    GlitchFree(v49);
                }
              }
            }
          }
        }
      }
      else if ( v9 == 2 )
      {
        v10 = (wchar_t *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
        result = std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
                   v35,
                   v10);
        if ( result )
          break;
        v16 = (wchar_t *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
        result = std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
                   v38,
                   v16);
        if ( result )
          break;
      }
    }
    if ( v36 )
      return (*(int (__fastcall **)(int, int))(*(_DWORD *)a4 + 8))(a4, v8);
  }
  return result;
}


// ===== 58e768 glitch::scene::CSceneManager::loadScene(glitch::io::IReadFile *,glitch::scene::ISceneUserDataSerializer *) =====
int __fastcall glitch::scene::CSceneManager::loadScene(int a1, int a2, int a3)
{
  glitch::IReferenceCounted *v6; // r4
  int v7; // r0

  if ( a2 )
  {
    v6 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 32) + 80))(*(_DWORD *)(a1 + 32));
    if ( v6 )
    {
      while ( (*(int (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v6 + 12))(v6) )
        glitch::scene::CSceneManager::readSceneNode(a1, (int)v6, 0, a3);
      glitch::IReferenceCounted::drop(v6);
      return 1;
    }
    else
    {
      v7 = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 40))(a2);
      glitch::os::Printer::log("Scene is not a valid XML file", v7, 3);
      return 0;
    }
  }
  else
  {
    glitch::os::Printer::log("Unable to open scene file", 3);
    return 0;
  }
}


// ===== 58e824 glitch::scene::CSceneManager::getMesh(char const*) =====
glitch::scene::CSceneManager *__fastcall glitch::scene::CSceneManager::getMesh(
        glitch::scene::CSceneManager *this,
        const char *a2,
        char *a3)
{
  glitch::IReferenceCounted *v5; // r4
  glitch::IReferenceCounted *v7; // r9
  void *v8; // r1
  char v9; // r3
  _BYTE *v10; // r1
  int v11; // r3
  int v12; // r2
  int v13; // r4
  int v14; // r6
  int v15; // r5
  glitch::IReferenceCounted *v16; // r3
  glitch::IReferenceCounted *v17; // r0
  glitch::IReferenceCounted *v18; // r3
  bool v19; // zf
  glitch::IReferenceCounted *v21; // [sp+10h] [bp-4h] BYREF
  glitch::IReferenceCounted *v22; // [sp+14h] [bp+0h] BYREF
  _DWORD v23[4]; // [sp+1Ch] [bp+8h] BYREF
  _BYTE *v24; // [sp+2Ch] [bp+18h]
  void *p; // [sp+30h] [bp+1Ch]

  (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD))(**((_DWORD **)a2 + 92) + 40))(
    &v22,
    *((_DWORD *)a2 + 92));
  v5 = v22;
  if ( v22 )
  {
    *(_DWORD *)this = v22;
    ++*((_DWORD *)v5 + 1);
  }
  else
  {
    v7 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(_DWORD, char *))(**((_DWORD **)a2 + 8) + 12))(
                                        *((_DWORD *)a2 + 8),
                                        a3);
    if ( v7 )
    {
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        v23,
        a3);
      v8 = p;
      if ( v24 != p )
      {
        do
        {
          v9 = *((_BYTE *)v5 + (_DWORD)v8);
          v10 = (char *)v5 + (_DWORD)v8;
          v5 = (glitch::IReferenceCounted *)((char *)v5 + 1);
          if ( (unsigned __int8)(v9 - 65) <= 0x19u )
            v9 += 32;
          *v10 = v9;
          v8 = p;
        }
        while ( (unsigned int)v5 < v24 - (_BYTE *)p );
      }
      v11 = *((_DWORD *)a2 + 45);
      v12 = (*((_DWORD *)a2 + 46) - v11) >> 2;
      if ( v12 - 1 >= 0 )
      {
        v13 = 4 * (v12 - 1);
        v14 = 0;
        v15 = (*((_DWORD *)a2 + 46) - v11) >> 2;
        while ( 1 )
        {
          if ( (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v11 + v13) + 12))(*(_DWORD *)(v11 + v13)) )
          {
            (*(void (__fastcall **)(glitch::IReferenceCounted *, _DWORD, _DWORD))(*(_DWORD *)v7 + 24))(v7, 0, 0);
            (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, glitch::IReferenceCounted *))(**(_DWORD **)(*((_DWORD *)a2 + 45) + v13) + 16))(
              &v21,
              *(_DWORD *)(*((_DWORD *)a2 + 45) + v13),
              v7);
            v16 = v21;
            if ( v21 )
              ++*((_DWORD *)v21 + 1);
            v17 = v22;
            v22 = v16;
            if ( v17 )
              glitch::IReferenceCounted::drop(v17);
            if ( v21 )
              glitch::IReferenceCounted::drop(v21);
            if ( v22 )
              break;
          }
          ++v14;
          v13 -= 4;
          if ( v14 == v15 )
            goto LABEL_24;
          v11 = *((_DWORD *)a2 + 45);
        }
        (*(void (__fastcall **)(_DWORD, char *, glitch::IReferenceCounted **))(**((_DWORD **)a2 + 92) + 12))(
          *((_DWORD *)a2 + 92),
          a3,
          &v22);
      }
LABEL_24:
      glitch::IReferenceCounted::drop(v7);
      if ( v22 )
        glitch::os::Printer::log("Loaded mesh", a3, 1);
      else
        glitch::os::Printer::log("Could not load mesh, file format seems to be unsupported", a3, 3);
      v18 = v22;
      v19 = v22 == nullptr;
      *(_DWORD *)this = v22;
      if ( !v19 )
        ++*((_DWORD *)v18 + 1);
      if ( p != v23 && p )
        GlitchFree(p);
    }
    else
    {
      glitch::os::Printer::log("Could not load mesh, because file could not be opened.", a3, 3);
      *(_DWORD *)this = 0;
    }
  }
  if ( v22 )
    glitch::IReferenceCounted::drop(v22);
  return this;
}


// ===== 58eb04 std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
glitch::video::CMaterial ***__fastcall std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        glitch::video::CMaterial ***a1)
{
  glitch::video::CMaterial **v1; // r4
  glitch::video::CMaterial **v2; // r6
  glitch::video::CMaterial *v4; // r5

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 -= 5;
    v4 = v1[2];
    if ( v4 )
    {
      if ( (*(_DWORD *)v4)-- == 1 )
      {
        glitch::video::CMaterial::~CMaterial(v4);
        LC_API_FREE_0(v4);
      }
    }
  }
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 58eb70 glitch::scene::CSceneManager::~CSceneManager() =====
void __fastcall glitch::scene::CSceneManager::~CSceneManager(glitch::scene::CSceneManager *this)
{
  glitch::IReferenceCounted *v2; // r0
  glitch::IReferenceCounted *v3; // r0
  glitch::IReferenceCounted *v4; // r0
  int v5; // r3
  unsigned int v6; // r5
  _DWORD *v7; // r3
  glitch::IReferenceCounted *v8; // r0
  int v9; // r3
  unsigned int v10; // r5
  int v11; // r3
  unsigned int v12; // r5
  char **v13; // r3
  char *v14; // r5
  char *v15; // r2
  _DWORD *v16; // r2
  glitch::IReferenceCounted *v17; // r0
  glitch::IReferenceCounted *v18; // r0
  glitch::collada::CGlitchNewParticleSystemSceneNode *v19; // r0
  void *v20; // r0
  void *v21; // r0
  void *v22; // r0
  void *v23; // r0
  char *v24; // r0
  char *v25; // r0
  char *v26; // r0
  void *v27; // r0
  void *v28; // r0
  void *v29; // r0
  void *v30; // r0
  void *v31; // r0
  void *v32; // r0
  void *v33; // r0
  void *v34; // r0
  void *v35; // r0
  void *v36; // r0
  glitch::IReferenceCounted *v37; // r0
  char **v38; // r3
  char *v39; // r2
  int v40; // [sp+4h] [bp-4h] BYREF

  *(_DWORD *)this = off_9766F4;
  *((_DWORD *)this + 163) = off_97678C;
  glitch::scene::CSceneManager::clearDeletionList((int)this);
  v2 = *((glitch::IReferenceCounted **)this + 10);
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  v3 = *((glitch::IReferenceCounted **)this + 11);
  if ( v3 )
    glitch::IReferenceCounted::drop(v3);
  v4 = *((glitch::IReferenceCounted **)this + 9);
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  v5 = *((_DWORD *)this + 45);
  if ( (unsigned int)(*((_DWORD *)this + 46) - v5) >> 2 )
  {
    v6 = 0;
    do
    {
      glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)(v5 + 4 * v6));
      v5 = *((_DWORD *)this + 45);
      ++v6;
    }
    while ( v6 < (*((_DWORD *)this + 46) - v5) >> 2 );
  }
  v7 = *((_DWORD **)this + 57);
  if ( v7 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v7 + *(_DWORD *)(*v7 - 12)));
  v8 = *((glitch::IReferenceCounted **)this + 92);
  *((_DWORD *)this + 57) = 0;
  if ( v8 )
    glitch::IReferenceCounted::drop(v8);
  v9 = *((_DWORD *)this + 51);
  if ( (unsigned int)(*((_DWORD *)this + 52) - v9) >> 2 )
  {
    v10 = 0;
    do
    {
      glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)(v9 + 4 * v10));
      v9 = *((_DWORD *)this + 51);
      ++v10;
    }
    while ( v10 < (*((_DWORD *)this + 52) - v9) >> 2 );
  }
  v11 = *((_DWORD *)this + 54);
  if ( (unsigned int)(*((_DWORD *)this + 55) - v11) >> 2 )
  {
    v12 = 0;
    do
    {
      glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)(v11 + 4 * v12));
      v11 = *((_DWORD *)this + 54);
      ++v12;
    }
    while ( v12 < (*((_DWORD *)this + 55) - v11) >> 2 );
  }
  v14 = (char *)this + 12;
  v13 = *((char ***)this + 3);
  if ( v13 != (char **)((char *)this + 12) )
  {
    while ( 1 )
    {
      v15 = *v13;
      v13[1] = nullptr;
      *v13 = nullptr;
      if ( v14 == v15 )
        break;
      v13 = (char **)v15;
    }
    v13 = (char **)((char *)this + 12);
  }
  v16 = *((_DWORD **)this + 1);
  *((_DWORD *)this + 4) = v13;
  *((_DWORD *)this + 3) = v13;
  *((_DWORD *)this + 2) = 0;
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v16 + *(_DWORD *)(*v16 - 12)));
  v40 = 0;
  std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)this + 624,
    (char *)&v40);
  v17 = *((glitch::IReferenceCounted **)this + 7);
  if ( v17 )
    glitch::IReferenceCounted::drop(v17);
  v18 = *((glitch::IReferenceCounted **)this + 6);
  if ( v18 )
    v18 = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v18);
  v19 = (glitch::collada::CGlitchNewParticleSystemSceneNode *)glitch::collada::CParticleSystemSceneNode::deleteSharedBuffer(v18);
  glitch::collada::CGlitchNewParticleSystemSceneNode::deleteSharedBuffer(v19);
  v20 = *((void **)this + 159);
  if ( v20 )
    GlitchFree(v20);
  v21 = *((void **)this + 156);
  if ( v21 )
    GlitchFree(v21);
  v22 = *((void **)this + 153);
  if ( v22 )
    GlitchFree(v22);
  v23 = *((void **)this + 150);
  if ( v23 )
    GlitchFree(v23);
  v24 = *((char **)this + 147);
  if ( v24 != (char *)this + 520 && v24 )
    GlitchFree(v24);
  v25 = *((char **)this + 129);
  if ( v25 != (char *)this + 448 && v25 )
    GlitchFree(v25);
  v26 = *((char **)this + 111);
  if ( v26 != (char *)this + 376 && v26 )
    GlitchFree(v26);
  glitch::io::CAttributes::~CAttributes((void ***)this + 69);
  v27 = *((void **)this + 54);
  if ( v27 )
    GlitchFree(v27);
  v28 = *((void **)this + 51);
  if ( v28 )
    GlitchFree(v28);
  v29 = *((void **)this + 48);
  if ( v29 )
    GlitchFree(v29);
  v30 = *((void **)this + 45);
  if ( v30 )
    GlitchFree(v30);
  std::vector<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 36);
  std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector((glitch::video::CMaterial ***)this + 33);
  std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector((glitch::video::CMaterial ***)this + 30);
  v31 = *((void **)this + 27);
  if ( v31 )
    GlitchFree(v31);
  v32 = *((void **)this + 24);
  if ( v32 )
    GlitchFree(v32);
  v33 = *((void **)this + 21);
  if ( v33 )
    GlitchFree(v33);
  v34 = *((void **)this + 18);
  if ( v34 )
    GlitchFree(v34);
  v35 = *((void **)this + 15);
  if ( v35 )
    GlitchFree(v35);
  v36 = *((void **)this + 12);
  if ( v36 )
    GlitchFree(v36);
  v37 = *((glitch::IReferenceCounted **)this + 8);
  if ( v37 )
    glitch::IReferenceCounted::drop(v37);
  v38 = *((char ***)this + 3);
  if ( v38 != (char **)v14 )
  {
    while ( 1 )
    {
      v39 = *v38;
      v38[1] = nullptr;
      *v38 = nullptr;
      if ( v14 == v39 )
        break;
      v38 = (char **)v39;
    }
    v38 = (char **)((char *)this + 12);
  }
  *((_DWORD *)this + 4) = v38;
  *((_DWORD *)this + 3) = v38;
  *((_DWORD *)this + 2) = 0;
  glitch::IObject::~IObject(this);
}


// ===== 58ef00 glitch::scene::CSceneManager::~CSceneManager() =====
void __fastcall glitch::scene::CSceneManager::~CSceneManager(glitch::scene::CSceneManager *this)
{
  glitch::scene::CSceneManager::~CSceneManager(this);
  LC_API_FREE_0(this);
}


// ===== 58ef1c glitch::scene::CSceneManager::~CSceneManager() =====
void __fastcall glitch::scene::CSceneManager::~CSceneManager(glitch::scene::CSceneManager *this, int *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *v4; // r0
  glitch::IReferenceCounted *v5; // r0
  glitch::IReferenceCounted *v6; // r0
  int v7; // r3
  unsigned int v8; // r5
  _DWORD *v9; // r3
  glitch::IReferenceCounted *v10; // r0
  int v11; // r3
  unsigned int v12; // r5
  int v13; // r3
  unsigned int v14; // r5
  char **v15; // r3
  char *v16; // r5
  char *v17; // r2
  _DWORD *v18; // r2
  glitch::IReferenceCounted *v19; // r0
  glitch::IReferenceCounted *v20; // r0
  glitch::collada::CGlitchNewParticleSystemSceneNode *v21; // r0
  void *v22; // r0
  void *v23; // r0
  void *v24; // r0
  void *v25; // r0
  char *v26; // r0
  char *v27; // r0
  char *v28; // r0
  void *v29; // r0
  void *v30; // r0
  void *v31; // r0
  void *v32; // r0
  void *v33; // r0
  void *v34; // r0
  void *v35; // r0
  void *v36; // r0
  void *v37; // r0
  void *v38; // r0
  glitch::IReferenceCounted *v39; // r0
  char **v40; // r3
  char *v41; // r2
  int v42; // [sp+4h] [bp-4h] BYREF

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 28)) = a2[1];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[2];
  glitch::scene::CSceneManager::clearDeletionList((int)this);
  v4 = *((glitch::IReferenceCounted **)this + 10);
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  v5 = *((glitch::IReferenceCounted **)this + 11);
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  v6 = *((glitch::IReferenceCounted **)this + 9);
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  v7 = *((_DWORD *)this + 45);
  if ( (unsigned int)(*((_DWORD *)this + 46) - v7) >> 2 )
  {
    v8 = 0;
    do
    {
      glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)(v7 + 4 * v8));
      v7 = *((_DWORD *)this + 45);
      ++v8;
    }
    while ( v8 < (*((_DWORD *)this + 46) - v7) >> 2 );
  }
  v9 = *((_DWORD **)this + 57);
  if ( v9 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v9 + *(_DWORD *)(*v9 - 12)));
  v10 = *((glitch::IReferenceCounted **)this + 92);
  *((_DWORD *)this + 57) = 0;
  if ( v10 )
    glitch::IReferenceCounted::drop(v10);
  v11 = *((_DWORD *)this + 51);
  if ( (unsigned int)(*((_DWORD *)this + 52) - v11) >> 2 )
  {
    v12 = 0;
    do
    {
      glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)(v11 + 4 * v12));
      v11 = *((_DWORD *)this + 51);
      ++v12;
    }
    while ( v12 < (*((_DWORD *)this + 52) - v11) >> 2 );
  }
  v13 = *((_DWORD *)this + 54);
  if ( (unsigned int)(*((_DWORD *)this + 55) - v13) >> 2 )
  {
    v14 = 0;
    do
    {
      glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)(v13 + 4 * v14));
      v13 = *((_DWORD *)this + 54);
      ++v14;
    }
    while ( v14 < (*((_DWORD *)this + 55) - v13) >> 2 );
  }
  v16 = (char *)this + 12;
  v15 = *((char ***)this + 3);
  if ( v15 != (char **)((char *)this + 12) )
  {
    while ( 1 )
    {
      v17 = *v15;
      v15[1] = nullptr;
      *v15 = nullptr;
      if ( v16 == v17 )
        break;
      v15 = (char **)v17;
    }
    v15 = (char **)((char *)this + 12);
  }
  v18 = *((_DWORD **)this + 1);
  *((_DWORD *)this + 4) = v15;
  *((_DWORD *)this + 3) = v15;
  *((_DWORD *)this + 2) = 0;
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v18 + *(_DWORD *)(*v18 - 12)));
  v42 = 0;
  std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)this + 624,
    (char *)&v42);
  v19 = *((glitch::IReferenceCounted **)this + 7);
  if ( v19 )
    glitch::IReferenceCounted::drop(v19);
  v20 = *((glitch::IReferenceCounted **)this + 6);
  if ( v20 )
    v20 = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v20);
  v21 = (glitch::collada::CGlitchNewParticleSystemSceneNode *)glitch::collada::CParticleSystemSceneNode::deleteSharedBuffer(v20);
  glitch::collada::CGlitchNewParticleSystemSceneNode::deleteSharedBuffer(v21);
  v22 = *((void **)this + 159);
  if ( v22 )
    GlitchFree(v22);
  v23 = *((void **)this + 156);
  if ( v23 )
    GlitchFree(v23);
  v24 = *((void **)this + 153);
  if ( v24 )
    GlitchFree(v24);
  v25 = *((void **)this + 150);
  if ( v25 )
    GlitchFree(v25);
  v26 = *((char **)this + 147);
  if ( v26 != (char *)this + 520 && v26 )
    GlitchFree(v26);
  v27 = *((char **)this + 129);
  if ( v27 != (char *)this + 448 && v27 )
    GlitchFree(v27);
  v28 = *((char **)this + 111);
  if ( v28 != (char *)this + 376 && v28 )
    GlitchFree(v28);
  glitch::io::CAttributes::~CAttributes((void ***)this + 69);
  v29 = *((void **)this + 54);
  if ( v29 )
    GlitchFree(v29);
  v30 = *((void **)this + 51);
  if ( v30 )
    GlitchFree(v30);
  v31 = *((void **)this + 48);
  if ( v31 )
    GlitchFree(v31);
  v32 = *((void **)this + 45);
  if ( v32 )
    GlitchFree(v32);
  std::vector<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 36);
  std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector((glitch::video::CMaterial ***)this + 33);
  std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector((glitch::video::CMaterial ***)this + 30);
  v33 = *((void **)this + 27);
  if ( v33 )
    GlitchFree(v33);
  v34 = *((void **)this + 24);
  if ( v34 )
    GlitchFree(v34);
  v35 = *((void **)this + 21);
  if ( v35 )
    GlitchFree(v35);
  v36 = *((void **)this + 18);
  if ( v36 )
    GlitchFree(v36);
  v37 = *((void **)this + 15);
  if ( v37 )
    GlitchFree(v37);
  v38 = *((void **)this + 12);
  if ( v38 )
    GlitchFree(v38);
  v39 = *((glitch::IReferenceCounted **)this + 8);
  if ( v39 )
    glitch::IReferenceCounted::drop(v39);
  v40 = *((char ***)this + 3);
  if ( v40 != (char **)v16 )
  {
    while ( 1 )
    {
      v41 = *v40;
      v40[1] = nullptr;
      *v40 = nullptr;
      if ( v16 == v41 )
        break;
      v40 = (char **)v41;
    }
    v40 = (char **)((char *)this + 12);
  }
  *((_DWORD *)this + 4) = v40;
  *((_DWORD *)this + 3) = v40;
  *((_DWORD *)this + 2) = 0;
  glitch::IObject::~IObject(this);
}


// ===== 58f2a8 glitch::scene::SBatchConfig::operator=(glitch::scene::SBatchConfig const&) =====
int __fastcall glitch::scene::SBatchConfig::operator=(int a1, int a2)
{
  _DWORD *v2; // r3
  glitch::video::CMaterial *v5; // r4
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r1
  int v11; // r2
  int v12; // r3
  int v13; // r3
  glitch::IReferenceCounted *v14; // r0

  v2 = *(_DWORD **)a2;
  if ( *(_DWORD *)a2 )
    ++*v2;
  v5 = *(glitch::video::CMaterial **)a1;
  *(_DWORD *)a1 = v2;
  if ( v5 )
  {
    if ( (*(_DWORD *)v5)-- == 1 )
    {
      glitch::video::CMaterial::~CMaterial(v5);
      LC_API_FREE_0(v5);
    }
  }
  v7 = *(_DWORD *)(a2 + 8);
  v8 = *(_DWORD *)(a2 + 12);
  v9 = *(_DWORD *)(a2 + 16);
  *(_DWORD *)(a1 + 4) = *(_DWORD *)(a2 + 4);
  *(_DWORD *)(a1 + 8) = v7;
  *(_DWORD *)(a1 + 12) = v8;
  *(_DWORD *)(a1 + 16) = v9;
  v10 = *(_DWORD *)(a2 + 24);
  v11 = *(_DWORD *)(a2 + 28);
  v12 = *(_DWORD *)(a2 + 32);
  *(_DWORD *)(a1 + 20) = *(_DWORD *)(a2 + 20);
  *(_DWORD *)(a1 + 24) = v10;
  *(_DWORD *)(a1 + 28) = v11;
  *(_DWORD *)(a1 + 32) = v12;
  v13 = *(_DWORD *)(a2 + 40);
  if ( v13 )
    ++*(_DWORD *)(v13 + 4);
  v14 = *(glitch::IReferenceCounted **)(a1 + 40);
  *(_DWORD *)(a1 + 40) = v13;
  if ( v14 )
    glitch::IReferenceCounted::drop(v14);
  return a1;
}


// ===== 58f348 glitch::scene::CSceneManager::registerNodeForRendering(glitch::scene::ISceneNode *,boost::intrusive_ptr<glitch::video::CMaterial> const&,void *,glitch::scene::E_SCENE_NODE_RENDER_PASS,glitch::core::vector3d<float> const*,int) =====
int __fastcall glitch::scene::CSceneManager::registerNodeForRendering(
        int a1,
        glitch::video::CMaterial *a2,
        glitch::video::CMaterial **a3,
        int a4,
        int a5,
        float *a6,
        int a7)
{
  glitch::video::CMaterial *v9; // r7
  int v10; // r4
  glitch::video::CMaterial *v11; // r4
  char *v14; // r12
  char *v15; // r3
  int v16; // r2
  char *v17; // r2
  _DWORD *v18; // r12
  int v19; // r1
  int v20; // r2
  int v21; // r3
  glitch::video::CMaterial **v22; // r3
  glitch::video::CMaterial **v23; // r2
  glitch::video::CMaterial *v24; // r7
  int Technique; // r0
  int v26; // r4
  glitch::video::CMaterial *v27; // r0
  int v28; // r1
  glitch::video::CMaterial *v29; // r3
  glitch::video::CMaterial **v30; // r3
  glitch::video::CMaterial **v31; // r2
  glitch::video::CMaterial **v32; // r3
  glitch::video::CMaterial **v33; // r2
  glitch::video::CMaterial **v34; // r3
  glitch::video::CMaterial **v35; // r2
  glitch::video::CMaterial *v36; // r3
  int v37; // r7
  glitch::video::CMaterial *v38; // r3
  int v40; // [sp+14h] [bp-C0h]
  float v41[5]; // [sp+18h] [bp-BCh] BYREF
  float v42[2]; // [sp+2Ch] [bp-A8h] BYREF
  glitch::video::CMaterial *v43; // [sp+34h] [bp-A0h]
  glitch::video::CMaterial *v44; // [sp+40h] [bp-94h] BYREF
  int v45; // [sp+44h] [bp-90h]
  glitch::video::CMaterial *v46; // [sp+48h] [bp-8Ch]
  int v47; // [sp+4Ch] [bp-88h]
  glitch::video::CMaterial *v48; // [sp+50h] [bp-84h] BYREF
  int v49; // [sp+54h] [bp-80h]
  glitch::video::CMaterial *v50; // [sp+58h] [bp-7Ch]
  int v51; // [sp+5Ch] [bp-78h]
  glitch::video::CMaterial *v52; // [sp+60h] [bp-74h] BYREF
  int v53; // [sp+64h] [bp-70h]
  glitch::video::CMaterial *v54; // [sp+68h] [bp-6Ch]
  int v55; // [sp+6Ch] [bp-68h]
  double v56; // [sp+70h] [bp-64h] BYREF
  int v57; // [sp+78h] [bp-5Ch]
  int v58; // [sp+7Ch] [bp-58h]
  glitch::video::CMaterial *v59; // [sp+84h] [bp-50h] BYREF
  int v60; // [sp+88h] [bp-4Ch]
  glitch::video::CMaterial *v61; // [sp+8Ch] [bp-48h] BYREF
  int v62; // [sp+90h] [bp-44h]
  glitch::video::CMaterial *v63; // [sp+94h] [bp-40h] BYREF
  int v64; // [sp+98h] [bp-3Ch]
  glitch::video::CMaterial *v65; // [sp+9Ch] [bp-38h] BYREF
  int v66; // [sp+A0h] [bp-34h]
  glitch::video::CMaterial *v67; // [sp+A4h] [bp-30h] BYREF
  int v68; // [sp+A8h] [bp-2Ch]
  glitch::video::CMaterial *v69; // [sp+ACh] [bp-28h] BYREF
  glitch::video::CMaterial *v70; // [sp+B0h] [bp-24h] BYREF
  char v71[4]; // [sp+B4h] [bp-20h] BYREF
  char v72[4]; // [sp+B8h] [bp-1Ch] BYREF
  char v73[4]; // [sp+BCh] [bp-18h] BYREF
  char v74[4]; // [sp+C0h] [bp-14h] BYREF
  char v75[4]; // [sp+C4h] [bp-10h] BYREF
  char v76[4]; // [sp+C8h] [bp-Ch] BYREF
  char v77[8]; // [sp+CCh] [bp-8h] BYREF

  switch ( a5 )
  {
    case 0:
      v14 = *(char **)(a1 + 60);
      v15 = *(char **)(a1 + 64);
      if ( (v15 - v14) >> 3 )
      {
        if ( *(glitch::video::CMaterial **)v14 == a2 )
          goto LABEL_15;
        v16 = 0;
        while ( ++v16 != (v15 - v14) >> 3 )
        {
          if ( *(glitch::video::CMaterial **)&v14[8 * v16] == a2 )
            goto LABEL_15;
        }
      }
      v17 = *(char **)(a1 + 68);
      v68 = a4;
      v67 = a2;
      if ( v15 == v17 )
      {
        std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
          (_DWORD *)(a1 + 60),
          (int)v15,
          &v67,
          (int)v76,
          1u,
          1u);
      }
      else
      {
        *(_DWORD *)v15 = a2;
        *((_DWORD *)v15 + 1) = v68;
        *(_DWORD *)(a1 + 64) += 8;
      }
      goto LABEL_26;
    case 1:
      glitch::scene::CSceneManager::SDistanceNodeEntry::SDistanceNodeEntry(&v56, (int)a2, (float *)(a1 + 232), a4);
      v18 = *(_DWORD **)(a1 + 76);
      if ( v18 == *(_DWORD **)(a1 + 80) )
      {
        std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
          (_DWORD *)(a1 + 72),
          *(_DWORD *)(a1 + 76),
          &v56,
          (int)v77,
          1u,
          1);
      }
      else
      {
        v19 = HIDWORD(v56);
        v20 = v57;
        v21 = v58;
        *v18 = LODWORD(v56);
        v18[1] = v19;
        v18[2] = v20;
        v18[3] = v21;
        *(_DWORD *)(a1 + 76) += 16;
      }
      goto LABEL_26;
    case 2:
      v22 = *(glitch::video::CMaterial ***)(a1 + 112);
      v23 = *(glitch::video::CMaterial ***)(a1 + 116);
      v66 = a4;
      v65 = a2;
      if ( v22 == v23 )
      {
        std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
          (_DWORD *)(a1 + 108),
          (int)v22,
          &v65,
          (int)v75,
          1u,
          1u);
      }
      else
      {
        *v22 = a2;
        v22[1] = (glitch::video::CMaterial *)v66;
        *(_DWORD *)(a1 + 112) += 8;
      }
      goto LABEL_26;
    case 3:
      v24 = *a3;
      if ( *a3 )
      {
        v40 = (int)a2;
        Technique = glitch::video::CMaterial::getTechnique(*a3);
        a2 = (glitch::video::CMaterial *)v40;
        if ( (*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)v24 + 1) + 24) + 12 * Technique + 8) + 4) & 0x10000) != 0
          && !*(_BYTE *)(a1 + 650) )
        {
          v38 = *a3;
          v69 = v38;
          if ( v38 )
            ++*(_DWORD *)v38;
          glitch::scene::CSceneManager::STransparentNodeEntry::STransparentNodeEntry(
            v41,
            v40,
            (float *)(a1 + 232),
            &v69,
            a4,
            a6,
            a7);
          std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
            a1 + 132,
            (int)v41);
          glitch::scene::CSceneManager::STransparentNodeEntry::~STransparentNodeEntry((glitch::scene::CSceneManager::STransparentNodeEntry *)v41);
          boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v69);
          goto LABEL_26;
        }
        v24 = *a3;
        v26 = a1 + 120;
        if ( *a3 )
        {
          ++*(_DWORD *)v24;
          v44 = (glitch::video::CMaterial *)v40;
          v45 = a4;
          v46 = v24;
          ++*(_DWORD *)v24;
          goto LABEL_33;
        }
      }
      else
      {
        v26 = a1 + 120;
      }
      v44 = a2;
      v45 = a4;
      v46 = nullptr;
LABEL_33:
      if ( a7 == 0x7FFFFFFF )
        v47 = (*(int (__fastcall **)(glitch::video::CMaterial *))(*(_DWORD *)v44 + 216))(v44);
      else
        v47 = a7;
      std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        v26,
        (int)&v44);
      v27 = v46;
      if ( v46 )
LABEL_37:
        glitch::intrusive_ptr_release(v27);
LABEL_38:
      if ( v24 )
        glitch::intrusive_ptr_release(v24);
LABEL_26:
      ++`anonymous namespace'::Stats;
      return 1;
    case 4:
      v24 = *a3;
      if ( *a3 )
      {
        ++*(_DWORD *)v24;
        v52 = a2;
        v53 = a4;
        v54 = v24;
        ++*(_DWORD *)v24;
      }
      else
      {
        v52 = a2;
        v53 = a4;
        v54 = nullptr;
      }
      if ( a7 == 0x7FFFFFFF )
        v55 = (*(int (__fastcall **)(glitch::video::CMaterial *))(*(_DWORD *)v52 + 216))(v52);
      else
        v55 = a7;
      v28 = *(_DWORD *)(a1 + 124);
      if ( v28 == *(_DWORD *)(a1 + 128) )
      {
        std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
          (glitch::video::CMaterial ***)(a1 + 120),
          (char *)v28,
          &v52,
          (int)v74,
          1u,
          1);
      }
      else
      {
        *(_DWORD *)v28 = v52;
        *(_DWORD *)(v28 + 4) = v53;
        v29 = v54;
        *(_DWORD *)(v28 + 8) = v54;
        if ( v29 )
          ++*(_DWORD *)v29;
        *(_DWORD *)(v28 + 12) = v55;
        *(_DWORD *)(a1 + 124) += 16;
      }
      v27 = v54;
      if ( !v54 )
        goto LABEL_38;
      goto LABEL_37;
    case 5:
      v34 = *(glitch::video::CMaterial ***)(a1 + 88);
      v35 = *(glitch::video::CMaterial ***)(a1 + 92);
      v64 = a4;
      v63 = a2;
      if ( v34 == v35 )
      {
        std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
          (_DWORD *)(a1 + 84),
          (int)v34,
          &v63,
          (int)v73,
          1u,
          1u);
      }
      else
      {
        *v34 = a2;
        v34[1] = (glitch::video::CMaterial *)v64;
        *(_DWORD *)(a1 + 88) += 8;
      }
      goto LABEL_26;
    case 6:
      v30 = *(glitch::video::CMaterial ***)(a1 + 100);
      v31 = *(glitch::video::CMaterial ***)(a1 + 104);
      v62 = a4;
      v61 = a2;
      if ( v30 == v31 )
      {
        std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
          (_DWORD *)(a1 + 96),
          (int)v30,
          &v61,
          (int)v72,
          1u,
          1u);
      }
      else
      {
        *v30 = a2;
        v30[1] = (glitch::video::CMaterial *)v62;
        *(_DWORD *)(a1 + 100) += 8;
      }
      goto LABEL_26;
    case 7:
      v32 = *(glitch::video::CMaterial ***)(a1 + 52);
      v33 = *(glitch::video::CMaterial ***)(a1 + 56);
      v60 = a4;
      v59 = a2;
      if ( v32 == v33 )
      {
        std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
          (_DWORD *)(a1 + 48),
          (int)v32,
          &v59,
          (int)v71,
          1u,
          1u);
      }
      else
      {
        *v32 = a2;
        v32[1] = (glitch::video::CMaterial *)v60;
        *(_DWORD *)(a1 + 52) += 8;
      }
      goto LABEL_26;
    case 8:
      if ( *(_BYTE *)(a1 + 650) )
      {
        v9 = *a3;
        v10 = a1 + 120;
        if ( *a3 )
        {
          ++*(_DWORD *)v9;
          v48 = a2;
          v49 = a4;
          v50 = v9;
          ++*(_DWORD *)v9;
        }
        else
        {
          v48 = a2;
          v49 = a4;
          v50 = nullptr;
        }
        if ( a7 == 0x7FFFFFFF )
          v51 = (*(int (__fastcall **)(glitch::video::CMaterial *))(*(_DWORD *)v48 + 216))(v48);
        else
          v51 = a7;
        std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
          v10,
          (int)&v48);
        v11 = v50;
        if ( v50 )
        {
          if ( (*(_DWORD *)v50)-- == 1 )
          {
            glitch::video::CMaterial::~CMaterial(v11);
            LC_API_FREE_0(v11);
          }
        }
        if ( v9 )
          glitch::intrusive_ptr_release(v9);
      }
      else
      {
        v36 = *a3;
        v37 = a1 + 132;
        v70 = v36;
        if ( v36 )
          ++*(_DWORD *)v36;
        glitch::scene::CSceneManager::STransparentNodeEntry::STransparentNodeEntry(
          v42,
          (int)a2,
          (float *)(a1 + 232),
          &v70,
          a4,
          a6,
          a7);
        std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
          v37,
          (int)v42);
        if ( v43 )
          glitch::intrusive_ptr_release(v43);
        if ( v70 )
          glitch::intrusive_ptr_release(v70);
      }
      goto LABEL_26;
    default:
LABEL_15:
      ++dword_9F687C;
      ++`anonymous namespace'::Stats;
      return 0;
  }
}


// ===== 58f98c std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<uint const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<uint const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<uint const,glitch::scene::SBatchConfig>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<unsigned int const,glitch::scene::SBatchConfig>>>::_M_erase(
        int a1,
        _DWORD *a2)
{
  _DWORD *v2; // r4
  glitch::IReferenceCounted *v4; // r0
  _DWORD *v5; // r5
  glitch::video::CMaterial *v6; // r7

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<unsigned int const,glitch::scene::SBatchConfig>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (glitch::IReferenceCounted *)v2[15];
      v5 = (_DWORD *)v2[2];
      if ( v4 )
        glitch::IReferenceCounted::drop(v4);
      v6 = (glitch::video::CMaterial *)v2[5];
      if ( v6 )
      {
        if ( (*(_DWORD *)v6)-- == 1 )
        {
          glitch::video::CMaterial::~CMaterial(v6);
          LC_API_FREE_0(v6);
        }
      }
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x40u);
      v2 = v5;
    }
    while ( v5 );
  }
}


// ===== 58fa04 glitch::scene::SDefaultEndOfBatchCallback::~SDefaultEndOfBatchCallback() =====
void __fastcall glitch::scene::SDefaultEndOfBatchCallback::~SDefaultEndOfBatchCallback(
        glitch::scene::SDefaultEndOfBatchCallback *this)
{
  int v1; // r1
  char *v3; // r5

  v1 = *((_DWORD *)this + 9);
  *(_DWORD *)this = off_9762B8;
  if ( v1 )
  {
    v3 = (char *)this + 20;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<unsigned int const,glitch::scene::SBatchConfig>>>::_M_erase(
      (int)this + 20,
      *((_DWORD **)this + 6));
    *((_DWORD *)this + 8) = v3;
    *((_DWORD *)this + 9) = 0;
    *((_DWORD *)this + 7) = v3;
    *((_DWORD *)this + 6) = 0;
  }
}


// ===== 58fa64 glitch::scene::SDefaultEndOfBatchCallback::~SDefaultEndOfBatchCallback() =====
void __fastcall glitch::scene::SDefaultEndOfBatchCallback::~SDefaultEndOfBatchCallback(
        glitch::scene::SDefaultEndOfBatchCallback *this)
{
  int v1; // r1
  char *v3; // r5

  v1 = *((_DWORD *)this + 9);
  *(_DWORD *)this = off_9762B8;
  if ( v1 )
  {
    v3 = (char *)this + 20;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<unsigned int const,glitch::scene::SBatchConfig>>>::_M_erase(
      (int)this + 20,
      *((_DWORD **)this + 6));
    *((_DWORD *)this + 8) = v3;
    *((_DWORD *)this + 9) = 0;
    *((_DWORD *)this + 7) = v3;
    *((_DWORD *)this + 6) = 0;
  }
  LC_API_FREE_0(this);
}


// ===== 58facc glitch::scene::CSceneManager::compileInternal(glitch::scene::ISceneNode *,glitch::scene::CBatchSceneNode *,bool,glitch::scene::ISegmentCompileCallback *,glitch::scene::ISplitSegmentChoiceCallback *) =====
glitch::scene::CBatchSceneNode *__fastcall glitch::scene::CSceneManager::compileInternal(
        int a1,
        int a2,
        glitch::scene::CBatchSceneNode *a3,
        int a4,
        int a5,
        int a6)
{
  glitch::scene::CBatchSceneNode *v6; // r5
  int v10; // r12
  int v11; // r0
  glitch::video::CBatchDriver *v12; // r0
  _DWORD v14[5]; // [sp+0h] [bp-44h] BYREF
  _BYTE v15[4]; // [sp+14h] [bp-30h] BYREF
  _DWORD *v16; // [sp+18h] [bp-2Ch]
  _BYTE *v17; // [sp+1Ch] [bp-28h]
  _BYTE *v18; // [sp+20h] [bp-24h]
  int v19; // [sp+24h] [bp-20h]
  _DWORD v20[6]; // [sp+2Ch] [bp-18h] BYREF

  v6 = a3;
  if ( !a3 )
  {
    v6 = (glitch::scene::CBatchSceneNode *)operator new(0x168u, 0);
    glitch::scene::CBatchSceneNode::CBatchSceneNode(v6, -1);
  }
  v10 = *(_DWORD *)(a1 + 24);
  v11 = *(_DWORD *)(a1 + 28);
  v20[0] = off_9762A0;
  v14[3] = v10;
  v20[3] = a5;
  v14[0] = off_9762B8;
  v14[4] = 4;
  v20[4] = -1;
  v18 = v15;
  v14[2] = v20;
  v17 = v15;
  v19 = 0;
  v20[1] = v6;
  v20[2] = a1;
  v14[1] = v6;
  v16 = nullptr;
  v15[0] = 0;
  *(_DWORD *)(v11 + 564) = v14;
  *(_DWORD *)(*(_DWORD *)(a1 + 28) + 568) = v20;
  *(_DWORD *)(*(_DWORD *)(a1 + 28) + 572) = a6;
  glitch::video::CBatchDriver::initBuffer(*(glitch::video::CBatchDriver **)(a1 + 28));
  (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)a1 + 64))(a1, *(_DWORD *)(a1 + 28));
  glitch::scene::CSceneManager::collectAllNodes((glitch::scene::CSceneManager *)a1, v6);
  if ( *(_BYTE *)(a1 + 650) )
  {
    (*(void (__fastcall **)(int, int))(*(_DWORD *)a1 + 48))(a1, a2);
  }
  else
  {
    *(_BYTE *)(a1 + 650) = 1;
    (*(void (__fastcall **)(int, int))(*(_DWORD *)a1 + 48))(a1, a2);
    *(_BYTE *)(a1 + 650) = 0;
  }
  (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)a1 + 72))(a1, *(_DWORD *)(a1 + 28));
  (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 28) + 508))(*(_DWORD *)(a1 + 28));
  glitch::scene::SDefaultEndOfBatchCallback::finalize(v14);
  (*(void (__fastcall **)(glitch::scene::CBatchSceneNode *, int, _DWORD))(*(_DWORD *)v6 + 252))(
    v6,
    a4,
    *(_DWORD *)(a1 + 24));
  v12 = *(glitch::video::CBatchDriver **)(a1 + 28);
  *(_DWORD *)(a1 + 20) = *(_DWORD *)(a1 + 24);
  glitch::video::CBatchDriver::releaseBuffer(v12);
  v14[0] = off_9762B8;
  if ( v19 )
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<unsigned int const,glitch::scene::SBatchConfig>>>::_M_erase(
      (int)v15,
      v16);
  return v6;
}


// ===== 58fc9c glitch::scene::CSceneManager::compile(glitch::scene::ISceneNode *,glitch::scene::CBatchSceneNode *,bool,glitch::scene::ISegmentCompileCallback *,glitch::scene::ISplitSegmentChoiceCallback *,uint) =====
glitch::scene::CBatchSceneNode *__fastcall glitch::scene::CSceneManager::compile(
        int a1,
        int a2,
        glitch::scene::CBatchSceneNode *a3,
        int a4,
        int a5,
        int a6,
        int a7)
{
  int v7; // r12

  v7 = *(_DWORD *)(a1 + 28);
  *(_BYTE *)(v7 + 608) = 1;
  *(_DWORD *)(v7 + 604) = a7;
  return glitch::scene::CSceneManager::compileInternal(a1, a2, a3, a4, a5, a6);
}


// ===== 58fccc glitch::scene::CSceneManager::compile(glitch::scene::ISceneNode *,glitch::scene::CBatchSceneNode *,bool,glitch::scene::ISegmentCompileCallback *,glitch::scene::ISplitSegmentChoiceCallback *,glitch::core::vector3d<float>) =====
glitch::scene::CBatchSceneNode *__fastcall glitch::scene::CSceneManager::compile(
        int a1,
        int a2,
        glitch::scene::CBatchSceneNode *a3,
        int a4,
        int a5,
        int a6,
        _DWORD *a7)
{
  int v7; // r12
  int v8; // r7

  v7 = *(_DWORD *)(a1 + 28);
  *(_DWORD *)(v7 + 592) = *a7;
  *(_DWORD *)(v7 + 596) = a7[1];
  v8 = a7[2];
  *(_BYTE *)(v7 + 608) = 0;
  *(_DWORD *)(v7 + 600) = v8;
  return glitch::scene::CSceneManager::compileInternal(a1, a2, a3, a4, a5, a6);
}


// ===== 58fd10 glitch::scene::CSceneManager::compileInternal(std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>> const&,glitch::scene::CBatchSceneNode *,bool,glitch::scene::ISegmentCompileCallback *,glitch::scene::ISplitSegmentChoiceCallback *) =====
glitch::scene::CBatchSceneNode *__fastcall glitch::scene::CSceneManager::compileInternal(
        int a1,
        glitch::scene::ISceneNode ***a2,
        glitch::scene::CBatchSceneNode *a3,
        int a4,
        int a5,
        int a6)
{
  glitch::scene::CBatchSceneNode *v6; // r6
  int v10; // r12
  int v11; // r0
  glitch::video::CBatchDriver *v12; // r0
  _DWORD v14[5]; // [sp+0h] [bp-44h] BYREF
  _BYTE v15[4]; // [sp+14h] [bp-30h] BYREF
  _DWORD *v16; // [sp+18h] [bp-2Ch]
  _BYTE *v17; // [sp+1Ch] [bp-28h]
  _BYTE *v18; // [sp+20h] [bp-24h]
  int v19; // [sp+24h] [bp-20h]
  _DWORD v20[6]; // [sp+2Ch] [bp-18h] BYREF

  v6 = a3;
  if ( !a3 )
  {
    v6 = (glitch::scene::CBatchSceneNode *)operator new(0x168u, 0);
    glitch::scene::CBatchSceneNode::CBatchSceneNode(v6, -1);
  }
  v10 = *(_DWORD *)(a1 + 24);
  v11 = *(_DWORD *)(a1 + 28);
  v20[0] = off_9762A0;
  v14[3] = v10;
  v20[3] = a5;
  v14[0] = off_9762B8;
  v14[4] = 4;
  v20[4] = -1;
  v18 = v15;
  v14[2] = v20;
  v17 = v15;
  v19 = 0;
  v20[1] = v6;
  v20[2] = a1;
  v14[1] = v6;
  v16 = nullptr;
  v15[0] = 0;
  *(_DWORD *)(v11 + 564) = v14;
  *(_DWORD *)(*(_DWORD *)(a1 + 28) + 568) = v20;
  *(_DWORD *)(*(_DWORD *)(a1 + 28) + 572) = a6;
  glitch::video::CBatchDriver::initBuffer(*(glitch::video::CBatchDriver **)(a1 + 28));
  (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)a1 + 64))(a1, *(_DWORD *)(a1 + 28));
  glitch::scene::CSceneManager::collectAllNodes((glitch::scene::CSceneManager *)a1, a2);
  if ( *(_BYTE *)(a1 + 650) )
  {
    (*(void (__fastcall **)(int, glitch::scene::ISceneNode ***))(*(_DWORD *)a1 + 52))(a1, a2);
  }
  else
  {
    *(_BYTE *)(a1 + 650) = 1;
    (*(void (__fastcall **)(int, glitch::scene::ISceneNode ***))(*(_DWORD *)a1 + 52))(a1, a2);
    *(_BYTE *)(a1 + 650) = 0;
  }
  (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)a1 + 72))(a1, *(_DWORD *)(a1 + 28));
  (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 28) + 508))(*(_DWORD *)(a1 + 28));
  glitch::scene::SDefaultEndOfBatchCallback::finalize(v14);
  (*(void (__fastcall **)(glitch::scene::CBatchSceneNode *, int, _DWORD))(*(_DWORD *)v6 + 252))(
    v6,
    a4,
    *(_DWORD *)(a1 + 24));
  v12 = *(glitch::video::CBatchDriver **)(a1 + 28);
  *(_DWORD *)(a1 + 20) = *(_DWORD *)(a1 + 24);
  glitch::video::CBatchDriver::releaseBuffer(v12);
  v14[0] = off_9762B8;
  if ( v19 )
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<unsigned int const,glitch::scene::SBatchConfig>>>::_M_erase(
      (int)v15,
      v16);
  return v6;
}


// ===== 58fee0 glitch::scene::CSceneManager::compile(std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>> const&,glitch::scene::CBatchSceneNode *,bool,glitch::scene::ISegmentCompileCallback *,glitch::scene::ISplitSegmentChoiceCallback *,uint) =====
glitch::scene::CBatchSceneNode *__fastcall glitch::scene::CSceneManager::compile(
        int a1,
        glitch::scene::ISceneNode ***a2,
        glitch::scene::CBatchSceneNode *a3,
        int a4,
        int a5,
        int a6,
        int a7)
{
  int v7; // r12

  v7 = *(_DWORD *)(a1 + 28);
  *(_BYTE *)(v7 + 608) = 1;
  *(_DWORD *)(v7 + 604) = a7;
  return glitch::scene::CSceneManager::compileInternal(a1, a2, a3, a4, a5, a6);
}


// ===== 58ff10 glitch::scene::CSceneManager::compile(std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>> const&,glitch::scene::CBatchSceneNode *,bool,glitch::scene::ISegmentCompileCallback *,glitch::scene::ISplitSegmentChoiceCallback *,glitch::core::vector3d<float>) =====
glitch::scene::CBatchSceneNode *__fastcall glitch::scene::CSceneManager::compile(
        int a1,
        glitch::scene::ISceneNode ***a2,
        glitch::scene::CBatchSceneNode *a3,
        int a4,
        int a5,
        int a6,
        _DWORD *a7)
{
  int v7; // r12
  int v8; // r7

  v7 = *(_DWORD *)(a1 + 28);
  *(_DWORD *)(v7 + 592) = *a7;
  *(_DWORD *)(v7 + 596) = a7[1];
  v8 = a7[2];
  *(_BYTE *)(v7 + 608) = 0;
  *(_DWORD *)(v7 + 600) = v8;
  return glitch::scene::CSceneManager::compileInternal(a1, a2, a3, a4, a5, a6);
}


// ===== 58ff54 std::map<uint,glitch::scene::SBatchConfig,std::less<uint>,std::allocator<std::pair<uint const,glitch::scene::SBatchConfig>>>::operator[]<uint>(uint const&) =====
_DWORD *__fastcall std::map<unsigned int,glitch::scene::SBatchConfig>::operator[]<unsigned int>(
        _DWORD *a1,
        unsigned int *a2)
{
  _DWORD *v2; // r4
  unsigned int v5; // r1
  _DWORD *v6; // r2
  unsigned int v7; // r3
  bool v8; // cf
  _DWORD *v9; // r3
  _DWORD *v10; // r0
  unsigned int v11; // r3
  _DWORD *v12; // r5
  glitch::video::CMaterial *v13; // r4
  bool v14; // zf
  glitch::IReferenceCounted *v15; // r0
  glitch::video::CMaterial *v16; // r4
  unsigned int v18; // [sp+4h] [bp-64h] BYREF
  glitch::video::CMaterial *v19; // [sp+8h] [bp-60h]
  int v20; // [sp+Ch] [bp-5Ch]
  int v21; // [sp+10h] [bp-58h]
  int v22; // [sp+14h] [bp-54h]
  int v23; // [sp+18h] [bp-50h]
  int v24; // [sp+1Ch] [bp-4Ch]
  int v25; // [sp+20h] [bp-48h]
  int v26; // [sp+24h] [bp-44h]
  int v27; // [sp+28h] [bp-40h]
  glitch::IReferenceCounted *v28; // [sp+30h] [bp-38h]
  glitch::video::CMaterial *v29; // [sp+34h] [bp-34h]
  int v30; // [sp+38h] [bp-30h] BYREF
  int v31; // [sp+3Ch] [bp-2Ch]
  int v32; // [sp+40h] [bp-28h]
  int v33; // [sp+44h] [bp-24h]
  int v34; // [sp+48h] [bp-20h]
  int v35; // [sp+4Ch] [bp-1Ch]
  int v36; // [sp+50h] [bp-18h]
  int v37; // [sp+54h] [bp-14h]
  glitch::IReferenceCounted *v38; // [sp+5Ch] [bp-Ch]
  _DWORD *v39; // [sp+60h] [bp-8h] BYREF
  _DWORD *v40; // [sp+64h] [bp-4h] BYREF

  v2 = (_DWORD *)a1[1];
  if ( v2 )
  {
    v5 = *a2;
    v6 = a1;
    while ( 1 )
    {
      v7 = v2[4];
      v8 = v7 >= v5;
      if ( v7 >= v5 )
        v9 = (_DWORD *)v2[2];
      else
        v9 = (_DWORD *)v2[3];
      if ( !v8 )
        v2 = v6;
      v6 = v2;
      if ( !v9 )
        break;
      v2 = v9;
    }
  }
  else
  {
    v2 = a1;
  }
  if ( a1 == v2 || (v10 = v2, *a2 < v2[4]) )
  {
    v37 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v29 = nullptr;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v38 = nullptr;
    glitch::video::detail::renderpass::SRenderState::SRenderState((int)&v30);
    v11 = *a2;
    v38 = nullptr;
    v18 = v11;
    v19 = nullptr;
    v20 = v30;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    v28 = nullptr;
    v24 = v34;
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v39 = v2;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<unsigned int const,glitch::scene::SBatchConfig>>>::insert_unique(
      &v40,
      a1,
      &v39,
      &v18);
    v12 = v40;
    if ( v28 )
      glitch::IReferenceCounted::drop(v28);
    v13 = v19;
    if ( v19 && (v14 = *(_DWORD *)v19 == 1, --*(_DWORD *)v19, v14) )
    {
      glitch::video::CMaterial::~CMaterial(v13);
      LC_API_FREE_0(v13);
      v15 = v38;
      if ( !v38 )
        goto LABEL_19;
    }
    else
    {
      v15 = v38;
      if ( !v38 )
      {
LABEL_19:
        v16 = v29;
        if ( v29 && (v14 = *(_DWORD *)v29 == 1, --*(_DWORD *)v29, v14) )
        {
          glitch::video::CMaterial::~CMaterial(v16);
          LC_API_FREE_0(v16);
          v10 = v12;
        }
        else
        {
          v10 = v12;
        }
        return v10 + 5;
      }
    }
    glitch::IReferenceCounted::drop(v15);
    goto LABEL_19;
  }
  return v10 + 5;
}


// ===== 59013c glitch::scene::SDefaultEndOfBatchCallback::operator()(glitch::scene::CAppendMeshBuffer const&,boost::intrusive_ptr<glitch::video::CMaterial> const&) =====
glitch::IReferenceCounted *__fastcall glitch::scene::SDefaultEndOfBatchCallback::operator()(
        _DWORD *a1,
        glitch::scene::CAppendMeshBuffer *a2,
        glitch::video::CMaterial **a3)
{
  int v4; // r1
  int v7; // r10
  size_t v8; // r11
  void (__fastcall *v9)(glitch::IReferenceCounted **, int, _DWORD, char *, size_t, void *, int); // r6
  void *v10; // r0
  int v11; // r10
  size_t v12; // r11
  void (__fastcall *v13)(glitch::IReferenceCounted **, int, int, int, size_t, void *, int); // r6
  void *v14; // r0
  void *v15; // r8
  void *v16; // r6
  glitch::IReferenceCounted *v17; // r6
  char v18; // r3
  glitch::IReferenceCounted *v19; // r6
  char v20; // r3
  glitch::IReferenceCounted *v21; // r6
  int v22; // r10
  glitch::IReferenceCounted *v23; // r0
  glitch::IReferenceCounted *v24; // r0
  glitch::video::CVertexStreams *v25; // r3
  glitch::IReferenceCounted *v26; // r4
  int v27; // r3
  char *v28; // r3
  glitch::video::CMaterial *v29; // r3
  glitch::video::CMaterial *v30; // r11
  bool v31; // zf
  glitch::video::CMaterial *v32; // r11
  int v33; // r10
  int *v34; // r12
  int v35; // r0
  int v36; // r1
  int v37; // r2
  int v38; // r3
  int v39; // r1
  int v40; // r2
  int v41; // r3
  glitch::IReferenceCounted *v42; // r0
  _DWORD *v43; // r0
  glitch::video::CMaterial *v44; // r7
  glitch::video::CVertexStreams *v45; // r4
  glitch::IReferenceCounted *result; // r0
  char *v47; // [sp+14h] [bp-68h]
  char *v48; // [sp+14h] [bp-68h]
  int v49; // [sp+18h] [bp-64h]
  glitch::video::CMaterial *v50; // [sp+20h] [bp-5Ch] BYREF
  _DWORD v51[9]; // [sp+24h] [bp-58h] BYREF
  glitch::IReferenceCounted *v52; // [sp+48h] [bp-34h]
  glitch::video::CMaterial *v53; // [sp+4Ch] [bp-30h] BYREF
  glitch::video::CVertexStreams *v54; // [sp+50h] [bp-2Ch] BYREF
  glitch::IReferenceCounted *v55; // [sp+54h] [bp-28h] BYREF
  glitch::IReferenceCounted *v56; // [sp+58h] [bp-24h] BYREF
  _BYTE v57[20]; // [sp+5Ch] [bp-20h] BYREF
  void *p; // [sp+70h] [bp-Ch]

  v4 = *((_DWORD *)a2 + 15);
  if ( v4 > g_bigV )
    g_bigV = v4;
  if ( *((_DWORD *)a2 + 17) > g_bigI )
    g_bigI = *((_DWORD *)a2 + 17);
  puts("-------------------------------------------------------");
  printf("VERTEX: %d INDEX: %d\n", g_bigV, g_bigI);
  v7 = a1[3];
  v8 = *((_DWORD *)a2 + 15);
  v9 = *(void (__fastcall **)(glitch::IReferenceCounted **, int, _DWORD, char *, size_t, void *, int))(*(_DWORD *)v7 + 120);
  v47 = (char *)a1[4];
  v10 = operator new[](v8, 0);
  v9(&v56, v7, 0, v47, v8, v10, 1);
  v11 = a1[3];
  v12 = *((_DWORD *)a2 + 17);
  v13 = *(void (__fastcall **)(glitch::IReferenceCounted **, int, int, int, size_t, void *, int))(*(_DWORD *)v11 + 120);
  v14 = operator new[](v12, 0);
  v13(&v55, v11, 1, 4, v12, v14, 1);
  v15 = (void *)glitch::video::IBuffer::map(v56, 4);
  v16 = (void *)glitch::video::IBuffer::map(v55, 4);
  glitch::scene::CAppendMeshBuffer::copyVertexData(a2, v15);
  glitch::scene::CAppendMeshBuffer::copyIndexData(a2, v16);
  v17 = v56;
  v18 = *((_BYTE *)v56 + 19);
  if ( (v18 & 0x1Fu) <= 1 )
  {
    if ( (*((_BYTE *)v56 + 18) & 0x20) != 0 )
      (*(void (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v56 + 24))(v56);
    *((_BYTE *)v17 + 19) = 0;
  }
  else
  {
    *((_BYTE *)v56 + 19) = ((v18 & 0x1F) - 1) | v18 & 0xE0;
  }
  v19 = v55;
  v20 = *((_BYTE *)v55 + 19);
  if ( (v20 & 0x1Fu) <= 1 )
  {
    if ( (*((_BYTE *)v55 + 18) & 0x20) != 0 )
      (*(void (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v55 + 24))(v55);
    *((_BYTE *)v19 + 19) = 0;
  }
  else
  {
    *((_BYTE *)v55 + 19) = ((v20 & 0x1F) - 1) | v20 & 0xE0;
  }
  glitch::scene::CAppendMeshBuffer::allocateConfiguredVertexStreams((glitch::video::CVertexStreams *)&v54, a2, &v56);
  v49 = *((_DWORD *)a2 + 17) / *((_DWORD *)a2 + 19);
  v21 = v55;
  v22 = *((_DWORD *)a2 + 15) / *((_DWORD *)a2 + 18);
  if ( v55 )
  {
    v23 = v55;
    *((_DWORD *)v55 + 1) += 2;
    glitch::IReferenceCounted::drop(v23);
  }
  v24 = (glitch::IReferenceCounted *)operator new(0x38u, 0);
  *((_DWORD *)v24 + 1) = 0;
  *((_DWORD *)v24 + 4) = 0;
  *((_DWORD *)v24 + 2) = 0;
  *(_DWORD *)v24 = off_988098;
  *((_DWORD *)v24 + 3) = 0;
  v25 = v54;
  v26 = v24;
  *((_DWORD *)v24 + 5) = v54;
  if ( v25 )
    ++*(_DWORD *)v25;
  *((_DWORD *)v24 + 6) = v21;
  if ( v21 )
    ++*((_DWORD *)v21 + 1);
  v27 = *((_DWORD *)v24 + 1);
  *((_WORD *)v24 + 22) = 1;
  *((_DWORD *)v24 + 1) = v27 + 1;
  *((_DWORD *)v24 + 8) = v49;
  *((_DWORD *)v24 + 10) = v22;
  *((_DWORD *)v24 + 7) = 0;
  *((_DWORD *)v24 + 9) = 0;
  *((_WORD *)v24 + 23) = 6;
  *((_DWORD *)v24 + 12) = 0;
  *((_BYTE *)v24 + 52) = 0;
  v50 = nullptr;
  glitch::video::detail::renderpass::SRenderState::SRenderState((int)v51);
  v28 = (char *)*a3;
  v52 = nullptr;
  v48 = v28;
  glitch::core::randomString((glitch::core *)v57, 14);
  glitch::video::CMaterial::clone((glitch::video::CMaterial *)&v53, v48);
  v29 = v53;
  if ( v53 )
    ++*(_DWORD *)v53;
  v30 = v50;
  v50 = v29;
  if ( v30 )
  {
    v31 = (*(_DWORD *)v30)-- == 1;
    if ( v31 )
    {
      glitch::video::CMaterial::~CMaterial(v30);
      LC_API_FREE_0(v30);
    }
  }
  v32 = v53;
  if ( v53 )
  {
    v31 = (*(_DWORD *)v53)-- == 1;
    if ( v31 )
    {
      glitch::video::CMaterial::~CMaterial(v32);
      LC_API_FREE_0(v32);
    }
  }
  if ( p != v57 && p )
    GlitchFree(p);
  v33 = *((_DWORD *)*a3 + 1);
  v34 = *(int **)(*(_DWORD *)(v33 + 24) + 12 * glitch::video::CMaterial::getTechnique(*a3) + 8);
  v35 = *v34;
  v36 = v34[1];
  v37 = v34[2];
  v38 = v34[3];
  v34 += 4;
  v51[0] = v35;
  v51[1] = v36;
  v51[2] = v37;
  v51[3] = v38;
  v39 = v34[1];
  v40 = v34[2];
  v41 = v34[3];
  v51[4] = *v34;
  v51[5] = v39;
  v51[6] = v40;
  v51[7] = v41;
  glitch::video::CMaterial::getTechnique(*a3);
  ++*((_DWORD *)v26 + 1);
  v42 = v52;
  v52 = v26;
  if ( v42 )
    glitch::IReferenceCounted::drop(v42);
  v43 = std::map<unsigned int,glitch::scene::SBatchConfig>::operator[]<unsigned int>(
          a1 + 5,
          (unsigned int *)(a1[2] + 16));
  glitch::scene::SBatchConfig::operator=((int)v43, (int)&v50);
  *(_DWORD *)(a1[2] + 16) = -1;
  if ( v52 )
    glitch::IReferenceCounted::drop(v52);
  v44 = v50;
  if ( v50 )
  {
    v31 = (*(_DWORD *)v50)-- == 1;
    if ( v31 )
    {
      glitch::video::CMaterial::~CMaterial(v44);
      LC_API_FREE_0(v44);
    }
  }
  glitch::IReferenceCounted::drop(v26);
  if ( v21 )
    glitch::IReferenceCounted::drop(v21);
  v45 = v54;
  if ( v54 )
  {
    v31 = (*(_DWORD *)v54)-- == 1;
    if ( v31 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v45);
      LC_API_FREE_0(v45);
    }
  }
  if ( v55 )
    glitch::IReferenceCounted::drop(v55);
  result = v56;
  if ( v56 )
    return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v56);
  return result;
}


// ===== 590660 glitch::scene::CSceneManager::renderLists(glitch::video::IVideoDriver *) =====
int __fastcall glitch::scene::CSceneManager::renderLists(
        glitch::scene::CSceneManager *this,
        glitch::video::IVideoDriver *a2)
{
  int v4; // r0
  int v5; // r3
  unsigned int v6; // r1
  unsigned int v7; // r1
  _DWORD *v8; // r5
  _DWORD *v9; // r12
  _DWORD *v10; // r3
  int v11; // r7
  int v12; // r7
  int v13; // r1
  int v14; // r2
  int v15; // r3
  int *v16; // r3
  int v17; // r0
  int v18; // r2
  int v19; // r1
  int v20; // r3
  int v21; // r8
  int v22; // r1
  int v23; // r0
  int v24; // r2
  int v25; // r2
  int v26; // r12
  int v27; // r0
  int v28; // r1
  int v29; // r2
  int v30; // lr
  int v31; // r3
  unsigned int v32; // r1
  bool v33; // zf
  int v34; // r5
  _DWORD *v35; // r7
  glitch::video::CMaterial *v36; // r2
  glitch::video::CMaterial *v37; // r8
  char *v38; // lr
  int v39; // r12
  int v40; // r3
  int v41; // r1
  int v42; // r2
  int v43; // r0
  int v44; // r8
  int v45; // r1
  int v46; // r2
  int v47; // r12
  int v48; // r0
  int v49; // r2
  char *v50; // r2
  int v51; // r11
  int v52; // r9
  int v53; // r0
  int v54; // r5
  int v55; // r8
  glitch::video::CMaterial *v56; // r5
  unsigned int v57; // r5
  int Technique; // r2
  int v59; // r0
  int v60; // r1
  int v61; // lr
  int v62; // r3
  unsigned int v63; // r1
  int v64; // r2
  int v65; // r5
  glitch::video::CMaterial *v66; // r2
  glitch::video::CMaterial *v67; // r7
  glitch::video::CMaterial **v68; // lr
  int v69; // r12
  glitch::video::CMaterial *v70; // r3
  glitch::video::CMaterial *v71; // r1
  glitch::video::CMaterial *v72; // r2
  int v73; // r0
  int v74; // r7
  int v75; // r8
  int v76; // r1
  int *v77; // r2
  int v78; // r12
  int v79; // r0
  int v80; // r2
  glitch::video::CMaterial **v81; // r2
  int v82; // r10
  int v83; // r8
  int v84; // r0
  int v85; // r7
  int v86; // r5
  glitch::video::CMaterial *v87; // r5
  glitch::video::CMaterial *v89[2]; // [sp+10h] [bp-94h] BYREF
  glitch::video::CMaterial *v90; // [sp+18h] [bp-8Ch]
  int v91; // [sp+1Ch] [bp-88h]
  int v92; // [sp+20h] [bp-84h]
  glitch::video::CMaterial *v93; // [sp+24h] [bp-80h] BYREF
  int v94; // [sp+28h] [bp-7Ch]
  glitch::video::CMaterial *v95; // [sp+2Ch] [bp-78h]
  int v96; // [sp+30h] [bp-74h]
  int v97; // [sp+34h] [bp-70h]
  _DWORD v98[2]; // [sp+38h] [bp-6Ch] BYREF
  glitch::video::CMaterial *v99; // [sp+40h] [bp-64h]
  int v100; // [sp+44h] [bp-60h]
  glitch::video::CMaterial *v101; // [sp+48h] [bp-5Ch] BYREF
  int v102; // [sp+4Ch] [bp-58h]
  glitch::video::CMaterial *v103; // [sp+50h] [bp-54h]
  int v104; // [sp+54h] [bp-50h]
  unsigned int v105[4]; // [sp+58h] [bp-4Ch] BYREF
  int v106; // [sp+68h] [bp-3Ch] BYREF
  int v107; // [sp+6Ch] [bp-38h]
  int v108; // [sp+70h] [bp-34h]
  int v109; // [sp+74h] [bp-30h]
  unsigned int v110[5]; // [sp+78h] [bp-2Ch] BYREF
  char v111[4]; // [sp+90h] [bp-14h] BYREF
  char v112[4]; // [sp+98h] [bp-Ch] BYREF
  char v113[8]; // [sp+9Ch] [bp-8h] BYREF

  glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(
    this,
    0,
    (const glitch::scene::ISceneNode ***)this + 15,
    1,
    0);
  glitch::video::IVideoDriver::deleteAllDynamicLights(a2);
  glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::video::SColorf>(
    *((_DWORD *)a2 + 57),
    *((unsigned __int16 *)a2 + 155),
    0,
    (char *)this + 260);
  v4 = *((_DWORD *)this + 18);
  v5 = *((_DWORD *)this + 19);
  v6 = (v5 - v4) >> 4;
  if ( v6 > 1 )
  {
    glitch::core::heapsort<glitch::scene::CSceneManager::SDistanceNodeEntry>(v4, v6);
    v4 = *((_DWORD *)this + 18);
    v5 = *((_DWORD *)this + 19);
  }
  v7 = (v5 - v4) >> 4;
  v8 = (_DWORD *)((char *)this + 72);
  if ( v7 >= *((unsigned __int16 *)a2 + 30) )
    v7 = *((unsigned __int16 *)a2 + 30);
  memset(v110, 0, 16);
  std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)this + 72,
    v7,
    v110);
  v9 = *((_DWORD **)this + 19);
  v10 = *((_DWORD **)this + 20);
  v11 = (int)v9 - *((_DWORD *)this + 18);
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v12 = v11 >> 4;
  *((_DWORD *)this + 93) = 1;
  v106 = 0;
  if ( v9 == v10 )
  {
    std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      (_DWORD *)this + 18,
      (int)v9,
      &v106,
      (int)v113,
      1u,
      1);
  }
  else
  {
    v13 = v107;
    v14 = v108;
    v15 = v109;
    *v9 = v106;
    v9[1] = v13;
    v9[2] = v14;
    v9[3] = v15;
    *((_DWORD *)this + 19) += 16;
  }
  v16 = *((int **)this + 18);
  v17 = *((_DWORD *)this + 43);
  v18 = v16[1];
  v19 = *((_DWORD *)this + 44);
  v20 = *v16;
  v21 = 0;
  *((_DWORD *)this + 39) = *((_DWORD *)this + 42);
  *((_DWORD *)this + 40) = v17;
  *((_DWORD *)this + 41) = v19;
  *((_DWORD *)this + 43) = v18;
  *((_DWORD *)this + 42) = v20;
  *((_DWORD *)this + 44) = 0;
  if ( v12 )
  {
    while ( 1 )
    {
      ++v21;
      v22 = *((_DWORD *)this + 43);
      v23 = *(_DWORD *)(*v8 + 16 * v21 + 4);
      v24 = *((_DWORD *)this + 44);
      *((_DWORD *)this + 42) = *(_DWORD *)(*v8 + 16 * v21);
      *((_DWORD *)this + 43) = v23;
      *((_DWORD *)this + 41) = v24;
      *((_DWORD *)this + 39) = v20;
      *((_DWORD *)this + 40) = v22;
      *((_DWORD *)this + 44) = 0;
      (*(void (__fastcall **)(int))(*(_DWORD *)v20 + 28))(v20);
      if ( v12 == v21 )
        break;
      v20 = *((_DWORD *)this + 42);
    }
    v20 = *((_DWORD *)this + 42);
  }
  v25 = *((_DWORD *)this + 19);
  v26 = *((_DWORD *)this + 43);
  v27 = *((_DWORD *)this + 44);
  v28 = *(_DWORD *)(v25 - 12);
  v29 = *(_DWORD *)(v25 - 16);
  *((_DWORD *)this + 39) = v20;
  *((_DWORD *)this + 40) = v26;
  *((_DWORD *)this + 41) = v27;
  *((_DWORD *)this + 42) = v29;
  *((_DWORD *)this + 43) = v28;
  *((_DWORD *)this + 44) = 0;
  memset(v105, 0, sizeof(v105));
  std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)this + 72,
    0,
    v105);
  glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(
    this,
    2,
    (const glitch::scene::ISceneNode ***)this + 27,
    1,
    0);
  v30 = *((_DWORD *)this + 30);
  v31 = *((_DWORD *)this + 31);
  v32 = (v31 - v30) >> 4;
  if ( v32 > 1 )
  {
    glitch::core::heapsort<glitch::scene::CSceneManager::SDefaultNodeEntry>(
      *((glitch::video::CMaterial ***)this + 30),
      v32);
    v30 = *((_DWORD *)this + 30);
    v31 = *((_DWORD *)this + 31);
  }
  v33 = v31 == *((_DWORD *)this + 32);
  *((_DWORD *)this + 93) = 4;
  v34 = (v31 - v30) >> 4;
  v101 = nullptr;
  v102 = 0;
  v103 = nullptr;
  v104 = 0;
  v35 = (_DWORD *)((char *)this + 120);
  if ( v33 )
  {
    std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      (glitch::video::CMaterial ***)this + 30,
      (char *)v31,
      &v101,
      (int)v112,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v31 = 0;
    *(_DWORD *)(v31 + 4) = v102;
    v36 = v103;
    *(_DWORD *)(v31 + 8) = v103;
    if ( v36 )
      ++*(_DWORD *)v36;
    *(_DWORD *)(v31 + 12) = v104;
    *((_DWORD *)this + 31) += 16;
  }
  v37 = v103;
  if ( v103 )
  {
    v33 = (*(_DWORD *)v103)-- == 1;
    if ( v33 )
    {
      glitch::video::CMaterial::~CMaterial(v37);
      LC_API_FREE_0(v37);
    }
  }
  v38 = *((char **)this + 30);
  v39 = *((_DWORD *)this + 43);
  v40 = *(_DWORD *)v38;
  v41 = *((_DWORD *)v38 + 1);
  v42 = *((_DWORD *)v38 + 3);
  v43 = *((_DWORD *)this + 44);
  *((_DWORD *)this + 39) = *((_DWORD *)this + 42);
  *((_DWORD *)this + 40) = v39;
  *((_DWORD *)this + 41) = v43;
  *((_DWORD *)this + 43) = v41;
  *((_DWORD *)this + 44) = v42;
  *((_DWORD *)this + 42) = v40;
  if ( v34 )
  {
    v44 = 0;
    while ( 1 )
    {
      ++v44;
      v45 = *((_DWORD *)this + 43);
      v46 = *v35 + 16 * v44;
      v47 = *(_DWORD *)(v46 + 4);
      v48 = *(_DWORD *)(v46 + 12);
      v49 = *((_DWORD *)this + 44);
      *((_DWORD *)this + 42) = *(_DWORD *)(*v35 + 16 * v44);
      *((_DWORD *)this + 44) = v48;
      *((_DWORD *)this + 43) = v47;
      *((_DWORD *)this + 41) = v49;
      *((_DWORD *)this + 39) = v40;
      *((_DWORD *)this + 40) = v45;
      (*(void (__fastcall **)(int))(*(_DWORD *)v40 + 28))(v40);
      if ( v34 == v44 )
        break;
      v40 = *((_DWORD *)this + 42);
    }
    v40 = *((_DWORD *)this + 42);
    v38 = *((char **)this + 30);
  }
  v50 = *((char **)this + 31);
  v51 = *((_DWORD *)this + 43);
  v52 = *((_DWORD *)this + 44);
  v53 = *((_DWORD *)v50 - 1);
  v54 = *((_DWORD *)v50 - 3);
  v55 = *((_DWORD *)v50 - 4);
  *((_DWORD *)this + 39) = v40;
  *((_DWORD *)this + 40) = v51;
  *((_DWORD *)this + 41) = v52;
  *((_DWORD *)this + 42) = v55;
  *((_DWORD *)this + 43) = v54;
  *((_DWORD *)this + 44) = v53;
  v100 = 0;
  v98[0] = 0;
  v98[1] = 0;
  v99 = nullptr;
  if ( (v50 - v38) >> 4 )
  {
    if ( v50 == v38 )
      goto LABEL_33;
    std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 120,
      v38,
      v50);
    v56 = v99;
  }
  else
  {
    std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      (int)this + 120,
      v50,
      (v50 - v38) >> 4,
      (glitch::video::CMaterial *)v98);
    v56 = v99;
  }
  if ( v56 )
  {
    v33 = (*(_DWORD *)v56)-- == 1;
    if ( v33 )
    {
      glitch::video::CMaterial::~CMaterial(v56);
      LC_API_FREE_0(v56);
    }
  }
LABEL_33:
  v57 = (unsigned __int8)((unsigned int)(*((_DWORD *)this + 22) - *((_DWORD *)this + 21)) >> 3);
  (*(void (__fastcall **)(glitch::video::IVideoDriver *, _DWORD, _DWORD))(*(_DWORD *)a2 + 212))(a2, 0, 0);
  if ( v57 <= 1 )
  {
    glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(
      this,
      5,
      (char **)this + 21);
    (*(void (__fastcall **)(glitch::video::IVideoDriver *, int, int))(*(_DWORD *)a2 + 212))(a2, 1, 1);
    if ( !v57 )
      goto LABEL_39;
  }
  else
  {
    glitch::core::heapsort<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(
      *((_DWORD *)this + 21),
      (*((_DWORD *)this + 22) - *((_DWORD *)this + 21)) >> 3);
    glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(
      this,
      5,
      (char **)this + 21);
    (*(void (__fastcall **)(glitch::video::IVideoDriver *, int, int))(*(_DWORD *)a2 + 212))(a2, 1, 1);
  }
  *(_BYTE *)(glitch::scene::IShadowVolumeSceneNode::Material + 8) = glitch::scene::IShadowVolumeSceneNode::TechniqueDraw;
  if ( glitch::scene::IShadowVolumeSceneNode::Material )
    Technique = glitch::video::CMaterial::getTechnique((glitch::video::CMaterial *)glitch::scene::IShadowVolumeSceneNode::Material);
  else
    Technique = 255;
  glitch::video::IVideoDriver::setMaterial(a2, &glitch::scene::IShadowVolumeSceneNode::Material, Technique, 0);
  glitch::video::IVideoDriver::drawFullScreenQuad(a2, (char *)this + 244);
LABEL_39:
  v59 = *((_DWORD *)this + 24);
  v60 = (*((_DWORD *)this + 25) - v59) >> 3;
  if ( (unsigned __int8)v60 > 1u )
    glitch::core::heapsort<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(v59, v60);
  glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(
    this,
    6,
    (char **)this + 24);
  v61 = *((_DWORD *)this + 33);
  v62 = *((_DWORD *)this + 34);
  v63 = -858993459 * ((v62 - v61) >> 2);
  if ( v63 > 1 )
  {
    glitch::core::heapsort<glitch::scene::CSceneManager::STransparentNodeEntry>(
      *((glitch::video::CMaterial ***)this + 33),
      v63);
    v61 = *((_DWORD *)this + 33);
    v62 = *((_DWORD *)this + 34);
  }
  v64 = *((_DWORD *)this + 35);
  *((_DWORD *)this + 93) = 8;
  v65 = -858993459 * ((v62 - v61) >> 2);
  v97 = 0;
  v93 = nullptr;
  v94 = 0;
  v95 = nullptr;
  v96 = 0;
  if ( v62 == v64 )
  {
    std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      (glitch::video::CMaterial ***)this + 33,
      (glitch::video::CMaterial **)v62,
      &v93,
      (int)v111,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v62 = 0;
    *(_DWORD *)(v62 + 4) = v94;
    v66 = v95;
    *(_DWORD *)(v62 + 8) = v95;
    if ( v66 )
      ++*(_DWORD *)v66;
    *(_DWORD *)(v62 + 12) = v96;
    *(_DWORD *)(v62 + 16) = v97;
    *((_DWORD *)this + 34) += 20;
  }
  v67 = v95;
  if ( v95 )
  {
    v33 = (*(_DWORD *)v95)-- == 1;
    if ( v33 )
    {
      glitch::video::CMaterial::~CMaterial(v67);
      LC_API_FREE_0(v67);
    }
  }
  v68 = *((glitch::video::CMaterial ***)this + 33);
  v69 = *((_DWORD *)this + 43);
  v70 = *v68;
  v71 = v68[1];
  v72 = v68[3];
  v73 = *((_DWORD *)this + 44);
  *((_DWORD *)this + 39) = *((_DWORD *)this + 42);
  *((_DWORD *)this + 40) = v69;
  *((_DWORD *)this + 41) = v73;
  *((_DWORD *)this + 43) = v71;
  *((_DWORD *)this + 44) = v72;
  *((_DWORD *)this + 42) = v70;
  if ( v65 )
  {
    v74 = 20;
    v75 = 0;
    while ( 1 )
    {
      v76 = *((_DWORD *)this + 43);
      v77 = (int *)(*((_DWORD *)this + 33) + v74);
      v78 = *v77;
      v79 = v77[3];
      v80 = v77[1];
      *((_DWORD *)this + 41) = *((_DWORD *)this + 44);
      *((_DWORD *)this + 44) = v79;
      *((_DWORD *)this + 42) = v78;
      *((_DWORD *)this + 43) = v80;
      *((_DWORD *)this + 39) = v70;
      *((_DWORD *)this + 40) = v76;
      ++v75;
      (*(void (__fastcall **)(glitch::video::CMaterial *))(*(_DWORD *)v70 + 28))(v70);
      v74 += 20;
      if ( v65 == v75 )
        break;
      v70 = *((glitch::video::CMaterial **)this + 42);
    }
    v70 = *((glitch::video::CMaterial **)this + 42);
    v68 = *((glitch::video::CMaterial ***)this + 33);
  }
  v81 = *((glitch::video::CMaterial ***)this + 34);
  v82 = *((_DWORD *)this + 43);
  v83 = *((_DWORD *)this + 44);
  v84 = (int)*(v81 - 2);
  v85 = (int)*(v81 - 5);
  v86 = (int)*(v81 - 4);
  *((_DWORD *)this + 39) = v70;
  *((_DWORD *)this + 40) = v82;
  *((_DWORD *)this + 41) = v83;
  *((_DWORD *)this + 42) = v85;
  *((_DWORD *)this + 43) = v86;
  *((_DWORD *)this + 44) = v84;
  v91 = 0;
  v92 = 0;
  v89[0] = nullptr;
  v89[1] = nullptr;
  v90 = nullptr;
  if ( -858993459 * (v81 - v68) )
  {
    if ( v81 == v68 )
      return glitch::scene::CSceneManager::clearDeletionList((int)this);
    std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 132,
      v68,
      v81);
    v87 = v90;
  }
  else
  {
    std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      (int *)this + 33,
      v81,
      -858993459 * (v81 - v68),
      v89);
    v87 = v90;
  }
  if ( v87 )
  {
    v33 = (*(_DWORD *)v87)-- == 1;
    if ( v33 )
    {
      glitch::video::CMaterial::~CMaterial(v87);
      LC_API_FREE_0(v87);
    }
  }
  return glitch::scene::CSceneManager::clearDeletionList((int)this);
}


// ===== 590ec0 `virtual thunk to'glitch::scene::CSceneManager::~CSceneManager() =====
void __fastcall `virtual thunk to'glitch::scene::CSceneManager::~CSceneManager(glitch::scene::CSceneManager *this)
{
  glitch::scene::CSceneManager::~CSceneManager((glitch::scene::CSceneManager *)((char *)this
                                                                              + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 590ed0 `virtual thunk to'glitch::scene::CSceneManager::~CSceneManager() =====
void __fastcall `virtual thunk to'glitch::scene::CSceneManager::~CSceneManager(glitch::scene::CSceneManager *this)
{
  glitch::scene::CSceneManager::~CSceneManager((glitch::scene::CSceneManager *)((char *)this
                                                                              + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 590ee0 `virtual thunk to'glitch::scene::CSceneManager::~CSceneManager() =====
void __fastcall `virtual thunk to'glitch::scene::CSceneManager::~CSceneManager(glitch::scene::CSceneManager *this)
{
  glitch::scene::CSceneManager::~CSceneManager((glitch::scene::CSceneManager *)((char *)this
                                                                              + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 590ef0 `virtual thunk to'glitch::scene::CSceneManager::~CSceneManager() =====
void __fastcall `virtual thunk to'glitch::scene::CSceneManager::~CSceneManager(glitch::scene::CSceneManager *this)
{
  glitch::scene::CSceneManager::~CSceneManager((glitch::scene::CSceneManager *)((char *)this
                                                                              + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 590f00 `virtual thunk to'glitch::scene::CSceneManager::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::scene::CSceneManager::deserializeAttributes(_DWORD *a1, int a2)
{
  return glitch::scene::CSceneManager::deserializeAttributes((int)a1 + *(_DWORD *)(*a1 - 20), a2);
}


// ===== 590f10 `virtual thunk to'glitch::scene::CSceneManager::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::scene::CSceneManager::serializeAttributes(_DWORD *a1, int a2)
{
  return glitch::scene::CSceneManager::serializeAttributes((int)a1 + *(_DWORD *)(*a1 - 16), a2);
}


// ===== 590f20 glitch::scene::CTriangleSelector::getTriangleCount(void) =====
int __fastcall glitch::scene::CTriangleSelector::getTriangleCount(glitch::scene::CTriangleSelector *this)
{
  return 954437177 * ((*((_DWORD *)this + 4) - *((_DWORD *)this + 3)) >> 2);
}


// ===== 590f50 `global constructor keyed to'.._source_glitch_scene_CTriangleSelector.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CTriangleSelector.cpp()
{
  dword_9F689C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6898 = 1056964608;
}


// ===== 590f70 glitch::scene::CTriangleSelector::~CTriangleSelector() =====
void __fastcall glitch::scene::CTriangleSelector::~CTriangleSelector(glitch::scene::CTriangleSelector *this)
{
  void *v2; // r0

  v2 = *((void **)this + 3);
  *(_DWORD *)this = off_9767F0;
  if ( v2 )
    GlitchFree(v2);
}


// ===== 590fb0 std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::core::triangle3d<float>*>(uint &,glitch::core::triangle3d<float>*,glitch::core::triangle3d<float>*) =====
_DWORD *__fastcall std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::core::triangle3d<float>*>(
        int a1,
        _DWORD *a2,
        _DWORD *a3,
        int a4)
{
  _DWORD *v4; // r4
  int v5; // r5
  _DWORD *result; // r0
  int v7; // r5
  _DWORD *i; // r3
  int v9; // r2

  v4 = a3;
  v5 = a4 - (_DWORD)a3;
  result = GlitchAlloc(36 * *a2, 0);
  v7 = 954437177 * (v5 >> 2);
  if ( v7 > 0 )
  {
    for ( i = result; ; i += 9 )
    {
      --v7;
      *i = *v4;
      i[1] = v4[1];
      i[2] = v4[2];
      i[3] = v4[3];
      i[4] = v4[4];
      i[5] = v4[5];
      i[6] = v4[6];
      i[7] = v4[7];
      v9 = v4[8];
      v4 += 9;
      i[8] = v9;
      if ( !v7 )
        break;
    }
  }
  return result;
}


// ===== 591060 std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::reserve(uint) =====
void __fastcall std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
        _DWORD *a1,
        unsigned int a2)
{
  char *v3; // r2
  int v4; // r0
  int v5; // r3
  int v6; // r5
  char *v7; // r6
  char *v8; // r0
  char *v9; // r3
  unsigned int v10; // [sp+4h] [bp-4h] BYREF

  v3 = (char *)*a1;
  v4 = (a1[2] - *a1) >> 2;
  v10 = a2;
  if ( a2 > 954437177 * v4 )
  {
    if ( a2 > 0x71C71C7 )
    {
      __ZSt24__stl_throw_length_errorPKc_veneer("vector");
      v3 = (char *)*a1;
    }
    v5 = a1[1];
    v6 = 954437177 * ((v5 - (int)v3) >> 2);
    if ( v3 )
    {
      v7 = (char *)std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::core::triangle3d<float>*>(
                     (int)a1,
                     &v10,
                     v3,
                     v5);
      v8 = (char *)a1[1];
      if ( v8 != (char *)*a1 )
        v8 += -36 * ((954437177 * ((unsigned int)&v8[-*a1 - 36] >> 2)) & 0x3FFFFFFF) - 36;
      GlitchFree(v8);
    }
    else
    {
      v7 = (char *)GlitchAlloc(36 * v10, 0);
    }
    v9 = &v7[36 * v10];
    a1[1] = &v7[36 * v6];
    a1[2] = v9;
    *a1 = v7;
  }
}


// ===== 5911a0 glitch::video::CPrimitiveStream::SMapBuffer<ushort const>::reset(glitch::video::CPrimitiveStream const&,glitch::video::E_BUFFER_READ_MAP_ACCESS) [clone] =====
int __fastcall glitch::video::CPrimitiveStream::SMapBuffer<unsigned short const>::reset(_DWORD **a1, _DWORD *a2)
{
  _BYTE *v4; // r6
  char v5; // r3
  int result; // r0

  if ( a1[1] )
  {
    v4 = (_BYTE *)**a1;
    v5 = v4[19];
    if ( (v5 & 0x1Fu) <= 1 )
    {
      if ( (v4[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 24))(**a1);
      v4[19] = 0;
    }
    else
    {
      v4[19] = ((v5 & 0x1F) - 1) | v5 & 0xE0;
    }
    a1[1] = nullptr;
    *a1 = nullptr;
  }
  *a1 = a2;
  result = glitch::video::IBuffer::map(*a2, 1);
  a1[1] = (_DWORD *)(result + a2[1]);
  return result;
}


// ===== 591238 std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::core::triangle3d<float>*,glitch::core::triangle3d<float> const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        _DWORD *a1,
        int a2,
        _DWORD *a3)
{
  unsigned int v6; // r0
  unsigned int v7; // r2
  size_t v8; // r7
  _DWORD *v9; // r0
  char *v10; // r3
  _DWORD *v11; // r8
  int v12; // r2
  int v13; // r5
  _DWORD *v14; // r3
  int v15; // r1
  _DWORD *v16; // r2
  int v17; // r0
  _DWORD *v18; // r5
  char *v19; // r0

  v6 = 954437177 * ((a1[1] - *a1) >> 2);
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 <= 0x71C71C7 && v6 <= v7 )
    v8 = 9 * v7;
  else
    v8 = -1;
  v9 = GlitchAlloc(v8 * 4, 0);
  v10 = (char *)*a1;
  v11 = v9;
  v12 = (a2 - *a1) >> 2;
  v13 = 954437177 * v12;
  if ( 954437177 * v12 > 0 )
  {
    v15 = 954437177 * v12;
    v16 = v9;
    do
    {
      --v15;
      *v16 = *(_DWORD *)v10;
      v16[1] = *((_DWORD *)v10 + 1);
      v16[2] = *((_DWORD *)v10 + 2);
      v16[3] = *((_DWORD *)v10 + 3);
      v16[4] = *((_DWORD *)v10 + 4);
      v16[5] = *((_DWORD *)v10 + 5);
      v16[6] = *((_DWORD *)v10 + 6);
      v16[7] = *((_DWORD *)v10 + 7);
      v17 = *((_DWORD *)v10 + 8);
      v10 += 36;
      v16[8] = v17;
      v16 += 9;
    }
    while ( v15 );
    v14 = &v11[9 * v13];
  }
  else
  {
    v14 = v9;
  }
  v18 = v14 + 9;
  *v14 = *a3;
  v14[1] = a3[1];
  v14[2] = a3[2];
  v14[3] = a3[3];
  v14[4] = a3[4];
  v14[5] = a3[5];
  v14[6] = a3[6];
  v14[7] = a3[7];
  v14[8] = a3[8];
  v19 = (char *)a1[1];
  if ( v19 != (char *)*a1 )
    v19 += -36 * ((954437177 * ((unsigned int)&v19[-*a1 - 36] >> 2)) & 0x3FFFFFFF) - 36;
  GlitchFree(v19);
  a1[1] = v18;
  a1[2] = &v11[v8];
  *a1 = v11;
}


// ===== 5913fc glitch::scene::CTriangleSelector::~CTriangleSelector() =====
void __fastcall glitch::scene::CTriangleSelector::~CTriangleSelector(glitch::scene::CTriangleSelector *this)
{
  void *v2; // r0

  v2 = *((void **)this + 3);
  *(_DWORD *)this = off_9767F0;
  if ( v2 )
    GlitchFree(v2);
  LC_API_FREE_0(this);
}


// ===== 591444 glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&,glitch::core::CMatrix4<float>::eConstructor) [clone] =====
_BYTE *__fastcall glitch::core::CMatrix4<float>::CMatrix4(_BYTE *a1, const void *a2)
{
  a1[64] = 0;
  memcpy(a1, a2, 0x41u);
  return a1;
}


// ===== 591464 glitch::scene::CTriangleSelector::getTriangles(glitch::core::triangle3d<float> *,int,int &,glitch::core::CMatrix4<float> const*) =====
float __fastcall glitch::scene::CTriangleSelector::getTriangles(int a1, int a2, int a3, int *a4, const void *a5)
{
  float result; // r0
  int v6; // r12
  int v7; // r3
  int v8; // r5
  int v9; // r1
  int v10; // r2
  _DWORD *v11; // r3
  int v12; // r5
  _DWORD *v13; // r2
  int v14; // r12
  int v15; // r3
  float v16; // r1
  float *v17; // r4
  float v18; // r11
  float *v19; // r3
  float v20; // r9
  float v21; // r10
  float v22; // r8
  float v23; // r7
  float v24; // r6
  float v25; // r10
  float v26; // r0
  float v27; // r6
  float v28; // r7
  _BYTE *v29; // r0
  int v31; // [sp+0h] [bp-74h]
  float v32; // [sp+4h] [bp-70h]
  float v33; // [sp+8h] [bp-6Ch]
  float v34; // [sp+Ch] [bp-68h]
  float v35; // [sp+10h] [bp-64h]
  float v36; // [sp+14h] [bp-60h]
  int v38; // [sp+1Ch] [bp-58h]
  int v39; // [sp+20h] [bp-54h]
  float v41[18]; // [sp+2Ch] [bp-48h] BYREF

  if ( a3 >= 954437177 * ((*(_DWORD *)(a1 + 16) - *(_DWORD *)(a1 + 12)) >> 2) )
    a3 = 954437177 * ((*(_DWORD *)(a1 + 16) - *(_DWORD *)(a1 + 12)) >> 2);
  v38 = a3;
  result = COERCE_FLOAT(LC_API_MEMSET_0(v41, 0, 0x40u));
  v41[15] = 1.0;
  LOBYTE(v41[16]) = 1;
  v41[0] = 1.0;
  v41[5] = 1.0;
  v41[10] = 1.0;
  v6 = a1;
  if ( a5 )
  {
    result = COERCE_FLOAT(memcpy(v41, a5, 0x41u));
    v6 = a1;
  }
  v7 = *(_DWORD *)(v6 + 8);
  if ( v7 && !*(_BYTE *)(v6 + 24) )
  {
    v31 = v6;
    v29 = (_BYTE *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v7 + 56))(*(_DWORD *)(v6 + 8));
    result = COERCE_FLOAT(glitch::core::detail::CMatrix4Base<float>::multEq(v41, v29));
    v6 = v31;
  }
  v8 = LOBYTE(v41[16]);
  if ( LOBYTE(v41[16]) )
  {
    if ( v38 > 0 )
    {
      v9 = 0;
      result = 0.0;
      do
      {
        v10 = *(_DWORD *)(v6 + 12);
        v11 = (_DWORD *)(a2 + v9);
        ++LODWORD(result);
        v12 = *(_DWORD *)(v10 + v9);
        v13 = (_DWORD *)(v10 + v9);
        *(_DWORD *)(a2 + v9) = v12;
        v9 += 36;
        v11[1] = v13[1];
        v11[2] = v13[2];
        v11[3] = v13[3];
        v11[4] = v13[4];
        v11[5] = v13[5];
        v11[6] = v13[6];
        v11[7] = v13[7];
        v11[8] = v13[8];
      }
      while ( LODWORD(result) != v38 );
    }
  }
  else if ( v38 > 0 )
  {
    v39 = v6;
    v14 = LOBYTE(v41[16]);
    do
    {
      v15 = *(_DWORD *)(v39 + 12);
      v16 = v41[1];
      v17 = (float *)(a2 + v8);
      v18 = *(float *)(v15 + v8);
      v19 = (float *)(v15 + v8);
      *v17 = v18;
      v20 = v19[1];
      v17[1] = v20;
      v21 = v19[2];
      v17[2] = v21;
      v22 = v19[3];
      v17[3] = v22;
      v23 = v19[4];
      v17[4] = v23;
      v24 = v19[5];
      v17[5] = v24;
      v36 = v19[6];
      v17[6] = v36;
      v35 = v19[7];
      v17[7] = v35;
      v34 = v19[8];
      v17[8] = v34;
      v32 = (float)((float)((float)(v18 * v16) + (float)(v20 * v41[5])) + (float)(v21 * v41[9])) + v41[13];
      v33 = (float)((float)((float)(v18 * v41[2]) + (float)(v20 * v41[6])) + (float)(v21 * v41[10])) + v41[14];
      *(float *)(a2 + v8) = (float)((float)((float)(v18 * v41[0]) + (float)(v20 * v41[4])) + (float)(v21 * v41[8]))
                          + v41[12];
      v8 += 36;
      v17[1] = v32;
      v17[2] = v33;
      v25 = (float)((float)((float)(v22 * v41[2]) + (float)(v23 * v41[6])) + (float)(v24 * v41[10])) + v41[14];
      v26 = (float)((float)((float)(v22 * v41[0]) + (float)(v23 * v41[4])) + (float)(v24 * v41[8])) + v41[12];
      v17[4] = (float)((float)((float)(v22 * v41[1]) + (float)(v23 * v41[5])) + (float)(v24 * v41[9])) + v41[13];
      v17[3] = v26;
      v17[5] = v25;
      v27 = (float)((float)((float)(v36 * v41[1]) + (float)(v35 * v41[5])) + (float)(v34 * v41[9])) + v41[13];
      v28 = (float)((float)((float)(v36 * v41[2]) + (float)(v35 * v41[6])) + (float)(v34 * v41[10])) + v41[14];
      result = (float)((float)((float)(v36 * v41[0]) + (float)(v35 * v41[4])) + (float)(v34 * v41[8])) + v41[12];
      ++v14;
      v17[6] = result;
      v17[8] = v28;
      v17[7] = v27;
    }
    while ( v14 != v38 );
  }
  *a4 = v38;
  return result;
}


// ===== 5919a0 glitch::scene::CTriangleSelector::CTriangleSelector(glitch::core::aabbox3d<float> const&,glitch::scene::ISceneNode const*,bool) =====
int __fastcall glitch::scene::CTriangleSelector::CTriangleSelector(int a1, int a2, int a3, char a4)
{
  *(_DWORD *)(a1 + 8) = a3;
  *(_DWORD *)a1 = off_9767F0;
  *(_BYTE *)(a1 + 24) = a4;
  *(_DWORD *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 76) = -1082130432;
  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 1065353216;
  *(_DWORD *)(a1 + 44) = 1065353216;
  *(_DWORD *)(a1 + 48) = 1065353216;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 60) = 0;
  *(_DWORD *)(a1 + 68) = -1082130432;
  *(_DWORD *)(a1 + 72) = -1082130432;
  *(_DWORD *)(a1 + 80) = 1065353216;
  *(_DWORD *)(a1 + 84) = 1065353216;
  *(_DWORD *)(a1 + 88) = 1065353216;
  *(_BYTE *)(a1 + 156) = 0;
  LC_API_MEMSET_0((void *)(a1 + 92), 0, 0x40u);
  *(_DWORD *)(a1 + 152) = 1065353216;
  *(_BYTE *)(a1 + 156) = 1;
  *(_DWORD *)(a1 + 92) = 1065353216;
  *(_DWORD *)(a1 + 112) = 1065353216;
  *(_DWORD *)(a1 + 132) = 1065353216;
  return a1;
}


// ===== 591a60 glitch::scene::CTriangleSelector::CTriangleSelector(glitch::scene::ISceneNode const*,bool) =====
glitch::scene::CTriangleSelector *__fastcall glitch::scene::CTriangleSelector::CTriangleSelector(
        glitch::scene::CTriangleSelector *this,
        const glitch::scene::ISceneNode *a2,
        bool a3)
{
  *((_DWORD *)this + 2) = a2;
  *((_BYTE *)this + 24) = a3;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_BYTE *)this + 156) = 0;
  *(_DWORD *)this = off_9767F0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 19) = -1082130432;
  *((_DWORD *)this + 1) = 1;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 1065353216;
  *((_DWORD *)this + 11) = 1065353216;
  *((_DWORD *)this + 12) = 1065353216;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 17) = -1082130432;
  *((_DWORD *)this + 18) = -1082130432;
  *((_DWORD *)this + 20) = 1065353216;
  *((_DWORD *)this + 21) = 1065353216;
  *((_DWORD *)this + 22) = 1065353216;
  LC_API_MEMSET_0((char *)this + 92, 0, 0x40u);
  *((_DWORD *)this + 38) = 1065353216;
  *((_BYTE *)this + 156) = 1;
  *((_DWORD *)this + 23) = 1065353216;
  *((_DWORD *)this + 28) = 1065353216;
  *((_DWORD *)this + 33) = 1065353216;
  return this;
}


// ===== 591b24 glitch::scene::CTriangleSelector::CTriangleSelector(glitch::core::aabbox3d<float> const&,glitch::scene::ISceneNode const*,bool) =====
int __fastcall glitch::scene::CTriangleSelector::CTriangleSelector(int a1, int a2, int a3, char a4)
{
  *(_DWORD *)(a1 + 8) = a3;
  *(_DWORD *)a1 = off_9767F0;
  *(_BYTE *)(a1 + 24) = a4;
  *(_DWORD *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 76) = -1082130432;
  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 1065353216;
  *(_DWORD *)(a1 + 44) = 1065353216;
  *(_DWORD *)(a1 + 48) = 1065353216;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 60) = 0;
  *(_DWORD *)(a1 + 68) = -1082130432;
  *(_DWORD *)(a1 + 72) = -1082130432;
  *(_DWORD *)(a1 + 80) = 1065353216;
  *(_DWORD *)(a1 + 84) = 1065353216;
  *(_DWORD *)(a1 + 88) = 1065353216;
  *(_BYTE *)(a1 + 156) = 0;
  LC_API_MEMSET_0((void *)(a1 + 92), 0, 0x40u);
  *(_DWORD *)(a1 + 152) = 1065353216;
  *(_BYTE *)(a1 + 156) = 1;
  *(_DWORD *)(a1 + 92) = 1065353216;
  *(_DWORD *)(a1 + 112) = 1065353216;
  *(_DWORD *)(a1 + 132) = 1065353216;
  return a1;
}


// ===== 591be4 glitch::scene::CTriangleSelector::CTriangleSelector(glitch::scene::ISceneNode const*,bool) =====
glitch::scene::CTriangleSelector *__fastcall glitch::scene::CTriangleSelector::CTriangleSelector(
        glitch::scene::CTriangleSelector *this,
        const glitch::scene::ISceneNode *a2,
        bool a3)
{
  *((_DWORD *)this + 2) = a2;
  *((_BYTE *)this + 24) = a3;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_BYTE *)this + 156) = 0;
  *(_DWORD *)this = off_9767F0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 19) = -1082130432;
  *((_DWORD *)this + 1) = 1;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 1065353216;
  *((_DWORD *)this + 11) = 1065353216;
  *((_DWORD *)this + 12) = 1065353216;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 17) = -1082130432;
  *((_DWORD *)this + 18) = -1082130432;
  *((_DWORD *)this + 20) = 1065353216;
  *((_DWORD *)this + 21) = 1065353216;
  *((_DWORD *)this + 22) = 1065353216;
  LC_API_MEMSET_0((char *)this + 92, 0, 0x40u);
  *((_DWORD *)this + 38) = 1065353216;
  *((_BYTE *)this + 156) = 1;
  *((_DWORD *)this + 23) = 1065353216;
  *((_DWORD *)this + 28) = 1065353216;
  *((_DWORD *)this + 33) = 1065353216;
  return this;
}


// ===== 591ca8 glitch::scene::CTriangleSelector::getTriangles(glitch::core::triangle3d<float> *,int,int &,glitch::core::aabbox3d<float> const&,glitch::core::CMatrix4<float> const*) =====
float __fastcall glitch::scene::CTriangleSelector::getTriangles(
        int *a1,
        int a2,
        int a3,
        _DWORD *a4,
        _DWORD *a5,
        const void *a6)
{
  float result; // r0

  a1[41] = a3;
  a1[42] = 0;
  a1[40] = a2;
  glitch::scene::CTriangleSelector::Setup((int)a1, a6);
  glitch::scene::CTriangleSelector::Setup((int)a1, a5);
  result = glitch::scene::CTriangleSelector::TestWithBox((int)a1, a1 + 3);
  *a4 = a1[42];
  return result;
}


// ===== 591cf0 glitch::scene::CTriangleSelector::getTriangles(glitch::core::triangle3d<float> *,int,int &,glitch::core::line3d<float> const&,glitch::core::CMatrix4<float> const*) =====
bool __fastcall glitch::scene::CTriangleSelector::getTriangles(
        int *a1,
        int a2,
        int a3,
        _DWORD *a4,
        float *a5,
        const void *a6)
{
  _BOOL4 result; // r0

  a1[41] = a3;
  a1[42] = 0;
  a1[40] = a2;
  glitch::scene::CTriangleSelector::Setup((int)a1, a6);
  glitch::scene::CTriangleSelector::Setup((int)a1, a5);
  result = glitch::scene::CTriangleSelector::TestWithLine((_BOOL4)a1, a1 + 3);
  *a4 = a1[42];
  return result;
}


// ===== 591d38 glitch::scene::`anonymous namespace'::createTriangles<float,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(ushort const*,uint,glitch::video::SVertexStream const&,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>> &) =====
void __fastcall glitch::scene::`anonymous namespace'::createTriangles<float,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(
        unsigned __int16 *a1,
        unsigned int a2,
        int a3,
        _DWORD *a4)
{
  _DWORD *v4; // r5
  int v5; // r2
  int v9; // r8
  int v10; // r2
  _DWORD *v11; // r11
  int *v12; // r9
  _DWORD *v13; // r1
  int *v14; // r10
  int *v15; // r12
  int v16; // r0
  int v17; // r2
  int v18; // r10
  int v19; // r3
  int v20; // r12
  _BYTE *v21; // r4
  char v22; // r3
  int v23; // r3
  _DWORD *v24; // r1
  int *v25; // r2
  int *v26; // r0
  int v27; // r9
  int v28; // r12
  _DWORD *v29; // r10
  int *v30; // r3
  int v31; // r6
  int v32; // r11
  int v33; // r5
  int v34; // r2
  int v35; // r3
  int v36; // r3
  _DWORD *v37; // r1
  int *v38; // r2
  int *v39; // r0
  int v40; // r9
  int v41; // r12
  _DWORD *v42; // r10
  int *v43; // r3
  int v44; // r6
  int v45; // r11
  int v46; // r5
  int v47; // r2
  int v48; // r3
  int v49; // r2
  unsigned int v50; // r11
  _DWORD *v51; // r1
  _DWORD *v52; // r5
  int *v53; // r9
  int *v54; // r6
  int *v55; // r12
  int v56; // r0
  int v57; // r2
  int v58; // r6
  int v59; // r3
  int v60; // r12
  int v61; // r6
  int *v62; // r0
  int *v63; // r2
  _DWORD *v64; // r1
  int v65; // r9
  int v66; // r12
  _DWORD *v67; // r10
  int *v68; // r3
  int v69; // r6
  int v70; // r11
  int v71; // r5
  int v72; // r2
  int v73; // r3
  int v74; // r6
  int *v75; // r0
  int *v76; // r2
  _DWORD *v77; // r1
  int v78; // r9
  int v79; // r12
  _DWORD *v80; // r10
  int *v81; // r3
  int v82; // r6
  int v83; // r11
  int v84; // r5
  int v85; // r2
  int v86; // r3
  int v87; // [sp+4h] [bp-F0h]
  int v88; // [sp+4h] [bp-F0h]
  int v89; // [sp+4h] [bp-F0h]
  int v90; // [sp+4h] [bp-F0h]
  unsigned __int16 *v91; // [sp+Ch] [bp-E8h]
  unsigned __int16 *v92; // [sp+Ch] [bp-E8h]
  unsigned int v93; // [sp+Ch] [bp-E8h]
  unsigned int v94; // [sp+Ch] [bp-E8h]
  unsigned __int16 *v95; // [sp+10h] [bp-E4h]
  _DWORD *v96; // [sp+10h] [bp-E4h]
  _DWORD *k; // [sp+10h] [bp-E4h]
  _DWORD *j; // [sp+10h] [bp-E4h]
  _DWORD *i; // [sp+10h] [bp-E4h]
  int v100; // [sp+18h] [bp-DCh] BYREF
  int v101; // [sp+1Ch] [bp-D8h]
  int v102; // [sp+20h] [bp-D4h]
  int v103; // [sp+24h] [bp-D0h]
  int v104; // [sp+28h] [bp-CCh]
  int v105; // [sp+2Ch] [bp-C8h]
  int v106; // [sp+30h] [bp-C4h]
  int v107; // [sp+34h] [bp-C0h]
  int v108; // [sp+38h] [bp-BCh]
  int v109; // [sp+3Ch] [bp-B8h] BYREF
  int v110; // [sp+40h] [bp-B4h]
  int v111; // [sp+44h] [bp-B0h]
  int v112; // [sp+48h] [bp-ACh]
  int v113; // [sp+4Ch] [bp-A8h]
  int v114; // [sp+50h] [bp-A4h]
  int v115; // [sp+54h] [bp-A0h]
  int v116; // [sp+58h] [bp-9Ch]
  int v117; // [sp+5Ch] [bp-98h]
  int v118; // [sp+60h] [bp-94h] BYREF
  int v119; // [sp+64h] [bp-90h]
  int v120; // [sp+68h] [bp-8Ch]
  int v121; // [sp+6Ch] [bp-88h]
  int v122; // [sp+70h] [bp-84h]
  int v123; // [sp+74h] [bp-80h]
  int v124; // [sp+78h] [bp-7Ch]
  int v125; // [sp+7Ch] [bp-78h]
  int v126; // [sp+80h] [bp-74h]
  int v127; // [sp+84h] [bp-70h] BYREF
  int v128; // [sp+88h] [bp-6Ch]
  int v129; // [sp+8Ch] [bp-68h]
  int v130; // [sp+90h] [bp-64h]
  int v131; // [sp+94h] [bp-60h]
  int v132; // [sp+98h] [bp-5Ch]
  int v133; // [sp+9Ch] [bp-58h]
  int v134; // [sp+A0h] [bp-54h]
  int v135; // [sp+A4h] [bp-50h]
  int v136; // [sp+A8h] [bp-4Ch] BYREF
  int v137; // [sp+ACh] [bp-48h]
  int v138; // [sp+B0h] [bp-44h]
  int v139; // [sp+B4h] [bp-40h]
  int v140; // [sp+B8h] [bp-3Ch]
  int v141; // [sp+BCh] [bp-38h]
  int v142; // [sp+C0h] [bp-34h]
  int v143; // [sp+C4h] [bp-30h]
  int v144; // [sp+C8h] [bp-2Ch]
  int v145; // [sp+CCh] [bp-28h] BYREF
  int v146; // [sp+D0h] [bp-24h]
  int v147; // [sp+D4h] [bp-20h]
  int v148; // [sp+D8h] [bp-1Ch]
  int v149; // [sp+DCh] [bp-18h]
  int v150; // [sp+E0h] [bp-14h]
  int v151; // [sp+E4h] [bp-10h]
  int v152; // [sp+E8h] [bp-Ch]
  int v153; // [sp+ECh] [bp-8h]

  v4 = (_DWORD *)a3;
  v5 = *(unsigned __int16 *)(a3 + 12);
  switch ( v5 )
  {
    case 3:
      v9 = glitch::video::IBuffer::map(*v4, 1) + v4[1];
      if ( !a1 )
      {
        if ( a2 )
        {
          v94 = a2;
          v74 = *((unsigned __int16 *)v4 + 7);
          for ( i = v4; ; v74 = *((unsigned __int16 *)i + 7) )
          {
            v75 = (int *)(v9 + v74 * (_DWORD)(a1 + 1));
            v76 = (int *)(v9 + v74 + (_DWORD)a1 * v74);
            v77 = (_DWORD *)a4[1];
            v78 = v75[2];
            v79 = *v75;
            v90 = *v76;
            v80 = (_DWORD *)a4[2];
            v81 = (int *)(v9 + (_DWORD)a1 * v74);
            v82 = v76[2];
            v83 = v81[2];
            v84 = *v81;
            v85 = v76[1];
            v86 = v81[1];
            v128 = v75[1];
            v129 = v78;
            v130 = v90;
            v131 = v85;
            v132 = v82;
            v133 = v84;
            v134 = v86;
            v135 = v83;
            v127 = v79;
            if ( v77 == v80 )
            {
              std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
                a4,
                (int)v77,
                &v127);
            }
            else
            {
              *v77 = v79;
              v77[1] = v128;
              v77[2] = v129;
              v77[3] = v130;
              v77[4] = v131;
              v77[5] = v132;
              v77[6] = v133;
              v77[7] = v134;
              v77[8] = v135;
              a4[1] += 36;
            }
            a1 = (unsigned __int16 *)((char *)a1 + 3);
            if ( v94 <= (unsigned int)a1 )
              break;
          }
          v4 = i;
        }
        break;
      }
      v92 = &a1[a2];
      if ( a1 != v92 )
      {
        v96 = v4;
        do
        {
          v36 = *((unsigned __int16 *)v96 + 7);
          v37 = (_DWORD *)a4[1];
          v38 = (int *)(v9 + v36 * a1[1]);
          v39 = (int *)(v9 + a1[2] * v36);
          v40 = v39[2];
          v41 = *v39;
          v88 = *v38;
          v42 = (_DWORD *)a4[2];
          v43 = (int *)(v9 + v36 * *a1);
          v44 = v38[2];
          v45 = v43[2];
          v46 = *v43;
          v47 = v38[1];
          v48 = v43[1];
          v119 = v39[1];
          v120 = v40;
          v121 = v88;
          v122 = v47;
          v123 = v44;
          v124 = v46;
          v125 = v48;
          v126 = v45;
          v118 = v41;
          if ( v37 == v42 )
          {
            std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              a4,
              (int)v37,
              &v118);
          }
          else
          {
            *v37 = v41;
            v37[1] = v119;
            v37[2] = v120;
            v37[3] = v121;
            v37[4] = v122;
            v37[5] = v123;
            v37[6] = v124;
            v37[7] = v125;
            v37[8] = v126;
            a4[1] += 36;
          }
          a1 += 3;
        }
        while ( v92 != a1 );
        goto LABEL_20;
      }
      break;
    case 4:
      v9 = glitch::video::IBuffer::map(*v4, 1) + v4[1];
      if ( !a1 )
      {
        if ( a2 )
        {
          v93 = a2;
          v61 = *((unsigned __int16 *)v4 + 7);
          for ( j = v4; ; v61 = *((unsigned __int16 *)j + 7) )
          {
            v62 = (int *)(v9 + v61 * (_DWORD)(a1 + 1));
            v63 = (int *)(v9 + v61 + (_DWORD)a1 * v61);
            v64 = (_DWORD *)a4[1];
            v65 = v62[2];
            v66 = *v62;
            v89 = *v63;
            v67 = (_DWORD *)a4[2];
            v68 = (int *)(v9 + (_DWORD)a1 * v61);
            v69 = v63[2];
            v70 = v68[2];
            v71 = *v68;
            v72 = v63[1];
            v73 = v68[1];
            v110 = v62[1];
            v111 = v65;
            v112 = v89;
            v113 = v72;
            v114 = v69;
            v115 = v71;
            v116 = v73;
            v117 = v70;
            v109 = v66;
            if ( v64 == v67 )
            {
              std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
                a4,
                (int)v64,
                &v109);
            }
            else
            {
              *v64 = v66;
              v64[1] = v110;
              v64[2] = v111;
              v64[3] = v112;
              v64[4] = v113;
              v64[5] = v114;
              v64[6] = v115;
              v64[7] = v116;
              v64[8] = v117;
              a4[1] += 36;
            }
            a1 = (unsigned __int16 *)((char *)a1 + 3);
            if ( v93 <= (unsigned int)a1 )
              break;
          }
          v4 = j;
        }
        break;
      }
      v91 = &a1[a2];
      if ( a1 != v91 )
      {
        v96 = v4;
        do
        {
          v23 = *((unsigned __int16 *)v96 + 7);
          v24 = (_DWORD *)a4[1];
          v25 = (int *)(v9 + v23 * a1[1]);
          v26 = (int *)(v9 + a1[2] * v23);
          v27 = v26[2];
          v28 = *v26;
          v87 = *v25;
          v29 = (_DWORD *)a4[2];
          v30 = (int *)(v9 + v23 * *a1);
          v31 = v25[2];
          v32 = v30[2];
          v33 = *v30;
          v34 = v25[1];
          v35 = v30[1];
          v101 = v26[1];
          v102 = v27;
          v103 = v87;
          v104 = v34;
          v105 = v31;
          v106 = v33;
          v107 = v35;
          v108 = v32;
          v100 = v28;
          if ( v24 == v29 )
          {
            std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              a4,
              (int)v24,
              &v100);
          }
          else
          {
            *v24 = v28;
            v24[1] = v101;
            v24[2] = v102;
            v24[3] = v103;
            v24[4] = v104;
            v24[5] = v105;
            v24[6] = v106;
            v24[7] = v107;
            v24[8] = v108;
            a4[1] += 36;
          }
          a1 += 3;
        }
        while ( v91 != a1 );
LABEL_20:
        v4 = v96;
      }
      break;
    case 2:
      v9 = glitch::video::IBuffer::map(*v4, 1) + v4[1];
      if ( a1 )
      {
        if ( a1 != &a1[a2] )
        {
          v95 = &a1[a2];
          do
          {
            v10 = *((unsigned __int16 *)v4 + 7);
            v11 = (_DWORD *)a4[2];
            v12 = (int *)(v9 + a1[2] * v10);
            v13 = (_DWORD *)a4[1];
            v14 = (int *)(v9 + v10 * a1[1]);
            v15 = (int *)(v9 + v10 * *a1);
            v16 = *v12;
            v17 = *v14;
            v18 = v14[1];
            v19 = *v15;
            v20 = v15[1];
            v137 = v12[1];
            v139 = v17;
            v140 = v18;
            v142 = v19;
            v143 = v20;
            v138 = 0;
            v141 = 0;
            v136 = v16;
            v144 = 0;
            if ( v13 == v11 )
            {
              std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
                a4,
                (int)v13,
                &v136);
            }
            else
            {
              *v13 = v16;
              v13[1] = v137;
              v13[2] = v138;
              v13[3] = v139;
              v13[4] = v140;
              v13[5] = v141;
              v13[6] = v142;
              v13[7] = v143;
              v13[8] = v144;
              a4[1] += 36;
            }
            a1 += 3;
          }
          while ( v95 != a1 );
        }
      }
      else if ( a2 )
      {
        v49 = *((unsigned __int16 *)v4 + 7);
        v50 = a2;
        for ( k = v4; ; v49 = *((unsigned __int16 *)k + 7) )
        {
          v51 = (_DWORD *)a4[1];
          v52 = (_DWORD *)a4[2];
          v53 = (int *)(v9 + v49 * (_DWORD)(a1 + 1));
          v54 = (int *)(v9 + v49 + (_DWORD)a1 * v49);
          v55 = (int *)(v9 + (_DWORD)a1 * v49);
          v56 = *v53;
          v57 = *v54;
          v58 = v54[1];
          v59 = *v55;
          v60 = v55[1];
          v146 = v53[1];
          v148 = v57;
          v149 = v58;
          v151 = v59;
          v152 = v60;
          v147 = 0;
          v150 = 0;
          v153 = 0;
          v145 = v56;
          if ( v51 == v52 )
          {
            std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              a4,
              (int)v51,
              &v145);
          }
          else
          {
            *v51 = v56;
            v51[1] = v146;
            v51[2] = v147;
            v51[3] = v148;
            v51[4] = v149;
            v51[5] = v150;
            v51[6] = v151;
            v51[7] = v152;
            v51[8] = v153;
            a4[1] += 36;
          }
          a1 = (unsigned __int16 *)((char *)a1 + 3);
          if ( v50 <= (unsigned int)a1 )
            break;
        }
        v4 = k;
      }
      break;
    default:
      return;
  }
  if ( v9 )
  {
    v21 = (_BYTE *)*v4;
    v22 = *(_BYTE *)(*v4 + 19);
    if ( (v22 & 0x1Fu) <= 1 )
    {
      if ( (v21[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v21 + 24))(*v4);
      v21[19] = 0;
    }
    else
    {
      v21[19] = ((v22 & 0x1F) - 1) | v22 & 0xE0;
    }
  }
}


// ===== 5924a8 glitch::scene::`anonymous namespace'::createTriangles<uint,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(ushort const*,uint,glitch::video::SVertexStream const&,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>> &) =====
void __fastcall glitch::scene::`anonymous namespace'::createTriangles<unsigned int,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(
        unsigned __int16 *a1,
        unsigned int a2,
        int a3,
        _DWORD *a4)
{
  _DWORD *v4; // r5
  int v5; // r2
  int v9; // r7
  int v10; // r10
  float v11; // r5
  float v12; // r11
  int v13; // r10
  float v14; // r9
  int v15; // r2
  float v16; // r10
  float v17; // r0
  int v18; // r1
  int v19; // r3
  float v20; // r2
  _BYTE *v21; // r4
  char v22; // r3
  int v23; // r8
  unsigned int v24; // r0
  int v25; // r8
  float v26; // r11
  float v27; // r9
  int v28; // r2
  float v29; // r10
  float v30; // r8
  int v31; // r1
  int v32; // r3
  int v33; // r8
  unsigned int v34; // r0
  int v35; // r8
  float v36; // r11
  float v37; // r9
  int v38; // r2
  float v39; // r10
  float v40; // r8
  int v41; // r1
  int v42; // r3
  int v43; // r3
  int v44; // r8
  unsigned int v45; // r0
  int v46; // r8
  float v47; // r5
  float v48; // r11
  float v49; // r9
  int v50; // r2
  float v51; // r10
  float v52; // r8
  float v53; // r0
  float v54; // r12
  int v55; // r1
  int v56; // r3
  int v57; // r3
  int v58; // r8
  float v59; // r5
  float v60; // r11
  int v61; // r8
  float v62; // r9
  float v63; // r8
  float v64; // r0
  int v65; // r1
  int v66; // r3
  int v67; // r3
  int v68; // r8
  unsigned int v69; // r0
  int v70; // r8
  float v71; // r5
  float v72; // r11
  float v73; // r9
  int v74; // r2
  float v75; // r10
  float v76; // r8
  float v77; // r0
  float v78; // r12
  int v79; // r1
  int v80; // r3
  float v81; // [sp+4h] [bp-F8h]
  float v82; // [sp+4h] [bp-F8h]
  float v83; // [sp+4h] [bp-F8h]
  int v84; // [sp+8h] [bp-F4h]
  int v85; // [sp+8h] [bp-F4h]
  float v86; // [sp+8h] [bp-F4h]
  int v87; // [sp+8h] [bp-F4h]
  float v88; // [sp+8h] [bp-F4h]
  unsigned __int16 *v89; // [sp+Ch] [bp-F0h]
  unsigned int *v90; // [sp+Ch] [bp-F0h]
  unsigned int *v91; // [sp+Ch] [bp-F0h]
  unsigned int *v92; // [sp+Ch] [bp-F0h]
  unsigned int v93; // [sp+Ch] [bp-F0h]
  unsigned int *v94; // [sp+Ch] [bp-F0h]
  _DWORD *v95; // [sp+10h] [bp-ECh]
  float v96; // [sp+10h] [bp-ECh]
  float v97; // [sp+10h] [bp-ECh]
  float v98; // [sp+10h] [bp-ECh]
  _DWORD *k; // [sp+10h] [bp-ECh]
  float v100; // [sp+10h] [bp-ECh]
  unsigned __int16 *v101; // [sp+14h] [bp-E8h]
  unsigned __int16 *v102; // [sp+14h] [bp-E8h]
  unsigned int v103; // [sp+14h] [bp-E8h]
  unsigned int v104; // [sp+14h] [bp-E8h]
  _DWORD *v105; // [sp+18h] [bp-E4h]
  _DWORD *j; // [sp+18h] [bp-E4h]
  _DWORD *i; // [sp+18h] [bp-E4h]
  float v108; // [sp+20h] [bp-DCh] BYREF
  float v109; // [sp+24h] [bp-D8h]
  float v110; // [sp+28h] [bp-D4h]
  float v111; // [sp+2Ch] [bp-D0h]
  float v112; // [sp+30h] [bp-CCh]
  float v113; // [sp+34h] [bp-C8h]
  float v114; // [sp+38h] [bp-C4h]
  float v115; // [sp+3Ch] [bp-C0h]
  float v116; // [sp+40h] [bp-BCh]
  float v117; // [sp+44h] [bp-B8h] BYREF
  float v118; // [sp+48h] [bp-B4h]
  float v119; // [sp+4Ch] [bp-B0h]
  float v120; // [sp+50h] [bp-ACh]
  float v121; // [sp+54h] [bp-A8h]
  float v122; // [sp+58h] [bp-A4h]
  float v123; // [sp+5Ch] [bp-A0h]
  float v124; // [sp+60h] [bp-9Ch]
  float v125; // [sp+64h] [bp-98h]
  float v126; // [sp+68h] [bp-94h] BYREF
  float v127; // [sp+6Ch] [bp-90h]
  float v128; // [sp+70h] [bp-8Ch]
  float v129; // [sp+74h] [bp-88h]
  float v130; // [sp+78h] [bp-84h]
  float v131; // [sp+7Ch] [bp-80h]
  float v132; // [sp+80h] [bp-7Ch]
  float v133; // [sp+84h] [bp-78h]
  float v134; // [sp+88h] [bp-74h]
  float v135; // [sp+8Ch] [bp-70h] BYREF
  float v136; // [sp+90h] [bp-6Ch]
  float v137; // [sp+94h] [bp-68h]
  float v138; // [sp+98h] [bp-64h]
  float v139; // [sp+9Ch] [bp-60h]
  float v140; // [sp+A0h] [bp-5Ch]
  float v141; // [sp+A4h] [bp-58h]
  float v142; // [sp+A8h] [bp-54h]
  float v143; // [sp+ACh] [bp-50h]
  float v144; // [sp+B0h] [bp-4Ch] BYREF
  float v145; // [sp+B4h] [bp-48h]
  int v146; // [sp+B8h] [bp-44h]
  float v147; // [sp+BCh] [bp-40h]
  float v148; // [sp+C0h] [bp-3Ch]
  int v149; // [sp+C4h] [bp-38h]
  float v150; // [sp+C8h] [bp-34h]
  float v151; // [sp+CCh] [bp-30h]
  int v152; // [sp+D0h] [bp-2Ch]
  float v153; // [sp+D4h] [bp-28h] BYREF
  float v154; // [sp+D8h] [bp-24h]
  int v155; // [sp+DCh] [bp-20h]
  float v156; // [sp+E0h] [bp-1Ch]
  float v157; // [sp+E4h] [bp-18h]
  int v158; // [sp+E8h] [bp-14h]
  float v159; // [sp+ECh] [bp-10h]
  float v160; // [sp+F0h] [bp-Ch]
  int v161; // [sp+F4h] [bp-8h]

  v4 = (_DWORD *)a3;
  v5 = *(unsigned __int16 *)(a3 + 12);
  switch ( v5 )
  {
    case 3:
      v9 = glitch::video::IBuffer::map(*v4, 1) + v4[1];
      if ( !a1 )
      {
        if ( a2 )
        {
          v67 = *((unsigned __int16 *)v4 + 7);
          v104 = a2;
          for ( i = v4; ; v67 = *((unsigned __int16 *)i + 7) )
          {
            v68 = v67 * (_DWORD)(a1 + 1);
            v69 = *(_DWORD *)(v9 + v68);
            v70 = v9 + v68;
            v71 = (float)v69;
            v72 = (float)*(unsigned int *)(v70 + 4);
            v73 = (float)*(unsigned int *)(v70 + 8);
            v74 = v67 + (_DWORD)a1 * v67;
            v75 = (float)*(unsigned int *)(v9 + v74);
            v76 = (float)*(unsigned int *)(v9 + v74 + 4);
            v94 = (unsigned int *)(v9 + (_DWORD)a1 * v67);
            v100 = (float)v94[1];
            v77 = (float)v94[2];
            v78 = (float)*v94;
            v79 = a4[1];
            v80 = a4[2];
            v140 = (float)*(unsigned int *)(v9 + v74 + 8);
            v136 = v72;
            v137 = v73;
            v143 = v77;
            v138 = v75;
            v139 = v76;
            v141 = v78;
            v135 = v71;
            v142 = v100;
            if ( v79 == v80 )
            {
              std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
                a4,
                v79,
                &v135);
            }
            else
            {
              *(float *)v79 = v71;
              *(float *)(v79 + 4) = v136;
              *(float *)(v79 + 8) = v137;
              *(float *)(v79 + 12) = v138;
              *(float *)(v79 + 16) = v139;
              *(float *)(v79 + 20) = v140;
              *(float *)(v79 + 24) = v141;
              *(float *)(v79 + 28) = v142;
              *(float *)(v79 + 32) = v143;
              a4[1] += 36;
            }
            a1 = (unsigned __int16 *)((char *)a1 + 3);
            if ( v104 <= (unsigned int)a1 )
              break;
          }
          v4 = i;
        }
        break;
      }
      v102 = &a1[a2];
      if ( a1 != v102 )
      {
        v105 = v4;
        do
        {
          v33 = a1[2] * *((unsigned __int16 *)v4 + 7);
          v34 = *(_DWORD *)(v9 + v33);
          v87 = *((unsigned __int16 *)v4 + 7);
          v35 = v9 + v33;
          v36 = (float)*(unsigned int *)(v35 + 4);
          v37 = (float)*(unsigned int *)(v35 + 8);
          v38 = v87 * a1[1];
          v39 = (float)*(unsigned int *)(v9 + v38);
          v40 = (float)*(unsigned int *)(v9 + v38 + 4);
          v82 = (float)*(unsigned int *)(v9 + v38 + 8);
          v91 = (unsigned int *)(v9 + v87 * *a1);
          v88 = (float)*v91;
          v97 = (float)v91[1];
          v41 = a4[1];
          v42 = a4[2];
          v134 = (float)v91[2];
          v127 = v36;
          v128 = v37;
          v131 = v82;
          v129 = v39;
          v130 = v40;
          v132 = v88;
          v133 = v97;
          v126 = (float)v34;
          if ( v41 == v42 )
          {
            std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              a4,
              v41,
              &v126);
          }
          else
          {
            *(float *)v41 = (float)v34;
            *(float *)(v41 + 4) = v127;
            *(float *)(v41 + 8) = v128;
            *(float *)(v41 + 12) = v129;
            *(float *)(v41 + 16) = v130;
            *(float *)(v41 + 20) = v131;
            *(float *)(v41 + 24) = v132;
            *(float *)(v41 + 28) = v133;
            *(float *)(v41 + 32) = v134;
            a4[1] += 36;
          }
          a1 += 3;
        }
        while ( v102 != a1 );
        goto LABEL_21;
      }
      break;
    case 4:
      v9 = glitch::video::IBuffer::map(*v4, 1) + v4[1];
      if ( !a1 )
      {
        if ( a2 )
        {
          v43 = *((unsigned __int16 *)v4 + 7);
          v103 = a2;
          for ( j = v4; ; v43 = *((unsigned __int16 *)j + 7) )
          {
            v44 = v43 * (_DWORD)(a1 + 1);
            v45 = *(_DWORD *)(v9 + v44);
            v46 = v9 + v44;
            v47 = (float)v45;
            v48 = (float)*(unsigned int *)(v46 + 4);
            v49 = (float)*(unsigned int *)(v46 + 8);
            v50 = v43 + (_DWORD)a1 * v43;
            v51 = (float)*(unsigned int *)(v9 + v50);
            v52 = (float)*(unsigned int *)(v9 + v50 + 4);
            v92 = (unsigned int *)(v9 + (_DWORD)a1 * v43);
            v98 = (float)v92[1];
            v53 = (float)v92[2];
            v54 = (float)*v92;
            v55 = a4[1];
            v56 = a4[2];
            v122 = (float)*(unsigned int *)(v9 + v50 + 8);
            v118 = v48;
            v119 = v49;
            v125 = v53;
            v120 = v51;
            v121 = v52;
            v123 = v54;
            v117 = v47;
            v124 = v98;
            if ( v55 == v56 )
            {
              std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
                a4,
                v55,
                &v117);
            }
            else
            {
              *(float *)v55 = v47;
              *(float *)(v55 + 4) = v118;
              *(float *)(v55 + 8) = v119;
              *(float *)(v55 + 12) = v120;
              *(float *)(v55 + 16) = v121;
              *(float *)(v55 + 20) = v122;
              *(float *)(v55 + 24) = v123;
              *(float *)(v55 + 28) = v124;
              *(float *)(v55 + 32) = v125;
              a4[1] += 36;
            }
            a1 = (unsigned __int16 *)((char *)a1 + 3);
            if ( v103 <= (unsigned int)a1 )
              break;
          }
          v4 = j;
        }
        break;
      }
      v101 = &a1[a2];
      if ( a1 != v101 )
      {
        v105 = v4;
        do
        {
          v23 = a1[2] * *((unsigned __int16 *)v4 + 7);
          v24 = *(_DWORD *)(v9 + v23);
          v85 = *((unsigned __int16 *)v4 + 7);
          v25 = v9 + v23;
          v26 = (float)*(unsigned int *)(v25 + 4);
          v27 = (float)*(unsigned int *)(v25 + 8);
          v28 = v85 * a1[1];
          v29 = (float)*(unsigned int *)(v9 + v28);
          v30 = (float)*(unsigned int *)(v9 + v28 + 4);
          v81 = (float)*(unsigned int *)(v9 + v28 + 8);
          v90 = (unsigned int *)(v9 + v85 * *a1);
          v86 = (float)*v90;
          v96 = (float)v90[1];
          v31 = a4[1];
          v32 = a4[2];
          v116 = (float)v90[2];
          v109 = v26;
          v110 = v27;
          v113 = v81;
          v111 = v29;
          v112 = v30;
          v114 = v86;
          v115 = v96;
          v108 = (float)v24;
          if ( v31 == v32 )
          {
            std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              a4,
              v31,
              &v108);
          }
          else
          {
            *(float *)v31 = (float)v24;
            *(float *)(v31 + 4) = v109;
            *(float *)(v31 + 8) = v110;
            *(float *)(v31 + 12) = v111;
            *(float *)(v31 + 16) = v112;
            *(float *)(v31 + 20) = v113;
            *(float *)(v31 + 24) = v114;
            *(float *)(v31 + 28) = v115;
            *(float *)(v31 + 32) = v116;
            a4[1] += 36;
          }
          a1 += 3;
        }
        while ( v101 != a1 );
LABEL_21:
        v4 = v105;
      }
      break;
    case 2:
      v9 = glitch::video::IBuffer::map(*v4, 1) + v4[1];
      if ( a1 )
      {
        v89 = &a1[a2];
        if ( a1 != v89 )
        {
          v95 = v4;
          do
          {
            v10 = a1[2] * *((unsigned __int16 *)v95 + 7);
            v84 = *((unsigned __int16 *)v95 + 7);
            v11 = (float)*(unsigned int *)(v9 + v10);
            v12 = (float)*(unsigned int *)(v9 + v10 + 4);
            v13 = v84 * a1[1];
            v14 = (float)*(unsigned int *)(v9 + v13);
            v15 = *a1;
            v16 = (float)*(unsigned int *)(v9 + v13 + 4);
            v17 = (float)*(unsigned int *)(v9 + v84 * v15 + 4);
            v18 = a4[1];
            v19 = a4[2];
            v20 = (float)*(unsigned int *)(v9 + v84 * v15);
            v145 = v12;
            v147 = v14;
            v151 = v17;
            v148 = v16;
            v150 = v20;
            v146 = 0;
            v144 = v11;
            v149 = 0;
            v152 = 0;
            if ( v18 == v19 )
            {
              std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
                a4,
                v18,
                &v144);
            }
            else
            {
              *(float *)v18 = v11;
              *(float *)(v18 + 4) = v145;
              *(_DWORD *)(v18 + 8) = v146;
              *(float *)(v18 + 12) = v147;
              *(float *)(v18 + 16) = v148;
              *(_DWORD *)(v18 + 20) = v149;
              *(float *)(v18 + 24) = v150;
              *(float *)(v18 + 28) = v151;
              *(_DWORD *)(v18 + 32) = v152;
              a4[1] += 36;
            }
            a1 += 3;
          }
          while ( v89 != a1 );
          v4 = v95;
        }
      }
      else if ( a2 )
      {
        v57 = *((unsigned __int16 *)v4 + 7);
        v93 = a2;
        for ( k = v4; ; v57 = *((unsigned __int16 *)k + 7) )
        {
          v58 = v57 * (_DWORD)(a1 + 1);
          v59 = (float)*(unsigned int *)(v9 + v58);
          v60 = (float)*(unsigned int *)(v9 + v58 + 4);
          v61 = v57 + (_DWORD)a1 * v57;
          v62 = (float)*(unsigned int *)(v9 + v61);
          v63 = (float)*(unsigned int *)(v9 + v61 + 4);
          v83 = (float)*(unsigned int *)(v9 + (_DWORD)a1 * v57);
          v64 = (float)*(unsigned int *)(v9 + (_DWORD)a1 * v57 + 4);
          v65 = a4[1];
          v66 = a4[2];
          v154 = v60;
          v156 = v62;
          v157 = v63;
          v160 = v64;
          v159 = v83;
          v155 = 0;
          v158 = 0;
          v153 = v59;
          v161 = 0;
          if ( v65 == v66 )
          {
            std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              a4,
              v65,
              &v153);
          }
          else
          {
            *(float *)v65 = v59;
            *(float *)(v65 + 4) = v154;
            *(_DWORD *)(v65 + 8) = v155;
            *(float *)(v65 + 12) = v156;
            *(float *)(v65 + 16) = v157;
            *(_DWORD *)(v65 + 20) = v158;
            *(float *)(v65 + 24) = v159;
            *(float *)(v65 + 28) = v160;
            *(_DWORD *)(v65 + 32) = v161;
            a4[1] += 36;
          }
          a1 = (unsigned __int16 *)((char *)a1 + 3);
          if ( v93 <= (unsigned int)a1 )
            break;
        }
        v4 = k;
      }
      break;
    default:
      return;
  }
  if ( v9 )
  {
    v21 = (_BYTE *)*v4;
    v22 = *(_BYTE *)(*v4 + 19);
    if ( (v22 & 0x1Fu) <= 1 )
    {
      if ( (v21[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v21 + 24))(*v4);
      v21[19] = 0;
    }
    else
    {
      v21[19] = ((v22 & 0x1F) - 1) | v22 & 0xE0;
    }
  }
}


// ===== 592e58 glitch::scene::`anonymous namespace'::createTriangles<signed char,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(ushort const*,uint,glitch::video::SVertexStream const&,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>> &) =====
void __fastcall glitch::scene::`anonymous namespace'::createTriangles<signed char,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(
        unsigned __int16 *a1,
        unsigned int a2,
        int a3,
        _DWORD *a4)
{
  _DWORD *v4; // r5
  int v5; // r2
  int v9; // r7
  int v10; // r10
  float v11; // r5
  float v12; // r11
  int v13; // r10
  float v14; // r9
  int v15; // r2
  float v16; // r10
  float v17; // r0
  int v18; // r1
  int v19; // r3
  float v20; // r2
  _BYTE *v21; // r4
  char v22; // r3
  int v23; // r8
  int v24; // r0
  int v25; // r8
  float v26; // r11
  float v27; // r9
  int v28; // r2
  float v29; // r10
  float v30; // r8
  int v31; // r1
  int v32; // r3
  int v33; // r8
  int v34; // r0
  int v35; // r8
  float v36; // r11
  float v37; // r9
  int v38; // r2
  float v39; // r10
  float v40; // r8
  int v41; // r1
  int v42; // r3
  int v43; // r3
  int v44; // r8
  int v45; // r0
  int v46; // r8
  float v47; // r5
  float v48; // r11
  float v49; // r9
  int v50; // r2
  float v51; // r10
  float v52; // r8
  float v53; // r0
  float v54; // r12
  int v55; // r1
  int v56; // r3
  int v57; // r3
  int v58; // r8
  float v59; // r5
  float v60; // r11
  int v61; // r8
  float v62; // r9
  float v63; // r8
  float v64; // r0
  int v65; // r1
  int v66; // r3
  int v67; // r3
  int v68; // r8
  int v69; // r0
  int v70; // r8
  float v71; // r5
  float v72; // r11
  float v73; // r9
  int v74; // r2
  float v75; // r10
  float v76; // r8
  float v77; // r0
  float v78; // r12
  int v79; // r1
  int v80; // r3
  float v81; // [sp+4h] [bp-F8h]
  float v82; // [sp+4h] [bp-F8h]
  float v83; // [sp+4h] [bp-F8h]
  int v84; // [sp+8h] [bp-F4h]
  int v85; // [sp+8h] [bp-F4h]
  float v86; // [sp+8h] [bp-F4h]
  int v87; // [sp+8h] [bp-F4h]
  float v88; // [sp+8h] [bp-F4h]
  unsigned __int16 *v89; // [sp+Ch] [bp-F0h]
  char *v90; // [sp+Ch] [bp-F0h]
  char *v91; // [sp+Ch] [bp-F0h]
  char *v92; // [sp+Ch] [bp-F0h]
  unsigned int v93; // [sp+Ch] [bp-F0h]
  char *v94; // [sp+Ch] [bp-F0h]
  _DWORD *v95; // [sp+10h] [bp-ECh]
  float v96; // [sp+10h] [bp-ECh]
  float v97; // [sp+10h] [bp-ECh]
  float v98; // [sp+10h] [bp-ECh]
  _DWORD *k; // [sp+10h] [bp-ECh]
  float v100; // [sp+10h] [bp-ECh]
  unsigned __int16 *v101; // [sp+14h] [bp-E8h]
  unsigned __int16 *v102; // [sp+14h] [bp-E8h]
  unsigned int v103; // [sp+14h] [bp-E8h]
  unsigned int v104; // [sp+14h] [bp-E8h]
  _DWORD *v105; // [sp+18h] [bp-E4h]
  _DWORD *j; // [sp+18h] [bp-E4h]
  _DWORD *i; // [sp+18h] [bp-E4h]
  float v108; // [sp+20h] [bp-DCh] BYREF
  float v109; // [sp+24h] [bp-D8h]
  float v110; // [sp+28h] [bp-D4h]
  float v111; // [sp+2Ch] [bp-D0h]
  float v112; // [sp+30h] [bp-CCh]
  float v113; // [sp+34h] [bp-C8h]
  float v114; // [sp+38h] [bp-C4h]
  float v115; // [sp+3Ch] [bp-C0h]
  float v116; // [sp+40h] [bp-BCh]
  float v117; // [sp+44h] [bp-B8h] BYREF
  float v118; // [sp+48h] [bp-B4h]
  float v119; // [sp+4Ch] [bp-B0h]
  float v120; // [sp+50h] [bp-ACh]
  float v121; // [sp+54h] [bp-A8h]
  float v122; // [sp+58h] [bp-A4h]
  float v123; // [sp+5Ch] [bp-A0h]
  float v124; // [sp+60h] [bp-9Ch]
  float v125; // [sp+64h] [bp-98h]
  float v126; // [sp+68h] [bp-94h] BYREF
  float v127; // [sp+6Ch] [bp-90h]
  float v128; // [sp+70h] [bp-8Ch]
  float v129; // [sp+74h] [bp-88h]
  float v130; // [sp+78h] [bp-84h]
  float v131; // [sp+7Ch] [bp-80h]
  float v132; // [sp+80h] [bp-7Ch]
  float v133; // [sp+84h] [bp-78h]
  float v134; // [sp+88h] [bp-74h]
  float v135; // [sp+8Ch] [bp-70h] BYREF
  float v136; // [sp+90h] [bp-6Ch]
  float v137; // [sp+94h] [bp-68h]
  float v138; // [sp+98h] [bp-64h]
  float v139; // [sp+9Ch] [bp-60h]
  float v140; // [sp+A0h] [bp-5Ch]
  float v141; // [sp+A4h] [bp-58h]
  float v142; // [sp+A8h] [bp-54h]
  float v143; // [sp+ACh] [bp-50h]
  float v144; // [sp+B0h] [bp-4Ch] BYREF
  float v145; // [sp+B4h] [bp-48h]
  int v146; // [sp+B8h] [bp-44h]
  float v147; // [sp+BCh] [bp-40h]
  float v148; // [sp+C0h] [bp-3Ch]
  int v149; // [sp+C4h] [bp-38h]
  float v150; // [sp+C8h] [bp-34h]
  float v151; // [sp+CCh] [bp-30h]
  int v152; // [sp+D0h] [bp-2Ch]
  float v153; // [sp+D4h] [bp-28h] BYREF
  float v154; // [sp+D8h] [bp-24h]
  int v155; // [sp+DCh] [bp-20h]
  float v156; // [sp+E0h] [bp-1Ch]
  float v157; // [sp+E4h] [bp-18h]
  int v158; // [sp+E8h] [bp-14h]
  float v159; // [sp+ECh] [bp-10h]
  float v160; // [sp+F0h] [bp-Ch]
  int v161; // [sp+F4h] [bp-8h]

  v4 = (_DWORD *)a3;
  v5 = *(unsigned __int16 *)(a3 + 12);
  switch ( v5 )
  {
    case 3:
      v9 = glitch::video::IBuffer::map(*v4, 1) + v4[1];
      if ( !a1 )
      {
        if ( a2 )
        {
          v67 = *((unsigned __int16 *)v4 + 7);
          v104 = a2;
          for ( i = v4; ; v67 = *((unsigned __int16 *)i + 7) )
          {
            v68 = v67 * (_DWORD)(a1 + 1);
            v69 = *(char *)(v9 + v68);
            v70 = v9 + v68;
            v71 = (float)v69;
            v72 = (float)*(char *)(v70 + 1);
            v73 = (float)*(char *)(v70 + 2);
            v74 = v67 + (_DWORD)a1 * v67;
            v75 = (float)*(char *)(v9 + v74);
            v76 = (float)*(char *)(v9 + v74 + 1);
            v94 = (char *)(v9 + (_DWORD)a1 * v67);
            v100 = (float)v94[1];
            v77 = (float)v94[2];
            v78 = (float)*v94;
            v79 = a4[1];
            v80 = a4[2];
            v140 = (float)*(char *)(v9 + v74 + 2);
            v136 = v72;
            v137 = v73;
            v143 = v77;
            v138 = v75;
            v139 = v76;
            v141 = v78;
            v135 = v71;
            v142 = v100;
            if ( v79 == v80 )
            {
              std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
                a4,
                v79,
                &v135);
            }
            else
            {
              *(float *)v79 = v71;
              *(float *)(v79 + 4) = v136;
              *(float *)(v79 + 8) = v137;
              *(float *)(v79 + 12) = v138;
              *(float *)(v79 + 16) = v139;
              *(float *)(v79 + 20) = v140;
              *(float *)(v79 + 24) = v141;
              *(float *)(v79 + 28) = v142;
              *(float *)(v79 + 32) = v143;
              a4[1] += 36;
            }
            a1 = (unsigned __int16 *)((char *)a1 + 3);
            if ( v104 <= (unsigned int)a1 )
              break;
          }
          v4 = i;
        }
        break;
      }
      v102 = &a1[a2];
      if ( a1 != v102 )
      {
        v105 = v4;
        do
        {
          v33 = a1[2] * *((unsigned __int16 *)v4 + 7);
          v34 = *(char *)(v9 + v33);
          v87 = *((unsigned __int16 *)v4 + 7);
          v35 = v9 + v33;
          v36 = (float)*(char *)(v35 + 1);
          v37 = (float)*(char *)(v35 + 2);
          v38 = v87 * a1[1];
          v39 = (float)*(char *)(v9 + v38);
          v40 = (float)*(char *)(v9 + v38 + 1);
          v82 = (float)*(char *)(v9 + v38 + 2);
          v91 = (char *)(v9 + v87 * *a1);
          v88 = (float)*v91;
          v97 = (float)v91[1];
          v41 = a4[1];
          v42 = a4[2];
          v134 = (float)v91[2];
          v127 = v36;
          v128 = v37;
          v131 = v82;
          v129 = v39;
          v130 = v40;
          v132 = v88;
          v133 = v97;
          v126 = (float)v34;
          if ( v41 == v42 )
          {
            std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              a4,
              v41,
              &v126);
          }
          else
          {
            *(float *)v41 = (float)v34;
            *(float *)(v41 + 4) = v127;
            *(float *)(v41 + 8) = v128;
            *(float *)(v41 + 12) = v129;
            *(float *)(v41 + 16) = v130;
            *(float *)(v41 + 20) = v131;
            *(float *)(v41 + 24) = v132;
            *(float *)(v41 + 28) = v133;
            *(float *)(v41 + 32) = v134;
            a4[1] += 36;
          }
          a1 += 3;
        }
        while ( v102 != a1 );
        goto LABEL_21;
      }
      break;
    case 4:
      v9 = glitch::video::IBuffer::map(*v4, 1) + v4[1];
      if ( !a1 )
      {
        if ( a2 )
        {
          v43 = *((unsigned __int16 *)v4 + 7);
          v103 = a2;
          for ( j = v4; ; v43 = *((unsigned __int16 *)j + 7) )
          {
            v44 = v43 * (_DWORD)(a1 + 1);
            v45 = *(char *)(v9 + v44);
            v46 = v9 + v44;
            v47 = (float)v45;
            v48 = (float)*(char *)(v46 + 1);
            v49 = (float)*(char *)(v46 + 2);
            v50 = v43 + (_DWORD)a1 * v43;
            v51 = (float)*(char *)(v9 + v50);
            v52 = (float)*(char *)(v9 + v50 + 1);
            v92 = (char *)(v9 + (_DWORD)a1 * v43);
            v98 = (float)v92[1];
            v53 = (float)v92[2];
            v54 = (float)*v92;
            v55 = a4[1];
            v56 = a4[2];
            v122 = (float)*(char *)(v9 + v50 + 2);
            v118 = v48;
            v119 = v49;
            v125 = v53;
            v120 = v51;
            v121 = v52;
            v123 = v54;
            v117 = v47;
            v124 = v98;
            if ( v55 == v56 )
            {
              std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
                a4,
                v55,
                &v117);
            }
            else
            {
              *(float *)v55 = v47;
              *(float *)(v55 + 4) = v118;
              *(float *)(v55 + 8) = v119;
              *(float *)(v55 + 12) = v120;
              *(float *)(v55 + 16) = v121;
              *(float *)(v55 + 20) = v122;
              *(float *)(v55 + 24) = v123;
              *(float *)(v55 + 28) = v124;
              *(float *)(v55 + 32) = v125;
              a4[1] += 36;
            }
            a1 = (unsigned __int16 *)((char *)a1 + 3);
            if ( v103 <= (unsigned int)a1 )
              break;
          }
          v4 = j;
        }
        break;
      }
      v101 = &a1[a2];
      if ( a1 != v101 )
      {
        v105 = v4;
        do
        {
          v23 = a1[2] * *((unsigned __int16 *)v4 + 7);
          v24 = *(char *)(v9 + v23);
          v85 = *((unsigned __int16 *)v4 + 7);
          v25 = v9 + v23;
          v26 = (float)*(char *)(v25 + 1);
          v27 = (float)*(char *)(v25 + 2);
          v28 = v85 * a1[1];
          v29 = (float)*(char *)(v9 + v28);
          v30 = (float)*(char *)(v9 + v28 + 1);
          v81 = (float)*(char *)(v9 + v28 + 2);
          v90 = (char *)(v9 + v85 * *a1);
          v86 = (float)*v90;
          v96 = (float)v90[1];
          v31 = a4[1];
          v32 = a4[2];
          v116 = (float)v90[2];
          v109 = v26;
          v110 = v27;
          v113 = v81;
          v111 = v29;
          v112 = v30;
          v114 = v86;
          v115 = v96;
          v108 = (float)v24;
          if ( v31 == v32 )
          {
            std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              a4,
              v31,
              &v108);
          }
          else
          {
            *(float *)v31 = (float)v24;
            *(float *)(v31 + 4) = v109;
            *(float *)(v31 + 8) = v110;
            *(float *)(v31 + 12) = v111;
            *(float *)(v31 + 16) = v112;
            *(float *)(v31 + 20) = v113;
            *(float *)(v31 + 24) = v114;
            *(float *)(v31 + 28) = v115;
            *(float *)(v31 + 32) = v116;
            a4[1] += 36;
          }
          a1 += 3;
        }
        while ( v101 != a1 );
LABEL_21:
        v4 = v105;
      }
      break;
    case 2:
      v9 = glitch::video::IBuffer::map(*v4, 1) + v4[1];
      if ( a1 )
      {
        v89 = &a1[a2];
        if ( a1 != v89 )
        {
          v95 = v4;
          do
          {
            v10 = a1[2] * *((unsigned __int16 *)v95 + 7);
            v84 = *((unsigned __int16 *)v95 + 7);
            v11 = (float)*(char *)(v9 + v10);
            v12 = (float)*(char *)(v9 + v10 + 1);
            v13 = v84 * a1[1];
            v14 = (float)*(char *)(v9 + v13);
            v15 = *a1;
            v16 = (float)*(char *)(v9 + v13 + 1);
            v17 = (float)*(char *)(v9 + v84 * v15 + 1);
            v18 = a4[1];
            v19 = a4[2];
            v20 = (float)*(char *)(v9 + v84 * v15);
            v145 = v12;
            v147 = v14;
            v151 = v17;
            v148 = v16;
            v150 = v20;
            v146 = 0;
            v144 = v11;
            v149 = 0;
            v152 = 0;
            if ( v18 == v19 )
            {
              std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
                a4,
                v18,
                &v144);
            }
            else
            {
              *(float *)v18 = v11;
              *(float *)(v18 + 4) = v145;
              *(_DWORD *)(v18 + 8) = v146;
              *(float *)(v18 + 12) = v147;
              *(float *)(v18 + 16) = v148;
              *(_DWORD *)(v18 + 20) = v149;
              *(float *)(v18 + 24) = v150;
              *(float *)(v18 + 28) = v151;
              *(_DWORD *)(v18 + 32) = v152;
              a4[1] += 36;
            }
            a1 += 3;
          }
          while ( v89 != a1 );
          v4 = v95;
        }
      }
      else if ( a2 )
      {
        v57 = *((unsigned __int16 *)v4 + 7);
        v93 = a2;
        for ( k = v4; ; v57 = *((unsigned __int16 *)k + 7) )
        {
          v58 = v57 * (_DWORD)(a1 + 1);
          v59 = (float)*(char *)(v9 + v58);
          v60 = (float)*(char *)(v9 + v58 + 1);
          v61 = v57 + (_DWORD)a1 * v57;
          v62 = (float)*(char *)(v9 + v61);
          v63 = (float)*(char *)(v9 + v61 + 1);
          v83 = (float)*(char *)(v9 + (_DWORD)a1 * v57);
          v64 = (float)*(char *)(v9 + (_DWORD)a1 * v57 + 1);
          v65 = a4[1];
          v66 = a4[2];
          v154 = v60;
          v156 = v62;
          v157 = v63;
          v160 = v64;
          v159 = v83;
          v155 = 0;
          v158 = 0;
          v153 = v59;
          v161 = 0;
          if ( v65 == v66 )
          {
            std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              a4,
              v65,
              &v153);
          }
          else
          {
            *(float *)v65 = v59;
            *(float *)(v65 + 4) = v154;
            *(_DWORD *)(v65 + 8) = v155;
            *(float *)(v65 + 12) = v156;
            *(float *)(v65 + 16) = v157;
            *(_DWORD *)(v65 + 20) = v158;
            *(float *)(v65 + 24) = v159;
            *(float *)(v65 + 28) = v160;
            *(_DWORD *)(v65 + 32) = v161;
            a4[1] += 36;
          }
          a1 = (unsigned __int16 *)((char *)a1 + 3);
          if ( v93 <= (unsigned int)a1 )
            break;
        }
        v4 = k;
      }
      break;
    default:
      return;
  }
  if ( v9 )
  {
    v21 = (_BYTE *)*v4;
    v22 = *(_BYTE *)(*v4 + 19);
    if ( (v22 & 0x1Fu) <= 1 )
    {
      if ( (v21[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v21 + 24))(*v4);
      v21[19] = 0;
    }
    else
    {
      v21[19] = ((v22 & 0x1F) - 1) | v22 & 0xE0;
    }
  }
}


// ===== 593808 glitch::scene::`anonymous namespace'::createTriangles<uchar,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(ushort const*,uint,glitch::video::SVertexStream const&,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>> &) =====
void __fastcall glitch::scene::`anonymous namespace'::createTriangles<unsigned char,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(
        unsigned __int16 *a1,
        unsigned int a2,
        int a3,
        _DWORD *a4)
{
  _DWORD *v4; // r5
  int v5; // r2
  int v9; // r7
  int v10; // r10
  float v11; // r5
  float v12; // r11
  int v13; // r10
  float v14; // r9
  int v15; // r2
  float v16; // r10
  float v17; // r0
  int v18; // r1
  int v19; // r3
  float v20; // r2
  _BYTE *v21; // r4
  char v22; // r3
  int v23; // r8
  unsigned int v24; // r0
  int v25; // r8
  float v26; // r11
  float v27; // r9
  int v28; // r2
  float v29; // r10
  float v30; // r8
  int v31; // r1
  int v32; // r3
  int v33; // r8
  unsigned int v34; // r0
  int v35; // r8
  float v36; // r11
  float v37; // r9
  int v38; // r2
  float v39; // r10
  float v40; // r8
  int v41; // r1
  int v42; // r3
  int v43; // r3
  int v44; // r8
  unsigned int v45; // r0
  int v46; // r8
  float v47; // r5
  float v48; // r11
  float v49; // r9
  int v50; // r2
  float v51; // r10
  float v52; // r8
  float v53; // r0
  float v54; // r12
  int v55; // r1
  int v56; // r3
  int v57; // r3
  int v58; // r8
  float v59; // r5
  float v60; // r11
  int v61; // r8
  float v62; // r9
  float v63; // r8
  float v64; // r0
  int v65; // r1
  int v66; // r3
  int v67; // r3
  int v68; // r8
  unsigned int v69; // r0
  int v70; // r8
  float v71; // r5
  float v72; // r11
  float v73; // r9
  int v74; // r2
  float v75; // r10
  float v76; // r8
  float v77; // r0
  float v78; // r12
  int v79; // r1
  int v80; // r3
  float v81; // [sp+4h] [bp-F8h]
  float v82; // [sp+4h] [bp-F8h]
  float v83; // [sp+4h] [bp-F8h]
  int v84; // [sp+8h] [bp-F4h]
  int v85; // [sp+8h] [bp-F4h]
  float v86; // [sp+8h] [bp-F4h]
  int v87; // [sp+8h] [bp-F4h]
  float v88; // [sp+8h] [bp-F4h]
  unsigned __int16 *v89; // [sp+Ch] [bp-F0h]
  unsigned __int8 *v90; // [sp+Ch] [bp-F0h]
  unsigned __int8 *v91; // [sp+Ch] [bp-F0h]
  unsigned __int8 *v92; // [sp+Ch] [bp-F0h]
  unsigned int v93; // [sp+Ch] [bp-F0h]
  unsigned __int8 *v94; // [sp+Ch] [bp-F0h]
  _DWORD *v95; // [sp+10h] [bp-ECh]
  float v96; // [sp+10h] [bp-ECh]
  float v97; // [sp+10h] [bp-ECh]
  float v98; // [sp+10h] [bp-ECh]
  _DWORD *k; // [sp+10h] [bp-ECh]
  float v100; // [sp+10h] [bp-ECh]
  unsigned __int16 *v101; // [sp+14h] [bp-E8h]
  unsigned __int16 *v102; // [sp+14h] [bp-E8h]
  unsigned int v103; // [sp+14h] [bp-E8h]
  unsigned int v104; // [sp+14h] [bp-E8h]
  _DWORD *v105; // [sp+18h] [bp-E4h]
  _DWORD *j; // [sp+18h] [bp-E4h]
  _DWORD *i; // [sp+18h] [bp-E4h]
  float v108; // [sp+20h] [bp-DCh] BYREF
  float v109; // [sp+24h] [bp-D8h]
  float v110; // [sp+28h] [bp-D4h]
  float v111; // [sp+2Ch] [bp-D0h]
  float v112; // [sp+30h] [bp-CCh]
  float v113; // [sp+34h] [bp-C8h]
  float v114; // [sp+38h] [bp-C4h]
  float v115; // [sp+3Ch] [bp-C0h]
  float v116; // [sp+40h] [bp-BCh]
  float v117; // [sp+44h] [bp-B8h] BYREF
  float v118; // [sp+48h] [bp-B4h]
  float v119; // [sp+4Ch] [bp-B0h]
  float v120; // [sp+50h] [bp-ACh]
  float v121; // [sp+54h] [bp-A8h]
  float v122; // [sp+58h] [bp-A4h]
  float v123; // [sp+5Ch] [bp-A0h]
  float v124; // [sp+60h] [bp-9Ch]
  float v125; // [sp+64h] [bp-98h]
  float v126; // [sp+68h] [bp-94h] BYREF
  float v127; // [sp+6Ch] [bp-90h]
  float v128; // [sp+70h] [bp-8Ch]
  float v129; // [sp+74h] [bp-88h]
  float v130; // [sp+78h] [bp-84h]
  float v131; // [sp+7Ch] [bp-80h]
  float v132; // [sp+80h] [bp-7Ch]
  float v133; // [sp+84h] [bp-78h]
  float v134; // [sp+88h] [bp-74h]
  float v135; // [sp+8Ch] [bp-70h] BYREF
  float v136; // [sp+90h] [bp-6Ch]
  float v137; // [sp+94h] [bp-68h]
  float v138; // [sp+98h] [bp-64h]
  float v139; // [sp+9Ch] [bp-60h]
  float v140; // [sp+A0h] [bp-5Ch]
  float v141; // [sp+A4h] [bp-58h]
  float v142; // [sp+A8h] [bp-54h]
  float v143; // [sp+ACh] [bp-50h]
  float v144; // [sp+B0h] [bp-4Ch] BYREF
  float v145; // [sp+B4h] [bp-48h]
  int v146; // [sp+B8h] [bp-44h]
  float v147; // [sp+BCh] [bp-40h]
  float v148; // [sp+C0h] [bp-3Ch]
  int v149; // [sp+C4h] [bp-38h]
  float v150; // [sp+C8h] [bp-34h]
  float v151; // [sp+CCh] [bp-30h]
  int v152; // [sp+D0h] [bp-2Ch]
  float v153; // [sp+D4h] [bp-28h] BYREF
  float v154; // [sp+D8h] [bp-24h]
  int v155; // [sp+DCh] [bp-20h]
  float v156; // [sp+E0h] [bp-1Ch]
  float v157; // [sp+E4h] [bp-18h]
  int v158; // [sp+E8h] [bp-14h]
  float v159; // [sp+ECh] [bp-10h]
  float v160; // [sp+F0h] [bp-Ch]
  int v161; // [sp+F4h] [bp-8h]

  v4 = (_DWORD *)a3;
  v5 = *(unsigned __int16 *)(a3 + 12);
  switch ( v5 )
  {
    case 3:
      v9 = glitch::video::IBuffer::map(*v4, 1) + v4[1];
      if ( !a1 )
      {
        if ( a2 )
        {
          v67 = *((unsigned __int16 *)v4 + 7);
          v104 = a2;
          for ( i = v4; ; v67 = *((unsigned __int16 *)i + 7) )
          {
            v68 = v67 * (_DWORD)(a1 + 1);
            v69 = *(unsigned __int8 *)(v9 + v68);
            v70 = v9 + v68;
            v71 = (float)v69;
            v72 = (float)*(unsigned __int8 *)(v70 + 1);
            v73 = (float)*(unsigned __int8 *)(v70 + 2);
            v74 = v67 + (_DWORD)a1 * v67;
            v75 = (float)*(unsigned __int8 *)(v9 + v74);
            v76 = (float)*(unsigned __int8 *)(v9 + v74 + 1);
            v94 = (unsigned __int8 *)(v9 + (_DWORD)a1 * v67);
            v100 = (float)v94[1];
            v77 = (float)v94[2];
            v78 = (float)*v94;
            v79 = a4[1];
            v80 = a4[2];
            v140 = (float)*(unsigned __int8 *)(v9 + v74 + 2);
            v136 = v72;
            v137 = v73;
            v143 = v77;
            v138 = v75;
            v139 = v76;
            v141 = v78;
            v135 = v71;
            v142 = v100;
            if ( v79 == v80 )
            {
              std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
                a4,
                v79,
                &v135);
            }
            else
            {
              *(float *)v79 = v71;
              *(float *)(v79 + 4) = v136;
              *(float *)(v79 + 8) = v137;
              *(float *)(v79 + 12) = v138;
              *(float *)(v79 + 16) = v139;
              *(float *)(v79 + 20) = v140;
              *(float *)(v79 + 24) = v141;
              *(float *)(v79 + 28) = v142;
              *(float *)(v79 + 32) = v143;
              a4[1] += 36;
            }
            a1 = (unsigned __int16 *)((char *)a1 + 3);
            if ( v104 <= (unsigned int)a1 )
              break;
          }
          v4 = i;
        }
        break;
      }
      v102 = &a1[a2];
      if ( a1 != v102 )
      {
        v105 = v4;
        do
        {
          v33 = a1[2] * *((unsigned __int16 *)v4 + 7);
          v34 = *(unsigned __int8 *)(v9 + v33);
          v87 = *((unsigned __int16 *)v4 + 7);
          v35 = v9 + v33;
          v36 = (float)*(unsigned __int8 *)(v35 + 1);
          v37 = (float)*(unsigned __int8 *)(v35 + 2);
          v38 = v87 * a1[1];
          v39 = (float)*(unsigned __int8 *)(v9 + v38);
          v40 = (float)*(unsigned __int8 *)(v9 + v38 + 1);
          v82 = (float)*(unsigned __int8 *)(v9 + v38 + 2);
          v91 = (unsigned __int8 *)(v9 + v87 * *a1);
          v88 = (float)*v91;
          v97 = (float)v91[1];
          v41 = a4[1];
          v42 = a4[2];
          v134 = (float)v91[2];
          v127 = v36;
          v128 = v37;
          v131 = v82;
          v129 = v39;
          v130 = v40;
          v132 = v88;
          v133 = v97;
          v126 = (float)v34;
          if ( v41 == v42 )
          {
            std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              a4,
              v41,
              &v126);
          }
          else
          {
            *(float *)v41 = (float)v34;
            *(float *)(v41 + 4) = v127;
            *(float *)(v41 + 8) = v128;
            *(float *)(v41 + 12) = v129;
            *(float *)(v41 + 16) = v130;
            *(float *)(v41 + 20) = v131;
            *(float *)(v41 + 24) = v132;
            *(float *)(v41 + 28) = v133;
            *(float *)(v41 + 32) = v134;
            a4[1] += 36;
          }
          a1 += 3;
        }
        while ( v102 != a1 );
        goto LABEL_21;
      }
      break;
    case 4:
      v9 = glitch::video::IBuffer::map(*v4, 1) + v4[1];
      if ( !a1 )
      {
        if ( a2 )
        {
          v43 = *((unsigned __int16 *)v4 + 7);
          v103 = a2;
          for ( j = v4; ; v43 = *((unsigned __int16 *)j + 7) )
          {
            v44 = v43 * (_DWORD)(a1 + 1);
            v45 = *(unsigned __int8 *)(v9 + v44);
            v46 = v9 + v44;
            v47 = (float)v45;
            v48 = (float)*(unsigned __int8 *)(v46 + 1);
            v49 = (float)*(unsigned __int8 *)(v46 + 2);
            v50 = v43 + (_DWORD)a1 * v43;
            v51 = (float)*(unsigned __int8 *)(v9 + v50);
            v52 = (float)*(unsigned __int8 *)(v9 + v50 + 1);
            v92 = (unsigned __int8 *)(v9 + (_DWORD)a1 * v43);
            v98 = (float)v92[1];
            v53 = (float)v92[2];
            v54 = (float)*v92;
            v55 = a4[1];
            v56 = a4[2];
            v122 = (float)*(unsigned __int8 *)(v9 + v50 + 2);
            v118 = v48;
            v119 = v49;
            v125 = v53;
            v120 = v51;
            v121 = v52;
            v123 = v54;
            v117 = v47;
            v124 = v98;
            if ( v55 == v56 )
            {
              std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
                a4,
                v55,
                &v117);
            }
            else
            {
              *(float *)v55 = v47;
              *(float *)(v55 + 4) = v118;
              *(float *)(v55 + 8) = v119;
              *(float *)(v55 + 12) = v120;
              *(float *)(v55 + 16) = v121;
              *(float *)(v55 + 20) = v122;
              *(float *)(v55 + 24) = v123;
              *(float *)(v55 + 28) = v124;
              *(float *)(v55 + 32) = v125;
              a4[1] += 36;
            }
            a1 = (unsigned __int16 *)((char *)a1 + 3);
            if ( v103 <= (unsigned int)a1 )
              break;
          }
          v4 = j;
        }
        break;
      }
      v101 = &a1[a2];
      if ( a1 != v101 )
      {
        v105 = v4;
        do
        {
          v23 = a1[2] * *((unsigned __int16 *)v4 + 7);
          v24 = *(unsigned __int8 *)(v9 + v23);
          v85 = *((unsigned __int16 *)v4 + 7);
          v25 = v9 + v23;
          v26 = (float)*(unsigned __int8 *)(v25 + 1);
          v27 = (float)*(unsigned __int8 *)(v25 + 2);
          v28 = v85 * a1[1];
          v29 = (float)*(unsigned __int8 *)(v9 + v28);
          v30 = (float)*(unsigned __int8 *)(v9 + v28 + 1);
          v81 = (float)*(unsigned __int8 *)(v9 + v28 + 2);
          v90 = (unsigned __int8 *)(v9 + v85 * *a1);
          v86 = (float)*v90;
          v96 = (float)v90[1];
          v31 = a4[1];
          v32 = a4[2];
          v116 = (float)v90[2];
          v109 = v26;
          v110 = v27;
          v113 = v81;
          v111 = v29;
          v112 = v30;
          v114 = v86;
          v115 = v96;
          v108 = (float)v24;
          if ( v31 == v32 )
          {
            std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              a4,
              v31,
              &v108);
          }
          else
          {
            *(float *)v31 = (float)v24;
            *(float *)(v31 + 4) = v109;
            *(float *)(v31 + 8) = v110;
            *(float *)(v31 + 12) = v111;
            *(float *)(v31 + 16) = v112;
            *(float *)(v31 + 20) = v113;
            *(float *)(v31 + 24) = v114;
            *(float *)(v31 + 28) = v115;
            *(float *)(v31 + 32) = v116;
            a4[1] += 36;
          }
          a1 += 3;
        }
        while ( v101 != a1 );
LABEL_21:
        v4 = v105;
      }
      break;
    case 2:
      v9 = glitch::video::IBuffer::map(*v4, 1) + v4[1];
      if ( a1 )
      {
        v89 = &a1[a2];
        if ( a1 != v89 )
        {
          v95 = v4;
          do
          {
            v10 = a1[2] * *((unsigned __int16 *)v95 + 7);
            v84 = *((unsigned __int16 *)v95 + 7);
            v11 = (float)*(unsigned __int8 *)(v9 + v10);
            v12 = (float)*(unsigned __int8 *)(v9 + v10 + 1);
            v13 = v84 * a1[1];
            v14 = (float)*(unsigned __int8 *)(v9 + v13);
            v15 = *a1;
            v16 = (float)*(unsigned __int8 *)(v9 + v13 + 1);
            v17 = (float)*(unsigned __int8 *)(v9 + v84 * v15 + 1);
            v18 = a4[1];
            v19 = a4[2];
            v20 = (float)*(unsigned __int8 *)(v9 + v84 * v15);
            v145 = v12;
            v147 = v14;
            v151 = v17;
            v148 = v16;
            v150 = v20;
            v146 = 0;
            v144 = v11;
            v149 = 0;
            v152 = 0;
            if ( v18 == v19 )
            {
              std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
                a4,
                v18,
                &v144);
            }
            else
            {
              *(float *)v18 = v11;
              *(float *)(v18 + 4) = v145;
              *(_DWORD *)(v18 + 8) = v146;
              *(float *)(v18 + 12) = v147;
              *(float *)(v18 + 16) = v148;
              *(_DWORD *)(v18 + 20) = v149;
              *(float *)(v18 + 24) = v150;
              *(float *)(v18 + 28) = v151;
              *(_DWORD *)(v18 + 32) = v152;
              a4[1] += 36;
            }
            a1 += 3;
          }
          while ( v89 != a1 );
          v4 = v95;
        }
      }
      else if ( a2 )
      {
        v57 = *((unsigned __int16 *)v4 + 7);
        v93 = a2;
        for ( k = v4; ; v57 = *((unsigned __int16 *)k + 7) )
        {
          v58 = v57 * (_DWORD)(a1 + 1);
          v59 = (float)*(unsigned __int8 *)(v9 + v58);
          v60 = (float)*(unsigned __int8 *)(v9 + v58 + 1);
          v61 = v57 + (_DWORD)a1 * v57;
          v62 = (float)*(unsigned __int8 *)(v9 + v61);
          v63 = (float)*(unsigned __int8 *)(v9 + v61 + 1);
          v83 = (float)*(unsigned __int8 *)(v9 + (_DWORD)a1 * v57);
          v64 = (float)*(unsigned __int8 *)(v9 + (_DWORD)a1 * v57 + 1);
          v65 = a4[1];
          v66 = a4[2];
          v154 = v60;
          v156 = v62;
          v157 = v63;
          v160 = v64;
          v159 = v83;
          v155 = 0;
          v158 = 0;
          v153 = v59;
          v161 = 0;
          if ( v65 == v66 )
          {
            std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              a4,
              v65,
              &v153);
          }
          else
          {
            *(float *)v65 = v59;
            *(float *)(v65 + 4) = v154;
            *(_DWORD *)(v65 + 8) = v155;
            *(float *)(v65 + 12) = v156;
            *(float *)(v65 + 16) = v157;
            *(_DWORD *)(v65 + 20) = v158;
            *(float *)(v65 + 24) = v159;
            *(float *)(v65 + 28) = v160;
            *(_DWORD *)(v65 + 32) = v161;
            a4[1] += 36;
          }
          a1 = (unsigned __int16 *)((char *)a1 + 3);
          if ( v93 <= (unsigned int)a1 )
            break;
        }
        v4 = k;
      }
      break;
    default:
      return;
  }
  if ( v9 )
  {
    v21 = (_BYTE *)*v4;
    v22 = *(_BYTE *)(*v4 + 19);
    if ( (v22 & 0x1Fu) <= 1 )
    {
      if ( (v21[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v21 + 24))(*v4);
      v21[19] = 0;
    }
    else
    {
      v21[19] = ((v22 & 0x1F) - 1) | v22 & 0xE0;
    }
  }
}


// ===== 5941b8 glitch::scene::`anonymous namespace'::createTriangles<short,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(ushort const*,uint,glitch::video::SVertexStream const&,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>> &) =====
void __fastcall glitch::scene::`anonymous namespace'::createTriangles<short,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(
        unsigned __int16 *a1,
        unsigned int a2,
        int a3,
        _DWORD *a4)
{
  _DWORD *v4; // r5
  int v5; // r2
  int v9; // r7
  int v10; // r10
  float v11; // r5
  float v12; // r11
  int v13; // r10
  float v14; // r9
  int v15; // r2
  float v16; // r10
  float v17; // r0
  int v18; // r1
  int v19; // r3
  float v20; // r2
  _BYTE *v21; // r4
  char v22; // r3
  int v23; // r8
  int v24; // r0
  int v25; // r8
  float v26; // r11
  float v27; // r9
  int v28; // r2
  float v29; // r10
  float v30; // r8
  int v31; // r1
  int v32; // r3
  int v33; // r8
  int v34; // r0
  int v35; // r8
  float v36; // r11
  float v37; // r9
  int v38; // r2
  float v39; // r10
  float v40; // r8
  int v41; // r1
  int v42; // r3
  int v43; // r3
  int v44; // r8
  int v45; // r0
  int v46; // r8
  float v47; // r5
  float v48; // r11
  float v49; // r9
  int v50; // r2
  float v51; // r10
  float v52; // r8
  float v53; // r0
  float v54; // r12
  int v55; // r1
  int v56; // r3
  int v57; // r3
  int v58; // r8
  float v59; // r5
  float v60; // r11
  int v61; // r8
  float v62; // r9
  float v63; // r8
  float v64; // r0
  int v65; // r1
  int v66; // r3
  int v67; // r3
  int v68; // r8
  int v69; // r0
  int v70; // r8
  float v71; // r5
  float v72; // r11
  float v73; // r9
  int v74; // r2
  float v75; // r10
  float v76; // r8
  float v77; // r0
  float v78; // r12
  int v79; // r1
  int v80; // r3
  float v81; // [sp+4h] [bp-F8h]
  float v82; // [sp+4h] [bp-F8h]
  float v83; // [sp+4h] [bp-F8h]
  int v84; // [sp+8h] [bp-F4h]
  int v85; // [sp+8h] [bp-F4h]
  float v86; // [sp+8h] [bp-F4h]
  int v87; // [sp+8h] [bp-F4h]
  float v88; // [sp+8h] [bp-F4h]
  unsigned __int16 *v89; // [sp+Ch] [bp-F0h]
  __int16 *v90; // [sp+Ch] [bp-F0h]
  __int16 *v91; // [sp+Ch] [bp-F0h]
  __int16 *v92; // [sp+Ch] [bp-F0h]
  unsigned int v93; // [sp+Ch] [bp-F0h]
  __int16 *v94; // [sp+Ch] [bp-F0h]
  _DWORD *v95; // [sp+10h] [bp-ECh]
  float v96; // [sp+10h] [bp-ECh]
  float v97; // [sp+10h] [bp-ECh]
  float v98; // [sp+10h] [bp-ECh]
  _DWORD *k; // [sp+10h] [bp-ECh]
  float v100; // [sp+10h] [bp-ECh]
  unsigned __int16 *v101; // [sp+14h] [bp-E8h]
  unsigned __int16 *v102; // [sp+14h] [bp-E8h]
  unsigned int v103; // [sp+14h] [bp-E8h]
  unsigned int v104; // [sp+14h] [bp-E8h]
  _DWORD *v105; // [sp+18h] [bp-E4h]
  _DWORD *j; // [sp+18h] [bp-E4h]
  _DWORD *i; // [sp+18h] [bp-E4h]
  float v108; // [sp+20h] [bp-DCh] BYREF
  float v109; // [sp+24h] [bp-D8h]
  float v110; // [sp+28h] [bp-D4h]
  float v111; // [sp+2Ch] [bp-D0h]
  float v112; // [sp+30h] [bp-CCh]
  float v113; // [sp+34h] [bp-C8h]
  float v114; // [sp+38h] [bp-C4h]
  float v115; // [sp+3Ch] [bp-C0h]
  float v116; // [sp+40h] [bp-BCh]
  float v117; // [sp+44h] [bp-B8h] BYREF
  float v118; // [sp+48h] [bp-B4h]
  float v119; // [sp+4Ch] [bp-B0h]
  float v120; // [sp+50h] [bp-ACh]
  float v121; // [sp+54h] [bp-A8h]
  float v122; // [sp+58h] [bp-A4h]
  float v123; // [sp+5Ch] [bp-A0h]
  float v124; // [sp+60h] [bp-9Ch]
  float v125; // [sp+64h] [bp-98h]
  float v126; // [sp+68h] [bp-94h] BYREF
  float v127; // [sp+6Ch] [bp-90h]
  float v128; // [sp+70h] [bp-8Ch]
  float v129; // [sp+74h] [bp-88h]
  float v130; // [sp+78h] [bp-84h]
  float v131; // [sp+7Ch] [bp-80h]
  float v132; // [sp+80h] [bp-7Ch]
  float v133; // [sp+84h] [bp-78h]
  float v134; // [sp+88h] [bp-74h]
  float v135; // [sp+8Ch] [bp-70h] BYREF
  float v136; // [sp+90h] [bp-6Ch]
  float v137; // [sp+94h] [bp-68h]
  float v138; // [sp+98h] [bp-64h]
  float v139; // [sp+9Ch] [bp-60h]
  float v140; // [sp+A0h] [bp-5Ch]
  float v141; // [sp+A4h] [bp-58h]
  float v142; // [sp+A8h] [bp-54h]
  float v143; // [sp+ACh] [bp-50h]
  float v144; // [sp+B0h] [bp-4Ch] BYREF
  float v145; // [sp+B4h] [bp-48h]
  int v146; // [sp+B8h] [bp-44h]
  float v147; // [sp+BCh] [bp-40h]
  float v148; // [sp+C0h] [bp-3Ch]
  int v149; // [sp+C4h] [bp-38h]
  float v150; // [sp+C8h] [bp-34h]
  float v151; // [sp+CCh] [bp-30h]
  int v152; // [sp+D0h] [bp-2Ch]
  float v153; // [sp+D4h] [bp-28h] BYREF
  float v154; // [sp+D8h] [bp-24h]
  int v155; // [sp+DCh] [bp-20h]
  float v156; // [sp+E0h] [bp-1Ch]
  float v157; // [sp+E4h] [bp-18h]
  int v158; // [sp+E8h] [bp-14h]
  float v159; // [sp+ECh] [bp-10h]
  float v160; // [sp+F0h] [bp-Ch]
  int v161; // [sp+F4h] [bp-8h]

  v4 = (_DWORD *)a3;
  v5 = *(unsigned __int16 *)(a3 + 12);
  switch ( v5 )
  {
    case 3:
      v9 = glitch::video::IBuffer::map(*v4, 1) + v4[1];
      if ( !a1 )
      {
        if ( a2 )
        {
          v67 = *((unsigned __int16 *)v4 + 7);
          v104 = a2;
          for ( i = v4; ; v67 = *((unsigned __int16 *)i + 7) )
          {
            v68 = v67 * (_DWORD)(a1 + 1);
            v69 = *(__int16 *)(v9 + v68);
            v70 = v9 + v68;
            v71 = (float)v69;
            v72 = (float)*(__int16 *)(v70 + 2);
            v73 = (float)*(__int16 *)(v70 + 4);
            v74 = v67 + (_DWORD)a1 * v67;
            v75 = (float)*(__int16 *)(v9 + v74);
            v76 = (float)*(__int16 *)(v9 + v74 + 2);
            v94 = (__int16 *)(v9 + (_DWORD)a1 * v67);
            v100 = (float)v94[1];
            v77 = (float)v94[2];
            v78 = (float)*v94;
            v79 = a4[1];
            v80 = a4[2];
            v140 = (float)*(__int16 *)(v9 + v74 + 4);
            v136 = v72;
            v137 = v73;
            v143 = v77;
            v138 = v75;
            v139 = v76;
            v141 = v78;
            v135 = v71;
            v142 = v100;
            if ( v79 == v80 )
            {
              std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
                a4,
                v79,
                &v135);
            }
            else
            {
              *(float *)v79 = v71;
              *(float *)(v79 + 4) = v136;
              *(float *)(v79 + 8) = v137;
              *(float *)(v79 + 12) = v138;
              *(float *)(v79 + 16) = v139;
              *(float *)(v79 + 20) = v140;
              *(float *)(v79 + 24) = v141;
              *(float *)(v79 + 28) = v142;
              *(float *)(v79 + 32) = v143;
              a4[1] += 36;
            }
            a1 = (unsigned __int16 *)((char *)a1 + 3);
            if ( v104 <= (unsigned int)a1 )
              break;
          }
          v4 = i;
        }
        break;
      }
      v102 = &a1[a2];
      if ( a1 != v102 )
      {
        v105 = v4;
        do
        {
          v33 = a1[2] * *((unsigned __int16 *)v4 + 7);
          v34 = *(__int16 *)(v9 + v33);
          v87 = *((unsigned __int16 *)v4 + 7);
          v35 = v9 + v33;
          v36 = (float)*(__int16 *)(v35 + 2);
          v37 = (float)*(__int16 *)(v35 + 4);
          v38 = v87 * a1[1];
          v39 = (float)*(__int16 *)(v9 + v38);
          v40 = (float)*(__int16 *)(v9 + v38 + 2);
          v82 = (float)*(__int16 *)(v9 + v38 + 4);
          v91 = (__int16 *)(v9 + v87 * *a1);
          v88 = (float)*v91;
          v97 = (float)v91[1];
          v41 = a4[1];
          v42 = a4[2];
          v134 = (float)v91[2];
          v127 = v36;
          v128 = v37;
          v131 = v82;
          v129 = v39;
          v130 = v40;
          v132 = v88;
          v133 = v97;
          v126 = (float)v34;
          if ( v41 == v42 )
          {
            std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              a4,
              v41,
              &v126);
          }
          else
          {
            *(float *)v41 = (float)v34;
            *(float *)(v41 + 4) = v127;
            *(float *)(v41 + 8) = v128;
            *(float *)(v41 + 12) = v129;
            *(float *)(v41 + 16) = v130;
            *(float *)(v41 + 20) = v131;
            *(float *)(v41 + 24) = v132;
            *(float *)(v41 + 28) = v133;
            *(float *)(v41 + 32) = v134;
            a4[1] += 36;
          }
          a1 += 3;
        }
        while ( v102 != a1 );
        goto LABEL_21;
      }
      break;
    case 4:
      v9 = glitch::video::IBuffer::map(*v4, 1) + v4[1];
      if ( !a1 )
      {
        if ( a2 )
        {
          v43 = *((unsigned __int16 *)v4 + 7);
          v103 = a2;
          for ( j = v4; ; v43 = *((unsigned __int16 *)j + 7) )
          {
            v44 = v43 * (_DWORD)(a1 + 1);
            v45 = *(__int16 *)(v9 + v44);
            v46 = v9 + v44;
            v47 = (float)v45;
            v48 = (float)*(__int16 *)(v46 + 2);
            v49 = (float)*(__int16 *)(v46 + 4);
            v50 = v43 + (_DWORD)a1 * v43;
            v51 = (float)*(__int16 *)(v9 + v50);
            v52 = (float)*(__int16 *)(v9 + v50 + 2);
            v92 = (__int16 *)(v9 + (_DWORD)a1 * v43);
            v98 = (float)v92[1];
            v53 = (float)v92[2];
            v54 = (float)*v92;
            v55 = a4[1];
            v56 = a4[2];
            v122 = (float)*(__int16 *)(v9 + v50 + 4);
            v118 = v48;
            v119 = v49;
            v125 = v53;
            v120 = v51;
            v121 = v52;
            v123 = v54;
            v117 = v47;
            v124 = v98;
            if ( v55 == v56 )
            {
              std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
                a4,
                v55,
                &v117);
            }
            else
            {
              *(float *)v55 = v47;
              *(float *)(v55 + 4) = v118;
              *(float *)(v55 + 8) = v119;
              *(float *)(v55 + 12) = v120;
              *(float *)(v55 + 16) = v121;
              *(float *)(v55 + 20) = v122;
              *(float *)(v55 + 24) = v123;
              *(float *)(v55 + 28) = v124;
              *(float *)(v55 + 32) = v125;
              a4[1] += 36;
            }
            a1 = (unsigned __int16 *)((char *)a1 + 3);
            if ( v103 <= (unsigned int)a1 )
              break;
          }
          v4 = j;
        }
        break;
      }
      v101 = &a1[a2];
      if ( a1 != v101 )
      {
        v105 = v4;
        do
        {
          v23 = a1[2] * *((unsigned __int16 *)v4 + 7);
          v24 = *(__int16 *)(v9 + v23);
          v85 = *((unsigned __int16 *)v4 + 7);
          v25 = v9 + v23;
          v26 = (float)*(__int16 *)(v25 + 2);
          v27 = (float)*(__int16 *)(v25 + 4);
          v28 = v85 * a1[1];
          v29 = (float)*(__int16 *)(v9 + v28);
          v30 = (float)*(__int16 *)(v9 + v28 + 2);
          v81 = (float)*(__int16 *)(v9 + v28 + 4);
          v90 = (__int16 *)(v9 + v85 * *a1);
          v86 = (float)*v90;
          v96 = (float)v90[1];
          v31 = a4[1];
          v32 = a4[2];
          v116 = (float)v90[2];
          v109 = v26;
          v110 = v27;
          v113 = v81;
          v111 = v29;
          v112 = v30;
          v114 = v86;
          v115 = v96;
          v108 = (float)v24;
          if ( v31 == v32 )
          {
            std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              a4,
              v31,
              &v108);
          }
          else
          {
            *(float *)v31 = (float)v24;
            *(float *)(v31 + 4) = v109;
            *(float *)(v31 + 8) = v110;
            *(float *)(v31 + 12) = v111;
            *(float *)(v31 + 16) = v112;
            *(float *)(v31 + 20) = v113;
            *(float *)(v31 + 24) = v114;
            *(float *)(v31 + 28) = v115;
            *(float *)(v31 + 32) = v116;
            a4[1] += 36;
          }
          a1 += 3;
        }
        while ( v101 != a1 );
LABEL_21:
        v4 = v105;
      }
      break;
    case 2:
      v9 = glitch::video::IBuffer::map(*v4, 1) + v4[1];
      if ( a1 )
      {
        v89 = &a1[a2];
        if ( a1 != v89 )
        {
          v95 = v4;
          do
          {
            v10 = a1[2] * *((unsigned __int16 *)v95 + 7);
            v84 = *((unsigned __int16 *)v95 + 7);
            v11 = (float)*(__int16 *)(v9 + v10);
            v12 = (float)*(__int16 *)(v9 + v10 + 2);
            v13 = v84 * a1[1];
            v14 = (float)*(__int16 *)(v9 + v13);
            v15 = *a1;
            v16 = (float)*(__int16 *)(v9 + v13 + 2);
            v17 = (float)*(__int16 *)(v9 + v84 * v15 + 2);
            v18 = a4[1];
            v19 = a4[2];
            v20 = (float)*(__int16 *)(v9 + v84 * v15);
            v145 = v12;
            v147 = v14;
            v151 = v17;
            v148 = v16;
            v150 = v20;
            v146 = 0;
            v144 = v11;
            v149 = 0;
            v152 = 0;
            if ( v18 == v19 )
            {
              std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
                a4,
                v18,
                &v144);
            }
            else
            {
              *(float *)v18 = v11;
              *(float *)(v18 + 4) = v145;
              *(_DWORD *)(v18 + 8) = v146;
              *(float *)(v18 + 12) = v147;
              *(float *)(v18 + 16) = v148;
              *(_DWORD *)(v18 + 20) = v149;
              *(float *)(v18 + 24) = v150;
              *(float *)(v18 + 28) = v151;
              *(_DWORD *)(v18 + 32) = v152;
              a4[1] += 36;
            }
            a1 += 3;
          }
          while ( v89 != a1 );
          v4 = v95;
        }
      }
      else if ( a2 )
      {
        v57 = *((unsigned __int16 *)v4 + 7);
        v93 = a2;
        for ( k = v4; ; v57 = *((unsigned __int16 *)k + 7) )
        {
          v58 = v57 * (_DWORD)(a1 + 1);
          v59 = (float)*(__int16 *)(v9 + v58);
          v60 = (float)*(__int16 *)(v9 + v58 + 2);
          v61 = v57 + (_DWORD)a1 * v57;
          v62 = (float)*(__int16 *)(v9 + v61);
          v63 = (float)*(__int16 *)(v9 + v61 + 2);
          v83 = (float)*(__int16 *)(v9 + (_DWORD)a1 * v57);
          v64 = (float)*(__int16 *)(v9 + (_DWORD)a1 * v57 + 2);
          v65 = a4[1];
          v66 = a4[2];
          v154 = v60;
          v156 = v62;
          v157 = v63;
          v160 = v64;
          v159 = v83;
          v155 = 0;
          v158 = 0;
          v153 = v59;
          v161 = 0;
          if ( v65 == v66 )
          {
            std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              a4,
              v65,
              &v153);
          }
          else
          {
            *(float *)v65 = v59;
            *(float *)(v65 + 4) = v154;
            *(_DWORD *)(v65 + 8) = v155;
            *(float *)(v65 + 12) = v156;
            *(float *)(v65 + 16) = v157;
            *(_DWORD *)(v65 + 20) = v158;
            *(float *)(v65 + 24) = v159;
            *(float *)(v65 + 28) = v160;
            *(_DWORD *)(v65 + 32) = v161;
            a4[1] += 36;
          }
          a1 = (unsigned __int16 *)((char *)a1 + 3);
          if ( v93 <= (unsigned int)a1 )
            break;
        }
        v4 = k;
      }
      break;
    default:
      return;
  }
  if ( v9 )
  {
    v21 = (_BYTE *)*v4;
    v22 = *(_BYTE *)(*v4 + 19);
    if ( (v22 & 0x1Fu) <= 1 )
    {
      if ( (v21[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v21 + 24))(*v4);
      v21[19] = 0;
    }
    else
    {
      v21[19] = ((v22 & 0x1F) - 1) | v22 & 0xE0;
    }
  }
}


// ===== 594b68 glitch::scene::`anonymous namespace'::createTriangles<ushort,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(ushort const*,uint,glitch::video::SVertexStream const&,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>> &) =====
void __fastcall glitch::scene::`anonymous namespace'::createTriangles<unsigned short,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(
        unsigned __int16 *a1,
        unsigned int a2,
        int a3,
        _DWORD *a4)
{
  _DWORD *v4; // r5
  int v5; // r2
  int v9; // r7
  int v10; // r10
  float v11; // r5
  float v12; // r11
  int v13; // r10
  float v14; // r9
  int v15; // r2
  float v16; // r10
  float v17; // r0
  int v18; // r1
  int v19; // r3
  float v20; // r2
  _BYTE *v21; // r4
  char v22; // r3
  int v23; // r8
  unsigned int v24; // r0
  int v25; // r8
  float v26; // r11
  float v27; // r9
  int v28; // r2
  float v29; // r10
  float v30; // r8
  int v31; // r1
  int v32; // r3
  int v33; // r8
  unsigned int v34; // r0
  int v35; // r8
  float v36; // r11
  float v37; // r9
  int v38; // r2
  float v39; // r10
  float v40; // r8
  int v41; // r1
  int v42; // r3
  int v43; // r3
  int v44; // r8
  unsigned int v45; // r0
  int v46; // r8
  float v47; // r5
  float v48; // r11
  float v49; // r9
  int v50; // r2
  float v51; // r10
  float v52; // r8
  float v53; // r0
  float v54; // r12
  int v55; // r1
  int v56; // r3
  int v57; // r3
  int v58; // r8
  float v59; // r5
  float v60; // r11
  int v61; // r8
  float v62; // r9
  float v63; // r8
  float v64; // r0
  int v65; // r1
  int v66; // r3
  int v67; // r3
  int v68; // r8
  unsigned int v69; // r0
  int v70; // r8
  float v71; // r5
  float v72; // r11
  float v73; // r9
  int v74; // r2
  float v75; // r10
  float v76; // r8
  float v77; // r0
  float v78; // r12
  int v79; // r1
  int v80; // r3
  float v81; // [sp+4h] [bp-F8h]
  float v82; // [sp+4h] [bp-F8h]
  float v83; // [sp+4h] [bp-F8h]
  int v84; // [sp+8h] [bp-F4h]
  int v85; // [sp+8h] [bp-F4h]
  float v86; // [sp+8h] [bp-F4h]
  int v87; // [sp+8h] [bp-F4h]
  float v88; // [sp+8h] [bp-F4h]
  unsigned __int16 *v89; // [sp+Ch] [bp-F0h]
  unsigned __int16 *v90; // [sp+Ch] [bp-F0h]
  unsigned __int16 *v91; // [sp+Ch] [bp-F0h]
  unsigned __int16 *v92; // [sp+Ch] [bp-F0h]
  unsigned int v93; // [sp+Ch] [bp-F0h]
  unsigned __int16 *v94; // [sp+Ch] [bp-F0h]
  _DWORD *v95; // [sp+10h] [bp-ECh]
  float v96; // [sp+10h] [bp-ECh]
  float v97; // [sp+10h] [bp-ECh]
  float v98; // [sp+10h] [bp-ECh]
  _DWORD *k; // [sp+10h] [bp-ECh]
  float v100; // [sp+10h] [bp-ECh]
  unsigned __int16 *v101; // [sp+14h] [bp-E8h]
  unsigned __int16 *v102; // [sp+14h] [bp-E8h]
  unsigned int v103; // [sp+14h] [bp-E8h]
  unsigned int v104; // [sp+14h] [bp-E8h]
  _DWORD *v105; // [sp+18h] [bp-E4h]
  _DWORD *j; // [sp+18h] [bp-E4h]
  _DWORD *i; // [sp+18h] [bp-E4h]
  float v108; // [sp+20h] [bp-DCh] BYREF
  float v109; // [sp+24h] [bp-D8h]
  float v110; // [sp+28h] [bp-D4h]
  float v111; // [sp+2Ch] [bp-D0h]
  float v112; // [sp+30h] [bp-CCh]
  float v113; // [sp+34h] [bp-C8h]
  float v114; // [sp+38h] [bp-C4h]
  float v115; // [sp+3Ch] [bp-C0h]
  float v116; // [sp+40h] [bp-BCh]
  float v117; // [sp+44h] [bp-B8h] BYREF
  float v118; // [sp+48h] [bp-B4h]
  float v119; // [sp+4Ch] [bp-B0h]
  float v120; // [sp+50h] [bp-ACh]
  float v121; // [sp+54h] [bp-A8h]
  float v122; // [sp+58h] [bp-A4h]
  float v123; // [sp+5Ch] [bp-A0h]
  float v124; // [sp+60h] [bp-9Ch]
  float v125; // [sp+64h] [bp-98h]
  float v126; // [sp+68h] [bp-94h] BYREF
  float v127; // [sp+6Ch] [bp-90h]
  float v128; // [sp+70h] [bp-8Ch]
  float v129; // [sp+74h] [bp-88h]
  float v130; // [sp+78h] [bp-84h]
  float v131; // [sp+7Ch] [bp-80h]
  float v132; // [sp+80h] [bp-7Ch]
  float v133; // [sp+84h] [bp-78h]
  float v134; // [sp+88h] [bp-74h]
  float v135; // [sp+8Ch] [bp-70h] BYREF
  float v136; // [sp+90h] [bp-6Ch]
  float v137; // [sp+94h] [bp-68h]
  float v138; // [sp+98h] [bp-64h]
  float v139; // [sp+9Ch] [bp-60h]
  float v140; // [sp+A0h] [bp-5Ch]
  float v141; // [sp+A4h] [bp-58h]
  float v142; // [sp+A8h] [bp-54h]
  float v143; // [sp+ACh] [bp-50h]
  float v144; // [sp+B0h] [bp-4Ch] BYREF
  float v145; // [sp+B4h] [bp-48h]
  int v146; // [sp+B8h] [bp-44h]
  float v147; // [sp+BCh] [bp-40h]
  float v148; // [sp+C0h] [bp-3Ch]
  int v149; // [sp+C4h] [bp-38h]
  float v150; // [sp+C8h] [bp-34h]
  float v151; // [sp+CCh] [bp-30h]
  int v152; // [sp+D0h] [bp-2Ch]
  float v153; // [sp+D4h] [bp-28h] BYREF
  float v154; // [sp+D8h] [bp-24h]
  int v155; // [sp+DCh] [bp-20h]
  float v156; // [sp+E0h] [bp-1Ch]
  float v157; // [sp+E4h] [bp-18h]
  int v158; // [sp+E8h] [bp-14h]
  float v159; // [sp+ECh] [bp-10h]
  float v160; // [sp+F0h] [bp-Ch]
  int v161; // [sp+F4h] [bp-8h]

  v4 = (_DWORD *)a3;
  v5 = *(unsigned __int16 *)(a3 + 12);
  switch ( v5 )
  {
    case 3:
      v9 = glitch::video::IBuffer::map(*v4, 1) + v4[1];
      if ( !a1 )
      {
        if ( a2 )
        {
          v67 = *((unsigned __int16 *)v4 + 7);
          v104 = a2;
          for ( i = v4; ; v67 = *((unsigned __int16 *)i + 7) )
          {
            v68 = v67 * (_DWORD)(a1 + 1);
            v69 = *(unsigned __int16 *)(v9 + v68);
            v70 = v9 + v68;
            v71 = (float)v69;
            v72 = (float)*(unsigned __int16 *)(v70 + 2);
            v73 = (float)*(unsigned __int16 *)(v70 + 4);
            v74 = v67 + (_DWORD)a1 * v67;
            v75 = (float)*(unsigned __int16 *)(v9 + v74);
            v76 = (float)*(unsigned __int16 *)(v9 + v74 + 2);
            v94 = (unsigned __int16 *)(v9 + (_DWORD)a1 * v67);
            v100 = (float)v94[1];
            v77 = (float)v94[2];
            v78 = (float)*v94;
            v79 = a4[1];
            v80 = a4[2];
            v140 = (float)*(unsigned __int16 *)(v9 + v74 + 4);
            v136 = v72;
            v137 = v73;
            v143 = v77;
            v138 = v75;
            v139 = v76;
            v141 = v78;
            v135 = v71;
            v142 = v100;
            if ( v79 == v80 )
            {
              std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
                a4,
                v79,
                &v135);
            }
            else
            {
              *(float *)v79 = v71;
              *(float *)(v79 + 4) = v136;
              *(float *)(v79 + 8) = v137;
              *(float *)(v79 + 12) = v138;
              *(float *)(v79 + 16) = v139;
              *(float *)(v79 + 20) = v140;
              *(float *)(v79 + 24) = v141;
              *(float *)(v79 + 28) = v142;
              *(float *)(v79 + 32) = v143;
              a4[1] += 36;
            }
            a1 = (unsigned __int16 *)((char *)a1 + 3);
            if ( v104 <= (unsigned int)a1 )
              break;
          }
          v4 = i;
        }
        break;
      }
      v102 = &a1[a2];
      if ( a1 != v102 )
      {
        v105 = v4;
        do
        {
          v33 = a1[2] * *((unsigned __int16 *)v4 + 7);
          v34 = *(unsigned __int16 *)(v9 + v33);
          v87 = *((unsigned __int16 *)v4 + 7);
          v35 = v9 + v33;
          v36 = (float)*(unsigned __int16 *)(v35 + 2);
          v37 = (float)*(unsigned __int16 *)(v35 + 4);
          v38 = v87 * a1[1];
          v39 = (float)*(unsigned __int16 *)(v9 + v38);
          v40 = (float)*(unsigned __int16 *)(v9 + v38 + 2);
          v82 = (float)*(unsigned __int16 *)(v9 + v38 + 4);
          v91 = (unsigned __int16 *)(v9 + v87 * *a1);
          v88 = (float)*v91;
          v97 = (float)v91[1];
          v41 = a4[1];
          v42 = a4[2];
          v134 = (float)v91[2];
          v127 = v36;
          v128 = v37;
          v131 = v82;
          v129 = v39;
          v130 = v40;
          v132 = v88;
          v133 = v97;
          v126 = (float)v34;
          if ( v41 == v42 )
          {
            std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              a4,
              v41,
              &v126);
          }
          else
          {
            *(float *)v41 = (float)v34;
            *(float *)(v41 + 4) = v127;
            *(float *)(v41 + 8) = v128;
            *(float *)(v41 + 12) = v129;
            *(float *)(v41 + 16) = v130;
            *(float *)(v41 + 20) = v131;
            *(float *)(v41 + 24) = v132;
            *(float *)(v41 + 28) = v133;
            *(float *)(v41 + 32) = v134;
            a4[1] += 36;
          }
          a1 += 3;
        }
        while ( v102 != a1 );
        goto LABEL_21;
      }
      break;
    case 4:
      v9 = glitch::video::IBuffer::map(*v4, 1) + v4[1];
      if ( !a1 )
      {
        if ( a2 )
        {
          v43 = *((unsigned __int16 *)v4 + 7);
          v103 = a2;
          for ( j = v4; ; v43 = *((unsigned __int16 *)j + 7) )
          {
            v44 = v43 * (_DWORD)(a1 + 1);
            v45 = *(unsigned __int16 *)(v9 + v44);
            v46 = v9 + v44;
            v47 = (float)v45;
            v48 = (float)*(unsigned __int16 *)(v46 + 2);
            v49 = (float)*(unsigned __int16 *)(v46 + 4);
            v50 = v43 + (_DWORD)a1 * v43;
            v51 = (float)*(unsigned __int16 *)(v9 + v50);
            v52 = (float)*(unsigned __int16 *)(v9 + v50 + 2);
            v92 = (unsigned __int16 *)(v9 + (_DWORD)a1 * v43);
            v98 = (float)v92[1];
            v53 = (float)v92[2];
            v54 = (float)*v92;
            v55 = a4[1];
            v56 = a4[2];
            v122 = (float)*(unsigned __int16 *)(v9 + v50 + 4);
            v118 = v48;
            v119 = v49;
            v125 = v53;
            v120 = v51;
            v121 = v52;
            v123 = v54;
            v117 = v47;
            v124 = v98;
            if ( v55 == v56 )
            {
              std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
                a4,
                v55,
                &v117);
            }
            else
            {
              *(float *)v55 = v47;
              *(float *)(v55 + 4) = v118;
              *(float *)(v55 + 8) = v119;
              *(float *)(v55 + 12) = v120;
              *(float *)(v55 + 16) = v121;
              *(float *)(v55 + 20) = v122;
              *(float *)(v55 + 24) = v123;
              *(float *)(v55 + 28) = v124;
              *(float *)(v55 + 32) = v125;
              a4[1] += 36;
            }
            a1 = (unsigned __int16 *)((char *)a1 + 3);
            if ( v103 <= (unsigned int)a1 )
              break;
          }
          v4 = j;
        }
        break;
      }
      v101 = &a1[a2];
      if ( a1 != v101 )
      {
        v105 = v4;
        do
        {
          v23 = a1[2] * *((unsigned __int16 *)v4 + 7);
          v24 = *(unsigned __int16 *)(v9 + v23);
          v85 = *((unsigned __int16 *)v4 + 7);
          v25 = v9 + v23;
          v26 = (float)*(unsigned __int16 *)(v25 + 2);
          v27 = (float)*(unsigned __int16 *)(v25 + 4);
          v28 = v85 * a1[1];
          v29 = (float)*(unsigned __int16 *)(v9 + v28);
          v30 = (float)*(unsigned __int16 *)(v9 + v28 + 2);
          v81 = (float)*(unsigned __int16 *)(v9 + v28 + 4);
          v90 = (unsigned __int16 *)(v9 + v85 * *a1);
          v86 = (float)*v90;
          v96 = (float)v90[1];
          v31 = a4[1];
          v32 = a4[2];
          v116 = (float)v90[2];
          v109 = v26;
          v110 = v27;
          v113 = v81;
          v111 = v29;
          v112 = v30;
          v114 = v86;
          v115 = v96;
          v108 = (float)v24;
          if ( v31 == v32 )
          {
            std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              a4,
              v31,
              &v108);
          }
          else
          {
            *(float *)v31 = (float)v24;
            *(float *)(v31 + 4) = v109;
            *(float *)(v31 + 8) = v110;
            *(float *)(v31 + 12) = v111;
            *(float *)(v31 + 16) = v112;
            *(float *)(v31 + 20) = v113;
            *(float *)(v31 + 24) = v114;
            *(float *)(v31 + 28) = v115;
            *(float *)(v31 + 32) = v116;
            a4[1] += 36;
          }
          a1 += 3;
        }
        while ( v101 != a1 );
LABEL_21:
        v4 = v105;
      }
      break;
    case 2:
      v9 = glitch::video::IBuffer::map(*v4, 1) + v4[1];
      if ( a1 )
      {
        v89 = &a1[a2];
        if ( a1 != v89 )
        {
          v95 = v4;
          do
          {
            v10 = a1[2] * *((unsigned __int16 *)v95 + 7);
            v84 = *((unsigned __int16 *)v95 + 7);
            v11 = (float)*(unsigned __int16 *)(v9 + v10);
            v12 = (float)*(unsigned __int16 *)(v9 + v10 + 2);
            v13 = v84 * a1[1];
            v14 = (float)*(unsigned __int16 *)(v9 + v13);
            v15 = *a1;
            v16 = (float)*(unsigned __int16 *)(v9 + v13 + 2);
            v17 = (float)*(unsigned __int16 *)(v9 + v84 * v15 + 2);
            v18 = a4[1];
            v19 = a4[2];
            v20 = (float)*(unsigned __int16 *)(v9 + v84 * v15);
            v145 = v12;
            v147 = v14;
            v151 = v17;
            v148 = v16;
            v150 = v20;
            v146 = 0;
            v144 = v11;
            v149 = 0;
            v152 = 0;
            if ( v18 == v19 )
            {
              std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
                a4,
                v18,
                &v144);
            }
            else
            {
              *(float *)v18 = v11;
              *(float *)(v18 + 4) = v145;
              *(_DWORD *)(v18 + 8) = v146;
              *(float *)(v18 + 12) = v147;
              *(float *)(v18 + 16) = v148;
              *(_DWORD *)(v18 + 20) = v149;
              *(float *)(v18 + 24) = v150;
              *(float *)(v18 + 28) = v151;
              *(_DWORD *)(v18 + 32) = v152;
              a4[1] += 36;
            }
            a1 += 3;
          }
          while ( v89 != a1 );
          v4 = v95;
        }
      }
      else if ( a2 )
      {
        v57 = *((unsigned __int16 *)v4 + 7);
        v93 = a2;
        for ( k = v4; ; v57 = *((unsigned __int16 *)k + 7) )
        {
          v58 = v57 * (_DWORD)(a1 + 1);
          v59 = (float)*(unsigned __int16 *)(v9 + v58);
          v60 = (float)*(unsigned __int16 *)(v9 + v58 + 2);
          v61 = v57 + (_DWORD)a1 * v57;
          v62 = (float)*(unsigned __int16 *)(v9 + v61);
          v63 = (float)*(unsigned __int16 *)(v9 + v61 + 2);
          v83 = (float)*(unsigned __int16 *)(v9 + (_DWORD)a1 * v57);
          v64 = (float)*(unsigned __int16 *)(v9 + (_DWORD)a1 * v57 + 2);
          v65 = a4[1];
          v66 = a4[2];
          v154 = v60;
          v156 = v62;
          v157 = v63;
          v160 = v64;
          v159 = v83;
          v155 = 0;
          v158 = 0;
          v153 = v59;
          v161 = 0;
          if ( v65 == v66 )
          {
            std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              a4,
              v65,
              &v153);
          }
          else
          {
            *(float *)v65 = v59;
            *(float *)(v65 + 4) = v154;
            *(_DWORD *)(v65 + 8) = v155;
            *(float *)(v65 + 12) = v156;
            *(float *)(v65 + 16) = v157;
            *(_DWORD *)(v65 + 20) = v158;
            *(float *)(v65 + 24) = v159;
            *(float *)(v65 + 28) = v160;
            *(_DWORD *)(v65 + 32) = v161;
            a4[1] += 36;
          }
          a1 = (unsigned __int16 *)((char *)a1 + 3);
          if ( v93 <= (unsigned int)a1 )
            break;
        }
        v4 = k;
      }
      break;
    default:
      return;
  }
  if ( v9 )
  {
    v21 = (_BYTE *)*v4;
    v22 = *(_BYTE *)(*v4 + 19);
    if ( (v22 & 0x1Fu) <= 1 )
    {
      if ( (v21[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v21 + 24))(*v4);
      v21[19] = 0;
    }
    else
    {
      v21[19] = ((v22 & 0x1F) - 1) | v22 & 0xE0;
    }
  }
}


// ===== 595518 glitch::scene::`anonymous namespace'::createTriangles<int,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(ushort const*,uint,glitch::video::SVertexStream const&,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>> &) =====
void __fastcall glitch::scene::`anonymous namespace'::createTriangles<int,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(
        unsigned __int16 *a1,
        unsigned int a2,
        int a3,
        _DWORD *a4)
{
  _DWORD *v4; // r5
  int v5; // r2
  int v9; // r7
  int v10; // r10
  float v11; // r5
  float v12; // r11
  int v13; // r10
  float v14; // r9
  int v15; // r2
  float v16; // r10
  float v17; // r0
  int v18; // r1
  int v19; // r3
  float v20; // r2
  _BYTE *v21; // r4
  char v22; // r3
  int v23; // r8
  int v24; // r0
  int v25; // r8
  float v26; // r11
  float v27; // r9
  int v28; // r2
  float v29; // r10
  float v30; // r8
  int v31; // r1
  int v32; // r3
  int v33; // r8
  int v34; // r0
  int v35; // r8
  float v36; // r11
  float v37; // r9
  int v38; // r2
  float v39; // r10
  float v40; // r8
  int v41; // r1
  int v42; // r3
  int v43; // r3
  int v44; // r8
  int v45; // r0
  int v46; // r8
  float v47; // r5
  float v48; // r11
  float v49; // r9
  int v50; // r2
  float v51; // r10
  float v52; // r8
  float v53; // r0
  float v54; // r12
  int v55; // r1
  int v56; // r3
  int v57; // r3
  int v58; // r8
  float v59; // r5
  float v60; // r11
  int v61; // r8
  float v62; // r9
  float v63; // r8
  float v64; // r0
  int v65; // r1
  int v66; // r3
  int v67; // r3
  int v68; // r8
  int v69; // r0
  int v70; // r8
  float v71; // r5
  float v72; // r11
  float v73; // r9
  int v74; // r2
  float v75; // r10
  float v76; // r8
  float v77; // r0
  float v78; // r12
  int v79; // r1
  int v80; // r3
  float v81; // [sp+4h] [bp-F8h]
  float v82; // [sp+4h] [bp-F8h]
  float v83; // [sp+4h] [bp-F8h]
  int v84; // [sp+8h] [bp-F4h]
  int v85; // [sp+8h] [bp-F4h]
  float v86; // [sp+8h] [bp-F4h]
  int v87; // [sp+8h] [bp-F4h]
  float v88; // [sp+8h] [bp-F4h]
  unsigned __int16 *v89; // [sp+Ch] [bp-F0h]
  int *v90; // [sp+Ch] [bp-F0h]
  int *v91; // [sp+Ch] [bp-F0h]
  int *v92; // [sp+Ch] [bp-F0h]
  unsigned int v93; // [sp+Ch] [bp-F0h]
  int *v94; // [sp+Ch] [bp-F0h]
  _DWORD *v95; // [sp+10h] [bp-ECh]
  float v96; // [sp+10h] [bp-ECh]
  float v97; // [sp+10h] [bp-ECh]
  float v98; // [sp+10h] [bp-ECh]
  _DWORD *k; // [sp+10h] [bp-ECh]
  float v100; // [sp+10h] [bp-ECh]
  unsigned __int16 *v101; // [sp+14h] [bp-E8h]
  unsigned __int16 *v102; // [sp+14h] [bp-E8h]
  unsigned int v103; // [sp+14h] [bp-E8h]
  unsigned int v104; // [sp+14h] [bp-E8h]
  _DWORD *v105; // [sp+18h] [bp-E4h]
  _DWORD *j; // [sp+18h] [bp-E4h]
  _DWORD *i; // [sp+18h] [bp-E4h]
  float v108; // [sp+20h] [bp-DCh] BYREF
  float v109; // [sp+24h] [bp-D8h]
  float v110; // [sp+28h] [bp-D4h]
  float v111; // [sp+2Ch] [bp-D0h]
  float v112; // [sp+30h] [bp-CCh]
  float v113; // [sp+34h] [bp-C8h]
  float v114; // [sp+38h] [bp-C4h]
  float v115; // [sp+3Ch] [bp-C0h]
  float v116; // [sp+40h] [bp-BCh]
  float v117; // [sp+44h] [bp-B8h] BYREF
  float v118; // [sp+48h] [bp-B4h]
  float v119; // [sp+4Ch] [bp-B0h]
  float v120; // [sp+50h] [bp-ACh]
  float v121; // [sp+54h] [bp-A8h]
  float v122; // [sp+58h] [bp-A4h]
  float v123; // [sp+5Ch] [bp-A0h]
  float v124; // [sp+60h] [bp-9Ch]
  float v125; // [sp+64h] [bp-98h]
  float v126; // [sp+68h] [bp-94h] BYREF
  float v127; // [sp+6Ch] [bp-90h]
  float v128; // [sp+70h] [bp-8Ch]
  float v129; // [sp+74h] [bp-88h]
  float v130; // [sp+78h] [bp-84h]
  float v131; // [sp+7Ch] [bp-80h]
  float v132; // [sp+80h] [bp-7Ch]
  float v133; // [sp+84h] [bp-78h]
  float v134; // [sp+88h] [bp-74h]
  float v135; // [sp+8Ch] [bp-70h] BYREF
  float v136; // [sp+90h] [bp-6Ch]
  float v137; // [sp+94h] [bp-68h]
  float v138; // [sp+98h] [bp-64h]
  float v139; // [sp+9Ch] [bp-60h]
  float v140; // [sp+A0h] [bp-5Ch]
  float v141; // [sp+A4h] [bp-58h]
  float v142; // [sp+A8h] [bp-54h]
  float v143; // [sp+ACh] [bp-50h]
  float v144; // [sp+B0h] [bp-4Ch] BYREF
  float v145; // [sp+B4h] [bp-48h]
  int v146; // [sp+B8h] [bp-44h]
  float v147; // [sp+BCh] [bp-40h]
  float v148; // [sp+C0h] [bp-3Ch]
  int v149; // [sp+C4h] [bp-38h]
  float v150; // [sp+C8h] [bp-34h]
  float v151; // [sp+CCh] [bp-30h]
  int v152; // [sp+D0h] [bp-2Ch]
  float v153; // [sp+D4h] [bp-28h] BYREF
  float v154; // [sp+D8h] [bp-24h]
  int v155; // [sp+DCh] [bp-20h]
  float v156; // [sp+E0h] [bp-1Ch]
  float v157; // [sp+E4h] [bp-18h]
  int v158; // [sp+E8h] [bp-14h]
  float v159; // [sp+ECh] [bp-10h]
  float v160; // [sp+F0h] [bp-Ch]
  int v161; // [sp+F4h] [bp-8h]

  v4 = (_DWORD *)a3;
  v5 = *(unsigned __int16 *)(a3 + 12);
  switch ( v5 )
  {
    case 3:
      v9 = glitch::video::IBuffer::map(*v4, 1) + v4[1];
      if ( !a1 )
      {
        if ( a2 )
        {
          v67 = *((unsigned __int16 *)v4 + 7);
          v104 = a2;
          for ( i = v4; ; v67 = *((unsigned __int16 *)i + 7) )
          {
            v68 = v67 * (_DWORD)(a1 + 1);
            v69 = *(_DWORD *)(v9 + v68);
            v70 = v9 + v68;
            v71 = (float)v69;
            v72 = (float)*(int *)(v70 + 4);
            v73 = (float)*(int *)(v70 + 8);
            v74 = v67 + (_DWORD)a1 * v67;
            v75 = (float)*(int *)(v9 + v74);
            v76 = (float)*(int *)(v9 + v74 + 4);
            v94 = (int *)(v9 + (_DWORD)a1 * v67);
            v100 = (float)v94[1];
            v77 = (float)v94[2];
            v78 = (float)*v94;
            v79 = a4[1];
            v80 = a4[2];
            v140 = (float)*(int *)(v9 + v74 + 8);
            v136 = v72;
            v137 = v73;
            v143 = v77;
            v138 = v75;
            v139 = v76;
            v141 = v78;
            v135 = v71;
            v142 = v100;
            if ( v79 == v80 )
            {
              std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
                a4,
                v79,
                &v135);
            }
            else
            {
              *(float *)v79 = v71;
              *(float *)(v79 + 4) = v136;
              *(float *)(v79 + 8) = v137;
              *(float *)(v79 + 12) = v138;
              *(float *)(v79 + 16) = v139;
              *(float *)(v79 + 20) = v140;
              *(float *)(v79 + 24) = v141;
              *(float *)(v79 + 28) = v142;
              *(float *)(v79 + 32) = v143;
              a4[1] += 36;
            }
            a1 = (unsigned __int16 *)((char *)a1 + 3);
            if ( v104 <= (unsigned int)a1 )
              break;
          }
          v4 = i;
        }
        break;
      }
      v102 = &a1[a2];
      if ( a1 != v102 )
      {
        v105 = v4;
        do
        {
          v33 = a1[2] * *((unsigned __int16 *)v4 + 7);
          v34 = *(_DWORD *)(v9 + v33);
          v87 = *((unsigned __int16 *)v4 + 7);
          v35 = v9 + v33;
          v36 = (float)*(int *)(v35 + 4);
          v37 = (float)*(int *)(v35 + 8);
          v38 = v87 * a1[1];
          v39 = (float)*(int *)(v9 + v38);
          v40 = (float)*(int *)(v9 + v38 + 4);
          v82 = (float)*(int *)(v9 + v38 + 8);
          v91 = (int *)(v9 + v87 * *a1);
          v88 = (float)*v91;
          v97 = (float)v91[1];
          v41 = a4[1];
          v42 = a4[2];
          v134 = (float)v91[2];
          v127 = v36;
          v128 = v37;
          v131 = v82;
          v129 = v39;
          v130 = v40;
          v132 = v88;
          v133 = v97;
          v126 = (float)v34;
          if ( v41 == v42 )
          {
            std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              a4,
              v41,
              &v126);
          }
          else
          {
            *(float *)v41 = (float)v34;
            *(float *)(v41 + 4) = v127;
            *(float *)(v41 + 8) = v128;
            *(float *)(v41 + 12) = v129;
            *(float *)(v41 + 16) = v130;
            *(float *)(v41 + 20) = v131;
            *(float *)(v41 + 24) = v132;
            *(float *)(v41 + 28) = v133;
            *(float *)(v41 + 32) = v134;
            a4[1] += 36;
          }
          a1 += 3;
        }
        while ( v102 != a1 );
        goto LABEL_21;
      }
      break;
    case 4:
      v9 = glitch::video::IBuffer::map(*v4, 1) + v4[1];
      if ( !a1 )
      {
        if ( a2 )
        {
          v43 = *((unsigned __int16 *)v4 + 7);
          v103 = a2;
          for ( j = v4; ; v43 = *((unsigned __int16 *)j + 7) )
          {
            v44 = v43 * (_DWORD)(a1 + 1);
            v45 = *(_DWORD *)(v9 + v44);
            v46 = v9 + v44;
            v47 = (float)v45;
            v48 = (float)*(int *)(v46 + 4);
            v49 = (float)*(int *)(v46 + 8);
            v50 = v43 + (_DWORD)a1 * v43;
            v51 = (float)*(int *)(v9 + v50);
            v52 = (float)*(int *)(v9 + v50 + 4);
            v92 = (int *)(v9 + (_DWORD)a1 * v43);
            v98 = (float)v92[1];
            v53 = (float)v92[2];
            v54 = (float)*v92;
            v55 = a4[1];
            v56 = a4[2];
            v122 = (float)*(int *)(v9 + v50 + 8);
            v118 = v48;
            v119 = v49;
            v125 = v53;
            v120 = v51;
            v121 = v52;
            v123 = v54;
            v117 = v47;
            v124 = v98;
            if ( v55 == v56 )
            {
              std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
                a4,
                v55,
                &v117);
            }
            else
            {
              *(float *)v55 = v47;
              *(float *)(v55 + 4) = v118;
              *(float *)(v55 + 8) = v119;
              *(float *)(v55 + 12) = v120;
              *(float *)(v55 + 16) = v121;
              *(float *)(v55 + 20) = v122;
              *(float *)(v55 + 24) = v123;
              *(float *)(v55 + 28) = v124;
              *(float *)(v55 + 32) = v125;
              a4[1] += 36;
            }
            a1 = (unsigned __int16 *)((char *)a1 + 3);
            if ( v103 <= (unsigned int)a1 )
              break;
          }
          v4 = j;
        }
        break;
      }
      v101 = &a1[a2];
      if ( a1 != v101 )
      {
        v105 = v4;
        do
        {
          v23 = a1[2] * *((unsigned __int16 *)v4 + 7);
          v24 = *(_DWORD *)(v9 + v23);
          v85 = *((unsigned __int16 *)v4 + 7);
          v25 = v9 + v23;
          v26 = (float)*(int *)(v25 + 4);
          v27 = (float)*(int *)(v25 + 8);
          v28 = v85 * a1[1];
          v29 = (float)*(int *)(v9 + v28);
          v30 = (float)*(int *)(v9 + v28 + 4);
          v81 = (float)*(int *)(v9 + v28 + 8);
          v90 = (int *)(v9 + v85 * *a1);
          v86 = (float)*v90;
          v96 = (float)v90[1];
          v31 = a4[1];
          v32 = a4[2];
          v116 = (float)v90[2];
          v109 = v26;
          v110 = v27;
          v113 = v81;
          v111 = v29;
          v112 = v30;
          v114 = v86;
          v115 = v96;
          v108 = (float)v24;
          if ( v31 == v32 )
          {
            std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              a4,
              v31,
              &v108);
          }
          else
          {
            *(float *)v31 = (float)v24;
            *(float *)(v31 + 4) = v109;
            *(float *)(v31 + 8) = v110;
            *(float *)(v31 + 12) = v111;
            *(float *)(v31 + 16) = v112;
            *(float *)(v31 + 20) = v113;
            *(float *)(v31 + 24) = v114;
            *(float *)(v31 + 28) = v115;
            *(float *)(v31 + 32) = v116;
            a4[1] += 36;
          }
          a1 += 3;
        }
        while ( v101 != a1 );
LABEL_21:
        v4 = v105;
      }
      break;
    case 2:
      v9 = glitch::video::IBuffer::map(*v4, 1) + v4[1];
      if ( a1 )
      {
        v89 = &a1[a2];
        if ( a1 != v89 )
        {
          v95 = v4;
          do
          {
            v10 = a1[2] * *((unsigned __int16 *)v95 + 7);
            v84 = *((unsigned __int16 *)v95 + 7);
            v11 = (float)*(int *)(v9 + v10);
            v12 = (float)*(int *)(v9 + v10 + 4);
            v13 = v84 * a1[1];
            v14 = (float)*(int *)(v9 + v13);
            v15 = *a1;
            v16 = (float)*(int *)(v9 + v13 + 4);
            v17 = (float)*(int *)(v9 + v84 * v15 + 4);
            v18 = a4[1];
            v19 = a4[2];
            v20 = (float)*(int *)(v9 + v84 * v15);
            v145 = v12;
            v147 = v14;
            v151 = v17;
            v148 = v16;
            v150 = v20;
            v146 = 0;
            v144 = v11;
            v149 = 0;
            v152 = 0;
            if ( v18 == v19 )
            {
              std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
                a4,
                v18,
                &v144);
            }
            else
            {
              *(float *)v18 = v11;
              *(float *)(v18 + 4) = v145;
              *(_DWORD *)(v18 + 8) = v146;
              *(float *)(v18 + 12) = v147;
              *(float *)(v18 + 16) = v148;
              *(_DWORD *)(v18 + 20) = v149;
              *(float *)(v18 + 24) = v150;
              *(float *)(v18 + 28) = v151;
              *(_DWORD *)(v18 + 32) = v152;
              a4[1] += 36;
            }
            a1 += 3;
          }
          while ( v89 != a1 );
          v4 = v95;
        }
      }
      else if ( a2 )
      {
        v57 = *((unsigned __int16 *)v4 + 7);
        v93 = a2;
        for ( k = v4; ; v57 = *((unsigned __int16 *)k + 7) )
        {
          v58 = v57 * (_DWORD)(a1 + 1);
          v59 = (float)*(int *)(v9 + v58);
          v60 = (float)*(int *)(v9 + v58 + 4);
          v61 = v57 + (_DWORD)a1 * v57;
          v62 = (float)*(int *)(v9 + v61);
          v63 = (float)*(int *)(v9 + v61 + 4);
          v83 = (float)*(int *)(v9 + (_DWORD)a1 * v57);
          v64 = (float)*(int *)(v9 + (_DWORD)a1 * v57 + 4);
          v65 = a4[1];
          v66 = a4[2];
          v154 = v60;
          v156 = v62;
          v157 = v63;
          v160 = v64;
          v159 = v83;
          v155 = 0;
          v158 = 0;
          v153 = v59;
          v161 = 0;
          if ( v65 == v66 )
          {
            std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
              a4,
              v65,
              &v153);
          }
          else
          {
            *(float *)v65 = v59;
            *(float *)(v65 + 4) = v154;
            *(_DWORD *)(v65 + 8) = v155;
            *(float *)(v65 + 12) = v156;
            *(float *)(v65 + 16) = v157;
            *(_DWORD *)(v65 + 20) = v158;
            *(float *)(v65 + 24) = v159;
            *(float *)(v65 + 28) = v160;
            *(_DWORD *)(v65 + 32) = v161;
            a4[1] += 36;
          }
          a1 = (unsigned __int16 *)((char *)a1 + 3);
          if ( v93 <= (unsigned int)a1 )
            break;
        }
        v4 = k;
      }
      break;
    default:
      return;
  }
  if ( v9 )
  {
    v21 = (_BYTE *)*v4;
    v22 = *(_BYTE *)(*v4 + 19);
    if ( (v22 & 0x1Fu) <= 1 )
    {
      if ( (v21[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v21 + 24))(*v4);
      v21[19] = 0;
    }
    else
    {
      v21[19] = ((v22 & 0x1F) - 1) | v22 & 0xE0;
    }
  }
}


// ===== 595ec8 glitch::scene::CTriangleSelector::CTriangleSelector(boost::intrusive_ptr<glitch::scene::IMesh const> const&,glitch::scene::ISceneNode const*,bool) =====
int __fastcall glitch::scene::CTriangleSelector::CTriangleSelector(int a1, _DWORD *a2, int a3, char a4)
{
  int v5; // r5
  int v7; // r8
  unsigned int v8; // r6
  int v9; // r5
  glitch::IReferenceCounted *v10; // r9
  glitch::video::CVertexStreams *v11; // r11
  unsigned __int16 *v12; // r0
  int v13; // r2
  unsigned int v14; // r1
  _BYTE *v15; // r9
  char v16; // r3
  int v17; // r3
  const void *v19; // r0
  int v20; // r7
  int v21; // r5
  float v22; // r9
  int v23; // r6
  float v24; // r10
  float v25; // r8
  float v26; // r11
  float *v27; // r6
  float v28; // r10
  float v29; // r8
  float v30; // r7
  float v31; // r9
  float v32; // r11
  float *v33; // r6
  float v34; // r10
  float v35; // r8
  float v36; // r7
  float v37; // r9
  float v38; // r11
  float v39; // [sp+0h] [bp-64h]
  int v40; // [sp+4h] [bp-60h]
  _DWORD *v41; // [sp+8h] [bp-5Ch]
  int v42; // [sp+8h] [bp-5Ch]
  float v43; // [sp+10h] [bp-54h] BYREF
  float v44; // [sp+14h] [bp-50h]
  float v45; // [sp+18h] [bp-4Ch]
  float v46; // [sp+20h] [bp-44h]
  float v47; // [sp+24h] [bp-40h]
  float v48; // [sp+28h] [bp-3Ch]
  float v49; // [sp+30h] [bp-34h]
  float v50; // [sp+34h] [bp-30h]
  float v51; // [sp+38h] [bp-2Ch]
  float v52; // [sp+40h] [bp-24h]
  float v53; // [sp+44h] [bp-20h]
  float v54; // [sp+48h] [bp-1Ch]
  glitch::video::CVertexStreams *v55; // [sp+54h] [bp-10h] BYREF
  glitch::IReferenceCounted *v56; // [sp+58h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v57; // [sp+5Ch] [bp-8h] BYREF

  v5 = 0;
  *(_DWORD *)(a1 + 8) = a3;
  *(_BYTE *)(a1 + 24) = a4;
  *(_DWORD *)a1 = off_9767F0;
  *(_DWORD *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 76) = -1082130432;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 60) = 0;
  *(_DWORD *)(a1 + 68) = -1082130432;
  *(_DWORD *)(a1 + 72) = -1082130432;
  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 40) = 1065353216;
  *(_DWORD *)(a1 + 44) = 1065353216;
  *(_DWORD *)(a1 + 48) = 1065353216;
  *(_DWORD *)(a1 + 80) = 1065353216;
  *(_DWORD *)(a1 + 84) = 1065353216;
  *(_DWORD *)(a1 + 88) = 1065353216;
  *(_BYTE *)(a1 + 156) = 0;
  LC_API_MEMSET_0((void *)(a1 + 92), 0, 0x40u);
  *(_DWORD *)(a1 + 152) = 1065353216;
  *(_BYTE *)(a1 + 156) = 1;
  *(_DWORD *)(a1 + 92) = 1065353216;
  *(_DWORD *)(a1 + 112) = 1065353216;
  *(_DWORD *)(a1 + 132) = 1065353216;
  v7 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)*a2 + 16))(*a2);
  if ( v7 )
  {
    v8 = 0;
    do
    {
      (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int))(*(_DWORD *)*a2 + 20))(&v57, *a2, v5++);
      v8 += *((_DWORD *)v57 + 8);
      glitch::IReferenceCounted::drop(v57);
    }
    while ( v5 != v7 );
    v41 = (_DWORD *)(a1 + 12);
    v9 = 0;
    std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
      (_DWORD *)(a1 + 12),
      v8 / 3);
    do
    {
      while ( 1 )
      {
        (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int))(*(_DWORD *)*a2 + 20))(&v56, *a2, v9);
        v10 = v56;
        if ( v56 )
          glitch::IReferenceCounted::drop(v56);
        v55 = *((glitch::video::CVertexStreams **)v10 + 5);
        v11 = v55;
        if ( v55 )
          ++*(_DWORD *)v55;
        if ( v11 )
          v11 = v55;
        boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v55);
        v43 = 0.0;
        v44 = 0.0;
        if ( *((_WORD *)v10 + 23) == 6 )
        {
          if ( *((_DWORD *)v10 + 6) )
          {
            glitch::video::CPrimitiveStream::SMapBuffer<unsigned short const>::reset((_DWORD **)&v43, (_DWORD *)v10 + 6);
            v12 = (unsigned __int16 *)LODWORD(v44);
          }
          else
          {
            v12 = nullptr;
          }
          v13 = (int)v11 + 20;
          v14 = *((_DWORD *)v10 + 8);
          switch ( *((_WORD *)v11 + 15) )
          {
            case 0:
              glitch::scene::`anonymous namespace'::createTriangles<signed char,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(
                v12,
                v14,
                v13,
                v41);
              break;
            case 1:
              glitch::scene::`anonymous namespace'::createTriangles<unsigned char,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(
                v12,
                v14,
                v13,
                v41);
              break;
            case 2:
              glitch::scene::`anonymous namespace'::createTriangles<short,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(
                v12,
                v14,
                v13,
                v41);
              break;
            case 3:
              glitch::scene::`anonymous namespace'::createTriangles<unsigned short,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(
                v12,
                v14,
                v13,
                v41);
              break;
            case 4:
              glitch::scene::`anonymous namespace'::createTriangles<int,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(
                v12,
                v14,
                v13,
                v41);
              break;
            case 5:
              glitch::scene::`anonymous namespace'::createTriangles<unsigned int,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(
                v12,
                v14,
                v13,
                v41);
              break;
            case 6:
              glitch::scene::`anonymous namespace'::createTriangles<float,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(
                v12,
                v14,
                v13,
                v41);
              break;
            default:
              break;
          }
          if ( v44 != 0.0 )
            break;
        }
        if ( ++v9 == v7 )
          goto LABEL_22;
      }
      v15 = *(_BYTE **)LODWORD(v43);
      v16 = *(_BYTE *)(*(_DWORD *)LODWORD(v43) + 19);
      if ( (v16 & 0x1Fu) <= 1 )
      {
        if ( (v15[18] & 0x20) != 0 )
          (*(void (__fastcall **)(_DWORD, unsigned int))(*(_DWORD *)v15 + 24))(*(_DWORD *)LODWORD(v43), v14);
        v15[19] = 0;
      }
      else
      {
        v15[19] = ((v16 & 0x1F) - 1) | v16 & 0xE0;
      }
      ++v9;
      v43 = 0.0;
      v44 = 0.0;
    }
    while ( v9 != v7 );
  }
  else
  {
    std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
      (_DWORD *)(a1 + 12),
      0);
  }
LABEL_22:
  v17 = *(_DWORD *)(a1 + 8);
  if ( v17 )
  {
    if ( *(_BYTE *)(a1 + 24) )
    {
      v19 = (const void *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v17 + 56))(*(_DWORD *)(a1 + 8));
      glitch::core::CMatrix4<float>::CMatrix4(&v43, v19);
      v20 = *(_DWORD *)(a1 + 12);
      v42 = 954437177 * ((*(_DWORD *)(a1 + 16) - v20) >> 2);
      if ( v42 > 0 )
      {
        v21 = 0;
        v40 = 0;
        while ( 1 )
        {
          v22 = *(float *)(v20 + v21);
          v23 = v20 + v21;
          v24 = *(float *)(v20 + v21 + 4);
          v25 = *(float *)(v20 + v21 + 8);
          v39 = (float)((float)((float)(v22 * v44) + (float)(v24 * v47)) + (float)(v25 * v50)) + v53;
          v26 = (float)((float)((float)(v22 * v45) + (float)(v24 * v48)) + (float)(v25 * v51)) + v54;
          *(float *)(v20 + v21) = (float)((float)((float)(v22 * v43) + (float)(v24 * v46)) + (float)(v25 * v49)) + v52;
          *(float *)(v23 + 8) = v26;
          *(float *)(v23 + 4) = v39;
          ++v40;
          v27 = (float *)(*(_DWORD *)(a1 + 12) + v21);
          v28 = v27[3];
          v29 = v27[4];
          v30 = v27[5];
          v31 = (float)((float)((float)(v28 * v44) + (float)(v29 * v47)) + (float)(v30 * v50)) + v53;
          v32 = (float)((float)((float)(v28 * v45) + (float)(v29 * v48)) + (float)(v30 * v51)) + v54;
          v27[3] = (float)((float)((float)(v28 * v43) + (float)(v29 * v46)) + (float)(v30 * v49)) + v52;
          v27[5] = v32;
          v27[4] = v31;
          v33 = (float *)(*(_DWORD *)(a1 + 12) + v21);
          v34 = v33[6];
          v35 = v33[7];
          v36 = v33[8];
          v37 = (float)((float)((float)(v34 * v44) + (float)(v35 * v47)) + (float)(v36 * v50)) + v53;
          v38 = (float)((float)((float)(v34 * v45) + (float)(v35 * v48)) + (float)(v36 * v51)) + v54;
          v21 += 36;
          v33[6] = (float)((float)((float)(v34 * v43) + (float)(v35 * v46)) + (float)(v36 * v49)) + v52;
          v33[8] = v38;
          v33[7] = v37;
          if ( v40 == v42 )
            break;
          v20 = *(_DWORD *)(a1 + 12);
        }
      }
    }
  }
  return a1;
}


// ===== 596598 glitch::scene::CTriangleSelector::CTriangleSelector(boost::intrusive_ptr<glitch::scene::IMesh const> const&,glitch::scene::ISceneNode const*,bool) =====
int __fastcall glitch::scene::CTriangleSelector::CTriangleSelector(int a1, _DWORD *a2, int a3, char a4)
{
  unsigned int v5; // r6
  int v7; // r8
  int i; // r5
  int v9; // r5
  glitch::IReferenceCounted *v10; // r9
  glitch::video::CVertexStreams *v11; // r11
  unsigned __int16 *v12; // r0
  int v13; // r2
  unsigned int v14; // r1
  _BYTE *v15; // r9
  char v16; // r3
  int v17; // r3
  const void *v19; // r0
  int v20; // r7
  int v21; // r5
  float v22; // r9
  int v23; // r6
  float v24; // r10
  float v25; // r8
  float v26; // r11
  float *v27; // r6
  float v28; // r10
  float v29; // r8
  float v30; // r7
  float v31; // r9
  float v32; // r11
  float *v33; // r6
  float v34; // r10
  float v35; // r8
  float v36; // r7
  float v37; // r9
  float v38; // r11
  float v39; // [sp+0h] [bp-64h]
  int v40; // [sp+4h] [bp-60h]
  _DWORD *v41; // [sp+8h] [bp-5Ch]
  int v42; // [sp+8h] [bp-5Ch]
  float v43; // [sp+10h] [bp-54h] BYREF
  float v44; // [sp+14h] [bp-50h]
  float v45; // [sp+18h] [bp-4Ch]
  float v46; // [sp+20h] [bp-44h]
  float v47; // [sp+24h] [bp-40h]
  float v48; // [sp+28h] [bp-3Ch]
  float v49; // [sp+30h] [bp-34h]
  float v50; // [sp+34h] [bp-30h]
  float v51; // [sp+38h] [bp-2Ch]
  float v52; // [sp+40h] [bp-24h]
  float v53; // [sp+44h] [bp-20h]
  float v54; // [sp+48h] [bp-1Ch]
  glitch::video::CVertexStreams *v55; // [sp+54h] [bp-10h] BYREF
  glitch::IReferenceCounted *v56; // [sp+58h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v57; // [sp+5Ch] [bp-8h] BYREF

  v5 = 0;
  *(_DWORD *)(a1 + 8) = a3;
  *(_BYTE *)(a1 + 24) = a4;
  *(_DWORD *)a1 = off_9767F0;
  *(_DWORD *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 76) = -1082130432;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 60) = 0;
  *(_DWORD *)(a1 + 68) = -1082130432;
  *(_DWORD *)(a1 + 72) = -1082130432;
  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 40) = 1065353216;
  *(_DWORD *)(a1 + 44) = 1065353216;
  *(_DWORD *)(a1 + 48) = 1065353216;
  *(_DWORD *)(a1 + 80) = 1065353216;
  *(_DWORD *)(a1 + 84) = 1065353216;
  *(_DWORD *)(a1 + 88) = 1065353216;
  *(_BYTE *)(a1 + 156) = 0;
  LC_API_MEMSET_0((void *)(a1 + 92), 0, 0x40u);
  *(_DWORD *)(a1 + 152) = 1065353216;
  *(_BYTE *)(a1 + 156) = 1;
  *(_DWORD *)(a1 + 92) = 1065353216;
  *(_DWORD *)(a1 + 112) = 1065353216;
  *(_DWORD *)(a1 + 132) = 1065353216;
  v7 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)*a2 + 16))(*a2);
  if ( v7 )
  {
    for ( i = 0; i != v7; ++i )
    {
      (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int))(*(_DWORD *)*a2 + 20))(&v57, *a2, i);
      v5 += *((_DWORD *)v57 + 8);
      glitch::IReferenceCounted::drop(v57);
    }
    v41 = (_DWORD *)(a1 + 12);
    v9 = 0;
    std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
      (_DWORD *)(a1 + 12),
      v5 / 3);
    do
    {
      while ( 1 )
      {
        (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int))(*(_DWORD *)*a2 + 20))(&v56, *a2, v9);
        v10 = v56;
        if ( v56 )
          glitch::IReferenceCounted::drop(v56);
        v55 = *((glitch::video::CVertexStreams **)v10 + 5);
        v11 = v55;
        if ( v55 )
          ++*(_DWORD *)v55;
        if ( v11 )
          v11 = v55;
        boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v55);
        v43 = 0.0;
        v44 = 0.0;
        if ( *((_WORD *)v10 + 23) == 6 )
        {
          if ( *((_DWORD *)v10 + 6) )
          {
            glitch::video::CPrimitiveStream::SMapBuffer<unsigned short const>::reset((_DWORD **)&v43, (_DWORD *)v10 + 6);
            v12 = (unsigned __int16 *)LODWORD(v44);
          }
          else
          {
            v12 = nullptr;
          }
          v13 = (int)v11 + 20;
          v14 = *((_DWORD *)v10 + 8);
          switch ( *((_WORD *)v11 + 15) )
          {
            case 0:
              glitch::scene::`anonymous namespace'::createTriangles<signed char,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(
                v12,
                v14,
                v13,
                v41);
              break;
            case 1:
              glitch::scene::`anonymous namespace'::createTriangles<unsigned char,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(
                v12,
                v14,
                v13,
                v41);
              break;
            case 2:
              glitch::scene::`anonymous namespace'::createTriangles<short,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(
                v12,
                v14,
                v13,
                v41);
              break;
            case 3:
              glitch::scene::`anonymous namespace'::createTriangles<unsigned short,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(
                v12,
                v14,
                v13,
                v41);
              break;
            case 4:
              glitch::scene::`anonymous namespace'::createTriangles<int,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(
                v12,
                v14,
                v13,
                v41);
              break;
            case 5:
              glitch::scene::`anonymous namespace'::createTriangles<unsigned int,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(
                v12,
                v14,
                v13,
                v41);
              break;
            case 6:
              glitch::scene::`anonymous namespace'::createTriangles<float,std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>>(
                v12,
                v14,
                v13,
                v41);
              break;
            default:
              break;
          }
          if ( v44 != 0.0 )
            break;
        }
        if ( ++v9 == v7 )
          goto LABEL_22;
      }
      v15 = *(_BYTE **)LODWORD(v43);
      v16 = *(_BYTE *)(*(_DWORD *)LODWORD(v43) + 19);
      if ( (v16 & 0x1Fu) <= 1 )
      {
        if ( (v15[18] & 0x20) != 0 )
          (*(void (__fastcall **)(_DWORD, unsigned int))(*(_DWORD *)v15 + 24))(*(_DWORD *)LODWORD(v43), v14);
        v15[19] = 0;
      }
      else
      {
        v15[19] = ((v16 & 0x1F) - 1) | v16 & 0xE0;
      }
      ++v9;
      v43 = 0.0;
      v44 = 0.0;
    }
    while ( v9 != v7 );
  }
  else
  {
    std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
      (_DWORD *)(a1 + 12),
      0);
  }
LABEL_22:
  v17 = *(_DWORD *)(a1 + 8);
  if ( v17 )
  {
    if ( *(_BYTE *)(a1 + 24) )
    {
      v19 = (const void *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v17 + 56))(*(_DWORD *)(a1 + 8));
      glitch::core::CMatrix4<float>::CMatrix4(&v43, v19);
      v20 = *(_DWORD *)(a1 + 12);
      v42 = 954437177 * ((*(_DWORD *)(a1 + 16) - v20) >> 2);
      if ( v42 > 0 )
      {
        v21 = 0;
        v40 = 0;
        while ( 1 )
        {
          v22 = *(float *)(v20 + v21);
          v23 = v20 + v21;
          v24 = *(float *)(v20 + v21 + 4);
          v25 = *(float *)(v20 + v21 + 8);
          v39 = (float)((float)((float)(v22 * v44) + (float)(v24 * v47)) + (float)(v25 * v50)) + v53;
          v26 = (float)((float)((float)(v22 * v45) + (float)(v24 * v48)) + (float)(v25 * v51)) + v54;
          *(float *)(v20 + v21) = (float)((float)((float)(v22 * v43) + (float)(v24 * v46)) + (float)(v25 * v49)) + v52;
          *(float *)(v23 + 8) = v26;
          *(float *)(v23 + 4) = v39;
          ++v40;
          v27 = (float *)(*(_DWORD *)(a1 + 12) + v21);
          v28 = v27[3];
          v29 = v27[4];
          v30 = v27[5];
          v31 = (float)((float)((float)(v28 * v44) + (float)(v29 * v47)) + (float)(v30 * v50)) + v53;
          v32 = (float)((float)((float)(v28 * v45) + (float)(v29 * v48)) + (float)(v30 * v51)) + v54;
          v27[3] = (float)((float)((float)(v28 * v43) + (float)(v29 * v46)) + (float)(v30 * v49)) + v52;
          v27[5] = v32;
          v27[4] = v31;
          v33 = (float *)(*(_DWORD *)(a1 + 12) + v21);
          v34 = v33[6];
          v35 = v33[7];
          v36 = v33[8];
          v37 = (float)((float)((float)(v34 * v44) + (float)(v35 * v47)) + (float)(v36 * v50)) + v53;
          v38 = (float)((float)((float)(v34 * v45) + (float)(v35 * v48)) + (float)(v36 * v51)) + v54;
          v21 += 36;
          v33[6] = (float)((float)((float)(v34 * v43) + (float)(v35 * v46)) + (float)(v36 * v49)) + v52;
          v33[8] = v38;
          v33[7] = v37;
          if ( v40 == v42 )
            break;
          v20 = *(_DWORD *)(a1 + 12);
        }
      }
    }
  }
  return a1;
}


// ===== 596c68 glitch::scene::IMesh::~IMesh() =====
void __fastcall glitch::scene::IMesh::~IMesh(glitch::scene::IMesh *this)
{
  ;
}


// ===== 596c6c glitch::scene::IMesh::getUserProperty(void) =====
int __fastcall glitch::scene::IMesh::getUserProperty(glitch::scene::IMesh *this)
{
  return 0;
}


// ===== 596c74 `global constructor keyed to'.._source_glitch_scene_IMesh.cpp =====
void `global constructor keyed to'.._source_glitch_scene_IMesh.cpp()
{
  dword_9F68A8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F68A4 = 1056964608;
}


// ===== 596c94 glitch::scene::IMesh::~IMesh() =====
void __fastcall glitch::scene::IMesh::~IMesh(glitch::scene::IMesh *this)
{
  LC_API_FREE_0(this);
}


// ===== 596ca8 `global constructor keyed to'.._source_glitch_scene_IMeshSceneNode.cpp =====
void `global constructor keyed to'.._source_glitch_scene_IMeshSceneNode.cpp()
{
  dword_9F68B4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F68B0 = 1056964608;
}


// ===== 596cc8 glitch::scene::IMeshSceneNode::setNodeHierarchyAsShadowCaster(bool) =====
int __fastcall glitch::scene::IMeshSceneNode::setNodeHierarchyAsShadowCaster(
        glitch::scene::IMeshSceneNode *this,
        _BOOL4 a2)
{
  int v2; // r3
  unsigned int v3; // r3

  v2 = *((_DWORD *)this + 71);
  if ( a2 )
    v3 = v2 | 0x800;
  else
    v3 = v2 & 0xFFFFF7FF;
  *((_DWORD *)this + 71) = v3;
  return glitch::scene::ISceneNode::setNodeHierarchyAsShadowCaster(this, a2);
}


// ===== 596ce0 glitch::scene::ISceneNode::onDelete(void) =====
int __fastcall glitch::scene::ISceneNode::onDelete(glitch::scene::ISceneNode *this)
{
  (*(void (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)this + 128))(this);
  return (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)this + 116))(this);
}


// ===== 596d08 glitch::scene::ISceneNode::onRegisterSceneNode(void) =====
int __fastcall glitch::scene::ISceneNode::onRegisterSceneNode(glitch::scene::ISceneNode *this)
{
  return 1;
}


// ===== 596d10 glitch::scene::ISceneNode::onUpdateTime(uint) =====
int __fastcall glitch::scene::ISceneNode::onUpdateTime(int this, unsigned int a2)
{
  int *v3; // r4
  int v4; // r5

  if ( (*(_DWORD *)(this + 284) & 0x201) == 0x201 )
  {
    v4 = this + 252;
    v3 = *(int **)(this + 252);
    if ( (int *)(this + 252) != v3 )
    {
      do
      {
        this = (*(int (__fastcall **)(int, unsigned int))(*(_DWORD *)v3[2] + 20))(v3[2], a2);
        v3 = (int *)*v3;
      }
      while ( (int *)v4 != v3 );
    }
  }
  return this;
}


// ===== 596d6c glitch::scene::ISceneNode::onAnimate(uint) =====
int __fastcall glitch::scene::ISceneNode::onAnimate(int this, unsigned int a2)
{
  int v2; // r3
  _DWORD *v3; // r6
  int *i; // r4
  int v6; // r7
  _DWORD *j; // r4
  _DWORD *v8; // r3

  v2 = *(_DWORD *)(this + 284);
  v3 = (_DWORD *)this;
  if ( ((v2 & 0x400) == 0 || (v2 & 1) != 0) && (v2 & 0x200) != 0 )
  {
    v6 = this + 252;
    for ( i = *(int **)(this + 252); (int *)v6 != i; i = (int *)*i )
      (*(void (__fastcall **)(int, _DWORD *, unsigned int))(*(_DWORD *)i[2] + 16))(i[2], v3, a2);
    this = (*(int (__fastcall **)(_DWORD *, _DWORD))(*v3 + 184))(v3, 0);
    for ( j = (_DWORD *)v3[61]; v3 + 61 != j; j = (_DWORD *)*j )
    {
      if ( j )
        v8 = j - 1;
      else
        v8 = nullptr;
      this = (*(int (__fastcall **)(_DWORD *, unsigned int))(*v8 + 20))(v8, a2);
    }
    v3[71] &= ~0x20u;
  }
  return this;
}


// ===== 596e24 glitch::scene::ISceneNode::getRenderVertexCount(void *) =====
int __fastcall glitch::scene::ISceneNode::getRenderVertexCount(glitch::scene::ISceneNode *this, void *a2)
{
  return -1;
}


// ===== 596e2c glitch::scene::ISceneNode::getName(void) =====
int __fastcall glitch::scene::ISceneNode::getName(glitch::scene::ISceneNode *this)
{
  return *((_DWORD *)this + 8);
}


// ===== 596e34 glitch::scene::ISceneNode::notifyVisibilityChanged(bool) =====
int __fastcall glitch::scene::ISceneNode::notifyVisibilityChanged(int this, int a2)
{
  int v2; // r3
  int v3; // r5
  bool v4; // zf
  int v5; // r2
  unsigned int v6; // r3
  _DWORD *i; // r4
  _DWORD *v8; // r6
  _DWORD *v9; // r3

  v2 = *(_DWORD *)(this + 284);
  v3 = this;
  v4 = *(_BYTE *)(this + 288) == 0;
  *(_BYTE *)(this + 289) = a2;
  v5 = v2 & 1;
  if ( !v4 && a2 )
  {
    v6 = v2 | 1;
    *(_DWORD *)(this + 284) = v6;
  }
  else
  {
    v6 = v2 & 0xFFFFFFFE;
    *(_DWORD *)(this + 284) = v6;
  }
  if ( v5 != (v6 & 1) )
  {
    v8 = (_DWORD *)(this + 244);
    for ( i = *(_DWORD **)(this + 244); v8 != i; i = (_DWORD *)*i )
    {
      if ( i )
        v9 = i - 1;
      else
        v9 = nullptr;
      this = (*(int (__fastcall **)(_DWORD *, int))(*v9 + 236))(v9, *(_DWORD *)(v3 + 284) & 1);
    }
  }
  return this;
}


// ===== 596ec0 glitch::scene::ISceneNode::onChangedSceneManager(void) =====
void __fastcall glitch::scene::ISceneNode::onChangedSceneManager(glitch::scene::ISceneNode *this)
{
  ;
}


// ===== 596ec4 glitch::scene::ISceneNode::setVisible(bool) =====
int __fastcall glitch::scene::ISceneNode::setVisible(int this, int a2)
{
  int v2; // r5
  int v3; // r3
  int v4; // r2
  unsigned int v5; // r3
  _DWORD *i; // r4
  _DWORD *v7; // r6
  _DWORD *v8; // r3

  v2 = this;
  if ( *(unsigned __int8 *)(this + 288) != a2 )
  {
    v3 = *(_DWORD *)(this + 284);
    *(_BYTE *)(this + 288) = a2;
    v4 = v3 & 1;
    if ( a2 && *(_BYTE *)(this + 289) )
    {
      v5 = v3 | 1;
      *(_DWORD *)(this + 284) = v5;
    }
    else
    {
      v5 = v3 & 0xFFFFFFFE;
      *(_DWORD *)(this + 284) = v5;
    }
    if ( v4 != (v5 & 1) )
    {
      v7 = (_DWORD *)(this + 244);
      for ( i = *(_DWORD **)(this + 244); v7 != i; i = (_DWORD *)*i )
      {
        if ( i )
          v8 = i - 1;
        else
          v8 = nullptr;
        this = (*(int (__fastcall **)(_DWORD *, int))(*v8 + 236))(v8, *(_DWORD *)(v2 + 284) & 1);
      }
    }
  }
  return this;
}


// ===== 596f5c glitch::scene::ISceneNode::getID(void) =====
int __fastcall glitch::scene::ISceneNode::getID(glitch::scene::ISceneNode *this)
{
  return *((_DWORD *)this + 67);
}


// ===== 596f64 glitch::scene::ISceneNode::setID(int) =====
int __fastcall glitch::scene::ISceneNode::setID(int this, int a2)
{
  *(_DWORD *)(this + 268) = a2;
  return this;
}


// ===== 596f6c glitch::scene::ISceneNode::getSceneNodeFromType(glitch::scene::E_SCENE_NODE_TYPE) =====
int __fastcall glitch::scene::ISceneNode::getSceneNodeFromType(int a1, int a2)
{
  int v3; // r4
  _DWORD *i; // r4
  _DWORD *v5; // r6
  int v6; // r0
  int SceneNodeFromType; // r0

  v3 = a1;
  if ( (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 188))(a1) != a2 && a2 != 1601793633 )
  {
    v5 = (_DWORD *)(v3 + 244);
    for ( i = *(_DWORD **)(v3 + 244); ; i = (_DWORD *)*i )
    {
      if ( v5 == i )
        return 0;
      v6 = i ? (int)(i - 1) : 0;
      SceneNodeFromType = glitch::scene::ISceneNode::getSceneNodeFromType(v6, a2);
      if ( SceneNodeFromType )
        break;
    }
    return SceneNodeFromType;
  }
  return v3;
}


// ===== 596fe4 glitch::scene::ISceneNode::getUID(void) =====
char *__fastcall glitch::scene::ISceneNode::getUID(glitch::scene::ISceneNode *this)
{
  return "";
}


// ===== 596ff4 glitch::scene::ISceneNode::getScopeID(void) =====
char *__fastcall glitch::scene::ISceneNode::getScopeID(glitch::scene::ISceneNode *this)
{
  return "";
}


// ===== 597004 glitch::scene::ISceneNode::removeChild(glitch::scene::ISceneNode*) =====
int __fastcall glitch::scene::ISceneNode::removeChild(glitch::scene::ISceneNode *this, glitch::scene::ISceneNode *a2)
{
  glitch::scene::ISceneNode *v2; // r3
  int v4; // r2
  _DWORD *v5; // r0

  v2 = *((glitch::scene::ISceneNode **)a2 + 59);
  if ( v2 != this )
    return 0;
  v4 = *((_DWORD *)a2 + 1);
  if ( v4 )
  {
    v5 = *((_DWORD **)a2 + 2);
    *v5 = v4;
    *(_DWORD *)(v4 + 4) = v5;
  }
  --*((_DWORD *)v2 + 60);
  *((_DWORD *)a2 + 2) = 0;
  *((_DWORD *)a2 + 1) = 0;
  *((_DWORD *)a2 + 59) = 0;
  glitch::IReferenceCounted::drop((glitch::scene::ISceneNode *)((char *)a2 + *(_DWORD *)(*(_DWORD *)a2 - 12)));
  return 1;
}


// ===== 59706c glitch::scene::ISceneNode::remove(void) =====
int __fastcall glitch::scene::ISceneNode::remove(int this)
{
  int v1; // r3

  v1 = *(_DWORD *)(this + 236);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD, int))(*(_DWORD *)v1 + 96))(*(_DWORD *)(this + 236), this);
  return this;
}


// ===== 597094 glitch::scene::ISceneNode::getAnimators(void) =====
char *__fastcall glitch::scene::ISceneNode::getAnimators(glitch::scene::ISceneNode *this)
{
  return (char *)this + 252;
}


// ===== 59709c glitch::scene::ISceneNode::getBindedAnimators(void) =====
char *__fastcall glitch::scene::ISceneNode::getBindedAnimators(glitch::scene::ISceneNode *this)
{
  return (char *)this + 260;
}


// ===== 5970a4 glitch::scene::ISceneNode::getMaterial(uint) =====
_DWORD *__fastcall glitch::scene::ISceneNode::getMaterial(_DWORD *this, unsigned int a2)
{
  *this = 0;
  return this;
}


// ===== 5970b0 glitch::scene::ISceneNode::getMaterialCount(void) =====
int __fastcall glitch::scene::ISceneNode::getMaterialCount(glitch::scene::ISceneNode *this)
{
  return 0;
}


// ===== 5970b8 glitch::scene::ISceneNode::notifyMaterialChanged(void) =====
void __fastcall glitch::scene::ISceneNode::notifyMaterialChanged(glitch::scene::ISceneNode *this)
{
  ;
}


// ===== 5970bc glitch::scene::ISceneNode::getScale(void) =====
char *__fastcall glitch::scene::ISceneNode::getScale(glitch::scene::ISceneNode *this)
{
  return (char *)this + 200;
}


// ===== 5970c4 glitch::scene::ISceneNode::setScale(glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::scene::ISceneNode::setScale(_DWORD *result, _DWORD *a2)
{
  int v2; // r2
  int v3; // r3

  v2 = result[71];
  result[50] = *a2;
  result[51] = a2[1];
  v3 = a2[2];
  result[71] = v2 | 2;
  result[52] = v3;
  return result;
}


// ===== 5970ec glitch::scene::ISceneNode::getRotation(void) =====
char *__fastcall glitch::scene::ISceneNode::getRotation(glitch::scene::ISceneNode *this)
{
  return (char *)this + 184;
}


// ===== 5970f4 glitch::scene::ISceneNode::setRotation(glitch::core::quaternion const&) =====
_DWORD *__fastcall glitch::scene::ISceneNode::setRotation(_DWORD *result, _DWORD *a2)
{
  int v2; // r2
  int v3; // r3

  v2 = result[71];
  result[46] = *a2;
  result[47] = a2[1];
  result[48] = a2[2];
  v3 = a2[3];
  result[71] = v2 | 4;
  result[49] = v3;
  return result;
}


// ===== 597124 glitch::scene::ISceneNode::getPosition(void) =====
char *__fastcall glitch::scene::ISceneNode::getPosition(glitch::scene::ISceneNode *this)
{
  return (char *)this + 172;
}


// ===== 59712c glitch::scene::ISceneNode::setPosition(glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::scene::ISceneNode::setPosition(_DWORD *result, _DWORD *a2)
{
  int v2; // r2
  int v3; // r3

  v2 = result[71];
  result[43] = *a2;
  result[44] = a2[1];
  v3 = a2[2];
  result[71] = v2 | 8;
  result[45] = v3;
  return result;
}


// ===== 597154 glitch::scene::ISceneNode::setPosition(float,float,float) =====
int __fastcall glitch::scene::ISceneNode::setPosition(glitch::scene::ISceneNode *this, float a2, float a3, float a4)
{
  _DWORD v5[4]; // [sp+4h] [bp-10h] BYREF

  *(float *)v5 = a2;
  *(float *)&v5[2] = a4;
  *(float *)&v5[1] = a3;
  return (*(int (__fastcall **)(glitch::scene::ISceneNode *, _DWORD *))(*(_DWORD *)this + 164))(this, v5);
}


// ===== 597180 glitch::scene::ISceneNode::getAbsolutePosition(void) =====
_DWORD *__fastcall glitch::scene::ISceneNode::getAbsolutePosition(_DWORD *this, _DWORD *a2)
{
  int v2; // r12
  int v3; // r2
  int v4; // r1

  v2 = a2[21];
  v3 = a2[22];
  v4 = a2[23];
  *this = v2;
  *(this + 1) = v3;
  *(this + 2) = v4;
  return this;
}


// ===== 59719c glitch::scene::ISceneNode::setAutomaticCulling(glitch::scene::E_CULLING_TYPE) =====
int __fastcall glitch::scene::ISceneNode::setAutomaticCulling(int result, int a2)
{
  *(_DWORD *)(result + 280) = a2;
  return result;
}


// ===== 5971a4 glitch::scene::ISceneNode::setIsDebugObject(bool) =====
int __fastcall glitch::scene::ISceneNode::setIsDebugObject(int this, int a2)
{
  int v2; // r3
  unsigned int v3; // r3

  v2 = *(_DWORD *)(this + 284);
  if ( a2 )
    v3 = v2 | 0x80;
  else
    v3 = v2 & 0xFFFFFF7F;
  *(_DWORD *)(this + 284) = v3;
  return this;
}


// ===== 5971bc glitch::scene::ISceneNode::isDebugObject(void) =====
int __fastcall glitch::scene::ISceneNode::isDebugObject(glitch::scene::ISceneNode *this)
{
  return (*((_DWORD *)this + 71) >> 7) & 1;
}


// ===== 5971c8 glitch::scene::ISceneNode::getChildren(void) =====
char *__fastcall glitch::scene::ISceneNode::getChildren(glitch::scene::ISceneNode *this)
{
  return (char *)this + 240;
}


// ===== 5971d0 glitch::scene::ISceneNode::getUserProperty(void) =====
int __fastcall glitch::scene::ISceneNode::getUserProperty(glitch::scene::ISceneNode *this)
{
  return 0;
}


// ===== 5971d8 glitch::scene::ISceneNode::getUserPropertyStr(void) =====
int __fastcall glitch::scene::ISceneNode::getUserPropertyStr(glitch::scene::ISceneNode *this)
{
  return 0;
}


// ===== 5971e0 glitch::scene::ISceneNode::setParent(glitch::scene::ISceneNode*) =====
int __fastcall glitch::scene::ISceneNode::setParent(glitch::scene::ISceneNode *this, glitch::scene::ISceneNode *a2)
{
  int v4; // r3
  glitch::scene::CSceneManager *v5; // r1

  ++*(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12) + 4);
  (*(void (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)this + 104))(this);
  v4 = *((_DWORD *)this + 71);
  *((_DWORD *)this + 59) = a2;
  *((_DWORD *)this + 71) = v4 | 0x40;
  if ( a2 )
  {
    v5 = *((glitch::scene::CSceneManager **)a2 + 68);
    if ( *((glitch::scene::CSceneManager **)this + 68) != v5 )
      glitch::scene::ISceneNode::setSceneManager(this, v5);
  }
  return glitch::IReferenceCounted::drop((glitch::scene::ISceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 597254 glitch::scene::ISceneNode::getTriangleSelector(void) =====
int __fastcall glitch::scene::ISceneNode::getTriangleSelector(glitch::scene::ISceneNode *this)
{
  return *((_DWORD *)this + 69);
}


// ===== 59725c glitch::scene::ISceneNode::setTriangleSelector(glitch::scene::ITriangleSelector *) =====
glitch::IReferenceCounted *__fastcall glitch::scene::ISceneNode::setTriangleSelector(
        glitch::scene::ISceneNode *this,
        glitch::scene::ITriangleSelector *a2)
{
  glitch::IReferenceCounted *result; // r0

  result = *((glitch::IReferenceCounted **)this + 69);
  if ( result )
    result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
  *((_DWORD *)this + 69) = a2;
  if ( a2 )
    ++*((_DWORD *)a2 + 1);
  return result;
}


// ===== 597290 glitch::scene::ISceneNode::getParent(void) =====
int __fastcall glitch::scene::ISceneNode::getParent(glitch::scene::ISceneNode *this)
{
  return *((_DWORD *)this + 59);
}


// ===== 597298 glitch::scene::ISceneNode::getType(void) =====
int __fastcall glitch::scene::ISceneNode::getType(glitch::scene::ISceneNode *this)
{
  return 1852534389;
}


// ===== 5972a4 glitch::scene::ISceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::ISceneNode::serializeAttributes(int result, int a2, _DWORD *a3)
{
  glitch::scene::ISceneNode *v4; // r5
  void (__fastcall *v6)(int, char *, int, _DWORD); // r6
  int v7; // r0
  void (__fastcall *v8)(int, const char *, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD); // r8
  _DWORD *v9; // r0
  void (__fastcall *v10)(int, const char *, int, _DWORD); // r8
  int v11; // r0
  int (__fastcall *v12)(int, const char *, int, _DWORD); // r8
  int isDebugObject; // r0
  void (__fastcall *v14)(int, const char *, int, _DWORD); // r7
  int v15; // r0
  int v16; // r3
  glitch::scene::ISceneNode *v17; // r0
  int (__fastcall *v18)(int, const char *, int, _DWORD); // r5
  int v19; // r0

  v4 = (glitch::scene::ISceneNode *)result;
  if ( a2 )
  {
    (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 124))(
      a2,
      "Name",
      *(_DWORD *)(result + 32),
      0);
    (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(a2, "Id", *((_DWORD *)v4 + 67), 0);
    v6 = *(void (__fastcall **)(int, char *, int, _DWORD))(*(_DWORD *)a2 + 424);
    v7 = (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)v4 + 160))(v4);
    v6(a2, "Position", v7, 0);
    v8 = *(void (__fastcall **)(int, const char *, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD))(*(_DWORD *)a2 + 544);
    v9 = (_DWORD *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)v4 + 152))(v4);
    v8(a2, "Rotation", *v9, v9[1], v9[2], v9[3], 0);
    v10 = *(void (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 424);
    v11 = (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)v4 + 144))(v4);
    v10(a2, "Scale", v11, 0);
    (*(void (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 216))(
      a2,
      "Visible",
      *((_DWORD *)v4 + 71) & 1,
      0);
    (*(void (__fastcall **)(int, const char *, _DWORD, char **, _DWORD))(*(_DWORD *)a2 + 244))(
      a2,
      "AutomaticCulling",
      *((_DWORD *)v4 + 70),
      &glitch::scene::AutomaticCullingNames,
      0);
    v12 = *(int (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 216);
    isDebugObject = glitch::scene::ISceneNode::isDebugObject(v4);
    result = v12(a2, "IsDebugObject", isDebugObject, 0);
    if ( a3 )
    {
      if ( *a3 == 2 )
      {
        v14 = *(void (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 100);
        v15 = (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)v4 + 208))(v4);
        v14(a2, "Camera Offset", v15, 0);
        v16 = *(_DWORD *)v4;
        v17 = v4;
        v18 = *(int (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 76);
        v19 = (*(int (__fastcall **)(glitch::scene::ISceneNode *))(v16 + 216))(v17);
        return v18(a2, "Rendering Layer", v19, 0);
      }
    }
  }
  return result;
}


// ===== 5974c4 glitch::scene::ISceneNode::clone(void) =====
int __fastcall glitch::scene::ISceneNode::clone(glitch::scene::ISceneNode *this)
{
  return 0;
}


// ===== 5974cc glitch::scene::ISceneNode::setGameData(void *) =====
int __fastcall glitch::scene::ISceneNode::setGameData(int this, void *a2)
{
  *(_DWORD *)(this + 292) = a2;
  return this;
}


// ===== 5974d4 glitch::scene::ISceneNode::getGameData(void) =====
int __fastcall glitch::scene::ISceneNode::getGameData(glitch::scene::ISceneNode *this)
{
  return *((_DWORD *)this + 73);
}


// ===== 5974dc glitch::scene::ISceneNode::setCameraOffset(float) =====
int __fastcall glitch::scene::ISceneNode::setCameraOffset(int this, float a2)
{
  *(float *)(this + 296) = a2;
  return this;
}


// ===== 5974e4 glitch::scene::ISceneNode::getCameraOffset(void) =====
int __fastcall glitch::scene::ISceneNode::getCameraOffset(glitch::scene::ISceneNode *this)
{
  return *((_DWORD *)this + 74);
}


// ===== 5974ec glitch::scene::ISceneNode::setRenderingLayer(int) =====
int __fastcall glitch::scene::ISceneNode::setRenderingLayer(int this, int a2)
{
  *(_DWORD *)(this + 300) = a2;
  return this;
}


// ===== 5974f4 glitch::scene::ISceneNode::getRenderingLayer(void) =====
int __fastcall glitch::scene::ISceneNode::getRenderingLayer(glitch::scene::ISceneNode *this)
{
  return *((_DWORD *)this + 75);
}


// ===== 5974fc glitch::scene::ISceneNode::onMaterialChanged(void) =====
void __fastcall glitch::scene::ISceneNode::onMaterialChanged(glitch::scene::ISceneNode *this)
{
  ;
}


// ===== 597500 glitch::scene::ISceneNode::setNodeHierarchyAsShadowCaster(bool) =====
int __fastcall glitch::scene::ISceneNode::setNodeHierarchyAsShadowCaster(int this, int a2)
{
  _DWORD *i; // r4
  _DWORD *v4; // r5
  _DWORD *v5; // r3

  v4 = (_DWORD *)(this + 244);
  for ( i = *(_DWORD **)(this + 244); v4 != i; i = (_DWORD *)*i )
  {
    if ( i )
      v5 = i - 1;
    else
      v5 = nullptr;
    this = (*(int (__fastcall **)(_DWORD *, int))(*v5 + 228))(v5, a2);
  }
  return this;
}


// ===== 597544 glitch::scene::ISceneNode::resetTransform(bool) =====
void __fastcall glitch::scene::ISceneNode::resetTransform(glitch::scene::ISceneNode *this, bool a2)
{
  ;
}


// ===== 597548 glitch::core::CMatrix4<float>::transformBoxEx(glitch::core::aabbox3d<float> &) =====
int __fastcall glitch::core::CMatrix4<float>::transformBoxEx(int a1, float *a2)
{
  float v2; // r8
  int v3; // r2
  int v4; // r3
  float v5; // r9
  int v6; // r12
  int v7; // lr
  int v8; // r0
  int v9; // r1
  int v10; // r5
  float v11; // r10
  float v12; // r1
  int v13; // r4
  int v14; // r11
  float v15; // r6
  float v16; // r7
  int v17; // r12
  int v18; // r1
  float v19; // r2
  int v20; // r3
  int result; // r0
  float v24; // [sp+18h] [bp-3Ch]
  float v25; // [sp+1Ch] [bp-38h]
  float v26; // [sp+20h] [bp-34h]
  int v27; // [sp+24h] [bp-30h]
  int v28; // [sp+28h] [bp-2Ch]
  float v29; // [sp+2Ch] [bp-28h]
  int v30; // [sp+30h] [bp-24h]
  int v31; // [sp+34h] [bp-20h]
  _DWORD v32[3]; // [sp+38h] [bp-1Ch]
  _DWORD v33[4]; // [sp+44h] [bp-10h]

  v2 = *(float *)(a1 + 48);
  v3 = *(_DWORD *)(a1 + 52);
  v4 = *(_DWORD *)(a1 + 56);
  v5 = v2;
  v25 = *a2;
  v6 = *((_DWORD *)a2 + 2);
  v7 = *((_DWORD *)a2 + 1);
  v24 = a2[3];
  v8 = *((_DWORD *)a2 + 4);
  v9 = *((_DWORD *)a2 + 5);
  v33[2] = v6;
  v32[1] = v8;
  v32[2] = v9;
  v30 = v3;
  v31 = v4;
  v27 = v3;
  v28 = v4;
  *(float *)v33 = v25;
  v33[1] = v7;
  *(float *)v32 = v24;
  v26 = v2;
  v29 = v2;
  v10 = 0;
  while ( 2 )
  {
    v11 = v24;
    v12 = v25;
    v13 = 0;
    v14 = a1 + v10;
    while ( 1 )
    {
      v15 = *(float *)(v14 + 1 * v13) * v12;
      v16 = *(float *)(v14 + 1 * v13) * v11;
      if ( v15 >= v16 )
        break;
      ++v13;
      *(float *)((char *)&v29 + v10) = v15 + v2;
      *(float *)((char *)&v26 + v10) = v16 + v5;
      if ( v13 == 3 )
        goto LABEL_7;
LABEL_5:
      v12 = *(float *)&v33[v13];
      v11 = *(float *)&v32[v13];
      v2 = *(float *)((char *)&v29 + v10);
      v5 = *(float *)((char *)&v26 + v10);
    }
    ++v13;
    *(float *)((char *)&v29 + v10) = v16 + v2;
    *(float *)((char *)&v26 + v10) = v15 + v5;
    if ( v13 != 3 )
      goto LABEL_5;
LABEL_7:
    v10 += 4;
    if ( v10 != 12 )
    {
      v2 = *(float *)((char *)&v29 + v10);
      v5 = *(float *)((char *)&v26 + v10);
      continue;
    }
    break;
  }
  v17 = v30;
  v18 = v31;
  v19 = v26;
  v20 = v27;
  result = v28;
  *a2 = v29;
  *((_DWORD *)a2 + 1) = v17;
  *((_DWORD *)a2 + 5) = result;
  *((_DWORD *)a2 + 2) = v18;
  a2[3] = v19;
  *((_DWORD *)a2 + 4) = v20;
  return result;
}


// ===== 59770c glitch::scene::ISceneNode::getTransformedBoundingBox(void) =====
char *__fastcall glitch::scene::ISceneNode::getTransformedBoundingBox(glitch::scene::ISceneNode *this)
{
  char *v2; // r5
  _DWORD *v3; // r0

  if ( (*((_DWORD *)this + 71) & 0x100) == 0 )
    return (char *)this + 212;
  v3 = (_DWORD *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)this + 48))(this);
  v2 = (char *)this + 212;
  *((_DWORD *)this + 53) = *v3;
  *((_DWORD *)this + 54) = v3[1];
  *((_DWORD *)this + 55) = v3[2];
  *((_DWORD *)this + 56) = v3[3];
  *((_DWORD *)this + 57) = v3[4];
  *((_DWORD *)this + 58) = v3[5];
  glitch::core::CMatrix4<float>::transformBoxEx((int)this + 36, (float *)this + 53);
  *((_DWORD *)this + 71) &= ~0x100u;
  return v2;
}


// ===== 597788 glitch::core::CMatrix4<float>::postScale(glitch::core::vector3d<float> const&) =====
int __fastcall glitch::core::CMatrix4<float>::postScale(int result, float *a2)
{
  if ( *(_BYTE *)(result + 64) )
  {
    *(_BYTE *)(result + 64) = 0;
    *(float *)result = *a2;
    *(float *)(result + 20) = a2[1];
    *(float *)(result + 40) = a2[2];
  }
  else
  {
    *(_BYTE *)(result + 64) = 0;
    *(float *)result = *(float *)result * *a2;
    *(float *)(result + 4) = *(float *)(result + 4) * *a2;
    *(float *)(result + 8) = *(float *)(result + 8) * *a2;
    *(float *)(result + 16) = *(float *)(result + 16) * a2[1];
    *(float *)(result + 20) = *(float *)(result + 20) * a2[1];
    *(float *)(result + 24) = *(float *)(result + 24) * a2[1];
    *(float *)(result + 32) = *(float *)(result + 32) * a2[2];
    *(float *)(result + 36) = *(float *)(result + 36) * a2[2];
    *(float *)(result + 40) = *(float *)(result + 40) * a2[2];
  }
  return result;
}


// ===== 597864 `global constructor keyed to'.._source_glitch_scene_ISceneNode.cpp =====
void `global constructor keyed to'.._source_glitch_scene_ISceneNode.cpp()
{
  dword_9F68C0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F68BC = 1056964608;
}


// ===== 597884 glitch::core::detail::CMatrix4Base<float>::mult34(glitch::core::detail::CMatrix4Base<float> const&,glitch::core::detail::CMatrix4Base<float>&) =====
float *__fastcall glitch::core::detail::CMatrix4Base<float>::mult34(float *a1, float *a2, float *a3)
{
  if ( !*((_BYTE *)a1 + 64) )
  {
    if ( !*((_BYTE *)a2 + 64) )
    {
      *a3 = (float)((float)(*a1 * *a2) + (float)(a1[4] * a2[1])) + (float)(a1[8] * a2[2]);
      a3[1] = (float)((float)(a1[1] * *a2) + (float)(a1[5] * a2[1])) + (float)(a1[9] * a2[2]);
      a3[2] = (float)((float)(a1[2] * *a2) + (float)(a1[6] * a2[1])) + (float)(a1[10] * a2[2]);
      a3[3] = 0.0;
      a3[4] = (float)((float)(*a1 * a2[4]) + (float)(a1[4] * a2[5])) + (float)(a1[8] * a2[6]);
      a3[5] = (float)((float)(a1[1] * a2[4]) + (float)(a1[5] * a2[5])) + (float)(a1[9] * a2[6]);
      a3[6] = (float)((float)(a1[2] * a2[4]) + (float)(a1[6] * a2[5])) + (float)(a1[10] * a2[6]);
      a3[7] = 0.0;
      a3[8] = (float)((float)(*a1 * a2[8]) + (float)(a1[4] * a2[9])) + (float)(a1[8] * a2[10]);
      a3[9] = (float)((float)(a1[1] * a2[8]) + (float)(a1[5] * a2[9])) + (float)(a1[9] * a2[10]);
      a3[10] = (float)((float)(a1[2] * a2[8]) + (float)(a1[6] * a2[9])) + (float)(a1[10] * a2[10]);
      a3[11] = 0.0;
      a3[12] = (float)((float)((float)(*a1 * a2[12]) + (float)(a1[4] * a2[13])) + (float)(a1[8] * a2[14])) + a1[12];
      a3[13] = (float)((float)((float)(a1[1] * a2[12]) + (float)(a1[5] * a2[13])) + (float)(a1[9] * a2[14])) + a1[13];
      a3[14] = (float)((float)((float)(a1[2] * a2[12]) + (float)(a1[6] * a2[13])) + (float)(a1[10] * a2[14])) + a1[14];
      *((_BYTE *)a3 + 64) = 0;
      a3[15] = 1.0;
      return a3;
    }
    a2 = a1;
  }
  memcpy(a3, a2, 0x41u);
  return a3;
}


// ===== 597c60 glitch::scene::ISceneNode::updateAbsolutePosition(bool) =====
float *__fastcall glitch::scene::ISceneNode::updateAbsolutePosition(float *this, int a2)
{
  _DWORD *v2; // r3
  float *v3; // r4
  _DWORD *v5; // r4
  _DWORD *i; // r5
  _DWORD *v7; // t1
  _DWORD *v8; // r3
  float *v9; // r6
  float *v10; // r0
  void *v11; // r6
  const void *v12; // r0

  v2 = *((_DWORD **)this + 59);
  v3 = this;
  if ( v2 )
  {
    if ( (v2[71] & 0x20) != 0 || (*(_DWORD *)(this + 71) & 0x5E) != 0 )
    {
      v9 = (float *)(*(int (__fastcall **)(_DWORD))(*v2 + 56))(*((_DWORD *)this + 59));
      v10 = (float *)(*(int (__fastcall **)(float *))(*(_DWORD *)v3 + 64))(v3);
      this = glitch::core::detail::CMatrix4Base<float>::mult34(v9, v10, v3 + 9);
      *((_DWORD *)v3 + 71) = (_DWORD)v3[71] & 0xFFFFFE8F | 0x120;
    }
  }
  else if ( (*(_DWORD *)(this + 71) & 0x5E) != 0 )
  {
    v11 = this + 9;
    v12 = (const void *)(*(int (__fastcall **)(float *))(*(_DWORD *)this + 64))(this);
    this = (float *)memcpy(v11, v12, 0x41u);
    *((_DWORD *)v3 + 71) = (_DWORD)v3[71] & 0xFFFFFE8F | 0x120;
  }
  if ( a2 )
  {
    v7 = *((_DWORD **)v3 + 61);
    v5 = v3 + 61;
    for ( i = v7; v5 != i; i = (_DWORD *)*i )
    {
      if ( i )
        v8 = i - 1;
      else
        v8 = nullptr;
      this = (float *)(*(int (__fastcall **)(_DWORD *, int))(*v8 + 184))(v8, 1);
    }
  }
  return this;
}


// ===== 597d58 glitch::scene::ISceneNode::addBindedAnimator(glitch::scene::ISceneNodeAnimator *) =====
_DWORD *__fastcall glitch::scene::ISceneNode::addBindedAnimator(_DWORD *result, _DWORD *a2)
{
  _DWORD *v3; // r6
  _DWORD *i; // r3
  _DWORD *v5; // r4
  _DWORD *v6; // r3

  v3 = result;
  if ( a2 )
  {
    v5 = result + 65;
    for ( i = (_DWORD *)result[65]; v5 != i; i = (_DWORD *)*i )
    {
      if ( (_DWORD *)i[2] == a2 )
        return result;
    }
    ++*(_DWORD *)((char *)a2 + *(_DWORD *)(*a2 - 12) + 4);
    result = GlitchAlloc(0xCu, 0);
    result[2] = a2;
    v6 = (_DWORD *)v3[66];
    *result = v5;
    result[1] = v6;
    *v6 = result;
    v3[66] = result;
  }
  return result;
}


// ===== 597dcc glitch::scene::ISceneNode::cloneMembers(glitch::scene::ISceneNode*) =====
glitch::scene::ISceneNode *__fastcall glitch::scene::ISceneNode::cloneMembers(
        glitch::scene::ISceneNode *this,
        glitch::scene::ISceneNode *a2)
{
  _DWORD *v3; // r0
  int v5; // r3
  glitch::scene::ISceneNode *result; // r0
  int v7; // r3
  glitch::scene::ISceneNode *i; // r6
  char *v9; // r3
  _DWORD *v10; // r7
  char *v11; // r5
  char *j; // r6
  char *v13; // t1
  _DWORD *v14; // r7

  v3 = (_DWORD *)((char *)this + 12);
  if ( v3 != (_DWORD *)((char *)a2 + 12) )
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v3,
      *((_BYTE **)a2 + 8),
      *((_BYTE **)a2 + 7));
  memcpy((char *)this + 36, (char *)a2 + 36, 0x41u);
  memcpy((char *)this + 104, (char *)a2 + 104, 0x41u);
  v5 = *(_DWORD *)this;
  *((_DWORD *)this + 43) = *((_DWORD *)a2 + 43);
  *((_DWORD *)this + 44) = *((_DWORD *)a2 + 44);
  *((_DWORD *)this + 45) = *((_DWORD *)a2 + 45);
  *((_DWORD *)this + 46) = *((_DWORD *)a2 + 46);
  *((_DWORD *)this + 47) = *((_DWORD *)a2 + 47);
  *((_DWORD *)this + 48) = *((_DWORD *)a2 + 48);
  *((_DWORD *)this + 49) = *((_DWORD *)a2 + 49);
  *((_DWORD *)this + 50) = *((_DWORD *)a2 + 50);
  *((_DWORD *)this + 51) = *((_DWORD *)a2 + 51);
  *((_DWORD *)this + 52) = *((_DWORD *)a2 + 52);
  *((_DWORD *)this + 67) = *((_DWORD *)a2 + 67);
  result = (glitch::scene::ISceneNode *)(*(int (__fastcall **)(glitch::scene::ISceneNode *, _DWORD))(v5 + 180))(
                                          this,
                                          *((_DWORD *)a2 + 69));
  *((_DWORD *)this + 70) = *((_DWORD *)a2 + 70);
  v7 = *((_DWORD *)a2 + 71);
  *((_DWORD *)this + 68) = 0;
  *((_DWORD *)this + 71) = v7;
  for ( i = *((glitch::scene::ISceneNode **)a2 + 61);
        (glitch::scene::ISceneNode *)((char *)a2 + 244) != i;
        i = *(glitch::scene::ISceneNode **)i )
  {
    if ( i )
      v9 = (char *)i - 4;
    else
      v9 = nullptr;
    v10 = (_DWORD *)(*(int (__fastcall **)(char *))(*(_DWORD *)v9 + 192))(v9);
    (*(void (__fastcall **)(glitch::scene::ISceneNode *, _DWORD *))(*(_DWORD *)this + 92))(this, v10);
    result = (glitch::scene::ISceneNode *)glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v10 + *(_DWORD *)(*v10 - 12)));
  }
  v13 = *((char **)a2 + 63);
  v11 = (char *)a2 + 252;
  for ( j = v13; v11 != j; j = *(char **)j )
  {
    v14 = (_DWORD *)(*(int (__fastcall **)(int))(**((_DWORD **)j + 2) + 24))(*((_DWORD *)j + 2));
    result = this;
    if ( v14 )
    {
      (*(void (__fastcall **)(glitch::scene::ISceneNode *, _DWORD *))(*(_DWORD *)this + 108))(this, v14);
      result = (glitch::scene::ISceneNode *)glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v14 + *(_DWORD *)(*v14 - 12)));
    }
  }
  return result;
}


// ===== 597f50 glitch::scene::ISceneNode::setName(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
_DWORD *__fastcall glitch::scene::ISceneNode::setName(int a1, int a2)
{
  _DWORD *result; // r0

  result = (_DWORD *)(a1 + 12);
  if ( result != (_DWORD *)a2 )
    return std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
             result,
             *(_BYTE **)(a2 + 20),
             *(_BYTE **)(a2 + 16));
  return result;
}


// ===== 597f68 glitch::scene::ISceneNode::removeBindedAnimators(void) =====
void __fastcall glitch::scene::ISceneNode::removeBindedAnimators(glitch::scene::ISceneNode *this)
{
  char *i; // r4
  char *v3; // r6
  char *v4; // r0
  char *v5; // r6

  v3 = (char *)this + 260;
  for ( i = *((char **)this + 65); v3 != i; i = *(char **)i )
  {
    (*(void (__fastcall **)(int, glitch::scene::ISceneNode *))(**((_DWORD **)i + 2) + 44))(*((_DWORD *)i + 2), this);
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*((_DWORD *)i + 2)
                                                                + *(_DWORD *)(**((_DWORD **)i + 2) - 12)));
  }
  v4 = *((char **)this + 65);
  if ( i != v4 )
  {
    while ( 1 )
    {
      v5 = *(char **)v4;
      GlitchFree(v4);
      if ( v5 == i )
        break;
      v4 = v5;
    }
  }
  *((_DWORD *)this + 66) = i;
  *((_DWORD *)this + 65) = i;
}


// ===== 597fe4 glitch::scene::ISceneNode::removeBindedAnimator(glitch::scene::ISceneNodeAnimator *) =====
void __fastcall glitch::scene::ISceneNode::removeBindedAnimator(int a1, int a2)
{
  _DWORD *v3; // r0
  _DWORD *i; // r4
  _DWORD *v5; // t1
  _DWORD *v6; // r3
  _DWORD *v7; // r2

  v5 = *(_DWORD **)(a1 + 260);
  v3 = (_DWORD *)(a1 + 260);
  for ( i = v5; v3 != i; i = (_DWORD *)*i )
  {
    if ( i[2] == a2 )
    {
      (*(void (__fastcall **)(int, int))(*(_DWORD *)a2 + 44))(a2, a1);
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(i[2] + *(_DWORD *)(*(_DWORD *)i[2] - 12)));
      v6 = (_DWORD *)*i;
      v7 = (_DWORD *)i[1];
      *v7 = *i;
      v6[1] = v7;
      GlitchFree(i);
      return;
    }
  }
}


// ===== 598058 glitch::scene::ISceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::ISceneNode::deserializeAttributes(int result, int *a2, _DWORD *a3)
{
  _DWORD *v4; // r5
  _DWORD *v6; // r8
  int v7; // r0
  int v8; // r3
  void (__fastcall *v9)(_DWORD *, _BYTE *); // r10
  const wchar_t *v10; // r0
  void (__fastcall *v11)(_DWORD *, _BYTE *); // r7
  void (__fastcall *v12)(_DWORD *, _BYTE *); // r8
  void (__fastcall *v13)(_DWORD *, int); // r7
  int v14; // r0
  int v15; // r0
  int v16; // r12
  void (__fastcall *v17)(_DWORD *, _BYTE *); // r7
  void (__fastcall *v18)(_DWORD *, int); // r7
  int v19; // r0
  int v20; // r3
  int *v21; // r0
  void (__fastcall *v22)(_DWORD *, int); // r4
  int v23; // r0
  _BYTE v24[16]; // [sp+0h] [bp-64h] BYREF
  _BYTE v25[16]; // [sp+10h] [bp-54h] BYREF
  _BYTE v26[12]; // [sp+20h] [bp-44h] BYREF
  float v27; // [sp+2Ch] [bp-38h] BYREF
  float v28; // [sp+30h] [bp-34h]
  float v29; // [sp+34h] [bp-30h]
  _BYTE v30[12]; // [sp+38h] [bp-2Ch] BYREF
  _BYTE v31[16]; // [sp+44h] [bp-20h] BYREF
  _BYTE *v32; // [sp+54h] [bp-10h]
  void *p; // [sp+58h] [bp-Ch]

  v4 = (_DWORD *)result;
  if ( a2 )
  {
    v6 = (_DWORD *)(result + 12);
    (*(void (__fastcall **)(_BYTE *, int *, const char *))(*a2 + 132))(v31, a2, "Name");
    if ( v6 != (_DWORD *)v31 )
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        v6,
        p,
        v32);
    if ( p != v31 && p )
      GlitchFree(p);
    v7 = (*(int (__fastcall **)(int *, const char *))(*a2 + 88))(a2, "Id");
    v8 = *v4;
    v4[67] = v7;
    v9 = *(void (__fastcall **)(_DWORD *, _BYTE *))(v8 + 164);
    (*(void (__fastcall **)(_BYTE *, int *, char *))(*a2 + 436))(v30, a2, "Position");
    v9(v4, v30);
    v10 = (const wchar_t *)(*(int (__fastcall **)(int *, const char *))(*a2 + 28))(a2, "Rotation");
    if ( !wcscmp(U"vector3d", v10) )
    {
      (*(void (__fastcall **)(float *, int *, const char *))(*a2 + 436))(&v27, a2, "Rotation");
      v27 = v27 * 0.017453;
      v28 = v28 * 0.017453;
      v16 = *v4;
      v29 = v29 * 0.017453;
      v17 = *(void (__fastcall **)(_DWORD *, _BYTE *))(v16 + 156);
      glitch::core::quaternion::set((glitch::core::quaternion *)v25, v27, v28, v29);
      v17(v4, v25);
    }
    else
    {
      v11 = *(void (__fastcall **)(_DWORD *, _BYTE *))(*v4 + 156);
      (*(void (__fastcall **)(_BYTE *, int *, const char *))(*a2 + 556))(v24, a2, "Rotation");
      v11(v4, v24);
    }
    v12 = *(void (__fastcall **)(_DWORD *, _BYTE *))(*v4 + 148);
    (*(void (__fastcall **)(_BYTE *, int *, const char *))(*a2 + 436))(v26, a2, "Scale");
    v12(v4, v26);
    v13 = *(void (__fastcall **)(_DWORD *, int))(*v4 + 72);
    v14 = (*(int (__fastcall **)(int *, const char *))(*a2 + 228))(a2, "Visible");
    v13(v4, v14);
    v4[70] = (*(int (__fastcall **)(int *, const char *, char **))(*a2 + 256))(
               a2,
               "AutomaticCulling",
               &glitch::scene::AutomaticCullingNames);
    v15 = (*(int (__fastcall **)(int *, const char *))(*a2 + 228))(a2, "IsDebugObject");
    glitch::scene::ISceneNode::setIsDebugObject((int)v4, v15);
    if ( a3 )
    {
      if ( *a3 == 2 )
      {
        v18 = *(void (__fastcall **)(_DWORD *, int))(*v4 + 204);
        v19 = (*(int (__fastcall **)(int *, const char *))(*a2 + 112))(a2, "Camera Offset");
        v18(v4, v19);
        v20 = *a2;
        v21 = a2;
        v22 = *(void (__fastcall **)(_DWORD *, int))(*v4 + 212);
        v23 = (*(int (__fastcall **)(int *, const char *))(v20 + 88))(v21, "Rendering Layer");
        v22(v4, v23);
      }
    }
    return (*(int (__fastcall **)(_DWORD *, _DWORD))(*v4 + 184))(v4, 0);
  }
  return result;
}


// ===== 598398 glitch::scene::ISceneNode::getSceneNodeFromScopeID(char const*) =====
glitch::scene::ISceneNode *__fastcall glitch::scene::ISceneNode::getSceneNodeFromScopeID(
        glitch::scene::ISceneNode *this,
        const char *a2)
{
  glitch::scene::ISceneNode *v3; // r4
  const char *v4; // r0
  _DWORD *i; // r4
  _DWORD *v7; // r6
  glitch::scene::ISceneNode *v8; // r0
  int SceneNodeFromScopeID; // r0

  v3 = this;
  v4 = (const char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)this + 88))(this);
  if ( LC_API_STRCASECMP_0(v4, a2) )
  {
    v7 = (_DWORD *)((char *)v3 + 244);
    for ( i = *((_DWORD **)v3 + 61); ; i = (_DWORD *)*i )
    {
      if ( v7 == i )
        return nullptr;
      v8 = i ? (glitch::scene::ISceneNode *)(i - 1) : nullptr;
      SceneNodeFromScopeID = glitch::scene::ISceneNode::getSceneNodeFromScopeID(v8, a2);
      if ( SceneNodeFromScopeID )
        break;
    }
    return (glitch::scene::ISceneNode *)SceneNodeFromScopeID;
  }
  return v3;
}


// ===== 59840c glitch::scene::ISceneNode::getSceneNodeFromScopeID(char const*) =====
glitch::scene::ISceneNode *__fastcall glitch::scene::ISceneNode::getSceneNodeFromScopeID(
        glitch::scene::ISceneNode *this,
        const char *a2)
{
  glitch::scene::ISceneNode *v3; // r4
  const char *v4; // r0
  _DWORD *i; // r4
  _DWORD *v7; // r6
  glitch::scene::ISceneNode *v8; // r0
  int SceneNodeFromScopeID; // r0

  v3 = this;
  v4 = (const char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)this + 88))(this);
  if ( LC_API_STRCASECMP_0(v4, a2) )
  {
    v7 = (_DWORD *)((char *)v3 + 244);
    for ( i = *((_DWORD **)v3 + 61); ; i = (_DWORD *)*i )
    {
      if ( v7 == i )
        return nullptr;
      v8 = i ? (glitch::scene::ISceneNode *)(i - 1) : nullptr;
      SceneNodeFromScopeID = glitch::scene::ISceneNode::getSceneNodeFromScopeID(v8, a2);
      if ( SceneNodeFromScopeID )
        break;
    }
    return (glitch::scene::ISceneNode *)SceneNodeFromScopeID;
  }
  return v3;
}


// ===== 598480 glitch::scene::ISceneNode::getSceneNodeFromName(char const*) =====
glitch::scene::ISceneNode *__fastcall glitch::scene::ISceneNode::getSceneNodeFromName(
        glitch::scene::ISceneNode *this,
        const char *a2)
{
  glitch::scene::ISceneNode *v3; // r4
  const char *v4; // r0
  _DWORD *i; // r4
  _DWORD *v7; // r6
  glitch::scene::ISceneNode *v8; // r0
  int SceneNodeFromName; // r0

  v3 = this;
  v4 = (const char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)this + 36))(this);
  if ( LC_API_STRCASECMP_0(v4, a2) )
  {
    v7 = (_DWORD *)((char *)v3 + 244);
    for ( i = *((_DWORD **)v3 + 61); ; i = (_DWORD *)*i )
    {
      if ( v7 == i )
        return nullptr;
      v8 = i ? (glitch::scene::ISceneNode *)(i - 1) : nullptr;
      SceneNodeFromName = glitch::scene::ISceneNode::getSceneNodeFromName(v8, a2);
      if ( SceneNodeFromName )
        break;
    }
    return (glitch::scene::ISceneNode *)SceneNodeFromName;
  }
  return v3;
}


// ===== 5984f4 glitch::scene::ISceneNode::getSceneNodeFromName(char const*) =====
glitch::scene::ISceneNode *__fastcall glitch::scene::ISceneNode::getSceneNodeFromName(
        glitch::scene::ISceneNode *this,
        const char *a2)
{
  glitch::scene::ISceneNode *v3; // r4
  const char *v4; // r0
  _DWORD *i; // r4
  _DWORD *v7; // r6
  glitch::scene::ISceneNode *v8; // r0
  int SceneNodeFromName; // r0

  v3 = this;
  v4 = (const char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)this + 36))(this);
  if ( LC_API_STRCASECMP_0(v4, a2) )
  {
    v7 = (_DWORD *)((char *)v3 + 244);
    for ( i = *((_DWORD **)v3 + 61); ; i = (_DWORD *)*i )
    {
      if ( v7 == i )
        return nullptr;
      v8 = i ? (glitch::scene::ISceneNode *)(i - 1) : nullptr;
      SceneNodeFromName = glitch::scene::ISceneNode::getSceneNodeFromName(v8, a2);
      if ( SceneNodeFromName )
        break;
    }
    return (glitch::scene::ISceneNode *)SceneNodeFromName;
  }
  return v3;
}


// ===== 598568 glitch::scene::ISceneNode::getSceneNodeFromUID(char const*) =====
glitch::scene::ISceneNode *__fastcall glitch::scene::ISceneNode::getSceneNodeFromUID(
        glitch::scene::ISceneNode *this,
        const char *a2)
{
  glitch::scene::ISceneNode *v3; // r4
  const char *v4; // r0
  char *i; // r6
  char *v7; // r7
  glitch::scene::ISceneNode *v8; // r0
  int SceneNodeFromUID; // r0

  v3 = this;
  v4 = (const char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)this + 84))(this);
  if ( LC_API_STRCASECMP_0(v4, a2) )
  {
    v7 = glitch::scene::ISceneNode::getChildren(v3) + 4;
    for ( i = *(char **)v7; ; i = *(char **)i )
    {
      if ( v7 == i )
        return nullptr;
      v8 = i ? (glitch::scene::ISceneNode *)(i - 4) : nullptr;
      SceneNodeFromUID = glitch::scene::ISceneNode::getSceneNodeFromUID(v8, a2);
      if ( SceneNodeFromUID )
        break;
    }
    return (glitch::scene::ISceneNode *)SceneNodeFromUID;
  }
  return v3;
}


// ===== 5985e4 glitch::scene::ISceneNode::getSceneNodeFromUID(char const*) =====
glitch::scene::ISceneNode *__fastcall glitch::scene::ISceneNode::getSceneNodeFromUID(
        glitch::scene::ISceneNode *this,
        const char *a2)
{
  glitch::scene::ISceneNode *v3; // r4
  const char *v4; // r0
  _DWORD *i; // r4
  _DWORD *v7; // r6
  glitch::scene::ISceneNode *v8; // r0
  int SceneNodeFromUID; // r0

  v3 = this;
  v4 = (const char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)this + 84))(this);
  if ( LC_API_STRCASECMP_0(v4, a2) )
  {
    v7 = (_DWORD *)((char *)v3 + 244);
    for ( i = *((_DWORD **)v3 + 61); ; i = (_DWORD *)*i )
    {
      if ( v7 == i )
        return nullptr;
      v8 = i ? (glitch::scene::ISceneNode *)(i - 1) : nullptr;
      SceneNodeFromUID = glitch::scene::ISceneNode::getSceneNodeFromUID(v8, a2);
      if ( SceneNodeFromUID )
        break;
    }
    return (glitch::scene::ISceneNode *)SceneNodeFromUID;
  }
  return v3;
}


// ===== 598658 glitch::scene::ISceneNode::removeAnimators(void) =====
int __fastcall glitch::scene::ISceneNode::removeAnimators(glitch::scene::ISceneNode *this)
{
  char *i; // r4
  char *v3; // r6
  char *v4; // r0
  char *v5; // r6
  int result; // r0

  v3 = (char *)this + 252;
  for ( i = *((char **)this + 63); v3 != i; i = *(char **)i )
  {
    (*(void (__fastcall **)(int, glitch::scene::ISceneNode *))(**((_DWORD **)i + 2) + 44))(*((_DWORD *)i + 2), this);
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*((_DWORD *)i + 2)
                                                                + *(_DWORD *)(**((_DWORD **)i + 2) - 12)));
  }
  v4 = *((char **)this + 63);
  if ( i != v4 )
  {
    while ( 1 )
    {
      v5 = *(char **)v4;
      GlitchFree(v4);
      if ( i == v5 )
        break;
      v4 = v5;
    }
  }
  result = *((_DWORD *)this + 68);
  *((_DWORD *)this + 64) = i;
  *((_DWORD *)this + 63) = i;
  if ( result )
    return glitch::scene::CSceneManager::notifyHierarchyChanged(result);
  return result;
}


// ===== 5986e8 glitch::scene::ISceneNode::removeAnimator(glitch::scene::ISceneNodeAnimator *) =====
int __fastcall glitch::scene::ISceneNode::removeAnimator(int result, int a2)
{
  int v2; // r5
  _DWORD *i; // r4
  _DWORD *v4; // r3
  _DWORD *v5; // r2

  v2 = result;
  for ( i = *(_DWORD **)(result + 252); (_DWORD *)(result + 252) != i; i = (_DWORD *)*i )
  {
    if ( i[2] == a2 )
    {
      (*(void (__fastcall **)(int, int))(*(_DWORD *)a2 + 44))(a2, result);
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(i[2] + *(_DWORD *)(*(_DWORD *)i[2] - 12)));
      v4 = (_DWORD *)*i;
      v5 = (_DWORD *)i[1];
      *v5 = *i;
      v4[1] = v5;
      GlitchFree(i);
      result = *(_DWORD *)(v2 + 272);
      if ( result )
        return glitch::scene::CSceneManager::notifyHierarchyChanged(result);
      return result;
    }
  }
  return result;
}


// ===== 598770 glitch::scene::ISceneNode::addAnimator(glitch::scene::ISceneNodeAnimator *) =====
int __fastcall glitch::scene::ISceneNode::addAnimator(int result, int a2)
{
  int v3; // r4
  _DWORD *v4; // r0
  _DWORD *v5; // r3

  v3 = result;
  if ( a2 )
  {
    v4 = GlitchAlloc(0xCu, 0);
    v4[2] = a2;
    v5 = *(_DWORD **)(v3 + 256);
    *v4 = v3 + 252;
    v4[1] = v5;
    *v5 = v4;
    *(_DWORD *)(v3 + 256) = v4;
    ++*(_DWORD *)(a2 + *(_DWORD *)(*(_DWORD *)a2 - 12) + 4);
    (*(void (__fastcall **)(int, int))(*(_DWORD *)a2 + 40))(a2, v3);
    result = *(_DWORD *)(v3 + 272);
    if ( result )
      return glitch::scene::CSceneManager::notifyHierarchyChanged(result);
  }
  return result;
}


// ===== 5987e8 glitch::scene::ISceneNode::removeAll(void) =====
int __fastcall glitch::scene::ISceneNode::removeAll(glitch::scene::ISceneNode *this)
{
  char **v1; // r3
  char *v2; // r6
  char *v4; // r5
  int result; // r0

  v2 = (char *)this + 244;
  v1 = *((char ***)this + 61);
  if ( v1 != (char **)((char *)this + 244) )
  {
    while ( 1 )
    {
      v4 = *v1;
      v1[1] = nullptr;
      *v1 = nullptr;
      v1[58] = nullptr;
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *((_DWORD *)*(v1 - 1) - 3) - 4));
      if ( v2 == v4 )
        break;
      v1 = (char **)v4;
    }
    v1 = (char **)v2;
  }
  result = *((_DWORD *)this + 68);
  *((_DWORD *)this + 62) = v1;
  *((_DWORD *)this + 60) = 0;
  *((_DWORD *)this + 61) = v1;
  if ( result )
    return glitch::scene::CSceneManager::notifyHierarchyChanged(result);
  return result;
}


// ===== 598864 glitch::scene::ISceneNode::addChild(glitch::scene::ISceneNode*) =====
glitch::scene::ISceneNode *__fastcall glitch::scene::ISceneNode::addChild(
        glitch::scene::ISceneNode *this,
        glitch::scene::ISceneNode *a2)
{
  bool v2; // zf
  glitch::scene::ISceneNode *v3; // r5
  _DWORD *v5; // r2
  int v6; // r0

  v2 = a2 == this;
  if ( a2 != this )
    v2 = a2 == nullptr;
  v3 = this;
  if ( !v2 )
  {
    ++*(_DWORD *)((char *)a2 + *(_DWORD *)(*(_DWORD *)a2 - 12) + 4);
    (*(void (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 104))(a2);
    v5 = *((_DWORD **)v3 + 62);
    *((_DWORD *)a2 + 2) = v5;
    *v5 = (char *)a2 + 4;
    *((_DWORD *)v3 + 62) = (char *)a2 + 4;
    *((_DWORD *)a2 + 1) = (char *)v3 + 244;
    ++*((_DWORD *)v3 + 60);
    glitch::scene::ISceneNode::setParent(a2, v3);
    v6 = *((_DWORD *)v3 + 68);
    if ( v6 )
      glitch::scene::CSceneManager::notifyHierarchyChanged(v6);
    return (glitch::scene::ISceneNode *)(*(int (__fastcall **)(glitch::scene::ISceneNode *, int))(*(_DWORD *)a2 + 236))(
                                          a2,
                                          *((_DWORD *)v3 + 71) & 1);
  }
  return this;
}


// ===== 598908 glitch::scene::ISceneNode::getRelativeTransformation(void) =====
char *__fastcall glitch::scene::ISceneNode::getRelativeTransformation(glitch::scene::ISceneNode *this)
{
  int v1; // r3
  char *v3; // r5
  int v4; // r12
  int v5; // r1
  int v6; // r0
  int v8; // r1
  int v9; // r2
  _BYTE v10[68]; // [sp+4h] [bp-44h] BYREF

  v1 = *((_DWORD *)this + 71);
  if ( (v1 & 0xE) == 0 )
    return (char *)this + 104;
  if ( (v1 & 6) != 0 )
  {
    v3 = (char *)this + 104;
    v10[64] = 0;
    glitch::core::quaternion::getMatrix_transposed((float *)this + 46, (int)v10);
    memcpy(v3, v10, 0x41u);
    if ( *((float *)this + 50) != 1.0 || *((float *)this + 51) != 1.0 || *((float *)this + 52) != 1.0 )
      glitch::core::CMatrix4<float>::postScale((int)v3, (float *)this + 50);
    v8 = *((_DWORD *)this + 43);
    v9 = *((_DWORD *)this + 44);
    *((_DWORD *)this + 40) = *((_DWORD *)this + 45);
    *((_BYTE *)this + 168) = 0;
    *((_DWORD *)this + 38) = v8;
    *((_DWORD *)this + 39) = v9;
    v1 = *((_DWORD *)this + 71);
  }
  else
  {
    v4 = *((_DWORD *)this + 43);
    v5 = *((_DWORD *)this + 45);
    v6 = *((_DWORD *)this + 44);
    v3 = (char *)this + 104;
    *((_BYTE *)this + 168) = 0;
    *((_DWORD *)this + 38) = v4;
    *((_DWORD *)this + 39) = v6;
    *((_DWORD *)this + 40) = v5;
  }
  *((_DWORD *)this + 71) = v1 & 0xFFFFFFE1 | 0x10;
  return v3;
}


// ===== 598a04 glitch::scene::ISceneNode::setName(char const*) =====
_DWORD *__fastcall glitch::scene::ISceneNode::setName(glitch::scene::ISceneNode *this, char *a2)
{
  size_t v4; // r0

  v4 = LC_API_STRLEN_0(a2);
  return std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
           (_DWORD *)this + 3,
           a2,
           &a2[v4]);
}


// ===== 598a2c glitch::scene::ISceneNode::logTree(int,int) =====
_DWORD *__fastcall glitch::scene::ISceneNode::logTree(_DWORD *this, int a2, int a3)
{
  _BOOL4 v4; // r2
  _DWORD *v6; // r6
  const char *v7; // r9
  const char *v8; // r0
  const char *v9; // r1
  int v10; // r7
  _DWORD *v11; // r6
  _DWORD *i; // r10
  _DWORD *v13; // t1
  glitch::scene::ISceneNode *v14; // r0
  const char *v15; // [sp+1Ch] [bp-110h]
  int v16; // [sp+20h] [bp-10Ch]
  char v17[256]; // [sp+24h] [bp-108h] BYREF

  v4 = a2 >= a3;
  if ( !a3 )
    v4 = 0;
  v6 = this;
  if ( !v4 )
  {
    LC_API_MEMSET_0(v17, 32, a2);
    v16 = (*(int (__fastcall **)(_DWORD *))(*v6 + 188))(v6);
    v7 = (const char *)(*(int (__fastcall **)(_DWORD *))(*v6 + 84))(v6);
    v15 = (const char *)v6[8];
    v8 = (const char *)(*(int (__fastcall **)(_DWORD *))(*v6 + 88))(v6);
    snprintf(
      &v17[a2],
      256 - a2,
      "uid=%s name=%s scope=%s type=%c%c%c%c",
      v7,
      v15,
      v8,
      (char)v16,
      SBYTE1(v16),
      SBYTE2(v16),
      SHIBYTE(v16));
    this = (_DWORD *)glitch::os::Printer::print((glitch::os::Printer *)v17, v9);
    v10 = a2 + 1;
    v13 = (_DWORD *)v6[61];
    v11 = v6 + 61;
    for ( i = v13; v11 != i; i = (_DWORD *)*i )
    {
      if ( i )
        v14 = (glitch::scene::ISceneNode *)(i - 1);
      else
        v14 = nullptr;
      this = (_DWORD *)glitch::scene::ISceneNode::logTree(v14, v10, a3);
    }
  }
  return this;
}


// ===== 598b84 glitch::scene::ISceneNode::~ISceneNode() =====
void __fastcall glitch::scene::ISceneNode::~ISceneNode(glitch::scene::ISceneNode *this)
{
  glitch::IReferenceCounted *v2; // r0
  char *v3; // r0
  char *v4; // r6
  char *v5; // r4
  glitch::scene::ISceneNode **v6; // r0
  glitch::scene::ISceneNode *v7; // r4
  glitch::scene::ISceneNode **v8; // r3
  glitch::scene::ISceneNode *v9; // r2
  char *v10; // r0

  *(_DWORD *)this = off_976B24;
  *((_DWORD *)this + 76) = off_976C28;
  glitch::scene::ISceneNode::removeAll(this);
  v2 = *((glitch::IReferenceCounted **)this + 69);
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  v3 = *((char **)this + 65);
  v4 = (char *)this + 260;
  if ( (char *)this + 260 != v3 )
  {
    while ( 1 )
    {
      v5 = *(char **)v3;
      GlitchFree(v3);
      if ( v4 == v5 )
        break;
      v3 = v5;
    }
  }
  *((_DWORD *)this + 65) = v4;
  *((_DWORD *)this + 66) = (char *)this + 260;
  v6 = *((glitch::scene::ISceneNode ***)this + 63);
  if ( v6 != (glitch::scene::ISceneNode **)((char *)this + 252) )
  {
    while ( 1 )
    {
      v7 = *v6;
      GlitchFree(v6);
      if ( v7 == (glitch::scene::ISceneNode *)((char *)this + 252) )
        break;
      v6 = (glitch::scene::ISceneNode **)v7;
    }
    v6 = (glitch::scene::ISceneNode **)((char *)this + 252);
  }
  *((_DWORD *)this + 63) = v6;
  *((_DWORD *)this + 64) = v6;
  v8 = *((glitch::scene::ISceneNode ***)this + 61);
  if ( v8 != (glitch::scene::ISceneNode **)((char *)this + 244) )
  {
    while ( 1 )
    {
      v9 = *v8;
      v8[1] = nullptr;
      *v8 = nullptr;
      if ( (glitch::scene::ISceneNode *)((char *)this + 244) == v9 )
        break;
      v8 = (glitch::scene::ISceneNode **)v9;
    }
    v8 = (glitch::scene::ISceneNode **)((char *)this + 244);
  }
  *((_DWORD *)this + 62) = v8;
  *((_DWORD *)this + 61) = v8;
  *((_DWORD *)this + 60) = 0;
  v10 = *((char **)this + 8);
  if ( v10 != (char *)this + 12 && v10 )
    GlitchFree(v10);
  glitch::IObject::~IObject(this);
}


// ===== 598ca0 glitch::scene::ISceneNode::~ISceneNode() =====
void __fastcall glitch::scene::ISceneNode::~ISceneNode(glitch::scene::ISceneNode *this)
{
  glitch::scene::ISceneNode::~ISceneNode(this);
  LC_API_FREE_0(this);
}


// ===== 598cbc glitch::scene::ISceneNode::~ISceneNode() =====
void __fastcall glitch::scene::ISceneNode::~ISceneNode(glitch::scene::ISceneNode *this, int *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *v4; // r0
  char *v5; // r0
  char *v6; // r6
  char *v7; // r4
  glitch::scene::ISceneNode **v8; // r0
  glitch::scene::ISceneNode *v9; // r4
  glitch::scene::ISceneNode **v10; // r3
  glitch::scene::ISceneNode *v11; // r2
  char *v12; // r0

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 28)) = a2[1];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[2];
  glitch::scene::ISceneNode::removeAll(this);
  v4 = *((glitch::IReferenceCounted **)this + 69);
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  v5 = *((char **)this + 65);
  v6 = (char *)this + 260;
  if ( (char *)this + 260 != v5 )
  {
    while ( 1 )
    {
      v7 = *(char **)v5;
      GlitchFree(v5);
      if ( v6 == v7 )
        break;
      v5 = v7;
    }
  }
  *((_DWORD *)this + 65) = v6;
  *((_DWORD *)this + 66) = (char *)this + 260;
  v8 = *((glitch::scene::ISceneNode ***)this + 63);
  if ( v8 != (glitch::scene::ISceneNode **)((char *)this + 252) )
  {
    while ( 1 )
    {
      v9 = *v8;
      GlitchFree(v8);
      if ( v9 == (glitch::scene::ISceneNode *)((char *)this + 252) )
        break;
      v8 = (glitch::scene::ISceneNode **)v9;
    }
    v8 = (glitch::scene::ISceneNode **)((char *)this + 252);
  }
  *((_DWORD *)this + 63) = v8;
  *((_DWORD *)this + 64) = v8;
  v10 = *((glitch::scene::ISceneNode ***)this + 61);
  if ( v10 != (glitch::scene::ISceneNode **)((char *)this + 244) )
  {
    while ( 1 )
    {
      v11 = *v10;
      v10[1] = nullptr;
      *v10 = nullptr;
      if ( (glitch::scene::ISceneNode *)((char *)this + 244) == v11 )
        break;
      v10 = (glitch::scene::ISceneNode **)v11;
    }
    v10 = (glitch::scene::ISceneNode **)((char *)this + 244);
  }
  *((_DWORD *)this + 62) = v10;
  *((_DWORD *)this + 61) = v10;
  *((_DWORD *)this + 60) = 0;
  v12 = *((char **)this + 8);
  if ( v12 != (char *)this + 12 && v12 )
    GlitchFree(v12);
  glitch::IObject::~IObject(this);
}


// ===== 598dd4 glitch::scene::ISceneNode::getSceneNodesFromType(glitch::scene::E_SCENE_NODE_TYPE,std::vector<glitch::scene::ISceneNode*,glitch::core::SAllocator<glitch::scene::ISceneNode*,(glitch::memory::E_MEMORY_HINT)0>> &) =====
void __fastcall glitch::scene::ISceneNode::getSceneNodesFromType(_DWORD *a1, int a2, int a3)
{
  _DWORD *i; // r4
  _DWORD *v7; // r5
  _DWORD *v8; // t1
  _DWORD *v9; // r0
  _DWORD *v10; // r10
  unsigned int v11; // r3
  unsigned int v12; // r8
  size_t v13; // r8
  char *v14; // r0
  char *v15; // r4
  size_t v16; // r10
  char *v17; // r10

  if ( (*(int (__fastcall **)(_DWORD *))(*a1 + 188))(a1) == a2 || a2 == 1601793633 )
  {
    v10 = *(_DWORD **)(a3 + 4);
    if ( v10 == *(_DWORD **)(a3 + 8) )
    {
      v11 = ((int)v10 - *(_DWORD *)a3) >> 2;
      if ( v11 )
        v12 = 2 * v11;
      else
        v12 = 1;
      if ( v12 > 0x3FFFFFFF || v11 > v12 )
        v13 = -4;
      else
        v13 = 4 * v12;
      v14 = (char *)GlitchAlloc(v13, 0);
      v15 = v14;
      v16 = (size_t)v10 - *(_DWORD *)a3;
      if ( v16 )
        v17 = (char *)memmove(v14, *(const void **)a3, v16) + v16;
      else
        v17 = v14;
      *(_DWORD *)v17 = a1;
      GlitchFree(*(void **)a3);
      *(_DWORD *)(a3 + 4) = v17 + 4;
      *(_DWORD *)(a3 + 8) = &v15[v13];
      *(_DWORD *)a3 = v15;
    }
    else
    {
      *v10 = a1;
      *(_DWORD *)(a3 + 4) += 4;
    }
  }
  v8 = (_DWORD *)a1[61];
  v7 = a1 + 61;
  for ( i = v8; v7 != i; i = (_DWORD *)*i )
  {
    if ( i )
      v9 = i - 1;
    else
      v9 = nullptr;
    glitch::scene::ISceneNode::getSceneNodesFromType(v9, a2, a3);
  }
}


// ===== 598ee0 std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block()
{
  ;
}


// ===== 598ee4 glitch::core::CMatrix4<float>::getScale(void) =====
float *__fastcall glitch::core::CMatrix4<float>::getScale(float *a1, float *a2)
{
  float v4; // r0
  float v5; // r0
  float v6; // r0

  a1[2] = 0.0;
  *a1 = 0.0;
  a1[1] = 0.0;
  v4 = sqrt((float)((float)((float)(*a2 * *a2) + (float)(a2[1] * a2[1])) + (float)(a2[2] * a2[2])));
  *a1 = v4;
  v5 = sqrt((float)((float)((float)(a2[4] * a2[4]) + (float)(a2[5] * a2[5])) + (float)(a2[6] * a2[6])));
  a1[1] = v5;
  v6 = sqrt((float)((float)((float)(a2[8] * a2[8]) + (float)(a2[9] * a2[9])) + (float)(a2[10] * a2[10])));
  a1[2] = v6;
  return a1;
}


// ===== 59901c glitch::scene::ISceneNode::setRelativeTransformation(glitch::core::CMatrix4<float> const&) =====
void *__fastcall glitch::scene::ISceneNode::setRelativeTransformation(_DWORD *a1, int a2)
{
  int v3; // r12
  int v4; // r2
  int v5; // r1
  void (__fastcall *v7)(_DWORD *, _DWORD *); // r3
  void (__fastcall *v8)(_DWORD *, float *); // r7
  void (__fastcall *v9)(_DWORD *, float *); // r7
  void *result; // r0
  float v11[4]; // [sp+0h] [bp-2Ch] BYREF
  float v12[3]; // [sp+10h] [bp-1Ch] BYREF
  _DWORD v13[4]; // [sp+1Ch] [bp-10h] BYREF

  v3 = *(_DWORD *)(a2 + 52);
  v4 = *(_DWORD *)(a2 + 56);
  v5 = *(_DWORD *)(a2 + 48);
  v7 = *(void (__fastcall **)(_DWORD *, _DWORD *))(*a1 + 164);
  v13[1] = v3;
  v13[2] = v4;
  v13[0] = v5;
  v7(a1, v13);
  v8 = *(void (__fastcall **)(_DWORD *, float *))(*a1 + 156);
  glitch::core::quaternion::operator=(v11, (float *)a2);
  v8(a1, v11);
  v9 = *(void (__fastcall **)(_DWORD *, float *))(*a1 + 148);
  glitch::core::CMatrix4<float>::getScale(v12, (float *)a2);
  v9(a1, v12);
  result = memcpy(a1 + 26, (const void *)a2, 0x41u);
  a1[71] = a1[71] & 0xFFFFFFE1 | 0x10;
  return result;
}


// ===== 5990c0 glitch::scene::ISceneNode::ISceneNode(int,glitch::core::vector3d<float> const&,glitch::core::quaternion const&,glitch::core::vector3d<float> const&) =====
int __fastcall glitch::scene::ISceneNode::ISceneNode(int a1, int *a2, int a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  int v9; // r2
  int v10; // r1
  int v11; // r2
  int v12; // r3
  int v13; // r3

  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 8) = 0;
  glitch::IObject::IObject((glitch::IObject *)a1);
  v9 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v9 - 28)) = a2[1];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[2];
  *(_DWORD *)(a1 + 28) = a1 + 12;
  *(_DWORD *)(a1 + 32) = a1 + 12;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_BYTE **)(a1 + 28) = 0;
  *(_BYTE *)(a1 + 100) = 0;
  LC_API_MEMSET_0((void *)(a1 + 36), 0, 0x40u);
  *(_DWORD *)(a1 + 36) = 1065353216;
  *(_DWORD *)(a1 + 56) = 1065353216;
  *(_DWORD *)(a1 + 76) = 1065353216;
  *(_DWORD *)(a1 + 96) = 1065353216;
  *(_BYTE *)(a1 + 100) = 1;
  *(_BYTE *)(a1 + 168) = 0;
  LC_API_MEMSET_0((void *)(a1 + 104), 0, 0x40u);
  *(_DWORD *)(a1 + 104) = 1065353216;
  *(_DWORD *)(a1 + 124) = 1065353216;
  *(_DWORD *)(a1 + 144) = 1065353216;
  *(_DWORD *)(a1 + 164) = 1065353216;
  *(_BYTE *)(a1 + 168) = 1;
  *(_DWORD *)(a1 + 172) = *a4;
  *(_DWORD *)(a1 + 176) = a4[1];
  *(_DWORD *)(a1 + 180) = a4[2];
  v10 = a5[1];
  v11 = a5[2];
  v12 = a5[3];
  *(_DWORD *)(a1 + 184) = *a5;
  *(_DWORD *)(a1 + 188) = v10;
  *(_DWORD *)(a1 + 192) = v11;
  *(_DWORD *)(a1 + 196) = v12;
  *(_DWORD *)(a1 + 200) = *a6;
  *(_DWORD *)(a1 + 204) = a6[1];
  v13 = a6[2];
  *(_DWORD *)(a1 + 220) = -1082130432;
  *(_DWORD *)(a1 + 212) = -1082130432;
  *(_DWORD *)(a1 + 208) = v13;
  *(_DWORD *)(a1 + 216) = -1082130432;
  *(_DWORD *)(a1 + 232) = 1065353216;
  *(_DWORD *)(a1 + 224) = 1065353216;
  *(_DWORD *)(a1 + 228) = 1065353216;
  *(_DWORD *)(a1 + 236) = 0;
  *(_DWORD *)(a1 + 240) = 0;
  *(_DWORD *)(a1 + 244) = a1 + 244;
  *(_DWORD *)(a1 + 248) = a1 + 244;
  *(_DWORD *)(a1 + 256) = a1 + 252;
  *(_DWORD *)(a1 + 264) = a1 + 260;
  *(_DWORD *)(a1 + 284) = 1551;
  *(_DWORD *)(a1 + 268) = a3;
  *(_BYTE *)(a1 + 289) = 1;
  *(_DWORD *)(a1 + 296) = 0;
  *(_DWORD *)(a1 + 252) = a1 + 252;
  *(_DWORD *)(a1 + 260) = a1 + 260;
  *(_DWORD *)(a1 + 272) = 0;
  *(_DWORD *)(a1 + 276) = 0;
  *(_DWORD *)(a1 + 280) = 0;
  *(_BYTE *)(a1 + 288) = 1;
  *(_DWORD *)(a1 + 292) = 0;
  *(_DWORD *)(a1 + 300) = 0;
  glitch::scene::ISceneNode::updateAbsolutePosition((float *)a1, 0);
  return a1;
}


// ===== 599268 glitch::scene::ISceneNode::ISceneNode(int,glitch::core::vector3d<float> const&,glitch::core::quaternion const&,glitch::core::vector3d<float> const&) =====
int __fastcall glitch::scene::ISceneNode::ISceneNode(int a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r3

  *(_DWORD *)(a1 + 308) = 1;
  *(_DWORD *)a1 = off_976C5C;
  *(_DWORD *)(a1 + 304) = off_95B720;
  *(int *)((char *)&elf_hash_bucket[21] + a1) = (int)off_976C7C;
  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 8) = 0;
  glitch::IObject::IObject((glitch::IObject *)a1);
  *(_DWORD *)(a1 + 28) = a1 + 12;
  *(_DWORD *)(a1 + 32) = a1 + 12;
  *(_DWORD *)a1 = off_976B24;
  *(_DWORD *)(a1 + 304) = off_976C28;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_BYTE **)(a1 + 28) = 0;
  *(_BYTE *)(a1 + 100) = 0;
  LC_API_MEMSET_0((void *)(a1 + 36), 0, 0x40u);
  *(_DWORD *)(a1 + 36) = 1065353216;
  *(_DWORD *)(a1 + 56) = 1065353216;
  *(_DWORD *)(a1 + 76) = 1065353216;
  *(_DWORD *)(a1 + 96) = 1065353216;
  *(_BYTE *)(a1 + 100) = 1;
  *(_BYTE *)(a1 + 168) = 0;
  LC_API_MEMSET_0((void *)(a1 + 104), 0, 0x40u);
  *(_DWORD *)(a1 + 104) = 1065353216;
  *(_DWORD *)(a1 + 124) = 1065353216;
  *(_DWORD *)(a1 + 144) = 1065353216;
  *(_DWORD *)(a1 + 164) = 1065353216;
  *(_BYTE *)(a1 + 168) = 1;
  *(_DWORD *)(a1 + 172) = *a3;
  *(_DWORD *)(a1 + 176) = a3[1];
  *(_DWORD *)(a1 + 180) = a3[2];
  v7 = a4[1];
  v8 = a4[2];
  v9 = a4[3];
  *(_DWORD *)(a1 + 184) = *a4;
  *(_DWORD *)(a1 + 188) = v7;
  *(_DWORD *)(a1 + 192) = v8;
  *(_DWORD *)(a1 + 196) = v9;
  *(_DWORD *)(a1 + 200) = *a5;
  *(_DWORD *)(a1 + 204) = a5[1];
  v10 = a5[2];
  *(_DWORD *)(a1 + 220) = -1082130432;
  *(_DWORD *)(a1 + 212) = -1082130432;
  *(_DWORD *)(a1 + 208) = v10;
  *(_DWORD *)(a1 + 216) = -1082130432;
  *(_DWORD *)(a1 + 232) = 1065353216;
  *(_DWORD *)(a1 + 224) = 1065353216;
  *(_DWORD *)(a1 + 228) = 1065353216;
  *(_DWORD *)(a1 + 236) = 0;
  *(_DWORD *)(a1 + 240) = 0;
  *(_DWORD *)(a1 + 244) = a1 + 244;
  *(_DWORD *)(a1 + 248) = a1 + 244;
  *(_DWORD *)(a1 + 256) = a1 + 252;
  *(_DWORD *)(a1 + 264) = a1 + 260;
  *(_BYTE *)(a1 + 289) = 1;
  *(_DWORD *)(a1 + 252) = a1 + 252;
  *(_DWORD *)(a1 + 268) = a2;
  *(_DWORD *)(a1 + 284) = 1551;
  *(_DWORD *)(a1 + 296) = 0;
  *(_DWORD *)(a1 + 260) = a1 + 260;
  *(_DWORD *)(a1 + 272) = 0;
  *(_DWORD *)(a1 + 276) = 0;
  *(_DWORD *)(a1 + 280) = 0;
  *(_BYTE *)(a1 + 288) = 1;
  *(_DWORD *)(a1 + 292) = 0;
  *(_DWORD *)(a1 + 300) = 0;
  glitch::scene::ISceneNode::updateAbsolutePosition((float *)a1, 0);
  return a1;
}


// ===== 599444 glitch::scene::ISceneNode::setAbsoluteTransformation(glitch::core::CMatrix4<float> &) =====
glitch::core::quaternion *__fastcall glitch::scene::ISceneNode::setAbsoluteTransformation(int a1, void *a2)
{
  const void *v2; // r5
  int v5; // r3
  float *v6; // r0
  float *v7; // r2
  int v8; // r6
  int v9; // r2
  int v10; // r3
  float v11; // r9
  float v12; // r10
  float v13; // r6
  float v14; // r0
  float v15; // r0
  float v16; // r9
  float v17; // r10
  float v18; // r6
  float v19; // r0
  float v20; // r0
  float v21; // r9
  float v22; // r10
  float v23; // r6
  float v24; // r0
  float v25; // r0
  glitch::core::quaternion *result; // r0
  float v27[5]; // [sp+4h] [bp-D0h] BYREF
  float v28; // [sp+18h] [bp-BCh]
  float v29; // [sp+1Ch] [bp-B8h]
  float v30; // [sp+24h] [bp-B0h]
  float v31; // [sp+28h] [bp-ACh]
  float v32; // [sp+2Ch] [bp-A8h]
  int v33; // [sp+40h] [bp-94h]
  char v34; // [sp+44h] [bp-90h]
  _BYTE v35[68]; // [sp+48h] [bp-8Ch] BYREF
  float v36[16]; // [sp+8Ch] [bp-48h] BYREF
  char v37; // [sp+CCh] [bp-8h]

  v2 = (const void *)(a1 + 36);
  memcpy((void *)(a1 + 36), a2, 0x41u);
  v5 = *(_DWORD *)(a1 + 236);
  if ( v5 )
  {
    v37 = 0;
    v6 = (float *)(*(int (__fastcall **)(int))(*(_DWORD *)v5 + 56))(v5);
    glitch::core::CMatrix4<float>::getInverse(v6, v36);
    v7 = (float *)a2;
    v8 = a1 + 104;
    glitch::core::CMatrix4<float>::operator*((int)v35, v36, v7);
    memcpy((void *)(a1 + 104), v35, 0x41u);
  }
  else
  {
    v8 = a1 + 104;
    memcpy((void *)(a1 + 104), v2, 0x41u);
  }
  v9 = *(_DWORD *)(a1 + 156);
  v10 = *(_DWORD *)(a1 + 160);
  *(_DWORD *)(a1 + 172) = *(_DWORD *)(a1 + 152);
  *(_DWORD *)(a1 + 176) = v9;
  *(_DWORD *)(a1 + 180) = v10;
  LC_API_MEMSET_0(v27, 0, 0x40u);
  v11 = *(float *)(a1 + 104);
  v12 = *(float *)(v8 + 4);
  v34 = 1;
  v27[0] = 1.0;
  v28 = 1.0;
  v32 = 1.0;
  v33 = 1065353216;
  v13 = *(float *)(v8 + 8);
  v14 = sqrt((float)((float)((float)(v11 * v11) + (float)(v12 * v12)) + (float)(v13 * v13)));
  *(float *)(a1 + 200) = v14;
  v15 = 1.0 / v14;
  v34 = 0;
  v27[0] = v15 * v11;
  v27[1] = v15 * v12;
  v16 = *(float *)(a1 + 120);
  v27[2] = v15 * v13;
  v17 = *(float *)(a1 + 124);
  v18 = *(float *)(a1 + 128);
  v19 = sqrt((float)((float)((float)(v16 * v16) + (float)(v17 * v17)) + (float)(v18 * v18)));
  *(float *)(a1 + 204) = v19;
  v20 = 1.0 / v19;
  v34 = 0;
  v27[4] = v20 * v16;
  v28 = v20 * v17;
  v21 = *(float *)(a1 + 136);
  v29 = v20 * v18;
  v22 = *(float *)(a1 + 140);
  v23 = *(float *)(a1 + 144);
  v24 = sqrt((float)((float)((float)(v21 * v21) + (float)(v22 * v22)) + (float)(v23 * v23)));
  *(float *)(a1 + 208) = v24;
  v25 = 1.0 / v24;
  v34 = 0;
  v30 = v25 * v21;
  v31 = v25 * v22;
  v32 = v25 * v23;
  result = glitch::core::quaternion::operator=((float *)(a1 + 184), v27);
  *(_DWORD *)(a1 + 284) |= 0x20u;
  return result;
}


// ===== 599728 `virtual thunk to'glitch::scene::ISceneNode::~ISceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::ISceneNode::~ISceneNode(glitch::scene::ISceneNode *this)
{
  glitch::scene::ISceneNode::~ISceneNode((glitch::scene::ISceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 599738 `virtual thunk to'glitch::scene::ISceneNode::~ISceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::ISceneNode::~ISceneNode(glitch::scene::ISceneNode *this)
{
  glitch::scene::ISceneNode::~ISceneNode((glitch::scene::ISceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 599748 `virtual thunk to'glitch::scene::ISceneNode::~ISceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::ISceneNode::~ISceneNode(glitch::scene::ISceneNode *this)
{
  glitch::scene::ISceneNode::~ISceneNode((glitch::scene::ISceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 599758 `virtual thunk to'glitch::scene::ISceneNode::~ISceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::ISceneNode::~ISceneNode(glitch::scene::ISceneNode *this)
{
  glitch::scene::ISceneNode::~ISceneNode((glitch::scene::ISceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 599768 `virtual thunk to'glitch::scene::ISceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::scene::ISceneNode::deserializeAttributes(_DWORD *a1, int *a2, _DWORD *a3)
{
  return glitch::scene::ISceneNode::deserializeAttributes((int)a1 + *(_DWORD *)(*a1 - 20), a2, a3);
}


// ===== 599778 `virtual thunk to'glitch::scene::ISceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::scene::ISceneNode::serializeAttributes(_DWORD *a1, int a2, _DWORD *a3)
{
  return glitch::scene::ISceneNode::serializeAttributes((int)a1 + *(_DWORD *)(*a1 - 16), a2, a3);
}


// ===== 599788 `virtual thunk to'glitch::scene::ISceneNode::onDelete(void) =====
int __fastcall `virtual thunk to'glitch::scene::ISceneNode::onDelete(glitch::scene::ISceneNode *this)
{
  return glitch::scene::ISceneNode::onDelete((glitch::scene::ISceneNode *)((char *)this
                                                                         + *(_DWORD *)(*(_DWORD *)this - 16)));
}


// ===== 599798 glitch::scene::ISceneNodeAnimator::updateTime(uint) =====
void __fastcall glitch::scene::ISceneNodeAnimator::updateTime(glitch::scene::ISceneNodeAnimator *this, unsigned int a2)
{
  ;
}


// ===== 59979c glitch::scene::ISceneNodeAnimator::isEventReceiverEnabled(void) =====
int __fastcall glitch::scene::ISceneNodeAnimator::isEventReceiverEnabled(glitch::scene::ISceneNodeAnimator *this)
{
  return 0;
}


// ===== 5997a4 `non-virtual thunk to'glitch::scene::ISceneNodeAnimator::onEvent(glitch::SEvent const&) =====
int __fastcall `non-virtual thunk to'glitch::scene::ISceneNodeAnimator::onEvent(int a1)
{
  return glitch::scene::ISceneNodeAnimator::onEvent(a1 - 4);
}


// ===== 5997ac glitch::scene::ISceneNodeAnimator::onEvent(glitch::SEvent const&) =====
int glitch::scene::ISceneNodeAnimator::onEvent()
{
  return 0;
}


// ===== 5997b4 glitch::scene::ISceneNodeAnimator::getType(void) =====
int __fastcall glitch::scene::ISceneNodeAnimator::getType(glitch::scene::ISceneNodeAnimator *this)
{
  return 10;
}


// ===== 5997bc glitch::scene::ISceneNodeAnimator::onBind(glitch::scene::ISceneNode *) =====
void __fastcall glitch::scene::ISceneNodeAnimator::onBind(
        glitch::scene::ISceneNodeAnimator *this,
        glitch::scene::ISceneNode *a2)
{
  ;
}


// ===== 5997c0 glitch::scene::ISceneNodeAnimator::onUnbind(glitch::scene::ISceneNode *) =====
void __fastcall glitch::scene::ISceneNodeAnimator::onUnbind(
        glitch::scene::ISceneNodeAnimator *this,
        glitch::scene::ISceneNode *a2)
{
  ;
}


// ===== 5997c4 glitch::scene::ISceneNodeAnimator::setAnimationClip(int) =====
int __fastcall glitch::scene::ISceneNodeAnimator::setAnimationClip(glitch::scene::ISceneNodeAnimator *this, int a2)
{
  return (*(int (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 2) + 16))(*((_DWORD *)this + 2), a2);
}


// ===== 5997e0 glitch::scene::ISceneNodeAnimator::setAnimationClip(char const*) =====
int __fastcall glitch::scene::ISceneNodeAnimator::setAnimationClip(
        glitch::scene::ISceneNodeAnimator *this,
        const char *a2)
{
  return (*(int (__fastcall **)(_DWORD, const char *))(**((_DWORD **)this + 2) + 20))(*((_DWORD *)this + 2), a2);
}


// ===== 5997fc glitch::scene::ISceneNodeAnimator::getAnimationClipIndex(char const*) =====
int __fastcall glitch::scene::ISceneNodeAnimator::getAnimationClipIndex(
        glitch::scene::ISceneNodeAnimator *this,
        const char *a2)
{
  return (*(int (__fastcall **)(_DWORD, const char *))(**((_DWORD **)this + 2) + 24))(*((_DWORD *)this + 2), a2);
}


// ===== 599818 glitch::scene::ISceneNodeAnimator::setTimelineCtrl(glitch::scene::ITimelineController *) =====
int __fastcall glitch::scene::ISceneNodeAnimator::setTimelineCtrl(int result, _DWORD *a2)
{
  _DWORD *v2; // r3
  int v3; // r4

  v2 = *(_DWORD **)(result + 8);
  v3 = result;
  if ( v2 )
    result = glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v2 + *(_DWORD *)(*v2 - 12)));
  *(_DWORD *)(v3 + 8) = a2;
  if ( a2 )
    ++*(_DWORD *)((char *)a2 + *(_DWORD *)(*a2 - 12) + 4);
  return result;
}


// ===== 599868 glitch::scene::ISceneNodeAnimator::getTimelineCtrl(void) =====
int __fastcall glitch::scene::ISceneNodeAnimator::getTimelineCtrl(glitch::scene::ISceneNodeAnimator *this)
{
  return *((_DWORD *)this + 2);
}


// ===== 599870 glitch::scene::ISceneNodeAnimator::getTimelineCtrl(void) =====
int __fastcall glitch::scene::ISceneNodeAnimator::getTimelineCtrl(glitch::scene::ISceneNodeAnimator *this)
{
  return *((_DWORD *)this + 2);
}


// ===== 599878 glitch::scene::ISceneNodeAnimator::getLength(void) =====
int __fastcall glitch::scene::ISceneNodeAnimator::getLength(glitch::scene::ISceneNodeAnimator *this)
{
  return 0;
}


// ===== 599880 glitch::scene::ISceneNodeAnimator::computeAnimationValues(uint) =====
void __fastcall glitch::scene::ISceneNodeAnimator::computeAnimationValues(
        glitch::scene::ISceneNodeAnimator *this,
        unsigned int a2)
{
  ;
}


// ===== 599884 glitch::scene::ISceneNodeAnimator::applyAnimationValues(uint) =====
void __fastcall glitch::scene::ISceneNodeAnimator::applyAnimationValues(
        glitch::scene::ISceneNodeAnimator *this,
        unsigned int a2)
{
  ;
}


// ===== 599888 `global constructor keyed to'.._source_glitch_scene_ISceneNodeAnimator.cpp =====
void `global constructor keyed to'.._source_glitch_scene_ISceneNodeAnimator.cpp()
{
  dword_9F68CC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F68C8 = 1056964608;
}


// ===== 5998a8 `non-virtual thunk to'glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator() =====
void __fastcall `non-virtual thunk to'glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(
        glitch::scene::ISceneNodeAnimator *this)
{
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator((glitch::scene::ISceneNodeAnimator *)((char *)this - 4));
}


// ===== 5998b0 glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator() =====
void __fastcall glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(glitch::scene::ISceneNodeAnimator *this)
{
  _DWORD *v1; // r1

  v1 = *((_DWORD **)this + 2);
  *(_DWORD *)this = off_976C94;
  *((_DWORD *)this + 3) = off_976D0C;
  *((_DWORD *)this + 1) = off_976CF0;
  if ( v1 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 12)));
  glitch::IObject::~IObject(this);
}


// ===== 599914 `non-virtual thunk to'glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator() =====
void __fastcall `non-virtual thunk to'glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(
        glitch::scene::ISceneNodeAnimator *this)
{
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator((glitch::scene::ISceneNodeAnimator *)((char *)this - 4));
}


// ===== 59991c glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator() =====
void __fastcall glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(glitch::scene::ISceneNodeAnimator *this)
{
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(this);
  LC_API_FREE_0(this);
}


// ===== 599938 glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator() =====
void __fastcall glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(
        glitch::scene::ISceneNodeAnimator *this,
        int *a2)
{
  int v2; // r3
  _DWORD *v4; // r1

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[3];
  v4 = *((_DWORD **)this + 2);
  *((_DWORD *)this + 1) = off_976CF0;
  if ( v4 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v4 + *(_DWORD *)(*v4 - 12)));
  glitch::IObject::~IObject(this);
}


// ===== 5999a0 `virtual thunk to'glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator() =====
void __fastcall `virtual thunk to'glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(
        glitch::scene::ISceneNodeAnimator *this)
{
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator((glitch::scene::ISceneNodeAnimator *)((char *)this
                                                                                             + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 5999b0 `virtual thunk to'glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator() =====
void __fastcall `virtual thunk to'glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(
        glitch::scene::ISceneNodeAnimator *this)
{
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator((glitch::scene::ISceneNodeAnimator *)((char *)this
                                                                                             + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 5999c0 `global constructor keyed to'.._source_glitch_scene_IShadowVolumeSceneNode.cpp =====
int `global constructor keyed to'.._source_glitch_scene_IShadowVolumeSceneNode.cpp()
{
  dword_9F68D8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F68D4 = 1056964608;
  glitch::scene::IShadowVolumeSceneNode::Material = 0;
  return _aeabi_atexit(
           (int)&glitch::scene::IShadowVolumeSceneNode::Material,
           (int)boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr,
           (int)&_dso_handle);
}


// ===== 599a24 glitch::scene::IShadowVolumeSceneNode::unSetupMaterials(void) =====
glitch::video::CMaterial **__fastcall glitch::scene::IShadowVolumeSceneNode::unSetupMaterials(
        glitch::scene::IShadowVolumeSceneNode *this)
{
  int v1; // r2
  glitch::video::CMaterial *v2; // r1
  glitch::video::CMaterial **result; // r0
  glitch::video::CMaterial *v4; // [sp+4h] [bp-8h] BYREF

  v1 = --glitch::scene::IShadowVolumeSceneNode::MaterialCount;
  if ( !glitch::scene::IShadowVolumeSceneNode::MaterialCount )
  {
    v2 = (glitch::video::CMaterial *)glitch::scene::IShadowVolumeSceneNode::Material;
    glitch::scene::IShadowVolumeSceneNode::Material = v1;
    v4 = v2;
    return boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v4);
  }
  return result;
}


// ===== 599a80 glitch::scene::IShadowVolumeSceneNode::setupMaterials(glitch::video::IVideoDriver *) =====
void __fastcall glitch::scene::IShadowVolumeSceneNode::setupMaterials(
        glitch::scene::IShadowVolumeSceneNode *this,
        glitch::video::IVideoDriver *a2)
{
  glitch::video::CMaterial *v3; // r3
  glitch::video::CMaterial *v4; // r1
  int v5; // r3
  glitch::video::CMaterialRenderer *v6; // r0
  int v7; // r12
  int v8; // r5
  int v9; // r3
  int v10; // r2
  unsigned int v11; // r1
  _BYTE v12[8]; // [sp+Ch] [bp-18h] BYREF
  glitch::video::CMaterial *v13; // [sp+14h] [bp-10h] BYREF
  glitch::video::CMaterial *v14; // [sp+18h] [bp-Ch] BYREF
  glitch::video::CMaterialRenderer *v15; // [sp+1Ch] [bp-8h] BYREF

  if ( !glitch::scene::IShadowVolumeSceneNode::Material )
  {
    glitch::collada::CColladaDatabase::CColladaDatabase(
      (glitch::collada::CColladaDatabase *)v12,
      "ShadowVolume.bdae",
      (glitch::collada::CColladaFactory *)&glitch::collada::CColladaDatabase::DefaultFactory);
    glitch::collada::CColladaDatabase::constructEffect(
      (int)&v15,
      (glitch::collada::CColladaDatabase *)v12,
      (int)a2,
      "ShadowVolume",
      0);
    glitch::video::CMaterial::allocate(&v14, &v15, 0, 0);
    v3 = v14;
    v13 = v14;
    if ( v14 )
    {
      ++*(_DWORD *)v14;
      v3 = v13;
    }
    v4 = (glitch::video::CMaterial *)glitch::scene::IShadowVolumeSceneNode::Material;
    glitch::scene::IShadowVolumeSceneNode::Material = (int)v3;
    v13 = v4;
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v13);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v14);
    v5 = *((unsigned __int8 *)a2 + 309);
    if ( v5 != 8 && *((_BYTE *)a2 + 309) )
    {
      v6 = v15;
      if ( !*((_BYTE *)v15 + 16) )
      {
LABEL_14:
        glitch::scene::IShadowVolumeSceneNode::TechniqueZPass = glitch::video::CMaterialRenderer::getTechniqueID(
                                                                  v6,
                                                                  (glitch::core::detail::SSharedStringHeapEntry::SData *)"DepthPassFirstPass");
        byte_99B5E5 = glitch::video::CMaterialRenderer::getTechniqueID(
                        v15,
                        (glitch::core::detail::SSharedStringHeapEntry::SData *)"DepthPassSecondPass");
        glitch::scene::IShadowVolumeSceneNode::TechniqueZFail = glitch::video::CMaterialRenderer::getTechniqueID(
                                                                  v15,
                                                                  (glitch::core::detail::SSharedStringHeapEntry::SData *)"DepthFailFirstPass");
        byte_99B5E9 = glitch::video::CMaterialRenderer::getTechniqueID(
                        v15,
                        (glitch::core::detail::SSharedStringHeapEntry::SData *)"DepthFailSecondPass");
        glitch::scene::IShadowVolumeSceneNode::TechniqueDraw = glitch::video::CMaterialRenderer::getTechniqueID(
                                                                 v15,
                                                                 (glitch::core::detail::SSharedStringHeapEntry::SData *)"DrawShadowZone");
        boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v15);
        glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CColladaDatabase *)v12);
        goto LABEL_2;
      }
      v7 = (unsigned __int8)((1 << (v5 - 1)) - 1);
      v8 = 12 * (unsigned __int8)(*((_BYTE *)v15 + 16) - 1) + 12;
      v9 = 0;
      while ( 1 )
      {
        v10 = *(_DWORD *)(*((_DWORD *)v6 + 6) + v9 + 8);
        v9 += 12;
        v11 = (v7 << 8) | *(_DWORD *)v10 & 0xFFFF00FF;
        if ( v7 != (unsigned __int8)BYTE1(*(_DWORD *)v10) )
          *(_BYTE *)(v10 + 48) = 1;
        *(_DWORD *)v10 = v11;
        if ( v9 == v8 )
          break;
        v6 = v15;
      }
    }
    v6 = v15;
    goto LABEL_14;
  }
LABEL_2:
  ++glitch::scene::IShadowVolumeSceneNode::MaterialCount;
}


// ===== 599ca8 glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode() =====
void __fastcall glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode(
        glitch::scene::IShadowVolumeSceneNode *this)
{
  *(_DWORD *)this = off_976D7C;
  *((_DWORD *)this + 77) = off_976E90;
  glitch::scene::ISceneNode::~ISceneNode(this, (int *)off_976EA4);
}


// ===== 599cf4 glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode() =====
void __fastcall glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode(
        glitch::scene::IShadowVolumeSceneNode *this)
{
  glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode(this);
  LC_API_FREE_0(this);
}


// ===== 599d10 glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode() =====
void __fastcall glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode(
        glitch::scene::IShadowVolumeSceneNode *this,
        int *a2)
{
  int v2; // r2

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 28)) = a2[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[5];
  glitch::scene::ISceneNode::~ISceneNode(this, a2 + 1);
}


// ===== 599d50 glitch::scene::IShadowVolumeSceneNode::IShadowVolumeSceneNode(int) =====
glitch::scene::IShadowVolumeSceneNode *__fastcall glitch::scene::IShadowVolumeSceneNode::IShadowVolumeSceneNode(
        glitch::scene::IShadowVolumeSceneNode *this,
        int a2)
{
  _DWORD v4[4]; // [sp+8h] [bp-2Ch] BYREF
  _DWORD v5[3]; // [sp+18h] [bp-1Ch] BYREF
  _DWORD v6[4]; // [sp+24h] [bp-10h] BYREF

  *((_DWORD *)this + 78) = 1;
  *((_DWORD *)this + 77) = off_95B720;
  *(_DWORD *)this = off_976FFC;
  *(int *)((char *)&elf_hash_bucket[22] + (_DWORD)this) = (int)off_97701C;
  v5[2] = 1065353216;
  memset(v6, 0, 12);
  memset(v4, 0, 12);
  v4[3] = 1065353216;
  v5[0] = 1065353216;
  v5[1] = 1065353216;
  glitch::scene::ISceneNode::ISceneNode((int)this, (int *)off_976EA4, a2, v6, v4, v5);
  *((_BYTE *)this + 304) = 0;
  *(_DWORD *)this = off_976D7C;
  *((_DWORD *)this + 77) = off_976E90;
  return this;
}


// ===== 599e24 glitch::scene::IShadowVolumeSceneNode::IShadowVolumeSceneNode(int) =====
glitch::scene::IShadowVolumeSceneNode *__fastcall glitch::scene::IShadowVolumeSceneNode::IShadowVolumeSceneNode(
        glitch::scene::IShadowVolumeSceneNode *this,
        int *a2,
        int a3)
{
  int v5; // r3
  _DWORD v7[4]; // [sp+8h] [bp-2Ch] BYREF
  _DWORD v8[3]; // [sp+18h] [bp-1Ch] BYREF
  _DWORD v9[4]; // [sp+24h] [bp-10h] BYREF

  v8[2] = 1065353216;
  memset(v9, 0, 12);
  memset(v7, 0, 12);
  v7[3] = 1065353216;
  v8[0] = 1065353216;
  v8[1] = 1065353216;
  glitch::scene::ISceneNode::ISceneNode((int)this, a2 + 1, a3, v9, v7, v8);
  v5 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v5 - 28)) = a2[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[5];
  *((_BYTE *)this + 304) = 0;
  return this;
}


// ===== 599eb8 `virtual thunk to'glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode(
        glitch::scene::IShadowVolumeSceneNode *this)
{
  glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode((glitch::scene::IShadowVolumeSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 599ec8 `virtual thunk to'glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode(
        glitch::scene::IShadowVolumeSceneNode *this)
{
  glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode((glitch::scene::IShadowVolumeSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 599ed8 `virtual thunk to'glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode(
        glitch::scene::IShadowVolumeSceneNode *this)
{
  glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode((glitch::scene::IShadowVolumeSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 599ee8 `virtual thunk to'glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode(
        glitch::scene::IShadowVolumeSceneNode *this)
{
  glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode((glitch::scene::IShadowVolumeSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 599ef8 glitch::scene::IAnimatedMesh::~IAnimatedMesh() =====
void __fastcall glitch::scene::IAnimatedMesh::~IAnimatedMesh(glitch::scene::IAnimatedMesh *this)
{
  ;
}


// ===== 599efc glitch::scene::IAnimatedMesh::getMeshType(void) =====
int __fastcall glitch::scene::IAnimatedMesh::getMeshType(glitch::scene::IAnimatedMesh *this)
{
  return 0;
}


// ===== 599f04 glitch::scene::SAnimatedMesh::getFrameCount(void) =====
int __fastcall glitch::scene::SAnimatedMesh::getFrameCount(glitch::scene::SAnimatedMesh *this)
{
  return (*((_DWORD *)this + 9) - *((_DWORD *)this + 8)) >> 2;
}


// ===== 599f18 glitch::scene::SAnimatedMesh::getMesh(int,int,int,int) =====
_DWORD *__fastcall glitch::scene::SAnimatedMesh::getMesh(_DWORD *this, int a2, int a3, int a4, int a5)
{
  int v5; // r3
  int v6; // r3

  v5 = *(_DWORD *)(a2 + 32);
  if ( v5 == *(_DWORD *)(a2 + 36) )
  {
    *this = 0;
  }
  else
  {
    v6 = *(_DWORD *)(v5 + 4 * a3);
    *this = v6;
    if ( v6 )
      ++*(_DWORD *)(v6 + 4);
  }
  return this;
}


// ===== 599f4c glitch::scene::SAnimatedMesh::getBoundingBox(void) =====
char *__fastcall glitch::scene::SAnimatedMesh::getBoundingBox(glitch::scene::SAnimatedMesh *this)
{
  return (char *)this + 8;
}


// ===== 599f54 glitch::scene::SAnimatedMesh::setBoundingBox(glitch::core::aabbox3d<float> const&) =====
_DWORD *__fastcall glitch::scene::SAnimatedMesh::setBoundingBox(_DWORD *result, _DWORD *a2)
{
  result[2] = *a2;
  result[3] = a2[1];
  result[4] = a2[2];
  result[5] = a2[3];
  result[6] = a2[4];
  result[7] = a2[5];
  return result;
}


// ===== 599f88 glitch::scene::SAnimatedMesh::getMeshType(void) =====
int __fastcall glitch::scene::SAnimatedMesh::getMeshType(glitch::scene::SAnimatedMesh *this)
{
  return *((_DWORD *)this + 11);
}


// ===== 599f90 glitch::scene::SAnimatedMesh::getMeshBufferCount(void) =====
int __fastcall glitch::scene::SAnimatedMesh::getMeshBufferCount(glitch::scene::SAnimatedMesh *this)
{
  _DWORD *v1; // r3

  v1 = *((_DWORD **)this + 8);
  if ( v1 == *((_DWORD **)this + 9) )
    return 0;
  else
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)*v1 + 16))(*v1);
}


// ===== 599fc4 glitch::scene::SAnimatedMesh::getMeshBuffer(uint) =====
glitch::scene::SAnimatedMesh *__fastcall glitch::scene::SAnimatedMesh::getMeshBuffer(
        glitch::scene::SAnimatedMesh *this,
        unsigned int a2)
{
  _DWORD *v2; // r3

  v2 = *(_DWORD **)(a2 + 32);
  if ( v2 == *(_DWORD **)(a2 + 36) )
    *(_DWORD *)this = 0;
  else
    (*(void (__fastcall **)(glitch::scene::SAnimatedMesh *, _DWORD))(*(_DWORD *)*v2 + 20))(this, *v2);
  return this;
}


// ===== 59a000 glitch::scene::SAnimatedMesh::getMaterial(uint) =====
glitch::scene::SAnimatedMesh *__fastcall glitch::scene::SAnimatedMesh::getMaterial(
        glitch::scene::SAnimatedMesh *this,
        unsigned int a2)
{
  _DWORD *v2; // r3

  v2 = *(_DWORD **)(a2 + 32);
  if ( v2 == *(_DWORD **)(a2 + 36) )
    *(_DWORD *)this = 0;
  else
    (*(void (__fastcall **)(glitch::scene::SAnimatedMesh *, _DWORD))(*(_DWORD *)*v2 + 24))(this, *v2);
  return this;
}


// ===== 59a03c glitch::scene::SAnimatedMesh::getMaterialVertexAttributeMap(uint) =====
glitch::scene::SAnimatedMesh *__fastcall glitch::scene::SAnimatedMesh::getMaterialVertexAttributeMap(
        glitch::scene::SAnimatedMesh *this,
        unsigned int a2)
{
  _DWORD *v2; // r3

  v2 = *(_DWORD **)(a2 + 32);
  if ( v2 == *(_DWORD **)(a2 + 36) )
    *(_DWORD *)this = 0;
  else
    (*(void (__fastcall **)(glitch::scene::SAnimatedMesh *, _DWORD))(*(_DWORD *)*v2 + 28))(this, *v2);
  return this;
}


// ===== 59a078 glitch::scene::SAnimatedMesh::setMaterial(uint,boost::intrusive_ptr<glitch::video::CMaterial> const&,boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&) =====
_DWORD *__fastcall glitch::scene::SAnimatedMesh::setMaterial(int a1)
{
  _DWORD *v1; // r12
  _DWORD *result; // r0

  v1 = *(_DWORD **)(a1 + 36);
  result = *(_DWORD **)(a1 + 32);
  if ( result != v1 )
    return (_DWORD *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)*result + 32))(*result);
  return result;
}


// ===== 59a0a4 glitch::scene::`anonymous namespace'::getTriangleIndices(glitch::video::E_INDEX_TYPE,void const*,uint,uint &,uint &,uint &) =====
unsigned __int16 *__fastcall glitch::scene::`anonymous namespace'::getTriangleIndices(
        unsigned __int16 *result,
        int a2,
        int a3,
        _DWORD *a4,
        _DWORD *a5,
        _DWORD *a6)
{
  int v6; // r1
  int v7; // t1

  if ( result == (unsigned __int16 *)((char *)&dword_0 + 1) )
  {
    result = (unsigned __int16 *)(a2 + 2 * a3);
    *a4 = *result;
    *a5 = result[1];
    *a6 = result[2];
  }
  else if ( result == (_WORD *)&dword_0 + 1 )
  {
    *a4 = *(_DWORD *)(a2 + 4 * a3);
    *a5 = *(_DWORD *)(a2 + 4 * (a3 + 1));
    *a6 = *(_DWORD *)(a2 + 4 * (a3 + 2));
    return (unsigned __int16 *)(a3 + 1);
  }
  else if ( !result )
  {
    v7 = *(unsigned __int8 *)(a2 + a3);
    v6 = a2 + a3;
    *a4 = v7;
    *a5 = *(unsigned __int8 *)(v6 + 1);
    *a6 = *(unsigned __int8 *)(v6 + 2);
  }
  return result;
}


// ===== 59a130 glitch::scene::`anonymous namespace'::swapIndices(glitch::video::E_INDEX_TYPE,void *,uint,uint) =====
int __fastcall glitch::scene::`anonymous namespace'::swapIndices(int result, int a2, int a3, int a4)
{
  int v4; // r2
  int v5; // r3

  switch ( result )
  {
    case 1:
      v4 = 2 * a3;
      v5 = 2 * a4;
      result = *(unsigned __int16 *)(a2 + v4);
      *(_WORD *)(a2 + v4) = *(_WORD *)(a2 + v5);
      *(_WORD *)(a2 + v5) = result;
      break;
    case 2:
      result = *(_DWORD *)(a2 + 4 * a3);
      *(_DWORD *)(a2 + 4 * a3) = *(_DWORD *)(a2 + 4 * a4);
      *(_DWORD *)(a2 + 4 * a4) = result;
      break;
    case 0:
      result = *(unsigned __int8 *)(a2 + a3);
      *(_BYTE *)(a2 + a3) = *(_BYTE *)(a2 + a4);
      *(_BYTE *)(a2 + a4) = result;
      break;
  }
  return result;
}


// ===== 59a188 glitch::scene::createMeshUniquePrimitives(boost::intrusive_ptr<glitch::scene::IMesh> const&) =====
int *__fastcall glitch::scene::createMeshUniquePrimitives(int *result, int *a2)
{
  int v2; // r3
  bool v3; // zf

  v2 = *a2;
  v3 = *a2 == 0;
  *result = *a2;
  if ( !v3 )
    ++*(_DWORD *)(v2 + 4);
  return result;
}


// ===== 59a1a4 glitch::scene::createMeshWelded(boost::intrusive_ptr<glitch::scene::IMesh> const&,float) =====
int *__fastcall glitch::scene::createMeshWelded(int *result, int *a2)
{
  int v2; // r3
  bool v3; // zf

  v2 = *a2;
  v3 = *a2 == 0;
  *result = *a2;
  if ( !v3 )
    ++*(_DWORD *)(v2 + 4);
  return result;
}


// ===== 59a1c0 glitch::scene::SAnimatedMesh::recalculateBoundingBox(void) =====
int __fastcall glitch::scene::SAnimatedMesh::recalculateBoundingBox(int this)
{
  _DWORD *v1; // r2
  _DWORD *v2; // r1
  int v3; // r5
  int v4; // r3
  int v5; // r1
  unsigned int v6; // r4
  int v7; // r3
  float *v8; // r0

  v1 = *(_DWORD **)(this + 32);
  v2 = *(_DWORD **)(this + 36);
  v3 = this;
  *(_DWORD *)(this + 16) = 0;
  *(_DWORD *)(this + 20) = 0;
  *(_DWORD *)(this + 24) = 0;
  *(_DWORD *)(this + 28) = 0;
  *(_DWORD *)(this + 8) = 0;
  *(_DWORD *)(this + 12) = 0;
  if ( v1 != v2 )
  {
    this = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)*v1 + 36))(*v1);
    v4 = *(_DWORD *)(v3 + 32);
    v5 = *(_DWORD *)(v3 + 36);
    *(_DWORD *)(v3 + 8) = *(_DWORD *)this;
    *(_DWORD *)(v3 + 12) = *(_DWORD *)(this + 4);
    *(_DWORD *)(v3 + 16) = *(_DWORD *)(this + 8);
    *(_DWORD *)(v3 + 20) = *(_DWORD *)(this + 12);
    *(_DWORD *)(v3 + 24) = *(_DWORD *)(this + 16);
    *(_DWORD *)(v3 + 28) = *(_DWORD *)(this + 20);
    if ( (unsigned int)((v5 - v4) >> 2) > 1 )
    {
      v6 = 1;
      do
      {
        v7 = *(_DWORD *)(v4 + 4 * v6++);
        v8 = (float *)(*(int (__fastcall **)(int))(*(_DWORD *)v7 + 36))(v7);
        this = glitch::core::aabbox3d<float>::addInternalBox((float *)(v3 + 8), v8);
        v4 = *(_DWORD *)(v3 + 32);
      }
      while ( v6 < (*(_DWORD *)(v3 + 36) - v4) >> 2 );
    }
  }
  return this;
}


// ===== 59a294 glitch::core::vector3d<float>::operator/(glitch::core::vector3d<float> const&) =====
float *__fastcall glitch::core::vector3d<float>::operator/(float *a1, float *a2, float *a3)
{
  float v4; // r7
  float v5; // r0

  v4 = a2[2] / a3[2];
  v5 = *a2 / *a3;
  a1[1] = a2[1] / a3[1];
  *a1 = v5;
  a1[2] = v4;
  return a1;
}


// ===== 59a2e4 std::priv::__copy<boost::intrusive_ptr<glitch::scene::IMesh> const*,boost::intrusive_ptr<glitch::scene::IMesh>*,int>(boost::intrusive_ptr<glitch::scene::IMesh> const*,boost::intrusive_ptr<glitch::scene::IMesh> const*,boost::intrusive_ptr<glitch::scene::IMesh>*,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy<boost::intrusive_ptr<glitch::scene::IMesh> const*,boost::intrusive_ptr<glitch::scene::IMesh>*,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r1
  int v4; // r5
  int v7; // r7
  int v8; // r6
  int v9; // r3
  glitch::IReferenceCounted *v10; // r0

  v3 = a2 - a1;
  v4 = v3 >> 2;
  if ( v3 >> 2 > 0 )
  {
    v7 = v3 >> 2;
    v8 = 0;
    do
    {
      v9 = *(_DWORD *)(a1 + v8);
      if ( v9 )
        ++*(_DWORD *)(v9 + 4);
      v10 = *(glitch::IReferenceCounted **)(a3 + v8);
      *(_DWORD *)(a3 + v8) = v9;
      v8 += 4;
      if ( v10 )
        glitch::IReferenceCounted::drop(v10);
      --v7;
    }
    while ( v7 );
    a3 += 4 * v4;
  }
  return a3;
}


// ===== 59a348 `global constructor keyed to'.._source_glitch_scene_MeshManipulator.cpp =====
void `global constructor keyed to'.._source_glitch_scene_MeshManipulator.cpp()
{
  dword_9F68EC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F68E8 = 1056964608;
}


// ===== 59a368 std::vector<boost::intrusive_ptr<glitch::scene::IMesh>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<boost::intrusive_ptr<glitch::scene::IMesh> const*>(uint &,boost::intrusive_ptr<glitch::scene::IMesh> const*,boost::intrusive_ptr<glitch::scene::IMesh> const*) =====
char *__fastcall std::vector<boost::intrusive_ptr<glitch::scene::IMesh>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<boost::intrusive_ptr<glitch::scene::IMesh> const*>(
        int a1,
        _DWORD *a2,
        int a3,
        int a4)
{
  int v5; // r5
  char *result; // r0
  int v7; // r1
  int v8; // r2
  int v9; // r3

  v5 = (a4 - a3) >> 2;
  result = (char *)GlitchAlloc(4 * *a2, 0);
  if ( v5 > 0 )
  {
    v8 = 0;
    do
    {
      v9 = *(_DWORD *)(a3 + v8);
      *(_DWORD *)&result[v8] = v9;
      if ( v9 )
        v7 = *(_DWORD *)(v9 + 4);
      v8 += 4;
      if ( v9 )
        *(_DWORD *)(v9 + 4) = ++v7;
      --v5;
    }
    while ( v5 );
  }
  return result;
}


// ===== 59a3c0 std::vector<boost::intrusive_ptr<glitch::scene::IMesh>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear(void) =====
void __fastcall std::vector<boost::intrusive_ptr<glitch::scene::IMesh>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear(
        void **a1)
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
      v5 = *((glitch::IReferenceCounted **)v4 - 1);
      v4 -= 4;
      if ( v5 )
        glitch::IReferenceCounted::drop(v5);
    }
    while ( v2 != v4 );
    v3 = (char *)*a1;
  }
  GlitchFree(v3);
}


// ===== 59a404 std::vector<boost::intrusive_ptr<glitch::scene::IMesh>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>,(glitch::memory::E_MEMORY_HINT)0>>::operator=(std::vector<boost::intrusive_ptr<glitch::scene::IMesh>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
int __fastcall std::vector<boost::intrusive_ptr<glitch::scene::IMesh>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
        int a1,
        int *a2)
{
  int v4; // r3
  int v5; // r12
  char *v6; // r2
  unsigned int v7; // r6
  unsigned int v8; // r1
  int v9; // r0
  glitch::IReferenceCounted **v10; // r7
  glitch::IReferenceCounted **i; // r5
  glitch::IReferenceCounted *v12; // r0
  char *v13; // r8
  int v15; // r7
  int v16; // r1
  int v17; // r12
  unsigned int v18; // r0
  int v19; // r2
  int v20; // r3
  int v21; // r3
  int v22; // [sp+Ch] [bp-Ch] BYREF

  if ( a2 != (int *)a1 )
  {
    v4 = a2[1];
    v5 = *a2;
    v6 = *(char **)a1;
    v7 = (v4 - *a2) >> 2;
    if ( v7 > (*(_DWORD *)(a1 + 8) - *(_DWORD *)a1) >> 2 )
    {
      v22 = (v4 - *a2) >> 2;
      v13 = std::vector<boost::intrusive_ptr<glitch::scene::IMesh>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<boost::intrusive_ptr<glitch::scene::IMesh> const*>(
              a1,
              &v22,
              v5,
              v4);
      std::vector<boost::intrusive_ptr<glitch::scene::IMesh>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear((void **)a1);
      v21 = v22;
      *(_DWORD *)a1 = v13;
      *(_DWORD *)(a1 + 8) = &v13[4 * v21];
      goto LABEL_9;
    }
    v8 = (*(_DWORD *)(a1 + 4) - (int)v6) >> 2;
    if ( v7 > v8 )
    {
      v15 = 0;
      std::priv::__copy<boost::intrusive_ptr<glitch::scene::IMesh> const*,boost::intrusive_ptr<glitch::scene::IMesh>*,int>(
        v5,
        v5 + 4 * v8,
        (int)v6);
      v13 = *(char **)a1;
      v17 = *(_DWORD *)(a1 + 4);
      v18 = *a2 + ((v17 - *(_DWORD *)a1) & 0xFFFFFFFC);
      v19 = (int)(a2[1] - v18) >> 2;
      if ( v19 <= 0 )
        goto LABEL_9;
      do
      {
        v20 = *(_DWORD *)(v18 + v15);
        *(_DWORD *)(v17 + v15) = v20;
        if ( v20 )
          v16 = *(_DWORD *)(v20 + 4);
        v15 += 4;
        if ( v20 )
          *(_DWORD *)(v20 + 4) = ++v16;
        --v19;
      }
      while ( v19 );
    }
    else
    {
      v9 = std::priv::__copy<boost::intrusive_ptr<glitch::scene::IMesh> const*,boost::intrusive_ptr<glitch::scene::IMesh>*,int>(
             v5,
             v4,
             (int)v6);
      v10 = *(glitch::IReferenceCounted ***)(a1 + 4);
      for ( i = (glitch::IReferenceCounted **)v9; v10 != i; ++i )
      {
        v12 = *i;
        if ( v12 )
          glitch::IReferenceCounted::drop(v12);
      }
    }
    v13 = *(char **)a1;
LABEL_9:
    *(_DWORD *)(a1 + 4) = &v13[4 * v7];
  }
  return a1;
}


// ===== 59a548 std::vector<boost::intrusive_ptr<glitch::scene::IMesh>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
char **__fastcall std::vector<boost::intrusive_ptr<glitch::scene::IMesh>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        void **a1)
{
  char *v1; // r4
  char *v2; // r5
  glitch::IReferenceCounted *v4; // r0

  v1 = (char *)a1[1];
  v2 = (char *)*a1;
  if ( v1 != *a1 )
  {
    do
    {
      v4 = *((glitch::IReferenceCounted **)v1 - 1);
      v1 -= 4;
      if ( v4 )
        glitch::IReferenceCounted::drop(v4);
    }
    while ( v2 != v1 );
  }
  if ( *a1 )
    GlitchFree(*a1);
  return (char **)a1;
}


// ===== 59a594 glitch::scene::SAnimatedMesh::~SAnimatedMesh() =====
void __fastcall glitch::scene::SAnimatedMesh::~SAnimatedMesh(void **this)
{
  *this = off_977030;
  std::vector<boost::intrusive_ptr<glitch::scene::IMesh>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(this + 8);
}


// ===== 59a5c8 std::vector<boost::intrusive_ptr<glitch::scene::IMesh>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move(void) =====
void __fastcall std::vector<boost::intrusive_ptr<glitch::scene::IMesh>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move(
        void **a1)
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
      v5 = *((glitch::IReferenceCounted **)v4 - 1);
      v4 -= 4;
      if ( v5 )
        glitch::IReferenceCounted::drop(v5);
    }
    while ( v2 != v4 );
    v3 = (char *)*a1;
  }
  GlitchFree(v3);
}


// ===== 59a60c glitch::scene::IAnimatedMesh::~IAnimatedMesh() =====
void __fastcall glitch::scene::IAnimatedMesh::~IAnimatedMesh(glitch::scene::IAnimatedMesh *this)
{
  LC_API_FREE_0(this);
}


// ===== 59a620 glitch::scene::`anonymous namespace'::calculateTangents(glitch::core::vector3d<float> &,glitch::core::vector3d<float> &,glitch::core::vector3d<float> &,glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,glitch::core::vector2d<float> const&,glitch::core::vector2d<float> const&,glitch::core::vector2d<float> const&) =====
bool __fastcall glitch::scene::`anonymous namespace'::calculateTangents(
        float *a1,
        float *a2,
        float *a3,
        float *a4,
        float *a5,
        float *a6,
        float *a7,
        float *a8,
        float *a9)
{
  float v12; // r11
  float v13; // r10
  float v14; // r7
  float v15; // r9
  float v16; // r0
  float v17; // r8
  float v18; // r8
  float v19; // r7
  float v20; // r9
  float v21; // r0
  float v22; // r8
  float v23; // r10
  float v24; // r7
  _BOOL4 result; // r0
  int v26; // r3
  int v27; // r2
  unsigned int v28; // r2
  unsigned int v29; // r3
  float v30; // [sp+0h] [bp-1Ch]
  float v31; // [sp+0h] [bp-1Ch]
  float v32; // [sp+0h] [bp-1Ch]
  float v33; // [sp+4h] [bp-18h]
  float v34; // [sp+8h] [bp-14h]
  float v35; // [sp+Ch] [bp-10h]
  float v36; // [sp+Ch] [bp-10h]
  float v37; // [sp+10h] [bp-Ch]
  float v38; // [sp+14h] [bp-8h]

  v12 = *a4 - *a5;
  v30 = a4[1];
  v13 = v30 - a5[1];
  v33 = a4[2];
  v14 = v33 - a5[2];
  v15 = *a6 - *a4;
  v16 = a6[1] - v30;
  v17 = v16;
  v34 = a6[2] - v33;
  *a1 = (float)(v14 * COERCE_FLOAT(LODWORD(v16) + 0x80000000)) + (float)(v13 * v34);
  a1[1] = (float)(v12 * COERCE_FLOAT(LODWORD(v34) + 0x80000000)) + (float)(v14 * v15);
  a1[2] = (float)(v13 * COERCE_FLOAT(LODWORD(v15) + 0x80000000)) + (float)(v12 * v16);
  glitch::core::vector3d<float>::normalize(a1);
  v35 = *a7 - *a8;
  v38 = *a9 - *a7;
  *a3 = (float)(v38 * v12) - (float)(v35 * v15);
  a3[1] = (float)(v38 * v13) - (float)(v35 * v17);
  a3[2] = (float)(v38 * v14) - (float)(v35 * v34);
  glitch::core::vector3d<float>::normalize(a3);
  v31 = a7[1];
  v36 = v31 - a8[1];
  v37 = a9[1] - v31;
  *a2 = (float)(v37 * v12) - (float)(v36 * v15);
  a2[1] = (float)(v37 * v13) - (float)(v36 * v17);
  a2[2] = (float)(v37 * v14) - (float)(v36 * v34);
  glitch::core::vector3d<float>::normalize(a2);
  v18 = a2[2];
  v19 = a3[1];
  v32 = a2[1];
  v20 = (float)((float)(COERCE_FLOAT(LODWORD(v32) + 0x80000000) * a3[2]) + (float)(v18 * v19)) * *a1;
  v21 = COERCE_FLOAT(LODWORD(v18) + 0x80000000) * *a3;
  LODWORD(v22) = *(_DWORD *)a2 + 0x80000000;
  v23 = v20 + (float)((float)(v21 + (float)(a3[2] * *a2)) * a1[1]);
  v24 = v19 * v22;
  result = (float)(v23 + (float)((float)(v24 + (float)(v32 * *a3)) * a1[2])) < 0.0;
  if ( (float)(v23 + (float)((float)(v24 + (float)(v32 * *a3)) * a1[2])) < 0.0 )
  {
    v26 = *((_DWORD *)a2 + 1);
    v27 = *((_DWORD *)a2 + 2);
    *a2 = v22;
    *((_DWORD *)a2 + 2) = v27 + 0x80000000;
    *((_DWORD *)a2 + 1) = v26 + 0x80000000;
    v28 = *(_DWORD *)a3 + 0x80000000;
    v29 = *((_DWORD *)a3 + 1) + 0x80000000;
    *((_DWORD *)a3 + 2) += 0x80000000;
    *(_DWORD *)a3 = v28;
    *((_DWORD *)a3 + 1) = v29;
  }
  return result;
}


// ===== 59aa28 glitch::scene::`anonymous namespace'::getAngleWeight(glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&) =====
float *__fastcall glitch::scene::`anonymous namespace'::getAngleWeight(float *a1, float *a2, float *a3, float *a4)
{
  float v8; // r9
  float v9; // r6
  float v10; // r6
  float v11; // r5
  float v12; // r11
  float v13; // r0
  float v14; // r8
  float v15; // r8
  float v16; // r9
  float v17; // r0
  float v18; // r7
  float v19; // r9
  float v20; // r10
  float v21; // r9
  float v23; // [sp+4h] [bp-8h]
  float v24; // [sp+4h] [bp-8h]

  v8 = a3[1] - a4[1];
  v9 = a3[2] - a4[2];
  v10 = (float)((float)((float)(*a3 - *a4) * (float)(*a3 - *a4)) + (float)(v8 * v8)) + (float)(v9 * v9);
  v11 = sqrtf(v10);
  v12 = *a2 - *a4;
  v13 = a2[1] - a4[1];
  v14 = a2[2] - a4[2];
  v15 = (float)((float)(v12 * v12) + (float)(v13 * v13)) + (float)(v14 * v14);
  v23 = sqrtf(v15);
  v16 = a2[1] - a3[1];
  v17 = a2[2] - a3[2];
  v18 = (float)((float)((float)(*a2 - *a3) * (float)(*a2 - *a3)) + (float)(v16 * v16)) + (float)(v17 * v17);
  v19 = sqrtf(v18);
  v20 = v23 + v23;
  v24 = acosf((float)((float)(v15 + v18) - v10) / (float)(v19 * (float)(v23 + v23)));
  v21 = acosf((float)((float)(v18 - v15) + v10) / (float)(v19 * (float)(v11 + v11)));
  a1[2] = acosf((float)((float)(v15 - v18) + v10) / (float)(v11 * v20));
  a1[1] = v21;
  *a1 = v24;
  return a1;
}


// ===== 59aca8 glitch::video::CVertexStreams::setStream(glitch::video::SVertexStream *,glitch::video::SVertexStreamData const&,bool) [clone] =====
int __fastcall glitch::video::CVertexStreams::setStream(glitch::video::CVertexStreams *this, int a2, _DWORD *a3)
{
  int v3; // r3
  _DWORD *v4; // r5
  bool v6; // zf
  glitch::IReferenceCounted *v8; // r0

  v3 = *a3;
  v4 = a3;
  v6 = *a3 == 0;
  if ( *a3 )
    a3 = *(_DWORD **)(v3 + 4);
  if ( !v6 )
    *(_DWORD *)(v3 + 4) = (char *)a3 + 1;
  v8 = *(glitch::IReferenceCounted **)a2;
  *(_DWORD *)a2 = v3;
  if ( v8 )
    glitch::IReferenceCounted::drop(v8);
  *(_DWORD *)(a2 + 4) = v4[1];
  *(_WORD *)(a2 + 10) = *((_WORD *)v4 + 4);
  *(_WORD *)(a2 + 12) = *((_WORD *)v4 + 6);
  *(_WORD *)(a2 + 14) = *((_WORD *)v4 + 7);
  return glitch::video::CVertexStreams::updateHomogeneityInternal(this, 0);
}


// ===== 59ad10 glitch::scene::SAnimatedMesh::SAnimatedMesh(boost::intrusive_ptr<glitch::scene::IMesh> const&,glitch::scene::E_ANIMATED_MESH_TYPE) =====
glitch::scene::SAnimatedMesh *__fastcall glitch::scene::SAnimatedMesh::SAnimatedMesh(
        glitch::scene::SAnimatedMesh *this,
        int *a2,
        int a3)
{
  int v4; // r5
  _DWORD *v6; // r0
  int v7; // lr
  int v8; // r2
  _DWORD *v9; // r7
  int v10; // r1
  int *v11; // r5
  int v12; // r12
  int v13; // r3
  int v14; // r3
  bool v15; // zf
  _DWORD *v16; // r5

  v4 = 0;
  *(_DWORD *)this = off_977030;
  *((_DWORD *)this + 4) = -1082130432;
  *((_DWORD *)this + 7) = 1065353216;
  *((_DWORD *)this + 11) = a3;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = -1082130432;
  *((_DWORD *)this + 3) = -1082130432;
  *((_DWORD *)this + 5) = 1065353216;
  *((_DWORD *)this + 6) = 1065353216;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  if ( *a2 )
  {
    v6 = GlitchAlloc(4u, 0);
    v8 = *((_DWORD *)this + 8);
    v9 = v6;
    v10 = -v8 >> 2;
    if ( v10 > 0 )
    {
      v12 = -v8 >> 2;
      do
      {
        v13 = *(_DWORD *)(v8 + v4 * 4);
        v6[v4] = v13;
        if ( v13 )
          v7 = *(_DWORD *)(v13 + 4);
        ++v4;
        if ( v13 )
          *(_DWORD *)(v13 + 4) = ++v7;
        --v12;
      }
      while ( v12 );
      v11 = &v6[v10];
    }
    else
    {
      v11 = v6;
    }
    v14 = *a2;
    v15 = *a2 == 0;
    *v11 = *a2;
    if ( !v15 )
      v8 = *(_DWORD *)(v14 + 4);
    v16 = v11 + 1;
    if ( !v15 )
      *(_DWORD *)(v14 + 4) = v8 + 1;
    std::vector<boost::intrusive_ptr<glitch::scene::IMesh>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move((void **)this + 8);
    *((_DWORD *)this + 9) = v16;
    *((_DWORD *)this + 10) = v9 + 1;
    *((_DWORD *)this + 8) = v9;
  }
  glitch::scene::SAnimatedMesh::recalculateBoundingBox((int)this);
  return this;
}


// ===== 59ae1c glitch::scene::createAnimatedMesh(boost::intrusive_ptr<glitch::scene::IMesh> const&,glitch::scene::E_ANIMATED_MESH_TYPE) =====
glitch::scene::SAnimatedMesh **__fastcall glitch::scene::createAnimatedMesh(
        glitch::scene::SAnimatedMesh **a1,
        int *a2,
        int a3)
{
  glitch::scene::SAnimatedMesh *v6; // r4
  int v7; // r3
  glitch::scene::SAnimatedMesh **result; // r0

  v6 = (glitch::scene::SAnimatedMesh *)operator new(0x30u, 0);
  glitch::scene::SAnimatedMesh::SAnimatedMesh(v6, a2, a3);
  *a1 = v6;
  if ( v6 )
    v7 = *((_DWORD *)v6 + 1);
  result = a1;
  if ( v6 )
    *((_DWORD *)v6 + 1) = v7 + 1;
  return result;
}


// ===== 59ae64 glitch::scene::SAnimatedMesh::clone(void) =====
glitch::scene::SAnimatedMesh *__fastcall glitch::scene::SAnimatedMesh::clone(
        glitch::scene::SAnimatedMesh *this,
        int *a2)
{
  int v4; // r8
  glitch::scene::SAnimatedMesh *v5; // r5
  _DWORD *v6; // r3
  int v7; // r0
  glitch::IReferenceCounted *v9; // [sp+4h] [bp-4h] BYREF

  v9 = nullptr;
  v4 = (*(int (__fastcall **)(int *))(*a2 + 56))(a2);
  v5 = (glitch::scene::SAnimatedMesh *)operator new(0x30u, 0);
  glitch::scene::SAnimatedMesh::SAnimatedMesh(v5, (int *)&v9, v4);
  *(_DWORD *)this = v5;
  if ( v5 )
    ++*((_DWORD *)v5 + 1);
  if ( v9 )
    glitch::IReferenceCounted::drop(v9);
  v6 = *(_DWORD **)this;
  v7 = *(_DWORD *)this + 32;
  v6[2] = a2[2];
  v6[3] = a2[3];
  v6[4] = a2[4];
  v6[5] = a2[5];
  v6[6] = a2[6];
  v6[7] = a2[7];
  std::vector<boost::intrusive_ptr<glitch::scene::IMesh>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
    v7,
    a2 + 8);
  return this;
}


// ===== 59af20 glitch::scene::getPolyCount(boost::intrusive_ptr<glitch::scene::IMesh> const&) =====
int __fastcall glitch::scene::getPolyCount(_DWORD *a1)
{
  int v1; // r3
  int v3; // r5
  unsigned int v4; // r4
  bool v5; // cf
  unsigned int v6; // r2
  glitch::IReferenceCounted *v8; // [sp+4h] [bp-8h] BYREF

  v1 = *a1;
  if ( !*a1 )
    return 0;
  v4 = 0;
  v3 = 0;
  while ( 1 )
  {
    v5 = v4 >= (*(int (__fastcall **)(int))(*(_DWORD *)v1 + 16))(v1);
    v6 = v4;
    if ( v5 )
      break;
    ++v4;
    (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, unsigned int))(*(_DWORD *)*a1 + 20))(&v8, *a1, v6);
    v3 += glitch::video::CPrimitiveStream::getPrimitiveCount((glitch::IReferenceCounted *)((char *)v8 + 24));
    if ( v8 )
      glitch::IReferenceCounted::drop(v8);
    v1 = *a1;
  }
  return v3;
}


// ===== 59afb8 glitch::scene::getPolyCount(boost::intrusive_ptr<glitch::scene::IAnimatedMesh> const&) =====
int __fastcall glitch::scene::getPolyCount(_DWORD *a1)
{
  int PolyCount; // r4
  glitch::IReferenceCounted *v4; // [sp+Ch] [bp-4h] BYREF

  if ( !*a1 || !(*(int (__fastcall **)(_DWORD))(*(_DWORD *)*a1 + 48))(*a1) )
    return 0;
  (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, _DWORD, int, int, int))(*(_DWORD *)*a1 + 52))(
    &v4,
    *a1,
    0,
    255,
    -1,
    -1);
  PolyCount = glitch::scene::getPolyCount(&v4);
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  return PolyCount;
}


// ===== 59b048 glitch::scene::SAnimatedMesh::~SAnimatedMesh() =====
void __fastcall glitch::scene::SAnimatedMesh::~SAnimatedMesh(void **this)
{
  *this = off_977030;
  std::vector<boost::intrusive_ptr<glitch::scene::IMesh>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(this + 8);
  LC_API_FREE_0(this);
}


// ===== 59b084 glitch::scene::flipSurfaces(boost::intrusive_ptr<glitch::scene::IMesh> const&) =====
_DWORD *__fastcall glitch::scene::flipSurfaces(_DWORD *result)
{
  _DWORD *v1; // r11
  _DWORD *v2; // r9
  glitch::IReferenceCounted *v3; // r6
  int v4; // r0
  unsigned int v5; // r8
  int v6; // r5
  int v7; // r10
  unsigned int i; // r4
  int v9; // r2
  int v10; // r3
  _BYTE *v11; // r4
  char v12; // r3
  unsigned int k; // r4
  int v14; // r2
  int v15; // r3
  int v16; // r4
  int v17; // r2
  int v18; // r3
  unsigned int j; // r4
  int v20; // r2
  int v21; // r3
  _DWORD *v22; // [sp+0h] [bp-1Ch]
  glitch::IReferenceCounted *v23; // [sp+14h] [bp-8h] BYREF

  v1 = result;
  if ( *result )
  {
    result = (_DWORD *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)*result + 16))(*result);
    v22 = result;
    if ( result )
    {
      v2 = nullptr;
      do
      {
        (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, _DWORD))(*(_DWORD *)*v1 + 20))(&v23, *v1, 0);
        v3 = v23;
        if ( v23 )
          glitch::IReferenceCounted::drop(v23);
        v4 = *((_DWORD *)v3 + 6);
        if ( v4 )
        {
          result = (_DWORD *)glitch::video::IBuffer::map(v4, 3);
          v5 = *((_DWORD *)v3 + 8);
          v6 = (int)result + *((_DWORD *)v3 + 7);
          v7 = *((unsigned __int16 *)v3 + 22);
          switch ( *((_WORD *)v3 + 23) )
          {
            case 4:
            case 7:
              if ( v5 )
              {
                for ( i = 0; i < v5; i += 2 )
                {
                  v9 = i;
                  v10 = i + 1;
                  result = (_DWORD *)glitch::scene::`anonymous namespace'::swapIndices(v7, v6, v9, v10);
                }
              }
              break;
            case 5:
              if ( v5 >> 1 > 1 )
              {
                v16 = 1;
                do
                {
                  v17 = v16;
                  v18 = v5 - v16++;
                  result = (_DWORD *)glitch::scene::`anonymous namespace'::swapIndices(v7, v6, v17, v18);
                }
                while ( v16 != v5 >> 1 );
              }
              break;
            case 6:
              if ( v5 )
              {
                for ( j = 0; j < v5; j += 3 )
                {
                  v20 = j + 1;
                  v21 = j + 2;
                  result = (_DWORD *)glitch::scene::`anonymous namespace'::swapIndices(v7, v6, v20, v21);
                }
              }
              break;
            case 8:
              if ( v5 )
              {
                for ( k = 0; k < v5; k += 4 )
                {
                  v14 = k + 1;
                  v15 = k + 3;
                  result = (_DWORD *)glitch::scene::`anonymous namespace'::swapIndices(v7, v6, v14, v15);
                }
              }
              break;
            default:
              break;
          }
          if ( v6 )
          {
            v11 = *((_BYTE **)v3 + 6);
            v12 = v11[19];
            if ( (v12 & 0x1Fu) <= 1 )
            {
              if ( (v11[18] & 0x20) != 0 )
                result = (_DWORD *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v11 + 24))(*((_DWORD *)v3 + 6));
              v11[19] = 0;
            }
            else
            {
              v11[19] = ((v12 & 0x1F) - 1) | v12 & 0xE0;
            }
          }
        }
        else
        {
          result = (_DWORD *)glitch::os::Printer::log("flipSurfaces", "flipping unindexed surfaces not supported", 1);
        }
        v2 = (_DWORD *)((char *)v2 + 1);
      }
      while ( v2 != v22 );
    }
  }
  return result;
}


// ===== 59b2a4 glitch::scene::createMeshCopy(boost::intrusive_ptr<glitch::scene::IMesh> const&,glitch::video::IVideoDriver *,uint,uint) =====
glitch::IReferenceCounted **__fastcall glitch::scene::createMeshCopy(
        glitch::IReferenceCounted **a1,
        _DWORD *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  glitch::IReferenceCounted *v5; // r11
  __int16 v6; // r6
  int v7; // r5
  __int16 v8; // r7
  int v9; // r8
  int v10; // r10
  int v11; // r9
  _DWORD *v12; // r4
  glitch::video::CVertexStreams *v13; // r3
  glitch::IReferenceCounted *v14; // r4
  _DWORD *v15; // r6
  int v16; // r7
  unsigned __int16 *v17; // r5
  unsigned __int16 *v18; // r7
  int v19; // r8
  int v20; // r11
  int v21; // r1
  int v22; // r1
  glitch::IReferenceCounted *v23; // r3
  __int16 v24; // r12
  __int16 v25; // r9
  __int16 v26; // r9
  void *v27; // r7
  unsigned __int16 *v28; // r6
  _DWORD *v29; // r10
  glitch::IReferenceCounted *v30; // r9
  int v31; // r3
  int v32; // r2
  void (__fastcall *v33)(glitch::IReferenceCounted *, int); // r4
  int v34; // r0
  int v36; // r8
  int v37; // r3
  char *v38; // r7
  int v39; // r4
  unsigned __int16 *v40; // r10
  void *v41; // r0
  size_t v42; // r5
  _BYTE *v43; // r4
  char v44; // r3
  _BYTE *v45; // r4
  char v46; // r3
  glitch::IReferenceCounted *v47; // r3
  unsigned __int16 v48; // r12
  int v49; // [sp+18h] [bp-A4h]
  _DWORD *v50; // [sp+18h] [bp-A4h]
  _DWORD *v51; // [sp+1Ch] [bp-A0h]
  char *v52; // [sp+1Ch] [bp-A0h]
  glitch::IReferenceCounted *v53; // [sp+20h] [bp-9Ch]
  size_t v54; // [sp+28h] [bp-94h]
  size_t v55; // [sp+28h] [bp-94h]
  int v56; // [sp+2Ch] [bp-90h]
  _DWORD *v57; // [sp+38h] [bp-84h]
  glitch::IReferenceCounted *v60; // [sp+50h] [bp-6Ch]
  int v62; // [sp+58h] [bp-64h]
  glitch::IReferenceCounted *v64[3]; // [sp+7Ch] [bp-40h] BYREF
  __int16 v65; // [sp+88h] [bp-34h]
  __int16 v66; // [sp+8Ah] [bp-32h]
  glitch::IReferenceCounted *v67[3]; // [sp+8Ch] [bp-30h] BYREF
  unsigned __int16 v68; // [sp+98h] [bp-24h]
  __int16 v69; // [sp+9Ah] [bp-22h]
  glitch::video::CVertexStreams *v70; // [sp+9Ch] [bp-20h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v71; // [sp+A0h] [bp-1Ch] BYREF
  glitch::video::CMaterial *v72; // [sp+A4h] [bp-18h] BYREF
  glitch::IReferenceCounted *v73; // [sp+A8h] [bp-14h] BYREF
  glitch::IReferenceCounted *v74; // [sp+ACh] [bp-10h] BYREF
  glitch::IReferenceCounted *v75; // [sp+B0h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v76; // [sp+B4h] [bp-8h] BYREF

  if ( *a2 )
  {
    v60 = (glitch::IReferenceCounted *)operator new(0x2Cu, 0);
    glitch::scene::CMesh::CMesh(v60);
    if ( v60 )
      ++*((_DWORD *)v60 + 1);
    v62 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)*a2 + 16))(*a2);
    if ( !v62 )
    {
LABEL_50:
      v33 = *(void (__fastcall **)(glitch::IReferenceCounted *, int))(*(_DWORD *)v60 + 40);
      v34 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)*a2 + 36))(*a2);
      v33(v60, v34);
      *a1 = v60;
      ++*((_DWORD *)v60 + 1);
      glitch::IReferenceCounted::drop(v60);
      return a1;
    }
    v56 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int))(*(_DWORD *)*a2 + 20))(&v76, *a2, v56);
      v5 = v76;
      if ( v76 )
        glitch::IReferenceCounted::drop(v76);
      a4 &= a5 | *(_DWORD *)(*((_DWORD *)v5 + 5) + 4);
      if ( !*((_DWORD *)v5 + 6) )
        break;
      glitch::video::IBuffer::clone((glitch::video::IBuffer *)&v75);
      v53 = v75;
      if ( !v75 )
      {
        glitch::video::IBuffer::copy(nullptr);
        goto LABEL_75;
      }
      ++*((_DWORD *)v75 + 1);
      if ( v75 )
        glitch::IReferenceCounted::drop(v75);
      glitch::video::IBuffer::copy(v53);
      v6 = *((_WORD *)v5 + 23);
      v7 = *((_DWORD *)v5 + 7);
      v8 = *((_WORD *)v5 + 22);
      v9 = *((_DWORD *)v5 + 8);
      v10 = *((_DWORD *)v5 + 9);
      v11 = *((_DWORD *)v5 + 10);
      ++*((_DWORD *)v53 + 1);
LABEL_14:
      v12 = operator new(0x38u, 0);
      v12[4] = 0;
      v12[1] = 0;
      v12[2] = 0;
      v12[3] = 0;
      *v12 = off_988098;
      glitch::video::CVertexStreams::allocate((glitch::video::CVertexStreams *)(v12 + 5), a4);
      v12[6] = v53;
      if ( v53 )
        ++*((_DWORD *)v53 + 1);
      *((_BYTE *)v12 + 52) = 0;
      v12[12] = 0;
      v12[7] = v7;
      v12[8] = v9;
      v12[9] = v10;
      v12[10] = v11;
      *((_WORD *)v12 + 22) = v8;
      *((_WORD *)v12 + 23) = v6;
      v74 = (glitch::IReferenceCounted *)v12;
      ++v12[1];
      if ( v53 )
        glitch::IReferenceCounted::drop(v53);
      v14 = nullptr;
      v70 = *((glitch::video::CVertexStreams **)v5 + 5);
      v13 = v70;
      if ( v70 )
      {
        ++*(_DWORD *)v70;
        v13 = v70;
      }
      v49 = *((_DWORD *)v13 + 2);
      boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v70);
      v15 = *((_DWORD **)v74 + 5);
      v15[2] = v49;
      (*(void (__fastcall **)(glitch::IReferenceCounted **, int, _DWORD, int, _DWORD, _DWORD, int))(*(_DWORD *)a3 + 120))(
        &v73,
        a3,
        0,
        4,
        0,
        0,
        1);
      v16 = *((_DWORD *)v5 + 5);
      v51 = v15 + 5;
      v17 = *(unsigned __int16 **)(v16 + 16);
      if ( v15 + 5 != (_DWORD *)v15[4] )
      {
        v54 = (size_t)v5;
        v18 = (unsigned __int16 *)(v16 + 20);
        v19 = (int)(v15 + 5);
        v20 = v15[4];
        while ( v18 != v17 )
        {
          v21 = *(unsigned __int16 *)(v19 + 8);
          while ( v18[4] < v21 )
          {
            v18 += 8;
            if ( v18 == v17 )
              goto LABEL_52;
          }
          *(_DWORD *)(v19 + 4) = v14;
          if ( v18[4] == v21 )
          {
            v47 = (glitch::IReferenceCounted *)v18[5];
            v48 = v18[6];
            v67[0] = v73;
            if ( v73 )
              ++*((_DWORD *)v73 + 1);
            v67[2] = v47;
            v68 = v48;
            v67[1] = v14;
            v69 = 0;
            glitch::video::CVertexStreams::setStream((glitch::video::CVertexStreams *)v15, v19, v67);
            if ( v67[0] )
              glitch::IReferenceCounted::drop(v67[0]);
            v14 = (glitch::IReferenceCounted *)(unsigned __int16)((_WORD)v14
                                                                + *(_WORD *)(v19 + 12)
                                                                * glitch::video::detail::SVertexAttributeTypeInspection::ValueTypeSize[*(unsigned __int16 *)(v19 + 10)]);
            goto LABEL_33;
          }
LABEL_28:
          v22 = 4 * v21;
          v23 = (glitch::IReferenceCounted *)*(unsigned __int16 *)&glitch::video::detail::SVertexAttributeTypeInspection::Defaults[v22];
          v24 = glitch::video::detail::SVertexAttributeTypeInspection::Defaults[v22 + 2];
          v25 = glitch::video::detail::SVertexAttributeTypeInspection::ValueTypeSize[(_DWORD)v23];
          v64[0] = v73;
          v26 = v25 * v24;
          if ( v73 )
            ++*((_DWORD *)v73 + 1);
          v64[2] = v23;
          v65 = v24;
          v64[1] = v14;
          v66 = 0;
          glitch::video::CVertexStreams::setStream((glitch::video::CVertexStreams *)v15, v19, v64);
          if ( v64[0] )
            glitch::IReferenceCounted::drop(v64[0]);
          v14 = (glitch::IReferenceCounted *)(unsigned __int16)((_WORD)v14 + v26);
LABEL_33:
          v19 += 16;
          if ( v19 == v20 )
          {
            v5 = (glitch::IReferenceCounted *)v54;
            goto LABEL_35;
          }
        }
        v21 = *(unsigned __int16 *)(v19 + 8);
LABEL_52:
        *(_DWORD *)(v19 + 4) = v14;
        v18 = v17;
        goto LABEL_28;
      }
LABEL_35:
      v55 = v49 * (_DWORD)v14;
      v27 = operator new[](v49 * (_DWORD)v14, 0);
      glitch::video::IBuffer::reset(v73, v49 * (_DWORD)v14, v27, 1);
      LC_API_MEMSET_0(v27, 0, v49 * (_DWORD)v14);
      v50 = (_DWORD *)v15[4];
      if ( v51 != v50 )
      {
        v28 = (unsigned __int16 *)(*((_DWORD *)v5 + 5) + 20);
        v29 = v51;
        v30 = v14;
        do
        {
          *((_WORD *)v29 + 7) = (_WORD)v30;
          if ( v28 != v17 )
          {
            v31 = v28[4];
            v32 = *((unsigned __int16 *)v29 + 4);
            if ( v31 >= v32 )
            {
LABEL_41:
              if ( v32 == v31 )
              {
                v52 = (char *)(glitch::video::IBuffer::map(*(_DWORD *)v28, 1) + *((_DWORD *)v28 + 1));
                v36 = glitch::video::IBuffer::map(*v29, 4) + v29[1];
                v37 = *((unsigned __int16 *)v29 + 6)
                    * glitch::video::detail::SVertexAttributeTypeInspection::ValueTypeSize[*((unsigned __int16 *)v29 + 5)];
                if ( v36 != v36 + v55 )
                {
                  v38 = v52;
                  v57 = v29;
                  v39 = 0;
                  v40 = v17;
                  v41 = (void *)v36;
                  v42 = v37;
                  do
                  {
                    memcpy(v41, v38, v42);
                    v39 += (int)v30;
                    v41 = (void *)(v39 + v36);
                    v38 += v28[7];
                  }
                  while ( v36 + v55 != v39 + v36 );
                  v17 = v40;
                  v29 = v57;
                }
                if ( v36 )
                {
                  v43 = (_BYTE *)*v29;
                  v44 = *(_BYTE *)(*v29 + 19);
                  if ( (v44 & 0x1Fu) <= 1 )
                  {
                    if ( (v43[18] & 0x20) != 0 )
                      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v43 + 24))(*v29);
                    v43[19] = 0;
                  }
                  else
                  {
                    v43[19] = ((v44 & 0x1F) - 1) | v44 & 0xE0;
                  }
                }
                if ( v52 )
                {
                  v45 = *(_BYTE **)v28;
                  v46 = *(_BYTE *)(*(_DWORD *)v28 + 19);
                  if ( (v46 & 0x1Fu) <= 1 )
                  {
                    if ( (v45[18] & 0x20) != 0 )
                      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v45 + 24))(*(_DWORD *)v28);
                    v45[19] = 0;
                  }
                  else
                  {
                    v45[19] = ((v46 & 0x1F) - 1) | v46 & 0xE0;
                  }
                }
              }
              goto LABEL_42;
            }
            while ( 1 )
            {
              v28 += 8;
              if ( v28 == v17 )
                break;
              v31 = v28[4];
              if ( v31 >= v32 )
                goto LABEL_41;
            }
          }
          v28 = v17;
LABEL_42:
          v29 += 4;
        }
        while ( v29 != v50 );
      }
      (*(void (__fastcall **)(glitch::video::CMaterial **, _DWORD, int))(*(_DWORD *)*a2 + 24))(&v72, *a2, v56);
      (*(void (__fastcall **)(glitch::video::CMaterialVertexAttributeMap **, _DWORD, int))(*(_DWORD *)*a2 + 28))(
        &v71,
        *a2,
        v56);
      glitch::scene::CMesh::addMeshBuffer(v60, &v74, &v72, &v71);
      boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v71);
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v72);
      if ( v73 )
        glitch::IReferenceCounted::drop(v73);
      if ( v74 )
        glitch::IReferenceCounted::drop(v74);
      if ( v53 )
        glitch::IReferenceCounted::drop(v53);
      if ( ++v56 == v62 )
        goto LABEL_50;
    }
    v53 = nullptr;
LABEL_75:
    v6 = *((_WORD *)v5 + 23);
    v7 = *((_DWORD *)v5 + 7);
    v8 = *((_WORD *)v5 + 22);
    v9 = *((_DWORD *)v5 + 8);
    v10 = *((_DWORD *)v5 + 9);
    v11 = *((_DWORD *)v5 + 10);
    goto LABEL_14;
  }
  *a1 = nullptr;
  return a1;
}


// ===== 59ba3c glitch::scene::createMeshWith2TCoords(boost::intrusive_ptr<glitch::scene::IMesh> const&,glitch::video::IVideoDriver *) =====
glitch::IReferenceCounted **__fastcall glitch::scene::createMeshWith2TCoords(
        glitch::IReferenceCounted **a1,
        _DWORD *a2,
        int a3)
{
  glitch::IReferenceCounted *v4; // r0
  bool v5; // zf
  glitch::IReferenceCounted *v7; // [sp+Ch] [bp-4h] BYREF

  glitch::scene::createMeshCopy(&v7, a2, a3, 0xFFFFFFFF, 6);
  v4 = v7;
  v5 = v7 == nullptr;
  *a1 = v7;
  if ( !v5 )
  {
    ++*((_DWORD *)v4 + 1);
    v4 = v7;
  }
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  return a1;
}


// ===== 59ba90 glitch::scene::setVertexColors(boost::intrusive_ptr<glitch::scene::IMesh> const&,glitch::video::SColor) =====
_DWORD *__fastcall glitch::scene::setVertexColors(_DWORD *result, unsigned int a2)
{
  _DWORD *v2; // r7
  unsigned int v3; // r9
  char v4; // r6
  char v5; // r8
  char v6; // r10
  int v7; // r4
  int v8; // r5
  int Stream; // r0
  _DWORD *v10; // r11
  int v11; // r0
  int v12; // r3
  int v13; // r12
  int v14; // r2
  int v15; // r12
  _BYTE *v16; // r1
  _BYTE *v17; // r5
  char v18; // r3
  _DWORD *v19; // [sp+4h] [bp-20h]
  glitch::IReferenceCounted *v20[2]; // [sp+1Ch] [bp-8h] BYREF

  v2 = result;
  v3 = HIBYTE(a2);
  v4 = a2;
  v5 = BYTE1(a2);
  v6 = BYTE2(a2);
  if ( *result )
  {
    result = (_DWORD *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)*result + 16))(*result);
    v19 = result;
    if ( result )
    {
      v7 = 0;
      (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, _DWORD))(*(_DWORD *)*v2 + 20))(v20, *v2, 0);
      while ( 1 )
      {
        v8 = *((_DWORD *)v20[0] + 5);
        result = (_DWORD *)glitch::IReferenceCounted::drop(v20[0]);
        if ( (*(_DWORD *)(v8 + 4) & 0x40000) == 0 )
          goto LABEL_4;
        Stream = glitch::video::CVertexStreams::getStream(
                   v8,
                   18,
                   v8 + 16 * *(unsigned __int8 *)(v8 + 12) + 36,
                   *(_DWORD *)(v8 + 16));
        v10 = (_DWORD *)Stream;
        if ( *(_WORD *)(Stream + 10) == 1 && *(_WORD *)(Stream + 12) == 4 )
          break;
        result = (_DWORD *)glitch::os::Printer::log("setVertexColors", "unsupported color conversion for stream", 1);
        if ( (_DWORD *)++v7 == v19 )
          return result;
LABEL_5:
        (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int))(*(_DWORD *)*v2 + 20))(v20, *v2, v7);
      }
      v11 = glitch::video::IBuffer::map(*(_DWORD *)Stream, 5);
      v12 = *(_DWORD *)(v8 + 8);
      result = (_DWORD *)(v11 + v10[1]);
      if ( v12 )
      {
        v13 = *((unsigned __int16 *)v10 + 7);
        v14 = 0;
        while ( 1 )
        {
          v15 = v14 * v13;
          ++v14;
          v16 = (char *)result + v15;
          v16[1] = v5;
          v16[3] = v3;
          v16[2] = v6;
          *((_BYTE *)result + v15) = v4;
          if ( v14 == v12 )
            break;
          v13 = *((unsigned __int16 *)v10 + 7);
        }
      }
      if ( result )
      {
        v17 = (_BYTE *)*v10;
        v18 = *(_BYTE *)(*v10 + 19);
        if ( (v18 & 0x1Fu) <= 1 )
        {
          if ( (v17[18] & 0x20) != 0 )
            result = (_DWORD *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v17 + 24))(*v10);
          v17[19] = 0;
        }
        else
        {
          v17[19] = ((v18 & 0x1F) - 1) | v18 & 0xE0;
        }
      }
LABEL_4:
      if ( (_DWORD *)++v7 == v19 )
        return result;
      goto LABEL_5;
    }
  }
  return result;
}


// ===== 59bc60 glitch::scene::setVertexColorAlpha(boost::intrusive_ptr<glitch::scene::IMesh> const&,int) =====
int __fastcall glitch::scene::setVertexColorAlpha(int result, int a2)
{
  _DWORD *v2; // r6
  int v4; // r7
  int v5; // r4
  int v6; // r5
  _DWORD *v7; // r11
  int v8; // r5
  int v9; // r2
  int v10; // r1
  int i; // r0
  int v12; // r5
  int v13; // r3
  int v14; // r1
  int v15; // r2
  int v16; // r1
  _BYTE *v17; // r5
  char v18; // r3
  int v19; // r5
  int v20; // r1
  int v21; // r2
  int v22; // r1
  int v23; // r5
  int v24; // r1
  int v25; // r2
  int v26; // r1
  int v27; // r5
  int v28; // r1
  int v29; // r2
  int v30; // r1
  int v31; // r5
  int v32; // r1
  int v33; // r2
  int v34; // r1
  int v35; // r5
  int v36; // r1
  int v37; // r2
  int v38; // r1
  glitch::IReferenceCounted *v39; // [sp+Ch] [bp-8h] BYREF

  v2 = (_DWORD *)result;
  if ( *(_DWORD *)result )
  {
    result = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)result + 16))(*(_DWORD *)result);
    v4 = result;
    if ( result )
    {
      v5 = 0;
      do
      {
        (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int))(*(_DWORD *)*v2 + 20))(&v39, *v2, v5);
        v6 = *((_DWORD *)v39 + 5);
        result = glitch::IReferenceCounted::drop(v39);
        if ( (*(_DWORD *)(v6 + 4) & 0x40000) != 0 )
        {
          result = glitch::video::CVertexStreams::getStream(
                     v6,
                     18,
                     v6 + 16 * *(unsigned __int8 *)(v6 + 12) + 36,
                     *(_DWORD *)(v6 + 16));
          v7 = (_DWORD *)result;
          if ( *(_WORD *)(result + 12) == 4 )
          {
            switch ( *(_WORD *)(result + 10) )
            {
              case 0:
                v12 = *(_DWORD *)(v6 + 8);
                result = glitch::video::IBuffer::map(*(_DWORD *)result, 3);
                v13 = result + v7[1];
                if ( v12 )
                {
                  v14 = *((unsigned __int16 *)v7 + 7);
                  v15 = 0;
                  result = (unsigned __int8)a2;
                  while ( 1 )
                  {
                    v16 = v13 + v15 * v14;
                    ++v15;
                    *(_BYTE *)(v16 + 3) = a2;
                    if ( v15 == v12 )
                      break;
                    v14 = *((unsigned __int16 *)v7 + 7);
                  }
                }
                goto LABEL_19;
              case 1:
                v19 = *(_DWORD *)(v6 + 8);
                result = glitch::video::IBuffer::map(*(_DWORD *)result, 3);
                v13 = result + v7[1];
                if ( v19 )
                {
                  v20 = *((unsigned __int16 *)v7 + 7);
                  v21 = 0;
                  result = (unsigned __int8)a2;
                  while ( 1 )
                  {
                    v22 = v13 + v21 * v20;
                    ++v21;
                    *(_BYTE *)(v22 + 3) = a2;
                    if ( v21 == v19 )
                      break;
                    v20 = *((unsigned __int16 *)v7 + 7);
                  }
                }
                goto LABEL_19;
              case 2:
                v23 = *(_DWORD *)(v6 + 8);
                result = glitch::video::IBuffer::map(*(_DWORD *)result, 3);
                v13 = result + v7[1];
                if ( v23 )
                {
                  v24 = *((unsigned __int16 *)v7 + 7);
                  v25 = 0;
                  while ( 1 )
                  {
                    v26 = v13 + v25 * v24;
                    ++v25;
                    *(_WORD *)(v26 + 6) = a2;
                    if ( v25 == v23 )
                      break;
                    v24 = *((unsigned __int16 *)v7 + 7);
                  }
                }
                goto LABEL_19;
              case 3:
                v27 = *(_DWORD *)(v6 + 8);
                result = glitch::video::IBuffer::map(*(_DWORD *)result, 3);
                v13 = result + v7[1];
                if ( v27 )
                {
                  v28 = *((unsigned __int16 *)v7 + 7);
                  v29 = 0;
                  while ( 1 )
                  {
                    v30 = v13 + v29 * v28;
                    ++v29;
                    *(_WORD *)(v30 + 6) = a2;
                    if ( v29 == v27 )
                      break;
                    v28 = *((unsigned __int16 *)v7 + 7);
                  }
                }
                goto LABEL_19;
              case 4:
                v31 = *(_DWORD *)(v6 + 8);
                result = glitch::video::IBuffer::map(*(_DWORD *)result, 3);
                v13 = result + v7[1];
                if ( v31 )
                {
                  v32 = *((unsigned __int16 *)v7 + 7);
                  v33 = 0;
                  while ( 1 )
                  {
                    v34 = v13 + v33 * v32;
                    ++v33;
                    *(_DWORD *)(v34 + 12) = a2;
                    if ( v33 == v31 )
                      break;
                    v32 = *((unsigned __int16 *)v7 + 7);
                  }
                }
                goto LABEL_19;
              case 5:
                v35 = *(_DWORD *)(v6 + 8);
                result = glitch::video::IBuffer::map(*(_DWORD *)result, 3);
                v13 = result + v7[1];
                if ( v35 )
                {
                  v36 = *((unsigned __int16 *)v7 + 7);
                  v37 = 0;
                  while ( 1 )
                  {
                    v38 = v13 + v37 * v36;
                    ++v37;
                    *(_DWORD *)(v38 + 12) = a2;
                    if ( v37 == v35 )
                      break;
                    v36 = *((unsigned __int16 *)v7 + 7);
                  }
                }
LABEL_19:
                if ( v13 )
                  goto LABEL_20;
                break;
              case 6:
                v8 = *(_DWORD *)(v6 + 8);
                result = glitch::video::IBuffer::map(*(_DWORD *)result, 3);
                v9 = result + v7[1];
                if ( v8 )
                {
                  v10 = 0;
                  for ( i = *((unsigned __int16 *)v7 + 7); ; i = *((unsigned __int16 *)v7 + 7) )
                  {
                    result = v9 + v10 * i;
                    ++v10;
                    *(float *)(result + 12) = (float)a2 / 255.0;
                    if ( v10 == v8 )
                      break;
                  }
                }
                if ( !v9 )
                  break;
LABEL_20:
                v17 = (_BYTE *)*v7;
                v18 = *(_BYTE *)(*v7 + 19);
                if ( (v18 & 0x1Fu) <= 1 )
                {
                  if ( (v17[18] & 0x20) != 0 )
                    result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v17 + 24))(*v7);
                  v17[19] = 0;
                }
                else
                {
                  v17[19] = ((v18 & 0x1F) - 1) | v18 & 0xE0;
                }
                break;
              default:
                break;
            }
          }
        }
        ++v5;
      }
      while ( v5 != v4 );
    }
  }
  return result;
}


// ===== 59bfd0 glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float>>::reset(glitch::video::SVertexStream&,glitch::video::E_BUFFER_MAP_ACCESS) [clone] =====
int __fastcall glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float>>::reset(_DWORD **a1, _DWORD *a2)
{
  _BYTE *v4; // r6
  char v5; // r3
  int result; // r0

  if ( a1[1] )
  {
    v4 = (_BYTE *)**a1;
    v5 = v4[19];
    if ( (v5 & 0x1Fu) <= 1 )
    {
      if ( (v4[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 24))(**a1);
      v4[19] = 0;
    }
    else
    {
      v4[19] = ((v5 & 0x1F) - 1) | v5 & 0xE0;
    }
    a1[1] = nullptr;
    *a1 = nullptr;
  }
  *a1 = a2;
  result = glitch::video::IBuffer::map(*a2, 5);
  a1[1] = (_DWORD *)(result + a2[1]);
  return result;
}


// ===== 59c068 glitch::video::SVertexStream::SMapBuffer<void>::reset(glitch::video::SVertexStream&,glitch::video::E_BUFFER_MAP_ACCESS) [clone] =====
int __fastcall glitch::video::SVertexStream::SMapBuffer<void>::reset(_DWORD **a1, _DWORD *a2)
{
  _BYTE *v4; // r6
  char v5; // r3
  int result; // r0

  if ( a1[1] )
  {
    v4 = (_BYTE *)**a1;
    v5 = v4[19];
    if ( (v5 & 0x1Fu) <= 1 )
    {
      if ( (v4[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 24))(**a1);
      v4[19] = 0;
    }
    else
    {
      v4[19] = ((v5 & 0x1F) - 1) | v5 & 0xE0;
    }
    a1[1] = nullptr;
    *a1 = nullptr;
  }
  *a1 = a2;
  result = glitch::video::IBuffer::map(*a2, 5);
  a1[1] = (_DWORD *)(result + a2[1]);
  return result;
}


// ===== 59c100 glitch::video::SVertexStream::SMapBuffer<void const>::reset(glitch::video::SVertexStream const&,glitch::video::E_BUFFER_READ_MAP_ACCESS) [clone] =====
int __fastcall glitch::video::SVertexStream::SMapBuffer<void const>::reset(_DWORD **a1, _DWORD *a2)
{
  _BYTE *v4; // r6
  char v5; // r3
  int result; // r0

  if ( a1[1] )
  {
    v4 = (_BYTE *)**a1;
    v5 = v4[19];
    if ( (v5 & 0x1Fu) <= 1 )
    {
      if ( (v4[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 24))(**a1);
      v4[19] = 0;
    }
    else
    {
      v4[19] = ((v5 & 0x1F) - 1) | v5 & 0xE0;
    }
    a1[1] = nullptr;
    *a1 = nullptr;
  }
  *a1 = a2;
  result = glitch::video::IBuffer::map(*a2, 1);
  a1[1] = (_DWORD *)(result + a2[1]);
  return result;
}


// ===== 59c198 glitch::scene::makePlanarTextureMapping(boost::intrusive_ptr<glitch::scene::IMesh> const&,float) =====
float __fastcall glitch::scene::makePlanarTextureMapping(float result, float a2)
{
  glitch::IReferenceCounted *v3; // r7
  int v4; // r1
  int v5; // r4
  _BYTE *v6; // r4
  char v7; // r3
  _BYTE *v8; // r4
  char v9; // r3
  int v10; // r10
  int v11; // r8
  float *v12; // r4
  int v13; // r7
  int v14; // r9
  int v15; // r11
  int k; // r7
  int v17; // r2
  _BYTE *v18; // r4
  char v19; // r3
  _BYTE *v20; // r4
  char v21; // r3
  int j; // r7
  int v23; // r2
  int i; // r7
  int v25; // r2
  int v26; // [sp+8h] [bp-8Ch]
  int v27; // [sp+Ch] [bp-88h]
  int v28; // [sp+10h] [bp-84h]
  int v29; // [sp+14h] [bp-80h]
  int v30; // [sp+18h] [bp-7Ch]
  int v31; // [sp+1Ch] [bp-78h]
  unsigned __int16 *v32; // [sp+20h] [bp-74h]
  int v33; // [sp+24h] [bp-70h]
  float v34; // [sp+34h] [bp-60h]
  float v35; // [sp+38h] [bp-5Ch]
  int v36; // [sp+54h] [bp-40h] BYREF
  int v37; // [sp+58h] [bp-3Ch]
  int v38; // [sp+5Ch] [bp-38h]
  float *v39; // [sp+64h] [bp-30h]
  float *v40; // [sp+68h] [bp-2Ch]
  float *v41; // [sp+6Ch] [bp-28h]
  int v42; // [sp+70h] [bp-24h] BYREF
  int v43; // [sp+74h] [bp-20h] BYREF
  int v44; // [sp+78h] [bp-1Ch] BYREF
  _DWORD *v45; // [sp+7Ch] [bp-18h] BYREF
  int v46; // [sp+80h] [bp-14h]
  _DWORD *v47; // [sp+84h] [bp-10h] BYREF
  int v48; // [sp+88h] [bp-Ch]
  glitch::IReferenceCounted *v49[2]; // [sp+8Ch] [bp-8h] BYREF

  v34 = result;
  if ( *(_DWORD *)LODWORD(result) )
  {
    result = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(**(_DWORD **)LODWORD(result) + 16))(*(_DWORD *)LODWORD(result)));
    v35 = result;
    if ( result != 0.0 )
    {
      v27 = 0;
      for ( result = COERCE_FLOAT(
                       (*(int (__fastcall **)(glitch::IReferenceCounted **, _DWORD, _DWORD))(**(_DWORD **)LODWORD(v34)
                                                                                           + 20))(
                         v49,
                         *(_DWORD *)LODWORD(v34),
                         0));
            ;
            result = COERCE_FLOAT(
                       (*(int (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int))(**(_DWORD **)LODWORD(v34) + 20))(
                         v49,
                         *(_DWORD *)LODWORD(v34),
                         v27)) )
      {
        v3 = v49[0];
        if ( v49[0] )
          result = COERCE_FLOAT(glitch::IReferenceCounted::drop(v49[0]));
        if ( !*((_DWORD *)v3 + 6) )
        {
          result = COERCE_FLOAT(
                     glitch::os::Printer::log(
                       "makePlanarTextureMapping",
                       "planar texture mapping not supported for unindexed meshes",
                       1));
LABEL_5:
          if ( ++v27 == LODWORD(v35) )
            return result;
          continue;
        }
        if ( *((_WORD *)v3 + 23) != 6 )
        {
          result = COERCE_FLOAT(
                     glitch::os::Printer::log(
                       "makePlanarTextureMapping",
                       "planar texture mapping only supported for triangles",
                       1));
          goto LABEL_5;
        }
        v4 = *((_DWORD *)v3 + 5);
        v33 = v4;
        if ( (*(_DWORD *)(v4 + 4) & 2) == 0 )
          goto LABEL_5;
        v46 = 0;
        v47 = nullptr;
        v48 = 0;
        v45 = nullptr;
        v5 = v4 + 20;
        if ( *(_WORD *)(v4 + 30) != 6 )
          break;
        if ( *(unsigned __int16 *)(v4 + 32) <= 2u )
          break;
        v10 = v4 + 36;
        if ( *(_WORD *)(v4 + 46) != 6 || *(_WORD *)(v4 + 48) != 2 )
          break;
        v11 = glitch::video::IBuffer::map(*(_DWORD *)(v4 + 36), 5) + *(_DWORD *)(v4 + 40);
        if ( *(_DWORD *)(v33 + 20) == *(_DWORD *)(v33 + 36) )
        {
          glitch::video::SVertexStream::SMapBuffer<void>::reset(&v47, (_DWORD *)v5);
          v29 = v48;
        }
        else
        {
          glitch::video::SVertexStream::SMapBuffer<void const>::reset(&v45, (_DWORD *)v5);
          v29 = v46;
        }
        result = COERCE_FLOAT(glitch::video::IBuffer::map(*((_DWORD *)v3 + 6), 1));
        v31 = *((_DWORD *)v3 + 8);
        v28 = *(unsigned __int16 *)(v5 + 14);
        v30 = LODWORD(result) + *((_DWORD *)v3 + 7);
        if ( v31 )
        {
          v26 = 0;
          v32 = (unsigned __int16 *)v3;
          do
          {
            glitch::scene::`anonymous namespace'::getTriangleIndices(
              (unsigned __int16 *)v32[22],
              v30,
              v26,
              &v42,
              &v43,
              &v44);
            v12 = (float *)(v29 + v42 * v28);
            v41 = (float *)(v29 + v44 * v28);
            v40 = (float *)(v29 + v43 * v28);
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = v12;
            glitch::core::plane3d<float>::setPlane((int)&v36, v12, v40, v41);
            v13 = v36 & 0x7FFFFFFF;
            v14 = v37 & 0x7FFFFFFF;
            v15 = v38 & 0x7FFFFFFF;
            if ( COERCE_FLOAT(v36 & 0x7FFFFFFF) <= COERCE_FLOAT(v37 & 0x7FFFFFFF) || *(float *)&v13 <= *(float *)&v15 )
            {
              if ( *(float *)&v13 >= *(float *)&v14 || *(float *)&v14 <= *(float *)&v15 )
              {
                for ( i = 0; ; v12 = (&v39)[i] )
                {
                  *(float *)(v11 + *(int *)((char *)&v42 + i * 4) * *(unsigned __int16 *)(v10 + 14)) = *v12 * a2;
                  v25 = *(int *)((char *)&v42 + i * 4);
                  result = v12[1] * a2;
                  ++i;
                  *(float *)(v11 + v25 * *(unsigned __int16 *)(v10 + 14) + 4) = result;
                  if ( i == 3 )
                    break;
                }
              }
              else
              {
                for ( j = 0; ; v12 = (&v39)[j] )
                {
                  *(float *)(v11 + *(int *)((char *)&v42 + j * 4) * *(unsigned __int16 *)(v10 + 14)) = *v12 * a2;
                  v23 = *(int *)((char *)&v42 + j * 4);
                  result = v12[2] * a2;
                  ++j;
                  *(float *)(v11 + v23 * *(unsigned __int16 *)(v10 + 14) + 4) = result;
                  if ( j == 3 )
                    break;
                }
              }
            }
            else
            {
              for ( k = 0; ; v12 = (&v39)[k] )
              {
                *(float *)(v11 + *(int *)((char *)&v42 + k * 4) * *(unsigned __int16 *)(v10 + 14)) = v12[1] * a2;
                v17 = *(int *)((char *)&v42 + k * 4);
                result = v12[2] * a2;
                ++k;
                *(float *)(v11 + v17 * *(unsigned __int16 *)(v10 + 14) + 4) = result;
                if ( k == 3 )
                  break;
              }
            }
            ++v26;
          }
          while ( v26 != v31 );
          v3 = (glitch::IReferenceCounted *)v32;
        }
        if ( v30 )
        {
          v18 = *((_BYTE **)v3 + 6);
          v19 = v18[19];
          if ( (v19 & 0x1Fu) <= 1 )
          {
            if ( (v18[18] & 0x20) != 0 )
              result = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(*(_DWORD *)v18 + 24))(*((_DWORD *)v3 + 6)));
            v18[19] = 0;
          }
          else
          {
            v18[19] = ((v19 & 0x1F) - 1) | v19 & 0xE0;
          }
        }
        if ( v11 )
        {
          v20 = *(_BYTE **)(v33 + 36);
          v21 = v20[19];
          if ( (v21 & 0x1Fu) <= 1 )
          {
            if ( (v20[18] & 0x20) != 0 )
              result = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(*(_DWORD *)v20 + 24))(*(_DWORD *)(v33 + 36)));
            v20[19] = 0;
          }
          else
          {
            v20[19] = ((v21 & 0x1F) - 1) | v21 & 0xE0;
          }
        }
        if ( v46 )
          goto LABEL_14;
LABEL_17:
        if ( !v48 )
          goto LABEL_5;
        v8 = (_BYTE *)*v47;
        v9 = *(_BYTE *)(*v47 + 19);
        if ( (v9 & 0x1Fu) <= 1 )
        {
          if ( (v8[18] & 0x20) != 0 )
            result = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(*(_DWORD *)v8 + 24))(*v47));
          v8[19] = 0;
        }
        else
        {
          v8[19] = ((v9 & 0x1F) - 1) | v9 & 0xE0;
        }
        v48 = 0;
        v47 = nullptr;
        if ( ++v27 == LODWORD(v35) )
          return result;
      }
      result = COERCE_FLOAT(
                 glitch::os::Printer::log(
                   "makePlanarTextureMapping",
                   "supports only floating-point streams of array size >=3 (pos) and =2 (texcoord)",
                   1));
      if ( !v46 )
        goto LABEL_17;
LABEL_14:
      v6 = (_BYTE *)*v45;
      v7 = *(_BYTE *)(*v45 + 19);
      if ( (v7 & 0x1Fu) <= 1 )
      {
        if ( (v6[18] & 0x20) != 0 )
          result = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 24))(*v45));
        v6[19] = 0;
      }
      else
      {
        v6[19] = ((v7 & 0x1F) - 1) | v7 & 0xE0;
      }
      v46 = 0;
      v45 = nullptr;
      goto LABEL_17;
    }
  }
  return result;
}


// ===== 59c7a4 glitch::scene::scaleTCoords(boost::intrusive_ptr<glitch::scene::CMeshBuffer> const&,glitch::core::vector2d<float> const&,uint) =====
float __fastcall glitch::scene::scaleTCoords(float result, float *a2, char a3)
{
  int v4; // r4
  int v5; // r11
  int v6; // r9
  int v7; // r8
  int v8; // r10
  int v9; // r6
  int v10; // r5
  int v11; // r4
  int v12; // r5
  int v13; // r5
  _BYTE *v14; // r4
  char v15; // r3

  v4 = *(_DWORD *)(*(_DWORD *)LODWORD(result) + 20);
  if ( (*(_DWORD *)(v4 + 4) & (1 << a3)) != 0 )
  {
    v5 = (unsigned __int8)(a3 + 1);
    v6 = v4 + 20;
    v7 = v4 + 20 + 16 * v5;
    if ( *(_WORD *)(v7 + 10) == 6 && *(_WORD *)(v7 + 12) == 2 )
    {
      result = COERCE_FLOAT(glitch::video::IBuffer::map(*(_DWORD *)(v6 + 16 * v5), 5));
      v8 = *(_DWORD *)(v4 + 8);
      v9 = LODWORD(result) + *(_DWORD *)(v7 + 4);
      if ( v8 )
      {
        v10 = *(unsigned __int16 *)(v7 + 14);
        v11 = 0;
        while ( 1 )
        {
          v12 = v11 * v10;
          *(float *)(v9 + v12) = *(float *)(v9 + v12) * *a2;
          v13 = v9 + v12;
          result = *(float *)(v13 + 4) * a2[1];
          ++v11;
          *(float *)(v13 + 4) = result;
          if ( v11 == v8 )
            break;
          v10 = *(unsigned __int16 *)(v7 + 14);
        }
      }
      if ( v9 )
      {
        v14 = *(_BYTE **)(v6 + 16 * v5);
        v15 = v14[19];
        if ( (v15 & 0x1Fu) <= 1 )
        {
          if ( (v14[18] & 0x20) != 0 )
            result = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(*(_DWORD *)v14 + 24))(*(_DWORD *)(v6 + 16 * v5)));
          v14[19] = 0;
        }
        else
        {
          v14[19] = ((v15 & 0x1F) - 1) | v15 & 0xE0;
        }
      }
    }
    else
    {
      return COERCE_FLOAT(glitch::os::Printer::log("scaleTCoords", "supports only floating-point streams of array size 2", 1));
    }
  }
  return result;
}


// ===== 59c8e0 glitch::scene::scaleTCoords(boost::intrusive_ptr<glitch::scene::IMesh> const&,glitch::core::vector2d<float> const&,uint) =====
glitch::IReferenceCounted *__fastcall glitch::scene::scaleTCoords(
        glitch::IReferenceCounted *result,
        float *a2,
        char a3)
{
  glitch::IReferenceCounted *v3; // r6
  glitch::IReferenceCounted *v6; // r10
  glitch::IReferenceCounted *v7; // r4
  glitch::IReferenceCounted *v8[2]; // [sp+4h] [bp-8h] BYREF

  v3 = result;
  if ( *(_DWORD *)result )
  {
    result = (glitch::IReferenceCounted *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)result + 16))(*(_DWORD *)result);
    v6 = result;
    if ( result )
    {
      v7 = nullptr;
      do
      {
        (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, glitch::IReferenceCounted *))(**(_DWORD **)v3 + 20))(
          v8,
          *(_DWORD *)v3,
          v7);
        glitch::scene::scaleTCoords(COERCE_FLOAT(v8), a2, a3);
        result = v8[0];
        v7 = (glitch::IReferenceCounted *)((char *)v7 + 1);
        if ( v8[0] )
          result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v8[0]);
      }
      while ( v7 != v6 );
    }
  }
  return result;
}


// ===== 59c970 glitch::scene::createMeshWithTangents(boost::intrusive_ptr<glitch::scene::IMesh> const&,glitch::video::IVideoDriver *,bool,bool,bool) =====
glitch::IReferenceCounted **__fastcall glitch::scene::createMeshWithTangents(
        glitch::IReferenceCounted **a1,
        _DWORD *a2,
        int a3,
        int a4,
        char a5,
        char a6)
{
  _DWORD *v6; // r9
  glitch::IReferenceCounted *v7; // r0
  bool v8; // zf
  int v9; // r6
  glitch::IReferenceCounted *v10; // r5
  int v11; // r2
  int Stream; // r7
  int v14; // r0
  int v15; // r0
  int v16; // r4
  int v17; // r0
  int v18; // r2
  int v19; // r8
  int v20; // r10
  unsigned int v21; // r12
  int v22; // r2
  _DWORD *v23; // r0
  _DWORD *v24; // r1
  int v25; // r0
  int v26; // r1
  int v27; // r7
  int v28; // r9
  float v29; // r0
  int v30; // r7
  int v31; // r7
  float v32; // r11
  float v33; // r0
  int v34; // r7
  int v35; // r7
  float v36; // r11
  float v37; // r0
  int v38; // r7
  int v39; // r7
  int v40; // r9
  float v41; // r0
  int v42; // r7
  int v43; // r7
  float v44; // r11
  float v45; // r0
  int v46; // r7
  int v47; // r7
  float v48; // r11
  float v49; // r0
  int v50; // r7
  int v51; // r7
  int v52; // r9
  float v53; // r0
  int v54; // r7
  int v55; // r7
  float v56; // r11
  float v57; // r0
  int v58; // r7
  int v59; // r7
  float v60; // r11
  float v61; // r0
  int v62; // r7
  int v63; // r7
  int v64; // r5
  float *v65; // r9
  float v66; // r0
  int v67; // r5
  float v68; // r11
  float v69; // r5
  int v70; // r3
  int v71; // r7
  int v72; // r3
  int v73; // r2
  int v74; // r2
  int v75; // r3
  int v76; // r2
  int v77; // r2
  int v78; // r3
  int v79; // r2
  int v80; // r2
  int v81; // r8
  float v82; // r9
  float *v83; // r6
  float v84; // r0
  int v85; // r8
  float v86; // r10
  float *v87; // r8
  _BYTE *v88; // r5
  char v89; // r3
  _BYTE *v90; // r5
  char v91; // r3
  _BYTE *v92; // r5
  char v93; // r3
  _BYTE *v94; // r5
  char v95; // r3
  _BYTE *v96; // r5
  char v97; // r3
  _BYTE *v98; // r4
  char v99; // r3
  int v100; // r3
  int v101; // r7
  int i; // r0
  float *v103; // r0
  unsigned int v104; // r7
  int j; // r0
  float *v106; // r0
  float v107; // [sp+1Ch] [bp-E0h]
  float v108; // [sp+1Ch] [bp-E0h]
  float v109; // [sp+1Ch] [bp-E0h]
  int v110; // [sp+20h] [bp-DCh]
  float *v111; // [sp+20h] [bp-DCh]
  int v112; // [sp+24h] [bp-D8h]
  int v113; // [sp+28h] [bp-D4h]
  float *v114; // [sp+2Ch] [bp-D0h]
  int v115; // [sp+2Ch] [bp-D0h]
  _DWORD *v116; // [sp+30h] [bp-CCh]
  int v117; // [sp+34h] [bp-C8h]
  int v118; // [sp+38h] [bp-C4h]
  float v119; // [sp+3Ch] [bp-C0h]
  int v120; // [sp+3Ch] [bp-C0h]
  int v121; // [sp+40h] [bp-BCh]
  float *v122; // [sp+48h] [bp-B4h]
  int v123; // [sp+48h] [bp-B4h]
  int v125; // [sp+50h] [bp-ACh]
  int v126; // [sp+54h] [bp-A8h]
  int v127; // [sp+58h] [bp-A4h]
  int v128; // [sp+64h] [bp-98h]
  int v129; // [sp+74h] [bp-88h]
  _DWORD *v130; // [sp+78h] [bp-84h]
  int v131; // [sp+7Ch] [bp-80h]
  unsigned __int16 *v132; // [sp+80h] [bp-7Ch]
  unsigned int v134; // [sp+94h] [bp-68h]
  _DWORD *v135; // [sp+A4h] [bp-58h]
  float v136; // [sp+A8h] [bp-54h] BYREF
  float v137; // [sp+ACh] [bp-50h]
  float v138; // [sp+B0h] [bp-4Ch]
  float v139[3]; // [sp+B4h] [bp-48h] BYREF
  float v140; // [sp+C0h] [bp-3Ch] BYREF
  float v141; // [sp+C4h] [bp-38h]
  float v142; // [sp+C8h] [bp-34h]
  float v143; // [sp+CCh] [bp-30h] BYREF
  float v144; // [sp+D0h] [bp-2Ch]
  float v145; // [sp+D4h] [bp-28h]
  _DWORD *v146; // [sp+D8h] [bp-24h] BYREF
  int v147; // [sp+DCh] [bp-20h]
  int v148; // [sp+E0h] [bp-1Ch] BYREF
  int v149; // [sp+E4h] [bp-18h] BYREF
  int v150; // [sp+E8h] [bp-14h] BYREF
  glitch::IReferenceCounted *v151; // [sp+ECh] [bp-10h] BYREF
  glitch::IReferenceCounted *v152; // [sp+F0h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v153; // [sp+F4h] [bp-8h] BYREF

  v6 = a2;
  glitch::scene::createMeshCopy(&v153, a2, a3, 0xFFFFFFFF, 17825792);
  v7 = v153;
  v8 = v153 == nullptr;
  *a1 = v153;
  if ( !v8 )
  {
    ++*((_DWORD *)v7 + 1);
    v7 = v153;
  }
  if ( v7 )
    glitch::IReferenceCounted::drop(v7);
  v121 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)*v6 + 16))(*v6);
  if ( v121 )
  {
    v9 = 0;
    (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, _DWORD))(*(_DWORD *)*v6 + 20))(&v152, *v6, 0);
    while ( 1 )
    {
      v10 = v152;
      if ( v152 )
        glitch::IReferenceCounted::drop(v152);
      if ( *((_WORD *)v10 + 23) != 6 )
        break;
      (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int))(*(_DWORD *)*v6 + 20))(&v151, *v6, v9);
      v117 = *((_DWORD *)v151 + 5);
      glitch::IReferenceCounted::drop(v151);
      v11 = *(_DWORD *)(v117 + 4);
      if ( (v11 & 0x1100002) == 0x1100002 )
      {
        v112 = v117 + 20;
        if ( a4 && (v11 & 0x20000) != 0 )
          Stream = glitch::video::CVertexStreams::getStream(
                     v117,
                     17,
                     v117 + 20 + 16 * (*(unsigned __int8 *)(v117 + 12) + 1),
                     *(_DWORD *)(v117 + 16));
        else
          Stream = 0;
        v14 = glitch::video::CVertexStreams::getStream(
                v117,
                20,
                v112 + 16 * (*(unsigned __int8 *)(v117 + 12) + 1),
                *(_DWORD *)(v117 + 16));
        v116 = (_DWORD *)v14;
        if ( *(_WORD *)(v117 + 30) == 6
          && *(_WORD *)(v117 + 32) == 3
          && (v128 = v117 + 36, *(_WORD *)(v117 + 46) == 6)
          && *(_WORD *)(v117 + 48) == 2
          && *(_WORD *)(v14 + 10) == 6
          && *(_WORD *)(v14 + 12) == 3
          && (v15 = v14 + 16, v125 = v15, *(_WORD *)(v15 + 10) == 6)
          && *(_WORD *)(v15 + 12) == 3
          && (!Stream || *(_WORD *)(Stream + 10) == 6 && *(_WORD *)(Stream + 12) == 3) )
        {
          v16 = glitch::video::IBuffer::map(*(_DWORD *)(v117 + 20), 5) + *(_DWORD *)(v117 + 24);
          v17 = glitch::video::IBuffer::map(*(_DWORD *)(v117 + 36), 5);
          v18 = *(_DWORD *)(v117 + 40);
          v147 = 0;
          v126 = v17 + v18;
          v146 = nullptr;
          if ( Stream )
            glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float>>::reset(&v146, (_DWORD *)Stream);
          v19 = glitch::video::IBuffer::map(*v116, 5) + v116[1];
          v20 = glitch::video::IBuffer::map(v116[4], 5) + *(_DWORD *)(v125 + 4);
          v127 = glitch::video::IBuffer::map(*((_DWORD *)v10 + 6), 1) + *((_DWORD *)v10 + 7);
          v148 = -1;
          v150 = -1;
          v149 = -1;
          if ( !a5 )
          {
            v138 = 0.0;
            v136 = 0.0;
            v137 = 0.0;
            v115 = *((_DWORD *)v10 + 8);
            if ( !v115 )
              goto LABEL_89;
            v71 = 0;
            v120 = v20;
            v123 = v19;
            v129 = v9;
            v130 = v6;
            while ( 1 )
            {
LABEL_78:
              glitch::scene::`anonymous namespace'::getTriangleIndices(
                (unsigned __int16 *)*((unsigned __int16 *)v10 + 22),
                v127,
                v71,
                &v150,
                &v149,
                &v148);
              v81 = *(unsigned __int16 *)(v117 + 34);
              v82 = *(float *)(v16 + v149 * v81);
              v111 = (float *)(v16 + v149 * v81);
              v83 = (float *)(v16 + v150 * v81);
              if ( *v83 == v82 && v83[1] == v111[1] && v83[2] == v111[2] )
                goto LABEL_77;
              v84 = *(float *)(v16 + v150 * v81);
              v85 = v148 * v81;
              v86 = *(float *)(v16 + v85);
              v87 = (float *)(v16 + v85);
              if ( v84 == v86 && v83[1] == v87[1] && v83[2] == v87[2] )
                goto LABEL_77;
              if ( v82 != v86 || v111[1] != v87[1] || v111[2] != v87[2] )
                break;
              if ( ++v71 == v115 )
              {
LABEL_88:
                v20 = v120;
                v19 = v123;
                v9 = v129;
                v6 = v130;
                goto LABEL_89;
              }
            }
            glitch::scene::`anonymous namespace'::calculateTangents(
              &v136,
              (float *)(v123 + v150 * *((unsigned __int16 *)v116 + 7)),
              (float *)(v120 + v150 * *(unsigned __int16 *)(v125 + 14)),
              v83,
              v111,
              v87,
              (float *)(v126 + v150 * *(unsigned __int16 *)(v117 + 50)),
              (float *)(v126 + v149 * *(unsigned __int16 *)(v117 + 50)),
              (float *)(v126 + v148 * *(unsigned __int16 *)(v117 + 50)));
            if ( a4 )
            {
              v72 = v147;
              if ( v147 )
              {
                v73 = v150 * *((unsigned __int16 *)v146 + 7);
                *(float *)(v147 + v73) = v136;
                v74 = v72 + v73;
                *(float *)(v74 + 4) = v137;
                *(float *)(v74 + 8) = v138;
              }
            }
            glitch::scene::`anonymous namespace'::calculateTangents(
              &v136,
              (float *)(v123 + v149 * *((unsigned __int16 *)v116 + 7)),
              (float *)(v120 + v149 * *(unsigned __int16 *)(v125 + 14)),
              (float *)(v16 + v149 * *(unsigned __int16 *)(v112 + 14)),
              (float *)(v16 + v148 * *(unsigned __int16 *)(v112 + 14)),
              (float *)(v16 + v150 * *(unsigned __int16 *)(v112 + 14)),
              (float *)(v126 + v149 * *(unsigned __int16 *)(v128 + 14)),
              (float *)(v126 + v148 * *(unsigned __int16 *)(v128 + 14)),
              (float *)(v126 + v150 * *(unsigned __int16 *)(v128 + 14)));
            if ( a4 )
            {
              v75 = v147;
              if ( v147 )
              {
                v76 = v149 * *((unsigned __int16 *)v146 + 7);
                *(float *)(v147 + v76) = v136;
                v77 = v75 + v76;
                *(float *)(v77 + 4) = v137;
                *(float *)(v77 + 8) = v138;
              }
            }
            glitch::scene::`anonymous namespace'::calculateTangents(
              &v136,
              (float *)(v123 + v148 * *((unsigned __int16 *)v116 + 7)),
              (float *)(v120 + v148 * *(unsigned __int16 *)(v125 + 14)),
              (float *)(v16 + v148 * *(unsigned __int16 *)(v112 + 14)),
              (float *)(v16 + v150 * *(unsigned __int16 *)(v112 + 14)),
              (float *)(v16 + v149 * *(unsigned __int16 *)(v112 + 14)),
              (float *)(v126 + v148 * *(unsigned __int16 *)(v128 + 14)),
              (float *)(v126 + v150 * *(unsigned __int16 *)(v128 + 14)),
              (float *)(v126 + v149 * *(unsigned __int16 *)(v128 + 14)));
            if ( a4 )
            {
              v78 = v147;
              if ( v147 )
              {
                v79 = v148 * *((unsigned __int16 *)v146 + 7);
                *(float *)(v147 + v79) = v136;
                v80 = v78 + v79;
                *(float *)(v80 + 4) = v137;
                *(float *)(v80 + 8) = v138;
              }
            }
LABEL_77:
            if ( ++v71 == v115 )
              goto LABEL_88;
            goto LABEL_78;
          }
          v21 = *(_DWORD *)(v117 + 8);
          v134 = v21;
          if ( v21 )
          {
            v22 = 0;
            do
            {
              if ( a4 && v147 )
              {
                v23 = (_DWORD *)(v147 + *((unsigned __int16 *)v146 + 7) * v22);
                *v23 = 0;
                v23[2] = 0;
                v23[1] = 0;
              }
              v24 = (_DWORD *)(v19 + *((unsigned __int16 *)v116 + 7) * v22);
              *v24 = 0;
              v24[2] = 0;
              v24[1] = 0;
              v25 = *(unsigned __int16 *)(v125 + 14) * v22++;
              v26 = v20 + v25;
              *(_DWORD *)(v20 + v25) = 0;
              *(_DWORD *)(v26 + 8) = 0;
              *(_DWORD *)(v26 + 4) = 0;
            }
            while ( v22 != v21 );
          }
          v138 = 0.0;
          v143 = 0.0;
          v144 = 0.0;
          v145 = 0.0;
          v140 = 0.0;
          v141 = 0.0;
          v142 = 0.0;
          v136 = 0.0;
          v137 = 0.0;
          v131 = *((_DWORD *)v10 + 8);
          if ( v131 )
          {
            v110 = 0;
            v132 = (unsigned __int16 *)v10;
            v135 = v6;
            do
            {
              glitch::scene::`anonymous namespace'::getTriangleIndices(
                (unsigned __int16 *)v132[22],
                v127,
                v110,
                &v150,
                &v149,
                &v148);
              v63 = v150;
              v64 = *(unsigned __int16 *)(v117 + 34);
              v113 = v149;
              v119 = *(float *)(v16 + v149 * v64);
              v114 = (float *)(v16 + v149 * v64);
              v65 = (float *)(v16 + v150 * v64);
              if ( *v65 != v119 || v65[1] != v114[1] || v65[2] != v114[2] )
              {
                v66 = *(float *)(v16 + v150 * v64);
                v67 = v148 * v64;
                v118 = v148;
                v68 = *(float *)(v16 + v67);
                v122 = (float *)(v16 + v67);
                if ( (v66 != v68 || v65[1] != v122[1] || v65[2] != v122[2])
                  && (v119 != v68 || v114[1] != v122[1] || v114[2] != v122[2]) )
                {
                  if ( a6 )
                  {
                    glitch::scene::`anonymous namespace'::getAngleWeight(v139, v65, v114, v122);
                    v70 = *(unsigned __int16 *)(v117 + 34);
                    v63 = v150;
                    v113 = v149;
                    v65 = (float *)(v16 + v150 * v70);
                    v118 = v148;
                    v69 = v139[0];
                    v122 = (float *)(v16 + v148 * v70);
                    v114 = (float *)(v16 + v149 * v70);
                  }
                  else
                  {
                    v69 = 1.0;
                  }
                  glitch::scene::`anonymous namespace'::calculateTangents(
                    &v143,
                    &v140,
                    &v136,
                    v65,
                    v114,
                    v122,
                    (float *)(v126 + *(unsigned __int16 *)(v117 + 50) * v63),
                    (float *)(v126 + *(unsigned __int16 *)(v117 + 50) * v113),
                    (float *)(v126 + *(unsigned __int16 *)(v117 + 50) * v118));
                  if ( a4 )
                  {
                    v27 = v147;
                    if ( v147 )
                    {
                      v28 = v150 * *((unsigned __int16 *)v146 + 7);
                      v29 = v69 * v144;
                      v107 = v69 * v145;
                      *(float *)(v147 + v28) = *(float *)(v147 + v28) + (float)(v69 * v143);
                      v30 = v27 + v28;
                      *(float *)(v30 + 4) = *(float *)(v30 + 4) + v29;
                      *(float *)(v30 + 8) = *(float *)(v30 + 8) + v107;
                    }
                  }
                  v31 = v150 * *((unsigned __int16 *)v116 + 7);
                  v32 = v69 * v141;
                  v33 = v69 * v142;
                  *(float *)(v19 + v31) = *(float *)(v19 + v31) + (float)(v69 * v140);
                  v34 = v19 + v31;
                  *(float *)(v34 + 4) = *(float *)(v34 + 4) + v32;
                  *(float *)(v34 + 8) = *(float *)(v34 + 8) + v33;
                  v35 = v150 * *(unsigned __int16 *)(v125 + 14);
                  v36 = v69 * v137;
                  v37 = v69 * v138;
                  *(float *)(v20 + v35) = *(float *)(v20 + v35) + (float)(v69 * v136);
                  v38 = v20 + v35;
                  *(float *)(v38 + 4) = *(float *)(v38 + 4) + v36;
                  *(float *)(v38 + 8) = *(float *)(v38 + 8) + v37;
                  glitch::scene::`anonymous namespace'::calculateTangents(
                    &v143,
                    &v140,
                    &v136,
                    (float *)(v16 + v149 * *(unsigned __int16 *)(v117 + 34)),
                    (float *)(v16 + v148 * *(unsigned __int16 *)(v117 + 34)),
                    (float *)(v16 + v150 * *(unsigned __int16 *)(v117 + 34)),
                    (float *)(v126 + v149 * *(unsigned __int16 *)(v117 + 50)),
                    (float *)(v126 + v148 * *(unsigned __int16 *)(v117 + 50)),
                    (float *)(v126 + v150 * *(unsigned __int16 *)(v117 + 50)));
                  if ( a4 )
                  {
                    v39 = v147;
                    if ( v147 )
                    {
                      v40 = v149 * *((unsigned __int16 *)v146 + 7);
                      v41 = v69 * v144;
                      v108 = v69 * v145;
                      *(float *)(v147 + v40) = *(float *)(v147 + v40) + (float)(v69 * v143);
                      v42 = v39 + v40;
                      *(float *)(v42 + 4) = *(float *)(v42 + 4) + v41;
                      *(float *)(v42 + 8) = *(float *)(v42 + 8) + v108;
                    }
                  }
                  v43 = v149 * *((unsigned __int16 *)v116 + 7);
                  v44 = v69 * v141;
                  v45 = v69 * v142;
                  *(float *)(v19 + v43) = *(float *)(v19 + v43) + (float)(v69 * v140);
                  v46 = v19 + v43;
                  *(float *)(v46 + 4) = *(float *)(v46 + 4) + v44;
                  *(float *)(v46 + 8) = *(float *)(v46 + 8) + v45;
                  v47 = v149 * *(unsigned __int16 *)(v125 + 14);
                  v48 = v69 * v137;
                  v49 = v69 * v138;
                  *(float *)(v20 + v47) = *(float *)(v20 + v47) + (float)(v69 * v136);
                  v50 = v20 + v47;
                  *(float *)(v50 + 4) = *(float *)(v50 + 4) + v48;
                  *(float *)(v50 + 8) = *(float *)(v50 + 8) + v49;
                  glitch::scene::`anonymous namespace'::calculateTangents(
                    &v143,
                    &v140,
                    &v136,
                    (float *)(v16 + v148 * *(unsigned __int16 *)(v117 + 34)),
                    (float *)(v16 + v150 * *(unsigned __int16 *)(v117 + 34)),
                    (float *)(v16 + v149 * *(unsigned __int16 *)(v117 + 34)),
                    (float *)(v126 + v148 * *(unsigned __int16 *)(v117 + 50)),
                    (float *)(v126 + v150 * *(unsigned __int16 *)(v117 + 50)),
                    (float *)(v126 + v149 * *(unsigned __int16 *)(v117 + 50)));
                  if ( a4 )
                  {
                    v51 = v147;
                    if ( v147 )
                    {
                      v52 = v148 * *((unsigned __int16 *)v146 + 7);
                      v53 = v69 * v144;
                      v109 = v69 * v145;
                      *(float *)(v147 + v52) = *(float *)(v147 + v52) + (float)(v69 * v143);
                      v54 = v51 + v52;
                      *(float *)(v54 + 4) = *(float *)(v54 + 4) + v53;
                      *(float *)(v54 + 8) = *(float *)(v54 + 8) + v109;
                    }
                  }
                  v55 = v148 * *((unsigned __int16 *)v116 + 7);
                  v56 = v69 * v141;
                  v57 = v69 * v142;
                  *(float *)(v19 + v55) = *(float *)(v19 + v55) + (float)(v69 * v140);
                  v58 = v19 + v55;
                  *(float *)(v58 + 4) = *(float *)(v58 + 4) + v56;
                  *(float *)(v58 + 8) = *(float *)(v58 + 8) + v57;
                  v59 = v148 * *(unsigned __int16 *)(v125 + 14);
                  v60 = v69 * v137;
                  v61 = v69 * v138;
                  *(float *)(v20 + v59) = *(float *)(v20 + v59) + (float)(v69 * v136);
                  v62 = v20 + v59;
                  *(float *)(v62 + 4) = *(float *)(v62 + 4) + v60;
                  *(float *)(v62 + 8) = *(float *)(v62 + 8) + v61;
                }
              }
              ++v110;
            }
            while ( v110 != v131 );
            v10 = (glitch::IReferenceCounted *)v132;
            v6 = v135;
          }
          if ( a4 && (v100 = v147) != 0 )
          {
            if ( v134 )
            {
              v101 = 0;
              for ( i = *((unsigned __int16 *)v146 + 7); ; i = *((unsigned __int16 *)v146 + 7) )
              {
                v103 = (float *)(v100 + v101 * i);
                ++v101;
                glitch::core::vector3d<float>::normalize(v103);
                if ( v101 == v134 )
                  break;
                v100 = v147;
              }
LABEL_115:
              v104 = 0;
              for ( j = *((unsigned __int16 *)v116 + 7); ; j = *((unsigned __int16 *)v116 + 7) )
              {
                glitch::core::vector3d<float>::normalize((float *)(v19 + v104 * j));
                v106 = (float *)(v20 + *(unsigned __int16 *)(v125 + 14) * v104++);
                glitch::core::vector3d<float>::normalize(v106);
                if ( v104 >= v134 )
                  break;
              }
            }
          }
          else if ( v134 )
          {
            goto LABEL_115;
          }
LABEL_89:
          if ( v127 )
          {
            v88 = *((_BYTE **)v10 + 6);
            v89 = v88[19];
            if ( (v89 & 0x1Fu) <= 1 )
            {
              if ( (v88[18] & 0x20) != 0 )
                (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)v88 + 24))(v88);
              v88[19] = 0;
            }
            else
            {
              v88[19] = ((v89 & 0x1F) - 1) | v89 & 0xE0;
            }
          }
          if ( v20 )
          {
            v90 = (_BYTE *)v116[4];
            v91 = v90[19];
            if ( (v91 & 0x1Fu) <= 1 )
            {
              if ( (v90[18] & 0x20) != 0 )
                (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v90 + 24))(v116[4]);
              v90[19] = 0;
            }
            else
            {
              v90[19] = ((v91 & 0x1F) - 1) | v91 & 0xE0;
            }
          }
          if ( v19 )
          {
            v92 = (_BYTE *)*v116;
            v93 = *(_BYTE *)(*v116 + 19);
            if ( (v93 & 0x1Fu) <= 1 )
            {
              if ( (v92[18] & 0x20) != 0 )
                (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v92 + 24))(*v116);
              v92[19] = 0;
            }
            else
            {
              v92[19] = ((v93 & 0x1F) - 1) | v93 & 0xE0;
            }
          }
          if ( v147 )
          {
            v94 = (_BYTE *)*v146;
            v95 = *(_BYTE *)(*v146 + 19);
            if ( (v95 & 0x1Fu) <= 1 )
            {
              if ( (v94[18] & 0x20) != 0 )
                (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v94 + 24))(*v146);
              v94[19] = 0;
            }
            else
            {
              v94[19] = ((v95 & 0x1F) - 1) | v95 & 0xE0;
            }
            v147 = 0;
            v146 = nullptr;
          }
          if ( v126 )
          {
            v96 = *(_BYTE **)(v117 + 36);
            v97 = v96[19];
            if ( (v97 & 0x1Fu) <= 1 )
            {
              if ( (v96[18] & 0x20) != 0 )
                (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v96 + 24))(*(_DWORD *)(v117 + 36));
              v96[19] = 0;
            }
            else
            {
              v96[19] = ((v97 & 0x1F) - 1) | v97 & 0xE0;
            }
          }
          if ( v16 )
          {
            v98 = *(_BYTE **)(v117 + 20);
            v99 = v98[19];
            if ( (v99 & 0x1Fu) <= 1 )
            {
              if ( (v98[18] & 0x20) != 0 )
                (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v98 + 24))(*(_DWORD *)(v117 + 20));
              v98[19] = 0;
            }
            else
            {
              v98[19] = ((v99 & 0x1F) - 1) | v99 & 0xE0;
            }
          }
        }
        else
        {
          glitch::os::Printer::log(
            "createMeshWithTangents",
            "computing tangets only supported for floating-point streams of dimension 3 (2 for texcoord)",
            1);
        }
LABEL_8:
        if ( ++v9 == v121 )
          return a1;
        goto LABEL_9;
      }
      glitch::os::Printer::log(
        "createMeshWithTangents",
        "to compute tangents, we need texcoord0, tangent and binormal vertex attributes",
        1);
      if ( ++v9 == v121 )
        return a1;
LABEL_9:
      (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int))(*(_DWORD *)*v6 + 20))(&v152, *v6, v9);
    }
    glitch::os::Printer::log("createMeshWithTangents", "computing tangents only supported for triangles", 1);
    goto LABEL_8;
  }
  return a1;
}


// ===== 59dc1c glitch::scene::scale(boost::intrusive_ptr<glitch::scene::CMeshBuffer> const&,glitch::core::vector3d<float> const&) =====
float __fastcall glitch::scene::scale(float result, float *a2)
{
  int Stream; // r0
  _DWORD *v4; // r8
  int v5; // r7
  int v6; // r6
  float v7; // r11
  int v8; // r9
  int v9; // r8
  int v10; // r8
  int v11; // r8
  int v12; // r10
  int v13; // r8
  _BYTE *v14; // r4
  char v15; // r3
  _BYTE *v16; // r4
  char v17; // r3
  int v18; // [sp+4h] [bp-30h]
  float v19; // [sp+8h] [bp-2Ch]
  float v20; // [sp+Ch] [bp-28h]
  float v21[3]; // [sp+10h] [bp-24h] BYREF
  float v22[3]; // [sp+1Ch] [bp-18h] BYREF
  _DWORD *v23; // [sp+28h] [bp-Ch] BYREF
  int v24; // [sp+2Ch] [bp-8h]

  if ( *(_DWORD *)LODWORD(result) )
  {
    v18 = *(_DWORD *)(*(_DWORD *)LODWORD(result) + 20);
    Stream = glitch::video::CVertexStreams::getStream(
               v18,
               17,
               v18 + 20 + 16 * (*(unsigned __int8 *)(v18 + 12) + 1),
               *(_DWORD *)(v18 + 16));
    v4 = (_DWORD *)Stream;
    if ( *(_WORD *)(v18 + 30) == 6
      && *(_WORD *)(v18 + 32) == 3
      && *(_WORD *)(Stream + 10) == 6
      && *(_WORD *)(Stream + 12) == 3 )
    {
      v5 = 0;
      v6 = glitch::video::IBuffer::map(*(_DWORD *)(v18 + 20), 5) + *(_DWORD *)(v18 + 24);
      v22[2] = 1.0;
      v22[0] = 1.0;
      v22[1] = 1.0;
      v23 = nullptr;
      v24 = 0;
      glitch::core::vector3d<float>::operator/(v21, v22, a2);
      v19 = v21[1];
      v7 = v21[0];
      v20 = v21[2];
      result = COERCE_FLOAT(glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float>>::reset(&v23, v4));
      v8 = *(_DWORD *)(v18 + 8);
      if ( v8 )
      {
        do
        {
          v9 = v5 * *(unsigned __int16 *)(v18 + 34);
          *(float *)(v6 + v9) = *(float *)(v6 + v9) * *a2;
          v10 = v6 + v9;
          *(float *)(v10 + 4) = *(float *)(v10 + 4) * a2[1];
          result = *(float *)(v10 + 8) * a2[2];
          *(float *)(v10 + 8) = result;
          v11 = v24;
          if ( v24 )
          {
            v12 = *((unsigned __int16 *)v23 + 7) * v5;
            *(float *)(v24 + v12) = *(float *)(v24 + v12) * v7;
            v13 = v11 + v12;
            *(float *)(v13 + 4) = *(float *)(v13 + 4) * v19;
            *(float *)(v13 + 8) = *(float *)(v13 + 8) * v20;
            result = COERCE_FLOAT(glitch::core::vector3d<float>::normalize((float *)(v24
                                                                                   + *((unsigned __int16 *)v23 + 7) * v5)));
          }
          ++v5;
        }
        while ( v5 != v8 );
      }
      if ( v24 )
      {
        v14 = (_BYTE *)*v23;
        v15 = *(_BYTE *)(*v23 + 19);
        if ( (v15 & 0x1Fu) <= 1 )
        {
          if ( (v14[18] & 0x20) != 0 )
            result = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(*(_DWORD *)v14 + 24))(*v23));
          v14[19] = 0;
        }
        else
        {
          v14[19] = ((v15 & 0x1F) - 1) | v15 & 0xE0;
        }
        v24 = 0;
        v23 = nullptr;
      }
      if ( v6 )
      {
        v16 = *(_BYTE **)(v18 + 20);
        v17 = v16[19];
        if ( (v17 & 0x1Fu) <= 1 )
        {
          if ( (v16[18] & 0x20) != 0 )
            result = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(*(_DWORD *)v16 + 24))(*(_DWORD *)(v18 + 20)));
          v16[19] = 0;
        }
        else
        {
          v16[19] = ((v17 & 0x1F) - 1) | v17 & 0xE0;
        }
      }
    }
    else
    {
      return COERCE_FLOAT(glitch::os::Printer::log("scale", "supports only floating-point streams of array size 3", 1));
    }
  }
  return result;
}


// ===== 59dea4 glitch::scene::scale(boost::intrusive_ptr<glitch::scene::IMesh> const&,glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::scene::scale(_DWORD *result, float *a2)
{
  _DWORD *v2; // r7
  int v4; // r8
  int i; // r4
  float *v6; // r0
  float v7; // r1
  float v8; // r9
  int v9; // r3
  float v10; // [sp+4h] [bp-1Ch] BYREF
  float v11; // [sp+8h] [bp-18h]
  float v12; // [sp+Ch] [bp-14h]
  float v13; // [sp+10h] [bp-10h]
  float v14; // [sp+14h] [bp-Ch]
  float v15; // [sp+18h] [bp-8h]
  glitch::IReferenceCounted *v16; // [sp+1Ch] [bp-4h] BYREF

  v2 = result;
  if ( *result )
  {
    v4 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)*result + 16))(*result);
    if ( v4 )
    {
      for ( i = 0; i != v4; ++i )
      {
        (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int))(*(_DWORD *)*v2 + 20))(&v16, *v2, i);
        glitch::scene::scale(COERCE_FLOAT(&v16), a2);
        if ( v16 )
          glitch::IReferenceCounted::drop(v16);
      }
    }
    v6 = (float *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)*v2 + 36))(*v2);
    v7 = *a2;
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[2];
    v13 = v6[3];
    v14 = v6[4];
    v8 = v6[5];
    v10 = v10 * v7;
    v11 = v11 * a2[1];
    v12 = v12 * a2[2];
    v13 = v13 * *a2;
    v14 = v14 * a2[1];
    v9 = *v2;
    v15 = v8 * a2[2];
    return (_DWORD *)(*(int (__fastcall **)(int, float *))(*(_DWORD *)v9 + 40))(v9, &v10);
  }
  return result;
}


// ===== 59dfe4 glitch::scene::recalculateNormals(boost::intrusive_ptr<glitch::scene::CMeshBuffer> const&,bool,bool) =====
float __fastcall glitch::scene::recalculateNormals(float result, unsigned int a2, int a3)
{
  int v3; // r6
  int v5; // r8
  int v6; // r5
  int v7; // r0
  int v8; // r4
  int v9; // r4
  int v10; // r7
  int v11; // r8
  int v12; // r1
  int v13; // r3
  int v14; // r2
  _DWORD *v15; // r0
  _DWORD *v16; // r0
  _BYTE *v17; // r5
  char v18; // r3
  _BYTE *v19; // r5
  char v20; // r3
  _BYTE *v21; // r5
  char v22; // r3
  _BYTE *v23; // r4
  char v24; // r3
  int v25; // r0
  int v26; // r3
  int v27; // r1
  unsigned int v28; // r8
  int v29; // r9
  int v30; // r10
  int v31; // r11
  int v32; // r11
  int v33; // r11
  int v34; // r11
  float v35; // r1
  int v36; // r7
  int v37; // r7
  float *v38; // r11
  float v39; // r6
  float v40; // r5
  float v41; // r7
  int v42; // r0
  int v43; // r7
  float *v44; // r0
  float *v45; // [sp+Ch] [bp-88h]
  int v46; // [sp+10h] [bp-84h]
  int v47; // [sp+14h] [bp-80h]
  unsigned int v48; // [sp+18h] [bp-7Ch]
  float *v49; // [sp+1Ch] [bp-78h]
  _DWORD *v51; // [sp+30h] [bp-64h]
  int v52; // [sp+34h] [bp-60h]
  int v53; // [sp+3Ch] [bp-58h]
  int v54; // [sp+44h] [bp-50h]
  int v55; // [sp+48h] [bp-4Ch] BYREF
  int v56; // [sp+4Ch] [bp-48h]
  int v57; // [sp+50h] [bp-44h]
  float v58; // [sp+58h] [bp-3Ch] BYREF
  float v59; // [sp+5Ch] [bp-38h]
  float v60; // [sp+60h] [bp-34h]
  float v61[3]; // [sp+68h] [bp-2Ch] BYREF
  _DWORD *v62; // [sp+74h] [bp-20h] BYREF
  int v63; // [sp+78h] [bp-1Ch]
  _DWORD *v64; // [sp+7Ch] [bp-18h] BYREF
  int v65; // [sp+80h] [bp-14h]
  int v66; // [sp+84h] [bp-10h] BYREF
  int v67; // [sp+88h] [bp-Ch] BYREF
  _DWORD v68[2]; // [sp+8Ch] [bp-8h] BYREF

  v3 = *(_DWORD *)LODWORD(result);
  if ( *(_DWORD *)LODWORD(result) )
  {
    if ( *(_DWORD *)(v3 + 24) )
    {
      if ( *(_WORD *)(v3 + 46) == 6 )
      {
        v5 = *(_DWORD *)(v3 + 20);
        if ( (*(_DWORD *)(v5 + 4) & 0x20000) != 0 )
        {
          v51 = (_DWORD *)(v5 + 20);
          if ( *(_WORD *)(v5 + 30) == 6
            && *(unsigned __int16 *)(v5 + 32) > 2u
            && (v54 = (unsigned __int8)(*(_BYTE *)(v5 + 12) + 1), v6 = v5 + 20 + 16 * v54, *(_WORD *)(v6 + 10) == 6)
            && *(_WORD *)(v6 + 12) == 3 )
          {
            v7 = glitch::video::IBuffer::map(v51[4 * v54], 5);
            v8 = *(_DWORD *)(v6 + 4);
            v63 = 0;
            v64 = nullptr;
            v65 = 0;
            v62 = nullptr;
            v9 = v7 + v8;
            if ( *(_DWORD *)(v5 + 20) == v51[4 * v54] )
            {
              glitch::video::SVertexStream::SMapBuffer<void>::reset(&v64, v51);
              v10 = v65;
            }
            else
            {
              glitch::video::SVertexStream::SMapBuffer<void const>::reset(&v62, v51);
              v10 = v63;
            }
            v53 = *(_DWORD *)(v5 + 8);
            v48 = *(_DWORD *)(v3 + 32);
            v11 = *(unsigned __int16 *)(v5 + 34);
            result = COERCE_FLOAT(glitch::video::IBuffer::map(*(_DWORD *)(v3 + 24), 1));
            v47 = LODWORD(result) + *(_DWORD *)(v3 + 28);
            v66 = -1;
            v68[0] = -1;
            v67 = -1;
            if ( a2 )
            {
              if ( v53 )
              {
                v25 = *(unsigned __int16 *)(v6 + 14);
                v26 = 0;
                while ( 1 )
                {
                  LODWORD(result) = v26 * v25;
                  ++v26;
                  v27 = v9 + LODWORD(result);
                  *(_DWORD *)(v9 + LODWORD(result)) = 0;
                  *(_DWORD *)(v27 + 8) = 0;
                  *(_DWORD *)(v27 + 4) = 0;
                  if ( v26 == v53 )
                    break;
                  v25 = *(unsigned __int16 *)(v6 + 14);
                }
              }
              if ( v48 )
              {
                v46 = v11;
                v52 = v3;
                v28 = 0;
                v29 = v10;
                v30 = v6;
                glitch::scene::`anonymous namespace'::getTriangleIndices(
                  (unsigned __int16 *)*(unsigned __int16 *)(v3 + 44),
                  v47,
                  0,
                  v68,
                  &v67,
                  &v66);
                while ( 1 )
                {
                  v38 = (float *)(v29 + v67 * v46);
                  v49 = (float *)(v29 + v68[0] * v46);
                  v45 = (float *)(v29 + v66 * v46);
                  v58 = 0.0;
                  v59 = 0.0;
                  v60 = 0.0;
                  glitch::core::plane3d<float>::setPlane((int)&v58, v49, v38, v45);
                  v28 += 3;
                  v39 = v59;
                  v40 = v60;
                  v41 = v58;
                  if ( a3 )
                  {
                    glitch::scene::`anonymous namespace'::getAngleWeight(v61, v49, v38, v45);
                    v41 = v41 * v61[0];
                    v39 = v39 * v61[1];
                    v40 = v40 * v61[2];
                  }
                  v31 = v68[0] * *(unsigned __int16 *)(v30 + 14);
                  *(float *)(v9 + v31) = *(float *)(v9 + v31) + v41;
                  v32 = v9 + v31;
                  *(float *)(v32 + 4) = *(float *)(v32 + 4) + v39;
                  *(float *)(v32 + 8) = *(float *)(v32 + 8) + v40;
                  v33 = v67 * *(unsigned __int16 *)(v30 + 14);
                  *(float *)(v9 + v33) = *(float *)(v9 + v33) + v41;
                  v34 = v9 + v33;
                  *(float *)(v34 + 4) = *(float *)(v34 + 4) + v39;
                  *(float *)(v34 + 8) = *(float *)(v34 + 8) + v40;
                  v35 = v41;
                  v36 = v66 * *(unsigned __int16 *)(v30 + 14);
                  *(float *)(v9 + v36) = *(float *)(v9 + v36) + v35;
                  v37 = v9 + v36;
                  *(float *)(v37 + 4) = *(float *)(v37 + 4) + v39;
                  result = *(float *)(v37 + 8) + v40;
                  *(float *)(v37 + 8) = result;
                  if ( v28 >= v48 )
                    break;
                  glitch::scene::`anonymous namespace'::getTriangleIndices(
                    (unsigned __int16 *)*(unsigned __int16 *)(v52 + 44),
                    v47,
                    v28,
                    v68,
                    &v67,
                    &v66);
                }
                v3 = v52;
                v6 = v30;
              }
              if ( v53 )
              {
                v42 = *(unsigned __int16 *)(v6 + 14);
                v43 = 0;
                while ( 1 )
                {
                  v44 = (float *)(v9 + v43 * v42);
                  ++v43;
                  result = COERCE_FLOAT(glitch::core::vector3d<float>::normalize(v44));
                  if ( v43 == v53 )
                    break;
                  v42 = *(unsigned __int16 *)(v6 + 14);
                }
              }
            }
            else if ( v48 )
            {
              do
              {
                glitch::scene::`anonymous namespace'::getTriangleIndices(
                  (unsigned __int16 *)*(unsigned __int16 *)(v3 + 44),
                  v47,
                  a2,
                  v68,
                  &v67,
                  &v66);
                v55 = 0;
                v56 = 0;
                v57 = 0;
                glitch::core::plane3d<float>::setPlane(
                  (int)&v55,
                  (float *)(v10 + v68[0] * v11),
                  (float *)(v10 + v67 * v11),
                  (float *)(v10 + v66 * v11));
                v12 = v55;
                v13 = v56;
                v14 = v57;
                v15 = (_DWORD *)(v9 + v68[0] * *(unsigned __int16 *)(v6 + 14));
                *v15 = v55;
                v15[2] = v14;
                v15[1] = v13;
                a2 += 3;
                v16 = (_DWORD *)(v9 + v67 * *(unsigned __int16 *)(v6 + 14));
                *v16 = v12;
                v16[2] = v14;
                v16[1] = v13;
                LODWORD(result) = v9 + v66 * *(unsigned __int16 *)(v6 + 14);
                *(_DWORD *)LODWORD(result) = v12;
                *(_DWORD *)(LODWORD(result) + 8) = v14;
                *(_DWORD *)(LODWORD(result) + 4) = v13;
              }
              while ( a2 < v48 );
            }
            if ( v47 )
            {
              v17 = *(_BYTE **)(v3 + 24);
              v18 = v17[19];
              if ( (v18 & 0x1Fu) <= 1 )
              {
                if ( (v17[18] & 0x20) != 0 )
                  result = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(*(_DWORD *)v17 + 24))(*(_DWORD *)(v3 + 24)));
                v17[19] = 0;
              }
              else
              {
                v17[19] = ((v18 & 0x1F) - 1) | v18 & 0xE0;
              }
            }
            if ( v63 )
            {
              v19 = (_BYTE *)*v62;
              v20 = *(_BYTE *)(*v62 + 19);
              if ( (v20 & 0x1Fu) <= 1 )
              {
                if ( (v19[18] & 0x20) != 0 )
                  result = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(*(_DWORD *)v19 + 24))(*v62));
                v19[19] = 0;
              }
              else
              {
                v19[19] = ((v20 & 0x1F) - 1) | v20 & 0xE0;
              }
              v63 = 0;
              v62 = nullptr;
            }
            if ( v65 )
            {
              v21 = (_BYTE *)*v64;
              v22 = *(_BYTE *)(*v64 + 19);
              if ( (v22 & 0x1Fu) <= 1 )
              {
                if ( (v21[18] & 0x20) != 0 )
                  result = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(*(_DWORD *)v21 + 24))(*v64));
                v21[19] = 0;
              }
              else
              {
                v21[19] = ((v22 & 0x1F) - 1) | v22 & 0xE0;
              }
              v65 = 0;
              v64 = nullptr;
            }
            if ( v9 )
            {
              v23 = (_BYTE *)v51[4 * v54];
              v24 = v23[19];
              if ( (v24 & 0x1Fu) <= 1 )
              {
                if ( (v23[18] & 0x20) != 0 )
                  result = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(*(_DWORD *)v23 + 24))(v51[4 * v54]));
                v23[19] = 0;
              }
              else
              {
                v23[19] = ((v24 & 0x1F) - 1) | v24 & 0xE0;
              }
            }
          }
          else
          {
            return COERCE_FLOAT(
                     glitch::os::Printer::log(
                       "recalculateNormals",
                       "stream format not supported for normal computation",
                       1));
          }
        }
      }
      else
      {
        return COERCE_FLOAT(
                 glitch::os::Printer::log(
                   "recalculateNormals",
                   "computing normals for primitive types other than triangles is not supported",
                   1));
      }
    }
    else
    {
      return COERCE_FLOAT(
               glitch::os::Printer::log(
                 "recalculateNormals",
                 "computing normals for unindexed surfaces not supported",
                 1));
    }
  }
  return result;
}


// ===== 59e698 glitch::scene::recalculateNormals(boost::intrusive_ptr<glitch::scene::IMesh> const&,bool,bool) =====
glitch::IReferenceCounted *__fastcall glitch::scene::recalculateNormals(
        glitch::IReferenceCounted *result,
        unsigned int a2,
        int a3)
{
  glitch::IReferenceCounted *v3; // r6
  glitch::IReferenceCounted *v6; // r10
  glitch::IReferenceCounted *v7; // r4
  glitch::IReferenceCounted *v8[2]; // [sp+4h] [bp-8h] BYREF

  v3 = result;
  if ( *(_DWORD *)result )
  {
    result = (glitch::IReferenceCounted *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)result + 16))(*(_DWORD *)result);
    v6 = result;
    if ( result )
    {
      v7 = nullptr;
      do
      {
        (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, glitch::IReferenceCounted *))(**(_DWORD **)v3 + 20))(
          v8,
          *(_DWORD *)v3,
          v7);
        glitch::scene::recalculateNormals(COERCE_FLOAT(v8), a2, a3);
        result = v8[0];
        v7 = (glitch::IReferenceCounted *)((char *)v7 + 1);
        if ( v8[0] )
          result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v8[0]);
      }
      while ( v7 != v6 );
    }
  }
  return result;
}


// ===== 59e728 glitch::scene::`anonymous namespace'::transform(boost::intrusive_ptr<glitch::scene::CMeshBuffer> const&,glitch::core::CMatrix4<float> const&,glitch::core::aabbox3d<float> *) =====
float __fastcall glitch::scene::`anonymous namespace'::transform(int a1, float *a2, _DWORD *a3)
{
  _DWORD *v3; // r5
  glitch::video::CVertexStreams *v4; // r3
  float result; // r0
  int Stream; // r0
  _DWORD *v9; // r6
  int v10; // r8
  int v11; // r10
  float v12; // r6
  int v13; // r7
  float v14; // r9
  float v15; // r11
  float *v16; // r6
  float v17; // r9
  float v18; // r11
  int i; // r6
  int v20; // r10
  float v21; // r11
  int v22; // r8
  float v23; // r9
  int v24; // r11
  float v25; // r9
  float *v26; // r10
  _DWORD *v27; // r3
  _BYTE *v28; // r4
  char v29; // r3
  _BYTE *v30; // r4
  char v31; // r3
  float v32; // [sp+4h] [bp-30h]
  float v33; // [sp+4h] [bp-30h]
  float v34; // [sp+8h] [bp-2Ch]
  float v35; // [sp+8h] [bp-2Ch]
  float v36; // [sp+Ch] [bp-28h]
  float v37; // [sp+10h] [bp-24h]
  unsigned int v38; // [sp+18h] [bp-1Ch]
  int v39; // [sp+1Ch] [bp-18h]
  _DWORD *v40; // [sp+24h] [bp-10h] BYREF
  float *v41; // [sp+28h] [bp-Ch]
  glitch::video::CVertexStreams *v42; // [sp+2Ch] [bp-8h] BYREF

  v3 = a3;
  v4 = *(glitch::video::CVertexStreams **)(*(_DWORD *)a1 + 20);
  v42 = v4;
  if ( v4 )
    a3 = *(_DWORD **)v4;
  if ( v4 )
  {
    *(_DWORD *)v4 = (char *)a3 + 1;
    v4 = v42;
  }
  v38 = *((_DWORD *)v4 + 2);
  result = COERCE_FLOAT(boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v42));
  if ( v38 )
  {
    v39 = *(_DWORD *)(*(_DWORD *)a1 + 20);
    Stream = glitch::video::CVertexStreams::getStream(
               v39,
               17,
               v39 + 20 + 16 * (*(unsigned __int8 *)(v39 + 12) + 1),
               *(_DWORD *)(v39 + 16));
    v9 = (_DWORD *)Stream;
    if ( *(_WORD *)(v39 + 30) == 6
      && *(_WORD *)(v39 + 32) == 3
      && *(_WORD *)(Stream + 10) == 6
      && *(_WORD *)(Stream + 12) == 3 )
    {
      v10 = glitch::video::IBuffer::map(*(_DWORD *)(v39 + 20), 5);
      v11 = *(_DWORD *)(v39 + 24);
      v41 = nullptr;
      v40 = nullptr;
      glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float>>::reset(&v40, v9);
      v12 = *(float *)(v10 + v11);
      v13 = v10 + v11;
      v14 = *(float *)(v10 + v11 + 4);
      v15 = *(float *)(v10 + v11 + 8);
      v34 = (float)((float)((float)(v12 * a2[1]) + (float)(v14 * a2[5])) + (float)(v15 * a2[9])) + a2[13];
      v32 = (float)((float)((float)(v12 * a2[2]) + (float)(v14 * a2[6])) + (float)(v15 * a2[10])) + a2[14];
      result = (float)((float)((float)(v12 * *a2) + (float)(v14 * a2[4])) + (float)(v15 * a2[8])) + a2[12];
      *(float *)(v10 + v11) = result;
      *(float *)(v13 + 4) = v34;
      *(float *)(v13 + 8) = v32;
      v16 = v41;
      if ( v41 )
      {
        v17 = *v41;
        v18 = *(float *)&byte_4[(_DWORD)v41];
        *v41 = (float)((float)(*v41 * *a2) + (float)(v18 * a2[4])) + (float)(*(float *)&byte_8[(_DWORD)v41] * a2[8]);
        *(float *)&byte_4[(_DWORD)v16] = (float)((float)(v17 * a2[1]) + (float)(v18 * a2[5]))
                                       + (float)(*(float *)&byte_8[(_DWORD)v16] * a2[9]);
        *(float *)&byte_8[(_DWORD)v16] = (float)((float)(v17 * a2[2]) + (float)(v18 * a2[6]))
                                       + (float)(*(float *)&byte_8[(_DWORD)v16] * a2[10]);
        result = COERCE_FLOAT(glitch::core::vector3d<float>::normalize(v41));
      }
      if ( v3 )
      {
        v3[3] = *(_DWORD *)(v10 + v11);
        v3[4] = *(_DWORD *)(v13 + 4);
        v3[5] = *(_DWORD *)(v13 + 8);
        *v3 = *(_DWORD *)(v10 + v11);
        v3[1] = *(_DWORD *)(v13 + 4);
        v3[2] = *(_DWORD *)(v13 + 8);
      }
      if ( v38 > 1 )
      {
        for ( i = 1; i != v38; ++i )
        {
          v20 = *(unsigned __int16 *)(v39 + 34) * i;
          v21 = *(float *)(v13 + v20);
          v22 = v13 + v20;
          v23 = *(float *)(v13 + v20 + 4);
          v35 = (float)((float)((float)(v21 * a2[1]) + (float)(v23 * a2[5])) + (float)(*(float *)(v13 + v20 + 8) * a2[9]))
              + a2[13];
          v33 = (float)((float)((float)(v21 * a2[2]) + (float)(v23 * a2[6]))
                      + (float)(*(float *)(v13 + v20 + 8) * a2[10]))
              + a2[14];
          result = (float)((float)((float)(v21 * *a2) + (float)(v23 * a2[4]))
                         + (float)(*(float *)(v13 + v20 + 8) * a2[8]))
                 + a2[12];
          *(float *)(v13 + v20) = result;
          *(float *)(v22 + 8) = v33;
          *(float *)(v22 + 4) = v35;
          if ( v41 )
          {
            v24 = *(unsigned __int16 *)&byte_9[(_DWORD)v40 + 5] * i;
            v25 = *(float *)((char *)v41 + v24);
            v26 = (float *)((char *)v41 + v24);
            v37 = *(float *)((char *)v41 + v24 + 4);
            v36 = *(float *)((char *)v41 + v24 + 8);
            *(float *)((char *)v41 + v24) = (float)((float)(v25 * *a2) + (float)(v37 * a2[4])) + (float)(v36 * a2[8]);
            v26[1] = (float)((float)(v25 * a2[1]) + (float)(v37 * a2[5])) + (float)(v36 * a2[9]);
            v26[2] = (float)((float)(v25 * a2[2]) + (float)(v37 * a2[6])) + (float)(v36 * a2[10]);
            result = COERCE_FLOAT(glitch::core::vector3d<float>::normalize((float *)((char *)v41
                                                                                   + *(unsigned __int16 *)&byte_9[(_DWORD)v40 + 5]
                                                                                   * i)));
          }
          if ( v3 )
          {
            v27 = (_DWORD *)(v13 + *(unsigned __int16 *)(v39 + 34) * i);
            v3[3] = *v27;
            v3[4] = v27[1];
            v3[5] = v27[2];
            *v3 = *v27;
            v3[1] = v27[1];
            v3[2] = v27[2];
          }
        }
      }
      if ( v41 )
      {
        v28 = (_BYTE *)*v40;
        v29 = *(_BYTE *)(*v40 + 19);
        if ( (v29 & 0x1Fu) <= 1 )
        {
          if ( (v28[18] & 0x20) != 0 )
            result = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(*(_DWORD *)v28 + 24))(*v40));
          v28[19] = 0;
        }
        else
        {
          v28[19] = ((v29 & 0x1F) - 1) | v29 & 0xE0;
        }
        v41 = nullptr;
        v40 = nullptr;
      }
      v30 = *(_BYTE **)(v39 + 20);
      v31 = v30[19];
      if ( (v31 & 0x1Fu) <= 1 )
      {
        if ( (v30[18] & 0x20) != 0 )
          result = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(*(_DWORD *)v30 + 24))(*(_DWORD *)(v39 + 20)));
        v30[19] = 0;
      }
      else
      {
        v30[19] = ((v31 & 0x1F) - 1) | v31 & 0xE0;
      }
    }
    else
    {
      return COERCE_FLOAT(glitch::os::Printer::log("transform", "supports only floating-point streams of array size 3", 1));
    }
  }
  return result;
}


// ===== 59ee60 glitch::scene::transform(boost::intrusive_ptr<glitch::scene::CMeshBuffer> const&,glitch::core::CMatrix4<float> const&,glitch::core::aabbox3d<float> &) =====
// attributes: thunk
float __fastcall glitch::scene::transform(int a1, float *a2, _DWORD *a3)
{
  return glitch::scene::`anonymous namespace'::transform(a1, a2, a3);
}


// ===== 59ee64 glitch::scene::transform(boost::intrusive_ptr<glitch::scene::IMesh> const&,glitch::core::CMatrix4<float> const&) =====
_DWORD *__fastcall glitch::scene::transform(_DWORD *result, float *a2)
{
  int v2; // r3
  _DWORD *v3; // r10
  int v5; // r11
  int i; // r4
  int v7; // r3
  int v8; // [sp+Ch] [bp-38h] BYREF
  int v9; // [sp+10h] [bp-34h]
  int v10; // [sp+14h] [bp-30h]
  int v11; // [sp+18h] [bp-2Ch]
  int v12; // [sp+1Ch] [bp-28h]
  int v13; // [sp+20h] [bp-24h]
  int v14; // [sp+24h] [bp-20h] BYREF
  int v15; // [sp+28h] [bp-1Ch]
  int v16; // [sp+2Ch] [bp-18h]
  int v17; // [sp+30h] [bp-14h]
  int v18; // [sp+34h] [bp-10h]
  int v19; // [sp+38h] [bp-Ch]
  glitch::IReferenceCounted *v20[2]; // [sp+3Ch] [bp-8h] BYREF

  v2 = *result;
  v3 = result;
  if ( *result )
  {
    v14 = -1082130432;
    v15 = -1082130432;
    v16 = -1082130432;
    v17 = 1065353216;
    v18 = 1065353216;
    v19 = 1065353216;
    v5 = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 16))(v2);
    if ( v5 )
    {
      for ( i = 0; i != v5; ++i )
      {
        while ( 1 )
        {
          v7 = *v3;
          v8 = -1082130432;
          v9 = -1082130432;
          v10 = -1082130432;
          v11 = 1065353216;
          v12 = 1065353216;
          v13 = 1065353216;
          (*(void (__fastcall **)(glitch::IReferenceCounted **, int, int))(*(_DWORD *)v7 + 20))(v20, v7, i);
          glitch::scene::transform((int)v20, a2, &v8);
          if ( v20[0] )
            glitch::IReferenceCounted::drop(v20[0]);
          if ( i )
            break;
          i = 1;
          v14 = v8;
          v15 = v9;
          v16 = v10;
          v17 = v11;
          v18 = v12;
          v19 = v13;
          if ( v5 == 1 )
            return (_DWORD *)(*(int (__fastcall **)(_DWORD, int *))(*(_DWORD *)*v3 + 40))(*v3, &v14);
        }
        glitch::core::aabbox3d<float>::addInternalBox((float *)&v14, (float *)&v8);
      }
      return (_DWORD *)(*(int (__fastcall **)(_DWORD, int *))(*(_DWORD *)*v3 + 40))(*v3, &v14);
    }
    else
    {
      return (_DWORD *)(*(int (__fastcall **)(_DWORD, int *))(*(_DWORD *)*v3 + 40))(*v3, &v14);
    }
  }
  return result;
}


// ===== 59efac glitch::scene::transform(boost::intrusive_ptr<glitch::scene::CMeshBuffer> const&,glitch::core::CMatrix4<float> const&) =====
float __fastcall glitch::scene::transform(int a1, float *a2)
{
  return glitch::scene::`anonymous namespace'::transform(a1, a2, nullptr);
}


// ===== 59efb4 glitch::video::C2DDriver::C2DDriver(glitch::video::IVideoDriver *) =====
int __fastcall glitch::video::C2DDriver::C2DDriver(int result, int a2)
{
  *(_BYTE *)(result + 30) = 0;
  *(_DWORD *)result = off_9770C0;
  *(_DWORD *)(result + 4) = 1;
  *(_DWORD *)(result + 8) = a2;
  *(_WORD *)(result + 28) = 0;
  *(_DWORD *)(result + 12) = 0;
  *(_DWORD *)(result + 16) = 0;
  *(_WORD *)(result + 20) = 0;
  *(_DWORD *)(result + 24) = 0;
  return result;
}


// ===== 59f008 glitch::video::C2DDriver::C2DDriver(glitch::video::IVideoDriver *) =====
int __fastcall glitch::video::C2DDriver::C2DDriver(int result, int a2)
{
  *(_BYTE *)(result + 30) = 0;
  *(_DWORD *)result = off_9770C0;
  *(_DWORD *)(result + 4) = 1;
  *(_DWORD *)(result + 8) = a2;
  *(_WORD *)(result + 28) = 0;
  *(_DWORD *)(result + 12) = 0;
  *(_DWORD *)(result + 16) = 0;
  *(_WORD *)(result + 20) = 0;
  *(_DWORD *)(result + 24) = 0;
  return result;
}


// ===== 59f05c glitch::video::C2DDriver::draw2DLine(glitch::core::position2d<int> const&,glitch::core::position2d<int> const&,glitch::video::SColor) =====
int __fastcall glitch::video::C2DDriver::draw2DLine(int a1)
{
  return (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 8) + 44))(*(_DWORD *)(a1 + 8));
}


// ===== 59f084 glitch::video::C2DDriver::draw2DRectangle(glitch::core::rect<int> const&,glitch::core::rect<int> const&,glitch::video::SColor const*,glitch::core::rect<int> const*) =====
int __fastcall glitch::video::C2DDriver::draw2DRectangle(int a1)
{
  return (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 8) + 52))(*(_DWORD *)(a1 + 8));
}


// ===== 59f0b0 glitch::video::C2DDriver::draw2DLine(glitch::video::IVideoDriver *,glitch::core::position2d<int> const&,glitch::core::position2d<int> const&,glitch::video::SColor) =====
int __fastcall glitch::video::C2DDriver::draw2DLine(int a1)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 44))(a1);
}


// ===== 59f0d0 glitch::video::C2DDriver::draw2DRectangle(glitch::video::IVideoDriver *,glitch::core::rect<int> const&,glitch::core::rect<int> const&,glitch::video::SColor const*,glitch::core::rect<int> const*) =====
int __fastcall glitch::video::C2DDriver::draw2DRectangle(int a1)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 52))(a1);
}


// ===== 59f0f4 `global constructor keyed to'.._source_glitch_video_C2DDriver.cpp =====
void `global constructor keyed to'.._source_glitch_video_C2DDriver.cpp()
{
  dword_9F68F8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F68F4 = 1056964608;
}


// ===== 59f114 glitch::video::C2DDriver::draw2DPolygon(glitch::core::position2d<int>,float,glitch::video::SColor,int) =====
int __fastcall glitch::video::C2DDriver::draw2DPolygon(int a1, _DWORD *a2, float a3, int a4, int a5)
{
  int v5; // r12
  int v9; // r3
  int v10; // r4
  float v11; // r11
  int v12; // r9
  float v13; // r0
  int v14; // r9
  int v15; // r3
  int v18; // [sp+8h] [bp-1Ch] BYREF
  int v19; // [sp+Ch] [bp-18h]
  int v20; // [sp+10h] [bp-14h] BYREF
  int v21; // [sp+14h] [bp-10h]
  int v22; // [sp+18h] [bp-Ch] BYREF
  int v23; // [sp+1Ch] [bp-8h]

  v5 = 0;
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  if ( a5 > 0 )
  {
    v9 = 0;
    v10 = 0;
    while ( 1 )
    {
      v18 = v9;
      v19 = v5;
      v11 = (float)((float)v10 / (float)a5) * 6.2832;
      v12 = (int)(float)(a3 * sinf(v11));
      v13 = cosf(v11);
      v14 = v12 + *a2;
      v15 = (int)(float)(a3 * v13) + a2[1];
      v20 = v14;
      v21 = v15;
      if ( v10 )
      {
        ++v10;
        (*(void (__fastcall **)(_DWORD, int *, int *, int))(**(_DWORD **)(a1 + 8) + 44))(
          *(_DWORD *)(a1 + 8),
          &v20,
          &v18,
          a4);
        if ( v10 == a5 )
          return (*(int (__fastcall **)(_DWORD, int *, int *, int))(**(_DWORD **)(a1 + 8) + 44))(
                   *(_DWORD *)(a1 + 8),
                   &v20,
                   &v22,
                   a4);
      }
      else
      {
        v22 = v14;
        v23 = v15;
        v10 = 1;
        if ( a5 == 1 )
          return (*(int (__fastcall **)(_DWORD, int *, int *, int))(**(_DWORD **)(a1 + 8) + 44))(
                   *(_DWORD *)(a1 + 8),
                   &v20,
                   &v22,
                   a4);
      }
      v9 = v20;
      v5 = v21;
    }
  }
  return (*(int (__fastcall **)(_DWORD, int *, int *, int))(**(_DWORD **)(a1 + 8) + 44))(
           *(_DWORD *)(a1 + 8),
           &v20,
           &v22,
           a4);
}


// ===== 59f264 glitch::video::C2DDriver::draw2DPolygon(glitch::video::IVideoDriver *,glitch::core::position2d<int>,float,glitch::video::SColor,int) =====
int __fastcall glitch::video::C2DDriver::draw2DPolygon(int a1, int *a2, float a3, int a4, int a5)
{
  int v5; // lr
  int v6; // r0
  _DWORD v8[3]; // [sp+10h] [bp-Ch] BYREF

  v5 = *a2;
  v6 = *(_DWORD *)(*(_DWORD *)(a1 + 212) + 20);
  v8[1] = a2[1];
  v8[0] = v5;
  return glitch::video::C2DDriver::draw2DPolygon(v6, v8, a3, a4, a5);
}


// ===== 59f2a0 glitch::video::C2DDriver::~C2DDriver() =====
void __fastcall glitch::video::C2DDriver::~C2DDriver(glitch::video::CMaterial **this)
{
  *this = (glitch::video::CMaterial *)off_9770C0;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(this + 6);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(this + 4);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(this + 3);
}


// ===== 59f2e4 glitch::video::C2DDriver::~C2DDriver() =====
void __fastcall glitch::video::C2DDriver::~C2DDriver(glitch::video::CMaterial **this)
{
  glitch::video::C2DDriver::~C2DDriver(this);
  LC_API_FREE_0(this);
}


// ===== 59f300 glitch::video::C2DDriver::freeTextures(void) =====
glitch::IReferenceCounted *__fastcall glitch::video::C2DDriver::freeTextures(glitch::video::C2DDriver *this)
{
  int v2; // r0
  int v3; // r1
  glitch::IReferenceCounted *result; // r0
  int v5; // r1
  glitch::IReferenceCounted *v6; // [sp+0h] [bp-8h] BYREF
  glitch::IReferenceCounted *v7; // [sp+4h] [bp-4h] BYREF

  (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 2) + 508))(*((_DWORD *)this + 2));
  v2 = *((_DWORD *)this + 4);
  if ( v2 )
  {
    v3 = *((unsigned __int16 *)this + 10);
    v7 = nullptr;
    glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
      v2,
      v3,
      0,
      &v7);
    if ( v7 )
      glitch::IReferenceCounted::drop(v7);
  }
  result = *((glitch::IReferenceCounted **)this + 6);
  if ( result )
  {
    v5 = *((unsigned __int16 *)this + 14);
    v6 = nullptr;
    glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
      result,
      v5,
      0,
      &v6);
    result = v6;
    if ( v6 )
      return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v6);
  }
  return result;
}


// ===== 59f38c glitch::video::C2DDriver::freeTextures(glitch::video::IVideoDriver *) =====
glitch::IReferenceCounted *__fastcall glitch::video::C2DDriver::freeTextures(
        glitch::video::C2DDriver *this,
        glitch::video::IVideoDriver *a2)
{
  return glitch::video::C2DDriver::freeTextures(*(glitch::video::C2DDriver **)(*((_DWORD *)this + 53) + 20));
}


// ===== 59f398 glitch::video::C2DDriver::init(void) =====
int __fastcall glitch::video::C2DDriver::init(int this)
{
  int v1; // r4
  glitch::video::CMaterial *v2; // r3
  glitch::video::CMaterial *v3; // r2
  glitch::video::CMaterial *v4; // r3
  glitch::video::CMaterial *v5; // r2
  __int16 ParameterID; // r0
  int v7; // r3
  glitch::video::CMaterial *v8; // r3
  glitch::video::CMaterial *v9; // r2
  glitch::video::CMaterial *v10; // [sp+0h] [bp-1Ch] BYREF
  glitch::video::CMaterial *v11; // [sp+4h] [bp-18h] BYREF
  glitch::video::CMaterial *v12; // [sp+8h] [bp-14h] BYREF
  glitch::video::CMaterial *v13; // [sp+Ch] [bp-10h] BYREF
  glitch::video::CMaterial *v14; // [sp+10h] [bp-Ch] BYREF
  glitch::video::CMaterial *v15; // [sp+14h] [bp-8h] BYREF

  v1 = this;
  if ( !*(_BYTE *)(this + 30) )
  {
    glitch::video::CMaterialRendererManager::createMaterialInstance(&v15, *(_DWORD *)(*(_DWORD *)(this + 8) + 220), 4);
    v2 = v15;
    v12 = v15;
    if ( v15 )
    {
      ++*(_DWORD *)v15;
      v2 = v12;
    }
    v3 = *(glitch::video::CMaterial **)(v1 + 12);
    *(_DWORD *)(v1 + 12) = v2;
    v12 = v3;
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v12);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v15);
    glitch::video::CMaterialRendererManager::createMaterialInstance(&v14, *(_DWORD *)(*(_DWORD *)(v1 + 8) + 220), 10);
    v4 = v14;
    v11 = v14;
    if ( v14 )
    {
      ++*(_DWORD *)v14;
      v4 = v11;
    }
    v5 = *(glitch::video::CMaterial **)(v1 + 16);
    *(_DWORD *)(v1 + 16) = v4;
    v11 = v5;
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v11);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v14);
    ParameterID = glitch::video::CMaterialRenderer::getParameterID(*(_DWORD *)(*(_DWORD *)(v1 + 16) + 4), 2, 0);
    v7 = *(_DWORD *)(v1 + 8);
    *(_WORD *)(v1 + 20) = ParameterID;
    glitch::video::CMaterialRendererManager::createMaterialInstance(&v13, *(_DWORD *)(v7 + 220), 7);
    v8 = v13;
    v10 = v13;
    if ( v13 )
    {
      ++*(_DWORD *)v13;
      v8 = v10;
    }
    v9 = *(glitch::video::CMaterial **)(v1 + 24);
    *(_DWORD *)(v1 + 24) = v8;
    v10 = v9;
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v10);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v13);
    this = glitch::video::CMaterialRenderer::getParameterID(*(_DWORD *)(*(_DWORD *)(v1 + 24) + 4), 2, 0);
    *(_BYTE *)(v1 + 30) = 1;
    *(_WORD *)(v1 + 28) = this;
  }
  return this;
}


// ===== 59f4e4 glitch::video::C2DDriver::get2DMaterial(boost::intrusive_ptr<glitch::video::ITexture> const&,bool) =====
_DWORD *__fastcall glitch::video::C2DDriver::get2DMaterial(
        _DWORD *a1,
        glitch::video::C2DDriver *this,
        _DWORD *a3,
        int a4)
{
  _DWORD *v8; // r3

  if ( *((_BYTE *)this + 30) )
  {
    if ( *a3 )
      goto LABEL_3;
LABEL_10:
    v8 = *((_DWORD **)this + 3);
    *a1 = v8;
    if ( !v8 )
      return a1;
    goto LABEL_5;
  }
  glitch::video::C2DDriver::init((int)this);
  if ( !*a3 )
    goto LABEL_10;
LABEL_3:
  if ( a4 )
  {
    glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
      *((_DWORD *)this + 4),
      *((unsigned __int16 *)this + 10),
      0,
      a3);
    v8 = *((_DWORD **)this + 4);
    *a1 = v8;
    if ( !v8 )
      return a1;
    goto LABEL_5;
  }
  glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
    *((_DWORD *)this + 6),
    *((unsigned __int16 *)this + 14),
    0,
    a3);
  v8 = *((_DWORD **)this + 6);
  *a1 = v8;
  if ( v8 )
LABEL_5:
    ++*v8;
  return a1;
}


// ===== 59f5a0 glitch::video::C2DDriver::get2DMaterial(glitch::video::IVideoDriver *,boost::intrusive_ptr<glitch::video::ITexture> const&,bool) =====
_DWORD *__fastcall glitch::video::C2DDriver::get2DMaterial(_DWORD *a1, int a2, _DWORD *a3, int a4)
{
  glitch::video::C2DDriver::get2DMaterial(a1, *(glitch::video::C2DDriver **)(*(_DWORD *)(a2 + 212) + 20), a3, a4);
  return a1;
}


// ===== 59f5bc glitch::video::C2DDriver::set2DTexture(boost::intrusive_ptr<glitch::video::ITexture> const&,bool) =====
glitch::video::CMaterial **__fastcall glitch::video::C2DDriver::set2DTexture(
        glitch::video::CMaterial **a1,
        glitch::video::C2DDriver *a2,
        _DWORD *a3,
        int a4)
{
  int v6; // r5
  int Technique; // r2

  glitch::video::C2DDriver::get2DMaterial(a1, a2, a3, a4);
  v6 = *((_DWORD *)a2 + 2);
  if ( *a1 )
    Technique = glitch::video::CMaterial::getTechnique(*a1);
  else
    Technique = 255;
  glitch::video::IVideoDriver::setMaterial(v6, a1, Technique, 0);
  return a1;
}


// ===== 59f600 glitch::video::C2DDriver::set2DTexture(glitch::video::IVideoDriver *,boost::intrusive_ptr<glitch::video::ITexture> const&,bool) =====
glitch::video::CMaterial **__fastcall glitch::video::C2DDriver::set2DTexture(
        glitch::video::CMaterial **a1,
        int a2,
        _DWORD *a3,
        int a4)
{
  glitch::video::C2DDriver::set2DTexture(a1, *(glitch::video::C2DDriver **)(*(_DWORD *)(a2 + 212) + 20), a3, a4);
  return a1;
}


// ===== 59f61c glitch::video::C2DDriver::draw2DRectangle(glitch::core::rect<int> const&,glitch::video::SColor,glitch::video::SColor,glitch::video::SColor,glitch::video::SColor,glitch::core::rect<int> const*) =====
int __fastcall glitch::video::C2DDriver::draw2DRectangle(
        glitch::video::C2DDriver *a1,
        int a2,
        unsigned int a3,
        unsigned int a4,
        int a5,
        int a6,
        int a7)
{
  unsigned int v8; // r7
  char v9; // r8
  char v10; // r6
  int v11; // r3
  unsigned int v13; // [sp+20h] [bp-4Ch]
  char v14; // [sp+24h] [bp-48h]
  char v15; // [sp+28h] [bp-44h]
  char v16; // [sp+2Ch] [bp-40h]
  char v17; // [sp+30h] [bp-3Ch]
  _DWORD v19[4]; // [sp+40h] [bp-2Ch] BYREF
  _BYTE v20[8]; // [sp+50h] [bp-1Ch] BYREF
  int v21; // [sp+58h] [bp-14h]
  int v22; // [sp+5Ch] [bp-10h]
  glitch::video::CMaterial *v23; // [sp+60h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v24; // [sp+64h] [bp-8h] BYREF

  v13 = HIBYTE(a4);
  v17 = a3;
  v8 = HIBYTE(a3);
  v9 = BYTE1(a3);
  v10 = BYTE2(a3);
  v14 = BYTE2(a4);
  v24 = nullptr;
  v16 = a4;
  v15 = BYTE1(a4);
  glitch::video::C2DDriver::set2DTexture(&v23, a1, &v24, 0);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v23);
  if ( v24 )
    glitch::IReferenceCounted::drop(v24);
  v11 = *((_DWORD *)a1 + 2);
  v20[0] = v17;
  v20[7] = v13;
  v20[6] = v14;
  v20[5] = v15;
  v20[4] = v16;
  v21 = a6;
  v22 = a5;
  memset(v19, 0, sizeof(v19));
  v20[3] = v8;
  v20[2] = v10;
  v20[1] = v9;
  return (*(int (__fastcall **)(int, int, _DWORD *, _BYTE *, int))(*(_DWORD *)v11 + 52))(v11, a2, v19, v20, a7);
}


// ===== 59f780 glitch::video::C2DDriver::draw2DRectangle(glitch::video::IVideoDriver *,glitch::core::rect<int> const&,glitch::video::SColor,glitch::video::SColor,glitch::video::SColor,glitch::video::SColor,glitch::core::rect<int> const*) =====
int __fastcall glitch::video::C2DDriver::draw2DRectangle(
        int a1,
        int a2,
        unsigned int a3,
        unsigned int a4,
        int a5,
        int a6,
        int a7)
{
  return glitch::video::C2DDriver::draw2DRectangle(
           *(glitch::video::C2DDriver **)(*(_DWORD *)(a1 + 212) + 20),
           a2,
           a3,
           a4,
           a5,
           a6,
           a7);
}


// ===== 59f79c glitch::video::C2DDriver::draw2DRectangle(glitch::video::SColor,glitch::core::rect<int> const&,glitch::core::rect<int> const*) =====
int __fastcall glitch::video::C2DDriver::draw2DRectangle(glitch::video::C2DDriver *a1, unsigned int a2, int a3, int a4)
{
  unsigned int v7; // r7
  char v8; // r4
  char v9; // r5
  char v10; // r6
  int v11; // r3
  _DWORD v13[4]; // [sp+10h] [bp-2Ch] BYREF
  _BYTE v14[16]; // [sp+20h] [bp-1Ch] BYREF
  glitch::video::CMaterial *v15; // [sp+30h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v16; // [sp+34h] [bp-8h] BYREF

  v7 = HIBYTE(a2);
  v8 = a2;
  v9 = BYTE1(a2);
  v10 = BYTE2(a2);
  v16 = nullptr;
  glitch::video::C2DDriver::set2DTexture(&v15, a1, &v16, 0);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v15);
  if ( v16 )
    glitch::IReferenceCounted::drop(v16);
  v11 = *((_DWORD *)a1 + 2);
  memset(v13, 0, sizeof(v13));
  v14[15] = v7;
  v14[14] = v10;
  v14[13] = v9;
  v14[12] = v8;
  v14[3] = v7;
  v14[2] = v10;
  v14[1] = v9;
  v14[0] = v8;
  v14[7] = v7;
  v14[6] = v10;
  v14[5] = v9;
  v14[4] = v8;
  v14[11] = v7;
  v14[10] = v10;
  v14[9] = v9;
  v14[8] = v8;
  return (*(int (__fastcall **)(int, int, _DWORD *, _BYTE *, int))(*(_DWORD *)v11 + 52))(v11, a3, v13, v14, a4);
}


// ===== 59f87c glitch::video::C2DDriver::draw2DRectangle(glitch::video::IVideoDriver *,glitch::video::SColor,glitch::core::rect<int> const&,glitch::core::rect<int> const*) =====
int __fastcall glitch::video::C2DDriver::draw2DRectangle(int a1, unsigned int a2, int a3, int a4)
{
  return glitch::video::C2DDriver::draw2DRectangle(
           *(glitch::video::C2DDriver **)(*(_DWORD *)(a1 + 212) + 20),
           a2,
           a3,
           a4);
}


// ===== 59f894 glitch::video::C2DDriver::draw2DImage(boost::intrusive_ptr<glitch::video::ITexture> const&,glitch::core::rect<int> const&,glitch::core::rect<int> const&,glitch::core::rect<int> const*,glitch::video::SColor const*,bool) =====
int __fastcall glitch::video::C2DDriver::draw2DImage(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5,
        int a6,
        unsigned __int8 a7)
{
  int v11; // r3
  _BYTE v12[16]; // [sp+Ch] [bp-18h] BYREF
  _BYTE v13[8]; // [sp+1Ch] [bp-8h] BYREF

  glitch::video::C2DDriver::set2DTexture(v13, a1, a2, a7);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v13);
  if ( a6 )
    return (*(int (__fastcall **)(_DWORD, int, int, int, int))(**(_DWORD **)(a1 + 8) + 52))(
             *(_DWORD *)(a1 + 8),
             a3,
             a4,
             a6,
             a5);
  v11 = *(_DWORD *)(a1 + 8);
  memset(v12, 255, sizeof(v12));
  return (*(int (__fastcall **)(int, int, int, _BYTE *, int))(*(_DWORD *)v11 + 52))(v11, a3, a4, v12, a5);
}


// ===== 59f970 glitch::video::C2DDriver::draw2DImage(glitch::video::IVideoDriver *,boost::intrusive_ptr<glitch::video::ITexture> const&,glitch::core::rect<int> const&,glitch::core::rect<int> const&,glitch::core::rect<int> const*,glitch::video::SColor const*,bool) =====
int __fastcall glitch::video::C2DDriver::draw2DImage(int a1)
{
  return glitch::video::C2DDriver::draw2DImage(*(_DWORD *)(*(_DWORD *)(a1 + 212) + 20));
}


// ===== 59f990 glitch::video::C2DDriver::draw2DImage(boost::intrusive_ptr<glitch::video::ITexture> const&,glitch::core::position2d<int> const&,glitch::core::rect<int> const&,glitch::core::rect<int> const*,glitch::video::SColor,bool) =====
int __fastcall glitch::video::C2DDriver::draw2DImage(
        glitch::video::C2DDriver *a1,
        _DWORD *a2,
        int *a3,
        _DWORD *a4,
        int a5,
        int a6,
        unsigned __int8 a7)
{
  int v10; // r1
  int v11; // r2
  int v12; // r3
  unsigned int v13; // r12
  _DWORD v15[4]; // [sp+Ch] [bp-28h] BYREF
  _DWORD v16[4]; // [sp+1Ch] [bp-18h] BYREF
  glitch::video::CMaterial *v17[2]; // [sp+2Ch] [bp-8h] BYREF

  glitch::video::C2DDriver::set2DTexture(v17, a1, a2, a7);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v17);
  v10 = *a3;
  v11 = a3[1];
  v12 = *((_DWORD *)a1 + 2);
  v13 = abs32(a4[2] - *a4) + *a3;
  v16[3] = abs32(a4[3] - a4[1]) + v11;
  v16[0] = v10;
  v16[1] = v11;
  v16[2] = v13;
  v15[3] = a6;
  v15[0] = a6;
  v15[1] = a6;
  v15[2] = a6;
  return (*(int (__fastcall **)(int, _DWORD *, _DWORD *, _DWORD *, int))(*(_DWORD *)v12 + 52))(v12, v16, a4, v15, a5);
}


// ===== 59fa80 glitch::video::C2DDriver::draw2DImage(glitch::video::IVideoDriver *,boost::intrusive_ptr<glitch::video::ITexture> const&,glitch::core::position2d<int> const&,glitch::core::rect<int> const&,glitch::core::rect<int> const*,glitch::video::SColor,bool) =====
int __fastcall glitch::video::C2DDriver::draw2DImage(
        int a1,
        _DWORD *a2,
        int *a3,
        _DWORD *a4,
        int a5,
        int a6,
        unsigned __int8 a7)
{
  return glitch::video::C2DDriver::draw2DImage(
           *(glitch::video::C2DDriver **)(*(_DWORD *)(a1 + 212) + 20),
           a2,
           a3,
           a4,
           a5,
           a6,
           a7);
}


// ===== 59fa94 glitch::video::C2DDriver::draw2DImage(boost::intrusive_ptr<glitch::video::ITexture> const&,glitch::core::position2d<int> const&,std::vector<glitch::core::rect<int>,glitch::core::SAllocator<glitch::core::rect<int>,(glitch::memory::E_MEMORY_HINT)0>> const&,std::vector const&<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>,int,glitch::core::rect<int> const*,glitch::video::SColor,bool) =====
int __fastcall glitch::video::C2DDriver::draw2DImage(
        int result,
        _DWORD *a2,
        int *a3,
        int *a4,
        int *a5,
        int a6,
        int a7,
        int a8,
        unsigned __int8 a9)
{
  int v9; // r2
  int v11; // r12
  int v12; // r4
  int v15; // r3
  unsigned int v16; // r4
  glitch::video::C2DDriver *v17; // r9
  int v18; // r1
  bool v19; // cf
  int v20[3]; // [sp+10h] [bp-Ch] BYREF

  v9 = *a3;
  v11 = *a5;
  v12 = a5[1];
  v20[1] = a3[1];
  v20[0] = v9;
  if ( (unsigned int)(v12 - v11) >> 2 )
  {
    v15 = *a4;
    v16 = 0;
    v17 = (glitch::video::C2DDriver *)result;
    do
    {
      glitch::video::C2DDriver::draw2DImage(v17, a2, v20, (_DWORD *)(v15 + 16 * *(_DWORD *)(v11 + 4 * v16)), a7, a8, a9);
      v11 = *a5;
      v15 = *a4;
      v18 = *(_DWORD *)(*a5 + 4 * v16++);
      v19 = v16 >= (a5[1] - *a5) >> 2;
      result = *(_DWORD *)(*a4 + 16 * v18 + 8) + v20[0] - *(_DWORD *)(*a4 + 16 * v18) + a6;
      v20[0] = result;
    }
    while ( !v19 );
  }
  return result;
}


// ===== 59fb58 glitch::video::C2DDriver::draw2DImage(glitch::video::IVideoDriver *,boost::intrusive_ptr<glitch::video::ITexture> const&,glitch::core::position2d<int> const&,std::vector<glitch::core::rect<int>,glitch::core::SAllocator<glitch::core::rect<int>,(glitch::memory::E_MEMORY_HINT)0>> const&,std::vector const&<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>,int,glitch::core::rect<int> const*,glitch::video::SColor,bool) =====
int __fastcall glitch::video::C2DDriver::draw2DImage(
        int a1,
        _DWORD *a2,
        int *a3,
        int *a4,
        int *a5,
        int a6,
        int a7,
        int a8,
        unsigned __int8 a9)
{
  return glitch::video::C2DDriver::draw2DImage(*(_DWORD *)(*(_DWORD *)(a1 + 212) + 20), a2, a3, a4, a5, a6, a7, a8, a9);
}


// ===== 59fb78 glitch::video::C2DDriver::draw2DImage(boost::intrusive_ptr<glitch::video::ITexture> const&,glitch::core::position2d<int> const&) =====
int __fastcall glitch::video::C2DDriver::draw2DImage(glitch::video::C2DDriver *a1, int *a2, int *a3)
{
  int v3; // lr
  int v4; // r4
  int v5; // lr
  _DWORD v7[5]; // [sp+14h] [bp-14h] BYREF

  v3 = *a2;
  v7[0] = 0;
  v7[1] = 0;
  v4 = *(_DWORD *)(v3 + 32);
  v5 = *(_DWORD *)(v3 + 36);
  v7[4] = -1;
  v7[3] = v5;
  v7[2] = v4;
  return glitch::video::C2DDriver::draw2DImage(a1, a2, a3, v7, 0, -1, 0);
}


// ===== 59fbd4 glitch::video::C2DDriver::draw2DImage(glitch::video::IVideoDriver *,boost::intrusive_ptr<glitch::video::ITexture> const&,glitch::core::position2d<int> const&) =====
int __fastcall glitch::video::C2DDriver::draw2DImage(int a1, int *a2, int *a3)
{
  return glitch::video::C2DDriver::draw2DImage(*(glitch::video::C2DDriver **)(*(_DWORD *)(a1 + 212) + 20), a2, a3);
}


// ===== 59fbe0 `global constructor keyed to'.._source_glitch_video_CLight.cpp =====
void `global constructor keyed to'.._source_glitch_video_CLight.cpp()
{
  dword_9F6904 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6900 = 1056964608;
}


// ===== 59fc00 glitch::video::CLight::setAbsoluteTransformation(glitch::core::CMatrix4<float> const&) =====
int __fastcall glitch::video::CLight::setAbsoluteTransformation(int a1, const void *a2)
{
  if ( *(_BYTE *)(a1 + 84) )
  {
    glitch::os::Printer::log("Can not set absolute transform on light attached to a transformation source", 3);
    return 0;
  }
  else
  {
    memcpy(*(void **)(a1 + 80), a2, 0x41u);
    return 1;
  }
}


// ===== 59fc40 glitch::video::CLight::CLight(glitch::video::CLight const&,glitch::video::STransformationSource **) =====
int __fastcall glitch::video::CLight::CLight(int a1, int a2, _DWORD *a3)
{
  _DWORD *v3; // r5
  int v4; // r3
  int v8; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int v12; // r1
  int v13; // r2
  int v14; // r3
  int v15; // r1
  int v16; // r2
  int v17; // r3
  int v18; // r3

  *(_DWORD *)a1 = 0;
  v3 = (_DWORD *)(a1 + 4);
  v4 = a2 + 4;
  v8 = *(_DWORD *)(a2 + 4);
  v9 = *(_DWORD *)(a2 + 8);
  v10 = *(_DWORD *)(v4 + 8);
  v11 = *(_DWORD *)(v4 + 12);
  *v3 = v8;
  v3[1] = v9;
  v3[2] = v10;
  v3[3] = v11;
  v12 = *(_DWORD *)(a2 + 24);
  v13 = *(_DWORD *)(a2 + 28);
  v14 = *(_DWORD *)(a2 + 32);
  *(_DWORD *)(a1 + 20) = *(_DWORD *)(a2 + 20);
  *(_DWORD *)(a1 + 24) = v12;
  *(_DWORD *)(a1 + 28) = v13;
  *(_DWORD *)(a1 + 32) = v14;
  v15 = *(_DWORD *)(a2 + 40);
  v16 = *(_DWORD *)(a2 + 44);
  v17 = *(_DWORD *)(a2 + 48);
  *(_DWORD *)(a1 + 36) = *(_DWORD *)(a2 + 36);
  *(_DWORD *)(a1 + 40) = v15;
  *(_DWORD *)(a1 + 44) = v16;
  *(_DWORD *)(a1 + 48) = v17;
  *(_DWORD *)(a1 + 52) = *(_DWORD *)(a2 + 52);
  *(_DWORD *)(a1 + 56) = *(_DWORD *)(a2 + 56);
  *(_DWORD *)(a1 + 60) = *(_DWORD *)(a2 + 60);
  *(_DWORD *)(a1 + 64) = *(_DWORD *)(a2 + 64);
  *(_DWORD *)(a1 + 68) = *(_DWORD *)(a2 + 68);
  *(_DWORD *)(a1 + 72) = *(_DWORD *)(a2 + 72);
  v18 = *(_DWORD *)(a2 + 76);
  *(_DWORD *)(a1 + 80) = 0;
  *(_BYTE *)(a1 + 84) = 1;
  *(_DWORD *)(a1 + 76) = v18;
  *(_WORD *)(a1 + 88) = *(_WORD *)(a2 + 88);
  *(_BYTE *)(a1 + 90) = *(_BYTE *)(a2 + 90);
  if ( a3 )
    *a3 = a1 + 80;
  else
    glitch::video::STransformationSource::detach((unsigned int *)(a1 + 80));
  return a1;
}


// ===== 59fd00 glitch::video::CLight::clone(glitch::video::STransformationSource **) =====
glitch::video::CLight *__fastcall glitch::video::CLight::clone(
        glitch::video::CLight *this,
        glitch::video::STransformationSource **a2,
        _DWORD *a3)
{
  int *v6; // r4
  int v7; // r3
  glitch::video::CLight *result; // r0

  v6 = (int *)operator new(0x5Cu, 0);
  glitch::video::CLight::CLight((int)v6, (int)a2, a3);
  *(_DWORD *)this = v6;
  if ( v6 )
    v7 = *v6;
  result = this;
  if ( v6 )
    *v6 = v7 + 1;
  return result;
}


// ===== 59fd48 glitch::video::CLight::CLight(glitch::video::CLight const&,glitch::video::STransformationSource **) =====
glitch::video::CLight *__fastcall glitch::video::CLight::CLight(
        glitch::video::CLight *this,
        const glitch::video::CLight *a2,
        glitch::video::STransformationSource **a3)
{
  _DWORD *v3; // r5
  char *v4; // r3
  int v8; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int v12; // r1
  int v13; // r2
  int v14; // r3
  int v15; // r1
  int v16; // r2
  int v17; // r3
  int v18; // r3

  *(_DWORD *)this = 0;
  v3 = (_DWORD *)((char *)this + 4);
  v4 = (char *)a2 + 4;
  v8 = *((_DWORD *)a2 + 1);
  v9 = *((_DWORD *)a2 + 2);
  v10 = *((_DWORD *)v4 + 2);
  v11 = *((_DWORD *)v4 + 3);
  *v3 = v8;
  v3[1] = v9;
  v3[2] = v10;
  v3[3] = v11;
  v12 = *((_DWORD *)a2 + 6);
  v13 = *((_DWORD *)a2 + 7);
  v14 = *((_DWORD *)a2 + 8);
  *((_DWORD *)this + 5) = *((_DWORD *)a2 + 5);
  *((_DWORD *)this + 6) = v12;
  *((_DWORD *)this + 7) = v13;
  *((_DWORD *)this + 8) = v14;
  v15 = *((_DWORD *)a2 + 10);
  v16 = *((_DWORD *)a2 + 11);
  v17 = *((_DWORD *)a2 + 12);
  *((_DWORD *)this + 9) = *((_DWORD *)a2 + 9);
  *((_DWORD *)this + 10) = v15;
  *((_DWORD *)this + 11) = v16;
  *((_DWORD *)this + 12) = v17;
  *((_DWORD *)this + 13) = *((_DWORD *)a2 + 13);
  *((_DWORD *)this + 14) = *((_DWORD *)a2 + 14);
  *((_DWORD *)this + 15) = *((_DWORD *)a2 + 15);
  *((_DWORD *)this + 16) = *((_DWORD *)a2 + 16);
  *((_DWORD *)this + 17) = *((_DWORD *)a2 + 17);
  *((_DWORD *)this + 18) = *((_DWORD *)a2 + 18);
  v18 = *((_DWORD *)a2 + 19);
  *((_DWORD *)this + 20) = 0;
  *((_BYTE *)this + 84) = 1;
  *((_DWORD *)this + 19) = v18;
  *((_WORD *)this + 44) = *((_WORD *)a2 + 44);
  *((_BYTE *)this + 90) = *((_BYTE *)a2 + 90);
  if ( a3 )
    *a3 = (glitch::video::CLight *)((char *)this + 80);
  else
    glitch::video::STransformationSource::detach((unsigned int *)this + 20);
  return this;
}


// ===== 59fe08 glitch::video::CLight::CLight(glitch::video::STransformationSource **) =====
glitch::video::CLight *__fastcall glitch::video::CLight::CLight(
        glitch::video::CLight *this,
        glitch::video::STransformationSource **a2)
{
  int v3; // r3

  *((_DWORD *)this + 16) = 2139095039;
  v3 = 1065353216;
  *((_DWORD *)this + 13) = 1065353216;
  *((_DWORD *)this + 18) = 1110704128;
  *((_DWORD *)this + 4) = 1065353216;
  *((_DWORD *)this + 5) = 1065353216;
  *((_DWORD *)this + 6) = 1065353216;
  *((_DWORD *)this + 7) = 1065353216;
  *((_DWORD *)this + 8) = 1065353216;
  *((_DWORD *)this + 9) = 1065353216;
  *((_DWORD *)this + 10) = 1065353216;
  *((_DWORD *)this + 11) = 1065353216;
  *((_DWORD *)this + 12) = 1065353216;
  if ( a2 )
    v3 = (int)this + 80;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 19) = 0x40000000;
  *((_WORD *)this + 44) = 0;
  *((_BYTE *)this + 90) = 1;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_BYTE *)this + 84) = 1;
  if ( a2 )
    *a2 = (glitch::video::STransformationSource *)v3;
  else
    glitch::video::STransformationSource::detach((unsigned int *)this + 20);
  return this;
}


// ===== 59feb8 glitch::video::CLight::allocate(glitch::video::STransformationSource **) =====
glitch::video::CLight *__fastcall glitch::video::CLight::allocate(
        glitch::video::CLight *this,
        glitch::video::STransformationSource **a2)
{
  glitch::video::CLight *v4; // r4
  int v5; // r3
  glitch::video::CLight *result; // r0

  v4 = (glitch::video::CLight *)operator new(0x5Cu, 0);
  glitch::video::CLight::CLight(v4, a2);
  *(_DWORD *)this = v4;
  if ( v4 )
    v5 = *(_DWORD *)v4;
  result = this;
  if ( v4 )
    *(_DWORD *)v4 = v5 + 1;
  return result;
}


// ===== 59fef8 glitch::video::CLight::CLight(glitch::video::STransformationSource **) =====
glitch::video::CLight *__fastcall glitch::video::CLight::CLight(
        glitch::video::CLight *this,
        glitch::video::STransformationSource **a2)
{
  int v3; // r3

  *((_DWORD *)this + 16) = 2139095039;
  v3 = 1065353216;
  *((_DWORD *)this + 13) = 1065353216;
  *((_DWORD *)this + 18) = 1110704128;
  *((_DWORD *)this + 4) = 1065353216;
  *((_DWORD *)this + 5) = 1065353216;
  *((_DWORD *)this + 6) = 1065353216;
  *((_DWORD *)this + 7) = 1065353216;
  *((_DWORD *)this + 8) = 1065353216;
  *((_DWORD *)this + 9) = 1065353216;
  *((_DWORD *)this + 10) = 1065353216;
  *((_DWORD *)this + 11) = 1065353216;
  *((_DWORD *)this + 12) = 1065353216;
  if ( a2 )
    v3 = (int)this + 80;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 19) = 0x40000000;
  *((_WORD *)this + 44) = 0;
  *((_BYTE *)this + 90) = 1;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_BYTE *)this + 84) = 1;
  if ( a2 )
    *a2 = (glitch::video::STransformationSource *)v3;
  else
    glitch::video::STransformationSource::detach((unsigned int *)this + 20);
  return this;
}


// ===== 59ffa8 glitch::video::CLight::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::video::CLight::serializeAttributes(int a1, int a2)
{
  int v4; // r7
  int StringsInternal; // r0

  v4 = *(unsigned __int16 *)(a1 + 88);
  StringsInternal = glitch::video::getStringsInternal(0);
  (*(void (__fastcall **)(int, char *, int, int, _DWORD))(*(_DWORD *)a2 + 244))(a2, "Type", v4, StringsInternal, 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD))(*(_DWORD *)a2 + 304))(
    a2,
    "AmbientColor",
    *(_DWORD *)(a1 + 4),
    *(_DWORD *)(a1 + 8),
    *(_DWORD *)(a1 + 12),
    *(_DWORD *)(a1 + 16),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD))(*(_DWORD *)a2 + 304))(
    a2,
    "DiffuseColor",
    *(_DWORD *)(a1 + 20),
    *(_DWORD *)(a1 + 24),
    *(_DWORD *)(a1 + 28),
    *(_DWORD *)(a1 + 32),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD))(*(_DWORD *)a2 + 304))(
    a2,
    "SpecularColor",
    *(_DWORD *)(a1 + 36),
    *(_DWORD *)(a1 + 40),
    *(_DWORD *)(a1 + 44),
    *(_DWORD *)(a1 + 48),
    0);
  (*(void (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 424))(a2, "Attenuation", a1 + 52, 0);
  (*(void (__fastcall **)(int, char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "Radius", *(_DWORD *)(a1 + 64), 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(
    a2,
    "InnerConeAngle",
    *(_DWORD *)(a1 + 68),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(
    a2,
    "OuterConeAngle",
    *(_DWORD *)(a1 + 72),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(
    a2,
    "Falloff",
    *(_DWORD *)(a1 + 76),
    0);
  return (*(int (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
           a2,
           "CastShadows",
           *(unsigned __int8 *)(a1 + 90),
           0);
}


// ===== 5a015c glitch::video::CLight::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::video::CLight::deserializeAttributes(int a1, int a2)
{
  int (__fastcall *v4)(int, char *, int); // r5
  int StringsInternal; // r0
  int v6; // r1
  int v7; // r2
  int v8; // r3
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int v12; // r1
  int v13; // r2
  int v14; // r3
  int v15; // r2
  int v16; // r3
  int result; // r0
  int v18; // [sp+0h] [bp-20h] BYREF
  int v19; // [sp+4h] [bp-1Ch]
  int v20; // [sp+8h] [bp-18h]
  int v21; // [sp+Ch] [bp-14h]
  _DWORD v22[3]; // [sp+14h] [bp-Ch] BYREF

  v4 = *(int (__fastcall **)(int, char *, int))(*(_DWORD *)a2 + 256);
  StringsInternal = glitch::video::getStringsInternal(0);
  *(_WORD *)(a1 + 88) = v4(a2, "Type", StringsInternal);
  (*(void (__fastcall **)(int *, int, const char *))(*(_DWORD *)a2 + 316))(&v18, a2, "AmbientColor");
  v6 = v19;
  v7 = v20;
  v8 = v21;
  *(_DWORD *)(a1 + 4) = v18;
  *(_DWORD *)(a1 + 8) = v6;
  *(_DWORD *)(a1 + 12) = v7;
  *(_DWORD *)(a1 + 16) = v8;
  (*(void (__fastcall **)(int *, int, const char *))(*(_DWORD *)a2 + 316))(&v18, a2, "DiffuseColor");
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *(_DWORD *)(a1 + 20) = v18;
  *(_DWORD *)(a1 + 24) = v9;
  *(_DWORD *)(a1 + 28) = v10;
  *(_DWORD *)(a1 + 32) = v11;
  (*(void (__fastcall **)(int *, int, const char *))(*(_DWORD *)a2 + 316))(&v18, a2, "SpecularColor");
  v12 = v19;
  v13 = v20;
  v14 = v21;
  *(_DWORD *)(a1 + 36) = v18;
  *(_DWORD *)(a1 + 40) = v12;
  *(_DWORD *)(a1 + 44) = v13;
  *(_DWORD *)(a1 + 48) = v14;
  (*(void (__fastcall **)(_DWORD *, int, const char *))(*(_DWORD *)a2 + 436))(v22, a2, "Attenuation");
  v15 = v22[1];
  v16 = v22[2];
  *(_DWORD *)(a1 + 52) = v22[0];
  *(_DWORD *)(a1 + 56) = v15;
  *(_DWORD *)(a1 + 60) = v16;
  *(_DWORD *)(a1 + 64) = (*(int (__fastcall **)(int, char *))(*(_DWORD *)a2 + 112))(a2, "Radius");
  *(_DWORD *)(a1 + 68) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 112))(a2, "InnerConeAngle");
  *(_DWORD *)(a1 + 72) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 112))(a2, "OuterConeAngle");
  *(_DWORD *)(a1 + 76) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 112))(a2, "Falloff");
  result = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "CastShadows");
  *(_BYTE *)(a1 + 90) = result;
  return result;
}


// ===== 5a0300 glitch::video::CPrimitiveStream::getPrimitiveCount(void) =====
unsigned int __fastcall glitch::video::CPrimitiveStream::getPrimitiveCount(glitch::video::CPrimitiveStream *this)
{
  unsigned int result; // r0

  switch ( *((_WORD *)this + 11) )
  {
    case 0:
    case 2:
      result = *((_DWORD *)this + 2);
      break;
    case 1:
      result = (*((_DWORD *)this + 2) - 1) & ~((*((_DWORD *)this + 2) - 1) >> 31);
      break;
    case 3:
      result = *((_DWORD *)this + 2) >> 1;
      break;
    case 4:
    case 5:
      result = (*((_DWORD *)this + 2) - 2) & ~((*((_DWORD *)this + 2) - 2) >> 31);
      break;
    case 6:
      result = *((_DWORD *)this + 2) / 3u;
      break;
    case 7:
      result = ((*((_DWORD *)this + 2) - 2) / 2) & ~(((*((_DWORD *)this + 2) - 2) / 2) >> 31);
      break;
    case 8:
      result = *((_DWORD *)this + 2) >> 2;
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 5a03ac `global constructor keyed to'.._source_glitch_video_CPrimitiveStream.cpp =====
void `global constructor keyed to'.._source_glitch_video_CPrimitiveStream.cpp()
{
  dword_9F6910 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F690C = 1056964608;
}


// ===== 5a03cc glitch::io::IAttributes::getEnum<glitch::video::E_INDEX_TYPE>(int) =====
int __fastcall glitch::io::IAttributes::getEnum<glitch::video::E_INDEX_TYPE>(int a1, int a2)
{
  int (__fastcall *v4)(int, int, int); // r4
  int StringsInternal; // r0

  v4 = *(int (__fastcall **)(int, int, int))(*(_DWORD *)a1 + 260);
  StringsInternal = glitch::video::getStringsInternal(0);
  return v4(a1, a2, StringsInternal);
}


// ===== 5a03fc glitch::video::CPrimitiveStream::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::video::CPrimitiveStream::deserializeAttributes(int *a1, int a2)
{
  int (__fastcall *v4)(int, const char *, int); // r6
  int StringsInternal; // r0
  int result; // r0
  int v7; // r3
  int v8; // r1
  int v9; // r1

  v4 = *(int (__fastcall **)(int, const char *, int))(*(_DWORD *)a2 + 256);
  StringsInternal = glitch::video::getStringsInternal(0);
  *((_WORD *)a1 + 11) = v4(a2, "PrimitiveType", StringsInternal);
  a1[2] = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 88))(a2, "IndexCount");
  result = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 88))(a2, "VertexStart");
  v7 = *a1;
  a1[3] = result;
  if ( v7 )
  {
    v8 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 40))(a2, "IndexType");
    if ( v8 >= 0 )
      *((_WORD *)a1 + 10) = glitch::io::IAttributes::getEnum<glitch::video::E_INDEX_TYPE>(a2, v8);
    v9 = (*(int (__fastcall **)(int, char *))(*(_DWORD *)a2 + 40))(a2, "Offset");
    if ( v9 >= 0 )
      a1[1] = (*(int (__fastcall **)(int, int))(*(_DWORD *)a2 + 92))(a2, v9);
    result = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 40))(a2, "VertexEnd");
    if ( result >= 0 )
    {
      result = (*(int (__fastcall **)(int, int))(*(_DWORD *)a2 + 92))(a2, result);
      a1[4] = result;
    }
  }
  return result;
}


// ===== 5a0524 glitch::video::CPrimitiveStream::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::video::CPrimitiveStream::serializeAttributes(glitch::video::CPrimitiveStream *a1, int a2)
{
  int v4; // r7
  int StringsInternal; // r0
  int v6; // r7
  int v7; // r0
  void (__fastcall *v8)(int, const char *, unsigned int, int); // r7
  unsigned int PrimitiveCount; // r0
  glitch::video::CPrimitiveStream *v11; // r0
  int (__fastcall *v12)(int, const char *, unsigned int, int); // r5
  unsigned int v13; // r0

  v4 = *((unsigned __int16 *)a1 + 11);
  StringsInternal = glitch::video::getStringsInternal(0);
  (*(void (__fastcall **)(int, const char *, int, int, _DWORD))(*(_DWORD *)a2 + 244))(
    a2,
    "PrimitiveType",
    v4,
    StringsInternal,
    0);
  if ( *(_DWORD *)a1 )
  {
    v6 = *((unsigned __int16 *)a1 + 10);
    v7 = glitch::video::getStringsInternal(0);
    (*(void (__fastcall **)(int, const char *, int, int, _DWORD))(*(_DWORD *)a2 + 244))(a2, "IndexType", v6, v7, 0);
    (*(void (__fastcall **)(int, char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(a2, "Offset", *((_DWORD *)a1 + 1), 0);
    (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
      a2,
      "IndexCount",
      *((_DWORD *)a1 + 2),
      0);
    v8 = *(void (__fastcall **)(int, const char *, unsigned int, int))(*(_DWORD *)a2 + 76);
    PrimitiveCount = glitch::video::CPrimitiveStream::getPrimitiveCount(a1);
    v8(a2, "PrimitiveCount", PrimitiveCount, 1);
    (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
      a2,
      "VertexStart",
      *((_DWORD *)a1 + 3),
      0);
    return (*(int (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
             a2,
             "VertexEnd",
             *((_DWORD *)a1 + 4),
             0);
  }
  else
  {
    (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
      a2,
      "VertexStart",
      *((_DWORD *)a1 + 3),
      *(_DWORD *)a1);
    (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
      a2,
      "IndexCount",
      *((_DWORD *)a1 + 2),
      0);
    v11 = a1;
    v12 = *(int (__fastcall **)(int, const char *, unsigned int, int))(*(_DWORD *)a2 + 76);
    v13 = glitch::video::CPrimitiveStream::getPrimitiveCount(v11);
    return v12(a2, "PrimitiveCount", v13, 1);
  }
}


// ===== 5a06e8 `global constructor keyed to'.._source_glitch_video_CVertexAttributeMap.cpp =====
void `global constructor keyed to'.._source_glitch_video_CVertexAttributeMap.cpp()
{
  dword_9F691C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6918 = 1056964608;
}


// ===== 5a0708 glitch::video::CVertexAttributeMap::set(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&,uint,uchar const*,bool) =====
int __fastcall glitch::video::CVertexAttributeMap::set(int a1, int *a2, int a3, unsigned __int8 *a4, char a5)
{
  unsigned __int8 *v5; // r7
  unsigned __int8 *v7; // r4
  int result; // r0
  int v10; // r5

  v5 = &a4[2 * a3];
  v7 = a4;
  result = *a2;
  if ( a4 != v5 )
  {
    v10 = result + 20;
    while ( 1 )
    {
      result = glitch::video::CVertexStreams::getStream(result, v7[1], v10, *(_DWORD *)(result + 16));
      if ( result != *(_DWORD *)(*a2 + 16) )
      {
        if ( a5 )
          v10 = result;
        *(_BYTE *)(a1 + *v7 + 4) = (result - (*a2 + 20)) >> 4;
      }
      v7 += 2;
      if ( v5 == v7 )
        break;
      result = *a2;
    }
  }
  return result;
}


// ===== 5a0788 glitch::video::CVertexAttributeMap::operator=(glitch::video::CVertexAttributeMap const&) =====
int __fastcall glitch::video::CVertexAttributeMap::operator=(int a1, int a2)
{
  _DWORD *v2; // r12
  _DWORD *v3; // r5
  int v5; // r0
  int v6; // r1
  int v7; // r2
  int v8; // r3
  int v9; // r1
  int v10; // r2
  int v11; // r3

  v2 = (_DWORD *)(a1 + 4);
  v3 = (_DWORD *)(a2 + 4);
  v5 = *(_DWORD *)(a2 + 4);
  v6 = *(_DWORD *)(a2 + 8);
  v7 = v3[2];
  v8 = v3[3];
  v3 += 4;
  *v2 = v5;
  v2[1] = v6;
  v2[2] = v7;
  v2[3] = v8;
  v2 += 4;
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  *v2 = *v3;
  v2[1] = v9;
  v2[2] = v10;
  *((_WORD *)v2 + 6) = v11;
  return a1;
}


// ===== 5a07bc glitch::video::CVertexAttributeMap::CVertexAttributeMap(glitch::video::CVertexAttributeMap const&) =====
_DWORD *__fastcall glitch::video::CVertexAttributeMap::CVertexAttributeMap(_DWORD *a1, int a2)
{
  *a1 = 0;
  glitch::video::CVertexAttributeMap::operator=((int)a1, a2);
  return a1;
}


// ===== 5a07d8 glitch::video::CVertexAttributeMap::CVertexAttributeMap(glitch::video::CVertexAttributeMap const&) =====
_DWORD *__fastcall glitch::video::CVertexAttributeMap::CVertexAttributeMap(_DWORD *a1, int a2)
{
  *a1 = 0;
  glitch::video::CVertexAttributeMap::operator=((int)a1, a2);
  return a1;
}


// ===== 5a07f4 glitch::video::CVertexAttributeMap::CVertexAttributeMap(uchar const*) =====
glitch::video::CVertexAttributeMap *__fastcall glitch::video::CVertexAttributeMap::CVertexAttributeMap(
        glitch::video::CVertexAttributeMap *this,
        const unsigned __int8 *a2)
{
  *(_DWORD *)this = 0;
  memcpy((char *)this + 4, a2, 0x1Eu);
  return this;
}


// ===== 5a0814 glitch::video::CVertexAttributeMap::CVertexAttributeMap(uchar const*) =====
glitch::video::CVertexAttributeMap *__fastcall glitch::video::CVertexAttributeMap::CVertexAttributeMap(
        glitch::video::CVertexAttributeMap *this,
        const unsigned __int8 *a2)
{
  *(_DWORD *)this = 0;
  memcpy((char *)this + 4, a2, 0x1Eu);
  return this;
}


// ===== 5a0834 glitch::video::CVertexAttributeMap::CVertexAttributeMap(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&,uint,uchar const*,bool) =====
_DWORD *__fastcall glitch::video::CVertexAttributeMap::CVertexAttributeMap(
        _DWORD *a1,
        int *a2,
        int a3,
        unsigned __int8 *a4,
        char a5)
{
  *a1 = 0;
  LC_API_MEMSET_0(a1 + 1, 255, 0x1Eu);
  if ( *a2 )
    glitch::video::CVertexAttributeMap::set((int)a1, a2, a3, a4, a5);
  return a1;
}


// ===== 5a0894 glitch::video::CVertexAttributeMap::CVertexAttributeMap(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&,uint,uchar const*,bool) =====
_DWORD *__fastcall glitch::video::CVertexAttributeMap::CVertexAttributeMap(
        _DWORD *a1,
        int *a2,
        int a3,
        unsigned __int8 *a4,
        char a5)
{
  *a1 = 0;
  LC_API_MEMSET_0(a1 + 1, 255, 0x1Eu);
  if ( *a2 )
    glitch::video::CVertexAttributeMap::set((int)a1, a2, a3, a4, a5);
  return a1;
}


// ===== 5a08f4 glitch::video::makeDefaultAttributeMap(glitch::video::CVertexStreams const*,uchar *) =====
void *__fastcall glitch::video::makeDefaultAttributeMap(int a1, void *a2)
{
  int v4; // r3
  unsigned int v5; // r0
  int v6; // r3
  int v7; // r1

  LC_API_MEMSET_0(a2, 255, 0x1Eu);
  v4 = *(_DWORD *)(a1 + 16);
  if ( v4 != a1 + 20 )
  {
    v5 = ((v4 - (a1 + 36)) & 0xFFFFFFF0) + 16;
    v6 = 0;
    do
    {
      v7 = v6 >> 4;
      v6 += 16;
      *((_BYTE *)a2 + *(unsigned __int16 *)(a1 + 28)) = v7;
      a1 += 16;
    }
    while ( v6 != v5 );
  }
  return a2;
}


// ===== 5a0958 glitch::video::CVertexAttributeMap::CVertexAttributeMap(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&) =====
_DWORD *__fastcall glitch::video::CVertexAttributeMap::CVertexAttributeMap(_DWORD *a1, int *a2)
{
  *a1 = 0;
  if ( *a2 )
    glitch::video::makeDefaultAttributeMap(*a2, a1 + 1);
  else
    LC_API_MEMSET_0(a1 + 1, 255, 0x1Eu);
  return a1;
}


// ===== 5a099c glitch::video::CVertexAttributeMap::CVertexAttributeMap(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&) =====
_DWORD *__fastcall glitch::video::CVertexAttributeMap::CVertexAttributeMap(_DWORD *a1, int *a2)
{
  *a1 = 0;
  if ( *a2 )
    glitch::video::makeDefaultAttributeMap(*a2, a1 + 1);
  else
    LC_API_MEMSET_0(a1 + 1, 255, 0x1Eu);
  return a1;
}


// ===== 5a09e0 glitch::video::CVertexStreams::~CVertexStreams() =====
void __fastcall glitch::video::CVertexStreams::~CVertexStreams(glitch::video::CVertexStreams *this)
{
  glitch::IReferenceCounted **v1; // r5
  glitch::IReferenceCounted **v2; // r4
  glitch::IReferenceCounted *v3; // r0

  v1 = *((glitch::IReferenceCounted ***)this + 4);
  v2 = (glitch::IReferenceCounted **)((char *)this + 20);
  while ( v2 != v1 )
  {
    while ( 1 )
    {
      v3 = *v2;
      v2 += 4;
      if ( !v3 )
        break;
      glitch::IReferenceCounted::drop(v3);
      if ( v2 == v1 )
        return;
    }
  }
}


// ===== 5a0a1c glitch::video::CVertexStreams::~CVertexStreams() =====
void __fastcall glitch::video::CVertexStreams::~CVertexStreams(glitch::video::CVertexStreams *this)
{
  glitch::IReferenceCounted **v1; // r5
  glitch::IReferenceCounted **v2; // r4
  glitch::IReferenceCounted *v3; // r0

  v1 = *((glitch::IReferenceCounted ***)this + 4);
  v2 = (glitch::IReferenceCounted **)((char *)this + 20);
  while ( v2 != v1 )
  {
    while ( 1 )
    {
      v3 = *v2;
      v2 += 4;
      if ( !v3 )
        break;
      glitch::IReferenceCounted::drop(v3);
      if ( v2 == v1 )
        return;
    }
  }
}


// ===== 5a0a58 glitch::video::CVertexStreams::getActiveAttributeMask(void) =====
int __fastcall glitch::video::CVertexStreams::getActiveAttributeMask(glitch::video::CVertexStreams *this)
{
  glitch::video::CVertexStreams *v1; // r2
  int result; // r0
  glitch::video::CVertexStreams *v3; // r3
  glitch::video::CVertexStreams *v4; // r1
  int v5; // r2
  bool v6; // zf

  v1 = *((glitch::video::CVertexStreams **)this + 4);
  if ( v1 == (glitch::video::CVertexStreams *)((char *)this + 20) )
    return 0;
  v3 = this;
  v4 = (glitch::video::CVertexStreams *)((char *)this
                                       + ((v1 - (glitch::video::CVertexStreams *)((char *)this + 36)) & 0xFFFFFFF0)
                                       + 16);
  result = 0;
  do
  {
    v5 = *((_DWORD *)v3 + 5);
    v6 = v5 == 0;
    if ( v5 )
      LOWORD(v5) = *((_WORD *)v3 + 14);
    v3 = (glitch::video::CVertexStreams *)((char *)v3 + 16);
    if ( !v6 )
      result |= 1 << v5;
  }
  while ( v3 != v4 );
  return result;
}


// ===== 5a0aac glitch::video::CVertexStreams::getStream(glitch::video::E_VERTEX_ATTRIBUTE,glitch::video::SVertexStream const*,glitch::video::SVertexStream const*) =====
int __fastcall glitch::video::CVertexStreams::getStream(int a1, int a2, int a3, int a4)
{
  int v4; // r12

  if ( a3 == a4 )
  {
LABEL_7:
    if ( a2 != *(unsigned __int16 *)(a3 + 8) )
      return *(_DWORD *)(a1 + 16);
    return a3;
  }
  else
  {
    while ( 1 )
    {
      v4 = *(unsigned __int16 *)(a3 + 8);
      if ( v4 >= a2 )
        break;
      a3 += 16;
      if ( a4 == a3 )
        goto LABEL_7;
    }
    if ( a2 != v4 )
      return *(_DWORD *)(a1 + 16);
    return a3;
  }
}


// ===== 5a0af0 glitch::video::CVertexStreams::getStream(glitch::video::E_VERTEX_ATTRIBUTE,glitch::video::SVertexStream *,glitch::video::SVertexStream *) =====
int __fastcall glitch::video::CVertexStreams::getStream(int a1, int a2, int a3, int a4)
{
  int v4; // r12

  if ( a3 == a4 )
  {
LABEL_7:
    if ( a2 != *(unsigned __int16 *)(a3 + 8) )
      return *(_DWORD *)(a1 + 16);
    return a3;
  }
  else
  {
    while ( 1 )
    {
      v4 = *(unsigned __int16 *)(a3 + 8);
      if ( v4 >= a2 )
        break;
      a3 += 16;
      if ( a4 == a3 )
        goto LABEL_7;
    }
    if ( a2 != v4 )
      return *(_DWORD *)(a1 + 16);
    return a3;
  }
}


// ===== 5a0b34 glitch::video::CVertexStreams::addOffset(int) =====
int __fastcall glitch::video::CVertexStreams::addOffset(int this, int a2)
{
  int v2; // r3
  unsigned int v3; // r3

  v2 = *(_DWORD *)(this + 16);
  if ( v2 != this + 20 )
  {
    v3 = this + 16 + ((v2 - (this + 36)) & 0xFFFFFFF0);
    do
    {
      *(_DWORD *)(this + 24) += a2;
      this += 16;
    }
    while ( this != v3 );
  }
  return this;
}


// ===== 5a0b74 glitch::video::CVertexStreams::isHomogeneous(uint) =====
int __fastcall glitch::video::CVertexStreams::isHomogeneous(glitch::video::CVertexStreams *this, unsigned int a2)
{
  unsigned int v3; // r5
  int v4; // r4
  char *v5; // r2
  int v6; // r10
  _DWORD *Stream; // r0

  v3 = a2 & *((_DWORD *)this + 1);
  if ( !v3 )
    return 1;
  v4 = 0;
  v5 = (char *)this + 20;
  v6 = 0;
  while ( 1 )
  {
    if ( ((1 << v4) & v3) == 0 )
      goto LABEL_3;
    Stream = (_DWORD *)glitch::video::CVertexStreams::getStream((int)this, v4, (int)v5, *((_DWORD *)this + 4));
    if ( !v6 )
    {
      v6 = *Stream;
      goto LABEL_8;
    }
    if ( v6 != *Stream )
      return 0;
LABEL_8:
    v3 &= ~(1 << v4);
    v5 = (char *)(Stream + 4);
    if ( !v3 )
      return 1;
LABEL_3:
    ++v4;
  }
}


// ===== 5a0bfc glitch::video::CVertexStreams::updateHomogeneityInternal(bool) =====
int __fastcall glitch::video::CVertexStreams::updateHomogeneityInternal(int this, int a2)
{
  int *v2; // r12
  int *v3; // r3
  int v4; // r1
  int v5; // r2
  bool v6; // zf

  if ( !a2 )
  {
    v2 = *(int **)(this + 16);
    v3 = (int *)(this + 36);
    v4 = *(_DWORD *)(this + 20);
    if ( (int *)(this + 36) == v2 )
    {
LABEL_8:
      *(_WORD *)(this + 14) |= 1u;
      return this;
    }
    while ( 1 )
    {
      v5 = *v3;
      v3 += 4;
      v6 = v4 == 0;
      if ( v4 )
        v6 = v5 == 0;
      if ( !v6 && v4 != v5 )
        break;
      v4 = v5;
      if ( v3 == v2 )
        goto LABEL_8;
    }
  }
  *(_WORD *)(this + 14) &= ~1u;
  return this;
}


// ===== 5a0c60 glitch::video::CVertexStreams::setStreams(boost::intrusive_ptr<glitch::video::CVertexStreams> const&,uint,int,bool) =====
int __fastcall glitch::video::CVertexStreams::setStreams(
        glitch::video::CVertexStreams *this,
        int *a2,
        int a3,
        int a4,
        unsigned __int8 a5)
{
  int v6; // r1
  int v8; // r8
  char *v9; // r2
  int v10; // r7
  int i; // r4
  int Stream; // r5
  _DWORD *v13; // r0
  int v14; // r1
  int v15; // r2
  _DWORD *v16; // r3
  glitch::IReferenceCounted *v17; // r0
  int v18; // r1
  _DWORD *v20; // [sp+0h] [bp-14h]
  int v21; // [sp+4h] [bp-10h]

  v6 = *a2;
  v8 = *((_DWORD *)this + 1) & *(_DWORD *)(v6 + 4) & a3;
  if ( v8 )
  {
    v21 = v6 + 20;
    v9 = (char *)this + 20;
    v10 = v8;
    for ( i = 0; ; ++i )
    {
      if ( ((1 << i) & v8) != 0 )
      {
        Stream = glitch::video::CVertexStreams::getStream((int)this, i, (int)v9, *((_DWORD *)this + 4));
        v13 = (_DWORD *)glitch::video::CVertexStreams::getStream(*a2, i, v21, *(_DWORD *)(*a2 + 16));
        v15 = *v13;
        v16 = v13;
        v21 = (int)(v13 + 4);
        if ( *v13 )
          v14 = *(_DWORD *)(v15 + 4);
        v10 &= ~(1 << i);
        if ( v15 )
          *(_DWORD *)(v15 + 4) = v14 + 1;
        v17 = *(glitch::IReferenceCounted **)Stream;
        *(_DWORD *)Stream = v15;
        if ( v17 )
        {
          v20 = v16;
          glitch::IReferenceCounted::drop(v17);
          v16 = v20;
        }
        v18 = v16[1];
        v9 = (char *)(Stream + 16);
        *(_DWORD *)(Stream + 4) = v18;
        *(_WORD *)(Stream + 10) = *((_WORD *)v16 + 5);
        *(_WORD *)(Stream + 12) = *((_WORD *)v16 + 6);
        *(_WORD *)(Stream + 14) = *((_WORD *)v16 + 7);
        *(_DWORD *)(Stream + 4) = a4 + v18;
        if ( !v10 )
          break;
      }
    }
    glitch::video::CVertexStreams::updateHomogeneityInternal((int)this, a5);
  }
  return v8;
}


// ===== 5a0d80 glitch::video::CVertexStreams::updateStatesInternal(bool) =====
int __fastcall glitch::video::CVertexStreams::updateStatesInternal(int this, int a2)
{
  int v2; // r3
  int v3; // r2
  unsigned int v4; // r3
  unsigned int v5; // r4
  int v6; // r1
  int v7; // r2
  int v8; // r3

  v2 = *(unsigned __int16 *)(this + 14);
  v3 = *(_DWORD *)(this + 16);
  if ( a2 )
    v4 = (v2 & 0xFFFFFFFE) << 16;
  else
    v4 = v2 | 1;
  if ( a2 )
    v4 >>= 16;
  *(_WORD *)(this + 14) = v4;
  *(_WORD *)(this + 14) = v4 | 2;
  if ( v3 != this + 20 )
  {
    v5 = this + 16 + ((v3 - (this + 36)) & 0xFFFFFFF0);
    v6 = 0;
    v7 = this;
    do
    {
      v8 = *(_DWORD *)(v7 + 20);
      v7 += 16;
      if ( v8 )
      {
        if ( !*(_DWORD *)(v8 + 8) )
          *(_WORD *)(this + 14) &= ~2u;
        if ( v6 )
        {
          if ( v6 != v8 )
            *(_WORD *)(this + 14) &= ~1u;
        }
      }
      v6 = v8;
    }
    while ( v7 != v5 );
  }
  return this;
}


// ===== 5a0e24 glitch::video::CVertexStreams::updateStates(bool) =====
// attributes: thunk
int __fastcall glitch::video::CVertexStreams::updateStates(int this, int a2)
{
  return glitch::video::CVertexStreams::updateStatesInternal(this, a2);
}


// ===== 5a0e28 glitch::video::SVertexStream::SMapBuffer<void const>::reset(void) =====
_DWORD **__fastcall glitch::video::SVertexStream::SMapBuffer<void const>::reset(_DWORD **result)
{
  _DWORD *v1; // r4
  _BYTE *v2; // r5
  char v3; // r3

  v1 = result;
  if ( result[1] )
  {
    v2 = (_BYTE *)**result;
    v3 = v2[19];
    if ( (v3 & 0x1Fu) <= 1 )
    {
      if ( (v2[18] & 0x20) != 0 )
        result = (_DWORD **)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 24))(**result);
      v2[19] = 0;
    }
    else
    {
      v2[19] = ((v3 & 0x1F) - 1) | v3 & 0xE0;
    }
    v1[1] = 0;
    *v1 = 0;
  }
  return result;
}


// ===== 5a0ea0 `global constructor keyed to'.._source_glitch_video_CVertexStreams.cpp =====
void `global constructor keyed to'.._source_glitch_video_CVertexStreams.cpp()
{
  dword_9F6928 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6924 = 1056964608;
}


// ===== 5a0ec0 glitch::video::CVertexStreams::computeBoundingBox(uint,uint,glitch::core::aabbox3d<float> &) =====
float __fastcall glitch::video::CVertexStreams::computeBoundingBox(int a1, int a2, int a3, float *a4)
{
  int v8; // r0
  float result; // r0
  float *v10; // r6
  float v11; // r8
  float v12; // r0
  float *v13; // r5
  float v14; // r7
  float v15; // r6
  _DWORD *v16; // [sp+8h] [bp-8h] BYREF

  v8 = glitch::video::IBuffer::map(*(_DWORD *)(a1 + 20), 0);
  glitch::core::computeBoundingBox(
    v8 + *(_DWORD *)(a1 + 24) + *(unsigned __int16 *)(a1 + 34) * a2,
    *(unsigned __int16 *)(a1 + 30),
    *(unsigned __int16 *)(a1 + 32),
    *(unsigned __int16 *)(a1 + 34),
    a3 - a2,
    a4,
    a1 + 20,
    v8 + *(_DWORD *)(a1 + 24));
  result = COERCE_FLOAT(glitch::video::SVertexStream::SMapBuffer<void const>::reset(&v16));
  if ( (*(_WORD *)(a1 + 14) & 4) != 0 )
  {
    v10 = *(float **)(a1 + 16);
    v11 = (float)(a4[1] * v10[1]) + v10[4];
    v12 = (float)(*a4 * *v10) + v10[3];
    a4[2] = (float)(a4[2] * v10[2]) + v10[5];
    *a4 = v12;
    a4[1] = v11;
    v13 = *(float **)(a1 + 16);
    v14 = (float)(a4[4] * v13[1]) + v13[4];
    v15 = (float)(a4[5] * v13[2]) + v13[5];
    result = (float)(a4[3] * *v13) + v13[3];
    a4[3] = result;
    a4[4] = v14;
    a4[5] = v15;
  }
  return result;
}


// ===== 5a0fe4 glitch::video::CVertexStreams::copyStreams(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&,uint,uint,int,uint) =====
int __fastcall glitch::video::CVertexStreams::copyStreams(
        int a1,
        int *a2,
        unsigned int a3,
        unsigned int a4,
        int a5,
        int a6)
{
  int v7; // r11
  int v8; // r7
  int v9; // r2
  int v10; // r5
  int i; // r4
  int v12; // r6
  unsigned __int16 *Stream; // r8
  unsigned __int16 *v14; // r0
  unsigned __int16 *v15; // r7
  int v16; // r3

  v7 = *(_DWORD *)(a1 + 4) & *(_DWORD *)(*a2 + 4) & a6;
  if ( v7 )
  {
    v8 = *a2 + 20;
    v9 = a1 + 20;
    v10 = *(_DWORD *)(a1 + 4) & *(_DWORD *)(*a2 + 4) & a6;
    for ( i = 0; ; ++i )
    {
      v12 = 1 << i;
      if ( ((1 << i) & v10) != 0 )
      {
        Stream = (unsigned __int16 *)glitch::video::CVertexStreams::getStream(a1, i, v9, *(_DWORD *)(a1 + 16));
        v14 = (unsigned __int16 *)glitch::video::CVertexStreams::getStream(*a2, i, v8, *(_DWORD *)(*a2 + 16));
        v15 = v14;
        v16 = ~v12;
        if ( *(_DWORD *)Stream && *(_DWORD *)v14 && Stream[5] == v14[5] && Stream[6] == v14[6] )
        {
          v10 &= ~v12;
          glitch::video::SVertexStream::copyStream(
            (glitch::video::SVertexStream *)Stream,
            (const glitch::video::SVertexStream *)v14,
            a3,
            a4,
            a5);
        }
        else
        {
          v10 &= v16;
          v7 &= v16;
        }
        v9 = (int)(Stream + 8);
        v8 = (int)(v15 + 8);
        if ( !v10 )
          break;
      }
    }
  }
  return v7;
}


// ===== 5a10fc boost::intrusive_ptr<glitch::video::CVertexStreams>::~intrusive_ptr() =====
glitch::video::CVertexStreams **__fastcall boost::intrusive_ptr<glitch::video::CVertexStreams>::~intrusive_ptr(
        glitch::video::CVertexStreams **a1)
{
  glitch::video::CVertexStreams *v1; // r4

  v1 = *a1;
  if ( *a1 )
  {
    if ( (*(_DWORD *)v1)-- == 1 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v1);
      LC_API_FREE_0(v1);
    }
  }
  return a1;
}


// ===== 5a113c glitch::video::CVertexStreams::CVertexStreams(uint,uint,uchar,uchar,glitch::video::SVertexStream const*,glitch::core::vector3d<float> const*) =====
int __fastcall glitch::video::CVertexStreams::CVertexStreams(
        int a1,
        int a2,
        int a3,
        int a4,
        unsigned __int8 a5,
        int *a6,
        void *a7)
{
  int v7; // lr
  int v9; // r0
  bool v10; // zf
  int v11; // lr
  unsigned int v13; // r8
  int v14; // r5
  int i; // r0
  int v16; // lr
  __int16 v17; // lr
  size_t v18; // r2

  v7 = a1 + 20;
  v9 = a1 + 20 + 16 * a5;
  *(_DWORD *)(a1 + 8) = a2;
  v10 = v7 == v9;
  v11 = 0;
  *(_DWORD *)a1 = 0;
  *(_DWORD *)(a1 + 4) = a3;
  *(_BYTE *)(a1 + 12) = a4;
  *(_BYTE *)(a1 + 13) = a5;
  *(_WORD *)(a1 + 14) = 3;
  *(_DWORD *)(a1 + 16) = v9;
  if ( !v10 )
  {
    v13 = a1 + 16 + ((v9 - (a1 + 36)) & 0xFFFFFFF0);
    v14 = a1;
    while ( 1 )
    {
      for ( i = v11; (a3 & (1 << i)) == 0; LOWORD(v11) = i )
        ++i;
      if ( a6 )
      {
        v16 = *a6;
        *(_DWORD *)(v14 + 20) = *a6;
        if ( v16 )
          ++*(_DWORD *)(v16 + 4);
        *(_DWORD *)(v14 + 24) = a6[1];
        *(_WORD *)(v14 + 28) = *((_WORD *)a6 + 4);
        *(_WORD *)(v14 + 30) = *((_WORD *)a6 + 5);
        *(_WORD *)(v14 + 32) = *((_WORD *)a6 + 6);
        v17 = *((_WORD *)a6 + 7);
        a6 += 4;
        *(_WORD *)(v14 + 34) = v17;
        v14 += 16;
        if ( v14 == v13 )
          break;
      }
      else
      {
        *(_WORD *)(v14 + 28) = v11;
        *(_DWORD *)(v14 + 20) = 0;
        *(_DWORD *)(v14 + 24) = 0;
        *(_WORD *)(v14 + 30) = 255;
        *(_WORD *)(v14 + 32) = 0;
        *(_WORD *)(v14 + 34) = 0;
        v14 += 16;
        if ( v14 == v13 )
          break;
      }
      v11 = i + 1;
    }
  }
  v18 = 24 * a4 + 24;
  if ( a7 )
    memcpy(*(void **)(a1 + 16), a7, v18);
  else
    LC_API_MEMSET_0(*(void **)(a1 + 16), 0, v18);
  return a1;
}


// ===== 5a1270 glitch::video::CVertexStreams::allocate(uint,uint,uchar,uchar,glitch::video::SVertexStream const*,glitch::core::vector3d<float> const*) =====
glitch::video::CVertexStreams **__fastcall glitch::video::CVertexStreams::allocate(
        glitch::video::CVertexStreams **a1,
        int a2,
        int a3,
        int a4,
        unsigned __int8 a5,
        int *a6,
        void *a7)
{
  glitch::video::CVertexStreams *v11; // r0
  glitch::video::CVertexStreams *v12; // r5
  glitch::video::CVertexStreams *v13; // r3
  glitch::video::CVertexStreams *v15; // [sp+14h] [bp-8h] BYREF

  *a1 = nullptr;
  v11 = (glitch::video::CVertexStreams *)operator new[](16 * a5 + 20 + 24 * a4 + 24, 0);
  v12 = v11;
  if ( v11 )
  {
    glitch::video::CVertexStreams::CVertexStreams((int)v11, a2, a3, a4, a5, a6, a7);
    v15 = v12;
    ++*(_DWORD *)v12;
    v13 = v15;
    v15 = *a1;
    *a1 = v13;
    boost::intrusive_ptr<glitch::video::CVertexStreams>::~intrusive_ptr(&v15);
  }
  return a1;
}


// ===== 5a1310 glitch::video::CVertexStreams::clone(void) =====
glitch::video::CVertexStreams **__fastcall glitch::video::CVertexStreams::clone(
        glitch::video::CVertexStreams **this,
        int a2)
{
  glitch::video::CVertexStreams::allocate(
    this,
    *(_DWORD *)(a2 + 8),
    *(_DWORD *)(a2 + 4),
    *(unsigned __int8 *)(a2 + 12),
    *(_BYTE *)(a2 + 13),
    (int *)(a2 + 20),
    *(void **)(a2 + 16));
  *((_WORD *)*this + 7) = *(_WORD *)(a2 + 14);
  return this;
}


// ===== 5a135c glitch::video::CVertexStreams::allocate(uint) =====
glitch::video::CVertexStreams **__fastcall glitch::video::CVertexStreams::allocate(
        glitch::video::CVertexStreams **this,
        unsigned int a2)
{
  unsigned int v2; // r2
  unsigned int v4; // r3
  int v5; // r1
  unsigned __int8 v6; // r12
  unsigned int v7; // lr
  int i; // r0

  v2 = a2 | 1;
  v4 = a2 | 1;
  v5 = 1;
  v6 = 0;
  while ( 1 )
  {
    if ( (v5 & v4) != 0 )
    {
      v4 &= ~v5;
      ++v6;
    }
    if ( !v4 )
      break;
    v5 *= 2;
  }
  if ( (v2 & 0x1FFFE) != 0 )
  {
    v7 = v2;
    for ( i = 2; ; i *= 2 )
    {
      if ( (i & v7) != 0 )
      {
        v7 &= ~i;
        LOBYTE(v4) = v4 + 1;
      }
      if ( (v7 & 0x1FFFE) == 0 )
        break;
    }
  }
  glitch::video::CVertexStreams::allocate(this, 0, v2, (unsigned __int8)v4, v6, nullptr, nullptr);
  return this;
}


// ===== 5a1404 glitch::video::CVertexStreams::allocate(uchar,uint) =====
glitch::video::CVertexStreams **__fastcall glitch::video::CVertexStreams::allocate(
        glitch::video::CVertexStreams **this,
        unsigned int a2,
        unsigned int a3)
{
  unsigned int v5; // r2
  int v6; // r1
  unsigned int v7; // r12
  int v8; // r1
  unsigned __int8 v9; // lr

  v5 = a3 & 0x3FFFFFFE | 1;
  if ( a2 )
  {
    v6 = 0;
    do
      v5 |= 2 << v6++;
    while ( a2 > (unsigned __int8)v6 );
  }
  v7 = v5;
  v8 = 1;
  v9 = 0;
  while ( 1 )
  {
    if ( (v7 & v8) != 0 )
    {
      v7 &= ~v8;
      ++v9;
    }
    if ( !v7 )
      break;
    v8 *= 2;
  }
  glitch::video::CVertexStreams::allocate(this, 0, v5, a2, v9, nullptr, nullptr);
  return this;
}


// ===== 5a148c glitch::video::CVertexStreams::CVertexStreams(uint,uint,uchar,uchar,glitch::video::SVertexStream const*,glitch::core::vector3d<float> const*) =====
int __fastcall glitch::video::CVertexStreams::CVertexStreams(
        int a1,
        int a2,
        int a3,
        int a4,
        unsigned __int8 a5,
        int *a6,
        void *a7)
{
  int v7; // lr
  int v9; // r0
  bool v10; // zf
  int v11; // lr
  unsigned int v13; // r8
  int v14; // r5
  int i; // r0
  int v16; // lr
  __int16 v17; // lr
  size_t v18; // r2

  v7 = a1 + 20;
  v9 = a1 + 20 + 16 * a5;
  *(_DWORD *)(a1 + 8) = a2;
  v10 = v7 == v9;
  v11 = 0;
  *(_DWORD *)a1 = 0;
  *(_DWORD *)(a1 + 4) = a3;
  *(_BYTE *)(a1 + 12) = a4;
  *(_BYTE *)(a1 + 13) = a5;
  *(_WORD *)(a1 + 14) = 3;
  *(_DWORD *)(a1 + 16) = v9;
  if ( !v10 )
  {
    v13 = a1 + 16 + ((v9 - (a1 + 36)) & 0xFFFFFFF0);
    v14 = a1;
    while ( 1 )
    {
      for ( i = v11; (a3 & (1 << i)) == 0; LOWORD(v11) = i )
        ++i;
      if ( a6 )
      {
        v16 = *a6;
        *(_DWORD *)(v14 + 20) = *a6;
        if ( v16 )
          ++*(_DWORD *)(v16 + 4);
        *(_DWORD *)(v14 + 24) = a6[1];
        *(_WORD *)(v14 + 28) = *((_WORD *)a6 + 4);
        *(_WORD *)(v14 + 30) = *((_WORD *)a6 + 5);
        *(_WORD *)(v14 + 32) = *((_WORD *)a6 + 6);
        v17 = *((_WORD *)a6 + 7);
        a6 += 4;
        *(_WORD *)(v14 + 34) = v17;
        v14 += 16;
        if ( v14 == v13 )
          break;
      }
      else
      {
        *(_WORD *)(v14 + 28) = v11;
        *(_DWORD *)(v14 + 20) = 0;
        *(_DWORD *)(v14 + 24) = 0;
        *(_WORD *)(v14 + 30) = 255;
        *(_WORD *)(v14 + 32) = 0;
        *(_WORD *)(v14 + 34) = 0;
        v14 += 16;
        if ( v14 == v13 )
          break;
      }
      v11 = i + 1;
    }
  }
  v18 = 24 * a4 + 24;
  if ( a7 )
    memcpy(*(void **)(a1 + 16), a7, v18);
  else
    LC_API_MEMSET_0(*(void **)(a1 + 16), 0, v18);
  return a1;
}


// ===== 5a15c0 glitch::video::CVertexStreams::setupStreams(boost::intrusive_ptr<glitch::video::IBuffer> const&,uint) =====
int __fastcall glitch::video::CVertexStreams::setupStreams(int a1, glitch::IReferenceCounted **a2, int a3)
{
  int v4; // r10
  int v5; // r6
  glitch::IReferenceCounted *v6; // r7
  int v7; // r3
  int v8; // r3
  unsigned __int8 *v9; // r2
  int v10; // r5
  __int16 v11; // r4
  __int16 v12; // r3
  glitch::IReferenceCounted *v13; // r0
  glitch::IReferenceCounted *v14; // r0
  int v15; // r3
  unsigned int v16; // r0
  int v17; // r3
  __int16 v19; // [sp+0h] [bp-24h]
  int v20; // [sp+4h] [bp-20h]
  int v23; // [sp+1Ch] [bp-8h]

  v23 = a1 + 20;
  if ( a1 + 20 == *(_DWORD *)(a1 + 16) )
  {
    v4 = 0;
  }
  else
  {
    v4 = 0;
    v5 = a1 + 20;
    v20 = *(_DWORD *)(a1 + 16);
    do
    {
      while ( 1 )
      {
        v7 = *(unsigned __int16 *)(v5 + 8);
        if ( (a3 & (1 << v7)) != 0 )
          break;
        v14 = *(glitch::IReferenceCounted **)v5;
        *(_DWORD *)v5 = 0;
        if ( v14 )
          glitch::IReferenceCounted::drop(v14);
        *(_DWORD *)(v5 + 4) = 0;
        *(_WORD *)(v5 + 10) = 255;
        *(_WORD *)(v5 + 12) = 0;
        *(_WORD *)(v5 + 14) = 0;
        v5 += 16;
        if ( v5 == v20 )
          goto LABEL_19;
      }
      v6 = *a2;
      if ( *a2 )
      {
        ++*((_DWORD *)v6 + 1);
        v7 = *(unsigned __int16 *)(v5 + 8);
      }
      v8 = 4 * v7;
      v9 = glitch::video::detail::SVertexAttributeTypeInspection::ValueTypeSize;
      v10 = *(unsigned __int16 *)&glitch::video::detail::SVertexAttributeTypeInspection::Defaults[v8];
      v11 = glitch::video::detail::SVertexAttributeTypeInspection::Defaults[v8 + 2];
      if ( v6 )
        v9 = *((unsigned __int8 **)v6 + 1);
      v12 = glitch::video::detail::SVertexAttributeTypeInspection::ValueTypeSize[v10] * v11;
      if ( v6 )
        *((_DWORD *)v6 + 1) = v9 + 1;
      v13 = *(glitch::IReferenceCounted **)v5;
      *(_DWORD *)v5 = v6;
      if ( v13 )
      {
        v19 = v12;
        glitch::IReferenceCounted::drop(v13);
        v12 = v19;
      }
      *(_DWORD *)(v5 + 4) = v4;
      *(_WORD *)(v5 + 10) = v10;
      *(_WORD *)(v5 + 12) = v11;
      *(_WORD *)(v5 + 14) = 0;
      v4 = (unsigned __int16)(v4 + v12);
      if ( v6 )
        glitch::IReferenceCounted::drop(v6);
      v5 += 16;
    }
    while ( v5 != v20 );
LABEL_19:
    v15 = *(_DWORD *)(a1 + 16);
    if ( v23 != v15 )
    {
      v16 = a1 + 16 + ((v15 - (a1 + 36)) & 0xFFFFFFF0);
      v17 = a1;
      do
      {
        if ( (a3 & (1 << *(_WORD *)(v17 + 28))) != 0 )
          *(_WORD *)(v17 + 34) = v4;
        v17 += 16;
      }
      while ( v17 != v16 );
    }
  }
  *(_WORD *)(a1 + 14) |= 1u;
  return v4;
}


// ===== 5a178c glitch::video::CVertexStreams::setupStreams(glitch::video::SVertexStreamData const*,uint,bool) =====
int __fastcall glitch::video::CVertexStreams::setupStreams(
        glitch::video::CVertexStreams *this,
        int *a2,
        int a3,
        int a4)
{
  glitch::video::CVertexStreams *v4; // r5
  int v6; // r7
  glitch::video::CVertexStreams *i; // r8
  glitch::IReferenceCounted *v10; // r0
  int v11; // r3
  glitch::IReferenceCounted *v12; // r0

  v4 = *((glitch::video::CVertexStreams **)this + 4);
  v6 = a3 & *((_DWORD *)this + 1);
  if ( v4 != (glitch::video::CVertexStreams *)((char *)this + 20) )
  {
    for ( i = (glitch::video::CVertexStreams *)((char *)this + 36); ; i = (glitch::video::CVertexStreams *)((char *)i + 16) )
    {
      if ( (v6 & (1 << *((_WORD *)i - 4))) != 0 )
      {
        v11 = *a2;
        if ( *a2 )
          ++*(_DWORD *)(v11 + 4);
        v12 = *((glitch::IReferenceCounted **)i - 4);
        *((_DWORD *)i - 4) = v11;
        if ( v12 )
          glitch::IReferenceCounted::drop(v12);
        *((_DWORD *)i - 3) = a2[1];
        *((_WORD *)i - 3) = *((_WORD *)a2 + 4);
        *((_WORD *)i - 2) = *((_WORD *)a2 + 6);
        *((_WORD *)i - 1) = *((_WORD *)a2 + 7);
        glitch::video::CVertexStreams::updateHomogeneityInternal((int)this, a4);
        if ( v4 == i )
          return v6;
      }
      else
      {
        v10 = *((glitch::IReferenceCounted **)i - 4);
        *((_DWORD *)i - 4) = 0;
        if ( v10 )
          glitch::IReferenceCounted::drop(v10);
        *((_DWORD *)i - 3) = 0;
        *((_WORD *)i - 3) = 255;
        *((_WORD *)i - 2) = 0;
        *((_WORD *)i - 1) = 0;
        glitch::video::CVertexStreams::updateHomogeneityInternal((int)this, a4);
        if ( v4 == i )
          return v6;
      }
      a2 += 4;
    }
  }
  return v6;
}


// ===== 5a1878 glitch::video::getStringsInternal(glitch::video::E_INDEX_TYPE *) =====
char **glitch::video::getStringsInternal()
{
  return glitch::video::getStringsInternal(glitch::video::E_INDEX_TYPE *)::names;
}


// ===== 5a1888 `global constructor keyed to'.._source_glitch_video_EIndexType.cpp =====
void `global constructor keyed to'.._source_glitch_video_EIndexType.cpp()
{
  dword_9F6934 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6930 = 1056964608;
}


// ===== 5a18a8 glitch::video::getStringsInternal(glitch::video::E_LIGHT_TYPE *) =====
_UNKNOWN **glitch::video::getStringsInternal()
{
  return &glitch::video::getStringsInternal(glitch::video::E_LIGHT_TYPE *)::strings;
}


// ===== 5a18b8 `global constructor keyed to'.._source_glitch_video_ELightType.cpp =====
void `global constructor keyed to'.._source_glitch_video_ELightType.cpp()
{
  dword_9F6940 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F693C = 1056964608;
}


// ===== 5a18d8 glitch::video::getStringsInternal(glitch::video::E_PRIMITIVE_TYPE *) =====
char **glitch::video::getStringsInternal()
{
  return glitch::video::getStringsInternal(glitch::video::E_PRIMITIVE_TYPE *)::names;
}


// ===== 5a18e8 `global constructor keyed to'.._source_glitch_video_EPrimitiveType.cpp =====
void `global constructor keyed to'.._source_glitch_video_EPrimitiveType.cpp()
{
  dword_9F694C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6948 = 1056964608;
}


// ===== 5a1908 glitch::video::IBuffer::IBuffer(glitch::video::E_BUFFER_TYPE,glitch::video::E_BUFFER_USAGE,uint,void *,uchar) =====
int __fastcall glitch::video::IBuffer::IBuffer(int result, char a2, char a3, int a4, int a5, char a6)
{
  *(_DWORD *)result = off_9770D8;
  *(_BYTE *)(result + 16) = a2;
  *(_BYTE *)(result + 19) = 0;
  *(_DWORD *)(result + 4) = 0;
  *(_DWORD *)(result + 8) = a5;
  *(_DWORD *)(result + 12) = a4;
  *(_BYTE *)(result + 17) = a3;
  *(_BYTE *)(result + 18) = a6;
  if ( a4 && a3 != 4 )
  {
    if ( a5 )
      *(_BYTE *)(result + 18) = a6 | 2;
  }
  return result;
}


// ===== 5a197c glitch::video::IBuffer::IBuffer(glitch::video::E_BUFFER_TYPE,glitch::video::E_BUFFER_USAGE,uint,void *,uchar) =====
int __fastcall glitch::video::IBuffer::IBuffer(int result, char a2, char a3, int a4, int a5, char a6)
{
  *(_DWORD *)result = off_9770D8;
  *(_BYTE *)(result + 16) = a2;
  *(_BYTE *)(result + 19) = 0;
  *(_DWORD *)(result + 4) = 0;
  *(_DWORD *)(result + 8) = a5;
  *(_DWORD *)(result + 12) = a4;
  *(_BYTE *)(result + 17) = a3;
  *(_BYTE *)(result + 18) = a6;
  if ( a4 && a3 != 4 )
  {
    if ( a5 )
      *(_BYTE *)(result + 18) = a6 | 2;
  }
  return result;
}


// ===== 5a19f0 glitch::video::IBuffer::map(glitch::video::E_BUFFER_MAP_ACCESS) =====
int __fastcall glitch::video::IBuffer::map(int a1, int a2)
{
  char v3; // r1
  int result; // r0
  char v5; // r2
  int v6; // r12

  if ( *(_BYTE *)(a1 + 19) )
  {
    v3 = *(_BYTE *)(a1 + 18);
    *(_BYTE *)(a1 + 19) = ((*(_BYTE *)(a1 + 19) & 0x1F) + 1) | *(_BYTE *)(a1 + 19) & 0xE0;
    if ( (v3 & 0x20) != 0 )
      return (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 28))(a1);
    else
      return *(_DWORD *)(a1 + 8);
  }
  else
  {
    v5 = *(_BYTE *)(a1 + 18);
    if ( (v5 & 8) != 0 )
    {
      if ( a2 <= 3 )
        return (*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 20))(a1, a2 & 1 | 2);
      result = *(_DWORD *)(a1 + 8);
      if ( !result )
        return (*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 20))(a1, a2 & 1 | 2);
    }
    else
    {
      result = *(_DWORD *)(a1 + 8);
      if ( !result )
        return 0;
    }
    v6 = *(unsigned __int8 *)(a1 + 17);
    *(_BYTE *)(a1 + 19) = (32 * a2) | 1;
    if ( v6 != 4 )
      *(_BYTE *)(a1 + 18) = v5 | 2;
  }
  return result;
}


// ===== 5a1abc `global constructor keyed to'.._source_glitch_video_IBuffer.cpp =====
void `global constructor keyed to'.._source_glitch_video_IBuffer.cpp()
{
  dword_9F6958 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6954 = 1056964608;
}


// ===== 5a1adc glitch::video::IBuffer::map(glitch::video::E_BUFFER_READ_MAP_ACCESS) =====
int __fastcall glitch::video::IBuffer::map(int a1, int a2)
{
  char v3; // r2
  int result; // r0
  int v5; // r2
  const void *v6; // r0
  char v7; // r3
  char v8; // r1

  if ( *(_BYTE *)(a1 + 19) )
  {
    v3 = *(_BYTE *)(a1 + 18);
    *(_BYTE *)(a1 + 19) = ((*(_BYTE *)(a1 + 19) & 0x1F) + 1) | *(_BYTE *)(a1 + 19) & 0xE0;
    if ( (v3 & 0x20) != 0 )
      return (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 28))(a1);
    else
      return *(_DWORD *)(a1 + 8);
  }
  else if ( a2 == 1 && (v5 = *(_DWORD *)(a1 + 8)) != 0 )
  {
    if ( (*(_BYTE *)(a1 + 18) & 4) != 0 )
    {
      v6 = (const void *)(*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)a1 + 20))(a1, *(unsigned __int8 *)(a1 + 19));
      memcpy(*(void **)(a1 + 8), v6, *(_DWORD *)(a1 + 12));
      v7 = *(_BYTE *)(a1 + 19);
      v8 = *(_BYTE *)(a1 + 18);
      *(_BYTE *)(a1 + 18) = v8 & 0xFB;
      if ( (v7 & 0x1Fu) <= 1 )
      {
        if ( (v8 & 0x20) != 0 )
          (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 24))(a1);
        v5 = *(_DWORD *)(a1 + 8);
        *(_BYTE *)(a1 + 19) = 0;
      }
      else
      {
        *(_BYTE *)(a1 + 19) = ((v7 & 0x1F) - 1) | v7 & 0xE0;
        v5 = *(_DWORD *)(a1 + 8);
      }
    }
    *(_BYTE *)(a1 + 19) = 33;
    return v5;
  }
  else if ( (*(_BYTE *)(a1 + 18) & 2) == 0 && (*(_BYTE *)(a1 + 18) & 8) != 0 )
  {
    return (*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 20))(a1, *(_BYTE *)(a1 + 18) & 2);
  }
  else
  {
    result = *(_DWORD *)(a1 + 8);
    if ( result )
      *(_BYTE *)(a1 + 19) = (32 * a2) | 1;
  }
  return result;
}


// ===== 5a1c1c glitch::video::IBuffer::copy(void) =====
int __fastcall glitch::video::IBuffer::copy(glitch::video::IBuffer *this)
{
  size_t v3; // r0
  const void *v4; // r5
  void *v5; // r0

  if ( (*((_BYTE *)this + 18) & 1) != 0 && *((_DWORD *)this + 2) )
    return 0;
  v3 = *((_DWORD *)this + 3);
  if ( !v3 )
    return 0;
  v4 = *((const void **)this + 2);
  v5 = operator new[](v3, 0);
  *((_DWORD *)this + 2) = v5;
  memcpy(v5, v4, *((_DWORD *)this + 3));
  *((_BYTE *)this + 18) |= 1u;
  return 1;
}


// ===== 5a1c80 glitch::video::IBuffer::clone(void) =====
glitch::video::IBuffer **__fastcall glitch::video::IBuffer::clone(glitch::video::IBuffer **this, _BYTE *a2)
{
  (*(void (**)(void))(*(_DWORD *)a2 + 32))();
  if ( (a2[18] & 1) != 0 )
    glitch::video::IBuffer::copy(*this);
  return this;
}


// ===== 5a1cb4 glitch::video::IBuffer::reset(uint,void *,bool) =====
void __fastcall glitch::video::IBuffer::reset(glitch::video::IBuffer *this, unsigned int a2, void *a3, int a4)
{
  char v6; // r1
  void *v7; // r0
  void *v8; // r0
  char v9; // r1
  int v10; // r12
  int v11; // r0
  char v12; // r12
  int v13; // r0
  char v14; // r1
  int v15; // [sp+0h] [bp-Ch]
  void *v16; // [sp+4h] [bp-8h]

  if ( a2 )
  {
    v8 = *((void **)this + 2);
    if ( a3 == v8 )
    {
      v9 = *((_BYTE *)this + 18);
      goto LABEL_28;
    }
    if ( v8 )
    {
      v9 = *((_BYTE *)this + 18);
      if ( (v9 & 1) != 0 )
      {
        v16 = a3;
        v15 = a4;
        operator delete[](v8);
        v13 = *((unsigned __int8 *)this + 17);
        a3 = v16;
        if ( a2 == *((_DWORD *)this + 3) )
          v12 = 0;
        else
          v12 = 2;
        a4 = v15;
        v9 = *((_BYTE *)this + 18);
        *((_DWORD *)this + 2) = v16;
        if ( v13 != 4 )
        {
LABEL_17:
          if ( a3 )
            v9 |= 2u;
          else
            v9 |= v12;
          *((_DWORD *)this + 3) = a2;
          *((_BYTE *)this + 18) = v9;
          if ( !a3 )
            goto LABEL_29;
          goto LABEL_21;
        }
LABEL_28:
        *((_DWORD *)this + 3) = a2;
        if ( !a3 )
        {
LABEL_29:
          v14 = v9 | 1;
          *((_BYTE *)this + 18) = v14;
          *((_BYTE *)this + 18) = v14 & 0xFB;
          return;
        }
LABEL_21:
        if ( a4 )
          *((_BYTE *)this + 18) |= 1u;
        else
          *((_BYTE *)this + 18) = v9 & 0xFE;
        return;
      }
    }
    else
    {
      v9 = *((_BYTE *)this + 18);
    }
    v10 = *((_DWORD *)this + 3);
    v11 = *((unsigned __int8 *)this + 17);
    *((_DWORD *)this + 2) = a3;
    if ( a2 == v10 )
      v12 = 0;
    else
      v12 = 2;
    if ( v11 != 4 )
      goto LABEL_17;
    goto LABEL_28;
  }
  v6 = *((_BYTE *)this + 18);
  if ( (v6 & 1) != 0 )
  {
    v7 = *((void **)this + 2);
    if ( v7 )
    {
      operator delete[](v7);
      if ( *((_BYTE *)this + 17) == 4 || !*((_DWORD *)this + 2) )
      {
        v6 = *((_BYTE *)this + 18);
      }
      else
      {
        v6 = *((_BYTE *)this + 18) | 2;
        *((_BYTE *)this + 18) = v6;
      }
    }
  }
  *((_BYTE *)this + 18) = v6 & 0xFA | 1;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
}


// ===== 5a1e1c glitch::video::IBuffer::~IBuffer() =====
void __fastcall glitch::video::IBuffer::~IBuffer(glitch::video::IBuffer *this)
{
  *(_DWORD *)this = off_9770D8;
  glitch::video::IBuffer::reset(this, 0, nullptr, 1);
}


// ===== 5a1e5c glitch::video::IBuffer::~IBuffer() =====
void __fastcall glitch::video::IBuffer::~IBuffer(glitch::video::IBuffer *this)
{
  *(_DWORD *)this = off_9770D8;
  glitch::video::IBuffer::reset(this, 0, nullptr, 1);
}


// ===== 5a1e9c glitch::video::IBuffer::~IBuffer() =====
void __fastcall glitch::video::IBuffer::~IBuffer(glitch::video::IBuffer *this)
{
  glitch::video::IBuffer::~IBuffer(this);
  LC_API_FREE_0(this);
}


// ===== 5a1eb8 `global constructor keyed to'.._source_glitch_video_SVertexStream.cpp =====
void `global constructor keyed to'.._source_glitch_video_SVertexStream.cpp()
{
  dword_9F6964 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6960 = 1056964608;
}


// ===== 5a1ed8 glitch::video::SVertexStream::copyStream(glitch::video::SVertexStream const&,uint,uint,int) =====
char *__fastcall glitch::video::SVertexStream::copyStream(int a1, int *a2, int a3, int a4, int a5)
{
  int v9; // r9
  char *result; // r0
  int v11; // r3
  char *v12; // r6
  char *v13; // r8
  char *v14; // r11
  size_t v15; // r10
  char *v16; // r7
  _BYTE *v17; // r4
  char v18; // r3
  _BYTE *v19; // r4
  char v20; // r3

  v9 = glitch::video::IBuffer::map(*a2, 1) + a2[1];
  result = (char *)glitch::video::IBuffer::map(*(_DWORD *)a1, 4);
  v11 = *((unsigned __int16 *)a2 + 7);
  v12 = (char *)(v9 + v11 * a3);
  v13 = &v12[v11 * (a4 - a3)];
  v14 = &result[*(_DWORD *)(a1 + 4)];
  v15 = *(unsigned __int16 *)(a1 + 12)
      * glitch::video::detail::SVertexAttributeTypeInspection::ValueTypeSize[*(unsigned __int16 *)(a1 + 10)];
  if ( v12 != v13 )
  {
    v16 = &v14[*(unsigned __int16 *)(a1 + 14) * a5];
    do
    {
      result = (char *)memcpy(v16, v12, v15);
      v12 += *((unsigned __int16 *)a2 + 7);
      v16 += *(unsigned __int16 *)(a1 + 14);
    }
    while ( v13 != v12 );
  }
  if ( v14 )
  {
    v17 = *(_BYTE **)a1;
    v18 = v17[19];
    if ( (v18 & 0x1Fu) <= 1 )
    {
      if ( (v17[18] & 0x20) != 0 )
        result = (char *)(*(int (__fastcall **)(_BYTE *))(*(_DWORD *)v17 + 24))(v17);
      v17[19] = 0;
    }
    else
    {
      v17[19] = ((v18 & 0x1F) - 1) | v18 & 0xE0;
    }
  }
  if ( v9 )
  {
    v19 = (_BYTE *)*a2;
    v20 = *(_BYTE *)(*a2 + 19);
    if ( (v20 & 0x1Fu) <= 1 )
    {
      if ( (v19[18] & 0x20) != 0 )
        result = (char *)(*(int (__fastcall **)(int))(*(_DWORD *)v19 + 24))(*a2);
      v19[19] = 0;
    }
    else
    {
      v19[19] = ((v20 & 0x1F) - 1) | v20 & 0xE0;
    }
  }
  return result;
}


// ===== 5a203c glitch::video::SVertexStream::append(glitch::video::SVertexStream const&,uint,uint,uint) =====
// attributes: thunk
char *__fastcall glitch::video::SVertexStream::append(int a1, int *a2, int a3, int a4, int a5)
{
  return glitch::video::SVertexStream::copyStream(a1, a2, a3, a4, a5);
}


// ===== 5a2040 glitch::scene::CAppendMeshBuffer::hasEnoughSpace(uint,uint) =====
bool __fastcall glitch::scene::CAppendMeshBuffer::hasEnoughSpace(
        glitch::scene::CAppendMeshBuffer *this,
        unsigned int a2,
        unsigned int a3)
{
  unsigned int v3; // r7
  unsigned int v4; // r6

  v3 = *((_DWORD *)this + 15);
  v4 = *((_DWORD *)this + 18);
  return a2 <= (*((_DWORD *)this + 14) - v3) / v4
      && a3 <= (unsigned int)(*((_DWORD *)this + 16) - *((_DWORD *)this + 17)) / *((_DWORD *)this + 19)
      && a2 + v3 / v4 < 0x10000;
}


// ===== 5a20b4 glitch::video::CNullDriver::checkDriverReset(void) =====
int __fastcall glitch::video::CNullDriver::checkDriverReset(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5a20bc glitch::operator==(std::pair<uint,glitch::core::aabbox3d<float>> const&,std::pair<uint,glitch::core::aabbox3d<float>> const&) =====
bool __fastcall glitch::operator==(_DWORD *a1, _DWORD *a2)
{
  return *a1 == *a2;
}


// ===== 5a20d4 glitch::lessThanPlane(std::pair<uint,glitch::core::aabbox3d<float>> const&,float,char) =====
bool __fastcall glitch::lessThanPlane(float *a1, float a2, int a3)
{
  float v3; // r8
  float v4; // r7
  float v5; // r0
  float v7[3]; // [sp+4h] [bp-Ch]

  v3 = (float)(a1[2] + a1[5]) * 0.5;
  v4 = (float)(a1[3] + a1[6]) * 0.5;
  v5 = a1[1] + a1[4];
  v7[1] = v3;
  v7[0] = v5 * 0.5;
  v7[2] = v4;
  return v7[a3] < a2;
}


// ===== 5a2160 glitch::distanceKdTree(std::pair<uint,glitch::core::aabbox3d<float>> const&,glitch::core::aabbox3d<float> const&) =====
float __fastcall glitch::distanceKdTree(float *a1, float *a2)
{
  float v4; // r7
  float v5; // r6
  float v6; // r0

  v4 = (float)((float)(a1[1] + a1[4]) * 0.5) - (float)((float)(*a2 + a2[3]) * 0.5);
  v5 = (float)((float)(a1[2] + a1[5]) * 0.5) - (float)((float)(a2[1] + a2[4]) * 0.5);
  v6 = (float)((float)(a1[3] + a1[6]) * 0.5) - (float)((float)(a2[2] + a2[5]) * 0.5);
  return (float)((float)(v4 * v4) + (float)(v5 * v5)) + (float)(v6 * v6);
}


// ===== 5a2268 glitch::distanceKdTree(std::pair<uint,glitch::core::aabbox3d<float>> const&,std::pair<uint,glitch::core::aabbox3d<float>> const&) =====
float __fastcall glitch::distanceKdTree(float *a1, float *a2)
{
  float v4; // r7
  float v5; // r6
  float v6; // r0

  v4 = (float)((float)(a1[1] + a1[4]) * 0.5) - (float)((float)(a2[1] + a2[4]) * 0.5);
  v5 = (float)((float)(a1[2] + a1[5]) * 0.5) - (float)((float)(a2[2] + a2[5]) * 0.5);
  v6 = (float)((float)(a1[3] + a1[6]) * 0.5) - (float)((float)(a2[3] + a2[6]) * 0.5);
  return (float)((float)(v4 * v4) + (float)(v5 * v5)) + (float)(v6 * v6);
}


// ===== 5a2370 glitch::distanceKdTree(std::pair<uint,glitch::core::aabbox3d<float>> const&,float,char) =====
float __fastcall glitch::distanceKdTree(float *a1, float a2, int a3)
{
  float v3; // r8
  float v4; // r7
  float v5; // r0
  float v7[3]; // [sp+4h] [bp-Ch]

  v3 = (float)(a1[2] + a1[5]) * 0.5;
  v4 = (float)(a1[3] + a1[6]) * 0.5;
  v5 = a1[1] + a1[4];
  v7[1] = v3;
  v7[0] = v5 * 0.5;
  v7[2] = v4;
  return (float)(v7[a3] - a2) * (float)(v7[a3] - a2);
}


// ===== 5a23f4 glitch::video::isVertexStreamHomolaced(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&,int &) =====
bool __fastcall glitch::video::isVertexStreamHomolaced(int a1, int *a2)
{
  int v2; // r7
  int v3; // r2
  int v4; // r0
  int v5; // r6
  int v6; // r8
  int v7; // r12
  int v8; // r5
  int v9; // r4

  v2 = *(_DWORD *)(*(_DWORD *)a1 + 16);
  v3 = *(_DWORD *)a1 + 20;
  v4 = *(unsigned __int16 *)(*(_DWORD *)a1 + 34);
  if ( v3 == v2 )
  {
    v5 = 0x7FFFFFFF;
    v6 = 0;
    v7 = -2147483647;
  }
  else
  {
    v5 = 0x7FFFFFFF;
    v6 = 0;
    v8 = -2147483647;
    while ( 1 )
    {
      v9 = *(_DWORD *)(v3 + 4);
      if ( v5 >= v9 )
        v5 = *(_DWORD *)(v3 + 4);
      if ( v9 > v8 )
        v6 = v3;
      v3 += 16;
      v7 = v9;
      if ( v9 <= v8 )
        v7 = v8;
      if ( v3 == v2 )
        break;
      v8 = v7;
      if ( *(unsigned __int16 *)(v3 + 14) != v4 )
      {
        *a2 = 0;
        return 0;
      }
    }
  }
  *a2 = v5;
  return v7
       + *(unsigned __int16 *)(v6 + 12)
       * glitch::video::detail::SVertexAttributeTypeInspection::ValueTypeSize[*(unsigned __int16 *)(v6 + 10)]
       - v5 <= v4;
}


// ===== 5a24b4 glitch::core::vector3d<float>::operator/=(glitch::core::vector3d<float> const&) =====
float *__fastcall glitch::core::vector3d<float>::operator/=(float *result, float *a2)
{
  *result = *result / *a2;
  result[1] = result[1] / a2[1];
  result[2] = result[2] / a2[2];
  return result;
}


// ===== 5a24f8 glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::findFarthestElemInternal(std::pair<uint,glitch::core::aabbox3d<float>> const*&,float &,glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdNode const*) =====
int __fastcall glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::findFarthestElemInternal(
        int result,
        _DWORD *a2,
        float *a3,
        int *a4)
{
  int *v4; // r4
  int v5; // r7
  int v8; // r8
  float *v9; // r7
  unsigned int v10; // r10
  int v11; // r3
  float v12; // r9
  _BOOL4 v13; // r0

  v4 = a4;
  v5 = result;
  if ( a4 )
  {
    while ( 1 )
    {
      while ( v4[4] )
      {
        result = glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::findFarthestElemInternal(
                   v5,
                   a2,
                   a3,
                   v4[4]);
        v4 = (int *)v4[5];
        if ( !v4 )
          return result;
      }
      v8 = v4[5];
      if ( !v8 )
        break;
      v4 = (int *)v4[5];
    }
    result = *v4;
    if ( 1227133513 * ((v4[1] - *v4) >> 2) )
    {
      v9 = (float *)(v5 + 56);
      v10 = v4[5];
      do
      {
        v12 = glitch::distanceKdTree((float *)(result + v8), v9);
        v13 = v12 > *a3;
        if ( v12 > *a3 )
        {
          *a3 = v12;
          v11 = *v4;
        }
        ++v10;
        if ( v13 )
          *a2 = v11 + v8;
        result = *v4;
        v8 += 28;
      }
      while ( v10 < -1227133513 * ((v4[1] - *v4) >> 2) );
    }
  }
  return result;
}


// ===== 5a25e0 std::priv::__ucopy<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>,glitch::video::CPrimitiveStream> *,std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>,glitch::video::CPrimitiveStream> *,int>(std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>,glitch::video::CPrimitiveStream> *,std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>,glitch::video::CPrimitiveStream> *,std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>,glitch::video::CPrimitiveStream> *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__ucopy<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>,glitch::video::CPrimitiveStream> *,std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>,glitch::video::CPrimitiveStream> *,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r3
  int v5; // r0
  int v6; // r1
  int v7; // r4
  _DWORD *v8; // r12
  int v9; // r12
  __int16 v10; // r12

  v3 = -1227133513 * ((a2 - a1) >> 2);
  if ( v3 <= 0 )
    return a3;
  v5 = a1 + 28;
  v6 = a3 + 28;
  v7 = v3;
  do
  {
    v8 = *(_DWORD **)(v5 - 28);
    *(_DWORD *)(v6 - 28) = v8;
    if ( v8 )
      ++*v8;
    v9 = *(_DWORD *)(v5 - 24);
    *(_DWORD *)(v6 - 24) = v9;
    if ( v9 )
      ++*(_DWORD *)(v9 + 4);
    --v7;
    *(_DWORD *)(v6 - 20) = *(_DWORD *)(v5 - 20);
    *(_DWORD *)(v6 - 16) = *(_DWORD *)(v5 - 16);
    *(_DWORD *)(v6 - 12) = *(_DWORD *)(v5 - 12);
    *(_DWORD *)(v6 - 8) = *(_DWORD *)(v5 - 8);
    *(_WORD *)(v6 - 4) = *(_WORD *)(v5 - 4);
    v10 = *(_WORD *)(v5 - 2);
    v5 += 28;
    *(_WORD *)(v6 - 2) = v10;
    v6 += 28;
  }
  while ( v7 );
  return a3 + 28 * v3;
}


// ===== 5a269c `global constructor keyed to'.._source_glitch_video_CBatchDriver.cpp =====
void `global constructor keyed to'.._source_glitch_video_CBatchDriver.cpp()
{
  dword_9F6970 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F696C = 1056964608;
}


// ===== 5a26bc glitch::scene::CAppendMeshBuffer::beginAppend(void) =====
int __fastcall glitch::scene::CAppendMeshBuffer::beginAppend(int this)
{
  int v1; // r4

  v1 = this;
  if ( !*(_DWORD *)(this + 80) )
  {
    *(_DWORD *)(this + 80) = glitch::video::IBuffer::map(*(_DWORD *)(this + 88), 4);
    this = glitch::video::IBuffer::map(*(_DWORD *)(v1 + 92), 4);
    *(_DWORD *)(v1 + 84) = this;
  }
  return this;
}


// ===== 5a26f8 std::vector<std::pair<uint,glitch::core::aabbox3d<float>>,glitch::core::SAllocator<std::pair<uint,glitch::core::aabbox3d<float>>,(glitch::memory::E_MEMORY_HINT)0>>::vector(uint) =====
_DWORD *__fastcall std::vector<std::pair<unsigned int,glitch::core::aabbox3d<float>>,glitch::core::SAllocator<std::pair<unsigned int,glitch::core::aabbox3d<float>>,(glitch::memory::E_MEMORY_HINT)0>>::vector(
        _DWORD *a1,
        int a2)
{
  int v2; // r6
  char *v4; // r0
  char *v5; // r6
  int v6; // r3
  char *v7; // r0

  v2 = 28 * a2;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = (char *)GlitchAlloc(28 * a2, 0);
  v5 = &v4[v2];
  *a1 = v4;
  a1[1] = v4;
  a1[2] = v5;
  v6 = -1227133513 * ((v5 - v4) >> 2);
  if ( v6 > 0 )
  {
    v7 = v4 + 28;
    do
    {
      --v6;
      *((_DWORD *)v7 - 7) = 0;
      *((_DWORD *)v7 - 6) = -1082130432;
      *((_DWORD *)v7 - 5) = -1082130432;
      *((_DWORD *)v7 - 4) = -1082130432;
      *((_DWORD *)v7 - 3) = 1065353216;
      *((_DWORD *)v7 - 2) = 1065353216;
      *((_DWORD *)v7 - 1) = 1065353216;
      v7 += 28;
    }
    while ( v6 );
  }
  a1[1] = v5;
  return a1;
}


// ===== 5a27a0 std::vector<glitch::core::vector3d<float>,glitch::core::SAllocator<glitch::core::vector3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::vector(std::vector<glitch::core::vector3d<float>,glitch::core::SAllocator<glitch::core::vector3d<float>,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
_DWORD *__fastcall std::vector<glitch::core::vector3d<float>,glitch::core::SAllocator<glitch::core::vector3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::vector(
        _DWORD *a1,
        _DWORD *a2)
{
  int v2; // r2
  _DWORD *v3; // r3
  size_t v6; // r6
  char *v7; // r0
  _DWORD *v8; // r3
  int v9; // r5
  int v10; // r1
  _DWORD *v11; // r2
  int v12; // r12

  v2 = a2[1];
  v3 = (_DWORD *)*a2;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = 4 * ((v2 - (int)v3) >> 2);
  v7 = (char *)GlitchAlloc(v6, 0);
  a1[2] = &v7[v6];
  *a1 = v7;
  a1[1] = v7;
  v8 = (_DWORD *)*a2;
  v9 = -1431655765 * ((a2[1] - *a2) >> 2);
  if ( v9 > 0 )
  {
    v10 = v9;
    v11 = v7;
    do
    {
      --v10;
      *v11 = *v8;
      v11[1] = v8[1];
      v12 = v8[2];
      v8 += 3;
      v11[2] = v12;
      v11 += 3;
    }
    while ( v10 );
    v7 += 12 * v9;
  }
  a1[1] = v7;
  return a1;
}


// ===== 5a2870 std::vector<glitch::core::vector3d<float>,glitch::core::SAllocator<glitch::core::vector3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::core::vector3d<float> const*>(uint &,glitch::core::vector3d<float> const*,glitch::core::vector3d<float> const*) =====
_DWORD *__fastcall std::vector<glitch::core::vector3d<float>,glitch::core::SAllocator<glitch::core::vector3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::core::vector3d<float> const*>(
        int a1,
        _DWORD *a2,
        _DWORD *a3,
        int a4)
{
  _DWORD *v4; // r4
  int v5; // r5
  _DWORD *result; // r0
  int v7; // r5
  _DWORD *v8; // r3
  int v9; // r2

  v4 = a3;
  v5 = a4 - (_DWORD)a3;
  result = GlitchAlloc(12 * *a2, 0);
  v7 = -1431655765 * (v5 >> 2);
  if ( v7 > 0 )
  {
    v8 = result;
    do
    {
      --v7;
      *v8 = *v4;
      v8[1] = v4[1];
      v9 = v4[2];
      v4 += 3;
      v8[2] = v9;
      v8 += 3;
    }
    while ( v7 );
  }
  return result;
}


// ===== 5a28e4 std::vector<glitch::core::vector3d<float>,glitch::core::SAllocator<glitch::core::vector3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::operator=(std::vector<glitch::core::vector3d<float>,glitch::core::SAllocator<glitch::core::vector3d<float>,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
_DWORD *__fastcall std::vector<glitch::core::vector3d<float>,glitch::core::SAllocator<glitch::core::vector3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
        _DWORD *a1,
        _DWORD *a2)
{
  char *v3; // r12
  _DWORD *v4; // r2
  int v5; // r3
  char *v6; // r8
  int v7; // r5
  int v8; // r6
  char *v9; // r10
  int v10; // r3
  _DWORD *v12; // r0
  int v13; // r6
  char *v14; // r2
  int v15; // r3
  int v16; // r3
  int v17; // r1
  char *v18; // r0
  int v19; // r3
  int v20; // [sp+4h] [bp-8h] BYREF

  if ( a2 != a1 )
  {
    v3 = (char *)*a1;
    v4 = (_DWORD *)*a2;
    v5 = a2[1];
    v6 = (char *)*a1;
    v7 = -1431655765 * ((v5 - *a2) >> 2);
    v8 = v7;
    if ( v7 > (unsigned int)(-1431655765 * ((a1[2] - *a1) >> 2)) )
    {
      v20 = -1431655765 * ((v5 - *a2) >> 2);
      v6 = (char *)std::vector<glitch::core::vector3d<float>,glitch::core::SAllocator<glitch::core::vector3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::core::vector3d<float> const*>(
                     (int)a1,
                     &v20,
                     v4,
                     v5);
      v18 = (char *)a1[1];
      if ( v18 != (char *)*a1 )
        v18 += -12 * ((715827883 * ((unsigned int)&v18[-*a1 - 12] >> 2)) & 0x3FFFFFFF) - 12;
      GlitchFree(v18);
      v19 = v20;
      *a1 = v6;
      a1[2] = &v6[12 * v19];
      goto LABEL_7;
    }
    v9 = (char *)a1[1];
    if ( v7 > (unsigned int)(-1431655765 * ((v9 - v3) >> 2)) )
    {
      v12 = &v4[(v9 - v3) >> 2];
      v13 = -1431655765 * ((4 * ((v9 - v3) >> 2)) >> 2);
      if ( v13 > 0 )
      {
        do
        {
          --v13;
          *(_DWORD *)v3 = *v4;
          *((_DWORD *)v3 + 1) = v4[1];
          v15 = v4[2];
          v4 += 3;
          *((_DWORD *)v3 + 2) = v15;
          v3 += 12;
        }
        while ( v13 );
        v14 = (char *)a1[1];
        v3 = (char *)*a1;
        v5 = a2[1];
        v12 = (_DWORD *)(*a2 + 4 * ((int)&v14[-*a1] >> 2));
      }
      else
      {
        v14 = v9;
      }
      v16 = -1431655765 * ((v5 - (int)v12) >> 2);
      if ( v16 <= 0 )
      {
        v6 = v3;
        goto LABEL_7;
      }
      do
      {
        --v16;
        *(_DWORD *)v14 = *v12;
        *((_DWORD *)v14 + 1) = v12[1];
        v17 = v12[2];
        v12 += 3;
        *((_DWORD *)v14 + 2) = v17;
        v14 += 12;
      }
      while ( v16 );
    }
    else
    {
      if ( v7 <= 0 )
      {
LABEL_7:
        a1[1] = &v6[12 * v7];
        return a1;
      }
      do
      {
        --v8;
        *(_DWORD *)v3 = *v4;
        *((_DWORD *)v3 + 1) = v4[1];
        v10 = v4[2];
        v4 += 3;
        *((_DWORD *)v3 + 2) = v10;
        v3 += 12;
      }
      while ( v8 );
    }
    v6 = (char *)*a1;
    goto LABEL_7;
  }
  return a1;
}


// ===== 5a2b18 glitch::video::copyVertex(ushort,boost::intrusive_ptr<glitch::video::CVertexStreams const> const&,boost::intrusive_ptr<glitch::video::CVertexStreams> const&,uchar const*,uchar *&,bool) =====
void *__fastcall glitch::video::copyVertex(void *result, int a2, int a3, int a4, void **a5, char a6)
{
  int v7; // r5
  _DWORD *v8; // r6
  int v9; // r9
  int v10; // r10
  int v11; // r8
  int v12; // r11
  int v13; // r0
  size_t v14; // r8
  int v15; // r3
  size_t v16; // r4
  void *v17; // [sp+8h] [bp-Ch]

  v17 = result;
  if ( a6 )
  {
    v16 = *(unsigned __int16 *)(*(_DWORD *)a2 + 34);
    result = memcpy(*a5, (const void *)(a4 + v16 * (_DWORD)result), v16);
    *a5 = (char *)*a5 + v16;
  }
  else if ( *(_DWORD *)(*(_DWORD *)a2 + 16) != *(_DWORD *)a2 + 20 )
  {
    v7 = *(_DWORD *)a2 + 36;
    do
    {
      v8 = *(_DWORD **)(v7 - 16);
      if ( v8 )
        ++v8[1];
      v9 = *(_DWORD *)(v7 - 12);
      v10 = *(unsigned __int16 *)(v7 - 6);
      v11 = *(unsigned __int16 *)(v7 - 4);
      v12 = *(unsigned __int16 *)(v7 - 2);
      v13 = glitch::video::IBuffer::map((int)v8, 1);
      v14 = v11 * glitch::video::detail::SVertexAttributeTypeInspection::ValueTypeSize[v10];
      memcpy(*a5, (const void *)(v13 + v9 + v12 * (_DWORD)v17), v14);
      result = v8;
      *a5 = (char *)*a5 + v14;
      if ( v8 )
        result = (void *)glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)v8);
      v15 = v7;
      v7 += 16;
    }
    while ( *(_DWORD *)(*(_DWORD *)a2 + 16) != v15 );
  }
  return result;
}


// ===== 5a2c2c boost::pool<boost::default_user_allocator_new_delete>::ordered_malloc_need_resize(void) =====
_DWORD *__fastcall boost::pool<boost::default_user_allocator_new_delete>::ordered_malloc_need_resize(int a1)
{
  unsigned int v1; // r7
  unsigned int v3; // r4
  unsigned int v4; // r0
  unsigned int v5; // r3
  unsigned int v6; // r7
  int v7; // r10
  int v8; // r8
  unsigned int v9; // r5
  unsigned int v10; // r0
  _DWORD *v11; // r12
  int v12; // r7
  _DWORD *v13; // r2
  _DWORD *v14; // r0
  _DWORD *v15; // r3
  char *v16; // r1
  unsigned int v17; // r3
  int *v18; // r2
  unsigned int v19; // r3
  unsigned int *i; // r1
  int v21; // r12
  int *v22; // r4
  _DWORD *result; // r0
  _DWORD *v24; // r1

  v1 = *(_DWORD *)(a1 + 12);
  v3 = 4;
  v4 = v1;
  do
  {
    v5 = v3;
    v3 = v4 % v3;
    v4 = v5;
  }
  while ( v3 );
  v6 = 4 * (v1 / v5);
  v7 = *(_DWORD *)(a1 + 16) * v6;
  v8 = v7 + 8;
  v9 = operator new[](v7 + 8, (const std::nothrow_t *)&std::nothrow);
  if ( !v9 )
    return nullptr;
  *(_DWORD *)(a1 + 16) *= 2;
  v10 = v6 * ((v7 - v6) / v6);
  v11 = (_DWORD *)(v9 + v10);
  *(_DWORD *)(v9 + v10) = *(_DWORD *)a1;
  if ( v9 != v9 + v10 )
  {
    v12 = -v6;
    v13 = (_DWORD *)((char *)v11 + v12);
    if ( (_DWORD *)v9 == (_DWORD *)((char *)v11 + v12) )
    {
      v14 = (_DWORD *)v9;
    }
    else
    {
      v15 = (_DWORD *)((char *)v13 + v12);
      v16 = (char *)v13 + v12;
      while ( 1 )
      {
        v16 += v12;
        *v13 = v11;
        v14 = v15;
        if ( (char *)v9 == &v16[-v12] )
          break;
        v11 = v13;
        v13 = v15;
        v15 = (_DWORD *)((char *)v15 + v12);
      }
      v11 = v13;
    }
    *v14 = v11;
  }
  v17 = *(_DWORD *)(a1 + 4);
  *(_DWORD *)a1 = v9;
  if ( v17 && v9 >= v17 )
  {
    v18 = (int *)(v17 + *(_DWORD *)(a1 + 8) - 4);
    v19 = *(v18 - 1);
    for ( i = (unsigned int *)(v18 - 1); v19 && v19 <= v9; i = (unsigned int *)(v18 - 1) )
    {
      v18 = (int *)(v19 + *v18 - 4);
      v19 = *(v18 - 1);
    }
    v21 = *v18;
    v22 = (int *)(v9 + v7 + 4);
    *(v22 - 1) = v19;
    *v22 = v21;
    *i = v9;
    *v18 = v8;
    result = *(_DWORD **)a1;
    *(_DWORD *)a1 = **(_DWORD **)a1;
  }
  else
  {
    v24 = (_DWORD *)(v9 + v7 + 4);
    *(v24 - 1) = v17;
    *v24 = *(_DWORD *)(a1 + 8);
    result = *(_DWORD **)a1;
    *(_DWORD *)(a1 + 4) = v9;
    *(_DWORD *)(a1 + 8) = v8;
    *(_DWORD *)a1 = *result;
  }
  return result;
}


// ===== 5a2dd4 boost::object_pool<glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdNode,boost::default_user_allocator_new_delete>::construct(void) =====
_DWORD *__fastcall boost::object_pool<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdNode,boost::default_user_allocator_new_delete>::construct(
        _DWORD *a1)
{
  _DWORD *v1; // r3

  v1 = (_DWORD *)*a1;
  if ( *a1 )
    *a1 = *v1;
  else
    v1 = boost::pool<boost::default_user_allocator_new_delete>::ordered_malloc_need_resize((int)a1);
  if ( v1 )
  {
    v1[5] = 0;
    *v1 = 0;
    v1[1] = 0;
    v1[2] = 0;
    v1[4] = 0;
  }
  return v1;
}


// ===== 5a2e20 glitch::video::CBatchDriver::CBatchDriver(uint,uint,glitch::video::IVideoDriver *) =====
glitch::video::CBatchDriver *__fastcall glitch::video::CBatchDriver::CBatchDriver(
        glitch::video::CBatchDriver *this,
        unsigned int a2,
        unsigned int a3,
        glitch::video::IVideoDriver *a4)
{
  int v8; // r6
  int v9; // r3
  int v10; // r2

  glitch::video::CNullDriver::CNullDriver(this, a4);
  v8 = 0;
  *((_DWORD *)this + 150) = 0;
  *(_DWORD *)this = off_977108;
  *((_DWORD *)this + 148) = 0;
  *((_DWORD *)this + 149) = 0;
  *((_DWORD *)this + 139) = a2;
  *((_DWORD *)this + 140) = a3;
  *((_DWORD *)this + 141) = 0;
  *((_DWORD *)this + 142) = 0;
  *((_DWORD *)this + 143) = 0;
  *((_DWORD *)this + 144) = 0;
  *((_DWORD *)this + 146) = 0;
  *((_DWORD *)this + 151) = 0;
  glitch::video::IVideoDriver::setOption(this, 0x100u, 1);
  v9 = *((_DWORD *)this + 39);
  do
  {
    v10 = 1 << (v8++ & 0x1F);
    if ( (v10 & *((_DWORD *)a4 + 39)) != 0 )
      v9 |= v10;
    else
      v9 &= ~v10;
    *((_DWORD *)this + 39) = v9;
  }
  while ( v8 != 25 );
  return this;
}


// ===== 5a2ed8 glitch::video::CBatchDriver::CBatchDriver(uint,uint,glitch::video::IVideoDriver *) =====
glitch::video::CBatchDriver *__fastcall glitch::video::CBatchDriver::CBatchDriver(
        glitch::video::CBatchDriver *this,
        unsigned int a2,
        unsigned int a3,
        glitch::video::IVideoDriver *a4)
{
  int v8; // r6
  int v9; // r3
  int v10; // r2

  glitch::video::CNullDriver::CNullDriver(this, a4);
  v8 = 0;
  *((_DWORD *)this + 150) = 0;
  *(_DWORD *)this = off_977108;
  *((_DWORD *)this + 148) = 0;
  *((_DWORD *)this + 149) = 0;
  *((_DWORD *)this + 139) = a2;
  *((_DWORD *)this + 140) = a3;
  *((_DWORD *)this + 141) = 0;
  *((_DWORD *)this + 142) = 0;
  *((_DWORD *)this + 143) = 0;
  *((_DWORD *)this + 144) = 0;
  *((_DWORD *)this + 146) = 0;
  *((_DWORD *)this + 151) = 0;
  glitch::video::IVideoDriver::setOption(this, 0x100u, 1);
  v9 = *((_DWORD *)this + 39);
  do
  {
    v10 = 1 << (v8++ & 0x1F);
    if ( (v10 & *((_DWORD *)a4 + 39)) != 0 )
      v9 |= v10;
    else
      v9 &= ~v10;
    *((_DWORD *)this + 39) = v9;
  }
  while ( v8 != 25 );
  return this;
}


// ===== 5a2f90 std::vector<std::pair<uint,glitch::core::aabbox3d<float>>,glitch::core::SAllocator<std::pair<uint,glitch::core::aabbox3d<float>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(std::pair<uint,glitch::core::aabbox3d<float>>*,std::pair<uint,glitch::core::aabbox3d<float>> const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<std::pair<unsigned int,glitch::core::aabbox3d<float>>,glitch::core::SAllocator<std::pair<unsigned int,glitch::core::aabbox3d<float>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        void **a1,
        int a2,
        _DWORD *a3)
{
  unsigned int v6; // r0
  unsigned int v7; // r2
  size_t v8; // r6
  _DWORD *v9; // r0
  _DWORD *v10; // r8
  int v11; // r5
  _DWORD *v12; // r12
  int v13; // r2
  char *v14; // r3
  int v15; // r1
  int v16; // r0
  _DWORD *v17; // r5
  char *v18; // r0

  v6 = -1227133513 * (((_BYTE *)a1[1] - (_BYTE *)*a1) >> 2);
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 <= 0x9249249 && v6 <= v7 )
    v8 = 7 * v7;
  else
    v8 = -1;
  v9 = GlitchAlloc(v8 * 4, 0);
  v10 = v9;
  v11 = (a2 - (int)*a1) >> 2;
  if ( -1227133513 * v11 > 0 )
  {
    v13 = (int)*a1 + 28;
    v14 = (char *)(v9 + 7);
    v15 = -1227133513 * v11;
    do
    {
      --v15;
      *((_DWORD *)v14 - 7) = *(_DWORD *)(v13 - 28);
      *((_DWORD *)v14 - 6) = *(_DWORD *)(v13 - 24);
      *((_DWORD *)v14 - 5) = *(_DWORD *)(v13 - 20);
      *((_DWORD *)v14 - 4) = *(_DWORD *)(v13 - 16);
      *((_DWORD *)v14 - 3) = *(_DWORD *)(v13 - 12);
      *((_DWORD *)v14 - 2) = *(_DWORD *)(v13 - 8);
      v16 = *(_DWORD *)(v13 - 4);
      v13 += 28;
      *((_DWORD *)v14 - 1) = v16;
      v14 += 28;
    }
    while ( v15 );
    v12 = &v10[v11];
  }
  else
  {
    v12 = v9;
  }
  v17 = v12 + 7;
  *v12 = *a3;
  v12[1] = a3[1];
  v12[2] = a3[2];
  v12[3] = a3[3];
  v12[4] = a3[4];
  v12[5] = a3[5];
  v12[6] = a3[6];
  v18 = (char *)a1[1];
  if ( v18 != *a1 )
    v18 += -28 * ((920350135 * ((unsigned int)(v18 - 28 - (_BYTE *)*a1) >> 2)) & 0x3FFFFFFF) - 28;
  GlitchFree(v18);
  a1[1] = v17;
  a1[2] = &v10[v8];
  *a1 = v10;
}


// ===== 5a3120 glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::addElemInternal(std::pair<uint,glitch::core::aabbox3d<float>> const&,glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdNode *,uint,glitch::core::aabbox3d<float> const&) =====
void __fastcall glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::addElemInternal(
        int a1,
        int a2,
        int a3,
        int a4,
        float *a5)
{
  int v8; // r4
  int v9; // r9
  int v10; // r12
  int v11; // lr
  int v12; // r11
  float v13; // r1
  char v14; // r9
  _DWORD *v15; // r1
  _DWORD *v16; // r0
  _DWORD *v17; // r0
  float v18; // [sp+14h] [bp-40h]
  float v19; // [sp+14h] [bp-40h]
  float v20; // [sp+18h] [bp-3Ch]
  float v21; // [sp+18h] [bp-3Ch]
  int v22; // [sp+1Ch] [bp-38h]
  _DWORD v23[6]; // [sp+20h] [bp-34h] BYREF
  float v24[3]; // [sp+38h] [bp-1Ch]
  float v25[4]; // [sp+44h] [bp-10h]

  if ( a4 )
  {
    v8 = *(char *)(a3 + 24);
    v9 = *((_DWORD *)a5 + 3);
    v10 = *((_DWORD *)a5 + 1);
    v11 = *((_DWORD *)a5 + 2);
    v12 = *((_DWORD *)a5 + 4);
    v22 = *((_DWORD *)a5 + 5);
    v13 = *(float *)(a3 + 12);
    *(float *)v23 = *a5;
    v23[3] = v9;
    v23[5] = v22;
    v23[1] = v10;
    v23[2] = v11;
    v23[4] = v12;
    v14 = (v8 + 1) % 3;
    if ( glitch::lessThanPlane((float *)a2, v13, v8) )
    {
      if ( !*(_DWORD *)(a3 + 16) )
      {
        v16 = boost::object_pool<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdNode,boost::default_user_allocator_new_delete>::construct((_DWORD *)(a1 + 28));
        *(_DWORD *)(a3 + 16) = v16;
        v18 = (float)(a5[1] + a5[4]) * 0.5;
        v20 = (float)(a5[2] + a5[5]) * 0.5;
        v25[0] = (float)(*a5 + a5[3]) * 0.5;
        v25[1] = v18;
        v25[2] = v20;
        v16[3] = LODWORD(v25[v14]);
        *(_BYTE *)(*(_DWORD *)(a3 + 16) + 24) = v14;
      }
      v23[v8 + 3] = *(_DWORD *)(a3 + 12);
      glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::addElemInternal(a1, a2);
    }
    else
    {
      if ( !*(_DWORD *)(a3 + 20) )
      {
        v17 = boost::object_pool<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdNode,boost::default_user_allocator_new_delete>::construct((_DWORD *)(a1 + 28));
        *(_DWORD *)(a3 + 20) = v17;
        v19 = (float)(a5[1] + a5[4]) * 0.5;
        v21 = (float)(a5[2] + a5[5]) * 0.5;
        v24[0] = (float)(*a5 + a5[3]) * 0.5;
        v24[1] = v19;
        v24[2] = v21;
        v17[3] = LODWORD(v24[v14]);
        *(_BYTE *)(*(_DWORD *)(a3 + 20) + 24) = v14;
      }
      v23[v8] = *(_DWORD *)(a3 + 12);
      glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::addElemInternal(a1, a2);
    }
  }
  else
  {
    v15 = *(_DWORD **)(a3 + 4);
    if ( v15 == *(_DWORD **)(a3 + 8) )
    {
      std::vector<std::pair<unsigned int,glitch::core::aabbox3d<float>>,glitch::core::SAllocator<std::pair<unsigned int,glitch::core::aabbox3d<float>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        (void **)a3,
        (int)v15,
        (_DWORD *)a2);
    }
    else
    {
      *v15 = *(_DWORD *)a2;
      v15[1] = *(_DWORD *)(a2 + 4);
      v15[2] = *(_DWORD *)(a2 + 8);
      v15[3] = *(_DWORD *)(a2 + 12);
      v15[4] = *(_DWORD *)(a2 + 16);
      v15[5] = *(_DWORD *)(a2 + 20);
      v15[6] = *(_DWORD *)(a2 + 24);
      *(_DWORD *)(a3 + 4) += 28;
    }
  }
}


// ===== 5a33a8 glitch::video::distributeMeans(uint,glitch::core::aabbox3d<float> const&,std::vector<glitch::core::vector3d<float>,glitch::core::SAllocator<glitch::core::vector3d<float>,(glitch::memory::E_MEMORY_HINT)0>> &,uint,uint &) =====
void __fastcall glitch::video::distributeMeans(int a1, float *a2, _DWORD *a3, int a4, _DWORD *a5)
{
  float v9; // r3
  float v10; // r10
  float v11; // r8
  float v12; // r9
  float v13; // r7
  float v14; // r10
  unsigned int v15; // r8
  float v16; // r11
  float v17; // r9
  float v18; // r10
  float v19; // r11
  float v20; // r8
  float v21; // r0
  float *v22; // r3
  float *v23; // r5
  float v24; // r7
  unsigned int v25; // r2
  unsigned int v26; // r1
  size_t v27; // r10
  _DWORD *v28; // r0
  char *v29; // r3
  _DWORD *v30; // r9
  int v31; // r2
  int v32; // r12
  float *v33; // r5
  int v34; // r1
  _DWORD *v35; // r2
  int v36; // r0
  char *v37; // r0
  float *v38; // r5
  float v39; // [sp+Ch] [bp-50h]
  _DWORD v40[6]; // [sp+10h] [bp-4Ch] BYREF
  float v41; // [sp+28h] [bp-34h] BYREF
  float v42; // [sp+2Ch] [bp-30h]
  float v43; // [sp+30h] [bp-2Ch]
  float v44; // [sp+34h] [bp-28h]
  float v45; // [sp+38h] [bp-24h]
  float v46; // [sp+3Ch] [bp-20h]
  float v47[3]; // [sp+40h] [bp-1Ch]
  float v48[4]; // [sp+4Ch] [bp-10h]

  if ( a1 )
  {
    if ( *a5 )
    {
      v9 = a2[4];
      v10 = a2[5];
      v11 = *a2;
      v12 = a2[2];
      v13 = a2[3];
      v42 = a2[1];
      *(float *)&v40[1] = v42;
      v45 = v9;
      *(float *)&v40[4] = v9;
      v41 = v11;
      v44 = v13;
      v46 = v10;
      *(float *)v40 = v11;
      *(float *)&v40[3] = v13;
      *(float *)&v40[5] = v10;
      v43 = v12;
      *(float *)&v40[2] = v12;
      v39 = (float)(v42 + v9) * 0.5;
      v14 = (float)(v12 + v10) * 0.5;
      v48[0] = (float)(v11 + v13) * 0.5;
      v48[1] = v39;
      v48[2] = v14;
      *(&v41 + a4 + 3) = v48[a4];
      v47[0] = (float)(v11 + v13) * 0.5;
      v47[1] = v39;
      v47[2] = v14;
      v15 = (a4 + 1) % 3u;
      v40[a4] = LODWORD(v47[a4]);
      glitch::video::distributeMeans(a1 - 1, &v41, a3, v15, a5);
      glitch::video::distributeMeans(a1 - 1, v40, a3, v15, a5);
    }
  }
  else if ( *a5 )
  {
    v16 = (float)lrand48() * 4.6566e-10;
    v17 = (float)lrand48() * 4.6566e-10;
    v18 = (float)lrand48() * 4.6566e-10;
    v19 = *a2 + (float)(v16 * (float)(a2[3] - *a2));
    v20 = a2[1] + (float)(v17 * (float)(a2[4] - a2[1]));
    v21 = a2[2] + (float)(v18 * (float)(a2[5] - a2[2]));
    v22 = (float *)a3[1];
    v23 = (float *)a3[2];
    v24 = v21;
    if ( v22 == v23 )
    {
      v25 = -1431655765 * (((int)v23 - *a3) >> 2);
      if ( v25 )
        v26 = 1431655766 * (((int)v23 - *a3) >> 2);
      else
        v26 = 1;
      if ( v26 > 0x15555555 || v25 > v26 )
        v27 = -1;
      else
        v27 = 3 * v26;
      v28 = GlitchAlloc(v27 * 4, 0);
      v29 = (char *)*a3;
      v30 = v28;
      v31 = ((int)v23 - *a3) >> 2;
      v32 = -1431655765 * v31;
      if ( -1431655765 * v31 > 0 )
      {
        v34 = -1431655765 * v31;
        v35 = v28;
        do
        {
          --v34;
          *v35 = *(_DWORD *)v29;
          v35[1] = *((_DWORD *)v29 + 1);
          v36 = *((_DWORD *)v29 + 2);
          v29 += 12;
          v35[2] = v36;
          v35 += 3;
        }
        while ( v34 );
        v33 = (float *)&v30[3 * v32];
      }
      else
      {
        v33 = (float *)v28;
      }
      *v33 = v19;
      v33[1] = v20;
      v33[2] = v24;
      v37 = (char *)a3[1];
      v38 = v33 + 3;
      if ( v37 != (char *)*a3 )
        v37 += -12 * ((715827883 * ((unsigned int)&v37[-*a3 - 12] >> 2)) & 0x3FFFFFFF) - 12;
      GlitchFree(v37);
      a3[1] = v38;
      a3[2] = &v30[v27];
      *a3 = v30;
    }
    else
    {
      v22[2] = v21;
      *v22 = v19;
      v22[1] = v20;
      a3[1] += 12;
    }
    --*a5;
  }
}


// ===== 5a3738 std::__push_heap<glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance *,int,glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance,std::less<glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance>>(glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance *,int,int,glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance,std::less<glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance>) [clone] =====
int __fastcall std::__push_heap<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance *,int,glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance,std::less<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance>>(
        int result,
        int a2,
        float a3,
        int a4)
{
  int v4; // r5
  int v5; // r4
  int v6; // r6
  _DWORD *v7; // r8
  int v8; // r7

  v4 = a2;
  v5 = result;
  if ( a2 <= 0 || (v6 = (a2 - 1) >> 1, result = a3 > *(float *)(result + 8 * v6), a3 <= *(float *)(v5 + 8 * v6)) )
  {
    v7 = (_DWORD *)(v5 + 8 * a2);
  }
  else
  {
    while ( 1 )
    {
      v7 = (_DWORD *)(v5 + 8 * v6);
      *(_DWORD *)(v5 + 8 * v4) = *v7;
      v8 = (v6 - 1) >> 1;
      *(_DWORD *)(v5 + 8 * v4 + 4) = v7[1];
      if ( !v6 )
        break;
      result = *(float *)(v5 + 8 * v8) < a3;
      if ( *(float *)(v5 + 8 * v8) >= a3 )
        break;
      v4 = v6;
      v6 = (v6 - 1) >> 1;
    }
  }
  *(float *)v7 = a3;
  v7[1] = a4;
  return result;
}


// ===== 5a37d4 std::__push_heap_aux<glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance *,std::less<glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance>,int,glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance>(glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance *,glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance *,std::less<glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance>,int *,glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance *) =====
int __fastcall std::__push_heap_aux<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance *,std::less<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance>,int,glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance>(
        int a1,
        int a2)
{
  return std::__push_heap<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance *,int,glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance,std::less<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance>>(
           a1,
           ((a2 - a1) >> 3) - 1,
           *(float *)(a2 - 8),
           *(_DWORD *)(a2 - 4));
}


// ===== 5a3814 std::__pop_heap_aux<glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance *,glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance,std::less<glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance>>(glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance *,glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance *,glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance *,std::less<glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance>) =====
int __fastcall std::__pop_heap_aux<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance *,glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance,std::less<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance>>(
        int *a1,
        int a2)
{
  int v2; // r3
  float v3; // r12
  int v5; // r0
  int v6; // r8
  int i; // r4
  int v8; // r2
  int v9; // r6
  int v10; // r7
  float *v11; // r3
  int *v12; // r1
  int v14; // r8
  int *v15; // r3

  v2 = *a1;
  v3 = *(float *)(a2 - 8);
  v5 = *(_DWORD *)(a2 - 4);
  *(_DWORD *)(a2 - 8) = v2;
  v6 = (a2 - 8 - (int)a1) >> 3;
  *(_DWORD *)(a2 - 4) = a1[1];
  if ( v6 > 2 )
  {
    v9 = 0;
    for ( i = 2; ; i = 2 * (i + 1) )
    {
      v10 = i - 1;
      v11 = (float *)&a1[2 * i];
      if ( *v11 < *(float *)&a1[2 * i - 2] )
      {
        --i;
        v11 = (float *)&a1[2 * v10];
      }
      v8 = 2 * (i + 1);
      a1[2 * v9] = *(_DWORD *)v11;
      v12 = &a1[2 * v9];
      v9 = i;
      v12[1] = *((_DWORD *)v11 + 1);
      if ( v6 <= v8 )
        break;
    }
  }
  else
  {
    i = 0;
    v8 = 2;
  }
  if ( v6 == v8 )
  {
    v14 = v6 - 1;
    v15 = &a1[2 * i];
    *v15 = a1[2 * v14];
    i = v14;
    v15[1] = a1[2 * v14 + 1];
  }
  return std::__push_heap<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance *,int,glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance,std::less<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance>>(
           (int)a1,
           i,
           v3,
           v5);
}


// ===== 5a3904 boost::object_pool<glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdNode,boost::default_user_allocator_new_delete>::~object_pool() =====
void ***__fastcall boost::object_pool<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdNode,boost::default_user_allocator_new_delete>::~object_pool(
        void ***a1)
{
  void **v1; // r5
  void **v3; // r8
  void **v4; // r10
  void **v5; // r4
  unsigned int v6; // r6
  unsigned int v7; // r0
  unsigned int v8; // r3
  int v9; // r0
  void **v10; // r3
  int v11; // r8
  void **v12; // r2
  void ***v13; // r1
  char *v14; // r11
  void **v15; // r10
  void **v16; // r9
  void **v17; // r6
  void **v19; // [sp+4h] [bp-8h]

  v1 = a1[1];
  if ( v1 )
  {
    v3 = a1[3];
    v4 = a1[2];
    v5 = *a1;
    v6 = 4;
    v7 = (unsigned int)v3;
    do
    {
      v8 = v6;
      v6 = v7 % v6;
      v7 = v8;
    }
    while ( v6 );
    v9 = (unsigned int)v3 / v8;
    v10 = v4;
    v11 = 4 * v9;
    v12 = v1;
    while ( 1 )
    {
      v13 = (void ***)((char *)v10 + (_DWORD)v12 - 4);
      v14 = (char *)(v13 - 1);
      v19 = *v13;
      v15 = *(v13 - 1);
      if ( v13 - 1 != (void ***)v1 )
      {
        v16 = &v1[v11 / 4u];
        v17 = v1;
        do
        {
          if ( v17 == v5 )
          {
            v5 = (void **)*v17;
          }
          else if ( *v17 )
          {
            GlitchFree(*v17);
          }
          v16 = (void **)((char *)v16 + v11);
          v17 = (void **)((char *)v17 + v11);
        }
        while ( v14 != (char *)&v16[v11 / 0xFFFFFFFC] );
      }
      operator delete[](v1);
      v12 = v15;
      v10 = v19;
      if ( !v15 )
        break;
      v1 = v15;
    }
    a1[1] = nullptr;
  }
  return a1;
}


// ===== 5a39e8 std::priv::_Rb_tree<ushort,std::less<ushort>,std::pair<ushort const,ushort>,std::priv::_Select1st<std::pair<ushort const,ushort>>,std::priv::_MapTraitsT<std::pair<ushort const,ushort>>,std::allocator<std::pair<ushort const,ushort>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,unsigned short>,std::priv::_Select1st<std::pair<unsigned short const,unsigned short>>,std::priv::_MapTraitsT<std::pair<unsigned short const,unsigned short>>,std::allocator<std::pair<unsigned short const,unsigned short>>>::_M_erase(
        int a1,
        _DWORD *a2)
{
  _DWORD *v2; // r4
  _DWORD *v4; // r5

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,unsigned short>,std::priv::_Select1st<std::pair<unsigned short const,unsigned short>>,std::priv::_MapTraitsT<std::pair<unsigned short const,unsigned short>>,std::allocator<std::pair<unsigned short const,unsigned short>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x14u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 5a3a20 glitch::video::CBatchDriver::flush(void) =====
int __fastcall glitch::video::CBatchDriver::flush(glitch::video::CBatchDriver *this)
{
  glitch::scene::CAppendMeshBuffer *v1; // r5
  _BYTE *v3; // r6
  char v4; // r3
  _BYTE *v5; // r6
  char v6; // r3
  char v7; // r2
  int v8; // r3

  v1 = *((glitch::scene::CAppendMeshBuffer **)this + 72);
  if ( *((_DWORD *)v1 + 20) )
  {
    v3 = *((_BYTE **)v1 + 22);
    v4 = v3[19];
    if ( (v4 & 0x1Fu) <= 1 )
    {
      if ( (v3[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 24))(*((_DWORD *)v1 + 22));
      v3[19] = 0;
      v5 = *((_BYTE **)v1 + 23);
      v6 = v5[19];
      v7 = v6 & 0x1F;
      if ( (v6 & 0x1Fu) > 1 )
        goto LABEL_4;
    }
    else
    {
      v3[19] = ((v4 & 0x1F) - 1) | v4 & 0xE0;
      v5 = *((_BYTE **)v1 + 23);
      v6 = v5[19];
      v7 = v6 & 0x1F;
      if ( (v6 & 0x1Fu) > 1 )
      {
LABEL_4:
        v5[19] = (v7 - 1) | v6 & 0xE0;
LABEL_5:
        *((_DWORD *)v1 + 21) = 0;
        *((_DWORD *)v1 + 20) = 0;
        v1 = *((glitch::scene::CAppendMeshBuffer **)this + 72);
        goto LABEL_6;
      }
    }
    if ( (v5[18] & 0x20) != 0 )
      (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)v5 + 24))(v5);
    v5[19] = 0;
    goto LABEL_5;
  }
LABEL_6:
  v8 = *((_DWORD *)this + 141);
  if ( v8 && *((_DWORD *)v1 + 15) )
  {
    (*(void (__fastcall **)(_DWORD, glitch::scene::CAppendMeshBuffer *, char *))(*(_DWORD *)v8 + 8))(
      *((_DWORD *)this + 141),
      v1,
      (char *)this + 292);
    v1 = *((glitch::scene::CAppendMeshBuffer **)this + 72);
  }
  return glitch::scene::CAppendMeshBuffer::clear(v1);
}


// ===== 5a3b38 std::vector<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>,glitch::video::CPrimitiveStream>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>,glitch::video::CPrimitiveStream>>>::_M_clear_after_move(void) =====
void __fastcall std::vector<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>,glitch::video::CPrimitiveStream>>::_M_clear_after_move(
        void **a1)
{
  char *v2; // r6
  char *v3; // r0
  char *v4; // r4
  glitch::IReferenceCounted *v5; // r0
  glitch::video::CVertexStreams *v6; // r5
  size_t v8; // r1

  v2 = (char *)*a1;
  v3 = (char *)a1[1];
  if ( v3 != v2 )
  {
    v4 = v3;
    do
    {
      v5 = *((glitch::IReferenceCounted **)v4 - 6);
      if ( v5 )
        glitch::IReferenceCounted::drop(v5);
      v6 = *((glitch::video::CVertexStreams **)v4 - 7);
      v4 -= 28;
      if ( v6 )
      {
        if ( (*(_DWORD *)v6)-- == 1 )
        {
          glitch::video::CVertexStreams::~CVertexStreams(v6);
          LC_API_FREE_0(v6);
        }
      }
    }
    while ( v2 != v4 );
    v3 = (char *)*a1;
  }
  if ( v3 )
  {
    v8 = 4 * (((_BYTE *)a1[2] - v3) >> 2);
    if ( v8 > 0x80 )
      LC_API_FREE_0(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v8);
  }
}


// ===== 5a3bf4 std::vector<std::pair<uint,glitch::core::aabbox3d<float>>,std::allocator<std::pair<uint,glitch::core::aabbox3d<float>>>>::~vector() =====
int __fastcall std::vector<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::~vector(int a1)
{
  void *v2; // r0
  size_t v3; // r1

  v2 = *(void **)a1;
  if ( !v2 )
    return a1;
  v3 = 4 * ((*(_DWORD *)(a1 + 8) - (int)v2) >> 2);
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
    return a1;
  }
  LC_API_FREE_0(v2);
  return a1;
}


// ===== 5a3c54 std::vector<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>,glitch::video::CPrimitiveStream>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>,glitch::video::CPrimitiveStream>>>::~vector() =====
void **__fastcall std::vector<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>,glitch::video::CPrimitiveStream>>::~vector(
        void **a1)
{
  char *v1; // r5
  char *v2; // r7
  glitch::IReferenceCounted *v4; // r0
  glitch::video::CVertexStreams *v5; // r6
  _BYTE *v7; // r0
  size_t v8; // r1

  v1 = (char *)a1[1];
  v2 = (char *)*a1;
  if ( v1 != *a1 )
  {
    do
    {
      v4 = *((glitch::IReferenceCounted **)v1 - 6);
      if ( v4 )
        glitch::IReferenceCounted::drop(v4);
      v5 = *((glitch::video::CVertexStreams **)v1 - 7);
      v1 -= 28;
      if ( v5 )
      {
        if ( (*(_DWORD *)v5)-- == 1 )
        {
          glitch::video::CVertexStreams::~CVertexStreams(v5);
          LC_API_FREE_0(v5);
        }
      }
    }
    while ( v2 != v1 );
  }
  v7 = *a1;
  if ( !*a1 )
    return a1;
  v8 = 4 * (((_BYTE *)a1[2] - v7) >> 2);
  if ( v8 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v7, v8);
    return a1;
  }
  LC_API_FREE_0(v7);
  return a1;
}


// ===== 5a3d10 std::vector<glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance,std::allocator<glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance>>::~vector() =====
int __fastcall std::vector<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance,std::allocator<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance>>::~vector(
        int a1)
{
  void *v2; // r0
  size_t v3; // r1

  v2 = *(void **)a1;
  if ( !v2 )
    return a1;
  v3 = (*(_DWORD *)(a1 + 8) - (_DWORD)v2) & 0xFFFFFFF8;
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
    return a1;
  }
  LC_API_FREE_0(v2);
  return a1;
}


// ===== 5a3d50 glitch::video::CBatchDriver::~CBatchDriver() =====
void __fastcall glitch::video::CBatchDriver::~CBatchDriver(glitch::video::CBatchDriver *this)
{
  glitch::IReferenceCounted *v2; // r0
  glitch::video::CVertexStreams *v3; // r5
  bool v4; // zf

  v2 = *((glitch::IReferenceCounted **)this + 146);
  *(_DWORD *)this = off_977108;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  v3 = *((glitch::video::CVertexStreams **)this + 144);
  if ( v3 && (v4 = *(_DWORD *)v3 == 1, --*(_DWORD *)v3, v4) )
  {
    glitch::video::CVertexStreams::~CVertexStreams(v3);
    LC_API_FREE_0(v3);
    glitch::video::CNullDriver::~CNullDriver(this);
  }
  else
  {
    glitch::video::CNullDriver::~CNullDriver(this);
  }
}


// ===== 5a3dd8 glitch::video::CBatchDriver::~CBatchDriver() =====
void __fastcall glitch::video::CBatchDriver::~CBatchDriver(glitch::video::CBatchDriver *this)
{
  glitch::video::CBatchDriver::~CBatchDriver(this);
  LC_API_FREE_0(this);
}


// ===== 5a3df4 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,std::vector<uint,std::allocator<uint>>>,std::priv::_Select1st<std::pair<uint const,std::vector<uint,std::allocator<uint>>>>,std::priv::_MapTraitsT<std::pair<uint const,std::vector<uint,std::allocator<uint>>>>,std::allocator<std::pair<uint const,std::vector<uint,std::allocator<uint>>>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::vector<unsigned int>>,std::priv::_Select1st<std::pair<unsigned int const,std::vector<unsigned int>>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::vector<unsigned int>>>,std::allocator<std::pair<unsigned int const,std::vector<unsigned int>>>>::_M_erase(
        int a1,
        _DWORD *a2)
{
  _DWORD *v2; // r4
  void *v4; // r3
  _DWORD *v5; // r5
  size_t v6; // r1

  v2 = a2;
  if ( a2 )
  {
    while ( 1 )
    {
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::vector<unsigned int>>,std::priv::_Select1st<std::pair<unsigned int const,std::vector<unsigned int>>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::vector<unsigned int>>>,std::allocator<std::pair<unsigned int const,std::vector<unsigned int>>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (void *)v2[5];
      v5 = (_DWORD *)v2[2];
      if ( !v4 )
        goto LABEL_4;
      v6 = (v2[7] - (_DWORD)v4) & 0xFFFFFFFC;
      if ( v6 <= 0x80 )
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v6);
LABEL_4:
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x20u);
        v2 = v5;
        if ( !v5 )
          return;
      }
      else
      {
        LC_API_FREE_0(v4);
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x20u);
        v2 = v5;
        if ( !v5 )
          return;
      }
    }
  }
}


// ===== 5a3e74 std::basic_stringbuf<char,std::char_traits<char>,std::allocator<char>>::str(std::string const&) =====
__int64 __fastcall std::stringbuf::str(int a1, std::string *a2)
{
  std::string *v3; // r0
  int v4; // r3
  __int64 result; // r0
  int v6; // r2
  int v7; // r12

  v3 = (std::string *)(a1 + 36);
  if ( v3 != a2 )
    std::string::_M_assign(v3, a2->_M_start_of_storage._M_data, a2->_M_finish);
  v4 = *(_DWORD *)(a1 + 32);
  result = *(_QWORD *)(a1 + 52);
  v6 = *(_DWORD *)(a1 + 52);
  if ( (v4 & 8) != 0 )
  {
    if ( (v4 & 2) != 0 )
      v7 = *(_DWORD *)(a1 + 52);
    else
      v7 = *(_DWORD *)(a1 + 56);
    *(_DWORD *)(a1 + 4) = HIDWORD(result);
    *(_DWORD *)(a1 + 8) = v7;
    *(_DWORD *)(a1 + 12) = result;
  }
  if ( (v4 & 0x10) != 0 )
  {
    if ( (v4 & 3) != 0 )
    {
      *(_DWORD *)(a1 + 24) = v6;
      *(_DWORD *)(a1 + 16) = v6;
      *(_DWORD *)(a1 + 20) = v6;
    }
    else
    {
      *(_DWORD *)(a1 + 20) = result;
      *(_DWORD *)(a1 + 16) = HIDWORD(result);
      *(_DWORD *)(a1 + 24) = v6;
    }
  }
  return result;
}


// ===== 5a3ef0 std::priv::__find_if<std::pair<uint,glitch::core::aabbox3d<float>> *,glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SEqPredicate>(std::pair<uint,glitch::core::aabbox3d<float>> *,std::pair<uint,glitch::core::aabbox3d<float>> *,glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SEqPredicate,std::random_access_iterator_tag const&) =====
int __fastcall std::priv::__find_if<std::pair<unsigned int,glitch::core::aabbox3d<float>> *,glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SEqPredicate>(
        int a1,
        int a2,
        float *a3)
{
  int v3; // r4
  int v4; // r3
  int v5; // r7
  float v6; // r6
  float v8; // r6

  v3 = a1;
  v4 = -1227133513 * ((a2 - a1) >> 2);
  v5 = v4 >> 2;
  if ( v4 >> 2 > 0 )
  {
    v6 = *a3;
    while ( *(_DWORD *)v3 != LODWORD(v6)
         || a3[1] != *(float *)(v3 + 4)
         || a3[2] != *(float *)(v3 + 8)
         || a3[3] != *(float *)(v3 + 12)
         || *(float *)(v3 + 16) != a3[4]
         || *(float *)(v3 + 20) != a3[5]
         || *(float *)(v3 + 24) != a3[6] )
    {
      if ( *(_DWORD *)(v3 + 28) == LODWORD(v6)
        && a3[1] == *(float *)(v3 + 32)
        && a3[2] == *(float *)(v3 + 36)
        && a3[3] == *(float *)(v3 + 40)
        && *(float *)(v3 + 44) == a3[4]
        && *(float *)(v3 + 48) == a3[5]
        && *(float *)(v3 + 52) == a3[6] )
      {
        return v3 + 28;
      }
      if ( *(_DWORD *)(v3 + 56) == LODWORD(v6)
        && a3[1] == *(float *)(v3 + 60)
        && a3[2] == *(float *)(v3 + 64)
        && a3[3] == *(float *)(v3 + 68)
        && *(float *)(v3 + 72) == a3[4]
        && *(float *)(v3 + 76) == a3[5]
        && *(float *)(v3 + 80) == a3[6] )
      {
        return v3 + 56;
      }
      if ( *(_DWORD *)(v3 + 84) == LODWORD(v6)
        && a3[1] == *(float *)(v3 + 88)
        && a3[2] == *(float *)(v3 + 92)
        && a3[3] == *(float *)(v3 + 96)
        && *(float *)(v3 + 100) == a3[4]
        && *(float *)(v3 + 104) == a3[5]
        && *(float *)(v3 + 108) == a3[6] )
      {
        return v3 + 84;
      }
      --v5;
      v3 += 112;
      if ( !v5 )
      {
        v4 = -1227133513 * ((a2 - v3) >> 2);
        goto LABEL_37;
      }
    }
    return v3;
  }
LABEL_37:
  switch ( v4 )
  {
    case 2:
      v8 = *a3;
LABEL_42:
      if ( *(_DWORD *)v3 == LODWORD(v8)
        && a3[1] == *(float *)(v3 + 4)
        && a3[2] == *(float *)(v3 + 8)
        && a3[3] == *(float *)(v3 + 12)
        && *(float *)(v3 + 16) == a3[4]
        && *(float *)(v3 + 20) == a3[5]
        && *(float *)(v3 + 24) == a3[6] )
      {
        return v3;
      }
      v3 += 28;
LABEL_44:
      if ( *(_DWORD *)v3 != LODWORD(v8)
        || a3[1] != *(float *)(v3 + 4)
        || a3[2] != *(float *)(v3 + 8)
        || a3[3] != *(float *)(v3 + 12)
        || *(float *)(v3 + 16) != a3[4]
        || *(float *)(v3 + 20) != a3[5]
        || *(float *)(v3 + 24) != a3[6] )
      {
        return a2;
      }
      return v3;
    case 3:
      v8 = *a3;
      if ( *(_DWORD *)a3 == *(_DWORD *)v3
        && a3[1] == *(float *)(v3 + 4)
        && a3[2] == *(float *)(v3 + 8)
        && a3[3] == *(float *)(v3 + 12)
        && *(float *)(v3 + 16) == a3[4]
        && *(float *)(v3 + 20) == a3[5]
        && *(float *)(v3 + 24) == a3[6] )
      {
        return v3;
      }
      v3 += 28;
      goto LABEL_42;
    case 1:
      v8 = *a3;
      goto LABEL_44;
  }
  return a2;
}


// ===== 5a4374 std::remove_if<std::pair<uint,glitch::core::aabbox3d<float>> *,glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SEqPredicate>(std::pair<uint,glitch::core::aabbox3d<float>> *,std::pair<uint,glitch::core::aabbox3d<float>> *,glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SEqPredicate) =====
_DWORD *__fastcall std::remove_if<std::pair<unsigned int,glitch::core::aabbox3d<float>> *,glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SEqPredicate>(
        int a1,
        int a2,
        float *a3)
{
  int v5; // r0
  _DWORD *v6; // r6
  unsigned int v7; // r8
  int v8; // r5
  int v9; // r3
  int v10; // r7

  v5 = std::priv::__find_if<std::pair<unsigned int,glitch::core::aabbox3d<float>> *,glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SEqPredicate>(
         a1,
         a2,
         a3);
  v6 = (_DWORD *)v5;
  if ( a2 != v5 && a2 != v5 + 28 )
  {
    v7 = v5 + 28 + 28 * ((920350135 * ((unsigned int)(a2 - (v5 + 56)) >> 2)) & 0x3FFFFFFF);
    v8 = v5;
    do
    {
      while ( 1 )
      {
        v10 = *(_DWORD *)(v8 + 28);
        if ( *(_DWORD *)a3 == v10
          && a3[1] == *(float *)(v8 + 32)
          && a3[2] == *(float *)(v8 + 36)
          && a3[3] == *(float *)(v8 + 40)
          && *(float *)(v8 + 44) == a3[4]
          && *(float *)(v8 + 48) == a3[5]
          && *(float *)(v8 + 52) == a3[6] )
        {
          break;
        }
        *v6 = v10;
        v6[1] = *(_DWORD *)(v8 + 32);
        v6[2] = *(_DWORD *)(v8 + 36);
        v6[3] = *(_DWORD *)(v8 + 40);
        v6[4] = *(_DWORD *)(v8 + 44);
        v6[5] = *(_DWORD *)(v8 + 48);
        v9 = *(_DWORD *)(v8 + 52);
        v8 += 28;
        v6[6] = v9;
        v6 += 7;
        if ( v8 == v7 )
          return v6;
      }
      v8 += 28;
    }
    while ( v8 != v7 );
  }
  return v6;
}


// ===== 5a44b4 glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::removeElemInternal(std::pair<uint,glitch::core::aabbox3d<float>> const&,glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdNode *) =====
int __fastcall glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::removeElemInternal(
        int a1,
        float *a2,
        int a3)
{
  int *v4; // r4
  int v6; // r3
  int v7; // r7
  float *v8; // r2
  int v9; // r5
  _DWORD *v10; // r0
  int v11; // r3
  int v12; // r12
  int v13; // r7
  _DWORD *v14; // r3
  int v15; // r2
  int v16; // r1
  int result; // r0
  int v18; // r7
  float *v19; // r2
  int v20; // r3
  int v21; // r12
  int v22; // r7
  _DWORD *v23; // r3
  int v24; // r2
  int v25; // r1

  v4 = (int *)a3;
  if ( !glitch::lessThanPlane(a2, *(float *)(a3 + 12), *(char *)(a3 + 24)) )
    goto LABEL_4;
  while ( 1 )
  {
    v6 = v4[4];
    if ( !v6 )
      break;
    while ( 1 )
    {
      v4 = (int *)v6;
      if ( glitch::lessThanPlane(a2, *(float *)(v6 + 12), *(char *)(v6 + 24)) )
        break;
LABEL_4:
      v6 = v4[5];
      if ( !v6 )
      {
        v7 = v4[1];
        v8 = a2;
        v9 = -1227133513 * ((v7 - *v4) >> 2);
        v10 = std::remove_if<std::pair<unsigned int,glitch::core::aabbox3d<float>> *,glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SEqPredicate>(
                *v4,
                v7,
                v8);
        if ( v10 == (_DWORD *)v7 )
          goto LABEL_17;
        v11 = 1227133513 * ((v4[1] - v7) >> 2);
        v12 = -1227133513 * ((v4[1] - v7) >> 2);
        if ( -v11 >= 0 && v11 != 0 )
        {
          v13 = v7 + 28;
          v14 = v10 + 7;
          v15 = v12;
          do
          {
            --v15;
            *(v14 - 7) = *(_DWORD *)(v13 - 28);
            *(v14 - 6) = *(_DWORD *)(v13 - 24);
            *(v14 - 5) = *(_DWORD *)(v13 - 20);
            *(v14 - 4) = *(_DWORD *)(v13 - 16);
            *(v14 - 3) = *(_DWORD *)(v13 - 12);
            *(v14 - 2) = *(_DWORD *)(v13 - 8);
            v16 = *(_DWORD *)(v13 - 4);
            v13 += 28;
            *(v14 - 1) = v16;
            v14 += 7;
          }
          while ( v15 );
          v10 += 7 * v12;
        }
        goto LABEL_10;
      }
    }
  }
  v18 = v4[1];
  v19 = a2;
  v9 = -1227133513 * ((v18 - *v4) >> 2);
  v10 = std::remove_if<std::pair<unsigned int,glitch::core::aabbox3d<float>> *,glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SEqPredicate>(
          *v4,
          v18,
          v19);
  if ( v10 == (_DWORD *)v18 )
  {
LABEL_17:
    v10 = (_DWORD *)v4[1];
  }
  else
  {
    v20 = 1227133513 * ((v4[1] - v18) >> 2);
    v21 = -1227133513 * ((v4[1] - v18) >> 2);
    if ( -v20 >= 0 && v20 != 0 )
    {
      v22 = v18 + 28;
      v23 = v10 + 7;
      v24 = v21;
      do
      {
        --v24;
        *(v23 - 7) = *(_DWORD *)(v22 - 28);
        *(v23 - 6) = *(_DWORD *)(v22 - 24);
        *(v23 - 5) = *(_DWORD *)(v22 - 20);
        *(v23 - 4) = *(_DWORD *)(v22 - 16);
        *(v23 - 3) = *(_DWORD *)(v22 - 12);
        *(v23 - 2) = *(_DWORD *)(v22 - 8);
        v25 = *(_DWORD *)(v22 - 4);
        v22 += 28;
        *(v23 - 1) = v25;
        v23 += 7;
      }
      while ( v24 );
      v10 += 7 * v21;
    }
LABEL_10:
    v4[1] = (int)v10;
  }
  result = 1227133513 * (((int)v10 - *v4) >> 2);
  *(_DWORD *)(a1 + 80) -= v9 + result;
  return result;
}


// ===== 5a46d4 std::allocator<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>,glitch::video::CPrimitiveStream>>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>,glitch::video::CPrimitiveStream>>::_M_allocate(
        int a1,
        unsigned int a2,
        size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x9249249 )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 28 * a2;
  if ( 28 * a2 > 0x80 )
    result = (void *)operator new(28 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n / 0x1C;
  return result;
}


// ===== 5a475c std::vector<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>,glitch::video::CPrimitiveStream>,std::allocator<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>,glitch::video::CPrimitiveStream>>>::push_back(std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>,glitch::video::CPrimitiveStream> const&) =====
void __fastcall std::vector<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>,glitch::video::CPrimitiveStream>>::push_back(
        int *a1,
        int a2)
{
  int v2; // r7
  _DWORD *v5; // r3
  int v6; // r3
  unsigned int v7; // r2
  unsigned int v8; // r1
  void *v9; // r6
  int v10; // r0
  _DWORD *v11; // r3
  int v12; // r7
  int v13; // r3
  int v14; // r3
  size_t v15; // [sp+8h] [bp-Ch] BYREF

  v2 = a1[1];
  if ( v2 == a1[2] )
  {
    v7 = -1227133513 * ((v2 - *a1) >> 2);
    if ( v7 )
      v8 = 1840700270 * ((v2 - *a1) >> 2);
    else
      v8 = 1;
    if ( v8 > 0x9249249 || v7 > v8 )
      v8 = 153391689;
    v15 = v8;
    v9 = std::allocator<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>,glitch::video::CPrimitiveStream>>::_M_allocate(
           (int)(a1 + 2),
           v8,
           &v15);
    v10 = std::priv::__ucopy<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>,glitch::video::CPrimitiveStream> *,std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>,glitch::video::CPrimitiveStream> *,int>(
            *a1,
            v2,
            (int)v9);
    v11 = *(_DWORD **)a2;
    v12 = v10;
    *(_DWORD *)v10 = *(_DWORD *)a2;
    if ( v11 )
      ++*v11;
    v13 = *(_DWORD *)(a2 + 4);
    *(_DWORD *)(v10 + 4) = v13;
    if ( v13 )
      ++*(_DWORD *)(v13 + 4);
    *(_DWORD *)(v10 + 8) = *(_DWORD *)(a2 + 8);
    *(_DWORD *)(v10 + 12) = *(_DWORD *)(a2 + 12);
    *(_DWORD *)(v10 + 16) = *(_DWORD *)(a2 + 16);
    *(_DWORD *)(v10 + 20) = *(_DWORD *)(a2 + 20);
    *(_WORD *)(v10 + 24) = *(_WORD *)(a2 + 24);
    *(_WORD *)(v10 + 26) = *(_WORD *)(a2 + 26);
    std::vector<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>,glitch::video::CPrimitiveStream>>::_M_clear_after_move((void **)a1);
    v14 = (int)v9 + 28 * v15;
    *a1 = (int)v9;
    a1[2] = v14;
    a1[1] = v12 + 28;
  }
  else
  {
    v5 = *(_DWORD **)a2;
    *(_DWORD *)v2 = *(_DWORD *)a2;
    if ( v5 )
      ++*v5;
    v6 = *(_DWORD *)(a2 + 4);
    *(_DWORD *)(v2 + 4) = v6;
    if ( v6 )
      ++*(_DWORD *)(v6 + 4);
    *(_DWORD *)(v2 + 8) = *(_DWORD *)(a2 + 8);
    *(_DWORD *)(v2 + 12) = *(_DWORD *)(a2 + 12);
    *(_DWORD *)(v2 + 16) = *(_DWORD *)(a2 + 16);
    *(_DWORD *)(v2 + 20) = *(_DWORD *)(a2 + 20);
    *(_WORD *)(v2 + 24) = *(_WORD *)(a2 + 24);
    *(_WORD *)(v2 + 26) = *(_WORD *)(a2 + 26);
    a1[1] += 28;
  }
}


// ===== 5a4900 std::allocator<uint>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<unsigned int>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x3FFFFFFF )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 4 * a2;
  if ( 4 * a2 > 0x80 )
    result = (void *)operator new(4 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n >> 2;
  return result;
}


// ===== 5a4970 std::vector<uint,std::allocator<uint>>::vector(uint) =====
_DWORD *__fastcall std::vector<unsigned int>::vector(_DWORD *a1, unsigned int a2)
{
  char *v4; // r0
  char *v5; // r3
  char *v6; // r5
  size_t v8; // [sp+4h] [bp-8h] BYREF

  v8 = a2;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = (char *)std::allocator<unsigned int>::_M_allocate((int)(a1 + 2), a2, &v8);
  v5 = &v4[4 * v8];
  *a1 = v4;
  a1[1] = v4;
  a1[2] = v5;
  v6 = &v4[4 * a2];
  LC_API_MEMSET_0(v4, 0, 4 * a2);
  a1[1] = v6;
  return a1;
}


// ===== 5a49d4 std::vector<uint,std::allocator<uint>>::vector(std::vector<uint,std::allocator<uint>> const&) =====
_DWORD *__fastcall std::vector<unsigned int>::vector(_DWORD *a1, int a2)
{
  unsigned int v4; // r1
  char *v5; // r0
  int v6; // r1
  size_t v7; // r2
  int v8; // r2
  char *v9; // r3
  size_t v11; // [sp+4h] [bp-8h] BYREF

  v4 = (*(_DWORD *)(a2 + 4) - *(_DWORD *)a2) >> 2;
  v11 = v4;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = (char *)std::allocator<unsigned int>::_M_allocate((int)(a1 + 2), v4, &v11);
  v7 = v11;
  *a1 = v5;
  a1[1] = v5;
  a1[2] = &v5[4 * v7];
  v8 = *(_DWORD *)(a2 + 4);
  v9 = v5;
  if ( *(_DWORD *)a2 != v8 )
    v9 = (char *)memcpy(v5, *(const void **)a2, v8 - *(_DWORD *)a2) + v8 - v6;
  a1[1] = v9;
  return a1;
}


// ===== 5a4a54 std::vector<uint,std::allocator<uint>>::_M_insert_overflow(uint *,uint const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<unsigned int>::_M_insert_overflow(int a1, int a2, _DWORD *a3)
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
  v8 = (char *)std::allocator<unsigned int>::_M_allocate(a1 + 8, v6, &v16);
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
      LC_API_FREE_0(v13);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v13, v14);
  }
  v15 = v16;
  *(_DWORD *)a1 = v9;
  *(_DWORD *)(a1 + 4) = v12;
  *(_DWORD *)(a1 + 8) = &v9[4 * v15];
}


// ===== 5a4b1c std::allocator<std::pair<uint,glitch::core::aabbox3d<float>>>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::_M_allocate(
        int a1,
        unsigned int a2,
        size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x9249249 )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 28 * a2;
  if ( 28 * a2 > 0x80 )
    result = (void *)operator new(28 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n / 0x1C;
  return result;
}


// ===== 5a4ba4 std::vector<std::pair<uint,glitch::core::aabbox3d<float>>,std::allocator<std::pair<uint,glitch::core::aabbox3d<float>>>>::vector(uint) =====
_DWORD *__fastcall std::vector<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::vector(
        _DWORD *a1,
        unsigned int a2)
{
  char *v4; // r0
  char *v5; // r6
  int v6; // r3
  char *v7; // r0
  size_t v9; // [sp+4h] [bp-4h] BYREF

  v9 = a2;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = (char *)std::allocator<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::_M_allocate(
                 (int)(a1 + 2),
                 a2,
                 &v9);
  v5 = &v4[28 * a2];
  a1[2] = &v4[28 * v9];
  *a1 = v4;
  a1[1] = v4;
  v6 = -1227133513 * ((v5 - v4) >> 2);
  if ( v6 > 0 )
  {
    v7 = v4 + 28;
    do
    {
      --v6;
      *((_DWORD *)v7 - 7) = 0;
      *((_DWORD *)v7 - 6) = -1082130432;
      *((_DWORD *)v7 - 5) = -1082130432;
      *((_DWORD *)v7 - 4) = -1082130432;
      *((_DWORD *)v7 - 3) = 1065353216;
      *((_DWORD *)v7 - 2) = 1065353216;
      *((_DWORD *)v7 - 1) = 1065353216;
      v7 += 28;
    }
    while ( v6 );
  }
  a1[1] = v5;
  return a1;
}


// ===== 5a4c5c std::allocator<glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance>::_M_allocate(
        int a1,
        unsigned int a2,
        size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x1FFFFFFF )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 8 * a2;
  if ( 8 * a2 > 0x80 )
    result = (void *)operator new(8 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n >> 3;
  return result;
}


// ===== 5a4ccc std::priority_queue<glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance,std::vector<glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance,std::allocator<glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance>>,std::less<glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance>>::push(glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance const&) =====
int __fastcall std::priority_queue<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance,std::vector<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance,std::allocator<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance>>,std::less<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance>>::push(
        int *a1,
        _DWORD *a2)
{
  _DWORD *v2; // r3
  _DWORD *v3; // r6
  int v6; // r7
  int v7; // r6
  unsigned int v9; // r3
  unsigned int v10; // r1
  _DWORD *v11; // r0
  char *v12; // lr
  int v13; // r6
  _DWORD *v14; // r3
  int v15; // r1
  int v16; // r0
  int v17; // r3
  int v18; // r2
  void *v19; // r0
  int v20; // r3
  size_t v21; // r1
  size_t v22; // r3
  size_t v23; // [sp+8h] [bp-Ch] BYREF

  v2 = (_DWORD *)a1[1];
  v3 = (_DWORD *)a1[2];
  if ( v2 == v3 )
  {
    v9 = ((int)v3 - *a1) >> 3;
    if ( v9 )
      v10 = 2 * v9;
    else
      v10 = 1;
    if ( v10 > 0x1FFFFFFF || v9 > v10 )
      v10 = 0x1FFFFFFF;
    v23 = v10;
    v11 = std::allocator<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance>::_M_allocate(
            (int)(a1 + 2),
            v10,
            &v23);
    v12 = (char *)*a1;
    v6 = (int)v11;
    v13 = ((int)v3 - *a1) >> 3;
    if ( v13 > 0 )
    {
      v15 = v13;
      v16 = 0;
      do
      {
        --v15;
        *(_DWORD *)(v6 + v16) = *(_DWORD *)&v12[v16];
        v17 = v6 + v16;
        v18 = *(_DWORD *)&v12[v16 + 4];
        v16 += 8;
        *(_DWORD *)(v17 + 4) = v18;
      }
      while ( v15 );
      v14 = (_DWORD *)(v6 + 8 * v13);
    }
    else
    {
      v14 = v11;
    }
    v7 = (int)(v14 + 2);
    *v14 = *a2;
    v14[1] = a2[1];
    v19 = (void *)*a1;
    v20 = a1[1];
    if ( v20 != *a1 )
      v20 += 8 * ~((unsigned int)(v20 - 8 - (_DWORD)v19) >> 3);
    if ( v20 )
    {
      v21 = (a1[2] - v20) & 0xFFFFFFF8;
      if ( v21 > 0x80 )
        LC_API_FREE_0(v19);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v19, v21);
    }
    v22 = v23;
    *a1 = v6;
    a1[1] = v7;
    a1[2] = v6 + 8 * v22;
  }
  else
  {
    *v2 = *a2;
    v2[1] = a2[1];
    v6 = *a1;
    v7 = a1[1] + 8;
    a1[1] = v7;
  }
  return std::__push_heap_aux<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance *,std::less<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance>,int,glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance>(
           v6,
           v7);
}


// ===== 5a4e24 glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::findKNearestElemsInternal(uint &,std::pair<uint,glitch::core::aabbox3d<float>> const&,std::priority_queue<glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance,std::vector<glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance,std::allocator<glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance>>,std::less<glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdDistance>> &,glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::SKdNode const*,float &) =====
int __fastcall glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::findKNearestElemsInternal(
        int result,
        int *a2,
        float *a3,
        int *a4,
        float *a5,
        float *a6)
{
  int v6; // r10
  int v10; // r7
  _BOOL4 v11; // r0
  int v12; // r12
  int v13; // r11
  float v14; // r0
  float v15; // r3
  int v16; // r1
  unsigned int v17; // r10
  unsigned int v18; // r11
  bool v19; // zf
  float *v20; // r3
  int v21; // r3
  float v22; // r0
  float v23; // r7
  _DWORD v24[2]; // [sp+1Ch] [bp-10h] BYREF

  v6 = result;
  if ( a5 )
  {
    if ( *((_DWORD *)a5 + 4) || *((_DWORD *)a5 + 5) )
    {
      v10 = *((char *)a5 + 24);
      v11 = glitch::lessThanPlane(a3, a5[3], v10);
      if ( v11 )
        v12 = *((_DWORD *)a5 + 4);
      else
        v12 = *((_DWORD *)a5 + 5);
      if ( v11 )
        v13 = *((_DWORD *)a5 + 5);
      else
        v13 = *((_DWORD *)a5 + 4);
      glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::findKNearestElemsInternal(
        v6,
        a2,
        a3,
        a4,
        v12,
        a6);
      v14 = glitch::distanceKdTree(a3, a5[3], v10);
      if ( *a2 )
        return glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::findKNearestElemsInternal(
                 v6,
                 a2,
                 a3,
                 a4,
                 v13,
                 a6);
      result = v14 < *a6;
      if ( result )
        return glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::findKNearestElemsInternal(
                 v6,
                 a2,
                 a3,
                 a4,
                 v13,
                 a6);
    }
    else
    {
      v15 = *a5;
      v16 = (*((_DWORD *)a5 + 1) - *(_DWORD *)a5) >> 2;
      result = 153391689 * v16;
      if ( 1227133513 * v16 )
      {
        v17 = *((_DWORD *)a5 + 5);
        v18 = v17;
        while ( 1 )
        {
          v24[1] = LODWORD(v15) + v17;
          v22 = glitch::distanceKdTree(a3, (float *)(LODWORD(v15) + v17));
          v23 = v22;
          ++v18;
          v19 = *a2 == 0;
          *(float *)v24 = v22;
          if ( !v19 )
            goto LABEL_20;
          v19 = v22 >= *(float *)*a4;
          result = *a4;
          if ( !v19 )
          {
            result = std::__pop_heap_aux<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance *,glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance,std::less<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance>>(
                       (int *)result,
                       a4[1]);
            v20 = (float *)*a4;
            a4[1] -= 8;
            *a6 = *v20;
            v21 = *a2 + 1;
            *a2 = v21;
            if ( v21 )
              break;
          }
LABEL_18:
          v15 = *a5;
          v17 += 28;
          if ( v18 >= -1227133513 * ((*((_DWORD *)a5 + 1) - *(_DWORD *)a5) >> 2) )
            return result;
        }
        v23 = *(float *)v24;
LABEL_20:
        if ( *a6 < v23 )
          *a6 = v23;
        result = std::priority_queue<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance,std::vector<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance,std::allocator<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance>>,std::less<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance>>::push(
                   a4,
                   v24);
        --*a2;
        goto LABEL_18;
      }
    }
  }
  return result;
}


// ===== 5a5030 glitch::core::CKdTree<std::pair<uint,glitch::core::aabbox3d<float>>>::findKNearest(uint,std::pair<uint,glitch::core::aabbox3d<float>> const&,std::vector<std::pair<uint,glitch::core::aabbox3d<float>>,glitch::core::SAllocator<std::pair<uint,glitch::core::aabbox3d<float>>,(glitch::memory::E_MEMORY_HINT)0>> &) =====
int __fastcall glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::findKNearest(
        float *a1,
        int a2,
        float *a3,
        int a4)
{
  int *i; // r3
  _DWORD *v6; // r1
  _DWORD *v7; // r2
  int *v9; // [sp+Ch] [bp-1Ch] BYREF
  int *v10; // [sp+10h] [bp-18h]
  int v11; // [sp+14h] [bp-14h]
  int v12; // [sp+1Ch] [bp-Ch] BYREF
  int v13; // [sp+20h] [bp-8h] BYREF

  v13 = a2;
  v12 = 0;
  v11 = 0;
  v9 = nullptr;
  v10 = nullptr;
  glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::findKNearestElemsInternal(
    (int)a1,
    &v13,
    a3,
    (int *)&v9,
    a1,
    (float *)&v12);
  for ( i = v9; v10 != v9; v10 -= 2 )
  {
    v6 = *(_DWORD **)(a4 + 4);
    v7 = *(_DWORD **)&byte_4[(_DWORD)i];
    if ( v6 == *(_DWORD **)(a4 + 8) )
    {
      std::vector<std::pair<unsigned int,glitch::core::aabbox3d<float>>,glitch::core::SAllocator<std::pair<unsigned int,glitch::core::aabbox3d<float>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        (void **)a4,
        (int)v6,
        v7);
    }
    else
    {
      *v6 = *v7;
      v6[1] = v7[1];
      v6[2] = v7[2];
      v6[3] = v7[3];
      v6[4] = v7[4];
      v6[5] = v7[5];
      v6[6] = v7[6];
      *(_DWORD *)(a4 + 4) += 28;
    }
    std::__pop_heap_aux<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance *,glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance,std::less<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance>>(
      v9,
      (int)v10);
    i = v9;
  }
  return std::vector<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance,std::allocator<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdDistance>>::~vector((int)&v9);
}


// ===== 5a5128 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,std::vector<uint,std::allocator<uint>>>,std::priv::_Select1st<std::pair<uint const,std::vector<uint,std::allocator<uint>>>>,std::priv::_MapTraitsT<std::pair<uint const,std::vector<uint,std::allocator<uint>>>>,std::allocator<std::pair<uint const,std::vector<uint,std::allocator<uint>>>>>::_M_create_node(std::pair<uint const,std::vector<uint,std::allocator<uint>>> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::vector<unsigned int>>,std::priv::_Select1st<std::pair<unsigned int const,std::vector<unsigned int>>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::vector<unsigned int>>>,std::allocator<std::pair<unsigned int const,std::vector<unsigned int>>>>::_M_create_node(
        int a1,
        _DWORD *a2)
{
  _DWORD *v3; // r4
  size_t v5; // [sp+4h] [bp-8h] BYREF

  v5 = 32;
  v3 = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v5);
  v3[4] = *a2;
  std::vector<unsigned int>::vector(v3 + 5, (int)(a2 + 1));
  v3[3] = 0;
  v3[2] = 0;
  return v3;
}


// ===== 5a5174 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,std::vector<uint,std::allocator<uint>>>,std::priv::_Select1st<std::pair<uint const,std::vector<uint,std::allocator<uint>>>>,std::priv::_MapTraitsT<std::pair<uint const,std::vector<uint,std::allocator<uint>>>>,std::allocator<std::pair<uint const,std::vector<uint,std::allocator<uint>>>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<uint const,std::vector<uint,std::allocator<uint>>> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::vector<unsigned int>>,std::priv::_Select1st<std::pair<unsigned int const,std::vector<unsigned int>>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::vector<unsigned int>>>,std::allocator<std::pair<unsigned int const,std::vector<unsigned int>>>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        _DWORD *a4,
        int a5,
        int a6)
{
  _DWORD *v9; // r0
  _DWORD *node; // r7
  _DWORD *v12; // r0

  if ( a2 == a3 )
  {
    node = std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::vector<unsigned int>>,std::priv::_Select1st<std::pair<unsigned int const,std::vector<unsigned int>>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::vector<unsigned int>>>,std::allocator<std::pair<unsigned int const,std::vector<unsigned int>>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( a6 || !a5 && *a4 >= a3[4] )
  {
    v9 = std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::vector<unsigned int>>,std::priv::_Select1st<std::pair<unsigned int const,std::vector<unsigned int>>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::vector<unsigned int>>>,std::allocator<std::pair<unsigned int const,std::vector<unsigned int>>>>::_M_create_node(
           (int)a2,
           a4);
    a3[3] = v9;
    node = v9;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v9;
  }
  else
  {
    v12 = std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::vector<unsigned int>>,std::priv::_Select1st<std::pair<unsigned int const,std::vector<unsigned int>>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::vector<unsigned int>>>,std::allocator<std::pair<unsigned int const,std::vector<unsigned int>>>>::_M_create_node(
            (int)a2,
            a4);
    a3[2] = v12;
    node = v12;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v12;
  }
  node[1] = a3;
  std::priv::_Rb_global<bool>::_Rebalance((int)node, a2 + 1);
  ++a2[4];
  *a1 = node;
  return a1;
}


// ===== 5a524c std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,std::vector<uint,std::allocator<uint>>>,std::priv::_Select1st<std::pair<uint const,std::vector<uint,std::allocator<uint>>>>,std::priv::_MapTraitsT<std::pair<uint const,std::vector<uint,std::allocator<uint>>>>,std::allocator<std::pair<uint const,std::vector<uint,std::allocator<uint>>>>>::insert_unique(std::pair<uint const,std::vector<uint,std::allocator<uint>>> const&) =====
int __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::vector<unsigned int>>,std::priv::_Select1st<std::pair<unsigned int const,std::vector<unsigned int>>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::vector<unsigned int>>>,std::allocator<std::pair<unsigned int const,std::vector<unsigned int>>>>::insert_unique(
        int a1,
        _DWORD *a2,
        unsigned int *a3)
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
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::vector<unsigned int>>,std::priv::_Select1st<std::pair<unsigned int const,std::vector<unsigned int>>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::vector<unsigned int>>>,std::allocator<std::pair<unsigned int const,std::vector<unsigned int>>>>::_M_insert(
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
      if ( *a3 <= *(_DWORD *)(v12 + 16) )
      {
        *(_DWORD *)a1 = v12;
        *(_BYTE *)(a1 + 4) = 0;
        return a1;
      }
LABEL_25:
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::vector<unsigned int>>,std::priv::_Select1st<std::pair<unsigned int const,std::vector<unsigned int>>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::vector<unsigned int>>>,std::allocator<std::pair<unsigned int const,std::vector<unsigned int>>>>::_M_insert(
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


// ===== 5a53d4 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,std::vector<uint,std::allocator<uint>>>,std::priv::_Select1st<std::pair<uint const,std::vector<uint,std::allocator<uint>>>>,std::priv::_MapTraitsT<std::pair<uint const,std::vector<uint,std::allocator<uint>>>>,std::allocator<std::pair<uint const,std::vector<uint,std::allocator<uint>>>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<uint const,std::vector<uint,std::allocator<uint>>>,std::priv::_MapTraitsT<std::pair<uint const,std::vector<uint,std::allocator<uint>>>>>,std::pair<uint const,std::vector<uint,std::allocator<uint>>> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::vector<unsigned int>>,std::priv::_Select1st<std::pair<unsigned int const,std::vector<unsigned int>>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::vector<unsigned int>>>,std::allocator<std::pair<unsigned int const,std::vector<unsigned int>>>>::insert_unique(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD **a3,
        unsigned int *a4)
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
  _DWORD v22[3]; // [sp+20h] [bp-Ch] BYREF

  v4 = *a3;
  if ( *a3 == (_DWORD *)a2[2] )
  {
    if ( !a2[4] )
    {
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::vector<unsigned int>>,std::priv::_Select1st<std::pair<unsigned int const,std::vector<unsigned int>>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::vector<unsigned int>>>,std::allocator<std::pair<unsigned int const,std::vector<unsigned int>>>>::insert_unique(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::vector<unsigned int>>,std::priv::_Select1st<std::pair<unsigned int const,std::vector<unsigned int>>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::vector<unsigned int>>>,std::allocator<std::pair<unsigned int const,std::vector<unsigned int>>>>::_M_insert(
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
        std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::vector<unsigned int>>,std::priv::_Select1st<std::pair<unsigned int const,std::vector<unsigned int>>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::vector<unsigned int>>>,std::allocator<std::pair<unsigned int const,std::vector<unsigned int>>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::vector<unsigned int>>,std::priv::_Select1st<std::pair<unsigned int const,std::vector<unsigned int>>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::vector<unsigned int>>>,std::allocator<std::pair<unsigned int const,std::vector<unsigned int>>>>::_M_insert(
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
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::vector<unsigned int>>,std::priv::_Select1st<std::pair<unsigned int const,std::vector<unsigned int>>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::vector<unsigned int>>>,std::allocator<std::pair<unsigned int const,std::vector<unsigned int>>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::vector<unsigned int>>,std::priv::_Select1st<std::pair<unsigned int const,std::vector<unsigned int>>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::vector<unsigned int>>>,std::allocator<std::pair<unsigned int const,std::vector<unsigned int>>>>::_M_insert(
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
            while ( i == *(_DWORD **)(v17 + 12) );
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
              std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::vector<unsigned int>>,std::priv::_Select1st<std::pair<unsigned int const,std::vector<unsigned int>>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::vector<unsigned int>>>,std::allocator<std::pair<unsigned int const,std::vector<unsigned int>>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::vector<unsigned int>>,std::priv::_Select1st<std::pair<unsigned int const,std::vector<unsigned int>>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::vector<unsigned int>>>,std::allocator<std::pair<unsigned int const,std::vector<unsigned int>>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::vector<unsigned int>>,std::priv::_Select1st<std::pair<unsigned int const,std::vector<unsigned int>>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::vector<unsigned int>>>,std::allocator<std::pair<unsigned int const,std::vector<unsigned int>>>>::insert_unique(
            (int)&v19,
            a2,
            a4);
          *a1 = v19;
          return a1;
        }
LABEL_45:
        *a1 = v4;
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
  if ( v16[4] >= *a4 )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::vector<unsigned int>>,std::priv::_Select1st<std::pair<unsigned int const,std::vector<unsigned int>>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::vector<unsigned int>>>,std::allocator<std::pair<unsigned int const,std::vector<unsigned int>>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::vector<unsigned int>>,std::priv::_Select1st<std::pair<unsigned int const,std::vector<unsigned int>>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::vector<unsigned int>>>,std::allocator<std::pair<unsigned int const,std::vector<unsigned int>>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 5a5748 std::map<uint,std::vector<uint,std::allocator<uint>>,std::less<uint>,std::allocator<std::pair<uint const,std::vector<uint,std::allocator<uint>>>>>::operator[]<uint>(uint const&) =====
_DWORD *__fastcall std::map<unsigned int,std::vector<unsigned int>>::operator[]<unsigned int>(
        _DWORD *a1,
        unsigned int *a2)
{
  _DWORD *v2; // r4
  unsigned int v4; // r1
  _DWORD *v5; // r2
  unsigned int v6; // r3
  bool v7; // cc
  _DWORD *v8; // r3
  _DWORD *v9; // r0
  _DWORD *v10; // r4
  size_t v11; // r1
  size_t v12; // r1
  unsigned int v14; // [sp+4h] [bp-24h] BYREF
  void *__p[3]; // [sp+8h] [bp-20h] BYREF
  void *v16[2]; // [sp+14h] [bp-14h] BYREF
  int v17; // [sp+1Ch] [bp-Ch]
  _DWORD *v18; // [sp+20h] [bp-8h] BYREF
  _DWORD *v19; // [sp+24h] [bp-4h] BYREF

  v2 = (_DWORD *)a1[1];
  if ( v2 )
  {
    v4 = *a2;
    v5 = a1;
    while ( 1 )
    {
      v6 = v2[4];
      v7 = v4 > v6;
      if ( v4 <= v6 )
        v8 = (_DWORD *)v2[2];
      else
        v8 = (_DWORD *)v2[3];
      if ( v7 )
        v2 = v5;
      v5 = v2;
      if ( !v8 )
        break;
      v2 = v8;
    }
  }
  else
  {
    v4 = *a2;
    v2 = a1;
  }
  if ( a1 == v2 || (v9 = v2, v4 < v2[4]) )
  {
    v14 = v4;
    v17 = 0;
    v16[0] = nullptr;
    v16[1] = nullptr;
    std::vector<unsigned int>::vector(__p, (int)v16);
    v18 = v2;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::vector<unsigned int>>,std::priv::_Select1st<std::pair<unsigned int const,std::vector<unsigned int>>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::vector<unsigned int>>>,std::allocator<std::pair<unsigned int const,std::vector<unsigned int>>>>::insert_unique(
      &v19,
      a1,
      &v18,
      &v14);
    v10 = v19;
    if ( __p[0] )
    {
      v11 = ((char *)__p[2] - (char *)__p[0]) & 0xFFFFFFFC;
      if ( v11 > 0x80 )
        LC_API_FREE_0(__p[0]);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(__p[0], v11);
    }
    if ( v16[0] )
    {
      v12 = (v17 - (unsigned int)v16[0]) & 0xFFFFFFFC;
      if ( v12 > 0x80 )
      {
        LC_API_FREE_0(v16[0]);
        v9 = v10;
        return v9 + 5;
      }
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v16[0], v12);
    }
    v9 = v10;
  }
  return v9 + 5;
}


// ===== 5a5860 glitch::video::spatialGridClustering(std::map<uint,std::vector<uint,std::allocator<uint>>,std::less<uint>,std::allocator<std::pair<uint const,std::vector<uint,std::allocator<uint>>>>> &,std::vector const&<std::pair<uint,glitch::core::aabbox3d<float>>,std::vector const::SAllocator<glitch::core::aabbox3d,(glitch::memory::E_MEMORY_HINT)0>>,std::vector const::vector3d<float> const&) =====
std::ios_base *__fastcall glitch::video::spatialGridClustering(_DWORD *a1, int *a2, float *a3)
{
  unsigned int v4; // r8
  int v5; // r2
  int v6; // r3
  int v7; // r2
  int v8; // r3
  float *v9; // r8
  float v10; // r9
  float v11; // r10
  std::ostream *v12; // r0
  std::ostream *v13; // r0
  unsigned int v14; // r2
  char *M_data; // r1
  int v16; // t1
  _DWORD *v17; // r0
  unsigned int *v18; // r1
  int v19; // r3
  float v23[3]; // [sp+20h] [bp-14h] BYREF
  unsigned int v24; // [sp+2Ch] [bp-8h] BYREF
  unsigned int v25; // [sp+30h] [bp-4h] BYREF
  std::ios_base v26; // [sp+34h] [bp+0h] BYREF
  std::ios_base v27; // [sp+74h] [bp+40h] BYREF
  char v28; // [sp+B8h] [bp+84h]
  int v29; // [sp+BCh] [bp+88h]
  int v30; // [sp+C0h] [bp+8Ch]
  std::string v31; // [sp+C4h] [bp+90h] BYREF
  std::string v32; // [sp+DCh] [bp+A8h] BYREF

  __ZNSt8ios_baseC2Ev_veneer(&v27);
  v4 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v27._vptr.ios_base = (int (**)(...))off_95B8A0;
  std::ios::init((int)&v27, 0, (int)off_95B8A0, (int)off_95B88C);
  v26._vptr.ios_base = (int (**)(...))off_95B864;
  v27._vptr.ios_base = (int (**)(...))off_95B878;
  std::stringbuf::basic_stringbuf((std::locale *)&v26._M_fmtflags, (std::_Locale_impl *)&word_10);
  std::ios::init((int)&v27, (int)&v26._M_fmtflags, v5, v6);
  v7 = *a2;
  v8 = a2[1];
  v25 = 0;
  if ( 1227133513 * ((v8 - v7) >> 2) )
  {
    while ( 1 )
    {
      v9 = (float *)(v7 + 28 * v4);
      v10 = (float)(v9[2] + v9[5]) * 0.5;
      v11 = (float)(v9[3] + v9[6]) * 0.5;
      v23[0] = (float)(v9[1] + v9[4]) * 0.5;
      v23[1] = v10;
      v23[2] = v11;
      glitch::core::vector3d<float>::operator/=(v23, a3);
      v32._M_finish = (char *)&v32;
      v32._M_start_of_storage._M_data = (char *)&v32;
      std::string::_M_range_initialize(&v32, "", "");
      std::stringbuf::str((int)&v26._M_fmtflags, &v32);
      if ( (std::string *)v32._M_start_of_storage._M_data != &v32 && v32._M_start_of_storage._M_data )
      {
        if ( (unsigned int)(v32._M_buffers._M_end_of_storage - v32._M_start_of_storage._M_data) > 0x80 )
          LC_API_FREE_0(v32._M_start_of_storage._M_data);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
            v32._M_start_of_storage._M_data,
            v32._M_buffers._M_end_of_storage - v32._M_start_of_storage._M_data);
      }
      v12 = std::priv::__put_num<char,std::char_traits<char>,long>((std::ostream *)&v26);
      v13 = std::priv::__put_num<char,std::char_traits<char>,long>(v12);
      std::priv::__put_num<char,std::char_traits<char>,long>(v13);
      v31._M_finish = (char *)&v31;
      v31._M_start_of_storage._M_data = (char *)&v31;
      std::string::_M_range_initialize(&v31, (const char *)v26._M_num_pwords, (const char *)v26._M_pwords);
      if ( v31._M_start_of_storage._M_data == v31._M_finish )
      {
        v14 = 0;
      }
      else
      {
        M_data = v31._M_start_of_storage._M_data;
        v14 = 0;
        do
        {
          v16 = *M_data++;
          v14 ^= v16 - 1640531527 + (v14 << 6) + (v14 >> 2);
        }
        while ( M_data != v31._M_finish );
      }
      v24 = v14;
      if ( (std::string *)v31._M_start_of_storage._M_data == &v31 || !v31._M_start_of_storage._M_data )
        goto LABEL_14;
      if ( (unsigned int)(v31._M_buffers._M_end_of_storage - v31._M_start_of_storage._M_data) <= 0x80 )
        break;
      LC_API_FREE_0(v31._M_start_of_storage._M_data);
      v17 = std::map<unsigned int,std::vector<unsigned int>>::operator[]<unsigned int>(a1, &v24);
      v18 = (unsigned int *)v17[1];
      if ( v18 == (unsigned int *)v17[2] )
      {
LABEL_20:
        std::vector<unsigned int>::_M_insert_overflow((int)v17, (int)v18, &v25);
        goto LABEL_16;
      }
LABEL_15:
      *v18 = v25;
      v17[1] += 4;
LABEL_16:
      v7 = *a2;
      v19 = (a2[1] - *a2) >> 2;
      v4 = v25 + 1;
      v25 = v4;
      if ( v4 >= -1227133513 * v19 )
        return std::ostringstream::~ostringstream(&v26);
    }
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
      v31._M_start_of_storage._M_data,
      v31._M_buffers._M_end_of_storage - v31._M_start_of_storage._M_data);
LABEL_14:
    v17 = std::map<unsigned int,std::vector<unsigned int>>::operator[]<unsigned int>(a1, &v24);
    v18 = (unsigned int *)v17[1];
    if ( v18 == (unsigned int *)v17[2] )
      goto LABEL_20;
    goto LABEL_15;
  }
  return std::ostringstream::~ostringstream(&v26);
}


// ===== 5a5bd4 glitch::video::kMeansClustering(std::map<uint,std::vector<uint,std::allocator<uint>>,std::less<uint>,std::allocator<std::pair<uint const,std::vector<uint,std::allocator<uint>>>>> &,std::vector const&<std::pair<uint,glitch::core::aabbox3d<float>>,std::vector const::SAllocator<glitch::core::aabbox3d,(glitch::memory::E_MEMORY_HINT)0>>,uint,glitch::core const&) =====
void __fastcall glitch::video::kMeansClustering(_DWORD *a1, int *a2, unsigned int a3, float *a4)
{
  unsigned int i; // r4
  unsigned int v5; // r5
  int v6; // r7
  int v7; // r2
  int v8; // r1
  _DWORD *v9; // r3
  int v10; // r4
  float v11; // r9
  float *v12; // r4
  float v13; // r11
  float v14; // r0
  int v15; // r4
  int v16; // r5
  float v17; // r6
  float *v18; // r4
  float *v19; // r5
  float v20; // r8
  float v21; // r7
  float v22; // r6
  float v23; // r1
  _BOOL4 v24; // r0
  float v25; // r1
  _BOOL4 v26; // r0
  float v27; // r1
  _BOOL4 v28; // r0
  float v29; // r1
  _BOOL4 v30; // r0
  float v31; // r1
  float v32; // r7
  float v33; // r6
  float v34; // r5
  float v35; // r1
  _BOOL4 v36; // r0
  float v37; // r1
  float v38; // r1
  _BOOL4 v39; // r0
  float v40; // r1
  int v41; // r3
  int v42; // r2
  _DWORD *v43; // r1
  int v44; // r10
  unsigned int v45; // r6
  int v46; // r4
  float *v47; // r4
  int v48; // r5
  float v49; // r11
  float v50; // r0
  char *v51; // r7
  float *v52; // r5
  int v53; // r8
  int v54; // r5
  int v55; // r10
  char *v56; // r6
  float v57; // r0
  float *v58; // r6
  int v59; // r5
  int v60; // r6
  float v61; // r9
  float v62; // r10
  float v63; // r0
  float v64; // r7
  double v65; // r0
  int v66; // r5
  int j; // r6
  unsigned int k; // r3
  int v69; // r0
  unsigned int v70; // r2
  unsigned int v71; // r3
  int v72; // r0
  int v73; // r2
  unsigned int v74; // r3
  int v75; // r2
  _DWORD *v76; // r0
  unsigned int *v77; // r1
  size_t v78; // r1
  char *v79; // r3
  char *v80; // r3
  float v81; // [sp+8h] [bp-84h]
  unsigned int v82; // [sp+8h] [bp-84h]
  double v83; // [sp+8h] [bp-84h]
  float v84; // [sp+14h] [bp-78h]
  unsigned int v85; // [sp+18h] [bp-74h]
  int v86; // [sp+1Ch] [bp-70h]
  int v87; // [sp+20h] [bp-6Ch]
  unsigned int v88; // [sp+24h] [bp-68h]
  int v90; // [sp+30h] [bp-5Ch]
  unsigned int v92; // [sp+40h] [bp-4Ch]
  _DWORD v94[3]; // [sp+4Ch] [bp-40h] BYREF
  void *__p[3]; // [sp+58h] [bp-34h] BYREF
  void *p; // [sp+64h] [bp-28h] BYREF
  char *v97; // [sp+68h] [bp-24h]
  void *v98; // [sp+70h] [bp-1Ch] BYREF
  char *v99; // [sp+74h] [bp-18h]
  int v100; // [sp+78h] [bp-14h]
  unsigned int v101; // [sp+7Ch] [bp-10h] BYREF
  unsigned int v102; // [sp+80h] [bp-Ch] BYREF
  int v103; // [sp+84h] [bp-8h] BYREF

  if ( a3 <= 1 )
  {
    i = 1;
  }
  else
  {
    for ( i = 1; i < a3; i *= 2 )
      ;
  }
  v5 = i;
  v6 = -1;
  do
  {
    v5 >>= 1;
    ++v6;
  }
  while ( v5 );
  v92 = -1227133513 * ((a2[1] - *a2) >> 2) / i;
  v103 = -1;
  v98 = nullptr;
  v99 = nullptr;
  v100 = 0;
  glitch::video::distributeMeans(v6, a4, &v98, 0, &v103);
  std::vector<glitch::core::vector3d<float>,glitch::core::SAllocator<glitch::core::vector3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::vector(
    &p,
    &v98);
  std::vector<unsigned int>::vector(__p, -1227133513 * ((a2[1] - *a2) >> 2));
  v90 = 0;
  std::vector<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::vector(v94, i);
  do
  {
LABEL_8:
    v7 = 0;
    v8 = 0;
    do
    {
      ++v8;
      *(_DWORD *)(v94[0] + v7) = 0;
      v9 = (_DWORD *)(v94[0] + v7);
      v9[3] = 2139095039;
      v9[4] = -8388609;
      v9[5] = -8388609;
      v9[6] = -8388609;
      v9[1] = 2139095039;
      v9[2] = 2139095039;
      v7 += 28;
    }
    while ( v8 != i );
    if ( 1227133513 * ((a2[1] - *a2) >> 2) )
    {
      v85 = i;
      v87 = 0;
      v88 = 0;
      v10 = *a2;
      do
      {
        v11 = 3.4028e38;
        v12 = (float *)(v10 + v87);
        v13 = (float)(v12[1] + v12[4]) * 0.5;
        v84 = (float)(v12[2] + v12[5]) * 0.5;
        v14 = v12[3] + v12[6];
        v15 = 0;
        v81 = v14 * 0.5;
        v16 = 0;
        v86 = 0;
        do
        {
          v17 = (float)((float)((float)(v13 - *(float *)((char *)v98 + v15))
                              * (float)(v13 - *(float *)((char *)v98 + v15)))
                      + (float)((float)(v84 - *(float *)((char *)v98 + v15 + 4))
                              * (float)(v84 - *(float *)((char *)v98 + v15 + 4))))
              + (float)((float)(v81 - *(float *)((char *)v98 + v15 + 8))
                      * (float)(v81 - *(float *)((char *)v98 + v15 + 8)));
          if ( v11 > v17 )
            v86 = v16;
          ++v16;
          if ( v11 > v17 )
            v11 = (float)((float)((float)(v13 - *(float *)((char *)v98 + v15))
                                * (float)(v13 - *(float *)((char *)v98 + v15)))
                        + (float)((float)(v84 - *(float *)((char *)v98 + v15 + 4))
                                * (float)(v84 - *(float *)((char *)v98 + v15 + 4))))
                + (float)((float)(v81 - *(float *)((char *)v98 + v15 + 8))
                        * (float)(v81 - *(float *)((char *)v98 + v15 + 8)));
          v15 += 12;
        }
        while ( v16 != v85 );
        *((_DWORD *)__p[0] + v88) = v86;
        ++*(_DWORD *)(v94[0] + 28 * v86);
        v18 = (float *)(v94[0] + 28 * v86);
        v19 = (float *)(*a2 + v87);
        v20 = v19[4];
        v21 = v19[5];
        v22 = v19[6];
        v23 = v18[5];
        if ( v20 > v18[4] )
          v18[4] = v20;
        v24 = v21 > v23;
        v25 = v18[6];
        if ( v24 )
          v18[5] = v21;
        v26 = v22 > v25;
        v27 = v18[1];
        if ( v26 )
          v18[6] = v22;
        v28 = v20 < v27;
        v29 = v18[2];
        if ( v28 )
          v18[1] = v20;
        v30 = v21 < v29;
        v31 = v18[3];
        if ( v30 )
          v18[2] = v21;
        if ( v22 < v31 )
          v18[3] = v22;
        v32 = v19[1];
        v33 = v19[3];
        v34 = v19[2];
        v35 = v18[5];
        if ( v32 > v18[4] )
          v18[4] = v32;
        v36 = v34 > v35;
        v37 = v18[6];
        if ( v36 )
          v18[5] = v34;
        if ( v33 > v37 )
          v18[6] = v33;
        v38 = v18[2];
        if ( v32 < v18[1] )
          v18[1] = v32;
        v39 = v34 < v38;
        v40 = v18[3];
        if ( v39 )
          v18[2] = v34;
        if ( v33 < v40 )
          v18[3] = v33;
        v10 = *a2;
        v87 += 28;
        ++v88;
      }
      while ( v88 < -1227133513 * ((a2[1] - *a2) >> 2) );
      i = v85;
    }
    v41 = 0;
    v42 = 0;
    do
    {
      ++v42;
      v43 = (char *)v98 + v41;
      *v43 = 0;
      v43[2] = 0;
      v43[1] = 0;
      v41 += 12;
    }
    while ( v42 != i );
    if ( 1227133513 * ((a2[1] - *a2) >> 2) )
    {
      v44 = 0;
      v82 = i;
      v45 = 0;
      v46 = *a2;
      do
      {
        v47 = (float *)(v46 + v44);
        v48 = 12 * *((_DWORD *)__p[0] + v45);
        v49 = (float)(v47[2] + v47[5]) * 0.5;
        v50 = (float)(v47[3] + v47[6]) * 0.5;
        v51 = (char *)v98;
        ++v45;
        *(float *)((char *)v98 + v48) = *(float *)((char *)v98 + v48) + (float)((float)(v47[1] + v47[4]) * 0.5);
        v52 = (float *)&v51[v48];
        v52[1] = v52[1] + v49;
        v52[2] = v52[2] + v50;
        v46 = *a2;
        v44 += 28;
      }
      while ( v45 < -1227133513 * ((a2[1] - *a2) >> 2) );
      i = v82;
    }
    v53 = 0;
    v54 = 0;
    v55 = 0;
    do
    {
      v56 = (char *)v98;
      ++v55;
      v57 = 1.0 / (float)*(unsigned int *)(v94[0] + v53);
      *(float *)((char *)v98 + v54) = *(float *)((char *)v98 + v54) * v57;
      v58 = (float *)&v56[v54];
      v58[1] = v58[1] * v57;
      v58[2] = v58[2] * v57;
      v54 += 12;
      v53 += 28;
    }
    while ( v55 != i );
    v59 = 0;
    v83 = 0.0;
    v60 = 0;
    do
    {
      v61 = *(float *)((char *)v98 + v59) - *(float *)((char *)p + v59);
      v62 = *(float *)((char *)v98 + v59 + 4) - *(float *)((char *)p + v59 + 4);
      v63 = *(float *)((char *)v98 + v59 + 8) - *(float *)((char *)p + v59 + 8);
      v65 = v83 + (float)((float)((float)(v61 * v61) + (float)(v62 * v62)) + (float)(v63 * v63));
      v64 = *(float *)((char *)v98 + v59 + 8) - *(float *)((char *)p + v59 + 8);
      v83 = v83 + (float)((float)((float)(v61 * v61) + (float)(v62 * v62)) + (float)(v64 * v64));
      ++v60;
      if ( v65 > 0.01 )
      {
        std::vector<glitch::core::vector3d<float>,glitch::core::SAllocator<glitch::core::vector3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
          &p,
          &v98);
        goto LABEL_8;
      }
      v59 += 12;
    }
    while ( v60 != i );
    std::vector<glitch::core::vector3d<float>,glitch::core::SAllocator<glitch::core::vector3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
      &p,
      &v98);
    v66 = 0;
    ++v90;
    if ( v98 != v99 )
      v99 = (char *)v98;
    for ( j = 0; j != i; ++j )
    {
      v102 = *(_DWORD *)(v94[0] + v66) / v92;
      if ( v102 )
      {
        if ( v102 == 1 )
        {
          k = 1;
        }
        else
        {
          for ( k = 1; k < v102; k *= 2 )
            ;
        }
        v69 = -1;
        do
        {
          k >>= 1;
          ++v69;
        }
        while ( k );
        glitch::video::distributeMeans(v69, (float *)(v94[0] + v66 + 4), &v98, 0, &v102);
      }
      v66 += 28;
    }
    v70 = i - -1431655765 * ((v99 - (_BYTE *)v98) >> 2);
    v101 = v70;
    if ( i != -1431655765 * ((v99 - (_BYTE *)v98) >> 2) )
    {
      if ( v70 == 1 )
      {
        v71 = 1;
      }
      else
      {
        v71 = 1;
        do
          v71 *= 2;
        while ( v70 > v71 );
      }
      v72 = -1;
      do
      {
        v71 >>= 1;
        ++v72;
      }
      while ( v71 );
      glitch::video::distributeMeans(v72, a4, &v98, 0, &v101);
    }
    std::vector<glitch::core::vector3d<float>,glitch::core::SAllocator<glitch::core::vector3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
      &p,
      &v98);
  }
  while ( v90 != 5 );
  v73 = -1227133513 * ((a2[1] - *a2) >> 2);
  v74 = 0;
  v101 = 0;
  if ( v73 )
  {
    do
    {
      v76 = std::map<unsigned int,std::vector<unsigned int>>::operator[]<unsigned int>(a1, (unsigned int *)__p[0] + v74);
      v77 = (unsigned int *)v76[1];
      if ( v77 == (unsigned int *)v76[2] )
      {
        std::vector<unsigned int>::_M_insert_overflow((int)v76, (int)v77, &v101);
      }
      else
      {
        *v77 = v101;
        v76[1] += 4;
      }
      v75 = (a2[1] - *a2) >> 2;
      v74 = v101 + 1;
      v101 = v74;
    }
    while ( v74 < -1227133513 * v75 );
  }
  std::vector<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::~vector((int)v94);
  if ( __p[0] )
  {
    v78 = ((char *)__p[2] - (char *)__p[0]) & 0xFFFFFFFC;
    if ( v78 > 0x80 )
      LC_API_FREE_0(__p[0]);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(__p[0], v78);
  }
  v79 = v97;
  if ( v97 != p )
    v79 = &v97[-12 * ((715827883 * ((unsigned int)(v97 - 12 - (_BYTE *)p) >> 2)) & 0x3FFFFFFF) - 12];
  if ( v79 )
    GlitchFree(p);
  v80 = v99;
  if ( v99 != v98 )
    v80 = &v99[-12 * ((715827883 * ((unsigned int)(v99 - 12 - (_BYTE *)v98) >> 2)) & 0x3FFFFFFF) - 12];
  if ( v80 )
    GlitchFree(v98);
}


// ===== 5a6568 glitch::video::kdTreeClustering(std::map<uint,std::vector<uint,std::allocator<uint>>,std::less<uint>,std::allocator<std::pair<uint const,std::vector<uint,std::allocator<uint>>>>> &,std::vector const&<std::pair<uint,glitch::core::aabbox3d<float>>,std::vector const::SAllocator<glitch::core::aabbox3d,(glitch::memory::E_MEMORY_HINT)0>>,uint,glitch::core const&) =====
void __fastcall glitch::video::kdTreeClustering(_DWORD *a1, int *a2, unsigned int a3, float *a4)
{
  int v4; // r4
  int v5; // r6
  unsigned int v9; // r0
  int v10; // r3
  float v11; // r2
  float v12; // r12
  float v13; // r10
  float v14; // r11
  float v15; // r5
  int v16; // r5
  int v17; // r3
  int v18; // r1
  int v19; // r3
  unsigned int v20; // r6
  int v21; // r2
  char *v22; // r1
  char *v23; // r2
  unsigned int v24; // r5
  _DWORD *v25; // r0
  float *v26; // r1
  int v27; // r7
  int v28; // r3
  void *v29; // r0
  char *v30; // r3
  int v31; // r8
  unsigned int v32; // r5
  _DWORD *v33; // r1
  float v34; // [sp+14h] [bp-A0h]
  unsigned int v36; // [sp+24h] [bp-90h]
  void *p; // [sp+28h] [bp-8Ch] BYREF
  char *v38; // [sp+2Ch] [bp-88h]
  int v39; // [sp+30h] [bp-84h]
  float v40; // [sp+34h] [bp-80h]
  int v41; // [sp+38h] [bp-7Ch]
  int v42; // [sp+3Ch] [bp-78h]
  char v43; // [sp+40h] [bp-74h]
  void **v44[6]; // [sp+44h] [bp-70h] BYREF
  int v45; // [sp+5Ch] [bp-58h]
  float v46[6]; // [sp+60h] [bp-54h] BYREF
  int v47; // [sp+78h] [bp-3Ch]
  float v48[7]; // [sp+7Ch] [bp-38h] BYREF
  char *v49; // [sp+98h] [bp-1Ch] BYREF
  char *v50; // [sp+9Ch] [bp-18h]
  int v51; // [sp+A0h] [bp-14h]
  float *v52; // [sp+A4h] [bp-10h] BYREF
  int v53; // [sp+A8h] [bp-Ch] BYREF
  unsigned int v54; // [sp+ACh] [bp-8h] BYREF

  v4 = a2[1];
  v5 = *a2;
  v9 = 613566757 * ((v4 - *a2) >> 2) / a3;
  if ( v9 )
  {
    v10 = -1;
    do
    {
      v9 >>= 1;
      ++v10;
    }
    while ( v9 );
  }
  else
  {
    v10 = -1;
  }
  v11 = a4[3];
  v12 = *a4;
  v34 = a4[5];
  v13 = a4[1];
  v14 = a4[2];
  v15 = a4[4];
  v44[3] = (void **)&dword_1C;
  v46[4] = v15;
  v16 = 0;
  v45 = v10 + 1;
  v46[3] = v11;
  v44[5] = (void **)&dword_20;
  v44[4] = (void **)&dword_20;
  v46[0] = v12;
  v46[1] = v13;
  v46[2] = v14;
  v46[5] = v34;
  p = nullptr;
  v38 = nullptr;
  v39 = 0;
  v41 = 0;
  v42 = 0;
  memset(v44, 0, 12);
  v47 = 0;
  v40 = (float)(v12 + v11) * 0.5;
  v17 = v10 + 1;
  v18 = v5;
  v43 = 0;
  if ( -1227133513 * ((v4 - v5) >> 2) )
  {
    v20 = 0;
    while ( 1 )
    {
      glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::addElemInternal(
        (int)&p,
        v18 + v16,
        (int)&p,
        v17,
        v46);
      v18 = *a2;
      ++v20;
      v21 = (a2[1] - *a2) >> 2;
      v19 = ++v47;
      v16 += 28;
      if ( v20 >= -1227133513 * v21 )
        break;
      v17 = v45;
    }
  }
  else
  {
    v19 = 0;
  }
  v22 = nullptr;
  v23 = nullptr;
  v49 = nullptr;
  v50 = nullptr;
  v51 = 0;
  v24 = 0;
  if ( v19 )
  {
    do
    {
      if ( v23 != v22 )
        v50 = v22;
      v53 = -1082130432;
      v52 = nullptr;
      glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::findFarthestElemInternal(
        (int)&p,
        &v52,
        (float *)&v53,
        (int *)&p);
      v48[0] = *v52;
      v48[1] = *(float *)&byte_4[(_DWORD)v52];
      v48[2] = *(float *)&byte_8[(_DWORD)v52];
      v48[3] = *(float *)&byte_9[(_DWORD)v52 + 3];
      v48[4] = *(float *)((char *)&word_10 + (_DWORD)v52);
      v48[5] = *(float *)((char *)&dword_14 + (_DWORD)v52);
      v48[6] = *(float *)((char *)&off_18 + (_DWORD)v52);
      glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::removeElemInternal(
        (int)&p,
        v48,
        (int)&p);
      glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::findKNearest(
        (float *)&p,
        a3 / 3,
        v48,
        (int)&v49);
      v54 = v24;
      v25 = std::map<unsigned int,std::vector<unsigned int>>::operator[]<unsigned int>(a1, &v54);
      v26 = (float *)v25[1];
      v27 = (int)v25;
      ++v24;
      if ( v26 == (float *)v25[2] )
      {
        std::vector<unsigned int>::_M_insert_overflow((int)v25, (int)v26, v48);
      }
      else
      {
        *v26 = v48[0];
        v25[1] += 4;
      }
      v22 = v49;
      v23 = v50;
      if ( 1227133513 * ((v50 - v49) >> 2) )
      {
        v31 = 0;
        v36 = v24;
        v32 = 0;
        do
        {
          glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::removeElemInternal(
            (int)&p,
            (float *)&v22[v31],
            (int)&p);
          v33 = *(_DWORD **)(v27 + 4);
          if ( v33 == *(_DWORD **)(v27 + 8) )
          {
            std::vector<unsigned int>::_M_insert_overflow(v27, (int)v33, &v49[v31]);
          }
          else
          {
            *v33 = *(_DWORD *)&v49[v31];
            *(_DWORD *)(v27 + 4) += 4;
          }
          v22 = v49;
          v23 = v50;
          ++v32;
          v31 += 28;
        }
        while ( v32 < -1227133513 * ((v50 - v49) >> 2) );
        v24 = v36;
        v28 = v47;
      }
      else
      {
        v28 = v47;
      }
    }
    while ( v28 );
  }
  v29 = v22;
  if ( v23 != v22 )
    v22 = &v23[-28 * ((920350135 * ((unsigned int)(v23 - 28 - v22) >> 2)) & 0x3FFFFFFF) - 28];
  if ( v22 )
    GlitchFree(v29);
  boost::object_pool<glitch::core::CKdTree<std::pair<unsigned int,glitch::core::aabbox3d<float>>>::SKdNode,boost::default_user_allocator_new_delete>::~object_pool(v44);
  v30 = v38;
  if ( v38 != p )
    v30 = &v38[-28 * ((920350135 * ((unsigned int)(v38 - 28 - (_BYTE *)p) >> 2)) & 0x3FFFFFFF) - 28];
  if ( v30 )
    GlitchFree(p);
}


// ===== 5a69a0 std::allocator<std::priv::_Rb_tree_node<std::pair<ushort const,ushort>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned short const,unsigned short>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 20;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 5a69c0 std::priv::_Rb_tree<ushort,std::less<ushort>,std::pair<ushort const,ushort>,std::priv::_Select1st<std::pair<ushort const,ushort>>,std::priv::_MapTraitsT<std::pair<ushort const,ushort>>,std::allocator<std::pair<ushort const,ushort>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<ushort const,ushort> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,unsigned short>,std::priv::_Select1st<std::pair<unsigned short const,unsigned short>>,std::priv::_MapTraitsT<std::pair<unsigned short const,unsigned short>>,std::allocator<std::pair<unsigned short const,unsigned short>>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        int a3,
        unsigned __int16 *a4,
        int a5,
        int a6)
{
  _WORD *v10; // r0
  _WORD *v11; // r6
  unsigned __int16 v12; // r8
  _WORD *v14; // r0
  unsigned __int16 v15; // r8
  unsigned __int16 v16; // r8

  if ( a2 == (_DWORD *)a3 )
  {
    v11 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned short const,unsigned short>>>::allocate();
    v11[8] = *a4;
    v16 = a4[1];
    *((_DWORD *)v11 + 3) = 0;
    v11[9] = v16;
    *((_DWORD *)v11 + 2) = 0;
    a2[2] = v11;
    a2[1] = v11;
    a2[3] = v11;
  }
  else if ( a6 || !a5 && *a4 >= (unsigned int)*(unsigned __int16 *)(a3 + 16) )
  {
    v10 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned short const,unsigned short>>>::allocate();
    v11 = v10;
    v10[8] = *a4;
    v12 = a4[1];
    *((_DWORD *)v10 + 3) = 0;
    v10[9] = v12;
    *((_DWORD *)v10 + 2) = 0;
    *(_DWORD *)(a3 + 12) = v10;
    if ( a3 == a2[3] )
      a2[3] = v10;
  }
  else
  {
    v14 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned short const,unsigned short>>>::allocate();
    v11 = v14;
    v14[8] = *a4;
    v15 = a4[1];
    *((_DWORD *)v14 + 3) = 0;
    v14[9] = v15;
    *((_DWORD *)v14 + 2) = 0;
    *(_DWORD *)(a3 + 8) = v14;
    if ( a3 == a2[2] )
      a2[2] = v14;
  }
  *((_DWORD *)v11 + 1) = a3;
  std::priv::_Rb_global<bool>::_Rebalance((int)v11, a2 + 1);
  ++a2[4];
  *a1 = v11;
  return a1;
}


// ===== 5a6ae4 std::priv::_Rb_tree<ushort,std::less<ushort>,std::pair<ushort const,ushort>,std::priv::_Select1st<std::pair<ushort const,ushort>>,std::priv::_MapTraitsT<std::pair<ushort const,ushort>>,std::allocator<std::pair<ushort const,ushort>>>::insert_unique(std::pair<ushort const,ushort> const&) =====
int __fastcall std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,unsigned short>,std::priv::_Select1st<std::pair<unsigned short const,unsigned short>>,std::priv::_MapTraitsT<std::pair<unsigned short const,unsigned short>>,std::allocator<std::pair<unsigned short const,unsigned short>>>::insert_unique(
        int a1,
        _DWORD *a2,
        unsigned __int16 *a3)
{
  int v3; // r12
  unsigned int v6; // r6
  unsigned int v7; // r0
  int v8; // r5
  int v9; // r2
  int v10; // r5
  int v12; // r0
  int v13; // r3
  int v14; // r2
  int v15; // r3
  int v16; // [sp+8h] [bp-8h] BYREF
  int v17; // [sp+Ch] [bp-4h] BYREF

  v3 = a2[1];
  if ( v3 )
  {
    v6 = *a3;
    while ( 1 )
    {
      v7 = *(unsigned __int16 *)(v3 + 16);
      v8 = 1;
      if ( v7 <= v6 )
      {
        v9 = *(_DWORD *)(v3 + 12);
        v8 = 0;
      }
      else
      {
        v9 = *(_DWORD *)(v3 + 8);
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
    v3 = (int)a2;
  }
  if ( v3 == a2[2] )
  {
    std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,unsigned short>,std::priv::_Select1st<std::pair<unsigned short const,unsigned short>>,std::priv::_MapTraitsT<std::pair<unsigned short const,unsigned short>>,std::allocator<std::pair<unsigned short const,unsigned short>>>::_M_insert(
      &v17,
      a2,
      v3,
      a3,
      v3,
      0);
    v15 = v17;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v15;
    return a1;
  }
  if ( !*(_BYTE *)v3 && v3 == *(_DWORD *)(*(_DWORD *)(v3 + 4) + 4) )
  {
    v6 = *a3;
    v10 = *(_DWORD *)(v3 + 12);
    v7 = *(unsigned __int16 *)(v10 + 16);
  }
  else
  {
    v12 = *(_DWORD *)(v3 + 8);
    if ( v12 )
    {
      while ( *(_DWORD *)(v12 + 12) )
        v12 = *(_DWORD *)(v12 + 12);
      if ( *a3 <= (unsigned int)*(unsigned __int16 *)(v12 + 16) )
      {
        *(_DWORD *)a1 = v12;
        *(_BYTE *)(a1 + 4) = 0;
        return a1;
      }
LABEL_25:
      std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,unsigned short>,std::priv::_Select1st<std::pair<unsigned short const,unsigned short>>,std::priv::_MapTraitsT<std::pair<unsigned short const,unsigned short>>,std::allocator<std::pair<unsigned short const,unsigned short>>>::_M_insert(
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
    v14 = *(_DWORD *)(v3 + 4);
    if ( v3 == *(_DWORD *)(v14 + 8) )
    {
      while ( 1 )
      {
        v10 = *(_DWORD *)(v14 + 4);
        if ( *(_DWORD *)(v10 + 8) != v14 )
          break;
        v14 = *(_DWORD *)(v14 + 4);
      }
      v6 = *a3;
      v7 = *(unsigned __int16 *)(v10 + 16);
    }
    else
    {
      v10 = *(_DWORD *)(v3 + 4);
      v6 = *a3;
      v7 = *(unsigned __int16 *)(v14 + 16);
    }
  }
LABEL_12:
  if ( v6 > v7 )
    goto LABEL_25;
  *(_DWORD *)a1 = v10;
  *(_BYTE *)(a1 + 4) = 0;
  return a1;
}


// ===== 5a6c6c std::priv::_Rb_tree<ushort,std::less<ushort>,std::pair<ushort const,ushort>,std::priv::_Select1st<std::pair<ushort const,ushort>>,std::priv::_MapTraitsT<std::pair<ushort const,ushort>>,std::allocator<std::pair<ushort const,ushort>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<ushort const,ushort>,std::priv::_MapTraitsT<std::pair<ushort const,ushort>>>,std::pair<ushort const,ushort> const&) =====
int *__fastcall std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,unsigned short>,std::priv::_Select1st<std::pair<unsigned short const,unsigned short>>,std::priv::_MapTraitsT<std::pair<unsigned short const,unsigned short>>,std::allocator<std::pair<unsigned short const,unsigned short>>>::insert_unique(
        int *a1,
        _DWORD *a2,
        int *a3,
        unsigned __int16 *a4)
{
  int v4; // r4
  int v7; // r12
  unsigned int v8; // r2
  unsigned int v9; // r0
  int v10; // r8
  int i; // r12
  unsigned int v13; // r2
  unsigned int v14; // r12
  int v15; // lr
  int v16; // r2
  int v17; // r3
  int v18; // r3
  int v19; // [sp+8h] [bp-24h] BYREF
  int v20; // [sp+10h] [bp-1Ch] BYREF
  int v21; // [sp+18h] [bp-14h] BYREF
  int v22[3]; // [sp+20h] [bp-Ch] BYREF

  v4 = *a3;
  if ( *a3 == a2[2] )
  {
    if ( !a2[4] )
    {
      std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,unsigned short>,std::priv::_Select1st<std::pair<unsigned short const,unsigned short>>,std::priv::_MapTraitsT<std::pair<unsigned short const,unsigned short>>,std::allocator<std::pair<unsigned short const,unsigned short>>>::insert_unique(
        (int)v22,
        a2,
        a4);
      *a1 = v22[0];
      return a1;
    }
    v13 = *a4;
    v14 = *(unsigned __int16 *)(v4 + 16);
    if ( v13 < v14 )
    {
      std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,unsigned short>,std::priv::_Select1st<std::pair<unsigned short const,unsigned short>>,std::priv::_MapTraitsT<std::pair<unsigned short const,unsigned short>>,std::allocator<std::pair<unsigned short const,unsigned short>>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        v4,
        0);
      return a1;
    }
    if ( v13 > v14 )
    {
      v15 = *(_DWORD *)(v4 + 12);
      if ( v15 )
      {
        for ( i = *(_DWORD *)(v4 + 12); *(_DWORD *)(i + 8); i = *(_DWORD *)(i + 8) )
          ;
      }
      else
      {
        v18 = *(_DWORD *)(v4 + 4);
        if ( v4 == *(_DWORD *)(v18 + 12) )
        {
          do
          {
            i = v18;
            v18 = *(_DWORD *)(v18 + 4);
          }
          while ( *(_DWORD *)(v18 + 12) == i );
        }
        else
        {
          i = v4;
        }
        if ( v18 != *(_DWORD *)(i + 12) )
          i = v18;
      }
      if ( a2 == (_DWORD *)i )
        goto LABEL_63;
      if ( v13 >= *(unsigned __int16 *)(i + 16) )
      {
        std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,unsigned short>,std::priv::_Select1st<std::pair<unsigned short const,unsigned short>>,std::priv::_MapTraitsT<std::pair<unsigned short const,unsigned short>>,std::allocator<std::pair<unsigned short const,unsigned short>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,unsigned short>,std::priv::_Select1st<std::pair<unsigned short const,unsigned short>>,std::priv::_MapTraitsT<std::pair<unsigned short const,unsigned short>>,std::allocator<std::pair<unsigned short const,unsigned short>>>::_M_insert(
          a1,
          a2,
          v4,
          a4,
          0,
          v4);
        return a1;
      }
      goto LABEL_42;
    }
    goto LABEL_45;
  }
  if ( (_DWORD *)v4 != a2 )
  {
    if ( *(_BYTE *)v4 )
    {
      v7 = *(_DWORD *)(v4 + 8);
      if ( !v7 )
      {
LABEL_26:
        v7 = *(_DWORD *)(v4 + 4);
        if ( v4 == *(_DWORD *)(v7 + 8) )
        {
          while ( *(_DWORD *)(*(_DWORD *)(v7 + 4) + 8) == v7 )
            v7 = *(_DWORD *)(v7 + 4);
          v7 = *(_DWORD *)(v7 + 4);
        }
        goto LABEL_8;
      }
    }
    else
    {
      if ( v4 == *(_DWORD *)(*(_DWORD *)(v4 + 4) + 4) )
      {
        v7 = *(_DWORD *)(v4 + 12);
LABEL_8:
        v8 = *a4;
        v9 = *(unsigned __int16 *)(v4 + 16);
        if ( v8 < v9 && *(unsigned __int16 *)(v7 + 16) < v8 )
        {
          if ( *(_DWORD *)(v7 + 12) )
            std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,unsigned short>,std::priv::_Select1st<std::pair<unsigned short const,unsigned short>>,std::priv::_MapTraitsT<std::pair<unsigned short const,unsigned short>>,std::allocator<std::pair<unsigned short const,unsigned short>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              v4,
              0);
          else
            std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,unsigned short>,std::priv::_Select1st<std::pair<unsigned short const,unsigned short>>,std::priv::_MapTraitsT<std::pair<unsigned short const,unsigned short>>,std::allocator<std::pair<unsigned short const,unsigned short>>>::_M_insert(
              a1,
              a2,
              v7,
              a4,
              0,
              v7);
          return a1;
        }
        v10 = *(_DWORD *)(v4 + 12);
        if ( v10 )
        {
          for ( i = *(_DWORD *)(v4 + 12); *(_DWORD *)(i + 8); i = *(_DWORD *)(i + 8) )
            ;
        }
        else
        {
          v17 = *(_DWORD *)(v4 + 4);
          if ( v4 == *(_DWORD *)(v17 + 12) )
          {
            do
            {
              i = v17;
              v17 = *(_DWORD *)(v17 + 4);
            }
            while ( i == *(_DWORD *)(v17 + 12) );
          }
          else
          {
            i = v4;
          }
          if ( v17 != *(_DWORD *)(i + 12) )
            i = v17;
        }
        if ( v8 < v9 )
          goto LABEL_31;
        if ( v8 > v9 )
        {
          if ( a2 == (_DWORD *)i || *(unsigned __int16 *)(i + 16) > v8 )
          {
            if ( !v10 )
            {
              std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,unsigned short>,std::priv::_Select1st<std::pair<unsigned short const,unsigned short>>,std::priv::_MapTraitsT<std::pair<unsigned short const,unsigned short>>,std::allocator<std::pair<unsigned short const,unsigned short>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,unsigned short>,std::priv::_Select1st<std::pair<unsigned short const,unsigned short>>,std::priv::_MapTraitsT<std::pair<unsigned short const,unsigned short>>,std::allocator<std::pair<unsigned short const,unsigned short>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,unsigned short>,std::priv::_Select1st<std::pair<unsigned short const,unsigned short>>,std::priv::_MapTraitsT<std::pair<unsigned short const,unsigned short>>,std::allocator<std::pair<unsigned short const,unsigned short>>>::insert_unique(
            (int)&v19,
            a2,
            a4);
          *a1 = v19;
          return a1;
        }
LABEL_45:
        *a1 = v4;
        return a1;
      }
      v7 = *(_DWORD *)(v4 + 8);
      if ( !v7 )
        goto LABEL_26;
    }
    while ( *(_DWORD *)(v7 + 12) )
      v7 = *(_DWORD *)(v7 + 12);
    goto LABEL_8;
  }
  v16 = *(_DWORD *)(v4 + 12);
  if ( *(unsigned __int16 *)(v16 + 16) >= (unsigned int)*a4 )
  {
    std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,unsigned short>,std::priv::_Select1st<std::pair<unsigned short const,unsigned short>>,std::priv::_MapTraitsT<std::pair<unsigned short const,unsigned short>>,std::allocator<std::pair<unsigned short const,unsigned short>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,unsigned short>,std::priv::_Select1st<std::pair<unsigned short const,unsigned short>>,std::priv::_MapTraitsT<std::pair<unsigned short const,unsigned short>>,std::allocator<std::pair<unsigned short const,unsigned short>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      v4);
  }
  return a1;
}


// ===== 5a6fe0 glitch::video::CBatchDriver::thisAppendBatch(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&,glitch::video::CPrimitiveStream const&,boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&) =====
int __fastcall glitch::video::CBatchDriver::thisAppendBatch(float *a1, int *a2, _DWORD *a3, int *a4)
{
  _DWORD *v4; // r3
  glitch::video::CVertexStreams *v5; // r4
  int v6; // r3
  glitch::IReferenceCounted *v7; // r0
  _BOOL4 isVertexStreamHomolaced; // r0
  int *j; // r10
  int *v10; // r1
  int v11; // r4
  int v12; // r7
  int v13; // r6
  glitch::IReferenceCounted *v14; // r5
  int v15; // r2
  int v16; // r11
  glitch::video::CVertexStreams *v17; // r10
  int v18; // r9
  char *v19; // r8
  __int16 v20; // r3
  glitch::IReferenceCounted *v21; // r0
  int v22; // r2
  size_t v23; // r6
  void (__fastcall *v24)(glitch::IReferenceCounted **, float *, _DWORD, int, size_t, void *, int); // r5
  void *v25; // r0
  int v26; // r2
  int v27; // r3
  glitch::IReferenceCounted *v28; // r0
  glitch::IReferenceCounted *v29; // r9
  char *v30; // r5
  int v31; // r6
  glitch::video::CVertexStreams *v32; // r7
  glitch::IReferenceCounted **v33; // r3
  glitch::IReferenceCounted *v34; // r0
  size_t v35; // r7
  float v36; // r3
  void (__fastcall *v37)(void **, float *, int, int, size_t, void *, int); // r6
  void *v38; // r0
  int v39; // r6
  int v40; // r0
  int v41; // r1
  _DWORD *v42; // r8
  _DWORD *v43; // r3
  int v44; // r11
  int v45; // r3
  __int16 v46; // r9
  int v47; // r7
  int i; // r6
  int *v49; // r12
  unsigned int v50; // r4
  int *v51; // r3
  int *v52; // r1
  unsigned int v53; // r2
  bool v54; // cf
  int *v55; // r2
  _BYTE *v56; // r4
  char v57; // r3
  char v58; // r3
  _BYTE *v59; // r4
  char v60; // r3
  glitch::IReferenceCounted *v61; // r4
  glitch::video::CVertexStreams *v62; // r2
  int v63; // r3
  int v64; // r6
  int v65; // r6
  glitch::video::CVertexStreams *v66; // r7
  glitch::IReferenceCounted *v67; // r0
  glitch::video::CVertexStreams *v68; // r6
  glitch::video::CVertexStreams *v69; // r4
  int v70; // r2
  _WORD *v71; // r5
  _WORD *v72; // r2
  int *v73; // r6
  unsigned int v74; // r9
  glitch::scene::CAppendMeshBuffer *v75; // r10
  unsigned int v76; // r0
  int v77; // r9
  int v78; // r10
  _BYTE *v79; // r11
  int v80; // r10
  _DWORD *v81; // r0
  unsigned int v82; // r0
  _DWORD *v83; // r10
  int v84; // r3
  int v85; // r2
  _DWORD *v86; // r10
  unsigned int v87; // kr00_4
  unsigned int v88; // r1
  unsigned int v89; // r2
  int v90; // r3
  _DWORD *v91; // r3
  glitch::video::CVertexStreams *v92; // r10
  int v93; // r3
  glitch::IReferenceCounted *v94; // r0
  int *v96; // r2
  unsigned int v97; // r3
  bool v98; // cf
  int *v99; // r3
  int v100; // r3
  _BYTE *v101; // r4
  char v102; // r3
  size_t v103; // r6
  void (__fastcall *v104)(glitch::IReferenceCounted **, float *, _DWORD, int, size_t, void *, int); // r4
  void *v105; // r0
  int v106; // r3
  glitch::IReferenceCounted *v107; // r0
  glitch::video::CVertexStreams *v108; // r3
  glitch::video::CVertexStreams *v109; // r4
  glitch::video::CVertexStreams *v110; // r4
  glitch::video::CVertexStreams *v111; // r5
  char *v112; // r4
  glitch::IReferenceCounted *v113; // r0
  char *v114; // r2
  int v115; // r0
  int v116; // r3
  glitch::video::CVertexStreams *v117; // r2
  glitch::video::CVertexStreams *v118; // r4
  glitch::IReferenceCounted *v119; // r3
  glitch::IReferenceCounted *v120; // r0
  int v121; // r3
  int v122; // lr
  int v123; // r12
  glitch::video::CVertexStreams *v124; // r4
  int v125; // r3
  unsigned __int16 *v126; // r11
  int v127; // r9
  unsigned int PrimitiveCount; // r0
  int v129; // r3
  float v130; // r8
  int v131; // r3
  float v132; // r6
  float v133; // r7
  float v134; // r5
  float v135; // r4
  float v136; // r10
  bool v137; // zf
  int v138; // r3
  float v139; // r0
  int v140; // r3
  int v141; // r3
  float v142; // lr
  int v143; // r3
  float *v144; // r3
  _BYTE *v145; // r4
  char v146; // r3
  _BYTE *v147; // r4
  char v148; // r3
  unsigned int v149; // r4
  unsigned int v150; // r0
  char *v151; // r3
  int v152; // r3
  unsigned int v153; // r3
  int v154; // r1
  __int16 v155; // [sp+3Ch] [bp-F0h]
  int v156; // [sp+3Ch] [bp-F0h]
  unsigned int v157; // [sp+3Ch] [bp-F0h]
  int v158; // [sp+40h] [bp-ECh]
  int v159; // [sp+40h] [bp-ECh]
  int v160; // [sp+44h] [bp-E8h]
  int v161; // [sp+48h] [bp-E4h]
  int *v162; // [sp+48h] [bp-E4h]
  int v163; // [sp+48h] [bp-E4h]
  _BOOL4 v165; // [sp+50h] [bp-DCh]
  int v166; // [sp+50h] [bp-DCh]
  unsigned int v167; // [sp+50h] [bp-DCh]
  int *v168; // [sp+54h] [bp-D8h]
  int v169; // [sp+54h] [bp-D8h]
  int v170; // [sp+54h] [bp-D8h]
  float v171; // [sp+54h] [bp-D8h]
  float v172; // [sp+54h] [bp-D8h]
  int v174; // [sp+58h] [bp-D4h]
  void (__fastcall *v175)(int, _WORD *, _WORD *, int, int, _BYTE *, int, int, int, glitch::video::CPrimitiveStream *, int *, int, int, _DWORD, unsigned int, int, unsigned int, int); // [sp+5Ch] [bp-D0h]
  float v176; // [sp+5Ch] [bp-D0h]
  float v177; // [sp+5Ch] [bp-D0h]
  glitch::video::CPrimitiveStream *v179; // [sp+64h] [bp-C8h]
  int v180; // [sp+68h] [bp-C4h]
  glitch::IReferenceCounted *v181; // [sp+80h] [bp-ACh]
  glitch::video::CVertexStreams *v183; // [sp+8Ch] [bp-A0h] BYREF
  glitch::IReferenceCounted *v184; // [sp+90h] [bp-9Ch]
  int v185; // [sp+94h] [bp-98h]
  int v186; // [sp+98h] [bp-94h]
  int v187; // [sp+9Ch] [bp-90h]
  int v188; // [sp+A0h] [bp-8Ch]
  __int16 v189; // [sp+A4h] [bp-88h]
  __int16 v190; // [sp+A6h] [bp-86h]
  int v191; // [sp+A8h] [bp-84h] BYREF
  int *v192; // [sp+ACh] [bp-80h]
  int *v193; // [sp+B0h] [bp-7Ch]
  int *v194; // [sp+B4h] [bp-78h]
  int v195; // [sp+B8h] [bp-74h]
  glitch::video::CVertexStreams *v196; // [sp+C0h] [bp-6Ch] BYREF
  float v197; // [sp+C4h] [bp-68h]
  float v198; // [sp+C8h] [bp-64h]
  float v199; // [sp+CCh] [bp-60h]
  float v200; // [sp+D0h] [bp-5Ch]
  float v201; // [sp+D4h] [bp-58h]
  int v202; // [sp+D8h] [bp-54h] BYREF
  _DWORD *v203; // [sp+DCh] [bp-50h]
  int *v204; // [sp+E0h] [bp-4Ch]
  int *v205; // [sp+E4h] [bp-48h]
  unsigned int v206; // [sp+E8h] [bp-44h]
  _WORD *v207; // [sp+F0h] [bp-3Ch] BYREF
  _WORD *v208; // [sp+F4h] [bp-38h]
  int v209; // [sp+F8h] [bp-34h]
  void *p; // [sp+FCh] [bp-30h] BYREF
  char *v211; // [sp+100h] [bp-2Ch]
  int v212; // [sp+108h] [bp-24h] BYREF
  unsigned __int16 v213[2]; // [sp+10Ch] [bp-20h] BYREF
  int *v214; // [sp+110h] [bp-1Ch] BYREF
  int v215; // [sp+114h] [bp-18h] BYREF
  glitch::video::CVertexStreams *v216; // [sp+118h] [bp-14h] BYREF
  glitch::IReferenceCounted *v217; // [sp+11Ch] [bp-10h] BYREF
  glitch::IReferenceCounted *v218; // [sp+120h] [bp-Ch] BYREF
  int v219; // [sp+124h] [bp-8h] BYREF

  v137 = *((_DWORD *)a1 + 143) == 0;
  LOBYTE(v202) = 0;
  v206 = 0;
  v203 = nullptr;
  v204 = &v202;
  v205 = &v202;
  if ( v137 )
    goto LABEL_322;
  v4 = (_DWORD *)*a2;
  if ( *a2 )
    ++*v4;
  v5 = *((glitch::video::CVertexStreams **)a1 + 144);
  *((_DWORD *)a1 + 144) = v4;
  if ( v5 )
  {
    v137 = (*(_DWORD *)v5)-- == 1;
    if ( v137 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v5);
      LC_API_FREE_0(v5);
    }
  }
  *((_DWORD *)a1 + 145) = a3;
  v6 = *a4;
  if ( *a4 )
    ++*(_DWORD *)(v6 + 4);
  v7 = *((glitch::IReferenceCounted **)a1 + 146);
  *((_DWORD *)a1 + 146) = v6;
  if ( v7 )
    glitch::IReferenceCounted::drop(v7);
  if ( (*(int (__fastcall **)(int, _DWORD, _DWORD, int *))(**((_DWORD **)a1 + 143) + 8))(
         *((_DWORD *)a1 + 143),
         0,
         0,
         (int *)a1 + 144) )
  {
LABEL_322:
    if ( (a1[148] != 0.0 || a1[149] != 0.0 || a1[150] != 0.0) && !*((_BYTE *)a1 + 608)
      || *((_DWORD *)a1 + 151) && *((_BYTE *)a1 + 608) )
    {
      v125 = *a2;
      v201 = -3.4028e38;
      v198 = 3.4028e38;
      v199 = -3.4028e38;
      v200 = -3.4028e38;
      *(float *)&v196 = 3.4028e38;
      v197 = 3.4028e38;
      v180 = *(unsigned __int16 *)(v125 + 34);
      v126 = (unsigned __int16 *)(glitch::video::IBuffer::map(*a3, 1) + a3[1]);
      v163 = 0;
      v167 = 0;
      v127 = glitch::video::IBuffer::map(*(_DWORD *)(*a2 + 20), 1) + *(_DWORD *)(*a2 + 24);
      PrimitiveCount = glitch::video::CPrimitiveStream::getPrimitiveCount((glitch::video::CPrimitiveStream *)a3);
      std::vector<std::pair<unsigned int,glitch::core::aabbox3d<float>>,glitch::core::SAllocator<std::pair<unsigned int,glitch::core::aabbox3d<float>>,(glitch::memory::E_MEMORY_HINT)0>>::vector(
        &p,
        PrimitiveCount);
      while ( v167 < glitch::video::CPrimitiveStream::getPrimitiveCount((glitch::video::CPrimitiveStream *)a3) )
      {
        v129 = *v126 * v180;
        v130 = *(float *)(v127 + v129);
        v131 = v127 + v129;
        v132 = *(float *)(v131 + 8);
        v133 = *(float *)(v131 + 4);
        if ( v130 <= -3.4028e38 )
          v134 = -3.4028e38;
        else
          v134 = v130;
        if ( v133 <= -3.4028e38 )
          v135 = -3.4028e38;
        else
          v135 = *(float *)(v131 + 4);
        if ( v132 <= -3.4028e38 )
          v136 = -3.4028e38;
        else
          v136 = *(float *)(v131 + 8);
        if ( v130 >= 3.4028e38 )
          v130 = 3.4028e38;
        if ( v133 >= 3.4028e38 )
          v133 = 3.4028e38;
        v137 = v132 >= 3.4028e38;
        if ( v132 >= 3.4028e38 )
          v132 = NAN;
        v138 = v180 * v126[1];
        v139 = *(float *)(v127 + v138);
        v140 = v127 + v138;
        if ( v137 )
          LODWORD(v132) -= 0x800000;
        v171 = *(float *)(v140 + 8);
        v176 = *(float *)(v140 + 4);
        if ( v139 > v134 )
          v134 = v139;
        if ( v176 > v135 )
          v135 = *(float *)(v140 + 4);
        if ( v171 > v136 )
          v136 = *(float *)(v140 + 8);
        if ( v130 > v139 )
          v130 = v139;
        if ( v176 < v133 )
          v133 = *(float *)(v140 + 4);
        if ( v132 > v171 )
          v132 = *(float *)(v140 + 8);
        v141 = v180 * v126[2];
        v142 = *(float *)(v127 + v141);
        v143 = v127 + v141;
        v126 += 3;
        v172 = *(float *)(v143 + 8);
        v177 = *(float *)(v143 + 4);
        if ( v142 > v134 )
          v134 = v142;
        if ( v177 > v135 )
          v135 = *(float *)(v143 + 4);
        if ( v136 < v172 )
          v136 = *(float *)(v143 + 8);
        if ( v130 > v142 )
          v130 = v142;
        if ( v133 > v177 )
          v133 = *(float *)(v143 + 4);
        if ( v172 < v132 )
          v132 = *(float *)(v143 + 8);
        if ( v134 > v199 )
          v199 = v134;
        if ( v135 > v200 )
          v200 = v135;
        if ( v201 < v136 )
          v201 = v136;
        if ( v134 < *(float *)&v196 )
          *(float *)&v196 = v134;
        if ( v135 < v197 )
          v197 = v135;
        if ( v198 > v136 )
          v198 = v136;
        if ( v199 < v130 )
          v199 = v130;
        if ( v133 > v200 )
          v200 = v133;
        if ( v201 < v132 )
          v201 = v132;
        if ( *(float *)&v196 > v130 )
          *(float *)&v196 = v130;
        if ( v133 < v197 )
          v197 = v133;
        if ( v198 > v132 )
          v198 = v132;
        *(_DWORD *)((char *)p + v163) = v167++;
        v144 = (float *)((char *)p + v163);
        v144[6] = v136;
        v144[1] = v130;
        v144[2] = v133;
        v144[3] = v132;
        v144[4] = v134;
        v144[5] = v135;
        v163 += 28;
      }
      v145 = (_BYTE *)*a3;
      v146 = *(_BYTE *)(*a3 + 19);
      if ( (v146 & 0x1Fu) <= 1 )
      {
        if ( (v145[18] & 0x20) != 0 )
          (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v145 + 24))(*a3);
        v145[19] = 0;
      }
      else
      {
        v145[19] = ((v146 & 0x1F) - 1) | v146 & 0xE0;
      }
      v147 = *(_BYTE **)(*a2 + 20);
      v148 = v147[19];
      if ( (v148 & 0x1Fu) <= 1 )
      {
        if ( (v147[18] & 0x20) != 0 )
          (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v147 + 24))(*(_DWORD *)(*a2 + 20));
        v147[19] = 0;
      }
      else
      {
        v147[19] = ((v148 & 0x1F) - 1) | v148 & 0xE0;
      }
      if ( *((_BYTE *)a1 + 608) )
      {
        v149 = a3[4] - a3[3];
        v150 = v149 * v180 / *((_DWORD *)a1 + 151);
        if ( v150 > 1 )
          glitch::video::kdTreeClustering(&v202, (int *)&p, v149 / v150, (float *)&v196);
      }
      else
      {
        glitch::video::spatialGridClustering(&v202, (int *)&p, a1 + 148);
      }
      v151 = v211;
      if ( v211 != p )
        v151 = &v211[-28 * ((920350135 * ((unsigned int)(v211 - 28 - (_BYTE *)p) >> 2)) & 0x3FFFFFFF) - 28];
      if ( v151 )
        GlitchFree(p);
    }
  }
  v207 = nullptr;
  v208 = nullptr;
  v209 = 0;
  if ( v206 <= 1 )
  {
    v117 = (glitch::video::CVertexStreams *)*a2;
    v183 = nullptr;
    v188 = 0;
    v184 = nullptr;
    v185 = 0;
    v186 = 0;
    v187 = 0;
    v190 = 6;
    v189 = 255;
    if ( v117 )
      ++*(_DWORD *)v117;
    v118 = v183;
    v183 = v117;
    if ( v118 )
    {
      v137 = (*(_DWORD *)v118)-- == 1;
      if ( v137 )
      {
        glitch::video::CVertexStreams::~CVertexStreams(v118);
        LC_API_FREE_0(v118);
      }
    }
    v119 = (glitch::IReferenceCounted *)*a3;
    if ( *a3 )
      ++*((_DWORD *)v119 + 1);
    v120 = v184;
    v184 = v119;
    if ( v120 )
      glitch::IReferenceCounted::drop(v120);
    v121 = a3[4];
    v122 = a3[1];
    v123 = a3[2];
    v187 = a3[3];
    v188 = v121;
    v185 = v122;
    v186 = v123;
    v190 = *((_WORD *)a3 + 11);
    v189 = *((_WORD *)a3 + 10);
    std::vector<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>,glitch::video::CPrimitiveStream>>::push_back(
      (int *)&v207,
      (int)&v183);
    if ( v184 )
      glitch::IReferenceCounted::drop(v184);
    v124 = v183;
    if ( v183 )
    {
      v137 = (*(_DWORD *)v183)-- == 1;
      if ( v137 )
      {
        glitch::video::CVertexStreams::~CVertexStreams(v124);
        LC_API_FREE_0(v124);
      }
    }
    goto LABEL_117;
  }
  isVertexStreamHomolaced = glitch::video::isVertexStreamHomolaced((int)a2, &v219);
  j = v204;
  v165 = isVertexStreamHomolaced;
  v10 = &v212;
LABEL_14:
  if ( j == &v202 )
    goto LABEL_117;
  do
  {
    *(float *)&v196 = 0.0;
    if ( v165 )
    {
      v103 = ((j[6] - j[5]) >> 2) * 3 * *(unsigned __int16 *)(*a2 + 34);
      v104 = *(void (__fastcall **)(glitch::IReferenceCounted **, float *, _DWORD, int, size_t, void *, int))(*(_DWORD *)a1 + 120);
      v105 = operator new[](v103, 0);
      v104(&v217, a1, 0, 4, v103, v105, 1);
      v107 = v217;
      if ( v217 )
        v106 = *((_DWORD *)v217 + 1);
      v29 = v217;
      if ( v217 )
      {
        *((_DWORD *)v217 + 1) = v106 + 1;
        v107 = v217;
      }
      if ( v107 )
        glitch::IReferenceCounted::drop(v107);
      glitch::video::CVertexStreams::clone(&v216, *a2);
      v108 = v216;
      if ( v216 )
        ++*(_DWORD *)v216;
      v109 = v196;
      v196 = v108;
      if ( v109 )
      {
        v137 = (*(_DWORD *)v109)-- == 1;
        if ( v137 )
        {
          glitch::video::CVertexStreams::~CVertexStreams(v109);
          LC_API_FREE_0(v109);
        }
      }
      v110 = v216;
      if ( v216 )
      {
        v137 = (*(_DWORD *)v216)-- == 1;
        if ( v137 )
        {
          glitch::video::CVertexStreams::~CVertexStreams(v110);
          LC_API_FREE_0(v110);
        }
      }
      v111 = v196;
      if ( *((glitch::video::CVertexStreams **)v196 + 4) != (glitch::video::CVertexStreams *)((char *)v196 + 20) )
      {
        v112 = (char *)v196 + 36;
        do
        {
          if ( v29 )
            ++*((_DWORD *)v29 + 1);
          v113 = *((glitch::IReferenceCounted **)v112 - 4);
          *((_DWORD *)v112 - 4) = v29;
          if ( v113 )
            glitch::IReferenceCounted::drop(v113);
          glitch::video::CVertexStreams::updateHomogeneityInternal((int)v111, 0);
          v114 = v112;
          if ( v219 )
            *((_DWORD *)v112 - 3) -= v219;
          v111 = v196;
          v112 += 16;
        }
        while ( v114 != *((char **)v196 + 4) );
      }
    }
    else
    {
      if ( *(_DWORD *)(*a2 + 16) == *a2 + 20 )
      {
        v11 = 0;
      }
      else
      {
        v12 = 0;
        v13 = *a2 + 36;
        v11 = 0;
        v168 = j;
        do
        {
          v14 = *(glitch::IReferenceCounted **)(v13 - 16);
          v15 = v11;
          if ( v14 )
            ++*((_DWORD *)v14 + 1);
          v16 = *(unsigned __int16 *)(v13 - 6);
          if ( v14 )
            v10 = *((int **)v14 + 1);
          v17 = v196;
          v18 = *(unsigned __int16 *)(v13 - 4);
          if ( v14 )
            v10 = (int *)((char *)v10 + 1);
          v19 = (char *)v196 + v12 + 20;
          v11 += v18 * glitch::video::detail::SVertexAttributeTypeInspection::ValueTypeSize[v16];
          v20 = *(_WORD *)(v13 - 2);
          if ( v14 )
            *((_DWORD *)v14 + 1) = v10;
          v21 = *(glitch::IReferenceCounted **)v19;
          v12 += 16;
          *(_DWORD *)v19 = v14;
          if ( v21 )
          {
            v158 = v15;
            v155 = v20;
            glitch::IReferenceCounted::drop(v21);
            v20 = v155;
            v15 = v158;
          }
          *((_DWORD *)v19 + 1) = v15;
          *((_WORD *)v19 + 7) = v20;
          *((_WORD *)v19 + 5) = v16;
          *((_WORD *)v19 + 6) = v18;
          glitch::video::CVertexStreams::updateHomogeneityInternal((int)v17, 0);
          if ( v14 )
            glitch::IReferenceCounted::drop(v14);
          v22 = v13;
          v13 += 16;
        }
        while ( v22 != *(_DWORD *)(*a2 + 16) );
        j = v168;
      }
      v23 = v11 * 3 * ((j[6] - j[5]) >> 2);
      v24 = *(void (__fastcall **)(glitch::IReferenceCounted **, float *, _DWORD, int, size_t, void *, int))(*(_DWORD *)a1 + 120);
      v25 = operator new[](v23, 0);
      v24(&v218, a1, 0, 4, v23, v25, 1);
      v28 = v218;
      if ( v218 )
        v27 = *((_DWORD *)v218 + 1);
      v29 = v218;
      if ( v218 )
      {
        *((_DWORD *)v218 + 1) = v27 + 1;
        v28 = v218;
      }
      if ( v28 )
        glitch::IReferenceCounted::drop(v28);
      v30 = (char *)v196 + 20;
      if ( (glitch::video::CVertexStreams *)((char *)v196 + 20) != *(glitch::video::CVertexStreams **)((char *)&word_10 + (_DWORD)v196) )
      {
        v31 = 0;
        do
        {
          *((_WORD *)v30 + 7) = v11;
          if ( v29 )
            v26 = *((_DWORD *)v29 + 1);
          v32 = v196;
          v30 += 16;
          if ( v29 )
            ++v26;
          v33 = (glitch::IReferenceCounted **)((char *)v196 + v31 + 20);
          if ( v29 )
            *((_DWORD *)v29 + 1) = v26;
          v34 = *v33;
          v31 += 16;
          *v33 = v29;
          if ( v34 )
            glitch::IReferenceCounted::drop(v34);
          glitch::video::CVertexStreams::updateHomogeneityInternal((int)v32, 0);
        }
        while ( v30 != *(char **)((char *)&word_10 + (_DWORD)v196) );
      }
    }
    v35 = 6 * ((j[6] - j[5]) >> 2);
    v36 = *a1;
    LOBYTE(v191) = 0;
    v192 = nullptr;
    v195 = 0;
    v193 = &v191;
    v194 = &v191;
    v37 = *(void (__fastcall **)(void **, float *, int, int, size_t, void *, int))(LODWORD(v36) + 120);
    v38 = operator new[](v35, 0);
    v37(&p, a1, 1, 4, v35, v38, 1);
    v39 = glitch::video::IBuffer::map((int)p, 4);
    v215 = glitch::video::IBuffer::map((int)v29, 4);
    if ( v165 )
    {
      v115 = glitch::video::IBuffer::map(*(_DWORD *)(*a2 + 20), 1);
      v169 = v115 + v219;
    }
    else
    {
      v169 = 0;
    }
    v40 = glitch::video::IBuffer::map(*a3, 1);
    v42 = (_DWORD *)j[5];
    v43 = (_DWORD *)j[6];
    if ( v42 == v43 )
      v41 = 0;
    v44 = v40 + a3[1];
    if ( v42 == v43 )
    {
      v161 = v41;
      goto LABEL_76;
    }
    v181 = v29;
    v161 = 0;
    v45 = v39;
    v46 = 0;
    do
    {
      v47 = v45 + 2;
      for ( i = 0; i != 3; ++i )
      {
        v49 = v192;
        v50 = *(unsigned __int16 *)(v44 + 2 * (3 * *v42 + i));
        if ( !v192 )
          goto LABEL_160;
        v51 = v192;
        v52 = &v191;
        while ( 1 )
        {
          v53 = *((unsigned __int16 *)v51 + 8);
          v54 = v53 >= v50;
          if ( v53 >= v50 )
            v55 = (int *)v51[2];
          else
            v55 = (int *)v51[3];
          if ( !v54 )
            v51 = v52;
          v52 = v51;
          if ( !v55 )
            break;
          v51 = v55;
        }
        if ( v51 == &v191 )
        {
LABEL_160:
          v51 = &v191;
        }
        else if ( *((unsigned __int16 *)v51 + 8) > v50 )
        {
          v51 = &v191;
        }
        if ( v51 != &v191 )
        {
          *(_WORD *)(v47 - 2) = *((_WORD *)v51 + 9);
          v45 = v47;
          goto LABEL_73;
        }
        if ( v192 )
        {
          v96 = &v191;
          while ( 1 )
          {
            v97 = *((unsigned __int16 *)v49 + 8);
            v98 = v97 >= v50;
            if ( v97 >= v50 )
              v99 = (int *)v49[2];
            else
              v99 = (int *)v49[3];
            if ( !v98 )
              v49 = v96;
            v96 = v49;
            if ( !v99 )
              break;
            v49 = v99;
          }
          if ( v49 != &v191 )
          {
            v100 = (int)v49;
            if ( *((unsigned __int16 *)v49 + 8) <= v50 )
              goto LABEL_159;
          }
        }
        else
        {
          v49 = &v191;
        }
        v214 = v49;
        v213[0] = v50;
        v213[1] = 0;
        std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,unsigned short>,std::priv::_Select1st<std::pair<unsigned short const,unsigned short>>,std::priv::_MapTraitsT<std::pair<unsigned short const,unsigned short>>,std::allocator<std::pair<unsigned short const,unsigned short>>>::insert_unique(
          &v212,
          &v191,
          (int *)&v214,
          v213);
        v100 = v212;
LABEL_159:
        *(_WORD *)(v100 + 18) = v46;
        glitch::video::copyVertex((void *)v50, (int)a2, (int)&v196, v169, (void **)&v215, v165);
        *(_WORD *)(v47 - 2) = v46++;
        ++v161;
        v45 = v47;
LABEL_73:
        v47 += 2;
      }
      ++v42;
    }
    while ( v42 != (_DWORD *)j[6] );
    v29 = v181;
LABEL_76:
    v56 = p;
    v57 = *((_BYTE *)p + 19);
    if ( (v57 & 0x1Fu) <= 1 )
    {
      if ( (*((_BYTE *)p + 18) & 0x20) != 0 )
        (*(void (__fastcall **)(void *))(*(_DWORD *)p + 24))(p);
      v56[19] = 0;
    }
    else
    {
      *((_BYTE *)p + 19) = ((v57 & 0x1F) - 1) | v57 & 0xE0;
    }
    v58 = *((_BYTE *)v29 + 19);
    if ( (v58 & 0x1Fu) <= 1 )
    {
      if ( (*((_BYTE *)v29 + 18) & 0x20) != 0 )
        (*(void (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v29 + 24))(v29);
      *((_BYTE *)v29 + 19) = 0;
    }
    else
    {
      *((_BYTE *)v29 + 19) = ((v58 & 0x1F) - 1) | v58 & 0xE0;
    }
    v59 = (_BYTE *)*a3;
    v60 = *(_BYTE *)(*a3 + 19);
    if ( (v60 & 0x1Fu) <= 1 )
    {
      if ( (v59[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v59 + 24))(*a3);
      v59[19] = 0;
      if ( v165 )
        goto LABEL_164;
    }
    else
    {
      v59[19] = ((v60 & 0x1F) - 1) | v60 & 0xE0;
      if ( !v165 )
        goto LABEL_82;
LABEL_164:
      v101 = *(_BYTE **)(*a2 + 20);
      v102 = v101[19];
      if ( (v102 & 0x1Fu) <= 1 )
      {
        if ( (v101[18] & 0x20) != 0 )
          (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v101 + 24))(*(_DWORD *)(*a2 + 20));
        v101[19] = 0;
      }
      else
      {
        v101[19] = ((v102 & 0x1F) - 1) | v102 & 0xE0;
      }
    }
LABEL_82:
    *((_DWORD *)v196 + 2) = v161;
    v61 = (glitch::IReferenceCounted *)p;
    if ( p )
      ++*((_DWORD *)p + 1);
    v62 = v196;
    v63 = 0;
    v64 = (j[6] - j[5]) >> 2;
    v183 = nullptr;
    v188 = 0;
    v184 = nullptr;
    v185 = 0;
    v186 = 0;
    v187 = 0;
    v189 = 255;
    v190 = 6;
    if ( *(float *)&v196 != 0.0 )
      v63 = *(_DWORD *)v196;
    v65 = 3 * v64;
    if ( *(float *)&v196 != 0.0 )
      *(_DWORD *)v196 = v63 + 1;
    v66 = v183;
    v183 = v62;
    if ( v66 )
    {
      v137 = (*(_DWORD *)v66)-- == 1;
      if ( v137 )
      {
        glitch::video::CVertexStreams::~CVertexStreams(v66);
        LC_API_FREE_0(v66);
      }
    }
    if ( v61 )
      ++*((_DWORD *)v61 + 1);
    v67 = v184;
    v184 = v61;
    if ( v67 )
      glitch::IReferenceCounted::drop(v67);
    v187 = 0;
    v185 = 0;
    v186 = v65;
    v188 = v161;
    v189 = 1;
    v190 = 6;
    std::vector<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>,glitch::video::CPrimitiveStream>>::push_back(
      (int *)&v207,
      (int)&v183);
    if ( v184 )
      glitch::IReferenceCounted::drop(v184);
    v68 = v183;
    if ( v183 )
    {
      v137 = (*(_DWORD *)v183)-- == 1;
      if ( v137 )
      {
        glitch::video::CVertexStreams::~CVertexStreams(v68);
        LC_API_FREE_0(v68);
      }
    }
    if ( p )
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)p);
    if ( v195 )
    {
      std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,unsigned short>,std::priv::_Select1st<std::pair<unsigned short const,unsigned short>>,std::priv::_MapTraitsT<std::pair<unsigned short const,unsigned short>>,std::allocator<std::pair<unsigned short const,unsigned short>>>::_M_erase(
        (int)&v191,
        v192);
      v194 = &v191;
      v195 = 0;
      v193 = &v191;
      v192 = nullptr;
    }
    if ( v61 )
      glitch::IReferenceCounted::drop(v61);
    v69 = v196;
    if ( *(float *)&v196 != 0.0 )
    {
      v137 = (*(_DWORD *)v196)-- == 1;
      if ( v137 )
      {
        glitch::video::CVertexStreams::~CVertexStreams(v69);
        LC_API_FREE_0(v69);
      }
    }
    glitch::IReferenceCounted::drop(v29);
    v70 = j[3];
    if ( !v70 )
    {
      v116 = j[1];
      v10 = *(int **)(v116 + 12);
      if ( j == v10 )
      {
        do
        {
          j = (int *)v116;
          v116 = *(_DWORD *)(v116 + 4);
        }
        while ( *(int **)(v116 + 12) == j );
        v70 = j[3];
      }
      if ( v116 != v70 )
        j = (int *)v116;
      goto LABEL_14;
    }
    for ( j = (int *)j[3]; j[2]; j = (int *)j[2] )
      ;
  }
  while ( j != &v202 );
LABEL_117:
  glitch::scene::CAppendMeshBuffer::beginAppend(*((_DWORD *)a1 + 72));
  v71 = v207;
  v72 = v208;
  if ( v207 != v208 )
  {
    v162 = (int *)(a1 + 144);
    v73 = (int *)a1;
    do
    {
      while ( (unsigned __int16)v71[13] <= 3u || v71[12] != 1 )
      {
        v71 += 14;
        if ( v71 == v72 )
          goto LABEL_143;
      }
      v74 = *((_DWORD *)v71 + 5) - *((_DWORD *)v71 + 4);
      v75 = (glitch::scene::CAppendMeshBuffer *)v73[72];
      v76 = glitch::video::CPrimitiveStream::getPrimitiveCount((glitch::video::CPrimitiveStream *)(v71 + 2));
      if ( !glitch::scene::CAppendMeshBuffer::hasEnoughSpace(v75, v74, 3 * v76) )
      {
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        puts("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        (*(void (__fastcall **)(int *))(*v73 + 508))(v73);
      }
      v77 = v73[58];
      v78 = *(_DWORD *)v71;
      if ( v77 )
      {
        v79 = (_BYTE *)(*(_DWORD *)v77 + 4);
      }
      else
      {
        LC_API_MEMSET_0(glitch::video::IVideoDriver::DefaultAttribMap, 255, 0x1Eu);
        v152 = *(_DWORD *)(v78 + 16);
        if ( v152 != v78 + 20 )
        {
          v153 = ((v152 - (v78 + 36)) & 0xFFFFFFF0) + 16;
          do
          {
            v154 = v77 >> 4;
            v77 += 16;
            glitch::video::IVideoDriver::DefaultAttribMap[*(unsigned __int16 *)(v78 + 28)] = v154;
            v78 += 16;
          }
          while ( v77 != v153 );
        }
        v79 = glitch::video::IVideoDriver::DefaultAttribMap;
      }
      v80 = v73[74];
      v170 = v73[75];
      v175 = *(void (__fastcall **)(int, _WORD *, _WORD *, int, int, _BYTE *, int, int, int, glitch::video::CPrimitiveStream *, int *, int, int, _DWORD, unsigned int, int, unsigned int, int))(*(_DWORD *)v80 + 12);
      v159 = *((unsigned __int8 *)v73 + 308);
      v156 = v73[72];
      v160 = v73[73];
      v81 = (_DWORD *)(*(int (__fastcall **)(int))(*(_DWORD *)v80 + 20))(v80);
      v166 = *((_DWORD *)v71 + 4);
      v179 = (glitch::video::CPrimitiveStream *)(*v81 + 4);
      v174 = *((_DWORD *)v71 + 5);
      v82 = glitch::video::CPrimitiveStream::getPrimitiveCount((glitch::video::CPrimitiveStream *)(v71 + 2));
      v175(
        v80,
        v71,
        v71 + 2,
        v170,
        v159,
        v79,
        v156 + 20,
        v156 + 24,
        v160,
        v179,
        v73,
        v166,
        v174,
        0,
        v82,
        *(_DWORD *)(v73[72] + 60) / *(_DWORD *)(v73[72] + 72),
        (unsigned int)(*(_DWORD *)(v73[72] + 68) / *(_DWORD *)(v73[72] + 76)) / 3,
        -1);
      v83 = (_DWORD *)v73[72];
      v157 = v83[15];
      v84 = v157;
      v85 = v83[5];
      if ( v83[18] * ((unsigned __int16)(v71[10] - v71[8]) + (unsigned int)(unsigned __int16)(v157 / v83[18])) >= v157 )
        v84 = v83[18] * ((unsigned __int16)(v71[10] - v71[8]) + (unsigned __int16)(v157 / v83[18]));
      v83[15] = v84;
      *(_DWORD *)(v85 + 8) = v84;
      v86 = (_DWORD *)v73[72];
      v87 = v86[17] / v86[19];
      v88 = (glitch::video::CPrimitiveStream::getPrimitiveCount((glitch::video::CPrimitiveStream *)(v71 + 2)) + v87 / 3)
          * 3
          * v86[19];
      v89 = v86[17];
      v90 = v86[15];
      if ( v88 >= v89 )
        v89 = v88;
      v86[8] = v89;
      v86[10] = v90;
      v86[17] = v89;
      v86[9] = 0;
      if ( v73[142] )
      {
        v91 = *(_DWORD **)v71;
        if ( *(_DWORD *)v71 )
          ++*v91;
        v92 = (glitch::video::CVertexStreams *)v73[144];
        v73[144] = (int)v91;
        if ( v92 )
        {
          v137 = (*(_DWORD *)v92)-- == 1;
          if ( v137 )
          {
            glitch::video::CVertexStreams::~CVertexStreams(v92);
            LC_API_FREE_0(v92);
          }
        }
        v73[145] = (int)(v71 + 2);
        v93 = *a4;
        if ( *a4 )
          ++*(_DWORD *)(v93 + 4);
        v94 = (glitch::IReferenceCounted *)v73[146];
        v73[146] = v93;
        if ( v94 )
          glitch::IReferenceCounted::drop(v94);
        (*(void (__fastcall **)(int, _DWORD, _DWORD, int *))(*(_DWORD *)v73[142] + 8))(v73[142], 0, 0, v162);
      }
      v72 = v208;
      v71 += 14;
    }
    while ( v71 != v208 );
  }
LABEL_143:
  std::vector<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>,glitch::video::CPrimitiveStream>>::~vector((void **)&v207);
  if ( v206 )
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::vector<unsigned int>>,std::priv::_Select1st<std::pair<unsigned int const,std::vector<unsigned int>>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::vector<unsigned int>>>,std::allocator<std::pair<unsigned int const,std::vector<unsigned int>>>>::_M_erase(
      (int)&v202,
      v203);
  return 0;
}


// ===== 5a8a80 glitch::video::CBatchDriver::draw(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&,glitch::video::CPrimitiveStream const&,glitch::video::CDriverBinding **,boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&) =====
int __fastcall glitch::video::CBatchDriver::draw(float *a1, int *a2, _DWORD *a3, int a4, int *a5)
{
  return glitch::video::CBatchDriver::thisAppendBatch(a1, a2, a3, a5);
}


// ===== 5a8a88 glitch::scene::CAppendMeshBuffer::setup(void) =====
int __fastcall glitch::scene::CAppendMeshBuffer::setup(glitch::scene::CAppendMeshBuffer *this)
{
  int v2; // r5
  int result; // r0
  int v4; // r3

  v2 = *((_DWORD *)this + 17) / *((_DWORD *)this + 19);
  result = *((_DWORD *)this + 15) / *((_DWORD *)this + 18);
  v4 = *((_DWORD *)this + 5);
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 8) = v2;
  *((_WORD *)this + 22) = 1;
  *((_DWORD *)this + 10) = result;
  *(_DWORD *)(v4 + 8) = result;
  return result;
}


// ===== 5a8ad0 glitch::video::getStringsInternal(glitch::video::E_ORIENTATION *) =====
_UNKNOWN **glitch::video::getStringsInternal()
{
  return &glitch::video::getStringsInternal(glitch::video::E_ORIENTATION *)::strings;
}


// ===== 5a8ae0 glitch::video::IVideoDriver::ICompileData::~ICompileData() =====
void __fastcall glitch::video::IVideoDriver::ICompileData::~ICompileData(
        glitch::video::IVideoDriver::ICompileData *this)
{
  ;
}


// ===== 5a8ae4 glitch::video::IVideoDriver::ICompileData::~ICompileData() =====
void __fastcall glitch::video::IVideoDriver::ICompileData::~ICompileData(
        glitch::video::IVideoDriver::ICompileData *this)
{
  ;
}


// ===== 5a8ae8 glitch::video::IVideoDriver::resetDefaultDynamicLight(void) =====
int __fastcall glitch::video::IVideoDriver::resetDefaultDynamicLight(int this)
{
  _DWORD *v1; // r2
  _DWORD *v2; // r2
  _DWORD *v3; // r2
  _DWORD *v4; // r2
  int v5; // r2

  v1 = *(_DWORD **)(this + 64);
  v1[1] = 0;
  v1[4] = 0;
  v1[3] = 0;
  v1[2] = 0;
  v2 = *(_DWORD **)(this + 64);
  v2[5] = 0;
  v2[8] = 0;
  v2[7] = 0;
  v2[6] = 0;
  v3 = *(_DWORD **)(this + 64);
  v3[9] = 0;
  v3[12] = 0;
  v3[11] = 0;
  v3[10] = 0;
  v4 = *(_DWORD **)(this + 64);
  v4[13] = 1065353216;
  v4[15] = 0;
  v4[14] = 0;
  *(_DWORD *)(*(_DWORD *)(this + 64) + 64) = 0;
  v5 = *(_DWORD *)(this + 64);
  *(_DWORD *)(v5 + 72) = 0;
  *(_DWORD *)(v5 + 68) = 0;
  *(_DWORD *)(*(_DWORD *)(this + 64) + 76) = 0;
  *(_WORD *)(*(_DWORD *)(this + 64) + 88) = 3;
  *(_BYTE *)(*(_DWORD *)(this + 64) + 90) = 0;
  return this;
}


// ===== 5a8b74 glitch::video::IVideoDriver::beginScene(void) =====
int __fastcall glitch::video::IVideoDriver::beginScene(glitch::video::IVideoDriver *this)
{
  *((_DWORD *)this + 33) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 32) = 0;
  return 1;
}


// ===== 5a8b90 glitch::video::IVideoDriver::onShaderDestroyed(glitch::video::IShader *) =====
int __fastcall glitch::video::IVideoDriver::onShaderDestroyed(int result, int a2)
{
  if ( *(_DWORD *)(result + 244) == a2 )
    *(_DWORD *)(result + 244) = 0;
  return result;
}


// ===== 5a8ba4 glitch::video::IVideoDriver::onMaterialDestroyed(glitch::video::CMaterial *) =====
int __fastcall glitch::video::IVideoDriver::onMaterialDestroyed(int result, int a2)
{
  int v2; // r3
  bool v3; // zf
  int v4; // r3

  v2 = *(_DWORD *)(result + 236);
  v3 = a2 == v2;
  if ( a2 == v2 )
  {
    *(_DWORD *)(result + 232) = 0;
    *(_DWORD *)(result + 236) = 0;
  }
  v4 = *(_DWORD *)(result + 240);
  if ( v3 )
    *(_BYTE *)(result + 248) = -1;
  if ( a2 == v4 )
  {
    *(_BYTE *)(result + 249) = -1;
    *(_DWORD *)(result + 240) = 0;
  }
  return result;
}


// ===== 5a8bdc glitch::video::IVideoDriver::draw3DTriangle(glitch::core::triangle3d<float> const&,glitch::video::SColor) =====
int __fastcall glitch::video::IVideoDriver::draw3DTriangle(int a1, int *a2, int a3)
{
  int v3; // r12
  int v4; // r10
  int v5; // r8
  int v6; // r7
  int v7; // r6
  int v8; // r5
  int v9; // r4
  int v10; // lr
  int v11; // r1
  _DWORD v13[9]; // [sp+14h] [bp-40h] BYREF
  _DWORD v14[3]; // [sp+38h] [bp-1Ch] BYREF
  _DWORD v15[4]; // [sp+44h] [bp-10h] BYREF

  v3 = a2[8];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v13[4] = v8;
  v13[7] = v11;
  v13[5] = v9;
  v13[6] = v10;
  v13[8] = v3;
  v13[0] = v4;
  v13[1] = v5;
  v13[2] = v6;
  v13[3] = v7;
  v15[1] = 131073;
  v15[2] = 2;
  v15[0] = &elf_hash_bucket[16329];
  v14[0] = a3;
  v14[1] = a3;
  v14[2] = a3;
  return (*(int (__fastcall **)(int, _DWORD *, _DWORD *, _DWORD *, int, int))(*(_DWORD *)a1 + 32))(
           a1,
           v13,
           v15,
           v14,
           3,
           3);
}


// ===== 5a8cc8 glitch::video::IVideoDriver::checkDriverReset(void) =====
int __fastcall glitch::video::IVideoDriver::checkDriverReset(glitch::video::IVideoDriver *this)
{
  return 0;
}


// ===== 5a8cd0 glitch::video::IVideoDriver::onResize(glitch::core::dimension2d<int> const&) =====
int __fastcall glitch::video::IVideoDriver::onResize(int a1, int *a2)
{
  int *v2; // r2
  int v3; // r0
  int v4; // r3
  int v5; // r1
  int v6; // lr
  int v7; // r12
  int v8; // r4
  int v9; // r5
  int v10; // lr
  int v11; // r1
  int v12; // r12
  int v13; // lr
  int v14; // r12
  int v15; // r0
  int v16; // r3
  int v17; // r1
  int (__fastcall *v18)(int *, _DWORD *); // r3
  int v20; // r12
  int (__fastcall *v21)(int *, _DWORD *); // r3
  int v22; // r12
  _DWORD v23[4]; // [sp+0h] [bp-24h] BYREF
  _DWORD v24[5]; // [sp+10h] [bp-14h] BYREF

  v2 = **(int ***)(a1 + 200);
  if ( (*(_DWORD *)(a1 + 316) & 1) != 0 )
  {
    v3 = a2[1];
    v4 = *a2;
  }
  else
  {
    v3 = *a2;
    v4 = a2[1];
  }
  if ( v2[11] || (v5 = v2[12]) != 0 )
  {
    v6 = v2[9];
    v7 = v2[10];
    v8 = v2[3];
    v9 = v6 & ~(v6 >> 31);
    v10 = v6 + v8;
    v11 = v7 + v2[4];
    if ( v3 < v10 )
      v10 = v3;
    if ( v4 < v11 )
      v11 = v4;
    v12 = v7 & ~(v7 >> 31);
    if ( v11 < v12 )
      v12 = v11;
    if ( v10 < v9 )
      v9 = v10;
    v13 = v3 - (v10 - v9);
    v5 = v4 - (v11 - v12);
    v2[9] = v9;
    v2[10] = v12;
    v2[12] = v5;
    v2[11] = v13;
  }
  else
  {
    v8 = v2[3];
    v13 = 0;
  }
  v14 = v2[5];
  v15 = v3 - v13;
  v16 = v4 - v5;
  if ( v2[7] - v14 == v8 && v2[8] - v2[6] == v2[4] )
  {
    v20 = *v2;
    v2[3] = v15;
    v2[4] = v16;
    v21 = *(int (__fastcall **)(int *, _DWORD *))(v20 + 12);
    v24[1] = 0;
    v24[0] = 0;
    v22 = v2[4];
    v24[2] = v2[3];
    v24[3] = v22;
    return v21(v2, v24);
  }
  else
  {
    v17 = *v2;
    v2[3] = v15;
    v2[4] = v16;
    v18 = *(int (__fastcall **)(int *, _DWORD *))(v17 + 12);
    v23[0] = v14;
    v23[1] = v2[6];
    v23[2] = v2[7];
    v23[3] = v2[8];
    return v18(v2, v23);
  }
}


// ===== 5a8e3c glitch::video::IVideoDriver::setFramebufferScreenInternal(glitch::core::rect<int> const&) =====
_DWORD *__fastcall glitch::video::IVideoDriver::setFramebufferScreenInternal(_DWORD *result, int a2, int *a3)
{
  _DWORD *v3; // r12
  _DWORD *v4; // r3
  int v5; // r4
  int v6; // r1
  _DWORD *v7; // r3
  int v8; // r5
  int v9; // r2
  int v10; // r7
  int v11; // r6
  int v12; // r3
  int v13; // r5
  int v14; // r4

  v3 = **(_DWORD ***)(a2 + 200);
  *result = v3[3];
  result[1] = v3[4];
  v4 = *(_DWORD **)(a2 + 200);
  v5 = a3[3];
  v6 = a3[1];
  v7 = (_DWORD *)*v4;
  v8 = a3[2];
  v9 = *a3 & ~(*a3 >> 31);
  v10 = v7[11] + v7[3];
  v11 = v7[12] + v7[4];
  if ( v10 < v8 )
    v8 = v7[11] + v7[3];
  if ( v11 < v5 )
    v5 = v7[12] + v7[4];
  v12 = v6 & ~(v6 >> 31);
  if ( v5 < v12 )
    v12 = v5;
  if ( v8 < v9 )
    v9 = v8;
  v13 = v8 - v9;
  v14 = v5 - v12;
  v3[3] = v13;
  v3[11] = v10 - v13;
  v3[12] = v11 - v14;
  v3[4] = v14;
  v3[9] = v9;
  v3[10] = v12;
  return result;
}


// ===== 5a8ef0 glitch::video::IVideoDriver::setFramebufferScreen(glitch::core::rect<int> const&) =====
int __fastcall glitch::video::IVideoDriver::setFramebufferScreen(int a1, int *a2)
{
  _DWORD *v3; // r2
  int result; // r0
  int v5; // r0
  int (__fastcall *v6)(int, _DWORD *); // r3
  int v7; // r12
  int v8; // r2
  _DWORD v9[4]; // [sp+0h] [bp-18h] BYREF
  _DWORD v10[2]; // [sp+10h] [bp-8h] BYREF

  glitch::video::IVideoDriver::setFramebufferScreenInternal(v10, a1, a2);
  v3 = **(_DWORD ***)(a1 + 200);
  result = v3[6];
  if ( v3[7] - v3[5] == v10[0] )
  {
    result = v3[8] - result;
    if ( result == v10[1] )
    {
      v5 = **(_DWORD **)(a1 + 200);
      v6 = *(int (__fastcall **)(int, _DWORD *))(*v3 + 12);
      v9[1] = 0;
      v9[0] = 0;
      v7 = v3[4];
      v8 = v3[3];
      v9[3] = v7;
      v9[2] = v8;
      result = v6(v5, v9);
    }
  }
  *(_DWORD *)(a1 + 312) |= 1u;
  return result;
}


// ===== 5a8f88 glitch::video::IVideoDriver::fixUpProjectionMatrixOrientation(glitch::core::CMatrix4<float> &) =====
_DWORD *__fastcall glitch::video::IVideoDriver::fixUpProjectionMatrixOrientation(_DWORD *result, int *a2)
{
  int v2; // r3
  bool v3; // zf
  int v4; // r7
  int v5; // r8
  int v6; // r5
  int v7; // r6
  int v8; // r12
  int v9; // r4
  int v10; // r2
  unsigned int v11; // r2
  unsigned int v12; // r3
  unsigned int v13; // r4
  unsigned int v14; // r12
  unsigned int v15; // r2

  if ( (unsigned int)((result[51] - result[50]) >> 2) <= 1 )
  {
    v2 = result[79];
    if ( v2 )
    {
      v3 = v2 == 1;
      if ( v2 != 1 )
        v3 = v2 == 3;
      if ( v3 )
      {
        v4 = *a2;
        v5 = a2[1];
        v6 = a2[4];
        v7 = a2[5];
        v8 = a2[8];
        v9 = a2[9];
        v10 = a2[12];
        result = (_DWORD *)a2[13];
        *((_BYTE *)a2 + 64) = 0;
        *a2 = v5;
        a2[1] = v4;
        a2[4] = v7;
        a2[5] = v6;
        a2[8] = v9;
        a2[9] = v8;
        a2[12] = (int)result;
        a2[13] = v10;
      }
      if ( (unsigned int)(v2 - 2) <= 1 )
      {
        v13 = a2[1] + 0x80000000;
        v14 = a2[5] + 0x80000000;
        result = (_DWORD *)(a2[9] + 0x80000000);
        v15 = a2[13] + 0x80000000;
        *((_BYTE *)a2 + 64) = 0;
        a2[1] = v13;
        a2[5] = v14;
        a2[9] = (int)result;
        a2[13] = v15;
      }
      if ( (unsigned int)(v2 - 1) <= 1 )
      {
        result = (_DWORD *)(*a2 + 0x80000000);
        v11 = a2[4] + 0x80000000;
        v12 = a2[8] + 0x80000000;
        a2[12] += 0x80000000;
        *((_BYTE *)a2 + 64) = 0;
        *a2 = (int)result;
        a2[4] = v11;
        a2[8] = v12;
      }
    }
  }
  return result;
}


// ===== 5a909c glitch::video::IVideoDriver::setMaxTextureSize(glitch::core::dimension2d<int> const&) =====
int __fastcall glitch::video::IVideoDriver::setMaxTextureSize(int result, _DWORD *a2)
{
  *(_DWORD *)(result + 68) = *a2;
  *(_DWORD *)(result + 72) = a2[1];
  return result;
}


// ===== 5a90b0 glitch::video::IVideoDriver::setOption(uint,bool) =====
_DWORD *__fastcall glitch::video::IVideoDriver::setOption(_DWORD *this, unsigned int a2, int a3)
{
  if ( a3 )
  {
    *(this + 34) |= a2;
  }
  else
  {
    *(this + 34) &= ~a2;
    if ( (a2 & 0x100) != 0 )
      return (_DWORD *)(*(int (__fastcall **)(_DWORD *))(*this + 508))(this);
  }
  return this;
}


// ===== 5a90f4 glitch::video::IVideoDriver::getMaximalPrimitiveCount(void) =====
int __fastcall glitch::video::IVideoDriver::getMaximalPrimitiveCount(glitch::video::IVideoDriver *this)
{
  return -1;
}


// ===== 5a90fc glitch::video::IVideoDriver::clip(glitch::core::rect<int> &,glitch::core::rect<float> &,glitch::core::rect<int> const&,glitch::video::SColor *) =====
int __fastcall glitch::video::IVideoDriver::clip(int *a1, float *a2, int *a3, unsigned __int8 *a4)
{
  int v5; // r8
  int v6; // r2
  int v11; // r0
  int v12; // r9
  int v13; // r10
  float v14; // r0
  float v15; // r8
  float v16; // r8
  int v17; // r0
  int v18; // r8
  float v19; // r0
  float v20; // r8
  float v21; // r8
  _DWORD v22[2]; // [sp+0h] [bp-8h] BYREF

  v5 = *a1;
  v6 = a3[2];
  if ( *a1 > v6 )
    return 0;
  v11 = a3[3];
  if ( a1[1] > v11 )
    return 0;
  v12 = a1[2];
  if ( v12 < *a3 )
    return 0;
  v13 = a1[3];
  if ( v13 < a3[1] )
    return 0;
  if ( v6 < v12 )
  {
    v21 = (float)(v12 - v6) / (float)(v12 - v5);
    a2[2] = a2[2] + (float)(v21 * (float)(*a2 - a2[2]));
    if ( a4 )
    {
      v22[0] = glitch::video::SColor::getInterpolated(a4, a4 + 12, v21);
      memcpy(a4 + 12, v22, 4u);
      v22[0] = glitch::video::SColor::getInterpolated(a4 + 4, a4 + 8, v21);
      memcpy(a4 + 8, v22, 4u);
    }
    v13 = a1[3];
    a1[2] = a3[2];
    v11 = a3[3];
  }
  if ( v13 > v11 )
  {
    v14 = (float)(v13 - v11) / (float)(v13 - a1[1]);
    v15 = v14;
    a2[3] = a2[3] + (float)(v14 * (float)(a2[1] - a2[3]));
    if ( a4 )
    {
      v22[0] = glitch::video::SColor::getInterpolated(a4, a4 + 4, v14);
      memcpy(a4 + 4, v22, 4u);
      v22[0] = glitch::video::SColor::getInterpolated(a4 + 12, a4 + 8, v15);
      memcpy(a4 + 8, v22, 4u);
    }
    a1[3] = a3[3];
  }
  if ( *a3 > *a1 )
  {
    v16 = (float)(*a3 - *a1) / (float)(a1[2] - *a1);
    *a2 = *a2 + (float)(v16 * (float)(a2[2] - *a2));
    if ( a4 )
    {
      v22[0] = glitch::video::SColor::getInterpolated(a4 + 12, a4, v16);
      memcpy(a4, v22, 4u);
      v22[0] = glitch::video::SColor::getInterpolated(a4 + 8, a4 + 4, v16);
      memcpy(a4 + 4, v22, 4u);
    }
    *a1 = *a3;
  }
  v17 = a3[1];
  v18 = a1[1];
  if ( v17 <= v18 )
    return 1;
  v19 = (float)(v17 - v18) / (float)(a1[3] - v18);
  v20 = v19;
  a2[1] = a2[1] + (float)(v19 * (float)(a2[3] - a2[1]));
  if ( a4 )
  {
    v22[0] = glitch::video::SColor::getInterpolated(a4 + 4, a4, v19);
    memcpy(a4, v22, 4u);
    v22[0] = glitch::video::SColor::getInterpolated(a4 + 8, a4 + 12, v20);
    memcpy(a4 + 12, v22, 4u);
  }
  a1[1] = a3[1];
  return 1;
}


// ===== 5a953c glitch::video::IVideoDriver::popRenderTarget(void) =====
glitch::video::IVideoDriver *__fastcall glitch::video::IVideoDriver::popRenderTarget(
        glitch::video::IVideoDriver *this,
        int a2)
{
  int v2; // r3
  int v3; // r2
  bool v4; // zf
  glitch::IReferenceCounted *v7; // r4
  glitch::IReferenceCounted **v8; // r3

  v2 = *(_DWORD *)(a2 + 204);
  v3 = *(_DWORD *)(a2 + 200);
  v4 = v3 == v2;
  if ( v3 == v2 )
    v2 = 0;
  if ( v4 )
  {
    *(_DWORD *)this = v2;
  }
  else
  {
    v7 = *(glitch::IReferenceCounted **)(v2 - 4);
    if ( v7 )
    {
      ++*((_DWORD *)v7 + 1);
      v2 = *(_DWORD *)(a2 + 204);
      v3 = *(_DWORD *)(a2 + 200);
    }
    if ( (unsigned int)((v2 - v3) >> 2) > 1 )
    {
      (*(void (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v7 + 20))(v7);
      v8 = (glitch::IReferenceCounted **)(*(_DWORD *)(a2 + 204) - 4);
      *(_DWORD *)(a2 + 204) = v8;
      if ( *v8 )
      {
        glitch::IReferenceCounted::drop(*v8);
        v8 = *(glitch::IReferenceCounted ***)(a2 + 204);
      }
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)*(v8 - 1) + 16))(*(v8 - 1));
    }
    *(_DWORD *)this = v7;
    if ( v7 )
    {
      ++*((_DWORD *)v7 + 1);
      glitch::IReferenceCounted::drop(v7);
    }
  }
  return this;
}


// ===== 5a95f8 glitch::video::IVideoDriver::ensureBinding(glitch::video::CDriverBinding **) =====
int __fastcall glitch::video::IVideoDriver::ensureBinding(int a1, int *a2)
{
  int v2; // r3

  v2 = *a2;
  if ( !*a2 )
  {
    v2 = (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 504))(a1);
    *a2 = v2;
  }
  return v2;
}


// ===== 5a9638 glitch::video::IVideoDriver::captureFramebuffer(boost::intrusive_ptr<glitch::video::ITexture> const&,glitch::core::position2d<int> const&,glitch::core::rect<int> const&,uchar,glitch::video::E_TEXTURE_CUBE_MAP_FACE,bool) =====
int __fastcall glitch::video::IVideoDriver::captureFramebuffer(
        _DWORD *a1,
        int *a2,
        int *a3,
        int *a4,
        unsigned __int8 a5,
        int a6,
        unsigned __int8 a7)
{
  int v7; // r4
  int v9; // r5
  int v10; // r5
  int v11; // r2
  int v12; // r8
  int v13; // r4
  int v14; // r10
  int v15; // r3
  int v16; // r8
  int v17; // r4
  _DWORD *v18; // r3
  int v19; // r2
  bool v20; // cc
  int v21; // r5
  int v22; // r2
  bool v23; // cc
  int v24; // r10
  int v25; // r5
  bool v26; // cc
  int v27; // r3
  int v28; // [sp+10h] [bp-1Ch] BYREF
  int v29; // [sp+14h] [bp-18h]
  int v30; // [sp+18h] [bp-14h]
  int v31; // [sp+1Ch] [bp-10h]
  int v32; // [sp+20h] [bp-Ch] BYREF
  int v33; // [sp+24h] [bp-8h]

  v7 = *a2;
  if ( !*a2 || *(unsigned __int8 *)(v7 + 62) <= (unsigned int)a5 || (*(_BYTE *)(v7 + 63) & 2) != 0 && a5 )
    return 0;
  v9 = (*(_DWORD *)(v7 + 56) & 3) == 2 ? 6 : 1;
  if ( a6 >= v9 )
    return 0;
  v10 = *a3;
  if ( *a3 >= *(_DWORD *)(v7 + 32) )
    return 0;
  v11 = a3[1];
  if ( v11 >= *(_DWORD *)(v7 + 36) )
    return 0;
  v12 = a4[3];
  v13 = *a4;
  v14 = a4[1];
  v15 = a4[2];
  v29 = v14;
  v30 = v15;
  v31 = v12;
  v32 = v10;
  v33 = v11;
  v28 = v13;
  if ( v10 < 0 )
  {
    v28 = v13 - v10;
    v32 = 0;
  }
  v16 = v29;
  if ( v11 < 0 )
  {
    v16 = v29 - v11;
    v29 -= v11;
    v33 = 0;
  }
  v17 = v30;
  v18 = *(_DWORD **)(a1[51] - 4);
  v19 = v18[7];
  v20 = v19 < v30;
  if ( v19 < v30 )
    v30 = v18[7];
  v21 = v18[8];
  if ( v20 )
    v17 = v19;
  v22 = v31;
  v23 = v21 < v31;
  if ( v21 < v31 )
    v31 = v18[8];
  v24 = v18[5];
  if ( v23 )
    v22 = v21;
  v25 = v28;
  v26 = v24 <= v28;
  if ( v24 > v28 )
    v28 = v18[5];
  v27 = v18[6];
  if ( !v26 )
    v25 = v24;
  if ( v27 > v16 )
    v29 = v27;
  else
    v27 = v16;
  if ( v22 < v27 )
    v29 = v22;
  if ( v25 > v17 )
    v28 = v17;
  if ( v22 < v29 )
    return 0;
  else
    return (*(int (__fastcall **)(_DWORD *, int *, int *, int *, _DWORD, int, _DWORD))(*a1 + 156))(
             a1,
             a2,
             &v32,
             &v28,
             a5,
             a6,
             a7);
}


// ===== 5a97a8 glitch::video::IVideoDriver::clearRenderBuffers(void) =====
int __fastcall glitch::video::IVideoDriver::clearRenderBuffers(int this)
{
  int *v1; // r4
  int i; // r5
  int v3; // t1

  v1 = *(int **)(this + 340);
  for ( i = this; v1 != *(int **)(i + 344); this = (*(int (__fastcall **)(int))(*(_DWORD *)v3 + 12))(v3) )
    v3 = *v1++;
  return this;
}


// ===== 5a97e4 glitch::video::IVideoDriver::screen2DevicePos<int>(int&,int&) =====
int __fastcall glitch::video::IVideoDriver::screen2DevicePos<int>(int result, int *a2, int *a3)
{
  _DWORD *v3; // r3
  int v4; // r12
  int v5; // r4
  int v6; // r7
  int v7; // r6
  int v8; // r12
  int v9; // r4
  int v10; // r3

  v3 = **(_DWORD ***)(result + 200);
  if ( *(_DWORD *)(result + 316) )
  {
    v4 = v3[11];
    v5 = v3[12];
  }
  else
  {
    v4 = v3[11];
    if ( v4 )
    {
      v5 = v3[12];
    }
    else
    {
      v5 = v3[12];
      if ( !v5 )
        return result;
    }
  }
  v6 = v3[3];
  v7 = v3[4];
  *a2 += v3[9];
  v8 = v4 + v6;
  v9 = v5 + v7;
  v10 = *a3 + v3[10];
  *a3 = v10;
  result = *(_DWORD *)(result + 316);
  switch ( result )
  {
    case 2:
      *a3 = v9 - v10;
      *a2 = v8 - *a2;
      break;
    case 3:
      result = *a2;
      *a3 = *a2;
      *a2 = v9 - v10;
      break;
    case 1:
      *a3 = v8 - *a2;
      *a2 = v10;
      break;
  }
  return result;
}


// ===== 5a98b4 glitch::video::IVideoDriver::device2ScreenPos<int>(int&,int&) =====
_DWORD *__fastcall glitch::video::IVideoDriver::device2ScreenPos<int>(int a1, int *a2, int *a3)
{
  int v3; // r3
  _DWORD *result; // r0
  int v5; // r3
  int v6; // r5
  int v7; // r12
  int v8; // r12
  int v9; // r12

  v3 = *(_DWORD *)(a1 + 316);
  result = **(_DWORD ***)(a1 + 200);
  if ( v3 )
  {
    v6 = result[3] + result[11];
    v7 = result[12] + result[4];
    switch ( v3 )
    {
      case 2:
        *a3 = v7 - *a3;
        v5 = v6 - *a2;
        *a2 = v5;
        goto LABEL_4;
      case 3:
        v9 = v7 - *a2;
        *a2 = *a3;
        *a3 = v9;
        break;
      case 1:
        v8 = *a2;
        *a2 = v6 - *a3;
        *a3 = v8;
        v5 = *a2;
        goto LABEL_4;
    }
LABEL_3:
    v5 = *a2;
LABEL_4:
    *a2 = v5 - result[9];
    *a3 -= result[10];
    return result;
  }
  if ( result[11] || result[12] )
    goto LABEL_3;
  return result;
}


// ===== 5a9990 glitch::video::IVideoDriver::draw3DBox(glitch::core::aabbox3d<float> const&,glitch::video::SColor) =====
int __fastcall glitch::video::IVideoDriver::draw3DBox(int a1, float *a2, unsigned int a3)
{
  unsigned int v4; // r7
  char v5; // r4
  char v6; // r5
  char v7; // r6
  int *v8; // r2
  float v10[3]; // [sp+10h] [bp-B4h] BYREF
  int v11; // [sp+1Ch] [bp-A8h] BYREF
  _DWORD v12[3]; // [sp+70h] [bp-54h] BYREF
  _DWORD v13[9]; // [sp+7Ch] [bp-48h] BYREF
  _BYTE v14[36]; // [sp+A0h] [bp-24h] BYREF

  v4 = HIBYTE(a3);
  v5 = a3;
  v6 = BYTE1(a3);
  v7 = BYTE2(a3);
  v8 = &v11;
  do
  {
    *(v8 - 3) = 0;
    *(v8 - 2) = 0;
    *(v8 - 1) = 0;
    v8 += 3;
  }
  while ( v8 != v13 );
  glitch::core::aabbox3d<float>::getEdges(a2, v10);
  v12[0] = 65541;
  v12[1] = 196609;
  v12[2] = 458755;
  v13[0] = 327687;
  v13[1] = 0x20000;
  v13[2] = 393218;
  v13[3] = 262150;
  v13[4] = 4;
  v13[5] = 1;
  v13[6] = 131075;
  v13[7] = 393223;
  v13[8] = 262149;
  v14[3] = v4;
  v14[2] = v7;
  v14[1] = v6;
  v14[0] = v5;
  v14[7] = v4;
  v14[6] = v7;
  v14[5] = v6;
  v14[4] = v5;
  v14[11] = v4;
  v14[10] = v7;
  v14[31] = v4;
  v14[30] = v7;
  v14[29] = v6;
  v14[28] = v5;
  v14[9] = v6;
  v14[8] = v5;
  v14[15] = v4;
  v14[14] = v7;
  v14[13] = v6;
  v14[12] = v5;
  v14[19] = v4;
  v14[18] = v7;
  v14[17] = v6;
  v14[16] = v5;
  v14[23] = v4;
  v14[22] = v7;
  v14[21] = v6;
  v14[20] = v5;
  v14[27] = v4;
  v14[26] = v7;
  v14[25] = v6;
  v14[24] = v5;
  return (*(int (__fastcall **)(int, float *, _DWORD *, _BYTE *, int, int))(*(_DWORD *)a1 + 32))(
           a1,
           v10,
           v12,
           v14,
           8,
           12);
}


// ===== 5a9ac4 glitch::video::IVideoDriver::screen2DevicePos<float>(float&,float&) =====
float __fastcall glitch::video::IVideoDriver::screen2DevicePos<float>(int a1, float *a2, float *a3)
{
  float result; // r0
  _DWORD *v6; // r6
  int v7; // r3
  int v8; // r2
  int v9; // r10
  int v10; // r8
  int v11; // r3
  float v12; // r6

  result = *(float *)(a1 + 316);
  v6 = **(_DWORD ***)(a1 + 200);
  if ( result == 0.0 )
  {
    v7 = v6[11];
    if ( v7 )
    {
      v8 = v6[12];
    }
    else
    {
      v8 = v6[12];
      if ( !v8 )
        return result;
    }
  }
  else
  {
    v7 = v6[11];
    v8 = v6[12];
  }
  v9 = v7 + v6[3];
  v10 = v8 + v6[4];
  *a2 = *a2 + (float)(int)v6[9];
  result = (float)(int)v6[10] + *a3;
  *a3 = result;
  v11 = *(_DWORD *)(a1 + 316);
  v12 = result;
  switch ( v11 )
  {
    case 2:
      *a3 = (float)v10 - result;
      result = (float)v9 - *a2;
      *a2 = result;
      break;
    case 3:
      *a3 = *a2;
      result = (float)v10 - result;
      *a2 = result;
      break;
    case 1:
      result = (float)v9 - *a2;
      *a3 = result;
      *a2 = v12;
      break;
  }
  return result;
}


// ===== 5a9bd4 glitch::video::IVideoDriver::device2ScreenPos<float>(float&,float&) =====
float __fastcall glitch::video::IVideoDriver::device2ScreenPos<float>(int a1, float *a2, float *a3)
{
  int v3; // r3
  float result; // r0
  _DWORD *v5; // r5
  float v6; // r7
  int v7; // r7
  int v8; // r0
  float v9; // r3
  float v10; // r7

  v3 = *(_DWORD *)(a1 + 316);
  result = *(float *)(a1 + 200);
  v5 = *(_DWORD **)LODWORD(result);
  if ( v3 )
  {
    v7 = v5[3] + v5[11];
    v8 = v5[12] + v5[4];
    switch ( v3 )
    {
      case 2:
        *a3 = (float)v8 - *a3;
        v6 = (float)v7 - *a2;
        *a2 = v6;
        goto LABEL_4;
      case 3:
        v10 = *a2;
        *a2 = *a3;
        *a3 = (float)v8 - v10;
        break;
      case 1:
        v9 = *a2;
        *a2 = (float)v7 - *a3;
        *a3 = v9;
        v6 = *a2;
        goto LABEL_4;
    }
LABEL_3:
    v6 = *a2;
LABEL_4:
    *a2 = v6 - (float)(int)v5[9];
    result = *a3 - (float)(int)v5[10];
    *a3 = result;
    return result;
  }
  if ( v5[11] || v5[12] )
    goto LABEL_3;
  return result;
}


// ===== 5a9ce8 glitch::video::IVideoDriver::screen2Device<int>(glitch::core::rect<int> &) =====
int __fastcall glitch::video::IVideoDriver::screen2Device<int>(int result, int *a2)
{
  int v2; // r5
  int v4; // r3
  int v5; // r2
  int v6; // r3
  int v7; // r12
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v11; // r3
  int v12; // r3
  int v13; // r3
  int v14; // r3
  int v15; // [sp+0h] [bp-Ch] BYREF
  int v16[2]; // [sp+4h] [bp-8h] BYREF

  v2 = result;
  if ( *(_DWORD *)(result + 316) || (v12 = **(_DWORD **)(result + 200), *(_DWORD *)(v12 + 44)) || *(_DWORD *)(v12 + 48) )
  {
    v4 = a2[1];
    v15 = *a2;
    v16[0] = v4;
    glitch::video::IVideoDriver::screen2DevicePos<int>(result, &v15, v16);
    v5 = v16[0];
    v6 = a2[3];
    v7 = a2[2];
    *a2 = v15;
    a2[1] = v5;
    v15 = v6;
    v16[0] = v7;
    result = glitch::video::IVideoDriver::screen2DevicePos<int>(v2, v16, &v15);
    v8 = v15;
    v9 = v16[0];
    a2[2] = v16[0];
    a2[3] = v8;
    v10 = *(_DWORD *)(v2 + 316);
    switch ( v10 )
    {
      case 2:
        v13 = *a2;
        result = a2[1];
        *a2 = v9;
        a2[1] = v8;
        a2[3] = result;
        a2[2] = v13;
        break;
      case 3:
        v14 = *a2;
        *a2 = v9;
        a2[2] = v14;
        break;
      case 1:
        v11 = a2[1];
        a2[1] = v8;
        a2[3] = v11;
        break;
    }
  }
  return result;
}


// ===== 5a9ddc glitch::video::IVideoDriver::screen2Device<float>(glitch::core::rect<float> &) =====
float __fastcall glitch::video::IVideoDriver::screen2Device<float>(float result, float *a2)
{
  int v2; // r5
  float v4; // r3
  float v5; // r2
  float v6; // r3
  float v7; // r12
  float v8; // r2
  float v9; // r1
  int v10; // r3
  int v11; // r3
  int v12; // r3
  float v13; // r3
  float v14; // r3
  float v15; // [sp+0h] [bp-Ch] BYREF
  float v16[2]; // [sp+4h] [bp-8h] BYREF

  v2 = LODWORD(result);
  if ( *(_DWORD *)(LODWORD(result) + 316)
    || (v12 = **(_DWORD **)(LODWORD(result) + 200), *(_DWORD *)(v12 + 44))
    || *(_DWORD *)(v12 + 48) )
  {
    v4 = a2[1];
    v15 = *a2;
    v16[0] = v4;
    glitch::video::IVideoDriver::screen2DevicePos<float>(SLODWORD(result), &v15, v16);
    v5 = v16[0];
    v6 = a2[3];
    v7 = a2[2];
    *a2 = v15;
    a2[1] = v5;
    v15 = v6;
    v16[0] = v7;
    result = glitch::video::IVideoDriver::screen2DevicePos<float>(v2, v16, &v15);
    v8 = v16[0];
    v9 = v15;
    a2[2] = v16[0];
    a2[3] = v9;
    v10 = *(_DWORD *)(v2 + 316);
    switch ( v10 )
    {
      case 2:
        v13 = *a2;
        result = a2[1];
        *a2 = v8;
        a2[1] = v9;
        a2[3] = result;
        a2[2] = v13;
        break;
      case 3:
        v14 = *a2;
        *a2 = v8;
        a2[2] = v14;
        break;
      case 1:
        v11 = *((_DWORD *)a2 + 1);
        a2[1] = v9;
        *((_DWORD *)a2 + 3) = v11;
        break;
    }
  }
  return result;
}


// ===== 5a9ee0 glitch::video::IVideoDriver::device2Screen<int>(glitch::core::rect<int> &) =====
_DWORD *__fastcall glitch::video::IVideoDriver::device2Screen<int>(_DWORD *result, int *a2)
{
  int v2; // r5
  int v4; // r3
  int v5; // r2
  int v6; // r3
  int v7; // r12
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v11; // r3
  int v12; // r3
  int v13; // r3
  int v14; // r3
  int v15; // [sp+0h] [bp-Ch] BYREF
  int v16[2]; // [sp+4h] [bp-8h] BYREF

  v2 = (int)result;
  if ( result[79] || (v12 = *(_DWORD *)result[50], *(_DWORD *)(v12 + 44)) || *(_DWORD *)(v12 + 48) )
  {
    v4 = a2[1];
    v15 = *a2;
    v16[0] = v4;
    glitch::video::IVideoDriver::device2ScreenPos<int>((int)result, &v15, v16);
    v5 = v16[0];
    v6 = a2[3];
    v7 = a2[2];
    *a2 = v15;
    a2[1] = v5;
    v15 = v6;
    v16[0] = v7;
    result = glitch::video::IVideoDriver::device2ScreenPos<int>(v2, v16, &v15);
    v8 = v16[0];
    v9 = v15;
    a2[2] = v16[0];
    a2[3] = v9;
    v10 = *(_DWORD *)(v2 + 316);
    switch ( v10 )
    {
      case 2:
        v13 = *a2;
        result = (_DWORD *)a2[1];
        *a2 = v8;
        a2[1] = v9;
        a2[3] = (int)result;
        a2[2] = v13;
        break;
      case 3:
        v14 = a2[1];
        a2[1] = v9;
        a2[3] = v14;
        break;
      case 1:
        v11 = *a2;
        *a2 = v8;
        a2[2] = v11;
        break;
    }
  }
  return result;
}


// ===== 5a9fd4 glitch::video::IVideoDriver::setOrientation(glitch::video::E_ORIENTATION) =====
int __fastcall glitch::video::IVideoDriver::setOrientation(int result, int a2)
{
  int v2; // r5
  _DWORD *v4; // r4
  _DWORD *v5; // r3
  int v6; // r9
  int v7; // lr
  int v8; // lr
  int v9; // r9
  int v10; // r11
  int v11; // r3
  int v12; // r3
  _DWORD v13[2]; // [sp+0h] [bp-3Ch] BYREF
  int v14[4]; // [sp+8h] [bp-34h] BYREF
  int v15[4]; // [sp+18h] [bp-24h] BYREF
  int v16[5]; // [sp+28h] [bp-14h] BYREF

  v2 = result;
  if ( *(_DWORD *)(result + 316) != a2 )
  {
    v4 = **(_DWORD ***)(result + 200);
    v16[0] = v4[5];
    v16[1] = v4[6];
    v16[2] = v4[7];
    v16[3] = v4[8];
    glitch::video::IVideoDriver::screen2Device<int>(result, v16);
    v5 = **(_DWORD ***)(v2 + 200);
    v15[0] = v5[9];
    v15[1] = v5[10];
    v6 = v5[10];
    v7 = v5[4];
    v15[2] = v5[3] + v5[9];
    v15[3] = v7 + v6;
    v8 = v4[4];
    v9 = v4[11];
    v10 = v4[3];
    v11 = v4[12];
    v14[1] = 0;
    v14[0] = 0;
    v14[3] = v11 + v8;
    v14[2] = v9 + v10;
    glitch::video::IVideoDriver::setFramebufferScreenInternal(v13, v2, v14);
    glitch::video::IVideoDriver::screen2Device<int>(v2, v15);
    if ( (a2 & 1) != (*(_DWORD *)(v2 + 316) & 1) )
    {
      v12 = v4[3];
      v4[3] = v4[4];
      v4[4] = v12;
    }
    *(_DWORD *)(v2 + 316) = a2;
    glitch::video::IVideoDriver::device2Screen<int>((_DWORD *)v2, v15);
    glitch::video::IVideoDriver::setFramebufferScreenInternal(v13, v2, v15);
    glitch::video::IVideoDriver::device2Screen<int>((_DWORD *)v2, v16);
    return (*(int (__fastcall **)(_DWORD *, int *))(*v4 + 12))(v4, v16);
  }
  return result;
}


// ===== 5aa114 glitch::video::IVideoDriver::device2Screen<float>(glitch::core::rect<float> &) =====
float __fastcall glitch::video::IVideoDriver::device2Screen<float>(float result, float *a2)
{
  int v2; // r5
  float v4; // r3
  float v5; // r2
  float v6; // r3
  float v7; // r12
  float v8; // r1
  float v9; // r2
  int v10; // r3
  float v11; // r3
  int v12; // r3
  float v13; // r3
  int v14; // r3
  float v15; // [sp+0h] [bp-Ch] BYREF
  float v16[2]; // [sp+4h] [bp-8h] BYREF

  v2 = LODWORD(result);
  if ( *(_DWORD *)(LODWORD(result) + 316)
    || (v12 = **(_DWORD **)(LODWORD(result) + 200), *(_DWORD *)(v12 + 44))
    || *(_DWORD *)(v12 + 48) )
  {
    v4 = a2[1];
    v15 = *a2;
    v16[0] = v4;
    glitch::video::IVideoDriver::device2ScreenPos<float>(SLODWORD(result), &v15, v16);
    v5 = v16[0];
    v6 = a2[3];
    v7 = a2[2];
    *a2 = v15;
    a2[1] = v5;
    v15 = v6;
    v16[0] = v7;
    result = glitch::video::IVideoDriver::device2ScreenPos<float>(v2, v16, &v15);
    v8 = v16[0];
    v9 = v15;
    a2[2] = v16[0];
    a2[3] = v9;
    v10 = *(_DWORD *)(v2 + 316);
    switch ( v10 )
    {
      case 2:
        v13 = *a2;
        result = a2[1];
        *a2 = v8;
        a2[1] = v9;
        a2[3] = result;
        a2[2] = v13;
        break;
      case 3:
        v14 = *((_DWORD *)a2 + 1);
        a2[1] = v9;
        *((_DWORD *)a2 + 3) = v14;
        break;
      case 1:
        v11 = *a2;
        *a2 = v8;
        a2[2] = v11;
        break;
    }
  }
  return result;
}


// ===== 5aa218 glitch::video::detail::SNewBufferAllocator<glitch::video::IVideoDriver>::SNewBufferAllocator(glitch::video::IVideoDriver*,boost::intrusive_ptr<glitch::video::IBuffer> const&) =====
_DWORD *__fastcall glitch::video::detail::SNewBufferAllocator<glitch::video::IVideoDriver>::SNewBufferAllocator(
        _DWORD *a1,
        int a2,
        int *a3)
{
  int v3; // r2

  v3 = *a3;
  if ( v3 )
  {
    *a1 = v3;
    ++*(_DWORD *)(v3 + 4);
  }
  else
  {
    (*(void (__fastcall **)(_DWORD *, int, _DWORD, int, _DWORD, _DWORD, int))(*(_DWORD *)a2 + 120))(
      a1,
      a2,
      0,
      4,
      0,
      0,
      1);
  }
  return a1;
}


// ===== 5aa270 `global constructor keyed to'.._source_glitch_video_IVideoDriver.cpp =====
void `global constructor keyed to'.._source_glitch_video_IVideoDriver.cpp()
{
  dword_9F697C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6978 = 1056964608;
}


// ===== 5aa290 glitch::video::IVideoDriver::removeUnused(void) =====
int __fastcall glitch::video::IVideoDriver::removeUnused(glitch::video::IVideoDriver *this)
{
  glitch::video::CMaterialRendererManager *v2; // r5
  glitch::video::CTextureManager *v3; // r4

  glitch::video::C2DDriver::freeTextures(*(glitch::video::C2DDriver **)(*((_DWORD *)this + 53) + 20));
  glitch::video::CMaterialRendererManager::removeAllBatchBaker(*((glitch::video::CMaterialRendererManager **)this + 55));
  v2 = *((glitch::video::CMaterialRendererManager **)this + 55);
  glitch::video::CMaterialRendererManager::clearUnusedInstances(v2);
  glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::removeAll(v2);
  v3 = *((glitch::video::CTextureManager **)this + 56);
  glitch::video::CTextureManager::clearPlaceHolders(v3);
  return glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>,unsigned short,false,glitch::video::detail::texturemanager::STextureProperties,glitch::core::detail::sidedcollection::SValueTraits>::removeAll(
           v3,
           0);
}


// ===== 5aa2e0 glitch::video::IVideoDriver::createBinding(void) =====
_DWORD *__fastcall glitch::video::IVideoDriver::createBinding(glitch::video::IVideoDriver *this)
{
  _DWORD *result; // r0

  result = operator new(0x24u, 0);
  result[8] = this;
  result[7] = 0;
  *result = off_98AE50;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  *((_WORD *)result + 10) = 0;
  result[6] = 0;
  return result;
}


// ===== 5aa338 std::vector<boost::intrusive_ptr<glitch::video::IRenderTarget>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IRenderTarget>,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move(void) =====
void __fastcall std::vector<boost::intrusive_ptr<glitch::video::IRenderTarget>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IRenderTarget>,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move(
        void **a1)
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
      v5 = *((glitch::IReferenceCounted **)v4 - 1);
      v4 -= 4;
      if ( v5 )
        glitch::IReferenceCounted::drop(v5);
    }
    while ( v2 != v4 );
    v3 = (char *)*a1;
  }
  GlitchFree(v3);
}


// ===== 5aa37c std::vector<boost::intrusive_ptr<glitch::video::IRenderTarget>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IRenderTarget>,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
char **__fastcall std::vector<boost::intrusive_ptr<glitch::video::IRenderTarget>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IRenderTarget>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        void **a1)
{
  char *v1; // r4
  char *v2; // r5
  glitch::IReferenceCounted *v4; // r0

  v1 = (char *)a1[1];
  v2 = (char *)*a1;
  if ( v1 != *a1 )
  {
    do
    {
      v4 = *((glitch::IReferenceCounted **)v1 - 1);
      v1 -= 4;
      if ( v4 )
        glitch::IReferenceCounted::drop(v4);
    }
    while ( v2 != v1 );
  }
  if ( *a1 )
    GlitchFree(*a1);
  return (char **)a1;
}


// ===== 5aa3c8 boost::intrusive_ptr<glitch::video::CLight>::~intrusive_ptr() =====
_DWORD **__fastcall boost::intrusive_ptr<glitch::video::CLight>::~intrusive_ptr(_DWORD **a1)
{
  _DWORD *v2; // r0
  _DWORD *v4; // r2

  v2 = *a1;
  if ( v2 )
  {
    if ( (*v2)-- == 1 )
    {
      if ( !*((_BYTE *)v2 + 84) )
      {
        v4 = (_DWORD *)v2[20];
        *v4 = glitch::memory::Matrix4Pool;
        glitch::memory::Matrix4Pool = (int)v4;
      }
      v2[20] = 0;
      LC_API_FREE_0(v2);
    }
  }
  return a1;
}


// ===== 5aa438 glitch::video::IVideoDriver::ICompileData::~ICompileData() =====
void __fastcall glitch::video::IVideoDriver::ICompileData::~ICompileData(
        glitch::video::IVideoDriver::ICompileData *this)
{
  glitch::video::IVideoDriver::ICompileData::~ICompileData(this);
  LC_API_FREE_0(this);
}


// ===== 5aa454 glitch::video::detail::SNewBufferAllocator<glitch::video::IVideoDriver>::allocate(uint) =====
glitch::video::IBuffer **__fastcall glitch::video::detail::SNewBufferAllocator<glitch::video::IVideoDriver>::allocate(
        glitch::video::IBuffer **a1,
        glitch::video::IBuffer **a2,
        size_t a3)
{
  glitch::video::IBuffer *v4; // r7
  void *v7; // r0
  glitch::video::IBuffer *v8; // r3
  glitch::video::IBuffer **result; // r0
  bool v10; // zf

  v4 = *a2;
  v7 = operator new[](a3, 0);
  glitch::video::IBuffer::reset(v4, a3, v7, 1);
  v8 = *a2;
  result = a1;
  v10 = *a2 == nullptr;
  *a1 = *a2;
  if ( !v10 )
    ++*((_DWORD *)v8 + 1);
  return result;
}


// ===== 5aa4a8 glitch::video::CMaterial::unsetParametersDirty(uchar) =====
glitch::video::CMaterial *__fastcall glitch::video::CMaterial::unsetParametersDirty(
        glitch::video::CMaterial *this,
        unsigned __int8 a2)
{
  int v2; // r3
  int v3; // r2
  glitch::video::CMaterial *v4; // r4
  int v5; // r12

  v2 = 1 << a2;
  v3 = *((_DWORD *)this + 3);
  v4 = this;
  if ( ((1 << a2) & v3) != 0 )
  {
    v5 = *((_DWORD *)this + 4);
    *((_DWORD *)this + 3) = v3 & ~v2;
    if ( (v2 & v5) != 0 )
    {
      this = (glitch::video::CMaterial *)glitch::video::CMaterial::getTechnique(this);
      if ( *(_BYTE *)(*(_DWORD *)(*((_DWORD *)v4 + 1) + 24) + 12 * (_DWORD)this + 4) == 1 )
        return (glitch::video::CMaterial *)glitch::video::CMaterial::updateParametersHashCode(v4, a2);
    }
  }
  return this;
}


// ===== 5aa51c glitch::video::IVideoDriver::setMaterialInternal(glitch::video::CMaterial *,uchar,boost::intrusive_ptr<glitch::video::CVertexAttributeMap> const*) =====
int __fastcall glitch::video::IVideoDriver::setMaterialInternal(int a1, glitch::video::CMaterial *this, int a3, int a4)
{
  glitch::video::CMaterial *v5; // r0
  glitch::video::CMaterial *v6; // r0
  unsigned __int8 v7; // r1
  int result; // r0
  char Technique; // r0
  int v10; // r3
  char v11; // [sp+0h] [bp-8h]
  int v12; // [sp+0h] [bp-8h]
  glitch::video::CMaterial *v13; // [sp+4h] [bp-4h]
  glitch::video::CMaterial *v14; // [sp+4h] [bp-4h]

  v5 = *(glitch::video::CMaterial **)(a1 + 240);
  *(_DWORD *)(a1 + 232) = a4;
  *(_DWORD *)(a1 + 236) = this;
  *(_BYTE *)(a1 + 248) = a3;
  if ( this == v5
    && (v14 = this,
        v12 = a3,
        Technique = glitch::video::CMaterial::getTechnique(this),
        this = v14,
        LOBYTE(a3) = v12,
        ((*((_DWORD *)v14 + 3) >> Technique) & 1) == 0)
    && (result = *(unsigned __int8 *)(a1 + 249), result == v12) )
  {
    v10 = *(_DWORD *)(*((_DWORD *)v14 + 1) + 24) + 12 * result;
    if ( *(unsigned __int8 *)(v10 + 4) > 1u || *(_BYTE *)(*(_DWORD *)(v10 + 8) + 48) )
      return (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 524))(a1);
  }
  else
  {
    v13 = this;
    v11 = a3;
    (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 520))(a1);
    v6 = *(glitch::video::CMaterial **)(a1 + 236);
    *(_DWORD *)(a1 + 240) = v13;
    v7 = *(_BYTE *)(a1 + 248);
    *(_BYTE *)(a1 + 249) = v11;
    return (int)glitch::video::CMaterial::unsetParametersDirty(v6, v7);
  }
  return result;
}


// ===== 5aa5f8 glitch::video::IVideoDriver::createTexture(char const*,glitch::video::STextureDesc const&) =====
_DWORD *__fastcall glitch::video::IVideoDriver::createTexture(_DWORD *a1, _DWORD *a2, const char *a3, int *a4)
{
  int v4; // r8
  int v6; // r1
  int StringsInternal; // r0
  const char *v9; // r3
  unsigned int v11; // r0
  unsigned int v12; // r6
  unsigned int v13; // r10
  int v14; // r8
  unsigned __int8 *v15; // r11
  const char *v16; // r3
  int v17; // r0
  const char *v18; // [sp+10h] [bp-14h]
  const char *v19; // [sp+10h] [bp-14h]
  unsigned int v21; // [sp+18h] [bp-Ch]
  int v22; // [sp+1Ch] [bp-8h]

  v4 = *a4;
  v6 = a2[39];
  if ( (v6 & (1 << ((*a4 + 6) & 0x1F))) == 0 )
  {
    if ( (unsigned __int16)v4 == 255 )
    {
      v9 = "unknown";
    }
    else
    {
      v18 = a3;
      StringsInternal = glitch::video::getStringsInternal(0);
      a3 = v18;
      v9 = *(const char **)(StringsInternal + 4 * v4);
    }
    glitch::os::Printer::logf(3, "adding texture %s: %s type not supported", a3, v9);
    *a1 = 0;
    return a1;
  }
  v11 = a4[4];
  if ( !v11 )
  {
    v13 = a4[6];
    v12 = a4[5];
    goto LABEL_15;
  }
  v12 = a4[5];
  if ( !v12 )
  {
    v13 = a4[6];
LABEL_15:
    glitch::os::Printer::logf(
      3,
      "adding texture %s: null dimension not supported (provided: %dx%dx%u)",
      a3,
      a4[4],
      v12,
      v13);
    goto LABEL_16;
  }
  v13 = a4[6];
  if ( !v13 )
    goto LABEL_15;
  if ( (v6 & 0x10) != 0 )
    goto LABEL_17;
  if ( v11 != v12 )
  {
LABEL_12:
    glitch::os::Printer::logf(
      3,
      "adding texture %s: non square dimension not supported (provided: %dx%dx%u)",
      a3,
      a4[4],
      v12,
      v13);
LABEL_16:
    *a1 = 0;
    return a1;
  }
  if ( v4 != 1 )
  {
LABEL_17:
    if ( v4 == 3 )
      goto LABEL_24;
  }
  else if ( v13 != v11 )
  {
    goto LABEL_12;
  }
  if ( (v6 & 0x20) == 0 && (((v11 - 1) & v11) != 0 || ((v12 - 1) & v12) != 0 || v4 == 1 && ((v13 - 1) & v13) != 0) )
  {
    glitch::os::Printer::logf(
      3,
      "adding texture %s: non power-of-two dimension not supported (provided: %dx%dx%u)",
      a3,
      a4[4],
      v12,
      v13);
    goto LABEL_16;
  }
LABEL_24:
  v14 = a4[1];
  v15 = &glitch::video::pixel_format::detail::PFDTable[40 * v14];
  v22 = v14;
  v21 = v15[36];
  if ( v11 % v21 || v12 % v15[37] || v13 % v15[38] )
  {
    if ( (unsigned __int16)v14 == 39 )
    {
      v16 = "unknown";
    }
    else
    {
      v19 = a3;
      v17 = glitch::video::getStringsInternal(0);
      a3 = v19;
      v22 = a4[1];
      v16 = *(const char **)(v17 + 4 * v14);
      v21 = glitch::video::pixel_format::detail::PFDTable[40 * v22 + 36];
    }
    glitch::os::Printer::logf(
      3,
      "adding texture %s: texture size is not a multiple of its pixel format's (%s) block size (%ux%ux%u)",
      a3,
      v16,
      v21,
      glitch::video::pixel_format::detail::PFDTable[40 * v22 + 37],
      glitch::video::pixel_format::detail::PFDTable[40 * v22 + 38]);
    *a1 = 0;
  }
  else
  {
    (*(void (__fastcall **)(_DWORD *, _DWORD *, const char *, int *))(*a2 + 516))(a1, a2, a3, a4);
  }
  return a1;
}

