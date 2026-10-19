// ===== 5aa8a0 glitch::video::IVideoDriver::checkPrimitiveCount(uint) =====
int __fastcall glitch::video::IVideoDriver::checkPrimitiveCount(glitch::video::IVideoDriver *this, unsigned int a2)
{
  unsigned int v3; // r0
  char v5[4]; // [sp+4h] [bp-408h] BYREF

  v3 = (*(int (__fastcall **)(glitch::video::IVideoDriver *))(*(_DWORD *)this + 96))(this);
  if ( v3 >= a2 )
    return 1;
  sprintf(v5, "Could not draw triangles, too many primitives(%u), maxium is %u.", a2, v3);
  glitch::os::Printer::log(v5, 3);
  return 0;
}


// ===== 5aa940 glitch::video::IVideoDriver::getDynamicLight(ushort) =====
int *__fastcall glitch::video::IVideoDriver::getDynamicLight(glitch::video::IVideoDriver *this, unsigned int a2)
{
  _DWORD *v4; // r1
  unsigned int v5; // r3
  int v6; // r12
  int *v7; // r3

  if ( (`guard variable for'glitch::video::IVideoDriver::getDynamicLight(unsigned short)::nullLight & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'glitch::video::IVideoDriver::getDynamicLight(unsigned short)::nullLight) )
  {
    glitch::video::IVideoDriver::getDynamicLight(unsigned short)const::nullLight = 0;
    _cxa_guard_release(&`guard variable for'glitch::video::IVideoDriver::getDynamicLight(unsigned short)::nullLight);
    _aeabi_atexit(
      (int)&glitch::video::IVideoDriver::getDynamicLight(unsigned short)const::nullLight,
      (int)boost::intrusive_ptr<glitch::video::CLight>::~intrusive_ptr,
      (int)&_dso_handle);
  }
  if ( *((unsigned __int16 *)this + 29) <= a2 )
    return &glitch::video::IVideoDriver::getDynamicLight(unsigned short)const::nullLight;
  v4 = *((_DWORD **)this + 57);
  v5 = *((unsigned __int16 *)this + 28);
  v6 = v4[6];
  if ( v5 < -858993459 * ((v4[7] - v6) >> 2) )
    v7 = (int *)(v6 + 20 * v5);
  else
    v7 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  if ( !*v7 )
    v7 = nullptr;
  return (int *)(v4[11] + v7[3] + 4 * a2);
}


// ===== 5aaa40 glitch::video::IVideoDriver::addDynamicLight(boost::intrusive_ptr<glitch::video::CLight> const&) =====
unsigned int __fastcall glitch::video::IVideoDriver::addDynamicLight(int a1, int a2)
{
  unsigned int v3; // r2
  unsigned int result; // r0

  v3 = *(unsigned __int16 *)(a1 + 58);
  result = *(unsigned __int16 *)(a1 + 60);
  if ( result > v3 )
  {
    result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<boost::intrusive_ptr<glitch::video::CLight>>(
               *(_DWORD *)(a1 + 228),
               (unsigned __int16)(v3 + *(_WORD *)(a1 + 56)),
               0,
               a2);
    ++*(_WORD *)(a1 + 58);
  }
  return result;
}


// ===== 5aaa84 glitch::video::IVideoDriver::deleteAllDynamicLights(void) =====
int __fastcall glitch::video::IVideoDriver::deleteAllDynamicLights(int this)
{
  unsigned int v1; // r4
  int v2; // r5
  unsigned int v3; // r6
  int v4; // r7
  unsigned int v5; // r1

  v1 = *(unsigned __int16 *)(this + 56);
  v2 = this;
  v3 = (unsigned __int16)(v1 + *(_WORD *)(this + 58));
  if ( v1 < v3 )
  {
    v4 = this + 64;
    do
    {
      v5 = v1;
      v1 = (unsigned __int16)(v1 + 1);
      this = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<boost::intrusive_ptr<glitch::video::CLight>>(
               *(_DWORD *)(v2 + 228),
               v5,
               0,
               v4);
    }
    while ( v3 > v1 );
  }
  *(_WORD *)(v2 + 58) = 0;
  return this;
}


// ===== 5aaad8 glitch::video::IVideoDriver::getTextureBindingCount(void) =====
int __fastcall glitch::video::IVideoDriver::getTextureBindingCount(glitch::video::IVideoDriver *this)
{
  return glitch::video::CFPSCounter::getTextureBindings((glitch::video::IVideoDriver *)((char *)this + 80));
}


// ===== 5aaae0 glitch::video::IVideoDriver::getDrawCall2DCount(void) =====
int __fastcall glitch::video::IVideoDriver::getDrawCall2DCount(glitch::video::IVideoDriver *this)
{
  return glitch::video::CFPSCounter::getDrawCalls2D((glitch::video::IVideoDriver *)((char *)this + 80));
}


// ===== 5aaae8 glitch::video::IVideoDriver::getDrawCallCount(void) =====
int __fastcall glitch::video::IVideoDriver::getDrawCallCount(glitch::video::IVideoDriver *this)
{
  return glitch::video::CFPSCounter::getDrawCalls((glitch::video::IVideoDriver *)((char *)this + 80));
}


// ===== 5aaaf0 glitch::video::IVideoDriver::getPrimitiveCountDrawn(uint) =====
int __fastcall glitch::video::IVideoDriver::getPrimitiveCountDrawn(glitch::video::IVideoDriver *this, unsigned int a2)
{
  if ( !a2 )
    return glitch::video::CFPSCounter::getPrimitive((glitch::video::IVideoDriver *)((char *)this + 80));
  if ( a2 == 1 )
    return glitch::video::CFPSCounter::getPrimitiveAverage((glitch::video::IVideoDriver *)((char *)this + 80));
  return glitch::video::CFPSCounter::getPrimitiveTotal((glitch::video::IVideoDriver *)((char *)this + 80));
}


// ===== 5aab18 glitch::video::IVideoDriver::getFPS(void) =====
int __fastcall glitch::video::IVideoDriver::getFPS(glitch::video::IVideoDriver *this)
{
  return glitch::video::CFPSCounter::getFPS((glitch::video::IVideoDriver *)((char *)this + 80));
}


// ===== 5aab20 glitch::video::IVideoDriver::endScene(void) =====
int __fastcall glitch::video::IVideoDriver::endScene(glitch::video::IVideoDriver *this)
{
  unsigned int RealTime; // r0

  RealTime = glitch::os::Timer::getRealTime(this);
  glitch::video::CFPSCounter::registerFrame(
    (glitch::video::IVideoDriver *)((char *)this + 80),
    RealTime,
    *((_DWORD *)this + 30),
    *((_DWORD *)this + 31),
    *((_DWORD *)this + 32),
    *((_DWORD *)this + 33));
  return 1;
}


// ===== 5aab60 glitch::video::IVideoDriver::init(ushort,ushort,uchar) =====
int __fastcall glitch::video::IVideoDriver::init(
        glitch::video::IVideoDriver *this,
        unsigned __int16 a2,
        unsigned int a3,
        unsigned __int8 a4)
{
  int v5; // r2
  glitch::video::CGlobalMaterialParameterManager *v7; // r4
  unsigned __int16 v8; // r0
  unsigned __int16 *v9; // r8
  int i; // r6
  unsigned __int16 v11; // r0
  int v12; // t1
  int v13; // r0
  int v14; // r0
  int result; // r0
  unsigned __int16 v16; // r0
  int v17; // r6
  int v18; // r11
  unsigned __int16 v19; // [sp+Ch] [bp-60h]
  unsigned __int16 v20; // [sp+Ch] [bp-60h]
  _DWORD v21[2]; // [sp+34h] [bp-38h] BYREF
  int v22; // [sp+3Ch] [bp-30h] BYREF
  _BYTE v23[4]; // [sp+40h] [bp-2Ch] BYREF
  char s[32]; // [sp+44h] [bp-28h] BYREF
  int v25; // [sp+64h] [bp-8h]

  v5 = _stack_chk_guard;
  *((_BYTE *)this + 309) = a4;
  *((_WORD *)this + 31) = a2;
  v25 = v5;
  *((_WORD *)this + 30) = a3;
  v7 = *((glitch::video::CGlobalMaterialParameterManager **)this + 57);
  if ( a3 )
  {
    sprintf(s, "%s0", "DynamicLight");
    v16 = glitch::video::CGlobalMaterialParameterManager::addParameter(v7, s, 18, 18, 1, 0);
    *((_WORD *)this + 28) = v16;
    glitch::video::CGlobalMaterialParameterManager::grabInternal(v7, v16);
    glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<boost::intrusive_ptr<glitch::video::CLight>>(
      v7,
      *((unsigned __int16 *)this + 28),
      0,
      (char *)this + 64);
    if ( a3 > 1 )
    {
      v17 = 1;
      do
      {
        sprintf(s, "%s%u", "DynamicLight", v17);
        v18 = glitch::video::CGlobalMaterialParameterManager::addParameter(v7, s, 18, 18, 1, (unsigned __int8)v17);
        glitch::video::CGlobalMaterialParameterManager::grabInternal(v7, v18);
        ++v17;
        glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<boost::intrusive_ptr<glitch::video::CLight>>(
          v7,
          v18,
          0,
          (char *)this + 64);
      }
      while ( a3 > (unsigned __int16)v17 );
    }
  }
  v8 = glitch::video::CGlobalMaterialParameterManager::addParameter(v7, "SceneAmbientLight", 28, 17, 1, 255);
  *((_WORD *)this + 155) = v8;
  glitch::video::CGlobalMaterialParameterManager::grabInternal(v7, v8);
  v9 = (unsigned __int16 *)((char *)this + 250);
  for ( i = 0; i != 4; ++i )
  {
    sprintf(s, "%s%u", "FogColor", i);
    v11 = glitch::video::CGlobalMaterialParameterManager::addParameter(v7, s, 31, 16, 1, 255);
    *v9 = v11;
    glitch::video::CGlobalMaterialParameterManager::grabInternal(v7, v11);
    v12 = *v9++;
    v23[2] = 0x80;
    v23[0] = -1;
    v23[3] = -1;
    v23[1] = 0;
    glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::video::SColor>(
      (int)v7,
      v12,
      0,
      v23);
    sprintf(s, "%s%u", "FogDensity", i);
    v13 = glitch::video::CGlobalMaterialParameterManager::addParameter(v7, s, 29, 5, 1, 255);
    v22 = 1065353216;
    v19 = v13;
    glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<float>(
      v7,
      v13,
      0,
      &v22);
    glitch::video::CGlobalMaterialParameterManager::grabInternal(v7, v19);
    sprintf(s, "%s%u", "FogStartEnd", i);
    v14 = glitch::video::CGlobalMaterialParameterManager::addParameter(v7, s, 30, 6, 1, 255);
    v21[0] = 0;
    v21[1] = 1065353216;
    v20 = v14;
    glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector2d<float>>(
      v7,
      v14,
      0,
      v21);
    result = glitch::video::CGlobalMaterialParameterManager::grabInternal(v7, v20);
  }
  return result;
}


// ===== 5aaebc glitch::video::IVideoDriver::draw(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&,glitch::video::CPrimitiveStream const&,glitch::video::CDriverBinding **) [clone] =====
int __fastcall glitch::video::IVideoDriver::draw(int a1)
{
  (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 88))(a1);
  return 0;
}


// ===== 5aaef8 glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&,glitch::core::CMatrix4<float>::eConstructor) [clone] =====
_BYTE *__fastcall glitch::core::CMatrix4<float>::CMatrix4(_BYTE *a1, const void *a2)
{
  a1[64] = 0;
  memcpy(a1, a2, 0x41u);
  return a1;
}


// ===== 5aaf18 std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block()
{
  ;
}


// ===== 5aaf1c glitch::video::IVideoDriver::IVideoDriver(glitch::IDevice *,glitch::video::IShaderManager *,glitch::video::CMaterialRendererManager *,glitch::video::CTextureManager *,glitch::video::CGlobalMaterialParameterManager *,boost::intrusive_ptr<glitch::video::CLight> const&) =====
int __fastcall glitch::video::IVideoDriver::IVideoDriver(int a1, int a2, _DWORD *a3, int a4, int a5, int a6, int **a7)
{
  int v8; // lr
  int v11; // r2
  int *v12; // r3
  bool v13; // zf
  _DWORD *v14; // r0
  int v15; // r3
  _WORD *v16; // r8
  int Id; // r0
  int i; // r5
  int v19; // r2
  glitch::video::CGlobalMaterialParameterManager *v21; // r5
  int v22; // r3
  _DWORD *v23; // r3
  _DWORD *v24; // r2
  glitch::video::CMaterialRendererManager *v25; // r5
  int v26; // r3
  glitch::video::CTextureManager *v27; // r5
  int v28; // r3
  _DWORD *v30; // [sp+Ch] [bp-110h] BYREF
  _DWORD *v31; // [sp+10h] [bp-10Ch] BYREF
  char s[256]; // [sp+14h] [bp-108h] BYREF
  int v33; // [sp+114h] [bp-8h]

  v8 = _stack_chk_guard;
  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)a1 = off_977338;
  *(_DWORD *)(a1 + 24) = a1 + 8;
  *(_DWORD *)(a1 + 28) = a1 + 8;
  v33 = v8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(a1 + 8);
  **(_BYTE **)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 48) = a1 + 32;
  *(_DWORD *)(a1 + 52) = a1 + 32;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(a1 + 32);
  **(_BYTE **)(a1 + 48) = 0;
  *(_WORD *)(a1 + 62) = 0;
  *(_WORD *)(a1 + 58) = 0;
  *(_WORD *)(a1 + 60) = 0;
  *(_WORD *)(a1 + 56) = -1;
  v12 = *a7;
  v13 = *a7 == nullptr;
  *(_DWORD *)(a1 + 64) = *a7;
  if ( v12 )
    v11 = *v12;
  if ( !v13 )
    *v12 = v11 + 1;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)(a1 + 72) = 0;
  *(_DWORD *)(a1 + 76) = 8;
  glitch::video::CFPSCounter::CFPSCounter((glitch::video::CFPSCounter *)(a1 + 80));
  *(_DWORD *)(a1 + 136) = 16;
  *(_DWORD *)(a1 + 268) = 1024;
  *(_DWORD *)(a1 + 212) = a2;
  *(_DWORD *)(a1 + 220) = a4;
  *(_BYTE *)(a1 + 248) = -1;
  *(_DWORD *)(a1 + 224) = a5;
  *(_BYTE *)(a1 + 249) = -1;
  *(_DWORD *)(a1 + 216) = a3;
  *(_DWORD *)(a1 + 228) = a6;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
  *(_DWORD *)(a1 + 132) = 0;
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
  *(_DWORD *)(a1 + 232) = 0;
  *(_DWORD *)(a1 + 236) = 0;
  *(_DWORD *)(a1 + 240) = 0;
  *(_DWORD *)(a1 + 244) = 0;
  *(_DWORD *)(a1 + 260) = 0;
  *(_DWORD *)(a1 + 264) = 0;
  *(_DWORD *)(a1 + 272) = 0;
  *(_DWORD *)(a1 + 276) = 0;
  *(_WORD *)(a1 + 310) = -1;
  *(_DWORD *)(a1 + 280) = 0;
  *(_DWORD *)(a1 + 288) = 0;
  *(_DWORD *)(a1 + 292) = 0;
  *(_DWORD *)(a1 + 296) = 0;
  *(_DWORD *)(a1 + 300) = 0;
  *(_DWORD *)(a1 + 304) = 0;
  *(_BYTE *)(a1 + 309) = 0;
  *(_DWORD *)(a1 + 312) = 0;
  *(_DWORD *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 336) = 0;
  *(_DWORD *)(a1 + 156) = 64;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 340) = 0;
  *(_DWORD *)(a1 + 344) = 0;
  v14 = a3;
  v15 = *a3;
  v16 = (_WORD *)(a1 + 250);
  (*(void (__fastcall **)(_DWORD *, int, int))(v15 + 8))(v14, a1, 1);
  LC_API_MEMSET_0((void *)(a1 + 250), 255, 8u);
  if ( !*(_DWORD *)(a1 + 64) )
  {
    glitch::video::CLight::allocate((glitch::video::CLight *)&v31, nullptr);
    v23 = v31;
    v30 = v31;
    if ( v31 )
    {
      ++*v31;
      v23 = v30;
    }
    v24 = *(_DWORD **)(a1 + 64);
    *(_DWORD *)(a1 + 64) = v23;
    v30 = v24;
    boost::intrusive_ptr<glitch::video::CLight>::~intrusive_ptr(&v30);
    boost::intrusive_ptr<glitch::video::CLight>::~intrusive_ptr(&v31);
    glitch::video::IVideoDriver::resetDefaultDynamicLight((glitch::video::IVideoDriver *)a1);
  }
  if ( !*(_DWORD *)(a1 + 220) )
  {
    v25 = (glitch::video::CMaterialRendererManager *)operator new(152, 0);
    glitch::video::CMaterialRendererManager::CMaterialRendererManager(v25, (glitch::video::IVideoDriver *)a1);
    v26 = *(_DWORD *)(a1 + 312);
    *(_DWORD *)(a1 + 220) = v25;
    *(_DWORD *)(a1 + 312) = v26 | 0x10;
  }
  if ( !*(_DWORD *)(a1 + 224) )
  {
    v27 = (glitch::video::CTextureManager *)operator new(120, 0);
    glitch::video::CTextureManager::CTextureManager(v27, (glitch::video::IVideoDriver *)a1);
    v28 = *(_DWORD *)(a1 + 312);
    *(_DWORD *)(a1 + 224) = v27;
    *(_DWORD *)(a1 + 312) = v28 | 0x20;
  }
  if ( *(_DWORD *)(a1 + 228) )
  {
    sprintf(s, "%s0", "DynamicLight");
    Id = glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::getId(
           *(_DWORD *)(a1 + 228),
           s);
    *(_WORD *)(a1 + 56) = Id;
    if ( Id != 0xFFFF )
    {
      for ( i = 0; i != 4; ++i )
      {
        sprintf(s, "%s%u", "FogColor", i);
        *v16++ = glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::getId(
                   *(_DWORD *)(a1 + 228),
                   s);
      }
      *(_WORD *)(a1 + 310) = glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::getId(
                               *(_DWORD *)(a1 + 228),
                               "SceneAmbientLight");
    }
  }
  else
  {
    v21 = (glitch::video::CGlobalMaterialParameterManager *)operator new(60, 0);
    glitch::video::CGlobalMaterialParameterManager::CGlobalMaterialParameterManager(
      v21,
      (glitch::video::IVideoDriver *)a1);
    v22 = *(_DWORD *)(a1 + 312);
    *(_DWORD *)(a1 + 228) = v21;
    *(_DWORD *)(a1 + 312) = v22 | 0x20;
  }
  v19 = *(_DWORD *)(a1 + 220);
  *(_DWORD *)(a1 + 264) = 0;
  *(_DWORD *)(a1 + 260) = v19;
  return a1;
}


// ===== 5ab2f8 glitch::video::IVideoDriver::IVideoDriver(glitch::IDevice *,glitch::video::IShaderManager *,glitch::video::CMaterialRendererManager *,glitch::video::CTextureManager *,glitch::video::CGlobalMaterialParameterManager *,boost::intrusive_ptr<glitch::video::CLight> const&) =====
int __fastcall glitch::video::IVideoDriver::IVideoDriver(int a1, int a2, _DWORD *a3, int a4, int a5, int a6, int **a7)
{
  int v8; // lr
  int v11; // r2
  int *v12; // r3
  bool v13; // zf
  _DWORD *v14; // r0
  int v15; // r3
  _WORD *v16; // r8
  int Id; // r0
  int i; // r5
  int v19; // r2
  glitch::video::CGlobalMaterialParameterManager *v21; // r5
  int v22; // r3
  _DWORD *v23; // r3
  _DWORD *v24; // r2
  glitch::video::CMaterialRendererManager *v25; // r5
  int v26; // r3
  glitch::video::CTextureManager *v27; // r5
  int v28; // r3
  _DWORD *v30; // [sp+Ch] [bp-110h] BYREF
  _DWORD *v31; // [sp+10h] [bp-10Ch] BYREF
  char s[256]; // [sp+14h] [bp-108h] BYREF
  int v33; // [sp+114h] [bp-8h]

  v8 = _stack_chk_guard;
  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)a1 = off_977338;
  *(_DWORD *)(a1 + 24) = a1 + 8;
  *(_DWORD *)(a1 + 28) = a1 + 8;
  v33 = v8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_BYTE **)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 48) = a1 + 32;
  *(_DWORD *)(a1 + 52) = a1 + 32;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_BYTE **)(a1 + 48) = 0;
  *(_WORD *)(a1 + 62) = 0;
  *(_WORD *)(a1 + 58) = 0;
  *(_WORD *)(a1 + 60) = 0;
  *(_WORD *)(a1 + 56) = -1;
  v12 = *a7;
  v13 = *a7 == nullptr;
  *(_DWORD *)(a1 + 64) = *a7;
  if ( v12 )
    v11 = *v12;
  if ( !v13 )
    *v12 = v11 + 1;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)(a1 + 72) = 0;
  *(_DWORD *)(a1 + 76) = 8;
  glitch::video::CFPSCounter::CFPSCounter((glitch::video::CFPSCounter *)(a1 + 80));
  *(_DWORD *)(a1 + 136) = 16;
  *(_DWORD *)(a1 + 268) = 1024;
  *(_DWORD *)(a1 + 212) = a2;
  *(_DWORD *)(a1 + 220) = a4;
  *(_BYTE *)(a1 + 248) = -1;
  *(_DWORD *)(a1 + 224) = a5;
  *(_BYTE *)(a1 + 249) = -1;
  *(_DWORD *)(a1 + 216) = a3;
  *(_DWORD *)(a1 + 228) = a6;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
  *(_DWORD *)(a1 + 132) = 0;
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
  *(_DWORD *)(a1 + 232) = 0;
  *(_DWORD *)(a1 + 236) = 0;
  *(_DWORD *)(a1 + 240) = 0;
  *(_DWORD *)(a1 + 244) = 0;
  *(_DWORD *)(a1 + 260) = 0;
  *(_DWORD *)(a1 + 264) = 0;
  *(_DWORD *)(a1 + 272) = 0;
  *(_DWORD *)(a1 + 276) = 0;
  *(_WORD *)(a1 + 310) = -1;
  *(_DWORD *)(a1 + 280) = 0;
  *(_DWORD *)(a1 + 288) = 0;
  *(_DWORD *)(a1 + 292) = 0;
  *(_DWORD *)(a1 + 296) = 0;
  *(_DWORD *)(a1 + 300) = 0;
  *(_DWORD *)(a1 + 304) = 0;
  *(_BYTE *)(a1 + 309) = 0;
  *(_DWORD *)(a1 + 312) = 0;
  *(_DWORD *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 336) = 0;
  *(_DWORD *)(a1 + 156) = 64;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 340) = 0;
  *(_DWORD *)(a1 + 344) = 0;
  v14 = a3;
  v15 = *a3;
  v16 = (_WORD *)(a1 + 250);
  (*(void (__fastcall **)(_DWORD *, int, int))(v15 + 8))(v14, a1, 1);
  LC_API_MEMSET_0((void *)(a1 + 250), 255, 8u);
  if ( !*(_DWORD *)(a1 + 64) )
  {
    glitch::video::CLight::allocate((glitch::video::CLight *)&v31, nullptr);
    v23 = v31;
    v30 = v31;
    if ( v31 )
    {
      ++*v31;
      v23 = v30;
    }
    v24 = *(_DWORD **)(a1 + 64);
    *(_DWORD *)(a1 + 64) = v23;
    v30 = v24;
    boost::intrusive_ptr<glitch::video::CLight>::~intrusive_ptr(&v30);
    boost::intrusive_ptr<glitch::video::CLight>::~intrusive_ptr(&v31);
    glitch::video::IVideoDriver::resetDefaultDynamicLight(a1);
  }
  if ( !*(_DWORD *)(a1 + 220) )
  {
    v25 = (glitch::video::CMaterialRendererManager *)operator new(0x98u, 0);
    glitch::video::CMaterialRendererManager::CMaterialRendererManager(v25, (glitch::video::IVideoDriver *)a1);
    v26 = *(_DWORD *)(a1 + 312);
    *(_DWORD *)(a1 + 220) = v25;
    *(_DWORD *)(a1 + 312) = v26 | 0x10;
  }
  if ( !*(_DWORD *)(a1 + 224) )
  {
    v27 = (glitch::video::CTextureManager *)operator new(0x78u, 0);
    glitch::video::CTextureManager::CTextureManager(v27, (glitch::video::IVideoDriver *)a1);
    v28 = *(_DWORD *)(a1 + 312);
    *(_DWORD *)(a1 + 224) = v27;
    *(_DWORD *)(a1 + 312) = v28 | 0x20;
  }
  if ( *(_DWORD *)(a1 + 228) )
  {
    sprintf(s, "%s0", "DynamicLight");
    Id = glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::getId(
           *(_DWORD *)(a1 + 228),
           s);
    *(_WORD *)(a1 + 56) = Id;
    if ( Id != 0xFFFF )
    {
      for ( i = 0; i != 4; ++i )
      {
        sprintf(s, "%s%u", "FogColor", i);
        *v16++ = glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::getId(
                   *(_DWORD *)(a1 + 228),
                   s);
      }
      *(_WORD *)(a1 + 310) = glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::getId(
                               *(_DWORD *)(a1 + 228),
                               "SceneAmbientLight");
    }
  }
  else
  {
    v21 = (glitch::video::CGlobalMaterialParameterManager *)operator new(0x3Cu, 0);
    glitch::video::CGlobalMaterialParameterManager::CGlobalMaterialParameterManager(
      v21,
      (glitch::video::IVideoDriver *)a1);
    v22 = *(_DWORD *)(a1 + 312);
    *(_DWORD *)(a1 + 228) = v21;
    *(_DWORD *)(a1 + 312) = v22 | 0x20;
  }
  v19 = *(_DWORD *)(a1 + 220);
  *(_DWORD *)(a1 + 264) = 0;
  *(_DWORD *)(a1 + 260) = v19;
  return a1;
}


// ===== 5ab6d4 glitch::video::IVideoDriver::pushRenderTarget(boost::intrusive_ptr<glitch::video::IRenderTarget> const&) =====
int __fastcall glitch::video::IVideoDriver::pushRenderTarget(int a1, _DWORD *a2)
{
  _DWORD *v2; // r3
  _DWORD *v3; // r6
  int v6; // r2
  int result; // r0
  unsigned int v8; // r3
  unsigned int v9; // r7
  size_t v10; // r7
  _DWORD *v11; // r0
  int v12; // r2
  int v13; // r12
  _DWORD *v14; // r8
  int v15; // r6
  _DWORD *v16; // r6
  int v17; // r1
  int v18; // r3
  int v19; // r3
  _DWORD *v20; // r7
  bool v21; // zf
  _DWORD *v22; // r6

  v2 = *(_DWORD **)(a1 + 204);
  v3 = *(_DWORD **)(a1 + 208);
  *(_DWORD *)(a1 + 312) |= 4u;
  if ( v2 == v3 )
  {
    v8 = ((int)v3 - *(_DWORD *)(a1 + 200)) >> 2;
    if ( v8 )
      v9 = 2 * v8;
    else
      v9 = 1;
    if ( v9 > 0x3FFFFFFF || v8 > v9 )
      v10 = -1;
    else
      v10 = v9;
    v11 = GlitchAlloc(v10 * 4, 0);
    v13 = *(_DWORD *)(a1 + 200);
    v14 = v11;
    v15 = ((int)v3 - v13) >> 2;
    if ( v15 > 0 )
    {
      v17 = v15;
      v12 = 0;
      do
      {
        v18 = *(_DWORD *)(v13 + v12);
        *(_DWORD *)((char *)v14 + v12) = v18;
        if ( v18 )
          v11 = *(_DWORD **)(v18 + 4);
        v12 += 4;
        if ( v18 )
        {
          v11 = (_DWORD *)((char *)v11 + 1);
          *(_DWORD *)(v18 + 4) = v11;
        }
        --v17;
      }
      while ( v17 );
      v16 = &v14[v15];
    }
    else
    {
      v16 = v11;
    }
    v19 = *a2;
    v20 = &v14[v10];
    v21 = *a2 == 0;
    *v16 = *a2;
    if ( !v21 )
      v12 = *(_DWORD *)(v19 + 4);
    v22 = v16 + 1;
    if ( !v21 )
      *(_DWORD *)(v19 + 4) = v12 + 1;
    std::vector<boost::intrusive_ptr<glitch::video::IRenderTarget>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IRenderTarget>,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move((void **)(a1 + 200));
    *(_DWORD *)(a1 + 204) = v22;
    *(_DWORD *)(a1 + 208) = v20;
    *(_DWORD *)(a1 + 200) = v14;
  }
  else
  {
    v6 = *a2;
    *v2 = *a2;
    if ( v6 )
      ++*(_DWORD *)(v6 + 4);
    *(_DWORD *)(a1 + 204) += 4;
  }
  result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)*a2 + 16))(*a2);
  *(_DWORD *)(a1 + 312) &= ~4u;
  return result;
}


// ===== 5ab808 std::vector<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>*,boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer> const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        char **a1,
        int a2,
        int *a3)
{
  unsigned int v6; // r3
  unsigned int v7; // r6
  size_t v8; // r6
  _DWORD *v9; // r0
  int v10; // r2
  char *v11; // r12
  char *v12; // r8
  int v13; // r5
  int *v14; // r10
  int v15; // r1
  int v16; // r3
  int v17; // r3
  char *v18; // r10
  char *v19; // r5
  char *v20; // r7
  glitch::IReferenceCounted *v21; // r0

  v6 = (a1[1] - *a1) >> 2;
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0x3FFFFFFF || v6 > v7 )
    v8 = -4;
  else
    v8 = 4 * v7;
  v9 = GlitchAlloc(v8, 0);
  v11 = *a1;
  v12 = (char *)v9;
  v13 = (a2 - (int)*a1) >> 2;
  if ( v13 > 0 )
  {
    v15 = v13;
    v10 = 0;
    do
    {
      v16 = *(_DWORD *)&v11[v10];
      *(_DWORD *)&v12[v10] = v16;
      if ( v16 )
        v9 = *(_DWORD **)(v16 + 4);
      v10 += 4;
      if ( v16 )
      {
        v9 = (_DWORD *)((char *)v9 + 1);
        *(_DWORD *)(v16 + 4) = v9;
      }
      --v15;
    }
    while ( v15 );
    v14 = (int *)&v12[4 * v13];
  }
  else
  {
    v14 = v9;
  }
  v17 = *a3;
  *v14 = *a3;
  if ( v17 )
    v10 = *(_DWORD *)(v17 + 4);
  v18 = (char *)(v14 + 1);
  if ( v17 )
    *(_DWORD *)(v17 + 4) = v10 + 1;
  v19 = a1[1];
  v20 = *a1;
  if ( v19 != *a1 )
  {
    do
    {
      v21 = *((glitch::IReferenceCounted **)v19 - 1);
      v19 -= 4;
      if ( v21 )
        glitch::IReferenceCounted::drop(v21);
    }
    while ( v20 != v19 );
    v20 = *a1;
  }
  GlitchFree(v20);
  a1[2] = &v12[v8];
  *a1 = v12;
  a1[1] = v18;
}


// ===== 5ab90c std::vector<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
char **__fastcall std::vector<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
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


// ===== 5ab958 std::vector<boost::intrusive_ptr<glitch::video::IBuffer>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IBuffer>,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
char **__fastcall std::vector<boost::intrusive_ptr<glitch::video::IBuffer>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IBuffer>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
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


// ===== 5ab9a4 std::vector<boost::intrusive_ptr<glitch::video::IBuffer>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IBuffer>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(boost::intrusive_ptr<glitch::video::IBuffer>*,boost::intrusive_ptr<glitch::video::IBuffer> const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<boost::intrusive_ptr<glitch::video::IBuffer>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IBuffer>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        char **a1,
        int a2,
        int *a3)
{
  unsigned int v6; // r3
  unsigned int v7; // r6
  size_t v8; // r6
  _DWORD *v9; // r0
  int v10; // r2
  char *v11; // r12
  char *v12; // r8
  int v13; // r5
  int *v14; // r10
  int v15; // r1
  int v16; // r3
  int v17; // r3
  char *v18; // r10
  char *v19; // r5
  char *v20; // r7
  glitch::IReferenceCounted *v21; // r0

  v6 = (a1[1] - *a1) >> 2;
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0x3FFFFFFF || v6 > v7 )
    v8 = -4;
  else
    v8 = 4 * v7;
  v9 = GlitchAlloc(v8, 0);
  v11 = *a1;
  v12 = (char *)v9;
  v13 = (a2 - (int)*a1) >> 2;
  if ( v13 > 0 )
  {
    v15 = v13;
    v10 = 0;
    do
    {
      v16 = *(_DWORD *)&v11[v10];
      *(_DWORD *)&v12[v10] = v16;
      if ( v16 )
        v9 = *(_DWORD **)(v16 + 4);
      v10 += 4;
      if ( v16 )
      {
        v9 = (_DWORD *)((char *)v9 + 1);
        *(_DWORD *)(v16 + 4) = v9;
      }
      --v15;
    }
    while ( v15 );
    v14 = (int *)&v12[4 * v13];
  }
  else
  {
    v14 = v9;
  }
  v17 = *a3;
  *v14 = *a3;
  if ( v17 )
    v10 = *(_DWORD *)(v17 + 4);
  v18 = (char *)(v14 + 1);
  if ( v17 )
    *(_DWORD *)(v17 + 4) = v10 + 1;
  v19 = a1[1];
  v20 = *a1;
  if ( v19 != *a1 )
  {
    do
    {
      v21 = *((glitch::IReferenceCounted **)v19 - 1);
      v19 -= 4;
      if ( v21 )
        glitch::IReferenceCounted::drop(v21);
    }
    while ( v20 != v19 );
    v20 = *a1;
  }
  GlitchFree(v20);
  a1[2] = &v12[v8];
  *a1 = v12;
  a1[1] = v18;
}


// ===== 5abaa8 glitch::video::detail::SProcessBufferHeapBufferAllocator::release(boost::intrusive_ptr<glitch::video::IBuffer> const&) =====
void __fastcall glitch::video::detail::SProcessBufferHeapBufferAllocator::release(
        int a1,
        glitch::video::IBuffer **a2,
        int a3,
        int a4)
{
  glitch::IReferenceCounted *v4; // r4
  glitch::core *v6; // r6
  void *v7; // r1
  char v8; // r3

  v4 = *a2;
  if ( *a2 )
    a4 = *((_DWORD *)v4 + 1);
  else
    a1 = 0;
  if ( *a2 )
  {
    *((_DWORD *)v4 + 1) = a4 + 1;
    a1 = (int)*a2;
  }
  v6 = (glitch::core *)glitch::video::IBuffer::map(a1, 4);
  glitch::core::releaseProcessBuffer(v6, v7);
  if ( v6 )
  {
    v8 = *((_BYTE *)v4 + 19);
    if ( (v8 & 0x1Fu) <= 1 )
    {
      if ( (*((_BYTE *)v4 + 18) & 0x20) != 0 )
        (*(void (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v4 + 24))(v4);
      *((_BYTE *)v4 + 19) = 0;
    }
    else
    {
      *((_BYTE *)v4 + 19) = ((v8 & 0x1F) - 1) | v8 & 0xE0;
    }
  }
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  glitch::video::IBuffer::reset(*a2, 0, nullptr, 1);
}


// ===== 5abb58 glitch::video::CVertexStreams::setStream(glitch::video::SVertexStream *,glitch::video::SVertexStream const&,int,bool) [clone] =====
int __fastcall glitch::video::CVertexStreams::setStream(glitch::video::CVertexStreams *this, int a2, int *a3, int a4)
{
  int v5; // r2
  int v6; // r7
  glitch::IReferenceCounted *v9; // r0
  int v10; // r2
  __int16 v11; // r5

  v5 = *a3;
  v6 = a4;
  if ( v5 )
    a4 = *(_DWORD *)(v5 + 4);
  if ( v5 )
    *(_DWORD *)(v5 + 4) = a4 + 1;
  v9 = *(glitch::IReferenceCounted **)a2;
  *(_DWORD *)a2 = v5;
  if ( v9 )
    glitch::IReferenceCounted::drop(v9);
  v10 = a3[1];
  *(_DWORD *)(a2 + 4) = v10;
  *(_WORD *)(a2 + 10) = *((_WORD *)a3 + 5);
  *(_WORD *)(a2 + 12) = *((_WORD *)a3 + 6);
  v11 = *((_WORD *)a3 + 7);
  *(_DWORD *)(a2 + 4) = v6 + v10;
  *(_WORD *)(a2 + 14) = v11;
  return glitch::video::CVertexStreams::updateHomogeneityInternal((int)this, 1);
}


// ===== 5abbcc glitch::video::CVertexStreams::setStream(glitch::video::SVertexStream *,glitch::video::SVertexStreamData const&,bool) [clone] =====
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
  return glitch::video::CVertexStreams::updateHomogeneityInternal((int)this, 0);
}


// ===== 5abc34 glitch::video::releaseProcessBuffer<glitch::video::detail::SProcessBufferHeapBufferAllocator>(uint,uint,boost::intrusive_ptr<glitch::video::CVertexStreams> const&,glitch::video::detail::SProcessBufferHeapBufferAllocator) =====
glitch::IReferenceCounted **__fastcall glitch::video::releaseProcessBuffer<glitch::video::detail::SProcessBufferHeapBufferAllocator>(
        glitch::IReferenceCounted **a1,
        int a2,
        int a3,
        int a4,
        int a5)
{
  int v7; // r2
  int v8; // r3
  glitch::IReferenceCounted *v9; // r0
  bool v10; // zf
  glitch::IReferenceCounted *v11[2]; // [sp+4h] [bp-8h] BYREF

  if ( a3 )
  {
    glitch::video::detail::clearBuffer(v11);
    glitch::video::detail::SProcessBufferHeapBufferAllocator::release(a5, v11, v7, v8);
    v9 = v11[0];
    v10 = v11[0] == nullptr;
    *a1 = v11[0];
    if ( !v10 )
    {
      ++*((_DWORD *)v9 + 1);
      v9 = v11[0];
    }
    if ( v9 )
      glitch::IReferenceCounted::drop(v9);
  }
  else
  {
    *a1 = nullptr;
  }
  return a1;
}


// ===== 5abc9c glitch::video::releaseProcessBuffer<glitch::video::detail::SNewBufferAllocator<glitch::video::IVideoDriver>>(uint,uint,boost::intrusive_ptr<glitch::video::CVertexStreams> const&,glitch::video::detail::SNewBufferAllocator<glitch::video::IVideoDriver>) =====
glitch::IReferenceCounted **__fastcall glitch::video::releaseProcessBuffer<glitch::video::detail::SNewBufferAllocator<glitch::video::IVideoDriver>>(
        glitch::IReferenceCounted **a1,
        int a2,
        int a3)
{
  glitch::IReferenceCounted *v5; // r0
  bool v6; // zf
  glitch::IReferenceCounted *v7; // [sp+4h] [bp-4h] BYREF

  if ( a3 )
  {
    glitch::video::detail::clearBuffer(&v7);
    glitch::video::IBuffer::reset(v7, 0, nullptr, 1);
    v5 = v7;
    v6 = v7 == nullptr;
    *a1 = v7;
    if ( !v6 )
    {
      ++*((_DWORD *)v5 + 1);
      v5 = v7;
    }
    if ( v5 )
      glitch::IReferenceCounted::drop(v5);
  }
  else
  {
    *a1 = nullptr;
  }
  return a1;
}


// ===== 5abd08 glitch::video::allocateProcessBuffer<glitch::video::detail::SNewBufferAllocator<glitch::video::IVideoDriver>>(uint,uint,uint,boost::intrusive_ptr<glitch::video::CVertexStreams> const&,glitch::video::detail::SNewBufferAllocator<glitch::video::IVideoDriver>,ushort &) =====
glitch::IReferenceCounted **__fastcall glitch::video::allocateProcessBuffer<glitch::video::detail::SNewBufferAllocator<glitch::video::IVideoDriver>>(
        glitch::IReferenceCounted **a1,
        int a2,
        int a3,
        glitch::IReferenceCounted *a4,
        int a5,
        glitch::video::IBuffer **a6,
        unsigned __int16 *a7)
{
  bool v7; // zf
  glitch::IReferenceCounted *v8; // r7
  unsigned __int16 Strides; // r0
  glitch::IReferenceCounted *v14; // r0
  glitch::IReferenceCounted *v15; // [sp+Ch] [bp-4h] BYREF

  v7 = a3 == a2;
  if ( a3 != a2 )
    v7 = a4 == nullptr;
  v8 = a4;
  if ( v7 )
    a4 = nullptr;
  if ( v7 )
  {
    *a1 = a4;
  }
  else
  {
    Strides = glitch::video::detail::getStrides(v8, a5);
    *a7 = Strides;
    glitch::video::detail::SNewBufferAllocator<glitch::video::IVideoDriver>::allocate(&v15, a6, (a3 - a2) * Strides);
    if ( v15 )
    {
      glitch::video::detail::assignBuffer(&v15, *a7, -(a2 * *a7), v8, a5);
      v14 = v15;
      v7 = v15 == nullptr;
      *a1 = v15;
      if ( !v7 )
      {
        ++*((_DWORD *)v14 + 1);
        v14 = v15;
      }
      if ( v14 )
        glitch::IReferenceCounted::drop(v14);
    }
    else
    {
      *a1 = nullptr;
    }
  }
  return a1;
}


// ===== 5abdd0 glitch::video::allocateProcessBuffer<glitch::video::detail::SReuseBufferAllocator>(uint,uint,uint,boost::intrusive_ptr<glitch::video::CVertexStreams> const&,glitch::video::detail::SReuseBufferAllocator,ushort &) =====
glitch::IReferenceCounted **__fastcall glitch::video::allocateProcessBuffer<glitch::video::detail::SReuseBufferAllocator>(
        glitch::IReferenceCounted **a1,
        int a2,
        int a3,
        glitch::IReferenceCounted *a4,
        int a5,
        glitch::IReferenceCounted **a6,
        _WORD *a7)
{
  bool v7; // zf
  glitch::IReferenceCounted *v8; // r7
  __int16 Strides; // r0
  glitch::IReferenceCounted *v13; // r0
  glitch::IReferenceCounted *v14; // [sp+Ch] [bp-4h] BYREF

  v7 = a3 == a2;
  if ( a3 != a2 )
    v7 = a4 == nullptr;
  v8 = a4;
  if ( v7 )
    a4 = nullptr;
  if ( v7 )
  {
    *a1 = a4;
  }
  else
  {
    Strides = glitch::video::detail::getStrides(v8, a5);
    *a7 = Strides;
    v13 = *a6;
    v14 = *a6;
    if ( v14 && (++*((_DWORD *)v13 + 1), (v13 = v14) != nullptr) )
    {
      glitch::video::detail::assignBuffer(&v14, (unsigned __int16)*a7, -(a2 * (unsigned __int16)*a7), v8, a5);
      v13 = v14;
      v7 = v14 == nullptr;
      *a1 = v14;
      if ( !v7 )
      {
        ++*((_DWORD *)v13 + 1);
        v13 = v14;
      }
    }
    else
    {
      *a1 = nullptr;
    }
    if ( v13 )
      glitch::IReferenceCounted::drop(v13);
  }
  return a1;
}


// ===== 5abe9c glitch::video::allocateProcessBuffer<glitch::video::detail::SProcessBufferHeapBufferAllocator>(uint,uint,uint,boost::intrusive_ptr<glitch::video::CVertexStreams> const&,glitch::video::detail::SProcessBufferHeapBufferAllocator,ushort &) =====
glitch::IReferenceCounted **__fastcall glitch::video::allocateProcessBuffer<glitch::video::detail::SProcessBufferHeapBufferAllocator>(
        glitch::IReferenceCounted **a1,
        int a2,
        int a3,
        glitch::IReferenceCounted *a4,
        int a5,
        glitch::IReferenceCounted **a6,
        unsigned __int16 *a7)
{
  bool v7; // zf
  glitch::IReferenceCounted *v8; // r5
  int v11; // r10
  unsigned __int16 Strides; // r0
  unsigned int v15; // r8
  int v16; // r1
  void *v17; // r0
  glitch::IReferenceCounted *v18; // r0
  glitch::IReferenceCounted *v19; // [sp+Ch] [bp-10h]
  glitch::IReferenceCounted *v20; // [sp+14h] [bp-8h] BYREF

  v7 = a3 == a2;
  if ( a3 != a2 )
    v7 = a4 == nullptr;
  v8 = a4;
  if ( v7 )
    a4 = nullptr;
  v11 = v7;
  if ( v7 )
  {
    *a1 = a4;
  }
  else
  {
    Strides = glitch::video::detail::getStrides(v8, a5);
    *a7 = Strides;
    v15 = (a3 - a2) * Strides;
    v19 = *a6;
    v17 = (void *)glitch::core::allocProcessBuffer((glitch::core *)v15, v16);
    glitch::video::IBuffer::reset(v19, v15, v17, v11);
    v18 = *a6;
    v20 = *a6;
    if ( v20 && (++*((_DWORD *)v18 + 1), (v18 = v20) != nullptr) )
    {
      glitch::video::detail::assignBuffer(&v20, *a7, -(a2 * *a7), v8, a5);
      v18 = v20;
      v7 = v20 == nullptr;
      *a1 = v20;
      if ( !v7 )
      {
        ++*((_DWORD *)v18 + 1);
        v18 = v20;
      }
    }
    else
    {
      *a1 = nullptr;
    }
    if ( v18 )
      glitch::IReferenceCounted::drop(v18);
  }
  return a1;
}


// ===== 5abfa8 glitch::video::CDriverBinding::getProcessBuffer<glitch::video::IVideoDriver>(glitch::video::IVideoDriver *,uint,uint,uint,boost::intrusive_ptr<glitch::video::CVertexStreams> const&,bool) =====
int __fastcall glitch::video::CDriverBinding::getProcessBuffer<glitch::video::IVideoDriver>(
        int a1,
        int a2,
        int a3,
        int a4,
        glitch::IReferenceCounted *a5,
        int a6,
        char a7)
{
  _BOOL4 v10; // r2
  int v11; // r3
  int result; // r0
  glitch::IReferenceCounted *v13; // r3
  glitch::IReferenceCounted *v14; // r0
  glitch::IReferenceCounted *v15; // [sp+10h] [bp-14h] BYREF
  glitch::IReferenceCounted *v16; // [sp+14h] [bp-10h] BYREF
  glitch::IReferenceCounted *v17; // [sp+18h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v18[2]; // [sp+1Ch] [bp-8h] BYREF

  v10 = a3 == *(_DWORD *)(a1 + 8) && a4 == *(_DWORD *)(a1 + 12) && a5 == *(glitch::IReferenceCounted **)(a1 + 16);
  v11 = *(_DWORD *)(a1 + 4);
  if ( v11 && *(_DWORD *)(v11 + 8) && v10 )
  {
    v16 = *(glitch::IReferenceCounted **)(a1 + 4);
    ++*(_DWORD *)(v11 + 4);
    glitch::video::allocateProcessBuffer<glitch::video::detail::SReuseBufferAllocator>(
      &v15,
      a3,
      a4,
      a5,
      a6,
      &v16,
      (_WORD *)(a1 + 20));
    if ( v15 )
      glitch::IReferenceCounted::drop(v15);
    if ( v16 )
      glitch::IReferenceCounted::drop(v16);
    return 4;
  }
  else
  {
    if ( a7 )
    {
      glitch::video::detail::SNewBufferAllocator<glitch::video::IVideoDriver>::SNewBufferAllocator(
        v18,
        a2,
        (int *)(a1 + 4));
      glitch::video::allocateProcessBuffer<glitch::video::detail::SNewBufferAllocator<glitch::video::IVideoDriver>>(
        &v17,
        a3,
        a4,
        a5,
        a6,
        v18,
        (unsigned __int16 *)(a1 + 20));
      v13 = v17;
      if ( v17 )
        ++*((_DWORD *)v17 + 1);
      v14 = *(glitch::IReferenceCounted **)(a1 + 4);
      *(_DWORD *)(a1 + 4) = v13;
      if ( v14 )
        glitch::IReferenceCounted::drop(v14);
      if ( v17 )
        glitch::IReferenceCounted::drop(v17);
      if ( v18[0] )
        glitch::IReferenceCounted::drop(v18[0]);
      v11 = *(_DWORD *)(a1 + 4);
      if ( v11 && *(_DWORD *)(v11 + 8) )
        result = 4;
      else
        result = 8;
      *(_DWORD *)(a1 + 16) = a5;
      *(_DWORD *)(a1 + 8) = a3;
      *(_DWORD *)(a1 + 12) = a4;
      v10 = 1;
    }
    else
    {
      result = 4;
    }
    if ( v11 && *(_DWORD *)(v11 + 8) )
    {
      if ( !v10 )
        return 9;
    }
    else
    {
      return 16;
    }
  }
  return result;
}


// ===== 5ac158 glitch::video::IVideoDriver::releaseProcessBuffer(glitch::video::E_PROCESS_BUFFER_TYPE,boost::intrusive_ptr<glitch::video::CVertexStreams> const&,uint,uint,glitch::video::CDriverBinding *) =====
glitch::IReferenceCounted *__fastcall glitch::video::IVideoDriver::releaseProcessBuffer(
        glitch::IReferenceCounted *result,
        int a2,
        _DWORD *a3,
        int a4,
        int a5,
        int a6)
{
  glitch::IReferenceCounted *v6; // r4
  glitch::IReferenceCounted **v8; // r1
  glitch::IReferenceCounted *v9; // r3
  bool v10; // zf
  glitch::IReferenceCounted *v11; // [sp+Ch] [bp-14h] BYREF
  glitch::IReferenceCounted *v12; // [sp+10h] [bp-10h] BYREF
  glitch::IReferenceCounted *v13; // [sp+14h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v14; // [sp+18h] [bp-8h] BYREF
  glitch::IReferenceCounted *v15; // [sp+1Ch] [bp-4h] BYREF

  v6 = result;
  if ( a2 )
  {
    if ( a2 == 1 )
    {
      if ( *a3 )
      {
        glitch::video::detail::SNewBufferAllocator<glitch::video::IVideoDriver>::SNewBufferAllocator(
          &v13,
          (int)result,
          (int *)(a6 + 4));
        glitch::video::releaseProcessBuffer<glitch::video::detail::SNewBufferAllocator<glitch::video::IVideoDriver>>(
          &v12,
          a4,
          a5);
        if ( v12 )
          glitch::IReferenceCounted::drop(v12);
        result = v13;
        if ( v13 )
          return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v13);
      }
      else
      {
        glitch::video::detail::SNewBufferAllocator<glitch::video::IVideoDriver>::SNewBufferAllocator(
          &v11,
          (int)result,
          (int *)(a6 + 4));
        glitch::video::IBuffer::reset(*(glitch::video::IBuffer **)(a6 + 4), 0, nullptr, 1);
        result = v11;
        if ( v11 )
          return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v11);
      }
    }
  }
  else
  {
    v14 = nullptr;
    glitch::video::releaseProcessBuffer<glitch::video::detail::SProcessBufferHeapBufferAllocator>(
      &v15,
      a4,
      a5,
      (int)a3,
      (int)&v14);
    if ( v14 )
      glitch::IReferenceCounted::drop(v14);
    v8 = *((glitch::IReferenceCounted ***)v6 + 48);
    if ( v8 == *((glitch::IReferenceCounted ***)v6 + 49) )
    {
      std::vector<boost::intrusive_ptr<glitch::video::IBuffer>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IBuffer>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        (char **)v6 + 47,
        (int)v8,
        (int *)&v15);
    }
    else
    {
      v9 = v15;
      v10 = v15 == nullptr;
      *v8 = v15;
      if ( !v10 )
        ++*((_DWORD *)v9 + 1);
      *((_DWORD *)v6 + 48) += 4;
    }
    result = v15;
    if ( v15 )
      return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v15);
  }
  return result;
}


// ===== 5ac2a8 glitch::video::IVideoDriver::draw3DLines(glitch::core::vector3d<float> *,ushort *,glitch::video::SColor *,uint,uint) =====
void __fastcall glitch::video::IVideoDriver::draw3DLines(
        glitch::video::CVertexStreams **a1,
        void *a2,
        void *a3,
        void *a4,
        int a5,
        int a6)
{
  glitch::video::CVertexStreams *v9; // r3
  glitch::video::CVertexStreams *v10; // r3
  glitch::video::CVertexStreams *v11; // r3
  glitch::video::CVertexStreams *v12; // r3
  glitch::IReferenceCounted *v13; // r3
  glitch::IReferenceCounted *v15; // [sp+4h] [bp-1Ch]
  glitch::video::CVertexStreams *v16; // [sp+1Ch] [bp-4h]

  glitch::video::IBuffer::reset(a1[44], 12 * a5, a2, 0);
  v9 = a1[44];
  if ( *((_BYTE *)v9 + 17) != 4 && *((_DWORD *)v9 + 2) )
    *((_BYTE *)v9 + 18) |= 2u;
  glitch::video::IBuffer::reset(a1[45], 4 * a5, a4, 0);
  v10 = a1[45];
  if ( *((_BYTE *)v10 + 17) != 4 && *((_DWORD *)v10 + 2) )
    *((_BYTE *)v10 + 18) |= 2u;
  glitch::video::IBuffer::reset(a1[46], 4 * a6, a3, 0);
  v11 = a1[46];
  if ( *((_BYTE *)v11 + 17) != 4 && *((_DWORD *)v11 + 2) )
    *((_BYTE *)v11 + 18) |= 2u;
  *((_DWORD *)a1[42] + 2) = a5;
  v12 = a1[42];
  v16 = v12;
  if ( v12 )
    ++*(_DWORD *)v12;
  v13 = a1[46];
  v15 = v13;
  if ( v13 )
    ++*((_DWORD *)v13 + 1);
  glitch::video::IVideoDriver::draw((int)a1);
  if ( v15 )
    glitch::IReferenceCounted::drop(v15);
  if ( v16 )
  {
    if ( (*(_DWORD *)v16)-- == 1 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v16);
      LC_API_FREE_0(v16);
    }
  }
}


// ===== 5ac430 glitch::video::IVideoDriver::draw3DLine(glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,glitch::video::SColor) =====
void __fastcall glitch::video::IVideoDriver::draw3DLine(int a1, _DWORD *a2, int *a3, int a4)
{
  int v4; // r11
  int v5; // r10
  glitch::video::IBuffer *v7; // r0
  int v8; // r3
  glitch::video::CVertexStreams *v9; // r4
  int v11; // [sp+0h] [bp-54h]
  int v12; // [sp+4h] [bp-50h]
  int v13; // [sp+8h] [bp-4Ch]
  _DWORD v14[6]; // [sp+14h] [bp-40h] BYREF
  int v15; // [sp+2Ch] [bp-28h]
  int v16; // [sp+30h] [bp-24h]
  glitch::IReferenceCounted *v17; // [sp+34h] [bp-20h]
  int v18; // [sp+38h] [bp-1Ch]
  int v19; // [sp+3Ch] [bp-18h]
  int v20; // [sp+40h] [bp-14h]
  int v21; // [sp+44h] [bp-10h]
  __int16 v22; // [sp+48h] [bp-Ch]
  __int16 v23; // [sp+4Ah] [bp-Ah]
  glitch::video::CVertexStreams *v24; // [sp+4Ch] [bp-8h]

  v4 = a2[2];
  v5 = a2[1];
  v13 = a3[2];
  v11 = *a3;
  v12 = a3[1];
  v14[1] = *a2;
  v14[2] = v5;
  v14[3] = v4;
  v14[0] = a4;
  v15 = 0;
  v7 = *(glitch::video::IBuffer **)(a1 + 176);
  v14[5] = v11;
  v14[4] = a4;
  v15 = v12;
  v16 = v13;
  glitch::video::IBuffer::reset(v7, 0x20u, v14, 0);
  v8 = *(_DWORD *)(a1 + 176);
  if ( *(_BYTE *)(v8 + 17) != 4 && *(_DWORD *)(v8 + 8) )
    *(_BYTE *)(v8 + 18) |= 2u;
  *(_DWORD *)(*(_DWORD *)(a1 + 164) + 8) = 2;
  v24 = *(glitch::video::CVertexStreams **)(a1 + 164);
  if ( v24 )
    ++*(_DWORD *)v24;
  v20 = 0;
  v17 = nullptr;
  v18 = 0;
  v21 = 2;
  v19 = 2;
  v22 = 255;
  v23 = 3;
  glitch::video::IVideoDriver::draw(a1);
  if ( v17 )
    glitch::IReferenceCounted::drop(v17);
  v9 = v24;
  if ( v24 )
  {
    if ( (*(_DWORD *)v24)-- == 1 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v9);
      LC_API_FREE_0(v9);
    }
  }
}


// ===== 5ac5b8 glitch::video::IVideoDriver::draw2DLines(glitch::core::position2d<int> *,ushort *,glitch::video::SColor *,uint,uint) =====
void __fastcall glitch::video::IVideoDriver::draw2DLines(int a1, int a2, void *a3, void *a4, int a5, int a6)
{
  char *v8; // r4
  int v9; // r11
  int v10; // r8
  int v11; // r9
  float v12; // r0
  float *v13; // r3
  int v14; // r3
  int v15; // r3
  int v16; // r3
  glitch::video::CVertexStreams *v17; // r2
  glitch::IReferenceCounted *v18; // r2
  void *v19; // r1
  glitch::IReferenceCounted *v23; // [sp+14h] [bp-20h]
  glitch::video::CVertexStreams *v24; // [sp+2Ch] [bp-8h]

  v8 = (char *)glitch::core::allocProcessBuffer((glitch::core *)(12 * a5), a2);
  if ( a5 )
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = (float)*(int *)(a2 + v9 + 4);
      ++v11;
      v13 = (float *)&v8[v10];
      *(float *)&v8[v10] = (float)*(int *)(a2 + v9);
      v9 += 8;
      v13[1] = v12;
      v13[2] = 0.0;
      v10 += 12;
    }
    while ( v11 != a5 );
  }
  glitch::video::IBuffer::reset(*(glitch::video::IBuffer **)(a1 + 176), 12 * a5, v8, 0);
  v14 = *(_DWORD *)(a1 + 176);
  if ( *(_BYTE *)(v14 + 17) != 4 && *(_DWORD *)(v14 + 8) )
    *(_BYTE *)(v14 + 18) |= 2u;
  glitch::video::IBuffer::reset(*(glitch::video::IBuffer **)(a1 + 180), 4 * a5, a4, 0);
  v15 = *(_DWORD *)(a1 + 180);
  if ( *(_BYTE *)(v15 + 17) != 4 && *(_DWORD *)(v15 + 8) )
    *(_BYTE *)(v15 + 18) |= 2u;
  glitch::video::IBuffer::reset(*(glitch::video::IBuffer **)(a1 + 184), 4 * a6, a3, 0);
  v16 = *(_DWORD *)(a1 + 184);
  if ( *(_BYTE *)(v16 + 17) != 4 && *(_DWORD *)(v16 + 8) )
    *(_BYTE *)(v16 + 18) |= 2u;
  *(_DWORD *)(*(_DWORD *)(a1 + 168) + 8) = 2 * a6;
  v17 = *(glitch::video::CVertexStreams **)(a1 + 168);
  v24 = v17;
  if ( v17 )
    ++*(_DWORD *)v17;
  v18 = *(glitch::IReferenceCounted **)(a1 + 184);
  v23 = v18;
  if ( v18 )
    ++*((_DWORD *)v18 + 1);
  glitch::video::IVideoDriver::draw(a1);
  if ( v23 )
    glitch::IReferenceCounted::drop(v23);
  if ( v24 )
  {
    if ( (*(_DWORD *)v24)-- == 1 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v24);
      LC_API_FREE_0(v24);
    }
  }
  glitch::core::releaseProcessBuffer((glitch::core *)v8, v19);
}


// ===== 5ac7bc glitch::video::IVideoDriver::draw2DLine(glitch::core::position2d<int> const&,glitch::core::position2d<int> const&,glitch::video::SColor) =====
void __fastcall glitch::video::IVideoDriver::draw2DLine(int a1, int *a2, int *a3, unsigned int a4)
{
  char v4; // r6
  unsigned int v5; // r10
  char v6; // r8
  char v7; // r9
  int v9; // r0
  float v10; // r3
  int v11; // r0
  int v12; // r0
  float v13; // r6
  glitch::video::IBuffer *v14; // r0
  int v15; // r3
  glitch::video::CVertexStreams *v16; // r4
  _DWORD v18[2]; // [sp+Ch] [bp-40h] BYREF
  float v19; // [sp+14h] [bp-38h]
  int v20; // [sp+18h] [bp-34h]
  char v21; // [sp+1Ch] [bp-30h]
  char v22; // [sp+1Dh] [bp-2Fh]
  char v23; // [sp+1Eh] [bp-2Eh]
  char v24; // [sp+1Fh] [bp-2Dh]
  float v25; // [sp+20h] [bp-2Ch]
  float v26; // [sp+24h] [bp-28h]
  int v27; // [sp+28h] [bp-24h]
  glitch::IReferenceCounted *v28; // [sp+2Ch] [bp-20h]
  int v29; // [sp+30h] [bp-1Ch]
  int v30; // [sp+34h] [bp-18h]
  int v31; // [sp+38h] [bp-14h]
  int v32; // [sp+3Ch] [bp-10h]
  __int16 v33; // [sp+40h] [bp-Ch]
  __int16 v34; // [sp+42h] [bp-Ah]
  glitch::video::CVertexStreams *v35; // [sp+44h] [bp-8h]

  v19 = 0.0;
  v4 = a4;
  v5 = HIBYTE(a4);
  v6 = BYTE1(a4);
  v7 = BYTE2(a4);
  v9 = a2[1];
  v20 = 0;
  v18[0] = a4;
  v10 = (float)v9;
  v11 = *a2;
  v19 = v10;
  *(float *)&v18[1] = (float)v11;
  v20 = 0;
  v26 = 0.0;
  v12 = a3[1];
  v27 = 0;
  v21 = v4;
  v24 = v5;
  v23 = v7;
  v22 = v6;
  v13 = (float)v12;
  v25 = (float)*a3;
  v14 = *(glitch::video::IBuffer **)(a1 + 176);
  v26 = v13;
  v27 = 0;
  glitch::video::IBuffer::reset(v14, 0x20u, v18, 0);
  v15 = *(_DWORD *)(a1 + 176);
  if ( *(_BYTE *)(v15 + 17) != 4 && *(_DWORD *)(v15 + 8) )
    *(_BYTE *)(v15 + 18) |= 2u;
  *(_DWORD *)(*(_DWORD *)(a1 + 164) + 8) = 2;
  v35 = *(glitch::video::CVertexStreams **)(a1 + 164);
  if ( v35 )
    ++*(_DWORD *)v35;
  v31 = 0;
  v28 = nullptr;
  v29 = 0;
  v33 = 255;
  v32 = 2;
  v30 = 2;
  v34 = 3;
  glitch::video::IVideoDriver::draw(a1);
  if ( v28 )
    glitch::IReferenceCounted::drop(v28);
  v16 = v35;
  if ( v35 )
  {
    if ( (*(_DWORD *)v35)-- == 1 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v16);
      LC_API_FREE_0(v16);
    }
  }
}


// ===== 5ac950 glitch::video::IVideoDriver::drawFullScreenQuad(glitch::video::SColor const*) =====
int __fastcall glitch::video::IVideoDriver::drawFullScreenQuad(int a1, int a2)
{
  const void *v4; // r0
  const void *v5; // r0
  const void *v6; // r0
  glitch::video::IBuffer *v7; // r0
  int v8; // r3
  glitch::video::CVertexStreams *v9; // r5
  _BYTE v12[68]; // [sp+8h] [bp-12Ch] BYREF
  _BYTE v13[68]; // [sp+4Ch] [bp-E8h] BYREF
  _BYTE v14[68]; // [sp+90h] [bp-A4h] BYREF
  int v15; // [sp+D4h] [bp-60h] BYREF
  int v16; // [sp+D8h] [bp-5Ch]
  int v17; // [sp+DCh] [bp-58h]
  int v18; // [sp+E0h] [bp-54h]
  int v19; // [sp+E4h] [bp-50h] BYREF
  int v20; // [sp+E8h] [bp-4Ch]
  int v21; // [sp+ECh] [bp-48h]
  int v22; // [sp+F0h] [bp-44h]
  int v23; // [sp+F4h] [bp-40h] BYREF
  int v24; // [sp+F8h] [bp-3Ch]
  int v25; // [sp+FCh] [bp-38h]
  int v26; // [sp+100h] [bp-34h]
  int v27; // [sp+104h] [bp-30h] BYREF
  int v28; // [sp+108h] [bp-2Ch]
  int v29; // [sp+10Ch] [bp-28h]
  int v30; // [sp+110h] [bp-24h]
  glitch::IReferenceCounted *v31; // [sp+114h] [bp-20h]
  int v32; // [sp+118h] [bp-1Ch]
  int v33; // [sp+11Ch] [bp-18h]
  int v34; // [sp+120h] [bp-14h]
  int v35; // [sp+124h] [bp-10h]
  __int16 v36; // [sp+128h] [bp-Ch]
  __int16 v37; // [sp+12Ah] [bp-Ah]
  glitch::video::CVertexStreams *v38; // [sp+12Ch] [bp-8h]

  v4 = (const void *)(*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 112))(a1, 1);
  glitch::core::CMatrix4<float>::CMatrix4(v14, v4);
  v5 = (const void *)(*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)a1 + 112))(a1, 0);
  glitch::core::CMatrix4<float>::CMatrix4(v13, v5);
  v6 = (const void *)(*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 112))(a1, 2);
  glitch::core::CMatrix4<float>::CMatrix4(v12, v6);
  (*(void (__fastcall **)(int, int, int *))(*(_DWORD *)a1 + 108))(a1, 1, &glitch::core::IdentityMatrix);
  (*(void (__fastcall **)(int, _DWORD, int *))(*(_DWORD *)a1 + 108))(a1, 0, &glitch::core::IdentityMatrix);
  (*(void (__fastcall **)(int, int, int *))(*(_DWORD *)a1 + 108))(a1, 2, &glitch::core::IdentityMatrix);
  v16 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  memcpy(&v15, (const void *)a2, sizeof(v15));
  v16 = -1082130432;
  v17 = -1082130432;
  v18 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  memcpy(&v19, (const void *)(a2 + 4), sizeof(v19));
  v20 = -1082130432;
  v21 = 1065353216;
  v22 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v23 = 0;
  memcpy(&v23, (const void *)(a2 + 8), sizeof(v23));
  v25 = -1082130432;
  v24 = 1065353216;
  v26 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  memcpy(&v27, (const void *)(a2 + 12), sizeof(v27));
  v7 = *(glitch::video::IBuffer **)(a1 + 176);
  v29 = 1065353216;
  v30 = 0;
  v28 = 1065353216;
  glitch::video::IBuffer::reset(v7, 0x40u, &v15, 0);
  v8 = *(_DWORD *)(a1 + 176);
  if ( *(_BYTE *)(v8 + 17) != 4 && *(_DWORD *)(v8 + 8) )
    *(_BYTE *)(v8 + 18) |= 2u;
  *(_DWORD *)(*(_DWORD *)(a1 + 164) + 8) = 4;
  v38 = *(glitch::video::CVertexStreams **)(a1 + 164);
  if ( v38 )
    ++*(_DWORD *)v38;
  v37 = 4;
  v33 = 4;
  v35 = 4;
  v36 = 255;
  v34 = 0;
  v31 = nullptr;
  v32 = 0;
  glitch::video::IVideoDriver::draw(a1);
  if ( v31 )
    glitch::IReferenceCounted::drop(v31);
  v9 = v38;
  if ( v38 )
  {
    if ( (*(_DWORD *)v38)-- == 1 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v9);
      LC_API_FREE_0(v9);
    }
  }
  (*(void (__fastcall **)(int, int, _BYTE *))(*(_DWORD *)a1 + 108))(a1, 1, v14);
  (*(void (__fastcall **)(int, _DWORD, _BYTE *))(*(_DWORD *)a1 + 108))(a1, 0, v13);
  return (*(int (__fastcall **)(int, int, _BYTE *))(*(_DWORD *)a1 + 108))(a1, 2, v12);
}


// ===== 5acc34 glitch::video::IVideoDriver::getProcessBuffer(glitch::video::E_PROCESS_BUFFER_TYPE,uint,uint,uint,boost::intrusive_ptr<glitch::video::CVertexStreams> const&,glitch::video::CDriverBinding **,bool) =====
int __fastcall glitch::video::IVideoDriver::getProcessBuffer(
        int a1,
        int a2,
        int a3,
        int a4,
        glitch::IReferenceCounted *a5,
        glitch::video::CVertexStreams **a6,
        int *a7,
        char a8)
{
  int v11; // r3
  int v12; // r2
  int v14; // r0
  _DWORD *v15; // r3
  int v16; // r9
  glitch::IReferenceCounted *v17; // r0
  int v18; // r12
  int v19; // r2
  int v20; // r0
  int v21; // lr
  int v22; // r2
  int v23; // r12
  int v24; // r3
  int v25; // r2
  _DWORD *v26; // lr
  int v27; // r2
  int v28; // r4
  _DWORD *v29; // r3
  glitch::IReferenceCounted *v30; // r3
  int v31; // r0
  int v32; // r5
  int *v33; // r2
  int v34; // r5
  int v35; // r3
  int v36; // r1
  glitch::IReferenceCounted *v37; // r3
  glitch::IReferenceCounted *v38; // r0
  glitch::IReferenceCounted **v39; // r2
  glitch::IReferenceCounted *v40; // r5
  bool v41; // zf
  glitch::IReferenceCounted **v42; // r1
  glitch::IReferenceCounted *v43; // r3
  glitch::IReferenceCounted *v44; // [sp+10h] [bp-10h] BYREF
  glitch::IReferenceCounted *v45; // [sp+14h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v46; // [sp+18h] [bp-8h] BYREF
  unsigned __int16 v47; // [sp+1Eh] [bp-2h] BYREF

  if ( !a2 )
  {
    if ( a7 )
    {
      v11 = *a7;
      if ( *a7 )
      {
        v12 = *(_DWORD *)(v11 + 4);
        if ( v12 )
        {
          if ( *(_DWORD *)(v12 + 8) )
            return 16;
        }
        if ( *(_DWORD *)(v11 + 24) )
          return 16;
      }
    }
    v35 = *(_DWORD *)(a1 + 192);
    v36 = *(_DWORD *)(a1 + 188);
    v47 = 0;
    if ( v36 == v35 )
    {
      (*(void (__fastcall **)(glitch::IReferenceCounted **, int))(*(_DWORD *)a1 + 120))(&v46, a1);
      v42 = *(glitch::IReferenceCounted ***)(a1 + 192);
      if ( v42 == *(glitch::IReferenceCounted ***)(a1 + 196) )
      {
        std::vector<boost::intrusive_ptr<glitch::video::IBuffer>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IBuffer>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
          (char **)(a1 + 188),
          (int)v42,
          (int *)&v46);
      }
      else
      {
        v43 = v46;
        v41 = v46 == nullptr;
        *v42 = v46;
        if ( !v41 )
          ++*((_DWORD *)v43 + 1);
        *(_DWORD *)(a1 + 192) += 4;
      }
      if ( v46 )
        glitch::IReferenceCounted::drop(v46);
      v35 = *(_DWORD *)(a1 + 192);
    }
    v37 = *(glitch::IReferenceCounted **)(v35 - 4);
    v45 = v37;
    if ( v37 )
      ++*((_DWORD *)v37 + 1);
    glitch::video::allocateProcessBuffer<glitch::video::detail::SProcessBufferHeapBufferAllocator>(
      &v44,
      a3,
      a4,
      a5,
      (int)a6,
      &v45,
      &v47);
    if ( v45 )
      glitch::IReferenceCounted::drop(v45);
    v38 = v44;
    if ( !v44 )
      return 8;
    v39 = (glitch::IReferenceCounted **)(*(_DWORD *)(a1 + 192) - 4);
    *(_DWORD *)(a1 + 192) = v39;
    if ( *v39 )
    {
      glitch::IReferenceCounted::drop(*v39);
      v38 = v44;
    }
    if ( v38 )
    {
      glitch::IReferenceCounted::drop(v38);
      return 4;
    }
    return 4;
  }
  if ( a2 != 1 )
    return 4;
  v14 = glitch::video::IVideoDriver::ensureBinding(a1, a7);
  v15 = *(_DWORD **)(v14 + 24);
  v16 = v14;
  if ( !v15 )
    return glitch::video::CDriverBinding::getProcessBuffer<glitch::video::IVideoDriver>(
             v14,
             a1,
             a3,
             a4,
             a5,
             (int)a6,
             a8);
  v17 = *(glitch::IReferenceCounted **)(v14 + 4);
  if ( v17 )
  {
    *(_DWORD *)(v16 + 4) = 0;
    glitch::IReferenceCounted::drop(v17);
    v15 = *(_DWORD **)(v16 + 24);
  }
  *(_WORD *)(v16 + 20) = 0;
  *(_DWORD *)(v16 + 8) = 0;
  *(_DWORD *)(v16 + 12) = 0;
  *(_DWORD *)(v16 + 16) = 0;
  v18 = *(_DWORD *)(v16 + 28);
  v19 = v15[5];
  v20 = v15[8];
  v21 = *(_DWORD *)(v19 + 8 * v18);
  v22 = *(_DWORD *)(v19 + 8 * v18 + 4);
  v23 = v15[28];
  v24 = v15[2];
  v25 = v23 * (*(unsigned __int16 *)(v20 + 20 * v21 + 12) + v22);
  v26 = *(_DWORD **)(v24 + v25);
  v27 = v24 + v25;
  v28 = *(_DWORD *)(v20 + 20 * *(_DWORD *)(*v26 + 8 * *(_DWORD *)(v27 + 4)));
  if ( v28 )
  {
    ++*(_DWORD *)(v28 + 4);
    v29 = *(_DWORD **)(v16 + 24);
    v27 = v29[2]
        + v29[28]
        * (*(unsigned __int16 *)(v29[8] + 20 * *(_DWORD *)(v29[5] + 8 * *(_DWORD *)(v16 + 28)) + 12)
         + *(_DWORD *)(v29[5] + 8 * *(_DWORD *)(v16 + 28) + 4));
  }
  v31 = *(unsigned __int16 *)(v27 + 36);
  v44 = *(glitch::IReferenceCounted **)(v28 + 20);
  v30 = v44;
  if ( v44 )
    v27 = *(_DWORD *)v44;
  v32 = v31 - a3;
  if ( v44 )
  {
    *(_DWORD *)v44 = v27 + 1;
    v30 = v44;
  }
  v33 = (int *)((char *)v30 + 20);
  v34 = *((unsigned __int16 *)v30 + 17) * v32;
  if ( a5 != (glitch::IReferenceCounted *)((char *)&dword_0 + 1) )
  {
    if ( a5 != (glitch::IReferenceCounted *)((char *)&elf_hash_chain[16302] + 1) )
    {
      glitch::video::CVertexStreams::setStreams(*a6, (int *)&v44, (int)a5, v34, 1u);
      goto LABEL_35;
    }
    glitch::video::CVertexStreams::setStream(
      *a6,
      (int)*a6 + 16 * *((unsigned __int8 *)*a6 + 12) + 36,
      &v33[4 * (unsigned __int8)(*((_BYTE *)v30 + 12) + 1)],
      v34);
    v33 = (int *)((char *)v44 + 20);
  }
  glitch::video::CVertexStreams::setStream(*a6, (int)*a6 + 20, v33, v34);
LABEL_35:
  v40 = v44;
  if ( v44 )
  {
    v41 = (*(_DWORD *)v44)-- == 1;
    if ( v41 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v40);
      LC_API_FREE_0(v40);
    }
  }
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)v28);
  return 5;
}


// ===== 5acfd0 glitch::video::IVideoDriver::forceCommitTexture(boost::intrusive_ptr<glitch::video::ITexture> const&) =====
void __fastcall glitch::video::IVideoDriver::forceCommitTexture(int a1, int a2)
{
  int v4; // r7
  int v5; // r6
  int v6; // r2
  glitch::video::CMaterial *v7; // r6
  int v8; // r10
  int v9; // r8
  int v10; // r1
  glitch::video::CMaterial *v11; // r5
  bool v12; // zf
  glitch::IReferenceCounted *v13; // [sp+0h] [bp-Ch] BYREF
  glitch::video::CMaterial *v14; // [sp+4h] [bp-8h] BYREF

  if ( (*(_DWORD *)(a1 + 136) & 0x2000) != 0 )
  {
    v4 = *(_DWORD *)(a1 + 136) & 0x100;
    if ( v4 )
    {
      (*(void (__fastcall **)(int, int, _DWORD))(*(_DWORD *)a1 + 160))(a1, 256, 0);
      v4 = 1;
    }
    v5 = *(_DWORD *)(a1 + 220);
    v6 = *(unsigned __int16 *)(v5 + 76);
    if ( v6 == 0xFFFF )
      LOBYTE(v6) = glitch::video::CMaterialRendererManager::createMaterialRenderer(*(_DWORD *)(a1 + 220), 16);
    glitch::video::CMaterialRendererManager::getMaterialInstance(
      (glitch::video::CMaterialRendererManager *)&v14,
      v5,
      v6);
    glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
      v14,
      *(_DWORD *)(*(_DWORD *)a2 + 56) & 3,
      0,
      a2);
    v7 = *(glitch::video::CMaterial **)(a1 + 236);
    v8 = *(_DWORD *)(a1 + 232);
    v9 = *(unsigned __int8 *)(a1 + 248);
    glitch::video::IVideoDriver::setMaterialInternal(a1, v14, *(_DWORD *)(*(_DWORD *)a2 + 56) & 3, a1 + 324);
    v10 = *(_DWORD *)(*(_DWORD *)a2 + 56);
    v13 = nullptr;
    glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
      v14,
      v10 & 3,
      0,
      &v13);
    if ( v13 )
      glitch::IReferenceCounted::drop(v13);
    if ( v7 )
    {
      glitch::video::IVideoDriver::setMaterialInternal(a1, v7, v9, v8);
    }
    else
    {
      *(_DWORD *)(a1 + 236) = 0;
      *(_BYTE *)(a1 + 248) = v9;
      *(_DWORD *)(a1 + 232) = v8;
    }
    v11 = v14;
    if ( v14 && (v12 = *(_DWORD *)v14 == 1, --*(_DWORD *)v14, v12) )
    {
      glitch::video::CMaterial::~CMaterial(v11);
      LC_API_FREE_0(v11);
      if ( v4 == ((*(_DWORD *)(a1 + 136) >> 8) & 1) )
        return;
    }
    else if ( v4 == ((*(_DWORD *)(a1 + 136) >> 8) & 1) )
    {
      return;
    }
    (*(void (__fastcall **)(int, int, int))(*(_DWORD *)a1 + 160))(a1, 256, v4);
  }
}


// ===== 5ad15c glitch::video::IVideoDriver::resetBatchMaterial(boost::intrusive_ptr<glitch::video::CMaterial> const&,uchar) =====
void __fastcall glitch::video::IVideoDriver::resetBatchMaterial(_DWORD *a1, glitch::video::CMaterial **a2, int a3)
{
  glitch::IReferenceCounted *v6; // r3
  glitch::IReferenceCounted *v7; // r0
  int v8; // r1
  glitch::video::CMaterial *v9; // r3
  bool v10; // zf
  void (__fastcall *v11)(glitch::video::CMaterial **, int, glitch::video::CMaterial **, int); // r12
  glitch::video::CMaterial *v12; // r3
  glitch::video::CMaterial *v13; // r5
  glitch::video::CMaterial *v14; // r5
  glitch::video::CMaterial *v15; // r5
  void (*v16)(void); // r3
  glitch::IReferenceCounted *v17; // r0
  glitch::video::CMaterial *v18; // r5
  glitch::IReferenceCounted *v19; // [sp+0h] [bp-10h]
  glitch::video::CMaterial *v20; // [sp+4h] [bp-Ch] BYREF
  glitch::video::CMaterial *v21; // [sp+8h] [bp-8h] BYREF
  glitch::IReferenceCounted *v22; // [sp+Ch] [bp-4h] BYREF

  if ( *a2 )
  {
    glitch::video::IShader::getBatchBaker((glitch::video::IShader *)&v22);
    v6 = v22;
    if ( v22 )
      ++*((_DWORD *)v22 + 1);
    v7 = (glitch::IReferenceCounted *)a1[74];
    a1[74] = v6;
    if ( v7 )
      glitch::IReferenceCounted::drop(v7);
    if ( v22 )
      glitch::IReferenceCounted::drop(v22);
    v8 = a1[74];
    v9 = *a2;
    v10 = *a2 == nullptr;
    v11 = *(void (__fastcall **)(glitch::video::CMaterial **, int, glitch::video::CMaterial **, int))(*(_DWORD *)v8 + 16);
    v21 = *a2;
    if ( !v10 )
      ++*(_DWORD *)v9;
    v11(&v20, v8, &v21, a3);
    v12 = v20;
    if ( v20 )
      ++*(_DWORD *)v20;
    v13 = (glitch::video::CMaterial *)a1[73];
    a1[73] = v12;
    if ( v13 && (v10 = *(_DWORD *)v13 == 1, --*(_DWORD *)v13, v10) )
    {
      glitch::video::CMaterial::~CMaterial(v13);
      LC_API_FREE_0(v13);
      v14 = v20;
      if ( !v20 )
        goto LABEL_16;
    }
    else
    {
      v14 = v20;
      if ( !v20 )
        goto LABEL_16;
    }
    v10 = (*(_DWORD *)v14)-- == 1;
    if ( v10 )
    {
      glitch::video::CMaterial::~CMaterial(v14);
      LC_API_FREE_0(v14);
      v15 = v21;
      if ( v21 )
      {
LABEL_17:
        v10 = (*(_DWORD *)v15)-- == 1;
        if ( v10 )
        {
          glitch::video::CMaterial::~CMaterial(v15);
          LC_API_FREE_0(v15);
        }
      }
LABEL_19:
      v16 = *(void (**)(void))(*(_DWORD *)a1[74] + 24);
      v19 = (glitch::IReferenceCounted *)a1[72];
      if ( v19 )
        ++*((_DWORD *)v19 + 1);
      v16();
      if ( v19 )
        glitch::IReferenceCounted::drop(v19);
      return;
    }
LABEL_16:
    v15 = v21;
    if ( v21 )
      goto LABEL_17;
    goto LABEL_19;
  }
  v17 = (glitch::IReferenceCounted *)a1[74];
  a1[74] = 0;
  if ( v17 )
    glitch::IReferenceCounted::drop(v17);
  v18 = (glitch::video::CMaterial *)a1[73];
  a1[73] = 0;
  if ( v18 )
  {
    v10 = (*(_DWORD *)v18)-- == 1;
    if ( v10 )
    {
      glitch::video::CMaterial::~CMaterial(v18);
      LC_API_FREE_0(v18);
    }
  }
}


// ===== 5ad368 glitch::video::IVideoDriver::setMaterial(boost::intrusive_ptr<glitch::video::CMaterial> const&,uchar,boost::intrusive_ptr<glitch::video::CVertexAttributeMap> const*) =====
void __fastcall glitch::video::IVideoDriver::setMaterial(int a1, glitch::video::CMaterial **a2, int a3, int a4)
{
  glitch::video::CMaterial *v8; // r8
  glitch::video::CMaterial *v9; // r10
  _BOOL4 v10; // r8
  int v11; // r0
  unsigned __int8 (*v12)(void); // r3
  int v13; // r9
  glitch::video::CMaterial *v15; // r0
  void *v16; // r1
  glitch::video::CMaterial *v17; // r3
  glitch::IReferenceCounted *v18; // r0
  void (*v19)(void); // r3
  glitch::IReferenceCounted *v20; // [sp+0h] [bp-8h]
  glitch::video::CMaterial *v21; // [sp+4h] [bp-4h]

  v8 = *a2;
  if ( (*(_DWORD *)(a1 + 136) & 0x100) != 0 )
  {
    v10 = false;
    if ( v8 )
    {
      v9 = *(glitch::video::CMaterial **)(a1 + 304);
      if ( v9 == v8
        && ((*((_DWORD *)v9 + 3) >> glitch::video::CMaterial::getTechnique(*(glitch::video::CMaterial **)(a1 + 304))) & 1) == 0
        && *(unsigned __int8 *)(a1 + 248) == a3 )
      {
        v10 = true;
      }
    }
    v11 = *(_DWORD *)(a1 + 296);
    if ( v11 )
    {
      if ( !v10 )
      {
        v12 = *(unsigned __int8 (**)(void))(*(_DWORD *)v11 + 28);
        v21 = *a2;
        if ( *a2 )
          ++*(_DWORD *)*a2;
        v13 = v12() ^ 1;
        if ( v21 )
        {
          if ( (*(_DWORD *)v21)-- == 1 )
          {
            glitch::video::CMaterial::~CMaterial(v21);
            LC_API_FREE_0(v21);
          }
        }
        if ( v13 )
        {
          (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 508))(a1);
          glitch::video::IVideoDriver::resetBatchMaterial((_DWORD *)a1, a2, a3);
          goto LABEL_15;
        }
      }
      if ( (*(_DWORD *)(a1 + 312) & 8) != 0 )
      {
        v19 = *(void (**)(void))(**(_DWORD **)(a1 + 296) + 24);
        v20 = *(glitch::IReferenceCounted **)(a1 + 288);
        if ( v20 )
          ++*((_DWORD *)v20 + 1);
        v19();
        if ( v20 )
          glitch::IReferenceCounted::drop(v20);
      }
    }
    else
    {
      glitch::video::IVideoDriver::resetBatchMaterial((_DWORD *)a1, a2, a3);
    }
    if ( v10 )
    {
LABEL_30:
      v8 = *(glitch::video::CMaterial **)(a1 + 292);
      a3 = 0;
      *(_DWORD *)(a1 + 312) &= ~8u;
      goto LABEL_19;
    }
LABEL_15:
    v15 = *(glitch::video::CMaterial **)(a1 + 300);
    if ( v15 )
    {
      glitch::video::CMaterial::~CMaterial(v15);
      glitch::core::releaseProcessBuffer(*(glitch::core **)(a1 + 300), v16);
      *(_DWORD *)(a1 + 304) = 0;
      *(_BYTE *)(a1 + 308) = -1;
      *(_DWORD *)(a1 + 300) = 0;
    }
    if ( *a2 )
    {
      *(_DWORD *)(a1 + 300) = glitch::video::CMaterial::cloneHeap(*a2, nullptr);
      v17 = *a2;
      *(_BYTE *)(a1 + 308) = a3;
      *(_DWORD *)(a1 + 304) = v17;
      glitch::video::CMaterial::unsetParametersDirty(*a2, a3);
      v8 = *(glitch::video::CMaterial **)(a1 + 292);
      a3 = 0;
      *(_DWORD *)(a1 + 312) &= ~8u;
      goto LABEL_19;
    }
    goto LABEL_30;
  }
  v18 = *(glitch::IReferenceCounted **)(a1 + 296);
  *(_DWORD *)(a1 + 296) = 0;
  if ( v18 )
  {
    glitch::IReferenceCounted::drop(v18);
    if ( v8 )
      goto LABEL_20;
    goto LABEL_23;
  }
LABEL_19:
  if ( v8 )
  {
LABEL_20:
    glitch::video::IVideoDriver::setMaterialInternal(a1, v8, a3, a4);
    return;
  }
LABEL_23:
  *(_DWORD *)(a1 + 232) = a4;
  *(_DWORD *)(a1 + 236) = v8;
  *(_BYTE *)(a1 + 248) = -1;
}


// ===== 5ad5b4 glitch::video::IVideoDriver::~IVideoDriver() =====
void __fastcall glitch::video::IVideoDriver::~IVideoDriver(glitch::video::IVideoDriver *this)
{
  int v1; // r2
  void *v3; // r4
  void *v4; // r4
  void *v5; // r4
  void *v6; // r0
  glitch::video::IVideoDriver *v7; // r4
  _DWORD *v8; // r3
  void *v9; // r0
  bool v10; // zf
  glitch::video::CVertexStreams *v11; // r4
  glitch::IReferenceCounted *v12; // r0
  glitch::video::CMaterial *v13; // r4
  int v14; // r3
  glitch::IReferenceCounted *v15; // r0
  glitch::IReferenceCounted *v16; // r0
  glitch::IReferenceCounted *v17; // r0
  glitch::video::CVertexStreams *v18; // r4
  glitch::video::CVertexStreams *v19; // r4
  glitch::video::CVertexStreams *v20; // r4
  _DWORD *v21; // r0
  _DWORD *v22; // r2
  char *v23; // r0
  char *v24; // r0

  v1 = *((_DWORD *)this + 78);
  *(_DWORD *)this = off_977338;
  if ( (v1 & 0x10) != 0 )
  {
    v3 = *((void **)this + 55);
    if ( v3 )
    {
      glitch::video::CMaterialRendererManager::~CMaterialRendererManager(*((glitch::video::CMaterialRendererManager **)this
                                                                         + 55));
      LC_API_FREE_0(v3);
      v1 = *((_DWORD *)this + 78);
    }
  }
  if ( (v1 & 0x20) != 0 )
  {
    v4 = *((void **)this + 56);
    if ( !v4
      || (glitch::video::CTextureManager::~CTextureManager(*((glitch::video::CTextureManager **)this + 56)),
          LC_API_FREE_0(v4),
          (*((_DWORD *)this + 78) & 0x20) != 0) )
    {
      v5 = *((void **)this + 57);
      if ( v5 )
      {
        glitch::video::CGlobalMaterialParameterManager::~CGlobalMaterialParameterManager(*((glitch::video::CGlobalMaterialParameterManager **)this
                                                                                         + 57));
        LC_API_FREE_0(v5);
      }
    }
  }
  v6 = *((void **)this + 85);
  if ( v6 )
    GlitchFree(v6);
  v7 = (glitch::video::IVideoDriver *)((char *)this + 340);
  do
  {
    v8 = *((_DWORD **)v7 - 1);
    if ( v8 )
    {
      v9 = *((void **)v7 - 1);
      v10 = (*v8)-- == 1;
      if ( v10 )
        LC_API_FREE_0(v9);
    }
    v7 = (glitch::video::IVideoDriver *)((char *)v7 - 4);
  }
  while ( v7 != (glitch::video::IVideoDriver *)((char *)this + 324) );
  v11 = *((glitch::video::CVertexStreams **)this + 80);
  if ( v11 )
  {
    v10 = (*(_DWORD *)v11)-- == 1;
    if ( v10 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v11);
      LC_API_FREE_0(v11);
    }
  }
  v12 = *((glitch::IReferenceCounted **)this + 74);
  if ( v12 )
    glitch::IReferenceCounted::drop(v12);
  v13 = *((glitch::video::CMaterial **)this + 73);
  if ( v13 )
  {
    v10 = (*(_DWORD *)v13)-- == 1;
    if ( v10 )
    {
      glitch::video::CMaterial::~CMaterial(v13);
      LC_API_FREE_0(v13);
    }
  }
  std::vector<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 68);
  v14 = *((_DWORD *)this + 54);
  if ( v14 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v14 + 4))(*((_DWORD *)this + 54));
  std::vector<boost::intrusive_ptr<glitch::video::IRenderTarget>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IRenderTarget>,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 50);
  std::vector<boost::intrusive_ptr<glitch::video::IBuffer>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IBuffer>,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 47);
  v15 = *((glitch::IReferenceCounted **)this + 46);
  if ( v15 )
    glitch::IReferenceCounted::drop(v15);
  v16 = *((glitch::IReferenceCounted **)this + 45);
  if ( v16 )
    glitch::IReferenceCounted::drop(v16);
  v17 = *((glitch::IReferenceCounted **)this + 44);
  if ( v17 )
    glitch::IReferenceCounted::drop(v17);
  v18 = *((glitch::video::CVertexStreams **)this + 43);
  if ( v18 )
  {
    v10 = (*(_DWORD *)v18)-- == 1;
    if ( v10 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v18);
      LC_API_FREE_0(v18);
    }
  }
  v19 = *((glitch::video::CVertexStreams **)this + 42);
  if ( v19 )
  {
    v10 = (*(_DWORD *)v19)-- == 1;
    if ( v10 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v19);
      LC_API_FREE_0(v19);
    }
  }
  v20 = *((glitch::video::CVertexStreams **)this + 41);
  if ( v20 )
  {
    v10 = (*(_DWORD *)v20)-- == 1;
    if ( v10 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v20);
      LC_API_FREE_0(v20);
    }
  }
  v21 = *((_DWORD **)this + 16);
  if ( v21 )
  {
    v10 = (*v21)-- == 1;
    if ( v10 )
    {
      if ( !*((_BYTE *)v21 + 84) )
      {
        v22 = (_DWORD *)v21[20];
        *v22 = glitch::memory::Matrix4Pool;
        glitch::memory::Matrix4Pool = (int)v22;
      }
      v21[20] = 0;
      LC_API_FREE_0(v21);
    }
  }
  v23 = *((char **)this + 13);
  if ( v23 != (char *)this + 32 && v23 )
    GlitchFree(v23);
  v24 = *((char **)this + 7);
  if ( v24 != (char *)this + 8 )
  {
    if ( v24 )
      GlitchFree(v24);
  }
}


// ===== 5ad8ac glitch::video::IVideoDriver::drawPendingBatch(void) =====
int __fastcall glitch::video::IVideoDriver::drawPendingBatch(glitch::video::IVideoDriver *this)
{
  glitch::scene::CAppendMeshBuffer *v1; // r5
  _BYTE *v3; // r6
  char v4; // r3
  _BYTE *v5; // r6
  char v6; // r3
  char v7; // r2
  const void *v8; // r0
  int v9; // r6
  int v10; // r5
  int v11; // r0
  int v12; // r2
  void (__fastcall *v13)(glitch::video::IVideoDriver *, glitch::video::CVertexStreams **, int, _DWORD); // r12
  glitch::video::CVertexStreams *v14; // r8
  int v16; // r5
  unsigned int v17; // r1
  int v18; // r5
  int v19; // r1
  unsigned __int8 *v20; // r2
  unsigned __int8 *v21; // r3
  unsigned __int8 *v22; // r12
  void (__fastcall *v24)(glitch::video::IVideoDriver *, int, _DWORD *); // r8
  int v25; // t1
  _DWORD v26[16]; // [sp+4h] [bp-8Ch] BYREF
  char v27; // [sp+44h] [bp-4Ch]
  _BYTE v28[64]; // [sp+48h] [bp-48h] BYREF
  int v29; // [sp+88h] [bp-8h]
  glitch::video::CVertexStreams *v30; // [sp+8Ch] [bp-4h] BYREF

  v1 = *((glitch::scene::CAppendMeshBuffer **)this + 72);
  if ( !v1 )
    return 1;
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
        goto LABEL_5;
    }
    else
    {
      v3[19] = ((v4 & 0x1F) - 1) | v4 & 0xE0;
      v5 = *((_BYTE **)v1 + 23);
      v6 = v5[19];
      v7 = v6 & 0x1F;
      if ( (v6 & 0x1Fu) > 1 )
      {
LABEL_5:
        v5[19] = (v7 - 1) | v6 & 0xE0;
LABEL_6:
        *((_DWORD *)v1 + 21) = 0;
        *((_DWORD *)v1 + 20) = 0;
        v1 = *((glitch::scene::CAppendMeshBuffer **)this + 72);
        goto LABEL_7;
      }
    }
    if ( (v5[18] & 0x20) != 0 )
      (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)v5 + 24))(v5);
    v5[19] = 0;
    goto LABEL_6;
  }
LABEL_7:
  if ( *((_DWORD *)v1 + 15) / *((_DWORD *)v1 + 18) && *((_DWORD *)v1 + 17) / *((_DWORD *)v1 + 19) )
  {
    glitch::scene::CAppendMeshBuffer::setup(v1);
    v8 = (const void *)(*(int (__fastcall **)(glitch::video::IVideoDriver *, int))(*(_DWORD *)this + 112))(this, 1);
    glitch::core::CMatrix4<float>::CMatrix4(v28, v8);
    if ( (_BYTE)v29 )
    {
      v9 = 0;
    }
    else
    {
      v24 = *(void (__fastcall **)(glitch::video::IVideoDriver *, int, _DWORD *))(*(_DWORD *)this + 108);
      v9 = 1;
      LC_API_MEMSET_0(v26, 0, 0x40u);
      v27 = 1;
      v26[15] = 1065353216;
      v26[0] = 1065353216;
      v26[5] = 1065353216;
      v26[10] = 1065353216;
      v24(this, 1, v26);
    }
    v10 = *((_DWORD *)this + 58);
    v11 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 74) + 20))(*((_DWORD *)this + 74));
    v12 = *((_DWORD *)this + 72);
    *((_DWORD *)this + 58) = v11;
    v13 = *(void (__fastcall **)(glitch::video::IVideoDriver *, glitch::video::CVertexStreams **, int, _DWORD))(*(_DWORD *)this + 512);
    v30 = *(glitch::video::CVertexStreams **)(v12 + 20);
    if ( v30 )
    {
      ++*(_DWORD *)v30;
      v12 = *((_DWORD *)this + 72);
    }
    v13(this, &v30, v12 + 24, 0);
    v14 = v30;
    if ( v30 )
    {
      if ( (*(_DWORD *)v30)-- == 1 )
      {
        glitch::video::CVertexStreams::~CVertexStreams(v14);
        LC_API_FREE_0(v14);
      }
    }
    *((_DWORD *)this + 58) = v10;
    if ( v9 )
      (*(void (__fastcall **)(glitch::video::IVideoDriver *, int, _BYTE *))(*(_DWORD *)this + 108))(this, 1, v28);
    glitch::scene::CAppendMeshBuffer::clear(*((glitch::scene::CAppendMeshBuffer **)this + 72));
    v16 = *((_DWORD *)this + 68);
    v17 = (*((_DWORD *)this + 71) + 1) % (unsigned int)((*((_DWORD *)this + 69) - v16) >> 2);
    *((_DWORD *)this + 71) = v17;
    v18 = *(_DWORD *)(v16 + 4 * v17);
    v19 = *((_DWORD *)this + 72);
    v20 = *(unsigned __int8 **)(v18 + 100);
    v21 = *(unsigned __int8 **)(v19 + 100);
    v22 = *(unsigned __int8 **)(v19 + 104);
    if ( v22 - v21 != *(_DWORD *)(v18 + 104) - (_DWORD)v20 )
      goto LABEL_20;
    if ( v22 == v21 )
      goto LABEL_21;
    if ( *v21 != *v20 )
    {
LABEL_20:
      *((_DWORD *)this + 78) |= 8u;
LABEL_21:
      *((_DWORD *)this + 72) = v18;
      return 1;
    }
    while ( ++v21 != v22 )
    {
      v25 = *++v20;
      if ( *v21 != v25 )
        goto LABEL_20;
    }
    *((_DWORD *)this + 72) = v18;
  }
  return 1;
}


// ===== 5adb9c glitch::video::IVideoDriver::flush(void) =====
// attributes: thunk
int __fastcall glitch::video::IVideoDriver::flush(glitch::video::IVideoDriver *this)
{
  return glitch::video::IVideoDriver::drawPendingBatch(this);
}


// ===== 5adba0 glitch::video::IVideoDriver::appendBatch(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&,glitch::video::CPrimitiveStream const&,glitch::video::CDriverBinding **) =====
int __fastcall glitch::video::IVideoDriver::appendBatch(int a1, int *a2, int a3, int a4)
{
  _DWORD *v4; // r8
  unsigned int v10; // r8
  unsigned int v11; // r10
  glitch::scene::CAppendMeshBuffer *v12; // r8
  unsigned int PrimitiveCount; // r0
  int v14; // r8
  int v15; // r10
  int v16; // r10
  int v17; // r9
  int v18; // r11
  unsigned int v19; // r0
  _DWORD *v20; // r6
  unsigned int v21; // r10
  int v22; // r11
  int v23; // r0
  int v24; // r3
  _DWORD *v25; // r4
  unsigned int v26; // kr04_4
  unsigned int v27; // r3
  int v28; // r2
  int v29; // r3
  int v30; // r0
  void (*v31)(void); // r3
  int v32; // r3
  int v33; // r0
  void (*v34)(void); // r3
  int v35; // r3
  unsigned int v36; // r1
  int v37; // r2
  int v38; // [sp+3Ch] [bp-28h]
  int v39; // [sp+40h] [bp-24h]
  int v40; // [sp+44h] [bp-20h]
  int v41; // [sp+48h] [bp-1Ch]
  int v42; // [sp+4Ch] [bp-18h]
  void (__fastcall *v43)(int, int *, int, int, int, _BYTE *, int, int, int, int, int, int, int, _DWORD, unsigned int, int, unsigned int, int); // [sp+50h] [bp-14h]
  _BYTE *v44; // [sp+54h] [bp-10h]
  glitch::IReferenceCounted *v45; // [sp+58h] [bp-Ch]
  glitch::IReferenceCounted *v46; // [sp+5Ch] [bp-8h]

  v4 = *(_DWORD **)(a1 + 288);
  if ( *(_DWORD *)(a3 + 16) - *(_DWORD *)(a3 + 12) > (unsigned int)(v4[14] / v4[18])
    || (v10 = v4[16] / v4[19],
        3 * glitch::video::CPrimitiveStream::getPrimitiveCount((glitch::video::CPrimitiveStream *)a3) > v10)
    || (v11 = *(_DWORD *)(a3 + 16) - *(_DWORD *)(a3 + 12), v11 > *(_DWORD *)(a1 + 268))
    || *(unsigned __int16 *)(a3 + 22) <= 3u
    || *(_WORD *)(a3 + 20) != 1 && *(_DWORD *)a3 )
  {
    if ( (*(_DWORD *)(a1 + 136) & 0x200) == 0 )
    {
      glitch::video::IVideoDriver::drawPendingBatch((glitch::video::IVideoDriver *)a1);
      v29 = *(_DWORD *)(a1 + 312);
      if ( (v29 & 8) != 0 )
      {
        v30 = *(_DWORD *)(a1 + 296);
        *(_DWORD *)(a1 + 312) = v29 & 0xFFFFFFF7;
        v31 = *(void (**)(void))(*(_DWORD *)v30 + 24);
        v45 = *(glitch::IReferenceCounted **)(a1 + 288);
        if ( v45 )
          ++*((_DWORD *)v45 + 1);
        v31();
        if ( v45 )
          glitch::IReferenceCounted::drop(v45);
      }
    }
    glitch::video::IVideoDriver::setMaterialInternal(
      a1,
      *(glitch::video::CMaterial **)(a1 + 300),
      *(unsigned __int8 *)(a1 + 308),
      *(_DWORD *)(a1 + 232));
    (*(void (__fastcall **)(int, int *, int, int))(*(_DWORD *)a1 + 512))(a1, a2, a3, a4);
    if ( (*(_DWORD *)(a1 + 136) & 0x200) != 0 )
      glitch::video::IVideoDriver::setMaterialInternal(
        a1,
        *(glitch::video::CMaterial **)(a1 + 292),
        0,
        *(_DWORD *)(a1 + 232));
  }
  else
  {
    v12 = *(glitch::scene::CAppendMeshBuffer **)(a1 + 288);
    PrimitiveCount = glitch::video::CPrimitiveStream::getPrimitiveCount((glitch::video::CPrimitiveStream *)a3);
    if ( !glitch::scene::CAppendMeshBuffer::hasEnoughSpace(v12, v11, 3 * PrimitiveCount) )
    {
      glitch::video::IVideoDriver::drawPendingBatch((glitch::video::IVideoDriver *)a1);
      v32 = *(_DWORD *)(a1 + 312);
      if ( (v32 & 8) != 0 )
      {
        v33 = *(_DWORD *)(a1 + 296);
        *(_DWORD *)(a1 + 312) = v32 & 0xFFFFFFF7;
        v34 = *(void (**)(void))(*(_DWORD *)v33 + 24);
        v46 = *(glitch::IReferenceCounted **)(a1 + 288);
        if ( v46 )
          ++*((_DWORD *)v46 + 1);
        v34();
        if ( v46 )
          glitch::IReferenceCounted::drop(v46);
      }
    }
    glitch::scene::CAppendMeshBuffer::beginAppend(*(_DWORD *)(a1 + 288));
    v14 = *(_DWORD *)(a1 + 232);
    v15 = *a2;
    if ( v14 )
    {
      v44 = (_BYTE *)(*(_DWORD *)v14 + 4);
    }
    else
    {
      LC_API_MEMSET_0(glitch::video::IVideoDriver::DefaultAttribMap, 255, 0x1Eu);
      v35 = *(_DWORD *)(v15 + 16);
      if ( v35 != v15 + 20 )
      {
        v36 = ((v35 - (v15 + 36)) & 0xFFFFFFF0) + 16;
        do
        {
          v37 = v14 >> 4;
          v14 += 16;
          glitch::video::IVideoDriver::DefaultAttribMap[*(unsigned __int16 *)(v15 + 28)] = v37;
          v15 += 16;
        }
        while ( v14 != v36 );
      }
      v44 = glitch::video::IVideoDriver::DefaultAttribMap;
    }
    v16 = *(_DWORD *)(a1 + 296);
    v17 = *(_DWORD *)(a1 + 288);
    v42 = *(_DWORD *)(a1 + 300);
    v43 = *(void (__fastcall **)(int, int *, int, int, int, _BYTE *, int, int, int, int, int, int, int, _DWORD, unsigned int, int, unsigned int, int))(*(_DWORD *)v16 + 12);
    v38 = *(unsigned __int8 *)(a1 + 308);
    v39 = *(_DWORD *)(a1 + 292);
    v18 = *(_DWORD *)(*(int (__fastcall **)(int))(*(_DWORD *)v16 + 20))(v16);
    v41 = *(_DWORD *)(a3 + 16);
    v40 = *(_DWORD *)(a3 + 12);
    v19 = glitch::video::CPrimitiveStream::getPrimitiveCount((glitch::video::CPrimitiveStream *)a3);
    v43(
      v16,
      a2,
      a3,
      v42,
      v38,
      v44,
      v17 + 20,
      v17 + 24,
      v39,
      v18 + 4,
      a1,
      v40,
      v41,
      0,
      v19,
      *(_DWORD *)(*(_DWORD *)(a1 + 288) + 60) / *(_DWORD *)(*(_DWORD *)(a1 + 288) + 72),
      (unsigned int)(*(_DWORD *)(*(_DWORD *)(a1 + 288) + 68) / *(_DWORD *)(*(_DWORD *)(a1 + 288) + 76)) / 3,
      -1);
    v20 = *(_DWORD **)(a1 + 288);
    v21 = v20[15];
    v22 = *(_DWORD *)(a3 + 16) - *(_DWORD *)(a3 + 12);
    v23 = v21 / v20[18];
    v24 = v20[5];
    if ( v21 < v20[18] * ((unsigned __int16)v22 + (unsigned int)(unsigned __int16)v23) )
      v21 = v20[18] * ((unsigned __int16)v22 + (unsigned __int16)v23);
    v20[15] = v21;
    *(_DWORD *)(v24 + 8) = v21;
    v25 = *(_DWORD **)(a1 + 288);
    v26 = v25[17] / v25[19];
    v27 = (glitch::video::CPrimitiveStream::getPrimitiveCount((glitch::video::CPrimitiveStream *)a3) + v26 / 3)
        * 3
        * v25[19];
    v28 = v25[15];
    if ( v27 < v25[17] )
      v27 = v25[17];
    v25[8] = v27;
    v25[10] = v28;
    v25[9] = 0;
    v25[17] = v27;
  }
  return 1;
}


// ===== 5adfa8 glitch::video::IVideoDriver::draw(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&,glitch::video::CPrimitiveStream const&,glitch::video::CDriverBinding **,boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&) =====
_DWORD *__fastcall glitch::video::IVideoDriver::draw(_DWORD *result, int *a2, int a3, int a4)
{
  if ( *(_DWORD *)(a3 + 8) )
  {
    if ( (result[34] & 0x100) != 0 )
      return (_DWORD *)glitch::video::IVideoDriver::appendBatch((int)result, a2, a3, a4);
    else
      return (_DWORD *)(*(int (__fastcall **)(_DWORD *))(*result + 512))(result);
  }
  return result;
}


// ===== 5adfe0 glitch::video::IVideoDriver::clearImplementationDependentData(void) =====
int __fastcall glitch::video::IVideoDriver::clearImplementationDependentData(glitch::video::IVideoDriver *this)
{
  glitch::video::CVertexStreams *v1; // r5
  bool v3; // zf
  int v4; // r6
  glitch::video::IVideoDriver *v5; // r5
  _DWORD *v6; // r3
  glitch::video::CVertexStreams *v7; // r5
  glitch::video::CVertexStreams *v8; // r5
  glitch::video::CVertexStreams *v9; // r5
  glitch::IReferenceCounted *v10; // r0
  glitch::IReferenceCounted *v11; // r0
  glitch::IReferenceCounted *v12; // r0
  int v13; // r1
  int v14; // r2
  glitch::video::CMaterial *v15; // r5
  glitch::video::CMaterial *v16; // r0
  void *v17; // r1
  unsigned int v18; // r5
  unsigned int v19; // r6
  unsigned __int16 v20; // r1
  unsigned __int16 *v21; // r5

  v1 = *((glitch::video::CVertexStreams **)this + 80);
  *((_DWORD *)this + 80) = 0;
  if ( v1 )
  {
    v3 = (*(_DWORD *)v1)-- == 1;
    if ( v3 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v1);
      LC_API_FREE_0(v1);
    }
  }
  v4 = 0;
  v5 = this;
  do
  {
    v6 = *((_DWORD **)v5 + 81);
    ++v4;
    *((_DWORD *)v5 + 81) = 0;
    if ( v6 )
    {
      v3 = (*v6)-- == 1;
      if ( v3 )
        LC_API_FREE_0(v6);
    }
    v5 = (glitch::video::IVideoDriver *)((char *)v5 + 4);
  }
  while ( v4 != 4 );
  v7 = *((glitch::video::CVertexStreams **)this + 41);
  *((_DWORD *)this + 41) = 0;
  if ( v7 )
  {
    v3 = (*(_DWORD *)v7)-- == 1;
    if ( v3 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v7);
      LC_API_FREE_0(v7);
    }
  }
  v8 = *((glitch::video::CVertexStreams **)this + 42);
  *((_DWORD *)this + 42) = 0;
  if ( v8 )
  {
    v3 = (*(_DWORD *)v8)-- == 1;
    if ( v3 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v8);
      LC_API_FREE_0(v8);
    }
  }
  v9 = *((glitch::video::CVertexStreams **)this + 43);
  *((_DWORD *)this + 43) = 0;
  if ( v9 )
  {
    v3 = (*(_DWORD *)v9)-- == 1;
    if ( v3 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v9);
      LC_API_FREE_0(v9);
    }
  }
  v10 = *((glitch::IReferenceCounted **)this + 44);
  *((_DWORD *)this + 44) = 0;
  if ( v10 )
    glitch::IReferenceCounted::drop(v10);
  v11 = *((glitch::IReferenceCounted **)this + 45);
  *((_DWORD *)this + 45) = 0;
  if ( v11 )
    glitch::IReferenceCounted::drop(v11);
  v12 = *((glitch::IReferenceCounted **)this + 46);
  *((_DWORD *)this + 46) = 0;
  if ( v12 )
    glitch::IReferenceCounted::drop(v12);
  v13 = *((_DWORD *)this + 68);
  v14 = *((_DWORD *)this + 69);
  if ( v13 != v14 )
    std::vector<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 272,
      v13,
      v14);
  v15 = *((glitch::video::CMaterial **)this + 73);
  *((_DWORD *)this + 73) = 0;
  if ( v15 )
  {
    v3 = (*(_DWORD *)v15)-- == 1;
    if ( v3 )
    {
      glitch::video::CMaterial::~CMaterial(v15);
      LC_API_FREE_0(v15);
    }
  }
  v16 = *((glitch::video::CMaterial **)this + 75);
  if ( v16 )
  {
    glitch::video::CMaterial::~CMaterial(v16);
    glitch::core::releaseProcessBuffer(*((glitch::core **)this + 75), v17);
    *((_DWORD *)this + 76) = 0;
    *((_DWORD *)this + 75) = 0;
  }
  if ( (*((_DWORD *)this + 78) & 0x20) != 0 )
  {
    v18 = *((unsigned __int16 *)this + 28);
    if ( v18 == 0xFFFF )
      goto LABEL_39;
    v19 = (unsigned __int16)(v18 + *((_WORD *)this + 30));
    while ( v19 > v18 )
    {
      v20 = v18;
      v18 = (unsigned __int16)(v18 + 1);
      glitch::video::CGlobalMaterialParameterManager::dropInternal(
        *((glitch::video::CGlobalMaterialParameterManager **)this + 57),
        v20);
    }
    *((_WORD *)this + 28) = -1;
    glitch::video::CGlobalMaterialParameterManager::dropInternal(
      *((glitch::video::CGlobalMaterialParameterManager **)this + 57),
      *((_WORD *)this + 155));
    *((_WORD *)this + 155) = -1;
    v21 = (unsigned __int16 *)((char *)this + 250);
    do
    {
      glitch::video::CGlobalMaterialParameterManager::dropInternal(
        *((glitch::video::CGlobalMaterialParameterManager **)this + 57),
        *v21);
      glitch::video::CGlobalMaterialParameterManager::dropInternal(
        *((glitch::video::CGlobalMaterialParameterManager **)this + 57),
        *v21 + 1);
      glitch::video::CGlobalMaterialParameterManager::dropInternal(
        *((glitch::video::CGlobalMaterialParameterManager **)this + 57),
        *v21 + 2);
      *v21++ = -1;
    }
    while ( v21 != (unsigned __int16 *)((char *)this + 258) );
    glitch::video::CGlobalMaterialParameterManager::clearParameters(*((glitch::video::CGlobalMaterialParameterManager **)this
                                                                    + 57));
    if ( (*((_DWORD *)this + 78) & 0x20) != 0 )
LABEL_39:
      glitch::video::CTextureManager::clearDriverSpecificResources(*((glitch::video::CTextureManager **)this + 56));
  }
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 54) + 16))(*((_DWORD *)this + 54));
}


// ===== 5ae2dc glitch::video::IVideoDriver::~IVideoDriver() =====
void __fastcall glitch::video::IVideoDriver::~IVideoDriver(glitch::video::IVideoDriver *this)
{
  int v1; // r2
  void *v3; // r4
  void *v4; // r4
  void *v5; // r4
  void *v6; // r0
  glitch::video::IVideoDriver *v7; // r4
  _DWORD *v8; // r3
  void *v9; // r0
  bool v10; // zf
  glitch::video::CVertexStreams *v11; // r4
  glitch::IReferenceCounted *v12; // r0
  glitch::video::CMaterial *v13; // r4
  int v14; // r3
  glitch::IReferenceCounted *v15; // r0
  glitch::IReferenceCounted *v16; // r0
  glitch::IReferenceCounted *v17; // r0
  glitch::video::CVertexStreams *v18; // r4
  glitch::video::CVertexStreams *v19; // r4
  glitch::video::CVertexStreams *v20; // r4
  _DWORD *v21; // r0
  _DWORD *v22; // r2
  char *v23; // r0
  char *v24; // r0

  v1 = *((_DWORD *)this + 78);
  *(_DWORD *)this = off_977338;
  if ( (v1 & 0x10) != 0 )
  {
    v3 = *((void **)this + 55);
    if ( v3 )
    {
      glitch::video::CMaterialRendererManager::~CMaterialRendererManager(*((glitch::video::CMaterialRendererManager **)this
                                                                         + 55));
      LC_API_FREE_0(v3);
      v1 = *((_DWORD *)this + 78);
    }
  }
  if ( (v1 & 0x20) != 0 )
  {
    v4 = *((void **)this + 56);
    if ( !v4
      || (glitch::video::CTextureManager::~CTextureManager(*((glitch::video::CTextureManager **)this + 56)),
          LC_API_FREE_0(v4),
          (*((_DWORD *)this + 78) & 0x20) != 0) )
    {
      v5 = *((void **)this + 57);
      if ( v5 )
      {
        glitch::video::CGlobalMaterialParameterManager::~CGlobalMaterialParameterManager(*((glitch::video::CGlobalMaterialParameterManager **)this
                                                                                         + 57));
        LC_API_FREE_0(v5);
      }
    }
  }
  v6 = *((void **)this + 85);
  if ( v6 )
    GlitchFree(v6);
  v7 = (glitch::video::IVideoDriver *)((char *)this + 340);
  do
  {
    v8 = *((_DWORD **)v7 - 1);
    if ( v8 )
    {
      v9 = *((void **)v7 - 1);
      v10 = (*v8)-- == 1;
      if ( v10 )
        LC_API_FREE_0(v9);
    }
    v7 = (glitch::video::IVideoDriver *)((char *)v7 - 4);
  }
  while ( v7 != (glitch::video::IVideoDriver *)((char *)this + 324) );
  v11 = *((glitch::video::CVertexStreams **)this + 80);
  if ( v11 )
  {
    v10 = (*(_DWORD *)v11)-- == 1;
    if ( v10 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v11);
      LC_API_FREE_0(v11);
    }
  }
  v12 = *((glitch::IReferenceCounted **)this + 74);
  if ( v12 )
    glitch::IReferenceCounted::drop(v12);
  v13 = *((glitch::video::CMaterial **)this + 73);
  if ( v13 )
  {
    v10 = (*(_DWORD *)v13)-- == 1;
    if ( v10 )
    {
      glitch::video::CMaterial::~CMaterial(v13);
      LC_API_FREE_0(v13);
    }
  }
  std::vector<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 68);
  v14 = *((_DWORD *)this + 54);
  if ( v14 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v14 + 4))(*((_DWORD *)this + 54));
  std::vector<boost::intrusive_ptr<glitch::video::IRenderTarget>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IRenderTarget>,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 50);
  std::vector<boost::intrusive_ptr<glitch::video::IBuffer>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IBuffer>,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 47);
  v15 = *((glitch::IReferenceCounted **)this + 46);
  if ( v15 )
    glitch::IReferenceCounted::drop(v15);
  v16 = *((glitch::IReferenceCounted **)this + 45);
  if ( v16 )
    glitch::IReferenceCounted::drop(v16);
  v17 = *((glitch::IReferenceCounted **)this + 44);
  if ( v17 )
    glitch::IReferenceCounted::drop(v17);
  v18 = *((glitch::video::CVertexStreams **)this + 43);
  if ( v18 )
  {
    v10 = (*(_DWORD *)v18)-- == 1;
    if ( v10 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v18);
      LC_API_FREE_0(v18);
    }
  }
  v19 = *((glitch::video::CVertexStreams **)this + 42);
  if ( v19 )
  {
    v10 = (*(_DWORD *)v19)-- == 1;
    if ( v10 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v19);
      LC_API_FREE_0(v19);
    }
  }
  v20 = *((glitch::video::CVertexStreams **)this + 41);
  if ( v20 )
  {
    v10 = (*(_DWORD *)v20)-- == 1;
    if ( v10 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v20);
      LC_API_FREE_0(v20);
    }
  }
  v21 = *((_DWORD **)this + 16);
  if ( v21 )
  {
    v10 = (*v21)-- == 1;
    if ( v10 )
    {
      if ( !*((_BYTE *)v21 + 84) )
      {
        v22 = (_DWORD *)v21[20];
        *v22 = glitch::memory::Matrix4Pool;
        glitch::memory::Matrix4Pool = (int)v22;
      }
      v21[20] = 0;
      LC_API_FREE_0(v21);
    }
  }
  v23 = *((char **)this + 13);
  if ( v23 != (char *)this + 32 && v23 )
    GlitchFree(v23);
  v24 = *((char **)this + 7);
  if ( v24 != (char *)this + 8 )
  {
    if ( v24 )
      GlitchFree(v24);
  }
}


// ===== 5ae5d4 glitch::video::IVideoDriver::~IVideoDriver() =====
void __fastcall glitch::video::IVideoDriver::~IVideoDriver(glitch::video::IVideoDriver *this)
{
  glitch::video::IVideoDriver::~IVideoDriver(this);
  LC_API_FREE_0(this);
}


// ===== 5ae5f0 glitch::video::IVideoDriver::initImplementationDependentData(void) =====
glitch::IReferenceCounted *__fastcall glitch::video::IVideoDriver::initImplementationDependentData(
        glitch::video::IVideoDriver *this)
{
  glitch::IReferenceCounted **v2; // r1
  glitch::IReferenceCounted *v3; // r3
  bool v4; // zf
  glitch::IReferenceCounted *v5; // r3
  glitch::IReferenceCounted *v6; // r0
  glitch::IReferenceCounted *v7; // r3
  glitch::IReferenceCounted *v8; // r0
  glitch::IReferenceCounted *v9; // r3
  glitch::IReferenceCounted *v10; // r0
  glitch::video::CVertexStreams *v11; // r3
  glitch::video::CVertexStreams *v12; // r5
  glitch::video::CVertexStreams *v13; // r5
  glitch::video::CVertexStreams *v14; // r0
  glitch::video::CVertexStreams *v15; // r0
  glitch::video::CVertexStreams *v16; // r3
  glitch::video::CVertexStreams *v17; // r5
  glitch::video::CVertexStreams *v18; // r5
  glitch::video::CVertexStreams *v19; // r0
  glitch::video::CVertexStreams *v20; // r0
  glitch::video::CVertexStreams *v21; // r3
  glitch::video::CVertexStreams *v22; // r5
  glitch::video::CVertexStreams *v23; // r5
  glitch::video::CVertexStreams *v24; // r0
  glitch::video::CVertexStreams *v25; // r0
  glitch::video::CVertexStreams *v26; // r0
  int v27; // r3
  int v28; // r6
  int v29; // r7
  glitch::IReferenceCounted *v30; // r5
  glitch::IReferenceCounted **v31; // r1
  glitch::IReferenceCounted *v32; // r3
  int v33; // r3
  int v34; // r7
  int v35; // r8
  glitch::IReferenceCounted *v36; // r5
  glitch::IReferenceCounted **v37; // r1
  glitch::IReferenceCounted *v38; // r3
  glitch::IReferenceCounted *result; // r0
  _DWORD *v40; // r3
  _DWORD *v41; // r0
  glitch::video::CVertexStreams *v42; // r3
  glitch::video::CVertexStreams *v43; // r6
  glitch::video::CVertexStreams *v44; // r6
  glitch::video::CVertexStreams *v45; // r3
  _DWORD *v46; // r5
  _DWORD *v47; // r0
  glitch::video::CVertexStreams *v48; // r5
  glitch::video::IVideoDriver *v49; // r5
  _DWORD *v50; // r2
  _DWORD *v51; // r3
  glitch::IReferenceCounted *v52[3]; // [sp+14h] [bp-A4h] BYREF
  __int16 v53; // [sp+20h] [bp-98h]
  __int16 v54; // [sp+22h] [bp-96h]
  glitch::IReferenceCounted *v55[3]; // [sp+24h] [bp-94h] BYREF
  __int16 v56; // [sp+30h] [bp-88h]
  __int16 v57; // [sp+32h] [bp-86h]
  glitch::IReferenceCounted *v58[3]; // [sp+34h] [bp-84h] BYREF
  __int16 v59; // [sp+40h] [bp-78h]
  __int16 v60; // [sp+42h] [bp-76h]
  glitch::IReferenceCounted *v61[3]; // [sp+44h] [bp-74h] BYREF
  __int16 v62; // [sp+50h] [bp-68h]
  __int16 v63; // [sp+52h] [bp-66h]
  glitch::IReferenceCounted *v64[3]; // [sp+54h] [bp-64h] BYREF
  __int16 v65; // [sp+60h] [bp-58h]
  __int16 v66; // [sp+62h] [bp-56h]
  glitch::IReferenceCounted *v67[3]; // [sp+64h] [bp-54h] BYREF
  __int16 v68; // [sp+70h] [bp-48h]
  __int16 v69; // [sp+72h] [bp-46h]
  glitch::IReferenceCounted *v70[3]; // [sp+74h] [bp-44h] BYREF
  __int16 v71; // [sp+80h] [bp-38h]
  __int16 v72; // [sp+82h] [bp-36h]
  glitch::IReferenceCounted *v73; // [sp+84h] [bp-34h] BYREF
  glitch::IReferenceCounted *v74; // [sp+88h] [bp-30h] BYREF
  glitch::video::CVertexStreams *v75; // [sp+8Ch] [bp-2Ch] BYREF
  glitch::video::CVertexStreams *v76; // [sp+90h] [bp-28h] BYREF
  glitch::video::CVertexStreams *v77; // [sp+94h] [bp-24h] BYREF
  glitch::video::CVertexStreams *v78; // [sp+98h] [bp-20h] BYREF
  unsigned __int8 v79[4]; // [sp+9Ch] [bp-1Ch] BYREF
  glitch::video::CVertexStreams *v80; // [sp+A0h] [bp-18h] BYREF
  glitch::IReferenceCounted *v81; // [sp+A4h] [bp-14h] BYREF
  glitch::IReferenceCounted *v82; // [sp+A8h] [bp-10h] BYREF
  glitch::IReferenceCounted *v83; // [sp+ACh] [bp-Ch] BYREF
  glitch::IReferenceCounted *v84; // [sp+B0h] [bp-8h] BYREF
  glitch::IReferenceCounted *v85; // [sp+B4h] [bp-4h] BYREF

  (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::video::IVideoDriver *))(*(_DWORD *)this + 120))(
    &v85,
    this);
  v2 = *((glitch::IReferenceCounted ***)this + 48);
  if ( v2 == *((glitch::IReferenceCounted ***)this + 49) )
  {
    std::vector<boost::intrusive_ptr<glitch::video::IBuffer>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IBuffer>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      (char **)this + 47,
      (int)v2,
      (int *)&v85);
  }
  else
  {
    v3 = v85;
    v4 = v85 == nullptr;
    *v2 = v85;
    if ( !v4 )
      ++*((_DWORD *)v3 + 1);
    *((_DWORD *)this + 48) += 4;
  }
  if ( v85 )
    glitch::IReferenceCounted::drop(v85);
  (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::video::IVideoDriver *))(*(_DWORD *)this + 120))(
    &v84,
    this);
  v5 = v84;
  if ( v84 )
    ++*((_DWORD *)v84 + 1);
  v6 = *((glitch::IReferenceCounted **)this + 44);
  *((_DWORD *)this + 44) = v5;
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  if ( v84 )
    glitch::IReferenceCounted::drop(v84);
  (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::video::IVideoDriver *))(*(_DWORD *)this + 120))(
    &v83,
    this);
  v7 = v83;
  if ( v83 )
    ++*((_DWORD *)v83 + 1);
  v8 = *((glitch::IReferenceCounted **)this + 45);
  *((_DWORD *)this + 45) = v7;
  if ( v8 )
    glitch::IReferenceCounted::drop(v8);
  if ( v83 )
    glitch::IReferenceCounted::drop(v83);
  (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::video::IVideoDriver *))(*(_DWORD *)this + 120))(
    &v82,
    this);
  v9 = v82;
  if ( v82 )
    ++*((_DWORD *)v82 + 1);
  v10 = *((glitch::IReferenceCounted **)this + 46);
  *((_DWORD *)this + 46) = v9;
  if ( v10 )
    glitch::IReferenceCounted::drop(v10);
  if ( v82 )
    glitch::IReferenceCounted::drop(v82);
  if ( (*((_DWORD *)this + 39) & 0x1000000) != 0 )
  {
    v41 = operator new[](0xCu, 0);
    v41[2] = 0;
    *v41 = 0;
    v41[1] = 0;
    (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::video::IVideoDriver *, _DWORD, _DWORD, int, _DWORD *, int))(*(_DWORD *)this + 120))(
      &v81,
      this,
      0,
      0,
      12,
      v41,
      1);
    if ( ((*((_BYTE *)v81 + 18) & 8) == 0 || (*((_BYTE *)v81 + 18) & 2) != 0) && *((_BYTE *)v81 + 17) != 4 )
      (*(void (__fastcall **)(glitch::IReferenceCounted *, int))(*(_DWORD *)v81 + 12))(v81, 1);
    glitch::video::CVertexStreams::allocate(&v80, 0);
    v42 = v80;
    if ( v80 )
      ++*(_DWORD *)v80;
    v43 = *((glitch::video::CVertexStreams **)this + 80);
    *((_DWORD *)this + 80) = v42;
    if ( v43 )
    {
      v4 = (*(_DWORD *)v43)-- == 1;
      if ( v4 )
      {
        glitch::video::CVertexStreams::~CVertexStreams(v43);
        LC_API_FREE_0(v43);
      }
    }
    v44 = v80;
    if ( v80 )
    {
      v4 = (*(_DWORD *)v80)-- == 1;
      if ( v4 )
      {
        glitch::video::CVertexStreams::~CVertexStreams(v44);
        LC_API_FREE_0(v44);
      }
    }
    glitch::video::CVertexStreams::setupStreams(*((_DWORD *)this + 80), &v81, -1);
    *(_DWORD *)(*((_DWORD *)this + 80) + 8) = 1;
    v45 = *((glitch::video::CVertexStreams **)this + 80);
    v79[3] = 0;
    v79[0] = 0;
    v79[1] = 0;
    v79[2] = 1;
    v78 = v45;
    if ( v45 )
      ++*(_DWORD *)v45;
    v46 = operator new(0x24u, 0);
    glitch::video::CVertexAttributeMap::CVertexAttributeMap(v46, (int *)&v78, 2, v79, 1);
    if ( v46 )
      ++*v46;
    v47 = *((_DWORD **)this + 81);
    *((_DWORD *)this + 81) = v46;
    if ( v47 )
    {
      v4 = (*v47)-- == 1;
      if ( v4 )
        LC_API_FREE_0(v47);
    }
    v48 = v78;
    if ( v78 )
    {
      v4 = (*(_DWORD *)v78)-- == 1;
      if ( v4 )
      {
        glitch::video::CVertexStreams::~CVertexStreams(v48);
        LC_API_FREE_0(v48);
      }
    }
    v49 = this;
    do
    {
      v50 = *((_DWORD **)this + 81);
      if ( v50 )
        ++*v50;
      v51 = *((_DWORD **)v49 + 82);
      *((_DWORD *)v49 + 82) = v50;
      v49 = (glitch::video::IVideoDriver *)((char *)v49 + 4);
      if ( v51 )
      {
        v4 = (*v51)-- == 1;
        if ( v4 )
          LC_API_FREE_0(v51);
      }
    }
    while ( v49 != (glitch::video::IVideoDriver *)((char *)this + 12) );
    (*(void (__fastcall **)(glitch::video::IVideoDriver *, int, int))(*(_DWORD *)this + 160))(this, 0x2000, 1);
    if ( v81 )
      glitch::IReferenceCounted::drop(v81);
  }
  glitch::video::CVertexStreams::allocate(&v77, 0, 0x40000u);
  v11 = v77;
  if ( v77 )
    ++*(_DWORD *)v77;
  v12 = *((glitch::video::CVertexStreams **)this + 41);
  *((_DWORD *)this + 41) = v11;
  if ( v12 )
  {
    v4 = (*(_DWORD *)v12)-- == 1;
    if ( v4 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v12);
      LC_API_FREE_0(v12);
    }
  }
  v13 = v77;
  if ( v77 )
  {
    v4 = (*(_DWORD *)v77)-- == 1;
    if ( v4 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v13);
      LC_API_FREE_0(v13);
    }
  }
  v14 = *((glitch::video::CVertexStreams **)this + 41);
  v70[0] = *((glitch::IReferenceCounted **)this + 44);
  if ( v70[0] )
    ++*((_DWORD *)v70[0] + 1);
  v70[1] = (glitch::IReferenceCounted *)byte_4;
  v70[2] = (glitch::IReferenceCounted *)&byte_6;
  v71 = 3;
  v72 = 16;
  glitch::video::CVertexStreams::setStream(v14, (int)v14 + 20, v70);
  if ( v70[0] )
    glitch::IReferenceCounted::drop(v70[0]);
  v15 = *((glitch::video::CVertexStreams **)this + 41);
  v67[0] = *((glitch::IReferenceCounted **)this + 44);
  if ( v67[0] )
    ++*((_DWORD *)v67[0] + 1);
  v67[1] = nullptr;
  v67[2] = (glitch::IReferenceCounted *)(&dword_0 + 1);
  v68 = 4;
  v69 = 16;
  glitch::video::CVertexStreams::setStream(v15, (int)v15 + 36, v67);
  if ( v67[0] )
    glitch::IReferenceCounted::drop(v67[0]);
  glitch::video::CVertexStreams::allocate(&v76, 0, 0x40000u);
  v16 = v76;
  if ( v76 )
    ++*(_DWORD *)v76;
  v17 = *((glitch::video::CVertexStreams **)this + 42);
  *((_DWORD *)this + 42) = v16;
  if ( v17 )
  {
    v4 = (*(_DWORD *)v17)-- == 1;
    if ( v4 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v17);
      LC_API_FREE_0(v17);
    }
  }
  v18 = v76;
  if ( v76 )
  {
    v4 = (*(_DWORD *)v76)-- == 1;
    if ( v4 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v18);
      LC_API_FREE_0(v18);
    }
  }
  v19 = *((glitch::video::CVertexStreams **)this + 42);
  v64[0] = *((glitch::IReferenceCounted **)this + 44);
  if ( v64[0] )
    ++*((_DWORD *)v64[0] + 1);
  v64[1] = nullptr;
  v64[2] = (glitch::IReferenceCounted *)&byte_6;
  v65 = 3;
  v66 = 12;
  glitch::video::CVertexStreams::setStream(v19, (int)v19 + 20, v64);
  if ( v64[0] )
    glitch::IReferenceCounted::drop(v64[0]);
  v20 = *((glitch::video::CVertexStreams **)this + 42);
  v61[0] = *((glitch::IReferenceCounted **)this + 45);
  if ( v61[0] )
    ++*((_DWORD *)v61[0] + 1);
  v61[1] = nullptr;
  v61[2] = (glitch::IReferenceCounted *)(&dword_0 + 1);
  v62 = 4;
  v63 = 4;
  glitch::video::CVertexStreams::setStream(v20, (int)v20 + 36, v61);
  if ( v61[0] )
    glitch::IReferenceCounted::drop(v61[0]);
  glitch::video::CVertexStreams::allocate(&v75, 1u, 0x40000u);
  v21 = v75;
  if ( v75 )
    ++*(_DWORD *)v75;
  v22 = *((glitch::video::CVertexStreams **)this + 43);
  *((_DWORD *)this + 43) = v21;
  if ( v22 )
  {
    v4 = (*(_DWORD *)v22)-- == 1;
    if ( v4 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v22);
      LC_API_FREE_0(v22);
    }
  }
  v23 = v75;
  if ( v75 )
  {
    v4 = (*(_DWORD *)v75)-- == 1;
    if ( v4 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v23);
      LC_API_FREE_0(v23);
    }
  }
  v24 = *((glitch::video::CVertexStreams **)this + 43);
  v58[0] = *((glitch::IReferenceCounted **)this + 44);
  if ( v58[0] )
    ++*((_DWORD *)v58[0] + 1);
  v58[1] = (glitch::IReferenceCounted *)(byte_9 + 3);
  v58[2] = (glitch::IReferenceCounted *)&byte_6;
  v59 = 3;
  v60 = 24;
  glitch::video::CVertexStreams::setStream(v24, (int)v24 + 20, v58);
  if ( v58[0] )
    glitch::IReferenceCounted::drop(v58[0]);
  v25 = *((glitch::video::CVertexStreams **)this + 43);
  v55[0] = *((glitch::IReferenceCounted **)this + 44);
  if ( v55[0] )
    ++*((_DWORD *)v55[0] + 1);
  v55[1] = nullptr;
  v55[2] = (glitch::IReferenceCounted *)&byte_6;
  v56 = 2;
  v57 = 24;
  glitch::video::CVertexStreams::setStream(v25, (int)v25 + 36, v55);
  if ( v55[0] )
    glitch::IReferenceCounted::drop(v55[0]);
  v26 = *((glitch::video::CVertexStreams **)this + 43);
  v52[0] = *((glitch::IReferenceCounted **)this + 44);
  if ( v52[0] )
    ++*((_DWORD *)v52[0] + 1);
  v52[1] = (glitch::IReferenceCounted *)byte_8;
  v52[2] = (glitch::IReferenceCounted *)(&dword_0 + 1);
  v53 = 4;
  v54 = 24;
  glitch::video::CVertexStreams::setStream(v26, (int)v26 + 52, v52);
  if ( v52[0] )
    glitch::IReferenceCounted::drop(v52[0]);
  v27 = *((_DWORD *)this + 53);
  v28 = *(_DWORD *)(v27 + 168);
  v29 = *(_DWORD *)(v27 + 164);
  v30 = (glitch::IReferenceCounted *)operator new(0x70u, 0);
  glitch::scene::CAppendMeshBuffer::CAppendMeshBuffer(v30, v29, v28, this, 4, -1);
  v74 = v30;
  if ( v30 )
    ++*((_DWORD *)v30 + 1);
  v31 = *((glitch::IReferenceCounted ***)this + 69);
  if ( v31 == *((glitch::IReferenceCounted ***)this + 70) )
  {
    std::vector<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      (char **)this + 68,
      (int)v31,
      (int *)&v74);
  }
  else
  {
    v32 = v74;
    v4 = v74 == nullptr;
    *v31 = v74;
    if ( !v4 )
      ++*((_DWORD *)v32 + 1);
    *((_DWORD *)this + 69) += 4;
  }
  if ( v74 )
    glitch::IReferenceCounted::drop(v74);
  v33 = *((_DWORD *)this + 53);
  v34 = *(_DWORD *)(v33 + 168);
  v35 = *(_DWORD *)(v33 + 164);
  v36 = (glitch::IReferenceCounted *)operator new(0x70u, 0);
  glitch::scene::CAppendMeshBuffer::CAppendMeshBuffer(v36, v35, v34, this, 4, -1);
  v73 = v36;
  if ( v36 )
    ++*((_DWORD *)v36 + 1);
  v37 = *((glitch::IReferenceCounted ***)this + 69);
  if ( v37 == *((glitch::IReferenceCounted ***)this + 70) )
  {
    std::vector<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      (char **)this + 68,
      (int)v37,
      (int *)&v73);
  }
  else
  {
    v38 = v73;
    v4 = v73 == nullptr;
    *v37 = v73;
    if ( !v4 )
      ++*((_DWORD *)v38 + 1);
    *((_DWORD *)this + 69) += 4;
  }
  result = v73;
  if ( v73 )
    result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v73);
  v40 = *((_DWORD **)this + 68);
  *((_DWORD *)this + 71) = 0;
  *((_DWORD *)this + 72) = *v40;
  return result;
}


// ===== 5aef9c glitch::video::IVideoDriver::IFramebuffer::~IFramebuffer() =====
void __fastcall glitch::video::IVideoDriver::IFramebuffer::~IFramebuffer(
        glitch::video::IVideoDriver::IFramebuffer *this)
{
  ;
}


// ===== 5aefa0 glitch::video::IRenderBuffer::~IRenderBuffer() =====
void __fastcall glitch::video::IRenderBuffer::~IRenderBuffer(glitch::video::IRenderBuffer *this)
{
  ;
}


// ===== 5aefa4 glitch::video::COpenGLES2Driver::getDriverType(void) =====
int __fastcall glitch::video::COpenGLES2Driver::getDriverType(glitch::video::COpenGLES2Driver *this)
{
  return 8;
}


// ===== 5aefac glitch::video::COpenGLES2Driver::swapBuffersImpl(int) =====
int __fastcall glitch::video::COpenGLES2Driver::swapBuffersImpl(glitch::video::COpenGLES2Driver *this, int a2)
{
  return 0;
}


// ===== 5aefb4 glitch::video::detail::SMapBufferBase<glitch::video::E_BUFFER_READ_MAP_ACCESS,(glitch::video::E_BUFFER_READ_MAP_ACCESS)1>::~SMapBufferBase() =====
glitch::IReferenceCounted **__fastcall glitch::video::detail::SMapBufferBase<glitch::video::E_BUFFER_READ_MAP_ACCESS,(glitch::video::E_BUFFER_READ_MAP_ACCESS)1>::~SMapBufferBase(
        glitch::IReferenceCounted **a1)
{
  glitch::IReferenceCounted *v2; // r5
  char v3; // r3

  if ( a1[1] )
  {
    v2 = *a1;
    v3 = *((_BYTE *)*a1 + 19);
    if ( (v3 & 0x1Fu) <= 1 )
    {
      if ( (*((_BYTE *)v2 + 18) & 0x20) != 0 )
        (*(void (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v2 + 24))(*a1);
      *((_BYTE *)v2 + 19) = 0;
    }
    else
    {
      *((_BYTE *)v2 + 19) = ((v3 & 0x1F) - 1) | v3 & 0xE0;
    }
  }
  if ( *a1 )
    glitch::IReferenceCounted::drop(*a1);
  return a1;
}


// ===== 5af030 glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::onSet3DMode(void) =====
void glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::onSet3DMode()
{
  ;
}


// ===== 5af034 glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::queryMaxLightCount(void) =====
int glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::queryMaxLightCount()
{
  return 8;
}


// ===== 5af03c glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::getMaxUserClipPlanes(void) =====
int glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::getMaxUserClipPlanes()
{
  return 6;
}


// ===== 5af044 glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::getShaderManager(void) =====
int __fastcall glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::getShaderManager(int a1)
{
  return *(_DWORD *)(a1 + 216);
}


// ===== 5af04c glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::getDriverType(void) =====
int glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::getDriverType()
{
  return 120;
}


// ===== 5af054 glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::getTransformForShader(glitch::video::E_TRANSFORMATION_STATE) =====
int __fastcall glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::getTransformForShader(
        int a1,
        int a2)
{
  return a1 + 68 * a2 + 2088;
}


// ===== 5af06c glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::swapBuffersImpl(int) =====
int __fastcall glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::swapBuffersImpl(int a1, int a2)
{
  if ( a2 )
    (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 168))(a1);
  return 1;
}


// ===== 5af08c glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::getShaderLanguageVersion(void) =====
int __fastcall glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::getShaderLanguageVersion(
        int a1)
{
  return *(_DWORD *)(a1 + 2080);
}


// ===== 5af094 glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setTextureLODBiasTexEnv(glitch::video::ITexture const*) =====
void glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setTextureLODBiasTexEnv()
{
  ;
}


// ===== 5af098 glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::SDrawSetup::~SDrawSetup() =====
void glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::SDrawSetup::~SDrawSetup()
{
  ;
}


// ===== 5af09c glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::SDrawSetup::~SDrawSetup() =====
void glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::SDrawSetup::~SDrawSetup()
{
  ;
}


// ===== 5af0a0 std::priv::__find<glitch::video::IRenderBuffer **,glitch::video::IRenderBuffer *>(glitch::video::IRenderBuffer **,glitch::video::IRenderBuffer **,glitch::video::IRenderBuffer * const&,std::random_access_iterator_tag const&) =====
_DWORD *__fastcall std::priv::__find<glitch::video::IRenderBuffer **,glitch::video::IRenderBuffer *>(
        _DWORD *a1,
        int a2,
        int *a3)
{
  _DWORD *v3; // r3
  int v4; // r0
  int v5; // r12
  int v6; // r4
  _DWORD *result; // r0
  int v8; // r4
  int v9; // r3

  v3 = a1;
  v4 = a2 - (_DWORD)a1;
  v5 = v4 >> 4;
  v6 = v4 >> 2;
  if ( v4 >> 4 <= 0 )
  {
    result = v3;
LABEL_15:
    switch ( v6 )
    {
      case 2:
        v9 = *a3;
        break;
      case 3:
        v9 = *a3;
        if ( *result == *a3 )
          return result;
        ++result;
        break;
      case 1:
        v9 = *a3;
LABEL_23:
        if ( *result != v9 )
          return (_DWORD *)a2;
        return result;
      default:
        return (_DWORD *)a2;
    }
    if ( *result == v9 )
      return result;
    ++result;
    goto LABEL_23;
  }
  v8 = *a3;
  if ( *v3 == *a3 )
    return v3;
  result = v3 + 1;
  if ( v8 != v3[1] )
  {
    result = v3 + 2;
    if ( v8 != v3[2] )
    {
      result = v3 + 3;
      if ( v8 != v3[3] )
      {
        do
        {
          if ( !--v5 )
          {
            result = v3 + 4;
            v6 = (a2 - (int)(v3 + 4)) >> 2;
            goto LABEL_15;
          }
          if ( v3[4] == v8 )
            return v3 + 4;
          if ( v3[5] == v8 )
            return v3 + 5;
          if ( v8 == v3[6] )
            return v3 + 6;
          v3 += 4;
        }
        while ( v8 != v3[3] );
        return v3 + 3;
      }
    }
  }
  return result;
}


// ===== 5af1d0 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CFramebuffer::~CFramebuffer() =====
void glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CFramebuffer::~CFramebuffer()
{
  ;
}


// ===== 5af1d4 glitch::video::CCommonGLDriverBase::CRenderBufferBase::~CRenderBufferBase() =====
void __fastcall glitch::video::CCommonGLDriverBase::CRenderBufferBase::~CRenderBufferBase(
        glitch::video::CCommonGLDriverBase::CRenderBufferBase *this)
{
  ;
}


// ===== 5af1d8 glitch::video::IMultipleRenderTarget::~IMultipleRenderTarget() =====
void __fastcall glitch::video::IMultipleRenderTarget::~IMultipleRenderTarget(
        glitch::video::IMultipleRenderTarget *this)
{
  ;
}


// ===== 5af1dc glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::resetTexturesLoader(void) =====
_DWORD *__fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::resetTexturesLoader(
        _DWORD *result)
{
  int v1; // r3

  v1 = result[56];
  result[508] = 0;
  result[509] = *(unsigned __int16 *)(v1 + 38);
  result[510] = *(_DWORD *)(v1 + 8);
  return result;
}


// ===== 5af1fc glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::getMaximalPrimitiveCount(void) =====
int glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::getMaximalPrimitiveCount()
{
  return 0xFFFF;
}


// ===== 5af204 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::captureFramebufferImpl(boost::intrusive_ptr<glitch::video::ITexture> const&,glitch::core::position2d<int> const&,glitch::core::rect<int> const&,uchar,glitch::video::E_TEXTURE_CUBE_MAP_FACE,bool) =====
int glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::captureFramebufferImpl()
{
  return 0;
}


// ===== 5af20c glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::swapBuffers(int) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::swapBuffers(
        int a1)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 536))(a1);
}


// ===== 5af220 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setPointSize(float) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setPointSize(
        float *a1,
        float a2)
{
  int result; // r0

  result = a2 == a1[135];
  if ( !result )
  {
    result = (*(int (__fastcall **)(float *))(*(_DWORD *)a1 + 508))(a1);
    a1[135] = a2;
  }
  return result;
}


// ===== 5af258 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setPolygonModeFront(glitch::video::E_POLYGON_MODE) =====
_DWORD *__fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setPolygonModeFront(
        _DWORD *result,
        int a2)
{
  _DWORD *v2; // r4

  v2 = result;
  if ( a2 != result[121] )
  {
    result = (_DWORD *)(*(int (__fastcall **)(_DWORD *))(*result + 508))(result);
    v2[121] = a2;
  }
  return result;
}


// ===== 5af284 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setPolygonModeBack(glitch::video::E_POLYGON_MODE) =====
_DWORD *__fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setPolygonModeBack(
        _DWORD *result,
        int a2)
{
  _DWORD *v2; // r4

  v2 = result;
  if ( a2 != result[122] )
  {
    result = (_DWORD *)(*(int (__fastcall **)(_DWORD *))(*result + 508))(result);
    v2[122] = a2;
  }
  return result;
}


// ===== 5af2b0 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setPolygonOffsetLineEnable(bool) =====
void glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setPolygonOffsetLineEnable()
{
  ;
}


// ===== 5af2b4 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setPolygonOffsetPointEnable(bool) =====
void glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setPolygonOffsetPointEnable()
{
  ;
}


// ===== 5af2b8 `global constructor keyed to'.._source_glitch_video_COpenGLES2Driver.cpp =====
void `global constructor keyed to'.._source_glitch_video_COpenGLES2Driver.cpp()
{
  dword_9F69B0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F69AC = 1056964608;
}


// ===== 5af2d8 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::endScene2D(void) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::endScene2D(
        int a1)
{
  (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 508))(a1);
  if ( !*(_BYTE *)(a1 + 352) )
    glitch::video::IVideoDriver::setOption((_DWORD *)a1, 0x100u, *(unsigned __int8 *)(a1 + 352));
  *(_DWORD *)(a1 + 160) = 2;
  (*(void (__fastcall **)(int, int, int))(*(_DWORD *)a1 + 108))(a1, 1, a1 + 920);
  (*(void (__fastcall **)(int, _DWORD, int))(*(_DWORD *)a1 + 108))(a1, 0, a1 + 988);
  (*(void (__fastcall **)(int, int, int))(*(_DWORD *)a1 + 108))(a1, 2, a1 + 852);
  return 1;
}


// ===== 5af35c glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setBlendFunc(glitch::video::E_BLEND_FACTOR,glitch::video::E_BLEND_FACTOR) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setBlendFunc(
        _DWORD *a1,
        unsigned __int8 a2,
        unsigned __int8 a3)
{
  int v3; // r6
  int v4; // r7
  int v5; // r4

  v3 = a2;
  v4 = a3;
  v5 = (unsigned __int16)(a2 | (a3 << 8));
  if ( v5 != a1[128] )
  {
    (*(void (__fastcall **)(_DWORD *))(*a1 + 508))(a1);
    glBlendFunc(
      glitch::video::`anonymous namespace'::BlendFactorMap[v3],
      glitch::video::`anonymous namespace'::BlendFactorMap[v4]);
    a1[128] = v5;
  }
}


// ===== 5af3b4 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setBlendEquation(glitch::video::E_BLEND_EQUATION) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setBlendEquation(
        _DWORD *a1,
        int a2)
{
  if ( a2 != a1[127] )
  {
    (*(void (__fastcall **)(_DWORD *))(*a1 + 508))(a1);
    glBlendEquation(glitch::video::`anonymous namespace'::BlendEquationMap[a2]);
    a1[127] = a2;
  }
}


// ===== 5af3f8 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateBlend<glitch::video::detail::renderpass::SRenderState>(glitch::video::detail::renderpass::SRenderState const&) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateBlend<glitch::video::detail::renderpass::SRenderState>(
        int a1,
        int *a2)
{
  unsigned int v4; // r2
  int v5; // r5
  int v6; // r3
  int v7; // r2
  int v8; // r5
  int v9; // r7
  int v10; // r6
  int v11; // r5
  int v12; // r8
  int v13; // [sp+4h] [bp-8h]

  if ( !*(_BYTE *)(a1 + 452) )
  {
    glEnable(0xBE2u);
    *(_BYTE *)(a1 + 452) = 1;
  }
  v4 = *a2;
  v5 = HIBYTE(*a2) & 7;
  if ( v5 != *(_DWORD *)(a1 + 508) )
  {
    glBlendEquation(glitch::video::`anonymous namespace'::BlendEquationMap[v5]);
    *(_DWORD *)(a1 + 508) = v5;
    v4 = *a2;
  }
  v6 = v4 & 0xF;
  v7 = (unsigned __int8)v4 >> 4;
  v8 = (unsigned __int16)((unsigned __int8)v6 | ((unsigned __int8)v7 << 8));
  if ( v8 != *(_DWORD *)(a1 + 512) )
  {
    glBlendFunc(
      glitch::video::`anonymous namespace'::BlendFactorMap[v6],
      glitch::video::`anonymous namespace'::BlendFactorMap[v7]);
    *(_DWORD *)(a1 + 512) = v8;
  }
  v9 = *((unsigned __int8 *)a2 + 8);
  v10 = *((unsigned __int8 *)a2 + 11);
  v11 = *((unsigned __int8 *)a2 + 10);
  v12 = *((unsigned __int8 *)a2 + 9);
  HIBYTE(v13) = v10;
  BYTE2(v13) = v11;
  BYTE1(v13) = v12;
  LOBYTE(v13) = v9;
  if ( v13 != *(_DWORD *)(a1 + 516) )
  {
    glBlendColor((float)v9 * 0.0039216, (float)v12 * 0.0039216, (float)v11 * 0.0039216, (float)v10 * 0.0039216);
    *(_BYTE *)(a1 + 516) = v9;
    *(_BYTE *)(a1 + 519) = v10;
    *(_BYTE *)(a1 + 518) = v11;
    *(_BYTE *)(a1 + 517) = v12;
  }
}


// ===== 5af574 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setBlendColor(glitch::video::SColor) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setBlendColor(
        _BYTE *a1,
        unsigned int a2)
{
  int v3; // r7
  int v4; // r8
  int v5; // r5
  int v6; // r6

  v3 = (unsigned __int8)a2;
  v4 = BYTE1(a2);
  v5 = BYTE2(a2);
  v6 = HIBYTE(a2);
  if ( a2 != *((_DWORD *)a1 + 129) )
  {
    (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)a1 + 508))(a1);
    glBlendColor((float)v3 * 0.0039216, (float)v4 * 0.0039216, (float)v5 * 0.0039216, (float)v6 * 0.0039216);
    a1[516] = v3;
    a1[519] = v6;
    a1[518] = v5;
    a1[517] = v4;
  }
}


// ===== 5af654 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateCullFace<glitch::video::detail::renderpass::SRenderState>(glitch::video::detail::renderpass::SRenderState const&) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateCullFace<glitch::video::detail::renderpass::SRenderState>(
        int a1,
        _DWORD *a2)
{
  int v4; // r3

  if ( !*(_BYTE *)(a1 + 453) )
  {
    glEnable(0xB44u);
    *(_BYTE *)(a1 + 453) = 1;
  }
  v4 = *a2 >> 30;
  if ( v4 != *(_DWORD *)(a1 + 472) )
  {
    *(_DWORD *)(a1 + 472) = v4;
    glCullFace(glitch::video::`anonymous namespace'::FaceCullingMap[v4]);
  }
}


// ===== 5af6b8 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setCullFace(glitch::video::E_FACE_SIDE) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setCullFace(
        _DWORD *a1,
        int a2)
{
  if ( a2 != a1[118] )
  {
    (*(void (__fastcall **)(_DWORD *))(*a1 + 508))(a1);
    glCullFace(glitch::video::`anonymous namespace'::FaceCullingMap[a2]);
    a1[118] = a2;
  }
}


// ===== 5af6fc glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateDepthTest<glitch::video::detail::renderpass::SRenderState>(glitch::video::detail::renderpass::SRenderState const&) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateDepthTest<glitch::video::detail::renderpass::SRenderState>(
        int a1,
        _DWORD *a2)
{
  int v4; // r3

  if ( !*(_BYTE *)(a1 + 454) )
  {
    glEnable(0xB71u);
    *(_BYTE *)(a1 + 454) = 1;
  }
  v4 = (*a2 >> 27) & 7;
  if ( v4 != *(_DWORD *)(a1 + 480) )
  {
    *(_DWORD *)(a1 + 480) = v4;
    glDepthFunc(glitch::video::`anonymous namespace'::CompareFuncMap[v4]);
  }
}


// ===== 5af760 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setDepthFunc(glitch::video::E_COMPARE_FUNC) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setDepthFunc(
        _DWORD *a1,
        int a2)
{
  if ( a2 != a1[120] )
  {
    (*(void (__fastcall **)(_DWORD *))(*a1 + 508))(a1);
    glDepthFunc(glitch::video::`anonymous namespace'::CompareFuncMap[a2]);
    a1[120] = a2;
  }
}


// ===== 5af7a4 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStatePolygonOffset<glitch::video::detail::renderpass::SRenderState>(glitch::video::detail::renderpass::SRenderState const&) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStatePolygonOffset<glitch::video::detail::renderpass::SRenderState>(
        int a1,
        int a2)
{
  float v4; // r6
  float v5; // r5

  if ( !*(_BYTE *)(a1 + 460) && (*(_DWORD *)(a2 + 4) & 0x200000) != 0 )
  {
    glEnable(0x8037u);
    *(_BYTE *)(a1 + 460) = 1;
  }
  v4 = *(float *)(a2 + 20);
  v5 = *(float *)(a2 + 24);
  if ( v4 != *(float *)(a1 + 544) || v5 != *(float *)(a1 + 548) )
  {
    glPolygonOffset(v4, v5);
    *(float *)(a1 + 548) = v5;
    *(float *)(a1 + 544) = v4;
  }
}


// ===== 5af828 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setPolygonOffset(float,float) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setPolygonOffset(
        float *a1,
        GLfloat a2,
        GLfloat a3)
{
  if ( a2 != a1[136] || a3 != a1[137] )
  {
    (*(void (__fastcall **)(float *))(*(_DWORD *)a1 + 508))(a1);
    glPolygonOffset(a2, a3);
    a1[137] = a3;
    a1[136] = a2;
  }
}


// ===== 5af88c glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateSampleCoverage<glitch::video::detail::renderpass::SRenderState>(glitch::video::detail::renderpass::SRenderState const&) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateSampleCoverage<glitch::video::detail::renderpass::SRenderState>(
        int a1,
        int a2)
{
  float v4; // r5
  int v5; // r6

  if ( !*(_BYTE *)(a1 + 465) )
    glEnable(0x80A0u);
  v4 = *(float *)(a2 + 28);
  v5 = (*(_DWORD *)(a2 + 4) >> 26) & 1;
  if ( v4 != *(float *)(a1 + 552) || *(unsigned __int8 *)(a1 + 466) != v5 )
  {
    *(_BYTE *)(a1 + 466) = v5;
    *(float *)(a1 + 552) = v4;
    glSampleCoverage(v4, v5);
  }
}


// ===== 5af8f8 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setSampleCoverageValue(float) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setSampleCoverageValue(
        int a1,
        GLclampf a2)
{
  if ( a2 != *(float *)(a1 + 552) )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 508))(a1);
    glSampleCoverage(a2, *(_BYTE *)(a1 + 466));
    *(GLclampf *)(a1 + 552) = a2;
  }
}


// ===== 5af93c glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setSampleCoverageInvert(bool) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setSampleCoverageInvert(
        int a1,
        int a2)
{
  GLboolean v3; // r5

  v3 = a2;
  if ( *(unsigned __int8 *)(a1 + 466) != a2 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 508))(a1);
    glSampleCoverage(*(GLclampf *)(a1 + 552), v3);
    *(_BYTE *)(a1 + 466) = v3;
  }
}


// ===== 5af974 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setStencilFuncMask(uchar) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setStencilFuncMask(
        _DWORD *a1,
        GLuint a2)
{
  int v4; // r3
  unsigned int v5; // r4

  v4 = a1[124];
  v5 = v4 & 0xFF00FFFF | ((unsigned __int8)a2 << 16);
  if ( v5 != v4 )
  {
    (*(void (__fastcall **)(_DWORD *))(*a1 + 508))(a1);
    glStencilFunc(glitch::video::`anonymous namespace'::BlendFactorMap[(unsigned __int8)v5 + 23], BYTE1(v5), a2);
    a1[124] = v5;
  }
}


// ===== 5af9cc glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setStencilFuncRef(uchar) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setStencilFuncRef(
        _DWORD *a1,
        GLint a2)
{
  int v4; // r3
  unsigned int v5; // r4

  v4 = a1[124];
  v5 = v4 & 0xFFFF00FF | ((unsigned __int8)a2 << 8);
  if ( v5 != v4 )
  {
    (*(void (__fastcall **)(_DWORD *))(*a1 + 508))(a1);
    glStencilFunc(glitch::video::`anonymous namespace'::BlendFactorMap[(unsigned __int8)v5 + 23], a2, BYTE2(v5));
    a1[124] = v5;
  }
}


// ===== 5afa24 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setStencilFunc(glitch::video::E_COMPARE_FUNC) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setStencilFunc(
        _DWORD *a1,
        unsigned __int8 a2)
{
  int v2; // r6
  int v4; // r3
  unsigned int v5; // r4

  v2 = a2;
  v4 = a1[124];
  v5 = v4 & 0xFFFFFF00 | a2;
  if ( v5 != v4 )
  {
    (*(void (__fastcall **)(_DWORD *))(*a1 + 508))(a1);
    glStencilFunc(glitch::video::`anonymous namespace'::BlendFactorMap[v2 + 23], BYTE1(v5), BYTE2(v5));
    a1[124] = v5;
  }
}


// ===== 5afa78 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateStencil<glitch::video::detail::renderpass::SRenderState>(glitch::video::detail::renderpass::SRenderState const&) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateStencil<glitch::video::detail::renderpass::SRenderState>(
        int a1,
        _DWORD *a2)
{
  unsigned int v4; // r0
  int v5; // r12
  unsigned int v6; // r4
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r0
  unsigned int v11; // r4

  if ( !*(_BYTE *)(a1 + 468) )
  {
    glEnable(0xB90u);
    *(_BYTE *)(a1 + 468) = 1;
  }
  v4 = a2[1];
  v5 = *(_DWORD *)(a1 + 496);
  v6 = v5 & 0xFF000000
     | v4 & 7
     | (unsigned __int16)((unsigned __int8)BYTE1(*a2) << 8)
     | ((unsigned __int8)BYTE2(*a2) << 16);
  if ( v6 != v5 )
  {
    glStencilFunc(
      glitch::video::`anonymous namespace'::BlendFactorMap[(v4 & 7) + 23],
      BYTE1(*a2),
      (unsigned __int8)BYTE2(*a2));
    *(_DWORD *)(a1 + 496) = v6;
    v4 = a2[1];
  }
  v7 = (v4 >> 3) & 7;
  v8 = (v4 >> 6) & 7;
  v9 = *(_DWORD *)(a1 + 500);
  v10 = (v4 >> 9) & 7;
  v11 = v9 & 0xFF000000 | v7 & 0xFF00FFFF | (v8 << 8) & 0xFF00FFFF | ((unsigned __int8)v10 << 16);
  if ( v11 != v9 )
  {
    glStencilOp(
      glitch::video::`anonymous namespace'::BlendFactorMap[v7 + 31],
      glitch::video::`anonymous namespace'::BlendFactorMap[v8 + 31],
      glitch::video::`anonymous namespace'::BlendFactorMap[v10 + 31]);
    *(_DWORD *)(a1 + 496) = v11;
  }
}


// ===== 5afb4c glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setStencilOpZPass(glitch::video::E_STENCIL_OP) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setStencilOpZPass(
        _DWORD *a1,
        unsigned __int8 a2)
{
  int v2; // r6
  int v4; // r3
  unsigned int v5; // r4

  v2 = a2;
  v4 = a1[125];
  v5 = v4 & 0xFF00FFFF | (a2 << 16);
  if ( v5 != v4 )
  {
    (*(void (__fastcall **)(_DWORD *))(*a1 + 508))(a1);
    glStencilOp(
      glitch::video::`anonymous namespace'::BlendFactorMap[(unsigned __int8)v5 + 31],
      glitch::video::`anonymous namespace'::BlendFactorMap[BYTE1(v5) + 31],
      glitch::video::`anonymous namespace'::BlendFactorMap[v2 + 31]);
    a1[125] = v5;
  }
}


// ===== 5afbb0 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setStencilOpZFail(glitch::video::E_STENCIL_OP) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setStencilOpZFail(
        _DWORD *a1,
        unsigned __int8 a2)
{
  int v2; // r6
  int v4; // r3
  unsigned int v5; // r4

  v2 = a2;
  v4 = a1[125];
  v5 = v4 & 0xFFFF00FF | (a2 << 8);
  if ( v5 != v4 )
  {
    (*(void (__fastcall **)(_DWORD *))(*a1 + 508))(a1);
    glStencilOp(
      glitch::video::`anonymous namespace'::BlendFactorMap[(unsigned __int8)v5 + 31],
      glitch::video::`anonymous namespace'::BlendFactorMap[v2 + 31],
      glitch::video::`anonymous namespace'::BlendFactorMap[BYTE2(v5) + 31]);
    a1[125] = v5;
  }
}


// ===== 5afc14 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setStencilOpFail(glitch::video::E_STENCIL_OP) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setStencilOpFail(
        _DWORD *a1,
        unsigned __int8 a2)
{
  int v2; // r6
  int v4; // r3
  unsigned int v5; // r4

  v2 = a2;
  v4 = a1[125];
  v5 = v4 & 0xFFFFFF00 | a2;
  if ( v5 != v4 )
  {
    (*(void (__fastcall **)(_DWORD *))(*a1 + 508))(a1);
    glStencilOp(
      glitch::video::`anonymous namespace'::BlendFactorMap[v2 + 31],
      glitch::video::`anonymous namespace'::BlendFactorMap[BYTE1(v5) + 31],
      glitch::video::`anonymous namespace'::BlendFactorMap[BYTE2(v5) + 31]);
    a1[125] = v5;
  }
}


// ===== 5afc78 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setFrontFace(glitch::video::E_FACE_WINDING) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setFrontFace(
        int a1,
        int a2)
{
  int v4; // r2

  if ( a2 != *(_DWORD *)(a1 + 476) )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 508))(a1);
    if ( *(_BYTE *)(a1 + 1184) )
      v4 = 1 - a2;
    else
      v4 = a2;
    glFrontFace(glitch::video::`anonymous namespace'::BlendFactorMap[v4 + 39]);
    *(_DWORD *)(a1 + 476) = a2;
  }
}


// ===== 5afccc glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setDepthMask(bool) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setDepthMask(
        _BYTE *a1,
        int a2)
{
  GLboolean v3; // r5

  v3 = a2;
  if ( (unsigned __int8)a1[455] != a2 )
  {
    (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)a1 + 508))(a1);
    glDepthMask(v3);
    a1[455] = v3;
  }
}


// ===== 5afd00 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setLineWidth(float) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setLineWidth(
        float *a1,
        GLfloat a2)
{
  if ( a2 != a1[134] )
  {
    (*(void (__fastcall **)(float *))(*(_DWORD *)a1 + 508))(a1);
    glLineWidth(a2);
    a1[134] = a2;
  }
}


// ===== 5afd40 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::updateParameters(void) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::updateParameters(
        int a1)
{
  unsigned int v2; // r2
  __int16 v3; // r3
  GLenum v4; // r5
  int v5; // r2
  int v6; // r2
  GLint v7; // r2
  const char *v8; // r6
  const char **StringsInternal; // r0
  unsigned int v10; // r3
  __int16 v11; // r2
  float v12; // r6

  v2 = *(_DWORD *)(a1 + 56);
  v3 = *(_WORD *)(a1 + 64);
  v4 = glitch::video::`anonymous namespace'::TextureTypeMap[v2 & 3];
  if ( (v3 & 4) != 0 )
  {
    if ( (*(_BYTE *)(a1 + 63) & 2) != 0
      && (*(_DWORD *)&glitch::video::pixel_format::detail::PFDTable[40 * ((v2 >> 4) & 0x3F)] & 8) != 0 )
    {
      v8 = *(const char **)(a1 + 28);
      StringsInternal = (const char **)glitch::video::getStringsInternal(0);
      glitch::os::Printer::logf(
        3,
        "texture %s: mipmap filtering with level 0 only data and %s not supported; using %s instead",
        v8,
        "compressed pixel format",
        *StringsInternal);
      v10 = *(_DWORD *)(a1 + 56);
      v5 = (v10 >> 12) & 7;
      if ( v5 )
      {
        v11 = *(_WORD *)(a1 + 64);
        *(_DWORD *)(a1 + 56) = v10 & 0xFFFF8FFF;
        *(_WORD *)(a1 + 64) = v11 | 4;
        v5 = 0;
      }
    }
    else
    {
      v5 = (v2 >> 12) & 7;
    }
    glTexParameteri(v4, 0x2801u, glitch::video::`anonymous namespace'::TextureFilterMap[v5]);
    v3 = *(_WORD *)(a1 + 64);
  }
  if ( (v3 & 8) != 0 )
  {
    glTexParameteri(
      v4,
      0x2800u,
      glitch::video::`anonymous namespace'::TextureFilterMap[(*(_DWORD *)(a1 + 56) >> 15) & 7]);
    v3 = *(_WORD *)(a1 + 64);
  }
  if ( (v3 & 0x10) != 0 )
  {
    glTexParameteri(
      v4,
      0x2802u,
      glitch::video::`anonymous namespace'::TextureWrapModeMap[(*(_DWORD *)(a1 + 56) >> 18) & 7]);
    v3 = *(_WORD *)(a1 + 64);
  }
  if ( (v3 & 0x20) != 0 )
  {
    glTexParameteri(
      v4,
      0x2803u,
      glitch::video::`anonymous namespace'::TextureWrapModeMap[(*(_DWORD *)(a1 + 56) >> 21) & 7]);
    v3 = *(_WORD *)(a1 + 64);
  }
  if ( (v3 & 0x40) == 0 )
    goto LABEL_22;
  v6 = *(_DWORD *)(a1 + 52);
  if ( (*(_DWORD *)(v6 + 156) & 0x80) != 0 )
  {
    glTexParameteri(
      v4,
      0x2803u,
      glitch::video::`anonymous namespace'::TextureWrapModeMap[(*(_DWORD *)(a1 + 56) >> 21) & 7]);
    v3 = *(_WORD *)(a1 + 64);
LABEL_22:
    v6 = *(_DWORD *)(a1 + 52);
  }
  if ( (v3 & 0x80) != 0 && (*(_DWORD *)(v6 + 156) & 0x20000) != 0 )
  {
    v12 = *(float *)(v6 + 1192);
    if ( v12 >= *(float *)(a1 + 68) )
      v12 = *(float *)(a1 + 68);
    glTexParameterf(v4, 0x84FEu, v12);
    v6 = *(_DWORD *)(a1 + 52);
    v3 = *(_WORD *)(a1 + 64);
  }
  if ( (*(_DWORD *)(v6 + 2028) & 0x80000) != 0 && (v3 & 0x400) != 0 )
  {
    if ( ((*(_DWORD *)(a1 + 56) >> 12) & 7u) > 3 )
      v7 = (int)ceilf(*(float *)(a1 + 80));
    else
      v7 = (int)(float)(*(float *)(a1 + 80) + 0.5);
    glTexParameteri(v4, 0x813Du, v7);
    v3 = *(_WORD *)(a1 + 64);
  }
  *(_WORD *)(a1 + 64) = v3 & 0xE003;
}


// ===== 5afff0 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::updateData(bool) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::updateData(
        int a1,
        int a2)
{
  int v2; // r9
  int v3; // r12
  int v4; // r3
  bool v5; // zf
  int v6; // r8
  int *v9; // r8
  int v10; // r4
  int v11; // r10
  char v12; // r0
  int v13; // r6
  int v14; // r0
  GLint v15; // r7
  int v16; // r2
  unsigned int v17; // r4
  int v18; // r6
  GLint v19; // r7
  int v20; // r3
  char *data; // lr
  unsigned int v22; // r2
  GLsizei v23; // r3
  GLsizei height; // r1
  int v25; // r0
  bool v26; // zf
  _DWORD *v27; // r12
  GLenum v28; // r0
  char *v29; // r12
  char v30; // r3
  char *v32; // [sp+20h] [bp-2Ch]
  _DWORD *v33; // [sp+24h] [bp-28h]
  GLenum *v34; // [sp+2Ch] [bp-20h]
  int v35; // [sp+34h] [bp-18h]
  GLenum *v36; // [sp+3Ch] [bp-10h]
  int v37; // [sp+40h] [bp-Ch]
  int v38; // [sp+44h] [bp-8h]

  v4 = *(unsigned __int8 *)(a1 + 63);
  v5 = (v4 & 2) == 0;
  if ( (v4 & 2) != 0 )
  {
    v4 = 1;
    v2 = *(unsigned __int8 *)(a1 + 62);
  }
  else
  {
    v3 = *(unsigned __int8 *)(a1 + 62);
  }
  if ( v5 )
    v37 = v3;
  else
    v37 = v4;
  if ( v5 )
  {
    v6 = v3;
    v2 = 1;
  }
  else
  {
    v6 = v2;
  }
  v9 = (int *)(*(_DWORD *)(a1 + 48) + 4 * (v6 + 1));
  v10 = (*(_DWORD *)(a1 + 56) >> 4) & 0x3F;
  v11 = *(_DWORD *)(a1 + 52);
  if ( *(_DWORD *)(a1 + 44) )
  {
    v12 = glitch::video::pixel_format::computePitch((*(_DWORD *)(a1 + 56) >> 4) & 0x3F, *(_DWORD *)(a1 + 32));
    v13 = *(_DWORD *)(a1 + 52);
    v5 = (v12 & 1) == 0;
    v14 = v12 & 3;
    v15 = v5 ? 4 - v14 : 1;
    if ( v15 != *(_DWORD *)(v13 + 620) )
    {
      glPixelStorei(0xCF5u, v15);
      *(_DWORD *)(v13 + 620) = v15;
    }
  }
  glGetError();
  v35 = v11 + 20 * v10;
  if ( (*(_DWORD *)(a1 + 56) & 3) == 2 )
    v16 = 6;
  else
    v16 = 1;
  v32 = nullptr;
  v38 = v16;
  v36 = (GLenum *)(v11 + 20 * v10 + 1204);
  v33 = nullptr;
  v17 = 0;
  while ( 1 )
  {
    if ( v37 )
    {
      v18 = 0;
      v34 = (GLenum *)(v35 + 1208);
      v19 = 0;
      do
      {
        v20 = *v9 & (1 << v17);
        if ( v20 )
        {
          data = *(char **)(a1 + 44);
          if ( data )
          {
            if ( (*(_BYTE *)(a1 + 63) & 2) != 0 )
              v22 = (*(_DWORD *)(*(_DWORD *)(a1 + 48) + 4) - **(_DWORD **)(a1 + 48)) * (_DWORD)v32;
            else
              v22 = *(_DWORD *)(*(_DWORD *)(a1 + 48) + v18)
                  + ((*(_DWORD *)(*(_DWORD *)(a1 + 48) + 4 * *(unsigned __int8 *)(a1 + 62)) + 127) & 0xFFFFFF80)
                  * (_DWORD)v32;
            data += v22;
          }
          v23 = *(int *)(a1 + 32) >> v19;
          height = *(int *)(a1 + 36) >> v19;
          v25 = *(_DWORD *)(a1 + 56) & 3;
          if ( v23 < 1 )
            v23 = 1;
          if ( height < 1 )
            height = 1;
          if ( v25 != 1 )
          {
            v26 = v25 == 2;
            if ( v25 == 2 )
              v27 = v33;
            else
              v27 = glitch::video::`anonymous namespace'::TextureTypeMap;
            if ( v25 == 2 )
              v28 = (GLenum)(v27 + 8512);
            else
              v28 = v27[v25];
            if ( v26 )
              v28 += 21;
            if ( (*(_DWORD *)&glitch::video::pixel_format::detail::PFDTable[40 * ((*(_DWORD *)(a1 + 56) >> 4) & 0x3F)]
                & 8) != 0 )
            {
              if ( a2 )
                glCompressedTexImage2D(
                  v28,
                  v19,
                  *(_DWORD *)(v35 + 1200),
                  v23,
                  height,
                  0,
                  *(_DWORD *)(*(_DWORD *)(a1 + 48) + v18 + 4) - *(_DWORD *)(*(_DWORD *)(a1 + 48) + v18),
                  data);
              else
                glCompressedTexSubImage2D(
                  v28,
                  v19,
                  0,
                  0,
                  v23,
                  height,
                  *(_DWORD *)(v35 + 1200),
                  *(_DWORD *)(*(_DWORD *)(a1 + 48) + v18 + 4) - *(_DWORD *)(*(_DWORD *)(a1 + 48) + v18),
                  data);
            }
            else if ( a2 )
            {
              glTexImage2D(
                v28,
                v19,
                *(_DWORD *)(v35 + 1200),
                v23,
                height,
                *(_DWORD *)&glitch::video::pixel_format::detail::PFDTable[40 * ((*(_DWORD *)(a1 + 56) >> 4) & 0x3F)] & 8,
                *v36,
                *v34,
                data);
            }
            else
            {
              glTexSubImage2D(v28, v19, 0, 0, v23, height, *v36, *v34, data);
            }
          }
          if ( glGetError() )
          {
            v20 = *(unsigned __int8 *)(a1 + 63) | 0x10;
            *(_BYTE *)(a1 + 63) = v20;
          }
        }
        v17 += v2;
        if ( v17 > 0x1F )
          v20 = 0;
        v18 += 4;
        if ( v17 > 0x1F )
        {
          *v9++ = v20;
          v17 -= 32;
        }
        ++v19;
      }
      while ( v18 != 4 * ((unsigned __int8)(v37 - 1) + 1) );
    }
    v29 = (char *)v33 + 1;
    v33 = (_DWORD *)((char *)v33 + 1);
    if ( (int)v33 >= v38 )
      break;
    v32 = v29;
  }
  if ( v17 )
    *v9 = 0;
  v30 = *(_BYTE *)(a1 + 63);
  *(_WORD *)(a1 + 64) &= 0xFFFCu;
  if ( (v30 & 0x10) == 0 && *(unsigned __int8 *)(a1 + 62) > 1u && (v30 & 2) != 0 )
  {
    if ( !*(_DWORD *)(a1 + 44) )
    {
      if ( (*(_DWORD *)&glitch::video::pixel_format::detail::PFDTable[40 * ((*(_DWORD *)(a1 + 56) >> 4) & 0x3F)] & 8) == 0 )
        return 1;
      goto LABEL_64;
    }
    if ( (*(_DWORD *)&glitch::video::pixel_format::detail::PFDTable[40 * ((*(_DWORD *)(a1 + 56) >> 4) & 0x3F)] & 8) != 0 )
    {
LABEL_64:
      glitch::os::Printer::logf(
        2,
        "texture %s: mipmap generation with compressed pixel format not supported; provide full data",
        *(const char **)(a1 + 28));
      return 1;
    }
    if ( (*(_DWORD *)(*(_DWORD *)(a1 + 52) + 156) & 4) != 0 )
      (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 32))(a1);
  }
  return 1;
}


// ===== 5b044c glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::update(bool) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::update(
        int a1,
        int a2)
{
  __int16 v2; // r3
  int result; // r0

  v2 = *(_WORD *)(a1 + 64);
  if ( (v2 & 0x1FFC) != 0 )
  {
    glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::updateParameters(a1);
    v2 = *(_WORD *)(a1 + 64);
  }
  result = v2 & 1;
  if ( (v2 & 1) != 0 )
    return glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::updateData(
             a1,
             a2);
  return result;
}


// ===== 5b0498 glitch::video::IMultipleRenderTarget::~IMultipleRenderTarget() =====
void __fastcall glitch::video::IMultipleRenderTarget::~IMultipleRenderTarget(
        glitch::video::IMultipleRenderTarget *this)
{
  LC_API_FREE_0(this);
}


// ===== 5b04ac glitch::video::CCommonGLDriverBase::CRenderBufferBase::~CRenderBufferBase() =====
void __fastcall glitch::video::CCommonGLDriverBase::CRenderBufferBase::~CRenderBufferBase(
        glitch::video::CCommonGLDriverBase::CRenderBufferBase *this)
{
  LC_API_FREE_0(this);
}


// ===== 5b04c0 glitch::video::IRenderBuffer::~IRenderBuffer() =====
void __fastcall glitch::video::IRenderBuffer::~IRenderBuffer(glitch::video::IRenderBuffer *this)
{
  LC_API_FREE_0(this);
}


// ===== 5b04d4 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CFramebuffer::~CFramebuffer() =====
_DWORD *__fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CFramebuffer::~CFramebuffer(
        _DWORD *a1)
{
  *a1 = off_977AE0;
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 5b0508 glitch::video::IVideoDriver::IFramebuffer::~IFramebuffer() =====
void __fastcall glitch::video::IVideoDriver::IFramebuffer::~IFramebuffer(
        glitch::video::IVideoDriver::IFramebuffer *this)
{
  LC_API_FREE_0(this);
}


// ===== 5b051c glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::unbindImpl(void) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::unbindImpl(
        int a1)
{
  int v1; // r2
  int v3; // r3
  int result; // r0
  int v5; // r2
  char v6; // r3

  v1 = *(unsigned __int8 *)(a1 + 16);
  v3 = *(_DWORD *)(a1 + 20) + 596;
  if ( *(_DWORD *)(v3 + 4 * v1) == *(_DWORD *)(a1 + 24) )
    *(_DWORD *)(v3 + 4 * v1) = 0;
  glDeleteBuffers();
  result = (*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(a1 + 20) + 80))(
             *(_DWORD *)(a1 + 20),
             *(_DWORD *)(a1 + 24));
  v5 = *(_DWORD *)(a1 + 12);
  v6 = *(_BYTE *)(a1 + 18) & 0xE7;
  *(_BYTE *)(a1 + 18) = v6;
  if ( v5 )
    v6 = v6 & 0xF9 | 2;
  *(_DWORD *)(a1 + 24) = 0;
  if ( v5 )
    *(_BYTE *)(a1 + 18) = v6;
  return result;
}


// ===== 5b0594 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::ReloadbufferMap(void) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::ReloadbufferMap(
        int result)
{
  int v1; // r4
  int v2; // r5
  int v3; // r2
  int v4; // r3

  v1 = *(_DWORD *)(result + 2056);
  v2 = result + 2048;
  while ( v2 != v1 )
  {
    while ( 1 )
    {
      glBindBuffer();
      glBufferData();
      result = glBindBuffer();
      v3 = *(_DWORD *)(v1 + 12);
      if ( !v3 )
        break;
      while ( *(_DWORD *)(v3 + 8) )
        v3 = *(_DWORD *)(v3 + 8);
      v1 = v3;
      if ( v2 == v3 )
        return result;
    }
    v4 = *(_DWORD *)(v1 + 4);
    if ( *(_DWORD *)(v4 + 12) == v1 )
    {
      do
      {
        v1 = v4;
        v4 = *(_DWORD *)(v4 + 4);
      }
      while ( v1 == *(_DWORD *)(v4 + 12) );
      v3 = *(_DWORD *)(v1 + 12);
    }
    if ( v4 != v3 )
      v1 = v4;
  }
  return result;
}


// ===== 5b0638 glitch::video::detail::drawIndexedSoftPolygonMode<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(glitch::video::CPrimitiveStream const&,glitch::video::E_POLYGON_MODE,void const*) =====
int __fastcall glitch::video::detail::drawIndexedSoftPolygonMode<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r4
  char *v4; // r5
  GLenum v5; // r6
  int v6; // r10
  int v8; // r0
  int v9; // r7
  GLsizei v10; // r10
  int v11; // r3
  unsigned int v12; // r7
  char *v13; // r8
  int v14; // r4
  char *v15; // r3

  v3 = *(unsigned __int16 *)(a1 + 20);
  v4 = (char *)(a3 + *(_DWORD *)(a1 + 4));
  v5 = glitch::video::`anonymous namespace'::IndexTypeMap[v3];
  if ( a2 == 2 )
  {
LABEL_5:
    glDrawElements(0, *(_DWORD *)(a1 + 8), glitch::video::`anonymous namespace'::IndexTypeMap[v3], v4);
    return 1;
  }
  else
  {
    v6 = *(unsigned __int16 *)(a1 + 22);
    switch ( *(_WORD *)(a1 + 22) )
    {
      case 0:
        goto LABEL_5;
      case 1:
      case 2:
      case 3:
        glDrawElements(
          glitch::video::`anonymous namespace'::PrimitiveTypeMap[v6],
          *(_DWORD *)(a1 + 8),
          glitch::video::`anonymous namespace'::IndexTypeMap[v3],
          v4);
        break;
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
        v8 = *(_DWORD *)(a1 + 8);
        v9 = glitch::video::detail::drawIndexedSoftPolygonMode<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(glitch::video::CPrimitiveStream const&,glitch::video::E_POLYGON_MODE,void const*)::strides[v6 - 4];
        if ( v6 > 6 )
          v10 = 4;
        else
          v10 = 3;
        v11 = glitch::video::getIndexTypeSize(glitch::video::E_INDEX_TYPE)::sizes[v3];
        v12 = v11 * v9;
        v13 = &v4[v12 * (v8 * v11 / v12)];
        if ( v4 != v13 )
        {
          v14 = 0;
          v15 = v4;
          do
          {
            v14 += v12;
            glDrawElements(2u, v10, v5, v15);
            v15 = &v4[v14];
          }
          while ( v13 != &v4[v14] );
        }
        break;
      default:
        return 1;
    }
    return 1;
  }
}


// ===== 5b076c glitch::video::detail::drawIndexedSoftQuads<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(glitch::video::CPrimitiveStream const&,void const*) =====
int __fastcall glitch::video::detail::drawIndexedSoftQuads<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(
        int a1,
        int a2)
{
  int v2; // r10
  char *v3; // r5
  int v4; // r7
  char *v5; // r6
  int v6; // r4
  char *v7; // r3

  v2 = *(unsigned __int16 *)(a1 + 20);
  v3 = (char *)(a2 + *(_DWORD *)(a1 + 4));
  v4 = 4 * glitch::video::getIndexTypeSize(glitch::video::E_INDEX_TYPE)::sizes[v2];
  v5 = &v3[v4 * glitch::video::CPrimitiveStream::getPrimitiveCount((glitch::video::CPrimitiveStream *)a1)];
  if ( v3 != v5 )
  {
    v6 = 0;
    v7 = v3;
    do
    {
      v6 += v4;
      glDrawElements(5u, 4, glitch::video::`anonymous namespace'::IndexTypeMap[v2], v7);
      v7 = &v3[v6];
    }
    while ( v5 != &v3[v6] );
  }
  return 1;
}


// ===== 5b07f0 glitch::video::detail::drawUnindexedSoftPolygonMode<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(glitch::video::CPrimitiveStream const&,glitch::video::E_POLYGON_MODE) =====
int __fastcall glitch::video::detail::drawUnindexedSoftPolygonMode<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(
        int a1,
        int a2)
{
  int v4; // r0
  unsigned int v6; // r7
  unsigned int v7; // r1
  GLsizei v8; // r8
  int v9; // r4
  unsigned int v10; // r6
  int v11; // r5

  if ( a2 == 2 )
  {
LABEL_5:
    glDrawArrays(0, *(_DWORD *)(a1 + 12), *(_DWORD *)(a1 + 8));
    return 1;
  }
  else
  {
    v4 = *(unsigned __int16 *)(a1 + 22);
    switch ( v4 )
    {
      case 0:
        goto LABEL_5;
      case 1:
      case 2:
      case 3:
        glDrawArrays(
          glitch::video::`anonymous namespace'::PrimitiveTypeMap[v4],
          *(_DWORD *)(a1 + 12),
          *(_DWORD *)(a1 + 8));
        break;
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
        v6 = *(_DWORD *)(a1 + 16);
        v7 = *(_DWORD *)(a1 + 12);
        if ( v4 > 6 )
          v8 = 4;
        else
          v8 = 3;
        v9 = glitch::video::detail::drawUnindexedSoftPolygonMode<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(glitch::video::CPrimitiveStream const&,glitch::video::E_POLYGON_MODE)::strides[v4 - 4];
        if ( v7 < v6 )
        {
          v10 = v9 + v7;
          v11 = v9 + v7;
          while ( 1 )
          {
            v11 += v9;
            glDrawArrays(2u, v7, v8);
            v7 = v10;
            if ( v6 <= v11 - v9 )
              break;
            v10 += v9;
          }
        }
        break;
      default:
        return 1;
    }
    return 1;
  }
}


// ===== 5b08e8 glitch::video::detail::drawUnindexedSoftQuads<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(glitch::video::CPrimitiveStream const&) =====
int __fastcall glitch::video::detail::drawUnindexedSoftQuads<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(
        int a1,
        int a2)
{
  int v2; // r6
  int v4; // r0
  GLvoid *v5; // r4
  unsigned int v6; // r6
  int v7; // r2
  unsigned int v8; // r6
  _WORD *v9; // r3
  unsigned int PrimitiveCount; // r0
  void *v11; // r1

  v2 = *(_DWORD *)(a1 + 8);
  v4 = glitch::core::allocProcessBuffer((glitch::core *)(4 * dword_99B5DC * v2), a2);
  v5 = (GLvoid *)v4;
  if ( *(_WORD *)(a1 + 22) == 8 )
  {
    v6 = v2 & 0xFFFFFFFC;
    v7 = 4;
  }
  else
  {
    v6 = v2 & 0xFFFFFFFE;
    if ( v6 <= 3 )
      v6 = 0;
    v7 = 2;
  }
  if ( v6 )
  {
    v8 = v6 + v7;
    v9 = (_WORD *)v4;
    do
    {
      *v9 = 0;
      v9[1] = 1;
      v9[2] = 3;
      v9[3] = 3;
      v8 += v7;
      v9[4] = 1;
      v9[5] = 2;
      v9 += 6;
    }
    while ( v8 != v7 );
  }
  PrimitiveCount = glitch::video::CPrimitiveStream::getPrimitiveCount((glitch::video::CPrimitiveStream *)a1);
  glDrawElements(4u, 6 * PrimitiveCount, 0x1403u, v5);
  if ( v5 )
    glitch::core::releaseProcessBuffer((glitch::core *)v5, v11);
  return 1;
}


// ===== 5b09c8 glitch::video::detail::drawPrimitives<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(glitch::video::CPrimitiveStream const&,glitch::video::E_POLYGON_MODE,uchar const*) =====
int __fastcall glitch::video::detail::drawPrimitives<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r4
  int v4; // r1
  int v6; // r3

  v3 = *(_DWORD *)a1;
  if ( *(_DWORD *)a1 )
  {
    if ( a2 )
    {
      return glitch::video::detail::drawIndexedSoftPolygonMode<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(
               a1,
               a2,
               *(_DWORD *)(v3 + 8));
    }
    else
    {
      v4 = *(unsigned __int16 *)(a1 + 22);
      if ( v4 == 8 )
      {
        return glitch::video::detail::drawIndexedSoftQuads<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(
                 a1,
                 *(_DWORD *)(v3 + 8));
      }
      else
      {
        glDrawElements(
          glitch::video::`anonymous namespace'::PrimitiveTypeMap[v4],
          *(_DWORD *)(a1 + 8),
          glitch::video::`anonymous namespace'::IndexTypeMap[*(unsigned __int16 *)(a1 + 20)],
          (const GLvoid *)(a3 + *(_DWORD *)(a1 + 4)));
        return 1;
      }
    }
  }
  else if ( a2 )
  {
    return glitch::video::detail::drawUnindexedSoftPolygonMode<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(
             a1,
             a2);
  }
  else
  {
    v6 = *(unsigned __int16 *)(a1 + 22);
    if ( v6 == 8 || v6 == 7 )
    {
      return glitch::video::detail::drawUnindexedSoftQuads<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(
               a1,
               0);
    }
    else
    {
      glDrawArrays(
        glitch::video::`anonymous namespace'::PrimitiveTypeMap[v6],
        *(_DWORD *)(a1 + 12),
        *(_DWORD *)(a1 + 8));
      return 1;
    }
  }
}


// ===== 5b0a9c glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setViewportImpl(glitch::core::rect<int> const&) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setViewportImpl(
        glitch::video::CCommonGLDriverBase *a1,
        _DWORD *a2)
{
  int v4; // r5
  int v5; // r3
  GLsizei height; // [sp+10h] [bp-10h] BYREF
  GLsizei width; // [sp+14h] [bp-Ch] BYREF
  GLint y; // [sp+18h] [bp-8h] BYREF
  GLint x; // [sp+1Ch] [bp-4h] BYREF

  (*(void (__fastcall **)(glitch::video::CCommonGLDriverBase *))(*(_DWORD *)a1 + 508))(a1);
  if ( (unsigned int)((*((_DWORD *)a1 + 51) - *((_DWORD *)a1 + 50)) >> 2) > 1 )
    v4 = 0;
  else
    v4 = *((_DWORD *)a1 + 79);
  if ( (v4 != *((_DWORD *)a1 + 148)
     || *((_DWORD *)a1 + 144) != *a2
     || *((_DWORD *)a1 + 145) != a2[1]
     || *((_DWORD *)a1 + 146) != a2[2]
     || *((_DWORD *)a1 + 147) != a2[3])
    && glitch::video::CCommonGLDriverBase::fixUpScreenArea(a1, a2, &x, &y, &width, &height, 0, 0) )
  {
    glViewport(x, y, width, height);
    if ( *((_DWORD *)a1 + 40) == 1
      && (width != *((_DWORD *)a1 + 146) - *((_DWORD *)a1 + 144)
       || height != *((_DWORD *)a1 + 147) - *((_DWORD *)a1 + 145)) )
    {
      glitch::video::CCommonGLDriverBase::set2DProjection(a1);
    }
    *((_DWORD *)a1 + 144) = *a2;
    *((_DWORD *)a1 + 145) = a2[1];
    *((_DWORD *)a1 + 146) = a2[2];
    v5 = a2[3];
    *((_DWORD *)a1 + 148) = v4;
    *((_DWORD *)a1 + 147) = v5;
  }
}


// ===== 5b0bec glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setScissor(glitch::core::rect<int> const&) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setScissor(
        _DWORD *a1,
        _DWORD *a2)
{
  int v3; // r5
  int v5; // r3
  GLsizei height; // [sp+10h] [bp-10h] BYREF
  GLsizei width; // [sp+14h] [bp-Ch] BYREF
  GLint y; // [sp+18h] [bp-8h] BYREF
  GLint x; // [sp+1Ch] [bp-4h] BYREF

  if ( (unsigned int)((a1[51] - a1[50]) >> 2) > 1 )
    v3 = 0;
  else
    v3 = a1[79];
  if ( v3 != a1[143] || *a2 != a1[139] || a2[1] != a1[140] || a2[2] != a1[141] || a2[3] != a1[142] )
  {
    (*(void (__fastcall **)(_DWORD *))(*a1 + 508))(a1);
    glitch::video::CCommonGLDriverBase::fixUpScreenArea(a1, a2, &x, &y, &width, &height, 1, 0);
    glScissor(x, y, width, height);
    a1[139] = *a2;
    a1[140] = a2[1];
    a1[141] = a2[2];
    v5 = a2[3];
    a1[143] = v3;
    a1[142] = v5;
  }
}


// ===== 5b0cec glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setColorMask(bool,bool,bool,bool) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setColorMask(
        _DWORD *a1,
        GLboolean a2,
        GLboolean a3,
        GLboolean a4,
        GLboolean a5)
{
  int v6; // r4

  v6 = a2 | (unsigned __int16)(a3 << 8) | (a4 << 16) & 0xFFFFFF | (a5 << 24);
  if ( v6 != a1[123] )
  {
    (*(void (__fastcall **)(_DWORD *))(*a1 + 508))(a1);
    glColorMask(a2, a3, a4, a5);
    a1[123] = v6;
  }
}


// ===== 5b0d4c glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setClearColor(glitch::video::SColor) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setClearColor(
        _BYTE *a1,
        unsigned int a2)
{
  int v3; // r7
  int v4; // r8
  int v5; // r5
  int v6; // r6

  v3 = (unsigned __int8)a2;
  v4 = BYTE1(a2);
  v5 = BYTE2(a2);
  v6 = HIBYTE(a2);
  if ( a2 != *((_DWORD *)a1 + 130) )
  {
    (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)a1 + 508))(a1);
    glClearColor((float)v3 * 0.0039216, (float)v4 * 0.0039216, (float)v5 * 0.0039216, (float)v6 * 0.0039216);
    a1[520] = v3;
    a1[523] = v6;
    a1[522] = v5;
    a1[521] = v4;
  }
}


// ===== 5b0e2c glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setStencilMask(uchar) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setStencilMask(
        _BYTE *a1,
        GLuint a2)
{
  if ( (unsigned __int8)a1[504] != a2 )
  {
    (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)a1 + 508))(a1);
    glStencilMask(a2);
    a1[504] = a2;
  }
}


// ===== 5b0e60 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setClearStencil(uchar) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setClearStencil(
        _BYTE *a1,
        GLint a2)
{
  if ( (unsigned __int8)a1[505] != a2 )
  {
    (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)a1 + 508))(a1);
    glClearStencil(a2);
    a1[505] = a2;
  }
}


// ===== 5b0e94 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setClearDepth(float) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setClearDepth(
        float *a1,
        float a2)
{
  int result; // r0

  result = a2 == a1[131];
  if ( !result )
  {
    (*(void (__fastcall **)(float *))(*(_DWORD *)a1 + 508))(a1);
    return glClearDepthf();
  }
  return result;
}


// ===== 5b0ed4 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setDepthRange(float,float) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setDepthRange(
        float *a1,
        float a2,
        float a3)
{
  int result; // r0

  if ( a2 != a1[132] || (result = a3 == a1[133], a3 != a1[133]) )
  {
    (*(void (__fastcall **)(float *))(*(_DWORD *)a1 + 508))(a1);
    result = glDepthRangef();
    a1[133] = a3;
    a1[132] = a2;
  }
  return result;
}


// ===== 5b0f38 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::clearBuffers(int) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::clearBuffers(
        _DWORD *a1,
        char a2)
{
  GLbitfield v4; // r5
  int v5; // r8
  GLuint v6; // r7
  int v7; // r6
  int v8; // r10
  int v9; // r10
  int v10; // r12
  int v11; // r11
  int v12; // r9
  int v13; // r3
  int v14; // r1
  int v15; // [sp+0h] [bp-Ch]

  (*(void (__fastcall **)(_DWORD *))(*a1 + 508))(a1);
  v4 = a2 & 1;
  if ( (a2 & 1) != 0 )
    v4 = 0x4000;
  v5 = *((unsigned __int8 *)a1 + 455);
  if ( (a2 & 2) != 0 )
  {
    if ( !*((_BYTE *)a1 + 455) )
      glDepthMask(1u);
    v4 |= 0x100u;
  }
  v6 = *((unsigned __int8 *)a1 + 504);
  if ( (a2 & 4) != 0 )
  {
    if ( v6 != 255 )
      glStencilMask(0xFFu);
    v4 |= 0x400u;
  }
  v7 = *((unsigned __int8 *)a1 + 467);
  if ( (a1[78] & 1) == 0 )
  {
    v8 = *((unsigned __int8 *)a1 + 467);
    goto LABEL_17;
  }
  if ( *((_BYTE *)a1 + 467) )
  {
    glDisable(0xC11u);
    v9 = *((unsigned __int8 *)a1 + 520);
    v10 = *((unsigned __int8 *)a1 + 523);
    v11 = *((unsigned __int8 *)a1 + 522);
    v12 = *((unsigned __int8 *)a1 + 521);
    if ( *((_BYTE *)a1 + 520) )
      goto LABEL_15;
  }
  else
  {
    v9 = *((unsigned __int8 *)a1 + 520);
    v10 = *((unsigned __int8 *)a1 + 523);
    v11 = *((unsigned __int8 *)a1 + 522);
    v12 = *((unsigned __int8 *)a1 + 521);
    if ( *((_BYTE *)a1 + 520) )
      goto LABEL_15;
  }
  if ( !v12 && !v11 )
  {
    glClear(0x4000u);
    goto LABEL_16;
  }
LABEL_15:
  v15 = v10;
  glClearColor(0.0, 0.0, 0.0, 0.0);
  glClear(0x4000u);
  glClearColor((float)v9 / 255.0, (float)v12 / 255.0, (float)v11 / 255.0, (float)v15 / 255.0);
LABEL_16:
  v8 = 0;
  a1[78] &= ~1u;
LABEL_17:
  if ( v4 )
  {
    v13 = a1[51];
    if ( (v13 - a1[50]) >> 2 == 1 )
    {
      v14 = *(_DWORD *)(v13 - 4);
      if ( *(_DWORD *)(v14 + 44) || *(_DWORD *)(v14 + 48) )
      {
        if ( !v8 )
        {
          glEnable(0xC11u);
          v8 = 1;
          v14 = *(_DWORD *)(a1[51] - 4);
        }
        (*(void (__fastcall **)(_DWORD *, int))(*a1 + 404))(a1, v14 + 20);
      }
    }
    glClear(v4);
  }
  if ( v8 != v7 )
  {
    if ( v7 )
      glEnable(0xC11u);
    else
      glDisable(0xC11u);
  }
  if ( !v5 )
    glDepthMask(0);
  if ( v6 != 255 )
    glStencilMask(v6);
}


// ===== 5b1190 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::createMultipleRenderTarget(void) =====
glitch::video::CCommonGLDriverBase::CRenderTargetBase **__fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::createMultipleRenderTarget(
        glitch::video::CCommonGLDriverBase::CRenderTargetBase **a1,
        glitch::video::CCommonGLDriverBase *a2)
{
  glitch::video::CCommonGLDriverBase::CRenderTargetBase *v4; // r4

  v4 = (glitch::video::CCommonGLDriverBase::CRenderTargetBase *)operator new(0x5Cu, 0);
  glitch::video::CCommonGLDriverBase::CRenderTargetBase::CRenderTargetBase(v4, a2);
  *(_DWORD *)v4 = &off_9777C8;
  *a1 = v4;
  ++*((_DWORD *)v4 + 1);
  return a1;
}


// ===== 5b11ec glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderBuffer::bind(void) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderBuffer::bind(
        int result)
{
  if ( !*(_DWORD *)(result + 24) )
  {
    glGenRenderbuffers();
    glBindRenderbuffer();
    return glRenderbufferStorage();
  }
  return result;
}


// ===== 5b1244 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CFramebuffer::bind(void) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CFramebuffer::bind(
        int a1)
{
  _DWORD *v1; // r3
  int result; // r0
  int v4; // r3
  int v5; // r5

  v1 = *(_DWORD **)(a1 + 8);
  if ( (v1[39] & 0x800) != 0 )
    glBindFramebuffer();
  else
    (*(void (__fastcall **)(_DWORD, int))(*v1 + 168))(*(_DWORD *)(a1 + 8), -1);
  result = (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 8) + 488))(*(_DWORD *)(a1 + 8), a1 + 20);
  v4 = *(_DWORD *)(a1 + 8);
  if ( *(_BYTE *)(v4 + 1184) )
  {
    *(_BYTE *)(v4 + 1184) = 0;
    v5 = (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 8) + 112))(*(_DWORD *)(a1 + 8), 2);
    glFrontFace(glitch::video::`anonymous namespace'::FaceWindingMap[*(_DWORD *)(*(_DWORD *)(a1 + 8) + 476)]);
    return (*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(a1 + 8) + 108))(*(_DWORD *)(a1 + 8), 2, v5);
  }
  return result;
}


// ===== 5b130c glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderBuffer::unbind(void) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderBuffer::unbind(
        int result)
{
  int v1; // r4

  v1 = result;
  if ( *(_DWORD *)(result + 24) )
  {
    result = glDeleteRenderbuffers();
    *(_DWORD *)(v1 + 24) = 0;
  }
  return result;
}


// ===== 5b1338 glitch::video::IVideoDriver::unregisterRenderBuffer(glitch::video::IRenderBuffer *) =====
char *__fastcall glitch::video::IVideoDriver::unregisterRenderBuffer(
        glitch::video::IVideoDriver *this,
        glitch::video::IRenderBuffer *a2)
{
  char *result; // r0
  char *v4; // r3
  glitch::video::IRenderBuffer *v5; // [sp+4h] [bp-Ch] BYREF

  v5 = a2;
  result = (char *)std::priv::__find<glitch::video::IRenderBuffer **,glitch::video::IRenderBuffer *>(
                     *((_DWORD **)this + 85),
                     *((_DWORD *)this + 86),
                     (int *)&v5);
  v4 = *((char **)this + 86);
  if ( result != v4 )
  {
    if ( v4 != result + 4 )
    {
      result = (char *)memmove(result, result + 4, v4 - (result + 4));
      v4 = *((char **)this + 86);
    }
    *((_DWORD *)this + 86) = v4 - 4;
  }
  return result;
}


// ===== 5b1398 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderBuffer::~CRenderBuffer() =====
glitch::video::IVideoDriver **__fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderBuffer::~CRenderBuffer(
        glitch::video::IVideoDriver **a1)
{
  *a1 = (glitch::video::IVideoDriver *)off_977848;
  glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderBuffer::unbind((int)a1);
  glitch::video::IVideoDriver::unregisterRenderBuffer(a1[5], (glitch::video::IRenderBuffer *)a1);
  return a1;
}


// ===== 5b13d8 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderBuffer::~CRenderBuffer() =====
glitch::video::IVideoDriver **__fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderBuffer::~CRenderBuffer(
        glitch::video::IVideoDriver **a1)
{
  glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderBuffer::~CRenderBuffer(a1);
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 5b13f4 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::createBuffer(glitch::video::E_BUFFER_TYPE,glitch::video::E_BUFFER_USAGE,uint,void *,bool) =====
_DWORD *__fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::createBuffer(
        _DWORD *a1,
        int a2,
        int a3,
        int a4,
        int a5,
        int a6,
        unsigned __int8 a7)
{
  _DWORD *v11; // r4

  v11 = operator new(0x20u, 0);
  glitch::video::CCommonGLDriverBase::CBufferBase::CBufferBase(v11, a2, a3, a4, a5, a6, a7);
  *v11 = &off_977890;
  *a1 = v11;
  ++v11[1];
  return a1;
}


// ===== 5b1480 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::cloneImpl(void) =====
glitch::IReferenceCounted **__fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::cloneImpl(
        glitch::IReferenceCounted **a1,
        int a2)
{
  int v2; // r6
  int v5; // r9
  int v6; // r10
  int v7; // r8
  int v8; // r11
  glitch::IReferenceCounted *v9; // r7
  glitch::IReferenceCounted *v10; // r0
  void *v12; // r11
  int v13; // r9
  int v14; // r10
  int v15; // r8
  int v16; // r7
  glitch::IReferenceCounted *v17; // r6
  glitch::IReferenceCounted *v18; // r0
  int v19; // [sp+14h] [bp-10h]
  glitch::IReferenceCounted *v20; // [sp+18h] [bp-Ch] BYREF
  void *v21; // [sp+1Ch] [bp-8h]

  *a1 = nullptr;
  v2 = *(_DWORD *)(a2 + 8);
  if ( v2 )
  {
    v5 = *(_DWORD *)(a2 + 20);
    v6 = *(unsigned __int8 *)(a2 + 16);
    v7 = *(unsigned __int8 *)(a2 + 17);
    v8 = *(_DWORD *)(a2 + 12);
    v19 = *(_BYTE *)(a2 + 18) & 1;
    v9 = (glitch::IReferenceCounted *)operator new(0x20u, 0);
    glitch::video::CCommonGLDriverBase::CBufferBase::CBufferBase(v9, v5, v6, v7, v8, v2, v19);
    ++*((_DWORD *)v9 + 1);
    *(_DWORD *)v9 = &off_977890;
    v10 = *a1;
    *a1 = v9;
    if ( v10 )
      glitch::IReferenceCounted::drop(v10);
  }
  else
  {
    *(_DWORD *)(a2 + 4) += 2;
    v20 = (glitch::IReferenceCounted *)a2;
    v21 = (void *)glitch::video::IBuffer::map(a2, 0);
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)a2);
    v12 = operator new[](*(_DWORD *)(a2 + 12), 0);
    memcpy(v12, v21, *(_DWORD *)(a2 + 12));
    v13 = *(_DWORD *)(a2 + 20);
    v14 = *(unsigned __int8 *)(a2 + 16);
    v15 = *(unsigned __int8 *)(a2 + 17);
    v16 = *(_DWORD *)(a2 + 12);
    v17 = (glitch::IReferenceCounted *)operator new(0x20u, 0);
    glitch::video::CCommonGLDriverBase::CBufferBase::CBufferBase(v17, v13, v14, v15, v16, v12, 1);
    ++*((_DWORD *)v17 + 1);
    *(_DWORD *)v17 = &off_977890;
    v18 = *a1;
    *a1 = v17;
    if ( v18 )
      glitch::IReferenceCounted::drop(v18);
    glitch::video::detail::SMapBufferBase<glitch::video::E_BUFFER_READ_MAP_ACCESS,(glitch::video::E_BUFFER_READ_MAP_ACCESS)1>::~SMapBufferBase(&v20);
  }
  return a1;
}


// ===== 5b15f0 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::reloadShaders(void) =====
glitch::IReferenceCounted *__fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::reloadShaders(
        int a1)
{
  int v2; // r5
  _DWORD *v3; // r3
  int *v4; // r5
  int v5; // r2
  glitch::IReferenceCounted *result; // r0
  int v7; // r1
  int v8; // r3
  unsigned int v9; // r2
  int *v10; // r3
  glitch::IReferenceCounted *v11; // r4
  int v12; // r3
  int v13; // r2
  int v14; // r1

  v2 = a1 + 2032;
  glitch::os::Printer::print(
    (glitch::os::Printer *)"COUNT SHADERS ---> %d",
    (const char *)*(unsigned __int16 *)(*(_DWORD *)(a1 + 216) + 42));
  v3 = *(_DWORD **)(a1 + 216);
  v4 = (int *)(v2 + 12);
  *(_DWORD *)(a1 + 2044) = v3[3];
  v5 = *v4;
  for ( result = nullptr; v3 + 1 != (_DWORD *)*v4; result = v11 )
  {
    v7 = v3[8];
    v8 = v3[7];
    v9 = *(unsigned __int16 *)(v5 + 28);
    if ( v9 < (v7 - v8) >> 3 )
      v10 = (int *)(v8 + 8 * v9);
    else
      v10 = &glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid;
    v11 = (glitch::IReferenceCounted *)*v10;
    if ( *v10 )
      *((_DWORD *)v11 + 1) += 2;
    if ( result )
      glitch::IReferenceCounted::drop(result);
    if ( v11 )
      glitch::IReferenceCounted::drop(v11);
    glitch::video::CGLSLShader::rmRegenerateShader(v11, *(_DWORD *)(*(_DWORD *)(a1 + 216) + 44));
    v12 = *v4;
    v13 = *(_DWORD *)(*v4 + 12);
    if ( v13 )
    {
      while ( *(_DWORD *)(v13 + 8) )
        v13 = *(_DWORD *)(v13 + 8);
      v12 = v13;
    }
    else
    {
      v14 = *(_DWORD *)(v12 + 4);
      if ( *(_DWORD *)(v14 + 12) == v12 )
      {
        do
        {
          v12 = v14;
          v14 = *(_DWORD *)(v14 + 4);
        }
        while ( v12 == *(_DWORD *)(v14 + 12) );
        v13 = *(_DWORD *)(v12 + 12);
      }
      if ( v14 != v13 )
        v12 = v14;
    }
    *v4 = v12;
    v3 = *(_DWORD **)(a1 + 216);
    v5 = *v4;
  }
  if ( result )
    return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
  return result;
}


// ===== 5b1734 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::beginScene2D(void) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::beginScene2D(
        _DWORD *a1)
{
  int v2; // r3
  const void *v3; // r0
  const void *v4; // r0
  const void *v5; // r0

  (*(void (__fastcall **)(_DWORD *))(*a1 + 508))(a1);
  v2 = (a1[34] >> 8) & 1;
  *((_BYTE *)a1 + 352) = v2;
  if ( !v2 )
    glitch::video::IVideoDriver::setOption(a1, 0x100u, 1);
  v3 = (const void *)(*(int (__fastcall **)(_DWORD *, int))(*a1 + 112))(a1, 2);
  memcpy(a1 + 213, v3, 0x41u);
  v4 = (const void *)(*(int (__fastcall **)(_DWORD *, int))(*a1 + 112))(a1, 1);
  memcpy(a1 + 230, v4, 0x41u);
  v5 = (const void *)(*(int (__fastcall **)(_DWORD *, _DWORD))(*a1 + 112))(a1, 0);
  memcpy(a1 + 247, v5, 0x41u);
  (*(void (__fastcall **)(_DWORD *, _DWORD, int *))(*a1 + 108))(a1, 0, &glitch::core::IdentityMatrix);
  (*(void (__fastcall **)(_DWORD *, int, int *))(*a1 + 108))(a1, 1, &glitch::core::IdentityMatrix);
  a1[40] = 1;
  glitch::video::CCommonGLDriverBase::set2DProjection((glitch::video::CCommonGLDriverBase *)a1);
  return 1;
}


// ===== 5b1838 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::endScene(void) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::endScene(
        glitch::video::IVideoDriver *a1)
{
  (*(void (__fastcall **)(glitch::video::IVideoDriver *))(*(_DWORD *)a1 + 508))(a1);
  glFlush();
  glitch::video::IVideoDriver::endScene(a1);
  return 1;
}


// ===== 5b1860 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::beginScene(void) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::beginScene(
        glitch::video::IVideoDriver *a1)
{
  glitch::video::IVideoDriver::beginScene(a1);
  return 1;
}


// ===== 5b1870 glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::doVersionCheck(void) =====
int __fastcall glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::doVersionCheck(int a1)
{
  return glitch::video::CGLSLShaderHandler::doVersionCheck(
           (glitch::video::CGLSLShaderHandler *)(a1 + 2080),
           *(_DWORD *)(a1 + 1188));
}


// ===== 5b187c glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitLightParameter(glitch::video::CGLSLShader const*,glitch::video::CLight const*,glitch::video::SShaderParameterDef const&) =====
void __fastcall glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitLightParameter(
        int a1,
        int a2,
        int a3,
        int a4)
{
  int v4; // r2
  int v5; // r0
  int v6; // r1
  int v7; // r1
  int v8; // r1

  if ( a3 )
  {
    switch ( *(_WORD *)(a4 + 4) )
    {
      case 0x13:
        v4 = *(unsigned __int8 *)(a4 + 6);
        if ( v4 == 7 )
          goto LABEL_21;
        if ( v4 == 8 )
          goto LABEL_20;
        break;
      case 0x14:
        v5 = *(unsigned __int8 *)(a4 + 6);
        if ( v5 == 7 )
          goto LABEL_21;
        if ( v5 == 8 )
          goto LABEL_20;
        break;
      case 0x15:
        glUniform3fv();
        break;
      case 0x16:
        v6 = *(unsigned __int8 *)(a4 + 6);
        if ( v6 == 7 )
          goto LABEL_21;
        if ( v6 == 8 )
          goto LABEL_20;
        break;
      case 0x17:
        v7 = *(unsigned __int8 *)(a4 + 6);
        if ( v7 == 7 )
          goto LABEL_21;
        if ( v7 == 8 )
          goto LABEL_20;
        break;
      case 0x18:
        v8 = *(unsigned __int8 *)(a4 + 6);
        if ( v8 == 7 )
        {
LABEL_21:
          glUniform3fv();
        }
        else if ( v8 == 8 )
        {
LABEL_20:
          glUniform4fv();
        }
        break;
      case 0x19:
      case 0x1A:
        glUniform1f();
        break;
      default:
        return;
    }
  }
}


// ===== 5b1a84 glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitShader(glitch::video::IShader const*) =====
int __fastcall glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitShader(int a1, int a2)
{
  int result; // r0

  result = glUseProgram();
  *(_DWORD *)(a1 + 244) = a2;
  return result;
}


// ===== 5b1aa0 glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::onMaterialDestroyed(glitch::video::CMaterial *) =====
// attributes: thunk
int __fastcall glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::onMaterialDestroyed(
        int result,
        int a2)
{
  return glitch::video::IVideoDriver::onMaterialDestroyed(result, a2);
}


// ===== 5b1aa4 glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::onShaderDestroyed(glitch::video::IShader *) =====
int __fastcall glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::onShaderDestroyed(
        int result,
        int a2)
{
  if ( *(_DWORD *)(result + 244) == a2 )
    return glitch::video::IVideoDriver::onShaderDestroyed(result, a2);
  return result;
}


// ===== 5b1ab4 glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::driverInit(glitch::core::dimension2d<int> const&) =====
int __fastcall glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::driverInit(int a1)
{
  GLint v2; // r3
  GLint params; // [sp+4h] [bp-4h] BYREF

  glitch::video::CGLSLShaderHandler::initShaderHandler(
    (glitch::video::CGLSLShaderHandler *)(a1 + 2080),
    *(glitch::video::IShaderManager **)(a1 + 216));
  glGetIntegerv(0x8869u, &params);
  v2 = params;
  *(_DWORD *)(a1 + 160) = 2;
  *(_DWORD *)(a1 + 2084) = v2;
  glEnable(0x809Du);
  glHint(0xC52u, 0x1102u);
  glEnable(0xB20u);
  return 1;
}


// ===== 5b1b10 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::ReinitDriver(void) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::ReinitDriver(
        int a1)
{
  int v2; // r7
  int v3; // r4
  int v4; // r5
  int v5; // r0

  v2 = *(_DWORD *)(a1 + 212);
  (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 64))(a1);
  v3 = 0;
  v4 = a1;
  (*(void (__fastcall **)(_DWORD))(***(_DWORD ***)(a1 + 200) + 16))(**(_DWORD **)(a1 + 200));
  glViewport(0, 0, *(_DWORD *)(v2 + 96), *(_DWORD *)(v2 + 100));
  glPixelStorei(0xD05u, 1);
  glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::driverInit(a1);
  do
  {
    v5 = *(_DWORD *)((char *)&glitch::video::`anonymous namespace'::BufferTypeMap + v3);
    v3 += 4;
    if ( v5 )
      glBindBuffer();
    v4 += 4;
  }
  while ( v3 != 20 );
  (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 116))(a1);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)a1 + 168))(a1, 1);
  return 1;
}


// ===== 5b1bd8 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CFramebuffer::CFramebuffer(glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>*,glitch::core::dimension2d<int> const&) =====
_DWORD *__fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CFramebuffer::CFramebuffer(
        _DWORD *a1,
        int a2)
{
  glitch::video::CCommonGLDriverBase::CFramebufferBase::CFramebufferBase();
  *a1 = off_977AE0;
  if ( (*(_DWORD *)(a2 + 156) & 0x800) != 0 )
    glGetIntegerv(0x8CA6u, a1 + 13);
  return a1;
}


// ===== 5b1c28 std::allocator<std::priv::_Rb_tree_node<std::pair<uint const,glitch::video::BufferInfo>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,glitch::video::BufferInfo>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 40;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 5b1c48 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::createScreenShot(void) =====
glitch::IReferenceCounted **__fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::createScreenShot(
        glitch::IReferenceCounted **a1,
        _DWORD *a2)
{
  int v3; // r3
  int v4; // r4
  glitch::IReferenceCounted *v5; // r9
  int v6; // r3
  char *pixels; // r4
  int v8; // r7
  int v9; // r3
  int v10; // r2
  int v11; // r3
  size_t v12; // r5
  int v13; // r6
  int v14; // r1
  int v15; // r0
  void *v16; // r1
  int v17; // r11
  void *v18; // r8
  char *v19; // r6
  int v22; // [sp+18h] [bp-1Ch]
  int v23; // [sp+1Ch] [bp-18h]
  GLint v24; // [sp+20h] [bp-14h] BYREF
  GLint v25; // [sp+24h] [bp-10h]
  int v26; // [sp+28h] [bp-Ch]
  int v27; // [sp+2Ch] [bp-8h]

  (*(void (__fastcall **)(_DWORD *))(*a2 + 508))(a2);
  v3 = a2[51];
  if ( (v3 - a2[50]) >> 2 == 1 )
  {
    v23 = a2[79];
    glitch::video::IVideoDriver::setOrientation((int)a2, 0);
    v3 = a2[51];
    v22 = (int)a2;
  }
  else
  {
    v22 = 0;
    v23 = 255;
  }
  v4 = *(_DWORD *)(v3 - 4);
  v5 = (glitch::IReferenceCounted *)operator new(0x2Cu, 0);
  glitch::video::CImage::CImage(v5, 10, v4 + 12);
  if ( v5 )
    v6 = *((_DWORD *)v5 + 1);
  pixels = *((char **)v5 + 2);
  if ( v5 )
    *((_DWORD *)v5 + 1) = v6 + 1;
  if ( pixels )
  {
    v8 = 0;
    v9 = *(_DWORD *)(a2[51] - 4);
    v24 = 0;
    v25 = 0;
    v10 = *(_DWORD *)(v9 + 12);
    v11 = *(_DWORD *)(v9 + 16);
    v26 = v10;
    v27 = v11;
    glitch::video::IVideoDriver::screen2Device<int>((int)a2, &v24);
    glReadPixels(v24, v25, v26 - v24, v27 - v25, 0x1907u, 0x1401u, pixels);
    v12 = *((_DWORD *)v5 + 6);
    v13 = *((_DWORD *)v5 + 5);
    v15 = glitch::core::allocProcessBuffer((glitch::core *)v12, v14);
    v17 = *((_DWORD *)v5 + 5);
    v18 = (void *)v15;
    if ( v17 > 0 )
    {
      v19 = &pixels[v12 * (v13 - 1)];
      do
      {
        memcpy(v18, pixels, v12);
        memcpy(pixels, v19, v12);
        v8 += 2;
        memcpy(v19, v18, v12);
        pixels += v12;
        v19 -= v12;
      }
      while ( v17 > v8 );
    }
    *a1 = v5;
    ++*((_DWORD *)v5 + 1);
    if ( v18 )
      glitch::core::releaseProcessBuffer((glitch::core *)v18, v16);
  }
  else
  {
    *a1 = nullptr;
  }
  glitch::IReferenceCounted::drop(v5);
  if ( v22 )
    glitch::video::IVideoDriver::setOrientation(v22, v23);
  return a1;
}


// ===== 5b1e14 glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setTransform(glitch::video::E_TRANSFORMATION_STATE,glitch::core::CMatrix4<float> const&) =====
void *__fastcall glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setTransform(
        _DWORD *a1,
        int a2,
        void *a3)
{
  void *result; // r0
  _BYTE v7[68]; // [sp+4h] [bp-44h] BYREF

  result = memcpy(&a1[17 * a2 + 162], a3, 0x41u);
  switch ( a2 )
  {
    case 1:
      result = memcpy(a1 + 539, a3, 0x41u);
      a1[879] |= 0xDCE7u;
      break;
    case 2:
      (*(void (__fastcall **)(_DWORD *))(*a1 + 508))(a1);
      v7[64] = 0;
      memcpy(v7, a3, 0x41u);
      glitch::video::CCommonGLDriverBase::fixUpProjectionMatrix(a1, v7);
      result = memcpy(a1 + 556, v7, 0x41u);
      a1[879] |= 0x78A52u;
      break;
    case 0:
      (*(void (__fastcall **)(_DWORD *))(*a1 + 508))(a1);
      result = memcpy(a1 + 522, a3, 0x41u);
      a1[879] |= 0xEF7Bu;
      break;
  }
  return result;
}


// ===== 5b1f20 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,glitch::video::BufferInfo>,std::priv::_Select1st<std::pair<uint const,glitch::video::BufferInfo>>,std::priv::_MapTraitsT<std::pair<uint const,glitch::video::BufferInfo>>,std::allocator<std::pair<uint const,glitch::video::BufferInfo>>>::erase(std::priv::_Rb_tree_iterator<std::pair<uint const,glitch::video::BufferInfo>,std::priv::_MapTraitsT<std::pair<uint const,glitch::video::BufferInfo>>>) =====
void __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::video::BufferInfo>,std::priv::_Select1st<std::pair<unsigned int const,glitch::video::BufferInfo>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::video::BufferInfo>>,std::allocator<std::pair<unsigned int const,glitch::video::BufferInfo>>>::erase(
        int a1,
        unsigned __int8 **a2)
{
  unsigned __int8 *v3; // r0

  v3 = std::priv::_Rb_global<bool>::_Rebalance_for_erase(
         *a2,
         (unsigned __int8 **)(a1 + 4),
         (unsigned __int8 **)(a1 + 8),
         (unsigned __int8 **)(a1 + 12));
  if ( v3 )
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, 0x28u);
  --*(_DWORD *)(a1 + 16);
}


// ===== 5b1f5c glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::unregisterBufferMap(uint) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::unregisterBufferMap(
        int a1,
        unsigned int a2)
{
  int v2; // r4
  int v3; // r5
  int v4; // r2
  unsigned int v5; // r3
  bool v6; // cf
  int v7; // r3
  unsigned __int8 *v8; // [sp+4h] [bp-8h] BYREF

  v2 = *(_DWORD *)(a1 + 2052);
  v3 = a1 + 2048;
  if ( !v2 )
  {
LABEL_15:
    v2 = a1 + 2048;
LABEL_12:
    if ( v3 != v2 )
    {
      free(*(void **)(v2 + 36));
      v8 = (unsigned __int8 *)v2;
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::video::BufferInfo>,std::priv::_Select1st<std::pair<unsigned int const,glitch::video::BufferInfo>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::video::BufferInfo>>,std::allocator<std::pair<unsigned int const,glitch::video::BufferInfo>>>::erase(
        v3,
        &v8);
    }
    return;
  }
  v4 = a1 + 2048;
  while ( 1 )
  {
    v5 = *(_DWORD *)(v2 + 16);
    v6 = v5 >= a2;
    v7 = v5 >= a2 ? *(_DWORD *)(v2 + 8) : *(_DWORD *)(v2 + 12);
    if ( !v6 )
      v2 = v4;
    v4 = v2;
    if ( !v7 )
      break;
    v2 = v7;
  }
  if ( v3 != v2 )
  {
    if ( *(_DWORD *)(v2 + 16) <= a2 )
      goto LABEL_12;
    goto LABEL_15;
  }
}


// ===== 5b1fe4 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::reloadTexturesData(void) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::reloadTexturesData(
        _DWORD *a1)
{
  int v1; // r3
  int v2; // r1
  int v3; // r3
  unsigned int v4; // r2
  int *v6; // r3
  int v7; // r4
  glitch::IReferenceCounted *v8; // r0
  int v9; // r3
  int v10; // r7
  int v11; // r3
  unsigned int v12; // r2
  int v13; // r1
  int v14; // r3
  int *v15; // r1
  int v16; // r3
  const char *v17; // r1
  int v18; // r3
  int v19; // r2
  int v20; // r2
  glitch::IReferenceCounted *v21; // r0
  int v23; // r1
  const char *v24; // r1
  int v25; // r0
  unsigned int v26; // r2
  int v27; // r3
  const char **v28; // r1
  const char *v29; // r1
  int v30; // r3
  int v31; // r2
  int v32; // r3

  v1 = a1[56];
  v2 = *(_DWORD *)(v1 + 28);
  v3 = *(_DWORD *)(v1 + 24);
  v4 = *(unsigned __int16 *)(a1[510] + 52);
  if ( v4 >= (v2 - v3) >> 3 )
    v6 = &glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>,unsigned short,false,glitch::video::detail::texturemanager::STextureProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid;
  else
    v6 = (int *)(v3 + 8 * v4);
  v7 = *v6;
  if ( *v6 )
  {
    v8 = (glitch::IReferenceCounted *)*v6;
    *(_DWORD *)(v7 + 4) += 2;
    glitch::IReferenceCounted::drop(v8);
    v9 = *(_DWORD *)(v7 + 44);
    *(_BYTE *)(v7 + 88) = 1;
    v10 = *(_DWORD *)(v7 + 84);
    if ( v9 && (*(_BYTE *)(v7 + 63) & 8) != 0 )
      (*(void (__fastcall **)(int))(*(_DWORD *)v7 + 16))(v7);
    *(_BYTE *)(v7 + 88) = 0;
    v11 = a1[56];
    v12 = *(unsigned __int16 *)(v7 + 60);
    v13 = *(_DWORD *)(v11 + 28);
    v14 = *(_DWORD *)(v11 + 24);
    if ( v12 >= (v13 - v14) >> 3 )
      v15 = &glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>,unsigned short,false,glitch::video::detail::texturemanager::STextureProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid;
    else
      v15 = (int *)(v14 + 8 * v12);
    if ( !*v15
      || (v16 = *(_DWORD *)(v14 + 8 * v12 + 4), v17 = *(const char **)(v16 + 44), v17 == *(const char **)(v16 + 40)) )
    {
      glitch::os::Printer::print((glitch::os::Printer *)"TEXTURE FILE [%s] ", nullptr);
    }
    else
    {
      glitch::os::Printer::print((glitch::os::Printer *)"TEXTURE FILE [%s] ", v17);
    }
    if ( !*(_DWORD *)(v7 + 44) )
    {
      glitch::os::Printer::print(
        (glitch::os::Printer *)"RELOAD Index [%d] OpenGlID[%d] Name [%s] \n",
        (const char *)*(unsigned __int16 *)(v7 + 60),
        v10,
        *(_DWORD *)(v7 + 28));
      glitch::os::Printer::print((glitch::os::Printer *)"NO HAS DATA ", v24);
      v25 = a1[56];
      v26 = *(unsigned __int16 *)(v7 + 60);
      v27 = *(_DWORD *)(v25 + 24);
      if ( v26 >= (*(_DWORD *)(v25 + 28) - v27) >> 3 )
        v28 = (const char **)&glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>,unsigned short,false,glitch::video::detail::texturemanager::STextureProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid;
      else
        v28 = (const char **)(v27 + 8 * v26);
      v29 = *v28;
      if ( v29
        && (v30 = *(_DWORD *)(v27 + 8 * v26 + 4), v31 = *(_DWORD *)(v30 + 40), v32 = *(_DWORD *)(v30 + 44), v32 != v31)
        && v32 )
      {
        if ( (*(_BYTE *)(v7 + 63) & 8) != 0 )
          (*(void (__fastcall **)(int))(*(_DWORD *)v7 + 16))(v7);
        glitch::video::CTextureManager::rmReloadDataTexture();
      }
      else
      {
        glitch::os::Printer::print((glitch::os::Printer *)"ERROR LOADING", v29);
      }
    }
    v18 = a1[510];
    ++a1[508];
    v19 = *(_DWORD *)(v18 + 12);
    if ( v19 )
    {
      while ( *(_DWORD *)(v19 + 8) )
        v19 = *(_DWORD *)(v19 + 8);
      v18 = v19;
    }
    else
    {
      v23 = *(_DWORD *)(v18 + 4);
      if ( v18 == *(_DWORD *)(v23 + 12) )
      {
        do
        {
          v18 = v23;
          v23 = *(_DWORD *)(v23 + 4);
        }
        while ( *(_DWORD *)(v23 + 12) == v18 );
        v19 = *(_DWORD *)(v18 + 12);
      }
      if ( v23 != v19 )
        v18 = v23;
    }
    v20 = a1[56];
    v21 = (glitch::IReferenceCounted *)v7;
    a1[510] = v18;
    v7 = v20 != v18;
    glitch::IReferenceCounted::drop(v21);
  }
  return v7;
}


// ===== 5b2244 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::draw2DRectangle(glitch::core::rect<int> const&,glitch::core::rect<int> const&,glitch::video::SColor const*,glitch::core::rect<int> const*) =====
glitch::IReferenceCounted *__fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::draw2DRectangle(
        int a1,
        int *a2,
        int *a3,
        int a4,
        int *a5)
{
  int v5; // r8
  int ParameterID; // r0
  float v10; // r7
  float v11; // r0
  float v12; // r11
  float v13; // r9
  float v14; // r0
  int v15; // r3
  int v16; // r12
  int v17; // r1
  int v18; // r2
  glitch::IReferenceCounted *result; // r0
  int v20; // r2
  int v21; // r3
  int v22; // r1
  int v23; // r2
  int v24; // r3
  bool v25; // cc
  int v26; // r1
  int v27; // r2
  _DWORD v29[4]; // [sp+Ch] [bp-34h] BYREF
  int v30; // [sp+1Ch] [bp-24h] BYREF
  int v31; // [sp+20h] [bp-20h]
  int v32; // [sp+24h] [bp-1Ch]
  int v33; // [sp+28h] [bp-18h]
  float v34[4]; // [sp+2Ch] [bp-14h] BYREF
  glitch::IReferenceCounted *v35; // [sp+3Ch] [bp-4h] BYREF

  v5 = *(_DWORD *)(a1 + 236);
  v35 = nullptr;
  ParameterID = glitch::video::CMaterialRenderer::getParameterID(*(_DWORD *)(v5 + 4), 2, 0);
  glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
    v5,
    ParameterID,
    0,
    &v35);
  if ( v35 )
  {
    v10 = 1.0 / (float)*(int *)((char *)&dword_20 + (_DWORD)v35);
    v11 = 1.0 / (float)*(int *)((char *)&dword_24 + (_DWORD)v35);
    v12 = (float)a3[1] * v11;
    v13 = (float)a3[2] * v10;
    v14 = (float)a3[3] * v11;
    v15 = a2[3];
    v16 = *a2;
    v17 = a2[1];
    v18 = a2[2];
    v34[0] = (float)*a3 * v10;
    v34[1] = v12;
    v34[2] = v13;
    v34[3] = v14;
    v30 = v16;
    v31 = v17;
    v32 = v18;
    v33 = v15;
    if ( !a5 || glitch::video::IVideoDriver::clip(&v30, v34, a5, nullptr) )
      glitch::video::CCommonGLDriverBase::drawQuads(a1, &v30, v34, a4);
  }
  else
  {
    v20 = a2[3];
    v21 = a2[1];
    v22 = a2[2];
    v30 = *a2;
    v31 = v21;
    v32 = v22;
    v33 = v20;
    if ( a5 )
    {
      if ( v22 > a5[2] )
        v32 = a5[2];
      if ( v20 > a5[3] )
        v33 = a5[3];
      v23 = *a5;
      v24 = v30;
      v25 = *a5 <= v30;
      if ( *a5 > v30 )
        v30 = *a5;
      v26 = a5[1];
      if ( !v25 )
        v24 = v23;
      v27 = v31;
      if ( v26 > v31 )
      {
        v31 = a5[1];
        v27 = v26;
      }
      if ( v33 < v27 )
        v31 = v33;
      if ( v24 > v32 )
        v30 = v32;
    }
    memset(v29, 0, sizeof(v29));
    glitch::video::CCommonGLDriverBase::drawQuads(a1, &v30, v29, a4);
  }
  result = v35;
  if ( v35 )
    return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v35);
  return result;
}


// ===== 5b2468 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::unmapImpl(void) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::unmapImpl(
        int result)
{
  int v1; // r5
  int v2; // r6
  int v3; // r4
  char v4; // r3

  v1 = *(_DWORD *)(result + 24);
  v2 = *(_DWORD *)(result + 20) + 4 * (*(unsigned __int8 *)(result + 16) + 148);
  v3 = result;
  if ( v1 != *(_DWORD *)(v2 + 4) )
  {
    result = glBindBuffer();
    *(_DWORD *)(v2 + 4) = v1;
  }
  v4 = *(_BYTE *)(v3 + 18);
  *(_DWORD *)(v3 + 28) = 0;
  *(_BYTE *)(v3 + 18) = v4 & 0xDF;
  return result;
}


// ===== 5b24c8 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::~CBuffer() =====
glitch::video::IBuffer *__fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::~CBuffer(
        glitch::video::IBuffer *this)
{
  char v1; // r2

  v1 = *((_BYTE *)this + 18);
  *(_DWORD *)this = &off_977890;
  if ( (v1 & 0x20) != 0 )
  {
    glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::unmapImpl((int)this);
    v1 = *((_BYTE *)this + 18);
  }
  if ( (v1 & 8) != 0 )
    glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::unbindImpl((int)this);
  *(_DWORD *)this = off_98B118;
  glitch::video::IBuffer::~IBuffer(this);
  return this;
}


// ===== 5b253c glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::~CBuffer() =====
glitch::video::IBuffer *__fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::~CBuffer(
        glitch::video::IBuffer *a1)
{
  glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::~CBuffer(a1);
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 5b2558 glitch::video::detail::getTextureParameter(uchar const*,glitch::video::SShaderParameterDef const&,glitch::video::IVideoDriver const*) =====
glitch::video::detail *__fastcall glitch::video::detail::getTextureParameter(
        glitch::IReferenceCounted **this,
        const unsigned __int8 *a2,
        const glitch::video::SShaderParameterDef *a3,
        const glitch::video::IVideoDriver *a4)
{
  glitch::IReferenceCounted *v5; // r1
  int v6; // r0
  int v7; // r1
  int PlaceHolder; // r0
  int v9; // r3
  glitch::IReferenceCounted *v10; // r0

  v5 = *(glitch::IReferenceCounted **)&a2[*((_DWORD *)a3 + 3)];
  *this = v5;
  if ( v5 && (++*((_DWORD *)v5 + 1), *this) )
  {
    if ( (*((_BYTE *)*this + 63) & 0x10) == 0 )
      return (glitch::video::detail *)this;
    v6 = *((_DWORD *)a4 + 56);
    v7 = 1;
  }
  else
  {
    v6 = *((_DWORD *)a4 + 56);
    v7 = 0;
  }
  PlaceHolder = glitch::video::CTextureManager::getPlaceHolder(v6, v7, *((unsigned __int8 *)a3 + 6) - 12);
  v9 = PlaceHolder;
  if ( PlaceHolder )
    ++*(_DWORD *)(PlaceHolder + 4);
  v10 = *this;
  *this = (glitch::IReferenceCounted *)v9;
  if ( v10 )
    glitch::IReferenceCounted::drop(v10);
  return (glitch::video::detail *)this;
}


// ===== 5b25e4 glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment::~SAttachment() =====
void __fastcall glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment::~SAttachment(
        glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *this)
{
  glitch::IReferenceCounted *v2; // r0
  int v3; // r3

  v2 = *((glitch::IReferenceCounted **)this + 1);
  if ( v2 )
  {
    v3 = *(unsigned __int16 *)this;
    if ( *(_WORD *)this )
      v3 = 0;
    *((_DWORD *)this + 1) = v3;
    glitch::IReferenceCounted::drop(v2);
    *((_BYTE *)this + 3) = 0;
    *((_DWORD *)this + 1) = 0;
    *(_WORD *)this = 255;
    *((_BYTE *)this + 2) = 0;
  }
}


// ===== 5b262c glitch::video::CCommonGLDriverBase::CRenderTargetBase::~CRenderTargetBase() =====
void __fastcall glitch::video::CCommonGLDriverBase::CRenderTargetBase::~CRenderTargetBase(
        glitch::video::CCommonGLDriverBase::CRenderTargetBase *this)
{
  glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *v2; // r4

  v2 = (glitch::video::CCommonGLDriverBase::CRenderTargetBase *)((char *)this + 72);
  *(_DWORD *)this = off_98B088;
  glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment::~SAttachment((glitch::video::CCommonGLDriverBase::CRenderTargetBase *)((char *)this + 80));
  glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment::~SAttachment(v2);
  do
  {
    v2 = (glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *)((char *)v2 - 8);
    glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment::~SAttachment(v2);
  }
  while ( v2 != (glitch::video::CCommonGLDriverBase::CRenderTargetBase *)((char *)this + 40) );
}


// ===== 5b2684 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderTarget::~CRenderTarget() =====
glitch::video::CCommonGLDriverBase::CRenderTargetBase *__fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderTarget::~CRenderTarget(
        glitch::video::CCommonGLDriverBase::CRenderTargetBase *this)
{
  int v1; // r1

  v1 = *((_DWORD *)this + 9);
  *(_DWORD *)this = &off_9777C8;
  if ( v1 )
    glDeleteFramebuffers();
  glitch::video::CCommonGLDriverBase::CRenderTargetBase::~CRenderTargetBase(this);
  return this;
}


// ===== 5b26d4 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderTarget::~CRenderTarget() =====
glitch::video::CCommonGLDriverBase::CRenderTargetBase *__fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderTarget::~CRenderTarget(
        glitch::video::CCommonGLDriverBase::CRenderTargetBase *a1)
{
  glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderTarget::~CRenderTarget(a1);
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 5b26f0 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setTexture(uint,glitch::video::ITexture *,glitch::video::E_TEXTURE_TYPE) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setTexture(
        _DWORD *a1,
        unsigned int a2,
        int a3,
        int a4)
{
  _DWORD *v8; // r3
  int v9; // r8
  int v10; // r2

  if ( a2 >= a1[19] )
    return 0;
  v8 = &a1[8 * a4 + 264];
  v9 = v8[a2];
  if ( v9 != a3 )
  {
    v8[a2] = a3;
    if ( a3 )
    {
      v10 = a1[154];
      ++a1[33];
      if ( a2 != v10 )
      {
        glActiveTexture(a2 + 33984);
        a1[154] = a2;
      }
      if ( (*(_BYTE *)(a3 + 63) & 8) != 0 )
      {
        glBindTexture(glitch::video::`anonymous namespace'::TextureTypeMap[a4], *(_DWORD *)(a3 + 84));
        glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::update(
          a3,
          0);
      }
      else
      {
        glitch::video::ITexture::bind((glitch::video::ITexture *)a3, 0);
      }
    }
    return 1;
  }
  if ( !v9 || (*(_WORD *)(v9 + 64) & 0x1FFD) == 0 )
    return 1;
  if ( a2 != a1[154] )
  {
    glActiveTexture(a2 + 33984);
    a1[154] = a2;
  }
  glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::update(
    v9,
    0);
  return 1;
}


// ===== 5b280c glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::generateMipmapsImpl(void) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::generateMipmapsImpl(
        int a1)
{
  _DWORD *v2; // r0
  unsigned int v3; // r5
  int v4; // r6
  int v5; // r3
  GLenum v6; // r6

  v2 = *(_DWORD **)(a1 + 52);
  v3 = v2[19] - 1;
  glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setTexture(
    v2,
    v3,
    a1,
    *(_DWORD *)(a1 + 56) & 3);
  v4 = *(_DWORD *)(a1 + 52);
  if ( v3 != *(_DWORD *)(v4 + 616) )
  {
    glActiveTexture(v3 + 33984);
    *(_DWORD *)(v4 + 616) = v3;
  }
  v5 = *(_DWORD *)(a1 + 56) & 3;
  v6 = glitch::video::`anonymous namespace'::TextureTypeMap[v5];
  if ( ((*(_DWORD *)(a1 + 56) >> 12) & 7u) <= 1 )
  {
    glTexParameteri(glitch::video::`anonymous namespace'::TextureTypeMap[v5], 0x2801u, 9984);
    glGenerateMipmap();
    glTexParameteri(
      v6,
      0x2801u,
      glitch::video::`anonymous namespace'::TextureFilterMap[(*(_DWORD *)(a1 + 56) >> 12) & 7]);
  }
  else
  {
    glGenerateMipmap();
  }
  if ( (*(_BYTE *)(a1 + 63) & 2) == 0 )
    *(_WORD *)(a1 + 64) |= 2u;
}


// ===== 5b28dc glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::unbindImpl(void) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::unbindImpl(
        int a1)
{
  int v1; // r3
  int v3; // r6
  int v4; // r7
  unsigned int i; // r4
  int v6; // r2
  char v7; // r3
  int v8; // r0
  bool v9; // zf
  int v10; // r1
  int v11; // r7
  int v12; // r7
  unsigned int v13; // r3
  int result; // r0
  int v15; // r1
  int v16; // r2
  int v17; // r12
  _DWORD *v18; // r3
  _DWORD *v19; // r2

  v1 = *(_DWORD *)(a1 + 52);
  v3 = *(_DWORD *)(v1 + 76);
  v4 = v1 + 1056 + 32 * (*(_DWORD *)(a1 + 56) & 3);
  if ( v3 )
  {
    for ( i = 0; i != v3; ++i )
    {
      if ( *(_DWORD *)(v4 + 4 * i) == a1 )
        glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setTexture(
          *(_DWORD **)(a1 + 52),
          i,
          0,
          *(_DWORD *)(a1 + 56) & 3);
    }
  }
  glDeleteTextures(1, (const GLuint *)(a1 + 84));
  v6 = 0;
  v7 = *(_BYTE *)(a1 + 63) & 0xE7;
  v8 = *(_WORD *)(a1 + 64) & 0xE001 | 0x1FFC;
  v9 = (*(_BYTE *)(a1 + 63) & 2) == 0;
  *(_DWORD *)(a1 + 84) = 0;
  *(_BYTE *)(a1 + 63) = v7;
  *(_WORD *)(a1 + 64) = v8;
  if ( v9 )
  {
    v16 = *(unsigned __int8 *)(a1 + 62);
    if ( (*(_DWORD *)(a1 + 56) & 3) == 2 )
      v17 = 6;
    else
      v17 = 1;
    v18 = (_DWORD *)(*(_DWORD *)(a1 + 48) + 4 * (v16 + 1));
    v19 = &v18[(unsigned int)(v16 * v17 + 31) >> 5];
    result = v8 | 1;
    for ( *(_WORD *)(a1 + 64) = result; v19 != v18; ++v18 )
      *v18 = -1;
  }
  else
  {
    v10 = *(unsigned __int8 *)(a1 + 62);
    v11 = *(_DWORD *)(a1 + 56) & 3;
    *(_WORD *)(a1 + 64) = v8 | 1;
    if ( v11 == 2 )
      v12 = 6;
    else
      v12 = 1;
    v13 = 0;
    do
    {
      result = v13 >> 5;
      v15 = *(_DWORD *)(a1 + 48) + 4 * (v10 + 1);
      ++v6;
      *(_DWORD *)(v15 + 4 * (v13 >> 5)) |= 1 << (v13 & 0x1F);
      v10 = *(unsigned __int8 *)(a1 + 62);
      v13 += v10;
    }
    while ( v6 < v12 );
  }
  return result;
}


// ===== 5b2a30 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::~CTexture() =====
glitch::video::ITexture *__fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::~CTexture(
        glitch::video::ITexture *this)
{
  char v1; // r2

  v1 = *((_BYTE *)this + 63);
  *(_DWORD *)this = &off_977798;
  if ( (v1 & 0x20) != 0 )
  {
    glitch::video::CCommonGLDriverBase::CTextureBase::unmapImpl(this);
    v1 = *((_BYTE *)this + 63);
  }
  if ( (v1 & 8) != 0 )
    glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::unbindImpl((int)this);
  *(_DWORD *)this = off_98B0E8;
  glitch::video::ITexture::~ITexture(this);
  return this;
}


// ===== 5b2aa4 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::~CTexture() =====
glitch::video::ITexture *__fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::~CTexture(
        glitch::video::ITexture *a1)
{
  glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::~CTexture(a1);
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 5b2ac0 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderTarget::unbind(void) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderTarget::unbind(
        int a1)
{
  _DWORD *v2; // r0
  int v3; // r3
  int v4; // r2
  int v5; // r3
  int v6; // r1
  GLsizei *v7; // r5
  unsigned int v8; // r6
  int v9; // r4

  v2 = *(_DWORD **)(a1 + 8);
  if ( (v2[39] & 0x800) == 0 && *(_BYTE *)(a1 + 89) )
  {
    v3 = *(unsigned __int16 *)(a1 + 40);
    if ( *(_WORD *)(a1 + 40) )
    {
      v4 = a1;
      v5 = 1;
      while ( *(unsigned __int8 *)(a1 + 89) > (unsigned int)(unsigned __int8)v5 )
      {
        v6 = *(unsigned __int16 *)(v4 + 48);
        ++v5;
        v4 += 8;
        if ( !v6 )
        {
          v3 = v5 - 1;
          goto LABEL_10;
        }
      }
    }
    else
    {
LABEL_10:
      v7 = *(GLsizei **)(a1 + 8 * v3 + 44);
      if ( v7 )
      {
        v8 = v2[19] - 1;
        glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setTexture(
          v2,
          v8,
          *(_DWORD *)(a1 + 8 * v3 + 44),
          v7[14] & 3);
        v9 = *(_DWORD *)(a1 + 8);
        if ( v8 != *(_DWORD *)(v9 + 616) )
        {
          glActiveTexture(v8 + 33984);
          *(_DWORD *)(v9 + 616) = v8;
        }
        glCopyTexSubImage2D(0xDE1u, 0, 0, 0, 0, 0, v7[8], v7[9]);
      }
    }
  }
}


// ===== 5b2ba8 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderTarget::compileAttachment(int,glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment const&) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderTarget::compileAttachment(
        int a1,
        int a2,
        int a3)
{
  int v3; // r1

  if ( *(_WORD *)a3 )
  {
    glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderBuffer::bind(*(_DWORD *)(a3 + 4));
    return glFramebufferRenderbuffer();
  }
  else
  {
    v3 = *(_DWORD *)(a3 + 4);
    if ( (*(_WORD *)(v3 + 64) & 0x1FFD) != 0 )
      glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setTexture(
        *(_DWORD **)(a1 + 8),
        *(_DWORD *)(*(_DWORD *)(a1 + 8) + 76) - 1,
        *(_DWORD *)(a3 + 4),
        *(_DWORD *)(v3 + 56) & 3);
    return glFramebufferTexture2D();
  }
}


// ===== 5b2c8c glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderTarget::bind(void) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderTarget::bind(
        int a1)
{
  int result; // r0
  int v3; // r3
  int v4; // r12
  int v5; // lr
  int v6; // r2
  int v7; // r3
  int v8; // r1
  int v9; // r3
  int v10; // r3
  unsigned int v12; // r5
  const char *v13; // r0
  int v14; // r0

  result = (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 8) + 488))(*(_DWORD *)(a1 + 8), a1 + 20);
  v3 = *(_DWORD *)(a1 + 8);
  if ( (*(_DWORD *)(v3 + 156) & 0x800) == 0 )
    goto LABEL_34;
  v4 = *(unsigned __int8 *)(a1 + 89);
  if ( *(_BYTE *)(a1 + 89) )
  {
    LOBYTE(v6) = 0;
    v7 = a1;
    v5 = 0;
    while ( 1 )
    {
      v8 = *(_DWORD *)(v7 + 44);
      if ( !v8 )
        goto LABEL_10;
      if ( *(_WORD *)(v7 + 40) )
      {
        if ( !*(_DWORD *)(v8 + 24) )
          goto LABEL_10;
LABEL_6:
        v6 = (unsigned __int8)(v6 + 1);
        v7 += 8;
        if ( v6 == v4 )
          goto LABEL_11;
      }
      else
      {
        if ( ((*(unsigned __int8 *)(v8 + 63) >> 3) & 1) != 0 )
          goto LABEL_6;
LABEL_10:
        v6 = (unsigned __int8)(v6 + 1);
        v5 = 1;
        v7 += 8;
        if ( v6 == v4 )
          goto LABEL_11;
      }
    }
  }
  v5 = *(unsigned __int8 *)(a1 + 89);
LABEL_11:
  v9 = *(_DWORD *)(a1 + 76);
  if ( !v9 )
  {
LABEL_14:
    v10 = *(_DWORD *)(a1 + 84);
    if ( !v10 )
      goto LABEL_18;
    if ( *(_WORD *)(a1 + 80) ? *(_DWORD *)(v10 + 24) != 0 : (*(unsigned __int8 *)(v10 + 63) >> 3) & 1 )
      goto LABEL_18;
    goto LABEL_38;
  }
  if ( *(_WORD *)(a1 + 72) )
  {
    if ( *(_DWORD *)(v9 + 24) )
      goto LABEL_14;
  }
  else if ( ((*(unsigned __int8 *)(v9 + 63) >> 3) & 1) != 0 )
  {
    goto LABEL_14;
  }
LABEL_38:
  v5 = 1;
LABEL_18:
  if ( *(_BYTE *)(a1 + 90) || v5 )
  {
    if ( !*(_DWORD *)(a1 + 36) )
      glGenFramebuffers();
    glBindFramebuffer();
    if ( *(_BYTE *)(a1 + 89) )
    {
      v12 = 0;
      do
      {
        glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderTarget::compileAttachment(
          a1,
          v12 + 36064,
          a1 + 8 * (v12 + 5));
        v12 = (unsigned __int8)(v12 + 1);
      }
      while ( *(unsigned __int8 *)(a1 + 89) > v12 );
    }
    if ( *(_DWORD *)(a1 + 76) )
      glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderTarget::compileAttachment(
        a1,
        36096,
        a1 + 72);
    if ( *(_DWORD *)(a1 + 84) )
      glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderTarget::compileAttachment(
        a1,
        36128,
        a1 + 80);
    switch ( glCheckFramebufferStatus() )
    {
      case 36054:
        v13 = "Some attachments are incomplete";
        goto LABEL_31;
      case 36055:
        v13 = "Some attachments are missing";
        goto LABEL_31;
      case 36057:
        v13 = "Dimensions are not the same";
        goto LABEL_31;
      case 36058:
        v13 = "Some attachments formats are not legal";
        goto LABEL_31;
      case 36059:
        v13 = "Draw buffer is not set";
        goto LABEL_31;
      case 36060:
        v13 = "Read buffer is not set";
        goto LABEL_31;
      case 36061:
        v13 = "Framebuffer objects are not supported";
LABEL_31:
        glitch::os::Printer::log(v13, 3);
        break;
      default:
        break;
    }
    *(_BYTE *)(a1 + 90) = 0;
  }
  result = glBindFramebuffer();
  v3 = *(_DWORD *)(a1 + 8);
LABEL_34:
  if ( !*(_BYTE *)(v3 + 1184) )
  {
    *(_BYTE *)(v3 + 1184) = 1;
    glFrontFace(glitch::video::`anonymous namespace'::BlendFactorMap[1 - *(_DWORD *)(*(_DWORD *)(a1 + 8) + 476) + 39]);
    v14 = (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 8) + 112))(*(_DWORD *)(a1 + 8), 2);
    return (*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(a1 + 8) + 108))(*(_DWORD *)(a1 + 8), 2, v14);
  }
  return result;
}


// ===== 5b2fac glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitCurrentMaterialParametersAux<glitch::video::CGlobalMaterialParameterManager>(glitch::video::CGLSLShader const*,glitch::video::CGlobalMaterialParameterManager const*,glitch::video::SShaderParameterBinding const*,glitch::video::SShaderParameterBinding const*) =====
void __fastcall glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitCurrentMaterialParametersAux<glitch::video::CGlobalMaterialParameterManager>(
        const glitch::video::IVideoDriver *a1,
        int a2,
        int a3,
        unsigned __int16 *a4,
        unsigned __int16 *a5)
{
  int v5; // r8
  unsigned __int16 *v6; // r5
  const unsigned __int8 *v7; // r7
  int v8; // r1
  unsigned int v9; // r4
  int v10; // r6
  int v11; // r0
  unsigned int v12; // r6
  int v13; // r0
  unsigned int v14; // r2
  bool v15; // cf
  int v16; // r6
  int v17; // r0
  glitch::core *v18; // r3
  int v19; // r10
  int v20; // r8
  int v21; // r6
  float *v22; // r5
  float v23; // r0
  unsigned __int8 *v24; // r6
  float v25; // r3
  float v26; // r9
  float v27; // r0
  void *v28; // r1
  glitch::core *v29; // r3
  unsigned int v30; // r10
  int v31; // r9
  int v32; // r11
  int v33; // r11
  int v34; // r0
  int *v35; // r9
  int v36; // r10
  int *v37; // lr
  int v38; // r0
  int v39; // r1
  int v40; // r2
  int v41; // r3
  int *v42; // lr
  int v43; // r0
  int v44; // r1
  int v45; // r2
  int v46; // r3
  int v47; // r0
  int v48; // r1
  int v49; // r2
  int v50; // r3
  int v51; // r1
  int v52; // r2
  int v53; // r3
  glitch::core *v54; // [sp+4h] [bp-48h]
  int v55; // [sp+8h] [bp-44h]
  glitch::core *v56; // [sp+8h] [bp-44h]
  unsigned int v58; // [sp+1Ch] [bp-30h]
  unsigned __int16 *v59; // [sp+20h] [bp-2Ch]
  int v61; // [sp+2Ch] [bp-20h]
  unsigned __int16 *v62; // [sp+30h] [bp-1Ch]
  glitch::IReferenceCounted *v63[5]; // [sp+38h] [bp-14h] BYREF

  v5 = a3;
  v6 = a4;
  v7 = *(const unsigned __int8 **)(a3 + 44);
  if ( a4 != a5 )
  {
    v58 = 0;
    while ( 2 )
    {
      v8 = *(_DWORD *)(v5 + 24);
      v9 = v6[1];
      v10 = *v6;
      v11 = (v10 >> 15) + 5;
      v12 = v10 << 17;
      v13 = *(_DWORD *)(a2 + 8 * v11);
      v14 = -858993459 * ((*(_DWORD *)(v5 + 28) - v8) >> 2);
      v15 = v9 >= v14;
      if ( v9 < v14 )
      {
        v9 = v8 + 20 * v9;
      }
      else
      {
        v14 = (unsigned int)&__GLOBAL_OFFSET_TABLE_;
        v8 = 10260;
      }
      if ( v15 )
        v9 = *(_DWORD *)(v14 + v8);
      v16 = v13 + 16 * (v12 >> 17);
      if ( !*(_DWORD *)v9 )
        v9 = 0;
      switch ( *(_BYTE *)(v9 + 6) )
      {
        case 1:
          glUniform1iv();
          v6 += 2;
          if ( a5 != v6 )
            continue;
          return;
        case 2:
          glUniform2iv();
          v6 += 2;
          if ( a5 != v6 )
            continue;
          return;
        case 3:
          glUniform3iv();
          v6 += 2;
          if ( a5 != v6 )
            continue;
          return;
        case 4:
          glUniform4iv();
          v6 += 2;
          if ( a5 != v6 )
            continue;
          return;
        case 5:
          glUniform1fv();
          v6 += 2;
          if ( a5 != v6 )
            continue;
          return;
        case 6:
          glUniform2fv();
          v6 += 2;
          if ( a5 != v6 )
            continue;
          return;
        case 7:
          glUniform3fv();
          v6 += 2;
          if ( a5 != v6 )
            continue;
          return;
        case 8:
          if ( *(_WORD *)(v16 + 4) != 17 )
            goto LABEL_20;
          v6 += 2;
          v63[1] = (glitch::IReferenceCounted *)dword_9F69B8;
          v63[0] = (glitch::IReferenceCounted *)m_fairyPos_new;
          v63[2] = (glitch::IReferenceCounted *)dword_9F69BC;
          v63[3] = (glitch::IReferenceCounted *)dword_9F69C0;
          glUniform4fv();
          if ( a5 != v6 )
            continue;
          return;
        case 0xB:
          v33 = *(_DWORD *)(v16 + 8);
          if ( v33 == 1 )
          {
            v6 += 2;
            glUniformMatrix4fv();
            if ( a5 != v6 )
              continue;
          }
          else
          {
            v34 = glitch::core::allocProcessBuffer((glitch::core *)(v33 << 6), v8);
            v56 = (glitch::core *)v34;
            if ( v33 )
            {
              v35 = (int *)v34;
              v36 = 0;
              while ( 1 )
              {
                v37 = *(int **)&v7[4 * v36++ + *(_DWORD *)(v9 + 12)];
                if ( !v37 )
                  v37 = &glitch::core::IdentityMatrix;
                v38 = *v37;
                v39 = v37[1];
                v40 = v37[2];
                v41 = v37[3];
                v42 = v37 + 4;
                *v35 = v38;
                v35[1] = v39;
                v35[2] = v40;
                v35[3] = v41;
                v43 = *v42;
                v44 = v42[1];
                v45 = v42[2];
                v46 = v42[3];
                v42 += 4;
                v35[4] = v43;
                v35[5] = v44;
                v35[6] = v45;
                v35[7] = v46;
                v47 = *v42;
                v48 = v42[1];
                v49 = v42[2];
                v50 = v42[3];
                v42 += 4;
                v35[8] = v47;
                v35[9] = v48;
                v35[10] = v49;
                v35[11] = v50;
                v51 = v42[1];
                v52 = v42[2];
                v53 = v42[3];
                v35[12] = *v42;
                v35[13] = v51;
                v35[14] = v52;
                v35[15] = v53;
                if ( v36 == v33 )
                  break;
                v35 += 16;
              }
            }
            glUniformMatrix4fv();
            v29 = v56;
            if ( v56 )
              goto LABEL_16;
            v6 += 2;
            if ( a5 != v6 )
              continue;
          }
          return;
        case 0xC:
        case 0xD:
        case 0xE:
        case 0xF:
          if ( *(_WORD *)(v16 + 4) == 33 )
          {
            glitch::video::detail::getTextureParameter(v63, v7, (const glitch::video::SShaderParameterDef *)v9, a1);
            glUniform1f();
            if ( v63[0] )
              glitch::IReferenceCounted::drop(v63[0]);
            goto LABEL_17;
          }
          if ( !*(_DWORD *)(v16 + 8) )
            goto LABEL_17;
          v30 = v58;
          v31 = 0;
          v32 = *(_DWORD *)(v16 + 8);
          v59 = v6;
          do
          {
            glitch::video::detail::getTextureParameter(v63, v7, (const glitch::video::SShaderParameterDef *)v9, a1);
            ++v31;
            glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setTexture(
              a1,
              v30,
              (int)v63[0],
              *((_DWORD *)v63[0] + 14) & 3);
            glUniform1i();
            v30 = (unsigned __int16)(v30 + 1);
            if ( v63[0] )
              glitch::IReferenceCounted::drop(v63[0]);
          }
          while ( v31 != v32 );
          v6 += 2;
          v58 = (unsigned __int16)(v58 + v31);
          if ( a5 != v59 + 2 )
            continue;
          return;
        case 0x10:
          v55 = *(_DWORD *)(v16 + 8);
          v17 = glitch::core::allocProcessBuffer((glitch::core *)(16 * v55), v55);
          v18 = (glitch::core *)v17;
          if ( v55 )
          {
            v61 = v5;
            v19 = 0;
            v20 = v17;
            v62 = v6;
            do
            {
              v21 = *(_DWORD *)(v9 + 12);
              v22 = (float *)(v20 + 16 * v19);
              v23 = (float)v7[v21];
              v24 = (unsigned __int8 *)&v7[v21];
              v25 = v23 * 0.0039216;
              v26 = (float)v24[2] * 0.0039216;
              v27 = (float)v24[3];
              v22[1] = (float)v24[1] * 0.0039216;
              v22[3] = v27 * 0.0039216;
              v22[2] = v26;
              *v22 = v25;
              ++v19;
            }
            while ( v19 != v55 );
            v18 = (glitch::core *)v20;
            v5 = v61;
            v6 = v62;
          }
          v54 = v18;
          glUniform4fv();
          v29 = v54;
          if ( v54 )
LABEL_16:
            glitch::core::releaseProcessBuffer(v29, v28);
          goto LABEL_17;
        case 0x11:
LABEL_20:
          glUniform4fv();
          v6 += 2;
          if ( a5 != v6 )
            continue;
          return;
        case 0x12:
          glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitLightParameter(
            (int)a1,
            a2,
            *(_DWORD *)&v7[*(_DWORD *)(v9 + 12)],
            v16);
          v6 += 2;
          if ( a5 != v6 )
            continue;
          return;
        default:
LABEL_17:
          v6 += 2;
          if ( a5 == v6 )
            return;
          continue;
      }
    }
  }
}


// ===== 5b35a0 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,glitch::video::BufferInfo>,std::priv::_Select1st<std::pair<uint const,glitch::video::BufferInfo>>,std::priv::_MapTraitsT<std::pair<uint const,glitch::video::BufferInfo>>,std::allocator<std::pair<uint const,glitch::video::BufferInfo>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::video::BufferInfo>,std::priv::_Select1st<std::pair<unsigned int const,glitch::video::BufferInfo>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::video::BufferInfo>>,std::allocator<std::pair<unsigned int const,glitch::video::BufferInfo>>>::_M_erase(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::video::BufferInfo>,std::priv::_Select1st<std::pair<unsigned int const,glitch::video::BufferInfo>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::video::BufferInfo>>,std::allocator<std::pair<unsigned int const,glitch::video::BufferInfo>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x28u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 5b35d8 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::clearBufferMap(void) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::clearBufferMap(
        int a1)
{
  int v1; // r6
  int v3; // r4
  int v4; // r2
  int v5; // r3

  v1 = *(_DWORD *)(a1 + 2056);
  v3 = a1 + 2048;
  while ( v3 != v1 )
  {
    while ( 1 )
    {
      free(*(void **)(v1 + 36));
      v4 = *(_DWORD *)(v1 + 12);
      if ( !v4 )
        break;
      while ( *(_DWORD *)(v4 + 8) )
        v4 = *(_DWORD *)(v4 + 8);
      v1 = v4;
      if ( v3 == v4 )
        goto LABEL_8;
    }
    v5 = *(_DWORD *)(v1 + 4);
    if ( v1 == *(_DWORD *)(v5 + 12) )
    {
      do
      {
        v1 = v5;
        v5 = *(_DWORD *)(v5 + 4);
      }
      while ( *(_DWORD *)(v5 + 12) == v1 );
      v4 = *(_DWORD *)(v1 + 12);
    }
    if ( v4 != v5 )
      v1 = v5;
  }
LABEL_8:
  if ( *(_DWORD *)(a1 + 2064) )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::video::BufferInfo>,std::priv::_Select1st<std::pair<unsigned int const,glitch::video::BufferInfo>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::video::BufferInfo>>,std::allocator<std::pair<unsigned int const,glitch::video::BufferInfo>>>::_M_erase(
      v3,
      *(_DWORD **)(a1 + 2052));
    *(_DWORD *)(a1 + 2064) = 0;
    *(_DWORD *)(a1 + 2060) = v3;
    *(_DWORD *)(a1 + 2056) = v3;
    *(_DWORD *)(a1 + 2052) = 0;
  }
}


// ===== 5b3688 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::~CCommonGLDriver() =====
glitch::video::CCommonGLDriverBase *__fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::~CCommonGLDriver(
        glitch::video::CCommonGLDriverBase *this)
{
  int v1; // r1
  char *v3; // r5

  v1 = *((_DWORD *)this + 516);
  *(_DWORD *)this = &off_9778C0;
  if ( v1 )
  {
    v3 = (char *)this + 2048;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::video::BufferInfo>,std::priv::_Select1st<std::pair<unsigned int const,glitch::video::BufferInfo>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::video::BufferInfo>>,std::allocator<std::pair<unsigned int const,glitch::video::BufferInfo>>>::_M_erase(
      (int)this + 2048,
      *((_DWORD **)this + 513));
    *((_DWORD *)this + 515) = v3;
    *((_DWORD *)this + 516) = 0;
    *((_DWORD *)this + 514) = v3;
    *((_DWORD *)this + 513) = 0;
  }
  glitch::video::CCommonGLDriverBase::~CCommonGLDriverBase(this);
  return this;
}


// ===== 5b36f0 glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::~CProgrammableGLDriver() =====
glitch::video::CCommonGLDriverBase *__fastcall glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::~CProgrammableGLDriver(
        glitch::video::CCommonGLDriverBase *a1)
{
  *(_DWORD *)a1 = off_977570;
  glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::~CCommonGLDriver(a1);
  return a1;
}


// ===== 5b3724 glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::~CProgrammableGLDriver() =====
glitch::video::CCommonGLDriverBase *__fastcall glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::~CProgrammableGLDriver(
        glitch::video::CCommonGLDriverBase *a1)
{
  glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::~CProgrammableGLDriver(a1);
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 5b3740 glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::~CProgrammableGLDriver() =====
glitch::video::CCommonGLDriverBase *__fastcall glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::~CProgrammableGLDriver(
        glitch::video::CCommonGLDriverBase *a1)
{
  *(_DWORD *)a1 = off_977570;
  glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::~CCommonGLDriver(a1);
  return a1;
}


// ===== 5b3774 glitch::video::COpenGLES2Driver::~COpenGLES2Driver() =====
void __fastcall glitch::video::COpenGLES2Driver::~COpenGLES2Driver(glitch::video::COpenGLES2Driver *this)
{
  *(_DWORD *)this = off_977B20;
  glitch::video::IVideoDriver::clearImplementationDependentData(this);
  glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::~CProgrammableGLDriver(this);
}


// ===== 5b37b0 glitch::video::COpenGLES2Driver::~COpenGLES2Driver() =====
void __fastcall glitch::video::COpenGLES2Driver::~COpenGLES2Driver(glitch::video::COpenGLES2Driver *this)
{
  glitch::video::COpenGLES2Driver::~COpenGLES2Driver(this);
  LC_API_FREE_0(this);
}


// ===== 5b37cc glitch::video::COpenGLES2Driver::~COpenGLES2Driver() =====
void __fastcall glitch::video::COpenGLES2Driver::~COpenGLES2Driver(glitch::video::COpenGLES2Driver *this)
{
  *(_DWORD *)this = off_977B20;
  glitch::video::IVideoDriver::clearImplementationDependentData(this);
  glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::~CProgrammableGLDriver(this);
}


// ===== 5b3808 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::~CCommonGLDriver() =====
glitch::video::CCommonGLDriverBase *__fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::~CCommonGLDriver(
        glitch::video::CCommonGLDriverBase *this)
{
  int v1; // r1
  char *v3; // r5

  v1 = *((_DWORD *)this + 516);
  *(_DWORD *)this = &off_9778C0;
  if ( v1 )
  {
    v3 = (char *)this + 2048;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::video::BufferInfo>,std::priv::_Select1st<std::pair<unsigned int const,glitch::video::BufferInfo>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::video::BufferInfo>>,std::allocator<std::pair<unsigned int const,glitch::video::BufferInfo>>>::_M_erase(
      (int)this + 2048,
      *((_DWORD **)this + 513));
    *((_DWORD *)this + 515) = v3;
    *((_DWORD *)this + 516) = 0;
    *((_DWORD *)this + 514) = v3;
    *((_DWORD *)this + 513) = 0;
  }
  glitch::video::CCommonGLDriverBase::~CCommonGLDriverBase(this);
  return this;
}


// ===== 5b3870 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::~CCommonGLDriver() =====
glitch::video::CCommonGLDriverBase *__fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::~CCommonGLDriver(
        glitch::video::CCommonGLDriverBase *a1)
{
  glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::~CCommonGLDriver(a1);
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 5b388c glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::createRenderTarget(boost::intrusive_ptr<glitch::video::ITexture> const&,uint) =====
glitch::video::CCommonGLDriverBase::CRenderTargetBase **__fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::createRenderTarget(
        glitch::video::CCommonGLDriverBase::CRenderTargetBase **a1,
        glitch::video::CCommonGLDriverBase *a2,
        int a3,
        int a4)
{
  int v8; // r11
  int v9; // r2
  int StringsInternal; // r0
  const char *v11; // r8
  const char *v12; // r12
  glitch::video::CCommonGLDriverBase::CRenderTargetBase *v14; // r6
  char s[128]; // [sp+14h] [bp-88h] BYREF

  v8 = (*(_DWORD *)(*(_DWORD *)a3 + 56) >> 4) & 0x3F;
  v9 = *((unsigned __int16 *)a2 + 10 * v8 + 599);
  if ( v8 == v9 )
  {
    v14 = (glitch::video::CCommonGLDriverBase::CRenderTargetBase *)operator new(0x5Cu, 0);
    glitch::video::CCommonGLDriverBase::CRenderTargetBase::CRenderTargetBase(v14, a2);
    ++*((_DWORD *)v14 + 1);
    *(_DWORD *)v14 = &off_9777C8;
    glitch::video::CCommonGLDriverBase::CRenderTargetBase::addTarget(v14, 0, a3, 0, a4);
    *a1 = v14;
    ++*((_DWORD *)v14 + 1);
    glitch::IReferenceCounted::drop(v14);
    return a1;
  }
  if ( v8 == 39 )
  {
    v11 = "unknown";
    if ( v9 != 39 )
      goto LABEL_4;
LABEL_8:
    v12 = "unknown";
    goto LABEL_5;
  }
  StringsInternal = glitch::video::getStringsInternal(0);
  v9 = *((unsigned __int16 *)a2 + 10 * v8 + 599);
  v11 = *(const char **)(StringsInternal + 4 * v8);
  if ( v9 == 39 )
    goto LABEL_8;
LABEL_4:
  v12 = *(const char **)(glitch::video::getStringsInternal(0) + 4 * v9);
LABEL_5:
  snprintf(s, 0x7Fu, "%s (%s is suggested instead)", v11, v12);
  glitch::os::Printer::log("Texture has an unsupported render target pixel format", s, 3);
  *a1 = nullptr;
  return a1;
}


// ===== 5b3a1c glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::mapImpl(uint) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::mapImpl(
        int a1,
        unsigned int a2)
{
  int v2; // r2
  int v5; // r3
  char v7; // r2
  int v8; // r6
  int v9; // r7

  v2 = *(unsigned __int8 *)(a1 + 16);
  if ( glitch::video::`anonymous namespace'::BufferTypeMap[v2]
    && glitch::video::`anonymous namespace'::BlendFactorMap[a2 + 73] )
  {
    if ( a2 > 2 && a2 <= 4 )
    {
      v5 = *(_DWORD *)(a1 + 8);
      if ( v5 )
      {
LABEL_9:
        if ( *(_BYTE *)(a1 + 17) != 4 )
          *(_BYTE *)(a1 + 18) |= 2u;
        if ( a2 == 3 )
          v7 = -95;
        else
          v7 = a2;
        if ( a2 != 3 )
          v7 = (32 * v7) | 1;
        *(_BYTE *)(a1 + 19) = v7;
        return v5;
      }
    }
    v8 = *(_DWORD *)(a1 + 24);
    v9 = *(_DWORD *)(a1 + 20) + 4 * (v2 + 148);
    if ( v8 != *(_DWORD *)(v9 + 4) )
    {
      glBindBuffer();
      *(_DWORD *)(v9 + 4) = v8;
    }
  }
  v5 = *(_DWORD *)(a1 + 8);
  if ( v5 )
  {
    if ( a2 <= 2 )
    {
      *(_BYTE *)(a1 + 19) = 33;
      return v5;
    }
    goto LABEL_9;
  }
  return v5;
}


// ===== 5b3afc glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::genericDriverInit(glitch::core::dimension2d<int> const&,bool) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::genericDriverInit(
        int a1)
{
  const char *i; // r0
  int v3; // r3
  int v4; // r0
  int v5; // r3
  unsigned int v6; // r3
  const unsigned __int8 *v7; // r0
  unsigned int v8; // r3
  int v9; // r1
  int v10; // r2
  int v11; // r0
  int v12; // r2
  int v13; // r3
  int v14; // r1
  int v15; // r2
  int v16; // r2
  int v17; // lr
  int v18; // r0
  __int16 v19; // r6
  __int16 v20; // r6
  __int16 v21; // r12
  __int16 v22; // r10
  int v23; // r9
  __int16 v24; // r12
  __int16 v25; // r12
  int v26; // r2
  __int16 v27; // r7
  int v28; // r8
  int v29; // r2
  int v30; // r0
  __int16 v31; // r7
  int v32; // r0
  __int16 v33; // r6
  __int16 v34; // r7
  bool v35; // zf
  int v36; // r12
  int v37; // r2
  int v38; // r6
  __int16 v39; // r7
  __int16 v40; // r8
  int v41; // lr
  __int16 v42; // r6
  __int16 v43; // r10
  int v44; // lr
  int v45; // r0
  int v46; // r6
  int v47; // lr
  int v48; // r2
  __int16 v49; // r7
  __int16 v50; // r9
  __int16 v51; // r10
  int v52; // lr
  __int16 v53; // r8
  int v54; // r7
  int v55; // r6
  int v56; // r2
  __int16 v57; // r7
  __int16 v58; // r8
  bool v59; // zf
  int v60; // r6
  int v61; // r0
  int v62; // r2
  __int16 v63; // r9
  __int16 v64; // r8
  bool v65; // zf
  int v66; // r7
  int v67; // r6
  __int16 v68; // r8
  int v69; // r2
  __int16 v70; // r7
  int v71; // r6
  int v72; // r0
  int v73; // lr
  __int16 v74; // r7
  int v75; // r6
  int v76; // r8
  int v77; // r0
  int v78; // r2
  __int16 v79; // r8
  int v80; // lr
  int v81; // r0
  int v82; // r1
  int v83; // r2
  __int16 v84; // r7
  __int16 v85; // r6
  bool v86; // zf
  __int16 v87; // r0
  __int16 v88; // r1
  char *v89; // r7
  size_t v90; // r0
  char *v91; // r3
  char *v92; // r1
  unsigned int v93; // r2
  char *v94; // r2
  const GLubyte *v95; // r7
  const GLubyte *v96; // r0
  bool v97; // zf
  char *v98; // r6
  unsigned __int16 MaxLightCount; // r0
  unsigned int v100; // r2
  glitch::IReferenceCounted *v101; // r6
  int v102; // r4
  int v103; // r7
  int j; // r6
  const unsigned __int8 *String; // r0
  char *v107; // r0
  char *v108; // r8
  size_t v109; // r0
  size_t size; // r9
  char *v111; // r0
  char *v112; // r10
  int v113; // r8
  char *v114; // r0
  _BYTE *v115; // r8
  char *v116; // r12
  __int16 v117; // [sp+Ch] [bp-38h]
  glitch::IReferenceCounted *v118; // [sp+10h] [bp-34h] BYREF
  GLint v119; // [sp+14h] [bp-30h] BYREF
  unsigned int v120; // [sp+18h] [bp-2Ch] BYREF
  int v121; // [sp+1Ch] [bp-28h] BYREF
  int v122; // [sp+20h] [bp-24h] BYREF
  _DWORD v123[4]; // [sp+24h] [bp-20h] BYREF
  _BYTE *v124; // [sp+34h] [bp-10h] BYREF
  void *p; // [sp+38h] [bp-Ch]

  for ( i = (const char *)glGetString(0x1F02u); ; ++i )
  {
    v3 = *i;
    if ( v3 != -1 && (*(_BYTE *)(ctype_ + (unsigned __int8)v3 + 1) & 4) != 0 )
      break;
  }
  v121 = 0;
  v122 = 0;
  v4 = sscanf(i, "%u.%u", &v122, &v121);
  v5 = v122;
  if ( v4 > 0 )
  {
    v5 = 100 * v122;
    v122 *= 100;
  }
  v6 = v5 + v121;
  *(_DWORD *)(a1 + 1188) = v6;
  if ( v6 <= 0x64 )
  {
    glitch::os::Printer::log("    Warning: OpenGL|ES driver version is not 1.1 or better.", 2);
    String = glGetString(0x1F03u);
    glitch::video::CCommonGLDriverBase::initExtensions((glitch::video::CCommonGLDriverBase *)a1, String);
    if ( (*(_DWORD *)(a1 + 2000) & 0x20) == 0 )
      goto LABEL_9;
  }
  else
  {
    glitch::os::Printer::log("    OpenGL|ES driver version is 1.1 or better.", 1);
    v7 = glGetString(0x1F03u);
    glitch::video::CCommonGLDriverBase::initExtensions((glitch::video::CCommonGLDriverBase *)a1, v7);
    if ( (*(_DWORD *)(a1 + 2000) & 0x20) == 0 )
      goto LABEL_9;
  }
  glGetFloatv(0x84FFu, (GLfloat *)(a1 + 1192));
LABEL_9:
  v120 = 0;
  glGetIntegerv(0x8872u, (GLint *)&v120);
  v8 = v120;
  v9 = *(_DWORD *)(a1 + 156);
  if ( v120 >= 8 )
    v8 = 8;
  v10 = v9 | 1;
  *(_DWORD *)(a1 + 156) = v9 | 1;
  if ( v8 > 1 )
  {
    v10 = v9 | 3;
    *(_DWORD *)(a1 + 156) = v9 | 3;
  }
  *(_DWORD *)(a1 + 76) = v8;
  v119 = 0;
  *(_DWORD *)(a1 + 156) = v10 | 0x804;
  glGetIntegerv(0xD57u, &v119);
  v11 = *(_DWORD *)(a1 + 1976);
  v12 = *(_DWORD *)(a1 + 156) | 0x18;
  *(_DWORD *)(a1 + 156) = v12;
  if ( (v11 & 0x4000000) != 0 )
  {
    v13 = *(_DWORD *)(a1 + 2024);
    v14 = *(_DWORD *)(a1 + 2028);
  }
  else
  {
    v13 = *(_DWORD *)(a1 + 2024);
    if ( (v13 & 0x20000) != 0 )
    {
      v14 = *(_DWORD *)(a1 + 2028);
    }
    else
    {
      v14 = *(_DWORD *)(a1 + 2028);
      if ( (v14 & 8) == 0 )
        goto LABEL_16;
    }
  }
  v12 |= 0x20u;
  *(_DWORD *)(a1 + 156) = v12;
LABEL_16:
  if ( (*(_DWORD *)(a1 + 1984) & 0x800000) != 0 || (v13 & 0x1000) != 0 )
  {
    v15 = v12 | 0x80;
    *(_DWORD *)(a1 + 156) = v15;
  }
  else
  {
    v15 = *(_DWORD *)(a1 + 156);
  }
  v16 = v15 | 0x100;
  *(_DWORD *)(a1 + 156) = v16;
  if ( (v11 & 0x40000000) != 0 || (*(_DWORD *)(a1 + 2004) & 0x80) != 0 )
  {
    v16 |= 0x200u;
    *(_DWORD *)(a1 + 156) = v16;
  }
  v17 = *(_DWORD *)(a1 + 2000);
  v18 = v16 | 0x1000;
  *(_DWORD *)(a1 + 156) = v16 | 0x1000;
  if ( (v17 & 0x20) != 0 )
  {
    v18 = v16 | 0x21000;
    *(_DWORD *)(a1 + 156) = v16 | 0x21000;
  }
  *(_DWORD *)(a1 + 156) = v18 | 0x12C0000;
  *(_BYTE *)(a1 + 1185) = 1;
  if ( (v13 & 0x100) != 0 || (v14 & 0x200000) != 0 )
    v19 = 14;
  else
    v19 = 5;
  *(_WORD *)(a1 + 1198) = v19;
  *(_WORD *)(a1 + 1196) = 0;
  *(_DWORD *)(a1 + 1204) = 6409;
  *(_DWORD *)(a1 + 1208) = 5121;
  *(_DWORD *)(a1 + 1212) = 0;
  *(_DWORD *)(a1 + 1200) = 6409;
  if ( (v13 & 0x100) != 0 || (v14 & 0x200000) != 0 )
    v20 = 14;
  else
    v20 = 5;
  *(_WORD *)(a1 + 1218) = v20;
  *(_WORD *)(a1 + 1216) = 0;
  *(_WORD *)(a1 + 1236) = 2;
  *(_WORD *)(a1 + 1238) = 14;
  *(_DWORD *)(a1 + 1244) = 6406;
  *(_DWORD *)(a1 + 1248) = 5121;
  *(_DWORD *)(a1 + 1252) = 0;
  *(_DWORD *)(a1 + 1220) = 0;
  *(_DWORD *)(a1 + 1224) = 0;
  *(_DWORD *)(a1 + 1228) = 0;
  *(_DWORD *)(a1 + 1232) = 0;
  *(_DWORD *)(a1 + 1240) = 6406;
  if ( (v13 & 0x100) != 0 || (v14 & 0x200000) != 0 )
    v21 = 14;
  else
    v21 = 7;
  *(_WORD *)(a1 + 1258) = v21;
  *(_WORD *)(a1 + 1256) = 4;
  *(_DWORD *)(a1 + 1268) = -1;
  *(_DWORD *)(a1 + 1272) = 0;
  *(_DWORD *)(a1 + 1260) = -1;
  *(_DWORD *)(a1 + 1264) = -1;
  if ( (v13 & 0x100) != 0 || (v14 & 0x200000) != 0 )
    v22 = 14;
  else
    v22 = 7;
  *(_WORD *)(a1 + 1278) = v22;
  *(_WORD *)(a1 + 1276) = 4;
  *(_DWORD *)(a1 + 1284) = 6410;
  *(_WORD *)(a1 + 1296) = 5;
  *(_WORD *)(a1 + 1298) = 5;
  *(_DWORD *)(a1 + 1308) = 33635;
  *(_DWORD *)(a1 + 1312) = 36194;
  *(_WORD *)(a1 + 1316) = 7;
  *(_WORD *)(a1 + 1318) = 7;
  *(_WORD *)(a1 + 1336) = 7;
  *(_WORD *)(a1 + 1338) = 7;
  *(_DWORD *)(a1 + 1348) = 32819;
  *(_DWORD *)(a1 + 1352) = 32854;
  *(_WORD *)(a1 + 1356) = 9;
  *(_WORD *)(a1 + 1358) = 9;
  *(_DWORD *)(a1 + 1372) = 0;
  *(_WORD *)(a1 + 1376) = 9;
  *(_WORD *)(a1 + 1378) = 9;
  *(_DWORD *)(a1 + 1292) = 0;
  *(_DWORD *)(a1 + 1320) = 0;
  *(_DWORD *)(a1 + 1324) = 0;
  *(_DWORD *)(a1 + 1328) = 0;
  *(_DWORD *)(a1 + 1332) = 0;
  *(_DWORD *)(a1 + 1360) = 0;
  *(_DWORD *)(a1 + 1364) = 0;
  *(_DWORD *)(a1 + 1368) = 0;
  *(_DWORD *)(a1 + 1280) = 6410;
  *(_DWORD *)(a1 + 1288) = 5121;
  *(_DWORD *)(a1 + 1300) = 6407;
  *(_DWORD *)(a1 + 1304) = 6407;
  *(_DWORD *)(a1 + 1340) = 6408;
  *(_DWORD *)(a1 + 1344) = 6408;
  *(_DWORD *)(a1 + 1380) = 6408;
  v23 = v13 & 0x100;
  *(_DWORD *)(a1 + 1384) = 6408;
  *(_DWORD *)(a1 + 1388) = 32820;
  *(_DWORD *)(a1 + 1392) = 32855;
  if ( (v13 & 0x100) != 0 )
  {
    *(_WORD *)(a1 + 1396) = 10;
    *(_WORD *)(a1 + 1398) = 10;
    *(_DWORD *)(a1 + 1404) = 6407;
    *(_DWORD *)(a1 + 1408) = 5121;
    *(_DWORD *)(a1 + 1412) = 32849;
    *(_DWORD *)(a1 + 1400) = 6407;
  }
  else
  {
    if ( (v14 & 0x200000) != 0 )
      v24 = 14;
    else
      v24 = 5;
    *(_WORD *)(a1 + 1398) = v24;
    *(_WORD *)(a1 + 1396) = 10;
    *(_DWORD *)(a1 + 1404) = 6407;
    *(_DWORD *)(a1 + 1408) = 5121;
    *(_DWORD *)(a1 + 1412) = v23;
    *(_DWORD *)(a1 + 1400) = 6407;
  }
  if ( (v13 & 0x100) != 0 )
  {
    v25 = 10;
  }
  else if ( (v14 & 0x200000) != 0 )
  {
    v25 = 14;
  }
  else
  {
    v25 = 5;
  }
  *(_WORD *)(a1 + 1418) = v25;
  *(_WORD *)(a1 + 1416) = 10;
  *(_WORD *)(a1 + 1436) = 14;
  *(_WORD *)(a1 + 1438) = 14;
  if ( (v13 & 0x10000000) != 0 )
    v25 = 13;
  *(_DWORD *)(a1 + 1452) = 0;
  *(_DWORD *)(a1 + 1420) = 0;
  *(_DWORD *)(a1 + 1424) = 0;
  *(_DWORD *)(a1 + 1428) = 0;
  *(_DWORD *)(a1 + 1432) = 0;
  *(_DWORD *)(a1 + 1440) = 0;
  *(_DWORD *)(a1 + 1444) = 0;
  *(_DWORD *)(a1 + 1448) = 0;
  if ( (v13 & 0x10000000) != 0 )
  {
    v26 = 1;
  }
  else
  {
    v26 = v14 & 0x440000;
    if ( (v14 & 0x440000) != 0 )
    {
      v26 = 1;
      v25 = 13;
    }
    else
    {
      v25 = 14;
    }
  }
  if ( (v13 & 0x100) != 0 || (v14 & 0x200000) != 0 )
  {
    v27 = 14;
    if ( (v14 & 0x40000) == 0 )
    {
LABEL_60:
      if ( v26 )
      {
        v28 = 32993;
LABEL_63:
        v29 = 32993;
        v30 = 5121;
        goto LABEL_64;
      }
      v28 = 0;
      goto LABEL_280;
    }
  }
  else
  {
    v27 = 6;
    if ( (v14 & 0x40000) == 0 )
      goto LABEL_60;
  }
  if ( v26 )
  {
    v28 = 6408;
    goto LABEL_63;
  }
  v28 = 6408;
LABEL_280:
  v29 = 0;
  v30 = 0;
LABEL_64:
  *(_WORD *)(a1 + 1456) = v25;
  *(_WORD *)(a1 + 1458) = v27;
  *(_DWORD *)(a1 + 1464) = v29;
  *(_DWORD *)(a1 + 1460) = v28;
  *(_DWORD *)(a1 + 1468) = v30;
  *(_DWORD *)(a1 + 1472) = 0;
  if ( (v13 & 0x100) != 0 || (v14 & 0x200000) != 0 )
  {
    *(_WORD *)(a1 + 1476) = 14;
    *(_WORD *)(a1 + 1478) = 14;
    *(_DWORD *)(a1 + 1488) = 5121;
    *(_DWORD *)(a1 + 1484) = 6408;
    *(_DWORD *)(a1 + 1492) = 32856;
    *(_DWORD *)(a1 + 1480) = 6408;
  }
  else
  {
    *(_WORD *)(a1 + 1476) = 14;
    *(_WORD *)(a1 + 1478) = 7;
    *(_DWORD *)(a1 + 1484) = 6408;
    *(_DWORD *)(a1 + 1488) = 5121;
    *(_DWORD *)(a1 + 1492) = 0;
    *(_DWORD *)(a1 + 1480) = 6408;
  }
  if ( (v13 & 0x100) != 0 || (v14 & 0x200000) != 0 )
    v31 = 14;
  else
    v31 = 7;
  v32 = v13 & 0x200000;
  *(_WORD *)(a1 + 1498) = v31;
  if ( (v13 & 0x200000) != 0 )
    v33 = 16;
  else
    v33 = 14;
  *(_WORD *)(a1 + 1496) = 14;
  *(_DWORD *)(a1 + 1512) = 0;
  *(_DWORD *)(a1 + 1500) = 0;
  *(_DWORD *)(a1 + 1504) = 0;
  *(_DWORD *)(a1 + 1508) = 0;
  if ( (v13 & 0x100) != 0 || (v14 & 0x200000) != 0 )
    v34 = 14;
  else
    v34 = 9;
  v35 = v32 == 0;
  v36 = *(_DWORD *)(a1 + 2012);
  *(_WORD *)(a1 + 1516) = v33;
  if ( v32 )
    v37 = 6408;
  else
    v37 = 0;
  *(_WORD *)(a1 + 1518) = v34;
  if ( !v32 )
    v32 = v37;
  *(_DWORD *)(a1 + 1520) = v37;
  if ( !v35 )
    v32 = 33640;
  *(_DWORD *)(a1 + 1524) = 6408;
  *(_DWORD *)(a1 + 1528) = v32;
  *(_DWORD *)(a1 + 1532) = 0;
  if ( (v36 & 2) != 0 || (v38 = v17 & 0x10000, (v17 & 0x10000) != 0) )
  {
    v39 = 17;
    v38 = 33776;
  }
  else
  {
    v39 = 5;
  }
  *(_WORD *)(a1 + 1536) = v39;
  v40 = 5;
  *(_WORD *)(a1 + 1538) = 5;
  *(_DWORD *)(a1 + 1540) = v38;
  *(_DWORD *)(a1 + 1552) = 0;
  *(_DWORD *)(a1 + 1544) = 0;
  *(_DWORD *)(a1 + 1548) = 0;
  if ( (v36 & 2) != 0 || (v41 = v17 & 0x10000) != 0 )
  {
    v42 = 18;
    v41 = 33777;
  }
  else
  {
    v42 = 9;
  }
  *(_WORD *)(a1 + 1556) = v42;
  v43 = 9;
  *(_WORD *)(a1 + 1558) = 9;
  *(_DWORD *)(a1 + 1560) = v41;
  *(_DWORD *)(a1 + 1572) = 0;
  *(_DWORD *)(a1 + 1564) = 0;
  *(_DWORD *)(a1 + 1568) = 0;
  if ( (v13 & 0x100) != 0 || (v14 & 0x200000) != 0 )
    v117 = 14;
  else
    v117 = 7;
  v44 = 34798;
  if ( (v13 & 0x100000) == 0 )
    v44 = 0;
  *(_DWORD *)(a1 + 1660) = v44;
  v45 = v13 & 0x40000000;
  v46 = 35986;
  v47 = 35987;
  if ( (v13 & 0x100000) != 0 )
  {
    LOWORD(v23) = 21;
  }
  else
  {
    v46 = v13 & 0x100000;
    v47 = v13 & 0x100000;
  }
  if ( (v13 & 0x100000) != 0 )
    v43 = 22;
  else
    LOWORD(v23) = 14;
  if ( (v13 & 0x100000) != 0 )
    v40 = 23;
  else
    v43 = 14;
  if ( (v13 & 0x100000) == 0 )
    v40 = 14;
  v48 = 35841;
  if ( !v45 )
    v48 = 0;
  *(_DWORD *)(a1 + 1680) = v48;
  *(_DWORD *)(a1 + 1640) = v47;
  if ( v45 )
    v49 = 24;
  else
    v49 = 14;
  *(_WORD *)(a1 + 1578) = v117;
  *(_WORD *)(a1 + 1616) = v23;
  *(_WORD *)(a1 + 1636) = v43;
  *(_WORD *)(a1 + 1656) = v40;
  *(_WORD *)(a1 + 1676) = v49;
  *(_WORD *)(a1 + 1576) = 14;
  *(_WORD *)(a1 + 1596) = 20;
  *(_WORD *)(a1 + 1598) = 12;
  *(_DWORD *)(a1 + 1600) = 33779;
  *(_WORD *)(a1 + 1618) = 14;
  *(_DWORD *)(a1 + 1620) = v46;
  *(_WORD *)(a1 + 1638) = 14;
  if ( v45 )
    v50 = 25;
  else
    v50 = 14;
  *(_WORD *)(a1 + 1658) = 14;
  *(_WORD *)(a1 + 1678) = 5;
  if ( v45 )
    v51 = 26;
  else
    v51 = 14;
  *(_DWORD *)(a1 + 1580) = 0;
  *(_DWORD *)(a1 + 1584) = 0;
  *(_DWORD *)(a1 + 1588) = 0;
  *(_DWORD *)(a1 + 1592) = 0;
  *(_DWORD *)(a1 + 1604) = 0;
  *(_DWORD *)(a1 + 1608) = 0;
  *(_DWORD *)(a1 + 1612) = 0;
  *(_DWORD *)(a1 + 1624) = 0;
  *(_DWORD *)(a1 + 1628) = 0;
  *(_DWORD *)(a1 + 1632) = 0;
  *(_DWORD *)(a1 + 1644) = 0;
  *(_DWORD *)(a1 + 1648) = 0;
  *(_DWORD *)(a1 + 1652) = 0;
  *(_DWORD *)(a1 + 1664) = 0;
  *(_DWORD *)(a1 + 1668) = 0;
  *(_DWORD *)(a1 + 1672) = 0;
  v52 = *(_DWORD *)(a1 + 1980);
  *(_DWORD *)(a1 + 1684) = 0;
  *(_WORD *)(a1 + 1696) = v50;
  *(_WORD *)(a1 + 1716) = v51;
  if ( v45 )
    v53 = 27;
  else
    v53 = 14;
  v54 = 35843;
  *(_WORD *)(a1 + 1736) = v53;
  if ( !v45 )
    v54 = v13 & 0x40000000;
  v55 = 35842;
  *(_WORD *)(a1 + 1698) = 7;
  if ( !v45 )
    v55 = v13 & 0x40000000;
  *(_DWORD *)(a1 + 1700) = v54;
  if ( v45 )
    v45 = 35840;
  *(_WORD *)(a1 + 1718) = 5;
  *(_DWORD *)(a1 + 1720) = v45;
  *(_WORD *)(a1 + 1738) = 7;
  *(_DWORD *)(a1 + 1740) = v55;
  *(_DWORD *)(a1 + 1752) = 0;
  *(_DWORD *)(a1 + 1688) = 0;
  *(_DWORD *)(a1 + 1692) = 0;
  *(_DWORD *)(a1 + 1704) = 0;
  *(_DWORD *)(a1 + 1708) = 0;
  *(_DWORD *)(a1 + 1712) = 0;
  *(_DWORD *)(a1 + 1724) = 0;
  *(_DWORD *)(a1 + 1728) = 0;
  *(_DWORD *)(a1 + 1732) = 0;
  *(_DWORD *)(a1 + 1744) = 0;
  *(_DWORD *)(a1 + 1748) = 0;
  if ( (v52 & 2) != 0 && ((v52 & 1) != 0 || (*(_DWORD *)(a1 + 2008) & 0x8000) != 0) )
  {
    v57 = 28;
    v56 = v13 & 0x10000;
  }
  else
  {
    v56 = v13 & 0x10000;
    if ( (v13 & 0x10000) != 0 )
    {
      v57 = 28;
    }
    else if ( (v13 & 0x8000) != 0 )
    {
      v57 = 30;
    }
    else
    {
      v57 = 14;
    }
  }
  if ( (v13 & 0x100) != 0 )
  {
    v58 = 10;
  }
  else if ( (v14 & 0x200000) != 0 )
  {
    v58 = 14;
  }
  else
  {
    v58 = 5;
  }
  v59 = v56 == 0;
  *(_WORD *)(a1 + 1756) = v57;
  if ( v56 )
    v56 = 6407;
  *(_WORD *)(a1 + 1758) = v58;
  if ( v59 )
  {
    v60 = v56;
    v61 = v56;
  }
  else
  {
    v60 = 34843;
    v61 = 36193;
  }
  *(_DWORD *)(a1 + 1764) = v56;
  *(_DWORD *)(a1 + 1760) = v60;
  *(_DWORD *)(a1 + 1768) = v61;
  *(_DWORD *)(a1 + 1772) = 0;
  if ( (v52 & 2) != 0 && ((v52 & 1) != 0 || (*(_DWORD *)(a1 + 2008) & 0x8000) != 0) )
  {
    v63 = 29;
    v62 = v13 & 0x10000;
  }
  else
  {
    v62 = v13 & 0x10000;
    if ( (v13 & 0x10000) != 0 )
    {
      v63 = 29;
    }
    else if ( (v13 & 0x8000) != 0 )
    {
      v63 = 31;
    }
    else
    {
      v63 = 14;
    }
  }
  if ( (v13 & 0x100) != 0 )
  {
    v64 = 10;
  }
  else if ( (v14 & 0x200000) != 0 )
  {
    v64 = 14;
  }
  else
  {
    v64 = 7;
  }
  v65 = v62 == 0;
  *(_WORD *)(a1 + 1776) = v63;
  if ( v62 )
    v62 = 6408;
  *(_WORD *)(a1 + 1778) = v64;
  if ( v65 )
  {
    v66 = v62;
    v67 = v62;
  }
  else
  {
    v66 = 34842;
    v67 = 36193;
  }
  *(_DWORD *)(a1 + 1784) = v62;
  *(_DWORD *)(a1 + 1792) = 0;
  *(_DWORD *)(a1 + 1780) = v66;
  *(_DWORD *)(a1 + 1788) = v67;
  if ( (v52 & 2) != 0 )
  {
    v68 = 31;
    v69 = v13 & 0x8000;
  }
  else
  {
    v69 = v13 & 0x8000;
    if ( (v13 & 0x8000) != 0 )
    {
      v68 = 31;
    }
    else if ( (v13 & 0x10000) != 0 )
    {
      v68 = 29;
    }
    else
    {
      v68 = 14;
    }
  }
  if ( (v13 & 0x100) != 0 )
  {
    v70 = 10;
  }
  else if ( (v14 & 0x200000) != 0 )
  {
    v70 = 14;
  }
  else
  {
    v70 = 5;
  }
  v71 = 34837;
  if ( !v69 )
    v71 = 0;
  if ( (v52 & 2) != 0 || v69 )
  {
    v69 = 6407;
    v72 = 5126;
  }
  else
  {
    v72 = 0;
  }
  *(_WORD *)(a1 + 1796) = v68;
  *(_WORD *)(a1 + 1798) = v70;
  v73 = v52 & 2;
  *(_DWORD *)(a1 + 1804) = v69;
  *(_DWORD *)(a1 + 1800) = v71;
  *(_DWORD *)(a1 + 1808) = v72;
  *(_DWORD *)(a1 + 1812) = 0;
  if ( v73 || (v13 & 0x8000) != 0 )
  {
    v74 = 31;
  }
  else if ( (v13 & 0x10000) != 0 )
  {
    v74 = 29;
  }
  else
  {
    v74 = 14;
  }
  if ( (v13 & 0x100) != 0 || (v14 & 0x200000) != 0 )
    v75 = 14;
  else
    v75 = 7;
  if ( v73 || (v13 & 0x8000) != 0 )
  {
    v73 = 6408;
    v76 = 34836;
    v77 = 5126;
  }
  else
  {
    v76 = 0;
    v77 = 0;
  }
  *(_WORD *)(a1 + 1816) = v74;
  v78 = v13 & 0x400000;
  *(_WORD *)(a1 + 1818) = v75;
  if ( (v13 & 0x400000) != 0 )
    v78 = 6402;
  *(_DWORD *)(a1 + 1820) = v76;
  if ( (v13 & 0x400000) != 0 )
    v79 = 32;
  else
    v79 = 39;
  *(_DWORD *)(a1 + 1824) = v73;
  *(_DWORD *)(a1 + 1828) = v77;
  *(_DWORD *)(a1 + 1832) = 0;
  if ( (v13 & 0x400000) == 0 )
    v75 = v78;
  *(_WORD *)(a1 + 1836) = v79;
  if ( (v13 & 0x400000) != 0 )
  {
    v75 = v78;
    v80 = 5123;
  }
  else
  {
    v80 = v78;
  }
  *(_WORD *)(a1 + 1838) = 32;
  if ( (v13 & 0x400000) != 0 )
    v81 = 32;
  else
    v81 = 39;
  *(_DWORD *)(a1 + 1844) = v78;
  v82 = v13 & 4;
  *(_DWORD *)(a1 + 1840) = v75;
  *(_DWORD *)(a1 + 1848) = v80;
  *(_DWORD *)(a1 + 1852) = 33189;
  *(_WORD *)(a1 + 1856) = v81;
  if ( (v13 & 4) != 0 )
  {
    v80 = 33;
    *(_WORD *)(a1 + 1858) = 33;
    *(_DWORD *)(a1 + 1868) = 0;
    *(_DWORD *)(a1 + 1872) = 33190;
    *(_DWORD *)(a1 + 1860) = 0;
    *(_DWORD *)(a1 + 1864) = 0;
  }
  else
  {
    *(_WORD *)(a1 + 1858) = 32;
    *(_DWORD *)(a1 + 1872) = v82;
    *(_DWORD *)(a1 + 1860) = v82;
    *(_DWORD *)(a1 + 1864) = v82;
    *(_DWORD *)(a1 + 1868) = v82;
  }
  v83 = v13 & 0x400000;
  if ( (v13 & 0x400000) != 0 )
    v84 = 34;
  else
    v84 = 39;
  if ( (v13 & 8) != 0 )
  {
    v85 = 34;
  }
  else if ( (v13 & 4) != 0 )
  {
    v85 = 33;
  }
  else
  {
    v85 = 32;
  }
  v86 = v83 == 0;
  if ( v83 )
  {
    v83 = 6402;
  }
  else
  {
    v80 = 0;
    v81 = 0;
  }
  if ( !v86 )
  {
    v80 = v83;
    v81 = 5125;
  }
  *(_WORD *)(a1 + 1876) = v84;
  *(_WORD *)(a1 + 1878) = v85;
  if ( (v13 & 8) != 0 )
  {
    *(_DWORD *)(a1 + 1884) = v83;
    *(_DWORD *)(a1 + 1880) = v80;
    *(_DWORD *)(a1 + 1888) = v81;
    *(_DWORD *)(a1 + 1892) = 33191;
  }
  else
  {
    *(_DWORD *)(a1 + 1880) = v80;
    *(_DWORD *)(a1 + 1884) = v83;
    *(_DWORD *)(a1 + 1888) = v81;
    *(_DWORD *)(a1 + 1892) = 0;
  }
  if ( (v36 & 0x10) != 0 || (*(_DWORD *)(a1 + 2004) & 0x10) != 0 || (v13 & 0x800000) != 0 )
  {
    *(_WORD *)(a1 + 1896) = 39;
    *(_WORD *)(a1 + 1898) = 35;
    *(_DWORD *)(a1 + 1908) = 0;
    *(_DWORD *)(a1 + 1912) = 35056;
    *(_DWORD *)(a1 + 1900) = 0;
    *(_DWORD *)(a1 + 1904) = 0;
  }
  else
  {
    *(_WORD *)(a1 + 1896) = 39;
    *(_WORD *)(a1 + 1898) = 39;
    *(_DWORD *)(a1 + 1912) = 0;
    *(_DWORD *)(a1 + 1900) = 0;
    *(_DWORD *)(a1 + 1904) = 0;
    *(_DWORD *)(a1 + 1908) = 0;
  }
  if ( (v13 & 0x200) != 0 )
  {
    *(_WORD *)(a1 + 1916) = 39;
    *(_WORD *)(a1 + 1918) = 36;
    *(_DWORD *)(a1 + 1928) = 0;
    *(_DWORD *)(a1 + 1932) = 36166;
    *(_DWORD *)(a1 + 1920) = 0;
    *(_DWORD *)(a1 + 1924) = 0;
  }
  else
  {
    if ( (v13 & 0x400) != 0 )
    {
      v87 = 37;
    }
    else if ( (v13 & 0x800) != 0 )
    {
      v87 = 38;
    }
    else
    {
      v87 = 39;
    }
    *(_WORD *)(a1 + 1918) = v87;
    *(_WORD *)(a1 + 1916) = 39;
    *(_DWORD *)(a1 + 1932) = 0;
    *(_DWORD *)(a1 + 1920) = 0;
    *(_DWORD *)(a1 + 1924) = 0;
    *(_DWORD *)(a1 + 1928) = 0;
  }
  if ( (v13 & 0x400) != 0 )
  {
    *(_WORD *)(a1 + 1936) = 39;
    *(_WORD *)(a1 + 1938) = 37;
    *(_DWORD *)(a1 + 1948) = 0;
    *(_DWORD *)(a1 + 1952) = 36167;
    *(_DWORD *)(a1 + 1940) = 0;
    *(_DWORD *)(a1 + 1944) = 0;
  }
  else
  {
    if ( (v13 & 0x800) != 0 )
    {
      v88 = 38;
    }
    else if ( (v13 & 0x200) != 0 )
    {
      v88 = 36;
    }
    else
    {
      v88 = 39;
    }
    *(_WORD *)(a1 + 1938) = v88;
    *(_WORD *)(a1 + 1936) = 39;
    *(_DWORD *)(a1 + 1952) = 0;
    *(_DWORD *)(a1 + 1940) = 0;
    *(_DWORD *)(a1 + 1944) = 0;
    *(_DWORD *)(a1 + 1948) = 0;
  }
  *(_WORD *)(a1 + 1956) = 39;
  *(_WORD *)(a1 + 1958) = 38;
  *(_DWORD *)(a1 + 1968) = 0;
  *(_DWORD *)(a1 + 1960) = 0;
  *(_DWORD *)(a1 + 1964) = 0;
  *(_DWORD *)(a1 + 1972) = 36168;
  glitch::os::Printer::log("Driver informations:", 1);
  v89 = (char *)glGetString(0x1F02u);
  v90 = LC_API_STRLEN_0(v89);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    (_DWORD *)(a1 + 8),
    v89,
    &v89[v90]);
  v91 = *(char **)(a1 + 24);
  v92 = *(char **)(a1 + 28);
  v93 = v91 - v92;
  if ( v91 == v92 || v93 <= 6 )
    goto LABEL_231;
  if ( v91 == v92 )
  {
    v107 = *(char **)(a1 + 24);
  }
  else
  {
    v108 = v92 + 1;
LABEL_323:
    while ( *(v108 - 1) != 79 )
    {
      v35 = v108 == v91;
      v107 = v108++;
      if ( v35 )
        goto LABEL_326;
    }
    v107 = v108;
    if ( v108 != v91 )
    {
      v116 = "enGL ";
      while ( 1 )
      {
        if ( *v107 != *(v116 - 1) )
        {
          ++v108;
          goto LABEL_323;
        }
        if ( v116 == "" )
          break;
        ++v107;
        ++v116;
        if ( v107 == v91 )
          goto LABEL_326;
      }
      v107 = v108 - 1;
    }
  }
LABEL_326:
  if ( v91 == v107 || v107 - v92 == -1 )
  {
LABEL_231:
    v124 = v123;
    p = v123;
    std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
      v123,
      v93 + 8);
    *v124 = 0;
    if ( p == v123 )
      v94 = (char *)&v124;
    else
      v94 = (char *)v123[0];
    if ( (unsigned int)(v94 - v124) <= 7 )
    {
      size = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
               (int)v123,
               7u);
      v111 = (char *)GlitchAlloc(size, 0);
      v112 = v111;
      if ( p != v124 )
      {
        v113 = v124 - (_BYTE *)p;
        v111 = (char *)memcpy(v111, p, v124 - (_BYTE *)p) + v113;
      }
      v114 = (char *)memcpy(v111, "OpenGL ", 7u);
      v114[7] = 0;
      v115 = v114 + 7;
      if ( p != v123 && p )
        GlitchFree(p);
      v123[0] = &v112[size];
      v124 = v115;
      p = v112;
    }
    else
    {
      *v124 = 79;
      strcpy(v124 + 1, "penGL ");
      v124 += 7;
    }
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
      v123,
      *(_BYTE **)(a1 + 28),
      *(_BYTE **)(a1 + 24));
    if ( (_DWORD *)(a1 + 8) != v123 )
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        (_DWORD *)(a1 + 8),
        p,
        v124);
    if ( p != v123 && p )
      GlitchFree(p);
    v92 = *(char **)(a1 + 28);
  }
  glitch::os::Printer::log("    Driver ", v92, 1);
  v95 = glGetString(0x1F01u);
  v96 = glGetString(0x1F00u);
  v97 = v96 == nullptr;
  if ( v96 )
    v97 = v95 == nullptr;
  v98 = (char *)v96;
  if ( !v97 )
  {
    glitch::os::Printer::log("    Renderer ", v95, 1);
    glitch::os::Printer::log("    Vendor ", v98, 1);
    v109 = LC_API_STRLEN_0(v98);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (_DWORD *)(a1 + 32),
      v98,
      &v98[v109]);
  }
  MaxLightCount = glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::queryMaxLightCount();
  if ( MaxLightCount > 7u )
    v100 = 8;
  else
    v100 = MaxLightCount;
  glitch::video::IVideoDriver::init((glitch::video::IVideoDriver *)a1, MaxLightCount, v100, v119);
  v101 = (glitch::IReferenceCounted *)operator new(0x38u, 0);
  glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CFramebuffer::CFramebuffer(
    v101,
    a1);
  v118 = v101;
  if ( v101 )
    ++*((_DWORD *)v101 + 1);
  (*(void (__fastcall **)(int, glitch::IReferenceCounted **))(*(_DWORD *)a1 + 140))(a1, &v118);
  glPixelStorei(0xD05u, 1);
  if ( glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::driverInit(a1) )
  {
    v103 = a1;
    for ( j = 0; j != 5; ++j )
    {
      if ( glitch::video::`anonymous namespace'::BufferTypeMap[j] )
        glBindBuffer();
      v103 += 4;
    }
    (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 116))(a1);
    (*(void (__fastcall **)(int, int))(*(_DWORD *)a1 + 168))(a1, 1);
    glitch::video::IVideoDriver::initImplementationDependentData((glitch::video::IVideoDriver *)a1);
    v102 = 1;
  }
  else
  {
    v102 = 0;
  }
  if ( v118 )
    glitch::IReferenceCounted::drop(v118);
  return v102;
}


// ===== 5b4da0 glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitCurrentMaterialParametersAux<glitch::video::CMaterial>(glitch::video::CGLSLShader const*,glitch::video::CMaterial const*,glitch::video::SShaderParameterBinding const*,glitch::video::SShaderParameterBinding const*) =====
void __fastcall glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitCurrentMaterialParametersAux<glitch::video::CMaterial>(
        const glitch::video::IVideoDriver *a1,
        int a2,
        int a3,
        unsigned __int16 *a4,
        unsigned __int16 *a5)
{
  unsigned __int16 *v5; // r4
  const unsigned __int8 *v6; // r7
  unsigned int v7; // r3
  int v8; // r6
  int v9; // r2
  unsigned int v10; // r0
  int v11; // r1
  unsigned int v12; // r6
  int v13; // r5
  int v14; // r1
  int v15; // r6
  glitch::core *v16; // r8
  int v17; // r10
  int v18; // r6
  float *v19; // r4
  float v20; // r0
  unsigned __int8 *v21; // r6
  float v22; // r3
  float v23; // r9
  float v24; // r0
  void *v25; // r1
  int v26; // r11
  unsigned int v27; // r8
  int v28; // r10
  int v29; // r9
  int v30; // r0
  glitch::core *v31; // r11
  int *v32; // r10
  int v33; // r8
  int *v34; // lr
  int v35; // r0
  int v36; // r1
  int v37; // r2
  int v38; // r3
  int *v39; // lr
  int v40; // r0
  int v41; // r1
  int v42; // r2
  int v43; // r3
  int v44; // r0
  int v45; // r1
  int v46; // r2
  int v47; // r3
  int v48; // r1
  int v49; // r2
  int v50; // r3
  void *v51; // r1
  int v54; // [sp+Ch] [bp-38h]
  unsigned __int16 *v55; // [sp+Ch] [bp-38h]
  unsigned int v56; // [sp+18h] [bp-2Ch]
  unsigned __int16 *v58; // [sp+28h] [bp-1Ch]
  glitch::IReferenceCounted *v59[5]; // [sp+30h] [bp-14h] BYREF

  v5 = a4;
  v6 = (const unsigned __int8 *)(a3 + 32);
  if ( a4 != a5 )
  {
    v56 = 0;
    while ( 2 )
    {
      v7 = v5[1];
      v8 = *v5;
      v9 = *(_DWORD *)(a3 + 4);
      v10 = *(unsigned __int16 *)(v9 + 14);
      v11 = (v8 >> 15) + 5;
      v12 = v8 << 17;
      if ( v10 <= v7 )
        v13 = 0;
      else
        v13 = *(_DWORD *)(v9 + 32);
      v14 = *(_DWORD *)(a2 + 8 * v11);
      if ( v10 > v7 )
        v13 += 16 * v7;
      v15 = v14 + 16 * (v12 >> 17);
      switch ( *(_BYTE *)(v13 + 6) )
      {
        case 1:
          glUniform1iv();
          v5 += 2;
          if ( a5 != v5 )
            continue;
          return;
        case 2:
          glUniform2iv();
          v5 += 2;
          if ( a5 != v5 )
            continue;
          return;
        case 3:
          glUniform3iv();
          v5 += 2;
          if ( a5 != v5 )
            continue;
          return;
        case 4:
          glUniform4iv();
          v5 += 2;
          if ( a5 != v5 )
            continue;
          return;
        case 5:
          glUniform1fv();
          v5 += 2;
          if ( a5 != v5 )
            continue;
          return;
        case 6:
          glUniform2fv();
          v5 += 2;
          if ( a5 != v5 )
            continue;
          return;
        case 7:
          glUniform3fv();
          v5 += 2;
          if ( a5 != v5 )
            continue;
          return;
        case 8:
          if ( *(_WORD *)(v15 + 4) != 17 )
            goto LABEL_18;
          v5 += 2;
          v59[1] = (glitch::IReferenceCounted *)dword_9F69B8;
          v59[0] = (glitch::IReferenceCounted *)m_fairyPos_new;
          v59[2] = (glitch::IReferenceCounted *)dword_9F69BC;
          v59[3] = (glitch::IReferenceCounted *)dword_9F69C0;
          glUniform4fv();
          if ( a5 != v5 )
            continue;
          return;
        case 0xB:
          v29 = *(_DWORD *)(v15 + 8);
          if ( v29 == 1 )
          {
            v5 += 2;
            glUniformMatrix4fv();
            if ( a5 != v5 )
              continue;
          }
          else
          {
            v30 = glitch::core::allocProcessBuffer((glitch::core *)(v29 << 6), v14);
            v31 = (glitch::core *)v30;
            if ( v29 )
            {
              v32 = (int *)v30;
              v33 = 0;
              while ( 1 )
              {
                v34 = *(int **)&v6[4 * v33++ + *(_DWORD *)(v13 + 12)];
                if ( !v34 )
                  v34 = &glitch::core::IdentityMatrix;
                v35 = *v34;
                v36 = v34[1];
                v37 = v34[2];
                v38 = v34[3];
                v39 = v34 + 4;
                *v32 = v35;
                v32[1] = v36;
                v32[2] = v37;
                v32[3] = v38;
                v40 = *v39;
                v41 = v39[1];
                v42 = v39[2];
                v43 = v39[3];
                v39 += 4;
                v32[4] = v40;
                v32[5] = v41;
                v32[6] = v42;
                v32[7] = v43;
                v44 = *v39;
                v45 = v39[1];
                v46 = v39[2];
                v47 = v39[3];
                v39 += 4;
                v32[8] = v44;
                v32[9] = v45;
                v32[10] = v46;
                v32[11] = v47;
                v48 = v39[1];
                v49 = v39[2];
                v50 = v39[3];
                v32[12] = *v39;
                v32[13] = v48;
                v32[14] = v49;
                v32[15] = v50;
                if ( v33 == v29 )
                  break;
                v32 += 16;
              }
            }
            glUniformMatrix4fv();
            if ( !v31 )
              goto LABEL_15;
            glitch::core::releaseProcessBuffer(v31, v51);
            v5 += 2;
            if ( a5 != v5 )
              continue;
          }
          return;
        case 0xC:
        case 0xD:
        case 0xE:
        case 0xF:
          if ( *(_WORD *)(v15 + 4) == 33 )
          {
            glitch::video::detail::getTextureParameter(v59, v6, (const glitch::video::SShaderParameterDef *)v13, a1);
            glUniform1f();
            if ( v59[0] )
              glitch::IReferenceCounted::drop(v59[0]);
            goto LABEL_15;
          }
          v26 = *(_DWORD *)(v15 + 8);
          if ( !v26 )
            goto LABEL_15;
          v55 = v5;
          v27 = v56;
          v28 = 0;
          do
          {
            glitch::video::detail::getTextureParameter(v59, v6, (const glitch::video::SShaderParameterDef *)v13, a1);
            ++v28;
            glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setTexture(
              a1,
              v27,
              (int)v59[0],
              *((_DWORD *)v59[0] + 14) & 3);
            glUniform1i();
            v27 = (unsigned __int16)(v27 + 1);
            if ( v59[0] )
              glitch::IReferenceCounted::drop(v59[0]);
          }
          while ( v28 != v26 );
          v5 += 2;
          v56 = (unsigned __int16)(v56 + v28);
          if ( a5 != v55 + 2 )
            continue;
          return;
        case 0x10:
          v54 = *(_DWORD *)(v15 + 8);
          v16 = (glitch::core *)glitch::core::allocProcessBuffer((glitch::core *)(16 * v54), v54);
          if ( v54 )
          {
            v17 = 0;
            v58 = v5;
            do
            {
              v18 = *(_DWORD *)(v13 + 12);
              v19 = (float *)((char *)v16 + 16 * v17);
              v20 = (float)v6[v18];
              v21 = (unsigned __int8 *)&v6[v18];
              v22 = v20 * 0.0039216;
              v23 = (float)v21[2] * 0.0039216;
              v24 = (float)v21[3];
              v19[1] = (float)v21[1] * 0.0039216;
              v19[3] = v24 * 0.0039216;
              v19[2] = v23;
              *v19 = v22;
              ++v17;
            }
            while ( v17 != v54 );
            v5 = v58;
          }
          glUniform4fv();
          if ( v16 )
            glitch::core::releaseProcessBuffer(v16, v25);
          goto LABEL_15;
        case 0x11:
LABEL_18:
          glUniform4fv();
          v5 += 2;
          if ( a5 != v5 )
            continue;
          return;
        case 0x12:
          glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitLightParameter(
            (int)a1,
            a2,
            *(_DWORD *)&v6[*(_DWORD *)(v13 + 12)],
            v15);
          v5 += 2;
          if ( a5 != v5 )
            continue;
          return;
        default:
LABEL_15:
          v5 += 2;
          if ( a5 == v5 )
            return;
          continue;
      }
    }
  }
}


// ===== 5b5340 glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitCurrentMaterialDirectParameters(uchar) =====
void __fastcall glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitCurrentMaterialDirectParameters(
        int a1,
        int a2)
{
  int v2; // r2
  int v3; // r3

  v2 = *(_DWORD *)(a1 + 236);
  v3 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v2 + 4) + 24) + 12 * *(unsigned __int8 *)(a1 + 248) + 8) + 52 * a2;
  glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitCurrentMaterialParametersAux<glitch::video::CMaterial>(
    (const glitch::video::IVideoDriver *)a1,
    *(_DWORD *)(a1 + 244),
    v2,
    *(unsigned __int16 **)(v3 + 40),
    (unsigned __int16 *)(*(_DWORD *)(v3 + 40) + 4 * *(unsigned __int16 *)(v3 + 44)));
}


// ===== 5b5390 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::createRenderBuffer(glitch::core::dimension2d<int> const&,glitch::video::E_PIXEL_FORMAT) =====
glitch::IReferenceCounted **__fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::createRenderBuffer(
        glitch::IReferenceCounted **a1,
        int a2,
        _DWORD *a3,
        int a4)
{
  int v6; // r1
  int v8; // r2
  int v9; // r8
  glitch::IReferenceCounted *v10; // r8
  int v11; // r11
  const char *v12; // r11
  const char *v13; // r12
  glitch::IReferenceCounted *v14; // r0
  int v15; // r2
  glitch::IReferenceCounted *v16; // r0
  char *v17; // r10
  const char *v19; // r1
  unsigned int v20; // r3
  unsigned int v21; // r11
  size_t v22; // r11
  char *v23; // r0
  _BYTE *v24; // r1
  char *v25; // r9
  size_t v26; // r10
  glitch::IReferenceCounted **v27; // r10
  char s[128]; // [sp+Ch] [bp-88h] BYREF
  int v29; // [sp+8Ch] [bp-8h]

  v6 = _stack_chk_guard;
  *a1 = nullptr;
  v8 = *(_DWORD *)(a2 + 156) & 0x800;
  v29 = v6;
  v9 = a4;
  if ( v8 )
  {
    v11 = *(unsigned __int16 *)(a2 + 20 * a4 + 1198);
    if ( v11 == 39 )
    {
      if ( (unsigned __int16)a4 == 39 )
        v19 = "unknown";
      else
        v19 = *(const char **)(glitch::video::getStringsInternal(0) + 4 * a4);
      glitch::os::Printer::log("Render buffer format not supported", v19, 3);
      v10 = *a1;
    }
    else
    {
      if ( a4 != v11 )
      {
        v12 = *(const char **)(glitch::video::getStringsInternal(0) + 4 * v11);
        if ( (unsigned __int16)v9 == 39 )
          v13 = "unknown";
        else
          v13 = *(const char **)(glitch::video::getStringsInternal(0) + 4 * v9);
        snprintf(s, 0x7Fu, "using %s instead of %s", v12, v13);
        glitch::os::Printer::log("Render buffer format not supported", s, 3);
        v9 = *(unsigned __int16 *)(a2 + 20 * v9 + 1198);
      }
      v14 = (glitch::IReferenceCounted *)operator new(0x1Cu, 0);
      *((_DWORD *)v14 + 2) = v9;
      *((_DWORD *)v14 + 1) = 0;
      *(_DWORD *)v14 = off_977878;
      v10 = v14;
      *((_DWORD *)v14 + 3) = *a3;
      v15 = a3[1];
      *(_DWORD *)v14 = off_977848;
      *((_DWORD *)v14 + 4) = v15;
      *((_DWORD *)v14 + 6) = 0;
      *((_DWORD *)v14 + 5) = a2;
      *((_DWORD *)v14 + 1) = 1;
      v16 = *a1;
      *a1 = v10;
      if ( v16 )
      {
        glitch::IReferenceCounted::drop(v16);
        v10 = *a1;
      }
    }
  }
  else
  {
    v10 = nullptr;
  }
  v17 = *(char **)(a2 + 344);
  if ( v17 == *(char **)(a2 + 348) )
  {
    v20 = (int)&v17[-*(_DWORD *)(a2 + 340)] >> 2;
    if ( v20 )
      v21 = 2 * v20;
    else
      v21 = 1;
    if ( v21 > 0x3FFFFFFF || v20 > v21 )
      v22 = -4;
    else
      v22 = 4 * v21;
    v23 = (char *)GlitchAlloc(v22, 0);
    v24 = *(_BYTE **)(a2 + 340);
    v25 = v23;
    v26 = v17 - v24;
    if ( v26 )
      v27 = (glitch::IReferenceCounted **)((char *)memmove(v23, v24, v26) + v26);
    else
      v27 = (glitch::IReferenceCounted **)v23;
    *v27 = v10;
    GlitchFree(*(void **)(a2 + 340));
    *(_DWORD *)(a2 + 348) = &v25[v22];
    *(_DWORD *)(a2 + 344) = v27 + 1;
    *(_DWORD *)(a2 + 340) = v25;
  }
  else
  {
    *(_DWORD *)v17 = v10;
    *(_DWORD *)(a2 + 344) += 4;
  }
  return a1;
}


// ===== 5b5610 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(
        glitch::video::ITexture *this,
        int a2)
{
  int v2; // r4
  int v4; // r7
  int v6; // r3
  int v7; // r6
  int v8; // r4
  char v9; // r3
  GLuint v11; // r1
  int v12; // r10
  int v13; // r3
  int v14; // r4
  unsigned int v15; // r2
  char v16; // r3
  char v17; // r1
  int v18; // r6
  unsigned int v19; // r3
  __int16 v20; // r2
  int v21; // r0
  unsigned int v22; // r1
  __int16 v23; // r2

  v2 = *((_DWORD *)this + 13);
  v4 = v2 + 1056 + 32 * (*((_DWORD *)this + 14) & 3);
  if ( !*((_DWORD *)this + 21) )
  {
    *((_BYTE *)this + 63) &= ~0x10u;
    glGenTextures(1, (GLuint *)this + 21);
    v11 = *((_DWORD *)this + 21);
    if ( !v11 )
    {
      v8 = 0;
      v9 = *((_BYTE *)this + 63) | 0x10;
      *((_BYTE *)this + 63) = v9;
      goto LABEL_10;
    }
    v12 = *((_DWORD *)this + 13);
    v13 = *(_DWORD *)(v12 + 616);
    if ( *(glitch::video::ITexture **)(v4 + 4 * v13) != this )
    {
      v14 = *(_DWORD *)(v12 + 76) - 1;
      if ( v13 != v14 )
      {
        glActiveTexture(*(_DWORD *)(v12 + 76) + 33983);
        *(_DWORD *)(v12 + 616) = v14;
      }
      *(_DWORD *)(v4 + 4 * v14) = this;
      v11 = *((_DWORD *)this + 21);
    }
    glBindTexture(glitch::video::`anonymous namespace'::TextureTypeMap[*((_DWORD *)this + 14) & 3], v11);
    v15 = *((_DWORD *)this + 14);
    if ( *((unsigned __int8 *)this + 62) <= 1u )
    {
      v17 = *((_BYTE *)this + 63);
    }
    else
    {
      v16 = *((_BYTE *)this + 63);
      v17 = v16;
      if ( (v16 & 2) == 0
        || (*(_DWORD *)&glitch::video::pixel_format::detail::PFDTable[40 * ((v15 >> 4) & 0x3F)] & 8) == 0 )
      {
        v18 = (v15 >> 12) & 7;
        if ( (unsigned int)v18 <= 1 )
        {
          v22 = v15 & 0xFFFF8FFF | 0x2000;
          v23 = *((_WORD *)this + 32) | 4;
          *((_DWORD *)this + 14) = v22;
          *((_WORD *)this + 32) = v23;
          *((_BYTE *)this + 63) = v16 | 8;
          v8 = glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::update(
                 (int)this,
                 1);
        }
        else
        {
          *((_BYTE *)this + 63) = v16 | 8;
          v8 = glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::update(
                 (int)this,
                 1);
          if ( v18 == 2 )
            goto LABEL_9;
        }
        v19 = *((_DWORD *)this + 14);
        if ( v18 != ((v19 >> 12) & 7) && (*((unsigned __int8 *)this + 62) > 1u || v18 <= 1) )
        {
          v20 = *((_WORD *)this + 32) | 4;
          *((_DWORD *)this + 14) = v19 & 0xFFFF8FFF | (v18 << 12);
          *((_WORD *)this + 32) = v20;
        }
        goto LABEL_9;
      }
    }
    *((_BYTE *)this + 63) = v17 | 8;
LABEL_30:
    v8 = glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::update(
           (int)this,
           1);
    goto LABEL_9;
  }
  v6 = *(_DWORD *)(v2 + 616);
  if ( *(glitch::video::ITexture **)(v4 + 4 * v6) != this )
  {
    v7 = *(_DWORD *)(v2 + 76) - 1;
    if ( v6 != v7 )
    {
      glActiveTexture(*(_DWORD *)(v2 + 76) + 33983);
      *(_DWORD *)(v2 + 616) = v7;
    }
    if ( this != *(glitch::video::ITexture **)(v4 + 4 * v7) )
    {
      glBindTexture(
        glitch::video::`anonymous namespace'::TextureTypeMap[*((_DWORD *)this + 14) & 3],
        *((_DWORD *)this + 21));
      *(_DWORD *)(v4 + 4 * v7) = this;
    }
  }
  if ( *((_BYTE *)this + 88) )
    goto LABEL_30;
  v8 = *((_WORD *)this + 32) & 0x1FFD;
  if ( (*((_WORD *)this + 32) & 0x1FFD) == 0 )
  {
LABEL_9:
    v9 = *((_BYTE *)this + 63);
    goto LABEL_10;
  }
  v21 = glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::update(
          (int)this,
          *((unsigned __int8 *)this + 88));
  v9 = *((_BYTE *)this + 63);
  v8 = v21;
LABEL_10:
  if ( (v9 & 0x10) != 0 )
  {
    if ( !*((_DWORD *)this + 21) )
      return v8;
    (*(void (__fastcall **)(glitch::video::ITexture *))(*(_DWORD *)this + 16))(this);
    *((_BYTE *)this + 63) |= 0x10u;
    return v8;
  }
  else
  {
    if ( !a2 || !*((_DWORD *)this + 11) )
      return v8;
    glitch::video::ITexture::setData(this, (void *)(v9 & 0x10), 1, (v9 & 2) != 0);
    return v8;
  }
}


// ===== 5b5910 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,glitch::video::BufferInfo>,std::priv::_Select1st<std::pair<uint const,glitch::video::BufferInfo>>,std::priv::_MapTraitsT<std::pair<uint const,glitch::video::BufferInfo>>,std::allocator<std::pair<uint const,glitch::video::BufferInfo>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<uint const,glitch::video::BufferInfo> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) [clone] =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::video::BufferInfo>,std::priv::_Select1st<std::pair<unsigned int const,glitch::video::BufferInfo>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::video::BufferInfo>>,std::allocator<std::pair<unsigned int const,glitch::video::BufferInfo>>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        _DWORD *a4,
        int a5)
{
  _DWORD *v8; // r5
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int v12; // r1
  int v13; // r2
  int v14; // r3
  int v16; // r1
  int v17; // r2
  int v18; // r3

  if ( a2 == a3 )
  {
    v8 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,glitch::video::BufferInfo>>>::allocate();
    v8[4] = *a4;
    v12 = a4[2];
    v13 = a4[3];
    v14 = a4[4];
    v8[5] = a4[1];
    v8[6] = v12;
    v8[7] = v13;
    v8[8] = v14;
    v8[9] = a4[5];
    v8[3] = 0;
    v8[2] = 0;
    a2[2] = v8;
    a2[1] = v8;
    a2[3] = v8;
  }
  else if ( a5 || *a4 < a3[4] )
  {
    v8 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,glitch::video::BufferInfo>>>::allocate();
    v8[4] = *a4;
    v9 = a4[2];
    v10 = a4[3];
    v11 = a4[4];
    v8[5] = a4[1];
    v8[6] = v9;
    v8[7] = v10;
    v8[8] = v11;
    v8[9] = a4[5];
    v8[3] = 0;
    v8[2] = 0;
    a3[2] = v8;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v8;
  }
  else
  {
    v8 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,glitch::video::BufferInfo>>>::allocate();
    v8[4] = *a4;
    v16 = a4[2];
    v17 = a4[3];
    v18 = a4[4];
    v8[5] = a4[1];
    v8[6] = v16;
    v8[7] = v17;
    v8[8] = v18;
    v8[9] = a4[5];
    v8[3] = 0;
    v8[2] = 0;
    a3[3] = v8;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v8;
  }
  v8[1] = a3;
  std::priv::_Rb_global<bool>::_Rebalance((int)v8, a2 + 1);
  ++a2[4];
  *a1 = v8;
  return a1;
}


// ===== 5b5a64 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,glitch::video::BufferInfo>,std::priv::_Select1st<std::pair<uint const,glitch::video::BufferInfo>>,std::priv::_MapTraitsT<std::pair<uint const,glitch::video::BufferInfo>>,std::allocator<std::pair<uint const,glitch::video::BufferInfo>>>::insert_unique(std::pair<uint const,glitch::video::BufferInfo> const&) =====
int __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::video::BufferInfo>,std::priv::_Select1st<std::pair<unsigned int const,glitch::video::BufferInfo>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::video::BufferInfo>>,std::allocator<std::pair<unsigned int const,glitch::video::BufferInfo>>>::insert_unique(
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
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::video::BufferInfo>,std::priv::_Select1st<std::pair<unsigned int const,glitch::video::BufferInfo>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::video::BufferInfo>>,std::allocator<std::pair<unsigned int const,glitch::video::BufferInfo>>>::_M_insert(
      &v17,
      a2,
      v3,
      a3,
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::video::BufferInfo>,std::priv::_Select1st<std::pair<unsigned int const,glitch::video::BufferInfo>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::video::BufferInfo>>,std::allocator<std::pair<unsigned int const,glitch::video::BufferInfo>>>::_M_insert(
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


// ===== 5b5be4 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::registerBufferMap(uint,uint,uint,uint,void const*) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::registerBufferMap(
        int a1,
        unsigned int a2,
        unsigned int a3,
        unsigned int a4,
        size_t byte_count,
        void *a6)
{
  void *v10; // r10
  unsigned int v12[6]; // [sp+0h] [bp-24h] BYREF
  _BYTE v13[12]; // [sp+18h] [bp-Ch] BYREF

  v10 = LC_API_MALLOC_0(byte_count);
  memcpy(v10, a6, byte_count);
  v12[5] = (unsigned int)v10;
  v12[4] = byte_count;
  v12[1] = a2;
  v12[2] = a3;
  v12[3] = a4;
  v12[0] = a2;
  return std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::video::BufferInfo>,std::priv::_Select1st<std::pair<unsigned int const,glitch::video::BufferInfo>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::video::BufferInfo>>,std::allocator<std::pair<unsigned int const,glitch::video::BufferInfo>>>::insert_unique(
           (int)v13,
           (_DWORD *)(a1 + 2048),
           v12);
}


// ===== 5b5c40 glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::CProgrammableGLDriver(glitch::IDevice *) =====
int __fastcall glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::CProgrammableGLDriver(
        int a1,
        glitch::IDevice *a2)
{
  glitch::video::CGLSLShaderManager *v4; // r4
  _DWORD *v5; // r4
  _DWORD *v6; // r4

  v4 = (glitch::video::CGLSLShaderManager *)operator new(0x84u, 0);
  glitch::video::CGLSLShaderManager::CGLSLShaderManager(v4);
  glitch::video::CCommonGLDriverBase::CCommonGLDriverBase((glitch::video::CCommonGLDriverBase *)a1, a2, v4);
  *(_DWORD *)(a1 + 2040) = 0;
  *(_DWORD *)a1 = &off_9778C0;
  *(_DWORD *)(a1 + 2044) = 0;
  *(_DWORD *)(a1 + 2052) = 0;
  *(_BYTE *)(a1 + 2048) = 0;
  *(_DWORD *)(a1 + 2060) = a1 + 2048;
  *(_DWORD *)(a1 + 2056) = a1 + 2048;
  *(_DWORD *)(a1 + 2064) = 0;
  glitch::video::CGLSLShaderHandler::CGLSLShaderHandler((glitch::video::CGLSLShaderHandler *)(a1 + 2080));
  *(_DWORD *)(a1 + 2084) = 0;
  v5 = (_DWORD *)(a1 + 2088);
  *(_DWORD *)a1 = off_977570;
  do
  {
    *((_BYTE *)v5 + 64) = 0;
    LC_API_MEMSET_0(v5, 0, 0x40u);
    *v5 = 1065353216;
    v5[5] = 1065353216;
    v5[10] = 1065353216;
    v5[15] = 1065353216;
    *((_BYTE *)v5 + 64) = 1;
    v5 += 17;
  }
  while ( v5 != (_DWORD *)(a1 + 2292) );
  v6 = (_DWORD *)(a1 + 2292);
  do
  {
    *((_BYTE *)v6 + 64) = 0;
    LC_API_MEMSET_0(v6, 0, 0x40u);
    *v6 = 1065353216;
    v6[5] = 1065353216;
    v6[10] = 1065353216;
    v6[15] = 1065353216;
    *((_BYTE *)v6 + 64) = 1;
    v6 += 17;
  }
  while ( v6 != (_DWORD *)(a1 + 3516) );
  *(_DWORD *)(a1 + 3516) = -1;
  return a1;
}


// ===== 5b5d78 glitch::video::COpenGLES2Driver::COpenGLES2Driver(glitch::IDevice *) =====
glitch::video::COpenGLES2Driver *__fastcall glitch::video::COpenGLES2Driver::COpenGLES2Driver(
        glitch::video::COpenGLES2Driver *this,
        glitch::IDevice *a2)
{
  glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::CProgrammableGLDriver((int)this, a2);
  *(_DWORD *)this = off_977B20;
  return this;
}


// ===== 5b5dac glitch::video::createOpenGLES2Driver(glitch::IDevice *) =====
glitch::video::COpenGLES2Driver *__fastcall glitch::video::createOpenGLES2Driver(
        glitch::video *this,
        glitch::IDevice *a2)
{
  glitch::video::COpenGLES2Driver *v3; // r4

  v3 = (glitch::video::COpenGLES2Driver *)operator new(0xDF4u, 0);
  glitch::video::COpenGLES2Driver::COpenGLES2Driver(v3, this);
  if ( glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::genericDriverInit((int)v3) )
    return v3;
  glitch::IReferenceCounted::drop(v3);
  return nullptr;
}


// ===== 5b5e00 glitch::video::COpenGLES2Driver::COpenGLES2Driver(glitch::IDevice *) =====
glitch::video::COpenGLES2Driver *__fastcall glitch::video::COpenGLES2Driver::COpenGLES2Driver(
        glitch::video::COpenGLES2Driver *this,
        glitch::IDevice *a2)
{
  glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::CProgrammableGLDriver((int)this, a2);
  *(_DWORD *)this = off_977B20;
  return this;
}


// ===== 5b5e34 glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::CProgrammableGLDriver(glitch::IDevice *) =====
int __fastcall glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::CProgrammableGLDriver(
        int a1,
        glitch::IDevice *a2)
{
  glitch::video::CGLSLShaderManager *v4; // r4
  _DWORD *v5; // r4
  _DWORD *v6; // r4

  v4 = (glitch::video::CGLSLShaderManager *)operator new(0x84u, 0);
  glitch::video::CGLSLShaderManager::CGLSLShaderManager(v4);
  glitch::video::CCommonGLDriverBase::CCommonGLDriverBase((glitch::video::CCommonGLDriverBase *)a1, a2, v4);
  *(_DWORD *)(a1 + 2040) = 0;
  *(_DWORD *)a1 = &off_9778C0;
  *(_DWORD *)(a1 + 2044) = 0;
  *(_DWORD *)(a1 + 2052) = 0;
  *(_BYTE *)(a1 + 2048) = 0;
  *(_DWORD *)(a1 + 2060) = a1 + 2048;
  *(_DWORD *)(a1 + 2056) = a1 + 2048;
  *(_DWORD *)(a1 + 2064) = 0;
  glitch::video::CGLSLShaderHandler::CGLSLShaderHandler((glitch::video::CGLSLShaderHandler *)(a1 + 2080));
  *(_DWORD *)(a1 + 2084) = 0;
  v5 = (_DWORD *)(a1 + 2088);
  *(_DWORD *)a1 = off_977570;
  do
  {
    *((_BYTE *)v5 + 64) = 0;
    LC_API_MEMSET_0(v5, 0, 0x40u);
    *v5 = 1065353216;
    v5[5] = 1065353216;
    v5[10] = 1065353216;
    v5[15] = 1065353216;
    *((_BYTE *)v5 + 64) = 1;
    v5 += 17;
  }
  while ( v5 != (_DWORD *)(a1 + 2292) );
  v6 = (_DWORD *)(a1 + 2292);
  do
  {
    *((_BYTE *)v6 + 64) = 0;
    LC_API_MEMSET_0(v6, 0, 0x40u);
    *v6 = 1065353216;
    v6[5] = 1065353216;
    v6[10] = 1065353216;
    v6[15] = 1065353216;
    *((_BYTE *)v6 + 64) = 1;
    v6 += 17;
  }
  while ( v6 != (_DWORD *)(a1 + 3516) );
  *(_DWORD *)(a1 + 3516) = -1;
  return a1;
}


// ===== 5b5f6c glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::createTextureImpl(char const*,glitch::video::STextureDesc const&) =====
_DWORD *__fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::createTextureImpl(
        _DWORD *a1,
        int a2,
        const char *a3,
        int *a4)
{
  int *v4; // r4
  int v9; // r0
  int v10; // r1
  int v11; // r2
  int v12; // r3
  int v13; // r1
  int v14; // r2
  int v15; // r3
  int v16; // r7
  _BOOL4 v17; // r9
  const char *v18; // r3
  int v19; // r2
  int v20; // r11
  int v21; // r7
  int v22; // r0
  const char *v23; // r3
  const char *v24; // r7
  int v25; // r0
  const char *v26; // r12
  _DWORD *v27; // r7
  const char *v29; // r3
  const char *v30; // r3
  const char *v31; // r3
  int StringsInternal; // r0
  const char *v33; // [sp+14h] [bp-28h]
  int v34; // [sp+18h] [bp-24h] BYREF
  int v35; // [sp+1Ch] [bp-20h]
  int v36; // [sp+20h] [bp-1Ch]
  int v37; // [sp+24h] [bp-18h]
  int v38; // [sp+28h] [bp-14h]
  int v39; // [sp+2Ch] [bp-10h]
  int v40; // [sp+30h] [bp-Ch]
  __int16 v41; // [sp+34h] [bp-8h]
  char v42; // [sp+36h] [bp-6h]

  v4 = a4;
  v9 = *a4;
  v10 = a4[1];
  v11 = a4[2];
  v12 = a4[3];
  v4 += 4;
  v34 = v9;
  v35 = v10;
  v36 = v11;
  v37 = v12;
  v13 = v4[1];
  v14 = v4[2];
  v15 = v4[3];
  v38 = *v4;
  v39 = v13;
  v40 = v14;
  v16 = v38;
  v41 = v15;
  v42 = BYTE2(v15);
  if ( ((v38 - 1) & v38) != 0 || ((v39 - 1) & v39) != 0 )
    v17 = 0;
  else
    v17 = v34 != 1 || ((v40 - 1) & v40) == 0;
  if ( (*(_DWORD *)(a2 + 2028) & 8) != 0 && v34 && v34 != 3 && !v17 )
  {
    if ( (unsigned __int16)v34 == 255 )
    {
      v18 = "unknown";
    }
    else
    {
      v16 = v38;
      v18 = *(const char **)(glitch::video::getStringsInternal(0) + 4 * v34);
    }
    glitch::os::Printer::logf(3, "creating %s: %s NPOT (%dx%dx%u) texture not supported", a3, v18, v16, v39, v40);
    *a1 = 0;
    return a1;
  }
  if ( (*(_DWORD *)&glitch::video::pixel_format::detail::PFDTable[40 * v35] & 0x30) != 0 && v34 && v34 != 2 )
  {
    if ( (unsigned __int16)v35 == 39 )
      v29 = "unknown";
    else
      v29 = *(const char **)(glitch::video::getStringsInternal(0) + 4 * v35);
    glitch::os::Printer::logf(3, "creating %s: %s formats can only be used with 2D textures", a3, v29);
    *a1 = 0;
    return a1;
  }
  v19 = HIBYTE(v41);
  if ( HIBYTE(v41) )
    v20 = *(unsigned __int16 *)(a2 + 20 * v35 + 1198);
  else
    v20 = *(unsigned __int16 *)(a2 + 20 * v35 + 1196);
  v21 = a4[1];
  v35 = v20;
  if ( v20 == v21 )
  {
LABEL_23:
    switch ( v36 )
    {
      case 2:
        StringsInternal = glitch::video::getStringsInternal(0);
        glitch::os::Printer::logf(3, "creating %s: %s layout not supported", a3, *(const char **)(StringsInternal + 8));
        *a1 = 0;
        return a1;
      case 3:
        if ( !v17 )
        {
          glitch::os::Printer::logf(
            v36,
            "creating %s: swizzled textures must have power-of-two size (provided: %dx%dx%u)",
            a3,
            v38,
            v39,
            v40);
          *a1 = 0;
          return a1;
        }
        break;
      case 0:
LABEL_26:
        v27 = operator new(0x5Cu, 0);
        glitch::video::CCommonGLDriverBase::CTextureBase::CTextureBase(v27, a3, a2, &v34);
        *v27 = &off_977798;
        *a1 = v27;
        ++v27[1];
        return a1;
      default:
        if ( (unsigned __int16)v36 == 255 )
        {
          v31 = "unknown";
          goto LABEL_48;
        }
        break;
    }
    v31 = *(const char **)(glitch::video::getStringsInternal(0) + 4 * v36);
LABEL_48:
    glitch::os::Printer::logf(2, "creating %s: %s layout not supported (will convert to linear)", a3, v31);
    v36 = 0;
    goto LABEL_26;
  }
  if ( v20 != 39 )
  {
    if ( (unsigned __int16)v21 == 39 )
    {
      v23 = "unknown";
    }
    else
    {
      v22 = glitch::video::getStringsInternal(0);
      v19 = HIBYTE(v41);
      v23 = *(const char **)(v22 + 4 * v21);
      v20 = v35;
    }
    if ( v19 )
      v24 = "render target";
    else
      v24 = "texture";
    if ( (unsigned __int16)v20 == 39 )
    {
      v26 = "unknown";
    }
    else
    {
      v33 = v23;
      v25 = glitch::video::getStringsInternal(0);
      v23 = v33;
      v26 = *(const char **)(v25 + 4 * v20);
    }
    glitch::os::Printer::logf(
      2,
      "creating %s: %s is not a supported %s pixel format; using %s instead",
      a3,
      v23,
      v24,
      v26);
    goto LABEL_23;
  }
  if ( (unsigned __int16)v21 == 39 )
    v30 = "unknown";
  else
    v30 = *(const char **)(glitch::video::getStringsInternal(0) + 4 * v21);
  glitch::os::Printer::logf(3, "creating %s: pixel format %s not supported", a3, v30);
  *a1 = 0;
  return a1;
}


// ===== 5b6374 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::update(void) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::update(
        int a1)
{
  int v1; // r5
  int v2; // r6
  int result; // r0
  int v5; // r3
  char v6; // r2
  char v7; // r2

  v1 = *(_DWORD *)(a1 + 24);
  v2 = *(_DWORD *)(a1 + 20) + 4 * (*(unsigned __int8 *)(a1 + 16) + 148);
  if ( v1 != *(_DWORD *)(v2 + 4) )
  {
    glBindBuffer();
    *(_DWORD *)(v2 + 4) = v1;
  }
  if ( (*(_BYTE *)(a1 + 18) & 2) != 0 )
  {
    glGetError();
    glBufferData();
    result = glGetError();
    if ( !result || (result = glDeleteBuffers(), v5 = *(unsigned __int8 *)(a1 + 17), *(_DWORD *)(a1 + 24) = 0, v5 == 4) )
    {
      *(_BYTE *)(a1 + 18) &= ~2u;
    }
    else
    {
      v6 = *(_BYTE *)(a1 + 18);
      if ( *(_DWORD *)(a1 + 8) )
        v7 = v6 | 0x12;
      else
        v7 = v6 | 0x10;
      *(_BYTE *)(a1 + 18) = v7;
      if ( (v7 & 8) != 0 )
        result = (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 16))(a1);
      *(_BYTE *)(a1 + 17) = 4;
      *(_BYTE *)(a1 + 18) &= ~2u;
    }
  }
  else
  {
    result = glBufferSubData();
    *(_BYTE *)(a1 + 18) &= ~2u;
  }
  return result;
}


// ===== 5b64c0 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::updateBinding(glitch::video::IBuffer *) =====
_BYTE *__fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::updateBinding(
        int a1,
        _BYTE *a2)
{
  char v3; // r1

  if ( !a2 )
    return a2;
  v3 = a2[18];
  if ( (v3 & 2) == 0 )
    return a2;
  if ( (v3 & 8) == 0 )
  {
    if ( a2[17] != 4 )
      (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)a2 + 12))(a2);
    return a2;
  }
  glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::update((int)a2);
  return a2;
}


// ===== 5b6514 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setBuffer(glitch::video::IBuffer *) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setBuffer(
        int a1,
        _BYTE *a2)
{
  _BYTE *updated; // r0
  int v4; // r6
  int v5; // r4
  int v6; // r5

  updated = glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::updateBinding(
              a1,
              a2);
  if ( !updated )
    return 0;
  if ( updated[17] == 4 )
    v5 = 0;
  else
    v5 = *((_DWORD *)updated + 6);
  v6 = a1 + 4 * ((unsigned __int8)updated[16] + 148);
  if ( updated[17] == 4 )
    v4 = *((_DWORD *)updated + 2);
  else
    v4 = 0;
  if ( v5 != *(_DWORD *)(v6 + 4) )
  {
    glBindBuffer();
    *(_DWORD *)(v6 + 4) = v5;
  }
  return v4;
}


// ===== 5b6584 glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(glitch::video::CGLSLShader const*,glitch::video::CVertexStreams const*,uchar const*) =====
int __fastcall glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(
        int a1,
        int a2,
        int a3,
        int a4)
{
  int v4; // r4
  int v5; // r8
  int v6; // r7
  int v7; // r12
  __int16 v8; // r6
  int v9; // r3
  int v10; // r5
  int result; // r0
  int v12; // r5
  char i; // r4
  int v14; // r6
  int v15; // [sp+Ch] [bp-20h]

  v4 = *(_DWORD *)(a2 + 36);
  v5 = v4 + 8 * *(unsigned __int8 *)(a2 + 60);
  if ( v4 == v5 )
  {
    v6 = 0;
  }
  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      while ( 1 )
      {
        v8 = *(_WORD *)(v4 + 6);
        v9 = *(unsigned __int8 *)(a4 + *(unsigned __int16 *)(v4 + 4));
        if ( v9 != 255 )
        {
          v10 = *(_DWORD *)(a3 + 20 + 16 * v9);
          if ( v10 )
          {
            if ( *(_BYTE *)(v10 + 17) != 4 || *(_DWORD *)(v10 + 8) )
              break;
          }
        }
        v4 += 8;
        v15 = v7;
        glVertexAttrib4f();
        v7 = v15;
        if ( v4 == v5 )
          goto LABEL_12;
      }
      if ( v7 != v10 )
        glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setBuffer(
          a1,
          (_BYTE *)v10);
      v4 += 8;
      glVertexAttribPointer();
      v6 |= 1 << v8;
      v7 = v10;
    }
    while ( v4 != v5 );
  }
LABEL_12:
  result = a1;
  v12 = v6 ^ *(_DWORD *)(a1 + 624);
  if ( v12 )
  {
    for ( i = 0; ; ++i )
    {
      v14 = 1 << i;
      if ( ((1 << i) & v12) != 0 )
      {
        if ( (v14 & v6) != 0 )
          result = glEnableVertexAttribArray();
        else
          result = glDisableVertexAttribArray();
        v12 &= ~v14;
      }
      if ( !v12 )
        break;
    }
  }
  *(_DWORD *)(a1 + 624) = v6;
  return result;
}


// ===== 5b6768 glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::SDrawSetup::SDrawSetup(glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>*,glitch::video::CVertexStreams const*,glitch::video::CPrimitiveStream const&,uchar const*,uint) =====
int *__fastcall glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::SDrawSetup::SDrawSetup(
        int *a1,
        int a2,
        int a3,
        int a4,
        int a5)
{
  *a1 = a2;
  glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(
    a2,
    *(_DWORD *)(a2 + 244),
    a3,
    a5);
  return a1;
}


// ===== 5b678c glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::SDrawSetup::SDrawSetup(glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>*,glitch::video::CVertexStreams const*,glitch::video::CPrimitiveStream const&,uchar const*,uint) =====
int *__fastcall glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::SDrawSetup::SDrawSetup(
        int *a1,
        int a2,
        int a3,
        int a4,
        int a5)
{
  *a1 = a2;
  glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(
    a2,
    *(_DWORD *)(a2 + 244),
    a3,
    a5);
  return a1;
}


// ===== 5b67b0 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::bindImpl(bool) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::bindImpl(
        glitch::video::IBuffer *this,
        int a2)
{
  int v4; // r8
  char v5; // r3
  int v6; // r10
  int v7; // r3
  char v8; // r2
  char v9; // r2

  if ( !*((_DWORD *)this + 6) )
  {
    if ( !glitch::video::`anonymous namespace'::BufferTypeMap[*((unsigned __int8 *)this + 16)] )
      return;
    glGenBuffers();
    v4 = *((_DWORD *)this + 6);
    if ( !v4 )
      return;
    if ( *((_DWORD *)this + 3) )
    {
      v6 = *((_DWORD *)this + 5) + 4 * (*((unsigned __int8 *)this + 16) + 148);
      if ( v4 != *(_DWORD *)(v6 + 4) )
      {
        glBindBuffer();
        *(_DWORD *)(v6 + 4) = v4;
      }
      glGetError();
      glBufferData();
      (*(void (__fastcall **)(_DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD))(**((_DWORD **)this + 5) + 72))(
        *((_DWORD *)this + 5),
        *((_DWORD *)this + 6),
        glitch::video::`anonymous namespace'::BufferTypeMap[*((unsigned __int8 *)this + 16)],
        glitch::video::`anonymous namespace'::BufferUsageMap[*((unsigned __int8 *)this + 17)],
        *((_DWORD *)this + 3),
        *((_DWORD *)this + 2));
      if ( glGetError() )
      {
        glDeleteBuffers();
        v7 = *((unsigned __int8 *)this + 17);
        *((_DWORD *)this + 6) = 0;
        if ( v7 != 4 )
        {
          v8 = *((_BYTE *)this + 18);
          if ( *((_DWORD *)this + 2) )
            v9 = v8 | 0x12;
          else
            v9 = v8 | 0x10;
          *((_BYTE *)this + 18) = v9;
          if ( (*((_BYTE *)this + 18) & 8) != 0 )
            (*(void (__fastcall **)(glitch::video::IBuffer *))(*(_DWORD *)this + 16))(this);
          *((_BYTE *)this + 17) = 4;
        }
        return;
      }
      if ( a2 )
        glitch::video::IBuffer::reset(this, *((_DWORD *)this + 3), nullptr, 1);
      v5 = *((_BYTE *)this + 18) & 0xFD;
      *((_BYTE *)this + 18) = v5;
    }
    else
    {
      v5 = *((_BYTE *)this + 18);
    }
    *((_BYTE *)this + 18) = v5 | 8;
    return;
  }
  if ( (*((_BYTE *)this + 18) & 2) != 0 )
  {
    glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::update((int)this);
    if ( !a2 )
      return;
  }
  else if ( !a2 )
  {
    return;
  }
  if ( *((_DWORD *)this + 2) )
  {
    glitch::video::IBuffer::reset(this, *((_DWORD *)this + 3), nullptr, 1);
    *((_BYTE *)this + 18) &= ~2u;
  }
}


// ===== 5b69c0 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::restoreRenderState(void) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::restoreRenderState(
        int a1)
{
  int v2; // r2
  GLsizei height; // [sp+10h] [bp-14h] BYREF
  GLsizei width; // [sp+14h] [bp-10h] BYREF
  GLint y; // [sp+18h] [bp-Ch] BYREF
  GLint x[2]; // [sp+1Ch] [bp-8h] BYREF

  if ( *(_BYTE *)(a1 + 452) )
  {
    glEnable(0xBE2u);
    if ( (*(_DWORD *)(a1 + 156) & 0x40000) == 0 )
      goto LABEL_3;
  }
  else
  {
    glDisable(0xBE2u);
    if ( (*(_DWORD *)(a1 + 156) & 0x40000) == 0 )
      goto LABEL_3;
  }
  glBlendEquation(glitch::video::`anonymous namespace'::BlendEquationMap[*(_DWORD *)(a1 + 508)]);
LABEL_3:
  glBlendFunc(
    glitch::video::`anonymous namespace'::BlendFactorMap[(unsigned __int8)*(_DWORD *)(a1 + 512)],
    glitch::video::`anonymous namespace'::BlendFactorMap[(unsigned __int8)BYTE1(*(_DWORD *)(a1 + 512))]);
  glColorMask(*(_BYTE *)(a1 + 492), *(_BYTE *)(a1 + 493), *(_BYTE *)(a1 + 494), *(_BYTE *)(a1 + 495));
  glClearColor(
    (float)*(unsigned __int8 *)(a1 + 520) * 0.0039216,
    (float)*(unsigned __int8 *)(a1 + 521) * 0.0039216,
    (float)*(unsigned __int8 *)(a1 + 522) * 0.0039216,
    (float)*(unsigned __int8 *)(a1 + 523) * 0.0039216);
  if ( *(_BYTE *)(a1 + 453) )
    glEnable(0xB44u);
  else
    glDisable(0xB44u);
  glCullFace(glitch::video::`anonymous namespace'::FaceCullingMap[*(_DWORD *)(a1 + 472)]);
  v2 = *(_DWORD *)(a1 + 476);
  if ( *(_BYTE *)(a1 + 1184) )
    v2 = 1 - v2;
  glFrontFace(glitch::video::`anonymous namespace'::BlendFactorMap[v2 + 39]);
  if ( *(_BYTE *)(a1 + 454) )
    glEnable(0xB71u);
  else
    glDisable(0xB71u);
  glDepthFunc(glitch::video::`anonymous namespace'::CompareFuncMap[*(_DWORD *)(a1 + 480)]);
  glDepthMask(*(_BYTE *)(a1 + 455));
  glClearDepthf();
  glDepthRangef();
  if ( *(_BYTE *)(a1 + 456) )
    glEnable(0xBD0u);
  else
    glDisable(0xBD0u);
  glLineWidth(*(GLfloat *)(a1 + 536));
  if ( *(_BYTE *)(a1 + 460) )
    glEnable(0x8037u);
  else
    glDisable(0x8037u);
  glPolygonOffset(*(GLfloat *)(a1 + 544), *(GLfloat *)(a1 + 548));
  if ( *(_BYTE *)(a1 + 464) )
    glEnable(0x809Eu);
  else
    glDisable(0x809Eu);
  if ( *(_BYTE *)(a1 + 465) )
    glEnable(0x80A0u);
  else
    glDisable(0x80A0u);
  glSampleCoverage(*(GLclampf *)(a1 + 552), *(_BYTE *)(a1 + 466));
  if ( *(_BYTE *)(a1 + 467) )
    glEnable(0xC11u);
  else
    glDisable(0xC11u);
  glitch::video::CCommonGLDriverBase::fixUpScreenArea(a1, a1 + 556, x, &y, &width, &height, 1, 0);
  glScissor(x[0], y, width, height);
  if ( *(_BYTE *)(a1 + 468) )
    glEnable(0xB90u);
  else
    glDisable(0xB90u);
  glBindBuffer();
  return glBindBuffer();
}


// ===== 5b6ccc glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::restoreShadowState(void) =====
void __fastcall glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::restoreShadowState(int a1)
{
  int v2; // r3
  int v3; // r8
  unsigned int v4; // r6
  int v5; // r4
  int v6; // r8
  int v7; // r7
  int v8; // r6
  unsigned int i; // r4
  unsigned int v10; // r1
  int v11; // r2
  int v12; // r3
  int v13; // r4

  glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::restoreRenderState(a1);
  if ( !*(_DWORD *)(a1 + 244) )
    goto LABEL_10;
  glUseProgram();
  v2 = *(_DWORD *)(a1 + 2084);
  if ( v2 > 31 )
  {
    v3 = 32;
    v4 = 32;
    goto LABEL_4;
  }
  v4 = (unsigned __int16)v2;
  if ( (_WORD)v2 )
  {
    v3 = (unsigned __int16)v2;
LABEL_4:
    v5 = 0;
    do
    {
      while ( (*(_DWORD *)(a1 + 624) & (1 << v5)) != 0 )
      {
        ++v5;
        glEnableVertexAttribArray();
        if ( v4 <= (unsigned __int16)v5 )
          goto LABEL_8;
      }
      ++v5;
      glDisableVertexAttribArray();
    }
    while ( v4 > (unsigned __int16)v5 );
LABEL_8:
    v2 = *(_DWORD *)(a1 + 2084);
    goto LABEL_9;
  }
  v3 = 0;
LABEL_9:
  if ( v3 < v2 )
  {
    LOWORD(v13) = v4;
    do
    {
      glDisableVertexAttribArray();
      v13 = (unsigned __int16)(v13 + 1);
    }
    while ( v13 < *(_DWORD *)(a1 + 2084) );
  }
LABEL_10:
  v6 = 1;
  v7 = 0;
  do
  {
    v8 = *(_DWORD *)(a1 + 76);
    if ( v8 )
    {
      for ( i = 0; i != v8; ++i )
      {
        v10 = i;
        glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setTexture(
          (_DWORD *)a1,
          v10,
          0,
          v7);
      }
    }
    v7 = v6++;
  }
  while ( v6 != 5 );
  v11 = *(_DWORD *)(a1 + 236);
  if ( v11 )
  {
    v12 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v11 + 4) + 24) + 12 * *(unsigned __int8 *)(a1 + 248) + 8);
    glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitCurrentMaterialParametersAux<glitch::video::CMaterial>(
      (const glitch::video::IVideoDriver *)a1,
      *(_DWORD *)(a1 + 244),
      v11,
      *(unsigned __int16 **)(v12 + 40),
      (unsigned __int16 *)(*(_DWORD *)(v12 + 40) + 4 * *(unsigned __int16 *)(v12 + 44)));
  }
}


// ===== 5b6e20 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setStencilTestEnable(bool) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setStencilTestEnable(
        _BYTE *a1,
        int a2)
{
  if ( (unsigned __int8)a1[468] != a2 )
  {
    (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)a1 + 508))(a1);
    if ( a2 )
    {
      glEnable(0xB90u);
      a1[468] = a2;
    }
    else
    {
      glDisable(0xB90u);
      a1[468] = 0;
    }
  }
}


// ===== 5b6e6c glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setScissorEnable(bool) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setScissorEnable(
        _BYTE *a1,
        int a2)
{
  if ( (unsigned __int8)a1[467] != a2 )
  {
    (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)a1 + 508))(a1);
    if ( a2 )
    {
      glEnable(0xC11u);
      a1[467] = a2;
    }
    else
    {
      glDisable(0xC11u);
      a1[467] = 0;
    }
  }
}


// ===== 5b6eb8 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setSampleCoverageEnable(bool) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setSampleCoverageEnable(
        _BYTE *a1,
        int a2)
{
  if ( (unsigned __int8)a1[465] != a2 )
  {
    (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)a1 + 508))(a1);
    if ( a2 )
    {
      glEnable(0x80A0u);
      a1[465] = a2;
    }
    else
    {
      glDisable(0x80A0u);
      a1[465] = 0;
    }
  }
}


// ===== 5b6f04 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setSampleAlphaToCoverageEnable(bool) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setSampleAlphaToCoverageEnable(
        _BYTE *a1,
        int a2)
{
  if ( (unsigned __int8)a1[464] != a2 )
  {
    (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)a1 + 508))(a1);
    if ( a2 )
    {
      glEnable(0x809Eu);
      a1[464] = a2;
    }
    else
    {
      glDisable(0x809Eu);
      a1[464] = 0;
    }
  }
}


// ===== 5b6f50 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setPolygonOffsetFillEnable(bool) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setPolygonOffsetFillEnable(
        _BYTE *a1,
        int a2)
{
  if ( (unsigned __int8)a1[460] != a2 )
  {
    (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)a1 + 508))(a1);
    if ( a2 )
    {
      glEnable(0x8037u);
      a1[460] = a2;
    }
    else
    {
      glDisable(0x8037u);
      a1[460] = 0;
    }
  }
}


// ===== 5b6f9c glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setDitherEnable(bool) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setDitherEnable(
        _BYTE *a1,
        int a2)
{
  if ( (unsigned __int8)a1[456] != a2 )
  {
    (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)a1 + 508))(a1);
    if ( a2 )
    {
      glEnable(0xBD0u);
      a1[456] = a2;
    }
    else
    {
      glDisable(0xBD0u);
      a1[456] = 0;
    }
  }
}


// ===== 5b6fe8 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setDepthTestEnable(bool) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setDepthTestEnable(
        _BYTE *a1,
        int a2)
{
  if ( (unsigned __int8)a1[454] != a2 )
  {
    (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)a1 + 508))(a1);
    if ( a2 )
    {
      glEnable(0xB71u);
      a1[454] = a2;
    }
    else
    {
      glDisable(0xB71u);
      a1[454] = 0;
    }
  }
}


// ===== 5b7034 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setCullFaceEnable(bool) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setCullFaceEnable(
        _BYTE *a1,
        int a2)
{
  if ( (unsigned __int8)a1[453] != a2 )
  {
    (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)a1 + 508))(a1);
    if ( a2 )
    {
      glEnable(0xB44u);
      a1[453] = a2;
    }
    else
    {
      glDisable(0xB44u);
      a1[453] = 0;
    }
  }
}


// ===== 5b7080 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setBlendEnable(bool) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setBlendEnable(
        _BYTE *a1,
        int a2)
{
  if ( (unsigned __int8)a1[452] != a2 )
  {
    (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)a1 + 508))(a1);
    if ( a2 )
    {
      glEnable(0xBE2u);
      a1[452] = a2;
    }
    else
    {
      glDisable(0xBE2u);
      a1[452] = 0;
    }
  }
}


// ===== 5b70cc glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateNonGrouped<glitch::video::detail::renderpass::SRenderState>(glitch::video::detail::renderpass::SRenderState const&) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateNonGrouped<glitch::video::detail::renderpass::SRenderState>(
        int a1,
        int a2)
{
  unsigned int v3; // r0
  int v5; // r6
  int v6; // r2
  int v7; // r0
  float v8; // r6
  unsigned int v9; // r3
  int v10; // r2
  int v11; // r2
  int v12; // r3

  v3 = *(_DWORD *)(a2 + 4);
  v5 = (v3 >> 18) & 1;
  if ( v5 != *(_DWORD *)(a1 + 476) )
  {
    if ( *(_BYTE *)(a1 + 1184) )
      v6 = 1 - v5;
    else
      v6 = (v3 >> 18) & 1;
    glFrontFace(glitch::video::`anonymous namespace'::BlendFactorMap[v6 + 39]);
    *(_DWORD *)(a1 + 476) = v5;
    v3 = *(_DWORD *)(a2 + 4);
  }
  v7 = (v3 >> 20) & 1;
  if ( *(unsigned __int8 *)(a1 + 455) != v7 )
  {
    *(_BYTE *)(a1 + 455) = v7;
    glDepthMask(v7);
  }
  v8 = *(float *)(a2 + 12);
  if ( v8 != *(float *)(a1 + 536) )
  {
    *(float *)(a1 + 536) = v8;
    glLineWidth(v8);
  }
  if ( *(float *)(a2 + 16) != *(float *)(a1 + 540) )
    *(_DWORD *)(a1 + 540) = *(_DWORD *)(a2 + 16);
  v9 = *(_DWORD *)(a2 + 4);
  v10 = (v9 >> 12) & 3;
  if ( v10 != *(_DWORD *)(a1 + 484) )
  {
    *(_DWORD *)(a1 + 484) = v10;
    v9 = *(_DWORD *)(a2 + 4);
  }
  v11 = (unsigned __int16)v9 >> 14;
  if ( v11 != *(_DWORD *)(a1 + 488) )
  {
    *(_DWORD *)(a1 + 488) = v11;
    v9 = *(_DWORD *)(a2 + 4);
  }
  v12 = HIBYTE(v9) & 1;
  if ( *(unsigned __int8 *)(a1 + 464) != v12 )
  {
    *(_BYTE *)(a1 + 464) = v12;
    if ( v12 )
      glEnable(0x809Eu);
    else
      glDisable(0x809Eu);
  }
}


// ===== 5b71d8 glitch::video::detail::apply<true,glitch::video::detail::renderpass::SRenderState,glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>>(glitch::video::detail::renderpass::SRenderState const&,glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet> *) =====
void __fastcall glitch::video::detail::apply<true,glitch::video::detail::renderpass::SRenderState,glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>>(
        int *a1,
        int a2)
{
  unsigned int v2; // r3
  int v5; // r6
  int v6; // r6
  int v7; // r6
  int v8; // r6

  v2 = a1[1];
  if ( (v2 & 0x10000) != 0 )
  {
    glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateBlend<glitch::video::detail::renderpass::SRenderState>(
      a2,
      a1);
    v2 = a1[1];
    v5 = (v2 >> 17) & 1;
    if ( !v5 )
      goto LABEL_5;
  }
  else
  {
    if ( *(_BYTE *)(a2 + 452) )
    {
      glDisable(0xBE2u);
      *(_BYTE *)(a2 + 452) = 0;
      v2 = a1[1];
    }
    v5 = (v2 >> 17) & 1;
    if ( !v5 )
    {
LABEL_5:
      if ( *(_BYTE *)(a2 + 453) )
      {
        glDisable(0xB44u);
        *(_BYTE *)(a2 + 453) = v5;
        v2 = a1[1];
      }
      v6 = (v2 >> 19) & 1;
      if ( !v6 )
        goto LABEL_8;
LABEL_27:
      glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateDepthTest<glitch::video::detail::renderpass::SRenderState>(
        a2,
        a1);
      v2 = a1[1];
      goto LABEL_10;
    }
  }
  glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateCullFace<glitch::video::detail::renderpass::SRenderState>(
    a2,
    a1);
  v2 = a1[1];
  v6 = (v2 >> 19) & 1;
  if ( v6 )
    goto LABEL_27;
LABEL_8:
  if ( *(_BYTE *)(a2 + 454) )
  {
    glDisable(0xB71u);
    *(_BYTE *)(a2 + 454) = v6;
    v2 = a1[1];
  }
LABEL_10:
  if ( (v2 & 0x200000) != 0 || (v2 & 0x400000) != 0 || ((v2 >> 23) & 1) != 0 )
  {
    glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStatePolygonOffset<glitch::video::detail::renderpass::SRenderState>(
      a2,
      (int)a1);
    v2 = a1[1];
    goto LABEL_12;
  }
  if ( !*(_DWORD *)(a2 + 460) )
  {
LABEL_12:
    v7 = (v2 >> 25) & 1;
    if ( v7 )
      goto LABEL_23;
LABEL_13:
    if ( *(_BYTE *)(a2 + 465) )
    {
      glDisable(0x80A0u);
      *(_BYTE *)(a2 + 465) = v7;
      v2 = a1[1];
    }
    v8 = (v2 >> 27) & 1;
    if ( v8 )
      goto LABEL_24;
    goto LABEL_16;
  }
  glDisable(0x8037u);
  *(_DWORD *)(a2 + 460) = 0;
  v2 = a1[1];
  v7 = (v2 >> 25) & 1;
  if ( !v7 )
    goto LABEL_13;
LABEL_23:
  glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateSampleCoverage<glitch::video::detail::renderpass::SRenderState>(
    a2,
    (int)a1);
  v8 = ((unsigned int)a1[1] >> 27) & 1;
  if ( v8 )
  {
LABEL_24:
    glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateStencil<glitch::video::detail::renderpass::SRenderState>(
      a2,
      a1);
    goto LABEL_18;
  }
LABEL_16:
  if ( *(_BYTE *)(a2 + 468) )
  {
    glDisable(0xB90u);
    *(_BYTE *)(a2 + 468) = v8;
  }
LABEL_18:
  glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateNonGrouped<glitch::video::detail::renderpass::SRenderState>(
    a2,
    (int)a1);
}


// ===== 5b739c glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::commitMaterialRenderer(glitch::video::CMaterialRenderer *) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::commitMaterialRenderer(
        int a1,
        int a2)
{
  glitch::video::detail::apply<true,glitch::video::detail::renderpass::SRenderState,glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>>(
    *(int **)(*(_DWORD *)(a2 + 24) + 12 * *(unsigned __int8 *)(a1 + 248) + 8),
    a1);
  *(_BYTE *)(*(_DWORD *)(*(_DWORD *)(a2 + 24) + 12 * *(unsigned __int8 *)(a1 + 248) + 8) + 48) = 0;
}


// ===== 5b73e0 glitch::video::detail::applyRenderStates<glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>>(glitch::video::CMaterial *,uchar,uchar,glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet> *) =====
void __fastcall glitch::video::detail::applyRenderStates<glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>>(
        int a1,
        int a2,
        int a3,
        int a4)
{
  int v4; // r12
  char v5; // r5
  int v7; // r6
  int v8; // r8
  int v9; // r2
  int v10; // r2

  v4 = *(_DWORD *)(a4 + 240);
  v5 = a2;
  v7 = *(_DWORD *)(a1 + 4);
  if ( !v4 || v7 != *(_DWORD *)(v4 + 4) )
  {
    v8 = 12 * a2;
    v9 = *(_DWORD *)(*(_DWORD *)(v7 + 24) + 12 * a2 + 8);
LABEL_4:
    glitch::video::detail::apply<true,glitch::video::detail::renderpass::SRenderState,glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>>(
      (int *)(v9 + 52 * a3),
      a4);
    *(_BYTE *)(*(_DWORD *)(*(_DWORD *)(v7 + 24) + v8 + 8) + 48) = 0;
    goto LABEL_5;
  }
  v8 = 12 * a2;
  v10 = *(_DWORD *)(v7 + 24) + 12 * a2;
  if ( *(unsigned __int8 *)(v10 + 4) > 1u )
  {
    v9 = *(_DWORD *)(v10 + 8);
    goto LABEL_4;
  }
  v9 = *(_DWORD *)(v10 + 8);
  if ( *(_BYTE *)(v9 + 48)
    || (unsigned __int8)glitch::video::detail::applyRenderStates<glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>>(glitch::video::CMaterial *,unsigned char,unsigned char,glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet> *)::lastPass != a3
    || (unsigned __int8)glitch::video::detail::applyRenderStates<glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>>(glitch::video::CMaterial *,unsigned char,unsigned char,glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet> *)::lastTechnique != a2 )
  {
    goto LABEL_4;
  }
LABEL_5:
  glitch::video::detail::applyRenderStates<glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>>(glitch::video::CMaterial *,unsigned char,unsigned char,glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet> *)::lastTechnique = v5;
  glitch::video::detail::applyRenderStates<glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>>(glitch::video::CMaterial *,unsigned char,unsigned char,glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet> *)::lastPass = a3;
}


// ===== 5b74e8 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::commitCurrentMaterialImpl(uchar) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::commitCurrentMaterialImpl(
        int a1,
        int a2)
{
  int v4; // r5
  int v5; // r6
  int v6; // r2
  int v7; // r5

  glitch::video::detail::applyRenderStates<glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>>(
    *(_DWORD *)(a1 + 236),
    *(unsigned __int8 *)(a1 + 248),
    a2,
    a1);
  v4 = 52 * a2;
  v5 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 236) + 4) + 24)
                             + 12 * *(unsigned __int8 *)(a1 + 248)
                             + 8)
                 + v4
                 + 32);
  if ( v5 != *(_DWORD *)(a1 + 244) )
  {
    glUseProgram();
    *(_DWORD *)(a1 + 244) = v5;
  }
  v6 = *(_DWORD *)(a1 + 236);
  v7 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v6 + 4) + 24) + 12 * *(unsigned __int8 *)(a1 + 248) + 8) + v4;
  glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitCurrentMaterialParametersAux<glitch::video::CMaterial>(
    (const glitch::video::IVideoDriver *)a1,
    *(_DWORD *)(a1 + 244),
    v6,
    *(unsigned __int16 **)(v7 + 40),
    (unsigned __int16 *)(*(_DWORD *)(v7 + 40) + 4 * *(unsigned __int16 *)(v7 + 44)));
}


// ===== 5b7594 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::commitCurrentMaterial(void) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::commitCurrentMaterial(
        int a1)
{
  glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::commitCurrentMaterialImpl(
    a1,
    0);
}


// ===== 5b759c glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateScissor<glitch::video::detail::driver::SRenderState>(glitch::video::detail::driver::SRenderState const&) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateScissor<glitch::video::detail::driver::SRenderState>(
        int a1,
        _DWORD *a2)
{
  int v2; // r6
  int v5; // r6
  int v6; // r3
  GLsizei height; // [sp+10h] [bp-10h] BYREF
  GLsizei width; // [sp+14h] [bp-Ch] BYREF
  GLint y; // [sp+18h] [bp-8h] BYREF
  GLint x; // [sp+1Ch] [bp-4h] BYREF

  v2 = (*a2 >> 21) & 1;
  if ( *(unsigned __int8 *)(a1 + 467) != v2 )
  {
    if ( v2 )
    {
      glEnable(0xC11u);
      *(_BYTE *)(a1 + 467) = v2;
    }
    else
    {
      glDisable(0xC11u);
      *(_BYTE *)(a1 + 467) = 0;
    }
  }
  if ( (unsigned int)((*(_DWORD *)(a1 + 204) - *(_DWORD *)(a1 + 200)) >> 2) > 1 )
    v5 = 0;
  else
    v5 = *(_DWORD *)(a1 + 316);
  if ( v5 != *(_DWORD *)(a1 + 572)
    || a2[5] != *(_DWORD *)(a1 + 556)
    || a2[6] != *(_DWORD *)(a1 + 560)
    || a2[7] != *(_DWORD *)(a1 + 564)
    || a2[8] != *(_DWORD *)(a1 + 568) )
  {
    glitch::video::CCommonGLDriverBase::fixUpScreenArea(a1, a2 + 5, &x, &y, &width, &height, 1, 0);
    glScissor(x, y, width, height);
    *(_DWORD *)(a1 + 556) = a2[5];
    *(_DWORD *)(a1 + 560) = a2[6];
    *(_DWORD *)(a1 + 564) = a2[7];
    v6 = a2[8];
    *(_DWORD *)(a1 + 572) = v5;
    *(_DWORD *)(a1 + 568) = v6;
  }
}


// ===== 5b76c4 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateNonGrouped<glitch::video::detail::driver::SRenderState>(glitch::video::detail::driver::SRenderState const&) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateNonGrouped<glitch::video::detail::driver::SRenderState>(
        int a1,
        int *a2)
{
  unsigned int v2; // r3
  int v4; // r0
  int v6; // r1
  int v7; // r2
  int v8; // r3
  int v9; // r12
  unsigned int v10; // r7
  unsigned int v11; // r6
  unsigned int v12; // r8
  unsigned int v13; // r0
  float v14; // r6
  float v15; // r7
  unsigned int v16; // r3
  int v17; // r2

  v2 = *a2;
  v4 = HIWORD(*a2) & 1;
  v6 = ((unsigned int)*a2 >> 17) & 1;
  v7 = (v2 >> 18) & 1;
  v8 = (v2 >> 19) & 1;
  v9 = (unsigned __int8)v4
     | (unsigned __int16)((unsigned __int8)v6 << 8)
     | (v7 << 16) & 0xFFFFFF
     | ((unsigned __int8)v8 << 24);
  if ( *(_DWORD *)(a1 + 492) != v9 )
  {
    *(_DWORD *)(a1 + 492) = v9;
    glColorMask(v4, v6, v7, v8);
  }
  v10 = *((unsigned __int8 *)a2 + 7);
  v11 = *((unsigned __int8 *)a2 + 6);
  v12 = *((unsigned __int8 *)a2 + 5);
  v13 = *((unsigned __int8 *)a2 + 4);
  if ( *(_DWORD *)(a1 + 520) != a2[1] )
  {
    *(_BYTE *)(a1 + 522) = v11;
    *(_BYTE *)(a1 + 521) = v12;
    *(_BYTE *)(a1 + 523) = v10;
    *(_BYTE *)(a1 + 520) = v13;
    glClearColor((float)v13, (float)v12, (float)v11, (float)v10);
  }
  if ( *((float *)a2 + 2) != *(float *)(a1 + 524) )
  {
    *(_DWORD *)(a1 + 524) = a2[2];
    glClearDepthf();
  }
  v14 = *((float *)a2 + 3);
  v15 = *((float *)a2 + 4);
  if ( v14 != *(float *)(a1 + 528) || v15 != *(float *)(a1 + 532) )
  {
    glDepthRangef();
    *(float *)(a1 + 528) = v14;
    *(float *)(a1 + 532) = v15;
  }
  v16 = *a2;
  v17 = ((unsigned int)*a2 >> 20) & 1;
  if ( *(unsigned __int8 *)(a1 + 456) != v17 )
  {
    *(_BYTE *)(a1 + 456) = (*a2 & 0x100000) != 0;
    if ( v17 )
      glEnable(0xBD0u);
    else
      glDisable(0xBD0u);
    v16 = *a2;
  }
  if ( *(unsigned __int8 *)(a1 + 504) != (unsigned __int8)v16 )
  {
    *(_BYTE *)(a1 + 504) = v16;
    glStencilMask((unsigned __int8)v16);
    v16 = *a2;
  }
  if ( *(unsigned __int8 *)(a1 + 505) != BYTE1(v16) )
  {
    *(_BYTE *)(a1 + 505) = BYTE1(v16);
    glClearStencil(BYTE1(v16));
  }
}


// ===== 5b7898 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setRenderState(glitch::video::detail::driver::SRenderState const&) =====
void __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setRenderState(
        int a1,
        int *a2)
{
  glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateScissor<glitch::video::detail::driver::SRenderState>(
    a1,
    a2);
  glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateNonGrouped<glitch::video::detail::driver::SRenderState>(
    a1,
    a2);
}


// ===== 5b78b8 glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitCurrentMaterialAutomaticParameters(glitch::video::CGLSLShader const*,glitch::video::CVertexStreams const*,uchar const*) =====
float __fastcall glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitCurrentMaterialAutomaticParameters(
        float result,
        int a2,
        int a3,
        unsigned __int8 *a4)
{
  int v5; // r3
  float v6; // r5
  int v8; // r9
  int v9; // r7
  int v10; // r4
  int v11; // r8
  int v12; // r9
  int v13; // r2
  int v14; // r3
  float v15; // r10
  int v16; // r3
  float v17; // r8
  float v18; // r7
  float v19; // r11
  float v20; // r0
  int v21; // r2
  int v22; // r10
  int v23; // r3
  float v24; // r0
  int v25; // r10
  int v26; // r1
  int v27; // r2
  int v28; // r3
  int v29; // r10
  int v30; // r2
  _DWORD *v31; // r2
  int v32; // r1
  int v33; // r3
  int v34; // r10
  int v35; // r2
  int v36; // r3
  int v37; // lr
  float v38; // r2
  float v39; // r10
  int v40; // r2
  int v41; // r3
  int v42; // lr
  int v43; // r8
  float v44; // [sp+0h] [bp-4C4h]
  float v45; // [sp+0h] [bp-4C4h]
  float *v46; // [sp+Ch] [bp-4B8h]
  int *v47; // [sp+14h] [bp-4B0h]
  float *v48; // [sp+18h] [bp-4ACh]
  float *v49; // [sp+68h] [bp-45Ch]
  int v50; // [sp+78h] [bp-44Ch]
  int *v51; // [sp+7Ch] [bp-448h]
  int *v52; // [sp+80h] [bp-444h]
  float v53; // [sp+9Ch] [bp-428h] BYREF
  float v54; // [sp+A0h] [bp-424h]
  float v55; // [sp+A4h] [bp-420h]
  float v56; // [sp+A8h] [bp-41Ch]
  char v57; // [sp+DCh] [bp-3E8h]
  _BYTE v58[68]; // [sp+E0h] [bp-3E4h] BYREF
  float v59[17]; // [sp+124h] [bp-3A0h] BYREF
  _BYTE v60[68]; // [sp+168h] [bp-35Ch] BYREF
  float v61[17]; // [sp+1ACh] [bp-318h] BYREF
  float v62[17]; // [sp+1F0h] [bp-2D4h] BYREF
  float v63[17]; // [sp+234h] [bp-290h] BYREF
  float v64[17]; // [sp+278h] [bp-24Ch] BYREF
  float v65[17]; // [sp+2BCh] [bp-208h] BYREF
  float v66[17]; // [sp+300h] [bp-1C4h] BYREF
  float v67[17]; // [sp+344h] [bp-180h] BYREF
  float v68[17]; // [sp+388h] [bp-13Ch] BYREF
  _BYTE v69[68]; // [sp+3CCh] [bp-F8h] BYREF
  float v70[16]; // [sp+410h] [bp-B4h] BYREF
  _BYTE v71[68]; // [sp+454h] [bp-70h] BYREF
  int v72; // [sp+498h] [bp-2Ch]
  int v73; // [sp+49Ch] [bp-28h]
  int v74; // [sp+4A0h] [bp-24h]
  int v75; // [sp+4A4h] [bp-20h]
  int v76; // [sp+4A8h] [bp-1Ch]
  int v77; // [sp+4ACh] [bp-18h]
  int v78; // [sp+4B0h] [bp-14h]
  float v79; // [sp+4B4h] [bp-10h]
  float v80; // [sp+4B8h] [bp-Ch]
  int Time; // [sp+4BCh] [bp-8h]

  v5 = *(unsigned __int16 *)(a3 + 16 * *a4 + 28);
  v6 = result;
  if ( v5 <= *(unsigned __int8 *)(a3 + 12) && (*(unsigned __int16 *)(a3 + 14) & (4 << v5)) != 0 )
  {
    v12 = 24 * v5;
    v13 = *(_DWORD *)(a3 + 16);
    v14 = 24 * v5 + 12;
    v15 = *(float *)(v13 + v14);
    v16 = v13 + v14;
    v17 = *(float *)(v16 + 4);
    v18 = *(float *)(v16 + 8);
    v44 = (float)((float)((float)(v15 * *(float *)(LODWORD(result) + 2156))
                        + (float)(v17 * *(float *)(LODWORD(result) + 2172)))
                + (float)(v18 * *(float *)(LODWORD(result) + 2188)))
        + *(float *)(LODWORD(result) + 2204);
    v19 = (float)((float)((float)(v15 * *(float *)(LODWORD(result) + 2160))
                        + (float)(v17 * *(float *)(LODWORD(result) + 2176)))
                + (float)(v18 * *(float *)(LODWORD(result) + 2192)))
        + *(float *)(LODWORD(result) + 2208);
    v20 = (float)((float)((float)(v15 * *(float *)(LODWORD(result) + 2164))
                        + (float)(v17 * *(float *)(LODWORD(result) + 2180)))
                + (float)(v18 * *(float *)(LODWORD(result) + 2196)))
        + *(float *)(LODWORD(result) + 2212);
    *(_BYTE *)(LODWORD(v6) + 2220) = 0;
    *(float *)(LODWORD(v6) + 2212) = v20;
    *(float *)(LODWORD(v6) + 2208) = v19;
    *(float *)(LODWORD(v6) + 2204) = v44;
    v46 = (float *)(LODWORD(v6) + 2156);
    result = COERCE_FLOAT(glitch::core::CMatrix4<float>::postScale(LODWORD(v6) + 2156, (float *)(*(_DWORD *)(a3 + 16)
                                                                                               + v12)));
    v50 = 1;
    *(_DWORD *)(LODWORD(v6) + 3516) |= 0xDCE7u;
  }
  else
  {
    v46 = (float *)(LODWORD(result) + 2156);
    v50 = 0;
  }
  v47 = (int *)(LODWORD(v6) + 2544);
  v8 = 0;
  v49 = (float *)(LODWORD(v6) + 2496);
  v48 = (float *)(LODWORD(v6) + 2224);
  v51 = (int *)(LODWORD(v6) + 2548);
  v52 = (int *)(LODWORD(v6) + 2552);
  do
  {
    if ( *(_WORD *)(a2 + 44) )
    {
      v9 = 16 * ((unsigned __int16)(*(_WORD *)(a2 + 44) - 1) + 1);
      v10 = 0;
      while ( 1 )
      {
        v11 = *(_DWORD *)(a2 + 40) + v10;
        switch ( *(_WORD *)(v11 + 4) )
        {
          case '"':
            v10 += 16;
            result = COERCE_FLOAT(glUniform1f());
            if ( v10 != v9 )
              continue;
            goto LABEL_13;
          case '#':
            *(_BYTE *)(LODWORD(v6) + 2220) = 0;
            v10 += 16;
            result = COERCE_FLOAT(glUniformMatrix4fv());
            if ( v10 != v9 )
              continue;
            goto LABEL_13;
          case '$':
            *(_BYTE *)(LODWORD(v6) + 2152) = 0;
            v10 += 16;
            result = COERCE_FLOAT(glUniformMatrix4fv());
            if ( v10 != v9 )
              continue;
            goto LABEL_13;
          case '%':
            *(_BYTE *)(LODWORD(v6) + 2288) = 0;
            v10 += 16;
            result = COERCE_FLOAT(glUniformMatrix4fv());
            if ( v10 != v9 )
              continue;
            goto LABEL_13;
          case '&':
            if ( (*(_DWORD *)(LODWORD(v6) + 3516) & 1) != 0 )
            {
              glitch::core::CMatrix4<float>::operator*((int)v71, (float *)(LODWORD(v6) + 2088), v46);
              memcpy((void *)(LODWORD(v6) + 2292), v71, 0x41u);
              *(_DWORD *)(LODWORD(v6) + 3516) &= ~1u;
            }
            *(_BYTE *)(LODWORD(v6) + 2356) = 0;
            result = COERCE_FLOAT(glUniformMatrix4fv());
            v10 += 16;
            if ( v10 != v9 )
              continue;
            goto LABEL_13;
          case '\'':
            if ( (*(_DWORD *)(LODWORD(v6) + 3516) & 2) != 0 )
            {
              glitch::core::CMatrix4<float>::operator*((int)v70, v48, (float *)(LODWORD(v6) + 2088));
              glitch::core::CMatrix4<float>::operator*((int)v69, v70, v46);
              memcpy((void *)(LODWORD(v6) + 2360), v69, 0x41u);
              *(_DWORD *)(LODWORD(v6) + 3516) &= ~2u;
            }
            *(_BYTE *)(LODWORD(v6) + 2424) = 0;
            result = COERCE_FLOAT(glUniformMatrix4fv());
            v10 += 16;
            if ( v10 != v9 )
              continue;
            goto LABEL_13;
          case '(':
            if ( (*(_DWORD *)(LODWORD(v6) + 3516) & 4) != 0 )
            {
              glitch::core::CMatrix4<float>::getInverse(v46, (float *)(LODWORD(v6) + 2428));
              *(_DWORD *)(LODWORD(v6) + 3516) &= ~4u;
            }
            *(_BYTE *)(LODWORD(v6) + 2492) = 0;
            result = COERCE_FLOAT(glUniformMatrix4fv());
            v10 += 16;
            if ( v10 != v9 )
              continue;
            goto LABEL_13;
          case ')':
            if ( (*(_DWORD *)(LODWORD(v6) + 3516) & 8) != 0 )
            {
              glitch::core::CMatrix4<float>::getInverse((float *)(LODWORD(v6) + 2088), v49);
              *(_DWORD *)(LODWORD(v6) + 3516) &= ~8u;
            }
            *(_BYTE *)(LODWORD(v6) + 2560) = 0;
            result = COERCE_FLOAT(glUniformMatrix4fv());
            v10 += 16;
            if ( v10 != v9 )
              continue;
            goto LABEL_13;
          case '*':
            if ( (*(_DWORD *)(LODWORD(v6) + 3516) & 0x10) != 0 )
            {
              glitch::core::CMatrix4<float>::operator*((int)v68, (float *)(LODWORD(v6) + 2088), v48);
              glitch::core::CMatrix4<float>::getInverse(v68, (float *)(LODWORD(v6) + 2564));
              *(_DWORD *)(LODWORD(v6) + 3516) &= ~0x10u;
            }
            *(_BYTE *)(LODWORD(v6) + 2628) = 0;
            result = COERCE_FLOAT(glUniformMatrix4fv());
            v10 += 16;
            if ( v10 != v9 )
              continue;
            goto LABEL_13;
          case '+':
            if ( (*(_DWORD *)(LODWORD(v6) + 3516) & 0x20) != 0 )
            {
              glitch::core::CMatrix4<float>::operator*((int)v67, (float *)(LODWORD(v6) + 2088), v46);
              glitch::core::CMatrix4<float>::getInverse(v67, (float *)(LODWORD(v6) + 2632));
              *(_DWORD *)(LODWORD(v6) + 3516) &= ~0x20u;
            }
            *(_BYTE *)(LODWORD(v6) + 2696) = 0;
            result = COERCE_FLOAT(glUniformMatrix4fv());
            v10 += 16;
            if ( v10 != v9 )
              continue;
            goto LABEL_13;
          case ',':
            if ( (*(_DWORD *)(LODWORD(v6) + 3516) & 0x40) != 0 )
            {
              glitch::core::CMatrix4<float>::operator*(
                (int)v66,
                (float *)(LODWORD(v6) + 2088),
                (float *)(LODWORD(v6) + 2088));
              glitch::core::CMatrix4<float>::operator*((int)v65, v66, v46);
              glitch::core::CMatrix4<float>::getInverse(v65, (float *)(LODWORD(v6) + 2700));
              *(_DWORD *)(LODWORD(v6) + 3516) &= ~0x40u;
            }
            *(_BYTE *)(LODWORD(v6) + 2764) = 0;
            result = COERCE_FLOAT(glUniformMatrix4fv());
            v10 += 16;
            if ( v10 != v9 )
              continue;
            goto LABEL_13;
          case '-':
            if ( (*(_DWORD *)(LODWORD(v6) + 3516) & 0x80) != 0 )
            {
              v57 = 0;
              glitch::core::CMatrix4<float>::getInverse(v46, &v53);
              glitch::core::CMatrix4<float>::getTransposed((int)&v53, LODWORD(v6) + 2768);
              *(_DWORD *)(LODWORD(v6) + 3516) &= ~0x80u;
            }
            *(_BYTE *)(LODWORD(v6) + 2832) = 0;
            result = COERCE_FLOAT(glUniformMatrix4fv());
            v10 += 16;
            if ( v10 != v9 )
              continue;
            goto LABEL_13;
          case '.':
            if ( (*(_DWORD *)(LODWORD(v6) + 3516) & 0x100) != 0 )
            {
              v57 = 0;
              glitch::core::CMatrix4<float>::getInverse((float *)(LODWORD(v6) + 2088), &v53);
              glitch::core::CMatrix4<float>::getTransposed((int)&v53, LODWORD(v6) + 2836);
              *(_DWORD *)(LODWORD(v6) + 3516) &= ~0x100u;
            }
            *(_BYTE *)(LODWORD(v6) + 2900) = 0;
            result = COERCE_FLOAT(glUniformMatrix4fv());
            v10 += 16;
            if ( v10 != v9 )
              continue;
            goto LABEL_13;
          case '/':
            if ( (*(_DWORD *)(LODWORD(v6) + 3516) & 0x200) != 0 )
            {
              v57 = 0;
              glitch::core::CMatrix4<float>::operator*((int)v64, (float *)(LODWORD(v6) + 2088), v48);
              glitch::core::CMatrix4<float>::getInverse(v64, &v53);
              glitch::core::CMatrix4<float>::getTransposed((int)&v53, LODWORD(v6) + 2904);
              *(_DWORD *)(LODWORD(v6) + 3516) &= ~0x200u;
            }
            *(_BYTE *)(LODWORD(v6) + 2968) = 0;
            result = COERCE_FLOAT(glUniformMatrix4fv());
            v10 += 16;
            if ( v10 != v9 )
              continue;
            goto LABEL_13;
          case '0':
            if ( (*(_DWORD *)(LODWORD(v6) + 3516) & 0x400) != 0 )
            {
              v57 = 0;
              glitch::core::CMatrix4<float>::operator*((int)v63, (float *)(LODWORD(v6) + 2088), v46);
              glitch::core::CMatrix4<float>::getInverse(v63, &v53);
              glitch::core::CMatrix4<float>::getTransposed((int)&v53, LODWORD(v6) + 2972);
              *(_DWORD *)(LODWORD(v6) + 3516) &= ~0x400u;
            }
            *(_BYTE *)(LODWORD(v6) + 3036) = 0;
            result = COERCE_FLOAT(glUniformMatrix4fv());
            v10 += 16;
            if ( v10 != v9 )
              continue;
            goto LABEL_13;
          case '1':
            if ( (*(_DWORD *)(LODWORD(v6) + 3516) & 0x800) != 0 )
            {
              v57 = 0;
              glitch::core::CMatrix4<float>::operator*((int)v62, v48, (float *)(LODWORD(v6) + 2088));
              glitch::core::CMatrix4<float>::operator*((int)v61, v62, v46);
              glitch::core::CMatrix4<float>::getInverse(v61, &v53);
              glitch::core::CMatrix4<float>::getTransposed((int)&v53, LODWORD(v6) + 3040);
              *(_DWORD *)(LODWORD(v6) + 3516) &= ~0x800u;
            }
            *(_BYTE *)(LODWORD(v6) + 3104) = 0;
            result = COERCE_FLOAT(glUniformMatrix4fv());
            v10 += 16;
            if ( v10 != v9 )
              continue;
            goto LABEL_13;
          case '2':
            if ( (*(_DWORD *)(LODWORD(v6) + 3516) & 0x1000) != 0 )
            {
              glitch::core::CMatrix4<float>::getTransposed((int)v46, LODWORD(v6) + 3108);
              *(_DWORD *)(LODWORD(v6) + 3516) &= ~0x1000u;
            }
            *(_BYTE *)(LODWORD(v6) + 3172) = 0;
            result = COERCE_FLOAT(glUniformMatrix4fv());
            v10 += 16;
            if ( v10 != v9 )
              continue;
            goto LABEL_13;
          case '3':
            if ( (*(_DWORD *)(LODWORD(v6) + 3516) & 0x2000) != 0 )
            {
              glitch::core::CMatrix4<float>::getTransposed(LODWORD(v6) + 2088, LODWORD(v6) + 3176);
              *(_DWORD *)(LODWORD(v6) + 3516) &= ~0x2000u;
            }
            *(_BYTE *)(LODWORD(v6) + 3240) = 0;
            result = COERCE_FLOAT(glUniformMatrix4fv());
            v10 += 16;
            if ( v10 != v9 )
              continue;
            goto LABEL_13;
          case '4':
            if ( (*(_DWORD *)(LODWORD(v6) + 3516) & 0x4000) != 0 )
            {
              glitch::core::CMatrix4<float>::operator*((int)v60, (float *)(LODWORD(v6) + 2088), v46);
              glitch::core::CMatrix4<float>::getTransposed((int)v60, LODWORD(v6) + 3244);
              *(_DWORD *)(LODWORD(v6) + 3516) &= ~0x4000u;
            }
            *(_BYTE *)(LODWORD(v6) + 3308) = 0;
            result = COERCE_FLOAT(glUniformMatrix4fv());
            v10 += 16;
            if ( v10 != v9 )
              continue;
            goto LABEL_13;
          case '5':
            if ( (*(_DWORD *)(LODWORD(v6) + 3516) & 0x8000) != 0 )
            {
              glitch::core::CMatrix4<float>::operator*((int)v59, v48, (float *)(LODWORD(v6) + 2088));
              glitch::core::CMatrix4<float>::operator*((int)v58, v59, v46);
              glitch::core::CMatrix4<float>::getTransposed((int)v58, LODWORD(v6) + 3312);
              *(_DWORD *)(LODWORD(v6) + 3516) &= ~0x8000u;
            }
            *(_BYTE *)(LODWORD(v6) + 3376) = 0;
            result = COERCE_FLOAT(glUniformMatrix4fv());
            v10 += 16;
            if ( v10 != v9 )
              continue;
            goto LABEL_13;
          case '6':
            if ( (*(_DWORD *)(LODWORD(v6) + 3516) & 0x10000) != 0 )
            {
              glitch::core::CMatrix4<float>::getInverse(v48, (float *)(LODWORD(v6) + 3380));
              *(_DWORD *)(LODWORD(v6) + 3516) &= ~0x10000u;
            }
            *(_BYTE *)(LODWORD(v6) + 3444) = 0;
            result = COERCE_FLOAT(glUniformMatrix4fv());
            v10 += 16;
            if ( v10 != v9 )
              continue;
            goto LABEL_13;
          case '7':
            if ( (*(_DWORD *)(LODWORD(v6) + 3516) & 0x20000) != 0 )
            {
              glitch::core::CMatrix4<float>::getTransposed((int)v48, LODWORD(v6) + 3448);
              *(_DWORD *)(LODWORD(v6) + 3516) &= ~0x20000u;
            }
            *(_BYTE *)(LODWORD(v6) + 3512) = 0;
            result = COERCE_FLOAT(glUniformMatrix4fv());
            v10 += 16;
            if ( v10 != v9 )
              continue;
            goto LABEL_13;
          case '8':
            if ( (*(_DWORD *)(LODWORD(v6) + 3516) & 0x40000) != 0 )
            {
              v57 = 0;
              glitch::core::CMatrix4<float>::getInverse(v48, &v53);
              glitch::core::CMatrix4<float>::getTransposed((int)&v53, LODWORD(v6) + 3516);
              *(_DWORD *)(LODWORD(v6) + 3516) &= ~0x40000u;
            }
            *(_BYTE *)(LODWORD(v6) + 3580) = 0;
            result = COERCE_FLOAT(glUniformMatrix4fv());
            v10 += 16;
            if ( v10 != v9 )
              continue;
            goto LABEL_13;
          case '9':
            v38 = *(float *)(LODWORD(v6) + 824);
            LODWORD(v39) = *(_DWORD *)(LODWORD(v6) + 840) + 0x80000000;
            *(_BYTE *)(LODWORD(v6) + 848) = 0;
            v79 = v39 / v38;
            v45 = v39 / v38;
            result = v39 / (float)(v38 - 1.0);
            v80 = result;
            v40 = *(unsigned __int8 *)(v11 + 6);
            if ( v40 == 6 )
            {
              result = COERCE_FLOAT(glUniform2fv());
            }
            else if ( v40 == 2 )
            {
              LODWORD(v53) = (int)v45;
              LODWORD(v54) = (int)result;
              result = COERCE_FLOAT(glUniform2iv());
            }
            goto LABEL_12;
          case ':':
            if ( (*(_DWORD *)(LODWORD(v6) + 3516) & 8) != 0 )
            {
              glitch::core::CMatrix4<float>::getInverse((float *)(LODWORD(v6) + 2088), v49);
              *(_DWORD *)(LODWORD(v6) + 3516) &= ~8u;
              if ( *(_BYTE *)(v11 + 6) != 8 )
              {
LABEL_30:
                v36 = *v52;
                v10 += 16;
                v37 = *v47;
                v77 = *v51;
                v76 = v37;
                v78 = v36;
                result = COERCE_FLOAT(glUniform3fv());
                if ( v10 == v9 )
                  goto LABEL_13;
                continue;
              }
            }
            else if ( *(_BYTE *)(v11 + 6) != 8 )
            {
              goto LABEL_30;
            }
            v10 += 16;
            v41 = *v52;
            v42 = *(_DWORD *)(LODWORD(v6) + 2556);
            v43 = *v47;
            v73 = *v51;
            v72 = v43;
            v74 = v41;
            v75 = v42;
            result = COERCE_FLOAT(glUniform4fv());
            if ( v10 == v9 )
              goto LABEL_13;
            continue;
          case ';':
            LODWORD(result) = *(unsigned __int8 *)(v11 + 6);
            v31 = *(_DWORD **)(*(_DWORD *)(LODWORD(v6) + 204) - 4);
            v32 = v31[8];
            v33 = v31[5];
            v34 = v31[6];
            v35 = v31[7];
            if ( LODWORD(result) == 8 )
            {
              v53 = (float)v33;
              v54 = (float)v34;
              v10 += 16;
              v55 = (float)(v35 - v33);
              v56 = (float)(v32 - v34);
              result = COERCE_FLOAT(glUniform4fv());
              if ( v10 == v9 )
                goto LABEL_13;
            }
            else if ( LODWORD(result) == 4 )
            {
              LODWORD(v55) = v35 - v33;
              LODWORD(v56) = v32 - v34;
              v53 = *(float *)&v33;
              v54 = *(float *)&v34;
              v10 += 16;
              result = COERCE_FLOAT(glUniform4iv());
              if ( v10 == v9 )
                goto LABEL_13;
            }
            else
            {
LABEL_12:
              v10 += 16;
              if ( v10 == v9 )
                goto LABEL_13;
            }
            break;
          case '<':
            v26 = *(unsigned __int8 *)(v11 + 6);
            v27 = *(_DWORD *)(*(_DWORD *)(LODWORD(v6) + 204) - 4);
            v28 = *(_DWORD *)(v27 + 32);
            result = *(float *)(v27 + 20);
            v29 = *(_DWORD *)(v27 + 24);
            v30 = *(_DWORD *)(v27 + 28);
            if ( v26 == 6 )
            {
              v53 = (float)(v30 - LODWORD(result));
              v24 = (float)(v28 - v29);
LABEL_11:
              v54 = v24;
              result = COERCE_FLOAT(glUniform2fv());
              goto LABEL_12;
            }
            if ( v26 != 2 )
              goto LABEL_12;
            LODWORD(v53) = v30 - LODWORD(result);
            LODWORD(v54) = v28 - v29;
            v10 += 16;
            result = COERCE_FLOAT(glUniform2iv());
            if ( v10 == v9 )
              goto LABEL_13;
            continue;
          case '=':
            v21 = *(_DWORD *)(*(_DWORD *)(LODWORD(v6) + 204) - 4);
            v22 = *(_DWORD *)(v21 + 32);
            result = *(float *)(v21 + 28);
            if ( *(_BYTE *)(v11 + 6) != 6 )
              goto LABEL_12;
            v23 = *(_DWORD *)(v21 + 24);
            v53 = 1.0 / (float)(LODWORD(result) - *(_DWORD *)(v21 + 20));
            v24 = 1.0 / (float)(v22 - v23);
            goto LABEL_11;
          case '>':
            v25 = *(unsigned __int8 *)(v11 + 6);
            if ( v25 == 5 )
            {
              glitch::os::Timer::getTime((glitch::os::Timer *)LODWORD(result));
              result = COERCE_FLOAT(glUniform1f());
            }
            else if ( v25 == 1 )
            {
              Time = glitch::os::Timer::getTime((glitch::os::Timer *)LODWORD(result));
              result = COERCE_FLOAT(glUniform1iv());
            }
            goto LABEL_12;
          default:
            goto LABEL_12;
        }
      }
    }
LABEL_13:
    v8 += 8;
    a2 += 8;
  }
  while ( v8 != 16 );
  if ( v50 )
  {
    result = COERCE_FLOAT(memcpy(v46, (const void *)(LODWORD(v6) + 716), 0x41u));
    *(_DWORD *)(LODWORD(v6) + 3516) |= 0xDCE7u;
  }
  return result;
}


// ===== 5b8acc glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitCurrentMaterialIndirectParameters(uchar,glitch::video::CVertexStreams const*,uchar const*) =====
int __fastcall glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitCurrentMaterialIndirectParameters(
        float a1,
        int a2,
        int a3,
        unsigned __int8 *a4)
{
  _WORD *v6; // r4
  int v8; // r12
  int v9; // r6
  unsigned __int16 *v10; // r3
  unsigned __int16 *v11; // r7

  v6 = *(_WORD **)(LODWORD(a1) + 244);
  v8 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(LODWORD(a1) + 236) + 4) + 24)
                 + 12 * *(unsigned __int8 *)(LODWORD(a1) + 248)
                 + 8)
     + 52 * a2;
  v9 = *(_DWORD *)(v8 + 40);
  v10 = (unsigned __int16 *)(v9 + 4 * *(unsigned __int16 *)(v8 + 44));
  v11 = &v10[2 * *(unsigned __int16 *)(v8 + 46)];
  glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitCurrentMaterialParametersAux<glitch::video::CMaterial>(
    (const glitch::video::IVideoDriver *)LODWORD(a1),
    (int)v6,
    *(_DWORD *)(LODWORD(a1) + 236),
    v10,
    v11);
  glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitCurrentMaterialParametersAux<glitch::video::CGlobalMaterialParameterManager>(
    (const glitch::video::IVideoDriver *)LODWORD(a1),
    (int)v6,
    *(_DWORD *)(LODWORD(a1) + 228),
    v11,
    (unsigned __int16 *)(v9 + 4 * (unsigned __int16)(v6[27] + v6[23] - v6[26] - v6[22])));
  glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitCurrentMaterialAutomaticParameters(
    a1,
    (int)v6,
    a3,
    a4);
  return 0;
}


// ===== 5b8b8c glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::commitPassParameters(uchar,glitch::video::CVertexStreams const*,uchar const*) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::commitPassParameters(
        int a1,
        int a2,
        int a3,
        unsigned __int8 *a4)
{
  unsigned __int8 *v7; // [sp+0h] [bp-Ch]
  int v8; // [sp+4h] [bp-8h]

  if ( a2 )
  {
    v8 = a3;
    v7 = a4;
    glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::commitCurrentMaterialImpl(
      a1,
      a2);
    a4 = v7;
    a3 = v8;
  }
  return glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitCurrentMaterialIndirectParameters(
           *(float *)&a1,
           a2,
           a3,
           a4);
}


// ===== 5b8bc8 glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::drawImpl(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&,glitch::video::CPrimitiveStream const&,glitch::video::CDriverBinding **) =====
int __fastcall glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::drawImpl(
        int a1,
        int *a2,
        glitch::video::CPrimitiveStream *this)
{
  int v3; // r3
  int v5; // r0
  int v6; // r3
  glitch::video::CPrimitiveStream *v7; // r9
  int v8; // r3
  int v9; // r5
  int v10; // r3
  unsigned int v11; // r11
  int v12; // r8
  int v13; // r5
  int v14; // r10
  int v15; // r7
  int v16; // r6
  unsigned __int8 *v17; // r7
  int v19; // r2
  unsigned int v20; // r0
  int v21; // r2
  unsigned int v22; // r0
  int v23; // r1
  int v25; // [sp+Ch] [bp-10h]

  v3 = *(_DWORD *)(a1 + 312);
  v5 = *(_DWORD *)(a1 + 160);
  *(_DWORD *)(a1 + 312) = v3 | 2;
  if ( v5 == 1 )
    v6 = *(_DWORD *)(a1 + 128);
  else
    v6 = *(_DWORD *)(a1 + 124);
  v7 = this;
  if ( v5 != 1 )
    this = (glitch::video::CPrimitiveStream *)(&dword_0 + 2);
  v8 = v6 + 1;
  if ( v5 == 1 )
  {
    *(_DWORD *)(a1 + 128) = v8;
  }
  else
  {
    *(_DWORD *)(a1 + 160) = this;
    *(_DWORD *)(a1 + 124) = v8;
  }
  v9 = *(_DWORD *)(a1 + 120);
  *(_DWORD *)(a1 + 120) = glitch::video::CPrimitiveStream::getPrimitiveCount(v7) + v9;
  v25 = glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::setBuffer(
          a1,
          *(_BYTE **)v7);
  v10 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 236) + 4) + 24) + 12 * *(unsigned __int8 *)(a1 + 248);
  v11 = *(unsigned __int8 *)(v10 + 4);
  if ( *(_BYTE *)(v10 + 4) )
  {
    v13 = 0;
    v12 = 1;
    v14 = 0;
    do
    {
      v15 = *(_DWORD *)(a1 + 232);
      v16 = *a2;
      if ( v15 )
      {
        v17 = (unsigned __int8 *)(*(_DWORD *)(v15 + 4 * v13) + 4);
      }
      else
      {
        LC_API_MEMSET_0(glitch::video::IVideoDriver::DefaultAttribMap, 255, 0x1Eu);
        v19 = *(_DWORD *)(v16 + 16);
        if ( v19 == v16 + 20 )
        {
          v17 = glitch::video::IVideoDriver::DefaultAttribMap;
          v16 = *a2;
        }
        else
        {
          v20 = (v19 - (v16 + 36)) & 0xFFFFFFF0;
          v21 = 0;
          v22 = v20 + 16;
          v17 = glitch::video::IVideoDriver::DefaultAttribMap;
          do
          {
            v23 = v21 >> 4;
            v21 += 16;
            glitch::video::IVideoDriver::DefaultAttribMap[*(unsigned __int16 *)(v16 + 28)] = v23;
            v16 += 16;
          }
          while ( v21 != v22 );
          v16 = *a2;
        }
      }
      glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>,glitch::video::detail::CProgrammableGLFunctionPointerSet>::commitPassParameters(
        a1,
        v14,
        v16,
        v17);
      glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(
        a1,
        *(_DWORD *)(a1 + 244),
        v16,
        (int)v17);
      v14 = (unsigned __int8)++v13;
      v12 &= glitch::video::detail::drawPrimitives<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>>(
               (int)v7,
               *(_DWORD *)(a1 + 484),
               v25);
    }
    while ( v11 > (unsigned __int8)v13 );
  }
  else
  {
    v12 = 1;
  }
  *(_DWORD *)(a1 + 312) &= ~2u;
  return v12;
}


// ===== 5b8d88 glitch::video::CNullDriver::CBuffer::bindImpl(bool) =====
void __fastcall glitch::video::CNullDriver::CBuffer::bindImpl(glitch::video::CNullDriver::CBuffer *this, bool a2)
{
  ;
}


// ===== 5b8d8c glitch::video::CNullDriver::CBuffer::unbindImpl(void) =====
void __fastcall glitch::video::CNullDriver::CBuffer::unbindImpl(glitch::video::CNullDriver::CBuffer *this)
{
  ;
}


// ===== 5b8d90 glitch::video::CNullDriver::CBuffer::mapImpl(uint) =====
int __fastcall glitch::video::CNullDriver::CBuffer::mapImpl(glitch::video::CNullDriver::CBuffer *this, unsigned int a2)
{
  return 0;
}


// ===== 5b8d98 glitch::video::CNullDriver::CBuffer::unmapImpl(void) =====
void __fastcall glitch::video::CNullDriver::CBuffer::unmapImpl(glitch::video::CNullDriver::CBuffer *this)
{
  ;
}


// ===== 5b8d9c glitch::video::CNullDriver::CBuffer::getMappedPtr(void) =====
int __fastcall glitch::video::CNullDriver::CBuffer::getMappedPtr(glitch::video::CNullDriver::CBuffer *this)
{
  return 0;
}


// ===== 5b8da4 glitch::video::CNullDriver::CTexture::bindImpl(bool) =====
int __fastcall glitch::video::CNullDriver::CTexture::bindImpl(glitch::video::CNullDriver::CTexture *this, bool a2)
{
  __int16 v2; // r2

  v2 = *((_WORD *)this + 32);
  *((_WORD *)this + 32) = v2 & 0xFFFC;
  return 0;
}


// ===== 5b8dbc glitch::video::CNullDriver::CTexture::unbindImpl(void) =====
void __fastcall glitch::video::CNullDriver::CTexture::unbindImpl(glitch::video::CNullDriver::CTexture *this)
{
  ;
}


// ===== 5b8dc0 glitch::video::CNullDriver::CTexture::mapImpl(uchar,glitch::video::E_TEXTURE_CUBE_MAP_FACE,uchar) =====
int glitch::video::CNullDriver::CTexture::mapImpl()
{
  return 0;
}


// ===== 5b8dc8 glitch::video::CNullDriver::CTexture::unmapImpl(void) =====
void __fastcall glitch::video::CNullDriver::CTexture::unmapImpl(glitch::video::CNullDriver::CTexture *this)
{
  ;
}


// ===== 5b8dcc glitch::video::CNullDriver::CTexture::getMappedPtr(void) =====
int __fastcall glitch::video::CNullDriver::CTexture::getMappedPtr(glitch::video::CNullDriver::CTexture *this)
{
  return 0;
}


// ===== 5b8dd4 glitch::video::CNullDriver::CTexture::generateMipmapsImpl(void) =====
void __fastcall glitch::video::CNullDriver::CTexture::generateMipmapsImpl(glitch::video::CNullDriver::CTexture *this)
{
  ;
}


// ===== 5b8dd8 glitch::video::CNullDriver::CFramebuffer::bind(void) =====
void __fastcall glitch::video::CNullDriver::CFramebuffer::bind(glitch::video::CNullDriver::CFramebuffer *this)
{
  ;
}


// ===== 5b8ddc glitch::video::CNullDriver::CFramebuffer::unbind(void) =====
void __fastcall glitch::video::CNullDriver::CFramebuffer::unbind(glitch::video::CNullDriver::CFramebuffer *this)
{
  ;
}


// ===== 5b8de0 glitch::video::CNullDriver::beginScene(void) =====
int __fastcall glitch::video::CNullDriver::beginScene(glitch::video::CNullDriver *this)
{
  return 1;
}


// ===== 5b8de8 glitch::video::CNullDriver::captureFramebufferImpl(boost::intrusive_ptr<glitch::video::ITexture> const&,glitch::core::position2d<int> const&,glitch::core::rect<int> const&,uchar,glitch::video::E_TEXTURE_CUBE_MAP_FACE,bool) =====
int glitch::video::CNullDriver::captureFramebufferImpl()
{
  return 0;
}


// ===== 5b8df0 glitch::video::CNullDriver::swapBuffers(int) =====
int __fastcall glitch::video::CNullDriver::swapBuffers(glitch::video::CNullDriver *this, int a2)
{
  return 1;
}


// ===== 5b8df8 glitch::video::CNullDriver::clearBuffers(int) =====
void __fastcall glitch::video::CNullDriver::clearBuffers(glitch::video::CNullDriver *this, int a2)
{
  ;
}


// ===== 5b8dfc glitch::video::CNullDriver::beginScene2D(void) =====
int __fastcall glitch::video::CNullDriver::beginScene2D(glitch::video::CNullDriver *this)
{
  return 1;
}


// ===== 5b8e04 glitch::video::CNullDriver::endScene2D(void) =====
int __fastcall glitch::video::CNullDriver::endScene2D(glitch::video::CNullDriver *this)
{
  return 1;
}


// ===== 5b8e0c glitch::video::CNullDriver::ReinitDriver(void) =====
int __fastcall glitch::video::CNullDriver::ReinitDriver(glitch::video::CNullDriver *this)
{
  return 1;
}


// ===== 5b8e14 glitch::video::CNullDriver::registerBufferMap(uint,uint,uint,uint,void const*) =====
void __fastcall glitch::video::CNullDriver::registerBufferMap(
        glitch::video::CNullDriver *this,
        unsigned int a2,
        unsigned int a3,
        unsigned int a4,
        unsigned int a5,
        const void *a6)
{
  ;
}


// ===== 5b8e18 glitch::video::CNullDriver::ReloadbufferMap(void) =====
void __fastcall glitch::video::CNullDriver::ReloadbufferMap(glitch::video::CNullDriver *this)
{
  ;
}


// ===== 5b8e1c glitch::video::CNullDriver::unregisterBufferMap(uint) =====
void __fastcall glitch::video::CNullDriver::unregisterBufferMap(glitch::video::CNullDriver *this, unsigned int a2)
{
  ;
}


// ===== 5b8e20 glitch::video::CNullDriver::clearBufferMap(void) =====
void __fastcall glitch::video::CNullDriver::clearBufferMap(glitch::video::CNullDriver *this)
{
  ;
}


// ===== 5b8e24 glitch::video::CNullDriver::resetTexturesLoader(void) =====
void __fastcall glitch::video::CNullDriver::resetTexturesLoader(glitch::video::CNullDriver *this)
{
  ;
}


// ===== 5b8e28 glitch::video::CNullDriver::reloadTexturesData(void) =====
int __fastcall glitch::video::CNullDriver::reloadTexturesData(glitch::video::CNullDriver *this)
{
  return 1;
}


// ===== 5b8e30 glitch::video::CNullDriver::reloadShaders(void) =====
void __fastcall glitch::video::CNullDriver::reloadShaders(glitch::video::CNullDriver *this)
{
  ;
}


// ===== 5b8e34 glitch::video::CNullDriver::getBlendEnable(void) =====
int __fastcall glitch::video::CNullDriver::getBlendEnable(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5b8e3c glitch::video::CNullDriver::getBlendColor(void) =====
int __fastcall glitch::video::CNullDriver::getBlendColor(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5b8e4c glitch::video::CNullDriver::getBlendEquation(void) =====
int __fastcall glitch::video::CNullDriver::getBlendEquation(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5b8e54 glitch::video::CNullDriver::getBlendFunc(glitch::video::E_BLEND_FACTOR &,glitch::video::E_BLEND_FACTOR &) =====
void __fastcall glitch::video::CNullDriver::getBlendFunc(int a1, _DWORD *a2, _DWORD *a3)
{
  *a2 = 1;
  *a3 = 0;
}


// ===== 5b8e68 glitch::video::CNullDriver::getColorMask(bool &,bool &,bool &,bool &) =====
int __fastcall glitch::video::CNullDriver::getColorMask(
        glitch::video::CNullDriver *this,
        bool *a2,
        bool *a3,
        bool *a4,
        bool *a5)
{
  *a5 = 1;
  *a4 = 1;
  *a3 = 1;
  *a2 = 1;
  return 1;
}


// ===== 5b8e84 glitch::video::CNullDriver::getClearColor(void) =====
int __fastcall glitch::video::CNullDriver::getClearColor(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5b8e94 glitch::video::CNullDriver::getCullFaceEnable(void) =====
int __fastcall glitch::video::CNullDriver::getCullFaceEnable(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5b8e9c glitch::video::CNullDriver::getCullFace(void) =====
int __fastcall glitch::video::CNullDriver::getCullFace(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5b8ea4 glitch::video::CNullDriver::getFrontFace(void) =====
int __fastcall glitch::video::CNullDriver::getFrontFace(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5b8eac glitch::video::CNullDriver::getDepthTestEnable(void) =====
int __fastcall glitch::video::CNullDriver::getDepthTestEnable(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5b8eb4 glitch::video::CNullDriver::getDepthFunc(void) =====
int __fastcall glitch::video::CNullDriver::getDepthFunc(glitch::video::CNullDriver *this)
{
  return 1;
}


// ===== 5b8ebc glitch::video::CNullDriver::getDepthMask(void) =====
int __fastcall glitch::video::CNullDriver::getDepthMask(glitch::video::CNullDriver *this)
{
  return 1;
}


// ===== 5b8ec4 glitch::video::CNullDriver::getClearDepth(void) =====
int __fastcall glitch::video::CNullDriver::getClearDepth(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5b8ecc glitch::video::CNullDriver::getDepthRange(float &,float &) =====
void __fastcall glitch::video::CNullDriver::getDepthRange(glitch::video::CNullDriver *this, float *a2, float *a3)
{
  *a2 = 0.0;
  *a3 = 1.0;
}


// ===== 5b8ee0 glitch::video::CNullDriver::getDitherEnable(void) =====
int __fastcall glitch::video::CNullDriver::getDitherEnable(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5b8ee8 glitch::video::CNullDriver::getLineWidth(void) =====
int __fastcall glitch::video::CNullDriver::getLineWidth(glitch::video::CNullDriver *this)
{
  return 1065353216;
}


// ===== 5b8ef0 glitch::video::CNullDriver::getPointSize(void) =====
int __fastcall glitch::video::CNullDriver::getPointSize(glitch::video::CNullDriver *this)
{
  return 1065353216;
}


// ===== 5b8ef8 glitch::video::CNullDriver::getPolygonModeFront(void) =====
int __fastcall glitch::video::CNullDriver::getPolygonModeFront(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5b8f00 glitch::video::CNullDriver::getPolygonModeBack(void) =====
int __fastcall glitch::video::CNullDriver::getPolygonModeBack(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5b8f08 glitch::video::CNullDriver::getPolygonOffsetFillEnable(void) =====
int __fastcall glitch::video::CNullDriver::getPolygonOffsetFillEnable(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5b8f10 glitch::video::CNullDriver::getPolygonOffsetLineEnable(void) =====
int __fastcall glitch::video::CNullDriver::getPolygonOffsetLineEnable(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5b8f18 glitch::video::CNullDriver::getPolygonOffsetPointEnable(void) =====
int __fastcall glitch::video::CNullDriver::getPolygonOffsetPointEnable(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5b8f20 glitch::video::CNullDriver::getPolygonOffset(float &,float &) =====
void __fastcall glitch::video::CNullDriver::getPolygonOffset(glitch::video::CNullDriver *this, float *a2, float *a3)
{
  *a2 = 0.0;
  *a3 = 1.0;
}


// ===== 5b8f34 glitch::video::CNullDriver::getSampleAlphaToCoverageEnable(void) =====
int __fastcall glitch::video::CNullDriver::getSampleAlphaToCoverageEnable(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5b8f3c glitch::video::CNullDriver::getSampleCoverageEnable(void) =====
int __fastcall glitch::video::CNullDriver::getSampleCoverageEnable(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5b8f44 glitch::video::CNullDriver::getSampleCoverageInvert(void) =====
int __fastcall glitch::video::CNullDriver::getSampleCoverageInvert(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5b8f4c glitch::video::CNullDriver::getSampleCoverageValue(void) =====
int __fastcall glitch::video::CNullDriver::getSampleCoverageValue(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5b8f54 glitch::video::CNullDriver::getScissorEnable(void) =====
int __fastcall glitch::video::CNullDriver::getScissorEnable(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5b8f5c glitch::video::CNullDriver::getScissor(void) =====
int __fastcall glitch::video::CNullDriver::getScissor(glitch::video::CNullDriver *this)
{
  return *(_DWORD *)(*((_DWORD *)this + 51) - 4) + 20;
}


// ===== 5b8f6c glitch::video::CNullDriver::getStencilTestEnable(void) =====
int __fastcall glitch::video::CNullDriver::getStencilTestEnable(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5b8f74 glitch::video::CNullDriver::getStencilFunc(void) =====
int __fastcall glitch::video::CNullDriver::getStencilFunc(glitch::video::CNullDriver *this)
{
  return 7;
}


// ===== 5b8f7c glitch::video::CNullDriver::getStencilFuncRef(bool *) =====
int __fastcall glitch::video::CNullDriver::getStencilFuncRef(glitch::video::CNullDriver *this, bool *a2)
{
  return 0;
}


// ===== 5b8f84 glitch::video::CNullDriver::getStencilFuncMask(bool *) =====
int __fastcall glitch::video::CNullDriver::getStencilFuncMask(glitch::video::CNullDriver *this, bool *a2)
{
  return 255;
}


// ===== 5b8f8c glitch::video::CNullDriver::getStencilOpFail(void) =====
int __fastcall glitch::video::CNullDriver::getStencilOpFail(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5b8f94 glitch::video::CNullDriver::getStencilOpZFail(void) =====
int __fastcall glitch::video::CNullDriver::getStencilOpZFail(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5b8f9c glitch::video::CNullDriver::getStencilOpZPass(void) =====
int __fastcall glitch::video::CNullDriver::getStencilOpZPass(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5b8fa4 glitch::video::CNullDriver::getStencilMask(bool *) =====
int __fastcall glitch::video::CNullDriver::getStencilMask(glitch::video::CNullDriver *this, bool *a2)
{
  return 255;
}


// ===== 5b8fac glitch::video::CNullDriver::getClearStencil(void) =====
int __fastcall glitch::video::CNullDriver::getClearStencil(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5b8fb4 glitch::video::CNullDriver::setBlendEnable(bool) =====
void __fastcall glitch::video::CNullDriver::setBlendEnable(glitch::video::CNullDriver *this, bool a2)
{
  ;
}


// ===== 5b8fb8 glitch::video::CNullDriver::setBlendColor(glitch::video::SColor) =====
void glitch::video::CNullDriver::setBlendColor()
{
  ;
}


// ===== 5b8fc4 glitch::video::CNullDriver::setBlendEquation(glitch::video::E_BLEND_EQUATION) =====
void glitch::video::CNullDriver::setBlendEquation()
{
  ;
}


// ===== 5b8fc8 glitch::video::CNullDriver::setBlendFunc(glitch::video::E_BLEND_FACTOR,glitch::video::E_BLEND_FACTOR) =====
void glitch::video::CNullDriver::setBlendFunc()
{
  ;
}


// ===== 5b8fcc glitch::video::CNullDriver::setColorMask(bool,bool,bool,bool) =====
void __fastcall glitch::video::CNullDriver::setColorMask(
        glitch::video::CNullDriver *this,
        bool a2,
        bool a3,
        bool a4,
        bool a5)
{
  ;
}


// ===== 5b8fd0 glitch::video::CNullDriver::setClearColor(glitch::video::SColor) =====
void glitch::video::CNullDriver::setClearColor()
{
  ;
}


// ===== 5b8fdc glitch::video::CNullDriver::setCullFaceEnable(bool) =====
void __fastcall glitch::video::CNullDriver::setCullFaceEnable(glitch::video::CNullDriver *this, bool a2)
{
  ;
}


// ===== 5b8fe0 glitch::video::CNullDriver::setCullFace(glitch::video::E_FACE_SIDE) =====
void glitch::video::CNullDriver::setCullFace()
{
  ;
}


// ===== 5b8fe4 glitch::video::CNullDriver::setFrontFace(glitch::video::E_FACE_WINDING) =====
void glitch::video::CNullDriver::setFrontFace()
{
  ;
}


// ===== 5b8fe8 glitch::video::CNullDriver::setDepthTestEnable(bool) =====
void __fastcall glitch::video::CNullDriver::setDepthTestEnable(glitch::video::CNullDriver *this, bool a2)
{
  ;
}


// ===== 5b8fec glitch::video::CNullDriver::setDepthFunc(glitch::video::E_COMPARE_FUNC) =====
void glitch::video::CNullDriver::setDepthFunc()
{
  ;
}


// ===== 5b8ff0 glitch::video::CNullDriver::setDepthMask(bool) =====
void __fastcall glitch::video::CNullDriver::setDepthMask(glitch::video::CNullDriver *this, bool a2)
{
  ;
}


// ===== 5b8ff4 glitch::video::CNullDriver::setClearDepth(float) =====
void __fastcall glitch::video::CNullDriver::setClearDepth(glitch::video::CNullDriver *this, float a2)
{
  ;
}


// ===== 5b8ff8 glitch::video::CNullDriver::setDepthRange(float,float) =====
void __fastcall glitch::video::CNullDriver::setDepthRange(glitch::video::CNullDriver *this, float a2, float a3)
{
  ;
}


// ===== 5b8ffc glitch::video::CNullDriver::setDitherEnable(bool) =====
void __fastcall glitch::video::CNullDriver::setDitherEnable(glitch::video::CNullDriver *this, bool a2)
{
  ;
}


// ===== 5b9000 glitch::video::CNullDriver::setLineWidth(float) =====
void __fastcall glitch::video::CNullDriver::setLineWidth(glitch::video::CNullDriver *this, float a2)
{
  ;
}


// ===== 5b9004 glitch::video::CNullDriver::setPointSize(float) =====
void __fastcall glitch::video::CNullDriver::setPointSize(glitch::video::CNullDriver *this, float a2)
{
  ;
}


// ===== 5b9008 glitch::video::CNullDriver::setPolygonModeFront(glitch::video::E_POLYGON_MODE) =====
void glitch::video::CNullDriver::setPolygonModeFront()
{
  ;
}


// ===== 5b900c glitch::video::CNullDriver::setPolygonModeBack(glitch::video::E_POLYGON_MODE) =====
void glitch::video::CNullDriver::setPolygonModeBack()
{
  ;
}


// ===== 5b9010 glitch::video::CNullDriver::setPolygonOffsetFillEnable(bool) =====
void __fastcall glitch::video::CNullDriver::setPolygonOffsetFillEnable(glitch::video::CNullDriver *this, bool a2)
{
  ;
}


// ===== 5b9014 glitch::video::CNullDriver::setPolygonOffsetLineEnable(bool) =====
void __fastcall glitch::video::CNullDriver::setPolygonOffsetLineEnable(glitch::video::CNullDriver *this, bool a2)
{
  ;
}


// ===== 5b9018 glitch::video::CNullDriver::setPolygonOffsetPointEnable(bool) =====
void __fastcall glitch::video::CNullDriver::setPolygonOffsetPointEnable(glitch::video::CNullDriver *this, bool a2)
{
  ;
}


// ===== 5b901c glitch::video::CNullDriver::setPolygonOffset(float,float) =====
void __fastcall glitch::video::CNullDriver::setPolygonOffset(glitch::video::CNullDriver *this, float a2, float a3)
{
  ;
}


// ===== 5b9020 glitch::video::CNullDriver::setSampleAlphaToCoverageEnable(bool) =====
void __fastcall glitch::video::CNullDriver::setSampleAlphaToCoverageEnable(glitch::video::CNullDriver *this, bool a2)
{
  ;
}


// ===== 5b9024 glitch::video::CNullDriver::setSampleCoverageEnable(bool) =====
void __fastcall glitch::video::CNullDriver::setSampleCoverageEnable(glitch::video::CNullDriver *this, bool a2)
{
  ;
}


// ===== 5b9028 glitch::video::CNullDriver::setSampleCoverageInvert(bool) =====
void __fastcall glitch::video::CNullDriver::setSampleCoverageInvert(glitch::video::CNullDriver *this, bool a2)
{
  ;
}


// ===== 5b902c glitch::video::CNullDriver::setSampleCoverageValue(float) =====
void __fastcall glitch::video::CNullDriver::setSampleCoverageValue(glitch::video::CNullDriver *this, float a2)
{
  ;
}


// ===== 5b9030 glitch::video::CNullDriver::setScissorEnable(bool) =====
void __fastcall glitch::video::CNullDriver::setScissorEnable(glitch::video::CNullDriver *this, bool a2)
{
  ;
}


// ===== 5b9034 glitch::video::CNullDriver::setScissor(glitch::core::rect<int> const&) =====
void glitch::video::CNullDriver::setScissor()
{
  ;
}


// ===== 5b9038 glitch::video::CNullDriver::setStencilTestEnable(bool) =====
void __fastcall glitch::video::CNullDriver::setStencilTestEnable(glitch::video::CNullDriver *this, bool a2)
{
  ;
}


// ===== 5b903c glitch::video::CNullDriver::setStencilFunc(glitch::video::E_COMPARE_FUNC) =====
void glitch::video::CNullDriver::setStencilFunc()
{
  ;
}


// ===== 5b9040 glitch::video::CNullDriver::setStencilFuncRef(uchar) =====
void __fastcall glitch::video::CNullDriver::setStencilFuncRef(glitch::video::CNullDriver *this, unsigned __int8 a2)
{
  ;
}


// ===== 5b9044 glitch::video::CNullDriver::setStencilFuncMask(uchar) =====
void __fastcall glitch::video::CNullDriver::setStencilFuncMask(glitch::video::CNullDriver *this, unsigned __int8 a2)
{
  ;
}


// ===== 5b9048 glitch::video::CNullDriver::setStencilOpFail(glitch::video::E_STENCIL_OP) =====
void glitch::video::CNullDriver::setStencilOpFail()
{
  ;
}


// ===== 5b904c glitch::video::CNullDriver::setStencilOpZFail(glitch::video::E_STENCIL_OP) =====
void glitch::video::CNullDriver::setStencilOpZFail()
{
  ;
}


// ===== 5b9050 glitch::video::CNullDriver::setStencilOpZPass(glitch::video::E_STENCIL_OP) =====
void glitch::video::CNullDriver::setStencilOpZPass()
{
  ;
}


// ===== 5b9054 glitch::video::CNullDriver::setStencilMask(uchar) =====
void __fastcall glitch::video::CNullDriver::setStencilMask(glitch::video::CNullDriver *this, unsigned __int8 a2)
{
  ;
}


// ===== 5b9058 glitch::video::CNullDriver::setClearStencil(uchar) =====
void __fastcall glitch::video::CNullDriver::setClearStencil(glitch::video::CNullDriver *this, unsigned __int8 a2)
{
  ;
}


// ===== 5b905c glitch::video::CNullDriver::getRenderState(glitch::video::detail::driver::SRenderState &) =====
void glitch::video::CNullDriver::getRenderState()
{
  ;
}


// ===== 5b9060 glitch::video::CNullDriver::setRenderState(glitch::video::detail::driver::SRenderState const&) =====
void glitch::video::CNullDriver::setRenderState()
{
  ;
}


// ===== 5b9064 glitch::video::CNullDriver::getTransform(glitch::video::E_TRANSFORMATION_STATE) =====
int __fastcall glitch::video::CNullDriver::getTransform(int a1, int a2)
{
  return a1 + 68 * a2 + 352;
}


// ===== 5b9078 glitch::video::CNullDriver::commitCurrentMaterial(void) =====
void __fastcall glitch::video::CNullDriver::commitCurrentMaterial(glitch::video::CNullDriver *this)
{
  ;
}


// ===== 5b907c glitch::video::CNullDriver::commitMaterialRenderer(glitch::video::CMaterialRenderer *) =====
void glitch::video::CNullDriver::commitMaterialRenderer()
{
  ;
}


// ===== 5b9080 glitch::video::CNullDriver::setRenderTarget(boost::intrusive_ptr<glitch::video::ITexture> const&,int) =====
int glitch::video::CNullDriver::setRenderTarget()
{
  return 0;
}


// ===== 5b9088 glitch::video::CNullDriver::setViewportImpl(glitch::core::rect<int> const&) =====
void glitch::video::CNullDriver::setViewportImpl()
{
  ;
}


// ===== 5b908c glitch::video::CNullDriver::getMaxUserClipPlanes(void) =====
int __fastcall glitch::video::CNullDriver::getMaxUserClipPlanes(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5b9094 glitch::video::CNullDriver::draw2DLine(glitch::core::position2d<int> const&,glitch::core::position2d<int> const&,glitch::video::SColor) =====
void glitch::video::CNullDriver::draw2DLine()
{
  ;
}


// ===== 5b90a0 glitch::video::CNullDriver::draw2DRectangle(glitch::core::rect<int> const&,glitch::core::rect<int> const&,glitch::video::SColor const*,glitch::core::rect<int> const*) =====
void glitch::video::CNullDriver::draw2DRectangle()
{
  ;
}


// ===== 5b90a4 glitch::video::CNullDriver::getColorFormat(void) =====
int __fastcall glitch::video::CNullDriver::getColorFormat(glitch::video::CNullDriver *this)
{
  return 5;
}


// ===== 5b90ac glitch::video::CNullDriver::getDriverType(void) =====
int __fastcall glitch::video::CNullDriver::getDriverType(glitch::video::CNullDriver *this)
{
  return 0;
}


// ===== 5b90b4 glitch::video::CNullDriver::createScreenShot(void) =====
_DWORD *__fastcall glitch::video::CNullDriver::createScreenShot(_DWORD *this)
{
  *this = 0;
  return this;
}


// ===== 5b90c0 glitch::video::CNullDriver::onMaterialDestroyed(glitch::video::CMaterial *) =====
void glitch::video::CNullDriver::onMaterialDestroyed()
{
  ;
}


// ===== 5b90c4 glitch::video::CNullDriver::beginCompile(glitch::video::IVideoDriver::ICompileData *) =====
void __fastcall glitch::video::CNullDriver::beginCompile(
        glitch::video::CNullDriver *this,
        glitch::video::IVideoDriver::ICompileData *a2)
{
  ;
}


// ===== 5b90c8 glitch::video::CNullDriver::endCompile(void) =====
void __fastcall glitch::video::CNullDriver::endCompile(glitch::video::CNullDriver *this)
{
  ;
}


// ===== 5b90cc glitch::video::CNullDriver::createRenderBuffer(glitch::core::dimension2d<int> const&,glitch::video::E_PIXEL_FORMAT) =====
_DWORD *__fastcall glitch::video::CNullDriver::createRenderBuffer(_DWORD *result)
{
  *result = 0;
  return result;
}


// ===== 5b90d8 glitch::video::CNullDriver::createRenderTarget(boost::intrusive_ptr<glitch::video::ITexture> const&,uint) =====
_DWORD *__fastcall glitch::video::CNullDriver::createRenderTarget(_DWORD *result)
{
  *result = 0;
  return result;
}


// ===== 5b90e4 glitch::video::CNullDriver::createMultipleRenderTarget(void) =====
_DWORD *__fastcall glitch::video::CNullDriver::createMultipleRenderTarget(_DWORD *this)
{
  *this = 0;
  return this;
}


// ===== 5b90f0 glitch::video::CNullDriver::restoreShadowState(void) =====
void __fastcall glitch::video::CNullDriver::restoreShadowState(glitch::video::CNullDriver *this)
{
  ;
}


// ===== 5b90f4 glitch::video::CNullDriver::drawImpl(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&,glitch::video::CPrimitiveStream const&,glitch::video::CDriverBinding **) =====
int glitch::video::CNullDriver::drawImpl()
{
  return 0;
}


// ===== 5b90fc glitch::video::CNullDriver::commitCurrentMaterial(bool) =====
void __fastcall glitch::video::CNullDriver::commitCurrentMaterial(glitch::video::CNullDriver *this, bool a2)
{
  ;
}


// ===== 5b9100 glitch::video::CNullDriver::CFramebuffer::~CFramebuffer() =====
void __fastcall glitch::video::CNullDriver::CFramebuffer::~CFramebuffer(glitch::video::CNullDriver::CFramebuffer *this)
{
  ;
}


// ===== 5b9104 glitch::video::CNullDriver::CFramebuffer::~CFramebuffer() =====
void __fastcall glitch::video::CNullDriver::CFramebuffer::~CFramebuffer(glitch::video::CNullDriver::CFramebuffer *this)
{
  LC_API_FREE_0(this);
}


// ===== 5b9118 boost::intrusive_ptr<glitch::video::CLight const>::~intrusive_ptr() =====
_DWORD **__fastcall boost::intrusive_ptr<glitch::video::CLight const>::~intrusive_ptr(_DWORD **a1)
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


// ===== 5b9188 glitch::video::CNullDriver::CBuffer::~CBuffer() =====
void __fastcall glitch::video::CNullDriver::CBuffer::~CBuffer(glitch::video::CNullDriver::CBuffer *this)
{
  *(_DWORD *)this = off_977FA8;
  glitch::video::IBuffer::~IBuffer(this);
}


// ===== 5b91bc glitch::video::CNullDriver::CTexture::~CTexture() =====
void __fastcall glitch::video::CNullDriver::CTexture::~CTexture(glitch::video::CNullDriver::CTexture *this)
{
  *(_DWORD *)this = off_977F78;
  glitch::video::ITexture::~ITexture(this);
}


// ===== 5b91f0 `global constructor keyed to'.._source_glitch_video_CNullDriver.cpp =====
int `global constructor keyed to'.._source_glitch_video_CNullDriver.cpp()
{
  glitch::video::`anonymous namespace'::NullLightPtr = 0;
  dword_9F69D0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F69CC = 1056964608;
  return _aeabi_atexit(
           (int)&glitch::video::`anonymous namespace'::NullLightPtr,
           (int)boost::intrusive_ptr<glitch::video::CLight const>::~intrusive_ptr,
           (int)&_dso_handle);
}


// ===== 5b9240 glitch::video::CNullDriver::printVersion(void) =====
void __fastcall glitch::video::CNullDriver::printVersion(const char **this)
{
  _BYTE v2[64]; // [sp+4h] [bp-94h] BYREF
  _DWORD *v3; // [sp+44h] [bp-54h]
  void *p; // [sp+48h] [bp-50h]
  _DWORD v5[17]; // [sp+4Ch] [bp-4Ch] BYREF
  void *v6; // [sp+90h] [bp-8h]

  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v5,
    (wchar_t *)"U");
  glitch::core::stringc2stringw((glitch::core *)v2, *(this + 7));
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
    v5,
    p,
    v3);
  if ( p != v2 && p )
    GlitchFree(p);
  glitch::os::Printer::log(v6, 1);
  if ( v6 != v5 )
  {
    if ( v6 )
      GlitchFree(v6);
  }
}


// ===== 5b92cc glitch::video::CNullDriver::createBuffer(glitch::video::E_BUFFER_TYPE,glitch::video::E_BUFFER_USAGE,uint,void *,bool) =====
_DWORD *__fastcall glitch::video::CNullDriver::createBuffer(
        _DWORD *a1,
        int a2,
        char a3,
        char a4,
        int a5,
        int a6,
        char a7)
{
  _DWORD *v10; // r4

  v10 = operator new(0x14u, 0);
  glitch::video::IBuffer::IBuffer((int)v10, a3, a4, a5, a6, a7);
  *v10 = off_977FA8;
  *a1 = v10;
  ++v10[1];
  return a1;
}


// ===== 5b934c glitch::video::CNullDriver::CBuffer::cloneImpl(void) =====
glitch::video::CNullDriver::CBuffer *__fastcall glitch::video::CNullDriver::CBuffer::cloneImpl(
        glitch::video::CNullDriver::CBuffer *this,
        int a2)
{
  char v3; // r11
  char v4; // r9
  int v5; // r10
  int v6; // r7
  char v7; // r8
  _DWORD *v8; // r4

  v3 = *(_BYTE *)(a2 + 16);
  v4 = *(_BYTE *)(a2 + 17);
  v5 = *(_DWORD *)(a2 + 12);
  v6 = *(_DWORD *)(a2 + 8);
  v7 = *(_BYTE *)(a2 + 18);
  v8 = operator new(0x14u, 0);
  glitch::video::IBuffer::IBuffer((int)v8, v3, v4, v5, v6, v7 & 1);
  *v8 = off_977FA8;
  *(_DWORD *)this = v8;
  ++v8[1];
  return this;
}


// ===== 5b93d0 glitch::video::CNullDriver::setTransform(glitch::video::E_TRANSFORMATION_STATE,glitch::core::CMatrix4<float> const&) =====
void *__fastcall glitch::video::CNullDriver::setTransform(int a1, int a2, void *a3)
{
  return memcpy((void *)(a1 + 68 * a2 + 352), a3, 0x41u);
}


// ===== 5b93ec glitch::video::CNullDriver::endScene(void) =====
int __fastcall glitch::video::CNullDriver::endScene(glitch::video::CNullDriver *this)
{
  unsigned int RealTime; // r0

  RealTime = glitch::os::Timer::getRealTime(this);
  glitch::video::CFPSCounter::registerFrame(
    (glitch::video::CNullDriver *)((char *)this + 80),
    RealTime,
    *((_DWORD *)this + 30),
    *((_DWORD *)this + 31),
    *((_DWORD *)this + 32),
    *((_DWORD *)this + 33));
  return 1;
}


// ===== 5b942c glitch::video::CNullDriver::initDriver(void) =====
glitch::IReferenceCounted *__fastcall glitch::video::CNullDriver::initDriver(glitch::video::CNullDriver *this)
{
  int v2; // r7
  glitch::IReferenceCounted *v3; // r5
  glitch::IReferenceCounted *result; // r0
  glitch::IReferenceCounted *v5; // [sp+4h] [bp-8h] BYREF

  v2 = *((_DWORD *)this + 53);
  *((_DWORD *)this + 35) = 0;
  *((_DWORD *)this + 36) = 0;
  *((_DWORD *)this + 37) = 0;
  *((_DWORD *)this + 38) = 0;
  v3 = (glitch::IReferenceCounted *)operator new(0x34u, 0);
  glitch::video::IRenderTarget::IRenderTarget(v3, this, v2 + 96);
  *((_DWORD *)v3 + 12) = 0;
  *((_DWORD *)v3 + 9) = 0;
  *(_DWORD *)v3 = off_977FD8;
  *((_DWORD *)v3 + 10) = 0;
  *((_DWORD *)v3 + 11) = 0;
  v5 = v3;
  ++*((_DWORD *)v3 + 1);
  glitch::video::IVideoDriver::pushRenderTarget((int)this, &v5);
  result = v5;
  if ( v5 )
    return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v5);
  return result;
}


// ===== 5b94d4 glitch::video::CNullDriver::~CNullDriver() =====
void __fastcall glitch::video::CNullDriver::~CNullDriver(glitch::video::CNullDriver *this)
{
  *(_DWORD *)this = off_977D48;
  glitch::video::IVideoDriver::~IVideoDriver(this);
}


// ===== 5b9508 glitch::video::CNullDriver::~CNullDriver() =====
void __fastcall glitch::video::CNullDriver::~CNullDriver(glitch::video::CNullDriver *this)
{
  glitch::video::CNullDriver::~CNullDriver(this);
  LC_API_FREE_0(this);
}


// ===== 5b9524 glitch::video::CNullDriver::~CNullDriver() =====
void __fastcall glitch::video::CNullDriver::~CNullDriver(glitch::video::CNullDriver *this)
{
  *(_DWORD *)this = off_977D48;
  glitch::video::IVideoDriver::~IVideoDriver(this);
}


// ===== 5b9558 glitch::video::CNullDriver::CTexture::CTexture(char const*,glitch::video::CNullDriver*,glitch::video::STextureDesc const&) =====
_DWORD *__fastcall glitch::video::CNullDriver::CTexture::CTexture(_DWORD *a1)
{
  glitch::video::ITexture::ITexture();
  *a1 = off_977F78;
  return a1;
}


// ===== 5b958c glitch::video::CNullDriver::createTextureImpl(char const*,glitch::video::STextureDesc const&) =====
_DWORD *__fastcall glitch::video::CNullDriver::createTextureImpl(_DWORD *a1)
{
  _DWORD *v2; // r4
  int v3; // r3
  _DWORD *result; // r0

  v2 = operator new(0x54u, 0);
  glitch::video::CNullDriver::CTexture::CTexture(v2);
  *a1 = v2;
  if ( v2 )
    v3 = v2[1];
  result = a1;
  if ( v2 )
    v2[1] = v3 + 1;
  return result;
}


// ===== 5b95dc glitch::video::CNullDriver::CTexture::CTexture(char const*,glitch::video::CNullDriver*,glitch::video::STextureDesc const&) =====
_DWORD *__fastcall glitch::video::CNullDriver::CTexture::CTexture(_DWORD *a1)
{
  glitch::video::ITexture::ITexture();
  *a1 = off_977F78;
  return a1;
}


// ===== 5b9610 glitch::video::CNullDriver::CNullDriver(glitch::video::IVideoDriver *) =====
glitch::video::CNullDriver *__fastcall glitch::video::CNullDriver::CNullDriver(
        glitch::video::CNullDriver *this,
        glitch::video::IVideoDriver *a2)
{
  int v4; // r8
  glitch::video::IShaderManager *v5; // r7
  _DWORD *v6; // r6

  v4 = *((_DWORD *)a2 + 53);
  v5 = (glitch::video::IShaderManager *)operator new(0x54u, 0);
  glitch::video::IShaderManager::IShaderManager(v5);
  *(_DWORD *)v5 = off_977FF8;
  glitch::video::IVideoDriver::IVideoDriver(
    (int)this,
    v4,
    v5,
    *((_DWORD *)a2 + 55),
    *((_DWORD *)a2 + 56),
    *((_DWORD *)a2 + 57),
    (int **)a2 + 16);
  *(_DWORD *)this = off_977D48;
  v6 = (_DWORD *)((char *)this + 352);
  do
  {
    *((_BYTE *)v6 + 64) = 0;
    LC_API_MEMSET_0(v6, 0, 0x40u);
    *v6 = 1065353216;
    v6[5] = 1065353216;
    v6[10] = 1065353216;
    v6[15] = 1065353216;
    *((_BYTE *)v6 + 64) = 1;
    v6 += 17;
  }
  while ( v6 != (_DWORD *)((char *)this + 556) );
  glitch::video::CNullDriver::initDriver(this);
  return this;
}


// ===== 5b96ec glitch::video::CNullDriver::CBuffer::~CBuffer() =====
void __fastcall glitch::video::CNullDriver::CBuffer::~CBuffer(glitch::video::CNullDriver::CBuffer *this)
{
  *(_DWORD *)this = off_977FA8;
  glitch::video::IBuffer::~IBuffer(this);
  LC_API_FREE_0(this);
}


// ===== 5b9728 glitch::video::CNullDriver::CTexture::~CTexture() =====
void __fastcall glitch::video::CNullDriver::CTexture::~CTexture(glitch::video::CNullDriver::CTexture *this)
{
  *(_DWORD *)this = off_977F78;
  glitch::video::ITexture::~ITexture(this);
  LC_API_FREE_0(this);
}


// ===== 5b9764 glitch::video::CNullDriver::CNullDriver(glitch::video::IVideoDriver *) =====
glitch::video::CNullDriver *__fastcall glitch::video::CNullDriver::CNullDriver(
        glitch::video::CNullDriver *this,
        glitch::video::IVideoDriver *a2)
{
  int v4; // r8
  glitch::video::IShaderManager *v5; // r7
  _DWORD *v6; // r6

  v4 = *((_DWORD *)a2 + 53);
  v5 = (glitch::video::IShaderManager *)operator new(0x54u, 0);
  glitch::video::IShaderManager::IShaderManager(v5);
  *(_DWORD *)v5 = off_977FF8;
  glitch::video::IVideoDriver::IVideoDriver(
    (int)this,
    v4,
    v5,
    *((_DWORD *)a2 + 55),
    *((_DWORD *)a2 + 56),
    *((_DWORD *)a2 + 57),
    (int **)a2 + 16);
  *(_DWORD *)this = off_977D48;
  v6 = (_DWORD *)((char *)this + 352);
  do
  {
    *((_BYTE *)v6 + 64) = 0;
    LC_API_MEMSET_0(v6, 0, 0x40u);
    *v6 = 1065353216;
    v6[5] = 1065353216;
    v6[10] = 1065353216;
    v6[15] = 1065353216;
    *((_BYTE *)v6 + 64) = 1;
    v6 += 17;
  }
  while ( v6 != (_DWORD *)((char *)this + 556) );
  glitch::video::CNullDriver::initDriver(this);
  return this;
}


// ===== 5b9840 glitch::video::CNullDriver::CNullDriver(glitch::IDevice *) =====
glitch::video::CNullDriver *__fastcall glitch::video::CNullDriver::CNullDriver(
        glitch::video::CNullDriver *this,
        glitch::IDevice *a2)
{
  glitch::video::IShaderManager *v4; // r6
  int *v5; // r0
  _DWORD *v7; // r6
  _DWORD *v9; // r2
  int *v10; // [sp+14h] [bp-8h] BYREF

  v4 = (glitch::video::IShaderManager *)operator new(0x54u, 0);
  glitch::video::IShaderManager::IShaderManager(v4);
  *(_DWORD *)v4 = off_977FF8;
  v10 = nullptr;
  glitch::video::IVideoDriver::IVideoDriver((int)this, (int)a2, v4, 0, 0, 0, &v10);
  v5 = v10;
  if ( v10 )
  {
    if ( (*v10)-- == 1 )
    {
      if ( !*((_BYTE *)v5 + 84) )
      {
        v9 = (_DWORD *)v5[20];
        *v9 = glitch::memory::Matrix4Pool;
        glitch::memory::Matrix4Pool = (int)v9;
      }
      v5[20] = 0;
      LC_API_FREE_0(v5);
    }
  }
  *(_DWORD *)this = off_977D48;
  v7 = (_DWORD *)((char *)this + 352);
  do
  {
    *((_BYTE *)v7 + 64) = 0;
    LC_API_MEMSET_0(v7, 0, 0x40u);
    *v7 = 1065353216;
    v7[5] = 1065353216;
    v7[10] = 1065353216;
    v7[15] = 1065353216;
    *((_BYTE *)v7 + 64) = 1;
    v7 += 17;
  }
  while ( v7 != (_DWORD *)((char *)this + 556) );
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    (_DWORD *)this + 2,
    "NullDriver",
    "");
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    (_DWORD *)this + 8,
    "Not available on this driver.",
    "");
  glitch::video::CNullDriver::initDriver(this);
  glitch::video::IVideoDriver::init(this, 1u, 1u, 0);
  return this;
}


// ===== 5b99bc glitch::video::CNullDriver::CNullDriver(glitch::IDevice *) =====
glitch::video::CNullDriver *__fastcall glitch::video::CNullDriver::CNullDriver(
        glitch::video::CNullDriver *this,
        glitch::IDevice *a2)
{
  glitch::video::IShaderManager *v4; // r6
  int *v5; // r0
  _DWORD *v7; // r6
  _DWORD *v9; // r2
  int *v10; // [sp+14h] [bp-8h] BYREF

  v4 = (glitch::video::IShaderManager *)operator new(0x54u, 0);
  glitch::video::IShaderManager::IShaderManager(v4);
  *(_DWORD *)v4 = off_977FF8;
  v10 = nullptr;
  glitch::video::IVideoDriver::IVideoDriver((int)this, (int)a2, v4, 0, 0, 0, &v10);
  v5 = v10;
  if ( v10 )
  {
    if ( (*v10)-- == 1 )
    {
      if ( !*((_BYTE *)v5 + 84) )
      {
        v9 = (_DWORD *)v5[20];
        *v9 = glitch::memory::Matrix4Pool;
        glitch::memory::Matrix4Pool = (int)v9;
      }
      v5[20] = 0;
      LC_API_FREE_0(v5);
    }
  }
  *(_DWORD *)this = off_977D48;
  v7 = (_DWORD *)((char *)this + 352);
  do
  {
    *((_BYTE *)v7 + 64) = 0;
    LC_API_MEMSET_0(v7, 0, 0x40u);
    *v7 = 1065353216;
    v7[5] = 1065353216;
    v7[10] = 1065353216;
    v7[15] = 1065353216;
    *((_BYTE *)v7 + 64) = 1;
    v7 += 17;
  }
  while ( v7 != (_DWORD *)((char *)this + 556) );
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    (_DWORD *)this + 2,
    "NullDriver",
    "");
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    (_DWORD *)this + 8,
    "Not available on this driver.",
    "");
  glitch::video::CNullDriver::initDriver(this);
  glitch::video::IVideoDriver::init(this, 1u, 1u, 0);
  return this;
}


// ===== 5b9b38 glitch::video::createNullDriver(glitch::IDevice *) =====
glitch::video::CNullDriver *__fastcall glitch::video::createNullDriver(glitch::video *this, glitch::IDevice *a2)
{
  glitch::video::CNullDriver *v3; // r4

  v3 = (glitch::video::CNullDriver *)operator new(0x22Cu, 0);
  glitch::video::CNullDriver::CNullDriver(v3, this);
  return v3;
}


// ===== 5b9b60 `global constructor keyed to'.._source_glitch_video_CNullShaderManager.cpp =====
void `global constructor keyed to'.._source_glitch_video_CNullShaderManager.cpp()
{
  dword_9F69E0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F69DC = 1056964608;
}


// ===== 5b9b80 glitch::video::CNullShaderManager::~CNullShaderManager() =====
void __fastcall glitch::video::CNullShaderManager::~CNullShaderManager(glitch::video::CNullShaderManager *this)
{
  *(_DWORD *)this = off_977FF8;
  glitch::video::IShaderManager::~IShaderManager(this);
}


// ===== 5b9bb4 glitch::video::CNullShaderManager::createEmptyShader(char const*) =====
glitch::video::CNullShaderManager *__fastcall glitch::video::CNullShaderManager::createEmptyShader(
        glitch::video::CNullShaderManager *this,
        glitch::video::CNullDriver **a2)
{
  glitch::video::CNullShader *v4; // r4
  int v5; // r3
  glitch::video::CNullShaderManager *result; // r0

  v4 = (glitch::video::CNullShader *)operator new(0x50u, 0);
  glitch::video::CNullShader::CNullShader(v4, a2[11]);
  *(_DWORD *)this = v4;
  if ( v4 )
    v5 = *((_DWORD *)v4 + 1);
  result = this;
  if ( v4 )
    *((_DWORD *)v4 + 1) = v5 + 1;
  return result;
}


// ===== 5b9bf4 glitch::video::CNullShaderManager::createShader(char const*) =====
glitch::video::CNullShaderManager *__fastcall glitch::video::CNullShaderManager::createShader(
        glitch::video::CNullShaderManager *this,
        const char *a2,
        const char *a3)
{
  unsigned int Id; // r0
  int v7; // r3
  int *v8; // r0
  int v9; // r3
  bool v10; // zf
  unsigned __int16 v12; // r8
  glitch::video::CNullShader *v13; // r6
  glitch::IReferenceCounted *v14; // r0
  glitch::IReferenceCounted *v15; // [sp+4h] [bp-4h] BYREF

  Id = glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::getId(
         a2 + 4,
         a3);
  if ( Id == 0xFFFF )
  {
    v12 = *((_WORD *)a2 + 20);
    v13 = (glitch::video::CNullShader *)operator new(0x50u, 0);
    glitch::video::CNullShader::CNullShader(v13, v12, a3, *((glitch::video::CNullDriver **)a2 + 11));
    v15 = v13;
    if ( v13 )
      ++*((_DWORD *)v13 + 1);
    glitch::video::IShaderManager::addShader(a2, &v15);
    v14 = v15;
    v10 = v15 == nullptr;
    *(_DWORD *)this = v15;
    if ( !v10 )
    {
      ++*((_DWORD *)v14 + 1);
      v14 = v15;
    }
    if ( v14 )
      glitch::IReferenceCounted::drop(v14);
  }
  else
  {
    v7 = *((_DWORD *)a2 + 7);
    if ( Id >= (*((_DWORD *)a2 + 8) - v7) >> 3 )
      v8 = &glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid;
    else
      v8 = (int *)(v7 + 8 * Id);
    v9 = *v8;
    v10 = *v8 == 0;
    *(_DWORD *)this = *v8;
    if ( !v10 )
      ++*(_DWORD *)(v9 + 4);
  }
  return this;
}


// ===== 5b9cec glitch::video::CNullShaderManager::removeUnusedShaders(void) =====
// attributes: thunk
int __fastcall glitch::video::CNullShaderManager::removeUnusedShaders(glitch::video::CNullShaderManager *this)
{
  return glitch::video::IShaderManager::removeUnusedShaders(this);
}


// ===== 5b9cf0 glitch::video::CNullShaderManager::~CNullShaderManager() =====
void __fastcall glitch::video::CNullShaderManager::~CNullShaderManager(glitch::video::CNullShaderManager *this)
{
  *(_DWORD *)this = off_977FF8;
  glitch::video::IShaderManager::~IShaderManager(this);
  LC_API_FREE_0(this);
}


// ===== 5b9d2c glitch::video::CGlobalMaterialParameterManager::grabInternal(ushort) =====
int __fastcall glitch::video::CGlobalMaterialParameterManager::grabInternal(int this, int a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(*(_DWORD *)(this + 24) + 20 * a2 + 16);
  ++*(_DWORD *)(v2 + 24);
  return this;
}


// ===== 5b9d4c glitch::video::CGlobalMaterialParameterManager::dropInternal(ushort) =====
int __fastcall glitch::video::CGlobalMaterialParameterManager::dropInternal(int this, int a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(*(_DWORD *)(this + 24) + 20 * a2 + 16);
  --*(_DWORD *)(v2 + 24);
  return this;
}


// ===== 5b9d6c boost::intrusive_ptr<glitch::video::IShader>::~intrusive_ptr() =====
glitch::IReferenceCounted **__fastcall boost::intrusive_ptr<glitch::video::IShader>::~intrusive_ptr(
        glitch::IReferenceCounted **a1)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *a1;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  return a1;
}


// ===== 5b9d8c glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::size(void) =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::size(
        int a1)
{
  return *(unsigned __int16 *)(a1 + 38);
}


// ===== 5b9d94 glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::idBegin(void) =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::idBegin(
        int a1)
{
  return *(_DWORD *)(a1 + 8);
}


// ===== 5b9d9c glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::idEnd(void) =====
void glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::idEnd()
{
  ;
}


// ===== 5b9da0 glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::get(ushort) =====
int *__fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::get(
        int a1,
        unsigned int a2)
{
  int v2; // r2

  v2 = *(_DWORD *)(a1 + 24);
  if ( a2 >= -858993459 * ((*(_DWORD *)(a1 + 28) - v2) >> 2) )
    return &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    return (int *)(v2 + 20 * a2);
}


// ===== 5b9dfc boost::intrusive_ptr<glitch::video::IShaderCode>::~intrusive_ptr() =====
glitch::IReferenceCounted **__fastcall boost::intrusive_ptr<glitch::video::IShaderCode>::~intrusive_ptr(
        glitch::IReferenceCounted **a1)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *a1;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  return a1;
}


// ===== 5b9e1c glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIDedCollection(void) =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIDedCollection(
        int result)
{
  *(_WORD *)(result + 38) = 0;
  *(_DWORD *)(result + 4) = 0;
  *(_BYTE *)result = 0;
  *(_DWORD *)(result + 8) = result;
  *(_DWORD *)(result + 12) = result;
  *(_DWORD *)(result + 16) = 0;
  *(_DWORD *)(result + 24) = 0;
  *(_DWORD *)(result + 28) = 0;
  *(_DWORD *)(result + 32) = 0;
  *(_WORD *)(result + 36) = 0;
  return result;
}


// ===== 5b9e50 glitch::video::CGlobalMaterialParameterManager::CGlobalMaterialParameterManager(glitch::video::IVideoDriver *) =====
glitch::video::CGlobalMaterialParameterManager *__fastcall glitch::video::CGlobalMaterialParameterManager::CGlobalMaterialParameterManager(
        glitch::video::CGlobalMaterialParameterManager *this,
        glitch::video::IVideoDriver *a2)
{
  glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIDedCollection((int)this);
  *((_DWORD *)this + 10) = a2;
  *((_DWORD *)this + 13) = 0;
  *((_BYTE *)this + 58) = 1;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_BYTE *)this + 56) = 1;
  *((_BYTE *)this + 57) = 1;
  return this;
}


// ===== 5b9e8c glitch::video::CGlobalMaterialParameterManager::CGlobalMaterialParameterManager(glitch::video::IVideoDriver *) =====
glitch::video::CGlobalMaterialParameterManager *__fastcall glitch::video::CGlobalMaterialParameterManager::CGlobalMaterialParameterManager(
        glitch::video::CGlobalMaterialParameterManager *this,
        glitch::video::IVideoDriver *a2)
{
  glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIDedCollection((int)this);
  *((_DWORD *)this + 10) = a2;
  *((_DWORD *)this + 13) = 0;
  *((_BYTE *)this + 58) = 1;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_BYTE *)this + 56) = 1;
  *((_BYTE *)this + 57) = 1;
  return this;
}


// ===== 5b9ec8 glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIDedCollection(void) =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIDedCollection(
        int result)
{
  *(_WORD *)(result + 38) = 0;
  *(_DWORD *)(result + 4) = 0;
  *(_BYTE *)result = 0;
  *(_DWORD *)(result + 8) = result;
  *(_DWORD *)(result + 12) = result;
  *(_DWORD *)(result + 16) = 0;
  *(_DWORD *)(result + 24) = 0;
  *(_DWORD *)(result + 28) = 0;
  *(_DWORD *)(result + 32) = 0;
  *(_WORD *)(result + 36) = 0;
  return result;
}


// ===== 5b9efc glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::getNextId(void) =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::getNextId(
        int a1)
{
  return *(unsigned __int16 *)(a1 + 36);
}


// ===== 5b9f04 glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::getProperties(ushort) =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::getProperties(
        int a1,
        int a2)
{
  return *(_DWORD *)(*(_DWORD *)(a1 + 24) + 20 * a2 + 16) + 24;
}


// ===== 5b9f1c glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::getProperties(ushort) =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::getProperties(
        int a1,
        int a2)
{
  return *(_DWORD *)(*(_DWORD *)(a1 + 24) + 20 * a2 + 16) + 24;
}


// ===== 5b9f34 glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::getMaxID(void) =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::getMaxID(
        int a1)
{
  return (unsigned __int16)(-13107 * ((*(_DWORD *)(a1 + 28) - *(_DWORD *)(a1 + 24)) >> 2) - 1);
}


// ===== 5b9f64 glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue::SIdValue(ushort) =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue::SIdValue(
        int result,
        __int16 a2)
{
  *(_WORD *)(result + 4) = a2;
  *(_DWORD *)result = 1;
  return result;
}


// ===== 5b9f74 glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue::SIdValue(ushort) =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue::SIdValue(
        int result,
        __int16 a2)
{
  *(_WORD *)(result + 4) = a2;
  *(_DWORD *)result = 1;
  return result;
}


// ===== 5b9f84 glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName::SName(char const*) =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName::SName(
        int result,
        int a2)
{
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = a2;
  return result;
}


// ===== 5b9f94 glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName::SName(char const*) =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName::SName(
        int result,
        int a2)
{
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = a2;
  return result;
}


// ===== 5b9fa4 glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName::setManaged(void) =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName::setManaged(
        int result)
{
  *(_BYTE *)(result + 4) = 1;
  return result;
}


// ===== 5b9fb0 glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName::get(void) =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName::get(
        int a1)
{
  return *(_DWORD *)a1;
}


// ===== 5b9fb8 glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry::SEntry(void) =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry::SEntry(
        int result)
{
  *(_DWORD *)(result + 16) = 0;
  *(_DWORD *)result = 0;
  *(_DWORD *)(result + 12) = -1;
  *(_WORD *)(result + 4) = 255;
  *(_BYTE *)(result + 6) = -1;
  *(_BYTE *)(result + 7) = -1;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 5b9fe4 glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry::SEntry(void) =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry::SEntry(
        int result)
{
  *(_DWORD *)(result + 16) = 0;
  *(_DWORD *)result = 0;
  *(_DWORD *)(result + 12) = -1;
  *(_WORD *)(result + 4) = 255;
  *(_BYTE *)(result + 6) = -1;
  *(_BYTE *)(result + 7) = -1;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 5ba010 glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry::SEntry(glitch::video::SShaderParameterDef const&,std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>>) =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry::SEntry(
        int result,
        int a2,
        _DWORD *a3)
{
  _DWORD *v3; // r12

  v3 = *(_DWORD **)a2;
  *(_DWORD *)result = *(_DWORD *)a2;
  if ( v3 )
    ++*v3;
  *(_WORD *)(result + 4) = *(_WORD *)(a2 + 4);
  *(_BYTE *)(result + 6) = *(_BYTE *)(a2 + 6);
  *(_BYTE *)(result + 7) = *(_BYTE *)(a2 + 7);
  *(_DWORD *)(result + 8) = *(_DWORD *)(a2 + 8);
  *(_DWORD *)(result + 12) = *(_DWORD *)(a2 + 12);
  *(_DWORD *)(result + 16) = *a3;
  return result;
}


// ===== 5ba064 glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry::SEntry(glitch::video::SShaderParameterDef const&,std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>>) =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry::SEntry(
        int result,
        int a2,
        _DWORD *a3)
{
  _DWORD *v3; // r12

  v3 = *(_DWORD **)a2;
  *(_DWORD *)result = *(_DWORD *)a2;
  if ( v3 )
    ++*v3;
  *(_WORD *)(result + 4) = *(_WORD *)(a2 + 4);
  *(_BYTE *)(result + 6) = *(_BYTE *)(a2 + 6);
  *(_BYTE *)(result + 7) = *(_BYTE *)(a2 + 7);
  *(_DWORD *)(result + 8) = *(_DWORD *)(a2 + 8);
  *(_DWORD *)(result + 12) = *(_DWORD *)(a2 + 12);
  *(_DWORD *)(result + 16) = *a3;
  return result;
}


// ===== 5ba0b8 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getThis(void) =====
void glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getThis()
{
  ;
}


// ===== 5ba0bc glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getThis(void) =====
void glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getThis()
{
  ;
}


// ===== 5ba0c0 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterBlock(void) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterBlock(
        int a1)
{
  return *(_DWORD *)(a1 + 44);
}


// ===== 5ba0c8 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterBlock(void) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterBlock(
        int a1)
{
  return *(_DWORD *)(a1 + 44);
}


// ===== 5ba0d0 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setDirty(void) =====
void glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setDirty()
{
  ;
}


// ===== 5ba0d4 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterAt(int *,float) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterAt(
        int a1,
        _DWORD *a2,
        float a3)
{
  *a2 = (int)a3;
  return (int)a3;
}


// ===== 5ba0ec glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterAt(float *,int) =====
float __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterAt(
        int a1,
        float *a2,
        int a3)
{
  *a2 = (float)a3;
  return (float)a3;
}


// ===== 5ba104 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterAt(glitch::video::SColorf *,glitch::core::vector4d<float> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterAt(
        int a1,
        _DWORD *a2,
        int *a3)
{
  int result; // r0
  int v5; // r1
  int v6; // r2
  int v7; // r3
  _DWORD *v8; // t0

  result = *a3;
  v5 = a3[1];
  v8 = a3 + 2;
  v6 = a3[2];
  v7 = v8[1];
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}


// ===== 5ba114 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterAt(glitch::core::vector4d<float> *,glitch::video::SColorf const&) =====
void __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterAt(
        int a1,
        _DWORD *a2,
        _DWORD *a3)
{
  *a2 = *a3;
  a2[1] = a3[1];
  a2[2] = a3[2];
  a2[3] = a3[3];
}


// ===== 5ba138 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterAt(int const*,float &) =====
float __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterAt(
        int a1,
        int *a2,
        float *a3)
{
  float result; // r0

  result = (float)*a2;
  *a3 = result;
  return result;
}


// ===== 5ba150 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterAt(float const*,int &) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterAt(
        int a1,
        float *a2,
        int *a3)
{
  int result; // r0

  result = (int)*a2;
  *a3 = result;
  return result;
}


// ===== 5ba168 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterAt(glitch::video::SColorf const*,glitch::core::vector4d<float> &) =====
void __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterAt(
        int a1,
        _DWORD *a2,
        _DWORD *a3)
{
  *a3 = *a2;
  a3[1] = a2[1];
  a3[2] = a2[2];
  a3[3] = a2[3];
}


// ===== 5ba18c glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterAt(glitch::core::vector4d<float> const*,glitch::video::SColorf &) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterAt(
        int a1,
        int *a2,
        _DWORD *a3)
{
  int result; // r0
  int v5; // r1
  int v6; // r2
  int v7; // r3
  _DWORD *v8; // t0

  result = *a2;
  v8 = a2 + 1;
  v5 = a2[1];
  v6 = *++v8;
  v7 = v8[1];
  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  return result;
}


// ===== 5ba19c glitch::core::CMatrix4<float>::isIdentity(void) =====
int __fastcall glitch::core::CMatrix4<float>::isIdentity(int a1)
{
  int v1; // r5
  int v2; // r6
  int v3; // r4

  v1 = *(unsigned __int8 *)(a1 + 64);
  if ( *(_BYTE *)(a1 + 64) )
    return 1;
  if ( (float)(*(float *)a1 + 0.000001) >= 1.0
    && (float)(*(float *)a1 - 0.000001) <= 1.0
    && (float)(*(float *)(a1 + 20) + 0.000001) >= 1.0
    && (float)(*(float *)(a1 + 20) - 0.000001) <= 1.0
    && (float)(*(float *)(a1 + 40) + 0.000001) >= 1.0
    && (float)(*(float *)(a1 + 40) - 0.000001) <= 1.0
    && (float)(*(float *)(a1 + 60) + 0.000001) >= 1.0
    && (float)(*(float *)(a1 + 60) - 0.000001) <= 1.0 )
  {
    v2 = a1;
LABEL_12:
    v3 = 0;
    while ( v3 == v1 || COERCE_FLOAT(*(_DWORD *)(v2 + 4 * v3) & 0x7FFFFFFF) <= 0.000001 )
    {
      if ( ++v3 == 4 )
      {
        ++v1;
        v2 += 16;
        if ( v1 != 4 )
          goto LABEL_12;
        *(_BYTE *)(a1 + 64) = 1;
        return 1;
      }
    }
  }
  return 0;
}


// ===== 5ba324 std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::seekoff(long,int,int) =====
int *__fastcall std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::seekoff(
        int *result,
        _DWORD *a2,
        int a3,
        int a4,
        int a5)
{
  unsigned int v5; // r12
  int v6; // r4
  int v7; // r12
  int v8; // r5
  int v9; // r3
  int v10; // r3
  int v11; // r2
  int v12; // r3
  int v13; // r4
  int v14; // r3
  int v15; // r12

  v5 = a5 & a2[8];
  v6 = (v5 >> 3) & 1;
  v7 = (v5 >> 4) & 1;
  if ( v6 )
  {
    if ( !a2[2] )
    {
LABEL_7:
      *result = -1;
      result[1] = 0;
      return result;
    }
    if ( !v7 )
    {
      if ( a4 != 2 )
        goto LABEL_5;
      goto LABEL_12;
    }
  }
  else if ( !v7 )
  {
    *result = -1;
    result[1] = 0;
    return result;
  }
  if ( !a2[5] )
    goto LABEL_7;
  if ( a4 != 2 )
  {
LABEL_5:
    if ( a4 == 4 )
    {
      v10 = a2[13] - a2[14];
    }
    else
    {
      if ( a4 != 1 )
        goto LABEL_7;
      v10 = 0;
    }
    goto LABEL_21;
  }
LABEL_12:
  if ( v6 )
  {
    v8 = a2[2];
    v9 = a2[1];
  }
  else
  {
    v8 = a2[5];
    v9 = a2[4];
  }
  if ( !a3 )
    result[1] = 0;
  v10 = v8 - v9;
  if ( !a3 )
  {
    *result = v10;
    return result;
  }
LABEL_21:
  v11 = v10 + a3;
  if ( v6 )
  {
    v12 = a2[1];
    if ( (v11 > a2[3] - v12) | ((unsigned int)v11 >> 31) )
      goto LABEL_7;
    v13 = a2[3];
    a2[2] = v12 + v11;
    a2[3] = v13;
  }
  if ( v7 )
  {
    v14 = a2[4];
    if ( (v11 > a2[6] - v14) | ((unsigned int)v11 >> 31) )
      goto LABEL_7;
    v15 = a2[6];
    a2[5] = v14 + v11;
    a2[6] = v15;
  }
  *result = v11;
  result[1] = 0;
  return result;
}


// ===== 5ba470 std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::seekpos(std::fpos<mbstate_t>,int) =====
int *__fastcall std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::seekpos(
        int *result,
        _DWORD *a2,
        int a3,
        int a4,
        int a5)
{
  unsigned int v5; // r12
  int v6; // r4
  int v7; // r12
  int v8; // r5
  int v9; // r4
  int v10; // r12
  int v11; // r4

  v5 = a5 & a2[8];
  v6 = (v5 >> 3) & 1;
  v7 = (v5 >> 4) & 1;
  if ( v6 )
  {
    if ( !a2[2] )
      goto LABEL_7;
    if ( !v7 )
      goto LABEL_4;
  }
  else if ( !v7 )
  {
    *result = -1;
    result[1] = 0;
    return result;
  }
  if ( !a2[5] )
    goto LABEL_7;
  if ( v6 )
  {
LABEL_4:
    if ( a3 < 0 )
      goto LABEL_7;
    v8 = a2[1];
    v9 = a2[3];
    if ( v9 - v8 < a3 )
      goto LABEL_7;
    a2[2] = v8 + a3;
    a2[3] = v9;
  }
  if ( v7 )
  {
    if ( a3 >= 0 )
    {
      v10 = a2[14];
      if ( a3 <= (unsigned int)(a2[13] - v10) )
      {
        v11 = a2[13];
        a2[5] = v10 + a3;
        a2[6] = v11;
        a2[4] = v10;
        goto LABEL_16;
      }
    }
LABEL_7:
    *result = -1;
    result[1] = 0;
    return result;
  }
LABEL_16:
  *result = a3;
  result[1] = a4;
  return result;
}


// ===== 5ba554 std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::underflow(void) =====
int __fastcall std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::underflow(
        int a1)
{
  unsigned __int8 *v1; // r3

  v1 = *(unsigned __int8 **)(a1 + 8);
  if ( v1 == *(unsigned __int8 **)(a1 + 12) )
    return -1;
  else
    return *v1;
}


// ===== 5ba56c std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::uflow(void) =====
int __fastcall std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::uflow(
        int a1)
{
  unsigned __int8 *v1; // r2
  unsigned __int8 *v2; // r1
  bool v4; // zf
  int result; // r0
  int v6; // t1

  v1 = *(unsigned __int8 **)(a1 + 8);
  v2 = *(unsigned __int8 **)(a1 + 12);
  v4 = v1 == v2;
  if ( v1 == v2 )
  {
    result = -1;
  }
  else
  {
    v6 = *v1++;
    result = v6;
  }
  if ( !v4 )
    *(_DWORD *)(a1 + 8) = v1;
  return result;
}


// ===== 5ba58c std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::pbackfail(int) =====
int __fastcall std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::pbackfail(
        _DWORD *a1,
        int a2)
{
  int v2; // r2
  int v3; // r4

  v2 = a1[2];
  if ( v2 == a1[1] )
    return -1;
  if ( a2 != -1 )
  {
    v3 = v2 - 1;
    if ( (unsigned __int8)a2 == *(unsigned __int8 *)(v2 - 1) )
    {
      a1[2] = v3;
      return a2;
    }
    if ( (a1[8] & 0x10) != 0 )
    {
      a1[2] = v3;
      *(_BYTE *)(v2 - 1) = a2;
      return a2;
    }
    return -1;
  }
  a1[2] = v2 - 1;
  return 0;
}


// ===== 5ba5f8 glitch::video::SShaderParameterDef::~SShaderParameterDef() =====
void __fastcall glitch::video::SShaderParameterDef::~SShaderParameterDef(glitch::video::SShaderParameterDef *this)
{
  _DWORD *v1; // r0

  v1 = *(_DWORD **)this;
  if ( v1 )
  {
    if ( (*v1)-- == 1 )
      glitch::core::detail::SSharedStringHeapEntry::SData::release(v1);
  }
}


// ===== 5ba62c glitch::video::detail::getMatrixParameter(glitch::core::CMatrix4<float> const* const*,glitch::core::CMatrix4<float>&) =====
void *__fastcall glitch::video::detail::getMatrixParameter(const void **a1, void *a2)
{
  if ( *a1 )
    return memcpy(a2, *a1, 0x41u);
  else
    return memcpy(a2, &glitch::core::IdentityMatrix, 0x41u);
}


// ===== 5ba66c glitch::io::IAttributes::addEnum<glitch::video::E_SHADER_PARAMETER_VALUE_TYPE>(char const*,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE,bool) =====
int __fastcall glitch::io::IAttributes::addEnum<glitch::video::E_SHADER_PARAMETER_VALUE_TYPE>(
        int a1,
        int a2,
        int a3,
        int a4)
{
  int StringsInternal; // r0

  StringsInternal = glitch::video::getStringsInternal(0);
  return (*(int (__fastcall **)(int, int, int, int, int))(*(_DWORD *)a1 + 244))(a1, a2, a3, StringsInternal, a4);
}


// ===== 5ba6b4 std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
        _DWORD *a1,
        unsigned int a2)
{
  unsigned int v3; // r4
  unsigned int result; // r0

  v3 = -858993459 * ((a1[1] - *a1) >> 2);
  if ( 214748364 - v3 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer("vector");
  if ( v3 < a2 )
    result = v3 + a2;
  else
    result = 2 * v3;
  if ( result > 0xCCCCCCC || result < v3 )
    return 214748364;
  return result;
}


// ===== 5ba734 std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::str(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
__int64 __fastcall std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::str(
        int a1,
        int a2)
{
  _DWORD *v3; // r0
  int v4; // r3
  __int64 result; // r0
  int v6; // r2
  int v7; // r12

  v3 = (_DWORD *)(a1 + 36);
  if ( v3 != (_DWORD *)a2 )
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v3,
      *(_BYTE **)(a2 + 20),
      *(_BYTE **)(a2 + 16));
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


// ===== 5ba7b0 glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName::operator<(glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const&) =====
unsigned int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName::operator<(
        const char **a1,
        const char **a2)
{
  return (unsigned int)LC_API_STRCMP_0(*a1, *a2) >> 31;
}


// ===== 5ba7c8 glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName::~SName() =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName::~SName(
        int a1)
{
  void *v2; // r0

  if ( *(_BYTE *)(a1 + 4) )
  {
    v2 = *(void **)a1;
    if ( v2 )
      operator delete[](v2);
  }
  return a1;
}


// ===== 5ba7f4 glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName::~SName() =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName::~SName(
        int a1)
{
  void *v2; // r0

  if ( *(_BYTE *)(a1 + 4) )
  {
    v2 = *(void **)a1;
    if ( v2 )
      operator delete[](v2);
  }
  return a1;
}


// ===== 5ba820 glitch::video::CGlobalMaterialParameterManager::pack(void) =====
void __fastcall glitch::video::CGlobalMaterialParameterManager::pack(
        glitch::video::CGlobalMaterialParameterManager *this)
{
  int v2; // r1
  void *v3; // r0
  size_t v4; // r5
  char *v5; // r6
  char *v6; // r5

  if ( *((_BYTE *)this + 56) )
  {
    v2 = *((unsigned __int8 *)this + 57);
    if ( !*((_BYTE *)this + 57) )
    {
      v3 = *((void **)this + 11);
      v4 = *((_DWORD *)this + 12) - (_DWORD)v3;
      if ( v4 )
      {
        v5 = (char *)operator new[](v4, v2);
        memcpy(v5, *((const void **)this + 11), v4);
        v3 = *((void **)this + 11);
      }
      else
      {
        v5 = nullptr;
      }
      v6 = &v5[v4];
      *((_BYTE *)this + 57) = 1;
      *((_DWORD *)this + 12) = v6;
      *((_DWORD *)this + 11) = v5;
      *((_DWORD *)this + 13) = v6;
      if ( v3 )
        operator delete[](v3);
    }
  }
}


// ===== 5ba8a0 glitch::video::CGlobalMaterialParameterManager::setAutoPacking(bool) =====
void __fastcall glitch::video::CGlobalMaterialParameterManager::setAutoPacking(
        glitch::video::CGlobalMaterialParameterManager *this,
        int a2)
{
  int v2; // r2

  v2 = *((unsigned __int8 *)this + 58);
  if ( a2 != v2 )
  {
    *((_BYTE *)this + 58) = a2;
    if ( a2 )
    {
      if ( !v2 )
        glitch::video::CGlobalMaterialParameterManager::pack(this);
    }
  }
}


// ===== 5ba8c4 `global constructor keyed to'.._source_glitch_video_CGlobalMaterialParameterManager.cpp =====
int `global constructor keyed to'.._source_glitch_video_CGlobalMaterialParameterManager.cpp()
{
  int result; // r0

  dword_9F69EC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F69E8 = 1056964608;
  if ( (`guard variable for'glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid
      & 1) == 0 )
  {
    `guard variable for'glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid = 1;
    glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid = 0;
    dword_9F69FC = -1;
    word_9F69F4 = 255;
    byte_9F69F6 = -1;
    byte_9F69F7 = -1;
    dword_9F69F8 = -1;
    result = _aeabi_atexit(
               (int)&glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid,
               (int)glitch::video::SShaderParameterDef::~SShaderParameterDef,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid
      & 1) == 0 )
  {
    `guard variable for'glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid = 1;
    glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid = 0;
    result = _aeabi_atexit(
               (int)&glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid,
               (int)boost::intrusive_ptr<glitch::video::IShader>::~intrusive_ptr,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>,unsigned short,false,glitch::video::detail::texturemanager::STextureProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid
      & 1) == 0 )
  {
    `guard variable for'glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>,unsigned short,false,glitch::video::detail::texturemanager::STextureProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid = 1;
    glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>,unsigned short,false,glitch::video::detail::texturemanager::STextureProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid = 0;
    result = _aeabi_atexit(
               (int)&glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>,unsigned short,false,glitch::video::detail::texturemanager::STextureProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid,
               (int)boost::intrusive_ptr<glitch::video::ITexture>::~intrusive_ptr,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid
      & 1) == 0 )
  {
    `guard variable for'glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid = 1;
    glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid = 0;
    result = _aeabi_atexit(
               (int)&glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid,
               (int)boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid
      & 1) == 0 )
  {
    glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid = 0;
    `guard variable for'glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid = 1;
    return _aeabi_atexit(
             (int)&glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid,
             (int)boost::intrusive_ptr<glitch::video::IShaderCode>::~intrusive_ptr,
             (int)&_dso_handle);
  }
  return result;
}


// ===== 5baa94 glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&,glitch::core::CMatrix4<float>::eConstructor) [clone] =====
_BYTE *__fastcall glitch::core::CMatrix4<float>::CMatrix4(_BYTE *a1, const void *a2)
{
  a1[64] = 0;
  memcpy(a1, a2, 0x41u);
  return a1;
}


// ===== 5baab4 glitch::io::IAttributes::addEnum<glitch::video::E_SHADER_PARAMETER_TYPE>(char const*,glitch::video::E_SHADER_PARAMETER_TYPE,bool) [clone] =====
int __fastcall glitch::io::IAttributes::addEnum<glitch::video::E_SHADER_PARAMETER_TYPE>(int a1, int a2, int a3)
{
  int StringsInternal; // r0

  StringsInternal = glitch::video::getStringsInternal(0);
  return (*(int (__fastcall **)(int, char *, int, int, int))(*(_DWORD *)a1 + 244))(a1, "Type", a2, StringsInternal, a3);
}


// ===== 5bab00 std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_stringstream(int) [clone] =====
int __fastcall std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_stringstream(
        int a1)
{
  int v1; // r8
  int v3; // r3
  int v4; // r3
  _BYTE *v5; // r3
  int v6; // r2

  v1 = a1 + 72;
  __ZNSt8ios_baseC2Ev_veneer((std::ios_base *const)(a1 + 72));
  *(_DWORD *)(a1 + 72) = off_95B8E0;
  *(_BYTE *)(v1 + 68) = 0;
  *(_DWORD *)(v1 + 72) = 0;
  *(_DWORD *)(v1 + 76) = 0;
  *(_DWORD *)a1 = off_9780CC;
  *(int *)((char *)&dword_48 + a1) = (int)off_9780E0;
  v3 = *(_DWORD *)a1;
  *(_DWORD *)(a1 + 4) = 0;
  std::ios::init(a1 + *(_DWORD *)(v3 - 12), 0, (int)off_9780E0, v3);
  *(_DWORD *)(a1 + 8) = off_9780F4;
  *(int *)((char *)&dword_40 + a1 + 8) = (int)off_978108;
  std::ios::init(a1 + 8 + *(_DWORD *)(*(_DWORD *)(a1 + 8) - 12), 0, *(_DWORD *)(a1 + 8), a1 + 8);
  *(_DWORD *)a1 = off_97808C;
  *(int *)((char *)&dword_48 + a1) = (int)off_9780B4;
  v4 = *(_DWORD *)a1;
  *(_DWORD *)(a1 + 8) = off_9780A0;
  std::ios::init(a1 + *(_DWORD *)(v4 - 12), 0, (int)off_9780A0, v4);
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)a1 = off_97804C;
  *(_DWORD *)(a1 + 72) = off_978074;
  *(_DWORD *)(a1 + 8) = off_978060;
  *(_DWORD *)(a1 + 12) = off_95B938;
  *(_DWORD *)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  __ZNSt6localeC1Ev_veneer((std::locale *const)(a1 + 40));
  *(_DWORD *)(a1 + 44) = 24;
  *(_DWORD *)(a1 + 12) = off_978118;
  *(_DWORD *)(a1 + 64) = a1 + 48;
  *(_DWORD *)(a1 + 68) = a1 + 48;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 48),
    0x10u);
  v5 = *(_BYTE **)(a1 + 64);
  *v5 = 0;
  std::ios::init(v1, a1 + 12, v6, (int)v5);
  return a1;
}


// ===== 5bac80 boost::pool<glitch::core::SAlignedMalloc<(uchar)4>>::malloc_need_resize(void) [clone] =====
int boost::pool<glitch::core::SAlignedMalloc<(unsigned char)4>>::malloc_need_resize()
{
  unsigned int v0; // r4
  unsigned int v1; // r0
  unsigned int v2; // r3
  unsigned int v3; // r7
  int v4; // r9
  void *v5; // r0
  unsigned int v6; // r5
  unsigned int v7; // r0
  _DWORD *v8; // r12
  int v9; // r7
  _DWORD *v10; // r2
  _DWORD *v11; // r0
  _DWORD *v12; // r3
  char *v13; // r1
  int result; // r0

  v0 = 4;
  v1 = dword_9F75A4;
  do
  {
    v2 = v0;
    v0 = v1 % v0;
    v1 = v2;
  }
  while ( v0 );
  v3 = 4 * (dword_9F75A4 / v2);
  v4 = dword_9F75A8 * v3;
  v5 = GlitchAlloc(dword_9F75A8 * v3 + 15, 0);
  v6 = ((unsigned int)v5 + 7) & 0xFFFFFFFC;
  *(_DWORD *)(v6 - 4) = v5;
  if ( !v6 )
    return 0;
  dword_9F75A8 *= 2;
  v7 = v3 * ((v4 - v3) / v3);
  v8 = (_DWORD *)(v6 + v7);
  *(_DWORD *)(v6 + v7) = glitch::memory::Matrix4Pool;
  if ( v6 != v6 + v7 )
  {
    v9 = -v3;
    v10 = (_DWORD *)((char *)v8 + v9);
    if ( (_DWORD *)v6 == (_DWORD *)((char *)v8 + v9) )
    {
      v11 = (_DWORD *)v6;
    }
    else
    {
      v12 = (_DWORD *)((char *)v10 + v9);
      v13 = (char *)v10 + v9;
      while ( 1 )
      {
        v13 += v9;
        *v10 = v8;
        v11 = v12;
        if ( (char *)v6 == &v13[-v9] )
          break;
        v8 = v10;
        v10 = v12;
        v12 = (_DWORD *)((char *)v12 + v9);
      }
      v8 = v10;
    }
    *v11 = v8;
  }
  glitch::memory::Matrix4Pool = v6;
  *(_DWORD *)(v6 + v4) = dword_9F759C;
  *(_DWORD *)(v6 + v4 + 4) = dword_9F75A0;
  result = glitch::memory::Matrix4Pool;
  dword_9F759C = v6;
  dword_9F75A0 = v4 + 8;
  glitch::memory::Matrix4Pool = *(_DWORD *)glitch::memory::Matrix4Pool;
  return result;
}


// ===== 5badb8 glitch::video::detail::setMatrixParameter(glitch::core::CMatrix4<float> **,glitch::core::CMatrix4<float> const&,glitch::core::SAllocator<glitch::core::CMatrix4<float>,(glitch::memory::E_MEMORY_HINT)0>) =====
_BYTE *__fastcall glitch::video::detail::setMatrixParameter(_BYTE **a1, _BYTE *a2)
{
  _BYTE *result; // r0
  _BYTE *v5; // r6

  result = *a1;
  if ( result )
  {
    if ( a2[64] )
    {
      *(_DWORD *)result = glitch::memory::Matrix4Pool;
      glitch::memory::Matrix4Pool = (int)result;
      *a1 = nullptr;
    }
    else
    {
      return memcpy(result, a2, 0x41u);
    }
  }
  else if ( !a2[64] )
  {
    v5 = (_BYTE *)glitch::memory::Matrix4Pool;
    if ( glitch::memory::Matrix4Pool )
      glitch::memory::Matrix4Pool = *(_DWORD *)glitch::memory::Matrix4Pool;
    else
      v5 = (_BYTE *)boost::pool<glitch::core::SAlignedMalloc<(unsigned char)4>>::malloc_need_resize();
    result = glitch::core::CMatrix4<float>::CMatrix4(v5, a2);
    *a1 = v5;
  }
  return result;
}


// ===== 5bae64 std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) [clone] =====
_DWORD *__fastcall std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        int a3,
        const char **a4,
        int a5)
{
  _DWORD *v7; // r0
  _DWORD *v8; // r6
  __int16 v9; // r3
  int v10; // r2
  __int16 v11; // r3
  unsigned int v13; // r7
  _DWORD *v14; // r0
  __int16 v15; // r3
  const char **v16; // [sp+0h] [bp-Ch]
  const char **v17; // [sp+0h] [bp-Ch]
  const char **v18; // [sp+0h] [bp-Ch]
  int v19; // [sp+4h] [bp-8h]
  int v20; // [sp+4h] [bp-8h]
  int v21; // [sp+4h] [bp-8h]

  if ( a2 == (_DWORD *)a3 )
  {
    v20 = a3;
    v17 = a4;
    v8 = GlitchAlloc(0x20u, 0);
    v8[4] = *v17;
    *((_BYTE *)v8 + 20) = *((_BYTE *)v17 + 4);
    v8[6] = v17[2];
    v11 = *((_WORD *)v17 + 6);
    v8[3] = 0;
    v8[2] = 0;
    *((_WORD *)v8 + 14) = v11;
    a2[2] = v8;
    a2[1] = v8;
    a2[3] = v8;
    v10 = v20;
  }
  else if ( a5
         || (v21 = a3,
             v18 = a4,
             v13 = glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName::operator<(
                     a4,
                     (const char **)(a3 + 16)),
             a3 = v21,
             a4 = v18,
             v13) )
  {
    v19 = a3;
    v16 = a4;
    v7 = GlitchAlloc(0x20u, 0);
    v8 = v7;
    v7[4] = *v16;
    *((_BYTE *)v7 + 20) = *((_BYTE *)v16 + 4);
    v7[6] = v16[2];
    v9 = *((_WORD *)v16 + 6);
    v7[3] = 0;
    v7[2] = 0;
    *((_WORD *)v7 + 14) = v9;
    v10 = v19;
    *(_DWORD *)(v19 + 8) = v7;
    if ( v19 == a2[2] )
      a2[2] = v7;
  }
  else
  {
    v14 = GlitchAlloc(0x20u, 0);
    v8 = v14;
    v14[4] = *v18;
    *((_BYTE *)v14 + 20) = *((_BYTE *)v18 + 4);
    v14[6] = v18[2];
    v15 = *((_WORD *)v18 + 6);
    v14[3] = 0;
    v14[2] = 0;
    *((_WORD *)v14 + 14) = v15;
    v10 = v21;
    *(_DWORD *)(v21 + 12) = v14;
    if ( v21 == a2[3] )
      a2[3] = v14;
  }
  v8[1] = v10;
  std::priv::_Rb_global<bool>::_Rebalance((int)v8, a2 + 1);
  ++a2[4];
  *a1 = v8;
  return a1;
}


// ===== 5bafec glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterDef(ushort) =====
int *__fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterDef(
        int a1,
        unsigned int a2)
{
  int v2; // r2
  _DWORD *v3; // r2

  v2 = *(_DWORD *)(a1 + 24);
  if ( a2 >= -858993459 * ((*(_DWORD *)(a1 + 28) - v2) >> 2) )
  {
    if ( glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid )
      return &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
    else
      return nullptr;
  }
  else
  {
    v3 = (_DWORD *)(v2 + 20 * a2);
    if ( *v3 )
      return v3;
    else
      return nullptr;
  }
}


// ===== 5bb060 std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue> const&) =====
int __fastcall std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
        int a1,
        _DWORD *a2,
        const char **a3)
{
  int v3; // r5
  const char *v7; // r10
  const char *v8; // r8
  int v9; // r0
  int v10; // r3
  int v11; // r9
  int v13; // r2
  int v14; // r9
  int v15; // r3
  _DWORD *v16; // r3
  int v17; // r3
  int v18; // [sp+8h] [bp-8h] BYREF
  int v19; // [sp+Ch] [bp-4h] BYREF

  v3 = a2[1];
  if ( v3 )
  {
    v7 = *a3;
    while ( 1 )
    {
      v8 = *(const char **)(v3 + 16);
      v9 = LC_API_STRCMP_0(v7, v8);
      v10 = v9 >= 0 ? *(_DWORD *)(v3 + 12) : *(_DWORD *)(v3 + 8);
      if ( !v10 )
        break;
      v3 = v10;
    }
    if ( v9 >= 0 )
    {
      v11 = v3;
      goto LABEL_12;
    }
  }
  else
  {
    v3 = (int)a2;
  }
  if ( v3 == a2[2] )
  {
    std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
      &v19,
      a2,
      v3,
      a3,
      v3);
    v17 = v19;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v17;
    return a1;
  }
  if ( !*(_BYTE *)v3 && v3 == *(_DWORD *)(*(_DWORD *)(v3 + 4) + 4) )
  {
    v7 = *a3;
    v11 = *(_DWORD *)(v3 + 12);
    v8 = *(const char **)(v11 + 16);
  }
  else
  {
    v13 = *(_DWORD *)(v3 + 8);
    if ( v13 )
    {
      while ( *(_DWORD *)(v13 + 12) )
        v13 = *(_DWORD *)(v13 + 12);
      v14 = v13;
      if ( LC_API_STRCMP_0(*(const char **)(v13 + 16), *a3) >= 0 )
      {
        *(_DWORD *)a1 = v14;
        *(_BYTE *)(a1 + 4) = 0;
        return a1;
      }
LABEL_25:
      std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
        &v18,
        a2,
        v3,
        a3,
        0);
      v15 = v18;
      *(_BYTE *)(a1 + 4) = 1;
      *(_DWORD *)a1 = v15;
      return a1;
    }
    v16 = *(_DWORD **)(v3 + 4);
    if ( v3 == v16[2] )
    {
      while ( 1 )
      {
        v11 = v16[1];
        if ( *(_DWORD **)(v11 + 8) != v16 )
          break;
        v16 = (_DWORD *)v16[1];
      }
      v7 = *a3;
      v8 = *(const char **)(v11 + 16);
    }
    else
    {
      v11 = *(_DWORD *)(v3 + 4);
      v7 = *a3;
      v8 = (const char *)v16[4];
    }
  }
LABEL_12:
  if ( LC_API_STRCMP_0(v8, v7) < 0 )
    goto LABEL_25;
  *(_DWORD *)a1 = v11;
  *(_BYTE *)(a1 + 4) = 0;
  return a1;
}


// ===== 5bb218 std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::_M_find<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>(glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const&) =====
int __fastcall std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::_M_find<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>(
        int a1,
        const char **a2)
{
  int v2; // r4
  const char *v4; // r5
  int v5; // r6
  int v6; // r0

  v2 = *(_DWORD *)(a1 + 4);
  if ( !v2 )
    return a1;
  v4 = *a2;
  v5 = a1;
  do
  {
    v6 = LC_API_STRCMP_0(*(const char **)(v2 + 16), v4);
    if ( v6 < 0 )
      v2 = *(_DWORD *)(v2 + 12);
    else
      v5 = v2;
    if ( v6 >= 0 )
      v2 = *(_DWORD *)(v2 + 8);
  }
  while ( v2 );
  if ( v5 != a1 && LC_API_STRCMP_0(v4, *(const char **)(v5 + 16)) < 0 )
    return a1;
  return v5;
}


// ===== 5bb280 glitch::video::detail::grabParameter<boost::intrusive_ptr<glitch::video::ITexture>>(boost::intrusive_ptr<glitch::video::ITexture> *,uint) =====
glitch::IReferenceCounted *__fastcall glitch::video::detail::grabParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
        glitch::IReferenceCounted *result,
        int a2)
{
  glitch::IReferenceCounted **v2; // r5
  glitch::IReferenceCounted **v3; // r4
  glitch::IReferenceCounted *v4; // r3

  v2 = (glitch::IReferenceCounted **)((char *)result + 4 * a2);
  v3 = (glitch::IReferenceCounted **)result;
  if ( result != (glitch::IReferenceCounted *)v2 )
  {
    do
    {
      v4 = *v3;
      *v3 = nullptr;
      if ( v4 )
        ++*((_DWORD *)v4 + 1);
      result = *v3;
      *v3++ = v4;
      if ( result )
        result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
    }
    while ( v2 != v3 );
  }
  return result;
}


// ===== 5bb2d4 std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        int a2)
{
  int v2; // r4
  int v4; // r6
  void *v5; // r0

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(_DWORD *)(v2 + 8);
      if ( *(_BYTE *)(v2 + 20) )
      {
        v5 = *(void **)(v2 + 16);
        if ( v5 )
          operator delete[](v5);
      }
      GlitchFree((void *)v2);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 5bb324 std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::erase(std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>>) =====
void __fastcall std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::erase(
        int a1,
        unsigned __int8 **a2)
{
  unsigned __int8 *v3; // r0
  unsigned __int8 *v4; // r5
  void *v5; // r0

  v3 = std::priv::_Rb_global<bool>::_Rebalance_for_erase(
         *a2,
         (unsigned __int8 **)(a1 + 4),
         (unsigned __int8 **)(a1 + 8),
         (unsigned __int8 **)(a1 + 12));
  v4 = v3;
  if ( v3[20] )
  {
    v5 = *((void **)v3 + 4);
    if ( v5 )
      operator delete[](v5);
  }
  GlitchFree(v4);
  --*(_DWORD *)(a1 + 16);
}


// ===== 5bb378 glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::getId(char const*) =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::getId(
        int a1,
        void *a2)
{
  int v3; // r5
  void *v5; // [sp+0h] [bp-Ch] BYREF
  char v6; // [sp+4h] [bp-8h]

  v5 = a2;
  v6 = 0;
  v3 = std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::_M_find<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>(
         a1,
         (const char **)&v5);
  if ( v6 && v5 )
    operator delete[](v5);
  if ( v3 == a1 )
    return 0xFFFF;
  else
    return *(unsigned __int16 *)(v3 + 28);
}


// ===== 5bb3cc glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::rename(ushort,char const*,bool) =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::rename(
        _DWORD *a1,
        unsigned int a2,
        void *a3,
        int a4)
{
  int v5; // r6
  int v6; // r0
  _DWORD *v8; // r6
  char v9; // r2
  int v10; // r3
  int result; // r0
  void *v12; // [sp+4h] [bp-28h] BYREF
  char v13; // [sp+8h] [bp-24h]
  int v14; // [sp+Ch] [bp-20h]
  __int16 v15; // [sp+10h] [bp-1Ch]
  void *v16; // [sp+14h] [bp-18h]
  char v17; // [sp+18h] [bp-14h]
  int v18; // [sp+1Ch] [bp-10h] BYREF
  char v19; // [sp+20h] [bp-Ch]
  unsigned __int8 *v20; // [sp+24h] [bp-8h] BYREF

  v5 = a1[7];
  v6 = a1[6];
  if ( a2 >= -858993459 * ((v5 - v6) >> 2) )
    return 0;
  v8 = (_DWORD *)(v6 + 20 * a2);
  if ( !*v8 )
    return 0;
  v15 = a2;
  v13 = 0;
  v17 = 0;
  v12 = a3;
  v14 = 1;
  v16 = a3;
  std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)&v18,
    a1,
    (const char **)&v12);
  if ( v13 && v12 )
    operator delete[](v12);
  if ( !v19 )
    return 0;
  v20 = (unsigned __int8 *)v8[4];
  std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::erase(
    (int)a1,
    &v20);
  if ( a4 )
  {
    v10 = v18;
    v9 = 1;
  }
  result = 1;
  if ( a4 )
    *(_BYTE *)(v10 + 20) = v9;
  v8[4] = v18;
  return result;
}


// ===== 5bb4c0 std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
char **__fastcall std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        void **a1)
{
  char *v1; // r4
  char *v2; // r5
  _DWORD *v4; // r0

  v1 = (char *)a1[1];
  v2 = (char *)*a1;
  if ( v1 != *a1 )
  {
    do
    {
      v4 = *((_DWORD **)v1 - 5);
      v1 -= 20;
      if ( v4 )
      {
        if ( (*v4)-- == 1 )
          glitch::core::detail::SSharedStringHeapEntry::SData::release(v4);
      }
    }
    while ( v2 != v1 );
  }
  if ( *a1 )
    GlitchFree(*a1);
  return (char **)a1;
}


// ===== 5bb520 glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::~SIDedCollection() =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::~SIDedCollection(
        int a1)
{
  std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)(a1 + 24));
  if ( *(_DWORD *)(a1 + 16) )
  {
    std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      a1,
      *(_DWORD *)(a1 + 4));
    *(_DWORD *)(a1 + 16) = 0;
    *(_DWORD *)(a1 + 4) = 0;
    *(_DWORD *)(a1 + 8) = a1;
    *(_DWORD *)(a1 + 12) = a1;
  }
  return a1;
}


// ===== 5bb560 glitch::video::CGlobalMaterialParameterManager::~CGlobalMaterialParameterManager() =====
void __fastcall glitch::video::CGlobalMaterialParameterManager::~CGlobalMaterialParameterManager(
        glitch::video::CGlobalMaterialParameterManager *this)
{
  void *v2; // r0

  v2 = *((void **)this + 11);
  if ( v2 )
    operator delete[](v2);
  glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::~SIDedCollection((int)this);
}


// ===== 5bb588 glitch::video::CGlobalMaterialParameterManager::~CGlobalMaterialParameterManager() =====
void __fastcall glitch::video::CGlobalMaterialParameterManager::~CGlobalMaterialParameterManager(
        glitch::video::CGlobalMaterialParameterManager *this)
{
  void *v2; // r0

  v2 = *((void **)this + 11);
  if ( v2 )
    operator delete[](v2);
  glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::~SIDedCollection((int)this);
}


// ===== 5bb5b0 glitch::video::detail::grabParameter<boost::intrusive_ptr<glitch::video::CLight>>(boost::intrusive_ptr<glitch::video::CLight> *,uint) =====
void __fastcall glitch::video::detail::grabParameter<boost::intrusive_ptr<glitch::video::CLight>>(_DWORD **a1, int a2)
{
  _DWORD **v2; // r7
  _DWORD **i; // r4
  _DWORD *v4; // r2
  _DWORD *v5; // r3
  _DWORD *v7; // r1

  v2 = &a1[a2];
  for ( i = a1; v2 != i; ++i )
  {
    v4 = *i;
    *i = nullptr;
    if ( v4 )
      ++*v4;
    v5 = *i;
    *i = v4;
    if ( v5 )
    {
      if ( (*v5)-- == 1 )
      {
        if ( !*((_BYTE *)v5 + 84) )
        {
          v7 = (_DWORD *)v5[20];
          *v7 = glitch::memory::Matrix4Pool;
          glitch::memory::Matrix4Pool = (int)v7;
        }
        v5[20] = 0;
        LC_API_FREE_0(v5);
      }
    }
  }
}


// ===== 5bb650 boost::intrusive_ptr<glitch::video::CLight>::operator=(boost::intrusive_ptr<glitch::video::CLight> const&) =====
_DWORD **__fastcall boost::intrusive_ptr<glitch::video::CLight>::operator=(_DWORD **a1, _DWORD **a2)
{
  _DWORD *v2; // r3
  _DWORD *v4; // r0
  _DWORD *v6; // r1

  v2 = *a2;
  if ( *a2 )
    ++*v2;
  v4 = *a1;
  *a1 = v2;
  if ( v4 )
  {
    if ( (*v4)-- == 1 )
    {
      if ( !*((_BYTE *)v4 + 84) )
      {
        v6 = (_DWORD *)v4[20];
        *v6 = glitch::memory::Matrix4Pool;
        glitch::memory::Matrix4Pool = (int)v6;
      }
      v4[20] = 0;
      LC_API_FREE_0(v4);
    }
  }
  return a1;
}


// ===== 5bb6d8 std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry*,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry*,std::__false_type const&) =====
_DWORD **__fastcall std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        _DWORD **a2,
        int a3)
{
  _DWORD **v3; // r4
  int v6; // r3
  int v7; // r10
  _DWORD **v8; // r7
  int v9; // r6
  _DWORD **v10; // r4
  int v11; // r7
  _DWORD *v12; // r3
  _DWORD *v13; // r0
  bool v14; // zf
  _DWORD *v15; // r3
  _DWORD **v16; // r6
  _DWORD *v17; // r0

  v3 = *(_DWORD ***)(a1 + 4);
  v6 = ((int)v3 - a3) >> 2;
  v7 = -858993459 * v6;
  if ( -858993459 * v6 > 0 )
  {
    v9 = a3 + 20;
    v10 = a2 + 5;
    v11 = -858993459 * v6;
    do
    {
      v12 = *(_DWORD **)(v9 - 20);
      if ( v12 )
        ++*v12;
      v13 = *(v10 - 5);
      *(v10 - 5) = v12;
      if ( v13 )
      {
        v14 = (*v13)-- == 1;
        if ( v14 )
          glitch::core::detail::SSharedStringHeapEntry::SData::release(v13);
      }
      --v11;
      *((_WORD *)v10 - 8) = *(_WORD *)(v9 - 16);
      *((_BYTE *)v10 - 14) = *(_BYTE *)(v9 - 14);
      *((_BYTE *)v10 - 13) = *(_BYTE *)(v9 - 13);
      *(v10 - 3) = *(_DWORD **)(v9 - 12);
      *(v10 - 2) = *(_DWORD **)(v9 - 8);
      v15 = *(_DWORD **)(v9 - 4);
      v9 += 20;
      *(v10 - 1) = v15;
      v10 += 5;
    }
    while ( v11 );
    v8 = &a2[5 * v7];
    v3 = *(_DWORD ***)(a1 + 4);
  }
  else
  {
    v8 = a2;
  }
  if ( v3 != v8 )
  {
    v16 = v8;
    do
    {
      v17 = *v16;
      v16 += 5;
      if ( v17 )
      {
        v14 = (*v17)-- == 1;
        if ( v14 )
          glitch::core::detail::SSharedStringHeapEntry::SData::release(v17);
      }
    }
    while ( v3 != v16 );
  }
  *(_DWORD *)(a1 + 4) = v8;
  return a2;
}


// ===== 5bb7ec glitch::video::detail::setArrayParameter(glitch::video::SShaderParameterDef const*,boost::intrusive_ptr<glitch::video::ITexture> *,boost::intrusive_ptr<glitch::video::ITexture> const*,int) =====
glitch::IReferenceCounted *__fastcall glitch::video::detail::setArrayParameter(
        glitch::IReferenceCounted *result,
        int a2,
        int *a3,
        int a4)
{
  int v4; // r5
  glitch::IReferenceCounted *v5; // r7
  int v9; // r6
  int v10; // r9
  int v11; // r3
  const char *v12; // r2
  const char *v13; // r9
  int StringsInternal; // r0
  int v15; // r2
  int v16; // [sp+Ch] [bp-10h]
  const char *v17; // [sp+10h] [bp-Ch]

  v4 = *((_DWORD *)result + 2);
  v5 = result;
  if ( v4 )
  {
    v9 = 0;
    while ( 1 )
    {
      v15 = *a3;
      if ( *a3 )
      {
        v10 = *((unsigned __int8 *)v5 + 6);
        v11 = (*(_DWORD *)(v15 + 56) & 3) + 12;
        if ( v11 != v10 )
        {
          v12 = *(const char **)v5;
          if ( *(_DWORD *)v5 )
            v12 += 4;
          v17 = v12;
          if ( v10 == 255 )
          {
            v13 = "unknown";
          }
          else
          {
            v13 = *(const char **)(glitch::video::getStringsInternal(0) + 4 * v10);
            v11 = (*(_DWORD *)(*a3 + 56) & 3) + 12;
          }
          v16 = v11;
          StringsInternal = glitch::video::getStringsInternal(0);
          result = (glitch::IReferenceCounted *)glitch::os::Printer::logf(
                                                  3,
                                                  "Material Parameter Error: trying to set parameter %s of type %s from type %s",
                                                  v17,
                                                  v13,
                                                  *(const char **)(StringsInternal + 4 * v16));
LABEL_10:
          --v4;
          v9 += 4;
          if ( !v4 )
            return result;
          goto LABEL_11;
        }
        ++*(_DWORD *)(v15 + 4);
      }
      result = *(glitch::IReferenceCounted **)(a2 + v9);
      *(_DWORD *)(a2 + v9) = v15;
      if ( !result )
        goto LABEL_10;
      result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
      --v4;
      v9 += 4;
      if ( !v4 )
        return result;
LABEL_11:
      a3 = (int *)((char *)a3 + a4);
    }
  }
  return result;
}


// ===== 5bb904 std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry*,uint,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry const&,std::__false_type const&) =====
unsigned int *__fastcall std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        unsigned int *result,
        int a2,
        unsigned int a3,
        unsigned int a4)
{
  unsigned int v6; // r5
  unsigned int *v7; // r3
  bool v8; // zf
  int v9; // r6
  unsigned int v10; // r2
  int v11; // r1
  unsigned int v12; // r5
  unsigned int *v13; // r3
  int v14; // r7
  unsigned int v15; // r2
  int v16; // r3
  int v17; // r12
  _DWORD *v18; // r1
  int v19; // r1
  unsigned int *v20; // r3
  int v21; // r10
  unsigned int v22; // r6
  int v23; // r12
  unsigned int v24; // r2
  unsigned int v25; // r2
  unsigned int v26; // r3
  _DWORD *v27; // r1
  int v28; // r1
  int v29; // r8
  _DWORD *v30; // r3
  int v31; // r3
  int v32; // r5
  int v33; // r7
  unsigned int *v34; // r3
  unsigned int *v35; // [sp+8h] [bp-1Ch]

  if ( a4 < *result )
  {
    v6 = result[1];
    goto LABEL_10;
  }
  v6 = result[1];
  if ( a4 >= v6 )
  {
LABEL_10:
    v9 = -858993459 * ((int)(v6 - a2) >> 2);
    if ( a3 < v9 )
    {
      v21 = 20 * a3;
      v22 = v6 - 20 * a3;
      v23 = -858993459 * ((int)(20 * a3) >> 2);
      if ( v23 > 0 )
      {
        v25 = v22 + 20;
        v26 = v6 + 20;
        do
        {
          v27 = *(_DWORD **)(v25 - 20);
          *(_DWORD *)(v26 - 20) = v27;
          if ( v27 )
            ++*v27;
          --v23;
          *(_WORD *)(v26 - 16) = *(_WORD *)(v25 - 16);
          *(_BYTE *)(v26 - 14) = *(_BYTE *)(v25 - 14);
          *(_BYTE *)(v26 - 13) = *(_BYTE *)(v25 - 13);
          *(_DWORD *)(v26 - 12) = *(_DWORD *)(v25 - 12);
          *(_DWORD *)(v26 - 8) = *(_DWORD *)(v25 - 8);
          v28 = *(_DWORD *)(v25 - 4);
          v25 += 20;
          *(_DWORD *)(v26 - 4) = v28;
          v26 += 20;
        }
        while ( v23 );
        v24 = result[1];
      }
      else
      {
        v24 = v6;
      }
      result[1] = v24 + v21;
      v29 = -858993459 * ((int)(v22 - a2) >> 2);
      if ( v29 > 0 )
      {
        do
        {
          v30 = *(_DWORD **)(v22 - 20);
          if ( v30 )
            ++*v30;
          result = *(unsigned int **)(v6 - 20);
          *(_DWORD *)(v6 - 20) = v30;
          if ( result )
          {
            v8 = (*result)-- == 1;
            if ( v8 )
              result = (unsigned int *)glitch::core::detail::SSharedStringHeapEntry::SData::release(result);
          }
          --v29;
          *(_WORD *)(v6 - 16) = *(_WORD *)(v22 - 16);
          *(_BYTE *)(v6 - 14) = *(_BYTE *)(v22 - 14);
          *(_BYTE *)(v6 - 13) = *(_BYTE *)(v22 - 13);
          *(_DWORD *)(v6 - 12) = *(_DWORD *)(v22 - 12);
          *(_DWORD *)(v6 - 8) = *(_DWORD *)(v22 - 8);
          v31 = *(_DWORD *)(v22 - 4);
          v22 -= 20;
          *(_DWORD *)(v6 - 4) = v31;
          v6 -= 20;
        }
        while ( v29 );
      }
      v32 = -858993459 * (v21 >> 2);
      if ( v32 > 0 )
      {
        v33 = a2 + 20;
        do
        {
          v34 = *(unsigned int **)a4;
          if ( *(_DWORD *)a4 )
            ++*v34;
          result = *(unsigned int **)(v33 - 20);
          *(_DWORD *)(v33 - 20) = v34;
          if ( result )
          {
            v8 = (*result)-- == 1;
            if ( v8 )
              result = (unsigned int *)glitch::core::detail::SSharedStringHeapEntry::SData::release(result);
          }
          --v32;
          *(_WORD *)(v33 - 16) = *(_WORD *)(a4 + 4);
          *(_BYTE *)(v33 - 14) = *(_BYTE *)(a4 + 6);
          *(_BYTE *)(v33 - 13) = *(_BYTE *)(a4 + 7);
          *(_DWORD *)(v33 - 12) = *(_DWORD *)(a4 + 8);
          *(_DWORD *)(v33 - 8) = *(_DWORD *)(a4 + 12);
          *(_DWORD *)(v33 - 4) = *(_DWORD *)(a4 + 16);
          v33 += 20;
        }
        while ( v32 );
      }
    }
    else
    {
      v10 = v6 + 20 * (a3 - v9);
      v11 = -858993459 * ((int)(v10 - v6) >> 2);
      if ( v11 > 0 )
      {
        v12 = v6 + 20;
        do
        {
          v13 = *(unsigned int **)a4;
          *(_DWORD *)(v12 - 20) = *(_DWORD *)a4;
          if ( v13 )
            ++*v13;
          --v11;
          *(_WORD *)(v12 - 16) = *(_WORD *)(a4 + 4);
          *(_BYTE *)(v12 - 14) = *(_BYTE *)(a4 + 6);
          *(_BYTE *)(v12 - 13) = *(_BYTE *)(a4 + 7);
          *(_DWORD *)(v12 - 12) = *(_DWORD *)(a4 + 8);
          *(_DWORD *)(v12 - 8) = *(_DWORD *)(a4 + 12);
          *(_DWORD *)(v12 - 4) = *(_DWORD *)(a4 + 16);
          v12 += 20;
        }
        while ( v11 );
      }
      result[1] = v10;
      if ( v9 <= 0 )
      {
        result[1] = v10 + 20 * v9;
      }
      else
      {
        v14 = a2 + 20;
        v15 = v10 + 20;
        v16 = v14;
        v17 = v9;
        do
        {
          v18 = *(_DWORD **)(v16 - 20);
          *(_DWORD *)(v15 - 20) = v18;
          if ( v18 )
            ++*v18;
          --v17;
          *(_WORD *)(v15 - 16) = *(_WORD *)(v16 - 16);
          *(_BYTE *)(v15 - 14) = *(_BYTE *)(v16 - 14);
          *(_BYTE *)(v15 - 13) = *(_BYTE *)(v16 - 13);
          *(_DWORD *)(v15 - 12) = *(_DWORD *)(v16 - 12);
          *(_DWORD *)(v15 - 8) = *(_DWORD *)(v16 - 8);
          v19 = *(_DWORD *)(v16 - 4);
          v16 += 20;
          *(_DWORD *)(v15 - 4) = v19;
          v15 += 20;
        }
        while ( v17 );
        result[1] += 20 * v9;
        do
        {
          v20 = *(unsigned int **)a4;
          if ( *(_DWORD *)a4 )
            ++*v20;
          result = *(unsigned int **)(v14 - 20);
          *(_DWORD *)(v14 - 20) = v20;
          if ( result )
          {
            v8 = (*result)-- == 1;
            if ( v8 )
              result = (unsigned int *)glitch::core::detail::SSharedStringHeapEntry::SData::release(result);
          }
          --v9;
          *(_WORD *)(v14 - 16) = *(_WORD *)(a4 + 4);
          *(_BYTE *)(v14 - 14) = *(_BYTE *)(a4 + 6);
          *(_BYTE *)(v14 - 13) = *(_BYTE *)(a4 + 7);
          *(_DWORD *)(v14 - 12) = *(_DWORD *)(a4 + 8);
          *(_DWORD *)(v14 - 8) = *(_DWORD *)(a4 + 12);
          *(_DWORD *)(v14 - 4) = *(_DWORD *)(a4 + 16);
          v14 += 20;
        }
        while ( v9 );
      }
    }
    return result;
  }
  v7 = *(unsigned int **)a4;
  v35 = v7;
  if ( v7 )
    ++*v7;
  std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(result);
  result = v35;
  if ( v35 )
  {
    v8 = (*v35)-- == 1;
    if ( v8 )
      return (unsigned int *)glitch::core::detail::SSharedStringHeapEntry::SData::release(v35);
  }
  return result;
}


// ===== 5bbd54 std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry*,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry const&,std::__false_type const&,uint,bool) =====
void __fastcall std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        void **a1,
        int a2,
        int a3,
        int a4,
        unsigned int a5,
        char a6)
{
  size_t v9; // r8
  char *v10; // r0
  char *v11; // r9
  int v12; // r12
  char *v13; // r12
  char *v14; // r3
  int v15; // r2
  int v16; // r0
  _DWORD *v17; // r1
  int v18; // r1
  char *v19; // r4
  int v20; // r1
  char *v21; // r3
  _DWORD *v22; // r2
  char *v23; // r0
  char *v24; // r6
  char *v25; // r5
  _DWORD *v26; // r0
  int v28; // r12
  int v29; // r5
  char *v30; // r3
  int v31; // r1
  _DWORD *v32; // r2
  int v33; // r2
  _DWORD *v34; // r3

  v9 = 20
     * std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
         a1,
         a5);
  v10 = (char *)GlitchAlloc(v9, 0);
  v11 = v10;
  v12 = -858993459 * ((a2 - (int)*a1) >> 2);
  if ( v12 > 0 )
  {
    v14 = v10 + 20;
    v15 = (int)*a1 + 20;
    v16 = -858993459 * ((a2 - (int)*a1) >> 2);
    do
    {
      v17 = *(_DWORD **)(v15 - 20);
      *((_DWORD *)v14 - 5) = v17;
      if ( v17 )
        ++*v17;
      --v16;
      *((_WORD *)v14 - 8) = *(_WORD *)(v15 - 16);
      *(v14 - 14) = *(_BYTE *)(v15 - 14);
      *(v14 - 13) = *(_BYTE *)(v15 - 13);
      *((_DWORD *)v14 - 3) = *(_DWORD *)(v15 - 12);
      *((_DWORD *)v14 - 2) = *(_DWORD *)(v15 - 8);
      v18 = *(_DWORD *)(v15 - 4);
      v15 += 20;
      *((_DWORD *)v14 - 1) = v18;
      v14 += 20;
    }
    while ( v16 );
    v13 = &v11[20 * v12];
  }
  else
  {
    v13 = v10;
  }
  if ( a5 == 1 )
  {
    v34 = *(_DWORD **)a3;
    v19 = v13 + 20;
    *(_DWORD *)v13 = *(_DWORD *)a3;
    if ( v34 )
      ++*v34;
    *((_WORD *)v13 + 2) = *(_WORD *)(a3 + 4);
    v13[6] = *(_BYTE *)(a3 + 6);
    v13[7] = *(_BYTE *)(a3 + 7);
    *((_DWORD *)v13 + 2) = *(_DWORD *)(a3 + 8);
    *((_DWORD *)v13 + 3) = *(_DWORD *)(a3 + 12);
    *((_DWORD *)v13 + 4) = *(_DWORD *)(a3 + 16);
    if ( a6 )
      goto LABEL_15;
  }
  else
  {
    v19 = &v13[20 * a5];
    v20 = -858993459 * ((int)(20 * a5) >> 2);
    if ( v20 > 0 )
    {
      v21 = v13 + 20;
      do
      {
        v22 = *(_DWORD **)a3;
        *((_DWORD *)v21 - 5) = *(_DWORD *)a3;
        if ( v22 )
          ++*v22;
        --v20;
        *((_WORD *)v21 - 8) = *(_WORD *)(a3 + 4);
        *(v21 - 14) = *(_BYTE *)(a3 + 6);
        *(v21 - 13) = *(_BYTE *)(a3 + 7);
        *((_DWORD *)v21 - 3) = *(_DWORD *)(a3 + 8);
        *((_DWORD *)v21 - 2) = *(_DWORD *)(a3 + 12);
        *((_DWORD *)v21 - 1) = *(_DWORD *)(a3 + 16);
        v21 += 20;
      }
      while ( v20 );
    }
    if ( a6 )
      goto LABEL_15;
  }
  v23 = (char *)a1[1];
  v28 = -858993459 * ((int)&v23[-a2] >> 2);
  if ( v28 > 0 )
  {
    v29 = a2 + 20;
    v30 = v19 + 20;
    v31 = v28;
    do
    {
      v32 = *(_DWORD **)(v29 - 20);
      *((_DWORD *)v30 - 5) = v32;
      if ( v32 )
        ++*v32;
      --v31;
      *((_WORD *)v30 - 8) = *(_WORD *)(v29 - 16);
      *(v30 - 14) = *(_BYTE *)(v29 - 14);
      *(v30 - 13) = *(_BYTE *)(v29 - 13);
      *((_DWORD *)v30 - 3) = *(_DWORD *)(v29 - 12);
      *((_DWORD *)v30 - 2) = *(_DWORD *)(v29 - 8);
      v33 = *(_DWORD *)(v29 - 4);
      v29 += 20;
      *((_DWORD *)v30 - 1) = v33;
      v30 += 20;
    }
    while ( v31 );
    v19 += 20 * v28;
LABEL_15:
    v23 = (char *)a1[1];
  }
  v24 = (char *)*a1;
  if ( *a1 != v23 )
  {
    v25 = v23;
    do
    {
      v26 = *((_DWORD **)v25 - 5);
      v25 -= 20;
      if ( v26 )
      {
        if ( (*v26)-- == 1 )
          glitch::core::detail::SSharedStringHeapEntry::SData::release(v26);
      }
    }
    while ( v24 != v25 );
    v23 = (char *)*a1;
  }
  GlitchFree(v23);
  a1[1] = v19;
  a1[2] = &v11[v9];
  *a1 = v11;
}


// ===== 5bc004 std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry*,uint,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry const&) =====
void __fastcall std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        unsigned int *a1,
        int a2,
        unsigned int a3,
        unsigned int a4)
{
  _BYTE v4[4]; // [sp+8h] [bp-Ch] BYREF

  if ( a3 )
  {
    if ( a3 <= -858993459 * ((int)(a1[2] - a1[1]) >> 2) )
      std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        a2,
        a3,
        a4);
    else
      std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        (void **)a1,
        a2,
        a4,
        (int)v4,
        a3,
        0);
  }
}


// ===== 5bc070 std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry const&) =====
void __fastcall std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        int a1,
        unsigned int a2,
        unsigned int a3)
{
  _DWORD **v3; // r12
  unsigned int v5; // r2
  _DWORD **v6; // r1

  v3 = *(_DWORD ***)(a1 + 4);
  v5 = -858993459 * (((int)v3 - *(_DWORD *)a1) >> 2);
  if ( a2 >= v5 )
  {
    std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      (unsigned int *)a1,
      *(_DWORD *)(a1 + 4),
      a2 - v5,
      a3);
  }
  else
  {
    v6 = (_DWORD **)(*(_DWORD *)a1 + 20 * a2);
    if ( v6 != v3 )
      std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        a1,
        v6,
        *(_DWORD *)(a1 + 4));
  }
}


// ===== 5bc0d8 std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry const&) =====
void __fastcall std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        int a1,
        int a2)
{
  int v2; // r3
  _DWORD *v4; // r1
  _BYTE v5[4]; // [sp+Ch] [bp-4h] BYREF

  v2 = *(_DWORD *)(a1 + 4);
  if ( v2 == *(_DWORD *)(a1 + 8) )
  {
    std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      (void **)a1,
      *(_DWORD *)(a1 + 4),
      a2,
      (int)v5,
      1u,
      1);
  }
  else
  {
    v4 = *(_DWORD **)a2;
    *(_DWORD *)v2 = v4;
    if ( v4 )
      ++*v4;
    *(_WORD *)(v2 + 4) = *(_WORD *)(a2 + 4);
    *(_BYTE *)(v2 + 6) = *(_BYTE *)(a2 + 6);
    *(_BYTE *)(v2 + 7) = *(_BYTE *)(a2 + 7);
    *(_DWORD *)(v2 + 8) = *(_DWORD *)(a2 + 8);
    *(_DWORD *)(v2 + 12) = *(_DWORD *)(a2 + 12);
    *(_DWORD *)(v2 + 16) = *(_DWORD *)(a2 + 16);
    *(_DWORD *)(a1 + 4) += 20;
  }
}


// ===== 5bc16c glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::insert(char const*,glitch::video::SShaderParameterDef const&,bool) =====
unsigned int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::insert(
        int a1,
        void *a2,
        int a3,
        int a4)
{
  unsigned int v5; // r5
  char *inserted; // r0
  int v9; // r2
  char **v10; // r2
  int v11; // r3
  int v12; // r2
  char v13; // lr
  int v14; // r12
  void *v15; // r0
  bool v16; // zf
  int v17; // r12
  unsigned int v18; // r3
  unsigned int v19; // r1
  char **v21; // r3
  int v22; // r8
  int v23; // r7
  _DWORD *v24; // r0
  int v25; // r3
  void *v26; // [sp+4h] [bp-34h] BYREF
  __int16 v27; // [sp+8h] [bp-30h]
  char v28; // [sp+Ah] [bp-2Eh]
  char v29; // [sp+Bh] [bp-2Dh]
  int v30; // [sp+Ch] [bp-2Ch]
  int v31; // [sp+10h] [bp-28h]
  int v32; // [sp+14h] [bp-24h]
  void *v33; // [sp+18h] [bp-20h] BYREF
  char v34; // [sp+1Ch] [bp-1Ch]
  int v35; // [sp+20h] [bp-18h]
  __int16 v36; // [sp+24h] [bp-14h]
  void *v37; // [sp+28h] [bp-10h]
  char v38; // [sp+2Ch] [bp-Ch]
  int v39; // [sp+30h] [bp-8h] BYREF

  v5 = *(unsigned __int16 *)(a1 + 36);
  ++*(_WORD *)(a1 + 38);
  v35 = 1;
  v33 = a2;
  v34 = 0;
  v37 = a2;
  v38 = 0;
  v36 = v5;
  inserted = (char *)std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
                       (int)&v39,
                       (_DWORD *)a1,
                       (const char **)&v33);
  if ( v34 )
  {
    inserted = (char *)v33;
    if ( v33 )
      operator delete[](v33);
  }
  if ( a4 )
    *(_BYTE *)(v39 + 20) = 1;
  v9 = *(_DWORD *)(a1 + 24);
  if ( v5 < -858993459 * ((*(_DWORD *)(a1 + 28) - v9) >> 2) )
  {
    v21 = *(char ***)a3;
    if ( *(_DWORD *)a3 )
      inserted = *v21;
    v22 = v39;
    v23 = v9 + 20 * v5;
    if ( *(_DWORD *)a3 )
      *v21 = inserted + 1;
    v24 = *(_DWORD **)(v9 + 20 * v5);
    *(_DWORD *)(v9 + 20 * v5) = v21;
    if ( v24 )
    {
      v16 = (*v24)-- == 1;
      if ( v16 )
        glitch::core::detail::SSharedStringHeapEntry::SData::release(v24);
    }
    *(_WORD *)(v23 + 4) = *(_WORD *)(a3 + 4);
    *(_BYTE *)(v23 + 6) = *(_BYTE *)(a3 + 6);
    *(_BYTE *)(v23 + 7) = *(_BYTE *)(a3 + 7);
    *(_DWORD *)(v23 + 8) = *(_DWORD *)(a3 + 8);
    v25 = *(_DWORD *)(a3 + 12);
    *(_DWORD *)(v23 + 16) = v22;
    *(_DWORD *)(v23 + 12) = v25;
  }
  else
  {
    v10 = *(char ***)a3;
    v11 = v39;
    v26 = v10;
    if ( v10 )
      ++*v10;
    v12 = *(_DWORD *)(a3 + 12);
    v13 = *(_BYTE *)(a3 + 7);
    v14 = *(_DWORD *)(a3 + 8);
    v28 = *(_BYTE *)(a3 + 6);
    v29 = v13;
    v30 = v14;
    v31 = v12;
    v32 = v11;
    v27 = *(_WORD *)(a3 + 4);
    std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
      a1 + 24,
      (int)&v26);
    v15 = v26;
    if ( v26 )
    {
      v16 = (*(_DWORD *)v26)-- == 1;
      if ( v16 )
        glitch::core::detail::SSharedStringHeapEntry::SData::release(v15);
    }
  }
  v17 = *(_DWORD *)(a1 + 24);
  LOWORD(v18) = *(_WORD *)(a1 + 36);
  v19 = -858993459 * ((*(_DWORD *)(a1 + 28) - v17) >> 2);
  do
  {
    v18 = (unsigned __int16)(v18 + 1);
    *(_WORD *)(a1 + 36) = v18;
  }
  while ( v18 < v19 && *(_DWORD *)(v17 + 20 * v18) );
  return v5;
}


// ===== 5bc374 glitch::video::CGlobalMaterialParameterManager::addParameter(char const*,glitch::video::E_SHADER_PARAMETER_TYPE,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE,uint,uchar) =====
int __fastcall glitch::video::CGlobalMaterialParameterManager::addParameter(
        int a1,
        _BYTE *a2,
        int a3,
        int a4,
        int a5,
        char a6)
{
  unsigned int Id; // r6
  char *v12; // r11
  int v13; // r2
  int v14; // r4
  int v15; // r6
  size_t v16; // r3
  void *v17; // r0
  int v18; // r3
  _DWORD *v19; // r0
  void *v20; // r1
  size_t v21; // [sp+0h] [bp-1Ch]
  size_t v22; // [sp+4h] [bp-18h]
  _DWORD *v23; // [sp+8h] [bp-14h] BYREF
  __int16 v24; // [sp+Ch] [bp-10h]
  char v25; // [sp+Eh] [bp-Eh]
  char v26; // [sp+Fh] [bp-Dh]
  int v27; // [sp+10h] [bp-Ch]
  size_t v28; // [sp+14h] [bp-8h]

  if ( !a2 || !*a2 )
  {
    glitch::os::Printer::log("addParameter", "invalid parameter name", 3);
    return 0xFFFF;
  }
  Id = glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::getId(
         a1,
         a2);
  if ( Id != 0xFFFF )
  {
    glitch::os::Printer::log("Global parameter exists already", a2, 2);
    return Id;
  }
  if ( a3 == 255 )
  {
    glitch::os::Printer::log(a2, "unknown parameter type", 3);
    return Id;
  }
  if ( a4 == 255 )
  {
    glitch::os::Printer::log(a2, "unknown parameter value type", 3);
    return Id;
  }
  if ( !a5 )
  {
    glitch::os::Printer::log(a2, "null array size", 3);
    return Id;
  }
  v12 = *(char **)(a1 + 44);
  v13 = *(_DWORD *)(a1 + 48) - (_DWORD)v12;
  v14 = *(_DWORD *)(a1 + 52) - (_DWORD)v12;
  v22 = v13;
  v15 = glitch::video::detail::SShaderParameterTypeInspection::ValueTypeSize[a4] + v13;
  if ( v14 < v15 )
  {
    if ( !v14 )
    {
      if ( v15 <= 1 )
      {
        v16 = 1;
        v14 = 1;
        goto LABEL_16;
      }
      v14 = 1;
    }
    do
      v14 *= 2;
    while ( v15 > v14 );
    v16 = v14;
LABEL_16:
    v21 = v16;
    v12 = (char *)operator new[](v16, 0);
    memcpy(v12, *(const void **)(a1 + 44), v22);
    LC_API_MEMSET_0(&v12[v22], 0, v21 - v22);
    v17 = *(void **)(a1 + 44);
    *(_DWORD *)(a1 + 44) = v12;
    *(_DWORD *)(a1 + 52) = &v12[v21];
    if ( v17 )
    {
      operator delete[](v17);
      v12 = *(char **)(a1 + 44);
    }
  }
  v18 = *(unsigned __int8 *)(a1 + 56);
  *(_DWORD *)(a1 + 48) = &v12[v15];
  if ( v18 )
    LOBYTE(v18) = v14 == v15;
  *(_BYTE *)(a1 + 57) = v18;
  v19 = (_DWORD *)glitch::core::detail::SSharedStringHeapEntry::SData::get(
                    (glitch::core::detail::SSharedStringHeapEntry::SData *)a2,
                    (const char *)&dword_0 + 1,
                    v13);
  v23 = v19;
  if ( v19 )
    ++*v19;
  v20 = v23;
  v27 = a5;
  v28 = v22;
  if ( v23 )
    v20 = v23 + 1;
  v24 = a3;
  v25 = a4;
  v26 = a6;
  Id = glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::insert(
         a1,
         v20,
         (int)&v23,
         0);
  glitch::video::SShaderParameterDef::~SShaderParameterDef((glitch::video::SShaderParameterDef *)&v23);
  return Id;
}


// ===== 5bc5c4 glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry::reset(void) =====
_DWORD *__fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry::reset(
        int a1)
{
  _DWORD *result; // r0

  result = *(_DWORD **)a1;
  *(_DWORD *)a1 = 0;
  if ( result )
  {
    if ( (*result)-- == 1 )
      result = (_DWORD *)glitch::core::detail::SSharedStringHeapEntry::SData::release(result);
  }
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 12) = -1;
  *(_WORD *)(a1 + 4) = 255;
  *(_BYTE *)(a1 + 6) = -1;
  *(_BYTE *)(a1 + 7) = -1;
  *(_DWORD *)(a1 + 8) = -1;
  return result;
}


// ===== 5bc620 glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry::set(glitch::video::SShaderParameterDef const&,std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>>) =====
_DWORD *__fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry::set(
        int a1,
        int a2,
        _DWORD *a3)
{
  _DWORD *v3; // r3
  _DWORD *v4; // r6
  _DWORD *result; // r0

  v3 = *(_DWORD **)a2;
  v4 = a3;
  if ( *(_DWORD *)a2 )
    a3 = (_DWORD *)*v3;
  if ( *(_DWORD *)a2 )
    *v3 = (char *)a3 + 1;
  result = *(_DWORD **)a1;
  *(_DWORD *)a1 = v3;
  if ( result )
  {
    if ( (*result)-- == 1 )
      result = (_DWORD *)glitch::core::detail::SSharedStringHeapEntry::SData::release(result);
  }
  *(_WORD *)(a1 + 4) = *(_WORD *)(a2 + 4);
  *(_BYTE *)(a1 + 6) = *(_BYTE *)(a2 + 6);
  *(_BYTE *)(a1 + 7) = *(_BYTE *)(a2 + 7);
  *(_DWORD *)(a1 + 8) = *(_DWORD *)(a2 + 8);
  *(_DWORD *)(a1 + 12) = *(_DWORD *)(a2 + 12);
  *(_DWORD *)(a1 + 16) = *v4;
  return result;
}


// ===== 5bc6a0 std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringbuf() =====
std::locale *__fastcall std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringbuf(
        std::locale *a1)
{
  std::locale *v2; // r2
  std::_Locale_impl *M_impl; // r0

  a1->_M_impl = (std::_Locale_impl *)off_978118;
  v2 = a1 + 9;
  M_impl = a1[14]._M_impl;
  if ( M_impl != (std::_Locale_impl *)v2 && M_impl )
    GlitchFree(M_impl);
  a1->_M_impl = (std::_Locale_impl *)off_95B938;
  __ZNSt6localeD1Ev_veneer(a1 + 7);
  return a1;
}


// ===== 5bc708 std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringbuf() =====
std::locale *__fastcall std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringbuf(
        std::locale *a1)
{
  std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringbuf(a1);
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 5bc724 `non-virtual thunk to'std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringstream() =====
int __fastcall `non-virtual thunk to'std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringstream(
        int a1)
{
  return std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringstream(a1 - 8);
}


// ===== 5bc72c std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringstream() =====
int __fastcall std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringstream(
        int a1)
{
  *(_DWORD *)a1 = off_97804C;
  *(_DWORD *)(a1 + 72) = off_978074;
  *(_DWORD *)(a1 + 8) = off_978060;
  std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringbuf((std::locale *)(a1 + 12));
  *(_DWORD *)a1 = off_97808C;
  *(int *)((char *)&dword_48 + a1) = (int)off_9780B4;
  *(_DWORD *)(a1 + 8) = off_9780F4;
  *(int *)((char *)&dword_40 + a1 + 8) = (int)off_978108;
  *(_DWORD *)a1 = off_9780CC;
  *(int *)((char *)&dword_48 + a1) = (int)off_9780E0;
  *(_DWORD *)(a1 + 72) = off_95B8E0;
  __ZNSt8ios_baseD2Ev_veneer((std::ios_base *const)(a1 + 72));
  return a1;
}


// ===== 5bc7e0 `virtual thunk to'std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringstream() =====
int __fastcall `virtual thunk to'std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringstream(
        _DWORD *a1)
{
  return std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringstream((int)a1 + *(_DWORD *)(*a1 - 12));
}


// ===== 5bc7f0 `non-virtual thunk to'std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringstream() =====
int __fastcall `non-virtual thunk to'std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringstream(
        int a1)
{
  return std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringstream(a1 - 8);
}


// ===== 5bc7f8 std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringstream() =====
void *__fastcall std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringstream(
        void *a1)
{
  std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringstream((int)a1);
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 5bc814 `virtual thunk to'std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringstream() =====
void *__fastcall `virtual thunk to'std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringstream(
        _DWORD *a1)
{
  return std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringstream((char *)a1 + *(_DWORD *)(*a1 - 12));
}


// ===== 5bc824 std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::overflow(int) =====
int __fastcall std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::overflow(
        _DWORD *a1,
        int a2)
{
  int v2; // r4
  int v5; // r3
  int v6; // r6
  int v7; // r2
  int v8; // r3
  int v9; // r2

  v2 = a2;
  if ( a2 == -1 )
    return 0;
  v5 = a1[8];
  if ( (v5 & 0x10) == 0 )
    return -1;
  if ( a1[5] < a1[6] )
  {
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
      a1 + 9,
      (_DWORD *)(char)a2);
    ++a1[5];
  }
  else
  {
    if ( (v5 & 8) != 0 )
    {
      v6 = a1[2] - a1[1];
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        a1 + 9,
        (_DWORD *)(char)a2);
      v7 = a1[14];
      v8 = a1[13];
      a1[5] = v8;
      a1[2] = v7 + v6;
      a1[4] = v7;
      a1[1] = v7;
      a1[3] = v8;
    }
    else
    {
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        a1 + 9,
        (_DWORD *)(char)a2);
      v8 = a1[13];
      v9 = a1[14];
      a1[5] = v8;
      a1[4] = v9;
    }
    a1[6] = v8;
  }
  return v2;
}


// ===== 5bc8e8 std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::append(uint,char) =====
_DWORD *__fastcall std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::append(
        _DWORD *a1,
        unsigned int a2,
        char a3)
{
  int v6; // r3
  _DWORD *v7; // r1
  _DWORD *v8; // r2
  int v9; // r2
  size_t size; // r0
  _DWORD *v12; // r2

  if ( !a2 )
    return a1;
  v6 = a1[4];
  v7 = (_DWORD *)a1[5];
  if ( a2 <= -2 - (v6 - (int)v7) )
  {
    if ( a1 == v7 )
      v8 = a1 + 4;
    else
      v8 = (_DWORD *)*a1;
    if ( a2 < (unsigned int)v8 - v6 )
      goto LABEL_7;
LABEL_13:
    size = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
             (int)a1,
             a2);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_reserve(
      a1,
      size);
    v6 = a1[4];
    goto LABEL_7;
  }
  __ZSt24__stl_throw_length_errorPKc_veneer("basic_string");
  v6 = a1[4];
  if ( a1 == (_DWORD *)a1[5] )
    v12 = a1 + 4;
  else
    v12 = (_DWORD *)*a1;
  if ( a2 >= (unsigned int)v12 - v6 )
    goto LABEL_13;
LABEL_7:
  if ( (int)(a2 - 1) > 0 )
  {
    v9 = v6 + a2 - 1;
    do
      *(_BYTE *)++v6 = a3;
    while ( v6 != v9 );
    v6 = a1[4];
  }
  *(_BYTE *)(v6 + a2) = 0;
  *(_BYTE *)a1[4] = a3;
  a1[4] += a2;
  return a1;
}


// ===== 5bc9d4 std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_xsputnc(char,int) =====
unsigned int __fastcall std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_xsputnc(
        _DWORD *a1,
        char a2,
        signed int a3)
{
  unsigned int v3; // r3
  int v6; // r7
  unsigned int v7; // r5
  unsigned int result; // r0
  signed int v9; // r7
  char v10; // r2
  int v11; // r6
  int v12; // r2
  int v13; // r3
  void *v14; // r0

  v3 = a1[8];
  v6 = (v3 >> 4) & 1;
  if ( a3 <= 0 )
    v6 = 0;
  v7 = a3;
  if ( !v6 )
    return 0;
  if ( a1[4] == a1[14] )
  {
    v14 = (void *)a1[5];
    v9 = a1[13] - (_DWORD)v14;
    if ( v9 > a3 )
    {
      LC_API_MEMSET_0(v14, a2, a3);
      a1[5] += v7;
      return v7;
    }
    LC_API_MEMSET_0(v14, a2, a1[13] - (_DWORD)v14);
    v7 -= v9;
    v3 = a1[8];
  }
  else
  {
    v9 = 0;
  }
  if ( (v3 & 8) != 0 )
  {
    v10 = a2;
    v11 = a1[2] - a1[1];
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::append(
      a1 + 9,
      v7,
      v10);
    v12 = a1[14];
    v13 = a1[13];
    result = v7 + v9;
    a1[1] = v12;
    a1[2] = v12 + v11;
    a1[3] = v13;
  }
  else
  {
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::append(
      a1 + 9,
      v7,
      a2);
    v13 = a1[13];
    v12 = a1[14];
    result = v7 + v9;
  }
  a1[5] = v13;
  a1[4] = v12;
  a1[6] = v13;
  return result;
}


// ===== 5bcad0 std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::setbuf(char *,int) =====
_DWORD *__fastcall std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::setbuf(
        _DWORD *a1,
        int a2,
        signed int a3)
{
  int v3; // r5
  int v6; // r3
  int v7; // r2
  bool v8; // zf
  int v9; // r2
  int v10; // r5
  int v11; // r6
  int v12; // r3
  int v13; // r2
  int v15; // r7
  int v16; // r2

  if ( a3 > 0 )
  {
    v6 = a1[14];
    v7 = a1[4];
    v8 = v7 == v6;
    if ( v7 == v6 )
      v3 = a1[5];
    v9 = a1[1];
    if ( v8 )
    {
      v11 = 1;
      v10 = v3 - v6;
    }
    else
    {
      v10 = 0;
      v11 = 0;
    }
    if ( v6 == v9 )
    {
      v15 = a1[2] - v6;
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
        a1 + 9,
        a3,
        v9);
      v12 = a1[14];
      v16 = a1[13];
      a1[2] = v12 + v15;
      a1[3] = v16;
      a1[1] = v12;
    }
    else
    {
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
        a1 + 9,
        a3,
        v9);
      v12 = a1[14];
    }
    if ( v11 )
    {
      v13 = a1[13];
      a1[5] = v12 + v10;
      a1[6] = v13;
      a1[4] = v12;
    }
  }
  return a1;
}


// ===== 5bcb64 std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::xsputn(char const*,int) =====
signed int __fastcall std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::xsputn(
        _DWORD *a1,
        _BYTE *a2,
        signed int a3)
{
  unsigned int v3; // r12
  signed int v4; // r5
  int v5; // r3
  _BYTE *v7; // r8
  int v8; // r3
  int v9; // r6
  signed int v10; // r6
  int v11; // r2
  int v12; // r3
  int v14; // r7
  char *v15; // r0

  v3 = a1[8];
  v4 = a3;
  v5 = (v3 >> 4) & 1;
  if ( a3 <= 0 )
    v5 = 0;
  v7 = a2;
  if ( !v5 )
    return 0;
  v8 = a1[14];
  v9 = a1[13];
  if ( v8 == v9 || v8 != a1[4] )
  {
    v10 = 0;
LABEL_8:
    if ( (v3 & 8) != 0 )
    {
      v14 = a1[2] - a1[1];
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_appendT<char const*>(
        (int)(a1 + 9),
        v7,
        &v7[v4]);
      v11 = a1[14];
      v12 = a1[13];
      a1[1] = v11;
      a1[2] = v11 + v14;
      a1[3] = v12;
    }
    else
    {
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_appendT<char const*>(
        (int)(a1 + 9),
        v7,
        &v7[v4]);
      v11 = a1[14];
      v12 = a1[13];
    }
    a1[5] = v12;
    a1[4] = v11;
    v4 += v10;
    a1[6] = v12;
    return v4;
  }
  v15 = (char *)a1[5];
  v10 = v9 - (_DWORD)v15;
  if ( a3 >= v10 )
  {
    if ( v10 )
    {
      memcpy(v15, a2, v10);
      v3 = a1[8];
    }
    v4 -= v10;
    v7 += v10;
    goto LABEL_8;
  }
  if ( a3 )
  {
    memcpy(v15, a2, a3);
    v15 = (char *)a1[5];
  }
  a1[5] = &v15[v4];
  return v4;
}


// ===== 5bcc80 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::serializeAttributes(glitch::io::IAttributes *) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::serializeAttributes(
        _DWORD *a1,
        int a2)
{
  int v3; // r1
  unsigned int v4; // r0
  int *v5; // r9
  int *v6; // r1
  void (__fastcall *v7)(int, int *); // r3
  int v8; // r5
  int v9; // r10
  glitch::IReferenceCounted **v10; // r10
  unsigned int v11; // r3
  int v12; // r5
  int v13; // r7
  std::ostream *v14; // r0
  int v15; // r2
  glitch::IReferenceCounted *v16; // r3
  void *v17; // r1
  bool v18; // zf
  glitch::IReferenceCounted *v19; // r0
  _DWORD *v20; // r2
  void *v21; // r0
  void *v22; // r0
  int v23; // r3
  int v25; // r2
  glitch::IReferenceCounted *v26; // r3
  _DWORD *v27; // r1
  bool v28; // zf
  glitch::IReferenceCounted *v29; // r3
  void (__fastcall *v30)(int, _DWORD *, glitch::IReferenceCounted *, _DWORD); // r6
  void (__fastcall *v31)(int, _DWORD *, glitch::IReferenceCounted **, _DWORD); // r6
  void (__fastcall *v32)(int, _DWORD *, glitch::IReferenceCounted **, _DWORD); // r6
  void (__fastcall *v33)(int, void *, glitch::IReferenceCounted **, _DWORD); // r6
  void *v34; // r0
  void (__fastcall *v35)(int, void *, glitch::IReferenceCounted **, _DWORD); // r6
  void *v36; // r0
  void (__fastcall *v37)(int, _DWORD *, glitch::IReferenceCounted *, _DWORD); // r6
  void (__fastcall *v38)(int, _DWORD *, glitch::IReferenceCounted **, _DWORD); // r6
  void (__fastcall *v39)(int, _DWORD *, glitch::IReferenceCounted *, _DWORD); // r6
  void (__fastcall *v40)(int, _DWORD *, glitch::IReferenceCounted **, _DWORD); // r6
  int v41; // r2
  int v42; // r3
  int v43; // r1
  void (__fastcall *v44)(int, _DWORD *, _DWORD *, _DWORD); // r6
  void (__fastcall *v45)(int, void *, glitch::IReferenceCounted **, _DWORD); // [sp+10h] [bp-28Ch]
  void (__fastcall *v46)(int, void *, glitch::IReferenceCounted *, glitch::IReferenceCounted *, glitch::IReferenceCounted *, glitch::IReferenceCounted *, _DWORD); // [sp+10h] [bp-28Ch]
  void (__fastcall *v47)(int, _DWORD *, int, _DWORD); // [sp+10h] [bp-28Ch]
  void (__fastcall *v48)(int, _DWORD *, glitch::IReferenceCounted **, _DWORD); // [sp+10h] [bp-28Ch]
  glitch::IReferenceCounted *v49; // [sp+14h] [bp-288h]
  unsigned int v50; // [sp+20h] [bp-27Ch]
  int v51; // [sp+2Ch] [bp-270h]
  _DWORD v53[16]; // [sp+48h] [bp-254h] BYREF
  char v54; // [sp+88h] [bp-214h]
  glitch::IReferenceCounted *v55; // [sp+8Ch] [bp-210h] BYREF
  glitch::IReferenceCounted *v56; // [sp+90h] [bp-20Ch] BYREF
  _BYTE v57[8]; // [sp+94h] [bp-208h] BYREF
  std::ostream v58; // [sp+9Ch] [bp-200h] BYREF
  void *v59[5]; // [sp+12Ch] [bp-170h] BYREF
  void *v60; // [sp+140h] [bp-15Ch]
  void *v61[5]; // [sp+144h] [bp-158h] BYREF
  void *v62; // [sp+158h] [bp-144h]
  _DWORD v63[5]; // [sp+15Ch] [bp-140h] BYREF
  _DWORD *v64; // [sp+170h] [bp-12Ch]
  _DWORD v65[5]; // [sp+174h] [bp-128h] BYREF
  _DWORD *v66; // [sp+188h] [bp-114h]
  _DWORD v67[5]; // [sp+18Ch] [bp-110h] BYREF
  _DWORD *v68; // [sp+1A0h] [bp-FCh]
  _DWORD v69[5]; // [sp+1A4h] [bp-F8h] BYREF
  _DWORD *v70; // [sp+1B8h] [bp-E4h]
  _DWORD v71[5]; // [sp+1BCh] [bp-E0h] BYREF
  _DWORD *v72; // [sp+1D0h] [bp-CCh]
  _DWORD v73[5]; // [sp+1D4h] [bp-C8h] BYREF
  _DWORD *v74; // [sp+1E8h] [bp-B4h]
  _DWORD v75[5]; // [sp+1ECh] [bp-B0h] BYREF
  _DWORD *v76; // [sp+200h] [bp-9Ch]
  _DWORD v77[5]; // [sp+204h] [bp-98h] BYREF
  _DWORD *v78; // [sp+218h] [bp-84h]
  _DWORD v79[5]; // [sp+21Ch] [bp-80h] BYREF
  _DWORD *v80; // [sp+230h] [bp-6Ch]
  void *v81[5]; // [sp+234h] [bp-68h] BYREF
  void *v82; // [sp+248h] [bp-54h]
  void *v83[5]; // [sp+24Ch] [bp-50h] BYREF
  void *v84; // [sp+260h] [bp-3Ch]
  _DWORD v85[5]; // [sp+264h] [bp-38h] BYREF
  _DWORD *v86; // [sp+278h] [bp-24h]
  void *v87[5]; // [sp+27Ch] [bp-20h] BYREF
  void *p; // [sp+290h] [bp-Ch]

  v51 = a1[2];
  if ( (_DWORD *)v51 != a1 )
  {
    do
    {
      v3 = a1[6];
      v4 = *(unsigned __int16 *)(v51 + 28);
      if ( v4 >= -858993459 * ((a1[7] - v3) >> 2) )
      {
        v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
        v6 = (int *)glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
        if ( glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid )
        {
LABEL_4:
          v7 = *(void (__fastcall **)(int, int *))(*(_DWORD *)a2 + 48);
          goto LABEL_5;
        }
      }
      else
      {
        v5 = (int *)(v3 + 20 * v4);
        v6 = (int *)*v5;
        if ( *v5 )
          goto LABEL_4;
      }
      v5 = v6;
      v6 = (int *)*v6;
      v7 = *(void (__fastcall **)(int, int *))(*(_DWORD *)a2 + 48);
      if ( !v6 )
      {
        v5 = nullptr;
        goto LABEL_6;
      }
LABEL_5:
      ++v6;
LABEL_6:
      v7(a2, v6);
      glitch::io::IAttributes::addEnum<glitch::video::E_SHADER_PARAMETER_TYPE>(a2, *((unsigned __int16 *)v5 + 2), 1);
      glitch::io::IAttributes::addEnum<glitch::video::E_SHADER_PARAMETER_VALUE_TYPE>(
        a2,
        (int)"Value Type",
        *((unsigned __int8 *)v5 + 6),
        1);
      (*(void (__fastcall **)(int, const char *, int, int))(*(_DWORD *)a2 + 76))(a2, "Array Size", v5[2], 1);
      v8 = v5[3];
      v9 = a1[11];
      std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_stringstream((int)v57);
      v50 = v5[2];
      if ( v50 == 1 )
      {
        std::ostream::_M_put_nowiden(&v58, "value");
        v50 = v5[2];
      }
      if ( v50 )
      {
        v10 = (glitch::IReferenceCounted **)(v9 + v8);
        v11 = v50;
        v12 = 0;
        v13 = a2;
        while ( 1 )
        {
          if ( v11 > 1 )
          {
            v87[4] = v87;
            p = v87;
            std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
              v87,
              "",
              "");
            std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::str(
              (int)v58.gap4,
              (int)v87);
            if ( p != v87 && p )
              GlitchFree(p);
            std::ostream::_M_put_nowiden(&v58, "[");
            v14 = std::priv::__put_num<char,std::char_traits<char>,unsigned long>(&v58);
            std::ostream::_M_put_nowiden(v14, "]");
          }
          LC_API_MEMSET_0(v53, 0, 0x40u);
          LC_API_MEMSET_0(v53, 0, 0x40u);
          v54 = 1;
          v53[0] = 1065353216;
          v53[5] = 1065353216;
          v53[10] = 1065353216;
          v53[15] = 1065353216;
          switch ( *((_BYTE *)v5 + 6) )
          {
            case 1:
              v37 = *(void (__fastcall **)(int, _DWORD *, glitch::IReferenceCounted *, _DWORD))(*(_DWORD *)v13 + 76);
              v85[4] = v85;
              v86 = v85;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v85,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v37(v13, v86, *v10, 0);
              v21 = v86;
              if ( v86 != v85 )
                goto LABEL_27;
              ++v10;
              goto LABEL_30;
            case 2:
              v35 = *(void (__fastcall **)(int, void *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v13 + 328);
              v83[4] = v83;
              v84 = v83;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v83,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v35(v13, v84, v10, 0);
              v36 = v84;
              if ( v84 != v83 )
                goto LABEL_67;
              goto LABEL_69;
            case 3:
              v33 = *(void (__fastcall **)(int, void *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v13 + 352);
              v81[4] = v81;
              v82 = v81;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v81,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v33(v13, v82, v10, 0);
              v34 = v82;
              if ( v82 != v81 )
                goto LABEL_63;
              goto LABEL_65;
            case 4:
              v32 = *(void (__fastcall **)(int, _DWORD *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v13 + 376);
              v79[4] = v79;
              v80 = v79;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v79,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v32(v13, v80, v10, 0);
              v22 = v80;
              if ( v80 != v79 )
                goto LABEL_33;
              v10 += 4;
              goto LABEL_36;
            case 5:
              v39 = *(void (__fastcall **)(int, _DWORD *, glitch::IReferenceCounted *, _DWORD))(*(_DWORD *)v13 + 100);
              v77[4] = v77;
              v78 = v77;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v77,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v39(v13, v78, *v10, 0);
              v21 = v78;
              if ( v78 != v77 )
                goto LABEL_27;
              ++v10;
              goto LABEL_30;
            case 6:
              v38 = *(void (__fastcall **)(int, _DWORD *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v13 + 400);
              v75[4] = v75;
              v76 = v75;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v75,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v38(v13, v76, v10, 0);
              v36 = v76;
              if ( v76 == v75 )
              {
                v10 += 2;
              }
              else
              {
LABEL_67:
                if ( v36 )
                  GlitchFree(v36);
LABEL_69:
                v10 += 2;
              }
              goto LABEL_30;
            case 7:
              v40 = *(void (__fastcall **)(int, _DWORD *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v13 + 424);
              v73[4] = v73;
              v74 = v73;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v73,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v40(v13, v74, v10, 0);
              v34 = v74;
              if ( v74 == v73 )
              {
                v10 += 3;
              }
              else
              {
LABEL_63:
                if ( v34 )
                  GlitchFree(v34);
LABEL_65:
                v10 += 3;
              }
              goto LABEL_30;
            case 8:
              v31 = *(void (__fastcall **)(int, _DWORD *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v13 + 448);
              v71[4] = v71;
              v72 = v71;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v71,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v31(v13, v72, v10, 0);
              v22 = v72;
              if ( v72 != v71 )
                goto LABEL_33;
              v10 += 4;
              goto LABEL_36;
            case 0xB:
              v29 = *v10;
              if ( *v10 )
              {
                v30 = *(void (__fastcall **)(int, _DWORD *, glitch::IReferenceCounted *, _DWORD))(*(_DWORD *)v13 + 520);
                v69[4] = v69;
                v70 = v69;
                v49 = v29;
                std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                  v69,
                  *(_BYTE **)&v58.gap4[56],
                  *(_BYTE **)&v58.gap4[52]);
                v30(v13, v70, v49, 0);
                v21 = v70;
                if ( v70 == v69 )
                {
                  ++v10;
                  goto LABEL_30;
                }
              }
              else
              {
                v44 = *(void (__fastcall **)(int, _DWORD *, _DWORD *, _DWORD))(*(_DWORD *)v13 + 520);
                v67[4] = v67;
                v68 = v67;
                std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                  v67,
                  *(_BYTE **)&v58.gap4[56],
                  *(_BYTE **)&v58.gap4[52]);
                v44(v13, v68, v53, 0);
                v21 = v68;
                if ( v68 == v67 )
                {
                  ++v10;
                  goto LABEL_30;
                }
              }
LABEL_27:
              if ( v21 )
                GlitchFree(v21);
LABEL_29:
              ++v10;
LABEL_30:
              if ( ++v12 == v50 )
              {
LABEL_37:
                a2 = v13;
                goto LABEL_38;
              }
LABEL_31:
              v11 = v5[2];
              break;
            case 0xC:
            case 0xD:
            case 0xE:
            case 0xF:
              v48 = *(void (__fastcall **)(int, _DWORD *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v13 + 688);
              v65[4] = v65;
              v66 = v65;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v65,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v26 = *v10;
              v27 = v66;
              v28 = *v10 == nullptr;
              v56 = *v10;
              if ( v56 )
                v25 = *((_DWORD *)v26 + 1);
              if ( !v28 )
                *((_DWORD *)v26 + 1) = v25 + 1;
              v48(v13, v27, &v56, 0);
              if ( v56 )
                glitch::IReferenceCounted::drop(v56);
              v21 = v66;
              if ( v66 != v65 )
                goto LABEL_27;
              ++v10;
              goto LABEL_30;
            case 0x10:
              v47 = *(void (__fastcall **)(int, _DWORD *, int, _DWORD))(*(_DWORD *)v13 + 280);
              v63[4] = v63;
              v64 = v63;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v63,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v47(
                v13,
                v64,
                *(unsigned __int8 *)v10
              | (*((unsigned __int8 *)v10 + 1) << 8)
              | (*((unsigned __int8 *)v10 + 2) << 16)
              | (*((unsigned __int8 *)v10 + 3) << 24),
                0);
              v21 = v64;
              if ( v64 != v63 )
                goto LABEL_27;
              ++v10;
              goto LABEL_30;
            case 0x11:
              v46 = *(void (__fastcall **)(int, void *, glitch::IReferenceCounted *, glitch::IReferenceCounted *, glitch::IReferenceCounted *, glitch::IReferenceCounted *, _DWORD))(*(_DWORD *)v13 + 304);
              v61[4] = v61;
              v62 = v61;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v61,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v46(v13, v62, *v10, v10[1], v10[2], v10[3], 0);
              v22 = v62;
              if ( v62 != v61 )
              {
LABEL_33:
                if ( v22 )
                  GlitchFree(v22);
              }
              v10 += 4;
LABEL_36:
              if ( ++v12 == v50 )
                goto LABEL_37;
              goto LABEL_31;
            case 0x12:
              v45 = *(void (__fastcall **)(int, void *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v13 + 712);
              v59[4] = v59;
              v60 = v59;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v59,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v16 = *v10;
              v17 = v60;
              v18 = *v10 == nullptr;
              v55 = *v10;
              if ( v55 )
                v15 = *(_DWORD *)v16;
              if ( !v18 )
                *(_DWORD *)v16 = v15 + 1;
              v45(v13, v17, &v55, 0);
              v19 = v55;
              if ( v55 )
              {
                v18 = (*(_DWORD *)v55)-- == 1;
                if ( v18 )
                {
                  if ( !*((_BYTE *)v19 + 84) )
                  {
                    v20 = *((_DWORD **)v19 + 20);
                    *v20 = glitch::memory::Matrix4Pool;
                    glitch::memory::Matrix4Pool = (int)v20;
                  }
                  *((_DWORD *)v19 + 20) = 0;
                  LC_API_FREE_0(v19);
                }
              }
              v21 = v60;
              if ( v60 != v59 )
                goto LABEL_27;
              goto LABEL_29;
            default:
              goto LABEL_30;
          }
        }
      }
LABEL_38:
      (*(void (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
      std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringstream((int)v57);
      v23 = *(_DWORD *)(v51 + 12);
      if ( v23 )
      {
        while ( *(_DWORD *)(v23 + 8) )
          v23 = *(_DWORD *)(v23 + 8);
        v51 = v23;
      }
      else
      {
        v41 = *(_DWORD *)(v51 + 4);
        if ( *(_DWORD *)(v41 + 12) == v51 )
        {
          do
          {
            v42 = v41;
            v41 = *(_DWORD *)(v41 + 4);
          }
          while ( v42 == *(_DWORD *)(v41 + 12) );
          v51 = v42;
          v23 = *(_DWORD *)(v42 + 12);
        }
        v43 = v51;
        if ( v23 != v41 )
          v43 = v41;
        v51 = v43;
      }
    }
    while ( a1 != (_DWORD *)v51 );
  }
  return 16556;
}


// ===== 5bd608 glitch::video::CGlobalMaterialParameterManager::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::video::CGlobalMaterialParameterManager::serializeAttributes(int a1, int a2, _DWORD *a3)
{
  const char *v6; // r5
  int v7; // r8
  const char *v8; // r3
  int v9; // r1
  unsigned int v10; // r6
  unsigned int v11; // r2
  bool v12; // cf
  int v13; // r3
  int v14; // r2
  int v15; // r2
  char s[16]; // [sp+1Ch] [bp-18h] BYREF

  if ( a3 && (*a3 & 2) != 0 )
    return glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::serializeAttributes(
             (_DWORD *)a1,
             a2);
  (*(void (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 48))(a2, "Definitions");
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
    a2,
    "ParameterCount",
    *(unsigned __int16 *)(a1 + 38),
    0);
  v6 = *(const char **)(a1 + 8);
  if ( v6 != (const char *)a1 )
  {
    v7 = 0;
    v8 = "ArraySize";
    while ( 1 )
    {
      sprintf(s, "Param_%u", v7, v8);
      (*(void (__fastcall **)(int, char *))(*(_DWORD *)a2 + 48))(a2, s);
      v9 = *(_DWORD *)(a1 + 24);
      v10 = *((unsigned __int16 *)v6 + 14);
      v11 = -858993459 * ((*(_DWORD *)(a1 + 28) - v9) >> 2);
      v12 = v10 >= v11;
      if ( v10 < v11 )
      {
        v13 = 20;
        v10 = v9 + 20 * v10;
      }
      else
      {
        v11 = (unsigned int)&__GLOBAL_OFFSET_TABLE_;
        v13 = 10260;
      }
      if ( v12 )
        v10 = *(_DWORD *)(v11 + v13);
      v14 = *(_DWORD *)v10;
      if ( !*(_DWORD *)v10 )
      {
        v10 = 0;
        v14 = 1179403647;
      }
      (*(void (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 124))(a2, "Name", v14 + 4, 0);
      glitch::io::IAttributes::addEnum<glitch::video::E_SHADER_PARAMETER_TYPE>(a2, *(unsigned __int16 *)(v10 + 4), 0);
      glitch::io::IAttributes::addEnum<glitch::video::E_SHADER_PARAMETER_VALUE_TYPE>(
        a2,
        (int)"ValueType",
        *(unsigned __int8 *)(v10 + 6),
        0);
      (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
        a2,
        "ArraySize",
        *(_DWORD *)(v10 + 8),
        0);
      (*(void (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
      v8 = *((const char **)v6 + 3);
      if ( v8 )
      {
        while ( *((_DWORD *)v8 + 2) )
          v8 = *((const char **)v8 + 2);
        v6 = v8;
        if ( (const char *)a1 == v8 )
          break;
      }
      else
      {
        v15 = *((_DWORD *)v6 + 1);
        if ( *(const char **)(v15 + 12) == v6 )
        {
          do
          {
            v6 = (const char *)v15;
            v15 = *(_DWORD *)(v15 + 4);
          }
          while ( *(const char **)(v15 + 12) == v6 );
          v8 = *((const char **)v6 + 3);
        }
        if ( (const char *)v15 != v8 )
          v6 = (const char *)v15;
        if ( (const char *)a1 == v6 )
          break;
      }
      ++v7;
    }
  }
  (*(void (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
  (*(void (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 48))(a2, "Content");
  glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::serializeAttributes(
    (_DWORD *)a1,
    a2);
  return (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
}


// ===== 5bd8d4 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::grabParameters(void) =====
void __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::grabParameters(
        _DWORD *a1)
{
  int v1; // r6
  int v3; // r3
  unsigned int v4; // r0
  unsigned int v5; // r2
  bool v6; // cf
  int v7; // r2
  int v8; // r3
  const void **v9; // r4
  const void **i; // r8
  const void *v11; // r1
  _BYTE *v12; // r5
  int v13; // r0
  const void *v14; // [sp+0h] [bp-Ch]

  v1 = a1[2];
  if ( (_DWORD *)v1 != a1 )
  {
    while ( 2 )
    {
      v3 = a1[6];
      v4 = *(unsigned __int16 *)(v1 + 28);
      v5 = -858993459 * ((a1[7] - v3) >> 2);
      v6 = v4 >= v5;
      if ( v4 < v5 )
        v3 += 20 * v4;
      else
        v5 = 10260;
      if ( v6 )
        v3 = *(int *)((char *)&__GLOBAL_OFFSET_TABLE_ + v5);
      if ( !*(_DWORD *)v3 )
        v3 = 0;
      switch ( *(_BYTE *)(v3 + 6) )
      {
        case 0xB:
          v9 = (const void **)(a1[11] + *(_DWORD *)(v3 + 12));
          for ( i = &v9[*(_DWORD *)(v3 + 8)]; i != v9; ++v9 )
          {
            v11 = *v9;
            if ( *v9 )
            {
              v12 = (_BYTE *)glitch::memory::Matrix4Pool;
              if ( glitch::memory::Matrix4Pool )
              {
                glitch::memory::Matrix4Pool = *(_DWORD *)glitch::memory::Matrix4Pool;
              }
              else
              {
                v14 = *v9;
                v13 = boost::pool<glitch::core::SAlignedMalloc<(unsigned char)4>>::malloc_need_resize();
                v11 = v14;
                v12 = (_BYTE *)v13;
              }
              glitch::core::CMatrix4<float>::CMatrix4(v12, v11);
              *v9 = v12;
            }
          }
          goto LABEL_11;
        case 0xC:
        case 0xD:
        case 0xE:
        case 0xF:
          glitch::video::detail::grabParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
            (glitch::IReferenceCounted *)(a1[11] + *(_DWORD *)(v3 + 12)),
            *(_DWORD *)(v3 + 8));
          goto LABEL_11;
        case 0x12:
          glitch::video::detail::grabParameter<boost::intrusive_ptr<glitch::video::CLight>>(
            (_DWORD **)(a1[11] + *(_DWORD *)(v3 + 12)),
            *(_DWORD *)(v3 + 8));
          v7 = *(_DWORD *)(v1 + 12);
          if ( !v7 )
            goto LABEL_19;
          goto LABEL_14;
        default:
LABEL_11:
          v7 = *(_DWORD *)(v1 + 12);
          if ( v7 )
          {
LABEL_14:
            while ( *(_DWORD *)(v7 + 8) )
              v7 = *(_DWORD *)(v7 + 8);
            v1 = v7;
          }
          else
          {
LABEL_19:
            v8 = *(_DWORD *)(v1 + 4);
            if ( *(_DWORD *)(v8 + 12) == v1 )
            {
              do
              {
                v1 = v8;
                v8 = *(_DWORD *)(v8 + 4);
              }
              while ( v1 == *(_DWORD *)(v8 + 12) );
              v7 = *(_DWORD *)(v1 + 12);
            }
            if ( v8 != v7 )
              v1 = v8;
          }
          if ( a1 == (_DWORD *)v1 )
            return;
          continue;
      }
    }
  }
}


// ===== 5bda94 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::deserializeAttributes(glitch::io::IAttributes *) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::deserializeAttributes(
        int result,
        int a2)
{
  Elf32_Dyn *v2; // r7
  int v3; // r9
  _DWORD *v4; // r11
  int v6; // r12
  int v7; // r1
  unsigned int v8; // r0
  unsigned int v9; // r2
  bool v10; // cf
  int d_tag; // r1
  int v12; // r6
  unsigned __int32 d_val; // r4
  glitch::IReferenceCounted **v14; // r6
  int v15; // r4
  glitch::IReferenceCounted *v16; // r3
  glitch::IReferenceCounted *v17; // r0
  bool v18; // zf
  _DWORD *v19; // r2
  glitch::IReferenceCounted *v20; // r0
  _DWORD *v21; // r2
  unsigned int v22; // r3
  int v23; // r3
  glitch::IReferenceCounted *v24; // r1
  glitch::IReferenceCounted *v25; // r2
  glitch::IReferenceCounted *v26; // r3
  bool v27; // cc
  glitch::IReferenceCounted *v28; // r3
  glitch::IReferenceCounted *v29; // r0
  glitch::IReferenceCounted *v30; // r9
  unsigned int v31; // r3
  unsigned int v32; // r3
  int v33; // r2
  int v34; // [sp+10h] [bp-1BCh]
  _DWORD v35[4]; // [sp+38h] [bp-194h] BYREF
  _DWORD v36[3]; // [sp+48h] [bp-184h] BYREF
  _BYTE v37[68]; // [sp+54h] [bp-178h] BYREF
  _DWORD v38[17]; // [sp+98h] [bp-134h] BYREF
  _DWORD v39[4]; // [sp+DCh] [bp-F0h] BYREF
  _DWORD v40[4]; // [sp+ECh] [bp-E0h] BYREF
  _DWORD v41[3]; // [sp+FCh] [bp-D0h] BYREF
  _DWORD v42[3]; // [sp+108h] [bp-C4h] BYREF
  _DWORD v43[2]; // [sp+114h] [bp-B8h] BYREF
  _DWORD v44[2]; // [sp+11Ch] [bp-B0h] BYREF
  glitch::IReferenceCounted *v45; // [sp+124h] [bp-A8h] BYREF
  glitch::IReferenceCounted *v46; // [sp+128h] [bp-A4h] BYREF
  _BYTE v47[152]; // [sp+12Ch] [bp-A0h] BYREF

  v3 = *(_DWORD *)(result + 8);
  v4 = (_DWORD *)result;
  if ( v3 != result )
  {
    v6 = 10260;
    do
    {
      v7 = v4[6];
      v8 = *(unsigned __int16 *)(v3 + 28);
      v9 = -858993459 * ((v4[7] - v7) >> 2);
      v10 = v8 >= v9;
      if ( v8 < v9 )
      {
        v2 = (Elf32_Dyn *)(v7 + 20 * v8);
      }
      else
      {
        v8 = (unsigned int)&__GLOBAL_OFFSET_TABLE_;
        v6 = 10260;
      }
      if ( v10 )
        v2 = *(Elf32_Dyn **)(v8 + v6);
      d_tag = v2->d_tag;
      if ( !v2->d_tag )
      {
        v2 = nullptr;
        d_tag = 1179403647;
      }
      (*(void (__fastcall **)(int, int))(*(_DWORD *)a2 + 48))(a2, d_tag + 4);
      v12 = v4[11];
      d_val = v2[1].d_un.d_val;
      std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_stringstream((int)v47);
      if ( v2[1].d_tag )
      {
        v14 = (glitch::IReferenceCounted **)(v12 + d_val);
        v15 = 3;
        v34 = v3;
        do
        {
          while ( 2 )
          {
            LC_API_MEMSET_0(v38, 0, 0x40u);
            LOBYTE(v38[16]) = 1;
            v38[0] = 1065353216;
            v38[5] = 1065353216;
            v38[10] = 1065353216;
            v38[15] = 1065353216;
            switch ( BYTE2(v2->d_un.d_ptr) )
            {
              case 1:
                *v14++ = (glitch::IReferenceCounted *)(*(int (__fastcall **)(int, int))(*(_DWORD *)a2 + 92))(a2, v15);
                v32 = v15 - 2;
                ++v15;
                if ( v2[1].d_tag > v32 )
                  continue;
                goto LABEL_29;
              case 2:
                (*(void (__fastcall **)(_DWORD *, int, int))(*(_DWORD *)a2 + 344))(v44, a2, v15);
                *v14 = (glitch::IReferenceCounted *)v44[0];
                v14[1] = (glitch::IReferenceCounted *)v44[1];
                v14 += 2;
                v27 = v2[1].d_tag > (unsigned int)(v15 - 2);
                ++v15;
                if ( v27 )
                  continue;
                goto LABEL_29;
              case 3:
                (*(void (__fastcall **)(_DWORD *, int, int))(*(_DWORD *)a2 + 368))(v42, a2, v15);
                *v14 = (glitch::IReferenceCounted *)v42[0];
                v14[1] = (glitch::IReferenceCounted *)v42[1];
                v14[2] = (glitch::IReferenceCounted *)v42[2];
                v14 += 3;
                v27 = v2[1].d_tag > (unsigned int)(v15 - 2);
                ++v15;
                if ( v27 )
                  continue;
                goto LABEL_29;
              case 4:
                (*(void (__fastcall **)(_DWORD *, int, int))(*(_DWORD *)a2 + 392))(v40, a2, v15);
                *v14 = (glitch::IReferenceCounted *)v40[0];
                v14[1] = (glitch::IReferenceCounted *)v40[1];
                v14[2] = (glitch::IReferenceCounted *)v40[2];
                v14[3] = (glitch::IReferenceCounted *)v40[3];
                v14 += 4;
                v27 = v2[1].d_tag > (unsigned int)(v15 - 2);
                ++v15;
                if ( v27 )
                  continue;
                goto LABEL_29;
              case 5:
                *v14++ = (glitch::IReferenceCounted *)(*(int (__fastcall **)(int, int))(*(_DWORD *)a2 + 116))(a2, v15);
                v31 = v15 - 2;
                ++v15;
                if ( v2[1].d_tag > v31 )
                  continue;
                goto LABEL_29;
              case 6:
                (*(void (__fastcall **)(_DWORD *, int, int))(*(_DWORD *)a2 + 416))(v43, a2, v15);
                *v14 = (glitch::IReferenceCounted *)v43[0];
                v14[1] = (glitch::IReferenceCounted *)v43[1];
                v14 += 2;
                v27 = v2[1].d_tag > (unsigned int)(v15 - 2);
                ++v15;
                if ( v27 )
                  continue;
                goto LABEL_29;
              case 7:
                (*(void (__fastcall **)(_DWORD *, int, int))(*(_DWORD *)a2 + 440))(v41, a2, v15);
                *v14 = (glitch::IReferenceCounted *)v41[0];
                v14[1] = (glitch::IReferenceCounted *)v41[1];
                v14[2] = (glitch::IReferenceCounted *)v41[2];
                v14 += 3;
                v27 = v2[1].d_tag > (unsigned int)(v15 - 2);
                ++v15;
                if ( v27 )
                  continue;
                goto LABEL_29;
              case 8:
                (*(void (__fastcall **)(_DWORD *, int, int))(*(_DWORD *)a2 + 464))(v39, a2, v15);
                *v14 = (glitch::IReferenceCounted *)v39[0];
                v14[1] = (glitch::IReferenceCounted *)v39[1];
                v14[2] = (glitch::IReferenceCounted *)v39[2];
                v14[3] = (glitch::IReferenceCounted *)v39[3];
                v14 += 4;
                v27 = v2[1].d_tag > (unsigned int)(v15 - 2);
                ++v15;
                if ( v27 )
                  continue;
                goto LABEL_29;
              case 0xB:
                (*(void (__fastcall **)(_BYTE *, int, int))(*(_DWORD *)a2 + 536))(v37, a2, v15);
                memcpy(v38, v37, 0x41u);
                if ( glitch::core::CMatrix4<float>::isIdentity((int)v38) )
                {
                  *v14 = nullptr;
                  goto LABEL_27;
                }
                v30 = (glitch::IReferenceCounted *)glitch::memory::Matrix4Pool;
                if ( glitch::memory::Matrix4Pool )
                  glitch::memory::Matrix4Pool = *(_DWORD *)glitch::memory::Matrix4Pool;
                else
                  v30 = (glitch::IReferenceCounted *)boost::pool<glitch::core::SAlignedMalloc<(unsigned char)4>>::malloc_need_resize();
                glitch::core::CMatrix4<float>::CMatrix4(v30, v38);
                *v14++ = v30;
                goto LABEL_28;
              case 0xC:
              case 0xD:
              case 0xE:
              case 0xF:
                (*(void (__fastcall **)(glitch::IReferenceCounted **, int, int))(*(_DWORD *)a2 + 704))(&v46, a2, v15);
                v28 = v46;
                if ( v46 )
                  ++*((_DWORD *)v46 + 1);
                v29 = *v14;
                *v14 = v28;
                if ( v29 )
                  glitch::IReferenceCounted::drop(v29);
                if ( !v46 )
                  goto LABEL_27;
                glitch::IReferenceCounted::drop(v46);
                ++v14;
                break;
              case 0x10:
                v36[0] = (*(int (__fastcall **)(int, int))(*(_DWORD *)a2 + 296))(a2, v15);
                memcpy(v14++, v36, sizeof(glitch::IReferenceCounted *));
                v27 = v2[1].d_tag > (unsigned int)(v15 - 2);
                ++v15;
                if ( v27 )
                  continue;
                goto LABEL_29;
              case 0x11:
                (*(void (__fastcall **)(_DWORD *, int, int))(*(_DWORD *)a2 + 320))(v35, a2, v15);
                v24 = (glitch::IReferenceCounted *)v35[1];
                v25 = (glitch::IReferenceCounted *)v35[2];
                v26 = (glitch::IReferenceCounted *)v35[3];
                *v14 = (glitch::IReferenceCounted *)v35[0];
                v14[1] = v24;
                v14[2] = v25;
                v14[3] = v26;
                v14 += 4;
                v27 = v2[1].d_tag > (unsigned int)(v15 - 2);
                ++v15;
                if ( v27 )
                  continue;
                goto LABEL_29;
              case 0x12:
                (*(void (__fastcall **)(glitch::IReferenceCounted **, int, int))(*(_DWORD *)a2 + 728))(&v45, a2, v15);
                v16 = v45;
                if ( v45 )
                  ++*(_DWORD *)v45;
                v17 = *v14;
                *v14 = v16;
                if ( v17 )
                {
                  v18 = (*(_DWORD *)v17)-- == 1;
                  if ( v18 )
                  {
                    if ( !*((_BYTE *)v17 + 84) )
                    {
                      v19 = *((_DWORD **)v17 + 20);
                      *v19 = glitch::memory::Matrix4Pool;
                      glitch::memory::Matrix4Pool = (int)v19;
                    }
                    *((_DWORD *)v17 + 20) = 0;
                    LC_API_FREE_0(v17);
                  }
                }
                v20 = v45;
                if ( v45 )
                {
                  v18 = (*(_DWORD *)v45)-- == 1;
                  if ( v18 )
                  {
                    if ( !*((_BYTE *)v20 + 84) )
                    {
                      v21 = *((_DWORD **)v20 + 20);
                      *v21 = glitch::memory::Matrix4Pool;
                      glitch::memory::Matrix4Pool = (int)v21;
                    }
                    *((_DWORD *)v20 + 20) = 0;
                    LC_API_FREE_0(v20);
                  }
                }
LABEL_27:
                ++v14;
                break;
              default:
                goto LABEL_28;
            }
            break;
          }
LABEL_28:
          v22 = v15 - 2;
          ++v15;
        }
        while ( v2[1].d_tag > v22 );
LABEL_29:
        v3 = v34;
      }
      (*(void (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
      result = std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringstream((int)v47);
      v23 = *(_DWORD *)(v3 + 12);
      if ( v23 )
      {
        while ( *(_DWORD *)(v23 + 8) )
          v23 = *(_DWORD *)(v23 + 8);
        v3 = v23;
      }
      else
      {
        v33 = *(_DWORD *)(v3 + 4);
        if ( v3 == *(_DWORD *)(v33 + 12) )
        {
          do
          {
            v3 = v33;
            v33 = *(_DWORD *)(v33 + 4);
          }
          while ( *(_DWORD *)(v33 + 12) == v3 );
          v23 = *(_DWORD *)(v3 + 12);
        }
        if ( v33 != v23 )
          v3 = v33;
      }
    }
    while ( v4 != (_DWORD *)v3 );
  }
  return result;
}


// ===== 5be198 glitch::video::CGlobalMaterialParameterManager::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::video::CGlobalMaterialParameterManager::deserializeAttributes(int a1, int a2, _DWORD *a3)
{
  int v5; // r5
  const char *v6; // r3
  int (__fastcall *v7)(int, char *, int); // r8
  int StringsInternal; // r0
  int v9; // r10
  int (__fastcall *v10)(int, const char *, int); // r8
  int v11; // r0
  int v12; // r8
  int v13; // r0
  int v15; // [sp+10h] [bp-4Ch]
  _BYTE v16[20]; // [sp+2Ch] [bp-30h] BYREF
  void *p; // [sp+40h] [bp-1Ch]
  char s[16]; // [sp+44h] [bp-18h] BYREF

  if ( a3 && (*a3 & 2) != 0 )
    return glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::deserializeAttributes(
             a1,
             a2);
  (*(void (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 48))(a2, "Definitions");
  v15 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 88))(a2, "ParameterCount");
  if ( v15 )
  {
    v5 = 0;
    v6 = "ArraySize";
    do
    {
      sprintf(s, "Param_%u", v5, v6);
      (*(void (__fastcall **)(int, char *))(*(_DWORD *)a2 + 48))(a2, s);
      (*(void (__fastcall **)(_BYTE *, int, const char *))(*(_DWORD *)a2 + 132))(v16, a2, "Name");
      v7 = *(int (__fastcall **)(int, char *, int))(*(_DWORD *)a2 + 256);
      StringsInternal = glitch::video::getStringsInternal(0);
      v9 = v7(a2, "Type", StringsInternal);
      v10 = *(int (__fastcall **)(int, const char *, int))(*(_DWORD *)a2 + 256);
      v11 = glitch::video::getStringsInternal(0);
      v12 = v10(a2, "ValueType", v11);
      v13 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 88))(a2, "ArraySize");
      glitch::video::CGlobalMaterialParameterManager::addParameter(a1, p, v9, v12, v13, 255);
      (*(void (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
      if ( p != v16 )
      {
        if ( p )
          GlitchFree(p);
      }
      ++v5;
    }
    while ( v15 != v5 );
  }
  (*(void (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
  (*(void (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 48))(a2, "Content");
  glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::deserializeAttributes(
    a1,
    a2);
  return (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
}


// ===== 5be3ec glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::initParametersToIdentity(void) =====
void __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::initParametersToIdentity(
        _DWORD *a1)
{
  int v1; // r4
  int v3; // r12
  int v4; // r1
  unsigned int v5; // r0
  int *v6; // r0
  int v7; // r2
  int v8; // r1
  int v9; // r3
  int v10; // r0
  _DWORD *v11; // r3
  int v12; // r3
  int v13; // r2
  glitch::IReferenceCounted *v14; // r0
  _DWORD *v15; // r0
  _DWORD *v17; // r2
  int v18; // [sp+0h] [bp-Ch]
  int v19; // [sp+0h] [bp-Ch]

  v1 = a1[2];
  if ( (_DWORD *)v1 != a1 )
  {
    v3 = -1;
    while ( 2 )
    {
      v4 = a1[6];
      v5 = *(unsigned __int16 *)(v1 + 28);
      if ( v5 < -858993459 * ((a1[7] - v4) >> 2) )
        v6 = (int *)(v4 + 20 * v5);
      else
        v6 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
      v7 = a1[11];
      if ( !*v6 )
        v6 = nullptr;
      v8 = *((unsigned __int8 *)v6 + 6);
      v9 = v6[3];
      v10 = v7 + v9;
      switch ( v8 )
      {
        case 0:
          *(_BYTE *)(v7 + v9) = 0;
          goto LABEL_11;
        case 1:
          *(_DWORD *)(v7 + v9) = 0;
          goto LABEL_11;
        case 2:
          *(_DWORD *)(v7 + v9) = 0;
          *(_DWORD *)(v10 + 4) = 0;
          goto LABEL_11;
        case 3:
          *(_DWORD *)(v7 + v9) = 0;
          *(_DWORD *)(v10 + 8) = 0;
          *(_DWORD *)(v10 + 4) = 0;
          goto LABEL_11;
        case 4:
          *(_DWORD *)(v7 + v9) = 0;
          *(_DWORD *)(v10 + 12) = 0;
          *(_DWORD *)(v10 + 4) = 0;
          *(_DWORD *)(v10 + 8) = 0;
          goto LABEL_11;
        case 5:
          *(_DWORD *)(v7 + v9) = 0;
          goto LABEL_11;
        case 6:
          *(_DWORD *)(v7 + v9) = 0;
          *(_DWORD *)(v10 + 4) = 0;
          goto LABEL_11;
        case 7:
          *(_DWORD *)(v7 + v9) = 0;
          *(_DWORD *)(v10 + 8) = 0;
          *(_DWORD *)(v10 + 4) = 0;
          goto LABEL_11;
        case 8:
          *(_DWORD *)(v7 + v9) = 1065353216;
          *(_DWORD *)(v10 + 12) = 1065353216;
          *(_DWORD *)(v10 + 4) = 1065353216;
          *(_DWORD *)(v10 + 8) = 1065353216;
          goto LABEL_11;
        case 11:
          v11 = *(_DWORD **)(v7 + v9);
          if ( v11 )
          {
            *v11 = glitch::memory::Matrix4Pool;
            glitch::memory::Matrix4Pool = (int)v11;
          }
          goto LABEL_11;
        case 12:
        case 13:
        case 14:
        case 15:
          v14 = *(glitch::IReferenceCounted **)(v7 + v9);
          *(_DWORD *)(v7 + v9) = 0;
          if ( v14 )
          {
            v18 = v3;
            glitch::IReferenceCounted::drop(v14);
            v3 = v18;
          }
          goto LABEL_11;
        case 16:
          *(_BYTE *)(v10 + 1) = v3;
          *(_BYTE *)(v10 + 3) = v3;
          *(_BYTE *)(v10 + 2) = v3;
          *(_BYTE *)(v7 + v9) = v3;
          v12 = *(_DWORD *)(v1 + 12);
          if ( !v12 )
            goto LABEL_19;
          goto LABEL_14;
        case 17:
          *(_DWORD *)(v10 + 4) = 1065353216;
          *(_DWORD *)(v10 + 12) = 1065353216;
          *(_DWORD *)(v10 + 8) = 1065353216;
          *(_DWORD *)(v7 + v9) = 1065353216;
          goto LABEL_11;
        case 18:
          v15 = *(_DWORD **)(v7 + v9);
          *(_DWORD *)(v7 + v9) = 0;
          if ( v15 )
          {
            if ( (*v15)-- == 1 )
            {
              if ( !*((_BYTE *)v15 + 84) )
              {
                v17 = (_DWORD *)v15[20];
                *v17 = glitch::memory::Matrix4Pool;
                glitch::memory::Matrix4Pool = (int)v17;
              }
              v15[20] = 0;
              v19 = v3;
              LC_API_FREE_0(v15);
              v3 = v19;
            }
          }
          goto LABEL_11;
        default:
LABEL_11:
          v12 = *(_DWORD *)(v1 + 12);
          if ( v12 )
          {
LABEL_14:
            while ( *(_DWORD *)(v12 + 8) )
              v12 = *(_DWORD *)(v12 + 8);
            v1 = v12;
          }
          else
          {
LABEL_19:
            v13 = *(_DWORD *)(v1 + 4);
            if ( v1 == *(_DWORD *)(v13 + 12) )
            {
              do
              {
                v1 = v13;
                v13 = *(_DWORD *)(v13 + 4);
              }
              while ( *(_DWORD *)(v13 + 12) == v1 );
              v12 = *(_DWORD *)(v1 + 12);
            }
            if ( v13 != v12 )
              v1 = v13;
          }
          if ( a1 == (_DWORD *)v1 )
            return;
          continue;
      }
    }
  }
}


// ===== 5be68c glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<boost::intrusive_ptr<glitch::video::CLight>>(ushort,uint,boost::intrusive_ptr<glitch::video::CLight> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<boost::intrusive_ptr<glitch::video::CLight>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r4
  int *v5; // r4
  _DWORD *v7; // r3
  int v8; // r1
  int v9; // r4
  unsigned int v10; // r2
  _DWORD *v11; // r0
  _DWORD *v13; // r2

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 18 || a3 >= v5[2] )
    return 0;
  v7 = (_DWORD *)*a4;
  v8 = a1[11];
  v9 = v5[3];
  if ( v7 )
    a1 = (_DWORD *)*v7;
  v10 = v9 + 4 * a3;
  if ( v7 )
    *v7 = (char *)a1 + 1;
  v11 = *(_DWORD **)(v8 + v10);
  *(_DWORD *)(v8 + v10) = v7;
  if ( !v11 )
    return 1;
  if ( (*v11)-- != 1 )
    return 1;
  if ( !*((_BYTE *)v11 + 84) )
  {
    v13 = (_DWORD *)v11[20];
    *v13 = glitch::memory::Matrix4Pool;
    glitch::memory::Matrix4Pool = (int)v13;
  }
  v11[20] = 0;
  LC_API_FREE_0(v11);
  return 1;
}


// ===== 5be794 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::video::SColorf>(ushort,uint,glitch::video::SColorf&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::video::SColorf>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        float *a4)
{
  int v4; // r5
  int *v6; // r5
  int v7; // r3
  int v8; // r1
  int v9; // r2
  int v10; // r5
  float v12; // r6
  float v13; // r7
  float v14; // r0
  int v15; // r1
  int v16; // r2
  int v17; // r3

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v6 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v6 = (int *)(v4 + 20 * a2);
  if ( !*v6 )
    return 0;
  v7 = *((unsigned __int8 *)v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 0x20000) == 0 || a3 >= v6[2] )
    return 0;
  v8 = a1[11];
  v9 = v6[3];
  v10 = v8 + v9;
  if ( v7 == 16 )
  {
    v12 = (float)*(unsigned __int8 *)(v10 + 1) * 0.0039216;
    v13 = (float)*(unsigned __int8 *)(v10 + 2) * 0.0039216;
    v14 = (float)*(unsigned __int8 *)(v10 + 3);
    *a4 = (float)*(unsigned __int8 *)(v8 + v9) * 0.0039216;
    a4[3] = v14 * 0.0039216;
    a4[2] = v13;
    a4[1] = v12;
    return 1;
  }
  if ( v7 != 17 && v7 != 8 )
    return 1;
  v15 = *(_DWORD *)(v10 + 4);
  v16 = *(_DWORD *)(v10 + 8);
  v17 = *(_DWORD *)(v10 + 12);
  *a4 = *(float *)v10;
  *((_DWORD *)a4 + 1) = v15;
  *((_DWORD *)a4 + 2) = v16;
  *((_DWORD *)a4 + 3) = v17;
  return 1;
}


// ===== 5be8e4 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::video::SColor>(ushort,uint,glitch::video::SColor&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::video::SColor>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _BYTE *a4)
{
  int v4; // r4
  int *v6; // r4
  int v7; // r3
  int v8; // r6
  int v9; // r5
  float *v10; // r4
  char v12; // r8
  char v13; // r6
  char v14; // r5
  unsigned int v15; // r0
  char v16; // r8
  char v17; // r6
  char v18; // r5
  unsigned int v19; // r0

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v6 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v6 = (int *)(v4 + 20 * a2);
  if ( !*v6 )
    return 0;
  v7 = *((unsigned __int8 *)v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 0x10000) == 0 || a3 >= v6[2] )
    return 0;
  v8 = a1[11];
  v9 = v6[3];
  v10 = (float *)(v8 + v9);
  if ( v7 == 16 )
  {
    memcpy(a4, (const void *)(v8 + v9), 4u);
    return 1;
  }
  else if ( v7 == 17 )
  {
    v16 = (unsigned int)(float)(v10[3] * 255.0);
    v17 = (unsigned int)(float)(*(float *)(v8 + v9) * 255.0);
    v18 = (unsigned int)(float)(v10[1] * 255.0);
    v19 = (unsigned int)(float)(v10[2] * 255.0);
    *a4 = v17;
    a4[2] = v19;
    a4[3] = v16;
    a4[1] = v18;
    return 1;
  }
  else
  {
    if ( v7 == 8 )
    {
      v12 = (unsigned int)(float)(v10[3] * 255.0);
      v13 = (unsigned int)(float)(*(float *)(v8 + v9) * 255.0);
      v14 = (unsigned int)(float)(v10[1] * 255.0);
      v15 = (unsigned int)(float)(v10[2] * 255.0);
      *a4 = v13;
      a4[2] = v15;
      a4[3] = v12;
      a4[1] = v14;
    }
    return 1;
  }
}


// ===== 5beaa4 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(ushort,uint,boost::intrusive_ptr<glitch::video::ITexture>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        glitch::IReferenceCounted **a4)
{
  int v4; // r4
  int *v5; // r4
  int v6; // r0
  int result; // r0
  glitch::IReferenceCounted *v8; // r2
  glitch::IReferenceCounted *v9; // r0

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || (unsigned int)*((unsigned __int8 *)v5 + 6) - 12 > 3 || a3 >= v5[2] )
    return 0;
  v6 = a1[11];
  switch ( *((_BYTE *)v5 + 6) )
  {
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      v8 = *(glitch::IReferenceCounted **)(v6 + v5[3]);
      if ( v8 )
        ++*((_DWORD *)v8 + 1);
      v9 = *a4;
      *a4 = v8;
      if ( !v9 )
        goto LABEL_13;
      glitch::IReferenceCounted::drop(v9);
      result = 1;
      break;
    default:
LABEL_13:
      result = 1;
      break;
  }
  return result;
}


// ===== 5beb84 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterElement<int>(ushort,uint,uchar,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterElement<int>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        unsigned int a4,
        int a5)
{
  int v5; // r12
  int *v6; // r12
  int v7; // r5
  int v9; // r6
  int v10; // r5
  int v11; // r8
  _BYTE *v12; // r0
  unsigned int v13; // [sp+4h] [bp-4h]

  v5 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v5) >> 2) )
    v6 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v6 = (int *)(v5 + 20 * a2);
  if ( !*v6 )
    return 0;
  v7 = *((unsigned __int8 *)v6 + 6);
  if ( glitch::video::detail::SShaderParameterTypeInspection::ValueTypeBaseType[v7] != 1
    || a4 >= glitch::video::detail::SShaderParameterTypeInspection::ValueTypeArraySize[v7]
    || a3 >= v6[2] )
  {
    return 0;
  }
  if ( v7 == 11 )
  {
    v9 = a1[11];
    v10 = v6[3];
    v11 = *(_DWORD *)(v9 + v10);
    if ( !v11 )
    {
      v13 = a4;
      v12 = GlitchAlloc(0x44u, 0);
      *(_DWORD *)(v9 + v10) = v12;
      glitch::core::CMatrix4<float>::CMatrix4(v12, &glitch::core::IdentityMatrix);
      v11 = *(_DWORD *)(v9 + v10);
      a4 = v13;
    }
    *(_BYTE *)(v11 + 64) = 0;
    *(float *)(v11 + 4 * a4) = (float)a5;
    return 1;
  }
  else
  {
    *(_DWORD *)(a1[11] + v6[3] + 4 * (a4 + a3)) = a5;
    return 1;
  }
}


// ===== 5becc4 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterElement<uchar>(ushort,uint,uchar,uchar) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterElement<unsigned char>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        unsigned int a4,
        unsigned __int8 a5)
{
  int v5; // r12
  int *v6; // r12
  int v7; // r1
  int v9; // r6
  int v10; // r5
  int v11; // r8
  _BYTE *v12; // r0
  unsigned int v13; // [sp+4h] [bp-4h]

  v5 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v5) >> 2) )
    v6 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v6 = (int *)(v5 + 20 * a2);
  if ( !*v6 )
    return 0;
  v7 = *((unsigned __int8 *)v6 + 6);
  if ( glitch::video::detail::SShaderParameterTypeInspection::ValueTypeBaseType[v7]
    || a4 >= glitch::video::detail::SShaderParameterTypeInspection::ValueTypeArraySize[v7]
    || a3 >= v6[2] )
  {
    return 0;
  }
  if ( v7 == 11 )
  {
    v9 = a1[11];
    v10 = v6[3];
    v11 = *(_DWORD *)(v9 + v10);
    if ( !v11 )
    {
      v13 = a4;
      v12 = GlitchAlloc(0x44u, 0);
      *(_DWORD *)(v9 + v10) = v12;
      glitch::core::CMatrix4<float>::CMatrix4(v12, &glitch::core::IdentityMatrix);
      v11 = *(_DWORD *)(v9 + v10);
      a4 = v13;
    }
    *(_BYTE *)(v11 + 64) = 0;
    *(float *)(v11 + 4 * a4) = (float)a5;
    return 1;
  }
  else
  {
    *(_BYTE *)(a1[11] + a4 + a3 + v6[3]) = a5;
    return 1;
  }
}


// ===== 5bee04 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter(ushort,glitch::core::CMatrix4<float> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter(
        _DWORD *a1,
        unsigned int a2,
        _BYTE *a3,
        int a4)
{
  int v4; // r5
  int *v6; // r5
  int v8; // r7
  _BYTE *v9; // r8
  _BYTE **v10; // r6
  int v11; // r5
  _BYTE *v12; // r1

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v6 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v6 = (int *)(v4 + 20 * a2);
  if ( !*v6 || *((_BYTE *)v6 + 6) != 11 )
    return 0;
  if ( a4 )
    v8 = a4;
  else
    v8 = 68;
  v9 = &a3[v6[2] * v8];
  if ( a3 != v9 )
  {
    v10 = (_BYTE **)(a1[11] + v6[3]);
    v11 = 0;
    v12 = a3;
    do
    {
      v11 += v8;
      glitch::video::detail::setMatrixParameter(v10, v12);
      v12 = &a3[v11];
      ++v10;
    }
    while ( v9 != &a3[v11] );
  }
  return 1;
}


// ===== 5beed4 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt(ushort,glitch::core::CMatrix4<float> const*,int) =====
// attributes: thunk
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt(
        _DWORD *a1,
        unsigned int a2,
        _BYTE *a3,
        int a4)
{
  return glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter(
           a1,
           a2,
           a3,
           a4);
}

