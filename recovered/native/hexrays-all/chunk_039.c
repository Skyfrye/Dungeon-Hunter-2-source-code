// ===== 66bc80 std::vector<glitch::core::CMatrix4<float>,std::allocator<glitch::core::CMatrix4<float>>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::core::CMatrix4<float>>::_M_compute_next_size(_DWORD *a1, unsigned int a2)
{
  unsigned int v3; // r4
  unsigned int v4; // r3
  unsigned int result; // r0

  v3 = -252645135 * ((a1[1] - *a1) >> 2);
  if ( 63161283 - v3 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer("vector");
  LOWORD(v4) = -15421;
  if ( v3 < a2 )
    result = v3 + a2;
  else
    result = 2 * v3;
  HIWORD(v4) = 963;
  if ( result > v4 || result < v3 )
    return 63161283;
  return result;
}


// ===== 66bd00 std::priv::__copy<glitch::core::CMatrix4<float> *,glitch::core::CMatrix4<float> *,int>(glitch::core::CMatrix4<float> *,glitch::core::CMatrix4<float> *,glitch::core::CMatrix4<float> *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy<glitch::core::CMatrix4<float> *,glitch::core::CMatrix4<float> *,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r3
  int v6; // r8
  int v7; // r5
  int v8; // r4

  v3 = (a2 - a1) >> 2;
  v6 = -252645135 * v3;
  if ( -252645135 * v3 > 0 )
  {
    v7 = -252645135 * v3;
    v8 = 0;
    do
    {
      memcpy((void *)(a3 + v8), (const void *)(a1 + v8), 0x41u);
      --v7;
      v8 += 68;
    }
    while ( v7 );
    a3 += 68 * v6;
  }
  return a3;
}


// ===== 66bd64 std::priv::__copy_backward<glitch::core::CMatrix4<float> *,glitch::core::CMatrix4<float> *,int>(glitch::core::CMatrix4<float> *,glitch::core::CMatrix4<float> *,glitch::core::CMatrix4<float> *,std::random_access_iterator_tag const&,int *) =====
char *__fastcall std::priv::__copy_backward<glitch::core::CMatrix4<float> *,glitch::core::CMatrix4<float> *,int>(
        int a1,
        char *a2,
        char *a3)
{
  int v3; // r3
  char *v4; // r4
  char *v5; // r7
  int v6; // r8
  char *v7; // r6
  int v8; // r5

  v3 = (int)&a2[-a1] >> 2;
  v4 = a2;
  v5 = a3;
  v6 = -252645135 * v3;
  if ( -252645135 * v3 > 0 )
  {
    v7 = a3;
    v8 = -252645135 * v3;
    do
    {
      v7 -= 68;
      v4 -= 68;
      memcpy(v7, v4, 0x41u);
      --v8;
    }
    while ( v8 );
    v5 -= 68 * v6;
  }
  return v5;
}


// ===== 66bdd8 std::priv::__fill<glitch::core::CMatrix4<float> *,glitch::core::CMatrix4<float>,int>(glitch::core::CMatrix4<float> *,glitch::core::CMatrix4<float> *,glitch::core::CMatrix4<float> const&,std::random_access_iterator_tag const&,int *) =====
char *__fastcall std::priv::__fill<glitch::core::CMatrix4<float> *,glitch::core::CMatrix4<float>,int>(
        char *result,
        int a2,
        void *a3)
{
  char *v3; // r5
  int v5; // r4

  v3 = result;
  v5 = -252645135 * ((a2 - (int)result) >> 2);
  if ( v5 > 0 )
  {
    do
    {
      result = (char *)memcpy(v3, a3, 0x41u);
      --v5;
      v3 += 68;
    }
    while ( v5 );
  }
  return result;
}


// ===== 66be28 std::allocator<glitch::core::CMatrix4<float>>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<glitch::core::CMatrix4<float>>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x3C3C3C3 )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 68 * a2;
  if ( 68 * a2 > 0x80 )
    result = (void *)operator new(68 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n / 0x44;
  return result;
}


// ===== 66beac glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::checkAvailability(glitch::video::STechnique const&) =====
bool __fastcall glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::checkAvailability(int a1, int a2)
{
  _BOOL4 v3; // r5
  int v4; // r4
  int v5; // r3

  v3 = glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::checkAvailabilityStatic(a2);
  if ( v3 )
  {
    v4 = *(_DWORD *)(*(_DWORD *)(a1 + 12) + 148);
    if ( v4 )
    {
      if ( *(_BYTE *)(v4 + 17) )
      {
        if ( (*(_BYTE *)(v4 + 18) & 8) != 0 )
          (*(void (__fastcall **)(int))(*(_DWORD *)v4 + 16))(v4);
        v5 = *(_DWORD *)(v4 + 8);
        *(_BYTE *)(v4 + 17) = 0;
        if ( v5 )
          *(_BYTE *)(v4 + 18) |= 2u;
      }
    }
  }
  return v3;
}


// ===== 66bf24 glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&,glitch::core::CMatrix4<float>::eConstructor) [clone] =====
_BYTE *__fastcall glitch::core::CMatrix4<float>::CMatrix4(_BYTE *a1, const void *a2)
{
  a1[64] = 0;
  memcpy(a1, a2, 0x41u);
  return a1;
}


// ===== 66bf44 std::priv::__uninitialized_fill_n<glitch::core::CMatrix4<float> *,uint,glitch::core::CMatrix4<float>>(glitch::core::CMatrix4<float> *,uint,glitch::core::CMatrix4<float> const&) =====
_BYTE *__fastcall std::priv::__uninitialized_fill_n<glitch::core::CMatrix4<float> *,unsigned int,glitch::core::CMatrix4<float>>(
        _BYTE *a1,
        int a2,
        const void *a3)
{
  _BYTE *v3; // r5
  _BYTE *v4; // r4
  int v6; // r6

  v3 = &a1[68 * a2];
  v4 = a1;
  v6 = -252645135 * ((68 * a2) >> 2);
  if ( v6 > 0 )
  {
    do
    {
      glitch::core::CMatrix4<float>::CMatrix4(v4, a3);
      --v6;
      v4 += 68;
    }
    while ( v6 );
  }
  return v3;
}


// ===== 66bf9c std::priv::_Rb_tree<ushort,std::less<ushort>,std::pair<ushort const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<ushort const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<ushort const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>>,glitch::core::SAllocator<std::pair<ushort const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<ushort const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) [clone] =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>>,glitch::core::SAllocator<std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        int a3,
        unsigned __int16 *a4,
        int a5)
{
  _WORD *v7; // r0
  _WORD *v8; // r6
  unsigned __int16 v9; // r3
  int v10; // r2
  unsigned __int16 v11; // r3
  _WORD *v13; // r0
  unsigned __int16 v14; // r3

  if ( a2 == (_DWORD *)a3 )
  {
    v8 = GlitchAlloc(0x18u, 0);
    v8[8] = *a4;
    v8[9] = a4[1];
    v11 = a4[2];
    *((_DWORD *)v8 + 3) = 0;
    v8[10] = v11;
    *((_DWORD *)v8 + 2) = 0;
    a2[2] = v8;
    a2[1] = v8;
    a2[3] = v8;
    v10 = a3;
  }
  else if ( a5 || *a4 < (unsigned int)*(unsigned __int16 *)(a3 + 16) )
  {
    v7 = GlitchAlloc(0x18u, 0);
    v8 = v7;
    v7[8] = *a4;
    v7[9] = a4[1];
    v9 = a4[2];
    *((_DWORD *)v7 + 3) = 0;
    v7[10] = v9;
    *((_DWORD *)v7 + 2) = 0;
    v10 = a3;
    *(_DWORD *)(a3 + 8) = v7;
    if ( a3 == a2[2] )
      a2[2] = v7;
  }
  else
  {
    v13 = GlitchAlloc(0x18u, 0);
    v8 = v13;
    v13[8] = *a4;
    v13[9] = a4[1];
    v14 = a4[2];
    *((_DWORD *)v13 + 3) = 0;
    *((_DWORD *)v13 + 2) = 0;
    v13[10] = v14;
    v10 = a3;
    *(_DWORD *)(a3 + 12) = v13;
    if ( a3 == a2[3] )
      a2[3] = v13;
  }
  *((_DWORD *)v8 + 1) = v10;
  std::priv::_Rb_global<bool>::_Rebalance((int)v8, a2 + 1);
  ++a2[4];
  *a1 = v8;
  return a1;
}


// ===== 66c0f8 std::priv::_Rb_tree<ushort,std::less<ushort>,std::pair<ushort const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<ushort const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<ushort const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>>,glitch::core::SAllocator<std::pair<ushort const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(std::pair<ushort const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData> const&) =====
int __fastcall std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>>,glitch::core::SAllocator<std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
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
    std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>>,glitch::core::SAllocator<std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
      &v17,
      a2,
      v3,
      a3,
      v3);
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
      std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>>,glitch::core::SAllocator<std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
        &v16,
        a2,
        v3,
        a3,
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


// ===== 66c278 glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::skin(glitch::collada::SSkinBuffer &,glitch::scene::CMeshBuffer *) =====
int __fastcall glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::skin(_DWORD *a1, int a2)
{
  _DWORD *v3; // r4
  int result; // r0
  int v6; // r3
  int v7; // r2
  int v8; // r3
  unsigned int v9; // r10
  unsigned int v10; // r8
  int v11; // r5
  unsigned int v12; // r4
  int v13; // r3
  int v14; // r2
  int v15; // r2
  int v16; // r3
  int v17; // r3
  int v18; // r3
  _DWORD *v19; // r0
  int v20; // r12
  int v21; // r4
  int v22; // r4
  int v23; // [sp+0h] [bp-24h] BYREF
  int v24; // [sp+4h] [bp-20h]
  int v25; // [sp+8h] [bp-1Ch]
  int v26; // [sp+Ch] [bp-18h]
  int v27; // [sp+10h] [bp-14h] BYREF
  char v28; // [sp+14h] [bp-10h]
  unsigned __int16 v29[6]; // [sp+18h] [bp-Ch] BYREF

  v3 = a1 + 6;
  (*(void (__fastcall **)(_DWORD *))(*a1 + 16))(a1);
  v29[0] = *(_WORD *)(*(_DWORD *)(*(_DWORD *)(a2 + 4) + 4) + 12);
  v29[2] = -1;
  v29[1] = -1;
  result = std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>>,glitch::core::SAllocator<std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
             (int)&v27,
             v3,
             v29);
  if ( v28 )
  {
    v21 = v27;
    *(_WORD *)(v21 + 18) = glitch::video::CMaterialRenderer::getParameterID(*(_DWORD *)(*(_DWORD *)(a2 + 4) + 4), 11, 0);
    v22 = v27;
    result = glitch::video::CMaterialRenderer::getParameterID(*(_DWORD *)(*(_DWORD *)(a2 + 4) + 4), 15, 0);
    *(_WORD *)(v22 + 20) = result;
  }
  v6 = a1[4];
  v7 = *(_DWORD *)(v6 + 8);
  v8 = *(_DWORD *)(v6 + 4);
  v9 = *(unsigned __int16 *)(v27 + 20);
  v10 = *(unsigned __int16 *)(v27 + 18);
  if ( -252645135 * ((v7 - v8) >> 2) )
  {
    v11 = 0;
    v12 = 0;
    do
    {
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter(
                 *(_DWORD **)(a2 + 4),
                 v10,
                 v12,
                 (_BYTE *)(v8 + v11));
      v13 = a1[4];
      ++v12;
      v11 += 68;
      v14 = *(_DWORD *)(v13 + 8);
      v8 = *(_DWORD *)(v13 + 4);
    }
    while ( v12 < -252645135 * ((v14 - v8) >> 2) );
  }
  if ( v9 != 0xFFFF )
  {
    v15 = a1[3];
    v16 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    if ( *(_BYTE *)(v15 + 152) )
      v16 = 1065353216;
    v23 = v16;
    if ( *(unsigned __int8 *)(v15 + 152) > 1u )
      v17 = 1065353216;
    else
      v17 = 0;
    v24 = v17;
    if ( *(unsigned __int8 *)(v15 + 152) > 2u )
      v18 = 1065353216;
    else
      v18 = 0;
    v25 = v18;
    v19 = *(_DWORD **)(a2 + 4);
    if ( *(unsigned __int8 *)(v15 + 152) > 3u )
      v20 = 1065353216;
    else
      v20 = 0;
    v26 = v20;
    return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector4d<float>>(
             v19,
             v9,
             0,
             (float *)&v23);
  }
  return result;
}


// ===== 66c428 std::vector<glitch::core::CMatrix4<float> const*,glitch::core::SAllocator<glitch::core::CMatrix4<float> const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::core::CMatrix4<float> const**,uint,glitch::core::CMatrix4<float> const* const&) =====
void __fastcall std::vector<glitch::core::CMatrix4<float> const*,glitch::core::SAllocator<glitch::core::CMatrix4<float> const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        int a1,
        char *a2,
        unsigned int a3,
        char *a4)
{
  size_t v8; // r9
  char *v9; // r0
  char *v10; // r8
  size_t v11; // r10
  unsigned int v12; // r2
  int v13; // r3
  char *v14; // r3
  char *v15; // r6

  if ( a3 )
  {
    if ( a3 <= (*(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4)) >> 2 )
    {
      std::vector<glitch::core::CMatrix4<float> const*,glitch::core::SAllocator<glitch::core::CMatrix4<float> const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        (char *)a1,
        a2,
        a3,
        a4);
    }
    else
    {
      v8 = 4
         * std::vector<glitch::core::CMatrix4<float> const*,glitch::core::SAllocator<glitch::core::CMatrix4<float> const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
             (_DWORD *)a1,
             a3);
      v9 = (char *)GlitchAlloc(v8, 0);
      v10 = v9;
      if ( a2 != *(char **)a1 )
      {
        v11 = (size_t)&a2[-*(_DWORD *)a1];
        v9 = (char *)memmove(v9, *(const void **)a1, v11) + v11;
      }
      v12 = a3;
      v13 = 0;
      do
      {
        --v12;
        *(_DWORD *)&v9[v13] = *(_DWORD *)a4;
        v13 += 4;
      }
      while ( v12 );
      v14 = *(char **)(a1 + 4);
      v15 = &v9[4 * a3];
      if ( v14 != a2 )
        v15 = (char *)memmove(v15, a2, v14 - a2) + v14 - a2;
      GlitchFree(*(void **)a1);
      *(_DWORD *)(a1 + 4) = v15;
      *(_DWORD *)(a1 + 8) = &v10[v8];
      *(_DWORD *)a1 = v10;
    }
  }
}


// ===== 66c500 std::vector<glitch::core::CMatrix4<float> const*,glitch::core::SAllocator<glitch::core::CMatrix4<float> const*,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,glitch::core::CMatrix4<float> const* const&) =====
void __fastcall std::vector<glitch::core::CMatrix4<float> const*,glitch::core::SAllocator<glitch::core::CMatrix4<float> const*,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        int a1,
        unsigned int a2,
        char *a3)
{
  int v3; // r4
  unsigned int v5; // r2
  int v6; // r5

  v3 = *(_DWORD *)(a1 + 4);
  v5 = (v3 - *(_DWORD *)a1) >> 2;
  if ( a2 >= v5 )
  {
    std::vector<glitch::core::CMatrix4<float> const*,glitch::core::SAllocator<glitch::core::CMatrix4<float> const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      a1,
      *(char **)(a1 + 4),
      a2 - v5,
      a3);
  }
  else
  {
    v6 = *(_DWORD *)a1 + 4 * a2;
    if ( v6 != v3 )
      *(_DWORD *)(a1 + 4) = v6;
  }
}


// ===== 66c544 glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::preparePtrCache(void) =====
void __fastcall glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::preparePtrCache(
        glitch::collada::detail::CColladaHardwareMatrixSkinTechnique *this)
{
  _DWORD *v2; // r0
  int v3; // r5
  unsigned int v4; // r1
  int v5; // r3
  int v6; // r7
  int v7; // r6
  glitch::scene::ISceneNode *SceneNodeFromScopeID; // r0
  bool v9; // zf
  glitch::scene::ISceneNode *v10; // r2
  int v11; // r8
  int v12; // [sp+4h] [bp-4h] BYREF

  v2 = *((_DWORD **)this + 4);
  if ( (*v2 & 0x10000) != 0 )
  {
    v3 = 0;
    v4 = *(_DWORD *)(*((_DWORD *)this + 3) + 116);
    v12 = 0;
    std::vector<glitch::core::CMatrix4<float> const*,glitch::core::SAllocator<glitch::core::CMatrix4<float> const*,(glitch::memory::E_MEMORY_HINT)0>>::resize(
      (int)(v2 + 4),
      v4,
      (char *)&v12);
    v5 = *((_DWORD *)this + 3);
    v6 = *(_DWORD *)(v5 + 116);
    if ( v6 > 0 )
    {
      while ( 1 )
      {
        v7 = 4 * v3;
        SceneNodeFromScopeID = glitch::scene::ISceneNode::getSceneNodeFromScopeID(
                                 *((glitch::scene::ISceneNode **)this + 5),
                                 *(const char **)(*(_DWORD *)(v5 + 120) + 4 * v3));
        v10 = SceneNodeFromScopeID;
        v9 = SceneNodeFromScopeID == nullptr;
        if ( !SceneNodeFromScopeID )
          SceneNodeFromScopeID = nullptr;
        v11 = *(_DWORD *)(*((_DWORD *)this + 4) + 16);
        if ( !v9 )
          SceneNodeFromScopeID = (glitch::scene::ISceneNode *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)v10 + 56))(SceneNodeFromScopeID);
        ++v3;
        *(_DWORD *)(v11 + v7) = SceneNodeFromScopeID;
        if ( v3 == v6 )
          break;
        v5 = *((_DWORD *)this + 3);
      }
    }
    **((_DWORD **)this + 4) &= ~0x10000u;
  }
}


// ===== 66c5f4 glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::computeBoundingBox(void) =====
glitch::collada::detail::CColladaHardwareMatrixSkinTechnique *__fastcall glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::computeBoundingBox(
        glitch::collada::detail::CColladaHardwareMatrixSkinTechnique *this,
        glitch::collada::detail::CColladaHardwareMatrixSkinTechnique *a2)
{
  int v4; // r2
  float v5; // r1
  int v6; // r0
  int v7; // r9
  int v8; // r3
  int v9; // r9
  int v10; // r6
  float *v12; // r3
  float v13; // r8
  float v14; // r5
  float v15; // r7
  _BOOL4 v16; // r0
  float v17; // r1
  _BOOL4 v18; // r0
  float v19; // r1
  _BOOL4 v20; // r0
  float v21; // r1
  _BOOL4 v22; // r0
  float v23; // r1
  int v24; // r5
  int v25; // r7
  int v26; // r3
  int v27; // r0
  float v28; // r12
  float *v29; // r3
  float v30; // r11
  float v31; // r8
  float v32; // r6
  float v33; // r1
  _BOOL4 v34; // r0
  float v35; // r1
  _BOOL4 v36; // r0
  float v37; // r1
  _BOOL4 v38; // r0
  float v39; // r1
  _BOOL4 v40; // r0
  float v41; // r1
  float v42; // r11
  float v43; // r8
  float v44; // r6
  float v45; // r1
  _BOOL4 v46; // r0
  float v47; // r1
  _BOOL4 v48; // r0
  float v49; // r1
  _BOOL4 v50; // r0
  float v51; // r1
  float v52; // [sp+8h] [bp-1Ch] BYREF
  float v53; // [sp+Ch] [bp-18h]
  float v54; // [sp+10h] [bp-14h]
  float v55; // [sp+14h] [bp-10h]
  float v56; // [sp+18h] [bp-Ch]
  float v57; // [sp+1Ch] [bp-8h]

  glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::preparePtrCache(a2);
  v4 = *((_DWORD *)a2 + 4);
  v5 = -3.4028e38;
  v6 = *(_DWORD *)(v4 + 16);
  v7 = *(_DWORD *)(v4 + 20);
  *((_DWORD *)this + 2) = 2139095039;
  *((_DWORD *)this + 3) = -8388609;
  *((_DWORD *)this + 4) = -8388609;
  *((_DWORD *)this + 5) = -8388609;
  *(_DWORD *)this = 2139095039;
  *((_DWORD *)this + 1) = 2139095039;
  v8 = *((_DWORD *)a2 + 3);
  v9 = (unsigned __int8)((unsigned int)(v7 - v6) >> 2);
  v10 = *(_DWORD *)(v8 + 140);
  if ( v10 )
  {
    if ( v9 )
    {
      v24 = 0;
      v25 = 0;
      while ( 1 )
      {
        v26 = *(_DWORD *)(v8 + 144);
        v27 = *((_DWORD *)a2 + 4);
        v28 = *(float *)(v26 + v24);
        v29 = (float *)(v26 + v24);
        v52 = v28;
        v24 += 24;
        v53 = v29[1];
        v54 = v29[2];
        v55 = v29[3];
        v56 = v29[4];
        v57 = v29[5];
        glitch::core::CMatrix4<float>::transformBox(*(_DWORD *)(*(_DWORD *)(v27 + 16) + 4 * v25), &v52);
        v30 = v55;
        v31 = v56;
        v32 = v57;
        v33 = *((float *)this + 4);
        if ( v55 > *((float *)this + 3) )
          *((float *)this + 3) = v55;
        v34 = v31 > v33;
        v35 = *((float *)this + 5);
        if ( v34 )
          *((float *)this + 4) = v31;
        v36 = v32 > v35;
        v37 = *(float *)this;
        if ( v36 )
          *((float *)this + 5) = v32;
        v38 = v30 < v37;
        v39 = *((float *)this + 1);
        if ( v38 )
          *(float *)this = v30;
        v40 = v31 < v39;
        v41 = *((float *)this + 2);
        if ( v40 )
          *((float *)this + 1) = v31;
        if ( v32 < v41 )
          *((float *)this + 2) = v32;
        v42 = v52;
        v43 = v53;
        v44 = v54;
        v45 = *((float *)this + 4);
        if ( v52 > *((float *)this + 3) )
          *((float *)this + 3) = v52;
        v46 = v43 > v45;
        v47 = *((float *)this + 5);
        if ( v46 )
          *((float *)this + 4) = v43;
        v48 = v44 > v47;
        v49 = *(float *)this;
        if ( v48 )
          *((float *)this + 5) = v44;
        v50 = v42 < v49;
        v51 = *((float *)this + 1);
        if ( v50 )
          *(float *)this = v42;
        if ( v43 < v51 )
          *((float *)this + 1) = v43;
        ++v25;
        if ( v44 < *((float *)this + 2) )
          *((float *)this + 2) = v44;
        if ( v25 >= v9 )
          break;
        v8 = *((_DWORD *)a2 + 3);
      }
    }
  }
  else if ( v9 )
  {
    while ( 1 )
    {
      v12 = *(float **)(*(_DWORD *)(*((_DWORD *)a2 + 4) + 16) + 4 * v10++);
      v13 = v12[12];
      v14 = v12[14];
      v15 = v12[13];
      v16 = v13 > v5;
      v17 = *((float *)this + 4);
      if ( v16 )
        *((float *)this + 3) = v13;
      v18 = v15 > v17;
      v19 = *((float *)this + 5);
      if ( v18 )
        *((float *)this + 4) = v15;
      v20 = v14 > v19;
      v21 = *(float *)this;
      if ( v20 )
        *((float *)this + 5) = v14;
      v22 = v13 < v21;
      v23 = *((float *)this + 1);
      if ( v22 )
        *(float *)this = v13;
      if ( v15 < v23 )
        *((float *)this + 1) = v15;
      if ( v14 < *((float *)this + 2) )
        *((float *)this + 2) = v14;
      if ( v10 >= v9 )
        break;
      v5 = *((float *)this + 3);
    }
  }
  **((_DWORD **)a2 + 4) &= ~8u;
  return this;
}


// ===== 66c8a4 glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::init(glitch::collada::SSkinBuffer &,glitch::scene::CMeshBuffer *,glitch::video::IVideoDriver *,bool) =====
int __fastcall glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::init(int a1)
{
  int v2; // r4
  int v3; // r3

  glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(a1);
  v2 = *(_DWORD *)(*(_DWORD *)(a1 + 12) + 148);
  if ( *(_BYTE *)(v2 + 17) )
  {
    if ( (*(_BYTE *)(v2 + 18) & 8) != 0 )
      (*(void (__fastcall **)(int))(*(_DWORD *)v2 + 16))(v2);
    v3 = *(_DWORD *)(v2 + 8);
    *(_BYTE *)(v2 + 17) = 0;
    if ( v3 )
      *(_BYTE *)(v2 + 18) |= 2u;
  }
  return 0;
}


// ===== 66c928 std::vector<glitch::core::CMatrix4<float>,std::allocator<glitch::core::CMatrix4<float>>>::_M_fill_insert_aux(glitch::core::CMatrix4<float>*,uint,glitch::core::CMatrix4<float> const&,std::__false_type const&) =====
char *__fastcall std::vector<glitch::core::CMatrix4<float>>::_M_fill_insert_aux(
        _DWORD *a1,
        char *a2,
        unsigned int a3,
        char *a4)
{
  char *v7; // r10
  int v9; // r8
  int v10; // r9
  _BYTE *v11; // r11
  int v12; // r7
  int v13; // r7
  char *v14; // r11
  int v15; // r9
  char *v16; // r3
  int v17; // r8
  _BYTE v19[68]; // [sp+14h] [bp-58h] BYREF
  _BYTE v20[8]; // [sp+64h] [bp-8h] BYREF

  if ( (unsigned int)a4 >= *a1 )
  {
    v7 = (char *)a1[1];
    if ( a4 < v7 )
    {
      glitch::core::CMatrix4<float>::CMatrix4(v19, a4);
      return (char *)std::vector<glitch::core::CMatrix4<float>>::_M_fill_insert_aux(a1, a2, a3, v19, v20);
    }
  }
  else
  {
    v7 = (char *)a1[1];
  }
  v9 = -252645135 * ((v7 - a2) >> 2);
  v10 = v9;
  if ( a3 < v9 )
  {
    v13 = 68 * a3;
    v14 = &v7[-68 * a3];
    v15 = -252645135 * ((int)(68 * a3) >> 2);
    if ( v15 > 0 )
    {
      v17 = 0;
      do
      {
        glitch::core::CMatrix4<float>::CMatrix4(&v7[v17], &v14[v17]);
        --v15;
        v17 += 68;
      }
      while ( v15 );
      v16 = (char *)a1[1];
    }
    else
    {
      v16 = v7;
    }
    a1[1] = &v16[v13];
    std::priv::__copy_backward<glitch::core::CMatrix4<float> *,glitch::core::CMatrix4<float> *,int>((int)a2, v14, v7);
    return std::priv::__fill<glitch::core::CMatrix4<float> *,glitch::core::CMatrix4<float>,int>(a2, (int)&a2[v13], a4);
  }
  else
  {
    v11 = std::priv::__uninitialized_fill_n<glitch::core::CMatrix4<float> *,unsigned int,glitch::core::CMatrix4<float>>(
            v7,
            a3 - v9,
            a4);
    a1[1] = v11;
    if ( v9 > 0 )
    {
      v12 = 0;
      do
      {
        glitch::core::CMatrix4<float>::CMatrix4(&v11[v12], &a2[v12]);
        --v9;
        v12 += 68;
      }
      while ( v9 );
      v11 = (_BYTE *)a1[1];
    }
    a1[1] = &v11[68 * v10];
    return std::priv::__fill<glitch::core::CMatrix4<float> *,glitch::core::CMatrix4<float>,int>(a2, (int)v7, a4);
  }
}


// ===== 66cab4 std::vector<glitch::core::CMatrix4<float>,std::allocator<glitch::core::CMatrix4<float>>>::_M_fill_insert(glitch::core::CMatrix4<float>*,uint,glitch::core::CMatrix4<float> const&) =====
void __fastcall std::vector<glitch::core::CMatrix4<float>>::_M_fill_insert(
        _DWORD *a1,
        char *a2,
        unsigned int a3,
        char *a4)
{
  _BYTE *v7; // r0
  char *v8; // r9
  _BYTE *v9; // r7
  int v10; // r3
  int v11; // r11
  _BYTE *v12; // r11
  int v13; // r10
  int v14; // r8
  _BYTE *v15; // r11
  _BYTE *v16; // r3
  int v17; // r2
  int v18; // r10
  int v19; // r8
  int v20; // r6
  size_t v21; // r3
  size_t size; // [sp+10h] [bp-Ch] BYREF

  if ( a3 )
  {
    if ( a3 <= -252645135 * ((a1[2] - a1[1]) >> 2) )
    {
      std::vector<glitch::core::CMatrix4<float>>::_M_fill_insert_aux(a1, a2, a3, a4);
    }
    else
    {
      size = std::vector<glitch::core::CMatrix4<float>>::_M_compute_next_size(a1, a3);
      v7 = std::allocator<glitch::core::CMatrix4<float>>::_M_allocate((int)(a1 + 2), size, &size);
      v8 = (char *)*a1;
      v9 = v7;
      v10 = (int)&a2[-*a1] >> 2;
      v11 = -252645135 * v10;
      if ( -252645135 * v10 > 0 )
      {
        v13 = -252645135 * v10;
        v14 = 0;
        do
        {
          glitch::core::CMatrix4<float>::CMatrix4(&v9[v14], &v8[v14]);
          --v13;
          v14 += 68;
        }
        while ( v13 );
        v12 = &v9[68 * v11];
      }
      else
      {
        v12 = v7;
      }
      if ( a3 == 1 )
      {
        glitch::core::CMatrix4<float>::CMatrix4(v12, a4);
        v15 = v12 + 68;
      }
      else
      {
        v15 = std::priv::__uninitialized_fill_n<glitch::core::CMatrix4<float> *,unsigned int,glitch::core::CMatrix4<float>>(
                v12,
                a3,
                a4);
      }
      v16 = (_BYTE *)a1[1];
      v17 = (v16 - a2) >> 2;
      v18 = -252645135 * v17;
      if ( -252645135 * v17 > 0 )
      {
        v19 = -252645135 * v17;
        v20 = 0;
        do
        {
          glitch::core::CMatrix4<float>::CMatrix4(&v15[v20], &a2[v20]);
          --v19;
          v20 += 68;
        }
        while ( v19 );
        v15 += 68 * v18;
        v16 = (_BYTE *)a1[1];
      }
      if ( (_BYTE *)*a1 != v16 )
        v16 += -68 * ((821096689 * ((unsigned int)&v16[-*a1 - 68] >> 2)) & 0x3FFFFFFF) - 68;
      std::allocator<glitch::core::CMatrix4<float>>::deallocate(
        (int)(a1 + 2),
        v16,
        -252645135 * ((a1[2] - (int)v16) >> 2));
      v21 = size;
      *a1 = v9;
      a1[1] = v15;
      a1[2] = &v9[68 * v21];
    }
  }
}


// ===== 66cc9c std::vector<glitch::core::CMatrix4<float>,std::allocator<glitch::core::CMatrix4<float>>>::resize(uint,glitch::core::CMatrix4<float> const&) =====
void __fastcall std::vector<glitch::core::CMatrix4<float>>::resize(_DWORD *a1, unsigned int a2, char *a3)
{
  int v3; // r12
  unsigned int v5; // r2
  int v6; // r2

  v3 = a1[1];
  v5 = -252645135 * ((v3 - *a1) >> 2);
  if ( a2 >= v5 )
  {
    std::vector<glitch::core::CMatrix4<float>>::_M_fill_insert(a1, (char *)a1[1], a2 - v5, a3);
  }
  else
  {
    v6 = *a1 + 68 * a2;
    if ( v6 != v3 )
      a1[1] = std::priv::__copy<glitch::core::CMatrix4<float> *,glitch::core::CMatrix4<float> *,int>(a1[1], v3, v6);
  }
}


// ===== 66cd18 glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::prepareCache(void) =====
void __fastcall glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::prepareCache(
        glitch::collada::detail::CColladaHardwareMatrixSkinTechnique *this)
{
  unsigned int v2; // r7
  int v3; // r6
  _DWORD *v4; // r8
  _DWORD *v5; // r3
  int v6; // r2
  int v7; // r9
  int v8; // r4
  void *v9; // r7
  void *v10; // r7
  _BYTE v11[68]; // [sp+4h] [bp-CCh] BYREF
  _BYTE v12[68]; // [sp+48h] [bp-88h] BYREF
  _DWORD v13[16]; // [sp+8Ch] [bp-44h] BYREF
  char v14; // [sp+CCh] [bp-4h]

  if ( (**((_DWORD **)this + 4) & 1) != 0 )
  {
    glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::preparePtrCache(this);
    v2 = *(_DWORD *)(*((_DWORD *)this + 3) + 116);
    v3 = 0;
    v4 = (_DWORD *)(*((_DWORD *)this + 4) + 4);
    LC_API_MEMSET_0(v13, 0, 0x40u);
    v13[15] = 1065353216;
    v13[0] = 1065353216;
    v13[5] = 1065353216;
    v13[10] = 1065353216;
    v14 = 1;
    std::vector<glitch::core::CMatrix4<float>>::resize(v4, v2, (char *)v13);
    v5 = *((_DWORD **)this + 4);
    v6 = v5[4];
    v7 = (v5[5] - v6) >> 2;
    if ( v7 )
    {
      v8 = 0;
      while ( 1 )
      {
        v9 = (void *)(v5[1] + v3);
        glitch::core::operator*<float,glitch::collada::SMatrix>(
          (int)v12,
          *(_DWORD *)(v6 + 4 * v8),
          (float *)(*(_DWORD *)(*((_DWORD *)this + 3) + 4) + (v8 << 6)));
        memcpy(v9, v12, 0x41u);
        ++v8;
        v10 = (void *)(*(_DWORD *)(*((_DWORD *)this + 4) + 4) + v3);
        glitch::core::operator*<float,glitch::collada::SMatrix>(
          (int)v11,
          (int)v10,
          (float *)(*((_DWORD *)this + 3) + 16));
        memcpy(v10, v11, 0x41u);
        v3 += 68;
        if ( v8 == v7 )
          break;
        v5 = *((_DWORD **)this + 4);
        v6 = v5[4];
      }
      v5 = *((_DWORD **)this + 4);
    }
    *v5 &= ~1u;
  }
}


// ===== 66ce48 glitch::core::dual_quaternion::fromQuatAndTrans(glitch::core::quaternion const&,glitch::core::vector3d<float> const&) =====
float *__fastcall glitch::core::dual_quaternion::fromQuatAndTrans(float *result, float *a2, float *a3)
{
  float v3; // r5
  float v4; // r7
  float v5; // r8
  float v6; // r10

  v3 = a2[3];
  result[3] = v3;
  v4 = *a2;
  *result = *a2;
  v5 = a2[1];
  result[1] = v5;
  v6 = a2[2];
  result[2] = v6;
  result[7] = (float)((float)((float)(v4 * *a3) + (float)(v5 * a3[1])) + (float)(v6 * a3[2])) * -0.5;
  result[4] = (float)((float)((float)(v3 * *a3) + (float)(v6 * a3[1])) - (float)(v5 * a3[2])) * 0.5;
  result[5] = (float)((float)((float)(COERCE_FLOAT(*(_DWORD *)a3 + 0x80000000) * v6) + (float)(v3 * a3[1]))
                    + (float)(v4 * a3[2]))
            * 0.5;
  result[6] = (float)((float)((float)(v5 * *a3) - (float)(v4 * a3[1])) + (float)(v3 * a3[2])) * 0.5;
  return result;
}


// ===== 66cfc0 glitch::collada::detail::CColladaHardwareQuatSkinTechnique::CColladaHardwareQuatSkinTechnique(glitch::collada::SSkin &,glitch::collada::SSkinCache &,bool) =====
int __fastcall glitch::collada::detail::CColladaHardwareQuatSkinTechnique::CColladaHardwareQuatSkinTechnique(
        int result,
        int a2,
        int a3,
        char a4)
{
  *(_DWORD *)(result + 12) = a2;
  *(_DWORD *)result = off_985570;
  *(_DWORD *)(result + 16) = a3;
  *(_DWORD *)(result + 8) = 0;
  *(_DWORD *)(result + 20) = 0;
  *(_DWORD *)(result + 28) = 0;
  *(_BYTE *)(result + 24) = 0;
  *(_DWORD *)(result + 36) = result + 24;
  *(_BYTE *)(result + 4) = a4;
  *(_DWORD *)(result + 40) = 0;
  *(_DWORD *)(result + 32) = result + 24;
  return result;
}


// ===== 66d01c glitch::collada::detail::CColladaHardwareQuatSkinTechnique::CColladaHardwareQuatSkinTechnique(glitch::collada::SSkin &,glitch::collada::SSkinCache &,bool) =====
int __fastcall glitch::collada::detail::CColladaHardwareQuatSkinTechnique::CColladaHardwareQuatSkinTechnique(
        int result,
        int a2,
        int a3,
        char a4)
{
  *(_DWORD *)(result + 12) = a2;
  *(_DWORD *)result = off_985570;
  *(_DWORD *)(result + 16) = a3;
  *(_DWORD *)(result + 8) = 0;
  *(_DWORD *)(result + 20) = 0;
  *(_DWORD *)(result + 28) = 0;
  *(_BYTE *)(result + 24) = 0;
  *(_DWORD *)(result + 36) = result + 24;
  *(_BYTE *)(result + 4) = a4;
  *(_DWORD *)(result + 40) = 0;
  *(_DWORD *)(result + 32) = result + 24;
  return result;
}


// ===== 66d078 glitch::collada::detail::CColladaHardwareQuatSkinTechnique::needOutputBuffer(void) =====
int __fastcall glitch::collada::detail::CColladaHardwareQuatSkinTechnique::needOutputBuffer(
        glitch::collada::detail::CColladaHardwareQuatSkinTechnique *this)
{
  return 0;
}


// ===== 66d080 glitch::collada::detail::CColladaHardwareQuatSkinTechnique::attach(glitch::scene::ISceneNode *) =====
int __fastcall glitch::collada::detail::CColladaHardwareQuatSkinTechnique::attach(
        int this,
        glitch::scene::ISceneNode *a2)
{
  *(_DWORD *)(this + 20) = a2;
  return this;
}


// ===== 66d088 glitch::collada::detail::CColladaHardwareQuatSkinTechnique::onPrepareBufferForRendering(glitch::collada::E_PREPARE_BUFFER_STEP,glitch::video::IVideoDriver *,glitch::collada::SSkinBuffer &,glitch::scene::CMeshBuffer *) =====
int __fastcall glitch::collada::detail::CColladaHardwareQuatSkinTechnique::onPrepareBufferForRendering(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5)
{
  if ( a2 == 1 )
    (*(void (__fastcall **)(int, int, int))(*(_DWORD *)a1 + 24))(a1, a4, a5);
  return 16;
}


// ===== 66d0b8 glitch::core::rowMatrixProduct34<glitch::core::CMatrix4<float>,glitch::core::CMatrix4<float>,float [16]>(glitch::core::CMatrix4<float> &,glitch::core::CMatrix4<float> const&,float [16] const&) =====
float __fastcall glitch::core::rowMatrixProduct34<glitch::core::CMatrix4<float>,glitch::core::CMatrix4<float>,float [16]>(
        int a1,
        float *a2,
        float *a3)
{
  float result; // r0

  *(_BYTE *)(a1 + 64) = 0;
  *(float *)a1 = (float)((float)(*a2 * *a3) + (float)(a2[4] * a3[1])) + (float)(a2[8] * a3[2]);
  *(float *)(a1 + 4) = (float)((float)(a2[1] * *a3) + (float)(a2[5] * a3[1])) + (float)(a2[9] * a3[2]);
  *(float *)(a1 + 8) = (float)((float)(a2[2] * *a3) + (float)(a2[6] * a3[1])) + (float)(a2[10] * a3[2]);
  *(_DWORD *)(a1 + 12) = 0;
  *(float *)(a1 + 16) = (float)((float)(*a2 * a3[4]) + (float)(a2[4] * a3[5])) + (float)(a2[8] * a3[6]);
  *(float *)(a1 + 20) = (float)((float)(a2[1] * a3[4]) + (float)(a2[5] * a3[5])) + (float)(a2[9] * a3[6]);
  *(float *)(a1 + 24) = (float)((float)(a2[2] * a3[4]) + (float)(a2[6] * a3[5])) + (float)(a2[10] * a3[6]);
  *(_DWORD *)(a1 + 28) = 0;
  *(float *)(a1 + 32) = (float)((float)(*a2 * a3[8]) + (float)(a2[4] * a3[9])) + (float)(a2[8] * a3[10]);
  *(float *)(a1 + 36) = (float)((float)(a2[1] * a3[8]) + (float)(a2[5] * a3[9])) + (float)(a2[9] * a3[10]);
  *(float *)(a1 + 40) = (float)((float)(a2[2] * a3[8]) + (float)(a2[6] * a3[9])) + (float)(a2[10] * a3[10]);
  *(_DWORD *)(a1 + 44) = 0;
  *(float *)(a1 + 48) = (float)((float)((float)(*a2 * a3[12]) + (float)(a2[4] * a3[13])) + (float)(a2[8] * a3[14]))
                      + a2[12];
  *(float *)(a1 + 52) = (float)((float)((float)(a2[1] * a3[12]) + (float)(a2[5] * a3[13])) + (float)(a2[9] * a3[14]))
                      + a2[13];
  result = (float)((float)((float)(a2[2] * a3[12]) + (float)(a2[6] * a3[13])) + (float)(a2[10] * a3[14])) + a2[14];
  *(float *)(a1 + 56) = result;
  *(_DWORD *)(a1 + 60) = 1065353216;
  return result;
}


// ===== 66d464 std::vector<glitch::core::dual_quaternion,glitch::core::SAllocator<glitch::core::dual_quaternion,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::core::dual_quaternion*,uint,glitch::core::dual_quaternion const&,std::__false_type const&) =====
unsigned int __fastcall std::vector<glitch::core::dual_quaternion,glitch::core::SAllocator<glitch::core::dual_quaternion,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        unsigned int *a1,
        unsigned int *a2,
        unsigned int a3,
        unsigned int *a4)
{
  unsigned int result; // r0
  unsigned int *v6; // r12
  unsigned int *v7; // r4
  unsigned int v9; // r10
  unsigned int v10; // r0
  unsigned int v11; // r1
  unsigned int v12; // r2
  unsigned int v13; // r3
  _DWORD *v14; // r12
  int v15; // r1
  int v16; // r2
  int v17; // r3
  int v18; // r8
  int v19; // r8
  unsigned int v20; // r9
  unsigned int v21; // r2
  int v22; // r6
  _DWORD *v25; // r12
  int v26; // r1
  int v27; // r2
  int v28; // r3
  unsigned int *v29; // r4
  unsigned int *v30; // r12
  unsigned int v31; // r1
  unsigned int v32; // r2
  unsigned int v33; // r3
  int v34; // r3
  int v35; // r2
  int v36; // r5
  int v37; // r9
  int v38; // r6
  unsigned int *v40; // r4
  unsigned int v41; // r1
  unsigned int v42; // r2
  unsigned int v43; // r3
  unsigned int v44; // r1
  unsigned int v45; // r2
  unsigned int v46; // r3
  int v47; // r10
  int v48; // r9
  int v49; // r6
  unsigned int *v50; // r5
  unsigned int *v51; // r8
  _DWORD *v52; // r12
  unsigned int v53; // r1
  unsigned int v54; // r2
  unsigned int v55; // r3
  unsigned int *v56; // r4
  unsigned int *v57; // r12
  unsigned int v58; // r1
  unsigned int v59; // r2
  unsigned int v60; // r3
  unsigned int *v61; // r12
  unsigned int *v62; // r4
  int v63; // r8
  int v64; // [sp+Ch] [bp-30h]
  unsigned int v65; // [sp+Ch] [bp-30h]
  _DWORD v66[8]; // [sp+14h] [bp-28h] BYREF
  char v67[8]; // [sp+34h] [bp-8h] BYREF

  result = *a1;
  v6 = a4;
  v7 = a2;
  if ( (unsigned int)a4 >= result )
  {
    v9 = a1[1];
    if ( (unsigned int)a4 < v9 )
    {
      v10 = *a4;
      v11 = a4[1];
      v12 = a4[2];
      v13 = a4[3];
      v14 = v6 + 4;
      v66[0] = v10;
      v66[1] = v11;
      v66[2] = v12;
      v66[3] = v13;
      v15 = v14[1];
      v16 = v14[2];
      v17 = v14[3];
      v66[4] = *v14;
      v66[5] = v15;
      v66[6] = v16;
      v66[7] = v17;
      return std::vector<glitch::core::dual_quaternion,glitch::core::SAllocator<glitch::core::dual_quaternion,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
               a1,
               v7,
               a3,
               v66,
               v67);
    }
  }
  else
  {
    v9 = a1[1];
  }
  v18 = (int)(v9 - (_DWORD)a2) >> 5;
  if ( a3 >= v18 )
  {
    v37 = (int)(32 * (a3 - v18)) >> 5;
    v65 = v9 + 32 * (a3 - v18);
    if ( v37 > 0 )
    {
      v38 = 0;
      do
      {
        v40 = (unsigned int *)(v9 + 32 * v38);
        v41 = v6[1];
        v42 = v6[2];
        v43 = v6[3];
        *v40 = *v6;
        v40[1] = v41;
        v40[2] = v42;
        v40[3] = v43;
        v40 += 4;
        ++v38;
        result = v6[4];
        v44 = v6[5];
        v45 = v6[6];
        v46 = v6[7];
        *v40 = result;
        v40[1] = v44;
        v40[2] = v45;
        v40[3] = v46;
      }
      while ( v38 != v37 );
      v7 = a2;
    }
    a1[1] = v65;
    if ( v18 <= 0 )
    {
      a1[1] = v65 + 32 * v18;
    }
    else
    {
      v47 = v18;
      v48 = v18;
      v49 = 0;
      v50 = v7;
      v51 = v6;
      do
      {
        v52 = (_DWORD *)(v65 + v49 * 4);
        v53 = v50[v49 + 1];
        v54 = v50[v49 + 2];
        v55 = v50[v49 + 3];
        v56 = &v50[v49 + 4];
        *v52 = v50[v49];
        v52[1] = v53;
        v52[2] = v54;
        v52[3] = v55;
        v57 = (unsigned int *)(v65 + v49 * 4 + 16);
        --v47;
        result = *v56;
        v58 = v50[v49 + 5];
        v59 = v50[v49 + 6];
        v60 = v50[v49 + 7];
        v49 += 8;
        *v57 = *v56;
        v57[1] = v58;
        v57[2] = v59;
        v57[3] = v60;
      }
      while ( v47 );
      v61 = v51;
      v62 = v50;
      v63 = v48;
      a1[1] += 32 * v48;
      do
      {
        --v63;
        *v62 = *v61;
        v62[1] = v61[1];
        v62[2] = v61[2];
        v62[3] = v61[3];
        v62[4] = v61[4];
        v62[5] = v61[5];
        v62[6] = v61[6];
        v62[7] = v61[7];
        v62 += 8;
      }
      while ( v63 );
    }
  }
  else
  {
    v64 = 32 * a3;
    v19 = (int)(32 * a3) >> 5;
    v20 = v9 - 32 * a3;
    if ( v19 > 0 )
    {
      v22 = 0;
      do
      {
        v25 = (_DWORD *)(v9 + v22);
        v26 = *(_DWORD *)(v20 + v22 + 4);
        v27 = *(_DWORD *)(v20 + v22 + 8);
        v28 = *(_DWORD *)(v20 + v22 + 12);
        v29 = (unsigned int *)(v20 + v22 + 16);
        *v25 = *(_DWORD *)(v20 + v22);
        v25[1] = v26;
        v25[2] = v27;
        v25[3] = v28;
        v30 = (unsigned int *)(v9 + v22 + 16);
        --v19;
        result = *v29;
        v31 = *(_DWORD *)(v20 + v22 + 20);
        v32 = *(_DWORD *)(v20 + v22 + 24);
        v33 = *(_DWORD *)(v20 + v22 + 28);
        v22 += 32;
        *v30 = *v29;
        v30[1] = v31;
        v30[2] = v32;
        v30[3] = v33;
      }
      while ( v19 );
      v21 = a1[1];
      v7 = a2;
      v6 = a4;
    }
    else
    {
      v21 = v9;
    }
    v34 = (int)(v20 - (_DWORD)v7) >> 5;
    a1[1] = v21 + v64;
    if ( v34 > 0 )
    {
      do
      {
        --v34;
        *(_DWORD *)(v9 - 32) = *(_DWORD *)(v20 - 32);
        *(_DWORD *)(v9 - 28) = *(_DWORD *)(v20 - 28);
        *(_DWORD *)(v9 - 24) = *(_DWORD *)(v20 - 24);
        *(_DWORD *)(v9 - 20) = *(_DWORD *)(v20 - 20);
        *(_DWORD *)(v9 - 16) = *(_DWORD *)(v20 - 16);
        *(_DWORD *)(v9 - 12) = *(_DWORD *)(v20 - 12);
        *(_DWORD *)(v9 - 8) = *(_DWORD *)(v20 - 8);
        v35 = *(_DWORD *)(v20 - 4);
        v20 -= 32;
        *(_DWORD *)(v9 - 4) = v35;
        v9 -= 32;
      }
      while ( v34 );
    }
    v36 = v64 >> 5;
    if ( v64 >> 5 > 0 )
    {
      do
      {
        --v36;
        *v7 = *v6;
        v7[1] = v6[1];
        v7[2] = v6[2];
        v7[3] = v6[3];
        v7[4] = v6[4];
        v7[5] = v6[5];
        v7[6] = v6[6];
        v7[7] = v6[7];
        v7 += 8;
      }
      while ( v36 );
    }
  }
  return result;
}


// ===== 66d710 `global constructor keyed to'.._source_glitch_collada_detail_CColladaHardwareQuatSkinTechnique.cpp =====
void `global constructor keyed to'.._source_glitch_collada_detail_CColladaHardwareQuatSkinTechnique.cpp()
{
  dword_9F70F4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F70F0 = 1056964608;
}


// ===== 66d730 glitch::collada::detail::CColladaHardwareQuatSkinTechnique::checkAvailabilityStatic(glitch::video::STechnique const&) =====
bool __fastcall glitch::collada::detail::CColladaHardwareQuatSkinTechnique::checkAvailabilityStatic(int a1)
{
  int v1; // r4
  int v2; // r1
  int v3; // r3
  int v4; // r12
  int v5; // r2
  int v6; // r6
  unsigned int ParameterID; // r0
  unsigned int v8; // r5
  unsigned int v9; // r0

  v1 = *(unsigned __int8 *)(a1 + 4);
  if ( *(_BYTE *)(a1 + 4) )
  {
    v2 = *(_DWORD *)(a1 + 8);
    v3 = 0;
    v4 = 52 * (unsigned __int8)(v1 - 1) + 52;
    v1 = 0;
    do
    {
      v5 = *(_DWORD *)(v2 + v3 + 32);
      v3 += 52;
      v1 |= *(_DWORD *)(v5 + 56);
    }
    while ( v3 != v4 );
  }
  else
  {
    v2 = *(_DWORD *)(a1 + 8);
  }
  v6 = *(_DWORD *)(v2 + 32);
  ParameterID = glitch::video::IShader::getParameterID(v6, 14, 0, 0);
  v8 = ParameterID;
  if ( ParameterID == 0xFFFF )
    return 0;
  v9 = glitch::video::IShader::getParameterID(v6, 14, 0, (unsigned __int16)(ParameterID + 1));
  return v9 != 0xFFFF
      && *(unsigned __int8 *)(*(_DWORD *)(v6 + 40) + 16 * v8 + 7) != *(unsigned __int8 *)(*(_DWORD *)(v6 + 40)
                                                                                        + 16 * v9
                                                                                        + 7)
      && (v1 & 0x30000000) == 805306368;
}


// ===== 66d7fc std::vector<glitch::core::dual_quaternion,glitch::core::SAllocator<glitch::core::dual_quaternion,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::core::dual_quaternion,glitch::core::SAllocator<glitch::core::dual_quaternion,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
        _DWORD *a1,
        unsigned int a2)
{
  unsigned int v2; // r4
  unsigned int result; // r0

  v2 = (a1[1] - *a1) >> 5;
  if ( 0x7FFFFFF - v2 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer("vector");
  if ( v2 < a2 )
    result = v2 + a2;
  else
    result = 2 * v2;
  if ( result > 0x7FFFFFF || result < v2 )
    return 0x7FFFFFF;
  return result;
}


// ===== 66d85c glitch::core::dual_quaternion::operator=(glitch::core::CMatrix4<float> const&) =====
float *__fastcall glitch::core::dual_quaternion::operator=(float *a1, float *a2)
{
  float v4; // r12
  float v5; // r3
  float v7[4]; // [sp+4h] [bp-1Ch] BYREF
  float v8[3]; // [sp+14h] [bp-Ch] BYREF

  glitch::core::quaternion::operator=(v7, a2);
  v4 = a2[13];
  v5 = a2[14];
  v8[0] = a2[12];
  v8[1] = v4;
  v8[2] = v5;
  return glitch::core::dual_quaternion::fromQuatAndTrans(a1, v7, v8);
}


// ===== 66d8a8 std::allocator<std::priv::_Rb_tree_node<std::pair<uint const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 28;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 66d8c8 glitch::collada::detail::CColladaHardwareQuatSkinTechnique::checkAvailability(glitch::video::STechnique const&) =====
bool __fastcall glitch::collada::detail::CColladaHardwareQuatSkinTechnique::checkAvailability(int a1, int a2)
{
  _BOOL4 v3; // r5
  int v4; // r4
  int v5; // r3

  v3 = glitch::collada::detail::CColladaHardwareQuatSkinTechnique::checkAvailabilityStatic(a2);
  if ( v3 )
  {
    v4 = *(_DWORD *)(*(_DWORD *)(a1 + 12) + 148);
    if ( v4 )
    {
      if ( *(_BYTE *)(v4 + 17) )
      {
        if ( (*(_BYTE *)(v4 + 18) & 8) != 0 )
          (*(void (__fastcall **)(int))(*(_DWORD *)v4 + 16))(v4);
        v5 = *(_DWORD *)(v4 + 8);
        *(_BYTE *)(v4 + 17) = 0;
        if ( v5 )
          *(_BYTE *)(v4 + 18) |= 2u;
      }
    }
  }
  return v3;
}


// ===== 66d940 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<uint const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<uint const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>,std::allocator<std::pair<uint const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<uint const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) [clone] =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>,std::allocator<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        int a4,
        int a5)
{
  _DWORD *v7; // r0
  _DWORD *v8; // r6
  char v9; // r3
  _DWORD *v10; // r2
  char v11; // r3
  _DWORD *v13; // r0
  char v14; // r3

  if ( a2 == a3 )
  {
    v8 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>>::allocate();
    v8[4] = *(_DWORD *)a4;
    v8[5] = *(_DWORD *)(a4 + 4);
    *((_WORD *)v8 + 12) = *(_WORD *)(a4 + 8);
    v11 = *(_BYTE *)(a4 + 10);
    v8[3] = 0;
    v8[2] = 0;
    *((_BYTE *)v8 + 26) = v11;
    a2[2] = v8;
    a2[1] = v8;
    a2[3] = v8;
    v10 = a3;
  }
  else if ( a5 || *(_DWORD *)a4 < a3[4] )
  {
    v7 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>>::allocate();
    v8 = v7;
    v7[4] = *(_DWORD *)a4;
    v7[5] = *(_DWORD *)(a4 + 4);
    *((_WORD *)v7 + 12) = *(_WORD *)(a4 + 8);
    v9 = *(_BYTE *)(a4 + 10);
    v7[3] = 0;
    v7[2] = 0;
    *((_BYTE *)v7 + 26) = v9;
    v10 = a3;
    a3[2] = v7;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v7;
  }
  else
  {
    v13 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>>::allocate();
    v8 = v13;
    v13[4] = *(_DWORD *)a4;
    v13[5] = *(_DWORD *)(a4 + 4);
    *((_WORD *)v13 + 12) = *(_WORD *)(a4 + 8);
    v14 = *(_BYTE *)(a4 + 10);
    v13[3] = 0;
    v13[2] = 0;
    *((_BYTE *)v13 + 26) = v14;
    v10 = a3;
    a3[3] = v13;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v13;
  }
  v8[1] = v10;
  std::priv::_Rb_global<bool>::_Rebalance((int)v8, a2 + 1);
  ++a2[4];
  *a1 = v8;
  return a1;
}


// ===== 66dac0 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<uint const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<uint const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>,std::allocator<std::pair<uint const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>>::insert_unique(std::pair<uint const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData> const&) =====
int __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>,std::allocator<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>>::insert_unique(
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
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>,std::allocator<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>>::_M_insert(
      &v17,
      a2,
      v3,
      (int)a3,
      (int)v3);
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>,std::allocator<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>>::_M_insert(
        &v16,
        a2,
        v3,
        (int)a3,
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


// ===== 66dc40 glitch::collada::detail::CColladaHardwareQuatSkinTechnique::skin(glitch::collada::SSkinBuffer &,glitch::scene::CMeshBuffer *) =====
unsigned int __fastcall glitch::collada::detail::CColladaHardwareQuatSkinTechnique::skin(_DWORD *a1, int a2)
{
  _DWORD *v3; // r4
  unsigned int result; // r0
  _DWORD *v6; // r2
  _DWORD *v7; // r1
  unsigned int v8; // r3
  bool v9; // cc
  _DWORD *v10; // r3
  int v11; // r3
  unsigned int v12; // r9
  unsigned int v13; // r8
  int v14; // r1
  int v15; // r3
  unsigned int v16; // r10
  unsigned int v17; // r4
  int v18; // r5
  unsigned int v19; // r2
  int v20; // r3
  int v21; // r2
  int v22; // r2
  float v23; // r3
  int v24; // r3
  int v25; // r3
  _DWORD *v26; // r0
  int v27; // r12
  int v28; // r3
  unsigned int ParameterID; // r3
  int v30; // r0
  unsigned int v31; // r2
  bool v32; // cc
  int v33; // r2
  unsigned int v34; // r3
  int v35; // r0
  unsigned int v36; // r2
  bool v37; // cc
  int v38; // r2
  __int16 v39; // r5
  int HashCode; // r0
  float v41; // [sp+0h] [bp-30h] BYREF
  int v42; // [sp+4h] [bp-2Ch]
  int v43; // [sp+8h] [bp-28h]
  int v44; // [sp+Ch] [bp-24h]
  unsigned int v45[2]; // [sp+10h] [bp-20h] BYREF
  __int16 v46; // [sp+18h] [bp-18h]
  char v47; // [sp+1Ah] [bp-16h]
  float v48; // [sp+20h] [bp-10h]
  __int16 v49; // [sp+24h] [bp-Ch]
  char v50; // [sp+26h] [bp-Ah]
  _DWORD *v51; // [sp+28h] [bp-8h] BYREF

  v3 = a1 + 6;
  (*(void (__fastcall **)(_DWORD *))(*a1 + 16))(a1);
  result = glitch::video::CMaterial::getHashCode(*(glitch::video::CMaterial **)(a2 + 4));
  v6 = (_DWORD *)a1[7];
  if ( !v6 )
  {
LABEL_30:
    v6 = v3;
LABEL_12:
    if ( v3 != v6 )
      goto LABEL_13;
    goto LABEL_31;
  }
  v7 = v3;
  while ( 1 )
  {
    v8 = v6[4];
    v9 = result > v8;
    if ( result <= v8 )
      v10 = (_DWORD *)v6[2];
    else
      v10 = (_DWORD *)v6[3];
    if ( v9 )
      v6 = v7;
    v7 = v6;
    if ( !v10 )
      break;
    v6 = v10;
  }
  if ( v3 != v6 )
  {
    if ( result >= v6[4] )
      goto LABEL_12;
    goto LABEL_30;
  }
LABEL_31:
  v28 = *(_DWORD *)(a2 + 4);
  v41 = NAN;
  ParameterID = glitch::video::CMaterialRenderer::getParameterID(*(_DWORD *)(v28 + 4), 14, 0);
  v30 = *(_DWORD *)(*(_DWORD *)(a2 + 4) + 4);
  v31 = *(unsigned __int16 *)(v30 + 14);
  v32 = v31 > ParameterID;
  if ( v31 <= ParameterID )
    v33 = 0;
  else
    v33 = *(_DWORD *)(v30 + 32);
  if ( v32 )
    v33 += 16 * ParameterID;
  *((_WORD *)&v41 + *(unsigned __int8 *)(v33 + 7)) = ParameterID;
  v34 = glitch::video::CMaterialRenderer::getParameterID(v30, 14, (unsigned __int16)(ParameterID + 1));
  v35 = *(_DWORD *)(*(_DWORD *)(a2 + 4) + 4);
  v36 = *(unsigned __int16 *)(v35 + 14);
  v37 = v36 > v34;
  if ( v36 <= v34 )
    v38 = 0;
  else
    v38 = *(_DWORD *)(v35 + 32);
  if ( v37 )
    v38 += 16 * v34;
  *((_WORD *)&v41 + *(unsigned __int8 *)(v38 + 7)) = v34;
  v39 = glitch::video::CMaterialRenderer::getParameterID(v35, 15, 0);
  HashCode = glitch::video::CMaterial::getHashCode(*(glitch::video::CMaterial **)(a2 + 4));
  BYTE2(v42) = -1;
  LOWORD(v42) = v39;
  v49 = v39;
  v45[0] = HashCode;
  v50 = -1;
  v47 = -1;
  v46 = v39;
  *(float *)&v45[1] = v41;
  v48 = v41;
  result = std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>,std::allocator<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>>::insert_unique(
             (int)&v51,
             v3,
             v45);
  v6 = v51;
LABEL_13:
  v11 = a1[4];
  v12 = *((unsigned __int16 *)v6 + 12);
  v13 = *((unsigned __int16 *)v6 + 10);
  v14 = *(_DWORD *)(v11 + 32);
  v15 = *(_DWORD *)(v11 + 28);
  v16 = *((unsigned __int16 *)v6 + 11);
  if ( (unsigned int)(v14 - v15) >> 5 )
  {
    v17 = 0;
    do
    {
      v18 = 32 * v17;
      glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector4d<float>>(
        *(_DWORD **)(a2 + 4),
        v13,
        v17,
        (float *)(v15 + 32 * v17));
      v19 = v17++;
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector4d<float>>(
                 *(_DWORD **)(a2 + 4),
                 v16,
                 v19,
                 (float *)(*(_DWORD *)(a1[4] + 28) + v18 + 16));
      v20 = a1[4];
      v21 = *(_DWORD *)(v20 + 32);
      v15 = *(_DWORD *)(v20 + 28);
    }
    while ( v17 < (v21 - v15) >> 5 );
  }
  if ( v12 != 0xFFFF )
  {
    v22 = a1[3];
    v23 = 0.0;
    v41 = 0.0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    if ( *(_BYTE *)(v22 + 152) )
      v23 = 1.0;
    v41 = v23;
    if ( *(unsigned __int8 *)(v22 + 152) > 1u )
      v24 = 1065353216;
    else
      v24 = 0;
    v42 = v24;
    if ( *(unsigned __int8 *)(v22 + 152) > 2u )
      v25 = 1065353216;
    else
      v25 = 0;
    v43 = v25;
    v26 = *(_DWORD **)(a2 + 4);
    if ( *(unsigned __int8 *)(v22 + 152) > 3u )
      v27 = 1065353216;
    else
      v27 = 0;
    v44 = v27;
    return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector4d<float>>(
             v26,
             v12,
             0,
             &v41);
  }
  return result;
}


// ===== 66decc std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<uint const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<uint const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>,std::allocator<std::pair<uint const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>,std::allocator<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>>::_M_erase(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>,std::allocator<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x1Cu);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 66df04 glitch::collada::detail::CColladaHardwareQuatSkinTechnique::~CColladaHardwareQuatSkinTechnique() =====
void __fastcall glitch::collada::detail::CColladaHardwareQuatSkinTechnique::~CColladaHardwareQuatSkinTechnique(
        glitch::collada::detail::CColladaHardwareQuatSkinTechnique *this)
{
  int v1; // r1
  char *v3; // r5

  v1 = *((_DWORD *)this + 10);
  *(_DWORD *)this = off_985570;
  if ( v1 )
  {
    v3 = (char *)this + 24;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>,std::allocator<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>>>::_M_erase(
      (int)this + 24,
      *((_DWORD **)this + 7));
    *((_DWORD *)this + 9) = v3;
    *((_DWORD *)this + 10) = 0;
    *((_DWORD *)this + 8) = v3;
    *((_DWORD *)this + 7) = 0;
  }
  glitch::collada::detail::IColladaSkinTechnique::~IColladaSkinTechnique(this);
}


// ===== 66df6c glitch::collada::detail::CColladaHardwareQuatSkinTechnique::~CColladaHardwareQuatSkinTechnique() =====
void __fastcall glitch::collada::detail::CColladaHardwareQuatSkinTechnique::~CColladaHardwareQuatSkinTechnique(
        glitch::collada::detail::CColladaHardwareQuatSkinTechnique *this)
{
  glitch::collada::detail::CColladaHardwareQuatSkinTechnique::~CColladaHardwareQuatSkinTechnique(this);
  LC_API_FREE_0(this);
}


// ===== 66df88 glitch::collada::detail::CColladaHardwareQuatSkinTechnique::preparePtrCache(void) =====
void __fastcall glitch::collada::detail::CColladaHardwareQuatSkinTechnique::preparePtrCache(
        glitch::collada::detail::CColladaHardwareQuatSkinTechnique *this)
{
  _DWORD *v2; // r0
  int v3; // r5
  unsigned int v4; // r1
  int v5; // r3
  int v6; // r7
  int v7; // r6
  glitch::scene::ISceneNode *SceneNodeFromScopeID; // r0
  bool v9; // zf
  glitch::scene::ISceneNode *v10; // r2
  int v11; // r8
  int v12; // [sp+4h] [bp-4h] BYREF

  v2 = *((_DWORD **)this + 4);
  if ( (*v2 & 0x10000) != 0 )
  {
    v3 = 0;
    v4 = *(_DWORD *)(*((_DWORD *)this + 3) + 116);
    v12 = 0;
    std::vector<glitch::core::CMatrix4<float> const*,glitch::core::SAllocator<glitch::core::CMatrix4<float> const*,(glitch::memory::E_MEMORY_HINT)0>>::resize(
      (int)(v2 + 4),
      v4,
      (char *)&v12);
    v5 = *((_DWORD *)this + 3);
    v6 = *(_DWORD *)(v5 + 116);
    if ( v6 > 0 )
    {
      while ( 1 )
      {
        v7 = 4 * v3;
        SceneNodeFromScopeID = glitch::scene::ISceneNode::getSceneNodeFromScopeID(
                                 *((glitch::scene::ISceneNode **)this + 5),
                                 *(const char **)(*(_DWORD *)(v5 + 120) + 4 * v3));
        v10 = SceneNodeFromScopeID;
        v9 = SceneNodeFromScopeID == nullptr;
        if ( !SceneNodeFromScopeID )
          SceneNodeFromScopeID = nullptr;
        v11 = *(_DWORD *)(*((_DWORD *)this + 4) + 16);
        if ( !v9 )
          SceneNodeFromScopeID = (glitch::scene::ISceneNode *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)v10 + 56))(SceneNodeFromScopeID);
        ++v3;
        *(_DWORD *)(v11 + v7) = SceneNodeFromScopeID;
        if ( v3 == v6 )
          break;
        v5 = *((_DWORD *)this + 3);
      }
    }
    **((_DWORD **)this + 4) &= ~0x10000u;
  }
}


// ===== 66e038 std::vector<glitch::core::dual_quaternion,glitch::core::SAllocator<glitch::core::dual_quaternion,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::core::dual_quaternion*,uint,glitch::core::dual_quaternion const&) =====
void __fastcall std::vector<glitch::core::dual_quaternion,glitch::core::SAllocator<glitch::core::dual_quaternion,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        unsigned int *a1,
        unsigned int *a2,
        unsigned int a3,
        unsigned int *a4)
{
  unsigned int *v7; // r0
  unsigned int v8; // r8
  unsigned int v9; // r9
  int v10; // r7
  unsigned int *v11; // r7
  int v12; // r6
  unsigned int v13; // r4
  unsigned int *v14; // r12
  unsigned int v15; // r1
  unsigned int v16; // r2
  unsigned int v17; // r3
  unsigned int *v18; // lr
  unsigned int *v19; // r12
  unsigned int v20; // r1
  unsigned int v21; // r2
  unsigned int v22; // r3
  int v23; // r8
  unsigned int *v24; // r4
  int v25; // r6
  unsigned int *v26; // r12
  unsigned int v27; // r1
  unsigned int v28; // r2
  unsigned int v29; // r3
  unsigned int v30; // r1
  unsigned int v31; // r2
  unsigned int v32; // r3
  _BYTE *v33; // r0
  int v34; // r8
  int v35; // r7
  int v36; // r6
  unsigned int *v37; // r12
  unsigned int v38; // r1
  unsigned int v39; // r2
  unsigned int v40; // r3
  unsigned int *v41; // lr
  unsigned int *v42; // r12
  unsigned int v43; // r1
  unsigned int v44; // r2
  unsigned int v45; // r3
  unsigned int v46; // r0
  unsigned int v47; // r1
  unsigned int v48; // r2
  unsigned int v49; // r3
  unsigned int *v50; // r11
  unsigned int v51; // r1
  unsigned int v52; // r2
  unsigned int v53; // r3
  size_t v55; // [sp+Ch] [bp-10h]

  if ( a3 )
  {
    if ( a3 <= (int)(a1[2] - a1[1]) >> 5 )
    {
      std::vector<glitch::core::dual_quaternion,glitch::core::SAllocator<glitch::core::dual_quaternion,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        a2,
        a3,
        a4);
    }
    else
    {
      v55 = 32
          * std::vector<glitch::core::dual_quaternion,glitch::core::SAllocator<glitch::core::dual_quaternion,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
              a1,
              a3);
      v7 = (unsigned int *)GlitchAlloc(v55, 0);
      v8 = *a1;
      v9 = (unsigned int)v7;
      v10 = (int)((int)a2 - *a1) >> 5;
      if ( v10 > 0 )
      {
        v12 = (int)((int)a2 - *a1) >> 5;
        v13 = 0;
        do
        {
          v14 = &v7[v13 / 4];
          v15 = *(_DWORD *)(v8 + v13 + 4);
          v16 = *(_DWORD *)(v8 + v13 + 8);
          v17 = *(_DWORD *)(v8 + v13 + 12);
          v18 = (unsigned int *)(v8 + v13 + 16);
          *v14 = *(_DWORD *)(v8 + v13);
          v14[1] = v15;
          v14[2] = v16;
          v14[3] = v17;
          v19 = &v7[v13 / 4 + 4];
          --v12;
          v20 = *(_DWORD *)(v8 + v13 + 20);
          v21 = *(_DWORD *)(v8 + v13 + 24);
          v22 = *(_DWORD *)(v8 + v13 + 28);
          v13 += 32;
          *v19 = *v18;
          v19[1] = v20;
          v19[2] = v21;
          v19[3] = v22;
        }
        while ( v12 );
        v11 = &v7[8 * v10];
      }
      else
      {
        v11 = v7;
      }
      if ( a3 == 1 )
      {
        v46 = *a4;
        v47 = a4[1];
        v48 = a4[2];
        v49 = a4[3];
        v50 = a4 + 4;
        *v11 = v46;
        v11[1] = v47;
        v11[2] = v48;
        v11[3] = v49;
        v24 = v11 + 8;
        v51 = v50[1];
        v52 = v50[2];
        v53 = v50[3];
        v11[4] = *v50;
        v11[5] = v51;
        v11[6] = v52;
        v11[7] = v53;
      }
      else
      {
        v23 = (int)(32 * a3) >> 5;
        v24 = &v11[8 * a3];
        if ( v23 > 0 )
        {
          v25 = 0;
          do
          {
            v26 = &v11[8 * v25];
            v27 = a4[1];
            v28 = a4[2];
            v29 = a4[3];
            *v26 = *a4;
            v26[1] = v27;
            v26[2] = v28;
            v26[3] = v29;
            v26 += 4;
            ++v25;
            v30 = a4[5];
            v31 = a4[6];
            v32 = a4[7];
            *v26 = a4[4];
            v26[1] = v30;
            v26[2] = v31;
            v26[3] = v32;
          }
          while ( v25 != v23 );
        }
      }
      v33 = (_BYTE *)a1[1];
      v34 = (v33 - (_BYTE *)a2) >> 5;
      if ( v34 > 0 )
      {
        v35 = (v33 - (_BYTE *)a2) >> 5;
        v36 = 0;
        do
        {
          v37 = &v24[v36];
          v38 = a2[v36 + 1];
          v39 = a2[v36 + 2];
          v40 = a2[v36 + 3];
          v41 = &a2[v36 + 4];
          *v37 = a2[v36];
          v37[1] = v38;
          v37[2] = v39;
          v37[3] = v40;
          v42 = &v24[v36 + 4];
          --v35;
          v43 = a2[v36 + 5];
          v44 = a2[v36 + 6];
          v45 = a2[v36 + 7];
          v36 += 8;
          *v42 = *v41;
          v42[1] = v43;
          v42[2] = v44;
          v42[3] = v45;
        }
        while ( v35 );
        v33 = (_BYTE *)a1[1];
        v24 += 8 * v34;
      }
      if ( (_BYTE *)*a1 != v33 )
        v33 += 32 * ~((unsigned int)&v33[-*a1 - 32] >> 5);
      GlitchFree(v33);
      a1[1] = (unsigned int)v24;
      *a1 = v9;
      a1[2] = v9 + v55;
    }
  }
}


// ===== 66e1c0 std::vector<glitch::core::dual_quaternion,glitch::core::SAllocator<glitch::core::dual_quaternion,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,glitch::core::dual_quaternion const&) =====
void __fastcall std::vector<glitch::core::dual_quaternion,glitch::core::SAllocator<glitch::core::dual_quaternion,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        int a1,
        unsigned int a2,
        unsigned int *a3)
{
  int v3; // r4
  unsigned int v5; // r2
  int v6; // r1

  v3 = *(_DWORD *)(a1 + 4);
  v5 = (v3 - *(_DWORD *)a1) >> 5;
  if ( a2 >= v5 )
  {
    std::vector<glitch::core::dual_quaternion,glitch::core::SAllocator<glitch::core::dual_quaternion,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      (unsigned int *)a1,
      *(unsigned int **)(a1 + 4),
      a2 - v5,
      a3);
  }
  else
  {
    v6 = *(_DWORD *)a1 + 32 * a2;
    if ( v6 != v3 )
      *(_DWORD *)(a1 + 4) = v6;
  }
}


// ===== 66e204 glitch::collada::detail::CColladaHardwareQuatSkinTechnique::prepareCache(void) =====
void __fastcall glitch::collada::detail::CColladaHardwareQuatSkinTechnique::prepareCache(
        glitch::collada::detail::CColladaHardwareQuatSkinTechnique *this)
{
  unsigned int v2; // r1
  int v3; // r0
  _DWORD *v4; // r3
  int v5; // r1
  _DWORD *v6; // r2
  int v7; // r9
  int v8; // r7
  int v9; // r0
  int v10; // r1
  int v11; // r10
  int v12; // r2
  float *v13; // r10
  float *v14; // r2
  int i; // r3
  int v16; // r3
  int v17; // r2
  int j; // r3
  float v19; // r1
  float v20[16]; // [sp+0h] [bp-A8h] BYREF
  char v21; // [sp+40h] [bp-68h]
  float v22[16]; // [sp+44h] [bp-64h] BYREF
  unsigned __int8 v23; // [sp+84h] [bp-24h]
  unsigned int v24[8]; // [sp+88h] [bp-20h] BYREF

  if ( (**((_DWORD **)this + 4) & 2) == 0 )
    return;
  glitch::collada::detail::CColladaHardwareQuatSkinTechnique::preparePtrCache(this);
  v2 = *(_DWORD *)(*((_DWORD *)this + 3) + 116);
  v3 = *((_DWORD *)this + 4) + 28;
  memset(&v24[1], 0, 28);
  v24[0] = 1065353216;
  std::vector<glitch::core::dual_quaternion,glitch::core::SAllocator<glitch::core::dual_quaternion,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    v3,
    v2,
    v24);
  v4 = *((_DWORD **)this + 4);
  v5 = v4[4];
  v6 = v4;
  v7 = (v4[5] - v5) >> 2;
  if ( !v7 )
    goto LABEL_15;
  v8 = 0;
  while ( 1 )
  {
    v9 = *((_DWORD *)this + 3);
    v10 = *(_DWORD *)(v5 + 4 * v8);
    v11 = v4[7];
    v12 = *(_DWORD *)(v9 + 4);
    v23 = 0;
    v13 = (float *)(v11 + 32 * v8);
    v14 = (float *)(v12 + (v8 << 6));
    if ( *(_BYTE *)(v10 + 64) )
    {
      for ( i = 0; i != 16; ++i )
      {
        v23 = 0;
        v22[i] = v14[i];
      }
      v16 = 0;
    }
    else
    {
      glitch::core::rowMatrixProduct34<glitch::core::CMatrix4<float>,glitch::core::CMatrix4<float>,float [16]>(
        (int)v22,
        (float *)v10,
        v14);
      v16 = v23;
      v9 = *((_DWORD *)this + 3);
    }
    v21 = 0;
    if ( v16 )
      break;
    glitch::core::rowMatrixProduct34<glitch::core::CMatrix4<float>,glitch::core::CMatrix4<float>,float [16]>(
      (int)v20,
      v22,
      (float *)(v9 + 16));
    ++v8;
    glitch::core::dual_quaternion::operator=(v13, v20);
    if ( v8 == v7 )
      goto LABEL_14;
LABEL_12:
    v4 = *((_DWORD **)this + 4);
    v5 = v4[4];
  }
  v17 = v9;
  for ( j = 0; j != 16; ++j )
  {
    v21 = 0;
    v19 = *(float *)(v17 + 16);
    v17 += 4;
    v20[j] = v19;
  }
  ++v8;
  glitch::core::dual_quaternion::operator=(v13, v20);
  if ( v8 != v7 )
    goto LABEL_12;
LABEL_14:
  v6 = *((_DWORD **)this + 4);
LABEL_15:
  *v6 &= ~2u;
}


// ===== 66e384 glitch::collada::detail::CColladaHardwareQuatSkinTechnique::computeBoundingBox(void) =====
glitch::collada::detail::CColladaHardwareQuatSkinTechnique *__fastcall glitch::collada::detail::CColladaHardwareQuatSkinTechnique::computeBoundingBox(
        glitch::collada::detail::CColladaHardwareQuatSkinTechnique *this,
        glitch::collada::detail::CColladaHardwareQuatSkinTechnique *a2)
{
  int v4; // r2
  float v5; // r1
  int v6; // r0
  int v7; // r9
  int v8; // r3
  int v9; // r9
  int v10; // r6
  float *v12; // r3
  float v13; // r8
  float v14; // r5
  float v15; // r7
  _BOOL4 v16; // r0
  float v17; // r1
  _BOOL4 v18; // r0
  float v19; // r1
  _BOOL4 v20; // r0
  float v21; // r1
  _BOOL4 v22; // r0
  float v23; // r1
  int v24; // r5
  int v25; // r7
  int v26; // r3
  int v27; // r0
  float v28; // r12
  float *v29; // r3
  float v30; // r11
  float v31; // r8
  float v32; // r6
  float v33; // r1
  _BOOL4 v34; // r0
  float v35; // r1
  _BOOL4 v36; // r0
  float v37; // r1
  _BOOL4 v38; // r0
  float v39; // r1
  _BOOL4 v40; // r0
  float v41; // r1
  float v42; // r11
  float v43; // r8
  float v44; // r6
  float v45; // r1
  _BOOL4 v46; // r0
  float v47; // r1
  _BOOL4 v48; // r0
  float v49; // r1
  _BOOL4 v50; // r0
  float v51; // r1
  float v52; // [sp+8h] [bp-1Ch] BYREF
  float v53; // [sp+Ch] [bp-18h]
  float v54; // [sp+10h] [bp-14h]
  float v55; // [sp+14h] [bp-10h]
  float v56; // [sp+18h] [bp-Ch]
  float v57; // [sp+1Ch] [bp-8h]

  glitch::collada::detail::CColladaHardwareQuatSkinTechnique::preparePtrCache(a2);
  v4 = *((_DWORD *)a2 + 4);
  v5 = -3.4028e38;
  v6 = *(_DWORD *)(v4 + 16);
  v7 = *(_DWORD *)(v4 + 20);
  *((_DWORD *)this + 2) = 2139095039;
  *((_DWORD *)this + 3) = -8388609;
  *((_DWORD *)this + 4) = -8388609;
  *((_DWORD *)this + 5) = -8388609;
  *(_DWORD *)this = 2139095039;
  *((_DWORD *)this + 1) = 2139095039;
  v8 = *((_DWORD *)a2 + 3);
  v9 = (unsigned __int8)((unsigned int)(v7 - v6) >> 2);
  v10 = *(_DWORD *)(v8 + 140);
  if ( v10 )
  {
    if ( v9 )
    {
      v24 = 0;
      v25 = 0;
      while ( 1 )
      {
        v26 = *(_DWORD *)(v8 + 144);
        v27 = *((_DWORD *)a2 + 4);
        v28 = *(float *)(v26 + v24);
        v29 = (float *)(v26 + v24);
        v52 = v28;
        v24 += 24;
        v53 = v29[1];
        v54 = v29[2];
        v55 = v29[3];
        v56 = v29[4];
        v57 = v29[5];
        glitch::core::CMatrix4<float>::transformBox(*(_DWORD *)(*(_DWORD *)(v27 + 16) + 4 * v25), &v52);
        v30 = v55;
        v31 = v56;
        v32 = v57;
        v33 = *((float *)this + 4);
        if ( v55 > *((float *)this + 3) )
          *((float *)this + 3) = v55;
        v34 = v31 > v33;
        v35 = *((float *)this + 5);
        if ( v34 )
          *((float *)this + 4) = v31;
        v36 = v32 > v35;
        v37 = *(float *)this;
        if ( v36 )
          *((float *)this + 5) = v32;
        v38 = v30 < v37;
        v39 = *((float *)this + 1);
        if ( v38 )
          *(float *)this = v30;
        v40 = v31 < v39;
        v41 = *((float *)this + 2);
        if ( v40 )
          *((float *)this + 1) = v31;
        if ( v32 < v41 )
          *((float *)this + 2) = v32;
        v42 = v52;
        v43 = v53;
        v44 = v54;
        v45 = *((float *)this + 4);
        if ( v52 > *((float *)this + 3) )
          *((float *)this + 3) = v52;
        v46 = v43 > v45;
        v47 = *((float *)this + 5);
        if ( v46 )
          *((float *)this + 4) = v43;
        v48 = v44 > v47;
        v49 = *(float *)this;
        if ( v48 )
          *((float *)this + 5) = v44;
        v50 = v42 < v49;
        v51 = *((float *)this + 1);
        if ( v50 )
          *(float *)this = v42;
        if ( v43 < v51 )
          *((float *)this + 1) = v43;
        ++v25;
        if ( v44 < *((float *)this + 2) )
          *((float *)this + 2) = v44;
        if ( v25 >= v9 )
          break;
        v8 = *((_DWORD *)a2 + 3);
      }
    }
  }
  else if ( v9 )
  {
    while ( 1 )
    {
      v12 = *(float **)(*(_DWORD *)(*((_DWORD *)a2 + 4) + 16) + 4 * v10++);
      v13 = v12[12];
      v14 = v12[14];
      v15 = v12[13];
      v16 = v13 > v5;
      v17 = *((float *)this + 4);
      if ( v16 )
        *((float *)this + 3) = v13;
      v18 = v15 > v17;
      v19 = *((float *)this + 5);
      if ( v18 )
        *((float *)this + 4) = v15;
      v20 = v14 > v19;
      v21 = *(float *)this;
      if ( v20 )
        *((float *)this + 5) = v14;
      v22 = v13 < v21;
      v23 = *((float *)this + 1);
      if ( v22 )
        *(float *)this = v13;
      if ( v15 < v23 )
        *((float *)this + 1) = v15;
      if ( v14 < *((float *)this + 2) )
        *((float *)this + 2) = v14;
      if ( v10 >= v9 )
        break;
      v5 = *((float *)this + 3);
    }
  }
  **((_DWORD **)a2 + 4) &= ~8u;
  return this;
}


// ===== 66e634 glitch::collada::detail::CColladaHardwareQuatSkinTechnique::init(glitch::collada::SSkinBuffer &,glitch::scene::CMeshBuffer *,glitch::video::IVideoDriver *,bool) =====
int __fastcall glitch::collada::detail::CColladaHardwareQuatSkinTechnique::init(int a1)
{
  int v2; // r4
  int v3; // r3

  glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(a1);
  v2 = *(_DWORD *)(*(_DWORD *)(a1 + 12) + 148);
  if ( *(_BYTE *)(v2 + 17) )
  {
    if ( (*(_BYTE *)(v2 + 18) & 8) != 0 )
      (*(void (__fastcall **)(int))(*(_DWORD *)v2 + 16))(v2);
    v3 = *(_DWORD *)(v2 + 8);
    *(_BYTE *)(v2 + 17) = 0;
    if ( v3 )
      *(_BYTE *)(v2 + 18) |= 2u;
  }
  return 0;
}


// ===== 66e6b8 glitch::collada::detail::CColladaHardwareTextureSkinTechnique::CColladaHardwareTextureSkinTechnique(glitch::collada::SSkin &,glitch::collada::SSkinCache &,bool) =====
int __fastcall glitch::collada::detail::CColladaHardwareTextureSkinTechnique::CColladaHardwareTextureSkinTechnique(
        int result,
        int a2,
        int a3,
        char a4)
{
  *(_DWORD *)(result + 12) = a2;
  *(_DWORD *)result = off_9855A0;
  *(_DWORD *)(result + 16) = a3;
  *(_DWORD *)(result + 8) = 0;
  *(_DWORD *)(result + 20) = 0;
  *(_DWORD *)(result + 36) = 0;
  *(_BYTE *)(result + 32) = 0;
  *(_DWORD *)(result + 44) = result + 32;
  *(_BYTE *)(result + 4) = a4;
  *(_DWORD *)(result + 48) = 0;
  *(_DWORD *)(result + 40) = result + 32;
  return result;
}


// ===== 66e714 glitch::collada::detail::CColladaHardwareTextureSkinTechnique::CColladaHardwareTextureSkinTechnique(glitch::collada::SSkin &,glitch::collada::SSkinCache &,bool) =====
int __fastcall glitch::collada::detail::CColladaHardwareTextureSkinTechnique::CColladaHardwareTextureSkinTechnique(
        int result,
        int a2,
        int a3,
        char a4)
{
  *(_DWORD *)(result + 12) = a2;
  *(_DWORD *)result = off_9855A0;
  *(_DWORD *)(result + 16) = a3;
  *(_DWORD *)(result + 8) = 0;
  *(_DWORD *)(result + 20) = 0;
  *(_DWORD *)(result + 36) = 0;
  *(_BYTE *)(result + 32) = 0;
  *(_DWORD *)(result + 44) = result + 32;
  *(_BYTE *)(result + 4) = a4;
  *(_DWORD *)(result + 48) = 0;
  *(_DWORD *)(result + 40) = result + 32;
  return result;
}


// ===== 66e770 glitch::collada::detail::CColladaHardwareTextureSkinTechnique::needOutputBuffer(void) =====
int __fastcall glitch::collada::detail::CColladaHardwareTextureSkinTechnique::needOutputBuffer(
        glitch::collada::detail::CColladaHardwareTextureSkinTechnique *this)
{
  return 0;
}


// ===== 66e778 glitch::collada::detail::CColladaHardwareTextureSkinTechnique::attach(glitch::scene::ISceneNode *) =====
int __fastcall glitch::collada::detail::CColladaHardwareTextureSkinTechnique::attach(
        int this,
        glitch::scene::ISceneNode *a2)
{
  *(_DWORD *)(this + 20) = a2;
  return this;
}


// ===== 66e780 glitch::collada::detail::CColladaHardwareTextureSkinTechnique::onPrepareBufferForRendering(glitch::collada::E_PREPARE_BUFFER_STEP,glitch::video::IVideoDriver *,glitch::collada::SSkinBuffer &,glitch::scene::CMeshBuffer *) =====
int __fastcall glitch::collada::detail::CColladaHardwareTextureSkinTechnique::onPrepareBufferForRendering(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5)
{
  if ( a2 == 1 )
    (*(void (__fastcall **)(int, int, int))(*(_DWORD *)a1 + 24))(a1, a4, a5);
  return 16;
}


// ===== 66e7b0 `global constructor keyed to'.._source_glitch_collada_detail_CColladaHardwareTextureSkinTechnique.cpp =====
void `global constructor keyed to'.._source_glitch_collada_detail_CColladaHardwareTextureSkinTechnique.cpp()
{
  dword_9F7100 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F70FC = 1056964608;
}


// ===== 66e7d0 glitch::collada::detail::CColladaHardwareTextureSkinTechnique::checkAvailabilityStatic(glitch::video::STechnique const&) =====
bool __fastcall glitch::collada::detail::CColladaHardwareTextureSkinTechnique::checkAvailabilityStatic(int a1)
{
  int v1; // r4
  int v3; // r3
  int v4; // r2
  int v5; // r0
  int v6; // r1

  v1 = *(unsigned __int8 *)(a1 + 4);
  if ( *(_BYTE *)(a1 + 4) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    v4 = 0;
    v5 = 52 * (unsigned __int8)(v1 - 1) + 52;
    v1 = 0;
    do
    {
      v6 = *(_DWORD *)(v3 + v4 + 32);
      v4 += 52;
      v1 |= *(_DWORD *)(v6 + 56);
    }
    while ( v4 != v5 );
  }
  else
  {
    v3 = *(_DWORD *)(a1 + 8);
  }
  return glitch::video::IShader::getParameterID(*(_DWORD *)(v3 + 32), 12, 0, 0) != 0xFFFF
      && glitch::video::IShader::getParameterID(*(_DWORD *)(*(_DWORD *)(a1 + 8) + 32), 13, 0, 0) != 0xFFFF
      && (v1 & 0x30000000) == 805306368;
}


// ===== 66e87c std::allocator<std::priv::_Rb_tree_node<std::pair<uint const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 28;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 66e89c glitch::collada::detail::CColladaHardwareTextureSkinTechnique::checkAvailability(glitch::video::STechnique const&) =====
bool __fastcall glitch::collada::detail::CColladaHardwareTextureSkinTechnique::checkAvailability(int a1, int a2)
{
  _BOOL4 v3; // r5
  int v4; // r4
  int v5; // r3

  v3 = glitch::collada::detail::CColladaHardwareTextureSkinTechnique::checkAvailabilityStatic(a2);
  if ( v3 )
  {
    v4 = *(_DWORD *)(*(_DWORD *)(a1 + 12) + 148);
    if ( v4 )
    {
      if ( *(_BYTE *)(v4 + 17) )
      {
        if ( (*(_BYTE *)(v4 + 18) & 8) != 0 )
          (*(void (__fastcall **)(int))(*(_DWORD *)v4 + 16))(v4);
        v5 = *(_DWORD *)(v4 + 8);
        *(_BYTE *)(v4 + 17) = 0;
        if ( v5 )
          *(_BYTE *)(v4 + 18) |= 2u;
      }
    }
  }
  return v3;
}


// ===== 66e914 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<uint const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<uint const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>,std::allocator<std::pair<uint const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<uint const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) [clone] =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>,std::allocator<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        int a4,
        int a5)
{
  _DWORD *v7; // r0
  _DWORD *v8; // r6
  char v9; // r3
  _DWORD *v10; // r2
  char v11; // r3
  _DWORD *v13; // r0
  char v14; // r3

  if ( a2 == a3 )
  {
    v8 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>>::allocate();
    v8[4] = *(_DWORD *)a4;
    v8[5] = *(_DWORD *)(a4 + 4);
    *((_WORD *)v8 + 12) = *(_WORD *)(a4 + 8);
    v11 = *(_BYTE *)(a4 + 10);
    v8[3] = 0;
    v8[2] = 0;
    *((_BYTE *)v8 + 26) = v11;
    a2[2] = v8;
    a2[1] = v8;
    a2[3] = v8;
    v10 = a3;
  }
  else if ( a5 || *(_DWORD *)a4 < a3[4] )
  {
    v7 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>>::allocate();
    v8 = v7;
    v7[4] = *(_DWORD *)a4;
    v7[5] = *(_DWORD *)(a4 + 4);
    *((_WORD *)v7 + 12) = *(_WORD *)(a4 + 8);
    v9 = *(_BYTE *)(a4 + 10);
    v7[3] = 0;
    v7[2] = 0;
    *((_BYTE *)v7 + 26) = v9;
    v10 = a3;
    a3[2] = v7;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v7;
  }
  else
  {
    v13 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>>::allocate();
    v8 = v13;
    v13[4] = *(_DWORD *)a4;
    v13[5] = *(_DWORD *)(a4 + 4);
    *((_WORD *)v13 + 12) = *(_WORD *)(a4 + 8);
    v14 = *(_BYTE *)(a4 + 10);
    v13[3] = 0;
    v13[2] = 0;
    *((_BYTE *)v13 + 26) = v14;
    v10 = a3;
    a3[3] = v13;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v13;
  }
  v8[1] = v10;
  std::priv::_Rb_global<bool>::_Rebalance((int)v8, a2 + 1);
  ++a2[4];
  *a1 = v8;
  return a1;
}


// ===== 66ea94 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<uint const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<uint const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>,std::allocator<std::pair<uint const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>>::insert_unique(std::pair<uint const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData> const&) =====
int __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>,std::allocator<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>>::insert_unique(
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
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>,std::allocator<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>>::_M_insert(
      &v17,
      a2,
      v3,
      (int)a3,
      (int)v3);
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>,std::allocator<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>>::_M_insert(
        &v16,
        a2,
        v3,
        (int)a3,
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


// ===== 66ec14 glitch::collada::detail::CColladaHardwareTextureSkinTechnique::skin(glitch::collada::SSkinBuffer &,glitch::scene::CMeshBuffer *) =====
int __fastcall glitch::collada::detail::CColladaHardwareTextureSkinTechnique::skin(int a1, int a2)
{
  _DWORD *v3; // r6
  unsigned int HashCode; // r0
  _DWORD *v6; // r2
  _DWORD *v7; // r1
  unsigned int v8; // r3
  bool v9; // cc
  _DWORD *v10; // r3
  unsigned int v11; // r7
  unsigned int v12; // r6
  int result; // r0
  int v14; // r2
  int v15; // r3
  int v16; // r3
  int v17; // r3
  _DWORD *v18; // r0
  int v19; // r12
  __int16 ParameterID; // r7
  __int16 v21; // r8
  __int16 v22; // r10
  int v23; // [sp+4h] [bp-28h] BYREF
  int v24; // [sp+8h] [bp-24h]
  int v25; // [sp+Ch] [bp-20h]
  int v26; // [sp+10h] [bp-1Ch]
  int v27; // [sp+14h] [bp-18h] BYREF
  __int16 v28; // [sp+18h] [bp-14h]
  __int16 v29; // [sp+1Ah] [bp-12h]
  __int16 v30; // [sp+1Ch] [bp-10h]
  char v31; // [sp+1Eh] [bp-Eh]
  _DWORD *v32; // [sp+20h] [bp-Ch] BYREF

  v3 = (_DWORD *)(a1 + 32);
  (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 16))(a1);
  HashCode = glitch::video::CMaterial::getHashCode(*(glitch::video::CMaterial **)(a2 + 4));
  v6 = *(_DWORD **)(a1 + 36);
  if ( !v6 )
  {
LABEL_27:
    v6 = v3;
LABEL_12:
    if ( v3 != v6 )
      goto LABEL_13;
    goto LABEL_28;
  }
  v7 = v3;
  while ( 1 )
  {
    v8 = v6[4];
    v9 = HashCode > v8;
    if ( HashCode <= v8 )
      v10 = (_DWORD *)v6[2];
    else
      v10 = (_DWORD *)v6[3];
    if ( v9 )
      v6 = v7;
    v7 = v6;
    if ( !v10 )
      break;
    v6 = v10;
  }
  if ( v3 != v6 )
  {
    if ( HashCode >= v6[4] )
      goto LABEL_12;
    goto LABEL_27;
  }
LABEL_28:
  ParameterID = glitch::video::CMaterialRenderer::getParameterID(*(_DWORD *)(*(_DWORD *)(a2 + 4) + 4), 12, 0);
  v21 = glitch::video::CMaterialRenderer::getParameterID(*(_DWORD *)(*(_DWORD *)(a2 + 4) + 4), 13, 0);
  v22 = glitch::video::CMaterialRenderer::getParameterID(*(_DWORD *)(*(_DWORD *)(a2 + 4) + 4), 15, 0);
  v27 = glitch::video::CMaterial::getHashCode(*(glitch::video::CMaterial **)(a2 + 4));
  v31 = -1;
  v30 = v22;
  v29 = v21;
  v28 = ParameterID;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>,std::allocator<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>>::insert_unique(
    (int)&v32,
    v3,
    (unsigned int *)&v27);
  v6 = v32;
LABEL_13:
  v11 = *((unsigned __int16 *)v6 + 11);
  v12 = *((unsigned __int16 *)v6 + 12);
  glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
    *(_DWORD **)(a2 + 4),
    *((unsigned __int16 *)v6 + 10),
    0,
    (int *)(*(_DWORD *)(a1 + 16) + 40));
  result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<float>(
             *(_DWORD **)(a2 + 4),
             v11,
             0,
             (float *)(a1 + 28));
  if ( v12 != 0xFFFF )
  {
    v14 = *(_DWORD *)(a1 + 12);
    v15 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    if ( *(_BYTE *)(v14 + 152) )
      v15 = 1065353216;
    v23 = v15;
    if ( *(unsigned __int8 *)(v14 + 152) > 1u )
      v16 = 1065353216;
    else
      v16 = 0;
    v24 = v16;
    if ( *(unsigned __int8 *)(v14 + 152) > 2u )
      v17 = 1065353216;
    else
      v17 = 0;
    v25 = v17;
    v18 = *(_DWORD **)(a2 + 4);
    if ( *(unsigned __int8 *)(v14 + 152) > 3u )
      v19 = 1065353216;
    else
      v19 = 0;
    v26 = v19;
    return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector4d<float>>(
             v18,
             v12,
             0,
             (float *)&v23);
  }
  return result;
}


// ===== 66edd8 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<uint const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<uint const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>,std::allocator<std::pair<uint const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>,std::allocator<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>>::_M_erase(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>,std::allocator<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x1Cu);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 66ee10 glitch::collada::detail::CColladaHardwareTextureSkinTechnique::~CColladaHardwareTextureSkinTechnique() =====
void __fastcall glitch::collada::detail::CColladaHardwareTextureSkinTechnique::~CColladaHardwareTextureSkinTechnique(
        glitch::collada::detail::CColladaHardwareTextureSkinTechnique *this)
{
  int v1; // r1
  char *v3; // r5

  v1 = *((_DWORD *)this + 12);
  *(_DWORD *)this = off_9855A0;
  if ( v1 )
  {
    v3 = (char *)this + 32;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>,std::allocator<std::pair<unsigned int const,glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>>>::_M_erase(
      (int)this + 32,
      *((_DWORD **)this + 9));
    *((_DWORD *)this + 11) = v3;
    *((_DWORD *)this + 12) = 0;
    *((_DWORD *)this + 10) = v3;
    *((_DWORD *)this + 9) = 0;
  }
  glitch::collada::detail::IColladaSkinTechnique::~IColladaSkinTechnique(this);
}


// ===== 66ee78 glitch::collada::detail::CColladaHardwareTextureSkinTechnique::~CColladaHardwareTextureSkinTechnique() =====
void __fastcall glitch::collada::detail::CColladaHardwareTextureSkinTechnique::~CColladaHardwareTextureSkinTechnique(
        glitch::collada::detail::CColladaHardwareTextureSkinTechnique *this)
{
  glitch::collada::detail::CColladaHardwareTextureSkinTechnique::~CColladaHardwareTextureSkinTechnique(this);
  LC_API_FREE_0(this);
}


// ===== 66ee94 glitch::collada::detail::CColladaHardwareTextureSkinTechnique::preparePtrCache(void) =====
void __fastcall glitch::collada::detail::CColladaHardwareTextureSkinTechnique::preparePtrCache(
        glitch::collada::detail::CColladaHardwareTextureSkinTechnique *this)
{
  _DWORD *v2; // r0
  int v3; // r5
  unsigned int v4; // r1
  int v5; // r3
  int v6; // r7
  int v7; // r6
  glitch::scene::ISceneNode *SceneNodeFromScopeID; // r0
  bool v9; // zf
  glitch::scene::ISceneNode *v10; // r2
  int v11; // r8
  int v12; // [sp+4h] [bp-4h] BYREF

  v2 = *((_DWORD **)this + 4);
  if ( (*v2 & 0x10000) != 0 )
  {
    v3 = 0;
    v4 = *(_DWORD *)(*((_DWORD *)this + 3) + 116);
    v12 = 0;
    std::vector<glitch::core::CMatrix4<float> const*,glitch::core::SAllocator<glitch::core::CMatrix4<float> const*,(glitch::memory::E_MEMORY_HINT)0>>::resize(
      (int)(v2 + 4),
      v4,
      (char *)&v12);
    v5 = *((_DWORD *)this + 3);
    v6 = *(_DWORD *)(v5 + 116);
    if ( v6 > 0 )
    {
      while ( 1 )
      {
        v7 = 4 * v3;
        SceneNodeFromScopeID = glitch::scene::ISceneNode::getSceneNodeFromScopeID(
                                 *((glitch::scene::ISceneNode **)this + 5),
                                 *(const char **)(*(_DWORD *)(v5 + 120) + 4 * v3));
        v10 = SceneNodeFromScopeID;
        v9 = SceneNodeFromScopeID == nullptr;
        if ( !SceneNodeFromScopeID )
          SceneNodeFromScopeID = nullptr;
        v11 = *(_DWORD *)(*((_DWORD *)this + 4) + 16);
        if ( !v9 )
          SceneNodeFromScopeID = (glitch::scene::ISceneNode *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)v10 + 56))(SceneNodeFromScopeID);
        ++v3;
        *(_DWORD *)(v11 + v7) = SceneNodeFromScopeID;
        if ( v3 == v6 )
          break;
        v5 = *((_DWORD *)this + 3);
      }
    }
    **((_DWORD **)this + 4) &= ~0x10000u;
  }
}


// ===== 66ef44 glitch::collada::detail::CColladaHardwareTextureSkinTechnique::computeBoundingBox(void) =====
glitch::collada::detail::CColladaHardwareTextureSkinTechnique *__fastcall glitch::collada::detail::CColladaHardwareTextureSkinTechnique::computeBoundingBox(
        glitch::collada::detail::CColladaHardwareTextureSkinTechnique *this,
        glitch::collada::detail::CColladaHardwareTextureSkinTechnique *a2)
{
  int v4; // r2
  float v5; // r1
  int v6; // r0
  int v7; // r9
  int v8; // r3
  int v9; // r9
  int v10; // r6
  float *v12; // r3
  float v13; // r8
  float v14; // r5
  float v15; // r7
  _BOOL4 v16; // r0
  float v17; // r1
  _BOOL4 v18; // r0
  float v19; // r1
  _BOOL4 v20; // r0
  float v21; // r1
  _BOOL4 v22; // r0
  float v23; // r1
  int v24; // r5
  int v25; // r7
  int v26; // r3
  int v27; // r0
  float v28; // r12
  float *v29; // r3
  float v30; // r11
  float v31; // r8
  float v32; // r6
  float v33; // r1
  _BOOL4 v34; // r0
  float v35; // r1
  _BOOL4 v36; // r0
  float v37; // r1
  _BOOL4 v38; // r0
  float v39; // r1
  _BOOL4 v40; // r0
  float v41; // r1
  float v42; // r11
  float v43; // r8
  float v44; // r6
  float v45; // r1
  _BOOL4 v46; // r0
  float v47; // r1
  _BOOL4 v48; // r0
  float v49; // r1
  _BOOL4 v50; // r0
  float v51; // r1
  float v52; // [sp+8h] [bp-1Ch] BYREF
  float v53; // [sp+Ch] [bp-18h]
  float v54; // [sp+10h] [bp-14h]
  float v55; // [sp+14h] [bp-10h]
  float v56; // [sp+18h] [bp-Ch]
  float v57; // [sp+1Ch] [bp-8h]

  glitch::collada::detail::CColladaHardwareTextureSkinTechnique::preparePtrCache(a2);
  v4 = *((_DWORD *)a2 + 4);
  v5 = -3.4028e38;
  v6 = *(_DWORD *)(v4 + 16);
  v7 = *(_DWORD *)(v4 + 20);
  *((_DWORD *)this + 2) = 2139095039;
  *((_DWORD *)this + 3) = -8388609;
  *((_DWORD *)this + 4) = -8388609;
  *((_DWORD *)this + 5) = -8388609;
  *(_DWORD *)this = 2139095039;
  *((_DWORD *)this + 1) = 2139095039;
  v8 = *((_DWORD *)a2 + 3);
  v9 = (unsigned __int8)((unsigned int)(v7 - v6) >> 2);
  v10 = *(_DWORD *)(v8 + 140);
  if ( v10 )
  {
    if ( v9 )
    {
      v24 = 0;
      v25 = 0;
      while ( 1 )
      {
        v26 = *(_DWORD *)(v8 + 144);
        v27 = *((_DWORD *)a2 + 4);
        v28 = *(float *)(v26 + v24);
        v29 = (float *)(v26 + v24);
        v52 = v28;
        v24 += 24;
        v53 = v29[1];
        v54 = v29[2];
        v55 = v29[3];
        v56 = v29[4];
        v57 = v29[5];
        glitch::core::CMatrix4<float>::transformBox(*(_DWORD *)(*(_DWORD *)(v27 + 16) + 4 * v25), &v52);
        v30 = v55;
        v31 = v56;
        v32 = v57;
        v33 = *((float *)this + 4);
        if ( v55 > *((float *)this + 3) )
          *((float *)this + 3) = v55;
        v34 = v31 > v33;
        v35 = *((float *)this + 5);
        if ( v34 )
          *((float *)this + 4) = v31;
        v36 = v32 > v35;
        v37 = *(float *)this;
        if ( v36 )
          *((float *)this + 5) = v32;
        v38 = v30 < v37;
        v39 = *((float *)this + 1);
        if ( v38 )
          *(float *)this = v30;
        v40 = v31 < v39;
        v41 = *((float *)this + 2);
        if ( v40 )
          *((float *)this + 1) = v31;
        if ( v32 < v41 )
          *((float *)this + 2) = v32;
        v42 = v52;
        v43 = v53;
        v44 = v54;
        v45 = *((float *)this + 4);
        if ( v52 > *((float *)this + 3) )
          *((float *)this + 3) = v52;
        v46 = v43 > v45;
        v47 = *((float *)this + 5);
        if ( v46 )
          *((float *)this + 4) = v43;
        v48 = v44 > v47;
        v49 = *(float *)this;
        if ( v48 )
          *((float *)this + 5) = v44;
        v50 = v42 < v49;
        v51 = *((float *)this + 1);
        if ( v50 )
          *(float *)this = v42;
        if ( v43 < v51 )
          *((float *)this + 1) = v43;
        ++v25;
        if ( v44 < *((float *)this + 2) )
          *((float *)this + 2) = v44;
        if ( v25 >= v9 )
          break;
        v8 = *((_DWORD *)a2 + 3);
      }
    }
  }
  else if ( v9 )
  {
    while ( 1 )
    {
      v12 = *(float **)(*(_DWORD *)(*((_DWORD *)a2 + 4) + 16) + 4 * v10++);
      v13 = v12[12];
      v14 = v12[14];
      v15 = v12[13];
      v16 = v13 > v5;
      v17 = *((float *)this + 4);
      if ( v16 )
        *((float *)this + 3) = v13;
      v18 = v15 > v17;
      v19 = *((float *)this + 5);
      if ( v18 )
        *((float *)this + 4) = v15;
      v20 = v14 > v19;
      v21 = *(float *)this;
      if ( v20 )
        *((float *)this + 5) = v14;
      v22 = v13 < v21;
      v23 = *((float *)this + 1);
      if ( v22 )
        *(float *)this = v13;
      if ( v15 < v23 )
        *((float *)this + 1) = v15;
      if ( v14 < *((float *)this + 2) )
        *((float *)this + 2) = v14;
      if ( v10 >= v9 )
        break;
      v5 = *((float *)this + 3);
    }
  }
  **((_DWORD **)a2 + 4) &= ~8u;
  return this;
}


// ===== 66f1f4 glitch::collada::detail::CColladaHardwareTextureSkinTechnique::init(glitch::collada::SSkinBuffer &,glitch::scene::CMeshBuffer *,glitch::video::IVideoDriver *,bool) =====
int __fastcall glitch::collada::detail::CColladaHardwareTextureSkinTechnique::init(int a1, int a2, int a3, int a4)
{
  int v5; // r4
  int v6; // r3

  *(_DWORD *)(a1 + 24) = a4;
  glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(a1);
  v5 = *(_DWORD *)(*(_DWORD *)(a1 + 12) + 148);
  if ( *(_BYTE *)(v5 + 17) )
  {
    if ( (*(_BYTE *)(v5 + 18) & 8) != 0 )
      (*(void (__fastcall **)(int))(*(_DWORD *)v5 + 16))(v5);
    v6 = *(_DWORD *)(v5 + 8);
    *(_BYTE *)(v5 + 17) = 0;
    if ( v6 )
      *(_BYTE *)(v5 + 18) |= 2u;
  }
  return 0;
}


// ===== 66f280 glitch::collada::detail::CColladaHardwareTextureSkinTechnique::prepareCache(void) =====
glitch::collada::detail::CColladaHardwareTextureSkinTechnique *__fastcall glitch::collada::detail::CColladaHardwareTextureSkinTechnique::prepareCache(
        glitch::collada::detail::CColladaHardwareTextureSkinTechnique *this)
{
  glitch::collada::detail::CColladaHardwareTextureSkinTechnique *v1; // r6
  int v2; // r4
  glitch::IReferenceCounted *v3; // r1
  _DWORD *v4; // r3
  int v5; // r4
  int v6; // r2
  int i; // r12
  int v8; // r1
  int v9; // r5
  glitch::IReferenceCounted *v10; // r3
  glitch::IReferenceCounted *v11; // r0
  int v12; // r3
  int v13; // r2
  __int16 v14; // r1
  __int16 v15; // r1
  _DWORD *v16; // r7
  int v17; // r0
  int v18; // r5
  _DWORD *v19; // r3
  int v20; // r2
  int v21; // r1
  int v22; // r2
  int v23; // r3
  int v24; // r1
  int v25; // r2
  int v26; // r3
  int v27; // r1
  int v28; // r2
  int v29; // r3
  glitch::collada::detail::CColladaHardwareTextureSkinTechnique **v30; // r12
  glitch::collada::detail::CColladaHardwareTextureSkinTechnique *v31; // r1
  glitch::collada::detail::CColladaHardwareTextureSkinTechnique *v32; // r2
  int v33; // r3
  int v34; // [sp+Ch] [bp-130h]
  glitch::IReferenceCounted *v35; // [sp+10h] [bp-12Ch]
  int v36; // [sp+14h] [bp-128h]
  _BYTE v37[68]; // [sp+1Ch] [bp-120h] BYREF
  _BYTE v38[68]; // [sp+60h] [bp-DCh] BYREF
  _DWORD v39[5]; // [sp+A4h] [bp-98h] BYREF
  int v40; // [sp+B8h] [bp-84h]
  int v41; // [sp+BCh] [bp-80h]
  int v42; // [sp+C0h] [bp-7Ch]
  int v43; // [sp+C4h] [bp-78h]
  int v44; // [sp+C8h] [bp-74h]
  int v45; // [sp+CCh] [bp-70h]
  int v46; // [sp+D0h] [bp-6Ch]
  glitch::collada::detail::CColladaHardwareTextureSkinTechnique *v47; // [sp+D4h] [bp-68h]
  glitch::collada::detail::CColladaHardwareTextureSkinTechnique *v48; // [sp+D8h] [bp-64h]
  glitch::collada::detail::CColladaHardwareTextureSkinTechnique *v49; // [sp+DCh] [bp-60h]
  int v50; // [sp+E0h] [bp-5Ch]
  char v51; // [sp+E4h] [bp-58h]
  _DWORD v52[17]; // [sp+E8h] [bp-54h] BYREF
  int v53[2]; // [sp+12Ch] [bp-10h] BYREF
  glitch::IReferenceCounted *v54; // [sp+134h] [bp-8h] BYREF

  v1 = this;
  if ( (**((_DWORD **)this + 4) & 4) == 0 )
    return this;
  glitch::collada::detail::CColladaHardwareTextureSkinTechnique::preparePtrCache(this);
  v2 = *((_DWORD *)v1 + 4);
  v3 = *(glitch::IReferenceCounted **)(v2 + 40);
  v35 = v3;
  if ( !v3 )
  {
LABEL_6:
    v4 = *((_DWORD **)v1 + 6);
    v5 = (v4[34] >> 4) & 1;
    if ( v5 )
    {
      (*(void (__fastcall **)(_DWORD, int, _DWORD))(*v4 + 160))(*((_DWORD *)v1 + 6), 16, 0);
      v4 = *((_DWORD **)v1 + 6);
    }
    v6 = 4 * *(_DWORD *)(*((_DWORD *)v1 + 3) + 116);
    if ( (v4[39] & 0x20) != 0 )
    {
      i = 4 * *(_DWORD *)(*((_DWORD *)v1 + 3) + 116);
    }
    else if ( v6 > 1 )
    {
      for ( i = 1; i < v6; i *= 2 )
        ;
    }
    else
    {
      i = 1;
    }
    v8 = v4[56];
    v53[0] = i;
    v53[1] = 1;
    v9 = *((_DWORD *)v1 + 4);
    glitch::video::CTextureManager::addTexture(&v54, v8, v53, (glitch::IReferenceCounted *)"TextureSkin", 31, 0);
    v10 = v54;
    if ( v54 )
      ++*((_DWORD *)v54 + 1);
    v11 = *(glitch::IReferenceCounted **)(v9 + 40);
    *(_DWORD *)(v9 + 40) = v10;
    if ( v11 )
      glitch::IReferenceCounted::drop(v11);
    if ( v54 )
      glitch::IReferenceCounted::drop(v54);
    v12 = *(_DWORD *)(*((_DWORD *)v1 + 4) + 40);
    v13 = *(_DWORD *)(v12 + 56);
    if ( (v13 & 0x7000) != 0 )
    {
      v14 = *(_WORD *)(v12 + 64);
      *(_DWORD *)(v12 + 56) = v13 & 0xFFFF8FFF;
      *(_WORD *)(v12 + 64) = v14 | 4;
      v12 = *(_DWORD *)(*((_DWORD *)v1 + 4) + 40);
      v13 = *(_DWORD *)(v12 + 56);
    }
    if ( (v13 & 0x38000) != 0 )
    {
      v15 = *(_WORD *)(v12 + 64);
      *(_DWORD *)(v12 + 56) = v13 & 0xFFFC7FFF;
      *(_WORD *)(v12 + 64) = v15 | 8;
    }
    if ( v5 )
      (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)v1 + 6) + 160))(*((_DWORD *)v1 + 6), 16, 1);
    v2 = *((_DWORD *)v1 + 4);
    *((float *)v1 + 7) = 1.0 / (float)*(int *)(*(_DWORD *)(v2 + 40) + 32);
    v35 = *(glitch::IReferenceCounted **)(v2 + 40);
    if ( !v35 )
      goto LABEL_27;
    goto LABEL_28;
  }
  if ( *((_DWORD *)v3 + 8) < 4 * *(_DWORD *)(*((_DWORD *)v1 + 3) + 116) )
  {
    glitch::video::CTextureManager::removeTexture(
      *(glitch::video::CTextureManager **)(*((_DWORD *)v1 + 6) + 224),
      (glitch::IReferenceCounted **)(v2 + 40));
    goto LABEL_6;
  }
LABEL_28:
  ++*((_DWORD *)v35 + 1);
  v17 = *(_DWORD *)(v2 + 40);
  if ( v17 )
  {
    v36 = glitch::video::ITexture::map(v17, 4, 0, 0);
    v16 = (_DWORD *)v36;
    goto LABEL_30;
  }
LABEL_27:
  v16 = nullptr;
  v36 = 0;
LABEL_30:
  v18 = 0;
  LC_API_MEMSET_0(v52, 0, 0x40u);
  v52[0] = 1065353216;
  v52[5] = 1065353216;
  v52[10] = 1065353216;
  v52[15] = 1065353216;
  LOBYTE(v52[16]) = 1;
  this = (glitch::collada::detail::CColladaHardwareTextureSkinTechnique *)LC_API_MEMSET_0(v39, 0, 0x40u);
  v19 = *((_DWORD **)v1 + 4);
  v50 = 1065353216;
  v51 = 1;
  v39[0] = 1065353216;
  v40 = 1065353216;
  v45 = 1065353216;
  v20 = v19[4];
  v34 = (v19[5] - v20) >> 2;
  if ( v34 )
  {
    while ( 1 )
    {
      glitch::core::operator*<float,glitch::collada::SMatrix>(
        (int)v38,
        *(_DWORD *)(v20 + 4 * v18),
        (float *)(*(_DWORD *)(*((_DWORD *)v1 + 3) + 4) + (v18 << 6)));
      glitch::core::operator*<float,glitch::collada::SMatrix>((int)v37, (int)v38, (float *)(*((_DWORD *)v1 + 3) + 16));
      memcpy(v52, v37, 0x41u);
      glitch::core::CMatrix4<float>::getTransposed((int)v52, (int)v39);
      v21 = v39[1];
      v22 = v39[2];
      v23 = v39[3];
      v51 = 0;
      *v16 = v39[0];
      v16[1] = v21;
      v16[2] = v22;
      v16[3] = v23;
      v24 = v40;
      v25 = v41;
      v26 = v42;
      v16[4] = v39[4];
      v16[5] = v24;
      v16[6] = v25;
      v16[7] = v26;
      v27 = v44;
      v28 = v45;
      v29 = v46;
      v16[8] = v43;
      v16[9] = v27;
      v16[10] = v28;
      v16[11] = v29;
      v30 = (glitch::collada::detail::CColladaHardwareTextureSkinTechnique **)(v16 + 12);
      ++v18;
      v16 += 16;
      this = v47;
      v31 = v48;
      v32 = v49;
      v33 = v50;
      *v30 = v47;
      v30[1] = v31;
      v30[2] = v32;
      v30[3] = (glitch::collada::detail::CColladaHardwareTextureSkinTechnique *)v33;
      if ( v18 == v34 )
        break;
      v20 = *(_DWORD *)(*((_DWORD *)v1 + 4) + 16);
    }
    v19 = *((_DWORD **)v1 + 4);
  }
  *v19 &= ~4u;
  if ( v36 )
    this = (glitch::collada::detail::CColladaHardwareTextureSkinTechnique *)glitch::video::ITexture::unmap(v35);
  if ( v35 )
    return (glitch::collada::detail::CColladaHardwareTextureSkinTechnique *)glitch::IReferenceCounted::drop(v35);
  return this;
}


// ===== 66f5f8 glitch::collada::detail::CColladaSoftwareSkinTechnique::CColladaSoftwareSkinTechnique(glitch::collada::SSkin &,glitch::collada::SSkinCache &,bool) =====
int __fastcall glitch::collada::detail::CColladaSoftwareSkinTechnique::CColladaSoftwareSkinTechnique(
        int result,
        int a2,
        int a3,
        char a4)
{
  *(_DWORD *)(result + 12) = a2;
  *(_DWORD *)result = off_9855D0;
  *(_DWORD *)(result + 16) = a3;
  *(_DWORD *)(result + 8) = 0;
  *(_DWORD *)(result + 20) = 0;
  *(_BYTE *)(result + 24) = 0;
  *(_DWORD *)(result + 32) = 0;
  *(_BYTE *)(result + 28) = 0;
  *(_DWORD *)(result + 40) = result + 28;
  *(_BYTE *)(result + 4) = a4;
  *(_DWORD *)(result + 44) = 0;
  *(_DWORD *)(result + 36) = result + 28;
  return result;
}


// ===== 66f658 glitch::collada::detail::CColladaSoftwareSkinTechnique::CColladaSoftwareSkinTechnique(glitch::collada::SSkin &,glitch::collada::SSkinCache &,bool) =====
int __fastcall glitch::collada::detail::CColladaSoftwareSkinTechnique::CColladaSoftwareSkinTechnique(
        int result,
        int a2,
        int a3,
        char a4)
{
  *(_DWORD *)(result + 12) = a2;
  *(_DWORD *)result = off_9855D0;
  *(_DWORD *)(result + 16) = a3;
  *(_DWORD *)(result + 8) = 0;
  *(_DWORD *)(result + 20) = 0;
  *(_BYTE *)(result + 24) = 0;
  *(_DWORD *)(result + 32) = 0;
  *(_BYTE *)(result + 28) = 0;
  *(_DWORD *)(result + 40) = result + 28;
  *(_BYTE *)(result + 4) = a4;
  *(_DWORD *)(result + 44) = 0;
  *(_DWORD *)(result + 36) = result + 28;
  return result;
}


// ===== 66f6b8 glitch::collada::detail::CColladaSoftwareSkinTechnique::needOutputBuffer(void) =====
int __fastcall glitch::collada::detail::CColladaSoftwareSkinTechnique::needOutputBuffer(
        glitch::collada::detail::CColladaSoftwareSkinTechnique *this)
{
  return 1;
}


// ===== 66f6c0 glitch::collada::detail::CColladaSoftwareSkinTechnique::checkAvailability(glitch::video::STechnique const&) =====
int glitch::collada::detail::CColladaSoftwareSkinTechnique::checkAvailability()
{
  return 1;
}


// ===== 66f6c8 glitch::collada::detail::CColladaSoftwareSkinTechnique::attach(glitch::scene::ISceneNode *) =====
int __fastcall glitch::collada::detail::CColladaSoftwareSkinTechnique::attach(int this, glitch::scene::ISceneNode *a2)
{
  *(_DWORD *)(this + 20) = a2;
  return this;
}


// ===== 66f6d0 `global constructor keyed to'.._source_glitch_collada_detail_CColladaSoftwareSkinTechnique.cpp =====
void `global constructor keyed to'.._source_glitch_collada_detail_CColladaSoftwareSkinTechnique.cpp()
{
  dword_9F710C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7108 = 1056964608;
}


// ===== 66f6f0 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,glitch::collada::detail::CColladaSoftwareSkinTechnique::SSoftwareColorGenData>,std::priv::_Select1st<std::pair<uint const,glitch::collada::detail::CColladaSoftwareSkinTechnique::SSoftwareColorGenData>>,std::priv::_MapTraitsT<std::pair<uint const,glitch::collada::detail::CColladaSoftwareSkinTechnique::SSoftwareColorGenData>>,glitch::core::SAllocator<std::pair<uint const,glitch::collada::detail::CColladaSoftwareSkinTechnique::SSoftwareColorGenData>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::collada::detail::CColladaSoftwareSkinTechnique::SSoftwareColorGenData>,std::priv::_Select1st<std::pair<unsigned int const,glitch::collada::detail::CColladaSoftwareSkinTechnique::SSoftwareColorGenData>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::collada::detail::CColladaSoftwareSkinTechnique::SSoftwareColorGenData>>,glitch::core::SAllocator<std::pair<unsigned int const,glitch::collada::detail::CColladaSoftwareSkinTechnique::SSoftwareColorGenData>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::collada::detail::CColladaSoftwareSkinTechnique::SSoftwareColorGenData>,std::priv::_Select1st<std::pair<unsigned int const,glitch::collada::detail::CColladaSoftwareSkinTechnique::SSoftwareColorGenData>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::collada::detail::CColladaSoftwareSkinTechnique::SSoftwareColorGenData>>,glitch::core::SAllocator<std::pair<unsigned int const,glitch::collada::detail::CColladaSoftwareSkinTechnique::SSoftwareColorGenData>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      GlitchFree(v2);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 66f724 glitch::collada::detail::CColladaSoftwareSkinTechnique::~CColladaSoftwareSkinTechnique() =====
void __fastcall glitch::collada::detail::CColladaSoftwareSkinTechnique::~CColladaSoftwareSkinTechnique(
        glitch::collada::detail::CColladaSoftwareSkinTechnique *this)
{
  int v1; // r1
  char *v3; // r5

  v1 = *((_DWORD *)this + 11);
  *(_DWORD *)this = off_9855D0;
  if ( v1 )
  {
    v3 = (char *)this + 28;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::collada::detail::CColladaSoftwareSkinTechnique::SSoftwareColorGenData>,std::priv::_Select1st<std::pair<unsigned int const,glitch::collada::detail::CColladaSoftwareSkinTechnique::SSoftwareColorGenData>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::collada::detail::CColladaSoftwareSkinTechnique::SSoftwareColorGenData>>,glitch::core::SAllocator<std::pair<unsigned int const,glitch::collada::detail::CColladaSoftwareSkinTechnique::SSoftwareColorGenData>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 28,
      *((_DWORD **)this + 8));
    *((_DWORD *)this + 10) = v3;
    *((_DWORD *)this + 11) = 0;
    *((_DWORD *)this + 9) = v3;
    *((_DWORD *)this + 8) = 0;
  }
  glitch::collada::detail::IColladaSkinTechnique::~IColladaSkinTechnique(this);
}


// ===== 66f78c glitch::collada::detail::CColladaSoftwareSkinTechnique::~CColladaSoftwareSkinTechnique() =====
void __fastcall glitch::collada::detail::CColladaSoftwareSkinTechnique::~CColladaSoftwareSkinTechnique(
        glitch::collada::detail::CColladaSoftwareSkinTechnique *this)
{
  glitch::collada::detail::CColladaSoftwareSkinTechnique::~CColladaSoftwareSkinTechnique(this);
  LC_API_FREE_0(this);
}


// ===== 66f7a8 glitch::collada::detail::CColladaSoftwareSkinTechnique::onPrepareBufferForRendering(glitch::collada::E_PREPARE_BUFFER_STEP,glitch::video::IVideoDriver *,glitch::collada::SSkinBuffer &,glitch::scene::CMeshBuffer *) =====
int __fastcall glitch::collada::detail::CColladaSoftwareSkinTechnique::onPrepareBufferForRendering(
        unsigned __int8 *a1,
        int a2,
        int a3,
        glitch::IReferenceCounted **a4,
        int a5)
{
  int v5; // r6
  glitch::IReferenceCounted *v7; // r3
  bool v9; // zf
  int v10; // r7
  glitch::video::CMaterial *v12; // r0
  int v13; // r10
  int Technique; // r0
  int ProcessBuffer; // r6
  glitch::IReferenceCounted *v17; // [sp+Ch] [bp-8h] BYREF

  v5 = a1[24];
  v7 = *a4;
  v9 = v5 == 0;
  if ( a1[24] )
    v5 = 393217;
  v17 = v7;
  if ( v9 )
    v5 = 131073;
  v10 = a3;
  if ( v7 )
    a3 = *((_DWORD *)v7 + 1);
  if ( v7 )
    *((_DWORD *)v7 + 1) = a3 + 1;
  v12 = a4[1];
  v13 = *((_DWORD *)v12 + 1);
  Technique = glitch::video::CMaterial::getTechnique(v12);
  ProcessBuffer = glitch::video::IVideoDriver::getProcessBuffer(
                    v10,
                    a2 == 0,
                    v5 & *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v13 + 24) + 12 * Technique + 8) + 32) + 56),
                    &v17,
                    0);
  if ( (ProcessBuffer & 4) != 0 )
    (*(void (__fastcall **)(unsigned __int8 *, glitch::IReferenceCounted **, int))(*(_DWORD *)a1 + 24))(a1, a4, a5);
  if ( v17 )
    glitch::IReferenceCounted::drop(v17);
  return ProcessBuffer;
}


// ===== 66f884 glitch::video::CVertexStreams::setStream(glitch::video::SVertexStream *,glitch::video::SVertexStreamData const&,bool) [clone] =====
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
  return glitch::video::CVertexStreams::updateHomogeneityInternal((int)this, 1);
}


// ===== 66f8ec glitch::collada::detail::CColladaSoftwareSkinTechnique::init(glitch::collada::SSkinBuffer &,glitch::scene::CMeshBuffer *,glitch::video::IVideoDriver *,bool) =====
int __fastcall glitch::collada::detail::CColladaSoftwareSkinTechnique::init(int a1, int a2, int a3, int a4, char a5)
{
  int inited; // r0
  int v9; // r8
  int v10; // r10
  glitch::IReferenceCounted *v11; // r4
  int v12; // r2
  int v13; // r1
  glitch::video::CMaterial *v15; // r1
  int v16; // r7
  int v17; // r5
  int v18; // r2
  glitch::IReferenceCounted *v19[3]; // [sp+Ch] [bp-34h] BYREF
  __int16 v20; // [sp+18h] [bp-28h]
  __int16 v21; // [sp+1Ah] [bp-26h]
  glitch::IReferenceCounted *v22[3]; // [sp+1Ch] [bp-24h] BYREF
  __int16 v23; // [sp+28h] [bp-18h]
  __int16 v24; // [sp+2Ah] [bp-16h]
  glitch::IReferenceCounted *v25[3]; // [sp+2Ch] [bp-14h] BYREF
  __int16 v26; // [sp+38h] [bp-8h]
  __int16 v27; // [sp+3Ah] [bp-6h]
  glitch::IReferenceCounted *v28; // [sp+3Ch] [bp-4h] BYREF

  inited = glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(a1);
  v9 = *(_DWORD *)(inited + 20);
  v10 = v9 + 20;
  v27 = 0;
  v25[0] = nullptr;
  v25[1] = nullptr;
  v11 = (glitch::IReferenceCounted *)inited;
  v25[2] = (glitch::IReferenceCounted *)&byte_6;
  v26 = 3;
  glitch::video::CVertexStreams::setStream((glitch::video::CVertexStreams *)v9, v9 + 20, v25);
  if ( v25[0] )
    glitch::IReferenceCounted::drop(v25[0]);
  if ( (*(_DWORD *)(v9 + 4) & 0x20000) != 0 )
  {
    v24 = 0;
    v22[0] = nullptr;
    v22[1] = nullptr;
    v22[2] = (glitch::IReferenceCounted *)&byte_6;
    v23 = 3;
    glitch::video::CVertexStreams::setStream(
      (glitch::video::CVertexStreams *)v9,
      v10 + 16 * (*(unsigned __int8 *)(v9 + 12) + 1),
      v22);
    if ( v22[0] )
      glitch::IReferenceCounted::drop(v22[0]);
    v12 = 2;
  }
  else
  {
    v12 = 1;
  }
  if ( *(_BYTE *)(a1 + 24) )
  {
    v13 = v10 + 16 * (v12 + *(unsigned __int8 *)(v9 + 12));
    v21 = 0;
    v19[0] = nullptr;
    v19[1] = nullptr;
    v19[2] = (glitch::IReferenceCounted *)&byte_6;
    v20 = 4;
    glitch::video::CVertexStreams::setStream((glitch::video::CVertexStreams *)v9, v13, v19);
    if ( v19[0] )
      glitch::IReferenceCounted::drop(v19[0]);
  }
  if ( a5 )
    return 0;
  v15 = *(glitch::video::CMaterial **)(a2 + 4);
  if ( *(_BYTE *)(a1 + 24) )
    v16 = 393217;
  else
    v16 = 131073;
  v17 = *((_DWORD *)v15 + 1);
  v18 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v17 + 24) + 12 * glitch::video::CMaterial::getTechnique(v15) + 8)
                              + 32)
                  + 56);
  v28 = v11;
  ++*((_DWORD *)v11 + 1);
  glitch::video::IVideoDriver::getProcessBuffer(a4, 1, v16 & v18, &v28, 1u);
  if ( v28 )
    glitch::IReferenceCounted::drop(v28);
  return 1;
}


// ===== 66fab4 glitch::collada::detail::CColladaSoftwareSkinTechnique::preparePtrCache(void) =====
void __fastcall glitch::collada::detail::CColladaSoftwareSkinTechnique::preparePtrCache(
        glitch::collada::detail::CColladaSoftwareSkinTechnique *this)
{
  _DWORD *v2; // r0
  int v3; // r5
  unsigned int v4; // r1
  int v5; // r3
  int v6; // r7
  int v7; // r6
  glitch::scene::ISceneNode *SceneNodeFromScopeID; // r0
  bool v9; // zf
  glitch::scene::ISceneNode *v10; // r2
  int v11; // r8
  int v12; // [sp+4h] [bp-4h] BYREF

  v2 = *((_DWORD **)this + 4);
  if ( (*v2 & 0x10000) != 0 )
  {
    v3 = 0;
    v4 = *(_DWORD *)(*((_DWORD *)this + 3) + 116);
    v12 = 0;
    std::vector<glitch::core::CMatrix4<float> const*,glitch::core::SAllocator<glitch::core::CMatrix4<float> const*,(glitch::memory::E_MEMORY_HINT)0>>::resize(
      (int)(v2 + 4),
      v4,
      (char *)&v12);
    v5 = *((_DWORD *)this + 3);
    v6 = *(_DWORD *)(v5 + 116);
    if ( v6 > 0 )
    {
      while ( 1 )
      {
        v7 = 4 * v3;
        SceneNodeFromScopeID = glitch::scene::ISceneNode::getSceneNodeFromScopeID(
                                 *((glitch::scene::ISceneNode **)this + 5),
                                 *(const char **)(*(_DWORD *)(v5 + 120) + 4 * v3));
        v10 = SceneNodeFromScopeID;
        v9 = SceneNodeFromScopeID == nullptr;
        if ( !SceneNodeFromScopeID )
          SceneNodeFromScopeID = nullptr;
        v11 = *(_DWORD *)(*((_DWORD *)this + 4) + 16);
        if ( !v9 )
          SceneNodeFromScopeID = (glitch::scene::ISceneNode *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)v10 + 56))(SceneNodeFromScopeID);
        ++v3;
        *(_DWORD *)(v11 + v7) = SceneNodeFromScopeID;
        if ( v3 == v6 )
          break;
        v5 = *((_DWORD *)this + 3);
      }
    }
    **((_DWORD **)this + 4) &= ~0x10000u;
  }
}


// ===== 66fb64 glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&,glitch::core::CMatrix4<float>::eConstructor) [clone] =====
_BYTE *__fastcall glitch::core::CMatrix4<float>::CMatrix4(_BYTE *a1, const void *a2)
{
  a1[64] = 0;
  memcpy(a1, a2, 0x41u);
  return a1;
}


// ===== 66fb84 glitch::collada::detail::CColladaSoftwareSkinTechnique::computeBoundingBox(void) =====
glitch::collada::detail::CColladaSoftwareSkinTechnique *__fastcall glitch::collada::detail::CColladaSoftwareSkinTechnique::computeBoundingBox(
        glitch::collada::detail::CColladaSoftwareSkinTechnique *this,
        glitch::collada::detail::CColladaSoftwareSkinTechnique *a2)
{
  int v4; // r2
  float v5; // r1
  int v6; // r0
  int v7; // r9
  int v8; // r3
  int v9; // r9
  int v10; // r6
  float *v12; // r3
  float v13; // r8
  float v14; // r5
  float v15; // r7
  _BOOL4 v16; // r0
  float v17; // r1
  _BOOL4 v18; // r0
  float v19; // r1
  _BOOL4 v20; // r0
  float v21; // r1
  _BOOL4 v22; // r0
  float v23; // r1
  int v24; // r5
  int v25; // r7
  int v26; // r3
  int v27; // r0
  float v28; // r12
  float *v29; // r3
  float v30; // r11
  float v31; // r8
  float v32; // r6
  float v33; // r1
  _BOOL4 v34; // r0
  float v35; // r1
  _BOOL4 v36; // r0
  float v37; // r1
  _BOOL4 v38; // r0
  float v39; // r1
  _BOOL4 v40; // r0
  float v41; // r1
  float v42; // r11
  float v43; // r8
  float v44; // r6
  float v45; // r1
  _BOOL4 v46; // r0
  float v47; // r1
  _BOOL4 v48; // r0
  float v49; // r1
  _BOOL4 v50; // r0
  float v51; // r1
  float v52; // [sp+8h] [bp-1Ch] BYREF
  float v53; // [sp+Ch] [bp-18h]
  float v54; // [sp+10h] [bp-14h]
  float v55; // [sp+14h] [bp-10h]
  float v56; // [sp+18h] [bp-Ch]
  float v57; // [sp+1Ch] [bp-8h]

  glitch::collada::detail::CColladaSoftwareSkinTechnique::preparePtrCache(a2);
  v4 = *((_DWORD *)a2 + 4);
  v5 = -3.4028e38;
  v6 = *(_DWORD *)(v4 + 16);
  v7 = *(_DWORD *)(v4 + 20);
  *((_DWORD *)this + 2) = 2139095039;
  *((_DWORD *)this + 3) = -8388609;
  *((_DWORD *)this + 4) = -8388609;
  *((_DWORD *)this + 5) = -8388609;
  *(_DWORD *)this = 2139095039;
  *((_DWORD *)this + 1) = 2139095039;
  v8 = *((_DWORD *)a2 + 3);
  v9 = (unsigned __int8)((unsigned int)(v7 - v6) >> 2);
  v10 = *(_DWORD *)(v8 + 140);
  if ( v10 )
  {
    if ( v9 )
    {
      v24 = 0;
      v25 = 0;
      while ( 1 )
      {
        v26 = *(_DWORD *)(v8 + 144);
        v27 = *((_DWORD *)a2 + 4);
        v28 = *(float *)(v26 + v24);
        v29 = (float *)(v26 + v24);
        v52 = v28;
        v24 += 24;
        v53 = v29[1];
        v54 = v29[2];
        v55 = v29[3];
        v56 = v29[4];
        v57 = v29[5];
        glitch::core::CMatrix4<float>::transformBox(*(_DWORD *)(*(_DWORD *)(v27 + 16) + 4 * v25), &v52);
        v30 = v55;
        v31 = v56;
        v32 = v57;
        v33 = *((float *)this + 4);
        if ( v55 > *((float *)this + 3) )
          *((float *)this + 3) = v55;
        v34 = v31 > v33;
        v35 = *((float *)this + 5);
        if ( v34 )
          *((float *)this + 4) = v31;
        v36 = v32 > v35;
        v37 = *(float *)this;
        if ( v36 )
          *((float *)this + 5) = v32;
        v38 = v30 < v37;
        v39 = *((float *)this + 1);
        if ( v38 )
          *(float *)this = v30;
        v40 = v31 < v39;
        v41 = *((float *)this + 2);
        if ( v40 )
          *((float *)this + 1) = v31;
        if ( v32 < v41 )
          *((float *)this + 2) = v32;
        v42 = v52;
        v43 = v53;
        v44 = v54;
        v45 = *((float *)this + 4);
        if ( v52 > *((float *)this + 3) )
          *((float *)this + 3) = v52;
        v46 = v43 > v45;
        v47 = *((float *)this + 5);
        if ( v46 )
          *((float *)this + 4) = v43;
        v48 = v44 > v47;
        v49 = *(float *)this;
        if ( v48 )
          *((float *)this + 5) = v44;
        v50 = v42 < v49;
        v51 = *((float *)this + 1);
        if ( v50 )
          *(float *)this = v42;
        if ( v43 < v51 )
          *((float *)this + 1) = v43;
        ++v25;
        if ( v44 < *((float *)this + 2) )
          *((float *)this + 2) = v44;
        if ( v25 >= v9 )
          break;
        v8 = *((_DWORD *)a2 + 3);
      }
    }
  }
  else if ( v9 )
  {
    while ( 1 )
    {
      v12 = *(float **)(*(_DWORD *)(*((_DWORD *)a2 + 4) + 16) + 4 * v10++);
      v13 = v12[12];
      v14 = v12[14];
      v15 = v12[13];
      v16 = v13 > v5;
      v17 = *((float *)this + 4);
      if ( v16 )
        *((float *)this + 3) = v13;
      v18 = v15 > v17;
      v19 = *((float *)this + 5);
      if ( v18 )
        *((float *)this + 4) = v15;
      v20 = v14 > v19;
      v21 = *(float *)this;
      if ( v20 )
        *((float *)this + 5) = v14;
      v22 = v13 < v21;
      v23 = *((float *)this + 1);
      if ( v22 )
        *(float *)this = v13;
      if ( v15 < v23 )
        *((float *)this + 1) = v15;
      if ( v14 < *((float *)this + 2) )
        *((float *)this + 2) = v14;
      if ( v10 >= v9 )
        break;
      v5 = *((float *)this + 3);
    }
  }
  **((_DWORD **)a2 + 4) &= ~8u;
  return this;
}


// ===== 66fe34 glitch::collada::detail::CColladaSoftwareSkinTechnique::prepareCache(void) =====
void __fastcall glitch::collada::detail::CColladaSoftwareSkinTechnique::prepareCache(
        glitch::collada::detail::CColladaSoftwareSkinTechnique *this)
{
  unsigned int v2; // r7
  int v3; // r6
  _DWORD *v4; // r8
  _DWORD *v5; // r3
  int v6; // r2
  int v7; // r9
  int v8; // r4
  void *v9; // r10
  _BYTE v10[68]; // [sp+4h] [bp-CCh] BYREF
  _BYTE v11[68]; // [sp+48h] [bp-88h] BYREF
  _DWORD v12[16]; // [sp+8Ch] [bp-44h] BYREF
  char v13; // [sp+CCh] [bp-4h]

  if ( (**((_DWORD **)this + 4) & 1) != 0 )
  {
    glitch::collada::detail::CColladaSoftwareSkinTechnique::preparePtrCache(this);
    v2 = *(_DWORD *)(*((_DWORD *)this + 3) + 116);
    v3 = 0;
    v4 = (_DWORD *)(*((_DWORD *)this + 4) + 4);
    LC_API_MEMSET_0(v12, 0, 0x40u);
    v12[15] = 1065353216;
    v12[0] = 1065353216;
    v12[5] = 1065353216;
    v12[10] = 1065353216;
    v13 = 1;
    std::vector<glitch::core::CMatrix4<float>>::resize(v4, v2, (char *)v12);
    v5 = *((_DWORD **)this + 4);
    v6 = v5[4];
    v7 = (v5[5] - v6) >> 2;
    if ( v7 )
    {
      v8 = 0;
      while ( 1 )
      {
        v9 = (void *)(v5[1] + v3);
        glitch::core::operator*<float,glitch::collada::SMatrix>(
          (int)v11,
          *(_DWORD *)(v6 + 4 * v8),
          (float *)(*(_DWORD *)(*((_DWORD *)this + 3) + 4) + (v8 << 6)));
        glitch::core::operator*<float,glitch::collada::SMatrix>(
          (int)v10,
          (int)v11,
          (float *)(*((_DWORD *)this + 3) + 16));
        ++v8;
        memcpy(v9, v10, 0x41u);
        v3 += 68;
        if ( v8 == v7 )
          break;
        v5 = *((_DWORD **)this + 4);
        v6 = v5[4];
      }
      v5 = *((_DWORD **)this + 4);
    }
    *v5 &= ~1u;
  }
}


// ===== 66ff48 glitch::collada::detail::CColladaSoftwareSkinTechnique::skin(glitch::collada::SSkinBuffer &,glitch::scene::CMeshBuffer *) =====
int __fastcall glitch::collada::detail::CColladaSoftwareSkinTechnique::skin(
        _DWORD *a1,
        unsigned __int8 *a2,
        _DWORD *a3)
{
  unsigned int v5; // r4
  int v6; // r0
  int v7; // r12
  int v8; // r2
  int v9; // r1
  int v10; // r3
  int v11; // r0
  int v12; // r0
  int v13; // r3
  int v14; // r2
  int result; // r0
  int v16; // r0
  float v17; // r5
  float v18; // r7
  int v19; // r6
  int v20; // r3
  int v21; // r4
  float v22; // r11
  float *v23; // r4
  float v24; // r9
  float v25; // r8
  float v26; // r5
  float v27; // r9
  float v28; // r10
  float v29; // r8
  int v30; // r6
  float v31; // r7
  int v32; // r3
  int v33; // r4
  float v34; // r1
  float *v35; // r4
  _BYTE *v36; // r4
  char v37; // r3
  _BYTE *v38; // r4
  char v39; // r3
  _BYTE *v40; // r4
  char v41; // r3
  _BYTE *v42; // r4
  char v43; // r3
  _BYTE *v44; // r4
  char v45; // r3
  int v46; // r2
  float v47; // [sp+8h] [bp-B4h]
  float v48; // [sp+8h] [bp-B4h]
  float v49; // [sp+Ch] [bp-B0h]
  float v50; // [sp+Ch] [bp-B0h]
  float v51; // [sp+10h] [bp-ACh]
  int v52; // [sp+10h] [bp-ACh]
  float v53; // [sp+14h] [bp-A8h]
  float *v54; // [sp+14h] [bp-A8h]
  float v55; // [sp+18h] [bp-A4h]
  float v56; // [sp+1Ch] [bp-A0h]
  float v57; // [sp+20h] [bp-9Ch]
  unsigned int v58; // [sp+20h] [bp-9Ch]
  float v59; // [sp+24h] [bp-98h]
  float v60; // [sp+28h] [bp-94h]
  float v61; // [sp+2Ch] [bp-90h]
  float v62; // [sp+30h] [bp-8Ch]
  float v63; // [sp+34h] [bp-88h]
  float v64; // [sp+38h] [bp-84h]
  float v65; // [sp+3Ch] [bp-80h]
  float v66; // [sp+40h] [bp-7Ch]
  float v67; // [sp+44h] [bp-78h]
  int v68; // [sp+48h] [bp-74h]
  float *v69; // [sp+4Ch] [bp-70h]
  float *v70; // [sp+50h] [bp-6Ch]
  float *v71; // [sp+54h] [bp-68h]
  float *v72; // [sp+58h] [bp-64h]
  float *v74; // [sp+68h] [bp-54h]
  float *i; // [sp+6Ch] [bp-50h]
  unsigned int v76; // [sp+70h] [bp-4Ch]
  int v77; // [sp+74h] [bp-48h]
  int v78; // [sp+78h] [bp-44h]
  int v79; // [sp+7Ch] [bp-40h]
  unsigned int v80; // [sp+80h] [bp-3Ch]
  int v81; // [sp+84h] [bp-38h]
  int v82; // [sp+88h] [bp-34h]
  int v83; // [sp+8Ch] [bp-30h]
  int *v84; // [sp+90h] [bp-2Ch]
  int v85; // [sp+94h] [bp-28h]
  int v86; // [sp+98h] [bp-24h]
  int v87; // [sp+9Ch] [bp-20h]
  int v88; // [sp+A0h] [bp-1Ch]
  int v89; // [sp+A4h] [bp-18h]
  int v90; // [sp+A8h] [bp-14h]
  int *v91; // [sp+ACh] [bp-10h]
  int v92; // [sp+B0h] [bp-Ch]
  int v93; // [sp+B4h] [bp-8h]

  (*(void (__fastcall **)(_DWORD *))(*a1 + 16))(a1);
  v83 = a3[5];
  v5 = a3[9];
  v76 = a3[10];
  v79 = *(unsigned __int16 *)(v83 + 34);
  v6 = glitch::video::IBuffer::map(*(_DWORD *)(v83 + 20), 1);
  v8 = *(_DWORD *)(v83 + 4);
  v9 = v6 + *(_DWORD *)(v83 + 24);
  v10 = v9 + v5 * *(unsigned __int16 *)(v83 + 34);
  if ( (v8 & 0x20000) != 0 )
    v7 = v83;
  v72 = (float *)(v9 + v5 * *(unsigned __int16 *)(v83 + 34));
  v90 = v6 + *(_DWORD *)(v83 + 24);
  if ( (v8 & 0x20000) != 0 )
    v10 = *(unsigned __int8 *)(v7 + 12);
  else
    v6 = v83;
  if ( (v8 & 0x20000) != 0 )
    v84 = (int *)(v83 + 20 + 16 * (v10 + 1));
  else
    v6 = *(_DWORD *)(v6 + 16);
  if ( (v8 & 0x20000) == 0 )
    v84 = (int *)v6;
  v81 = *(_DWORD *)(*(_DWORD *)a2 + 20);
  v11 = glitch::video::IBuffer::map(*(_DWORD *)(v81 + 20), 4);
  v82 = v81 + 20;
  v77 = *(unsigned __int16 *)(v81 + 34);
  v89 = v11 + *(_DWORD *)(v81 + 24);
  v78 = 4 * (*(unsigned __int8 *)(a1[3] + 152) + 1);
  v70 = (float *)(v89 + v5 * v77);
  if ( (*(_DWORD *)(v81 + 4) & 0x20000) != 0 )
  {
    v46 = *(unsigned __int8 *)(v81 + 12) + 1;
    v91 = (int *)(v82 + 16 * (unsigned __int8)v46);
  }
  else
  {
    v91 = nullptr;
    v46 = *(unsigned __int8 *)(v81 + 12) + 1;
  }
  glitch::video::CVertexStreams::getStream(v81, 18, v82 + 16 * v46, *(_DWORD *)(v81 + 16));
  v85 = a2[18];
  v12 = glitch::video::IBuffer::map(*(_DWORD *)(v82 + 16 * v85), 1);
  v13 = v82 + 16 * v85;
  v14 = v12 + *(_DWORD *)(v13 + 4);
  result = (int)v84;
  v88 = v14;
  v71 = (float *)(v14 + v5 * *(unsigned __int16 *)(v13 + 14) + 4);
  if ( v84 != *(int **)(v83 + 16) && *v84 && (result = *v91) != 0 )
  {
    v93 = glitch::video::IBuffer::map(result, 4) + v91[1];
    v87 = *((unsigned __int16 *)v91 + 7);
    v16 = glitch::video::IBuffer::map(*v84, 1);
    v86 = *((unsigned __int16 *)v84 + 7);
    v92 = v16 + v84[1];
    if ( v5 < v76 )
    {
      v80 = v5;
      v74 = (float *)(v93 + v5 * v87);
      for ( i = (float *)(v92 + v5 * *((unsigned __int16 *)v84 + 7)); ; i = (float *)((char *)i + v86) )
      {
        v69 = v71;
        if ( !*(_BYTE *)(a1[3] + 152) || (v17 = *v71, *v71 == 0.0) )
        {
          v62 = 0.0;
          v66 = 0.0;
          v67 = 0.0;
          v63 = 0.0;
          v64 = 0.0;
          v65 = 0.0;
        }
        else
        {
          v62 = 0.0;
          v18 = *i;
          v55 = i[1];
          v68 = *(_DWORD *)(a1[4] + 4);
          v53 = i[2];
          v19 = 1;
          v51 = *v72;
          v49 = v72[1];
          v66 = 0.0;
          v67 = 0.0;
          v47 = v72[2];
          v63 = 0.0;
          v20 = 0;
          v64 = 0.0;
          v65 = 0.0;
          while ( 1 )
          {
            v21 = 68 * *((unsigned __int8 *)v71 + v20 - 4);
            v22 = *(float *)(v68 + v21);
            v23 = (float *)(v68 + v21);
            v24 = v23[4];
            v25 = v23[1];
            v62 = v62
                + (float)(v17
                        * (float)((float)((float)((float)(v22 * v51) + (float)(v24 * v49)) + (float)(v23[8] * v47))
                                + v23[12]));
            v56 = v23[5];
            v57 = v23[9];
            v59 = v23[2];
            v66 = v66
                + (float)(v17
                        * (float)((float)((float)((float)(v25 * v51) + (float)(v56 * v49)) + (float)(v57 * v47))
                                + v23[13]));
            v60 = v23[6];
            v61 = v23[10];
            v67 = v67
                + (float)(v17
                        * (float)((float)((float)((float)(v59 * v51) + (float)(v60 * v49)) + (float)(v61 * v47))
                                + v23[14]));
            v63 = v63 + (float)(v17 * (float)((float)((float)(v22 * v18) + (float)(v24 * v55)) + (float)(v23[8] * v53)));
            v64 = v64 + (float)(v17 * (float)((float)((float)(v25 * v18) + (float)(v56 * v55)) + (float)(v57 * v53)));
            v65 = v65 + (float)(v17 * (float)((float)((float)(v59 * v18) + (float)(v60 * v55)) + (float)(v61 * v53)));
            if ( *(unsigned __int8 *)(a1[3] + 152) <= (unsigned int)(unsigned __int8)v19 )
              break;
            v17 = v69[1];
            ++v69;
            if ( v17 == 0.0 )
              break;
            v20 = v19++;
          }
        }
        ++v80;
        *v70 = v62;
        v70[1] = v66;
        v70[2] = v67;
        *v74 = v63;
        v74[1] = v64;
        v74[2] = v65;
        if ( v80 >= v76 )
          break;
        v71 = (float *)((char *)v71 + v78);
        v70 = (float *)((char *)v70 + v77);
        v74 = (float *)((char *)v74 + v87);
        v72 = (float *)((char *)v72 + v79);
      }
    }
    result = v92;
    if ( v92 )
    {
      v36 = (_BYTE *)*v84;
      v37 = *(_BYTE *)(*v84 + 19);
      if ( (v37 & 0x1Fu) > 1 )
      {
        v36[19] = ((v37 & 0x1F) - 1) | v37 & 0xE0;
      }
      else
      {
        if ( (v36[18] & 0x20) != 0 )
          result = (*(int (__fastcall **)(int))(*(_DWORD *)v36 + 24))(*v84);
        v36[19] = 0;
      }
    }
    if ( v93 )
    {
      v38 = (_BYTE *)*v91;
      v39 = *(_BYTE *)(*v91 + 19);
      if ( (v39 & 0x1Fu) > 1 )
      {
        v38[19] = ((v39 & 0x1F) - 1) | v39 & 0xE0;
      }
      else
      {
        if ( (v38[18] & 0x20) != 0 )
          result = (*(int (__fastcall **)(int))(*(_DWORD *)v38 + 24))(*v91);
        v38[19] = 0;
      }
    }
  }
  else if ( v5 < v76 )
  {
    v58 = v5;
    while ( 1 )
    {
      v54 = v71;
      if ( !*(_BYTE *)(a1[3] + 152) || (v26 = *v71, *v71 == 0.0) )
      {
        v27 = 0.0;
        v48 = 0.0;
        v50 = 0.0;
      }
      else
      {
        v27 = 0.0;
        v28 = *v72;
        v29 = v72[1];
        v30 = 1;
        v52 = *(_DWORD *)(a1[4] + 4);
        v31 = v72[2];
        v32 = 0;
        v48 = 0.0;
        v50 = 0.0;
        while ( 1 )
        {
          v33 = 68 * *((unsigned __int8 *)v71 + v32 - 4);
          v34 = *(float *)(v52 + v33);
          v35 = (float *)(v52 + v33);
          v48 = v48
              + (float)(v26
                      * (float)((float)((float)((float)(v28 * v34) + (float)(v29 * v35[4])) + (float)(v31 * v35[8]))
                              + v35[12]));
          v27 = v27
              + (float)(v26
                      * (float)((float)((float)((float)(v28 * v35[1]) + (float)(v29 * v35[5])) + (float)(v31 * v35[9]))
                              + v35[13]));
          v50 = v50
              + (float)(v26
                      * (float)((float)((float)((float)(v28 * v35[2]) + (float)(v29 * v35[6])) + (float)(v31 * v35[10]))
                              + v35[14]));
          if ( (unsigned __int8)v30 >= (unsigned int)*(unsigned __int8 *)(a1[3] + 152) )
            break;
          v26 = v54[1];
          ++v54;
          if ( v26 == 0.0 )
            break;
          v32 = v30++;
        }
      }
      result = ++v58;
      *v70 = v48;
      v70[1] = v27;
      v70[2] = v50;
      if ( v58 >= v76 )
        break;
      v70 = (float *)((char *)v70 + v77);
      v71 = (float *)((char *)v71 + v78);
      v72 = (float *)((char *)v72 + v79);
    }
  }
  if ( v88 )
  {
    v40 = *(_BYTE **)(v82 + 16 * v85);
    v41 = v40[19];
    if ( (v41 & 0x1Fu) <= 1 )
    {
      if ( (v40[18] & 0x20) != 0 )
        result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v40 + 24))(*(_DWORD *)(v82 + 16 * v85));
      v40[19] = 0;
    }
    else
    {
      v40[19] = ((v41 & 0x1F) - 1) | v41 & 0xE0;
    }
  }
  if ( v89 )
  {
    result = v81;
    v42 = *(_BYTE **)(v81 + 20);
    v43 = v42[19];
    if ( (v43 & 0x1Fu) <= 1 )
    {
      if ( (v42[18] & 0x20) != 0 )
        result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v42 + 24))(*(_DWORD *)(v81 + 20));
      v42[19] = 0;
    }
    else
    {
      v42[19] = ((v43 & 0x1F) - 1) | v43 & 0xE0;
    }
  }
  if ( v90 )
  {
    v44 = *(_BYTE **)(v83 + 20);
    v45 = v44[19];
    if ( (v45 & 0x1Fu) <= 1 )
    {
      if ( (v44[18] & 0x20) != 0 )
        result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v44 + 24))(*(_DWORD *)(v83 + 20));
      v44[19] = 0;
    }
    else
    {
      v44[19] = ((v45 & 0x1F) - 1) | v45 & 0xE0;
    }
  }
  return result;
}


// ===== 670a60 glitch::collada::detail::constructCompatibilityTable(void) =====
void *__fastcall glitch::collada::detail::constructCompatibilityTable(glitch::collada::detail *this)
{
  unsigned int i; // r7
  unsigned int v2; // r3
  int v3; // r4
  char v4; // r12
  int *v5; // r2
  char v6; // r1
  int *v7; // r3
  int *v9; // r4
  int *v10; // r3

  if ( (`guard variable for'glitch::collada::detail::constructCompatibilityTable(void)::table[0] & 1) == 0
    && _cxa_guard_acquire(`guard variable for'glitch::collada::detail::constructCompatibilityTable(void)::table) )
  {
    v9 = (int *)&glitch::collada::detail::constructCompatibilityTable(void)::table;
    do
    {
      *v9 = 0;
      v10 = v9 + 1;
      v9[1] = 0;
      v9 += 3;
      v10[1] = 0;
    }
    while ( v9 != &glitch::ps::vHalf );
    _cxa_guard_release(`guard variable for'glitch::collada::detail::constructCompatibilityTable(void)::table);
  }
  for ( i = 0; i != 92; ++i )
  {
    v2 = 0;
    v3 = 3 * i;
    do
    {
      v4 = v2 & 0x1F;
      v5 = &`guard variable for'glitch::collada::detail::constructCompatibilityTable(void)::table[v3 + (v2++ >> 5)];
      v5[1] &= ~(1 << v4);
    }
    while ( v2 != 92 );
    v6 = i & 0x1F;
    v7 = &`guard variable for'glitch::collada::detail::constructCompatibilityTable(void)::table[v3 + (i >> 5)];
    v7[1] |= 1 << v6;
  }
  dword_9F7560 |= 0x7800000u;
  dword_9F7228 |= 0x3600000u;
  dword_9F7240 |= 0x1E00000u;
  dword_9F7210 |= 0x3C00000u;
  dword_9F74E8 |= 0x3C0000u;
  dword_9F74B8 |= 0x1D000u;
  dword_9F753C |= 0xE800000u;
  dword_9F7554 |= 0xB800000u;
  dword_9F7548 |= 0xD800000u;
  dword_9F7530 |= 0xF000000u;
  dword_9F74F4 |= 0x3A0000u;
  dword_9F750C |= 0x2E0000u;
  dword_9F7500 |= 0x360000u;
  dword_9F7518 |= 0x1E0000u;
  dword_9F721C |= 0x3A00000u;
  dword_9F7234 |= 0x2E00000u;
  dword_9F718C |= 0x3800u;
  dword_9F71B0 |= 0x1C00u;
  dword_9F71A4 |= 0x2C00u;
  dword_9F7120 |= 0x1Cu;
  dword_9F712C |= 0x1Au;
  dword_9F7144 |= 0xEu;
  dword_9F7138 |= 0x16u;
  dword_9F715C |= 0x3A0u;
  dword_9F7174 |= 0x2E0u;
  dword_9F7168 |= 0x360u;
  dword_9F7180 |= 0x1E0u;
  dword_9F74D0 |= 0x17000u;
  dword_9F74C4 |= 0x1B000u;
  dword_9F74DC |= 0xF000u;
  dword_9F74AC |= 0x1E000u;
  dword_9F747C |= 0xE80u;
  dword_9F7494 |= 0xB80u;
  dword_9F7488 |= 0xD80u;
  dword_9F74A0 |= 0x780u;
  dword_9F7470 |= 0xF00u;
  dword_9F7198 |= 0x3400u;
  dword_9F7150 |= 0x3C0u;
  return &glitch::collada::detail::constructCompatibilityTable(void)::table;
}


// ===== 670d00 `global constructor keyed to'.._source_glitch_collada_detail_IColladaSceneNodeAnimatorDetail.cpp =====
void *__fastcall `global constructor keyed to'.._source_glitch_collada_detail_IColladaSceneNodeAnimatorDetail.cpp(
        glitch::collada::detail *a1)
{
  void *result; // r0

  dword_9F756C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7568 = 1056964608;
  result = glitch::collada::detail::constructCompatibilityTable(a1);
  glitch::collada::detail::IColladaSceneNodeAnimatorChannelType::CompatibilityTable = (int)result;
  return result;
}


// ===== 670d44 `global constructor keyed to'.._source_glitch_collada_detail_IColladaSkinTechnique.cpp =====
void `global constructor keyed to'.._source_glitch_collada_detail_IColladaSkinTechnique.cpp()
{
  dword_9F757C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7578 = 1056964608;
}


// ===== 670d64 glitch::video::CVertexStreams::setStream(glitch::video::SVertexStream *,glitch::video::SVertexStreamData const&,bool) [clone] =====
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
  return glitch::video::CVertexStreams::updateHomogeneityInternal((int)this, 1);
}


// ===== 670dcc glitch::collada::detail::IColladaSkinTechnique::~IColladaSkinTechnique() =====
void __fastcall glitch::collada::detail::IColladaSkinTechnique::~IColladaSkinTechnique(
        glitch::collada::detail::IColladaSkinTechnique *this)
{
  _DWORD *v1; // r5
  void *v4; // r0

  v1 = *((_DWORD **)this + 2);
  *(_DWORD *)this = off_985600;
  if ( v1 )
  {
    if ( (*v1)-- == 1 )
    {
      v4 = (void *)v1[3];
      if ( v4 )
        operator delete[](v4);
      v1[3] = 0;
    }
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 670e3c glitch::collada::detail::IColladaSkinTechnique::~IColladaSkinTechnique() =====
void __fastcall glitch::collada::detail::IColladaSkinTechnique::~IColladaSkinTechnique(
        glitch::collada::detail::IColladaSkinTechnique *this)
{
  glitch::collada::detail::IColladaSkinTechnique::~IColladaSkinTechnique(this);
  LC_API_FREE_0(this);
}


// ===== 670e58 glitch::collada::detail::IColladaSkinTechnique::~IColladaSkinTechnique() =====
void __fastcall glitch::collada::detail::IColladaSkinTechnique::~IColladaSkinTechnique(
        glitch::collada::detail::IColladaSkinTechnique *this)
{
  _DWORD *v1; // r5
  void *v4; // r0

  v1 = *((_DWORD **)this + 2);
  *(_DWORD *)this = off_985600;
  if ( v1 )
  {
    if ( (*v1)-- == 1 )
    {
      v4 = (void *)v1[3];
      if ( v4 )
        operator delete[](v4);
      v1[3] = 0;
    }
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 670ec8 glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer *,glitch::collada::SSkinBuffer &,glitch::collada::SSkin &,glitch::video::IVideoDriver *) =====
glitch::IReferenceCounted *__fastcall glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5)
{
  glitch::video::CVertexStreams *v7; // r0
  unsigned int v8; // r8
  int v9; // r4
  int v10; // r3
  int v11; // r2
  int v12; // lr
  int v13; // r12
  int *v14; // r7
  int v15; // r11
  int v16; // r9
  int v17; // r7
  int v18; // r7
  int v19; // r11
  int v20; // r9
  int v21; // r7
  _DWORD *v22; // r12
  int v23; // r12
  int v24; // r1
  int v25; // r7
  int v26; // r2
  int v27; // r8
  int v28; // r7
  glitch::video::CVertexStreams *v29; // r3
  unsigned int v30; // r10
  int v31; // r9
  _DWORD *v32; // r3
  _DWORD *v33; // r10
  _DWORD *v34; // r9
  bool v35; // zf
  void *v36; // r0
  void *v37; // r0
  glitch::video::CVertexStreams *v38; // r3
  void (__fastcall *v39)(glitch::IReferenceCounted **, int); // r6
  glitch::IReferenceCounted *v40; // r3
  glitch::IReferenceCounted *v41; // r0
  glitch::IReferenceCounted *v42; // r0
  __int16 v43; // r3
  glitch::video::CVertexStreams *v45; // r3
  void (__fastcall *v46)(glitch::IReferenceCounted **, int); // r6
  glitch::IReferenceCounted *v47; // r3
  glitch::IReferenceCounted *v48; // r0
  int v49; // r7
  int v50; // r3
  int v51; // r3
  __int16 v52; // r2
  glitch::IReferenceCounted *v53; // r0
  glitch::IReferenceCounted *v54; // [sp+14h] [bp-48h]
  glitch::IReferenceCounted *v57[3]; // [sp+20h] [bp-3Ch] BYREF
  __int16 v58; // [sp+2Ch] [bp-30h]
  __int16 v59; // [sp+2Eh] [bp-2Eh]
  glitch::IReferenceCounted *v60[3]; // [sp+30h] [bp-2Ch] BYREF
  __int16 v61; // [sp+3Ch] [bp-20h]
  __int16 v62; // [sp+3Eh] [bp-1Eh]
  glitch::video::CVertexStreams *v63; // [sp+40h] [bp-1Ch] BYREF
  glitch::video::CVertexStreams *v64; // [sp+44h] [bp-18h] BYREF
  glitch::video::CVertexStreams *v65; // [sp+48h] [bp-14h] BYREF
  glitch::video::CVertexStreams *v66; // [sp+4Ch] [bp-10h] BYREF
  glitch::IReferenceCounted *v67; // [sp+50h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v68; // [sp+54h] [bp-8h] BYREF

  v54 = *(glitch::IReferenceCounted **)a3;
  if ( !*(_DWORD *)a3 )
  {
    v49 = *(_DWORD *)(*(_DWORD *)(a2 + 20) + 4);
    v54 = (glitch::IReferenceCounted *)operator new(0x38u, 0);
    *((_DWORD *)v54 + 4) = 0;
    *((_DWORD *)v54 + 1) = 0;
    *((_DWORD *)v54 + 2) = 0;
    *((_DWORD *)v54 + 3) = 0;
    *(_DWORD *)v54 = off_988098;
    glitch::video::CVertexStreams::allocate((glitch::video::CVertexStreams **)v54 + 5, v49 | 0x30040000);
    v50 = *(_DWORD *)(a2 + 24);
    *((_DWORD *)v54 + 6) = v50;
    if ( v50 )
      ++*(_DWORD *)(v50 + 4);
    *((_DWORD *)v54 + 7) = *(_DWORD *)(a2 + 28);
    v51 = *((_DWORD *)v54 + 1);
    *((_DWORD *)v54 + 8) = *(_DWORD *)(a2 + 32);
    *((_DWORD *)v54 + 9) = *(_DWORD *)(a2 + 36);
    *((_DWORD *)v54 + 10) = *(_DWORD *)(a2 + 40);
    *((_WORD *)v54 + 22) = *(_WORD *)(a2 + 44);
    v52 = *(_WORD *)(a2 + 46);
    *((_DWORD *)v54 + 1) = v51 + 1;
    *((_WORD *)v54 + 23) = v52;
    *((_DWORD *)v54 + 12) = 0;
    *((_BYTE *)v54 + 52) = 1;
    v53 = *(glitch::IReferenceCounted **)a3;
    *(_DWORD *)a3 = v54;
    if ( v53 )
      glitch::IReferenceCounted::drop(v53);
    *(_BYTE *)(a3 + 18) = (glitch::video::CVertexStreams::getStream(
                             *((_DWORD *)v54 + 5),
                             29,
                             *((_DWORD *)v54 + 5) + 20,
                             *(_DWORD *)(*((_DWORD *)v54 + 5) + 16))
                         - (*((_DWORD *)v54 + 5)
                          + 20)) >> 4;
  }
  v7 = *(glitch::video::CVertexStreams **)(a2 + 20);
  v8 = *((unsigned __int8 *)v7 + 12);
  v9 = *((_DWORD *)v54 + 5);
  if ( *((_BYTE *)v7 + 12) )
  {
    v10 = 36;
    v11 = 0;
    do
    {
      while ( 1 )
      {
        v23 = 8 << v11;
        v24 = v10 - 12;
        if ( ((8 << v11) & *((unsigned __int16 *)v7 + 7)) == 0 )
          break;
        v12 = *(_DWORD *)(v9 + 16);
        ++v11;
        *(_WORD *)(v9 + 14) |= v23;
        v13 = v12 + v10;
        v14 = (int *)(*((_DWORD *)v7 + 4) + v10);
        v15 = *v14;
        v16 = v14[2];
        v17 = v14[1];
        *(_DWORD *)(v12 + v10) = v15;
        *(_DWORD *)(v13 + 8) = v16;
        *(_DWORD *)(v13 + 4) = v17;
        v18 = *((_DWORD *)v7 + 4);
        v10 += 24;
        v19 = *(_DWORD *)(v18 + v24);
        v20 = *(_DWORD *)(v18 + v24 + 8);
        v21 = *(_DWORD *)(v18 + v24 + 4);
        v22 = (_DWORD *)(*(_DWORD *)(v9 + 16) + v24);
        *v22 = v19;
        v22[2] = v20;
        v22[1] = v21;
        if ( v8 <= (unsigned __int8)v11 )
          goto LABEL_7;
      }
      ++v11;
      v10 += 24;
      *(_WORD *)(v9 + 14) &= ~(_WORD)v23;
    }
    while ( v8 > (unsigned __int8)v11 );
LABEL_7:
    v7 = *(glitch::video::CVertexStreams **)(a2 + 20);
  }
  v66 = v7;
  if ( v7 )
  {
    ++*(_DWORD *)v7;
    v7 = v66;
  }
  v25 = *((_DWORD *)v7 + 2);
  boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v66);
  *(_DWORD *)(v9 + 8) = v25;
  glitch::video::CVertexStreams::setStreams((glitch::video::CVertexStreams *)v9, (int *)(a2 + 20), -805306369, 0, 1u);
  v26 = *(_DWORD *)(a4 + 148);
  v27 = v9 + 20 + 16 * *(unsigned __int8 *)(a3 + 18);
  v28 = 4 * (*(unsigned __int8 *)(a4 + 152) + 1);
  if ( !v26 )
    goto LABEL_63;
  v30 = *(_DWORD *)(v26 + 12);
  v65 = *(glitch::video::CVertexStreams **)(a2 + 20);
  v29 = v65;
  if ( v65 )
  {
    ++*(_DWORD *)v65;
    v29 = v65;
  }
  v31 = *((_DWORD *)v29 + 2);
  boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v65);
  if ( v31 * v28 > v30 || (v32 = *(_DWORD **)(a1 + 8)) == nullptr || !*v32 )
  {
LABEL_63:
    if ( *(_BYTE *)(a1 + 4) )
    {
      v33 = *(_DWORD **)(a4 + 128);
      if ( v33 )
        *v33 += 2;
      v34 = *(_DWORD **)(a1 + 8);
      if ( v34 )
      {
        v35 = (*v34)-- == 1;
        if ( v35 )
        {
          v36 = (void *)v34[3];
          if ( v36 )
            operator delete[](v36);
          v34[3] = 0;
        }
      }
      *(_DWORD *)(a1 + 8) = v33;
      if ( v33 )
      {
        v35 = (*v33)-- == 1;
        if ( v35 )
        {
          v37 = (void *)v33[3];
          if ( v37 )
            operator delete[](v37);
          v33[3] = 0;
        }
      }
      v38 = *(glitch::video::CVertexStreams **)(a2 + 20);
      v39 = *(void (__fastcall **)(glitch::IReferenceCounted **, int))(*(_DWORD *)a5 + 120);
      v64 = v38;
      if ( v38 )
        ++*(_DWORD *)v38;
      boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v64);
      v39(&v68, a5);
      v40 = v68;
      if ( v68 )
        ++*((_DWORD *)v68 + 1);
      v41 = *(glitch::IReferenceCounted **)(a4 + 148);
      *(_DWORD *)(a4 + 148) = v40;
      if ( v41 )
        glitch::IReferenceCounted::drop(v41);
      v42 = v68;
      if ( v68 )
LABEL_38:
        glitch::IReferenceCounted::drop(v42);
    }
    else
    {
      v45 = *(glitch::video::CVertexStreams **)(a2 + 20);
      v46 = *(void (__fastcall **)(glitch::IReferenceCounted **, int))(*(_DWORD *)a5 + 120);
      v63 = v45;
      if ( v45 )
        ++*(_DWORD *)v45;
      boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v63);
      v46(&v67, a5);
      v47 = v67;
      if ( v67 )
        ++*((_DWORD *)v67 + 1);
      v48 = *(glitch::IReferenceCounted **)(a4 + 148);
      *(_DWORD *)(a4 + 148) = v47;
      if ( v48 )
        glitch::IReferenceCounted::drop(v48);
      v42 = v67;
      if ( v67 )
        goto LABEL_38;
    }
  }
  v60[0] = *(glitch::IReferenceCounted **)(a4 + 148);
  if ( v60[0] )
    ++*((_DWORD *)v60[0] + 1);
  v60[1] = nullptr;
  v60[2] = (glitch::IReferenceCounted *)(&dword_0 + 1);
  v61 = 4;
  v62 = v28;
  glitch::video::CVertexStreams::setStream((glitch::video::CVertexStreams *)v9, v27, v60);
  if ( v60[0] )
    glitch::IReferenceCounted::drop(v60[0]);
  v43 = *(unsigned __int8 *)(a4 + 152);
  v57[0] = *(glitch::IReferenceCounted **)(a4 + 148);
  if ( v57[0] )
    ++*((_DWORD *)v57[0] + 1);
  v57[1] = (glitch::IReferenceCounted *)byte_4;
  v57[2] = (glitch::IReferenceCounted *)&byte_6;
  v58 = v43;
  v59 = v28;
  glitch::video::CVertexStreams::setStream((glitch::video::CVertexStreams *)v9, v27 - 16, v57);
  if ( v57[0] )
    glitch::IReferenceCounted::drop(v57[0]);
  return v54;
}


// ===== 671428 glitch::ITimer::~ITimer() =====
void __fastcall glitch::ITimer::~ITimer(glitch::ITimer *this)
{
  ;
}


// ===== 67142c glitch::IDevice::isExitRequested(void) =====
int __fastcall glitch::IDevice::isExitRequested(glitch::IDevice *this)
{
  return 0;
}


// ===== 671434 glitch::video::IVideoModeList::~IVideoModeList() =====
void __fastcall glitch::video::IVideoModeList::~IVideoModeList(glitch::video::IVideoModeList *this)
{
  ;
}


// ===== 671438 glitch::IDevice::setScreenCapture(bool) =====
void __fastcall glitch::IDevice::setScreenCapture(glitch::IDevice *this, bool a2)
{
  ;
}


// ===== 67143c glitch::IDevice::getVideoModeList(void) =====
char *__fastcall glitch::IDevice::getVideoModeList(glitch::IDevice *this)
{
  return (char *)this + 60;
}


// ===== 671444 glitch::IDevice::setInputReceivingSceneManager(glitch::scene::CSceneManager *) =====
int __fastcall glitch::IDevice::setInputReceivingSceneManager(int this, glitch::scene::CSceneManager *a2)
{
  _DWORD *v2; // r3
  int v3; // r4

  v2 = *(_DWORD **)(this + 56);
  v3 = this;
  if ( v2 )
    this = glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v2 + *(_DWORD *)(*v2 - 12)));
  *(_DWORD *)(v3 + 56) = a2;
  if ( a2 )
    ++*(_DWORD *)((char *)a2 + *(_DWORD *)(*(_DWORD *)a2 - 12) + 4);
  return this;
}


// ===== 671494 glitch::IDevice::isFullscreen(void) =====
int __fastcall glitch::IDevice::isFullscreen(glitch::IDevice *this)
{
  return *((unsigned __int8 *)this + 106);
}


// ===== 67149c glitch::IDevice::getColorFormat(void) =====
int __fastcall glitch::IDevice::getColorFormat(glitch::IDevice *this)
{
  return 5;
}


// ===== 6714a4 glitch::CTimer::~CTimer() =====
void __fastcall glitch::CTimer::~CTimer(glitch::CTimer *this)
{
  ;
}


// ===== 6714a8 `global constructor keyed to'.._source_glitch_IDevice.cpp =====
void `global constructor keyed to'.._source_glitch_IDevice.cpp()
{
  dword_9F7588 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7584 = 1056964608;
}


// ===== 6714c8 glitch::IDevice::setEventReceiver(glitch::IEventReceiver *) =====
glitch::CLogger *__fastcall glitch::IDevice::setEventReceiver(glitch::IDevice *this, glitch::IEventReceiver *a2)
{
  glitch::CLogger *result; // r0
  int v5; // r3

  result = *((glitch::CLogger **)this + 11);
  *((_DWORD *)this + 10) = a2;
  if ( result )
    result = (glitch::CLogger *)glitch::CLogger::setReceiver(result, a2);
  v5 = *((_DWORD *)this + 6);
  if ( v5 )
    return (glitch::CLogger *)(*(int (__fastcall **)(_DWORD, glitch::IEventReceiver *))(*(_DWORD *)v5 + 52))(
                                *((_DWORD *)this + 6),
                                a2);
  return result;
}


// ===== 67150c std::priv::_Deque_base<glitch::SEvent,glitch::core::SAllocator<glitch::SEvent,(glitch::memory::E_MEMORY_HINT)0>>::~_Deque_base() =====
_DWORD *__fastcall std::priv::_Deque_base<glitch::SEvent,glitch::core::SAllocator<glitch::SEvent,(glitch::memory::E_MEMORY_HINT)0>>::~_Deque_base(
        _DWORD *a1)
{
  void *v2; // r0
  void **v3; // r4
  unsigned int v4; // r5
  void *v5; // t1

  v2 = (void *)a1[8];
  if ( v2 )
  {
    v3 = (void **)a1[3];
    v4 = a1[7] + 4;
    if ( (unsigned int)v3 < v4 )
    {
      do
      {
        v5 = *v3++;
        GlitchFree(v5);
      }
      while ( v4 > (unsigned int)v3 );
      v2 = (void *)a1[8];
    }
    GlitchFree(v2);
  }
  return a1;
}


// ===== 671554 glitch::IDevice::createGUIAndScene(void) =====
glitch::CLogger *__fastcall glitch::IDevice::createGUIAndScene(glitch::IDevice *this)
{
  int *v1; // r4
  void *v2; // r5
  _DWORD *Instance; // r0
  glitch::CIrrFactory *v4; // r0
  _DWORD *v5; // r0
  int v6; // r0
  glitch::IEventReceiver *v7; // r1

  v1 = (int *)this;
  if ( *((_DWORD *)this + 4) )
  {
    v2 = operator new(0x20u, 0);
    this = (glitch::IDevice *)glitch::video::C2DDriver::C2DDriver((int)v2, v1[4]);
    v1[5] = (int)v2;
  }
  Instance = glitch::CIrrFactory::getInstance(this);
  v4 = (glitch::CIrrFactory *)(*(int (__fastcall **)(_DWORD *, int *, int, int))(*Instance + 16))(
                                Instance,
                                v1 + 13,
                                v1[4],
                                v1[12]);
  v1[6] = (int)v4;
  v5 = glitch::CIrrFactory::getInstance(v4);
  v6 = (*(int (__fastcall **)(_DWORD *, int, int *, int, int))(*v5 + 12))(v5, v1[4], v1 + 13, v1[9], v1[6]);
  v7 = (glitch::IEventReceiver *)v1[10];
  v1[7] = v6;
  return glitch::IDevice::setEventReceiver((glitch::IDevice *)v1, v7);
}


// ===== 6715e8 glitch::video::IVideoModeList::~IVideoModeList() =====
void __fastcall glitch::video::IVideoModeList::~IVideoModeList(glitch::video::IVideoModeList *this)
{
  LC_API_FREE_0(this);
}


// ===== 6715fc glitch::CTimer::~CTimer() =====
void __fastcall glitch::CTimer::~CTimer(glitch::CTimer *this)
{
  LC_API_FREE_0(this);
}


// ===== 671610 glitch::ITimer::~ITimer() =====
void __fastcall glitch::ITimer::~ITimer(glitch::ITimer *this)
{
  LC_API_FREE_0(this);
}


// ===== 671624 std::vector<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry,glitch::core::SAllocator<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
char **__fastcall std::vector<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry,glitch::core::SAllocator<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        void **a1)
{
  char *v1; // r4
  char *v2; // r7
  _DWORD *v4; // r5
  void *v6; // r0

  v1 = (char *)a1[1];
  v2 = (char *)*a1;
  if ( v1 != *a1 )
  {
    do
    {
      v4 = *((_DWORD **)v1 - 2);
      if ( v4 )
      {
        if ( (*v4)-- == 1 )
        {
          v6 = (void *)v4[3];
          if ( v6 )
            operator delete[](v6);
          v4[3] = 0;
        }
        *((_DWORD *)v1 - 2) = 0;
      }
      v1 -= 12;
    }
    while ( v2 != v1 );
  }
  if ( *a1 )
    GlitchFree(*a1);
  return (char **)a1;
}


// ===== 67169c glitch::IDevice::~IDevice() =====
void __fastcall glitch::IDevice::~IDevice(glitch::IDevice *this)
{
  _DWORD *v1; // r2
  glitch::IReferenceCounted *v3; // r0
  void **v4; // r6
  glitch::IReferenceCounted *v5; // r0
  glitch::IReferenceCounted *v6; // r0
  glitch::IReferenceCounted *v7; // r0
  _DWORD *v8; // r3
  glitch::IReferenceCounted *v9; // r0
  glitch::IReferenceCounted *v10; // r0
  glitch *v11; // r0
  glitch::IReferenceCounted *v12; // r0
  int v13; // r3
  int v14; // r1
  int v15; // r2
  int v16; // r12
  int v17; // r3
  bool v18; // zf
  int v19; // t1
  void *v20; // r0
  glitch::IReferenceCounted *v21; // r0

  v1 = *((_DWORD **)this + 7);
  *(_DWORD *)this = off_9856C8;
  if ( v1 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 12)));
  v3 = *((glitch::IReferenceCounted **)this + 2);
  if ( v3 )
    glitch::IReferenceCounted::drop(v3);
  v4 = *((void ***)this + 3);
  if ( v4 )
  {
    std::vector<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry,glitch::core::SAllocator<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v4 + 3);
    if ( *v4 )
      GlitchFree(*v4);
    LC_API_FREE_0(v4);
  }
  v5 = *((glitch::IReferenceCounted **)this + 6);
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  v6 = *((glitch::IReferenceCounted **)this + 5);
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  v7 = *((glitch::IReferenceCounted **)this + 4);
  if ( v7 )
    glitch::IReferenceCounted::drop(v7);
  v8 = *((_DWORD **)this + 14);
  if ( v8 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v8 + *(_DWORD *)(*v8 - 12)));
  v9 = *((glitch::IReferenceCounted **)this + 9);
  if ( v9 )
    glitch::IReferenceCounted::drop(v9);
  v10 = *((glitch::IReferenceCounted **)this + 12);
  if ( v10 )
    glitch::IReferenceCounted::drop(v10);
  *((_DWORD *)this + 9) = 0;
  v11 = (glitch *)glitch::IReferenceCounted::drop(*((glitch::IReferenceCounted **)this + 8));
  glitch::exit(v11);
  v12 = *((glitch::IReferenceCounted **)this + 11);
  if ( v12 && glitch::IReferenceCounted::drop(v12) )
    glitch::os::Printer::Logger = 0;
  v13 = *((_DWORD *)this + 45);
  v14 = *((_DWORD *)this + 49);
  v15 = *((_DWORD *)this + 47);
  v16 = *((_DWORD *)this + 48);
  if ( v14 != v13 )
  {
    while ( 1 )
    {
      v17 = v13 + 24;
      if ( v17 != v15 )
        break;
LABEL_28:
      v19 = *(_DWORD *)(v16 + 4);
      v16 += 4;
      v13 = v19;
      v15 = v19 + 120;
      if ( v14 == v19 )
        goto LABEL_29;
    }
    while ( 1 )
    {
      v18 = v14 == v17;
      v17 += 24;
      if ( v18 )
        break;
      if ( v15 == v17 )
        goto LABEL_28;
    }
  }
LABEL_29:
  std::priv::_Deque_base<glitch::SEvent,glitch::core::SAllocator<glitch::SEvent,(glitch::memory::E_MEMORY_HINT)0>>::~_Deque_base((_DWORD *)this + 45);
  v20 = *((void **)this + 17);
  *((_DWORD *)this + 15) = off_98AE08;
  if ( v20 )
    GlitchFree(v20);
  v21 = *((glitch::IReferenceCounted **)this + 13);
  *((_DWORD *)this + 15) = off_95B720;
  if ( v21 )
    glitch::IReferenceCounted::drop(v21);
}


// ===== 671868 glitch::CTimer::tick(void) =====
// attributes: thunk
int __fastcall glitch::CTimer::tick(glitch::os::Timer *this)
{
  return glitch::os::Timer::tick(this);
}


// ===== 67186c glitch::CTimer::isStopped(void) =====
// attributes: thunk
int __fastcall glitch::CTimer::isStopped(glitch::os::Timer *this)
{
  return glitch::os::Timer::isStopped(this);
}


// ===== 671870 glitch::CTimer::getSpeed(void) =====
// attributes: thunk
int __fastcall glitch::CTimer::getSpeed(glitch::os::Timer *this)
{
  return glitch::os::Timer::getSpeed(this);
}


// ===== 671874 glitch::CTimer::setSpeed(float) =====
bool __fastcall glitch::CTimer::setSpeed(glitch::CTimer *this, glitch::os::Timer *a2)
{
  return glitch::os::Timer::setSpeed(a2, *(float *)&a2);
}


// ===== 67187c glitch::CTimer::start(void) =====
// attributes: thunk
int __fastcall glitch::CTimer::start(glitch::os::Timer *this)
{
  return glitch::os::Timer::startTimer(this);
}


// ===== 671880 glitch::CTimer::stop(void) =====
// attributes: thunk
int __fastcall glitch::CTimer::stop(glitch::os::Timer *this)
{
  return glitch::os::Timer::stopTimer(this);
}


// ===== 671884 glitch::CTimer::setTime(uint) =====
int __fastcall glitch::CTimer::setTime(glitch::CTimer *this, glitch::os::Timer *a2)
{
  return glitch::os::Timer::setTime(a2, (unsigned int)a2);
}


// ===== 67188c glitch::CTimer::getTime(void) =====
// attributes: thunk
unsigned int __fastcall glitch::CTimer::getTime(glitch::os::Timer *this)
{
  return glitch::os::Timer::getTime(this);
}


// ===== 671890 glitch::CTimer::getRealTime(void) =====
// attributes: thunk
int __fastcall glitch::CTimer::getRealTime(glitch::os::Timer *this)
{
  return glitch::os::Timer::getRealTime(this);
}


// ===== 671894 std::deque<glitch::SEvent,glitch::core::SAllocator<glitch::SEvent,(glitch::memory::E_MEMORY_HINT)0>>::_M_push_back_aux_v(glitch::SEvent const&) =====
int __fastcall std::deque<glitch::SEvent,glitch::core::SAllocator<glitch::SEvent,(glitch::memory::E_MEMORY_HINT)0>>::_M_push_back_aux_v(
        int a1,
        int *a2)
{
  char *v2; // r10
  int v3; // r2
  unsigned int v4; // r3
  int *v7; // r12
  int v8; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int *v12; // r5
  int result; // r0
  int v14; // r1
  int *v15; // r2
  int v16; // r3
  int v17; // r2
  char *v18; // r1
  int v19; // r7
  int v20; // r9
  char *v21; // r6
  int v22; // r2
  unsigned int v23; // r8
  char *v24; // r0
  const void *v25; // r1
  size_t v26; // r2
  char *v27; // r10
  int v28; // r3
  int v29; // r3

  v2 = *(char **)(a1 + 28);
  v3 = *(_DWORD *)(a1 + 32);
  v4 = *(_DWORD *)(a1 + 36);
  if ( v4 - ((int)&v2[-v3] >> 2) <= 1 )
  {
    v18 = *(char **)(a1 + 12);
    v19 = ((v2 - v18) >> 2) + 1;
    v20 = ((v2 - v18) >> 2) + 2;
    if ( v4 <= 2 * v20 )
    {
      if ( v4 )
        v22 = *(_DWORD *)(a1 + 36);
      else
        v22 = 1;
      v23 = v4 + 2 + v22;
      v24 = (char *)GlitchAlloc(4 * v23, 0);
      v25 = *(const void **)(a1 + 12);
      v26 = *(_DWORD *)(a1 + 28) + 4 - (_DWORD)v25;
      v27 = v24;
      v21 = &v24[4 * ((v23 - v20) >> 1)];
      if ( v26 )
        memmove(&v24[4 * ((v23 - v20) >> 1)], v25, v26);
      GlitchFree(*(void **)(a1 + 32));
      *(_DWORD *)(a1 + 32) = v27;
      *(_DWORD *)(a1 + 36) = v23;
    }
    else
    {
      v21 = (char *)(v3 + 4 * ((v4 - v20) >> 1));
      if ( v18 <= v21 )
      {
        if ( v2 + 4 - v18 > 0 )
          memmove(&v21[4 * v19 - (v2 + 4 - v18)], v18, v2 + 4 - v18);
      }
      else if ( v2 + 4 != v18 )
      {
        memmove(v21, v18, v2 + 4 - v18);
      }
    }
    *(_DWORD *)(a1 + 12) = v21;
    v28 = *(_DWORD *)v21;
    v2 = &v21[4 * v19 - 4];
    *(_DWORD *)(a1 + 8) = *(_DWORD *)v21 + 120;
    *(_DWORD *)(a1 + 4) = v28;
    *(_DWORD *)(a1 + 28) = v2;
    v29 = *(_DWORD *)v2;
    *(_DWORD *)(a1 + 24) = *(_DWORD *)v2 + 120;
    *(_DWORD *)(a1 + 20) = v29;
  }
  *((_DWORD *)v2 + 1) = GlitchAlloc(0x78u, 0);
  v7 = *(int **)(a1 + 16);
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2 + 4;
  *v7 = v8;
  v7[1] = v9;
  v7[2] = v10;
  v7[3] = v11;
  v7 += 4;
  result = *v12;
  v14 = v12[1];
  *v7 = *v12;
  v7[1] = v14;
  v15 = (int *)(*(_DWORD *)(a1 + 28) + 4);
  *(_DWORD *)(a1 + 28) = v15;
  v16 = *v15;
  v17 = *v15 + 120;
  *(_DWORD *)(a1 + 16) = v16;
  *(_DWORD *)(a1 + 24) = v17;
  *(_DWORD *)(a1 + 20) = v16;
  return result;
}


// ===== 671a00 glitch::IDevice::postEventFromUser(glitch::SEvent const&,bool) =====
int __fastcall glitch::IDevice::postEventFromUser(_DWORD *a1, int *a2, int a3)
{
  int *v5; // r12
  int v6; // r0
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int *v10; // r5
  int v11; // r1
  int v12; // r12
  int v14; // r3
  int v15; // r3

  if ( a3 )
  {
    v5 = (int *)a1[49];
    if ( v5 == (int *)(a1[51] - 24) )
    {
      std::deque<glitch::SEvent,glitch::core::SAllocator<glitch::SEvent,(glitch::memory::E_MEMORY_HINT)0>>::_M_push_back_aux_v(
        (int)(a1 + 45),
        a2);
      return 1;
    }
    else
    {
      v6 = *a2;
      v7 = a2[1];
      v8 = a2[2];
      v9 = a2[3];
      v10 = a2 + 4;
      *v5 = v6;
      v5[1] = v7;
      v5[2] = v8;
      v5[3] = v9;
      v11 = v10[1];
      v5[4] = *v10;
      v5[5] = v11;
      v12 = 1;
      a1[49] += 24;
    }
    return v12;
  }
  v14 = a1[10];
  if ( !v14 || (v12 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v14 + 8))(a1[10])) == 0 )
  {
    v12 = a1[6];
    if ( v12 )
      v12 = (*(int (__fastcall **)(_DWORD, int *))(*(_DWORD *)v12 + 48))(a1[6], a2);
  }
  v15 = a1[14];
  if ( !v15 )
    v15 = a1[7];
  if ( v12 || !v15 )
    return v12;
  return (*(int (__fastcall **)(int, int *))(*(_DWORD *)v15 + 100))(v15, a2);
}


// ===== 671aec glitch::IDevice::postMouseEventFromUser(glitch::SEvent &,bool) =====
int __fastcall glitch::IDevice::postMouseEventFromUser(_DWORD *a1, int *a2, int a3)
{
  int v3; // r12
  int v4; // r4
  int v5; // r12

  v3 = **(_DWORD **)(a1[4] + 200);
  v4 = *(_DWORD *)(v3 + 40);
  v5 = a2[2] - *(_DWORD *)(v3 + 36);
  a2[3] -= v4;
  a2[2] = v5;
  return glitch::IDevice::postEventFromUser(a1, a2, a3);
}


// ===== 671b24 glitch::IDevice::run(void) =====
int __fastcall glitch::IDevice::run(glitch::IDevice *this)
{
  int *i; // r12
  int v3; // r1
  int v4; // r2
  int v5; // r3
  int v6; // r0
  int v7; // r1
  int v8; // r2
  bool v9; // zf
  int *v11; // r2
  int v12; // r3
  int v13[6]; // [sp+0h] [bp-18h] BYREF

  for ( i = *((int **)this + 45); *((int **)this + 49) != i; i = *((int **)this + 45) )
  {
    v3 = i[1];
    v4 = i[2];
    v5 = i[3];
    v13[0] = *i;
    v13[1] = v3;
    v13[2] = v4;
    v13[3] = v5;
    v6 = i[4];
    v7 = i[5];
    v8 = *((_DWORD *)this + 47) - 24;
    v9 = i == (int *)v8;
    if ( i != (int *)v8 )
      i += 6;
    v13[4] = v6;
    v13[5] = v7;
    if ( v9 )
    {
      GlitchFree(*((void **)this + 46));
      v11 = (int *)(*((_DWORD *)this + 48) + 4);
      *((_DWORD *)this + 48) = v11;
      v12 = *v11;
      *((_DWORD *)this + 47) = *v11 + 120;
      *((_DWORD *)this + 45) = v12;
      *((_DWORD *)this + 46) = v12;
    }
    else
    {
      *((_DWORD *)this + 45) = i;
    }
    glitch::IDevice::postEventFromUser(this, v13, 0);
  }
  return (*(int (__fastcall **)(glitch::IDevice *))(*(_DWORD *)this + 64))(this);
}


// ===== 671bd8 std::priv::_Deque_base<glitch::SEvent,glitch::core::SAllocator<glitch::SEvent,(glitch::memory::E_MEMORY_HINT)0>>::_M_initialize_map(uint) [clone] =====
void *__fastcall std::priv::_Deque_base<glitch::SEvent,glitch::core::SAllocator<glitch::SEvent,(glitch::memory::E_MEMORY_HINT)0>>::_M_initialize_map(
        _DWORD *a1)
{
  _DWORD *v2; // r5
  int v3; // r6
  void *result; // r0
  unsigned int v5; // r6
  int *v6; // r3
  int v7; // r2
  int v8; // r3

  a1[9] = 8;
  v2 = GlitchAlloc(0x20u, 0);
  a1[8] = v2;
  v3 = a1[9];
  result = GlitchAlloc(0x78u, 0);
  v5 = (unsigned int)(v3 - 1) >> 1;
  v2[v5] = result;
  v6 = &v2[v5];
  a1[3] = v6;
  v7 = *v6;
  a1[7] = v6;
  a1[1] = v7;
  a1[2] = v7 + 120;
  v8 = *v6;
  *a1 = v7;
  a1[4] = v8;
  a1[6] = v8 + 120;
  a1[5] = v8;
  return result;
}


// ===== 671c4c std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(char const*,char const*) [clone] =====
_BYTE *__fastcall std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
        _DWORD *a1,
        char *a2)
{
  size_t v4; // r4
  _BYTE *result; // r0

  v4 = a2 - "Glitch Engine version ";
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    a1,
    a2 - "Glitch Engine version " + 1);
  result = (_BYTE *)a1[5];
  if ( a2 != "Glitch Engine version " )
    result = (char *)memcpy(result, "Glitch Engine version ", v4) + v4;
  a1[4] = result;
  *result = 0;
  return result;
}


// ===== 671c9c glitch::IDevice::~IDevice() =====
void __fastcall glitch::IDevice::~IDevice(glitch::IDevice *this)
{
  _DWORD *v1; // r2
  glitch::IReferenceCounted *v3; // r0
  void **v4; // r6
  glitch::IReferenceCounted *v5; // r0
  glitch::IReferenceCounted *v6; // r0
  glitch::IReferenceCounted *v7; // r0
  _DWORD *v8; // r3
  glitch::IReferenceCounted *v9; // r0
  glitch::IReferenceCounted *v10; // r0
  glitch *v11; // r0
  glitch::IReferenceCounted *v12; // r0
  int v13; // r3
  int v14; // r1
  int v15; // r2
  int v16; // r12
  int v17; // r3
  bool v18; // zf
  int v19; // t1
  void *v20; // r0
  glitch::IReferenceCounted *v21; // r0

  v1 = *((_DWORD **)this + 7);
  *(_DWORD *)this = off_9856C8;
  if ( v1 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 12)));
  v3 = *((glitch::IReferenceCounted **)this + 2);
  if ( v3 )
    glitch::IReferenceCounted::drop(v3);
  v4 = *((void ***)this + 3);
  if ( v4 )
  {
    std::vector<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry,glitch::core::SAllocator<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v4 + 3);
    if ( *v4 )
      GlitchFree(*v4);
    LC_API_FREE_0(v4);
  }
  v5 = *((glitch::IReferenceCounted **)this + 6);
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  v6 = *((glitch::IReferenceCounted **)this + 5);
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  v7 = *((glitch::IReferenceCounted **)this + 4);
  if ( v7 )
    glitch::IReferenceCounted::drop(v7);
  v8 = *((_DWORD **)this + 14);
  if ( v8 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v8 + *(_DWORD *)(*v8 - 12)));
  v9 = *((glitch::IReferenceCounted **)this + 9);
  if ( v9 )
    glitch::IReferenceCounted::drop(v9);
  v10 = *((glitch::IReferenceCounted **)this + 12);
  if ( v10 )
    glitch::IReferenceCounted::drop(v10);
  *((_DWORD *)this + 9) = 0;
  v11 = (glitch *)glitch::IReferenceCounted::drop(*((glitch::IReferenceCounted **)this + 8));
  glitch::exit(v11);
  v12 = *((glitch::IReferenceCounted **)this + 11);
  if ( v12 && glitch::IReferenceCounted::drop(v12) )
    glitch::os::Printer::Logger = 0;
  v13 = *((_DWORD *)this + 45);
  v14 = *((_DWORD *)this + 49);
  v15 = *((_DWORD *)this + 47);
  v16 = *((_DWORD *)this + 48);
  if ( v14 != v13 )
  {
    while ( 1 )
    {
      v17 = v13 + 24;
      if ( v17 != v15 )
        break;
LABEL_28:
      v19 = *(_DWORD *)(v16 + 4);
      v16 += 4;
      v13 = v19;
      v15 = v19 + 120;
      if ( v14 == v19 )
        goto LABEL_29;
    }
    while ( 1 )
    {
      v18 = v14 == v17;
      v17 += 24;
      if ( v18 )
        break;
      if ( v15 == v17 )
        goto LABEL_28;
    }
  }
LABEL_29:
  std::priv::_Deque_base<glitch::SEvent,glitch::core::SAllocator<glitch::SEvent,(glitch::memory::E_MEMORY_HINT)0>>::~_Deque_base((_DWORD *)this + 45);
  v20 = *((void **)this + 17);
  *((_DWORD *)this + 15) = off_98AE08;
  if ( v20 )
    GlitchFree(v20);
  v21 = *((glitch::IReferenceCounted **)this + 13);
  *((_DWORD *)this + 15) = off_95B720;
  if ( v21 )
    glitch::IReferenceCounted::drop(v21);
}


// ===== 671e68 glitch::IDevice::~IDevice() =====
void __fastcall glitch::IDevice::~IDevice(glitch::IDevice *this)
{
  glitch::IDevice::~IDevice(this);
  LC_API_FREE_0(this);
}


// ===== 671e84 glitch::IDevice::checkVersion(char const*) =====
int __fastcall glitch::IDevice::checkVersion(glitch::IDevice *this, char *a2)
{
  size_t v4; // r2
  int v5; // r1
  size_t v6; // r0
  char *v7; // r3
  _DWORD v8[4]; // [sp+4h] [bp-20h] BYREF
  char *v9; // [sp+14h] [bp-10h]
  void *p; // [sp+18h] [bp-Ch]

  if ( !LC_API_STRCMP_0("0.1.0.2", a2) )
    return 1;
  v9 = (char *)v8;
  p = v8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v8,
    0x10u);
  *v9 = 0;
  v4 = v9 - (_BYTE *)p;
  if ( (unsigned int)(v9 - (_BYTE *)p) > 0x32 )
  {
    memcpy(p, "Warning: The library version of the Glitch Engine (", 0x33u);
    if ( (char *)p + 51 != v9 )
    {
      v7 = (char *)((_BYTE *)p + 51 - v9);
      *((_BYTE *)p + 51) = *v9;
      v9 = &v7[(_DWORD)v9];
    }
  }
  else
  {
    if ( v4 )
    {
      memcpy(p, "Warning: The library version of the Glitch Engine (", v4);
      v5 = v9 - (_BYTE *)p;
    }
    else
    {
      v5 = 0;
    }
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
      v8,
      &aWarningTheLibr[v5],
      "");
  }
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
    v8,
    "0.1.0.2",
    "");
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
    v8,
    ") does not match the version the application was compiled with (",
    "");
  v6 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
    v8,
    a2,
    &a2[v6]);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
    v8,
    "). This may cause problems.",
    "");
  glitch::os::Printer::log((int)p, 2);
  if ( p == v8 || !p )
    return 0;
  GlitchFree(p);
  return 0;
}


// ===== 672040 glitch::IDevice::IDevice(glitch::SCreationParameters const&) =====
_DWORD *__fastcall glitch::IDevice::IDevice(_DWORD *a1, int a2)
{
  int v2; // r2
  glitch *v5; // r0
  void *v6; // r9
  _DWORD *v7; // r9
  glitch::os::Timer *v8; // r0
  glitch::os::Timer *v9; // r9
  glitch::CIrrFactory *inited; // r0
  glitch::CLogger *v11; // r0
  glitch::IEventReceiver *v12; // r1
  _DWORD *Instance; // r0
  glitch::IReferenceCounted *v14; // r3
  glitch::IReferenceCounted *v15; // r0
  glitch::IReferenceCounted *v17; // [sp+0h] [bp-20h] BYREF
  void *v18[5]; // [sp+4h] [bp-1Ch] BYREF
  void *p; // [sp+18h] [bp-8h]
  int v20; // [sp+1Ch] [bp-4h]

  v2 = _stack_chk_guard;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0;
  *a1 = off_9856C8;
  a1[1] = 1;
  a1[10] = *(_DWORD *)(a2 + 40);
  a1[11] = 0;
  a1[12] = 0;
  a1[13] = 0;
  a1[14] = 0;
  v20 = v2;
  glitch::video::CVideoModeList::CVideoModeList((glitch::video::CVideoModeList *)(a1 + 15));
  memcpy(a1 + 23, (const void *)a2, 0x58u);
  a1[45] = 0;
  a1[46] = 0;
  a1[47] = 0;
  a1[48] = 0;
  a1[49] = 0;
  a1[50] = 0;
  a1[51] = 0;
  a1[52] = 0;
  a1[53] = 0;
  a1[54] = 0;
  v5 = (glitch *)std::priv::_Deque_base<glitch::SEvent,glitch::core::SAllocator<glitch::SEvent,(glitch::memory::E_MEMORY_HINT)0>>::_M_initialize_map(a1 + 45);
  glitch::init(v5);
  v6 = operator new(0x2Cu, 0);
  glitch::collada::CResFileManager::CResFileManager((int)v6, (int)a1);
  a1[2] = v6;
  v7 = operator new(0x20u, 0);
  glitch::collada::CAnimationStreamingManager::CAnimationStreamingManager(v7);
  a1[3] = v7;
  v8 = (glitch::os::Timer *)operator new(8u, 0);
  *((_DWORD *)v8 + 1) = 1;
  v9 = v8;
  *(_DWORD *)v8 = off_985658;
  inited = (glitch::CIrrFactory *)glitch::os::Timer::initTimer(v8);
  a1[8] = v9;
  if ( glitch::os::Printer::Logger )
  {
    ++*(_DWORD *)(glitch::os::Printer::Logger + 4);
    v11 = (glitch::CLogger *)glitch::os::Printer::Logger;
    v12 = (glitch::IEventReceiver *)a1[10];
    a1[11] = glitch::os::Printer::Logger;
    inited = (glitch::CIrrFactory *)glitch::CLogger::setReceiver(v11, v12);
  }
  glitch::os::Printer::Logger = a1[11];
  Instance = glitch::CIrrFactory::getInstance(inited);
  (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD *))(*Instance + 8))(&v17, Instance);
  v14 = v17;
  if ( v17 )
    ++*((_DWORD *)v17 + 1);
  v15 = (glitch::IReferenceCounted *)a1[13];
  a1[13] = v14;
  if ( v15 )
    glitch::IReferenceCounted::drop(v15);
  if ( v17 )
    glitch::IReferenceCounted::drop(v17);
  v18[4] = v18;
  p = v18;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v18,
    "");
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
    v18,
    "0.1.0.2",
    "");
  glitch::os::Printer::log((int)p, 1);
  glitch::IDevice::checkVersion((glitch::IDevice *)a1, *(char **)(a2 + 60));
  if ( p != v18 && p )
    GlitchFree(p);
  return a1;
}


// ===== 67228c glitch::IDevice::IDevice(glitch::SCreationParameters const&) =====
_DWORD *__fastcall glitch::IDevice::IDevice(_DWORD *a1, int a2)
{
  int v2; // r2
  glitch *v5; // r0
  void *v6; // r9
  _DWORD *v7; // r9
  glitch::os::Timer *v8; // r0
  glitch::os::Timer *v9; // r9
  glitch::CIrrFactory *inited; // r0
  glitch::CLogger *v11; // r0
  glitch::IEventReceiver *v12; // r1
  _DWORD *Instance; // r0
  glitch::IReferenceCounted *v14; // r3
  glitch::IReferenceCounted *v15; // r0
  glitch::IReferenceCounted *v17; // [sp+0h] [bp-20h] BYREF
  void *v18[5]; // [sp+4h] [bp-1Ch] BYREF
  void *p; // [sp+18h] [bp-8h]
  int v20; // [sp+1Ch] [bp-4h]

  v2 = _stack_chk_guard;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0;
  *a1 = off_9856C8;
  a1[1] = 1;
  a1[10] = *(_DWORD *)(a2 + 40);
  a1[11] = 0;
  a1[12] = 0;
  a1[13] = 0;
  a1[14] = 0;
  v20 = v2;
  glitch::video::CVideoModeList::CVideoModeList((glitch::video::CVideoModeList *)(a1 + 15));
  memcpy(a1 + 23, (const void *)a2, 0x58u);
  a1[45] = 0;
  a1[46] = 0;
  a1[47] = 0;
  a1[48] = 0;
  a1[49] = 0;
  a1[50] = 0;
  a1[51] = 0;
  a1[52] = 0;
  a1[53] = 0;
  a1[54] = 0;
  v5 = (glitch *)std::priv::_Deque_base<glitch::SEvent,glitch::core::SAllocator<glitch::SEvent,(glitch::memory::E_MEMORY_HINT)0>>::_M_initialize_map(a1 + 45);
  glitch::init(v5);
  v6 = operator new(0x2Cu, 0);
  glitch::collada::CResFileManager::CResFileManager((int)v6, (int)a1);
  a1[2] = v6;
  v7 = operator new(0x20u, 0);
  glitch::collada::CAnimationStreamingManager::CAnimationStreamingManager(v7);
  a1[3] = v7;
  v8 = (glitch::os::Timer *)operator new(8u, 0);
  *((_DWORD *)v8 + 1) = 1;
  v9 = v8;
  *(_DWORD *)v8 = off_985658;
  inited = (glitch::CIrrFactory *)glitch::os::Timer::initTimer(v8);
  a1[8] = v9;
  if ( glitch::os::Printer::Logger )
  {
    ++*(_DWORD *)(glitch::os::Printer::Logger + 4);
    v11 = (glitch::CLogger *)glitch::os::Printer::Logger;
    v12 = (glitch::IEventReceiver *)a1[10];
    a1[11] = glitch::os::Printer::Logger;
    inited = (glitch::CIrrFactory *)glitch::CLogger::setReceiver(v11, v12);
  }
  glitch::os::Printer::Logger = a1[11];
  Instance = glitch::CIrrFactory::getInstance(inited);
  (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD *))(*Instance + 8))(&v17, Instance);
  v14 = v17;
  if ( v17 )
    ++*((_DWORD *)v17 + 1);
  v15 = (glitch::IReferenceCounted *)a1[13];
  a1[13] = v14;
  if ( v15 )
    glitch::IReferenceCounted::drop(v15);
  if ( v17 )
    glitch::IReferenceCounted::drop(v17);
  v18[4] = v18;
  p = v18;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v18,
    "");
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
    v18,
    "0.1.0.2",
    "");
  glitch::os::Printer::log((int)p, 1);
  glitch::IDevice::checkVersion((glitch::IDevice *)a1, *(char **)(a2 + 60));
  if ( p != v18 && p )
    GlitchFree(p);
  return a1;
}


// ===== 6724d8 boost::object_pool<glitch::core::aabbox3d<float>,glitch::core::SAllocator<glitch::core::aabbox3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::~object_pool() =====
_DWORD *__fastcall boost::object_pool<glitch::core::aabbox3d<float>,glitch::core::SAllocator<glitch::core::aabbox3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::~object_pool(
        _DWORD *a1)
{
  char *v1; // r4
  unsigned int v3; // r7
  int v4; // r8
  unsigned int v5; // r5
  unsigned int v6; // r0
  unsigned int v7; // r3
  int v8; // r0
  char *v9; // r3
  int v10; // r5
  char *v11; // r2
  char *v12; // r7
  char *v13; // r3

  v1 = (char *)a1[1];
  if ( v1 )
  {
    v3 = a1[3];
    v4 = a1[2];
    v5 = 4;
    v6 = v3;
    do
    {
      v7 = v5;
      v5 = v6 % v5;
      v6 = v7;
    }
    while ( v5 );
    v8 = v3 / v7;
    v9 = v1;
    v10 = 4 * v8;
    while ( 1 )
    {
      v11 = &v9[v4 - 4];
      v4 = *(_DWORD *)v11;
      v12 = *((char **)v11 - 1);
      if ( v11 - 4 != v1 )
      {
        v13 = &v1[v10];
        do
          v13 += v10;
        while ( v11 - 4 != &v13[-v10] );
      }
      GlitchFree(v1);
      v9 = v12;
      if ( !v12 )
        break;
      v1 = v12;
    }
    a1[1] = 0;
  }
  return a1;
}


// ===== 672578 boost::pool<glitch::core::SAlignedMalloc<(uchar)4>>::~pool() =====
_DWORD *__fastcall boost::pool<glitch::core::SAlignedMalloc<(unsigned char)4>>::~pool(_DWORD *a1)
{
  int v1; // r3
  int v3; // r5
  int *v4; // r2
  int v5; // r4
  int v6; // r2

  v1 = a1[1];
  v3 = a1[2];
  if ( v1 )
  {
    do
    {
      v4 = (int *)(v1 + v3 - 4);
      v5 = *(v4 - 1);
      v3 = *v4;
      GlitchFree(*(void **)(v1 - 4));
      v1 = v5;
    }
    while ( v5 );
    v6 = a1[5];
    *a1 = 0;
    a1[1] = 0;
    a1[4] = v6;
  }
  return a1;
}


// ===== 6725c8 `global constructor keyed to'.._source_glitch_memory_MemoryPools.cpp =====
int `global constructor keyed to'.._source_glitch_memory_MemoryPools.cpp()
{
  dword_9F7594 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7590 = 1056964608;
  dword_9F75A4 = 68;
  glitch::memory::Matrix4Pool = 0;
  dword_9F759C = 0;
  dword_9F75A0 = 0;
  dword_9F75A8 = 32;
  dword_9F75AC = 32;
  _aeabi_atexit(
    (int)&glitch::memory::Matrix4Pool,
    (int)boost::pool<glitch::core::SAlignedMalloc<(unsigned char)4>>::~pool,
    (int)&_dso_handle);
  dword_9F75B8 = 0;
  dword_9F75BC = 24;
  dword_9F75C4 = 32;
  glitch::memory::Aabbox3dfPool = 0;
  dword_9F75B4 = 0;
  dword_9F75C0 = 32;
  return _aeabi_atexit(
           (int)&glitch::memory::Aabbox3dfPool,
           (int)boost::object_pool<glitch::core::aabbox3d<float>,glitch::core::SAllocator<glitch::core::aabbox3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::~object_pool,
           (int)&_dso_handle);
}


// ===== 67268c inflateReset =====
int __fastcall inflateReset(_DWORD *a1)
{
  _DWORD *v2; // r3

  if ( !a1 )
    return -2;
  v2 = (_DWORD *)a1[7];
  if ( !v2 )
    return -2;
  v2[7] = 0;
  a1[12] = 1;
  a1[5] = 0;
  a1[2] = 0;
  a1[6] = 0;
  v2[5] = 0x8000;
  v2[19] = v2 + 332;
  *v2 = 0;
  v2[1] = 0;
  v2[3] = 0;
  v2[8] = 0;
  v2[10] = 0;
  v2[11] = 0;
  v2[12] = 0;
  v2[14] = 0;
  v2[15] = 0;
  v2[27] = v2 + 332;
  v2[20] = v2 + 332;
  return 0;
}


// ===== 672708 inflatePrime =====
int __fastcall inflatePrime(int a1, int a2, int a3)
{
  int v4; // r3
  int v5; // r12
  int v6; // r0
  int v7; // r12

  if ( !a1 )
    return -2;
  v4 = *(_DWORD *)(a1 + 28);
  if ( !v4 )
    return -2;
  if ( a2 > 16 )
    return -2;
  v5 = *(_DWORD *)(v4 + 60);
  v6 = a2 + v5;
  if ( (unsigned int)(a2 + v5) > 0x20 )
    return -2;
  v7 = *(_DWORD *)(v4 + 56) + ((a3 & ~(-1 << a2)) << v5);
  *(_DWORD *)(v4 + 60) = v6;
  *(_DWORD *)(v4 + 56) = v7;
  return 0;
}


// ===== 672764 inflateInit2_ =====
int __fastcall inflateInit2_(_DWORD *a1, int a2, char *a3, int a4)
{
  int v7; // r2
  bool v8; // zf
  int (*v9)(); // r6
  _DWORD *v10; // r0
  int v11; // r3

  if ( !a3 )
    return -6;
  v7 = *a3;
  v8 = v7 == 49;
  if ( v7 == 49 )
    v8 = a4 == 56;
  if ( !v8 )
    return -6;
  if ( !a1 )
    return -2;
  v9 = (int (*)())a1[8];
  a1[6] = 0;
  if ( !v9 )
  {
    a1[10] = 0;
    v9 = zcalloc_0;
    a1[8] = zcalloc_0;
  }
  if ( !a1[9] )
    a1[9] = zcfree_0;
  v10 = (_DWORD *)((int (__fastcall *)(_DWORD, int, int))v9)(a1[10], 1, 9520);
  if ( !v10 )
    return -4;
  if ( a2 < 0 )
    v11 = 0;
  a1[7] = v10;
  if ( a2 >= 0 )
  {
    v10[2] = (a2 >> 4) + 1;
    if ( a2 <= 47 )
      a2 &= 0xFu;
  }
  else
  {
    a2 = -a2;
    v10[2] = v11;
  }
  if ( (unsigned int)(a2 - 8) > 7 )
  {
    ((void (__fastcall *)(_DWORD, _DWORD *))a1[9])(a1[10], v10);
    a1[7] = 0;
    return -2;
  }
  v10[13] = 0;
  v10[9] = a2;
  return inflateReset(a1);
}


// ===== 672884 inflateInit_ =====
int __fastcall inflateInit_(_DWORD *a1, char *a2, int a3)
{
  return inflateInit2_(a1, 15, a2, a3);
}


// ===== 672894 inflateEnd_0 =====
int __fastcall inflateEnd_0(_DWORD *a1)
{
  int v3; // r1
  void (__fastcall *v4)(_DWORD, int); // r3

  if ( !a1 )
    return -2;
  v3 = a1[7];
  if ( !v3 )
    return -2;
  v4 = (void (__fastcall *)(_DWORD, int))a1[9];
  if ( !v4 )
    return -2;
  if ( *(_DWORD *)(v3 + 52) )
  {
    v4(a1[10], *(_DWORD *)(v3 + 52));
    v4 = (void (__fastcall *)(_DWORD, int))a1[9];
    v3 = a1[7];
  }
  v4(a1[10], v3);
  a1[7] = 0;
  return 0;
}


// ===== 6728f4 inflateGetHeader =====
int __fastcall inflateGetHeader(int a1, int a2)
{
  int v3; // r3

  if ( !a1 )
    return -2;
  v3 = *(_DWORD *)(a1 + 28);
  if ( !v3 || (*(_DWORD *)(v3 + 8) & 2) == 0 )
    return -2;
  *(_DWORD *)(v3 + 32) = a2;
  *(_DWORD *)(a2 + 48) = 0;
  return 0;
}


// ===== 67292c inflateSync =====
int __fastcall inflateSync(_DWORD *a1)
{
  _DWORD *v3; // r4
  unsigned int v4; // r0
  int v5; // r2
  unsigned int v6; // r3
  unsigned int v7; // r2
  bool v8; // r6
  unsigned int v9; // r0
  unsigned int v10; // r2
  int v11; // r2
  int v12; // r2
  int v14; // r12
  int v15; // r6
  bool v16; // r2
  int v18; // r1
  int v19; // r2
  int v20; // r3
  int v21; // r6
  int v22; // r7
  _BYTE v23[8]; // [sp+4h] [bp-8h]

  if ( !a1 )
    return -2;
  v3 = (_DWORD *)a1[7];
  if ( !v3 )
    return -2;
  v4 = a1[1];
  if ( !v4 && v3[15] <= 7u )
    return -5;
  if ( *v3 == 29 )
  {
    v6 = v3[26];
    v8 = v6 <= 3;
  }
  else
  {
    v5 = v3[15];
    v6 = v3[14] << (v5 & 7);
    v7 = v5 & 0xFFFFFFF8;
    v3[14] = v6;
    if ( v7 <= 7 )
      v6 = 0;
    *v3 = 29;
    v3[15] = v7;
    if ( v7 > 7 )
    {
      v9 = 0;
      do
      {
        v23[v9++] = v6;
        v10 = v3[15] - 8;
        v6 = v3[14] >> 8;
        v3[14] = v6;
        v3[15] = v10;
      }
      while ( v10 > 7 );
      v11 = v9;
      if ( v9 )
        v11 = 1;
      v6 = 0;
      v3[26] = 0;
      if ( v11 )
      {
        v12 = 0;
        do
        {
          if ( v6 <= 1 )
            v14 = 0;
          else
            v14 = 255;
          if ( (unsigned __int8)v23[v12] == v14 )
          {
            v8 = ++v6 <= 3;
          }
          else if ( v23[v12] )
          {
            v8 = 1;
            v6 = 0;
          }
          else
          {
            v6 = 4 - v6;
            v8 = v6 <= 3;
          }
        }
        while ( v9 > ++v12 && v8 );
      }
      else
      {
        v8 = 1;
        v6 = 0;
      }
    }
    else
    {
      v3[26] = v6;
      v8 = 1;
    }
    v3[26] = v6;
    v4 = a1[1];
  }
  if ( v4 )
    v15 = v8;
  else
    v15 = 0;
  if ( v15 )
  {
    v15 = 0;
    do
    {
      if ( v6 <= 1 )
        v18 = 0;
      else
        v18 = 255;
      if ( *(unsigned __int8 *)(*a1 + v15) == v18 )
      {
        v16 = ++v6 <= 3;
      }
      else if ( *(_BYTE *)(*a1 + v15) )
      {
        v16 = 1;
        v6 = 0;
      }
      else
      {
        v6 = 4 - v6;
        v16 = v6 <= 3;
      }
    }
    while ( ++v15 < v4 && v16 );
  }
  v3[26] = v6;
  v19 = a1[1] - v15;
  v20 = *a1 + v15;
  v21 = v15 + a1[2];
  a1[1] = v19;
  *a1 = v20;
  a1[2] = v21;
  if ( v3[26] != 4 )
    return -3;
  v22 = a1[5];
  inflateReset(a1);
  a1[5] = v22;
  a1[2] = v21;
  *v3 = 11;
  return 0;
}


// ===== 672b6c inflateSyncPoint =====
int __fastcall inflateSyncPoint(int a1)
{
  _DWORD *v2; // r3

  if ( !a1 )
    return -2;
  v2 = *(_DWORD **)(a1 + 28);
  if ( !v2 )
    return -2;
  if ( *v2 == 13 )
    return v2[15] == 0;
  return 0;
}


// ===== 672ba8 inflateCopy =====
int __fastcall inflateCopy(_DWORD *a1, int *a2)
{
  bool v2; // zf
  int v6; // r5
  int (__fastcall *v7)(int, int, int); // r3
  _DWORD *v8; // r6
  void *v9; // r7
  int v10; // r0
  int v11; // r1
  int v12; // r2
  int v13; // r3
  int *v14; // r8
  int v15; // r0
  int v16; // r1
  int v17; // r2
  int v18; // r3
  int v19; // r0
  int v20; // r1
  int v21; // r2
  int v22; // r3
  int v23; // r1
  unsigned int v24; // r2
  int v25; // r3

  v2 = a1 == nullptr;
  if ( a1 )
    v2 = a2 == nullptr;
  if ( v2 )
    return -2;
  v6 = a2[7];
  if ( !v6 )
    return -2;
  v7 = (int (__fastcall *)(int, int, int))a2[8];
  if ( !v7 || !a2[9] )
    return -2;
  v8 = (_DWORD *)v7(a2[10], 1, 9520);
  if ( !v8 )
    return -4;
  v9 = *(void **)(v6 + 52);
  if ( v9 )
  {
    v9 = (void *)((int (__fastcall *)(int, int, int))a2[8])(a2[10], 1 << *(_DWORD *)(v6 + 36), 1);
    if ( !v9 )
    {
      ((void (__fastcall *)(int, _DWORD *))a2[9])(a2[10], v8);
      return -4;
    }
  }
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2 + 4;
  *a1 = v10;
  a1[1] = v11;
  a1[2] = v12;
  a1[3] = v13;
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  v18 = v14[3];
  v14 += 4;
  a1[4] = v15;
  a1[5] = v16;
  a1[6] = v17;
  a1[7] = v18;
  v19 = *v14;
  v20 = v14[1];
  v21 = v14[2];
  v22 = v14[3];
  v14 += 4;
  a1[8] = v19;
  a1[9] = v20;
  a1[10] = v21;
  a1[11] = v22;
  v23 = v14[1];
  a1[12] = *v14;
  a1[13] = v23;
  memcpy(v8, (const void *)v6, 0x2530u);
  v24 = *(_DWORD *)(v6 + 76);
  v25 = v6 + 1328;
  if ( v24 >= v6 + 1328 && v6 + 9516 >= v24 )
  {
    v8[19] = (char *)v8 + ((v24 - v25) & 0xFFFFFFFC) + 1328;
    v8[20] = (char *)v8 + ((*(_DWORD *)(v6 + 80) - v25) & 0xFFFFFFFC) + 1328;
  }
  v8[27] = (char *)v8 + ((*(_DWORD *)(v6 + 108) - v25) & 0xFFFFFFFC) + 1328;
  if ( v9 )
    memcpy(v9, *(const void **)(v6 + 52), 1 << *(_DWORD *)(v6 + 36));
  v8[13] = v9;
  a1[7] = v8;
  return 0;
}


// ===== 672d14 updatewindow =====
void *__fastcall updatewindow(int a1, int a2)
{
  int v2; // r4
  char *v5; // r0
  size_t v6; // r7
  size_t v7; // r5
  int v8; // r3
  size_t v9; // r7
  void *result; // r0
  size_t v11; // r5
  unsigned int v12; // r3
  size_t v13; // r2
  bool v14; // zf
  unsigned int v15; // r2
  int v16; // r3
  int v17; // r3

  v2 = *(_DWORD *)(a1 + 28);
  v5 = *(char **)(v2 + 52);
  if ( !v5 )
  {
    v5 = (char *)(*(int (__fastcall **)(_DWORD, int, int))(a1 + 32))(*(_DWORD *)(a1 + 40), 1 << *(_DWORD *)(v2 + 36), 1);
    *(_DWORD *)(v2 + 52) = v5;
    if ( !v5 )
      return &dword_0 + 1;
  }
  v6 = *(_DWORD *)(v2 + 40);
  if ( !v6 )
  {
    v6 = 1 << *(_DWORD *)(v2 + 36);
    *(_DWORD *)(v2 + 44) = 0;
    *(_DWORD *)(v2 + 40) = v6;
    *(_DWORD *)(v2 + 48) = 0;
    v7 = a2 - *(_DWORD *)(a1 + 16);
    if ( v7 < v6 )
      goto LABEL_4;
LABEL_16:
    memcpy(v5, (const void *)(*(_DWORD *)(a1 + 12) - v6), v6);
    v16 = *(_DWORD *)(v2 + 40);
    *(_DWORD *)(v2 + 48) = 0;
    *(_DWORD *)(v2 + 44) = v16;
    return nullptr;
  }
  v7 = a2 - *(_DWORD *)(a1 + 16);
  if ( v7 >= v6 )
    goto LABEL_16;
LABEL_4:
  v8 = *(_DWORD *)(v2 + 48);
  v9 = v6 - v8;
  if ( v9 >= v7 )
    v9 = v7;
  result = memcpy(&v5[v8], (const void *)(*(_DWORD *)(a1 + 12) - v7), v9);
  v11 = v7 - v9;
  if ( v11 )
  {
    memcpy(*(void **)(v2 + 52), (const void *)(*(_DWORD *)(a1 + 12) - v11), v11);
    v17 = *(_DWORD *)(v2 + 40);
    *(_DWORD *)(v2 + 48) = v11;
    *(_DWORD *)(v2 + 44) = v17;
    return nullptr;
  }
  else
  {
    v12 = *(_DWORD *)(v2 + 40);
    v13 = v9 + *(_DWORD *)(v2 + 48);
    v14 = v13 == v12;
    *(_DWORD *)(v2 + 48) = v13;
    v15 = *(_DWORD *)(v2 + 44);
    if ( v14 )
      *(_DWORD *)(v2 + 48) = 0;
    if ( v12 <= v15 )
      result = nullptr;
    else
      v9 += v15;
    if ( v12 > v15 )
    {
      *(_DWORD *)(v2 + 44) = v9;
      return nullptr;
    }
  }
  return result;
}


// ===== 672e54 inflateSetDictionary =====
int __fastcall inflateSetDictionary(int a1, char *a2, size_t a3)
{
  int v7; // r5
  size_t v8; // r2
  int v9; // r0

  if ( !a1 )
    return -2;
  v7 = *(_DWORD *)(a1 + 28);
  if ( !v7 )
    return -2;
  if ( !*(_DWORD *)(v7 + 8) )
  {
    if ( *(_DWORD *)v7 != 10 )
      goto LABEL_6;
    goto LABEL_12;
  }
  if ( *(_DWORD *)v7 != 10 )
    return -2;
LABEL_12:
  v9 = adler32_0(0, 0, 0);
  if ( adler32_0(v9, a2, a3) != *(_DWORD *)(v7 + 24) )
    return -3;
LABEL_6:
  if ( updatewindow(a1, *(_DWORD *)(a1 + 16)) )
  {
    *(_DWORD *)v7 = 28;
    return -4;
  }
  else
  {
    v8 = *(_DWORD *)(v7 + 40);
    if ( a3 <= v8 )
    {
      memcpy((void *)(*(_DWORD *)(v7 + 52) + v8 - a3), a2, a3);
      *(_DWORD *)(v7 + 44) = a3;
    }
    else
    {
      memcpy(*(void **)(v7 + 52), &a2[a3 - v8], v8);
      *(_DWORD *)(v7 + 44) = *(_DWORD *)(v7 + 40);
    }
    *(_DWORD *)(v7 + 12) = 1;
    return 0;
  }
}


// ===== 672f48 inflate =====
int __fastcall inflate(unsigned __int8 **a1, int a2)
{
  int v3; // r10
  int *v5; // r6
  unsigned __int8 *v6; // r12
  unsigned __int8 *v7; // r11
  int v8; // r3
  bool v9; // zf
  int v10; // r0
  unsigned int v11; // r9
  unsigned int v12; // r5
  unsigned int v13; // r8
  unsigned __int8 *v14; // r7
  int v16; // t1
  int *v17; // r3
  int v18; // t1
  int v19; // r3
  int v20; // t1
  int v21; // r3
  unsigned int v22; // r3
  int v23; // t1
  unsigned int v24; // r3
  unsigned int v25; // r2
  unsigned int v26; // r3
  unsigned int v27; // r2
  unsigned __int16 *v28; // r2
  int v29; // t1
  int v30; // t1
  unsigned int v31; // r1
  unsigned __int16 *v32; // r2
  int v33; // t1
  unsigned __int8 *v34; // r10
  unsigned int v35; // r7
  int v36; // r1
  int v37; // r0
  unsigned int v38; // r3
  unsigned int v39; // r2
  unsigned int v40; // r3
  int v41; // t1
  unsigned int v42; // r3
  int v43; // r7
  unsigned __int8 *v44; // r12
  int v45; // t1
  int v46; // r3
  int v47; // r0
  int v48; // r3
  int v49; // r3
  int v50; // r5
  int v51; // r5
  size_t v52; // r8
  int v53; // r3
  bool v54; // zf
  int v55; // r0
  int v56; // r3
  int v57; // r2
  int v58; // r8
  _BOOL4 v59; // r7
  int v60; // t1
  unsigned int v61; // r3
  int v62; // r2
  bool v63; // zf
  int v64; // r9
  unsigned int v65; // r0
  unsigned int v66; // r3
  unsigned int v67; // r1
  bool v68; // cc
  int v69; // r2
  unsigned int v70; // r3
  int v71; // r3
  int v72; // r3
  bool v73; // zf
  int v74; // r1
  int *v75; // r7
  int v76; // t1
  unsigned __int8 *v77; // r2
  unsigned int v78; // r6
  int v79; // r2
  unsigned int v80; // r3
  int v81; // t1
  int v82; // r2
  int v83; // r0
  char *v84; // r1
  unsigned int v85; // r3
  char v86; // r10
  int v87; // r1
  int v88; // t1
  char *v89; // r1
  char *v90; // r1
  int v91; // t1
  char *v92; // r2
  unsigned int v93; // r10
  char v94; // r3
  int v95; // t1
  size_t v96; // r3
  size_t v97; // r10
  unsigned int v98; // r3
  int v99; // t1
  int v100; // r1
  int v101; // r2
  unsigned int v102; // r10
  int v103; // r2
  int v104; // r3
  int v105; // r1
  unsigned int v106; // r0
  unsigned int v107; // r2
  bool v108; // cf
  int v109; // t1
  unsigned int v110; // r10
  int v111; // r2
  int v112; // r3
  int v113; // r1
  unsigned int v114; // r0
  unsigned int v115; // r2
  bool v116; // cf
  int v117; // t1
  int v118; // r3
  int v119; // r2
  bool v120; // cc
  int v121; // r0
  unsigned __int8 *v122; // r10
  unsigned int v123; // r3
  int v124; // r10
  int v125; // t1
  unsigned __int8 *v126; // r2
  int v127; // r3
  int v128; // t1
  unsigned int v129; // r1
  size_t v130; // r10
  _DWORD *v131; // r2
  int v132; // r0
  int v133; // r3
  unsigned int v134; // r2
  int v135; // r3
  void *v136; // r0
  size_t v137; // r2
  unsigned int v138; // r3
  int v139; // r2
  int v140; // t1
  int v141; // r2
  int v142; // r3
  int v143; // t1
  unsigned int v144; // r1
  int v145; // r0
  int v146; // r3
  int v147; // r3
  int v148; // r2
  int v149; // r1
  int v150; // r2
  int v151; // r0
  int v152; // t1
  int v153; // t1
  int v154; // r3
  int v155; // t1
  int v156; // r0
  unsigned int v157; // r9
  int v158; // r2
  __int16 v159; // r1
  int v160; // r2
  char *v161; // r7
  int v162; // r3
  char *v163; // r0
  int v164; // r3
  int v165; // r0
  int v166; // r3
  int v167; // t1
  unsigned int v168; // r9
  unsigned int v169; // r3
  int v170; // r0
  int v171; // r2
  int v172; // r3
  int v173; // [sp+8h] [bp-5Ch]
  int v174; // [sp+8h] [bp-5Ch]
  int v175; // [sp+8h] [bp-5Ch]
  int v176; // [sp+8h] [bp-5Ch]
  int v177; // [sp+8h] [bp-5Ch]
  int v178; // [sp+8h] [bp-5Ch]
  int v179; // [sp+8h] [bp-5Ch]
  int v180; // [sp+8h] [bp-5Ch]
  int v181; // [sp+8h] [bp-5Ch]
  int v182; // [sp+8h] [bp-5Ch]
  int v183; // [sp+8h] [bp-5Ch]
  int v184; // [sp+8h] [bp-5Ch]
  int v185; // [sp+8h] [bp-5Ch]
  int v186; // [sp+8h] [bp-5Ch]
  int v187; // [sp+8h] [bp-5Ch]
  int v188; // [sp+8h] [bp-5Ch]
  int v189; // [sp+8h] [bp-5Ch]
  unsigned int v190; // [sp+Ch] [bp-58h]
  int v191; // [sp+10h] [bp-54h]
  int v192; // [sp+14h] [bp-50h]
  size_t v193; // [sp+18h] [bp-4Ch]
  unsigned int v194; // [sp+20h] [bp-44h]
  int v195; // [sp+20h] [bp-44h]
  int v196; // [sp+20h] [bp-44h]
  int v197; // [sp+20h] [bp-44h]
  int v198; // [sp+20h] [bp-44h]
  int v199; // [sp+20h] [bp-44h]
  int v200; // [sp+20h] [bp-44h]
  _DWORD *v201; // [sp+24h] [bp-40h]
  _DWORD *v202; // [sp+28h] [bp-3Ch]
  _DWORD *v203; // [sp+2Ch] [bp-38h]
  _DWORD *v204; // [sp+30h] [bp-34h]
  _DWORD *v205; // [sp+34h] [bp-30h]
  _DWORD *v206; // [sp+3Ch] [bp-28h]
  int v207; // [sp+48h] [bp-1Ch]
  unsigned __int8 *v208; // [sp+48h] [bp-1Ch]
  int v209; // [sp+48h] [bp-1Ch]
  unsigned __int8 *v210; // [sp+48h] [bp-1Ch]
  unsigned int v211; // [sp+48h] [bp-1Ch]
  unsigned __int8 *v212; // [sp+4Ch] [bp-18h]
  int v213; // [sp+4Ch] [bp-18h]
  unsigned int v214; // [sp+4Ch] [bp-18h]
  unsigned __int8 *v215; // [sp+50h] [bp-14h]
  unsigned int v216; // [sp+50h] [bp-14h]
  unsigned __int8 *v217; // [sp+54h] [bp-10h]
  _DWORD v218[2]; // [sp+5Ch] [bp-8h] BYREF

  if ( !a1 )
    return -2;
  v5 = (int *)a1[7];
  if ( !v5 )
    return -2;
  v6 = a1[3];
  if ( !v6 )
    return -2;
  v7 = *a1;
  if ( !*a1 )
  {
    if ( a1[1] )
      return -2;
  }
  v8 = *v5;
  v9 = *v5 == 11;
  if ( *v5 == 11 )
  {
    v8 = 12;
    *v5 = 12;
  }
  v10 = (int)a1[4];
  if ( v9 )
  {
    v6 = a1[3];
    v7 = *a1;
  }
  v190 = (unsigned int)a1[4];
  v193 = (size_t)a1[1];
  v11 = v5[14];
  v12 = v5[15];
  v204 = v5 + 21;
  v203 = v5 + 27;
  v201 = v5 + 332;
  v205 = v5 + 28;
  v13 = v193;
  v202 = v5 + 188;
  v206 = v5 + 22;
  v14 = v6;
  v192 = v10;
  v191 = 0;
LABEL_12:
  while ( 2 )
  {
    switch ( v8 )
    {
      case 0:
        v98 = v5[2];
        if ( v98 )
        {
          while ( v12 <= 0xF )
          {
            if ( !v13 )
              goto LABEL_72;
            v99 = *v7++;
            --v13;
            v11 += v99 << v12;
            v12 += 8;
          }
          if ( v11 == 35615 )
            v100 = (v98 >> 1) & 1;
          else
            v100 = 0;
          if ( v100 )
          {
            v186 = a2;
            v5[6] = crc32(0, 0, 0);
            LOWORD(v218[0]) = -29921;
            v156 = crc32(v5[6], v218, 2);
            v8 = 1;
            v12 = 0;
            v5[6] = v156;
            *v5 = 1;
            v11 = 0;
            a2 = v186;
          }
          else
          {
            v101 = v5[8];
            v5[4] = 0;
            if ( v101 )
            {
              *(_DWORD *)(v101 + 48) = -1;
              v98 = v5[2];
            }
            if ( (v98 & 1) == 0 || ((v11 >> 8) + (unsigned __int16)((_WORD)v11 << 8)) % 0x1F )
            {
              v8 = 27;
              a1[6] = "incorrect header check";
              *v5 = 27;
            }
            else if ( (v11 & 0xF) == 8 )
            {
              v11 >>= 4;
              v169 = (v11 & 0xF) + 8;
              if ( v169 <= v5[9] )
              {
                v5[5] = 1 << v169;
                v189 = a2;
                v170 = adler32_0(0, 0, 0);
                if ( (v11 & 0x200) != 0 )
                  v171 = 9;
                else
                  v171 = 11;
                v5[6] = v170;
                a1[12] = (unsigned __int8 *)v170;
                *v5 = v171;
                v12 = 0;
                v8 = v171;
                v11 = 0;
                a2 = v189;
              }
              else
              {
                v12 -= 4;
                a1[6] = "invalid window size";
                v8 = 27;
                *v5 = 27;
              }
            }
            else
            {
              v8 = 27;
              a1[6] = "unknown compression method";
              *v5 = 27;
            }
          }
        }
        else
        {
          v8 = 12;
          *v5 = 12;
        }
        continue;
      case 1:
        while ( 2 )
        {
          if ( v12 <= 0xF )
          {
            if ( v13 )
            {
              v16 = *v7++;
              --v13;
              v11 += v16 << v12;
              v12 += 8;
              continue;
            }
            goto LABEL_72;
          }
          break;
        }
        v5[4] = v11;
        if ( (unsigned __int8)v11 != 8 )
        {
          v8 = 27;
          a1[6] = "unknown compression method";
          *v5 = 27;
          continue;
        }
        if ( (v11 & 0xE000) != 0 )
        {
          v8 = 27;
          a1[6] = "unknown header flags set";
          *v5 = 27;
          continue;
        }
        v17 = (int *)v5[8];
        if ( v17 )
          *v17 = (v11 >> 8) & 1;
        if ( (v5[4] & 0x200) != 0 )
        {
          LOWORD(v218[0]) = v11;
          v185 = a2;
          v5[6] = crc32(v5[6], v218, 2);
          a2 = v185;
        }
        v11 = 0;
        *v5 = 2;
        v12 = 0;
        do
        {
          if ( !v13 )
            goto LABEL_72;
          v18 = *v7++;
          --v13;
          v11 += v18 << v12;
          v12 += 8;
LABEL_25:
          ;
        }
        while ( v12 <= 0x1F );
        v19 = v5[8];
        if ( v19 )
          *(_DWORD *)(v19 + 4) = v11;
        if ( (v5[4] & 0x200) != 0 )
        {
          v218[0] = v11;
          v184 = a2;
          v5[6] = crc32(v5[6], v218, 4);
          a2 = v184;
        }
        v11 = 0;
        *v5 = 3;
        v12 = 0;
        do
        {
          if ( !v13 )
            goto LABEL_72;
          v20 = *v7++;
          --v13;
          v11 += v20 << v12;
          v12 += 8;
LABEL_33:
          ;
        }
        while ( v12 <= 0xF );
        v21 = v5[8];
        if ( v21 )
        {
          *(_DWORD *)(v21 + 8) = (unsigned __int8)v11;
          *(_DWORD *)(v5[8] + 12) = v11 >> 8;
        }
        v22 = v5[4];
        if ( (v22 & 0x200) != 0 )
        {
          LOWORD(v218[0]) = v11;
          v183 = a2;
          v5[6] = crc32(v5[6], v218, 2);
          v22 = v5[4];
          a2 = v183;
        }
        v12 = 0;
        *v5 = 4;
        v11 = 0;
LABEL_289:
        if ( (v22 & 0x400) != 0 )
        {
          while ( v12 <= 0xF )
          {
            if ( !v13 )
              goto LABEL_72;
            v140 = *v7++;
            --v13;
            v11 += v140 << v12;
            v12 += 8;
          }
          v141 = v5[8];
          v5[16] = v11;
          if ( v141 )
          {
            *(_DWORD *)(v141 + 20) = v11;
            v22 = v5[4];
          }
          if ( (v22 & 0x200) != 0 )
          {
            LOWORD(v218[0]) = v11;
            v178 = a2;
            v11 = 0;
            v5[6] = crc32(v5[6], v218, 2);
            v12 = 0;
            v22 = v5[4];
            a2 = v178;
          }
          else
          {
            v11 = 0;
            v12 = 0;
          }
        }
        else
        {
          v139 = v5[8];
          if ( v139 )
          {
            *(_DWORD *)(v139 + 16) = v22 & 0x400;
            v22 = v5[4];
          }
        }
        *v5 = 5;
LABEL_271:
        if ( (v22 & 0x400) != 0 )
        {
          v129 = v5[16];
          if ( v13 >= v129 )
            v130 = v5[16];
          else
            v130 = v13;
          if ( v130 )
          {
            v131 = (_DWORD *)v5[8];
            if ( v131 )
            {
              v132 = v131[4];
              if ( v132 )
              {
                v133 = v131[5];
                v134 = v131[6];
                v176 = a2;
                v135 = v133 - v129;
                v136 = (void *)(v132 + v135);
                if ( v130 + v135 <= v134 )
                  v137 = v130;
                else
                  v137 = v134 - v135;
                memcpy(v136, v7, v137);
                v22 = v5[4];
                a2 = v176;
              }
            }
            if ( (v22 & 0x200) != 0 )
            {
              v177 = a2;
              v5[6] = crc32(v5[6], v7, v130);
              a2 = v177;
            }
            v13 -= v130;
            v7 += v130;
            v138 = v5[16] - v130;
            v5[16] = v138;
            v129 = v138;
          }
          if ( v129 )
            goto LABEL_72;
          v22 = v5[4];
        }
        v5[16] = 0;
        *v5 = 6;
LABEL_224:
        if ( (v22 & 0x800) != 0 )
        {
          if ( !v13 )
            goto LABEL_72;
          v110 = 0;
          do
          {
            v111 = v5[8];
            v112 = v7[v110++];
            if ( v111 )
            {
              v113 = *(_DWORD *)(v111 + 28);
              if ( v113 )
              {
                v114 = *(_DWORD *)(v111 + 32);
                v115 = v5[16];
                if ( v115 < v114 )
                {
                  *(_BYTE *)(v113 + v115) = v112;
                  v5[16] = v115 + 1;
                }
              }
            }
            v116 = 1;
            if ( v112 )
              v116 = v110 >= v13;
          }
          while ( !v116 );
          v199 = v112;
          if ( (v5[4] & 0x200) != 0 )
          {
            v182 = a2;
            v5[6] = crc32(v5[6], v7, v110);
            a2 = v182;
          }
          v7 += v110;
          v13 -= v110;
          if ( v199 )
            goto LABEL_72;
          goto LABEL_238;
        }
        v149 = v5[8];
        if ( v149 )
        {
          *(_DWORD *)(v149 + 28) = 0;
LABEL_238:
          v22 = v5[4];
        }
        v5[16] = 0;
        *v5 = 7;
LABEL_200:
        if ( (v22 & 0x1000) != 0 )
        {
          if ( !v13 )
            goto LABEL_72;
          v102 = 0;
          do
          {
            v103 = v5[8];
            v104 = v7[v102++];
            if ( v103 )
            {
              v105 = *(_DWORD *)(v103 + 36);
              if ( v105 )
              {
                v106 = *(_DWORD *)(v103 + 40);
                v107 = v5[16];
                if ( v107 < v106 )
                {
                  *(_BYTE *)(v105 + v107) = v104;
                  v5[16] = v107 + 1;
                }
              }
            }
            v108 = 1;
            if ( v104 )
              v108 = v102 >= v13;
          }
          while ( !v108 );
          v198 = v104;
          if ( (v5[4] & 0x200) != 0 )
          {
            v181 = a2;
            v5[6] = crc32(v5[6], v7, v102);
            a2 = v181;
          }
          v7 += v102;
          v13 -= v102;
          if ( v198 )
            goto LABEL_72;
          goto LABEL_214;
        }
        v148 = v5[8];
        if ( v148 )
        {
          *(_DWORD *)(v148 + 36) = v22 & 0x1000;
LABEL_214:
          v22 = v5[4];
        }
        *v5 = 8;
LABEL_216:
        if ( (v22 & 0x200) != 0 )
        {
          while ( v12 <= 0xF )
          {
            if ( !v13 )
              goto LABEL_72;
            v109 = *v7++;
            --v13;
            v11 += v109 << v12;
            v12 += 8;
          }
          if ( *((unsigned __int16 *)v5 + 12) != v11 )
          {
            v8 = 27;
            a1[6] = "header crc mismatch";
            *v5 = 27;
            continue;
          }
          v12 = 0;
          v11 = 0;
        }
        v150 = v5[8];
        if ( v150 )
        {
          *(_DWORD *)(v150 + 44) = (v22 >> 9) & 1;
          *(_DWORD *)(v5[8] + 48) = 1;
        }
        v180 = a2;
        v151 = crc32(0, 0, 0);
        v5[6] = v151;
        a1[12] = (unsigned __int8 *)v151;
        *v5 = 11;
        v8 = 11;
        a2 = v180;
        continue;
      case 2:
        goto LABEL_25;
      case 3:
        goto LABEL_33;
      case 4:
        v22 = v5[4];
        goto LABEL_289;
      case 5:
        v22 = v5[4];
        goto LABEL_271;
      case 6:
        v22 = v5[4];
        goto LABEL_224;
      case 7:
        v22 = v5[4];
        goto LABEL_200;
      case 8:
        v22 = v5[4];
        goto LABEL_216;
      case 9:
        while ( 2 )
        {
          if ( v12 <= 0x1F )
          {
            if ( v13 )
            {
              v45 = *v7++;
              --v13;
              v11 += v45 << v12;
              v12 += 8;
              continue;
            }
            goto LABEL_72;
          }
          break;
        }
        v46 = HIBYTE(v11) + (v11 << 24) + ((v11 >> 8) & 0xFF00) + ((v11 & 0xFF00) << 8);
        v5[6] = v46;
        v11 = 0;
        a1[12] = (unsigned __int8 *)v46;
        *v5 = 10;
        v12 = 0;
LABEL_69:
        if ( !v5[3] )
        {
          a1[1] = (unsigned __int8 *)v13;
          a1[3] = v14;
          *a1 = v7;
          a1[4] = (unsigned __int8 *)v190;
          v5[15] = v12;
          v5[14] = v11;
          return 2;
        }
        v174 = a2;
        v47 = adler32_0(0, 0, 0);
        v5[6] = v47;
        a1[12] = (unsigned __int8 *)v47;
        *v5 = 11;
        a2 = v174;
LABEL_71:
        if ( a2 == 5 )
          goto LABEL_72;
LABEL_97:
        if ( v5[1] )
        {
          v8 = 24;
          v11 >>= v12 & 7;
          v12 &= 0xFFFFFFF8;
          *v5 = 24;
          continue;
        }
        if ( v12 <= 2 )
        {
          if ( !v13 )
            goto LABEL_72;
          v60 = *v7++;
          --v13;
          v11 += v60 << v12;
          v12 += 8;
        }
        v61 = v11 >> 1;
        v62 = (v11 >> 1) & 3;
        v63 = v62 == 2;
        v64 = v11 & 1;
        if ( v62 == 2 )
          v62 = 15;
        v5[1] = v64;
        if ( v63 )
        {
          *v5 = v62;
        }
        else if ( v62 == 3 )
        {
          a1[6] = "invalid block type";
          *v5 = 27;
        }
        else if ( v62 == 1 )
        {
          v5[21] = 9;
          v5[20] = (int)&distfix_2321;
          v5[22] = 5;
          *v5 = 18;
          v5[19] = (int)"`\a";
        }
        else
        {
          *v5 = 13;
        }
        v11 = v61 >> 2;
        v12 -= 3;
        v8 = *v5;
        continue;
      case 10:
        goto LABEL_69;
      case 11:
        goto LABEL_71;
      case 12:
        goto LABEL_97;
      case 13:
        v94 = v12 & 7;
        v12 &= 0xFFFFFFF8;
        v11 >>= v94;
        if ( v12 > 0x1F )
          goto LABEL_170;
        do
        {
          if ( !v13 )
            goto LABEL_72;
          v95 = *v7++;
          --v13;
          v11 += v95 << v12;
          v12 += 8;
        }
        while ( v12 <= 0x1F );
LABEL_170:
        if ( (unsigned __int16)v11 != (HIWORD(v11) ^ 0xFFFF) )
        {
          v8 = 27;
          a1[6] = "invalid stored block lengths";
          *v5 = 27;
          continue;
        }
        v12 = 0;
        v5[16] = (unsigned __int16)v11;
        *v5 = 14;
        v11 = 0;
LABEL_172:
        v96 = v5[16];
        if ( !v96 )
          goto LABEL_364;
        if ( v190 < v96 )
          v96 = v190;
        if ( v96 >= v13 )
          v97 = v13;
        else
          v97 = v96;
        if ( v97 )
        {
          v175 = a2;
          memcpy(v14, v7, v97);
          v13 -= v97;
          v7 += v97;
          v5[16] -= v97;
          v14 += v97;
          a2 = v175;
          v190 -= v97;
          v8 = *v5;
          continue;
        }
        goto LABEL_72;
      case 14:
        goto LABEL_172;
      case 15:
        while ( 2 )
        {
          if ( v12 <= 0xD )
          {
            if ( v13 )
            {
              v23 = *v7++;
              --v13;
              v11 += v23 << v12;
              v12 += 8;
              continue;
            }
            goto LABEL_72;
          }
          break;
        }
        v24 = (v11 & 0x1F) + 257;
        v25 = ((v11 >> 5) & 0x1F) + 1;
        v5[23] = ((v11 >> 10) & 0xF) + 4;
        v5[24] = v24;
        v5[25] = v25;
        v11 >>= 14;
        v12 -= 14;
        if ( v24 > 0x11E || v25 > 0x1E )
        {
          v8 = 27;
          a1[6] = "too many length or distance symbols";
          *v5 = 27;
          continue;
        }
        v5[26] = 0;
        *v5 = 16;
LABEL_45:
        v26 = v5[26];
        v27 = v26;
        if ( v26 < v5[23] )
        {
          v28 = (unsigned __int16 *)((char *)&order_2389 + 2 * v26);
          do
          {
            ++v26;
            if ( v12 <= 2 )
            {
              if ( !v13 )
                goto LABEL_72;
              v29 = *v7++;
              --v13;
              v11 += v29 << v12;
              v12 += 8;
            }
            v30 = *v28++;
            v12 -= 3;
            *((_WORD *)v5 + v30 + 56) = v11 & 7;
            v31 = v5[23];
            v5[26] = v26;
            v11 >>= 3;
          }
          while ( v31 > v26 );
          v27 = v26;
        }
        if ( v27 <= 0x12 )
        {
          v32 = (unsigned __int16 *)((char *)&order_2389 + 2 * v27);
          do
          {
            v33 = *v32++;
            *((_WORD *)v5 + v33 + 56) = 0;
          }
          while ( v32 != (unsigned __int16 *)&unk_8E6212 );
          v5[26] = 19;
        }
        v5[21] = 7;
        v5[27] = (int)v201;
        v5[19] = (int)v201;
        v173 = a2;
        v191 = inflate_table(0, v205, 19, v203, v204, v202);
        a2 = v173;
        if ( v191 )
        {
          v8 = 27;
          a1[6] = "invalid code lengths set";
          *v5 = 27;
          continue;
        }
        *v5 = 17;
        v5[26] = 0;
LABEL_58:
        v34 = v14;
        v194 = v5[25] + v5[24];
        while ( 1 )
        {
          v35 = v5[26];
          if ( v35 >= v194 )
            break;
          v36 = v5[19];
          v37 = (1 << v5[21]) - 1;
          v38 = v36 + 4 * (v11 & v37);
          v39 = *(unsigned __int8 *)(v38 + 1);
          v40 = *(unsigned __int16 *)(v38 + 2);
          if ( v12 < v39 )
          {
            while ( v13 )
            {
              v41 = *v7++;
              --v13;
              v11 += v41 << v12;
              v42 = v36 + 4 * (v11 & v37);
              v39 = *(unsigned __int8 *)(v42 + 1);
              v12 += 8;
              v40 = *(unsigned __int16 *)(v42 + 2);
              if ( v39 <= v12 )
                goto LABEL_331;
            }
            goto LABEL_64;
          }
LABEL_331:
          if ( v40 <= 0xF )
          {
            while ( v12 < v39 )
            {
              if ( !v13 )
                goto LABEL_64;
              v153 = *v7++;
              --v13;
              v11 += v153 << v12;
              v12 += 8;
            }
            *((_WORD *)v5 + v35 + 56) = v40;
            v12 -= v39;
            v5[26] = v35 + 1;
            v11 >>= v39;
          }
          else
          {
            if ( v40 == 16 )
            {
              if ( v12 < v39 + 2 )
              {
                while ( v13 )
                {
                  v155 = *v7++;
                  --v13;
                  v11 += v155 << v12;
                  v12 += 8;
                  if ( v12 >= v39 + 2 )
                    goto LABEL_379;
                }
                goto LABEL_64;
              }
LABEL_379:
              v12 -= v39;
              v11 >>= v39;
              if ( !v35 )
              {
LABEL_382:
                v14 = v34;
                a1[6] = "invalid bit length repeat";
                v8 = 27;
                *v5 = 27;
                goto LABEL_12;
              }
              v159 = *((_WORD *)v5 + v35 + 55);
              v158 = (v11 & 3) + 3;
              v11 >>= 2;
              v12 -= 2;
            }
            else if ( v40 == 17 )
            {
              if ( v12 < v39 + 3 )
              {
                while ( v13 )
                {
                  v167 = *v7++;
                  --v13;
                  v11 += v167 << v12;
                  v12 += 8;
                  if ( v12 >= v39 + 3 )
                    goto LABEL_381;
                }
                goto LABEL_64;
              }
LABEL_381:
              v168 = v11 >> v39;
              v12 += -3 - v39;
              v158 = (v168 & 7) + 3;
              v11 = v168 >> 3;
              v159 = 0;
            }
            else
            {
              if ( v12 < v39 + 7 )
              {
                while ( v13 )
                {
                  v152 = *v7++;
                  --v13;
                  v11 += v152 << v12;
                  v12 += 8;
                  if ( v12 >= v39 + 7 )
                    goto LABEL_359;
                }
LABEL_64:
                v43 = a2;
                v44 = v34;
                v3 = v191;
                goto LABEL_73;
              }
LABEL_359:
              v157 = v11 >> v39;
              v12 += -7 - v39;
              v158 = (v157 & 0x7F) + 11;
              v11 = v157 >> 7;
              v159 = 0;
            }
            v211 = v158 + v35;
            if ( v194 < v158 + v35 )
              goto LABEL_382;
            v160 = 2 * v158;
            v161 = (char *)v5 + 2 * v35;
            v162 = 0;
            do
            {
              v163 = &v161[v162];
              v162 += 2;
              *((_WORD *)v163 + 56) = v159;
            }
            while ( v162 != v160 );
            v5[26] = v211;
          }
        }
        v8 = *v5;
        v14 = v34;
        if ( *v5 == 27 )
          continue;
        v5[21] = 9;
        v5[27] = (int)v201;
        v5[19] = (int)v201;
        v187 = a2;
        v191 = inflate_table(1, v205, v5[24], v203, v204, v202);
        a2 = v187;
        if ( v191 )
        {
          v8 = 27;
          a1[6] = "invalid literal/lengths set";
          *v5 = 27;
          continue;
        }
        v164 = v5[24];
        v5[20] = v5[27];
        v5[22] = 6;
        v165 = inflate_table(2, (char *)v5 + 2 * v164 + 112, v5[25], v203, v206, v202);
        if ( !v165 )
          v166 = 18;
        v191 = v165;
        a2 = v187;
        if ( v165 )
        {
          v8 = 27;
          a1[6] = "invalid distances set";
          *v5 = 27;
          continue;
        }
        *v5 = v166;
LABEL_249:
        v120 = v13 > 5;
        if ( v13 > 5 )
          v120 = v190 > 0x101;
        if ( v120 )
        {
          a1[3] = v14;
          *a1 = v7;
          a1[1] = (unsigned __int8 *)v13;
          a1[4] = (unsigned __int8 *)v190;
          v5[14] = v11;
          v5[15] = v12;
          v188 = a2;
          inflate_fast(a1, v192);
          v14 = a1[3];
          a2 = v188;
          v190 = (unsigned int)a1[4];
          v7 = *a1;
          v13 = (unsigned int)a1[1];
          v11 = v5[14];
          v12 = v5[15];
          v8 = *v5;
          continue;
        }
        v121 = v5[19];
        v200 = ~(-1 << v5[21]);
        v122 = (unsigned __int8 *)(v121 + 4 * (v11 & v200));
        v123 = v122[1];
        v74 = *v122;
        v124 = *((unsigned __int16 *)v122 + 1);
        if ( v12 < v123 )
        {
          if ( !v13 )
            goto LABEL_72;
          v210 = v14;
          while ( 1 )
          {
            v125 = *v7++;
            --v13;
            v11 += v125 << v12;
            v126 = (unsigned __int8 *)(v121 + 4 * (v11 & v200));
            v123 = v126[1];
            v12 += 8;
            v74 = *v126;
            v124 = *((unsigned __int16 *)v126 + 1);
            if ( v123 <= v12 )
              break;
            if ( !v13 )
            {
              v43 = a2;
              v3 = v191;
              v44 = v210;
              goto LABEL_73;
            }
          }
        }
        if ( !v74 )
        {
          v12 -= v123;
          v5[16] = v124;
          v11 >>= v123;
LABEL_260:
          v8 = 23;
          *v5 = 23;
          continue;
        }
        if ( (v74 & 0xF0) != 0 )
        {
          v12 -= v123;
          v5[16] = v124;
          v11 >>= v123;
        }
        else
        {
          v207 = ~(-1 << (v123 + v74));
          v212 = (unsigned __int8 *)(v121 + 4 * (v124 + ((v207 & v11) >> v123)));
          v195 = v212[1];
          v74 = *v212;
          v213 = *((unsigned __int16 *)v212 + 1);
          if ( v12 < v123 + v195 )
          {
            if ( !v13 )
              goto LABEL_72;
            v215 = v14;
            v75 = v5;
            while ( 1 )
            {
              v76 = *v7++;
              --v13;
              v11 += v76 << v12;
              v77 = (unsigned __int8 *)(v121 + 4 * (v124 + ((v11 & v207) >> v123)));
              v12 += 8;
              v78 = v123 + v77[1];
              v195 = v77[1];
              v74 = *v77;
              v79 = *((unsigned __int16 *)v77 + 1);
              if ( v78 <= v12 )
                break;
              if ( !v13 )
              {
                v5 = v75;
                v3 = v191;
                v43 = a2;
                v44 = v215;
                goto LABEL_73;
              }
            }
            v5 = v75;
            v14 = v215;
            v213 = v79;
          }
          v12 = v12 - v123 - v195;
          v5[16] = v213;
          v11 = v11 >> v123 >> v195;
          if ( !v74 )
            goto LABEL_260;
        }
        if ( (v74 & 0x20) != 0 )
        {
LABEL_364:
          v8 = 11;
          *v5 = 11;
          continue;
        }
        if ( (v74 & 0x40) != 0 )
        {
          v8 = 27;
          a1[6] = "invalid literal/length code";
          *v5 = 27;
          continue;
        }
        v5[18] = v74 & 0xF;
        *v5 = 19;
LABEL_146:
        v80 = v5[18];
        if ( v80 )
        {
          if ( v12 < v80 )
          {
            while ( v13 )
            {
              v81 = *v7++;
              --v13;
              v11 += v81 << v12;
              v12 += 8;
              if ( v80 <= v12 )
                goto LABEL_150;
            }
LABEL_72:
            v3 = v191;
            v48 = a2;
            v44 = v14;
            v43 = v48;
            goto LABEL_73;
          }
LABEL_150:
          v82 = v11 & ~(-1 << v80);
          v11 >>= v80;
          v12 -= v80;
          v5[16] += v82;
        }
        *v5 = 20;
LABEL_152:
        v83 = v5[20];
        v196 = ~(-1 << v5[22]);
        v84 = (char *)(v83 + 4 * (v11 & v196));
        v85 = (unsigned __int8)v84[1];
        v86 = *v84;
        v87 = *((unsigned __int16 *)v84 + 1);
        v216 = v85;
        if ( v12 < v85 )
        {
          if ( !v13 )
            goto LABEL_72;
          v208 = v14;
          while ( 1 )
          {
            v88 = *v7++;
            --v13;
            v11 += v88 << v12;
            v89 = (char *)(v83 + 4 * (v11 & v196));
            v85 = (unsigned __int8)v89[1];
            v12 += 8;
            v86 = *v89;
            v87 = *((unsigned __int16 *)v89 + 1);
            if ( v85 <= v12 )
              break;
            if ( !v13 )
            {
              v3 = v191;
              v43 = a2;
              v44 = v208;
              goto LABEL_73;
            }
          }
          v216 = v85;
        }
        if ( (v86 & 0xF0) != 0 )
        {
LABEL_165:
          v12 -= v85;
          v11 >>= v85;
          if ( (v86 & 0x40) != 0 )
          {
            v8 = 27;
            a1[6] = "invalid distance code";
            *v5 = 27;
          }
          else
          {
            v93 = v86 & 0xF;
            v5[17] = v87;
            *v5 = 21;
            v5[18] = v93;
LABEL_241:
            if ( v93 )
            {
              while ( v12 < v93 )
              {
                if ( !v13 )
                  goto LABEL_72;
                v117 = *v7++;
                --v13;
                v11 += v117 << v12;
                v12 += 8;
              }
              v118 = v5[18];
              v119 = v5[17] + (v11 & ~(-1 << v93));
              v11 >>= v118;
              v12 -= v118;
              v5[17] = v119;
            }
            if ( v5[17] > v192 + v5[11] - v190 )
            {
              v8 = 27;
              a1[6] = "invalid distance too far back";
              *v5 = 27;
              continue;
            }
            *v5 = 22;
LABEL_110:
            if ( !v190 )
              goto LABEL_72;
            v65 = v5[17];
            if ( v192 - v190 >= v65 )
            {
              v67 = v5[16];
              v65 = (unsigned int)&v14[-v65];
              v70 = v67;
            }
            else
            {
              v66 = v5[12];
              v67 = v65 - (v192 - v190);
              v68 = v67 > v66;
              if ( v67 > v66 )
                v69 = v5[10];
              else
                v69 = v5[13];
              if ( v67 > v66 )
              {
                v67 -= v66;
                v65 = v5[13];
              }
              else
              {
                v66 -= v67;
              }
              if ( !v68 )
                v65 = v69 + v66;
              v70 = v5[16];
              if ( v68 )
                v65 += v69 - v67;
              if ( v67 >= v70 )
                v67 = v5[16];
            }
            if ( v67 >= v190 )
              v67 = v190;
            v5[16] = v70 - v67;
            v190 -= v67;
            v71 = 0;
            do
            {
              v14[v71] = *(_BYTE *)(v65 + v71);
              ++v71;
            }
            while ( v67 != v71 );
            v72 = v5[16];
            v14 += v67;
            v73 = v72 == 0;
            if ( v72 )
              v8 = *v5;
            else
              v8 = 18;
            if ( v73 )
              *v5 = v8;
          }
          continue;
        }
        v214 = v85;
        v209 = ~(-1 << (v85 + v86));
        v197 = v87;
        v90 = (char *)(v83 + 4 * (v87 + ((v209 & v11) >> v85)));
        v85 = (unsigned __int8)v90[1];
        v86 = *v90;
        v87 = *((unsigned __int16 *)v90 + 1);
        if ( v12 >= v214 + v85 )
        {
LABEL_164:
          v11 >>= v214;
          v12 -= v216;
          goto LABEL_165;
        }
        if ( !v13 )
          goto LABEL_72;
        v217 = v14;
        do
        {
          v91 = *v7++;
          --v13;
          v11 += v91 << v12;
          v12 += 8;
          v92 = (char *)(v83 + 4 * (v197 + ((v11 & v209) >> v214)));
          v85 = (unsigned __int8)v92[1];
          v86 = *v92;
          v87 = *((unsigned __int16 *)v92 + 1);
          if ( v214 + v85 <= v12 )
            goto LABEL_164;
        }
        while ( v13 );
        v3 = v191;
        v43 = a2;
        v44 = v217;
LABEL_73:
        a1[3] = v44;
        *a1 = v7;
        a1[1] = (unsigned __int8 *)v13;
        a1[4] = (unsigned __int8 *)v190;
        v49 = v5[10];
        v5[14] = v11;
        v5[15] = v12;
        if ( v49 )
          goto LABEL_77;
        if ( (unsigned int)*v5 > 0x17 )
          goto LABEL_78;
        if ( a1[4] == (unsigned __int8 *)v192 )
        {
          v50 = v192;
          goto LABEL_79;
        }
LABEL_77:
        if ( updatewindow((int)a1, v192) )
        {
          *v5 = 28;
          return -4;
        }
        else
        {
LABEL_78:
          v50 = (int)a1[4];
LABEL_79:
          v51 = v192 - v50;
          v52 = v193 - (_DWORD)a1[1];
          v53 = (int)&a1[5][v51];
          a1[2] += v52;
          a1[5] = (unsigned __int8 *)v53;
          v54 = v51 == 0;
          if ( v51 )
            v54 = v5[2] == 0;
          v5[7] += v51;
          if ( !v54 )
          {
            if ( v5[4] )
              v55 = crc32(v5[6], &a1[3][-v51], v51);
            else
              v55 = adler32_0(v5[6], &a1[3][-v51], v51);
            v5[6] = v55;
            a1[12] = (unsigned __int8 *)v55;
          }
          v56 = v5[1];
          if ( v56 )
            v56 = 64;
          if ( *v5 == 11 )
            v57 = 128;
          else
            v57 = 0;
          v58 = v51 | v52;
          v59 = v43 == 4 || v58 == 0;
          a1[11] = (unsigned __int8 *)(v56 + v5[15] + v57);
          if ( v59 && !v3 )
            return -5;
        }
        return v3;
      case 16:
        goto LABEL_45;
      case 17:
        goto LABEL_58;
      case 18:
        goto LABEL_249;
      case 19:
        goto LABEL_146;
      case 20:
        goto LABEL_152;
      case 21:
        v93 = v5[18];
        goto LABEL_241;
      case 22:
        goto LABEL_110;
      case 23:
        if ( !v190 )
          goto LABEL_72;
        --v190;
        *v14++ = v5[16];
        v8 = 18;
        *v5 = 18;
        continue;
      case 24:
        v127 = v5[2];
        if ( !v127 )
          goto LABEL_304;
        while ( 2 )
        {
          if ( v12 <= 0x1F )
          {
            if ( v13 )
            {
              v143 = *v7++;
              --v13;
              v11 += v143 << v12;
              v12 += 8;
              continue;
            }
            goto LABEL_72;
          }
          break;
        }
        v144 = v192 - v190;
        a1[5] += v192 - v190;
        v5[7] += v192 - v190;
        if ( v192 != v190 )
        {
          v179 = a2;
          if ( v5[4] )
            v145 = crc32(v5[6], &v14[-v144], v144);
          else
            v145 = adler32_0(v5[6], &v14[-v144], v144);
          a2 = v179;
          v5[6] = v145;
          a1[12] = (unsigned __int8 *)v145;
        }
        if ( v5[4] )
          v146 = v11;
        else
          v146 = HIBYTE(v11) + (v11 << 24) + ((v11 >> 8) & 0xFF00) + ((v11 & 0xFF00) << 8);
        if ( v146 == v5[6] )
        {
          v12 = 0;
          v127 = v5[2];
          v11 = 0;
          v192 = v190;
LABEL_304:
          *v5 = 25;
LABEL_262:
          if ( v127 && v5[4] )
          {
            while ( v12 <= 0x1F )
            {
              if ( !v13 )
                goto LABEL_72;
              v128 = *v7++;
              --v13;
              v11 += v128 << v12;
              v12 += 8;
            }
            if ( v5[7] != v11 )
            {
              a1[6] = "incorrect length check";
              v8 = 27;
              *v5 = 27;
              continue;
            }
            v172 = a2;
            v12 = 0;
            v44 = v14;
            v11 = 0;
            v43 = v172;
          }
          else
          {
            v154 = a2;
            v44 = v14;
            v43 = v154;
          }
          *v5 = 26;
          v3 = 1;
          goto LABEL_73;
        }
        v8 = 27;
        a1[6] = "incorrect data check";
        *v5 = 27;
        v192 = v190;
        continue;
      case 25:
        v127 = v5[2];
        goto LABEL_262;
      case 26:
        v147 = a2;
        v3 = 1;
        v44 = v14;
        v43 = v147;
        goto LABEL_73;
      case 27:
        v142 = a2;
        v3 = -3;
        v44 = v14;
        v43 = v142;
        goto LABEL_73;
      case 28:
        return -4;
      default:
        return -2;
    }
  }
}


// ===== 674900 inflate_table =====
int __fastcall inflate_table(int a1, int a2, int a3, int *a4, unsigned int *a5, unsigned __int16 *a6)
{
  int i; // r3
  int j; // r3
  int v8; // r1
  unsigned int v9; // r5
  unsigned int v10; // r10
  int v11; // r2
  unsigned int k; // r3
  char *v14; // r6
  unsigned __int16 *v15; // r1
  int v16; // r12
  int v17; // r4
  char *v18; // r12
  __int16 v19; // r1
  __int16 v20; // t1
  int m; // r1
  _BYTE *v22; // r12
  int v23; // r4
  unsigned int v24; // r0
  unsigned int v25; // r4
  unsigned int v26; // r10
  unsigned int v27; // r8
  unsigned int v28; // r11
  int v29; // r5
  char v30; // r7
  char v31; // r6
  int v32; // r3
  int v33; // r1
  int v34; // r3
  int v35; // r2
  char v36; // r2
  unsigned int n; // r3
  int v38; // r1
  int v39; // r1
  int v40; // r3
  char *v41; // r12
  int v42; // t1
  unsigned int v43; // r3
  _BOOL4 v44; // r1
  int v45; // r9
  unsigned int v46; // r3
  int v47; // r12
  unsigned __int16 *v48; // [sp+0h] [bp-58h]
  int v49; // [sp+4h] [bp-54h]
  int v50; // [sp+8h] [bp-50h]
  int v51; // [sp+Ch] [bp-4Ch]
  unsigned int v52; // [sp+10h] [bp-48h]
  unsigned int v54; // [sp+18h] [bp-40h]
  int v55; // [sp+1Ch] [bp-3Ch]
  unsigned int v57; // [sp+24h] [bp-34h]
  unsigned int v58; // [sp+28h] [bp-30h]
  _BYTE *v59; // [sp+30h] [bp-28h]
  char *v60; // [sp+34h] [bp-24h]
  char v61; // [sp+38h] [bp-20h] BYREF
  __int16 v62; // [sp+3Ah] [bp-1Eh]
  unsigned __int16 v63[14]; // [sp+58h] [bp+0h] BYREF
  char v64; // [sp+74h] [bp+1Ch] BYREF
  _BYTE var2[34]; // [sp+76h] [bp+1Eh] BYREF

  for ( i = 0; i != 16; ++i )
    v63[i] = 0;
  if ( a3 )
  {
    for ( j = 0; j != a3; ++j )
    {
      v8 = *(unsigned __int16 *)(a2 + 2 * j);
      ++v63[v8];
    }
  }
  v9 = 15;
  v10 = *a5;
  while ( !v63[v9] )
  {
    if ( !--v9 )
    {
      v11 = *a4;
      *(_WORD *)(v11 + 2) = 0;
      *(_BYTE *)(v11 + 1) = 1;
      *(_BYTE *)v11 = 64;
      *(_WORD *)(v11 + 6) = 0;
      *(_BYTE *)(v11 + 5) = 1;
      *(_BYTE *)(v11 + 4) = 64;
      *a4 = v11 + 8;
      *a5 = 1;
      return 0;
    }
  }
  for ( k = 1; k != 16; ++k )
  {
    if ( v63[k] )
      break;
  }
  v14 = (char *)v63;
  v15 = v63;
  v16 = 1;
  do
  {
    v17 = v15[1];
    ++v15;
    v16 = 2 * v16 - v17;
    if ( v16 < 0 )
      return -1;
  }
  while ( v15 != (unsigned __int16 *)var2 );
  if ( v16 )
  {
    v44 = a1 == 0;
    if ( v9 != 1 )
      v44 = 1;
    if ( v44 )
      return -1;
  }
  v62 = 0;
  v18 = &v61;
  v19 = 0;
  do
  {
    v20 = *((_WORD *)v14 + 1);
    v14 += 2;
    v19 += v20;
    *((_WORD *)v18 + 2) = v19;
    v18 += 2;
  }
  while ( v14 != &v64 );
  if ( a3 )
  {
    for ( m = 0; m != a3; ++m )
    {
      if ( *(_WORD *)(a2 + 2 * m) )
      {
        v22 = &var2[2 * *(unsigned __int16 *)(a2 + 2 * m) + 2];
        v23 = *((unsigned __int16 *)v22 - 32);
        *((_WORD *)v22 - 32) = v23 + 1;
        a6[v23] = m;
      }
    }
  }
  if ( a1 )
  {
    if ( a1 == 1 )
    {
      v55 = 256;
      v59 = &unk_8E61FE;
      v60 = "ssion method";
    }
    else
    {
      v55 = -1;
      v60 = (char *)&dbase_2187;
      v59 = &dext_2188;
    }
  }
  else
  {
    v59 = a6;
    v60 = (char *)a6;
    v55 = 19;
  }
  if ( v9 < v10 )
    v10 = v9;
  if ( k >= v10 )
    v10 = k;
  v54 = 1 << v10;
  v24 = a1 == 1;
  v58 = v24;
  v52 = v10;
  if ( (unsigned int)(1 << v10) <= 0x5AF )
    v24 = 0;
  v50 = *a4;
  v57 = v54 - 1;
  if ( v24 )
    return 1;
  v48 = a6;
  LOBYTE(v25) = v10;
  v51 = -1;
  v26 = 0;
  v27 = k;
  v28 = v9;
  while ( 1 )
  {
    v29 = *v48;
    v30 = v27 - v26;
    if ( v55 <= v29 )
    {
      if ( v55 >= v29 )
      {
        v31 = 96;
        LOWORD(v29) = 0;
      }
      else
      {
        v32 = 2 * v29;
        LOWORD(v29) = *(_WORD *)&v60[2 * v29];
        v31 = v59[v32];
      }
    }
    else
    {
      v31 = 0;
    }
    v33 = 1 << (v27 - v26);
    v49 = 1 << v25;
    v34 = v50 + 4 * ((1 << v25) + (v24 >> v26) - v33);
    v35 = (1 << v25) - v33;
    do
    {
      v35 -= v33;
      *(_WORD *)(v34 + 2) = v29;
      *(_BYTE *)(v34 + 1) = v30;
      *(_BYTE *)v34 = v31;
      v34 -= 4 * v33;
    }
    while ( v35 + v33 );
    v36 = v27 - 1;
    for ( n = 1 << (v27 - 1); (n & v24) != 0; n >>= 1 )
      ;
    if ( n )
      v24 &= n - 1;
    v38 = v27;
    if ( n )
      v24 += n;
    else
      v24 = 0;
    if ( v63[v27] == 1 )
      break;
LABEL_52:
    --v63[v38];
    if ( v27 > v52 )
    {
      v39 = v24 & v57;
      if ( (v24 & v57) != v51 )
      {
        if ( !v26 )
          v26 = v52;
        v25 = v27 - v26;
        if ( v28 > v27 )
        {
          v40 = (1 << v25) - v63[v27];
          if ( v40 > 0 )
          {
            v41 = (char *)&v63[v27];
            do
            {
              if ( v28 <= ++v25 + v26 )
                break;
              v42 = *((unsigned __int16 *)v41 + 1);
              v41 += 2;
              v40 = 2 * v40 - v42;
            }
            while ( v40 > 0 );
          }
        }
        v54 += 1 << v25;
        if ( v54 > 0x5AF )
          v43 = v58;
        else
          v43 = 0;
        if ( v43 )
          return 1;
        v50 += 4 * v49;
        *(_BYTE *)(*a4 + 4 * v39) = v25;
        *(_BYTE *)(*a4 + 4 * v39 + 1) = v52;
        *(_WORD *)(*a4 + 4 * v39 + 2) = (v50 - *a4) >> 2;
      }
    }
    else
    {
      v39 = v51;
    }
    v51 = v39;
    ++v48;
  }
  if ( v27 != v28 )
  {
    v27 = *(unsigned __int16 *)(a2 + 2 * v48[1]);
    goto LABEL_52;
  }
  if ( v24 )
  {
    v45 = v50;
    do
    {
      if ( v26 && (v24 & v57) != v51 )
      {
        v30 = v52;
        v26 = 0;
        v45 = *a4;
        v36 = v52 - 1;
      }
      v46 = 1 << v36;
      v47 = v45 + 4 * (v24 >> v26);
      *(_BYTE *)(v47 + 1) = v30;
      *(_WORD *)(v47 + 2) = 0;
      for ( *(_BYTE *)v47 = 64; (v46 & v24) != 0; v46 >>= 1 )
        ;
      if ( !v46 )
        break;
      v24 = ((v46 - 1) & v24) + v46;
    }
    while ( v24 );
  }
  *a4 += 4 * v54;
  *a5 = v52;
  return 0;
}


// ===== 674eb8 zlibVersion =====
const char *zlibVersion()
{
  return "1.2.3";
}


// ===== 674ec8 zlibCompileFlags =====
int zlibCompileFlags()
{
  return 85;
}


// ===== 674ed0 zError =====
char *__fastcall zError(int a1)
{
  return z_errmsg[2 - a1];
}


// ===== 674ef4 zcfree_0 =====
void __fastcall zcfree_0(int a1, void *p)
{
  free(p);
}


// ===== 674efc zcalloc_0 =====
void *__fastcall zcalloc_0(int a1, int a2, int a3)
{
  return LC_API_MALLOC_0(a2 * a3);
}


// ===== 674f04 jpeg_suppress_tables =====
_DWORD *__fastcall jpeg_suppress_tables(_DWORD *result, char a2)
{
  int v2; // r3
  int v3; // r3
  int v4; // r3
  int v5; // r3
  int v6; // r3
  int v7; // r2
  int v8; // r2

  v2 = result[18];
  if ( v2 )
    *(_BYTE *)(v2 + 128) = a2;
  v3 = result[19];
  if ( v3 )
    *(_BYTE *)(v3 + 128) = a2;
  v4 = result[20];
  if ( v4 )
    *(_BYTE *)(v4 + 128) = a2;
  v5 = result[21];
  if ( v5 )
    *(_BYTE *)(v5 + 128) = a2;
  v6 = 0;
  do
  {
    v7 = result[22];
    ++v6;
    if ( v7 )
      *(_BYTE *)(v7 + 273) = a2;
    v8 = result[26];
    ++result;
    if ( v8 )
      *(_BYTE *)(v8 + 273) = a2;
  }
  while ( v6 != 4 );
  return result;
}


// ===== 674f64 jpeg_write_marker =====
int __fastcall jpeg_write_marker(_DWORD *a1, int a2, int a3, int a4)
{
  int result; // r0
  int (__fastcall *v9)(_DWORD *, int); // r8
  int v10; // r7
  int v11; // r1

  if ( a1[52] || (unsigned int)(a1[5] - 101) > 2 )
  {
    *(_DWORD *)(*a1 + 20) = 20;
    *(_DWORD *)(*a1 + 24) = a1[5];
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  result = (*(int (__fastcall **)(_DWORD *, int, int))(a1[83] + 20))(a1, a2, a4);
  v9 = *(int (__fastcall **)(_DWORD *, int))(a1[83] + 24);
  if ( a4 )
  {
    v10 = 0;
    do
    {
      v11 = *(unsigned __int8 *)(a3 + v10++);
      result = v9(a1, v11);
    }
    while ( a4 != v10 );
  }
  return result;
}


// ===== 675008 jpeg_write_m_header =====
int __fastcall jpeg_write_m_header(_DWORD *a1, int a2, int a3)
{
  if ( a1[52] || (unsigned int)(a1[5] - 101) > 2 )
  {
    *(_DWORD *)(*a1 + 20) = 20;
    *(_DWORD *)(*a1 + 24) = a1[5];
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  return (*(int (__fastcall **)(_DWORD *, int, int))(a1[83] + 20))(a1, a2, a3);
}


// ===== 675078 jpeg_write_m_byte =====
int __fastcall jpeg_write_m_byte(int a1)
{
  return (*(int (**)(void))(*(_DWORD *)(a1 + 332) + 24))();
}


// ===== 67508c jpeg_write_tables =====
int __fastcall jpeg_write_tables(_DWORD *a1)
{
  if ( a1[5] != 100 )
  {
    *(_DWORD *)(*a1 + 20) = 20;
    *(_DWORD *)(*a1 + 24) = a1[5];
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  (*(void (__fastcall **)(_DWORD *))(*a1 + 16))(a1);
  (*(void (__fastcall **)(_DWORD *))(a1[6] + 8))(a1);
  jinit_marker_writer(a1);
  (*(void (__fastcall **)(_DWORD *))(a1[83] + 16))(a1);
  return (*(int (__fastcall **)(_DWORD *))(a1[6] + 16))(a1);
}


// ===== 675110 jpeg_finish_compress =====
int __fastcall jpeg_finish_compress(_DWORD *a1)
{
  int v1; // r3
  int i; // r3
  unsigned int v4; // r5
  int v5; // r3

  v1 = a1[5];
  if ( (unsigned int)(v1 - 101) <= 1 )
  {
    if ( a1[52] < a1[8] )
    {
      *(_DWORD *)(*a1 + 20) = 67;
      (*(void (__fastcall **)(_DWORD *))*a1)(a1);
    }
    (*(void (__fastcall **)(_DWORD *))(a1[79] + 8))(a1);
  }
  else if ( v1 != 103 )
  {
    *(_DWORD *)(*a1 + 20) = 20;
    *(_DWORD *)(*a1 + 24) = a1[5];
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  for ( i = a1[79]; !*(_BYTE *)(i + 13); i = a1[79] )
  {
    (*(void (__fastcall **)(_DWORD *))i)(a1);
    if ( a1[56] )
    {
      v4 = 0;
      do
      {
        while ( 1 )
        {
          v5 = a1[2];
          if ( v5 )
          {
            *(_DWORD *)(v5 + 4) = v4;
            *(_DWORD *)(a1[2] + 8) = a1[56];
            (*(void (__fastcall **)(_DWORD *))a1[2])(a1);
          }
          ++v4;
          if ( !(*(int (__fastcall **)(_DWORD *, _DWORD))(a1[82] + 4))(a1, 0) )
            break;
          if ( a1[56] <= v4 )
            goto LABEL_12;
        }
        *(_DWORD *)(*a1 + 20) = 24;
        (*(void (__fastcall **)(_DWORD *))*a1)(a1);
      }
      while ( a1[56] > v4 );
    }
LABEL_12:
    (*(void (__fastcall **)(_DWORD *))(a1[79] + 8))(a1);
  }
  (*(void (__fastcall **)(_DWORD *))(a1[83] + 12))(a1);
  (*(void (__fastcall **)(_DWORD *))(a1[6] + 16))(a1);
  return jpeg_abort(a1);
}


// ===== 675290 jpeg_abort_compress =====
// attributes: thunk
int __fastcall jpeg_abort_compress(int a1)
{
  return jpeg_abort(a1);
}


// ===== 675294 jpeg_destroy_compress =====
// attributes: thunk
int __fastcall jpeg_destroy_compress(int a1)
{
  return jpeg_destroy(a1);
}


// ===== 675298 jpeg_CreateCompress =====
int __fastcall jpeg_CreateCompress(_DWORD *a1, int a2, int a3)
{
  int v5; // r6
  int v6; // r5
  int result; // r0

  a1[1] = 0;
  if ( a2 != 62 )
  {
    *(_DWORD *)(*a1 + 20) = 12;
    *(_DWORD *)(*a1 + 24) = 62;
    *(_DWORD *)(*a1 + 28) = a2;
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  if ( a3 != 360 )
  {
    *(_DWORD *)(*a1 + 20) = 21;
    *(_DWORD *)(*a1 + 24) = 360;
    *(_DWORD *)(*a1 + 28) = a3;
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  v5 = *a1;
  v6 = a1[3];
  LC_API_MEMSET_0(a1, 0, 0x168u);
  *a1 = v5;
  a1[3] = v6;
  result = jinit_memory_mgr(a1);
  *((_QWORD *)a1 + 6) = 0x3FF0000000000000LL;
  a1[5] = 100;
  a1[88] = 0;
  a1[2] = 0;
  a1[6] = 0;
  a1[17] = 0;
  a1[18] = 0;
  a1[19] = 0;
  a1[20] = 0;
  a1[21] = 0;
  a1[22] = 0;
  a1[26] = 0;
  a1[23] = 0;
  a1[27] = 0;
  a1[24] = 0;
  a1[28] = 0;
  a1[25] = 0;
  a1[29] = 0;
  return result;
}


// ===== 6753a0 jpeg_write_scanlines =====
int __fastcall jpeg_write_scanlines(_DWORD *a1, int a2, unsigned int a3)
{
  int v6; // r3
  int v7; // r3
  unsigned int v8; // r3
  int result; // r0
  int v10; // [sp+4h] [bp-4h] BYREF

  if ( a1[5] != 101 )
  {
    *(_DWORD *)(*a1 + 20) = 20;
    *(_DWORD *)(*a1 + 24) = a1[5];
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  if ( a1[52] >= a1[8] )
  {
    *(_DWORD *)(*a1 + 20) = 123;
    (*(void (__fastcall **)(_DWORD *, int))(*a1 + 4))(a1, -1);
  }
  v6 = a1[2];
  if ( v6 )
  {
    *(_DWORD *)(v6 + 4) = a1[52];
    *(_DWORD *)(a1[2] + 8) = a1[8];
    (*(void (__fastcall **)(_DWORD *))a1[2])(a1);
  }
  v7 = a1[79];
  if ( *(_BYTE *)(v7 + 12) )
    (*(void (__fastcall **)(_DWORD *))(v7 + 4))(a1);
  v8 = a1[8] - a1[52];
  v10 = 0;
  if ( a3 < v8 )
    v8 = a3;
  (*(void (__fastcall **)(_DWORD *, int, int *, unsigned int))(a1[80] + 4))(a1, a2, &v10, v8);
  result = v10;
  a1[52] += v10;
  return result;
}


// ===== 6754b4 jpeg_write_raw_data =====
unsigned int __fastcall jpeg_write_raw_data(_DWORD *a1, int a2, unsigned int a3)
{
  unsigned int v6; // r3
  int v7; // r2
  int v8; // r3
  unsigned int v9; // r5
  int v10; // r0
  int v11; // r3
  bool v12; // zf
  unsigned int result; // r0

  if ( a1[5] != 102 )
  {
    *(_DWORD *)(*a1 + 20) = 20;
    *(_DWORD *)(*a1 + 24) = a1[5];
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  v6 = a1[52];
  if ( v6 >= a1[8] )
  {
    *(_DWORD *)(*a1 + 20) = 123;
    (*(void (__fastcall **)(_DWORD *, int))(*a1 + 4))(a1, -1);
    return 0;
  }
  v7 = a1[2];
  if ( v7 )
  {
    *(_DWORD *)(v7 + 4) = v6;
    *(_DWORD *)(a1[2] + 8) = a1[8];
    (*(void (__fastcall **)(_DWORD *))a1[2])(a1);
  }
  v8 = a1[79];
  if ( *(_BYTE *)(v8 + 12) )
  {
    (*(void (__fastcall **)(_DWORD *))(v8 + 4))(a1);
    v9 = 8 * a1[55];
    if ( v9 <= a3 )
      goto LABEL_8;
LABEL_15:
    *(_DWORD *)(*a1 + 20) = 23;
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
    goto LABEL_8;
  }
  v9 = 8 * a1[55];
  if ( v9 > a3 )
    goto LABEL_15;
LABEL_8:
  v10 = (*(int (__fastcall **)(_DWORD *, int))(a1[82] + 4))(a1, a2);
  v12 = v10 == 0;
  if ( v10 )
    v11 = a1[52];
  else
    v9 = 0;
  result = v9;
  if ( !v12 )
    a1[52] = v11 + v9;
  return result;
}


// ===== 6755e8 jpeg_start_compress =====
int __fastcall jpeg_start_compress(_DWORD *a1, int a2)
{
  int result; // r0
  int v5; // r3
  int v6; // r3

  if ( a1[5] != 100 )
  {
    *(_DWORD *)(*a1 + 20) = 20;
    *(_DWORD *)(*a1 + 24) = a1[5];
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  if ( a2 )
    jpeg_suppress_tables(a1, 0);
  (*(void (__fastcall **)(_DWORD *))(*a1 + 16))(a1);
  (*(void (__fastcall **)(_DWORD *))(a1[6] + 8))(a1);
  jinit_compress_master(a1);
  result = (*(int (__fastcall **)(_DWORD *))a1[79])(a1);
  v5 = *((unsigned __int8 *)a1 + 176);
  a1[52] = 0;
  if ( v5 )
    v6 = 102;
  else
    v6 = 101;
  a1[5] = v6;
  return result;
}


// ===== 675694 jinit_compress_master =====
int __fastcall jinit_compress_master(int a1)
{
  int v2; // r5
  int v3; // r1

  jinit_c_master_control(a1, 0);
  v2 = *(unsigned __int8 *)(a1 + 176);
  if ( !*(_BYTE *)(a1 + 176) )
  {
    jinit_color_converter(a1);
    jinit_downsampler(a1);
    jinit_c_prep_controller(a1, v2);
  }
  jinit_forward_dct(a1);
  if ( *(_BYTE *)(a1 + 177) )
  {
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 1;
    (**(void (__fastcall ***)(int))a1)(a1);
  }
  else if ( *(_BYTE *)(a1 + 212) )
  {
    jinit_phuff_encoder(a1);
  }
  else
  {
    jinit_huff_encoder(a1);
  }
  if ( *(int *)(a1 + 168) <= 1 )
  {
    v3 = *(unsigned __int8 *)(a1 + 178);
    if ( *(_BYTE *)(a1 + 178) )
      v3 = 1;
  }
  else
  {
    v3 = 1;
  }
  jinit_c_coef_controller(a1, v3);
  jinit_c_main_controller(a1, 0);
  jinit_marker_writer(a1);
  (*(void (__fastcall **)(int))(*(_DWORD *)(a1 + 4) + 24))(a1);
  return (**(int (__fastcall ***)(int))(a1 + 332))(a1);
}


// ===== 675780 start_pass_main =====
int __fastcall start_pass_main(int result, int a2)
{
  int v2; // r3
  int v3; // r12

  v2 = *(unsigned __int8 *)(result + 176);
  v3 = *(_DWORD *)(result + 320);
  if ( !*(_BYTE *)(result + 176) )
  {
    *(_BYTE *)(v3 + 16) = v2;
    *(_DWORD *)(v3 + 8) = v2;
    *(_DWORD *)(v3 + 12) = v2;
    *(_DWORD *)(v3 + 20) = a2;
    if ( a2 )
    {
      *(_DWORD *)(*(_DWORD *)result + 20) = 4;
      return (**(int (__fastcall ***)(int))result)(result);
    }
    else
    {
      *(_DWORD *)(v3 + 4) = process_data_simple_main;
    }
  }
  return result;
}


// ===== 6757dc process_data_simple_main =====
unsigned int __fastcall process_data_simple_main(_DWORD *a1, int a2, _DWORD *a3, int a4)
{
  int v4; // r4
  unsigned int result; // r0
  unsigned int v10; // r3
  unsigned int v11; // r3

  v4 = a1[80];
  result = a1[56];
  if ( *(_DWORD *)(v4 + 8) < result )
  {
    v10 = *(_DWORD *)(v4 + 12);
    if ( v10 <= 7 )
      goto LABEL_8;
    if ( v10 == 8 )
    {
      while ( 1 )
      {
        result = (*(int (__fastcall **)(_DWORD *, int))(a1[82] + 4))(a1, v4 + 24);
        if ( !result )
          break;
        if ( *(_BYTE *)(v4 + 16) )
        {
          ++*a3;
          *(_BYTE *)(v4 + 16) = 0;
        }
        v11 = *(_DWORD *)(v4 + 8);
        *(_DWORD *)(v4 + 12) = 0;
        *(_DWORD *)(v4 + 8) = ++v11;
        if ( a1[56] <= v11 )
          return result;
LABEL_8:
        result = (*(int (__fastcall **)(_DWORD *, int, _DWORD *, int, int, int, int))(a1[81] + 4))(
                   a1,
                   a2,
                   a3,
                   a4,
                   v4 + 24,
                   v4 + 12,
                   8);
        if ( *(_DWORD *)(v4 + 12) != 8 )
          return result;
      }
      if ( !*(_BYTE *)(v4 + 16) )
      {
        --*a3;
        *(_BYTE *)(v4 + 16) = 1;
      }
    }
  }
  return result;
}


// ===== 6758dc jinit_c_main_controller =====
int (__fastcall **__fastcall jinit_c_main_controller(int a1, int a2))(int result, int a2)
{
  int (__fastcall **result)(int, int); // r0
  int v5; // r4
  int (__fastcall **v6)(int, int); // r6

  result = (int (__fastcall **)(int, int))(**(int (***)(void))(a1 + 4))();
  *(_DWORD *)(a1 + 320) = result;
  *result = start_pass_main;
  if ( !*(_BYTE *)(a1 + 176) )
  {
    if ( a2 )
    {
      *(_DWORD *)(*(_DWORD *)a1 + 20) = 4;
      return (int (__fastcall **)(int, int))(**(int (__fastcall ***)(int))a1)(a1);
    }
    else
    {
      v5 = *(_DWORD *)(a1 + 68);
      if ( *(int *)(a1 + 60) > 0 )
      {
        v6 = result;
        do
        {
          result = (int (__fastcall **)(int, int))(*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)(a1 + 4) + 8))(
                                                    a1,
                                                    1,
                                                    8 * *(_DWORD *)(v5 + 28),
                                                    8 * *(_DWORD *)(v5 + 12));
          v6[6] = (int (__fastcall *)(int, int))result;
          ++a2;
          v5 += 84;
          ++v6;
        }
        while ( *(_DWORD *)(a1 + 60) > a2 );
      }
    }
  }
  return result;
}


// ===== 67599c emit_byte =====
int __fastcall emit_byte(int result, char a2)
{
  int v2; // r3
  int v3; // r4
  _BYTE *v4; // r2
  int v5; // r1

  v2 = *(_DWORD *)(result + 24);
  v3 = result;
  v4 = *(_BYTE **)v2;
  *v4 = a2;
  v5 = *(_DWORD *)(v2 + 4);
  *(_DWORD *)v2 = v4 + 1;
  *(_DWORD *)(v2 + 4) = v5 - 1;
  if ( v5 == 1 )
  {
    result = (*(int (**)(void))(v2 + 12))();
    if ( !result )
    {
      *(_DWORD *)(*(_DWORD *)v3 + 20) = 24;
      return (**(int (__fastcall ***)(int))v3)(v3);
    }
  }
  return result;
}


// ===== 6759fc emit_marker =====
int __fastcall emit_marker(int a1, char a2)
{
  emit_byte(a1, 255);
  return emit_byte(a1, a2);
}


// ===== 675a20 emit_2bytes =====
int __fastcall emit_2bytes(int a1, __int16 a2)
{
  char v2; // r4

  v2 = a2;
  emit_byte(a1, SHIBYTE(a2));
  return emit_byte(a1, v2);
}


// ===== 675a44 emit_dqt =====
int __fastcall emit_dqt(int a1, int a2)
{
  int v2; // r6
  char v3; // r10
  int v5; // r3
  int v6; // r4
  unsigned int v7; // r2
  int v8; // r5
  __int16 v10; // r1
  int v11; // r3
  __int16 v12; // r7

  v2 = *(_DWORD *)(a1 + 4 * (a2 + 18));
  v3 = a2;
  if ( !v2 )
  {
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 52;
    *(_DWORD *)(*(_DWORD *)a1 + 24) = a2;
    (**(void (__fastcall ***)(int))a1)(a1);
  }
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = *(unsigned __int16 *)(v2 + v5);
    v5 += 2;
    if ( v7 > 0xFF )
      v6 = 1;
  }
  while ( v5 != 128 );
  v8 = *(unsigned __int8 *)(v2 + 128);
  if ( *(_BYTE *)(v2 + 128) )
    return v6;
  emit_marker(a1, 219);
  if ( v6 )
    v10 = 131;
  else
    v10 = 67;
  emit_2bytes(a1, v10);
  emit_byte(a1, v3 + 16 * v6);
  do
  {
    while ( 1 )
    {
      v11 = *(_DWORD *)((char *)&jpeg_natural_order + v8);
      v8 += 4;
      v12 = *(_WORD *)(v2 + 2 * v11);
      if ( v6 )
        break;
      emit_byte(a1, v12);
      if ( v8 == 256 )
        goto LABEL_16;
    }
    emit_byte(a1, SHIBYTE(v12));
    emit_byte(a1, v12);
  }
  while ( v8 != 256 );
LABEL_16:
  *(_BYTE *)(v2 + 128) = 1;
  return v6;
}


// ===== 675b5c emit_dht =====
int __fastcall emit_dht(int result, int a2, int a3)
{
  int v3; // r4
  int v4; // r3
  int v5; // r8
  int v6; // r7
  int v7; // r6
  int i; // r3
  int v9; // r2
  int j; // r4
  char v11; // r1
  int v12; // r5
  int k; // r4

  v3 = a2;
  if ( a3 )
    v4 = a2 + 26;
  else
    v4 = a2 + 22;
  v5 = *(_DWORD *)(result + 4 * v4);
  if ( a3 )
    v3 = a2 + 16;
  v6 = result;
  if ( !v5 )
  {
    *(_DWORD *)(*(_DWORD *)result + 20) = 50;
    *(_DWORD *)(*(_DWORD *)result + 24) = v3;
    result = (**(int (__fastcall ***)(int))result)(result);
  }
  v7 = *(unsigned __int8 *)(v5 + 273);
  if ( !*(_BYTE *)(v5 + 273) )
  {
    emit_marker(v6, 196);
    for ( i = 1; i != 17; ++i )
    {
      v9 = *(unsigned __int8 *)(v5 + i);
      v7 += v9;
    }
    emit_2bytes(v6, v7 + 19);
    emit_byte(v6, v3);
    for ( j = 1; j != 17; ++j )
    {
      v11 = *(_BYTE *)(v5 + j);
      result = emit_byte(v6, v11);
    }
    if ( v7 )
    {
      v12 = v5;
      for ( k = 0; k != v7; ++k )
      {
        result = emit_byte(v6, *(_BYTE *)(v12 + 17));
        ++v12;
      }
    }
    *(_BYTE *)(v5 + 273) = 1;
  }
  return result;
}


// ===== 675c4c emit_sof =====
int __fastcall emit_sof(int a1, char a2)
{
  int result; // r0
  int v4; // r4
  int v5; // r6

  emit_marker(a1, a2);
  emit_2bytes(a1, 3 * *(_WORD *)(a1 + 60) + 8);
  if ( *(int *)(a1 + 32) > 0xFFFF || *(int *)(a1 + 28) > 0xFFFF )
  {
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 41;
    *(_DWORD *)(*(_DWORD *)a1 + 24) = 0xFFFF;
    (**(void (__fastcall ***)(int))a1)(a1);
  }
  emit_byte(a1, *(_DWORD *)(a1 + 56));
  emit_2bytes(a1, *(_DWORD *)(a1 + 32));
  emit_2bytes(a1, *(_DWORD *)(a1 + 28));
  result = emit_byte(a1, *(_DWORD *)(a1 + 60));
  v4 = *(_DWORD *)(a1 + 68);
  if ( *(int *)(a1 + 60) > 0 )
  {
    v5 = 0;
    do
    {
      emit_byte(a1, *(_DWORD *)v4);
      ++v5;
      emit_byte(a1, *(_BYTE *)(v4 + 12) + 16 * *(_BYTE *)(v4 + 8));
      result = emit_byte(a1, *(_DWORD *)(v4 + 16));
      v4 += 84;
    }
    while ( *(_DWORD *)(a1 + 60) > v5 );
  }
  return result;
}


// ===== 675d3c write_marker_header =====
int __fastcall write_marker_header(int a1, char a2, unsigned int a3)
{
  __int16 v3; // r5
  char v6; // [sp+4h] [bp-8h]

  v3 = a3;
  if ( a3 > 0xFFFD )
  {
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 11;
    v6 = a2;
    (**(void (__fastcall ***)(int))a1)(a1);
    a2 = v6;
  }
  emit_marker(a1, a2);
  return emit_2bytes(a1, v3 + 2);
}


// ===== 675d94 write_marker_byte =====
// attributes: thunk
int __fastcall write_marker_byte(int result, char a2)
{
  return emit_byte(result, a2);
}


// ===== 675d98 write_file_header =====
int __fastcall write_file_header(int a1)
{
  int v1; // r6
  int result; // r0
  int v4; // r3

  v1 = *(_DWORD *)(a1 + 332);
  result = emit_marker(a1, 216);
  *(_DWORD *)(v1 + 28) = 0;
  if ( *(_BYTE *)(a1 + 196) )
  {
    emit_marker(a1, 224);
    emit_2bytes(a1, 16);
    emit_byte(a1, 74);
    emit_byte(a1, 70);
    emit_byte(a1, 73);
    emit_byte(a1, 70);
    emit_byte(a1, 0);
    emit_byte(a1, *(_BYTE *)(a1 + 197));
    emit_byte(a1, *(_BYTE *)(a1 + 198));
    emit_byte(a1, *(_BYTE *)(a1 + 199));
    emit_2bytes(a1, *(_WORD *)(a1 + 200));
    emit_2bytes(a1, *(_WORD *)(a1 + 202));
    emit_byte(a1, 0);
    result = emit_byte(a1, 0);
  }
  if ( *(_BYTE *)(a1 + 204) )
  {
    emit_marker(a1, 238);
    emit_2bytes(a1, 14);
    emit_byte(a1, 65);
    emit_byte(a1, 100);
    emit_byte(a1, 111);
    emit_byte(a1, 98);
    emit_byte(a1, 101);
    emit_2bytes(a1, 100);
    emit_2bytes(a1, 0);
    emit_2bytes(a1, 0);
    v4 = *(_DWORD *)(a1 + 64);
    if ( v4 == 3 )
    {
      return emit_byte(a1, 1);
    }
    else if ( v4 == 5 )
    {
      return emit_byte(a1, 2);
    }
    else
    {
      return emit_byte(a1, 0);
    }
  }
  return result;
}


// ===== 675f38 write_frame_header =====
int __fastcall write_frame_header(int a1)
{
  int v1; // r3
  int v3; // r4
  int v4; // r7
  int i; // r5
  int v6; // r0
  int v7; // r1
  int v8; // r0
  int v10; // r2
  int v11; // r1
  int v12; // r7

  v1 = *(_DWORD *)(a1 + 60);
  v3 = *(_DWORD *)(a1 + 68);
  if ( v1 > 0 )
  {
    v4 = 0;
    for ( i = 0; i < v1; ++i )
    {
      v6 = emit_dqt(a1, *(_DWORD *)(v3 + 16));
      v1 = *(_DWORD *)(a1 + 60);
      v4 += v6;
      v3 += 84;
    }
  }
  else
  {
    v4 = 0;
  }
  if ( *(_BYTE *)(a1 + 177) )
    return emit_sof(a1, 201);
  v7 = *(unsigned __int8 *)(a1 + 212);
  if ( *(_BYTE *)(a1 + 212) || *(_DWORD *)(a1 + 56) != 8 )
  {
    v8 = 0;
  }
  else
  {
    v10 = *(_DWORD *)(a1 + 68);
    if ( v1 > 0 )
    {
      v8 = 1;
      v11 = v7 + 1;
      if ( *(int *)(v10 + 20) <= 1 )
        goto LABEL_19;
LABEL_16:
      v8 = 0;
      while ( v11 != v1 )
      {
        v10 += 84;
        ++v11;
        if ( *(int *)(v10 + 20) > 1 )
          goto LABEL_16;
LABEL_19:
        if ( *(int *)(v10 + 24) > 1 )
          goto LABEL_16;
      }
    }
    else
    {
      v8 = 1;
    }
    if ( v4 )
      v12 = v8;
    else
      v12 = 0;
    if ( !v12 )
      goto LABEL_10;
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 75;
    (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)a1 + 4))(a1, 0);
    v8 = *(unsigned __int8 *)(a1 + 177);
    if ( *(_BYTE *)(a1 + 177) )
      return emit_sof(a1, 201);
    v7 = *(unsigned __int8 *)(a1 + 212);
  }
  if ( v7 )
    return emit_sof(a1, 194);
LABEL_10:
  if ( v8 )
    return emit_sof(a1, 192);
  else
    return emit_sof(a1, 193);
}


// ===== 676094 write_scan_header =====
int __fastcall write_scan_header(int a1)
{
  int v1; // r6
  int v3; // r8
  int v4; // r3
  int v5; // r5
  int v6; // r7
  int v7; // r7
  int v8; // r6
  _DWORD *v9; // r5
  int v10; // r1
  int v11; // r2

  v1 = *(unsigned __int8 *)(a1 + 177);
  v3 = *(_DWORD *)(a1 + 332);
  if ( !*(_BYTE *)(a1 + 177) )
  {
    v4 = *(_DWORD *)(a1 + 228);
    if ( v4 > 0 )
    {
      v5 = a1;
      do
      {
        v6 = *(_DWORD *)(v5 + 232);
        if ( *(_BYTE *)(a1 + 212) )
        {
          if ( *(_DWORD *)(a1 + 300) )
          {
            emit_dht(a1, *(_DWORD *)(v6 + 24), 1);
            v4 = *(_DWORD *)(a1 + 228);
          }
          else if ( !*(_DWORD *)(a1 + 308) )
          {
            emit_dht(a1, *(_DWORD *)(v6 + 20), 0);
            v4 = *(_DWORD *)(a1 + 228);
          }
        }
        else
        {
          emit_dht(a1, *(_DWORD *)(v6 + 20), *(unsigned __int8 *)(a1 + 212));
          emit_dht(a1, *(_DWORD *)(v6 + 24), 1);
          v4 = *(_DWORD *)(a1 + 228);
        }
        ++v1;
        v5 += 4;
      }
      while ( v4 > v1 );
    }
  }
  if ( *(_DWORD *)(a1 + 188) != *(_DWORD *)(v3 + 28) )
  {
    emit_marker(a1, 221);
    emit_2bytes(a1, 4);
    emit_2bytes(a1, *(_DWORD *)(a1 + 188));
    *(_DWORD *)(v3 + 28) = *(_DWORD *)(a1 + 188);
  }
  emit_marker(a1, 218);
  emit_2bytes(a1, 2 * (*(_WORD *)(a1 + 228) + 3));
  emit_byte(a1, *(_DWORD *)(a1 + 228));
  if ( *(int *)(a1 + 228) > 0 )
  {
    v7 = a1;
    v8 = 0;
    do
    {
      v9 = *(_DWORD **)(v7 + 232);
      emit_byte(a1, *v9);
      v10 = v9[6];
      v11 = v9[5];
      if ( *(_BYTE *)(a1 + 212) )
      {
        if ( !*(_DWORD *)(a1 + 300) )
        {
          LOBYTE(v10) = 16 * v11;
          if ( *(_DWORD *)(a1 + 308) )
          {
            if ( !*(_BYTE *)(a1 + 177) )
              LOBYTE(v10) = *(_BYTE *)(a1 + 177);
          }
        }
      }
      else
      {
        LOBYTE(v10) = v10 + 16 * v11;
      }
      emit_byte(a1, v10);
      ++v8;
      v7 += 4;
    }
    while ( v8 < *(_DWORD *)(a1 + 228) );
  }
  emit_byte(a1, *(_DWORD *)(a1 + 300));
  emit_byte(a1, *(_DWORD *)(a1 + 304));
  return emit_byte(a1, *(_BYTE *)(a1 + 312) + 16 * *(_BYTE *)(a1 + 308));
}


// ===== 67625c write_file_trailer =====
int __fastcall write_file_trailer(int a1)
{
  return emit_marker(a1, 217);
}


// ===== 676264 write_tables_only =====
int __fastcall write_tables_only(int a1)
{
  int v2; // r6
  int v3; // r7
  int i; // r5
  int v5; // r1
  int v6; // r5
  int v7; // r1

  emit_marker(a1, 216);
  v2 = a1;
  v3 = a1;
  for ( i = 0; i != 4; ++i )
  {
    v5 = i;
    if ( *(_DWORD *)(v3 + 72) )
      emit_dqt(a1, v5);
    v3 += 4;
  }
  v6 = *(unsigned __int8 *)(a1 + 177);
  if ( !*(_BYTE *)(a1 + 177) )
  {
    do
    {
      if ( *(_DWORD *)(v2 + 88) )
        emit_dht(a1, v6, 0);
      v7 = v6++;
      if ( *(_DWORD *)(v2 + 104) )
        emit_dht(a1, v7, 1);
      v2 += 4;
    }
    while ( v6 != 4 );
  }
  return emit_marker(a1, 217);
}


// ===== 67630c jinit_marker_writer =====
int (__fastcall **__fastcall jinit_marker_writer(int a1))(int a1)
{
  int (__fastcall **result)(int); // r0

  result = (int (__fastcall **)(int))(**(int (***)(void))(a1 + 4))();
  *(_DWORD *)(a1 + 332) = result;
  result[7] = nullptr;
  *result = write_file_header;
  result[1] = write_frame_header;
  result[2] = write_scan_header;
  result[3] = write_file_trailer;
  result[4] = write_tables_only;
  result[5] = (int (__fastcall *)(int))write_marker_header;
  result[6] = (int (__fastcall *)(int))write_marker_byte;
  return result;
}


// ===== 6763a8 select_scan_parameters =====
_DWORD *__fastcall select_scan_parameters(_DWORD *result)
{
  int v1; // r3
  _DWORD *v2; // r4
  int v3; // r1
  int v4; // r2
  int v5; // r5
  _DWORD *v6; // r1
  int v7; // r3
  int v8; // r0
  int v9; // r3
  _DWORD *v10; // r1
  int v11; // r2

  v1 = result[43];
  v2 = result;
  if ( v1 )
  {
    v3 = 36 * *(_DWORD *)(result[79] + 28);
    result = *(_DWORD **)(v1 + v3);
    v4 = v1 + v3;
    v2[57] = result;
    if ( *(int *)(v1 + v3) > 0 )
    {
      v5 = v2[17];
      v6 = v2;
      v7 = 0;
      do
      {
        v8 = *(_DWORD *)(v4 + 4 * v7++ + 4);
        v6[58] = v5 + 84 * v8;
        result = *(_DWORD **)v4;
        ++v6;
      }
      while ( *(_DWORD *)v4 > v7 );
    }
    v2[75] = *(_DWORD *)(v4 + 20);
    v2[76] = *(_DWORD *)(v4 + 24);
    v2[77] = *(_DWORD *)(v4 + 28);
    v2[78] = *(_DWORD *)(v4 + 32);
  }
  else
  {
    v9 = result[15];
    if ( v9 > 4 )
    {
      *(_DWORD *)(*result + 20) = 26;
      *(_DWORD *)(*result + 24) = result[15];
      *(_DWORD *)(*result + 28) = 4;
      result = (_DWORD *)(*(int (__fastcall **)(_DWORD *))*result)(result);
      v9 = v2[15];
    }
    v2[57] = v9;
    if ( v9 > 0 )
    {
      result = (_DWORD *)v2[17];
      v10 = v2;
      v11 = 0;
      do
      {
        ++v11;
        v10[58] = result;
        result += 21;
        ++v10;
      }
      while ( v11 < v9 );
    }
    v2[78] = 0;
    v2[76] = 63;
    v2[75] = 0;
    v2[77] = 0;
  }
  return result;
}


// ===== 6764cc pass_startup =====
int __fastcall pass_startup(int a1)
{
  *(_BYTE *)(*(_DWORD *)(a1 + 316) + 12) = 0;
  (*(void (**)(void))(*(_DWORD *)(a1 + 332) + 4))();
  return (*(int (__fastcall **)(int))(*(_DWORD *)(a1 + 332) + 8))(a1);
}


// ===== 676500 finish_pass_master =====
int __fastcall finish_pass_master(int a1)
{
  _DWORD *v1; // r4
  int result; // r0
  int v4; // r3

  v1 = *(_DWORD **)(a1 + 316);
  result = (*(int (**)(void))(*(_DWORD *)(a1 + 348) + 8))();
  v4 = v1[4];
  if ( v4 == 1 )
  {
    v1[4] = 2;
  }
  else if ( v4 )
  {
    if ( v4 == 2 )
    {
      if ( *(_BYTE *)(a1 + 178) )
        v1[4] = 1;
      ++v1[7];
    }
  }
  else
  {
    v1[4] = 2;
    if ( !*(_BYTE *)(a1 + 178) )
      ++v1[7];
  }
  ++v1[5];
  return result;
}


// ===== 676588 jinit_c_master_control =====
int __fastcall jinit_c_master_control(int a1, int a2)
{
  int v3; // r3
  int v4; // r3
  int v5; // r1
  int v6; // r5
  int v7; // r6
  int v8; // r2
  int v9; // r1
  int v10; // r0
  int v11; // r5
  int v12; // r6
  int v13; // r0
  int v14; // r0
  _BYTE *v15; // r1
  int j; // r2
  _DWORD *v17; // r12
  int v18; // r12
  int v19; // r3
  int i; // r5
  int v21; // r9
  int *v22; // r6
  int v23; // r5
  int v24; // r7
  unsigned int v25; // r12
  int v26; // r8
  int v27; // r10
  int v28; // r7
  _BOOL4 v29; // r3
  int v30; // r3
  _BYTE *v31; // r6
  int v32; // r5
  int *v33; // r6
  bool v35; // zf
  int v36; // r5
  _BYTE *v37; // r6
  int v38; // r5
  int v39; // r5
  int v40; // r3
  int result; // r0
  bool v42; // zf
  int v43; // r3
  _DWORD *v44; // [sp+4h] [bp-A40h]
  signed int v45; // [sp+8h] [bp-A3Ch]
  int v46; // [sp+Ch] [bp-A38h]
  int v47; // [sp+14h] [bp-A30h]
  int v48; // [sp+20h] [bp-A24h]
  _BYTE v50[2580]; // [sp+30h] [bp-A14h] BYREF

  v48 = (**(int (***)(void))(a1 + 4))();
  *(_DWORD *)(a1 + 316) = v48;
  *(_DWORD *)(v48 + 8) = finish_pass_master;
  *(_DWORD *)v48 = prepare_for_pass;
  *(_DWORD *)(v48 + 4) = pass_startup;
  *(_BYTE *)(v48 + 13) = 0;
  v3 = *(_DWORD *)(a1 + 32);
  if ( !v3 || !*(_DWORD *)(a1 + 28) || *(int *)(a1 + 60) <= 0 || *(int *)(a1 + 36) <= 0 )
  {
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 32;
    (**(void (__fastcall ***)(int))a1)(a1);
    v3 = *(_DWORD *)(a1 + 32);
  }
  if ( v3 > 65500 || *(int *)(a1 + 28) > 65500 )
  {
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 41;
    *(_DWORD *)(*(_DWORD *)a1 + 24) = 65500;
    (**(void (__fastcall ***)(int))a1)(a1);
  }
  if ( *(_DWORD *)(a1 + 56) != 8 )
  {
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 15;
    *(_DWORD *)(*(_DWORD *)a1 + 24) = *(_DWORD *)(a1 + 56);
    (**(void (__fastcall ***)(int))a1)(a1);
  }
  v4 = *(_DWORD *)(a1 + 60);
  if ( v4 > 10 )
  {
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 26;
    *(_DWORD *)(*(_DWORD *)a1 + 24) = *(_DWORD *)(a1 + 60);
    *(_DWORD *)(*(_DWORD *)a1 + 28) = 10;
    (**(void (__fastcall ***)(int))a1)(a1);
    v4 = *(_DWORD *)(a1 + 60);
  }
  v5 = 1;
  *(_DWORD *)(a1 + 216) = 1;
  *(_DWORD *)(a1 + 220) = 1;
  v6 = *(_DWORD *)(a1 + 68);
  if ( v4 > 0 )
  {
    v7 = 0;
    while ( 1 )
    {
      v8 = *(_DWORD *)(v6 + 8);
      if ( (unsigned int)(v8 - 1) > 3 || (v9 = *(_DWORD *)(v6 + 12), v9 <= 0) || v9 > 4 )
      {
        *(_DWORD *)(*(_DWORD *)a1 + 20) = 18;
        (**(void (__fastcall ***)(int))a1)(a1);
        v8 = *(_DWORD *)(v6 + 8);
        v4 = *(_DWORD *)(a1 + 60);
      }
      v10 = *(_DWORD *)(a1 + 216);
      v5 = *(_DWORD *)(a1 + 220);
      ++v7;
      if ( v10 < v8 )
        *(_DWORD *)(a1 + 216) = v8;
      else
        *(_DWORD *)(a1 + 216) = v10;
      if ( v5 < *(_DWORD *)(v6 + 12) )
        v5 = *(_DWORD *)(v6 + 12);
      *(_DWORD *)(a1 + 220) = v5;
      if ( v7 >= v4 )
        break;
      v6 += 84;
    }
    v11 = *(_DWORD *)(a1 + 68);
    if ( v4 > 0 )
    {
      v12 = 0;
      do
      {
        *(_DWORD *)(v11 + 4) = v12;
        *(_DWORD *)(v11 + 36) = 8;
        ++v12;
        *(_DWORD *)(v11 + 28) = jdiv_round_up(*(_DWORD *)(v11 + 8) * *(_DWORD *)(a1 + 28), 8 * *(_DWORD *)(a1 + 216));
        *(_DWORD *)(v11 + 32) = jdiv_round_up(*(_DWORD *)(v11 + 12) * *(_DWORD *)(a1 + 32), 8 * *(_DWORD *)(a1 + 220));
        *(_DWORD *)(v11 + 40) = jdiv_round_up(*(_DWORD *)(v11 + 8) * *(_DWORD *)(a1 + 28), *(_DWORD *)(a1 + 216));
        v13 = jdiv_round_up(*(_DWORD *)(v11 + 12) * *(_DWORD *)(a1 + 32), *(_DWORD *)(a1 + 220));
        *(_BYTE *)(v11 + 48) = 1;
        *(_DWORD *)(v11 + 44) = v13;
        v11 += 84;
      }
      while ( v12 < *(_DWORD *)(a1 + 60) );
      v5 = *(_DWORD *)(a1 + 220);
    }
  }
  v14 = jdiv_round_up(*(_DWORD *)(a1 + 32), 8 * v5);
  v17 = *(_DWORD **)(a1 + 172);
  v44 = v17;
  *(_DWORD *)(a1 + 224) = v14;
  if ( !v17 )
  {
    *(_DWORD *)(a1 + 168) = 1;
    *(_BYTE *)(a1 + 212) = 0;
    goto LABEL_98;
  }
  v18 = *(_DWORD *)(a1 + 168);
  if ( v18 <= 0 )
  {
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 19;
    *(_DWORD *)(*(_DWORD *)a1 + 24) = 0;
    (**(void (__fastcall ***)(int))a1)(a1);
    v44 = *(_DWORD **)(a1 + 172);
    v18 = *(_DWORD *)(a1 + 168);
  }
  v15 = v44;
  j = v44[5];
  if ( j || v44[6] != 63 )
  {
    v19 = *(_DWORD *)(a1 + 60);
    j = 1;
    *(_BYTE *)(a1 + 212) = 1;
    if ( v19 > 0 )
    {
      v15 = v50;
      for ( i = 0; i < v19; ++i )
      {
        for ( j = 0; j != 256; j += 4 )
          *(_DWORD *)&v15[j] = -1;
        v15 += 256;
      }
    }
  }
  else
  {
    v19 = *(_DWORD *)(a1 + 60);
    *(_BYTE *)(a1 + 212) = 0;
    if ( v19 > 0 )
    {
      v15 = nullptr;
      do
        v50[j++ + 2560] = 0;
      while ( j != v19 );
    }
  }
  if ( v18 > 0 )
  {
    j = (int)v50;
    v21 = 1;
    v47 = *v44;
    if ( (unsigned int)(*v44 - 1) > 3 )
      goto LABEL_73;
LABEL_38:
    v22 = v44;
    v23 = 0;
    do
    {
      while ( 1 )
      {
        v24 = v22[1];
        if ( v24 < 0 || v24 >= *(_DWORD *)(a1 + 60) )
        {
          *(_DWORD *)(*(_DWORD *)a1 + 20) = 19;
          *(_DWORD *)(*(_DWORD *)a1 + 24) = v21;
          (**(void (__fastcall ***)(int))a1)(a1);
        }
        if ( v23 && v24 <= *v22 )
          break;
        ++v23;
        ++v22;
        if ( v23 == v47 )
          goto LABEL_46;
      }
      *(_DWORD *)(*(_DWORD *)a1 + 20) = 19;
      ++v23;
      ++v22;
      *(_DWORD *)(*(_DWORD *)a1 + 24) = v21;
      (**(void (__fastcall ***)(int))a1)(a1);
    }
    while ( v23 != v47 );
LABEL_46:
    while ( 1 )
    {
      v25 = v44[5];
      v45 = v25;
      v26 = v44[6];
      v27 = v44[7];
      v28 = v44[8];
      if ( *(_BYTE *)(a1 + 212) )
        break;
      j = v44[5];
      v35 = v25 == 0;
      if ( !v25 )
        v35 = v26 == 63;
      if ( !v35 || v28 | v27 )
      {
        *(_DWORD *)(*(_DWORD *)a1 + 20) = 17;
        *(_DWORD *)(*(_DWORD *)a1 + 24) = v21;
        (**(void (__fastcall ***)(int))a1)(a1);
      }
      if ( v47 > 0 )
      {
        v36 = 0;
        v37 = &v50[v44[1] + 2576];
        if ( *(v37 - 16) )
          goto LABEL_90;
        while ( 1 )
        {
          do
          {
            ++v36;
            j = 1;
            *(v37 - 16) = 1;
            if ( v36 == v47 )
              goto LABEL_71;
            v37 = &v50[v44[v36 + 1] + 2576];
          }
          while ( !*(v37 - 16) );
LABEL_90:
          *(_DWORD *)(*(_DWORD *)a1 + 20) = 19;
          *(_DWORD *)(*(_DWORD *)a1 + 24) = v21;
          (**(void (__fastcall ***)(int))a1)(a1);
        }
      }
LABEL_71:
      if ( ++v21 > *(_DWORD *)(a1 + 168) )
      {
        v19 = *(_DWORD *)(a1 + 60);
        goto LABEL_92;
      }
      v44 += 9;
      v47 = *v44;
      if ( (unsigned int)(*v44 - 1) <= 3 )
        goto LABEL_38;
LABEL_73:
      *(_DWORD *)(*(_DWORD *)a1 + 20) = 26;
      *(_DWORD *)(*(_DWORD *)a1 + 24) = v47;
      *(_DWORD *)(*(_DWORD *)a1 + 28) = 4;
      (**(void (__fastcall ***)(int))a1)(a1);
      if ( v47 > 0 )
        goto LABEL_38;
    }
    v29 = (int)v25 > v26;
    if ( v25 > 0x3F )
      v29 = 1;
    if ( v29 || (v26 > 63) | ((unsigned int)v27 >> 31) || (v27 > 10) | ((unsigned int)v28 >> 31) || v28 > 10 )
    {
      *(_DWORD *)(*(_DWORD *)a1 + 20) = 17;
      *(_DWORD *)(*(_DWORD *)a1 + 24) = v21;
      (**(void (__fastcall ***)(int))a1)(a1);
      if ( !v45 )
      {
LABEL_54:
        if ( !v26 )
          goto LABEL_55;
        goto LABEL_79;
      }
    }
    else if ( !v25 )
    {
      goto LABEL_54;
    }
    if ( v47 == 1 )
    {
LABEL_56:
      v46 = 0;
      while ( 1 )
      {
        v30 = v44[v46 + 1];
        v31 = &v50[256 * v30];
        if ( v45 && *(int *)&v50[256 * v30] < 0 )
        {
          v32 = v45;
          *(_DWORD *)(*(_DWORD *)a1 + 20) = 17;
          *(_DWORD *)(*(_DWORD *)a1 + 24) = v21;
          (**(void (__fastcall ***)(int))a1)(a1);
        }
        else
        {
          v32 = v45;
        }
        j = v45;
        if ( v26 >= v45 )
          break;
LABEL_69:
        v15 = (_BYTE *)v47;
        if ( v47 <= ++v46 )
          goto LABEL_71;
      }
      v33 = (int *)&v31[4 * v45];
      while ( 2 )
      {
        while ( *v33 < 0 )
        {
          if ( v27 )
            goto LABEL_64;
          ++v32;
          *v33++ = v28;
          if ( v26 < v32 )
            goto LABEL_69;
        }
        if ( v27 != *v33 || v28 != v27 - 1 )
        {
LABEL_64:
          *(_DWORD *)(*(_DWORD *)a1 + 20) = 17;
          *(_DWORD *)(*(_DWORD *)a1 + 24) = v21;
          (**(void (__fastcall ***)(int))a1)(a1);
        }
        ++v32;
        *v33++ = v28;
        if ( v26 < v32 )
          goto LABEL_69;
        continue;
      }
    }
LABEL_79:
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 17;
    *(_DWORD *)(*(_DWORD *)a1 + 24) = v21;
    (**(void (__fastcall ***)(int))a1)(a1);
LABEL_55:
    v15 = (_BYTE *)v47;
    if ( v47 > 0 )
      goto LABEL_56;
    goto LABEL_71;
  }
LABEL_92:
  v38 = *(unsigned __int8 *)(a1 + 212);
  if ( *(_BYTE *)(a1 + 212) )
  {
    if ( v19 <= 0 )
    {
LABEL_99:
      *(_BYTE *)(a1 + 178) = 1;
      goto LABEL_100;
    }
    v39 = 0;
    do
    {
      while ( 1 )
      {
        j = *(_DWORD *)&v50[256 * v39];
        if ( j < 0 )
          break;
        if ( ++v39 >= v19 )
          goto LABEL_98;
      }
      ++v39;
      *(_DWORD *)(*(_DWORD *)a1 + 20) = 45;
      (**(void (__fastcall ***)(int))a1)(a1);
      v19 = *(_DWORD *)(a1 + 60);
    }
    while ( v39 < v19 );
LABEL_98:
    if ( !*(_BYTE *)(a1 + 212) )
      goto LABEL_100;
    goto LABEL_99;
  }
  if ( v19 > 0 )
  {
    do
    {
      j = (unsigned __int8)v50[v38 + 2560];
      if ( !v50[v38 + 2560] )
      {
        *(_DWORD *)(*(_DWORD *)a1 + 20) = 45;
        (**(void (__fastcall ***)(int))a1)(a1);
        v19 = *(_DWORD *)(a1 + 60);
      }
      ++v38;
    }
    while ( v38 < v19 );
    goto LABEL_98;
  }
LABEL_100:
  if ( a2 )
  {
    if ( *(_BYTE *)(a1 + 178) )
      v15 = (_BYTE *)v48;
    else
      j = v48;
    if ( *(_BYTE *)(a1 + 178) )
      v40 = 1;
    else
      v40 = 2;
    if ( *(_BYTE *)(a1 + 178) )
      *((_DWORD *)v15 + 4) = v40;
    else
      *(_DWORD *)(j + 16) = v40;
  }
  else
  {
    *(_DWORD *)(v48 + 16) = 0;
  }
  result = v48;
  *(_DWORD *)(v48 + 20) = 0;
  *(_DWORD *)(v48 + 28) = 0;
  v42 = *(_BYTE *)(a1 + 178) == 0;
  v43 = *(_DWORD *)(a1 + 168);
  if ( *(_BYTE *)(a1 + 178) )
  {
    v43 *= 2;
    *(_DWORD *)(v48 + 24) = v43;
  }
  else
  {
    v15 = (_BYTE *)v48;
  }
  if ( v42 )
    *((_DWORD *)v15 + 6) = v43;
  return result;
}


// ===== 676ed8 per_scan_setup =====
int __fastcall per_scan_setup(_DWORD *a1)
{
  int v1; // r4
  int v3; // r4
  int v4; // r0
  int v5; // r1
  int result; // r0
  int v7; // r3
  _DWORD *v8; // r9
  _DWORD *v9; // r5
  unsigned int v10; // r7
  unsigned int v11; // r10
  unsigned int v12; // r0
  int v13; // r8
  int v14; // r1
  unsigned int v15; // r0
  int v16; // r1
  int v17; // r12
  unsigned int v18; // r3
  _DWORD *v19; // r2
  int v20; // r3
  int v21; // r3
  _DWORD *v22; // r5
  unsigned int v23; // r7
  unsigned int v24; // r0
  int v25; // r1

  v1 = a1[57];
  if ( v1 == 1 )
  {
    v22 = (_DWORD *)a1[58];
    a1[62] = v22[7];
    a1[63] = v22[8];
    v23 = v22[3];
    v24 = v22[8];
    v22[16] = 8;
    v22[13] = 1;
    v22[14] = 1;
    v22[15] = 1;
    v22[17] = 1;
    v25 = v24 % v23;
    result = v24 / v23;
    if ( !v25 )
      v25 = v23;
    v22[18] = v25;
    a1[64] = 1;
    a1[65] = 0;
  }
  else
  {
    if ( (unsigned int)(v1 - 1) > 3 )
    {
      *(_DWORD *)(*a1 + 20) = 26;
      *(_DWORD *)(*a1 + 24) = a1[57];
      *(_DWORD *)(*a1 + 28) = 4;
      (*(void (__fastcall **)(_DWORD *))*a1)(a1);
    }
    v3 = 0;
    v4 = jdiv_round_up(a1[7], 8 * a1[54]);
    v5 = a1[55];
    a1[62] = v4;
    result = jdiv_round_up(a1[8], 8 * v5);
    v7 = a1[57];
    a1[63] = result;
    a1[64] = 0;
    if ( v7 > 0 )
    {
      v8 = a1;
      do
      {
        v9 = (_DWORD *)v8[58];
        v10 = v9[2];
        v11 = v9[3];
        v12 = v9[7];
        v13 = v10 * v11;
        v9[16] = 8 * v10;
        v9[13] = v10;
        v9[14] = v11;
        v9[15] = v10 * v11;
        v14 = v12 % v10;
        if ( !(v12 % v10) )
          v14 = v10;
        v9[17] = v14;
        v15 = v9[8];
        v16 = v15 % v11;
        result = v15 / v11;
        if ( !v16 )
          v16 = v11;
        v9[18] = v16;
        if ( v13 + a1[64] > 10 )
        {
          *(_DWORD *)(*a1 + 20) = 13;
          result = (*(int (__fastcall **)(_DWORD *))*a1)(a1);
        }
        if ( v13 > 0 )
        {
          v17 = a1[64];
          result = 4 * v13;
          v18 = 0;
          do
          {
            v19 = &a1[v17 + v18 / 4];
            v18 += 4;
            v19[65] = v3;
          }
          while ( v18 != result );
          a1[64] = v13 + v17;
        }
        ++v3;
        ++v8;
      }
      while ( a1[57] > v3 );
    }
  }
  v20 = a1[48];
  if ( v20 > 0 )
  {
    v21 = v20 * a1[62];
    if ( v21 > 0xFFFF )
      a1[47] = 0xFFFF;
    else
      a1[47] = v21;
  }
  return result;
}


// ===== 6770b8 prepare_for_pass =====
int __fastcall prepare_for_pass(int a1)
{
  int v1; // r5
  int v3; // r3
  int result; // r0
  int v5; // r2
  int v6; // r3
  int v7; // r6
  int v8; // r1
  int v9; // r3

  v1 = *(_DWORD *)(a1 + 316);
  v3 = *(_DWORD *)(v1 + 16);
  switch ( v3 )
  {
    case 1:
      select_scan_parameters((_DWORD *)a1);
      per_scan_setup((_DWORD *)a1);
      if ( *(_DWORD *)(a1 + 300) || !*(_DWORD *)(a1 + 308) || *(_BYTE *)(a1 + 177) )
      {
        (**(void (__fastcall ***)(int, int))(a1 + 348))(a1, 1);
        result = (**(int (__fastcall ***)(int, int))(a1 + 328))(a1, 2);
        *(_BYTE *)(v1 + 12) = 0;
        goto LABEL_6;
      }
      v9 = *(_DWORD *)(v1 + 20);
      *(_DWORD *)(v1 + 16) = 2;
      *(_DWORD *)(v1 + 20) = v9 + 1;
      break;
    case 0:
      select_scan_parameters((_DWORD *)a1);
      per_scan_setup((_DWORD *)a1);
      v7 = *(unsigned __int8 *)(a1 + 176);
      if ( !*(_BYTE *)(a1 + 176) )
      {
        (**(void (__fastcall ***)(int))(a1 + 336))(a1);
        (**(void (__fastcall ***)(int))(a1 + 340))(a1);
        (**(void (__fastcall ***)(int, int))(a1 + 324))(a1, v7);
      }
      (**(void (__fastcall ***)(int))(a1 + 344))(a1);
      (**(void (__fastcall ***)(int, _DWORD))(a1 + 348))(a1, *(unsigned __int8 *)(a1 + 178));
      if ( *(int *)(v1 + 24) <= 1 )
        v8 = 0;
      else
        v8 = 3;
      (**(void (__fastcall ***)(int, int))(a1 + 328))(a1, v8);
      result = (**(int (__fastcall ***)(int, _DWORD))(a1 + 320))(a1, 0);
      if ( *(_BYTE *)(a1 + 178) )
        *(_BYTE *)(v1 + 12) = 0;
      else
        *(_BYTE *)(v1 + 12) = 1;
      goto LABEL_6;
    case 2:
      break;
    default:
      *(_DWORD *)(*(_DWORD *)a1 + 20) = 48;
      result = (**(int (__fastcall ***)(int))a1)(a1);
      goto LABEL_6;
  }
  if ( !*(_BYTE *)(a1 + 178) )
  {
    select_scan_parameters((_DWORD *)a1);
    per_scan_setup((_DWORD *)a1);
  }
  (**(void (__fastcall ***)(int, _DWORD))(a1 + 348))(a1, 0);
  (**(void (__fastcall ***)(int, int))(a1 + 328))(a1, 2);
  if ( !*(_DWORD *)(v1 + 28) )
    (*(void (__fastcall **)(int))(*(_DWORD *)(a1 + 332) + 4))(a1);
  result = (*(int (__fastcall **)(int))(*(_DWORD *)(a1 + 332) + 8))(a1);
  *(_BYTE *)(v1 + 12) = 0;
LABEL_6:
  v5 = *(_DWORD *)(v1 + 20);
  *(_BYTE *)(v1 + 13) = v5 == *(_DWORD *)(v1 + 24) - 1;
  v6 = *(_DWORD *)(a1 + 8);
  if ( v6 )
  {
    *(_DWORD *)(v6 + 12) = v5;
    *(_DWORD *)(*(_DWORD *)(a1 + 8) + 16) = *(_DWORD *)(v1 + 24);
  }
  return result;
}


// ===== 6772ec jpeg_abort =====
int __fastcall jpeg_abort(int result)
{
  int v1; // r3
  int v2; // r4

  v1 = *(_DWORD *)(result + 4);
  v2 = result;
  if ( v1 )
  {
    result = (*(int (**)(void))(v1 + 36))();
    if ( *(_BYTE *)(v2 + 16) )
    {
      *(_DWORD *)(v2 + 268) = 0;
      *(_DWORD *)(v2 + 20) = 200;
    }
    else
    {
      *(_DWORD *)(v2 + 20) = 100;
    }
  }
  return result;
}


// ===== 677338 jpeg_destroy =====
int __fastcall jpeg_destroy(int result)
{
  int v1; // r3
  int v2; // r4

  v1 = *(_DWORD *)(result + 4);
  v2 = result;
  if ( v1 )
    result = (*(int (**)(void))(v1 + 40))();
  *(_DWORD *)(v2 + 20) = 0;
  *(_DWORD *)(v2 + 4) = 0;
  return result;
}


// ===== 677364 jpeg_alloc_quant_table =====
int __fastcall jpeg_alloc_quant_table(int a1)
{
  int result; // r0

  result = (**(int (***)(void))(a1 + 4))();
  *(_BYTE *)(result + 128) = 0;
  return result;
}


// ===== 677388 jpeg_alloc_huff_table =====
int __fastcall jpeg_alloc_huff_table(int a1)
{
  int result; // r0

  result = (**(int (***)(void))(a1 + 4))();
  *(_BYTE *)(result + 273) = 0;
  return result;
}


// ===== 6773ac jpeg_quality_scaling =====
int __fastcall jpeg_quality_scaling(int a1)
{
  int v1; // r1

  v1 = a1;
  if ( a1 <= 0 )
  {
    v1 = 1;
    return 5000 / v1;
  }
  if ( a1 > 100 )
    return 0;
  if ( a1 <= 49 )
    return 5000 / v1;
  return 2 * (100 - a1);
}


// ===== 6773ec jpeg_set_colorspace =====
_DWORD *__fastcall jpeg_set_colorspace(_DWORD *result, int a2)
{
  _DWORD *v2; // r4
  _DWORD *v4; // r1
  _DWORD *v5; // r1
  _DWORD *v6; // r1
  _DWORD *v7; // r1
  int v8; // r3
  int v9; // r2
  int v10; // r1
  _DWORD *v11; // r3
  _DWORD *v12; // r3
  _DWORD *v13; // r2
  _DWORD *v14; // r1
  _DWORD *v15; // r1
  _DWORD *v16; // r1
  _DWORD *v17; // r1
  _DWORD *v18; // r1
  _DWORD *v19; // r1

  v2 = result;
  if ( result[5] != 100 )
  {
    *(_DWORD *)(*result + 20) = 20;
    *(_DWORD *)(*result + 24) = result[5];
    result = (_DWORD *)(*(int (__fastcall **)(_DWORD *))*result)(result);
  }
  *((_BYTE *)v2 + 204) = 0;
  v2[16] = a2;
  *((_BYTE *)v2 + 196) = 0;
  switch ( a2 )
  {
    case 0:
      v8 = v2[9];
      v2[15] = v8;
      if ( (unsigned int)(v8 - 1) <= 9
        || (*(_DWORD *)(*v2 + 20) = 26,
            *(_DWORD *)(*v2 + 24) = v2[15],
            *(_DWORD *)(*v2 + 28) = 10,
            result = (_DWORD *)(*(int (__fastcall **)(_DWORD *))*v2)(v2),
            (int)v2[15] > 0) )
      {
        v9 = 0;
        v10 = 0;
        result = nullptr;
        do
        {
          v11 = (_DWORD *)(v2[17] + v9);
          *v11 = v10;
          v11[6] = 0;
          v11[2] = 1;
          v11[3] = 1;
          v11[4] = 0;
          v11[5] = 0;
          ++v10;
          v9 += 84;
        }
        while ( v2[15] > v10 );
      }
      break;
    case 1:
      v12 = (_DWORD *)v2[17];
      *((_BYTE *)v2 + 196) = 1;
      v2[15] = 1;
      v12[6] = 0;
      v12[3] = 1;
      *v12 = 1;
      v12[2] = 1;
      v12[4] = 0;
      v12[5] = 0;
      break;
    case 2:
      v18 = (_DWORD *)v2[17];
      v2[15] = 3;
      *((_BYTE *)v2 + 204) = 1;
      v18[6] = 0;
      v18[2] = 1;
      v18[3] = 1;
      v18[4] = 0;
      v18[5] = 0;
      *v18 = 82;
      v19 = (_DWORD *)(v2[17] + 84);
      *v19 = 71;
      v19[6] = 0;
      v19[2] = 1;
      v19[3] = 1;
      v19[4] = 0;
      v19[5] = 0;
      result = (_DWORD *)v2[17];
      result[42] = 66;
      result[48] = 0;
      result[45] = 1;
      result[44] = 1;
      result[46] = 0;
      result[47] = 0;
      break;
    case 3:
      v13 = (_DWORD *)v2[17];
      *((_BYTE *)v2 + 196) = 1;
      v2[15] = 3;
      v13[6] = 0;
      v13[2] = 2;
      v13[3] = 2;
      v13[4] = 0;
      v13[5] = 0;
      *v13 = 1;
      result = (_DWORD *)v2[17];
      result[21] = 2;
      result[27] = 1;
      result[23] = 1;
      result[24] = 1;
      result[25] = 1;
      result[26] = 1;
      v14 = (_DWORD *)v2[17];
      v14[42] = 3;
      v14[48] = 1;
      v14[44] = 1;
      v14[45] = 1;
      v14[46] = 1;
      v14[47] = 1;
      break;
    case 4:
      v15 = (_DWORD *)v2[17];
      v2[15] = 4;
      *((_BYTE *)v2 + 204) = 1;
      v15[6] = 0;
      v15[2] = 1;
      v15[3] = 1;
      v15[4] = 0;
      v15[5] = 0;
      *v15 = 67;
      v16 = (_DWORD *)(v2[17] + 84);
      *v16 = 77;
      v16[6] = 0;
      v16[2] = 1;
      v16[3] = 1;
      v16[4] = 0;
      v16[5] = 0;
      v17 = (_DWORD *)(v2[17] + 168);
      *v17 = 89;
      v17[6] = 0;
      v17[2] = 1;
      v17[3] = 1;
      v17[4] = 0;
      v17[5] = 0;
      result = (_DWORD *)v2[17];
      result[63] = 75;
      result[69] = 0;
      result[66] = 1;
      result[65] = 1;
      result[67] = 0;
      result[68] = 0;
      break;
    case 5:
      v4 = (_DWORD *)v2[17];
      *((_BYTE *)v2 + 204) = 1;
      v2[15] = 4;
      v4[6] = 0;
      v4[2] = 2;
      v4[3] = 2;
      v4[4] = 0;
      v4[5] = 0;
      *v4 = 1;
      v5 = (_DWORD *)(v2[17] + 84);
      *v5 = 2;
      v5[6] = 1;
      v5[2] = 1;
      v5[3] = 1;
      v5[4] = 1;
      v5[5] = 1;
      v6 = (_DWORD *)(v2[17] + 168);
      *v6 = 3;
      v6[6] = 1;
      v6[2] = 1;
      v6[3] = 1;
      v6[4] = 1;
      v6[5] = 1;
      v7 = (_DWORD *)v2[17];
      v7[63] = 4;
      v7[69] = 0;
      v7[66] = 2;
      v7[65] = 2;
      v7[67] = 0;
      v7[68] = 0;
      result = &dword_0 + 2;
      break;
    default:
      *(_DWORD *)(*v2 + 20) = 10;
      result = (_DWORD *)(*(int (__fastcall **)(_DWORD *))*v2)(v2);
      break;
  }
  return result;
}


// ===== 677784 jpeg_default_colorspace =====
_DWORD *__fastcall jpeg_default_colorspace(_DWORD *a1)
{
  int v1; // r1
  _DWORD *result; // r0

  switch ( a1[10] )
  {
    case 0:
      v1 = 0;
      goto LABEL_3;
    case 1:
      v1 = 1;
      goto LABEL_3;
    case 2:
    case 3:
      v1 = 3;
      goto LABEL_3;
    case 4:
      v1 = 4;
      goto LABEL_3;
    case 5:
      v1 = 5;
LABEL_3:
      result = jpeg_set_colorspace(a1, v1);
      break;
    default:
      *(_DWORD *)(*a1 + 20) = 9;
      result = (_DWORD *)(*(int (__fastcall **)(_DWORD *))*a1)(a1);
      break;
  }
  return result;
}


// ===== 67780c fill_dc_scans =====
int *__fastcall fill_dc_scans(int *a1, int a2, int a3, int a4)
{
  int i; // r12
  int v6; // r4
  int *v7; // r12

  if ( a2 > 4 )
  {
    v6 = 0;
    v7 = a1;
    do
    {
      v7[1] = v6++;
      *v7 = 1;
      v7[5] = 0;
      v7[6] = 0;
      v7[7] = a3;
      v7[8] = a4;
      v7 += 9;
    }
    while ( v6 != a2 );
    return &a1[9 * v6];
  }
  else
  {
    *a1 = a2;
    if ( a2 > 0 )
    {
      for ( i = 0; i != a2; ++i )
        a1[i + 1] = i;
    }
    a1[5] = 0;
    a1[7] = a3;
    a1[8] = a4;
    a1[6] = 0;
    return a1 + 9;
  }
}


// ===== 6778a0 jpeg_simple_progression =====
int *__fastcall jpeg_simple_progression(int a1)
{
  int v2; // r4
  int v3; // r6
  int *v4; // r0
  int v5; // r3
  int *v6; // r3
  int v7; // r2
  int v8; // r2
  int v9; // r2
  int *result; // r0
  int v11; // r3
  int *v12; // r0
  int *v13; // r3

  v2 = *(_DWORD *)(a1 + 60);
  if ( *(_DWORD *)(a1 + 20) != 100 )
  {
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 20;
    *(_DWORD *)(*(_DWORD *)a1 + 24) = *(_DWORD *)(a1 + 20);
    (**(void (__fastcall ***)(int))a1)(a1);
  }
  if ( v2 == 3 )
  {
    if ( *(_DWORD *)(a1 + 64) == 3 )
    {
      v3 = 10;
      goto LABEL_6;
    }
LABEL_26:
    v3 = 4 * v2 + 2;
    goto LABEL_6;
  }
  if ( v2 <= 4 )
    goto LABEL_26;
  v3 = 6 * v2;
LABEL_6:
  v4 = *(int **)(a1 + 352);
  if ( !v4 || v3 > *(_DWORD *)(a1 + 356) )
  {
    if ( v3 < 10 )
      v5 = 10;
    else
      v5 = v3;
    *(_DWORD *)(a1 + 356) = v5;
    v4 = (int *)(**(int (__fastcall ***)(int, _DWORD, int))(a1 + 4))(a1, 0, 36 * v5);
    *(_DWORD *)(a1 + 352) = v4;
  }
  *(_DWORD *)(a1 + 168) = v3;
  *(_DWORD *)(a1 + 172) = v4;
  if ( v2 == 3 )
  {
    if ( *(_DWORD *)(a1 + 64) == 3 )
    {
      v13 = fill_dc_scans(v4, 3, 0, 1);
      v13[6] = 5;
      *v13 = 1;
      v13[1] = 0;
      v13[5] = 1;
      v13[7] = 0;
      v13[8] = 2;
      v13[9] = 1;
      v13[17] = 1;
      v13[10] = 2;
      v13[14] = 1;
      v13[15] = 63;
      v13[16] = 0;
      v13[18] = 1;
      v13[26] = 1;
      v13[19] = 1;
      v13[23] = 1;
      v13[24] = 63;
      v13[25] = 0;
      v13[27] = 1;
      v13[32] = 6;
      v13[35] = 2;
      v13[28] = 0;
      v13[33] = 63;
      v13[34] = 0;
      v13[36] = 1;
      v13[44] = 1;
      v13[37] = 0;
      v13[41] = 1;
      v13[42] = 63;
      v13[43] = 2;
      result = fill_dc_scans(v13 + 45, 3, 1, 0);
      *result = 1;
      result[1] = 2;
      result[5] = 1;
      result[6] = 63;
      result[7] = 1;
      result[8] = 0;
      result[9] = 1;
      result[17] = 0;
      result[10] = 1;
      result[14] = 1;
      result[15] = 63;
      result[16] = 1;
      result[18] = 1;
      result[26] = 0;
      result[24] = 63;
      result[25] = 1;
      result[19] = 0;
      result[23] = 1;
      return result;
    }
    v6 = fill_dc_scans(v4, 3, 0, 1);
  }
  else
  {
    v12 = fill_dc_scans(v4, v2, 0, 1);
    v6 = v12;
    if ( v2 <= 0 )
      return fill_dc_scans(v12, v2, 1, 0);
  }
  v7 = 0;
  do
  {
    v6[1] = v7++;
    *v6 = 1;
    v6[5] = 1;
    v6[6] = 5;
    v6[7] = 0;
    v6[8] = 2;
    v6 += 9;
  }
  while ( v2 > v7 );
  v8 = 0;
  do
  {
    v6[1] = v8++;
    *v6 = 1;
    v6[5] = 6;
    v6[6] = 63;
    v6[7] = 0;
    v6[8] = 2;
    v6 += 9;
  }
  while ( v2 > v8 );
  v9 = 0;
  do
  {
    v6[1] = v9++;
    *v6 = 1;
    v6[5] = 1;
    v6[6] = 63;
    v6[7] = 2;
    v6[8] = 1;
    v6 += 9;
  }
  while ( v2 > v9 );
  result = fill_dc_scans(v6, v2, 1, 0);
  v11 = 0;
  do
  {
    result[1] = v11++;
    *result = 1;
    result[5] = 1;
    result[6] = 63;
    result[7] = 1;
    result[8] = 0;
    result += 9;
  }
  while ( v2 > v11 );
  return result;
}


// ===== 677bb0 add_huff_table =====
void *__fastcall add_huff_table(int a1, int a2, unsigned __int8 *a3, const void *a4)
{
  void *v5; // r1
  size_t v9; // r8
  int i; // r3
  int v11; // r2
  void *result; // r0

  v5 = *(void **)a2;
  if ( !v5 )
  {
    v5 = (void *)jpeg_alloc_huff_table(a1);
    *(_DWORD *)a2 = v5;
  }
  memcpy(v5, a3, 0x11u);
  v9 = 0;
  for ( i = 1; i != 17; ++i )
  {
    v11 = a3[i];
    v9 += v11;
  }
  if ( v9 - 1 > 0xFF )
  {
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 8;
    (**(void (__fastcall ***)(int))a1)(a1);
  }
  result = memcpy((void *)(*(_DWORD *)a2 + 17), a4, v9);
  *(_BYTE *)(*(_DWORD *)a2 + 273) = 0;
  return result;
}


// ===== 677c58 jpeg_add_quant_table =====
int __fastcall jpeg_add_quant_table(_DWORD *a1, unsigned int a2, int a3, int a4, char a5)
{
  unsigned int v9; // r6
  int result; // r0
  int v11; // r3
  _BOOL4 v12; // r1
  int v13; // r2
  int v14; // r1
  int v15; // r1

  if ( a1[5] != 100 )
  {
    *(_DWORD *)(*a1 + 20) = 20;
    *(_DWORD *)(*a1 + 24) = a1[5];
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  if ( a2 > 3 )
  {
    *(_DWORD *)(*a1 + 20) = 31;
    *(_DWORD *)(*a1 + 24) = a2;
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  v9 = a2 + 18;
  result = a1[v9];
  if ( !result )
  {
    result = jpeg_alloc_quant_table((int)a1);
    a1[v9] = result;
  }
  v11 = 0;
  while ( 1 )
  {
    v12 = a5 != 0;
    v13 = (*(_DWORD *)(a3 + 4 * v11) * a4 + 50) / 100;
    if ( v13 <= 0 )
      break;
    if ( v13 <= 0x7FFF )
      v12 = v13 > 255 && a5 != 0;
    else
      LOWORD(v13) = 0x7FFF;
    if ( !v12 )
      goto LABEL_16;
    v14 = 2 * v11++;
    *(_WORD *)(result + v14) = 255;
    if ( v11 == 64 )
      goto LABEL_17;
LABEL_15:
    result = a1[v9];
  }
  LOWORD(v13) = 1;
LABEL_16:
  v15 = 2 * v11++;
  *(_WORD *)(result + v15) = v13;
  if ( v11 != 64 )
    goto LABEL_15;
LABEL_17:
  *(_BYTE *)(a1[v9] + 128) = 0;
  return result;
}


// ===== 677db0 jpeg_set_linear_quality =====
int __fastcall jpeg_set_linear_quality(_DWORD *a1, int a2, char a3)
{
  jpeg_add_quant_table(a1, 0, (int)&std_luminance_quant_tbl_3103, a2, a3);
  return jpeg_add_quant_table(a1, 1u, (int)&std_chrominance_quant_tbl_3104, a2, a3);
}


// ===== 677e04 jpeg_set_quality =====
int __fastcall jpeg_set_quality(_DWORD *a1, int a2, char a3)
{
  int v5; // r0

  v5 = jpeg_quality_scaling(a2);
  return jpeg_set_linear_quality(a1, v5, a3);
}


// ===== 677e2c jpeg_set_defaults =====
_DWORD *__fastcall jpeg_set_defaults(int a1)
{
  int v2; // r2
  _BYTE *v3; // r3
  int v4; // r3

  if ( *(_DWORD *)(a1 + 20) != 100 )
  {
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 20;
    *(_DWORD *)(*(_DWORD *)a1 + 24) = *(_DWORD *)(a1 + 20);
    (**(void (__fastcall ***)(int))a1)(a1);
  }
  if ( !*(_DWORD *)(a1 + 68) )
    *(_DWORD *)(a1 + 68) = (**(int (__fastcall ***)(int, _DWORD, int))(a1 + 4))(a1, 0, 840);
  *(_DWORD *)(a1 + 56) = 8;
  jpeg_set_quality((_DWORD *)a1, 75, 1);
  add_huff_table(a1, a1 + 88, bits_dc_luminance_3154, &val_dc_luminance_3155);
  add_huff_table(a1, a1 + 104, bits_ac_luminance_3158, &val_ac_luminance_3159);
  add_huff_table(a1, a1 + 92, bits_dc_chrominance_3156, &val_dc_chrominance_3157);
  add_huff_table(a1, a1 + 108, bits_ac_chrominance_3160, &val_ac_chrominance_3161);
  v2 = 0;
  v3 = (_BYTE *)a1;
  do
  {
    ++v2;
    v3[120] = 0;
    v3[136] = 1;
    v3[152] = 5;
    ++v3;
  }
  while ( v2 != 16 );
  v4 = *(_DWORD *)(a1 + 56);
  *(_BYTE *)(a1 + 178) = 0;
  if ( v4 > 8 )
    *(_BYTE *)(a1 + 178) = 1;
  *(_DWORD *)(a1 + 172) = 0;
  *(_DWORD *)(a1 + 168) = 0;
  *(_BYTE *)(a1 + 176) = 0;
  *(_BYTE *)(a1 + 177) = 0;
  *(_BYTE *)(a1 + 199) = 0;
  *(_WORD *)(a1 + 202) = 1;
  *(_BYTE *)(a1 + 179) = 0;
  *(_DWORD *)(a1 + 180) = 0;
  *(_DWORD *)(a1 + 184) = 0;
  *(_DWORD *)(a1 + 188) = 0;
  *(_DWORD *)(a1 + 192) = 0;
  *(_BYTE *)(a1 + 197) = 1;
  *(_BYTE *)(a1 + 198) = 1;
  *(_WORD *)(a1 + 200) = 1;
  return jpeg_default_colorspace((_DWORD *)a1);
}


// ===== 677f94 dump_buffer =====
int __fastcall dump_buffer(_DWORD *a1)
{
  int v2; // r5
  int result; // r0

  v2 = *(_DWORD *)(a1[8] + 24);
  result = (*(int (__fastcall **)(_DWORD))(v2 + 12))(a1[8]);
  if ( !result )
  {
    *(_DWORD *)(*(_DWORD *)a1[8] + 20) = 24;
    result = (**(int (__fastcall ***)(_DWORD))a1[8])(a1[8]);
  }
  a1[4] = *(_DWORD *)v2;
  a1[5] = *(_DWORD *)(v2 + 4);
  return result;
}


// ===== 677ff0 emit_bits =====
int __fastcall emit_bits(int result, int a2, int a3)
{
  int v4; // r4
  int v6; // r8
  signed int v7; // r8
  int v8; // r5
  int v9; // r6
  _BYTE *v10; // r3
  int v11; // r7
  int v12; // r2
  _BYTE *v13; // r3
  int v14; // r2

  v4 = result;
  v6 = *(_DWORD *)(result + 28);
  if ( !a3 )
  {
    *(_DWORD *)(**(_DWORD **)(result + 32) + 20) = 40;
    result = (***(int (__fastcall ****)(_DWORD))(result + 32))(*(_DWORD *)(result + 32));
  }
  if ( *(_BYTE *)(v4 + 12) )
    return result;
  v7 = a3 + v6;
  v8 = *(_DWORD *)(v4 + 24) | ((a2 & ~(-1 << a3)) << (24 - v7));
  if ( v7 <= 7 )
    goto LABEL_13;
  v9 = v7;
  do
  {
    while ( 1 )
    {
      v10 = *(_BYTE **)(v4 + 16);
      v11 = BYTE2(v8);
      v9 -= 8;
      *v10 = BYTE2(v8);
      v12 = *(_DWORD *)(v4 + 20);
      *(_DWORD *)(v4 + 16) = v10 + 1;
      v8 <<= 8;
      *(_DWORD *)(v4 + 20) = v12 - 1;
      if ( v12 == 1 )
        break;
      if ( v11 == 255 )
        goto LABEL_10;
LABEL_7:
      if ( v9 <= 7 )
        goto LABEL_12;
    }
    result = dump_buffer((_DWORD *)v4);
    if ( v11 != 255 )
      goto LABEL_7;
LABEL_10:
    v13 = *(_BYTE **)(v4 + 16);
    *v13 = 0;
    v14 = *(_DWORD *)(v4 + 20);
    *(_DWORD *)(v4 + 16) = v13 + 1;
    *(_DWORD *)(v4 + 20) = v14 - 1;
    if ( v14 != 1 )
      goto LABEL_7;
    result = dump_buffer((_DWORD *)v4);
  }
  while ( v9 > 7 );
LABEL_12:
  v7 = v7 - 8 - 8 * ((unsigned int)(v7 - 8) >> 3);
LABEL_13:
  *(_DWORD *)(v4 + 28) = v7;
  *(_DWORD *)(v4 + 24) = v8;
  return result;
}


// ===== 6780fc emit_eobrun =====
int __fastcall emit_eobrun(int result)
{
  int v1; // r3
  int v2; // r5
  int v3; // r3
  int v4; // r4
  int v5; // r1
  int v6; // r4
  int v7; // r7
  int v8; // r6
  int v9; // r1

  v1 = *(_DWORD *)(result + 56);
  v2 = result;
  if ( !v1 )
    return result;
  v3 = v1 >> 1;
  if ( v3 )
  {
    v4 = 0;
    do
    {
      v3 >>= 1;
      ++v4;
    }
    while ( v3 );
    if ( v4 > 14 )
    {
      *(_DWORD *)(**(_DWORD **)(result + 32) + 20) = 40;
      result = (***(int (__fastcall ****)(_DWORD))(result + 32))(*(_DWORD *)(result + 32));
    }
    v3 = 16 * v4;
  }
  else
  {
    v4 = 0;
  }
  v5 = *(_DWORD *)(v2 + 52);
  if ( *(_BYTE *)(v2 + 12) )
  {
    ++*(_DWORD *)(*(_DWORD *)(v2 + 4 * v5 + 92) + 4 * v3);
    if ( !v4 )
      goto LABEL_11;
  }
  else
  {
    result = emit_bits(
               v2,
               *(_DWORD *)(*(_DWORD *)(v2 + 4 * v5 + 76) + 4 * v3),
               *(char *)(*(_DWORD *)(v2 + 4 * v5 + 76) + v3 + 1024));
    if ( !v4 )
      goto LABEL_11;
  }
  result = emit_bits(v2, *(_DWORD *)(v2 + 56), v4);
LABEL_11:
  v6 = *(unsigned __int8 *)(v2 + 12);
  *(_DWORD *)(v2 + 56) = 0;
  v7 = *(_DWORD *)(v2 + 64);
  v8 = *(_DWORD *)(v2 + 60);
  if ( !v6 && v8 )
  {
    do
    {
      v9 = *(char *)(v7 + v6++);
      result = emit_bits(v2, v9, 1);
    }
    while ( v6 != v8 );
  }
  *(_DWORD *)(v2 + 60) = 0;
  return result;
}


// ===== 678214 emit_restart =====
int __fastcall emit_restart(int a1, char a2)
{
  int v2; // r4
  int result; // r0
  int v5; // r5
  int v6; // r2
  int v7; // r3
  _BYTE *v8; // r3
  _BYTE *v9; // r3
  int v10; // r2
  int v11; // r2

  v2 = a1;
  result = emit_eobrun(a1);
  v5 = *(unsigned __int8 *)(v2 + 12);
  if ( !*(_BYTE *)(v2 + 12) )
  {
    result = emit_bits(v2, 127, 7);
    v8 = *(_BYTE **)(v2 + 16);
    *(_DWORD *)(v2 + 28) = v5;
    *(_DWORD *)(v2 + 24) = v5;
    *v8 = -1;
    v9 = v8 + 1;
    v10 = *(_DWORD *)(v2 + 20);
    *(_DWORD *)(v2 + 16) = v9;
    *(_DWORD *)(v2 + 20) = --v10;
    if ( !v10 )
    {
      result = dump_buffer((_DWORD *)v2);
      v9 = *(_BYTE **)(v2 + 16);
    }
    *v9 = a2 - 48;
    v11 = *(_DWORD *)(v2 + 20);
    *(_DWORD *)(v2 + 16) = v9 + 1;
    *(_DWORD *)(v2 + 20) = v11 - 1;
    if ( v11 == 1 )
      result = dump_buffer((_DWORD *)v2);
  }
  v6 = *(_DWORD *)(v2 + 32);
  v7 = *(_DWORD *)(v6 + 300);
  if ( v7 )
  {
    *(_DWORD *)(v2 + 60) = 0;
    *(_DWORD *)(v2 + 56) = 0;
  }
  else if ( *(int *)(v6 + 228) > 0 )
  {
    result = *(_DWORD *)(v6 + 300);
    do
    {
      *(_DWORD *)(v2 + 36) = result;
      ++v7;
      v2 += 4;
    }
    while ( *(_DWORD *)(v6 + 228) > v7 );
  }
  return result;
}


// ===== 6782f4 encode_mcu_DC_refine =====
int __fastcall encode_mcu_DC_refine(int a1, int a2)
{
  _DWORD *v2; // r6
  int v3; // r7
  int v6; // r4
  __int16 *v7; // r3
  int v8; // r3
  int v9; // r2
  bool v10; // zf
  int v11; // r3

  v2 = *(_DWORD **)(a1 + 348);
  v3 = *(_DWORD *)(a1 + 312);
  v2[4] = **(_DWORD **)(a1 + 24);
  v2[5] = *(_DWORD *)(*(_DWORD *)(a1 + 24) + 4);
  if ( *(_DWORD *)(a1 + 188) && !v2[17] )
    emit_restart((int)v2, v2[18]);
  if ( *(int *)(a1 + 256) > 0 )
  {
    v6 = 0;
    do
    {
      v7 = *(__int16 **)(a2 + 4 * v6++);
      emit_bits((int)v2, *v7 >> v3, 1);
    }
    while ( *(_DWORD *)(a1 + 256) > v6 );
  }
  **(_DWORD **)(a1 + 24) = v2[4];
  *(_DWORD *)(*(_DWORD *)(a1 + 24) + 4) = v2[5];
  v8 = *(_DWORD *)(a1 + 188);
  if ( v8 )
  {
    v9 = v2[17];
    v10 = v9 == 0;
    if ( v9 )
      v8 = v2[17];
    else
      v9 = v2[18];
    if ( v10 )
    {
      v2[17] = v8;
      v9 = ((_BYTE)v9 + 1) & 7;
    }
    v11 = v8 - 1;
    if ( v10 )
      v2[18] = v9;
    v2[17] = v11;
  }
  return 1;
}


// ===== 6783d4 finish_pass_phuff =====
int __fastcall finish_pass_phuff(int a1)
{
  _DWORD *v1; // r4
  int result; // r0

  v1 = *(_DWORD **)(a1 + 348);
  v1[4] = **(_DWORD **)(a1 + 24);
  v1[5] = *(_DWORD *)(*(_DWORD *)(a1 + 24) + 4);
  emit_eobrun((int)v1);
  result = emit_bits((int)v1, 127, 7);
  v1[7] = 0;
  v1[6] = 0;
  **(_DWORD **)(a1 + 24) = v1[4];
  *(_DWORD *)(*(_DWORD *)(a1 + 24) + 4) = v1[5];
  return result;
}


// ===== 678438 jinit_phuff_encoder =====
_DWORD *__fastcall jinit_phuff_encoder(int a1)
{
  _DWORD *result; // r0

  result = (_DWORD *)(**(int (***)(void))(a1 + 4))();
  *(_DWORD *)(a1 + 348) = result;
  result[16] = 0;
  *result = start_pass_phuff;
  result[19] = 0;
  result[23] = 0;
  result[20] = 0;
  result[24] = 0;
  result[21] = 0;
  result[25] = 0;
  result[22] = 0;
  result[26] = 0;
  return result;
}


// ===== 678494 start_pass_phuff =====
_DWORD *__fastcall start_pass_phuff(_DWORD *result, int a2)
{
  int v2; // r5
  _DWORD *v3; // r4
  _BOOL4 v5; // r10
  int v6; // r2
  int v7; // r2
  int v8; // r6
  _DWORD *v9; // r7
  int v10; // r8
  int v11; // r3
  unsigned int v12; // r9
  int v13; // r9
  void *v14; // r0
  int v15; // [sp+4h] [bp-8h]

  v2 = result[87];
  v3 = result;
  *(_DWORD *)(v2 + 32) = result;
  *(_BYTE *)(v2 + 12) = a2;
  v5 = result[75] == 0;
  if ( result[77] )
  {
    if ( result[75] )
    {
      v7 = *(_DWORD *)(v2 + 64);
      *(_DWORD *)(v2 + 4) = encode_mcu_AC_refine;
      if ( !v7 )
      {
        result = (_DWORD *)(*(int (**)(void))result[1])();
        *(_DWORD *)(v2 + 64) = result;
      }
    }
    else
    {
      *(_DWORD *)(v2 + 4) = encode_mcu_DC_refine;
    }
  }
  else
  {
    if ( !result[75] )
    {
      *(_DWORD *)(v2 + 4) = encode_mcu_DC_first;
      if ( !a2 )
        goto LABEL_4;
LABEL_10:
      *(_DWORD *)(v2 + 8) = finish_pass_gather_phuff;
      if ( (int)v3[57] <= 0 )
        goto LABEL_5;
      goto LABEL_11;
    }
    *(_DWORD *)(v2 + 4) = encode_mcu_AC_first;
  }
  if ( a2 )
    goto LABEL_10;
LABEL_4:
  *(_DWORD *)(v2 + 8) = finish_pass_phuff;
  if ( (int)v3[57] <= 0 )
    goto LABEL_5;
LABEL_11:
  v8 = 0;
  v15 = a2;
  v9 = v3;
  v10 = v2;
  v11 = v3[58];
  *(_DWORD *)(v2 + 36) = 0;
  if ( !v5 )
    goto LABEL_21;
LABEL_12:
  if ( !v3[77] )
  {
    v12 = *(_DWORD *)(v11 + 20);
    if ( !v15 )
      goto LABEL_22;
LABEL_16:
    if ( v12 > 3 )
    {
      *(_DWORD *)(*v3 + 20) = 50;
      *(_DWORD *)(*v3 + 24) = v12;
      v13 = v2 + 4 * (v12 + 22);
      (*(void (__fastcall **)(_DWORD *))*v3)(v3);
      v14 = *(void **)(v13 + 4);
      if ( v14 )
        goto LABEL_18;
    }
    else
    {
      v13 = v2 + 4 * (v12 + 22);
      v14 = *(void **)(v13 + 4);
      if ( v14 )
      {
LABEL_18:
        result = LC_API_MEMSET_0(v14, 0, 0x404u);
        goto LABEL_19;
      }
    }
    v14 = (void *)(*(int (__fastcall **)(_DWORD *, int, int))v3[1])(v3, 1, 1028);
    *(_DWORD *)(v13 + 4) = v14;
    goto LABEL_18;
  }
LABEL_19:
  while ( 1 )
  {
    ++v8;
    ++v9;
    v10 += 4;
    if ( v3[57] <= v8 )
      break;
    v11 = v9[58];
    *(_DWORD *)(v10 + 36) = 0;
    if ( v5 )
      goto LABEL_12;
LABEL_21:
    v12 = *(_DWORD *)(v11 + 24);
    *(_DWORD *)(v2 + 52) = v12;
    if ( v15 )
      goto LABEL_16;
LABEL_22:
    result = (_DWORD *)jpeg_make_c_derived_tbl(v3, v5, v12, v2 + 4 * v12 + 76);
  }
LABEL_5:
  *(_DWORD *)(v2 + 56) = 0;
  *(_DWORD *)(v2 + 60) = 0;
  *(_DWORD *)(v2 + 24) = 0;
  *(_DWORD *)(v2 + 28) = 0;
  v6 = v3[47];
  *(_DWORD *)(v2 + 72) = 0;
  *(_DWORD *)(v2 + 68) = v6;
  return result;
}


// ===== 6786d0 finish_pass_gather_phuff =====
int __fastcall finish_pass_gather_phuff(_DWORD *a1)
{
  int v1; // r10
  int result; // r0
  int v4; // r3
  int v5; // r6
  _BOOL4 v6; // r8
  _DWORD *i; // r5
  int v8; // r2
  int v9; // r11
  char *v10; // r7
  int v11; // r2
  int v12; // r1
  int *v13; // [sp+4h] [bp-10h]
  _DWORD v14[2]; // [sp+Ch] [bp-8h] BYREF

  v1 = a1[87];
  result = emit_eobrun(v1);
  v4 = a1[57];
  v5 = 0;
  v6 = a1[75] == 0;
  v14[0] = 0;
  if ( v4 > 0 )
  {
    for ( i = a1; ; ++i )
    {
      v8 = i[58];
      if ( !v6 )
        break;
      if ( !a1[77] )
      {
        v9 = *(_DWORD *)(v8 + 20);
LABEL_8:
        v10 = (char *)&v14[1] + v9;
        if ( !*((_BYTE *)v14 + v9) )
        {
          if ( v6 )
            v9 += 22;
          else
            v4 = v9 + 26;
          if ( v6 )
          {
            v11 = a1[v9];
            v4 = (int)&a1[v9];
          }
          else
          {
            v11 = a1[v4];
          }
          if ( !v6 )
          {
            v4 = (int)&a1[v4];
            v9 += 22;
          }
          if ( v11 )
          {
            v12 = *(_DWORD *)v4;
          }
          else
          {
            v13 = (int *)v4;
            v12 = jpeg_alloc_huff_table((int)a1);
            *v13 = v12;
          }
          result = jpeg_gen_optimal_table(a1, v12, *(_DWORD *)(v1 + 4 * v9 + 4));
          v4 = a1[57];
          *(v10 - 4) = 1;
        }
      }
      if ( v4 <= ++v5 )
        return result;
    }
    v9 = *(_DWORD *)(v8 + 24);
    goto LABEL_8;
  }
  return result;
}


// ===== 6787c0 encode_mcu_DC_first =====
int __fastcall encode_mcu_DC_first(int a1, int a2)
{
  int v2; // r9
  int v3; // r5
  int v4; // r11
  int v7; // r8
  int i; // r6
  int v9; // r3
  int v10; // r1
  int v11; // r0
  int v12; // r3
  int v13; // r2
  bool v14; // zf
  int v15; // r4
  int v16; // r3
  int v17; // r3
  int v18; // r2
  bool v19; // zf
  int v20; // r3
  int v22; // [sp+4h] [bp-8h]

  v3 = *(_DWORD *)(a1 + 348);
  v4 = *(_DWORD *)(a1 + 312);
  *(_DWORD *)(v3 + 16) = **(_DWORD **)(a1 + 24);
  *(_DWORD *)(v3 + 20) = *(_DWORD *)(*(_DWORD *)(a1 + 24) + 4);
  if ( *(_DWORD *)(a1 + 188) && !*(_DWORD *)(v3 + 68) )
    emit_restart(v3, *(_DWORD *)(v3 + 72));
  if ( *(int *)(a1 + 256) > 0 )
  {
    v7 = a1;
    for ( i = 0; *(_DWORD *)(a1 + 256) > i; ++i )
    {
      v9 = *(_DWORD *)(v7 + 260);
      v10 = v3 + 4 * (v9 + 8);
      v11 = **(__int16 **)(a2 + 4 * i) >> v4;
      v12 = *(_DWORD *)(a1 + 4 * (v9 + 58));
      v13 = v11 - *(_DWORD *)(v10 + 4);
      v14 = v11 == *(_DWORD *)(v10 + 4);
      if ( v13 < 0 )
        v2 = v13 - 1;
      *(_DWORD *)(v10 + 4) = v11;
      if ( v13 >= 0 )
      {
        if ( v14 )
        {
          v2 = v13;
          v15 = v13;
          goto LABEL_17;
        }
        v2 = v13;
      }
      else
      {
        v13 = -v13;
      }
      v15 = 0;
      do
      {
        v13 >>= 1;
        ++v15;
      }
      while ( v13 );
      if ( v15 > 11 )
      {
        *(_DWORD *)(*(_DWORD *)a1 + 20) = 6;
        v22 = v12;
        (**(void (__fastcall ***)(int))a1)(a1);
        v12 = v22;
      }
LABEL_17:
      v16 = *(_DWORD *)(v12 + 20);
      if ( *(_BYTE *)(v3 + 12) )
      {
        ++*(_DWORD *)(*(_DWORD *)(v3 + 4 * v16 + 92) + 4 * v15);
        if ( v15 )
          goto LABEL_31;
      }
      else
      {
        emit_bits(
          v3,
          *(_DWORD *)(*(_DWORD *)(v3 + 4 * v16 + 76) + 4 * v15),
          *(char *)(*(_DWORD *)(v3 + 4 * v16 + 76) + v15 + 1024));
        if ( v15 )
LABEL_31:
          emit_bits(v3, v2, v15);
      }
      v7 += 4;
    }
  }
  **(_DWORD **)(a1 + 24) = *(_DWORD *)(v3 + 16);
  *(_DWORD *)(*(_DWORD *)(a1 + 24) + 4) = *(_DWORD *)(v3 + 20);
  v17 = *(_DWORD *)(a1 + 188);
  if ( v17 )
  {
    v18 = *(_DWORD *)(v3 + 68);
    v19 = v18 == 0;
    if ( v18 )
      v17 = *(_DWORD *)(v3 + 68);
    else
      v18 = *(_DWORD *)(v3 + 72);
    if ( v19 )
    {
      *(_DWORD *)(v3 + 68) = v17;
      v18 = ((_BYTE)v18 + 1) & 7;
    }
    v20 = v17 - 1;
    if ( v19 )
      *(_DWORD *)(v3 + 72) = v18;
    *(_DWORD *)(v3 + 68) = v20;
  }
  return 1;
}


// ===== 67898c encode_mcu_AC_refine =====
int __fastcall encode_mcu_AC_refine(int a1, int *a2)
{
  int v2; // r5
  int v3; // r4
  int v5; // r7
  int v6; // r10
  int v7; // r3
  int v8; // r2
  int v9; // r1
  int v10; // r0
  int v11; // r9
  int v12; // r6
  int v13; // r7
  int v14; // r8
  int v15; // r11
  _BOOL4 v16; // r3
  int v17; // r2
  int v18; // r4
  int v19; // r1
  bool v20; // zf
  int v21; // r3
  unsigned int v22; // r6
  int v23; // r2
  int v24; // r3
  int v26; // r2
  int v27; // r3
  int v28; // r4
  int v29; // r1
  int v30; // r1
  int v31; // [sp+0h] [bp-11Ch]
  _DWORD *v32; // [sp+4h] [bp-118h]
  int v33; // [sp+8h] [bp-114h]
  int v35; // [sp+10h] [bp-10Ch]
  char *v36; // [sp+14h] [bp-108h]
  _DWORD v37[65]; // [sp+18h] [bp-104h] BYREF

  v2 = *(_DWORD *)(a1 + 348);
  v31 = *(_DWORD *)(a1 + 304);
  v3 = *(_DWORD *)(a1 + 312);
  *(_DWORD *)(v2 + 16) = **(_DWORD **)(a1 + 24);
  *(_DWORD *)(v2 + 20) = *(_DWORD *)(*(_DWORD *)(a1 + 24) + 4);
  if ( *(_DWORD *)(a1 + 188) && !*(_DWORD *)(v2 + 68) )
    emit_restart(v2, *(_DWORD *)(v2 + 72));
  v5 = *a2;
  v6 = *(_DWORD *)(a1 + 300);
  v35 = v5;
  if ( v31 >= v6 )
  {
    v36 = (char *)&jpeg_natural_order[v6];
    v7 = 0;
    v32 = &v37[v6];
    v8 = *(_DWORD *)(a1 + 300);
    v9 = 0;
    do
    {
      v10 = (int)abs16(*(_WORD *)(v5 + 2 * jpeg_natural_order[v6 + v7])) >> v3;
      if ( v10 == 1 )
        v9 = v8;
      ++v8;
      v37[v6 + v7++] = v10;
    }
    while ( v31 >= v8 );
    v33 = v9;
    v11 = 0;
    v12 = 0;
    v13 = *(_DWORD *)(v2 + 64) + *(_DWORD *)(v2 + 60);
    v14 = 0;
    do
    {
      v15 = v32[v11];
      if ( v15 )
      {
        v16 = v14 > 15;
        if ( v6 > v33 )
          v16 = 0;
        if ( v16 )
        {
          do
          {
            emit_eobrun(v2);
            v17 = *(_DWORD *)(v2 + 52);
            if ( *(_BYTE *)(v2 + 12) )
              ++*(_DWORD *)(*(_DWORD *)(v2 + 4 * v17 + 92) + 960);
            else
              emit_bits(
                v2,
                *(_DWORD *)(*(_DWORD *)(v2 + 4 * v17 + 76) + 960),
                *(char *)(*(_DWORD *)(v2 + 4 * v17 + 76) + 1264));
            v18 = *(unsigned __int8 *)(v2 + 12);
            v14 -= 16;
            if ( !*(_BYTE *)(v2 + 12) && v12 )
            {
              do
              {
                v19 = *(char *)(v13 + v18++);
                emit_bits(v2, v19, 1);
              }
              while ( v12 != v18 );
            }
            v13 = *(_DWORD *)(v2 + 64);
            v12 = 0;
          }
          while ( v14 > 15 );
        }
        if ( v15 <= 1 )
        {
          emit_eobrun(v2);
          v26 = 16 * v14 + 1;
          v27 = *(_DWORD *)(v2 + 52);
          if ( *(_BYTE *)(v2 + 12) )
            ++*(_DWORD *)(*(_DWORD *)(v2 + 4 * v27 + 92) + 4 * v26);
          else
            emit_bits(
              v2,
              *(_DWORD *)(*(_DWORD *)(v2 + 4 * v27 + 76) + 4 * v26),
              *(char *)(*(_DWORD *)(v2 + 4 * v27 + 76) + v26 + 1024));
          emit_bits(v2, *(__int16 *)(v35 + 2 * *(_DWORD *)&v36[v11 * 4]) >= 0, 1);
          v28 = *(unsigned __int8 *)(v2 + 12);
          if ( !*(_BYTE *)(v2 + 12) && v12 )
          {
            do
            {
              v29 = *(char *)(v13 + v28++);
              emit_bits(v2, v29, 1);
            }
            while ( v28 != v12 );
          }
          v12 = 0;
          v13 = *(_DWORD *)(v2 + 64);
          v14 = 0;
        }
        else
        {
          *(_BYTE *)(v13 + v12++) = v15 & 1;
        }
      }
      else
      {
        ++v14;
      }
      ++v6;
      ++v11;
    }
    while ( v31 >= v6 );
    v20 = v14 == 0;
    if ( v14 <= 0 )
      v20 = v12 == 0;
    if ( !v20 )
    {
      v21 = *(_DWORD *)(v2 + 56) + 1;
      v22 = v12 + *(_DWORD *)(v2 + 60);
      *(_DWORD *)(v2 + 56) = v21;
      *(_DWORD *)(v2 + 60) = v22;
      if ( v21 == 0x7FFF || v22 > 0x3A9 )
        emit_eobrun(v2);
    }
  }
  **(_DWORD **)(a1 + 24) = *(_DWORD *)(v2 + 16);
  *(_DWORD *)(*(_DWORD *)(a1 + 24) + 4) = *(_DWORD *)(v2 + 20);
  v23 = *(_DWORD *)(a1 + 188);
  if ( v23 )
  {
    v24 = *(_DWORD *)(v2 + 68);
    if ( !v24 )
    {
      v30 = *(_DWORD *)(v2 + 72);
      *(_DWORD *)(v2 + 68) = v23;
      v24 = v23;
      *(_DWORD *)(v2 + 72) = ((_BYTE)v30 + 1) & 7;
    }
    *(_DWORD *)(v2 + 68) = v24 - 1;
  }
  return 1;
}


// ===== 678d04 encode_mcu_AC_first =====
int __fastcall encode_mcu_AC_first(int a1, int *a2)
{
  int v2; // r4
  int v3; // r2
  int v4; // r9
  int v6; // r6
  int v7; // r7
  signed int v8; // r8
  int v9; // r11
  _DWORD *v10; // r10
  char v11; // r2
  int v12; // r3
  int v13; // r9
  bool v14; // cc
  int v15; // r9
  int i; // r5
  int v17; // r2
  int v18; // r9
  int v19; // r5
  int v20; // r8
  int v21; // r2
  int v22; // r3
  int v23; // r3
  int v24; // r2
  bool v25; // zf
  int v26; // r3
  int v28; // [sp+4h] [bp-18h]
  int v29; // [sp+8h] [bp-14h]
  int v30; // [sp+Ch] [bp-10h]
  int v31; // [sp+10h] [bp-Ch]
  int v32; // [sp+14h] [bp-8h]

  v2 = *(_DWORD *)(a1 + 348);
  v3 = *(_DWORD *)(a1 + 304);
  v4 = a1;
  v31 = *(_DWORD *)(a1 + 312);
  *(_DWORD *)(v2 + 16) = **(_DWORD **)(a1 + 24);
  *(_DWORD *)(v2 + 20) = *(_DWORD *)(*(_DWORD *)(a1 + 24) + 4);
  if ( *(_DWORD *)(a1 + 188) && !*(_DWORD *)(v2 + 68) )
  {
    v28 = v3;
    emit_restart(v2, *(_DWORD *)(v2 + 72));
    v3 = v28;
  }
  v6 = *(_DWORD *)(v4 + 300);
  v29 = *a2;
  if ( v3 >= v6 )
  {
    v7 = 0;
    v8 = 0;
    v9 = v3;
    v32 = v4;
    v10 = &jpeg_natural_order[v6];
    do
    {
      while ( 1 )
      {
        v11 = v29;
        v12 = 2 * v10[v7];
        v13 = *(__int16 *)(v29 + v12);
        v14 = v13 < 0;
        if ( *(_WORD *)(v29 + v12) )
        {
          if ( v13 >= 0 )
            v11 = v31;
          else
            LOBYTE(v12) = v31;
          v15 = v13 >= 0 ? v13 >> v11 : -v13 >> v12;
          v30 = v14 ? ~v15 : v15;
          if ( v15 )
            break;
        }
        ++v6;
        ++v8;
        ++v7;
        if ( v9 < v6 )
          goto LABEL_34;
      }
      if ( *(_DWORD *)(v2 + 56) )
        emit_eobrun(v2);
      if ( v8 > 15 )
      {
        for ( i = v8; i > 15; i -= 16 )
        {
          while ( 1 )
          {
            v17 = *(_DWORD *)(v2 + 52);
            if ( !*(_BYTE *)(v2 + 12) )
              break;
            i -= 16;
            ++*(_DWORD *)(*(_DWORD *)(v2 + 4 * v17 + 92) + 960);
            if ( i <= 15 )
              goto LABEL_24;
          }
          emit_bits(
            v2,
            *(_DWORD *)(*(_DWORD *)(v2 + 4 * v17 + 76) + 960),
            *(char *)(*(_DWORD *)(v2 + 4 * v17 + 76) + 1264));
        }
LABEL_24:
        v8 = v8 - 16 - 16 * ((unsigned int)(v8 - 16) >> 4);
      }
      v18 = v15 >> 1;
      if ( v18 )
      {
        v19 = 1;
        do
        {
          v18 >>= 1;
          ++v19;
        }
        while ( v18 );
        if ( v19 > 10 )
        {
          *(_DWORD *)(*(_DWORD *)v32 + 20) = 6;
          (**(void (__fastcall ***)(int))v32)(v32);
        }
      }
      else
      {
        v19 = 1;
      }
      v20 = v19 + 16 * v8;
      v21 = *(_DWORD *)(v2 + 52);
      if ( *(_BYTE *)(v2 + 12) )
        ++*(_DWORD *)(*(_DWORD *)(v2 + 4 * v21 + 92) + 4 * v20);
      else
        emit_bits(
          v2,
          *(_DWORD *)(*(_DWORD *)(v2 + 4 * v21 + 76) + 4 * v20),
          *(char *)(*(_DWORD *)(v2 + 4 * v21 + 76) + v20 + 1024));
      ++v6;
      emit_bits(v2, v30, v19);
      v8 = 0;
      ++v7;
    }
    while ( v9 >= v6 );
LABEL_34:
    v4 = v32;
    if ( v8 )
    {
      v22 = *(_DWORD *)(v2 + 56) + 1;
      *(_DWORD *)(v2 + 56) = v22;
      if ( v22 == 0x7FFF )
        emit_eobrun(v2);
    }
  }
  **(_DWORD **)(v4 + 24) = *(_DWORD *)(v2 + 16);
  *(_DWORD *)(*(_DWORD *)(v4 + 24) + 4) = *(_DWORD *)(v2 + 20);
  v23 = *(_DWORD *)(v4 + 188);
  if ( v23 )
  {
    v24 = *(_DWORD *)(v2 + 68);
    v25 = v24 == 0;
    if ( v24 )
      v23 = *(_DWORD *)(v2 + 68);
    else
      v24 = *(_DWORD *)(v2 + 72);
    if ( v25 )
    {
      *(_DWORD *)(v2 + 68) = v23;
      v24 = ((_BYTE)v24 + 1) & 7;
    }
    v26 = v23 - 1;
    if ( v25 )
      *(_DWORD *)(v2 + 72) = v24;
    *(_DWORD *)(v2 + 68) = v26;
  }
  return 1;
}


// ===== 678fd8 start_pass_prep =====
_DWORD *__fastcall start_pass_prep(_DWORD *result, int a2)
{
  _DWORD *v2; // r5
  _DWORD *v3; // r4
  int v4; // r2

  v2 = result;
  v3 = (_DWORD *)result[81];
  if ( a2 )
  {
    *(_DWORD *)(*result + 20) = 4;
    result = (_DWORD *)(*(int (__fastcall **)(_DWORD *))*result)(result);
  }
  v4 = v2[8];
  v3[14] = 0;
  v3[12] = v4;
  v3[13] = 0;
  v3[15] = 2 * v2[55];
  return result;
}


// ===== 679028 jinit_c_prep_controller =====
_DWORD *__fastcall jinit_c_prep_controller(int a1, int a2)
{
  _DWORD *result; // r0
  _DWORD *v4; // r6
  int v5; // r3
  int v6; // r7
  int v7; // r5
  int v8; // r5
  int v9; // r11
  int v10; // r6
  int v11; // r8
  char *v12; // r7
  char *v13; // r10
  int v14; // r2
  int i; // r3
  int v16; // r1
  bool v17; // cc
  int v18; // [sp+4h] [bp-20h]
  int v19; // [sp+8h] [bp-1Ch]
  _DWORD *v20; // [sp+Ch] [bp-18h]
  _DWORD *v21; // [sp+1Ch] [bp-8h]

  if ( a2 )
  {
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 4;
    (**(void (__fastcall ***)(int))a1)(a1);
  }
  result = (_DWORD *)(**(int (__fastcall ***)(int, int, int))(a1 + 4))(a1, 1, 64);
  *(_DWORD *)(a1 + 324) = result;
  v4 = result;
  *result = start_pass_prep;
  v5 = *(_DWORD *)(a1 + 340);
  v6 = *(unsigned __int8 *)(v5 + 8);
  if ( *(_BYTE *)(v5 + 8) )
  {
    result[1] = pre_process_context;
    v8 = *(_DWORD *)(a1 + 220);
    v9 = *(_DWORD *)(a1 + 324);
    result = (_DWORD *)(**(int (__fastcall ***)(int, int, int))(a1 + 4))(a1, 1, 20 * *(_DWORD *)(a1 + 60) * v8);
    v20 = result;
    v10 = *(_DWORD *)(a1 + 68);
    if ( *(int *)(a1 + 60) > 0 )
    {
      v11 = 0;
      v19 = 20 * v8;
      v12 = (char *)&result[v8];
      v18 = 0;
      v21 = &result[4 * v8];
      while ( 1 )
      {
        v13 = (char *)(*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)(a1 + 4) + 8))(
                        a1,
                        1,
                        *(_DWORD *)(v10 + 28) * 8 * *(_DWORD *)(a1 + 216) / *(_DWORD *)(v10 + 8),
                        3 * v8);
        memcpy(v12, v13, 12 * v8);
        result = (_DWORD *)((char *)v20 + v11);
        if ( v8 > 0 )
        {
          v14 = 0;
          for ( i = 0; i != v8; ++i )
          {
            result[i] = *(_DWORD *)&v13[8 * v8 + v14];
            v16 = *(_DWORD *)&v13[4 * i];
            *(_DWORD *)((char *)v21 + v11 + v14) = v16;
            v14 += 4;
          }
        }
        *(_DWORD *)(v9 + 8) = v12;
        v17 = ++v18 < *(_DWORD *)(a1 + 60);
        v11 += v19;
        v12 += v19;
        v9 += 4;
        if ( !v17 )
          break;
        v10 += 84;
      }
    }
  }
  else
  {
    result[1] = pre_process_data;
    v7 = *(_DWORD *)(a1 + 68);
    if ( *(int *)(a1 + 60) > 0 )
    {
      do
      {
        result = (_DWORD *)(*(int (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)(a1 + 4) + 8))(
                             a1,
                             1,
                             *(_DWORD *)(v7 + 28) * 8 * *(_DWORD *)(a1 + 216) / *(_DWORD *)(v7 + 8),
                             *(_DWORD *)(a1 + 220));
        v4[2] = result;
        ++v6;
        v7 += 84;
        ++v4;
      }
      while ( *(_DWORD *)(a1 + 60) > v6 );
    }
  }
  return result;
}


// ===== 679260 expand_bottom_edge =====
int __fastcall expand_bottom_edge(int result, size_t a2, int a3, int a4)
{
  int v5; // r5
  int v7; // r4
  int v8; // r8
  int v9; // r3

  v5 = result;
  if ( a3 < a4 )
  {
    v7 = a3;
    v8 = a3 - 1;
    do
    {
      v9 = v7++;
      result = jcopy_sample_rows(v5, v8, v5, v9, 1, a2);
    }
    while ( v7 != a4 );
  }
  return result;
}


// ===== 6792b8 pre_process_data =====
int __fastcall pre_process_data(
        size_t *a1,
        int a2,
        unsigned int *a3,
        unsigned int a4,
        int a5,
        unsigned int *a6,
        unsigned int a7)
{
  size_t v7; // r5
  int result; // r0
  size_t v12; // r1
  int v13; // r3
  signed int v14; // r6
  unsigned int v15; // r1
  int v16; // r3
  unsigned int v17; // r6
  signed int v18; // r7
  int v19; // r2
  bool v20; // zf
  int v21; // r3
  size_t v22; // r6
  unsigned int v23; // r2
  size_t v24; // r5
  size_t v25; // [sp+8h] [bp-Ch]

  v7 = a1[81];
  result = v7 + 8;
  v25 = v7 + 8;
  while ( 1 )
  {
    v15 = *a3;
    if ( *a3 >= a4 || *a6 >= a7 )
      return result;
    v16 = *(_DWORD *)(v7 + 52);
    v17 = a4 - v15;
    if ( a4 - v15 >= a1[55] - v16 )
      v17 = a1[55] - v16;
    result = (*(int (__fastcall **)(size_t *, unsigned int, size_t))(a1[84] + 4))(a1, a2 + 4 * v15, v25);
    *a3 += v17;
    v18 = *(_DWORD *)(v7 + 48) - v17;
    v19 = v17 + *(_DWORD *)(v7 + 52);
    v20 = *(_DWORD *)(v7 + 48) == v17;
    *(_DWORD *)(v7 + 52) = v19;
    *(_DWORD *)(v7 + 48) = v18;
    if ( !v20 )
    {
      v12 = a1[55];
      v13 = v19;
      goto LABEL_2;
    }
    v21 = a1[55];
    if ( v19 < v21 )
    {
      if ( (int)a1[15] > 0 )
      {
        v22 = v7;
        while ( 1 )
        {
          result = expand_bottom_edge(*(_DWORD *)(v22 + 8), a1[7], v19, v21);
          ++v18;
          v22 += 4;
          if ( (int)a1[15] <= v18 )
            break;
          v19 = *(_DWORD *)(v7 + 52);
          v21 = a1[55];
        }
        v21 = a1[55];
      }
      *(_DWORD *)(v7 + 52) = v21;
      if ( v21 != a1[55] )
        goto LABEL_3;
LABEL_18:
      result = (*(int (__fastcall **)(size_t *, size_t, _DWORD, int, unsigned int))(a1[85] + 4))(a1, v25, 0, a5, *a6);
      *(_DWORD *)(v7 + 52) = 0;
      ++*a6;
      v14 = *(_DWORD *)(v7 + 48);
      if ( !v14 )
        goto LABEL_19;
    }
    else
    {
      v12 = a1[55];
      v13 = v19;
LABEL_2:
      if ( v13 == v12 )
        goto LABEL_18;
LABEL_3:
      v14 = *(_DWORD *)(v7 + 48);
      if ( !v14 )
      {
LABEL_19:
        v23 = *a6;
        if ( a7 > *a6 )
        {
          v24 = a1[17];
          if ( (int)a1[15] > 0 )
          {
            while ( 1 )
            {
              result = expand_bottom_edge(
                         *(_DWORD *)(a5 + 4 * v14++),
                         8 * *(_DWORD *)(v24 + 28),
                         *(_DWORD *)(v24 + 12) * v23,
                         *(_DWORD *)(v24 + 12) * a7);
              v24 += 84;
              if ( (int)a1[15] <= v14 )
                break;
              v23 = *a6;
            }
          }
          *a6 = a7;
          return result;
        }
      }
    }
  }
}


// ===== 67948c pre_process_context =====
unsigned int __fastcall pre_process_context(
        size_t *a1,
        int a2,
        unsigned int *a3,
        unsigned int a4,
        int a5,
        unsigned int *a6,
        unsigned int a7)
{
  _DWORD *v9; // r7
  unsigned int result; // r0
  unsigned int v11; // r1
  signed int v12; // r4
  int v13; // r3
  int v14; // r2
  int v15; // r1
  _DWORD *v16; // r6
  int v17; // r2
  int v18; // r1
  int v19; // r3
  unsigned int v20; // r9
  int v21; // r2
  int v22; // r3
  _DWORD *v23; // r6
  int i; // r10
  int j; // r4
  int v27; // [sp+Ch] [bp-10h]
  int v29; // [sp+14h] [bp-8h]

  v29 = 3 * a1[55];
  v27 = a1[81] + 8;
  v9 = (_DWORD *)a1[81];
LABEL_2:
  result = *a6;
  while ( a7 > result )
  {
    v11 = *a3;
    if ( *a3 < a4 )
    {
      v19 = v9[13];
      v20 = a4 - v11;
      if ( a4 - v11 >= v9[15] - v19 )
        v20 = v9[15] - v19;
      (*(void (__fastcall **)(size_t *, unsigned int, int))(a1[84] + 4))(a1, a2 + 4 * v11, v27);
      if ( v9[12] == a1[8] )
      {
        v21 = a1[15];
        if ( v21 > 0 )
        {
          v22 = a1[55];
          v23 = v9;
          for ( i = 0; i < v21; ++i )
          {
            if ( v22 > 0 )
            {
              for ( j = 1; j <= v22; ++j )
              {
                jcopy_sample_rows(v23[2], 0, v23[2], -j, 1, a1[7]);
                v22 = a1[55];
              }
              v21 = a1[15];
            }
            ++v23;
          }
        }
      }
      *a3 += v20;
      v15 = v9[15];
      v13 = v20 + v9[13];
      v9[12] -= v20;
      v9[13] = v13;
      result = *a6;
    }
    else
    {
      v12 = v9[12];
      if ( v12 )
        return result;
      v13 = v9[15];
      v14 = v9[13];
      v15 = v13;
      if ( v14 < v13 )
      {
        if ( (int)a1[15] > 0 )
        {
          v16 = v9;
          while ( 1 )
          {
            expand_bottom_edge(v16[2], a1[7], v14, v13);
            ++v12;
            ++v16;
            if ( (int)a1[15] <= v12 )
              break;
            v14 = v9[13];
            v13 = v9[15];
          }
          v13 = v9[15];
          v15 = v13;
        }
        v9[13] = v15;
        result = *a6;
      }
      else
      {
        v13 = v9[13];
      }
    }
    if ( v15 == v13 )
    {
      (*(void (__fastcall **)(size_t *, int, _DWORD, int, unsigned int))(a1[85] + 4))(a1, v27, v9[14], a5, result);
      ++*a6;
      v17 = v9[13];
      if ( v29 <= (int)(a1[55] + v9[14]) )
        v18 = 0;
      else
        v18 = a1[55] + v9[14];
      v9[14] = v18;
      if ( v29 <= v17 )
      {
        v9[13] = 0;
        v17 = 0;
      }
      v9[15] = v17 + a1[55];
      goto LABEL_2;
    }
  }
  return result;
}


// ===== 6796cc start_pass_downsample =====
void start_pass_downsample()
{
  ;
}


// ===== 6796d0 sep_downsample =====
int __fastcall sep_downsample(_DWORD *a1, int a2, int a3, int a4, int a5)
{
  int result; // r0
  int v9; // r6
  int v10; // r5
  int v11; // r4
  int v12; // r11
  int v13; // r8

  result = a1[15];
  v9 = a1[85];
  v10 = a1[17];
  if ( result > 0 )
  {
    v11 = 0;
    v12 = 4 * a3;
    v13 = 0;
    do
    {
      result = (*(int (__fastcall **)(_DWORD *, int, int, int))(v9 + 12))(
                 a1,
                 v10,
                 *(_DWORD *)(a2 + v11) + v12,
                 *(_DWORD *)(a4 + v11) + a5 * 4 * *(_DWORD *)(v10 + 12));
      ++v13;
      v10 += 84;
      v11 += 4;
      v9 += 4;
    }
    while ( a1[15] > v13 );
  }
  return result;
}


// ===== 67974c int_downsample =====
int __fastcall int_downsample(_DWORD *a1, _DWORD *a2, _DWORD *a3, int a4)
{
  _DWORD *v5; // r8
  int v6; // r7
  int v7; // r4
  int v8; // r10
  int result; // r0
  int v10; // r9
  int v11; // r6
  int v12; // r5
  int i; // r12
  int v14; // r3
  int v15; // r1
  int v16; // r3
  int v17; // r11
  int v18; // r7
  int v19; // r0
  _DWORD *v20; // lr
  int j; // r12
  int k; // r3
  int v23; // r2
  bool v24; // cc
  int v25; // [sp+4h] [bp-18h]
  int v27; // [sp+Ch] [bp-10h]

  v5 = a3;
  v6 = a1[55];
  v7 = a1[54] / a2[2];
  v8 = 8 * a2[7];
  result = v6 / a2[3];
  v10 = v7 * result;
  v11 = a1[7];
  v12 = result;
  v25 = v7 * result / 2;
  if ( v8 * v7 - v11 > 0 )
  {
    for ( i = 0; v6 > i; ++i )
    {
      v14 = 0;
      v15 = a3[i] + v11;
      result = *(unsigned __int8 *)(v15 - 1);
      do
        *(_BYTE *)(v15 + v14++) = result;
      while ( v14 != v8 * v7 - v11 );
    }
  }
  v16 = a2[3];
  if ( v16 > 0 )
  {
    result = 0;
    v27 = 0;
    do
    {
      if ( v8 )
        v11 = 0;
      v17 = *(_DWORD *)(a4 + 4 * v27);
      if ( v8 )
      {
        v18 = v11;
        while ( 1 )
        {
          if ( v12 > 0 )
          {
            v19 = 0;
            v20 = v5;
            for ( j = 0; j != v12; ++j )
            {
              if ( v7 > 0 )
              {
                for ( k = 0; k != v7; ++k )
                {
                  v23 = *(unsigned __int8 *)(*v20 + v11 + k);
                  v19 += v23;
                }
              }
              ++v20;
            }
          }
          else
          {
            v19 = 0;
          }
          *(_BYTE *)(v17 + v18++) = (v19 + v25) / v10;
          if ( v18 == v8 )
            break;
          v11 += v7;
        }
        result = (int)a2;
        v16 = a2[3];
      }
      v24 = v16 <= ++v27;
      v5 += v12;
    }
    while ( !v24 );
  }
  return result;
}


// ===== 6798c8 h2v1_downsample =====
int __fastcall h2v1_downsample(int a1, int a2, int a3, int a4)
{
  int v4; // r4
  int v5; // r12
  int v6; // r10
  int v7; // r7
  bool v8; // zf
  int v9; // r4
  int i; // r8
  int v11; // r0
  int v12; // r5
  char v13; // r6
  int result; // r0
  int v15; // r8
  int j; // r10
  int v17; // r7
  unsigned __int8 *v18; // r5
  int v19; // r12
  int k; // r0
  int v21; // r9
  int v22; // t1

  v4 = *(_DWORD *)(a2 + 28);
  v5 = *(_DWORD *)(a1 + 28);
  v6 = *(_DWORD *)(a1 + 220);
  v7 = 16 * v4 - v5;
  v8 = 16 * v4 == v5;
  v9 = 8 * v4;
  if ( v7 >= 0 && !v8 && v6 > 0 )
  {
    for ( i = 0; i != v6; ++i )
    {
      v11 = 0;
      v12 = *(_DWORD *)(a3 + 4 * i) + v5;
      v13 = *(_BYTE *)(v12 - 1);
      do
        *(_BYTE *)(v12 + v11++) = v13;
      while ( v11 != v7 );
    }
  }
  result = *(_DWORD *)(a2 + 12);
  if ( result > 0 )
  {
    v15 = 0;
    for ( j = 0; j < result; ++j )
    {
      v17 = *(_DWORD *)(a4 + v15);
      v18 = *(unsigned __int8 **)(a3 + v15);
      if ( v9 )
      {
        v19 = 0;
        for ( k = 0; k != v9; ++k )
        {
          v21 = v18[1];
          v22 = *v18;
          v18 += 2;
          *(_BYTE *)(v17 + k) = (v21 + v22 + v19) >> 1;
          v19 ^= 1u;
        }
        result = *(_DWORD *)(a2 + 12);
      }
      v15 += 4;
    }
  }
  return result;
}


// ===== 679990 h2v2_downsample =====
int __fastcall h2v2_downsample(int a1, int a2, unsigned __int8 **a3, int a4)
{
  int v5; // r7
  int v6; // r1
  int v7; // r4
  bool v8; // zf
  int v9; // r7
  int v10; // r6
  int i; // r5
  int v12; // r3
  unsigned __int8 *v13; // r0
  unsigned __int8 v14; // r12
  int result; // r0
  unsigned __int8 **v16; // r9
  int j; // r10
  unsigned __int8 *v18; // r1
  int v19; // r8
  unsigned __int8 *v20; // r3
  int v21; // r0
  int k; // r2
  int v23; // r6
  int v24; // t1

  v5 = *(_DWORD *)(a2 + 28);
  v6 = *(_DWORD *)(a1 + 28);
  v7 = 16 * v5 - v6;
  v8 = 16 * v5 == v6;
  v9 = 8 * v5;
  v10 = *(_DWORD *)(a1 + 220);
  if ( v7 >= 0 && !v8 && v10 > 0 )
  {
    for ( i = 0; i != v10; ++i )
    {
      v12 = 0;
      v13 = &a3[i][v6];
      v14 = *(v13 - 1);
      do
        v13[v12++] = v14;
      while ( v12 != v7 );
    }
  }
  result = *(_DWORD *)(a2 + 12);
  if ( result > 0 )
  {
    v16 = a3;
    for ( j = 0; j < result; ++j )
    {
      v18 = *v16;
      v19 = *(_DWORD *)(a4 + 4 * j);
      v20 = v16[1];
      if ( v9 )
      {
        v21 = 1;
        for ( k = 0; k != v9; ++k )
        {
          v23 = v18[1];
          v24 = *v18;
          v18 += 2;
          *(_BYTE *)(v19 + k) = (v23 + v24 + *v20 + v20[1] + v21) >> 2;
          v21 ^= 3u;
          v20 += 2;
        }
        result = *(_DWORD *)(a2 + 12);
      }
      v16 += 2;
    }
  }
  return result;
}


// ===== 679a84 h2v2_smooth_downsample =====
int __fastcall h2v2_smooth_downsample(_DWORD *a1, int a2, unsigned __int8 **a3, int a4)
{
  int v4; // r7
  int v5; // r1
  int v6; // r5
  bool v7; // zf
  int v8; // r7
  int v9; // r10
  unsigned __int8 **v10; // r8
  int i; // r6
  int v12; // r3
  unsigned __int8 *v13; // r12
  unsigned __int8 v14; // r4
  int v15; // r3
  int result; // r0
  unsigned __int8 *v17; // r0
  unsigned __int8 *v18; // r1
  unsigned __int8 *v19; // r2
  unsigned __int8 *v20; // r3
  int v21; // r5
  _BYTE *v22; // r4
  int v23; // r12
  int v24; // r8
  int v25; // r10
  int v26; // t1
  int v27; // [sp+4h] [bp-34h]
  int v28; // [sp+8h] [bp-30h]
  unsigned __int8 **v29; // [sp+Ch] [bp-2Ch]
  _BYTE *v30; // [sp+10h] [bp-28h]
  unsigned __int8 *v31; // [sp+14h] [bp-24h]
  unsigned __int8 *v32; // [sp+18h] [bp-20h]
  unsigned __int8 *v33; // [sp+1Ch] [bp-1Ch]
  unsigned __int8 *v34; // [sp+20h] [bp-18h]
  int v35; // [sp+24h] [bp-14h]
  int v36; // [sp+28h] [bp-10h]

  v4 = *(_DWORD *)(a2 + 28);
  v5 = a1[7];
  v6 = 16 * v4 - v5;
  v7 = 16 * v4 == v5;
  v8 = 8 * v4;
  if ( v6 >= 0 && !v7 )
  {
    v9 = a1[55] + 2;
    if ( v9 > 0 )
    {
      v10 = a3;
      for ( i = 0; i < v9; ++i )
      {
        v12 = 0;
        v13 = &(*(v10 - 1))[v5];
        v14 = *(v13 - 1);
        do
          v13[v12++] = v14;
        while ( v12 != v6 );
        ++v10;
      }
    }
  }
  v15 = a1[45];
  result = *(_DWORD *)(a2 + 12);
  v28 = -80 * v15 + 0x4000;
  v27 = 16 * v15;
  if ( result > 0 )
  {
    v29 = a3;
    v35 = 0;
    v36 = 2 * (v8 - 2);
    do
    {
      v17 = *v29;
      v18 = v29[1];
      v19 = *(v29 - 1);
      v20 = v29[2];
      v21 = *v18 + **v29;
      v22 = *(_BYTE **)(a4 + 4 * v35);
      *v22 = (v28 * (v21 + (*v29)[1] + v18[1])
            + 0x8000
            + v27
            * (*v19
             + *v20
             + 2 * (v21 + *v19 + v19[1] + *v20 + v20[1] + (*v29)[2] + v18[2])
             + v19[2]
             + (unsigned int)v20[2])) >> 16;
      v30 = v22 + 1;
      v34 = v17 + 2;
      v33 = v18 + 2;
      v32 = v19 + 2;
      v31 = v20 + 2;
      if ( v8 != 2 )
      {
        v23 = v8 - 2;
        do
        {
          v24 = v17[3];
          v25 = v19[2] + v19[3] + v20[2] + v20[3] + v17[1] + v17[4];
          v26 = v17[2];
          v17 += 2;
          --v23;
          *++v22 = (v28 * (v24 + v26 + v18[2] + v18[3])
                  + 0x8000
                  + v27 * (v19[1] + 2 * (v25 + v18[1] + v18[4]) + v19[4] + v20[1] + (unsigned int)v20[4])) >> 16;
          v18 += 2;
          v19 += 2;
          v20 += 2;
        }
        while ( v23 );
        v34 += v36;
        v33 += v36;
        v32 += v36;
        v31 += v36;
        v30 += v8 - 2;
      }
      result = v34[1];
      ++v35;
      *v30 = (v28 * (*v33 + *v34 + result + v33[1])
            + 0x8000
            + v27
            * (v32[1]
             + v31[1]
             + 2 * (result + v33[1] + *v32 + v32[1] + *v31 + v31[1] + *(v34 - 1) + *(v33 - 1))
             + *(v32 - 1)
             + (unsigned int)*(v31 - 1))) >> 16;
      v29 += 2;
    }
    while ( *(_DWORD *)(a2 + 12) > v35 );
  }
  return result;
}


// ===== 679de4 fullsize_smooth_downsample =====
unsigned __int8 *__fastcall fullsize_smooth_downsample(unsigned __int8 *result, int a2, unsigned __int8 **a3, int a4)
{
  int v4; // r12
  int v5; // r1
  int v6; // r12
  int v7; // r8
  unsigned __int8 **v8; // r7
  int i; // r6
  int v10; // r3
  unsigned __int8 *v11; // r4
  unsigned __int8 v12; // r5
  int v13; // r11
  int v14; // r9
  int v15; // r11
  int v16; // r3
  unsigned __int8 *v17; // r12
  int v18; // r1
  int v19; // r5
  int v20; // r2
  _BYTE *v21; // r6
  int v22; // r1
  int v23; // r8
  int v24; // r7
  _BYTE *v25; // [sp+4h] [bp-1Ch]
  unsigned __int8 *v26; // [sp+8h] [bp-18h]
  unsigned __int8 **v27; // [sp+Ch] [bp-14h]
  int v28; // [sp+10h] [bp-10h]
  int v29; // [sp+14h] [bp-Ch]

  v4 = *(_DWORD *)(a2 + 28);
  v5 = *((_DWORD *)result + 7);
  v6 = 8 * v4;
  if ( v6 - v5 > 0 )
  {
    v7 = *((_DWORD *)result + 55) + 2;
    if ( v7 > 0 )
    {
      v8 = a3;
      for ( i = 0; i < v7; ++i )
      {
        v10 = 0;
        v11 = &(*(v8 - 1))[v5];
        v12 = *(v11 - 1);
        do
          v11[v10++] = v12;
        while ( v10 != v6 - v5 );
        ++v8;
      }
    }
  }
  v13 = *((_DWORD *)result + 45);
  v14 = (128 - v13) << 9;
  v15 = v13 << 6;
  if ( *(int *)(a2 + 12) > 0 )
  {
    v29 = v6 - 2;
    v27 = a3;
    v28 = 0;
    do
    {
      v17 = *(v27 - 1);
      result = v27[1];
      v16 = (int)*v27;
      v18 = **v27;
      v26 = *v27 + 1;
      v19 = *result + *v17 + v18;
      v20 = result[1] + v17[1] + *v26;
      v21 = *(_BYTE **)(a4 + 4 * v28);
      *v21 = (unsigned int)(v18 * v14 + 0x8000 + v15 * (2 * v19 - v18 + v20)) >> 16;
      v25 = v21 + 1;
      if ( v29 )
      {
        v22 = v29;
        do
        {
          v23 = result[2] + v17[2] + *(unsigned __int8 *)(v16 + 2);
          --v22;
          v24 = (*(unsigned __int8 *)(v16 + 1) * v14 + 0x8000 + v15 * (v23 - *(unsigned __int8 *)(v16 + 1) + v19 + v20)) >> 16;
          v19 = v20;
          *++v21 = v24;
          ++v16;
          ++v17;
          ++result;
          v20 = v23;
        }
        while ( v22 );
        v25 += v29;
        v26 += v29;
      }
      ++v28;
      ++v27;
      *v25 = (v14 * *v26 + 0x8000 + v15 * (v19 + 2 * v20 - (unsigned int)*v26)) >> 16;
    }
    while ( *(_DWORD *)(a2 + 12) > v28 );
  }
  return result;
}


// ===== 679fdc jinit_downsampler =====
int __fastcall jinit_downsampler(_DWORD *a1)
{
  int result; // r0
  int v3; // r8
  int v4; // r5
  int v5; // r7
  int v6; // r10
  int v7; // r6
  int v8; // r0
  int v9; // r1
  int v10; // r1
  int v11; // t0
  int v12; // r1
  _BOOL4 v13; // r3
  int (__fastcall *v14)(int, int, unsigned __int8 **, int); // r2
  int (__fastcall *v15)(int, int, unsigned __int8 **, int); // r3
  int (__fastcall *v16)(_DWORD *, int, unsigned __int8 **, int); // r3
  bool v17; // zf

  result = (*(int (**)(void))a1[1])();
  a1[85] = result;
  *(_DWORD *)(result + 4) = sep_downsample;
  *(_DWORD *)result = start_pass_downsample;
  *(_BYTE *)(result + 8) = 0;
  v3 = result;
  if ( *((_BYTE *)a1 + 179) )
  {
    *(_DWORD *)(*a1 + 20) = 25;
    result = (*(int (__fastcall **)(_DWORD *))*a1)(a1);
  }
  v4 = a1[17];
  if ( (int)a1[15] > 0 )
  {
    v5 = v3;
    v6 = 1;
    v7 = 0;
    while ( 1 )
    {
      v12 = *(_DWORD *)(v4 + 8);
      result = a1[54];
      if ( v12 != result || *(_DWORD *)(v4 + 12) != a1[55] )
        break;
      if ( !a1[45] )
      {
        *(_DWORD *)(v5 + 12) = fullsize_downsample;
        goto LABEL_10;
      }
      ++v7;
      *(_DWORD *)(v5 + 12) = fullsize_smooth_downsample;
      *(_BYTE *)(v3 + 8) = 1;
      v5 += 4;
      if ( a1[15] <= v7 )
      {
LABEL_16:
        v13 = v6 == 0;
        if ( !a1[45] )
          v13 = 0;
        if ( v13 )
        {
          *(_DWORD *)(*a1 + 20) = 99;
          return (*(int (__fastcall **)(_DWORD *, _DWORD))(*a1 + 4))(a1, 0);
        }
        return result;
      }
LABEL_11:
      v4 += 84;
    }
    if ( result != 2 * v12 )
      goto LABEL_8;
    v14 = *(int (__fastcall **)(int, int, unsigned __int8 **, int))(v4 + 12);
    v15 = (int (__fastcall *)(int, int, unsigned __int8 **, int))a1[55];
    if ( v14 == v15 )
    {
      *(_DWORD *)(v5 + 12) = h2v1_downsample;
      v6 = 0;
      goto LABEL_10;
    }
    if ( v15 == (int (__fastcall *)(int, int, unsigned __int8 **, int))(2 * (_DWORD)v14) )
    {
      v16 = (int (__fastcall *)(_DWORD *, int, unsigned __int8 **, int))a1[45];
      v17 = v16 == nullptr;
      if ( v16 )
        v16 = h2v2_smooth_downsample;
      else
        v14 = h2v2_downsample;
      if ( v17 )
      {
        *(_DWORD *)(v5 + 12) = v14;
      }
      else
      {
        *(_DWORD *)(v5 + 12) = v16;
        *(_BYTE *)(v3 + 8) = 1;
      }
    }
    else
    {
LABEL_8:
      if ( result % v12 || (v8 = a1[55], v9 = *(_DWORD *)(v4 + 12), v11 = v8 / v9, v10 = v8 % v9, result = v11, v10) )
      {
        *(_DWORD *)(*a1 + 20) = 38;
        result = (*(int (__fastcall **)(_DWORD *))*a1)(a1);
      }
      else
      {
        *(_DWORD *)(v5 + 12) = int_downsample;
        v6 = 0;
      }
    }
LABEL_10:
    ++v7;
    v5 += 4;
    if ( a1[15] <= v7 )
      goto LABEL_16;
    goto LABEL_11;
  }
  return result;
}


// ===== 67a214 fullsize_downsample =====
int __fastcall fullsize_downsample(int a1, int a2, int a3, int a4)
{
  int v7; // r7
  int v8; // r5
  int result; // r0
  int i; // r12
  int v11; // r3
  int v12; // r2
  char v13; // r1

  jcopy_sample_rows(a3, 0, a4, 0, *(_DWORD *)(a1 + 220), *(_DWORD *)(a1 + 28));
  v7 = *(_DWORD *)(a1 + 28);
  v8 = *(_DWORD *)(a1 + 220);
  result = 8 * *(_DWORD *)(a2 + 28) - v7;
  if ( result > 0 && v8 > 0 )
  {
    for ( i = 0; i != v8; ++i )
    {
      v11 = 0;
      v12 = *(_DWORD *)(a4 + 4 * i) + v7;
      v13 = *(_BYTE *)(v12 - 1);
      do
        *(_BYTE *)(v12 + v11++) = v13;
      while ( v11 != result );
    }
  }
  return result;
}


// ===== 67a2a4 jpeg_consume_input =====
int __fastcall jpeg_consume_input(int a1)
{
  int v2; // r5
  int v4; // r6
  _DWORD *v5; // r1
  __int64 v6; // r2
  int v7; // r1
  _DWORD *v8; // r12

  switch ( *(_DWORD *)(a1 + 20) )
  {
    case 0xC8:
      (*(void (**)(void))(*(_DWORD *)(a1 + 400) + 4))();
      (*(void (__fastcall **)(int))(*(_DWORD *)(a1 + 24) + 8))(a1);
      *(_DWORD *)(a1 + 20) = 201;
      goto LABEL_3;
    case 0xC9:
LABEL_3:
      v2 = (**(int (__fastcall ***)(int))(a1 + 400))(a1);
      if ( v2 != 1 )
        return v2;
      v4 = *(_DWORD *)(a1 + 36);
      switch ( v4 )
      {
        case 3:
          if ( !*(_BYTE *)(a1 + 256) )
          {
            if ( *(_BYTE *)(a1 + 264) )
            {
              if ( *(_BYTE *)(a1 + 265) )
              {
                if ( *(_BYTE *)(a1 + 265) != 1 )
                {
                  *(_DWORD *)(*(_DWORD *)a1 + 20) = 114;
                  *(_DWORD *)(*(_DWORD *)a1 + 24) = *(unsigned __int8 *)(a1 + 265);
                  (*(void (__fastcall **)(int, int))(*(_DWORD *)a1 + 4))(a1, -1);
                }
                goto LABEL_19;
              }
            }
            else
            {
              v5 = *(_DWORD **)(a1 + 196);
              LODWORD(v6) = *v5;
              HIDWORD(v6) = v5[21];
              v7 = v5[42];
              if ( v6 == 0x200000001LL && v7 == 3 )
              {
                *(_DWORD *)(a1 + 40) = 3;
                goto LABEL_20;
              }
              if ( v6 != 0x4700000052LL || v7 != 66 )
              {
                v8 = (_DWORD *)(*(_DWORD *)a1 + 24);
                *v8 = v6;
                v8[2] = v7;
                v8[1] = HIDWORD(v6);
                *(_DWORD *)(*(_DWORD *)a1 + 20) = 111;
                (*(void (__fastcall **)(int, int))(*(_DWORD *)a1 + 4))(a1, 1);
                *(_DWORD *)(a1 + 40) = 3;
                goto LABEL_20;
              }
            }
            *(_DWORD *)(a1 + 40) = 2;
            goto LABEL_20;
          }
LABEL_19:
          *(_DWORD *)(a1 + 40) = 3;
LABEL_20:
          *(_DWORD *)(a1 + 44) = 2;
          break;
        case 4:
          if ( *(_BYTE *)(a1 + 264) && *(_BYTE *)(a1 + 265) )
          {
            if ( *(_BYTE *)(a1 + 265) != 2 )
            {
              *(_DWORD *)(*(_DWORD *)a1 + 20) = 114;
              *(_DWORD *)(*(_DWORD *)a1 + 24) = *(unsigned __int8 *)(a1 + 265);
              (*(void (__fastcall **)(int, int))(*(_DWORD *)a1 + 4))(a1, -1);
            }
            *(_DWORD *)(a1 + 40) = 5;
          }
          else
          {
            *(_DWORD *)(a1 + 40) = 4;
          }
          *(_DWORD *)(a1 + 44) = 4;
          break;
        case 1:
          *(_DWORD *)(a1 + 40) = 1;
          *(_DWORD *)(a1 + 44) = 1;
          break;
        default:
          *(_DWORD *)(a1 + 44) = 0;
          *(_DWORD *)(a1 + 40) = 0;
          break;
      }
      *(_DWORD *)(a1 + 20) = 202;
      *(_QWORD *)(a1 + 56) = 0x3FF0000000000000LL;
      *(_DWORD *)(a1 + 76) = 2;
      *(_BYTE *)(a1 + 80) = 1;
      *(_DWORD *)(a1 + 84) = 256;
      *(_BYTE *)(a1 + 90) = 0;
      *(_DWORD *)(a1 + 48) = 1;
      *(_DWORD *)(a1 + 52) = 1;
      *(_BYTE *)(a1 + 64) = 0;
      *(_BYTE *)(a1 + 65) = 0;
      *(_DWORD *)(a1 + 68) = 0;
      *(_BYTE *)(a1 + 72) = 1;
      *(_BYTE *)(a1 + 73) = 1;
      *(_BYTE *)(a1 + 74) = 0;
      *(_DWORD *)(a1 + 116) = 0;
      *(_BYTE *)(a1 + 88) = 0;
      *(_BYTE *)(a1 + 89) = 0;
      return v2;
    case 0xCA:
      return 1;
    case 0xCB:
    case 0xCC:
    case 0xCD:
    case 0xCE:
    case 0xCF:
    case 0xD0:
    case 0xD2:
      return (**(int (***)(void))(a1 + 400))();
    default:
      *(_DWORD *)(*(_DWORD *)a1 + 20) = 20;
      *(_DWORD *)(*(_DWORD *)a1 + 24) = *(_DWORD *)(a1 + 20);
      (**(void (__fastcall ***)(int))a1)(a1);
      return 0;
  }
}


// ===== 67a578 jpeg_input_complete =====
int __fastcall jpeg_input_complete(_DWORD *a1)
{
  if ( (unsigned int)(a1[5] - 200) > 0xA )
  {
    *(_DWORD *)(*a1 + 20) = 20;
    *(_DWORD *)(*a1 + 24) = a1[5];
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  return *(unsigned __int8 *)(a1[100] + 17);
}


// ===== 67a5c0 jpeg_has_multiple_scans =====
int __fastcall jpeg_has_multiple_scans(_DWORD *a1)
{
  if ( (unsigned int)(a1[5] - 202) > 8 )
  {
    *(_DWORD *)(*a1 + 20) = 20;
    *(_DWORD *)(*a1 + 24) = a1[5];
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  return *(unsigned __int8 *)(a1[100] + 16);
}


// ===== 67a608 jpeg_finish_decompress =====
int __fastcall jpeg_finish_decompress(int a1)
{
  int v1; // r3
  int v3; // r3
  int v4; // r0
  int result; // r0

  v1 = *(_DWORD *)(a1 + 20);
  if ( (unsigned int)(v1 - 205) <= 1 )
  {
    if ( !*(_BYTE *)(a1 + 64) )
    {
      if ( *(_DWORD *)(a1 + 120) < *(_DWORD *)(a1 + 96) )
      {
        *(_DWORD *)(*(_DWORD *)a1 + 20) = 67;
        (**(void (__fastcall ***)(int))a1)(a1);
      }
      (*(void (__fastcall **)(int))(*(_DWORD *)(a1 + 384) + 4))(a1);
      *(_DWORD *)(a1 + 20) = 210;
      goto LABEL_5;
    }
    goto LABEL_9;
  }
  if ( v1 == 207 )
  {
    *(_DWORD *)(a1 + 20) = 210;
    goto LABEL_5;
  }
  if ( v1 != 210 )
  {
LABEL_9:
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 20;
    *(_DWORD *)(*(_DWORD *)a1 + 24) = *(_DWORD *)(a1 + 20);
    (**(void (__fastcall ***)(int))a1)(a1);
    v3 = *(_DWORD *)(a1 + 400);
    v4 = a1;
    if ( !*(_BYTE *)(v3 + 17) )
      goto LABEL_6;
    goto LABEL_10;
  }
LABEL_5:
  while ( 1 )
  {
    v3 = *(_DWORD *)(a1 + 400);
    v4 = a1;
    if ( *(_BYTE *)(v3 + 17) )
      break;
LABEL_6:
    result = (*(int (__fastcall **)(int))v3)(v4);
    if ( !result )
      return result;
  }
LABEL_10:
  (*(void (__fastcall **)(int))(*(_DWORD *)(a1 + 24) + 24))(v4);
  jpeg_abort(a1);
  return 1;
}


// ===== 67a70c jpeg_read_header =====
int __fastcall jpeg_read_header(_DWORD *a1, int a2)
{
  int result; // r0

  if ( (unsigned int)(a1[5] - 200) > 1 )
  {
    *(_DWORD *)(*a1 + 20) = 20;
    *(_DWORD *)(*a1 + 24) = a1[5];
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  result = jpeg_consume_input((int)a1);
  if ( result == 2 )
  {
    if ( a2 )
    {
      *(_DWORD *)(*a1 + 20) = 51;
      (*(void (__fastcall **)(_DWORD *))*a1)(a1);
    }
    jpeg_abort((int)a1);
    return 2;
  }
  return result;
}


// ===== 67a7a0 jpeg_abort_decompress =====
// attributes: thunk
int __fastcall jpeg_abort_decompress(int result)
{
  return jpeg_abort(result);
}


// ===== 67a7a4 jpeg_destroy_decompress =====
// attributes: thunk
int __fastcall jpeg_destroy_decompress(int result)
{
  return jpeg_destroy(result);
}


// ===== 67a7a8 jpeg_CreateDecompress =====
int __fastcall jpeg_CreateDecompress(_DWORD *a1, int a2, int a3)
{
  int v5; // r6
  int v6; // r5
  int result; // r0

  a1[1] = 0;
  if ( a2 != 62 )
  {
    *(_DWORD *)(*a1 + 20) = 12;
    *(_DWORD *)(*a1 + 24) = 62;
    *(_DWORD *)(*a1 + 28) = a2;
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  if ( a3 != 432 )
  {
    *(_DWORD *)(*a1 + 20) = 21;
    *(_DWORD *)(*a1 + 24) = 432;
    *(_DWORD *)(*a1 + 28) = a3;
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  v5 = *a1;
  v6 = a1[3];
  LC_API_MEMSET_0(a1, 0, 0x1B0u);
  *((_BYTE *)a1 + 16) = 1;
  *a1 = v5;
  a1[3] = v6;
  jinit_memory_mgr(a1);
  a1[67] = 0;
  a1[2] = 0;
  a1[6] = 0;
  a1[36] = 0;
  a1[37] = 0;
  a1[38] = 0;
  a1[39] = 0;
  a1[40] = 0;
  a1[44] = 0;
  a1[41] = 0;
  a1[45] = 0;
  a1[42] = 0;
  a1[46] = 0;
  a1[43] = 0;
  a1[47] = 0;
  jinit_marker_reader(a1);
  result = jinit_input_controller(a1);
  a1[5] = 200;
  return result;
}


// ===== 67a8b4 output_pass_setup =====
int __fastcall output_pass_setup(int a1)
{
  unsigned int i; // r5
  int v3; // r3
  int result; // r0
  int v5; // r3
  int v6; // r3

  if ( *(_DWORD *)(a1 + 20) != 204 )
  {
    (**(void (***)(void))(a1 + 384))();
    *(_DWORD *)(a1 + 120) = 0;
    *(_DWORD *)(a1 + 20) = 204;
  }
  if ( *(_BYTE *)(*(_DWORD *)(a1 + 384) + 8) )
  {
    for ( i = *(_DWORD *)(a1 + 120); ; i = *(_DWORD *)(a1 + 120) )
    {
      while ( *(_DWORD *)(a1 + 96) <= i )
      {
        (*(void (__fastcall **)(int))(*(_DWORD *)(a1 + 384) + 4))(a1);
        (**(void (__fastcall ***)(int))(a1 + 384))(a1);
        v5 = *(_DWORD *)(a1 + 384);
        *(_DWORD *)(a1 + 120) = 0;
        i = 0;
        if ( !*(_BYTE *)(v5 + 8) )
          goto LABEL_12;
      }
      v3 = *(_DWORD *)(a1 + 8);
      if ( v3 )
      {
        *(_DWORD *)(v3 + 4) = i;
        *(_DWORD *)(*(_DWORD *)(a1 + 8) + 8) = *(_DWORD *)(a1 + 96);
        (**(void (__fastcall ***)(int))(a1 + 8))(a1);
        i = *(_DWORD *)(a1 + 120);
      }
      (*(void (__fastcall **)(int, _DWORD, int, _DWORD))(*(_DWORD *)(a1 + 388) + 4))(a1, 0, a1 + 120, 0);
      if ( *(_DWORD *)(a1 + 120) == i )
        break;
    }
    return 0;
  }
  else
  {
LABEL_12:
    result = 1;
    if ( *(_BYTE *)(a1 + 65) )
      v6 = 206;
    else
      v6 = 205;
    *(_DWORD *)(a1 + 20) = v6;
  }
  return result;
}


// ===== 67a9c4 jpeg_read_scanlines =====
int __fastcall jpeg_read_scanlines(_DWORD *a1, int a2, int a3)
{
  unsigned int v6; // r3
  int v7; // r2
  int result; // r0
  int v9; // [sp+4h] [bp-4h] BYREF

  if ( a1[5] != 205 )
  {
    *(_DWORD *)(*a1 + 20) = 20;
    *(_DWORD *)(*a1 + 24) = a1[5];
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  v6 = a1[30];
  if ( v6 >= a1[24] )
  {
    *(_DWORD *)(*a1 + 20) = 123;
    (*(void (__fastcall **)(_DWORD *, int))(*a1 + 4))(a1, -1);
    return 0;
  }
  else
  {
    v7 = a1[2];
    if ( v7 )
    {
      *(_DWORD *)(v7 + 4) = v6;
      *(_DWORD *)(a1[2] + 8) = a1[24];
      (*(void (__fastcall **)(_DWORD *))a1[2])(a1);
    }
    v9 = 0;
    (*(void (__fastcall **)(_DWORD *, int, int *, int))(a1[97] + 4))(a1, a2, &v9, a3);
    result = v9;
    a1[30] += v9;
  }
  return result;
}


// ===== 67aaa8 jpeg_read_raw_data =====
unsigned int __fastcall jpeg_read_raw_data(_DWORD *a1, int a2, unsigned int a3)
{
  unsigned int v6; // r3
  int v7; // r2
  unsigned int v8; // r5
  int v9; // r0
  int v10; // r3
  bool v11; // zf
  unsigned int result; // r0

  if ( a1[5] != 206 )
  {
    *(_DWORD *)(*a1 + 20) = 20;
    *(_DWORD *)(*a1 + 24) = a1[5];
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  v6 = a1[30];
  if ( v6 >= a1[24] )
  {
    *(_DWORD *)(*a1 + 20) = 123;
    (*(void (__fastcall **)(_DWORD *, int))(*a1 + 4))(a1, -1);
    return 0;
  }
  else
  {
    v7 = a1[2];
    if ( v7 )
    {
      *(_DWORD *)(v7 + 4) = v6;
      *(_DWORD *)(a1[2] + 8) = a1[24];
      (*(void (__fastcall **)(_DWORD *))a1[2])(a1);
    }
    v8 = a1[69] * a1[70];
    if ( v8 > a3 )
    {
      *(_DWORD *)(*a1 + 20) = 23;
      (*(void (__fastcall **)(_DWORD *))*a1)(a1);
    }
    v9 = (*(int (__fastcall **)(_DWORD *, int))(a1[98] + 12))(a1, a2);
    v11 = v9 == 0;
    if ( v9 )
      v10 = a1[30];
    else
      v8 = 0;
    result = v8;
    if ( !v11 )
      a1[30] = v10 + v8;
  }
  return result;
}


// ===== 67abb4 jpeg_start_output =====
int __fastcall jpeg_start_output(_DWORD *a1, int a2)
{
  int v2; // r3
  bool v5; // zf

  v2 = a1[5];
  v5 = v2 == 204;
  if ( v2 != 204 )
    v5 = v2 == 207;
  if ( !v5 )
  {
    *(_DWORD *)(*a1 + 20) = 20;
    *(_DWORD *)(*a1 + 24) = a1[5];
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  if ( a2 < 1 )
    a2 = 1;
  if ( *(_BYTE *)(a1[100] + 17) && a2 >= a1[31] )
    a2 = a1[31];
  a1[33] = a2;
  return output_pass_setup((int)a1);
}


// ===== 67ac2c jpeg_finish_output =====
int __fastcall jpeg_finish_output(int a1)
{
  int v1; // r3
  int v3; // r0
  int v4; // r3
  int result; // r0

  v1 = *(_DWORD *)(a1 + 20);
  if ( (unsigned int)(v1 - 205) > 1 )
  {
    if ( v1 == 208 )
      goto LABEL_3;
    goto LABEL_8;
  }
  if ( !*(_BYTE *)(a1 + 64) )
  {
LABEL_8:
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 20;
    *(_DWORD *)(*(_DWORD *)a1 + 24) = *(_DWORD *)(a1 + 20);
    (**(void (__fastcall ***)(int))a1)(a1);
    v3 = a1;
    if ( *(_DWORD *)(a1 + 124) <= *(_DWORD *)(a1 + 132) )
      goto LABEL_4;
    goto LABEL_9;
  }
  (*(void (**)(void))(*(_DWORD *)(a1 + 384) + 4))();
  *(_DWORD *)(a1 + 20) = 208;
LABEL_3:
  while ( 1 )
  {
    v3 = a1;
    if ( *(_DWORD *)(a1 + 124) > *(_DWORD *)(a1 + 132) )
      break;
LABEL_4:
    v4 = *(_DWORD *)(a1 + 400);
    if ( *(_BYTE *)(v4 + 17) )
      break;
    result = (*(int (__fastcall **)(int))v4)(v3);
    if ( !result )
      return result;
  }
LABEL_9:
  *(_DWORD *)(a1 + 20) = 207;
  return 1;
}


// ===== 67acf4 jpeg_start_decompress =====
int __fastcall jpeg_start_decompress(int a1)
{
  int v1; // r3
  int result; // r0
  int v4; // r3
  bool v5; // zf
  int v6; // r2
  int v7; // r1

  v1 = *(_DWORD *)(a1 + 20);
  if ( v1 == 202 )
  {
    jinit_master_decompress();
    if ( *(_BYTE *)(a1 + 64) )
    {
      *(_DWORD *)(a1 + 20) = 207;
      return 1;
    }
    *(_DWORD *)(a1 + 20) = 203;
  }
  else if ( v1 != 203 )
  {
    if ( v1 != 204 )
    {
      *(_DWORD *)(*(_DWORD *)a1 + 20) = 20;
      *(_DWORD *)(*(_DWORD *)a1 + 24) = *(_DWORD *)(a1 + 20);
      (**(void (__fastcall ***)(int))a1)(a1);
    }
    return output_pass_setup(a1);
  }
  if ( !*(_BYTE *)(*(_DWORD *)(a1 + 400) + 16) )
  {
LABEL_19:
    *(_DWORD *)(a1 + 132) = *(_DWORD *)(a1 + 124);
    return output_pass_setup(a1);
  }
  v4 = *(_DWORD *)(a1 + 8);
LABEL_8:
  if ( v4 )
    (*(void (__fastcall **)(int))v4)(a1);
  while ( 1 )
  {
    result = (**(int (__fastcall ***)(int))(a1 + 400))(a1);
    if ( !result )
      return result;
    if ( result == 2 )
      goto LABEL_19;
    v4 = *(_DWORD *)(a1 + 8);
    if ( v4 )
    {
      v5 = result == 3;
      if ( result != 3 )
        v5 = result == 1;
      if ( v5 )
      {
        v6 = *(_DWORD *)(v4 + 4) + 1;
        *(_DWORD *)(v4 + 4) = v6;
        v4 = *(_DWORD *)(a1 + 8);
        v7 = *(_DWORD *)(v4 + 8);
        if ( v6 >= v7 )
        {
          *(_DWORD *)(v4 + 8) = *(_DWORD *)(a1 + 284) + v7;
          v4 = *(_DWORD *)(a1 + 8);
        }
      }
      goto LABEL_8;
    }
  }
}


// ===== 67ae10 finish_input_pass =====
int __fastcall finish_input_pass(int result)
{
  **(_DWORD **)(result + 400) = consume_markers;
  return result;
}


// ===== 67ae28 reset_input_controller =====
int __fastcall reset_input_controller(int a1)
{
  int v1; // r3
  int result; // r0

  v1 = *(_DWORD *)(a1 + 400);
  *(_BYTE *)(v1 + 20) = 1;
  *(_DWORD *)v1 = consume_markers;
  *(_BYTE *)(v1 + 16) = 0;
  *(_BYTE *)(v1 + 17) = 0;
  (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 16))(a1);
  result = (**(int (__fastcall ***)(int))(a1 + 404))(a1);
  *(_DWORD *)(a1 + 140) = 0;
  return result;
}


// ===== 67ae7c jinit_input_controller =====
int __fastcall jinit_input_controller(int a1)
{
  int result; // r0

  result = (**(int (***)(void))(a1 + 4))();
  *(_DWORD *)(a1 + 400) = result;
  *(_BYTE *)(result + 20) = 1;
  *(_DWORD *)result = consume_markers;
  *(_DWORD *)(result + 4) = reset_input_controller;
  *(_DWORD *)(result + 8) = start_input_pass;
  *(_DWORD *)(result + 12) = finish_input_pass;
  *(_BYTE *)(result + 17) = 0;
  *(_BYTE *)(result + 16) = 0;
  return result;
}


// ===== 67aeec start_input_pass =====
int __fastcall start_input_pass(int a1)
{
  int v1; // r5
  int v3; // r5
  int v4; // r0
  int v5; // r1
  int v6; // r0
  int v7; // r3
  int v8; // r9
  _DWORD *v9; // r6
  unsigned int v10; // r7
  unsigned int v11; // r10
  int v12; // r3
  int v13; // r8
  int v14; // r1
  int v15; // r1
  int v16; // r12
  int v17; // r3
  int v18; // r2
  int v19; // r3
  int v20; // r6
  int i; // r5
  int v22; // r7
  int result; // r0
  unsigned int v24; // r3
  unsigned int v25; // r8
  void *v26; // r10
  _DWORD *v27; // r6
  unsigned int v28; // r7
  unsigned int v29; // r0
  int v30; // r1

  v1 = *(_DWORD *)(a1 + 292);
  if ( v1 == 1 )
  {
    v27 = *(_DWORD **)(a1 + 296);
    *(_DWORD *)(a1 + 312) = v27[7];
    *(_DWORD *)(a1 + 316) = v27[8];
    v28 = v27[3];
    v29 = v27[8];
    v27[16] = v27[9];
    v27[13] = 1;
    v27[14] = 1;
    v27[15] = 1;
    v27[17] = 1;
    v30 = v29 % v28;
    if ( !(v29 % v28) )
      v30 = v28;
    v27[18] = v30;
    v19 = *(_DWORD *)(a1 + 292);
    *(_DWORD *)(a1 + 320) = 1;
    *(_DWORD *)(a1 + 324) = 0;
    goto LABEL_17;
  }
  if ( (unsigned int)(v1 - 1) > 3 )
  {
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 26;
    *(_DWORD *)(*(_DWORD *)a1 + 24) = *(_DWORD *)(a1 + 292);
    *(_DWORD *)(*(_DWORD *)a1 + 28) = 4;
    (**(void (__fastcall ***)(int))a1)(a1);
  }
  v3 = 0;
  v4 = jdiv_round_up(*(_DWORD *)(a1 + 28), 8 * *(_DWORD *)(a1 + 272));
  v5 = *(_DWORD *)(a1 + 276);
  *(_DWORD *)(a1 + 312) = v4;
  v6 = jdiv_round_up(*(_DWORD *)(a1 + 32), 8 * v5);
  v7 = *(_DWORD *)(a1 + 292);
  *(_DWORD *)(a1 + 316) = v6;
  *(_DWORD *)(a1 + 320) = 0;
  if ( v7 > 0 )
  {
    v8 = a1;
    do
    {
      v9 = *(_DWORD **)(v8 + 296);
      v10 = v9[2];
      v11 = v9[3];
      v12 = v9[9];
      v9[13] = v10;
      v13 = v10 * v11;
      v9[14] = v11;
      v9[16] = v10 * v12;
      v9[15] = v10 * v11;
      v14 = v9[7] % v10;
      if ( !v14 )
        v14 = v10;
      v9[17] = v14;
      v15 = v9[8] % v11;
      if ( !v15 )
        v15 = v11;
      v9[18] = v15;
      if ( v13 + *(_DWORD *)(a1 + 320) > 10 )
      {
        *(_DWORD *)(*(_DWORD *)a1 + 20) = 13;
        (**(void (__fastcall ***)(int))a1)(a1);
      }
      if ( v13 > 0 )
      {
        v16 = *(_DWORD *)(a1 + 320);
        v17 = 0;
        do
        {
          v18 = a1 + 4 * v16 + v17;
          v17 += 4;
          *(_DWORD *)(v18 + 324) = v3;
        }
        while ( v17 != 4 * v13 );
        *(_DWORD *)(a1 + 320) = v13 + v16;
      }
      v19 = *(_DWORD *)(a1 + 292);
      ++v3;
      v8 += 4;
    }
    while ( v3 < v19 );
LABEL_17:
    if ( v19 > 0 )
    {
      v20 = a1;
      for ( i = 0; i < v19; ++i )
      {
        v22 = *(_DWORD *)(v20 + 296);
        if ( !*(_DWORD *)(v22 + 76) )
        {
          v24 = *(_DWORD *)(v22 + 16);
          v25 = v24 + 36;
          if ( v24 > 3 || !*(_DWORD *)(a1 + 4 * v25) )
          {
            *(_DWORD *)(*(_DWORD *)a1 + 20) = 52;
            *(_DWORD *)(*(_DWORD *)a1 + 24) = v24;
            (**(void (__fastcall ***)(int))a1)(a1);
          }
          v26 = (void *)(**(int (__fastcall ***)(int, int, int))(a1 + 4))(a1, 1, 130);
          memcpy(v26, *(const void **)(a1 + 4 * v25), 0x82u);
          *(_DWORD *)(v22 + 76) = v26;
          v19 = *(_DWORD *)(a1 + 292);
        }
        v20 += 4;
      }
    }
  }
  (**(void (__fastcall ***)(int))(a1 + 408))(a1);
  result = (**(int (__fastcall ***)(int))(a1 + 392))(a1);
  **(_DWORD **)(a1 + 400) = *(_DWORD *)(*(_DWORD *)(a1 + 392) + 4);
  return result;
}


// ===== 67b188 consume_markers =====
int __fastcall consume_markers(int a1)
{
  _BYTE *v1; // r7
  int v3; // r6
  int v5; // r0
  int v6; // r3
  int v7; // r3
  int v8; // r2
  int v9; // r8
  int v10; // r5
  int v11; // r5
  int v12; // r3
  int v13; // r1
  int v14; // r0
  int v15; // r1
  int v16; // r3
  int v17; // r8
  int v18; // r0
  int v19; // r0
  int v20; // r2
  int v21; // r3

  v1 = *(_BYTE **)(a1 + 400);
  if ( v1[17] )
    return 2;
  v5 = (*(int (**)(void))(*(_DWORD *)(a1 + 404) + 4))();
  v3 = v5;
  if ( v5 != 1 )
  {
    if ( v5 == 2 )
    {
      v6 = (unsigned __int8)v1[20];
      v1[17] = 1;
      if ( v6 )
      {
        if ( *(_BYTE *)(*(_DWORD *)(a1 + 404) + 13) )
        {
          *(_DWORD *)(*(_DWORD *)a1 + 20) = 59;
          (**(void (__fastcall ***)(int))a1)(a1);
        }
      }
      else
      {
        v7 = *(_DWORD *)(a1 + 124);
        if ( *(_DWORD *)(a1 + 132) > v7 )
          *(_DWORD *)(a1 + 132) = v7;
      }
    }
    return v3;
  }
  if ( v1[20] )
  {
    if ( *(int *)(a1 + 32) > 65500 || *(int *)(a1 + 28) > 65500 )
    {
      *(_DWORD *)(*(_DWORD *)a1 + 20) = 41;
      *(_DWORD *)(*(_DWORD *)a1 + 24) = 65500;
      (**(void (__fastcall ***)(int))a1)(a1);
    }
    if ( *(_DWORD *)(a1 + 192) != 8 )
    {
      *(_DWORD *)(*(_DWORD *)a1 + 20) = 15;
      *(_DWORD *)(*(_DWORD *)a1 + 24) = *(_DWORD *)(a1 + 192);
      (**(void (__fastcall ***)(int))a1)(a1);
    }
    v8 = *(_DWORD *)(a1 + 36);
    if ( v8 > 10 )
    {
      *(_DWORD *)(*(_DWORD *)a1 + 20) = 26;
      *(_DWORD *)(*(_DWORD *)a1 + 24) = *(_DWORD *)(a1 + 36);
      *(_DWORD *)(*(_DWORD *)a1 + 28) = 10;
      (**(void (__fastcall ***)(int))a1)(a1);
      v8 = *(_DWORD *)(a1 + 36);
    }
    v9 = *(_DWORD *)(a1 + 196);
    *(_DWORD *)(a1 + 276) = 1;
    *(_DWORD *)(a1 + 272) = 1;
    v10 = v9;
    if ( v8 > 0 )
    {
      v11 = 0;
      do
      {
        v12 = *(_DWORD *)(v9 + 8);
        ++v11;
        if ( (unsigned int)(v12 - 1) > 3 || (v13 = *(_DWORD *)(v9 + 12), v13 <= 0) || v13 > 4 )
        {
          *(_DWORD *)(*(_DWORD *)a1 + 20) = 18;
          (**(void (__fastcall ***)(int))a1)(a1);
          v12 = *(_DWORD *)(v9 + 8);
          v8 = *(_DWORD *)(a1 + 36);
        }
        v14 = *(_DWORD *)(a1 + 272);
        v15 = *(_DWORD *)(a1 + 276);
        if ( v14 < v12 )
          *(_DWORD *)(a1 + 272) = v12;
        else
          *(_DWORD *)(a1 + 272) = v14;
        v16 = *(_DWORD *)(v9 + 12);
        v9 += 84;
        if ( v15 < v16 )
          *(_DWORD *)(a1 + 276) = v16;
        else
          *(_DWORD *)(a1 + 276) = v15;
      }
      while ( v11 < v8 );
      v10 = *(_DWORD *)(a1 + 196);
    }
    *(_DWORD *)(a1 + 280) = 8;
    if ( v8 > 0 )
    {
      v17 = 0;
      do
      {
        *(_DWORD *)(v10 + 36) = 8;
        ++v17;
        *(_DWORD *)(v10 + 28) = jdiv_round_up(*(_DWORD *)(v10 + 8) * *(_DWORD *)(a1 + 28), 8 * *(_DWORD *)(a1 + 272));
        *(_DWORD *)(v10 + 32) = jdiv_round_up(*(_DWORD *)(v10 + 12) * *(_DWORD *)(a1 + 32), 8 * *(_DWORD *)(a1 + 276));
        *(_DWORD *)(v10 + 40) = jdiv_round_up(*(_DWORD *)(v10 + 8) * *(_DWORD *)(a1 + 28), *(_DWORD *)(a1 + 272));
        v18 = jdiv_round_up(*(_DWORD *)(v10 + 12) * *(_DWORD *)(a1 + 32), *(_DWORD *)(a1 + 276));
        *(_BYTE *)(v10 + 48) = 1;
        *(_DWORD *)(v10 + 44) = v18;
        *(_DWORD *)(v10 + 76) = 0;
        v10 += 84;
      }
      while ( v17 < *(_DWORD *)(a1 + 36) );
    }
    v19 = jdiv_round_up(*(_DWORD *)(a1 + 32), 8 * *(_DWORD *)(a1 + 276));
    v20 = *(_DWORD *)(a1 + 292);
    v21 = *(_DWORD *)(a1 + 36);
    *(_DWORD *)(a1 + 284) = v19;
    *(_BYTE *)(*(_DWORD *)(a1 + 400) + 16) = v20 < v21 || *(_BYTE *)(a1 + 200);
    v1[20] = 0;
    return v3;
  }
  if ( !v1[16] )
  {
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 35;
    (**(void (__fastcall ***)(int))a1)(a1);
  }
  start_input_pass(a1);
  return 1;
}


// ===== 67b4c0 get_sof =====
int __fastcall get_sof(_DWORD *a1, char a2, char a3)
{
  unsigned __int8 *v3; // r5
  unsigned __int8 **v4; // r7
  unsigned __int8 *v6; // r3
  unsigned __int8 *v7; // r12
  unsigned __int8 *v8; // r3
  int v9; // r10
  unsigned __int8 *v10; // r12
  int v11; // r3
  int v12; // r8
  unsigned __int8 *v13; // r12
  int v14; // r2
  int v15; // r3
  int v16; // r2
  int v17; // r3
  int v18; // r2
  int v19; // r1
  int v20; // r3
  int v21; // r2
  unsigned __int8 *v22; // r3
  int v23; // r2
  unsigned __int8 *v24; // r6
  unsigned __int8 *v25; // r5
  int v26; // t1
  _DWORD *v27; // r2
  int v28; // r1
  int v29; // r8
  unsigned __int8 *v30; // r6
  int v31; // r3
  int v32; // r0
  int v33; // r8
  int v34; // r10
  int v35; // r3
  int v36; // r6
  unsigned int v37; // r3
  unsigned __int8 *v38; // r6
  int v39; // t1
  int v40; // r2
  _DWORD *v41; // r3
  int v42; // r2

  v4 = (unsigned __int8 **)a1[6];
  v6 = v4[1];
  v7 = *v4;
  *((_BYTE *)a1 + 200) = a2;
  *((_BYTE *)a1 + 201) = a3;
  if ( !v6 )
  {
    if ( !((int (*)(void))v4[3])() )
      return 0;
    v7 = *v4;
    v6 = v4[1];
  }
  v8 = v6 - 1;
  v9 = *v7;
  if ( v8 )
  {
    v10 = v7 + 1;
    v11 = (int)(v8 - 1);
    v12 = *v10;
    if ( v11 )
    {
      v13 = v10 + 1;
      goto LABEL_8;
    }
  }
  else
  {
    if ( !((int (__fastcall *)(_DWORD *))v4[3])(a1) )
      return 0;
    v11 = (int)(v4[1] - 1);
    v12 = **v4;
    if ( v4[1] != (_BYTE *)&dword_0 + 1 )
    {
      v13 = *v4 + 1;
      goto LABEL_8;
    }
  }
  if ( !((int (__fastcall *)(_DWORD *))v4[3])(a1) )
    return 0;
  v13 = *v4;
  v11 = (int)v4[1];
LABEL_8:
  v14 = *v13;
  v15 = v11 - 1;
  if ( v15 )
    ++v13;
  a1[48] = v14;
  if ( v15 )
  {
    v16 = *v13;
    v17 = v15 - 1;
    if ( v17 )
      ++v13;
    v18 = v16 << 8;
    a1[8] = v18;
    if ( v17 )
      goto LABEL_14;
  }
  else
  {
    if ( !((int (__fastcall *)(_DWORD *))v4[3])(a1) )
      return 0;
    v13 = *v4;
    v17 = (int)(v4[1] - 1);
    if ( v4[1] != (_BYTE *)&dword_0 + 1 )
      ++v13;
    v18 = **v4 << 8;
    a1[8] = v18;
    if ( v17 )
    {
LABEL_14:
      v19 = *v13;
      v20 = v17 - 1;
      if ( v20 )
        ++v13;
      a1[8] = v19 + v18;
      if ( v20 )
        goto LABEL_17;
      goto LABEL_70;
    }
  }
  if ( !((int (__fastcall *)(_DWORD *))v4[3])(a1) )
    return 0;
  v13 = *v4;
  v20 = (int)(v4[1] - 1);
  if ( v4[1] != (_BYTE *)&dword_0 + 1 )
    ++v13;
  a1[8] += **v4;
  if ( !v20 )
  {
LABEL_70:
    if ( !((int (__fastcall *)(_DWORD *))v4[3])(a1) )
      return 0;
    v13 = *v4;
    v20 = (int)v4[1];
  }
LABEL_17:
  v21 = *v13;
  v22 = (unsigned __int8 *)(v20 - 1);
  if ( v22 )
    ++v13;
  v23 = v21 << 8;
  a1[7] = v23;
  if ( !v22 )
  {
    if ( !((int (__fastcall *)(_DWORD *))v4[3])(a1) )
      return 0;
    v13 = *v4;
    v22 = v4[1];
    v23 = a1[7];
  }
  v24 = v22 - 1;
  if ( v22 != (_BYTE *)&dword_0 + 1 )
    v3 = v13 + 1;
  a1[7] = *v13 + v23;
  if ( v22 != (_BYTE *)&dword_0 + 1 )
    goto LABEL_25;
  if ( !((int (__fastcall *)(_DWORD *))v4[3])(a1) )
    return 0;
  v3 = *v4;
  v24 = v4[1];
LABEL_25:
  v26 = *v3;
  v25 = v3 + 1;
  v27 = (_DWORD *)*a1;
  v28 = a1[95];
  a1[9] = v26;
  v27[6] = v28;
  v27[7] = a1[7];
  v27[8] = a1[8];
  v29 = (v9 << 8) - 8 + v12;
  v30 = v24 - 1;
  v27[9] = a1[9];
  *(_DWORD *)(*a1 + 20) = 100;
  (*(void (__fastcall **)(_DWORD *, int))(*a1 + 4))(a1, 1);
  if ( *(_BYTE *)(a1[101] + 13) )
  {
    *(_DWORD *)(*a1 + 20) = 58;
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  if ( !a1[8] || !a1[7] || (v31 = a1[9], v31 <= 0) )
  {
    *(_DWORD *)(*a1 + 20) = 32;
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
    v31 = a1[9];
  }
  if ( 3 * v31 != v29 )
  {
    *(_DWORD *)(*a1 + 20) = 11;
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
    v31 = a1[9];
  }
  v32 = a1[49];
  if ( !v32 )
  {
    v32 = (*(int (__fastcall **)(_DWORD *, int, int))a1[1])(a1, 1, 84 * v31);
    v31 = a1[9];
    a1[49] = v32;
  }
  if ( v31 > 0 )
  {
    v33 = v32 + 84;
    v34 = 0;
    do
    {
      *(_DWORD *)(v33 - 80) = v34;
      if ( v30 )
      {
        v35 = *v25;
        v36 = (int)(v30 - 1);
        if ( v36 )
          ++v25;
        *(_DWORD *)(v33 - 84) = v35;
        if ( !v36 )
          goto LABEL_50;
      }
      else
      {
        if ( !((int (__fastcall *)(_DWORD *))v4[3])(a1) )
          return 0;
        v25 = *v4;
        v36 = (int)(v4[1] - 1);
        if ( v4[1] != (_BYTE *)&dword_0 + 1 )
          ++v25;
        *(_DWORD *)(v33 - 84) = **v4;
        if ( !v36 )
        {
LABEL_50:
          if ( !((int (__fastcall *)(_DWORD *))v4[3])(a1) )
            return 0;
          v25 = *v4;
          v36 = (int)v4[1];
        }
      }
      v37 = *v25;
      v38 = (unsigned __int8 *)(v36 - 1);
      if ( v38 )
        ++v25;
      *(_DWORD *)(v33 - 76) = v37 >> 4;
      *(_DWORD *)(v33 - 72) = v37 & 0xF;
      if ( !v38 )
      {
        if ( !((int (__fastcall *)(_DWORD *))v4[3])(a1) )
          return 0;
        v25 = *v4;
        v38 = v4[1];
      }
      v39 = *v25++;
      v40 = *(_DWORD *)(v33 - 84);
      *(_DWORD *)(v33 - 68) = v39;
      v41 = (_DWORD *)*a1;
      ++v34;
      v41[6] = v40;
      v41 += 6;
      v30 = v38 - 1;
      v41[1] = *(_DWORD *)(v33 - 76);
      v41[2] = *(_DWORD *)(v33 - 72);
      v42 = *(_DWORD *)(v33 - 68);
      v33 += 84;
      v41[3] = v42;
      *(_DWORD *)(*a1 + 20) = 101;
      (*(void (__fastcall **)(_DWORD *))(*a1 + 4))(a1);
    }
    while ( a1[9] > v34 );
  }
  *(_BYTE *)(a1[101] + 13) = 1;
  *v4 = v25;
  v4[1] = v30;
  return 1;
}


// ===== 67b924 examine_app0 =====
int __fastcall examine_app0(int *a1, _BYTE *a2, unsigned int a3, int a4)
{
  int v5; // r3
  int v7; // r2
  int v8; // r1
  int result; // r0
  int v10; // r2
  int v11; // r2
  int v12; // r2
  _DWORD *v13; // r2
  int v14; // r3
  int v15; // r2
  int v16; // r1
  int v17; // [sp+4h] [bp-8h]
  int v18; // [sp+4h] [bp-8h]

  v5 = a4 + a3;
  if ( a3 <= 0xD )
  {
    if ( a3 <= 5 || *a2 != 74 || a2[1] != 70 )
      goto LABEL_3;
    v10 = (unsigned __int8)a2[2];
  }
  else
  {
    if ( *a2 != 74 || a2[1] != 70 )
      goto LABEL_3;
    v10 = (unsigned __int8)a2[2];
    if ( v10 == 73 )
    {
      if ( a2[3] == 70 && !a2[4] )
      {
        *((_BYTE *)a1 + 256) = 1;
        v12 = (unsigned __int8)a2[5];
        *((_BYTE *)a1 + 257) = v12;
        *((_BYTE *)a1 + 258) = a2[6];
        *((_BYTE *)a1 + 259) = a2[7];
        *((_WORD *)a1 + 130) = (unsigned __int8)a2[9] + ((unsigned __int8)a2[8] << 8);
        *((_WORD *)a1 + 131) = (unsigned __int8)a2[11] + ((unsigned __int8)a2[10] << 8);
        if ( v12 != 1 )
        {
          *(_DWORD *)(*a1 + 20) = 119;
          *(_DWORD *)(*a1 + 24) = *((unsigned __int8 *)a1 + 257);
          *(_DWORD *)(*a1 + 28) = *((unsigned __int8 *)a1 + 258);
          v17 = v5;
          (*(void (__fastcall **)(int *, int))(*a1 + 4))(a1, -1);
          v5 = v17;
        }
        v13 = (_DWORD *)(*a1 + 24);
        *v13 = *((unsigned __int8 *)a1 + 257);
        v13[1] = *((unsigned __int8 *)a1 + 258);
        v13[2] = *((unsigned __int16 *)a1 + 130);
        v13[3] = *((unsigned __int16 *)a1 + 131);
        v13[4] = *((unsigned __int8 *)a1 + 259);
        *(_DWORD *)(*a1 + 20) = 87;
        v18 = v5;
        result = (*(int (__fastcall **)(int *, int))(*a1 + 4))(a1, 1);
        v14 = v18;
        v15 = (unsigned __int8)a2[13] | (unsigned __int8)a2[12];
        if ( v15 )
        {
          *(_DWORD *)(*a1 + 20) = 90;
          *(_DWORD *)(*a1 + 24) = (unsigned __int8)a2[12];
          *(_DWORD *)(*a1 + 28) = (unsigned __int8)a2[13];
          result = (*(int (__fastcall **)(int *, int))(*a1 + 4))(a1, 1);
          v15 = (unsigned __int8)a2[13];
          v16 = (unsigned __int8)a2[12];
          v14 = v18;
        }
        else
        {
          v16 = 0;
        }
        v5 = v14 - 14;
        if ( 3 * v15 * v16 != v5 )
        {
          v7 = *a1;
          v8 = 88;
          goto LABEL_4;
        }
        return result;
      }
LABEL_3:
      v7 = *a1;
      v8 = 77;
LABEL_4:
      *(_DWORD *)(v7 + 20) = v8;
      *(_DWORD *)(*a1 + 24) = v5;
      return (*(int (**)(void))(*a1 + 4))();
    }
  }
  if ( v10 != 88 || a2[3] != 88 || a2[4] )
    goto LABEL_3;
  v11 = (unsigned __int8)a2[5];
  switch ( v11 )
  {
    case 17:
      v7 = *a1;
      v8 = 109;
      goto LABEL_4;
    case 19:
      v7 = *a1;
      v8 = 110;
      goto LABEL_4;
    case 16:
      v7 = *a1;
      v8 = 108;
      goto LABEL_4;
  }
  *(_DWORD *)(*a1 + 20) = 89;
  *(_DWORD *)(*a1 + 24) = (unsigned __int8)a2[5];
  *(_DWORD *)(*a1 + 28) = v5;
  return (*(int (__fastcall **)(int *, int))(*a1 + 4))(a1, 1);
}


// ===== 67bbe4 examine_app14 =====
int __fastcall examine_app14(_BYTE *a1, _BYTE *a2, unsigned int a3, int a4)
{
  int result; // r0
  int v6; // r7
  int v7; // r6
  int v8; // r5
  int v9; // r12
  _DWORD *v10; // r3

  if ( a3 > 0xB && *a2 == 65 && a2[1] == 100 && a2[2] == 111 && a2[3] == 98 && a2[4] == 101 )
  {
    v6 = (unsigned __int8)a2[9];
    v7 = (unsigned __int8)a2[10];
    v8 = (unsigned __int8)a2[11];
    v9 = (unsigned __int8)a2[8] + ((unsigned __int8)a2[7] << 8);
    v10 = (_DWORD *)(*(_DWORD *)a1 + 24);
    *v10 = (unsigned __int8)a2[6] + ((unsigned __int8)a2[5] << 8);
    v10[2] = v7 + (v6 << 8);
    v10[1] = v9;
    v10[3] = v8;
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 76;
    result = (*(int (__fastcall **)(_BYTE *, int))(*(_DWORD *)a1 + 4))(a1, 1);
    a1[265] = v8;
    a1[264] = 1;
  }
  else
  {
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 78;
    *(_DWORD *)(*(_DWORD *)a1 + 24) = a4 + a3;
    return (*(int (__fastcall **)(_BYTE *, int))(*(_DWORD *)a1 + 4))(a1, 1);
  }
  return result;
}


// ===== 67bccc get_interesting_appn =====
int __fastcall get_interesting_appn(int *a1)
{
  unsigned __int8 **v1; // r6
  unsigned __int8 *v3; // r4
  unsigned __int8 *v4; // r5
  unsigned __int8 *v5; // r4
  int v6; // r11
  unsigned __int8 *v7; // r5
  int v8; // r3
  int v9; // r4
  unsigned __int8 *v10; // r5
  unsigned int v11; // r2
  unsigned int v12; // r11
  char v13; // t1
  int v14; // r0
  int v15; // r3
  int v16; // r9
  unsigned int v18; // [sp+0h] [bp-24h]
  int v19; // [sp+4h] [bp-20h]
  _BYTE v20[16]; // [sp+Ch] [bp-18h] BYREF

  v1 = (unsigned __int8 **)a1[6];
  v3 = v1[1];
  v4 = *v1;
  if ( !v3 )
  {
    if ( !((int (*)(void))v1[3])() )
      return 0;
    v4 = *v1;
    v3 = v1[1];
  }
  v5 = v3 - 1;
  v6 = *v4;
  if ( v5 )
  {
    v7 = v4 + 1;
    goto LABEL_5;
  }
  if ( !((int (__fastcall *)(int *))v1[3])(a1) )
    return 0;
  v7 = *v1;
  v5 = v1[1];
LABEL_5:
  v8 = (v6 << 8) - 2 + *v7;
  v19 = v8;
  v9 = (int)(v5 - 1);
  v10 = v7 + 1;
  if ( v8 > 13 )
  {
    v11 = 14;
LABEL_7:
    v12 = 0;
    do
    {
      while ( v9 )
      {
        v13 = *v10++;
        --v9;
        v20[v12++] = v13;
        if ( v12 >= v11 )
          goto LABEL_12;
      }
      v18 = v11;
      v14 = ((int (__fastcall *)(int *))v1[3])(a1);
      v11 = v18;
      if ( !v14 )
        return 0;
      v10 = *v1 + 1;
      v9 = (int)(v1[1] - 1);
      v20[v12++] = **v1;
    }
    while ( v12 < v18 );
LABEL_12:
    v15 = a1[95];
    v16 = v19 - v11;
    if ( v15 != 224 )
      goto LABEL_13;
LABEL_22:
    examine_app0(a1, v20, v11, v16);
    goto LABEL_15;
  }
  if ( v8 > 0 )
  {
    v11 = v8;
    goto LABEL_7;
  }
  v11 = 0;
  v15 = a1[95];
  v16 = v19;
  if ( v15 == 224 )
    goto LABEL_22;
LABEL_13:
  if ( v15 == 238 )
  {
    examine_app14(a1, v20, v11, v16);
  }
  else
  {
    *(_DWORD *)(*a1 + 20) = 68;
    *(_DWORD *)(*a1 + 24) = a1[95];
    (*(void (__fastcall **)(int *))*a1)(a1);
  }
LABEL_15:
  v1[1] = (unsigned __int8 *)v9;
  *v1 = v10;
  if ( v16 > 0 )
    (*(void (__fastcall **)(int *, int))(a1[6] + 16))(a1, v16);
  return 1;
}


// ===== 67becc save_marker =====
int __fastcall save_marker(int *a1)
{
  _DWORD *v1; // r8
  unsigned __int8 **v2; // r5
  unsigned __int8 *v4; // r6
  unsigned __int8 *v5; // r4
  unsigned int v6; // r3
  int v7; // r10
  unsigned int v8; // r9
  _BYTE *v9; // r11
  int v10; // r0
  bool v11; // cc
  int v12; // r2
  _BOOL4 v13; // r0
  _DWORD *v14; // r3
  _DWORD *v15; // r2
  int v16; // r3
  unsigned __int8 *v18; // r4
  unsigned __int8 *v19; // r6
  int v20; // r3
  int v21; // r0
  int v22; // r2
  unsigned int v23; // [sp+0h] [bp-Ch]
  _DWORD *v24; // [sp+4h] [bp-8h]

  v1 = (_DWORD *)a1[101];
  v2 = (unsigned __int8 **)a1[6];
  v24 = (_DWORD *)v1[40];
  v4 = *v2;
  v5 = v2[1];
  if ( v24 )
  {
    v6 = v1[41];
    v7 = 0;
    v8 = v24[3];
    v9 = (_BYTE *)(v24[4] + v6);
    goto LABEL_3;
  }
  if ( !v5 )
  {
    if ( !((int (*)(void))v2[3])() )
      return 0;
    v4 = *v2;
    v5 = v2[1];
  }
  v18 = v5 - 1;
  v8 = *v4;
  if ( v18 )
  {
    v19 = v4 + 1;
    goto LABEL_37;
  }
  if ( !((int (__fastcall *)(int *))v2[3])(a1) )
    return 0;
  v19 = *v2;
  v18 = v2[1];
LABEL_37:
  v7 = (v8 << 8) - 2 + *v19;
  if ( v7 < 0 )
    v8 = 0;
  v5 = v18 - 1;
  v4 = v19 + 1;
  if ( v7 >= 0 )
  {
    v20 = a1[95];
    if ( v20 == 254 )
      v8 = v1[23];
    else
      v8 = v1[v20 - 200];
    if ( v8 >= v7 )
      v8 = v7;
    v21 = (*(int (__fastcall **)(int *, int, unsigned int))(a1[1] + 4))(a1, 1, v8 + 20);
    v6 = 0;
    v24 = (_DWORD *)v21;
    *(_DWORD *)v21 = 0;
    v22 = a1[95];
    v9 = (_BYTE *)(v21 + 20);
    *(_DWORD *)(v21 + 8) = v7;
    *(_BYTE *)(v21 + 4) = v22;
    *(_DWORD *)(v21 + 12) = v8;
    *(_DWORD *)(v21 + 16) = v21 + 20;
    v1[40] = v21;
    v1[41] = 0;
LABEL_3:
    if ( v8 <= v6 )
    {
LABEL_19:
      if ( v24 )
      {
        v14 = (_DWORD *)a1[67];
        if ( v14 )
        {
          do
          {
            v15 = v14;
            v14 = (_DWORD *)*v14;
          }
          while ( v14 );
          *v15 = v24;
        }
        else
        {
          a1[67] = (int)v24;
        }
        v9 = (_BYTE *)v24[4];
        v7 = v24[2] - v8;
      }
      goto LABEL_24;
    }
    while ( 1 )
    {
      while ( 1 )
      {
        *v2 = v4;
        v2[1] = v5;
        v1[41] = v6;
        if ( !v5 )
          break;
        if ( v8 <= v6 )
          goto LABEL_6;
LABEL_13:
        v12 = 0;
        do
        {
          v13 = v8 > ++v6 && --v5 != nullptr;
          v9[v12] = v4[v12];
          ++v12;
        }
        while ( v13 );
        v9 += v12;
        v4 += v12;
        if ( v6 >= v8 )
          goto LABEL_19;
      }
      v23 = v6;
      v10 = ((int (__fastcall *)(int *))v2[3])(a1);
      v6 = v23;
      if ( !v10 )
        return 0;
      v5 = v2[1];
      v4 = *v2;
      v11 = v5 != nullptr;
      if ( v5 )
        v11 = v8 > v23;
      if ( v11 )
        goto LABEL_13;
LABEL_6:
      if ( v6 >= v8 )
        goto LABEL_19;
    }
  }
  v9 = (_BYTE *)v8;
LABEL_24:
  v1[40] = 0;
  v16 = a1[95];
  if ( v16 == 224 )
  {
    examine_app0(a1, v9, v8, v7);
  }
  else if ( v16 == 238 )
  {
    examine_app14(a1, v9, v8, v7);
  }
  else
  {
    *(_DWORD *)(*a1 + 20) = 91;
    *(_DWORD *)(*a1 + 24) = a1[95];
    *(_DWORD *)(*a1 + 28) = v7 + v8;
    (*(void (__fastcall **)(int *, int))(*a1 + 4))(a1, 1);
  }
  v2[1] = v5;
  *v2 = v4;
  if ( v7 > 0 )
    (*(void (__fastcall **)(int *, int))(a1[6] + 16))(a1, v7);
  return 1;
}


// ===== 67c1a0 skip_variable =====
int __fastcall skip_variable(_DWORD *a1)
{
  unsigned __int8 **v1; // r5
  unsigned __int8 *v3; // r6
  unsigned __int8 *v4; // r8
  unsigned __int8 *v5; // r8
  int v6; // r10
  unsigned __int8 *v7; // r6
  int v8; // r2
  int v9; // r7

  v1 = (unsigned __int8 **)a1[6];
  v3 = *v1;
  v4 = v1[1];
  if ( !v4 )
  {
    if ( !((int (*)(void))v1[3])() )
      return 0;
    v3 = *v1;
    v4 = v1[1];
  }
  v5 = v4 - 1;
  v6 = *v3;
  if ( !v5 )
  {
    if ( ((int (__fastcall *)(_DWORD *))v1[3])(a1) )
    {
      v7 = *v1;
      v5 = v1[1];
      goto LABEL_6;
    }
    return 0;
  }
  v7 = v3 + 1;
LABEL_6:
  v8 = *v7;
  *(_DWORD *)(*a1 + 20) = 91;
  *(_DWORD *)(*a1 + 24) = a1[95];
  v9 = (v6 << 8) - 2 + v8;
  *(_DWORD *)(*a1 + 28) = v9;
  (*(void (__fastcall **)(_DWORD *, int))(*a1 + 4))(a1, 1);
  *v1 = v7 + 1;
  v1[1] = v5 - 1;
  if ( v9 > 0 )
    (*(void (__fastcall **)(_DWORD *, int))(a1[6] + 16))(a1, v9);
  return 1;
}


// ===== 67c270 next_marker =====
int __fastcall next_marker(_DWORD *a1)
{
  unsigned __int8 **v1; // r6
  unsigned __int8 *v3; // r5
  int v4; // r4
  int v5; // t1
  int v6; // r8
  int v7; // t1

  v1 = (unsigned __int8 **)a1[6];
  v3 = *v1;
  v4 = (int)v1[1];
LABEL_2:
  if ( !v4 )
    goto LABEL_5;
  while ( 1 )
  {
    do
    {
      v5 = *v3++;
      --v4;
      if ( v5 == 255 )
      {
        do
        {
          while ( v4 )
          {
            v7 = *v3++;
            v6 = v7;
            --v4;
            if ( v7 != 255 )
              goto LABEL_11;
          }
          if ( !((int (__fastcall *)(_DWORD *))v1[3])(a1) )
            return 0;
          v3 = *v1 + 1;
          v6 = **v1;
          v4 = (int)(v1[1] - 1);
        }
        while ( v6 == 255 );
LABEL_11:
        if ( v6 )
        {
          if ( *(_DWORD *)(a1[101] + 20) )
          {
            *(_DWORD *)(*a1 + 20) = 116;
            *(_DWORD *)(*a1 + 24) = *(_DWORD *)(a1[101] + 20);
            *(_DWORD *)(*a1 + 28) = v6;
            (*(void (__fastcall **)(_DWORD *, int))(*a1 + 4))(a1, -1);
            *(_DWORD *)(a1[101] + 20) = 0;
          }
          a1[95] = v6;
          v1[1] = (unsigned __int8 *)v4;
          *v1 = v3;
          return 1;
        }
        *(_DWORD *)(a1[101] + 20) += 2;
        *v1 = v3;
        v1[1] = (unsigned __int8 *)v4;
        goto LABEL_2;
      }
      ++*(_DWORD *)(a1[101] + 20);
      v1[1] = (unsigned __int8 *)v4;
      *v1 = v3;
    }
    while ( v4 );
LABEL_5:
    if ( !((int (__fastcall *)(_DWORD *))v1[3])(a1) )
      return 0;
    v3 = *v1;
    v4 = (int)v1[1];
  }
}


// ===== 67c3b8 read_restart_marker =====
int __fastcall read_restart_marker(_DWORD *a1)
{
  int v1; // r3

  v1 = a1[95];
  if ( !v1 )
  {
    if ( !next_marker(a1) )
      return 0;
    v1 = a1[95];
  }
  if ( *(_DWORD *)(a1[101] + 16) + 208 == v1 )
  {
    *(_DWORD *)(*a1 + 20) = 98;
    *(_DWORD *)(*a1 + 24) = *(_DWORD *)(a1[101] + 16);
    (*(void (__fastcall **)(_DWORD *, int))(*a1 + 4))(a1, 3);
    a1[95] = 0;
    goto LABEL_4;
  }
  if ( (*(int (__fastcall **)(_DWORD *))(a1[6] + 20))(a1) )
  {
LABEL_4:
    *(_DWORD *)(a1[101] + 16) = ((unsigned __int8)*(_DWORD *)(a1[101] + 16) + 1) & 7;
    return 1;
  }
  return 0;
}


// ===== 67c46c jpeg_resync_to_restart =====
int __fastcall jpeg_resync_to_restart(_DWORD *a1, int a2)
{
  int v2; // r5
  char v3; // r6
  char v4; // r7
  char v5; // r8
  char v6; // r10
  int v8; // r7
  int v9; // r8
  int v10; // r10
  _DWORD *v11; // r0
  unsigned int v12; // r3
  int result; // r0

  v2 = a1[95];
  *(_DWORD *)(*a1 + 20) = 121;
  v3 = a2;
  v4 = a2 + 1;
  *(_DWORD *)(*a1 + 24) = v2;
  v5 = a2 + 2;
  *(_DWORD *)(*a1 + 28) = a2;
  v6 = a2 - 1;
  (*(void (__fastcall **)(_DWORD *, int))(*a1 + 4))(a1, -1);
  v8 = (v4 & 7) + 208;
  v9 = (v5 & 7) + 208;
  v10 = (v6 & 7) + 208;
  v11 = a1;
  v12 = v2 - 208;
  if ( v2 > 191 )
    goto LABEL_4;
  while ( 1 )
  {
    *(_DWORD *)(*a1 + 20) = 97;
    *(_DWORD *)(*a1 + 24) = v2;
    *(_DWORD *)(*a1 + 28) = 2;
    (*(void (__fastcall **)(_DWORD *, int))(*a1 + 4))(v11, 4);
    result = next_marker(a1);
    if ( !result )
      break;
    v2 = a1[95];
    v11 = a1;
    v12 = v2 - 208;
    if ( v2 > 191 )
    {
LABEL_4:
      if ( v12 > 7 || v8 == v2 || v9 == v2 )
      {
        *(_DWORD *)(*a1 + 20) = 97;
        *(_DWORD *)(*a1 + 24) = v2;
        *(_DWORD *)(*a1 + 28) = 3;
        (*(void (__fastcall **)(_DWORD *, int))(*a1 + 4))(a1, 4);
        return 1;
      }
      if ( v10 != v2 && ((v3 - 2) & 7) + 208 != v2 )
      {
        *(_DWORD *)(*a1 + 20) = 97;
        *(_DWORD *)(*a1 + 24) = v2;
        *(_DWORD *)(*a1 + 28) = 1;
        (*(void (__fastcall **)(_DWORD *, int))(*a1 + 4))(a1, 4);
        a1[95] = 0;
        return 1;
      }
    }
  }
  return result;
}


// ===== 67c5ec reset_marker_reader =====
_DWORD *__fastcall reset_marker_reader(_DWORD *result)
{
  int v1; // r2

  v1 = result[101];
  result[95] = 0;
  result[49] = 0;
  result[31] = 0;
  *(_DWORD *)(v1 + 160) = 0;
  *(_BYTE *)(v1 + 12) = 0;
  *(_BYTE *)(v1 + 13) = 0;
  *(_DWORD *)(v1 + 20) = 0;
  return result;
}


// ===== 67c614 jinit_marker_reader =====
__int64 __fastcall jinit_marker_reader(int a1)
{
  __int64 result; // r0
  int v3; // r2
  int v4; // r3
  int v5; // r3

  result = (unsigned int)(**(int (***)(void))(a1 + 4))();
  *(_DWORD *)(a1 + 404) = result;
  v3 = 0;
  *(_DWORD *)(result + 4) = read_markers;
  *(_DWORD *)(result + 8) = read_restart_marker;
  *(_DWORD *)result = reset_marker_reader;
  *(_DWORD *)(result + 24) = skip_variable;
  *(_DWORD *)(result + 92) = 0;
  v4 = result;
  do
  {
    ++v3;
    *(_DWORD *)(v4 + 28) = skip_variable;
    *(_DWORD *)(v4 + 96) = 0;
    v4 += 4;
  }
  while ( v3 != 16 );
  *(_DWORD *)(result + 84) = get_interesting_appn;
  *(_DWORD *)(result + 28) = get_interesting_appn;
  v5 = *(_DWORD *)(a1 + 404);
  *(_DWORD *)(a1 + 380) = 0;
  *(_DWORD *)(a1 + 196) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(v5 + 160) = 0;
  *(_BYTE *)(v5 + 12) = 0;
  *(_BYTE *)(v5 + 13) = 0;
  *(_DWORD *)(v5 + 20) = 0;
  return result;
}


// ===== 67c6d4 jpeg_save_markers =====
int (__fastcall *__fastcall jpeg_save_markers(_DWORD *a1, int a2, unsigned int a3))(int *a1)
{
  int v4; // r12
  int v5; // r0
  bool v6; // zf
  int (__fastcall *result)(int *); // r0
  bool v8; // zf
  bool v9; // zf

  v4 = a1[101];
  v5 = *(_DWORD *)(a1[1] + 48) - 20;
  if ( (int)a3 >= v5 )
    a3 = v5;
  if ( a3 )
  {
    v6 = a3 == 13;
    if ( a3 <= 0xD )
      v6 = a2 == 224;
    if ( v6 )
    {
      a3 = 14;
LABEL_9:
      result = save_marker;
      goto LABEL_10;
    }
    v9 = a3 == 11;
    if ( a3 <= 0xB )
      v9 = a2 == 238;
    if ( v9 )
    {
      a3 = 12;
      goto LABEL_9;
    }
    result = save_marker;
  }
  else
  {
    v8 = a2 == 224;
    if ( a2 != 224 )
      v8 = a2 == 238;
    if ( v8 )
      result = get_interesting_appn;
    else
      result = skip_variable;
  }
  if ( a2 == 254 )
  {
    *(_DWORD *)(v4 + 92) = a3;
    *(_DWORD *)(v4 + 24) = result;
    return result;
  }
LABEL_10:
  if ( (unsigned int)(a2 - 224) > 0xF )
  {
    *(_DWORD *)(*a1 + 20) = 68;
    *(_DWORD *)(*a1 + 24) = a2;
    return (int (__fastcall *)(int *))(*(int (__fastcall **)(_DWORD *))*a1)(a1);
  }
  else
  {
    *(_DWORD *)(v4 + 4 * a2 - 868) = result;
    *(_DWORD *)(v4 + 4 * (a2 - 200)) = a3;
  }
  return result;
}


// ===== 67c7bc jpeg_set_marker_processor =====
_DWORD *__fastcall jpeg_set_marker_processor(_DWORD *result, int a2, int a3)
{
  int v3; // r12

  v3 = result[101];
  if ( a2 == 254 )
  {
    *(_DWORD *)(v3 + 24) = a3;
  }
  else if ( (unsigned int)(a2 - 224) > 0xF )
  {
    *(_DWORD *)(*result + 20) = 68;
    *(_DWORD *)(*result + 24) = a2;
    return (_DWORD *)(*(int (__fastcall **)(_DWORD *))*result)(result);
  }
  else
  {
    *(_DWORD *)(v3 + 4 * a2 - 868) = a3;
  }
  return result;
}


// ===== 67c810 read_markers =====
int __fastcall read_markers(_DWORD *a1)
{
  Elf32_Dyn **v1; // r5
  int v2; // r3
  _DWORD *v3; // r4
  int *v4; // r6
  unsigned __int8 *v5; // r7
  unsigned __int8 *v6; // r9
  int v7; // r9
  int v8; // r10
  unsigned __int8 *v9; // r7
  int v10; // r7
  int v11; // r8
  int v12; // t1
  int v13; // r9
  bool v14; // zf
  int v15; // r3
  _DWORD *v16; // r0
  int v17; // r2
  unsigned __int8 **v18; // r6
  unsigned __int8 *v19; // r3
  unsigned __int8 *v20; // r7
  unsigned __int8 *v21; // r3
  int v22; // r8
  unsigned __int8 *v23; // r7
  unsigned __int8 *v24; // r10
  unsigned __int8 *v25; // r7
  unsigned __int8 *v26; // r10
  int v27; // r8
  unsigned __int8 *v28; // r7
  int v29; // r2
  int v30; // r8
  char v31; // r1
  bool v33; // zf
  unsigned __int8 **v34; // r10
  unsigned __int8 *v35; // r2
  unsigned __int8 *v36; // r3
  unsigned __int8 *v37; // r3
  int v38; // r8
  unsigned __int8 *v39; // r2
  int v40; // r6
  unsigned __int8 *v41; // r7
  unsigned int v42; // t1
  int v43; // r11
  int i; // r5
  int v45; // t1
  int v46; // r3
  _DWORD *v47; // r3
  _DWORD *v48; // r3
  unsigned int v49; // r1
  bool v50; // cc
  int v51; // r5
  char v52; // t1
  unsigned int v53; // r3
  bool v54; // zf
  unsigned int v55; // r11
  _DWORD *v56; // r11
  void *v57; // r0
  int v58; // r2
  _BYTE *v59; // r3
  int v60; // r3
  unsigned __int8 **v61; // r8
  unsigned __int8 *v62; // r2
  unsigned __int8 *v63; // r3
  unsigned __int8 *v64; // r3
  int v65; // r10
  unsigned __int8 *v66; // r2
  unsigned __int8 *v67; // r6
  unsigned __int8 *v68; // r7
  unsigned __int8 *v69; // r7
  int v70; // t1
  unsigned int v71; // r11
  int v72; // r10
  unsigned __int8 *v73; // r6
  unsigned int v74; // r11
  int v75; // r3
  unsigned __int8 *v76; // r2
  int v77; // r11
  _DWORD *v78; // r7
  int v79; // r4
  unsigned __int8 *v80; // r3
  int v81; // r3
  __int16 v82; // r6
  unsigned __int8 *v83; // r2
  __int16 v84; // t1
  int v85; // r1
  __int16 v86; // t1
  int v87; // r1
  unsigned __int16 *v88; // r3
  _DWORD *v89; // r2
  unsigned __int16 *v90; // r11
  int v91; // r6
  _DWORD *v92; // r3
  int v93; // r2
  int v94; // r3
  int *v95; // r9
  unsigned __int8 *v96; // r7
  unsigned __int8 *v97; // r6
  unsigned __int8 *v98; // r6
  int v99; // r10
  unsigned __int8 *v100; // r7
  unsigned __int8 *v101; // r8
  int v102; // r11
  unsigned __int8 *v103; // r7
  int v104; // r6
  unsigned __int8 *v105; // r7
  int v106; // t1
  int v107; // r3
  unsigned __int8 *v108; // r8
  _DWORD *v109; // r10
  int v110; // r8
  int v111; // r11
  unsigned __int8 *v112; // r7
  int v113; // r0
  unsigned int v114; // r3
  unsigned int v115; // t1
  _DWORD *v116; // r5
  int v117; // r2
  _DWORD *v118; // r3
  int v119; // r3
  unsigned __int8 *v120; // r8
  unsigned __int8 *v121; // r8
  unsigned int v122; // t1
  _DWORD *v123; // r3
  int v124; // r1
  unsigned int v125; // [sp+4h] [bp-130h]
  unsigned int v126; // [sp+8h] [bp-12Ch]
  int v127; // [sp+8h] [bp-12Ch]
  int v128; // [sp+Ch] [bp-128h]
  int v129; // [sp+Ch] [bp-128h]
  unsigned __int8 *v130; // [sp+Ch] [bp-128h]
  Elf32_Dyn **v131; // [sp+14h] [bp-120h]
  _BYTE v132[256]; // [sp+18h] [bp-11Ch] BYREF
  _BYTE v133[20]; // [sp+118h] [bp-1Ch] BYREF

  v1 = &__GLOBAL_OFFSET_TABLE_;
  v2 = a1[95];
  v3 = a1;
  if ( !v2 )
  {
    if ( *(_BYTE *)(a1[101] + 12) )
      goto LABEL_17;
LABEL_3:
    v4 = (int *)v3[6];
    v5 = (unsigned __int8 *)*v4;
    v6 = (unsigned __int8 *)v4[1];
    if ( v6 )
    {
      v7 = (int)(v6 - 1);
      v8 = *v5;
      if ( v7 )
      {
        v9 = v5 + 1;
        goto LABEL_7;
      }
    }
    else
    {
      if ( !((int (__fastcall *)(_DWORD *))v4[3])(v3) )
        return 0;
      v7 = v4[1] - 1;
      v8 = *(unsigned __int8 *)*v4;
      if ( v4[1] != 1 )
      {
        v9 = (unsigned __int8 *)(*v4 + 1);
LABEL_7:
        v12 = *v9;
        v10 = (int)(v9 + 1);
        v11 = v12;
        v13 = v7 - 1;
        v14 = v8 == 255;
        if ( v8 == 255 )
          v14 = v11 == 216;
        if ( v14 )
          goto LABEL_11;
        goto LABEL_66;
      }
    }
    if ( !((int (__fastcall *)(_DWORD *))v4[3])(v3) )
      return 0;
    v10 = *v4 + 1;
    v11 = *(unsigned __int8 *)*v4;
    v13 = v4[1] - 1;
    v33 = v8 == 255;
    if ( v8 == 255 )
      v33 = v11 == 216;
    if ( v33 )
      goto LABEL_11;
LABEL_66:
    *(_DWORD *)(*v3 + 20) = 53;
    *(_DWORD *)(*v3 + 24) = v8;
    *(_DWORD *)(*v3 + 28) = v11;
    (*(void (__fastcall **)(_DWORD *))*v3)(v3);
LABEL_11:
    v3[95] = v11;
    *v4 = v10;
    v4[1] = v13;
    v2 = v3[95];
  }
  if ( v2 > 207 )
  {
LABEL_19:
    if ( v2 != 219 )
    {
      if ( v2 > 219 )
      {
        if ( v2 > 239 )
        {
          if ( v2 == 254 )
          {
            if ( (*(int (__fastcall **)(_DWORD *))(v3[101] + 24))(v3) )
              goto LABEL_16;
            return 0;
          }
          goto LABEL_25;
        }
        if ( v2 >= 224 )
        {
          if ( (*(int (__fastcall **)(_DWORD *))(v3[101] + 4 * v2 - 868))(v3) )
            goto LABEL_16;
          return 0;
        }
        if ( v2 != 220 )
        {
          if ( v2 == 221 )
          {
            v18 = (unsigned __int8 **)v3[6];
            v19 = v18[1];
            v20 = *v18;
            if ( !v19 )
            {
              if ( !((int (__fastcall *)(_DWORD *))v18[3])(v3) )
                return 0;
              v20 = *v18;
              v19 = v18[1];
            }
            v21 = v19 - 1;
            v22 = *v20;
            if ( v21 )
            {
              v23 = v20 + 1;
            }
            else
            {
              if ( !((int (__fastcall *)(_DWORD *))v18[3])(v3) )
                return 0;
              v23 = *v18;
              v21 = v18[1];
            }
            v24 = v21 - 1;
            if ( *v23 + (v22 << 8) != 4 )
            {
              *(_DWORD *)(*v3 + 20) = 11;
              (*(void (__fastcall **)(_DWORD *))*v3)(v3);
            }
            if ( v24 )
            {
              v25 = v23 + 1;
            }
            else
            {
              if ( !((int (__fastcall *)(_DWORD *))v18[3])(v3) )
                return 0;
              v25 = *v18;
              v24 = v18[1];
            }
            v26 = v24 - 1;
            v27 = *v25;
            if ( v26 )
            {
              v28 = v25 + 1;
            }
            else
            {
              if ( !((int (__fastcall *)(_DWORD *))v18[3])(v3) )
                return 0;
              v28 = *v18;
              v26 = v18[1];
            }
            v29 = *v28;
            *(_DWORD *)(*v3 + 20) = 82;
            v30 = v29 + (v27 << 8);
            *(_DWORD *)(*v3 + 24) = v30;
            (*(void (__fastcall **)(_DWORD *, int))(*v3 + 4))(v3, 1);
            v3[63] = v30;
            *v18 = v28 + 1;
            v18[1] = v26 - 1;
            goto LABEL_16;
          }
          goto LABEL_25;
        }
LABEL_75:
        if ( skip_variable(v3) )
          goto LABEL_16;
        return 0;
      }
      if ( v2 == 216 )
      {
        *(_DWORD *)(*v3 + 20) = 102;
        (*(void (__fastcall **)(_DWORD *, int))(*v3 + 4))(v3, 1);
        if ( *(_BYTE *)(v3[101] + 12) )
        {
          *(_DWORD *)(*v3 + 20) = 61;
          (*(void (__fastcall **)(_DWORD *))*v3)(v3);
        }
        v58 = 0;
        v59 = v3;
        do
        {
          ++v58;
          v59[202] = 0;
          v59[218] = 1;
          v59[234] = 5;
          ++v59;
        }
        while ( v58 != 16 );
        v60 = v3[101];
        *((_WORD *)v3 + 130) = 1;
        *((_WORD *)v3 + 131) = 1;
        *((_BYTE *)v3 + 265) = 0;
        v3[63] = 0;
        v3[10] = 0;
        *((_BYTE *)v3 + 266) = 0;
        *((_BYTE *)v3 + 256) = 0;
        *((_BYTE *)v3 + 257) = 1;
        *((_BYTE *)v3 + 258) = 1;
        *((_BYTE *)v3 + 259) = 0;
        *((_BYTE *)v3 + 264) = 0;
        *(_BYTE *)(v60 + 12) = 1;
        goto LABEL_16;
      }
      if ( v2 < 216 )
        goto LABEL_70;
      if ( v2 == 217 )
      {
        *(_DWORD *)(*v3 + 20) = 85;
        (*(void (__fastcall **)(_DWORD *, int))(*v3 + 4))(v3, 1);
        v3[95] = 0;
        return 2;
      }
      v95 = (int *)v3[6];
      v96 = (unsigned __int8 *)*v95;
      v97 = (unsigned __int8 *)v95[1];
      if ( !*(_BYTE *)(v3[101] + 13) )
      {
        *(_DWORD *)(*v3 + 20) = 62;
        (*(void (__fastcall **)(_DWORD *))*v3)(v3);
      }
      if ( !v97 )
      {
        if ( !((int (__fastcall *)(_DWORD *))v95[3])(v3) )
          return 0;
        v96 = (unsigned __int8 *)*v95;
        v97 = (unsigned __int8 *)v95[1];
      }
      v98 = v97 - 1;
      v99 = *v96;
      if ( v98 )
      {
        v100 = v96 + 1;
      }
      else
      {
        if ( !((int (__fastcall *)(_DWORD *))v95[3])(v3) )
          return 0;
        v100 = (unsigned __int8 *)*v95;
        v98 = (unsigned __int8 *)v95[1];
      }
      v101 = v98 - 1;
      v102 = *v100;
      if ( v98 == (_BYTE *)&dword_0 + 1 )
      {
        if ( !((int (__fastcall *)(_DWORD *))v95[3])(v3) )
          return 0;
        v103 = (unsigned __int8 *)*v95;
        v101 = (unsigned __int8 *)v95[1];
      }
      else
      {
        v103 = v100 + 1;
      }
      v106 = *v103;
      v105 = v103 + 1;
      v104 = v106;
      *(_DWORD *)(*v3 + 20) = 103;
      *(_DWORD *)(*v3 + 24) = v106;
      (*(void (__fastcall **)(_DWORD *, int))(*v3 + 4))(v3, 1);
      v107 = v102 + (v99 << 8) != 2 * (v106 + 3);
      if ( !v106 )
        v107 |= 1u;
      v108 = v101 - 1;
      if ( v107 || v104 > 4 )
      {
        *(_DWORD *)(*v3 + 20) = 11;
        (*(void (__fastcall **)(_DWORD *))*v3)(v3);
        v3[73] = v104;
        if ( !v104 )
        {
LABEL_191:
          if ( !v108 )
          {
            if ( !((int (__fastcall *)(_DWORD *))v95[3])(v3) )
              return 0;
            v105 = (unsigned __int8 *)*v95;
            v108 = (unsigned __int8 *)v95[1];
          }
          v119 = *v105;
          v120 = v108 - 1;
          if ( v120 )
            ++v105;
          v3[91] = v119;
          if ( !v120 )
          {
            if ( !((int (__fastcall *)(_DWORD *))v95[3])(v3) )
              return 0;
            v105 = (unsigned __int8 *)*v95;
            v120 = (unsigned __int8 *)v95[1];
          }
          v121 = v120 - 1;
          if ( v121 )
            v104 = (int)(v105 + 1);
          v3[92] = *v105;
          if ( !v121 )
          {
            if ( !((int (__fastcall *)(_DWORD *))v95[3])(v3) )
              return 0;
            v104 = *v95;
            v121 = (unsigned __int8 *)v95[1];
          }
          v122 = *(unsigned __int8 *)v104;
          v123 = (_DWORD *)*v3;
          v124 = v3[91];
          v3[93] = v122 >> 4;
          v3[94] = v122 & 0xF;
          v123[6] = v124;
          v123 += 6;
          v123[1] = v3[92];
          v123[2] = v3[93];
          v123[3] = v3[94];
          *(_DWORD *)(*v3 + 20) = 105;
          (*(void (__fastcall **)(_DWORD *, int))(*v3 + 4))(v3, 1);
          *(_DWORD *)(v3[101] + 16) = 0;
          ++v3[31];
          *v95 = v104 + 1;
          v95[1] = (int)(v121 - 1);
          v3[95] = 0;
          return 1;
        }
      }
      else
      {
        v3[73] = v104;
      }
      v104 = (int)&v3[v104];
      v109 = v3;
      while ( 1 )
      {
        if ( v108 )
        {
          v110 = (int)(v108 - 1);
          v111 = *v105;
          if ( v110 )
          {
            v112 = v105 + 1;
            goto LABEL_183;
          }
        }
        else
        {
          if ( !((int (__fastcall *)(_DWORD *))v95[3])(v3) )
            return 0;
          v110 = v95[1] - 1;
          v111 = *(unsigned __int8 *)*v95;
          if ( v95[1] != 1 )
          {
            v112 = (unsigned __int8 *)(*v95 + 1);
            goto LABEL_183;
          }
        }
        if ( !((int (__fastcall *)(_DWORD *))v95[3])(v3) )
          return 0;
        v112 = (unsigned __int8 *)*v95;
        v110 = v95[1];
LABEL_183:
        v113 = v3[9];
        v108 = (unsigned __int8 *)(v110 - 1);
        v115 = *v112;
        v105 = v112 + 1;
        v114 = v115;
        v116 = (_DWORD *)v3[49];
        if ( v113 > 0 )
        {
          if ( v111 == *v116 )
            goto LABEL_190;
          v117 = 0;
          while ( 1 )
          {
            ++v117;
            v116 += 21;
            if ( v117 == v113 )
              break;
            if ( v111 == *v116 )
              goto LABEL_190;
          }
        }
        *(_DWORD *)(*v3 + 20) = 5;
        *(_DWORD *)(*v3 + 24) = v111;
        v125 = v114;
        (*(void (__fastcall **)(_DWORD *))*v3)(v3);
        v114 = v125;
LABEL_190:
        v109[74] = v116;
        v116[6] = v114 & 0xF;
        v116[5] = v114 >> 4;
        v118 = (_DWORD *)*v3;
        ++v109;
        v118[6] = v111;
        v118 += 6;
        v118[1] = v116[5];
        v118[2] = v116[6];
        *(_DWORD *)(*v3 + 20) = 104;
        (*(void (__fastcall **)(_DWORD *, int))(*v3 + 4))(v3, 1);
        if ( v109 == (_DWORD *)v104 )
          goto LABEL_191;
      }
    }
    v61 = (unsigned __int8 **)v3[6];
    v62 = *v61;
    v63 = v61[1];
    if ( !v63 )
    {
      if ( !((int (__fastcall *)(_DWORD *))v61[3])(v3) )
        return 0;
      v62 = *v61;
      v63 = v61[1];
    }
    v64 = v63 - 1;
    v65 = *v62;
    if ( v64 )
    {
      v66 = v62 + 1;
    }
    else
    {
      if ( !((int (__fastcall *)(_DWORD *))v61[3])(v3) )
        return 0;
      v66 = *v61;
      v64 = v61[1];
    }
    v127 = (v65 << 8) - 2 + *v66;
    v67 = v64 - 1;
    v68 = v66 + 1;
    if ( v127 <= 0 )
      goto LABEL_152;
LABEL_128:
    if ( !v67 )
    {
      if ( !((int (__fastcall *)(_DWORD *))v61[3])(v3) )
        return 0;
      v68 = *v61;
      v67 = v61[1];
    }
    v70 = *v68;
    v69 = v68 + 1;
    *(_DWORD *)(*v3 + 20) = 81;
    v71 = v70 & 0xF;
    v72 = v70 >> 4;
    *(_DWORD *)(*v3 + 24) = v71;
    *(_DWORD *)(*v3 + 28) = v70 >> 4;
    (*(void (__fastcall **)(_DWORD *, int))(*v3 + 4))(v3, 1);
    v73 = v67 - 1;
    if ( v71 > 3 )
    {
      *(_DWORD *)(*v3 + 20) = 31;
      *(_DWORD *)(*v3 + 24) = v71;
      (*(void (__fastcall **)(_DWORD *))*v3)(v3);
    }
    v74 = v71 + 36;
    v75 = v3[v74];
    if ( !v75 )
    {
      v75 = jpeg_alloc_quant_table((int)v3);
      v3[v74] = v75;
    }
    v76 = v69;
    v77 = 0;
    v78 = v3;
    v79 = v75;
    v80 = v73;
    while ( 1 )
    {
      while ( !v72 )
      {
        if ( !v80 )
        {
          if ( !((int (__fastcall *)(_DWORD *))v61[3])(v78) )
            return 0;
          v76 = *v61;
          v80 = v61[1];
        }
        v86 = *v76++;
        --v80;
        v87 = *(__int32 *)((char *)&v1[1974]->d_tag + v77);
        v77 += 4;
        *(_WORD *)(v79 + 2 * v87) = v86;
        if ( v77 == 256 )
        {
LABEL_144:
          v67 = v80;
          v88 = (unsigned __int16 *)v79;
          v3 = v78;
          v68 = v76;
          v89 = (_DWORD *)*v3;
          if ( *(int *)(*v3 + 104) > 1 )
          {
            v130 = v67;
            v90 = v88;
            v91 = 0;
            while ( 1 )
            {
              v92 = v89 + 6;
              v91 += 8;
              v89[6] = *v90;
              v89[7] = v90[1];
              v89[8] = v90[2];
              v89[9] = v90[3];
              v89[10] = v90[4];
              v89[11] = v90[5];
              v89[12] = v90[6];
              v93 = v90[7];
              v90 += 8;
              v92[7] = v93;
              *(_DWORD *)(*v3 + 20) = 93;
              (*(void (__fastcall **)(_DWORD *, int))(*v3 + 4))(v3, 2);
              if ( v91 == 64 )
                break;
              v89 = (_DWORD *)*v3;
            }
            v67 = v130;
          }
          v94 = v127 - 65;
          v127 -= 65;
          if ( v72 )
            v127 = v94 - 64;
          if ( v127 <= 0 )
          {
LABEL_152:
            if ( v127 )
            {
              *(_DWORD *)(*v3 + 20) = 11;
              (*(void (__fastcall **)(_DWORD *))*v3)(v3);
            }
            v61[1] = v67;
            *v61 = v68;
            goto LABEL_16;
          }
          goto LABEL_128;
        }
      }
      if ( v80 )
      {
        v81 = (int)(v80 - 1);
        v82 = *v76;
        if ( v81 )
        {
          v83 = v76 + 1;
          goto LABEL_140;
        }
      }
      else
      {
        if ( !((int (__fastcall *)(_DWORD *))v61[3])(v78) )
          return 0;
        v81 = (int)(v61[1] - 1);
        v82 = **v61;
        if ( v61[1] != (_BYTE *)&dword_0 + 1 )
        {
          v83 = *v61 + 1;
          goto LABEL_140;
        }
      }
      if ( !((int (__fastcall *)(_DWORD *))v61[3])(v78) )
        return 0;
      v83 = *v61;
      v81 = (int)v61[1];
LABEL_140:
      v84 = *v83;
      v76 = v83 + 1;
      v80 = (unsigned __int8 *)(v81 - 1);
      v85 = *(__int32 *)((char *)&v1[1974]->d_tag + v77);
      v77 += 4;
      *(_WORD *)(v79 + 2 * v85) = v84 + (v82 << 8);
      if ( v77 == 256 )
        goto LABEL_144;
    }
  }
  while ( 1 )
  {
    if ( v2 >= 205 )
      goto LABEL_14;
    if ( v2 != 196 )
    {
      if ( v2 <= 196 )
      {
        if ( v2 > 193 )
        {
          if ( v2 == 194 )
          {
            if ( get_sof(v3, 1, 0) )
              goto LABEL_16;
            return 0;
          }
          goto LABEL_14;
        }
        if ( v2 >= 192 )
        {
          v31 = 0;
LABEL_54:
          if ( get_sof(v3, v31, v31) )
            goto LABEL_16;
          return 0;
        }
        if ( v2 == 1 )
        {
LABEL_70:
          *(_DWORD *)(*v3 + 20) = 92;
          *(_DWORD *)(*v3 + 24) = v3[95];
          (*(void (__fastcall **)(_DWORD *, int))(*v3 + 4))(v3, 1);
          goto LABEL_16;
        }
LABEL_25:
        v15 = *v3;
        v16 = v3;
        v17 = 68;
        goto LABEL_15;
      }
      if ( v2 == 201 )
      {
        if ( get_sof(v3, 0, 1) )
          goto LABEL_16;
        return 0;
      }
      if ( v2 < 201 || v2 == 203 )
      {
LABEL_14:
        v15 = *v3;
        v16 = v3;
        v17 = 60;
LABEL_15:
        *(_DWORD *)(v15 + 20) = v17;
        *(_DWORD *)(*v3 + 24) = v3[95];
        (*(void (__fastcall **)(_DWORD *))*v3)(v16);
        goto LABEL_16;
      }
      if ( v2 <= 203 )
      {
        v31 = 1;
        goto LABEL_54;
      }
      goto LABEL_75;
    }
    v34 = (unsigned __int8 **)v3[6];
    v35 = *v34;
    v36 = v34[1];
    if ( !v36 )
    {
      if ( !((int (__fastcall *)(_DWORD *))v34[3])(v3) )
        return 0;
      v35 = *v34;
      v36 = v34[1];
    }
    v37 = v36 - 1;
    v38 = *v35;
    if ( v37 )
    {
      v39 = v35 + 1;
    }
    else
    {
      if ( !((int (__fastcall *)(_DWORD *))v34[3])(v3) )
        return 0;
      v39 = *v34;
      v37 = v34[1];
    }
    v128 = (v38 << 8) - 2 + *v39;
    v40 = (int)(v37 - 1);
    v41 = v39 + 1;
    if ( v128 > 16 )
      break;
LABEL_113:
    if ( v128 )
    {
      *(_DWORD *)(*v3 + 20) = 11;
      (*(void (__fastcall **)(_DWORD *))*v3)(v3);
    }
    v34[1] = (unsigned __int8 *)v40;
    *v34 = v41;
LABEL_16:
    v3[95] = 0;
    if ( !*(_BYTE *)(v3[101] + 12) )
      goto LABEL_3;
LABEL_17:
    if ( !next_marker(v3) )
      return 0;
    v2 = v3[95];
    if ( v2 > 207 )
      goto LABEL_19;
  }
  v131 = v1;
  while ( 1 )
  {
    if ( !v40 )
    {
      if ( !((int (__fastcall *)(_DWORD *))v34[3])(v3) )
        return 0;
      v41 = *v34;
      v40 = (int)v34[1];
    }
    v42 = *v41++;
    v126 = v42;
    *(_DWORD *)(*v3 + 20) = 80;
    --v40;
    *(_DWORD *)(*v3 + 24) = v42;
    (*(void (__fastcall **)(_DWORD *, int))(*v3 + 4))(v3, 1);
    v133[0] = 0;
    v43 = 0;
    for ( i = 1; i != 17; ++i )
    {
      while ( v40 )
      {
        v45 = *v41++;
        --v40;
        v133[i++] = v45;
        v43 += v45;
        if ( i == 17 )
          goto LABEL_91;
      }
      if ( !((int (__fastcall *)(_DWORD *))v34[3])(v3) )
        return 0;
      v41 = *v34 + 1;
      v46 = **v34;
      v40 = (int)(v34[1] - 1);
      v133[i] = v46;
      v43 += v46;
    }
LABEL_91:
    v47 = (_DWORD *)(*v3 + 24);
    *v47 = v133[1];
    v129 = v128 - 17;
    v47[1] = v133[2];
    v47[2] = v133[3];
    v47[3] = v133[4];
    v47[4] = v133[5];
    v47[5] = v133[6];
    v47[6] = v133[7];
    v47[7] = v133[8];
    *(_DWORD *)(*v3 + 20) = 86;
    (*(void (__fastcall **)(_DWORD *, int))(*v3 + 4))(v3, 2);
    v48 = (_DWORD *)(*v3 + 24);
    *v48 = v133[9];
    v48[1] = v133[10];
    v48[2] = v133[11];
    v48[3] = v133[12];
    v48[4] = v133[13];
    v48[5] = v133[14];
    v48[6] = v133[15];
    v48[7] = v133[16];
    *(_DWORD *)(*v3 + 20) = 86;
    (*(void (__fastcall **)(_DWORD *, int))(*v3 + 4))(v3, 2);
    v49 = v129;
    v50 = v43 <= 256;
    if ( v43 <= 256 )
      v50 = v43 <= v129;
    if ( !v50 )
    {
      *(_DWORD *)(*v3 + 20) = 8;
      (*(void (__fastcall **)(_DWORD *))*v3)(v3);
    }
    if ( v43 )
      break;
LABEL_101:
    v53 = v126;
    v54 = (v126 & 0x10) == 0;
    if ( (v126 & 0x10) != 0 )
    {
      v53 = v126 - 16;
      v126 -= 16;
    }
    else
    {
      v49 = v126;
    }
    v128 = v129 - v43;
    if ( v54 )
      v55 = v49 + 40;
    else
      v55 = v53 + 44;
    v56 = &v3[v55];
    if ( v126 > 3 )
    {
      *(_DWORD *)(*v3 + 20) = 30;
      *(_DWORD *)(*v3 + 24) = v126;
      (*(void (__fastcall **)(_DWORD *))*v3)(v3);
    }
    v57 = (void *)*v56;
    if ( !*v56 )
    {
      v57 = (void *)jpeg_alloc_huff_table((int)v3);
      *v56 = v57;
    }
    memcpy(v57, v133, 0x11u);
    memcpy((void *)(*v56 + 17), v132, 0x100u);
    if ( v128 <= 16 )
    {
      v1 = v131;
      goto LABEL_113;
    }
  }
  v51 = 0;
  while ( 1 )
  {
    while ( v40 )
    {
      v52 = *v41++;
      --v40;
      v132[v51++] = v52;
      if ( v51 == v43 )
        goto LABEL_101;
    }
    if ( !((int (__fastcall *)(_DWORD *))v34[3])(v3) )
      return 0;
    v41 = *v34 + 1;
    v40 = (int)(v34[1] - 1);
    v132[v51++] = **v34;
    if ( v51 == v43 )
      goto LABEL_101;
  }
}


// ===== 67d7cc use_merged_upsample =====
bool __fastcall use_merged_upsample(int a1)
{
  _DWORD *v2; // r3
  _DWORD *v3; // r2
  _DWORD *v4; // r1
  int v5; // r3

  if ( !*(_BYTE *)(a1 + 72)
    && !*(_BYTE *)(a1 + 266)
    && *(_DWORD *)(a1 + 40) == 3
    && *(_DWORD *)(a1 + 36) == 3
    && *(_DWORD *)(a1 + 44) == 2
    && *(_DWORD *)(a1 + 100) == 3
    && (v2 = *(_DWORD **)(a1 + 196), v2[2] == 2)
    && (v3 = v2 + 21, v2[23] == 1)
    && (v4 = v2 + 42, v2[44] == 1)
    && (int)v2[3] <= 2
    && v2[24] == 1
    && v2[45] == 1
    && (v5 = v2[9], v5 == *(_DWORD *)(a1 + 280))
    && v5 == v3[9] )
  {
    return v4[9] == v5;
  }
  else
  {
    return 0;
  }
}


// ===== 67d8a0 prepare_for_output_pass =====
int __fastcall prepare_for_output_pass(int a1)
{
  int v1; // r5
  int result; // r0
  int v4; // r1
  int v5; // r3
  int v6; // r2
  int v7; // r2

  v1 = *(_DWORD *)(a1 + 384);
  if ( *(_BYTE *)(v1 + 8) )
  {
    *(_BYTE *)(v1 + 8) = 0;
    (**(void (***)(void))(a1 + 424))();
    (**(void (__fastcall ***)(int, int))(a1 + 396))(a1, 2);
    result = (**(int (__fastcall ***)(int, int))(a1 + 388))(a1, 2);
  }
  else
  {
    if ( *(_BYTE *)(a1 + 74) && !*(_DWORD *)(a1 + 116) )
    {
      if ( *(_BYTE *)(a1 + 80) && *(_BYTE *)(a1 + 90) )
      {
        *(_DWORD *)(a1 + 424) = *(_DWORD *)(v1 + 24);
        *(_BYTE *)(v1 + 8) = 1;
      }
      else if ( *(_BYTE *)(a1 + 88) )
      {
        *(_DWORD *)(a1 + 424) = *(_DWORD *)(v1 + 20);
      }
      else
      {
        *(_DWORD *)(*(_DWORD *)a1 + 20) = 46;
        (**(void (__fastcall ***)(int))a1)(a1);
      }
    }
    (**(void (__fastcall ***)(int))(a1 + 412))(a1);
    result = (*(int (__fastcall **)(int))(*(_DWORD *)(a1 + 392) + 8))(a1);
    if ( !*(_BYTE *)(a1 + 65) )
    {
      if ( !*(_BYTE *)(v1 + 16) )
        (**(void (__fastcall ***)(int))(a1 + 420))(a1);
      (**(void (__fastcall ***)(int))(a1 + 416))(a1);
      if ( *(_BYTE *)(a1 + 74) )
        (**(void (__fastcall ***)(int, _DWORD))(a1 + 424))(a1, *(unsigned __int8 *)(v1 + 8));
      v4 = *(unsigned __int8 *)(v1 + 8);
      if ( *(_BYTE *)(v1 + 8) )
        v4 = 3;
      (**(void (__fastcall ***)(int, int))(a1 + 396))(a1, v4);
      result = (**(int (__fastcall ***)(int, _DWORD))(a1 + 388))(a1, 0);
    }
  }
  v5 = *(_DWORD *)(a1 + 8);
  if ( v5 )
  {
    *(_DWORD *)(v5 + 12) = *(_DWORD *)(v1 + 12);
    v6 = *(_BYTE *)(v1 + 8) ? 2 : 1;
    *(_DWORD *)(*(_DWORD *)(a1 + 8) + 16) = v6 + *(_DWORD *)(v1 + 12);
    if ( *(_BYTE *)(a1 + 64) )
    {
      if ( !*(_BYTE *)(*(_DWORD *)(a1 + 400) + 17) )
      {
        if ( *(_BYTE *)(a1 + 90) )
          v7 = 2;
        else
          v7 = 1;
        *(_DWORD *)(*(_DWORD *)(a1 + 8) + 16) += v7;
      }
    }
  }
  return result;
}


// ===== 67da98 finish_output_pass =====
int __fastcall finish_output_pass(int result)
{
  int v1; // r4

  v1 = *(_DWORD *)(result + 384);
  if ( *(_BYTE *)(result + 74) )
    result = (*(int (**)(void))(*(_DWORD *)(result + 424) + 8))();
  ++*(_DWORD *)(v1 + 12);
  return result;
}


// ===== 67dac8 jpeg_new_colormap =====
int __fastcall jpeg_new_colormap(int a1)
{
  int v2; // r5
  int v3; // r3
  int result; // r0

  v2 = *(_DWORD *)(a1 + 384);
  if ( *(_DWORD *)(a1 + 20) != 207 )
  {
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 20;
    *(_DWORD *)(*(_DWORD *)a1 + 24) = *(_DWORD *)(a1 + 20);
    (**(void (__fastcall ***)(int))a1)(a1);
  }
  if ( *(_BYTE *)(a1 + 74) && *(_BYTE *)(a1 + 89) && *(_DWORD *)(a1 + 116) )
  {
    v3 = *(_DWORD *)(v2 + 24);
    *(_DWORD *)(a1 + 424) = v3;
    result = (*(int (__fastcall **)(int))(v3 + 12))(a1);
    *(_BYTE *)(v2 + 8) = 0;
  }
  else
  {
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 46;
    return (**(int (__fastcall ***)(int))a1)(a1);
  }
  return result;
}


// ===== 67db68 jpeg_calc_output_dimensions =====
bool __fastcall jpeg_calc_output_dimensions(int a1)
{
  int v2; // r2
  unsigned int v3; // r3
  int v4; // r2
  int v5; // r3
  _DWORD *v6; // r6
  int v7; // r7
  int v8; // r3
  int v9; // r5
  int v10; // r0
  int v11; // lr
  int v12; // r12
  int v13; // r5
  int v14; // lr
  _DWORD *v15; // r5
  int i; // r6
  int v17; // r0
  int v18; // r3
  int v19; // r2
  int v20; // r3
  _BOOL4 result; // r0
  int v22; // r3

  if ( *(_DWORD *)(a1 + 20) != 202 )
  {
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 20;
    *(_DWORD *)(*(_DWORD *)a1 + 24) = *(_DWORD *)(a1 + 20);
    (**(void (__fastcall ***)(int))a1)(a1);
  }
  v2 = *(_DWORD *)(a1 + 48);
  v3 = *(_DWORD *)(a1 + 52);
  if ( v3 >= 8 * v2 )
  {
    *(_DWORD *)(a1 + 92) = jdiv_round_up(*(_DWORD *)(a1 + 28), 8);
    *(_DWORD *)(a1 + 96) = jdiv_round_up(*(_DWORD *)(a1 + 32), 8);
    *(_DWORD *)(a1 + 280) = 1;
  }
  else if ( v3 >= 4 * v2 )
  {
    *(_DWORD *)(a1 + 92) = jdiv_round_up(*(_DWORD *)(a1 + 28), 4);
    *(_DWORD *)(a1 + 96) = jdiv_round_up(*(_DWORD *)(a1 + 32), 4);
    *(_DWORD *)(a1 + 280) = 2;
  }
  else if ( v3 >= 2 * v2 )
  {
    *(_DWORD *)(a1 + 92) = jdiv_round_up(*(_DWORD *)(a1 + 28), 2);
    *(_DWORD *)(a1 + 96) = jdiv_round_up(*(_DWORD *)(a1 + 32), 2);
    *(_DWORD *)(a1 + 280) = 4;
  }
  else
  {
    v4 = *(_DWORD *)(a1 + 28);
    *(_DWORD *)(a1 + 96) = *(_DWORD *)(a1 + 32);
    *(_DWORD *)(a1 + 92) = v4;
    *(_DWORD *)(a1 + 280) = 8;
  }
  v5 = *(_DWORD *)(a1 + 36);
  v6 = *(_DWORD **)(a1 + 196);
  if ( v5 > 0 )
  {
    v7 = 0;
    while ( 1 )
    {
      v8 = *(_DWORD *)(a1 + 280);
      if ( v8 <= 7 )
      {
        v9 = v6[2];
        v10 = *(_DWORD *)(a1 + 272) * v8;
        if ( v10 >= 2 * v9 * v8 )
        {
          v11 = v6[3];
          v12 = *(_DWORD *)(a1 + 276) * v8;
          if ( v12 >= 2 * v11 * v8 )
          {
            v13 = 2 * v9;
            v14 = 2 * v11;
            do
              v8 *= 2;
            while ( v8 <= 7 && v13 * v8 <= v10 && v14 * v8 <= v12 );
          }
        }
      }
      v6[9] = v8;
      v5 = *(_DWORD *)(a1 + 36);
      if ( v5 <= ++v7 )
        break;
      v6 += 21;
    }
    v15 = *(_DWORD **)(a1 + 196);
    if ( v5 > 0 )
    {
      for ( i = 0; i < v5; ++i )
      {
        v17 = jdiv_round_up(*(_DWORD *)(a1 + 28) * v15[2] * v15[9], 8 * *(_DWORD *)(a1 + 272));
        v18 = v15[9];
        v19 = v15[3];
        v15[10] = v17;
        v15[11] = jdiv_round_up(*(_DWORD *)(a1 + 32) * v19 * v18, 8 * *(_DWORD *)(a1 + 276));
        v5 = *(_DWORD *)(a1 + 36);
        v15 += 21;
      }
    }
  }
  switch ( *(_DWORD *)(a1 + 44) )
  {
    case 1:
      *(_DWORD *)(a1 + 100) = 1;
      break;
    case 2:
    case 3:
      *(_DWORD *)(a1 + 100) = 3;
      break;
    case 4:
    case 5:
      *(_DWORD *)(a1 + 100) = 4;
      break;
    default:
      *(_DWORD *)(a1 + 100) = v5;
      break;
  }
  if ( *(_BYTE *)(a1 + 74) )
    v20 = 1;
  else
    v20 = *(_DWORD *)(a1 + 100);
  *(_DWORD *)(a1 + 104) = v20;
  result = use_merged_upsample(a1);
  if ( result )
    v22 = *(_DWORD *)(a1 + 276);
  else
    v22 = 1;
  *(_DWORD *)(a1 + 108) = v22;
  return result;
}


// ===== 67dde0 jinit_master_decompress =====
int __fastcall jinit_master_decompress(int a1)
{
  int v2; // r0
  int v3; // r7
  int v4; // r5
  char *v5; // r0
  char *v6; // r8
  char *v7; // r6
  char *v8; // r3
  char *v9; // r2
  char *v10; // r6
  bool v11; // r0
  int v12; // r1
  int result; // r0
  int v14; // r3
  int v15; // r2
  int v16; // r3
  bool v17; // zf

  v2 = (**(int (***)(void))(a1 + 4))();
  v3 = 0;
  *(_DWORD *)(a1 + 384) = v2;
  *(_DWORD *)v2 = prepare_for_output_pass;
  *(_DWORD *)(v2 + 4) = finish_output_pass;
  *(_BYTE *)(v2 + 8) = 0;
  v4 = *(_DWORD *)(a1 + 384);
  jpeg_calc_output_dimensions(a1);
  v5 = (char *)(**(int (__fastcall ***)(int, int, int))(a1 + 4))(a1, 1, 1408);
  v6 = v5 + 256;
  v7 = v5;
  *(_DWORD *)(a1 + 288) = v5 + 256;
  LC_API_MEMSET_0(v5, 0, 0x100u);
  v8 = v7;
  v9 = v7;
  do
  {
    v9[256] = v3++;
    ++v9;
  }
  while ( v3 != 256 );
  v10 = v7 + 384;
  do
  {
    v8[512] = -1;
    ++v8;
  }
  while ( v8 != v10 );
  LC_API_MEMSET_0(v6 + 640, 0, 0x180u);
  memcpy(v6 + 1024, *(const void **)(a1 + 288), 0x80u);
  *(_DWORD *)(v4 + 12) = 0;
  v11 = use_merged_upsample(a1);
  *(_DWORD *)(v4 + 24) = 0;
  *(_BYTE *)(v4 + 16) = v11;
  *(_DWORD *)(v4 + 20) = 0;
  if ( !*(_BYTE *)(a1 + 74) )
  {
    *(_BYTE *)(a1 + 90) = 0;
    *(_BYTE *)(a1 + 88) = 0;
    *(_BYTE *)(a1 + 89) = 0;
    goto LABEL_13;
  }
  if ( !*(_BYTE *)(a1 + 64) )
  {
    *(_BYTE *)(a1 + 90) = 0;
    *(_BYTE *)(a1 + 88) = 0;
    *(_BYTE *)(a1 + 89) = 0;
  }
  if ( *(_BYTE *)(a1 + 65) )
  {
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 47;
    (**(void (__fastcall ***)(int))a1)(a1);
    if ( *(_DWORD *)(a1 + 100) != 3 )
      goto LABEL_11;
  }
  else if ( *(_DWORD *)(a1 + 100) != 3 )
  {
LABEL_11:
    *(_BYTE *)(a1 + 88) = 1;
    *(_DWORD *)(a1 + 116) = 0;
    *(_BYTE *)(a1 + 89) = 0;
    *(_BYTE *)(a1 + 90) = 0;
    goto LABEL_12;
  }
  if ( *(_DWORD *)(a1 + 116) )
  {
    *(_BYTE *)(a1 + 89) = 1;
    v16 = *(unsigned __int8 *)(a1 + 88);
  }
  else
  {
    v17 = *(_BYTE *)(a1 + 80) == 0;
    if ( *(_BYTE *)(a1 + 80) )
      *(_BYTE *)(a1 + 90) = 1;
    else
      *(_BYTE *)(a1 + 88) = 1;
    if ( v17 )
    {
LABEL_12:
      jinit_1pass_quantizer(a1);
      *(_DWORD *)(v4 + 20) = *(_DWORD *)(a1 + 424);
      if ( (*(_DWORD *)(a1 + 88) & 0xFFFF00) == 0 )
        goto LABEL_13;
      goto LABEL_39;
    }
    v16 = *(unsigned __int8 *)(a1 + 88);
  }
  if ( v16 )
    goto LABEL_12;
  if ( (*(_DWORD *)(a1 + 88) & 0xFFFF00) != 0 )
  {
LABEL_39:
    jinit_2pass_quantizer(a1);
    *(_DWORD *)(v4 + 24) = *(_DWORD *)(a1 + 424);
  }
LABEL_13:
  if ( !*(_BYTE *)(a1 + 65) )
  {
    if ( *(_BYTE *)(v4 + 16) )
    {
      jinit_merged_upsampler(a1);
    }
    else
    {
      jinit_color_deconverter(a1);
      jinit_upsampler(a1);
    }
    jinit_d_post_controller(a1, *(unsigned __int8 *)(a1 + 90));
  }
  jinit_inverse_dct(a1);
  if ( *(_BYTE *)(a1 + 201) )
  {
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 1;
    (**(void (__fastcall ***)(int))a1)(a1);
  }
  else if ( *(_BYTE *)(a1 + 200) )
  {
    jinit_phuff_decoder(a1);
  }
  else
  {
    jinit_huff_decoder(a1);
  }
  if ( *(_BYTE *)(*(_DWORD *)(a1 + 400) + 16) )
  {
    v12 = 1;
  }
  else
  {
    v12 = *(unsigned __int8 *)(a1 + 64);
    if ( *(_BYTE *)(a1 + 64) )
      v12 = 1;
  }
  jinit_d_coef_controller(a1, v12);
  if ( !*(_BYTE *)(a1 + 65) )
    jinit_d_main_controller(a1);
  (*(void (__fastcall **)(int))(*(_DWORD *)(a1 + 4) + 24))(a1);
  result = (*(int (__fastcall **)(int))(*(_DWORD *)(a1 + 400) + 8))(a1);
  v14 = *(_DWORD *)(a1 + 8);
  if ( v14 && !*(_BYTE *)(a1 + 64) && *(_BYTE *)(*(_DWORD *)(a1 + 400) + 16) )
  {
    result = *(_DWORD *)(a1 + 36);
    v17 = *(_BYTE *)(a1 + 200) == 0;
    *(_DWORD *)(v14 + 4) = 0;
    if ( !v17 )
      result = 3 * result + 2;
    *(_DWORD *)(*(_DWORD *)(a1 + 8) + 8) = *(_DWORD *)(a1 + 284) * result;
    *(_DWORD *)(*(_DWORD *)(a1 + 8) + 12) = 0;
    if ( *(_BYTE *)(a1 + 90) )
      v15 = 3;
    else
      v15 = 2;
    *(_DWORD *)(*(_DWORD *)(a1 + 8) + 16) = v15;
    ++*(_DWORD *)(v4 + 12);
  }
  return result;
}


// ===== 67e168 start_pass_merged_upsample =====
int __fastcall start_pass_merged_upsample(int result)
{
  int v1; // r3

  v1 = *(_DWORD *)(result + 416);
  *(_BYTE *)(v1 + 36) = 0;
  *(_DWORD *)(v1 + 44) = *(_DWORD *)(result + 96);
  return result;
}


// ===== 67e180 merged_1v_upsample =====
int __fastcall merged_1v_upsample(int a1, int a2, _DWORD *a3, int a4, int a5, _DWORD *a6)
{
  int result; // r0

  result = (*(int (**)(void))(*(_DWORD *)(a1 + 416) + 12))();
  ++*a6;
  ++*a3;
  return result;
}


// ===== 67e1c4 h2v1_merged_upsample =====
unsigned int __fastcall h2v1_merged_upsample(_DWORD *a1, _DWORD *a2, int a3, _BYTE **a4)
{
  unsigned int result; // r0
  _DWORD *v5; // r12
  int v6; // r4
  unsigned __int8 *v7; // r5
  int v8; // r1
  int v9; // r2
  _BYTE *v10; // r3
  unsigned int v11; // r6
  int v12; // r0
  int v13; // r8
  int v14; // r7
  int v15; // r10
  int v16; // r4
  int v17; // r8
  int v18; // r7
  int v19; // r4
  int v20; // r4
  int v21; // r12
  int v22; // r0
  int v23; // r5
  int v24; // r3
  int v25; // r4
  int v26; // r12
  int v27; // r1
  int v28; // r2
  unsigned __int8 *v29; // [sp+4h] [bp-24h]
  unsigned __int8 *v30; // [sp+8h] [bp-20h]
  int v31; // [sp+Ch] [bp-1Ch]
  int v32; // [sp+10h] [bp-18h]
  int v33; // [sp+14h] [bp-14h]
  unsigned int v34; // [sp+18h] [bp-10h]
  _BYTE *v35; // [sp+1Ch] [bp-Ch]
  unsigned __int8 *v37; // [sp+24h] [bp-4h]

  result = a1[23];
  v5 = (_DWORD *)a1[104];
  v6 = a2[1];
  v34 = result >> 1;
  v29 = *(unsigned __int8 **)(a2[2] + 4 * a3);
  v7 = *(unsigned __int8 **)(*a2 + 4 * a3);
  v8 = v5[7];
  v37 = v7;
  v30 = *(unsigned __int8 **)(v6 + 4 * a3);
  v35 = *a4;
  v9 = a1[72];
  v33 = v5[4];
  v32 = v5[5];
  v31 = v5[6];
  if ( result >> 1 )
  {
    v10 = *a4;
    v11 = result >> 1;
    v12 = 0;
    do
    {
      v13 = v29[v12];
      v14 = v30[v12];
      v15 = *(_DWORD *)(v33 + 4 * v13);
      v16 = *v7;
      v17 = *(_DWORD *)(v31 + 4 * v13) + *(_DWORD *)(v8 + 4 * v14);
      --v11;
      ++v12;
      v18 = *(_DWORD *)(v32 + 4 * v14);
      *v10 = *(_BYTE *)(v9 + v15 + v16);
      v10[1] = *(_BYTE *)(v9 + (v17 >> 16) + v16);
      v10[2] = *(_BYTE *)(v9 + v18 + v16);
      v19 = v7[1];
      v7 += 2;
      v20 = v9 + v19;
      v10[3] = *(_BYTE *)(v20 + v15);
      v10[4] = *(_BYTE *)(v20 + (v17 >> 16));
      v10[5] = *(_BYTE *)(v20 + v18);
      v10 += 6;
    }
    while ( v11 );
    v35 += 6 * v34;
    result = a1[23];
    v30 += v34;
    v29 += v34;
    v37 += 2 * v34;
  }
  if ( (result & 1) != 0 )
  {
    v21 = *v29;
    v22 = *v30;
    v23 = *(_DWORD *)(v33 + 4 * v21);
    v24 = *v37;
    v25 = *(_DWORD *)(v31 + 4 * v21);
    v26 = *(_DWORD *)(v8 + 4 * v22);
    LOBYTE(v23) = *(_BYTE *)(v9 + v23 + v24);
    v27 = *(_DWORD *)(v32 + 4 * v22);
    v28 = v9 + v24;
    *v35 = v23;
    v35[1] = *(_BYTE *)(v28 + ((v25 + v26) >> 16));
    v35[2] = *(_BYTE *)(v28 + v27);
    return (unsigned int)v35;
  }
  return result;
}


// ===== 67e380 h2v2_merged_upsample =====
unsigned int __fastcall h2v2_merged_upsample(_DWORD *a1, int *a2, int a3, int a4)
{
  unsigned int result; // r0
  _DWORD *v5; // r12
  int v6; // r4
  int v7; // r1
  unsigned __int8 *v8; // r2
  _BYTE *v9; // r3
  unsigned __int8 *v10; // r10
  unsigned __int8 *v11; // r9
  _BYTE *v12; // r2
  int v13; // r0
  int v14; // r4
  int v15; // r12
  int v16; // r5
  int v17; // r8
  int v18; // r4
  int v19; // r12
  int v20; // r8
  int v21; // r7
  int v22; // r7
  int v23; // r7
  int v24; // r2
  int v25; // r12
  int v26; // r3
  int v27; // r5
  int v28; // r0
  int v29; // r2
  int v30; // r12
  int v31; // r1
  unsigned int v32; // [sp+8h] [bp-30h]
  unsigned __int8 *v33; // [sp+Ch] [bp-2Ch]
  unsigned __int8 *v34; // [sp+10h] [bp-28h]
  int v35; // [sp+14h] [bp-24h]
  int v36; // [sp+18h] [bp-20h]
  int v37; // [sp+1Ch] [bp-1Ch]
  int v38; // [sp+20h] [bp-18h]
  _BYTE *v39; // [sp+24h] [bp-14h]
  _BYTE *v40; // [sp+28h] [bp-10h]
  unsigned __int8 *v42; // [sp+30h] [bp-8h]
  unsigned __int8 *v43; // [sp+34h] [bp-4h]

  result = a1[23];
  v5 = (_DWORD *)a1[104];
  v6 = *a2;
  v32 = result >> 1;
  v33 = *(unsigned __int8 **)(a2[2] + 4 * a3);
  v35 = v5[7];
  v42 = *(unsigned __int8 **)(*a2 + 8 * a3 + 4);
  v34 = *(unsigned __int8 **)(a2[1] + 4 * a3);
  v39 = *(_BYTE **)(a4 + 4);
  v7 = a1[72];
  v38 = v5[4];
  v37 = v5[5];
  v36 = v5[6];
  v8 = *(unsigned __int8 **)(v6 + 8 * a3);
  v43 = v8;
  v9 = *(_BYTE **)a4;
  v40 = v9;
  if ( result >> 1 )
  {
    v10 = v8;
    v11 = v42;
    v12 = v39;
    v13 = 0;
    do
    {
      v14 = v33[v13];
      v15 = v34[v13];
      v16 = *(_DWORD *)(v38 + 4 * v14);
      v17 = *v10;
      v18 = *(_DWORD *)(v36 + 4 * v14) + *(_DWORD *)(v35 + 4 * v15);
      ++v13;
      v19 = *(_DWORD *)(v37 + 4 * v15);
      *v9 = *(_BYTE *)(v7 + v16 + v17);
      v9[1] = *(_BYTE *)(v7 + (v18 >> 16) + v17);
      v9[2] = *(_BYTE *)(v7 + v19 + v17);
      v20 = v10[1];
      v10 += 2;
      v9[3] = *(_BYTE *)(v7 + v20 + v16);
      v9[4] = *(_BYTE *)(v7 + v20 + (v18 >> 16));
      v9[5] = *(_BYTE *)(v7 + v20 + v19);
      v9 += 6;
      v21 = v7 + *v11;
      *v12 = *(_BYTE *)(v21 + v16);
      v12[1] = *(_BYTE *)(v21 + (v18 >> 16));
      v12[2] = *(_BYTE *)(v21 + v19);
      v22 = v11[1];
      v11 += 2;
      v23 = v7 + v22;
      v12[3] = *(_BYTE *)(v23 + v16);
      v12[4] = *(_BYTE *)(v23 + (v18 >> 16));
      v12[5] = *(_BYTE *)(v23 + v19);
      v12 += 6;
    }
    while ( v32 != v13 );
    result = a1[23];
    v42 += 2 * v32;
    v39 += 6 * v32;
    v34 += v32;
    v33 += v32;
    v43 += 2 * v32;
    v40 += 6 * v32;
  }
  if ( (result & 1) != 0 )
  {
    v24 = *v33;
    v25 = *v34;
    v26 = *(_DWORD *)(v38 + 4 * v24);
    v27 = *(_DWORD *)(v36 + 4 * v24);
    v28 = v7 + *v43;
    v29 = *(_DWORD *)(v37 + 4 * v25);
    v30 = v27 + *(_DWORD *)(v35 + 4 * v25);
    *v40 = *(_BYTE *)(v28 + v26);
    v40[1] = *(_BYTE *)(v28 + (v30 >> 16));
    v40[2] = *(_BYTE *)(v28 + v29);
    result = *v42;
    v31 = v7 + result;
    *v39 = *(_BYTE *)(v31 + v26);
    v39[1] = *(_BYTE *)(v31 + (v30 >> 16));
    v39[2] = *(_BYTE *)(v31 + v29);
  }
  return result;
}


// ===== 67e604 jinit_merged_upsampler =====
int __fastcall jinit_merged_upsampler(int a1)
{
  int v2; // r0
  _DWORD *v3; // r4
  int v4; // r0
  int v5; // r2
  int v6; // r3
  int v7; // r12
  int v8; // r1
  int result; // r0

  v2 = (**(int (***)(void))(a1 + 4))();
  *(_DWORD *)(a1 + 416) = v2;
  *(_DWORD *)v2 = start_pass_merged_upsample;
  *(_BYTE *)(v2 + 8) = 0;
  *(_DWORD *)(v2 + 40) = *(_DWORD *)(a1 + 92) * *(_DWORD *)(a1 + 100);
  if ( *(_DWORD *)(a1 + 276) == 2 )
  {
    *(_DWORD *)(v2 + 4) = merged_2v_upsample;
    *(_DWORD *)(v2 + 12) = h2v2_merged_upsample;
    *(_DWORD *)(v2 + 32) = (*(int (__fastcall **)(int, int))(*(_DWORD *)(a1 + 4) + 4))(a1, 1);
  }
  else
  {
    *(_DWORD *)(v2 + 32) = 0;
    *(_DWORD *)(v2 + 4) = merged_1v_upsample;
    *(_DWORD *)(v2 + 12) = h2v1_merged_upsample;
  }
  v3 = *(_DWORD **)(a1 + 416);
  v3[4] = (**(int (__fastcall ***)(int, int, int))(a1 + 4))(a1, 1, 1024);
  v3[5] = (**(int (__fastcall ***)(int, int, int))(a1 + 4))(a1, 1, 1024);
  v3[6] = (**(int (__fastcall ***)(int, int, int))(a1 + 4))(a1, 1, 1024);
  v4 = (**(int (__fastcall ***)(int, int, int))(a1 + 4))(a1, 1, 1024);
  v5 = -14831872;
  v6 = -11728000;
  v3[7] = v4;
  v7 = 2919680;
  v8 = 5990656;
  result = 0;
  do
  {
    *(_DWORD *)(v3[4] + result) = v6 >> 16;
    *(_DWORD *)(v3[5] + result) = v5 >> 16;
    *(_DWORD *)(v3[6] + result) = v8;
    *(_DWORD *)(v3[7] + result) = v7;
    result += 4;
    v6 += 91881;
    v5 += 116130;
    v8 -= 46802;
    v7 -= 22554;
  }
  while ( result != 1024 );
  return result;
}


// ===== 67e7b4 merged_2v_upsample =====
int __fastcall merged_2v_upsample(int a1, int a2, _DWORD *a3, int a4, int a5, int *a6, int a7)
{
  int v7; // r4
  unsigned int v9; // r5
  int v10; // r2
  int result; // r0
  int v12; // r2

  v7 = *(_DWORD *)(a1 + 416);
  if ( !*(_BYTE *)(v7 + 36) )
  {
    v9 = *(_DWORD *)(v7 + 44);
    v10 = *a6;
    if ( v9 >= 2 )
      v9 = 2;
    if ( v9 > a7 - v10 )
    {
      v9 = a7 - v10;
    }
    else if ( v9 == 2 )
    {
LABEL_6:
      result = (*(int (**)(void))(v7 + 12))();
      goto LABEL_7;
    }
    *(_BYTE *)(v7 + 36) = 1;
    goto LABEL_6;
  }
  v9 = 1;
  result = jcopy_sample_rows(v7 + 32, 0, a5 + 4 * *a6, 0, 1, *(_DWORD *)(v7 + 40));
  *(_BYTE *)(v7 + 36) = 0;
LABEL_7:
  *a6 += v9;
  v12 = *(unsigned __int8 *)(v7 + 36);
  *(_DWORD *)(v7 + 44) -= v9;
  if ( !v12 )
    ++*a3;
  return result;
}


// ===== 67e8b0 process_restart =====
int __fastcall process_restart(_DWORD *a1)
{
  int v1; // r5
  int v2; // r6
  int result; // r0
  int v5; // r3

  v1 = a1[102];
  v2 = 0;
  *(_DWORD *)(a1[101] + 20) += *(_DWORD *)(v1 + 16) / 8;
  *(_DWORD *)(v1 + 16) = 0;
  result = (*(int (**)(void))(a1[101] + 8))();
  if ( result )
  {
    if ( (int)a1[73] > 0 )
    {
      v5 = v1;
      do
      {
        *(_DWORD *)(v5 + 24) = 0;
        ++v2;
        v5 += 4;
      }
      while ( a1[73] > v2 );
    }
    *(_DWORD *)(v1 + 20) = 0;
    *(_DWORD *)(v1 + 40) = a1[63];
    if ( !a1[95] )
      *(_BYTE *)(v1 + 8) = 0;
    return 1;
  }
  return result;
}


// ===== 67e954 jinit_phuff_decoder =====
int __fastcall jinit_phuff_decoder(int a1)
{
  _DWORD *v2; // r0
  int v3; // r5
  int result; // r0
  int v5; // r3
  int v6; // r2
  int i; // r3

  v2 = (_DWORD *)(**(int (***)(void))(a1 + 4))();
  v3 = 0;
  *(_DWORD *)(a1 + 408) = v2;
  *v2 = start_pass_phuff_decoder;
  v2[14] = 0;
  v2[11] = 0;
  v2[12] = 0;
  v2[13] = 0;
  result = (**(int (__fastcall ***)(int, int, _DWORD))(a1 + 4))(a1, 1, *(_DWORD *)(a1 + 36) << 8);
  v5 = *(_DWORD *)(a1 + 36);
  *(_DWORD *)(a1 + 140) = result;
  if ( v5 > 0 )
  {
    v6 = result;
    do
    {
      for ( i = 0; i != 256; i += 4 )
        *(_DWORD *)(v6 + i) = -1;
      ++v3;
      v6 += 256;
    }
    while ( *(_DWORD *)(a1 + 36) > v3 );
  }
  return result;
}


// ===== 67e9f8 start_pass_phuff_decoder =====
_DWORD *__fastcall start_pass_phuff_decoder(_DWORD *result)
{
  int v1; // r2
  _BOOL4 v2; // r11
  _DWORD *v3; // r4
  _BOOL4 v4; // r3
  int v5; // r1
  int v6; // r2
  _DWORD *v7; // r9
  int v8; // r10
  int v9; // r3
  int v10; // r7
  int v11; // r6
  int v12; // r5
  int *v13; // r6
  int v14; // r3
  int v15; // r5
  _DWORD *v16; // r6
  int v17; // r8
  int v18; // r3
  int v19; // r2
  int v20; // r7
  int v21; // [sp+4h] [bp-8h]

  v1 = result[91];
  v2 = v1 == 0;
  v3 = result;
  v21 = result[102];
  if ( v1 )
  {
    v14 = result[92];
    v4 = v1 > v14 || v14 > 63;
    if ( result[73] != 1 )
      v4 = 1;
  }
  else
  {
    v4 = result[92] != 0;
  }
  v5 = result[93];
  if ( v5 )
  {
    v6 = result[94];
    if ( v6 != v5 - 1 )
      v4 = 1;
  }
  else
  {
    v6 = result[94];
  }
  if ( v6 > 13 || v4 )
  {
    *(_DWORD *)(*result + 20) = 16;
    *(_DWORD *)(*result + 24) = result[91];
    *(_DWORD *)(*result + 28) = result[92];
    *(_DWORD *)(*result + 32) = result[93];
    *(_DWORD *)(*result + 36) = result[94];
    result = (_DWORD *)(*(int (__fastcall **)(_DWORD *))*result)(result);
  }
  if ( (int)v3[73] > 0 )
  {
    v7 = v3;
    v8 = 0;
    do
    {
      v9 = v3[35];
      v10 = *(_DWORD *)(v7[74] + 4);
      v11 = v9 + (v10 << 8);
      if ( !v2 && *(int *)(v9 + (v10 << 8)) < 0 )
      {
        *(_DWORD *)(*v3 + 20) = 115;
        *(_DWORD *)(*v3 + 24) = v10;
        *(_DWORD *)(*v3 + 28) = 0;
        result = (_DWORD *)(*(int (__fastcall **)(_DWORD *, int))(*v3 + 4))(v3, -1);
      }
      v12 = v3[91];
      if ( v12 <= v3[92] )
      {
        v13 = (int *)(v11 + 4 * v12);
        do
        {
          result = v3;
          if ( v3[93] != (*v13 & ~(*v13 >> 31)) )
          {
            *(_DWORD *)(*v3 + 20) = 115;
            *(_DWORD *)(*v3 + 24) = v10;
            *(_DWORD *)(*v3 + 28) = v12;
            result = (_DWORD *)(*(int (__fastcall **)(_DWORD *, int))(*v3 + 4))(v3, -1);
          }
          ++v12;
          *v13++ = v3[94];
        }
        while ( v3[92] >= v12 );
      }
      ++v8;
      ++v7;
    }
    while ( v3[73] > v8 );
  }
  if ( v3[93] )
  {
    if ( v2 )
      *(_DWORD *)(v21 + 4) = decode_mcu_DC_refine;
    else
      *(_DWORD *)(v21 + 4) = decode_mcu_AC_refine;
  }
  else
  {
    if ( v2 )
    {
      *(_DWORD *)(v21 + 4) = decode_mcu_DC_first;
      if ( (int)v3[73] <= 0 )
        goto LABEL_23;
      goto LABEL_33;
    }
    *(_DWORD *)(v21 + 4) = decode_mcu_AC_first;
  }
  if ( (int)v3[73] <= 0 )
    goto LABEL_23;
LABEL_33:
  v15 = 0;
  v16 = v3;
  v17 = v21;
  v18 = v3[74];
  if ( !v2 )
    goto LABEL_38;
LABEL_34:
  if ( !v3[93] )
    result = (_DWORD *)jpeg_make_d_derived_tbl(v3, 1, *(_DWORD *)(v18 + 20), v21 + 4 * *(_DWORD *)(v18 + 20) + 44);
  while ( 1 )
  {
    *(_DWORD *)(v17 + 24) = 0;
    ++v15;
    ++v16;
    v17 += 4;
    if ( v3[73] <= v15 )
      break;
    v18 = v16[74];
    if ( v2 )
      goto LABEL_34;
LABEL_38:
    v19 = *(_DWORD *)(v18 + 24);
    v20 = v21 + 4 * (v19 + 10);
    result = (_DWORD *)jpeg_make_d_derived_tbl(v3, v2, v19, v20 + 4);
    *(_DWORD *)(v21 + 60) = *(_DWORD *)(v20 + 4);
  }
LABEL_23:
  *(_DWORD *)(v21 + 20) = 0;
  *(_DWORD *)(v21 + 16) = 0;
  *(_DWORD *)(v21 + 12) = 0;
  *(_BYTE *)(v21 + 8) = 0;
  *(_DWORD *)(v21 + 40) = v3[63];
  return result;
}


// ===== 67ed18 decode_mcu_DC_refine =====
int __fastcall decode_mcu_DC_refine(_DWORD *a1, int a2)
{
  int v3; // r8
  _DWORD *v5; // r10
  int *v6; // r3
  int v7; // r2
  int v8; // r0
  bool v9; // zf
  bool v10; // nf
  int v11; // r1
  int v12; // r2
  int v13; // r4
  _WORD *v14; // r5
  int v16; // r3
  int v17; // [sp+4h] [bp-14h] BYREF
  int v18; // [sp+8h] [bp-10h]
  int v19; // [sp+Ch] [bp-Ch]
  int v20; // [sp+10h] [bp-8h]
  _DWORD *v21; // [sp+14h] [bp-4h]

  v3 = 1 << a1[94];
  v5 = (_DWORD *)a1[102];
  if ( a1[63] && !v5[10] && !process_restart(a1) )
    return 0;
  v6 = (int *)a1[6];
  v21 = a1;
  v7 = a1[80];
  v8 = *v6;
  v9 = v7 == 0;
  v10 = v7 < 0;
  v17 = *v6;
  v18 = v6[1];
  v11 = v5[3];
  v12 = v5[4];
  if ( !v10 && !v9 )
  {
    v13 = 0;
    do
    {
      v14 = *(_WORD **)(a2 + 4 * v13++);
      if ( v12 <= 0 )
      {
        if ( !jpeg_fill_bit_buffer(&v17, v11) )
          return 0;
        v11 = v19;
        v12 = v20;
      }
      if ( ((v11 >> --v12) & 1) != 0 )
        *v14 |= v3;
    }
    while ( a1[80] > v13 );
    v8 = v17;
    v6 = (int *)a1[6];
  }
  *v6 = v8;
  *(_DWORD *)(a1[6] + 4) = v18;
  v16 = v5[10];
  v5[3] = v11;
  v5[4] = v12;
  v5[10] = v16 - 1;
  return 1;
}


// ===== 67ee28 decode_mcu_AC_refine =====
int __fastcall decode_mcu_AC_refine(_DWORD *a1, _DWORD *a2)
{
  int v2; // r10
  int v3; // r4
  int v4; // r0
  int *v5; // r3
  int v6; // r7
  int v7; // r12
  int v8; // r9
  int v9; // r2
  int v10; // r4
  int v11; // r1
  int v12; // r3
  int v13; // r8
  int v14; // r11
  int v15; // r8
  _DWORD *v16; // r5
  __int16 v17; // r1
  __int16 v18; // r3
  bool v19; // cc
  int v20; // r6
  int v22; // r3
  _BYTE *v23; // r1
  int v25; // r1
  int v26; // r5
  _DWORD *v27; // r8
  int v28; // r6
  __int16 v29; // r3
  int v30; // r0
  int v31; // r4
  int v32; // r0
  int v33; // r0
  _DWORD *v34; // r3
  int v35; // t1
  int v36; // [sp+Ch] [bp-148h]
  _DWORD *v37; // [sp+Ch] [bp-148h]
  int v38; // [sp+10h] [bp-144h]
  int v40; // [sp+1Ch] [bp-138h]
  int v41; // [sp+20h] [bp-134h]
  int v42; // [sp+24h] [bp-130h]
  int v43; // [sp+30h] [bp-124h]
  int v44; // [sp+34h] [bp-120h]
  _DWORD v45[64]; // [sp+3Ch] [bp-118h] BYREF
  int v46; // [sp+13Ch] [bp-18h] BYREF
  int v47; // [sp+140h] [bp-14h]
  int v48; // [sp+144h] [bp-10h]
  int v49; // [sp+148h] [bp-Ch]
  _DWORD *v50; // [sp+14Ch] [bp-8h]
  _BYTE v51[4]; // [sp+150h] [bp-4h] BYREF

  v42 = a1[102];
  v2 = a1[92];
  v3 = a1[94];
  if ( a1[63] )
  {
    if ( !*(_DWORD *)(a1[102] + 40) )
    {
      v37 = a2;
      v33 = process_restart(a1);
      a2 = v37;
      if ( !v33 )
        return 0;
    }
  }
  v4 = *(unsigned __int8 *)(v42 + 8);
  if ( *(_BYTE *)(v42 + 8) )
  {
LABEL_34:
    --*(_DWORD *)(v42 + 40);
    return 1;
  }
  v5 = (int *)a1[6];
  v50 = a1;
  v43 = -1 << v3;
  v46 = *v5;
  v38 = 1 << v3;
  v47 = v5[1];
  v44 = *(_DWORD *)(v42 + 20);
  v6 = *a2;
  v7 = *(_DWORD *)(v42 + 60);
  v8 = *(_DWORD *)(v42 + 12);
  v9 = *(_DWORD *)(v42 + 16);
  v40 = v7;
  v10 = a1[91];
  if ( v44 )
  {
    v41 = v4;
LABEL_35:
    if ( v2 >= v10 )
    {
      v25 = v8;
      v26 = 0;
      v27 = &jpeg_natural_order[v10];
      v28 = v10;
      do
      {
        v31 = 2 * v27[v26];
        if ( *(_WORD *)(v6 + v31) )
        {
          if ( v9 <= 0 )
          {
            if ( !jpeg_fill_bit_buffer(&v46, v25) )
              goto LABEL_68;
            v25 = v48;
            v9 = v49;
          }
          if ( ((v25 >> --v9) & 1) != 0 )
          {
            v29 = *(_WORD *)(v6 + v31);
            v30 = v29;
            if ( (v29 & v38) == 0 )
            {
              if ( v29 >= 0 )
                v29 += v38;
              else
                LOWORD(v7) = v43;
              if ( v30 < 0 )
                v29 += v7;
              *(_WORD *)(v6 + v31) = v29;
            }
          }
        }
        ++v26;
      }
      while ( v2 >= v26 + v28 );
      v8 = v25;
    }
    v5 = (int *)a1[6];
    --v44;
LABEL_33:
    *v5 = v46;
    *(_DWORD *)(a1[6] + 4) = v47;
    *(_DWORD *)(v42 + 12) = v8;
    *(_DWORD *)(v42 + 16) = v9;
    *(_DWORD *)(v42 + 20) = v44;
    goto LABEL_34;
  }
  if ( v2 < v10 )
    goto LABEL_33;
  v41 = 0;
LABEL_8:
  if ( v9 <= 7 )
  {
    if ( !jpeg_fill_bit_buffer(&v46, v8) )
      goto LABEL_68;
    v9 = v49;
    v8 = v48;
    if ( v49 <= 7 )
      goto LABEL_52;
  }
  LOWORD(v7) = v40;
  v11 = (unsigned __int8)(v8 >> (v9 - 8));
  v12 = *(_DWORD *)(v40 + 4 * (v11 + 36));
  if ( v12 )
  {
    v9 -= v12;
    v13 = *(unsigned __int8 *)(v40 + v11 + 1168);
    v14 = v13 & 0xF;
    v15 = v13 >> 4;
    if ( v14 )
    {
LABEL_11:
      if ( v14 != 1 )
      {
        *(_DWORD *)(*a1 + 20) = 118;
        v36 = v9;
        (*(void (__fastcall **)(_DWORD *, int))(*a1 + 4))(a1, -1);
        v9 = v36;
      }
      if ( v9 <= 0 )
      {
        if ( !jpeg_fill_bit_buffer(&v46, v8) )
          goto LABEL_68;
        v8 = v48;
        v9 = v49;
      }
      --v9;
      v14 = v38;
      if ( ((v8 >> v9) & 1) == 0 )
        v14 = v43;
      goto LABEL_16;
    }
  }
  else
  {
LABEL_52:
    v32 = jpeg_huff_decode(&v46, v8);
    if ( v32 < 0 )
      goto LABEL_68;
    v14 = v32 & 0xF;
    v8 = v48;
    v9 = v49;
    v15 = v32 >> 4;
    if ( (v32 & 0xF) != 0 )
      goto LABEL_11;
  }
  if ( v15 == 15 )
  {
LABEL_16:
    v16 = &jpeg_natural_order[v10];
    while ( 1 )
    {
      v20 = 2 * *v16;
      if ( *(_WORD *)(v6 + v20) )
      {
        if ( v9 <= 0 )
        {
          if ( !jpeg_fill_bit_buffer(&v46, v8) )
            goto LABEL_68;
          v8 = v48;
          v9 = v49;
        }
        if ( ((v8 >> --v9) & 1) != 0 )
        {
          v17 = *(_WORD *)(v6 + v20);
          v18 = v17;
          if ( (v17 & v38) == 0 )
          {
            v19 = v17 < 0;
            if ( v17 >= 0 )
              v17 += v38;
            else
              v18 = v43;
            if ( v19 )
              v17 += v18;
            *(_WORD *)(v6 + v20) = v17;
          }
        }
      }
      else if ( v15-- == 0 )
      {
LABEL_29:
        if ( v14 )
        {
          v22 = jpeg_natural_order[v10];
          v23 = &v51[4 * v41++];
          *(_WORD *)(v6 + 2 * v22) = v14;
          *((_DWORD *)v23 - 69) = v22;
        }
        if ( v2 < ++v10 )
        {
          v5 = (int *)a1[6];
          goto LABEL_33;
        }
        goto LABEL_8;
      }
      ++v10;
      ++v16;
      if ( v2 < v10 )
        goto LABEL_29;
    }
  }
  v44 = 1 << v15;
  if ( !v15 )
    goto LABEL_58;
  if ( v9 >= v15 )
    goto LABEL_57;
  if ( jpeg_fill_bit_buffer(&v46, v8) )
  {
    v8 = v48;
    v9 = v49;
LABEL_57:
    v9 -= v15;
    v44 += (v44 - 1) & (v8 >> v9);
LABEL_58:
    if ( v44 )
      goto LABEL_35;
    v5 = (int *)a1[6];
    goto LABEL_33;
  }
LABEL_68:
  if ( !v41 )
    return 0;
  v34 = &v45[v41];
  do
  {
    v35 = *--v34;
    *(_WORD *)(v6 + 2 * v35) = 0;
  }
  while ( v34 != v45 );
  return 0;
}


// ===== 67f300 decode_mcu_AC_first =====
int __fastcall decode_mcu_AC_first(_DWORD *a1, _DWORD *a2)
{
  int v2; // r8
  int v3; // r11
  int v5; // r12
  int *v6; // r3
  int v7; // r0
  int v8; // r5
  int v9; // r1
  int v10; // r2
  int v11; // r7
  int v12; // r3
  int v13; // r5
  int v14; // r0
  int v15; // r3
  int v16; // r6
  int v17; // r4
  int v18; // r6
  int v19; // r3
  int v21; // r0
  _DWORD *v22; // [sp+Ch] [bp-38h]
  int v23; // [sp+14h] [bp-30h]
  int v24; // [sp+18h] [bp-2Ch]
  int v25; // [sp+1Ch] [bp-28h]
  int v26; // [sp+2Ch] [bp-18h] BYREF
  int v27; // [sp+30h] [bp-14h]
  int v28; // [sp+34h] [bp-10h]
  int v29; // [sp+38h] [bp-Ch]
  _DWORD *v30; // [sp+3Ch] [bp-8h]

  v2 = a1[102];
  v3 = a1[92];
  v23 = a1[94];
  if ( a1[63] )
  {
    if ( !*(_DWORD *)(v2 + 40) )
    {
      v22 = a2;
      v21 = process_restart(a1);
      a2 = v22;
      if ( !v21 )
        return 0;
    }
  }
  if ( *(_BYTE *)(v2 + 8) )
    goto LABEL_25;
  v5 = *(_DWORD *)(v2 + 20);
  v25 = v5;
  if ( v5 )
  {
    v25 = v5 - 1;
LABEL_24:
    *(_DWORD *)(v2 + 20) = v25;
LABEL_25:
    --*(_DWORD *)(v2 + 40);
    return 1;
  }
  v6 = (int *)a1[6];
  v30 = a1;
  v7 = *v6;
  v8 = a1[91];
  v24 = *a2;
  v26 = *v6;
  v27 = v6[1];
  v9 = *(_DWORD *)(v2 + 12);
  v10 = *(_DWORD *)(v2 + 16);
  v11 = *(_DWORD *)(v2 + 60);
  if ( v3 < v8 )
  {
LABEL_23:
    *v6 = v7;
    *(_DWORD *)(a1[6] + 4) = v27;
    *(_DWORD *)(v2 + 12) = v9;
    *(_DWORD *)(v2 + 16) = v10;
    goto LABEL_24;
  }
  while ( 1 )
  {
    if ( v10 <= 7 )
    {
      if ( !jpeg_fill_bit_buffer(&v26, v9) )
        return 0;
      v10 = v29;
      v9 = v28;
      if ( v29 <= 7 )
        goto LABEL_28;
    }
    v14 = (unsigned __int8)(v9 >> (v10 - 8));
    v15 = *(_DWORD *)(v11 + 4 * (v14 + 36));
    if ( v15 )
    {
      v16 = *(unsigned __int8 *)(v11 + v14 + 1168);
      v10 -= v15;
    }
    else
    {
LABEL_28:
      v16 = jpeg_huff_decode(&v26, v9);
      if ( v16 < 0 )
        return 0;
      v9 = v28;
      v10 = v29;
    }
    v17 = v16 & 0xF;
    v18 = v16 >> 4;
    if ( v17 )
    {
      if ( v10 < v17 )
      {
        if ( !jpeg_fill_bit_buffer(&v26, v9) )
          return 0;
        v9 = v28;
        v10 = v29;
      }
      v10 -= v17;
      v12 = ((1 << v17) - 1) & (v9 >> v10);
      v13 = v18 + v8;
      if ( v12 < *((_DWORD *)&extend_test + v17) )
        v12 += *((_DWORD *)&extend_test + v17 + 16);
      *(_WORD *)(v24 + 2 * jpeg_natural_order[v13]) = v12 << v23;
      goto LABEL_12;
    }
    if ( v18 != 15 )
      break;
    v13 = v8 + 15;
LABEL_12:
    v8 = v13 + 1;
    if ( v3 < v8 )
    {
      v7 = v26;
      v6 = (int *)a1[6];
      goto LABEL_23;
    }
  }
  v19 = 1 << v18;
  if ( !v18 )
    goto LABEL_22;
  if ( v10 >= v18 )
    goto LABEL_21;
  if ( jpeg_fill_bit_buffer(&v26, v9) )
  {
    v9 = v28;
    v10 = v29;
LABEL_21:
    v10 -= v18;
    v19 = (1 << v18) + (((1 << v18) - 1) & (v9 >> v10));
LABEL_22:
    v25 = v19 - 1;
    v7 = v26;
    v6 = (int *)a1[6];
    goto LABEL_23;
  }
  return 0;
}


// ===== 67f5b0 decode_mcu_DC_first =====
int __fastcall decode_mcu_DC_first(_DWORD *a1, int a2)
{
  int v2; // r11
  int v4; // r5
  int *v5; // r4
  int v6; // r10
  int v7; // r2
  int v8; // r6
  int v9; // r12
  bool v10; // cc
  int v11; // r2
  int v12; // r3
  int v13; // r1
  _DWORD *v14; // r8
  int v15; // r2
  int v16; // r3
  int v17; // r0
  int v18; // r4
  _BYTE *v19; // r10
  int v20; // r4
  int v21; // r10
  _WORD *v22; // r9
  int v23; // r4
  int v24; // r0
  int v25; // r3
  int v26; // r0
  int v27; // r1
  int v28; // r2
  int v29; // r3
  int v31; // r0
  int v33; // [sp+10h] [bp-3Ch]
  int v34; // [sp+20h] [bp-2Ch]
  int v35; // [sp+24h] [bp-28h]
  int v36; // [sp+28h] [bp-24h]
  int v37; // [sp+2Ch] [bp-20h]
  int v38; // [sp+30h] [bp-1Ch]
  int v39; // [sp+34h] [bp-18h] BYREF
  int v40; // [sp+38h] [bp-14h]
  int v41; // [sp+3Ch] [bp-10h]
  int v42; // [sp+40h] [bp-Ch]
  _DWORD *v43; // [sp+44h] [bp-8h]
  _BYTE v44[4]; // [sp+48h] [bp-4h] BYREF

  v2 = a1[102];
  v33 = a1[94];
  if ( a1[63] && !*(_DWORD *)(v2 + 40) && !process_restart(a1) )
    return 0;
  v4 = *(unsigned __int8 *)(v2 + 8);
  if ( *(_BYTE *)(v2 + 8) )
    goto LABEL_22;
  v5 = (int *)a1[6];
  v43 = a1;
  v6 = *v5;
  v7 = a1[80];
  v39 = *v5;
  v40 = v5[1];
  v8 = *(_DWORD *)(v2 + 12);
  v9 = *(_DWORD *)(v2 + 16);
  v10 = v7 <= 0;
  v11 = *(_DWORD *)(v2 + 28);
  v12 = *(_DWORD *)(v2 + 32);
  v34 = *(_DWORD *)(v2 + 20);
  v35 = *(_DWORD *)(v2 + 24);
  v36 = v11;
  v37 = v12;
  v38 = *(_DWORD *)(v2 + 36);
  if ( v10 )
    goto LABEL_21;
  v13 = v8;
  v14 = a1;
  v15 = v9;
  do
  {
    v21 = v14[81];
    v22 = *(_WORD **)(a2 + 4 * v4);
    v23 = *(_DWORD *)(v2 + 4 * *(_DWORD *)(a1[v21 + 74] + 20) + 44);
    if ( v15 > 7 )
      goto LABEL_15;
    if ( !jpeg_fill_bit_buffer(&v39, v13) )
      return 0;
    v15 = v42;
    v13 = v41;
    if ( v42 > 7 )
    {
LABEL_15:
      v24 = (unsigned __int8)(v13 >> (v15 - 8));
      v25 = *(_DWORD *)(v23 + 4 * (v24 + 36));
      if ( v25 )
      {
        v18 = *(unsigned __int8 *)(v23 + v24 + 1168);
        v15 -= v25;
        goto LABEL_6;
      }
      v26 = jpeg_huff_decode(&v39, v13);
      v18 = v26;
      if ( v26 < 0 )
        return 0;
    }
    else
    {
      v31 = jpeg_huff_decode(&v39, v41);
      v18 = v31;
      if ( v31 < 0 )
        return 0;
    }
    v13 = v41;
    v15 = v42;
LABEL_6:
    if ( v18 )
    {
      if ( v18 > v15 )
      {
        if ( !jpeg_fill_bit_buffer(&v39, v13) )
          return 0;
        v13 = v41;
        v15 = v42;
      }
      v15 -= v18;
      v16 = ((1 << v18) - 1) & (v13 >> v15);
      v17 = *((_DWORD *)&extend_test + v18);
      if ( v16 >= v17 )
        v18 = ((1 << v18) - 1) & (v13 >> v15);
      else
        v18 = *((_DWORD *)&extend_test + v18 + 16);
      if ( v16 < v17 )
        v18 += v16;
    }
    v19 = &v44[4 * v21 - 40];
    ++v4;
    v20 = v18 + *((_DWORD *)v19 + 1);
    *((_DWORD *)v19 + 1) = v20;
    *v22 = v20 << v33;
    ++v14;
  }
  while ( a1[80] > v4 );
  v6 = v39;
  v5 = (int *)a1[6];
  v9 = v15;
  v8 = v13;
LABEL_21:
  *v5 = v6;
  *(_DWORD *)(a1[6] + 4) = v40;
  *(_DWORD *)(v2 + 12) = v8;
  *(_DWORD *)(v2 + 16) = v9;
  v27 = v35;
  v28 = v36;
  v29 = v37;
  *(_DWORD *)(v2 + 20) = v34;
  *(_DWORD *)(v2 + 24) = v27;
  *(_DWORD *)(v2 + 28) = v28;
  *(_DWORD *)(v2 + 32) = v29;
  *(_DWORD *)(v2 + 36) = v38;
LABEL_22:
  --*(_DWORD *)(v2 + 40);
  return 1;
}


// ===== 67f828 start_pass_dpost =====
int __fastcall start_pass_dpost(int result, int a2)
{
  _DWORD *v2; // r4
  int v3; // r2

  v2 = *(_DWORD **)(result + 396);
  if ( a2 == 2 )
  {
    if ( !v2[2] )
    {
      *(_DWORD *)(*(_DWORD *)result + 20) = 4;
      result = (**(int (__fastcall ***)(int))result)(result);
    }
    v2[1] = post_process_2pass;
  }
  else if ( a2 == 3 )
  {
    if ( !v2[2] )
    {
      *(_DWORD *)(*(_DWORD *)result + 20) = 4;
      result = (**(int (__fastcall ***)(int))result)(result);
    }
    v2[1] = post_process_prepass;
  }
  else if ( a2 )
  {
    *(_DWORD *)(*(_DWORD *)result + 20) = 4;
    result = (**(int (__fastcall ***)(int))result)(result);
  }
  else if ( *(_BYTE *)(result + 74) )
  {
    v3 = v2[3];
    v2[1] = post_process_1pass;
    if ( !v3 )
    {
      result = (*(int (__fastcall **)(int))(*(_DWORD *)(result + 4) + 28))(result);
      v2[3] = result;
    }
  }
  else
  {
    v2[1] = *(_DWORD *)(*(_DWORD *)(result + 416) + 4);
  }
  v2[5] = 0;
  v2[6] = 0;
  return result;
}


// ===== 67f94c post_process_1pass =====
int __fastcall post_process_1pass(_DWORD *a1, int a2, int a3, int a4, int a5, _DWORD *a6, int a7)
{
  int v7; // r6
  unsigned int v8; // lr
  int result; // r0
  int v11; // [sp+0h] [bp-18h]
  unsigned int v12; // [sp+8h] [bp-10h]
  int v13; // [sp+14h] [bp-4h] BYREF

  v7 = a1[99];
  v8 = *(_DWORD *)(v7 + 16);
  v13 = 0;
  v11 = *(_DWORD *)(v7 + 12);
  if ( a7 - *a6 > v8 )
    v12 = v8;
  else
    v12 = a7 - *a6;
  (*(void (__fastcall **)(_DWORD *, int, int))(a1[104] + 4))(a1, a2, a3);
  result = (*(int (__fastcall **)(_DWORD *, _DWORD, int, int, int, int *, unsigned int))(a1[106] + 4))(
             a1,
             *(_DWORD *)(v7 + 12),
             a5 + 4 * *a6,
             v13,
             v11,
             &v13,
             v12);
  *a6 += v13;
  return result;
}


// ===== 67f9dc post_process_prepass =====
int __fastcall post_process_prepass(_DWORD *a1, int a2, int a3, int a4, int a5, _DWORD *a6)
{
  _DWORD *v6; // r4
  unsigned int v8; // r6
  int v12; // r0
  int result; // r0
  unsigned int v14; // r7
  unsigned int v15; // r3
  int v16; // r2
  unsigned int v17; // r7

  v6 = (_DWORD *)a1[99];
  v8 = v6[6];
  if ( v8 )
  {
    v12 = v6[3];
  }
  else
  {
    v12 = (*(int (__fastcall **)(_DWORD *))(a1[1] + 28))(a1);
    v8 = v6[6];
    v6[3] = v12;
  }
  result = (*(int (__fastcall **)(_DWORD *, int, int, int, int, _DWORD *, _DWORD))(a1[104] + 4))(
             a1,
             a2,
             a3,
             a4,
             v12,
             v6 + 6,
             v6[4]);
  v14 = v6[6];
  if ( v14 > v8 )
  {
    v17 = v14 - v8;
    result = (*(int (__fastcall **)(_DWORD *, unsigned int, _DWORD, unsigned int))(a1[106] + 4))(
               a1,
               v6[3] + 4 * v8,
               0,
               v17);
    *a6 += v17;
    v14 = v6[6];
  }
  v15 = v6[4];
  if ( v15 <= v14 )
  {
    v16 = v6[5];
    v6[6] = 0;
    v6[5] = v16 + v15;
  }
  return result;
}


// ===== 67facc post_process_2pass =====
int __fastcall post_process_2pass(_DWORD *a1, int a2, int a3, int a4, int a5, _DWORD *a6, int a7)
{
  _DWORD *v7; // r4
  int v9; // r12
  int v10; // r0
  unsigned int v11; // r2
  unsigned int v12; // r6
  int result; // r0
  int v14; // r1
  int v15; // r2
  unsigned int v16; // r3
  unsigned int v17; // r6

  v7 = (_DWORD *)a1[99];
  v9 = v7[6];
  if ( v9 )
  {
    v10 = v7[3];
  }
  else
  {
    v10 = (*(int (__fastcall **)(_DWORD *))(a1[1] + 28))(a1);
    v9 = v7[6];
    v7[3] = v10;
  }
  v11 = a7 - *a6;
  if ( v11 >= a1[24] - v7[5] )
    v11 = a1[24] - v7[5];
  v12 = v7[4] - v9;
  if ( v11 < v12 )
    v12 = v11;
  result = (*(int (__fastcall **)(_DWORD *, int, int, unsigned int))(a1[106] + 4))(a1, v10 + 4 * v9, a5 + 4 * *a6, v12);
  *a6 += v12;
  v15 = v7[6];
  v16 = v7[4];
  v17 = v12 + v15;
  if ( v17 >= v16 )
  {
    v15 = v7[5];
    v14 = 0;
  }
  v7[6] = v17;
  if ( v17 >= v16 )
  {
    v7[6] = v14;
    v7[5] = v15 + v16;
  }
  return result;
}


// ===== 67fba4 jinit_d_post_controller =====
int (__fastcall **__fastcall jinit_d_post_controller(int a1, int a2))(int result, int a2)
{
  int (__fastcall **result)(int, int); // r0
  int (__fastcall **v5)(int, int); // r5
  int (__fastcall *v6)(int, int); // r3
  int v7; // r7
  int (__fastcall *v8)(int, int, _DWORD, int, int, int (__fastcall *)(int, int)); // r6
  int v9; // r0

  result = (int (__fastcall **)(int, int))(**(int (***)(void))(a1 + 4))();
  *(_DWORD *)(a1 + 396) = result;
  *result = start_pass_dpost;
  result[2] = nullptr;
  result[3] = nullptr;
  v5 = result;
  if ( *(_BYTE *)(a1 + 74) )
  {
    v6 = *(int (__fastcall **)(int, int))(a1 + 276);
    result[4] = v6;
    if ( a2 )
    {
      v7 = *(_DWORD *)(a1 + 92) * *(_DWORD *)(a1 + 100);
      v8 = *(int (__fastcall **)(int, int, _DWORD, int, int, int (__fastcall *)(int, int)))(*(_DWORD *)(a1 + 4) + 16);
      v9 = jround_up(*(_DWORD *)(a1 + 96), v6);
      result = (int (__fastcall **)(int, int))v8(a1, 1, 0, v7, v9, v5[4]);
      v5[2] = (int (__fastcall *)(int, int))result;
    }
    else
    {
      result = (int (__fastcall **)(int, int))(*(int (__fastcall **)(int, int, int))(*(_DWORD *)(a1 + 4) + 8))(
                                                a1,
                                                1,
                                                *(_DWORD *)(a1 + 92) * *(_DWORD *)(a1 + 100));
      v5[3] = (int (__fastcall *)(int, int))result;
    }
  }
  return result;
}


// ===== 67fc7c start_pass_upsample =====
_DWORD *__fastcall start_pass_upsample(_DWORD *result)
{
  int v1; // r3

  v1 = result[104];
  *(_DWORD *)(v1 + 92) = result[69];
  *(_DWORD *)(v1 + 96) = result[24];
  return result;
}


// ===== 67fc94 sep_upsample =====
int __fastcall sep_upsample(_DWORD *a1, int a2, _DWORD *a3, int a4, int a5, _DWORD *a6, int a7)
{
  int v7; // r7
  int v9; // r0
  int v10; // r4
  int v13; // r2
  int v14; // r8
  int v15; // r5
  int v16; // r4
  unsigned int v17; // r4
  unsigned int v18; // r1
  int result; // r0
  unsigned int v20; // r3
  int v21; // r4

  v7 = a1[104];
  v9 = a1[69];
  v10 = *(_DWORD *)(v7 + 92);
  if ( v10 >= v9 )
  {
    v14 = a1[49];
    if ( (int)a1[9] > 0 )
    {
      v15 = v7;
      v16 = 0;
      do
      {
        (*(void (__fastcall **)(_DWORD *, int, int, int))(v15 + 52))(
          a1,
          v14,
          *(_DWORD *)(a2 + 4 * v16) + *a3 * 4 * *(_DWORD *)(v15 + 100),
          v7 + 4 * v16 + 12);
        ++v16;
        v14 += 84;
        v15 += 4;
      }
      while ( a1[9] > v16 );
    }
    v13 = 0;
    *(_DWORD *)(v7 + 92) = 0;
    v9 = a1[69];
    v10 = 0;
  }
  else
  {
    v13 = *(_DWORD *)(v7 + 92);
  }
  v17 = v9 - v10;
  v18 = a7 - *a6;
  if ( v18 >= *(_DWORD *)(v7 + 96) )
    v18 = *(_DWORD *)(v7 + 96);
  if ( v18 < v17 )
    v17 = v18;
  result = (*(int (__fastcall **)(_DWORD *, int, int, int, unsigned int))(a1[105] + 4))(
             a1,
             v7 + 12,
             v13,
             a5 + 4 * *a6,
             v17);
  *a6 += v17;
  v20 = *(_DWORD *)(v7 + 96) - v17;
  v21 = v17 + *(_DWORD *)(v7 + 92);
  *(_DWORD *)(v7 + 96) = v20;
  *(_DWORD *)(v7 + 92) = v21;
  if ( v21 >= a1[69] )
    ++*a3;
  return result;
}


// ===== 67fdb4 fullsize_upsample =====
void __fastcall fullsize_upsample(int a1, int a2, int a3, _DWORD *a4)
{
  *a4 = a3;
}


// ===== 67fdbc noop_upsample =====
void __fastcall noop_upsample(int a1, int a2, int a3, _DWORD *a4)
{
  *a4 = 0;
}


// ===== 67fdc8 h2v1_upsample =====
int __fastcall h2v1_upsample(int result, int a2, int a3, int *a4)
{
  int v4; // r1
  int v5; // r8
  int v6; // r6
  int i; // r7
  _BYTE *v8; // r3
  int v9; // r5
  _BYTE *v10; // r4
  int v11; // r1
  char v12; // r12

  v4 = *(_DWORD *)(result + 276);
  v5 = *a4;
  if ( v4 > 0 )
  {
    v6 = 0;
    for ( i = 0; i < v4; ++i )
    {
      v8 = *(_BYTE **)(v5 + v6);
      v9 = *(_DWORD *)(a3 + v6);
      v10 = &v8[*(_DWORD *)(result + 92)];
      if ( v8 < v10 )
      {
        v11 = 0;
        do
        {
          v12 = *(_BYTE *)(v9 + v11++);
          v8[1] = v12;
          *v8 = v12;
          v8 += 2;
        }
        while ( v10 > v8 );
        v4 = *(_DWORD *)(result + 276);
      }
      v6 += 4;
    }
  }
  return result;
}


// ===== 67fe38 h2v1_fancy_upsample =====
int __fastcall h2v1_fancy_upsample(int result, int a2, int a3, int *a4)
{
  int v5; // r10
  int v6; // r9
  unsigned __int8 *v7; // r3
  _BYTE *v8; // r2
  unsigned __int8 *v9; // r6
  int v10; // t1
  _BYTE *v11; // r7
  int v12; // r8
  int v13; // r12
  int v14; // r4
  int v15; // r5
  int v16; // r3
  int v17; // r2
  int v18; // [sp+4h] [bp-4h]

  v18 = *a4;
  if ( *(int *)(result + 276) > 0 )
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(unsigned __int8 **)(a3 + v5);
      v8 = *(_BYTE **)(v18 + v5);
      v10 = *v7;
      v9 = v7 + 1;
      *v8 = v10;
      v11 = v8 + 2;
      v8[1] = (3 * v10 + v7[1] + 2) >> 2;
      v12 = *(_DWORD *)(a2 + 40) - 2;
      v13 = v12;
      if ( *(_DWORD *)(a2 + 40) != 2 )
      {
        do
        {
          --v13;
          v14 = 3 * v7[1];
          v8[2] = (*v7 + 1 + v14) >> 2;
          v15 = v7[2];
          ++v7;
          v8[3] = (v15 + 2 + v14) >> 2;
          v8 += 2;
        }
        while ( v13 );
        v11 += 2 * v12;
        v9 += v12;
      }
      v16 = *v9;
      ++v6;
      v17 = (3 * v16 + *(v9 - 1) + 1) >> 2;
      v11[1] = v16;
      *v11 = v17;
      v5 += 4;
    }
    while ( *(_DWORD *)(result + 276) > v6 );
  }
  return result;
}


// ===== 67ff34 h2v2_fancy_upsample =====
unsigned __int8 *__fastcall h2v2_fancy_upsample(int a1, int a2, unsigned __int8 **a3, int *a4)
{
  unsigned __int8 *result; // r0
  int v5; // r3
  int i; // r7
  unsigned __int8 *v8; // r12
  int v9; // r5
  int v10; // r4
  _BYTE *v11; // r2
  _BYTE *v12; // r8
  int v13; // r9
  int v14; // r1
  int v15; // r3
  bool v16; // cc
  int v17; // [sp+0h] [bp-10h]
  int v18; // [sp+4h] [bp-Ch]

  result = *(unsigned __int8 **)(a1 + 276);
  v5 = *a4;
  if ( (int)result > 0 )
  {
    v17 = v5;
    v18 = 2;
    do
    {
      for ( i = 0; i != 2; ++i )
      {
        v8 = *a3;
        if ( i )
          result = a3[1];
        else
          result = *(a3 - 1);
        v9 = *result + 3 * *v8;
        v10 = result[1] + 3 * v8[1];
        v11 = *(_BYTE **)(v17 + 4 * i);
        *v11 = (unsigned int)(v9 + 2) >> 2;
        v11[1] = (v10 + 3 * v9 + 7) >> 4;
        v12 = v11 + 2;
        v13 = *(_DWORD *)(a2 + 40) - 2;
        v14 = v13;
        if ( *(_DWORD *)(a2 + 40) == 2 )
        {
          v15 = v9;
        }
        else
        {
          do
          {
            v15 = v10;
            v10 = 3 * v8[2] + result[2];
            --v14;
            v11[2] = (v9 + 8 + 3 * v15) >> 4;
            v11[3] = (v10 + 7 + 3 * v15) >> 4;
            ++v8;
            ++result;
            v11 += 2;
            v9 = v15;
          }
          while ( v14 );
          v12 += 2 * v13;
        }
        v12[1] = (4 * v10 + 7) >> 4;
        *v12 = (v15 + 8 + 3 * v10) >> 4;
      }
      ++a3;
      v17 += 8;
      v16 = *(_DWORD *)(a1 + 276) <= v18;
      v18 += 2;
    }
    while ( !v16 );
  }
  return result;
}


// ===== 6800a0 jinit_upsampler =====
int __fastcall jinit_upsampler(int a1)
{
  int result; // r0
  int v3; // r3
  int v4; // r5
  _DWORD *v5; // r6
  int v6; // r7
  int v7; // r9
  int v8; // r10
  int v9; // r3
  int v10; // r11
  int v11; // r8
  bool v12; // r2
  int v13; // r10
  bool v14; // zf
  int (__fastcall *v15)(int, int, int, _DWORD); // r8
  int v16; // r0
  int v17; // [sp+4h] [bp-28h]
  int v18; // [sp+8h] [bp-24h]
  int v19; // [sp+Ch] [bp-20h]
  int v20; // [sp+10h] [bp-1Ch]

  result = (**(int (***)(void))(a1 + 4))();
  v19 = result;
  *(_DWORD *)(a1 + 416) = result;
  *(_DWORD *)(result + 4) = sep_upsample;
  *(_DWORD *)result = start_pass_upsample;
  *(_BYTE *)(result + 8) = 0;
  if ( *(_BYTE *)(a1 + 266) )
  {
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 25;
    result = (**(int (__fastcall ***)(int))a1)(a1);
  }
  v3 = *(unsigned __int8 *)(a1 + 72);
  if ( *(_BYTE *)(a1 + 72) )
    v3 = *(_DWORD *)(a1 + 280) > 1;
  v20 = v3;
  v4 = *(_DWORD *)(a1 + 196);
  if ( *(int *)(a1 + 36) > 0 )
  {
    v5 = (_DWORD *)v19;
    v17 = v19;
    v6 = 0;
    while ( 1 )
    {
      v7 = *(_DWORD *)(v4 + 36);
      v8 = *(_DWORD *)(a1 + 280);
      v18 = *(_DWORD *)(v4 + 8);
      result = *(_DWORD *)(v4 + 12) * v7 / v8;
      v9 = *(_DWORD *)(a1 + 272);
      v10 = *(_DWORD *)(a1 + 276);
      v5[25] = result;
      v11 = result;
      if ( !*(_BYTE *)(v4 + 48) )
        break;
      v12 = result == v10;
      v13 = v18 * v7 / v8;
      result = v13;
      v14 = v13 == v9;
      if ( v13 == v9 )
        v14 = v11 == v10;
      if ( !v14 )
      {
        if ( v9 == 2 * v13 && v12 )
        {
          if ( v20 && *(_DWORD *)(v4 + 40) > 2u )
            v5[13] = h2v1_fancy_upsample;
          else
            v5[13] = h2v1_upsample;
        }
        else if ( v9 == 2 * v13 && v10 == 2 * v11 )
        {
          if ( v20 && *(_DWORD *)(v4 + 40) > 2u )
          {
            v5[13] = h2v2_fancy_upsample;
            *(_BYTE *)(v19 + 8) = 1;
          }
          else
          {
            v5[13] = h2v2_upsample;
          }
        }
        else if ( v9 % v13 || v10 % v11 )
        {
          *(_DWORD *)(*(_DWORD *)a1 + 20) = 38;
          (**(void (__fastcall ***)(int))a1)(a1);
        }
        else
        {
          v5[13] = int_upsample;
          *(_BYTE *)(v17 + 140) = v9 / v13;
          *(_BYTE *)(v17 + 150) = v10 / v11;
        }
        v15 = *(int (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)(a1 + 4) + 8);
        v16 = jround_up(*(_DWORD *)(a1 + 92), *(_DWORD *)(a1 + 272));
        result = v15(a1, 1, v16, *(_DWORD *)(a1 + 276));
        v5[3] = result;
LABEL_8:
        ++v6;
        ++v5;
        ++v17;
        if ( *(_DWORD *)(a1 + 36) <= v6 )
          return result;
        goto LABEL_9;
      }
      ++v6;
      v5[13] = fullsize_upsample;
      ++v5;
      ++v17;
      if ( *(_DWORD *)(a1 + 36) <= v6 )
        return result;
LABEL_9:
      v4 += 84;
    }
    v5[13] = noop_upsample;
    goto LABEL_8;
  }
  return result;
}


// ===== 6803cc int_upsample =====
int __fastcall int_upsample(size_t *a1, int a2, int a3, int *a4)
{
  int result; // r0
  int v6; // r11
  int v7; // r10
  int v8; // r4
  int v9; // r6
  unsigned int *v10; // r8
  int v11; // r5
  unsigned int v12; // r2
  unsigned int v13; // r1
  int v14; // r12
  int v15; // r3
  unsigned int *v16; // r9
  int i; // r8

  result = a1[104] + *(_DWORD *)(a2 + 4);
  v6 = *a4;
  v7 = *(unsigned __int8 *)(result + 150);
  v8 = *(unsigned __int8 *)(result + 140);
  if ( (int)a1[69] > 0 )
  {
    v9 = 0;
    v10 = (unsigned int *)*a4;
    v11 = 0;
    do
    {
      v12 = *v10;
      v13 = *v10 + a1[23];
      v14 = *(_DWORD *)(a3 + v9);
      if ( *v10 < v13 )
      {
        v15 = 0;
        v16 = v10;
        do
        {
          while ( 1 )
          {
            result = *(unsigned __int8 *)(v14 + v15);
            if ( v8 )
              break;
            ++v15;
            if ( v12 >= v13 )
              goto LABEL_10;
          }
          for ( i = 0; i != v8; ++i )
            *(_BYTE *)(v12 + i) = result;
          v12 += v8;
          ++v15;
        }
        while ( v12 < v13 );
LABEL_10:
        v10 = v16;
      }
      if ( v7 > 1 )
        result = jcopy_sample_rows(v6, v11, v6, v11 + 1, v7 - 1, a1[23]);
      v11 += v7;
      v9 += 4;
      v10 += v7;
    }
    while ( (int)a1[69] > v11 );
  }
  return result;
}


// ===== 6804d4 h2v2_upsample =====
int __fastcall h2v2_upsample(int result, int a2, int a3, int *a4)
{
  int v4; // r6
  int v6; // r5
  int v7; // r4
  _BYTE *v8; // r3
  size_t v9; // r12
  int v10; // lr
  _BYTE *v11; // r0
  int v12; // r2
  char v13; // r1

  v4 = result;
  v6 = *a4;
  if ( *(int *)(result + 276) > 0 )
  {
    v7 = 0;
    do
    {
      v8 = *(_BYTE **)(v6 + 4 * v7);
      v9 = *(_DWORD *)(v4 + 92);
      v10 = *(_DWORD *)(a3 + 2 * v7);
      v11 = &v8[v9];
      if ( v8 < &v8[v9] )
      {
        v12 = 0;
        do
        {
          v13 = *(_BYTE *)(v10 + v12++);
          v8[1] = v13;
          *v8 = v13;
          v8 += 2;
        }
        while ( v11 > v8 );
        v9 = *(_DWORD *)(v4 + 92);
      }
      result = jcopy_sample_rows(v6, v7, v6, v7 + 1, 1, v9);
      v7 += 2;
    }
    while ( *(_DWORD *)(v4 + 276) > v7 );
  }
  return result;
}


// ===== 680568 emit_message =====
int *__fastcall emit_message(int *result, int a2)
{
  int v2; // r4
  int v3; // r2

  v2 = *result;
  if ( a2 < 0 )
  {
    v3 = *(_DWORD *)(v2 + 108);
    if ( !v3 || *(int *)(v2 + 104) > 2 )
    {
      result = (int *)(*(int (__fastcall **)(int *))(v2 + 8))(result);
      v3 = *(_DWORD *)(v2 + 108);
    }
    *(_DWORD *)(v2 + 108) = v3 + 1;
  }
  else if ( a2 <= *(_DWORD *)(v2 + 104) )
  {
    return (int *)(*(int (**)(void))(v2 + 8))();
  }
  return result;
}


// ===== 6805cc reset_error_mgr =====
int __fastcall reset_error_mgr(int result)
{
  *(_DWORD *)(*(_DWORD *)result + 108) = 0;
  *(_DWORD *)(*(_DWORD *)result + 20) = 0;
  return result;
}


// ===== 6805e4 jpeg_std_error =====
_DWORD *__fastcall jpeg_std_error(_DWORD *result)
{
  result[4] = reset_error_mgr;
  result[32] = 0;
  *result = error_exit;
  result[1] = emit_message;
  result[2] = output_message;
  result[3] = format_message;
  result[28] = jpeg_std_message_table;
  result[29] = 123;
  result[26] = 0;
  result[27] = 0;
  result[5] = 0;
  result[30] = 0;
  result[31] = 0;
  return result;
}


// ===== 680680 format_message =====
int __fastcall format_message(_DWORD *a1, char *s)
{
  _DWORD *v2; // r12
  int v4; // r3
  const char *v5; // r1
  const char *v6; // r3
  int v7; // r2
  int v9; // r2
  int v10; // r1
  const char **v11; // r2

  v2 = (_DWORD *)*a1;
  v4 = v2[5];
  if ( v4 <= 0 || v4 > v2[29] )
  {
    v9 = v2[30];
    if ( !v9 )
      goto LABEL_15;
    v10 = v2[31];
    if ( v4 < v10 || v4 > v2[32] )
      goto LABEL_15;
    v5 = *(const char **)(v9 + 4 * (v4 - v10));
  }
  else
  {
    v5 = *(const char **)(v2[28] + 4 * v4);
  }
  if ( !v5 )
  {
LABEL_15:
    v11 = (const char **)v2[28];
    v2[6] = v4;
    v5 = *v11;
  }
  v6 = v5;
  do
  {
    v7 = *(unsigned __int8 *)v6++;
    if ( !v7 )
      return sprintf(s, v5, v2[6], v2[7], v2[8], v2[9], v2[10], v2[11], v2[12], v2[13]);
  }
  while ( v7 != 37 );
  if ( *v6 != 115 )
    return sprintf(s, v5, v2[6], v2[7], v2[8], v2[9], v2[10], v2[11], v2[12], v2[13]);
  return sprintf(s, v5, v2 + 6);
}


// ===== 680770 output_message =====
int __fastcall output_message(int a1)
{
  char v2[200]; // [sp+4h] [bp-CCh] BYREF

  (*(void (__fastcall **)(int, char *))(*(_DWORD *)a1 + 12))(a1, v2);
  return fprintf((FILE *)&_sF + 2, "%s\n", v2);
}


// ===== 6807ec error_exit =====
void __fastcall __noreturn error_exit(int a1)
{
  (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 8))(a1);
  jpeg_destroy(a1);
  exit(1);
}


// ===== 680810 out_of_memory =====
int __fastcall out_of_memory(int a1, int a2)
{
  *(_DWORD *)(*(_DWORD *)a1 + 20) = 54;
  *(_DWORD *)(*(_DWORD *)a1 + 24) = a2;
  return (**(int (__fastcall ***)(int))a1)(a1);
}


// ===== 680838 do_sarray_io =====
int __fastcall do_sarray_io(int result, int a2, int a3)
{
  int v3; // r3
  int v5; // r8
  int v7; // r9
  int v8; // r6
  int v9; // r7
  int v10; // r1
  int v11; // r1
  int v12; // r7
  int v13; // r6
  int v14; // r5
  int v15; // r1
  int v16; // r2
  int v17; // r3
  int v18; // r2
  int v19; // r2
  int v20; // r3
  int v21; // r1
  int v22; // r7
  int v23; // r2

  v3 = *(_DWORD *)(a2 + 16);
  v5 = result;
  v7 = *(_DWORD *)(a2 + 8);
  v8 = *(_DWORD *)(a2 + 24);
  if ( v3 > 0 )
  {
    v9 = *(_DWORD *)(a2 + 20);
    v10 = *(_DWORD *)(a2 + 28);
    if ( v3 >= v9 )
      v3 = v9;
    v11 = v10 - v8;
    if ( v3 >= v11 )
      v12 = v11;
    else
      v12 = v3;
    if ( v12 >= *(_DWORD *)(a2 + 4) - v8 )
      v12 = *(_DWORD *)(a2 + 4) - v8;
    if ( v12 > 0 )
    {
      v13 = v7 * v8;
      v14 = 0;
      do
      {
        v20 = v13;
        v21 = a2 + 40;
        v22 = v7 * v12;
        if ( a3 )
        {
          result = (*(int (__fastcall **)(int, int, _DWORD, int, int))(a2 + 44))(
                     v5,
                     v21,
                     *(_DWORD *)(*(_DWORD *)a2 + 4 * v14),
                     v13,
                     v22);
          v15 = *(_DWORD *)(a2 + 20);
          v16 = *(_DWORD *)(a2 + 16);
          v13 += v22;
          v14 += v15;
          v17 = v16 - v14;
          if ( v16 <= v14 )
            return result;
        }
        else
        {
          v13 += v22;
          result = (*(int (__fastcall **)(int, int, _DWORD, int, int))(a2 + 40))(
                     v5,
                     v21,
                     *(_DWORD *)(*(_DWORD *)a2 + 4 * v14),
                     v20,
                     v22);
          v15 = *(_DWORD *)(a2 + 20);
          v23 = *(_DWORD *)(a2 + 16);
          v14 += v15;
          v17 = v23 - v14;
          if ( v23 <= v14 )
            return result;
        }
        result = *(_DWORD *)(a2 + 4);
        v18 = v14 + *(_DWORD *)(a2 + 24);
        if ( v17 >= v15 )
          v17 = v15;
        v12 = *(_DWORD *)(a2 + 28) - v18;
        if ( v17 < v12 )
          v12 = v17;
        v19 = result - v18;
        if ( v12 >= v19 )
          v12 = v19;
      }
      while ( v12 > 0 );
    }
  }
  return result;
}


// ===== 680968 do_barray_io =====
int __fastcall do_barray_io(int result, int a2, int a3)
{
  int v3; // r3
  int v5; // r8
  int v7; // r9
  int v8; // r6
  int v9; // r7
  int v10; // r1
  int v11; // r1
  int v12; // r7
  int v13; // r6
  int v14; // r5
  int v15; // r1
  int v16; // r2
  int v17; // r3
  int v18; // r2
  int v19; // r2
  int v20; // r3
  int v21; // r1
  int v22; // r7
  int v23; // r2

  v3 = *(_DWORD *)(a2 + 16);
  v5 = result;
  v7 = *(_DWORD *)(a2 + 8) << 7;
  v8 = *(_DWORD *)(a2 + 24);
  if ( v3 > 0 )
  {
    v9 = *(_DWORD *)(a2 + 20);
    v10 = *(_DWORD *)(a2 + 28);
    if ( v3 >= v9 )
      v3 = v9;
    v11 = v10 - v8;
    if ( v3 >= v11 )
      v12 = v11;
    else
      v12 = v3;
    if ( v12 >= *(_DWORD *)(a2 + 4) - v8 )
      v12 = *(_DWORD *)(a2 + 4) - v8;
    if ( v12 > 0 )
    {
      v13 = v8 * v7;
      v14 = 0;
      do
      {
        v20 = v13;
        v21 = a2 + 40;
        v22 = v7 * v12;
        if ( a3 )
        {
          result = (*(int (__fastcall **)(int, int, _DWORD, int, int))(a2 + 44))(
                     v5,
                     v21,
                     *(_DWORD *)(*(_DWORD *)a2 + 4 * v14),
                     v13,
                     v22);
          v15 = *(_DWORD *)(a2 + 20);
          v16 = *(_DWORD *)(a2 + 16);
          v13 += v22;
          v14 += v15;
          v17 = v16 - v14;
          if ( v16 <= v14 )
            return result;
        }
        else
        {
          v13 += v22;
          result = (*(int (__fastcall **)(int, int, _DWORD, int, int))(a2 + 40))(
                     v5,
                     v21,
                     *(_DWORD *)(*(_DWORD *)a2 + 4 * v14),
                     v20,
                     v22);
          v15 = *(_DWORD *)(a2 + 20);
          v23 = *(_DWORD *)(a2 + 16);
          v14 += v15;
          v17 = v23 - v14;
          if ( v23 <= v14 )
            return result;
        }
        result = *(_DWORD *)(a2 + 4);
        v18 = v14 + *(_DWORD *)(a2 + 24);
        if ( v17 >= v15 )
          v17 = v15;
        v12 = *(_DWORD *)(a2 + 28) - v18;
        if ( v17 < v12 )
          v12 = v17;
        v19 = result - v18;
        if ( v12 >= v19 )
          v12 = v19;
      }
      while ( v12 > 0 );
    }
  }
  return result;
}


// ===== 680a9c alloc_small =====
char *__fastcall alloc_small(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  unsigned int v3; // r4
  int v6; // r10
  unsigned int v7; // r9
  _DWORD *small; // r0
  unsigned int v9; // r3
  int v10; // r2
  unsigned int v12; // r7
  unsigned int v13; // r5
  _DWORD *v14; // r11
  unsigned int v15; // r8
  unsigned int v16; // r5

  v3 = a3;
  v6 = a1[1];
  if ( a3 > 0x3B9AC9F0 )
    out_of_memory((int)a1, 1);
  if ( (v3 & 7) != 0 )
    v3 = v3 + 8 - (v3 & 7);
  if ( a2 > 1 )
  {
    *(_DWORD *)(*a1 + 20) = 14;
    *(_DWORD *)(*a1 + 24) = a2;
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  v7 = a2 + 12;
  small = *(_DWORD **)(v6 + 4 * (a2 + 12) + 4);
  if ( small )
  {
    while ( 1 )
    {
      v9 = small[2];
      if ( v3 <= v9 )
        break;
      v14 = small;
      small = (_DWORD *)*small;
      if ( !small )
      {
        v15 = v3 + 16;
        v16 = *((_DWORD *)&first_pool_slop + a2 + 2);
        goto LABEL_13;
      }
    }
  }
  else
  {
    v14 = *(_DWORD **)(v6 + 4 * (a2 + 12) + 4);
    v15 = v3 + 16;
    v16 = *((_DWORD *)&first_pool_slop + a2);
LABEL_13:
    if ( v16 >= 1000000000 - v15 )
      v16 = 1000000000 - v15;
    while ( 1 )
    {
      v12 = v16 + v15;
      small = (_DWORD *)jpeg_get_small(a1, v16 + v15);
      if ( small )
        break;
      while ( 1 )
      {
        v16 >>= 1;
        if ( v16 > 0x31 )
          break;
        v12 = v16 + v15;
        out_of_memory((int)a1, 2);
        small = (_DWORD *)jpeg_get_small(a1, v16 + v15);
        if ( small )
          goto LABEL_18;
      }
    }
LABEL_18:
    v13 = v16 + v3;
    *(_DWORD *)(v6 + 76) += v12;
    if ( !v14 )
      v6 += 4 * v7;
    small[1] = 0;
    small[2] = v13;
    *small = 0;
    if ( v14 )
      *v14 = small;
    else
      *(_DWORD *)(v6 + 4) = small;
    v9 = small[2];
  }
  v10 = small[1];
  small[2] = v9 - v3;
  small[1] = v3 + v10;
  return (char *)small + v10 + 16;
}


// ===== 680c24 request_virt_barray =====
char *__fastcall request_virt_barray(_DWORD *a1, unsigned int a2, char a3, int a4, int a5, int a6)
{
  int v10; // r7
  char *result; // r0

  v10 = a1[1];
  if ( a2 != 1 )
  {
    *(_DWORD *)(*a1 + 20) = 14;
    *(_DWORD *)(*a1 + 24) = a2;
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  result = alloc_small(a1, a2, 0x78u);
  *((_DWORD *)result + 2) = a4;
  *((_DWORD *)result + 1) = a5;
  result[32] = a3;
  result[34] = 0;
  *((_DWORD *)result + 3) = a6;
  *(_DWORD *)result = 0;
  *((_DWORD *)result + 9) = *(_DWORD *)(v10 + 72);
  *(_DWORD *)(v10 + 72) = result;
  return result;
}


// ===== 680ca8 request_virt_sarray =====
char *__fastcall request_virt_sarray(_DWORD *a1, unsigned int a2, char a3, int a4, int a5, int a6)
{
  int v10; // r7
  char *result; // r0

  v10 = a1[1];
  if ( a2 != 1 )
  {
    *(_DWORD *)(*a1 + 20) = 14;
    *(_DWORD *)(*a1 + 24) = a2;
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  result = alloc_small(a1, a2, 0x78u);
  *((_DWORD *)result + 2) = a4;
  *((_DWORD *)result + 1) = a5;
  result[32] = a3;
  result[34] = 0;
  *((_DWORD *)result + 3) = a6;
  *(_DWORD *)result = 0;
  *((_DWORD *)result + 9) = *(_DWORD *)(v10 + 68);
  *(_DWORD *)(v10 + 68) = result;
  return result;
}


// ===== 680d2c jinit_memory_mgr =====
const char *__fastcall jinit_memory_mgr(_DWORD *a1)
{
  _DWORD *small; // r4
  const char *result; // r0
  bool v4; // zf
  int v5; // r3
  int v6; // [sp+0h] [bp-Ch] BYREF
  char v7; // [sp+7h] [bp-5h] BYREF

  a1[1] = 0;
  v6 = jpeg_mem_init();
  small = (_DWORD *)jpeg_get_small(a1, 84);
  if ( !small )
  {
    jpeg_mem_term(a1);
    *(_DWORD *)(*a1 + 20) = 54;
    *(_DWORD *)(*a1 + 24) = 0;
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  small[8] = access_virt_barray;
  small[12] = 1000000000;
  *small = alloc_small;
  small[1] = alloc_large;
  small[2] = alloc_sarray;
  small[3] = alloc_barray;
  small[4] = request_virt_sarray;
  small[5] = request_virt_barray;
  small[6] = realize_virt_arrays;
  small[7] = access_virt_sarray;
  small[9] = free_pool;
  small[10] = self_destruct;
  small[11] = v6;
  small[18] = 0;
  small[19] = 84;
  small[14] = 0;
  small[16] = 0;
  small[13] = 0;
  small[15] = 0;
  small[17] = 0;
  a1[1] = small;
  result = getenv("JPEGMEM");
  if ( result )
  {
    v7 = 120;
    result = (const char *)sscanf(result, "%ld%c", &v6, &v7);
    if ( (int)result > 0 )
    {
      v4 = v7 == 109;
      if ( v7 != 109 )
        v4 = v7 == 77;
      v5 = v6;
      if ( v4 )
        v5 = 1000 * v6;
      small[11] = 1000 * v5;
    }
  }
  return result;
}


// ===== 680ee4 free_pool =====
_DWORD *__fastcall free_pool(_DWORD *result, unsigned int a2)
{
  int v3; // r7
  _DWORD *v4; // r4
  _DWORD *v5; // r2
  _DWORD *v6; // r3
  int v7; // r5
  _DWORD *v8; // r6
  _DWORD *v9; // r8
  _DWORD *v10; // r3
  int v11; // r5
  _DWORD *v12; // r6
  int i; // r5
  int v14; // r5

  v3 = (int)result;
  v4 = (_DWORD *)result[1];
  if ( a2 <= 1 )
  {
    if ( a2 == 1 )
    {
      for ( i = v4[17]; i; i = *(_DWORD *)(i + 36) )
      {
        while ( !*(_BYTE *)(i + 34) )
        {
          i = *(_DWORD *)(i + 36);
          if ( !i )
            goto LABEL_14;
        }
        *(_BYTE *)(i + 34) = 0;
        result = (_DWORD *)(*(int (__fastcall **)(int, int))(i + 48))(v3, i + 40);
      }
LABEL_14:
      v14 = v4[18];
      for ( v4[17] = 0; v14; v14 = *(_DWORD *)(v14 + 36) )
      {
        while ( !*(_BYTE *)(v14 + 34) )
        {
          v14 = *(_DWORD *)(v14 + 36);
          if ( !v14 )
            goto LABEL_19;
        }
        *(_BYTE *)(v14 + 34) = 0;
        result = (_DWORD *)(*(int (__fastcall **)(int, int))(v14 + 48))(v3, v14 + 40);
      }
LABEL_19:
      v4[18] = 0;
    }
  }
  else
  {
    *(_DWORD *)(*result + 20) = 14;
    *(_DWORD *)(*result + 24) = a2;
    result = (_DWORD *)(*(int (__fastcall **)(_DWORD *))*result)(result);
  }
  v5 = &v4[a2 + 14];
  v6 = (_DWORD *)v5[1];
  v5[1] = 0;
  if ( v6 )
  {
    do
    {
      v7 = v6[1] + v6[2] + 16;
      v8 = (_DWORD *)*v6;
      result = (_DWORD *)jpeg_free_large(v3, v6);
      v6 = v8;
      v4[19] -= v7;
    }
    while ( v8 );
  }
  v9 = &v4[a2 + 12];
  v10 = (_DWORD *)v9[1];
  v9[1] = 0;
  if ( v10 )
  {
    do
    {
      v11 = v10[1] + v10[2] + 16;
      v12 = (_DWORD *)*v10;
      result = (_DWORD *)jpeg_free_small(v3, v10);
      v10 = v12;
      v4[19] -= v11;
    }
    while ( v12 );
  }
  return result;
}


// ===== 681074 self_destruct =====
int __fastcall self_destruct(int a1)
{
  free_pool((_DWORD *)a1, 1u);
  free_pool((_DWORD *)a1, 0);
  jpeg_free_small(a1, *(void **)(a1 + 4));
  *(_DWORD *)(a1 + 4) = 0;
  return jpeg_mem_term(a1);
}


// ===== 6810b4 access_virt_barray =====
int __fastcall access_virt_barray(int a1, int a2, unsigned int a3, unsigned int a4, char a5)
{
  unsigned int v6; // r7
  unsigned int v9; // r3
  unsigned int v10; // r3
  bool v11; // cc
  unsigned int v12; // r2
  int v13; // r3
  unsigned int v14; // r6
  unsigned int v15; // r7
  size_t v16; // r9
  int v17; // r10

  v6 = a4 + a3;
  if ( a4 + a3 > *(_DWORD *)(a2 + 4) || a4 > *(_DWORD *)(a2 + 12) || !*(_DWORD *)a2 )
  {
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 22;
    (**(void (__fastcall ***)(int))a1)(a1);
  }
  v9 = *(_DWORD *)(a2 + 24);
  if ( a3 < v9 || v6 > v9 + *(_DWORD *)(a2 + 16) )
  {
    if ( !*(_BYTE *)(a2 + 34) )
    {
      *(_DWORD *)(*(_DWORD *)a1 + 20) = 69;
      (**(void (__fastcall ***)(int))a1)(a1);
    }
    if ( *(_BYTE *)(a2 + 33) )
    {
      do_barray_io(a1, a2, 1);
      *(_BYTE *)(a2 + 33) = 0;
    }
    v10 = *(_DWORD *)(a2 + 24);
    v11 = a3 > v10;
    if ( a3 > v10 )
      *(_DWORD *)(a2 + 24) = a3;
    else
      v10 = *(_DWORD *)(a2 + 16);
    if ( !v11 )
      *(_DWORD *)(a2 + 24) = (v6 - v10) & ~((int)(v6 - v10) >> 31);
    do_barray_io(a1, a2, 0);
  }
  v12 = *(_DWORD *)(a2 + 28);
  if ( v6 <= v12 )
    goto LABEL_25;
  if ( a3 > v12 )
  {
    if ( !a5 )
    {
      v12 = a3;
      goto LABEL_21;
    }
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 22;
    (**(void (__fastcall ***)(int))a1)(a1);
    v12 = a3;
    *(_DWORD *)(a2 + 28) = v6;
LABEL_33:
    if ( *(_BYTE *)(a2 + 32) )
      goto LABEL_22;
LABEL_34:
    if ( !a5 )
    {
      *(_DWORD *)(*(_DWORD *)a1 + 20) = 22;
      (**(void (__fastcall ***)(int))a1)(a1);
      v13 = *(_DWORD *)(a2 + 24);
      return *(_DWORD *)a2 + 4 * (a3 - v13);
    }
    v13 = *(_DWORD *)(a2 + 24);
    goto LABEL_27;
  }
  if ( a5 )
  {
    *(_DWORD *)(a2 + 28) = v6;
    goto LABEL_33;
  }
LABEL_21:
  if ( !*(_BYTE *)(a2 + 32) )
    goto LABEL_34;
LABEL_22:
  v13 = *(_DWORD *)(a2 + 24);
  v14 = v12 - v13;
  v15 = v6 - v13;
  v16 = *(_DWORD *)(a2 + 8) << 7;
  if ( v12 - v13 >= v15 )
    goto LABEL_26;
  v17 = 4 * v14;
  do
  {
    ++v14;
    jzero_far(*(_DWORD *)(*(_DWORD *)a2 + v17), v16);
    v17 += 4;
  }
  while ( v15 > v14 );
LABEL_25:
  v13 = *(_DWORD *)(a2 + 24);
LABEL_26:
  if ( a5 )
LABEL_27:
    *(_BYTE *)(a2 + 33) = 1;
  return *(_DWORD *)a2 + 4 * (a3 - v13);
}


// ===== 6812ac access_virt_sarray =====
int __fastcall access_virt_sarray(int a1, int a2, unsigned int a3, unsigned int a4, char a5)
{
  unsigned int v6; // r7
  unsigned int v9; // r3
  unsigned int v10; // r3
  bool v11; // cc
  unsigned int v12; // r2
  int v13; // r3
  size_t v14; // r9
  unsigned int v15; // r6
  unsigned int v16; // r7
  int v17; // r10

  v6 = a4 + a3;
  if ( a4 + a3 > *(_DWORD *)(a2 + 4) || a4 > *(_DWORD *)(a2 + 12) || !*(_DWORD *)a2 )
  {
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 22;
    (**(void (__fastcall ***)(int))a1)(a1);
  }
  v9 = *(_DWORD *)(a2 + 24);
  if ( a3 < v9 || v6 > v9 + *(_DWORD *)(a2 + 16) )
  {
    if ( !*(_BYTE *)(a2 + 34) )
    {
      *(_DWORD *)(*(_DWORD *)a1 + 20) = 69;
      (**(void (__fastcall ***)(int))a1)(a1);
    }
    if ( *(_BYTE *)(a2 + 33) )
    {
      do_sarray_io(a1, a2, 1);
      *(_BYTE *)(a2 + 33) = 0;
    }
    v10 = *(_DWORD *)(a2 + 24);
    v11 = a3 > v10;
    if ( a3 > v10 )
      *(_DWORD *)(a2 + 24) = a3;
    else
      v10 = *(_DWORD *)(a2 + 16);
    if ( !v11 )
      *(_DWORD *)(a2 + 24) = (v6 - v10) & ~((int)(v6 - v10) >> 31);
    do_sarray_io(a1, a2, 0);
  }
  v12 = *(_DWORD *)(a2 + 28);
  if ( v6 <= v12 )
    goto LABEL_25;
  if ( a3 > v12 )
  {
    if ( !a5 )
    {
      v12 = a3;
      goto LABEL_21;
    }
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 22;
    (**(void (__fastcall ***)(int))a1)(a1);
    v12 = a3;
    *(_DWORD *)(a2 + 28) = v6;
LABEL_33:
    if ( *(_BYTE *)(a2 + 32) )
      goto LABEL_22;
LABEL_34:
    if ( !a5 )
    {
      *(_DWORD *)(*(_DWORD *)a1 + 20) = 22;
      (**(void (__fastcall ***)(int))a1)(a1);
      v13 = *(_DWORD *)(a2 + 24);
      return *(_DWORD *)a2 + 4 * (a3 - v13);
    }
    v13 = *(_DWORD *)(a2 + 24);
    goto LABEL_27;
  }
  if ( a5 )
  {
    *(_DWORD *)(a2 + 28) = v6;
    goto LABEL_33;
  }
LABEL_21:
  if ( !*(_BYTE *)(a2 + 32) )
    goto LABEL_34;
LABEL_22:
  v13 = *(_DWORD *)(a2 + 24);
  v14 = *(_DWORD *)(a2 + 8);
  v15 = v12 - v13;
  v16 = v6 - v13;
  if ( v12 - v13 >= v16 )
    goto LABEL_26;
  v17 = 4 * v15;
  do
  {
    ++v15;
    jzero_far(*(_DWORD *)(*(_DWORD *)a2 + v17), v14);
    v17 += 4;
  }
  while ( v16 > v15 );
LABEL_25:
  v13 = *(_DWORD *)(a2 + 24);
LABEL_26:
  if ( a5 )
LABEL_27:
    *(_BYTE *)(a2 + 33) = 1;
  return *(_DWORD *)a2 + 4 * (a3 - v13);
}


// ===== 6814a0 alloc_large =====
_DWORD *__fastcall alloc_large(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  int v3; // r4
  int v6; // r7
  _DWORD *large; // r5
  int v8; // r8

  v3 = a3;
  v6 = a1[1];
  if ( a3 > 0x3B9AC9F0 )
    out_of_memory((int)a1, 3);
  if ( (v3 & 7) != 0 )
    v3 = v3 + 8 - (v3 & 7);
  if ( a2 > 1 )
  {
    *(_DWORD *)(*a1 + 20) = 14;
    *(_DWORD *)(*a1 + 24) = a2;
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  large = (_DWORD *)jpeg_get_large(a1, v3 + 16);
  if ( !large )
    out_of_memory((int)a1, 4);
  v8 = v6 + 4 * (a2 + 14);
  *(_DWORD *)(v6 + 76) += 16 + v3;
  *large = *(_DWORD *)(v8 + 4);
  large[1] = v3;
  large[2] = 0;
  *(_DWORD *)(v8 + 4) = large;
  return large + 4;
}


// ===== 681560 alloc_barray =====
char *__fastcall alloc_barray(_DWORD *a1, unsigned int a2, int a3, unsigned int a4)
{
  int v5; // r4
  unsigned int v8; // r7
  int v9; // r8
  char *v10; // r9
  unsigned int v11; // r8
  _DWORD *v12; // r0
  unsigned int v13; // r2
  int v14; // r3

  v5 = a3 << 7;
  v8 = 0x3B9AC9F0u / (a3 << 7);
  v9 = a1[1];
  if ( !v8 )
  {
    *(_DWORD *)(*a1 + 20) = 70;
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  if ( (int)v8 >= (int)a4 )
    v8 = a4;
  *(_DWORD *)(v9 + 80) = v8;
  v10 = alloc_small(a1, a2, 4 * a4);
  if ( a4 )
  {
    v11 = 0;
    do
    {
      while ( 1 )
      {
        if ( v8 >= a4 - v11 )
          v8 = a4 - v11;
        v12 = alloc_large(a1, a2, v5 * v8);
        if ( v8 )
          break;
        if ( a4 <= v11 )
          return v10;
      }
      v13 = v8;
      v14 = 0;
      do
      {
        --v13;
        *(_DWORD *)&v10[4 * v11 + v14] = v12;
        v12 = (_DWORD *)((char *)v12 + v5);
        v14 += 4;
      }
      while ( v13 );
      v11 += v8;
    }
    while ( a4 > v11 );
  }
  return v10;
}


// ===== 681640 alloc_sarray =====
char *__fastcall alloc_sarray(_DWORD *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  unsigned int v8; // r7
  int v9; // r8
  char *v10; // r9
  unsigned int v11; // r8
  _DWORD *v12; // r0
  unsigned int v13; // r2
  int v14; // r3

  v8 = 0x3B9AC9F0 / a3;
  v9 = a1[1];
  if ( !(0x3B9AC9F0 / a3) )
  {
    *(_DWORD *)(*a1 + 20) = 70;
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  if ( (int)v8 >= (int)a4 )
    v8 = a4;
  *(_DWORD *)(v9 + 80) = v8;
  v10 = alloc_small(a1, a2, 4 * a4);
  if ( a4 )
  {
    v11 = 0;
    do
    {
      while ( 1 )
      {
        if ( v8 >= a4 - v11 )
          v8 = a4 - v11;
        v12 = alloc_large(a1, a2, a3 * v8);
        if ( v8 )
          break;
        if ( a4 <= v11 )
          return v10;
      }
      v13 = v8;
      v14 = 0;
      do
      {
        --v13;
        *(_DWORD *)&v10[4 * v11 + v14] = v12;
        v12 = (_DWORD *)((char *)v12 + a3);
        v14 += 4;
      }
      while ( v13 );
      v11 += v8;
    }
    while ( a4 > v11 );
  }
  return v10;
}


// ===== 681720 realize_virt_arrays =====
int __fastcall realize_virt_arrays(int result, int a2)
{
  _DWORD *v2; // r5
  _DWORD *v3; // r6
  int *v4; // r3
  int v5; // r4
  int v6; // r7
  int v7; // r2
  bool v8; // zf
  _DWORD *i; // r3
  int v10; // r2
  int v11; // r1
  signed int v12; // r8
  int j; // r4
  unsigned int v14; // r10
  int v15; // r3
  int k; // r4
  unsigned int v17; // r10
  int v18; // r3
  int v19; // r2
  int v20; // r2

  v2 = *(_DWORD **)(result + 4);
  v3 = (_DWORD *)result;
  v4 = (int *)v2[17];
  if ( v4 )
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *v4;
      v8 = *v4 == 0;
      if ( !*v4 )
      {
        v7 = v4[2];
        result = v4[3];
        a2 = v4[1];
      }
      v4 = (int *)v4[9];
      if ( v8 )
      {
        v6 += result * v7;
        v5 += a2 * v7;
      }
    }
    while ( v4 );
  }
  else
  {
    v5 = 0;
    v6 = 0;
  }
  for ( i = (_DWORD *)v2[18]; i; v5 += (result * v10) << 7 )
  {
    while ( *i )
    {
      i = (_DWORD *)i[9];
      if ( !i )
        goto LABEL_14;
    }
    v10 = i[2];
    v11 = i[3];
    result = i[1];
    i = (_DWORD *)i[9];
    v6 += (v11 * v10) << 7;
  }
LABEL_14:
  if ( v6 > 0 )
  {
    result = jpeg_mem_available(v3, v6, v5, v2[19]);
    if ( result < v5 )
    {
      result /= v6;
      if ( result < 1 )
        v12 = 1;
      else
        v12 = result;
    }
    else
    {
      v12 = 1000000000;
    }
    for ( j = v2[17]; j; j = *(_DWORD *)(j + 36) )
    {
      while ( *(_DWORD *)j )
      {
        j = *(_DWORD *)(j + 36);
        if ( !j )
          goto LABEL_26;
      }
      v14 = *(_DWORD *)(j + 4);
      if ( v12 < (int)((v14 - 1) / *(_DWORD *)(j + 12) + 1) )
      {
        v20 = v14 * *(_DWORD *)(j + 8);
        *(_DWORD *)(j + 16) = *(_DWORD *)(j + 12) * v12;
        jpeg_open_backing_store(v3, j + 40, v20);
        v14 = *(_DWORD *)(j + 16);
        *(_BYTE *)(j + 34) = 1;
      }
      else
      {
        *(_DWORD *)(j + 16) = v14;
      }
      result = (int)alloc_sarray(v3, 1u, *(_DWORD *)(j + 8), v14);
      *(_DWORD *)j = result;
      v15 = v2[20];
      *(_DWORD *)(j + 24) = 0;
      *(_DWORD *)(j + 28) = 0;
      *(_DWORD *)(j + 20) = v15;
      *(_BYTE *)(j + 33) = 0;
    }
LABEL_26:
    for ( k = v2[18]; k; k = *(_DWORD *)(k + 36) )
    {
      while ( *(_DWORD *)k )
      {
        k = *(_DWORD *)(k + 36);
        if ( !k )
          return result;
      }
      v17 = *(_DWORD *)(k + 4);
      if ( v12 < (int)((v17 - 1) / *(_DWORD *)(k + 12) + 1) )
      {
        v19 = *(_DWORD *)(k + 8) * v17;
        *(_DWORD *)(k + 16) = *(_DWORD *)(k + 12) * v12;
        jpeg_open_backing_store(v3, k + 40, v19 << 7);
        v17 = *(_DWORD *)(k + 16);
        *(_BYTE *)(k + 34) = 1;
      }
      else
      {
        *(_DWORD *)(k + 16) = v17;
      }
      result = (int)alloc_barray(v3, 1u, *(_DWORD *)(k + 8), v17);
      *(_DWORD *)k = result;
      v18 = v2[20];
      *(_DWORD *)(k + 24) = 0;
      *(_DWORD *)(k + 28) = 0;
      *(_DWORD *)(k + 20) = v18;
      *(_BYTE *)(k + 33) = 0;
    }
  }
  return result;
}


// ===== 681974 create_colorindex =====
int __fastcall create_colorindex(_DWORD *a1)
{
  int v1; // lr
  int v2; // r3
  bool v3; // zf
  int result; // r0
  int v5; // r9
  int v6; // r7
  int v7; // r9
  _BYTE *v8; // r8
  int v9; // r6
  int v10; // r3
  int v11; // r5
  int v12; // r4
  _BYTE *v13; // r2
  _BYTE *v14; // r3
  bool v15; // cc
  int v16; // [sp+4h] [bp-20h]
  int v18; // [sp+Ch] [bp-18h]
  int v19; // [sp+10h] [bp-14h]
  int v20; // [sp+14h] [bp-10h]
  int v21; // [sp+18h] [bp-Ch]
  int v22; // [sp+1Ch] [bp-8h]

  v2 = a1[19];
  v3 = v2 == 1;
  v16 = a1[106];
  if ( v2 == 1 )
  {
    *(_BYTE *)(a1[106] + 28) = 1;
  }
  else
  {
    v1 = a1[106];
    v2 = 0;
  }
  if ( v3 )
    v19 = 510;
  else
    *(_BYTE *)(v1 + 28) = v2;
  if ( !v3 )
    v19 = v2;
  result = (*(int (__fastcall **)(_DWORD *, int, int, _DWORD))(a1[1] + 8))(a1, 1, v19 + 256, a1[25]);
  *(_DWORD *)(v16 + 24) = result;
  v21 = *(_DWORD *)(v16 + 20);
  if ( (int)a1[25] > 0 )
  {
    v18 = 0;
    v20 = v16;
    v22 = 0;
    do
    {
      v5 = *(_DWORD *)(v20 + 32);
      v21 /= v5;
      if ( v19 )
        *(_DWORD *)(*(_DWORD *)(v16 + 24) + v18) += 255;
      v6 = 2 * (v5 - 1);
      v7 = v5 + 254;
      v8 = *(_BYTE **)(*(_DWORD *)(v16 + 24) + v18);
      v9 = 0;
      result = v7 / v6;
      v10 = 0;
      do
      {
        if ( result < v9 )
        {
          v11 = v10 + 1;
          v12 = v7 + 510 * (v10 + 1);
          while ( 1 )
          {
            result = v12 / v6;
            v12 += 510;
            v10 = v11;
            if ( result >= v9 )
              break;
            ++v11;
          }
        }
        v8[v9++] = v10 * v21;
      }
      while ( v9 != 256 );
      if ( v19 )
      {
        v13 = v8;
        result = (int)(v8 - 255);
        v14 = v8;
        do
        {
          *--v13 = *v8;
          v14[256] = v8[255];
          ++v14;
        }
        while ( v13 != (_BYTE *)result );
      }
      v15 = a1[25] <= ++v22;
      v18 += 4;
      v20 += 4;
    }
    while ( !v15 );
  }
  return result;
}


// ===== 681b3c color_quantize =====
_DWORD *__fastcall color_quantize(_DWORD *result, int a2, int a3, int a4)
{
  int v4; // r5
  int v6; // r12
  int v7; // r7
  int v8; // r10
  int i; // r9
  int v10; // r8
  int v11; // r4
  int j; // r6
  char v13; // r2
  int v14; // r3
  int v15; // r1

  v4 = *(_DWORD *)(result[106] + 24);
  v6 = result[25];
  v7 = result[23];
  if ( a4 > 0 )
  {
    v8 = 0;
    for ( i = 0; i != a4; ++i )
    {
      v10 = *(_DWORD *)(a3 + v8);
      v11 = *(_DWORD *)(a2 + v8);
      if ( v7 )
      {
        for ( j = 0; j != v7; ++j )
        {
          if ( v6 > 0 )
          {
            v14 = 0;
            v13 = 0;
            do
            {
              v15 = *(unsigned __int8 *)(v11 + v14);
              result = *(_DWORD **)(v4 + 4 * v14++);
              v13 += *((_BYTE *)result + v15);
            }
            while ( v14 != v6 );
            v11 += v6;
          }
          else
          {
            v13 = 0;
          }
          *(_BYTE *)(v10 + j) = v13;
        }
      }
      v8 += 4;
    }
  }
  return result;
}


// ===== 681bec color_quantize3 =====
int __fastcall color_quantize3(int result, int a2, int a3, int a4)
{
  bool v4; // cc
  int *v5; // r3
  int v7; // r9
  int v8; // r5
  int v9; // r7
  int v10; // r6
  int v11; // r8
  int v12; // r10
  _BYTE *v13; // r1
  unsigned __int8 *v14; // r3
  int v15; // r2

  v4 = a4 <= 0;
  v5 = *(int **)(*(_DWORD *)(result + 424) + 24);
  v7 = *(_DWORD *)(result + 92);
  v8 = v5[2];
  v9 = *v5;
  v10 = v5[1];
  if ( !v4 )
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(_BYTE **)(a3 + v11);
      v14 = *(unsigned __int8 **)(a2 + v11);
      if ( v7 )
      {
        v15 = v7;
        do
        {
          result = *(unsigned __int8 *)(v9 + *v14);
          --v15;
          *v13++ = *(_BYTE *)(v10 + v14[1]) + *(_BYTE *)(v8 + v14[2]) + result;
          v14 += 3;
        }
        while ( v15 );
      }
      ++v12;
      v11 += 4;
    }
    while ( v12 != a4 );
  }
  return result;
}


// ===== 681c8c quantize3_ord_dither =====
int __fastcall quantize3_ord_dither(int result, int a2, int a3, int a4)
{
  _DWORD *v4; // r4
  bool v5; // cc
  int *v6; // r3
  int v7; // r7
  int v8; // r8
  int v9; // r9
  int v10; // r10
  unsigned __int8 *v11; // r3
  int v12; // r1
  int v13; // r2
  bool v14; // zf
  int v15; // [sp+Ch] [bp-2Ch]
  int v16; // [sp+14h] [bp-24h]
  int v17; // [sp+18h] [bp-20h]
  int v18; // [sp+1Ch] [bp-1Ch]
  int v19; // [sp+20h] [bp-18h]
  int v20; // [sp+28h] [bp-10h]

  v4 = *(_DWORD **)(result + 424);
  v5 = a4 <= 0;
  v6 = (int *)v4[6];
  v7 = *(_DWORD *)(result + 92);
  v16 = v6[2];
  v18 = *v6;
  v17 = v6[1];
  if ( !v5 )
  {
    v19 = 0;
    v20 = v4[12];
    do
    {
      v8 = v4[15] + (v20 << 6);
      v9 = v4[13] + (v20 << 6);
      v10 = v4[14] + (v20 << 6);
      v11 = *(unsigned __int8 **)(a2 + 4 * v19);
      if ( v7 )
      {
        v12 = 0;
        v13 = 0;
        v15 = *(_DWORD *)(a3 + 4 * v19);
        do
        {
          *(_BYTE *)(v15 + v12++) = *(_BYTE *)(v17 + *(_DWORD *)(v10 + 4 * v13) + v11[1])
                                  + *(_BYTE *)(v18 + *(_DWORD *)(v9 + 4 * v13) + *v11)
                                  + *(_BYTE *)(v16 + *(_DWORD *)(v8 + 4 * v13) + v11[2]);
          v11 += 3;
          v13 = ((_BYTE)v13 + 1) & 0xF;
        }
        while ( v7 != v12 );
      }
      result = v20;
      v14 = ++v19 == a4;
      v20 = ((_BYTE)v20 + 1) & 0xF;
      v4[12] = v20;
    }
    while ( !v14 );
  }
  return result;
}


// ===== 681dd8 finish_pass_1_quant =====
void finish_pass_1_quant()
{
  ;
}


// ===== 681ddc new_color_map_1_quant =====
int __fastcall new_color_map_1_quant(int a1)
{
  *(_DWORD *)(*(_DWORD *)a1 + 20) = 46;
  return (**(int (__fastcall ***)(int))a1)(a1);
}


// ===== 681dfc jinit_1pass_quantizer =====
int __fastcall jinit_1pass_quantizer(int a1)
{
  _DWORD *v1; // r6
  _DWORD *v2; // r0
  int v3; // r3
  int v4; // r7
  int v5; // r5
  _DWORD *v6; // r10
  int v7; // r2
  int i; // r1
  int v9; // r4
  int j; // r2
  int v11; // r8
  int v12; // r7
  int v13; // r9
  int v14; // r11
  int v15; // r0
  int v16; // r11
  int v17; // r0
  int v18; // r5
  int v19; // r0
  int v20; // r9
  int v21; // r11
  int v22; // r6
  int v23; // r12
  int v24; // r11
  int v25; // r10
  int v26; // r9
  int v27; // r1
  int v28; // r12
  int k; // r3
  int v30; // r2
  bool v31; // cc
  int result; // r0
  _DWORD *v33; // r3
  int v34; // r5
  int v35; // r4
  int m; // r7
  int v37; // [sp+0h] [bp-24h]
  int v38; // [sp+8h] [bp-1Ch]
  _DWORD *v39; // [sp+10h] [bp-14h]
  int v40; // [sp+14h] [bp-10h]
  _DWORD *v41; // [sp+18h] [bp-Ch]
  _DWORD *v42; // [sp+1Ch] [bp-8h]

  v1 = (_DWORD *)a1;
  v2 = (_DWORD *)(**(int (***)(void))(a1 + 4))();
  v1[106] = v2;
  v2[13] = 0;
  *v2 = start_pass_1_quant;
  v2[2] = finish_pass_1_quant;
  v2[3] = new_color_map_1_quant;
  v2[17] = 0;
  if ( (int)v1[25] > 4 )
  {
    *(_DWORD *)(*v1 + 20) = 55;
    *(_DWORD *)(*v1 + 24) = 4;
    (*(void (__fastcall **)(_DWORD *))*v1)(v1);
  }
  v3 = v1[21];
  if ( v3 > 256 )
  {
    *(_DWORD *)(*v1 + 20) = 57;
    *(_DWORD *)(*v1 + 24) = 256;
    (*(void (__fastcall **)(_DWORD *))*v1)(v1);
    v3 = v1[21];
  }
  v4 = 1;
  v39 = (_DWORD *)v1[106];
  v5 = v1[25];
  v6 = v39 + 8;
  while ( 1 )
  {
    if ( v5 > 1 )
    {
      v7 = v4 + 1;
      for ( i = 1; i != v5; ++i )
        v7 *= v4 + 1;
    }
    else
    {
      v7 = v4 + 1;
    }
    if ( v7 > v3 )
      break;
    ++v4;
  }
  if ( v4 == 1 )
  {
    *(_DWORD *)(*v1 + 20) = 56;
    *(_DWORD *)(*v1 + 24) = v7;
    v37 = v3;
    (*(void (__fastcall **)(_DWORD *))*v1)(v1);
    v3 = v37;
  }
  if ( v5 > 0 )
  {
    v9 = 1;
    for ( j = 0; j != v5; ++j )
    {
      v6[j] = v4;
      v9 *= v4;
    }
  }
  else
  {
    v9 = 1;
  }
  v11 = 0;
  v12 = 0;
  if ( v5 > 0 )
    goto LABEL_19;
LABEL_24:
  while ( v11 )
  {
    v11 = 0;
    v12 = 0;
    while ( v5 > v12 )
    {
LABEL_19:
      v13 = v12;
      if ( v1[11] == 2 )
        v13 = RGB_order_3083[v12];
      ++v12;
      v14 = v6[v13];
      v15 = v9 / v14;
      v16 = v14 + 1;
      v17 = v15 * v16;
      if ( v3 < v17 )
        goto LABEL_24;
      v11 = 1;
      v6[v13] = v16;
      v9 = v17;
    }
  }
  v18 = v9;
  if ( v1[25] == 3 )
  {
    v33 = (_DWORD *)*v1;
    v33[6] = v9;
    v33 += 6;
    v33[1] = v39[8];
    v33[2] = v39[9];
    v33[3] = v39[10];
    *(_DWORD *)(*v1 + 20) = 94;
  }
  else
  {
    *(_DWORD *)(*v1 + 20) = 95;
    *(_DWORD *)(*v1 + 24) = v9;
  }
  (*(void (__fastcall **)(_DWORD *, int))(*v1 + 4))(v1, 1);
  v19 = (*(int (__fastcall **)(_DWORD *, int, int, _DWORD))(v1[1] + 8))(v1, 1, v9, v1[25]);
  v20 = v1[25];
  if ( v20 > 0 )
  {
    v40 = 0;
    v41 = v39;
    v42 = v1;
    while ( 1 )
    {
      v21 = v41[8];
      v22 = v9 / v21;
      if ( v21 > 0 )
      {
        v23 = 255 * v21;
        v24 = v21 - 1;
        v25 = 0;
        v38 = v23;
        v26 = 0;
        do
        {
          v27 = v25;
          if ( v18 > v25 )
          {
            v28 = v9 + v25;
            do
            {
              if ( v22 > 0 )
              {
                for ( k = 0; k != v22; ++k )
                {
                  v30 = *(_DWORD *)(v19 + 4 * v40) + k;
                  *(_BYTE *)(v30 + v27) = (v26 + (v24 >> 1)) / v24;
                }
              }
              v28 += v9;
              v27 += v9;
            }
            while ( v18 > v28 - v9 );
          }
          v26 += 255;
          v25 += v22;
        }
        while ( v26 != v38 );
        v20 = v42[25];
      }
      v31 = ++v40 < v20;
      ++v41;
      if ( !v31 )
        break;
      v9 = v22;
    }
    v1 = v42;
  }
  v39[5] = v18;
  v39[4] = v19;
  result = create_colorindex(v1);
  if ( v1[19] == 2 )
  {
    v34 = v1[106];
    v35 = 0;
    for ( m = 2 * (v1[23] + 2); ; *(_DWORD *)(v34 + 64) = (*(int (__fastcall **)(_DWORD *, int, int))(v1[1] + 4))(
                                                            v1,
                                                            1,
                                                            m) )
    {
      result = (int)v1;
      v34 += 4;
      if ( v35 >= v1[25] )
        break;
      ++v35;
    }
  }
  return result;
}


// ===== 68221c start_pass_1_quant =====
int __fastcall start_pass_1_quant(int result)
{
  int v1; // r5
  int v2; // r3
  _DWORD *v3; // r4
  int v4; // r3
  int v5; // r6
  int v6; // r7
  int v7; // r8
  int v8; // r4
  int v9; // r3
  int v10; // r2
  _DWORD *v11; // r10
  int v12; // r11
  int v13; // r9
  int i; // r4
  int v15; // r6
  int v16; // r3
  size_t v17; // r7
  int v18; // r6
  int v19; // r7
  int v20; // r8
  int v21; // [sp+4h] [bp-18h]
  _DWORD *v22; // [sp+8h] [bp-14h]

  v1 = *(_DWORD *)(result + 424);
  v2 = *(_DWORD *)(result + 76);
  v3 = (_DWORD *)result;
  *(_DWORD *)(result + 116) = *(_DWORD *)(v1 + 16);
  *(_DWORD *)(result + 112) = *(_DWORD *)(v1 + 20);
  if ( v2 == 1 )
  {
    if ( *(_DWORD *)(result + 100) == 3 )
      *(_DWORD *)(v1 + 4) = quantize3_ord_dither;
    else
      *(_DWORD *)(v1 + 4) = quantize_ord_dither;
    v4 = *(unsigned __int8 *)(v1 + 28);
    *(_DWORD *)(v1 + 48) = 0;
    if ( !v4 )
      result = create_colorindex((_DWORD *)result);
    v5 = *(_DWORD *)(v1 + 52);
    if ( v5 )
      return result;
    v6 = v3[106];
    if ( (int)v3[25] <= 0 )
      return result;
    v7 = v3[106];
    v22 = v3;
    while ( 1 )
    {
      v8 = *(_DWORD *)(v7 + 32);
      if ( v5 )
      {
        if ( v8 == *(_DWORD *)(v6 + 32) )
        {
          v9 = 0;
LABEL_36:
          v21 = *(_DWORD *)(v6 + 4 * v9 + 52);
          if ( v21 )
            goto LABEL_25;
        }
        else
        {
          v10 = v6;
          v9 = 0;
          while ( 1 )
          {
            ++v9;
            v10 += 4;
            if ( v9 == v5 )
              break;
            if ( v8 == *(_DWORD *)(v10 + 32) )
              goto LABEL_36;
          }
        }
      }
      v11 = &base_dither_matrix;
      v21 = (*(int (__fastcall **)(_DWORD *, int, int))v22[1])(v22, 1, 1024);
      v12 = (v8 - 1) << 9;
      v13 = v21;
      do
      {
        for ( i = 0; i != 16; ++i )
        {
          result = (-510 * *((unsigned __int8 *)v11 + i) + 65025) / v12;
          *(_DWORD *)(v13 + 4 * i) = result;
        }
        v11 += 4;
        v13 += 64;
      }
      while ( v11 != jpeg_natural_order );
LABEL_25:
      ++v5;
      *(_DWORD *)(v7 + 52) = v21;
      v7 += 4;
      if ( v5 >= v22[25] )
        return result;
    }
  }
  if ( v2 )
  {
    if ( v2 != 2 )
    {
      *(_DWORD *)(*(_DWORD *)result + 20) = 48;
      return (**(int (__fastcall ***)(int))result)(result);
    }
    v15 = *(_DWORD *)(v1 + 68);
    *(_DWORD *)(v1 + 4) = quantize_fs_dither;
    *(_BYTE *)(v1 + 84) = 0;
    if ( v15 )
    {
      v16 = *(_DWORD *)(result + 100);
    }
    else
    {
      v19 = *(_DWORD *)(result + 424);
      v20 = 2 * (*(_DWORD *)(result + 92) + 2);
      if ( *(int *)(result + 100) <= 0 )
        return result;
      do
      {
        result = (*(int (__fastcall **)(_DWORD *, int, int))(v3[1] + 4))(v3, 1, v20);
        *(_DWORD *)(v19 + 68) = result;
        v16 = v3[25];
        ++v15;
        v19 += 4;
      }
      while ( v15 < v16 );
    }
    v17 = 2 * (v3[23] + 2);
    if ( v16 > 0 )
    {
      v18 = 0;
      do
      {
        result = jzero_far(*(_DWORD *)(v1 + 68), v17);
        ++v18;
        v1 += 4;
      }
      while ( v3[25] > v18 );
    }
  }
  else if ( *(_DWORD *)(result + 100) == 3 )
  {
    *(_DWORD *)(v1 + 4) = color_quantize3;
  }
  else
  {
    *(_DWORD *)(v1 + 4) = color_quantize;
  }
  return result;
}


// ===== 6824ec quantize_fs_dither =====
size_t __fastcall quantize_fs_dither(_DWORD *a1, int a2, int a3, int a4)
{
  __int16 v4; // r4
  bool v5; // cc
  int v6; // r3
  size_t result; // r0
  unsigned __int8 *v8; // r5
  int v9; // r9
  int v10; // r10
  size_t v11; // r12
  _WORD *v12; // r3
  int v13; // r6
  __int16 v14; // r7
  int v15; // r1
  int v16; // t1
  int v17; // r2
  int v18; // r1
  int v19; // r2
  int v20; // [sp+0h] [bp-4Ch]
  int v21; // [sp+4h] [bp-48h]
  int v22; // [sp+8h] [bp-44h]
  int v23; // [sp+Ch] [bp-40h]
  _WORD *v24; // [sp+10h] [bp-3Ch]
  int v25; // [sp+14h] [bp-38h]
  int v26; // [sp+18h] [bp-34h]
  size_t v27; // [sp+1Ch] [bp-30h]
  int v28; // [sp+20h] [bp-2Ch]
  int v29; // [sp+24h] [bp-28h]
  int v32; // [sp+30h] [bp-1Ch]
  size_t v33; // [sp+34h] [bp-18h]
  int v34; // [sp+38h] [bp-14h]
  int v35; // [sp+3Ch] [bp-10h]

  v5 = a4 <= 0;
  v22 = a1[72];
  v25 = a1[106];
  v6 = a1[25];
  v29 = v6;
  result = a1[23];
  v27 = result;
  if ( !v5 )
  {
    v33 = result - 1;
    v35 = (result - 1) * v6;
    v28 = 0;
    v34 = 2 * (result + 1);
    v32 = 0;
    do
    {
      result = jzero_far(*(_DWORD *)(a3 + v28), v27);
      if ( v29 > 0 )
      {
        v23 = 0;
        v26 = v25;
        do
        {
          result = *(_DWORD *)(a3 + v28);
          v8 = (unsigned __int8 *)(*(_DWORD *)(a2 + v28) + v23);
          if ( *(_BYTE *)(v25 + 84) )
          {
            v9 = -v29;
            v8 += v35;
            result += v33;
            v24 = (_WORD *)(*(_DWORD *)(v26 + 68) + v34);
            v10 = -1;
          }
          else
          {
            v9 = v29;
            v10 = 1;
            v24 = *(_WORD **)(v26 + 68);
          }
          if ( !v27 )
            v4 = 0;
          v21 = *(_DWORD *)(*(_DWORD *)(v25 + 24) + 4 * v23);
          v20 = *(_DWORD *)(*(_DWORD *)(v25 + 16) + 4 * v23);
          if ( v27 )
          {
            v11 = v27;
            v12 = v24;
            v4 = 0;
            v13 = 2 * v10;
            v14 = 0;
            v15 = 0;
            do
            {
              v16 = *v8;
              v8 += v9;
              --v11;
              v17 = *(unsigned __int8 *)(v22 + ((v15 + 8 + (__int16)v12[v10]) >> 4) + v16);
              v18 = *(unsigned __int8 *)(v21 + v17);
              *(_BYTE *)result += v18;
              result += v10;
              v19 = v17 - *(unsigned __int8 *)(v20 + v18);
              *v12 = 3 * v19 + v4;
              v15 = 7 * v19;
              v12 = (_WORD *)((char *)v12 + v13);
              v4 = 5 * v19 + v14;
              v14 = v19;
            }
            while ( v11 );
            v24 = (_WORD *)((char *)v24 + v27 * v13);
          }
          ++v23;
          *v24 = v4;
          v26 += 4;
        }
        while ( v23 != v29 );
      }
      ++v32;
      v28 += 4;
      *(_BYTE *)(v25 + 84) = *(_BYTE *)(v25 + 84) == 0;
    }
    while ( v32 != a4 );
  }
  return result;
}


// ===== 68272c quantize_ord_dither =====
_DWORD *__fastcall quantize_ord_dither(_DWORD *result, int a2, int a3, int a4)
{
  size_t v4; // r4
  int v5; // r5
  int v6; // r11
  int j; // r9
  int v8; // r8
  int v9; // r10
  int v10; // r1
  int v11; // r3
  int v12; // r2
  int v13; // t1
  char v14; // r6
  int v15; // [sp+0h] [bp-24h]
  int v16; // [sp+4h] [bp-20h]
  int v18; // [sp+Ch] [bp-18h]
  int i; // [sp+14h] [bp-10h]
  int v21; // [sp+18h] [bp-Ch]

  v4 = result[23];
  v16 = result[106];
  v5 = result[25];
  if ( a4 > 0 )
  {
    v15 = 0;
    for ( i = 0; i != a4; ++i )
    {
      result = (_DWORD *)jzero_far(*(_DWORD *)(a3 + v15), v4);
      v21 = *(_DWORD *)(v16 + 48);
      if ( v5 > 0 )
      {
        v6 = v16;
        v18 = *(_DWORD *)(v16 + 48) << 6;
        for ( j = 0; j != v5; ++j )
        {
          v8 = *(_DWORD *)(v6 + 52) + v18;
          v9 = *(_DWORD *)(*(_DWORD *)(v16 + 24) + 4 * j);
          result = *(_DWORD **)(a2 + v15);
          v10 = *(_DWORD *)(a3 + v15);
          if ( v4 )
          {
            v11 = 0;
            result = (_DWORD *)((char *)result + j);
            v12 = 0;
            do
            {
              v13 = *(unsigned __int8 *)result;
              result = (_DWORD *)((char *)result + v5);
              v14 = *(_BYTE *)(v9 + *(_DWORD *)(v8 + 4 * v12) + v13);
              v12 = ((_BYTE)v12 + 1) & 0xF;
              *(_BYTE *)(v10 + v11++) += v14;
            }
            while ( v4 != v11 );
          }
          v6 += 4;
        }
      }
      *(_DWORD *)(v16 + 48) = ((_BYTE)v21 + 1) & 0xF;
      v15 += 4;
    }
  }
  return result;
}


// ===== 68285c prescan_quantize =====
int __fastcall prescan_quantize(int result, int a2, int a3, int a4)
{
  int v4; // r10
  int v5; // r7
  int i; // r8
  unsigned __int8 *v7; // r2
  int v8; // r12
  int v9; // r5
  int v10; // r4
  __int16 v11; // r6

  v4 = *(_DWORD *)(result + 92);
  v5 = *(_DWORD *)(*(_DWORD *)(result + 424) + 24);
  if ( a4 > 0 )
  {
    for ( i = 0; i != a4; ++i )
    {
      v7 = *(unsigned __int8 **)(a2 + 4 * i);
      if ( v4 )
      {
        v8 = v4;
        do
        {
          v9 = *(_DWORD *)(v5 + 4 * (*v7 >> 3));
          v10 = 2 * ((v7[2] >> 3) + 32 * (v7[1] >> 2));
          v7 += 3;
          v11 = *(_WORD *)(v9 + v10);
          result = (unsigned __int16)(v11 + 1);
          if ( v11 == -1 )
            result = *(unsigned __int16 *)(v9 + v10);
          --v8;
          *(_WORD *)(v9 + v10) = result;
        }
        while ( v8 );
      }
    }
  }
  return result;
}


// ===== 6828e4 update_box =====
int __fastcall update_box(int result, int *a2)
{
  int v2; // r4
  int v3; // r10
  int v4; // r11
  int v5; // r8
  int v6; // r7
  _DWORD *v7; // r6
  int v8; // r12
  int v9; // r9
  int i; // r5
  int v11; // r3
  int v12; // r1
  int v13; // r3
  int v14; // r2
  _DWORD *v15; // r3
  int v16; // t1
  _DWORD *v17; // r9
  int v18; // r5
  int v19; // r3
  int v20; // r1
  int v21; // r3
  int v22; // r2
  _DWORD *v23; // r3
  int v24; // t1
  _DWORD *v25; // r9
  int v26; // r5
  int v27; // r3
  int v28; // r1
  int v29; // r3
  int v30; // r2
  int v31; // r3
  int v32; // t1
  _DWORD *v33; // r9
  int v34; // r5
  _DWORD *v35; // r2
  int v36; // r3
  int v37; // r1
  int v38; // r9
  int *v39; // r5
  int m; // r12
  int v41; // r3
  int v42; // r1
  int v43; // r3
  int v44; // r2
  int v45; // r3
  int v46; // t1
  int v47; // r9
  int j; // r5
  int v49; // r3
  int v50; // r1
  int v51; // r3
  int v52; // r2
  _DWORD *v53; // r3
  int v54; // t1
  int v55; // r9
  int *v56; // r7
  int k; // r5
  int v58; // r3
  int v59; // r1
  int v60; // r3
  int v61; // r2
  _DWORD *v62; // r3
  int v63; // t1
  int v65; // [sp+4h] [bp-Ch]

  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v65 = *(_DWORD *)(*(_DWORD *)(result + 424) + 24);
  v6 = a2[3];
  v7 = (_DWORD *)a2[4];
  v8 = a2[5];
  if ( *a2 >= v4 )
    goto LABEL_12;
  result = *a2;
  v9 = 0;
LABEL_3:
  v2 = 2 * (_DWORD)&v7[8 * v5];
  for ( i = v5; ; ++i )
  {
    if ( i > v6 )
    {
      ++result;
      v9 += 4;
      if ( v4 >= result )
        goto LABEL_3;
      goto LABEL_66;
    }
    v11 = *(_DWORD *)(v65 + 4 * v3 + v9);
    if ( (int)v7 <= v8 )
      break;
LABEL_10:
    v2 += 64;
  }
  v12 = *(unsigned __int16 *)(v11 + v2);
  v13 = v11 + v2;
  if ( !v12 )
  {
    v14 = v13;
    v15 = v7;
    do
    {
      v15 = (_DWORD *)((char *)v15 + 1);
      if ( v8 < (int)v15 )
        goto LABEL_10;
      v16 = *(unsigned __int16 *)(v14 + 2);
      v14 += 2;
    }
    while ( !v16 );
  }
  if ( v4 > result )
    v3 = result;
  *a2 = result;
  if ( v4 <= result )
  {
    v3 = result;
    goto LABEL_12;
  }
LABEL_66:
  result = v4;
  v47 = 0;
  do
  {
    v2 = 2 * (_DWORD)&v7[8 * v5];
    for ( j = v5; j <= v6; ++j )
    {
      v49 = *(_DWORD *)(v65 + 4 * v4 + v47);
      if ( (int)v7 <= v8 )
      {
        v50 = *(unsigned __int16 *)(v49 + v2);
        v51 = v49 + v2;
        if ( v50 )
        {
LABEL_11:
          v4 = result;
          a2[1] = result;
          goto LABEL_12;
        }
        v52 = v51;
        v53 = v7;
        while ( 1 )
        {
          v53 = (_DWORD *)((char *)v53 + 1);
          if ( v8 < (int)v53 )
            break;
          v54 = *(unsigned __int16 *)(v52 + 2);
          v52 += 2;
          if ( v54 )
            goto LABEL_11;
        }
      }
      v2 += 64;
    }
    --result;
    v47 -= 4;
  }
  while ( result >= v3 );
LABEL_12:
  if ( v5 >= v6 )
    goto LABEL_24;
  result = v5;
  v2 = 2 * (_DWORD)&v7[8 * v5];
  v17 = (_DWORD *)v5;
  while ( 2 )
  {
    v5 = v65 + 4 * v3;
    v18 = v3;
LABEL_15:
    if ( v18 > v4 )
    {
      ++result;
      v2 += 64;
      if ( v6 >= result )
        continue;
      v5 = (int)v17;
      goto LABEL_78;
    }
    break;
  }
  v19 = *(_DWORD *)v5;
  if ( (int)v7 > v8 )
  {
LABEL_21:
    ++v18;
    v5 += 4;
    goto LABEL_15;
  }
  v20 = *(unsigned __int16 *)(v19 + v2);
  v21 = v19 + v2;
  if ( !v20 )
  {
    v22 = v21;
    v23 = v7;
    do
    {
      v23 = (_DWORD *)((char *)v23 + 1);
      if ( v8 < (int)v23 )
        goto LABEL_21;
      v24 = *(unsigned __int16 *)(v22 + 2);
      v22 += 2;
    }
    while ( !v24 );
  }
  if ( v6 > result )
    v5 = result;
  a2[2] = result;
  if ( v6 <= result )
  {
    v5 = result;
    goto LABEL_24;
  }
LABEL_78:
  result = v6;
  v2 = 2 * (_DWORD)&v7[8 * v6];
  v55 = v6;
  while ( 2 )
  {
    v56 = (int *)(v65 + 4 * v3);
    for ( k = v3; k <= v4; ++k )
    {
      v58 = *v56;
      if ( (int)v7 <= v8 )
      {
        v59 = *(unsigned __int16 *)(v58 + v2);
        v60 = v58 + v2;
        if ( v59 )
        {
LABEL_87:
          v6 = result;
          a2[3] = result;
          goto LABEL_24;
        }
        v61 = v60;
        v62 = v7;
        while ( 1 )
        {
          v62 = (_DWORD *)((char *)v62 + 1);
          if ( v8 < (int)v62 )
            break;
          v63 = *(unsigned __int16 *)(v61 + 2);
          v61 += 2;
          if ( v63 )
            goto LABEL_87;
        }
      }
      ++v56;
    }
    --result;
    v2 -= 64;
    if ( result >= v5 )
      continue;
    break;
  }
  v6 = v55;
LABEL_24:
  if ( (int)v7 >= v8 )
    goto LABEL_36;
  v2 = 2 * (_DWORD)&v7[8 * v5];
  result = (int)v7;
  v25 = v7;
  while ( 2 )
  {
    v7 = (_DWORD *)(v65 + 4 * v3);
    v26 = v3;
LABEL_27:
    if ( v26 > v4 )
    {
      ++result;
      v2 += 2;
      if ( v8 >= result )
        continue;
      v7 = v25;
      goto LABEL_53;
    }
    break;
  }
  v27 = *v7;
  if ( v6 < v5 )
  {
LABEL_33:
    ++v26;
    ++v7;
    goto LABEL_27;
  }
  v28 = *(unsigned __int16 *)(v27 + v2);
  v29 = v27 + v2;
  if ( !v28 )
  {
    v30 = v29;
    v31 = v5;
    while ( v6 >= ++v31 )
    {
      v32 = *(unsigned __int16 *)(v30 + 64);
      v30 += 64;
      if ( v32 )
        goto LABEL_50;
    }
    goto LABEL_33;
  }
LABEL_50:
  if ( v8 > result )
    v7 = (_DWORD *)result;
  a2[4] = result;
  if ( v8 <= result )
  {
    v7 = (_DWORD *)result;
    goto LABEL_36;
  }
LABEL_53:
  result = v8;
  v38 = v8;
  v2 = 2 * (32 * v5 + v8);
  while ( 2 )
  {
    v39 = (int *)(v65 + 4 * v3);
    for ( m = v3; m <= v4; ++m )
    {
      v41 = *v39;
      if ( v6 >= v5 )
      {
        v42 = *(unsigned __int16 *)(v41 + v2);
        v43 = v41 + v2;
        if ( v42 )
        {
LABEL_62:
          v8 = result;
          a2[5] = result;
          goto LABEL_36;
        }
        v44 = v43;
        v45 = v5;
        while ( v6 >= ++v45 )
        {
          v46 = *(unsigned __int16 *)(v44 + 64);
          v44 += 64;
          if ( v46 )
            goto LABEL_62;
        }
      }
      ++v39;
    }
    --result;
    v2 -= 2;
    if ( result >= (int)v7 )
      continue;
    break;
  }
  v8 = v38;
LABEL_36:
  if ( v4 < v3 )
    v2 = 0;
  a2[6] = 16 * (v4 - v3) * 16 * (v4 - v3)
        + 12 * (v6 - v5) * 12 * (v6 - v5)
        + 8 * (v8 - (_DWORD)v7) * 8 * (v8 - (_DWORD)v7);
  if ( v4 >= v3 )
  {
    v2 = 0;
    v33 = (_DWORD *)(v65 + 4 * v3);
    do
    {
      if ( v6 >= v5 )
      {
        v34 = v5;
        result = *v33 + 2 * (_DWORD)&v7[8 * v5];
        do
        {
          if ( v8 >= (int)v7 )
          {
            v35 = v7;
            v36 = 0;
            do
            {
              v37 = *(unsigned __int16 *)(result + v36);
              v35 = (_DWORD *)((char *)v35 + 1);
              v36 += 2;
              if ( v37 )
                ++v2;
            }
            while ( v8 >= (int)v35 );
          }
          ++v34;
          result += 64;
        }
        while ( v6 >= v34 );
      }
      ++v3;
      ++v33;
    }
    while ( v4 >= v3 );
  }
  a2[7] = v2;
  return result;
}


// ===== 682dc0 fill_inverse_cmap =====
_BYTE *__fastcall fill_inverse_cmap(int *a1, int a2, int a3, int a4)
{
  int v4; // r0
  int v5; // r1
  int v6; // r6
  int v7; // r5
  int v8; // r8
  int *v9; // r3
  int v10; // r0
  int v11; // r3
  int v12; // r9
  int v13; // r2
  int v14; // r9
  int v15; // r1
  int v16; // r12
  int v17; // r1
  int v18; // r9
  int v19; // r12
  int v20; // r2
  int v21; // r9
  int v22; // r9
  int v23; // r3
  int v24; // r4
  int v25; // r2
  int i; // r3
  _DWORD *v27; // r2
  int v28; // r8
  int v29; // r9
  int v30; // r3
  int v31; // r2
  int v32; // r7
  int *v33; // r11
  int v34; // r10
  int v35; // r9
  int v36; // r6
  _BYTE *v37; // r5
  int *v38; // r12
  int v39; // r1
  int v40; // r0
  int v41; // r2
  int v42; // r3
  int v43; // r2
  int v44; // r1
  int v45; // r12
  _BYTE *v46; // r8
  int k; // r5
  _BYTE *result; // r0
  int m; // r4
  int v50; // r3
  int v51; // r12
  __int16 v52; // r1
  int v53; // r2
  int v54; // [sp+0h] [bp-5DCh]
  _BYTE *v55; // [sp+0h] [bp-5DCh]
  int v56; // [sp+4h] [bp-5D8h]
  int v57; // [sp+4h] [bp-5D8h]
  int v58; // [sp+8h] [bp-5D4h]
  int v59; // [sp+8h] [bp-5D4h]
  int v60; // [sp+Ch] [bp-5D0h]
  int v61; // [sp+Ch] [bp-5D0h]
  int v62; // [sp+10h] [bp-5CCh]
  int v63; // [sp+14h] [bp-5C8h]
  int j; // [sp+14h] [bp-5C8h]
  int v65; // [sp+18h] [bp-5C4h]
  int v67; // [sp+24h] [bp-5B8h]
  int v68; // [sp+28h] [bp-5B4h]
  int v69; // [sp+2Ch] [bp-5B0h]
  int v70; // [sp+3Ch] [bp-5A0h]
  int v71; // [sp+40h] [bp-59Ch]
  int v72; // [sp+44h] [bp-598h]
  int v73; // [sp+4Ch] [bp-590h]
  _BYTE v74[4]; // [sp+54h] [bp-588h] BYREF
  _BYTE v75[764]; // [sp+254h] [bp-388h] BYREF
  _BYTE v76[128]; // [sp+554h] [bp-88h] BYREF

  v70 = a4 >> 2;
  v72 = a2 >> 2;
  v71 = a3 >> 3;
  v4 = 32 * (a2 >> 2);
  v5 = 32 * (a3 >> 3);
  v6 = 32 * (a4 >> 2) + 28;
  v7 = v5 + 30;
  v8 = v4 + 28;
  v68 = v5 + 2;
  v67 = 32 * (a4 >> 2) + 4;
  v69 = v4 + 4;
  v73 = *(_DWORD *)(a1[106] + 24);
  v62 = (v4 + 28 + v4 + 4) >> 1;
  v63 = (v5 + 30 + v5 + 2) >> 1;
  if ( a1[28] <= 0 )
  {
    v65 = 0;
    goto LABEL_27;
  }
  v9 = (int *)a1[29];
  v10 = 0x7FFFFFFF;
  v56 = v9[1];
  v58 = v9[2];
  v60 = *v9;
  v11 = 0;
  v54 = a1[28];
  do
  {
    while ( 1 )
    {
      v20 = *(unsigned __int8 *)(v60 + v11);
      if ( v69 > v20 )
      {
        v12 = v20 - v8;
        v13 = 2 * (v20 - v69) * 2 * (v20 - v69);
        v14 = 2 * v12 * 2 * v12;
        goto LABEL_4;
      }
      if ( v8 >= v20 )
      {
        if ( v62 < v20 )
          v43 = v20 - v69;
        else
          v43 = v20 - v8;
        v14 = 2 * v43 * 2 * v43;
        v13 = 0;
LABEL_4:
        v15 = *(unsigned __int8 *)(v56 + v11);
        if ( v68 > v15 )
          goto LABEL_5;
        goto LABEL_14;
      }
      v21 = v20 - v69;
      v15 = *(unsigned __int8 *)(v56 + v11);
      v13 = 2 * (v20 - v8) * 2 * (v20 - v8);
      v14 = 2 * v21 * 2 * v21;
      if ( v68 > v15 )
      {
LABEL_5:
        v13 += 3 * (v15 - v68) * 3 * (v15 - v68);
        v16 = v14 + 3 * (v15 - v7) * 3 * (v15 - v7);
        goto LABEL_6;
      }
LABEL_14:
      if ( v7 >= v15 )
      {
        if ( v63 < v15 )
          v45 = v15 - v68;
        else
          v45 = v15 - v7;
        v16 = v14 + 3 * v45 * 3 * v45;
LABEL_6:
        v17 = *(unsigned __int8 *)(v58 + v11);
        if ( v67 > v17 )
          goto LABEL_7;
        goto LABEL_16;
      }
      v16 = v14 + 3 * (v15 - v68) * 3 * (v15 - v68);
      v13 += 3 * (v15 - v7) * 3 * (v15 - v7);
      v17 = *(unsigned __int8 *)(v58 + v11);
      if ( v67 > v17 )
      {
LABEL_7:
        v13 += (v17 - v67) * (v17 - v67);
        v18 = v16 + (v17 - v6) * (v17 - v6);
        goto LABEL_8;
      }
LABEL_16:
      if ( v6 >= v17 )
        break;
      v22 = v16 + (v17 - v67) * (v17 - v67);
      v19 = v54;
      *(_DWORD *)&v74[4 * v11++] = v13 + (v17 - v6) * (v17 - v6);
      if ( v10 >= v22 )
        v10 = v22;
      if ( v11 == v54 )
        goto LABEL_20;
    }
    if ( (v6 + v67) >> 1 < v17 )
      v44 = v17 - v67;
    else
      v44 = v17 - v6;
    v18 = v16 + v44 * v44;
LABEL_8:
    v19 = v54;
    *(_DWORD *)&v74[4 * v11++] = v13;
    if ( v10 >= v18 )
      v10 = v18;
  }
  while ( v11 != v54 );
LABEL_20:
  v23 = 0;
  v24 = 0;
  do
  {
    v25 = *(_DWORD *)&v74[4 * v23];
    if ( v25 <= v10 )
      v75[v24 + 512] = v23;
    ++v23;
    if ( v25 <= v10 )
      ++v24;
  }
  while ( v23 != v19 );
  v65 = v24;
LABEL_27:
  for ( i = 0; i != 512; i += 4 )
    *(_DWORD *)&v74[i] = 0x7FFFFFFF;
  if ( v65 )
  {
    for ( j = 0; j != v65; ++j )
    {
      v27 = (_DWORD *)a1[29];
      v28 = (unsigned __int8)v75[j + 512];
      v29 = v67 - *(unsigned __int8 *)(v27[2] + v28);
      v30 = 3 * (v68 - *(unsigned __int8 *)(v27[1] + v28));
      v31 = 2 * (v69 - *(unsigned __int8 *)(*v27 + v28));
      v32 = v29 * v29 + v30 * v30 + v31 * v31;
      v30 *= 24;
      v57 = 32 * (v31 + 8);
      v33 = (int *)v74;
      v34 = v30 + 2160;
      v35 = 16 * (v29 + 4);
      v61 = v30 + 144;
      v59 = v32;
      v55 = v76;
      while ( 1 )
      {
        v36 = v61;
        v37 = v55;
        v38 = v33;
        v39 = v32;
        while ( 1 )
        {
          v40 = v35;
          if ( *v38 > v39 )
          {
            *v38 = v39;
            *v37 = v28;
          }
          v41 = 1;
          v42 = 1;
          do
          {
            v39 += v40;
            v40 += 128;
            if ( v38[v42] > v39 )
            {
              v38[v42] = v39;
              v37[v41] = v28;
            }
            ++v41;
            ++v42;
          }
          while ( v41 != 4 );
          v38 += 4;
          v37 += 4;
          if ( v36 == v34 )
            break;
          v32 += v36;
          v39 = v32;
          v36 += 288;
        }
        v33 += 32;
        v55 += 32;
        if ( v33 == (int *)v75 )
          break;
        v32 = v57 + v59;
        v57 += 512;
        v59 = v32;
      }
    }
  }
  v46 = v76;
  for ( k = 0; k != 16; k += 4 )
  {
    result = v46;
    for ( m = 0; m != 512; m += 64 )
    {
      v50 = 0;
      v51 = *(_DWORD *)(v73 + 16 * v72 + k) + m + 2 * ((v71 << 8) + 4 * v70);
      do
      {
        v52 = (unsigned __int8)result[v50];
        v53 = 2 * v50++;
        *(_WORD *)(v51 + v53) = v52 + 1;
      }
      while ( v50 != 4 );
      result += 4;
    }
    v46 += 32;
  }
  return result;
}


// ===== 683304 pass2_no_dither =====
int __fastcall pass2_no_dither(int *a1, int a2, int a3, int a4)
{
  int result; // r0
  int v6; // r10
  int v7; // r9
  unsigned __int8 *v8; // r4
  _BYTE *v9; // r5
  int v10; // r8
  int v11; // r2
  int v12; // r1
  int v13; // r3
  int v14; // r7
  int v15; // r6
  int i; // [sp+4h] [bp-18h]
  int v17; // [sp+8h] [bp-14h]

  result = a1[106];
  v6 = *(_DWORD *)(result + 24);
  v17 = a1[23];
  if ( a4 > 0 )
  {
    v7 = 0;
    for ( i = 0; i != a4; ++i )
    {
      v8 = *(unsigned __int8 **)(a2 + v7);
      v9 = *(_BYTE **)(a3 + v7);
      if ( v17 )
      {
        v10 = v17;
        while ( 1 )
        {
          v11 = v8[1] >> 2;
          v12 = *v8 >> 3;
          v13 = v8[2] >> 3;
          v14 = *(_DWORD *)(v6 + 4 * v12);
          v8 += 3;
          v15 = 2 * (v13 + 32 * v11);
          if ( *(_WORD *)(v14 + v15) )
          {
            result = *(unsigned __int16 *)(v14 + v15) - 1;
            --v10;
            *v9 = result;
            if ( !v10 )
              break;
          }
          else
          {
            fill_inverse_cmap(a1, v12, v11, v13);
            --v10;
            result = *(unsigned __int16 *)(v14 + v15) - 1;
            *v9 = result;
            if ( !v10 )
              break;
          }
          ++v9;
        }
      }
      v7 += 4;
    }
  }
  return result;
}


// ===== 6833e8 pass2_fs_dither =====
int __fastcall pass2_fs_dither(int *a1, int a2, int a3, int a4)
{
  int *v5; // r0
  int v6; // r12
  int result; // r0
  unsigned __int8 *v8; // r4
  __int16 v9; // r1
  __int16 v10; // r2
  __int16 v11; // r3
  _WORD *v12; // r6
  int v13; // r5
  int v14; // r0
  int v15; // r12
  int v16; // r9
  int v17; // r0
  bool v18; // zf
  int v19; // r7
  int v20; // r8
  int v21; // r10
  int v22; // r8
  int v23; // r10
  int v24; // r7
  int v25; // r12
  int v26; // r0
  _WORD *v27; // r11
  int v28; // [sp+4h] [bp-90h]
  __int16 v29; // [sp+10h] [bp-84h]
  __int16 v30; // [sp+14h] [bp-80h]
  __int16 v31; // [sp+18h] [bp-7Ch]
  int v32; // [sp+1Ch] [bp-78h]
  int v33; // [sp+20h] [bp-74h]
  _BYTE *v34; // [sp+24h] [bp-70h]
  int v35; // [sp+28h] [bp-6Ch]
  int v36; // [sp+2Ch] [bp-68h]
  int v37; // [sp+30h] [bp-64h]
  __int16 v38; // [sp+34h] [bp-60h]
  __int16 v39; // [sp+38h] [bp-5Ch]
  int v40; // [sp+3Ch] [bp-58h]
  int v41; // [sp+50h] [bp-44h]
  int v42; // [sp+54h] [bp-40h]
  int v43; // [sp+58h] [bp-3Ch]
  int v44; // [sp+5Ch] [bp-38h]
  int v45; // [sp+60h] [bp-34h]
  _WORD *v46; // [sp+64h] [bp-30h]
  int v47; // [sp+68h] [bp-2Ch]
  int v49; // [sp+70h] [bp-24h]
  int v50; // [sp+74h] [bp-20h]
  int v54; // [sp+84h] [bp-10h]
  int v55; // [sp+88h] [bp-Ch]
  int v56; // [sp+8Ch] [bp-8h]

  v5 = (int *)a1[29];
  v50 = a1[106];
  v41 = v5[2];
  v45 = *(_DWORD *)(v50 + 24);
  v6 = a1[23];
  v49 = v6;
  v36 = a1[72];
  v35 = *(_DWORD *)(v50 + 40);
  v43 = *v5;
  result = v5[1];
  v42 = result;
  if ( a4 > 0 )
  {
    v55 = 6 * v6 + 6;
    v54 = v6 - 1;
    v47 = 0;
    v56 = 3 * (v6 - 1);
    do
    {
      v8 = *(unsigned __int8 **)(a2 + 4 * v47);
      v34 = *(_BYTE **)(a3 + 4 * v47);
      if ( *(_BYTE *)(v50 + 36) )
      {
        v34 = (_BYTE *)(*(_DWORD *)(a3 + 4 * v47) + v54);
        v46 = (_WORD *)(*(_DWORD *)(v50 + 32) + v55);
        v8 += v56;
        *(_BYTE *)(v50 + 36) = 0;
        v40 = -3;
        v44 = -1;
      }
      else
      {
        v46 = *(_WORD **)(v50 + 32);
        *(_BYTE *)(v50 + 36) = 1;
        v40 = 3;
        v44 = 1;
      }
      result = v49;
      if ( v49 )
      {
        v12 = v46;
        v32 = 2 * v40;
        v13 = 0;
        v33 = v49;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while ( 1 )
        {
          v22 = *(unsigned __int8 *)(v36 + *(_DWORD *)(v35 + 4 * ((v16 + 8 + (__int16)v12[v40]) >> 4)) + *v8);
          v23 = *(unsigned __int8 *)(v36
                                   + *(_DWORD *)(v35 + 4 * ((v15 + 8 + *(__int16 *)((char *)&v46[v40 + 1] + v13)) >> 4))
                                   + v8[1]);
          v24 = *(unsigned __int8 *)(v36
                                   + *(_DWORD *)(v35 + 4 * ((v14 + 8 + *(__int16 *)((char *)&v46[v40 + 2] + v13)) >> 4))
                                   + v8[2]);
          v28 = *(_DWORD *)(v45 + 4 * (v22 >> 3));
          v13 += v32;
          v25 = 2 * ((v24 >> 3) + 32 * (v23 >> 2));
          v26 = *(unsigned __int16 *)(v28 + v25);
          v27 = &v12[v32 / 2u];
          v8 += v40;
          if ( !*(_WORD *)(v28 + v25) )
          {
            fill_inverse_cmap(a1, v22 >> 3, v23 >> 2, v24 >> 3);
            v26 = *(unsigned __int16 *)(v28 + 2 * ((v24 >> 3) + 32 * (v23 >> 2)));
          }
          v17 = v26 - 1;
          v18 = v33-- == 1;
          *v34 = v17;
          v19 = v24 - *(unsigned __int8 *)(v41 + v17);
          v20 = v22 - *(unsigned __int8 *)(v43 + v17);
          v21 = v23 - *(unsigned __int8 *)(v42 + v17);
          *v12 = 3 * v20 + v31;
          *(_WORD *)((char *)v27 + 2 - 2 * v40) = 3 * v21 + v30;
          *(_WORD *)((char *)v27 + 4 - 2 * v40) = 3 * v19 + v29;
          v31 = 5 * v20 + v39;
          v30 = 5 * v21 + v38;
          v29 = 5 * v19 + v37;
          if ( v18 )
            break;
          v15 = 7 * v21;
          v16 = 7 * v20;
          v14 = 7 * v19;
          v39 = v20;
          v34 += v44;
          v38 = v21;
          v37 = v19;
          v12 = (_WORD *)((char *)v12 + v32);
        }
        result = 5 * v19 + v37;
        v46 = (_WORD *)((char *)v46 + v49 * v32);
        v11 = 5 * v20 + v39;
        v10 = 5 * v21 + v38;
        v9 = 5 * v19 + v37;
      }
      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
      }
      v18 = ++v47 == a4;
      v46[2] = v9;
      *v46 = v11;
      v46[1] = v10;
    }
    while ( !v18 );
  }
  return result;
}


// ===== 6837e0 init_error_limit =====
int __fastcall init_error_limit(int a1)
{
  int v1; // r4
  int v2; // r0
  int v3; // r1
  int v4; // r4
  int v5; // r2
  int v6; // r3
  int v7; // r12
  int v8; // r12
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int result; // r0

  v1 = *(_DWORD *)(a1 + 424);
  v2 = (**(int (***)(void))(a1 + 4))();
  *(_DWORD *)(v1 + 40) = v2 + 1020;
  v3 = v2;
  v4 = v2;
  v5 = v2;
  v6 = 0;
  do
  {
    *(_DWORD *)(v5 + 1020) = v6;
    v7 = -v6++;
    *(_DWORD *)(v3 + 1020) = v7;
    v5 += 4;
    v3 -= 4;
  }
  while ( v6 != 16 );
  v8 = v2;
  v9 = v2;
  v10 = 16;
  do
  {
    ++v6;
    *(_DWORD *)(v9 + 1084) = v10;
    *(_DWORD *)(v8 + 956) = -v10;
    v10 += !(v6 & 1);
    v9 += 4;
    v8 -= 4;
  }
  while ( v6 != 48 );
  v11 = v2;
  result = v2 + 832;
  do
  {
    *(_DWORD *)(v11 + 1212) = v10;
    v11 += 4;
    *(_DWORD *)(v4 + 828) = -v10;
    v4 -= 4;
  }
  while ( v11 != result );
  return result;
}


// ===== 683894 finish_pass2 =====
void finish_pass2()
{
  ;
}


// ===== 683898 new_color_map_2_quant =====
int __fastcall new_color_map_2_quant(int result)
{
  *(_BYTE *)(*(_DWORD *)(result + 424) + 28) = 1;
  return result;
}


// ===== 6838a8 jinit_2pass_quantizer =====
int __fastcall jinit_2pass_quantizer(int a1)
{
  _DWORD *v2; // r0
  _DWORD *v3; // r5
  int v4; // r6
  int v5; // r7
  int result; // r0
  int v7; // r6
  int v8; // r2

  v2 = (_DWORD *)(**(int (***)(void))(a1 + 4))();
  *(_DWORD *)(a1 + 424) = v2;
  *v2 = start_pass_2_quant;
  v2[3] = new_color_map_2_quant;
  v2[10] = 0;
  v2[8] = 0;
  v3 = v2;
  if ( *(_DWORD *)(a1 + 100) != 3 )
  {
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 47;
    (**(void (__fastcall ***)(int))a1)(a1);
  }
  v4 = 0;
  v5 = (**(int (__fastcall ***)(int, int, int))(a1 + 4))(a1, 1, 128);
  for ( v3[6] = v5; ; v5 = v3[6] )
  {
    result = (*(int (__fastcall **)(int, int, int))(*(_DWORD *)(a1 + 4) + 4))(a1, 1, 4096);
    *(_DWORD *)(v5 + v4) = result;
    v4 += 4;
    if ( v4 == 128 )
      break;
  }
  *((_BYTE *)v3 + 28) = 1;
  if ( *(_BYTE *)(a1 + 90) )
  {
    v7 = *(_DWORD *)(a1 + 84);
    if ( v7 <= 7 )
    {
      *(_DWORD *)(*(_DWORD *)a1 + 20) = 56;
      *(_DWORD *)(*(_DWORD *)a1 + 24) = 8;
      (**(void (__fastcall ***)(int))a1)(a1);
    }
    else if ( v7 > 256 )
    {
      *(_DWORD *)(*(_DWORD *)a1 + 20) = 57;
      *(_DWORD *)(*(_DWORD *)a1 + 24) = 256;
      (**(void (__fastcall ***)(int))a1)(a1);
    }
    result = (*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)(a1 + 4) + 8))(a1, 1, v7, 3);
    v3[5] = v7;
    v3[4] = result;
  }
  else
  {
    v3[4] = *(unsigned __int8 *)(a1 + 90);
  }
  if ( *(_DWORD *)(a1 + 76) )
  {
    v8 = 6 * *(_DWORD *)(a1 + 92);
    *(_DWORD *)(a1 + 76) = 2;
    v3[8] = (*(int (__fastcall **)(int, int, int))(*(_DWORD *)(a1 + 4) + 4))(a1, 1, v8 + 12);
    return init_error_limit(a1);
  }
  return result;
}


// ===== 683a64 start_pass_2_quant =====
_DWORD *__fastcall start_pass_2_quant(_DWORD *result, int a2)
{
  int v2; // r3
  int v3; // r5
  _DWORD *v4; // r6
  bool v5; // zf
  int v6; // r4
  int i; // r6
  int v8; // r0
  int v9; // r3
  int v10; // r0
  size_t v11; // r7

  v2 = result[19];
  v3 = result[106];
  v4 = result;
  v5 = v2 == 0;
  if ( v2 )
    v2 = 2;
  v6 = *(_DWORD *)(v3 + 24);
  if ( !v5 )
    result[19] = v2;
  if ( a2 )
  {
    *(_DWORD *)(v3 + 8) = finish_pass1;
    *(_DWORD *)(v3 + 4) = prescan_quantize;
    *(_BYTE *)(v3 + 28) = 1;
LABEL_7:
    for ( i = 0; i != 128; i += 4 )
    {
      v8 = *(_DWORD *)(v6 + i);
      result = (_DWORD *)jzero_far(v8, 0x1000u);
    }
    *(_BYTE *)(v3 + 28) = 0;
    return result;
  }
  if ( result[19] == 2 )
    *(_DWORD *)(v3 + 4) = pass2_fs_dither;
  else
    *(_DWORD *)(v3 + 4) = pass2_no_dither;
  *(_DWORD *)(v3 + 8) = finish_pass2;
  v9 = result[28];
  if ( v9 <= 0 )
  {
    *(_DWORD *)(*result + 20) = 56;
    *(_DWORD *)(*result + 24) = 1;
    result = (_DWORD *)(*(int (__fastcall **)(_DWORD *))*result)(result);
  }
  else if ( v9 > 256 )
  {
    *(_DWORD *)(*result + 20) = 57;
    *(_DWORD *)(*result + 24) = 256;
    result = (_DWORD *)(*(int (__fastcall **)(_DWORD *))*result)(result);
  }
  if ( v4[19] == 2 )
  {
    v10 = *(_DWORD *)(v3 + 32);
    v11 = 6 * v4[23] + 12;
    if ( !v10 )
    {
      v10 = (*(int (__fastcall **)(_DWORD *, int, size_t))(v4[1] + 4))(v4, 1, v11);
      *(_DWORD *)(v3 + 32) = v10;
    }
    result = (_DWORD *)jzero_far(v10, v11);
    if ( !*(_DWORD *)(v3 + 40) )
      result = (_DWORD *)init_error_limit((int)v4);
    *(_BYTE *)(v3 + 36) = 0;
  }
  if ( *(_BYTE *)(v3 + 28) )
    goto LABEL_7;
  return result;
}


// ===== 683c08 finish_pass1 =====
int __fastcall finish_pass1(_DWORD *a1)
{
  int (**v1)(void); // r3
  int v2; // r4
  int *v3; // r0
  int *v4; // r6
  int *v5; // r5
  int i; // r7
  int *v7; // r1
  int *v8; // r3
  int v9; // r0
  int j; // r12
  int v11; // r2
  int v12; // r0
  int v13; // r12
  int v14; // r8
  int v15; // lr
  int v16; // r3
  int v17; // r2
  int v18; // r10
  int v19; // r11
  int v20; // r7
  int v21; // r4
  int v22; // r6
  int v23; // r0
  int v24; // r5
  int v25; // r9
  int v26; // lr
  int v27; // r3
  int v28; // r1
  int v29; // r2
  int v30; // r12
  bool v31; // cc
  int v32; // r3
  int result; // r0
  int *v34; // r3
  int v35; // r0
  int k; // r12
  int v37; // r2
  int v38; // [sp+4h] [bp-30h]
  int v39; // [sp+4h] [bp-30h]
  int v40; // [sp+8h] [bp-2Ch]
  _DWORD *v41; // [sp+Ch] [bp-28h]
  int v43; // [sp+18h] [bp-1Ch]
  int *v44; // [sp+1Ch] [bp-18h]
  int v45; // [sp+24h] [bp-10h]
  int v46; // [sp+28h] [bp-Ch]
  int v47; // [sp+2Ch] [bp-8h]

  v47 = a1[106];
  v1 = (int (**)(void))a1[1];
  a1[29] = *(_DWORD *)(v47 + 16);
  v2 = *(_DWORD *)(v47 + 20);
  v3 = (int *)(*v1)();
  v3[3] = 63;
  v4 = v3;
  v3[4] = 0;
  v3[5] = 31;
  *v3 = 0;
  v3[1] = 31;
  v3[2] = 0;
  update_box((int)a1, v3);
  if ( v2 > 1 )
  {
    v5 = v4 + 8;
    for ( i = 1; i != v2; ++i )
    {
      if ( v2 >= 2 * i )
      {
        v7 = nullptr;
        v8 = v4;
        v9 = 0;
        for ( j = 0; ; j = v11 )
        {
          v11 = v8[7];
          if ( v11 <= j || v8[6] <= 0 )
          {
            ++v9;
            v11 = j;
            if ( v9 >= i )
              goto LABEL_13;
          }
          else
          {
            v7 = v8;
            if ( ++v9 >= i )
              goto LABEL_13;
          }
          v8 += 8;
        }
      }
      v7 = nullptr;
      v34 = v4;
      v35 = 0;
      for ( k = 0; ; k = v37 )
      {
        v37 = v34[6];
        ++v35;
        if ( v37 <= k )
          v37 = k;
        else
          v7 = v34;
        if ( v35 >= i )
          break;
        v34 += 8;
      }
LABEL_13:
      if ( !v7 )
        break;
      v5[1] = v7[1];
      v5[3] = v7[3];
      v5[5] = v7[5];
      *v5 = *v7;
      v5[2] = v7[2];
      v5[4] = v7[4];
      v12 = v7[3];
      v13 = v7[2];
      v14 = *v7;
      v15 = v7[1];
      v38 = v7[5];
      v16 = 12 * (v12 - v13);
      v17 = v7[4];
      if ( 16 * (v15 - *v7) <= v16 )
      {
        v18 = 1;
      }
      else
      {
        v16 = 16 * (v15 - v14);
        v18 = 0;
      }
      if ( 8 * (v38 - v17) <= v16 )
      {
        if ( v18 == 1 )
        {
          v7[3] = (v13 + v12) / 2;
          v5[2] = (v13 + v12) / 2 + 1;
        }
        else
        {
          v7[1] = (v14 + v15) / 2;
          *v5 = (v14 + v15) / 2 + 1;
        }
      }
      else
      {
        v7[5] = (v17 + v38) / 2;
        v5[4] = (v17 + v38) / 2 + 1;
      }
      update_box((int)a1, v7);
      update_box((int)a1, v5);
      v5 += 8;
    }
    v45 = i;
  }
  else
  {
    v45 = 1;
  }
  v44 = v4;
  v46 = 0;
  do
  {
    v40 = *v44;
    v43 = v44[1];
    v39 = v44[3];
    v19 = v44[4];
    v20 = v44[5];
    if ( *v44 > v43 )
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
    }
    else
    {
      v21 = 0;
      v41 = (_DWORD *)(*(_DWORD *)(a1[106] + 24) + 4 * v40);
      v22 = 0;
      v23 = 0;
      v24 = 0;
      do
      {
        if ( v44[2] <= v39 )
        {
          v25 = v44[2];
          v26 = *v41 + 2 * (v19 + 32 * v25);
          do
          {
            if ( v19 <= v20 )
            {
              v27 = v44[4];
              v28 = 0;
              do
              {
                v29 = *(unsigned __int16 *)(v26 + v28);
                v30 = 8 * v27++;
                if ( *(_WORD *)(v26 + v28) )
                {
                  v21 += v29 * (v30 + 4);
                  v23 += v29 * (8 * v40 + 4);
                  v22 += v29 * (4 * v25 + 2);
                  v24 += v29;
                }
                v28 += 2;
              }
              while ( v20 >= v27 );
            }
            ++v25;
            v26 += 64;
          }
          while ( v39 >= v25 );
        }
        v31 = v43 < ++v40;
        ++v41;
      }
      while ( !v31 );
    }
    *(_BYTE *)(*(_DWORD *)a1[29] + v46) = ((v24 >> 1) + v23) / v24;
    *(_BYTE *)(*(_DWORD *)(a1[29] + 4) + v46) = ((v24 >> 1) + v22) / v24;
    *(_BYTE *)(*(_DWORD *)(a1[29] + 8) + v46++) = ((v24 >> 1) + v21) / v24;
    v44 += 8;
  }
  while ( v46 < v45 );
  v32 = *a1;
  a1[28] = v45;
  *(_DWORD *)(v32 + 20) = 96;
  *(_DWORD *)(*a1 + 24) = v45;
  result = (*(int (__fastcall **)(_DWORD *, int))(*a1 + 4))(a1, 1);
  *(_BYTE *)(v47 + 28) = 1;
  return result;
}


// ===== 684048 jdiv_round_up =====
int __fastcall jdiv_round_up(int a1, int a2)
{
  return (a1 - 1 + a2) / a2;
}


// ===== 68405c jround_up =====
int __fastcall jround_up(int a1, int a2)
{
  return a1 - 1 + a2 - (a1 - 1 + a2) % a2;
}


// ===== 684078 jzero_far =====
void *__fastcall jzero_far(void *a1, size_t a2)
{
  return LC_API_MEMSET_0(a1, 0, a2);
}


// ===== 684084 jcopy_block_row =====
void *__fastcall jcopy_block_row(void *a1, void *a2, int a3)
{
  return memcpy(a2, a1, a3 << 7);
}


// ===== 684098 jcopy_sample_rows =====
char *__fastcall jcopy_sample_rows(char *result, int a2, int a3, int a4, int a5, size_t a6)
{
  char *v6; // r8
  int v7; // r7
  int v8; // r5
  int v9; // r4

  if ( a5 > 0 )
  {
    v6 = &result[4 * a2];
    v7 = a3 + 4 * a4;
    v8 = a5;
    v9 = 0;
    do
    {
      result = (char *)memcpy(*(void **)(v7 + v9), *(const void **)&v6[v9], a6);
      --v8;
      v9 += 4;
    }
    while ( v8 );
  }
  return result;
}


// ===== 6840dc png_get_io_ptr =====
int __fastcall png_get_io_ptr(int result)
{
  if ( result )
    return *(_DWORD *)(result + 276);
  return result;
}


// ===== 6840e8 png_init_io =====
int __fastcall png_init_io(int result, int a2)
{
  if ( result )
    *(_DWORD *)(result + 276) = a2;
  return result;
}


// ===== 6840f4 png_get_copyright =====
const char *png_get_copyright()
{
  return "\n"
         " libpng version 1.2.32 - September 18, 2008\n"
         "   Copyright (c) 1998-2008 Glenn Randers-Pehrson\n"
         "   Copyright (c) 1996-1997 Andreas Dilger\n"
         "   Copyright (c) 1995-1996 Guy Eric Schalnat, Group 42, Inc.\n";
}


// ===== 684104 png_get_libpng_ver =====
const char *png_get_libpng_ver()
{
  return "1.2.32";
}


// ===== 684114 png_get_header_ver =====
const char *png_get_header_ver()
{
  return "1.2.32";
}


// ===== 684124 png_get_header_version =====
const char *png_get_header_version()
{
  return " libpng version 1.2.32 - September 18, 2008\n\n";
}


// ===== 684134 png_access_version_number =====
int png_access_version_number()
{
  return 10232;
}


// ===== 68413c png_mmx_support =====
int png_mmx_support()
{
  return -1;
}


// ===== 684144 png_reset_zstream =====
int __fastcall png_reset_zstream(int a1)
{
  if ( a1 )
    return inflateReset((_DWORD *)(a1 + 308));
  else
    return -2;
}


// ===== 68415c png_handle_as_unknown =====
int __fastcall png_handle_as_unknown(int a1, void *a2)
{
  bool v2; // zf
  int v4; // r4
  int v5; // r3
  int v6; // r8
  int v7; // r7
  int v8; // r5
  int v9; // r0

  v2 = a1 == 0;
  if ( a1 )
    v2 = a2 == nullptr;
  if ( v2 )
    return 0;
  v4 = 0;
  v5 = *(_DWORD *)(a1 + 736);
  if ( v5 <= 0 )
    return 0;
  v6 = -5 * v5;
  v7 = *(_DWORD *)(a1 + 740) + 5 * (v5 - 1);
  while ( 1 )
  {
    v8 = v7 + v4;
    v9 = memcmp(a2, (const void *)(v7 + v4), 4u);
    v4 -= 5;
    if ( !v9 )
      break;
    if ( v4 == v6 )
      return 0;
  }
  return *(unsigned __int8 *)(v8 + 4);
}


// ===== 6841d4 png_sig_cmp =====
int __fastcall png_sig_cmp(int a1, unsigned int a2, size_t a3)
{
  _DWORD v4[2]; // [sp+4h] [bp-Ch] BYREF

  v4[0] = 1196314761;
  v4[1] = 169478669;
  if ( a3 <= 8 )
  {
    if ( !a3 )
      return -1;
  }
  else
  {
    a3 = 8;
  }
  if ( a2 > 7 )
    return -1;
  if ( a3 + a2 > 8 )
    a3 = 8 - a2;
  return memcmp((const void *)(a1 + a2), (char *)v4 + a2, a3);
}


// ===== 68427c png_check_sig =====
bool __fastcall png_check_sig(int a1, size_t a2)
{
  return png_sig_cmp(a1, 0, a2) == 0;
}


// ===== 684298 png_convert_to_rfc1123 =====
int __fastcall png_convert_to_rfc1123(int a1, unsigned __int16 *a2)
{
  char *v5; // r2

  if ( !a1 )
    return 0;
  v5 = *(char **)(a1 + 720);
  if ( !v5 )
  {
    v5 = (char *)png_malloc();
    *(_DWORD *)(a1 + 720) = v5;
  }
  snprintf(
    v5,
    0x1Du,
    "%d %s %d %02d:%02d:%02d +0000",
    *((_BYTE *)a2 + 3) & 0x1F,
    &short_months_5011[4 * ((*((unsigned __int8 *)a2 + 2) - 1) % 12)],
    *a2,
    *((_BYTE *)a2 + 4) % 0x18u,
    *((_BYTE *)a2 + 5) % 0x3Cu,
    *((_BYTE *)a2 + 6) % 0x3Du);
  return *(_DWORD *)(a1 + 720);
}


// ===== 6843ac png_zfree =====
// attributes: thunk
int png_zfree()
{
  return png_free();
}


// ===== 6843b0 png_free_data =====
int __fastcall png_free_data(int result, int a2, int a3, int a4)
{
  bool v4; // zf
  int v6; // r7
  int v9; // r5
  int v10; // r3
  int v11; // r2
  int v12; // r1
  int v13; // r1
  int v14; // r3
  int v15; // r2
  int v16; // r1
  int v17; // r3
  int v18; // r2
  int v19; // r2
  int v20; // r1
  int v21; // r7
  int v22; // r2
  int v23; // r2
  int v24; // r1
  int v25; // r7
  int v26; // r2
  int v27; // r1
  int v28; // r1
  int v29; // r3
  int v30; // r7
  int v31; // r2
  int v32; // r7

  v4 = result == 0;
  if ( result )
    v4 = a2 == 0;
  v6 = v4;
  v9 = result;
  if ( !v4 )
  {
    v10 = *(_DWORD *)(a2 + 184);
    v11 = v10;
    if ( (v10 & 0x4000 & (unsigned __int16)a3) != 0 )
    {
      if ( a4 == -1 )
      {
        if ( *(int *)(a2 + 48) > 0 )
        {
          do
            png_free_data(v9, a2, 0x4000, v6++);
          while ( *(_DWORD *)(a2 + 48) > v6 );
        }
        result = png_free(v9, *(_DWORD *)(a2 + 56), v11);
        v10 = *(_DWORD *)(a2 + 184);
        *(_DWORD *)(a2 + 48) = 0;
        *(_DWORD *)(a2 + 56) = 0;
        v11 = v10;
      }
      else
      {
        v12 = *(_DWORD *)(a2 + 56);
        if ( v12 )
        {
          v13 = *(_DWORD *)(v12 + 16 * a4 + 4);
          if ( v13 )
          {
            result = png_free(result, v13, v10);
            *(_DWORD *)(*(_DWORD *)(a2 + 56) + 16 * a4 + 4) = v6;
            v10 = *(_DWORD *)(a2 + 184);
            v11 = v10;
          }
        }
      }
    }
    if ( (a3 & 0x2000 & (unsigned __int16)v10) != 0 )
    {
      result = png_free(v9, *(_DWORD *)(a2 + 76), v11);
      v10 = *(_DWORD *)(a2 + 184);
      *(_DWORD *)(a2 + 8) &= ~0x10u;
      *(_DWORD *)(a2 + 76) = 0;
      v11 = v10;
    }
    if ( (a3 & 0x100 & (unsigned __int16)v10) != 0 )
    {
      v11 = v10;
      *(_DWORD *)(a2 + 8) &= ~0x4000u;
    }
    if ( (a3 & 0x80 & (unsigned __int8)v10) != 0 )
    {
      png_free(v9, *(_DWORD *)(a2 + 160), v11);
      result = png_free(v9, *(_DWORD *)(a2 + 172), v22);
      v24 = *(_DWORD *)(a2 + 176);
      v25 = 0;
      *(_DWORD *)(a2 + 160) = 0;
      *(_DWORD *)(a2 + 172) = 0;
      if ( v24 )
      {
        if ( *(_BYTE *)(a2 + 181) )
        {
          while ( 1 )
          {
            png_free(v9, *(_DWORD *)(v24 + 4 * v25), v23);
            *(_DWORD *)(*(_DWORD *)(a2 + 176) + 4 * v25++) = 0;
            if ( *(unsigned __int8 *)(a2 + 181) <= v25 )
              break;
            v24 = *(_DWORD *)(a2 + 176);
          }
          v24 = *(_DWORD *)(a2 + 176);
        }
        result = png_free(v9, v24, v23);
        *(_DWORD *)(a2 + 176) = 0;
      }
      v11 = *(_DWORD *)(a2 + 184);
      *(_DWORD *)(a2 + 8) &= ~0x400u;
      if ( (a3 & 0x10 & (unsigned __int8)v11) == 0 )
      {
LABEL_18:
        if ( (a3 & 0x20 & (unsigned __int8)v11) == 0 )
          goto LABEL_22;
LABEL_19:
        if ( a4 == -1 )
        {
          v29 = *(_DWORD *)(a2 + 216);
          if ( v29 )
          {
            if ( v29 > 0 )
            {
              v30 = 0;
              do
                png_free_data(v9, a2, 32, v30++);
              while ( *(_DWORD *)(a2 + 216) > v30 );
            }
            result = png_free(v9, *(_DWORD *)(a2 + 212), v11);
            *(_DWORD *)(a2 + 216) = 0;
            *(_DWORD *)(a2 + 212) = 0;
          }
          *(_DWORD *)(a2 + 8) &= ~0x2000u;
        }
        else
        {
          v14 = *(_DWORD *)(a2 + 212);
          if ( v14 )
          {
            png_free(v9, *(_DWORD *)(v14 + 16 * a4), v11);
            result = png_free(v9, *(_DWORD *)(*(_DWORD *)(a2 + 212) + 16 * a4 + 8), v15);
            *(_DWORD *)(*(_DWORD *)(a2 + 212) + 16 * a4) = 0;
            v11 = *(_DWORD *)(a2 + 212);
            *(_DWORD *)(v11 + 16 * a4 + 8) = 0;
          }
        }
LABEL_22:
        v16 = *(_DWORD *)(v9 + 820);
        if ( v16 )
        {
          result = png_free(v9, v16, v11);
          *(_DWORD *)(v9 + 820) = 0;
        }
        v17 = *(_DWORD *)(a2 + 184);
        if ( (v17 & 0x200 & (unsigned __int16)a3) != 0 )
        {
          if ( a4 == -1 )
          {
            v31 = *(_DWORD *)(a2 + 192);
            if ( v31 )
            {
              if ( v31 > 0 )
              {
                v32 = 0;
                do
                  png_free_data(v9, a2, 512, v32++);
                while ( *(_DWORD *)(a2 + 192) > v32 );
              }
              result = png_free(v9, *(_DWORD *)(a2 + 188), v31);
              v17 = *(_DWORD *)(a2 + 184);
              *(_DWORD *)(a2 + 192) = 0;
              *(_DWORD *)(a2 + 188) = 0;
            }
          }
          else
          {
            v18 = *(_DWORD *)(a2 + 188);
            if ( v18 )
            {
              result = png_free(v9, *(_DWORD *)(v18 + 20 * a4 + 8), v18 + 20 * a4);
              *(_DWORD *)(*(_DWORD *)(a2 + 188) + 20 * a4 + 8) = 0;
              v17 = *(_DWORD *)(a2 + 184);
            }
          }
        }
        if ( (a3 & 8 & (unsigned __int8)v17) != 0 )
        {
          result = png_free(v9, *(_DWORD *)(a2 + 124), a3 & 8);
          v17 = *(_DWORD *)(a2 + 184);
          *(_DWORD *)(a2 + 8) &= ~0x40u;
          *(_DWORD *)(a2 + 124) = 0;
          if ( (a3 & 0x1000 & (unsigned __int16)v17) == 0 )
          {
LABEL_30:
            v19 = a3 & 0x40;
            if ( (a3 & 0x40 & (unsigned __int8)v17) != 0 )
            {
LABEL_31:
              v20 = *(_DWORD *)(a2 + 248);
              if ( v20 )
              {
                if ( *(int *)(a2 + 4) > 0 )
                {
                  v21 = 0;
                  while ( 1 )
                  {
                    png_free(v9, *(_DWORD *)(v20 + 4 * v21), v19);
                    *(_DWORD *)(*(_DWORD *)(a2 + 248) + 4 * v21++) = 0;
                    if ( *(_DWORD *)(a2 + 4) <= v21 )
                      break;
                    v20 = *(_DWORD *)(a2 + 248);
                  }
                  v20 = *(_DWORD *)(a2 + 248);
                }
                result = png_free(v9, v20, v19);
                v17 = *(_DWORD *)(a2 + 184);
                *(_DWORD *)(a2 + 248) = 0;
              }
              *(_DWORD *)(a2 + 8) &= ~0x8000u;
            }
LABEL_39:
            if ( a4 == -1 )
              *(_DWORD *)(a2 + 184) = v17 & ~a3;
            else
              *(_DWORD *)(a2 + 184) = v17 & (~a3 | 0x4220);
            return result;
          }
        }
        else if ( (a3 & 0x1000 & (unsigned __int16)v17) == 0 )
        {
          goto LABEL_30;
        }
        result = png_zfree();
        v28 = *(_DWORD *)(a2 + 8);
        v17 = *(_DWORD *)(a2 + 184);
        *(_WORD *)(a2 + 20) = 0;
        *(_DWORD *)(a2 + 16) = 0;
        v19 = a3 & 0x40;
        *(_DWORD *)(a2 + 8) = v28 & 0xFFFFFFF7;
        if ( (a3 & 0x40 & (unsigned __int8)v17) != 0 )
          goto LABEL_31;
        goto LABEL_39;
      }
    }
    else if ( (a3 & 0x10 & (unsigned __int8)v11) == 0 )
    {
      goto LABEL_18;
    }
    png_free(v9, *(_DWORD *)(a2 + 196), v11);
    result = png_free(v9, *(_DWORD *)(a2 + 200), v26);
    v27 = *(_DWORD *)(a2 + 8);
    v11 = *(_DWORD *)(a2 + 184);
    *(_DWORD *)(a2 + 200) = 0;
    *(_DWORD *)(a2 + 196) = 0;
    *(_DWORD *)(a2 + 8) = v27 & 0xFFFFEFFF;
    if ( (a3 & 0x20 & (unsigned __int8)v11) == 0 )
      goto LABEL_22;
    goto LABEL_19;
  }
  return result;
}


// ===== 684874 png_data_freer =====
int __fastcall png_data_freer(int result, int a2, int a3, int a4)
{
  bool v4; // zf

  v4 = result == 0;
  if ( result )
    v4 = a2 == 0;
  if ( !v4 )
  {
    if ( a3 == 1 )
    {
      *(_DWORD *)(a2 + 184) |= a4;
    }
    else if ( a3 == 2 )
    {
      *(_DWORD *)(a2 + 184) &= ~a4;
    }
    else
    {
      return png_warning();
    }
  }
  return result;
}


// ===== 6848c0 png_zalloc =====
int __fastcall png_zalloc(int a1, unsigned int a2, unsigned int a3)
{
  int v4; // r7
  int result; // r0

  v4 = *(_DWORD *)(a1 + 300);
  if ( 0xFFFFFFFF / a3 < a2 )
  {
    png_warning(a1, "Potential overflow in png_zalloc()");
    return 0;
  }
  else
  {
    *(_DWORD *)(a1 + 300) = v4 | 0x100000;
    result = png_malloc(a1, a2 * a3);
    *(_DWORD *)(a1 + 300) = v4;
  }
  return result;
}


// ===== 684920 png_info_init_3 =====
void *__fastcall png_info_init_3(void **a1, unsigned int a2)
{
  void *result; // r0

  result = *a1;
  if ( result )
  {
    if ( a2 < 0x120 )
    {
      png_destroy_struct();
      result = (void *)png_create_struct(2);
      *a1 = result;
    }
    return LC_API_MEMSET_0(result, 0, 0x120u);
  }
  return result;
}


// ===== 684964 png_info_destroy =====
void *__fastcall png_info_destroy(int a1, void *a2)
{
  int v3; // r2
  void *v5; // [sp+4h] [bp-4h] BYREF

  v5 = a2;
  png_free_data(a1, (int)a2, 0x7FFF, -1);
  if ( *(_DWORD *)(a1 + 736) )
  {
    png_free(a1, *(_DWORD *)(a1 + 740), v3);
    *(_DWORD *)(a1 + 736) = 0;
    *(_DWORD *)(a1 + 740) = 0;
  }
  return png_info_init_3(&v5, 0x120u);
}


// ===== 6849b8 png_info_init =====
void *__fastcall png_info_init(void *a1)
{
  void *v2; // [sp+4h] [bp-8h] BYREF

  v2 = a1;
  return png_info_init_3(&v2, 0);
}


// ===== 6849dc png_destroy_info_struct =====
int __fastcall png_destroy_info_struct(int result, void **a2)
{
  int v2; // r5
  void *v4; // r6

  v2 = result;
  if ( result && a2 )
  {
    v4 = *a2;
    if ( *a2 )
    {
      png_info_destroy(result, *a2);
      result = png_destroy_struct_2(v4, *(_DWORD *)(v2 + 780), *(_DWORD *)(v2 + 772));
      *a2 = nullptr;
    }
  }
  return result;
}


// ===== 684a24 png_create_info_struct =====
void *__fastcall png_create_info_struct(int a1)
{
  void *result; // r0
  void *v2; // [sp+4h] [bp-8h] BYREF

  if ( !a1 )
    return nullptr;
  result = (void *)png_create_struct_2(2, *(_DWORD *)(a1 + 776), *(_DWORD *)(a1 + 772));
  v2 = result;
  if ( result )
  {
    png_info_init_3(&v2, 0x120u);
    return v2;
  }
  return result;
}


// ===== 684a6c png_calculate_crc =====
int __fastcall png_calculate_crc(int result, int a2, int a3)
{
  int v3; // r4

  v3 = result;
  if ( (*(_BYTE *)(result + 476) & 0x20) != 0 )
  {
    if ( (*(_DWORD *)(result + 300) & 0x300) == 0x300 )
      return result;
    goto LABEL_3;
  }
  if ( (*(_DWORD *)(result + 300) & 0x800) == 0 )
  {
LABEL_3:
    result = crc32(*(_DWORD *)(result + 464), a2, a3);
    *(_DWORD *)(v3 + 464) = result;
  }
  return result;
}


// ===== 684ab4 png_reset_crc =====
int __fastcall png_reset_crc(int a1)
{
  int result; // r0

  result = crc32(0, 0, 0);
  *(_DWORD *)(a1 + 464) = result;
  return result;
}


// ===== 684ad4 png_set_sig_bytes =====
int __fastcall png_set_sig_bytes(int result, int a2)
{
  int v2; // r5

  v2 = result;
  if ( result )
  {
    if ( a2 > 8 )
      result = png_error(result, "Too many bytes for PNG signature.");
    *(_BYTE *)(v2 + 492) = a2 & ~(a2 >> 31);
  }
  return result;
}


// ===== 684b0c png_set_error_fn =====
_DWORD *__fastcall png_set_error_fn(_DWORD *result, int a2, int a3, int a4)
{
  if ( result )
  {
    result[65] = a4;
    result[66] = a2;
    result[64] = a3;
  }
  return result;
}


// ===== 684b20 png_get_error_ptr =====
int __fastcall png_get_error_ptr(int result)
{
  if ( result )
    return *(_DWORD *)(result + 264);
  return result;
}


// ===== 684b2c png_set_strip_error_numbers =====
int __fastcall png_set_strip_error_numbers(int result, int a2)
{
  if ( result )
    *(_DWORD *)(result + 300) &= 0xFFF3FFFF & a2;
  return result;
}


// ===== 684b44 png_format_buffer =====
unsigned __int8 *__fastcall png_format_buffer(unsigned __int8 *result, int a2, void *a3)
{
  int v3; // r3
  int v4; // r12
  unsigned int v5; // r5
  int v6; // r4
  _BOOL4 v7; // r6
  char v8; // r8
  char v9; // r10
  int v10; // r5
  _BYTE *v11; // r4

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = result[476];
    v6 = v4 + 1;
    ++v3;
    v7 = v5 - 65 > 0x39;
    if ( v5 - 91 <= 5 )
      v7 = 1;
    if ( v7 )
    {
      v8 = png_digit[v5 & 0xF];
      v9 = png_digit[v5 >> 4];
      v10 = v4 + 3;
      *(_BYTE *)(a2 + v4) = 91;
      *(_BYTE *)(a2 + v6) = v9;
      v4 += 4;
      *(_BYTE *)(a2 + v6 + 1) = v8;
      *(_BYTE *)(a2 + v10) = 93;
    }
    else
    {
      *(_BYTE *)(a2 + v4++) = v5;
    }
    ++result;
  }
  while ( v3 != 4 );
  if ( a3 )
  {
    *(_BYTE *)(a2 + v4) = 58;
    v11 = (_BYTE *)(a2 + v4 + 2);
    *(_BYTE *)(a2 + v4 + 1) = 32;
    result = (unsigned __int8 *)memcpy(v11, a3, 0x40u);
    v11[63] = 0;
  }
  else
  {
    *(_BYTE *)(a2 + v4) = 0;
  }
  return result;
}


// ===== 684c1c png_warning =====
int __fastcall png_warning(int result, const char *a2)
{
  int (*v2)(void); // r6
  int i; // r12
  int v4; // r12
  int j; // r3
  int v6; // r0
  char var14[36]; // [sp+4h] [bp-14h] BYREF

  if ( result )
  {
    if ( (*(_DWORD *)(result + 300) & 0xC0000) != 0 && *a2 == 35 )
    {
      for ( i = 1; i != 15; ++i )
      {
        if ( a2[i] == 32 )
          break;
      }
    }
    v2 = *(int (**)(void))(result + 260);
    if ( v2 )
      return v2();
  }
  else if ( *a2 == 35 )
  {
    v4 = 0;
    for ( j = 1; ; ++j )
    {
      v6 = a2[v4];
      var14[v4] = a2[j];
      if ( v6 == 32 )
        break;
      if ( ++v4 == 15 )
        return fprintf((FILE *)&_sF + 2, "libpng warning: %s\n", a2);
    }
    if ( (unsigned int)(v4 - 2) > 0xC )
      return fprintf((FILE *)&_sF + 2, "libpng warning: %s\n", a2);
    var14[v4 + 1] = 0;
    return fprintf((FILE *)&_sF + 2, "libpng warning no. %s: %s\n", var14, &a2[v4]);
  }
  else
  {
    return fprintf((FILE *)&_sF + 2, "libpng warning: %s\n", a2);
  }
  return result;
}


// ===== 684d88 png_chunk_warning =====
int __fastcall png_chunk_warning(unsigned __int8 *a1, _BYTE *a2)
{
  unsigned __int8 *v2; // r7
  _BYTE v4[84]; // [sp+0h] [bp-5Ch] BYREF

  v2 = a1;
  if ( a1 )
  {
    png_format_buffer(a1, (int)v4, a2);
    a1 = v2;
    a2 = v4;
  }
  return png_warning((int)a1, a2);
}


// ===== 684df4 png_error =====
int __fastcall png_error(struct __jmp_buf_tag *a1, const char *a2)
{
  const char *v3; // r7
  unsigned int v4; // r2
  void (__fastcall *v5)(struct __jmp_buf_tag *, const char *); // r3
  int result; // r0
  int v7; // r3
  int v8; // r12
  int i; // r3
  int v10; // r3
  int v11; // r1
  int v12; // r2
  char v13; // r0
  char v14[16]; // [sp+4h] [bp-28h] BYREF
  char v15[24]; // [sp+14h] [bp-18h] BYREF

  v3 = a2;
  if ( a1 )
  {
    v4 = a1[1].__saved_mask.__val[29];
    if ( (v4 & 0xC0000) != 0 )
    {
      if ( *a2 == 35 )
      {
        for ( i = 1; i != 15; ++i )
        {
          if ( a2[i] == 32 )
            break;
        }
        if ( (v4 & 0x80000) != 0 )
        {
          v10 = i - 1;
          if ( v10 )
          {
            v11 = 1;
            v12 = 0;
            do
            {
              v13 = v3[v11++];
              v15[v12++] = v13;
            }
            while ( v12 < v10 );
          }
          v15[v10 - 1] = 0;
          v3 = v15;
        }
        else
        {
          v3 = &a2[i];
        }
      }
      else if ( (v4 & 0x80000) != 0 )
      {
        strcpy(v15, "0");
        v3 = v15;
      }
    }
    v5 = (void (__fastcall *)(struct __jmp_buf_tag *, const char *))a1[1].__saved_mask.__val[18];
    if ( v5 )
      v5(a1, v3);
  }
  if ( *v3 == 35 )
  {
    v7 = 1;
    v8 = 0;
    while ( 1 )
    {
      v14[v8] = v3[v7];
      if ( v3[v8] == 32 )
        break;
      ++v8;
      ++v7;
      if ( v8 == 15 )
        goto LABEL_15;
    }
    if ( (unsigned int)(v8 - 2) > 0xC )
    {
LABEL_15:
      result = fprintf((FILE *)&_sF + 2, "libpng error: %s, offset=%d\n", v3, v8);
      goto LABEL_7;
    }
    v15[v8 - 17] = 0;
    result = fprintf((FILE *)&_sF + 2, "libpng error no. %s: %s\n", v14, &v3[v8 + 1]);
  }
  else
  {
    result = fprintf((FILE *)&_sF + 2, "libpng error: %s\n", v3);
  }
LABEL_7:
  if ( a1 )
    longjmp(a1, 1);
  return result;
}


// ===== 684fe8 png_chunk_error =====
int __fastcall png_chunk_error(unsigned __int8 *a1, _BYTE *a2)
{
  unsigned __int8 *v2; // r7
  _BYTE v4[84]; // [sp+0h] [bp-5Ch] BYREF

  v2 = a1;
  if ( a1 )
  {
    png_format_buffer(a1, (int)v4, a2);
    a1 = v2;
    a2 = v4;
  }
  return png_error((struct __jmp_buf_tag *)a1, a2);
}


// ===== 685054 png_get_valid =====
int __fastcall png_get_valid(int a1, int a2, int a3)
{
  bool v3; // zf

  v3 = a2 == 0;
  if ( a2 )
    v3 = a1 == 0;
  if ( v3 )
    return 0;
  else
    return a3 & *(_DWORD *)(a2 + 8);
}


// ===== 685070 png_get_rowbytes =====
int __fastcall png_get_rowbytes(int a1, int a2)
{
  bool v2; // zf

  v2 = a2 == 0;
  if ( a2 )
    v2 = a1 == 0;
  if ( v2 )
    return 0;
  else
    return *(_DWORD *)(a2 + 12);
}


// ===== 685088 png_get_rows =====
int __fastcall png_get_rows(int a1, int a2)
{
  bool v2; // zf

  v2 = a2 == 0;
  if ( a2 )
    v2 = a1 == 0;
  if ( v2 )
    return 0;
  else
    return *(_DWORD *)(a2 + 248);
}


// ===== 6850a0 png_get_image_width =====
int __fastcall png_get_image_width(int a1, int a2)
{
  bool v2; // zf

  v2 = a2 == 0;
  if ( a2 )
    v2 = a1 == 0;
  if ( v2 )
    return 0;
  else
    return *(_DWORD *)a2;
}


// ===== 6850b8 png_get_image_height =====
int __fastcall png_get_image_height(int a1, int a2)
{
  bool v2; // zf

  v2 = a2 == 0;
  if ( a2 )
    v2 = a1 == 0;
  if ( v2 )
    return 0;
  else
    return *(_DWORD *)(a2 + 4);
}


// ===== 6850d0 png_get_bit_depth =====
int __fastcall png_get_bit_depth(int a1, int a2)
{
  bool v2; // zf

  v2 = a2 == 0;
  if ( a2 )
    v2 = a1 == 0;
  if ( v2 )
    return 0;
  else
    return *(unsigned __int8 *)(a2 + 24);
}


// ===== 6850e8 png_get_color_type =====
int __fastcall png_get_color_type(int a1, int a2)
{
  bool v2; // zf

  v2 = a2 == 0;
  if ( a2 )
    v2 = a1 == 0;
  if ( v2 )
    return 0;
  else
    return *(unsigned __int8 *)(a2 + 25);
}


// ===== 685100 png_get_filter_type =====
int __fastcall png_get_filter_type(int a1, int a2)
{
  bool v2; // zf

  v2 = a2 == 0;
  if ( a2 )
    v2 = a1 == 0;
  if ( v2 )
    return 0;
  else
    return *(unsigned __int8 *)(a2 + 27);
}


// ===== 685118 png_get_interlace_type =====
int __fastcall png_get_interlace_type(int a1, int a2)
{
  bool v2; // zf

  v2 = a2 == 0;
  if ( a2 )
    v2 = a1 == 0;
  if ( v2 )
    return 0;
  else
    return *(unsigned __int8 *)(a2 + 28);
}


// ===== 685130 png_get_compression_type =====
int __fastcall png_get_compression_type(int a1, int a2)
{
  bool v2; // zf

  v2 = a2 == 0;
  if ( a2 )
    v2 = a1 == 0;
  if ( v2 )
    return 0;
  else
    return *(unsigned __int8 *)(a2 + 26);
}


// ===== 685148 png_get_x_pixels_per_meter =====
int __fastcall png_get_x_pixels_per_meter(int a1, int a2)
{
  bool v2; // zf

  v2 = a2 == 0;
  if ( a2 )
    v2 = a1 == 0;
  if ( !v2 && (*(_DWORD *)(a2 + 8) & 0x80) != 0 && *(_BYTE *)(a2 + 120) == 1 )
    return *(_DWORD *)(a2 + 112);
  else
    return 0;
}


// ===== 685178 png_get_y_pixels_per_meter =====
int __fastcall png_get_y_pixels_per_meter(int a1, int a2)
{
  bool v2; // zf

  v2 = a2 == 0;
  if ( a2 )
    v2 = a1 == 0;
  if ( !v2 && (*(_DWORD *)(a2 + 8) & 0x80) != 0 && *(_BYTE *)(a2 + 120) == 1 )
    return *(_DWORD *)(a2 + 116);
  else
    return 0;
}


// ===== 6851a8 png_get_pixels_per_meter =====
int __fastcall png_get_pixels_per_meter(int a1, int a2)
{
  bool v2; // zf
  int result; // r0

  v2 = a2 == 0;
  if ( a2 )
    v2 = a1 == 0;
  if ( v2 )
    return 0;
  if ( (*(_DWORD *)(a2 + 8) & 0x80) == 0 )
    return 0;
  if ( *(_BYTE *)(a2 + 120) != 1 )
    return 0;
  result = *(_DWORD *)(a2 + 112);
  if ( result != *(_DWORD *)(a2 + 116) )
    return 0;
  return result;
}


// ===== 6851e8 png_get_pixel_aspect_ratio =====
float __fastcall png_get_pixel_aspect_ratio(int a1, _DWORD *a2)
{
  bool v2; // zf
  unsigned int v3; // r4

  v2 = a2 == nullptr;
  if ( a2 )
    v2 = a1 == 0;
  if ( v2 || (a2[2] & 0x80) == 0 )
    return 0.0;
  v3 = a2[28];
  if ( v3 )
    return (float)(unsigned int)a2[29] / (float)v3;
  else
    return 0.0;
}


// ===== 685244 png_get_x_offset_microns =====
int __fastcall png_get_x_offset_microns(int a1, int a2)
{
  bool v2; // zf

  v2 = a2 == 0;
  if ( a2 )
    v2 = a1 == 0;
  if ( !v2 && (*(_DWORD *)(a2 + 8) & 0x100) != 0 && *(_BYTE *)(a2 + 108) == 1 )
    return *(_DWORD *)(a2 + 100);
  else
    return 0;
}


// ===== 685274 png_get_y_offset_microns =====
int __fastcall png_get_y_offset_microns(int a1, int a2)
{
  bool v2; // zf

  v2 = a2 == 0;
  if ( a2 )
    v2 = a1 == 0;
  if ( !v2 && (*(_DWORD *)(a2 + 8) & 0x100) != 0 && *(_BYTE *)(a2 + 108) == 1 )
    return *(_DWORD *)(a2 + 104);
  else
    return 0;
}


// ===== 6852a4 png_get_x_offset_pixels =====
int __fastcall png_get_x_offset_pixels(int a1, int a2)
{
  bool v2; // zf

  v2 = a2 == 0;
  if ( a2 )
    v2 = a1 == 0;
  if ( v2 || (*(_DWORD *)(a2 + 8) & 0x100) == 0 || *(_BYTE *)(a2 + 108) )
    return 0;
  else
    return *(_DWORD *)(a2 + 100);
}


// ===== 6852d4 png_get_y_offset_pixels =====
int __fastcall png_get_y_offset_pixels(int a1, int a2)
{
  bool v2; // zf

  v2 = a2 == 0;
  if ( a2 )
    v2 = a1 == 0;
  if ( v2 || (*(_DWORD *)(a2 + 8) & 0x100) == 0 || *(_BYTE *)(a2 + 108) )
    return 0;
  else
    return *(_DWORD *)(a2 + 104);
}


// ===== 685304 png_get_channels =====
int __fastcall png_get_channels(int a1, int a2)
{
  bool v2; // zf

  v2 = a2 == 0;
  if ( a2 )
    v2 = a1 == 0;
  if ( v2 )
    return 0;
  else
    return *(unsigned __int8 *)(a2 + 29);
}


// ===== 68531c png_get_signature =====
int __fastcall png_get_signature(int a1, int a2)
{
  bool v2; // zf

  v2 = a2 == 0;
  if ( a2 )
    v2 = a1 == 0;
  if ( v2 )
    return 0;
  else
    return a2 + 32;
}


// ===== 685334 png_get_bKGD =====
int __fastcall png_get_bKGD(int a1, int a2, _DWORD *a3)
{
  bool v3; // zf
  int v4; // r3

  v3 = a2 == 0;
  if ( a2 )
    v3 = a1 == 0;
  if ( v3 )
    return 0;
  v4 = (*(_DWORD *)(a2 + 8) >> 5) & 1;
  if ( !a3 )
    v4 = 0;
  if ( !v4 )
    return 0;
  *a3 = a2 + 90;
  return 32;
}


// ===== 685370 png_get_cHRM =====
int __fastcall png_get_cHRM(
        int a1,
        int a2,
        double *a3,
        double *a4,
        double *a5,
        double *a6,
        double *a7,
        double *a8,
        double *a9,
        double *a10)
{
  bool v10; // zf

  v10 = a2 == 0;
  if ( a2 )
    v10 = a1 == 0;
  if ( v10 || (*(_DWORD *)(a2 + 8) & 4) == 0 )
    return 0;
  if ( a3 )
    *a3 = *(float *)(a2 + 128);
  if ( a4 )
    *a4 = *(float *)(a2 + 132);
  if ( a5 )
    *a5 = *(float *)(a2 + 136);
  if ( a6 )
    *a6 = *(float *)(a2 + 140);
  if ( a7 )
    *a7 = *(float *)(a2 + 144);
  if ( a8 )
    *a8 = *(float *)(a2 + 148);
  if ( a9 )
    *a9 = *(float *)(a2 + 152);
  if ( a10 )
    *a10 = *(float *)(a2 + 156);
  return 4;
}


// ===== 685464 png_get_cHRM_fixed =====
int __fastcall png_get_cHRM_fixed(
        int a1,
        _DWORD *a2,
        _DWORD *a3,
        _DWORD *a4,
        _DWORD *a5,
        _DWORD *a6,
        _DWORD *a7,
        _DWORD *a8,
        _DWORD *a9,
        _DWORD *a10)
{
  bool v10; // zf
  int result; // r0

  v10 = a2 == nullptr;
  if ( a2 )
    v10 = a1 == 0;
  result = (int)a9;
  if ( v10 || (a2[2] & 4) == 0 )
    return 0;
  if ( a3 )
    *a3 = a2[64];
  if ( a4 )
    *a4 = a2[65];
  if ( a5 )
  {
    a4 = (_DWORD *)a2[66];
    *a5 = a4;
  }
  if ( a6 )
  {
    a4 = (_DWORD *)a2[67];
    *a6 = a4;
  }
  if ( a7 )
  {
    a4 = (_DWORD *)a2[68];
    *a7 = a4;
  }
  if ( a8 )
  {
    a4 = (_DWORD *)a2[69];
    *a8 = a4;
  }
  if ( a9 )
  {
    a4 = (_DWORD *)a2[70];
    *a9 = a4;
  }
  if ( a10 )
    a4 = (_DWORD *)a2[71];
  else
    result = 4;
  if ( a10 )
  {
    result = 4;
    *a10 = a4;
  }
  return result;
}


// ===== 685510 png_get_gAMA =====
int __fastcall png_get_gAMA(int a1, int a2, double *a3)
{
  bool v3; // zf

  v3 = a2 == 0;
  if ( a2 )
    v3 = a1 == 0;
  if ( v3 )
    return 0;
  if ( !a3 || !(*(_DWORD *)(a2 + 8) & 1) )
    return 0;
  *a3 = *(float *)(a2 + 40);
  return 1;
}


// ===== 685558 png_get_gAMA_fixed =====
int __fastcall png_get_gAMA_fixed(int a1, int a2, _DWORD *a3)
{
  bool v3; // zf

  v3 = a2 == 0;
  if ( a2 )
    v3 = a1 == 0;
  if ( v3 )
    return 0;
  if ( !a3 || !(*(_DWORD *)(a2 + 8) & 1) )
    return 0;
  *a3 = *(_DWORD *)(a2 + 252);
  return 1;
}


// ===== 685594 png_get_sRGB =====
int __fastcall png_get_sRGB(int a1, int a2, _DWORD *a3)
{
  bool v3; // zf
  int v4; // r3

  v3 = a2 == 0;
  if ( a2 )
    v3 = a1 == 0;
  if ( v3 )
    return 0;
  v4 = (*(_DWORD *)(a2 + 8) >> 11) & 1;
  if ( !a3 )
    v4 = 0;
  if ( !v4 )
    return 0;
  *a3 = *(unsigned __int8 *)(a2 + 44);
  return 2048;
}


// ===== 6855d4 png_get_iCCP =====
int __fastcall png_get_iCCP(int a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  bool v6; // zf
  int v7; // r0
  bool v8; // zf

  v6 = a2 == 0;
  if ( a2 )
    v6 = a1 == 0;
  if ( v6 )
    return 0;
  v7 = (*(_DWORD *)(a2 + 8) >> 12) & 1;
  if ( !a3 )
    v7 = 0;
  if ( !v7 )
    return 0;
  v8 = a6 == nullptr;
  if ( a6 )
    v8 = a5 == nullptr;
  if ( v8 )
    return 0;
  *a3 = *(_DWORD *)(a2 + 196);
  *a5 = *(_DWORD *)(a2 + 200);
  *a6 = *(_DWORD *)(a2 + 204);
  *a4 = *(unsigned __int8 *)(a2 + 208);
  return 4096;
}


// ===== 685648 png_get_sPLT =====
int __fastcall png_get_sPLT(int a1, int a2, _DWORD *a3)
{
  bool v3; // zf

  v3 = a2 == 0;
  if ( a2 )
    v3 = a1 == 0;
  if ( v3 || !a3 )
    return 0;
  *a3 = *(_DWORD *)(a2 + 212);
  return *(_DWORD *)(a2 + 216);
}


// ===== 685674 png_get_hIST =====
int __fastcall png_get_hIST(int a1, int a2, _DWORD *a3)
{
  bool v3; // zf
  int v4; // r3

  v3 = a2 == 0;
  if ( a2 )
    v3 = a1 == 0;
  if ( v3 )
    return 0;
  v4 = (*(_DWORD *)(a2 + 8) >> 6) & 1;
  if ( !a3 )
    v4 = 0;
  if ( !v4 )
    return 0;
  *a3 = *(_DWORD *)(a2 + 124);
  return 64;
}


// ===== 6856b4 png_get_oFFs =====
int __fastcall png_get_oFFs(int a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  bool v5; // zf
  int v6; // r0
  bool v7; // zf

  v5 = a2 == 0;
  if ( a2 )
    v5 = a1 == 0;
  if ( v5 )
    return 0;
  v6 = (*(_DWORD *)(a2 + 8) >> 8) & 1;
  if ( !a3 )
    v6 = 0;
  if ( !v6 )
    return 0;
  v7 = a5 == nullptr;
  if ( a5 )
    v7 = a4 == nullptr;
  if ( v7 )
    return 0;
  *a3 = *(_DWORD *)(a2 + 100);
  *a4 = *(_DWORD *)(a2 + 104);
  *a5 = *(unsigned __int8 *)(a2 + 108);
  return 256;
}


// ===== 68571c png_get_pCAL =====
int __fastcall png_get_pCAL(
        int a1,
        int a2,
        _DWORD *a3,
        _DWORD *a4,
        _DWORD *a5,
        _DWORD *a6,
        _DWORD *a7,
        _DWORD *a8,
        _DWORD *a9)
{
  bool v9; // zf
  int v10; // r0
  bool v11; // zf
  bool v12; // zf
  bool v13; // zf

  v9 = a2 == 0;
  if ( a2 )
    v9 = a1 == 0;
  if ( v9 )
    return 0;
  v10 = (*(_DWORD *)(a2 + 8) >> 10) & 1;
  if ( !a3 )
    v10 = 0;
  if ( !v10 )
    return 0;
  v11 = a5 == nullptr;
  if ( a5 )
    v11 = a4 == nullptr;
  if ( v11 )
    return 0;
  v12 = a7 == nullptr;
  if ( a7 )
    v12 = a6 == nullptr;
  if ( v12 )
    return 0;
  v13 = a9 == nullptr;
  if ( a9 )
    v13 = a8 == nullptr;
  if ( v13 )
    return 0;
  *a3 = *(_DWORD *)(a2 + 160);
  *a4 = *(_DWORD *)(a2 + 164);
  *a5 = *(_DWORD *)(a2 + 168);
  *a6 = *(unsigned __int8 *)(a2 + 180);
  *a7 = *(unsigned __int8 *)(a2 + 181);
  *a8 = *(_DWORD *)(a2 + 172);
  *a9 = *(_DWORD *)(a2 + 176);
  return 1024;
}


// ===== 6857cc png_get_sCAL =====
int __fastcall png_get_sCAL(int a1, int a2, _DWORD *a3, _QWORD *a4, _QWORD *a5)
{
  bool v5; // zf

  v5 = a2 == 0;
  if ( a2 )
    v5 = a1 == 0;
  if ( v5 || (*(_DWORD *)(a2 + 8) & 0x4000) == 0 )
    return 0;
  *a3 = *(unsigned __int8 *)(a2 + 220);
  *a4 = *(_QWORD *)(a2 + 224);
  *a5 = *(_QWORD *)(a2 + 232);
  return 0x4000;
}


// ===== 685818 png_get_pHYs =====
int __fastcall png_get_pHYs(int a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  int v5; // r4
  bool v6; // zf
  int result; // r0

  v6 = a2 == 0;
  if ( a2 )
    v6 = a1 == 0;
  if ( v6 )
    return 0;
  result = *(_DWORD *)(a2 + 8);
  if ( (result & 0x80) == 0 )
    return 0;
  if ( a3 )
    v5 = *(_DWORD *)(a2 + 112);
  else
    result = 0;
  if ( a3 )
  {
    result = 128;
    *a3 = v5;
  }
  if ( a4 )
  {
    result |= 0x80u;
    *a4 = *(_DWORD *)(a2 + 116);
  }
  if ( a5 )
  {
    *a5 = *(unsigned __int8 *)(a2 + 120);
    return result | 0x80;
  }
  return result;
}


// ===== 685880 png_get_PLTE =====
int __fastcall png_get_PLTE(int a1, int a2, _DWORD *a3, _DWORD *a4)
{
  bool v4; // zf
  int v5; // r0

  v4 = a2 == 0;
  if ( a2 )
    v4 = a1 == 0;
  if ( v4 )
    return 0;
  v5 = (*(_DWORD *)(a2 + 8) >> 3) & 1;
  if ( !a3 )
    v5 = 0;
  if ( !v5 )
    return 0;
  *a3 = *(_DWORD *)(a2 + 16);
  *a4 = *(unsigned __int16 *)(a2 + 20);
  return 8;
}


// ===== 6858c8 png_get_sBIT =====
int __fastcall png_get_sBIT(int a1, int a2, _DWORD *a3)
{
  bool v3; // zf
  int v4; // r3

  v3 = a2 == 0;
  if ( a2 )
    v3 = a1 == 0;
  if ( v3 )
    return 0;
  v4 = (*(_DWORD *)(a2 + 8) >> 1) & 1;
  if ( !a3 )
    v4 = 0;
  if ( !v4 )
    return 0;
  *a3 = a2 + 68;
  return 2;
}


// ===== 685904 png_get_text =====
int __fastcall png_get_text(int a1, int a2, _DWORD *a3, int *a4)
{
  bool v4; // zf
  int result; // r0

  v4 = a2 == 0;
  if ( a2 )
    v4 = a1 == 0;
  if ( v4 || (result = *(_DWORD *)(a2 + 48), result <= 0) )
  {
    result = 0;
    if ( a4 )
      *a4 = 0;
  }
  else
  {
    if ( a3 )
    {
      *a3 = *(_DWORD *)(a2 + 56);
      result = *(_DWORD *)(a2 + 48);
    }
    if ( a4 )
    {
      *a4 = result;
      return *(_DWORD *)(a2 + 48);
    }
  }
  return result;
}


// ===== 685950 png_get_tIME =====
int __fastcall png_get_tIME(int a1, int a2, _DWORD *a3)
{
  bool v3; // zf
  int v4; // r3

  v3 = a2 == 0;
  if ( a2 )
    v3 = a1 == 0;
  if ( v3 )
    return 0;
  v4 = (*(_DWORD *)(a2 + 8) >> 9) & 1;
  if ( !a3 )
    v4 = 0;
  if ( !v4 )
    return 0;
  *a3 = a2 + 60;
  return 512;
}


// ===== 68598c png_get_tRNS =====
int __fastcall png_get_tRNS(int a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  int v5; // r4
  bool v6; // zf
  int result; // r0

  v6 = a2 == 0;
  if ( a2 )
    v6 = a1 == 0;
  if ( v6 || (*(_DWORD *)(a2 + 8) & 0x10) == 0 )
    return 0;
  result = *(unsigned __int8 *)(a2 + 25);
  if ( result == 3 )
  {
    if ( a3 )
      v5 = *(_DWORD *)(a2 + 76);
    else
      result = 0;
    if ( a3 )
    {
      result = 16;
      *a3 = v5;
    }
    if ( a5 )
      *a5 = a2 + 80;
  }
  else
  {
    if ( a5 )
    {
      result = a2 + 80;
      *a5 = a2 + 80;
    }
    else
    {
      result = 0;
    }
    if ( a5 )
      result = 16;
    if ( a3 )
      *a3 = 0;
  }
  if ( a4 )
  {
    *a4 = *(unsigned __int16 *)(a2 + 22);
    return result | 0x10;
  }
  return result;
}


// ===== 685a20 png_get_unknown_chunks =====
int __fastcall png_get_unknown_chunks(int a1, int a2, _DWORD *a3)
{
  bool v3; // zf

  v3 = a2 == 0;
  if ( a2 )
    v3 = a1 == 0;
  if ( v3 || !a3 )
    return 0;
  *a3 = *(_DWORD *)(a2 + 188);
  return *(_DWORD *)(a2 + 192);
}


// ===== 685a4c png_get_rgb_to_gray_status =====
int __fastcall png_get_rgb_to_gray_status(int result)
{
  if ( result )
    return *(unsigned __int8 *)(result + 744);
  return result;
}


// ===== 685a58 png_get_user_chunk_ptr =====
int __fastcall png_get_user_chunk_ptr(int result)
{
  if ( result )
    return *(_DWORD *)(result + 728);
  return result;
}


// ===== 685a64 png_get_compression_buffer_size =====
int __fastcall png_get_compression_buffer_size(int result)
{
  if ( result )
    return *(_DWORD *)(result + 368);
  return result;
}


// ===== 685a70 png_get_asm_flags =====
int png_get_asm_flags()
{
  return 0;
}


// ===== 685a78 png_get_asm_flagmask =====
int png_get_asm_flagmask()
{
  return 0;
}


// ===== 685a80 png_get_mmx_flagmask =====
int __fastcall png_get_mmx_flagmask(int a1, _DWORD *a2)
{
  *a2 = -1;
  return 0;
}


// ===== 685a90 png_get_mmx_bitdepth_threshold =====
int png_get_mmx_bitdepth_threshold()
{
  return 0;
}


// ===== 685a98 png_get_mmx_rowbytes_threshold =====
int png_get_mmx_rowbytes_threshold()
{
  return 0;
}


// ===== 685aa0 png_get_user_width_max =====
int __fastcall png_get_user_width_max(int result)
{
  if ( result )
    return *(_DWORD *)(result + 804);
  return result;
}


// ===== 685aac png_get_user_height_max =====
int __fastcall png_get_user_height_max(int result)
{
  if ( result )
    return *(_DWORD *)(result + 808);
  return result;
}


// ===== 685ab8 png_get_IHDR =====
int __fastcall png_get_IHDR(
        struct __jmp_buf_tag *a1,
        int a2,
        int *a3,
        int *a4,
        _DWORD *a5,
        _DWORD *a6,
        _DWORD *a7,
        _DWORD *a8,
        _DWORD *a9)
{
  bool v9; // zf
  bool v12; // zf
  bool v13; // zf
  int *v15; // [sp+0h] [bp-Ch]
  int *v16; // [sp+0h] [bp-Ch]
  int *v17; // [sp+0h] [bp-Ch]
  int *v18; // [sp+4h] [bp-8h]
  int *v19; // [sp+4h] [bp-8h]

  v9 = a2 == 0;
  if ( a2 )
    v9 = a1 == nullptr;
  if ( v9 )
    return 0;
  v12 = a4 == nullptr;
  if ( a4 )
    v12 = a3 == nullptr;
  if ( v12 )
    return 0;
  v13 = a6 == nullptr;
  if ( a6 )
    v13 = a5 == nullptr;
  if ( v13 )
    return 0;
  *a3 = *(_DWORD *)a2;
  *a4 = *(_DWORD *)(a2 + 4);
  *a5 = *(unsigned __int8 *)(a2 + 24);
  if ( (unsigned __int8)(*(_BYTE *)(a2 + 24) - 1) > 0xFu )
  {
    v19 = a3;
    v16 = a4;
    png_error(a1, "Invalid bit depth");
    a4 = v16;
    a3 = v19;
  }
  *a6 = *(unsigned __int8 *)(a2 + 25);
  if ( *(unsigned __int8 *)(a2 + 25) > 6u )
  {
    v18 = a3;
    v15 = a4;
    png_error(a1, "Invalid color type");
    a4 = v15;
    a3 = v18;
  }
  if ( a8 )
    *a8 = *(unsigned __int8 *)(a2 + 26);
  if ( a9 )
    *a9 = *(unsigned __int8 *)(a2 + 27);
  if ( a7 )
    *a7 = *(unsigned __int8 *)(a2 + 28);
  if ( *a3 <= 0 )
  {
    v17 = a4;
    png_error(a1, "Invalid image width");
    a4 = v17;
  }
  if ( *a4 <= 0 )
    png_error(a1, "Invalid image height");
  if ( *(_DWORD *)a2 > 0x1FFFFF7Eu )
    png_warning((int)a1, "Width too large for libpng to process image data.");
  return 1;
}


// ===== 685c3c png_set_mem_fn =====
_DWORD *__fastcall png_set_mem_fn(_DWORD *result, int a2, int a3, int a4)
{
  if ( result )
  {
    result[195] = a4;
    result[193] = a2;
    result[194] = a3;
  }
  return result;
}


// ===== 685c50 png_get_mem_ptr =====
int __fastcall png_get_mem_ptr(int result)
{
  if ( result )
    return *(_DWORD *)(result + 772);
  return result;
}


// ===== 685c5c png_memset_check =====
void *__fastcall png_memset_check(int a1, void *a2, int a3, size_t a4)
{
  return LC_API_MEMSET_0(a2, a3, a4);
}


// ===== 685c6c png_memcpy_check =====
void *__fastcall png_memcpy_check(int a1, void *a2, void *a3, size_t a4)
{
  return memcpy(a2, a3, a4);
}


// ===== 685c7c png_free_default =====
void __fastcall png_free_default(int a1, void *p)
{
  bool v2; // zf

  v2 = a1 == 0;
  if ( a1 )
    v2 = p == nullptr;
  if ( !v2 )
    free(p);
}


// ===== 685c90 png_free =====
void __fastcall png_free(int a1, void *a2)
{
  bool v2; // zf
  void (*v3)(void); // r3

  v2 = a1 == 0;
  if ( a1 )
    v2 = a2 == nullptr;
  if ( !v2 )
  {
    v3 = *(void (**)(void))(a1 + 780);
    if ( v3 )
      v3();
    else
      png_free_default(a1, a2);
  }
}


// ===== 685cc0 png_destroy_struct_2 =====
void __fastcall png_destroy_struct_2(void *a1, void (__fastcall *a2)(_BYTE *, void *), int a3)
{
  _BYTE v3[772]; // [sp+4h] [bp-350h] BYREF
  int v4; // [sp+308h] [bp-4Ch]

  if ( a1 )
  {
    if ( a2 )
    {
      v4 = a3;
      a2(v3, a1);
    }
    else
    {
      free(a1);
    }
  }
}


// ===== 685cfc png_destroy_struct =====
void __fastcall png_destroy_struct(void *a1)
{
  png_destroy_struct_2(a1, nullptr, 0);
}


// ===== 685d08 png_malloc_default =====
void *__fastcall png_malloc_default(int a1, size_t byte_count)
{
  bool v2; // zf

  v2 = a1 == 0;
  if ( a1 )
    v2 = byte_count == 0;
  if ( v2 )
    return nullptr;
  else
    return LC_API_MALLOC_0(byte_count);
}


// ===== 685d24 png_malloc =====
void *__fastcall png_malloc(struct __jmp_buf_tag *a1, size_t a2)
{
  bool v2; // zf
  void *v4; // r4
  int (*v5)(void); // r3

  v2 = a1 == nullptr;
  if ( a1 )
    v2 = a2 == 0;
  if ( v2 )
    return nullptr;
  v5 = (int (*)(void))a1[4].__saved_mask.__val[31];
  if ( v5 )
    v4 = (void *)v5();
  else
    v4 = png_malloc_default((int)a1, a2);
  if ( !v4 && (a1[1].__saved_mask.__val[29] & 0x100000) == 0 )
    png_error(a1, "Out of Memory!");
  return v4;
}


// ===== 685d90 png_malloc_warn =====
void *__fastcall png_malloc_warn(struct __jmp_buf_tag *a1, size_t a2)
{
  unsigned int v3; // r5
  void *result; // r0

  if ( !a1 )
    return nullptr;
  v3 = a1[1].__saved_mask.__val[29];
  a1[1].__saved_mask.__val[29] = v3 | 0x100000;
  result = png_malloc(a1, a2);
  a1[1].__saved_mask.__val[29] = v3;
  return result;
}


// ===== 685dbc png_create_struct_2 =====
void *__fastcall png_create_struct_2(int a1, int (__fastcall *a2)(char *, size_t), int a3)
{
  size_t v3; // r6
  void *v4; // r0
  void *v5; // r5
  void *v7; // r0
  char v8[772]; // [sp+4h] [bp-34Ch] BYREF
  int v9; // [sp+308h] [bp-48h]

  if ( a1 == 2 )
  {
    v3 = 288;
  }
  else
  {
    if ( a1 != 1 )
      return nullptr;
    v3 = 844;
  }
  if ( a2 )
  {
    v9 = a3;
    v4 = (void *)a2(v8, v3);
    v5 = v4;
    if ( v4 )
      LC_API_MEMSET_0(v4, 0, v3);
  }
  else
  {
    v7 = LC_API_MALLOC_0(v3);
    v5 = v7;
    if ( v7 )
      LC_API_MEMSET_0(v7, 0, v3);
  }
  return v5;
}


// ===== 685e40 png_create_struct =====
void *__fastcall png_create_struct(int a1)
{
  return png_create_struct_2(a1, nullptr, 0);
}


// ===== 685e4c png_set_read_status_fn =====
int __fastcall png_set_read_status_fn(int result, int a2)
{
  if ( result )
    *(_DWORD *)(result + 600) = a2;
  return result;
}


// ===== 685e58 png_read_destroy =====
void *__fastcall png_read_destroy(int a1, void *a2, void *a3)
{
  int v5; // r3
  bool v6; // zf
  unsigned int v7; // r3
  unsigned int v8; // r3
  _DWORD *v9; // r1
  int v10; // r6
  int v11; // r5
  void *v12; // r1
  _DWORD *v13; // r1
  int v14; // r6
  int v15; // r5
  void *v16; // r1
  _DWORD *v17; // r1
  int v18; // r6
  int v19; // r5
  void *v20; // r1
  int v21; // r10
  int v22; // r8
  int v23; // r7
  int v24; // r6
  _BYTE v26[256]; // [sp+0h] [bp-104h] BYREF

  if ( a2 )
    png_info_destroy(a1, a2);
  if ( a3 )
    png_info_destroy(a1, a3);
  png_free(a1, *(void **)(a1 + 364));
  png_free(a1, *(void **)(a1 + 784));
  png_free(a1, *(void **)(a1 + 424));
  png_free(a1, *(void **)(a1 + 840));
  png_free(a1, *(void **)(a1 + 684));
  png_free(a1, *(void **)(a1 + 688));
  png_free(a1, *(void **)(a1 + 548));
  png_free(a1, *(void **)(a1 + 552));
  png_free(a1, *(void **)(a1 + 556));
  v5 = *(_DWORD *)(a1 + 724);
  if ( (v5 & 0x1000) != 0 )
  {
    png_zfree();
    v6 = (*(_DWORD *)(a1 + 724) & 0x2000) == 0;
    v7 = *(_DWORD *)(a1 + 724) & 0xFFFFEFFF;
    *(_DWORD *)(a1 + 724) = v7;
    if ( !v6 )
      goto LABEL_33;
  }
  else
  {
    v6 = (*(_DWORD *)(a1 + 724) & 0x2000) == 0;
    v7 = v5 & 0xFFFFEFFF;
    *(_DWORD *)(a1 + 724) = v7;
    if ( !v6 )
    {
LABEL_33:
      png_free(a1, *(void **)(a1 + 584));
      v6 = (*(_DWORD *)(a1 + 724) & 8) == 0;
      v8 = *(_DWORD *)(a1 + 724) & 0xFFFFDFFF;
      *(_DWORD *)(a1 + 724) = v8;
      if ( v6 )
        goto LABEL_10;
      goto LABEL_34;
    }
  }
  v6 = (v7 & 8) == 0;
  v8 = v7 & 0xFFFFDFFF;
  *(_DWORD *)(a1 + 724) = v8;
  if ( v6 )
    goto LABEL_10;
LABEL_34:
  png_free(a1, *(void **)(a1 + 692));
  v8 = *(_DWORD *)(a1 + 724);
LABEL_10:
  v9 = *(_DWORD **)(a1 + 560);
  *(_DWORD *)(a1 + 724) = v8 & 0xFFFFFFF7;
  if ( v9 )
  {
    v10 = 1 << (8 - *(_DWORD *)(a1 + 536));
    if ( v10 > 0 )
    {
      v11 = 0;
      while ( 1 )
      {
        v12 = (void *)v9[v11++];
        png_free(a1, v12);
        if ( v11 == v10 )
          break;
        v9 = *(_DWORD **)(a1 + 560);
      }
      v9 = *(_DWORD **)(a1 + 560);
    }
    png_free(a1, v9);
  }
  v13 = *(_DWORD **)(a1 + 564);
  if ( v13 )
  {
    v14 = 1 << (8 - *(_DWORD *)(a1 + 536));
    if ( v14 > 0 )
    {
      v15 = 0;
      while ( 1 )
      {
        v16 = (void *)v13[v15++];
        png_free(a1, v16);
        if ( v15 == v14 )
          break;
        v13 = *(_DWORD **)(a1 + 564);
      }
      v13 = *(_DWORD **)(a1 + 564);
    }
    png_free(a1, v13);
  }
  v17 = *(_DWORD **)(a1 + 568);
  if ( v17 )
  {
    v18 = 1 << (8 - *(_DWORD *)(a1 + 536));
    if ( v18 > 0 )
    {
      v19 = 0;
      while ( 1 )
      {
        v20 = (void *)v17[v19++];
        png_free(a1, v20);
        if ( v19 == v18 )
          break;
        v17 = *(_DWORD **)(a1 + 568);
      }
      v17 = *(_DWORD **)(a1 + 568);
    }
    png_free(a1, v17);
  }
  png_free(a1, *(void **)(a1 + 720));
  inflateEnd_0((_DWORD *)(a1 + 308));
  png_free(a1, *(void **)(a1 + 624));
  png_free(a1, *(void **)(a1 + 676));
  memcpy(v26, (const void *)a1, sizeof(v26));
  v21 = *(_DWORD *)(a1 + 256);
  v22 = *(_DWORD *)(a1 + 260);
  v23 = *(_DWORD *)(a1 + 264);
  v24 = *(_DWORD *)(a1 + 780);
  LC_API_MEMSET_0((void *)a1, 0, 0x34Cu);
  *(_DWORD *)(a1 + 256) = v21;
  *(_DWORD *)(a1 + 260) = v22;
  *(_DWORD *)(a1 + 264) = v23;
  *(_DWORD *)(a1 + 780) = v24;
  return memcpy((void *)a1, v26, 0x100u);
}


// ===== 686100 png_destroy_read_struct =====
void __fastcall png_destroy_read_struct(int *a1, void **a2, void **a3)
{
  _DWORD *v6; // r4
  void *v7; // r6
  void *v8; // r5
  void (__fastcall *v9)(_BYTE *, void *); // r10
  int v10; // r9

  if ( a1 )
  {
    v6 = (_DWORD *)*a1;
    if ( *a1 )
    {
      if ( a2 )
        v7 = *a2;
      else
        v7 = nullptr;
      if ( a3 )
        v8 = *a3;
      else
        v8 = nullptr;
      v9 = (void (__fastcall *)(_BYTE *, void *))v6[195];
      v10 = v6[193];
      png_read_destroy(*a1, v7, v8);
      if ( v7 )
      {
        png_free_data((int)v6, (int)v7, 0x4000, -1);
        png_destroy_struct_2(v7, v9, v10);
        *a2 = nullptr;
      }
      if ( v8 )
      {
        png_free_data((int)v6, (int)v8, 0x4000, -1);
        png_destroy_struct_2(v8, v9, v10);
        *a3 = nullptr;
      }
      png_destroy_struct_2(v6, v9, v10);
      *a1 = 0;
    }
  }
}


// ===== 6861d4 png_read_end =====
int __fastcall png_read_end(int result, int a2)
{
  struct __jmp_buf_tag *v2; // r4
  unsigned int v4; // r3
  int chunk_header; // r7
  bool v6; // zf

  v2 = (struct __jmp_buf_tag *)result;
  if ( result )
  {
    png_crc_finish(result, 0);
    while ( 1 )
    {
      chunk_header = png_read_chunk_header(v2);
      if ( !memcmp(&v2[3].__jmpbuf[2], png_IHDR, 4u) )
      {
        result = png_handle_IHDR(v2, a2, chunk_header);
        v4 = v2[1].__saved_mask.__val[28];
        goto LABEL_4;
      }
      if ( !memcmp(&v2[3].__jmpbuf[2], png_IEND, 4u) )
        break;
      if ( png_handle_as_unknown((int)v2, &v2[3].__jmpbuf[2]) )
      {
        if ( !memcmp(&v2[3].__jmpbuf[2], png_IDAT, 4u) && (chunk_header || (v2[1].__saved_mask.__val[28] & 0x2000) != 0) )
          png_error(v2, "Too many IDAT's found");
        png_handle_unknown((int)v2);
        result = memcmp(&v2[3].__jmpbuf[2], png_PLTE, 4u);
        if ( result )
          goto LABEL_36;
        v6 = (v2[1].__saved_mask.__val[28] & 0x10) == 0;
        v2[1].__saved_mask.__val[28] |= 2u;
        if ( !v6 )
          return result;
      }
      else
      {
        if ( !memcmp(&v2[3].__jmpbuf[2], png_IDAT, 4u) )
        {
          if ( chunk_header || (v2[1].__saved_mask.__val[28] & 0x2000) != 0 )
            png_error(v2, "Too many IDAT's found");
          result = png_crc_finish(v2, chunk_header);
          v4 = v2[1].__saved_mask.__val[28];
          goto LABEL_4;
        }
        if ( !memcmp(&v2[3].__jmpbuf[2], png_PLTE, 4u) )
        {
          result = png_handle_PLTE(v2, a2, chunk_header);
          v4 = v2[1].__saved_mask.__val[28];
          goto LABEL_4;
        }
        if ( !memcmp(&v2[3].__jmpbuf[2], png_bKGD, 4u) )
        {
          result = png_handle_bKGD(v2, a2, chunk_header);
          v4 = v2[1].__saved_mask.__val[28];
          goto LABEL_4;
        }
        if ( !memcmp(&v2[3].__jmpbuf[2], png_cHRM, 4u) )
        {
          result = png_handle_cHRM(v2, a2, chunk_header);
          v4 = v2[1].__saved_mask.__val[28];
          goto LABEL_4;
        }
        if ( !memcmp(&v2[3].__jmpbuf[2], png_gAMA, 4u) )
        {
          result = png_handle_gAMA(v2, a2, chunk_header);
          v4 = v2[1].__saved_mask.__val[28];
          goto LABEL_4;
        }
        if ( !memcmp(&v2[3].__jmpbuf[2], png_hIST, 4u) )
        {
          result = png_handle_hIST(v2, a2, chunk_header);
          v4 = v2[1].__saved_mask.__val[28];
          goto LABEL_4;
        }
        if ( !memcmp(&v2[3].__jmpbuf[2], png_oFFs, 4u) )
        {
          result = png_handle_oFFs(v2, a2, chunk_header);
          v4 = v2[1].__saved_mask.__val[28];
          goto LABEL_4;
        }
        if ( !memcmp(&v2[3].__jmpbuf[2], png_pCAL, 4u) )
        {
          result = png_handle_pCAL(v2, a2, chunk_header);
          v4 = v2[1].__saved_mask.__val[28];
          goto LABEL_4;
        }
        if ( !memcmp(&v2[3].__jmpbuf[2], png_sCAL, 4u) )
        {
          result = png_handle_sCAL(v2, a2, chunk_header);
          v4 = v2[1].__saved_mask.__val[28];
          goto LABEL_4;
        }
        if ( !memcmp(&v2[3].__jmpbuf[2], png_pHYs, 4u) )
        {
          result = png_handle_pHYs(v2, a2, chunk_header);
          v4 = v2[1].__saved_mask.__val[28];
          goto LABEL_4;
        }
        if ( !memcmp(&v2[3].__jmpbuf[2], png_sBIT, 4u) )
        {
          result = png_handle_sBIT(v2, a2, chunk_header);
          v4 = v2[1].__saved_mask.__val[28];
          goto LABEL_4;
        }
        if ( !memcmp(&v2[3].__jmpbuf[2], png_sRGB, 4u) )
        {
          result = png_handle_sRGB(v2, a2, chunk_header);
          v4 = v2[1].__saved_mask.__val[28];
          goto LABEL_4;
        }
        if ( !memcmp(&v2[3].__jmpbuf[2], png_iCCP, 4u) )
        {
          result = png_handle_iCCP(v2, a2, chunk_header);
          v4 = v2[1].__saved_mask.__val[28];
          goto LABEL_4;
        }
        if ( !memcmp(&v2[3].__jmpbuf[2], png_sPLT, 4u) )
        {
          result = png_handle_sPLT(v2, a2, chunk_header);
          v4 = v2[1].__saved_mask.__val[28];
          goto LABEL_4;
        }
        if ( !memcmp(&v2[3].__jmpbuf[2], png_tEXt, 4u) )
        {
          result = png_handle_tEXt(v2, a2, chunk_header);
          v4 = v2[1].__saved_mask.__val[28];
          goto LABEL_4;
        }
        if ( !memcmp(&v2[3].__jmpbuf[2], png_tIME, 4u) )
        {
          result = png_handle_tIME(v2, a2, chunk_header);
          v4 = v2[1].__saved_mask.__val[28];
          goto LABEL_4;
        }
        if ( !memcmp(&v2[3].__jmpbuf[2], png_tRNS, 4u) )
        {
          result = png_handle_tRNS(v2, a2, chunk_header);
          v4 = v2[1].__saved_mask.__val[28];
          goto LABEL_4;
        }
        if ( memcmp(&v2[3].__jmpbuf[2], png_zTXt, 4u) )
        {
          result = png_handle_unknown((int)v2);
LABEL_36:
          v4 = v2[1].__saved_mask.__val[28];
          goto LABEL_4;
        }
        result = png_handle_zTXt(v2, a2, chunk_header);
        v4 = v2[1].__saved_mask.__val[28];
LABEL_4:
        if ( (v4 & 0x10) != 0 )
          return result;
      }
    }
    result = png_handle_IEND(v2, a2, chunk_header);
    v4 = v2[1].__saved_mask.__val[28];
    goto LABEL_4;
  }
  return result;
}


// ===== 686774 png_start_read_image =====
int __fastcall png_start_read_image(int result)
{
  if ( result )
  {
    if ( (*(_DWORD *)(result + 300) & 0x40) == 0 )
      return png_read_start_row();
  }
  return result;
}


// ===== 68678c png_read_row =====
int __fastcall png_read_row(int result, void *a2, void *a3)
{
  int v3; // r4
  int v4; // r3
  int v5; // r0
  const char *v6; // r1
  int v7; // r6
  int chunk_header; // r0
  unsigned int v9; // r3
  unsigned int v10; // r2
  int v11; // r1
  int v12; // r3
  unsigned int v13; // r3
  int v14; // r2
  char v15; // r12
  bool v16; // cc
  unsigned int v17; // r3
  char v18; // r0
  char v19; // r1
  _BYTE *v20; // r2
  int (__fastcall *v21)(int, _DWORD, _DWORD); // r3
  int v22; // r3
  int v23; // r3

  v3 = result;
  if ( !result )
    return result;
  if ( (*(_DWORD *)(result + 300) & 0x40) == 0 )
    png_read_start_row();
  if ( *(_BYTE *)(v3 + 483) && (*(_DWORD *)(v3 + 304) & 2) != 0 )
  {
    switch ( *(_BYTE *)(v3 + 484) )
    {
      case 0:
        if ( (*(_DWORD *)(v3 + 420) & 7) == 0 )
          goto LABEL_5;
        if ( a3 )
          goto LABEL_83;
        return png_read_finish_row(v3);
      case 1:
        if ( (*(_DWORD *)(v3 + 420) & 7) == 0 && *(_DWORD *)(v3 + 392) > 4u )
          goto LABEL_5;
        if ( a3 )
          goto LABEL_83;
        return png_read_finish_row(v3);
      case 2:
        v22 = *(_DWORD *)(v3 + 420);
        if ( (v22 & 7) == 4 )
          goto LABEL_5;
        if ( a3 && (v22 & 4) != 0 )
          goto LABEL_83;
        return png_read_finish_row(v3);
      case 3:
        if ( (*(_DWORD *)(v3 + 420) & 3) == 0 && *(_DWORD *)(v3 + 392) > 2u )
          goto LABEL_5;
        if ( a3 )
          goto LABEL_83;
        return png_read_finish_row(v3);
      case 4:
        v23 = *(_DWORD *)(v3 + 420);
        if ( (v23 & 3) == 2 )
          goto LABEL_5;
        if ( a3 && (v23 & 2) != 0 )
          goto LABEL_83;
        return png_read_finish_row(v3);
      case 5:
        if ( (*(_DWORD *)(v3 + 420) & 1) == 0 && *(_DWORD *)(v3 + 392) > 1u )
          goto LABEL_5;
        if ( a3 )
LABEL_83:
          png_combine_row(v3, a3);
        break;
      case 6:
        if ( (*(_DWORD *)(v3 + 420) & 1) != 0 )
          goto LABEL_5;
        break;
      default:
        goto LABEL_5;
    }
    return png_read_finish_row(v3);
  }
LABEL_5:
  if ( (*(_DWORD *)(v3 + 296) & 4) == 0 )
    png_error((struct __jmp_buf_tag *)v3, "Invalid attempt to read row data");
  v4 = *(_DWORD *)(v3 + 412);
  *(_DWORD *)(v3 + 320) = *(_DWORD *)(v3 + 428);
  *(_DWORD *)(v3 + 324) = v4;
  while ( *(_DWORD *)(v3 + 312) )
  {
    v5 = inflate((unsigned __int8 **)(v3 + 308), 1);
    if ( v5 == 1 )
      goto LABEL_22;
LABEL_9:
    if ( v5 )
    {
      v6 = *(const char **)(v3 + 332);
      if ( !v6 )
        v6 = "Decompression error";
      png_error((struct __jmp_buf_tag *)v3, v6);
    }
    if ( !*(_DWORD *)(v3 + 324) )
      goto LABEL_27;
  }
LABEL_15:
  v7 = *(_DWORD *)(v3 + 460);
  while ( !v7 )
  {
    png_crc_finish(v3, 0);
    chunk_header = png_read_chunk_header(v3);
    *(_DWORD *)(v3 + 460) = chunk_header;
    v7 = chunk_header;
    if ( memcmp((const void *)(v3 + 476), png_IDAT, 4u) )
    {
      png_error((struct __jmp_buf_tag *)v3, "Not enough image data");
      goto LABEL_15;
    }
  }
  v9 = *(_DWORD *)(v3 + 368);
  v10 = *(_DWORD *)(v3 + 460);
  v11 = *(_DWORD *)(v3 + 364);
  *(_DWORD *)(v3 + 312) = v9;
  if ( v9 > v10 )
    *(_DWORD *)(v3 + 312) = v10;
  *(_DWORD *)(v3 + 308) = v11;
  png_crc_read(v3);
  *(_DWORD *)(v3 + 460) -= *(_DWORD *)(v3 + 312);
  v5 = inflate((unsigned __int8 **)(v3 + 308), 1);
  if ( v5 != 1 )
    goto LABEL_9;
LABEL_22:
  if ( *(_DWORD *)(v3 + 324) || *(_DWORD *)(v3 + 312) || *(_DWORD *)(v3 + 460) )
    png_error((struct __jmp_buf_tag *)v3, "Extra compressed data");
  v12 = *(_DWORD *)(v3 + 300) | 0x20;
  *(_DWORD *)(v3 + 296) |= 8u;
  *(_DWORD *)(v3 + 300) = v12;
LABEL_27:
  v13 = *(unsigned __int8 *)(v3 + 489);
  v14 = *(_DWORD *)(v3 + 416);
  v15 = *(_BYTE *)(v3 + 486);
  v16 = v13 > 7;
  *(_BYTE *)(v3 + 459) = v13;
  if ( v13 > 7 )
    v17 = v14 * (v13 >> 3);
  else
    v17 = v14 * v13;
  v18 = *(_BYTE *)(v3 + 490);
  v19 = *(_BYTE *)(v3 + 487);
  if ( !v16 )
    v17 += 7;
  *(_DWORD *)(v3 + 448) = v14;
  v20 = *(_BYTE **)(v3 + 428);
  if ( !v16 )
    v17 >>= 3;
  *(_BYTE *)(v3 + 456) = v15;
  *(_BYTE *)(v3 + 458) = v18;
  *(_BYTE *)(v3 + 457) = v19;
  *(_DWORD *)(v3 + 452) = v17;
  if ( *v20 )
  {
    png_read_filter_row(v3, v3 + 448, v20 + 1, *(_DWORD *)(v3 + 424) + 1, (unsigned __int8)*v20);
    v20 = *(_BYTE **)(v3 + 428);
  }
  png_memcpy_check(v3, *(void **)(v3 + 424), v20, *(_DWORD *)(v3 + 408) + 1);
  if ( (*(_DWORD *)(v3 + 752) & 4) != 0 && *(_BYTE *)(v3 + 760) == 64 )
    png_do_read_intrapixel(v3 + 448, *(_DWORD *)(v3 + 428) + 1);
  if ( *(_DWORD *)(v3 + 304) || (*(_DWORD *)(v3 + 300) & 0x400000) != 0 )
    png_do_read_transformations(v3);
  if ( *(_BYTE *)(v3 + 483) && (*(_DWORD *)(v3 + 304) & 2) != 0 )
  {
    if ( *(unsigned __int8 *)(v3 + 484) <= 5u )
      png_do_read_interlace(v3);
    if ( a3 )
      png_combine_row(v3, a3);
    if ( a2 )
      png_combine_row(v3, a2);
  }
  else
  {
    if ( a2 )
      png_combine_row(v3, a2);
    if ( a3 )
      png_combine_row(v3, a3);
  }
  result = png_read_finish_row(v3);
  v21 = *(int (__fastcall **)(int, _DWORD, _DWORD))(v3 + 600);
  if ( v21 )
    return v21(v3, *(_DWORD *)(v3 + 420), *(unsigned __int8 *)(v3 + 484));
  return result;
}


// ===== 686cf4 png_read_image =====
int __fastcall png_read_image(int result, int a2)
{
  int v2; // r8
  int v3; // r6
  int v5; // r5
  int v6; // r10
  int i; // r4
  void *v8; // r1

  v3 = result;
  if ( result )
  {
    result = png_set_interlace_handling();
    v5 = *(_DWORD *)(v3 + 396);
    v6 = result;
    if ( result > 0 )
      v2 = 0;
    *(_DWORD *)(v3 + 400) = v5;
    if ( result > 0 )
    {
      do
      {
        if ( v5 )
        {
          for ( i = 0; i != v5; ++i )
          {
            v8 = *(void **)(a2 + 4 * i);
            result = png_read_row(v3, v8, nullptr);
          }
        }
        ++v2;
      }
      while ( v2 != v6 );
    }
  }
  return result;
}


// ===== 686d54 png_read_rows =====
int __fastcall png_read_rows(int result, int a2, int a3, int a4)
{
  int v4; // r5
  int v8; // r3
  _BOOL4 v9; // r2
  int v10; // r6
  void *v11; // r1
  int v12; // r4
  void *v13; // r2
  int v14; // r7
  int v15; // r10

  v4 = result;
  if ( result )
  {
    v8 = a2;
    if ( a2 )
      v8 = 1;
    v9 = a3 != 0;
    if ( (v9 & v8) != 0 )
    {
      if ( a4 )
      {
        v14 = 0;
        v15 = 0;
        do
        {
          ++v15;
          result = png_read_row(v4, *(void **)(a2 + v14), *(void **)(a3 + v14));
          v14 += 4;
        }
        while ( v15 != a4 );
      }
    }
    else if ( v8 )
    {
      if ( a4 )
      {
        v10 = v9 & v8;
        do
        {
          v11 = *(void **)(a2 + 4 * v10++);
          result = png_read_row(v4, v11, nullptr);
        }
        while ( v10 != a4 );
      }
    }
    else if ( v9 && a4 )
    {
      v12 = 0;
      do
      {
        v13 = *(void **)(a3 + 4 * v12++);
        result = png_read_row(v4, nullptr, v13);
      }
      while ( v12 != a4 );
    }
  }
  return result;
}


// ===== 686e20 png_read_update_info =====
int __fastcall png_read_update_info(int result, int a2)
{
  int v2; // r4

  v2 = result;
  if ( result )
  {
    if ( (*(_DWORD *)(result + 300) & 0x40) != 0 )
      png_warning(result, "Ignoring extra png_read_update_info() call; row buffer not reallocated");
    else
      png_read_start_row();
    return png_read_transform_info(v2, a2);
  }
  return result;
}


// ===== 686e68 png_read_info =====
int __fastcall png_read_info(int result, int a2)
{
  bool v2; // zf
  int v4; // r6
  unsigned int v5; // r4
  int chunk_header; // r7
  int v7; // r3
  int v8; // r3
  int v9; // r3
  int v10; // r3

  v2 = result == 0;
  if ( result )
    v2 = a2 == 0;
  v4 = result;
  if ( !v2 )
  {
    v5 = *(unsigned __int8 *)(result + 492);
    if ( v5 <= 7 )
    {
      png_read_data();
      *(_BYTE *)(v4 + 492) = 8;
      if ( png_sig_cmp(a2 + 32, v5, 8 - v5) )
      {
        if ( v5 <= 3 && png_sig_cmp(a2 + 32, v5, 4 - v5) )
          png_error((struct __jmp_buf_tag *)v4, "Not a PNG file");
        else
          png_error((struct __jmp_buf_tag *)v4, "PNG file corrupted by ASCII conversion");
      }
      if ( v5 <= 2 )
        *(_DWORD *)(v4 + 296) |= 0x1000u;
    }
    while ( 1 )
    {
      while ( 1 )
      {
        while ( 1 )
        {
          while ( 1 )
          {
            while ( 1 )
            {
              chunk_header = png_read_chunk_header(v4);
              if ( !memcmp((const void *)(v4 + 476), png_IDAT, 4u) )
              {
                v7 = *(_DWORD *)(v4 + 296);
                if ( (v7 & 8) != 0 )
                  *(_DWORD *)(v4 + 296) = v7 | 0x2000;
              }
              if ( memcmp((const void *)(v4 + 476), png_IHDR, 4u) )
                break;
              png_handle_IHDR(v4, a2, chunk_header);
            }
            if ( memcmp((const void *)(v4 + 476), png_IEND, 4u) )
              break;
            png_handle_IEND(v4, a2, chunk_header);
          }
          if ( !png_handle_as_unknown(v4, (void *)(v4 + 476)) )
            break;
          if ( !memcmp((const void *)(v4 + 476), png_IDAT, 4u) )
            *(_DWORD *)(v4 + 296) |= 4u;
          png_handle_unknown(v4);
          if ( !memcmp((const void *)(v4 + 476), png_PLTE, 4u) )
          {
            *(_DWORD *)(v4 + 296) |= 2u;
          }
          else
          {
            result = memcmp((const void *)(v4 + 476), png_IDAT, 4u);
            if ( !result )
            {
              v8 = *(_DWORD *)(v4 + 296);
              if ( (v8 & 1) == 0 )
                return png_error((struct __jmp_buf_tag *)v4, "Missing IHDR before IDAT");
              if ( *(_BYTE *)(v4 + 486) == 3 && (v8 & 2) == 0 )
                return png_error((struct __jmp_buf_tag *)v4, "Missing PLTE before IDAT");
              return result;
            }
          }
        }
        if ( memcmp((const void *)(v4 + 476), png_PLTE, 4u) )
          break;
        png_handle_PLTE(v4, a2, chunk_header);
      }
      result = memcmp((const void *)(v4 + 476), png_IDAT, 4u);
      if ( !result )
        break;
      if ( !memcmp((const void *)(v4 + 476), png_bKGD, 4u) )
      {
        png_handle_bKGD(v4, a2, chunk_header);
      }
      else if ( !memcmp((const void *)(v4 + 476), png_cHRM, 4u) )
      {
        png_handle_cHRM(v4, a2, chunk_header);
      }
      else if ( !memcmp((const void *)(v4 + 476), png_gAMA, 4u) )
      {
        png_handle_gAMA(v4, a2, chunk_header);
      }
      else if ( !memcmp((const void *)(v4 + 476), png_hIST, 4u) )
      {
        png_handle_hIST(v4, a2, chunk_header);
      }
      else if ( !memcmp((const void *)(v4 + 476), png_oFFs, 4u) )
      {
        png_handle_oFFs(v4, a2, chunk_header);
      }
      else if ( !memcmp((const void *)(v4 + 476), png_pCAL, 4u) )
      {
        png_handle_pCAL(v4, a2, chunk_header);
      }
      else if ( !memcmp((const void *)(v4 + 476), png_sCAL, 4u) )
      {
        png_handle_sCAL(v4, a2, chunk_header);
      }
      else if ( !memcmp((const void *)(v4 + 476), png_pHYs, 4u) )
      {
        png_handle_pHYs(v4, a2, chunk_header);
      }
      else if ( !memcmp((const void *)(v4 + 476), png_sBIT, 4u) )
      {
        png_handle_sBIT(v4, a2, chunk_header);
      }
      else if ( !memcmp((const void *)(v4 + 476), png_sRGB, 4u) )
      {
        png_handle_sRGB(v4, a2, chunk_header);
      }
      else if ( !memcmp((const void *)(v4 + 476), png_iCCP, 4u) )
      {
        png_handle_iCCP(v4, a2, chunk_header);
      }
      else if ( !memcmp((const void *)(v4 + 476), png_sPLT, 4u) )
      {
        png_handle_sPLT(v4, a2, chunk_header);
      }
      else if ( !memcmp((const void *)(v4 + 476), png_tEXt, 4u) )
      {
        png_handle_tEXt(v4, a2, chunk_header);
      }
      else if ( !memcmp((const void *)(v4 + 476), png_tIME, 4u) )
      {
        png_handle_tIME(v4, a2, chunk_header);
      }
      else if ( !memcmp((const void *)(v4 + 476), png_tRNS, 4u) )
      {
        png_handle_tRNS(v4, a2, chunk_header);
      }
      else if ( !memcmp((const void *)(v4 + 476), png_zTXt, 4u) )
      {
        png_handle_zTXt(v4, a2, chunk_header);
      }
      else
      {
        png_handle_unknown(v4);
      }
    }
    v9 = *(_DWORD *)(v4 + 296);
    if ( (v9 & 1) != 0 )
    {
      if ( *(_BYTE *)(v4 + 486) == 3 && (v9 & 2) == 0 )
      {
        result = png_error((struct __jmp_buf_tag *)v4, "Missing PLTE before IDAT");
        v9 = *(_DWORD *)(v4 + 296);
      }
      *(_DWORD *)(v4 + 296) = v9 | 4;
      *(_DWORD *)(v4 + 460) = chunk_header;
    }
    else
    {
      result = png_error((struct __jmp_buf_tag *)v4, "Missing IHDR before IDAT");
      v10 = *(_DWORD *)(v4 + 296);
      *(_DWORD *)(v4 + 460) = chunk_header;
      *(_DWORD *)(v4 + 296) = v10 | 4;
    }
  }
  return result;
}


// ===== 687528 png_read_png =====
int __fastcall png_read_png(int result, _DWORD *a2, __int16 a3)
{
  int v3; // r5
  int v6; // r6
  void *v7; // r0
  int v8; // r2
  int v9; // r3
  int v10; // r7
  size_t rowbytes; // r0
  int v12; // [sp+4h] [bp-8h] BYREF

  v3 = result;
  if ( !result )
    return result;
  if ( (a3 & 0x400) != 0 )
    png_set_invert_alpha();
  png_read_info(v3, (int)a2);
  if ( a2[1] > 0x3FFFFFFFu )
    png_error((struct __jmp_buf_tag *)v3, "Image is too high to process with png_read_png()");
  if ( (a3 & 1) != 0 )
    png_set_strip_16(v3);
  if ( (a3 & 2) != 0 )
    png_set_strip_alpha(v3);
  if ( (a3 & 8) != 0 )
    png_set_packswap(v3);
  if ( (a3 & 0x10) == 0
    || *(unsigned __int8 *)(v3 + 487) > 7u && *(_BYTE *)(v3 + 486) != 3 && !png_get_valid(v3, (int)a2, 16) )
  {
    if ( (a3 & 0x20) != 0 )
      goto LABEL_28;
LABEL_14:
    if ( (a3 & 0x40) != 0 )
      goto LABEL_29;
    goto LABEL_15;
  }
  png_set_expand(v3);
  if ( (a3 & 0x20) == 0 )
    goto LABEL_14;
LABEL_28:
  png_set_invert_mono(v3);
  if ( (a3 & 0x40) != 0 )
  {
LABEL_29:
    if ( png_get_valid(v3, (int)a2, 2) )
    {
      png_get_sBIT(v3, (int)a2, &v12);
      png_set_shift(v3, v12);
    }
  }
LABEL_15:
  if ( (a3 & 0x80) != 0 )
    png_set_bgr(v3);
  if ( (a3 & 0x100) != 0 )
    png_set_swap_alpha(v3);
  if ( (a3 & 0x200) != 0 )
    png_set_swap(v3);
  png_read_update_info(v3, (int)a2);
  png_free_data(v3, (int)a2, 64, 0);
  v6 = a2[62];
  if ( !v6 )
  {
    v7 = png_malloc((struct __jmp_buf_tag *)v3, 4 * a2[1]);
    v8 = a2[1];
    v6 = (int)v7;
    v9 = a2[46] | 0x40;
    a2[62] = v7;
    a2[46] = v9;
    if ( v8 > 0 )
    {
      v10 = 0;
      while ( 1 )
      {
        rowbytes = png_get_rowbytes(v3, (int)a2);
        *(_DWORD *)(v6 + 4 * v10++) = png_malloc((struct __jmp_buf_tag *)v3, rowbytes);
        if ( a2[1] <= v10 )
          break;
        v6 = a2[62];
      }
      v6 = a2[62];
    }
  }
  png_read_image(v3, v6);
  a2[2] |= 0x8000u;
  return png_read_end(v3, (int)a2);
}


// ===== 687760 png_read_init_3 =====
struct __jmp_buf_tag **__fastcall png_read_init_3(struct __jmp_buf_tag **result, int a2, unsigned int a3)
{
  struct __jmp_buf_tag *v3; // r4
  struct __jmp_buf_tag **v4; // r7
  int v6; // r3
  int v7; // r2
  int v8; // r0
  int v9; // r3
  _BYTE v10[256]; // [sp+0h] [bp-100h] BYREF

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
    png_warning((int)v3, "Application uses deprecated png_read_init() and should be recompiled.");
LABEL_5:
    memcpy(v10, v3, sizeof(v10));
    if ( a3 < 0x34C )
    {
      png_destroy_struct(v3);
      v3 = (struct __jmp_buf_tag *)png_create_struct(1);
      *v4 = v3;
    }
    LC_API_MEMSET_0(v3, 0, 0x34Cu);
    memcpy(v3, v10, 0x100u);
    v3[5].__saved_mask.__val[0] = 1000000;
    v3[5].__mask_was_saved = 1000000;
    v3[2].__saved_mask.__val[7] = 0x2000;
    v3[2].__saved_mask.__val[6] = (unsigned int)png_malloc(v3, 0x2000u);
    v3[2].__saved_mask.__val[2] = (unsigned int)v3;
    v3[2].__saved_mask.__val[0] = (unsigned int)png_zalloc;
    v3[2].__saved_mask.__val[1] = (unsigned int)png_zfree;
    switch ( inflateInit_(&v3[1].__saved_mask.__val[31], "1.2.3", 56) )
    {
      case -6:
        png_error(v3, "zlib version");
        break;
      case -4:
      case -2:
        png_error(v3, "zlib memory");
        break;
      case 0:
        break;
      default:
        png_error(v3, "Unknown zlib error");
        break;
    }
    v9 = v3[2].__saved_mask.__val[7];
    v3[2].__jmpbuf[2] = v3[2].__saved_mask.__val[6];
    v3[2].__jmpbuf[3] = v9;
    return (struct __jmp_buf_tag **)png_set_read_fn(v3, 0, 0);
  }
  return result;
}


// ===== 687928 png_read_init_2 =====
struct __jmp_buf_tag *__fastcall png_read_init_2(
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
        png_error(v8, "The png struct allocated by the application for reading is too small.");
      }
      if ( v6 )
      {
        v8[1].__saved_mask.__val[18] = 0;
        v8[1].__saved_mask.__val[29] = 0;
        png_error(v8, "The info struct allocated by application for reading is too small.");
      }
    }
    return (struct __jmp_buf_tag *)png_read_init_3(&v8, (int)a2, a3);
  }
  return result;
}


// ===== 687a84 png_read_init =====
struct __jmp_buf_tag *__fastcall png_read_init(struct __jmp_buf_tag *a1)
{
  return png_read_init_2(a1, "1.0.6 or earlier", 0, 0);
}


// ===== 687a9c png_create_read_struct_2 =====
struct __jmp_buf_tag *__fastcall png_create_read_struct_2(
        char *a1,
        int a2,
        int a3,
        int a4,
        int a5,
        int (__fastcall *a6)(char *, size_t),
        void (__fastcall *a7)(_BYTE *, void *))
{
  struct __jmp_buf_tag *result; // r0
  int v8; // r4
  int v9; // r3
  struct __jmp_buf_tag *__attribute__((__org_typedef(jmp_buf))) env; // [sp+20h] [bp-58h]
  char s[80]; // [sp+24h] [bp-54h] BYREF

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
    png_destroy_struct_2(env, a7, a5);
    return nullptr;
  }
  png_set_mem_fn(env, a5, (int)a6, (int)a7);
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
    if ( (env[1].__saved_mask.__val[29] & 0x20000) == 0 )
      goto LABEL_14;
  }
  else
  {
    env[1].__saved_mask.__val[29] |= 0x20000u;
    if ( (env[1].__saved_mask.__val[29] & 0x20000) == 0 )
      goto LABEL_14;
  }
  if ( a1 )
  {
    if ( png_libpng_ver[0] == *a1 )
    {
      if ( png_libpng_ver[0] == 49 )
      {
        if ( a1[2] == png_libpng_ver[2] )
          goto LABEL_14;
      }
      else if ( png_libpng_ver[0] != 48 || a1[2] > 56 )
      {
        goto LABEL_14;
      }
    }
    snprintf(s, 0x50u, "Application was compiled with png.h from libpng-%.20s", a1);
    png_warning((int)env, s);
  }
  snprintf(s, 0x50u, "Application  is  running with png.c from libpng-%.20s", "1.2.32");
  png_warning((int)env, s);
  env[1].__saved_mask.__val[29] = 0;
  png_error(env, "Incompatible libpng version in application and library");
LABEL_14:
  env[2].__saved_mask.__val[7] = 0x2000;
  env[2].__saved_mask.__val[6] = (unsigned int)png_malloc(env, env[2].__saved_mask.__val[7]);
  env[2].__saved_mask.__val[0] = (unsigned int)png_zalloc;
  env[2].__saved_mask.__val[1] = (unsigned int)png_zfree;
  env[2].__saved_mask.__val[2] = (unsigned int)env;
  switch ( inflateInit_(&env[1].__saved_mask.__val[31], "1.2.3", 56) )
  {
    case -6:
      png_error(env, "zlib version error");
      break;
    case -4:
    case -2:
      png_error(env, "zlib memory error");
      break;
    case 0:
      break;
    default:
      png_error(env, "Unknown zlib error");
      break;
  }
  env[2].__jmpbuf[2] = env[2].__saved_mask.__val[6];
  env[2].__jmpbuf[3] = env[2].__saved_mask.__val[7];
  png_set_read_fn(env, 0, 0);
  if ( setjmp(env) )
    abort();
  return env;
}


// ===== 687e4c png_create_read_struct =====
struct __jmp_buf_tag *__fastcall png_create_read_struct(char *a1, int a2, int a3, int a4)
{
  return png_create_read_struct_2(a1, a2, a3, a4, 0, nullptr, nullptr);
}


// ===== 687e70 png_set_read_fn =====
_DWORD *__fastcall png_set_read_fn(_DWORD *result, int a2, int a3)
{
  int v3; // r4

  v3 = (int)result;
  if ( result )
  {
    result[69] = a2;
    if ( a3 )
      result[68] = a3;
    else
      result[68] = png_default_read_data;
    if ( result[67] )
    {
      result[67] = 0;
      png_warning((int)result, "It's an error to set both read_data_fn and write_data_fn in the ");
      result = (_DWORD *)png_warning(v3, "same structure.  Resetting write_data_fn to NULL.");
    }
    *(_DWORD *)(v3 + 524) = 0;
  }
  return result;
}


// ===== 687ef4 png_default_read_data =====
size_t __fastcall png_default_read_data(size_t result, void *ptr, size_t a3)
{
  struct __jmp_buf_tag *v3; // r4

  v3 = (struct __jmp_buf_tag *)result;
  if ( result )
  {
    result = fread(ptr, 1u, a3, *(FILE **)(result + 276));
    if ( a3 != result )
      return png_error(v3, "Read Error");
  }
  return result;
}


// ===== 687f38 png_read_data =====
int __fastcall png_read_data(struct __jmp_buf_tag *a1)
{
  int (*v1)(void); // r3

  v1 = (int (*)(void))a1[1].__saved_mask.__val[22];
  if ( v1 )
    return v1();
  else
    return png_error(a1, "Call to NULL read function");
}


// ===== 687f64 png_set_strip_16 =====
int __fastcall png_set_strip_16(int result)
{
  if ( result )
    *(_DWORD *)(result + 304) |= 0x400u;
  return result;
}


// ===== 687f78 png_set_strip_alpha =====
int __fastcall png_set_strip_alpha(int result)
{
  if ( result )
    *(_DWORD *)(result + 300) |= 0x400000u;
  return result;
}


// ===== 687f8c png_set_gamma =====
float __fastcall png_set_gamma(float result, double a2, double a3)
{
  float v4; // r4
  double v6; // r0
  float v7; // r0
  int v8; // r3

  v4 = result;
  if ( result != 0.0 )
  {
    v6 = a2 * a3 - 1.0;
    HIDWORD(v6) &= ~0x80000000;
    if ( v6 > 0.05 || (v8 = *(unsigned __int8 *)(LODWORD(v4) + 486), (v8 & 4) != 0) || v8 == 3 )
      *(_DWORD *)(LODWORD(v4) + 304) |= 0x2000u;
    v7 = a3;
    *(float *)(LODWORD(v4) + 540) = v7;
    result = a2;
    *(float *)(LODWORD(v4) + 544) = result;
  }
  return result;
}


// ===== 688038 png_set_expand =====
int __fastcall png_set_expand(int result)
{
  int v1; // r3

  if ( result )
  {
    v1 = *(_DWORD *)(result + 304) | 0x2001000;
    *(_DWORD *)(result + 300) &= ~0x40u;
    *(_DWORD *)(result + 304) = v1;
  }
  return result;
}


// ===== 688060 png_set_palette_to_rgb =====
int __fastcall png_set_palette_to_rgb(int result)
{
  int v1; // r3

  if ( result )
  {
    v1 = *(_DWORD *)(result + 304) | 0x2001000;
    *(_DWORD *)(result + 300) &= ~0x40u;
    *(_DWORD *)(result + 304) = v1;
  }
  return result;
}


// ===== 688088 png_set_expand_gray_1_2_4_to_8 =====
int __fastcall png_set_expand_gray_1_2_4_to_8(int result)
{
  int v1; // r3

  if ( result )
  {
    v1 = *(_DWORD *)(result + 304) | 0x1000;
    *(_DWORD *)(result + 300) &= ~0x40u;
    *(_DWORD *)(result + 304) = v1;
  }
  return result;
}


// ===== 6880ac png_set_gray_1_2_4_to_8 =====
int __fastcall png_set_gray_1_2_4_to_8(int result)
{
  if ( result )
    *(_DWORD *)(result + 304) |= 0x2001000u;
  return result;
}


// ===== 6880c4 png_set_tRNS_to_alpha =====
int __fastcall png_set_tRNS_to_alpha(int result)
{
  int v1; // r3

  v1 = *(_DWORD *)(result + 304) | 0x2001000;
  *(_DWORD *)(result + 300) &= ~0x40u;
  *(_DWORD *)(result + 304) = v1;
  return result;
}


// ===== 6880e4 png_set_gray_to_rgb =====
int __fastcall png_set_gray_to_rgb(int result)
{
  int v1; // r3

  v1 = *(_DWORD *)(result + 304) | 0x4000;
  *(_DWORD *)(result + 300) &= ~0x40u;
  *(_DWORD *)(result + 304) = v1;
  return result;
}


// ===== 688100 png_set_read_user_transform_fn =====
int __fastcall png_set_read_user_transform_fn(int result, int a2)
{
  int v2; // r3

  if ( result )
  {
    v2 = *(_DWORD *)(result + 304);
    *(_DWORD *)(result + 280) = a2;
    *(_DWORD *)(result + 304) = v2 | 0x100000;
  }
  return result;
}


// ===== 688118 png_read_transform_info =====
_DWORD *__fastcall png_read_transform_info(_DWORD *result, int *a2)
{
  int v2; // r3
  _DWORD *v3; // r5
  int v5; // r2
  unsigned int v6; // r1
  bool v7; // zf
  int v8; // r3
  int v9; // r2
  bool v10; // zf
  unsigned int v11; // r3
  unsigned int v12; // r3
  unsigned int v13; // r2
  unsigned __int8 v14; // r1
  int v15; // r3
  bool v16; // cc
  unsigned int v17; // r1

  v2 = result[76];
  v3 = result;
  if ( (v2 & 0x1000) == 0 )
  {
LABEL_14:
    v5 = *((unsigned __int8 *)a2 + 25);
    goto LABEL_15;
  }
  v5 = *((unsigned __int8 *)a2 + 25);
  if ( v5 == 3 )
  {
    if ( *((_WORD *)result + 237) && (v2 & 0x2000000) != 0 )
      *((_BYTE *)a2 + 25) = 6;
    else
      *((_BYTE *)a2 + 25) = 2;
    *((_BYTE *)a2 + 24) = 8;
    *((_WORD *)a2 + 11) = 0;
    v2 = result[76];
    goto LABEL_14;
  }
  if ( *((_WORD *)result + 237) && (v2 & 0x2000000) != 0 )
  {
    v5 |= 4u;
    *((_BYTE *)a2 + 25) = v5;
  }
  if ( *((unsigned __int8 *)a2 + 24) <= 7u )
    *((_BYTE *)a2 + 24) = 8;
  *((_WORD *)a2 + 11) = 0;
  v2 = result[76];
LABEL_15:
  if ( (v2 & 0x80) != 0 )
  {
    *((_BYTE *)a2 + 25) = v5 & 0xFB;
    *((_WORD *)a2 + 11) = 0;
    result = memcpy((char *)a2 + 90, result + 126, 0xAu);
    v2 = v3[76];
    v5 = *((unsigned __int8 *)a2 + 25);
  }
  if ( (v2 & 0x2000) != 0 )
  {
    a2[10] = v3[135];
    a2[63] = v3[189];
    v2 = v3[76];
  }
  if ( (v2 & 0x400) != 0 )
  {
    v6 = *((unsigned __int8 *)a2 + 24);
    if ( v6 == 16 )
    {
      v6 = 8;
      *((_BYTE *)a2 + 24) = 8;
      v2 = v3[76];
    }
  }
  else
  {
    v6 = *((unsigned __int8 *)a2 + 24);
  }
  if ( (v2 & 0x4000) != 0 )
  {
    LOBYTE(v5) = v5 | 2;
    *((_BYTE *)a2 + 25) = v5;
    v2 = v3[76];
    v5 = (unsigned __int8)v5;
  }
  if ( (v2 & 0x600000) != 0 )
  {
    LOBYTE(v5) = v5 & 0xFD;
    *((_BYTE *)a2 + 25) = v5;
    v2 = v3[76];
    v5 = (unsigned __int8)v5;
  }
  if ( (v2 & 0x40) != 0 )
  {
    v7 = v5 == 2;
    if ( v5 != 2 )
      v7 = v5 == 6;
    if ( v7 )
    {
      result = (_DWORD *)v3[171];
      if ( result )
      {
        if ( v6 == 8 )
        {
          v5 = 3;
          *((_BYTE *)a2 + 25) = 3;
          v2 = v3[76];
        }
      }
    }
  }
  if ( (v2 & 4) != 0 && v6 <= 7 )
  {
    v6 = 8;
    *((_BYTE *)a2 + 24) = 8;
  }
  if ( v5 == 3 || (v5 & 2) == 0 )
    *((_BYTE *)a2 + 29) = 1;
  else
    *((_BYTE *)a2 + 29) = 3;
  if ( (v3[75] & 0x400000) != 0 )
  {
    LOBYTE(v5) = v5 & 0xFB;
    *((_BYTE *)a2 + 25) = v5;
  }
  if ( (v5 & 4) != 0 )
    ++*((_BYTE *)a2 + 29);
  v8 = v3[76];
  if ( (v8 & 0x8000) != 0 )
  {
    v9 = *((unsigned __int8 *)a2 + 25);
    v10 = v9 == 2;
    if ( v9 != 2 )
      v10 = v9 == 0;
    if ( v10 )
    {
      ++*((_BYTE *)a2 + 29);
      v8 = v3[76];
      if ( (v8 & 0x1000000) != 0 )
      {
        *((_BYTE *)a2 + 25) = v9 | 4;
        v8 = v3[76];
      }
    }
  }
  if ( (v8 & 0x100000) != 0 )
  {
    v12 = *((unsigned __int8 *)v3 + 292);
    v13 = *((unsigned __int8 *)a2 + 29);
    if ( v6 < v12 )
    {
      *((_BYTE *)a2 + 24) = v12;
      LOBYTE(v6) = v12;
    }
    v11 = *((unsigned __int8 *)v3 + 293);
    if ( v13 < v11 )
      *((_BYTE *)a2 + 29) = v11;
    else
      LOBYTE(v11) = v13;
  }
  else
  {
    LOBYTE(v11) = *((_BYTE *)a2 + 29);
  }
  v14 = v6 * v11;
  v15 = *a2;
  v16 = v14 > 7u;
  *((_BYTE *)a2 + 30) = v14;
  if ( v14 > 7u )
    v17 = v15 * (v14 >> 3);
  else
    v17 = v15 * v14;
  if ( !v16 )
    v17 = (v17 + 7) >> 3;
  a2[3] = v17;
  return result;
}


// ===== 688374 png_do_unpack =====
int *__fastcall png_do_unpack(int *result, int a2)
{
  unsigned int v2; // r3
  int v3; // r4
  int v4; // r3
  int v5; // r6
  int v6; // r2
  unsigned __int8 *v7; // r1
  int i; // r3
  int v9; // r12
  bool v10; // zf
  int v11; // r12
  char v12; // r12
  int v13; // r6
  int v14; // r2
  unsigned __int8 *v15; // r1
  int k; // r3
  int v17; // r12
  bool v18; // zf
  int v19; // r12
  char v20; // r12
  int v21; // r2
  int v22; // r6
  unsigned __int8 *v23; // r1
  int j; // r3
  int v25; // r12

  v2 = *((unsigned __int8 *)result + 9);
  if ( v2 <= 7 )
  {
    v3 = *result;
    if ( v2 == 2 )
    {
      if ( v3 )
      {
        v5 = a2 + v3 - 1;
        v6 = 2 * (~((_BYTE)v3 + 3) & 3);
        v7 = (unsigned __int8 *)(a2 + ((unsigned int)(v3 - 1) >> 2));
        for ( i = 0; ; --i )
        {
          v9 = *v7;
          v10 = v6 == 6;
          if ( v6 == 6 )
            --v7;
          v11 = v9 >> v6;
          if ( v6 == 6 )
            v6 = 0;
          v12 = v11 & 3;
          if ( !v10 )
            v6 += 2;
          *(_BYTE *)(v5 + i) = v12;
          if ( i == 1 - v3 )
            break;
        }
      }
    }
    else if ( v2 == 4 )
    {
      if ( (v3 & 1) != 0 )
        v21 = 4;
      else
        v21 = 0;
      if ( v3 )
      {
        v22 = a2 + v3 - 1;
        v23 = (unsigned __int8 *)(a2 + ((unsigned int)(v3 - 1) >> 1));
        for ( j = 0; ; --j )
        {
          v25 = *v23;
          if ( v21 == 4 )
            --v23;
          *(_BYTE *)(v22 + j) = (v25 >> v21) & 0xF;
          v21 = v21 == 4 ? 0 : 4;
          if ( j == 1 - v3 )
            break;
        }
      }
    }
    else if ( v2 == 1 && v3 )
    {
      v13 = a2 + v3 - 1;
      v14 = ~((_BYTE)v3 + 7) & 7;
      v15 = (unsigned __int8 *)(a2 + ((unsigned int)(v3 - 1) >> 3));
      for ( k = 0; ; --k )
      {
        v17 = *v15;
        v18 = v14 == 7;
        if ( v14 == 7 )
          --v15;
        v19 = v17 >> v14;
        if ( v14 == 7 )
          v14 = 0;
        v20 = v19 & 1;
        if ( !v18 )
          ++v14;
        *(_BYTE *)(v13 + k) = v20;
        if ( k == 1 - v3 )
          break;
      }
    }
    v4 = *((unsigned __int8 *)result + 10);
    *((_BYTE *)result + 9) = 8;
    result[1] = v3 * v4;
    *((_BYTE *)result + 11) = 8 * v4;
  }
  return result;
}


// ===== 6884dc png_do_unshift =====
int __fastcall png_do_unshift(int result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  int v3; // r3
  int v5; // r8
  int v6; // r7
  unsigned int v7; // r6
  _DWORD *v8; // r3
  int v9; // r3
  int v10; // r5
  int v11; // r2
  int v12; // r8
  unsigned int v13; // r5
  _DWORD *v14; // r1
  __int16 v15; // r7
  int v16; // r12
  int v17; // r1
  int v18; // r8
  unsigned int k; // r5
  char v20; // r1
  char v21; // r12
  int j; // r3
  int v23; // r1
  int i; // r3
  _DWORD v25[5]; // [sp+0h] [bp-14h] BYREF

  v3 = *(unsigned __int8 *)(result + 8);
  if ( v3 != 3 )
  {
    v5 = *(_DWORD *)result;
    v6 = *(unsigned __int8 *)(result + 9);
    if ( (v3 & 2) != 0 )
    {
      v16 = v6 - a3[1];
      v17 = v6 - a3[2];
      v25[0] = v6 - *a3;
      v25[1] = v16;
      v25[2] = v17;
      v7 = 3;
    }
    else
    {
      v7 = 1;
      v25[0] = v6 - a3[3];
    }
    if ( (v3 & 4) != 0 )
    {
      v8 = &v25[v7++ + 4];
      *(v8 - 4) = v6 - a3[4];
    }
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = v25[v9];
      if ( v11 <= 0 )
        v25[v9] = 0;
      ++v9;
      if ( v11 > 0 )
        v10 = 1;
    }
    while ( v9 != v7 );
    if ( v10 )
    {
      switch ( v6 )
      {
        case 2:
          v23 = *(_DWORD *)(result + 4);
          if ( v23 )
          {
            for ( i = 0; i != v23; ++i )
              a2[i] = (a2[i] >> 1) & 0x55;
          }
          break;
        case 4:
          v20 = v25[0];
          result = *(_DWORD *)(result + 4);
          v21 = (240 >> SLOBYTE(v25[0])) & 0xF0 | (15 >> SLOBYTE(v25[0]));
          if ( result )
          {
            for ( j = 0; j != result; ++j )
              a2[j] = v21 & ((int)a2[j] >> v20);
          }
          break;
        case 8:
          v18 = v7 * v5;
          if ( v18 )
          {
            for ( k = 0; k != v18; ++k )
            {
              result = k / v7;
              a2[k] = (int)a2[k] >> v25[k % v7];
            }
          }
          break;
        case 16:
          v12 = v7 * v5;
          if ( v12 )
          {
            v13 = 0;
            do
            {
              result = v13 / v7;
              v14 = &v25[v13 % v7 + 4];
              ++v13;
              v15 = (int)(unsigned __int16)(a2[1] + (*a2 << 8)) >> *(v14 - 4);
              a2[1] = v15;
              *a2 = HIBYTE(v15);
              a2 += 2;
            }
            while ( v13 != v12 );
          }
          break;
        default:
          return result;
      }
    }
  }
  return result;
}


// ===== 688704 png_do_chop =====
int *__fastcall png_do_chop(int *result, int a2)
{
  int v2; // r3
  int v3; // r2
  int v4; // r12
  int i; // r3

  if ( *((_BYTE *)result + 9) == 16 )
  {
    v2 = *((unsigned __int8 *)result + 10);
    v3 = *result;
    v4 = *result * v2;
    if ( v4 )
    {
      for ( i = 0; i != v4; ++i )
        *(_BYTE *)(a2 + i) = *(_BYTE *)(a2 + 2 * i);
      v2 = *((unsigned __int8 *)result + 10);
      v3 = *result;
    }
    result[1] = v3 * v2;
    *((_BYTE *)result + 9) = 8;
    *((_BYTE *)result + 11) = 8 * v2;
  }
  return result;
}


// ===== 688760 png_do_read_swap_alpha =====
int __fastcall png_do_read_swap_alpha(int result, int a2)
{
  int v2; // r3
  int v3; // r2
  int v4; // r1
  int v5; // r3
  char v6; // r12
  char v7; // r4
  int v8; // r1
  int v9; // r3
  char v10; // r12
  char v11; // r8
  char v12; // r7
  char v13; // r6
  char v14; // r5
  char v15; // r4
  int v16; // r1
  int v17; // r3
  int v18; // r1
  int v19; // r3
  char v20; // r4
  char v21; // r12

  v2 = *(unsigned __int8 *)(result + 8);
  v3 = *(_DWORD *)result;
  if ( v2 == 6 )
  {
    if ( *(_BYTE *)(result + 9) == 8 )
    {
      if ( v3 )
      {
        v18 = a2 + *(_DWORD *)(result + 4);
        v19 = 0;
        do
        {
          v20 = *(_BYTE *)(v18 - 3);
          result = *(unsigned __int8 *)(v18 - 1);
          v21 = *(_BYTE *)(v18 - 4);
          ++v19;
          *(_BYTE *)(v18 - 1) = *(_BYTE *)(v18 - 2);
          *(_BYTE *)(v18 - 2) = v20;
          *(_BYTE *)(v18 - 3) = v21;
          *(_BYTE *)(v18 - 4) = result;
          v18 -= 4;
        }
        while ( v19 != v3 );
      }
    }
    else if ( v3 )
    {
      v8 = a2 + *(_DWORD *)(result + 4);
      v9 = 0;
      do
      {
        v10 = *(_BYTE *)(v8 - 1);
        v11 = *(_BYTE *)(v8 - 4);
        v12 = *(_BYTE *)(v8 - 5);
        v13 = *(_BYTE *)(v8 - 6);
        v14 = *(_BYTE *)(v8 - 7);
        result = *(unsigned __int8 *)(v8 - 2);
        v15 = *(_BYTE *)(v8 - 8);
        ++v9;
        *(_BYTE *)(v8 - 1) = *(_BYTE *)(v8 - 3);
        *(_BYTE *)(v8 - 2) = v11;
        *(_BYTE *)(v8 - 3) = v12;
        *(_BYTE *)(v8 - 4) = v13;
        *(_BYTE *)(v8 - 5) = v14;
        *(_BYTE *)(v8 - 6) = v15;
        *(_BYTE *)(v8 - 7) = v10;
        *(_BYTE *)(v8 - 8) = result;
        v8 -= 8;
      }
      while ( v9 != v3 );
    }
  }
  else if ( v2 == 4 )
  {
    if ( *(_BYTE *)(result + 9) == 8 )
    {
      if ( v3 )
      {
        v16 = a2 + *(_DWORD *)(result + 4);
        v17 = 0;
        do
        {
          result = *(unsigned __int8 *)(v16 - 1);
          ++v17;
          *(_BYTE *)(v16 - 1) = *(_BYTE *)(v16 - 2);
          *(_BYTE *)(v16 - 2) = result;
          v16 -= 2;
        }
        while ( v17 != v3 );
      }
    }
    else if ( v3 )
    {
      v4 = a2 + *(_DWORD *)(result + 4);
      v5 = 0;
      do
      {
        v6 = *(_BYTE *)(v4 - 1);
        result = *(unsigned __int8 *)(v4 - 2);
        v7 = *(_BYTE *)(v4 - 4);
        ++v5;
        *(_BYTE *)(v4 - 1) = *(_BYTE *)(v4 - 3);
        *(_BYTE *)(v4 - 2) = v7;
        *(_BYTE *)(v4 - 3) = v6;
        *(_BYTE *)(v4 - 4) = result;
        v4 -= 4;
      }
      while ( v5 != v3 );
    }
  }
  return result;
}


// ===== 6888bc png_do_read_invert_alpha =====
int __fastcall png_do_read_invert_alpha(int result, int a2)
{
  int v2; // r3
  int v3; // r2
  int v4; // r1
  int v5; // r3
  int v6; // r1
  int v7; // r3
  int v8; // r1
  int v9; // r3
  int v10; // r1
  int v11; // r3

  v2 = *(unsigned __int8 *)(result + 8);
  v3 = *(_DWORD *)result;
  if ( v2 == 6 )
  {
    if ( *(_BYTE *)(result + 9) == 8 )
    {
      if ( v3 )
      {
        v10 = a2 + *(_DWORD *)(result + 4);
        v11 = 0;
        do
        {
          ++v11;
          result = ~*(unsigned __int8 *)(v10 - 1);
          *(_BYTE *)(v10 - 1) = result;
          v10 -= 4;
        }
        while ( v11 != v3 );
      }
    }
    else if ( v3 )
    {
      v6 = a2 + *(_DWORD *)(result + 4);
      v7 = 0;
      do
      {
        ++v7;
        result = ~*(unsigned __int8 *)(v6 - 2);
        *(_BYTE *)(v6 - 1) = ~*(_BYTE *)(v6 - 1);
        *(_BYTE *)(v6 - 2) = result;
        v6 -= 8;
      }
      while ( v7 != v3 );
    }
  }
  else if ( v2 == 4 )
  {
    if ( *(_BYTE *)(result + 9) == 8 )
    {
      if ( v3 )
      {
        v8 = a2 + *(_DWORD *)(result + 4);
        v9 = 0;
        do
        {
          ++v9;
          result = ~*(unsigned __int8 *)(v8 - 1);
          *(_BYTE *)(v8 - 1) = result;
          v8 -= 2;
        }
        while ( v9 != v3 );
      }
    }
    else if ( v3 )
    {
      v4 = a2 + *(_DWORD *)(result + 4);
      v5 = 0;
      do
      {
        ++v5;
        result = ~*(unsigned __int8 *)(v4 - 2);
        *(_BYTE *)(v4 - 1) = ~*(_BYTE *)(v4 - 1);
        *(_BYTE *)(v4 - 2) = result;
        v4 -= 4;
      }
      while ( v5 != v3 );
    }
  }
  return result;
}


// ===== 6889d4 png_do_read_filler =====
int __fastcall png_do_read_filler(int result, int a2, __int16 a3, char a4)
{
  char v4; // r5
  unsigned int v5; // r4
  int v6; // r12
  int v7; // r12
  int v8; // r12
  int v9; // r1
  int v10; // r7
  int v11; // r3
  int v12; // r12
  char v13; // t1
  int v14; // r4
  int v15; // r1
  int v16; // r6
  int v17; // r2
  int i; // r3
  char v19; // r12
  int v20; // r4
  int v21; // r3
  int v22; // r7
  int v23; // r1
  int v24; // r3
  int v25; // r12
  char v26; // t1
  int v27; // r4
  int v28; // r1
  int v29; // r3
  int v30; // r12
  char v31; // t1
  int v32; // r12
  int v33; // r1
  char v34; // t1
  int v35; // r3
  int v36; // r1
  int v37; // r6
  int v38; // r12
  int v39; // r3
  char v40; // t1
  int v41; // r4
  int v42; // r2
  int v43; // r1
  char v44; // t1
  int v45; // r1
  int v46; // r3
  char v47; // t1

  v4 = a3;
  v5 = *(_DWORD *)result;
  if ( *(_BYTE *)(result + 8) )
  {
    if ( *(_BYTE *)(result + 8) == 2 )
    {
      v7 = *(unsigned __int8 *)(result + 9);
      if ( v7 == 8 )
      {
        v35 = a4 & 0x80;
        if ( v35 )
        {
          v36 = a2 + 3 * v5;
          v37 = v36 + v5;
          if ( v5 > 1 )
          {
            v38 = v36 + 3 - 3 * v5;
            v39 = v36 + v5;
            do
            {
              *(_BYTE *)(v39 - 1) = a3;
              *(_BYTE *)(v39 - 2) = *(_BYTE *)(v36 - 1);
              *(_BYTE *)(v39 - 3) = *(_BYTE *)(v36 - 2);
              v40 = *(_BYTE *)(v36 - 3);
              v36 -= 3;
              *(_BYTE *)(v39 - 4) = v40;
              v39 -= 4;
            }
            while ( v36 != v38 );
            v37 += 4 * (1 - v5);
          }
          v41 = 4 * v5;
          *(_BYTE *)(v37 - 1) = a3;
        }
        else
        {
          if ( v5 )
          {
            v42 = a2 + 3 * v5;
            v43 = v42 + v5;
            do
            {
              ++v35;
              *(_BYTE *)(v43 - 1) = *(_BYTE *)(v42 - 1);
              *(_BYTE *)(v43 - 2) = *(_BYTE *)(v42 - 2);
              v44 = *(_BYTE *)(v42 - 3);
              v42 -= 3;
              *(_BYTE *)(v43 - 3) = v44;
              *(_BYTE *)(v43 - 4) = v4;
              v43 -= 4;
            }
            while ( v35 != v5 );
          }
          v41 = 4 * v5;
        }
        *(_BYTE *)(result + 10) = 4;
        *(_DWORD *)(result + 4) = v41;
        *(_BYTE *)(result + 11) = 32;
      }
      else if ( v7 == 16 )
      {
        v8 = a4 & 0x80;
        if ( a4 < 0 )
        {
          v9 = a2 + 6 * v5;
          v10 = v9 + 2 * v5;
          if ( v5 > 1 )
          {
            v11 = v9 + 2 * v5;
            v12 = 1;
            do
            {
              *(_WORD *)(v11 - 2) = a3;
              ++v12;
              *(_BYTE *)(v11 - 3) = *(_BYTE *)(v9 - 1);
              *(_BYTE *)(v11 - 4) = *(_BYTE *)(v9 - 2);
              *(_BYTE *)(v11 - 5) = *(_BYTE *)(v9 - 3);
              *(_BYTE *)(v11 - 6) = *(_BYTE *)(v9 - 4);
              *(_BYTE *)(v11 - 7) = *(_BYTE *)(v9 - 5);
              v13 = *(_BYTE *)(v9 - 6);
              v9 -= 6;
              *(_BYTE *)(v11 - 8) = v13;
              v11 -= 8;
            }
            while ( v12 != v5 );
            v10 += 8 * (1 - v5);
          }
          v14 = 8 * v5;
          *(_WORD *)(v10 - 2) = a3;
        }
        else
        {
          if ( v5 )
          {
            v45 = a2 + 6 * v5;
            v46 = v45 + 2 * v5;
            do
            {
              ++v8;
              *(_BYTE *)(v46 - 1) = *(_BYTE *)(v45 - 1);
              *(_BYTE *)(v46 - 2) = *(_BYTE *)(v45 - 2);
              *(_BYTE *)(v46 - 3) = *(_BYTE *)(v45 - 3);
              *(_BYTE *)(v46 - 4) = *(_BYTE *)(v45 - 4);
              *(_BYTE *)(v46 - 5) = *(_BYTE *)(v45 - 5);
              v47 = *(_BYTE *)(v45 - 6);
              v45 -= 6;
              *(_BYTE *)(v46 - 7) = HIBYTE(a3);
              *(_BYTE *)(v46 - 6) = v47;
              *(_BYTE *)(v46 - 8) = a3;
              v46 -= 8;
            }
            while ( v8 != v5 );
          }
          v14 = 8 * v5;
        }
        *(_BYTE *)(result + 10) = 4;
        *(_DWORD *)(result + 4) = v14;
        *(_BYTE *)(result + 11) = 64;
      }
    }
  }
  else
  {
    v6 = *(unsigned __int8 *)(result + 9);
    if ( v6 == 8 )
    {
      if ( a4 < 0 )
      {
        v15 = a2 + v5;
        v16 = v15 + v5;
        if ( v5 > 1 )
        {
          v17 = v15 + v5;
          for ( i = 1; i != v5; ++i )
          {
            *(_BYTE *)(v17 - 1) = v4;
            v19 = *(_BYTE *)(v15 - i);
            *(_BYTE *)(v17 - 2) = v19;
            v17 -= 2;
          }
          v16 += 2 * (1 - v5);
        }
        v20 = 2 * v5;
        *(_BYTE *)(v16 - 1) = v4;
      }
      else
      {
        if ( v5 )
        {
          v28 = a2 + v5;
          v29 = v28 + v5;
          v30 = v28 - v5;
          do
          {
            v31 = *(_BYTE *)--v28;
            *(_BYTE *)(v29 - 1) = v31;
            *(_BYTE *)(v29 - 2) = a3;
            v29 -= 2;
          }
          while ( v28 != v30 );
        }
        v20 = 2 * v5;
      }
      *(_BYTE *)(result + 10) = 2;
      *(_DWORD *)(result + 4) = v20;
      *(_BYTE *)(result + 11) = 16;
    }
    else if ( v6 == 16 )
    {
      v21 = a4 & 0x80;
      if ( v21 )
      {
        v22 = a2 + 4 * v5;
        v23 = a2 + 2 * v5;
        if ( v5 > 1 )
        {
          v24 = v22;
          v25 = 1;
          do
          {
            *(_WORD *)(v24 - 2) = a3;
            ++v25;
            *(_BYTE *)(v24 - 3) = *(_BYTE *)(v23 - 1);
            v26 = *(_BYTE *)(v23 - 2);
            v23 -= 2;
            *(_BYTE *)(v24 - 4) = v26;
            v24 -= 4;
          }
          while ( v25 != v5 );
          v22 += 4 * (1 - v5);
        }
        v27 = 4 * v5;
        *(_WORD *)(v22 - 2) = a3;
      }
      else
      {
        if ( v5 )
        {
          v32 = a2 + 2 * v5;
          v33 = a2 + 4 * v5;
          do
          {
            ++v21;
            *(_BYTE *)(v33 - 1) = *(_BYTE *)(v32 - 1);
            v34 = *(_BYTE *)(v32 - 2);
            v32 -= 2;
            *(_BYTE *)(v33 - 3) = HIBYTE(a3);
            *(_BYTE *)(v33 - 2) = v34;
            *(_BYTE *)(v33 - 4) = a3;
            v33 -= 4;
          }
          while ( v21 != v5 );
        }
        v27 = 4 * v5;
      }
      *(_BYTE *)(result + 10) = 2;
      *(_DWORD *)(result + 4) = v27;
      *(_BYTE *)(result + 11) = 32;
    }
  }
  return result;
}


// ===== 688d18 png_do_gray_to_rgb =====
int *__fastcall png_do_gray_to_rgb(int *result, int a2)
{
  unsigned int v2; // r3
  int v3; // r12
  int v4; // r2
  int v5; // r4
  int v6; // r1
  int v7; // r3
  _BYTE *v8; // r1
  char v9; // r4
  char v10; // r1
  unsigned int v11; // r3
  unsigned int v12; // r12
  char *v13; // r1
  char *v14; // r3
  char *v15; // r4
  char v16; // t1
  _BYTE *v17; // r1
  _BYTE *v18; // r3
  int v19; // r2
  char v20; // r4
  _BYTE *v21; // r1
  _BYTE *v22; // r3
  char v23; // r2

  v2 = *((unsigned __int8 *)result + 9);
  v3 = *result;
  if ( v2 <= 7 )
    return result;
  v4 = *((unsigned __int8 *)result + 8);
  v5 = v4 & 2;
  if ( (v4 & 2) != 0 )
    return result;
  if ( *((_BYTE *)result + 8) )
  {
    if ( v4 != 4 )
      goto LABEL_10;
    if ( v2 == 8 )
    {
      if ( !v3 )
        goto LABEL_10;
      v21 = (_BYTE *)(a2 + 2 * v3 - 1);
      v22 = &v21[2 * v3];
      do
      {
        ++v5;
        *v22 = *v21;
        *(v22 - 1) = *(v21 - 1);
        *(v22 - 2) = *(v21 - 1);
        v23 = *(v21 - 1);
        v21 -= 2;
        *(v22 - 3) = v23;
        v22 -= 4;
      }
      while ( v5 != v3 );
    }
    else
    {
      if ( !v3 )
        goto LABEL_10;
      v17 = (_BYTE *)(a2 + 4 * v3 - 1);
      v18 = &v17[4 * v3];
      v19 = 0;
      do
      {
        ++v19;
        *v18 = *v17;
        *(v18 - 1) = *(v17 - 1);
        *(v18 - 2) = *(v17 - 2);
        *(v18 - 3) = *(v17 - 3);
        *(v18 - 4) = *(v17 - 2);
        *(v18 - 5) = *(v17 - 3);
        *(v18 - 6) = *(v17 - 2);
        v20 = *(v17 - 3);
        v17 -= 4;
        *(v18 - 7) = v20;
        v18 -= 8;
      }
      while ( v19 != v3 );
    }
    goto LABEL_8;
  }
  if ( v2 == 8 )
  {
    if ( !v3 )
      goto LABEL_10;
    v13 = (char *)(a2 + v3 - 1);
    v14 = &v13[2 * v3];
    v15 = &v13[-v3];
    do
    {
      *v14 = *v13;
      *(v14 - 1) = *v13;
      v16 = *v13--;
      *(v14 - 2) = v16;
      v14 -= 3;
    }
    while ( v13 != v15 );
    goto LABEL_8;
  }
  if ( v3 )
  {
    v6 = a2 + 2 * v3 - 1;
    v7 = v6 - 2;
    v8 = (_BYTE *)(v6 + 4 * v3);
    do
    {
      ++v4;
      *v8 = *(_BYTE *)(v7 + 2);
      *(v8 - 1) = *(_BYTE *)(v7 + 1);
      *(v8 - 2) = *(_BYTE *)(v7 + 2);
      *(v8 - 3) = *(_BYTE *)(v7 + 1);
      *(v8 - 4) = *(_BYTE *)(v7 + 2);
      v9 = *(_BYTE *)(v7 + 1);
      v7 -= 2;
      *(v8 - 5) = v9;
      v8 -= 6;
    }
    while ( v4 != v3 );
LABEL_8:
    LOBYTE(v2) = *((_BYTE *)result + 9);
    LOBYTE(v4) = *((_BYTE *)result + 8);
  }
LABEL_10:
  v10 = *((_BYTE *)result + 10);
  *((_BYTE *)result + 8) = v4 | 2;
  *((_BYTE *)result + 10) = v10 + 2;
  v11 = (unsigned __int8)(v2 * (v10 + 2));
  if ( v11 <= 7 )
    v3 *= v11;
  *((_BYTE *)result + 11) = v11;
  if ( v11 <= 7 )
    v12 = (unsigned int)(v3 + 7) >> 3;
  else
    v12 = v3 * (v11 >> 3);
  result[1] = v12;
  return result;
}


// ===== 688f10 png_do_rgb_to_gray =====
int __fastcall png_do_rgb_to_gray(int a1, int *a2, unsigned __int8 *a3)
{
  int v3; // r12
  int result; // r0
  int v6; // r4
  int v7; // r2
  char v8; // r3
  unsigned int v9; // r2
  unsigned int v10; // r4
  unsigned __int8 *v11; // r6
  int v12; // r7
  unsigned __int8 *v13; // r2
  unsigned int v14; // r0
  unsigned int v15; // r12
  unsigned int v16; // r1
  bool v17; // zf
  int v18; // r9
  int v19; // r5
  int v20; // r10
  unsigned int v21; // r0
  unsigned __int8 *v22; // r12
  int v23; // r6
  unsigned __int8 *v24; // r2
  unsigned int v25; // r4
  unsigned int v26; // r1
  unsigned int v27; // r0
  bool v28; // zf
  int v29; // r11
  unsigned int v30; // r0
  unsigned __int8 v31; // r1
  int v32; // r5
  unsigned __int8 *v33; // r6
  unsigned __int8 *v34; // r2
  int v35; // r9
  int v36; // r7
  int v37; // r12
  int v38; // r7
  unsigned int v39; // r5
  bool v40; // zf
  int v41; // r7
  int v42; // r12
  int v43; // r8
  int v44; // r5
  unsigned __int8 *v45; // r12
  int v46; // r7
  unsigned __int8 *v47; // r2
  int v48; // r1
  int v49; // r6
  int v50; // r5
  bool v51; // zf
  unsigned __int8 v52; // r1
  unsigned __int8 *v53; // r12
  int v54; // r5
  unsigned __int8 *v55; // r3
  int v56; // r2
  int v57; // r8
  int v58; // r1
  bool v59; // zf
  unsigned __int8 v60; // r2
  unsigned __int8 *v61; // r5
  int v62; // r6
  unsigned __int8 *v63; // r2
  int v64; // r3
  int v65; // r1
  int v66; // r7
  bool v67; // zf
  __int16 v68; // r12
  unsigned __int8 *v69; // r12
  int v70; // r5
  unsigned __int8 *v71; // r3
  int *v72; // r11
  int v73; // r2
  int v74; // r6
  int v75; // r1
  bool v76; // zf
  unsigned int v77; // r1
  unsigned __int8 v78; // r2
  unsigned __int8 *v79; // r2
  unsigned __int8 *v80; // r12
  int v81; // r5
  unsigned int v82; // r7
  int v83; // r6
  bool v84; // zf
  int v86; // [sp+0h] [bp-20h]
  int *v87; // [sp+0h] [bp-20h]
  int v88; // [sp+4h] [bp-1Ch]
  int v89; // [sp+8h] [bp-18h]
  int v90; // [sp+8h] [bp-18h]
  int *v91; // [sp+Ch] [bp-14h]
  int v92; // [sp+10h] [bp-10h]
  int v93; // [sp+14h] [bp-Ch]
  int v94; // [sp+18h] [bp-8h]
  int *v95; // [sp+18h] [bp-8h]
  int *v96; // [sp+1Ch] [bp-4h]

  v3 = *((unsigned __int8 *)a2 + 8);
  result = v3 & 2;
  v6 = *a2;
  if ( (v3 & 2) == 0 )
    return result;
  if ( v3 != 2 )
    result = 0;
  v93 = *(unsigned __int16 *)(a1 + 746);
  v92 = *(unsigned __int16 *)(a1 + 748);
  v88 = *(unsigned __int16 *)(a1 + 750);
  if ( v3 == 2 )
  {
    v7 = *((unsigned __int8 *)a2 + 9);
    if ( v7 == 8 )
    {
      if ( *(_DWORD *)(a1 + 552) && (v32 = *(_DWORD *)(a1 + 556)) != 0 )
      {
        if ( v6 )
        {
          v33 = a3 + 1;
          v34 = a3;
          result = 0;
          while ( 1 )
          {
            v35 = v34[2];
            v36 = v34[1];
            v37 = *(unsigned __int8 *)(v32 + *v34);
            v34 += 3;
            v38 = *(unsigned __int8 *)(v32 + v36);
            v39 = *(unsigned __int8 *)(v32 + v35);
            v40 = v37 == v38;
            if ( v37 == v38 )
              v40 = v37 == v39;
            if ( v40 )
            {
              v42 = *(v34 - 1);
            }
            else
            {
              result = v88;
              v41 = v93 * v37 + v92 * v38;
              v42 = *(_DWORD *)(a1 + 552);
              v39 = v41 + v88 * v39;
            }
            if ( !v40 )
            {
              LOBYTE(v42) = *(_BYTE *)(v42 + (v39 >> 15));
              result = 1;
            }
            *(v33 - 1) = v42;
            if ( v33 == &a3[v6] )
              break;
            v32 = *(_DWORD *)(a1 + 556);
            ++v33;
          }
          v3 = *((unsigned __int8 *)a2 + 8);
          goto LABEL_5;
        }
      }
      else if ( v6 )
      {
        v79 = a3;
        v80 = a3 + 1;
        result = 0;
        do
        {
          v81 = *v79;
          v82 = v79[1];
          v83 = v79[2];
          v84 = v81 == v82;
          if ( v81 == v82 )
            v84 = v81 == v83;
          if ( !v84 )
          {
            v82 = v93 * v81 + v92 * v82;
            v81 = v88;
          }
          v79 += 3;
          if ( v84 )
            LOBYTE(v81) = *(v79 - 1);
          else
            v82 += v81 * v83;
          if ( v84 )
            *(v80 - 1) = v81;
          else
            *(v80 - 1) = v82 >> 15;
          ++v80;
          if ( !v84 )
            result = 1;
        }
        while ( v80 != &a3[v6 + 1] );
        v3 = *((unsigned __int8 *)a2 + 8);
        goto LABEL_5;
      }
    }
    else if ( *(_DWORD *)(a1 + 568) && *(_DWORD *)(a1 + 564) )
    {
      if ( v6 )
      {
        v11 = a3;
        v12 = 0;
        v13 = a3;
        v94 = 0;
        v96 = a2;
        while ( 1 )
        {
          v14 = v13[3] | (v13[2] << 8);
          v15 = v13[5] | (v13[4] << 8);
          v16 = v13[1] | (*v13 << 8);
          v17 = v16 == v15;
          if ( v16 == v15 )
            v17 = v16 == v14;
          v18 = v13[1];
          v19 = 2 * (v16 >> 8);
          v20 = v13[3];
          v13 += 6;
          if ( !v17 )
          {
            v16 = *(_DWORD *)(a1 + 536);
            v94 = 1;
            v21 = (unsigned __int16)((v93
                                    * *(unsigned __int16 *)(*(_DWORD *)(*(_DWORD *)(a1 + 568) + 4 * (v18 >> v16)) + v19)
                                    + v92
                                    * *(unsigned __int16 *)(*(_DWORD *)(*(_DWORD *)(a1 + 568) + 4 * (v20 >> v16))
                                                          + 2 * (v14 >> 8))
                                    + v88
                                    * (unsigned int)*(unsigned __int16 *)(*(_DWORD *)(*(_DWORD *)(a1 + 568)
                                                                                    + 4
                                                                                    * ((int)(unsigned __int8)v15 >> v16))
                                                                        + 2 * (v15 >> 8))) >> 15);
            LOWORD(v16) = *(_WORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 564) + 4 * ((int)(unsigned __int8)v21 >> v16))
                                   + 2 * (v21 >> 8));
          }
          ++v12;
          *v11 = BYTE1(v16);
          v11[1] = v16;
          if ( v12 == v6 )
            break;
          v11 += 2;
        }
        a2 = v96;
        result = v94;
        v3 = *((unsigned __int8 *)v96 + 8);
        goto LABEL_5;
      }
    }
    else if ( v6 )
    {
      v61 = a3;
      result = 0;
      v62 = 0;
      v63 = a3;
      v90 = a1;
      v91 = a2;
      while ( 1 )
      {
        v64 = v63[1] | (*v63 << 8);
        v65 = v63[3] | (v63[2] << 8);
        v66 = v63[5] | (v63[4] << 8);
        v67 = v64 == v65;
        if ( v64 == v65 )
          v67 = v64 == v66;
        v68 = (unsigned int)(v93 * v64 + v92 * v65 + v88 * v66) >> 15;
        ++v62;
        if ( !v67 )
          result = 1;
        *v61 = HIBYTE(v68);
        v61[1] = v68;
        v63 += 6;
        if ( v62 == v6 )
          break;
        v61 += 2;
      }
      a2 = v91;
      a1 = v90;
      v3 = *((unsigned __int8 *)v91 + 8);
      goto LABEL_5;
    }
    result = 0;
    goto LABEL_7;
  }
LABEL_5:
  if ( v3 != 6 )
  {
LABEL_6:
    LOBYTE(v7) = *((_BYTE *)a2 + 9);
    goto LABEL_7;
  }
  v7 = *((unsigned __int8 *)a2 + 9);
  if ( v7 == 8 )
  {
    v43 = *(_DWORD *)(a1 + 552);
    if ( !v43 || (v44 = *(_DWORD *)(a1 + 556)) == 0 )
    {
      if ( !v6 )
        goto LABEL_7;
      v69 = a3;
      v70 = 0;
      v71 = a3;
      v72 = a2;
      while ( 1 )
      {
        v73 = *v71;
        v74 = v71[1];
        v75 = v71[2];
        v76 = v73 == v74;
        if ( v73 == v74 )
          v76 = v73 == v75;
        ++v70;
        v77 = v93 * v73 + v92 * v74 + v88 * v75;
        if ( !v76 )
          result |= 1u;
        *v69 = v77 >> 15;
        v78 = v71[3];
        v71 += 4;
        v69[1] = v78;
        if ( v70 == v6 )
          break;
        v69 += 2;
      }
      a2 = v72;
      LOBYTE(v3) = *((_BYTE *)v72 + 8);
      goto LABEL_6;
    }
    if ( !v6 )
      goto LABEL_7;
    v45 = a3;
    v46 = 0;
    v47 = a3;
    v87 = a2;
    while ( 1 )
    {
      v48 = *(unsigned __int8 *)(v44 + *v47);
      ++v46;
      v49 = *(unsigned __int8 *)(v44 + v47[1]);
      v50 = *(unsigned __int8 *)(v44 + v47[2]);
      v51 = v48 == v49;
      if ( v48 == v49 )
        v51 = v48 == v50;
      if ( !v51 )
        result |= 1u;
      *v45 = *(_BYTE *)(v43 + ((unsigned int)(v93 * v48 + v92 * v49 + v88 * v50) >> 15));
      v52 = v47[3];
      v47 += 4;
      v45[1] = v52;
      if ( v46 == v6 )
        break;
      v44 = *(_DWORD *)(a1 + 556);
      v43 = *(_DWORD *)(a1 + 552);
      v45 += 2;
    }
LABEL_62:
    a2 = v87;
    LOBYTE(v3) = *((_BYTE *)v87 + 8);
    LOBYTE(v7) = *((_BYTE *)v87 + 9);
    goto LABEL_7;
  }
  if ( *(_DWORD *)(a1 + 568) && *(_DWORD *)(a1 + 564) )
  {
    if ( v6 )
    {
      v22 = a3;
      v23 = 0;
      v86 = result;
      v24 = v22;
      v89 = v6;
      v95 = a2;
      while ( 1 )
      {
        v25 = v24[5] | (v24[4] << 8);
        v26 = v24[1] | (*v24 << 8);
        v27 = v24[3] | (v24[2] << 8);
        v28 = v26 == v25;
        if ( v26 == v25 )
          v28 = v26 == v27;
        v29 = 2 * (v26 >> 8);
        if ( !v28 )
        {
          v26 = *(_DWORD *)(a1 + 536);
          v86 |= 1u;
          v30 = (unsigned __int16)((v93
                                  * *(unsigned __int16 *)(*(_DWORD *)(*(_DWORD *)(a1 + 568) + 4 * ((int)v24[1] >> v26))
                                                        + v29)
                                  + v92
                                  * *(unsigned __int16 *)(*(_DWORD *)(*(_DWORD *)(a1 + 568) + 4 * ((int)v24[3] >> v26))
                                                        + 2 * (v27 >> 8))
                                  + v88
                                  * (unsigned int)*(unsigned __int16 *)(*(_DWORD *)(*(_DWORD *)(a1 + 568)
                                                                                  + 4
                                                                                  * ((int)(unsigned __int8)v25 >> v26))
                                                                      + 2 * (v25 >> 8))) >> 15);
          LOWORD(v26) = *(_WORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 564) + 4 * ((int)(unsigned __int8)v30 >> v26))
                                 + 2 * (v30 >> 8));
        }
        ++v23;
        v22[1] = v26;
        *v22 = BYTE1(v26);
        v22[2] = v24[6];
        v31 = v24[7];
        v24 += 8;
        v22[3] = v31;
        if ( v23 == v89 )
          break;
        v22 += 4;
      }
      a2 = v95;
      result = v86;
      v6 = v89;
      LOBYTE(v3) = *((_BYTE *)v95 + 8);
      LOBYTE(v7) = *((_BYTE *)v95 + 9);
    }
    goto LABEL_7;
  }
  if ( v6 )
  {
    v53 = a3;
    v54 = 0;
    v55 = a3;
    v87 = a2;
    while ( 1 )
    {
      v56 = v55[1] | (*v55 << 8);
      v57 = v55[3] | (v55[2] << 8);
      v58 = v55[5] | (v55[4] << 8);
      v59 = v56 == v57;
      if ( v56 == v57 )
        v59 = v56 == v58;
      ++v54;
      if ( !v59 )
        result |= 1u;
      *v53 = (unsigned __int16)((unsigned int)(v93 * v56 + v92 * v57 + v88 * v58) >> 15) >> 8;
      v53[1] = (unsigned int)(v93 * v56 + v92 * v57 + v88 * v58) >> 15;
      v53[2] = v55[6];
      v60 = v55[7];
      v55 += 8;
      v53[3] = v60;
      if ( v54 == v6 )
        break;
      v53 += 4;
    }
    goto LABEL_62;
  }
LABEL_7:
  v8 = *((_BYTE *)a2 + 10);
  *((_BYTE *)a2 + 8) = v3 & 0xFD;
  v8 -= 2;
  *((_BYTE *)a2 + 10) = v8;
  v9 = (unsigned __int8)(v7 * v8);
  if ( v9 <= 7 )
    v6 *= v9;
  *((_BYTE *)a2 + 11) = v9;
  if ( v9 <= 7 )
    v10 = (unsigned int)(v6 + 7) >> 3;
  else
    v10 = v6 * (v9 >> 3);
  a2[1] = v10;
  return result;
}


// ===== 6895d4 png_build_grayscale_palette =====
int __fastcall png_build_grayscale_palette(int result, int a2)
{
  int v2; // r4
  int v3; // r5
  int v4; // r4
  int v5; // r12
  int v6; // r3

  if ( a2 )
  {
    if ( (unsigned int)--result <= 7 )
    {
      v2 = *((_DWORD *)&CSWTCH_77 + result);
      v3 = *((_DWORD *)&CSWTCH_77 + result + 8);
      if ( v2 > 0 )
      {
        result = 0;
        v4 = 3 * v2;
        v5 = 0;
        do
        {
          *(_BYTE *)(a2 + result) = v5;
          v6 = a2 + result;
          result += 3;
          *(_BYTE *)(v6 + 2) = v5;
          *(_BYTE *)(v6 + 1) = v5;
          v5 += v3;
        }
        while ( result != v4 );
      }
    }
  }
  return result;
}


// ===== 689644 png_do_gamma =====
int __fastcall png_do_gamma(int result, unsigned __int8 *a2, int a3, int a4, char a5)
{
  unsigned int v5; // r12
  int v6; // r4
  unsigned int v7; // r5
  int v8; // r6
  int v9; // r2
  int v10; // r8
  int v11; // r6
  __int16 v12; // r0
  int v13; // r7
  int v14; // r12
  __int16 v15; // r0
  int v16; // r2
  int v17; // r8
  int v18; // r6
  __int16 v19; // r0
  int v20; // r7
  int v21; // r12
  __int16 v22; // r0
  int v23; // r2
  int v24; // r2
  int v25; // r3
  int v26; // r12
  unsigned __int8 v27; // r3
  int v28; // r3
  int v29; // r12
  int v30; // r0
  int v31; // r3
  unsigned __int8 *v32; // r5
  int v33; // r0
  int v34; // r3
  int i; // r3
  int v36; // [sp+4h] [bp-4h]

  v5 = *(unsigned __int8 *)(result + 9);
  v6 = a3;
  if ( a3 )
    v6 = 1;
  if ( v5 > 8 )
    v6 = 0;
  v7 = *(_DWORD *)result;
  if ( v6 )
    goto LABEL_11;
  v8 = a4;
  if ( a4 )
    v8 = 1;
  if ( v5 != 16 )
    v8 = 0;
  if ( v8 )
  {
LABEL_11:
    switch ( *(_BYTE *)(result + 8) )
    {
      case 0:
        if ( v5 == 2 )
        {
          if ( !v7 )
            return result;
          v26 = 0;
          v36 = a4;
          do
          {
            v27 = a2[v26];
            a2[v26++] = *(_BYTE *)(a3
                                 + (((v27 & 0xC0) >> 4)
                                  | ((unsigned __int8)(v27 & 0xC0) >> 2)
                                  | v27 & 0xC0
                                  | ((unsigned __int8)(v27 & 0xC0) >> 6)))
                      & 0xC0
                      | (*(_BYTE *)(a3 + ((16 * (v27 & 3)) | ((v27 & 3) << 6) | v27 & 3 | (4 * (v27 & 3)))) >> 6)
                      | (*(_BYTE *)(a3
                                  + (((v27 & 0x30) >> 2)
                                   | (4 * (v27 & 0x30))
                                   | v27 & 0x30
                                   | ((unsigned __int8)(v27 & 0x30) >> 4))) >> 2)
                      & 0x30
                      | (*(_BYTE *)(a3
                                  + ((4 * (v27 & 0xC))
                                   | (16 * (v27 & 0xC))
                                   | v27 & 0xC
                                   | ((unsigned __int8)(v27 & 0xC) >> 2))) >> 4)
                      & 0xC;
          }
          while ( v7 > 4 * v26 );
          a4 = v36;
          v5 = *(unsigned __int8 *)(result + 9);
        }
        if ( v5 == 4 )
        {
          if ( v7 )
          {
            v25 = 0;
            do
            {
              result = *(_BYTE *)(a3 + (a2[v25] & 0xF0 | ((unsigned __int8)(a2[v25] & 0xF0) >> 4))) & 0xF0
                     | (*(unsigned __int8 *)(a3 + (a2[v25] & 0xF | (16 * (a2[v25] & 0xF)))) >> 4);
              a2[v25++] = result;
            }
            while ( v7 > 2 * v25 );
          }
        }
        else if ( v5 == 8 )
        {
          if ( v7 )
          {
            for ( i = 0; i != v7; ++i )
            {
              result = *(unsigned __int8 *)(a3 + a2[i]);
              a2[i] = result;
            }
          }
        }
        else if ( v5 == 16 && v7 )
        {
          v24 = 0;
          do
          {
            ++v24;
            result = *(unsigned __int16 *)(*(_DWORD *)(a4 + 4 * ((int)a2[1] >> a5)) + 2 * *a2);
            *a2 = BYTE1(result);
            a2[1] = result;
            a2 += 2;
          }
          while ( v24 != v7 );
        }
        break;
      case 2:
        if ( v5 == 8 )
        {
          if ( v7 )
          {
            v32 = &a2[3 * v7];
            do
            {
              v33 = a2[1];
              v34 = a2[2];
              *a2 = *(_BYTE *)(a3 + *a2);
              result = *(unsigned __int8 *)(a3 + v33);
              a2[1] = result;
              a2[2] = *(_BYTE *)(a3 + v34);
              a2 += 3;
            }
            while ( v32 != a2 );
          }
        }
        else if ( v7 )
        {
          v16 = 0;
          do
          {
            v17 = (int)a2[3] >> a5;
            v18 = (int)a2[5] >> a5;
            v19 = *(_WORD *)(*(_DWORD *)(a4 + 4 * ((int)a2[1] >> a5)) + 2 * *a2);
            v20 = 2 * a2[2];
            v21 = a2[4];
            *a2 = HIBYTE(v19);
            a2[1] = v19;
            ++v16;
            v22 = *(_WORD *)(*(_DWORD *)(a4 + 4 * v17) + v20);
            a2[2] = HIBYTE(v22);
            a2[3] = v22;
            result = *(unsigned __int16 *)(*(_DWORD *)(a4 + 4 * v18) + 2 * v21);
            a2[4] = BYTE1(result);
            a2[5] = result;
            a2 += 6;
          }
          while ( v16 != v7 );
        }
        break;
      case 4:
        if ( v5 == 8 )
        {
          if ( v7 )
          {
            v31 = 0;
            for ( result = 0; result != v7; ++result )
            {
              a2[v31] = *(_BYTE *)(a3 + a2[v31]);
              v31 += 2;
            }
          }
        }
        else if ( v7 )
        {
          v23 = 0;
          do
          {
            ++v23;
            result = *(unsigned __int16 *)(*(_DWORD *)(a4 + 4 * ((int)a2[1] >> a5)) + 2 * *a2);
            *a2 = BYTE1(result);
            a2[1] = result;
            a2 += 4;
          }
          while ( v23 != v7 );
        }
        break;
      case 6:
        if ( v5 == 8 )
        {
          if ( v7 )
          {
            v28 = 0;
            do
            {
              v29 = a2[1];
              v30 = a2[2];
              ++v28;
              *a2 = *(_BYTE *)(a3 + *a2);
              a2[1] = *(_BYTE *)(a3 + v29);
              result = *(unsigned __int8 *)(a3 + v30);
              a2[2] = result;
              a2 += 4;
            }
            while ( v28 != v7 );
          }
        }
        else if ( v7 )
        {
          v9 = 0;
          do
          {
            v10 = (int)a2[3] >> a5;
            v11 = (int)a2[5] >> a5;
            v12 = *(_WORD *)(*(_DWORD *)(a4 + 4 * ((int)a2[1] >> a5)) + 2 * *a2);
            v13 = 2 * a2[2];
            v14 = a2[4];
            *a2 = HIBYTE(v12);
            a2[1] = v12;
            ++v9;
            v15 = *(_WORD *)(*(_DWORD *)(a4 + 4 * v10) + v13);
            a2[2] = HIBYTE(v15);
            a2[3] = v15;
            result = *(unsigned __int16 *)(*(_DWORD *)(a4 + 4 * v11) + 2 * v14);
            a2[4] = BYTE1(result);
            a2[5] = result;
            a2 += 8;
          }
          while ( v9 != v7 );
        }
        break;
      default:
        return result;
    }
  }
  return result;
}


// ===== 689a74 png_do_expand_palette =====
int *__fastcall png_do_expand_palette(int *result, int a2, int a3, int a4, int a5)
{
  int v5; // r4
  unsigned int v6; // r11
  int v7; // r10
  _BYTE *v8; // r6
  int v9; // r1
  int v10; // r4
  int v11; // r5
  int v12; // r7
  bool v13; // cc
  _BYTE *v14; // r7
  int v15; // r8
  int v16; // r6
  unsigned __int8 *v17; // r8
  int j; // r5
  int v19; // r7
  bool v20; // zf
  int v21; // r7
  char v22; // r7
  int v23; // r6
  unsigned __int8 *v24; // r8
  int i; // r5
  int v26; // r7
  bool v27; // zf
  int v28; // r7
  char v29; // r7
  int v30; // r6
  unsigned __int8 *v31; // r8
  int k; // r5
  int v33; // r7
  int v34; // r5
  unsigned __int8 *v35; // r3
  _BYTE *v36; // r1
  unsigned __int8 *v37; // r4
  int v38; // t1

  v5 = *result;
  if ( *((_BYTE *)result + 8) == 3 )
  {
    v6 = *((unsigned __int8 *)result + 9);
    if ( v6 <= 7 )
    {
      if ( v6 == 2 )
      {
        if ( v5 )
        {
          v23 = 2 * (~((_BYTE)v5 + 3) & 3);
          v24 = (unsigned __int8 *)(a2 + ((unsigned int)(v5 - 1) >> 2));
          for ( i = 0; ; --i )
          {
            v26 = *v24;
            v27 = v23 == 6;
            if ( v23 == 6 )
              --v24;
            v28 = v26 >> v23;
            if ( v23 == 6 )
              v23 = 0;
            v29 = v28 & 3;
            if ( !v27 )
              v23 += 2;
            *(_BYTE *)(a2 + v5 - 1 + i) = v29;
            if ( i == 1 - v5 )
              break;
          }
        }
      }
      else if ( v6 == 4 )
      {
        if ( v5 )
        {
          v16 = 4 * (*result & 1);
          v17 = (unsigned __int8 *)(a2 + ((unsigned int)(v5 - 1) >> 1));
          for ( j = 0; ; --j )
          {
            v19 = *v17;
            v20 = v16 == 4;
            if ( v16 == 4 )
              --v17;
            v21 = v19 >> v16;
            if ( v16 == 4 )
              v16 = 0;
            v22 = v21 & 0xF;
            if ( !v20 )
              v16 += 4;
            *(_BYTE *)(a2 + v5 - 1 + j) = v22;
            if ( j == 1 - v5 )
              break;
          }
        }
      }
      else if ( v6 == 1 && v5 )
      {
        v30 = ~((_BYTE)v5 + 7) & 7;
        v31 = (unsigned __int8 *)(a2 + ((unsigned int)(v5 - 1) >> 3));
        for ( k = 0; ; --k )
        {
          v33 = ((int)*v31 >> v30) & 1;
          if ( v33 )
            LOBYTE(v33) = 1;
          if ( v30 == 7 )
          {
            --v31;
            v30 = 0;
          }
          else
          {
            ++v30;
          }
          *(_BYTE *)(a2 + v5 - 1 + k) = v33;
          if ( k == 1 - v5 )
            break;
        }
      }
      *((_BYTE *)result + 11) = 8;
      *((_BYTE *)result + 9) = 8;
      result[1] = v5;
    }
    else if ( v6 != 8 )
    {
      return result;
    }
    if ( a4 )
    {
      if ( v5 )
      {
        v7 = 4 * v5;
        v8 = (_BYTE *)(a2 + 4 * v5 - 2);
        v9 = a2 + v5 - 1;
        v10 = 1 - v5;
        v11 = 0;
        do
        {
          v12 = *(unsigned __int8 *)(v9 + v11);
          v13 = v12 < a5;
          if ( v12 >= a5 )
            v8[1] = -1;
          else
            LOBYTE(v12) = *(_BYTE *)(a4 + v12);
          if ( v13 )
            v8[1] = v12;
          v20 = v11 == v10;
          *v8 = *(_BYTE *)(a3 + 3 * *(unsigned __int8 *)(v9 + v11) + 2);
          v14 = v8 - 1;
          *(v8 - 1) = *(_BYTE *)(a3 + 3 * *(unsigned __int8 *)(v9 + v11) + 1);
          v15 = *(unsigned __int8 *)(v9 + v11);
          v8 -= 4;
          --v11;
          *(v14 - 1) = *(_BYTE *)(a3 + 3 * v15);
        }
        while ( !v20 );
      }
      else
      {
        v7 = 0;
      }
      *((_BYTE *)result + 10) = 4;
      *((_BYTE *)result + 9) = 8;
      *((_BYTE *)result + 11) = 32;
      result[1] = v7;
      *((_BYTE *)result + 8) = 6;
    }
    else
    {
      v34 = 3 * v5;
      if ( v5 )
      {
        v35 = (unsigned __int8 *)(a2 + v5 - 1);
        v36 = (_BYTE *)(a2 + v34 - 1);
        v37 = &v35[-v5];
        do
        {
          *v36 = *(_BYTE *)(a3 + 3 * *v35 + 2);
          *(v36 - 1) = *(_BYTE *)(a3 + 3 * *v35 + 1);
          v38 = *v35--;
          *(v36 - 2) = *(_BYTE *)(a3 + 3 * v38);
          v36 -= 3;
        }
        while ( v35 != v37 );
      }
      *((_BYTE *)result + 10) = 3;
      *((_BYTE *)result + 9) = 8;
      *((_BYTE *)result + 11) = 24;
      result[1] = v34;
      *((_BYTE *)result + 8) = 2;
    }
  }
  return result;
}


// ===== 689d34 png_do_expand =====
int *__fastcall png_do_expand(int *result, int a2, int a3)
{
  int v3; // r3
  unsigned int v4; // r12
  __int16 v5; // r6
  int v6; // r12
  unsigned int v7; // r12
  int v8; // r4
  int v9; // r12
  int v10; // r5
  unsigned __int8 *v11; // r7
  int i; // r4
  int v13; // r12
  int v14; // r12
  unsigned int v15; // r11
  unsigned int v16; // r4
  unsigned int v17; // r2
  unsigned int v18; // r11
  int v19; // r2
  int v20; // r5
  _BYTE *v21; // r1
  unsigned __int8 *v22; // r2
  int *v23; // r9
  _BYTE *v24; // r12
  unsigned __int8 *v25; // r6
  char v26; // r0
  int v27; // r12
  int v28; // r2
  int v29; // r1
  _BYTE *v30; // r12
  char v31; // r4
  bool v32; // zf
  int v33; // r5
  int v34; // r4
  int v35; // r6
  int v36; // r2
  int v37; // r12
  _BYTE *v38; // r1
  _BYTE *v39; // r2
  char v40; // r4
  int v41; // r7
  int v42; // r5
  int v43; // r8
  int v44; // r2
  unsigned __int8 *v45; // r6
  _BYTE *v46; // r1
  unsigned __int8 *v47; // r2
  char v48; // r4
  int v49; // r10
  int v50; // r4
  unsigned __int8 *v51; // r7
  int k; // r12
  __int16 v53; // r6
  int v54; // r4
  unsigned __int8 *v55; // r5
  int j; // r12
  int v57; // r10
  int v58; // [sp+4h] [bp-14h]
  unsigned int v59; // [sp+8h] [bp-10h]
  int v60; // [sp+Ch] [bp-Ch]

  v3 = *result;
  if ( *((_BYTE *)result + 8) )
  {
    v8 = a3;
    if ( a3 )
      v8 = 1;
    if ( *((_BYTE *)result + 8) != 2 )
      v8 = 0;
    if ( v8 )
    {
      v9 = *((unsigned __int8 *)result + 9);
      if ( v9 == 8 )
      {
        v41 = *(unsigned __int8 *)(a3 + 6);
        v42 = *(unsigned __int8 *)(a3 + 2);
        v43 = *(unsigned __int8 *)(a3 + 4);
        if ( v3 )
        {
          v44 = a2 + result[1] - 1;
          v45 = (unsigned __int8 *)(v44 + ~(3 * v3));
          v46 = (_BYTE *)(a2 + 4 * v3 - 2);
          v47 = (unsigned __int8 *)(v44 - 1);
          do
          {
            if ( *(v47 - 1) == v42 && *v47 == v43 && v47[1] == v41 )
              v46[1] = 0;
            else
              v46[1] = -1;
            *v46 = v47[1];
            *(v46 - 1) = *v47;
            v48 = *(v47 - 1);
            v47 -= 3;
            *(v46 - 2) = v48;
            v46 -= 4;
          }
          while ( v47 != v45 );
          LOBYTE(v9) = *((_BYTE *)result + 9);
        }
      }
      else if ( v9 == 16 )
      {
        v15 = *(unsigned __int16 *)(a3 + 2);
        v16 = *(unsigned __int16 *)(a3 + 6);
        v17 = *(unsigned __int16 *)(a3 + 4);
        v58 = (unsigned __int8)v15;
        v60 = (unsigned __int8)v17;
        v59 = v17 >> 8;
        v18 = v15 >> 8;
        if ( v3 )
        {
          v19 = a2 + result[1];
          v20 = 0;
          v21 = (_BYTE *)(a2 + 8 * v3 - 3);
          v22 = (unsigned __int8 *)(v19 - 2);
          v23 = result;
          do
          {
            if ( *(v22 - 4) == v18
              && *(v22 - 3) == v58
              && *(v22 - 2) == v59
              && *(v22 - 1) == v60
              && *v22 == v16 >> 8
              && v22[1] == (unsigned __int8)v16 )
            {
              v21[2] = 0;
              v21[1] = 0;
            }
            else
            {
              v21[2] = -1;
              v21[1] = -1;
            }
            *v21 = v22[1];
            v24 = v21 - 1;
            *(v21 - 1) = *v22;
            v25 = v22 - 2;
            ++v20;
            *(v21 - 2) = *(v22 - 1);
            v21 -= 8;
            *(v24 - 2) = *(v22 - 2);
            v26 = *(v22 - 3);
            v22 -= 6;
            *(v24 - 3) = v26;
            *(v24 - 4) = *(v25 - 2);
          }
          while ( v20 != v3 );
          result = v23;
          LOBYTE(v9) = *((_BYTE *)v23 + 9);
        }
      }
      v7 = (unsigned __int8)(4 * v9);
      *((_BYTE *)result + 8) = 6;
      *((_BYTE *)result + 10) = 4;
      *((_BYTE *)result + 11) = v7;
      if ( v7 > 7 )
        goto LABEL_14;
      goto LABEL_24;
    }
  }
  else
  {
    v4 = *((unsigned __int8 *)result + 9);
    if ( a3 )
      v5 = *(_WORD *)(a3 + 8);
    else
      v5 = 0;
    if ( v4 <= 7 )
    {
      switch ( v4 )
      {
        case 2u:
          v5 = 85 * (v5 & 3);
          if ( v3 )
          {
            v10 = 2 * (~((_BYTE)v3 + 3) & 3);
            v11 = (unsigned __int8 *)(a2 + ((unsigned int)(v3 - 1) >> 2));
            for ( i = 0; ; --i )
            {
              v13 = *v11;
              if ( v10 == 6 )
                --v11;
              v14 = (16 * ((v13 >> v10) & 3)) | (4 * ((v13 >> v10) & 3)) | (v13 >> v10) & 3 | (((v13 >> v10) & 3) << 6);
              if ( v10 == 6 )
                v10 = 0;
              else
                v10 += 2;
              *(_BYTE *)(a2 + v3 - 1 + i) = v14;
              if ( i == 1 - v3 )
                break;
            }
          }
          break;
        case 4u:
          v53 = v5 & 0xF;
          if ( (v3 & 1) != 0 )
            v54 = 4;
          else
            v54 = 0;
          v5 = 17 * v53;
          if ( v3 )
          {
            v55 = (unsigned __int8 *)(a2 + ((unsigned int)(v3 - 1) >> 1));
            for ( j = 0; ; --j )
            {
              v57 = *v55;
              if ( v54 == 4 )
                --v55;
              *(_BYTE *)(a2 + v3 - 1 + j) = (v57 >> v54) & 0xF | (16 * ((v57 >> v54) & 0xF));
              v54 = v54 == 4 ? 0 : 4;
              if ( j == 1 - v3 )
                break;
            }
          }
          break;
        case 1u:
          v5 = 255 * (v5 & 1);
          if ( v3 )
          {
            v49 = a2 + v3 - 1;
            v50 = ~((_BYTE)v3 + 7) & 7;
            v51 = (unsigned __int8 *)(a2 + ((unsigned int)(v3 - 1) >> 3));
            for ( k = 0; ; --k )
            {
              *(_BYTE *)(v49 + k) = (((int)*v51 >> v50) & 1) != 0 ? -1 : 0;
              if ( v50 == 7 )
              {
                --v51;
                v50 = 0;
              }
              else
              {
                ++v50;
              }
              if ( k == 1 - v3 )
                break;
            }
          }
          break;
      }
      *((_BYTE *)result + 11) = 8;
      *((_BYTE *)result + 9) = 8;
      result[1] = v3;
    }
    if ( a3 )
    {
      v6 = *((unsigned __int8 *)result + 9);
      if ( v6 == 8 )
      {
        if ( !v3 )
          goto LABEL_13;
        v27 = a2 + 2 * v3;
        v28 = 0;
        v29 = a2 + v3 - 1;
        v30 = (_BYTE *)(v27 - 2);
        do
        {
          if ( *(unsigned __int8 *)(v29 + v28) == (unsigned __int8)v5 )
            v30[1] = 0;
          else
            v30[1] = -1;
          v31 = *(_BYTE *)(v29 + v28);
          v32 = v28-- == 1 - v3;
          *v30 = v31;
          v30 -= 2;
        }
        while ( !v32 );
      }
      else
      {
        if ( v6 != 16 || (v33 = (unsigned __int8)v5, v34 = result[1], v35 = HIBYTE(v5), !v3) )
        {
LABEL_13:
          v7 = (unsigned __int8)(2 * v6);
          *((_BYTE *)result + 8) = 4;
          *((_BYTE *)result + 10) = 2;
          *((_BYTE *)result + 11) = v7;
          if ( v7 > 7 )
          {
LABEL_14:
            result[1] = v3 * (v7 >> 3);
            return result;
          }
LABEL_24:
          result[1] = (v3 * v7 + 7) >> 3;
          return result;
        }
        v36 = a2 + 2 * v34;
        v37 = 0;
        v38 = (_BYTE *)(a2 + v34 - 1);
        v39 = (_BYTE *)(v36 - 3);
        do
        {
          if ( (unsigned __int8)*(v38 - 1) == v35 && (unsigned __int8)*v38 == v33 )
          {
            v39[2] = 0;
            v39[1] = 0;
          }
          else
          {
            v39[2] = -1;
            v39[1] = -1;
          }
          ++v37;
          *v39 = *v38;
          v40 = *(v38 - 1);
          v38 -= 2;
          *(v39 - 1) = v40;
          v39 -= 4;
        }
        while ( v37 != v3 );
      }
      LOBYTE(v6) = *((_BYTE *)result + 9);
      goto LABEL_13;
    }
  }
  return result;
}


// ===== 68a25c png_do_dither =====
int __fastcall png_do_dither(int result, unsigned __int8 *a2, int a3, int a4)
{
  int v4; // r12
  char v5; // r4
  int v6; // r5
  bool v7; // zf
  int v8; // r5
  unsigned int v9; // r6
  int v10; // r4
  int v11; // r2
  int j; // r2
  unsigned __int8 *v13; // r3
  int i; // r12
  unsigned __int8 v15; // r4
  unsigned int v16; // r5
  unsigned __int8 *v17; // r3
  int k; // r12
  unsigned __int8 v19; // r4

  v4 = *(unsigned __int8 *)(result + 8);
  v5 = a3;
  if ( a3 )
    v5 = 1;
  if ( v4 == 2 )
    v6 = v5 & 1;
  else
    v6 = 0;
  v7 = v6 == 0;
  v8 = *(_DWORD *)result;
  if ( !v7 && (v9 = *(unsigned __int8 *)(result + 9), v9 == 8) )
  {
    if ( v8 )
    {
      v13 = a2;
      for ( i = 0; i != v8; ++i )
      {
        v15 = *(_BYTE *)(a3 + ((32 * (v13[1] >> 3)) | (*v13 >> 3 << 10) | (v13[2] >> 3)));
        v13 += 3;
        a2[i] = v15;
      }
      goto LABEL_27;
    }
  }
  else
  {
    if ( v4 == 6 )
      v10 = v5 & 1;
    else
      v10 = 0;
    if ( !v10 || (v9 = *(unsigned __int8 *)(result + 9), v9 != 8) )
    {
      v11 = a4;
      if ( a4 )
        v11 = 1;
      if ( v4 != 3 )
        v11 = 0;
      if ( v11 && *(_BYTE *)(result + 9) == 8 && v8 )
      {
        for ( j = 0; j != v8; ++j )
        {
          result = *(unsigned __int8 *)(a4 + a2[j]);
          a2[j] = result;
        }
      }
      return result;
    }
    if ( v8 )
    {
      v17 = a2;
      for ( k = 0; k != v8; ++k )
      {
        v19 = *(_BYTE *)(a3 + ((32 * (v17[1] >> 3)) | (*v17 >> 3 << 10) | (v17[2] >> 3)));
        v17 += 4;
        a2[k] = v19;
      }
LABEL_27:
      v9 = *(unsigned __int8 *)(result + 9);
    }
  }
  if ( v9 <= 7 )
    v8 *= v9;
  *(_BYTE *)(result + 11) = v9;
  if ( v9 <= 7 )
    v16 = v8 + 7;
  else
    v16 = v8 * (v9 >> 3);
  *(_BYTE *)(result + 8) = 3;
  if ( v9 <= 7 )
    v16 >>= 3;
  *(_BYTE *)(result + 10) = 1;
  *(_DWORD *)(result + 4) = v16;
  return result;
}


// ===== 68a3d0 png_do_read_intrapixel =====
unsigned int __fastcall png_do_read_intrapixel(unsigned int result, unsigned __int8 *a2)
{
  int v2; // r3
  int v3; // r2
  int v4; // r12
  int v5; // r6
  int v6; // r3
  int v7; // r5
  unsigned __int8 v8; // r2
  int v9; // r6
  int v10; // r3
  int v11; // r0
  int v12; // r2
  unsigned int v13; // r0
  unsigned int v14; // r5

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
          result = v7 + *a2;
          v8 = v7 + a2[2];
          *a2 = result;
          a2[2] = v8;
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
        v9 = 6;
      }
      else
      {
        if ( v2 != 6 )
          return result;
        v9 = 8;
      }
      if ( v4 )
      {
        v10 = 0;
        do
        {
          v11 = a2[3] | (a2[2] << 8);
          v12 = v11 + (a2[5] | (a2[4] << 8));
          v13 = (v11 + (a2[1] | (*a2 << 8))) << 16;
          v12 <<= 16;
          ++v10;
          v14 = HIBYTE(v13);
          result = HIWORD(v13);
          *a2 = v14;
          a2[1] = result;
          a2[4] = HIBYTE(v12);
          a2[5] = BYTE2(v12);
          a2 += v9;
        }
        while ( v10 != v4 );
      }
    }
  }
  return result;
}


// ===== 68a4e4 png_build_gamma_table =====
void *__fastcall png_build_gamma_table(int a1, int a2, int a3)
{
  double v4; // r8
  int v5; // r4
  _BYTE *v6; // r6
  void *result; // r0
  int v8; // r3
  float v9; // r4
  char v10; // r6
  int v11; // r3
  unsigned int v12; // r11
  int v13; // r9
  int v14; // r4
  int k; // r4
  int v16; // r6
  int v17; // r7
  unsigned int v18; // r11
  int v19; // r9
  int v20; // r4
  int m; // r4
  int v22; // r6
  int v23; // r7
  double v24; // r0
  double v25; // r6
  unsigned int v26; // r11
  int v27; // r9
  int v28; // r4
  int n; // r4
  int v30; // r6
  int v31; // r7
  double v32; // r8
  int v33; // r4
  int v34; // r6
  double v35; // r6
  double v36; // r8
  int i; // r4
  int v38; // r6
  int j; // r4
  int v40; // r7
  int v41; // r7
  unsigned int v42; // r4
  int v43; // r8
  unsigned int v44; // r10
  unsigned int v45; // r3
  int v46; // r2
  unsigned int v47; // r3
  int v48; // r2
  double v49; // [sp+0h] [bp-24h]
  double v50; // [sp+0h] [bp-24h]
  double v51; // [sp+0h] [bp-24h]
  int v52; // [sp+8h] [bp-1Ch]
  int v53; // [sp+8h] [bp-1Ch]
  int v54; // [sp+8h] [bp-1Ch]
  int v55; // [sp+14h] [bp-10h]
  int v56; // [sp+18h] [bp-Ch]
  size_t v57; // [sp+1Ch] [bp-8h]

  if ( *(unsigned __int8 *)(a1 + 487) <= 8u )
  {
    if ( *(float *)(a1 + 544) > 0.000001 )
      v4 = 1.0 / (float)(*(float *)(a1 + 544) * *(float *)(a1 + 540));
    else
      v4 = 1.0;
    v5 = 0;
    v6 = png_malloc((struct __jmp_buf_tag *)a1, 0x100u);
    for ( *(_DWORD *)(a1 + 548) = v6; ; v6 = *(_BYTE **)(a1 + 548) )
    {
      result = (void *)(pow((double)v5 / 255.0, v4) * 255.0 + 0.5);
      v6[v5++] = (_BYTE)result;
      if ( v5 == 256 )
        break;
    }
    if ( (*(_DWORD *)(a1 + 304) & 0x600080) != 0 )
    {
      v32 = 1.0 / *(float *)(a1 + 540);
      v33 = 0;
      *(_DWORD *)(a1 + 556) = png_malloc((struct __jmp_buf_tag *)a1, 0x100u);
      do
      {
        v34 = *(_DWORD *)(a1 + 556);
        *(_BYTE *)(v34 + v33) = (unsigned int)(pow((double)v33 / 255.0, v32) * 255.0 + 0.5);
        ++v33;
      }
      while ( v33 != 256 );
      *(_DWORD *)(a1 + 552) = png_malloc((struct __jmp_buf_tag *)a1, 0x100u);
      v35 = *(float *)(a1 + 544);
      if ( v35 <= 0.000001 )
        v36 = *(float *)(a1 + 540);
      else
        v36 = 1.0 / v35;
      for ( i = 0; i != 256; ++i )
      {
        v38 = *(_DWORD *)(a1 + 552);
        result = (void *)(pow((double)i / 255.0, v36) * 255.0 + 0.5);
        *(_BYTE *)(v38 + i) = (_BYTE)result;
      }
    }
    return result;
  }
  if ( (*(_BYTE *)(a1 + 486) & 2) == 0 )
  {
    v8 = *(unsigned __int8 *)(a1 + 575);
    goto LABEL_45;
  }
  v8 = *(unsigned __int8 *)(a1 + 573);
  a3 = *(unsigned __int8 *)(a1 + 574);
  if ( v8 < *(unsigned __int8 *)(a1 + 572) )
    v8 = *(unsigned __int8 *)(a1 + 572);
  if ( a3 <= v8 )
  {
LABEL_45:
    if ( !v8 )
      goto LABEL_18;
    goto LABEL_17;
  }
  v8 = *(unsigned __int8 *)(a1 + 574);
LABEL_17:
  v8 = 16 - v8;
LABEL_18:
  v56 = v8;
  if ( (*(_DWORD *)(a1 + 304) & 0x400) != 0 && v8 <= 4 )
  {
    v56 = 5;
  }
  else
  {
    if ( v8 > 8 )
      v56 = 8;
    else
      a3 = v8;
    if ( v8 <= 8 )
      v56 = a3 & ~(a3 >> 31);
  }
  v9 = *(float *)(a1 + 544);
  *(_DWORD *)(a1 + 536) = (unsigned __int8)v56;
  v10 = 8 - v56;
  v55 = 1 << (8 - v56);
  if ( v9 > 0.000001 )
    v49 = 1.0 / (float)(v9 * *(float *)(a1 + 540));
  else
    v49 = 1.0;
  v57 = 4 * v55;
  result = png_malloc((struct __jmp_buf_tag *)a1, 4 * v55);
  v11 = *(_DWORD *)(a1 + 304);
  *(_DWORD *)(a1 + 560) = result;
  v12 = v11 & 0x480;
  if ( (v11 & 0x480) != 0 )
  {
    if ( v55 > 0 )
    {
      for ( j = 0; j != v55; ++j )
      {
        v40 = *(_DWORD *)(a1 + 560);
        *(_DWORD *)(v40 + 4 * j) = png_malloc((struct __jmp_buf_tag *)a1, 0x200u);
      }
    }
    v41 = 255 >> v56;
    v42 = 0;
    v43 = 0;
    v44 = v55 << 8;
    do
    {
      for ( result = (void *)(pow(((double)v43 + 0.5) * 0.00390625, 1.0 / v49) * (double)v44);
            (unsigned int)result >= v42;
            *(_WORD *)(v46 + 2 * v45) = v43 | ((_WORD)v43 << 8) )
      {
        v45 = v42 >> v10;
        v46 = *(_DWORD *)(*(_DWORD *)(a1 + 560) + 4 * (v42++ & v41));
      }
      ++v43;
    }
    while ( v43 != 256 );
    for ( ; v42 < v44; *(_WORD *)(v48 + 2 * v47) = -1 )
    {
      v47 = v42 >> v10;
      v48 = *(_DWORD *)(*(_DWORD *)(a1 + 560) + 4 * (v42++ & v41));
    }
  }
  else
  {
    if ( v55 <= 0 )
      goto LABEL_31;
    v13 = v11 & 0x480;
    v52 = *((_DWORD *)&CSWTCH_77 + v56 + 16);
    do
    {
      v14 = *(_DWORD *)(a1 + 560);
      *(_DWORD *)(v14 + 4 * v13) = png_malloc((struct __jmp_buf_tag *)a1, 0x200u);
      for ( k = 0; k != 256; ++k )
      {
        v16 = 2 * k;
        v17 = *(_DWORD *)(*(_DWORD *)(a1 + 560) + 4 * v13);
        result = (void *)(pow((double)((v12 >> 4) + (k << 8)) / 65535.0, v49) * 65535.0 + 0.5);
        *(_WORD *)(v17 + v16) = (_WORD)result;
      }
      ++v13;
      v12 += v52;
    }
    while ( v13 != v55 );
  }
  v11 = *(_DWORD *)(a1 + 304);
LABEL_31:
  if ( (v11 & 0x600080) != 0 )
  {
    v50 = 1.0 / *(float *)(a1 + 540);
    *(_DWORD *)(a1 + 568) = png_malloc((struct __jmp_buf_tag *)a1, v57);
    if ( v55 > 0 )
    {
      v18 = 0;
      v19 = 0;
      v53 = *((_DWORD *)&CSWTCH_77 + v56 + 16);
      do
      {
        v20 = *(_DWORD *)(a1 + 568);
        *(_DWORD *)(v20 + 4 * v19) = png_malloc((struct __jmp_buf_tag *)a1, 0x200u);
        for ( m = 0; m != 256; ++m )
        {
          v22 = 2 * m;
          v23 = *(_DWORD *)(*(_DWORD *)(a1 + 568) + 4 * v19);
          v24 = pow((double)((v18 >> 4) + (m << 8)) / 65535.0, v50);
          *(_WORD *)(v23 + v22) = (unsigned int)(v24 * 65535.0 + 0.5);
        }
        ++v19;
        v18 += v53;
      }
      while ( v19 != v55 );
    }
    v25 = *(float *)(a1 + 544);
    if ( v25 > 0.000001 )
      v51 = 1.0 / v25;
    else
      v51 = *(float *)(a1 + 540);
    result = png_malloc((struct __jmp_buf_tag *)a1, v57);
    *(_DWORD *)(a1 + 564) = result;
    if ( v55 > 0 )
    {
      v26 = 0;
      v27 = 0;
      v54 = *((_DWORD *)&CSWTCH_77 + v56 + 16);
      do
      {
        v28 = *(_DWORD *)(a1 + 564);
        *(_DWORD *)(v28 + 4 * v27) = png_malloc((struct __jmp_buf_tag *)a1, 0x200u);
        for ( n = 0; n != 256; ++n )
        {
          v30 = 2 * n;
          v31 = *(_DWORD *)(*(_DWORD *)(a1 + 564) + 4 * v27);
          result = (void *)(pow((double)((v26 >> 4) + (n << 8)) / 65535.0, v51) * 65535.0 + 0.5);
          *(_WORD *)(v31 + v30) = (_WORD)result;
        }
        ++v27;
        v26 += v54;
      }
      while ( v27 != v55 );
    }
  }
  return result;
}


// ===== 68acd8 png_init_read_transformations =====
unsigned int __fastcall png_init_read_transformations(int a1)
{
  int v1; // r6
  int v3; // r5
  int v4; // r2
  unsigned int result; // r0
  int v6; // r2
  unsigned int v7; // r6
  int v8; // r1
  _BOOL4 v9; // r5
  unsigned int v10; // r12
  __int16 v11; // r8
  __int16 v12; // r7
  __int16 v13; // r5
  int v14; // r3
  int v15; // r6
  int v16; // r2
  int v17; // r1
  unsigned int v18; // r1
  __int16 v19; // r10
  __int16 v20; // r9
  unsigned int v21; // r5
  unsigned int v22; // r12
  int v23; // r6
  int v24; // r3
  int v25; // r2
  int v26; // r2
  int v27; // r3
  __int16 v28; // r1
  int v29; // r3
  int v30; // r3
  int v31; // r0
  double v32; // r0
  int v33; // r3
  char v34; // r1
  int v35; // r3
  int v36; // r1
  int v37; // r3
  int v38; // r6
  int v39; // r2
  int v40; // r3
  double v41; // r6
  double v42; // r10
  unsigned int v43; // r3
  int v44; // r2
  int v45; // r5
  int v46; // r1
  int v47; // r6
  int v48; // r3
  int v49; // r12
  int v50; // r0
  __int16 v51; // r3
  __int16 v52; // r1
  __int16 v53; // r3
  __int16 v54; // r3
  __int16 v55; // r3
  __int16 v56; // r3
  float v57; // r5
  int v58; // r3
  int v59; // r6
  int v60; // r5
  double v61; // r10
  unsigned int v62; // r3
  int v63; // r3
  int v64; // r6
  int v65; // r2
  int v66; // r1
  int v67; // r1
  int v68; // r7
  int v69; // r1
  unsigned int v70; // r1
  int v71; // r7
  int v72; // r8
  unsigned int v73; // r1
  unsigned int v74; // r1
  __int16 v75; // r3
  int v76; // r12
  int v77; // r1
  int v78; // r0
  int v79; // r3
  int v80; // r2
  double v81; // r0
  unsigned int v82; // r0
  double v83; // [sp+0h] [bp-1Ch]
  __int16 v84; // [sp+0h] [bp-1Ch]
  double v85; // [sp+0h] [bp-1Ch]
  __int16 v86; // [sp+8h] [bp-14h]
  char v87; // [sp+Ch] [bp-10h]
  char v88; // [sp+10h] [bp-Ch]
  char v89; // [sp+14h] [bp-8h]

  v1 = *(_DWORD *)(a1 + 304);
  v3 = *(unsigned __int8 *)(a1 + 486);
  if ( (v1 & 0x100) != 0 && (v3 & 2) == 0 )
  {
    *(_DWORD *)(a1 + 296) |= 0x800u;
    if ( (v1 & 0x1100) != 0x1100 )
      goto LABEL_5;
  }
  else
  {
    v4 = *(_DWORD *)(a1 + 304);
    if ( (v4 & 0x4180) == 0x4080 )
    {
      v35 = *(unsigned __int16 *)(a1 + 508);
      if ( v35 == *(unsigned __int16 *)(a1 + 506) )
      {
        v36 = *(unsigned __int16 *)(a1 + 510);
        if ( v36 == v35 )
        {
          v37 = *(_DWORD *)(a1 + 296);
          *(_WORD *)(a1 + 512) = v36;
          *(_DWORD *)(a1 + 296) = v37 | 0x800;
        }
      }
    }
    if ( (v4 & 0x1100) != 0x1100 )
    {
LABEL_5:
      result = (unsigned int)memcpy((void *)(a1 + 514), (const void *)(a1 + 504), 0xAu);
      if ( v3 != 3 )
        goto LABEL_6;
      goto LABEL_39;
    }
  }
  if ( (v3 & 2) == 0 )
  {
    switch ( *(_BYTE *)(a1 + 487) )
    {
      case 1:
        v51 = *(_WORD *)(a1 + 512);
        v52 = 255;
        goto LABEL_69;
      case 2:
        v51 = *(_WORD *)(a1 + 512);
        v52 = 85;
LABEL_69:
        v53 = v52 * v51;
        *(_WORD *)(a1 + 506) = v53;
        *(_WORD *)(a1 + 512) = v53;
        *(_WORD *)(a1 + 510) = v53;
        *(_WORD *)(a1 + 508) = v53;
        if ( (v1 & 0x2000000) != 0 )
          goto LABEL_5;
        v54 = v52 * *(_WORD *)(a1 + 596);
        break;
      case 4:
        v56 = 17 * *(_WORD *)(a1 + 512);
        *(_WORD *)(a1 + 506) = v56;
        *(_WORD *)(a1 + 512) = v56;
        *(_WORD *)(a1 + 510) = v56;
        *(_WORD *)(a1 + 508) = v56;
        if ( (v1 & 0x2000000) != 0 )
          goto LABEL_5;
        v54 = 17 * *(_WORD *)(a1 + 596);
        break;
      case 8:
      case 0x10:
        v55 = *(_WORD *)(a1 + 512);
        *(_WORD *)(a1 + 506) = v55;
        *(_WORD *)(a1 + 510) = v55;
        *(_WORD *)(a1 + 508) = v55;
        goto LABEL_5;
      default:
        goto LABEL_5;
    }
    *(_WORD *)(a1 + 590) = v54;
    *(_WORD *)(a1 + 596) = v54;
    *(_WORD *)(a1 + 594) = v54;
    *(_WORD *)(a1 + 592) = v54;
    goto LABEL_5;
  }
  if ( v3 != 3 )
  {
    result = (unsigned int)memcpy((void *)(a1 + 514), (const void *)(a1 + 504), 0xAu);
    goto LABEL_6;
  }
  v26 = *(_DWORD *)(a1 + 468);
  v27 = 3 * *(unsigned __int8 *)(a1 + 504);
  v28 = *(unsigned __int8 *)(v26 + v27);
  v29 = v26 + v27;
  *(_WORD *)(a1 + 506) = v28;
  *(_WORD *)(a1 + 508) = *(unsigned __int8 *)(v29 + 1);
  *(_WORD *)(a1 + 510) = *(unsigned __int8 *)(v29 + 2);
  if ( (v1 & 0x80000) != 0 )
  {
    v30 = v1 & 0x2000000;
    if ( (v1 & 0x2000000) == 0 )
    {
      v31 = *(unsigned __int16 *)(a1 + 474);
      if ( *(_WORD *)(a1 + 474) )
      {
        do
        {
          *(_BYTE *)(*(_DWORD *)(a1 + 584) + v30) = ~*(_BYTE *)(*(_DWORD *)(a1 + 584) + v30);
          ++v30;
        }
        while ( v31 > v30 );
      }
    }
  }
  result = (unsigned int)memcpy((void *)(a1 + 514), (const void *)(a1 + 504), 0xAu);
LABEL_39:
  if ( *(_WORD *)(a1 + 474) )
  {
    v32 = (float)(*(float *)(a1 + 544) * *(float *)(a1 + 540)) - 1.0;
    HIDWORD(v32) &= ~0x80000000;
    result = v32 < 0.05;
    if ( result )
    {
      if ( !*(_WORD *)(a1 + 474) )
        goto LABEL_47;
      result = *(_DWORD *)(a1 + 584);
      v6 = 0;
      v33 = 0;
      do
      {
        v34 = *(_BYTE *)(result + v33++);
        if ( (unsigned __int8)(v34 - 1) <= 0xFDu )
          v6 = 1;
      }
      while ( v33 < *(unsigned __int16 *)(a1 + 474) );
      if ( !v6 )
      {
LABEL_47:
        v7 = *(_DWORD *)(a1 + 304) & 0xFFFFDFFF;
        *(_DWORD *)(a1 + 304) = v7;
        goto LABEL_7;
      }
    }
  }
LABEL_6:
  v7 = *(_DWORD *)(a1 + 304);
LABEL_7:
  if ( (v7 & 0x602000) != 0 )
  {
    result = *(float *)(a1 + 540) == 0.0;
    if ( *(float *)(a1 + 540) != 0.0 )
    {
      result = (unsigned int)png_build_gamma_table(a1, v8, v6);
      v38 = *(_DWORD *)(a1 + 304);
      v39 = v38 & 0x80;
      if ( (v38 & 0x80) == 0 )
      {
        if ( v3 != 3 )
          return result;
        v46 = *(_DWORD *)(a1 + 468);
        if ( *(_WORD *)(a1 + 472) )
        {
          v47 = 3 * *(unsigned __int16 *)(a1 + 472);
          do
          {
            *(_BYTE *)(v46 + v39) = *(_BYTE *)(*(_DWORD *)(a1 + 548) + *(unsigned __int8 *)(v46 + v39));
            v48 = v46 + v39;
            v49 = *(unsigned __int8 *)(v46 + v39 + 1);
            v50 = *(unsigned __int8 *)(v46 + v39 + 2);
            v39 += 3;
            *(_BYTE *)(v48 + 1) = *(_BYTE *)(*(_DWORD *)(a1 + 548) + v49);
            result = *(unsigned __int8 *)(*(_DWORD *)(a1 + 548) + v50);
            *(_BYTE *)(v48 + 2) = result;
          }
          while ( v39 != v47 );
          v38 = *(_DWORD *)(a1 + 304);
        }
        v7 = v38 & 0xFFFFDFFF;
        *(_DWORD *)(a1 + 304) = v7;
        v9 = 1;
        goto LABEL_19;
      }
      if ( v3 != 3 )
      {
        v40 = *(unsigned __int8 *)(a1 + 496);
        v41 = (double)(unsigned int)~(-1 << *(_BYTE *)(a1 + 487));
        if ( v40 == 2 )
        {
          v57 = *(float *)(a1 + 540);
        }
        else
        {
          if ( v40 != 3 )
          {
            v83 = 1.0;
            if ( v40 == 1 )
              v42 = *(float *)(a1 + 544);
            else
              v42 = 1.0;
LABEL_58:
            *(_WORD *)(a1 + 522) = (unsigned int)(pow((double)*(unsigned __int16 *)(a1 + 512) / v41, v42) * v41 + 0.5);
            result = (unsigned int)(pow((double)*(unsigned __int16 *)(a1 + 512) / v41, v83) * v41 + 0.5);
            v43 = *(unsigned __int16 *)(a1 + 506);
            v44 = *(unsigned __int16 *)(a1 + 508);
            result = (unsigned __int16)result;
            *(_WORD *)(a1 + 512) = result;
            if ( v44 == v43 && (v45 = *(unsigned __int16 *)(a1 + 510), v45 == v44) && (unsigned __int16)result == v45 )
            {
              v75 = *(_WORD *)(a1 + 522);
              *(_WORD *)(a1 + 506) = result;
              *(_WORD *)(a1 + 516) = v75;
              *(_WORD *)(a1 + 520) = v75;
              *(_WORD *)(a1 + 518) = v75;
              *(_WORD *)(a1 + 510) = result;
              *(_WORD *)(a1 + 508) = result;
            }
            else
            {
              *(_WORD *)(a1 + 516) = (unsigned int)(pow((double)v43 / v41, v42) * v41 + 0.5);
              *(_WORD *)(a1 + 518) = (unsigned int)(pow((double)*(unsigned __int16 *)(a1 + 508) / v41, v42) * v41 + 0.5);
              *(_WORD *)(a1 + 520) = (unsigned int)(pow((double)*(unsigned __int16 *)(a1 + 510) / v41, v42) * v41 + 0.5);
              *(_WORD *)(a1 + 506) = (unsigned int)(pow((double)*(unsigned __int16 *)(a1 + 506) / v41, v83) * v41 + 0.5);
              *(_WORD *)(a1 + 508) = (unsigned int)(pow((double)*(unsigned __int16 *)(a1 + 508) / v41, v83) * v41 + 0.5);
              result = (unsigned int)(pow((double)*(unsigned __int16 *)(a1 + 510) / v41, v83) * v41 + 0.5);
              *(_WORD *)(a1 + 510) = result;
            }
            return result;
          }
          v57 = *(float *)(a1 + 500);
        }
        v42 = 1.0 / v57;
        v83 = 1.0 / (float)(v57 * *(float *)(a1 + 544));
        goto LABEL_58;
      }
      v58 = *(unsigned __int8 *)(a1 + 496);
      v59 = *(unsigned __int16 *)(a1 + 472);
      v60 = *(_DWORD *)(a1 + 468);
      switch ( v58 )
      {
        case 2:
          v76 = *(unsigned __int16 *)(a1 + 506);
          v77 = *(unsigned __int16 *)(a1 + 508);
          v78 = *(unsigned __int16 *)(a1 + 510);
          v79 = *(_DWORD *)(a1 + 548);
          v80 = *(_DWORD *)(a1 + 556);
          v89 = *(_BYTE *)(v79 + v78);
          result = *(unsigned __int8 *)(v80 + v78);
          v84 = *(unsigned __int8 *)(v80 + v76);
          v86 = *(unsigned __int8 *)(v80 + v77);
          v87 = *(_BYTE *)(v79 + v76);
          v88 = *(_BYTE *)(v79 + v77);
          goto LABEL_85;
        case 3:
          v61 = 1.0 / *(float *)(a1 + 500);
          v85 = 1.0 / (float)(*(float *)(a1 + 500) * *(float *)(a1 + 544));
          v81 = v85 - 1.0;
          HIDWORD(v81) &= ~0x80000000;
          if ( v81 >= 0.05 )
          {
            v87 = (unsigned int)(pow((double)*(unsigned __int16 *)(a1 + 506) / 255.0, v85) * 255.0 + 0.5);
            v88 = (unsigned int)(pow((double)*(unsigned __int16 *)(a1 + 508) / 255.0, v85) * 255.0 + 0.5);
            v82 = (unsigned int)(pow((double)*(unsigned __int16 *)(a1 + 510) / 255.0, v85) * 255.0 + 0.5);
            v62 = *(unsigned __int16 *)(a1 + 506);
            v89 = v82;
            goto LABEL_84;
          }
          break;
        case 1:
          v61 = *(float *)(a1 + 544);
          break;
        default:
          v61 = 1.0;
          break;
      }
      v62 = *(unsigned __int16 *)(a1 + 506);
      v88 = *(_BYTE *)(a1 + 508);
      v87 = *(_WORD *)(a1 + 506);
      v89 = *(_BYTE *)(a1 + 510);
LABEL_84:
      v84 = (unsigned __int8)(unsigned int)(pow((double)v62 / 255.0, v61) * 255.0 + 0.5);
      v86 = (unsigned __int8)(unsigned int)(pow((double)*(unsigned __int16 *)(a1 + 508) / 255.0, v61) * 255.0 + 0.5);
      result = (unsigned __int8)(unsigned int)(pow((double)*(unsigned __int16 *)(a1 + 510) / 255.0, v61) * 255.0 + 0.5);
LABEL_85:
      if ( v59 )
      {
        v63 = 0;
        v64 = 3 * v59;
        v65 = 0;
        do
        {
          if ( *(unsigned __int16 *)(a1 + 474) <= v65
            || (v66 = *(unsigned __int8 *)(*(_DWORD *)(a1 + 584) + v65), v66 == 255) )
          {
            *(_BYTE *)(v60 + v63) = *(_BYTE *)(*(_DWORD *)(a1 + 548) + *(unsigned __int8 *)(v60 + v63));
            v68 = v60 + v63;
            v69 = *(unsigned __int8 *)(v60 + v63 + 2);
            *(_BYTE *)(v68 + 1) = *(_BYTE *)(*(_DWORD *)(a1 + 548) + *(unsigned __int8 *)(v68 + 1));
            *(_BYTE *)(v68 + 2) = *(_BYTE *)(*(_DWORD *)(a1 + 548) + v69);
          }
          else if ( *(_BYTE *)(*(_DWORD *)(a1 + 584) + v65) )
          {
            v70 = (unsigned __int16)(*(unsigned __int8 *)(*(_DWORD *)(a1 + 556) + *(unsigned __int8 *)(v60 + v63))
                                   * (_WORD)v66
                                   + 128
                                   + (255 - v66) * v84);
            *(_BYTE *)(v60 + v63) = *(_BYTE *)(*(_DWORD *)(a1 + 552)
                                             + (unsigned __int8)((unsigned __int16)(v70 + (v70 >> 8)) >> 8));
            v71 = v60 + v63;
            LOWORD(v70) = *(unsigned __int8 *)(*(_DWORD *)(a1 + 584) + v65);
            v72 = *(unsigned __int8 *)(v60 + v63 + 2);
            v73 = (unsigned __int16)(*(unsigned __int8 *)(*(_DWORD *)(a1 + 556) + *(unsigned __int8 *)(v60 + v63 + 1))
                                   * (_WORD)v70
                                   + 128
                                   + (255 - v70) * v86);
            *(_BYTE *)(v71 + 1) = *(_BYTE *)(*(_DWORD *)(a1 + 552)
                                           + (unsigned __int8)((unsigned __int16)(v73 + (v73 >> 8)) >> 8));
            LOWORD(v73) = *(unsigned __int8 *)(*(_DWORD *)(a1 + 584) + v65);
            v74 = (unsigned __int16)(*(unsigned __int8 *)(*(_DWORD *)(a1 + 556) + v72) * (_WORD)v73
                                   + 128
                                   + (255 - v73) * result);
            *(_BYTE *)(v71 + 2) = *(_BYTE *)(*(_DWORD *)(a1 + 552)
                                           + (unsigned __int8)((unsigned __int16)(v74 + (v74 >> 8)) >> 8));
          }
          else
          {
            v67 = v60 + v63;
            *(_BYTE *)(v67 + 1) = v88;
            *(_BYTE *)(v67 + 2) = v89;
            *(_BYTE *)(v60 + v63) = v87;
          }
          v63 += 3;
          ++v65;
        }
        while ( v63 != v64 );
      }
      v9 = 1;
      v7 = *(_DWORD *)(a1 + 304) & 0xFFFBDF7F | 0x40000;
      *(_DWORD *)(a1 + 304) = v7;
      goto LABEL_19;
    }
  }
  v9 = v3 == 3;
  if ( (v9 & (v7 >> 7)) != 0 )
  {
    v10 = *(_DWORD *)(a1 + 468);
    v11 = *(unsigned __int8 *)(a1 + 506);
    v12 = *(unsigned __int8 *)(a1 + 508);
    v13 = *(unsigned __int8 *)(a1 + 510);
    if ( *(_WORD *)(a1 + 474) )
    {
      v14 = 0;
      v15 = 3 * *(unsigned __int16 *)(a1 + 474);
      v16 = 0;
      do
      {
        result = v10 + v14;
        v17 = *(unsigned __int8 *)(*(_DWORD *)(a1 + 584) + v16);
        if ( *(_BYTE *)(*(_DWORD *)(a1 + 584) + v16) )
        {
          result = v10;
          if ( v17 != 255 )
          {
            v18 = (unsigned __int16)(*(unsigned __int8 *)(v10 + v14) * (_WORD)v17 + 128 + (255 - v17) * v11);
            *(_BYTE *)(v10 + v14) = (unsigned __int16)(v18 + (v18 >> 8)) >> 8;
            result = v10 + v14;
            v19 = *(unsigned __int8 *)(v10 + v14 + 2);
            LOWORD(v18) = *(unsigned __int8 *)(*(_DWORD *)(a1 + 584) + v16);
            v20 = *(unsigned __int8 *)(v10 + v14 + 1) * (_WORD)v18 + 128;
            *(_BYTE *)(result + 1) = (unsigned __int16)(v20
                                                      + (255 - v18) * v12
                                                      + ((unsigned __int16)(v20 + (255 - v18) * v12) >> 8)) >> 8;
            LOWORD(v18) = *(unsigned __int8 *)(*(_DWORD *)(a1 + 584) + v16);
            *(_BYTE *)(result + 2) = (unsigned __int16)(v19 * v18
                                                      + 128
                                                      + (255 - v18) * v13
                                                      + ((unsigned __int16)(v19 * v18 + 128 + (255 - v18) * v13) >> 8)) >> 8;
          }
        }
        else
        {
          *(_BYTE *)(result + 1) = v12;
          *(_BYTE *)(result + 2) = v13;
          *(_BYTE *)(v10 + v14) = v11;
        }
        v14 += 3;
        ++v16;
      }
      while ( v14 != v15 );
      v7 = *(_DWORD *)(a1 + 304);
    }
    v7 = v7 & 0xFFFBFF7F | 0x40000;
    *(_DWORD *)(a1 + 304) = v7;
    v9 = 1;
  }
LABEL_19:
  if ( (v9 & (v7 >> 3)) != 0 )
  {
    v21 = 8 - *(unsigned __int8 *)(a1 + 572);
    v22 = 8 - *(unsigned __int8 *)(a1 + 573);
    result = 8 - *(unsigned __int8 *)(a1 + 574);
    if ( v21 > 8 )
      LOBYTE(v21) = 0;
    if ( v22 > 8 )
      LOBYTE(v22) = 0;
    if ( result > 8 )
      result = 0;
    if ( *(_WORD *)(a1 + 472) )
    {
      v23 = 3 * ((unsigned __int16)(*(_WORD *)(a1 + 472) - 1) + 1);
      v24 = 0;
      do
      {
        *(_BYTE *)(*(_DWORD *)(a1 + 468) + v24) = (int)*(unsigned __int8 *)(*(_DWORD *)(a1 + 468) + v24) >> v21;
        *(_BYTE *)(*(_DWORD *)(a1 + 468) + v24 + 1) = (int)*(unsigned __int8 *)(*(_DWORD *)(a1 + 468) + v24 + 1) >> v22;
        v25 = *(_DWORD *)(a1 + 468) + v24;
        v24 += 3;
        *(_BYTE *)(v25 + 2) = (int)*(unsigned __int8 *)(v25 + 2) >> result;
      }
      while ( v24 != v23 );
    }
  }
  return result;
}


// ===== 68ba98 png_do_background =====
int __fastcall png_do_background(
        int *a1,
        char *a2,
        unsigned __int16 *a3,
        _WORD *a4,
        unsigned __int16 *a5,
        int a6,
        int a7,
        int a8,
        int a9,
        int a10,
        int a11,
        char a12)
{
  int v14; // r8
  int result; // r0
  int v16; // r5
  int v17; // r7
  int v18; // r10
  char v19; // r2
  unsigned __int8 v20; // r3
  unsigned int v21; // r5
  bool v22; // zf
  bool v23; // zf
  unsigned __int8 *v24; // r2
  int v25; // r8
  char *v26; // r1
  int v27; // r0
  unsigned int v28; // r7
  unsigned int v29; // r7
  int v30; // r4
  int v31; // r7
  unsigned int v32; // r0
  int v33; // r4
  unsigned int v34; // r0
  char *v35; // r1
  int v36; // r12
  int v37; // r6
  int v38; // r7
  int v39; // r8
  int v40; // r10
  __int16 v41; // r4
  __int16 v42; // r4
  __int16 v43; // r4
  int v44; // r4
  int v45; // r5
  bool v46; // zf
  unsigned __int8 *v47; // r2
  int v48; // r8
  char *v49; // r1
  int v50; // r0
  unsigned int v51; // r0
  int v52; // r4
  unsigned int v53; // r0
  int v54; // r12
  unsigned int v55; // r0
  char *v56; // r3
  int v57; // r11
  int v58; // r2
  unsigned int v59; // r4
  unsigned int v60; // r4
  char *v61; // r7
  unsigned __int8 *v62; // r8
  int v63; // r10
  int v64; // r11
  int v65; // r3
  int v66; // r2
  unsigned int v67; // r1
  unsigned int v68; // r1
  __int16 v69; // r12
  __int16 v70; // r0
  int v71; // r4
  unsigned int v72; // r4
  unsigned int v73; // r4
  unsigned int v74; // r2
  int v75; // r3
  int v76; // r12
  int v77; // r12
  char *v78; // r1
  int v79; // r12
  int v80; // r8
  int v81; // r7
  int v82; // r10
  int v83; // r9
  unsigned int v84; // r7
  bool v85; // zf
  unsigned int v86; // r7
  __int16 v87; // r7
  int i; // r3
  int v89; // r0
  int v90; // r3
  int v91; // r12
  char v92; // r9
  int v93; // r4
  int v94; // r12
  int v95; // r3
  int v96; // r12
  int v97; // r4
  char v98; // r9
  int v99; // r4
  __int16 v100; // r0
  __int16 v101; // r0
  char *v102; // r7
  _BYTE *v103; // r3
  char *v104; // r1
  int v105; // r0
  bool v106; // zf
  char *v107; // r2
  int v108; // r3
  int v109; // r0
  __int16 v110; // r4
  __int16 v111; // r7
  bool v112; // zf
  char *v113; // r2
  int v114; // r10
  unsigned __int8 *v115; // r3
  char *v116; // r1
  char *v117; // r4
  int v118; // r2
  unsigned int v119; // r5
  unsigned int v120; // r5
  char *v121; // r2
  int v122; // r3
  bool v123; // zf
  int v124; // r0
  char *v125; // r12
  char *v126; // r3
  char *v127; // r1
  int v128; // r2
  unsigned int v129; // r7
  unsigned int v130; // r7
  __int16 v131; // r2
  char *v132; // r12
  int v133; // r3
  int v134; // r0
  int v135; // r3
  int v136; // r0
  int v137; // [sp+4h] [bp-18h]
  int v138; // [sp+8h] [bp-14h]
  int v139; // [sp+8h] [bp-14h]
  int v140; // [sp+Ch] [bp-10h]
  int v141; // [sp+10h] [bp-Ch]
  int v142; // [sp+14h] [bp-8h]

  v14 = a6;
  result = a9;
  v16 = *a1;
  if ( a4 )
  {
    v17 = *((unsigned __int8 *)a1 + 8);
    v18 = v17 & 4;
    if ( (v17 & 4) == 0 )
      goto LABEL_3;
    v22 = a3 == nullptr;
    if ( a3 )
      v22 = v17 == 3;
    if ( !v22 )
    {
LABEL_3:
      switch ( *((_BYTE *)a1 + 8) )
      {
        case 0:
          switch ( *((_BYTE *)a1 + 9) )
          {
            case 1:
              if ( v16 )
              {
                v75 = 7;
                for ( result = 0; result != v16; ++result )
                {
                  v76 = (unsigned __int8)*a2;
                  if ( ((v76 >> v75) & 1) == a3[4] )
                  {
                    v77 = v76 & (32639 >> (7 - v75));
                    *a2 = v77;
                    *a2 = v77 | ((unsigned __int8)a4[4] << v75);
                  }
                  if ( v75 )
                  {
                    --v75;
                  }
                  else
                  {
                    ++a2;
                    v75 = 7;
                  }
                }
                goto LABEL_5;
              }
              break;
            case 2:
              if ( a6 )
              {
                if ( v16 )
                {
                  v95 = 6;
                  v96 = 0;
                  v138 = (int)a1;
                  do
                  {
                    v97 = (unsigned __int8)*a2;
                    v98 = 6 - v95;
                    result = (16 * ((v97 >> v95) & 3))
                           | (4 * ((v97 >> v95) & 3))
                           | (v97 >> v95) & 3
                           | (((v97 >> v95) & 3) << 6);
                    if ( ((v97 >> v95) & 3) == a3[4] )
                    {
                      v99 = v97 & (16191 >> v98);
                      *a2 = v99;
                      result = (unsigned __int16)a4[4];
                      *a2 = v99 | ((_BYTE)result << v95);
                    }
                    else
                    {
                      *a2 = v97 & (16191 >> v98) | (*(unsigned __int8 *)(a6 + result) >> 6 << v95);
                    }
                    ++v96;
                    if ( v95 )
                    {
                      v95 -= 2;
                    }
                    else
                    {
                      ++a2;
                      v95 = 6;
                    }
                  }
                  while ( v96 != v16 );
                  goto LABEL_172;
                }
              }
              else if ( v16 )
              {
                v133 = 6;
                do
                {
                  result = (unsigned __int8)*a2;
                  if ( ((result >> v133) & 3) == a3[4] )
                  {
                    v134 = result & (16191 >> (6 - v133));
                    *a2 = v134;
                    result = v134 | ((unsigned __int16)a4[4] << v133);
                    *a2 = result;
                  }
                  ++v14;
                  if ( v133 )
                  {
                    v133 -= 2;
                  }
                  else
                  {
                    ++a2;
                    v133 = 6;
                  }
                }
                while ( v14 != v16 );
                goto LABEL_5;
              }
              break;
            case 4:
              if ( a6 )
              {
                if ( v16 )
                {
                  v90 = 4;
                  result = 0;
                  v57 = (int)a1;
                  do
                  {
                    v91 = (unsigned __int8)*a2;
                    v92 = 4 - v90;
                    v93 = (v91 >> v90) & 0xF;
                    if ( v93 == a3[4] )
                    {
                      v94 = v91 & (3855 >> v92);
                      *a2 = v94;
                      *a2 = v94 | ((unsigned __int8)a4[4] << v90);
                    }
                    else
                    {
                      *a2 = v91 & (3855 >> v92) | (*(unsigned __int8 *)(a6 + (v93 | (16 * v93))) >> 4 << v90);
                    }
                    ++result;
                    if ( v90 )
                    {
                      v90 -= 4;
                    }
                    else
                    {
                      ++a2;
                      v90 = 4;
                    }
                  }
                  while ( result != v16 );
                  goto LABEL_77;
                }
              }
              else if ( v16 )
              {
                v135 = 4;
                do
                {
                  result = (unsigned __int8)*a2;
                  if ( ((result >> v135) & 0xF) == a3[4] )
                  {
                    v136 = result & (3855 >> (4 - v135));
                    *a2 = v136;
                    result = v136 | ((unsigned __int16)a4[4] << v135);
                    *a2 = result;
                  }
                  ++v14;
                  if ( v135 )
                  {
                    v135 -= 4;
                  }
                  else
                  {
                    ++a2;
                    v135 = 4;
                  }
                }
                while ( v14 != v16 );
                goto LABEL_5;
              }
              break;
            case 8:
              if ( a6 )
              {
                if ( v16 )
                {
                  for ( i = 0; i != v16; ++i )
                  {
                    v89 = (unsigned __int8)a2[i];
                    if ( a3[4] == v89 )
                      result = (unsigned __int16)a4[4];
                    else
                      result = *(unsigned __int8 *)(a6 + v89);
                    a2[i] = result;
                  }
                  goto LABEL_5;
                }
              }
              else if ( v16 )
              {
                do
                {
                  result = (unsigned __int8)a2[v14];
                  if ( result == a3[4] )
                    a2[v14] = a4[4];
                  ++v14;
                }
                while ( v14 != v16 );
                goto LABEL_5;
              }
              break;
            case 0x10:
              if ( a9 )
              {
                if ( v16 )
                {
                  v78 = a2 + 2;
                  v79 = 0;
                  do
                  {
                    v80 = (unsigned __int8)*(v78 - 1);
                    v81 = (unsigned __int8)*(v78 - 2);
                    v82 = a3[4];
                    ++v79;
                    v83 = 2 * v81;
                    v84 = (unsigned __int16)(v80 + ((_WORD)v81 << 8));
                    v85 = v82 == v84;
                    if ( v82 == v84 )
                      v84 = (unsigned __int16)a4[4];
                    else
                      v80 >>= a12;
                    if ( v85 )
                      v86 = v84 >> 8;
                    else
                      v86 = *(_DWORD *)(a9 + 4 * v80);
                    if ( v85 )
                    {
                      *(v78 - 2) = v86;
                      v87 = a4[4];
                    }
                    else
                    {
                      v87 = *(_WORD *)(v86 + v83);
                    }
                    if ( !v85 )
                      *(v78 - 2) = HIBYTE(v87);
                    *(v78 - 1) = v87;
                    v78 += 2;
                  }
                  while ( v79 != v16 );
                  goto LABEL_5;
                }
              }
              else if ( v16 )
              {
                while ( 1 )
                {
                  ++result;
                  if ( a3[4] == (unsigned __int16)((unsigned __int8)a2[1] + ((unsigned __int8)*a2 << 8)) )
                  {
                    *a2 = HIBYTE(a4[4]);
                    a2[1] = a4[4];
                  }
                  if ( result == v16 )
                    break;
                  a2 += 2;
                }
                goto LABEL_5;
              }
              break;
            default:
              goto LABEL_6;
          }
          goto LABEL_6;
        case 2:
          if ( *((_BYTE *)a1 + 9) == 8 )
          {
            if ( a6 )
            {
              if ( !v16 )
                goto LABEL_6;
              v102 = &a2[3 * v16 + 2];
              v103 = a2 + 1;
              v104 = a2 + 2;
              do
              {
                v105 = (unsigned __int8)*(v104 - 2);
                if ( a3[1] == v105 && (unsigned __int8)*(v104 - 1) == a3[2] && (unsigned __int8)v103[1] == a3[3] )
                {
                  *(v104 - 2) = a4[1];
                  *(v104 - 1) = a4[2];
                  result = (unsigned __int16)a4[3];
                  v103[1] = result;
                }
                else
                {
                  *(v104 - 2) = *(_BYTE *)(a6 + v105);
                  *v103 = *(_BYTE *)(a6 + (unsigned __int8)*v103);
                  result = *(unsigned __int8 *)(a6 + (unsigned __int8)*v104);
                  *v104 = result;
                }
                v104 += 3;
                v103 += 3;
              }
              while ( v104 != v102 );
            }
            else
            {
              if ( !v16 )
                return result;
              v132 = &a2[3 * v16 - 3];
              while ( 1 )
              {
                result = (unsigned __int8)*a2;
                if ( result == a3[1] )
                {
                  result = (unsigned __int8)a2[1];
                  if ( result == a3[2] )
                  {
                    result = (unsigned __int8)a2[2];
                    if ( result == a3[3] )
                    {
                      *a2 = a4[1];
                      a2[1] = a4[2];
                      a2[2] = a4[3];
                    }
                  }
                }
                if ( a2 == v132 )
                  break;
                a2 += 3;
              }
            }
            goto LABEL_5;
          }
          if ( a9 )
          {
            if ( !v16 )
              goto LABEL_6;
            v35 = a2 + 6;
            v36 = 0;
            v137 = *a1;
            v140 = (int)a1;
            while ( 1 )
            {
              v44 = (unsigned __int8)*(v35 - 6);
              v45 = (unsigned __int8)*(v35 - 5);
              if ( a3[1] == (unsigned __int16)(v45 + ((_WORD)v44 << 8)) )
              {
                v37 = (unsigned __int8)*(v35 - 4);
                v38 = (unsigned __int8)*(v35 - 3);
                if ( a3[2] == (unsigned __int16)(v38 + ((_WORD)v37 << 8)) )
                {
                  v39 = (unsigned __int8)*(v35 - 2);
                  v40 = (unsigned __int8)*(v35 - 1);
                  if ( a3[3] == (unsigned __int16)(v40 + ((_WORD)v39 << 8)) )
                  {
                    *(v35 - 6) = HIBYTE(a4[1]);
                    *(v35 - 5) = a4[1];
                    *(v35 - 4) = HIBYTE(a4[2]);
                    *(v35 - 3) = a4[2];
                    *(v35 - 2) = HIBYTE(a4[3]);
                    *(v35 - 1) = a4[3];
                    goto LABEL_40;
                  }
                }
                else
                {
                  v39 = (unsigned __int8)*(v35 - 2);
                  v40 = (unsigned __int8)*(v35 - 1);
                }
              }
              else
              {
                v37 = (unsigned __int8)*(v35 - 4);
                v38 = (unsigned __int8)*(v35 - 3);
                v39 = (unsigned __int8)*(v35 - 2);
                v40 = (unsigned __int8)*(v35 - 1);
              }
              v41 = *(_WORD *)(*(_DWORD *)(a9 + 4 * (v45 >> a12)) + 2 * v44);
              *(v35 - 6) = HIBYTE(v41);
              *(v35 - 5) = v41;
              v42 = *(_WORD *)(*(_DWORD *)(a9 + 4 * (v38 >> a12)) + 2 * v37);
              *(v35 - 4) = HIBYTE(v42);
              *(v35 - 3) = v42;
              v43 = *(_WORD *)(*(_DWORD *)(a9 + 4 * (v40 >> a12)) + 2 * v39);
              *(v35 - 2) = HIBYTE(v43);
              *(v35 - 1) = v43;
LABEL_40:
              ++v36;
              v35 += 6;
              if ( v36 == v137 )
              {
                a1 = (int *)v140;
                v16 = v137;
                LOBYTE(v17) = *(_BYTE *)(v140 + 8);
                v18 = v17 & 4;
                goto LABEL_6;
              }
            }
          }
          if ( v16 )
          {
            while ( 1 )
            {
              ++result;
              if ( a3[1] == (unsigned __int16)((unsigned __int8)a2[1] + ((unsigned __int8)*a2 << 8))
                && a3[2] == (unsigned __int16)((unsigned __int8)a2[3] + ((unsigned __int8)a2[2] << 8))
                && a3[3] == (unsigned __int16)((unsigned __int8)a2[5] + ((unsigned __int8)a2[4] << 8)) )
              {
                *a2 = HIBYTE(a4[1]);
                a2[1] = a4[1];
                a2[2] = HIBYTE(a4[2]);
                a2[3] = a4[2];
                a2[4] = HIBYTE(a4[3]);
                a2[5] = a4[3];
              }
              if ( result == v16 )
                break;
              a2 += 6;
            }
            goto LABEL_5;
          }
          goto LABEL_6;
        case 4:
          if ( *((_BYTE *)a1 + 9) != 8 )
          {
            v46 = a10 == 0;
            if ( a10 )
              v46 = a9 == 0;
            if ( !v46 && a11 )
            {
              if ( !v16 )
                goto LABEL_6;
              v47 = (unsigned __int8 *)a2;
              v48 = 0;
              v49 = a2 + 2;
              v142 = (int)a1;
              while ( 1 )
              {
                v50 = (unsigned __int16)(v47[3] + (v47[2] << 8));
                if ( v50 == 0xFFFF )
                {
                  v55 = *v47;
                  v52 = a9;
                  v54 = (int)v47[1] >> a12;
                }
                else
                {
                  if ( !(v47[3] + (v47[2] << 8)) )
                  {
                    *(v49 - 2) = HIBYTE(a4[4]);
                    result = (unsigned __int16)a4[4];
                    *(v49 - 1) = result;
                    goto LABEL_52;
                  }
                  v51 = a5[4] * (0xFFFF - v50)
                      + 0x8000
                      + v50 * *(unsigned __int16 *)(*(_DWORD *)(a11 + 4 * ((int)v47[1] >> a12)) + 2 * *v47);
                  v52 = a10;
                  v53 = (v51 + HIWORD(v51)) >> 16;
                  v54 = (int)(unsigned __int8)v53 >> a12;
                  v55 = v53 >> 8;
                }
                result = *(unsigned __int16 *)(*(_DWORD *)(v52 + 4 * v54) + 2 * v55);
                *(v49 - 2) = BYTE1(result);
                *(v49 - 1) = result;
LABEL_52:
                ++v48;
                v49 += 2;
                if ( v48 == v16 )
                {
                  a1 = (int *)v142;
                  LOBYTE(v17) = *(_BYTE *)(v142 + 8);
                  v18 = v17 & 4;
                  goto LABEL_6;
                }
                v47 += 4;
              }
            }
            if ( v16 )
            {
              v56 = a2;
              result = 0;
              v57 = (int)a1;
              while ( 1 )
              {
                v58 = (unsigned __int16)((unsigned __int8)v56[3] + ((unsigned __int8)v56[2] << 8));
                if ( v58 == 0xFFFF )
                {
                  *a2 = *v56;
                  a2[1] = v56[1];
                }
                else if ( (unsigned __int8)v56[3] + ((unsigned __int8)v56[2] << 8) )
                {
                  v59 = (unsigned __int16)((unsigned __int8)v56[1] + ((unsigned __int8)*v56 << 8)) * v58
                      + 0x8000
                      + a5[4] * (0xFFFF - v58);
                  v60 = (v59 + HIWORD(v59)) >> 16;
                  a2[1] = v60;
                  *a2 = BYTE1(v60);
                }
                else
                {
                  *a2 = HIBYTE(a4[4]);
                  a2[1] = a4[4];
                }
                if ( ++result == v16 )
                  break;
                v56 += 4;
                a2 += 2;
              }
LABEL_77:
              LOBYTE(v17) = *(_BYTE *)(v57 + 8);
              a1 = (int *)v57;
              v18 = v17 & 4;
            }
            goto LABEL_6;
          }
          v106 = a8 == 0;
          if ( a8 )
            v106 = a7 == 0;
          if ( !v106 && a6 )
          {
            if ( v16 )
            {
              v107 = a2;
              v108 = 0;
              v138 = (int)a1;
              while ( 1 )
              {
                v109 = (unsigned __int8)v107[1];
                if ( v109 == 255 )
                {
                  result = *(unsigned __int8 *)(a6 + (unsigned __int8)*v107);
                  a2[v108] = result;
                }
                else
                {
                  if ( v107[1] )
                  {
                    v110 = *(unsigned __int8 *)(a8 + (unsigned __int8)*v107);
                    v111 = a5[4] * (255 - v109) + 128;
                    result = *(unsigned __int8 *)(a7
                                                + (unsigned __int8)((unsigned __int16)(v111
                                                                                     + v110 * v109
                                                                                     + ((unsigned __int16)(v111 + v110 * v109) >> 8)) >> 8));
                  }
                  else
                  {
                    result = (unsigned __int16)a4[4];
                  }
                  a2[v108] = result;
                }
                if ( ++v108 == v16 )
                  break;
                v107 += 2;
              }
LABEL_172:
              a1 = (int *)v138;
              LOBYTE(v17) = *(_BYTE *)(v138 + 8);
              v18 = v17 & 4;
            }
            goto LABEL_6;
          }
          if ( !v16 )
            goto LABEL_6;
          v121 = a2;
          v122 = 0;
          while ( 1 )
          {
            v124 = (unsigned __int8)v121[1];
            if ( v124 == 255 )
            {
              result = (unsigned __int8)*v121;
              a2[v122] = result;
            }
            else
            {
              v123 = v124 == 0;
              if ( v121[1] )
              {
                LOWORD(v14) = 255 - v124;
                LOWORD(v18) = a5[4];
                result = (unsigned __int8)*v121 * v124;
              }
              else
              {
                result = (unsigned __int16)a4[4];
              }
              if ( !v123 )
                result = ((unsigned __int16)(result + 128 + v18 * v14)
                        + ((unsigned __int16)(result + 128 + v18 * v14) >> 8)) >> 8;
              a2[v122] = result;
            }
            if ( ++v122 == v16 )
              break;
            v121 += 2;
          }
          goto LABEL_5;
        case 6:
          if ( *((_BYTE *)a1 + 9) != 8 )
          {
            v23 = a10 == 0;
            if ( a10 )
              v23 = a9 == 0;
            if ( !v23 && a11 )
            {
              if ( !v16 )
                goto LABEL_6;
              v24 = (unsigned __int8 *)a2;
              v25 = 0;
              v26 = a2 + 6;
              v141 = (int)a1;
              while ( 1 )
              {
                v27 = (unsigned __int16)(v24[7] + (v24[6] << 8));
                if ( v27 == 0xFFFF )
                {
                  v100 = *(_WORD *)(*(_DWORD *)(a9 + 4 * ((int)v24[1] >> a12)) + 2 * *v24);
                  *(v26 - 6) = HIBYTE(v100);
                  *(v26 - 5) = v100;
                  v101 = *(_WORD *)(*(_DWORD *)(a9 + 4 * ((int)v24[3] >> a12)) + 2 * v24[2]);
                  *(v26 - 4) = HIBYTE(v101);
                  *(v26 - 3) = v101;
                  v34 = v24[4];
                  v33 = *(_DWORD *)(a9 + 4 * ((int)v24[5] >> a12));
                }
                else
                {
                  if ( !(v24[7] + (v24[6] << 8)) )
                  {
                    *(v26 - 6) = HIBYTE(a4[1]);
                    *(v26 - 5) = a4[1];
                    *(v26 - 4) = HIBYTE(a4[2]);
                    *(v26 - 3) = a4[2];
                    *(v26 - 2) = HIBYTE(a4[3]);
                    result = (unsigned __int16)a4[3];
                    *(v26 - 1) = result;
                    goto LABEL_27;
                  }
                  v28 = a5[1] * (0xFFFF - v27)
                      + 0x8000
                      + v27 * *(unsigned __int16 *)(*(_DWORD *)(a11 + 4 * ((int)v24[1] >> a12)) + 2 * *v24);
                  LOWORD(v28) = *(_WORD *)(*(_DWORD *)(a10
                                                     + 4 * ((int)(unsigned __int8)((v28 + HIWORD(v28)) >> 16) >> a12))
                                         + 2 * ((v28 + HIWORD(v28)) >> 24));
                  *(v26 - 6) = BYTE1(v28);
                  *(v26 - 5) = v28;
                  v29 = a5[2] * (0xFFFF - v27)
                      + 0x8000
                      + v27 * *(unsigned __int16 *)(*(_DWORD *)(a11 + 4 * ((int)v24[3] >> a12)) + 2 * v24[2]);
                  LOWORD(v29) = *(_WORD *)(*(_DWORD *)(a10
                                                     + 4 * ((int)(unsigned __int8)((v29 + HIWORD(v29)) >> 16) >> a12))
                                         + 2 * ((v29 + HIWORD(v29)) >> 24));
                  *(v26 - 4) = BYTE1(v29);
                  *(v26 - 3) = v29;
                  v30 = a5[3] * (0xFFFF - v27);
                  v31 = *(unsigned __int16 *)(*(_DWORD *)(a11 + 4 * ((int)v24[5] >> a12)) + 2 * v24[4]);
                  v32 = (v30 + 0x8000 + v27 * v31 + ((unsigned int)(v30 + 0x8000 + v27 * v31) >> 16)) >> 16;
                  v33 = *(_DWORD *)(a10 + 4 * ((int)(unsigned __int8)v32 >> a12));
                  v34 = v32 >> 8;
                }
                result = *(unsigned __int16 *)(v33 + 2 * v34);
                *(v26 - 2) = BYTE1(result);
                *(v26 - 1) = result;
LABEL_27:
                ++v25;
                v26 += 6;
                if ( v25 == v16 )
                {
                  a1 = (int *)v141;
                  LOBYTE(v17) = *(_BYTE *)(v141 + 8);
                  v18 = v17 & 4;
                  goto LABEL_6;
                }
                v24 += 8;
              }
            }
            if ( !v16 )
              goto LABEL_6;
            v61 = a2;
            v62 = (unsigned __int8 *)a2;
            v63 = 0;
            v64 = (int)a1;
            while ( 1 )
            {
              v65 = (unsigned __int16)(v62[7] + (v62[6] << 8));
              v66 = 0xFFFF - v65;
              if ( v65 == 0xFFFF )
              {
                result = (int)memcpy(v61, v62, 6u);
              }
              else if ( v62[7] + (v62[6] << 8) )
              {
                v67 = (unsigned __int16)(v62[1] + (*v62 << 8)) * v65 + 0x8000 + (unsigned __int16)a4[1] * v66;
                v68 = (v67 + HIWORD(v67)) >> 16;
                v69 = v62[4];
                v70 = v62[5];
                v71 = v65 * (unsigned __int16)(v62[3] + (v62[2] << 8));
                *v61 = BYTE1(v68);
                v61[1] = v68;
                v72 = v71 + 0x8000 + (unsigned __int16)a4[2] * v66;
                result = (unsigned __int16)(v70 + (v69 << 8));
                v73 = (v72 + HIWORD(v72)) >> 16;
                v61[3] = v73;
                v61[2] = BYTE1(v73);
                v74 = (v65 * result
                     + 0x8000
                     + (unsigned __int16)a4[3] * v66
                     + ((v65 * result + 0x8000 + (unsigned int)(unsigned __int16)a4[3] * v66) >> 16)) >> 16;
                v61[5] = v74;
                v61[4] = BYTE1(v74);
              }
              else
              {
                *v61 = HIBYTE(a4[1]);
                v61[1] = a4[1];
                v61[2] = HIBYTE(a4[2]);
                v61[3] = a4[2];
                v61[4] = HIBYTE(a4[3]);
                v61[5] = a4[3];
              }
              if ( ++v63 == v16 )
                break;
              v62 += 8;
              v61 += 6;
            }
            a1 = (int *)v64;
            goto LABEL_5;
          }
          v112 = a8 == 0;
          if ( a8 )
            v112 = a7 == 0;
          if ( v112 || !a6 )
          {
            if ( v16 )
            {
              v125 = &a2[3 * v16 + 3];
              v126 = a2;
              v127 = a2 + 3;
              while ( 1 )
              {
                v128 = (unsigned __int8)v126[3];
                if ( v128 == 255 )
                {
                  *(v127 - 3) = *v126;
                  *(v127 - 2) = v126[1];
                  *(v127 - 1) = v126[2];
                }
                else
                {
                  result = (unsigned __int16)(255 - v128);
                  if ( v126[3] )
                  {
                    v129 = (unsigned __int16)((unsigned __int8)*v126 * (_WORD)v128 + 128 + a4[1] * result);
                    *(v127 - 3) = (unsigned __int16)(v129 + (v129 >> 8)) >> 8;
                    v130 = (unsigned __int16)((unsigned __int8)v126[1] * (_WORD)v128 + 128 + a4[2] * result);
                    *(v127 - 2) = (unsigned __int16)(v130 + (v130 >> 8)) >> 8;
                    v131 = (unsigned __int8)v126[2] * (_WORD)v128 + 128;
                    result = ((unsigned __int16)(v131 + a4[3] * result)
                            + ((unsigned __int16)(v131 + a4[3] * result) >> 8)) >> 8;
                    *(v127 - 1) = result;
                  }
                  else
                  {
                    *(v127 - 3) = a4[1];
                    *(v127 - 2) = a4[2];
                    *(v127 - 1) = a4[3];
                  }
                }
                v127 += 3;
                if ( v127 == v125 )
                  break;
                v126 += 4;
              }
LABEL_5:
              LOBYTE(v17) = *((_BYTE *)a1 + 8);
              v18 = v17 & 4;
            }
          }
          else if ( v16 )
          {
            v113 = &a2[3 * v16 + 3];
            v114 = (int)a1;
            v115 = (unsigned __int8 *)a2;
            v139 = *a1;
            v116 = a2 + 3;
            v117 = v113;
            while ( 1 )
            {
              v118 = v115[3];
              if ( v118 == 255 )
              {
                *(v116 - 3) = *(_BYTE *)(a6 + *v115);
                *(v116 - 2) = *(_BYTE *)(a6 + v115[1]);
                *(v116 - 1) = *(_BYTE *)(a6 + v115[2]);
              }
              else
              {
                result = (unsigned __int16)(255 - v118);
                if ( v115[3] )
                {
                  v119 = (unsigned __int16)(a5[1] * result + 128 + *(unsigned __int8 *)(a8 + *v115) * (_WORD)v118);
                  *(v116 - 3) = *(_BYTE *)(a7 + (unsigned __int8)((unsigned __int16)(v119 + (v119 >> 8)) >> 8));
                  v120 = (unsigned __int16)(a5[2] * result + 128 + *(unsigned __int8 *)(a8 + v115[1]) * (_WORD)v118);
                  *(v116 - 2) = *(_BYTE *)(a7 + (unsigned __int8)((unsigned __int16)(v120 + (v120 >> 8)) >> 8));
                  LOWORD(v120) = *(unsigned __int8 *)(a8 + v115[2]);
                  result = a5[3] * result + 128;
                  *(v116 - 1) = *(_BYTE *)(a7
                                         + (unsigned __int8)((unsigned __int16)(result
                                                                              + v120 * v118
                                                                              + ((unsigned __int16)(result + v120 * v118) >> 8)) >> 8));
                }
                else
                {
                  *(v116 - 3) = a4[1];
                  *(v116 - 2) = a4[2];
                  *(v116 - 1) = a4[3];
                }
              }
              v116 += 3;
              if ( v116 == v117 )
                break;
              v115 += 4;
            }
            LOBYTE(v17) = *(_BYTE *)(v114 + 8);
            a1 = (int *)v114;
            v16 = v139;
            v18 = v17 & 4;
          }
LABEL_6:
          if ( v18 )
          {
            v19 = *((_BYTE *)a1 + 10) - 1;
            v20 = *((_BYTE *)a1 + 9) * v19;
            *((_BYTE *)a1 + 8) = v17 & 0xFB;
            if ( v20 <= 7u )
              v16 *= v20;
            *((_BYTE *)a1 + 11) = v20;
            if ( v20 <= 7u )
              v21 = (unsigned int)(v16 + 7) >> 3;
            else
              v21 = v16 * (v20 >> 3);
            *((_BYTE *)a1 + 10) = v19;
            a1[1] = v21;
          }
          break;
        default:
          goto LABEL_6;
      }
    }
  }
  return result;
}


// ===== 68cb7c png_set_rgb_to_gray_fixed =====
int __fastcall png_set_rgb_to_gray_fixed(int result, int a2, int a3, int a4)
{
  _WORD *v4; // r4
  unsigned int v5; // r2
  unsigned int v6; // r3

  v4 = (_WORD *)result;
  if ( result )
  {
    switch ( a2 )
    {
      case 2:
        *(_DWORD *)(result + 304) |= 0x400000u;
        break;
      case 3:
        *(_DWORD *)(result + 304) |= 0x200000u;
        if ( *(_BYTE *)(result + 486) == 3 )
          *(_DWORD *)(result + 304) |= 0x1000u;
        if ( (a4 | a3) >= 0 )
          goto LABEL_9;
        goto LABEL_16;
      case 1:
        *(_DWORD *)(result + 304) |= 0x600000u;
        break;
    }
    if ( *(_BYTE *)(result + 486) == 3 )
      *(_DWORD *)(result + 304) |= 0x1000u;
    if ( (a4 | a3) >= 0 )
    {
LABEL_9:
      if ( a4 + a3 > 99999 )
      {
        png_warning(result, "ignoring out of range rgb_to_gray coefficients");
        result = 2366;
        LOWORD(v6) = 23434;
        LOWORD(v5) = 6968;
      }
      else
      {
        v5 = (unsigned int)((175921861 * (unsigned __int64)((a3 << 10) & 0x7FFFFFF)) >> 32) >> 7;
        v6 = (unsigned int)((175921861 * (unsigned __int64)((a4 << 10) & 0x7FFFFFF)) >> 32) >> 7;
        result = (unsigned __int16)(0x8000 - v5 - v6);
      }
      goto LABEL_11;
    }
LABEL_16:
    result = 2366;
    LOWORD(v6) = 23434;
    LOWORD(v5) = 6968;
LABEL_11:
    v4[375] = result;
    v4[373] = v5;
    v4[374] = v6;
  }
  return result;
}


// ===== 68cca0 png_set_rgb_to_gray =====
int __fastcall png_set_rgb_to_gray(int a1, int a2, double a3, double a4)
{
  bool v4; // zf
  int result; // r0
  float v7; // r0
  int v8; // r6
  float v9; // r0

  v4 = a1 == 0;
  result = LODWORD(a3);
  if ( !v4 )
  {
    v7 = a3;
    v8 = (int)(v7 * 100000.0 + 0.5);
    v9 = a4;
    return png_set_rgb_to_gray_fixed(a1, a2, v8, (int)(v9 * 100000.0 + 0.5));
  }
  return result;
}


// ===== 68cd3c png_set_background =====
float __fastcall png_set_background(float result, const void *a2, int a3, int a4, double a5)
{
  float v5; // r4
  char v6; // r5

  v5 = result;
  v6 = a3;
  if ( result != 0.0 )
  {
    if ( a3 )
    {
      *(_DWORD *)(LODWORD(result) + 304) |= 0x80u;
      memcpy((void *)(LODWORD(result) + 504), a2, 0xAu);
      result = a5;
      if ( a4 )
        a4 = 256;
      *(_DWORD *)(LODWORD(v5) + 304) |= a4;
      *(float *)(LODWORD(v5) + 500) = result;
      *(_BYTE *)(LODWORD(v5) + 496) = v6;
    }
    else
    {
      return COERCE_FLOAT(png_warning(SLODWORD(result), "Application must supply a known background gamma"));
    }
  }
  return result;
}


// ===== 68cdb4 png_set_crc_action =====
int __fastcall png_set_crc_action(int result, int a2, int a3)
{
  int v3; // r4
  int v4; // [sp+4h] [bp-4h]

  v3 = result;
  if ( result )
  {
    switch ( a2 )
    {
      case 2:
        v4 = a3;
        result = png_warning(result, "Can't discard critical data on CRC error.");
        a3 = v4;
        goto LABEL_4;
      case 3:
        *(_DWORD *)(result + 300) = *(_DWORD *)(result + 300) & 0xFFFFF3FF | 0x400;
        break;
      case 4:
        *(_DWORD *)(result + 300) |= 0xC00u;
        break;
      case 5:
        break;
      default:
LABEL_4:
        *(_DWORD *)(v3 + 300) &= 0xFFFFF3FF;
        break;
    }
    switch ( a3 )
    {
      case 1:
        *(_DWORD *)(v3 + 300) = *(_DWORD *)(v3 + 300) & 0xFFFFFCFF | 0x200;
        break;
      case 3:
        *(_DWORD *)(v3 + 300) = *(_DWORD *)(v3 + 300) & 0xFFFFFCFF | 0x100;
        break;
      case 4:
        *(_DWORD *)(v3 + 300) |= 0x300u;
        break;
      case 5:
        return result;
      default:
        *(_DWORD *)(v3 + 300) &= 0xFFFFFCFF;
        break;
    }
  }
  return result;
}


// ===== 68cea0 png_do_read_transformations =====
int *__fastcall png_do_read_transformations(int *result)
{
  int v1; // r4
  int v2; // r3
  int v3; // r3
  int v4; // r2
  int (__fastcall *v5)(int, int, int); // r3
  char v6; // r3
  char v7; // r2
  unsigned __int8 v8; // r3
  int v9; // r2
  bool v10; // cc
  unsigned int v11; // r3
  int v12; // r2
  char s[52]; // [sp+28h] [bp-3Ch] BYREF

  v1 = (int)result;
  if ( !result[107] )
  {
    snprintf(s, 0x32u, "NULL row buffer for row %ld, pass %d", result[105], *((unsigned __int8 *)result + 484));
    result = (int *)png_error((struct __jmp_buf_tag *)v1, s);
  }
  if ( (*(_DWORD *)(v1 + 300) & 0x40) == 0 )
    result = (int *)png_error((struct __jmp_buf_tag *)v1, "Uninitialized row");
  v2 = *(_DWORD *)(v1 + 304);
  if ( (v2 & 0x1000) != 0 )
  {
    if ( *(_BYTE *)(v1 + 456) == 3 )
    {
      result = png_do_expand_palette(
                 (int *)(v1 + 448),
                 *(_DWORD *)(v1 + 428) + 1,
                 *(_DWORD *)(v1 + 468),
                 *(_DWORD *)(v1 + 584),
                 *(unsigned __int16 *)(v1 + 474));
    }
    else if ( *(_WORD *)(v1 + 474) && (v2 & 0x2000000) != 0 )
    {
      result = png_do_expand((int *)(v1 + 448), *(_DWORD *)(v1 + 428) + 1, v1 + 588);
    }
    else
    {
      result = png_do_expand((int *)(v1 + 448), *(_DWORD *)(v1 + 428) + 1, 0);
    }
  }
  if ( (*(_DWORD *)(v1 + 300) & 0x400000) != 0 )
    result = (int *)png_do_strip_filler(v1 + 448, *(_DWORD *)(v1 + 428) + 1, *(_DWORD *)(v1 + 300) & 0x400000 | 0x80);
  v3 = *(_DWORD *)(v1 + 304);
  if ( (v3 & 0x600000) == 0 )
    goto LABEL_13;
  result = (int *)png_do_rgb_to_gray(v1, (int *)(v1 + 448), (unsigned __int8 *)(*(_DWORD *)(v1 + 428) + 1));
  if ( result )
  {
    v3 = *(_DWORD *)(v1 + 304);
    *(_BYTE *)(v1 + 744) = 1;
    v12 = v3 & 0x600000;
    if ( (v3 & 0x600000) == 0x400000 )
    {
      result = (int *)png_warning(v1, "png_do_rgb_to_gray found nongray pixel");
      v3 = *(_DWORD *)(v1 + 304);
      v12 = v3 & 0x600000;
    }
    if ( v12 != 0x200000 )
      goto LABEL_13;
    result = (int *)png_error((struct __jmp_buf_tag *)v1, "png_do_rgb_to_gray found nongray pixel");
  }
  v3 = *(_DWORD *)(v1 + 304);
LABEL_13:
  if ( (v3 & 0x4000) != 0 && (*(_DWORD *)(v1 + 296) & 0x800) == 0 )
  {
    result = png_do_gray_to_rgb((int *)(v1 + 448), *(_DWORD *)(v1 + 428) + 1);
    v3 = *(_DWORD *)(v1 + 304);
  }
  if ( (v3 & 0x80) != 0 && (*(_WORD *)(v1 + 474) || (*(_BYTE *)(v1 + 486) & 4) != 0) )
  {
    result = (int *)png_do_background(
                      (int *)(v1 + 448),
                      (char *)(*(_DWORD *)(v1 + 428) + 1),
                      (unsigned __int16 *)(v1 + 588),
                      (_WORD *)(v1 + 504),
                      (unsigned __int16 *)(v1 + 514),
                      *(_DWORD *)(v1 + 548),
                      *(_DWORD *)(v1 + 552),
                      *(_DWORD *)(v1 + 556),
                      *(_DWORD *)(v1 + 560),
                      *(_DWORD *)(v1 + 564),
                      *(_DWORD *)(v1 + 568),
                      *(_DWORD *)(v1 + 536));
    v3 = *(_DWORD *)(v1 + 304);
  }
  if ( (v3 & 0x2000) == 0 )
    goto LABEL_23;
  if ( (v3 & 0x80) == 0 )
  {
    v4 = *(unsigned __int8 *)(v1 + 486);
    goto LABEL_53;
  }
  if ( *(_WORD *)(v1 + 474) || (v4 = *(unsigned __int8 *)(v1 + 486), (v4 & 4) != 0) )
  {
LABEL_23:
    if ( (v3 & 0x400) != 0 )
      goto LABEL_55;
LABEL_24:
    if ( (v3 & 0x40) != 0 )
      goto LABEL_56;
LABEL_25:
    if ( (v3 & 0x20) != 0 )
      goto LABEL_59;
LABEL_26:
    if ( (v3 & 8) != 0 )
      goto LABEL_60;
LABEL_27:
    if ( (v3 & 4) != 0 )
      goto LABEL_61;
LABEL_28:
    if ( (v3 & 1) != 0 )
      goto LABEL_62;
    goto LABEL_29;
  }
LABEL_53:
  if ( v4 == 3 )
    goto LABEL_23;
  result = (int *)png_do_gamma(
                    v1 + 448,
                    (unsigned __int8 *)(*(_DWORD *)(v1 + 428) + 1),
                    *(_DWORD *)(v1 + 548),
                    *(_DWORD *)(v1 + 560),
                    *(_DWORD *)(v1 + 536));
  v3 = *(_DWORD *)(v1 + 304);
  if ( (v3 & 0x400) == 0 )
    goto LABEL_24;
LABEL_55:
  result = png_do_chop((int *)(v1 + 448), *(_DWORD *)(v1 + 428) + 1);
  v3 = *(_DWORD *)(v1 + 304);
  if ( (v3 & 0x40) == 0 )
    goto LABEL_25;
LABEL_56:
  result = (int *)png_do_dither(
                    v1 + 448,
                    (unsigned __int8 *)(*(_DWORD *)(v1 + 428) + 1),
                    *(_DWORD *)(v1 + 684),
                    *(_DWORD *)(v1 + 688));
  if ( !*(_DWORD *)(v1 + 452) )
    result = (int *)png_error((struct __jmp_buf_tag *)v1, "png_do_dither returned rowbytes=0");
  v3 = *(_DWORD *)(v1 + 304);
  if ( (v3 & 0x20) == 0 )
    goto LABEL_26;
LABEL_59:
  result = (int *)png_do_invert(v1 + 448, *(_DWORD *)(v1 + 428) + 1);
  v3 = *(_DWORD *)(v1 + 304);
  if ( (v3 & 8) == 0 )
    goto LABEL_27;
LABEL_60:
  result = (int *)png_do_unshift(
                    v1 + 448,
                    (unsigned __int8 *)(*(_DWORD *)(v1 + 428) + 1),
                    (unsigned __int8 *)(v1 + 577));
  v3 = *(_DWORD *)(v1 + 304);
  if ( (v3 & 4) == 0 )
    goto LABEL_28;
LABEL_61:
  result = png_do_unpack((int *)(v1 + 448), *(_DWORD *)(v1 + 428) + 1);
  v3 = *(_DWORD *)(v1 + 304);
  if ( (v3 & 1) != 0 )
  {
LABEL_62:
    result = (int *)png_do_bgr(v1 + 448, *(_DWORD *)(v1 + 428) + 1);
    v3 = *(_DWORD *)(v1 + 304);
    if ( (v3 & 0x10000) != 0 )
      goto LABEL_63;
    goto LABEL_30;
  }
LABEL_29:
  if ( (v3 & 0x10000) != 0 )
  {
LABEL_63:
    result = (int *)png_do_packswap(v1 + 448, *(_DWORD *)(v1 + 428) + 1);
    v3 = *(_DWORD *)(v1 + 304);
  }
LABEL_30:
  if ( (v3 & 0x4000) != 0 && (*(_DWORD *)(v1 + 296) & 0x800) != 0 )
  {
    result = png_do_gray_to_rgb((int *)(v1 + 448), *(_DWORD *)(v1 + 428) + 1);
    v3 = *(_DWORD *)(v1 + 304);
  }
  if ( (v3 & 0x8000) != 0 )
  {
    result = (int *)png_do_read_filler(v1 + 448, *(_DWORD *)(v1 + 428) + 1, *(_WORD *)(v1 + 494), *(_DWORD *)(v1 + 300));
    v3 = *(_DWORD *)(v1 + 304);
    if ( (v3 & 0x80000) == 0 )
    {
LABEL_35:
      if ( (v3 & 0x20000) == 0 )
        goto LABEL_36;
LABEL_67:
      result = (int *)png_do_read_swap_alpha(v1 + 448, *(_DWORD *)(v1 + 428) + 1);
      v3 = *(_DWORD *)(v1 + 304);
      if ( (v3 & 0x10) == 0 )
        goto LABEL_37;
      goto LABEL_68;
    }
  }
  else if ( (v3 & 0x80000) == 0 )
  {
    goto LABEL_35;
  }
  result = (int *)png_do_read_invert_alpha(v1 + 448, *(_DWORD *)(v1 + 428) + 1);
  v3 = *(_DWORD *)(v1 + 304);
  if ( (v3 & 0x20000) != 0 )
    goto LABEL_67;
LABEL_36:
  if ( (v3 & 0x10) == 0 )
    goto LABEL_37;
LABEL_68:
  result = (int *)png_do_swap(v1 + 448, *(_DWORD *)(v1 + 428) + 1);
  v3 = *(_DWORD *)(v1 + 304);
LABEL_37:
  if ( (v3 & 0x100000) != 0 )
  {
    v5 = *(int (__fastcall **)(int, int, int))(v1 + 280);
    if ( v5 )
      result = (int *)v5(v1, v1 + 448, *(_DWORD *)(v1 + 428) + 1);
    if ( *(_BYTE *)(v1 + 292) )
      *(_BYTE *)(v1 + 457) = *(_BYTE *)(v1 + 292);
    v6 = *(_BYTE *)(v1 + 293);
    v7 = *(_BYTE *)(v1 + 457);
    if ( v6 )
      *(_BYTE *)(v1 + 458) = v6;
    else
      v6 = *(_BYTE *)(v1 + 458);
    v8 = v7 * v6;
    v9 = *(_DWORD *)(v1 + 448);
    v10 = v8 > 7u;
    *(_BYTE *)(v1 + 459) = v8;
    if ( v8 > 7u )
      v11 = v9 * (v8 >> 3);
    else
      v11 = v9 * v8;
    if ( !v10 )
      v11 = (v11 + 7) >> 3;
    *(_DWORD *)(v1 + 452) = v11;
  }
  return result;
}


// ===== 68d404 png_set_dither =====
void __fastcall png_set_dither(struct __jmp_buf_tag *a1, unsigned __int8 *a2, size_t a3, int a4, signed int a5, int a6)
{
  int v6; // r4
  signed int v8; // r5
  int v9; // r8
  void *v10; // r0
  signed int v11; // r3
  signed int v12; // r2
  signed int v13; // r3
  int v14; // r12
  int v15; // r0
  int v16; // lr
  int v17; // r6
  int v18; // r1
  void *v19; // r0
  signed int v20; // r3
  void *v21; // r0
  unsigned __int8 *v22; // r5
  signed int jj; // r9
  int v24; // r2
  int mm; // r3
  int v26; // r0
  int kk; // r11
  int v28; // r10
  int v29; // r8
  int v30; // r8
  int v31; // r1
  int v32; // r12
  int v33; // r6
  int v34; // r1
  bool v35; // cc
  signed int v36; // r1
  int v37; // r2
  int j; // r3
  int v39; // r12
  unsigned __int8 *v40; // r5
  unsigned __int8 v41; // r9
  unsigned __int8 v42; // r10
  unsigned __int8 *v43; // r6
  signed int k; // r3
  int v45; // r2
  int v46; // r1
  int v47; // r1
  int v48; // r5
  int v49; // r6
  int v50; // lr
  signed int v51; // r12
  int v52; // r1
  unsigned __int8 *v53; // r2
  char v54; // r0
  signed int v55; // r9
  signed int v56; // r0
  int v57; // r3
  int i; // r1
  int v59; // r2
  unsigned __int8 *v60; // r5
  char *v61; // r0
  int v62; // r3
  _DWORD *v63; // r10
  _BYTE *v64; // r5
  int v65; // r6
  unsigned __int8 *v66; // r9
  int v67; // r3
  _BYTE *v68; // r0
  struct __jmp_buf_tag *v69; // r5
  int v70; // r2
  char v71; // r4
  int v72; // r12
  unsigned __int8 *v73; // r7
  int v74; // r8
  signed int v75; // r11
  int v76; // r1
  int ii; // r9
  void **v78; // r1
  int v79; // lr
  int **v80; // r0
  int v81; // r2
  int v82; // r3
  int v83; // r12
  unsigned __int8 *v84; // r1
  unsigned __int8 *v85; // r2
  int v86; // r2
  signed int n; // r1
  int v88; // r12
  int v89; // [sp+0h] [bp-3Ch]
  int v90; // [sp+10h] [bp-2Ch]
  int v91; // [sp+14h] [bp-28h]
  int v92; // [sp+18h] [bp-24h]
  unsigned __int8 v93; // [sp+18h] [bp-24h]
  _BYTE *v94; // [sp+18h] [bp-24h]
  int m; // [sp+18h] [bp-24h]
  int v96; // [sp+1Ch] [bp-20h]
  int v97; // [sp+1Ch] [bp-20h]
  signed int v98; // [sp+24h] [bp-18h]
  int v100; // [sp+2Ch] [bp-10h]
  int v101; // [sp+30h] [bp-Ch]
  int v102; // [sp+34h] [bp-8h]

  v6 = (int)a1;
  v98 = a3;
  v8 = a5;
  v9 = a6;
  if ( a1 )
  {
    a1[1].__saved_mask.__val[30] |= 0x40u;
    if ( !a6 )
    {
      v19 = png_malloc(a1, a3);
      v20 = 0;
      *(_DWORD *)(v6 + 688) = v19;
      while ( v20 < v98 )
      {
        *(_BYTE *)(*(_DWORD *)(v6 + 688) + v20) = v20;
        ++v20;
      }
    }
    if ( v98 > a4 )
    {
      if ( a5 )
      {
        v10 = png_malloc((struct __jmp_buf_tag *)v6, v98);
        v11 = 0;
        *(_DWORD *)(v6 + 788) = v10;
        while ( 1 )
        {
          v12 = v98;
          if ( v11 >= v98 )
            break;
          *(_BYTE *)(*(_DWORD *)(v6 + 788) + v11) = v11;
          ++v11;
        }
        do
        {
          if ( --v12 < a4 )
            break;
          v13 = 0;
          v14 = 1;
          while ( 1 )
          {
            v18 = v13 + 1;
            if ( v12 <= v13 )
              break;
            v15 = *(_DWORD *)(v6 + 788);
            v16 = *(unsigned __int8 *)(v15 + v13);
            v17 = *(unsigned __int8 *)(v15 + v18);
            if ( *(unsigned __int16 *)(a5 + 2 * v16) < (unsigned int)*(unsigned __int16 *)(a5 + 2 * v17) )
            {
              *(_BYTE *)(v15 + v13) = v17;
              v14 = 0;
              *(_BYTE *)(*(_DWORD *)(v6 + 788) + v18) = v16;
            }
            ++v13;
          }
        }
        while ( !v14 );
        if ( a6 )
        {
          v56 = v98;
          v57 = 0;
          for ( i = 0; i < a4; ++i )
          {
            v59 = *(_DWORD *)(v6 + 788);
            if ( a4 <= *(unsigned __int8 *)(v59 + i) )
            {
              do
                --v56;
              while ( a4 <= *(unsigned __int8 *)(v59 + v56) );
              v60 = &a2[3 * v56];
              a2[v57] = *v60;
              a2[v57 + 1] = v60[1];
              a2[v57 + 2] = v60[2];
            }
            v57 += 3;
          }
        }
        else
        {
          v36 = v98;
          v37 = 0;
          for ( j = 0; j < a4; ++j )
          {
            v39 = *(_DWORD *)(v6 + 788);
            if ( a4 <= *(unsigned __int8 *)(v39 + j) )
            {
              do
                --v36;
              while ( a4 <= *(unsigned __int8 *)(v39 + v36) );
              v40 = &a2[3 * v36];
              v41 = v40[1];
              v93 = *v40;
              v42 = v40[2];
              *v40 = a2[v37];
              v43 = &a2[v37];
              v40[1] = a2[v37 + 1];
              v40[2] = a2[v37 + 2];
              v43[1] = v41;
              v43[2] = v42;
              a2[v37] = v93;
              *(_BYTE *)(*(_DWORD *)(v6 + 688) + v36) = j;
              *(_BYTE *)(*(_DWORD *)(v6 + 688) + j) = v36;
            }
            v37 += 3;
          }
          for ( k = 0; k < v98; ++k )
          {
            v45 = *(_DWORD *)(v6 + 688);
            v46 = *(unsigned __int8 *)(v45 + k);
            v94 = (_BYTE *)(v45 + k);
            if ( a4 <= v46 )
            {
              v47 = 3 * v46;
              v48 = a2[v47];
              v49 = a2[v47 + 1];
              v50 = a2[v47 + 2];
              v51 = abs32(v49 - a2[1]) + abs32(v48 - *a2) + abs32(v50 - a2[2]);
              v52 = 1;
              v53 = a2;
              v54 = 0;
              while ( v52 < a4 )
              {
                v55 = abs32(v49 - v53[4]) + abs32(v48 - v53[3]) + abs32(v50 - v53[5]);
                if ( v51 > v55 )
                {
                  v54 = v52;
                  v51 = v55;
                }
                ++v52;
                v53 += 3;
              }
              *v94 = v54;
            }
          }
        }
        png_free(v6, *(void **)(v6 + 788));
        *(_DWORD *)(v6 + 788) = 0;
        v98 = a4;
      }
      else
      {
        *(_DWORD *)(v6 + 792) = png_malloc((struct __jmp_buf_tag *)v6, v98);
        *(_DWORD *)(v6 + 796) = png_malloc((struct __jmp_buf_tag *)v6, v98);
        while ( v8 < v98 )
        {
          *(_BYTE *)(*(_DWORD *)(v6 + 792) + v8) = v8;
          *(_BYTE *)(*(_DWORD *)(v6 + 796) + v8) = v8;
          ++v8;
        }
        v61 = (char *)png_malloc((struct __jmp_buf_tag *)v6, 0xC04u);
        v62 = 0;
        v63 = v61;
        v64 = nullptr;
        do
        {
          *(_DWORD *)&v61[v62] = 0;
          v62 += 4;
        }
        while ( v62 != 3076 );
        v65 = v98;
        for ( m = 96; ; m += 96 )
        {
          v66 = a2 + 3;
          v67 = 0;
          v68 = v64;
          v69 = (struct __jmp_buf_tag *)v6;
          v70 = v9;
          v71 = 0;
          v72 = a4;
          while ( v67 < v65 - 1 )
          {
            if ( v65 > ++v67 )
            {
              v73 = v66;
              v74 = v67;
              v89 = v67;
              do
              {
                v75 = abs32(*(v66 - 2) - v73[1]) + abs32(*(v66 - 3) - *v73) + abs32(*(v66 - 1) - v73[2]);
                if ( m >= v75 )
                {
                  v90 = v70;
                  v91 = v72;
                  v68 = png_malloc_warn(v69, 8u);
                  v70 = v90;
                  v72 = v91;
                  if ( !v68 )
                    goto LABEL_95;
                  v76 = v63[v75];
                  v68[5] = v74;
                  v68[4] = v71;
                  *(_DWORD *)v68 = v76;
                  v63[v75] = v68;
                }
                ++v74;
                v73 += 3;
              }
              while ( v74 != v65 );
              v67 = v89;
            }
            ++v71;
            v66 += 3;
            if ( !v68 )
            {
LABEL_95:
              v6 = (int)v69;
              a4 = v72;
              v64 = v68;
              v9 = v70;
              goto LABEL_96;
            }
          }
          v6 = (int)v69;
          a4 = v72;
          v64 = v68;
          v9 = v70;
          if ( v68 )
          {
            v79 = 0;
            while ( 1 )
            {
              v80 = (int **)v63[v79];
              if ( v80 )
                break;
LABEL_125:
              if ( m < ++v79 )
                goto LABEL_96;
            }
            while ( 1 )
            {
              v81 = *(_DWORD *)(v6 + 792);
              if ( v65 > *(unsigned __int8 *)(v81 + *((unsigned __int8 *)v80 + 4))
                && v65 > *(unsigned __int8 *)(v81 + *((unsigned __int8 *)v80 + 5)) )
              {
                if ( (v65 & 1) != 0 )
                  v97 = *((unsigned __int8 *)v80 + 5);
                else
                  v97 = *((unsigned __int8 *)v80 + 4);
                if ( (v65 & 1) != 0 )
                  v82 = *((unsigned __int8 *)v80 + 4);
                else
                  v82 = *((unsigned __int8 *)v80 + 5);
                --v65;
                v83 = 3 * *(unsigned __int8 *)(v81 + v82);
                v84 = &a2[3 * v65];
                a2[v83] = *v84;
                v85 = &a2[v83];
                v85[1] = v84[1];
                v85[2] = v84[2];
                if ( v9 )
                {
                  v86 = *(_DWORD *)(v6 + 792);
                }
                else
                {
                  v86 = *(_DWORD *)(v6 + 792);
                  for ( n = 0; n < v98; ++n )
                  {
                    v88 = *(_DWORD *)(v6 + 688);
                    if ( *(unsigned __int8 *)(v88 + n) == *(unsigned __int8 *)(v86 + v82) )
                    {
                      *(_BYTE *)(v88 + n) = *(_BYTE *)(v86 + v97);
                      v88 = *(_DWORD *)(v6 + 688);
                      v86 = *(_DWORD *)(v6 + 792);
                    }
                    if ( *(unsigned __int8 *)(v88 + n) == v65 )
                    {
                      *(_BYTE *)(v88 + n) = *(_BYTE *)(v86 + v82);
                      v86 = *(_DWORD *)(v6 + 792);
                    }
                  }
                }
                *(_BYTE *)(v86 + *(unsigned __int8 *)(*(_DWORD *)(v6 + 796) + v65)) = *(_BYTE *)(v86 + v82);
                *(_BYTE *)(*(_DWORD *)(v6 + 796) + *(unsigned __int8 *)(*(_DWORD *)(v6 + 792) + v82)) = *(_BYTE *)(*(_DWORD *)(v6 + 796) + v65);
                *(_BYTE *)(*(_DWORD *)(v6 + 792) + v82) = v65;
                *(_BYTE *)(*(_DWORD *)(v6 + 796) + v65) = v82;
              }
              if ( v65 <= a4 )
                break;
              v80 = (int **)*v80;
              if ( !v80 )
                goto LABEL_125;
            }
          }
LABEL_96:
          for ( ii = 0; ii != 769; ++ii )
          {
            v78 = (void **)v63[ii];
            if ( v78 )
            {
              do
              {
                v64 = *v78;
                png_free(v6, v78);
                v78 = (void **)v64;
              }
              while ( v64 );
            }
            v63[ii] = 0;
          }
          if ( v65 <= a4 )
            break;
        }
        png_free(v6, v63);
        png_free(v6, *(void **)(v6 + 796));
        png_free(v6, *(void **)(v6 + 792));
        *(_DWORD *)(v6 + 792) = 0;
        *(_DWORD *)(v6 + 796) = 0;
        v98 = a4;
      }
    }
    if ( !*(_DWORD *)(v6 + 468) )
      *(_DWORD *)(v6 + 468) = a2;
    *(_WORD *)(v6 + 472) = v98;
    if ( v9 )
    {
      v21 = png_malloc((struct __jmp_buf_tag *)v6, 0x8000u);
      *(_DWORD *)(v6 + 684) = v21;
      LC_API_MEMSET_0(v21, 0, 0x8000u);
      v22 = (unsigned __int8 *)png_malloc((struct __jmp_buf_tag *)v6, 0x8000u);
      LC_API_MEMSET_0(v22, 255, 0x8000u);
      v101 = 0;
      for ( jj = 0; v98 > jj; ++jj )
      {
        v100 = 0;
        v24 = a2[v101] >> 3;
        v102 = v24;
        mm = a2[v101 + 1] >> 3;
        v26 = a2[v101 + 2] >> 3;
        v96 = mm;
        do
        {
          if ( v100 > v102 )
            v24 = v100 - v102;
          else
            mm = v102 - v100;
          if ( v100 <= v102 )
            v92 = mm;
          else
            v92 = v24;
          for ( kk = 0; kk != 32; ++kk )
          {
            v28 = v92;
            if ( kk > v96 )
              v29 = kk - v96;
            else
              v29 = v96 - kk;
            if ( v92 < v29 )
              v28 = v29;
            v30 = v29 + v92;
            for ( mm = 0; mm != 32; ++mm )
            {
              v24 = mm | (v100 << 10) | (32 * kk);
              if ( mm <= v26 )
                v31 = v26 - mm;
              else
                v31 = mm - v26;
              v32 = v22[v24];
              v33 = v31 + v30;
              if ( v31 < v28 )
                v34 = v33 + v28;
              else
                v34 = v33 + v31;
              v35 = v34 < v32;
              if ( v34 < v32 )
              {
                v22[v24] = v34;
                v34 = *(_DWORD *)(v6 + 684);
              }
              if ( v35 )
                *(_BYTE *)(v34 + v24) = jj;
            }
          }
          ++v100;
        }
        while ( v100 != 32 );
        v101 += 3;
      }
      png_free(v6, v22);
    }
  }
}


// ===== 68dc98 png_get_uint_32 =====
int __fastcall png_get_uint_32(unsigned __int8 *a1)
{
  return a1[3] + (*a1 << 24) + (a1[1] << 16) + (a1[2] << 8);
}


// ===== 68dcb8 png_get_int_32 =====
int __fastcall png_get_int_32(unsigned __int8 *a1)
{
  return a1[3] + (*a1 << 24) + (a1[1] << 16) + (a1[2] << 8);
}


// ===== 68dcd8 png_get_uint_16 =====
int __fastcall png_get_uint_16(unsigned __int8 *a1)
{
  return (unsigned __int16)(a1[1] + (*a1 << 8));
}


// ===== 68dcec png_get_uint_31 =====
int __fastcall png_get_uint_31(struct __jmp_buf_tag *a1, unsigned __int8 *a2)
{
  int v2; // r4

  v2 = a2[3] + (*a2 << 24) + (a2[1] << 16) + (a2[2] << 8);
  if ( v2 < 0 )
    png_error(a1, "PNG unsigned integer out of range.");
  return v2;
}


// ===== 68dd30 png_read_start_row =====
void *__fastcall png_read_start_row(int a1)
{
  int v2; // r5
  int v3; // r6
  unsigned int v4; // r0
  int v5; // r3
  unsigned int v6; // r0
  int v7; // r2
  int v8; // r2
  int v9; // r2
  int v10; // r1
  unsigned int v11; // r6
  unsigned int v12; // r5
  int v13; // r5
  size_t v14; // r5
  int v15; // r3
  size_t v16; // r3
  void *v17; // r1
  void *v18; // r0
  int v19; // r3
  void *result; // r0
  int v21; // r2
  char *v22; // r0

  *(_DWORD *)(a1 + 312) = 0;
  png_init_read_transformations(a1);
  if ( *(_BYTE *)(a1 + 483) )
  {
    v2 = *(_DWORD *)(a1 + 304);
    if ( (v2 & 2) != 0 )
      *(_DWORD *)(a1 + 400) = *(_DWORD *)(a1 + 396);
    else
      *(_DWORD *)(a1 + 400) = (*(_DWORD *)(a1 + 396) + 7) / 8u;
    v3 = *(_DWORD *)(a1 + 392);
    v4 = (v3 - 1 + png_pass_inc[*(unsigned __int8 *)(a1 + 484)] - png_pass_start[*(unsigned __int8 *)(a1 + 484)])
       / (unsigned int)png_pass_inc[*(unsigned __int8 *)(a1 + 484)];
    v5 = *(unsigned __int8 *)(a1 + 489);
    *(_DWORD *)(a1 + 416) = v4;
    if ( (unsigned int)v5 > 7 )
      v6 = ((unsigned int)v5 >> 3) * v4;
    else
      v6 = v5 * v4;
    if ( (unsigned int)v5 <= 7 )
      v6 = (v6 + 7) >> 3;
    *(_DWORD *)(a1 + 412) = v6 + 1;
  }
  else
  {
    v3 = *(_DWORD *)(a1 + 392);
    v2 = *(_DWORD *)(a1 + 304);
    v5 = *(unsigned __int8 *)(a1 + 489);
    v7 = *(_DWORD *)(a1 + 408) + 1;
    *(_DWORD *)(a1 + 400) = *(_DWORD *)(a1 + 396);
    *(_DWORD *)(a1 + 412) = v7;
    *(_DWORD *)(a1 + 416) = v3;
  }
  if ( (v2 & 4) != 0 && *(unsigned __int8 *)(a1 + 487) <= 7u )
    v5 = 8;
  if ( (v2 & 0x1000) != 0 )
  {
    v8 = *(unsigned __int8 *)(a1 + 486);
    if ( v8 == 3 )
    {
      if ( *(_WORD *)(a1 + 474) )
        v5 = 32;
      else
        v5 = 24;
    }
    else if ( *(_BYTE *)(a1 + 486) )
    {
      if ( v8 == 2 && *(_WORD *)(a1 + 474) )
        v5 = 4 * v5 / 3;
    }
    else
    {
      if ( v5 < 8 )
        v5 = 8;
      if ( *(_WORD *)(a1 + 474) )
        v5 *= 2;
    }
  }
  if ( (v2 & 0x8000) != 0 )
  {
    v9 = *(unsigned __int8 *)(a1 + 486);
    if ( v9 != 3 )
    {
      if ( *(_BYTE *)(a1 + 486) )
      {
        if ( v9 != 2 )
          goto LABEL_27;
        if ( v5 > 32 )
        {
          v5 = 64;
          goto LABEL_27;
        }
      }
      else if ( v5 <= 8 )
      {
        v5 = 16;
        goto LABEL_27;
      }
    }
    v5 = 32;
  }
LABEL_27:
  if ( (v2 & 0x4000) == 0 )
    goto LABEL_32;
  if ( *(_WORD *)(a1 + 474) && (v2 & 0x1000) != 0
    || (v2 & 0x8000) != 0
    || (v21 = *(unsigned __int8 *)(a1 + 486), v21 == 4) )
  {
    if ( v5 <= 16 )
    {
      v5 = 32;
      goto LABEL_32;
    }
LABEL_56:
    v5 = 64;
    goto LABEL_32;
  }
  if ( v5 > 8 )
  {
    if ( v21 != 6 )
    {
      v5 = 48;
      goto LABEL_32;
    }
    goto LABEL_56;
  }
  if ( v21 == 6 )
    v5 = 32;
  else
    v5 = 24;
LABEL_32:
  if ( (v2 & 0x100000) != 0 )
  {
    v10 = *(unsigned __int8 *)(a1 + 292);
    if ( v5 < v10 * *(unsigned __int8 *)(a1 + 293) )
      v5 = v10 * *(unsigned __int8 *)(a1 + 293);
  }
  v11 = (v3 + 7) & 0xFFFFFFF8;
  if ( v5 <= 7 )
    v12 = v11 * v5;
  else
    v12 = (unsigned int)v5 >> 3;
  if ( v5 <= 7 )
    v13 = v12 >> 3;
  else
    v13 = v11 * v12;
  v14 = v13 + 1 + ((v5 + 7) >> 3) + 64;
  if ( v14 > *(_DWORD *)(a1 + 832) )
  {
    png_free(a1, *(void **)(a1 + 784));
    v22 = (char *)png_malloc((struct __jmp_buf_tag *)a1, v14);
    *(_DWORD *)(a1 + 428) = v22 + 32;
    v15 = *(_DWORD *)(a1 + 408);
    *(_DWORD *)(a1 + 832) = v14;
    *(_DWORD *)(a1 + 784) = v22;
    if ( v15 != -1 )
      goto LABEL_43;
  }
  else
  {
    v15 = *(_DWORD *)(a1 + 408);
    if ( v15 != -1 )
      goto LABEL_43;
  }
  png_error((struct __jmp_buf_tag *)a1, "Row has too many bytes to allocate in memory.");
  v15 = *(_DWORD *)(a1 + 408);
LABEL_43:
  v16 = v15 + 1;
  if ( v16 > *(_DWORD *)(a1 + 836) )
  {
    png_free(a1, *(void **)(a1 + 424));
    v18 = png_malloc((struct __jmp_buf_tag *)a1, *(_DWORD *)(a1 + 408) + 1);
    v19 = *(_DWORD *)(a1 + 408);
    v17 = v18;
    *(_DWORD *)(a1 + 424) = v18;
    v16 = v19 + 1;
    *(_DWORD *)(a1 + 836) = v16;
  }
  else
  {
    v17 = *(void **)(a1 + 424);
  }
  result = png_memset_check(a1, v17, 0, v16);
  *(_DWORD *)(a1 + 300) |= 0x40u;
  return result;
}


// ===== 68e080 png_crc_error =====
bool __fastcall png_crc_error(int a1)
{
  unsigned __int8 v3[8]; // [sp+4h] [bp-8h] BYREF

  if ( (*(_BYTE *)(a1 + 476) & 0x20) == 0 )
  {
    if ( (*(_DWORD *)(a1 + 300) & 0x800) == 0 )
      goto LABEL_3;
LABEL_6:
    png_read_data((struct __jmp_buf_tag *)a1);
    return 0;
  }
  if ( (*(_DWORD *)(a1 + 300) & 0x300) == 0x300 )
    goto LABEL_6;
LABEL_3:
  png_read_data((struct __jmp_buf_tag *)a1);
  return png_get_uint_32(v3) != *(_DWORD *)(a1 + 464);
}


// ===== 68e0fc png_read_filter_row =====
int __fastcall png_read_filter_row(int result, int a2, _BYTE *a3, int a4, int a5)
{
  int v5; // r11
  int v6; // r9
  _BYTE *v7; // r10
  int v8; // r11
  int m; // r1
  int n; // r1
  int v11; // r8
  int v12; // r5
  signed int v13; // r6
  signed int v14; // r7
  signed int v15; // r12
  bool v16; // cc
  unsigned int v17; // r5
  unsigned int v18; // r4
  int v19; // r3
  int v20; // r4
  int i; // r1
  int v22; // r0
  int v23; // r6
  int j; // r1
  int k; // r1

  switch ( a5 )
  {
    case 0:
      return result;
    case 1:
      v17 = *(_DWORD *)(a2 + 4);
      v18 = (*(unsigned __int8 *)(a2 + 11) + 7) >> 3;
      if ( v17 > v18 )
      {
        v19 = 0;
        do
        {
          a3[v18 + v19] += a3[v19];
          ++v19;
          result = v18 + v19;
        }
        while ( v17 > v18 + v19 );
      }
      break;
    case 2:
      v20 = *(_DWORD *)(a2 + 4);
      if ( v20 )
      {
        for ( i = 0; i != v20; ++i )
        {
          result = *(unsigned __int8 *)(a4 + i) + (unsigned __int8)a3[i];
          a3[i] = result;
        }
      }
      break;
    case 3:
      v22 = (*(unsigned __int8 *)(a2 + 11) + 7) >> 3;
      v23 = *(_DWORD *)(a2 + 4) - v22;
      if ( v22 )
      {
        for ( j = 0; j != v22; ++j )
          a3[j] += *(_BYTE *)(a4 + j) >> 1;
        a4 += v22;
        result = (int)&a3[v22];
      }
      else
      {
        result = (int)a3;
      }
      if ( v23 )
      {
        for ( k = 0; k != v23; ++k )
          *(_BYTE *)(result + k) += ((unsigned __int8)a3[k] + (unsigned int)*(unsigned __int8 *)(a4 + k)) >> 1;
      }
      break;
    case 4:
      v5 = (*(unsigned __int8 *)(a2 + 11) + 7) >> 3;
      v6 = *(_DWORD *)(a2 + 4) - v5;
      if ( v5 )
      {
        for ( m = 0; m != v5; ++m )
        {
          result = *(unsigned __int8 *)(a4 + m) + (unsigned __int8)a3[m];
          a3[m] = result;
        }
        v7 = &a3[v5];
        v8 = a4 + v5;
      }
      else
      {
        v7 = a3;
        v8 = a4;
      }
      if ( v6 )
      {
        for ( n = 0; n != v6; ++n )
        {
          result = *(unsigned __int8 *)(a4 + n);
          v11 = (unsigned __int8)a3[n];
          v12 = *(unsigned __int8 *)(v8 + n);
          v13 = abs32(v11 - result + v12 - result);
          v14 = abs32(v11 - result);
          v15 = abs32(v12 - result);
          v16 = v15 <= v14;
          if ( v15 <= v14 )
            v16 = v15 <= v13;
          if ( !v16 )
          {
            if ( v14 > v13 )
              LOBYTE(v11) = *(_BYTE *)(a4 + n);
            else
              LOBYTE(v11) = *(_BYTE *)(v8 + n);
          }
          v7[n] += v11;
        }
      }
      break;
    default:
      result = png_warning(result, "Ignoring bad adaptive filter type");
      *a3 = 0;
      break;
  }
  return result;
}


// ===== 68e2fc png_do_read_interlace =====
int __fastcall png_do_read_interlace(int a1)
{
  int v1; // r0
  bool v2; // zf
  int v3; // r12
  int result; // r0
  unsigned int v5; // r2
  unsigned int v6; // r1
  int v7; // r4
  unsigned int v8; // r3
  size_t v9; // r7
  char *v10; // r11
  unsigned int v11; // r9
  char *v12; // r6
  int m; // r5
  bool v14; // cc
  int v15; // r10
  int v16; // r8
  int v17; // r7
  int v18; // r5
  _BYTE *v19; // r1
  unsigned int i; // r11
  unsigned __int8 *v21; // r12
  int v22; // r2
  int v23; // r9
  int v24; // r10
  int v25; // r8
  int v26; // r7
  int v27; // r5
  _BYTE *v28; // r1
  unsigned int k; // r11
  unsigned __int8 *v30; // r12
  int v31; // r2
  int v32; // r9
  int v33; // r8
  int v34; // r5
  int v35; // r7
  int v36; // r10
  _BYTE *v37; // r1
  unsigned int j; // r11
  unsigned __int8 *v39; // r12
  int v40; // r2
  int v41; // r9
  char *v43; // [sp+4h] [bp-28h]
  unsigned __int8 *v44; // [sp+4h] [bp-28h]
  unsigned __int8 *v45; // [sp+4h] [bp-28h]
  unsigned __int8 *v46; // [sp+4h] [bp-28h]
  int v47; // [sp+10h] [bp-1Ch]
  int v48; // [sp+14h] [bp-18h]
  _BYTE v49[8]; // [sp+1Ch] [bp-10h] BYREF

  v1 = *(_DWORD *)(a1 + 428);
  v2 = a1 == -448;
  if ( a1 != -448 )
    v2 = v1 == -1;
  v3 = *(_DWORD *)(a1 + 304);
  result = v1 + 1;
  if ( !v2 )
  {
    v5 = *(_DWORD *)(a1 + 448);
    v6 = *(unsigned __int8 *)(a1 + 459);
    v7 = png_pass_inc[*(unsigned __int8 *)(a1 + 484)];
    v8 = v5 * v7;
    v47 = v5 * v7;
    switch ( v6 )
    {
      case 2u:
        v15 = v3 & 0x10000;
        if ( (v3 & 0x10000) != 0 )
        {
          v16 = 2 * (((_BYTE)v5 + 3) & 3);
          v8 = 2 * (((_BYTE)v47 + 3) & 3);
          v17 = -2;
          v18 = 0;
          v15 = 6;
        }
        else
        {
          v16 = 2 * (~((_BYTE)v5 + 3) & 3);
          v8 = 2 * (~((_BYTE)v47 + 3) & 3);
          v17 = 2;
          v18 = 6;
        }
        if ( v5 )
        {
          v19 = (_BYTE *)(result + ((unsigned int)(v47 - 1) >> 2));
          v44 = (unsigned __int8 *)(result + ((v5 - 1) >> 2));
          for ( i = 0; i < v5; ++i )
          {
            v21 = v44;
            if ( v7 > 0 )
            {
              v22 = 0;
              v23 = ((int)*v44 >> v16) & 3;
              do
              {
                v21 = (unsigned __int8 *)(6 - v8);
                ++v22;
                *v19 = *v19 & (16191 >> (6 - v8)) | ((_BYTE)v23 << v8);
                if ( v8 == v18 )
                {
                  v8 = v15;
                  --v19;
                }
                else
                {
                  v8 += v17;
                }
              }
              while ( v22 != v7 );
              v5 = *(_DWORD *)(a1 + 448);
            }
            if ( v16 == v18 )
              v21 = v44;
            if ( v16 == v18 )
            {
              v16 = v15;
              v44 = v21 - 1;
            }
            else
            {
              v16 += v17;
            }
          }
          v6 = *(unsigned __int8 *)(a1 + 459);
        }
        break;
      case 4u:
        if ( (v3 & 0x10000) != 0 )
        {
          v33 = 4 * (((_BYTE)v5 + 1) & 1);
          v8 = 4 * (((_BYTE)v47 + 1) & 1);
          v34 = 0;
          v35 = -4;
          v36 = 4;
        }
        else
        {
          if ( (v5 & 1) != 0 )
            v33 = 4;
          else
            v33 = 0;
          v36 = (v47 + 1) & 1;
          if ( v36 )
          {
            v36 = 0;
            v34 = 4;
            v35 = 4;
            v8 = 0;
          }
          else
          {
            v34 = 4;
            v35 = 4;
            v8 = 4;
          }
        }
        if ( v5 )
        {
          v37 = (_BYTE *)(result + ((unsigned int)(v47 - 1) >> 1));
          v46 = (unsigned __int8 *)(result + ((v5 - 1) >> 1));
          for ( j = 0; j < v5; ++j )
          {
            v39 = v46;
            if ( v7 > 0 )
            {
              v40 = 0;
              v41 = ((int)*v46 >> v33) & 0xF;
              do
              {
                v39 = (unsigned __int8 *)(4 - v8);
                ++v40;
                *v37 = *v37 & (3855 >> (4 - v8)) | ((_BYTE)v41 << v8);
                if ( v8 == v34 )
                {
                  v8 = v36;
                  --v37;
                }
                else
                {
                  v8 += v35;
                }
              }
              while ( v40 != v7 );
              v5 = *(_DWORD *)(a1 + 448);
            }
            if ( v33 == v34 )
              v39 = v46;
            if ( v33 == v34 )
            {
              v33 = v36;
              v46 = v39 - 1;
            }
            else
            {
              v33 += v35;
            }
          }
          v6 = *(unsigned __int8 *)(a1 + 459);
        }
        break;
      case 1u:
        v24 = v3 & 0x10000;
        if ( (v3 & 0x10000) != 0 )
        {
          v25 = ((_BYTE)v5 + 7) & 7;
          v8 = ((_BYTE)v8 + 7) & 7;
          v26 = -1;
          v27 = 0;
          v24 = 7;
        }
        else
        {
          v25 = ~((_BYTE)v5 + 7) & 7;
          v8 = ~((_BYTE)v47 + 7) & 7;
          v26 = 1;
          v27 = 7;
        }
        if ( v5 )
        {
          v28 = (_BYTE *)(result + ((unsigned int)(v47 - 1) >> 3));
          v45 = (unsigned __int8 *)(result + ((v5 - 1) >> 3));
          for ( k = 0; k < v5; ++k )
          {
            v30 = v45;
            if ( v7 > 0 )
            {
              v31 = 0;
              v32 = ((int)*v45 >> v25) & 1;
              do
              {
                v30 = (unsigned __int8 *)(7 - v8);
                ++v31;
                *v28 = *v28 & (32639 >> (7 - v8)) | ((_BYTE)v32 << v8);
                if ( v8 == v27 )
                {
                  v8 = v24;
                  --v28;
                }
                else
                {
                  v8 += v26;
                }
              }
              while ( v31 != v7 );
              v5 = *(_DWORD *)(a1 + 448);
            }
            if ( v25 == v27 )
              v30 = v45;
            if ( v25 == v27 )
            {
              v25 = v24;
              v45 = v30 - 1;
            }
            else
            {
              v25 += v26;
            }
          }
          v6 = *(unsigned __int8 *)(a1 + 459);
        }
        break;
      default:
        if ( v5 )
        {
          v9 = v6 >> 3;
          v10 = (char *)(result + (v5 - 1) * (v6 >> 3));
          v43 = (char *)(result + (v6 >> 3) * (v47 - 1));
          v48 = v7 * -(v6 >> 3);
          v11 = 0;
          while ( 1 )
          {
            memcpy(v49, v10, v9);
            if ( v7 > 0 )
            {
              v12 = v43;
              for ( m = 0; m != v7; ++m )
              {
                memcpy(v12, v49, v9);
                v12 -= v9;
              }
              v43 += v48;
            }
            ++v11;
            v8 = *(_DWORD *)(a1 + 448);
            if ( v8 <= v11 )
              break;
            v10 -= v9;
          }
          v6 = *(unsigned __int8 *)(a1 + 459);
        }
        break;
    }
    result = v47;
    v14 = v6 > 7;
    if ( v6 > 7 )
      v6 >>= 3;
    *(_DWORD *)(a1 + 448) = v47;
    if ( v14 )
      v6 *= v47;
    else
      v8 = v47;
    if ( !v14 )
      v6 = (v6 * v8 + 7) >> 3;
    *(_DWORD *)(a1 + 452) = v6;
  }
  return result;
}


// ===== 68e7a0 png_combine_row =====
_DWORD *__fastcall png_combine_row(_DWORD *result, char *a2, int a3, int a4)
{
  unsigned int v5; // r7
  int v6; // r9
  size_t v7; // r7
  char *v8; // r10
  char *v9; // r8
  unsigned int v10; // r5
  int v11; // r6
  unsigned int v12; // r12
  bool v13; // cc
  size_t v14; // r2
  _DWORD *v15; // r5
  int v16; // r8
  int v17; // r3
  unsigned __int8 *v18; // r6
  int v19; // r2
  int v20; // r5
  int v21; // r7
  int v22; // r3
  int v23; // r9
  unsigned __int8 *v24; // r6
  _BYTE *v25; // r8
  int v26; // r12
  int v27; // r2
  int v28; // r5
  int v29; // r7
  int v30; // r3
  int v31; // r10
  unsigned __int8 *v32; // r6
  _BYTE *v33; // r8
  int v34; // r12
  int v35; // r2
  int v36; // [sp+4h] [bp-8h]
  int v37; // [sp+4h] [bp-8h]
  int v38; // [sp+4h] [bp-8h]

  if ( a3 == 255 )
  {
    v12 = *((unsigned __int8 *)result + 459);
    v13 = v12 > 7;
    if ( v12 > 7 )
      v12 >>= 3;
    v14 = result[98] * v12;
    if ( !v13 )
      v14 = (v14 + 7) >> 3;
    return memcpy(a2, (const void *)(result[107] + 1), v14);
  }
  else
  {
    v5 = *((unsigned __int8 *)result + 459);
    switch ( v5 )
    {
      case 2u:
        v28 = result[98];
        v29 = result[76] & 0x10000;
        if ( v29 )
          v30 = 0;
        else
          v30 = 6;
        if ( v29 )
        {
          v29 = 6;
          v31 = 2;
        }
        else
        {
          v31 = -2;
        }
        v38 = v30;
        if ( v28 )
        {
          v32 = (unsigned __int8 *)(result[107] + 1);
          v33 = a2;
          v34 = 0;
          v35 = 128;
          do
          {
            if ( (v35 & a3) != 0 )
            {
              result = (_DWORD *)(((int)*v32 >> v30) & 3);
              *v33 = *v33 & (16191 >> (6 - v30)) | ((_BYTE)result << v30);
            }
            if ( v30 == v29 )
            {
              ++v32;
              ++v33;
              v30 = v38;
            }
            else
            {
              v30 += v31;
            }
            ++v34;
            if ( v35 == 1 )
              v35 = 128;
            else
              v35 >>= 1;
          }
          while ( v34 != v28 );
        }
        break;
      case 4u:
        v15 = (_DWORD *)result[98];
        v16 = result[76] & 0x10000;
        if ( v16 )
          a4 = 0;
        else
          v36 = *((unsigned __int8 *)result + 459);
        if ( (result[76] & 0x10000) != 0 )
          v16 = 4;
        else
          v5 = -4;
        if ( (result[76] & 0x10000) != 0 )
          v36 = a4;
        if ( v15 )
        {
          v17 = v36;
          v18 = (unsigned __int8 *)(result[107] + 1);
          result = nullptr;
          v19 = 128;
          do
          {
            if ( (v19 & a3) != 0 )
              *a2 = *a2 & (3855 >> (4 - v17)) | ((((int)*v18 >> v17) & 0xF) << v17);
            if ( v17 == v16 )
            {
              ++v18;
              ++a2;
              v17 = v36;
            }
            else
            {
              v17 += v5;
            }
            result = (_DWORD *)((char *)result + 1);
            if ( v19 == 1 )
              v19 = 128;
            else
              v19 >>= 1;
          }
          while ( result != v15 );
        }
        break;
      case 1u:
        v20 = result[98];
        v21 = result[76] & 0x10000;
        if ( v21 )
          v22 = 0;
        else
          v22 = 7;
        if ( v21 )
        {
          v21 = 7;
          v23 = 1;
        }
        else
        {
          v23 = -1;
        }
        v37 = v22;
        if ( v20 )
        {
          v24 = (unsigned __int8 *)(result[107] + 1);
          v25 = a2;
          v26 = 0;
          v27 = 128;
          do
          {
            if ( (v27 & a3) != 0 )
            {
              result = (_DWORD *)(((int)*v24 >> v22) & 1);
              *v25 = *v25 & (32639 >> (7 - v22)) | ((_BYTE)result << v22);
            }
            if ( v22 == v21 )
            {
              ++v24;
              ++v25;
              v22 = v37;
            }
            else
            {
              v22 += v23;
            }
            ++v26;
            if ( v27 == 1 )
              v27 = 128;
            else
              v27 >>= 1;
          }
          while ( v26 != v20 );
        }
        break;
      default:
        v6 = result[98];
        v7 = v5 >> 3;
        if ( v6 )
        {
          v8 = (char *)(result[107] + 1);
          v9 = a2;
          v10 = 128;
          v11 = 0;
          while ( 1 )
          {
            if ( (v10 & a3) != 0 )
            {
              result = memcpy(v9, v8, v7);
              ++v11;
              if ( v10 == 1 )
                v10 = 128;
              else
                v10 >>= 1;
              if ( v11 == v6 )
                return result;
            }
            else
            {
              ++v11;
              if ( v10 == 1 )
                v10 = 128;
              else
                v10 >>= 1;
              if ( v11 == v6 )
                return result;
            }
            v8 += v7;
            v9 += v7;
          }
        }
        break;
    }
  }
  return result;
}


// ===== 68ea6c png_check_chunk_name =====
unsigned __int8 *__fastcall png_check_chunk_name(unsigned __int8 *result, _BYTE *a2)
{
  int v3; // r3
  int v5; // r3
  int v7; // r3

  if ( (unsigned __int8)(*a2 - 91) <= 5u || (unsigned __int8)(*a2 - 65) > 0x39u )
    return (unsigned __int8 *)png_chunk_error(result, "invalid chunk type");
  v3 = (unsigned __int8)a2[1];
  if ( (unsigned __int8)(v3 - 91) <= 5u || (unsigned __int8)(v3 - 65) > 0x39u )
    return (unsigned __int8 *)png_chunk_error(result, "invalid chunk type");
  v5 = (unsigned __int8)a2[2];
  if ( (unsigned __int8)(v5 - 91) <= 5u || (unsigned __int8)(v5 - 65) > 0x39u )
    return (unsigned __int8 *)png_chunk_error(result, "invalid chunk type");
  v7 = (unsigned __int8)a2[3];
  if ( (unsigned __int8)(v7 - 91) <= 5u || (unsigned __int8)(v7 - 65) > 0x39u )
    return (unsigned __int8 *)png_chunk_error(result, "invalid chunk type");
  return result;
}


// ===== 68eb50 png_decompress_chunk =====
int __fastcall png_decompress_chunk(int a1, size_t a2, int a3, size_t a4, size_t *a5)
{
  size_t v5; // r8
  int v8; // r0
  int v9; // r1
  size_t v10; // r0
  size_t v11; // r3
  char *v12; // r5
  unsigned int v13; // r0
  unsigned int v14; // r7
  int v15; // r3
  char v16; // r2
  char *v17; // r6
  int v18; // r3
  _DWORD *v19; // r6
  int result; // r0
  const char *v21; // r1
  char s[52]; // [sp+18h] [bp-3Ch] BYREF

  v5 = a2;
  if ( a2 )
  {
    snprintf(s, 0x32u, "Unknown zTXt compression type %d", a2);
    result = png_warning(a1, s);
    *(_BYTE *)(*(_DWORD *)(a1 + 840) + a4) = 0;
    *a5 = a4;
    return result;
  }
  v8 = *(_DWORD *)(a1 + 840);
  *(_DWORD *)(a1 + 324) = *(_DWORD *)(a1 + 368);
  v9 = *(_DWORD *)(a1 + 364);
  v10 = v8 + a4;
  v11 = a3 - a4;
  *(_DWORD *)(a1 + 308) = v10;
  *(_DWORD *)(a1 + 320) = v9;
  *(_DWORD *)(a1 + 312) = v11;
  v12 = nullptr;
  if ( v11 )
  {
    while ( 1 )
    {
      v13 = inflate((unsigned __int8 **)(a1 + 308), 1);
      v14 = v13;
      if ( v13 > 1 )
        break;
      v15 = *(_DWORD *)(a1 + 324);
      if ( v15 )
        v16 = v13;
      else
        v16 = v13 | 1;
      if ( v16 )
      {
        if ( v12 )
        {
          v17 = (char *)png_malloc_warn((struct __jmp_buf_tag *)a1, *(_DWORD *)(a1 + 368) + 1 - v15 + v5);
          if ( !v17 )
          {
            png_free(a1, v12);
            png_free(a1, *(void **)(a1 + 840));
            *(_DWORD *)(a1 + 840) = 0;
            png_error((struct __jmp_buf_tag *)a1, "Not enough memory to decompress chunk..");
          }
          memcpy(v17, v12, v5);
          png_free(a1, v12);
          memcpy(&v17[v5], *(const void **)(a1 + 364), *(_DWORD *)(a1 + 368) - *(_DWORD *)(a1 + 324));
          v12 = v17;
          v5 += *(_DWORD *)(a1 + 368) - *(_DWORD *)(a1 + 324);
          v17[v5] = 0;
          if ( v14 == 1 )
            goto LABEL_23;
        }
        else
        {
          v5 = *(_DWORD *)(a1 + 368) - v15 + a4;
          v12 = (char *)png_malloc_warn((struct __jmp_buf_tag *)a1, v5 + 1);
          if ( !v12 )
          {
            png_free(a1, *(void **)(a1 + 840));
            *(_DWORD *)(a1 + 840) = 0;
            png_error((struct __jmp_buf_tag *)a1, "Not enough memory to decompress chunk.");
          }
          memcpy(&v12[a4], *(const void **)(a1 + 364), v5 - a4);
          memcpy(v12, *(const void **)(a1 + 840), a4);
          v12[v5] = 0;
          if ( v14 == 1 )
          {
LABEL_23:
            v19 = (_DWORD *)(a1 + 308);
            goto LABEL_19;
          }
        }
        v18 = *(_DWORD *)(a1 + 368);
        *(_DWORD *)(a1 + 320) = *(_DWORD *)(a1 + 364);
        *(_DWORD *)(a1 + 324) = v18;
      }
      if ( !*(_DWORD *)(a1 + 312) )
        goto LABEL_15;
    }
    v21 = *(const char **)(a1 + 332);
    v19 = (_DWORD *)(a1 + 308);
    if ( v21 )
      png_warning(a1, v21);
    else
      png_warning(a1, "Error decoding compressed text");
    inflateReset((_DWORD *)(a1 + 308));
    *(_DWORD *)(a1 + 312) = 0;
    if ( !v12 )
    {
      v5 = a4 + 32;
      v12 = (char *)png_malloc_warn((struct __jmp_buf_tag *)a1, a4 + 32);
      if ( !v12 )
      {
        png_free(a1, *(void **)(a1 + 840));
        *(_DWORD *)(a1 + 840) = 0;
        png_error((struct __jmp_buf_tag *)a1, "Not enough memory to decompress chunk");
      }
      memcpy(v12, *(const void **)(a1 + 840), a4);
    }
    v12[v5 - 1] = 0;
    v5 = a3 - 1 + *(_DWORD *)(a1 + 840) - (_DWORD)v12;
    if ( v5 >= 0x1F )
      v5 = 31;
    memcpy(&v12[a4], "Error decoding compressed text", v5);
    switch ( v14 )
    {
      case 1u:
        goto LABEL_19;
      case 0xFFFFFFFB:
        snprintf(s, 0x34u, "Buffer error in compressed datastream in %s chunk", (const char *)(a1 + 476));
        goto LABEL_17;
      case 0xFFFFFFFD:
        snprintf(s, 0x34u, "Data error in compressed datastream in %s chunk", (const char *)(a1 + 476));
        goto LABEL_17;
    }
  }
  else
  {
LABEL_15:
    v19 = (_DWORD *)(a1 + 308);
  }
  snprintf(s, 0x34u, "Incomplete compressed datastream in %s chunk", (const char *)(a1 + 476));
LABEL_17:
  png_warning(a1, s);
  if ( !v12 )
  {
    v12 = (char *)png_malloc_warn((struct __jmp_buf_tag *)a1, a4 + 1);
    if ( !v12 )
    {
      png_free(a1, *(void **)(a1 + 840));
      *(_DWORD *)(a1 + 840) = 0;
      png_error((struct __jmp_buf_tag *)a1, "Not enough memory for text.");
    }
    memcpy(v12, *(const void **)(a1 + 840), a4);
  }
  v12[a4] = 0;
  v5 = a4;
LABEL_19:
  inflateReset(v19);
  *(_DWORD *)(a1 + 312) = 0;
  png_free(a1, *(void **)(a1 + 840));
  *(_DWORD *)(a1 + 840) = v12;
  *a5 = v5;
  return result;
}


// ===== 68efc4 png_crc_read =====
struct __jmp_buf_tag *__fastcall png_crc_read(struct __jmp_buf_tag *result, int a2, int a3)
{
  int v3; // r6

  v3 = (int)result;
  if ( result )
  {
    png_read_data(result);
    return (struct __jmp_buf_tag *)png_calculate_crc(v3, a2, a3);
  }
  return result;
}

