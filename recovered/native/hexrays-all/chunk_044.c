// ===== 6f8634 glitch::scene::CParticleAttractionAffector::~CParticleAttractionAffector() =====
void __fastcall glitch::scene::CParticleAttractionAffector::~CParticleAttractionAffector(
        glitch::scene::CParticleAttractionAffector *this)
{
  ;
}


// ===== 6f8638 `virtual thunk to'glitch::scene::CParticleAttractionAffector::~CParticleAttractionAffector() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleAttractionAffector::~CParticleAttractionAffector(
        glitch::scene::CParticleAttractionAffector *this)
{
  glitch::scene::CParticleAttractionAffector::~CParticleAttractionAffector((glitch::scene::CParticleAttractionAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6f8648 `virtual thunk to'glitch::scene::CParticleAttractionAffector::~CParticleAttractionAffector() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleAttractionAffector::~CParticleAttractionAffector(
        glitch::scene::CParticleAttractionAffector *this)
{
  glitch::scene::CParticleAttractionAffector::~CParticleAttractionAffector((glitch::scene::CParticleAttractionAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6f8658 `global constructor keyed to'.._source_glitch_scene_CParticleAttractionAffector.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CParticleAttractionAffector.cpp()
{
  dword_9F83CC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F83C8 = 1056964608;
}


// ===== 6f8678 glitch::scene::IParticleAffector::~IParticleAffector() =====
void __fastcall glitch::scene::IParticleAffector::~IParticleAffector(glitch::scene::IParticleAffector *this)
{
  *(_DWORD *)this = off_98CAE4;
  LC_API_FREE_0(this);
}


// ===== 6f86ac `virtual thunk to'glitch::scene::IParticleAffector::~IParticleAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleAffector::~IParticleAffector(
        glitch::scene::IParticleAffector *this)
{
  glitch::scene::IParticleAffector::~IParticleAffector((glitch::scene::IParticleAffector *)((char *)this
                                                                                          + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6f86bc `virtual thunk to'glitch::scene::IParticleAffector::~IParticleAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleAffector::~IParticleAffector(
        glitch::scene::IParticleAffector *this)
{
  glitch::scene::IParticleAffector::~IParticleAffector((glitch::scene::IParticleAffector *)((char *)this
                                                                                          + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6f86cc glitch::scene::CParticleAttractionAffector::affect(uint,glitch::scene::SParticle *,uint) =====
float __fastcall glitch::scene::CParticleAttractionAffector::affect(int a1, int a2, float *a3, int a4)
{
  float result; // r0
  int v8; // r3
  int v9; // r7
  float v10; // r8
  float v11; // r6
  float *v12; // r0
  float v13; // r6
  float v14; // r8
  float v15; // r9
  float v16; // r0
  float v17; // r6
  float v18; // r8
  float v19; // r10
  float v20; // [sp+0h] [bp-1Ch]
  float v21[4]; // [sp+Ch] [bp-10h] BYREF

  result = *(float *)(a1 + 28);
  if ( result == 0.0 )
  {
    *(_DWORD *)(a1 + 28) = a2;
  }
  else
  {
    result = (float)(unsigned int)(a2 - LODWORD(result)) / 1000.0;
    v20 = result;
    v8 = *(unsigned __int8 *)(a1 + 4);
    *(_DWORD *)(a1 + 28) = a2;
    if ( v8 && a4 )
    {
      v9 = 0;
      do
      {
        v10 = *(float *)(a1 + 12) - a3[1];
        v11 = *(float *)(a1 + 16) - a3[2];
        v21[0] = *(float *)(a1 + 8) - *a3;
        v21[1] = v10;
        v21[2] = v11;
        v12 = glitch::core::vector3d<float>::normalize(v21);
        v13 = *v12;
        v14 = v12[1];
        v15 = v12[2];
        v16 = v20 * *(float *)(a1 + 20);
        v17 = v16 * v13;
        v18 = v16 * v14;
        result = v16 * v15;
        v19 = (float)(v20 * *(float *)(a1 + 20)) * v15;
        if ( !*(_BYTE *)(a1 + 27) )
        {
          LODWORD(v17) += 0x80000000;
          LODWORD(v18) += 0x80000000;
          LODWORD(v19) = LODWORD(result) + 0x80000000;
        }
        ++v9;
        if ( *(_BYTE *)(a1 + 24) )
        {
          result = *a3 + v17;
          *a3 = result;
        }
        if ( *(_BYTE *)(a1 + 25) )
        {
          result = a3[1] + v18;
          a3[1] = result;
        }
        if ( *(_BYTE *)(a1 + 26) )
        {
          result = a3[2] + v19;
          a3[2] = result;
        }
        a3 += 17;
      }
      while ( v9 != a4 );
    }
  }
  return result;
}


// ===== 6f8840 glitch::scene::IParticleAttractionAffector::~IParticleAttractionAffector() =====
void __fastcall glitch::scene::IParticleAttractionAffector::~IParticleAttractionAffector(
        glitch::scene::IParticleAttractionAffector *this)
{
  *(_DWORD *)this = off_98CC3C;
  *((_DWORD *)this + 2) = off_98CBF0;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98CC3C;
  LC_API_FREE_0(this);
}


// ===== 6f8894 `virtual thunk to'glitch::scene::IParticleAttractionAffector::~IParticleAttractionAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleAttractionAffector::~IParticleAttractionAffector(
        glitch::scene::IParticleAttractionAffector *this)
{
  glitch::scene::IParticleAttractionAffector::~IParticleAttractionAffector((glitch::scene::IParticleAttractionAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6f88a4 `virtual thunk to'glitch::scene::IParticleAttractionAffector::~IParticleAttractionAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleAttractionAffector::~IParticleAttractionAffector(
        glitch::scene::IParticleAttractionAffector *this)
{
  glitch::scene::IParticleAttractionAffector::~IParticleAttractionAffector((glitch::scene::IParticleAttractionAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6f88b4 glitch::scene::CParticleAttractionAffector::~CParticleAttractionAffector() =====
void __fastcall glitch::scene::CParticleAttractionAffector::~CParticleAttractionAffector(
        glitch::scene::CParticleAttractionAffector *this)
{
  *(_DWORD *)this = off_98CD94;
  *((_DWORD *)this + 8) = off_98CD38;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98CD94;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_98CDF0;
  *(_DWORD *)this = off_98CE1C;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98CE1C;
  LC_API_FREE_0(this);
}


// ===== 6f892c `virtual thunk to'glitch::scene::CParticleAttractionAffector::~CParticleAttractionAffector() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleAttractionAffector::~CParticleAttractionAffector(
        glitch::scene::CParticleAttractionAffector *this)
{
  glitch::scene::CParticleAttractionAffector::~CParticleAttractionAffector((glitch::scene::CParticleAttractionAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6f893c `virtual thunk to'glitch::scene::CParticleAttractionAffector::~CParticleAttractionAffector() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleAttractionAffector::~CParticleAttractionAffector(
        glitch::scene::CParticleAttractionAffector *this)
{
  glitch::scene::CParticleAttractionAffector::~CParticleAttractionAffector((glitch::scene::CParticleAttractionAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6f894c glitch::scene::IParticleBoxEmitter::getType(void) =====
int __fastcall glitch::scene::IParticleBoxEmitter::getType(glitch::scene::IParticleBoxEmitter *this)
{
  return 2;
}


// ===== 6f8954 glitch::scene::CParticleBoxEmitter::setDirection(glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::scene::CParticleBoxEmitter::setDirection(_DWORD *result, _DWORD *a2)
{
  result[10] = *a2;
  result[11] = a2[1];
  result[12] = a2[2];
  return result;
}


// ===== 6f8970 glitch::scene::CParticleBoxEmitter::setMinParticlesPerSecond(uint) =====
int __fastcall glitch::scene::CParticleBoxEmitter::setMinParticlesPerSecond(int this, unsigned int a2)
{
  *(_DWORD *)(this + 52) = a2;
  return this;
}


// ===== 6f8978 glitch::scene::CParticleBoxEmitter::setMaxParticlesPerSecond(uint) =====
int __fastcall glitch::scene::CParticleBoxEmitter::setMaxParticlesPerSecond(int this, unsigned int a2)
{
  *(_DWORD *)(this + 56) = a2;
  return this;
}


// ===== 6f8980 glitch::scene::CParticleBoxEmitter::setMinStartColor(glitch::video::SColor const&) =====
void *__fastcall glitch::scene::CParticleBoxEmitter::setMinStartColor(int a1, const void *a2)
{
  return memcpy((void *)(a1 + 60), a2, 4u);
}


// ===== 6f8994 glitch::scene::CParticleBoxEmitter::setMaxStartColor(glitch::video::SColor const&) =====
void *__fastcall glitch::scene::CParticleBoxEmitter::setMaxStartColor(int a1, const void *a2)
{
  return memcpy((void *)(a1 + 64), a2, 4u);
}


// ===== 6f89a8 glitch::scene::CParticleBoxEmitter::setBox(glitch::core::aabbox3d<float> const&) =====
_DWORD *__fastcall glitch::scene::CParticleBoxEmitter::setBox(_DWORD *result, _DWORD *a2)
{
  result[4] = *a2;
  result[5] = a2[1];
  result[6] = a2[2];
  result[7] = a2[3];
  result[8] = a2[4];
  result[9] = a2[5];
  return result;
}


// ===== 6f89dc glitch::scene::CParticleBoxEmitter::getDirection(void) =====
char *__fastcall glitch::scene::CParticleBoxEmitter::getDirection(glitch::scene::CParticleBoxEmitter *this)
{
  return (char *)this + 40;
}


// ===== 6f89e4 glitch::scene::CParticleBoxEmitter::getMinParticlesPerSecond(void) =====
int __fastcall glitch::scene::CParticleBoxEmitter::getMinParticlesPerSecond(glitch::scene::CParticleBoxEmitter *this)
{
  return *((_DWORD *)this + 13);
}


// ===== 6f89ec glitch::scene::CParticleBoxEmitter::getMaxParticlesPerSecond(void) =====
int __fastcall glitch::scene::CParticleBoxEmitter::getMaxParticlesPerSecond(glitch::scene::CParticleBoxEmitter *this)
{
  return *((_DWORD *)this + 14);
}


// ===== 6f89f4 glitch::scene::CParticleBoxEmitter::getMinStartColor(void) =====
char *__fastcall glitch::scene::CParticleBoxEmitter::getMinStartColor(glitch::scene::CParticleBoxEmitter *this)
{
  return (char *)this + 60;
}


// ===== 6f89fc glitch::scene::CParticleBoxEmitter::getMaxStartColor(void) =====
char *__fastcall glitch::scene::CParticleBoxEmitter::getMaxStartColor(glitch::scene::CParticleBoxEmitter *this)
{
  return (char *)this + 64;
}


// ===== 6f8a04 glitch::scene::CParticleBoxEmitter::getBox(void) =====
char *__fastcall glitch::scene::CParticleBoxEmitter::getBox(glitch::scene::CParticleBoxEmitter *this)
{
  return (char *)this + 16;
}


// ===== 6f8a0c glitch::scene::CParticleBoxEmitter::getMinLifeTime(void) =====
int __fastcall glitch::scene::CParticleBoxEmitter::getMinLifeTime(glitch::scene::CParticleBoxEmitter *this)
{
  return *((_DWORD *)this + 17);
}


// ===== 6f8a14 glitch::scene::CParticleBoxEmitter::getMaxLifeTime(void) =====
int __fastcall glitch::scene::CParticleBoxEmitter::getMaxLifeTime(glitch::scene::CParticleBoxEmitter *this)
{
  return *((_DWORD *)this + 18);
}


// ===== 6f8a1c glitch::scene::CParticleBoxEmitter::getMaxAngleDegrees(void) =====
int __fastcall glitch::scene::CParticleBoxEmitter::getMaxAngleDegrees(glitch::scene::CParticleBoxEmitter *this)
{
  return *((_DWORD *)this + 21);
}


// ===== 6f8a24 glitch::scene::IParticleBoxEmitter::~IParticleBoxEmitter() =====
void __fastcall glitch::scene::IParticleBoxEmitter::~IParticleBoxEmitter(glitch::scene::IParticleBoxEmitter *this)
{
  ;
}


// ===== 6f8a28 `virtual thunk to'glitch::scene::IParticleBoxEmitter::~IParticleBoxEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleBoxEmitter::~IParticleBoxEmitter(
        glitch::scene::IParticleBoxEmitter *this)
{
  glitch::scene::IParticleBoxEmitter::~IParticleBoxEmitter((glitch::scene::IParticleBoxEmitter *)((char *)this
                                                                                                + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6f8a38 `virtual thunk to'glitch::scene::IParticleBoxEmitter::~IParticleBoxEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleBoxEmitter::~IParticleBoxEmitter(
        glitch::scene::IParticleBoxEmitter *this)
{
  glitch::scene::IParticleBoxEmitter::~IParticleBoxEmitter((glitch::scene::IParticleBoxEmitter *)((char *)this
                                                                                                + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6f8a48 glitch::scene::CParticleBoxEmitter::CParticleBoxEmitter(glitch::core::aabbox3d<float> const&,glitch::core::vector3d<float> const&,uint,uint,glitch::video::SColor,glitch::video::SColor,uint,uint,int) =====
int __fastcall glitch::scene::CParticleBoxEmitter::CParticleBoxEmitter(
        int result,
        int *a2,
        _DWORD *a3,
        _DWORD *a4,
        int a5,
        int a6,
        int a7,
        int a8,
        int a9,
        int a10,
        int a11)
{
  int v11; // r6
  int v12; // r4
  int v13; // r5
  int v14; // r3

  v11 = a2[2];
  *(_DWORD *)result = v11;
  *(_DWORD *)(result + *(_DWORD *)(v11 - 28)) = a2[3];
  *(_DWORD *)(result + *(_DWORD *)(*(_DWORD *)result - 12)) = a2[4];
  v12 = a2[1];
  *(_DWORD *)result = v12;
  *(_DWORD *)(result + *(_DWORD *)(v12 - 28)) = a2[5];
  *(_DWORD *)(result + *(_DWORD *)(*(_DWORD *)result - 12)) = a2[6];
  v13 = *a2;
  *(_DWORD *)result = *a2;
  *(_DWORD *)(result + *(_DWORD *)(v13 - 28)) = a2[7];
  *(_DWORD *)(result + *(_DWORD *)(*(_DWORD *)result - 12)) = a2[8];
  *(_DWORD *)(result + 4) = 0;
  *(_DWORD *)(result + 8) = 0;
  *(_DWORD *)(result + 12) = 0;
  *(_DWORD *)(result + 16) = *a3;
  *(_DWORD *)(result + 20) = a3[1];
  *(_DWORD *)(result + 24) = a3[2];
  *(_DWORD *)(result + 28) = a3[3];
  *(_DWORD *)(result + 32) = a3[4];
  *(_DWORD *)(result + 36) = a3[5];
  *(_DWORD *)(result + 40) = *a4;
  *(_DWORD *)(result + 44) = a4[1];
  v14 = a4[2];
  *(_BYTE *)(result + 63) = HIBYTE(a7);
  *(_DWORD *)(result + 48) = v14;
  *(_DWORD *)(result + 52) = a5;
  *(_BYTE *)(result + 62) = BYTE2(a7);
  *(_DWORD *)(result + 56) = a6;
  *(_BYTE *)(result + 61) = BYTE1(a7);
  *(_BYTE *)(result + 67) = HIBYTE(a8);
  *(_BYTE *)(result + 66) = BYTE2(a8);
  *(_BYTE *)(result + 60) = a7;
  *(_WORD *)(result + 64) = a8;
  *(_DWORD *)(result + 84) = a11;
  *(_DWORD *)(result + 80) = 0;
  *(_DWORD *)(result + 76) = 0;
  *(_DWORD *)(result + 68) = a9;
  *(_DWORD *)(result + 72) = a10;
  return result;
}


// ===== 6f8bb0 glitch::scene::CParticleBoxEmitter::CParticleBoxEmitter(glitch::core::aabbox3d<float> const&,glitch::core::vector3d<float> const&,uint,uint,glitch::video::SColor,glitch::video::SColor,uint,uint,int) =====
int __fastcall glitch::scene::CParticleBoxEmitter::CParticleBoxEmitter(
        int result,
        _DWORD *a2,
        _DWORD *a3,
        int a4,
        int a5,
        int a6,
        int a7,
        int a8,
        int a9,
        int a10)
{
  int v10; // r2

  *(_DWORD *)(result + 88) = off_95B720;
  *(_DWORD *)result = off_98D1CC;
  *(_DWORD *)(result + 92) = 1;
  *(int *)((char *)&dword_58 + result) = (int)off_98D1EC;
  *(_DWORD *)result = off_98D15C;
  *(int *)((char *)&dword_0 + result) = (int)off_98D15C;
  *(_DWORD *)(result + *(_DWORD *)(*(_DWORD *)result - 12)) = off_98D1B0;
  *(_DWORD *)result = off_98D0D4;
  *(int *)((char *)&dword_0 + result) = (int)off_98D0D4;
  *(_DWORD *)(result + *(_DWORD *)(*(_DWORD *)result - 12)) = off_98D130;
  *(_DWORD *)result = off_98D014;
  *(_DWORD *)(result + 88) = off_98D07C;
  *(_DWORD *)(result + 4) = 0;
  *(_DWORD *)(result + 8) = 0;
  *(_DWORD *)(result + 12) = 0;
  *(_DWORD *)(result + 16) = *a2;
  *(_DWORD *)(result + 20) = a2[1];
  *(_DWORD *)(result + 24) = a2[2];
  *(_DWORD *)(result + 28) = a2[3];
  *(_DWORD *)(result + 32) = a2[4];
  *(_DWORD *)(result + 36) = a2[5];
  *(_DWORD *)(result + 40) = *a3;
  *(_DWORD *)(result + 44) = a3[1];
  v10 = a3[2];
  *(_DWORD *)(result + 52) = a4;
  *(_DWORD *)(result + 56) = a5;
  *(_WORD *)(result + 60) = a6;
  *(_BYTE *)(result + 67) = HIBYTE(a7);
  *(_DWORD *)(result + 84) = a10;
  *(_BYTE *)(result + 66) = BYTE2(a7);
  *(_DWORD *)(result + 48) = v10;
  *(_BYTE *)(result + 63) = HIBYTE(a6);
  *(_DWORD *)(result + 68) = a8;
  *(_BYTE *)(result + 62) = BYTE2(a6);
  *(_WORD *)(result + 64) = a7;
  *(_DWORD *)(result + 72) = a9;
  *(_DWORD *)(result + 80) = 0;
  *(_DWORD *)(result + 76) = 0;
  return result;
}


// ===== 6f8d5c glitch::scene::CParticleBoxEmitter::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CParticleBoxEmitter::serializeAttributes(int a1, int a2)
{
  float v4; // r7
  float v5; // r0
  float v7[4]; // [sp+4h] [bp-10h] BYREF

  v4 = *(float *)(a1 + 32) - *(float *)(a1 + 20);
  v5 = *(float *)(a1 + 36) - *(float *)(a1 + 24);
  v7[0] = (float)(*(float *)(a1 + 28) - *(float *)(a1 + 16)) * 0.5;
  v7[1] = v4 * 0.5;
  v7[2] = v5 * 0.5;
  (*(void (__fastcall **)(int, char *, float *, _DWORD))(*(_DWORD *)a2 + 424))(a2, "Box", v7, 0);
  (*(void (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 424))(a2, "Direction", a1 + 40, 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
    a2,
    "MinParticlesPerSecond",
    *(_DWORD *)(a1 + 52),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
    a2,
    "MaxParticlesPerSecond",
    *(_DWORD *)(a1 + 56),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 280))(
    a2,
    "MinStartColor",
    *(_DWORD *)(a1 + 60),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 280))(
    a2,
    "MaxStartColor",
    *(_DWORD *)(a1 + 64),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
    a2,
    "MinLifeTime",
    *(_DWORD *)(a1 + 68),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
    a2,
    "MaxLifeTime",
    *(_DWORD *)(a1 + 72),
    0);
  return (*(int (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
           a2,
           "MaxAngleDegrees",
           *(_DWORD *)(a1 + 84),
           0);
}


// ===== 6f8f10 `global constructor keyed to'.._source_glitch_scene_CParticleBoxEmitter.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CParticleBoxEmitter.cpp()
{
  dword_9F83D8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F83D4 = 1056964608;
}


// ===== 6f8f30 glitch::scene::CParticleBoxEmitter::~CParticleBoxEmitter() =====
void __fastcall glitch::scene::CParticleBoxEmitter::~CParticleBoxEmitter(glitch::scene::CParticleBoxEmitter *this)
{
  void *v2; // r0

  v2 = *((void **)this + 1);
  *(_DWORD *)this = off_98D014;
  *((_DWORD *)this + 22) = off_98D07C;
  if ( v2 )
    GlitchFree(v2);
}


// ===== 6f8f78 `virtual thunk to'glitch::scene::CParticleBoxEmitter::~CParticleBoxEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleBoxEmitter::~CParticleBoxEmitter(
        glitch::scene::CParticleBoxEmitter *this)
{
  glitch::scene::CParticleBoxEmitter::~CParticleBoxEmitter((glitch::scene::CParticleBoxEmitter *)((char *)this
                                                                                                + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6f8f88 `virtual thunk to'glitch::scene::CParticleBoxEmitter::~CParticleBoxEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleBoxEmitter::~CParticleBoxEmitter(
        glitch::scene::CParticleBoxEmitter *this)
{
  glitch::scene::CParticleBoxEmitter::~CParticleBoxEmitter((glitch::scene::CParticleBoxEmitter *)((char *)this
                                                                                                + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6f8f98 glitch::scene::CParticleBoxEmitter::~CParticleBoxEmitter() =====
void __fastcall glitch::scene::CParticleBoxEmitter::~CParticleBoxEmitter(glitch::scene::CParticleBoxEmitter *this)
{
  glitch::scene::CParticleBoxEmitter::~CParticleBoxEmitter(this);
  LC_API_FREE_0(this);
}


// ===== 6f8fb4 `virtual thunk to'glitch::scene::CParticleBoxEmitter::~CParticleBoxEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleBoxEmitter::~CParticleBoxEmitter(
        glitch::scene::CParticleBoxEmitter *this)
{
  glitch::scene::CParticleBoxEmitter::~CParticleBoxEmitter((glitch::scene::CParticleBoxEmitter *)((char *)this
                                                                                                + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6f8fc4 `virtual thunk to'glitch::scene::CParticleBoxEmitter::~CParticleBoxEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleBoxEmitter::~CParticleBoxEmitter(
        glitch::scene::CParticleBoxEmitter *this)
{
  glitch::scene::CParticleBoxEmitter::~CParticleBoxEmitter((glitch::scene::CParticleBoxEmitter *)((char *)this
                                                                                                + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6f8fd4 glitch::scene::CParticleBoxEmitter::deserializeAttributes(int,glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CParticleBoxEmitter::deserializeAttributes(int a1, int a2, int a3)
{
  float v5; // lr
  float v6; // r12
  float v7; // r0
  float v8; // r1
  float v9; // r3
  float v10; // r7
  float v11; // r6
  float v12; // r0
  float v13; // r0
  unsigned int v14; // r0
  unsigned int v15; // r3
  unsigned int v16; // r2
  int v17; // r0
  unsigned int v18; // r3
  unsigned int v19; // r2
  _DWORD v21[3]; // [sp+0h] [bp-18h] BYREF
  float v22; // [sp+Ch] [bp-Ch] BYREF
  float v23; // [sp+10h] [bp-8h]
  float v24; // [sp+14h] [bp-4h]

  (*(void (__fastcall **)(float *, int, char *))(*(_DWORD *)a3 + 436))(&v22, a3, "Box");
  if ( v22 <= 0.0 )
    v22 = 1.0;
  if ( v23 <= 0.0 )
    v23 = 1.0;
  if ( v24 <= 0.0 )
    v24 = 1.0;
  v5 = v22;
  v6 = v23;
  v7 = v24;
  v8 = v22;
  v9 = v24;
  *(float *)(a1 + 32) = v23;
  *(_DWORD *)(a1 + 16) = LODWORD(v5) + 0x80000000;
  *(_DWORD *)(a1 + 20) = LODWORD(v6) + 0x80000000;
  *(_DWORD *)(a1 + 24) = LODWORD(v7) + 0x80000000;
  *(float *)(a1 + 28) = v8;
  *(float *)(a1 + 36) = v9;
  (*(void (__fastcall **)(_DWORD *, int, const char *))(*(_DWORD *)a3 + 436))(v21, a3, "Direction");
  v10 = *(float *)&v21[1];
  v11 = *(float *)&v21[2];
  v12 = *(float *)v21;
  *(_DWORD *)(a1 + 40) = v21[0];
  *(float *)(a1 + 44) = v10;
  *(float *)(a1 + 48) = v11;
  v13 = sqrt((float)((float)((float)(v12 * v12) + (float)(v10 * v10)) + (float)(v11 * v11)));
  if ( v13 == 0.0 )
  {
    *(_DWORD *)(a1 + 48) = 0;
    *(_DWORD *)(a1 + 40) = 0;
    *(_DWORD *)(a1 + 44) = 1008981770;
  }
  *(_DWORD *)(a1 + 52) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a3 + 88))(a3, "MinParticlesPerSecond");
  v14 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a3 + 88))(a3, "MaxParticlesPerSecond");
  v16 = *(_DWORD *)(a1 + 52);
  *(_DWORD *)(a1 + 56) = v14;
  if ( !v16 )
    v16 = 1;
  if ( !v14 )
    v15 = 1;
  *(_DWORD *)(a1 + 52) = v16;
  if ( v14 )
  {
    if ( v14 > 0xC7 )
      v15 = 200;
    else
      v15 = v14;
  }
  else
  {
    *(_DWORD *)(a1 + 56) = v15;
  }
  if ( v16 > v15 )
    *(_DWORD *)(a1 + 52) = v15;
  else
    *(_DWORD *)(a1 + 52) = v16;
  *(_DWORD *)(a1 + 56) = v15;
  *(_DWORD *)(a1 + 60) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a3 + 292))(a3, "MinStartColor");
  *(_DWORD *)(a1 + 64) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a3 + 292))(a3, "MaxStartColor");
  *(_DWORD *)(a1 + 68) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a3 + 88))(a3, "MinLifeTime");
  *(_DWORD *)(a1 + 72) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a3 + 88))(a3, "MaxLifeTime");
  v17 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a3 + 88))(a3, "MaxAngleDegrees");
  v18 = *(_DWORD *)(a1 + 68);
  *(_DWORD *)(a1 + 84) = v17;
  if ( v18 )
  {
    v19 = *(_DWORD *)(a1 + 72);
    if ( v18 > v19 )
    {
      *(_DWORD *)(a1 + 72) = v18;
      v19 = v18;
      goto LABEL_25;
    }
  }
  else
  {
    v19 = *(_DWORD *)(a1 + 72);
    *(_DWORD *)(a1 + 68) = 0;
  }
  *(_DWORD *)(a1 + 72) = v19;
  if ( v19 >= v18 )
    v19 = v18;
LABEL_25:
  *(_DWORD *)(a1 + 68) = v19;
  return (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a3 + 40))(a3, "MaxAngleDegrees");
}


// ===== 6f92e0 std::vector<glitch::scene::SParticle,glitch::core::SAllocator<glitch::scene::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::scene::SParticle*,glitch::scene::SParticle const&,std::__false_type const&,uint,bool) =====
void __fastcall std::vector<glitch::scene::SParticle,glitch::core::SAllocator<glitch::scene::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        void **a1,
        _DWORD *a2,
        _DWORD *a3,
        int a4,
        unsigned int a5,
        char a6)
{
  size_t v9; // r8
  _DWORD *v10; // r6
  _DWORD *v11; // r0
  _DWORD *v12; // r7

  v9 = 17
     * std::vector<glitch::scene::SParticle,glitch::core::SAllocator<glitch::scene::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
         a1,
         a5);
  v10 = GlitchAlloc(v9 * 4, 0);
  v11 = std::priv::__ucopy<glitch::scene::SParticle *,glitch::scene::SParticle *,int>(*a1, (int)a2, v10);
  if ( a5 == 1 )
  {
    v12 = v11 + 17;
    *v11 = *a3;
    v11[1] = a3[1];
    v11[2] = a3[2];
    v11[3] = a3[3];
    v11[4] = a3[4];
    v11[5] = a3[5];
    v11[6] = a3[6];
    v11[7] = a3[7];
    v11[8] = a3[8];
    v11[9] = a3[9];
    v11[10] = a3[10];
    v11[11] = a3[11];
    v11[12] = a3[12];
    v11[13] = a3[13];
    v11[14] = a3[14];
    v11[15] = a3[15];
    v11[16] = a3[16];
    if ( a6 )
      goto LABEL_3;
LABEL_5:
    v12 = std::priv::__ucopy<glitch::scene::SParticle *,glitch::scene::SParticle *,int>(a2, (int)a1[1], v12);
    goto LABEL_3;
  }
  v12 = &v11[17 * a5];
  std::priv::__ufill<glitch::scene::SParticle *,glitch::scene::SParticle,int>(v11, (int)v12, a3);
  if ( !a6 )
    goto LABEL_5;
LABEL_3:
  GlitchFree(*a1);
  *a1 = v10;
  a1[1] = v12;
  a1[2] = &v10[v9];
}


// ===== 6f9438 std::vector<glitch::scene::SParticle,glitch::core::SAllocator<glitch::scene::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::scene::SParticle const&) =====
void __fastcall std::vector<glitch::scene::SParticle,glitch::core::SAllocator<glitch::scene::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        int a1,
        _DWORD *a2)
{
  _DWORD *v2; // r3
  _BYTE v3[4]; // [sp+Ch] [bp-4h] BYREF

  v2 = *(_DWORD **)(a1 + 4);
  if ( v2 == *(_DWORD **)(a1 + 8) )
  {
    std::vector<glitch::scene::SParticle,glitch::core::SAllocator<glitch::scene::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      (void **)a1,
      *(_DWORD **)(a1 + 4),
      a2,
      (int)v3,
      1u,
      1);
  }
  else
  {
    *v2 = *a2;
    v2[1] = a2[1];
    v2[2] = a2[2];
    v2[3] = a2[3];
    v2[4] = a2[4];
    v2[5] = a2[5];
    v2[6] = a2[6];
    v2[7] = a2[7];
    v2[8] = a2[8];
    v2[9] = a2[9];
    v2[10] = a2[10];
    v2[11] = a2[11];
    v2[12] = a2[12];
    v2[13] = a2[13];
    v2[14] = a2[14];
    v2[15] = a2[15];
    v2[16] = a2[16];
    *(_DWORD *)(a1 + 4) += 68;
  }
}


// ===== 6f9508 glitch::scene::CParticleBoxEmitter::emitt(uint,uint,glitch::scene::SParticle *&) =====
int __fastcall glitch::scene::CParticleBoxEmitter::emitt(int a1, int a2, int a3, _DWORD *a4)
{
  int v5; // r6
  unsigned int v6; // r5
  glitch::os::Randomizer *v7; // r0
  unsigned int v8; // r6
  float v10; // r1
  float v11; // r5
  int result; // r0
  _DWORD *v13; // r0
  _DWORD *v14; // r2
  float v15; // r0
  float v16; // r11
  int v17; // r6
  unsigned int v18; // r8
  float v19; // r0
  float v20; // r0
  unsigned int v21; // r9
  float v22; // r0
  float v23; // r11
  float v24; // r0
  float v25; // r11
  float v26; // r0
  float v27; // r0
  int v28; // r12
  int v29; // r1
  int v30; // r2
  int v31; // r3
  double v32; // r0
  float v33; // r0
  double v34; // r0
  float v35; // r0
  double v36; // r0
  int v37; // r3
  int v38; // r11
  unsigned int v39; // r0
  unsigned int v40; // r1
  int v41; // r1
  int v42; // t0
  int v43; // r0
  float v44; // r0
  void **v45; // [sp+Ch] [bp-F0h]
  float v46; // [sp+10h] [bp-ECh]
  float v47; // [sp+14h] [bp-E8h]
  float y; // [sp+18h] [bp-E4h]
  float v50; // [sp+3Ch] [bp-C0h] BYREF
  float v51; // [sp+40h] [bp-BCh]
  float v52; // [sp+44h] [bp-B8h]
  int v53; // [sp+48h] [bp-B4h]
  int v54; // [sp+4Ch] [bp-B0h]
  int v55; // [sp+50h] [bp-ACh]
  int v56; // [sp+54h] [bp-A8h]
  int v57; // [sp+58h] [bp-A4h]
  int Interpolated; // [sp+5Ch] [bp-A0h]
  int v59; // [sp+60h] [bp-9Ch]
  int v60; // [sp+64h] [bp-98h]
  int v61; // [sp+68h] [bp-94h]
  int v62; // [sp+6Ch] [bp-90h]
  _DWORD v63[17]; // [sp+80h] [bp-7Ch] BYREF
  float v64[3]; // [sp+C4h] [bp-38h] BYREF
  _DWORD v65[3]; // [sp+D0h] [bp-2Ch] BYREF
  float v66[3]; // [sp+DCh] [bp-20h] BYREF
  int v67; // [sp+E8h] [bp-14h] BYREF
  int v68; // [sp+ECh] [bp-10h]
  int v69; // [sp+F0h] [bp-Ch]

  v5 = *(_DWORD *)(a1 + 76);
  v6 = *(_DWORD *)(a1 + 52);
  v7 = *(glitch::os::Randomizer **)(a1 + 56);
  v8 = a3 + v5;
  *(_DWORD *)(a1 + 76) = v8;
  if ( v7 == (glitch::os::Randomizer *)v6 )
  {
    v10 = (float)v6;
  }
  else
  {
    v44 = (float)(glitch::os::Randomizer::rand(v7) % ((unsigned int)v7 - v6));
    v8 = *(_DWORD *)(a1 + 76);
    v10 = (float)v6 + v44;
  }
  v11 = 1000.0 / v10;
  result = (float)v8 > (float)(1000.0 / v10);
  if ( (float)v8 > (float)(1000.0 / v10) )
  {
    v13 = *(_DWORD **)(a1 + 8);
    v14 = *(_DWORD **)(a1 + 4);
    v45 = (void **)(a1 + 4);
    memset(v63, 0, 24);
    memset(&v63[10], 0, 12);
    if ( -252645135 * (v13 - v14) )
    {
      if ( v13 != v14 )
        *(_DWORD *)(a1 + 8) = std::priv::__copy<glitch::scene::SParticle *,glitch::scene::SParticle *,int>(
                                v13,
                                (int)v13,
                                v14);
    }
    else
    {
      std::vector<glitch::scene::SParticle,glitch::core::SAllocator<glitch::scene::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        v45,
        v13,
        0,
        v63);
    }
    v15 = (float)*(unsigned int *)(a1 + 76) / v11;
    v16 = *(float *)(a1 + 16);
    v17 = 0;
    *(_DWORD *)(a1 + 76) = 0;
    v18 = (unsigned int)(float)(v15 + 0.5);
    v19 = *(float *)(a1 + 28);
    v50 = 0.0;
    v51 = 0.0;
    v52 = 0.0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    y = v19 - v16;
    v47 = *(float *)(a1 + 32) - *(float *)(a1 + 20);
    v20 = *(float *)(a1 + 36) - *(float *)(a1 + 24);
    v46 = v20;
    v21 = 2 * *(_DWORD *)(a1 + 56);
    if ( v18 < v21 )
      v21 = v18;
    if ( v21 )
    {
      while ( 1 )
      {
        v22 = (float)glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v20));
        v50 = fmodf(v22, y) + v16;
        v23 = *(float *)(a1 + 20);
        v24 = (float)glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v50));
        v51 = v23 + fmodf(v24, v47);
        v25 = *(float *)(a1 + 24);
        v26 = (float)glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v51));
        v27 = v25 + fmodf(v26, v46);
        v28 = *(_DWORD *)(a1 + 84);
        v29 = *(_DWORD *)(a1 + 40);
        v30 = *(_DWORD *)(a1 + 44);
        v31 = *(_DWORD *)(a1 + 48);
        v52 = v27;
        v56 = a2;
        v53 = v29;
        v54 = v30;
        v55 = v31;
        if ( v28 )
        {
          v68 = v30;
          v69 = v31;
          v67 = v29;
          v32 = (double)(glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v27))
                       % (2 * *(_DWORD *)(a1 + 84))
                       - *(_DWORD *)(a1 + 84));
          memset(v66, 0, sizeof(v66));
          v33 = glitch::core::vector3d<float>::rotateXYBy((float *)&v67, v32, v66);
          v34 = (double)(glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v33))
                       % (2 * *(_DWORD *)(a1 + 84))
                       - *(_DWORD *)(a1 + 84));
          memset(v65, 0, sizeof(v65));
          v35 = glitch::core::vector3d<float>::rotateYZBy((int)&v67, v34, (int)v65);
          v36 = (double)(glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v35))
                       % (2 * *(_DWORD *)(a1 + 84))
                       - *(_DWORD *)(a1 + 84));
          memset(v64, 0, sizeof(v64));
          v27 = glitch::core::vector3d<float>::rotateXZBy((float *)&v67, v36, v64);
          v53 = v67;
          v54 = v68;
          v55 = v69;
        }
        v37 = *(_DWORD *)(a1 + 72);
        v38 = *(_DWORD *)(a1 + 68);
        if ( v37 == v38 )
        {
          v57 = a2 + v37;
        }
        else
        {
          v39 = glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v27));
          v40 = *(_DWORD *)(a1 + 72) - *(_DWORD *)(a1 + 68);
          v42 = v39 / v40;
          v41 = v39 % v40;
          v27 = *(float *)&v42;
          v57 = a2 + v38 + v41;
        }
        v43 = glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v27));
        Interpolated = glitch::video::SColor::getInterpolated(
                         (unsigned __int8 *)(a1 + 60),
                         (unsigned __int8 *)(a1 + 64),
                         (float)(v43 % 100) / 100.0);
        ++v17;
        v59 = Interpolated;
        v60 = v53;
        v61 = v54;
        v62 = v55;
        std::vector<glitch::scene::SParticle,glitch::core::SAllocator<glitch::scene::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
          (int)v45,
          &v50);
        if ( v17 == v21 )
          break;
        v16 = *(float *)(a1 + 16);
      }
    }
    *a4 = *(_DWORD *)(a1 + 4);
    return -252645135 * ((*(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4)) >> 2);
  }
  return result;
}


// ===== 6f997c glitch::scene::IParticleBoxEmitter::~IParticleBoxEmitter() =====
void __fastcall glitch::scene::IParticleBoxEmitter::~IParticleBoxEmitter(glitch::scene::IParticleBoxEmitter *this)
{
  *(_DWORD *)this = off_98CF5C;
  *((_DWORD *)this + 1) = off_98CF10;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98CF5C;
  LC_API_FREE_0(this);
}


// ===== 6f99d0 `virtual thunk to'glitch::scene::IParticleBoxEmitter::~IParticleBoxEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleBoxEmitter::~IParticleBoxEmitter(
        glitch::scene::IParticleBoxEmitter *this)
{
  glitch::scene::IParticleBoxEmitter::~IParticleBoxEmitter((glitch::scene::IParticleBoxEmitter *)((char *)this
                                                                                                + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6f99e0 `virtual thunk to'glitch::scene::IParticleBoxEmitter::~IParticleBoxEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleBoxEmitter::~IParticleBoxEmitter(
        glitch::scene::IParticleBoxEmitter *this)
{
  glitch::scene::IParticleBoxEmitter::~IParticleBoxEmitter((glitch::scene::IParticleBoxEmitter *)((char *)this
                                                                                                + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6f99f0 `virtual thunk to'glitch::scene::CParticleBoxEmitter::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::scene::CParticleBoxEmitter::serializeAttributes(_DWORD *a1, int a2)
{
  return glitch::scene::CParticleBoxEmitter::serializeAttributes((int)a1 + *(_DWORD *)(*a1 - 16), a2);
}


// ===== 6f9a00 glitch::scene::IParticleCylinderEmitter::getType(void) =====
int __fastcall glitch::scene::IParticleCylinderEmitter::getType(glitch::scene::IParticleCylinderEmitter *this)
{
  return 3;
}


// ===== 6f9a08 glitch::scene::CParticleCylinderEmitter::setCenter(glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::scene::CParticleCylinderEmitter::setCenter(_DWORD *result, _DWORD *a2)
{
  result[4] = *a2;
  result[5] = a2[1];
  result[6] = a2[2];
  return result;
}


// ===== 6f9a24 glitch::scene::CParticleCylinderEmitter::setNormal(glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::scene::CParticleCylinderEmitter::setNormal(_DWORD *result, _DWORD *a2)
{
  result[7] = *a2;
  result[8] = a2[1];
  result[9] = a2[2];
  return result;
}


// ===== 6f9a40 glitch::scene::CParticleCylinderEmitter::setRadius(float) =====
int __fastcall glitch::scene::CParticleCylinderEmitter::setRadius(int this, float a2)
{
  *(float *)(this + 40) = a2;
  return this;
}


// ===== 6f9a48 glitch::scene::CParticleCylinderEmitter::setLength(float) =====
int __fastcall glitch::scene::CParticleCylinderEmitter::setLength(int this, float a2)
{
  *(float *)(this + 44) = a2;
  return this;
}


// ===== 6f9a50 glitch::scene::CParticleCylinderEmitter::setOutlineOnly(bool) =====
int __fastcall glitch::scene::CParticleCylinderEmitter::setOutlineOnly(int this, bool a2)
{
  *(_BYTE *)(this + 48) = a2;
  return this;
}


// ===== 6f9a58 glitch::scene::CParticleCylinderEmitter::setDirection(glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::scene::CParticleCylinderEmitter::setDirection(_DWORD *result, _DWORD *a2)
{
  result[13] = *a2;
  result[14] = a2[1];
  result[15] = a2[2];
  return result;
}


// ===== 6f9a74 glitch::scene::CParticleCylinderEmitter::setMinParticlesPerSecond(uint) =====
int __fastcall glitch::scene::CParticleCylinderEmitter::setMinParticlesPerSecond(int this, unsigned int a2)
{
  *(_DWORD *)(this + 64) = a2;
  return this;
}


// ===== 6f9a7c glitch::scene::CParticleCylinderEmitter::setMaxParticlesPerSecond(uint) =====
int __fastcall glitch::scene::CParticleCylinderEmitter::setMaxParticlesPerSecond(int this, unsigned int a2)
{
  *(_DWORD *)(this + 68) = a2;
  return this;
}


// ===== 6f9a84 glitch::scene::CParticleCylinderEmitter::setMinStartColor(glitch::video::SColor const&) =====
void *__fastcall glitch::scene::CParticleCylinderEmitter::setMinStartColor(int a1, const void *a2)
{
  return memcpy((void *)(a1 + 72), a2, 4u);
}


// ===== 6f9a98 glitch::scene::CParticleCylinderEmitter::setMaxStartColor(glitch::video::SColor const&) =====
void *__fastcall glitch::scene::CParticleCylinderEmitter::setMaxStartColor(int a1, const void *a2)
{
  return memcpy((void *)(a1 + 76), a2, 4u);
}


// ===== 6f9aac glitch::scene::CParticleCylinderEmitter::getCenter(void) =====
char *__fastcall glitch::scene::CParticleCylinderEmitter::getCenter(glitch::scene::CParticleCylinderEmitter *this)
{
  return (char *)this + 16;
}


// ===== 6f9ab4 glitch::scene::CParticleCylinderEmitter::getNormal(void) =====
char *__fastcall glitch::scene::CParticleCylinderEmitter::getNormal(glitch::scene::CParticleCylinderEmitter *this)
{
  return (char *)this + 28;
}


// ===== 6f9abc glitch::scene::CParticleCylinderEmitter::getRadius(void) =====
int __fastcall glitch::scene::CParticleCylinderEmitter::getRadius(glitch::scene::CParticleCylinderEmitter *this)
{
  return *((_DWORD *)this + 10);
}


// ===== 6f9ac4 glitch::scene::CParticleCylinderEmitter::getLength(void) =====
int __fastcall glitch::scene::CParticleCylinderEmitter::getLength(glitch::scene::CParticleCylinderEmitter *this)
{
  return *((_DWORD *)this + 11);
}


// ===== 6f9acc glitch::scene::CParticleCylinderEmitter::getOutlineOnly(void) =====
int __fastcall glitch::scene::CParticleCylinderEmitter::getOutlineOnly(glitch::scene::CParticleCylinderEmitter *this)
{
  return *((unsigned __int8 *)this + 48);
}


// ===== 6f9ad4 glitch::scene::CParticleCylinderEmitter::getDirection(void) =====
char *__fastcall glitch::scene::CParticleCylinderEmitter::getDirection(glitch::scene::CParticleCylinderEmitter *this)
{
  return (char *)this + 52;
}


// ===== 6f9adc glitch::scene::CParticleCylinderEmitter::getMinParticlesPerSecond(void) =====
int __fastcall glitch::scene::CParticleCylinderEmitter::getMinParticlesPerSecond(
        glitch::scene::CParticleCylinderEmitter *this)
{
  return *((_DWORD *)this + 16);
}


// ===== 6f9ae4 glitch::scene::CParticleCylinderEmitter::getMaxParticlesPerSecond(void) =====
int __fastcall glitch::scene::CParticleCylinderEmitter::getMaxParticlesPerSecond(
        glitch::scene::CParticleCylinderEmitter *this)
{
  return *((_DWORD *)this + 17);
}


// ===== 6f9aec glitch::scene::CParticleCylinderEmitter::getMinStartColor(void) =====
char *__fastcall glitch::scene::CParticleCylinderEmitter::getMinStartColor(
        glitch::scene::CParticleCylinderEmitter *this)
{
  return (char *)this + 72;
}


// ===== 6f9af4 glitch::scene::CParticleCylinderEmitter::getMaxStartColor(void) =====
char *__fastcall glitch::scene::CParticleCylinderEmitter::getMaxStartColor(
        glitch::scene::CParticleCylinderEmitter *this)
{
  return (char *)this + 76;
}


// ===== 6f9afc glitch::scene::CParticleCylinderEmitter::getMinLifeTime(void) =====
int __fastcall glitch::scene::CParticleCylinderEmitter::getMinLifeTime(glitch::scene::CParticleCylinderEmitter *this)
{
  return *((_DWORD *)this + 20);
}


// ===== 6f9b04 glitch::scene::CParticleCylinderEmitter::getMaxLifeTime(void) =====
int __fastcall glitch::scene::CParticleCylinderEmitter::getMaxLifeTime(glitch::scene::CParticleCylinderEmitter *this)
{
  return *((_DWORD *)this + 21);
}


// ===== 6f9b0c glitch::scene::CParticleCylinderEmitter::getMaxAngleDegrees(void) =====
int __fastcall glitch::scene::CParticleCylinderEmitter::getMaxAngleDegrees(
        glitch::scene::CParticleCylinderEmitter *this)
{
  return *((_DWORD *)this + 24);
}


// ===== 6f9b14 glitch::scene::IParticleCylinderEmitter::~IParticleCylinderEmitter() =====
void __fastcall glitch::scene::IParticleCylinderEmitter::~IParticleCylinderEmitter(
        glitch::scene::IParticleCylinderEmitter *this)
{
  ;
}


// ===== 6f9b18 `virtual thunk to'glitch::scene::IParticleCylinderEmitter::~IParticleCylinderEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleCylinderEmitter::~IParticleCylinderEmitter(
        glitch::scene::IParticleCylinderEmitter *this)
{
  glitch::scene::IParticleCylinderEmitter::~IParticleCylinderEmitter((glitch::scene::IParticleCylinderEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6f9b28 `virtual thunk to'glitch::scene::IParticleCylinderEmitter::~IParticleCylinderEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleCylinderEmitter::~IParticleCylinderEmitter(
        glitch::scene::IParticleCylinderEmitter *this)
{
  glitch::scene::IParticleCylinderEmitter::~IParticleCylinderEmitter((glitch::scene::IParticleCylinderEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6f9b38 glitch::scene::CParticleCylinderEmitter::CParticleCylinderEmitter(glitch::core::vector3d<float> const&,float,glitch::core::vector3d<float> const&,float,bool,glitch::core::vector3d<float> const&,uint,uint,glitch::video::SColor const&,glitch::video::SColor const&,uint,uint,int) =====
int __fastcall glitch::scene::CParticleCylinderEmitter::CParticleCylinderEmitter(
        int a1,
        int *a2,
        _DWORD *a3,
        int a4,
        _DWORD *a5,
        int a6,
        char a7,
        _DWORD *a8,
        int a9,
        int a10,
        void *a11,
        void *a12,
        int a13,
        int a14,
        int a15)
{
  int v15; // r12
  int v18; // r2
  int v19; // r0
  int v20; // lr
  int v21; // r3

  v15 = a2[2];
  *(_DWORD *)a1 = v15;
  *(_DWORD *)(a1 + *(_DWORD *)(v15 - 28)) = a2[3];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[4];
  v18 = a2[1];
  *(_DWORD *)a1 = v18;
  *(_DWORD *)(a1 + *(_DWORD *)(v18 - 28)) = a2[5];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[6];
  v19 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v19 - 28)) = a2[7];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[8];
  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 16) = *a3;
  *(_DWORD *)(a1 + 20) = a3[1];
  *(_DWORD *)(a1 + 24) = a3[2];
  *(_DWORD *)(a1 + 28) = *a5;
  *(_DWORD *)(a1 + 32) = a5[1];
  v20 = a5[2];
  *(_DWORD *)(a1 + 40) = a4;
  *(_DWORD *)(a1 + 36) = v20;
  *(_BYTE *)(a1 + 48) = a7;
  *(_DWORD *)(a1 + 44) = a6;
  *(_DWORD *)(a1 + 52) = *a8;
  *(_DWORD *)(a1 + 56) = a8[1];
  v21 = a8[2];
  *(_DWORD *)(a1 + 64) = a9;
  *(_DWORD *)(a1 + 60) = v21;
  *(_DWORD *)(a1 + 68) = a10;
  memcpy((void *)(a1 + 72), a11, 4u);
  memcpy((void *)(a1 + 76), a12, 4u);
  *(_DWORD *)(a1 + 80) = a13;
  *(_DWORD *)(a1 + 92) = 0;
  *(_DWORD *)(a1 + 84) = a14;
  *(_DWORD *)(a1 + 88) = 0;
  *(_DWORD *)(a1 + 96) = a15;
  return a1;
}


// ===== 6f9c88 glitch::scene::CParticleCylinderEmitter::CParticleCylinderEmitter(glitch::core::vector3d<float> const&,float,glitch::core::vector3d<float> const&,float,bool,glitch::core::vector3d<float> const&,uint,uint,glitch::video::SColor const&,glitch::video::SColor const&,uint,uint,int) =====
int __fastcall glitch::scene::CParticleCylinderEmitter::CParticleCylinderEmitter(
        int a1,
        _DWORD *a2,
        int a3,
        _DWORD *a4,
        int a5,
        char a6,
        _DWORD *a7,
        int a8,
        int a9,
        void *a10,
        void *a11,
        int a12,
        int a13,
        int a14)
{
  int v15; // r3
  int v16; // r3

  *(_DWORD *)a1 = off_98D58C;
  *(_DWORD *)(a1 + 100) = off_95B720;
  *(_DWORD *)(a1 + 104) = 1;
  *(int *)((char *)&dword_64 + a1) = (int)off_98D5AC;
  *(_DWORD *)a1 = off_98D51C;
  *(int *)((char *)&dword_0 + a1) = (int)off_98D51C;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = off_98D570;
  *(_DWORD *)a1 = off_98D474;
  *(int *)((char *)&dword_0 + a1) = (int)off_98D474;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = off_98D4F0;
  *(_DWORD *)a1 = off_98D394;
  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 100) = off_98D41C;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 16) = *a2;
  *(_DWORD *)(a1 + 20) = a2[1];
  *(_DWORD *)(a1 + 24) = a2[2];
  *(_DWORD *)(a1 + 28) = *a4;
  *(_DWORD *)(a1 + 32) = a4[1];
  v15 = a4[2];
  *(_DWORD *)(a1 + 40) = a3;
  *(_DWORD *)(a1 + 36) = v15;
  *(_BYTE *)(a1 + 48) = a6;
  *(_DWORD *)(a1 + 44) = a5;
  *(_DWORD *)(a1 + 52) = *a7;
  *(_DWORD *)(a1 + 56) = a7[1];
  v16 = a7[2];
  *(_DWORD *)(a1 + 64) = a8;
  *(_DWORD *)(a1 + 60) = v16;
  *(_DWORD *)(a1 + 68) = a9;
  memcpy((void *)(a1 + 72), a10, 4u);
  memcpy((void *)(a1 + 76), a11, 4u);
  *(_DWORD *)(a1 + 80) = a12;
  *(_DWORD *)(a1 + 92) = 0;
  *(_DWORD *)(a1 + 84) = a13;
  *(_DWORD *)(a1 + 88) = 0;
  *(_DWORD *)(a1 + 96) = a14;
  return a1;
}


// ===== 6f9e08 `global constructor keyed to'.._source_glitch_scene_CParticleCylinderEmitter.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CParticleCylinderEmitter.cpp()
{
  dword_9F83E4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F83E0 = 1056964608;
}


// ===== 6f9e28 glitch::scene::CParticleCylinderEmitter::~CParticleCylinderEmitter() =====
void __fastcall glitch::scene::CParticleCylinderEmitter::~CParticleCylinderEmitter(
        glitch::scene::CParticleCylinderEmitter *this)
{
  void *v2; // r0

  v2 = *((void **)this + 1);
  *(_DWORD *)this = off_98D394;
  *((_DWORD *)this + 25) = off_98D41C;
  if ( v2 )
    GlitchFree(v2);
}


// ===== 6f9e70 `virtual thunk to'glitch::scene::CParticleCylinderEmitter::~CParticleCylinderEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleCylinderEmitter::~CParticleCylinderEmitter(
        glitch::scene::CParticleCylinderEmitter *this)
{
  glitch::scene::CParticleCylinderEmitter::~CParticleCylinderEmitter((glitch::scene::CParticleCylinderEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6f9e80 `virtual thunk to'glitch::scene::CParticleCylinderEmitter::~CParticleCylinderEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleCylinderEmitter::~CParticleCylinderEmitter(
        glitch::scene::CParticleCylinderEmitter *this)
{
  glitch::scene::CParticleCylinderEmitter::~CParticleCylinderEmitter((glitch::scene::CParticleCylinderEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6f9e90 glitch::scene::CParticleCylinderEmitter::~CParticleCylinderEmitter() =====
void __fastcall glitch::scene::CParticleCylinderEmitter::~CParticleCylinderEmitter(
        glitch::scene::CParticleCylinderEmitter *this)
{
  glitch::scene::CParticleCylinderEmitter::~CParticleCylinderEmitter(this);
  LC_API_FREE_0(this);
}


// ===== 6f9eac `virtual thunk to'glitch::scene::CParticleCylinderEmitter::~CParticleCylinderEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleCylinderEmitter::~CParticleCylinderEmitter(
        glitch::scene::CParticleCylinderEmitter *this)
{
  glitch::scene::CParticleCylinderEmitter::~CParticleCylinderEmitter((glitch::scene::CParticleCylinderEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6f9ebc `virtual thunk to'glitch::scene::CParticleCylinderEmitter::~CParticleCylinderEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleCylinderEmitter::~CParticleCylinderEmitter(
        glitch::scene::CParticleCylinderEmitter *this)
{
  glitch::scene::CParticleCylinderEmitter::~CParticleCylinderEmitter((glitch::scene::CParticleCylinderEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6f9ecc glitch::scene::CParticleCylinderEmitter::emitt(uint,uint,glitch::scene::SParticle *&) =====
int __fastcall glitch::scene::CParticleCylinderEmitter::emitt(int a1, int a2, int a3, _DWORD *a4)
{
  int v5; // r6
  unsigned int v6; // r5
  glitch::os::Randomizer *v7; // r0
  unsigned int v8; // r6
  float v10; // r1
  float v11; // r5
  int result; // r0
  _DWORD *v13; // r0
  _DWORD *v14; // r2
  unsigned int v15; // r0
  int v16; // r6
  float v17; // r0
  float v18; // r3
  int v19; // r0
  float v20; // r0
  float v21; // r0
  float v22; // r10
  float v23; // r11
  float v24; // r0
  float v25; // r9
  float v26; // r0
  int v27; // r12
  int v28; // r1
  int v29; // r2
  int v30; // r3
  double v31; // r0
  float v32; // r0
  double v33; // r0
  float v34; // r0
  double v35; // r0
  int v36; // r3
  int v37; // r10
  unsigned int v38; // r0
  unsigned int v39; // r1
  int v40; // r1
  int v41; // t0
  int v42; // r0
  float v43; // r10
  float v44; // r0
  float v45; // r0
  unsigned int v46; // [sp+14h] [bp-E8h]
  void **v47; // [sp+18h] [bp-E4h]
  float v49; // [sp+3Ch] [bp-C0h] BYREF
  float v50; // [sp+40h] [bp-BCh]
  float v51; // [sp+44h] [bp-B8h]
  int v52; // [sp+48h] [bp-B4h]
  int v53; // [sp+4Ch] [bp-B0h]
  int v54; // [sp+50h] [bp-ACh]
  int v55; // [sp+54h] [bp-A8h]
  int v56; // [sp+58h] [bp-A4h]
  int Interpolated; // [sp+5Ch] [bp-A0h]
  int v58; // [sp+60h] [bp-9Ch]
  int v59; // [sp+64h] [bp-98h]
  int v60; // [sp+68h] [bp-94h]
  int v61; // [sp+6Ch] [bp-90h]
  _DWORD v62[17]; // [sp+80h] [bp-7Ch] BYREF
  float v63[3]; // [sp+C4h] [bp-38h] BYREF
  _DWORD v64[3]; // [sp+D0h] [bp-2Ch] BYREF
  float v65[3]; // [sp+DCh] [bp-20h] BYREF
  int v66; // [sp+E8h] [bp-14h] BYREF
  int v67; // [sp+ECh] [bp-10h]
  int v68; // [sp+F0h] [bp-Ch]

  v5 = *(_DWORD *)(a1 + 88);
  v6 = *(_DWORD *)(a1 + 64);
  v7 = *(glitch::os::Randomizer **)(a1 + 68);
  v8 = a3 + v5;
  *(_DWORD *)(a1 + 88) = v8;
  if ( v7 == (glitch::os::Randomizer *)v6 )
  {
    v10 = (float)v6;
  }
  else
  {
    v45 = (float)(glitch::os::Randomizer::rand(v7) % ((unsigned int)v7 - v6));
    v8 = *(_DWORD *)(a1 + 88);
    v10 = (float)v6 + v45;
  }
  v11 = 1000.0 / v10;
  result = (float)v8 > (float)(1000.0 / v10);
  if ( (float)v8 > (float)(1000.0 / v10) )
  {
    v13 = *(_DWORD **)(a1 + 8);
    v14 = *(_DWORD **)(a1 + 4);
    v47 = (void **)(a1 + 4);
    memset(v62, 0, 24);
    memset(&v62[10], 0, 12);
    if ( -252645135 * (v13 - v14) )
    {
      if ( v13 != v14 )
        *(_DWORD *)(a1 + 8) = std::priv::__copy<glitch::scene::SParticle *,glitch::scene::SParticle *,int>(
                                v13,
                                (int)v13,
                                v14);
    }
    else
    {
      std::vector<glitch::scene::SParticle,glitch::core::SAllocator<glitch::scene::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        v47,
        v13,
        0,
        v62);
    }
    v15 = (unsigned int)(float)((float)((float)*(unsigned int *)(a1 + 88) / v11) + 0.5);
    v16 = 0;
    if ( v15 >= 2 * *(_DWORD *)(a1 + 68) )
      v15 = 2 * *(_DWORD *)(a1 + 68);
    v46 = v15;
    *(_DWORD *)(a1 + 88) = 0;
    v49 = 0.0;
    v50 = 0.0;
    v51 = 0.0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    if ( v15 )
    {
      do
      {
        if ( *(_BYTE *)(a1 + 48) )
        {
          v43 = *(float *)(a1 + 40);
        }
        else
        {
          v44 = (float)glitch::os::Randomizer::rand((glitch::os::Randomizer *)v15);
          v43 = fmodf(v44, *(float *)(a1 + 40) * 1000.0) * 0.001;
        }
        v17 = *(float *)(a1 + 16) + v43;
        v18 = *(float *)(a1 + 20);
        v51 = v43 + *(float *)(a1 + 24);
        v49 = v17;
        v50 = v18;
        v19 = glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v17));
        v20 = glitch::core::vector3d<float>::rotateXZBy(&v49, (double)(v19 % 360), (float *)(a1 + 16));
        v21 = (float)glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v20));
        v22 = fmodf(v21, *(float *)(a1 + 44) * 1000.0) * 0.001;
        v23 = v22 * *(float *)(a1 + 32);
        v24 = v22 * *(float *)(a1 + 36);
        v25 = v24;
        v49 = v49 + (float)(v22 * *(float *)(a1 + 28));
        v50 = v50 + v23;
        v26 = v51 + v24;
        v27 = *(_DWORD *)(a1 + 96);
        v28 = *(_DWORD *)(a1 + 52);
        v29 = *(_DWORD *)(a1 + 56);
        v30 = *(_DWORD *)(a1 + 60);
        v51 = v51 + v25;
        v55 = a2;
        v52 = v28;
        v53 = v29;
        v54 = v30;
        if ( v27 )
        {
          v67 = v29;
          v68 = v30;
          v66 = v28;
          v31 = (double)(glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v26))
                       % (2 * *(_DWORD *)(a1 + 96))
                       - *(_DWORD *)(a1 + 96));
          memset(v65, 0, sizeof(v65));
          v32 = glitch::core::vector3d<float>::rotateXYBy((float *)&v66, v31, v65);
          v33 = (double)(glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v32))
                       % (2 * *(_DWORD *)(a1 + 96))
                       - *(_DWORD *)(a1 + 96));
          memset(v64, 0, sizeof(v64));
          v34 = glitch::core::vector3d<float>::rotateYZBy((int)&v66, v33, (int)v64);
          v35 = (double)(glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v34))
                       % (2 * *(_DWORD *)(a1 + 96))
                       - *(_DWORD *)(a1 + 96));
          memset(v63, 0, sizeof(v63));
          v26 = glitch::core::vector3d<float>::rotateXZBy((float *)&v66, v35, v63);
          v52 = v66;
          v53 = v67;
          v54 = v68;
        }
        v36 = *(_DWORD *)(a1 + 84);
        v37 = *(_DWORD *)(a1 + 80);
        if ( v36 == v37 )
        {
          v56 = a2 + v36;
        }
        else
        {
          v38 = glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v26));
          v39 = *(_DWORD *)(a1 + 84) - *(_DWORD *)(a1 + 80);
          v41 = v38 / v39;
          v40 = v38 % v39;
          v26 = *(float *)&v41;
          v56 = a2 + v37 + v40;
        }
        v42 = glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v26));
        ++v16;
        Interpolated = glitch::video::SColor::getInterpolated(
                         (unsigned __int8 *)(a1 + 72),
                         (unsigned __int8 *)(a1 + 76),
                         (float)(v42 % 100) / 100.0);
        v58 = Interpolated;
        v59 = v52;
        v60 = v53;
        v61 = v54;
        std::vector<glitch::scene::SParticle,glitch::core::SAllocator<glitch::scene::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
          (int)v47,
          &v49);
      }
      while ( v16 != v46 );
    }
    *a4 = *(_DWORD *)(a1 + 4);
    return -252645135 * ((*(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4)) >> 2);
  }
  return result;
}


// ===== 6fa408 glitch::scene::IParticleCylinderEmitter::~IParticleCylinderEmitter() =====
void __fastcall glitch::scene::IParticleCylinderEmitter::~IParticleCylinderEmitter(
        glitch::scene::IParticleCylinderEmitter *this)
{
  *(_DWORD *)this = off_98D2DC;
  *((_DWORD *)this + 1) = off_98D290;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98D2DC;
  LC_API_FREE_0(this);
}


// ===== 6fa45c `virtual thunk to'glitch::scene::IParticleCylinderEmitter::~IParticleCylinderEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleCylinderEmitter::~IParticleCylinderEmitter(
        glitch::scene::IParticleCylinderEmitter *this)
{
  glitch::scene::IParticleCylinderEmitter::~IParticleCylinderEmitter((glitch::scene::IParticleCylinderEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fa46c `virtual thunk to'glitch::scene::IParticleCylinderEmitter::~IParticleCylinderEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleCylinderEmitter::~IParticleCylinderEmitter(
        glitch::scene::IParticleCylinderEmitter *this)
{
  glitch::scene::IParticleCylinderEmitter::~IParticleCylinderEmitter((glitch::scene::IParticleCylinderEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fa47c glitch::scene::IParticleFadeOutAffector::getType(void) =====
int __fastcall glitch::scene::IParticleFadeOutAffector::getType(glitch::scene::IParticleFadeOutAffector *this)
{
  return 2;
}


// ===== 6fa484 glitch::scene::CParticleFadeOutAffector::setTargetColor(glitch::video::SColor const&) =====
void *__fastcall glitch::scene::CParticleFadeOutAffector::setTargetColor(int a1, const void *a2)
{
  return memcpy((void *)(a1 + 5), a2, 4u);
}


// ===== 6fa498 glitch::scene::CParticleFadeOutAffector::setFadeOutTime(float) =====
int __fastcall glitch::scene::CParticleFadeOutAffector::setFadeOutTime(int this, float a2)
{
  *(float *)(this + 12) = a2;
  return this;
}


// ===== 6fa4a0 glitch::scene::CParticleFadeOutAffector::getTargetColor(void) =====
char *__fastcall glitch::scene::CParticleFadeOutAffector::getTargetColor(glitch::scene::CParticleFadeOutAffector *this)
{
  return (char *)this + 5;
}


// ===== 6fa4a8 glitch::scene::CParticleFadeOutAffector::getFadeOutTime(void) =====
int __fastcall glitch::scene::CParticleFadeOutAffector::getFadeOutTime(glitch::scene::CParticleFadeOutAffector *this)
{
  return *((_DWORD *)this + 3);
}


// ===== 6fa4b0 glitch::scene::IParticleFadeOutAffector::~IParticleFadeOutAffector() =====
void __fastcall glitch::scene::IParticleFadeOutAffector::~IParticleFadeOutAffector(
        glitch::scene::IParticleFadeOutAffector *this)
{
  ;
}


// ===== 6fa4b4 `virtual thunk to'glitch::scene::IParticleFadeOutAffector::~IParticleFadeOutAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleFadeOutAffector::~IParticleFadeOutAffector(
        glitch::scene::IParticleFadeOutAffector *this)
{
  glitch::scene::IParticleFadeOutAffector::~IParticleFadeOutAffector((glitch::scene::IParticleFadeOutAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fa4c4 `virtual thunk to'glitch::scene::IParticleFadeOutAffector::~IParticleFadeOutAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleFadeOutAffector::~IParticleFadeOutAffector(
        glitch::scene::IParticleFadeOutAffector *this)
{
  glitch::scene::IParticleFadeOutAffector::~IParticleFadeOutAffector((glitch::scene::IParticleFadeOutAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fa4d4 glitch::scene::CParticleFadeOutAffector::CParticleFadeOutAffector(glitch::video::SColor const&,uint) =====
int *__fastcall glitch::scene::CParticleFadeOutAffector::CParticleFadeOutAffector(
        int *a1,
        int *a2,
        void *a3,
        unsigned int a4)
{
  int *v5; // lr
  int v6; // r1
  int v9; // r3
  int v10; // r3
  float v11; // r0

  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = 0;
  v5 = a2 + 1;
  v6 = a2[2];
  *a1 = v6;
  *(int *)((char *)a1 + *(_DWORD *)(v6 - 28)) = v5[2];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = v5[3];
  *((_BYTE *)a1 + 4) = 1;
  v9 = *v5;
  *a1 = *v5;
  *(int *)((char *)a1 + *(_DWORD *)(v9 - 28)) = v5[4];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = v5[5];
  v10 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v10 - 28)) = a2[7];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = a2[8];
  memcpy((char *)a1 + 5, a3, sizeof(int));
  if ( a4 )
    v11 = (float)a4;
  else
    v11 = 1.0;
  *((float *)a1 + 3) = v11;
  return a1;
}


// ===== 6fa5a4 glitch::scene::CParticleFadeOutAffector::CParticleFadeOutAffector(glitch::video::SColor const&,uint) =====
_DWORD *__fastcall glitch::scene::CParticleFadeOutAffector::CParticleFadeOutAffector(
        _DWORD *a1,
        const void *a2,
        unsigned int a3)
{
  float v5; // r0

  *a1 = off_98D85C;
  a1[4] = off_95B720;
  a1[5] = 1;
  *(_DWORD *)((char *)&word_10 + (_DWORD)a1) = off_98D87C;
  *a1 = off_98D80C;
  a1[1] = 0;
  a1[3] = 0;
  a1[2] = 0;
  *(int *)((char *)&dword_0 + (_DWORD)a1) = (int)off_98D80C;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = off_98D840;
  *((_BYTE *)a1 + 4) = 1;
  *a1 = off_98D79C;
  *(int *)((char *)&dword_0 + (_DWORD)a1) = (int)off_98D79C;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = off_98D7E0;
  *a1 = off_98D6FC;
  a1[4] = off_98D740;
  memcpy((char *)a1 + 5, a2, sizeof(_DWORD));
  if ( a3 )
    v5 = (float)a3;
  else
    v5 = 1.0;
  *((float *)a1 + 3) = v5;
  return a1;
}


// ===== 6fa69c glitch::scene::CParticleFadeOutAffector::affect(uint,glitch::scene::SParticle *,uint) =====
int __fastcall glitch::scene::CParticleFadeOutAffector::affect(int a1, int a2, int a3, int a4)
{
  int result; // r0
  int v9; // r7

  result = *(unsigned __int8 *)(a1 + 4);
  if ( result && a4 )
  {
    v9 = 0;
    do
    {
      while ( 1 )
      {
        ++v9;
        result = (float)(unsigned int)(*(_DWORD *)(a3 + 28) - a2) < *(float *)(a1 + 12);
        if ( (float)(unsigned int)(*(_DWORD *)(a3 + 28) - a2) < *(float *)(a1 + 12) )
          break;
        a3 += 68;
        if ( v9 == a4 )
          return result;
      }
      result = glitch::video::SColor::getInterpolated(
                 (unsigned __int8 *)(a3 + 36),
                 (unsigned __int8 *)(a1 + 5),
                 (float)(unsigned int)(*(_DWORD *)(a3 + 28) - a2) / *(float *)(a1 + 12));
      *(_DWORD *)(a3 + 32) = result;
      a3 += 68;
    }
    while ( v9 != a4 );
  }
  return result;
}


// ===== 6fa750 glitch::scene::CParticleFadeOutAffector::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CParticleFadeOutAffector::serializeAttributes(int a1, int a2)
{
  (*(void (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 280))(
    a2,
    "TargetColor",
    *(unsigned __int8 *)(a1 + 5)
  | (*(unsigned __int8 *)(a1 + 6) << 8)
  | (*(unsigned __int8 *)(a1 + 7) << 16)
  | (*(unsigned __int8 *)(a1 + 8) << 24),
    0);
  return (*(int (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(
           a2,
           "FadeOutTime",
           *(_DWORD *)(a1 + 12),
           0);
}


// ===== 6fa7c0 glitch::scene::CParticleFadeOutAffector::~CParticleFadeOutAffector() =====
void __fastcall glitch::scene::CParticleFadeOutAffector::~CParticleFadeOutAffector(
        glitch::scene::CParticleFadeOutAffector *this)
{
  ;
}


// ===== 6fa7c4 `virtual thunk to'glitch::scene::CParticleFadeOutAffector::~CParticleFadeOutAffector() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleFadeOutAffector::~CParticleFadeOutAffector(
        glitch::scene::CParticleFadeOutAffector *this)
{
  glitch::scene::CParticleFadeOutAffector::~CParticleFadeOutAffector((glitch::scene::CParticleFadeOutAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fa7d4 `virtual thunk to'glitch::scene::CParticleFadeOutAffector::~CParticleFadeOutAffector() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleFadeOutAffector::~CParticleFadeOutAffector(
        glitch::scene::CParticleFadeOutAffector *this)
{
  glitch::scene::CParticleFadeOutAffector::~CParticleFadeOutAffector((glitch::scene::CParticleFadeOutAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fa7e4 `global constructor keyed to'.._source_glitch_scene_CParticleFadeOutAffector.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CParticleFadeOutAffector.cpp()
{
  dword_9F83F0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F83EC = 1056964608;
}


// ===== 6fa804 glitch::scene::CParticleFadeOutAffector::deserializeAttributes(int,glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CParticleFadeOutAffector::deserializeAttributes(int a1, int a2, int a3)
{
  const char *v6; // r0
  const char *v8; // r0

  v6 = (const char *)(*(int (__fastcall **)(int))(*(_DWORD *)a3 + 16))(a3);
  if ( !v6 )
    return a2;
  if ( LC_API_STRCMP_0(v6, "TargetColor") )
    return a2;
  *(_DWORD *)(a1 + 5) = (*(int (__fastcall **)(int, int))(*(_DWORD *)a3 + 296))(a3, a2);
  v8 = (const char *)(*(int (__fastcall **)(int, int))(*(_DWORD *)a3 + 16))(a3, ++a2);
  if ( !v8 || LC_API_STRCMP_0(v8, "FadeOutTime") )
    return a2;
  *(_DWORD *)(a1 + 12) = (*(int (__fastcall **)(int, int))(*(_DWORD *)a3 + 116))(a3, a2);
  return a2 + 1;
}


// ===== 6fa8d8 glitch::scene::IParticleFadeOutAffector::~IParticleFadeOutAffector() =====
void __fastcall glitch::scene::IParticleFadeOutAffector::~IParticleFadeOutAffector(
        glitch::scene::IParticleFadeOutAffector *this)
{
  *(_DWORD *)this = off_98D664;
  *((_DWORD *)this + 2) = off_98D618;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98D664;
  LC_API_FREE_0(this);
}


// ===== 6fa92c `virtual thunk to'glitch::scene::IParticleFadeOutAffector::~IParticleFadeOutAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleFadeOutAffector::~IParticleFadeOutAffector(
        glitch::scene::IParticleFadeOutAffector *this)
{
  glitch::scene::IParticleFadeOutAffector::~IParticleFadeOutAffector((glitch::scene::IParticleFadeOutAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fa93c `virtual thunk to'glitch::scene::IParticleFadeOutAffector::~IParticleFadeOutAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleFadeOutAffector::~IParticleFadeOutAffector(
        glitch::scene::IParticleFadeOutAffector *this)
{
  glitch::scene::IParticleFadeOutAffector::~IParticleFadeOutAffector((glitch::scene::IParticleFadeOutAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fa94c glitch::scene::CParticleFadeOutAffector::~CParticleFadeOutAffector() =====
void __fastcall glitch::scene::CParticleFadeOutAffector::~CParticleFadeOutAffector(
        glitch::scene::CParticleFadeOutAffector *this)
{
  *(_DWORD *)this = off_98D79C;
  *((_DWORD *)this + 4) = off_98D740;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98D79C;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_98D7E0;
  *(_DWORD *)this = off_98D80C;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98D80C;
  LC_API_FREE_0(this);
}


// ===== 6fa9c4 `virtual thunk to'glitch::scene::CParticleFadeOutAffector::~CParticleFadeOutAffector() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleFadeOutAffector::~CParticleFadeOutAffector(
        glitch::scene::CParticleFadeOutAffector *this)
{
  glitch::scene::CParticleFadeOutAffector::~CParticleFadeOutAffector((glitch::scene::CParticleFadeOutAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fa9d4 `virtual thunk to'glitch::scene::CParticleFadeOutAffector::~CParticleFadeOutAffector() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleFadeOutAffector::~CParticleFadeOutAffector(
        glitch::scene::CParticleFadeOutAffector *this)
{
  glitch::scene::CParticleFadeOutAffector::~CParticleFadeOutAffector((glitch::scene::CParticleFadeOutAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fa9e4 `virtual thunk to'glitch::scene::CParticleFadeOutAffector::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::scene::CParticleFadeOutAffector::serializeAttributes(_DWORD *a1, int a2)
{
  return glitch::scene::CParticleFadeOutAffector::serializeAttributes((int)a1 + *(_DWORD *)(*a1 - 16), a2);
}


// ===== 6fa9f4 glitch::scene::IParticleGravityAffector::getType(void) =====
int __fastcall glitch::scene::IParticleGravityAffector::getType(glitch::scene::IParticleGravityAffector *this)
{
  return 3;
}


// ===== 6fa9fc glitch::scene::CParticleGravityAffector::setTimeForceLost(float) =====
int __fastcall glitch::scene::CParticleGravityAffector::setTimeForceLost(int this, float a2)
{
  *(float *)(this + 8) = a2;
  return this;
}


// ===== 6faa04 glitch::scene::CParticleGravityAffector::setGravity(glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::scene::CParticleGravityAffector::setGravity(_DWORD *result, _DWORD *a2)
{
  result[3] = *a2;
  result[4] = a2[1];
  result[5] = a2[2];
  return result;
}


// ===== 6faa20 glitch::scene::CParticleGravityAffector::getTimeForceLost(void) =====
int __fastcall glitch::scene::CParticleGravityAffector::getTimeForceLost(glitch::scene::CParticleGravityAffector *this)
{
  return *((_DWORD *)this + 2);
}


// ===== 6faa28 glitch::scene::CParticleGravityAffector::getGravity(void) =====
char *__fastcall glitch::scene::CParticleGravityAffector::getGravity(glitch::scene::CParticleGravityAffector *this)
{
  return (char *)this + 12;
}


// ===== 6faa30 glitch::scene::IParticleGravityAffector::~IParticleGravityAffector() =====
void __fastcall glitch::scene::IParticleGravityAffector::~IParticleGravityAffector(
        glitch::scene::IParticleGravityAffector *this)
{
  ;
}


// ===== 6faa34 `virtual thunk to'glitch::scene::IParticleGravityAffector::~IParticleGravityAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleGravityAffector::~IParticleGravityAffector(
        glitch::scene::IParticleGravityAffector *this)
{
  glitch::scene::IParticleGravityAffector::~IParticleGravityAffector((glitch::scene::IParticleGravityAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6faa44 `virtual thunk to'glitch::scene::IParticleGravityAffector::~IParticleGravityAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleGravityAffector::~IParticleGravityAffector(
        glitch::scene::IParticleGravityAffector *this)
{
  glitch::scene::IParticleGravityAffector::~IParticleGravityAffector((glitch::scene::IParticleGravityAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6faa54 glitch::scene::CParticleGravityAffector::CParticleGravityAffector(glitch::core::vector3d<float> const&,uint) =====
int *__fastcall glitch::scene::CParticleGravityAffector::CParticleGravityAffector(
        int *a1,
        int *a2,
        int *a3,
        unsigned int a4)
{
  int v5; // r0
  int v6; // r5
  int v8; // r3
  int v9; // r3

  *a1 = 0;
  a1[1] = 0;
  a1[3] = 0;
  a1[2] = 0;
  v5 = a2[2];
  *a1 = v5;
  v6 = *(_DWORD *)(v5 - 28);
  *(int *)((char *)a1 + v6) = a2[3];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = a2[4];
  *((_BYTE *)a1 + 4) = 1;
  v8 = a2[1];
  *a1 = v8;
  *(int *)((char *)a1 + *(_DWORD *)(v8 - 28)) = a2[5];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = a2[6];
  v9 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v9 - 28)) = a2[7];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = a2[8];
  *((float *)a1 + 2) = (float)a4;
  a1[3] = *a3;
  a1[4] = a3[1];
  a1[5] = a3[2];
  return a1;
}


// ===== 6fab1c glitch::scene::CParticleGravityAffector::CParticleGravityAffector(glitch::core::vector3d<float> const&,uint) =====
_DWORD *__fastcall glitch::scene::CParticleGravityAffector::CParticleGravityAffector(
        _DWORD *result,
        _DWORD *a2,
        unsigned int a3)
{
  *result = off_98DB2C;
  result[6] = off_95B720;
  result[7] = 1;
  *(int (**)())((char *)&off_18 + (_DWORD)result) = (int (*)())off_98DB4C;
  *result = off_98DADC;
  result[1] = 0;
  result[3] = 0;
  result[2] = 0;
  *(int *)((char *)&dword_0 + (_DWORD)result) = (int)off_98DADC;
  *(_DWORD *)((char *)result + *(_DWORD *)(*result - 12)) = off_98DB10;
  *result = off_98DA6C;
  *((_BYTE *)result + 4) = 1;
  *(int *)((char *)&dword_0 + (_DWORD)result) = (int)off_98DA6C;
  *(_DWORD *)((char *)result + *(_DWORD *)(*result - 12)) = off_98DAB0;
  *result = off_98D9CC;
  result[6] = off_98DA10;
  *((float *)result + 2) = (float)a3;
  result[3] = *a2;
  result[4] = a2[1];
  result[5] = a2[2];
  return result;
}


// ===== 6fac14 glitch::scene::CParticleGravityAffector::affect(uint,glitch::scene::SParticle *,uint) =====
float __fastcall glitch::scene::CParticleGravityAffector::affect(int a1, int a2, int a3, int a4)
{
  float result; // r0
  int v7; // r7
  float v8; // r6
  float v9; // r9
  float v10; // r10

  LODWORD(result) = *(unsigned __int8 *)(a1 + 4);
  if ( result != 0.0 && a4 )
  {
    v7 = 0;
    do
    {
      v8 = (float)(unsigned int)(a2 - *(_DWORD *)(a3 + 24)) / *(float *)(a1 + 8);
      if ( v8 <= 1.0 )
      {
        if ( v8 < 0.0 )
          v8 = 0.0;
      }
      else
      {
        v8 = 1.0;
      }
      v9 = *(float *)(a3 + 44) + (float)((float)(1.0 - v8) * (float)(*(float *)(a1 + 16) - *(float *)(a3 + 44)));
      v10 = *(float *)(a3 + 48) + (float)((float)(1.0 - v8) * (float)(*(float *)(a1 + 20) - *(float *)(a3 + 48)));
      result = *(float *)(a3 + 40) + (float)((float)(1.0 - v8) * (float)(*(float *)(a1 + 12) - *(float *)(a3 + 40)));
      ++v7;
      *(float *)(a3 + 12) = result;
      *(float *)(a3 + 16) = v9;
      *(float *)(a3 + 20) = v10;
      a3 += 68;
    }
    while ( v7 != a4 );
  }
  return result;
}


// ===== 6fad3c glitch::scene::CParticleGravityAffector::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CParticleGravityAffector::serializeAttributes(int a1, int a2)
{
  (*(void (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 424))(a2, "Gravity", a1 + 12, 0);
  return (*(int (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(
           a2,
           "TimeForceLost",
           *(_DWORD *)(a1 + 8),
           0);
}


// ===== 6fad94 glitch::scene::CParticleGravityAffector::~CParticleGravityAffector() =====
void __fastcall glitch::scene::CParticleGravityAffector::~CParticleGravityAffector(
        glitch::scene::CParticleGravityAffector *this)
{
  ;
}


// ===== 6fad98 `virtual thunk to'glitch::scene::CParticleGravityAffector::~CParticleGravityAffector() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleGravityAffector::~CParticleGravityAffector(
        glitch::scene::CParticleGravityAffector *this)
{
  glitch::scene::CParticleGravityAffector::~CParticleGravityAffector((glitch::scene::CParticleGravityAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fada8 `virtual thunk to'glitch::scene::CParticleGravityAffector::~CParticleGravityAffector() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleGravityAffector::~CParticleGravityAffector(
        glitch::scene::CParticleGravityAffector *this)
{
  glitch::scene::CParticleGravityAffector::~CParticleGravityAffector((glitch::scene::CParticleGravityAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fadb8 `global constructor keyed to'.._source_glitch_scene_CParticleGravityAffector.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CParticleGravityAffector.cpp()
{
  dword_9F83FC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F83F8 = 1056964608;
}


// ===== 6fadd8 glitch::scene::CParticleGravityAffector::deserializeAttributes(int,glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CParticleGravityAffector::deserializeAttributes(_DWORD *a1, int a2, int a3)
{
  const char *v6; // r0
  int v8; // r3
  int v9; // r2
  const char *v10; // r0
  int v11; // r0
  _DWORD v12[3]; // [sp+4h] [bp-Ch] BYREF

  v6 = (const char *)(*(int (__fastcall **)(int))(*(_DWORD *)a3 + 16))(a3);
  if ( v6 )
  {
    if ( !LC_API_STRCMP_0(v6, "Gravity") )
    {
      (*(void (__fastcall **)(_DWORD *, int, int))(*(_DWORD *)a3 + 440))(v12, a3, a2);
      v8 = v12[2];
      v9 = v12[1];
      ++a2;
      a1[3] = v12[0];
      a1[4] = v9;
      a1[5] = v8;
      v10 = (const char *)(*(int (__fastcall **)(int, int))(*(_DWORD *)a3 + 16))(a3, a2);
      if ( v10 )
      {
        if ( !LC_API_STRCMP_0(v10, "TimeForceLost") )
        {
          v11 = (*(int (__fastcall **)(int, int))(*(_DWORD *)a3 + 116))(a3, a2++);
          a1[2] = v11;
        }
      }
    }
  }
  return a2;
}


// ===== 6faeb0 glitch::scene::IParticleGravityAffector::~IParticleGravityAffector() =====
void __fastcall glitch::scene::IParticleGravityAffector::~IParticleGravityAffector(
        glitch::scene::IParticleGravityAffector *this)
{
  *(_DWORD *)this = off_98D934;
  *((_DWORD *)this + 2) = off_98D8E8;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98D934;
  LC_API_FREE_0(this);
}


// ===== 6faf04 `virtual thunk to'glitch::scene::IParticleGravityAffector::~IParticleGravityAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleGravityAffector::~IParticleGravityAffector(
        glitch::scene::IParticleGravityAffector *this)
{
  glitch::scene::IParticleGravityAffector::~IParticleGravityAffector((glitch::scene::IParticleGravityAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6faf14 `virtual thunk to'glitch::scene::IParticleGravityAffector::~IParticleGravityAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleGravityAffector::~IParticleGravityAffector(
        glitch::scene::IParticleGravityAffector *this)
{
  glitch::scene::IParticleGravityAffector::~IParticleGravityAffector((glitch::scene::IParticleGravityAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6faf24 glitch::scene::CParticleGravityAffector::~CParticleGravityAffector() =====
void __fastcall glitch::scene::CParticleGravityAffector::~CParticleGravityAffector(
        glitch::scene::CParticleGravityAffector *this)
{
  *(_DWORD *)this = off_98DA6C;
  *((_DWORD *)this + 6) = off_98DA10;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98DA6C;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_98DAB0;
  *(_DWORD *)this = off_98DADC;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98DADC;
  LC_API_FREE_0(this);
}


// ===== 6faf9c `virtual thunk to'glitch::scene::CParticleGravityAffector::~CParticleGravityAffector() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleGravityAffector::~CParticleGravityAffector(
        glitch::scene::CParticleGravityAffector *this)
{
  glitch::scene::CParticleGravityAffector::~CParticleGravityAffector((glitch::scene::CParticleGravityAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fafac `virtual thunk to'glitch::scene::CParticleGravityAffector::~CParticleGravityAffector() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleGravityAffector::~CParticleGravityAffector(
        glitch::scene::CParticleGravityAffector *this)
{
  glitch::scene::CParticleGravityAffector::~CParticleGravityAffector((glitch::scene::CParticleGravityAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fafbc `virtual thunk to'glitch::scene::CParticleGravityAffector::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::scene::CParticleGravityAffector::serializeAttributes(_DWORD *a1, int a2)
{
  return glitch::scene::CParticleGravityAffector::serializeAttributes((int)a1 + *(_DWORD *)(*a1 - 16), a2);
}


// ===== 6fafcc glitch::scene::IParticleMeshEmitter::getType(void) =====
int __fastcall glitch::scene::IParticleMeshEmitter::getType(glitch::scene::IParticleMeshEmitter *this)
{
  return 4;
}


// ===== 6fafd4 glitch::scene::CParticleMeshEmitter::setUseNormalDirection(bool) =====
int __fastcall glitch::scene::CParticleMeshEmitter::setUseNormalDirection(int this, bool a2)
{
  *(_BYTE *)(this + 33) = a2;
  return this;
}


// ===== 6fafdc glitch::scene::CParticleMeshEmitter::setDirection(glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::scene::CParticleMeshEmitter::setDirection(_DWORD *result, _DWORD *a2)
{
  result[13] = *a2;
  result[14] = a2[1];
  result[15] = a2[2];
  return result;
}


// ===== 6faff8 glitch::scene::CParticleMeshEmitter::setNormalDirectionModifier(float) =====
int __fastcall glitch::scene::CParticleMeshEmitter::setNormalDirectionModifier(int this, float a2)
{
  *(float *)(this + 36) = a2;
  return this;
}


// ===== 6fb000 glitch::scene::CParticleMeshEmitter::setEveryMeshVertex(bool) =====
int __fastcall glitch::scene::CParticleMeshEmitter::setEveryMeshVertex(int this, bool a2)
{
  *(_BYTE *)(this + 32) = a2;
  return this;
}


// ===== 6fb008 glitch::scene::CParticleMeshEmitter::setMinParticlesPerSecond(uint) =====
int __fastcall glitch::scene::CParticleMeshEmitter::setMinParticlesPerSecond(int this, unsigned int a2)
{
  *(_DWORD *)(this + 64) = a2;
  return this;
}


// ===== 6fb010 glitch::scene::CParticleMeshEmitter::setMaxParticlesPerSecond(uint) =====
int __fastcall glitch::scene::CParticleMeshEmitter::setMaxParticlesPerSecond(int this, unsigned int a2)
{
  *(_DWORD *)(this + 68) = a2;
  return this;
}


// ===== 6fb018 glitch::scene::CParticleMeshEmitter::setMinStartColor(glitch::video::SColor const&) =====
void *__fastcall glitch::scene::CParticleMeshEmitter::setMinStartColor(int a1, const void *a2)
{
  return memcpy((void *)(a1 + 72), a2, 4u);
}


// ===== 6fb02c glitch::scene::CParticleMeshEmitter::setMaxStartColor(glitch::video::SColor const&) =====
void *__fastcall glitch::scene::CParticleMeshEmitter::setMaxStartColor(int a1, const void *a2)
{
  return memcpy((void *)(a1 + 76), a2, 4u);
}


// ===== 6fb040 glitch::scene::CParticleMeshEmitter::getMesh(void) =====
char *__fastcall glitch::scene::CParticleMeshEmitter::getMesh(glitch::scene::CParticleMeshEmitter *this)
{
  return (char *)this + 4;
}


// ===== 6fb048 glitch::scene::CParticleMeshEmitter::isUsingNormalDirection(void) =====
int __fastcall glitch::scene::CParticleMeshEmitter::isUsingNormalDirection(glitch::scene::CParticleMeshEmitter *this)
{
  return *((unsigned __int8 *)this + 33);
}


// ===== 6fb050 glitch::scene::CParticleMeshEmitter::getDirection(void) =====
char *__fastcall glitch::scene::CParticleMeshEmitter::getDirection(glitch::scene::CParticleMeshEmitter *this)
{
  return (char *)this + 52;
}


// ===== 6fb058 glitch::scene::CParticleMeshEmitter::getNormalDirectionModifier(void) =====
int __fastcall glitch::scene::CParticleMeshEmitter::getNormalDirectionModifier(
        glitch::scene::CParticleMeshEmitter *this)
{
  return *((_DWORD *)this + 9);
}


// ===== 6fb060 glitch::scene::CParticleMeshEmitter::getEveryMeshVertex(void) =====
int __fastcall glitch::scene::CParticleMeshEmitter::getEveryMeshVertex(glitch::scene::CParticleMeshEmitter *this)
{
  return *((unsigned __int8 *)this + 32);
}


// ===== 6fb068 glitch::scene::CParticleMeshEmitter::getMinParticlesPerSecond(void) =====
int __fastcall glitch::scene::CParticleMeshEmitter::getMinParticlesPerSecond(glitch::scene::CParticleMeshEmitter *this)
{
  return *((_DWORD *)this + 16);
}


// ===== 6fb070 glitch::scene::CParticleMeshEmitter::getMaxParticlesPerSecond(void) =====
int __fastcall glitch::scene::CParticleMeshEmitter::getMaxParticlesPerSecond(glitch::scene::CParticleMeshEmitter *this)
{
  return *((_DWORD *)this + 17);
}


// ===== 6fb078 glitch::scene::CParticleMeshEmitter::getMinStartColor(void) =====
char *__fastcall glitch::scene::CParticleMeshEmitter::getMinStartColor(glitch::scene::CParticleMeshEmitter *this)
{
  return (char *)this + 72;
}


// ===== 6fb080 glitch::scene::CParticleMeshEmitter::getMaxStartColor(void) =====
char *__fastcall glitch::scene::CParticleMeshEmitter::getMaxStartColor(glitch::scene::CParticleMeshEmitter *this)
{
  return (char *)this + 76;
}


// ===== 6fb088 glitch::scene::CParticleMeshEmitter::getUseNormalDirection(void) =====
int __fastcall glitch::scene::CParticleMeshEmitter::getUseNormalDirection(glitch::scene::CParticleMeshEmitter *this)
{
  return *((unsigned __int8 *)this + 33);
}


// ===== 6fb090 glitch::scene::CParticleMeshEmitter::getMBNumber(void) =====
int __fastcall glitch::scene::CParticleMeshEmitter::getMBNumber(glitch::scene::CParticleMeshEmitter *this)
{
  return *((_DWORD *)this + 4);
}


// ===== 6fb098 glitch::scene::CParticleMeshEmitter::getMinLifeTime(void) =====
int __fastcall glitch::scene::CParticleMeshEmitter::getMinLifeTime(glitch::scene::CParticleMeshEmitter *this)
{
  return *((_DWORD *)this + 20);
}


// ===== 6fb0a0 glitch::scene::CParticleMeshEmitter::getMaxLifeTime(void) =====
int __fastcall glitch::scene::CParticleMeshEmitter::getMaxLifeTime(glitch::scene::CParticleMeshEmitter *this)
{
  return *((_DWORD *)this + 21);
}


// ===== 6fb0a8 glitch::scene::CParticleMeshEmitter::getMaxAngleDegrees(void) =====
int __fastcall glitch::scene::CParticleMeshEmitter::getMaxAngleDegrees(glitch::scene::CParticleMeshEmitter *this)
{
  return *((_DWORD *)this + 24);
}


// ===== 6fb0b0 glitch::scene::IParticleMeshEmitter::~IParticleMeshEmitter() =====
void __fastcall glitch::scene::IParticleMeshEmitter::~IParticleMeshEmitter(glitch::scene::IParticleMeshEmitter *this)
{
  ;
}


// ===== 6fb0b4 `virtual thunk to'glitch::scene::IParticleMeshEmitter::~IParticleMeshEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleMeshEmitter::~IParticleMeshEmitter(
        glitch::scene::IParticleMeshEmitter *this)
{
  glitch::scene::IParticleMeshEmitter::~IParticleMeshEmitter((glitch::scene::IParticleMeshEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fb0c4 `virtual thunk to'glitch::scene::IParticleMeshEmitter::~IParticleMeshEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleMeshEmitter::~IParticleMeshEmitter(
        glitch::scene::IParticleMeshEmitter *this)
{
  glitch::scene::IParticleMeshEmitter::~IParticleMeshEmitter((glitch::scene::IParticleMeshEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fb0d4 glitch::scene::CParticleMeshEmitter::emitt(uint,uint,glitch::scene::SParticle *&) =====
int glitch::scene::CParticleMeshEmitter::emitt()
{
  return 0;
}


// ===== 6fb0dc `global constructor keyed to'.._source_glitch_scene_CParticleMeshEmitter.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CParticleMeshEmitter.cpp()
{
  dword_9F8408 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F8404 = 1056964608;
}


// ===== 6fb0fc glitch::scene::CParticleMeshEmitter::~CParticleMeshEmitter() =====
void __fastcall glitch::scene::CParticleMeshEmitter::~CParticleMeshEmitter(glitch::scene::CParticleMeshEmitter *this)
{
  void *v2; // r0
  void *v3; // r0
  glitch::IReferenceCounted *v4; // r0

  v2 = *((void **)this + 10);
  *(_DWORD *)this = off_98DCEC;
  *((_DWORD *)this + 25) = off_98DD74;
  if ( v2 )
    GlitchFree(v2);
  v3 = *((void **)this + 5);
  if ( v3 )
    GlitchFree(v3);
  v4 = *((glitch::IReferenceCounted **)this + 1);
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
}


// ===== 6fb164 `virtual thunk to'glitch::scene::CParticleMeshEmitter::~CParticleMeshEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleMeshEmitter::~CParticleMeshEmitter(
        glitch::scene::CParticleMeshEmitter *this)
{
  glitch::scene::CParticleMeshEmitter::~CParticleMeshEmitter((glitch::scene::CParticleMeshEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fb174 `virtual thunk to'glitch::scene::CParticleMeshEmitter::~CParticleMeshEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleMeshEmitter::~CParticleMeshEmitter(
        glitch::scene::CParticleMeshEmitter *this)
{
  glitch::scene::CParticleMeshEmitter::~CParticleMeshEmitter((glitch::scene::CParticleMeshEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fb184 glitch::scene::CParticleMeshEmitter::~CParticleMeshEmitter() =====
void __fastcall glitch::scene::CParticleMeshEmitter::~CParticleMeshEmitter(glitch::scene::CParticleMeshEmitter *this)
{
  glitch::scene::CParticleMeshEmitter::~CParticleMeshEmitter(this);
  LC_API_FREE_0(this);
}


// ===== 6fb1a0 `virtual thunk to'glitch::scene::CParticleMeshEmitter::~CParticleMeshEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleMeshEmitter::~CParticleMeshEmitter(
        glitch::scene::CParticleMeshEmitter *this)
{
  glitch::scene::CParticleMeshEmitter::~CParticleMeshEmitter((glitch::scene::CParticleMeshEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fb1b0 `virtual thunk to'glitch::scene::CParticleMeshEmitter::~CParticleMeshEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleMeshEmitter::~CParticleMeshEmitter(
        glitch::scene::CParticleMeshEmitter *this)
{
  glitch::scene::CParticleMeshEmitter::~CParticleMeshEmitter((glitch::scene::CParticleMeshEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fb1c0 std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(int *,int const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        int a1,
        int a2,
        _DWORD *a3)
{
  unsigned int v6; // r3
  unsigned int v7; // r7
  size_t v8; // r7
  _DWORD *v9; // r0
  const void *v10; // r1
  _DWORD *v11; // r5
  size_t v12; // r6
  _DWORD *v13; // r6

  v6 = (*(_DWORD *)(a1 + 4) - *(_DWORD *)a1) >> 2;
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0x3FFFFFFF || v6 > v7 )
  {
    v8 = -1;
    v9 = GlitchAlloc(0xFFFFFFFC, 0);
    v10 = *(const void **)a1;
    v11 = v9;
    v12 = a2 - *(_DWORD *)a1;
    if ( !v12 )
    {
      v13 = v9;
      goto LABEL_11;
    }
LABEL_14:
    v13 = (char *)memmove(v9, v10, v12) + v12;
    goto LABEL_11;
  }
  v8 = v7;
  v9 = GlitchAlloc(v8 * 4, 0);
  v10 = *(const void **)a1;
  v11 = v9;
  v12 = a2 - *(_DWORD *)a1;
  if ( v12 )
    goto LABEL_14;
  v13 = v9;
LABEL_11:
  *v13 = *a3;
  GlitchFree(*(void **)a1);
  *(_DWORD *)a1 = v11;
  *(_DWORD *)(a1 + 4) = v13 + 1;
  *(_DWORD *)(a1 + 8) = &v11[v8];
}


// ===== 6fb270 glitch::scene::IParticleMeshEmitter::~IParticleMeshEmitter() =====
void __fastcall glitch::scene::IParticleMeshEmitter::~IParticleMeshEmitter(glitch::scene::IParticleMeshEmitter *this)
{
  *(_DWORD *)this = off_98DC34;
  *((_DWORD *)this + 1) = off_98DBE8;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98DC34;
  LC_API_FREE_0(this);
}


// ===== 6fb2c4 `virtual thunk to'glitch::scene::IParticleMeshEmitter::~IParticleMeshEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleMeshEmitter::~IParticleMeshEmitter(
        glitch::scene::IParticleMeshEmitter *this)
{
  glitch::scene::IParticleMeshEmitter::~IParticleMeshEmitter((glitch::scene::IParticleMeshEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fb2d4 `virtual thunk to'glitch::scene::IParticleMeshEmitter::~IParticleMeshEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleMeshEmitter::~IParticleMeshEmitter(
        glitch::scene::IParticleMeshEmitter *this)
{
  glitch::scene::IParticleMeshEmitter::~IParticleMeshEmitter((glitch::scene::IParticleMeshEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fb2e4 glitch::scene::CParticleMeshEmitter::CParticleMeshEmitter(boost::intrusive_ptr<glitch::scene::IMesh const> const&,bool,glitch::core::vector3d<float> const&,float,int,bool,uint,uint,glitch::video::SColor const&,glitch::video::SColor const&,uint,uint,int) =====
int __fastcall glitch::scene::CParticleMeshEmitter::CParticleMeshEmitter(
        int a1,
        int *a2,
        int *a3,
        char a4,
        _DWORD *a5,
        int a6,
        int a7,
        char a8,
        int a9,
        int a10,
        void *a11,
        void *a12,
        int a13,
        int a14,
        int a15)
{
  int v15; // r12
  int v17; // r0
  int v18; // lr
  unsigned int v19; // r5
  int v20; // r2
  int v21; // r3
  int v22; // r3
  int v23; // r0
  int v24; // r6
  glitch::video::CVertexStreams *v25; // r3
  glitch::IReferenceCounted *v26; // r0
  bool v27; // zf
  glitch::video::CVertexStreams *v28; // r3
  int v29; // r6
  _DWORD *v30; // r1
  _DWORD *v31; // r3
  int v33; // [sp+0h] [bp-24h]
  glitch::video::CVertexStreams *v34; // [sp+Ch] [bp-18h] BYREF
  glitch::video::CVertexStreams *v35; // [sp+10h] [bp-14h] BYREF
  glitch::IReferenceCounted *v36; // [sp+14h] [bp-10h] BYREF
  int v37; // [sp+18h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v38; // [sp+1Ch] [bp-8h] BYREF

  v15 = a2[2];
  *(_DWORD *)a1 = v15;
  *(_DWORD *)(a1 + *(_DWORD *)(v15 - 28)) = a2[3];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[4];
  v17 = a2[1];
  *(_DWORD *)a1 = v17;
  *(_DWORD *)(a1 + *(_DWORD *)(v17 - 28)) = a2[5];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[6];
  v18 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v18 - 28)) = a2[7];
  v19 = 0;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[8];
  v20 = *a3;
  *(_DWORD *)(a1 + 4) = v20;
  if ( v20 )
    ++*(_DWORD *)(v20 + 4);
  *(_BYTE *)(a1 + 32) = a8;
  *(_BYTE *)(a1 + 33) = a4;
  *(_DWORD *)(a1 + 16) = a7;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 36) = a6;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = *a5;
  *(_DWORD *)(a1 + 56) = a5[1];
  v21 = a5[2];
  *(_DWORD *)(a1 + 64) = a9;
  *(_DWORD *)(a1 + 60) = v21;
  *(_DWORD *)(a1 + 68) = a10;
  memcpy((void *)(a1 + 72), a11, 4u);
  memcpy((void *)(a1 + 76), a12, 4u);
  v22 = *(_DWORD *)(a1 + 4);
  *(_DWORD *)(a1 + 80) = a13;
  *(_DWORD *)(a1 + 84) = a14;
  *(_DWORD *)(a1 + 88) = 0;
  *(_DWORD *)(a1 + 92) = 0;
  *(_DWORD *)(a1 + 96) = a15;
  v23 = (*(int (__fastcall **)(int))(*(_DWORD *)v22 + 16))(v22);
  *(_DWORD *)(a1 + 12) = v23;
  if ( v23 )
  {
    do
    {
      (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, unsigned int))(**(_DWORD **)(a1 + 4) + 20))(
        &v38,
        *(_DWORD *)(a1 + 4),
        v19);
      v35 = *((glitch::video::CVertexStreams **)v38 + 5);
      v28 = v35;
      if ( v35 )
      {
        ++*(_DWORD *)v35;
        v28 = v35;
      }
      v29 = *((_DWORD *)v28 + 2);
      boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v35);
      v30 = *(_DWORD **)(a1 + 24);
      v31 = *(_DWORD **)(a1 + 28);
      v37 = v29;
      if ( v30 == v31 )
      {
        std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
          a1 + 20,
          (int)v30,
          &v37);
      }
      else
      {
        *v30 = v29;
        *(_DWORD *)(a1 + 24) += 4;
      }
      if ( v38 )
        glitch::IReferenceCounted::drop(v38);
      v24 = *(_DWORD *)(a1 + 8);
      (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, unsigned int))(**(_DWORD **)(a1 + 4) + 20))(
        &v36,
        *(_DWORD *)(a1 + 4),
        v19);
      v34 = *((glitch::video::CVertexStreams **)v36 + 5);
      v25 = v34;
      if ( v34 )
      {
        ++*(_DWORD *)v34;
        v25 = v34;
      }
      v33 = *((_DWORD *)v25 + 2);
      boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v34);
      v26 = v36;
      v27 = v36 == nullptr;
      *(_DWORD *)(a1 + 8) = v24 + v33;
      if ( !v27 )
        glitch::IReferenceCounted::drop(v26);
      ++v19;
    }
    while ( *(_DWORD *)(a1 + 12) > v19 );
  }
  return a1;
}


// ===== 6fb57c glitch::scene::CParticleMeshEmitter::setMesh(boost::intrusive_ptr<glitch::scene::IMesh const> const&) =====
glitch::IReferenceCounted *__fastcall glitch::scene::CParticleMeshEmitter::setMesh(_DWORD *a1, _DWORD **a2)
{
  _DWORD *v2; // r3
  glitch::IReferenceCounted *v4; // r0
  unsigned int v5; // r5
  glitch::IReferenceCounted *result; // r0
  int v7; // r6
  glitch::video::CVertexStreams *v8; // r3
  bool v9; // zf
  glitch::video::CVertexStreams *v10; // r3
  int v11; // r6
  _DWORD *v12; // r1
  _DWORD *v13; // r3
  int v14; // [sp+0h] [bp-24h]
  glitch::video::CVertexStreams *v15; // [sp+Ch] [bp-18h] BYREF
  glitch::video::CVertexStreams *v16; // [sp+10h] [bp-14h] BYREF
  glitch::IReferenceCounted *v17; // [sp+14h] [bp-10h] BYREF
  int v18; // [sp+18h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v19; // [sp+1Ch] [bp-8h] BYREF

  v2 = *a2;
  if ( *a2 )
    ++v2[1];
  v4 = (glitch::IReferenceCounted *)a1[1];
  a1[1] = v2;
  if ( v4 )
  {
    glitch::IReferenceCounted::drop(v4);
    v2 = (_DWORD *)a1[1];
  }
  v5 = 0;
  a1[2] = 0;
  result = (glitch::IReferenceCounted *)(*(int (__fastcall **)(_DWORD *))(*v2 + 16))(v2);
  a1[3] = result;
  if ( result )
  {
    do
    {
      (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, unsigned int))(*(_DWORD *)a1[1] + 20))(
        &v19,
        a1[1],
        v5);
      v16 = *((glitch::video::CVertexStreams **)v19 + 5);
      v10 = v16;
      if ( v16 )
      {
        ++*(_DWORD *)v16;
        v10 = v16;
      }
      v11 = *((_DWORD *)v10 + 2);
      boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v16);
      v12 = (_DWORD *)a1[6];
      v13 = (_DWORD *)a1[7];
      v18 = v11;
      if ( v12 == v13 )
      {
        std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
          (int)(a1 + 5),
          (int)v12,
          &v18);
      }
      else
      {
        *v12 = v11;
        a1[6] += 4;
      }
      if ( v19 )
        glitch::IReferenceCounted::drop(v19);
      v7 = a1[2];
      (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, unsigned int))(*(_DWORD *)a1[1] + 20))(
        &v17,
        a1[1],
        v5);
      v15 = *((glitch::video::CVertexStreams **)v17 + 5);
      v8 = v15;
      if ( v15 )
      {
        ++*(_DWORD *)v15;
        v8 = v15;
      }
      v14 = *((_DWORD *)v8 + 2);
      boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v15);
      result = v17;
      v9 = v17 == nullptr;
      a1[2] = v7 + v14;
      if ( !v9 )
        result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
      ++v5;
    }
    while ( a1[3] > v5 );
  }
  return result;
}


// ===== 6fb708 glitch::scene::CParticleMeshEmitter::CParticleMeshEmitter(boost::intrusive_ptr<glitch::scene::IMesh const> const&,bool,glitch::core::vector3d<float> const&,float,int,bool,uint,uint,glitch::video::SColor const&,glitch::video::SColor const&,uint,uint,int) =====
int __fastcall glitch::scene::CParticleMeshEmitter::CParticleMeshEmitter(
        int a1,
        int *a2,
        char a3,
        _DWORD *a4,
        int a5,
        int a6,
        char a7,
        int a8,
        int a9,
        void *a10,
        void *a11,
        int a12,
        int a13,
        int a14)
{
  int v15; // r1
  unsigned int v16; // r5
  int v17; // r3
  int v18; // r3
  int v19; // r0
  int v20; // r6
  glitch::video::CVertexStreams *v21; // r3
  glitch::IReferenceCounted *v22; // r0
  bool v23; // zf
  glitch::video::CVertexStreams *v24; // r3
  int v25; // r6
  _DWORD *v26; // r1
  _DWORD *v27; // r3
  int v29; // [sp+0h] [bp-24h]
  glitch::video::CVertexStreams *v30; // [sp+Ch] [bp-18h] BYREF
  glitch::video::CVertexStreams *v31; // [sp+10h] [bp-14h] BYREF
  glitch::IReferenceCounted *v32; // [sp+14h] [bp-10h] BYREF
  int v33; // [sp+18h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v34; // [sp+1Ch] [bp-8h] BYREF

  *(_DWORD *)a1 = off_98DEDC;
  *(_DWORD *)(a1 + 100) = off_95B720;
  *(_DWORD *)(a1 + 104) = 1;
  *(int *)((char *)&dword_64 + a1) = (int)off_98DEFC;
  *(_DWORD *)a1 = off_98DE6C;
  *(int *)((char *)&dword_0 + a1) = (int)off_98DE6C;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = off_98DEC0;
  *(_DWORD *)a1 = off_98DDCC;
  *(int *)((char *)&dword_0 + a1) = (int)off_98DDCC;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = off_98DE40;
  *(_DWORD *)a1 = off_98DCEC;
  *(_DWORD *)(a1 + 100) = off_98DD74;
  v15 = *a2;
  v16 = 0;
  *(_DWORD *)(a1 + 4) = v15;
  if ( v15 )
    ++*(_DWORD *)(v15 + 4);
  *(_BYTE *)(a1 + 32) = a7;
  *(_BYTE *)(a1 + 33) = a3;
  *(_DWORD *)(a1 + 16) = a6;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 36) = a5;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = *a4;
  *(_DWORD *)(a1 + 56) = a4[1];
  v17 = a4[2];
  *(_DWORD *)(a1 + 64) = a8;
  *(_DWORD *)(a1 + 60) = v17;
  *(_DWORD *)(a1 + 68) = a9;
  memcpy((void *)(a1 + 72), a10, 4u);
  memcpy((void *)(a1 + 76), a11, 4u);
  v18 = *(_DWORD *)(a1 + 4);
  *(_DWORD *)(a1 + 80) = a12;
  *(_DWORD *)(a1 + 84) = a13;
  *(_DWORD *)(a1 + 88) = 0;
  *(_DWORD *)(a1 + 92) = 0;
  *(_DWORD *)(a1 + 96) = a14;
  v19 = (*(int (__fastcall **)(int))(*(_DWORD *)v18 + 16))(v18);
  *(_DWORD *)(a1 + 12) = v19;
  if ( v19 )
  {
    do
    {
      (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, unsigned int))(**(_DWORD **)(a1 + 4) + 20))(
        &v34,
        *(_DWORD *)(a1 + 4),
        v16);
      v31 = *((glitch::video::CVertexStreams **)v34 + 5);
      v24 = v31;
      if ( v31 )
      {
        ++*(_DWORD *)v31;
        v24 = v31;
      }
      v25 = *((_DWORD *)v24 + 2);
      boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v31);
      v26 = *(_DWORD **)(a1 + 24);
      v27 = *(_DWORD **)(a1 + 28);
      v33 = v25;
      if ( v26 == v27 )
      {
        std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
          a1 + 20,
          (int)v26,
          &v33);
      }
      else
      {
        *v26 = v25;
        *(_DWORD *)(a1 + 24) += 4;
      }
      if ( v34 )
        glitch::IReferenceCounted::drop(v34);
      v20 = *(_DWORD *)(a1 + 8);
      (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, unsigned int))(**(_DWORD **)(a1 + 4) + 20))(
        &v32,
        *(_DWORD *)(a1 + 4),
        v16);
      v30 = *((glitch::video::CVertexStreams **)v32 + 5);
      v21 = v30;
      if ( v30 )
      {
        ++*(_DWORD *)v30;
        v21 = v30;
      }
      v29 = *((_DWORD *)v21 + 2);
      boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v30);
      v22 = v32;
      v23 = v32 == nullptr;
      *(_DWORD *)(a1 + 8) = v20 + v29;
      if ( !v23 )
        glitch::IReferenceCounted::drop(v22);
      ++v16;
    }
    while ( *(_DWORD *)(a1 + 12) > v16 );
  }
  return a1;
}


// ===== 6fb9d4 glitch::scene::CParticlePointEmitter::setDirection(glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::scene::CParticlePointEmitter::setDirection(_DWORD *result, _DWORD *a2)
{
  result[18] = *a2;
  result[19] = a2[1];
  result[20] = a2[2];
  return result;
}


// ===== 6fb9f0 glitch::scene::CParticlePointEmitter::setMinParticlesPerSecond(uint) =====
int __fastcall glitch::scene::CParticlePointEmitter::setMinParticlesPerSecond(int this, unsigned int a2)
{
  *(_DWORD *)(this + 84) = a2;
  return this;
}


// ===== 6fb9f8 glitch::scene::CParticlePointEmitter::setMaxParticlesPerSecond(uint) =====
int __fastcall glitch::scene::CParticlePointEmitter::setMaxParticlesPerSecond(int this, unsigned int a2)
{
  *(_DWORD *)(this + 88) = a2;
  return this;
}


// ===== 6fba00 glitch::scene::CParticlePointEmitter::setMinStartColor(glitch::video::SColor const&) =====
void *__fastcall glitch::scene::CParticlePointEmitter::setMinStartColor(int a1, const void *a2)
{
  return memcpy((void *)(a1 + 92), a2, 4u);
}


// ===== 6fba14 glitch::scene::CParticlePointEmitter::setMaxStartColor(glitch::video::SColor const&) =====
void *__fastcall glitch::scene::CParticlePointEmitter::setMaxStartColor(int a1, const void *a2)
{
  return memcpy((void *)(a1 + 96), a2, 4u);
}


// ===== 6fba28 glitch::scene::CParticlePointEmitter::getDirection(void) =====
char *__fastcall glitch::scene::CParticlePointEmitter::getDirection(glitch::scene::CParticlePointEmitter *this)
{
  return (char *)this + 72;
}


// ===== 6fba30 glitch::scene::CParticlePointEmitter::getMinParticlesPerSecond(void) =====
int __fastcall glitch::scene::CParticlePointEmitter::getMinParticlesPerSecond(
        glitch::scene::CParticlePointEmitter *this)
{
  return *((_DWORD *)this + 21);
}


// ===== 6fba38 glitch::scene::CParticlePointEmitter::getMaxParticlesPerSecond(void) =====
int __fastcall glitch::scene::CParticlePointEmitter::getMaxParticlesPerSecond(
        glitch::scene::CParticlePointEmitter *this)
{
  return *((_DWORD *)this + 22);
}


// ===== 6fba40 glitch::scene::CParticlePointEmitter::getMinStartColor(void) =====
char *__fastcall glitch::scene::CParticlePointEmitter::getMinStartColor(glitch::scene::CParticlePointEmitter *this)
{
  return (char *)this + 92;
}


// ===== 6fba48 glitch::scene::CParticlePointEmitter::getMaxStartColor(void) =====
char *__fastcall glitch::scene::CParticlePointEmitter::getMaxStartColor(glitch::scene::CParticlePointEmitter *this)
{
  return (char *)this + 96;
}


// ===== 6fba50 glitch::scene::CParticlePointEmitter::getMinLifeTime(void) =====
int __fastcall glitch::scene::CParticlePointEmitter::getMinLifeTime(glitch::scene::CParticlePointEmitter *this)
{
  return *((_DWORD *)this + 25);
}


// ===== 6fba58 glitch::scene::CParticlePointEmitter::getMaxLifeTime(void) =====
int __fastcall glitch::scene::CParticlePointEmitter::getMaxLifeTime(glitch::scene::CParticlePointEmitter *this)
{
  return *((_DWORD *)this + 26);
}


// ===== 6fba60 glitch::scene::CParticlePointEmitter::getMaxAngleDegrees(void) =====
int __fastcall glitch::scene::CParticlePointEmitter::getMaxAngleDegrees(glitch::scene::CParticlePointEmitter *this)
{
  return *((_DWORD *)this + 27);
}


// ===== 6fba68 glitch::scene::CParticlePointEmitter::CParticlePointEmitter(glitch::core::vector3d<float> const&,uint,uint,glitch::video::SColor,glitch::video::SColor,uint,uint,int) =====
int __fastcall glitch::scene::CParticlePointEmitter::CParticlePointEmitter(
        int result,
        int *a2,
        _DWORD *a3,
        int a4,
        int a5,
        int a6,
        int a7,
        int a8,
        int a9,
        int a10)
{
  int v10; // r4
  int v11; // r5
  int v12; // r2

  v10 = a2[1];
  *(_DWORD *)result = v10;
  *(_DWORD *)(result + *(_DWORD *)(v10 - 28)) = a2[2];
  *(_DWORD *)(result + *(_DWORD *)(*(_DWORD *)result - 12)) = a2[3];
  v11 = *a2;
  *(_DWORD *)result = *a2;
  *(_DWORD *)(result + *(_DWORD *)(v11 - 28)) = a2[4];
  *(_DWORD *)(result + *(_DWORD *)(*(_DWORD *)result - 12)) = a2[5];
  *(_DWORD *)(result + 4) = 0;
  *(_DWORD *)(result + 8) = 0;
  *(_DWORD *)(result + 12) = 0;
  *(_DWORD *)(result + 16) = 0;
  *(_DWORD *)(result + 52) = 0;
  *(_DWORD *)(result + 20) = 0;
  *(_DWORD *)(result + 24) = 0;
  *(_DWORD *)(result + 44) = 0;
  *(_DWORD *)(result + 48) = 0;
  *(_DWORD *)(result + 72) = *a3;
  *(_DWORD *)(result + 76) = a3[1];
  v12 = a3[2];
  *(_DWORD *)(result + 84) = a4;
  *(_DWORD *)(result + 116) = 0;
  *(_DWORD *)(result + 80) = v12;
  *(_DWORD *)(result + 88) = a5;
  *(_BYTE *)(result + 95) = HIBYTE(a6);
  *(_BYTE *)(result + 94) = BYTE2(a6);
  *(_BYTE *)(result + 98) = BYTE2(a7);
  *(_WORD *)(result + 92) = a6;
  *(_DWORD *)(result + 100) = a8;
  *(_BYTE *)(result + 99) = HIBYTE(a7);
  *(_BYTE *)(result + 97) = BYTE1(a7);
  *(_DWORD *)(result + 104) = a9;
  *(_BYTE *)(result + 96) = a7;
  *(_DWORD *)(result + 112) = 0;
  *(_DWORD *)(result + 108) = a10;
  return result;
}


// ===== 6fbb80 glitch::scene::CParticlePointEmitter::CParticlePointEmitter(glitch::core::vector3d<float> const&,uint,uint,glitch::video::SColor,glitch::video::SColor,uint,uint,int) =====
int __fastcall glitch::scene::CParticlePointEmitter::CParticlePointEmitter(
        int result,
        _DWORD *a2,
        int a3,
        int a4,
        int a5,
        int a6,
        int a7,
        int a8,
        int a9)
{
  int v9; // r1

  *(_DWORD *)(result + 120) = off_95B720;
  *(_DWORD *)result = off_98E03C;
  *(_DWORD *)(result + 124) = 1;
  *(int *)((char *)&dword_78 + result) = (int)off_98E05C;
  *(_DWORD *)result = off_98DFCC;
  *(int *)((char *)&dword_0 + result) = (int)off_98DFCC;
  *(_DWORD *)(result + *(_DWORD *)(*(_DWORD *)result - 12)) = off_98E020;
  *(_DWORD *)result = off_98DF24;
  *(_DWORD *)(result + 120) = off_98DF84;
  *(_DWORD *)(result + 4) = 0;
  *(_DWORD *)(result + 8) = 0;
  *(_DWORD *)(result + 52) = 0;
  *(_DWORD *)(result + 12) = 0;
  *(_DWORD *)(result + 16) = 0;
  *(_DWORD *)(result + 20) = 0;
  *(_DWORD *)(result + 24) = 0;
  *(_DWORD *)(result + 44) = 0;
  *(_DWORD *)(result + 48) = 0;
  *(_DWORD *)(result + 72) = *a2;
  *(_DWORD *)(result + 76) = a2[1];
  v9 = a2[2];
  *(_DWORD *)(result + 88) = a4;
  *(_BYTE *)(result + 99) = HIBYTE(a6);
  *(_BYTE *)(result + 96) = a6;
  *(_DWORD *)(result + 116) = 0;
  *(_DWORD *)(result + 84) = a3;
  *(_DWORD *)(result + 100) = a7;
  *(_DWORD *)(result + 80) = v9;
  *(_BYTE *)(result + 95) = HIBYTE(a5);
  *(_DWORD *)(result + 104) = a8;
  *(_BYTE *)(result + 94) = BYTE2(a5);
  *(_WORD *)(result + 92) = a5;
  *(_BYTE *)(result + 98) = BYTE2(a6);
  *(_BYTE *)(result + 97) = BYTE1(a6);
  *(_DWORD *)(result + 108) = a9;
  *(_DWORD *)(result + 112) = 0;
  return result;
}


// ===== 6fbcd8 glitch::scene::CParticlePointEmitter::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CParticlePointEmitter::serializeAttributes(_DWORD *a1, int a2)
{
  (*(void (__fastcall **)(int, const char *, _DWORD *, _DWORD))(*(_DWORD *)a2 + 424))(a2, "Direction", a1 + 18, 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
    a2,
    "MinParticlesPerSecond",
    a1[21],
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
    a2,
    "MaxParticlesPerSecond",
    a1[22],
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 280))(a2, "MinStartColor", a1[23], 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 280))(a2, "MaxStartColor", a1[24], 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(a2, "MinLifeTime", a1[25], 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(a2, "MaxLifeTime", a1[26], 0);
  return (*(int (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
           a2,
           "MaxAngleDegrees",
           a1[27],
           0);
}


// ===== 6fbe08 glitch::scene::CParticlePointEmitter::~CParticlePointEmitter() =====
void __fastcall glitch::scene::CParticlePointEmitter::~CParticlePointEmitter(
        glitch::scene::CParticlePointEmitter *this)
{
  ;
}


// ===== 6fbe0c `virtual thunk to'glitch::scene::CParticlePointEmitter::~CParticlePointEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticlePointEmitter::~CParticlePointEmitter(
        glitch::scene::CParticlePointEmitter *this)
{
  glitch::scene::CParticlePointEmitter::~CParticlePointEmitter((glitch::scene::CParticlePointEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fbe1c `virtual thunk to'glitch::scene::CParticlePointEmitter::~CParticlePointEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticlePointEmitter::~CParticlePointEmitter(
        glitch::scene::CParticlePointEmitter *this)
{
  glitch::scene::CParticlePointEmitter::~CParticlePointEmitter((glitch::scene::CParticlePointEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fbe2c `global constructor keyed to'.._source_glitch_scene_CParticlePointEmitter.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CParticlePointEmitter.cpp()
{
  dword_9F8414 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F8410 = 1056964608;
}


// ===== 6fbe4c glitch::scene::CParticlePointEmitter::deserializeAttributes(int,glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CParticlePointEmitter::deserializeAttributes(int a1, int a2, int a3)
{
  float v5; // r7
  float v6; // r6
  float v7; // r0
  float v8; // r0
  unsigned int v9; // r0
  unsigned int v10; // r3
  unsigned int v11; // r2
  int v12; // r0
  unsigned int v13; // r3
  unsigned int v14; // r2
  _DWORD v16[3]; // [sp+4h] [bp-Ch] BYREF

  (*(void (__fastcall **)(_DWORD *, int, const char *))(*(_DWORD *)a3 + 436))(v16, a3, "Direction");
  v5 = *(float *)&v16[1];
  v6 = *(float *)&v16[2];
  v7 = *(float *)v16;
  *(_DWORD *)(a1 + 72) = v16[0];
  *(float *)(a1 + 76) = v5;
  *(float *)(a1 + 80) = v6;
  v8 = sqrt((float)((float)((float)(v7 * v7) + (float)(v5 * v5)) + (float)(v6 * v6)));
  if ( v8 == 0.0 )
  {
    *(_DWORD *)(a1 + 80) = 0;
    *(_DWORD *)(a1 + 72) = 0;
    *(_DWORD *)(a1 + 76) = 1008981770;
  }
  *(_DWORD *)(a1 + 84) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a3 + 88))(a3, "MinParticlesPerSecond");
  v9 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a3 + 88))(a3, "MaxParticlesPerSecond");
  v11 = *(_DWORD *)(a1 + 84);
  *(_DWORD *)(a1 + 88) = v9;
  if ( !v11 )
    v11 = 1;
  if ( !v9 )
    v10 = 1;
  *(_DWORD *)(a1 + 84) = v11;
  if ( v9 )
  {
    if ( v9 > 0xC7 )
      v10 = 200;
    else
      v10 = v9;
  }
  else
  {
    *(_DWORD *)(a1 + 88) = v10;
  }
  if ( v11 > v10 )
    *(_DWORD *)(a1 + 84) = v10;
  else
    *(_DWORD *)(a1 + 84) = v11;
  *(_DWORD *)(a1 + 88) = v10;
  *(_DWORD *)(a1 + 92) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a3 + 292))(a3, "MinStartColor");
  *(_DWORD *)(a1 + 96) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a3 + 292))(a3, "MaxStartColor");
  *(_DWORD *)(a1 + 100) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a3 + 88))(a3, "MinLifeTime");
  *(_DWORD *)(a1 + 104) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a3 + 88))(a3, "MaxLifeTime");
  v12 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a3 + 88))(a3, "MaxAngleDegrees");
  v13 = *(_DWORD *)(a1 + 100);
  *(_DWORD *)(a1 + 108) = v12;
  if ( v13 )
  {
    v14 = *(_DWORD *)(a1 + 104);
    if ( v13 > v14 )
    {
      *(_DWORD *)(a1 + 104) = v13;
      v14 = v13;
      goto LABEL_19;
    }
  }
  else
  {
    v14 = *(_DWORD *)(a1 + 104);
    *(_DWORD *)(a1 + 100) = 0;
  }
  *(_DWORD *)(a1 + 104) = v14;
  if ( v14 >= v13 )
    v14 = v13;
LABEL_19:
  *(_DWORD *)(a1 + 100) = v14;
  return (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a3 + 40))(a3, "MaxAngleDegrees");
}


// ===== 6fc0b4 glitch::scene::CParticlePointEmitter::emitt(uint,uint,glitch::scene::SParticle *&) =====
bool __fastcall glitch::scene::CParticlePointEmitter::emitt(int a1, int a2, int a3, _DWORD *a4)
{
  int v5; // r8
  unsigned int v6; // r5
  glitch::os::Randomizer *v7; // r0
  unsigned int v8; // r8
  float v11; // r10
  _BOOL4 result; // r0
  int v13; // r1
  int v14; // r2
  int v15; // r3
  bool v16; // zf
  float v17; // r0
  double v18; // r0
  float v19; // r0
  double v20; // r0
  float v21; // r0
  double v22; // r0
  int v23; // r3
  int v24; // r1
  int v25; // r3
  int v26; // r5
  unsigned int v27; // r0
  unsigned int v28; // r1
  int v29; // r1
  int v30; // t0
  int v31; // r0
  int v32; // r12
  int v33; // r1
  int v34; // r2
  float v35; // r0
  float v36[3]; // [sp+8h] [bp-34h] BYREF
  _DWORD v37[3]; // [sp+14h] [bp-28h] BYREF
  float v38[3]; // [sp+20h] [bp-1Ch] BYREF
  int v39; // [sp+2Ch] [bp-10h] BYREF
  int v40; // [sp+30h] [bp-Ch]
  int v41; // [sp+34h] [bp-8h]

  v5 = *(_DWORD *)(a1 + 112);
  v6 = *(_DWORD *)(a1 + 84);
  v7 = *(glitch::os::Randomizer **)(a1 + 88);
  v8 = a3 + v5;
  *(_DWORD *)(a1 + 112) = v8;
  if ( v7 == (glitch::os::Randomizer *)v6 )
  {
    v11 = (float)v6;
  }
  else
  {
    v35 = (float)(glitch::os::Randomizer::rand(v7) % ((unsigned int)v7 - v6));
    v8 = *(_DWORD *)(a1 + 112);
    v11 = (float)v6 + v35;
  }
  result = (float)v8 > (float)(1000.0 / v11);
  if ( (float)v8 > (float)(1000.0 / v11) )
  {
    v13 = *(_DWORD *)(a1 + 72);
    v14 = *(_DWORD *)(a1 + 76);
    v15 = *(_DWORD *)(a1 + 80);
    v16 = *(_DWORD *)(a1 + 108) == 0;
    v17 = 0.0;
    *(_DWORD *)(a1 + 112) = 0;
    *(_DWORD *)(a1 + 28) = a2;
    *(_DWORD *)(a1 + 16) = v13;
    *(_DWORD *)(a1 + 20) = v14;
    *(_DWORD *)(a1 + 24) = v15;
    if ( !v16 )
    {
      v40 = v14;
      v41 = v15;
      v39 = v13;
      v18 = (double)(glitch::os::Randomizer::rand(nullptr) % (2 * *(_DWORD *)(a1 + 108)) - *(_DWORD *)(a1 + 108));
      memset(v38, 0, sizeof(v38));
      v19 = glitch::core::vector3d<float>::rotateXYBy((float *)&v39, v18, v38);
      v20 = (double)(glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v19)) % (2 * *(_DWORD *)(a1 + 108))
                   - *(_DWORD *)(a1 + 108));
      memset(v37, 0, sizeof(v37));
      v21 = glitch::core::vector3d<float>::rotateYZBy((int)&v39, v20, (int)v37);
      v22 = (double)(glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v21)) % (2 * *(_DWORD *)(a1 + 108))
                   - *(_DWORD *)(a1 + 108));
      memset(v36, 0, sizeof(v36));
      v17 = glitch::core::vector3d<float>::rotateXZBy((float *)&v39, v22, v36);
      v23 = v41;
      v24 = v39;
      *(_DWORD *)(a1 + 20) = v40;
      *(_DWORD *)(a1 + 24) = v23;
      *(_DWORD *)(a1 + 16) = v24;
    }
    v25 = *(_DWORD *)(a1 + 104);
    v26 = *(_DWORD *)(a1 + 100);
    if ( v25 == v26 )
    {
      *(_DWORD *)(a1 + 32) = a2 + v25;
    }
    else
    {
      v27 = glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v17));
      v28 = *(_DWORD *)(a1 + 104) - *(_DWORD *)(a1 + 100);
      v30 = v27 / v28;
      v29 = v27 % v28;
      v17 = *(float *)&v30;
      *(_DWORD *)(a1 + 32) = a2 + v26 + v29;
    }
    v31 = glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v17));
    *(_DWORD *)(a1 + 36) = glitch::video::SColor::getInterpolated(
                             (unsigned __int8 *)(a1 + 92),
                             (unsigned __int8 *)(a1 + 96),
                             (float)(v31 % 100) / 100.0);
    v32 = *(_DWORD *)(a1 + 36);
    v33 = *(_DWORD *)(a1 + 20);
    v34 = *(_DWORD *)(a1 + 24);
    *(_DWORD *)(a1 + 44) = *(_DWORD *)(a1 + 16);
    *(_DWORD *)(a1 + 40) = v32;
    *(_DWORD *)(a1 + 48) = v33;
    *(_DWORD *)(a1 + 52) = v34;
    result = 1;
    *a4 = a1 + 4;
  }
  return result;
}


// ===== 6fc340 glitch::scene::CParticlePointEmitter::~CParticlePointEmitter() =====
void __fastcall glitch::scene::CParticlePointEmitter::~CParticlePointEmitter(
        glitch::scene::CParticlePointEmitter *this)
{
  *(_DWORD *)this = off_98DFCC;
  *((_DWORD *)this + 30) = off_98DF84;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98DFCC;
  LC_API_FREE_0(this);
}


// ===== 6fc394 `virtual thunk to'glitch::scene::CParticlePointEmitter::~CParticlePointEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticlePointEmitter::~CParticlePointEmitter(
        glitch::scene::CParticlePointEmitter *this)
{
  glitch::scene::CParticlePointEmitter::~CParticlePointEmitter((glitch::scene::CParticlePointEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fc3a4 `virtual thunk to'glitch::scene::CParticlePointEmitter::~CParticlePointEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticlePointEmitter::~CParticlePointEmitter(
        glitch::scene::CParticlePointEmitter *this)
{
  glitch::scene::CParticlePointEmitter::~CParticlePointEmitter((glitch::scene::CParticlePointEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fc3b4 `virtual thunk to'glitch::scene::CParticlePointEmitter::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::scene::CParticlePointEmitter::serializeAttributes(_DWORD *a1, int a2)
{
  return glitch::scene::CParticlePointEmitter::serializeAttributes((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 16)), a2);
}


// ===== 6fc3c4 glitch::scene::IParticleRingEmitter::getType(void) =====
int __fastcall glitch::scene::IParticleRingEmitter::getType(glitch::scene::IParticleRingEmitter *this)
{
  return 5;
}


// ===== 6fc3cc glitch::scene::CParticleRingEmitter::setDirection(glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::scene::CParticleRingEmitter::setDirection(_DWORD *result, _DWORD *a2)
{
  result[9] = *a2;
  result[10] = a2[1];
  result[11] = a2[2];
  return result;
}


// ===== 6fc3e8 glitch::scene::CParticleRingEmitter::setMinParticlesPerSecond(uint) =====
int __fastcall glitch::scene::CParticleRingEmitter::setMinParticlesPerSecond(int this, unsigned int a2)
{
  *(_DWORD *)(this + 48) = a2;
  return this;
}


// ===== 6fc3f0 glitch::scene::CParticleRingEmitter::setMaxParticlesPerSecond(uint) =====
int __fastcall glitch::scene::CParticleRingEmitter::setMaxParticlesPerSecond(int this, unsigned int a2)
{
  *(_DWORD *)(this + 52) = a2;
  return this;
}


// ===== 6fc3f8 glitch::scene::CParticleRingEmitter::setMinStartColor(glitch::video::SColor const&) =====
void *__fastcall glitch::scene::CParticleRingEmitter::setMinStartColor(int a1, const void *a2)
{
  return memcpy((void *)(a1 + 56), a2, 4u);
}


// ===== 6fc40c glitch::scene::CParticleRingEmitter::setMaxStartColor(glitch::video::SColor const&) =====
void *__fastcall glitch::scene::CParticleRingEmitter::setMaxStartColor(int a1, const void *a2)
{
  return memcpy((void *)(a1 + 60), a2, 4u);
}


// ===== 6fc420 glitch::scene::CParticleRingEmitter::setCenter(glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::scene::CParticleRingEmitter::setCenter(_DWORD *result, _DWORD *a2)
{
  result[4] = *a2;
  result[5] = a2[1];
  result[6] = a2[2];
  return result;
}


// ===== 6fc43c glitch::scene::CParticleRingEmitter::setRadius(float) =====
int __fastcall glitch::scene::CParticleRingEmitter::setRadius(int this, float a2)
{
  *(float *)(this + 28) = a2;
  return this;
}


// ===== 6fc444 glitch::scene::CParticleRingEmitter::setRingThickness(float) =====
int __fastcall glitch::scene::CParticleRingEmitter::setRingThickness(int this, float a2)
{
  *(float *)(this + 32) = a2;
  return this;
}


// ===== 6fc44c glitch::scene::CParticleRingEmitter::getDirection(void) =====
char *__fastcall glitch::scene::CParticleRingEmitter::getDirection(glitch::scene::CParticleRingEmitter *this)
{
  return (char *)this + 36;
}


// ===== 6fc454 glitch::scene::CParticleRingEmitter::getMinParticlesPerSecond(void) =====
int __fastcall glitch::scene::CParticleRingEmitter::getMinParticlesPerSecond(glitch::scene::CParticleRingEmitter *this)
{
  return *((_DWORD *)this + 12);
}


// ===== 6fc45c glitch::scene::CParticleRingEmitter::getMaxParticlesPerSecond(void) =====
int __fastcall glitch::scene::CParticleRingEmitter::getMaxParticlesPerSecond(glitch::scene::CParticleRingEmitter *this)
{
  return *((_DWORD *)this + 13);
}


// ===== 6fc464 glitch::scene::CParticleRingEmitter::getMinStartColor(void) =====
char *__fastcall glitch::scene::CParticleRingEmitter::getMinStartColor(glitch::scene::CParticleRingEmitter *this)
{
  return (char *)this + 56;
}


// ===== 6fc46c glitch::scene::CParticleRingEmitter::getMaxStartColor(void) =====
char *__fastcall glitch::scene::CParticleRingEmitter::getMaxStartColor(glitch::scene::CParticleRingEmitter *this)
{
  return (char *)this + 60;
}


// ===== 6fc474 glitch::scene::CParticleRingEmitter::getCenter(void) =====
char *__fastcall glitch::scene::CParticleRingEmitter::getCenter(glitch::scene::CParticleRingEmitter *this)
{
  return (char *)this + 16;
}


// ===== 6fc47c glitch::scene::CParticleRingEmitter::getRadius(void) =====
int __fastcall glitch::scene::CParticleRingEmitter::getRadius(glitch::scene::CParticleRingEmitter *this)
{
  return *((_DWORD *)this + 7);
}


// ===== 6fc484 glitch::scene::CParticleRingEmitter::getRingThickness(void) =====
int __fastcall glitch::scene::CParticleRingEmitter::getRingThickness(glitch::scene::CParticleRingEmitter *this)
{
  return *((_DWORD *)this + 8);
}


// ===== 6fc48c glitch::scene::CParticleRingEmitter::getMinLifeTime(void) =====
int __fastcall glitch::scene::CParticleRingEmitter::getMinLifeTime(glitch::scene::CParticleRingEmitter *this)
{
  return *((_DWORD *)this + 16);
}


// ===== 6fc494 glitch::scene::CParticleRingEmitter::getMaxLifeTime(void) =====
int __fastcall glitch::scene::CParticleRingEmitter::getMaxLifeTime(glitch::scene::CParticleRingEmitter *this)
{
  return *((_DWORD *)this + 17);
}


// ===== 6fc49c glitch::scene::CParticleRingEmitter::getMaxAngleDegrees(void) =====
int __fastcall glitch::scene::CParticleRingEmitter::getMaxAngleDegrees(glitch::scene::CParticleRingEmitter *this)
{
  return *((_DWORD *)this + 20);
}


// ===== 6fc4a4 glitch::scene::IParticleRingEmitter::~IParticleRingEmitter() =====
void __fastcall glitch::scene::IParticleRingEmitter::~IParticleRingEmitter(glitch::scene::IParticleRingEmitter *this)
{
  ;
}


// ===== 6fc4a8 `virtual thunk to'glitch::scene::IParticleRingEmitter::~IParticleRingEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleRingEmitter::~IParticleRingEmitter(
        glitch::scene::IParticleRingEmitter *this)
{
  glitch::scene::IParticleRingEmitter::~IParticleRingEmitter((glitch::scene::IParticleRingEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fc4b8 `virtual thunk to'glitch::scene::IParticleRingEmitter::~IParticleRingEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleRingEmitter::~IParticleRingEmitter(
        glitch::scene::IParticleRingEmitter *this)
{
  glitch::scene::IParticleRingEmitter::~IParticleRingEmitter((glitch::scene::IParticleRingEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fc4c8 glitch::scene::CParticleRingEmitter::CParticleRingEmitter(glitch::core::vector3d<float> const&,float,float,glitch::core::vector3d<float> const&,uint,uint,glitch::video::SColor const&,glitch::video::SColor const&,uint,uint,int) =====
int *__fastcall glitch::scene::CParticleRingEmitter::CParticleRingEmitter(
        int *a1,
        int *a2,
        int *a3,
        int a4,
        int a5,
        int *a6,
        int a7,
        int a8,
        void *a9,
        void *a10,
        int a11,
        int a12,
        int a13)
{
  int v13; // r12
  int v16; // r2
  int v17; // r7
  int v18; // lr
  int v19; // r3

  v13 = a2[2];
  *a1 = v13;
  *(int *)((char *)a1 + *(_DWORD *)(v13 - 28)) = a2[3];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = a2[4];
  v16 = a2[1];
  *a1 = v16;
  *(int *)((char *)a1 + *(_DWORD *)(v16 - 28)) = a2[5];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = a2[6];
  v17 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v17 - 28)) = a2[7];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = a2[8];
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = *a3;
  a1[5] = a3[1];
  v18 = a3[2];
  a1[7] = a4;
  a1[6] = v18;
  a1[8] = a5;
  a1[9] = *a6;
  a1[10] = a6[1];
  v19 = a6[2];
  a1[12] = a7;
  a1[11] = v19;
  a1[13] = a8;
  memcpy(a1 + 14, a9, sizeof(int));
  memcpy(a1 + 15, a10, sizeof(int));
  a1[16] = a11;
  a1[19] = 0;
  a1[17] = a12;
  a1[18] = 0;
  a1[20] = a13;
  return a1;
}


// ===== 6fc5f4 glitch::scene::CParticleRingEmitter::CParticleRingEmitter(glitch::core::vector3d<float> const&,float,float,glitch::core::vector3d<float> const&,uint,uint,glitch::video::SColor const&,glitch::video::SColor const&,uint,uint,int) =====
_DWORD *__fastcall glitch::scene::CParticleRingEmitter::CParticleRingEmitter(
        _DWORD *a1,
        _DWORD *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6,
        int a7,
        void *a8,
        void *a9,
        int a10,
        int a11,
        int a12)
{
  int v13; // r12
  int v14; // r3

  *a1 = off_98E3CC;
  a1[23] = off_95B720;
  a1[24] = 1;
  *(int *)((char *)&dword_5C + (_DWORD)a1) = (int)off_98E3EC;
  *a1 = off_98E35C;
  *(int *)((char *)&dword_0 + (_DWORD)a1) = (int)off_98E35C;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = off_98E3B0;
  *a1 = off_98E2C4;
  *(int *)((char *)&dword_0 + (_DWORD)a1) = (int)off_98E2C4;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = off_98E330;
  *a1 = off_98E1F4;
  a1[1] = 0;
  a1[2] = 0;
  a1[23] = off_98E26C;
  a1[3] = 0;
  a1[4] = *a2;
  a1[5] = a2[1];
  v13 = a2[2];
  a1[7] = a3;
  a1[8] = a4;
  a1[6] = v13;
  a1[9] = *a5;
  a1[10] = a5[1];
  v14 = a5[2];
  a1[12] = a6;
  a1[11] = v14;
  a1[13] = a7;
  memcpy(a1 + 14, a8, sizeof(_DWORD));
  memcpy(a1 + 15, a9, sizeof(_DWORD));
  a1[16] = a10;
  a1[19] = 0;
  a1[17] = a11;
  a1[18] = 0;
  a1[20] = a12;
  return a1;
}


// ===== 6fc750 `global constructor keyed to'.._source_glitch_scene_CParticleRingEmitter.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CParticleRingEmitter.cpp()
{
  dword_9F8420 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F841C = 1056964608;
}


// ===== 6fc770 glitch::scene::CParticleRingEmitter::~CParticleRingEmitter() =====
void __fastcall glitch::scene::CParticleRingEmitter::~CParticleRingEmitter(glitch::scene::CParticleRingEmitter *this)
{
  void *v2; // r0

  v2 = *((void **)this + 1);
  *(_DWORD *)this = off_98E1F4;
  *((_DWORD *)this + 23) = off_98E26C;
  if ( v2 )
    GlitchFree(v2);
}


// ===== 6fc7b8 `virtual thunk to'glitch::scene::CParticleRingEmitter::~CParticleRingEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleRingEmitter::~CParticleRingEmitter(
        glitch::scene::CParticleRingEmitter *this)
{
  glitch::scene::CParticleRingEmitter::~CParticleRingEmitter((glitch::scene::CParticleRingEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fc7c8 `virtual thunk to'glitch::scene::CParticleRingEmitter::~CParticleRingEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleRingEmitter::~CParticleRingEmitter(
        glitch::scene::CParticleRingEmitter *this)
{
  glitch::scene::CParticleRingEmitter::~CParticleRingEmitter((glitch::scene::CParticleRingEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fc7d8 glitch::scene::CParticleRingEmitter::~CParticleRingEmitter() =====
void __fastcall glitch::scene::CParticleRingEmitter::~CParticleRingEmitter(glitch::scene::CParticleRingEmitter *this)
{
  glitch::scene::CParticleRingEmitter::~CParticleRingEmitter(this);
  LC_API_FREE_0(this);
}


// ===== 6fc7f4 `virtual thunk to'glitch::scene::CParticleRingEmitter::~CParticleRingEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleRingEmitter::~CParticleRingEmitter(
        glitch::scene::CParticleRingEmitter *this)
{
  glitch::scene::CParticleRingEmitter::~CParticleRingEmitter((glitch::scene::CParticleRingEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fc804 `virtual thunk to'glitch::scene::CParticleRingEmitter::~CParticleRingEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleRingEmitter::~CParticleRingEmitter(
        glitch::scene::CParticleRingEmitter *this)
{
  glitch::scene::CParticleRingEmitter::~CParticleRingEmitter((glitch::scene::CParticleRingEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fc814 glitch::scene::CParticleRingEmitter::emitt(uint,uint,glitch::scene::SParticle *&) =====
int __fastcall glitch::scene::CParticleRingEmitter::emitt(int a1, int a2, int a3, _DWORD *a4)
{
  int v5; // r6
  unsigned int v6; // r5
  glitch::os::Randomizer *v7; // r0
  unsigned int v8; // r6
  float v10; // r1
  float v11; // r5
  int result; // r0
  _DWORD *v13; // r0
  _DWORD *v14; // r2
  unsigned int v15; // r0
  int v16; // r5
  float v17; // r0
  float v18; // r9
  int v19; // r0
  float v20; // r0
  float v21; // r9
  int v22; // r3
  int v23; // r0
  float v24; // r0
  int v25; // r1
  int v26; // r2
  int v27; // r3
  double v28; // r0
  float v29; // r0
  double v30; // r0
  float v31; // r0
  double v32; // r0
  int v33; // r3
  int v34; // r9
  unsigned int v35; // r0
  unsigned int v36; // r1
  int v37; // r1
  int v38; // t0
  int v39; // r0
  float v40; // r0
  unsigned int v41; // [sp+14h] [bp-B0h]
  void **v42; // [sp+18h] [bp-ACh]
  float v44; // [sp+28h] [bp-9Ch] BYREF
  int v45; // [sp+2Ch] [bp-98h]
  float v46; // [sp+30h] [bp-94h]
  int v47; // [sp+34h] [bp-90h]
  int v48; // [sp+38h] [bp-8Ch]
  int v49; // [sp+3Ch] [bp-88h]
  int v50; // [sp+40h] [bp-84h]
  int v51; // [sp+44h] [bp-80h]
  int Interpolated; // [sp+48h] [bp-7Ch]
  int v53; // [sp+4Ch] [bp-78h]
  int v54; // [sp+50h] [bp-74h]
  int v55; // [sp+54h] [bp-70h]
  int v56; // [sp+58h] [bp-6Ch]
  _DWORD v57[17]; // [sp+6Ch] [bp-58h] BYREF
  int v58; // [sp+B0h] [bp-14h] BYREF
  int v59; // [sp+B4h] [bp-10h]
  int v60; // [sp+B8h] [bp-Ch]

  v5 = *(_DWORD *)(a1 + 72);
  v6 = *(_DWORD *)(a1 + 48);
  v7 = *(glitch::os::Randomizer **)(a1 + 52);
  v8 = a3 + v5;
  *(_DWORD *)(a1 + 72) = v8;
  if ( v7 == (glitch::os::Randomizer *)v6 )
  {
    v10 = (float)v6;
  }
  else
  {
    v40 = (float)(glitch::os::Randomizer::rand(v7) % ((unsigned int)v7 - v6));
    v8 = *(_DWORD *)(a1 + 72);
    v10 = (float)v6 + v40;
  }
  v11 = 1000.0 / v10;
  result = (float)v8 > (float)(1000.0 / v10);
  if ( (float)v8 > (float)(1000.0 / v10) )
  {
    v13 = *(_DWORD **)(a1 + 8);
    v14 = *(_DWORD **)(a1 + 4);
    v42 = (void **)(a1 + 4);
    memset(v57, 0, 24);
    memset(&v57[10], 0, 12);
    if ( -252645135 * (v13 - v14) )
    {
      if ( v13 != v14 )
        *(_DWORD *)(a1 + 8) = std::priv::__copy<glitch::scene::SParticle *,glitch::scene::SParticle *,int>(
                                v13,
                                (int)v13,
                                v14);
    }
    else
    {
      std::vector<glitch::scene::SParticle,glitch::core::SAllocator<glitch::scene::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        v42,
        v13,
        0,
        v57);
    }
    v15 = (unsigned int)(float)((float)((float)*(unsigned int *)(a1 + 72) / v11) + 0.5);
    v16 = 0;
    if ( v15 >= 2 * *(_DWORD *)(a1 + 52) )
      v15 = 2 * *(_DWORD *)(a1 + 52);
    v41 = v15;
    v56 = 0;
    *(_DWORD *)(a1 + 72) = 0;
    v44 = 0.0;
    v45 = 0;
    v46 = 0.0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v54 = 0;
    v55 = 0;
    if ( v15 )
    {
      do
      {
        v17 = (float)glitch::os::Randomizer::rand((glitch::os::Randomizer *)v15);
        v18 = fmodf(v17, (float)(*(float *)(a1 + 32) * 0.5) * 1000.0) * 0.001;
        v19 = glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v18));
        if ( (((_BYTE)v19 + (v19 < 0)) & 1) != (unsigned int)v19 >> 31 )
          LODWORD(v18) += 0x80000000;
        v20 = v18 + *(float *)(a1 + 28);
        v21 = v20 + *(float *)(a1 + 24);
        v22 = *(_DWORD *)(a1 + 20);
        v44 = *(float *)(a1 + 16) + v20;
        v46 = v21;
        v45 = v22;
        v23 = glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v44));
        glitch::core::vector3d<float>::rotateXZBy(&v44, (float)((float)(v23 % 3600) * 0.1), (float *)(a1 + 16));
        v24 = *(float *)(a1 + 80);
        v25 = *(_DWORD *)(a1 + 36);
        v26 = *(_DWORD *)(a1 + 40);
        v27 = *(_DWORD *)(a1 + 44);
        v50 = a2;
        v47 = v25;
        v48 = v26;
        v49 = v27;
        if ( v24 != 0.0 )
        {
          v59 = v26;
          v60 = v27;
          v58 = v25;
          v28 = (double)(glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v24))
                       % (2 * *(_DWORD *)(a1 + 80))
                       - *(_DWORD *)(a1 + 80));
          v29 = glitch::core::vector3d<float>::rotateXYBy((float *)&v58, v28, (float *)(a1 + 16));
          v30 = (double)(glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v29))
                       % (2 * *(_DWORD *)(a1 + 80))
                       - *(_DWORD *)(a1 + 80));
          v31 = glitch::core::vector3d<float>::rotateYZBy((int)&v58, v30, a1 + 16);
          v32 = (double)(glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v31))
                       % (2 * *(_DWORD *)(a1 + 80))
                       - *(_DWORD *)(a1 + 80));
          v24 = glitch::core::vector3d<float>::rotateXZBy((float *)&v58, v32, (float *)(a1 + 16));
          v47 = v58;
          v48 = v59;
          v49 = v60;
        }
        v33 = *(_DWORD *)(a1 + 68);
        v34 = *(_DWORD *)(a1 + 64);
        if ( v33 == v34 )
        {
          v51 = a2 + v33;
        }
        else
        {
          v35 = glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v24));
          v36 = *(_DWORD *)(a1 + 68) - *(_DWORD *)(a1 + 64);
          v38 = v35 / v36;
          v37 = v35 % v36;
          v24 = *(float *)&v38;
          v51 = a2 + v34 + v37;
        }
        v39 = glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v24));
        ++v16;
        Interpolated = glitch::video::SColor::getInterpolated(
                         (unsigned __int8 *)(a1 + 56),
                         (unsigned __int8 *)(a1 + 60),
                         (float)(v39 % 100) / 100.0);
        v53 = Interpolated;
        v54 = v47;
        v55 = v48;
        v56 = v49;
        std::vector<glitch::scene::SParticle,glitch::core::SAllocator<glitch::scene::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
          (int)v42,
          &v44);
      }
      while ( v16 != v41 );
    }
    *a4 = *(_DWORD *)(a1 + 4);
    return -252645135 * ((*(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4)) >> 2);
  }
  return result;
}


// ===== 6fcc8c glitch::scene::IParticleRingEmitter::~IParticleRingEmitter() =====
void __fastcall glitch::scene::IParticleRingEmitter::~IParticleRingEmitter(glitch::scene::IParticleRingEmitter *this)
{
  *(_DWORD *)this = off_98E13C;
  *((_DWORD *)this + 1) = off_98E0F0;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98E13C;
  LC_API_FREE_0(this);
}


// ===== 6fcce0 `virtual thunk to'glitch::scene::IParticleRingEmitter::~IParticleRingEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleRingEmitter::~IParticleRingEmitter(
        glitch::scene::IParticleRingEmitter *this)
{
  glitch::scene::IParticleRingEmitter::~IParticleRingEmitter((glitch::scene::IParticleRingEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fccf0 `virtual thunk to'glitch::scene::IParticleRingEmitter::~IParticleRingEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleRingEmitter::~IParticleRingEmitter(
        glitch::scene::IParticleRingEmitter *this)
{
  glitch::scene::IParticleRingEmitter::~IParticleRingEmitter((glitch::scene::IParticleRingEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fcd00 glitch::scene::IParticleRotationAffector::getType(void) =====
int __fastcall glitch::scene::IParticleRotationAffector::getType(glitch::scene::IParticleRotationAffector *this)
{
  return 4;
}


// ===== 6fcd08 glitch::scene::CParticleRotationAffector::setPivotPoint(glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::scene::CParticleRotationAffector::setPivotPoint(_DWORD *result, _DWORD *a2)
{
  result[2] = *a2;
  result[3] = a2[1];
  result[4] = a2[2];
  return result;
}


// ===== 6fcd24 glitch::scene::CParticleRotationAffector::setSpeed(glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::scene::CParticleRotationAffector::setSpeed(_DWORD *result, _DWORD *a2)
{
  result[5] = *a2;
  result[6] = a2[1];
  result[7] = a2[2];
  return result;
}


// ===== 6fcd40 glitch::scene::CParticleRotationAffector::getPivotPoint(void) =====
char *__fastcall glitch::scene::CParticleRotationAffector::getPivotPoint(
        glitch::scene::CParticleRotationAffector *this)
{
  return (char *)this + 8;
}


// ===== 6fcd48 glitch::scene::CParticleRotationAffector::getSpeed(void) =====
char *__fastcall glitch::scene::CParticleRotationAffector::getSpeed(glitch::scene::CParticleRotationAffector *this)
{
  return (char *)this + 20;
}


// ===== 6fcd50 glitch::scene::IParticleRotationAffector::~IParticleRotationAffector() =====
void __fastcall glitch::scene::IParticleRotationAffector::~IParticleRotationAffector(
        glitch::scene::IParticleRotationAffector *this)
{
  ;
}


// ===== 6fcd54 `virtual thunk to'glitch::scene::IParticleRotationAffector::~IParticleRotationAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleRotationAffector::~IParticleRotationAffector(
        glitch::scene::IParticleRotationAffector *this)
{
  glitch::scene::IParticleRotationAffector::~IParticleRotationAffector((glitch::scene::IParticleRotationAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fcd64 `virtual thunk to'glitch::scene::IParticleRotationAffector::~IParticleRotationAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleRotationAffector::~IParticleRotationAffector(
        glitch::scene::IParticleRotationAffector *this)
{
  glitch::scene::IParticleRotationAffector::~IParticleRotationAffector((glitch::scene::IParticleRotationAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fcd74 glitch::scene::CParticleRotationAffector::CParticleRotationAffector(glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&) =====
int __fastcall glitch::scene::CParticleRotationAffector::CParticleRotationAffector(
        int result,
        int *a2,
        _DWORD *a3,
        _DWORD *a4)
{
  int v4; // r6
  int v5; // r5
  int v6; // r4
  int v7; // r3

  v4 = a2[2];
  *(_DWORD *)result = v4;
  *(_DWORD *)(result + *(_DWORD *)(v4 - 28)) = a2[3];
  *(_DWORD *)(result + *(_DWORD *)(*(_DWORD *)result - 12)) = a2[4];
  *(_BYTE *)(result + 4) = 1;
  v5 = a2[1];
  *(_DWORD *)result = v5;
  *(_DWORD *)(result + *(_DWORD *)(v5 - 28)) = a2[5];
  *(_DWORD *)(result + *(_DWORD *)(*(_DWORD *)result - 12)) = a2[6];
  v6 = *a2;
  *(_DWORD *)result = *a2;
  *(_DWORD *)(result + *(_DWORD *)(v6 - 28)) = a2[7];
  *(_DWORD *)(result + *(_DWORD *)(*(_DWORD *)result - 12)) = a2[8];
  *(_DWORD *)(result + 8) = *a4;
  *(_DWORD *)(result + 12) = a4[1];
  *(_DWORD *)(result + 16) = a4[2];
  *(_DWORD *)(result + 20) = *a3;
  *(_DWORD *)(result + 24) = a3[1];
  v7 = a3[2];
  *(_DWORD *)(result + 32) = 0;
  *(_DWORD *)(result + 28) = v7;
  return result;
}


// ===== 6fce34 glitch::scene::CParticleRotationAffector::CParticleRotationAffector(glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&) =====
int __fastcall glitch::scene::CParticleRotationAffector::CParticleRotationAffector(int result, _DWORD *a2, _DWORD *a3)
{
  int v3; // r2

  *(_DWORD *)(result + 36) = off_95B720;
  *(_DWORD *)result = off_98E69C;
  *(_DWORD *)(result + 40) = 1;
  *(int *)((char *)&dword_24 + result) = (int)off_98E6BC;
  *(_DWORD *)result = off_98E64C;
  *(int *)((char *)&dword_0 + result) = (int)off_98E64C;
  *(_DWORD *)(result + *(_DWORD *)(*(_DWORD *)result - 12)) = off_98E680;
  *(_DWORD *)result = off_98E5DC;
  *(_BYTE *)(result + 4) = 1;
  *(int *)((char *)&dword_0 + result) = (int)off_98E5DC;
  *(_DWORD *)(result + *(_DWORD *)(*(_DWORD *)result - 12)) = off_98E620;
  *(_DWORD *)result = off_98E53C;
  *(_DWORD *)(result + 36) = off_98E580;
  *(_DWORD *)(result + 8) = *a3;
  *(_DWORD *)(result + 12) = a3[1];
  *(_DWORD *)(result + 16) = a3[2];
  *(_DWORD *)(result + 20) = *a2;
  *(_DWORD *)(result + 24) = a2[1];
  v3 = a2[2];
  *(_DWORD *)(result + 32) = 0;
  *(_DWORD *)(result + 28) = v3;
  return result;
}


// ===== 6fcf28 glitch::scene::CParticleRotationAffector::~CParticleRotationAffector() =====
void __fastcall glitch::scene::CParticleRotationAffector::~CParticleRotationAffector(
        glitch::scene::CParticleRotationAffector *this)
{
  ;
}


// ===== 6fcf2c `virtual thunk to'glitch::scene::CParticleRotationAffector::~CParticleRotationAffector() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleRotationAffector::~CParticleRotationAffector(
        glitch::scene::CParticleRotationAffector *this)
{
  glitch::scene::CParticleRotationAffector::~CParticleRotationAffector((glitch::scene::CParticleRotationAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fcf3c `virtual thunk to'glitch::scene::CParticleRotationAffector::~CParticleRotationAffector() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleRotationAffector::~CParticleRotationAffector(
        glitch::scene::CParticleRotationAffector *this)
{
  glitch::scene::CParticleRotationAffector::~CParticleRotationAffector((glitch::scene::CParticleRotationAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fcf4c `global constructor keyed to'.._source_glitch_scene_CParticleRotationAffector.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CParticleRotationAffector.cpp()
{
  dword_9F842C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F8428 = 1056964608;
}


// ===== 6fcf6c glitch::scene::CParticleRotationAffector::affect(uint,glitch::scene::SParticle *,uint) =====
float __fastcall glitch::scene::CParticleRotationAffector::affect(int a1, int a2, float *a3, int a4)
{
  float result; // r0
  int v8; // r3
  float v9; // r8
  int v10; // r5
  float v11; // r9
  float v12; // r9

  result = *(float *)(a1 + 32);
  if ( result == 0.0 )
  {
    *(_DWORD *)(a1 + 32) = a2;
    return result;
  }
  result = (float)(unsigned int)(a2 - LODWORD(result)) / 1000.0;
  v8 = *(unsigned __int8 *)(a1 + 4);
  v9 = result;
  *(_DWORD *)(a1 + 32) = a2;
  if ( v8 && a4 )
  {
    v10 = 0;
    do
    {
      while ( 1 )
      {
        ++v10;
        if ( *(float *)(a1 + 20) != 0.0 )
          break;
        v11 = *(float *)(a1 + 24);
        if ( v11 != 0.0 )
          goto LABEL_11;
LABEL_7:
        v12 = *(float *)(a1 + 28);
        LODWORD(result) = v12 == 0.0;
        if ( v12 == 0.0 )
          goto LABEL_8;
LABEL_12:
        result = glitch::core::vector3d<float>::rotateXYBy(a3, (float)(v9 * v12), (float *)(a1 + 8));
        a3 += 17;
        if ( v10 == a4 )
          return result;
      }
      glitch::core::vector3d<float>::rotateYZBy((int)a3, (float)(v9 * *(float *)(a1 + 20)), a1 + 8);
      v11 = *(float *)(a1 + 24);
      if ( v11 == 0.0 )
        goto LABEL_7;
LABEL_11:
      glitch::core::vector3d<float>::rotateXZBy(a3, (float)(v9 * v11), (float *)(a1 + 8));
      v12 = *(float *)(a1 + 28);
      LODWORD(result) = v12 == 0.0;
      if ( v12 != 0.0 )
        goto LABEL_12;
LABEL_8:
      a3 += 17;
    }
    while ( v10 != a4 );
  }
  return result;
}


// ===== 6fd0d8 glitch::scene::IParticleRotationAffector::~IParticleRotationAffector() =====
void __fastcall glitch::scene::IParticleRotationAffector::~IParticleRotationAffector(
        glitch::scene::IParticleRotationAffector *this)
{
  *(_DWORD *)this = off_98E4A4;
  *((_DWORD *)this + 2) = off_98E458;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98E4A4;
  LC_API_FREE_0(this);
}


// ===== 6fd12c `virtual thunk to'glitch::scene::IParticleRotationAffector::~IParticleRotationAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleRotationAffector::~IParticleRotationAffector(
        glitch::scene::IParticleRotationAffector *this)
{
  glitch::scene::IParticleRotationAffector::~IParticleRotationAffector((glitch::scene::IParticleRotationAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fd13c `virtual thunk to'glitch::scene::IParticleRotationAffector::~IParticleRotationAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleRotationAffector::~IParticleRotationAffector(
        glitch::scene::IParticleRotationAffector *this)
{
  glitch::scene::IParticleRotationAffector::~IParticleRotationAffector((glitch::scene::IParticleRotationAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fd14c glitch::scene::CParticleRotationAffector::~CParticleRotationAffector() =====
void __fastcall glitch::scene::CParticleRotationAffector::~CParticleRotationAffector(
        glitch::scene::CParticleRotationAffector *this)
{
  *(_DWORD *)this = off_98E5DC;
  *((_DWORD *)this + 9) = off_98E580;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98E5DC;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_98E620;
  *(_DWORD *)this = off_98E64C;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98E64C;
  LC_API_FREE_0(this);
}


// ===== 6fd1c4 `virtual thunk to'glitch::scene::CParticleRotationAffector::~CParticleRotationAffector() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleRotationAffector::~CParticleRotationAffector(
        glitch::scene::CParticleRotationAffector *this)
{
  glitch::scene::CParticleRotationAffector::~CParticleRotationAffector((glitch::scene::CParticleRotationAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fd1d4 `virtual thunk to'glitch::scene::CParticleRotationAffector::~CParticleRotationAffector() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleRotationAffector::~CParticleRotationAffector(
        glitch::scene::CParticleRotationAffector *this)
{
  glitch::scene::CParticleRotationAffector::~CParticleRotationAffector((glitch::scene::CParticleRotationAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fd1e4 glitch::scene::IParticleSizeAffector::getType(void) =====
int __fastcall glitch::scene::IParticleSizeAffector::getType(glitch::scene::IParticleSizeAffector *this)
{
  return 5;
}


// ===== 6fd1ec glitch::scene::CParticleSizeAffector::setTargetSize(float) =====
int __fastcall glitch::scene::CParticleSizeAffector::setTargetSize(int this, float a2)
{
  *(float *)(this + 8) = a2;
  return this;
}


// ===== 6fd1f4 glitch::scene::CParticleSizeAffector::setVariation(float) =====
int __fastcall glitch::scene::CParticleSizeAffector::setVariation(int this, float a2)
{
  *(float *)(this + 12) = a2;
  return this;
}


// ===== 6fd1fc glitch::scene::CParticleSizeAffector::setGrowForTime(float) =====
int __fastcall glitch::scene::CParticleSizeAffector::setGrowForTime(int this, float a2)
{
  *(float *)(this + 16) = a2;
  return this;
}


// ===== 6fd204 glitch::scene::CParticleSizeAffector::setFadeForTime(float) =====
int __fastcall glitch::scene::CParticleSizeAffector::setFadeForTime(int this, float a2)
{
  *(float *)(this + 20) = a2;
  return this;
}


// ===== 6fd20c glitch::scene::CParticleSizeAffector::getTargetSize(void) =====
int __fastcall glitch::scene::CParticleSizeAffector::getTargetSize(glitch::scene::CParticleSizeAffector *this)
{
  return *((_DWORD *)this + 2);
}


// ===== 6fd214 glitch::scene::CParticleSizeAffector::getVariation(void) =====
int __fastcall glitch::scene::CParticleSizeAffector::getVariation(glitch::scene::CParticleSizeAffector *this)
{
  return *((_DWORD *)this + 3);
}


// ===== 6fd21c glitch::scene::CParticleSizeAffector::getGrowForTime(void) =====
int __fastcall glitch::scene::CParticleSizeAffector::getGrowForTime(glitch::scene::CParticleSizeAffector *this)
{
  return *((_DWORD *)this + 4);
}


// ===== 6fd224 glitch::scene::CParticleSizeAffector::getFadeForTime(void) =====
int __fastcall glitch::scene::CParticleSizeAffector::getFadeForTime(glitch::scene::CParticleSizeAffector *this)
{
  return *((_DWORD *)this + 5);
}


// ===== 6fd22c glitch::scene::IParticleSizeAffector::~IParticleSizeAffector() =====
void __fastcall glitch::scene::IParticleSizeAffector::~IParticleSizeAffector(
        glitch::scene::IParticleSizeAffector *this)
{
  ;
}


// ===== 6fd230 `virtual thunk to'glitch::scene::IParticleSizeAffector::~IParticleSizeAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleSizeAffector::~IParticleSizeAffector(
        glitch::scene::IParticleSizeAffector *this)
{
  glitch::scene::IParticleSizeAffector::~IParticleSizeAffector((glitch::scene::IParticleSizeAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fd240 `virtual thunk to'glitch::scene::IParticleSizeAffector::~IParticleSizeAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleSizeAffector::~IParticleSizeAffector(
        glitch::scene::IParticleSizeAffector *this)
{
  glitch::scene::IParticleSizeAffector::~IParticleSizeAffector((glitch::scene::IParticleSizeAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fd250 glitch::scene::CParticleSizeAffector::CParticleSizeAffector(float,float,uint,uint) =====
glitch::scene::CParticleSizeAffector *__fastcall glitch::scene::CParticleSizeAffector::CParticleSizeAffector(
        glitch::scene::CParticleSizeAffector *this,
        int *a2,
        float a3,
        unsigned int a4,
        unsigned int a5,
        unsigned int a6)
{
  int v7; // lr
  int v8; // r12
  int v9; // r0

  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 2) = 0;
  v7 = a2[2];
  *(_DWORD *)this = v7;
  *(_DWORD *)((char *)this + *(_DWORD *)(v7 - 28)) = a2[3];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[4];
  *((_BYTE *)this + 4) = 1;
  v8 = a2[1];
  *(_DWORD *)this = v8;
  *(_DWORD *)((char *)this + *(_DWORD *)(v8 - 28)) = a2[5];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[6];
  v9 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v9 - 28)) = a2[7];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[8];
  *((float *)this + 2) = a3;
  *((_DWORD *)this + 3) = a4;
  *((float *)this + 4) = (float)a5;
  *((float *)this + 5) = (float)a6;
  return this;
}


// ===== 6fd310 glitch::scene::CParticleSizeAffector::CParticleSizeAffector(float,float,uint,uint) =====
int __fastcall glitch::scene::CParticleSizeAffector::CParticleSizeAffector(
        int this,
        float a2,
        float a3,
        unsigned int a4,
        unsigned int a5)
{
  *(_DWORD *)this = off_98E99C;
  *(_DWORD *)(this + 24) = off_95B720;
  *(_DWORD *)(this + 28) = 1;
  *(int (**)())((char *)&off_18 + this) = (int (*)())off_98E9BC;
  *(_DWORD *)this = off_98E94C;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)(this + 12) = 0;
  *(_DWORD *)(this + 8) = 0;
  *(int *)((char *)&dword_0 + this) = (int)off_98E94C;
  *(_DWORD *)(this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_98E980;
  *(_DWORD *)this = off_98E8CC;
  *(_BYTE *)(this + 4) = 1;
  *(int *)((char *)&dword_0 + this) = (int)off_98E8CC;
  *(_DWORD *)(this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_98E920;
  *(_DWORD *)this = off_98E81C;
  *(float *)(this + 8) = a2;
  *(float *)(this + 12) = a3;
  *(_DWORD *)(this + 24) = off_98E870;
  *(float *)(this + 16) = (float)a4;
  *(float *)(this + 20) = (float)a5;
  return this;
}


// ===== 6fd400 glitch::scene::CParticleSizeAffector::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CParticleSizeAffector::serializeAttributes(_DWORD *a1, int a2)
{
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "TargetSize", a1[2], 0);
  (*(void (__fastcall **)(int, char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "Variation", a1[3], 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "GrowForTime", a1[4], 0);
  return (*(int (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "FadeForTime", a1[5], 0);
}


// ===== 6fd4a0 glitch::scene::CParticleSizeAffector::~CParticleSizeAffector() =====
void __fastcall glitch::scene::CParticleSizeAffector::~CParticleSizeAffector(
        glitch::scene::CParticleSizeAffector *this)
{
  ;
}


// ===== 6fd4a4 `virtual thunk to'glitch::scene::CParticleSizeAffector::~CParticleSizeAffector() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleSizeAffector::~CParticleSizeAffector(
        glitch::scene::CParticleSizeAffector *this)
{
  glitch::scene::CParticleSizeAffector::~CParticleSizeAffector((glitch::scene::CParticleSizeAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fd4b4 `virtual thunk to'glitch::scene::CParticleSizeAffector::~CParticleSizeAffector() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleSizeAffector::~CParticleSizeAffector(
        glitch::scene::CParticleSizeAffector *this)
{
  glitch::scene::CParticleSizeAffector::~CParticleSizeAffector((glitch::scene::CParticleSizeAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fd4c4 `global constructor keyed to'.._source_glitch_scene_CParticleSizeAffector.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CParticleSizeAffector.cpp()
{
  dword_9F8438 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F8434 = 1056964608;
}


// ===== 6fd4e4 glitch::scene::CParticleSizeAffector::deserializeAttributes(int,glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CParticleSizeAffector::deserializeAttributes(_DWORD *a1, int a2, int a3)
{
  const char *v6; // r0
  int v8; // r0
  const char *v9; // r0
  int v10; // r0
  const char *v11; // r0
  int v12; // r0
  const char *v13; // r0
  int v14; // r0

  v6 = (const char *)(*(int (__fastcall **)(int))(*(_DWORD *)a3 + 16))(a3);
  if ( v6 )
  {
    if ( !LC_API_STRCMP_0(v6, "TargetSize") )
    {
      v8 = (*(int (__fastcall **)(int, int))(*(_DWORD *)a3 + 116))(a3, a2++);
      a1[2] = v8;
      v9 = (const char *)(*(int (__fastcall **)(int, int))(*(_DWORD *)a3 + 16))(a3, a2);
      if ( v9 )
      {
        if ( !LC_API_STRCMP_0(v9, "Variation") )
        {
          v10 = (*(int (__fastcall **)(int, int))(*(_DWORD *)a3 + 116))(a3, a2++);
          a1[3] = v10;
          v11 = (const char *)(*(int (__fastcall **)(int, int))(*(_DWORD *)a3 + 16))(a3, a2);
          if ( v11 )
          {
            if ( !LC_API_STRCMP_0(v11, "GrowForTime") )
            {
              v12 = (*(int (__fastcall **)(int, int))(*(_DWORD *)a3 + 116))(a3, a2++);
              a1[4] = v12;
              v13 = (const char *)(*(int (__fastcall **)(int, int))(*(_DWORD *)a3 + 16))(a3, a2);
              if ( v13 )
              {
                if ( !LC_API_STRCMP_0(v13, "FadeForTime") )
                {
                  v14 = (*(int (__fastcall **)(int, int))(*(_DWORD *)a3 + 116))(a3, a2++);
                  a1[5] = v14;
                }
              }
            }
          }
        }
      }
    }
  }
  return a2;
}


// ===== 6fd63c glitch::scene::CParticleSizeAffector::affect(uint,glitch::scene::SParticle *,uint) =====
float __fastcall glitch::scene::CParticleSizeAffector::affect(int a1, int a2, int a3, int a4)
{
  float result; // r0
  int i; // r7
  float v10; // r0
  float v11; // r8
  float v12; // r10
  float v13; // r8
  float v14; // r1
  float v15; // r8

  LODWORD(result) = *(unsigned __int8 *)(a1 + 4);
  if ( result != 0.0 && a4 )
  {
    for ( i = 0; i != a4; ++i )
    {
      if ( *(_DWORD *)(a3 + 24) == a2 )
      {
        if ( *(float *)(a1 + 12) > 0.0 )
        {
          v15 = *(float *)(a1 + 12);
          v14 = (float)(glitch::os::Randomizer::rand((glitch::os::Randomizer *)(v15 > 0.0)) % (int)(float)(v15 * 100.0))
              / 100.0;
          *(float *)(a3 + 56) = v14;
        }
        else
        {
          *(_DWORD *)(a3 + 56) = 0;
          v14 = 0.0;
        }
      }
      else
      {
        v14 = *(float *)(a3 + 56);
      }
      v10 = *(float *)(a1 + 8) + (float)((float)(*(float *)(a1 + 8) * v14) / -100.0);
      *(float *)(a3 + 52) = v10;
      v11 = *(float *)(a1 + 16);
      v12 = v10;
      if ( v11 > 0.0 && v11 > (float)(unsigned int)(a2 - *(_DWORD *)(a3 + 24)) )
        *(float *)(a3 + 52) = v10 * (float)((float)(unsigned int)(a2 - *(_DWORD *)(a3 + 24)) / v11);
      v13 = *(float *)(a1 + 20);
      LODWORD(result) = v13 > 0.0;
      if ( v13 > 0.0 )
      {
        LODWORD(result) = v13 > (float)(unsigned int)(*(_DWORD *)(a3 + 28) - a2);
        if ( v13 > (float)(unsigned int)(*(_DWORD *)(a3 + 28) - a2) )
        {
          result = v12 * (float)((float)(unsigned int)(*(_DWORD *)(a3 + 28) - a2) / v13);
          *(float *)(a3 + 52) = result;
        }
      }
      a3 += 68;
    }
  }
  return result;
}


// ===== 6fd7d8 glitch::scene::IParticleSizeAffector::~IParticleSizeAffector() =====
void __fastcall glitch::scene::IParticleSizeAffector::~IParticleSizeAffector(
        glitch::scene::IParticleSizeAffector *this)
{
  *(_DWORD *)this = off_98E784;
  *((_DWORD *)this + 2) = off_98E738;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98E784;
  LC_API_FREE_0(this);
}


// ===== 6fd82c `virtual thunk to'glitch::scene::IParticleSizeAffector::~IParticleSizeAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleSizeAffector::~IParticleSizeAffector(
        glitch::scene::IParticleSizeAffector *this)
{
  glitch::scene::IParticleSizeAffector::~IParticleSizeAffector((glitch::scene::IParticleSizeAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fd83c `virtual thunk to'glitch::scene::IParticleSizeAffector::~IParticleSizeAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleSizeAffector::~IParticleSizeAffector(
        glitch::scene::IParticleSizeAffector *this)
{
  glitch::scene::IParticleSizeAffector::~IParticleSizeAffector((glitch::scene::IParticleSizeAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fd84c glitch::scene::CParticleSizeAffector::~CParticleSizeAffector() =====
void __fastcall glitch::scene::CParticleSizeAffector::~CParticleSizeAffector(
        glitch::scene::CParticleSizeAffector *this)
{
  *(_DWORD *)this = off_98E8CC;
  *((_DWORD *)this + 6) = off_98E870;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98E8CC;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_98E920;
  *(_DWORD *)this = off_98E94C;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98E94C;
  LC_API_FREE_0(this);
}


// ===== 6fd8c4 `virtual thunk to'glitch::scene::CParticleSizeAffector::~CParticleSizeAffector() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleSizeAffector::~CParticleSizeAffector(
        glitch::scene::CParticleSizeAffector *this)
{
  glitch::scene::CParticleSizeAffector::~CParticleSizeAffector((glitch::scene::CParticleSizeAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fd8d4 `virtual thunk to'glitch::scene::CParticleSizeAffector::~CParticleSizeAffector() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleSizeAffector::~CParticleSizeAffector(
        glitch::scene::CParticleSizeAffector *this)
{
  glitch::scene::CParticleSizeAffector::~CParticleSizeAffector((glitch::scene::CParticleSizeAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fd8e4 `virtual thunk to'glitch::scene::CParticleSizeAffector::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::scene::CParticleSizeAffector::serializeAttributes(_DWORD *a1, int a2)
{
  return glitch::scene::CParticleSizeAffector::serializeAttributes((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 16)), a2);
}


// ===== 6fd8f4 glitch::scene::IParticleSphereEmitter::getType(void) =====
int __fastcall glitch::scene::IParticleSphereEmitter::getType(glitch::scene::IParticleSphereEmitter *this)
{
  return 6;
}


// ===== 6fd8fc glitch::scene::CParticleSphereEmitter::setDirection(glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::scene::CParticleSphereEmitter::setDirection(_DWORD *result, _DWORD *a2)
{
  result[8] = *a2;
  result[9] = a2[1];
  result[10] = a2[2];
  return result;
}


// ===== 6fd918 glitch::scene::CParticleSphereEmitter::setMinParticlesPerSecond(uint) =====
int __fastcall glitch::scene::CParticleSphereEmitter::setMinParticlesPerSecond(int this, unsigned int a2)
{
  *(_DWORD *)(this + 44) = a2;
  return this;
}


// ===== 6fd920 glitch::scene::CParticleSphereEmitter::setMaxParticlesPerSecond(uint) =====
int __fastcall glitch::scene::CParticleSphereEmitter::setMaxParticlesPerSecond(int this, unsigned int a2)
{
  *(_DWORD *)(this + 48) = a2;
  return this;
}


// ===== 6fd928 glitch::scene::CParticleSphereEmitter::setMinStartColor(glitch::video::SColor const&) =====
void *__fastcall glitch::scene::CParticleSphereEmitter::setMinStartColor(int a1, const void *a2)
{
  return memcpy((void *)(a1 + 52), a2, 4u);
}


// ===== 6fd93c glitch::scene::CParticleSphereEmitter::setMaxStartColor(glitch::video::SColor const&) =====
void *__fastcall glitch::scene::CParticleSphereEmitter::setMaxStartColor(int a1, const void *a2)
{
  return memcpy((void *)(a1 + 56), a2, 4u);
}


// ===== 6fd950 glitch::scene::CParticleSphereEmitter::setCenter(glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::scene::CParticleSphereEmitter::setCenter(_DWORD *result, _DWORD *a2)
{
  result[4] = *a2;
  result[5] = a2[1];
  result[6] = a2[2];
  return result;
}


// ===== 6fd96c glitch::scene::CParticleSphereEmitter::setRadius(float) =====
int __fastcall glitch::scene::CParticleSphereEmitter::setRadius(int this, float a2)
{
  *(float *)(this + 28) = a2;
  return this;
}


// ===== 6fd974 glitch::scene::CParticleSphereEmitter::getDirection(void) =====
char *__fastcall glitch::scene::CParticleSphereEmitter::getDirection(glitch::scene::CParticleSphereEmitter *this)
{
  return (char *)this + 32;
}


// ===== 6fd97c glitch::scene::CParticleSphereEmitter::getMinParticlesPerSecond(void) =====
int __fastcall glitch::scene::CParticleSphereEmitter::getMinParticlesPerSecond(
        glitch::scene::CParticleSphereEmitter *this)
{
  return *((_DWORD *)this + 11);
}


// ===== 6fd984 glitch::scene::CParticleSphereEmitter::getMaxParticlesPerSecond(void) =====
int __fastcall glitch::scene::CParticleSphereEmitter::getMaxParticlesPerSecond(
        glitch::scene::CParticleSphereEmitter *this)
{
  return *((_DWORD *)this + 12);
}


// ===== 6fd98c glitch::scene::CParticleSphereEmitter::getMinStartColor(void) =====
char *__fastcall glitch::scene::CParticleSphereEmitter::getMinStartColor(glitch::scene::CParticleSphereEmitter *this)
{
  return (char *)this + 52;
}


// ===== 6fd994 glitch::scene::CParticleSphereEmitter::getMaxStartColor(void) =====
char *__fastcall glitch::scene::CParticleSphereEmitter::getMaxStartColor(glitch::scene::CParticleSphereEmitter *this)
{
  return (char *)this + 56;
}


// ===== 6fd99c glitch::scene::CParticleSphereEmitter::getCenter(void) =====
char *__fastcall glitch::scene::CParticleSphereEmitter::getCenter(glitch::scene::CParticleSphereEmitter *this)
{
  return (char *)this + 16;
}


// ===== 6fd9a4 glitch::scene::CParticleSphereEmitter::getRadius(void) =====
int __fastcall glitch::scene::CParticleSphereEmitter::getRadius(glitch::scene::CParticleSphereEmitter *this)
{
  return *((_DWORD *)this + 7);
}


// ===== 6fd9ac glitch::scene::CParticleSphereEmitter::getMinLifeTime(void) =====
int __fastcall glitch::scene::CParticleSphereEmitter::getMinLifeTime(glitch::scene::CParticleSphereEmitter *this)
{
  return *((_DWORD *)this + 15);
}


// ===== 6fd9b4 glitch::scene::CParticleSphereEmitter::getMaxLifeTime(void) =====
int __fastcall glitch::scene::CParticleSphereEmitter::getMaxLifeTime(glitch::scene::CParticleSphereEmitter *this)
{
  return *((_DWORD *)this + 16);
}


// ===== 6fd9bc glitch::scene::CParticleSphereEmitter::getMaxAngleDegrees(void) =====
int __fastcall glitch::scene::CParticleSphereEmitter::getMaxAngleDegrees(glitch::scene::CParticleSphereEmitter *this)
{
  return *((_DWORD *)this + 19);
}


// ===== 6fd9c4 glitch::scene::IParticleSphereEmitter::~IParticleSphereEmitter() =====
void __fastcall glitch::scene::IParticleSphereEmitter::~IParticleSphereEmitter(
        glitch::scene::IParticleSphereEmitter *this)
{
  ;
}


// ===== 6fd9c8 `virtual thunk to'glitch::scene::IParticleSphereEmitter::~IParticleSphereEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleSphereEmitter::~IParticleSphereEmitter(
        glitch::scene::IParticleSphereEmitter *this)
{
  glitch::scene::IParticleSphereEmitter::~IParticleSphereEmitter((glitch::scene::IParticleSphereEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fd9d8 `virtual thunk to'glitch::scene::IParticleSphereEmitter::~IParticleSphereEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleSphereEmitter::~IParticleSphereEmitter(
        glitch::scene::IParticleSphereEmitter *this)
{
  glitch::scene::IParticleSphereEmitter::~IParticleSphereEmitter((glitch::scene::IParticleSphereEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fd9e8 glitch::scene::CParticleSphereEmitter::CParticleSphereEmitter(glitch::core::vector3d<float> const&,float,glitch::core::vector3d<float> const&,uint,uint,glitch::video::SColor const&,glitch::video::SColor const&,uint,uint,int) =====
int *__fastcall glitch::scene::CParticleSphereEmitter::CParticleSphereEmitter(
        int *a1,
        int *a2,
        int *a3,
        int a4,
        int *a5,
        int a6,
        int a7,
        void *a8,
        void *a9,
        int a10,
        int a11,
        int a12)
{
  int v12; // r12
  int v15; // r2
  int v16; // r7
  int v17; // lr
  int v18; // r3

  v12 = a2[2];
  *a1 = v12;
  *(int *)((char *)a1 + *(_DWORD *)(v12 - 28)) = a2[3];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = a2[4];
  v15 = a2[1];
  *a1 = v15;
  *(int *)((char *)a1 + *(_DWORD *)(v15 - 28)) = a2[5];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = a2[6];
  v16 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v16 - 28)) = a2[7];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = a2[8];
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = *a3;
  a1[5] = a3[1];
  v17 = a3[2];
  a1[7] = a4;
  a1[6] = v17;
  a1[8] = *a5;
  a1[9] = a5[1];
  v18 = a5[2];
  a1[11] = a6;
  a1[10] = v18;
  a1[12] = a7;
  memcpy(a1 + 13, a8, sizeof(int));
  memcpy(a1 + 14, a9, sizeof(int));
  a1[15] = a10;
  a1[18] = 0;
  a1[16] = a11;
  a1[17] = 0;
  a1[19] = a12;
  return a1;
}


// ===== 6fdb0c glitch::scene::CParticleSphereEmitter::CParticleSphereEmitter(glitch::core::vector3d<float> const&,float,glitch::core::vector3d<float> const&,uint,uint,glitch::video::SColor const&,glitch::video::SColor const&,uint,uint,int) =====
_DWORD *__fastcall glitch::scene::CParticleSphereEmitter::CParticleSphereEmitter(
        _DWORD *a1,
        _DWORD *a2,
        int a3,
        _DWORD *a4,
        int a5,
        int a6,
        void *a7,
        void *a8,
        int a9,
        int a10,
        int a11)
{
  int v12; // r12
  int v13; // r3

  *a1 = off_98ED14;
  a1[20] = off_95B720;
  a1[21] = 1;
  *(int *)((char *)&dword_50 + (_DWORD)a1) = (int)off_98ED34;
  *a1 = off_98ECA4;
  *(int *)((char *)&dword_0 + (_DWORD)a1) = (int)off_98ECA4;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = off_98ECF8;
  *a1 = off_98EC14;
  *(int *)((char *)&dword_0 + (_DWORD)a1) = (int)off_98EC14;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = off_98EC78;
  *a1 = off_98EB4C;
  a1[20] = off_98EBBC;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = *a2;
  a1[5] = a2[1];
  v12 = a2[2];
  a1[7] = a3;
  a1[6] = v12;
  a1[8] = *a4;
  a1[9] = a4[1];
  v13 = a4[2];
  a1[11] = a5;
  a1[10] = v13;
  a1[12] = a6;
  memcpy(a1 + 13, a7, sizeof(_DWORD));
  memcpy(a1 + 14, a8, sizeof(_DWORD));
  a1[15] = a9;
  a1[18] = 0;
  a1[16] = a10;
  a1[17] = 0;
  a1[19] = a11;
  return a1;
}


// ===== 6fdc64 `global constructor keyed to'.._source_glitch_scene_CParticleSphereEmitter.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CParticleSphereEmitter.cpp()
{
  dword_9F8444 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F8440 = 1056964608;
}


// ===== 6fdc84 glitch::scene::CParticleSphereEmitter::~CParticleSphereEmitter() =====
void __fastcall glitch::scene::CParticleSphereEmitter::~CParticleSphereEmitter(
        glitch::scene::CParticleSphereEmitter *this)
{
  void *v2; // r0

  v2 = *((void **)this + 1);
  *(_DWORD *)this = off_98EB4C;
  *((_DWORD *)this + 20) = off_98EBBC;
  if ( v2 )
    GlitchFree(v2);
}


// ===== 6fdccc `virtual thunk to'glitch::scene::CParticleSphereEmitter::~CParticleSphereEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleSphereEmitter::~CParticleSphereEmitter(
        glitch::scene::CParticleSphereEmitter *this)
{
  glitch::scene::CParticleSphereEmitter::~CParticleSphereEmitter((glitch::scene::CParticleSphereEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fdcdc `virtual thunk to'glitch::scene::CParticleSphereEmitter::~CParticleSphereEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleSphereEmitter::~CParticleSphereEmitter(
        glitch::scene::CParticleSphereEmitter *this)
{
  glitch::scene::CParticleSphereEmitter::~CParticleSphereEmitter((glitch::scene::CParticleSphereEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fdcec glitch::scene::CParticleSphereEmitter::~CParticleSphereEmitter() =====
void __fastcall glitch::scene::CParticleSphereEmitter::~CParticleSphereEmitter(
        glitch::scene::CParticleSphereEmitter *this)
{
  glitch::scene::CParticleSphereEmitter::~CParticleSphereEmitter(this);
  LC_API_FREE_0(this);
}


// ===== 6fdd08 `virtual thunk to'glitch::scene::CParticleSphereEmitter::~CParticleSphereEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleSphereEmitter::~CParticleSphereEmitter(
        glitch::scene::CParticleSphereEmitter *this)
{
  glitch::scene::CParticleSphereEmitter::~CParticleSphereEmitter((glitch::scene::CParticleSphereEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fdd18 `virtual thunk to'glitch::scene::CParticleSphereEmitter::~CParticleSphereEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleSphereEmitter::~CParticleSphereEmitter(
        glitch::scene::CParticleSphereEmitter *this)
{
  glitch::scene::CParticleSphereEmitter::~CParticleSphereEmitter((glitch::scene::CParticleSphereEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fdd28 glitch::scene::CParticleSphereEmitter::emitt(uint,uint,glitch::scene::SParticle *&) =====
int __fastcall glitch::scene::CParticleSphereEmitter::emitt(int a1, glitch::os::Randomizer *a2, int a3, _DWORD *a4)
{
  int v5; // r6
  unsigned int v6; // r5
  glitch::os::Randomizer *v7; // r0
  unsigned int v8; // r6
  float v9; // r1
  float v10; // r5
  int result; // r0
  _DWORD *v12; // r0
  _DWORD *v13; // r2
  unsigned int v14; // r0
  int v15; // r8
  glitch::os::Randomizer *v16; // r0
  int v17; // r0
  float v18; // r0
  float v19; // r11
  int v20; // r0
  float v21; // r0
  int v22; // r0
  float v23; // r0
  int v24; // r0
  int v25; // r1
  int v26; // r2
  int v27; // r3
  bool v28; // zf
  float v29; // r0
  double v30; // r0
  float v31; // r0
  double v32; // r0
  float v33; // r0
  double v34; // r0
  int v35; // r3
  int v36; // r11
  unsigned int v37; // r0
  unsigned int v38; // r1
  int v39; // r1
  int v40; // t0
  float v41; // r0
  float v42; // [sp+Ch] [bp-F8h]
  float v43; // [sp+10h] [bp-F4h]
  unsigned int v45; // [sp+20h] [bp-E4h]
  void **v46; // [sp+24h] [bp-E0h]
  float v48; // [sp+44h] [bp-C0h] BYREF
  float v49; // [sp+48h] [bp-BCh]
  float v50; // [sp+4Ch] [bp-B8h]
  int v51; // [sp+50h] [bp-B4h]
  int v52; // [sp+54h] [bp-B0h]
  int v53; // [sp+58h] [bp-ACh]
  glitch::os::Randomizer *v54; // [sp+5Ch] [bp-A8h]
  char *v55; // [sp+60h] [bp-A4h]
  int Interpolated; // [sp+64h] [bp-A0h]
  int v57; // [sp+68h] [bp-9Ch]
  int v58; // [sp+6Ch] [bp-98h]
  int v59; // [sp+70h] [bp-94h]
  int v60; // [sp+74h] [bp-90h]
  _DWORD v61[17]; // [sp+88h] [bp-7Ch] BYREF
  float v62[3]; // [sp+CCh] [bp-38h] BYREF
  _DWORD v63[3]; // [sp+D8h] [bp-2Ch] BYREF
  float v64[3]; // [sp+E4h] [bp-20h] BYREF
  int v65; // [sp+F0h] [bp-14h] BYREF
  int v66; // [sp+F4h] [bp-10h]
  int v67; // [sp+F8h] [bp-Ch]

  v5 = *(_DWORD *)(a1 + 68);
  v6 = *(_DWORD *)(a1 + 44);
  v7 = *(glitch::os::Randomizer **)(a1 + 48);
  v8 = a3 + v5;
  *(_DWORD *)(a1 + 68) = v8;
  if ( v7 == (glitch::os::Randomizer *)v6 )
  {
    v9 = (float)v6;
  }
  else
  {
    v41 = (float)(glitch::os::Randomizer::rand(v7) % ((unsigned int)v7 - v6));
    v8 = *(_DWORD *)(a1 + 68);
    v9 = (float)v6 + v41;
  }
  v10 = 1000.0 / v9;
  result = (float)v8 > (float)(1000.0 / v9);
  if ( (float)v8 > (float)(1000.0 / v9) )
  {
    v12 = *(_DWORD **)(a1 + 8);
    v13 = *(_DWORD **)(a1 + 4);
    v46 = (void **)(a1 + 4);
    memset(v61, 0, 24);
    memset(&v61[10], 0, 12);
    if ( -252645135 * (v12 - v13) )
    {
      if ( v12 != v13 )
        *(_DWORD *)(a1 + 8) = std::priv::__copy<glitch::scene::SParticle *,glitch::scene::SParticle *,int>(
                                v12,
                                (int)v12,
                                v13);
    }
    else
    {
      std::vector<glitch::scene::SParticle,glitch::core::SAllocator<glitch::scene::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        v46,
        v12,
        0,
        v61);
    }
    v14 = (unsigned int)(float)((float)((float)*(unsigned int *)(a1 + 68) / v10) + 0.5);
    v15 = 0;
    if ( v14 >= 2 * *(_DWORD *)(a1 + 48) )
      v14 = 2 * *(_DWORD *)(a1 + 48);
    v45 = v14;
    *(_DWORD *)(a1 + 68) = 0;
    v48 = 0.0;
    v49 = 0.0;
    v50 = 0.0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    if ( v14 )
    {
      v16 = (glitch::os::Randomizer *)v62;
      do
      {
        v18 = (float)glitch::os::Randomizer::rand(v16);
        v19 = fmodf(v18, *(float *)(a1 + 28) * 1000.0) * 0.001;
        v42 = v19 + *(float *)(a1 + 20);
        v43 = v19 + *(float *)(a1 + 24);
        v48 = v19 + *(float *)(a1 + 16);
        v49 = v42;
        v50 = v43;
        v20 = glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v48));
        v21 = glitch::core::vector3d<float>::rotateXYBy(&v48, (double)(v20 % 360), (float *)(a1 + 16));
        v22 = glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v21));
        v23 = glitch::core::vector3d<float>::rotateYZBy((int)&v48, (double)(v22 % 360), a1 + 16);
        v24 = glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v23));
        glitch::core::vector3d<float>::rotateXZBy(&v48, (double)(v24 % 360), (float *)(a1 + 16));
        v25 = *(_DWORD *)(a1 + 32);
        v26 = *(_DWORD *)(a1 + 36);
        v27 = *(_DWORD *)(a1 + 40);
        v28 = *(_DWORD *)(a1 + 76) == 0;
        v29 = *(float *)&a2;
        v51 = v25;
        v52 = v26;
        v54 = a2;
        v53 = v27;
        if ( !v28 )
        {
          v66 = v26;
          v67 = v27;
          v65 = v25;
          v30 = (double)(glitch::os::Randomizer::rand(a2) % (2 * *(_DWORD *)(a1 + 76)) - *(_DWORD *)(a1 + 76));
          memset(v64, 0, sizeof(v64));
          v31 = glitch::core::vector3d<float>::rotateXYBy((float *)&v65, v30, v64);
          v32 = (double)(glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v31))
                       % (2 * *(_DWORD *)(a1 + 76))
                       - *(_DWORD *)(a1 + 76));
          memset(v63, 0, sizeof(v63));
          v33 = glitch::core::vector3d<float>::rotateYZBy((int)&v65, v32, (int)v63);
          v34 = (double)(glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v33))
                       % (2 * *(_DWORD *)(a1 + 76))
                       - *(_DWORD *)(a1 + 76));
          memset(v62, 0, sizeof(v62));
          v29 = glitch::core::vector3d<float>::rotateXZBy((float *)&v65, v34, v62);
          v51 = v65;
          v52 = v66;
          v53 = v67;
        }
        v35 = *(_DWORD *)(a1 + 64);
        v36 = *(_DWORD *)(a1 + 60);
        if ( v35 == v36 )
        {
          v55 = (char *)a2 + v35;
        }
        else
        {
          v37 = glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v29));
          v38 = *(_DWORD *)(a1 + 64) - *(_DWORD *)(a1 + 60);
          v40 = v37 / v38;
          v39 = v37 % v38;
          v29 = *(float *)&v40;
          v55 = (char *)a2 + v36 + v39;
        }
        v17 = glitch::os::Randomizer::rand((glitch::os::Randomizer *)LODWORD(v29));
        ++v15;
        Interpolated = glitch::video::SColor::getInterpolated(
                         (unsigned __int8 *)(a1 + 52),
                         (unsigned __int8 *)(a1 + 56),
                         (float)(v17 % 100) / 100.0);
        v57 = Interpolated;
        v58 = v51;
        v59 = v52;
        v60 = v53;
        std::vector<glitch::scene::SParticle,glitch::core::SAllocator<glitch::scene::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
          (int)v46,
          &v48);
      }
      while ( v15 != v45 );
    }
    *a4 = *(_DWORD *)(a1 + 4);
    return -252645135 * ((*(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4)) >> 2);
  }
  return result;
}


// ===== 6fe238 glitch::scene::IParticleSphereEmitter::~IParticleSphereEmitter() =====
void __fastcall glitch::scene::IParticleSphereEmitter::~IParticleSphereEmitter(
        glitch::scene::IParticleSphereEmitter *this)
{
  *(_DWORD *)this = off_98EA94;
  *((_DWORD *)this + 1) = off_98EA48;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98EA94;
  LC_API_FREE_0(this);
}


// ===== 6fe28c `virtual thunk to'glitch::scene::IParticleSphereEmitter::~IParticleSphereEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleSphereEmitter::~IParticleSphereEmitter(
        glitch::scene::IParticleSphereEmitter *this)
{
  glitch::scene::IParticleSphereEmitter::~IParticleSphereEmitter((glitch::scene::IParticleSphereEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fe29c `virtual thunk to'glitch::scene::IParticleSphereEmitter::~IParticleSphereEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleSphereEmitter::~IParticleSphereEmitter(
        glitch::scene::IParticleSphereEmitter *this)
{
  glitch::scene::IParticleSphereEmitter::~IParticleSphereEmitter((glitch::scene::IParticleSphereEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fe2ac glitch::scene::IParticleSpinAffector::getType(void) =====
int __fastcall glitch::scene::IParticleSpinAffector::getType(glitch::scene::IParticleSpinAffector *this)
{
  return 6;
}


// ===== 6fe2b4 glitch::scene::CParticleSpinAffector::setSpinTime(float) =====
unsigned int __fastcall glitch::scene::CParticleSpinAffector::setSpinTime(
        glitch::scene::CParticleSpinAffector *this,
        float a2)
{
  *((_DWORD *)this + 2) = (unsigned int)a2;
  return (unsigned int)a2;
}


// ===== 6fe2cc glitch::scene::CParticleSpinAffector::setVariation(float) =====
int __fastcall glitch::scene::CParticleSpinAffector::setVariation(int this, float a2)
{
  *(float *)(this + 12) = a2;
  return this;
}


// ===== 6fe2d4 glitch::scene::CParticleSpinAffector::getSpinTime(void) =====
float __fastcall glitch::scene::CParticleSpinAffector::getSpinTime(glitch::scene::CParticleSpinAffector *this)
{
  return (float)*((unsigned int *)this + 2);
}


// ===== 6fe2e4 glitch::scene::CParticleSpinAffector::getVariation(void) =====
int __fastcall glitch::scene::CParticleSpinAffector::getVariation(glitch::scene::CParticleSpinAffector *this)
{
  return *((_DWORD *)this + 3);
}


// ===== 6fe2ec glitch::scene::IParticleSpinAffector::~IParticleSpinAffector() =====
void __fastcall glitch::scene::IParticleSpinAffector::~IParticleSpinAffector(
        glitch::scene::IParticleSpinAffector *this)
{
  ;
}


// ===== 6fe2f0 `virtual thunk to'glitch::scene::IParticleSpinAffector::~IParticleSpinAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleSpinAffector::~IParticleSpinAffector(
        glitch::scene::IParticleSpinAffector *this)
{
  glitch::scene::IParticleSpinAffector::~IParticleSpinAffector((glitch::scene::IParticleSpinAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fe300 `virtual thunk to'glitch::scene::IParticleSpinAffector::~IParticleSpinAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleSpinAffector::~IParticleSpinAffector(
        glitch::scene::IParticleSpinAffector *this)
{
  glitch::scene::IParticleSpinAffector::~IParticleSpinAffector((glitch::scene::IParticleSpinAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fe310 glitch::scene::CParticleSpinAffector::CParticleSpinAffector(uint,float) =====
int *__fastcall glitch::scene::CParticleSpinAffector::CParticleSpinAffector(int *this, int *a2, float a3, int a4)
{
  int v4; // r6
  int v5; // r6
  int v6; // r5
  int v7; // r4

  *this = 0;
  *(this + 1) = 0;
  *(this + 3) = 0;
  *(this + 2) = 0;
  v4 = a2[2];
  *this = v4;
  v5 = *(_DWORD *)(v4 - 28);
  if ( a3 == 0.0 )
    LODWORD(a3) = 1000;
  *(int *)((char *)this + v5) = a2[3];
  *(int *)((char *)this + *(_DWORD *)(*this - 12)) = a2[4];
  *((_BYTE *)this + 4) = 1;
  v6 = a2[1];
  *this = v6;
  *(int *)((char *)this + *(_DWORD *)(v6 - 28)) = a2[5];
  *(int *)((char *)this + *(_DWORD *)(*this - 12)) = a2[6];
  v7 = *a2;
  *this = *a2;
  *(int *)((char *)this + *(_DWORD *)(v7 - 28)) = a2[7];
  *(int *)((char *)this + *(_DWORD *)(*this - 12)) = a2[8];
  *(this + 3) = a4;
  *((float *)this + 2) = a3;
  return this;
}


// ===== 6fe3bc glitch::scene::CParticleSpinAffector::CParticleSpinAffector(uint,float) =====
_DWORD *__fastcall glitch::scene::CParticleSpinAffector::CParticleSpinAffector(_DWORD *this, unsigned int a2, float a3)
{
  *(this + 4) = off_95B720;
  *this = off_98EFE4;
  *(this + 5) = 1;
  *(_DWORD *)((char *)&word_10 + (_DWORD)this) = off_98F004;
  *this = off_98EF94;
  *(this + 1) = 0;
  *(this + 3) = 0;
  *(this + 2) = 0;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98EF94;
  *(_DWORD *)((char *)this + *(_DWORD *)(*this - 12)) = off_98EFC8;
  *this = off_98EF24;
  *((_BYTE *)this + 4) = 1;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98EF24;
  if ( !a2 )
    a2 = 1000;
  *(_DWORD *)((char *)this + *(_DWORD *)(*this - 12)) = off_98EF68;
  *this = off_98EE84;
  *(this + 4) = off_98EEC8;
  *(this + 2) = a2;
  *((float *)this + 3) = a3;
  return this;
}


// ===== 6fe498 glitch::scene::CParticleSpinAffector::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CParticleSpinAffector::serializeAttributes(int a1, int a2)
{
  (*(void (__fastcall **)(int, const char *, float, _DWORD))(*(_DWORD *)a2 + 100))(
    a2,
    "SpinTime",
    (float)*(unsigned int *)(a1 + 8),
    0);
  return (*(int (__fastcall **)(int, char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(
           a2,
           "Variation",
           *(_DWORD *)(a1 + 12),
           0);
}


// ===== 6fe4fc glitch::scene::CParticleSpinAffector::~CParticleSpinAffector() =====
void __fastcall glitch::scene::CParticleSpinAffector::~CParticleSpinAffector(
        glitch::scene::CParticleSpinAffector *this)
{
  ;
}


// ===== 6fe500 `virtual thunk to'glitch::scene::CParticleSpinAffector::~CParticleSpinAffector() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleSpinAffector::~CParticleSpinAffector(
        glitch::scene::CParticleSpinAffector *this)
{
  glitch::scene::CParticleSpinAffector::~CParticleSpinAffector((glitch::scene::CParticleSpinAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fe510 `virtual thunk to'glitch::scene::CParticleSpinAffector::~CParticleSpinAffector() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleSpinAffector::~CParticleSpinAffector(
        glitch::scene::CParticleSpinAffector *this)
{
  glitch::scene::CParticleSpinAffector::~CParticleSpinAffector((glitch::scene::CParticleSpinAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fe520 `global constructor keyed to'.._source_glitch_scene_CParticleSpinAffector.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CParticleSpinAffector.cpp()
{
  dword_9F8450 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F844C = 1056964608;
}


// ===== 6fe540 glitch::scene::CParticleSpinAffector::deserializeAttributes(int,glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CParticleSpinAffector::deserializeAttributes(int a1, int a2, int a3)
{
  const char *v6; // r0
  float v8; // r0
  const char *v9; // r0

  v6 = (const char *)(*(int (__fastcall **)(int))(*(_DWORD *)a3 + 16))(a3);
  if ( !v6 )
    return a2;
  if ( LC_API_STRCMP_0(v6, "SpinTime") )
    return a2;
  v8 = COERCE_FLOAT((*(int (__fastcall **)(int, int))(*(_DWORD *)a3 + 116))(a3, a2++));
  *(_DWORD *)(a1 + 8) = (unsigned int)v8;
  v9 = (const char *)(*(int (__fastcall **)(int, int))(*(_DWORD *)a3 + 16))(a3, a2);
  if ( !v9 || LC_API_STRCMP_0(v9, "Variation") )
    return a2;
  *(_DWORD *)(a1 + 12) = (*(int (__fastcall **)(int, int))(*(_DWORD *)a3 + 116))(a3, a2);
  return a2 + 1;
}


// ===== 6fe600 glitch::scene::CParticleSpinAffector::affect(uint,glitch::scene::SParticle *,uint) =====
float __fastcall glitch::scene::CParticleSpinAffector::affect(int a1, int a2, int a3, int a4)
{
  float result; // r0
  int v9; // r7
  int v10; // r10
  int v11; // r8
  float v12; // r10
  float v13; // r0

  LODWORD(result) = *(unsigned __int8 *)(a1 + 4);
  if ( result != 0.0 && a4 )
  {
    v9 = 0;
    do
    {
      v11 = *(_DWORD *)(a3 + 24);
      if ( v11 == a2 )
      {
        if ( *(float *)(a1 + 12) > 0.0 )
        {
          v12 = *(float *)(a1 + 12);
          v13 = (float)(glitch::os::Randomizer::rand((glitch::os::Randomizer *)(v12 > 0.0)) % (int)(float)(v12 * 100.0));
          v11 = *(_DWORD *)(a3 + 24);
          *(float *)(a3 + 64) = v13 / 100.0;
        }
        else
        {
          *(_DWORD *)(a3 + 64) = 0;
        }
      }
      *(_DWORD *)(a3 + 60) = 0;
      ++v9;
      LODWORD(result) = a2 - v11;
      if ( (int)(float)((float)*(unsigned int *)(a1 + 8)
                      + (float)((float)((float)*(unsigned int *)(a1 + 8) * *(float *)(a3 + 64)) / -100.0)) > 0 )
      {
        v10 = (int)(float)((float)*(unsigned int *)(a1 + 8)
                         + (float)((float)((float)*(unsigned int *)(a1 + 8) * *(float *)(a3 + 64)) / -100.0));
        result = (float)((float)((float)(SLODWORD(result) % v10) / (float)v10) * 3.1416)
               + (float)((float)((float)(SLODWORD(result) % v10) / (float)v10) * 3.1416);
        *(float *)(a3 + 60) = result;
      }
      a3 += 68;
    }
    while ( v9 != a4 );
  }
  return result;
}


// ===== 6fe738 glitch::scene::IParticleSpinAffector::~IParticleSpinAffector() =====
void __fastcall glitch::scene::IParticleSpinAffector::~IParticleSpinAffector(
        glitch::scene::IParticleSpinAffector *this)
{
  *(_DWORD *)this = off_98EDEC;
  *((_DWORD *)this + 2) = off_98EDA0;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98EDEC;
  LC_API_FREE_0(this);
}


// ===== 6fe78c `virtual thunk to'glitch::scene::IParticleSpinAffector::~IParticleSpinAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleSpinAffector::~IParticleSpinAffector(
        glitch::scene::IParticleSpinAffector *this)
{
  glitch::scene::IParticleSpinAffector::~IParticleSpinAffector((glitch::scene::IParticleSpinAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fe79c `virtual thunk to'glitch::scene::IParticleSpinAffector::~IParticleSpinAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleSpinAffector::~IParticleSpinAffector(
        glitch::scene::IParticleSpinAffector *this)
{
  glitch::scene::IParticleSpinAffector::~IParticleSpinAffector((glitch::scene::IParticleSpinAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fe7ac glitch::scene::CParticleSpinAffector::~CParticleSpinAffector() =====
void __fastcall glitch::scene::CParticleSpinAffector::~CParticleSpinAffector(
        glitch::scene::CParticleSpinAffector *this)
{
  *(_DWORD *)this = off_98EF24;
  *((_DWORD *)this + 4) = off_98EEC8;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98EF24;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_98EF68;
  *(_DWORD *)this = off_98EF94;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98EF94;
  LC_API_FREE_0(this);
}


// ===== 6fe824 `virtual thunk to'glitch::scene::CParticleSpinAffector::~CParticleSpinAffector() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleSpinAffector::~CParticleSpinAffector(
        glitch::scene::CParticleSpinAffector *this)
{
  glitch::scene::CParticleSpinAffector::~CParticleSpinAffector((glitch::scene::CParticleSpinAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6fe834 `virtual thunk to'glitch::scene::CParticleSpinAffector::~CParticleSpinAffector() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleSpinAffector::~CParticleSpinAffector(
        glitch::scene::CParticleSpinAffector *this)
{
  glitch::scene::CParticleSpinAffector::~CParticleSpinAffector((glitch::scene::CParticleSpinAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6fe844 `virtual thunk to'glitch::scene::CParticleSpinAffector::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::scene::CParticleSpinAffector::serializeAttributes(_DWORD *a1, int a2)
{
  return glitch::scene::CParticleSpinAffector::serializeAttributes((int)a1 + *(_DWORD *)(*a1 - 16), a2);
}


// ===== 6fe854 glitch::scene::CShadowVolumeSceneNode::getType(void) =====
int __fastcall glitch::scene::CShadowVolumeSceneNode::getType(glitch::scene::CShadowVolumeSceneNode *this)
{
  return 2003069043;
}


// ===== 6fe860 glitch::scene::CShadowVolumeSceneNode::SShadowVolume::SShadowVolume(void) =====
int __fastcall glitch::scene::CShadowVolumeSceneNode::SShadowVolume::SShadowVolume(int this)
{
  *(_DWORD *)(this + 12) = 0;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)(this + 8) = 0;
  *(_WORD *)(this + 72) = 0;
  *(_DWORD *)this = 0;
  *(_DWORD *)(this + 16) = 0;
  *(_DWORD *)(this + 20) = 0;
  *(_DWORD *)(this + 24) = 0;
  *(_DWORD *)(this + 28) = 0;
  *(_DWORD *)(this + 32) = 0;
  *(_DWORD *)(this + 36) = 0;
  *(_DWORD *)(this + 40) = 0;
  *(_DWORD *)(this + 44) = 0;
  *(_DWORD *)(this + 48) = 0;
  *(_DWORD *)(this + 52) = 0;
  *(_DWORD *)(this + 56) = 0;
  *(_DWORD *)(this + 60) = 0;
  *(_WORD *)(this + 64) = 255;
  *(_WORD *)(this + 68) = 0;
  *(_WORD *)(this + 66) = 6;
  *(_WORD *)(this + 70) = -1;
  return this;
}


// ===== 6fe8cc glitch::scene::CShadowVolumeSceneNode::SShadowVolume::SShadowVolume(void) =====
int __fastcall glitch::scene::CShadowVolumeSceneNode::SShadowVolume::SShadowVolume(int this)
{
  *(_DWORD *)(this + 12) = 0;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)(this + 8) = 0;
  *(_WORD *)(this + 72) = 0;
  *(_DWORD *)this = 0;
  *(_DWORD *)(this + 16) = 0;
  *(_DWORD *)(this + 20) = 0;
  *(_DWORD *)(this + 24) = 0;
  *(_DWORD *)(this + 28) = 0;
  *(_DWORD *)(this + 32) = 0;
  *(_DWORD *)(this + 36) = 0;
  *(_DWORD *)(this + 40) = 0;
  *(_DWORD *)(this + 44) = 0;
  *(_DWORD *)(this + 48) = 0;
  *(_DWORD *)(this + 52) = 0;
  *(_DWORD *)(this + 56) = 0;
  *(_DWORD *)(this + 60) = 0;
  *(_WORD *)(this + 64) = 255;
  *(_WORD *)(this + 68) = 0;
  *(_WORD *)(this + 66) = 6;
  *(_WORD *)(this + 70) = -1;
  return this;
}


// ===== 6fe938 glitch::scene::CShadowVolumeSceneNode::setShadowMesh(boost::intrusive_ptr<glitch::scene::IMesh const> const&) =====
glitch::IReferenceCounted *__fastcall glitch::scene::CShadowVolumeSceneNode::setShadowMesh(int a1, int *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *result; // r0

  v2 = *a2;
  if ( *a2 )
    ++*(_DWORD *)(v2 + 4);
  result = *(glitch::IReferenceCounted **)(a1 + 344);
  *(_DWORD *)(a1 + 344) = v2;
  if ( result )
    result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
  *(_BYTE *)(a1 + 389) = 1;
  return result;
}


// ===== 6fe974 glitch::scene::CShadowVolumeSceneNode::load(glitch::io::IReadFile *) =====
int __fastcall glitch::scene::CShadowVolumeSceneNode::load(
        glitch::scene::CShadowVolumeSceneNode *this,
        glitch::io::IReadFile *a2)
{
  return 0;
}


// ===== 6fe97c glitch::scene::CShadowVolumeSceneNode::getBoundingBox(void) =====
char *__fastcall glitch::scene::CShadowVolumeSceneNode::getBoundingBox(glitch::scene::CShadowVolumeSceneNode *this)
{
  return (char *)this + 360;
}


// ===== 6fe984 glitch::scene::CShadowVolumeSceneNode::SetBiasFactor(float) =====
int __fastcall glitch::scene::CShadowVolumeSceneNode::SetBiasFactor(int this, float a2)
{
  *(float *)(this + 392) = a2;
  return this;
}


// ===== 6fe98c glitch::scene::CShadowVolumeSceneNode::SShadowVolume::SShadowVolume(glitch::scene::CShadowVolumeSceneNode::SShadowVolume const&) =====
int __fastcall glitch::scene::CShadowVolumeSceneNode::SShadowVolume::SShadowVolume(
        int this,
        const glitch::scene::CShadowVolumeSceneNode::SShadowVolume *a2)
{
  _DWORD *v2; // r2
  int v3; // r2
  int v4; // r2
  int v5; // r2

  *(_DWORD *)this = *(_DWORD *)a2;
  *(_DWORD *)(this + 4) = *((_DWORD *)a2 + 1);
  *(_DWORD *)(this + 8) = *((_DWORD *)a2 + 2);
  *(_DWORD *)(this + 12) = *((_DWORD *)a2 + 3);
  *(_DWORD *)(this + 16) = *((_DWORD *)a2 + 4);
  *(_DWORD *)(this + 20) = *((_DWORD *)a2 + 5);
  *(_DWORD *)(this + 24) = *((_DWORD *)a2 + 6);
  *(_DWORD *)(this + 28) = *((_DWORD *)a2 + 7);
  v2 = *((_DWORD **)a2 + 8);
  *(_DWORD *)(this + 32) = v2;
  if ( v2 )
    ++*v2;
  v3 = *((_DWORD *)a2 + 9);
  *(_DWORD *)(this + 36) = v3;
  if ( v3 )
    ++*(_DWORD *)(v3 + 4);
  v4 = *((_DWORD *)a2 + 10);
  *(_DWORD *)(this + 40) = v4;
  if ( v4 )
    ++*(_DWORD *)(v4 + 4);
  v5 = *((_DWORD *)a2 + 11);
  *(_DWORD *)(this + 44) = v5;
  if ( v5 )
    ++*(_DWORD *)(v5 + 4);
  *(_DWORD *)(this + 48) = *((_DWORD *)a2 + 12);
  *(_DWORD *)(this + 52) = *((_DWORD *)a2 + 13);
  *(_DWORD *)(this + 56) = *((_DWORD *)a2 + 14);
  *(_DWORD *)(this + 60) = *((_DWORD *)a2 + 15);
  *(_WORD *)(this + 64) = *((_WORD *)a2 + 32);
  *(_WORD *)(this + 66) = *((_WORD *)a2 + 33);
  *(_WORD *)(this + 68) = *((_WORD *)a2 + 34);
  *(_WORD *)(this + 70) = *((_WORD *)a2 + 35);
  *(_WORD *)(this + 72) = *((_WORD *)a2 + 36);
  return this;
}


// ===== 6fea80 `global constructor keyed to'.._source_glitch_scene_CShadowVolumeSceneNode.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CShadowVolumeSceneNode.cpp()
{
  dword_9F845C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F8458 = 1056964608;
}


// ===== 6feaa0 glitch::scene::CShadowVolumeSceneNode::getProjectedVertex(glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,glitch::video::E_LIGHT_TYPE,bool) =====
float *__fastcall glitch::scene::CShadowVolumeSceneNode::getProjectedVertex(
        float *a1,
        int a2,
        float *a3,
        float *a4,
        int a5,
        char a6)
{
  float v9; // r9
  float v10; // r10
  float v11; // r11
  float v12; // r8
  float v13; // r4
  int v14; // r4
  _BOOL4 IntersectionWithLimitedLine; // r0
  int v16; // r3
  int v17; // r1
  float v19; // r8
  float v20; // r0
  float v21; // r10
  float v22; // r8
  float *v23; // r0
  float v24; // [sp+0h] [bp-24h]
  float v25; // [sp+4h] [bp-20h]
  int v26; // [sp+8h] [bp-1Ch] BYREF
  int v27; // [sp+Ch] [bp-18h]
  int v28; // [sp+10h] [bp-14h]
  float v29[4]; // [sp+14h] [bp-10h] BYREF

  if ( a5 == 2 )
  {
    v19 = a3[2] - a4[2];
    v20 = *a3 - *a4;
    a1[1] = a3[1] - a4[1];
    *a1 = v20;
    a1[2] = v19;
  }
  else
  {
    if ( a6 )
    {
      v21 = a4[1] - a3[1];
      v22 = a4[2] - a3[2];
      v29[0] = *a4 - *a3;
      v29[1] = v21;
      v29[2] = v22;
      v23 = glitch::core::vector3d<float>::normalize(v29);
      v25 = v23[2];
      v11 = *v23;
      v24 = v23[1];
      v9 = *a3;
      v10 = a3[1];
      v12 = a3[2];
    }
    else
    {
      v9 = *a3;
      v10 = a3[1];
      v11 = *a4 - *a3;
      v24 = a4[1] - v10;
      v12 = a3[2];
      v25 = a4[2] - v12;
    }
    v13 = *(float *)(a2 + 384);
    *a1 = v9 - (float)(v13 * v11);
    a1[1] = v10 - (float)(v13 * v24);
    a1[2] = v12 - (float)(v13 * v25);
  }
  v14 = *(_DWORD *)(a2 + 332);
  if ( v14 != *(_DWORD *)(a2 + 336) )
  {
    v28 = 0;
    v26 = 0;
    v27 = 0;
    do
    {
      IntersectionWithLimitedLine = glitch::core::plane3d<float>::getIntersectionWithLimitedLine(
                                      v14,
                                      a3,
                                      a1,
                                      (float *)&v26);
      v14 += 16;
      if ( IntersectionWithLimitedLine )
      {
        v16 = v28;
        v17 = v26;
        *((_DWORD *)a1 + 1) = v27;
        *((_DWORD *)a1 + 2) = v16;
        *(_DWORD *)a1 = v17;
      }
    }
    while ( v14 != *(_DWORD *)(a2 + 336) );
  }
  return a1;
}


// ===== 6fec78 glitch::scene::CShadowVolumeSceneNode::createFacingTriangleVolume(glitch::video::CPrimitiveStream::SMapBuffer<ushort const> const&,uint,glitch::core::vector3d<float> const&,glitch::video::E_LIGHT_TYPE,glitch::scene::CShadowVolumeSceneNode::SShadowVolume *,bool) =====
float __fastcall glitch::scene::CShadowVolumeSceneNode::createFacingTriangleVolume(
        int a1,
        int a2,
        int a3,
        float *a4,
        int a5,
        int a6,
        char a7)
{
  float result; // r0
  int v10; // r6
  float v11; // r6
  float v12; // r1
  float v13; // r7
  int v14; // r6
  int v15; // r7
  float *v16; // r11
  float v17; // r3
  float v18; // r2
  int v19; // r2
  int v20; // r1
  int v21; // r12
  float *v22; // r2
  float *v23; // r2
  int v24; // r3
  float *v25; // r11
  float *v26; // r11
  float *v27; // r11
  int v28; // r2
  unsigned int v29; // r3
  int *v30; // r2
  unsigned int v31; // r1
  unsigned int v32; // r3
  unsigned int v33; // r2
  unsigned int v34; // r9
  bool v35; // cf
  int v36; // r3
  int v37; // r3
  int v38; // r3
  __int16 v39; // t1
  unsigned int v40; // r8
  unsigned int v41; // r10
  float *v42; // r11
  float v43; // r3
  int v44; // r10
  int v45; // r8
  int v46; // r12
  int v47; // r7
  unsigned int v48; // r6
  unsigned int v49; // r5
  __int16 v50; // r11
  int v51; // r2
  int v52; // r7
  int v53; // r3
  int v54; // r2
  int v55; // r1
  unsigned int v56; // r3
  float v57; // r8
  float v58; // [sp+8h] [bp-FCh]
  float v59; // [sp+8h] [bp-FCh]
  float v60; // [sp+8h] [bp-FCh]
  float v61; // [sp+8h] [bp-FCh]
  float v62; // [sp+8h] [bp-FCh]
  float v63; // [sp+8h] [bp-FCh]
  float v64; // [sp+8h] [bp-FCh]
  float v65; // [sp+Ch] [bp-F8h]
  int v66; // [sp+Ch] [bp-F8h]
  int v67; // [sp+Ch] [bp-F8h]
  int v68; // [sp+Ch] [bp-F8h]
  float v69; // [sp+Ch] [bp-F8h]
  float v70; // [sp+Ch] [bp-F8h]
  float v71; // [sp+Ch] [bp-F8h]
  float v72; // [sp+Ch] [bp-F8h]
  float v73; // [sp+10h] [bp-F4h]
  float v74; // [sp+10h] [bp-F4h]
  float *v75; // [sp+10h] [bp-F4h]
  float v76; // [sp+10h] [bp-F4h]
  float *v77; // [sp+10h] [bp-F4h]
  float v78; // [sp+10h] [bp-F4h]
  float *v79; // [sp+10h] [bp-F4h]
  float v80; // [sp+10h] [bp-F4h]
  float *v81; // [sp+14h] [bp-F0h]
  float v82; // [sp+14h] [bp-F0h]
  float *v83; // [sp+14h] [bp-F0h]
  float v84; // [sp+14h] [bp-F0h]
  unsigned int v85; // [sp+14h] [bp-F0h]
  float *v86; // [sp+18h] [bp-ECh]
  float v87; // [sp+18h] [bp-ECh]
  float *v88; // [sp+18h] [bp-ECh]
  float v89; // [sp+18h] [bp-ECh]
  float v90; // [sp+1Ch] [bp-E8h]
  float v91; // [sp+1Ch] [bp-E8h]
  int v92; // [sp+20h] [bp-E4h]
  int v93; // [sp+20h] [bp-E4h]
  float *v94; // [sp+24h] [bp-E0h]
  int v95; // [sp+24h] [bp-E0h]
  float v96; // [sp+28h] [bp-DCh]
  float v97; // [sp+28h] [bp-DCh]
  float v98; // [sp+2Ch] [bp-D8h]
  float v99; // [sp+2Ch] [bp-D8h]
  bool v100; // [sp+34h] [bp-D0h]
  float v101; // [sp+34h] [bp-D0h]
  float v102; // [sp+38h] [bp-CCh]
  unsigned int v105; // [sp+48h] [bp-BCh]
  float v106[3]; // [sp+74h] [bp-90h] BYREF
  float v107[3]; // [sp+80h] [bp-84h] BYREF
  float v108[3]; // [sp+8Ch] [bp-78h] BYREF
  float v109[3]; // [sp+98h] [bp-6Ch] BYREF
  float v110[3]; // [sp+A4h] [bp-60h] BYREF
  float v111[3]; // [sp+B0h] [bp-54h] BYREF
  float v112[3]; // [sp+BCh] [bp-48h] BYREF
  float v113[3]; // [sp+C8h] [bp-3Ch] BYREF
  float v114; // [sp+D4h] [bp-30h] BYREF
  float v115; // [sp+D8h] [bp-2Ch]
  float v116; // [sp+DCh] [bp-28h]
  float v117; // [sp+E0h] [bp-24h]
  unsigned int v118; // [sp+E4h] [bp-20h] BYREF
  unsigned int v119; // [sp+E8h] [bp-1Ch] BYREF
  _DWORD v120[2]; // [sp+ECh] [bp-18h] BYREF
  unsigned int v121; // [sp+F4h] [bp-10h] BYREF
  unsigned int v122; // [sp+F8h] [bp-Ch] BYREF
  unsigned int v123; // [sp+FCh] [bp-8h] BYREF

  result = *(float *)(a1 + 348);
  if ( result == 0.0 )
  {
    v10 = 6 * a3;
  }
  else
  {
    v10 = 6 * a3;
    if ( (unsigned int)(6 * a3) <= *(_DWORD *)(a1 + 352) )
      goto LABEL_3;
    operator delete[]((void *)LODWORD(result));
  }
  *(_DWORD *)(a1 + 352) = v10;
  result = COERCE_FLOAT(operator new[](2 * v10, 0));
  *(float *)(a1 + 348) = result;
LABEL_3:
  v11 = *a4;
  v12 = a4[1];
  v13 = a4[2];
  v114 = *a4;
  v115 = v12;
  v116 = v13;
  if ( a5 == 2 )
  {
    v57 = *(float *)(a1 + 384);
    result = v57 * v11;
    v115 = v57 * v12;
    v114 = v57 * v11;
    v116 = v57 * v13;
  }
  v14 = *(_DWORD *)(a6 + 16);
  if ( a3 )
  {
    v15 = 0;
    v92 = 0;
    v102 = 0.0;
    v94 = a4;
    do
    {
      v37 = *(_DWORD *)(a2 + 4);
      v39 = *(_WORD *)(v37 + v15);
      v38 = v37 + v15;
      v40 = (unsigned __int16)(2 * v39);
      v41 = (unsigned __int16)(2 * *(_WORD *)(v38 + 2));
      v34 = (unsigned __int16)(2 * *(_WORD *)(v38 + 4));
      if ( a5 == 2 )
      {
        v88 = (float *)(v14 + 12 * v40);
        v83 = (float *)(v14 + 12 * v34);
        v91 = *v83 - *v88;
        v80 = v88[1];
        v97 = v83[1] - v80;
        v72 = v88[2];
        v89 = v83[2] - v72;
        v42 = (float *)(v14 + 12 * v41);
        v84 = *v42 - *(float *)(v14 + 12 * v40);
        v99 = v42[1] - v80;
        v43 = (float)((float)((float)((float)(v42[2] - v72) * COERCE_FLOAT(LODWORD(v97) + 0x80000000))
                            + (float)(v89 * v99))
                    * *v94)
            + (float)((float)((float)(v84 * COERCE_FLOAT(LODWORD(v89) + 0x80000000))
                            + (float)(v91 * (float)(v42[2] - v72)))
                    * v94[1]);
        LODWORD(result) = (float)(v43
                                + (float)((float)((float)(v99 * COERCE_FLOAT(LODWORD(v91) + 0x80000000))
                                                + (float)(v97 * v84))
                                        * v94[2])) >= 0.0;
        v100 = (float)(v43
                     + (float)((float)((float)(v99 * COERCE_FLOAT(LODWORD(v91) + 0x80000000)) + (float)(v97 * v84))
                             * v94[2])) >= 0.0;
      }
      else
      {
        v86 = (float *)(v14 + 12 * v40);
        v73 = *v86;
        v81 = (float *)(v14 + 12 * v34);
        v90 = *v81 - *v86;
        v100 = 0;
        v58 = v86[1];
        v96 = v81[1] - v58;
        v65 = v86[2];
        v87 = v81[2] - v65;
        v16 = (float *)(v14 + 12 * v41);
        v82 = *v16 - v73;
        v98 = v16[1] - v58;
        v17 = v94[2] - v65;
        v18 = (float)((float)(*v94 - v73)
                    * (float)((float)((float)(v16[2] - v65) * COERCE_FLOAT(LODWORD(v96) + 0x80000000))
                            + (float)(v87 * v98)))
            + (float)((float)(v94[1] - v58)
                    * (float)((float)(v82 * COERCE_FLOAT(LODWORD(v87) + 0x80000000))
                            + (float)(v90 * (float)(v16[2] - v65))));
        LODWORD(result) = (float)(v18
                                + (float)(v17
                                        * (float)((float)(v98 * COERCE_FLOAT(LODWORD(v90) + 0x80000000))
                                                + (float)(v96 * v82)))) >= 0.0;
        if ( (float)(v18
                   + (float)(v17 * (float)((float)(v98 * COERCE_FLOAT(LODWORD(v90) + 0x80000000)) + (float)(v96 * v82)))) >= 0.0 )
        {
          LODWORD(result) = 1;
          v100 = 1;
        }
      }
      if ( v100 )
      {
        *(_WORD *)(*(_DWORD *)(a1 + 348) + 4 * LODWORD(v102)) = v40;
        v19 = LODWORD(v102) + 1;
        *(_WORD *)(*(_DWORD *)(a1 + 348) + 4 * LODWORD(v102) + 2) = v41;
        *(_WORD *)(*(_DWORD *)(a1 + 348) + 4 * v19) = v41;
        result = *(float *)(a1 + 348);
        LODWORD(v102) += 3;
        *(_WORD *)(LODWORD(result) + 4 * v19 + 2) = v34;
        v20 = 4 * (v19 + 1);
        *(_WORD *)(*(_DWORD *)(a1 + 348) + v20) = v34;
        *(_WORD *)(*(_DWORD *)(a1 + 348) + v20 + 2) = v40;
        if ( a7 )
        {
          v21 = *(_DWORD *)(a6 + 16);
          if ( v21 )
          {
            if ( *(_DWORD *)(a6 + 20) )
            {
              v105 = v40 + 1;
              v66 = *(_DWORD *)(a6 + 16);
              glitch::scene::CShadowVolumeSceneNode::getProjectedVertex(
                v113,
                a1,
                (float *)(v21 + 12 * v40),
                &v114,
                a5,
                1);
              v22 = (float *)(v66 + 12 * (v40 + 1));
              *v22 = v113[0];
              v22[1] = v113[1];
              v22[2] = v113[2];
              v67 = *(_DWORD *)(a6 + 16);
              glitch::scene::CShadowVolumeSceneNode::getProjectedVertex(
                v112,
                a1,
                (float *)(v67 + 12 * v41),
                &v114,
                a5,
                1);
              v23 = (float *)(v67 + 12 * (v41 + 1));
              *v23 = v112[0];
              LODWORD(v101) = v34 + 1;
              v23[1] = v112[1];
              v23[2] = v112[2];
              v68 = *(_DWORD *)(a6 + 16);
              glitch::scene::CShadowVolumeSceneNode::getProjectedVertex(
                v111,
                a1,
                (float *)(v68 + 12 * v34),
                &v114,
                a5,
                1);
              *(float *)(v68 + 12 * (v34 + 1)) = v111[0];
              v24 = v68 + 12 * (v34 + 1);
              *(float *)(v24 + 4) = v111[1];
              *(float *)(v24 + 8) = v111[2];
              v25 = (float *)(*(_DWORD *)(a6 + 16) + 12 * v40);
              v74 = v25[1] - v115;
              v59 = v25[2] - v116;
              v110[0] = *v25 - v114;
              v110[2] = v59;
              v110[1] = v74;
              v75 = glitch::core::vector3d<float>::normalize(v110);
              v60 = *(float *)(a1 + 392) * v75[1];
              v69 = *(float *)(a1 + 392) * v75[2];
              *v25 = *v25 + (float)(*(float *)(a1 + 392) * *v75);
              v25[1] = v25[1] + v60;
              v25[2] = v25[2] + v69;
              v26 = (float *)(*(_DWORD *)(a6 + 16) + 12 * v41);
              v76 = v26[1] - v115;
              v61 = v26[2] - v116;
              v109[0] = *v26 - v114;
              v109[2] = v61;
              v109[1] = v76;
              v77 = glitch::core::vector3d<float>::normalize(v109);
              v62 = *(float *)(a1 + 392) * v77[1];
              v70 = *(float *)(a1 + 392) * v77[2];
              *v26 = *v26 + (float)(*(float *)(a1 + 392) * *v77);
              v26[1] = v26[1] + v62;
              v26[2] = v26[2] + v70;
              v27 = (float *)(*(_DWORD *)(a6 + 16) + 12 * v34);
              v78 = v27[1] - v115;
              v63 = v27[2] - v116;
              v108[0] = *v27 - v114;
              v108[2] = v63;
              v108[1] = v78;
              v79 = glitch::core::vector3d<float>::normalize(v108);
              v64 = *(float *)(a1 + 392) * v79[1];
              v71 = *(float *)(a1 + 392) * v79[2];
              *v27 = *v27 + (float)(*(float *)(a1 + 392) * *v79);
              v27[1] = v27[1] + v64;
              v27[2] = v27[2] + v71;
              v28 = *(_DWORD *)(a6 + 24);
              *(_WORD *)(*(_DWORD *)(a6 + 20) + 2 * v28++) = v40;
              *(_WORD *)(*(_DWORD *)(a6 + 20) + 2 * v28++) = v41;
              *(_WORD *)(*(_DWORD *)(a6 + 20) + 2 * v28++) = v34;
              *(_WORD *)(*(_DWORD *)(a6 + 20) + 2 * v28++) = v40 + 1;
              *(_WORD *)(*(_DWORD *)(a6 + 20) + 2 * v28++) = v34 + 1;
              *(_WORD *)(*(_DWORD *)(a6 + 20) + 2 * v28) = v41 + 1;
              v29 = *(unsigned __int16 *)(a6 + 70);
              *(_DWORD *)(a6 + 24) = v28 + 1;
              v123 = v29;
              if ( v40 > v29 )
              {
                v30 = (int *)&v123;
              }
              else
              {
                v29 = v40;
                v30 = (int *)&v122;
              }
              v120[1] = v34;
              v122 = v40;
              v121 = v41;
              if ( v41 <= v29 )
                v30 = (int *)&v121;
              v31 = *v30;
              v32 = v40 + 1;
              v33 = *(unsigned __int16 *)(a6 + 72);
              if ( v34 >= v31 )
                LOWORD(v34) = v31;
              *(_WORD *)(a6 + 70) = v34;
              v35 = v33 >= v105;
              v120[0] = v33;
              result = v101;
              if ( v33 < v105 )
                v33 = (unsigned int)&v119;
              v119 = v40 + 1;
              if ( v35 )
              {
                v32 = v33;
                v33 = (unsigned int)v120;
              }
              v118 = v41 + 1;
              if ( v41 + 1 > v32 )
                v33 = (unsigned int)&v118;
              v117 = v101;
              v36 = *(_DWORD *)v33;
              if ( LODWORD(v101) >= *(_DWORD *)v33 )
                LOWORD(v36) = LOWORD(v101);
              *(_WORD *)(a6 + 72) = v36;
            }
          }
        }
      }
      v15 += 6;
      ++v92;
    }
    while ( v92 != a3 );
    if ( v102 != 0.0 )
    {
      v93 = 2;
      v44 = 0;
      v45 = a1;
      do
      {
        v46 = *(_DWORD *)(v45 + 348);
        v47 = *(_DWORD *)(a6 + 16);
        v48 = *(unsigned __int16 *)(v46 + 4 * v44);
        v49 = *(unsigned __int16 *)(v46 + v93);
        v50 = v48 + 1;
        glitch::scene::CShadowVolumeSceneNode::getProjectedVertex(v107, v45, (float *)(v47 + 12 * v48), &v114, a5, a7);
        *(float *)(v47 + 12 * (v48 + 1)) = v107[0];
        v51 = v47 + 12 * (v48 + 1);
        *(float *)(v51 + 4) = v107[1];
        v95 = 12 * (v49 + 1);
        *(float *)(v51 + 8) = v107[2];
        v52 = *(_DWORD *)(a6 + 16);
        glitch::scene::CShadowVolumeSceneNode::getProjectedVertex(v106, v45, (float *)(v52 + 12 * v49), &v114, a5, a7);
        v85 = v49 + 2;
        *(float *)(v52 + v95) = v106[0];
        v53 = v52 + v95;
        ++v44;
        *(float *)(v53 + 4) = v106[1];
        v93 += 4;
        *(float *)(v53 + 8) = v106[2];
        if ( *(_DWORD *)(a6 + 16) )
        {
          v54 = *(_DWORD *)(a6 + 20);
          if ( v54 )
          {
            v55 = *(_DWORD *)(a6 + 24);
            *(_WORD *)(v54 + 2 * v55++) = v48;
            *(_WORD *)(*(_DWORD *)(a6 + 20) + 2 * v55++) = v50;
            *(_WORD *)(*(_DWORD *)(a6 + 20) + 2 * v55++) = v49;
            *(_WORD *)(*(_DWORD *)(a6 + 20) + 2 * v55++) = v49;
            *(_WORD *)(*(_DWORD *)(a6 + 20) + 2 * v55++) = v50;
            *(_WORD *)(*(_DWORD *)(a6 + 20) + 2 * v55) = v49 + 1;
            *(_DWORD *)(a6 + 24) = v55 + 1;
          }
        }
        if ( v49 >= *(unsigned __int16 *)(a6 + 70) )
          v49 = *(unsigned __int16 *)(a6 + 70);
        if ( v49 >= v48 )
          LOWORD(v49) = v48;
        *(_WORD *)(a6 + 70) = v49;
        v56 = *(unsigned __int16 *)(a6 + 72);
        result = v102;
        if ( v85 >= v56 )
          v56 = v85;
        if ( v56 < v48 + 2 )
          LOWORD(v56) = v48 + 2;
        *(_WORD *)(a6 + 72) = v56;
      }
      while ( v44 != LODWORD(v102) );
    }
  }
  return result;
}


// ===== 6ff948 glitch::intrusive_ptr_release(glitch::ISharedMemoryBlockHeader<glitch::video::CVertexStreams> const*) =====
void __fastcall glitch::intrusive_ptr_release(glitch::video::CVertexStreams *a1)
{
  if ( (*(_DWORD *)a1)-- == 1 )
  {
    glitch::video::CVertexStreams::~CVertexStreams(a1);
    LC_API_FREE_0(a1);
  }
}


// ===== 6ff978 std::allocator<glitch::core::vector3d<float>>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<glitch::core::vector3d<float>>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x15555555 )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 12 * a2;
  if ( 12 * a2 > 0x80 )
    result = (void *)operator new(12 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n / 0xC;
  return result;
}


// ===== 6ff9fc std::allocator<glitch::core::vector3d<float>>::deallocate(glitch::core::vector3d<float>*,uint) =====
void __fastcall std::allocator<glitch::core::vector3d<float>>::deallocate(int a1, void *a2, int a3)
{
  if ( a2 )
  {
    if ( (unsigned int)(12 * a3) > 0x80 )
      LC_API_FREE_0(a2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(a2, 12 * a3);
  }
}


// ===== 6ffa1c glitch::scene::CShadowVolumeSceneNode::save(char *,bool,glitch::core::CMatrix4<float> const&) =====
int __fastcall glitch::scene::CShadowVolumeSceneNode::save(int a1, glitch::io *this, _BOOL4 a3, int a4)
{
  glitch::IReferenceCounted *v7; // r4
  int v8; // r5

  v7 = glitch::io::createWriteFile(this, nullptr, a3);
  v8 = (*(int (__fastcall **)(int, glitch::IReferenceCounted *, _BOOL4, int, _DWORD))(*(_DWORD *)a1 + 260))(
         a1,
         v7,
         a3,
         a4,
         0);
  glitch::IReferenceCounted::drop(v7);
  return v8;
}


// ===== 6ffa7c glitch::scene::CShadowVolumeSceneNode::onRegisterSceneNode(void) =====
int __fastcall glitch::scene::CShadowVolumeSceneNode::onRegisterSceneNode(glitch::scene::CShadowVolumeSceneNode *this)
{
  int v2; // r0
  void (__fastcall *v3)(int, glitch::scene::CShadowVolumeSceneNode *, glitch::video::CMaterial **, int, int, _DWORD, int); // r12
  int v4; // r2
  int v5; // r0
  void (__fastcall *v6)(int, glitch::scene::CShadowVolumeSceneNode *, glitch::video::CMaterial **, int, int, int, int); // r12
  glitch::video::CMaterial *v8; // [sp+10h] [bp-Ch] BYREF
  glitch::video::CMaterial *v9; // [sp+14h] [bp-8h] BYREF

  v2 = *((_DWORD *)this + 68);
  v3 = *(void (__fastcall **)(int, glitch::scene::CShadowVolumeSceneNode *, glitch::video::CMaterial **, int, int, _DWORD, int))(*(_DWORD *)v2 + 36);
  v9 = nullptr;
  v3(v2, this, &v9, 1, 5, 0, 0x7FFFFFFF);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v9);
  v4 = *((unsigned __int8 *)this + 304);
  if ( !*((_BYTE *)this + 304) )
  {
    v5 = *((_DWORD *)this + 68);
    v6 = *(void (__fastcall **)(int, glitch::scene::CShadowVolumeSceneNode *, glitch::video::CMaterial **, int, int, int, int))(*(_DWORD *)v5 + 36);
    v8 = (glitch::video::CMaterial *)*((unsigned __int8 *)this + 304);
    v6(v5, this, &v8, 2, 5, v4, 0x7FFFFFFF);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v8);
  }
  return 1;
}


// ===== 6ffb1c glitch::scene::CShadowVolumeSceneNode::CShadowVolumeSceneNode(glitch::video::IVideoDriver *,boost::intrusive_ptr<glitch::scene::IMesh const> const&,int,glitch::scene::E_SHADOW_VOLUME_TYPE,float) =====
int __fastcall glitch::scene::CShadowVolumeSceneNode::CShadowVolumeSceneNode(
        int a1,
        glitch::video::IVideoDriver *a2,
        int *a3,
        int a4,
        char a5,
        int a6)
{
  int v9; // r3
  char v10; // r3

  *(_DWORD *)(a1 + 400) = 1;
  *(_DWORD *)a1 = off_98F3FC;
  *(_DWORD *)(a1 + 396) = off_95B720;
  *(int *)((char *)&elf_hash_bucket[44] + a1) = (int)off_98F41C;
  glitch::scene::IShadowVolumeSceneNode::IShadowVolumeSceneNode(
    (glitch::scene::IShadowVolumeSceneNode *)a1,
    (int *)off_98F154,
    a4);
  *(_DWORD *)(a1 + 340) = 0;
  *(_DWORD *)(a1 + 308) = 0;
  *(_DWORD *)(a1 + 312) = 0;
  *(_DWORD *)a1 = off_98F02C;
  *(_DWORD *)(a1 + 396) = off_98F144;
  *(_DWORD *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 336) = 0;
  v9 = *a3;
  *(_DWORD *)(a1 + 344) = *a3;
  if ( v9 )
    ++*(_DWORD *)(v9 + 4);
  v10 = a5 & 0xF;
  if ( (a5 & 0xF) != 0 )
    v10 = 1;
  *(_DWORD *)(a1 + 368) = -1082130432;
  *(_DWORD *)(a1 + 380) = 1065353216;
  *(_BYTE *)(a1 + 391) = (a5 & 0xCC) != 0;
  *(_BYTE *)(a1 + 389) = v10;
  *(_BYTE *)(a1 + 390) = (a5 & 0xAA) != 0;
  *(_DWORD *)(a1 + 392) = 1056964608;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 356) = 0;
  *(_DWORD *)(a1 + 360) = -1082130432;
  *(_DWORD *)(a1 + 364) = -1082130432;
  *(_DWORD *)(a1 + 372) = 1065353216;
  *(_DWORD *)(a1 + 376) = 1065353216;
  *(_BYTE *)(a1 + 388) = v10;
  *(_DWORD *)(a1 + 384) = a6;
  glitch::scene::ISceneNode::setAutomaticCulling(a1, 0);
  glitch::scene::IShadowVolumeSceneNode::setupMaterials((glitch::scene::IShadowVolumeSceneNode *)a1, a2);
  return a1;
}


// ===== 6ffc70 glitch::scene::CShadowVolumeSceneNode::CShadowVolumeSceneNode(glitch::video::IVideoDriver *,boost::intrusive_ptr<glitch::scene::IMesh const> const&,int,glitch::scene::E_SHADOW_VOLUME_TYPE,float) =====
int __fastcall glitch::scene::CShadowVolumeSceneNode::CShadowVolumeSceneNode(
        int a1,
        int *a2,
        glitch::video::IVideoDriver *a3,
        int *a4,
        int a5,
        char a6,
        int a7)
{
  int v11; // r2
  int v12; // r3
  char v13; // r3

  glitch::scene::IShadowVolumeSceneNode::IShadowVolumeSceneNode((glitch::scene::IShadowVolumeSceneNode *)a1, a2 + 1, a5);
  v11 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v11 - 28)) = a2[7];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[8];
  *(_DWORD *)(a1 + 340) = 0;
  *(_DWORD *)(a1 + 308) = 0;
  *(_DWORD *)(a1 + 312) = 0;
  *(_DWORD *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 336) = 0;
  v12 = *a4;
  *(_DWORD *)(a1 + 344) = *a4;
  if ( v12 )
    ++*(_DWORD *)(v12 + 4);
  v13 = a6 & 0xF;
  if ( (a6 & 0xF) != 0 )
    v13 = 1;
  *(_DWORD *)(a1 + 380) = 1065353216;
  *(_DWORD *)(a1 + 368) = -1082130432;
  *(_BYTE *)(a1 + 391) = (a6 & 0xCC) != 0;
  *(_BYTE *)(a1 + 389) = v13;
  *(_BYTE *)(a1 + 390) = (a6 & 0xAA) != 0;
  *(_DWORD *)(a1 + 392) = 1056964608;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 356) = 0;
  *(_DWORD *)(a1 + 384) = a7;
  *(_DWORD *)(a1 + 360) = -1082130432;
  *(_DWORD *)(a1 + 364) = -1082130432;
  *(_DWORD *)(a1 + 372) = 1065353216;
  *(_DWORD *)(a1 + 376) = 1065353216;
  *(_BYTE *)(a1 + 388) = v13;
  glitch::scene::ISceneNode::setAutomaticCulling(a1, 0);
  glitch::scene::IShadowVolumeSceneNode::setupMaterials((glitch::scene::IShadowVolumeSceneNode *)a1, a3);
  return a1;
}


// ===== 6ffd88 glitch::scene::CShadowVolumeSceneNode::SSilhouette::~SSilhouette() =====
void __fastcall glitch::scene::CShadowVolumeSceneNode::SSilhouette::~SSilhouette(
        glitch::scene::CShadowVolumeSceneNode::SSilhouette *this)
{
  void *v2; // r0
  void *v3; // r0

  v2 = *((void **)this + 9);
  if ( v2 )
    operator delete[](v2);
  v3 = *((void **)this + 6);
  if ( v3 )
    GlitchFree(v3);
  glitch::scene::CMeshConnectivity::~CMeshConnectivity(this);
}


// ===== 6ffdc0 glitch::scene::CShadowVolumeSceneNode::SSilhouette::~SSilhouette() =====
void __fastcall glitch::scene::CShadowVolumeSceneNode::SSilhouette::~SSilhouette(
        glitch::scene::CShadowVolumeSceneNode::SSilhouette *this)
{
  void *v2; // r0
  void *v3; // r0

  v2 = *((void **)this + 9);
  if ( v2 )
    operator delete[](v2);
  v3 = *((void **)this + 6);
  if ( v3 )
    GlitchFree(v3);
  glitch::scene::CMeshConnectivity::~CMeshConnectivity(this);
}


// ===== 6ffdf8 glitch::scene::CShadowVolumeSceneNode::SSilhouette::SSilhouette(boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&) =====
_DWORD *__fastcall glitch::scene::CShadowVolumeSceneNode::SSilhouette::SSilhouette(_DWORD *a1)
{
  glitch::scene::CMeshConnectivity::CMeshConnectivity();
  a1[9] = 0;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  return a1;
}


// ===== 6ffe20 glitch::scene::CShadowVolumeSceneNode::SSilhouette::SSilhouette(boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&) =====
_DWORD *__fastcall glitch::scene::CShadowVolumeSceneNode::SSilhouette::SSilhouette(_DWORD *a1)
{
  glitch::scene::CMeshConnectivity::CMeshConnectivity();
  a1[9] = 0;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  return a1;
}


// ===== 6ffe48 std::vector<boost::intrusive_ptr<glitch::video::CLight>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::CLight>,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
char **__fastcall std::vector<boost::intrusive_ptr<glitch::video::CLight>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::CLight>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        void **a1)
{
  char *v1; // r4
  char *v2; // r5
  _DWORD *v4; // r3
  _DWORD *v6; // r1

  v1 = (char *)a1[1];
  v2 = (char *)*a1;
  if ( v1 != *a1 )
  {
    do
    {
      v4 = *((_DWORD **)v1 - 1);
      v1 -= 4;
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
    }
    while ( v2 != v1 );
  }
  if ( *a1 )
    GlitchFree(*a1);
  return (char **)a1;
}


// ===== 6ffee4 glitch::scene::CShadowVolumeSceneNode::save(glitch::io::IWriteFile *,bool,glitch::core::CMatrix4<float> const&,glitch::os::E_ENDIAN) =====
int __fastcall glitch::scene::CShadowVolumeSceneNode::save(int a1, int *a2, int a3, float *a4, int a5)
{
  int v5; // r4
  __int16 v9; // r2
  int v10; // r6
  __int16 v11; // r3
  int v12; // r4
  int v13; // r4
  char v14; // r1
  char v15; // r2
  char v16; // r3
  int v17; // r0
  char v18; // r2
  char v19; // r3
  int v20; // r7
  int v21; // r0
  char v22; // r1
  char v23; // r2
  char v24; // r3
  int v25; // r7
  int v26; // r0
  char v27; // r1
  char v28; // r2
  char v29; // r3
  int v30; // r4
  int v31; // r0
  char v32; // r1
  char v33; // r2
  char v34; // r3
  int v35; // r3
  int v36; // r4
  int v37; // r0
  char v38; // r3
  char v39; // r1
  char v40; // r2
  float v41; // r3
  int v42; // r4
  int v43; // r0
  unsigned int v44; // r2
  int v45; // r3
  float v46; // r0
  int v47; // lr
  float v48; // r12
  unsigned int v49; // r1
  int v50; // r0
  int v51; // r3
  unsigned __int16 *v52; // r12
  int v53; // r0
  unsigned int v54; // r2
  int v55; // r1
  int v56; // r8
  int v57; // r0
  int v58; // lr
  unsigned __int16 *v59; // r2
  void *v60; // r12
  int v61; // r6
  int v62; // r3
  void *v63; // r4
  unsigned __int16 *v64; // r8
  int v65; // r2
  int v66; // r7
  int v67; // r1
  int v68; // r2
  int v69; // r1
  float v70; // r11
  int v71; // r2
  float v72; // r9
  float *v73; // r10
  unsigned __int16 v74; // r2
  int v75; // r1
  unsigned int v76; // lr
  _DWORD *v77; // r0
  char *v78; // r2
  _DWORD *v79; // r9
  int v80; // r10
  float *v81; // r2
  int v82; // r0
  _DWORD *v83; // r1
  int v84; // lr
  float *v85; // r10
  float v86; // r3
  int v87; // r4
  int v88; // r4
  float v89; // r3
  int v90; // r4
  int v91; // r4
  __int16 v92; // r3
  int v93; // r4
  int v94; // r9
  int v95; // r11
  int v96; // r10
  int v97; // r7
  int v98; // r3
  int v99; // r0
  unsigned __int16 *v100; // [sp+0h] [bp-9Ch]
  void *v101; // [sp+0h] [bp-9Ch]
  int v102; // [sp+4h] [bp-98h]
  float v103; // [sp+8h] [bp-94h]
  int v104; // [sp+Ch] [bp-90h]
  _WORD *v105; // [sp+14h] [bp-88h]
  int v106; // [sp+2Ch] [bp-70h]
  int v107; // [sp+34h] [bp-68h]
  int v109; // [sp+40h] [bp-5Ch]
  int v110; // [sp+4Ch] [bp-50h]
  float v111; // [sp+50h] [bp-4Ch]
  float v112; // [sp+54h] [bp-48h]
  float v113; // [sp+54h] [bp-48h]
  float v114; // [sp+58h] [bp-44h]
  float v115; // [sp+58h] [bp-44h]
  char *v116; // [sp+5Ch] [bp-40h]
  float *v117; // [sp+60h] [bp-3Ch]
  float *v118; // [sp+64h] [bp-38h] BYREF
  char v119[8]; // [sp+68h] [bp-34h] BYREF
  size_t v120; // [sp+70h] [bp-2Ch] BYREF
  float v121; // [sp+74h] [bp-28h]
  float v122; // [sp+78h] [bp-24h] BYREF
  float v123; // [sp+7Ch] [bp-20h] BYREF
  float v124; // [sp+80h] [bp-1Ch]
  float v125; // [sp+84h] [bp-18h]
  float v126; // [sp+88h] [bp-14h] BYREF
  __int16 v127; // [sp+8Ch] [bp-10h]
  __int16 v128; // [sp+8Eh] [bp-Eh] BYREF
  __int16 v129; // [sp+90h] [bp-Ch] BYREF
  __int16 v130; // [sp+92h] [bp-Ah]
  __int16 v131; // [sp+94h] [bp-8h]
  __int16 v132; // [sp+96h] [bp-6h] BYREF

  v5 = a3;
  if ( !a3 )
    return v5;
  (*(void (**)(void))(*(_DWORD *)a1 + 248))();
  strcpy(v119, "STSV");
  v10 = (*(int (__fastcall **)(int *, char *, int))(*a2 + 12))(a2, v119, 4);
  if ( a5 == 1 )
  {
    v9 = 4660;
    LOWORD(v121) = 13330;
    v11 = 13330;
  }
  else
  {
    v11 = 4660;
  }
  if ( a5 == 1 )
    v131 = v9;
  v132 = v11;
  v12 = (*(int (__fastcall **)(int *, __int16 *, int))(*a2 + 12))(a2, &v132, 2);
  v13 = v12 + (*(int (__fastcall **)(int *, int, int))(*a2 + 12))(a2, a1 + 390, 1) + v10;
  if ( a5 == 1 )
  {
    v14 = *(_BYTE *)(a1 + 362);
    v15 = *(_BYTE *)(a1 + 361);
    v16 = *(_BYTE *)(a1 + 360);
    LOBYTE(v121) = *(_BYTE *)(a1 + 363);
    BYTE1(v121) = v14;
    BYTE2(v121) = v15;
    HIBYTE(v121) = v16;
    v126 = v121;
    v17 = (*(int (__fastcall **)(int *, float *, int))(*a2 + 12))(a2, &v126, 4);
    v18 = *(_BYTE *)(a1 + 365);
    v19 = *(_BYTE *)(a1 + 364);
    v20 = v17;
    LOBYTE(v17) = *(_BYTE *)(a1 + 367);
    BYTE1(v121) = *(_BYTE *)(a1 + 366);
    BYTE2(v121) = v18;
    LOBYTE(v121) = v17;
    HIBYTE(v121) = v19;
    v126 = v121;
    v21 = (*(int (__fastcall **)(int *, float *, int))(*a2 + 12))(a2, &v126, 4);
    v22 = *(_BYTE *)(a1 + 370);
    v23 = *(_BYTE *)(a1 + 369);
    v24 = *(_BYTE *)(a1 + 368);
    LOBYTE(v121) = *(_BYTE *)(a1 + 371);
    BYTE1(v121) = v22;
    BYTE2(v121) = v23;
    HIBYTE(v121) = v24;
    v25 = v20 + v21;
    v126 = v121;
    v26 = (*(int (__fastcall **)(int *, float *, int))(*a2 + 12))(a2, &v126, 4);
    v27 = *(_BYTE *)(a1 + 374);
    v28 = *(_BYTE *)(a1 + 373);
    v29 = *(_BYTE *)(a1 + 372);
    LOBYTE(v121) = *(_BYTE *)(a1 + 375);
    BYTE1(v121) = v27;
    BYTE2(v121) = v28;
    HIBYTE(v121) = v29;
    v30 = v25 + v13 + v26;
    v126 = v121;
    v31 = (*(int (__fastcall **)(int *, float *, int))(*a2 + 12))(a2, &v126, 4);
    v32 = *(_BYTE *)(a1 + 378);
    v33 = *(_BYTE *)(a1 + 377);
    v34 = *(_BYTE *)(a1 + 376);
    LOBYTE(v121) = *(_BYTE *)(a1 + 379);
    BYTE1(v121) = v32;
    BYTE2(v121) = v33;
    HIBYTE(v121) = v34;
    v35 = *a2;
    v36 = v30 + v31;
    v126 = v121;
    v37 = (*(int (__fastcall **)(int *, float *, int))(v35 + 12))(a2, &v126, 4);
    v38 = *(_BYTE *)(a1 + 380);
    v39 = *(_BYTE *)(a1 + 382);
    v40 = *(_BYTE *)(a1 + 381);
    LOBYTE(v121) = *(_BYTE *)(a1 + 383);
    BYTE1(v121) = v39;
    BYTE2(v121) = v40;
    HIBYTE(v121) = v38;
    v41 = v121;
    v42 = v36 + v37;
  }
  else
  {
    v126 = *(float *)(a1 + 360);
    v94 = (*(int (__fastcall **)(int *, float *, int))(*a2 + 12))(a2, &v126, 4);
    v126 = *(float *)(a1 + 364);
    v95 = (*(int (__fastcall **)(int *, float *, int))(*a2 + 12))(a2, &v126, 4);
    v126 = *(float *)(a1 + 368);
    v96 = (*(int (__fastcall **)(int *, float *, int))(*a2 + 12))(a2, &v126, 4);
    v126 = *(float *)(a1 + 372);
    v97 = (*(int (__fastcall **)(int *, float *, int))(*a2 + 12))(a2, &v126, 4);
    v98 = *a2;
    v126 = *(float *)(a1 + 376);
    v99 = (*(int (__fastcall **)(int *, float *, int))(v98 + 12))(a2, &v126, 4);
    v41 = *(float *)(a1 + 380);
    v42 = v97 + v94 + v13 + v99 + v95 + v96;
  }
  v126 = v41;
  v43 = (*(int (__fastcall **)(int *, float *, int))(*a2 + 12))(a2, &v126, 4);
  v44 = *(_DWORD *)(a1 + 356);
  v45 = 0;
  v110 = v43 + v42;
  v125 = 0.0;
  v124 = 0.0;
  if ( v44 )
  {
    v47 = *(_DWORD *)(a1 + 308);
    v48 = 0.0;
    v49 = 0;
    do
    {
      ++v49;
      LODWORD(v48) += *(_DWORD *)(v47 + v45 + 24);
      v124 = v48;
      v50 = *(_DWORD *)(v47 + v45 + 28);
      v45 += 76;
      LODWORD(v46) = LODWORD(v125) + v50;
      v125 = v46;
    }
    while ( v44 > v49 );
  }
  else
  {
    v46 = 0.0;
  }
  v100 = (unsigned __int16 *)operator new[](2 * LODWORD(v46), 0);
  LC_API_MEMSET_0(v100, 0xFFFF, 2 * LODWORD(v125));
  v105 = operator new[](2 * LODWORD(v124), 0);
  v51 = *(_DWORD *)(a1 + 236);
  v125 = 0.0;
  v116 = nullptr;
  v117 = nullptr;
  v118 = nullptr;
  v52 = v100;
  if ( v51 )
  {
    v53 = (*(int (__fastcall **)(int))(*(_DWORD *)v51 + 56))(v51);
    v52 = v100;
    a4 = (float *)v53;
  }
  v54 = *(_DWORD *)(a1 + 356);
  if ( !v54 )
    goto LABEL_45;
  v55 = *(_DWORD *)(a1 + 308);
  v104 = a1;
  v109 = 0;
  v107 = 0;
  v106 = 0;
  v56 = 0;
  while ( 2 )
  {
    v57 = v55 + v56;
    v58 = v55 + v56;
    if ( !*(_DWORD *)(v55 + v56 + 24) )
      goto LABEL_31;
    v59 = v52;
    v60 = *(void **)(v55 + v56 + 24);
    v61 = v109;
    v62 = v56;
    v63 = nullptr;
    v64 = v59;
    while ( 1 )
    {
      v65 = (unsigned __int16)(v106 + *(_WORD *)(*(_DWORD *)(v57 + 20) + 2 * (_DWORD)v63));
      v66 = v65;
      v67 = v64[v65];
      if ( v67 == 0xFFFF )
        break;
      v63 = (char *)v63 + 1;
      v105[v61] = v67;
      v61 = (unsigned __int16)(v61 + 1);
      if ( v63 == v60 )
        goto LABEL_30;
LABEL_21:
      v57 = *(_DWORD *)(v104 + 308) + v62;
    }
    v68 = 12 * (v65 - v106);
    v69 = *(_DWORD *)(v57 + 16);
    v70 = *(float *)(v69 + v68);
    v71 = v69 + v68;
    v112 = *(float *)(v71 + 4);
    v114 = *(float *)(v71 + 8);
    v102 = v62;
    v101 = v60;
    v103 = (float)((float)((float)(v70 * a4[2]) + (float)(v112 * a4[6])) + (float)(v114 * a4[10])) + a4[14];
    v111 = (float)((float)((float)(v70 * *a4) + (float)(v112 * a4[4])) + (float)(v114 * a4[8])) + a4[12];
    v113 = (float)((float)((float)(v70 * a4[1]) + (float)(v112 * a4[5])) + (float)(v114 * a4[9])) + a4[13];
    v115 = v103;
    if ( a5 == 1 )
    {
      LOBYTE(v121) = HIBYTE(v111);
      BYTE1(v121) = BYTE2(v111);
      BYTE2(v121) = BYTE1(v111);
      HIBYTE(v121) = LOBYTE(v111);
      v72 = v121;
      LOBYTE(v121) = HIBYTE(v113);
      BYTE1(v121) = BYTE2(v113);
      BYTE2(v121) = BYTE1(v113);
      HIBYTE(v121) = LOBYTE(v113);
      v111 = v72;
      v113 = v121;
      LOBYTE(v121) = HIBYTE(v103);
      BYTE1(v121) = BYTE2(v103);
      BYTE2(v121) = BYTE1(v103);
      HIBYTE(v121) = LOBYTE(v103);
      v115 = v121;
    }
    v73 = v118;
    if ( v117 == v118 )
    {
      v75 = ((char *)v118 - v116) >> 2;
      if ( -1431655765 * v75 )
        v76 = 1431655766 * v75;
      else
        v76 = 1;
      if ( v76 > 0x15555555 || -1431655765 * v75 > v76 )
        v76 = 357913941;
      v120 = v76;
      v77 = std::allocator<glitch::core::vector3d<float>>::_M_allocate((int)&v118, v76, &v120);
      v78 = v116;
      v79 = v77;
      v80 = -1431655765 * (((char *)v73 - v116) >> 2);
      if ( v80 > 0 )
      {
        v82 = v80;
        v83 = v79;
        do
        {
          --v82;
          *v83 = *(_DWORD *)v78;
          v83[1] = *((_DWORD *)v78 + 1);
          v84 = *((_DWORD *)v78 + 2);
          v78 += 12;
          v83[2] = v84;
          v83 += 3;
        }
        while ( v82 );
        v81 = (float *)&v79[3 * v80];
      }
      else
      {
        v81 = (float *)v77;
      }
      v85 = v81 + 3;
      *v81 = v111;
      v81[1] = v113;
      v81[2] = v115;
      std::allocator<glitch::core::vector3d<float>>::deallocate(
        (int)&v118,
        v116,
        -1431655765 * (((char *)v118 - v116) >> 2));
      v116 = (char *)v79;
      v117 = v85;
      v118 = (float *)&v79[3 * v120];
      v60 = v101;
      v62 = v102;
    }
    else
    {
      *v117 = v111;
      v117[1] = v113;
      v117[2] = v115;
      v117 += 3;
    }
    v74 = LOWORD(v125);
    v130 = LOWORD(v125);
    if ( a5 == 1 )
    {
      LOBYTE(v121) = HIBYTE(v130);
      BYTE1(v121) = v130;
      v74 = LOWORD(v121);
      v130 = LOWORD(v121);
    }
    v64[v66] = v74;
    v63 = (char *)v63 + 1;
    v105[v61] = v130;
    ++LODWORD(v125);
    v61 = (unsigned __int16)(v61 + 1);
    if ( v63 != v60 )
      goto LABEL_21;
LABEL_30:
    v52 = v64;
    v56 = v62;
    v55 = *(_DWORD *)(v104 + 308);
    v54 = *(_DWORD *)(v104 + 356);
    v109 = (unsigned __int16)(v109 + (_WORD)v63);
    v58 = v55 + v62;
LABEL_31:
    v56 += 76;
    if ( v54 > ++v107 )
    {
      v106 += *(_DWORD *)(v58 + 28);
      continue;
    }
    break;
  }
LABEL_45:
  if ( v52 )
    operator delete[](v52);
  if ( a5 == 1 )
  {
    LOBYTE(v121) = HIBYTE(v125);
    BYTE1(v121) = BYTE2(v125);
    BYTE2(v121) = BYTE1(v125);
    HIBYTE(v121) = LOBYTE(v125);
    v86 = v121;
  }
  else
  {
    v86 = v125;
  }
  v123 = v86;
  v87 = v110 + (*(int (__fastcall **)(int *, float *, int))(*a2 + 12))(a2, &v123, 4);
  v88 = v87 + (*(int (__fastcall **)(int *, char *, int))(*a2 + 12))(a2, v116, 12 * LODWORD(v125));
  if ( a5 == 1 )
  {
    LOBYTE(v121) = HIBYTE(v124);
    BYTE1(v121) = BYTE2(v124);
    BYTE2(v121) = BYTE1(v124);
    HIBYTE(v121) = LOBYTE(v124);
    v89 = v121;
  }
  else
  {
    v89 = v124;
  }
  v122 = v89;
  v90 = v88 + (*(int (__fastcall **)(int *, float *, int))(*a2 + 12))(a2, &v122, 4);
  v91 = v90 + (*(int (__fastcall **)(int *, _WORD *, int))(*a2 + 12))(a2, v105, 2 * LODWORD(v124));
  if ( v105 )
    operator delete[](v105);
  v92 = LOWORD(v125);
  v129 = 0;
  if ( a5 == 1 )
  {
    LOBYTE(v121) = BYTE1(v125);
    BYTE1(v121) = LOBYTE(v125);
    v127 = LOWORD(v125);
    v92 = LOWORD(v121);
  }
  v128 = v92;
  v93 = v91 + (*(int (__fastcall **)(int *, __int16 *, int))(*a2 + 12))(a2, &v129, 2);
  v5 = v93 + (*(int (__fastcall **)(int *, __int16 *, int))(*a2 + 12))(a2, &v128, 2);
  if ( v116 )
    std::allocator<glitch::core::vector3d<float>>::deallocate(
      (int)&v118,
      v116,
      -1431655765 * (((char *)v118 - v116) >> 2));
  return v5;
}


// ===== 700a18 std::vector<std::pair<ushort,ushort>,glitch::core::SAllocator<std::pair<ushort,ushort>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(std::pair<ushort,ushort>*,std::pair<ushort,ushort> const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<std::pair<unsigned short,unsigned short>,glitch::core::SAllocator<std::pair<unsigned short,unsigned short>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        int a1,
        int a2,
        _WORD *a3)
{
  unsigned int v6; // r3
  unsigned int v7; // r8
  size_t v8; // r8
  _WORD *v9; // r0
  const void *v10; // r1
  _WORD *v11; // r5
  size_t v12; // r6
  _WORD *v13; // r6

  v6 = (*(_DWORD *)(a1 + 4) - *(_DWORD *)a1) >> 2;
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0x3FFFFFFF || v6 > v7 )
  {
    v8 = -2;
    v9 = GlitchAlloc(0xFFFFFFFC, 0);
    v10 = *(const void **)a1;
    v11 = v9;
    v12 = a2 - *(_DWORD *)a1;
    if ( !v12 )
    {
      v13 = v9;
      goto LABEL_11;
    }
LABEL_14:
    v13 = (char *)memmove(v9, v10, v12) + v12;
    goto LABEL_11;
  }
  v8 = 2 * v7;
  v9 = GlitchAlloc(v8 * 2, 0);
  v10 = *(const void **)a1;
  v11 = v9;
  v12 = a2 - *(_DWORD *)a1;
  if ( v12 )
    goto LABEL_14;
  v13 = v9;
LABEL_11:
  *v13 = *a3;
  v13[1] = a3[1];
  GlitchFree(*(void **)a1);
  *(_DWORD *)a1 = v11;
  *(_DWORD *)(a1 + 4) = v13 + 2;
  *(_DWORD *)(a1 + 8) = &v11[v8];
}


// ===== 700ad4 glitch::scene::CShadowVolumeSceneNode::render(void *) =====
void __fastcall glitch::scene::CShadowVolumeSceneNode::render(glitch::scene::CShadowVolumeSceneNode *this, char *a2)
{
  int v2; // r3
  int v3; // r6
  bool v5; // zf
  void (__fastcall *v7)(int, int, int); // r8
  int v8; // r0
  int Technique; // r2
  int v10; // r4
  unsigned int v11; // r7
  int v12; // r2
  void (__fastcall *v13)(int, glitch::video::CVertexStreams **, int, _DWORD, glitch::IReferenceCounted **); // r12
  glitch::video::CVertexStreams *v14; // r11
  glitch::IReferenceCounted *v15; // [sp+8h] [bp-Ch] BYREF
  glitch::video::CVertexStreams *v16; // [sp+Ch] [bp-8h] BYREF

  v2 = *((_DWORD *)this + 89);
  v3 = *(_DWORD *)(*((_DWORD *)this + 68) + 20);
  v5 = v2 == 0;
  if ( v2 )
    v5 = v3 == 0;
  if ( !v5 )
  {
    v7 = *(void (__fastcall **)(int, int, int))(*(_DWORD *)v3 + 108);
    v8 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 59) + 56))(*((_DWORD *)this + 59));
    v7(v3, 1, v8);
    if ( a2 == (_BYTE *)&dword_0 + 1 )
    {
      if ( *((_BYTE *)this + 390) )
        *(_BYTE *)(glitch::scene::IShadowVolumeSceneNode::Material + 8) = glitch::scene::IShadowVolumeSceneNode::TechniqueZFail;
      else
        *(_BYTE *)(glitch::scene::IShadowVolumeSceneNode::Material + 8) = glitch::scene::IShadowVolumeSceneNode::TechniqueZPass;
    }
    else if ( a2 == (_BYTE *)&dword_0 + 2 )
    {
      if ( *((_BYTE *)this + 390) )
        *(_BYTE *)(glitch::scene::IShadowVolumeSceneNode::Material + 8) = byte_99B5E9;
      else
        *(_BYTE *)(glitch::scene::IShadowVolumeSceneNode::Material + 8) = byte_99B5E5;
    }
    if ( glitch::scene::IShadowVolumeSceneNode::Material )
      Technique = glitch::video::CMaterial::getTechnique((glitch::video::CMaterial *)glitch::scene::IShadowVolumeSceneNode::Material);
    else
      Technique = 255;
    glitch::video::IVideoDriver::setMaterial(
      v3,
      (glitch::video::CMaterial **)&glitch::scene::IShadowVolumeSceneNode::Material,
      Technique,
      0);
    if ( *((_DWORD *)this + 89) )
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = *((_DWORD *)this + 77);
        ++v11;
        v16 = *(glitch::video::CVertexStreams **)(v12 + v10 + 32);
        if ( v16 )
        {
          ++*(_DWORD *)v16;
          v12 = *((_DWORD *)this + 77);
        }
        v13 = *(void (__fastcall **)(int, glitch::video::CVertexStreams **, int, _DWORD, glitch::IReferenceCounted **))(*(_DWORD *)v3 + 88);
        v15 = nullptr;
        v13(v3, &v16, v12 + v10 + 44, 0, &v15);
        v10 += 76;
        if ( v15 )
          glitch::IReferenceCounted::drop(v15);
        v14 = v16;
        if ( v16 )
        {
          v5 = (*(_DWORD *)v16)-- == 1;
          if ( v5 )
          {
            glitch::video::CVertexStreams::~CVertexStreams(v14);
            LC_API_FREE_0(v14);
          }
        }
      }
      while ( *((_DWORD *)this + 89) > v11 );
    }
  }
}


// ===== 700ce4 glitch::scene::CShadowVolumeSceneNode::SShadowVolume::operator=(glitch::scene::CShadowVolumeSceneNode::SShadowVolume const&) =====
int __fastcall glitch::scene::CShadowVolumeSceneNode::SShadowVolume::operator=(int a1, int a2)
{
  _DWORD *v4; // r3
  glitch::video::CVertexStreams *v5; // r6
  int v7; // r3
  glitch::IReferenceCounted *v8; // r0
  int v9; // r3
  glitch::IReferenceCounted *v10; // r0
  int v11; // r3
  glitch::IReferenceCounted *v12; // r0

  *(_DWORD *)a1 = *(_DWORD *)a2;
  *(_DWORD *)(a1 + 4) = *(_DWORD *)(a2 + 4);
  *(_DWORD *)(a1 + 8) = *(_DWORD *)(a2 + 8);
  *(_DWORD *)(a1 + 12) = *(_DWORD *)(a2 + 12);
  *(_DWORD *)(a1 + 16) = *(_DWORD *)(a2 + 16);
  *(_DWORD *)(a1 + 20) = *(_DWORD *)(a2 + 20);
  *(_DWORD *)(a1 + 24) = *(_DWORD *)(a2 + 24);
  *(_DWORD *)(a1 + 28) = *(_DWORD *)(a2 + 28);
  v4 = *(_DWORD **)(a2 + 32);
  if ( v4 )
    ++*v4;
  v5 = *(glitch::video::CVertexStreams **)(a1 + 32);
  *(_DWORD *)(a1 + 32) = v4;
  if ( v5 )
  {
    if ( (*(_DWORD *)v5)-- == 1 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v5);
      LC_API_FREE_0(v5);
    }
  }
  v7 = *(_DWORD *)(a2 + 36);
  if ( v7 )
    ++*(_DWORD *)(v7 + 4);
  v8 = *(glitch::IReferenceCounted **)(a1 + 36);
  *(_DWORD *)(a1 + 36) = v7;
  if ( v8 )
    glitch::IReferenceCounted::drop(v8);
  v9 = *(_DWORD *)(a2 + 40);
  if ( v9 )
    ++*(_DWORD *)(v9 + 4);
  v10 = *(glitch::IReferenceCounted **)(a1 + 40);
  *(_DWORD *)(a1 + 40) = v9;
  if ( v10 )
    glitch::IReferenceCounted::drop(v10);
  v11 = *(_DWORD *)(a2 + 44);
  if ( v11 )
    ++*(_DWORD *)(v11 + 4);
  v12 = *(glitch::IReferenceCounted **)(a1 + 44);
  *(_DWORD *)(a1 + 44) = v11;
  if ( v12 )
    glitch::IReferenceCounted::drop(v12);
  *(_DWORD *)(a1 + 48) = *(_DWORD *)(a2 + 48);
  *(_DWORD *)(a1 + 52) = *(_DWORD *)(a2 + 52);
  *(_DWORD *)(a1 + 56) = *(_DWORD *)(a2 + 56);
  *(_DWORD *)(a1 + 60) = *(_DWORD *)(a2 + 60);
  *(_WORD *)(a1 + 64) = *(_WORD *)(a2 + 64);
  *(_WORD *)(a1 + 66) = *(_WORD *)(a2 + 66);
  *(_WORD *)(a1 + 68) = *(_WORD *)(a2 + 68);
  *(_WORD *)(a1 + 70) = *(_WORD *)(a2 + 70);
  *(_WORD *)(a1 + 72) = *(_WORD *)(a2 + 72);
  return a1;
}


// ===== 700e44 glitch::scene::CShadowVolumeSceneNode::SShadowVolume::~SShadowVolume() =====
void __fastcall glitch::scene::CShadowVolumeSceneNode::SShadowVolume::~SShadowVolume(
        glitch::scene::CShadowVolumeSceneNode::SSilhouette **this)
{
  glitch::scene::CShadowVolumeSceneNode::SSilhouette *v1; // r5
  void *v3; // r0
  void *v4; // r0
  glitch::IReferenceCounted *v5; // r0
  glitch::IReferenceCounted *v6; // r0
  glitch::IReferenceCounted *v7; // r0
  glitch::video::CVertexStreams *v8; // r5

  v1 = *this;
  if ( *this )
  {
    glitch::scene::CShadowVolumeSceneNode::SSilhouette::~SSilhouette(*this);
    LC_API_FREE_0(v1);
  }
  v3 = *(this + 4);
  if ( v3 )
    operator delete[](v3);
  v4 = *(this + 5);
  if ( v4 )
    operator delete[](v4);
  v5 = *(this + 11);
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  v6 = *(this + 10);
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  v7 = *(this + 9);
  if ( v7 )
    glitch::IReferenceCounted::drop(v7);
  v8 = *(this + 8);
  if ( v8 )
  {
    if ( (*(_DWORD *)v8)-- == 1 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v8);
      LC_API_FREE_0(v8);
    }
  }
}


// ===== 700ef8 std::vector<glitch::scene::CShadowVolumeSceneNode::SShadowVolume,glitch::core::SAllocator<glitch::scene::CShadowVolumeSceneNode::SShadowVolume,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
glitch::scene::CShadowVolumeSceneNode::SSilhouette ***__fastcall std::vector<glitch::scene::CShadowVolumeSceneNode::SShadowVolume,glitch::core::SAllocator<glitch::scene::CShadowVolumeSceneNode::SShadowVolume,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        glitch::scene::CShadowVolumeSceneNode::SSilhouette ***a1)
{
  glitch::scene::CShadowVolumeSceneNode::SSilhouette **v1; // r4
  glitch::scene::CShadowVolumeSceneNode::SSilhouette **v2; // r5

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 -= 19;
    glitch::scene::CShadowVolumeSceneNode::SShadowVolume::~SShadowVolume(v1);
  }
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 700f3c std::vector<glitch::scene::CShadowVolumeSceneNode::SShadowVolume,glitch::core::SAllocator<glitch::scene::CShadowVolumeSceneNode::SShadowVolume,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::scene::CShadowVolumeSceneNode::SShadowVolume*,glitch::scene::CShadowVolumeSceneNode::SShadowVolume*,std::__false_type const&) =====
glitch::scene::CShadowVolumeSceneNode::SShadowVolume *__fastcall std::vector<glitch::scene::CShadowVolumeSceneNode::SShadowVolume,glitch::core::SAllocator<glitch::scene::CShadowVolumeSceneNode::SShadowVolume,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        glitch::scene::CShadowVolumeSceneNode::SShadowVolume *this,
        int a3)
{
  glitch::scene::CShadowVolumeSceneNode::SShadowVolume *v3; // r4
  int v7; // r10
  glitch::scene::CShadowVolumeSceneNode::SShadowVolume *v8; // r10
  int v9; // r6
  int v10; // r4
  glitch::scene::CShadowVolumeSceneNode::SSilhouette **v11; // r6
  glitch::scene::CShadowVolumeSceneNode::SSilhouette **v12; // r0

  v3 = *(glitch::scene::CShadowVolumeSceneNode::SShadowVolume **)(a1 + 4);
  v7 = 678152731 * (((int)v3 - a3) >> 2);
  if ( v7 > 0 )
  {
    v9 = 678152731 * (((int)v3 - a3) >> 2);
    v10 = 0;
    do
    {
      glitch::scene::CShadowVolumeSceneNode::SShadowVolume::operator=((int)this + v10, a3 + v10);
      --v9;
      v10 += 76;
    }
    while ( v9 );
    v8 = (glitch::scene::CShadowVolumeSceneNode::SShadowVolume *)((char *)this + 76 * v7);
    v3 = *(glitch::scene::CShadowVolumeSceneNode::SShadowVolume **)(a1 + 4);
  }
  else
  {
    v8 = this;
  }
  if ( v3 != v8 )
  {
    v11 = (glitch::scene::CShadowVolumeSceneNode::SSilhouette **)v8;
    do
    {
      v12 = v11;
      v11 += 19;
      glitch::scene::CShadowVolumeSceneNode::SShadowVolume::~SShadowVolume(v12);
    }
    while ( v3 != (glitch::scene::CShadowVolumeSceneNode::SShadowVolume *)v11 );
  }
  *(_DWORD *)(a1 + 4) = v8;
  return this;
}


// ===== 700fd4 glitch::scene::CShadowVolumeSceneNode::~CShadowVolumeSceneNode() =====
void __fastcall glitch::scene::CShadowVolumeSceneNode::~CShadowVolumeSceneNode(
        glitch::scene::CShadowVolumeSceneNode *this)
{
  void *v2; // r0
  glitch::scene::CShadowVolumeSceneNode::SShadowVolume *v3; // r1
  int v4; // r2
  glitch::IReferenceCounted *v5; // r0
  void *v6; // r0

  v2 = *((void **)this + 87);
  *(_DWORD *)this = off_98F02C;
  *((_DWORD *)this + 99) = off_98F144;
  if ( v2 )
    operator delete[](v2);
  v3 = *((glitch::scene::CShadowVolumeSceneNode::SShadowVolume **)this + 77);
  v4 = *((_DWORD *)this + 78);
  if ( v3 != (glitch::scene::CShadowVolumeSceneNode::SShadowVolume *)v4 )
    std::vector<glitch::scene::CShadowVolumeSceneNode::SShadowVolume,glitch::core::SAllocator<glitch::scene::CShadowVolumeSceneNode::SShadowVolume,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 308,
      v3,
      v4);
  glitch::scene::IShadowVolumeSceneNode::unSetupMaterials(this);
  v5 = *((glitch::IReferenceCounted **)this + 86);
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  v6 = *((void **)this + 83);
  if ( v6 )
    GlitchFree(v6);
  std::vector<boost::intrusive_ptr<glitch::video::CLight>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::CLight>,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 80);
  std::vector<glitch::scene::CShadowVolumeSceneNode::SShadowVolume,glitch::core::SAllocator<glitch::scene::CShadowVolumeSceneNode::SShadowVolume,(glitch::memory::E_MEMORY_HINT)0>>::~vector((glitch::scene::CShadowVolumeSceneNode::SSilhouette ***)this + 77);
  glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode(this, (int *)off_98F154);
}


// ===== 701094 glitch::scene::CShadowVolumeSceneNode::~CShadowVolumeSceneNode() =====
void __fastcall glitch::scene::CShadowVolumeSceneNode::~CShadowVolumeSceneNode(
        glitch::scene::CShadowVolumeSceneNode *this)
{
  glitch::scene::CShadowVolumeSceneNode::~CShadowVolumeSceneNode(this);
  LC_API_FREE_0(this);
}


// ===== 7010b0 glitch::scene::CShadowVolumeSceneNode::~CShadowVolumeSceneNode() =====
void __fastcall glitch::scene::CShadowVolumeSceneNode::~CShadowVolumeSceneNode(
        glitch::scene::CShadowVolumeSceneNode *this,
        int *a2)
{
  int v2; // r3
  void *v5; // r0
  glitch::scene::CShadowVolumeSceneNode::SShadowVolume *v6; // r1
  int v7; // r2
  glitch::IReferenceCounted *v8; // r0
  void *v9; // r0

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 28)) = a2[7];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[8];
  v5 = *((void **)this + 87);
  if ( v5 )
    operator delete[](v5);
  v6 = *((glitch::scene::CShadowVolumeSceneNode::SShadowVolume **)this + 77);
  v7 = *((_DWORD *)this + 78);
  if ( v6 != (glitch::scene::CShadowVolumeSceneNode::SShadowVolume *)v7 )
    std::vector<glitch::scene::CShadowVolumeSceneNode::SShadowVolume,glitch::core::SAllocator<glitch::scene::CShadowVolumeSceneNode::SShadowVolume,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 308,
      v6,
      v7);
  glitch::scene::IShadowVolumeSceneNode::unSetupMaterials(this);
  v8 = *((glitch::IReferenceCounted **)this + 86);
  if ( v8 )
    glitch::IReferenceCounted::drop(v8);
  v9 = *((void **)this + 83);
  if ( v9 )
    GlitchFree(v9);
  std::vector<boost::intrusive_ptr<glitch::video::CLight>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::CLight>,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 80);
  std::vector<glitch::scene::CShadowVolumeSceneNode::SShadowVolume,glitch::core::SAllocator<glitch::scene::CShadowVolumeSceneNode::SShadowVolume,(glitch::memory::E_MEMORY_HINT)0>>::~vector((glitch::scene::CShadowVolumeSceneNode::SSilhouette ***)this + 77);
  glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode(this, a2 + 1);
}


// ===== 701164 std::vector<glitch::scene::CShadowVolumeSceneNode::SShadowVolume,glitch::core::SAllocator<glitch::scene::CShadowVolumeSceneNode::SShadowVolume,(glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::scene::CShadowVolumeSceneNode::SShadowVolume const&) =====
void __fastcall std::vector<glitch::scene::CShadowVolumeSceneNode::SShadowVolume,glitch::core::SAllocator<glitch::scene::CShadowVolumeSceneNode::SShadowVolume,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        glitch::scene::CShadowVolumeSceneNode::SSilhouette ***a1,
        const glitch::scene::CShadowVolumeSceneNode::SShadowVolume *a2)
{
  glitch::scene::CShadowVolumeSceneNode::SSilhouette **v3; // r4
  int v4; // r0
  unsigned int v6; // r2
  unsigned int v7; // r1
  size_t v8; // r9
  glitch::scene::CShadowVolumeSceneNode::SSilhouette **v9; // r0
  glitch::scene::CShadowVolumeSceneNode::SSilhouette **v10; // r8
  glitch::scene::CShadowVolumeSceneNode::SSilhouette **v11; // r7
  int v12; // r11
  int v13; // r11
  int v14; // r5
  int v15; // r4
  glitch::scene::CShadowVolumeSceneNode::SSilhouette **v16; // r4
  glitch::scene::CShadowVolumeSceneNode::SSilhouette **v17; // r5
  int v18; // r11

  v3 = a1[2];
  v4 = (int)a1[1];
  if ( (glitch::scene::CShadowVolumeSceneNode::SSilhouette **)v4 == v3 )
  {
    v6 = 678152731 * (v3 - *a1);
    if ( v6 )
      v7 = 1356305462 * (v3 - *a1);
    else
      v7 = 1;
    if ( v7 > 0x35E50D7 || v6 > v7 )
      v8 = -11;
    else
      v8 = 19 * v7;
    v9 = (glitch::scene::CShadowVolumeSceneNode::SSilhouette **)GlitchAlloc(v8 * 4, 0);
    v10 = *a1;
    v11 = v9;
    v12 = 678152731 * (v3 - *a1);
    if ( v12 > 0 )
    {
      v14 = 678152731 * (v3 - *a1);
      v15 = 0;
      do
      {
        glitch::scene::CShadowVolumeSceneNode::SShadowVolume::SShadowVolume(
          (int)&v11[v15],
          (const glitch::scene::CShadowVolumeSceneNode::SShadowVolume *)&v10[v15]);
        --v14;
        v15 += 19;
      }
      while ( v14 );
      v13 = (int)&v11[19 * v12];
    }
    else
    {
      v13 = (int)v9;
    }
    glitch::scene::CShadowVolumeSceneNode::SShadowVolume::SShadowVolume(v13, a2);
    v16 = a1[1];
    v17 = *a1;
    v18 = v13 + 76;
    if ( v16 != *a1 )
    {
      do
      {
        v16 -= 19;
        glitch::scene::CShadowVolumeSceneNode::SShadowVolume::~SShadowVolume(v16);
      }
      while ( v17 != v16 );
      v17 = *a1;
    }
    GlitchFree(v17);
    a1[2] = &v11[v8];
    *a1 = v11;
    a1[1] = (glitch::scene::CShadowVolumeSceneNode::SSilhouette **)v18;
  }
  else
  {
    glitch::scene::CShadowVolumeSceneNode::SShadowVolume::SShadowVolume(v4, a2);
    a1[1] += 19;
  }
}


// ===== 7012a4 glitch::scene::CShadowVolumeSceneNode::SShadowVolume::~SShadowVolume() =====
void __fastcall glitch::scene::CShadowVolumeSceneNode::SShadowVolume::~SShadowVolume(
        glitch::scene::CShadowVolumeSceneNode::SSilhouette **this)
{
  glitch::scene::CShadowVolumeSceneNode::SSilhouette *v1; // r5
  void *v3; // r0
  void *v4; // r0
  glitch::IReferenceCounted *v5; // r0
  glitch::IReferenceCounted *v6; // r0
  glitch::IReferenceCounted *v7; // r0
  glitch::video::CVertexStreams *v8; // r5

  v1 = *this;
  if ( *this )
  {
    glitch::scene::CShadowVolumeSceneNode::SSilhouette::~SSilhouette(*this);
    LC_API_FREE_0(v1);
  }
  v3 = *(this + 4);
  if ( v3 )
    operator delete[](v3);
  v4 = *(this + 5);
  if ( v4 )
    operator delete[](v4);
  v5 = *(this + 11);
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  v6 = *(this + 10);
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  v7 = *(this + 9);
  if ( v7 )
    glitch::IReferenceCounted::drop(v7);
  v8 = *(this + 8);
  if ( v8 )
  {
    if ( (*(_DWORD *)v8)-- == 1 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v8);
      LC_API_FREE_0(v8);
    }
  }
}


// ===== 701358 glitch::scene::CShadowVolumeSceneNode::SSilhouette::createSilhouette(glitch::core::vector3d<float>,glitch::video::E_LIGHT_TYPE,boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&) =====
void __fastcall glitch::scene::CShadowVolumeSceneNode::SSilhouette::createSilhouette(
        _DWORD *a1,
        float *a2,
        int a3,
        int a4)
{
  glitch::video::CVertexStreams *v4; // r3
  int v6; // r4
  void *v7; // r0
  int v8; // r7
  unsigned __int16 *v9; // r6
  int v10; // r5
  float v11; // r10
  int v12; // r5
  float v13; // r8
  float v14; // r5
  float *v15; // r12
  float *v16; // r3
  float v17; // r9
  float v18; // r11
  float v19; // r10
  float v20; // r8
  float v21; // r0
  int v22; // r9
  float *v23; // r3
  int v24; // r6
  int v25; // r3
  int v26; // r6
  int v27; // r2
  int v28; // r0
  unsigned __int16 *v29; // r0
  int k; // r3
  int v31; // r1
  unsigned __int16 *v32; // r1
  _BYTE *v33; // r4
  char v34; // r3
  int v35; // r2
  int v36; // r12
  int v37; // r3
  unsigned __int16 *v38; // r12
  unsigned __int16 v39; // r10
  unsigned __int16 v40; // r9
  int v41; // r2
  int j; // r3
  unsigned __int16 *v43; // r1
  int v44; // r12
  int v45; // r8
  int v46; // r12
  bool v47; // zf
  int v48; // r1
  unsigned __int16 *v49; // r12
  int v50; // r2
  int v51; // r0
  int v52; // r0
  float v53; // [sp+Ch] [bp-40h]
  _BYTE *v54; // [sp+10h] [bp-3Ch]
  float v56; // [sp+1Ch] [bp-30h]
  float v57; // [sp+20h] [bp-2Ch]
  float v58; // [sp+24h] [bp-28h]
  size_t v59; // [sp+28h] [bp-24h]
  _DWORD *i; // [sp+34h] [bp-18h]
  glitch::video::CVertexStreams *v62; // [sp+38h] [bp-14h]
  unsigned __int16 *v63; // [sp+3Ch] [bp-10h]
  unsigned __int16 v64; // [sp+40h] [bp-Ch] BYREF
  unsigned __int16 v65; // [sp+42h] [bp-Ah]
  unsigned __int16 v66; // [sp+44h] [bp-8h] BYREF
  unsigned __int16 v67; // [sp+46h] [bp-6h]

  v4 = *(glitch::video::CVertexStreams **)(*(_DWORD *)a4 + 20);
  v62 = v4;
  if ( v4 )
    ++*(_DWORD *)v4;
  v6 = glitch::video::IBuffer::map(*((_DWORD *)v4 + 5), 1) + *((_DWORD *)v4 + 6);
  if ( v62 )
  {
    v47 = (*(_DWORD *)v62)-- == 1;
    if ( v47 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v62);
      LC_API_FREE_0(v62);
    }
  }
  v7 = (void *)a1[9];
  v63 = (unsigned __int16 *)a1[4];
  v59 = a1[5];
  if ( v7 )
    operator delete[](v7);
  v54 = operator new[](v59, 0);
  a1[9] = v54;
  v56 = *a2;
  v57 = a2[1];
  v58 = a2[2];
  if ( v59 )
  {
    v8 = 0;
    v9 = v63;
    for ( i = a1; ; v54 = (_BYTE *)i[9] )
    {
      v22 = *((unsigned __int16 *)v62 + 17);
      if ( a3 == 2 )
      {
        v23 = (float *)(v6 + v22 * *v9);
        v11 = *v23;
        v14 = v23[2];
        v13 = v23[1];
      }
      else
      {
        v10 = *v9 * v22;
        v11 = *(float *)(v6 + v10);
        v12 = v6 + v10;
        v56 = *a2 - v11;
        v13 = *(float *)(v12 + 4);
        v57 = a2[1] - v13;
        v14 = *(float *)(v12 + 8);
        v58 = a2[2] - v14;
      }
      v15 = (float *)(v6 + v9[2] * v22);
      v16 = (float *)(v6 + v9[1] * v22);
      v17 = *v16 - v11;
      v53 = v16[1] - v13;
      v18 = v16[2] - v14;
      v19 = *v15 - v11;
      v20 = v15[1] - v13;
      v21 = v15[2] - v14;
      v54[v8] = 0;
      v9 += 3;
      if ( (float)((float)((float)(v56
                                 * (float)((float)(v21 * COERCE_FLOAT(LODWORD(v53) + 0x80000000)) + (float)(v18 * v20)))
                         + (float)(v57
                                 * (float)((float)(v19 * COERCE_FLOAT(LODWORD(v18) + 0x80000000)) + (float)(v17 * v21))))
                 + (float)(v58 * (float)((float)(v20 * COERCE_FLOAT(LODWORD(v17) + 0x80000000)) + (float)(v53 * v19)))) <= 0.0 )
        v54[v8] = 1;
      if ( ++v8 == v59 )
        break;
    }
    a1 = i;
  }
  v24 = a1[1];
  v25 = a1[2];
  if ( v24 != v25 )
  {
    v26 = v24 + 16;
    do
    {
      while ( 1 )
      {
        v27 = *(unsigned __int16 *)(v26 - 4);
        if ( v27 != 1 )
        {
          if ( v27 != 2 )
            goto LABEL_21;
          v35 = a1[9];
          if ( *(unsigned __int8 *)(v35 + *(_DWORD *)(v26 - 12)) == *(unsigned __int8 *)(v35 + *(_DWORD *)(v26 - 8)) )
            goto LABEL_21;
          v64 = *(_WORD *)(v26 - 16);
          v65 = *(_WORD *)(v26 - 14);
          v36 = *(_DWORD *)(v26 - 12);
          v37 = *(unsigned __int8 *)(v35 + v36);
          if ( *(_BYTE *)(v35 + v36) )
          {
            v38 = &v63[3 * v36];
            v39 = *(_WORD *)(v26 - 16);
            v40 = *(_WORD *)(v26 - 14);
            v41 = 1;
            for ( j = 0; j != 3; ++j )
            {
              if ( v38[j] == *(unsigned __int16 *)(v26 - 16) )
              {
                v52 = j == 2 ? 0 : v41;
                v39 = *(_WORD *)(v26 - 14);
                v40 = *(_WORD *)(v26 - 16);
                if ( v38[v52] == v39 )
                {
                  v39 = *(_WORD *)(v26 - 16);
                  v40 = *(_WORD *)(v26 - 14);
                }
              }
              ++v41;
            }
          }
          else
          {
            v48 = *(unsigned __int16 *)(v26 - 16);
            v49 = &v63[3 * *(_DWORD *)(v26 - 8)];
            v39 = *(_WORD *)(v26 - 16);
            v40 = *(_WORD *)(v26 - 14);
            v50 = 1;
            if ( v49[v37] == v48 )
              goto LABEL_56;
            while ( 1 )
            {
              ++v37;
              ++v50;
              if ( v37 == 3 )
                break;
              if ( v49[v37] == v48 )
              {
LABEL_56:
                if ( v37 == 2 )
                  v51 = 0;
                else
                  v51 = v50;
                v39 = *(_WORD *)(v26 - 14);
                v40 = *(_WORD *)(v26 - 16);
                if ( v49[v51] == v39 )
                {
                  v39 = *(_WORD *)(v26 - 16);
                  v40 = *(_WORD *)(v26 - 14);
                }
              }
            }
          }
          v65 = v40;
          v64 = v39;
          v43 = (unsigned __int16 *)a1[7];
          if ( v43 == (unsigned __int16 *)a1[8] )
          {
            std::vector<std::pair<unsigned short,unsigned short>,glitch::core::SAllocator<std::pair<unsigned short,unsigned short>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
              (int)(a1 + 6),
              (int)v43,
              &v64);
            v25 = a1[2];
          }
          else
          {
            *v43 = v64;
            v43[1] = v65;
            v25 = a1[2];
            a1[7] += 4;
          }
          goto LABEL_21;
        }
        v28 = *(_DWORD *)(v26 - 12);
        if ( *(_BYTE *)(a1[9] + v28) )
          break;
LABEL_21:
        v47 = v25 == v26;
        v26 += 16;
        if ( v47 )
          goto LABEL_30;
      }
      v66 = *(_WORD *)(v26 - 16);
      v29 = &v63[3 * v28];
      v67 = *(_WORD *)(v26 - 14);
      for ( k = 0; k != 3; ++k )
      {
        v31 = v29[k];
        if ( v31 == *(unsigned __int16 *)(v26 - 16) )
        {
          if ( k == 2 )
            v44 = 0;
          else
            v44 = v27;
          v45 = v29[v44];
          v46 = *(unsigned __int16 *)(v26 - 14);
          v47 = v45 == v46;
          if ( v45 == v46 )
            v66 = v29[k];
          else
            v66 = *(_WORD *)(v26 - 14);
          if ( v45 == v46 )
            LOWORD(v46) = *(_WORD *)(v26 - 14);
          else
            LOWORD(v31) = *(_WORD *)(v26 - 16);
          if ( v47 )
            v67 = v46;
          else
            v67 = v31;
        }
        ++v27;
      }
      v32 = (unsigned __int16 *)a1[7];
      if ( v32 == (unsigned __int16 *)a1[8] )
      {
        std::vector<std::pair<unsigned short,unsigned short>,glitch::core::SAllocator<std::pair<unsigned short,unsigned short>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
          (int)(a1 + 6),
          (int)v32,
          &v66);
        v25 = a1[2];
        goto LABEL_21;
      }
      *v32 = v66;
      v32[1] = v67;
      v25 = a1[2];
      v47 = v25 == v26;
      a1[7] += 4;
      v26 += 16;
    }
    while ( !v47 );
  }
LABEL_30:
  if ( v6 )
  {
    v33 = *((_BYTE **)v62 + 5);
    v34 = v33[19];
    if ( (v34 & 0x1Fu) <= 1 )
    {
      if ( (v33[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v33 + 24))(*((_DWORD *)v62 + 5));
      v33[19] = 0;
    }
    else
    {
      v33[19] = ((v34 & 0x1F) - 1) | v34 & 0xE0;
    }
  }
}


// ===== 701998 glitch::scene::CShadowVolumeSceneNode::createSilhouetteVolume(boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&,glitch::video::CPrimitiveStream::SMapBuffer<ushort const> const&,uint,glitch::core::vector3d<float> const&,glitch::video::E_LIGHT_TYPE,glitch::scene::CShadowVolumeSceneNode::SShadowVolume *,bool) =====
float __fastcall glitch::scene::CShadowVolumeSceneNode::createSilhouetteVolume(
        int a1,
        int a2,
        int a3,
        int a4,
        float *a5,
        int a6,
        int a7,
        char a8)
{
  _DWORD *v8; // r7
  float v10; // r6
  int v11; // r3
  int v12; // r2
  _DWORD *v13; // r0
  float v14; // r12
  float v15; // lr
  float result; // r0
  float v17; // r1
  float v18; // r8
  _WORD *v19; // r6
  int v20; // r5
  unsigned int v21; // r10
  int v22; // r11
  float *v23; // r2
  int v24; // r11
  float *v25; // r2
  int v26; // r11
  int v27; // r3
  float *v28; // r7
  float *v29; // r7
  float v30; // r11
  float *v31; // r11
  float *v32; // r7
  float v33; // r11
  float *v34; // r11
  int v35; // r3
  unsigned int v36; // r2
  int *v37; // r3
  unsigned int v38; // r2
  unsigned int v39; // r1
  unsigned int v40; // r3
  unsigned int *v41; // r3
  unsigned int v42; // r3
  unsigned __int16 *i; // r5
  int v44; // r8
  unsigned int v45; // r7
  __int16 v46; // r9
  int v47; // r6
  unsigned int v48; // r6
  int v49; // r2
  int v50; // r8
  unsigned int v51; // r2
  float *v52; // r3
  int v53; // r3
  float v54; // r6
  glitch::scene::CMeshConnectivity *v55; // r6
  float v56; // [sp+Ch] [bp-F0h]
  float *v57; // [sp+Ch] [bp-F0h]
  float v58; // [sp+Ch] [bp-F0h]
  float v59; // [sp+Ch] [bp-F0h]
  float v60; // [sp+Ch] [bp-F0h]
  float v61; // [sp+Ch] [bp-F0h]
  float v62; // [sp+10h] [bp-ECh]
  float v63; // [sp+10h] [bp-ECh]
  float v64; // [sp+10h] [bp-ECh]
  float v65; // [sp+10h] [bp-ECh]
  float v66; // [sp+14h] [bp-E8h]
  unsigned int v68; // [sp+24h] [bp-D8h]
  float v69; // [sp+24h] [bp-D8h]
  int v70; // [sp+30h] [bp-CCh]
  unsigned int v71; // [sp+34h] [bp-C8h]
  float v72; // [sp+3Ch] [bp-C0h]
  float v73[3]; // [sp+60h] [bp-9Ch] BYREF
  float v74[3]; // [sp+6Ch] [bp-90h] BYREF
  float v75[3]; // [sp+78h] [bp-84h] BYREF
  float v76[3]; // [sp+84h] [bp-78h] BYREF
  float v77[3]; // [sp+90h] [bp-6Ch] BYREF
  float v78[3]; // [sp+9Ch] [bp-60h] BYREF
  float v79[3]; // [sp+A8h] [bp-54h] BYREF
  float v80[3]; // [sp+B4h] [bp-48h] BYREF
  float v81; // [sp+C0h] [bp-3Ch] BYREF
  float v82; // [sp+C4h] [bp-38h]
  float v83; // [sp+C8h] [bp-34h]
  float v84[4]; // [sp+CCh] [bp-30h] BYREF
  unsigned int v85; // [sp+DCh] [bp-20h] BYREF
  unsigned int v86; // [sp+E0h] [bp-1Ch] BYREF
  _DWORD v87[2]; // [sp+E4h] [bp-18h] BYREF
  unsigned int v88; // [sp+ECh] [bp-10h] BYREF
  unsigned int v89; // [sp+F0h] [bp-Ch] BYREF
  unsigned int v90; // [sp+F4h] [bp-8h] BYREF

  v8 = *(_DWORD **)a7;
  if ( !*(_DWORD *)a7 )
  {
    v55 = (glitch::scene::CMeshConnectivity *)operator new(0x28u, 0);
    glitch::scene::CShadowVolumeSceneNode::SSilhouette::SSilhouette(v55);
    *(_DWORD *)a7 = v55;
    glitch::scene::CMeshConnectivity::creatEdgeList(v55, *(_BYTE *)(a1 + 388));
    v8 = *(_DWORD **)a7;
  }
  v10 = *a5;
  if ( *(float *)(a7 + 4) == *a5
    && *(float *)(a7 + 8) == a5[1]
    && *(float *)(a7 + 12) == a5[2]
    && !*(_BYTE *)(a1 + 389)
    && *(_BYTE *)(a1 + 388) )
  {
    result = *(float *)&a6;
    v17 = a5[1];
    v18 = a5[2];
    v81 = *a5;
    v82 = v17;
    v83 = v18;
    if ( a6 == 2 )
    {
LABEL_49:
      v54 = *(float *)(a1 + 384);
      result = v54 * *a5;
      v82 = v54 * v17;
      v81 = result;
      v83 = v54 * v18;
    }
  }
  else
  {
    v11 = v8[6];
    v12 = v8[7];
    v13 = v8;
    if ( v11 != v12 )
    {
      v8[7] = v11;
      v10 = *a5;
    }
    v14 = a5[1];
    v15 = a5[2];
    if ( v11 != v12 )
      v13 = *(_DWORD **)a7;
    v84[0] = v10;
    v84[1] = v14;
    v84[2] = v15;
    glitch::scene::CShadowVolumeSceneNode::SSilhouette::createSilhouette(v13, v84, a6, a2);
    v8 = *(_DWORD **)a7;
    *(float *)(a7 + 4) = *a5;
    *(float *)(a7 + 8) = a5[1];
    *(float *)(a7 + 12) = a5[2];
    result = *(float *)&a6;
    v17 = a5[1];
    v18 = a5[2];
    v81 = *a5;
    v82 = v17;
    v83 = v18;
    if ( a6 == 2 )
      goto LABEL_49;
  }
  if ( a8 )
  {
    v70 = v8[5];
    v19 = (_WORD *)v8[4];
    if ( v70 )
    {
      result = COERCE_FLOAT(v76);
      v20 = 0;
      do
      {
        while ( !*(_BYTE *)(v8[9] + v20) )
        {
          ++v20;
          v19 += 3;
          if ( v20 == v70 )
            goto LABEL_31;
        }
        v21 = (unsigned __int16)(2 * *v19);
        v22 = *(_DWORD *)(a7 + 16);
        v68 = (unsigned __int16)(2 * v19[1]);
        v71 = v21 + 1;
        LODWORD(v66) = (unsigned __int16)(2 * v19[2]);
        glitch::scene::CShadowVolumeSceneNode::getProjectedVertex(v80, a1, (float *)(v22 + 12 * v21), &v81, a6, 1);
        ++v20;
        v23 = (float *)(v22 + 12 * (v21 + 1));
        v19 += 3;
        *v23 = v80[0];
        v23[1] = v80[1];
        v23[2] = v80[2];
        v24 = *(_DWORD *)(a7 + 16);
        glitch::scene::CShadowVolumeSceneNode::getProjectedVertex(v79, a1, (float *)(v24 + 12 * v68), &v81, a6, 1);
        v25 = (float *)(v24 + 12 * (v68 + 1));
        *v25 = v79[0];
        v25[1] = v79[1];
        v25[2] = v79[2];
        v26 = *(_DWORD *)(a7 + 16);
        glitch::scene::CShadowVolumeSceneNode::getProjectedVertex(
          v78,
          a1,
          (float *)(v26 + 12 * LODWORD(v66)),
          &v81,
          a6,
          1);
        *(float *)(v26 + 12 * (LODWORD(v66) + 1)) = v78[0];
        v27 = v26 + 12 * (LODWORD(v66) + 1);
        *(float *)(v27 + 4) = v78[1];
        *(float *)(v27 + 8) = v78[2];
        v28 = (float *)(*(_DWORD *)(a7 + 16) + 12 * v21);
        v56 = v28[1] - v82;
        v62 = v28[2] - v83;
        v77[0] = *v28 - v81;
        v77[2] = v62;
        v77[1] = v56;
        v57 = glitch::core::vector3d<float>::normalize(v77);
        v63 = *(float *)(a1 + 392) * v57[1];
        v72 = *(float *)(a1 + 392) * v57[2];
        *v28 = *v28 + (float)(*(float *)(a1 + 392) * *v57);
        v28[1] = v28[1] + v63;
        v28[2] = v28[2] + v72;
        v29 = (float *)(*(_DWORD *)(a7 + 16) + 12 * v68);
        v30 = v29[1] - v82;
        v58 = v29[2] - v83;
        v76[0] = *v29 - v81;
        v76[1] = v30;
        v76[2] = v58;
        v31 = glitch::core::vector3d<float>::normalize(v76);
        v59 = *(float *)(a1 + 392) * v31[1];
        v64 = *(float *)(a1 + 392) * v31[2];
        *v29 = *v29 + (float)(*(float *)(a1 + 392) * *v31);
        v29[1] = v29[1] + v59;
        v29[2] = v29[2] + v64;
        v32 = (float *)(*(_DWORD *)(a7 + 16) + 12 * LODWORD(v66));
        v33 = v32[1] - v82;
        v60 = v32[2] - v83;
        v75[0] = *v32 - v81;
        v75[1] = v33;
        v75[2] = v60;
        v34 = glitch::core::vector3d<float>::normalize(v75);
        v61 = *(float *)(a1 + 392) * v34[1];
        v65 = *(float *)(a1 + 392) * v34[2];
        *v32 = *v32 + (float)(*(float *)(a1 + 392) * *v34);
        v32[1] = v32[1] + v61;
        v32[2] = v32[2] + v65;
        v35 = *(_DWORD *)(a7 + 24);
        *(_WORD *)(*(_DWORD *)(a7 + 20) + 2 * v35++) = v21;
        *(_WORD *)(*(_DWORD *)(a7 + 20) + 2 * v35++) = v68;
        *(_WORD *)(*(_DWORD *)(a7 + 20) + 2 * v35++) = LOWORD(v66);
        *(_WORD *)(*(_DWORD *)(a7 + 20) + 2 * v35++) = v21 + 1;
        *(_WORD *)(*(_DWORD *)(a7 + 20) + 2 * v35++) = LOWORD(v66) + 1;
        *(_WORD *)(*(_DWORD *)(a7 + 20) + 2 * v35) = v68 + 1;
        *(_DWORD *)(a7 + 24) = v35 + 1;
        v36 = *(unsigned __int16 *)(a7 + 70);
        v88 = v68;
        v90 = v36;
        if ( v21 > v36 )
        {
          v37 = (int *)&v90;
        }
        else
        {
          v36 = v21;
          v37 = (int *)&v89;
        }
        *(float *)&v87[1] = v66;
        v89 = v21;
        if ( v68 <= v36 )
          v37 = (int *)&v88;
        v38 = *v37;
        v39 = v21 + 1;
        v40 = *(unsigned __int16 *)(a7 + 72);
        result = v66;
        if ( LODWORD(v66) < v38 )
          LOWORD(v38) = LOWORD(v66);
        *(_WORD *)(a7 + 70) = v38;
        v86 = v21 + 1;
        if ( v40 >= v71 )
          v39 = v40;
        v87[0] = v40;
        if ( v40 >= v71 )
          v41 = v87;
        else
          v41 = &v86;
        v85 = v68 + 1;
        LODWORD(v84[3]) = LODWORD(v66) + 1;
        if ( v68 + 1 > v39 )
          v41 = &v85;
        v42 = *v41;
        v8 = *(_DWORD **)a7;
        if ( LODWORD(v66) + 1 >= v42 )
          LOWORD(v42) = LOWORD(v66) + 1;
        *(_WORD *)(a7 + 72) = v42;
      }
      while ( v20 != v70 );
    }
  }
LABEL_31:
  v69 = *((float *)v8 + 7);
  for ( i = (unsigned __int16 *)v8[6]; i != (unsigned __int16 *)LODWORD(v69); *(_WORD *)(a7 + 72) = v51 )
  {
    v44 = *(_DWORD *)(a7 + 16);
    v45 = 2 * *i;
    v46 = v45 + 1;
    v47 = i[1];
    glitch::scene::CShadowVolumeSceneNode::getProjectedVertex(v74, a1, (float *)(v44 + 24 * *i), &v81, a6, a8);
    v48 = 2 * v47;
    *(float *)(v44 + 12 * (v45 + 1)) = v74[0];
    v49 = v44 + 12 * (v45 + 1);
    *(float *)(v49 + 4) = v74[1];
    *(float *)(v49 + 8) = v74[2];
    v50 = *(_DWORD *)(a7 + 16);
    glitch::scene::CShadowVolumeSceneNode::getProjectedVertex(v73, a1, (float *)(v50 + 12 * v48), &v81, a6, a8);
    v51 = v45 + 2;
    v52 = (float *)(v50 + 12 * (v48 + 1));
    *v52 = v73[0];
    i += 2;
    v52[1] = v73[1];
    v52[2] = v73[2];
    if ( *(_DWORD *)(a7 + 16) )
    {
      v53 = *(_DWORD *)(a7 + 24);
      *(_WORD *)(*(_DWORD *)(a7 + 20) + 2 * v53++) = v45;
      *(_WORD *)(*(_DWORD *)(a7 + 20) + 2 * v53++) = v46;
      *(_WORD *)(*(_DWORD *)(a7 + 20) + 2 * v53++) = v48;
      *(_WORD *)(*(_DWORD *)(a7 + 20) + 2 * v53++) = v48;
      *(_WORD *)(*(_DWORD *)(a7 + 20) + 2 * v53++) = v46;
      *(_WORD *)(*(_DWORD *)(a7 + 20) + 2 * v53) = v48 + 1;
      *(_DWORD *)(a7 + 24) = v53 + 1;
    }
    if ( v51 < v48 + 2 )
      v51 = v48 + 2;
    result = v69;
    if ( v45 < v48 )
      v48 = v45;
    if ( v48 >= *(unsigned __int16 *)(a7 + 70) )
      LOWORD(v48) = *(_WORD *)(a7 + 70);
    if ( v51 < *(unsigned __int16 *)(a7 + 72) )
      LOWORD(v51) = *(_WORD *)(a7 + 72);
    *(_WORD *)(a7 + 70) = v48;
  }
  return result;
}


// ===== 70225c glitch::scene::CShadowVolumeSceneNode::createShadowVolume(boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&,glitch::core::vector3d<float> const&,glitch::video::E_LIGHT_TYPE) =====
glitch::IReferenceCounted *__fastcall glitch::scene::CShadowVolumeSceneNode::createShadowVolume(
        int a1,
        int a2,
        float *a3,
        int a4)
{
  int v4; // r7
  int v7; // r0
  int v8; // r2
  int v9; // r1
  int v10; // r3
  unsigned int v11; // r12
  unsigned int v12; // r3
  unsigned int v13; // r8
  unsigned int *v14; // r7
  int v15; // r4
  unsigned int v16; // r10
  unsigned int v17; // r9
  bool v18; // zf
  int v19; // r2
  int v20; // r3
  glitch::video::CVertexStreams *v21; // r7
  int v22; // r0
  int v23; // r2
  int v24; // r10
  int *v25; // r3
  int v26; // r9
  int v27; // r3
  int v28; // r0
  int v29; // r2
  int v30; // r0
  int v31; // lr
  int v32; // r0
  _DWORD *v33; // r1
  _BYTE *v34; // r7
  char v35; // r3
  int v36; // r3
  int v37; // r2
  int v38; // r3
  int v39; // r2
  glitch::IReferenceCounted *result; // r0
  int v41; // r1
  int v42; // r3
  _BYTE *v43; // r4
  char v44; // r3
  int v45; // r3
  glitch::video::CVertexStreams *v46; // r10
  int v47; // r7
  int v48; // r7
  int v49; // r10
  _DWORD *v50; // r0
  _DWORD *v51; // r3
  int v52; // r3
  glitch::video::CVertexStreams *v53; // r10
  int v54; // r7
  void *v55; // r0
  int v56; // r7
  _DWORD *v57; // r0
  _DWORD *v58; // r3
  int v59; // r2
  void *v60; // r3
  glitch::video::CVertexStreams *v61; // r3
  glitch::video::CVertexStreams *v62; // r0
  int v63; // r3
  int v64; // r12
  int v65; // r2
  int *v66; // [sp+14h] [bp-88h]
  glitch::scene::CShadowVolumeSceneNode::SSilhouette *v69[19]; // [sp+20h] [bp-7Ch] BYREF
  glitch::IReferenceCounted *v70; // [sp+6Ch] [bp-30h] BYREF
  int v71; // [sp+70h] [bp-2Ch]
  int v72; // [sp+74h] [bp-28h]
  int v73; // [sp+78h] [bp-24h]
  int v74; // [sp+7Ch] [bp-20h]
  __int16 v75; // [sp+80h] [bp-1Ch]
  __int16 v76; // [sp+82h] [bp-1Ah]
  _DWORD *v77; // [sp+84h] [bp-18h] BYREF
  int v78; // [sp+88h] [bp-14h]
  glitch::IReferenceCounted *v79; // [sp+8Ch] [bp-10h] BYREF
  glitch::IReferenceCounted *v80; // [sp+90h] [bp-Ch] BYREF
  glitch::video::CVertexStreams *v81; // [sp+94h] [bp-8h] BYREF

  v4 = *(_DWORD *)a2;
  v77 = (_DWORD *)(v4 + 24);
  v7 = glitch::video::IBuffer::map(*(_DWORD *)(v4 + 24), 1);
  v8 = *(_DWORD *)(a1 + 308);
  v9 = *(_DWORD *)a2;
  v10 = 3 * ((*(_DWORD *)(a1 + 312) - v8) >> 2);
  v78 = v7 + *(_DWORD *)(v4 + 28);
  v11 = *(_DWORD *)(a1 + 356);
  v12 = -1205604855 * v10;
  v13 = *(_DWORD *)(v9 + 32) / 3u;
  if ( v11 < v12 )
  {
    v14 = *(unsigned int **)(v9 + 20);
    v15 = v8 + 76 * v11;
    if ( v14 )
      v12 = *v14;
    v16 = *(_DWORD *)(v15 + 28);
    v17 = v14[2];
    if ( v14 )
      *v14 = v12 + 1;
    v18 = (*v14)-- == 1;
    if ( v18 )
    {
      glitch::video::CVertexStreams::~CVertexStreams((glitch::video::CVertexStreams *)v14);
      LC_API_FREE_0(v14);
      if ( v16 >= 2 * v17 )
      {
        v19 = 0;
        *(_DWORD *)(v15 + 24) = 0;
        goto LABEL_10;
      }
    }
    else if ( v16 >= 2 * v17 )
    {
      v19 = 0;
      *(_DWORD *)(v15 + 24) = 0;
LABEL_10:
      ++*(_DWORD *)(a1 + 356);
      goto LABEL_11;
    }
    v52 = *(_DWORD *)a2;
    v53 = *(glitch::video::CVertexStreams **)(*(_DWORD *)a2 + 20);
    if ( v53 )
      v52 = *(_DWORD *)v53;
    v54 = *((_DWORD *)v53 + 2);
    if ( v53 )
      *(_DWORD *)v53 = v52 + 1;
    v18 = (*(_DWORD *)v53)-- == 1;
    if ( v18 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v53);
      LC_API_FREE_0(v53);
    }
    v55 = *(void **)(v15 + 16);
    v56 = 2 * v54;
    *(_DWORD *)(v15 + 24) = 0;
    *(_DWORD *)(v15 + 28) = v56;
    if ( v55 )
    {
      operator delete[](v55);
      v56 = *(_DWORD *)(v15 + 28);
    }
    v57 = operator new[](12 * v56, 0);
    if ( v56 )
    {
      v58 = v57;
      v59 = 0;
      do
      {
        ++v59;
        *v58 = 0;
        v58[1] = 0;
        v58[2] = 0;
        v58 += 3;
      }
      while ( v59 != v56 );
    }
    v60 = *(void **)(v15 + 20);
    *(_DWORD *)(v15 + 16) = v57;
    if ( v60 )
      operator delete[](v60);
    *(_DWORD *)(v15 + 20) = operator new[](48 * v13, 0);
    *(_WORD *)(v15 + 70) = -1;
    *(_WORD *)(v15 + 72) = 0;
    v19 = 1;
    goto LABEL_10;
  }
  glitch::scene::CShadowVolumeSceneNode::SShadowVolume::SShadowVolume((int)v69);
  std::vector<glitch::scene::CShadowVolumeSceneNode::SShadowVolume,glitch::core::SAllocator<glitch::scene::CShadowVolumeSceneNode::SShadowVolume,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    (glitch::scene::CShadowVolumeSceneNode::SSilhouette ***)(a1 + 308),
    (const glitch::scene::CShadowVolumeSceneNode::SShadowVolume *)v69);
  glitch::scene::CShadowVolumeSceneNode::SShadowVolume::~SShadowVolume(v69);
  v45 = *(_DWORD *)(a1 + 308);
  v46 = *(glitch::video::CVertexStreams **)(*(_DWORD *)a2 + 20);
  v15 = v45 + 76 * ~(-678152731 * ((*(_DWORD *)(a1 + 312) - v45) >> 2));
  if ( v46 )
    v45 = *(_DWORD *)v46;
  v47 = *((_DWORD *)v46 + 2);
  if ( v46 )
    *(_DWORD *)v46 = v45 + 1;
  v18 = (*(_DWORD *)v46)-- == 1;
  if ( v18 )
  {
    glitch::video::CVertexStreams::~CVertexStreams(v46);
    LC_API_FREE_0(v46);
  }
  v48 = 2 * v47;
  v49 = 0;
  *(_DWORD *)(v15 + 28) = v48;
  *(_DWORD *)(v15 + 24) = 0;
  v50 = operator new[](12 * v48, 0);
  if ( v48 )
  {
    v51 = v50;
    do
    {
      ++v49;
      *v51 = 0;
      v51[1] = 0;
      v51[2] = 0;
      v51 += 3;
    }
    while ( v49 != v48 );
  }
  *(_DWORD *)(v15 + 16) = v50;
  *(_DWORD *)(v15 + 20) = operator new[](48 * v13, 0);
  *(_WORD *)(v15 + 70) = -1;
  *(_WORD *)(v15 + 72) = 0;
  v19 = 1;
  ++*(_DWORD *)(a1 + 356);
LABEL_11:
  if ( !*(_BYTE *)(a1 + 388) || *(_BYTE *)(a1 + 389) || v19 )
  {
    v20 = *(_DWORD *)a2;
    v21 = *(glitch::video::CVertexStreams **)(*(_DWORD *)a2 + 20);
    if ( v21 )
      v20 = *(_DWORD *)v21;
    v22 = *((_DWORD *)v21 + 5);
    if ( v21 )
      *(_DWORD *)v21 = v20 + 1;
    v24 = glitch::video::IBuffer::map(v22, 1) + *((_DWORD *)v21 + 6);
    if ( v21 )
    {
      v18 = (*(_DWORD *)v21)-- == 1;
      if ( v18 )
      {
        glitch::video::CVertexStreams::~CVertexStreams(v21);
        LC_API_FREE_0(v21);
      }
    }
    v25 = *(int **)(*(_DWORD *)a2 + 20);
    if ( v25 )
      v23 = *v25;
    v26 = v25[2];
    if ( v25 )
      *v25 = v23 + 1;
    v18 = (*v25)-- == 1;
    if ( v18 )
    {
      v66 = v25;
      glitch::video::CVertexStreams::~CVertexStreams((glitch::video::CVertexStreams *)v25);
      LC_API_FREE_0(v66);
    }
    if ( v26 )
    {
      v27 = 0;
      v28 = *((unsigned __int16 *)v21 + 17);
      v29 = 0;
      while ( 1 )
      {
        v30 = v29 * v28;
        v31 = *(_DWORD *)(v24 + v30);
        v32 = v24 + v30;
        v33 = (_DWORD *)(*(_DWORD *)(v15 + 16) + v27);
        *v33 = v31;
        ++v29;
        v33[1] = *(_DWORD *)(v32 + 4);
        v27 += 24;
        v33[2] = *(_DWORD *)(v32 + 8);
        if ( v29 == v26 )
          break;
        v28 = *((unsigned __int16 *)v21 + 17);
      }
    }
    if ( v24 )
    {
      v34 = *((_BYTE **)v21 + 5);
      v35 = v34[19];
      if ( (v35 & 0x1Fu) <= 1 )
      {
        if ( (v34[18] & 0x20) != 0 )
          (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)v34 + 24))(v34);
        v34[19] = 0;
      }
      else
      {
        v34[19] = ((v35 & 0x1F) - 1) | v35 & 0xE0;
      }
    }
  }
  if ( *(_BYTE *)(a1 + 391) )
    glitch::scene::CShadowVolumeSceneNode::createSilhouetteVolume(
      a1,
      a2,
      (int)&v77,
      v13,
      a3,
      a4,
      v15,
      *(_BYTE *)(a1 + 390));
  else
    glitch::scene::CShadowVolumeSceneNode::createFacingTriangleVolume(
      a1,
      (int)&v77,
      v13,
      a3,
      a4,
      v15,
      *(_BYTE *)(a1 + 390));
  v36 = *(_DWORD *)(v15 + 32);
  if ( v36 )
  {
    v37 = *(_DWORD *)(v15 + 28);
    if ( v37 != *(_DWORD *)(v36 + 8) )
      *(_DWORD *)(v36 + 8) = v37;
    v38 = *(_DWORD *)(v15 + 36);
    if ( *(_BYTE *)(v38 + 17) != 4 && *(_DWORD *)(v38 + 8) )
      *(_BYTE *)(v38 + 18) |= 2u;
    v39 = *(unsigned __int16 *)(v15 + 72);
    result = (glitch::IReferenceCounted *)*(unsigned __int16 *)(v15 + 70);
    v41 = *(_DWORD *)(v15 + 24);
    v42 = *(_DWORD *)(v15 + 40);
    *(_DWORD *)(v15 + 56) = result;
    *(_DWORD *)(v15 + 52) = v41;
    *(_DWORD *)(v15 + 60) = v39;
    if ( *(_BYTE *)(v42 + 17) != 4 && *(_DWORD *)(v42 + 8) )
      *(_BYTE *)(v42 + 18) |= 2u;
  }
  else
  {
    glitch::video::CVertexStreams::allocate(&v81, 1u);
    v61 = v81;
    if ( v81 )
      ++*(_DWORD *)v81;
    v62 = *(glitch::video::CVertexStreams **)(v15 + 32);
    *(_DWORD *)(v15 + 32) = v61;
    if ( v62 )
      glitch::intrusive_ptr_release(v62);
    if ( v81 )
      glitch::intrusive_ptr_release(v81);
    (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, _DWORD, int, int, _DWORD, _DWORD))(**(_DWORD **)(*(_DWORD *)(a1 + 272) + 20) + 120))(
      &v80,
      *(_DWORD *)(*(_DWORD *)(a1 + 272) + 20),
      0,
      4,
      12 * *(_DWORD *)(v15 + 28),
      *(_DWORD *)(v15 + 16),
      0);
    boost::intrusive_ptr<glitch::video::IBuffer>::operator=((glitch::IReferenceCounted **)(v15 + 36), &v80);
    if ( v80 )
      glitch::IReferenceCounted::drop(v80);
    glitch::video::CVertexStreams::setupStreams(*(_DWORD *)(v15 + 32), (glitch::IReferenceCounted **)(v15 + 36), -1);
    *(_DWORD *)(*(_DWORD *)(v15 + 32) + 8) = *(_DWORD *)(v15 + 28);
    (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int, int, int, _DWORD, _DWORD))(**(_DWORD **)(*(_DWORD *)(a1 + 272) + 20)
                                                                                                + 120))(
      &v79,
      *(_DWORD *)(*(_DWORD *)(a1 + 272) + 20),
      1,
      4,
      6 * *(_DWORD *)(v15 + 28),
      *(_DWORD *)(v15 + 20),
      0);
    boost::intrusive_ptr<glitch::video::IBuffer>::operator=((glitch::IReferenceCounted **)(v15 + 40), &v79);
    if ( v79 )
      glitch::IReferenceCounted::drop(v79);
    v63 = *(unsigned __int16 *)(v15 + 72);
    v64 = *(_DWORD *)(v15 + 24);
    v65 = *(unsigned __int16 *)(v15 + 70);
    v70 = *(glitch::IReferenceCounted **)(v15 + 40);
    if ( v70 )
      ++*((_DWORD *)v70 + 1);
    v71 = 0;
    v74 = v63;
    v75 = 1;
    v72 = v64;
    v73 = v65;
    v76 = 6;
    boost::intrusive_ptr<glitch::video::IBuffer>::operator=((glitch::IReferenceCounted **)(v15 + 44), &v70);
    *(_DWORD *)(v15 + 48) = v71;
    *(_DWORD *)(v15 + 52) = v72;
    *(_DWORD *)(v15 + 56) = v73;
    *(_DWORD *)(v15 + 60) = v74;
    *(_WORD *)(v15 + 64) = v75;
    *(_WORD *)(v15 + 66) = v76;
    result = v70;
    if ( v70 )
      result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v70);
  }
  if ( v78 )
  {
    v43 = (_BYTE *)*v77;
    v44 = *(_BYTE *)(*v77 + 19);
    if ( (v44 & 0x1Fu) <= 1 )
    {
      if ( (v43[18] & 0x20) != 0 )
        result = (glitch::IReferenceCounted *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v43 + 24))(*v77);
      v43[19] = 0;
    }
    else
    {
      v43[19] = ((v44 & 0x1F) - 1) | v44 & 0xE0;
    }
  }
  return result;
}


// ===== 7029d4 glitch::scene::CShadowVolumeSceneNode::updateShadowVolumes(void) =====
void __fastcall glitch::scene::CShadowVolumeSceneNode::updateShadowVolumes(glitch::scene::CShadowVolumeSceneNode *this)
{
  int v1; // r3
  int v3; // r0
  int v4; // r2
  int v5; // r8
  int v6; // r3
  unsigned int v7; // r7
  int v8; // r3
  const void *v9; // r0
  int v10; // r3
  int *DynamicLight; // r0
  unsigned __int16 *v12; // r4
  unsigned int v13; // r6
  _DWORD *v15; // r2
  float *v16; // r3
  float v17; // r11
  float v18; // r9
  float v19; // r6
  float v20; // r6
  int j; // r6
  float *v22; // r3
  float v23; // r11
  float v24; // r9
  float v25; // r3
  float v26; // r9
  int i; // r7
  unsigned int v28; // [sp+10h] [bp-9Ch]
  _BOOL4 v29; // [sp+14h] [bp-98h]
  float v30; // [sp+1Ch] [bp-90h]
  float v31; // [sp+20h] [bp-8Ch]
  float v32[17]; // [sp+3Ch] [bp-70h] BYREF
  float v33; // [sp+80h] [bp-2Ch] BYREF
  float v34; // [sp+84h] [bp-28h]
  float v35; // [sp+88h] [bp-24h]
  float v36; // [sp+8Ch] [bp-20h] BYREF
  float v37; // [sp+90h] [bp-1Ch]
  float v38; // [sp+94h] [bp-18h]
  glitch::IReferenceCounted *v39; // [sp+98h] [bp-14h] BYREF
  glitch::IReferenceCounted *v40; // [sp+9Ch] [bp-10h] BYREF
  glitch::IReferenceCounted *v41; // [sp+A0h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v42; // [sp+A4h] [bp-8h] BYREF

  v1 = *((_DWORD *)this + 86);
  *((_DWORD *)this + 89) = 0;
  if ( v1 )
  {
    v29 = *((_DWORD *)this + 80) != *((_DWORD *)this + 81);
    v3 = (*(int (__fastcall **)(int))(*(_DWORD *)v1 + 16))(v1);
    v4 = v29;
    v5 = v3;
    if ( v29 )
    {
      v6 = *((_DWORD *)this + 80);
      v4 = *((_DWORD *)this + 81);
    }
    else
    {
      v6 = *((_DWORD *)this + 68);
    }
    if ( !v29 )
      v6 = *(_DWORD *)(v6 + 20);
    v7 = 0;
    if ( v29 )
      v8 = v4 - v6;
    else
      v8 = *(unsigned __int16 *)(v6 + 58);
    if ( v29 )
      v8 >>= 2;
    v28 = v8;
    v9 = (const void *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 59) + 56))(*((_DWORD *)this + 59));
    LOBYTE(v32[16]) = 0;
    memcpy(v32, v9, 0x41u);
    glitch::scene::ISceneNode::getAbsolutePosition(&v36, *((_DWORD **)this + 59));
    glitch::core::CMatrix4<float>::makeInverse((int)v32);
    if ( v28 )
    {
      do
      {
        v10 = v29;
        if ( v29 )
          DynamicLight = (int *)(*((_DWORD *)this + 80) + 4 * v7);
        else
          DynamicLight = glitch::video::IVideoDriver::getDynamicLight(
                           *(glitch::video::IVideoDriver **)(*((_DWORD *)this + 68) + 20),
                           (unsigned __int16)v7);
        v12 = (unsigned __int16 *)*DynamicLight;
        if ( *DynamicLight )
          v10 = *(_DWORD *)v12;
        v13 = v12[44];
        if ( *DynamicLight )
          *(_DWORD *)v12 = v10 + 1;
        if ( v13 != 3 )
        {
          if ( v13 <= 1 )
          {
            v22 = *((float **)v12 + 20);
            v30 = v22[14];
            v23 = v22[12];
            v24 = v22[13];
            v35 = v30;
            v33 = v23;
            v34 = v24;
            if ( *((_BYTE *)v12 + 90) )
            {
              if ( (float)((float)(*((float *)v12 + 16) * *((float *)v12 + 16)) * 4.0) >= fabs(
                                                                                            (float)((float)((float)(v23 - v36) * (float)(v23 - v36))
                                                                                                  + (float)((float)(v24 - v37) * (float)(v24 - v37)))
                                                                                          + (float)((float)(v30 - v38)
                                                                                                  * (float)(v30 - v38))) )
              {
                v31 = (float)((float)((float)(v23 * v32[1]) + (float)(v24 * v32[5])) + (float)(v30 * v32[9])) + v32[13];
                v25 = (float)((float)((float)(v23 * v32[0]) + (float)(v24 * v32[4])) + (float)(v30 * v32[8])) + v32[12];
                v26 = (float)((float)((float)(v23 * v32[2]) + (float)(v24 * v32[6])) + (float)(v30 * v32[10])) + v32[14];
                v33 = v25;
                v35 = v26;
                v34 = v31;
                if ( v25 != 0.0 || v31 != 0.0 || v26 != 0.0 )
                {
                  if ( v5 )
                  {
                    for ( i = 0; i != v5; ++i )
                    {
                      (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int))(**((_DWORD **)this + 86) + 20))(
                        &v42,
                        *((_DWORD *)this + 86),
                        i);
                      v41 = v42;
                      if ( v42 )
                        ++*((_DWORD *)v42 + 1);
                      glitch::scene::CShadowVolumeSceneNode::createShadowVolume((int)this, (int)&v41, &v33, v13);
                      if ( v41 )
                        glitch::IReferenceCounted::drop(v41);
                      if ( v42 )
                        glitch::IReferenceCounted::drop(v42);
                    }
                    v7 = v5 + 1;
                    goto LABEL_23;
                  }
LABEL_62:
                  v7 = 1;
                  goto LABEL_23;
                }
              }
            }
          }
          else if ( v13 == 2 )
          {
            v16 = *((float **)v12 + 20);
            v17 = v16[8];
            v16 += 8;
            v18 = v16[1];
            v19 = v16[2];
            v33 = (float)((float)(v17 * v32[0]) + (float)(v18 * v32[4])) + (float)(v19 * v32[8]);
            v34 = (float)((float)(v17 * v32[1]) + (float)(v18 * v32[5])) + (float)(v19 * v32[9]);
            v20 = (float)((float)(v17 * v32[2]) + (float)(v18 * v32[6])) + (float)(v19 * v32[10]);
            v35 = v20;
            if ( v33 != 0.0 || v34 != 0.0 || v20 != 0.0 )
            {
              if ( v5 )
              {
                for ( j = 0; j != v5; ++j )
                {
                  (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int))(**((_DWORD **)this + 86) + 20))(
                    &v40,
                    *((_DWORD *)this + 86),
                    j);
                  v39 = v40;
                  if ( v40 )
                    ++*((_DWORD *)v40 + 1);
                  glitch::scene::CShadowVolumeSceneNode::createShadowVolume((int)this, (int)&v39, &v33, 2);
                  if ( v39 )
                    glitch::IReferenceCounted::drop(v39);
                  if ( v40 )
                    glitch::IReferenceCounted::drop(v40);
                }
                v7 = v5 + 1;
                goto LABEL_23;
              }
              goto LABEL_62;
            }
          }
        }
        ++v7;
LABEL_23:
        if ( (*(_DWORD *)v12)-- == 1 )
        {
          if ( !*((_BYTE *)v12 + 84) )
          {
            v15 = *((_DWORD **)v12 + 20);
            *v15 = glitch::memory::Matrix4Pool;
            glitch::memory::Matrix4Pool = (int)v15;
          }
          *((_DWORD *)v12 + 20) = 0;
          LC_API_FREE_0(v12);
        }
      }
      while ( v28 > v7 );
    }
    *((_BYTE *)this + 389) = 0;
  }
}


// ===== 703098 `virtual thunk to'glitch::scene::CShadowVolumeSceneNode::~CShadowVolumeSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CShadowVolumeSceneNode::~CShadowVolumeSceneNode(
        glitch::scene::CShadowVolumeSceneNode *this)
{
  glitch::scene::CShadowVolumeSceneNode::~CShadowVolumeSceneNode((glitch::scene::CShadowVolumeSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 7030a8 `virtual thunk to'glitch::scene::CShadowVolumeSceneNode::~CShadowVolumeSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CShadowVolumeSceneNode::~CShadowVolumeSceneNode(
        glitch::scene::CShadowVolumeSceneNode *this)
{
  glitch::scene::CShadowVolumeSceneNode::~CShadowVolumeSceneNode((glitch::scene::CShadowVolumeSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 7030b8 `virtual thunk to'glitch::scene::CShadowVolumeSceneNode::~CShadowVolumeSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CShadowVolumeSceneNode::~CShadowVolumeSceneNode(
        glitch::scene::CShadowVolumeSceneNode *this)
{
  glitch::scene::CShadowVolumeSceneNode::~CShadowVolumeSceneNode((glitch::scene::CShadowVolumeSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 7030c8 `virtual thunk to'glitch::scene::CShadowVolumeSceneNode::~CShadowVolumeSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CShadowVolumeSceneNode::~CShadowVolumeSceneNode(
        glitch::scene::CShadowVolumeSceneNode *this)
{
  glitch::scene::CShadowVolumeSceneNode::~CShadowVolumeSceneNode((glitch::scene::CShadowVolumeSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 7030d8 `global constructor keyed to'.._source_glitch_memory_MemoryProfiler.cpp =====
void `global constructor keyed to'.._source_glitch_memory_MemoryProfiler.cpp()
{
  dword_9F8468 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F8464 = 1056964608;
}


// ===== 7030f8 glitch_free =====
// attributes: thunk
void glitch_free(void *p)
{
  GlitchFree(p);
}


// ===== 7030fc glitch_malloc =====
void *__fastcall glitch_malloc(size_t a1)
{
  return GlitchAlloc(a1, 0);
}


// ===== 703104 compressBound =====
int __fastcall compressBound(unsigned int a1)
{
  return a1 + 11 + (a1 >> 12) + (a1 >> 14);
}


// ===== 703114 compress2 =====
int __fastcall compress2(int a1, int *a2, int a3, int a4, int a5)
{
  int v5; // lr
  int v7; // r6
  _DWORD v9[14]; // [sp+0h] [bp-38h] BYREF

  v5 = *a2;
  v9[0] = a3;
  v9[1] = a4;
  v9[3] = a1;
  v9[4] = v5;
  memset(&v9[8], 0, 12);
  v7 = deflateInit_(v9, a5, "1.2.3", 56);
  if ( !v7 )
  {
    v7 = deflate(v9, 4);
    if ( v7 == 1 )
    {
      *a2 = v9[5];
      return deflateEnd((int)v9);
    }
    else
    {
      deflateEnd((int)v9);
      if ( !v7 )
        return -5;
    }
  }
  return v7;
}


// ===== 7031bc compress =====
int __fastcall compress(int a1, int *a2, int a3, int a4)
{
  return compress2(a1, a2, a3, a4, -1);
}


// ===== 7031d8 glitch::scene::CMeshConnectivity::CMeshConnectivity(boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&) =====
int *__fastcall glitch::scene::CMeshConnectivity::CMeshConnectivity(int *result, int *a2)
{
  int v2; // r3
  bool v3; // zf

  v2 = *a2;
  v3 = *a2 == 0;
  *result = *a2;
  if ( !v3 )
    ++*(_DWORD *)(v2 + 4);
  result[5] = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}


// ===== 70320c glitch::scene::CMeshConnectivity::CMeshConnectivity(boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&) =====
int *__fastcall glitch::scene::CMeshConnectivity::CMeshConnectivity(int *result, int *a2)
{
  int v2; // r3
  bool v3; // zf

  v2 = *a2;
  v3 = *a2 == 0;
  *result = *a2;
  if ( !v3 )
    ++*(_DWORD *)(v2 + 4);
  result[5] = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}


// ===== 703240 std::priv::__find<glitch::scene::CMeshConnectivity::SEdge *,glitch::scene::CMeshConnectivity::SEdge>(glitch::scene::CMeshConnectivity::SEdge *,glitch::scene::CMeshConnectivity::SEdge *,glitch::scene::CMeshConnectivity::SEdge const&,std::random_access_iterator_tag const&) =====
_DWORD *__fastcall std::priv::__find<glitch::scene::CMeshConnectivity::SEdge *,glitch::scene::CMeshConnectivity::SEdge>(
        _DWORD *result,
        int a2,
        int *a3)
{
  int v3; // r3
  int v4; // r12
  int v5; // r4
  int v6; // t1
  int v7; // t1
  int v8; // t1
  _DWORD *v9; // r12
  int v10; // r3

  v3 = (a2 - (int)result) >> 6;
  v4 = (a2 - (int)result) >> 4;
  if ( v3 <= 0 )
    goto LABEL_13;
  v5 = *a3;
  if ( *result != *a3 )
  {
    v6 = result[4];
    result += 4;
    if ( v5 != v6 )
    {
      v7 = result[4];
      result += 4;
      if ( v5 != v7 )
      {
        v8 = result[4];
        result += 4;
        if ( v5 != v8 )
        {
          while ( 1 )
          {
            --v3;
            v9 = result;
            result += 4;
            if ( !v3 )
              break;
            if ( *result != v5 )
            {
              result = v9 + 8;
              if ( v9[8] != v5 )
              {
                result = v9 + 12;
                if ( v9[12] != v5 )
                {
                  result = v9 + 16;
                  if ( v5 != v9[16] )
                    continue;
                }
              }
            }
            return result;
          }
          v4 = (a2 - (int)result) >> 4;
LABEL_13:
          switch ( v4 )
          {
            case 2:
              v10 = *a3;
              break;
            case 3:
              v10 = *a3;
              if ( *result == *a3 )
                return result;
              result += 4;
              break;
            case 1:
              v10 = *a3;
LABEL_21:
              if ( *result != v10 )
                return (_DWORD *)a2;
              return result;
            default:
              return (_DWORD *)a2;
          }
          if ( *result == v10 )
            return result;
          result += 4;
          goto LABEL_21;
        }
      }
    }
  }
  return result;
}


// ===== 70334c `global constructor keyed to'.._source_glitch_scene_CMeshConnectivity.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CMeshConnectivity.cpp()
{
  dword_9F8474 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F8470 = 1056964608;
}


// ===== 70336c glitch::scene::CMeshConnectivity::save(glitch::io::IWriteFile *) =====
int __fastcall glitch::scene::CMeshConnectivity::save(
        glitch::scene::CMeshConnectivity *this,
        glitch::io::IWriteFile *a2,
        int a3)
{
  glitch::video::CVertexStreams *v4; // r3
  int v6; // r6
  int v7; // r6
  int v8; // r3
  int v9; // r6
  int v10; // r0
  unsigned int v11; // r4
  int i; // r6
  int v13; // r0
  int v14; // r4
  int v15; // r0
  glitch::video::CVertexStreams *v17; // [sp+4h] [bp-10h] BYREF
  int v18; // [sp+8h] [bp-Ch] BYREF
  int v19; // [sp+Ch] [bp-8h] BYREF

  v4 = *(glitch::video::CVertexStreams **)(*(_DWORD *)this + 20);
  v17 = v4;
  if ( v4 )
    a3 = *(_DWORD *)v4;
  if ( v4 )
  {
    *(_DWORD *)v4 = a3 + 1;
    v4 = v17;
  }
  v6 = *((_DWORD *)v4 + 2);
  boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v17);
  v19 = v6;
  v7 = (*(int (__fastcall **)(glitch::io::IWriteFile *, int *, int))(*(_DWORD *)a2 + 12))(a2, &v19, 4);
  v8 = *(_DWORD *)a2;
  v19 = *(_DWORD *)(*(_DWORD *)this + 32);
  v9 = (*(int (__fastcall **)(glitch::io::IWriteFile *, int *, int))(v8 + 12))(a2, &v19, 4) + v7;
  v19 = (*((_DWORD *)this + 2) - *((_DWORD *)this + 1)) >> 4;
  v10 = (*(int (__fastcall **)(glitch::io::IWriteFile *, int *, int))(*(_DWORD *)a2 + 12))(a2, &v19, 4);
  v11 = *((_DWORD *)this + 1);
  for ( i = v9 + v10; v11 < *((_DWORD *)this + 2); i += v13 )
  {
    v13 = (*(int (__fastcall **)(glitch::io::IWriteFile *, unsigned int, int))(*(_DWORD *)a2 + 12))(a2, v11, 16);
    v11 += 16;
  }
  v14 = (*(int (__fastcall **)(glitch::io::IWriteFile *, char *, int))(*(_DWORD *)a2 + 12))(a2, (char *)this + 20, 4);
  v15 = (*(int (__fastcall **)(glitch::io::IWriteFile *, _DWORD, int))(*(_DWORD *)a2 + 12))(
          a2,
          *((_DWORD *)this + 4),
          6 * *((_DWORD *)this + 5));
  v18 = -1056970744;
  return v14 + v15 + i + (*(int (__fastcall **)(glitch::io::IWriteFile *, int *, int))(*(_DWORD *)a2 + 12))(a2, &v18, 4);
}


// ===== 7034d4 glitch::scene::CMeshConnectivity::SEdge::addFace(uint) =====
int *__fastcall glitch::scene::CMeshConnectivity::SEdge::addFace(int *this, int a2)
{
  int v2; // r3

  v2 = *((unsigned __int16 *)this + 6);
  if ( v2 == 2 )
    return glitch::os::Printer::log(
             (int)"Edge Warning : An edge have more than 2 faces, it might gives unexpected results.",
             3);
  *(this + v2 + 1) = a2;
  *((_WORD *)this + 6) = v2 + 1;
  return this;
}


// ===== 703508 std::priv::__copy<glitch::scene::CMeshConnectivity::SEdge *,glitch::scene::CMeshConnectivity::SEdge *,int>(glitch::scene::CMeshConnectivity::SEdge *,glitch::scene::CMeshConnectivity::SEdge *,glitch::scene::CMeshConnectivity::SEdge *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy<glitch::scene::CMeshConnectivity::SEdge *,glitch::scene::CMeshConnectivity::SEdge *,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r1
  int v4; // r8
  int v6; // r5
  int v7; // r4
  _DWORD *v8; // r12
  int v9; // r1
  int v10; // r2
  int v11; // r3

  v3 = a2 - a1;
  v4 = v3 >> 4;
  if ( v3 >> 4 > 0 )
  {
    v6 = v3 >> 4;
    v7 = 0;
    do
    {
      v8 = (_DWORD *)(a3 + v7);
      v9 = *(_DWORD *)(a1 + v7 + 4);
      v10 = *(_DWORD *)(a1 + v7 + 8);
      v11 = *(_DWORD *)(a1 + v7 + 12);
      *v8 = *(_DWORD *)(a1 + v7);
      v8[1] = v9;
      v8[2] = v10;
      --v6;
      *(_WORD *)(a3 + v7 + 12) = v11;
      v7 += 16;
    }
    while ( v6 );
    a3 += 16 * v4;
  }
  return a3;
}


// ===== 70355c glitch::scene::CMeshConnectivity::~CMeshConnectivity() =====
void __fastcall glitch::scene::CMeshConnectivity::~CMeshConnectivity(glitch::scene::CMeshConnectivity *this)
{
  void *v2; // r0
  void *v3; // r0

  v2 = *((void **)this + 4);
  if ( v2 )
    operator delete[](v2);
  v3 = *((void **)this + 1);
  if ( v3 )
    GlitchFree(v3);
  if ( *(_DWORD *)this )
    glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)this);
}


// ===== 70359c glitch::scene::CMeshConnectivity::~CMeshConnectivity() =====
void __fastcall glitch::scene::CMeshConnectivity::~CMeshConnectivity(glitch::scene::CMeshConnectivity *this)
{
  void *v2; // r0
  void *v3; // r0

  v2 = *((void **)this + 4);
  if ( v2 )
    operator delete[](v2);
  v3 = *((void **)this + 1);
  if ( v3 )
    GlitchFree(v3);
  if ( *(_DWORD *)this )
    glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)this);
}


// ===== 7035dc std::vector<glitch::scene::CMeshConnectivity::SEdge,glitch::core::SAllocator<glitch::scene::CMeshConnectivity::SEdge,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::scene::CMeshConnectivity::SEdge*>(uint &,glitch::scene::CMeshConnectivity::SEdge*,glitch::scene::CMeshConnectivity::SEdge*) =====
char *__fastcall std::vector<glitch::scene::CMeshConnectivity::SEdge,glitch::core::SAllocator<glitch::scene::CMeshConnectivity::SEdge,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::scene::CMeshConnectivity::SEdge*>(
        int a1,
        _DWORD *a2,
        int a3,
        int a4)
{
  char *result; // r0
  int v7; // r5
  int v8; // r4
  char *v9; // r12
  int v10; // r1
  int v11; // r2
  int v12; // r3

  result = (char *)GlitchAlloc(16 * *a2, 0);
  v7 = (a4 - a3) >> 4;
  if ( v7 > 0 )
  {
    v8 = 0;
    do
    {
      v9 = &result[v8];
      v10 = *(_DWORD *)(a3 + v8 + 4);
      v11 = *(_DWORD *)(a3 + v8 + 8);
      v12 = *(_DWORD *)(a3 + v8 + 12);
      *(_DWORD *)v9 = *(_DWORD *)(a3 + v8);
      *((_DWORD *)v9 + 1) = v10;
      *((_DWORD *)v9 + 2) = v11;
      --v7;
      *(_WORD *)&result[v8 + 12] = v12;
      v8 += 16;
    }
    while ( v7 );
  }
  return result;
}


// ===== 703638 std::vector<glitch::scene::CMeshConnectivity::SEdge,glitch::core::SAllocator<glitch::scene::CMeshConnectivity::SEdge,(glitch::memory::E_MEMORY_HINT)0>>::reserve(uint) =====
void __fastcall std::vector<glitch::scene::CMeshConnectivity::SEdge,glitch::core::SAllocator<glitch::scene::CMeshConnectivity::SEdge,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
        int *a1,
        unsigned int a2)
{
  int v3; // r2
  int v4; // r0
  int v5; // r3
  int v6; // r5
  void *v7; // r6
  char *v8; // r0
  unsigned int v9; // r3
  unsigned int v10; // [sp+4h] [bp-4h] BYREF

  v3 = *a1;
  v4 = a1[2];
  v10 = a2;
  if ( a2 > (v4 - v3) >> 4 )
  {
    if ( a2 > 0xFFFFFFF )
    {
      __ZSt24__stl_throw_length_errorPKc_veneer("vector");
      v3 = *a1;
    }
    v5 = a1[1];
    v6 = (v5 - v3) >> 4;
    if ( v3 )
    {
      v7 = std::vector<glitch::scene::CMeshConnectivity::SEdge,glitch::core::SAllocator<glitch::scene::CMeshConnectivity::SEdge,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::scene::CMeshConnectivity::SEdge*>(
             (int)a1,
             &v10,
             v3,
             v5);
      v8 = (char *)a1[1];
      if ( v8 != (char *)*a1 )
        v8 += 16 * ~((unsigned int)&v8[-*a1 - 16] >> 4);
      GlitchFree(v8);
    }
    else
    {
      v7 = GlitchAlloc(16 * v10, 0);
    }
    v9 = v10;
    a1[1] = (int)v7 + 16 * v6;
    a1[2] = (int)v7 + 16 * v9;
    *a1 = (int)v7;
  }
}


// ===== 7036f8 std::vector<glitch::scene::CMeshConnectivity::SEdge,glitch::core::SAllocator<glitch::scene::CMeshConnectivity::SEdge,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::scene::CMeshConnectivity::SEdge*,glitch::scene::CMeshConnectivity::SEdge const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<glitch::scene::CMeshConnectivity::SEdge,glitch::core::SAllocator<glitch::scene::CMeshConnectivity::SEdge,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        _DWORD *a1,
        int a2,
        _DWORD *a3)
{
  unsigned int v6; // r3
  unsigned int v7; // r10
  size_t v8; // r10
  char *v9; // r0
  char *v10; // r7
  char *v11; // r4
  int v12; // r8
  char *v13; // r8
  int v14; // r6
  int v15; // lr
  char *v16; // r12
  int v17; // r1
  int v18; // r2
  int v19; // r3
  int v20; // r1
  int v21; // r2
  int v22; // r3
  char *v23; // r0
  char *v24; // r8
  char *v25; // r10

  v6 = (a1[1] - *a1) >> 4;
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0xFFFFFFF || v6 > v7 )
    v8 = -16;
  else
    v8 = 16 * v7;
  v9 = (char *)GlitchAlloc(v8, 0);
  v10 = (char *)*a1;
  v11 = v9;
  v12 = (a2 - *a1) >> 4;
  if ( v12 > 0 )
  {
    v14 = v12;
    v15 = 0;
    do
    {
      v16 = &v9[v15];
      v17 = *(_DWORD *)&v10[v15 + 4];
      v18 = *(_DWORD *)&v10[v15 + 8];
      v19 = *(_DWORD *)&v10[v15 + 12];
      *(_DWORD *)v16 = *(_DWORD *)&v10[v15];
      *((_DWORD *)v16 + 1) = v17;
      *((_DWORD *)v16 + 2) = v18;
      --v14;
      *(_WORD *)&v9[v15 + 12] = v19;
      v15 += 16;
    }
    while ( v14 );
    v13 = &v9[16 * v12];
  }
  else
  {
    v13 = v9;
  }
  v20 = a3[1];
  v21 = a3[2];
  v22 = a3[3];
  *(_DWORD *)v13 = *a3;
  *((_DWORD *)v13 + 1) = v20;
  *((_DWORD *)v13 + 2) = v21;
  *((_WORD *)v13 + 6) = v22;
  v23 = (char *)a1[1];
  v24 = v13 + 16;
  v25 = &v11[v8];
  if ( v23 != (char *)*a1 )
    v23 += 16 * ~((unsigned int)&v23[-*a1 - 16] >> 4);
  GlitchFree(v23);
  *a1 = v11;
  a1[1] = v24;
  a1[2] = v25;
}


// ===== 7037d4 glitch::scene::CMeshConnectivity::addEdgeWithFace(glitch::scene::CMeshConnectivity::SEdge &,uint) =====
void __fastcall glitch::scene::CMeshConnectivity::addEdgeWithFace(
        glitch::scene::CMeshConnectivity *this,
        glitch::scene::CMeshConnectivity::SEdge *a2,
        int a3)
{
  int *v6; // r0
  int v7; // r12
  int v8; // r1
  int v9; // r2
  int v10; // r3

  v6 = std::priv::__find<glitch::scene::CMeshConnectivity::SEdge *,glitch::scene::CMeshConnectivity::SEdge>(
         *((_DWORD **)this + 1),
         *((_DWORD *)this + 2),
         (int *)a2);
  if ( *((int **)this + 2) == v6 )
  {
    glitch::scene::CMeshConnectivity::SEdge::addFace((int *)a2, a3);
    v7 = *((_DWORD *)this + 2);
    if ( v7 == *((_DWORD *)this + 3) )
    {
      std::vector<glitch::scene::CMeshConnectivity::SEdge,glitch::core::SAllocator<glitch::scene::CMeshConnectivity::SEdge,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        (_DWORD *)this + 1,
        *((_DWORD *)this + 2),
        a2);
    }
    else
    {
      v8 = *((_DWORD *)a2 + 1);
      v9 = *((_DWORD *)a2 + 2);
      v10 = *((_DWORD *)a2 + 3);
      *(_DWORD *)v7 = *(_DWORD *)a2;
      *(_DWORD *)(v7 + 4) = v8;
      *(_DWORD *)(v7 + 8) = v9;
      *(_WORD *)(v7 + 12) = v10;
      *((_DWORD *)this + 2) += 16;
    }
  }
  else
  {
    glitch::scene::CMeshConnectivity::SEdge::addFace(v6, a3);
  }
}


// ===== 703864 glitch::scene::CMeshConnectivity::load(glitch::io::IReadFile *) =====
// write access to const memory has been detected, the output may be wrong!
int __fastcall glitch::scene::CMeshConnectivity::load(
        glitch::scene::CMeshConnectivity *this,
        glitch::io::IReadFile *a2)
{
  int v4; // r7
  int v5; // r0
  int v6; // r2
  int v7; // r7
  unsigned int i; // r5
  int v9; // r0
  int v10; // r12
  int v11; // r1
  int v12; // r2
  __int16 v13; // r3
  int v14; // r7
  int v15; // r5
  _WORD *v16; // r0
  _WORD *v17; // r3
  int v18; // r7
  int v19; // r7
  _DWORD v21[3]; // [sp+8h] [bp-20h] BYREF
  __int16 v22; // [sp+14h] [bp-14h]
  unsigned int v23; // [sp+18h] [bp-10h] BYREF
  int v24; // [sp+1Ch] [bp-Ch]
  glitch::video::CVertexStreams *v25; // [sp+20h] [bp-8h] BYREF

  v23 = 0;
  v24 = 0;
  v4 = (*(int (__fastcall **)(glitch::io::IReadFile *, unsigned int *, int))(*(_DWORD *)a2 + 12))(a2, &v23, 8);
  v25 = (glitch::video::CVertexStreams *)(&dword_0 + 1);
  *(int *)((char *)&dword_0 + 1) = 21384262;
  boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v25);
  if ( v23 || v24 != 12395596 )
    glitch::os::Printer::log(
      (int)"Mesh Connectivity load : The vertex or index count in the file does not match the current mesh",
      3);
  v5 = (*(int (__fastcall **)(glitch::io::IReadFile *, unsigned int *, int))(*(_DWORD *)a2 + 12))(a2, &v23, 4);
  v6 = *((_DWORD *)this + 1);
  v7 = v5 + v4;
  if ( v6 != *((_DWORD *)this + 2) )
    *((_DWORD *)this + 2) = std::priv::__copy<glitch::scene::CMeshConnectivity::SEdge *,glitch::scene::CMeshConnectivity::SEdge *,int>(
                              *((_DWORD *)this + 2),
                              *((_DWORD *)this + 2),
                              v6);
  std::vector<glitch::scene::CMeshConnectivity::SEdge,glitch::core::SAllocator<glitch::scene::CMeshConnectivity::SEdge,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
    (int *)this + 1,
    v23);
  if ( v23 )
  {
    for ( i = 0; i < v23; ++i )
    {
      v22 = 0;
      v21[0] = 0;
      v9 = (*(int (__fastcall **)(glitch::io::IReadFile *, _DWORD *, int))(*(_DWORD *)a2 + 12))(a2, v21, 16);
      v10 = *((_DWORD *)this + 2);
      v7 += v9;
      if ( v10 == *((_DWORD *)this + 3) )
      {
        std::vector<glitch::scene::CMeshConnectivity::SEdge,glitch::core::SAllocator<glitch::scene::CMeshConnectivity::SEdge,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
          (_DWORD *)this + 1,
          *((_DWORD *)this + 2),
          v21);
      }
      else
      {
        v11 = v21[1];
        v12 = v21[2];
        v13 = v22;
        *(_DWORD *)v10 = v21[0];
        *(_DWORD *)(v10 + 4) = v11;
        *(_DWORD *)(v10 + 8) = v12;
        *(_WORD *)(v10 + 12) = v13;
        *((_DWORD *)this + 2) += 16;
      }
    }
  }
  v14 = (*(int (__fastcall **)(glitch::io::IReadFile *, char *, int))(*(_DWORD *)a2 + 12))(a2, (char *)this + 20, 4)
      + v7;
  if ( *((_DWORD *)this + 4) )
    operator delete[](*((void **)this + 4));
  v15 = *((_DWORD *)this + 5);
  v16 = operator new[](6 * v15, 0);
  if ( v15 )
  {
    v17 = v16;
    do
    {
      *v17 = -1;
      v17[1] = -1;
      v17[2] = -1;
      v17 += 3;
    }
    while ( v17 != &v16[3 * v15] );
  }
  *((_DWORD *)this + 4) = v16;
  v18 = v14 + (*(int (__fastcall **)(glitch::io::IReadFile *))(*(_DWORD *)a2 + 12))(a2);
  v19 = v18 + (*(int (__fastcall **)(glitch::io::IReadFile *, unsigned int *, int))(*(_DWORD *)a2 + 12))(a2, &v23, 4);
  if ( v23 != -1056970744 )
    glitch::os::Printer::log((int)"Mesh Connectivity load : error loading the file...", 3);
  return v19;
}


// ===== 703acc glitch::scene::CMeshConnectivity::creatEdgeList(bool) =====
int __fastcall glitch::scene::CMeshConnectivity::creatEdgeList(glitch::scene::CMeshConnectivity *this, int a2)
{
  glitch::scene::CMeshConnectivity *v2; // r8
  glitch::video::CVertexStreams *v4; // r3
  void *v5; // r0
  _WORD *v6; // r0
  _WORD *v7; // r3
  glitch::scene::CMeshConnectivity::SEdge *i; // r3
  char *v9; // r9
  int v10; // r10
  unsigned int v11; // r5
  unsigned int v12; // r7
  unsigned int v13; // r6
  unsigned int v14; // r4
  _WORD *v15; // r2
  __int16 v16; // r3
  bool v17; // cf
  bool v18; // cc
  _BYTE *v19; // r4
  char v20; // r3
  int result; // r0
  _BYTE *v22; // r4
  char v23; // r3
  int v24; // r9
  glitch::scene::CMeshConnectivity::SEdge *v25; // r11
  int v26; // r10
  char *v27; // r4
  bool v28; // zf
  int v29; // r6
  float *v30; // r2
  float v31; // r5
  float v32; // r8
  float v33; // r7
  float *v34; // r4
  int v35; // r3
  unsigned int v36; // r3
  int v37; // r6
  float *v38; // r3
  int v39; // r1
  char *v40; // r2
  char *v41; // r3
  int v42; // r0
  glitch::scene::CMeshConnectivity::SEdge *v43; // [sp+8h] [bp-6Ch]
  glitch::scene::CMeshConnectivity::SEdge *v44; // [sp+Ch] [bp-68h]
  char *v45; // [sp+10h] [bp-64h]
  int v46; // [sp+14h] [bp-60h]
  unsigned int v47; // [sp+18h] [bp-5Ch]
  unsigned __int16 *v48; // [sp+1Ch] [bp-58h]
  int v49; // [sp+20h] [bp-54h]
  int v50; // [sp+24h] [bp-50h]
  unsigned int v51; // [sp+28h] [bp-4Ch]
  int v52; // [sp+2Ch] [bp-48h]
  glitch::scene::CMeshConnectivity::SEdge *v53; // [sp+30h] [bp-44h]
  glitch::scene::CMeshConnectivity *v54; // [sp+34h] [bp-40h]
  _WORD v55[8]; // [sp+3Ch] [bp-38h] BYREF
  _WORD v56[8]; // [sp+4Ch] [bp-28h] BYREF
  _WORD v57[8]; // [sp+5Ch] [bp-18h] BYREF
  glitch::video::CVertexStreams *v58; // [sp+6Ch] [bp-8h] BYREF

  v2 = this;
  v52 = *(_DWORD *)this;
  v49 = glitch::video::IBuffer::map(*(_DWORD *)(*(_DWORD *)this + 24), 1) + *(_DWORD *)(v52 + 28);
  v58 = *(glitch::video::CVertexStreams **)(*(_DWORD *)v2 + 20);
  v4 = v58;
  if ( v58 )
  {
    ++*(_DWORD *)v58;
    v4 = v58;
  }
  v48 = (unsigned __int16 *)((char *)v4 + 20);
  v46 = glitch::video::IBuffer::map(*((_DWORD *)v4 + 5), 1) + *((_DWORD *)v4 + 6);
  boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v58);
  v47 = *(_DWORD *)(*(_DWORD *)v2 + 32);
  v45 = (char *)operator new[](2 * v47, 0);
  v5 = *((void **)v2 + 4);
  if ( v5 )
    operator delete[](v5);
  v51 = v47 / 3;
  v6 = operator new[](6 * (v47 / 3), 0);
  if ( v47 / 3 )
  {
    v7 = v6;
    do
    {
      *v7 = -1;
      v7[1] = -1;
      v7[2] = -1;
      v7 += 3;
    }
    while ( v7 != &v6[3 * (v47 / 3)] );
  }
  *((_DWORD *)v2 + 4) = v6;
  if ( !a2 )
  {
    if ( v47 )
    {
      for ( i = nullptr;
            i != (glitch::scene::CMeshConnectivity::SEdge *)v47;
            i = (glitch::scene::CMeshConnectivity::SEdge *)((char *)i + 1) )
      {
        *(_WORD *)&v45[a2] = *(_WORD *)(v49 + a2);
        a2 += 2;
      }
    }
    goto LABEL_12;
  }
  if ( !v47 )
    goto LABEL_12;
  v24 = 0;
  v43 = nullptr;
  v53 = nullptr;
  v44 = nullptr;
  v25 = nullptr;
  v54 = v2;
  while ( 1 )
  {
    v26 = *(unsigned __int16 *)(v49 + v24);
    v29 = (v43 - v25) >> 6;
    v30 = (float *)(v46 + v48[7] * v26);
    v31 = *v30;
    v32 = v30[2];
    v33 = v30[1];
    v50 = (v43 - v25) >> 4;
    if ( v29 > 0 )
    {
      v34 = (float *)v25;
      while ( v31 != v34[1] || v33 != v34[2] || v32 != v34[3] )
      {
        if ( v31 == v34[5] && v33 == v34[6] && v32 == v34[7] )
        {
          v34 += 4;
          if ( v34 != (float *)v43 )
            goto LABEL_45;
          goto LABEL_55;
        }
        if ( v31 == v34[9] && v33 == v34[10] && v32 == v34[11] )
        {
          v34 += 8;
          goto LABEL_44;
        }
        if ( v31 == v34[13] && v33 == v34[14] && v32 == v34[15] )
        {
          v34 += 12;
          goto LABEL_44;
        }
        --v29;
        v34 += 16;
        if ( !v29 )
        {
          v35 = (v43 - (glitch::scene::CMeshConnectivity::SEdge *)v34) >> 4;
          goto LABEL_73;
        }
      }
      goto LABEL_44;
    }
    v35 = (v43 - v25) >> 4;
    v34 = (float *)v25;
LABEL_73:
    if ( v35 != 2 )
    {
      if ( v35 != 3 )
      {
        if ( v35 == 1 )
          goto LABEL_77;
        v34 = (float *)v43;
        goto LABEL_44;
      }
      if ( v31 == v34[1] && v33 == v34[2] && v32 == v34[3] )
        goto LABEL_44;
      v34 += 4;
    }
    if ( v31 != v34[1] || v33 != v34[2] || v32 != v34[3] )
    {
      v34 += 4;
LABEL_77:
      if ( v31 != v34[1] || v33 != v34[2] || v32 != v34[3] )
        goto LABEL_55;
    }
LABEL_44:
    if ( v34 != (float *)v43 )
    {
LABEL_45:
      LOWORD(v26) = *(_WORD *)v34;
      v27 = (char *)v25;
      goto LABEL_46;
    }
LABEL_55:
    if ( v53 == v43 )
    {
      if ( v50 )
        v36 = 2 * v50;
      else
        v36 = 1;
      if ( v36 > 0xFFFFFFF || v50 > v36 )
        v36 = 0xFFFFFFF;
      v37 = 16 * v36;
      v27 = (char *)GlitchAlloc(16 * v36, 0);
      if ( v50 > 0 )
      {
        v39 = (v43 - v25) >> 4;
        v40 = (char *)v25 + 16;
        v41 = v27 + 16;
        do
        {
          --v39;
          *((_WORD *)v41 - 8) = *((_WORD *)v40 - 8);
          *((_DWORD *)v41 - 3) = *((_DWORD *)v40 - 3);
          *((_DWORD *)v41 - 2) = *((_DWORD *)v40 - 2);
          v42 = *((_DWORD *)v40 - 1);
          v40 += 16;
          *((_DWORD *)v41 - 1) = v42;
          v41 += 16;
        }
        while ( v39 );
        v38 = (float *)&v27[16 * v50];
      }
      else
      {
        v38 = (float *)v27;
      }
      v38[1] = v31;
      v38[2] = v33;
      v38[3] = v32;
      *(_WORD *)v38 = v26;
      v43 = (glitch::scene::CMeshConnectivity::SEdge *)(v38 + 4);
      GlitchFree(v25);
      v53 = (glitch::scene::CMeshConnectivity::SEdge *)&v27[v37];
    }
    else
    {
      *((float *)v43 + 1) = v31;
      *((float *)v43 + 2) = v33;
      *((float *)v43 + 3) = v32;
      *(_WORD *)v43 = v26;
      v27 = (char *)v25;
      v43 = (glitch::scene::CMeshConnectivity::SEdge *)((char *)v43 + 16);
    }
LABEL_46:
    v28 = (glitch::scene::CMeshConnectivity::SEdge *)((char *)v44 + 1) == (glitch::scene::CMeshConnectivity::SEdge *)v47;
    v44 = (glitch::scene::CMeshConnectivity::SEdge *)((char *)v44 + 1);
    *(_WORD *)&v45[v24] = v26;
    v24 += 2;
    if ( v28 )
      break;
    v25 = (glitch::scene::CMeshConnectivity::SEdge *)v27;
  }
  v2 = v54;
  if ( v27 )
    GlitchFree(v27);
LABEL_12:
  *((_DWORD *)v2 + 5) = v51;
  if ( v51 )
  {
    v9 = v45;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *((unsigned __int16 *)v9 + 1);
      v13 = *((unsigned __int16 *)v9 + 2);
      v14 = *(unsigned __int16 *)&v45[v10];
      v15 = (_WORD *)(*((_DWORD *)v2 + 4) + v10);
      v15[1] = v12;
      v15[2] = v13;
      *v15 = v14;
      if ( v14 < v12 )
        v16 = v12;
      else
        v16 = v14;
      v57[1] = v16;
      v57[6] = 0;
      if ( v14 < v12 )
        v57[0] = v14;
      else
        v57[0] = v12;
      glitch::scene::CMeshConnectivity::addEdgeWithFace(v2, (glitch::scene::CMeshConnectivity::SEdge *)v57, v11);
      v17 = v12 >= v13;
      if ( v12 < v13 )
      {
        v56[0] = v12;
        LOWORD(v12) = v13;
      }
      v56[6] = 0;
      if ( v17 )
        v56[0] = v13;
      v56[1] = v12;
      glitch::scene::CMeshConnectivity::addEdgeWithFace(v2, (glitch::scene::CMeshConnectivity::SEdge *)v56, v11);
      v18 = v14 > v13;
      if ( v14 <= v13 )
        v55[0] = v14;
      v55[6] = 0;
      if ( v14 <= v13 )
        LOWORD(v14) = v13;
      if ( v18 )
        v55[0] = v13;
      v55[1] = v14;
      glitch::scene::CMeshConnectivity::addEdgeWithFace(v2, (glitch::scene::CMeshConnectivity::SEdge *)v55, v11++);
      v9 += 6;
      v10 += 6;
    }
    while ( *((_DWORD *)v2 + 5) > v11 );
  }
  if ( v45 )
    operator delete[](v45);
  if ( v46 )
  {
    v19 = *(_BYTE **)v48;
    v20 = *(_BYTE *)(*(_DWORD *)v48 + 19);
    if ( (v20 & 0x1Fu) <= 1 )
    {
      if ( (v19[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v19 + 24))(*(_DWORD *)v48);
      v19[19] = 0;
    }
    else
    {
      v19[19] = ((v20 & 0x1F) - 1) | v20 & 0xE0;
    }
  }
  result = v49;
  if ( v49 )
  {
    v22 = *(_BYTE **)(v52 + 24);
    v23 = v22[19];
    if ( (v23 & 0x1Fu) <= 1 )
    {
      if ( (v22[18] & 0x20) != 0 )
        result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v22 + 24))(*(_DWORD *)(v52 + 24));
      v22[19] = 0;
    }
    else
    {
      v22[19] = ((v23 & 0x1F) - 1) | v23 & 0xE0;
    }
  }
  return result;
}


// ===== 7041a8 FT_RoundFix =====
int __fastcall FT_RoundFix(int a1)
{
  bool v1; // nf
  unsigned int v2; // r0
  int result; // r0

  v1 = a1 < 0;
  if ( a1 >= 0 )
    v2 = a1 + 0x8000;
  else
    v2 = 0x8000 - a1;
  result = HIWORD(v2) << 16;
  if ( v1 )
    return -result;
  return result;
}


// ===== 7041cc FT_CeilFix =====
unsigned int __fastcall FT_CeilFix(int a1)
{
  bool v1; // nf
  int v2; // r0
  unsigned int result; // r0

  v1 = a1 < 0;
  if ( a1 >= 0 )
    v2 = a1 + 65280;
  else
    v2 = 65280 - a1;
  result = (unsigned int)(v2 + 255) >> 16 << 16;
  if ( v1 )
    return -result;
  return result;
}


// ===== 7041f8 FT_FloorFix =====
int __fastcall FT_FloorFix(int a1)
{
  bool v1; // nf
  unsigned int v2; // r0
  int result; // r0

  v1 = a1 < 0;
  if ( a1 >= 0 )
    v2 = HIWORD(a1);
  else
    v2 = (unsigned int)-a1 >> 16;
  result = v2 << 16;
  if ( v1 )
    return -result;
  return result;
}


// ===== 704218 FT_Sqrt32 =====
unsigned int __fastcall FT_Sqrt32(unsigned int a1)
{
  int v1; // r3
  unsigned int v2; // r1
  unsigned int v3; // r2
  unsigned int v4; // r12

  v1 = 0;
  v2 = 0x40000000;
  v3 = 0;
  do
  {
    v4 = v2 + v3;
    ++v1;
    if ( a1 >= v2 + v3 )
    {
      v3 = v4 + v2;
      a1 -= v4;
    }
    v3 >>= 1;
    v2 >>= 2;
  }
  while ( v1 != 16 );
  return v3;
}


// ===== 704250 FT_MulDiv =====
int __fastcall FT_MulDiv(int result, int a2, int a3)
{
  bool v3; // zf
  unsigned int v4; // r12
  int v5; // r5
  int v6; // r3
  int v7; // r0
  bool v8; // cc
  int v9; // r4
  unsigned int v10; // r7
  int v11; // r6
  unsigned int v12; // r0
  unsigned int v13; // r5
  unsigned int v14; // r2
  unsigned int v15; // r12
  int v16; // r5
  int v17; // r0
  int v18; // r2
  unsigned int v19; // r1
  unsigned int v20; // r2
  int v21; // r12
  _BOOL4 v22; // r1

  v3 = result == 0;
  if ( result )
    v3 = a2 == a3;
  if ( !v3 )
  {
    v4 = abs32(result);
    v5 = abs32(a2);
    v6 = abs32(a3);
    v7 = a2 ^ result;
    v8 = v5 <= 46340;
    if ( v5 <= 46340 )
      v8 = (int)v4 <= 46340;
    v9 = v7 ^ a3;
    if ( !v8 )
      goto LABEL_17;
    v22 = v6 > 0;
    if ( v6 > 176095 )
      v22 = 0;
    if ( v22 )
    {
      result = (int)(v4 * v5 + (v6 >> 1)) / v6;
      if ( v9 < 0 )
        return -result;
    }
    else
    {
LABEL_17:
      if ( !v6 )
        goto LABEL_18;
      v10 = HIWORD(v4);
      v11 = (unsigned __int16)v5;
      v12 = HIWORD(v4) * (unsigned __int16)v5;
      v13 = HIWORD(v5);
      v14 = v12 + (unsigned __int16)v4 * v13;
      v15 = (v14 << 16) + (unsigned __int16)v4 * v11;
      v16 = HIWORD(v14) + v10 * v13;
      if ( v12 <= v14 )
        v17 = 0;
      else
        v17 = 0x10000;
      if ( v14 << 16 > v15 )
        v18 = v16 + 1;
      else
        v18 = v16;
      v19 = v15 + (v6 >> 1);
      if ( v15 > v19 )
        ++v18;
      v20 = v18 + v17;
      if ( v6 > v20 )
      {
        v21 = 32;
        result = 0;
        while ( 1 )
        {
          v20 = (v19 >> 31) | (2 * v20);
          result *= 2;
          if ( v6 <= v20 )
          {
            v20 -= v6;
            result |= 1u;
          }
          if ( !--v21 )
            break;
          v19 *= 2;
        }
        if ( v9 < 0 )
          return -result;
      }
      else
      {
LABEL_18:
        result = 0x7FFFFFFF;
        if ( v9 < 0 )
          return -2147483647;
      }
    }
  }
  return result;
}


// ===== 704378 FT_MulDiv_No_Round =====
int __fastcall FT_MulDiv_No_Round(int result, int a2, int a3)
{
  bool v3; // zf
  int v4; // r6
  unsigned int v5; // r5
  int v6; // r1
  unsigned int v7; // r3
  bool v8; // cc
  int v9; // r4
  int v10; // r1
  unsigned int v11; // r2
  unsigned int v12; // r6
  unsigned int v13; // r7
  unsigned int v14; // r8
  int v15; // r6
  unsigned int v16; // r1
  int v17; // r7
  int v18; // r2
  unsigned int v19; // r2
  int v20; // r12

  v3 = result == 0;
  if ( result )
    v3 = a2 == a3;
  if ( !v3 )
  {
    v4 = abs32(a2);
    v5 = abs32(result);
    v6 = a2 ^ result;
    v7 = abs32(a3);
    v8 = v4 <= 46340;
    if ( v4 <= 46340 )
      v8 = (int)v5 <= 46340;
    result = v8;
    v9 = v6 ^ a3;
    if ( v8 )
    {
      if ( v7 )
      {
        result = (int)(v5 * v4) / (int)v7;
        goto LABEL_13;
      }
    }
    else if ( v7 )
    {
      v10 = (unsigned __int16)v4;
      v11 = HIWORD(v5) * (unsigned __int16)v4;
      v12 = HIWORD(v4);
      v13 = v11 + (unsigned __int16)v5 * v12;
      v14 = v13 << 16;
      v15 = HIWORD(v13) + HIWORD(v5) * v12;
      v16 = (v13 << 16) + (unsigned __int16)v5 * v10;
      v17 = v11 <= v13 ? 0 : 0x10000;
      v18 = v14 > v16 ? v15 + 1 : v15;
      v19 = v18 + v17;
      if ( v7 > v19 )
      {
        v20 = 32;
        while ( 1 )
        {
          v19 = (v16 >> 31) | (2 * v19);
          result *= 2;
          if ( v7 <= v19 )
          {
            v19 -= v7;
            result |= 1u;
          }
          if ( !--v20 )
            break;
          v16 *= 2;
        }
        goto LABEL_13;
      }
    }
    result = 0x7FFFFFFF;
LABEL_13:
    if ( v9 < 0 )
      return -result;
  }
  return result;
}


// ===== 704468 FT_MulFix =====
int __fastcall FT_MulFix(int result, int a2)
{
  bool v2; // zf
  int v3; // r3
  int v4; // r2
  unsigned int v5; // r0
  unsigned int v6; // r1
  bool v7; // cc
  unsigned int v8; // r0

  v2 = result == 0;
  if ( result )
    v2 = a2 == 0x10000;
  if ( !v2 )
  {
    v3 = result >> 31;
    v4 = a2 >> 31;
    v5 = abs32(result);
    v6 = abs32(a2);
    v7 = v6 > 0x100000;
    if ( v6 <= 0x100000 )
      v7 = v5 > 0x800;
    if ( v7 )
      v8 = v6 * HIWORD(v5)
         + (unsigned __int16)v5 * HIWORD(v6)
         + (((unsigned __int16)v5 * (unsigned int)(unsigned __int16)v6 + 0x8000) >> 16);
    else
      v8 = (v5 * v6 + 0x8000) >> 16;
    return (v8 ^ v4 ^ v3) - (v4 ^ v3);
  }
  return result;
}


// ===== 7044e4 FT_DivFix =====
unsigned int __fastcall FT_DivFix(int a1, int a2)
{
  int v2; // r3
  int v3; // r4
  int v4; // r1
  unsigned int v5; // r2
  unsigned int result; // r0
  unsigned int v7; // r0
  unsigned int v8; // r1
  int v9; // r12

  v2 = abs32(a2);
  v3 = a2 ^ a1;
  if ( !v2 )
    goto LABEL_9;
  v4 = abs32(a1);
  v5 = v4 >> 16;
  if ( !(v4 >> 16) )
  {
    result = ((v4 << 16) + (v2 >> 1)) / (unsigned int)v2;
    if ( v3 < 0 )
      return -result;
    return result;
  }
  v7 = v4 << 16;
  v8 = (v4 << 16) + (v2 >> 1);
  if ( v7 > v8 )
    ++v5;
  if ( v2 > v5 )
  {
    v9 = 32;
    result = 0;
    while ( 1 )
    {
      v5 = (v8 >> 31) | (2 * v5);
      result *= 2;
      if ( v2 <= v5 )
      {
        v5 -= v2;
        result |= 1u;
      }
      if ( !--v9 )
        break;
      v8 *= 2;
    }
    if ( v3 < 0 )
      return -result;
  }
  else
  {
LABEL_9:
    result = 0x7FFFFFFF;
    if ( v3 < 0 )
      return -2147483647;
  }
  return result;
}


// ===== 70458c FT_Matrix_Multiply =====
int *__fastcall FT_Matrix_Multiply(int *result, int *a2)
{
  bool v2; // zf
  int *v4; // r5
  int v5; // r9
  int v6; // r11
  int v7; // r8
  int v8; // r10
  int v9; // r6
  int v10; // r7
  int v11; // [sp+4h] [bp-8h]

  v2 = result == nullptr;
  if ( result )
    v2 = a2 == nullptr;
  v4 = result;
  if ( !v2 )
  {
    v5 = FT_MulFix(*result, *a2);
    v6 = FT_MulFix(v4[1], a2[2]);
    v7 = FT_MulFix(*v4, a2[1]);
    v8 = FT_MulFix(v4[1], a2[3]);
    v9 = FT_MulFix(v4[2], *a2);
    v10 = FT_MulFix(v4[3], a2[2]);
    v11 = FT_MulFix(v4[2], a2[1]);
    result = (int *)FT_MulFix(v4[3], a2[3]);
    a2[3] = (int)result + v11;
    *a2 = v6 + v5;
    a2[1] = v8 + v7;
    a2[2] = v10 + v9;
  }
  return result;
}


// ===== 704654 FT_Matrix_Invert =====
int __fastcall FT_Matrix_Invert(int *a1)
{
  int v2; // r5
  int v3; // r5
  int v5; // r6

  if ( !a1 )
    return 6;
  v2 = FT_MulFix(*a1, a1[3]);
  v3 = v2 - FT_MulFix(a1[1], a1[2]);
  if ( !v3 )
    return 6;
  a1[1] = -FT_DivFix(a1[1], v3);
  a1[2] = -FT_DivFix(a1[2], v3);
  v5 = *a1;
  *a1 = FT_DivFix(a1[3], v3);
  a1[3] = FT_DivFix(v5, v3);
  return 0;
}


// ===== 7046e0 FT_Matrix_Multiply_Scaled =====
int *__fastcall FT_Matrix_Multiply_Scaled(int *result, int *a2, int a3)
{
  bool v3; // zf
  int *v5; // r5
  int v6; // r6
  int v7; // r8
  int v8; // r10
  int v9; // r9
  int v10; // r7
  int v11; // r11
  int v12; // [sp+0h] [bp-Ch]
  int v13; // [sp+4h] [bp-8h]

  v3 = result == nullptr;
  if ( result )
    v3 = a2 == nullptr;
  v5 = result;
  if ( !v3 )
  {
    v6 = a3 << 16;
    v7 = FT_MulDiv(*result, *a2, a3 << 16);
    v8 = FT_MulDiv(v5[1], a2[2], v6);
    v9 = FT_MulDiv(*v5, a2[1], v6);
    v10 = FT_MulDiv(v5[1], a2[3], v6);
    v12 = FT_MulDiv(v5[2], *a2, v6);
    v11 = FT_MulDiv(v5[3], a2[2], v6);
    v13 = FT_MulDiv(v5[2], a2[1], v6);
    result = (int *)(FT_MulDiv(v5[3], a2[3], v6) + v13);
    a2[3] = (int)result;
    *a2 = v8 + v7;
    a2[1] = v10 + v9;
    a2[2] = v11 + v12;
  }
  return result;
}


// ===== 7047cc FT_Vector_Transform_Scaled =====
int *__fastcall FT_Vector_Transform_Scaled(int *result, int *a2, int a3)
{
  bool v3; // zf
  int *v5; // r4
  int v6; // r6
  int v7; // r8
  int v8; // r10
  int v9; // r7

  v3 = result == nullptr;
  if ( result )
    v3 = a2 == nullptr;
  v5 = result;
  if ( !v3 )
  {
    v6 = a3 << 16;
    v7 = FT_MulDiv(*result, *a2, a3 << 16);
    v8 = FT_MulDiv(v5[1], a2[1], v6);
    v9 = FT_MulDiv(*v5, a2[2], v6);
    result = (int *)(FT_MulDiv(v5[1], a2[3], v6) + v9);
    v5[1] = (int)result;
    *v5 = v8 + v7;
  }
  return result;
}


// ===== 704848 FT_SqrtFixed =====
int __fastcall FT_SqrtFixed(int a1)
{
  unsigned int v1; // r1
  int result; // r0
  unsigned int v3; // r3
  int v4; // r2
  unsigned int v5; // r12

  v1 = a1;
  if ( a1 <= 0 )
    return 0;
  v3 = 0;
  v4 = 24;
  result = 0;
  do
  {
    result *= 2;
    v3 = (v1 >> 30) | (4 * v3);
    v5 = 2 * result + 1;
    if ( v3 >= v5 )
    {
      v3 -= v5;
      ++result;
    }
    --v4;
    v1 *= 4;
  }
  while ( v4 );
  return result;
}


// ===== 704898 ft_corner_orientation =====
unsigned int __fastcall ft_corner_orientation(unsigned int result, int a2, int a3, int a4)
{
  unsigned int v4; // r10
  int v5; // r7
  int v6; // r12
  unsigned int v7; // r2
  unsigned int v8; // r12
  unsigned int v9; // r4
  int v10; // r9
  unsigned __int64 v11; // kr00_8
  unsigned int v12; // r1
  int v13; // r2
  unsigned int v14; // r6
  unsigned int v15; // r0
  int v16; // r4
  int v17; // r12
  unsigned int v18; // r4
  unsigned int v19; // r2
  unsigned int v20; // [sp+4h] [bp-Ch]
  unsigned int v21; // [sp+8h] [bp-8h]

  if ( !a2 )
  {
    if ( (result & 0x80000000) != 0 )
      return -a4;
    else
      return a4;
  }
  if ( !result )
  {
    if ( a2 >= 0 )
      return -a3;
    else
      return a3;
  }
  if ( !a4 )
  {
    if ( a3 < 0 )
      return -a2;
    else
      return a2;
  }
  if ( a3 )
  {
    v4 = HIWORD(a2);
    v5 = (unsigned __int16)a3;
    v6 = HIWORD(a2) * (unsigned __int16)a3;
    v7 = HIWORD(a3);
    v20 = v6;
    v8 = v6 + (unsigned __int16)a2 * v7;
    v9 = HIWORD(result) * (unsigned __int16)a4 + (unsigned __int16)result * HIWORD(a4);
    v21 = HIWORD(result) * (unsigned __int16)a4;
    v10 = HIWORD(v9) + HIWORD(result) * HIWORD(a4);
    v11 = (unsigned __int64)v8 << 16;
    v12 = v11 + (unsigned __int16)a2 * v5;
    v13 = HIDWORD(v11) + v4 * v7;
    v14 = v9 << 16;
    if ( (unsigned int)v11 > v12 )
      ++v13;
    v15 = v14 + (unsigned __int16)result * (unsigned __int16)a4;
    if ( v14 > v15 )
      ++v10;
    if ( v21 <= v9 )
      v16 = 0;
    else
      v16 = 0x10000;
    if ( v20 <= v8 )
      v17 = 0;
    else
      v17 = 0x10000;
    v18 = v10 + v16;
    v19 = v13 + v17;
    if ( v18 > v19 )
      return 1;
    if ( v18 >= v19 )
    {
      if ( v15 > v12 )
        return 1;
      if ( v15 >= v12 )
        return 0;
    }
    return -1;
  }
  if ( a4 >= 0 )
    return -result;
  return result;
}


// ===== 7049c4 ft_corner_is_flat =====
bool __fastcall ft_corner_is_flat(int a1, int a2, int a3, int a4)
{
  unsigned int v4; // r4
  unsigned int v5; // r5
  unsigned int v6; // r1

  v4 = abs32(a2);
  v5 = abs32(a4 + a2);
  v6 = abs32(a3 + a1);
  return (int)(v4 + abs32(a1) + abs32(a3) + abs32(a4) - (v5 + v6)) < (int)(v5 + v6) >> 4;
}


// ===== 704a28 FT_GlyphLoader_Rewind =====
int __fastcall FT_GlyphLoader_Rewind(int a1)
{
  int v1; // r1
  int v2; // r2
  int v3; // r3
  _DWORD *v4; // r4
  _DWORD *v5; // r12
  int result; // r0
  int v7; // r1
  int v8; // r2
  int v9; // r3

  *(_DWORD *)(a1 + 48) = 0;
  *(_WORD *)(a1 + 22) = 0;
  *(_WORD *)(a1 + 20) = 0;
  v1 = *(_DWORD *)(a1 + 24);
  v2 = *(_DWORD *)(a1 + 28);
  v3 = *(_DWORD *)(a1 + 32);
  v4 = (_DWORD *)(a1 + 36);
  *(_DWORD *)(a1 + 56) = *(_DWORD *)(a1 + 20);
  *(_DWORD *)(a1 + 60) = v1;
  *(_DWORD *)(a1 + 64) = v2;
  *(_DWORD *)(a1 + 68) = v3;
  v5 = (_DWORD *)(a1 + 72);
  result = *(_DWORD *)(a1 + 36);
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  *v5 = result;
  v5[1] = v7;
  v5[2] = v8;
  v5[3] = v9;
  v5[4] = v4[4];
  return result;
}


// ===== 704a64 FT_GlyphLoader_Prepare =====
int __fastcall FT_GlyphLoader_Prepare(int result)
{
  int v1; // r3
  int v2; // r5
  int v3; // r2
  int v4; // r12
  int v5; // r1
  int v6; // r4
  int v7; // r1

  v1 = *(__int16 *)(result + 22);
  v2 = *(unsigned __int8 *)(result + 16);
  v3 = 8 * v1;
  v4 = *(_DWORD *)(result + 28) + v1;
  v5 = *(_DWORD *)(result + 32) + 2 * *(__int16 *)(result + 20);
  v6 = *(_DWORD *)(result + 24) + 8 * v1;
  *(_DWORD *)(result + 84) = 0;
  *(_DWORD *)(result + 60) = v6;
  *(_DWORD *)(result + 64) = v4;
  *(_DWORD *)(result + 68) = v5;
  *(_WORD *)(result + 58) = 0;
  *(_WORD *)(result + 56) = 0;
  if ( v2 )
  {
    v7 = *(_DWORD *)(result + 44);
    *(_DWORD *)(result + 76) = *(_DWORD *)(result + 40) + v3;
    *(_DWORD *)(result + 80) = v7 + v3;
  }
  *(_DWORD *)(result + 88) = *(_DWORD *)(result + 52) + 32 * *(_DWORD *)(result + 48);
  return result;
}


// ===== 704ae4 FT_GlyphLoader_Add =====
int __fastcall FT_GlyphLoader_Add(int result)
{
  __int16 v1; // r5
  unsigned int v2; // r4
  __int16 v3; // r2
  int v4; // r3
  unsigned int i; // r3
  int v6; // r2

  if ( result )
  {
    v1 = *(_WORD *)(result + 22);
    v2 = *(__int16 *)(result + 56);
    v3 = *(_WORD *)(result + 56) + *(_WORD *)(result + 20);
    v4 = *(_DWORD *)(result + 48) + *(_DWORD *)(result + 84);
    *(_WORD *)(result + 22) = *(_WORD *)(result + 58) + v1;
    *(_WORD *)(result + 20) = v3;
    *(_DWORD *)(result + 48) = v4;
    if ( v2 )
    {
      for ( i = 0; i < v2; ++i )
      {
        v6 = 2 * i;
        *(_WORD *)(*(_DWORD *)(result + 68) + v6) += v1;
      }
    }
    return FT_GlyphLoader_Prepare(result);
  }
  return result;
}


// ===== 704b60 FT_Get_Sfnt_Name_Count =====
int __fastcall FT_Get_Sfnt_Name_Count(int a1)
{
  if ( a1 && (*(_DWORD *)(a1 + 8) & 8) != 0 )
    return *(unsigned __int16 *)(a1 + 344);
  else
    return 0;
}


// ===== 704b88 ft_validator_init =====
_DWORD *__fastcall ft_validator_init(_DWORD *result, int a2, int a3, int a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = 0;
  return result;
}


// ===== 704ba0 ft_validator_run =====
int ft_validator_run()
{
  return -1;
}


// ===== 704ba8 FT_Set_Transform =====
int __fastcall FT_Set_Transform(int result, _DWORD *a2, int *a3)
{
  _DWORD *v3; // r4
  _DWORD *v5; // r12
  int v6; // r1
  int v7; // r2
  int v8; // r3
  int v9; // r3
  bool v10; // zf

  v3 = a2;
  if ( result )
  {
    v5 = *(_DWORD **)(result + 128);
    v5[7] = 0;
    if ( a2 )
    {
      result = *a2;
      v6 = a2[1];
      v7 = v3[2];
      v8 = v3[3];
      v5[1] = *v3;
      v5[2] = v6;
      v5[3] = v7;
      v5[4] = v8;
    }
    else
    {
      v5[3] = 0;
      v5[4] = 0x10000;
      v5[2] = 0;
      v5[1] = 0x10000;
      v3 = v5 + 1;
    }
    if ( *(_QWORD *)(v3 + 1) || *v3 != 0x10000 || (v9 = v3[3], v9 != 0x10000) )
    {
      v9 = v5[7] | 1;
      v5[7] = v9;
    }
    v10 = a3 == nullptr;
    if ( a3 )
    {
      v9 = *a3;
    }
    else
    {
      v5[6] = 0;
      v5[5] = 0;
    }
    if ( a3 )
    {
      v5[5] = v9;
      v9 = a3[1];
    }
    else
    {
      a3 = v5 + 5;
    }
    if ( !v10 )
      v5[6] = v9;
    if ( *(_QWORD *)a3 )
      v5[7] |= 2u;
  }
  return result;
}


// ===== 704c68 FT_Match_Size =====
int __fastcall FT_Match_Size(_DWORD *a1, int a2, int a3, int *a4)
{
  int v4; // r5
  int v5; // r6
  int result; // r0
  int v7; // r12
  int v8; // r4
  bool v9; // zf
  int v10; // r4
  bool v11; // zf
  int v12; // r5
  int v13; // r4
  unsigned int v14; // r6
  unsigned int v15; // r5
  int v16; // r1
  int v17; // r7

  if ( (a1[2] & 2) == 0 )
    return 35;
  v7 = *(_DWORD *)a2;
  if ( *(_DWORD *)a2 )
    return 7;
  v8 = *(_DWORD *)(a2 + 12);
  v9 = v8 == 0;
  if ( v8 )
  {
    v7 = *(_DWORD *)(a2 + 4);
    v4 = 954437177;
    v8 *= v7;
  }
  else
  {
    v5 = *(_DWORD *)(a2 + 4);
  }
  if ( !v9 )
    v5 = ((int)((unsigned __int64)(v4 * (__int64)(v8 + 36)) >> 32) >> 4) - ((v8 + 36) >> 31);
  v10 = *(_DWORD *)(a2 + 16);
  if ( v9 )
    v7 = v5;
  v11 = v10 == 0;
  if ( v10 )
  {
    a2 = *(_DWORD *)(a2 + 8);
    v12 = 954437177;
    v10 *= a2;
  }
  else
  {
    v12 = *(_DWORD *)(a2 + 8);
  }
  if ( v11 )
    a2 = v12;
  else
    v12 = ((int)((unsigned __int64)(v12 * (__int64)(v10 + 36)) >> 32) >> 4) - ((v10 + 36) >> 31);
  if ( v7 )
  {
    if ( !a2 )
      v12 = v5;
  }
  else if ( a2 )
  {
    v5 = v12;
  }
  v13 = a1[7];
  v14 = (v5 + 32) & 0xFFFFFFC0;
  v15 = (v12 + 32) & 0xFFFFFFC0;
  if ( v13 <= 0 )
    return 23;
  v16 = a1[8];
  result = 0;
  while ( 1 )
  {
    if ( ((*(_DWORD *)(v16 + 12) + 32) & 0xFFFFFFC0) == v15 )
    {
      v17 = a3;
      if ( a3 )
        v17 = 1;
      if ( ((*(_DWORD *)(v16 + 8) + 32) & 0xFFFFFFC0) == v14 ? v17 | 1 : v17 )
        break;
    }
    ++result;
    v16 += 16;
    if ( result == v13 )
      return 23;
  }
  if ( a4 )
    *a4 = result;
  else
    result = 0;
  if ( a4 )
    return 0;
  return result;
}


// ===== 704d9c ft_synthesize_vertical_metrics =====
_DWORD *__fastcall ft_synthesize_vertical_metrics(_DWORD *result, int a2)
{
  int v2; // r2
  int v3; // r3

  v2 = result[1];
  if ( !a2 )
    a2 = 12 * v2 / 10;
  v3 = *result / -2;
  result[7] = a2;
  result[5] = v3;
  result[6] = (a2 - v2) / 2;
  return result;
}


// ===== 704df4 ft_recompute_scaled_metrics =====
unsigned int __fastcall ft_recompute_scaled_metrics(__int16 *a1, int *a2)
{
  unsigned int result; // r0

  a2[3] = (FT_MulFix(a1[35], a2[2]) + 63) & 0xFFFFFFC0;
  a2[4] = FT_MulFix(a1[36], a2[2]) & 0xFFFFFFC0;
  a2[5] = (FT_MulFix(a1[37], a2[2]) + 32) & 0xFFFFFFC0;
  result = (FT_MulFix(a1[38], a2[1]) + 32) & 0xFFFFFFC0;
  a2[6] = result;
  return result;
}


// ===== 704e60 FT_Select_Metrics =====
unsigned int __fastcall FT_Select_Metrics(int a1, int a2)
{
  int v2; // r3
  int v3; // r1
  int v4; // r4
  int v5; // r5
  unsigned int result; // r0

  v2 = *(_DWORD *)(a1 + 32);
  v3 = 16 * a2;
  v4 = *(_DWORD *)(a1 + 88);
  v5 = v2 + v3;
  *(_WORD *)(v4 + 12) = (*(_DWORD *)(v2 + v3 + 8) + 32) >> 6;
  *(_WORD *)(v4 + 14) = (*(_DWORD *)(v2 + v3 + 12) + 32) >> 6;
  if ( (*(_DWORD *)(a1 + 8) & 1) != 0 )
  {
    *(_DWORD *)(v4 + 16) = FT_DivFix(*(_DWORD *)(v5 + 8), *(unsigned __int16 *)(a1 + 68));
    *(_DWORD *)(v4 + 20) = FT_DivFix(*(_DWORD *)(v5 + 12), *(unsigned __int16 *)(a1 + 68));
    return ft_recompute_scaled_metrics((__int16 *)a1, (int *)(v4 + 12));
  }
  else
  {
    *(_DWORD *)(v4 + 20) = 0x400000;
    *(_DWORD *)(v4 + 16) = 0x400000;
    result = *(_DWORD *)(v5 + 12);
    *(_DWORD *)(v4 + 28) = 0;
    *(_DWORD *)(v4 + 24) = result;
    *(_DWORD *)(v4 + 32) = *(__int16 *)(v2 + v3) << 6;
    *(_DWORD *)(v4 + 36) = *(_DWORD *)(v5 + 8);
  }
  return result;
}


// ===== 704f04 FT_Select_Size =====
int __fastcall FT_Select_Size(_DWORD *a1, int a2)
{
  int (__fastcall *v2)(_DWORD); // r4

  if ( !a1 || (a1[2] & 2) == 0 )
    return 35;
  if ( a2 < 0 || a2 >= a1[7] )
    return 6;
  v2 = *(int (__fastcall **)(_DWORD))(*(_DWORD *)(a1[24] + 20) + 100);
  if ( v2 )
    return v2(a1[22]);
  FT_Select_Metrics((int)a1, a2);
  return 0;
}


// ===== 704f6c FT_Get_Kerning =====
int __fastcall FT_Get_Kerning(int a1, int a2, int a3, int a4, int *a5)
{
  int v7; // r7
  int v8; // r12
  int (*v9)(void); // r12
  int v10; // r3
  unsigned int v11; // r1
  unsigned int v12; // r1
  unsigned int v13; // r3

  if ( !a1 )
    return 35;
  if ( !a5 )
    return 6;
  v8 = *(_DWORD *)(a1 + 96);
  a5[1] = 0;
  *a5 = 0;
  v9 = *(int (**)(void))(*(_DWORD *)(v8 + 20) + 84);
  if ( !v9 )
    return 0;
  v7 = v9();
  if ( !v7 && a4 != 2 )
  {
    *a5 = FT_MulFix(*a5, *(_DWORD *)(*(_DWORD *)(a1 + 88) + 16));
    a5[1] = FT_MulFix(a5[1], *(_DWORD *)(*(_DWORD *)(a1 + 88) + 20));
    if ( a4 != 1 )
    {
      v10 = *(_DWORD *)(a1 + 88);
      v11 = *(unsigned __int16 *)(v10 + 12);
      if ( v11 <= 0x18 )
      {
        *a5 = FT_MulDiv(*a5, v11, 25);
        v10 = *(_DWORD *)(a1 + 88);
      }
      v12 = *(unsigned __int16 *)(v10 + 14);
      if ( v12 <= 0x18 )
        a5[1] = FT_MulDiv(a5[1], v12, 25);
      v13 = (*a5 + 32) & 0xFFFFFFC0;
      a5[1] = (a5[1] + 32) & 0xFFFFFFC0;
      *a5 = v13;
    }
  }
  return v7;
}


// ===== 70506c FT_Get_Track_Kerning =====
int __fastcall FT_Get_Track_Kerning(int a1, int a2, int a3, int a4)
{
  int (*v8)(void); // r3
  int (__fastcall **v9)(int, int, int, int); // r12

  if ( !a1 )
    return 35;
  if ( !a4 )
    return 6;
  v8 = *(int (**)(void))(**(_DWORD **)(a1 + 96) + 32);
  if ( v8 && (v9 = (int (__fastcall **)(int, int, int, int))v8()) != nullptr )
    return (*v9)(a1, a2, a3, a4);
  else
    return 7;
}


// ===== 7050ec FT_Get_Char_Index =====
int __fastcall FT_Get_Char_Index(int a1)
{
  int v1; // r3

  if ( a1 && (v1 = *(_DWORD *)(a1 + 92)) != 0 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)(v1 + 12) + 12))(*(_DWORD *)(a1 + 92));
  else
    return 0;
}


// ===== 705120 FT_Get_Next_Char =====
int __fastcall FT_Get_Next_Char(int a1, int a2, int *a3)
{
  int v4; // r3
  int v5; // r3
  int result; // r0
  int v7; // [sp+4h] [bp-4h] BYREF

  if ( a1 && (v4 = *(_DWORD *)(a1 + 92)) != 0 )
  {
    v7 = a2;
    v5 = (*(int (__fastcall **)(int, int *))(*(_DWORD *)(v4 + 12) + 16))(v4, &v7);
    if ( v5 )
    {
      result = v7;
      goto LABEL_6;
    }
  }
  else
  {
    v5 = 0;
  }
  result = 0;
LABEL_6:
  if ( a3 )
    *a3 = v5;
  return result;
}


// ===== 705184 FT_Get_First_Char =====
int __fastcall FT_Get_First_Char(int a1, _DWORD *a2)
{
  int result; // r0
  int Char_Index; // [sp+4h] [bp-8h] BYREF

  Char_Index = 0;
  if ( a1 && *(_DWORD *)(a1 + 92) && (Char_Index = FT_Get_Char_Index(a1)) == 0 )
    result = FT_Get_Next_Char(a1, 0, &Char_Index);
  else
    result = 0;
  if ( a2 )
    *a2 = Char_Index;
  return result;
}


// ===== 7051ec FT_Get_Name_Index =====
int __fastcall FT_Get_Name_Index(int a1, int a2)
{
  int v4; // r2
  int v5; // r3
  int (__fastcall *v6)(int, int); // r3
  int (*v8)(void); // r3
  int v9; // r0

  if ( !a1 )
    return 0;
  if ( (*(_DWORD *)(a1 + 8) & 0x200) == 0 )
    return 0;
  v4 = *(_DWORD *)(a1 + 128);
  v5 = *(_DWORD *)(v4 + 40);
  if ( v5 == -2 )
    return 0;
  if ( !v5 )
  {
    v8 = *(int (**)(void))(**(_DWORD **)(a1 + 96) + 32);
    if ( v8 && (v9 = v8(), v5 = v9, v4 = *(_DWORD *)(a1 + 128), v9) )
    {
      *(_DWORD *)(v4 + 40) = v9;
    }
    else
    {
      v5 = 0;
      *(_DWORD *)(v4 + 40) = -2;
    }
  }
  if ( v5 && (v6 = *(int (__fastcall **)(int, int))(v5 + 4)) != nullptr )
    return v6(a1, a2);
  else
    return 0;
}


// ===== 705294 FT_Get_Glyph_Name =====
int __fastcall FT_Get_Glyph_Name(int a1, unsigned int a2, _BYTE *a3, int a4)
{
  bool v4; // zf
  int v7; // r6
  int (__fastcall **v8)(int, unsigned int); // r1
  int (*v10)(void); // r12
  int v11; // r0

  v4 = a4 == 0;
  if ( a4 )
    v4 = a3 == nullptr;
  if ( !v4 )
    *a3 = 0;
  if ( !a1 )
    return 6;
  if ( *(_DWORD *)(a1 + 16) < a2 )
    return 6;
  if ( (*(_DWORD *)(a1 + 8) & 0x200) == 0 )
    return 6;
  v7 = *(_DWORD *)(a1 + 128);
  v8 = *(int (__fastcall ***)(int, unsigned int))(v7 + 40);
  if ( v8 == (int (__fastcall **)(int, unsigned int))-2 )
    return 6;
  if ( !v8 )
  {
    v10 = *(int (**)(void))(**(_DWORD **)(a1 + 96) + 32);
    if ( v10 && (v11 = v10(), v8 = (int (__fastcall **)(int, unsigned int))v11, v7 = *(_DWORD *)(a1 + 128), v11) )
    {
      *(_DWORD *)(v7 + 40) = v11;
    }
    else
    {
      v8 = nullptr;
      *(_DWORD *)(v7 + 40) = -2;
    }
  }
  if ( v8 && *v8 )
    return (*v8)(a1, a2);
  else
    return 6;
}


// ===== 705374 FT_Get_Postscript_Name =====
int __fastcall FT_Get_Postscript_Name(int a1)
{
  int v3; // r2
  int (__fastcall **v4)(int); // r3
  int (__fastcall *v5)(int); // r3
  int (*v6)(void); // r3
  int v7; // r0

  if ( !a1 )
    return 0;
  v3 = *(_DWORD *)(a1 + 128);
  v4 = *(int (__fastcall ***)(int))(v3 + 32);
  if ( v4 == (int (__fastcall **)(int))-2 )
    return 0;
  if ( !v4 )
  {
    v6 = *(int (**)(void))(**(_DWORD **)(a1 + 96) + 32);
    if ( v6 && (v7 = v6(), v4 = (int (__fastcall **)(int))v7, v3 = *(_DWORD *)(a1 + 128), v7) )
    {
      *(_DWORD *)(v3 + 32) = v7;
    }
    else
    {
      v4 = nullptr;
      *(_DWORD *)(v3 + 32) = -2;
    }
  }
  if ( v4 && (v5 = *v4) != nullptr )
    return v5(a1);
  else
    return 0;
}


// ===== 705408 FT_Get_Sfnt_Table =====
int __fastcall FT_Get_Sfnt_Table(int a1, int a2)
{
  int (*v5)(void); // r3
  int v6; // r3

  if ( a1
    && (*(_DWORD *)(a1 + 8) & 8) != 0
    && (v5 = *(int (**)(void))(**(_DWORD **)(a1 + 96) + 32)) != nullptr
    && (v6 = v5()) != 0 )
  {
    return (*(int (__fastcall **)(int, int))(v6 + 4))(a1, a2);
  }
  else
  {
    return 0;
  }
}


// ===== 70546c FT_Load_Sfnt_Table =====
int __fastcall FT_Load_Sfnt_Table(int a1, int a2, int a3, int a4, int a5)
{
  int (*v9)(void); // r3
  int (__fastcall **v10)(int, int, int, int, int); // r12

  if ( !a1 || (*(_DWORD *)(a1 + 8) & 8) == 0 )
    return 35;
  v9 = *(int (**)(void))(**(_DWORD **)(a1 + 96) + 32);
  if ( v9 && (v10 = (int (__fastcall **)(int, int, int, int, int))v9()) != nullptr )
    return (*v10)(a1, a2, a3, a4, a5);
  else
    return 7;
}


// ===== 7054f8 FT_Sfnt_Table_Info =====
int __fastcall FT_Sfnt_Table_Info(int a1, int a2, int a3, int a4)
{
  int (*v8)(void); // r3
  int v9; // r12

  if ( !a1 || (*(_DWORD *)(a1 + 8) & 8) == 0 )
    return 35;
  v8 = *(int (**)(void))(**(_DWORD **)(a1 + 96) + 32);
  if ( v8 && (v9 = v8()) != 0 )
    return (*(int (__fastcall **)(int, int, int, int))(v9 + 8))(a1, a2, a3, a4);
  else
    return 7;
}


// ===== 705574 FT_Get_CMap_Language_ID =====
int __fastcall FT_Get_CMap_Language_ID(int a1)
{
  int (*v2)(void); // r3
  int (__fastcall **v3)(int, int *); // r3
  int v5; // [sp+0h] [bp-8h] BYREF

  if ( a1
    && *(_DWORD *)a1
    && (v2 = *(int (**)(void))(**(_DWORD **)(*(_DWORD *)a1 + 96) + 32)) != nullptr
    && (v3 = (int (__fastcall **)(int, int *))v2()) != nullptr
    && !(*v3)(a1, &v5) )
  {
    return v5;
  }
  else
  {
    return 0;
  }
}


// ===== 7055e8 FT_Get_CMap_Format =====
int __fastcall FT_Get_CMap_Format(int a1)
{
  int (*v3)(void); // r3
  int (__fastcall **v4)(int, _DWORD *); // r3
  _DWORD v5[2]; // [sp+0h] [bp-8h] BYREF

  if ( a1
    && *(_DWORD *)a1
    && (v3 = *(int (**)(void))(**(_DWORD **)(*(_DWORD *)a1 + 96) + 32)) != nullptr
    && (v4 = (int (__fastcall **)(int, _DWORD *))v3()) != nullptr
    && !(*v4)(a1, v5) )
  {
    return v5[1];
  }
  else
  {
    return -1;
  }
}


// ===== 70565c FT_Set_Charmap =====
int __fastcall FT_Set_Charmap(_DWORD *a1, int a2)
{
  _DWORD *v4; // r5
  _DWORD *v5; // r2

  if ( !a1 )
    return 35;
  v4 = (_DWORD *)a1[10];
  if ( !v4 )
    return 38;
  if ( FT_Get_CMap_Format(a2) == 14 )
    return 6;
  v5 = &v4[a1[9]];
  if ( v4 >= v5 )
    return 6;
  while ( *v4 != a2 )
  {
    if ( v5 <= ++v4 )
      return 6;
  }
  a1[23] = a2;
  return 0;
}


// ===== 7056d8 FT_Activate_Size =====
int __fastcall FT_Activate_Size(int *a1)
{
  int v1; // r3

  if ( !a1 )
    return 132;
  v1 = *a1;
  if ( !*a1 || !*(_DWORD *)(v1 + 96) )
    return 132;
  *(_DWORD *)(v1 + 88) = a1;
  return 0;
}


// ===== 705708 FT_Lookup_Renderer =====
int __fastcall FT_Lookup_Renderer(int a1, int a2, int a3)
{
  int result; // r0
  int v4; // r3

  if ( a1 )
  {
    v4 = *(_DWORD *)(a1 + 156);
    if ( a3 )
    {
      if ( *(_DWORD *)a3 )
        v4 = *(_DWORD *)(*(_DWORD *)a3 + 4);
      *(_DWORD *)a3 = 0;
    }
    while ( v4 )
    {
      result = *(_DWORD *)(v4 + 8);
      if ( *(_DWORD *)(result + 24) == a2 )
      {
        if ( a3 )
          *(_DWORD *)a3 = v4;
        return result;
      }
      v4 = *(_DWORD *)(v4 + 4);
    }
  }
  return 0;
}


// ===== 705764 FT_Get_Renderer =====
int __fastcall FT_Get_Renderer(int a1, int a2)
{
  return FT_Lookup_Renderer(a1, a2, 0);
}


// ===== 70576c FT_Library_Version =====
_DWORD *__fastcall FT_Library_Version(_DWORD *result, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  int v4; // r4
  int v5; // r12

  if ( result )
  {
    v4 = result[3];
    v5 = result[5];
  }
  else
  {
    v5 = 0;
  }
  if ( result )
    result = (_DWORD *)result[4];
  else
    v4 = v5;
  if ( a2 )
    *a2 = v4;
  if ( a3 )
    *a3 = result;
  if ( a4 )
    *a4 = v5;
  return result;
}


// ===== 7057a8 FT_Set_Debug_Hook =====
int __fastcall FT_Set_Debug_Hook(int result, unsigned int a2, int a3)
{
  bool v3; // zf

  v3 = a3 == 0;
  if ( a3 )
    v3 = result == 0;
  if ( !v3 && a2 <= 3 )
  {
    result += 4 * a2;
    *(_DWORD *)(result + 180) = a3;
  }
  return result;
}


// ===== 7057c4 ft_stub_set_char_sizes =====
int __fastcall ft_stub_set_char_sizes(int a1, int a2, int a3, int a4, int a5)
{
  int v5; // r4
  int v6; // r12
  int v8; // [sp+4h] [bp-18h]
  int v9; // [sp+8h] [bp-14h]
  int v10; // [sp+Ch] [bp-10h]
  int v11; // [sp+10h] [bp-Ch]
  int v12; // [sp+14h] [bp-8h]

  v5 = a5;
  v6 = *(_DWORD *)(*(_DWORD *)a1 + 96);
  if ( !*(_DWORD *)(*(_DWORD *)(v6 + 20) + 96) )
    return 0;
  if ( !a4 )
    a4 = a5;
  if ( !a5 )
    v5 = a4;
  if ( !a4 )
  {
    v5 = 72;
    a4 = 72;
  }
  v9 = a2;
  v8 = 0;
  v10 = a3;
  v11 = a4;
  v12 = v5;
  return (*(int (**)(void))(*(_DWORD *)(v6 + 20) + 96))();
}


// ===== 705838 ft_stub_set_pixel_sizes =====
int __fastcall ft_stub_set_pixel_sizes(int a1, int a2, int a3)
{
  int v3; // r3
  int v5; // [sp+4h] [bp-18h]
  int v6; // [sp+8h] [bp-14h]
  int v7; // [sp+Ch] [bp-10h]
  int v8; // [sp+10h] [bp-Ch]
  int v9; // [sp+14h] [bp-8h]

  v3 = *(_DWORD *)(*(_DWORD *)a1 + 96);
  if ( !*(_DWORD *)(*(_DWORD *)(v3 + 20) + 96) )
    return 0;
  v6 = a2 << 6;
  v7 = a3 << 6;
  v9 = 0;
  v5 = 0;
  v8 = 0;
  return (*(int (**)(void))(*(_DWORD *)(v3 + 20) + 96))();
}


// ===== 705894 FT_Get_SubGlyph_Info =====
int __fastcall FT_Get_SubGlyph_Info(
        _DWORD *a1,
        unsigned int a2,
        _DWORD *a3,
        _DWORD *a4,
        _DWORD *a5,
        _DWORD *a6,
        _DWORD *a7)
{
  int v8; // r0
  int v9; // r4
  int v10; // r1
  int v11; // r0
  int v12; // r1
  int v13; // r2
  int v14; // r3
  _DWORD *v15; // t0

  if ( a1 && a1[18] == 1668246896 && a1[32] > a2 )
  {
    v8 = a1[33];
    v9 = *(_DWORD *)(v8 + 32 * a2);
    v10 = v8 + 32 * a2;
    *a3 = v9;
    *a4 = *(unsigned __int16 *)(v10 + 4);
    *a5 = *(_DWORD *)(v10 + 8);
    *a6 = *(_DWORD *)(v10 + 12);
    v11 = *(_DWORD *)(v10 + 16);
    v15 = (_DWORD *)(v10 + 20);
    v12 = *(_DWORD *)(v10 + 20);
    v13 = *++v15;
    v14 = v15[1];
    *a7 = v11;
    a7[1] = v12;
    a7[2] = v13;
    a7[3] = v14;
  }
  return 6;
}


// ===== 705910 FT_Outline_Decompose =====
int __fastcall FT_Outline_Decompose(__int16 *a1, int a2, int a3)
{
  bool v3; // zf
  int v4; // r10
  int result; // r0
  int v7; // r6
  int v8; // r5
  int v10; // r3
  int *v11; // r2
  int *v12; // r7
  int v13; // r0
  int v14; // r1
  int v15; // r3
  int v16; // r3
  _BYTE *v17; // r8
  int *v18; // r4
  _BYTE *v19; // r10
  int v20; // r1
  int v21; // r0
  int v22; // r2
  int v23; // t1
  int v24; // r2
  int v25; // r12
  int v26; // r3
  int v27; // t1
  char v28; // r12
  int v29; // r12
  int v30; // r1
  int v31; // [sp+4h] [bp-50h]
  int v33; // [sp+Ch] [bp-48h]
  int v34; // [sp+1Ch] [bp-38h]
  int v35; // [sp+20h] [bp-34h]
  _DWORD v36[2]; // [sp+28h] [bp-2Ch] BYREF
  int v37; // [sp+30h] [bp-24h] BYREF
  int v38; // [sp+34h] [bp-20h]
  int v39; // [sp+38h] [bp-1Ch] BYREF
  int v40; // [sp+3Ch] [bp-18h]
  int v41; // [sp+40h] [bp-14h] BYREF
  int v42; // [sp+44h] [bp-10h]
  int v43; // [sp+48h] [bp-Ch] BYREF
  int v44; // [sp+4Ch] [bp-8h]

  v3 = a1 == nullptr;
  if ( a1 )
    v3 = a2 == 0;
  v4 = v3;
  if ( v3 )
    return 6;
  v7 = *(_DWORD *)(a2 + 16);
  v8 = *(_DWORD *)(a2 + 20);
  if ( *a1 <= 0 )
    return v4;
  v31 = **((__int16 **)a1 + 3);
  if ( v31 < 0 )
    return 20;
  v35 = v4;
  while ( 1 )
  {
    v10 = *((_DWORD *)a1 + 1);
    v11 = (int *)(v10 + 8 * v4);
    v12 = (int *)(v10 + 8 * v31);
    v41 = *v11;
    v13 = (v41 << v7) - v8;
    v14 = (v11[1] << v7) - v8;
    v42 = v11[1];
    v33 = *v12;
    v15 = v12[1];
    v41 = v13;
    v42 = v14;
    v34 = v15;
    v43 = v13;
    v44 = v14;
    v16 = *((_DWORD *)a1 + 2);
    v17 = (_BYTE *)(v16 + v4);
    if ( (*(_BYTE *)(v16 + v4) & 3) == 2 )
      return 20;
    v18 = v11;
    if ( (*(_BYTE *)(v16 + v4) & 3) == 0 )
    {
      if ( (*(_BYTE *)(v16 + v31) & 3) == 1 )
      {
        v41 = (v33 << v7) - v8;
        v12 -= 2;
        v42 = (v34 << v7) - v8;
      }
      else
      {
        v41 = ((v33 << v7) - v8 + v13) / 2;
        v42 = ((v34 << v7) - v8 + v14) / 2;
      }
      v18 = v11 - 2;
      --v17;
    }
    result = (*(int (__fastcall **)(int *, int))a2)(&v41, a3);
    if ( result )
      return result;
    if ( v18 < v12 )
    {
      while ( 1 )
      {
        v18 += 2;
        v19 = v17 + 1;
        if ( (v17[1] & 3) != 0 )
        {
          if ( (v17[1] & 3) == 1 )
          {
            v37 = (*v18 << v7) - v8;
            v38 = (v18[1] << v7) - v8;
            result = (*(int (__fastcall **)(int *, int))(a2 + 4))(&v37, a3);
            if ( result )
              return result;
          }
          else
          {
            if ( v12 < v18 + 2 || (v17[2] & 3) != 2 )
              return 20;
            v18 += 4;
            v39 = (*(v18 - 4) << v7) - v8;
            v40 = (*(v18 - 3) << v7) - v8;
            v37 = (*(v18 - 2) << v7) - v8;
            v38 = (*(v18 - 1) << v7) - v8;
            if ( v12 < v18 )
            {
              result = (*(int (__fastcall **)(int *, int *, int *, int))(a2 + 12))(&v39, &v37, &v41, a3);
              goto LABEL_45;
            }
            v36[0] = (*v18 << v7) - v8;
            v36[1] = (v18[1] << v7) - v8;
            result = (*(int (__fastcall **)(int *, int *, _DWORD *, int))(a2 + 12))(&v39, &v37, v36, a3);
            if ( result )
              return result;
            v19 = v17 + 3;
          }
        }
        else
        {
          v20 = (*v18 << v7) - v8;
          v43 = v20;
          v21 = (v18[1] << v7) - v8;
          v44 = v21;
          if ( v12 <= v18 )
          {
LABEL_44:
            result = (*(int (__fastcall **)(int *, int *, int))(a2 + 8))(&v43, &v41, a3);
            goto LABEL_45;
          }
          v23 = v18[2];
          v18 += 2;
          v22 = v23;
          LOBYTE(v23) = v17[2];
          v19 = v17 + 2;
          v24 = (v22 << v7) - v8;
          v37 = v24;
          v25 = v23 & 3;
          v26 = (v18[1] << v7) - v8;
          v38 = v26;
          if ( v25 != 1 )
          {
            if ( v25 )
              return 20;
            while ( 1 )
            {
              v39 = (v24 + v20) / 2;
              v40 = (v26 + v21) / 2;
              result = (*(int (__fastcall **)(int *, int *, int))(a2 + 8))(&v43, &v39, a3);
              if ( result )
                return result;
              v20 = v37;
              v21 = v38;
              v43 = v37;
              v44 = v38;
              if ( v12 <= v18 )
                goto LABEL_44;
              v27 = v18[2];
              v18 += 2;
              v28 = v17[3];
              v24 = (v27 << v7) - v8;
              v37 = v24;
              v29 = v28 & 3;
              v26 = (v18[1] << v7) - v8;
              v38 = v26;
              if ( v29 == 1 )
              {
                v19 = v17 + 3;
                break;
              }
              ++v17;
              if ( v29 )
                return 20;
            }
          }
          result = (*(int (__fastcall **)(int *, int *, int))(a2 + 8))(&v43, &v37, a3);
          if ( result )
            return result;
        }
        if ( v12 <= v18 )
          break;
        v17 = v19;
      }
    }
    result = (*(int (__fastcall **)(int *, int))(a2 + 4))(&v41, a3);
LABEL_45:
    if ( result )
      return result;
    if ( *a1 <= ++v35 )
      return result;
    if ( *(__int16 *)(*((_DWORD *)a1 + 3) + 2 * v35) < 0 )
      return 20;
    v30 = v31;
    v31 = *(__int16 *)(*((_DWORD *)a1 + 3) + 2 * v35);
    v4 = v30 + 1;
  }
}


// ===== 705d3c FT_Outline_Check =====
int __fastcall FT_Outline_Check(__int16 *a1)
{
  int v1; // r1
  int v2; // r12
  bool v3; // cc
  int v4; // r3
  int v6; // r5
  int v7; // r0
  int v8; // r2

  if ( !a1 )
    return 6;
  v1 = a1[1];
  v2 = *a1;
  if ( v2 | v1 )
  {
    v3 = v1 <= 0;
    if ( v1 > 0 )
      v3 = v2 <= 0;
    v4 = v3;
    if ( !v3 )
    {
      v6 = *((_DWORD *)a1 + 3);
      v7 = -1;
      while ( 1 )
      {
        v8 = *(__int16 *)(v6 + 2 * v4++);
        if ( v8 <= v7 || v8 >= v1 )
          break;
        v7 = v8;
        if ( v2 <= v4 )
        {
          if ( v1 - 1 != v8 )
            return 6;
          return 0;
        }
      }
    }
    return 6;
  }
  return 0;
}


// ===== 705dcc FT_Outline_Get_CBox =====
int __fastcall FT_Outline_Get_CBox(int result, _DWORD *a2)
{
  bool v2; // zf
  int v3; // r12
  int v4; // r4
  int v5; // r5
  int v6; // r6
  int *v7; // r2
  unsigned int v8; // r7
  int *v9; // r3
  int v10; // r2

  v2 = a2 == nullptr;
  if ( a2 )
    v2 = result == 0;
  if ( !v2 )
  {
    v3 = *(unsigned __int16 *)(result + 2);
    if ( *(_WORD *)(result + 2) )
    {
      v7 = *(int **)(result + 4);
      v4 = *v7;
      v8 = (unsigned int)&v7[2 * (__int16)v3];
      v3 = v7[1];
      v9 = v7 + 2;
      if ( v8 > (unsigned int)(v7 + 2) )
      {
        v5 = v7[1];
        v6 = *v7;
        do
        {
          result = *v9;
          v10 = v9[1];
          v9 += 2;
          if ( v4 < result )
            v4 = result;
          if ( v3 < v10 )
            v3 = v10;
          if ( v6 >= result )
            v6 = result;
          if ( v5 >= v10 )
            v5 = v10;
        }
        while ( v8 > (unsigned int)v9 );
      }
      else
      {
        v5 = v7[1];
        v6 = *v7;
      }
    }
    else
    {
      v4 = *(unsigned __int16 *)(result + 2);
      v5 = v4;
      v6 = v4;
    }
    a2[3] = v3;
    *a2 = v6;
    a2[2] = v4;
    a2[1] = v5;
  }
  return result;
}


// ===== 705e6c FT_Outline_Translate =====
int __fastcall FT_Outline_Translate(int result, int a2, int a3)
{
  int v3; // r5
  int v4; // r12
  int v5; // r4
  int v6; // r3
  int v7; // r6

  if ( result )
  {
    v3 = *(_DWORD *)(result + 4);
    if ( *(__int16 *)(result + 2) > 0 )
    {
      v4 = 0;
      LOWORD(v5) = 0;
      do
      {
        *(_DWORD *)(v3 + v4) += a2;
        v6 = v3 + v4;
        v7 = *(_DWORD *)(v3 + v4 + 4);
        v5 = (unsigned __int16)(v5 + 1);
        v4 += 8;
        *(_DWORD *)(v6 + 4) = v7 + a3;
      }
      while ( v5 < *(__int16 *)(result + 2) );
    }
  }
  return result;
}


// ===== 705ecc FT_Outline_Reverse =====
_DWORD *__fastcall FT_Outline_Reverse(_DWORD *result)
{
  int v1; // r10
  int v2; // r5
  int v3; // r3
  int v4; // r6
  unsigned int v5; // r2
  unsigned int v6; // r3
  unsigned int v7; // r2
  unsigned int v8; // r3
  int v9; // r1
  int v10; // r12
  bool v11; // cf
  int v12; // r3
  char *v13; // r2
  char *i; // r3
  char v15; // r1

  if ( result )
  {
    if ( *(__int16 *)result > 0 )
    {
      v1 = 0;
      v2 = 0;
      while ( 1 )
      {
        v3 = result[1];
        v4 = *(__int16 *)(result[3] + 2 * v2);
        v5 = v3 + 8 * v1;
        v6 = v3 + 8 * v4;
        if ( v5 < v6 )
        {
          v7 = v5 + 8;
          v8 = v6 - 8;
          do
          {
            v9 = *(_DWORD *)(v7 - 8);
            v10 = *(_DWORD *)(v7 - 4);
            *(_DWORD *)(v7 - 8) = *(_DWORD *)(v8 + 8);
            v11 = v7 >= v8;
            *(_DWORD *)(v7 - 4) = *(_DWORD *)(v8 + 12);
            *(_DWORD *)(v8 + 12) = v10;
            *(_DWORD *)(v8 + 8) = v9;
            v7 += 8;
            v8 -= 8;
          }
          while ( !v11 );
        }
        v12 = result[2];
        v13 = (char *)(v12 + v1);
        for ( i = (char *)(v12 + v4); v13 < i; --i )
        {
          v15 = *v13;
          *v13++ = *i;
          *i = v15;
        }
        v2 = (unsigned __int16)(v2 + 1);
        if ( v2 >= *(__int16 *)result )
          break;
        v1 = v4 + 1;
      }
    }
    result[4] ^= 4u;
  }
  return result;
}


// ===== 705fa0 FT_Vector_Transform =====
int *__fastcall FT_Vector_Transform(int *result, int *a2)
{
  bool v2; // zf
  int *v4; // r4
  int v5; // r7
  int v6; // r8
  int v7; // r6

  v2 = result == nullptr;
  if ( result )
    v2 = a2 == nullptr;
  v4 = result;
  if ( !v2 )
  {
    v5 = FT_MulFix(*result, *a2);
    v6 = FT_MulFix(v4[1], a2[1]);
    v7 = FT_MulFix(*v4, a2[2]);
    result = (int *)(FT_MulFix(v4[1], a2[3]) + v7);
    v4[1] = (int)result;
    *v4 = v6 + v5;
  }
  return result;
}


// ===== 706008 FT_Outline_Transform =====
int *__fastcall FT_Outline_Transform(int *result, int *a2)
{
  bool v2; // zf
  int *v4; // r4
  int *i; // r6
  int *v6; // r0

  v2 = result == nullptr;
  if ( result )
    v2 = a2 == nullptr;
  if ( !v2 )
  {
    v4 = (int *)result[1];
    for ( i = &v4[2 * *((__int16 *)result + 1)]; i > v4; result = FT_Vector_Transform(v6, a2) )
    {
      v6 = v4;
      v4 += 2;
    }
  }
  return result;
}


// ===== 70604c FT_Outline_Get_Orientation =====
int __fastcall FT_Outline_Get_Orientation(__int16 *a1)
{
  __int16 *v1; // r7
  int v2; // r11
  __int16 *v3; // r9
  unsigned int v4; // r10
  int *v5; // r8
  unsigned int v6; // r6
  int v7; // r0
  int v8; // r4
  int *v9; // r3
  int v10; // r5
  int v11; // r12
  int v12; // r1
  int v13; // r2
  bool v14; // r5
  int v15; // r2
  bool v17; // zf
  int v18; // r12
  int *v19; // r3
  int v20; // r0
  _DWORD *v21; // r3
  bool v22; // zf
  int v23; // r9
  int v24; // r2
  int v25; // r3
  int result; // r0
  int *v27; // r7
  int *v28; // r5
  int v29; // r4
  int v30; // r2
  int v31; // r8
  _DWORD *v32; // r6
  _DWORD *v33; // r12
  int v34; // r11
  _DWORD *i; // r9
  int v36; // r1
  int v37; // r0
  int v38; // r3
  _DWORD *v39; // [sp+4h] [bp-30h]
  int v40; // [sp+8h] [bp-2Ch]
  int *v41; // [sp+8h] [bp-2Ch]
  int v42; // [sp+Ch] [bp-28h]
  int v43; // [sp+10h] [bp-24h]
  int v44; // [sp+10h] [bp-24h]
  int *v45; // [sp+14h] [bp-20h]
  int v46; // [sp+18h] [bp-1Ch]
  int v47; // [sp+1Ch] [bp-18h]
  int v48; // [sp+20h] [bp-14h]
  _DWORD v49[4]; // [sp+24h] [bp-10h]

  if ( !a1 )
    return 0;
  if ( a1[1] <= 0 )
    return 0;
  v1 = *((__int16 **)a1 + 3);
  v2 = *((_DWORD *)a1 + 1);
  v3 = &v1[*a1];
  if ( v1 >= v3 )
    return 0;
  v4 = 0;
  v43 = 0x8000;
  v42 = -32768;
  v5 = *((int **)a1 + 1);
  v45 = nullptr;
  v40 = 0x8000;
  while ( 1 )
  {
    v6 = v2 + 8 * *v1;
    if ( v6 >= (unsigned int)(v5 + 4) )
    {
      if ( v6 < (unsigned int)v5 )
      {
        v8 = 0x8000;
        v7 = -32768;
        v14 = 1;
        v11 = 0x8000;
      }
      else
      {
        v7 = -32768;
        v8 = 0x8000;
        v9 = v5;
        v10 = -32768;
        v11 = 0x8000;
        do
        {
          v12 = *v9;
          v13 = v9[1];
          v9 += 2;
          if ( v10 < v12 )
            v10 = v12;
          if ( v7 < v13 )
            v7 = v13;
          if ( v11 >= v12 )
            v11 = v12;
          if ( v8 >= v13 )
            v8 = v13;
        }
        while ( v6 >= (unsigned int)v9 );
        v14 = v11 != v10;
      }
      v15 = v40;
      if ( v11 < v40 && v14 )
      {
        v17 = v8 == v7;
        if ( v8 != v7 )
          v15 = v11;
        v18 = v42;
        v19 = v45;
        v40 = v15;
        if ( v8 != v7 )
          v18 = v7;
        v20 = v43;
        if ( !v17 )
          v19 = v5;
        v45 = v19;
        if ( !v17 )
          v20 = v8;
        v42 = v18;
        v43 = v20;
        if ( !v17 )
          v4 = v2 + 8 * *v1;
      }
    }
    if ( ++v1 >= v3 )
      break;
    v5 = (int *)(v6 + 8);
  }
  if ( v40 == 0x8000 )
    return 0;
  v23 = 0;
  v49[0] = (3 * v43 + v42) >> 2;
  v49[1] = (v42 + v43) >> 1;
  v49[2] = (3 * v42 + v43) >> 2;
  do
  {
    while ( 1 )
    {
      while ( 1 )
      {
        if ( (unsigned int)v45 > v4 )
          goto LABEL_40;
        v27 = nullptr;
        v44 = v23;
        v28 = v45;
        v41 = nullptr;
        v29 = *(_DWORD *)((char *)v49 + v23);
        v30 = v45[1];
        v31 = -32768;
        v32 = (_DWORD *)v4;
        v33 = nullptr;
        v34 = 0x8000;
        for ( i = nullptr; v29 == v30; v30 = v28[1] )
        {
LABEL_66:
          v27 = nullptr;
          *(_DWORD *)((char *)v49 + v44) = ++v29;
          v31 = -32768;
          v32 = (_DWORD *)v4;
          v33 = nullptr;
          v41 = nullptr;
          i = nullptr;
          v34 = 0x8000;
          v28 = v45;
LABEL_65:
          ;
        }
        v36 = v32[1];
        if ( v29 == v36 )
          goto LABEL_66;
        if ( (v29 <= v30 || v29 <= v36) && (v29 >= v30 || v29 >= v36) )
        {
          v39 = v33;
          v37 = FT_MulDiv(*v28 - *v32, v29 - v36, v30 - v36);
          v33 = v39;
          v38 = v37 + *v32;
          if ( v38 < v34 )
          {
            v41 = v28;
            i = v32;
            v34 = v37 + *v32;
          }
          if ( v38 > v31 )
          {
            v33 = v32;
            v31 = v37 + *v32;
            v27 = v28;
          }
        }
        if ( v4 >= (unsigned int)(v28 + 2) )
        {
          v32 = v28;
          v28 += 2;
          goto LABEL_65;
        }
        v21 = i;
        v22 = v33 == nullptr;
        if ( v33 )
          v22 = i == nullptr;
        v23 = v44;
        if ( v22 )
          goto LABEL_40;
        v24 = v21[1];
        v25 = v41[1];
        if ( v24 >= v25 )
          break;
        if ( v33[1] <= v27[1] )
          goto LABEL_71;
        *(int *)((char *)&v46 + v44) = 0;
LABEL_40:
        v23 += 4;
        if ( v23 == 12 )
          goto LABEL_41;
      }
      if ( v24 <= v25 || v33[1] >= v27[1] )
        break;
      *(int *)((char *)&v46 + v44) = 1;
      v23 = v44 + 4;
      if ( v44 == 8 )
        goto LABEL_41;
    }
LABEL_71:
    *(int *)((char *)&v46 + v44) = 2;
    v23 = v44 + 4;
  }
  while ( v44 != 8 );
LABEL_41:
  result = v46;
  if ( v46 == 2 )
  {
    result = v47;
LABEL_46:
    if ( result == 2 || result != v48 )
      return 0;
  }
  else if ( v46 != v47 && v46 != v48 )
  {
    result = v47;
    goto LABEL_46;
  }
  return result;
}


// ===== 7063d0 ft_raccess_sort_ref_by_id =====
int __fastcall ft_raccess_sort_ref_by_id(unsigned __int16 *a1, unsigned __int16 *a2)
{
  unsigned int v2; // r3
  unsigned int v3; // r2

  v2 = *a1;
  v3 = *a2;
  if ( v2 >= v3 )
    return v2 > v3;
  else
    return -1;
}


// ===== 7063f0 FT_Stream_OpenMemory =====
_DWORD *__fastcall FT_Stream_OpenMemory(_DWORD *result, int a2, int a3)
{
  result[6] = 0;
  *result = a2;
  result[1] = a3;
  result[2] = 0;
  result[8] = 0;
  result[5] = 0;
  return result;
}


// ===== 706408 FT_Stream_Close =====
int __fastcall FT_Stream_Close(int result)
{
  int (*v1)(void); // r3

  if ( result )
  {
    v1 = *(int (**)(void))(result + 24);
    if ( v1 )
      return v1();
  }
  return result;
}


// ===== 706428 FT_Stream_Pos =====
int __fastcall FT_Stream_Pos(int a1)
{
  return *(_DWORD *)(a1 + 8);
}


// ===== 706430 ft_trig_downscale =====
int __fastcall ft_trig_downscale(int a1)
{
  unsigned int v1; // r2
  int v2; // r3
  int v3; // r4
  unsigned int v4; // r2
  unsigned int v5; // r12
  unsigned int v6; // r3
  unsigned int v7; // r4
  unsigned int v8; // r3
  bool v9; // cc
  int v10; // r3
  bool v11; // nf
  int result; // r0

  v1 = abs32(a1);
  v2 = (unsigned __int16)v1;
  v3 = 17797 * (unsigned __int16)v1;
  v4 = HIWORD(v1);
  v5 = v3 + 47593 * v4;
  v6 = (unsigned int)(47593 * v2) >> 16;
  if ( v6 < v5 )
    v7 = v3 + 47593 * v4;
  else
    v7 = v6;
  v8 = v6 + v5;
  v9 = v7 > v8;
  v10 = HIWORD(v8) + 17797 * v4;
  if ( v9 )
    v10 += 0x10000;
  v11 = a1 < 0;
  result = v10;
  if ( v11 )
    return -v10;
  return result;
}


// ===== 706490 ft_trig_prenorm =====
int __fastcall ft_trig_prenorm(int *a1)
{
  int v1; // r4
  int v2; // r12
  int v4; // r2
  int v5; // r3
  bool v6; // cc
  int v7; // r2

  v1 = *a1;
  v2 = a1[1];
  v4 = abs32(v2);
  v5 = v4 | abs32(*a1);
  v6 = v5 < 0x10000;
  if ( v5 < 0x10000 )
    v4 = 0;
  else
    v5 >>= 16;
  if ( !v6 )
    v4 = 16;
  if ( v5 > 255 )
  {
    v5 >>= 8;
    v4 += 8;
  }
  if ( v5 > 15 )
  {
    v5 >>= 4;
    v4 += 4;
  }
  if ( v5 > 3 )
  {
    v5 >>= 2;
    v4 += 2;
  }
  if ( v5 > 1 )
    ++v4;
  if ( v4 <= 27 )
  {
    *a1 = v1 << (27 - v4);
    a1[1] = v2 << (27 - v4);
    return 27 - v4;
  }
  else
  {
    v7 = v4 - 27;
    *a1 = v1 >> v7;
    a1[1] = v2 >> v7;
    return -v7;
  }
}


// ===== 706524 ft_trig_pseudo_rotate =====
int *__fastcall ft_trig_pseudo_rotate(int *result, int a2)
{
  int v2; // r12
  int i; // r2
  bool v4; // nf
  int v5; // r4
  int v6; // r2
  int v7; // r1
  int v8; // r1
  int v9; // r1
  int v10; // r3
  _DWORD *v11; // r12
  int v12; // r5
  int v13; // r6

  v2 = *result;
  for ( i = result[1]; a2 < -5898239; i = -i )
  {
    a2 += 11796480;
    v2 = -v2;
  }
  for ( ; a2 > 5898240; i = -i )
  {
    a2 -= 11796480;
    v2 = -v2;
  }
  v4 = a2 < 0;
  if ( a2 >= 0 )
    v5 = v2 - 2 * i;
  else
    v5 = v2 + 2 * i;
  if ( a2 >= 0 )
    v6 = i + 2 * v2;
  else
    v6 = i - 2 * v2;
  if ( a2 >= 0 )
    v7 = a2 - 4145152;
  else
    v7 = a2 + 4145152;
  if ( v4 )
    v8 = v7 + 12096;
  else
    v8 = v7 - 12096;
  if ( v4 )
    v9 = v8 + 25;
  else
    v9 = v8 - 25;
  v10 = 0;
  v11 = &unk_8F1EBC;
  do
  {
    if ( v9 >= 0 )
      v12 = v5 - (v6 >> v10);
    else
      v12 = v5 + (v6 >> v10);
    v13 = *(v11 - 1);
    if ( v9 >= 0 )
      v6 += v5 >> v10;
    else
      v6 -= v5 >> v10;
    ++v10;
    if ( v9 >= 0 )
      v9 -= v13;
    else
      v9 += v13;
    v5 = v12;
    ++v11;
  }
  while ( v10 != 23 );
  result[1] = v6;
  *result = v12;
  return result;
}


// ===== 7065f8 ft_trig_pseudo_polarize =====
int *__fastcall ft_trig_pseudo_polarize(int *result)
{
  int v1; // r4
  int v2; // r3
  int v3; // r1
  int v4; // r2
  int v5; // r4
  int v6; // r1
  int v7; // r3
  _DWORD *v8; // r12
  int v9; // r5
  int v10; // r6
  bool v11; // nf
  int v12; // r4
  unsigned int v13; // r4

  v2 = *result;
  v3 = result[1];
  if ( *result >= 0 )
    v1 = 0;
  else
    v3 = -v3;
  if ( *result < 0 )
  {
    v1 = 11796480;
    v2 = -v2;
  }
  if ( v3 <= 0 )
  {
    if ( v3 )
    {
      v4 = v3 + 2 * v2;
      v5 = v1 - 4157273;
      v6 = v2 - 2 * v3;
      goto LABEL_10;
    }
  }
  else
  {
    v1 = -v1;
  }
  v4 = v3 - 2 * v2;
  v5 = v1 + 4157273;
  v6 = v2 + 2 * v3;
LABEL_10:
  v7 = 0;
  v8 = &unk_8F1EBC;
  do
  {
    if ( v4 >= 0 )
      v9 = v4 - (v6 >> v7);
    else
      v9 = v4 + (v6 >> v7);
    v10 = *(v8 - 1);
    if ( v4 >= 0 )
      v6 += v4 >> v7;
    else
      v6 -= v4 >> v7;
    ++v7;
    if ( v4 >= 0 )
      v5 += v10;
    else
      v5 -= v10;
    v4 = v9;
    ++v8;
  }
  while ( v7 != 23 );
  v11 = v5 < 0;
  if ( v5 >= 0 )
    v12 = v5 + 16;
  else
    v12 = 16 - v5;
  v13 = v12 & 0xFFFFFFE0;
  if ( v11 )
    v13 = -v13;
  *result = v6;
  result[1] = v13;
  return result;
}


// ===== 7066c4 FT_Cos =====
int __fastcall FT_Cos(int a1)
{
  int v2[3]; // [sp+0h] [bp-Ch] BYREF

  v2[0] = 72899491;
  v2[1] = 0;
  ft_trig_pseudo_rotate(v2, a1);
  return v2[0] / 4096;
}


// ===== 70670c FT_Sin =====
int __fastcall FT_Sin(int a1)
{
  return FT_Cos(5898240 - a1);
}


// ===== 706714 FT_Tan =====
unsigned int __fastcall FT_Tan(int a1)
{
  int v2; // [sp+0h] [bp-Ch] BYREF
  int v3; // [sp+4h] [bp-8h]

  v2 = 72899491;
  v3 = 0;
  ft_trig_pseudo_rotate(&v2, a1);
  return FT_DivFix(v3, v2);
}


// ===== 706750 FT_Atan2 =====
int __fastcall FT_Atan2(int a1, int a2)
{
  int result; // r0
  int v4; // [sp+0h] [bp-8h] BYREF
  int v5; // [sp+4h] [bp-4h]

  result = a2 | a1;
  if ( result )
  {
    v4 = a1;
    v5 = a2;
    ft_trig_prenorm(&v4);
    ft_trig_pseudo_polarize(&v4);
    return v5;
  }
  return result;
}


// ===== 70678c FT_Vector_Unit =====
int *__fastcall FT_Vector_Unit(int *a1, int a2)
{
  int *result; // r0
  int v4; // r3

  *a1 = 72899491;
  a1[1] = 0;
  result = ft_trig_pseudo_rotate(a1, a2);
  v4 = *a1 >> 12;
  a1[1] >>= 12;
  *a1 = v4;
  return result;
}


// ===== 7067c8 FT_Vector_Rotate =====
int __fastcall FT_Vector_Rotate(int result, int a2)
{
  int v2; // r3
  int v4; // r2
  int *v5; // r4
  int v6; // r5
  int v7; // r6
  int v8; // r0
  int v9; // r3
  int v10; // r5
  int v11; // [sp+0h] [bp-Ch] BYREF
  int v12; // [sp+4h] [bp-8h]

  v2 = *(_DWORD *)result;
  v4 = *(_DWORD *)(result + 4);
  v5 = (int *)result;
  v11 = *(_DWORD *)result;
  if ( a2 && (v2 || v4) )
  {
    v12 = v4;
    v6 = ft_trig_prenorm(&v11);
    ft_trig_pseudo_rotate(&v11, a2);
    v7 = ft_trig_downscale(v11);
    v8 = ft_trig_downscale(v12);
    if ( v6 <= 0 )
    {
      v10 = -v6;
      result = v8 << v10;
      v5[1] = result;
      *v5 = v7 << v10;
    }
    else
    {
      v9 = 1 << (v6 - 1);
      result = (v8 + (v8 >> 31) + v9) >> v6;
      v5[1] = result;
      *v5 = (v7 + (v7 >> 31) + v9) >> v6;
    }
  }
  return result;
}


// ===== 706880 FT_Vector_Length =====
int __fastcall FT_Vector_Length(int *a1)
{
  int v1; // r3
  int v2; // r2
  bool v3; // zf
  int v5; // r4
  int v6; // r0
  bool v7; // cc
  int v8[3]; // [sp+0h] [bp-Ch] BYREF

  v1 = *a1;
  v2 = a1[1];
  v3 = *a1 == 0;
  v8[0] = *a1;
  v8[1] = v2;
  if ( v3 )
    return abs32(v2);
  if ( !v2 )
    return abs32(v1);
  v5 = ft_trig_prenorm(v8);
  ft_trig_pseudo_polarize(v8);
  v6 = ft_trig_downscale(v8[0]);
  v7 = v5 <= 0;
  if ( v5 <= 0 )
    v5 = -v5;
  else
    v6 += 1 << (v5 - 1);
  if ( v7 )
    return v6 << v5;
  else
    return v6 >> v5;
}


// ===== 706904 FT_Vector_Polarize =====
int __fastcall FT_Vector_Polarize(int *a1, int *a2, int *a3)
{
  int v3; // r3
  int result; // r0
  int v7; // r6
  bool v8; // nf
  int v9; // r6
  int v10; // r3
  int v11; // [sp+0h] [bp-Ch] BYREF
  int v12; // [sp+4h] [bp-8h]

  v3 = *a1;
  result = a1[1];
  v11 = v3;
  v12 = result;
  if ( v3 || result )
  {
    v7 = ft_trig_prenorm(&v11);
    ft_trig_pseudo_polarize(&v11);
    result = ft_trig_downscale(v11);
    v8 = v7 < 0;
    if ( v7 >= 0 )
      v9 = result >> v7;
    else
      v9 = -v7;
    if ( v8 )
      v9 = result << v9;
    v10 = v12;
    *a2 = v9;
    *a3 = v10;
  }
  return result;
}


// ===== 706978 FT_Vector_From_Polar =====
int __fastcall FT_Vector_From_Polar(_DWORD *a1, int a2, int a3)
{
  *a1 = a2;
  a1[1] = 0;
  return FT_Vector_Rotate((int)a1, a3);
}


// ===== 70698c FT_Angle_Diff =====
int __fastcall FT_Angle_Diff(int a1, int a2)
{
  int result; // r0

  result = (a2 - a1) % 23592960 + ((a2 - a1) % 23592960 < 0 ? 0x1680000 : 0);
  if ( result > 11796480 )
    result -= 23592960;
  return result;
}


// ===== 7069c4 FT_Outline_Embolden =====
int __fastcall FT_Outline_Embolden(__int16 *a1, int a2)
{
  int Orientation; // r0
  int v5; // r3
  int v6; // r1
  int v7; // r4
  int v8; // r11
  int v9; // r3
  int v10; // r2
  int *v11; // r7
  int v12; // r6
  int v13; // r5
  int v14; // r1
  int v15; // r2
  int v16; // r2
  int v17; // r3
  int v18; // r8
  int v19; // r9
  int v20; // r11
  int v21; // r0
  int v22; // r0
  unsigned int v23; // r0
  int v25; // [sp+4h] [bp-30h]
  int v26; // [sp+8h] [bp-2Ch]
  int v27; // [sp+Ch] [bp-28h]
  int v28; // [sp+10h] [bp-24h]
  int v29; // [sp+14h] [bp-20h]
  int v30; // [sp+18h] [bp-1Ch]
  int v31; // [sp+1Ch] [bp-18h]
  int v32; // [sp+20h] [bp-14h]
  int v33; // [sp+28h] [bp-Ch] BYREF
  int v34; // [sp+2Ch] [bp-8h]

  if ( a1 )
  {
    v25 = a2 / 2;
    if ( !(a2 / 2) )
      return 0;
    Orientation = FT_Outline_Get_Orientation(a1);
    if ( Orientation != 2 )
    {
      v5 = -5898240;
      if ( Orientation )
        v5 = 5898240;
      v6 = *a1;
      v32 = v5;
      v30 = *((_DWORD *)a1 + 1);
      if ( v6 > 0 )
      {
        v7 = 0;
        v31 = 0;
        while ( 1 )
        {
          v8 = *(__int16 *)(*((_DWORD *)a1 + 3) + 2 * v31);
          v28 = *(_DWORD *)(v30 + 8 * v7 + 4);
          v29 = *(_DWORD *)(v30 + 8 * v7);
          v9 = *(_DWORD *)(v30 + 8 * v8 + 4);
          v10 = *(_DWORD *)(v30 + 8 * v8);
          if ( v8 >= v7 )
          {
            v11 = (int *)(v30 + 8 * v7 + 12);
            v12 = *(_DWORD *)(v30 + 8 * v7);
            v13 = *(_DWORD *)(v30 + 8 * v7 + 4);
            v27 = *(__int16 *)(*((_DWORD *)a1 + 3) + 2 * v31);
            do
            {
              v16 = v12 - v10;
              v17 = v13 - v9;
              if ( v27 <= v7 )
              {
                v19 = v29;
                v18 = v28;
              }
              else
              {
                v18 = *v11;
                v19 = *(v11 - 1);
              }
              v33 = v16;
              v34 = v17;
              v20 = FT_Atan2(v16, v17);
              v21 = FT_Atan2(v19 - v12, v18 - v13);
              v26 = FT_Angle_Diff(v20, v21) / 2;
              v22 = FT_Cos(v26);
              if ( (unsigned int)(v22 + 0x3FFF) <= 0x7FFE )
              {
                v34 = 0;
                v33 = 0;
                v14 = 0;
              }
              else
              {
                v23 = FT_DivFix(v25, v22);
                FT_Vector_From_Polar(&v33, v23, v20 - v32 + v26);
                v14 = v33;
              }
              v11 += 2;
              *(_DWORD *)(*((_DWORD *)a1 + 1) + 8 * v7) = v12 + v25 + v14;
              v15 = *((_DWORD *)a1 + 1) + 8 * v7++;
              v9 = v13;
              *(_DWORD *)(v15 + 4) = v25 + v34 + v13;
              v10 = v12;
              v13 = v18;
              v12 = v19;
            }
            while ( v27 >= v7 );
            v8 = v27;
            v6 = *a1;
          }
          if ( v6 <= ++v31 )
            break;
          v7 = v8 + 1;
        }
      }
      return 0;
    }
    if ( !*a1 )
      return 0;
  }
  return 6;
}


// ===== 706bc4 ft_mem_qalloc =====
int __fastcall ft_mem_qalloc(int a1, int a2, int *a3)
{
  int result; // r0
  int v5; // r3

  if ( a2 <= 0 )
  {
    result = 0;
    if ( a2 )
      v5 = 6;
    else
      v5 = 0;
  }
  else
  {
    result = (*(int (**)(void))(a1 + 4))();
    if ( result )
      v5 = 0;
    else
      v5 = 64;
  }
  *a3 = v5;
  return result;
}


// ===== 706c04 ft_mem_free =====
int __fastcall ft_mem_free(int result, int a2)
{
  if ( a2 )
    return (*(int (**)(void))(result + 8))();
  return result;
}


// ===== 706c1c FT_Stream_ReleaseFrame =====
int __fastcall FT_Stream_ReleaseFrame(int result, int *a2)
{
  if ( *(_DWORD *)(result + 20) )
  {
    result = ft_mem_free(*(_DWORD *)(result + 28), *a2);
    *a2 = 0;
  }
  *a2 = 0;
  return result;
}


// ===== 706c50 FT_Outline_Done_Internal =====
int __fastcall FT_Outline_Done_Internal(int a1, int a2)
{
  bool v2; // zf
  int v6; // r1

  v2 = a2 == 0;
  if ( a2 )
    v2 = a1 == 0;
  if ( v2 )
    return 6;
  if ( (*(_DWORD *)(a2 + 16) & 1) != 0 )
  {
    ft_mem_free(a1, *(_DWORD *)(a2 + 4));
    v6 = *(_DWORD *)(a2 + 8);
    *(_DWORD *)(a2 + 4) = 0;
    ft_mem_free(a1, v6);
    *(_DWORD *)(a2 + 8) = 0;
    ft_mem_free(a1, *(_DWORD *)(a2 + 12));
    *(_DWORD *)(a2 + 12) = 0;
  }
  *(_DWORD *)(a2 + 16) = 0;
  *(_WORD *)a2 = 0;
  *(_WORD *)(a2 + 2) = 0;
  *(_DWORD *)(a2 + 4) = 0;
  *(_DWORD *)(a2 + 8) = 0;
  *(_DWORD *)(a2 + 12) = 0;
  return 0;
}


// ===== 706cd0 FT_Outline_Done =====
int __fastcall FT_Outline_Done(int *a1, int a2)
{
  if ( a1 )
    return FT_Outline_Done_Internal(*a1, a2);
  else
    return 33;
}


// ===== 706ce8 ft_cmap_done_internal =====
int __fastcall ft_cmap_done_internal(_DWORD *a1)
{
  void (*v2)(void); // r3
  int v3; // r5

  v2 = *(void (**)(void))(a1[3] + 8);
  v3 = *(_DWORD *)(*a1 + 100);
  if ( v2 )
    v2();
  return ft_mem_free(v3, (int)a1);
}


// ===== 706d1c destroy_charmaps =====
int __fastcall destroy_charmaps(int result, int a2)
{
  int v2; // r4
  int v4; // r5

  v2 = result;
  if ( result )
  {
    if ( *(int *)(result + 36) > 0 )
    {
      v4 = 0;
      do
      {
        ft_cmap_done_internal(*(_DWORD **)(*(_DWORD *)(v2 + 40) + 4 * v4));
        *(_DWORD *)(*(_DWORD *)(v2 + 40) + 4 * v4++) = 0;
      }
      while ( *(_DWORD *)(v2 + 36) > v4 );
    }
    result = ft_mem_free(a2, *(_DWORD *)(v2 + 40));
    *(_DWORD *)(v2 + 36) = 0;
    *(_DWORD *)(v2 + 40) = 0;
  }
  return result;
}


// ===== 706d80 destroy_size =====
int __fastcall destroy_size(int a1, int a2, int a3)
{
  void (__fastcall *v3)(int); // r3
  void (__fastcall *v7)(int); // r3

  v3 = *(void (__fastcall **)(int))(a2 + 8);
  if ( v3 )
    v3(a2);
  v7 = *(void (__fastcall **)(int))(*(_DWORD *)(a3 + 20) + 60);
  if ( v7 )
    v7(a2);
  ft_mem_free(a1, *(_DWORD *)(a2 + 40));
  *(_DWORD *)(a2 + 40) = 0;
  return ft_mem_free(a1, a2);
}


// ===== 706de0 memory_stream_close =====
int __fastcall memory_stream_close(int *a1)
{
  int result; // r0

  result = ft_mem_free(a1[7], *a1);
  a1[6] = 0;
  *a1 = 0;
  a1[1] = 0;
  return result;
}


// ===== 706e08 ft_glyphslot_free_bitmap =====
_DWORD *__fastcall ft_glyphslot_free_bitmap(_DWORD *result)
{
  _DWORD *v1; // r4
  int v2; // r3

  v1 = result;
  if ( (*(_DWORD *)(result[39] + 4) & 1) != 0 )
  {
    result = (_DWORD *)ft_mem_free(*(_DWORD *)(result[1] + 100), result[22]);
    v2 = v1[39];
    v1[22] = 0;
    *(_DWORD *)(v2 + 4) &= ~1u;
  }
  else
  {
    result[22] = 0;
  }
  return result;
}


// ===== 706e54 FT_Stream_Free =====
int __fastcall FT_Stream_Free(int result, int a2)
{
  int v2; // r4
  int v4; // r6

  v2 = result;
  if ( result )
  {
    v4 = *(_DWORD *)(result + 28);
    result = FT_Stream_Close(result);
    if ( !a2 )
      return ft_mem_free(v4, v2);
  }
  return result;
}

