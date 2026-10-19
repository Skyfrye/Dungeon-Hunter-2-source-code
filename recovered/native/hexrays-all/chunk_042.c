// ===== 6ca664 `virtual thunk to'glitch::scene::ISceneNodeAnimatorCameraMaya::~ISceneNodeAnimatorCameraMaya() =====
void __fastcall `virtual thunk to'glitch::scene::ISceneNodeAnimatorCameraMaya::~ISceneNodeAnimatorCameraMaya(
        glitch::scene::ISceneNodeAnimatorCameraMaya *this)
{
  glitch::scene::ISceneNodeAnimatorCameraMaya::~ISceneNodeAnimatorCameraMaya((glitch::scene::ISceneNodeAnimatorCameraMaya *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6ca674 `virtual thunk to'glitch::scene::CSceneNodeAnimatorCameraMaya::~CSceneNodeAnimatorCameraMaya() =====
void __fastcall `virtual thunk to'glitch::scene::CSceneNodeAnimatorCameraMaya::~CSceneNodeAnimatorCameraMaya(
        glitch::scene::CSceneNodeAnimatorCameraMaya *this)
{
  glitch::scene::CSceneNodeAnimatorCameraMaya::~CSceneNodeAnimatorCameraMaya((glitch::scene::CSceneNodeAnimatorCameraMaya *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6ca684 `virtual thunk to'glitch::scene::CSceneNodeAnimatorCameraMaya::~CSceneNodeAnimatorCameraMaya() =====
void __fastcall `virtual thunk to'glitch::scene::CSceneNodeAnimatorCameraMaya::~CSceneNodeAnimatorCameraMaya(
        glitch::scene::CSceneNodeAnimatorCameraMaya *this)
{
  glitch::scene::CSceneNodeAnimatorCameraMaya::~CSceneNodeAnimatorCameraMaya((glitch::scene::CSceneNodeAnimatorCameraMaya *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6ca694 glitch::scene::CSceneNodeAnimatorCollisionResponse::getType(void) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCollisionResponse::getType(
        glitch::scene::CSceneNodeAnimatorCollisionResponse *this)
{
  return 6;
}


// ===== 6ca69c glitch::scene::CSceneNodeAnimatorCollisionResponse::isFalling(void) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCollisionResponse::isFalling(
        glitch::scene::CSceneNodeAnimatorCollisionResponse *this)
{
  return *((unsigned __int8 *)this + 84);
}


// ===== 6ca6a4 glitch::scene::CSceneNodeAnimatorCollisionResponse::setEllipsoidRadius(glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::scene::CSceneNodeAnimatorCollisionResponse::setEllipsoidRadius(_DWORD *result, _DWORD *a2)
{
  result[6] = *a2;
  result[7] = a2[1];
  result[8] = a2[2];
  return result;
}


// ===== 6ca6c0 glitch::scene::CSceneNodeAnimatorCollisionResponse::getEllipsoidRadius(void) =====
_DWORD *__fastcall glitch::scene::CSceneNodeAnimatorCollisionResponse::getEllipsoidRadius(_DWORD *this, _DWORD *a2)
{
  *this = a2[6];
  *(this + 1) = a2[7];
  *(this + 2) = a2[8];
  return this;
}


// ===== 6ca6dc glitch::scene::CSceneNodeAnimatorCollisionResponse::setGravity(glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::scene::CSceneNodeAnimatorCollisionResponse::setGravity(_DWORD *result, _DWORD *a2)
{
  result[9] = *a2;
  result[10] = a2[1];
  result[11] = a2[2];
  return result;
}


// ===== 6ca6f8 glitch::scene::CSceneNodeAnimatorCollisionResponse::getGravity(void) =====
_DWORD *__fastcall glitch::scene::CSceneNodeAnimatorCollisionResponse::getGravity(_DWORD *this, _DWORD *a2)
{
  *this = a2[9];
  *(this + 1) = a2[10];
  *(this + 2) = a2[11];
  return this;
}


// ===== 6ca714 glitch::scene::CSceneNodeAnimatorCollisionResponse::setEllipsoidTranslation(glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::scene::CSceneNodeAnimatorCollisionResponse::setEllipsoidTranslation(
        _DWORD *result,
        _DWORD *a2)
{
  result[12] = *a2;
  result[13] = a2[1];
  result[14] = a2[2];
  return result;
}


// ===== 6ca730 glitch::scene::CSceneNodeAnimatorCollisionResponse::getEllipsoidTranslation(void) =====
_DWORD *__fastcall glitch::scene::CSceneNodeAnimatorCollisionResponse::getEllipsoidTranslation(
        _DWORD *this,
        _DWORD *a2)
{
  *this = a2[12];
  *(this + 1) = a2[13];
  *(this + 2) = a2[14];
  return this;
}


// ===== 6ca74c glitch::scene::CSceneNodeAnimatorCollisionResponse::setSlidingSpeed(float) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCollisionResponse::setSlidingSpeed(int this, float a2)
{
  *(float *)(this + 80) = a2;
  return this;
}


// ===== 6ca754 glitch::scene::CSceneNodeAnimatorCollisionResponse::getSlidingSpeed(void) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCollisionResponse::getSlidingSpeed(
        glitch::scene::CSceneNodeAnimatorCollisionResponse *this)
{
  return *((_DWORD *)this + 20);
}


// ===== 6ca75c glitch::scene::CSceneNodeAnimatorCollisionResponse::getWorld(void) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCollisionResponse::getWorld(
        glitch::scene::CSceneNodeAnimatorCollisionResponse *this)
{
  return *((_DWORD *)this + 15);
}


// ===== 6ca764 glitch::scene::CSceneNodeAnimatorCollisionResponse::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCollisionResponse::serializeAttributes(int a1, int a2)
{
  (*(void (__fastcall **)(int, char *, int, _DWORD))(*(_DWORD *)a2 + 424))(a2, "Radius", a1 + 24, 0);
  (*(void (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 424))(a2, "Gravity", a1 + 36, 0);
  (*(void (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 424))(a2, "Translation", a1 + 48, 0);
  return (*(int (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
           a2,
           "AnimateCameraTarget",
           *(unsigned __int8 *)(a1 + 86),
           0);
}


// ===== 6ca804 glitch::scene::CSceneNodeAnimatorCollisionResponse::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCollisionResponse::deserializeAttributes(int a1, int a2)
{
  int v4; // r3
  int v5; // r1
  int v6; // r3
  int v7; // r1
  int v8; // r3
  int v9; // r2
  int result; // r0
  _DWORD v11[3]; // [sp+4h] [bp-28h] BYREF
  _DWORD v12[3]; // [sp+10h] [bp-1Ch] BYREF
  _DWORD v13[4]; // [sp+1Ch] [bp-10h] BYREF

  (*(void (__fastcall **)(_DWORD *))(*(_DWORD *)a2 + 436))(v13);
  v4 = v13[2];
  v5 = v13[0];
  *(_DWORD *)(a1 + 28) = v13[1];
  *(_DWORD *)(a1 + 24) = v5;
  *(_DWORD *)(a1 + 32) = v4;
  (*(void (__fastcall **)(_DWORD *, int, const char *))(*(_DWORD *)a2 + 436))(v12, a2, "Gravity");
  v6 = v12[2];
  v7 = v12[0];
  *(_DWORD *)(a1 + 40) = v12[1];
  *(_DWORD *)(a1 + 36) = v7;
  *(_DWORD *)(a1 + 44) = v6;
  (*(void (__fastcall **)(_DWORD *, int, const char *))(*(_DWORD *)a2 + 436))(v11, a2, "Translation");
  v8 = v11[2];
  v9 = v11[1];
  *(_DWORD *)(a1 + 48) = v11[0];
  *(_DWORD *)(a1 + 52) = v9;
  *(_DWORD *)(a1 + 56) = v8;
  result = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "AnimateCameraTarget");
  *(_BYTE *)(a1 + 86) = result;
  return result;
}


// ===== 6ca8e0 `global constructor keyed to'.._source_glitch_scene_CSceneNodeAnimatorCollisionResponse.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CSceneNodeAnimatorCollisionResponse.cpp()
{
  dword_9F7E48 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7E44 = 1056964608;
}


// ===== 6ca900 `non-virtual thunk to'glitch::scene::ISceneNodeAnimatorCollisionResponse::~ISceneNodeAnimatorCollisionResponse() =====
void __fastcall `non-virtual thunk to'glitch::scene::ISceneNodeAnimatorCollisionResponse::~ISceneNodeAnimatorCollisionResponse(
        glitch::scene::ISceneNodeAnimatorCollisionResponse *this)
{
  glitch::scene::ISceneNodeAnimatorCollisionResponse::~ISceneNodeAnimatorCollisionResponse((glitch::scene::ISceneNodeAnimatorCollisionResponse *)((char *)this - 4));
}


// ===== 6ca908 glitch::scene::ISceneNodeAnimatorCollisionResponse::~ISceneNodeAnimatorCollisionResponse() =====
void __fastcall glitch::scene::ISceneNodeAnimatorCollisionResponse::~ISceneNodeAnimatorCollisionResponse(
        glitch::scene::ISceneNodeAnimatorCollisionResponse *this)
{
  *(_DWORD *)this = off_9890BC;
  *((_DWORD *)this + 3) = off_989158;
  *((_DWORD *)this + 1) = off_98913C;
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(this, (int *)off_98916C);
}


// ===== 6ca95c `virtual thunk to'glitch::scene::ISceneNodeAnimatorCollisionResponse::~ISceneNodeAnimatorCollisionResponse() =====
void __fastcall `virtual thunk to'glitch::scene::ISceneNodeAnimatorCollisionResponse::~ISceneNodeAnimatorCollisionResponse(
        glitch::scene::ISceneNodeAnimatorCollisionResponse *this)
{
  glitch::scene::ISceneNodeAnimatorCollisionResponse::~ISceneNodeAnimatorCollisionResponse((glitch::scene::ISceneNodeAnimatorCollisionResponse *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6ca96c `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorCollisionResponse::~CSceneNodeAnimatorCollisionResponse() =====
void __fastcall `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorCollisionResponse::~CSceneNodeAnimatorCollisionResponse(
        glitch::scene::CSceneNodeAnimatorCollisionResponse *this)
{
  glitch::scene::CSceneNodeAnimatorCollisionResponse::~CSceneNodeAnimatorCollisionResponse((glitch::scene::CSceneNodeAnimatorCollisionResponse *)((char *)this - 4));
}


// ===== 6ca974 glitch::scene::CSceneNodeAnimatorCollisionResponse::~CSceneNodeAnimatorCollisionResponse() =====
void __fastcall glitch::scene::CSceneNodeAnimatorCollisionResponse::~CSceneNodeAnimatorCollisionResponse(
        glitch::scene::CSceneNodeAnimatorCollisionResponse *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 15);
  *(_DWORD *)this = off_989244;
  *((_DWORD *)this + 31) = off_9892E8;
  *((_DWORD *)this + 1) = off_9892CC;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  *(_DWORD *)this = off_989324;
  *(int (***)())((char *)off_7C + (_DWORD)this) = (int (**)())off_9893AC;
  *((_DWORD *)this + 1) = off_98913C;
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(this, (int *)off_989300);
}


// ===== 6caa04 `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorCollisionResponse::~CSceneNodeAnimatorCollisionResponse() =====
void __fastcall `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorCollisionResponse::~CSceneNodeAnimatorCollisionResponse(
        glitch::scene::CSceneNodeAnimatorCollisionResponse *this)
{
  glitch::scene::CSceneNodeAnimatorCollisionResponse::~CSceneNodeAnimatorCollisionResponse((glitch::scene::CSceneNodeAnimatorCollisionResponse *)((char *)this - 4));
}


// ===== 6caa0c glitch::scene::CSceneNodeAnimatorCollisionResponse::~CSceneNodeAnimatorCollisionResponse() =====
void __fastcall glitch::scene::CSceneNodeAnimatorCollisionResponse::~CSceneNodeAnimatorCollisionResponse(
        glitch::scene::CSceneNodeAnimatorCollisionResponse *this)
{
  glitch::scene::CSceneNodeAnimatorCollisionResponse::~CSceneNodeAnimatorCollisionResponse(this);
  LC_API_FREE_0(this);
}


// ===== 6caa28 glitch::scene::CSceneNodeAnimatorCollisionResponse::~CSceneNodeAnimatorCollisionResponse() =====
void __fastcall glitch::scene::CSceneNodeAnimatorCollisionResponse::~CSceneNodeAnimatorCollisionResponse(
        glitch::scene::CSceneNodeAnimatorCollisionResponse *this,
        int *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *v5; // r0
  int v6; // r2

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[7];
  v5 = *((glitch::IReferenceCounted **)this + 15);
  *((_DWORD *)this + 1) = off_9892CC;
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  v6 = a2[1];
  *(_DWORD *)this = v6;
  *(_DWORD *)((char *)this + *(_DWORD *)(v6 - 12)) = a2[6];
  *((_DWORD *)this + 1) = off_98913C;
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(this, a2 + 2);
}


// ===== 6caab8 glitch::scene::CSceneNodeAnimatorCollisionResponse::setNode(glitch::scene::ISceneNode *) =====
unsigned int __fastcall glitch::scene::CSceneNodeAnimatorCollisionResponse::setNode(
        glitch::scene::CSceneNodeAnimatorCollisionResponse *this,
        glitch::scene::ISceneNode *a2)
{
  glitch::scene::CSceneNodeAnimatorCollisionResponse *v2; // r4
  _DWORD *v3; // r0
  int v4; // r2
  unsigned int result; // r0

  v2 = this;
  *((_DWORD *)this + 16) = a2;
  if ( a2 )
  {
    v3 = (_DWORD *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 160))(a2);
    v4 = *((_DWORD *)v2 + 16);
    *((_DWORD *)v2 + 3) = *v3;
    *((_DWORD *)v2 + 4) = v3[1];
    *((_DWORD *)v2 + 5) = v3[2];
    this = (glitch::scene::CSceneNodeAnimatorCollisionResponse *)(*(int (__fastcall **)(int))(*(_DWORD *)v4 + 188))(v4);
    *((_BYTE *)v2 + 85) = this == (glitch::scene::CSceneNodeAnimatorCollisionResponse *)1601003875;
  }
  result = glitch::os::Timer::getTime(this);
  *((_DWORD *)v2 + 19) = result;
  *((_DWORD *)v2 + 18) = result;
  return result;
}


// ===== 6cab34 glitch::scene::CSceneNodeAnimatorCollisionResponse::animateNode(glitch::scene::ISceneNode *,uint) =====
glitch::scene::ISceneNode **__fastcall glitch::scene::CSceneNodeAnimatorCollisionResponse::animateNode(
        glitch::scene::ISceneNode **this,
        glitch::scene::ISceneNode *a2,
        glitch::scene::ISceneNode *a3)
{
  glitch::scene::ISceneNode *v3; // r3
  glitch::scene::ISceneNode **v4; // r4
  int v6; // r10
  float *v7; // r0
  float v8; // r1
  float v9; // r8
  float v10; // r0
  int v11; // r3
  float v12; // r11
  float v13; // r6
  float v14; // r10
  glitch::scene::ISceneNode *v15; // r2
  glitch::scene::ISceneNode *v16; // r12
  glitch::scene::ISceneNode *v17; // lr
  float v18; // r11
  glitch::scene::ISceneNode *v19; // r7
  glitch::scene::ISceneNode *v20; // r3
  int v21; // r7
  glitch::scene::ISceneNode *v22; // r8
  void (__fastcall *v23)(float *, int, glitch::scene::ISceneNode *, float *, glitch::scene::ISceneNode **, float *, _DWORD *, char *, glitch::scene::ISceneNode *, _DWORD *); // r6
  float v24; // r9
  float v25; // r10
  float *v26; // r0
  float v27; // r9
  float v28; // r10
  glitch::scene::ISceneNode *v29; // r5
  float v30; // r8
  void (__fastcall *v31)(glitch::scene::ISceneNode *, _DWORD *); // r7
  float *v32; // r0
  float v33; // r10
  float v34; // r8
  float v35; // r0
  glitch::scene::ISceneNode *v36; // [sp+10h] [bp-8Ch]
  glitch::scene::ISceneNode *v37; // [sp+18h] [bp-84h]
  glitch::scene::ISceneNode *v38; // [sp+1Ch] [bp-80h]
  glitch::scene::ISceneNode *v39; // [sp+20h] [bp-7Ch]
  glitch::scene::ISceneNode *v40; // [sp+24h] [bp-78h]
  _DWORD v41[9]; // [sp+28h] [bp-74h] BYREF
  _DWORD v42[3]; // [sp+4Ch] [bp-50h] BYREF
  float v43[3]; // [sp+58h] [bp-44h] BYREF
  float v44[3]; // [sp+64h] [bp-38h] BYREF
  _DWORD v45[3]; // [sp+70h] [bp-2Ch] BYREF
  float v46; // [sp+7Ch] [bp-20h] BYREF
  float v47; // [sp+80h] [bp-1Ch]
  float v48; // [sp+84h] [bp-18h]
  float v49; // [sp+88h] [bp-14h] BYREF
  float v50; // [sp+8Ch] [bp-10h]
  float v51; // [sp+90h] [bp-Ch]
  char v52[5]; // [sp+97h] [bp-5h] BYREF

  v3 = *(this + 16);
  v4 = this;
  if ( v3 != a2 )
    return (glitch::scene::ISceneNode **)glitch::scene::CSceneNodeAnimatorCollisionResponse::setNode(
                                           (glitch::scene::CSceneNodeAnimatorCollisionResponse *)this,
                                           a2);
  if ( *(this + 15) )
  {
    v6 = (int)*(this + 18);
    *(this + 18) = a3;
    v7 = (float *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)v3 + 160))(v3);
    v8 = *((float *)v4 + 3);
    v49 = *v7;
    v50 = v7[1];
    v51 = v7[2];
    v9 = v50 - *((float *)v4 + 4);
    v10 = v51 - *((float *)v4 + 5);
    v11 = *((unsigned __int8 *)v4 + 84);
    v46 = v49 - v8;
    v47 = v9;
    v48 = v10;
    if ( v11 )
      v12 = (float)(unsigned int)(((_DWORD)a3 - v6) * (a3 - v4[19]));
    else
      v12 = 1.0;
    v13 = v12 * *((float *)v4 + 9);
    v14 = v12 * *((float *)v4 + 10);
    v15 = v4[23];
    v16 = v4[25];
    v17 = v4[26];
    v37 = v4[27];
    v18 = v12 * *((float *)v4 + 11);
    v38 = v4[28];
    v39 = v4[29];
    v40 = v4[30];
    v19 = v4[22];
    v41[2] = v4[24];
    v41[0] = v19;
    v41[5] = v37;
    v41[6] = v38;
    v41[1] = v15;
    v41[3] = v16;
    v41[4] = v17;
    v41[7] = v39;
    v41[8] = v40;
    *(float *)v45 = v13;
    *(float *)&v45[1] = v14;
    *(float *)&v45[2] = v18;
    if ( (float)((float)(v49 - v8) + v13) != 0.0 || (float)(v9 + v14) != 0.0 || (float)(v10 + v18) != 0.0 )
    {
      v20 = v4[17];
      v52[0] = 0;
      v21 = *((_DWORD *)v20 + 11);
      v22 = v4[15];
      v23 = *(void (__fastcall **)(float *, int, glitch::scene::ISceneNode *, float *, glitch::scene::ISceneNode **, float *, _DWORD *, char *, glitch::scene::ISceneNode *, _DWORD *))(*(_DWORD *)v21 + 16);
      v24 = *((float *)v4 + 4) - *((float *)v4 + 13);
      v25 = *((float *)v4 + 5) - *((float *)v4 + 14);
      v36 = v4[20];
      v44[0] = *((float *)v4 + 3) - *((float *)v4 + 12);
      v44[1] = v24;
      v44[2] = v25;
      v23(v43, v21, v22, v44, v4 + 6, &v46, v41, v52, v36, v45);
      v49 = v43[0] + *((float *)v4 + 12);
      v50 = v43[1] + *((float *)v4 + 13);
      v51 = v43[2] + *((float *)v4 + 14);
      if ( v52[0] )
      {
        if ( !*((_BYTE *)v4 + 84) )
          v4[19] = a3;
        *((_BYTE *)v4 + 84) = 1;
      }
      else
      {
        *((_BYTE *)v4 + 84) = 0;
      }
      (*(void (__fastcall **)(glitch::scene::ISceneNode *, float *))(*(_DWORD *)v4[16] + 164))(v4[16], &v49);
    }
    if ( *((_BYTE *)v4 + 86) )
    {
      if ( *((_BYTE *)v4 + 85) )
      {
        v26 = (float *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)v4[16] + 160))(v4[16]);
        v27 = (float)(*v26 - *((float *)v4 + 3)) - v46;
        v28 = (float)(v26[1] - *((float *)v4 + 4)) - v47;
        v29 = v4[16];
        v30 = (float)(v26[2] - *((float *)v4 + 5)) - v48;
        v31 = *(void (__fastcall **)(glitch::scene::ISceneNode *, _DWORD *))(*(_DWORD *)v29 + 260);
        v32 = (float *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)v29 + 264))(v29);
        v33 = v28 + v32[1];
        v34 = v30 + v32[2];
        v35 = v27 + *v32;
        *(float *)&v42[1] = v33;
        *(float *)v42 = v35;
        *(float *)&v42[2] = v34;
        v31(v29, v42);
      }
    }
    this = (glitch::scene::ISceneNode **)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)v4[16] + 160))(v4[16]);
    v4[3] = *this;
    v4[4] = *(this + 1);
    v4[5] = *(this + 2);
  }
  return this;
}


// ===== 6caf0c glitch::scene::CSceneNodeAnimatorCollisionResponse::setWorld(glitch::scene::ITriangleSelector *) =====
unsigned int __fastcall glitch::scene::CSceneNodeAnimatorCollisionResponse::setWorld(
        glitch::scene::CSceneNodeAnimatorCollisionResponse *this,
        glitch::scene::ITriangleSelector *a2)
{
  unsigned int result; // r0
  glitch::IReferenceCounted *v5; // r3

  *((_BYTE *)this + 84) = 0;
  result = glitch::os::Timer::getTime(this);
  v5 = *((glitch::IReferenceCounted **)this + 15);
  *((_DWORD *)this + 19) = result;
  *((_DWORD *)this + 18) = result;
  if ( v5 )
    result = glitch::IReferenceCounted::drop(v5);
  *((_DWORD *)this + 15) = a2;
  if ( a2 )
    ++*((_DWORD *)a2 + 1);
  return result;
}


// ===== 6caf58 glitch::scene::ISceneNodeAnimatorCollisionResponse::ISceneNodeAnimatorCollisionResponse(void) =====
glitch::scene::ISceneNodeAnimatorCollisionResponse *__fastcall glitch::scene::ISceneNodeAnimatorCollisionResponse::ISceneNodeAnimatorCollisionResponse(
        glitch::scene::ISceneNodeAnimatorCollisionResponse *this,
        int *a2)
{
  _DWORD *v2; // r7
  int v3; // r2
  int v6; // r2
  int v7; // r2

  v2 = a2 + 1;
  v3 = a2[2];
  *(_DWORD *)this = v3;
  *(_DWORD *)((char *)this + *(_DWORD *)(v3 - 12)) = a2[3];
  *((_DWORD *)this + 1) = off_95C300;
  glitch::IObject::IObject(this);
  v6 = a2[1];
  *(_DWORD *)this = v6;
  *(_DWORD *)((char *)this + *(_DWORD *)(v6 - 12)) = v2[3];
  *((_DWORD *)this + 1) = off_976CF0;
  *((_DWORD *)this + 2) = 0;
  v7 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v7 - 12)) = a2[5];
  *((_DWORD *)this + 1) = off_98913C;
  return this;
}


// ===== 6cb000 glitch::scene::CSceneNodeAnimatorCollisionResponse::CSceneNodeAnimatorCollisionResponse(glitch::scene::CSceneManager *,glitch::scene::ITriangleSelector *,glitch::scene::ISceneNode *,glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,float) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCollisionResponse::CSceneNodeAnimatorCollisionResponse(
        int a1,
        int a2,
        int a3,
        glitch::scene::ISceneNode *a4,
        _DWORD *a5,
        float *a6,
        _DWORD *a7,
        int a8)
{
  float v11; // r9
  float v12; // r0
  int v13; // r2

  *(_DWORD *)(a1 + 124) = off_95B720;
  *(_DWORD *)(a1 + 128) = 1;
  glitch::scene::ISceneNodeAnimatorCollisionResponse::ISceneNodeAnimatorCollisionResponse(
    (glitch::scene::ISceneNodeAnimatorCollisionResponse *)a1,
    (int *)off_9892FC);
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)a1 = off_989244;
  *(_DWORD *)(a1 + 4) = off_9892CC;
  *(_DWORD *)(a1 + 124) = off_9892E8;
  *(_DWORD *)(a1 + 24) = *a5;
  *(_DWORD *)(a1 + 28) = a5[1];
  *(_DWORD *)(a1 + 32) = a5[2];
  v11 = a6[2] * 0.001;
  v12 = *a6 * 0.001;
  *(float *)(a1 + 40) = a6[1] * 0.001;
  *(float *)(a1 + 36) = v12;
  *(float *)(a1 + 44) = v11;
  *(_DWORD *)(a1 + 48) = *a7;
  *(_DWORD *)(a1 + 52) = a7[1];
  v13 = a7[2];
  *(_DWORD *)(a1 + 68) = a2;
  *(_BYTE *)(a1 + 85) = 0;
  *(_DWORD *)(a1 + 56) = v13;
  *(_DWORD *)(a1 + 80) = a8;
  *(_BYTE *)(a1 + 84) = 0;
  *(_DWORD *)(a1 + 64) = a4;
  *(_BYTE *)(a1 + 86) = 1;
  *(_DWORD *)(a1 + 60) = a3;
  *(_DWORD *)(a1 + 88) = 0;
  *(_DWORD *)(a1 + 92) = 0;
  *(_DWORD *)(a1 + 96) = 0;
  *(_DWORD *)(a1 + 100) = 0;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 112) = 0;
  *(_DWORD *)(a1 + 116) = 0;
  *(_DWORD *)(a1 + 120) = 0;
  if ( a3 )
  {
    ++*(_DWORD *)(a3 + 4);
    a4 = *(glitch::scene::ISceneNode **)(a1 + 64);
  }
  glitch::scene::CSceneNodeAnimatorCollisionResponse::setNode(
    (glitch::scene::CSceneNodeAnimatorCollisionResponse *)a1,
    a4);
  return a1;
}


// ===== 6cb184 glitch::scene::CSceneNodeAnimatorCollisionResponse::createClone(void) =====
void *__fastcall glitch::scene::CSceneNodeAnimatorCollisionResponse::createClone(
        glitch::scene::CSceneNodeAnimatorCollisionResponse *this)
{
  float v2; // r6
  float v3; // r5
  void *v4; // r5
  float v6[3]; // [sp+14h] [bp-Ch] BYREF

  v2 = *((float *)this + 10) * 1000.0;
  v3 = *((float *)this + 11) * 1000.0;
  v6[0] = *((float *)this + 9) * 1000.0;
  v6[2] = v3;
  v6[1] = v2;
  v4 = operator new(0x84u, 0);
  glitch::scene::CSceneNodeAnimatorCollisionResponse::CSceneNodeAnimatorCollisionResponse(
    (int)v4,
    *((_DWORD *)this + 17),
    *((_DWORD *)this + 15),
    *((glitch::scene::ISceneNode **)this + 16),
    (_DWORD *)this + 6,
    v6,
    (_DWORD *)this + 12,
    *((_DWORD *)this + 20));
  return v4;
}


// ===== 6cb220 glitch::scene::CSceneNodeAnimatorCollisionResponse::CSceneNodeAnimatorCollisionResponse(glitch::scene::CSceneManager *,glitch::scene::ITriangleSelector *,glitch::scene::ISceneNode *,glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,float) =====
int __fastcall glitch::scene::CSceneNodeAnimatorCollisionResponse::CSceneNodeAnimatorCollisionResponse(
        int a1,
        int *a2,
        int a3,
        int a4,
        glitch::scene::ISceneNode *a5,
        _DWORD *a6,
        float *a7,
        _DWORD *a8,
        int a9)
{
  glitch::scene::ISceneNode *v12; // r11
  int v13; // r1
  float v14; // r4
  float v15; // r0
  int v16; // r1

  v12 = a5;
  glitch::scene::ISceneNodeAnimatorCollisionResponse::ISceneNodeAnimatorCollisionResponse(
    (glitch::scene::ISceneNodeAnimatorCollisionResponse *)a1,
    a2 + 1);
  v13 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v13 - 12)) = a2[7];
  *(_DWORD *)(a1 + 4) = off_9892CC;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 24) = *a6;
  *(_DWORD *)(a1 + 28) = a6[1];
  *(_DWORD *)(a1 + 32) = a6[2];
  v14 = a7[2] * 0.001;
  v15 = *a7 * 0.001;
  *(float *)(a1 + 40) = a7[1] * 0.001;
  *(float *)(a1 + 36) = v15;
  *(float *)(a1 + 44) = v14;
  *(_DWORD *)(a1 + 48) = *a8;
  *(_DWORD *)(a1 + 52) = a8[1];
  v16 = a8[2];
  *(_DWORD *)(a1 + 68) = a3;
  *(_BYTE *)(a1 + 85) = 0;
  *(_BYTE *)(a1 + 84) = 0;
  *(_DWORD *)(a1 + 80) = a9;
  *(_DWORD *)(a1 + 56) = v16;
  *(_BYTE *)(a1 + 86) = 1;
  *(_DWORD *)(a1 + 64) = a5;
  *(_DWORD *)(a1 + 60) = a4;
  *(_DWORD *)(a1 + 88) = 0;
  *(_DWORD *)(a1 + 92) = 0;
  *(_DWORD *)(a1 + 96) = 0;
  *(_DWORD *)(a1 + 100) = 0;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 112) = 0;
  *(_DWORD *)(a1 + 116) = 0;
  if ( a4 )
  {
    ++*(_DWORD *)(a4 + 4);
    v12 = *(glitch::scene::ISceneNode **)(a1 + 64);
  }
  glitch::scene::CSceneNodeAnimatorCollisionResponse::setNode(
    (glitch::scene::CSceneNodeAnimatorCollisionResponse *)a1,
    v12);
  return a1;
}


// ===== 6cb384 `non-virtual thunk to'glitch::scene::ISceneNodeAnimatorCollisionResponse::~ISceneNodeAnimatorCollisionResponse() =====
void __fastcall `non-virtual thunk to'glitch::scene::ISceneNodeAnimatorCollisionResponse::~ISceneNodeAnimatorCollisionResponse(
        glitch::scene::ISceneNodeAnimatorCollisionResponse *this)
{
  glitch::scene::ISceneNodeAnimatorCollisionResponse::~ISceneNodeAnimatorCollisionResponse((glitch::scene::ISceneNodeAnimatorCollisionResponse *)((char *)this - 4));
}


// ===== 6cb38c glitch::scene::ISceneNodeAnimatorCollisionResponse::~ISceneNodeAnimatorCollisionResponse() =====
void __fastcall glitch::scene::ISceneNodeAnimatorCollisionResponse::~ISceneNodeAnimatorCollisionResponse(
        glitch::scene::ISceneNodeAnimatorCollisionResponse *this)
{
  *(_DWORD *)this = off_9890BC;
  *((_DWORD *)this + 3) = off_989158;
  *((_DWORD *)this + 1) = off_98913C;
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(this, (int *)off_98916C);
  LC_API_FREE_0(this);
}


// ===== 6cb3e8 `virtual thunk to'glitch::scene::ISceneNodeAnimatorCollisionResponse::~ISceneNodeAnimatorCollisionResponse() =====
void __fastcall `virtual thunk to'glitch::scene::ISceneNodeAnimatorCollisionResponse::~ISceneNodeAnimatorCollisionResponse(
        glitch::scene::ISceneNodeAnimatorCollisionResponse *this)
{
  glitch::scene::ISceneNodeAnimatorCollisionResponse::~ISceneNodeAnimatorCollisionResponse((glitch::scene::ISceneNodeAnimatorCollisionResponse *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6cb3f8 `virtual thunk to'glitch::scene::CSceneNodeAnimatorCollisionResponse::~CSceneNodeAnimatorCollisionResponse() =====
void __fastcall `virtual thunk to'glitch::scene::CSceneNodeAnimatorCollisionResponse::~CSceneNodeAnimatorCollisionResponse(
        glitch::scene::CSceneNodeAnimatorCollisionResponse *this)
{
  glitch::scene::CSceneNodeAnimatorCollisionResponse::~CSceneNodeAnimatorCollisionResponse((glitch::scene::CSceneNodeAnimatorCollisionResponse *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6cb408 `virtual thunk to'glitch::scene::CSceneNodeAnimatorCollisionResponse::~CSceneNodeAnimatorCollisionResponse() =====
void __fastcall `virtual thunk to'glitch::scene::CSceneNodeAnimatorCollisionResponse::~CSceneNodeAnimatorCollisionResponse(
        glitch::scene::CSceneNodeAnimatorCollisionResponse *this)
{
  glitch::scene::CSceneNodeAnimatorCollisionResponse::~CSceneNodeAnimatorCollisionResponse((glitch::scene::CSceneNodeAnimatorCollisionResponse *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6cb418 glitch::scene::CSceneNodeAnimatorDelete::getType(void) =====
int __fastcall glitch::scene::CSceneNodeAnimatorDelete::getType(glitch::scene::CSceneNodeAnimatorDelete *this)
{
  return 5;
}


// ===== 6cb420 `global constructor keyed to'.._source_glitch_scene_CSceneNodeAnimatorDelete.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CSceneNodeAnimatorDelete.cpp()
{
  dword_9F7E54 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7E50 = 1056964608;
}


// ===== 6cb440 glitch::scene::CSceneNodeAnimatorDelete::animateNode(glitch::scene::ISceneNode *,uint) =====
void __fastcall glitch::scene::CSceneNodeAnimatorDelete::animateNode(
        glitch::scene::CSceneNodeAnimatorDelete *this,
        glitch::scene::ISceneNode *a2,
        unsigned int a3)
{
  bool v5; // cf
  int v6; // r3

  v5 = 1;
  if ( a2 )
    v5 = *((_DWORD *)this + 3) >= a3;
  if ( !v5 )
  {
    v6 = *((_DWORD *)this + 4);
    if ( v6 )
    {
      if ( !(*(int (__fastcall **)(int, const char *, unsigned int))(*(_DWORD *)(v6 + 276) + 228))(
              v6 + 276,
              "IRR_Editor",
              a3) )
        glitch::scene::CSceneManager::addToDeletionQueue(*((glitch::scene::CSceneManager **)this + 4), a2);
    }
  }
}


// ===== 6cb4a0 `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorDelete::~CSceneNodeAnimatorDelete() =====
void __fastcall `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorDelete::~CSceneNodeAnimatorDelete(
        glitch::scene::CSceneNodeAnimatorDelete *this)
{
  glitch::scene::CSceneNodeAnimatorDelete::~CSceneNodeAnimatorDelete((glitch::scene::CSceneNodeAnimatorDelete *)((char *)this - 4));
}


// ===== 6cb4a8 glitch::scene::CSceneNodeAnimatorDelete::~CSceneNodeAnimatorDelete() =====
void __fastcall glitch::scene::CSceneNodeAnimatorDelete::~CSceneNodeAnimatorDelete(
        glitch::scene::CSceneNodeAnimatorDelete *this)
{
  *(_DWORD *)this = off_98947C;
  *((_DWORD *)this + 5) = off_9894F4;
  *((_DWORD *)this + 1) = off_9894D8;
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(this, (int *)off_989504);
}


// ===== 6cb4fc `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorDelete::~CSceneNodeAnimatorDelete() =====
void __fastcall `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorDelete::~CSceneNodeAnimatorDelete(
        glitch::scene::CSceneNodeAnimatorDelete *this)
{
  glitch::scene::CSceneNodeAnimatorDelete::~CSceneNodeAnimatorDelete((glitch::scene::CSceneNodeAnimatorDelete *)((char *)this - 4));
}


// ===== 6cb504 glitch::scene::CSceneNodeAnimatorDelete::~CSceneNodeAnimatorDelete() =====
void __fastcall glitch::scene::CSceneNodeAnimatorDelete::~CSceneNodeAnimatorDelete(
        glitch::scene::CSceneNodeAnimatorDelete *this)
{
  glitch::scene::CSceneNodeAnimatorDelete::~CSceneNodeAnimatorDelete(this);
  LC_API_FREE_0(this);
}


// ===== 6cb520 glitch::scene::CSceneNodeAnimatorDelete::~CSceneNodeAnimatorDelete() =====
void __fastcall glitch::scene::CSceneNodeAnimatorDelete::~CSceneNodeAnimatorDelete(
        glitch::scene::CSceneNodeAnimatorDelete *this,
        int *a2)
{
  int v2; // r12

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[5];
  *((_DWORD *)this + 1) = off_9894D8;
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(this, a2 + 1);
}


// ===== 6cb56c glitch::scene::CSceneNodeAnimatorDelete::CSceneNodeAnimatorDelete(glitch::scene::CSceneManager *,uint) =====
glitch::scene::CSceneNodeAnimatorDelete *__fastcall glitch::scene::CSceneNodeAnimatorDelete::CSceneNodeAnimatorDelete(
        glitch::scene::CSceneNodeAnimatorDelete *this,
        glitch::scene::CSceneManager *a2,
        unsigned int a3)
{
  *((_DWORD *)this + 6) = 1;
  *(_DWORD *)this = off_9895A4;
  *((_DWORD *)this + 5) = off_95B720;
  *(int *)((char *)&dword_14 + (_DWORD)this) = (int)off_9895C4;
  *((_DWORD *)this + 1) = off_95C300;
  glitch::IObject::IObject(this);
  *(_DWORD *)this = off_989524;
  *(int *)((char *)&dword_14 + (_DWORD)this) = (int)off_989588;
  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = off_98947C;
  *((_DWORD *)this + 5) = off_9894F4;
  *((_DWORD *)this + 1) = off_9894D8;
  *((_DWORD *)this + 3) = a3;
  *((_DWORD *)this + 4) = a2;
  return this;
}


// ===== 6cb62c glitch::scene::CSceneNodeAnimatorDelete::createClone(void) =====
glitch::scene::CSceneNodeAnimatorDelete *__fastcall glitch::scene::CSceneNodeAnimatorDelete::createClone(
        glitch::scene::CSceneNodeAnimatorDelete *this)
{
  glitch::scene::CSceneNodeAnimatorDelete *v2; // r5

  v2 = (glitch::scene::CSceneNodeAnimatorDelete *)operator new(0x1Cu, 0);
  glitch::scene::CSceneNodeAnimatorDelete::CSceneNodeAnimatorDelete(
    v2,
    *((glitch::scene::CSceneManager **)this + 4),
    *((_DWORD *)this + 3));
  return v2;
}


// ===== 6cb658 glitch::scene::CSceneNodeAnimatorDelete::CSceneNodeAnimatorDelete(glitch::scene::CSceneManager *,uint) =====
glitch::scene::CSceneNodeAnimatorDelete *__fastcall glitch::scene::CSceneNodeAnimatorDelete::CSceneNodeAnimatorDelete(
        glitch::scene::CSceneNodeAnimatorDelete *this,
        glitch::scene::CSceneManager *a2,
        unsigned int a3,
        int a4)
{
  char *v4; // r7
  int v5; // r12
  int v10; // r2
  int v11; // r1

  v4 = (char *)a2 + 4;
  v5 = *((_DWORD *)a2 + 2);
  *(_DWORD *)this = v5;
  *(_DWORD *)((char *)this + *(_DWORD *)(v5 - 12)) = *((_DWORD *)a2 + 3);
  *((_DWORD *)this + 1) = off_95C300;
  glitch::IObject::IObject(this);
  v10 = *((_DWORD *)a2 + 1);
  *(_DWORD *)this = v10;
  *(_DWORD *)((char *)this + *(_DWORD *)(v10 - 12)) = *((_DWORD *)v4 + 3);
  *((_DWORD *)this + 1) = off_976CF0;
  *((_DWORD *)this + 2) = 0;
  v11 = *(_DWORD *)a2;
  *(_DWORD *)this = *(_DWORD *)a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v11 - 12)) = *((_DWORD *)a2 + 5);
  *((_DWORD *)this + 1) = off_9894D8;
  *((_DWORD *)this + 3) = a4;
  *((_DWORD *)this + 4) = a3;
  return this;
}


// ===== 6cb710 `virtual thunk to'glitch::scene::CSceneNodeAnimatorDelete::~CSceneNodeAnimatorDelete() =====
void __fastcall `virtual thunk to'glitch::scene::CSceneNodeAnimatorDelete::~CSceneNodeAnimatorDelete(
        glitch::scene::CSceneNodeAnimatorDelete *this)
{
  glitch::scene::CSceneNodeAnimatorDelete::~CSceneNodeAnimatorDelete((glitch::scene::CSceneNodeAnimatorDelete *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6cb720 `virtual thunk to'glitch::scene::CSceneNodeAnimatorDelete::~CSceneNodeAnimatorDelete() =====
void __fastcall `virtual thunk to'glitch::scene::CSceneNodeAnimatorDelete::~CSceneNodeAnimatorDelete(
        glitch::scene::CSceneNodeAnimatorDelete *this)
{
  glitch::scene::CSceneNodeAnimatorDelete::~CSceneNodeAnimatorDelete((glitch::scene::CSceneNodeAnimatorDelete *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6cb730 glitch::scene::CSceneNodeAnimatorFlyCircle::getType(void) =====
int __fastcall glitch::scene::CSceneNodeAnimatorFlyCircle::getType(glitch::scene::CSceneNodeAnimatorFlyCircle *this)
{
  return 0;
}


// ===== 6cb738 glitch::scene::CSceneNodeAnimatorFlyCircle::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CSceneNodeAnimatorFlyCircle::serializeAttributes(int a1, int a2)
{
  (*(void (__fastcall **)(int, char *, int, _DWORD))(*(_DWORD *)a2 + 424))(a2, "Center", a1 + 12, 0);
  (*(void (__fastcall **)(int, char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "Radius", *(_DWORD *)(a1 + 60), 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(
    a2,
    "Speed",
    *(_DWORD *)(a1 + 64),
    0);
  return (*(int (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 424))(a2, "Direction", a1 + 24, 0);
}


// ===== 6cb7d8 `global constructor keyed to'.._source_glitch_scene_CSceneNodeAnimatorFlyCircle.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CSceneNodeAnimatorFlyCircle.cpp()
{
  dword_9F7E60 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7E5C = 1056964608;
}


// ===== 6cb7f8 `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorFlyCircle::~CSceneNodeAnimatorFlyCircle() =====
void __fastcall `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorFlyCircle::~CSceneNodeAnimatorFlyCircle(
        glitch::scene::CSceneNodeAnimatorFlyCircle *this)
{
  glitch::scene::CSceneNodeAnimatorFlyCircle::~CSceneNodeAnimatorFlyCircle((glitch::scene::CSceneNodeAnimatorFlyCircle *)((char *)this - 4));
}


// ===== 6cb800 glitch::scene::CSceneNodeAnimatorFlyCircle::~CSceneNodeAnimatorFlyCircle() =====
void __fastcall glitch::scene::CSceneNodeAnimatorFlyCircle::~CSceneNodeAnimatorFlyCircle(
        glitch::scene::CSceneNodeAnimatorFlyCircle *this)
{
  *(_DWORD *)this = off_9895DC;
  *((_DWORD *)this + 18) = off_989654;
  *((_DWORD *)this + 1) = off_989638;
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(this, (int *)off_989664);
}


// ===== 6cb854 `virtual thunk to'glitch::scene::CSceneNodeAnimatorFlyCircle::~CSceneNodeAnimatorFlyCircle() =====
void __fastcall `virtual thunk to'glitch::scene::CSceneNodeAnimatorFlyCircle::~CSceneNodeAnimatorFlyCircle(
        glitch::scene::CSceneNodeAnimatorFlyCircle *this)
{
  glitch::scene::CSceneNodeAnimatorFlyCircle::~CSceneNodeAnimatorFlyCircle((glitch::scene::CSceneNodeAnimatorFlyCircle *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6cb864 glitch::scene::CSceneNodeAnimatorFlyCircle::init(void) =====
float *__fastcall glitch::scene::CSceneNodeAnimatorFlyCircle::init(glitch::scene::CSceneNodeAnimatorFlyCircle *this)
{
  float v2; // r5
  float v3; // r7
  float v4; // r6
  float *v5; // r0
  float *v6; // r0
  float v7; // r6
  float v8; // r9
  float v9; // r10
  float v10; // r5
  float v11; // r7
  float v12; // r8
  float *result; // r0
  float v14[3]; // [sp+4h] [bp-24h] BYREF
  float v15[3]; // [sp+10h] [bp-18h] BYREF
  float v16[3]; // [sp+1Ch] [bp-Ch] BYREF

  glitch::core::vector3d<float>::normalize((float *)this + 6);
  v2 = *((float *)this + 7);
  v3 = *((float *)this + 8);
  v4 = *((float *)this + 6);
  if ( v2 == 0.0 )
  {
    v15[0] = (float)(*((float *)this + 8) * -50.0) + (float)(v2 * 0.0);
    v15[1] = (float)(v4 * -0.0) + (float)(v3 * 0.0);
    v15[2] = (float)(v2 * -0.0) + (float)(v4 * 50.0);
    v5 = v15;
  }
  else
  {
    v16[0] = (float)(*((float *)this + 8) * -0.0) + (float)(v2 * 0.0);
    v16[1] = (float)(v4 * -0.0) + (float)(v3 * 50.0);
    v16[2] = (float)(v2 * -50.0) + (float)(v4 * 0.0);
    v5 = v16;
  }
  v6 = glitch::core::vector3d<float>::normalize(v5);
  v7 = *v6;
  v8 = *((float *)this + 8);
  v9 = *((float *)this + 7);
  *((float *)this + 12) = *v6;
  v10 = v6[1];
  *((float *)this + 13) = v10;
  v11 = v6[2];
  *((float *)this + 14) = v11;
  v12 = *((float *)this + 6);
  v14[0] = (float)(COERCE_FLOAT(LODWORD(v10) + 0x80000000) * v8) + (float)(v9 * v11);
  v14[1] = (float)(COERCE_FLOAT(LODWORD(v11) + 0x80000000) * v12) + (float)(v8 * v7);
  v14[2] = (float)(v9 * COERCE_FLOAT(LODWORD(v7) + 0x80000000)) + (float)(v12 * v10);
  result = glitch::core::vector3d<float>::normalize(v14);
  *((float *)this + 9) = *result;
  *((float *)this + 10) = result[1];
  *((float *)this + 11) = result[2];
  return result;
}


// ===== 6cba9c glitch::scene::CSceneNodeAnimatorFlyCircle::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
float *__fastcall glitch::scene::CSceneNodeAnimatorFlyCircle::deserializeAttributes(int a1, int a2)
{
  int v4; // r2
  int v5; // r3
  float v6; // r5
  float v7; // r7
  float v8; // r8
  _DWORD v10[3]; // [sp+0h] [bp-18h] BYREF
  _DWORD v11[3]; // [sp+Ch] [bp-Ch] BYREF

  (*(void (__fastcall **)(_DWORD *))(*(_DWORD *)a2 + 436))(v11);
  v4 = v11[1];
  v5 = v11[2];
  *(_DWORD *)(a1 + 12) = v11[0];
  *(_DWORD *)(a1 + 16) = v4;
  *(_DWORD *)(a1 + 20) = v5;
  *(_DWORD *)(a1 + 60) = (*(int (__fastcall **)(int, char *))(*(_DWORD *)a2 + 112))(a2, "Radius");
  *(_DWORD *)(a1 + 64) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 112))(a2, "Speed");
  (*(void (__fastcall **)(_DWORD *, int, const char *))(*(_DWORD *)a2 + 436))(v10, a2, "Direction");
  v6 = *(float *)v10;
  v7 = *(float *)&v10[1];
  v8 = *(float *)&v10[2];
  *(_DWORD *)(a1 + 68) = 0;
  *(float *)(a1 + 24) = v6;
  *(float *)(a1 + 28) = v7;
  *(float *)(a1 + 32) = v8;
  if ( (float)(v6 + 0.000001) < 0.0
    || (float)(v6 - 0.000001) > 0.0
    || (float)(v7 + 0.000001) < 0.0
    || (float)(v7 - 0.000001) > 0.0
    || (float)(v8 + 0.000001) < 0.0
    || (float)(v8 - 0.000001) > 0.0 )
  {
    glitch::core::vector3d<float>::normalize((float *)(a1 + 24));
  }
  else
  {
    *(_DWORD *)(a1 + 32) = 0;
    *(_DWORD *)(a1 + 24) = 0;
    *(_DWORD *)(a1 + 28) = 1065353216;
  }
  return glitch::scene::CSceneNodeAnimatorFlyCircle::init((glitch::scene::CSceneNodeAnimatorFlyCircle *)a1);
}


// ===== 6cbc50 glitch::scene::CSceneNodeAnimatorFlyCircle::animateNode(glitch::scene::ISceneNode *,uint) =====
int __fastcall glitch::scene::CSceneNodeAnimatorFlyCircle::animateNode(
        int this,
        glitch::scene::ISceneNode *a2,
        unsigned int a3)
{
  float *v4; // r4
  float v5; // r7
  float v6; // r6
  int (__fastcall *v7)(glitch::scene::ISceneNode *, float *); // r10
  float v8; // r8
  float v9; // r7
  float v10; // r11
  float v11; // r9
  float v12[4]; // [sp+4h] [bp-10h] BYREF

  v4 = (float *)this;
  if ( a2 )
  {
    v5 = (float)(a3 - *(_DWORD *)(this + 68)) * *(float *)(this + 64);
    v6 = *(float *)(this + 60);
    v7 = *(int (__fastcall **)(glitch::scene::ISceneNode *, float *))(*(_DWORD *)a2 + 164);
    v8 = cosf(v5);
    v9 = sinf(v5);
    v10 = (float)(v6 * (float)((float)(v8 * v4[10]) + (float)(v9 * v4[13]))) + v4[4];
    v11 = (float)(v6 * (float)((float)(v8 * v4[11]) + (float)(v9 * v4[14]))) + v4[5];
    v12[0] = (float)(v6 * (float)((float)(v8 * v4[9]) + (float)(v9 * v4[12]))) + v4[3];
    v12[1] = v10;
    v12[2] = v11;
    return v7(a2, v12);
  }
  return this;
}


// ===== 6cbd78 glitch::scene::CSceneNodeAnimatorFlyCircle::CSceneNodeAnimatorFlyCircle(uint,glitch::core::vector3d<float> const&,float,float,glitch::core::vector3d<float> const&) =====
glitch::IObject *__fastcall glitch::scene::CSceneNodeAnimatorFlyCircle::CSceneNodeAnimatorFlyCircle(
        glitch::IObject *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int a5,
        _DWORD *a6)
{
  int v10; // r2

  *((_DWORD *)a1 + 19) = 1;
  *(_DWORD *)a1 = off_989704;
  *((_DWORD *)a1 + 18) = off_95B720;
  *(int *)((char *)&dword_48 + (_DWORD)a1) = (int)off_989724;
  *((_DWORD *)a1 + 1) = off_95C300;
  glitch::IObject::IObject(a1);
  *(_DWORD *)a1 = off_989684;
  *(int *)((char *)&dword_48 + (_DWORD)a1) = (int)off_9896E8;
  *((_DWORD *)a1 + 2) = 0;
  *((_DWORD *)a1 + 18) = off_989654;
  *(_DWORD *)a1 = off_9895DC;
  *((_DWORD *)a1 + 1) = off_989638;
  *((_DWORD *)a1 + 3) = *a3;
  *((_DWORD *)a1 + 4) = a3[1];
  *((_DWORD *)a1 + 5) = a3[2];
  *((_DWORD *)a1 + 6) = *a6;
  *((_DWORD *)a1 + 7) = a6[1];
  v10 = a6[2];
  *((_DWORD *)a1 + 14) = 0;
  *((_DWORD *)a1 + 15) = a4;
  *((_DWORD *)a1 + 8) = v10;
  *((_DWORD *)a1 + 17) = a2;
  *((_DWORD *)a1 + 9) = 0;
  *((_DWORD *)a1 + 16) = a5;
  *((_DWORD *)a1 + 10) = 0;
  *((_DWORD *)a1 + 11) = 0;
  *((_DWORD *)a1 + 12) = 0;
  *((_DWORD *)a1 + 13) = 0;
  glitch::scene::CSceneNodeAnimatorFlyCircle::init(a1);
  return a1;
}


// ===== 6cbe98 glitch::scene::CSceneNodeAnimatorFlyCircle::createClone(void) =====
glitch::IObject *__fastcall glitch::scene::CSceneNodeAnimatorFlyCircle::createClone(
        glitch::scene::CSceneNodeAnimatorFlyCircle *this)
{
  glitch::IObject *v2; // r5

  v2 = (glitch::IObject *)operator new(0x50u, 0);
  glitch::scene::CSceneNodeAnimatorFlyCircle::CSceneNodeAnimatorFlyCircle(
    v2,
    *((_DWORD *)this + 17),
    (_DWORD *)this + 3,
    *((_DWORD *)this + 15),
    *((_DWORD *)this + 16),
    (_DWORD *)this + 6);
  return v2;
}


// ===== 6cbee0 glitch::scene::CSceneNodeAnimatorFlyCircle::CSceneNodeAnimatorFlyCircle(uint,glitch::core::vector3d<float> const&,float,float,glitch::core::vector3d<float> const&) =====
glitch::IObject *__fastcall glitch::scene::CSceneNodeAnimatorFlyCircle::CSceneNodeAnimatorFlyCircle(
        glitch::IObject *a1,
        int *a2,
        int a3,
        _DWORD *a4,
        int a5,
        int a6,
        _DWORD *a7)
{
  _DWORD *v7; // r7
  int v8; // r12
  int v13; // r2
  int v14; // r1
  int v15; // r2

  v7 = a2 + 1;
  v8 = a2[2];
  *(_DWORD *)a1 = v8;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(v8 - 12)) = a2[3];
  *((_DWORD *)a1 + 1) = off_95C300;
  glitch::IObject::IObject(a1);
  v13 = a2[1];
  *(_DWORD *)a1 = v13;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(v13 - 12)) = v7[3];
  *((_DWORD *)a1 + 1) = off_976CF0;
  *((_DWORD *)a1 + 2) = 0;
  v14 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(v14 - 12)) = a2[5];
  *((_DWORD *)a1 + 1) = off_989638;
  *((_DWORD *)a1 + 3) = *a4;
  *((_DWORD *)a1 + 4) = a4[1];
  *((_DWORD *)a1 + 5) = a4[2];
  *((_DWORD *)a1 + 6) = *a7;
  *((_DWORD *)a1 + 7) = a7[1];
  v15 = a7[2];
  *((_DWORD *)a1 + 14) = 0;
  *((_DWORD *)a1 + 9) = 0;
  *((_DWORD *)a1 + 8) = v15;
  *((_DWORD *)a1 + 10) = 0;
  *((_DWORD *)a1 + 11) = 0;
  *((_DWORD *)a1 + 12) = 0;
  *((_DWORD *)a1 + 13) = 0;
  *((_DWORD *)a1 + 15) = a5;
  *((_DWORD *)a1 + 17) = a3;
  *((_DWORD *)a1 + 16) = a6;
  glitch::scene::CSceneNodeAnimatorFlyCircle::init(a1);
  return a1;
}


// ===== 6cbffc `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorFlyCircle::~CSceneNodeAnimatorFlyCircle() =====
void __fastcall `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorFlyCircle::~CSceneNodeAnimatorFlyCircle(
        glitch::scene::CSceneNodeAnimatorFlyCircle *this)
{
  glitch::scene::CSceneNodeAnimatorFlyCircle::~CSceneNodeAnimatorFlyCircle((glitch::scene::CSceneNodeAnimatorFlyCircle *)((char *)this - 4));
}


// ===== 6cc004 glitch::scene::CSceneNodeAnimatorFlyCircle::~CSceneNodeAnimatorFlyCircle() =====
void __fastcall glitch::scene::CSceneNodeAnimatorFlyCircle::~CSceneNodeAnimatorFlyCircle(
        glitch::scene::CSceneNodeAnimatorFlyCircle *this)
{
  *(_DWORD *)this = off_9895DC;
  *((_DWORD *)this + 18) = off_989654;
  *((_DWORD *)this + 1) = off_989638;
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(this, (int *)off_989664);
  LC_API_FREE_0(this);
}


// ===== 6cc060 `virtual thunk to'glitch::scene::CSceneNodeAnimatorFlyCircle::~CSceneNodeAnimatorFlyCircle() =====
void __fastcall `virtual thunk to'glitch::scene::CSceneNodeAnimatorFlyCircle::~CSceneNodeAnimatorFlyCircle(
        glitch::scene::CSceneNodeAnimatorFlyCircle *this)
{
  glitch::scene::CSceneNodeAnimatorFlyCircle::~CSceneNodeAnimatorFlyCircle((glitch::scene::CSceneNodeAnimatorFlyCircle *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6cc070 glitch::scene::CSceneNodeAnimatorFlyStraight::getType(void) =====
int __fastcall glitch::scene::CSceneNodeAnimatorFlyStraight::getType(
        glitch::scene::CSceneNodeAnimatorFlyStraight *this)
{
  return 1;
}


// ===== 6cc078 glitch::scene::CSceneNodeAnimatorFlyStraight::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CSceneNodeAnimatorFlyStraight::serializeAttributes(int a1, int a2)
{
  (*(void (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 424))(a2, "Start", a1 + 12, 0);
  (*(void (__fastcall **)(int, char *, int, _DWORD))(*(_DWORD *)a2 + 424))(a2, "End", a1 + 24, 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
    a2,
    "TimeForWay",
    *(_DWORD *)(a1 + 60),
    0);
  return (*(int (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
           a2,
           "Loop",
           *(unsigned __int8 *)(a1 + 64),
           0);
}


// ===== 6cc118 `global constructor keyed to'.._source_glitch_scene_CSceneNodeAnimatorFlyStraight.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CSceneNodeAnimatorFlyStraight.cpp()
{
  dword_9F7E6C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7E68 = 1056964608;
}


// ===== 6cc138 glitch::scene::CSceneNodeAnimatorFlyStraight::animateNode(glitch::scene::ISceneNode *,uint) =====
int __fastcall glitch::scene::CSceneNodeAnimatorFlyStraight::animateNode(
        int this,
        glitch::scene::ISceneNode *a2,
        unsigned int a3)
{
  int v4; // r4
  int v5; // lr
  float v6; // r1
  float v7; // r3
  unsigned int v8; // r0
  unsigned int v9; // r6
  float v10; // r7
  float v11; // r6
  float v12; // r10
  float v13; // r0
  float v14; // r2
  float v15; // r3
  float v16; // [sp+4h] [bp-10h] BYREF
  float v17; // [sp+8h] [bp-Ch]
  float v18; // [sp+Ch] [bp-8h]

  v4 = this;
  if ( a2 )
  {
    v5 = *(unsigned __int8 *)(this + 64);
    v6 = *(float *)(this + 16);
    v7 = *(float *)(this + 20);
    v8 = a3 - *(_DWORD *)(this + 56);
    v16 = *(float *)(v4 + 12);
    v17 = v6;
    v18 = v7;
    if ( v5 )
    {
      v9 = *(_DWORD *)(v4 + 60);
    }
    else
    {
      v9 = *(_DWORD *)(v4 + 60);
      if ( v8 >= v9 )
      {
        v14 = *(float *)(v4 + 24);
        v15 = *(float *)(v4 + 28);
        v18 = *(float *)(v4 + 32);
        v16 = v14;
        v17 = v15;
        return (*(int (__fastcall **)(glitch::scene::ISceneNode *, float *))(*(_DWORD *)a2 + 164))(a2, &v16);
      }
    }
    v10 = fmodf((float)v8, (float)v9);
    v11 = *(float *)(v4 + 52);
    v12 = v11 * (float)(v10 * *(float *)(v4 + 40));
    v13 = v11 * (float)(v10 * *(float *)(v4 + 44));
    v16 = v16 + (float)(v11 * (float)(v10 * *(float *)(v4 + 36)));
    v17 = v17 + v12;
    v18 = v18 + v13;
    return (*(int (__fastcall **)(glitch::scene::ISceneNode *, float *))(*(_DWORD *)a2 + 164))(a2, &v16);
  }
  return this;
}


// ===== 6cc264 `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorFlyStraight::~CSceneNodeAnimatorFlyStraight() =====
void __fastcall `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorFlyStraight::~CSceneNodeAnimatorFlyStraight(
        glitch::scene::CSceneNodeAnimatorFlyStraight *this)
{
  glitch::scene::CSceneNodeAnimatorFlyStraight::~CSceneNodeAnimatorFlyStraight((glitch::scene::CSceneNodeAnimatorFlyStraight *)((char *)this - 4));
}


// ===== 6cc26c glitch::scene::CSceneNodeAnimatorFlyStraight::~CSceneNodeAnimatorFlyStraight() =====
void __fastcall glitch::scene::CSceneNodeAnimatorFlyStraight::~CSceneNodeAnimatorFlyStraight(
        glitch::scene::CSceneNodeAnimatorFlyStraight *this)
{
  *(_DWORD *)this = off_98973C;
  *((_DWORD *)this + 17) = off_9897B4;
  *((_DWORD *)this + 1) = off_989798;
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(this, (int *)off_9897C4);
}


// ===== 6cc2c0 `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorFlyStraight::~CSceneNodeAnimatorFlyStraight() =====
void __fastcall `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorFlyStraight::~CSceneNodeAnimatorFlyStraight(
        glitch::scene::CSceneNodeAnimatorFlyStraight *this)
{
  glitch::scene::CSceneNodeAnimatorFlyStraight::~CSceneNodeAnimatorFlyStraight((glitch::scene::CSceneNodeAnimatorFlyStraight *)((char *)this - 4));
}


// ===== 6cc2c8 glitch::scene::CSceneNodeAnimatorFlyStraight::~CSceneNodeAnimatorFlyStraight() =====
void __fastcall glitch::scene::CSceneNodeAnimatorFlyStraight::~CSceneNodeAnimatorFlyStraight(
        glitch::scene::CSceneNodeAnimatorFlyStraight *this)
{
  glitch::scene::CSceneNodeAnimatorFlyStraight::~CSceneNodeAnimatorFlyStraight(this);
  LC_API_FREE_0(this);
}


// ===== 6cc2e4 glitch::scene::CSceneNodeAnimatorFlyStraight::~CSceneNodeAnimatorFlyStraight() =====
void __fastcall glitch::scene::CSceneNodeAnimatorFlyStraight::~CSceneNodeAnimatorFlyStraight(
        glitch::scene::CSceneNodeAnimatorFlyStraight *this,
        int *a2)
{
  int v2; // r12

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[5];
  *((_DWORD *)this + 1) = off_989798;
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(this, a2 + 1);
}


// ===== 6cc330 glitch::scene::CSceneNodeAnimatorFlyStraight::recalculateImidiateValues(void) =====
float __fastcall glitch::scene::CSceneNodeAnimatorFlyStraight::recalculateImidiateValues(
        glitch::scene::CSceneNodeAnimatorFlyStraight *this)
{
  float v2; // r7
  float v3; // r6
  float v4; // r0
  float v5; // r5
  float v6; // r0
  float result; // r0

  v2 = *((float *)this + 6) - *((float *)this + 3);
  v3 = *((float *)this + 7) - *((float *)this + 4);
  v4 = *((float *)this + 8) - *((float *)this + 5);
  v5 = *((float *)this + 8) - *((float *)this + 5);
  *((float *)this + 9) = v2;
  *((float *)this + 10) = v3;
  *((float *)this + 11) = v4;
  v6 = sqrt((float)((float)((float)(v2 * v2) + (float)(v3 * v3)) + (float)(v5 * v5)));
  *((float *)this + 12) = v6;
  glitch::core::vector3d<float>::normalize((float *)this + 9);
  result = *((float *)this + 12) / (float)*((unsigned int *)this + 15);
  *((float *)this + 13) = result;
  return result;
}


// ===== 6cc3ec glitch::scene::CSceneNodeAnimatorFlyStraight::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
float __fastcall glitch::scene::CSceneNodeAnimatorFlyStraight::deserializeAttributes(int a1, int a2)
{
  int v4; // r3
  int v5; // r1
  int v6; // r2
  int v7; // r3
  _DWORD v9[3]; // [sp+0h] [bp-1Ch] BYREF
  _DWORD v10[4]; // [sp+Ch] [bp-10h] BYREF

  (*(void (__fastcall **)(_DWORD *))(*(_DWORD *)a2 + 436))(v10);
  v4 = v10[2];
  v5 = v10[0];
  *(_DWORD *)(a1 + 16) = v10[1];
  *(_DWORD *)(a1 + 12) = v5;
  *(_DWORD *)(a1 + 20) = v4;
  (*(void (__fastcall **)(_DWORD *, int, char *))(*(_DWORD *)a2 + 436))(v9, a2, "End");
  v6 = v9[1];
  v7 = v9[2];
  *(_DWORD *)(a1 + 24) = v9[0];
  *(_DWORD *)(a1 + 28) = v6;
  *(_DWORD *)(a1 + 32) = v7;
  *(_DWORD *)(a1 + 60) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 88))(a2, "TimeForWay");
  *(_BYTE *)(a1 + 64) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "Loop");
  return glitch::scene::CSceneNodeAnimatorFlyStraight::recalculateImidiateValues((glitch::scene::CSceneNodeAnimatorFlyStraight *)a1);
}


// ===== 6cc4b8 glitch::scene::CSceneNodeAnimatorFlyStraight::CSceneNodeAnimatorFlyStraight(glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,uint,bool,uint) =====
int __fastcall glitch::scene::CSceneNodeAnimatorFlyStraight::CSceneNodeAnimatorFlyStraight(
        int a1,
        _DWORD *a2,
        _DWORD *a3,
        int a4,
        char a5,
        int a6)
{
  int v10; // r2

  *(_DWORD *)(a1 + 72) = 1;
  *(_DWORD *)a1 = off_989864;
  *(_DWORD *)(a1 + 68) = off_95B720;
  *(int *)((char *)&dword_44 + a1) = (int)off_989884;
  *(_DWORD *)(a1 + 4) = off_95C300;
  glitch::IObject::IObject((glitch::IObject *)a1);
  *(_DWORD *)a1 = off_9897E4;
  *(int *)((char *)&dword_44 + a1) = (int)off_989848;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 68) = off_9897B4;
  *(_DWORD *)a1 = off_98973C;
  *(_DWORD *)(a1 + 4) = off_989798;
  *(_DWORD *)(a1 + 12) = *a2;
  *(_DWORD *)(a1 + 16) = a2[1];
  *(_DWORD *)(a1 + 20) = a2[2];
  *(_DWORD *)(a1 + 24) = *a3;
  *(_DWORD *)(a1 + 28) = a3[1];
  v10 = a3[2];
  *(_DWORD *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 32) = v10;
  *(_DWORD *)(a1 + 60) = a4;
  *(_DWORD *)(a1 + 56) = a6;
  *(_BYTE *)(a1 + 64) = a5;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  glitch::scene::CSceneNodeAnimatorFlyStraight::recalculateImidiateValues((glitch::scene::CSceneNodeAnimatorFlyStraight *)a1);
  return a1;
}


// ===== 6cc5d4 glitch::scene::CSceneNodeAnimatorFlyStraight::createClone(void) =====
void *__fastcall glitch::scene::CSceneNodeAnimatorFlyStraight::createClone(
        glitch::scene::CSceneNodeAnimatorFlyStraight *this)
{
  void *v2; // r5

  v2 = operator new(0x4Cu, 0);
  glitch::scene::CSceneNodeAnimatorFlyStraight::CSceneNodeAnimatorFlyStraight(
    (int)v2,
    (_DWORD *)this + 3,
    (_DWORD *)this + 6,
    *((_DWORD *)this + 15),
    *((_BYTE *)this + 64),
    *((_DWORD *)this + 14));
  return v2;
}


// ===== 6cc61c glitch::scene::CSceneNodeAnimatorFlyStraight::CSceneNodeAnimatorFlyStraight(glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,uint,bool,uint) =====
int __fastcall glitch::scene::CSceneNodeAnimatorFlyStraight::CSceneNodeAnimatorFlyStraight(
        int a1,
        int *a2,
        _DWORD *a3,
        _DWORD *a4,
        int a5,
        char a6,
        int a7)
{
  _DWORD *v7; // r7
  int v8; // r12
  int v13; // r2
  int v14; // r1
  int v15; // r2

  v7 = a2 + 1;
  v8 = a2[2];
  *(_DWORD *)a1 = v8;
  *(_DWORD *)(a1 + *(_DWORD *)(v8 - 12)) = a2[3];
  *(_DWORD *)(a1 + 4) = off_95C300;
  glitch::IObject::IObject((glitch::IObject *)a1);
  v13 = a2[1];
  *(_DWORD *)a1 = v13;
  *(_DWORD *)(a1 + *(_DWORD *)(v13 - 12)) = v7[3];
  *(_DWORD *)(a1 + 4) = off_976CF0;
  *(_DWORD *)(a1 + 8) = 0;
  v14 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v14 - 12)) = a2[5];
  *(_DWORD *)(a1 + 4) = off_989798;
  *(_DWORD *)(a1 + 12) = *a3;
  *(_DWORD *)(a1 + 16) = a3[1];
  *(_DWORD *)(a1 + 20) = a3[2];
  *(_DWORD *)(a1 + 24) = *a4;
  *(_DWORD *)(a1 + 28) = a4[1];
  v15 = a4[2];
  *(_DWORD *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 32) = v15;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 56) = a7;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_BYTE *)(a1 + 64) = a6;
  *(_DWORD *)(a1 + 60) = a5;
  glitch::scene::CSceneNodeAnimatorFlyStraight::recalculateImidiateValues((glitch::scene::CSceneNodeAnimatorFlyStraight *)a1);
  return a1;
}


// ===== 6cc734 `virtual thunk to'glitch::scene::CSceneNodeAnimatorFlyStraight::~CSceneNodeAnimatorFlyStraight() =====
void __fastcall `virtual thunk to'glitch::scene::CSceneNodeAnimatorFlyStraight::~CSceneNodeAnimatorFlyStraight(
        glitch::scene::CSceneNodeAnimatorFlyStraight *this)
{
  glitch::scene::CSceneNodeAnimatorFlyStraight::~CSceneNodeAnimatorFlyStraight((glitch::scene::CSceneNodeAnimatorFlyStraight *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6cc744 `virtual thunk to'glitch::scene::CSceneNodeAnimatorFlyStraight::~CSceneNodeAnimatorFlyStraight() =====
void __fastcall `virtual thunk to'glitch::scene::CSceneNodeAnimatorFlyStraight::~CSceneNodeAnimatorFlyStraight(
        glitch::scene::CSceneNodeAnimatorFlyStraight *this)
{
  glitch::scene::CSceneNodeAnimatorFlyStraight::~CSceneNodeAnimatorFlyStraight((glitch::scene::CSceneNodeAnimatorFlyStraight *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6cc754 glitch::scene::CSceneNodeAnimatorFollowSpline::getType(void) =====
int __fastcall glitch::scene::CSceneNodeAnimatorFollowSpline::getType(
        glitch::scene::CSceneNodeAnimatorFollowSpline *this)
{
  return 2;
}


// ===== 6cc75c `global constructor keyed to'.._source_glitch_scene_CSceneNodeAnimatorFollowSpline.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CSceneNodeAnimatorFollowSpline.cpp()
{
  dword_9F7E78 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7E74 = 1056964608;
}


// ===== 6cc77c `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorFollowSpline::~CSceneNodeAnimatorFollowSpline() =====
void __fastcall `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorFollowSpline::~CSceneNodeAnimatorFollowSpline(
        glitch::scene::CSceneNodeAnimatorFollowSpline *this)
{
  glitch::scene::CSceneNodeAnimatorFollowSpline::~CSceneNodeAnimatorFollowSpline((glitch::scene::CSceneNodeAnimatorFollowSpline *)((char *)this - 4));
}


// ===== 6cc784 glitch::scene::CSceneNodeAnimatorFollowSpline::~CSceneNodeAnimatorFollowSpline() =====
void __fastcall glitch::scene::CSceneNodeAnimatorFollowSpline::~CSceneNodeAnimatorFollowSpline(
        glitch::scene::CSceneNodeAnimatorFollowSpline *this)
{
  void *v2; // r0

  v2 = *((void **)this + 3);
  *(_DWORD *)this = off_98989C;
  *((_DWORD *)this + 9) = off_989914;
  *((_DWORD *)this + 1) = off_9898F8;
  if ( v2 )
    GlitchFree(v2);
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(this, (int *)off_989924);
}


// ===== 6cc7ec `virtual thunk to'glitch::scene::CSceneNodeAnimatorFollowSpline::~CSceneNodeAnimatorFollowSpline() =====
void __fastcall `virtual thunk to'glitch::scene::CSceneNodeAnimatorFollowSpline::~CSceneNodeAnimatorFollowSpline(
        glitch::scene::CSceneNodeAnimatorFollowSpline *this)
{
  glitch::scene::CSceneNodeAnimatorFollowSpline::~CSceneNodeAnimatorFollowSpline((glitch::scene::CSceneNodeAnimatorFollowSpline *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6cc7fc `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorFollowSpline::~CSceneNodeAnimatorFollowSpline() =====
void __fastcall `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorFollowSpline::~CSceneNodeAnimatorFollowSpline(
        glitch::scene::CSceneNodeAnimatorFollowSpline *this)
{
  glitch::scene::CSceneNodeAnimatorFollowSpline::~CSceneNodeAnimatorFollowSpline((glitch::scene::CSceneNodeAnimatorFollowSpline *)((char *)this - 4));
}


// ===== 6cc804 glitch::scene::CSceneNodeAnimatorFollowSpline::~CSceneNodeAnimatorFollowSpline() =====
void __fastcall glitch::scene::CSceneNodeAnimatorFollowSpline::~CSceneNodeAnimatorFollowSpline(
        glitch::scene::CSceneNodeAnimatorFollowSpline *this)
{
  glitch::scene::CSceneNodeAnimatorFollowSpline::~CSceneNodeAnimatorFollowSpline(this);
  LC_API_FREE_0(this);
}


// ===== 6cc820 `virtual thunk to'glitch::scene::CSceneNodeAnimatorFollowSpline::~CSceneNodeAnimatorFollowSpline() =====
void __fastcall `virtual thunk to'glitch::scene::CSceneNodeAnimatorFollowSpline::~CSceneNodeAnimatorFollowSpline(
        glitch::scene::CSceneNodeAnimatorFollowSpline *this)
{
  glitch::scene::CSceneNodeAnimatorFollowSpline::~CSceneNodeAnimatorFollowSpline((glitch::scene::CSceneNodeAnimatorFollowSpline *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6cc830 glitch::scene::CSceneNodeAnimatorFollowSpline::animateNode(glitch::scene::ISceneNode *,uint) =====
int __fastcall glitch::scene::CSceneNodeAnimatorFollowSpline::animateNode(
        int this,
        glitch::scene::ISceneNode *a2,
        unsigned int a3)
{
  int v3; // r4
  int v4; // r5
  int v6; // r8
  float v7; // r7
  float v8; // r0
  float v9; // r7
  signed int v10; // r1
  int v11; // r3
  unsigned int v12; // r3
  int v13; // r12
  int v14; // r3
  int v15; // r9
  int v16; // r2
  int v17; // r3
  int v18; // r10
  float v19; // r8
  float v20; // r0
  float v21; // r7
  float v22; // r11
  float v23; // r5
  float v24; // r9
  float v25; // r0
  float v26; // [sp+4h] [bp-38h]
  float v27; // [sp+4h] [bp-38h]
  float v28; // [sp+4h] [bp-38h]
  float v29; // [sp+8h] [bp-34h]
  float *v30; // [sp+Ch] [bp-30h]
  float v31; // [sp+10h] [bp-2Ch]
  int v32; // [sp+14h] [bp-28h]
  int v33; // [sp+18h] [bp-24h]
  int (__fastcall *v34)(glitch::scene::ISceneNode *, float *); // [sp+24h] [bp-18h]
  float v35[4]; // [sp+2Ch] [bp-10h] BYREF

  v3 = *(_DWORD *)(this + 12);
  v4 = this;
  v6 = -1431655765 * ((*(_DWORD *)(this + 16) - v3) >> 2);
  if ( v6 )
  {
    if ( v6 == 1 )
    {
      return (*(int (__fastcall **)(glitch::scene::ISceneNode *, int, unsigned int))(*(_DWORD *)a2 + 164))(a2, v3, a3);
    }
    else
    {
      v7 = (float)((float)(a3 - *(_DWORD *)(this + 32)) * *(float *)(this + 24)) * 0.001;
      v8 = floorf(v7);
      v9 = v7 - v8;
      v10 = (int)v8 % (unsigned int)v6;
      v11 = v10 - 1;
      if ( v10 - 1 >= 0 )
      {
        if ( v11 >= v6 )
          v11 -= v6;
      }
      else
      {
        v11 += v6;
      }
      v33 = 12 * v11;
      v32 = v3 + 12 * v11;
      if ( v10 >= 0 )
      {
        if ( v10 >= v6 )
          v12 = v10 - v6;
        else
          v12 = (int)v8 % (unsigned int)v6;
      }
      else
      {
        v12 = v10 + v6;
      }
      v13 = 12 * v12;
      v14 = v10 + 1;
      v15 = v3 + v13;
      if ( v10 + 1 >= 0 )
      {
        if ( v14 >= v6 )
          v14 -= v6;
      }
      else
      {
        v14 += v6;
      }
      v16 = 12 * v14;
      v17 = v10 + 2;
      v18 = v3 + v16;
      if ( v10 + 2 >= 0 )
      {
        if ( v17 >= v6 )
          v17 -= v6;
      }
      else
      {
        v17 += v6;
      }
      v19 = (float)((float)((float)((float)(v9 + v9) * v9) * v9) + (float)((float)(v9 * -3.0) * v9)) + 1.0;
      v31 = (float)((float)((float)(v9 * -2.0) * v9) * v9) + (float)((float)(v9 * 3.0) * v9);
      v26 = v9 * v9;
      v20 = (float)(v9 * v9) * v9;
      v21 = (float)((float)((float)(v9 * -2.0) * v9) + v20) + v9;
      v22 = v20 - v26;
      v27 = *(float *)(v15 + 4);
      v34 = *(int (__fastcall **)(glitch::scene::ISceneNode *, float *))(*(_DWORD *)a2 + 164);
      v23 = *(float *)(v4 + 28);
      v30 = (float *)(v3 + 12 * v17);
      v24 = *(float *)(v15 + 8);
      v28 = (float)((float)((float)(v19 * v27) + (float)(v31 * *(float *)(v18 + 4)))
                  + (float)(v21 * (float)(v23 * (float)(*(float *)(v18 + 4) - *(float *)(v32 + 4)))))
          + (float)(v22 * (float)(v23 * (float)(v30[1] - v27)));
      v29 = (float)((float)(v19 * v24) + (float)(v31 * *(float *)(v18 + 8)))
          + (float)(v21 * (float)(v23 * (float)(*(float *)(v18 + 8) - *(float *)(v32 + 8))));
      v25 = v30[2] - v24;
      v35[0] = (float)((float)((float)(v19 * *(float *)(v3 + v13)) + (float)(v31 * *(float *)(v3 + v16)))
                     + (float)(v21 * (float)(v23 * (float)(*(float *)(v3 + v16) - *(float *)(v3 + v33)))))
             + (float)(v22 * (float)(v23 * (float)(*v30 - *(float *)(v3 + v13))));
      v35[1] = v28;
      v35[2] = v29 + (float)(v22 * (float)(v23 * v25));
      return v34(a2, v35);
    }
  }
  return this;
}


// ===== 6cccc0 glitch::scene::CSceneNodeAnimatorFollowSpline::CSceneNodeAnimatorFollowSpline(uint,std::vector<glitch::core::vector3d<float>,glitch::core::SAllocator<glitch::core::vector3d<float>,(glitch::memory::E_MEMORY_HINT)0>> const&,float,float) =====
glitch::IObject *__fastcall glitch::scene::CSceneNodeAnimatorFollowSpline::CSceneNodeAnimatorFollowSpline(
        glitch::IObject *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int a5)
{
  *((_DWORD *)a1 + 10) = 1;
  *(_DWORD *)a1 = off_9899C4;
  *((_DWORD *)a1 + 9) = off_95B720;
  *(int *)((char *)&dword_24 + (_DWORD)a1) = (int)off_9899E4;
  *((_DWORD *)a1 + 1) = off_95C300;
  glitch::IObject::IObject(a1);
  *(_DWORD *)a1 = off_989944;
  *(int *)((char *)&dword_24 + (_DWORD)a1) = (int)off_9899A8;
  *((_DWORD *)a1 + 2) = 0;
  *(_DWORD *)a1 = off_98989C;
  *((_DWORD *)a1 + 9) = off_989914;
  *((_DWORD *)a1 + 1) = off_9898F8;
  std::vector<glitch::core::vector3d<float>,glitch::core::SAllocator<glitch::core::vector3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::vector(
    (_DWORD *)a1 + 3,
    a3);
  *((_DWORD *)a1 + 6) = a4;
  *((_DWORD *)a1 + 8) = a2;
  *((_DWORD *)a1 + 7) = a5;
  return a1;
}


// ===== 6ccd98 glitch::scene::CSceneNodeAnimatorFollowSpline::createClone(void) =====
glitch::IObject *__fastcall glitch::scene::CSceneNodeAnimatorFollowSpline::createClone(
        glitch::scene::CSceneNodeAnimatorFollowSpline *this)
{
  glitch::IObject *v2; // r4

  v2 = (glitch::IObject *)operator new(0x2Cu, 0);
  glitch::scene::CSceneNodeAnimatorFollowSpline::CSceneNodeAnimatorFollowSpline(
    v2,
    *((_DWORD *)this + 8),
    (_DWORD *)this + 3,
    *((_DWORD *)this + 6),
    *((_DWORD *)this + 7));
  return v2;
}


// ===== 6ccdd8 glitch::scene::CSceneNodeAnimatorFollowSpline::CSceneNodeAnimatorFollowSpline(uint,std::vector<glitch::core::vector3d<float>,glitch::core::SAllocator<glitch::core::vector3d<float>,(glitch::memory::E_MEMORY_HINT)0>> const&,float,float) =====
glitch::IObject *__fastcall glitch::scene::CSceneNodeAnimatorFollowSpline::CSceneNodeAnimatorFollowSpline(
        glitch::IObject *a1,
        int *a2,
        int a3,
        _DWORD *a4,
        int a5,
        int a6)
{
  _DWORD *v6; // r7
  int v7; // r12
  int v12; // r2
  int v13; // r2

  v6 = a2 + 1;
  v7 = a2[2];
  *(_DWORD *)a1 = v7;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(v7 - 12)) = a2[3];
  *((_DWORD *)a1 + 1) = off_95C300;
  glitch::IObject::IObject(a1);
  v12 = a2[1];
  *(_DWORD *)a1 = v12;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(v12 - 12)) = v6[3];
  *((_DWORD *)a1 + 1) = off_976CF0;
  *((_DWORD *)a1 + 2) = 0;
  v13 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(v13 - 12)) = a2[5];
  *((_DWORD *)a1 + 1) = off_9898F8;
  std::vector<glitch::core::vector3d<float>,glitch::core::SAllocator<glitch::core::vector3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::vector(
    (_DWORD *)a1 + 3,
    a4);
  *((_DWORD *)a1 + 6) = a5;
  *((_DWORD *)a1 + 8) = a3;
  *((_DWORD *)a1 + 7) = a6;
  return a1;
}


// ===== 6ccea8 std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(char const*,char const*) [clone] =====
_BYTE *__fastcall std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
        _DWORD *a1,
        char *a2)
{
  size_t v4; // r4
  _BYTE *result; // r0

  v4 = a2 - "Point";
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    a1,
    a2 - "Point" + 1);
  result = (_BYTE *)a1[5];
  if ( a2 != "Point" )
    result = (char *)memcpy(result, "Point", v4) + v4;
  a1[4] = result;
  *result = 0;
  return result;
}


// ===== 6ccef8 glitch::scene::CSceneNodeAnimatorFollowSpline::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void *__fastcall glitch::scene::CSceneNodeAnimatorFollowSpline::serializeAttributes(_DWORD *a1, int a2, _DWORD *a3)
{
  void *result; // r0
  int v7; // r11
  int v8; // r8
  char v9; // r10
  unsigned int i; // r5
  int v11; // r2
  int v12; // r3
  void (__fastcall *v13)(int, void *, int *, _DWORD); // r12
  bool v14; // cc
  int v15; // [sp+10h] [bp-2Ch] BYREF
  int v16; // [sp+14h] [bp-28h]
  int v17; // [sp+18h] [bp-24h]
  void *v18[5]; // [sp+1Ch] [bp-20h] BYREF
  void *p; // [sp+30h] [bp-Ch]

  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "Speed", a1[6], 0);
  result = (void *)(*(int (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(
                     a2,
                     "Tightness",
                     a1[7],
                     0);
  v7 = -1431655765 * ((a1[4] - a1[3]) >> 2);
  if ( a3 && (*a3 & 2) != 0 )
    ++v7;
  if ( v7 )
  {
    v8 = 0;
    v9 = 1;
    for ( i = 0; i != v7; ++i )
    {
      v18[4] = v18;
      p = v18;
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
        v18,
        "");
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        v18,
        (_DWORD *)v9);
      v11 = a1[3];
      v12 = (a1[4] - v11) >> 2;
      v13 = *(void (__fastcall **)(int, void *, int *, _DWORD))(*(_DWORD *)a2 + 424);
      v14 = -1431655765 * v12 > i;
      if ( -1431655765 * v12 <= i )
      {
        v15 = 0;
      }
      else
      {
        v12 = *(_DWORD *)(v11 + v8);
        v11 += v8;
      }
      if ( v14 )
      {
        v15 = v12;
        v12 = *(_DWORD *)(v11 + 4);
      }
      else
      {
        v16 = 0;
        v17 = 0;
      }
      if ( v14 )
      {
        v16 = v12;
        v17 = *(_DWORD *)(v11 + 8);
      }
      v13(a2, p, &v15, 0);
      result = p;
      if ( p != v18 )
      {
        if ( p )
          GlitchFree(p);
      }
      ++v9;
      v8 += 12;
    }
  }
  return result;
}


// ===== 6cd0cc glitch::scene::CSceneNodeAnimatorFollowSpline::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void __fastcall glitch::scene::CSceneNodeAnimatorFollowSpline::deserializeAttributes(_DWORD *a1, int a2, _DWORD *a3)
{
  int v5; // r0
  int v6; // r3
  int v7; // r2
  char i; // r7
  _DWORD *v9; // r3
  _DWORD *v10; // r11
  float *v11; // r7
  int v12; // r6
  unsigned int v13; // r8
  int v14; // r4
  char *v15; // r3
  char *v16; // r1
  int v17; // r2
  int v18; // r0
  int v19; // r12
  unsigned int v20; // r7
  int v21; // r8
  _DWORD *v22; // r6
  _DWORD *v23; // r2
  int v24; // r3
  int v25; // r1
  int v26; // r0
  unsigned int v27; // r3
  unsigned int v28; // r2
  _DWORD *v29; // r0
  _DWORD *v30; // r2
  _DWORD *v31; // r3
  int v32; // r11
  _DWORD *v33; // lr
  int v34; // r0
  _DWORD *v35; // r1
  int v36; // r12
  _DWORD *v37; // r11
  char *v38; // r0
  char *v39; // r2
  _DWORD *v40; // [sp+4h] [bp-40h]
  int v42; // [sp+14h] [bp-30h]
  int v43; // [sp+18h] [bp-2Ch] BYREF
  int v44; // [sp+1Ch] [bp-28h]
  int v45; // [sp+20h] [bp-24h]
  void *v46[5]; // [sp+24h] [bp-20h] BYREF
  void *p; // [sp+38h] [bp-Ch]

  a1[6] = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 112))(a2, "Speed");
  v5 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 112))(a2, "Tightness");
  v6 = a1[3];
  v7 = a1[4];
  a1[7] = v5;
  if ( v6 != v7 )
    a1[4] = v6;
  for ( i = 1; ; ++i )
  {
    v46[4] = v46;
    p = v46;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v46,
      "");
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
      v46,
      (_DWORD *)i);
    if ( !(*(int (__fastcall **)(int, void *))(*(_DWORD *)a2 + 36))(a2, p) )
      break;
    (*(void (__fastcall **)(int *, int, void *))(*(_DWORD *)a2 + 436))(&v43, a2, p);
    v9 = (_DWORD *)a1[4];
    v10 = (_DWORD *)a1[5];
    if ( v9 == v10 )
    {
      v27 = -1431655765 * (((int)v10 - a1[3]) >> 2);
      if ( v27 )
        v28 = 1431655766 * (((int)v10 - a1[3]) >> 2);
      else
        v28 = 1;
      if ( v28 > 0x15555555 || v27 > v28 )
      {
        v42 = -1;
        v29 = GlitchAlloc(0xFFFFFFFC, 0);
      }
      else
      {
        v42 = 3 * v28;
        v29 = GlitchAlloc(12 * v28, 0);
      }
      v30 = (_DWORD *)a1[3];
      v31 = v29;
      v32 = v10 - v30;
      if ( -1431655765 * v32 > 0 )
      {
        v34 = -1431655765 * v32;
        v35 = v31;
        do
        {
          --v34;
          *v35 = *v30;
          v35[1] = v30[1];
          v36 = v30[2];
          v30 += 3;
          v35[2] = v36;
          v35 += 3;
        }
        while ( v34 );
        v33 = &v31[v32];
      }
      else
      {
        v33 = v29;
      }
      v37 = v33 + 3;
      *v33 = v43;
      v33[1] = v44;
      v33[2] = v45;
      v38 = (char *)a1[4];
      v39 = (char *)a1[3];
      if ( v38 != v39 )
        v38 += -12 * ((715827883 * ((unsigned int)(v38 - 12 - v39) >> 2)) & 0x3FFFFFFF) - 12;
      v40 = v31;
      GlitchFree(v38);
      a1[4] = v37;
      a1[3] = v40;
      a1[5] = &v40[v42];
    }
    else
    {
      *v9 = v43;
      v9[1] = v44;
      v9[2] = v45;
      a1[4] += 12;
    }
    if ( p != v46 )
    {
      if ( p )
        GlitchFree(p);
    }
  }
  if ( p != v46 && p )
    GlitchFree(p);
  if ( a3 )
  {
    if ( (*a3 & 2) != 0 )
    {
      v11 = (float *)a1[4];
      v12 = a1[3];
      v13 = -1431655765 * (((int)v11 - v12) >> 2);
      if ( v13 > 2 )
      {
        v14 = (int)(v11 - 3);
        if ( *(v11 - 3) == 0.0 && *(v11 - 2) == 0.0 && *(v11 - 1) == 0.0 )
        {
          v15 = (char *)(v12 + 12 * (v13 - 1));
          v16 = v15 + 12;
          if ( v11 != (float *)(v15 + 12) )
          {
            v17 = -1431655765 * (((char *)v11 - v16) >> 2);
            if ( v17 > 0 )
            {
              while ( 1 )
              {
                v18 = *((_DWORD *)v15 + 4);
                v19 = *((_DWORD *)v15 + 5);
                --v17;
                *(_DWORD *)v15 = *((_DWORD *)v15 + 3);
                *((_DWORD *)v15 + 2) = v19;
                *((_DWORD *)v15 + 1) = v18;
                v15 = v16;
                if ( !v17 )
                  break;
                v16 += 12;
              }
              v12 = a1[3];
              v14 = a1[4] - 12;
            }
          }
          a1[4] = v14;
          v20 = -1431655765 * ((v14 - v12) >> 2);
          if ( v20 > 2 )
          {
            v21 = v14 - 12;
            if ( *(float *)(v14 - 12) == 0.0 && *(float *)(v14 - 8) == 0.0 && *(float *)(v14 - 4) == 0.0 )
            {
              v22 = (_DWORD *)(v12 + 12 * (v20 - 1));
              v23 = v22 + 3;
              if ( (_DWORD *)v14 != v22 + 3 )
              {
                v24 = -1431655765 * ((v14 - (int)v23) >> 2);
                if ( v24 > 0 )
                {
                  while ( 1 )
                  {
                    v25 = v22[4];
                    v26 = v22[5];
                    --v24;
                    *v22 = v22[3];
                    v22[2] = v26;
                    v22[1] = v25;
                    v22 = v23;
                    if ( !v24 )
                      break;
                    v23 += 3;
                  }
                  v21 = a1[4] - 12;
                }
              }
              a1[4] = v21;
            }
          }
        }
      }
    }
  }
}


// ===== 6cd58c glitch::scene::CSceneNodeAnimatorRotation::getType(void) =====
int __fastcall glitch::scene::CSceneNodeAnimatorRotation::getType(glitch::scene::CSceneNodeAnimatorRotation *this)
{
  return 3;
}


// ===== 6cd594 glitch::scene::CSceneNodeAnimatorRotation::animateNode(glitch::scene::ISceneNode *,uint) =====
int __fastcall glitch::scene::CSceneNodeAnimatorRotation::animateNode(
        int this,
        glitch::scene::ISceneNode *a2,
        unsigned int a3)
{
  int v4; // r4
  unsigned int v6; // r7
  float *v7; // r0
  float v8; // r1
  float v9; // r2
  float v10; // r3
  float v11; // r0
  float v12; // r11
  float v13; // r9
  float v14; // r10
  float v15; // r0
  float v16; // [sp+0h] [bp-14h] BYREF
  float v17; // [sp+4h] [bp-10h]
  float v18; // [sp+8h] [bp-Ch]
  float v19; // [sp+Ch] [bp-8h]

  v4 = this;
  if ( a2 )
  {
    v6 = a3 - *(_DWORD *)(this + 28);
    if ( v6 )
    {
      v7 = (float *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 152))(a2);
      v8 = v7[1];
      v9 = v7[2];
      v10 = v7[3];
      v16 = *v7;
      v17 = v8;
      v18 = v9;
      v19 = v10;
      v11 = (float)v6 / 10.0;
      v12 = (float)(v11 * *(float *)(v4 + 16)) + v8;
      v13 = (float)(v11 * *(float *)(v4 + 20)) + v9;
      v14 = (float)(v11 * *(float *)(v4 + 24)) + v10;
      v15 = v11 * *(float *)(v4 + 12);
      v17 = v12;
      v16 = v16 + v15;
      v18 = v13;
      v19 = v14;
      this = (*(int (__fastcall **)(glitch::scene::ISceneNode *, float *))(*(_DWORD *)a2 + 156))(a2, &v16);
      *(_DWORD *)(v4 + 28) = a3;
    }
  }
  return this;
}


// ===== 6cd678 glitch::scene::CSceneNodeAnimatorRotation::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CSceneNodeAnimatorRotation::serializeAttributes(_DWORD *a1, int a2)
{
  return (*(int (__fastcall **)(int, const char *, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD))(*(_DWORD *)a2 + 544))(
           a2,
           "Rotation",
           a1[3],
           a1[4],
           a1[5],
           a1[6],
           0);
}


// ===== 6cd6c8 glitch::scene::CSceneNodeAnimatorRotation::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CSceneNodeAnimatorRotation::deserializeAttributes(_DWORD *a1, int a2)
{
  int v3; // r3
  int v4; // r2
  int result; // r0
  _DWORD v6[4]; // [sp+0h] [bp-10h] BYREF

  (*(void (__fastcall **)(_DWORD *))(*(_DWORD *)a2 + 556))(v6);
  v3 = v6[2];
  v4 = v6[3];
  result = v6[0];
  a1[4] = v6[1];
  a1[6] = v4;
  a1[3] = result;
  a1[5] = v3;
  return result;
}


// ===== 6cd718 `global constructor keyed to'.._source_glitch_scene_CSceneNodeAnimatorRotation.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CSceneNodeAnimatorRotation.cpp()
{
  dword_9F7E84 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7E80 = 1056964608;
}


// ===== 6cd738 `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorRotation::~CSceneNodeAnimatorRotation() =====
void __fastcall `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorRotation::~CSceneNodeAnimatorRotation(
        glitch::scene::CSceneNodeAnimatorRotation *this)
{
  glitch::scene::CSceneNodeAnimatorRotation::~CSceneNodeAnimatorRotation((glitch::scene::CSceneNodeAnimatorRotation *)((char *)this - 4));
}


// ===== 6cd740 glitch::scene::CSceneNodeAnimatorRotation::~CSceneNodeAnimatorRotation() =====
void __fastcall glitch::scene::CSceneNodeAnimatorRotation::~CSceneNodeAnimatorRotation(
        glitch::scene::CSceneNodeAnimatorRotation *this)
{
  *(_DWORD *)this = off_9899FC;
  *((_DWORD *)this + 8) = off_989A74;
  *((_DWORD *)this + 1) = off_989A58;
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(this, (int *)off_989A84);
}


// ===== 6cd794 `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorRotation::~CSceneNodeAnimatorRotation() =====
void __fastcall `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorRotation::~CSceneNodeAnimatorRotation(
        glitch::scene::CSceneNodeAnimatorRotation *this)
{
  glitch::scene::CSceneNodeAnimatorRotation::~CSceneNodeAnimatorRotation((glitch::scene::CSceneNodeAnimatorRotation *)((char *)this - 4));
}


// ===== 6cd79c glitch::scene::CSceneNodeAnimatorRotation::~CSceneNodeAnimatorRotation() =====
void __fastcall glitch::scene::CSceneNodeAnimatorRotation::~CSceneNodeAnimatorRotation(
        glitch::scene::CSceneNodeAnimatorRotation *this)
{
  glitch::scene::CSceneNodeAnimatorRotation::~CSceneNodeAnimatorRotation(this);
  LC_API_FREE_0(this);
}


// ===== 6cd7b8 glitch::scene::CSceneNodeAnimatorRotation::~CSceneNodeAnimatorRotation() =====
void __fastcall glitch::scene::CSceneNodeAnimatorRotation::~CSceneNodeAnimatorRotation(
        glitch::scene::CSceneNodeAnimatorRotation *this,
        int *a2)
{
  int v2; // r12

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[5];
  *((_DWORD *)this + 1) = off_989A58;
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(this, a2 + 1);
}


// ===== 6cd804 glitch::scene::CSceneNodeAnimatorRotation::CSceneNodeAnimatorRotation(uint,glitch::core::quaternion const&) =====
glitch::IObject *__fastcall glitch::scene::CSceneNodeAnimatorRotation::CSceneNodeAnimatorRotation(
        glitch::IObject *a1,
        int a2,
        _DWORD *a3)
{
  int v6; // r1
  int v7; // r2
  int v8; // r3

  *((_DWORD *)a1 + 9) = 1;
  *(_DWORD *)a1 = off_989B24;
  *((_DWORD *)a1 + 8) = off_95B720;
  *(int *)((char *)&dword_20 + (_DWORD)a1) = (int)off_989B44;
  *((_DWORD *)a1 + 1) = off_95C300;
  glitch::IObject::IObject(a1);
  *(_DWORD *)a1 = off_989AA4;
  *(int *)((char *)&dword_20 + (_DWORD)a1) = (int)off_989B08;
  *((_DWORD *)a1 + 2) = 0;
  *(_DWORD *)a1 = off_9899FC;
  *((_DWORD *)a1 + 8) = off_989A74;
  *((_DWORD *)a1 + 1) = off_989A58;
  v6 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  *((_DWORD *)a1 + 3) = *a3;
  *((_DWORD *)a1 + 4) = v6;
  *((_DWORD *)a1 + 5) = v7;
  *((_DWORD *)a1 + 6) = v8;
  *((_DWORD *)a1 + 7) = a2;
  return a1;
}


// ===== 6cd8cc glitch::scene::CSceneNodeAnimatorRotation::createClone(void) =====
glitch::IObject *__fastcall glitch::scene::CSceneNodeAnimatorRotation::createClone(
        glitch::scene::CSceneNodeAnimatorRotation *this)
{
  glitch::IObject *v2; // r5

  v2 = (glitch::IObject *)operator new(0x28u, 0);
  glitch::scene::CSceneNodeAnimatorRotation::CSceneNodeAnimatorRotation(v2, *((_DWORD *)this + 7), (_DWORD *)this + 3);
  return v2;
}


// ===== 6cd8f8 glitch::scene::CSceneNodeAnimatorRotation::CSceneNodeAnimatorRotation(uint,glitch::core::quaternion const&) =====
glitch::IObject *__fastcall glitch::scene::CSceneNodeAnimatorRotation::CSceneNodeAnimatorRotation(
        glitch::IObject *a1,
        int *a2,
        int a3,
        _DWORD *a4)
{
  _DWORD *v4; // r8
  int v5; // r12
  int v10; // r2
  int v11; // r2
  int v12; // r1
  int v13; // r2
  int v14; // r3

  v4 = a2 + 1;
  v5 = a2[2];
  *(_DWORD *)a1 = v5;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(v5 - 12)) = a2[3];
  *((_DWORD *)a1 + 1) = off_95C300;
  glitch::IObject::IObject(a1);
  v10 = a2[1];
  *(_DWORD *)a1 = v10;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(v10 - 12)) = v4[3];
  *((_DWORD *)a1 + 1) = off_976CF0;
  *((_DWORD *)a1 + 2) = 0;
  v11 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(v11 - 12)) = a2[5];
  *((_DWORD *)a1 + 1) = off_989A58;
  v12 = a4[1];
  v13 = a4[2];
  v14 = a4[3];
  *((_DWORD *)a1 + 3) = *a4;
  *((_DWORD *)a1 + 4) = v12;
  *((_DWORD *)a1 + 5) = v13;
  *((_DWORD *)a1 + 6) = v14;
  *((_DWORD *)a1 + 7) = a3;
  return a1;
}


// ===== 6cd9b8 `virtual thunk to'glitch::scene::CSceneNodeAnimatorRotation::~CSceneNodeAnimatorRotation() =====
void __fastcall `virtual thunk to'glitch::scene::CSceneNodeAnimatorRotation::~CSceneNodeAnimatorRotation(
        glitch::scene::CSceneNodeAnimatorRotation *this)
{
  glitch::scene::CSceneNodeAnimatorRotation::~CSceneNodeAnimatorRotation((glitch::scene::CSceneNodeAnimatorRotation *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6cd9c8 `virtual thunk to'glitch::scene::CSceneNodeAnimatorRotation::~CSceneNodeAnimatorRotation() =====
void __fastcall `virtual thunk to'glitch::scene::CSceneNodeAnimatorRotation::~CSceneNodeAnimatorRotation(
        glitch::scene::CSceneNodeAnimatorRotation *this)
{
  glitch::scene::CSceneNodeAnimatorRotation::~CSceneNodeAnimatorRotation((glitch::scene::CSceneNodeAnimatorRotation *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6cd9d8 glitch::scene::CSceneNodeAnimatorTexture::getType(void) =====
int __fastcall glitch::scene::CSceneNodeAnimatorTexture::getType(glitch::scene::CSceneNodeAnimatorTexture *this)
{
  return 4;
}


// ===== 6cd9e0 glitch::scene::CSceneNodeAnimatorTexture::clearTextures(void) =====
glitch::IReferenceCounted *__fastcall glitch::scene::CSceneNodeAnimatorTexture::clearTextures(
        glitch::IReferenceCounted *this)
{
  int v1; // r3
  glitch::IReferenceCounted *v2; // r5
  unsigned int v3; // r4

  v1 = *((_DWORD *)this + 3);
  v2 = this;
  if ( (unsigned int)(*((_DWORD *)this + 4) - v1) >> 2 )
  {
    v3 = 0;
    do
    {
      this = *(glitch::IReferenceCounted **)(v1 + 4 * v3);
      *(_DWORD *)(v1 + 4 * v3++) = 0;
      if ( this )
        this = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(this);
      v1 = *((_DWORD *)v2 + 3);
    }
    while ( v3 < (*((_DWORD *)v2 + 4) - v1) >> 2 );
  }
  return this;
}


// ===== 6cda34 glitch::scene::CSceneNodeAnimatorTexture::updateTime(uint) =====
void __fastcall glitch::scene::CSceneNodeAnimatorTexture::updateTime(
        glitch::scene::CSceneNodeAnimatorTexture *this,
        unsigned int a2)
{
  ;
}


// ===== 6cda38 `global constructor keyed to'.._source_glitch_scene_CSceneNodeAnimatorTexture.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CSceneNodeAnimatorTexture.cpp()
{
  dword_9F7E90 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7E8C = 1056964608;
}


// ===== 6cda58 glitch::scene::CSceneNodeAnimatorTexture::animateNode(glitch::scene::ISceneNode *,uint) =====
int __fastcall glitch::scene::CSceneNodeAnimatorTexture::animateNode(
        int this,
        glitch::scene::ISceneNode *a2,
        unsigned int a3)
{
  _DWORD *v3; // r5
  unsigned int v4; // r4
  int v6; // r3
  unsigned int v7; // r0
  int v8; // r1
  unsigned int v9; // r7
  unsigned int ParameterID; // r0
  glitch::video::CMaterial *v11[2]; // [sp+4h] [bp-8h] BYREF

  v3 = (_DWORD *)this;
  v4 = (*(_DWORD *)(this + 16) - *(_DWORD *)(this + 12)) >> 2;
  if ( v4 )
  {
    v6 = *(unsigned __int8 *)(this + 36);
    this = *(_DWORD *)(this + 28);
    if ( v6 || a3 < v3[8] )
    {
      v7 = (a3 - this) / v3[6];
      v8 = v7 % v4;
      this = v7 / v4;
      v9 = v8;
    }
    else
    {
      v9 = v4 - 1;
    }
    if ( v9 < v4 )
    {
      (*(void (__fastcall **)(glitch::video::CMaterial **, glitch::scene::ISceneNode *, _DWORD))(*(_DWORD *)a2 + 132))(
        v11,
        a2,
        0);
      ParameterID = glitch::video::CMaterialRenderer::getParameterID(*((_DWORD *)v11[0] + 1), 2, 0);
      glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
        (_DWORD *)v11[0],
        ParameterID,
        0,
        (int *)(v3[3] + 4 * v9));
      return (int)boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v11);
    }
  }
  return this;
}


// ===== 6cdb18 `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorTexture::~CSceneNodeAnimatorTexture() =====
void __fastcall `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorTexture::~CSceneNodeAnimatorTexture(
        glitch::scene::CSceneNodeAnimatorTexture *this)
{
  glitch::scene::CSceneNodeAnimatorTexture::~CSceneNodeAnimatorTexture((glitch::scene::CSceneNodeAnimatorTexture *)((char *)this - 4));
}


// ===== 6cdb20 glitch::scene::CSceneNodeAnimatorTexture::~CSceneNodeAnimatorTexture() =====
void __fastcall glitch::scene::CSceneNodeAnimatorTexture::~CSceneNodeAnimatorTexture(
        glitch::scene::CSceneNodeAnimatorTexture *this)
{
  *((_DWORD *)this + 10) = off_989BD4;
  *(_DWORD *)this = off_989B5C;
  *((_DWORD *)this + 1) = off_989BB8;
  glitch::scene::CSceneNodeAnimatorTexture::clearTextures(this);
  std::vector<boost::intrusive_ptr<glitch::video::ITexture>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 3);
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(this, (int *)off_989BE4);
}


// ===== 6cdb80 `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorTexture::~CSceneNodeAnimatorTexture() =====
void __fastcall `non-virtual thunk to'glitch::scene::CSceneNodeAnimatorTexture::~CSceneNodeAnimatorTexture(
        glitch::scene::CSceneNodeAnimatorTexture *this)
{
  glitch::scene::CSceneNodeAnimatorTexture::~CSceneNodeAnimatorTexture((glitch::scene::CSceneNodeAnimatorTexture *)((char *)this - 4));
}


// ===== 6cdb88 glitch::scene::CSceneNodeAnimatorTexture::~CSceneNodeAnimatorTexture() =====
void __fastcall glitch::scene::CSceneNodeAnimatorTexture::~CSceneNodeAnimatorTexture(
        glitch::scene::CSceneNodeAnimatorTexture *this)
{
  glitch::scene::CSceneNodeAnimatorTexture::~CSceneNodeAnimatorTexture(this);
  LC_API_FREE_0(this);
}


// ===== 6cdba4 glitch::scene::CSceneNodeAnimatorTexture::~CSceneNodeAnimatorTexture() =====
void __fastcall glitch::scene::CSceneNodeAnimatorTexture::~CSceneNodeAnimatorTexture(
        glitch::scene::CSceneNodeAnimatorTexture *this,
        int *a2)
{
  int v3; // r1

  v3 = *a2;
  *(_DWORD *)this = v3;
  *(_DWORD *)((char *)this + *(_DWORD *)(v3 - 12)) = a2[5];
  *((_DWORD *)this + 1) = off_989BB8;
  glitch::scene::CSceneNodeAnimatorTexture::clearTextures(this);
  std::vector<boost::intrusive_ptr<glitch::video::ITexture>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 3);
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(this, a2 + 1);
}


// ===== 6cdc04 std::vector<boost::intrusive_ptr<glitch::video::ITexture>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(boost::intrusive_ptr<glitch::video::ITexture>*,boost::intrusive_ptr<glitch::video::ITexture> const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<boost::intrusive_ptr<glitch::video::ITexture>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        void **a1,
        int a2,
        int *a3)
{
  unsigned int v6; // r3
  unsigned int v7; // r6
  size_t v8; // r6
  _DWORD *v9; // r0
  int v10; // r2
  char *v11; // r12
  _DWORD *v12; // r8
  int v13; // r5
  int *v14; // r5
  int v15; // r1
  int v16; // r3
  int v17; // r3
  _DWORD *v18; // r6
  bool v19; // zf
  _DWORD *v20; // r5

  v6 = ((_BYTE *)a1[1] - (_BYTE *)*a1) >> 2;
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0x3FFFFFFF || v6 > v7 )
    v8 = -1;
  else
    v8 = v7;
  v9 = GlitchAlloc(v8 * 4, 0);
  v11 = (char *)*a1;
  v12 = v9;
  v13 = (a2 - (int)*a1) >> 2;
  if ( v13 > 0 )
  {
    v15 = v13;
    v10 = 0;
    do
    {
      v16 = *(_DWORD *)&v11[v10];
      *(_DWORD *)((char *)v12 + v10) = v16;
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
    v14 = &v12[v13];
  }
  else
  {
    v14 = v9;
  }
  v17 = *a3;
  v18 = &v12[v8];
  v19 = *a3 == 0;
  *v14 = *a3;
  if ( !v19 )
    v10 = *(_DWORD *)(v17 + 4);
  v20 = v14 + 1;
  if ( !v19 )
    *(_DWORD *)(v17 + 4) = v10 + 1;
  std::vector<boost::intrusive_ptr<glitch::video::ITexture>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move(a1);
  a1[1] = v20;
  a1[2] = v18;
  *a1 = v12;
}


// ===== 6cdcd8 glitch::scene::CSceneNodeAnimatorTexture::CSceneNodeAnimatorTexture(std::vector<boost::intrusive_ptr<glitch::video::ITexture>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>,(glitch::memory::E_MEMORY_HINT)0>> const&,int,bool,uint) =====
int __fastcall glitch::scene::CSceneNodeAnimatorTexture::CSceneNodeAnimatorTexture(
        int a1,
        int *a2,
        int a3,
        char a4,
        int a5)
{
  int v9; // r1
  int v10; // r3
  int v11; // r8
  _DWORD *v12; // r0
  unsigned int v13; // r6
  int v14; // r3
  int v15; // r1
  _DWORD *v16; // r2

  *(_DWORD *)(a1 + 44) = 1;
  *(_DWORD *)a1 = off_989C84;
  *(_DWORD *)(a1 + 40) = off_95B720;
  *(_DWORD *)((char *)&word_28 + a1) = off_989CA4;
  *(_DWORD *)(a1 + 4) = off_95C300;
  glitch::IObject::IObject((glitch::IObject *)a1);
  *(_DWORD *)a1 = off_989C04;
  v9 = 0;
  *(_DWORD *)((char *)&word_28 + a1) = off_989C68;
  *(_DWORD *)(a1 + 24) = a3;
  *(_DWORD *)a1 = off_989B5C;
  *(_DWORD *)(a1 + 40) = off_989BD4;
  *(_DWORD *)(a1 + 4) = off_989BB8;
  *(_BYTE *)(a1 + 36) = a4;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 28) = a5;
  v10 = *a2;
  if ( (a2[1] - *a2) >> 2 )
  {
    v12 = nullptr;
    v13 = 0;
    while ( 1 )
    {
      if ( (_DWORD *)v9 == v12 )
      {
        std::vector<boost::intrusive_ptr<glitch::video::ITexture>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
          (void **)(a1 + 12),
          v9,
          (int *)(v10 + 4 * v13));
        v16 = *(_DWORD **)(a1 + 16);
        v15 = (int)v16;
      }
      else
      {
        v14 = *(_DWORD *)(v10 + 4 * v13);
        *v12 = v14;
        if ( v14 )
          ++*(_DWORD *)(v14 + 4);
        v15 = *(_DWORD *)(a1 + 16) + 4;
        *(_DWORD *)(a1 + 16) = v15;
        v16 = (_DWORD *)v15;
      }
      v10 = *a2;
      ++v13;
      v12 = v16;
      if ( v13 >= (a2[1] - *a2) >> 2 )
        break;
      v9 = *(_DWORD *)(a1 + 20);
    }
    v11 = a3 * ((v15 - *(_DWORD *)(a1 + 12)) >> 2);
  }
  else
  {
    v11 = 0;
  }
  *(_DWORD *)(a1 + 32) = v11 + a5;
  return a1;
}


// ===== 6cde54 glitch::scene::CSceneNodeAnimatorTexture::createClone(void) =====
void *__fastcall glitch::scene::CSceneNodeAnimatorTexture::createClone(glitch::scene::CSceneNodeAnimatorTexture *this)
{
  void *v2; // r4

  v2 = operator new(0x30u, 0);
  glitch::scene::CSceneNodeAnimatorTexture::CSceneNodeAnimatorTexture(
    (int)v2,
    (int *)this + 3,
    *((_DWORD *)this + 6),
    *((_BYTE *)this + 36),
    *((_DWORD *)this + 7));
  return v2;
}


// ===== 6cde94 std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(char const*,char const*) [clone] =====
_BYTE *__fastcall std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
        _DWORD *a1,
        char *a2)
{
  size_t v4; // r4
  _BYTE *result; // r0

  v4 = a2 - "Texture";
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    a1,
    a2 - "Texture" + 1);
  result = (_BYTE *)a1[5];
  if ( a2 != "Texture" )
    result = (char *)memcpy(result, "Texture", v4) + v4;
  a1[4] = result;
  *result = 0;
  return result;
}


// ===== 6cdee4 glitch::scene::CSceneNodeAnimatorTexture::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void *__fastcall glitch::scene::CSceneNodeAnimatorTexture::serializeAttributes(int a1, int a2, _DWORD *a3)
{
  void *result; // r0
  int v7; // r10
  unsigned int v8; // r5
  char v9; // r8
  glitch::IReferenceCounted *v10; // lr
  int v11; // r3
  void *v12; // r1
  int v13; // r0
  void (__fastcall *v14)(int, void *, glitch::IReferenceCounted **, _DWORD); // r12
  glitch::IReferenceCounted *v15; // r3
  glitch::IReferenceCounted *v16; // [sp+8h] [bp-24h] BYREF
  void *v17[5]; // [sp+Ch] [bp-20h] BYREF
  void *p; // [sp+20h] [bp-Ch]

  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
    a2,
    "TimePerFrame",
    *(_DWORD *)(a1 + 24),
    0);
  result = (void *)(*(int (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
                     a2,
                     "Loop",
                     *(unsigned __int8 *)(a1 + 36),
                     0);
  v7 = (*(_DWORD *)(a1 + 16) - *(_DWORD *)(a1 + 12)) >> 2;
  if ( a3 && (*a3 & 2) != 0 )
    ++v7;
  if ( v7 )
  {
    v8 = 0;
    v9 = 1;
    do
    {
      v17[4] = v17;
      p = v17;
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
        v17,
        "");
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        v17,
        (_DWORD *)v9);
      v11 = *(_DWORD *)(a1 + 12);
      v12 = p;
      v13 = *(_DWORD *)(a1 + 16) - v11;
      if ( v8 >= v13 >> 2 )
        v10 = nullptr;
      v14 = *(void (__fastcall **)(int, void *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)a2 + 688);
      if ( v8 < v13 >> 2 )
      {
        v15 = *(glitch::IReferenceCounted **)(v11 + 4 * v8);
        v16 = v15;
        if ( v15 )
          ++*((_DWORD *)v15 + 1);
      }
      else
      {
        v16 = v10;
      }
      v14(a2, v12, &v16, 0);
      if ( v16 )
        glitch::IReferenceCounted::drop(v16);
      result = p;
      if ( p != v17 )
      {
        if ( p )
          GlitchFree(p);
      }
      ++v8;
      ++v9;
    }
    while ( v8 != v7 );
  }
  return result;
}


// ===== 6ce084 glitch::scene::CSceneNodeAnimatorTexture::CSceneNodeAnimatorTexture(std::vector<boost::intrusive_ptr<glitch::video::ITexture>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>,(glitch::memory::E_MEMORY_HINT)0>> const&,int,bool,uint) =====
int __fastcall glitch::scene::CSceneNodeAnimatorTexture::CSceneNodeAnimatorTexture(
        int a1,
        int *a2,
        int *a3,
        int a4,
        char a5,
        int a6)
{
  _DWORD *v6; // r8
  int v7; // r12
  int v12; // r2
  int v13; // r1
  int v14; // r2
  int v15; // r3
  int v16; // r10
  _DWORD *v17; // r0
  unsigned int v18; // r6
  int v19; // r3
  int v20; // r1
  _DWORD *v21; // r2

  v6 = a2 + 1;
  v7 = a2[2];
  *(_DWORD *)a1 = v7;
  *(_DWORD *)(a1 + *(_DWORD *)(v7 - 12)) = a2[3];
  *(_DWORD *)(a1 + 4) = off_95C300;
  glitch::IObject::IObject((glitch::IObject *)a1);
  v12 = a2[1];
  v13 = 0;
  *(_DWORD *)a1 = v12;
  *(_DWORD *)(a1 + *(_DWORD *)(v12 - 12)) = v6[3];
  *(_DWORD *)(a1 + 4) = off_976CF0;
  *(_DWORD *)(a1 + 8) = 0;
  v14 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v14 - 12)) = a2[5];
  *(_DWORD *)(a1 + 24) = a4;
  *(_DWORD *)(a1 + 4) = off_989BB8;
  *(_BYTE *)(a1 + 36) = a5;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 28) = a6;
  v15 = *a3;
  if ( (a3[1] - *a3) >> 2 )
  {
    v17 = nullptr;
    v18 = 0;
    while ( 1 )
    {
      if ( (_DWORD *)v13 == v17 )
      {
        std::vector<boost::intrusive_ptr<glitch::video::ITexture>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
          (void **)(a1 + 12),
          v13,
          (int *)(v15 + 4 * v18));
        v21 = *(_DWORD **)(a1 + 16);
        v20 = (int)v21;
      }
      else
      {
        v19 = *(_DWORD *)(v15 + 4 * v18);
        *v17 = v19;
        if ( v19 )
          ++*(_DWORD *)(v19 + 4);
        v20 = *(_DWORD *)(a1 + 16) + 4;
        *(_DWORD *)(a1 + 16) = v20;
        v21 = (_DWORD *)v20;
      }
      v15 = *a3;
      ++v18;
      v17 = v21;
      if ( v18 >= (a3[1] - *a3) >> 2 )
        break;
      v13 = *(_DWORD *)(a1 + 20);
    }
    v16 = a4 * ((v20 - *(_DWORD *)(a1 + 12)) >> 2);
  }
  else
  {
    v16 = 0;
  }
  *(_DWORD *)(a1 + 32) = v16 + a6;
  return a1;
}


// ===== 6ce1f8 glitch::scene::CSceneNodeAnimatorTexture::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void __fastcall glitch::scene::CSceneNodeAnimatorTexture::deserializeAttributes(int a1, int a2)
{
  char i; // r6
  glitch::IReferenceCounted *v5; // r3
  glitch::IReferenceCounted **v6; // r1
  glitch::IReferenceCounted *v7; // r0
  glitch::IReferenceCounted *v8; // [sp+8h] [bp-24h] BYREF
  void *v9[5]; // [sp+Ch] [bp-20h] BYREF
  void *p; // [sp+20h] [bp-Ch]

  *(_DWORD *)(a1 + 24) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 88))(a2, "TimePerFrame");
  *(_BYTE *)(a1 + 36) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "Loop");
  glitch::scene::CSceneNodeAnimatorTexture::clearTextures((glitch::IReferenceCounted *)a1);
  for ( i = 1; ; ++i )
  {
    v9[4] = v9;
    p = v9;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v9,
      "");
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
      v9,
      (_DWORD *)i);
    if ( !(*(int (__fastcall **)(int, void *))(*(_DWORD *)a2 + 36))(a2, p) )
      break;
    (*(void (__fastcall **)(glitch::IReferenceCounted **, int, void *))(*(_DWORD *)a2 + 700))(&v8, a2, p);
    v5 = v8;
    if ( v8 )
    {
      v6 = *(glitch::IReferenceCounted ***)(a1 + 16);
      if ( v6 == *(glitch::IReferenceCounted ***)(a1 + 20) )
      {
        std::vector<boost::intrusive_ptr<glitch::video::ITexture>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
          (void **)(a1 + 12),
          (int)v6,
          (int *)&v8);
        v7 = v8;
      }
      else
      {
        *v6 = v8;
        ++*((_DWORD *)v5 + 1);
        v7 = v8;
        *(_DWORD *)(a1 + 16) += 4;
      }
      if ( v7 )
        glitch::IReferenceCounted::drop(v7);
    }
    if ( p != v9 )
    {
      if ( p )
        GlitchFree(p);
    }
  }
  if ( p != v9 && p )
    GlitchFree(p);
}


// ===== 6ce39c `virtual thunk to'glitch::scene::CSceneNodeAnimatorTexture::~CSceneNodeAnimatorTexture() =====
void __fastcall `virtual thunk to'glitch::scene::CSceneNodeAnimatorTexture::~CSceneNodeAnimatorTexture(
        glitch::scene::CSceneNodeAnimatorTexture *this)
{
  glitch::scene::CSceneNodeAnimatorTexture::~CSceneNodeAnimatorTexture((glitch::scene::CSceneNodeAnimatorTexture *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6ce3ac `virtual thunk to'glitch::scene::CSceneNodeAnimatorTexture::~CSceneNodeAnimatorTexture() =====
void __fastcall `virtual thunk to'glitch::scene::CSceneNodeAnimatorTexture::~CSceneNodeAnimatorTexture(
        glitch::scene::CSceneNodeAnimatorTexture *this)
{
  glitch::scene::CSceneNodeAnimatorTexture::~CSceneNodeAnimatorTexture((glitch::scene::CSceneNodeAnimatorTexture *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6ce3bc glitch::scene::CSkyBoxSceneNode::getType(void) =====
int __fastcall glitch::scene::CSkyBoxSceneNode::getType(glitch::scene::CSkyBoxSceneNode *this)
{
  return 1601792883;
}


// ===== 6ce3c8 glitch::scene::CSkyBoxSceneNode::getBoundingBox(void) =====
char *__fastcall glitch::scene::CSkyBoxSceneNode::getBoundingBox(glitch::scene::CSkyBoxSceneNode *this)
{
  return (char *)this + 304;
}


// ===== 6ce3d0 glitch::scene::CSkyBoxSceneNode::getMaterial(uint) =====
_DWORD *__fastcall glitch::scene::CSkyBoxSceneNode::getMaterial(_DWORD *this, unsigned int a2, int a3)
{
  _DWORD *v3; // r3

  v3 = *(_DWORD **)(a2 + 4 * a3 + 332);
  *this = v3;
  if ( v3 )
    ++*v3;
  return this;
}


// ===== 6ce3f0 glitch::scene::CSkyBoxSceneNode::getMaterialCount(void) =====
int __fastcall glitch::scene::CSkyBoxSceneNode::getMaterialCount(glitch::scene::CSkyBoxSceneNode *this)
{
  return 6;
}


// ===== 6ce3f8 `global constructor keyed to'.._source_glitch_scene_CSkyBoxSceneNode.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CSkyBoxSceneNode.cpp()
{
  dword_9F7E9C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7E98 = 1056964608;
}


// ===== 6ce418 glitch::scene::CSkyBoxSceneNode::onRegisterSceneNode(void) =====
int __fastcall glitch::scene::CSkyBoxSceneNode::onRegisterSceneNode(glitch::scene::CSkyBoxSceneNode *this)
{
  int v2; // r0
  void (__fastcall *v3)(int, glitch::scene::CSkyBoxSceneNode *, glitch::video::CMaterial **, _DWORD, int, _DWORD, int); // r12
  glitch::video::CMaterial *v5; // [sp+14h] [bp-4h] BYREF

  v2 = *((_DWORD *)this + 68);
  v3 = *(void (__fastcall **)(int, glitch::scene::CSkyBoxSceneNode *, glitch::video::CMaterial **, _DWORD, int, _DWORD, int))(*(_DWORD *)v2 + 36);
  v5 = nullptr;
  v3(v2, this, &v5, 0, 2, 0, 0x7FFFFFFF);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v5);
  return 1;
}


// ===== 6ce46c glitch::video::ITexture::setWrap(glitch::video::E_TEXTURE_CLAMP) [clone] =====
int __fastcall glitch::video::ITexture::setWrap(int result)
{
  unsigned int v1; // r3
  unsigned int v2; // r3
  bool v3; // zf
  __int16 v4; // r2

  v1 = *(_DWORD *)(result + 56);
  if ( ((v1 >> 18) & 7) != 2 )
  {
    v1 = v1 & 0xFFE3FFFF | 0x80000;
    *(_WORD *)(result + 64) |= 0x10u;
    *(_DWORD *)(result + 56) = v1;
  }
  if ( ((v1 >> 21) & 7) != 2 )
  {
    v2 = v1 & 0xFF1FFFFF | 0x400000;
    v3 = (v2 & 0x400000) == 0;
    v4 = *(_WORD *)(result + 64) | 0x20;
    *(_DWORD *)(result + 56) = v2;
    if ( (v2 & 0x400000) == 0 )
      v2 &= 0xF8FFFFFF;
    *(_WORD *)(result + 64) = v4;
    if ( v3 )
    {
      *(_WORD *)(result + 64) = v4 | 0x40;
      *(_DWORD *)(result + 56) = v2 | 0x2000000;
    }
  }
  return result;
}


// ===== 6ce4d4 glitch::video::CVertexStreams::setStream(glitch::video::SVertexStream *,glitch::video::SVertexStreamData const&,bool) [clone] =====
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


// ===== 6ce53c glitch::scene::CSkyBoxSceneNode::render(void *) =====
glitch::IReferenceCounted *__fastcall glitch::scene::CSkyBoxSceneNode::render(
        glitch::IReferenceCounted *this,
        void *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *v3; // r4
  _DWORD *v4; // r5
  _DWORD *v5; // r6
  bool v6; // zf
  int v7; // r0
  int v8; // r7
  glitch::IReferenceCounted *v9; // r10
  glitch::IReferenceCounted *v10; // r8
  glitch::IReferenceCounted *v11; // r9
  const glitch::video::CMaterialRenderer *v12; // r1
  glitch::video::CMaterialVertexAttributeMap **v13; // r3
  void (__fastcall *v14)(_DWORD *, glitch::video::CVertexStreams **, glitch::IReferenceCounted **, _DWORD, glitch::IReferenceCounted **); // r12
  glitch::video::CVertexStreams *v15; // r9
  float *v16; // r7
  float v17; // r8
  float v18; // r5
  float v19; // r5
  float v20; // r8
  float v21; // r11
  int v22; // r3
  int v23; // r2
  int v24; // r1
  int v25; // r2
  int v26; // r12
  glitch::video::CMaterialVertexAttributeMap **v27; // [sp+14h] [bp-B8h]
  _DWORD v28[17]; // [sp+28h] [bp-A4h] BYREF
  glitch::IReferenceCounted *v29[5]; // [sp+6Ch] [bp-60h] BYREF
  __int16 v30; // [sp+80h] [bp-4Ch]
  __int16 v31; // [sp+82h] [bp-4Ah]
  int v32; // [sp+84h] [bp-48h]
  int v33; // [sp+88h] [bp-44h]
  int v34; // [sp+8Ch] [bp-40h]
  int v35; // [sp+90h] [bp-3Ch]
  float v36[3]; // [sp+94h] [bp-38h] BYREF
  float v37; // [sp+A0h] [bp-2Ch] BYREF
  float v38; // [sp+A4h] [bp-28h]
  float v39; // [sp+A8h] [bp-24h]
  _DWORD v40[3]; // [sp+ACh] [bp-20h] BYREF
  glitch::IReferenceCounted *v41; // [sp+B8h] [bp-14h] BYREF
  glitch::IReferenceCounted *v42; // [sp+BCh] [bp-10h] BYREF
  glitch::video::CVertexStreams *v43; // [sp+C0h] [bp-Ch] BYREF
  glitch::video::CMaterialVertexAttributeMap *v44; // [sp+C4h] [bp-8h] BYREF

  v2 = *((_DWORD *)this + 68);
  v3 = this;
  v4 = *(_DWORD **)(v2 + 228);
  v5 = *(_DWORD **)(v2 + 20);
  v6 = v4 == nullptr;
  if ( v4 )
    v6 = v5 == nullptr;
  if ( v6 )
    return this;
  v7 = (*(int (__fastcall **)(_DWORD *, void *))(*v4 + 336))(v4, a2);
  v8 = v7;
  if ( !v7 )
  {
    LOBYTE(v28[16]) = 0;
    memcpy(v28, (char *)v3 + 36, 0x41u);
    glitch::scene::ISceneNode::getAbsolutePosition(v40, v4);
    LOBYTE(v28[16]) = 0;
    v28[12] = v40[0];
    v28[13] = v40[1];
    v9 = v3;
    v10 = (glitch::IReferenceCounted *)byte_4;
    v28[14] = v40[2];
    (*(void (__fastcall **)(_DWORD *, int, _DWORD *))(*v5 + 108))(v5, 1, v28);
    v11 = nullptr;
    while ( 1 )
    {
      v42 = nullptr;
      this = (glitch::IReferenceCounted *)glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
                                            *((_DWORD *)v9 + 83),
                                            *((unsigned __int16 *)v3 + 180),
                                            0,
                                            &v42);
      if ( this )
      {
        if ( !v42 )
          goto LABEL_29;
        v44 = *((glitch::video::CMaterialVertexAttributeMap **)v3 + 89);
        if ( v44 )
          ++*(_DWORD *)v44;
        glitch::video::IVideoDriver::setMaterial((int)v5, (glitch::video::CMaterial **)v3 + v8 + 83, (int)&v44);
        v13 = (glitch::video::CMaterialVertexAttributeMap **)v44;
        if ( v44 )
        {
          v6 = (*(_DWORD *)v44)-- == 1;
          if ( v6 )
          {
            v27 = v13;
            glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v13, v12);
            LC_API_FREE_0(v27);
          }
        }
        v43 = *((glitch::video::CVertexStreams **)v3 + 82);
        if ( v43 )
          ++*(_DWORD *)v43;
        v29[2] = (glitch::IReferenceCounted *)(v10 - v11);
        v30 = 255;
        v29[3] = v11;
        v29[0] = nullptr;
        v29[1] = nullptr;
        v29[4] = v10;
        v31 = 5;
        v14 = *(void (__fastcall **)(_DWORD *, glitch::video::CVertexStreams **, glitch::IReferenceCounted **, _DWORD, glitch::IReferenceCounted **))(*v5 + 88);
        v41 = nullptr;
        v14(v5, &v43, v29, 0, &v41);
        if ( v41 )
          glitch::IReferenceCounted::drop(v41);
        if ( v29[0] )
          glitch::IReferenceCounted::drop(v29[0]);
        v15 = v43;
        if ( v43 )
        {
          v6 = (*(_DWORD *)v43)-- == 1;
          if ( v6 )
          {
            glitch::video::CVertexStreams::~CVertexStreams(v15);
            LC_API_FREE_0(v15);
          }
        }
      }
      this = v42;
      if ( v42 )
        this = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v42);
LABEL_29:
      ++v8;
      v9 = (glitch::IReferenceCounted *)((char *)v9 + 4);
      if ( v8 == 6 )
        return this;
      v11 = v10;
      v10 = (glitch::IReferenceCounted *)((char *)v10 + 4);
    }
  }
  v16 = (float *)(*(int (__fastcall **)(_DWORD *))(*v4 + 264))(v4);
  glitch::scene::ISceneNode::getAbsolutePosition(v36, v4);
  v17 = v16[1] - v36[1];
  v18 = v16[2] - v36[2];
  v37 = *v16 - v36[0];
  v38 = v17;
  v39 = v18;
  glitch::core::vector3d<float>::normalize(&v37);
  if ( v37 < 0.0 )
    LODWORD(v19) = LODWORD(v37) + 0x80000000;
  else
    v19 = v37;
  if ( v38 < 0.0 )
    LODWORD(v20) = LODWORD(v38) + 0x80000000;
  else
    v20 = v38;
  if ( v39 >= 0.0 )
    v21 = v39;
  else
    LODWORD(v21) = LODWORD(v39) + 0x80000000;
  if ( v19 >= v20 && v19 >= v21 )
  {
    if ( v37 <= 0.0 )
    {
      v22 = 2;
      goto LABEL_49;
    }
  }
  else
  {
    if ( v19 <= v20 && v20 >= v21 )
    {
      if ( v38 <= 0.0 )
        v22 = 5;
      else
        v22 = 4;
      goto LABEL_49;
    }
    if ( v19 <= v21 && v20 <= v21 )
    {
      if ( v39 <= 0.0 )
        v22 = 3;
      else
        v22 = 1;
      goto LABEL_49;
    }
  }
  v22 = 0;
LABEL_49:
  v42 = nullptr;
  this = (glitch::IReferenceCounted *)glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
                                        *((_DWORD *)v3 + v22 + 83),
                                        *((unsigned __int16 *)v3 + 180),
                                        0,
                                        &v42);
  if ( this )
  {
    if ( !v42 )
      return this;
    v23 = *(_DWORD *)(v5[51] - 4);
    v32 = -1;
    v33 = 0;
    v24 = *(_DWORD *)(v23 + 12);
    v25 = *(_DWORD *)(v23 + 16);
    v28[0] = 0;
    v34 = v24 - 1;
    v35 = v25;
    v28[1] = 0;
    v26 = *((_DWORD *)v42 + 9);
    v28[2] = *((_DWORD *)v42 + 8);
    v28[3] = v26;
    glitch::video::C2DDriver::draw2DImage((int)v5);
  }
  this = v42;
  if ( v42 )
    return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v42);
  return this;
}


// ===== 6ce9c0 glitch::video::detail::SMapBufferBase<glitch::video::E_BUFFER_MAP_ACCESS,(glitch::video::E_BUFFER_MAP_ACCESS)4>::reset(boost::intrusive_ptr<glitch::video::IBuffer> const&,glitch::video::E_BUFFER_MAP_ACCESS) [clone] =====
glitch::IReferenceCounted *__fastcall glitch::video::detail::SMapBufferBase<glitch::video::E_BUFFER_MAP_ACCESS,(glitch::video::E_BUFFER_MAP_ACCESS)4>::reset(
        glitch::IReferenceCounted *result,
        int *a2)
{
  _BYTE *v2; // r5
  int v3; // r3
  glitch::IReferenceCounted *v4; // r4
  char v6; // r3
  glitch::IReferenceCounted *v7; // r0

  v2 = *(_BYTE **)result;
  v3 = *a2;
  v4 = result;
  if ( *(_DWORD *)result != *a2 )
  {
    if ( *((_DWORD *)result + 1) )
    {
      v6 = v2[19];
      if ( (v6 & 0x1Fu) <= 1 )
      {
        if ( (v2[18] & 0x20) != 0 )
          (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 24))(*(_DWORD *)result);
        v2[19] = 0;
        v3 = *a2;
      }
      else
      {
        v2[19] = ((v6 & 0x1F) - 1) | v6 & 0xE0;
        v3 = *a2;
      }
    }
    if ( v3 )
    {
      ++*(_DWORD *)(v3 + 4);
      v7 = *(glitch::IReferenceCounted **)v4;
      *(_DWORD *)v4 = v3;
      if ( v7 )
        glitch::IReferenceCounted::drop(v7);
      result = (glitch::IReferenceCounted *)glitch::video::IBuffer::map(*a2, 4);
      *((_DWORD *)v4 + 1) = result;
    }
    else
    {
      result = *(glitch::IReferenceCounted **)v4;
      *(_DWORD *)v4 = 0;
      if ( result )
        result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
      *((_DWORD *)v4 + 1) = 0;
    }
  }
  return result;
}


// ===== 6cea98 glitch::scene::CSkyBoxSceneNode::~CSkyBoxSceneNode() =====
void __fastcall glitch::scene::CSkyBoxSceneNode::~CSkyBoxSceneNode(
        glitch::scene::CSkyBoxSceneNode *this,
        const glitch::video::CMaterialRenderer *a2)
{
  glitch::video::CMaterialVertexAttributeMap **v2; // r5
  bool v4; // zf
  glitch::video::CMaterial **v5; // r5
  glitch::video::CVertexStreams *v6; // r5

  v2 = *((glitch::video::CMaterialVertexAttributeMap ***)this + 89);
  *(_DWORD *)this = off_989CCC;
  *((_DWORD *)this + 91) = off_989DD4;
  if ( v2 )
  {
    v4 = *v2 == (glitch::video::CMaterialVertexAttributeMap *)((char *)&dword_0 + 1);
    *v2 = (glitch::video::CMaterialVertexAttributeMap *)((char *)*v2 - 1);
    if ( v4 )
    {
      glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v2, a2);
      LC_API_FREE_0(v2);
    }
  }
  v5 = (glitch::video::CMaterial **)((char *)this + 356);
  do
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(--v5);
  while ( v5 != (glitch::video::CMaterial **)((char *)this + 332) );
  v6 = *((glitch::video::CVertexStreams **)this + 82);
  if ( v6 )
  {
    v4 = (*(_DWORD *)v6)-- == 1;
    if ( v4 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v6);
      LC_API_FREE_0(v6);
    }
  }
  glitch::scene::ISceneNode::~ISceneNode(this, (int *)off_989DE4);
}


// ===== 6ceb6c `virtual thunk to'glitch::scene::CSkyBoxSceneNode::~CSkyBoxSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CSkyBoxSceneNode::~CSkyBoxSceneNode(
        glitch::scene::CSkyBoxSceneNode *this,
        const glitch::video::CMaterialRenderer *a2)
{
  glitch::scene::CSkyBoxSceneNode::~CSkyBoxSceneNode(
    (glitch::scene::CSkyBoxSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)),
    a2);
}


// ===== 6ceb7c `virtual thunk to'glitch::scene::CSkyBoxSceneNode::~CSkyBoxSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CSkyBoxSceneNode::~CSkyBoxSceneNode(
        glitch::scene::CSkyBoxSceneNode *this,
        const glitch::video::CMaterialRenderer *a2)
{
  glitch::scene::CSkyBoxSceneNode::~CSkyBoxSceneNode(
    (glitch::scene::CSkyBoxSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)),
    a2);
}


// ===== 6ceb8c glitch::scene::CSkyBoxSceneNode::~CSkyBoxSceneNode() =====
void __fastcall glitch::scene::CSkyBoxSceneNode::~CSkyBoxSceneNode(
        glitch::scene::CSkyBoxSceneNode *this,
        const glitch::video::CMaterialRenderer *a2)
{
  glitch::scene::CSkyBoxSceneNode::~CSkyBoxSceneNode(this, a2);
  LC_API_FREE_0(this);
}


// ===== 6ceba8 `virtual thunk to'glitch::scene::CSkyBoxSceneNode::~CSkyBoxSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CSkyBoxSceneNode::~CSkyBoxSceneNode(
        glitch::scene::CSkyBoxSceneNode *this,
        const glitch::video::CMaterialRenderer *a2)
{
  glitch::scene::CSkyBoxSceneNode::~CSkyBoxSceneNode(
    (glitch::scene::CSkyBoxSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)),
    a2);
}


// ===== 6cebb8 `virtual thunk to'glitch::scene::CSkyBoxSceneNode::~CSkyBoxSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CSkyBoxSceneNode::~CSkyBoxSceneNode(
        glitch::scene::CSkyBoxSceneNode *this,
        const glitch::video::CMaterialRenderer *a2)
{
  glitch::scene::CSkyBoxSceneNode::~CSkyBoxSceneNode(
    (glitch::scene::CSkyBoxSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)),
    a2);
}


// ===== 6cebc8 glitch::scene::CSkyBoxSceneNode::CSkyBoxSceneNode(glitch::video::IVideoDriver *,boost::intrusive_ptr<glitch::video::ITexture> const&,boost::intrusive_ptr<glitch::video::ITexture> const&,boost::intrusive_ptr<glitch::video::ITexture> const&,boost::intrusive_ptr<glitch::video::ITexture> const&,boost::intrusive_ptr<glitch::video::ITexture> const&,boost::intrusive_ptr<glitch::video::ITexture> const&,int) =====
int __fastcall glitch::scene::CSkyBoxSceneNode::CSkyBoxSceneNode(
        int a1,
        int *a2,
        _DWORD *a3,
        int *a4,
        int *a5,
        int *a6,
        int *a7,
        int *a8,
        int *a9,
        int a10)
{
  int v13; // r3
  int v14; // r2
  int v15; // r9
  unsigned int MaterialRenderer; // r0
  int v17; // r3
  glitch::video::CMaterialRenderer **v18; // r3
  glitch::video::CMaterialRenderer *v19; // r0
  bool v20; // zf
  int v21; // r6
  unsigned int ParameterID; // r10
  int v23; // r3
  int v24; // r3
  int v25; // r3
  int v26; // r3
  int v27; // r3
  int v28; // r5
  int v29; // r3
  glitch::video::CMaterial *v30; // r2
  int v31; // r3
  _DWORD *v32; // r0
  glitch::IReferenceCounted **v33; // r5
  glitch::IReferenceCounted *v34; // r0
  glitch::video::CVertexStreams *v35; // r3
  glitch::video::CVertexStreams *v36; // r5
  glitch::video::CVertexStreams *v37; // r5
  glitch::video::CVertexStreams *v38; // r0
  glitch::video::CVertexStreams *v39; // r0
  glitch::IReferenceCounted *v40; // r5
  void *v41; // r0
  glitch::IReferenceCounted *v42; // r0
  int v43; // r0
  int v44; // r2
  glitch::video::CVertexStreams *v45; // r3
  _DWORD *v46; // r5
  const glitch::video::CMaterialRenderer *v47; // r1
  glitch::video::CMaterialVertexAttributeMap *v48; // r3
  glitch::video::CMaterialVertexAttributeMap **v49; // r6
  glitch::video::CMaterialVertexAttributeMap **v50; // r6
  glitch::video::CVertexStreams *v51; // r6
  glitch::IReferenceCounted *v52; // r5
  char v53; // r3
  int v55; // [sp+10h] [bp-D4h]
  _DWORD v57[5]; // [sp+54h] [bp-90h] BYREF
  glitch::IReferenceCounted *v59[3]; // [sp+6Ch] [bp-78h] BYREF
  __int16 v60; // [sp+78h] [bp-6Ch]
  __int16 v61; // [sp+7Ah] [bp-6Ah]
  glitch::IReferenceCounted *v62[3]; // [sp+7Ch] [bp-68h] BYREF
  __int16 v63; // [sp+88h] [bp-5Ch]
  __int16 v64; // [sp+8Ah] [bp-5Ah]
  _DWORD v65[4]; // [sp+8Ch] [bp-58h] BYREF
  _DWORD v66[3]; // [sp+9Ch] [bp-48h] BYREF
  glitch::IReferenceCounted *v67[3]; // [sp+A8h] [bp-3Ch] BYREF
  glitch::IReferenceCounted *v68; // [sp+B4h] [bp-30h] BYREF
  int v69; // [sp+B8h] [bp-2Ch]
  glitch::video::CMaterial *v70; // [sp+BCh] [bp-28h] BYREF
  glitch::IReferenceCounted *v71; // [sp+C0h] [bp-24h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v72; // [sp+C4h] [bp-20h] BYREF
  glitch::video::CVertexStreams *v73; // [sp+C8h] [bp-1Ch] BYREF
  glitch::IReferenceCounted *v74; // [sp+CCh] [bp-18h] BYREF
  glitch::video::CVertexStreams *v75; // [sp+D0h] [bp-14h] BYREF
  unsigned __int8 v76[4]; // [sp+D4h] [bp-10h] BYREF
  glitch::video::CMaterial *v77; // [sp+D8h] [bp-Ch] BYREF
  glitch::video::CMaterialRenderer *v78[2]; // [sp+DCh] [bp-8h] BYREF

  memset(v67, 0, sizeof(v67));
  memset(v65, 0, 12);
  v65[3] = 1065353216;
  v66[0] = 1065353216;
  v66[1] = 1065353216;
  v66[2] = 1065353216;
  glitch::scene::ISceneNode::ISceneNode(a1, a2 + 1, a10, v67, v65, v66);
  v13 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v13 - 28)) = a2[4];
  v14 = 0;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[5];
  *(_DWORD *)(a1 + 312) = -1082130432;
  *(_DWORD *)(a1 + 324) = 1065353216;
  *(_DWORD *)(a1 + 304) = -1082130432;
  *(_DWORD *)(a1 + 308) = -1082130432;
  *(_DWORD *)(a1 + 316) = 1065353216;
  *(_DWORD *)(a1 + 320) = 1065353216;
  *(_DWORD *)(a1 + 328) = 0;
  do
  {
    *(_DWORD *)(a1 + 332 + v14) = 0;
    v14 += 4;
  }
  while ( v14 != 24 );
  *(_WORD *)(a1 + 360) = -1;
  *(_DWORD *)(a1 + 356) = 0;
  glitch::scene::ISceneNode::setAutomaticCulling(a1, 0);
  *(_DWORD *)(a1 + 312) = 0;
  *(_DWORD *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 304) = 0;
  *(_DWORD *)(a1 + 308) = 0;
  v15 = a3[55];
  MaterialRenderer = glitch::video::CMaterialRendererManager::createMaterialRenderer(v15, 11);
  v17 = *(_DWORD *)(v15 + 24);
  if ( MaterialRenderer >= (*(_DWORD *)(v15 + 28) - v17) >> 3 )
    v18 = (glitch::video::CMaterialRenderer **)&glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid;
  else
    v18 = (glitch::video::CMaterialRenderer **)(v17 + 8 * MaterialRenderer);
  v19 = *v18;
  v20 = *v18 == nullptr;
  v78[0] = *v18;
  if ( v78[0] )
    v18 = *(glitch::video::CMaterialRenderer ***)v19;
  v21 = 0;
  if ( !v20 )
  {
    *(_DWORD *)v19 = (char *)v18 + 1;
    v19 = v78[0];
  }
  *(_WORD *)(a1 + 360) = glitch::video::CMaterialRenderer::getParameterID((int)v19, 2, 0);
  ParameterID = glitch::video::CMaterialRenderer::getParameterID((int)v78[0], 6, 0);
  v23 = *a8;
  v57[0] = v23;
  if ( v23 )
    ++*(_DWORD *)(v23 + 4);
  v24 = *a6;
  v57[1] = v24;
  if ( v24 )
    ++*(_DWORD *)(v24 + 4);
  v25 = *a9;
  v57[2] = v25;
  if ( v25 )
    ++*(_DWORD *)(v25 + 4);
  v26 = *a7;
  v57[3] = v26;
  if ( v26 )
    ++*(_DWORD *)(v26 + 4);
  v27 = *a4;
  v28 = a1;
  v57[4] = v27;
  if ( v27 )
    ++*(_DWORD *)(v27 + 4);
  v29 = *a5;
  if ( *a5 )
    ++*(_DWORD *)(v29 + 4);
  do
  {
    glitch::video::CMaterialRendererManager::createMaterialInstance(&v77, v15, 11);
    v30 = v77;
    v70 = v77;
    if ( v77 )
    {
      ++*(_DWORD *)v77;
      v30 = v70;
    }
    v55 = v21;
    v70 = *(glitch::video::CMaterial **)(v28 + 332);
    *(_DWORD *)(v28 + 332) = v30;
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v70);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v77);
    v31 = v57[v21++];
    if ( v31 )
    {
      glitch::video::ITexture::setWrap(v31);
      glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
        *(_DWORD **)(v28 + 332),
        *(unsigned __int16 *)(a1 + 360),
        0,
        &v57[v55]);
      if ( ParameterID != 0xFFFF )
      {
        v32 = *(_DWORD **)(v28 + 332);
        v76[0] = -1;
        v76[1] = -1;
        v76[2] = -1;
        v76[3] = -1;
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
          v32,
          ParameterID,
          0,
          v76);
      }
    }
    v28 += 4;
  }
  while ( v21 != 6 );
  v33 = v59;
  do
  {
    v34 = *(v33 - 1);
    if ( v34 )
      glitch::IReferenceCounted::drop(v34);
    --v33;
  }
  while ( v33 != v57 );
  glitch::video::CVertexStreams::allocate(&v75, 1u, 0);
  v35 = v75;
  if ( v75 )
    ++*(_DWORD *)v75;
  v36 = *(glitch::video::CVertexStreams **)(a1 + 328);
  *(_DWORD *)(a1 + 328) = v35;
  if ( v36 )
  {
    v20 = (*(_DWORD *)v36)-- == 1;
    if ( v20 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v36);
      LC_API_FREE_0(v36);
    }
  }
  v37 = v75;
  if ( v75 )
  {
    v20 = (*(_DWORD *)v75)-- == 1;
    if ( v20 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v37);
      LC_API_FREE_0(v37);
    }
  }
  (*(void (__fastcall **)(glitch::IReferenceCounted **))(*a3 + 120))(&v74);
  v38 = *(glitch::video::CVertexStreams **)(a1 + 328);
  v62[0] = v74;
  if ( v74 )
    ++*((_DWORD *)v74 + 1);
  v62[1] = (glitch::IReferenceCounted *)byte_8;
  v62[2] = (glitch::IReferenceCounted *)&byte_6;
  v63 = 3;
  v64 = 20;
  glitch::video::CVertexStreams::setStream(v38, (int)v38 + 20, v62);
  if ( v62[0] )
    glitch::IReferenceCounted::drop(v62[0]);
  v39 = *(glitch::video::CVertexStreams **)(a1 + 328);
  v59[0] = v74;
  if ( v74 )
    ++*((_DWORD *)v74 + 1);
  v59[1] = nullptr;
  v59[2] = (glitch::IReferenceCounted *)&byte_6;
  v60 = 2;
  v61 = 20;
  glitch::video::CVertexStreams::setStream(v39, (int)v39 + 36, v59);
  if ( v59[0] )
    glitch::IReferenceCounted::drop(v59[0]);
  *(_DWORD *)(*(_DWORD *)(a1 + 328) + 8) = 24;
  v40 = v74;
  v41 = operator new[](0x1E0u, 0);
  glitch::video::IBuffer::reset(v40, 0x1E0u, v41, 1);
  v42 = v74;
  v68 = v74;
  if ( v74 )
  {
    ++*((_DWORD *)v74 + 1);
    v42 = v74;
  }
  v43 = glitch::video::IBuffer::map((int)v42, 4);
  v45 = *(glitch::video::CVertexStreams **)(a1 + 328);
  v69 = v43;
  v73 = v45;
  if ( v45 )
    v44 = *(_DWORD *)v45;
  v46 = (_DWORD *)v43;
  if ( v45 )
    *(_DWORD *)v45 = v44 + 1;
  glitch::video::CMaterialVertexAttributeMap::allocate((int **)&v72, v78, (int *)&v73);
  v48 = v72;
  if ( v72 )
    ++*(_DWORD *)v72;
  v49 = *(glitch::video::CMaterialVertexAttributeMap ***)(a1 + 356);
  *(_DWORD *)(a1 + 356) = v48;
  if ( v49 )
  {
    v20 = *v49 == (glitch::video::CMaterialVertexAttributeMap *)((char *)&dword_0 + 1);
    *v49 = (glitch::video::CMaterialVertexAttributeMap *)((char *)*v49 - 1);
    if ( v20 )
    {
      glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v49, v47);
      LC_API_FREE_0(v49);
    }
  }
  v50 = (glitch::video::CMaterialVertexAttributeMap **)v72;
  if ( v72 )
  {
    v20 = (*(_DWORD *)v72)-- == 1;
    if ( v20 )
    {
      glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v50, v47);
      LC_API_FREE_0(v50);
    }
  }
  v51 = v73;
  if ( v73 )
  {
    v20 = (*(_DWORD *)v73)-- == 1;
    if ( v20 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v51);
      LC_API_FREE_0(v51);
    }
  }
  *v46 = 1065353216;
  v46[1] = 1065353216;
  v46[2] = -1054867456;
  v46[3] = -1054867456;
  v46[4] = -1054867456;
  v46[5] = 0;
  v46[9] = -1054867456;
  v46[6] = 1065353216;
  v46[7] = 1092616192;
  v46[8] = -1054867456;
  v46[10] = 0;
  v46[14] = -1054867456;
  v46[11] = 0;
  v46[12] = 1092616192;
  v46[13] = 1092616192;
  v46[15] = 1065353216;
  v46[19] = -1054867456;
  v46[16] = 0;
  v46[17] = -1054867456;
  v46[18] = 1092616192;
  v46[20] = 1065353216;
  v46[24] = -1054867456;
  v46[21] = 1065353216;
  v46[22] = 1092616192;
  v46[23] = -1054867456;
  v46[25] = 0;
  v46[29] = 1092616192;
  v46[26] = 1065353216;
  v46[27] = 1092616192;
  v46[28] = -1054867456;
  v46[30] = 0;
  v46[31] = 0;
  v46[32] = 1092616192;
  v46[33] = 1092616192;
  v46[34] = 1092616192;
  v46[35] = 1065353216;
  v46[39] = -1054867456;
  v46[36] = 0;
  v46[37] = 1092616192;
  v46[38] = 1092616192;
  v46[40] = 1065353216;
  v46[44] = 1092616192;
  v46[41] = 1065353216;
  v46[42] = 1092616192;
  v46[43] = -1054867456;
  v46[45] = 0;
  v46[49] = 1092616192;
  v46[46] = 1065353216;
  v46[47] = -1054867456;
  v46[48] = -1054867456;
  v46[50] = 0;
  v46[54] = 1092616192;
  v46[51] = 0;
  v46[52] = -1054867456;
  v46[53] = 1092616192;
  v46[55] = 1065353216;
  v46[59] = 1092616192;
  v46[56] = 0;
  v46[57] = 1092616192;
  v46[58] = 1092616192;
  v46[60] = 1065353216;
  v46[64] = 1092616192;
  v46[61] = 1065353216;
  v46[62] = -1054867456;
  v46[63] = -1054867456;
  v46[65] = 0;
  v46[66] = 1065353216;
  v46[69] = -1054867456;
  v46[67] = -1054867456;
  v46[68] = -1054867456;
  v46[70] = 0;
  v46[74] = -1054867456;
  v46[71] = 0;
  v46[72] = -1054867456;
  v46[73] = 1092616192;
  v46[75] = 1065353216;
  v46[79] = 1092616192;
  v46[76] = 0;
  v46[77] = -1054867456;
  v46[78] = 1092616192;
  v46[80] = 1065353216;
  v46[84] = -1054867456;
  v46[81] = 1065353216;
  v46[82] = 1092616192;
  v46[83] = 1092616192;
  v46[85] = 0;
  v46[89] = 1092616192;
  v46[86] = 1065353216;
  v46[87] = 1092616192;
  v46[88] = 1092616192;
  v46[90] = 0;
  v46[94] = 1092616192;
  v46[91] = 0;
  v46[92] = -1054867456;
  v46[93] = 1092616192;
  v46[95] = 1065353216;
  v46[99] = -1054867456;
  v46[96] = 0;
  v46[97] = -1054867456;
  v46[98] = 1092616192;
  v46[100] = 0;
  v46[101] = 0;
  v46[104] = 1092616192;
  v46[102] = 1092616192;
  v46[103] = -1054867456;
  v46[105] = 1065353216;
  v46[109] = -1054867456;
  v46[106] = 0;
  v46[108] = -1054867456;
  v46[107] = 1092616192;
  v46[110] = 1065353216;
  v46[114] = -1054867456;
  v46[111] = 1065353216;
  v46[112] = -1054867456;
  v46[113] = -1054867456;
  v46[115] = 0;
  v46[116] = 1065353216;
  v46[118] = -1054867456;
  v46[117] = -1054867456;
  v46[119] = 1092616192;
  v71 = nullptr;
  glitch::video::detail::SMapBufferBase<glitch::video::E_BUFFER_MAP_ACCESS,(glitch::video::E_BUFFER_MAP_ACCESS)4>::reset(
    (glitch::IReferenceCounted *)&v68,
    (int *)&v71);
  if ( v71 )
    glitch::IReferenceCounted::drop(v71);
  if ( ((*((_BYTE *)v74 + 18) & 8) == 0 || (*((_BYTE *)v74 + 18) & 2) != 0) && *((_BYTE *)v74 + 17) != 4 )
    (*(void (__fastcall **)(glitch::IReferenceCounted *, int))(*(_DWORD *)v74 + 12))(v74, 1);
  glitch::video::CVertexStreams::updateStates(*(_DWORD *)(a1 + 328), 0);
  if ( v69 )
  {
    v52 = v68;
    v53 = *((_BYTE *)v68 + 19);
    if ( (v53 & 0x1Fu) <= 1 )
    {
      if ( (*((_BYTE *)v68 + 18) & 0x20) != 0 )
        (*(void (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v68 + 24))(v68);
      *((_BYTE *)v52 + 19) = 0;
    }
    else
    {
      *((_BYTE *)v68 + 19) = ((v53 & 0x1F) - 1) | v53 & 0xE0;
    }
  }
  if ( v68 )
    glitch::IReferenceCounted::drop(v68);
  if ( v74 )
    glitch::IReferenceCounted::drop(v74);
  boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(v78);
  return a1;
}


// ===== 6cf564 glitch::scene::CSkyBoxSceneNode::CSkyBoxSceneNode(glitch::video::IVideoDriver *,boost::intrusive_ptr<glitch::video::ITexture> const&,boost::intrusive_ptr<glitch::video::ITexture> const&,boost::intrusive_ptr<glitch::video::ITexture> const&,boost::intrusive_ptr<glitch::video::ITexture> const&,boost::intrusive_ptr<glitch::video::ITexture> const&,boost::intrusive_ptr<glitch::video::ITexture> const&,int) =====
int __fastcall glitch::scene::CSkyBoxSceneNode::CSkyBoxSceneNode(
        int a1,
        _DWORD *a2,
        int *a3,
        int *a4,
        int *a5,
        int *a6,
        int *a7,
        int *a8,
        int a9)
{
  int v12; // r2
  int v13; // r9
  unsigned int MaterialRenderer; // r0
  int v15; // r3
  glitch::video::CMaterialRenderer **v16; // r3
  glitch::video::CMaterialRenderer *v17; // r0
  bool v18; // zf
  int v19; // r6
  unsigned int ParameterID; // r10
  int v21; // r3
  int v22; // r3
  int v23; // r3
  int v24; // r3
  int v25; // r3
  int v26; // r5
  int v27; // r3
  glitch::video::CMaterial *v28; // r2
  int v29; // r3
  _DWORD *v30; // r0
  glitch::IReferenceCounted **v31; // r5
  glitch::IReferenceCounted *v32; // r0
  glitch::video::CVertexStreams *v33; // r3
  glitch::video::CVertexStreams *v34; // r5
  glitch::video::CVertexStreams *v35; // r5
  glitch::video::CVertexStreams *v36; // r0
  glitch::video::CVertexStreams *v37; // r0
  glitch::IReferenceCounted *v38; // r5
  void *v39; // r0
  glitch::IReferenceCounted *v40; // r0
  int v41; // r0
  int v42; // r2
  glitch::video::CVertexStreams *v43; // r3
  _DWORD *v44; // r5
  const glitch::video::CMaterialRenderer *v45; // r1
  glitch::video::CMaterialVertexAttributeMap *v46; // r3
  glitch::video::CMaterialVertexAttributeMap **v47; // r6
  glitch::video::CMaterialVertexAttributeMap **v48; // r6
  glitch::video::CVertexStreams *v49; // r6
  glitch::IReferenceCounted *v50; // r5
  char v51; // r3
  int v53; // [sp+10h] [bp-D4h]
  _DWORD v55[6]; // [sp+54h] [bp-90h] BYREF
  glitch::IReferenceCounted *v56[3]; // [sp+6Ch] [bp-78h] BYREF
  __int16 v57; // [sp+78h] [bp-6Ch]
  __int16 v58; // [sp+7Ah] [bp-6Ah]
  glitch::IReferenceCounted *v59[3]; // [sp+7Ch] [bp-68h] BYREF
  __int16 v60; // [sp+88h] [bp-5Ch]
  __int16 v61; // [sp+8Ah] [bp-5Ah]
  _DWORD v62[4]; // [sp+8Ch] [bp-58h] BYREF
  _DWORD v63[3]; // [sp+9Ch] [bp-48h] BYREF
  glitch::IReferenceCounted *v64[3]; // [sp+A8h] [bp-3Ch] BYREF
  glitch::IReferenceCounted *v65; // [sp+B4h] [bp-30h] BYREF
  int v66; // [sp+B8h] [bp-2Ch]
  glitch::video::CMaterial *v67; // [sp+BCh] [bp-28h] BYREF
  glitch::IReferenceCounted *v68; // [sp+C0h] [bp-24h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v69; // [sp+C4h] [bp-20h] BYREF
  glitch::video::CVertexStreams *v70; // [sp+C8h] [bp-1Ch] BYREF
  glitch::IReferenceCounted *v71; // [sp+CCh] [bp-18h] BYREF
  glitch::video::CVertexStreams *v72; // [sp+D0h] [bp-14h] BYREF
  unsigned __int8 v73[4]; // [sp+D4h] [bp-10h] BYREF
  glitch::video::CMaterial *v74; // [sp+D8h] [bp-Ch] BYREF
  glitch::video::CMaterialRenderer *v75[2]; // [sp+DCh] [bp-8h] BYREF

  *(_DWORD *)(a1 + 368) = 1;
  *(_DWORD *)(a1 + 364) = off_95B720;
  *(_DWORD *)a1 = off_989F3C;
  *(int *)((char *)&elf_hash_bucket[36] + a1) = (int)off_989F5C;
  memset(v64, 0, sizeof(v64));
  memset(v62, 0, 12);
  v62[3] = 1065353216;
  v63[0] = 1065353216;
  v63[1] = 1065353216;
  v63[2] = 1065353216;
  glitch::scene::ISceneNode::ISceneNode(a1, (int *)off_989DE4, a9, v64, v62, v63);
  *(_DWORD *)(a1 + 312) = -1082130432;
  *(_DWORD *)a1 = off_989CCC;
  *(_DWORD *)(a1 + 304) = -1082130432;
  *(_DWORD *)(a1 + 308) = -1082130432;
  v12 = 0;
  *(_DWORD *)(a1 + 364) = off_989DD4;
  *(_DWORD *)(a1 + 324) = 1065353216;
  *(_DWORD *)(a1 + 316) = 1065353216;
  *(_DWORD *)(a1 + 320) = 1065353216;
  *(_DWORD *)(a1 + 328) = 0;
  do
  {
    *(_DWORD *)(a1 + 332 + v12) = 0;
    v12 += 4;
  }
  while ( v12 != 24 );
  *(_WORD *)(a1 + 360) = -1;
  *(_DWORD *)(a1 + 356) = 0;
  glitch::scene::ISceneNode::setAutomaticCulling(a1, 0);
  *(_DWORD *)(a1 + 312) = 0;
  *(_DWORD *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 304) = 0;
  *(_DWORD *)(a1 + 308) = 0;
  v13 = a2[55];
  MaterialRenderer = glitch::video::CMaterialRendererManager::createMaterialRenderer(v13, 11);
  v15 = *(_DWORD *)(v13 + 24);
  if ( MaterialRenderer >= (*(_DWORD *)(v13 + 28) - v15) >> 3 )
    v16 = (glitch::video::CMaterialRenderer **)&glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid;
  else
    v16 = (glitch::video::CMaterialRenderer **)(v15 + 8 * MaterialRenderer);
  v17 = *v16;
  v18 = *v16 == nullptr;
  v75[0] = *v16;
  if ( v75[0] )
    v16 = *(glitch::video::CMaterialRenderer ***)v17;
  v19 = 0;
  if ( !v18 )
  {
    *(_DWORD *)v17 = (char *)v16 + 1;
    v17 = v75[0];
  }
  *(_WORD *)(a1 + 360) = glitch::video::CMaterialRenderer::getParameterID((int)v17, 2, 0);
  ParameterID = glitch::video::CMaterialRenderer::getParameterID((int)v75[0], 6, 0);
  v21 = *a7;
  v55[0] = v21;
  if ( v21 )
    ++*(_DWORD *)(v21 + 4);
  v22 = *a5;
  v55[1] = v22;
  if ( v22 )
    ++*(_DWORD *)(v22 + 4);
  v23 = *a8;
  v55[2] = v23;
  if ( v23 )
    ++*(_DWORD *)(v23 + 4);
  v24 = *a6;
  v55[3] = v24;
  if ( v24 )
    ++*(_DWORD *)(v24 + 4);
  v25 = *a3;
  v26 = a1;
  v55[4] = v25;
  if ( v25 )
    ++*(_DWORD *)(v25 + 4);
  v27 = *a4;
  v55[5] = v27;
  if ( v27 )
    ++*(_DWORD *)(v27 + 4);
  do
  {
    glitch::video::CMaterialRendererManager::createMaterialInstance(&v74, v13, 11);
    v28 = v74;
    v67 = v74;
    if ( v74 )
    {
      ++*(_DWORD *)v74;
      v28 = v67;
    }
    v53 = v19;
    v67 = *(glitch::video::CMaterial **)(v26 + 332);
    *(_DWORD *)(v26 + 332) = v28;
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v67);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v74);
    v29 = v55[v19++];
    if ( v29 )
    {
      glitch::video::ITexture::setWrap(v29);
      glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
        *(_DWORD **)(v26 + 332),
        *(unsigned __int16 *)(a1 + 360),
        0,
        &v55[v53]);
      if ( ParameterID != 0xFFFF )
      {
        v30 = *(_DWORD **)(v26 + 332);
        v73[0] = -1;
        v73[1] = -1;
        v73[2] = -1;
        v73[3] = -1;
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
          v30,
          ParameterID,
          0,
          v73);
      }
    }
    v26 += 4;
  }
  while ( v19 != 6 );
  v31 = v56;
  do
  {
    v32 = *(v31 - 1);
    if ( v32 )
      glitch::IReferenceCounted::drop(v32);
    --v31;
  }
  while ( v31 != v55 );
  glitch::video::CVertexStreams::allocate(&v72, 1u, 0);
  v33 = v72;
  if ( v72 )
    ++*(_DWORD *)v72;
  v34 = *(glitch::video::CVertexStreams **)(a1 + 328);
  *(_DWORD *)(a1 + 328) = v33;
  if ( v34 )
  {
    v18 = (*(_DWORD *)v34)-- == 1;
    if ( v18 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v34);
      LC_API_FREE_0(v34);
    }
  }
  v35 = v72;
  if ( v72 )
  {
    v18 = (*(_DWORD *)v72)-- == 1;
    if ( v18 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v35);
      LC_API_FREE_0(v35);
    }
  }
  (*(void (__fastcall **)(glitch::IReferenceCounted **))(*a2 + 120))(&v71);
  v36 = *(glitch::video::CVertexStreams **)(a1 + 328);
  v59[0] = v71;
  if ( v71 )
    ++*((_DWORD *)v71 + 1);
  v59[1] = (glitch::IReferenceCounted *)byte_8;
  v59[2] = (glitch::IReferenceCounted *)&byte_6;
  v60 = 3;
  v61 = 20;
  glitch::video::CVertexStreams::setStream(v36, (int)v36 + 20, v59);
  if ( v59[0] )
    glitch::IReferenceCounted::drop(v59[0]);
  v37 = *(glitch::video::CVertexStreams **)(a1 + 328);
  v56[0] = v71;
  if ( v71 )
    ++*((_DWORD *)v71 + 1);
  v56[1] = nullptr;
  v56[2] = (glitch::IReferenceCounted *)&byte_6;
  v57 = 2;
  v58 = 20;
  glitch::video::CVertexStreams::setStream(v37, (int)v37 + 36, v56);
  if ( v56[0] )
    glitch::IReferenceCounted::drop(v56[0]);
  *(_DWORD *)(*(_DWORD *)(a1 + 328) + 8) = 24;
  v38 = v71;
  v39 = operator new[](0x1E0u, 0);
  glitch::video::IBuffer::reset(v38, 0x1E0u, v39, 1);
  v40 = v71;
  v65 = v71;
  if ( v71 )
  {
    ++*((_DWORD *)v71 + 1);
    v40 = v71;
  }
  v41 = glitch::video::IBuffer::map((int)v40, 4);
  v43 = *(glitch::video::CVertexStreams **)(a1 + 328);
  v66 = v41;
  v70 = v43;
  if ( v43 )
    v42 = *(_DWORD *)v43;
  v44 = (_DWORD *)v41;
  if ( v43 )
    *(_DWORD *)v43 = v42 + 1;
  glitch::video::CMaterialVertexAttributeMap::allocate((int **)&v69, v75, (int *)&v70);
  v46 = v69;
  if ( v69 )
    ++*(_DWORD *)v69;
  v47 = *(glitch::video::CMaterialVertexAttributeMap ***)(a1 + 356);
  *(_DWORD *)(a1 + 356) = v46;
  if ( v47 )
  {
    v18 = *v47 == (glitch::video::CMaterialVertexAttributeMap *)((char *)&dword_0 + 1);
    *v47 = (glitch::video::CMaterialVertexAttributeMap *)((char *)*v47 - 1);
    if ( v18 )
    {
      glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v47, v45);
      LC_API_FREE_0(v47);
    }
  }
  v48 = (glitch::video::CMaterialVertexAttributeMap **)v69;
  if ( v69 )
  {
    v18 = (*(_DWORD *)v69)-- == 1;
    if ( v18 )
    {
      glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v48, v45);
      LC_API_FREE_0(v48);
    }
  }
  v49 = v70;
  if ( v70 )
  {
    v18 = (*(_DWORD *)v70)-- == 1;
    if ( v18 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v49);
      LC_API_FREE_0(v49);
    }
  }
  *v44 = 1065353216;
  v44[1] = 1065353216;
  v44[2] = -1054867456;
  v44[3] = -1054867456;
  v44[4] = -1054867456;
  v44[5] = 0;
  v44[9] = -1054867456;
  v44[6] = 1065353216;
  v44[7] = 1092616192;
  v44[8] = -1054867456;
  v44[10] = 0;
  v44[14] = -1054867456;
  v44[11] = 0;
  v44[12] = 1092616192;
  v44[13] = 1092616192;
  v44[15] = 1065353216;
  v44[19] = -1054867456;
  v44[16] = 0;
  v44[17] = -1054867456;
  v44[18] = 1092616192;
  v44[20] = 1065353216;
  v44[24] = -1054867456;
  v44[21] = 1065353216;
  v44[22] = 1092616192;
  v44[23] = -1054867456;
  v44[25] = 0;
  v44[29] = 1092616192;
  v44[26] = 1065353216;
  v44[27] = 1092616192;
  v44[28] = -1054867456;
  v44[30] = 0;
  v44[31] = 0;
  v44[32] = 1092616192;
  v44[33] = 1092616192;
  v44[34] = 1092616192;
  v44[35] = 1065353216;
  v44[39] = -1054867456;
  v44[36] = 0;
  v44[37] = 1092616192;
  v44[38] = 1092616192;
  v44[40] = 1065353216;
  v44[44] = 1092616192;
  v44[41] = 1065353216;
  v44[42] = 1092616192;
  v44[43] = -1054867456;
  v44[45] = 0;
  v44[49] = 1092616192;
  v44[46] = 1065353216;
  v44[47] = -1054867456;
  v44[48] = -1054867456;
  v44[50] = 0;
  v44[54] = 1092616192;
  v44[51] = 0;
  v44[52] = -1054867456;
  v44[53] = 1092616192;
  v44[55] = 1065353216;
  v44[59] = 1092616192;
  v44[56] = 0;
  v44[57] = 1092616192;
  v44[58] = 1092616192;
  v44[60] = 1065353216;
  v44[64] = 1092616192;
  v44[61] = 1065353216;
  v44[62] = -1054867456;
  v44[63] = -1054867456;
  v44[65] = 0;
  v44[66] = 1065353216;
  v44[69] = -1054867456;
  v44[67] = -1054867456;
  v44[68] = -1054867456;
  v44[70] = 0;
  v44[74] = -1054867456;
  v44[71] = 0;
  v44[72] = -1054867456;
  v44[73] = 1092616192;
  v44[75] = 1065353216;
  v44[79] = 1092616192;
  v44[76] = 0;
  v44[77] = -1054867456;
  v44[78] = 1092616192;
  v44[80] = 1065353216;
  v44[84] = -1054867456;
  v44[81] = 1065353216;
  v44[82] = 1092616192;
  v44[83] = 1092616192;
  v44[85] = 0;
  v44[89] = 1092616192;
  v44[86] = 1065353216;
  v44[87] = 1092616192;
  v44[88] = 1092616192;
  v44[90] = 0;
  v44[94] = 1092616192;
  v44[91] = 0;
  v44[92] = -1054867456;
  v44[93] = 1092616192;
  v44[95] = 1065353216;
  v44[99] = -1054867456;
  v44[96] = 0;
  v44[97] = -1054867456;
  v44[98] = 1092616192;
  v44[100] = 0;
  v44[101] = 0;
  v44[104] = 1092616192;
  v44[102] = 1092616192;
  v44[103] = -1054867456;
  v44[105] = 1065353216;
  v44[109] = -1054867456;
  v44[106] = 0;
  v44[108] = -1054867456;
  v44[107] = 1092616192;
  v44[110] = 1065353216;
  v44[114] = -1054867456;
  v44[111] = 1065353216;
  v44[112] = -1054867456;
  v44[113] = -1054867456;
  v44[115] = 0;
  v44[116] = 1065353216;
  v44[118] = -1054867456;
  v44[117] = -1054867456;
  v44[119] = 1092616192;
  v68 = nullptr;
  glitch::video::detail::SMapBufferBase<glitch::video::E_BUFFER_MAP_ACCESS,(glitch::video::E_BUFFER_MAP_ACCESS)4>::reset(
    (glitch::IReferenceCounted *)&v65,
    (int *)&v68);
  if ( v68 )
    glitch::IReferenceCounted::drop(v68);
  if ( ((*((_BYTE *)v71 + 18) & 8) == 0 || (*((_BYTE *)v71 + 18) & 2) != 0) && *((_BYTE *)v71 + 17) != 4 )
    (*(void (__fastcall **)(glitch::IReferenceCounted *, int))(*(_DWORD *)v71 + 12))(v71, 1);
  glitch::video::CVertexStreams::updateStates(*(_DWORD *)(a1 + 328), 0);
  if ( v66 )
  {
    v50 = v65;
    v51 = *((_BYTE *)v65 + 19);
    if ( (v51 & 0x1Fu) <= 1 )
    {
      if ( (*((_BYTE *)v65 + 18) & 0x20) != 0 )
        (*(void (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v65 + 24))(v65);
      *((_BYTE *)v50 + 19) = 0;
    }
    else
    {
      *((_BYTE *)v65 + 19) = ((v51 & 0x1F) - 1) | v51 & 0xE0;
    }
  }
  if ( v65 )
    glitch::IReferenceCounted::drop(v65);
  if ( v71 )
    glitch::IReferenceCounted::drop(v71);
  boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(v75);
  return a1;
}


// ===== 6cff30 glitch::scene::CSkyBoxSceneNode::clone(glitch::scene::ISceneNode *,glitch::scene::CSceneManager *) =====
glitch::scene::ISceneNode *__fastcall glitch::scene::CSkyBoxSceneNode::clone(
        glitch::scene::CSkyBoxSceneNode *this,
        glitch::scene::ISceneNode *a2,
        glitch::scene::CSceneManager *a3)
{
  int *v3; // r4
  _DWORD *v4; // r6
  glitch::scene::ISceneNode *v5; // r5
  int v6; // r3
  glitch::scene::ISceneNode *v7; // r6
  int v8; // r7
  glitch::video::CMaterial *v9; // r2
  glitch::video::CMaterial *v11; // [sp+1Ch] [bp-1Ch] BYREF
  glitch::IReferenceCounted *v12; // [sp+20h] [bp-18h] BYREF
  glitch::IReferenceCounted *v13; // [sp+24h] [bp-14h] BYREF
  glitch::IReferenceCounted *v14; // [sp+28h] [bp-10h] BYREF
  glitch::IReferenceCounted *v15; // [sp+2Ch] [bp-Ch] BYREF
  glitch::IReferenceCounted *v16; // [sp+30h] [bp-8h] BYREF
  glitch::IReferenceCounted *v17; // [sp+34h] [bp-4h] BYREF

  if ( !a3 )
    a3 = *((glitch::scene::CSceneManager **)this + 68);
  v3 = (int *)this;
  v4 = *((_DWORD **)a3 + 5);
  v17 = nullptr;
  v16 = nullptr;
  v15 = nullptr;
  v14 = nullptr;
  v13 = nullptr;
  v12 = nullptr;
  v5 = (glitch::scene::ISceneNode *)operator new(0x174u, 0);
  glitch::scene::CSkyBoxSceneNode::CSkyBoxSceneNode(
    (int)v5,
    v4,
    (int *)&v17,
    (int *)&v16,
    (int *)&v15,
    (int *)&v14,
    (int *)&v13,
    (int *)&v12,
    v3[67]);
  if ( v12 )
    glitch::IReferenceCounted::drop(v12);
  if ( v13 )
    glitch::IReferenceCounted::drop(v13);
  if ( v14 )
    glitch::IReferenceCounted::drop(v14);
  if ( v15 )
    glitch::IReferenceCounted::drop(v15);
  if ( v16 )
    glitch::IReferenceCounted::drop(v16);
  if ( v17 )
    glitch::IReferenceCounted::drop(v17);
  glitch::scene::ISceneNode::cloneMembers(v5, (glitch::scene::ISceneNode *)v3);
  v7 = v5;
  v8 = 0;
  do
  {
    v9 = (glitch::video::CMaterial *)v3[83];
    ++v8;
    v11 = v9;
    if ( v9 )
      v6 = *(_DWORD *)v9;
    ++v3;
    if ( v9 )
    {
      *(_DWORD *)v9 = v6 + 1;
      v9 = v11;
    }
    v11 = *((glitch::video::CMaterial **)v7 + 83);
    *((_DWORD *)v7 + 83) = v9;
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v11);
    v7 = (glitch::scene::ISceneNode *)((char *)v7 + 4);
  }
  while ( v8 != 6 );
  return v5;
}


// ===== 6d0074 glitch::scene::CTerrainSceneNode::getMaterial(uint) =====
glitch::scene::CTerrainSceneNode *__fastcall glitch::scene::CTerrainSceneNode::getMaterial(
        glitch::scene::CTerrainSceneNode *this,
        unsigned int a2)
{
  (*(void (__fastcall **)(glitch::scene::CTerrainSceneNode *, _DWORD))(**(_DWORD **)(a2 + 428) + 24))(
    this,
    *(_DWORD *)(a2 + 428));
  return this;
}


// ===== 6d0098 glitch::scene::CTerrainSceneNode::getMaterialCount(void) =====
int __fastcall glitch::scene::CTerrainSceneNode::getMaterialCount(glitch::scene::CTerrainSceneNode *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 107) + 16))(*((_DWORD *)this + 107));
}


// ===== 6d00b4 glitch::scene::CTerrainSceneNode::getScale(void) =====
char *__fastcall glitch::scene::CTerrainSceneNode::getScale(glitch::scene::CTerrainSceneNode *this)
{
  return (char *)this + 348;
}


// ===== 6d00bc glitch::scene::CTerrainSceneNode::getRotation(void) =====
char *__fastcall glitch::scene::CTerrainSceneNode::getRotation(glitch::scene::CTerrainSceneNode *this)
{
  return (char *)this + 320;
}


// ===== 6d00c4 glitch::scene::CTerrainSceneNode::getPosition(void) =====
char *__fastcall glitch::scene::CTerrainSceneNode::getPosition(glitch::scene::CTerrainSceneNode *this)
{
  return (char *)this + 308;
}


// ===== 6d00cc glitch::scene::CTerrainSceneNode::getType(void) =====
int __fastcall glitch::scene::CTerrainSceneNode::getType(glitch::scene::CTerrainSceneNode *this)
{
  return 1920099700;
}


// ===== 6d00d8 glitch::scene::CTerrainSceneNode::getRenderBuffer(void) =====
_DWORD *__fastcall glitch::scene::CTerrainSceneNode::getRenderBuffer(_DWORD *this, int a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(a2 + 432);
  *this = v2;
  if ( v2 )
    ++*(_DWORD *)(v2 + 4);
  return this;
}


// ===== 6d00f4 glitch::scene::CTerrainSceneNode::STerrainData::STerrainData(int,int,glitch::core::vector3d<float> const&,glitch::core::quaternion const&,glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::scene::CTerrainSceneNode::STerrainData::STerrainData(
        _DWORD *result,
        int a2,
        int a3,
        _DWORD *a4,
        _DWORD *a5,
        _DWORD *a6)
{
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v11; // r1

  *result = 0;
  result[1] = *a4;
  result[2] = a4[1];
  result[3] = a4[2];
  v8 = a5[1];
  v9 = a5[2];
  v10 = a5[3];
  result[4] = *a5;
  result[5] = v8;
  result[6] = v9;
  result[7] = v10;
  result[8] = 0;
  result[9] = 0;
  result[10] = 0;
  result[11] = *a6;
  result[12] = a6[1];
  v11 = a6[2];
  result[16] = 0;
  result[18] = a2 - 1;
  result[13] = v11;
  result[20] = a3;
  result[14] = 0;
  result[15] = 0;
  result[17] = a2;
  result[19] = 0;
  result[21] = 1203982323;
  result[23] = 1203982323;
  result[26] = -943501325;
  result[30] = 0;
  result[22] = 1203982323;
  result[24] = -943501325;
  result[25] = -943501325;
  result[27] = 0;
  result[28] = 0;
  result[29] = 0;
  return result;
}


// ===== 6d01c4 glitch::scene::CTerrainSceneNode::setRotationPivot(glitch::core::vector3d<float> const&) =====
int __fastcall glitch::scene::CTerrainSceneNode::setRotationPivot(int result, _DWORD *a2)
{
  *(_BYTE *)(result + 446) = 0;
  *(_DWORD *)(result + 336) = *a2;
  *(_DWORD *)(result + 340) = a2[1];
  *(_DWORD *)(result + 344) = a2[2];
  return result;
}


// ===== 6d01e8 glitch::scene::CTerrainSceneNode::getBoundingBox(void) =====
char *__fastcall glitch::scene::CTerrainSceneNode::getBoundingBox(glitch::scene::CTerrainSceneNode *this)
{
  return (char *)this + 388;
}


// ===== 6d01f0 glitch::scene::CTerrainSceneNode::loadHeightMapRAW(glitch::io::IReadFile *,int,glitch::video::SColor,int) =====
int glitch::scene::CTerrainSceneNode::loadHeightMapRAW()
{
  return 0;
}


// ===== 6d0200 glitch::scene::CTerrainSceneNode::getBoundingBox(int,int) =====
int __fastcall glitch::scene::CTerrainSceneNode::getBoundingBox(glitch::scene::CTerrainSceneNode *this, int a2, int a3)
{
  return *((_DWORD *)this + 106) + 56 * (a3 + *((_DWORD *)this + 95) * a2) + 4;
}


// ===== 6d021c glitch::scene::CTerrainSceneNode::setLODOfPatch(int,int,int) =====
int __fastcall glitch::scene::CTerrainSceneNode::setLODOfPatch(
        glitch::scene::CTerrainSceneNode *this,
        int a2,
        int a3,
        int a4)
{
  int v4; // r12
  int result; // r0

  v4 = *((_DWORD *)this + 95);
  result = *((_DWORD *)this + 106);
  *(_DWORD *)(result + 56 * (a3 + v4 * a2)) = a4;
  return result;
}


// ===== 6d0238 glitch::scene::CTerrainSceneNode::overrideLODDistance(int,double) =====
int __fastcall glitch::scene::CTerrainSceneNode::overrideLODDistance(
        glitch::scene::CTerrainSceneNode *this,
        int a2,
        double a3)
{
  *((_BYTE *)this + 445) = 1;
  if ( a2 < 0 || a2 >= *((_DWORD *)this + 96) )
    return 0;
  *(double *)(*((_DWORD *)this + 103) + 8 * a2) = a3 * a3;
  return 1;
}


// ===== 6d028c glitch::scene::CTerrainSceneNode::getIndex(int,int,int,uint,uint) =====
unsigned int __fastcall glitch::scene::CTerrainSceneNode::getIndex(
        glitch::scene::CTerrainSceneNode *this,
        int a2,
        int a3,
        int a4,
        unsigned int a5,
        unsigned int a6)
{
  unsigned int v6; // r12
  unsigned int v7; // r4
  int v8; // r7
  int *v9; // r5
  int v10; // r5
  int v11; // r5
  unsigned int v12; // r5
  int v13; // r3
  int v14; // r7
  int *v15; // r6
  int v16; // r7
  int v17; // r3
  int v18; // r3
  unsigned int v19; // r3
  int v20; // r1
  unsigned int v21; // r12
  int v22; // r0
  int v24; // r3
  int v25; // r7
  int *v26; // r6
  int v27; // r7
  int v28; // r8
  int *v29; // r6
  int v30; // r6
  int v31; // r6

  v6 = a6;
  v7 = a5;
  if ( a6 )
  {
    v12 = *((_DWORD *)this + 94);
    if ( v12 == a6 )
    {
      v28 = *((_DWORD *)this + 106);
      v29 = *(int **)(v28 + 56 * a4 + 44);
      if ( v29 )
      {
        v30 = *v29;
        if ( *(_DWORD *)(v28 + 56 * a4) < v30 )
        {
          v31 = 1 << v30;
          if ( (a5 & (v31 - 1)) != 0 )
            v7 = a5 & -v31;
        }
      }
    }
  }
  else
  {
    v8 = *((_DWORD *)this + 106);
    v9 = *(int **)(v8 + 56 * a4 + 40);
    if ( v9 )
    {
      v10 = *v9;
      if ( *(_DWORD *)(v8 + 56 * a4) < v10 )
      {
        v11 = 1 << v10;
        if ( (a5 & (v11 - 1)) != 0 )
          v7 = a5 & -v11;
      }
    }
    v12 = *((_DWORD *)this + 94);
  }
  if ( v7 )
  {
    if ( v12 != v7 )
      goto LABEL_12;
    v24 = 56 * a4;
    v25 = *((_DWORD *)this + 106);
    v26 = *(int **)(v25 + v24 + 48);
    if ( !v26 )
      goto LABEL_12;
    v27 = *(_DWORD *)(v25 + v24);
    v17 = *v26;
    if ( v27 >= *v26 )
      goto LABEL_12;
  }
  else
  {
    v13 = 56 * a4;
    v14 = *((_DWORD *)this + 106);
    v15 = *(int **)(v14 + v13 + 52);
    if ( !v15 )
      goto LABEL_12;
    v16 = *(_DWORD *)(v14 + v13);
    v17 = *v15;
    if ( v16 >= *v15 )
      goto LABEL_12;
  }
  v18 = 1 << v17;
  if ( (a6 & (v18 - 1)) != 0 )
    v6 = a6 & -v18;
LABEL_12:
  v19 = *((_DWORD *)this + 93);
  v20 = a2 * v12;
  if ( v6 >= v19 )
    v6 = v12;
  v21 = v6 + a3 * v12;
  v22 = *((_DWORD *)this + 76);
  if ( v7 >= v19 )
    v7 = v12;
  return v20 + v22 * v21 + v7;
}


// ===== 6d03f0 glitch::scene::CTerrainSceneNode::setCurrentLODOfPatches(int) =====
int __fastcall glitch::scene::CTerrainSceneNode::setCurrentLODOfPatches(int this, int a2)
{
  int v2; // r3
  int v3; // r2
  int i; // r12

  v2 = *(_DWORD *)(this + 380) * *(_DWORD *)(this + 380);
  if ( v2 > 0 )
  {
    v3 = 0;
    for ( i = 0; i != v2; ++i )
    {
      *(_DWORD *)(*(_DWORD *)(this + 424) + v3) = a2;
      v3 += 56;
    }
  }
  return this;
}


// ===== 6d042c glitch::scene::CTerrainSceneNode::setCurrentLODOfPatches(std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
int __fastcall glitch::scene::CTerrainSceneNode::setCurrentLODOfPatches(int result, _DWORD *a2)
{
  int v2; // r3
  int v3; // r12
  int i; // r2
  int v5; // r5

  v2 = *(_DWORD *)(result + 380) * *(_DWORD *)(result + 380);
  if ( v2 > 0 )
  {
    v3 = 0;
    for ( i = 0; i != v2; ++i )
    {
      v5 = *(_DWORD *)(*a2 + 4 * i);
      *(_DWORD *)(*(_DWORD *)(result + 424) + v3) = v5;
      v3 += 56;
    }
  }
  return result;
}


// ===== 6d0470 glitch::scene::CTerrainSceneNode::preRenderIndicesCalculationsDirect<ushort>(ushort *) =====
int __fastcall glitch::scene::CTerrainSceneNode::preRenderIndicesCalculationsDirect<unsigned short>(int this, int a2)
{
  int v2; // r3
  int v3; // r10
  int v4; // r5
  int i; // r7
  int v7; // r8
  int v8; // r2
  signed int v9; // r12
  signed int v10; // r11
  signed int v11; // r4
  unsigned int v12; // r9
  __int16 v13; // r0
  int v14; // r1
  int v15; // r9
  int v16; // r3
  int v17; // [sp+8h] [bp-2Ch]
  int v18; // [sp+Ch] [bp-28h]
  __int16 Index; // [sp+18h] [bp-1Ch]
  unsigned int v20; // [sp+1Ch] [bp-18h]
  __int16 v21; // [sp+20h] [bp-14h]
  __int16 v22; // [sp+24h] [bp-10h]
  int v23; // [sp+28h] [bp-Ch]
  int v24; // [sp+2Ch] [bp-8h]

  v2 = *(_DWORD *)(this + 380);
  v3 = 0;
  v4 = this;
  *(_DWORD *)(this + 440) = 0;
  if ( v2 > 0 )
  {
    do
    {
      for ( i = 0; i < v2; ++i )
      {
        v7 = i + v3 * v2;
        this = 56;
        v8 = *(_DWORD *)(*(_DWORD *)(v4 + 424) + 56 * v7);
        if ( v8 >= 0 )
        {
          v24 = 1 << v8;
          v9 = *(_DWORD *)(v4 + 376);
          v10 = 0;
          v20 = 1 << v8;
LABEL_5:
          v11 = 0;
          while ( 1 )
          {
            this = v4;
            v12 = v11;
            if ( v9 <= v10 )
              break;
            Index = glitch::scene::CTerrainSceneNode::getIndex(
                      (glitch::scene::CTerrainSceneNode *)v4,
                      i,
                      v3,
                      v7,
                      v11,
                      v10);
            v11 += v24;
            v22 = glitch::scene::CTerrainSceneNode::getIndex(
                    (glitch::scene::CTerrainSceneNode *)v4,
                    i,
                    v3,
                    v7,
                    v11,
                    v10);
            v21 = glitch::scene::CTerrainSceneNode::getIndex(
                    (glitch::scene::CTerrainSceneNode *)v4,
                    i,
                    v3,
                    v7,
                    v12,
                    v20);
            v13 = glitch::scene::CTerrainSceneNode::getIndex(
                    (glitch::scene::CTerrainSceneNode *)v4,
                    i,
                    v3,
                    v7,
                    v11,
                    v20);
            v14 = *(_DWORD *)(v4 + 440) + 3;
            v18 = *(_DWORD *)(v4 + 440) + 5;
            v17 = 2 * (*(_DWORD *)(v4 + 440) + 4);
            v23 = 2 * (*(_DWORD *)(v4 + 440) + 1);
            v15 = 2 * (*(_DWORD *)(v4 + 440) + 2);
            *(_WORD *)(a2 + 2 * *(_DWORD *)(v4 + 440)) = v21;
            *(_WORD *)(a2 + v23) = Index;
            *(_WORD *)(a2 + v15) = v13;
            *(_WORD *)(a2 + 2 * v14) = v13;
            *(_WORD *)(a2 + v17) = Index;
            *(_WORD *)(a2 + 2 * v18) = v22;
            v9 = *(_DWORD *)(v4 + 376);
            *(_DWORD *)(v4 + 440) = v18 + 1;
            if ( v9 <= v11 )
            {
              v20 += v24;
              v10 += v24;
              goto LABEL_5;
            }
          }
          v2 = *(_DWORD *)(v4 + 380);
        }
      }
      ++v3;
    }
    while ( v2 > v3 && v2 > 0 );
  }
  if ( *(_BYTE *)(v4 + 444) )
  {
    v16 = *(_DWORD *)(v4 + 276);
    if ( v16 )
      return (*(int (__fastcall **)(_DWORD, int, int))(*(_DWORD *)v16 + 28))(*(_DWORD *)(v4 + 276), v4, -1);
  }
  return this;
}


// ===== 6d0660 glitch::scene::CTerrainSceneNode::preRenderIndicesCalculationsDirect<uint>(uint *) =====
int __fastcall glitch::scene::CTerrainSceneNode::preRenderIndicesCalculationsDirect<unsigned int>(int this, int a2)
{
  int v2; // r3
  int v3; // r10
  int v4; // r5
  int i; // r7
  int v7; // r8
  int v8; // r2
  signed int v9; // r12
  signed int v10; // r11
  signed int v11; // r4
  unsigned int v12; // r9
  unsigned int v13; // r0
  int v14; // r1
  int v15; // r3
  unsigned int Index; // [sp+14h] [bp-18h]
  unsigned int v17; // [sp+18h] [bp-14h]
  unsigned int v18; // [sp+1Ch] [bp-10h]
  unsigned int v19; // [sp+20h] [bp-Ch]
  int v20; // [sp+24h] [bp-8h]

  v2 = *(_DWORD *)(this + 380);
  v3 = 0;
  v4 = this;
  *(_DWORD *)(this + 440) = 0;
  if ( v2 > 0 )
  {
    do
    {
      for ( i = 0; i < v2; ++i )
      {
        v7 = i + v3 * v2;
        this = 56;
        v8 = *(_DWORD *)(*(_DWORD *)(v4 + 424) + 56 * v7);
        if ( v8 >= 0 )
        {
          v20 = 1 << v8;
          v9 = *(_DWORD *)(v4 + 376);
          v10 = 0;
          v17 = 1 << v8;
LABEL_5:
          v11 = 0;
          while ( 1 )
          {
            this = v4;
            v12 = v11;
            if ( v9 <= v10 )
              break;
            Index = glitch::scene::CTerrainSceneNode::getIndex(
                      (glitch::scene::CTerrainSceneNode *)v4,
                      i,
                      v3,
                      v7,
                      v11,
                      v10);
            v11 += v20;
            v19 = glitch::scene::CTerrainSceneNode::getIndex(
                    (glitch::scene::CTerrainSceneNode *)v4,
                    i,
                    v3,
                    v7,
                    v11,
                    v10);
            v18 = glitch::scene::CTerrainSceneNode::getIndex(
                    (glitch::scene::CTerrainSceneNode *)v4,
                    i,
                    v3,
                    v7,
                    v12,
                    v17);
            v13 = glitch::scene::CTerrainSceneNode::getIndex(
                    (glitch::scene::CTerrainSceneNode *)v4,
                    i,
                    v3,
                    v7,
                    v11,
                    v17);
            v14 = *(_DWORD *)(v4 + 440);
            *(_DWORD *)(a2 + 4 * v14) = v18;
            *(_DWORD *)(a2 + 4 * (v14 + 1)) = Index;
            *(_DWORD *)(a2 + 4 * (v14 + 2)) = v13;
            *(_DWORD *)(a2 + 4 * (v14 + 3)) = v13;
            *(_DWORD *)(a2 + 4 * (v14 + 4)) = Index;
            *(_DWORD *)(a2 + 4 * (v14 + 5)) = v19;
            v9 = *(_DWORD *)(v4 + 376);
            *(_DWORD *)(v4 + 440) = v14 + 6;
            if ( v11 >= v9 )
            {
              v17 += v20;
              v10 += v20;
              goto LABEL_5;
            }
          }
          v2 = *(_DWORD *)(v4 + 380);
        }
      }
      ++v3;
    }
    while ( v2 > v3 && v2 > 0 );
  }
  if ( *(_BYTE *)(v4 + 444) )
  {
    v15 = *(_DWORD *)(v4 + 276);
    if ( v15 )
      return (*(int (__fastcall **)(_DWORD, int, int))(*(_DWORD *)v15 + 28))(*(_DWORD *)(v4 + 276), v4, -1);
  }
  return this;
}


// ===== 6d081c `global constructor keyed to'.._source_glitch_scene_CTerrainSceneNode.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CTerrainSceneNode.cpp()
{
  dword_9F7EA8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7EA4 = 1056964608;
}


// ===== 6d083c glitch::scene::CTerrainSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CTerrainSceneNode::serializeAttributes(_DWORD *a1, int a2, _DWORD *a3)
{
  glitch::scene::ISceneNode::serializeAttributes((int)a1, a2, a3);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 124))(a2, "Heightmap", a1[129], 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "TextureScale1", a1[122], 0);
  return (*(int (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(
           a2,
           "TextureScale2",
           a1[123],
           0);
}


// ===== 6d08bc std::vector<double,glitch::core::SAllocator<double,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(double *,uint,double const&,std::__false_type const&) =====
int __fastcall std::vector<double,glitch::core::SAllocator<double,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        __int64 a1,
        unsigned int a2,
        char *a3)
{
  bool v4; // cf
  __int64 v5; // kr00_8
  char *v7; // r7
  size_t v8; // r2
  int v9; // r8
  int v10; // r8
  char *v11; // r3
  char *v12; // r10
  int v13; // r8
  int k; // r2
  int v15; // r1
  unsigned int v16; // r3
  int v17; // r9
  char *v18; // r0
  int i; // r1
  int v20; // r12
  int j; // r3
  int v22; // r2
  __int64 v24; // [sp+8h] [bp-14h] BYREF

  v4 = (unsigned int)a3 >= *(_DWORD *)a1;
  v5 = a1;
  if ( v4 )
  {
    v7 = *(char **)(a1 + 4);
    if ( a3 < v7 )
    {
      v24 = *(_QWORD *)a3;
      LODWORD(a1) = std::vector<double,glitch::core::SAllocator<double,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
                      a1,
                      HIDWORD(a1),
                      a2,
                      &v24);
      return a1;
    }
  }
  else
  {
    v7 = *(char **)(a1 + 4);
  }
  v8 = (size_t)&v7[-HIDWORD(a1)];
  v9 = (int)&v7[-HIDWORD(a1)] >> 3;
  if ( a2 >= v9 )
  {
    v16 = a2 - v9;
    v17 = (int)(8 * v16) >> 3;
    v18 = &v7[8 * v16];
    if ( v17 > 0 )
    {
      for ( i = 0; i != v17; ++i )
      {
        v20 = 8 * i;
        *(_QWORD *)&v7[v20] = *(_QWORD *)a3;
      }
    }
    *(_DWORD *)(v5 + 4) = v18;
    if ( (char *)HIDWORD(v5) != v7 )
    {
      memcpy(v18, (const void *)HIDWORD(v5), v8);
      v18 = *(char **)(v5 + 4);
    }
    LODWORD(a1) = &v18[8 * v9];
    *(_DWORD *)(v5 + 4) = a1;
    if ( v9 > 0 )
    {
      for ( j = 0; j != v9; ++j )
      {
        v22 = 8 * j;
        a1 = *(_QWORD *)a3;
        *(_QWORD *)(HIDWORD(v5) + v22) = *(_QWORD *)a3;
      }
    }
  }
  else
  {
    v10 = 8 * a2;
    v11 = &v7[-8 * a2];
    if ( v11 == v7 )
    {
      v12 = v7;
    }
    else
    {
      v12 = v11;
      LODWORD(a1) = memcpy(v7, v11, v7 - v11);
      v11 = *(char **)(v5 + 4);
    }
    *(_DWORD *)(v5 + 4) = &v11[v10];
    if ( (int)&v12[-HIDWORD(v5)] > 0 )
      LODWORD(a1) = memmove((void *)(v7 - &v12[-HIDWORD(v5)]), (const void *)HIDWORD(v5), (size_t)&v12[-HIDWORD(v5)]);
    v13 = v10 >> 3;
    if ( v13 > 0 )
    {
      for ( k = 0; k != v13; ++k )
      {
        v15 = 8 * k;
        *(_QWORD *)(HIDWORD(v5) + v15) = *(_QWORD *)a3;
      }
    }
  }
  return a1;
}


// ===== 6d0a10 std::vector<uint,glitch::core::SAllocator<uint,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(uint *,uint,uint const&,std::__false_type const&) =====
char *__fastcall std::vector<unsigned int,glitch::core::SAllocator<unsigned int,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        char *result,
        char *a2,
        unsigned int a3,
        char *a4)
{
  bool v5; // cf
  char *v6; // r4
  char *v9; // r7
  size_t v10; // r2
  int v11; // r8
  int v12; // r8
  char *v13; // r3
  char *v14; // r10
  int v15; // r8
  int k; // r2
  unsigned int v17; // r3
  int v18; // r10
  char *v19; // r0
  int i; // r1
  int j; // r3

  v5 = (unsigned int)a4 >= *(_DWORD *)result;
  v6 = result;
  if ( v5 )
  {
    v9 = *((char **)result + 1);
    if ( a4 < v9 )
      return (char *)std::vector<unsigned int,glitch::core::SAllocator<unsigned int,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(result);
  }
  else
  {
    v9 = *((char **)result + 1);
  }
  v10 = v9 - a2;
  v11 = (v9 - a2) >> 2;
  if ( a3 >= v11 )
  {
    v17 = a3 - v11;
    v18 = (int)(4 * v17) >> 2;
    v19 = &v9[4 * v17];
    if ( v18 > 0 )
    {
      for ( i = 0; i != v18; ++i )
        *(_DWORD *)&v9[4 * i] = *(_DWORD *)a4;
    }
    *((_DWORD *)v6 + 1) = v19;
    if ( a2 != v9 )
    {
      memcpy(v19, a2, v10);
      v19 = *((char **)v6 + 1);
    }
    result = &v19[4 * v11];
    *((_DWORD *)v6 + 1) = result;
    if ( v11 > 0 )
    {
      for ( j = 0; j != v11; ++j )
        *(_DWORD *)&a2[4 * j] = *(_DWORD *)a4;
    }
  }
  else
  {
    v12 = 4 * a3;
    v13 = &v9[-4 * a3];
    if ( v13 == v9 )
    {
      v14 = v9;
    }
    else
    {
      v14 = v13;
      result = (char *)memcpy(v9, v13, v9 - v13);
      v13 = *((char **)v6 + 1);
    }
    *((_DWORD *)v6 + 1) = &v13[v12];
    if ( v14 - a2 > 0 )
      result = (char *)memmove(&v9[-(v14 - a2)], a2, v14 - a2);
    v15 = v12 >> 2;
    if ( v15 > 0 )
    {
      for ( k = 0; k != v15; ++k )
        *(_DWORD *)&a2[4 * k] = *(_DWORD *)a4;
    }
  }
  return result;
}


// ===== 6d0b58 std::vector<double,glitch::core::SAllocator<double,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<double,glitch::core::SAllocator<double,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
        _DWORD *a1,
        unsigned int a2)
{
  unsigned int v2; // r4
  unsigned int result; // r0

  v2 = (a1[1] - *a1) >> 3;
  if ( 0x1FFFFFFF - v2 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer("vector");
  if ( v2 < a2 )
    result = v2 + a2;
  else
    result = 2 * v2;
  if ( result > 0x1FFFFFFF || result < v2 )
    return 0x1FFFFFFF;
  return result;
}


// ===== 6d0bb8 std::vector<uint,glitch::core::SAllocator<uint,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<unsigned int,glitch::core::SAllocator<unsigned int,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
        _DWORD *a1,
        unsigned int a2)
{
  unsigned int v2; // r4
  unsigned int result; // r0

  v2 = (a1[1] - *a1) >> 2;
  if ( 0x3FFFFFFF - v2 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer("vector");
  if ( v2 < a2 )
    result = v2 + a2;
  else
    result = 2 * v2;
  if ( result > 0x3FFFFFFF || result < v2 )
    return 0x3FFFFFFF;
  return result;
}


// ===== 6d0c18 std::vector<double,glitch::core::SAllocator<double,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<double *>(uint &,double *,double *) =====
void *__fastcall std::vector<double,glitch::core::SAllocator<double,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<double *>(
        int a1,
        _DWORD *a2,
        _BYTE *a3,
        _BYTE *a4)
{
  void *v6; // r0
  void *v7; // r5

  v6 = GlitchAlloc(8 * *a2, 0);
  v7 = v6;
  if ( a3 != a4 )
    memcpy(v6, a3, a4 - a3);
  return v7;
}


// ===== 6d0c54 std::vector<double,glitch::core::SAllocator<double,(glitch::memory::E_MEMORY_HINT)0>>::reserve(uint) =====
void __fastcall std::vector<double,glitch::core::SAllocator<double,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
        int a1,
        unsigned int a2)
{
  _BYTE *v3; // r2
  int v4; // r0
  _BYTE *v5; // r3
  int v6; // r5
  char *v7; // r6
  unsigned int v8; // r3
  unsigned int v9; // [sp+4h] [bp-4h] BYREF

  v3 = *(_BYTE **)a1;
  v4 = *(_DWORD *)(a1 + 8);
  v9 = a2;
  if ( a2 > (v4 - (int)v3) >> 3 )
  {
    if ( a2 > 0x1FFFFFFF )
    {
      __ZSt24__stl_throw_length_errorPKc_veneer("vector");
      v3 = *(_BYTE **)a1;
    }
    v5 = *(_BYTE **)(a1 + 4);
    v6 = (v5 - v3) >> 3;
    if ( v3 )
    {
      v7 = (char *)std::vector<double,glitch::core::SAllocator<double,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<double *>(
                     a1,
                     &v9,
                     v3,
                     v5);
      GlitchFree(*(void **)a1);
    }
    else
    {
      v7 = (char *)GlitchAlloc(8 * v9, 0);
    }
    v8 = v9;
    *(_DWORD *)(a1 + 4) = &v7[8 * v6];
    *(_DWORD *)(a1 + 8) = &v7[8 * v8];
    *(_DWORD *)a1 = v7;
  }
}


// ===== 6d0cfc glitch::scene::CTerrainSceneNode::createPatches(void) =====
char *__fastcall glitch::scene::CTerrainSceneNode::createPatches(glitch::scene::CTerrainSceneNode *this)
{
  int v2; // r0
  void *v3; // r3
  int v4; // r4
  char *result; // r0
  int v6; // r1
  char *v7; // r3

  v2 = (*((_DWORD *)this + 76) - 1) / *((_DWORD *)this + 94);
  v3 = *((void **)this + 106);
  *((_DWORD *)this + 95) = v2;
  if ( v3 )
  {
    operator delete[](v3);
    v2 = *((_DWORD *)this + 95);
  }
  v4 = v2 * v2;
  result = (char *)operator new[](56 * v2 * v2, 0);
  if ( v4 )
  {
    v6 = 0;
    v7 = result + 56;
    do
    {
      ++v6;
      *((_DWORD *)v7 - 14) = -1;
      *((_DWORD *)v7 - 13) = -1082130432;
      *((_DWORD *)v7 - 12) = -1082130432;
      *((_DWORD *)v7 - 11) = -1082130432;
      *((_DWORD *)v7 - 10) = 1065353216;
      *((_DWORD *)v7 - 9) = 1065353216;
      *((_DWORD *)v7 - 8) = 1065353216;
      *((_DWORD *)v7 - 7) = 0;
      *((_DWORD *)v7 - 6) = 0;
      *((_DWORD *)v7 - 5) = 0;
      *((_DWORD *)v7 - 4) = 0;
      *((_DWORD *)v7 - 3) = 0;
      *((_DWORD *)v7 - 2) = 0;
      *((_DWORD *)v7 - 1) = 0;
      v7 += 56;
    }
    while ( v4 != v6 );
  }
  *((_DWORD *)this + 106) = result;
  return result;
}


// ===== 6d0dbc glitch::scene::CTerrainSceneNode::preRenderLODCalculations(void) =====
int __fastcall glitch::scene::CTerrainSceneNode::preRenderLODCalculations(glitch::scene::CTerrainSceneNode *this)
{
  int v1; // r7
  void (__fastcall *v3)(int, glitch::scene::CTerrainSceneNode *, glitch::video::CMaterial **, int, int, _DWORD, int); // r5
  float *v4; // r0
  float v5; // r5
  float v6; // r4
  float v7; // r5
  float v8; // r4
  float v9; // lr
  float v10; // r12
  float v11; // r1
  int v12; // r2
  int v13; // r3
  double v14; // r0
  float *v15; // r11
  int v16; // r10
  int i; // r9
  int v18; // r5
  int v19; // r4
  int v20; // r12
  int v21; // r7
  float v22; // r4
  int v23; // r4
  bool v24; // r5
  float v25; // r7
  float v27; // [sp+20h] [bp-44h]
  double v28; // [sp+20h] [bp-44h]
  int v29; // [sp+2Ch] [bp-38h]
  int v30; // [sp+30h] [bp-34h]
  float v31[3]; // [sp+38h] [bp-2Ch] BYREF
  float v32; // [sp+44h] [bp-20h] BYREF
  float v33; // [sp+48h] [bp-1Ch]
  int v34; // [sp+4Ch] [bp-18h]
  float v35; // [sp+50h] [bp-14h] BYREF
  float v36; // [sp+54h] [bp-10h]
  float v37; // [sp+58h] [bp-Ch]
  glitch::video::CMaterial *v38[2]; // [sp+5Ch] [bp-8h] BYREF

  v1 = *((_DWORD *)this + 68);
  v3 = *(void (__fastcall **)(int, glitch::scene::CTerrainSceneNode *, glitch::video::CMaterial **, int, int, _DWORD, int))(*(_DWORD *)v1 + 36);
  (*(void (__fastcall **)(glitch::video::CMaterial **, _DWORD, _DWORD))(**((_DWORD **)this + 107) + 24))(
    v38,
    *((_DWORD *)this + 107),
    0);
  v3(v1, this, v38, 1, 3, 0, 0x7FFFFFFF);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v38);
  glitch::scene::ISceneNode::getAbsolutePosition(&v35, *(_DWORD **)(*((_DWORD *)this + 68) + 228));
  v4 = (float *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(*((_DWORD *)this + 68) + 228) + 264))(*(_DWORD *)(*((_DWORD *)this + 68) + 228));
  v5 = v4[1];
  v6 = v4[2];
  v31[0] = *v4 - v35;
  v31[1] = v5 - v36;
  v31[2] = v6 - v37;
  glitch::core::vector3d<float>::getHorizontalAngle(&v32, v31);
  v7 = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(**(_DWORD **)(*((_DWORD *)this + 68) + 228) + 296))(*(_DWORD *)(*((_DWORD *)this + 68) + 228)));
  if ( *((_BYTE *)this + 447)
    || *((float *)this + 120) <= fabs(v32 - *((float *)this + 115))
    || *((float *)this + 120) <= fabs(v33 - *((float *)this + 116)) )
  {
    v8 = v35;
  }
  else
  {
    v8 = v35;
    v25 = *((float *)this + 119);
    if ( v25 > fabs(v35 - *((float *)this + 112))
      && v25 > fabs(v36 - *((float *)this + 113))
      && v25 > fabs(v37 - *((float *)this + 114)) )
    {
      LODWORD(v14) = *((float *)this + 121) > fabs(v7 - *((float *)this + 118));
      if ( LODWORD(v14) )
        return LODWORD(v14);
    }
  }
  v9 = v36;
  v10 = v37;
  v11 = v33;
  v12 = v34;
  v13 = *((_DWORD *)this + 68);
  *((float *)this + 115) = v32;
  *((float *)this + 112) = v8;
  *((float *)this + 113) = v9;
  *((float *)this + 114) = v10;
  *((float *)this + 116) = v11;
  *((_DWORD *)this + 117) = v12;
  *((float *)this + 118) = v7;
  LODWORD(v14) = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v13 + 228) + 324))(*(_DWORD *)(v13 + 228));
  v15 = (float *)LODWORD(v14);
  v30 = *((_DWORD *)this + 95) * *((_DWORD *)this + 95);
  if ( v30 > 0 )
  {
    v16 = 0;
    for ( i = 0; i != v30; ++i )
    {
      v18 = *((_DWORD *)this + 106);
      v19 = v18 + v16;
      LODWORD(v14) = v15[27] <= *(float *)(v18 + v16 + 16);
      v29 = v18;
      if ( v15[27] > *(float *)(v18 + v16 + 16)
        || (LODWORD(v14) = v15[28] <= *(float *)(v19 + 20), v15[28] > *(float *)(v19 + 20))
        || (LODWORD(v14) = v15[29] <= *(float *)(v19 + 24), v15[29] > *(float *)(v19 + 24))
        || (LODWORD(v14) = v15[30] >= *(float *)(v19 + 4), v15[30] < *(float *)(v19 + 4))
        || (LODWORD(v14) = v15[31] >= *(float *)(v19 + 8), v15[31] < *(float *)(v19 + 8))
        || (LODWORD(v14) = v15[32] >= *(float *)(v19 + 12), v15[32] < *(float *)(v19 + 12)) )
      {
        *(_DWORD *)v19 = -1;
      }
      else
      {
        v20 = *((_DWORD *)this + 96);
        HIDWORD(v14) = *(_DWORD *)(v19 + 36);
        v27 = *(float *)(v19 + 28);
        v21 = v20 - 1;
        v22 = *(float *)(v19 + 32);
        *(float *)&v14 = v37;
        if ( v20 - 1 >= 0 )
        {
          v28 = (float)((float)((float)((float)(v35 - v27) * (float)(v35 - v27))
                              + (float)((float)(v36 - v22) * (float)(v36 - v22)))
                      + (float)((float)(v37 - *((float *)&v14 + 1)) * (float)(v37 - *((float *)&v14 + 1))));
          LODWORD(v14) = v28 >= *(double *)(8 * v21 + *((_DWORD *)this + 103));
          if ( v28 >= *(double *)(8 * v21 + *((_DWORD *)this + 103)) )
          {
LABEL_20:
            *(_DWORD *)(v29 + v16) = v21;
          }
          else
          {
            v23 = 8 * (v20 - 2);
            while ( 1 )
            {
              --v21;
              v14 = v28;
              *(_DWORD *)(v18 + v16) = 0;
              if ( v21 == -1 )
                break;
              LODWORD(v14) = v28 >= *(double *)(*((_DWORD *)this + 103) + v23);
              v24 = v28 >= *(double *)(*((_DWORD *)this + 103) + v23);
              v23 -= 8;
              if ( v24 )
              {
                v29 = *((_DWORD *)this + 106);
                goto LABEL_20;
              }
              v18 = *((_DWORD *)this + 106);
            }
          }
        }
      }
      v16 += 56;
    }
  }
  return LODWORD(v14);
}


// ===== 6d11d4 glitch::scene::CMeshBuffer::CMeshBuffer(uint,glitch::video::CPrimitiveStream const&,bool) [clone] =====
glitch::scene::CMeshBuffer *__fastcall glitch::scene::CMeshBuffer::CMeshBuffer(
        glitch::scene::CMeshBuffer *this,
        unsigned int a2,
        const glitch::video::CPrimitiveStream *a3,
        bool a4)
{
  int v6; // r3
  glitch::scene::CMeshBuffer *result; // r0
  __int16 v8; // r5

  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *(_DWORD *)this = off_988098;
  glitch::video::CVertexStreams::allocate((glitch::video::CVertexStreams **)this + 5, a2);
  v6 = *(_DWORD *)a3;
  result = this;
  *((_DWORD *)this + 6) = *(_DWORD *)a3;
  if ( v6 )
    ++*(_DWORD *)(v6 + 4);
  *((_DWORD *)this + 7) = *((_DWORD *)a3 + 1);
  *((_DWORD *)this + 8) = *((_DWORD *)a3 + 2);
  *((_DWORD *)this + 9) = *((_DWORD *)a3 + 3);
  *((_DWORD *)this + 10) = *((_DWORD *)a3 + 4);
  *((_WORD *)this + 22) = *((_WORD *)a3 + 10);
  v8 = *((_WORD *)a3 + 11);
  *((_BYTE *)this + 52) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_WORD *)this + 23) = v8;
  return result;
}


// ===== 6d1278 std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block()
{
  ;
}


// ===== 6d127c glitch::scene::CTerrainSceneNode::~CTerrainSceneNode() =====
void __fastcall glitch::scene::CTerrainSceneNode::~CTerrainSceneNode(glitch::scene::CTerrainSceneNode *this, int *a2)
{
  int v2; // r3
  void *v5; // r0
  glitch::IReferenceCounted *v6; // r0
  char *v7; // r0
  glitch::IReferenceCounted *v8; // r0
  glitch::IReferenceCounted *v9; // r0
  void *v10; // r0

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 28)) = a2[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[5];
  v5 = *((void **)this + 106);
  if ( v5 )
    operator delete[](v5);
  v6 = *((glitch::IReferenceCounted **)this + 130);
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  v7 = *((char **)this + 129);
  if ( v7 != (char *)this + 496 && v7 )
    GlitchFree(v7);
  v8 = *((glitch::IReferenceCounted **)this + 108);
  if ( v8 )
    glitch::IReferenceCounted::drop(v8);
  v9 = *((glitch::IReferenceCounted **)this + 107);
  if ( v9 )
    glitch::IReferenceCounted::drop(v9);
  v10 = *((void **)this + 103);
  if ( v10 )
    GlitchFree(v10);
  glitch::scene::ISceneNode::~ISceneNode(this, a2 + 1);
}


// ===== 6d132c glitch::scene::CTerrainSceneNode::~CTerrainSceneNode() =====
void __fastcall glitch::scene::CTerrainSceneNode::~CTerrainSceneNode(glitch::scene::CTerrainSceneNode *this)
{
  void *v2; // r0
  glitch::IReferenceCounted *v3; // r0
  char *v4; // r0
  glitch::IReferenceCounted *v5; // r0
  glitch::IReferenceCounted *v6; // r0
  void *v7; // r0

  v2 = *((void **)this + 106);
  *(_DWORD *)this = off_989F84;
  *((_DWORD *)this + 131) = off_98A090;
  if ( v2 )
    operator delete[](v2);
  v3 = *((glitch::IReferenceCounted **)this + 130);
  if ( v3 )
    glitch::IReferenceCounted::drop(v3);
  v4 = *((char **)this + 129);
  if ( v4 != (char *)this + 496 && v4 )
    GlitchFree(v4);
  v5 = *((glitch::IReferenceCounted **)this + 108);
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  v6 = *((glitch::IReferenceCounted **)this + 107);
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  v7 = *((void **)this + 103);
  if ( v7 )
    GlitchFree(v7);
  glitch::scene::ISceneNode::~ISceneNode(this, (int *)off_98A0A4);
}


// ===== 6d13e8 glitch::scene::CTerrainSceneNode::~CTerrainSceneNode() =====
void __fastcall glitch::scene::CTerrainSceneNode::~CTerrainSceneNode(glitch::scene::CTerrainSceneNode *this)
{
  glitch::scene::CTerrainSceneNode::~CTerrainSceneNode(this);
  LC_API_FREE_0(this);
}


// ===== 6d1404 std::vector<uint,glitch::core::SAllocator<uint,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(uint *,uint,uint const&) =====
void __fastcall std::vector<unsigned int,glitch::core::SAllocator<unsigned int,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
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
  char *v15; // r0
  char *v16; // r6

  if ( a3 )
  {
    if ( a3 <= (*(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4)) >> 2 )
    {
      std::vector<unsigned int,glitch::core::SAllocator<unsigned int,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        (char *)a1,
        a2,
        a3,
        a4);
    }
    else
    {
      v8 = 4
         * std::vector<unsigned int,glitch::core::SAllocator<unsigned int,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
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
      if ( v14 == a2 )
        v16 = v15;
      else
        v16 = (char *)memmove(v15, a2, v14 - a2) + v14 - a2;
      GlitchFree(*(void **)a1);
      *(_DWORD *)(a1 + 4) = v16;
      *(_DWORD *)(a1 + 8) = &v10[v8];
      *(_DWORD *)a1 = v10;
    }
  }
}


// ===== 6d14d4 std::vector<uint,glitch::core::SAllocator<uint,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,uint const&) =====
void __fastcall std::vector<unsigned int,glitch::core::SAllocator<unsigned int,(glitch::memory::E_MEMORY_HINT)0>>::resize(
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
    std::vector<unsigned int,glitch::core::SAllocator<unsigned int,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
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


// ===== 6d1518 std::vector<double,glitch::core::SAllocator<double,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(double *,double const&,std::__true_type const&,uint,bool) =====
void __fastcall std::vector<double,glitch::core::SAllocator<double,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        const void **a1,
        _BYTE *a2,
        _QWORD *a3,
        int a4,
        unsigned int a5,
        char a6)
{
  size_t v9; // r8
  char *v10; // r0
  char *v11; // r7
  size_t v12; // r10
  char *v13; // r12
  char *v14; // r10
  unsigned int v15; // r2
  int v16; // r3
  size_t v17; // r4

  v9 = 8
     * std::vector<double,glitch::core::SAllocator<double,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
         a1,
         a5);
  v10 = (char *)GlitchAlloc(v9, 0);
  v11 = v10;
  if ( a2 == *a1 )
  {
    v13 = v10;
  }
  else
  {
    v12 = a2 - (_BYTE *)*a1;
    v13 = (char *)memmove(v10, *a1, v12) + v12;
  }
  v14 = v13;
  if ( a5 )
  {
    v15 = a5;
    v16 = 0;
    do
    {
      --v15;
      *(_QWORD *)&v13[v16] = *a3;
      v16 += 8;
    }
    while ( v15 );
    v14 = &v13[8 * a5];
  }
  if ( !a6 )
  {
    v17 = (_BYTE *)a1[1] - a2;
    if ( v17 )
      v14 = (char *)memmove(v14, a2, v17) + v17;
  }
  GlitchFree((void *)*a1);
  a1[2] = &v11[v9];
  *a1 = v11;
  a1[1] = v14;
}


// ===== 6d15d8 std::vector<double,glitch::core::SAllocator<double,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(double *,uint,double const&) =====
void __fastcall std::vector<double,glitch::core::SAllocator<double,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        __int64 a1,
        unsigned int a2,
        char *a3)
{
  _BYTE v3[4]; // [sp+8h] [bp-Ch] BYREF

  if ( a2 )
  {
    if ( a2 <= (*(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4)) >> 3 )
      std::vector<double,glitch::core::SAllocator<double,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        a2,
        a3);
    else
      std::vector<double,glitch::core::SAllocator<double,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)a1,
        (_BYTE *)HIDWORD(a1),
        a3,
        (int)v3,
        a2,
        0);
  }
}


// ===== 6d162c glitch::core::quaternion::getMatrix(void) =====
glitch::core::quaternion *__fastcall glitch::core::quaternion::getMatrix(glitch::core::quaternion *this, float *a2)
{
  *((_BYTE *)this + 64) = 0;
  glitch::core::quaternion::getMatrix_transposed(a2, (int)this);
  return this;
}


// ===== 6d1650 glitch::scene::CTerrainSceneNode::calculateDistanceThresholds(bool) =====
int __fastcall glitch::scene::CTerrainSceneNode::calculateDistanceThresholds(__int64 this)
{
  int v1; // r4
  int v2; // r3
  const void **v3; // r8
  double v4; // r6
  int i; // r3
  int v6; // r5
  double v7; // r2
  double *v8; // r0
  double *v9; // r1
  double v11; // [sp+8h] [bp-1Ch] BYREF
  _DWORD v12[3]; // [sp+10h] [bp-14h] BYREF
  char v13[8]; // [sp+1Ch] [bp-8h] BYREF

  v1 = this;
  if ( !*(_BYTE *)(this + 445) )
  {
    HIDWORD(this) = *(_DWORD *)(this + 416);
    v2 = *(_DWORD *)(this + 412);
    v12[0] = 0;
    v12[1] = 0;
    v3 = (const void **)(this + 412);
    if ( (HIDWORD(this) - v2) >> 3 )
    {
      if ( HIDWORD(this) != v2 )
        *(_DWORD *)(this + 416) = v2;
    }
    else
    {
      LODWORD(this) = this + 412;
      std::vector<double,glitch::core::SAllocator<double,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        this,
        0,
        (char *)v12);
    }
    std::vector<double,glitch::core::SAllocator<double,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
      (int)v3,
      *(_DWORD *)(v1 + 384));
    v4 = (float)((float)((float)(*(_DWORD *)(v1 + 372) * *(_DWORD *)(v1 + 372)) * *(float *)(v1 + 348))
               * *(float *)(v1 + 356));
    for ( i = 0; ; i = v6 )
    {
      v6 = i + 1;
      LODWORD(this) = (i + 1 + (i >> 1)) * (i + 1 + (i >> 1));
      if ( i >= *(_DWORD *)(v1 + 384) )
        break;
      v7 = (double)(int)this * v4;
      v8 = *(double **)(v1 + 420);
      v9 = *(double **)(v1 + 416);
      v11 = v7;
      if ( v9 == v8 )
      {
        std::vector<double,glitch::core::SAllocator<double,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
          v3,
          v9,
          &v11,
          (int)v13,
          1u,
          1);
      }
      else
      {
        *v9 = v7;
        *(_DWORD *)(v1 + 416) += 8;
      }
    }
  }
  return this;
}


// ===== 6d176c glitch::scene::CTerrainSceneNode::render(void *) =====
glitch::IReferenceCounted *__fastcall glitch::scene::CTerrainSceneNode::render(
        glitch::IReferenceCounted *this,
        void *a2)
{
  glitch::IReferenceCounted *v2; // r4
  glitch::video::CVertexStreams **v4; // r6
  glitch::IReferenceCounted *v5; // [sp+0h] [bp-14h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v6; // [sp+4h] [bp-10h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v7; // [sp+8h] [bp-Ch] BYREF
  glitch::video::CMaterial *v8[2]; // [sp+Ch] [bp-8h] BYREF

  v2 = this;
  if ( (*((_DWORD *)this + 71) & 1) != 0 )
  {
    if ( *(_DWORD *)(*((_DWORD *)this + 68) + 228) )
    {
      this = (glitch::IReferenceCounted *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 107) + 16))(*((_DWORD *)this + 107));
      if ( this )
      {
        v4 = *(glitch::video::CVertexStreams ***)(*((_DWORD *)v2 + 68) + 20);
        this = (glitch::IReferenceCounted *)(*((int (__fastcall **)(glitch::video::CVertexStreams **, int, int *))*v4
                                             + 27))(
                                              v4,
                                              1,
                                              glitch::core::IdentityMatrix);
        if ( a2 )
        {
          (*(void (__fastcall **)(glitch::video::CMaterial **, _DWORD, _DWORD))(**((_DWORD **)v2 + 107) + 24))(
            v8,
            *((_DWORD *)v2 + 107),
            0);
          (*(void (__fastcall **)(glitch::video::CMaterialVertexAttributeMap **, _DWORD, _DWORD))(**((_DWORD **)v2 + 107)
                                                                                                + 28))(
            &v7,
            *((_DWORD *)v2 + 107),
            0);
          v6 = v7;
          if ( v7 )
            ++*(_DWORD *)v7;
          glitch::video::IVideoDriver::setMaterial((int)v4, v8, (int)&v6);
          if ( v6 )
            glitch::intrusive_ptr_release(v6);
          if ( v7 )
            glitch::intrusive_ptr_release(v7);
          boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v8);
          v5 = *((glitch::IReferenceCounted **)v2 + 108);
          if ( v5 )
            ++*((_DWORD *)v5 + 1);
          glitch::video::IVideoDriver::drawMeshBuffer(v4, (int)&v5);
          this = v5;
          if ( v5 )
            return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v5);
        }
      }
    }
  }
  return this;
}


// ===== 6d18bc glitch::scene::CTerrainSceneNode::CTerrainSceneNode(boost::intrusive_ptr<glitch::io::IFileSystem> const&,int,uint,int,glitch::scene::E_TERRAIN_PATCH_SIZE,glitch::core::vector3d<float> const&,glitch::core::quaternion const&,glitch::core::vector3d<float> const&) =====
int __fastcall glitch::scene::CTerrainSceneNode::CTerrainSceneNode(
        int a1,
        int *a2,
        int *a3,
        int a4,
        unsigned int a5,
        int a6,
        int a7,
        _DWORD *a8,
        _DWORD *a9,
        _DWORD *a10)
{
  int v13; // r1
  _DWORD *v14; // r5
  int v15; // r3
  glitch::scene::CMeshBuffer *v16; // r5
  bool v17; // r3
  int v18; // r0
  const glitch::video::CMaterialRenderer *v19; // r1
  glitch::video::CMaterialVertexAttributeMap **v20; // r6
  glitch::scene::CMeshBuffer *v22; // r5
  bool v23; // r3
  glitch::IReferenceCounted *v24; // r0
  glitch::IReferenceCounted *v26[5]; // [sp+Ch] [bp-3Ch] BYREF
  __int16 v27; // [sp+20h] [bp-28h]
  __int16 v28; // [sp+22h] [bp-26h]
  glitch::IReferenceCounted *v29[5]; // [sp+24h] [bp-24h] BYREF
  __int16 v30; // [sp+38h] [bp-10h]
  __int16 v31; // [sp+3Ah] [bp-Eh]
  glitch::video::CMaterialVertexAttributeMap *v32; // [sp+3Ch] [bp-Ch] BYREF
  glitch::video::CMaterial *v33; // [sp+40h] [bp-8h] BYREF
  glitch::IReferenceCounted *v34; // [sp+44h] [bp-4h] BYREF

  glitch::scene::ISceneNode::ISceneNode(a1, a2 + 1, a4, a8, a9, a10);
  v13 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v13 - 28)) = a2[4];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[5];
  glitch::scene::CTerrainSceneNode::STerrainData::STerrainData((_DWORD *)(a1 + 304), a7, a6, a8, a9, a10);
  v14 = operator new(0x2Cu, 0);
  glitch::scene::CMesh::CMesh(v14);
  *(_DWORD *)(a1 + 428) = v14;
  if ( v14 )
    ++v14[1];
  *(_BYTE *)(a1 + 446) = 1;
  *(_DWORD *)(a1 + 476) = 1092616192;
  *(_DWORD *)(a1 + 492) = 1065353216;
  *(_DWORD *)(a1 + 480) = 1065353216;
  *(_DWORD *)(a1 + 488) = 1065353216;
  *(_DWORD *)(a1 + 468) = -943501325;
  *(_DWORD *)(a1 + 484) = 1036831949;
  *(_DWORD *)(a1 + 432) = 0;
  *(_DWORD *)(a1 + 436) = 0;
  *(_DWORD *)(a1 + 440) = 0;
  *(_BYTE *)(a1 + 444) = 0;
  *(_BYTE *)(a1 + 445) = 0;
  *(_BYTE *)(a1 + 447) = 0;
  *(_DWORD *)(a1 + 448) = -943501325;
  *(_DWORD *)(a1 + 452) = -943501325;
  *(_DWORD *)(a1 + 456) = -943501325;
  *(_DWORD *)(a1 + 460) = -943501325;
  *(_DWORD *)(a1 + 464) = -943501325;
  *(_DWORD *)(a1 + 512) = a1 + 496;
  *(_DWORD *)(a1 + 516) = a1 + 496;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_BYTE **)(a1 + 512) = 0;
  v15 = *a3;
  *(_DWORD *)(a1 + 520) = *a3;
  if ( v15 )
    ++*(_DWORD *)(v15 + 4);
  memset(v29, 0, sizeof(v29));
  v30 = 255;
  v31 = 6;
  v16 = (glitch::scene::CMeshBuffer *)operator new(0x38u, 0);
  glitch::scene::CMeshBuffer::CMeshBuffer(v16, a5, (const glitch::video::CPrimitiveStream *)v29, v17);
  v34 = v16;
  if ( v16 )
    ++*((_DWORD *)v16 + 1);
  if ( v29[0] )
    glitch::IReferenceCounted::drop(v29[0]);
  v18 = *(_DWORD *)(a1 + 428);
  v32 = nullptr;
  v33 = nullptr;
  glitch::scene::CMesh::addMeshBuffer(v18, &v34, &v33, &v32);
  v20 = (glitch::video::CMaterialVertexAttributeMap **)v32;
  if ( v32 )
  {
    if ( (*(_DWORD *)v32)-- == 1 )
    {
      glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v20, v19);
      LC_API_FREE_0(v20);
    }
  }
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v33);
  memset(v26, 0, sizeof(v26));
  v27 = 255;
  v28 = 6;
  v22 = (glitch::scene::CMeshBuffer *)operator new(0x38u, 0);
  glitch::scene::CMeshBuffer::CMeshBuffer(v22, a5, (const glitch::video::CPrimitiveStream *)v26, v23);
  if ( v22 )
    ++*((_DWORD *)v22 + 1);
  v24 = *(glitch::IReferenceCounted **)(a1 + 432);
  *(_DWORD *)(a1 + 432) = v22;
  if ( v24 )
    glitch::IReferenceCounted::drop(v24);
  if ( v26[0] )
    glitch::IReferenceCounted::drop(v26[0]);
  glitch::scene::ISceneNode::setAutomaticCulling(a1, 0);
  if ( v34 )
    glitch::IReferenceCounted::drop(v34);
  return a1;
}


// ===== 6d1b5c glitch::scene::CTerrainSceneNode::CTerrainSceneNode(boost::intrusive_ptr<glitch::io::IFileSystem> const&,int,uint,int,glitch::scene::E_TERRAIN_PATCH_SIZE,glitch::core::vector3d<float> const&,glitch::core::quaternion const&,glitch::core::vector3d<float> const&) =====
int __fastcall glitch::scene::CTerrainSceneNode::CTerrainSceneNode(
        int a1,
        int *a2,
        int a3,
        unsigned int a4,
        int a5,
        int a6,
        _DWORD *a7,
        _DWORD *a8,
        _DWORD *a9)
{
  _DWORD *v12; // r5
  int v13; // r3
  glitch::scene::CMeshBuffer *v14; // r5
  bool v15; // r3
  int v16; // r0
  const glitch::video::CMaterialRenderer *v17; // r1
  glitch::video::CMaterialVertexAttributeMap **v18; // r7
  glitch::scene::CMeshBuffer *v20; // r5
  bool v21; // r3
  glitch::IReferenceCounted *v22; // r0
  glitch::IReferenceCounted *v24[5]; // [sp+Ch] [bp-3Ch] BYREF
  __int16 v25; // [sp+20h] [bp-28h]
  __int16 v26; // [sp+22h] [bp-26h]
  glitch::IReferenceCounted *v27[5]; // [sp+24h] [bp-24h] BYREF
  __int16 v28; // [sp+38h] [bp-10h]
  __int16 v29; // [sp+3Ah] [bp-Eh]
  glitch::video::CMaterialVertexAttributeMap *v30; // [sp+3Ch] [bp-Ch] BYREF
  glitch::video::CMaterial *v31; // [sp+40h] [bp-8h] BYREF
  glitch::IReferenceCounted *v32; // [sp+44h] [bp-4h] BYREF

  *(_DWORD *)a1 = off_98A1FC;
  *(_DWORD *)(a1 + 528) = 1;
  *(_DWORD *)(a1 + 524) = off_95B720;
  *(int *)((char *)&elf_hash_bucket[76] + a1) = (int)off_98A21C;
  glitch::scene::ISceneNode::ISceneNode(a1, (int *)off_98A0A4, a3, a7, a8, a9);
  *(_DWORD *)a1 = off_989F84;
  *(_DWORD *)(a1 + 524) = off_98A090;
  glitch::scene::CTerrainSceneNode::STerrainData::STerrainData((_DWORD *)(a1 + 304), a6, a5, a7, a8, a9);
  v12 = operator new(0x2Cu, 0);
  glitch::scene::CMesh::CMesh(v12);
  *(_DWORD *)(a1 + 428) = v12;
  if ( v12 )
    ++v12[1];
  *(_BYTE *)(a1 + 446) = 1;
  *(_DWORD *)(a1 + 476) = 1092616192;
  *(_DWORD *)(a1 + 492) = 1065353216;
  *(_DWORD *)(a1 + 480) = 1065353216;
  *(_DWORD *)(a1 + 488) = 1065353216;
  *(_DWORD *)(a1 + 468) = -943501325;
  *(_DWORD *)(a1 + 484) = 1036831949;
  *(_DWORD *)(a1 + 432) = 0;
  *(_DWORD *)(a1 + 436) = 0;
  *(_DWORD *)(a1 + 440) = 0;
  *(_BYTE *)(a1 + 444) = 0;
  *(_BYTE *)(a1 + 445) = 0;
  *(_BYTE *)(a1 + 447) = 0;
  *(_DWORD *)(a1 + 448) = -943501325;
  *(_DWORD *)(a1 + 452) = -943501325;
  *(_DWORD *)(a1 + 456) = -943501325;
  *(_DWORD *)(a1 + 460) = -943501325;
  *(_DWORD *)(a1 + 464) = -943501325;
  *(_DWORD *)(a1 + 512) = a1 + 496;
  *(_DWORD *)(a1 + 516) = a1 + 496;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_BYTE **)(a1 + 512) = 0;
  v13 = *a2;
  *(_DWORD *)(a1 + 520) = *a2;
  if ( v13 )
    ++*(_DWORD *)(v13 + 4);
  memset(v27, 0, sizeof(v27));
  v28 = 255;
  v29 = 6;
  v14 = (glitch::scene::CMeshBuffer *)operator new(0x38u, 0);
  glitch::scene::CMeshBuffer::CMeshBuffer(v14, a4, (const glitch::video::CPrimitiveStream *)v27, v15);
  v32 = v14;
  if ( v14 )
    ++*((_DWORD *)v14 + 1);
  if ( v27[0] )
    glitch::IReferenceCounted::drop(v27[0]);
  v16 = *(_DWORD *)(a1 + 428);
  v30 = nullptr;
  v31 = nullptr;
  glitch::scene::CMesh::addMeshBuffer(v16, &v32, &v31, &v30);
  v18 = (glitch::video::CMaterialVertexAttributeMap **)v30;
  if ( v30 )
  {
    if ( (*(_DWORD *)v30)-- == 1 )
    {
      glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v18, v17);
      LC_API_FREE_0(v18);
    }
  }
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v31);
  memset(v24, 0, sizeof(v24));
  v25 = 255;
  v26 = 6;
  v20 = (glitch::scene::CMeshBuffer *)operator new(0x38u, 0);
  glitch::scene::CMeshBuffer::CMeshBuffer(v20, a4, (const glitch::video::CPrimitiveStream *)v24, v21);
  if ( v20 )
    ++*((_DWORD *)v20 + 1);
  v22 = *(glitch::IReferenceCounted **)(a1 + 432);
  *(_DWORD *)(a1 + 432) = v20;
  if ( v22 )
    glitch::IReferenceCounted::drop(v22);
  if ( v24[0] )
    glitch::IReferenceCounted::drop(v24[0]);
  glitch::scene::ISceneNode::setAutomaticCulling(a1, 0);
  if ( v32 )
    glitch::IReferenceCounted::drop(v32);
  return a1;
}


// ===== 6d1e34 glitch::scene::CTerrainSceneNode::getHeight(float,float) =====
float __fastcall glitch::scene::CTerrainSceneNode::getHeight(
        glitch::scene::CTerrainSceneNode *this,
        float a2,
        float a3)
{
  int v7; // r5
  float v8; // r6
  int v9; // r8
  int v10; // r3
  int v11; // r8
  int v12; // r7
  int v13; // r11
  int v14; // r0
  int v15; // r3
  int v16; // r6
  bool v17; // cc
  int v18; // r9
  int v19; // r8
  int v20; // r10
  int v21; // r7
  float v22; // r0
  float v23; // r5
  float v24; // r7
  float v25; // r0
  float v26; // r7
  int v27; // [sp+4h] [bp-A8h]
  int v28; // [sp+8h] [bp-A4h]
  int v29; // [sp+Ch] [bp-A0h]
  _BYTE v30[68]; // [sp+10h] [bp-9Ch] BYREF
  float v31[17]; // [sp+54h] [bp-58h] BYREF
  float x[2]; // [sp+98h] [bp-14h] BYREF
  float v33; // [sp+A0h] [bp-Ch]
  glitch::IReferenceCounted *v34; // [sp+A4h] [bp-8h] BYREF

  if ( !(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 107) + 16))(*((_DWORD *)this + 107)) )
    return 0.0;
  LC_API_MEMSET_0(v31, 0, 0x40u);
  v31[15] = 1.0;
  v31[0] = 1.0;
  v31[5] = 1.0;
  v31[10] = 1.0;
  LOBYTE(v31[16]) = 1;
  glitch::core::quaternion::getMatrix((glitch::core::quaternion *)v30, (float *)this + 80);
  memcpy(v31, v30, 0x41u);
  x[0] = (float)((float)((float)(a2 * v31[0]) + (float)(v31[4] * 0.0)) + (float)(a3 * v31[8])) - *((float *)this + 77);
  x[1] = (float)((float)((float)(a2 * v31[1]) + (float)(v31[5] * 0.0)) + (float)(a3 * v31[9])) - *((float *)this + 78);
  v33 = (float)((float)((float)(a2 * v31[2]) + (float)(v31[6] * 0.0)) + (float)(a3 * v31[10])) - *((float *)this + 79);
  glitch::core::vector3d<float>::operator/=(x, (float *)this + 87);
  v7 = (int)floorf(x[0]);
  v8 = floorf(v33);
  (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, _DWORD))(**((_DWORD **)this + 107) + 20))(
    &v34,
    *((_DWORD *)this + 107),
    0);
  v9 = *((_DWORD *)v34 + 5);
  v10 = *(_DWORD *)(v9 + 20);
  v11 = v9 + 20;
  v12 = *(_DWORD *)(v11 + 4);
  v13 = *(_DWORD *)(v10 + 8);
  glitch::IReferenceCounted::drop(v34);
  if ( v7 < 0 )
    return -1000000.0;
  v14 = (int)v8;
  v15 = *((_DWORD *)this + 76);
  v16 = (int)v8;
  v17 = v14 <= 0;
  if ( v14 >= 0 )
    v17 = v15 <= v7;
  if ( v17 || v15 <= v14 )
    return -1000000.0;
  v18 = v15 + v7 * v15;
  v19 = *(unsigned __int16 *)(v11 + 14);
  v20 = v14 + 1;
  v21 = v13 + v12;
  v27 = v15 * v7;
  v28 = v21 + v19 * (v18 + v14 + 1);
  v29 = v21 + v19 * (v15 * v7 + v14);
  v22 = x[0] - (float)v7;
  v23 = v33 - (float)v16;
  if ( v22 > v23 )
  {
    v26 = *(float *)(v21 + v19 * (v18 + v16) + 4);
    v25 = (float)(*(float *)(v29 + 4) + (float)((float)(*(float *)(v28 + 4) - v26) * v23))
        + (float)((float)(v26 - *(float *)(v29 + 4)) * v22);
  }
  else
  {
    v24 = *(float *)(v21 + v19 * (v20 + v27) + 4);
    v25 = (float)(*(float *)(v29 + 4) + (float)((float)(*(float *)(v28 + 4) - v24) * v22))
        + (float)((float)(v24 - *(float *)(v29 + 4)) * v23);
  }
  return (float)(v25 * *((float *)this + 88)) + *((float *)this + 78);
}


// ===== 6d21ac glitch::scene::CTerrainSceneNode::getCurrentLODOfPatches(std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>> &) =====
int __fastcall glitch::scene::CTerrainSceneNode::getCurrentLODOfPatches(int a1, char **a2)
{
  char *v2; // r3
  char *v5; // r10
  int v6; // r7
  int v7; // r5
  int v8; // r6
  int v9; // r3
  _DWORD *v10; // r9
  unsigned int v12; // r3
  unsigned int v13; // r2
  char *v14; // r0
  char *v15; // r1
  char *v16; // r11
  size_t v17; // r10
  char *v18; // r10
  int v19; // [sp+4h] [bp-8h]

  v2 = *a2;
  if ( *a2 != a2[1] )
    a2[1] = v2;
  v5 = v2;
  v6 = *(_DWORD *)(a1 + 380) * *(_DWORD *)(a1 + 380);
  if ( v6 > 0 )
  {
    v7 = 0;
    v8 = 0;
    while ( 1 )
    {
      v9 = *(_DWORD *)(a1 + 424);
      v10 = (_DWORD *)(v9 + v7);
      if ( a2[2] != v5 )
      {
        *(_DWORD *)v5 = *(_DWORD *)(v9 + v7);
        v5 = a2[1] + 4;
        a2[1] = v5;
        goto LABEL_8;
      }
      v12 = (a2[1] - *a2) >> 2;
      if ( v12 )
        v13 = 2 * v12;
      else
        v13 = 1;
      if ( v13 > 0x3FFFFFFF || v12 > v13 )
      {
        v19 = -4;
        v14 = (char *)GlitchAlloc(0xFFFFFFFC, 0);
        v15 = *a2;
        v16 = v14;
        v17 = v5 - *a2;
        if ( v17 )
          goto LABEL_24;
        v18 = v14;
      }
      else
      {
        v19 = 4 * v13;
        v14 = (char *)GlitchAlloc(4 * v13, 0);
        v15 = *a2;
        v16 = v14;
        v17 = v5 - *a2;
        if ( v17 )
        {
LABEL_24:
          v18 = (char *)memmove(v14, v15, v17) + v17;
          goto LABEL_18;
        }
        v18 = v14;
      }
LABEL_18:
      *(_DWORD *)v18 = *v10;
      v5 = v18 + 4;
      GlitchFree(*a2);
      *a2 = v16;
      a2[1] = v5;
      a2[2] = &v16[v19];
LABEL_8:
      ++v8;
      v7 += 56;
      if ( v8 == v6 )
      {
        v2 = *a2;
        return (v5 - v2) >> 2;
      }
      v5 = a2[1];
    }
  }
  return (v5 - v2) >> 2;
}


// ===== 6d22f0 glitch::scene::CTerrainSceneNode::getIndicesForPatch(std::vector<uint,glitch::core::SAllocator<uint,(glitch::memory::E_MEMORY_HINT)0>> &,int,int,int) =====
int __fastcall glitch::scene::CTerrainSceneNode::getIndicesForPatch(
        glitch::scene::CTerrainSceneNode *a1,
        _DWORD *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  int v9; // r10
  int v10; // r4
  int v12; // r2
  int v13; // r1
  int v14; // r3
  int v15; // r9
  signed int v16; // r11
  signed int v17; // r10
  unsigned int Index; // r0
  unsigned int v19; // r0
  signed int v20; // r2
  unsigned int v21; // [sp+Ch] [bp-30h]
  int v22; // [sp+10h] [bp-2Ch]
  unsigned int v23; // [sp+14h] [bp-28h]
  unsigned int v24; // [sp+18h] [bp-24h]
  unsigned int v25; // [sp+18h] [bp-24h]
  int v26; // [sp+1Ch] [bp-20h]
  int v27; // [sp+20h] [bp-1Ch]
  signed int v28; // [sp+24h] [bp-18h]
  unsigned int v29; // [sp+24h] [bp-18h]
  void *p[3]; // [sp+28h] [bp-14h] BYREF
  int v31; // [sp+34h] [bp-8h] BYREF

  v9 = a5;
  if ( a3 < 0 )
    return -1;
  v12 = *((_DWORD *)a1 + 95);
  if ( (v12 <= a3) | (a4 >> 31) || v12 <= (int)a4 || a5 < -1 || a5 >= *((_DWORD *)a1 + 96) )
    return -1;
  p[0] = (void *)((v12 <= a3) | (a4 >> 31));
  p[1] = p[0];
  p[2] = p[0];
  if ( a5 == -1 )
  {
    v27 = 0;
    v9 = *(_DWORD *)(*((_DWORD *)a1 + 106) + 56 * (a4 + v12 * a3));
  }
  else
  {
    glitch::scene::CTerrainSceneNode::getCurrentLODOfPatches((int)a1, (char **)p);
    glitch::scene::CTerrainSceneNode::setCurrentLODOfPatches((int)a1, a5);
    v27 = 1;
  }
  if ( v9 >= 0 )
  {
    v10 = 0;
    v13 = *((_DWORD *)a1 + 93) * *((_DWORD *)a1 + 93);
    v14 = a4 + *((_DWORD *)a1 + 95) * a3;
    v31 = 0;
    v26 = 1 << v9;
    v22 = v14;
    std::vector<unsigned int,glitch::core::SAllocator<unsigned int,(glitch::memory::E_MEMORY_HINT)0>>::resize(
      (int)a2,
      6 * v13,
      (char *)&v31);
    v15 = 4;
    v16 = 0;
    v17 = 0;
    v28 = *((_DWORD *)a1 + 94);
    while ( 1 )
    {
      v23 = v16 + v26;
      v25 = v17;
      if ( v16 >= v28 )
        break;
      Index = glitch::scene::CTerrainSceneNode::getIndex(a1, a4, a3, v22, v17, v16);
      v17 += v26;
      v21 = Index;
      v29 = glitch::scene::CTerrainSceneNode::getIndex(a1, a4, a3, v22, v17, v16);
      v24 = glitch::scene::CTerrainSceneNode::getIndex(a1, a4, a3, v22, v25, v23);
      v19 = glitch::scene::CTerrainSceneNode::getIndex(a1, a4, a3, v22, v17, v23);
      *(_DWORD *)(*a2 + 4 * v10) = v24;
      v10 += 6;
      *(_DWORD *)(*a2 + v15) = v21;
      *(_DWORD *)(*a2 + v15 + 4) = v19;
      *(_DWORD *)(*a2 + v15 + 8) = v19;
      *(_DWORD *)(*a2 + v15 + 12) = v21;
      *(_DWORD *)(*a2 + v15 + 16) = v29;
      v20 = *((_DWORD *)a1 + 94);
      v15 += 24;
      if ( v17 >= v20 )
        v16 += v26;
      v28 = *((_DWORD *)a1 + 94);
      if ( v17 >= v20 )
        v17 = 0;
    }
    if ( v27 )
      glitch::scene::CTerrainSceneNode::setCurrentLODOfPatches((int)a1, p);
  }
  else
  {
    v10 = -2;
  }
  if ( p[0] )
    GlitchFree(p[0]);
  return v10;
}


// ===== 6d2534 glitch::scene::CTerrainSceneNode::calculatePatchData(void) =====
float __fastcall glitch::scene::CTerrainSceneNode::calculatePatchData(glitch::scene::CTerrainSceneNode *this)
{
  int v1; // r1
  int v3; // r0
  int v4; // r3
  int v5; // r9
  _DWORD *v6; // r3
  int v7; // r3
  int v8; // r11
  int i; // r5
  int v10; // r3
  float *v11; // r4
  float v12; // r8
  int v13; // r3
  float v14; // r6
  float v15; // r7
  float v16; // r1
  _BOOL4 v17; // r0
  float v18; // r1
  _BOOL4 v19; // r0
  float v20; // r1
  _BOOL4 v21; // r0
  float v22; // r1
  _BOOL4 v23; // r0
  float v24; // r1
  int v25; // r8
  float *v26; // r4
  float v27; // r6
  float v28; // r7
  float v29; // r5
  float v30; // r1
  _BOOL4 v31; // r0
  float v32; // r1
  _BOOL4 v33; // r0
  float v34; // r1
  _BOOL4 v35; // r0
  float v36; // r1
  _BOOL4 v37; // r0
  float v38; // r1
  float v39; // r6
  float v40; // r5
  float v41; // r4
  float v42; // r1
  _BOOL4 v43; // r0
  float v44; // r1
  _BOOL4 v45; // r0
  float v46; // r1
  _BOOL4 v47; // r0
  float v48; // r1
  _BOOL4 v49; // r0
  float v50; // r1
  float *v51; // r4
  float v52; // r6
  float v53; // r0
  int v54; // r3
  int v55; // r3
  float v56; // r5
  float v57; // r4
  float result; // r0
  int v59; // r3
  _BYTE *v60; // r4
  char v61; // r3
  int v62; // [sp+4h] [bp-28h]
  int v63; // [sp+8h] [bp-24h]
  int v64; // [sp+10h] [bp-1Ch]
  int v65; // [sp+14h] [bp-18h]
  int v66; // [sp+18h] [bp-14h]
  int v67; // [sp+1Ch] [bp-10h]
  float v68; // [sp+24h] [bp-8h]

  v1 = *((_DWORD *)this + 108);
  *((_DWORD *)this + 102) = -915135490;
  *((_DWORD *)this + 100) = -915135490;
  *((_DWORD *)this + 101) = -915135490;
  *((_DWORD *)this + 99) = 1232348158;
  *((_DWORD *)this + 97) = 1232348158;
  *((_DWORD *)this + 98) = 1232348158;
  v68 = *(float *)(v1 + 20);
  v3 = glitch::video::IBuffer::map(*(_DWORD *)(LODWORD(v68) + 20), 0);
  v4 = *((_DWORD *)this + 95);
  v5 = v3 + *(_DWORD *)(LODWORD(v68) + 24);
  if ( v4 > 0 )
  {
    v66 = 0;
    while ( v4 <= 0 )
    {
      v65 = v66 + 1;
LABEL_57:
      v66 = v65;
      if ( v4 <= v65 )
        goto LABEL_58;
    }
    v65 = v66 + 1;
    v62 = 1;
    v64 = 0;
    while ( 1 )
    {
      v63 = 56 * (v64 + v66 * v4);
      *(_DWORD *)(*((_DWORD *)this + 106) + v63) = 0;
      v6 = (_DWORD *)(*((_DWORD *)this + 106) + v63);
      v6[6] = -246811958;
      v6[4] = -246811958;
      v6[5] = -246811958;
      v6[1] = 1900671690;
      v6[2] = 1900671690;
      v6[3] = 1900671690;
      v7 = *((_DWORD *)this + 94);
      v8 = v7 * v66;
      if ( v7 * v66 <= v65 * v7 )
      {
        v67 = v62;
        do
        {
          for ( i = v7 * v64; v62 * v7 >= i; ++i )
          {
            v10 = *(unsigned __int16 *)(LODWORD(v68) + 34) * (i + *((_DWORD *)this + 76) * v8);
            v11 = (float *)(*((_DWORD *)this + 106) + v63);
            v12 = *(float *)(v5 + v10);
            v13 = v5 + v10;
            v14 = *(float *)(v13 + 8);
            v15 = *(float *)(v13 + 4);
            v16 = v11[5];
            if ( v12 > v11[4] )
              v11[4] = v12;
            v17 = v15 > v16;
            v18 = v11[6];
            if ( v17 )
              v11[5] = v15;
            v19 = v14 > v18;
            v20 = v11[1];
            if ( v19 )
              v11[6] = v14;
            v21 = v12 < v20;
            v22 = v11[2];
            if ( v21 )
              v11[1] = v12;
            v23 = v15 < v22;
            v24 = v11[3];
            if ( v23 )
              v11[2] = v15;
            if ( v14 < v24 )
              v11[3] = v14;
            v7 = *((_DWORD *)this + 94);
          }
          ++v8;
        }
        while ( v65 * v7 >= v8 );
      }
      else
      {
        v67 = v62;
      }
      v25 = *((_DWORD *)this + 106);
      v26 = (float *)(v25 + v63);
      v27 = *(float *)(v25 + v63 + 16);
      v28 = *(float *)(v25 + v63 + 20);
      v29 = *(float *)(v25 + v63 + 24);
      v30 = *((float *)this + 101);
      if ( v27 > *((float *)this + 100) )
        *((float *)this + 100) = v27;
      v31 = v28 > v30;
      v32 = *((float *)this + 102);
      if ( v31 )
        *((float *)this + 101) = v28;
      v33 = v29 > v32;
      v34 = *((float *)this + 97);
      if ( v33 )
        *((float *)this + 102) = v29;
      v35 = v27 < v34;
      v36 = *((float *)this + 98);
      if ( v35 )
        *((float *)this + 97) = v27;
      v37 = v28 < v36;
      v38 = *((float *)this + 99);
      if ( v37 )
        *((float *)this + 98) = v28;
      if ( v29 < v38 )
        *((float *)this + 99) = v29;
      v39 = v26[1];
      v40 = v26[3];
      v41 = v26[2];
      v42 = *((float *)this + 101);
      if ( v39 > *((float *)this + 100) )
        *((float *)this + 100) = v39;
      v43 = v41 > v42;
      v44 = *((float *)this + 102);
      if ( v43 )
        *((float *)this + 101) = v41;
      v45 = v40 > v44;
      v46 = *((float *)this + 97);
      if ( v45 )
        *((float *)this + 102) = v40;
      v47 = v39 < v46;
      v48 = *((float *)this + 98);
      if ( v47 )
        *((float *)this + 97) = v39;
      v49 = v41 < v48;
      v50 = *((float *)this + 99);
      if ( v49 )
        *((float *)this + 98) = v41;
      if ( v40 < v50 )
        *((float *)this + 99) = v40;
      v51 = (float *)(v25 + v63);
      v52 = (float)(*(float *)(v25 + v63 + 8) + *(float *)(v25 + v63 + 20)) * 0.5;
      v53 = v51[1] + v51[4];
      v51[9] = (float)(v51[3] + v51[6]) * 0.5;
      v51[7] = v53 * 0.5;
      v51[8] = v52;
      if ( v66 )
        *(_DWORD *)(*((_DWORD *)this + 106) + v63 + 40) = *((_DWORD *)this + 106)
                                                        + 56 * (v64 + *((_DWORD *)this + 95) * (v66 - 1));
      else
        *(_DWORD *)(*((_DWORD *)this + 106) + v63 + 40) = 0;
      v54 = *((_DWORD *)this + 95);
      if ( v66 >= v54 - 1 )
      {
        *(_DWORD *)(*((_DWORD *)this + 106) + v63 + 44) = 0;
        if ( v64 <= 0 )
        {
LABEL_66:
          *(_DWORD *)(*((_DWORD *)this + 106) + v63 + 52) = 0;
          goto LABEL_54;
        }
      }
      else
      {
        *(_DWORD *)(*((_DWORD *)this + 106) + v63 + 44) = *((_DWORD *)this + 106) + 56 * (v64 + v65 * v54);
        if ( v64 <= 0 )
          goto LABEL_66;
      }
      *(_DWORD *)(*((_DWORD *)this + 106) + v63 + 52) = *((_DWORD *)this + 106)
                                                      + 56 * (v64 + *((_DWORD *)this + 95) * v66 - 1);
LABEL_54:
      v55 = *((_DWORD *)this + 95);
      if ( v64 >= v55 - 1 )
        *(_DWORD *)(*((_DWORD *)this + 106) + v63 + 48) = 0;
      else
        *(_DWORD *)(*((_DWORD *)this + 106) + v63 + 48) = *((_DWORD *)this + 106) + 56 * (v64 + v55 * v66) + 56;
      v4 = *((_DWORD *)this + 95);
      ++v64;
      ++v62;
      if ( v4 <= v67 )
        goto LABEL_57;
    }
  }
LABEL_58:
  v56 = (float)(*((float *)this + 97) + *((float *)this + 100)) * 0.5;
  v57 = (float)(*((float *)this + 98) + *((float *)this + 101)) * 0.5;
  result = (float)(*((float *)this + 99) + *((float *)this + 102)) * 0.5;
  v59 = *((unsigned __int8 *)this + 446);
  *((float *)this + 90) = v56;
  *((float *)this + 91) = v57;
  if ( v59 )
  {
    *((float *)this + 86) = result;
    *((float *)this + 84) = v56;
    *((float *)this + 85) = v57;
  }
  *((float *)this + 92) = result;
  if ( v5 )
  {
    result = v68;
    v60 = *(_BYTE **)(LODWORD(v68) + 20);
    v61 = v60[19];
    if ( (v61 & 0x1Fu) <= 1 )
    {
      if ( (v60[18] & 0x20) != 0 )
        result = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(*(_DWORD *)v60 + 24))(*(_DWORD *)(LODWORD(v68) + 20)));
      v60[19] = 0;
    }
    else
    {
      v60[19] = ((v61 & 0x1F) - 1) | v61 & 0xE0;
    }
  }
  return result;
}


// ===== 6d2b08 glitch::scene::CTerrainSceneNode::applyTransformation(void) =====
float __fastcall glitch::scene::CTerrainSceneNode::applyTransformation(unsigned int this)
{
  float result; // r0
  int v3; // r5
  int v4; // r3
  glitch::IReferenceCounted *v5; // r3
  int *v6; // r6
  int v7; // r2
  int v8; // r3
  int v9; // r6
  int v10; // r7
  int i; // r2
  int v12; // r7
  float v13; // r0
  int v14; // r7
  float v15; // r10
  float v16; // r8
  float v17; // r0
  float v18; // r9
  float v19; // r11
  int v20; // r2
  int v21; // r3
  _BYTE *v22; // r4
  char v23; // r3
  int v24; // [sp+8h] [bp-B4h]
  int v25; // [sp+Ch] [bp-B0h]
  int v26; // [sp+10h] [bp-ACh]
  float v27; // [sp+18h] [bp-A4h]
  float v28; // [sp+1Ch] [bp-A0h]
  float v29; // [sp+20h] [bp-9Ch]
  int v30; // [sp+24h] [bp-98h]
  _BYTE v31[68]; // [sp+28h] [bp-94h] BYREF
  float v32[17]; // [sp+6Ch] [bp-50h] BYREF
  glitch::IReferenceCounted *v33; // [sp+B0h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v34; // [sp+B4h] [bp-8h] BYREF

  result = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 428) + 16))(*(_DWORD *)(this + 428)));
  if ( result != 0.0 )
  {
    LC_API_MEMSET_0(v32, 0, 0x40u);
    v32[15] = 1.0;
    v32[0] = 1.0;
    v32[5] = 1.0;
    v32[10] = 1.0;
    LOBYTE(v32[16]) = 1;
    glitch::core::quaternion::getMatrix((glitch::core::quaternion *)v31, (float *)(this + 320));
    memcpy(v32, v31, 0x41u);
    v30 = *(_DWORD *)(*(_DWORD *)(this + 432) + 20);
    v3 = glitch::video::IBuffer::map(*(_DWORD *)(v30 + 20), 2) + *(_DWORD *)(v30 + 24);
    (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, _DWORD))(**(_DWORD **)(this + 428) + 20))(
      &v34,
      *(_DWORD *)(this + 428),
      0);
    v4 = *((_DWORD *)v34 + 5);
    v26 = v4 + 20;
    v24 = *(_DWORD *)(*(_DWORD *)(v4 + 20) + 8) + *(_DWORD *)(v4 + 24);
    glitch::IReferenceCounted::drop(v34);
    v27 = *(float *)(this + 308) - *(float *)(this + 336);
    v28 = *(float *)(this + 312) - *(float *)(this + 340);
    v29 = *(float *)(this + 316) - *(float *)(this + 344);
    (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, _DWORD))(**(_DWORD **)(this + 428) + 20))(
      &v33,
      *(_DWORD *)(this + 428),
      0);
    v5 = v33;
    v6 = *((int **)v33 + 5);
    if ( v6 )
      v5 = (glitch::IReferenceCounted *)*v6;
    v7 = v6[2];
    if ( v6 )
      *v6 = (int)v5 + 1;
    v25 = v7;
    v8 = *v6 - 1;
    *v6 = v8;
    if ( !v8 )
    {
      glitch::video::CVertexStreams::~CVertexStreams((glitch::video::CVertexStreams *)v6);
      LC_API_FREE_0(v6);
    }
    if ( v33 )
      glitch::IReferenceCounted::drop(v33);
    if ( v25 )
    {
      v9 = 0;
      v10 = *(unsigned __int16 *)(v26 + 14);
      for ( i = *(unsigned __int16 *)(v30 + 34); ; i = *(unsigned __int16 *)(v30 + 34) )
      {
        v12 = v9 * v10;
        v13 = *(float *)(v24 + v12);
        v14 = v24 + v12;
        v15 = v27 + (float)(v13 * *(float *)(this + 348));
        v16 = v28 + (float)(*(float *)(v14 + 4) * *(float *)(this + 352));
        v17 = v29 + (float)(*(float *)(v14 + 8) * *(float *)(this + 356));
        v18 = (float)((float)((float)(v15 * v32[4]) + (float)(v16 * v32[5])) + (float)(v17 * v32[6]))
            + *(float *)(this + 340);
        v19 = (float)((float)((float)(v15 * v32[8]) + (float)(v16 * v32[9])) + (float)(v17 * v32[10]))
            + *(float *)(this + 344);
        v20 = v9 * i;
        ++v9;
        v21 = v3 + v20;
        *(float *)(v3 + v20) = (float)((float)((float)(v15 * v32[0]) + (float)(v16 * v32[1])) + (float)(v17 * v32[2]))
                             + *(float *)(this + 336);
        *(float *)(v21 + 8) = v19;
        *(float *)(v21 + 4) = v18;
        if ( v9 == v25 )
          break;
        v10 = *(unsigned __int16 *)(v26 + 14);
      }
    }
    glitch::scene::CTerrainSceneNode::calculateDistanceThresholds(this | 0x100000000LL);
    result = glitch::scene::CTerrainSceneNode::calculatePatchData((glitch::scene::CTerrainSceneNode *)this);
    if ( v3 )
    {
      v22 = *(_BYTE **)(v30 + 20);
      v23 = v22[19];
      if ( (v23 & 0x1Fu) <= 1 )
      {
        if ( (v22[18] & 0x20) != 0 )
          result = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(*(_DWORD *)v22 + 24))(*(_DWORD *)(v30 + 20)));
        v22[19] = 0;
      }
      else
      {
        v22[19] = ((v23 & 0x1F) - 1) | v23 & 0xE0;
      }
    }
  }
  return result;
}


// ===== 6d2ec0 glitch::scene::CTerrainSceneNode::setPosition(glitch::core::vector3d<float> const&) =====
float __fastcall glitch::scene::CTerrainSceneNode::setPosition(unsigned int a1, _DWORD *a2)
{
  float result; // r0

  *(_DWORD *)(a1 + 308) = *a2;
  *(_DWORD *)(a1 + 312) = a2[1];
  *(_DWORD *)(a1 + 316) = a2[2];
  result = glitch::scene::CTerrainSceneNode::applyTransformation(a1);
  *(_BYTE *)(a1 + 447) = 1;
  return result;
}


// ===== 6d2ef0 glitch::scene::CTerrainSceneNode::setRotation(glitch::core::quaternion const&) =====
float __fastcall glitch::scene::CTerrainSceneNode::setRotation(
        glitch::scene::CTerrainSceneNode *this,
        const glitch::core::quaternion *a2)
{
  float result; // r0

  *((_DWORD *)this + 80) = *(_DWORD *)a2;
  *((_DWORD *)this + 81) = *((_DWORD *)a2 + 1);
  *((_DWORD *)this + 82) = *((_DWORD *)a2 + 2);
  *((_DWORD *)this + 83) = *((_DWORD *)a2 + 3);
  result = glitch::scene::CTerrainSceneNode::applyTransformation((unsigned int)this);
  *((_BYTE *)this + 447) = 1;
  return result;
}


// ===== 6d2f28 glitch::scene::CTerrainSceneNode::setScale(glitch::core::vector3d<float> const&) =====
float __fastcall glitch::scene::CTerrainSceneNode::setScale(unsigned int a1, _DWORD *a2)
{
  float result; // r0

  *(_DWORD *)(a1 + 348) = *a2;
  *(_DWORD *)(a1 + 352) = a2[1];
  *(_DWORD *)(a1 + 356) = a2[2];
  result = glitch::scene::CTerrainSceneNode::applyTransformation(a1);
  *(_BYTE *)(a1 + 447) = 1;
  return result;
}


// ===== 6d2f58 glitch::video::SVertexStream::SMapBuffer<glitch::core::vector2d<float>>::reset(glitch::video::SVertexStream&,glitch::video::E_BUFFER_MAP_ACCESS) [clone] =====
int __fastcall glitch::video::SVertexStream::SMapBuffer<glitch::core::vector2d<float>>::reset(int **a1, int *a2)
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
        (*(void (__fastcall **)(int))(*(_DWORD *)v4 + 24))(**a1);
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
  result = glitch::video::IBuffer::map(*a2, 2);
  a1[1] = (int *)(result + a2[1]);
  return result;
}


// ===== 6d2ff0 glitch::scene::CTerrainSceneNode::smoothTerrain(boost::intrusive_ptr<glitch::scene::CMeshBuffer> const&,int) =====
float __fastcall glitch::scene::CTerrainSceneNode::smoothTerrain(int a1, int a2, int a3)
{
  float result; // r0
  int v5; // r7
  int v6; // r3
  int v7; // r9
  int v8; // r5
  int v9; // r6
  int v10; // r10
  int v11; // r10
  _BYTE *v13; // r4
  char v14; // r3
  int v15; // [sp+0h] [bp-14h]
  int v16; // [sp+4h] [bp-10h]
  int v18; // [sp+Ch] [bp-8h]

  v18 = *(_DWORD *)(*(_DWORD *)a2 + 20);
  result = COERCE_FLOAT(glitch::video::IBuffer::map(*(_DWORD *)(v18 + 20), 3));
  v5 = LODWORD(result) + *(_DWORD *)(v18 + 24);
  if ( a3 > 0 )
  {
    v6 = *(_DWORD *)(a1 + 304);
    v16 = 0;
    do
    {
      if ( v6 > 2 )
      {
        v7 = v6;
        v15 = 1;
        do
        {
          v8 = v7 + 1;
          v9 = 1;
          do
          {
            v10 = *(unsigned __int16 *)(v18 + 34);
            result = (float)(*(float *)(v5 + v10 * (v8 - v6) + 4)
                           + (float)((float)(*(float *)(v5 + (v8 - 1) * v10 + 4) + *(float *)(v5 + (++v9 + v7) * v10 + 4))
                                   + *(float *)(v5 + v10 * (v8 - v6) + 4)))
                   * 0.25;
            v11 = v5 + v10 * v8++;
            *(float *)(v11 + 4) = result;
            v6 = *(_DWORD *)(a1 + 304);
          }
          while ( v6 - 1 > v9 );
          if ( v6 - 1 <= ++v15 )
            break;
          v7 += v6;
        }
        while ( v6 > 2 );
      }
      ++v16;
    }
    while ( v16 != a3 );
  }
  if ( v5 )
  {
    v13 = *(_BYTE **)(v18 + 20);
    v14 = v13[19];
    if ( (v14 & 0x1Fu) <= 1 )
    {
      if ( (v13[18] & 0x20) != 0 )
        result = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(*(_DWORD *)v13 + 24))(*(_DWORD *)(v18 + 20)));
      v13[19] = 0;
    }
    else
    {
      v13[19] = ((v14 & 0x1F) - 1) | v14 & 0xE0;
    }
  }
  return result;
}


// ===== 6d315c glitch::scene::CTerrainSceneNode::scaleTexture(float,float) =====
float __fastcall glitch::scene::CTerrainSceneNode::scaleTexture(float this, float a2, float a3)
{
  int v3; // r3
  int v5; // r0
  int v6; // r2
  int v7; // r10
  int v8; // r1
  int v9; // r10
  int v10; // r5
  float v11; // r0
  int v12; // r4
  float v13; // r9
  float v14; // r8
  int v15; // r6
  float v16; // r5
  int v17; // r3
  int v18; // r7
  float *v19; // r2
  int v20; // r11
  int v21; // r7
  _BYTE *v23; // r4
  char v24; // r3
  _BYTE *v25; // r4
  char v26; // r3
  float v27; // [sp+0h] [bp-2Ch]
  float v28; // [sp+4h] [bp-28h]
  float v30; // [sp+10h] [bp-1Ch]
  float v31; // [sp+14h] [bp-18h]
  int v32; // [sp+18h] [bp-14h]
  int v33; // [sp+1Ch] [bp-10h]
  int *v34; // [sp+20h] [bp-Ch] BYREF
  int v35; // [sp+24h] [bp-8h]

  v27 = this;
  v3 = *(_DWORD *)(LODWORD(this) + 432);
  if ( (*(_DWORD *)(*(_DWORD *)(v3 + 20) + 4) & 0x1FFFE) == 0 )
    return this;
  *(float *)(LODWORD(this) + 488) = a2;
  *(float *)(LODWORD(this) + 492) = a3;
  v33 = *(_DWORD *)(v3 + 20);
  v5 = glitch::video::IBuffer::map(*(_DWORD *)(v33 + 36), 2);
  v6 = *(_DWORD *)(LODWORD(v27) + 432);
  v7 = *(_DWORD *)(v33 + 40);
  v35 = 0;
  v34 = nullptr;
  v8 = *(_DWORD *)(v6 + 20);
  v9 = v5 + v7;
  if ( (*(_DWORD *)(v8 + 4) & 4) != 0 )
    glitch::video::SVertexStream::SMapBuffer<glitch::core::vector2d<float>>::reset(&v34, (int *)(v8 + 52));
  v10 = *(_DWORD *)(LODWORD(v27) + 304);
  v11 = (float)(v10 - 1);
  v31 = a2 / v11;
  this = a3 / v11;
  v30 = a3 / (float)(v10 - 1);
  if ( v10 > 0 )
  {
    v28 = 0.0;
    v32 = 0;
    v12 = 0;
    v13 = 0.0;
    while ( 1 )
    {
      v14 = 0.0;
      v15 = 0;
      v16 = 0.0;
      while ( 1 )
      {
        v19 = (float *)(v9 + *(unsigned __int16 *)(v33 + 50) * v12);
        *v19 = 1.0 - v13;
        v19[1] = v16;
        v20 = v35;
        if ( !v35 )
          goto LABEL_8;
        if ( a3 != 0.0 )
          break;
        v17 = *((unsigned __int16 *)v34 + 7) * v12;
        *(float *)(v35 + v17) = 1.0 - v13;
        *(float *)(v20 + v17 + 4) = v16;
LABEL_8:
        ++v15;
        ++v12;
        v18 = *(_DWORD *)(LODWORD(v27) + 304);
        if ( v18 <= v15 )
          goto LABEL_14;
LABEL_9:
        v16 = v16 + v31;
        v14 = v14 + v30;
      }
      ++v15;
      v21 = *((unsigned __int16 *)v34 + 7) * v12++;
      *(float *)(v35 + v21) = 1.0 - v28;
      *(float *)(v20 + v21 + 4) = v14;
      v18 = *(_DWORD *)(LODWORD(v27) + 304);
      if ( v18 > v15 )
        goto LABEL_9;
LABEL_14:
      LODWORD(this) = v32 + 1;
      if ( v18 > ++v32 )
      {
        v13 = v13 + v31;
        this = v28 + v30;
        v28 = v28 + v30;
        if ( v18 > 0 )
          continue;
      }
      break;
    }
  }
  if ( v35 )
  {
    v23 = (_BYTE *)*v34;
    v24 = *(_BYTE *)(*v34 + 19);
    if ( (v24 & 0x1Fu) <= 1 )
    {
      if ( (v23[18] & 0x20) != 0 )
        this = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(*(_DWORD *)v23 + 24))(*v34));
      v23[19] = 0;
    }
    else
    {
      v23[19] = ((v24 & 0x1F) - 1) | v24 & 0xE0;
    }
    v35 = 0;
    v34 = nullptr;
  }
  if ( v9 )
  {
    v25 = *(_BYTE **)(v33 + 36);
    v26 = v25[19];
    if ( (v26 & 0x1Fu) <= 1 )
    {
      if ( (v25[18] & 0x20) != 0 )
        this = COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(*(_DWORD *)v25 + 24))(*(_DWORD *)(v33 + 36)));
      v25[19] = 0;
    }
    else
    {
      v25[19] = ((v26 & 0x1F) - 1) | v26 & 0xE0;
    }
  }
  return this;
}


// ===== 6d3440 glitch::scene::CTerrainSceneNode::preRenderIndicesCalculations(void) =====
int __fastcall glitch::scene::CTerrainSceneNode::preRenderIndicesCalculations(int this)
{
  int v1; // r4
  int v2; // r5
  int v3; // r1
  int v4; // r6
  _BYTE *v5; // r4
  char v6; // r3
  char v7; // r2
  int v8; // r6

  v1 = *(_DWORD *)(this + 432);
  v2 = this;
  v3 = *(unsigned __int16 *)(v1 + 44);
  if ( v3 != 1 )
  {
    if ( v3 != 2 )
      return this;
    v8 = glitch::video::IBuffer::map(*(_DWORD *)(v1 + 24), 2) + *(_DWORD *)(v1 + 28);
    this = glitch::scene::CTerrainSceneNode::preRenderIndicesCalculationsDirect<unsigned int>(v2, v8);
    if ( !v8 )
      return this;
    v5 = *(_BYTE **)(v1 + 24);
    v6 = v5[19];
    v7 = v6 & 0x1F;
    if ( (v6 & 0x1Fu) <= 1 )
    {
      if ( (v5[18] & 0x20) != 0 )
        this = (*(int (__fastcall **)(_BYTE *))(*(_DWORD *)v5 + 24))(v5);
      v5[19] = 0;
      return this;
    }
LABEL_6:
    v5[19] = (v7 - 1) | v6 & 0xE0;
    return this;
  }
  v4 = glitch::video::IBuffer::map(*(_DWORD *)(v1 + 24), 2) + *(_DWORD *)(v1 + 28);
  this = glitch::scene::CTerrainSceneNode::preRenderIndicesCalculationsDirect<unsigned short>(v2, v4);
  if ( !v4 )
    return this;
  v5 = *(_BYTE **)(v1 + 24);
  v6 = v5[19];
  v7 = v6 & 0x1F;
  if ( (v6 & 0x1Fu) > 1 )
    goto LABEL_6;
  if ( (v5[18] & 0x20) != 0 )
    this = (*(int (__fastcall **)(_BYTE *))(*(_DWORD *)v5 + 24))(v5);
  v5[19] = 0;
  return this;
}


// ===== 6d3544 glitch::scene::CTerrainSceneNode::onRegisterSceneNode(void) =====
int __fastcall glitch::scene::CTerrainSceneNode::onRegisterSceneNode(glitch::scene::CTerrainSceneNode *this)
{
  if ( *(_DWORD *)(*((_DWORD *)this + 68) + 228) )
  {
    glitch::scene::CTerrainSceneNode::preRenderLODCalculations(this);
    glitch::scene::CTerrainSceneNode::preRenderIndicesCalculations((int)this);
    *((_BYTE *)this + 447) = 0;
  }
  return 1;
}


// ===== 6d3578 glitch::scene::CTerrainSceneNode::calculateNormals(boost::intrusive_ptr<glitch::scene::CMeshBuffer> const&) =====
int __fastcall glitch::scene::CTerrainSceneNode::calculateNormals(int result, int a2)
{
  int v3; // r0
  int v4; // r3
  int v5; // r4
  int v6; // r6
  int v7; // r3
  int v8; // r8
  int v9; // r5
  int v10; // r10
  int v11; // r11
  int v12; // r9
  int v13; // r2
  int v14; // r11
  float v15; // r3
  int v16; // r2
  float v17; // r0
  int v18; // r11
  int v19; // r9
  float v20; // r0
  int v21; // r9
  float v22; // r6
  int v23; // r9
  int v24; // r6
  int v25; // r2
  int v26; // r9
  float v27; // r3
  int v28; // r2
  float *v29; // r11
  int v30; // r6
  float v31; // r0
  int v32; // r6
  float v33; // r9
  float v34; // r3
  int v35; // r6
  int v36; // r6
  int v37; // r6
  int v38; // r9
  int v39; // r10
  int v40; // r3
  int v41; // r9
  float v42; // r11
  int v43; // r3
  int v44; // r10
  float v45; // r0
  int v46; // r9
  float v47; // r9
  float v48; // r0
  int v49; // r10
  float v50; // r6
  int v51; // r11
  int v52; // r6
  int v53; // r3
  int v54; // r11
  float v55; // r9
  int v56; // r3
  int v57; // r10
  int v58; // r6
  float v59; // r0
  int v60; // r10
  float v61; // r10
  float v62; // r0
  int v63; // r6
  float v64; // r11
  int v65; // r9
  int v66; // r10
  int v67; // r3
  int v68; // r9
  float v69; // r11
  int v70; // r3
  int v71; // r10
  float v72; // r0
  int v73; // r9
  float v74; // r9
  float v75; // r0
  int v76; // r10
  float v77; // r6
  int v78; // r11
  int v79; // r3
  int v80; // r6
  int v81; // r11
  int v82; // r3
  int v83; // r10
  float v84; // r9
  int v85; // r3
  int v86; // r6
  float v87; // r0
  int v88; // r10
  float v89; // r10
  float v90; // r0
  int v91; // r6
  float v92; // r11
  int v93; // r11
  int v94; // r9
  int v95; // r1
  int v96; // r11
  float v97; // r3
  int v98; // r1
  float v99; // r0
  int v100; // r11
  int v101; // r9
  float v102; // r0
  int v103; // r9
  float v104; // r6
  int v105; // r9
  int v106; // r1
  int v107; // r6
  int v108; // r9
  int v109; // r1
  int v110; // r11
  float v111; // r3
  int v112; // r1
  int v113; // r9
  float v114; // r0
  int v115; // r11
  float v116; // r0
  int v117; // r9
  float v118; // r6
  _BOOL4 v119; // r2
  int v120; // r12
  int v121; // r3
  _BYTE *v122; // r5
  char v123; // r3
  _BYTE *v124; // r4
  char v125; // r3
  _BOOL4 v126; // [sp+4h] [bp-70h]
  _BOOL4 v127; // [sp+4h] [bp-70h]
  int v128; // [sp+8h] [bp-6Ch]
  int v129; // [sp+8h] [bp-6Ch]
  float v130; // [sp+Ch] [bp-68h]
  float v131; // [sp+Ch] [bp-68h]
  float v132; // [sp+Ch] [bp-68h]
  float v133; // [sp+Ch] [bp-68h]
  float v134; // [sp+Ch] [bp-68h]
  float v135; // [sp+Ch] [bp-68h]
  float v136; // [sp+Ch] [bp-68h]
  float v137; // [sp+Ch] [bp-68h]
  float v138; // [sp+10h] [bp-64h]
  float v139; // [sp+10h] [bp-64h]
  float v140; // [sp+10h] [bp-64h]
  float v141; // [sp+10h] [bp-64h]
  float v142; // [sp+10h] [bp-64h]
  float v143; // [sp+10h] [bp-64h]
  float v144; // [sp+10h] [bp-64h]
  float v145; // [sp+10h] [bp-64h]
  float v146; // [sp+14h] [bp-60h]
  float v147; // [sp+14h] [bp-60h]
  float v148; // [sp+14h] [bp-60h]
  float v149; // [sp+14h] [bp-60h]
  float v150; // [sp+14h] [bp-60h]
  float v151; // [sp+14h] [bp-60h]
  float v152; // [sp+14h] [bp-60h]
  float v153; // [sp+14h] [bp-60h]
  float v154; // [sp+18h] [bp-5Ch]
  float v155; // [sp+18h] [bp-5Ch]
  float v156; // [sp+18h] [bp-5Ch]
  float v157; // [sp+18h] [bp-5Ch]
  float v158; // [sp+18h] [bp-5Ch]
  float v159; // [sp+18h] [bp-5Ch]
  float v160; // [sp+18h] [bp-5Ch]
  float v161; // [sp+18h] [bp-5Ch]
  float v162; // [sp+1Ch] [bp-58h]
  float v163; // [sp+1Ch] [bp-58h]
  float v164; // [sp+1Ch] [bp-58h]
  float v165; // [sp+1Ch] [bp-58h]
  float v166; // [sp+1Ch] [bp-58h]
  float v167; // [sp+1Ch] [bp-58h]
  float v168; // [sp+1Ch] [bp-58h]
  float v169; // [sp+1Ch] [bp-58h]
  _BOOL4 v170; // [sp+20h] [bp-54h]
  int v171; // [sp+24h] [bp-50h]
  float v172; // [sp+28h] [bp-4Ch]
  float v173; // [sp+28h] [bp-4Ch]
  float v174; // [sp+28h] [bp-4Ch]
  float v175; // [sp+28h] [bp-4Ch]
  int v176; // [sp+2Ch] [bp-48h]
  int v177; // [sp+38h] [bp-3Ch]
  int v178; // [sp+3Ch] [bp-38h]
  int v179; // [sp+40h] [bp-34h]
  int v180; // [sp+48h] [bp-2Ch]
  int v181; // [sp+4Ch] [bp-28h]
  int v182; // [sp+50h] [bp-24h]
  int v183; // [sp+54h] [bp-20h]
  float v184; // [sp+58h] [bp-1Ch] BYREF
  float v185; // [sp+5Ch] [bp-18h]
  float v186; // [sp+60h] [bp-14h]
  float v187; // [sp+64h] [bp-10h] BYREF
  float v188; // [sp+68h] [bp-Ch]
  float v189; // [sp+6Ch] [bp-8h]

  v171 = result;
  v181 = *(_DWORD *)(*(_DWORD *)a2 + 20);
  if ( (*(_DWORD *)(v181 + 4) & 0x20000) == 0 )
    return result;
  v3 = glitch::video::IBuffer::map(*(_DWORD *)(v181 + 20), 3);
  v4 = *(_DWORD *)(*(_DWORD *)a2 + 20);
  v182 = v4 + 20;
  v183 = (unsigned __int8)(*(_BYTE *)(v4 + 12) + 1);
  v5 = v3 + *(_DWORD *)(v181 + 24);
  result = glitch::video::IBuffer::map(*(_DWORD *)(v4 + 20 + 16 * (unsigned __int8)v183), 3);
  v179 = v182 + 16 * v183;
  v6 = *(_DWORD *)(v171 + 304);
  v7 = *(_DWORD *)(v179 + 4);
  v187 = 0.0;
  v176 = result + v7;
  v188 = 0.0;
  v189 = 0.0;
  if ( v6 > 0 )
  {
    v177 = -1;
    v178 = 1;
    v8 = 0;
    while ( v6 <= 0 )
    {
      v180 = v178;
LABEL_28:
      result = v178 + 1;
      ++v8;
      ++v178;
      ++v177;
      if ( v6 <= v180 )
        goto LABEL_29;
    }
    v170 = v8 > 0;
    v180 = v178;
    v9 = 0;
    while ( 1 )
    {
      v119 = v9 > 0;
      v184 = 0.0;
      v120 = v119 && v170;
      v185 = 0.0;
      v186 = 0.0;
      if ( v119 && v170 )
        break;
      if ( v8 <= 0 )
      {
        v121 = v6 - 1;
        v120 = 0;
        goto LABEL_20;
      }
      v121 = v6 - 1;
      if ( v6 - 1 > v9 )
        goto LABEL_26;
LABEL_20:
      if ( v121 > v8 )
      {
        if ( v121 > v9 )
        {
          v93 = v9 + v8 * v6;
          v94 = *(unsigned __int16 *)(v181 + 34);
          v10 = v9 + 1;
          v95 = v94 + v93 * v94;
          v96 = v94 * v93;
          v97 = *(float *)(v5 + v95);
          v98 = v5 + v95;
          v144 = *(float *)(v98 + 4);
          v152 = *(float *)(v98 + 8);
          v99 = *(float *)(v5 + v96);
          v127 = v119;
          v100 = v5 + v96;
          v160 = v99 - v97;
          v168 = *(float *)(v100 + 4) - v144;
          v174 = *(float *)(v100 + 8) - v152;
          v101 = v94 * (v9 + 1 + v178 * v6);
          v102 = *(float *)(v5 + v101);
          v129 = v120 + 2;
          v103 = v5 + v101;
          v104 = *(float *)(v103 + 4) - v144;
          v136 = *(float *)(v103 + 8) - v152;
          v187 = (float)(v136 * COERCE_FLOAT(LODWORD(v168) + 0x80000000)) + (float)(v174 * v104);
          v188 = (float)((float)(v102 - v97) * COERCE_FLOAT(LODWORD(v174) + 0x80000000)) + (float)(v160 * v136);
          v189 = (float)(v104 * COERCE_FLOAT(LODWORD(v160) + 0x80000000)) + (float)(v168 * (float)(v102 - v97));
          glitch::core::vector3d<float>::normalize(&v187);
          v184 = v184 + v187;
          v185 = v185 + v188;
          v105 = *(_DWORD *)(v171 + 304);
          v186 = v186 + v189;
          v106 = v9 + v8 * v105;
          v107 = *(unsigned __int16 *)(v181 + 34);
          v108 = v9 + v178 * v105;
          v109 = v107 + v106 * v107;
          v110 = v107 + v108 * v107;
          v111 = *(float *)(v5 + v109);
          v112 = v5 + v109;
          v113 = v107 * v108;
          v145 = *(float *)(v112 + 4);
          v153 = *(float *)(v112 + 8);
          v114 = *(float *)(v5 + v110);
          v115 = v5 + v110;
          v161 = v114 - v111;
          v169 = *(float *)(v115 + 4) - v145;
          v175 = *(float *)(v115 + 8) - v153;
          v116 = *(float *)(v5 + v113) - v111;
          v117 = v5 + v113;
          v118 = *(float *)(v117 + 4) - v145;
          v137 = *(float *)(v117 + 8) - v153;
          v187 = (float)(v137 * COERCE_FLOAT(LODWORD(v169) + 0x80000000)) + (float)(v175 * v118);
          v188 = (float)(v116 * COERCE_FLOAT(LODWORD(v175) + 0x80000000)) + (float)(v161 * v137);
          v189 = (float)(v118 * COERCE_FLOAT(LODWORD(v161) + 0x80000000)) + (float)(v169 * v116);
          glitch::core::vector3d<float>::normalize(&v187);
          v184 = v184 + v187;
          v185 = v185 + v188;
          v119 = v127;
          v120 = v129;
          v6 = *(_DWORD *)(v171 + 304);
          v186 = v186 + v189;
          v121 = v6 - 1;
        }
        else
        {
          v10 = v9 + 1;
        }
        if ( v121 <= v8 )
          v119 = 0;
        if ( v119 )
        {
          v11 = v9 + v8 * v6;
          v12 = *(unsigned __int16 *)(v181 + 34);
          v13 = v12 * (v11 - 1);
          v14 = v12 * v11;
          v15 = *(float *)(v5 + v13);
          v16 = v5 + v13;
          v138 = *(float *)(v16 + 4);
          v146 = *(float *)(v16 + 8);
          v17 = *(float *)(v5 + v14);
          v18 = v5 + v14;
          v154 = v17 - v15;
          v162 = *(float *)(v18 + 4) - v138;
          v172 = *(float *)(v18 + 8) - v146;
          v19 = v12 * (v9 + v178 * v6);
          v20 = *(float *)(v5 + v19) - v15;
          v21 = v5 + v19;
          v22 = *(float *)(v21 + 4) - v138;
          v130 = *(float *)(v21 + 8) - v146;
          v187 = (float)(v130 * COERCE_FLOAT(LODWORD(v162) + 0x80000000)) + (float)(v172 * v22);
          v188 = (float)(v20 * COERCE_FLOAT(LODWORD(v172) + 0x80000000)) + (float)(v154 * v130);
          v189 = (float)(v22 * COERCE_FLOAT(LODWORD(v154) + 0x80000000)) + (float)(v162 * v20);
          glitch::core::vector3d<float>::normalize(&v187);
          v184 = v184 + v187;
          v185 = v185 + v188;
          v23 = *(_DWORD *)(v171 + 304);
          v186 = v186 + v189;
          v24 = *(unsigned __int16 *)(v181 + 34);
          v25 = v24 * (v8 * v23 - 1 + v9);
          v26 = v9 + v178 * v23;
          v27 = *(float *)(v5 + v25);
          v28 = v5 + v25;
          v139 = *(float *)(v28 + 4);
          v147 = *(float *)(v28 + 8);
          v29 = (float *)(v5 + v24 * v26);
          v155 = *v29 - v27;
          v163 = v29[1] - v139;
          v30 = v24 * (v26 - 1);
          v173 = v29[2] - v147;
          v31 = *(float *)(v5 + v30) - v27;
          v32 = v5 + v30;
          v33 = *(float *)(v32 + 4) - v139;
          v131 = *(float *)(v32 + 8) - v147;
          v187 = (float)(v131 * COERCE_FLOAT(LODWORD(v163) + 0x80000000)) + (float)(v173 * v33);
          v188 = (float)(v31 * COERCE_FLOAT(LODWORD(v173) + 0x80000000)) + (float)(v155 * v131);
          v189 = (float)(v33 * COERCE_FLOAT(LODWORD(v155) + 0x80000000)) + (float)(v163 * v31);
          glitch::core::vector3d<float>::normalize(&v187);
          v184 = v184 + v187;
          v185 = v185 + v188;
          v186 = v186 + v189;
          goto LABEL_14;
        }
      }
      else
      {
        v10 = v9 + 1;
      }
      if ( !v120 )
      {
        v184 = 0.0;
        v185 = 1.0;
        v186 = 0.0;
        v34 = 0.0;
        goto LABEL_15;
      }
LABEL_14:
      glitch::core::vector3d<float>::normalize(&v184);
      v34 = v184;
      v6 = *(_DWORD *)(v171 + 304);
LABEL_15:
      v35 = v9 + v6 * v8;
      v9 = v10;
      v36 = *(unsigned __int16 *)(v179 + 14) * v35;
      *(float *)(v176 + v36) = v34;
      v37 = v176 + v36;
      *(float *)(v37 + 4) = v185;
      *(float *)(v37 + 8) = v186;
      v6 = *(_DWORD *)(v171 + 304);
      if ( v6 <= v10 )
        goto LABEL_28;
    }
    v38 = v9 + v177 * v6;
    v39 = *(unsigned __int16 *)(v181 + 34);
    v40 = v39 * (v38 - 1);
    v41 = v39 * v38;
    v42 = *(float *)(v5 + v40);
    v43 = v5 + v40;
    v44 = v39 * (v9 + v8 * v6);
    v140 = *(float *)(v43 + 4);
    v148 = *(float *)(v43 + 8);
    v45 = *(float *)(v5 + v41);
    v46 = v5 + v41;
    v156 = v45 - v42;
    v164 = *(float *)(v46 + 4) - v140;
    v47 = *(float *)(v46 + 8) - v148;
    v48 = *(float *)(v5 + v44) - v42;
    v49 = v5 + v44;
    v50 = *(float *)(v49 + 4) - v140;
    v132 = *(float *)(v49 + 8) - v148;
    v187 = (float)(v132 * COERCE_FLOAT(LODWORD(v164) + 0x80000000)) + (float)(v47 * v50);
    v188 = (float)(v48 * COERCE_FLOAT(LODWORD(v47) + 0x80000000)) + (float)(v156 * v132);
    v189 = (float)(v50 * COERCE_FLOAT(LODWORD(v156) + 0x80000000)) + (float)(v164 * v48);
    glitch::core::vector3d<float>::normalize(&v187);
    v184 = v184 + v187;
    v185 = v185 + v188;
    v51 = *(_DWORD *)(v171 + 304);
    v186 = v186 + v189;
    v52 = *(unsigned __int16 *)(v181 + 34);
    v53 = v52 * (v177 * v51 - 1 + v9);
    v54 = v9 + v8 * v51;
    v55 = *(float *)(v5 + v53);
    v56 = v5 + v53;
    v57 = v52 * (v54 - 1);
    v141 = *(float *)(v56 + 4);
    v58 = v52 * v54;
    v149 = *(float *)(v56 + 8);
    v59 = *(float *)(v5 + v57) - v55;
    v60 = v5 + v57;
    v157 = v59;
    v165 = *(float *)(v60 + 4) - v141;
    v61 = *(float *)(v60 + 8) - v149;
    v62 = *(float *)(v5 + v58) - v55;
    v63 = v5 + v58;
    v64 = *(float *)(v63 + 4) - v141;
    v133 = *(float *)(v63 + 8) - v149;
    v187 = (float)(v133 * COERCE_FLOAT(LODWORD(v165) + 0x80000000)) + (float)(v61 * v64);
    v188 = (float)(v62 * COERCE_FLOAT(LODWORD(v61) + 0x80000000)) + (float)(v157 * v133);
    v189 = (float)(v64 * COERCE_FLOAT(LODWORD(v157) + 0x80000000)) + (float)(v165 * v62);
    glitch::core::vector3d<float>::normalize(&v187);
    v184 = v184 + v187;
    v185 = v185 + v188;
    v186 = v186 + v189;
    v119 = v9 > 0;
    v120 = 2;
    v6 = *(_DWORD *)(v171 + 304);
    v121 = v6 - 1;
    if ( v6 - 1 <= v9 )
      goto LABEL_20;
LABEL_26:
    v65 = v9 + v177 * v6;
    v66 = *(unsigned __int16 *)(v181 + 34);
    v67 = v66 * v65;
    v68 = v66 + v65 * v66;
    v69 = *(float *)(v5 + v67);
    v70 = v5 + v67;
    v71 = v66 + (v9 + v8 * v6) * v66;
    v142 = *(float *)(v70 + 4);
    v150 = *(float *)(v70 + 8);
    v72 = *(float *)(v5 + v68);
    v126 = v119;
    v128 = v120 + 2;
    v73 = v5 + v68;
    v158 = v72 - v69;
    v166 = *(float *)(v73 + 4) - v142;
    v74 = *(float *)(v73 + 8) - v150;
    v75 = *(float *)(v5 + v71) - v69;
    v76 = v5 + v71;
    v77 = *(float *)(v76 + 4) - v142;
    v134 = *(float *)(v76 + 8) - v150;
    v187 = (float)(v134 * COERCE_FLOAT(LODWORD(v166) + 0x80000000)) + (float)(v74 * v77);
    v188 = (float)(v75 * COERCE_FLOAT(LODWORD(v74) + 0x80000000)) + (float)(v158 * v134);
    v189 = (float)(v77 * COERCE_FLOAT(LODWORD(v158) + 0x80000000)) + (float)(v166 * v75);
    glitch::core::vector3d<float>::normalize(&v187);
    v184 = v184 + v187;
    v185 = v185 + v188;
    v78 = *(_DWORD *)(v171 + 304);
    v186 = v186 + v189;
    v79 = v9 + v177 * v78;
    v80 = *(unsigned __int16 *)(v181 + 34);
    v81 = v9 + v8 * v78;
    v82 = v80 * v79;
    v83 = v80 + v81 * v80;
    v84 = *(float *)(v5 + v82);
    v85 = v5 + v82;
    v86 = v80 * v81;
    v143 = *(float *)(v85 + 4);
    v151 = *(float *)(v85 + 8);
    v87 = *(float *)(v5 + v83) - v84;
    v88 = v5 + v83;
    v159 = v87;
    v167 = *(float *)(v88 + 4) - v143;
    v89 = *(float *)(v88 + 8) - v151;
    v90 = *(float *)(v5 + v86) - v84;
    v91 = v5 + v86;
    v92 = *(float *)(v91 + 4) - v143;
    v135 = *(float *)(v91 + 8) - v151;
    v187 = (float)(v135 * COERCE_FLOAT(LODWORD(v167) + 0x80000000)) + (float)(v89 * v92);
    v188 = (float)(v90 * COERCE_FLOAT(LODWORD(v89) + 0x80000000)) + (float)(v159 * v135);
    v189 = (float)(v92 * COERCE_FLOAT(LODWORD(v159) + 0x80000000)) + (float)(v167 * v90);
    glitch::core::vector3d<float>::normalize(&v187);
    v184 = v184 + v187;
    v185 = v185 + v188;
    v119 = v126;
    v120 = v128;
    v6 = *(_DWORD *)(v171 + 304);
    v186 = v186 + v189;
    v121 = v6 - 1;
    goto LABEL_20;
  }
LABEL_29:
  if ( v176 )
  {
    v122 = *(_BYTE **)(v182 + 16 * v183);
    v123 = v122[19];
    if ( (v123 & 0x1Fu) <= 1 )
    {
      if ( (v122[18] & 0x20) != 0 )
        result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v122 + 24))(*(_DWORD *)(v182 + 16 * v183));
      v122[19] = 0;
    }
    else
    {
      v122[19] = ((v123 & 0x1F) - 1) | v123 & 0xE0;
    }
  }
  if ( v5 )
  {
    result = v181;
    v124 = *(_BYTE **)(v181 + 20);
    v125 = v124[19];
    if ( (v125 & 0x1Fu) <= 1 )
    {
      if ( (v124[18] & 0x20) != 0 )
        result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v124 + 24))(*(_DWORD *)(v181 + 20));
      v124[19] = 0;
    }
    else
    {
      v124[19] = ((v125 & 0x1F) - 1) | v125 & 0xE0;
    }
  }
  return result;
}


// ===== 6d4454 glitch::scene::CTerrainSceneNode::loadHeightMap(glitch::io::IReadFile *,glitch::video::SColor,int) =====
int __fastcall glitch::scene::CTerrainSceneNode::loadHeightMap(int a1, int a2, int a3, int a4)
{
  int v4; // r4
  glitch::io::IReadFile **v5; // r5
  char *v6; // r4
  size_t v7; // r0
  int v8; // r3
  int v9; // r12
  glitch::video::CVertexStreams *v10; // r3
  glitch::IReferenceCounted *v11; // r3
  glitch::IReferenceCounted **v12; // r3
  glitch::IReferenceCounted *v13; // r4
  void *v14; // r0
  glitch::IReferenceCounted *v15; // r4
  void *v16; // r0
  int v17; // r4
  int v18; // r0
  int v19; // r2
  int v20; // r9
  int v21; // r10
  int v22; // r11
  int v23; // r4
  float v24; // r7
  signed int v25; // r5
  float v26; // r8
  int v27; // r6
  float *v28; // r11
  float *v29; // r1
  int v30; // r3
  int v31; // r2
  _DWORD *v32; // r3
  _BYTE *v33; // r3
  _BYTE *v35; // r4
  char v36; // r3
  _BYTE *v37; // r4
  char v38; // r3
  _BYTE *v39; // r4
  char v40; // r3
  _BYTE *v41; // r4
  char v42; // r3
  _BYTE *v43; // r4
  char v44; // r3
  glitch::IReferenceCounted *v45; // r0
  int v46; // r9
  char *v47; // r4
  int v48; // r5
  int v49; // r6
  int i; // r7
  float *v51; // r10
  float v52; // r11
  float v53; // r0
  int v54; // r6
  float *v55; // r3
  _BYTE *v56; // r4
  char v57; // r3
  int v58; // r2
  int v59; // r3
  int v60; // r6
  int v61; // r5
  glitch::IReferenceCounted *v62; // r8
  size_t v63; // r7
  void *v64; // r0
  int v65; // r3
  glitch::os::Timer *v66; // r0
  int v67; // r0
  bool v68; // zf
  int *v70; // r0
  int *Stream; // r0
  int v72; // r4
  int v73; // [sp+18h] [bp-1C4h]
  int v74; // [sp+1Ch] [bp-1C0h]
  float v76; // [sp+24h] [bp-1B8h]
  char *v77; // [sp+28h] [bp-1B4h]
  int v78; // [sp+2Ch] [bp-1B0h]
  float v79; // [sp+30h] [bp-1ACh]
  unsigned __int16 *v80; // [sp+34h] [bp-1A8h]
  int *v81; // [sp+38h] [bp-1A4h]
  char v82; // [sp+3Ch] [bp-1A0h]
  char v83; // [sp+40h] [bp-19Ch]
  char v84; // [sp+44h] [bp-198h]
  char v85; // [sp+48h] [bp-194h]
  float v86; // [sp+4Ch] [bp-190h]
  unsigned int v87; // [sp+50h] [bp-18Ch]
  glitch::video::CVertexStreams *v88; // [sp+54h] [bp-188h]
  glitch::IReferenceCounted **v89; // [sp+58h] [bp-184h]
  glitch::video::CVertexStreams *v90; // [sp+5Ch] [bp-180h]
  int v91; // [sp+64h] [bp-178h]
  int RealTime; // [sp+74h] [bp-168h]
  int Pixel; // [sp+78h] [bp-164h]
  glitch::IReferenceCounted *v95; // [sp+88h] [bp-154h] BYREF
  int v96; // [sp+8Ch] [bp-150h]
  int v97; // [sp+90h] [bp-14Ch]
  int v98; // [sp+94h] [bp-148h]
  int v99; // [sp+98h] [bp-144h]
  __int16 v100; // [sp+9Ch] [bp-140h]
  __int16 v101; // [sp+9Eh] [bp-13Eh]
  int *v102; // [sp+A0h] [bp-13Ch] BYREF
  int v103; // [sp+A4h] [bp-138h]
  int *v104; // [sp+A8h] [bp-134h] BYREF
  int v105; // [sp+ACh] [bp-130h]
  int v106; // [sp+B0h] [bp-12Ch]
  glitch::IReferenceCounted *v107; // [sp+B4h] [bp-128h] BYREF
  glitch::IReferenceCounted *v108; // [sp+B8h] [bp-124h] BYREF
  glitch::IReferenceCounted *v109; // [sp+BCh] [bp-120h] BYREF
  glitch::IReferenceCounted *v110; // [sp+C0h] [bp-11Ch] BYREF
  glitch::IReferenceCounted *v111; // [sp+C4h] [bp-118h] BYREF
  glitch::IReferenceCounted *v112; // [sp+C8h] [bp-114h] BYREF
  glitch::IReferenceCounted *v113; // [sp+CCh] [bp-110h] BYREF
  glitch::IReferenceCounted *v114; // [sp+D0h] [bp-10Ch] BYREF
  char v115[256]; // [sp+D4h] [bp-108h] BYREF

  v4 = a2;
  v85 = a3;
  v84 = BYTE1(a3);
  v83 = BYTE2(a3);
  v82 = HIBYTE(a3);
  if ( !a2 )
    return v4;
  RealTime = glitch::os::Timer::getRealTime((glitch::os::Timer *)(unsigned __int8)a3);
  v5 = *(glitch::io::IReadFile ***)(*(_DWORD *)(a1 + 272) + 20);
  glitch::video::CTextureManager::createImageFromFile((glitch::video::CTextureManager *)&v114, v5[56], v4);
  if ( v114 )
  {
    v6 = (char *)(*(int (__fastcall **)(int))(*(_DWORD *)v4 + 40))(v4);
    v7 = LC_API_STRLEN_0(v6);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (_DWORD *)(a1 + 496),
      v6,
      &v6[v7]);
    v8 = *(_DWORD *)(a1 + 372);
    v9 = *((_DWORD *)v114 + 4);
    *(_DWORD *)(a1 + 304) = v9;
    if ( v8 == 33 )
    {
      if ( *(int *)(a1 + 384) > 5 )
        *(_DWORD *)(a1 + 384) = 5;
    }
    else if ( v8 > 33 )
    {
      if ( v8 == 65 )
      {
        if ( *(int *)(a1 + 384) > 6 )
          *(_DWORD *)(a1 + 384) = 6;
      }
      else if ( v8 == 129 && *(int *)(a1 + 384) > 7 )
      {
        *(_DWORD *)(a1 + 384) = 7;
      }
    }
    else if ( v8 == 9 )
    {
      if ( *(int *)(a1 + 384) > 3 )
        *(_DWORD *)(a1 + 384) = 3;
    }
    else if ( v8 == 17 && *(int *)(a1 + 384) > 4 )
    {
      *(_DWORD *)(a1 + 384) = 4;
    }
    v87 = v9 * v9;
    (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, _DWORD))(**(_DWORD **)(a1 + 428) + 20))(
      &v113,
      *(_DWORD *)(a1 + 428),
      0);
    v10 = *((glitch::video::CVertexStreams **)v113 + 5);
    v88 = v10;
    if ( v10 )
      ++*(_DWORD *)v10;
    v11 = *((glitch::IReferenceCounted **)v10 + 5);
    v77 = (char *)v88 + 20;
    v112 = v11;
    if ( v11 )
      ++*((_DWORD *)v11 + 1);
    v12 = *(glitch::IReferenceCounted ***)(*(_DWORD *)(a1 + 432) + 20);
    v90 = (glitch::video::CVertexStreams *)v12;
    if ( v12 )
      *v12 = (glitch::IReferenceCounted *)((char *)*v12 + 1);
    v89 = v12 + 5;
    v111 = v12[5];
    if ( v111 )
      ++*((_DWORD *)v111 + 1);
    v13 = v112;
    if ( !v112 )
    {
      (*((void (__fastcall **)(glitch::IReferenceCounted **, glitch::io::IReadFile **, _DWORD, int, _DWORD, _DWORD, int))*v5
       + 30))(
        &v110,
        v5,
        0,
        4,
        0,
        0,
        1);
      boost::intrusive_ptr<glitch::video::IBuffer>::operator=(&v112, &v110);
      if ( v110 )
        glitch::IReferenceCounted::drop(v110);
      glitch::video::CVertexStreams::setupStreams((int)v88, &v112, -1);
      (*((void (__fastcall **)(glitch::IReferenceCounted **, glitch::io::IReadFile **, _DWORD, int, _DWORD, _DWORD, int))*v5
       + 30))(
        &v109,
        v5,
        0,
        4,
        0,
        0,
        1);
      boost::intrusive_ptr<glitch::video::IBuffer>::operator=(&v111, &v109);
      if ( v109 )
        glitch::IReferenceCounted::drop(v109);
      glitch::video::CVertexStreams::setupStreams((int)v90, &v111, -1);
      v13 = v112;
    }
    v91 = *((unsigned __int16 *)v88 + 17) * v87;
    v14 = operator new[](v91, 0);
    glitch::video::IBuffer::reset(v13, v91, v14, 1);
    *((_DWORD *)v88 + 2) = v87;
    v15 = v111;
    v16 = operator new[](v91, 0);
    glitch::video::IBuffer::reset(v15, v91, v16, 1);
    *((_DWORD *)v90 + 2) = v87;
    v108 = *(glitch::IReferenceCounted **)(*(_DWORD *)(a1 + 432) + 24);
    if ( !v108 || (++*((_DWORD *)v108 + 1), !v108) )
    {
      (*((void (__fastcall **)(glitch::IReferenceCounted **, glitch::io::IReadFile **, int, int, _DWORD, _DWORD, int))*v5
       + 30))(
        &v107,
        v5,
        1,
        4,
        0,
        0,
        1);
      boost::intrusive_ptr<glitch::video::IBuffer>::operator=(&v108, &v107);
      if ( v107 )
        glitch::IReferenceCounted::drop(v107);
      v72 = *(_DWORD *)(a1 + 432);
      v95 = v108;
      if ( v108 )
        ++*((_DWORD *)v108 + 1);
      v99 = 0;
      v96 = 0;
      v97 = 0;
      v98 = 0;
      v100 = 1;
      v101 = 6;
      boost::intrusive_ptr<glitch::video::IBuffer>::operator=((glitch::IReferenceCounted **)(v72 + 24), &v95);
      *(_DWORD *)(v72 + 28) = v96;
      *(_DWORD *)(v72 + 32) = v97;
      *(_DWORD *)(v72 + 36) = v98;
      *(_DWORD *)(v72 + 40) = v99;
      *(_WORD *)(v72 + 44) = v100;
      *(_WORD *)(v72 + 46) = v101;
      if ( v95 )
        glitch::IReferenceCounted::drop(v95);
    }
    v17 = *((_DWORD *)v88 + 1);
    v18 = glitch::video::IBuffer::map(*((_DWORD *)v88 + 5), 2);
    v19 = *((_DWORD *)v88 + 6);
    v105 = 0;
    v73 = v18 + v19;
    v104 = nullptr;
    if ( (v17 & 2) != 0 )
    {
      Stream = (int *)glitch::video::CVertexStreams::getStream((int)v88, 1, (int)v88 + 36, *((_DWORD *)v88 + 4));
      glitch::video::SVertexStream::SMapBuffer<glitch::core::vector2d<float>>::reset(&v104, Stream);
    }
    v103 = 0;
    v102 = nullptr;
    if ( (v17 & 4) != 0 )
    {
      v70 = (int *)glitch::video::CVertexStreams::getStream((int)v88, 2, (int)v88 + 52, *((_DWORD *)v88 + 4));
      glitch::video::SVertexStream::SMapBuffer<glitch::core::vector2d<float>>::reset(&v102, v70);
      if ( (v17 & 0x20000) == 0 )
      {
        v80 = nullptr;
        v20 = 0;
        goto LABEL_29;
      }
    }
    else if ( (v17 & 0x20000) == 0 )
    {
      v80 = nullptr;
      v20 = 0;
LABEL_29:
      if ( (v17 & 0x40000) != 0 )
      {
        v81 = (int *)glitch::video::CVertexStreams::getStream(
                       (int)v88,
                       18,
                       (int)&v77[16 * *((unsigned __int8 *)v88 + 12) + 16],
                       *((_DWORD *)v88 + 4));
        v21 = glitch::video::IBuffer::map(*v81, 2) + v81[1];
      }
      else
      {
        v81 = nullptr;
        v21 = 0;
      }
      v22 = *(_DWORD *)(a1 + 304);
      v79 = 1.0 / (float)(v22 - 1);
      if ( v22 > 0 )
      {
        v78 = v17 & 6;
        v86 = 0.0;
        v74 = 0;
        v76 = 0.0;
        v23 = 0;
        do
        {
          v24 = 0.0;
          v25 = 0;
          v26 = 0.0;
          while ( 1 )
          {
            v27 = *((unsigned __int16 *)v88 + 17);
            Pixel = glitch::video::CImage::getPixel(v114, v22 - v74, v25);
            v28 = (float *)(v73 + v23 * v27);
            v106 = Pixel;
            *v28 = v76;
            v28[1] = (float)((float)((float)(unsigned __int8)Pixel * 0.3) + (float)((float)BYTE1(Pixel) * 0.59))
                   + (float)((float)BYTE2(Pixel) * 0.11);
            v28[2] = v26;
            if ( v78 )
            {
              v29 = (float *)(v105 + v23 * *((unsigned __int16 *)v104 + 7));
              *v29 = 1.0 - v86;
              v29[1] = v24;
              v30 = v103;
              if ( v103 )
              {
                v31 = v23 * *((unsigned __int16 *)v102 + 7);
                *(float *)(v103 + v31) = 1.0 - v86;
                *(float *)(v30 + v31 + 4) = v24;
              }
            }
            if ( v20 )
            {
              v32 = (_DWORD *)(v20 + v23 * v80[7]);
              *v32 = 0;
              v32[2] = 0;
              v32[1] = 1065353216;
            }
            if ( v21 )
            {
              v33 = (_BYTE *)(v21 + v23 * *((unsigned __int16 *)v81 + 7));
              v33[1] = v84;
              v33[3] = v82;
              v33[2] = v83;
              *v33 = v85;
            }
            ++v25;
            ++v23;
            v22 = *(_DWORD *)(a1 + 304);
            if ( v22 <= v25 )
              break;
            v26 = v26 + 1.0;
            v24 = v24 + v79;
          }
          if ( v22 <= ++v74 )
            break;
          v76 = v76 + 1.0;
          v86 = v86 + v79;
        }
        while ( v22 > 0 );
      }
      if ( v21 )
      {
        v35 = (_BYTE *)*v81;
        v36 = *(_BYTE *)(*v81 + 19);
        if ( (v36 & 0x1Fu) <= 1 )
        {
          if ( (v35[18] & 0x20) != 0 )
            (*(void (__fastcall **)(int))(*(_DWORD *)v35 + 24))(*v81);
          v35[19] = 0;
        }
        else
        {
          v35[19] = ((v36 & 0x1F) - 1) | v36 & 0xE0;
        }
      }
      if ( v20 )
      {
        v37 = *(_BYTE **)v80;
        v38 = *(_BYTE *)(*(_DWORD *)v80 + 19);
        if ( (v38 & 0x1Fu) <= 1 )
        {
          if ( (v37[18] & 0x20) != 0 )
            (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v37 + 24))(*(_DWORD *)v80);
          v37[19] = 0;
        }
        else
        {
          v37[19] = ((v38 & 0x1F) - 1) | v38 & 0xE0;
        }
      }
      if ( v103 )
      {
        v39 = (_BYTE *)*v102;
        v40 = *(_BYTE *)(*v102 + 19);
        if ( (v40 & 0x1Fu) <= 1 )
        {
          if ( (v39[18] & 0x20) != 0 )
            (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v39 + 24))(*v102);
          v39[19] = 0;
        }
        else
        {
          v39[19] = ((v40 & 0x1F) - 1) | v40 & 0xE0;
        }
        v103 = 0;
        v102 = nullptr;
      }
      if ( v105 )
      {
        v41 = (_BYTE *)*v104;
        v42 = *(_BYTE *)(*v104 + 19);
        if ( (v42 & 0x1Fu) <= 1 )
        {
          if ( (v41[18] & 0x20) != 0 )
            (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v41 + 24))(*v104);
          v41[19] = 0;
        }
        else
        {
          v41[19] = ((v42 & 0x1F) - 1) | v42 & 0xE0;
        }
        v105 = 0;
        v104 = nullptr;
      }
      if ( v73 )
      {
        v43 = *((_BYTE **)v88 + 5);
        v44 = v43[19];
        if ( (v44 & 0x1Fu) <= 1 )
        {
          if ( (v43[18] & 0x20) != 0 )
            (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v43 + 24))(*((_DWORD *)v88 + 5));
          v43[19] = 0;
        }
        else
        {
          v43[19] = ((v44 & 0x1F) - 1) | v44 & 0xE0;
        }
      }
      v45 = v114;
      v114 = nullptr;
      if ( v45 )
        glitch::IReferenceCounted::drop(v45);
      glitch::scene::CTerrainSceneNode::smoothTerrain(a1, (int)&v113, a4);
      glitch::scene::CTerrainSceneNode::calculateNormals(a1, (int)&v113);
      v46 = *(_DWORD *)(*((_DWORD *)v88 + 5) + 8) + *((_DWORD *)v88 + 6);
      v47 = (char *)v89[1] + glitch::video::IBuffer::map(*((_DWORD *)v90 + 5), 2);
      memcpy(v47, (const void *)(*(_DWORD *)(*((_DWORD *)v88 + 5) + 8) + *((_DWORD *)v88 + 6)), v91);
      if ( v87 )
      {
        v48 = 0;
        v49 = *((unsigned __int16 *)v89 + 7);
        for ( i = *((unsigned __int16 *)v88 + 17); ; i = *((unsigned __int16 *)v88 + 17) )
        {
          v51 = (float *)(v46 + v48 * i);
          v52 = (float)(v51[1] * *(float *)(a1 + 352)) + *(float *)(a1 + 312);
          v53 = (float)(v51[2] * *(float *)(a1 + 356)) + *(float *)(a1 + 316);
          v54 = v48 * v49;
          ++v48;
          v55 = (float *)&v47[v54];
          *(float *)&v47[v54] = (float)(*v51 * *(float *)(a1 + 348)) + *(float *)(a1 + 308);
          v55[2] = v53;
          v55[1] = v52;
          if ( v87 == v48 )
            break;
          v49 = *((unsigned __int16 *)v89 + 7);
        }
      }
      if ( v47 )
      {
        v56 = *((_BYTE **)v90 + 5);
        v57 = v56[19];
        if ( (v57 & 0x1Fu) <= 1 )
        {
          if ( (v56[18] & 0x20) != 0 )
            (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v56 + 24))(*((_DWORD *)v90 + 5));
          v56[19] = 0;
        }
        else
        {
          v56[19] = ((v57 & 0x1F) - 1) | v57 & 0xE0;
        }
      }
      glitch::scene::CTerrainSceneNode::calculateDistanceThresholds((unsigned int)a1);
      glitch::scene::CTerrainSceneNode::createPatches((glitch::scene::CTerrainSceneNode *)a1);
      glitch::scene::CTerrainSceneNode::calculatePatchData((glitch::scene::CTerrainSceneNode *)a1);
      v58 = *(_DWORD *)(a1 + 364);
      v59 = *(_DWORD *)(a1 + 368);
      *(_DWORD *)(a1 + 336) = *(_DWORD *)(a1 + 360);
      *(_DWORD *)(a1 + 340) = v58;
      *(_DWORD *)(a1 + 344) = v59;
      (*(void (__fastcall **)(int, int))(*(_DWORD *)a1 + 156))(a1, a1 + 320);
      if ( v87 > 0xFFFE )
        v60 = 2;
      else
        v60 = 1;
      v61 = *(_DWORD *)(a1 + 376) * *(_DWORD *)(a1 + 376) * 6 * *(_DWORD *)(a1 + 380) * *(_DWORD *)(a1 + 380);
      v62 = v108;
      v63 = glitch::video::getIndexTypeSize(glitch::video::E_INDEX_TYPE)::sizes[v60] * v61;
      v64 = operator new[](v63, 0);
      glitch::video::IBuffer::reset(v62, v63, v64, 1);
      v65 = *(_DWORD *)(a1 + 432);
      *(_DWORD *)(v65 + 40) = v87;
      *(_DWORD *)(v65 + 36) = 0;
      *(_DWORD *)(v65 + 32) = v61;
      *(_WORD *)(v65 + 44) = v60;
      v67 = glitch::os::Timer::getRealTime(v66);
      snprintf(
        v115,
        0xFFu,
        "Generated terrain data (%dx%d) in %.4f seconds",
        *(_DWORD *)(a1 + 304),
        *(_DWORD *)(a1 + 304),
        (float)((float)(unsigned int)(v67 - RealTime) / 1000.0));
      glitch::os::Printer::log((int)v115, 1);
      if ( v108 )
        glitch::IReferenceCounted::drop(v108);
      if ( v111 )
        glitch::IReferenceCounted::drop(v111);
      v68 = (*(_DWORD *)v90)-- == 1;
      if ( v68 )
      {
        glitch::video::CVertexStreams::~CVertexStreams(v90);
        LC_API_FREE_0(v90);
      }
      if ( v112 )
        glitch::IReferenceCounted::drop(v112);
      v68 = (*(_DWORD *)v88)-- == 1;
      if ( v68 )
      {
        glitch::video::CVertexStreams::~CVertexStreams(v88);
        LC_API_FREE_0(v88);
      }
      if ( v113 )
        glitch::IReferenceCounted::drop(v113);
      v4 = 1;
      goto LABEL_88;
    }
    v80 = (unsigned __int16 *)glitch::video::CVertexStreams::getStream(
                                (int)v88,
                                17,
                                (int)&v77[16 * *((unsigned __int8 *)v88 + 12) + 16],
                                *((_DWORD *)v88 + 4));
    v20 = glitch::video::IBuffer::map(*(_DWORD *)v80, 2) + *((_DWORD *)v80 + 1);
    goto LABEL_29;
  }
  v4 = 0;
  glitch::os::Printer::log((int)"Unable to load heightmap.", 1);
LABEL_88:
  if ( v114 )
    glitch::IReferenceCounted::drop(v114);
  return v4;
}


// ===== 6d5268 glitch::scene::CTerrainSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void __fastcall glitch::scene::CTerrainSceneNode::deserializeAttributes(int a1, int *a2, _DWORD *a3)
{
  float v5; // r7
  int v6; // r0
  void *v7; // r10
  float v8; // r8
  const void *v9; // r1
  glitch::IReferenceCounted *v10; // r10
  float v11; // [sp+0h] [bp-2Ch]
  _BYTE v13[16]; // [sp+Ch] [bp-20h] BYREF
  _BYTE *v14; // [sp+1Ch] [bp-10h]
  void *p; // [sp+20h] [bp-Ch]

  (*(void (__fastcall **)(_BYTE *))(*a2 + 132))(v13);
  v5 = COERCE_FLOAT((*(int (__fastcall **)(int *, const char *))(*a2 + 112))(a2, "TextureScale1"));
  v6 = (*(int (__fastcall **)(int *, const char *))(*a2 + 112))(a2, "TextureScale2");
  v7 = p;
  v8 = *(float *)&v6;
  if ( v14 != p )
  {
    v9 = *(const void **)(a1 + 516);
    if ( v14 - (_BYTE *)p != *(_DWORD *)(a1 + 512) - (_DWORD)v9 || memcmp(p, v9, v14 - (_BYTE *)p) )
    {
      v10 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(_DWORD, void *))(**(_DWORD **)(a1 + 520) + 12))(
                                           *(_DWORD *)(a1 + 520),
                                           v7);
      if ( v10 )
      {
        glitch::scene::CTerrainSceneNode::loadHeightMap(a1, (int)v10, -1, 0);
        glitch::IReferenceCounted::drop(v10);
      }
      else
      {
        glitch::os::Printer::log((int)"could not open heightmap", (int)p, 1);
      }
    }
  }
  v11 = v5 + 0.000001;
  if ( (float)(v5 + 0.000001) >= 0.0 && (float)(v5 - 0.000001) <= 0.0 )
  {
    v11 = 1.0;
    v5 = 1.0;
  }
  if ( (float)(v8 + 0.000001) >= 0.0 && (float)(v8 - 0.000001) <= 0.0 )
    v8 = 1.0;
  if ( *(float *)(a1 + 488) > v11
    || *(float *)(a1 + 488) < (float)(v5 - 0.000001)
    || *(float *)(a1 + 492) > (float)(v8 + 0.000001)
    || *(float *)(a1 + 492) < (float)(v8 - 0.000001) )
  {
    glitch::scene::CTerrainSceneNode::scaleTexture(*(float *)&a1, v5, v8);
  }
  glitch::scene::ISceneNode::deserializeAttributes(a1, a2, a3);
  if ( p != v13 )
  {
    if ( p )
      GlitchFree(p);
  }
}


// ===== 6d5518 glitch::scene::CTerrainSceneNode::clone(glitch::scene::ISceneNode *) =====
glitch::scene::ISceneNode *__fastcall glitch::scene::CTerrainSceneNode::clone(
        glitch::scene::CTerrainSceneNode *this,
        glitch::scene::ISceneNode *a2,
        int a3,
        glitch::scene::ISceneNode *a4)
{
  unsigned int v5; // r10
  _DWORD *v6; // r7
  _DWORD *v7; // r4
  _DWORD *v8; // r8
  glitch::scene::ISceneNode *v9; // r6
  glitch::IReferenceCounted *v10; // r4
  unsigned int v11; // r4
  glitch::IReferenceCounted *v13; // r8
  _DWORD *v14; // r8
  void (__fastcall *v15)(_DWORD *, unsigned int, glitch::video::CMaterial **, glitch::video::CMaterialVertexAttributeMap **); // r9
  const glitch::video::CMaterialRenderer *v16; // r1
  glitch::video::CMaterialVertexAttributeMap **v17; // r8
  glitch::scene::ISceneNode *v19; // [sp+1Ch] [bp-20h]
  glitch::video::CMaterialVertexAttributeMap *v20; // [sp+24h] [bp-18h] BYREF
  glitch::video::CMaterial *v21; // [sp+28h] [bp-14h] BYREF
  glitch::IReferenceCounted *v22; // [sp+2Ch] [bp-10h] BYREF
  glitch::IReferenceCounted *v23[3]; // [sp+30h] [bp-Ch] BYREF

  v19 = a2;
  if ( !a2 )
    a4 = *((glitch::scene::ISceneNode **)this + 59);
  if ( !a2 )
    v19 = a4;
  v5 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 108) + 20) + 4);
  v6 = (_DWORD *)(*(int (__fastcall **)(glitch::scene::CTerrainSceneNode *))(*(_DWORD *)this + 160))(this);
  v7 = (_DWORD *)(*(int (__fastcall **)(glitch::scene::CTerrainSceneNode *))(*(_DWORD *)this + 152))(this);
  v8 = (_DWORD *)(*(int (__fastcall **)(glitch::scene::CTerrainSceneNode *))(*(_DWORD *)this + 144))(this);
  v9 = (glitch::scene::ISceneNode *)operator new(0x214u, 0);
  glitch::scene::CTerrainSceneNode::CTerrainSceneNode(
    (int)v9,
    (int *)this + 130,
    *((_DWORD *)this + 67),
    v5,
    4,
    17,
    v6,
    v7,
    v8);
  glitch::scene::ISceneNode::cloneMembers(v9, this);
  v10 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 130) + 12))(
                                       *((_DWORD *)this + 130),
                                       *((_DWORD *)this + 129));
  if ( v10 )
  {
    v23[1] = (glitch::IReferenceCounted *)-1;
    glitch::scene::CTerrainSceneNode::loadHeightMap((int)v9, (int)v10, -1, 0);
    glitch::IReferenceCounted::drop(v10);
  }
  glitch::scene::CTerrainSceneNode::scaleTexture(*(float *)&v9, *((float *)this + 122), *((float *)this + 123));
  v11 = 0;
  while ( v11 < (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 107) + 16))(*((_DWORD *)this + 107)) )
  {
    if ( v11 >= (*(int (__fastcall **)(_DWORD *))(**((_DWORD **)v9 + 107) + 16))(*((_DWORD **)v9 + 107)) )
      goto LABEL_9;
    (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD *, unsigned int))(**((_DWORD **)v9 + 107) + 20))(
      v23,
      *((_DWORD **)v9 + 107),
      v11);
    if ( !v23[0] )
      goto LABEL_9;
    (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, unsigned int))(**((_DWORD **)this + 107) + 20))(
      &v22,
      *((_DWORD *)this + 107),
      v11);
    v13 = v22;
    if ( v22 )
      v13 = (glitch::IReferenceCounted *)(&dword_0 + 1);
    if ( v13 )
      glitch::IReferenceCounted::drop(v22);
    if ( v23[0] )
      glitch::IReferenceCounted::drop(v23[0]);
    if ( v13 )
    {
      v14 = *((_DWORD **)v9 + 107);
      v15 = *(void (__fastcall **)(_DWORD *, unsigned int, glitch::video::CMaterial **, glitch::video::CMaterialVertexAttributeMap **))(*v14 + 32);
      (*(void (__fastcall **)(glitch::video::CMaterial **, _DWORD, unsigned int))(**((_DWORD **)this + 107) + 24))(
        &v21,
        *((_DWORD *)this + 107),
        v11);
      (*(void (__fastcall **)(glitch::video::CMaterialVertexAttributeMap **, _DWORD, unsigned int))(**((_DWORD **)this + 107)
                                                                                                  + 28))(
        &v20,
        *((_DWORD *)this + 107),
        v11);
      v15(v14, v11, &v21, &v20);
      v17 = (glitch::video::CMaterialVertexAttributeMap **)v20;
      if ( v20 )
      {
        if ( (*(_DWORD *)v20)-- == 1 )
        {
          glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v17, v16);
          LC_API_FREE_0(v17);
        }
      }
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v21);
      ++v11;
    }
    else
    {
LABEL_9:
      ++v11;
    }
  }
  if ( v19 )
  {
    (*(void (__fastcall **)(glitch::scene::ISceneNode *, glitch::scene::ISceneNode *))(*(_DWORD *)v9 + 92))(v9, v19);
    glitch::IReferenceCounted::drop((glitch::scene::ISceneNode *)((char *)v9 + *(_DWORD *)(*(_DWORD *)v9 - 12)));
  }
  return v9;
}


// ===== 6d57d8 `virtual thunk to'glitch::scene::CTerrainSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void __fastcall `virtual thunk to'glitch::scene::CTerrainSceneNode::deserializeAttributes(
        _DWORD *a1,
        int *a2,
        _DWORD *a3)
{
  glitch::scene::CTerrainSceneNode::deserializeAttributes((int)a1 + *(_DWORD *)(*a1 - 20), a2, a3);
}


// ===== 6d57e8 `virtual thunk to'glitch::scene::CTerrainSceneNode::~CTerrainSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CTerrainSceneNode::~CTerrainSceneNode(
        glitch::scene::CTerrainSceneNode *this)
{
  glitch::scene::CTerrainSceneNode::~CTerrainSceneNode((glitch::scene::CTerrainSceneNode *)((char *)this
                                                                                          + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6d57f8 `virtual thunk to'glitch::scene::CTerrainSceneNode::~CTerrainSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CTerrainSceneNode::~CTerrainSceneNode(
        glitch::scene::CTerrainSceneNode *this)
{
  glitch::scene::CTerrainSceneNode::~CTerrainSceneNode((glitch::scene::CTerrainSceneNode *)((char *)this
                                                                                          + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6d5808 `virtual thunk to'glitch::scene::CTerrainSceneNode::~CTerrainSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CTerrainSceneNode::~CTerrainSceneNode(
        glitch::scene::CTerrainSceneNode *this)
{
  glitch::scene::CTerrainSceneNode::~CTerrainSceneNode((glitch::scene::CTerrainSceneNode *)((char *)this
                                                                                          + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6d5818 `virtual thunk to'glitch::scene::CTerrainSceneNode::~CTerrainSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CTerrainSceneNode::~CTerrainSceneNode(
        glitch::scene::CTerrainSceneNode *this)
{
  glitch::scene::CTerrainSceneNode::~CTerrainSceneNode((glitch::scene::CTerrainSceneNode *)((char *)this
                                                                                          + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6d5828 `virtual thunk to'glitch::scene::CTerrainSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::scene::CTerrainSceneNode::serializeAttributes(_DWORD *a1, int a2, _DWORD *a3)
{
  return glitch::scene::CTerrainSceneNode::serializeAttributes((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 16)), a2, a3);
}


// ===== 6d5838 glitch::scene::IText::~IText() =====
void __fastcall glitch::scene::IText::~IText(glitch::scene::IText *this)
{
  ;
}


// ===== 6d583c `non-virtual thunk to'glitch::scene::CTextSceneNode::getType(void) =====
int __fastcall `non-virtual thunk to'glitch::scene::CTextSceneNode::getType(glitch::scene::CTextSceneNode *this)
{
  return glitch::scene::CTextSceneNode::getType((glitch::scene::CTextSceneNode *)((char *)this - 4));
}


// ===== 6d5844 glitch::scene::CTextSceneNode::getType(void) =====
int __fastcall glitch::scene::CTextSceneNode::getType(glitch::scene::CTextSceneNode *this)
{
  return 1954047348;
}


// ===== 6d5850 `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::getType(void) =====
int __fastcall `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::getType(
        glitch::scene::CBillboardTextSceneNode *this)
{
  return glitch::scene::CBillboardTextSceneNode::getType((glitch::scene::CBillboardTextSceneNode *)((char *)this - 4));
}


// ===== 6d5858 glitch::scene::CBillboardTextSceneNode::getType(void) =====
int __fastcall glitch::scene::CBillboardTextSceneNode::getType(glitch::scene::CBillboardTextSceneNode *this)
{
  return 1954047348;
}


// ===== 6d5864 `non-virtual thunk to'glitch::scene::CTextSceneNode::getBoundingBox(void) =====
int __fastcall `non-virtual thunk to'glitch::scene::CTextSceneNode::getBoundingBox(glitch::scene::CTextSceneNode *this)
{
  return glitch::scene::CTextSceneNode::getBoundingBox((glitch::scene::CTextSceneNode *)((char *)this - 4));
}


// ===== 6d586c glitch::scene::CTextSceneNode::getBoundingBox(void) =====
char *__fastcall glitch::scene::CTextSceneNode::getBoundingBox(glitch::scene::CTextSceneNode *this)
{
  return (char *)this + 392;
}


// ===== 6d5874 glitch::scene::CTextSceneNode::setTextColor(glitch::video::SColor) =====
int __fastcall glitch::scene::CTextSceneNode::setTextColor(int result, int a2)
{
  *(_DWORD *)(result + 380) = a2;
  return result;
}


// ===== 6d589c glitch::scene::CBillboardTextSceneNode::setText(wchar_t const*) =====
void __fastcall glitch::scene::CBillboardTextSceneNode::setText(
        glitch::scene::CBillboardTextSceneNode *this,
        const wchar_t *a2)
{
  ;
}


// ===== 6d58a0 `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::onRegisterSceneNode(void) =====
int __fastcall `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::onRegisterSceneNode(
        glitch::scene::CBillboardTextSceneNode *this)
{
  return glitch::scene::CBillboardTextSceneNode::onRegisterSceneNode((glitch::scene::CBillboardTextSceneNode *)((char *)this - 4));
}


// ===== 6d58a8 glitch::scene::CBillboardTextSceneNode::onRegisterSceneNode(void) =====
int __fastcall glitch::scene::CBillboardTextSceneNode::onRegisterSceneNode(
        glitch::scene::CBillboardTextSceneNode *this)
{
  return 1;
}


// ===== 6d58b0 `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::getBoundingBox(void) =====
int __fastcall `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::getBoundingBox(
        glitch::scene::CBillboardTextSceneNode *this)
{
  return glitch::scene::CBillboardTextSceneNode::getBoundingBox((glitch::scene::CBillboardTextSceneNode *)((char *)this - 4));
}


// ===== 6d58b8 glitch::scene::CBillboardTextSceneNode::getBoundingBox(void) =====
char *__fastcall glitch::scene::CBillboardTextSceneNode::getBoundingBox(glitch::scene::CBillboardTextSceneNode *this)
{
  return (char *)this + 400;
}


// ===== 6d58c0 `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::setSize(glitch::core::dimension2d<float> const&) =====
int __fastcall `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::setSize(int a1)
{
  return glitch::scene::CBillboardTextSceneNode::setSize(a1 - 308);
}


// ===== 6d58c8 glitch::scene::CBillboardTextSceneNode::setSize(glitch::core::dimension2d<float> const&) =====
bool __fastcall glitch::scene::CBillboardTextSceneNode::setSize(int a1, _DWORD *a2)
{
  float v3; // r0
  _BOOL4 result; // r0

  *(_DWORD *)(a1 + 392) = *a2;
  v3 = *(float *)(a1 + 392);
  *(_DWORD *)(a1 + 396) = a2[1];
  if ( v3 == 0.0 )
    *(_DWORD *)(a1 + 392) = 1065353216;
  result = *(float *)(a1 + 396) == 0.0;
  if ( *(float *)(a1 + 396) == 0.0 )
    *(_DWORD *)(a1 + 396) = 1065353216;
  return result;
}


// ===== 6d5918 `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::getMaterial(uint) =====
int __fastcall `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::getMaterial(
        glitch::scene::CBillboardTextSceneNode *this,
        unsigned int a2)
{
  return glitch::scene::CBillboardTextSceneNode::getMaterial(this, a2 - 4);
}


// ===== 6d5920 glitch::scene::CBillboardTextSceneNode::getMaterial(uint) =====
glitch::scene::CBillboardTextSceneNode *__fastcall glitch::scene::CBillboardTextSceneNode::getMaterial(
        glitch::scene::CBillboardTextSceneNode *this,
        unsigned int a2,
        unsigned int a3)
{
  int v3; // r3

  v3 = *(_DWORD *)(a2 + 444);
  if ( v3 && (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 16))(*(_DWORD *)(a2 + 444)) > a3 )
  {
    (*(void (__fastcall **)(glitch::scene::CBillboardTextSceneNode *, _DWORD, unsigned int))(**(_DWORD **)(a2 + 444) + 24))(
      this,
      *(_DWORD *)(a2 + 444),
      a3);
    return this;
  }
  else
  {
    *(_DWORD *)this = 0;
    return this;
  }
}


// ===== 6d5988 `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::getMaterialCount(void) =====
int __fastcall `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::getMaterialCount(
        glitch::scene::CBillboardTextSceneNode *this)
{
  return glitch::scene::CBillboardTextSceneNode::getMaterialCount((glitch::scene::CBillboardTextSceneNode *)((char *)this - 4));
}


// ===== 6d5990 glitch::scene::CBillboardTextSceneNode::getMaterialCount(void) =====
int __fastcall glitch::scene::CBillboardTextSceneNode::getMaterialCount(glitch::scene::CBillboardTextSceneNode *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 111);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 16))(*((_DWORD *)this + 111));
  else
    return 0;
}


// ===== 6d59bc `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::getSize(void) =====
int __fastcall `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::getSize(
        glitch::scene::CBillboardTextSceneNode *this)
{
  return glitch::scene::CBillboardTextSceneNode::getSize((glitch::scene::CBillboardTextSceneNode *)((char *)this - 308));
}


// ===== 6d59c4 glitch::scene::CBillboardTextSceneNode::getSize(void) =====
char *__fastcall glitch::scene::CBillboardTextSceneNode::getSize(glitch::scene::CBillboardTextSceneNode *this)
{
  return (char *)this + 392;
}


// ===== 6d59cc glitch::scene::CBillboardTextSceneNode::setTextColor(glitch::video::SColor) =====
int __fastcall glitch::scene::CBillboardTextSceneNode::setTextColor(int result, int a2)
{
  *(_DWORD *)(result + 384) = a2;
  return result;
}


// ===== 6d59f4 `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::setColor(glitch::video::SColor const&) =====
int __fastcall `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::setColor(int a1)
{
  return glitch::scene::CBillboardTextSceneNode::setColor(a1 - 308);
}


// ===== 6d59fc glitch::scene::CBillboardTextSceneNode::setColor(glitch::video::SColor const&) =====
void glitch::scene::CBillboardTextSceneNode::setColor()
{
  ;
}


// ===== 6d5a00 `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::setColor(glitch::video::SColor const&,glitch::video::SColor const&) =====
int __fastcall `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::setColor(int a1)
{
  return glitch::scene::CBillboardTextSceneNode::setColor(a1 - 308);
}


// ===== 6d5a08 glitch::scene::CBillboardTextSceneNode::setColor(glitch::video::SColor const&,glitch::video::SColor const&) =====
void glitch::scene::CBillboardTextSceneNode::setColor()
{
  ;
}


// ===== 6d5a0c `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::getColor(glitch::video::SColor &,glitch::video::SColor &) =====
int __fastcall `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::getColor(int a1, void *a2)
{
  return glitch::scene::CBillboardTextSceneNode::getColor(a1 - 308, a2);
}


// ===== 6d5a14 glitch::scene::CBillboardTextSceneNode::getColor(glitch::video::SColor &,glitch::video::SColor &) =====
void *__fastcall glitch::scene::CBillboardTextSceneNode::getColor(int a1, void *a2, void *a3)
{
  memcpy(a2, (const void *)(a1 + 424), 4u);
  return memcpy(a3, (const void *)(a1 + 428), 4u);
}


// ===== 6d5a48 `global constructor keyed to'.._source_glitch_scene_CTextSceneNode.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CTextSceneNode.cpp()
{
  dword_9F7EB4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7EB0 = 1056964608;
}


// ===== 6d5a68 glitch::scene::IText::~IText() =====
void __fastcall glitch::scene::IText::~IText(glitch::scene::IText *this)
{
  LC_API_FREE_0(this);
}


// ===== 6d5a7c `non-virtual thunk to'glitch::scene::ITextSceneNode::~ITextSceneNode() =====
void __fastcall `non-virtual thunk to'glitch::scene::ITextSceneNode::~ITextSceneNode(
        glitch::scene::ITextSceneNode *this)
{
  glitch::scene::ITextSceneNode::~ITextSceneNode((glitch::scene::ITextSceneNode *)((char *)this - 4));
}


// ===== 6d5a84 glitch::scene::ITextSceneNode::~ITextSceneNode() =====
void __fastcall glitch::scene::ITextSceneNode::~ITextSceneNode(glitch::scene::ITextSceneNode *this)
{
  *((_DWORD *)this + 77) = off_98A368;
  *(_DWORD *)this = off_98A238;
  *((_DWORD *)this + 1) = off_98A264;
  glitch::scene::ISceneNode::~ISceneNode((glitch::scene::ITextSceneNode *)((char *)this + 4), (int *)off_98A37C);
}


// ===== 6d5adc `virtual thunk to'glitch::scene::ITextSceneNode::~ITextSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::ITextSceneNode::~ITextSceneNode(glitch::scene::ITextSceneNode *this)
{
  glitch::scene::ITextSceneNode::~ITextSceneNode((glitch::scene::ITextSceneNode *)((char *)this
                                                                                 + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6d5aec `virtual thunk to'glitch::scene::ITextSceneNode::~ITextSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::ITextSceneNode::~ITextSceneNode(glitch::scene::ITextSceneNode *this)
{
  glitch::scene::ITextSceneNode::~ITextSceneNode((glitch::scene::ITextSceneNode *)((char *)this
                                                                                 + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6d5afc `non-virtual thunk to'glitch::scene::CTextSceneNode::onRegisterSceneNode(void) =====
int __fastcall `non-virtual thunk to'glitch::scene::CTextSceneNode::onRegisterSceneNode(
        glitch::scene::CTextSceneNode *this)
{
  return glitch::scene::CTextSceneNode::onRegisterSceneNode((glitch::scene::CTextSceneNode *)((char *)this - 4));
}


// ===== 6d5b04 glitch::scene::CTextSceneNode::onRegisterSceneNode(void) =====
int __fastcall glitch::scene::CTextSceneNode::onRegisterSceneNode(glitch::scene::CTextSceneNode *this)
{
  int v2; // r0
  void (__fastcall *v3)(int, char *, glitch::video::CMaterial **, _DWORD, int, _DWORD, int); // r12
  glitch::video::CMaterial *v5; // [sp+14h] [bp-4h] BYREF

  v2 = *((_DWORD *)this + 69);
  v3 = *(void (__fastcall **)(int, char *, glitch::video::CMaterial **, _DWORD, int, _DWORD, int))(*(_DWORD *)v2 + 36);
  v5 = nullptr;
  v3(v2, (char *)this + 4, &v5, 0, 8, 0, 0x7FFFFFFF);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v5);
  return 1;
}


// ===== 6d5b5c glitch::scene::ITextSceneNode::ITextSceneNode(int,glitch::core::vector3d<float> const&) =====
int *__fastcall glitch::scene::ITextSceneNode::ITextSceneNode(int *a1, int *a2, int a3, _DWORD *a4)
{
  int v6; // r3
  _DWORD v8[4]; // [sp+Ch] [bp+0h] BYREF
  _DWORD v9[4]; // [sp+1Ch] [bp+10h] BYREF

  *a1 = (int)off_98A510;
  v9[2] = 1065353216;
  memset(v8, 0, 12);
  v8[3] = 1065353216;
  v9[0] = 1065353216;
  v9[1] = 1065353216;
  glitch::scene::ISceneNode::ISceneNode((int)(a1 + 1), a2 + 1, a3, a4, v8, v9);
  v6 = *a2;
  *a1 = *a2;
  a1[1] = a2[4];
  *(int *)((char *)a1 + *(_DWORD *)(v6 - 12)) = a2[5];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 16)) = a2[6];
  return a1;
}


// ===== 6d5c00 glitch::scene::CTextSceneNode::setText(wchar_t const*) =====
int __fastcall glitch::scene::CTextSceneNode::setText(glitch::scene::CTextSceneNode *this, const wchar_t *s)
{
  size_t v4; // r0

  v4 = wcslen(s);
  return std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
           (int)this + 308,
           s,
           &s[v4]);
}


// ===== 6d5c28 `non-virtual thunk to'glitch::scene::CTextSceneNode::render(void *) =====
int __fastcall `non-virtual thunk to'glitch::scene::CTextSceneNode::render(
        glitch::scene::CTextSceneNode *this,
        void *a2)
{
  return glitch::scene::CTextSceneNode::render((glitch::scene::CTextSceneNode *)((char *)this - 4), a2);
}


// ===== 6d5c30 glitch::scene::CTextSceneNode::render(void *) =====
_DWORD *__fastcall glitch::scene::CTextSceneNode::render(_DWORD *this, void *a2)
{
  _DWORD *v2; // r4
  int v3; // r6
  void (__fastcall *v4)(int *, int, _DWORD *, _DWORD); // r5
  int v5; // r12
  int v6; // r1
  _DWORD v7[4]; // [sp+14h] [bp-28h] BYREF
  _DWORD v8[3]; // [sp+24h] [bp-18h] BYREF
  int v9; // [sp+30h] [bp-Ch] BYREF
  int v10; // [sp+34h] [bp-8h]

  v2 = this;
  if ( *(this + 96) )
  {
    v3 = *(this + 97);
    if ( v3 )
    {
      v4 = *(void (__fastcall **)(int *, int, _DWORD *, _DWORD))(*(_DWORD *)v3 + 24);
      glitch::scene::ISceneNode::getAbsolutePosition(v8, this + 1);
      v4(&v9, v3, v8, *(_DWORD *)(v2[69] + 228));
      v5 = v2[96];
      v6 = v2[94];
      v7[2] = v9 + 1;
      v7[3] = v10 + 1;
      v7[0] = v9;
      v7[1] = v10;
      return (_DWORD *)(*(int (__fastcall **)(int, int, _DWORD *, _DWORD, int, int, _DWORD))(*(_DWORD *)v5 + 12))(
                         v5,
                         v6,
                         v7,
                         v2[95],
                         1,
                         1,
                         0);
    }
  }
  return this;
}


// ===== 6d5ce0 glitch::scene::CTextSceneNode::CTextSceneNode(int,glitch::gui::IGUIFont *,glitch::scene::ISceneCollisionManager *,glitch::core::vector3d<float> const&,wchar_t const*,glitch::video::SColor) =====
int *__fastcall glitch::scene::CTextSceneNode::CTextSceneNode(
        int *a1,
        int a2,
        int a3,
        int a4,
        _DWORD *a5,
        wchar_t *s,
        int a7)
{
  int v7; // r7

  a1[105] = 1;
  a1[104] = (int)off_95B720;
  a1[1] = (int)off_98ADD4;
  v7 = (int)(a1 + 1);
  *(int *)((char *)&elf_hash_bucket[48] + (_DWORD)(a1 + 1)) = (int)off_98ADF4;
  glitch::scene::ITextSceneNode::ITextSceneNode(a1, (int *)&off_98AB14, a2, a5);
  *a1 = (int)off_98A9C0;
  a1[1] = (int)off_98A9FC;
  a1[104] = (int)off_98AB00;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    a1 + 77,
    s);
  a1[95] = a7;
  a1[97] = a4;
  a1[103] = 1065353216;
  a1[101] = 1065353216;
  a1[102] = 1065353216;
  a1[100] = -1082130432;
  a1[96] = a3;
  a1[98] = -1082130432;
  a1[99] = -1082130432;
  if ( a3 )
    ++*(_DWORD *)(a3 + 4);
  glitch::scene::ISceneNode::setAutomaticCulling(v7, 0);
  return a1;
}


// ===== 6d5e00 glitch::scene::CTextSceneNode::CTextSceneNode(int,glitch::gui::IGUIFont *,glitch::scene::ISceneCollisionManager *,glitch::core::vector3d<float> const&,wchar_t const*,glitch::video::SColor) =====
int *__fastcall glitch::scene::CTextSceneNode::CTextSceneNode(
        int *a1,
        int *a2,
        int a3,
        int a4,
        int a5,
        _DWORD *a6,
        wchar_t *s,
        int a8)
{
  int v11; // r3

  glitch::scene::ITextSceneNode::ITextSceneNode(a1, a2 + 1, a3, a6);
  v11 = *a2;
  *a1 = *a2;
  a1[1] = a2[8];
  *(int *)((char *)a1 + *(_DWORD *)(v11 - 12)) = a2[9];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 16)) = a2[10];
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    a1 + 77,
    s);
  a1[95] = a8;
  a1[97] = a5;
  a1[103] = 1065353216;
  a1[101] = 1065353216;
  a1[102] = 1065353216;
  a1[100] = -1082130432;
  a1[96] = a4;
  a1[98] = -1082130432;
  a1[99] = -1082130432;
  if ( a4 )
    ++*(_DWORD *)(a4 + 4);
  glitch::scene::ISceneNode::setAutomaticCulling((int)(a1 + 1), 0);
  return a1;
}


// ===== 6d5ed4 glitch::scene::CMeshBuffer::CMeshBuffer(uint,glitch::video::CPrimitiveStream const&,bool) [clone] =====
glitch::scene::CMeshBuffer *__fastcall glitch::scene::CMeshBuffer::CMeshBuffer(
        glitch::scene::CMeshBuffer *this,
        unsigned int a2,
        const glitch::video::CPrimitiveStream *a3,
        bool a4)
{
  int v6; // r3
  glitch::scene::CMeshBuffer *result; // r0
  __int16 v8; // r5

  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *(_DWORD *)this = off_988098;
  glitch::video::CVertexStreams::allocate((glitch::video::CVertexStreams **)this + 5, a2);
  v6 = *(_DWORD *)a3;
  result = this;
  *((_DWORD *)this + 6) = *(_DWORD *)a3;
  if ( v6 )
    ++*(_DWORD *)(v6 + 4);
  *((_DWORD *)this + 7) = *((_DWORD *)a3 + 1);
  *((_DWORD *)this + 8) = *((_DWORD *)a3 + 2);
  *((_DWORD *)this + 9) = *((_DWORD *)a3 + 3);
  *((_DWORD *)this + 10) = *((_DWORD *)a3 + 4);
  *((_WORD *)this + 22) = *((_WORD *)a3 + 10);
  v8 = *((_WORD *)a3 + 11);
  *((_BYTE *)this + 52) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_WORD *)this + 23) = v8;
  return result;
}


// ===== 6d5f78 glitch::scene::CTextSceneNode::~CTextSceneNode() =====
void __fastcall glitch::scene::CTextSceneNode::~CTextSceneNode(glitch::scene::CTextSceneNode *this, int *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *v5; // r0
  char *v6; // r0
  int v7; // r3
  int *v8; // r5

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *((_DWORD *)this + 1) = a2[8];
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[9];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = a2[10];
  v5 = *((glitch::IReferenceCounted **)this + 96);
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  v6 = *((char **)this + 94);
  if ( v6 != (char *)this + 308 && v6 )
    GlitchFree(v6);
  v7 = a2[1];
  v8 = a2 + 1;
  *(_DWORD *)this = v7;
  *((_DWORD *)this + 1) = v8[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(v7 - 12)) = v8[5];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = v8[6];
  glitch::scene::ISceneNode::~ISceneNode((glitch::scene::CTextSceneNode *)((char *)this + 4), v8 + 1);
}


// ===== 6d6020 glitch::scene::CBillboardTextSceneNode::CBillboardTextSceneNode(glitch::video::CMaterialRendererManager &,int,glitch::gui::IGUIFont *,wchar_t const*,glitch::core::vector3d<float> const&,glitch::core::dimension2d<float> const&,glitch::video::SColor,glitch::video::SColor) =====
int __fastcall glitch::scene::CBillboardTextSceneNode::CBillboardTextSceneNode(
        int a1,
        int *a2,
        int a3,
        int a4,
        _DWORD *a5,
        wchar_t *a6,
        _DWORD *a7,
        _DWORD *a8,
        int a9,
        int a10)
{
  int v13; // r2
  unsigned int MaterialRenderer; // r0
  int v15; // r3
  glitch::video::CMaterialRenderer **v16; // r3
  glitch::video::CMaterialRenderer *v17; // r0
  _DWORD *v18; // r5
  glitch::IReferenceCounted *v19; // r0
  unsigned int i; // r6
  glitch::video::CMaterial *v21; // r8
  int v22; // r0
  int v23; // r8
  unsigned int v24; // r11
  glitch::scene::CMeshBuffer *v25; // r8
  bool v26; // r3
  int v27; // r0
  const glitch::video::CMaterialRenderer *v28; // r1
  glitch::video::CMaterialVertexAttributeMap **v29; // r8
  int v31; // r0
  unsigned int ParameterID; // [sp+4h] [bp-48h]
  glitch::IReferenceCounted *v34[5]; // [sp+1Ch] [bp-30h] BYREF
  __int16 v35; // [sp+30h] [bp-1Ch]
  __int16 v36; // [sp+32h] [bp-1Ah]
  glitch::video::CMaterialVertexAttributeMap *v37; // [sp+34h] [bp-18h] BYREF
  glitch::IReferenceCounted *v38; // [sp+38h] [bp-14h] BYREF
  glitch::IReferenceCounted *v39; // [sp+3Ch] [bp-10h] BYREF
  glitch::video::CMaterial *v40; // [sp+40h] [bp-Ch] BYREF
  glitch::video::CMaterialRenderer *v41; // [sp+44h] [bp-8h] BYREF

  glitch::scene::ITextSceneNode::ITextSceneNode((int *)a1, a2 + 1, a4, a7);
  *(_DWORD *)(a1 + 308) = off_974F68;
  v13 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + 4) = a2[8];
  *(_DWORD *)(a1 + *(_DWORD *)(v13 - 12)) = a2[9];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[10];
  *(_DWORD *)(a1 + 308) = off_98A684;
  *(_DWORD *)(a1 + 376) = a1 + 312;
  *(_DWORD *)(a1 + 380) = a1 + 312;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 312),
    0x10u);
  **(_DWORD **)(a1 + 376) = 0;
  *(_DWORD *)(a1 + 396) = 0;
  *(_DWORD *)(a1 + 408) = -1082130432;
  *(_DWORD *)(a1 + 420) = 1065353216;
  *(_DWORD *)(a1 + 424) = a9;
  *(_WORD *)(a1 + 430) = HIWORD(a10);
  *(_BYTE *)(a1 + 429) = BYTE1(a10);
  *(_DWORD *)(a1 + 444) = 0;
  *(_DWORD *)(a1 + 388) = 0;
  *(_BYTE *)(a1 + 428) = a10;
  *(_DWORD *)(a1 + 392) = 0;
  *(_DWORD *)(a1 + 400) = -1082130432;
  *(_DWORD *)(a1 + 404) = -1082130432;
  *(_DWORD *)(a1 + 412) = 1065353216;
  *(_DWORD *)(a1 + 416) = 1065353216;
  *(_DWORD *)(a1 + 432) = 0;
  *(_DWORD *)(a1 + 436) = 0;
  *(_DWORD *)(a1 + 440) = 0;
  if ( a5 )
  {
    if ( (*(int (__fastcall **)(_DWORD *))(*a5 + 40))(a5) )
    {
      glitch::os::Printer::log((int)"Sorry, CBillboardTextSceneNode does not support this font type", 1);
    }
    else
    {
      MaterialRenderer = glitch::video::CMaterialRendererManager::createMaterialRenderer(a3, 9);
      v15 = *(_DWORD *)(a3 + 24);
      if ( MaterialRenderer >= (*(_DWORD *)(a3 + 28) - v15) >> 3 )
        v16 = (glitch::video::CMaterialRenderer **)&glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid;
      else
        v16 = (glitch::video::CMaterialRenderer **)(v15 + 8 * MaterialRenderer);
      v17 = *v16;
      v41 = *v16;
      if ( v41 )
      {
        ++*(_DWORD *)v17;
        v17 = v41;
      }
      ParameterID = glitch::video::CMaterialRenderer::getParameterID((int)v17, 2, 0);
      *(_DWORD *)(a1 + 388) = a5;
      ++a5[1];
      v18 = operator new(0x2Cu, 0);
      glitch::scene::CMesh::CMesh(v18);
      if ( v18 )
        ++v18[1];
      v19 = *(glitch::IReferenceCounted **)(a1 + 444);
      *(_DWORD *)(a1 + 444) = v18;
      if ( v19 )
        glitch::IReferenceCounted::drop(v19);
      for ( i = 0; ; ++i )
      {
        v31 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 388) + 72))(*(_DWORD *)(a1 + 388));
        if ( i >= (*(int (__fastcall **)(int))(*(_DWORD *)v31 + 20))(v31) )
          break;
        glitch::video::CMaterialRendererManager::createMaterialInstance(&v40, a3, 9);
        v21 = v40;
        v22 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 388) + 72))(*(_DWORD *)(a1 + 388));
        (*(void (__fastcall **)(glitch::IReferenceCounted **, int, unsigned int))(*(_DWORD *)v22 + 24))(&v39, v22, i);
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
          v21,
          ParameterID,
          0,
          (int *)&v39);
        if ( v39 )
          glitch::IReferenceCounted::drop(v39);
        v23 = *((_DWORD *)v40 + 1);
        v24 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v23 + 24)
                                                + 12 * glitch::video::CMaterial::getTechnique(v40)
                                                + 8)
                                    + 32)
                        + 56);
        v35 = 255;
        v36 = 6;
        memset(v34, 0, sizeof(v34));
        v25 = (glitch::scene::CMeshBuffer *)operator new(0x38u, 0);
        glitch::scene::CMeshBuffer::CMeshBuffer(v25, v24, (const glitch::video::CPrimitiveStream *)v34, v26);
        v38 = v25;
        if ( v25 )
          ++*((_DWORD *)v25 + 1);
        if ( v34[0] )
          glitch::IReferenceCounted::drop(v34[0]);
        v27 = *(_DWORD *)(a1 + 444);
        v37 = nullptr;
        glitch::scene::CMesh::addMeshBuffer(v27, &v38, &v40, &v37);
        v29 = (glitch::video::CMaterialVertexAttributeMap **)v37;
        if ( v37 )
        {
          if ( (*(_DWORD *)v37)-- == 1 )
          {
            glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v29, v28);
            LC_API_FREE_0(v29);
          }
        }
        if ( v38 )
          glitch::IReferenceCounted::drop(v38);
        boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v40);
      }
      boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v41);
    }
  }
  glitch::scene::CBillboardTextSceneNode::setText((glitch::scene::CBillboardTextSceneNode *)a1, a6);
  glitch::scene::CBillboardTextSceneNode::setSize(a1, a8);
  glitch::scene::ISceneNode::setAutomaticCulling(a1 + 4, 1);
  return a1;
}


// ===== 6d6438 glitch::scene::CBillboardTextSceneNode::CBillboardTextSceneNode(glitch::video::CMaterialRendererManager &,int,glitch::gui::IGUIFont *,wchar_t const*,glitch::core::vector3d<float> const&,glitch::core::dimension2d<float> const&,glitch::video::SColor,glitch::video::SColor) =====
int __fastcall glitch::scene::CBillboardTextSceneNode::CBillboardTextSceneNode(
        int a1,
        int a2,
        int a3,
        _DWORD *a4,
        wchar_t *a5,
        _DWORD *a6,
        _DWORD *a7,
        int a8,
        int a9)
{
  unsigned int MaterialRenderer; // r0
  int v13; // r3
  glitch::video::CMaterialRenderer **v14; // r3
  glitch::video::CMaterialRenderer *v15; // r0
  _DWORD *v16; // r5
  glitch::IReferenceCounted *v17; // r0
  unsigned int i; // r6
  glitch::video::CMaterial *v19; // r8
  int v20; // r0
  int v21; // r8
  unsigned int v22; // r11
  glitch::scene::CMeshBuffer *v23; // r8
  bool v24; // r3
  int v25; // r0
  const glitch::video::CMaterialRenderer *v26; // r1
  glitch::video::CMaterialVertexAttributeMap **v27; // r8
  int v29; // r0
  unsigned int ParameterID; // [sp+0h] [bp-4Ch]
  int v32; // [sp+10h] [bp-3Ch]
  glitch::IReferenceCounted *v33[5]; // [sp+1Ch] [bp-30h] BYREF
  __int16 v34; // [sp+30h] [bp-1Ch]
  __int16 v35; // [sp+32h] [bp-1Ah]
  glitch::video::CMaterialVertexAttributeMap *v36; // [sp+34h] [bp-18h] BYREF
  glitch::IReferenceCounted *v37; // [sp+38h] [bp-14h] BYREF
  glitch::IReferenceCounted *v38; // [sp+3Ch] [bp-10h] BYREF
  glitch::video::CMaterial *v39; // [sp+40h] [bp-Ch] BYREF
  glitch::video::CMaterialRenderer *v40; // [sp+44h] [bp-8h] BYREF

  *(_DWORD *)(a1 + 448) = off_95B720;
  *(_DWORD *)(a1 + 4) = off_98A984;
  *(_DWORD *)(a1 + 452) = 1;
  v32 = a1 + 4;
  *(int *)((char *)&elf_hash_bucket[57] + a1) = (int)off_98A9A4;
  glitch::scene::ITextSceneNode::ITextSceneNode((int *)a1, (int *)&off_98A6C4, a3, a6);
  *(_DWORD *)(a1 + 376) = a1 + 312;
  *(_DWORD *)(a1 + 380) = a1 + 312;
  *(_DWORD *)a1 = off_98A530;
  *(_DWORD *)(a1 + 4) = off_98A588;
  *(_DWORD *)(a1 + 448) = off_98A6B0;
  *(_DWORD *)(a1 + 308) = off_98A684;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 312),
    0x10u);
  **(_DWORD **)(a1 + 376) = 0;
  *(_DWORD *)(a1 + 396) = 0;
  *(_DWORD *)(a1 + 408) = -1082130432;
  *(_DWORD *)(a1 + 420) = 1065353216;
  *(_DWORD *)(a1 + 424) = a8;
  *(_WORD *)(a1 + 430) = HIWORD(a9);
  *(_BYTE *)(a1 + 429) = BYTE1(a9);
  *(_DWORD *)(a1 + 444) = 0;
  *(_DWORD *)(a1 + 388) = 0;
  *(_BYTE *)(a1 + 428) = a9;
  *(_DWORD *)(a1 + 392) = 0;
  *(_DWORD *)(a1 + 400) = -1082130432;
  *(_DWORD *)(a1 + 404) = -1082130432;
  *(_DWORD *)(a1 + 412) = 1065353216;
  *(_DWORD *)(a1 + 416) = 1065353216;
  *(_DWORD *)(a1 + 432) = 0;
  *(_DWORD *)(a1 + 436) = 0;
  *(_DWORD *)(a1 + 440) = 0;
  if ( a4 )
  {
    if ( (*(int (__fastcall **)(_DWORD *))(*a4 + 40))(a4) )
    {
      glitch::os::Printer::log((int)"Sorry, CBillboardTextSceneNode does not support this font type", 1);
    }
    else
    {
      MaterialRenderer = glitch::video::CMaterialRendererManager::createMaterialRenderer(a2, 9);
      v13 = *(_DWORD *)(a2 + 24);
      if ( MaterialRenderer >= (*(_DWORD *)(a2 + 28) - v13) >> 3 )
        v14 = (glitch::video::CMaterialRenderer **)&glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid;
      else
        v14 = (glitch::video::CMaterialRenderer **)(v13 + 8 * MaterialRenderer);
      v15 = *v14;
      v40 = *v14;
      if ( v40 )
      {
        ++*(_DWORD *)v15;
        v15 = v40;
      }
      ParameterID = glitch::video::CMaterialRenderer::getParameterID((int)v15, 2, 0);
      *(_DWORD *)(a1 + 388) = a4;
      ++a4[1];
      v16 = operator new(0x2Cu, 0);
      glitch::scene::CMesh::CMesh(v16);
      if ( v16 )
        ++v16[1];
      v17 = *(glitch::IReferenceCounted **)(a1 + 444);
      *(_DWORD *)(a1 + 444) = v16;
      if ( v17 )
        glitch::IReferenceCounted::drop(v17);
      for ( i = 0; ; ++i )
      {
        v29 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 388) + 72))(*(_DWORD *)(a1 + 388));
        if ( i >= (*(int (__fastcall **)(int))(*(_DWORD *)v29 + 20))(v29) )
          break;
        glitch::video::CMaterialRendererManager::createMaterialInstance(&v39, a2, 9);
        v19 = v39;
        v20 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 388) + 72))(*(_DWORD *)(a1 + 388));
        (*(void (__fastcall **)(glitch::IReferenceCounted **, int, unsigned int))(*(_DWORD *)v20 + 24))(&v38, v20, i);
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
          v19,
          ParameterID,
          0,
          (int *)&v38);
        if ( v38 )
          glitch::IReferenceCounted::drop(v38);
        v21 = *((_DWORD *)v39 + 1);
        v22 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v21 + 24)
                                                + 12 * glitch::video::CMaterial::getTechnique(v39)
                                                + 8)
                                    + 32)
                        + 56);
        v34 = 255;
        v35 = 6;
        memset(v33, 0, sizeof(v33));
        v23 = (glitch::scene::CMeshBuffer *)operator new(0x38u, 0);
        glitch::scene::CMeshBuffer::CMeshBuffer(v23, v22, (const glitch::video::CPrimitiveStream *)v33, v24);
        v37 = v23;
        if ( v23 )
          ++*((_DWORD *)v23 + 1);
        if ( v33[0] )
          glitch::IReferenceCounted::drop(v33[0]);
        v25 = *(_DWORD *)(a1 + 444);
        v36 = nullptr;
        glitch::scene::CMesh::addMeshBuffer(v25, &v37, &v39, &v36);
        v27 = (glitch::video::CMaterialVertexAttributeMap **)v36;
        if ( v36 )
        {
          if ( (*(_DWORD *)v36)-- == 1 )
          {
            glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v27, v26);
            LC_API_FREE_0(v27);
          }
        }
        if ( v37 )
          glitch::IReferenceCounted::drop(v37);
        boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v39);
      }
      boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v40);
    }
  }
  glitch::scene::CBillboardTextSceneNode::setText((glitch::scene::CBillboardTextSceneNode *)a1, a5);
  glitch::scene::CBillboardTextSceneNode::setSize(a1, a7);
  glitch::scene::ISceneNode::setAutomaticCulling(v32, 1);
  return a1;
}


// ===== 6d685c `non-virtual thunk to'glitch::scene::ITextSceneNode::~ITextSceneNode() =====
void __fastcall `non-virtual thunk to'glitch::scene::ITextSceneNode::~ITextSceneNode(
        glitch::scene::ITextSceneNode *this)
{
  glitch::scene::ITextSceneNode::~ITextSceneNode((glitch::scene::ITextSceneNode *)((char *)this - 4));
}


// ===== 6d6864 glitch::scene::ITextSceneNode::~ITextSceneNode() =====
void __fastcall glitch::scene::ITextSceneNode::~ITextSceneNode(glitch::scene::ITextSceneNode *this)
{
  *(_DWORD *)this = off_98A238;
  *((_DWORD *)this + 1) = off_98A264;
  *((_DWORD *)this + 77) = off_98A368;
  glitch::scene::ISceneNode::~ISceneNode((glitch::scene::ITextSceneNode *)((char *)this + 4), (int *)off_98A37C);
  LC_API_FREE_0(this);
}


// ===== 6d68c4 `virtual thunk to'glitch::scene::ITextSceneNode::~ITextSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::ITextSceneNode::~ITextSceneNode(glitch::scene::ITextSceneNode *this)
{
  glitch::scene::ITextSceneNode::~ITextSceneNode((glitch::scene::ITextSceneNode *)((char *)this
                                                                                 + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6d68d4 `virtual thunk to'glitch::scene::ITextSceneNode::~ITextSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::ITextSceneNode::~ITextSceneNode(glitch::scene::ITextSceneNode *this)
{
  glitch::scene::ITextSceneNode::~ITextSceneNode((glitch::scene::ITextSceneNode *)((char *)this
                                                                                 + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6d68e4 `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode() =====
void __fastcall `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode(
        glitch::scene::CBillboardTextSceneNode *this)
{
  glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode((glitch::scene::CBillboardTextSceneNode *)((char *)this - 308));
}


// ===== 6d68ec `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode() =====
void __fastcall `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode(
        glitch::scene::CBillboardTextSceneNode *this)
{
  glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode((glitch::scene::CBillboardTextSceneNode *)((char *)this - 4));
}


// ===== 6d68f4 glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode() =====
void __fastcall glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode(
        glitch::scene::CBillboardTextSceneNode *this)
{
  glitch::IReferenceCounted *v2; // r0
  glitch::IReferenceCounted *v3; // r0
  void *v4; // r0
  char *v5; // r0

  v2 = *((glitch::IReferenceCounted **)this + 97);
  *(_DWORD *)this = off_98A530;
  *((_DWORD *)this + 1) = off_98A588;
  *((_DWORD *)this + 112) = off_98A6B0;
  *((_DWORD *)this + 77) = off_98A684;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  v3 = *((glitch::IReferenceCounted **)this + 111);
  if ( v3 )
    glitch::IReferenceCounted::drop(v3);
  v4 = *((void **)this + 108);
  if ( v4 )
    GlitchFree(v4);
  v5 = *((char **)this + 95);
  if ( v5 != (char *)this + 312 && v5 )
    GlitchFree(v5);
  *(_DWORD *)this = off_98A708;
  *((_DWORD *)this + 1) = off_98A734;
  *((_DWORD *)this + 77) = off_974F68;
  *(_DWORD *)&byte_4[(_DWORD)this] = off_98A734;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = off_98A838;
  glitch::scene::ISceneNode::~ISceneNode(
    (glitch::scene::CBillboardTextSceneNode *)((char *)this + 4),
    (int *)off_98A6C8);
}


// ===== 6d69dc `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode() =====
void __fastcall `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode(
        glitch::scene::CBillboardTextSceneNode *this)
{
  glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode((glitch::scene::CBillboardTextSceneNode *)((char *)this - 308));
}


// ===== 6d69e4 `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode() =====
void __fastcall `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode(
        glitch::scene::CBillboardTextSceneNode *this)
{
  glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode((glitch::scene::CBillboardTextSceneNode *)((char *)this - 4));
}


// ===== 6d69ec glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode() =====
void __fastcall glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode(
        glitch::scene::CBillboardTextSceneNode *this)
{
  glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode(this);
  LC_API_FREE_0(this);
}


// ===== 6d6a08 glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode() =====
void __fastcall glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode(
        glitch::scene::CBillboardTextSceneNode *this,
        int *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *v5; // r0
  glitch::IReferenceCounted *v6; // r0
  void *v7; // r0
  char *v8; // r0
  int v9; // r2

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *((_DWORD *)this + 1) = a2[8];
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[9];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = a2[10];
  v5 = *((glitch::IReferenceCounted **)this + 97);
  *((_DWORD *)this + 77) = off_98A684;
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  v6 = *((glitch::IReferenceCounted **)this + 111);
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  v7 = *((void **)this + 108);
  if ( v7 )
    GlitchFree(v7);
  v8 = *((char **)this + 95);
  if ( v8 != (char *)this + 312 && v8 )
    GlitchFree(v8);
  *((_DWORD *)this + 77) = off_974F68;
  v9 = a2[1];
  *(_DWORD *)this = v9;
  *((_DWORD *)this + 1) = a2[5];
  *(_DWORD *)((char *)this + *(_DWORD *)(v9 - 12)) = a2[6];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = a2[7];
  glitch::scene::ISceneNode::~ISceneNode((glitch::scene::CBillboardTextSceneNode *)((char *)this + 4), a2 + 2);
}


// ===== 6d6b04 `non-virtual thunk to'glitch::scene::CTextSceneNode::~CTextSceneNode() =====
void __fastcall `non-virtual thunk to'glitch::scene::CTextSceneNode::~CTextSceneNode(
        glitch::scene::CTextSceneNode *this)
{
  glitch::scene::CTextSceneNode::~CTextSceneNode((glitch::scene::CTextSceneNode *)((char *)this - 4));
}


// ===== 6d6b0c glitch::scene::CTextSceneNode::~CTextSceneNode() =====
void __fastcall glitch::scene::CTextSceneNode::~CTextSceneNode(glitch::scene::CTextSceneNode *this)
{
  glitch::IReferenceCounted *v2; // r0
  char *v3; // r0

  v2 = *((glitch::IReferenceCounted **)this + 96);
  *(_DWORD *)this = off_98A9C0;
  *((_DWORD *)this + 1) = off_98A9FC;
  *((_DWORD *)this + 104) = off_98AB00;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  v3 = *((char **)this + 94);
  if ( v3 != (char *)this + 308 && v3 )
    GlitchFree(v3);
  *(_DWORD *)this = off_98AB58;
  *((_DWORD *)this + 1) = off_98AB84;
  *(_DWORD *)&byte_4[(_DWORD)this] = off_98AB84;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = off_98AC88;
  glitch::scene::ISceneNode::~ISceneNode((glitch::scene::CTextSceneNode *)((char *)this + 4), (int *)off_98AB18);
}


// ===== 6d6bb8 `non-virtual thunk to'glitch::scene::CTextSceneNode::~CTextSceneNode() =====
void __fastcall `non-virtual thunk to'glitch::scene::CTextSceneNode::~CTextSceneNode(
        glitch::scene::CTextSceneNode *this)
{
  glitch::scene::CTextSceneNode::~CTextSceneNode((glitch::scene::CTextSceneNode *)((char *)this - 4));
}


// ===== 6d6bc0 glitch::scene::CTextSceneNode::~CTextSceneNode() =====
void __fastcall glitch::scene::CTextSceneNode::~CTextSceneNode(glitch::scene::CTextSceneNode *this)
{
  glitch::scene::CTextSceneNode::~CTextSceneNode(this);
  LC_API_FREE_0(this);
}


// ===== 6d6bdc `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::render(void *) =====
int __fastcall `non-virtual thunk to'glitch::scene::CBillboardTextSceneNode::render(
        glitch::scene::CBillboardTextSceneNode *this,
        void *a2)
{
  return glitch::scene::CBillboardTextSceneNode::render(
           (glitch::scene::CBillboardTextSceneNode *)((char *)this - 4),
           a2);
}


// ===== 6d6be4 glitch::scene::CBillboardTextSceneNode::render(void *) =====
glitch::IReferenceCounted *__fastcall glitch::scene::CBillboardTextSceneNode::render(
        glitch::IReferenceCounted *this,
        char *a2)
{
  glitch::IReferenceCounted *v3; // r4
  glitch::video::CVertexStreams **v4; // r5
  char *v5; // r6
  const glitch::video::CMaterialRenderer *v6; // r1
  glitch::video::CMaterialVertexAttributeMap **v7; // r8
  bool v8; // zf
  glitch::video::CMaterialVertexAttributeMap **v9; // r8
  _DWORD v10[16]; // [sp+0h] [bp-58h] BYREF
  char v11; // [sp+40h] [bp-18h]
  glitch::IReferenceCounted *v12; // [sp+44h] [bp-14h] BYREF
  glitch::IReferenceCounted *v13; // [sp+48h] [bp-10h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v14; // [sp+4Ch] [bp-Ch] BYREF
  glitch::video::CMaterialVertexAttributeMap *v15; // [sp+50h] [bp-8h] BYREF
  glitch::video::CMaterial *v16; // [sp+54h] [bp-4h] BYREF

  v3 = this;
  v4 = *(glitch::video::CVertexStreams ***)(*((_DWORD *)this + 69) + 20);
  if ( a2 )
  {
    LC_API_MEMSET_0(v10, 0, 0x40u);
    v11 = 1;
    v10[15] = 1065353216;
    v10[0] = 1065353216;
    v10[5] = 1065353216;
    v10[10] = 1065353216;
    (*((void (__fastcall **)(glitch::video::CVertexStreams **))*v4 + 27))(v4);
    v5 = a2 - 1;
    (*(void (__fastcall **)(glitch::video::CMaterial **, _DWORD, char *))(**((_DWORD **)v3 + 111) + 24))(
      &v16,
      *((_DWORD *)v3 + 111),
      v5);
    (*(void (__fastcall **)(glitch::video::CMaterialVertexAttributeMap **, _DWORD, char *))(**((_DWORD **)v3 + 111) + 28))(
      &v15,
      *((_DWORD *)v3 + 111),
      v5);
    v14 = v15;
    if ( v15 )
      ++*(_DWORD *)v15;
    glitch::video::IVideoDriver::setMaterial((int)v4, &v16, (int)&v14);
    v7 = (glitch::video::CMaterialVertexAttributeMap **)v14;
    if ( v14 )
    {
      v8 = (*(_DWORD *)v14)-- == 1;
      if ( v8 )
      {
        glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v7, v6);
        LC_API_FREE_0(v7);
      }
    }
    v9 = (glitch::video::CMaterialVertexAttributeMap **)v15;
    if ( v15 )
    {
      v8 = (*(_DWORD *)v15)-- == 1;
      if ( v8 )
      {
        glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v9, v6);
        LC_API_FREE_0(v9);
      }
    }
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v16);
    (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, char *))(**((_DWORD **)v3 + 111) + 20))(
      &v13,
      *((_DWORD *)v3 + 111),
      v5);
    v12 = v13;
    if ( v13 )
      ++*((_DWORD *)v13 + 1);
    glitch::video::IVideoDriver::drawMeshBuffer(v4, (int)&v12);
    if ( v12 )
      glitch::IReferenceCounted::drop(v12);
    this = v13;
    if ( v13 )
      return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v13);
  }
  return this;
}


// ===== 6d6d80 `virtual thunk to'glitch::scene::CTextSceneNode::~CTextSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CTextSceneNode::~CTextSceneNode(glitch::scene::CTextSceneNode *this)
{
  glitch::scene::CTextSceneNode::~CTextSceneNode((glitch::scene::CTextSceneNode *)((char *)this
                                                                                 + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6d6d90 `virtual thunk to'glitch::scene::CTextSceneNode::~CTextSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CTextSceneNode::~CTextSceneNode(glitch::scene::CTextSceneNode *this)
{
  glitch::scene::CTextSceneNode::~CTextSceneNode((glitch::scene::CTextSceneNode *)((char *)this
                                                                                 + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6d6da0 `virtual thunk to'glitch::scene::CTextSceneNode::~CTextSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CTextSceneNode::~CTextSceneNode(glitch::scene::CTextSceneNode *this)
{
  glitch::scene::CTextSceneNode::~CTextSceneNode((glitch::scene::CTextSceneNode *)((char *)this
                                                                                 + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6d6db0 `virtual thunk to'glitch::scene::CTextSceneNode::~CTextSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CTextSceneNode::~CTextSceneNode(glitch::scene::CTextSceneNode *this)
{
  glitch::scene::CTextSceneNode::~CTextSceneNode((glitch::scene::CTextSceneNode *)((char *)this
                                                                                 + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6d6dc0 `virtual thunk to'glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode(
        glitch::scene::CBillboardTextSceneNode *this)
{
  glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode((glitch::scene::CBillboardTextSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6d6dd0 `virtual thunk to'glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode(
        glitch::scene::CBillboardTextSceneNode *this)
{
  glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode((glitch::scene::CBillboardTextSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6d6de0 `virtual thunk to'glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode(
        glitch::scene::CBillboardTextSceneNode *this)
{
  glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode((glitch::scene::CBillboardTextSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6d6df0 `virtual thunk to'glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode(
        glitch::scene::CBillboardTextSceneNode *this)
{
  glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode((glitch::scene::CBillboardTextSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6d6e00 glitch::scene::createTerrainMesh(boost::intrusive_ptr<glitch::video::CImage> const&,boost::intrusive_ptr<glitch::video::CImage> const&,glitch::core::dimension2d<float> const&,float,glitch::video::IVideoDriver *,glitch::core::dimension2d<int> const&,bool) =====
_DWORD *__fastcall glitch::scene::createTerrainMesh(_DWORD *result)
{
  *result = 0;
  return result;
}


// ===== 6d6e0c `global constructor keyed to'.._source_glitch_scene_GeometryCreator.cpp =====
void `global constructor keyed to'.._source_glitch_scene_GeometryCreator.cpp()
{
  dword_9F7EC0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7EBC = 1056964608;
}


// ===== 6d6e2c glitch::scene::`anonymous namespace'::createMeshBuffer(uint,glitch::video::IVideoDriver *,uint,uint) =====
glitch::scene::_anonymous_namespace_ *__fastcall glitch::scene::`anonymous namespace'::createMeshBuffer(
        glitch::scene::_anonymous_namespace_ *this,
        unsigned int a2,
        glitch::video::IVideoDriver *a3,
        unsigned int a4,
        unsigned int a5)
{
  void (__fastcall *v8)(glitch::IReferenceCounted **, glitch::video::IVideoDriver *); // r4
  glitch::IReferenceCounted *v10; // r10
  void *v11; // r4
  int v12; // r5
  size_t v13; // r8
  glitch::IReferenceCounted *v14; // r4
  void *v15; // r0
  glitch::IReferenceCounted *v17; // [sp+10h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v18; // [sp+14h] [bp-8h] BYREF

  v8 = *(void (__fastcall **)(glitch::IReferenceCounted **, glitch::video::IVideoDriver *))(*(_DWORD *)a3 + 120);
  operator new[](2 * a5, 0);
  v8(&v18, a3);
  v10 = v18;
  if ( v18 )
    ++*((_DWORD *)v18 + 1);
  v11 = operator new(0x38u, 0);
  *((_DWORD *)v11 + 4) = 0;
  *((_DWORD *)v11 + 1) = 0;
  *((_DWORD *)v11 + 2) = 0;
  *((_DWORD *)v11 + 3) = 0;
  *(_DWORD *)v11 = off_988098;
  glitch::video::CVertexStreams::allocate((glitch::video::CVertexStreams **)v11 + 5, a2);
  *((_DWORD *)v11 + 6) = v10;
  if ( v10 )
    ++*((_DWORD *)v10 + 1);
  *((_WORD *)v11 + 22) = 1;
  *((_BYTE *)v11 + 52) = 0;
  *((_DWORD *)v11 + 7) = 0;
  *((_DWORD *)v11 + 9) = 0;
  *((_DWORD *)v11 + 12) = 0;
  *((_DWORD *)v11 + 8) = a5;
  *((_DWORD *)v11 + 10) = a4;
  *((_WORD *)v11 + 23) = 6;
  *(_DWORD *)this = v11;
  ++*((_DWORD *)v11 + 1);
  if ( v10 )
    glitch::IReferenceCounted::drop(v10);
  if ( v18 )
    glitch::IReferenceCounted::drop(v18);
  (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::video::IVideoDriver *, _DWORD, int, _DWORD, _DWORD, int))(*(_DWORD *)a3 + 120))(
    &v17,
    a3,
    0,
    4,
    0,
    0,
    1);
  v12 = *(_DWORD *)(*(_DWORD *)this + 20);
  v13 = a4 * glitch::video::CVertexStreams::setupStreams(v12, &v17, -1);
  *(_DWORD *)(v12 + 8) = a4;
  v14 = v17;
  v15 = operator new[](v13, 0);
  glitch::video::IBuffer::reset(v14, v13, v15, 1);
  if ( v17 )
    glitch::IReferenceCounted::drop(v17);
  return this;
}


// ===== 6d6fe0 glitch::video::SVertexStream::SMapBuffer<glitch::core::vector2d<float>>::reset(glitch::video::SVertexStream&,glitch::video::E_BUFFER_MAP_ACCESS) =====
int __fastcall glitch::video::SVertexStream::SMapBuffer<glitch::core::vector2d<float>>::reset(
        int **a1,
        int *a2,
        int a3)
{
  _BYTE *v5; // r6
  char v6; // r3
  int result; // r0
  int v8; // [sp+4h] [bp-4h]

  if ( a1[1] )
  {
    v5 = (_BYTE *)**a1;
    v6 = v5[19];
    if ( (v6 & 0x1Fu) <= 1 )
    {
      if ( (v5[18] & 0x20) != 0 )
      {
        v8 = a3;
        (*(void (__fastcall **)(int))(*(_DWORD *)v5 + 24))(**a1);
        a3 = v8;
      }
      v5[19] = 0;
    }
    else
    {
      v5[19] = ((v6 & 0x1F) - 1) | v6 & 0xE0;
    }
    a1[1] = nullptr;
    *a1 = nullptr;
  }
  *a1 = a2;
  result = glitch::video::IBuffer::map(*a2, a3);
  a1[1] = (int *)(result + a2[1]);
  return result;
}


// ===== 6d7088 glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float>>::reset(glitch::video::SVertexStream&,glitch::video::E_BUFFER_MAP_ACCESS) =====
int __fastcall glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float>>::reset(
        int **a1,
        int *a2,
        int a3)
{
  _BYTE *v5; // r6
  char v6; // r3
  int result; // r0
  int v8; // [sp+4h] [bp-4h]

  if ( a1[1] )
  {
    v5 = (_BYTE *)**a1;
    v6 = v5[19];
    if ( (v6 & 0x1Fu) <= 1 )
    {
      if ( (v5[18] & 0x20) != 0 )
      {
        v8 = a3;
        (*(void (__fastcall **)(int))(*(_DWORD *)v5 + 24))(**a1);
        a3 = v8;
      }
      v5[19] = 0;
    }
    else
    {
      v5[19] = ((v6 & 0x1F) - 1) | v6 & 0xE0;
    }
    a1[1] = nullptr;
    *a1 = nullptr;
  }
  *a1 = a2;
  result = glitch::video::IBuffer::map(*a2, a3);
  a1[1] = (int *)(result + a2[1]);
  return result;
}


// ===== 6d7130 glitch::video::SVertexStream::SMapBuffer<glitch::video::SColor>::reset(glitch::video::SVertexStream&,glitch::video::E_BUFFER_MAP_ACCESS) =====
int __fastcall glitch::video::SVertexStream::SMapBuffer<glitch::video::SColor>::reset(int **a1, int *a2, int a3)
{
  _BYTE *v5; // r6
  char v6; // r3
  int result; // r0
  int v8; // [sp+4h] [bp-4h]

  if ( a1[1] )
  {
    v5 = (_BYTE *)**a1;
    v6 = v5[19];
    if ( (v6 & 0x1Fu) <= 1 )
    {
      if ( (v5[18] & 0x20) != 0 )
      {
        v8 = a3;
        (*(void (__fastcall **)(int))(*(_DWORD *)v5 + 24))(**a1);
        a3 = v8;
      }
      v5[19] = 0;
    }
    else
    {
      v5[19] = ((v6 & 0x1F) - 1) | v6 & 0xE0;
    }
    a1[1] = nullptr;
    *a1 = nullptr;
  }
  *a1 = a2;
  result = glitch::video::IBuffer::map(*a2, a3);
  a1[1] = (int *)(result + a2[1]);
  return result;
}


// ===== 6d71d8 glitch::scene::`anonymous namespace'::mapMeshBuffer(boost::intrusive_ptr<glitch::scene::CMeshBuffer> const&,glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float>> *,glitch::video::SVertexStream::SMapBuffer<glitch::core::vector2d<float>> *,glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float>> *,glitch::video::SVertexStream::SMapBuffer<glitch::video::SColor> *,glitch::video::E_BUFFER_MAP_ACCESS) =====
int __fastcall glitch::scene::`anonymous namespace'::mapMeshBuffer(
        int *a1,
        int **a2,
        int **a3,
        int **a4,
        int **a5,
        int a6)
{
  int v6; // r12
  int result; // r0
  int v10; // r4
  int *v11; // r0
  int *v12; // r0
  int *Stream; // r0

  v6 = *a1;
  result = (int)a2;
  v10 = *(_DWORD *)(v6 + 20);
  if ( a2 )
    result = glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float>>::reset(a2, (int *)(v10 + 20), a6);
  if ( a3 && (*(_DWORD *)(v10 + 4) & 2) != 0 )
  {
    Stream = (int *)glitch::video::CVertexStreams::getStream(v10, 1, v10 + 36, *(_DWORD *)(v10 + 16));
    result = glitch::video::SVertexStream::SMapBuffer<glitch::core::vector2d<float>>::reset(a3, Stream, a6);
  }
  if ( a4 && (*(_DWORD *)(v10 + 4) & 0x20000) != 0 )
  {
    v12 = (int *)glitch::video::CVertexStreams::getStream(
                   v10,
                   17,
                   v10 + 16 * *(unsigned __int8 *)(v10 + 12) + 36,
                   *(_DWORD *)(v10 + 16));
    result = glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float>>::reset(a4, v12, a6);
  }
  if ( a5 )
  {
    if ( (*(_DWORD *)(v10 + 4) & 0x40000) != 0 )
    {
      v11 = (int *)glitch::video::CVertexStreams::getStream(
                     v10,
                     18,
                     v10 + 16 * *(unsigned __int8 *)(v10 + 12) + 36,
                     *(_DWORD *)(v10 + 16));
      return glitch::video::SVertexStream::SMapBuffer<glitch::video::SColor>::reset(a5, v11, a6);
    }
  }
  return result;
}


// ===== 6d72d0 glitch::scene::createPlaneMesh(uint,glitch::video::IVideoDriver *,float,glitch::video::SColor const&) =====
glitch::IReferenceCounted **__fastcall glitch::scene::createPlaneMesh(
        glitch::IReferenceCounted **a1,
        unsigned int a2,
        glitch::video::IVideoDriver *a3,
        float a4,
        const void *a5)
{
  glitch::IReferenceCounted *v6; // r5
  void *v7; // r6
  _BYTE *v8; // r5
  char v9; // r3
  int v10; // r6
  int v11; // r7
  int *v12; // r5
  float v13; // r8
  float v14; // r0
  float *v15; // r3
  int v16; // r3
  int v17; // r0
  int v18; // r3
  int v19; // r0
  int v20; // r3
  _BYTE *v21; // r4
  char v22; // r3
  _BYTE *v23; // r4
  char v24; // r3
  _BYTE *v25; // r4
  char v26; // r3
  _BYTE *v27; // r4
  char v28; // r3
  glitch::IReferenceCounted *v29; // r4
  _DWORD v32[3]; // [sp+10h] [bp-34h] BYREF
  int *v33; // [sp+1Ch] [bp-28h] BYREF
  int v34; // [sp+20h] [bp-24h]
  int *v35; // [sp+24h] [bp-20h] BYREF
  int v36; // [sp+28h] [bp-1Ch]
  int *v37; // [sp+2Ch] [bp-18h] BYREF
  int v38; // [sp+30h] [bp-14h]
  int *v39; // [sp+34h] [bp-10h] BYREF
  int v40; // [sp+38h] [bp-Ch]
  glitch::video::CMaterialVertexAttributeMap *v41; // [sp+3Ch] [bp-8h] BYREF
  glitch::video::CMaterial *v42; // [sp+40h] [bp-4h] BYREF
  glitch::IReferenceCounted *v43[2]; // [sp+44h] [bp+0h] BYREF

  v32[1] = 1;
  v32[2] = 131075;
  v32[0] = &elf_hash_chain[16302];
  glitch::scene::`anonymous namespace'::createMeshBuffer((glitch::scene::_anonymous_namespace_ *)v43, a2, a3, 4u, 6u);
  v6 = v43[0];
  v7 = (void *)(glitch::video::IBuffer::map(*((_DWORD *)v43[0] + 6), 4) + *((_DWORD *)v6 + 7));
  memcpy(v7, v32, 0xCu);
  if ( v7 )
  {
    v8 = *((_BYTE **)v6 + 6);
    v9 = v8[19];
    if ( (v9 & 0x1Fu) <= 1 )
    {
      if ( (v8[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)v8 + 24))(v8);
      v8[19] = 0;
    }
    else
    {
      v8[19] = ((v9 & 0x1F) - 1) | v9 & 0xE0;
    }
  }
  if ( (`guard variable for'glitch::scene::createPlaneMesh(unsigned int,glitch::video::IVideoDriver *,float,glitch::video::SColor const&)::meshData
      & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'glitch::scene::createPlaneMesh(unsigned int,glitch::video::IVideoDriver *,float,glitch::video::SColor const&)::meshData) )
  {
    dword_9F7F28 = -1090519040;
    glitch::scene::createPlaneMesh(unsigned int,glitch::video::IVideoDriver *,float,glitch::video::SColor const&)::meshData = -1090519040;
    dword_9F7ED0 = -1090519040;
    dword_9F7EF0 = -1090519040;
    dword_9F7F44 = 1065353216;
    dword_9F7F30 = 1056964608;
    dword_9F7F40 = 0;
    dword_9F7ECC = 0;
    dword_9F7ED4 = 0;
    dword_9F7ED8 = 1065353216;
    dword_9F7EDC = 0;
    dword_9F7EE0 = 1065353216;
    dword_9F7EE4 = 1065353216;
    dword_9F7EE8 = 1056964608;
    dword_9F7EEC = 0;
    dword_9F7EF4 = 0;
    dword_9F7EF8 = 1065353216;
    dword_9F7EFC = 0;
    dword_9F7F00 = 1065353216;
    dword_9F7F04 = 0;
    dword_9F7F08 = 1056964608;
    dword_9F7F0C = 0;
    dword_9F7F10 = 1056964608;
    dword_9F7F14 = 0;
    dword_9F7F18 = 1065353216;
    dword_9F7F1C = 0;
    dword_9F7F20 = 0;
    dword_9F7F24 = 0;
    dword_9F7F2C = 0;
    dword_9F7F34 = 0;
    dword_9F7F38 = 1065353216;
    dword_9F7F3C = 0;
    _cxa_guard_release(&`guard variable for'glitch::scene::createPlaneMesh(unsigned int,glitch::video::IVideoDriver *,float,glitch::video::SColor const&)::meshData);
  }
  v10 = 0;
  v39 = nullptr;
  v40 = 0;
  v37 = nullptr;
  v38 = 0;
  v35 = nullptr;
  v36 = 0;
  v33 = nullptr;
  v34 = 0;
  glitch::scene::`anonymous namespace'::mapMeshBuffer((int *)v43, &v39, &v37, &v35, &v33, 4);
  v11 = *(unsigned __int16 *)&byte_9[(_DWORD)v39 + 5];
  v12 = &glitch::scene::createPlaneMesh(unsigned int,glitch::video::IVideoDriver *,float,glitch::video::SColor const&)::meshData;
  while ( 1 )
  {
    v13 = a4 * *((float *)v12 + 1);
    v14 = a4 * *((float *)v12 + 2);
    v15 = (float *)(v40 + v10 * v11);
    *v15 = a4 * *(float *)v12;
    v15[2] = v14;
    v15[1] = v13;
    v16 = v38;
    if ( v38 )
    {
      v17 = *(unsigned __int16 *)&byte_9[(_DWORD)v37 + 5] * v10;
      *(_DWORD *)(v38 + v17) = v12[6];
      *(_DWORD *)(v16 + v17 + 4) = v12[7];
    }
    v18 = v36;
    if ( v36 )
    {
      v19 = *(unsigned __int16 *)&byte_9[(_DWORD)v35 + 5] * v10;
      *(_DWORD *)(v36 + v19) = v12[3];
      v20 = v18 + v19;
      *(_DWORD *)(v20 + 4) = v12[4];
      *(_DWORD *)(v20 + 8) = v12[5];
    }
    v12 += 8;
    if ( v34 )
      memcpy((void *)(v34 + *(unsigned __int16 *)&byte_9[(_DWORD)v33 + 5] * v10), a5, 4u);
    if ( ++v10 == 4 )
      break;
    v11 = *(unsigned __int16 *)&byte_9[(_DWORD)v39 + 5];
  }
  if ( v34 )
  {
    v21 = (_BYTE *)*v33;
    v22 = *(_BYTE *)(*v33 + 19);
    if ( (v22 & 0x1Fu) <= 1 )
    {
      if ( (v21[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v21 + 24))(*v33);
      v21[19] = 0;
    }
    else
    {
      v21[19] = ((v22 & 0x1F) - 1) | v22 & 0xE0;
    }
    v34 = 0;
    v33 = nullptr;
  }
  if ( v36 )
  {
    v23 = (_BYTE *)*v35;
    v24 = *(_BYTE *)(*v35 + 19);
    if ( (v24 & 0x1Fu) <= 1 )
    {
      if ( (v23[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v23 + 24))(*v35);
      v23[19] = 0;
    }
    else
    {
      v23[19] = ((v24 & 0x1F) - 1) | v24 & 0xE0;
    }
    v36 = 0;
    v35 = nullptr;
  }
  if ( v38 )
  {
    v25 = (_BYTE *)*v37;
    v26 = *(_BYTE *)(*v37 + 19);
    if ( (v26 & 0x1Fu) <= 1 )
    {
      if ( (v25[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v25 + 24))(*v37);
      v25[19] = 0;
    }
    else
    {
      v25[19] = ((v26 & 0x1F) - 1) | v26 & 0xE0;
    }
    v38 = 0;
    v37 = nullptr;
  }
  if ( v40 )
  {
    v27 = (_BYTE *)*v39;
    v28 = *(_BYTE *)(*v39 + 19);
    if ( (v28 & 0x1Fu) <= 1 )
    {
      if ( (v27[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v27 + 24))(*v39);
      v27[19] = 0;
    }
    else
    {
      v27[19] = ((v28 & 0x1F) - 1) | v28 & 0xE0;
    }
    v40 = 0;
    v39 = nullptr;
  }
  v29 = (glitch::IReferenceCounted *)operator new(0x2Cu, 0);
  glitch::scene::CMesh::CMesh(v29);
  if ( v29 )
    ++*((_DWORD *)v29 + 1);
  v41 = nullptr;
  v42 = nullptr;
  glitch::scene::CMesh::addMeshBuffer((int)v29, v43, &v42, &v41);
  boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v41);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v42);
  glitch::scene::CMesh::recalculateBoundingBox((int)v29);
  *a1 = v29;
  if ( v29 )
  {
    ++*((_DWORD *)v29 + 1);
    glitch::IReferenceCounted::drop(v29);
  }
  if ( v43[0] )
    glitch::IReferenceCounted::drop(v43[0]);
  return a1;
}


// ===== 6d7808 glitch::scene::createSphereMesh(uint,glitch::video::IVideoDriver *,float,uint,uint) =====
glitch::scene *__fastcall glitch::scene::createSphereMesh(
        glitch::scene *this,
        unsigned int a2,
        glitch::video::IVideoDriver *a3,
        float a4,
        unsigned int a5,
        unsigned int a6)
{
  unsigned int v6; // r10
  unsigned int v7; // r4
  unsigned int v8; // r6
  int v9; // r12
  glitch::IReferenceCounted *v10; // r5
  int v11; // r3
  int v12; // r6
  __int16 v13; // r7
  __int16 v14; // r8
  int v15; // r10
  int v16; // r11
  int v17; // r0
  __int16 v18; // r1
  __int16 v19; // r2
  int v20; // r12
  int v21; // lr
  _WORD *v22; // r3
  __int16 v23; // r8
  __int16 v24; // r5
  __int16 v25; // r7
  int v26; // r1
  __int16 v27; // r0
  int v28; // r12
  int v29; // r2
  int v30; // lr
  _WORD *v31; // r3
  int v32; // r0
  int v33; // r4
  double v34; // r10
  int v35; // r8
  float v36; // r0
  double v37; // r2
  float v38; // r9
  double v39; // r10
  float v40; // r0
  float v41; // r10
  float *v42; // r3
  int v43; // r12
  int v44; // r5
  float v45; // r0
  int v46; // r3
  int v47; // r2
  int v48; // r3
  int v49; // r3
  int v50; // r1
  _BYTE *v51; // r2
  double v52; // kr00_8
  double v53; // r0
  float v54; // r0
  float v55; // r6
  float v56; // r0
  float v57; // r5
  int *v58; // r2
  int v59; // r1
  int v60; // r2
  int v61; // r2
  int v62; // r2
  int v63; // r1
  _DWORD *v64; // r2
  int v65; // r3
  int v66; // r0
  _BYTE *v67; // r1
  int v68; // r4
  _DWORD *v69; // r3
  _DWORD *v70; // r1
  _DWORD *v71; // r2
  int v72; // r3
  int v73; // r4
  _BYTE *v74; // r1
  glitch::IReferenceCounted *v75; // r4
  _BYTE *v76; // r4
  char v77; // r3
  _BYTE *v78; // r4
  char v79; // r3
  _BYTE *v80; // r4
  char v81; // r3
  _BYTE *v82; // r4
  char v83; // r3
  _BYTE *v84; // r4
  char v85; // r3
  __int16 v87; // [sp+10h] [bp-A4h]
  double v88; // [sp+10h] [bp-A4h]
  __int16 v89; // [sp+18h] [bp-9Ch]
  double v90; // [sp+18h] [bp-9Ch]
  double v91; // [sp+20h] [bp-94h]
  float v92; // [sp+2Ch] [bp-88h]
  double v93; // [sp+30h] [bp-84h]
  unsigned int v94; // [sp+38h] [bp-7Ch]
  int v95; // [sp+38h] [bp-7Ch]
  __int16 v96; // [sp+40h] [bp-74h]
  unsigned int v97; // [sp+48h] [bp-6Ch]
  __int16 v98; // [sp+4Ch] [bp-68h]
  __int16 v99; // [sp+50h] [bp-64h]
  int v101; // [sp+60h] [bp-54h]
  glitch::IReferenceCounted *v102; // [sp+64h] [bp-50h]
  __int16 v104; // [sp+70h] [bp-44h]
  int v105; // [sp+74h] [bp-40h]
  float v106; // [sp+78h] [bp-3Ch] BYREF
  float v107; // [sp+7Ch] [bp-38h]
  float v108; // [sp+80h] [bp-34h]
  int *v109; // [sp+84h] [bp-30h] BYREF
  int v110; // [sp+88h] [bp-2Ch]
  int *v111; // [sp+8Ch] [bp-28h] BYREF
  int v112; // [sp+90h] [bp-24h]
  int *v113; // [sp+94h] [bp-20h] BYREF
  int v114; // [sp+98h] [bp-1Ch]
  int *v115; // [sp+9Ch] [bp-18h] BYREF
  int v116; // [sp+A0h] [bp-14h]
  glitch::video::CMaterialVertexAttributeMap *v117; // [sp+A4h] [bp-10h] BYREF
  glitch::video::CMaterial *v118; // [sp+A8h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v119[2]; // [sp+ACh] [bp-8h] BYREF
  unsigned int v120; // [sp+D8h] [bp+24h]
  unsigned int v121; // [sp+DCh] [bp+28h]

  v7 = a5;
  v8 = a6;
  if ( a5 <= 1 )
    v7 = 2;
  if ( a6 <= 1 )
    v8 = 2;
  v9 = v7 * v8;
  v121 = v8;
  if ( v7 * v8 <= 0x7FFF )
    v6 = v7 + 1;
  v120 = v7;
  if ( v7 * v8 > 0x7FFF )
  {
    if ( v7 <= v8 )
    {
      v97 = v7 + 1;
      v121 = 0x7FFF / (v7 + 1);
      v9 = v7 * v121;
    }
    else
    {
      v120 = 0x7FFF / v8 - 1;
      v9 = v8 * v120;
      v97 = 0x7FFF / v8;
    }
  }
  else
  {
    v97 = v6;
  }
  v98 = v121 * v97;
  glitch::scene::`anonymous namespace'::createMeshBuffer(
    (glitch::scene::_anonymous_namespace_ *)v119,
    a2,
    a3,
    v121 * v97 + 2,
    6 * v9);
  v102 = v119[0];
  v105 = *((_DWORD *)v119[0] + 5);
  v10 = v119[0];
  v104 = v121 - 1;
  v11 = glitch::video::IBuffer::map(*((_DWORD *)v119[0] + 6), 2) + *((_DWORD *)v10 + 7);
  v101 = v11;
  if ( v121 == 1 )
  {
    v94 = v120 - 1;
    v12 = 0;
    v96 = v120;
    v99 = v120 - 1;
  }
  else
  {
    v96 = v120;
    v12 = 0;
    v89 = 0;
    v99 = v120 - 1;
    v13 = v120 + v97 - 1;
    v94 = v120 - 1;
    v14 = v120 - 1;
    v15 = 1;
    v87 = v97;
    v16 = v11;
    while ( 1 )
    {
      if ( v120 != 1 )
      {
        v17 = 0;
        v18 = v87;
        v19 = v89;
        v20 = 1;
        v21 = v16 + 2 * v12;
        do
        {
          v22 = (_WORD *)(v21 + v17);
          ++v20;
          *(_WORD *)(v21 + v17) = v18;
          v22[1] = v19;
          v22[3] = v18;
          ++v19;
          v22[5] = ++v18;
          v22[2] = v19;
          v22[4] = v19;
          v17 += 12;
        }
        while ( v20 != v120 );
        v12 += 6 * v120 - 6;
      }
      ++v15;
      *(_WORD *)(v16 + 2 * v12) = v13;
      *(_WORD *)(v16 + 2 * (v12 + 1)) = v14;
      *(_WORD *)(v16 + 2 * (v12 + 2)) = v14 + 1;
      *(_WORD *)(v16 + 2 * (v12 + 3)) = v13;
      *(_WORD *)(v16 + 2 * (v12 + 4)) = v14 + 1;
      *(_WORD *)(v16 + 2 * (v12 + 5)) = v13 + 1;
      v12 += 6;
      v87 += v97;
      v13 += v97;
      v14 += v97;
      if ( v15 == v121 )
        break;
      v89 += v97;
    }
  }
  v23 = v97 * v104;
  v24 = v98 + 1;
  if ( v94 )
  {
    v26 = 0;
    v25 = v121 * v97;
    v27 = v97 * v104;
    v28 = 1;
    v29 = 0;
    v30 = v101 + 2 * v12;
    do
    {
      v31 = (_WORD *)(v30 + v26);
      *(_WORD *)(v30 + v26) = v98;
      v31[2] = v29++;
      v31[3] = v27++;
      v31[1] = v28;
      v31[5] = v24;
      v31[4] = v27;
      ++v28;
      v26 += 12;
    }
    while ( v29 != v94 );
    v12 += 6 * v29;
  }
  else
  {
    v25 = v121 * v97;
  }
  *(_WORD *)(v101 + 2 * v12) = v25;
  v32 = v12 + 2;
  *(_WORD *)(v101 + 2 * (v12 + 1)) = v96;
  *(_WORD *)(v101 + 2 * v32) = v99;
  *(_WORD *)(v101 + 2 * (v32 + 1)) = v23 + v99;
  *(_WORD *)(v101 + 2 * (v32 + 2)) = v23;
  *(_WORD *)(v101 + 2 * (v32 + 2) + 2) = v24;
  v33 = 0;
  v115 = nullptr;
  v116 = 0;
  v113 = nullptr;
  v114 = 0;
  v111 = nullptr;
  v112 = 0;
  v109 = nullptr;
  v110 = 0;
  glitch::scene::`anonymous namespace'::mapMeshBuffer((int *)v119, &v115, &v113, &v111, &v109, 5);
  if ( v121 )
  {
    v93 = 0.0;
    v92 = 0.0;
    do
    {
      v93 = v93 + (float)(3.1416 / (float)v121);
      v90 = sin(v93);
      if ( v120 )
      {
        v91 = a4;
        v34 = 0.0;
        v95 = v33 + v120;
        v35 = v33 - v97;
        v88 = 0.0;
        v36 = a4 * cos(v93);
        v37 = 1.0;
        v38 = v36;
        while ( 1 )
        {
          v54 = v91 * v37 * v90;
          v55 = v54;
          v56 = v91 * v34 * v90;
          v57 = v56;
          v106 = v55;
          v107 = v38;
          v108 = v56;
          glitch::core::vector3d<float>::normalize(&v106);
          v41 = v92;
          if ( v92 == 0.0 )
          {
            if ( v107 == -1.0 || v107 == 1.0 )
            {
              v41 = 0.5;
            }
            else
            {
              v39 = v106 / v90;
              if ( v39 >= -1.0 )
              {
                if ( v39 >= 1.0 )
                  v39 = 1.0;
              }
              else
              {
                v39 = -1.0;
              }
              v40 = acos(v39) * 0.5 * 0.318309886;
              v41 = v40;
            }
            if ( v108 < 0.0 )
              v41 = 1.0 - v41;
          }
          else
          {
            if ( v114 )
              v58 = v113;
            else
              v41 = 0.5;
            if ( v114 )
              v41 = *(float *)(v114 + *((unsigned __int16 *)v58 + 7) * v35);
          }
          v42 = (float *)(v116 + *(unsigned __int16 *)&byte_9[(_DWORD)v115 + 5] * v33);
          *v42 = v55;
          v42[2] = v57;
          v42[1] = v38;
          v43 = v114;
          if ( v114 )
          {
            v44 = *(unsigned __int16 *)&byte_9[(_DWORD)v113 + 5] * v33;
            *(float *)(v114 + v44) = v41;
            v45 = v93 * 0.318309886;
            *(float *)(v43 + v44 + 4) = v45;
          }
          v46 = v112;
          if ( v112 )
          {
            v47 = *(unsigned __int16 *)&byte_9[(_DWORD)v111 + 5] * v33;
            *(float *)(v112 + v47) = v106;
            v48 = v46 + v47;
            *(float *)(v48 + 4) = v107;
            *(float *)(v48 + 8) = v108;
          }
          v49 = v110;
          if ( v110 )
          {
            v50 = *(unsigned __int16 *)&byte_9[(_DWORD)v109 + 5] * v33;
            v51 = (_BYTE *)(v110 + v50);
            v51[1] = -1;
            v51[3] = 100;
            v51[2] = -1;
            *(_BYTE *)(v49 + v50) = -1;
          }
          ++v33;
          ++v35;
          if ( v33 == v95 )
            break;
          v88 = v88 + (float)(6.2832 / (float)v120);
          v52 = cos(v88);
          v53 = sin(v88);
          v37 = v52;
          v34 = v53;
        }
      }
      memcpy(
        (void *)(v116 + *(unsigned __int16 *)&byte_9[(_DWORD)v115 + 5] * v33),
        (const void *)(v116 + *(unsigned __int16 *)&byte_9[(_DWORD)v115 + 5] * (v33 - v120)),
        *(unsigned __int16 *)(v105 + 34));
      if ( v114 )
      {
        v59 = 1065353216;
        v60 = *(unsigned __int16 *)&byte_9[(_DWORD)v113 + 5] * v33;
      }
      ++v33;
      if ( v114 )
        *(_DWORD *)(v114 + v60) = v59;
      ++LODWORD(v92);
    }
    while ( LODWORD(v92) != v121 );
  }
  else
  {
    v33 = 0;
  }
  v61 = v116 + *(unsigned __int16 *)&byte_9[(_DWORD)v115 + 5] * v33;
  *(_DWORD *)v61 = 0;
  *(_DWORD *)(v61 + 8) = 0;
  *(float *)(v61 + 4) = a4;
  v62 = v114;
  if ( v114 )
  {
    v63 = *(unsigned __int16 *)&byte_9[(_DWORD)v113 + 5] * v33;
    *(_DWORD *)(v114 + v63) = 1056964608;
    *(_DWORD *)(v62 + v63 + 4) = 0;
  }
  if ( v112 )
  {
    v64 = (_DWORD *)(v112 + *(unsigned __int16 *)&byte_9[(_DWORD)v111 + 5] * v33);
    *v64 = 0;
    v64[2] = 0;
    v64[1] = 1065353216;
  }
  v65 = v110;
  if ( v110 )
  {
    v66 = *(unsigned __int16 *)&byte_9[(_DWORD)v109 + 5] * v33;
    v67 = (_BYTE *)(v110 + v66);
    v67[3] = 100;
    v67[1] = -1;
    v67[2] = -1;
    *(_BYTE *)(v65 + v66) = -1;
  }
  v68 = v33 + 1;
  v69 = (_DWORD *)(v116 + *(unsigned __int16 *)&byte_9[(_DWORD)v115 + 5] * v68);
  *v69 = 0;
  v69[2] = 0;
  v69[1] = LODWORD(a4) + 0x80000000;
  if ( v114 )
  {
    v70 = (_DWORD *)(v114 + *(unsigned __int16 *)&byte_9[(_DWORD)v113 + 5] * v68);
    *v70 = 1056964608;
    v70[1] = 1065353216;
  }
  if ( v112 )
  {
    v71 = (_DWORD *)(v112 + *(unsigned __int16 *)&byte_9[(_DWORD)v111 + 5] * v68);
    *v71 = 0;
    v71[2] = 0;
    v71[1] = -1082130432;
  }
  v72 = v110;
  if ( v110 )
  {
    v73 = *(unsigned __int16 *)&byte_9[(_DWORD)v109 + 5] * v68;
    v74 = (_BYTE *)(v110 + v73);
    v74[3] = 100;
    v74[1] = -1;
    v74[2] = -1;
    *(_BYTE *)(v72 + v73) = -1;
  }
  v75 = (glitch::IReferenceCounted *)operator new(0x2Cu, 0);
  glitch::scene::CMesh::CMesh(v75);
  if ( v75 )
    ++*((_DWORD *)v75 + 1);
  v117 = nullptr;
  v118 = nullptr;
  glitch::scene::CMesh::addMeshBuffer((int)v75, v119, &v118, &v117);
  boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v117);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v118);
  glitch::scene::CMesh::recalculateBoundingBox((int)v75);
  *(_DWORD *)this = v75;
  if ( v75 )
  {
    ++*((_DWORD *)v75 + 1);
    glitch::IReferenceCounted::drop(v75);
  }
  if ( v110 )
  {
    v76 = (_BYTE *)*v109;
    v77 = *(_BYTE *)(*v109 + 19);
    if ( (v77 & 0x1Fu) <= 1 )
    {
      if ( (v76[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v76 + 24))(*v109);
      v76[19] = 0;
    }
    else
    {
      v76[19] = ((v77 & 0x1F) - 1) | v77 & 0xE0;
    }
    v110 = 0;
    v109 = nullptr;
  }
  if ( v112 )
  {
    v78 = (_BYTE *)*v111;
    v79 = *(_BYTE *)(*v111 + 19);
    if ( (v79 & 0x1Fu) <= 1 )
    {
      if ( (v78[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v78 + 24))(*v111);
      v78[19] = 0;
    }
    else
    {
      v78[19] = ((v79 & 0x1F) - 1) | v79 & 0xE0;
    }
    v112 = 0;
    v111 = nullptr;
  }
  if ( v114 )
  {
    v80 = (_BYTE *)*v113;
    v81 = *(_BYTE *)(*v113 + 19);
    if ( (v81 & 0x1Fu) <= 1 )
    {
      if ( (v80[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v80 + 24))(*v113);
      v80[19] = 0;
    }
    else
    {
      v80[19] = ((v81 & 0x1F) - 1) | v81 & 0xE0;
    }
    v114 = 0;
    v113 = nullptr;
  }
  if ( v116 )
  {
    v82 = (_BYTE *)*v115;
    v83 = *(_BYTE *)(*v115 + 19);
    if ( (v83 & 0x1Fu) <= 1 )
    {
      if ( (v82[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v82 + 24))(*v115);
      v82[19] = 0;
    }
    else
    {
      v82[19] = ((v83 & 0x1F) - 1) | v83 & 0xE0;
    }
    v116 = 0;
    v115 = nullptr;
  }
  if ( v101 )
  {
    v84 = *((_BYTE **)v102 + 6);
    v85 = v84[19];
    if ( (v85 & 0x1Fu) <= 1 )
    {
      if ( (v84[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v84 + 24))(*((_DWORD *)v102 + 6));
      v84[19] = 0;
    }
    else
    {
      v84[19] = ((v85 & 0x1F) - 1) | v85 & 0xE0;
    }
  }
  if ( v119[0] )
    glitch::IReferenceCounted::drop(v119[0]);
  return this;
}


// ===== 6d841c glitch::scene::createHillPlaneMesh(uint,glitch::video::IVideoDriver *,glitch::core::dimension2d<float> const&,glitch::core::dimension2d<uint> const&,boost::intrusive_ptr<glitch::video::CMaterial> const&,boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&,float,glitch::core::dimension2d<float> const&,glitch::core::dimension2d<float> const&) =====
glitch::IReferenceCounted **__fastcall glitch::scene::createHillPlaneMesh(
        glitch::IReferenceCounted **a1,
        float a2,
        glitch::video::IVideoDriver *a3,
        int a4,
        unsigned int *a5,
        glitch::video::CMaterialVertexAttributeMap **a6,
        glitch::video::CMaterialVertexAttributeMap **a7,
        float a8,
        float *a9,
        float *a10)
{
  unsigned int v10; // r7
  unsigned int v11; // r11
  float v12; // r1
  float v13; // r12
  float v14; // r8
  int v15; // r4
  float v16; // r7
  float v17; // r10
  int v18; // r5
  float *v19; // r3
  int v20; // r3
  int v21; // r10
  int v22; // r3
  int v23; // r5
  _BYTE *v24; // r2
  _BYTE *v25; // r4
  char v26; // r3
  _BYTE *v27; // r4
  char v28; // r3
  _BYTE *v29; // r4
  char v30; // r3
  int v31; // r0
  __int16 v32; // r2
  int v33; // r6
  int v34; // r8
  __int16 v35; // r7
  int v36; // r1
  __int16 v37; // r12
  int v38; // lr
  int v39; // r5
  _WORD *v40; // r3
  _BYTE *v41; // r4
  char v42; // r3
  unsigned int v43; // r6
  int v44; // r4
  int v45; // r5
  int v46; // r10
  int v47; // r12
  int v48; // lr
  int v49; // r1
  int v50; // r3
  int v51; // r1
  int v52; // r3
  int v53; // r2
  _DWORD *v54; // r0
  int v55; // r12
  _DWORD *v56; // r0
  _DWORD *v57; // r0
  _BYTE *v58; // r4
  char v59; // r3
  _BYTE *v60; // r4
  char v61; // r3
  glitch::IReferenceCounted *v62; // r4
  float v64; // [sp+Ch] [bp-88h]
  float v65; // [sp+10h] [bp-84h]
  glitch::IReferenceCounted *v66; // [sp+10h] [bp-84h]
  float v67; // [sp+14h] [bp-80h]
  int v68; // [sp+18h] [bp-7Ch]
  float v69; // [sp+1Ch] [bp-78h]
  float *v70; // [sp+20h] [bp-74h]
  float v71; // [sp+24h] [bp-70h]
  float v72; // [sp+2Ch] [bp-68h]
  float v73; // [sp+30h] [bp-64h]
  float v74; // [sp+34h] [bp-60h]
  int v75; // [sp+38h] [bp-5Ch]
  unsigned int v76; // [sp+3Ch] [bp-58h]
  unsigned int v77; // [sp+40h] [bp-54h]
  float v78; // [sp+44h] [bp-50h]
  unsigned int v79; // [sp+4Ch] [bp-48h]
  int v81; // [sp+5Ch] [bp-38h]
  int v82; // [sp+64h] [bp-30h] BYREF
  int v83; // [sp+68h] [bp-2Ch]
  int v84; // [sp+6Ch] [bp-28h]
  int *v85; // [sp+74h] [bp-20h] BYREF
  int v86; // [sp+78h] [bp-1Ch]
  int *v87; // [sp+7Ch] [bp-18h] BYREF
  int v88; // [sp+80h] [bp-14h]
  int *v89; // [sp+84h] [bp-10h] BYREF
  int v90; // [sp+88h] [bp-Ch]
  glitch::IReferenceCounted *v91[2]; // [sp+8Ch] [bp-8h] BYREF

  v70 = (float *)a4;
  v73 = *a9;
  v10 = LODWORD(a2);
  LOWORD(a2) = -10486;
  v76 = *a5;
  v11 = a5[1];
  v74 = a9[1];
  if ( *a9 < 0.01 )
    a4 = 1065353216;
  HIWORD(a2) = 15395;
  if ( *a9 < 0.01 )
    v73 = *(float *)&a4;
  if ( v74 < a2 )
    v74 = 1.0;
  v67 = (float)((float)v76 * *v70) * 0.5;
  v65 = (float)((float)v11 * v70[1]) * 0.5;
  v78 = *a10 / (float)v76;
  v77 = v11 + 1;
  v79 = v11 * (6 * (v76 + 1) - 6);
  v72 = a10[1] / (float)v11;
  glitch::scene::`anonymous namespace'::createMeshBuffer(
    (glitch::scene::_anonymous_namespace_ *)v91,
    v10,
    a3,
    (v11 + 1) * (v76 + 1),
    v79);
  v81 = *((_DWORD *)v91[0] + 5);
  v89 = nullptr;
  v90 = 0;
  v85 = nullptr;
  v86 = 0;
  v87 = nullptr;
  v88 = 0;
  glitch::scene::`anonymous namespace'::mapMeshBuffer((int *)v91, &v89, &v85, nullptr, &v87, 4);
  if ( v76 != -1 )
  {
    v71 = 0.0;
    v75 = 0;
    v68 = 0;
    v69 = 0.0;
    while ( 1 )
    {
      if ( v11 != -1 )
      {
        v14 = 0.0;
        v15 = 0;
        v16 = 0.0;
        while ( 1 )
        {
          v17 = v16 - v65;
          if ( a8 == 0.0 )
            v13 = 0.0;
          v18 = v15 + v68;
          if ( a8 != 0.0 )
          {
            v64 = sinf((float)((float)((float)(v69 - v67) * v73) * 3.1416) / v67);
            v13 = (float)(v64 * cosf((float)((float)(v17 * v74) * 3.1416) / v65)) * a8;
          }
          v19 = (float *)(v90 + *(unsigned __int16 *)&byte_9[(_DWORD)v89 + 5] * v18);
          *v19 = v69 - v67;
          v19[2] = v17;
          v19[1] = v13;
          v20 = v86;
          if ( v86 )
          {
            v13 = v71;
            v21 = *(unsigned __int16 *)&byte_9[(_DWORD)v85 + 5] * v18;
            *(float *)(v86 + v21) = v71;
            *(float *)(v20 + v21 + 4) = 1.0 - v14;
          }
          v22 = v88;
          if ( v88 )
          {
            v23 = *(unsigned __int16 *)&byte_9[(_DWORD)v87 + 5] * v18;
            v24 = (_BYTE *)(v88 + v23);
            v24[3] = -1;
            *(_BYTE *)(v22 + v23) = -1;
            v24[2] = -1;
            v24[1] = -1;
          }
          if ( v15 == v11 )
            break;
          v16 = v16 + v70[1];
          ++v15;
          v14 = v14 + v72;
        }
        v68 += v77;
      }
      v13 = *(float *)&v70;
      v12 = *v70;
      if ( v75 == v76 )
        break;
      v69 = v69 + v12;
      ++v75;
      v71 = v71 + v78;
    }
  }
  if ( v88 )
  {
    v25 = (_BYTE *)*v87;
    v26 = *(_BYTE *)(*v87 + 19);
    if ( (v26 & 0x1Fu) <= 1 )
    {
      if ( (v25[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD, float))(*(_DWORD *)v25 + 24))(*v87, COERCE_FLOAT(LODWORD(v12)));
      v25[19] = 0;
    }
    else
    {
      v25[19] = ((v26 & 0x1F) - 1) | v26 & 0xE0;
    }
    v88 = 0;
    v87 = nullptr;
  }
  if ( v86 )
  {
    v27 = (_BYTE *)*v85;
    v28 = *(_BYTE *)(*v85 + 19);
    if ( (v28 & 0x1Fu) <= 1 )
    {
      if ( (v27[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD, float))(*(_DWORD *)v27 + 24))(*v85, COERCE_FLOAT(LODWORD(v12)));
      v27[19] = 0;
    }
    else
    {
      v27[19] = ((v28 & 0x1F) - 1) | v28 & 0xE0;
    }
    v86 = 0;
    v85 = nullptr;
  }
  if ( v90 )
  {
    v29 = (_BYTE *)*v89;
    v30 = *(_BYTE *)(*v89 + 19);
    if ( (v30 & 0x1Fu) <= 1 )
    {
      if ( (v29[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD, float))(*(_DWORD *)v29 + 24))(*v89, COERCE_FLOAT(LODWORD(v12)));
      v29[19] = 0;
    }
    else
    {
      v29[19] = ((v30 & 0x1F) - 1) | v30 & 0xE0;
    }
    v90 = 0;
    v89 = nullptr;
  }
  v66 = v91[0];
  v31 = glitch::video::IBuffer::map(*((_DWORD *)v91[0] + 6), 2) + *((_DWORD *)v66 + 7);
  if ( v76 )
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    do
    {
      if ( v11 )
      {
        v35 = v77 + v32;
        v36 = 0;
        v37 = v77 + v32;
        v38 = 0;
        v39 = v31 + 2 * v34;
        do
        {
          ++v38;
          *(_WORD *)(v39 + v36) = v32++;
          v40 = (_WORD *)(v39 + v36);
          v40[5] = v37;
          v40[2] = v37;
          v40[1] = v32;
          v40[3] = v32;
          v40[4] = v37 + 1;
          v36 += 12;
          ++v37;
        }
        while ( v38 != v11 );
        v34 += 6 * v11;
      }
      else
      {
        v35 = v32 + v77;
      }
      ++v33;
      v32 = v35;
    }
    while ( v33 != v76 );
  }
  if ( v31 )
  {
    v41 = *((_BYTE **)v66 + 6);
    v42 = v41[19];
    if ( (v42 & 0x1Fu) <= 1 )
    {
      if ( (v41[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v41 + 24))(*((_DWORD *)v66 + 6));
      v41[19] = 0;
    }
    else
    {
      v41[19] = ((v42 & 0x1F) - 1) | v42 & 0xE0;
    }
  }
  if ( (*(_DWORD *)(v81 + 4) & 0x20000) != 0 )
  {
    v43 = 0;
    v87 = nullptr;
    v88 = 0;
    v85 = nullptr;
    v86 = 0;
    glitch::scene::`anonymous namespace'::mapMeshBuffer((int *)v91, &v87, nullptr, &v85, nullptr, 3);
    v44 = *(_DWORD *)(*((_DWORD *)v91[0] + 6) + 8) + *((_DWORD *)v91[0] + 7);
    if ( v79 )
    {
      v45 = 2;
      do
      {
        v46 = v45 + 2;
        v47 = *(unsigned __int16 *)&byte_9[(_DWORD)v87 + 5];
        v48 = *(unsigned __int16 *)(v44 + v45);
        v49 = *(unsigned __int16 *)(v44 + 2 * v43);
        v50 = *(unsigned __int16 *)(v44 + v45 + 2);
        v82 = 0;
        v83 = 0;
        v84 = 0;
        glitch::core::plane3d<float>::setPlane(
          (int)&v82,
          (float *)(v88 + v47 * v49),
          (float *)(v88 + v47 * v48),
          (float *)(v88 + v47 * v50));
        v51 = v82;
        v52 = v83;
        v53 = v84;
        v54 = (_DWORD *)(v86 + *(unsigned __int16 *)&byte_9[(_DWORD)v85 + 5] * *(unsigned __int16 *)(v44 + 2 * v43));
        *v54 = v82;
        v54[2] = v53;
        v54[1] = v52;
        v43 += 3;
        v55 = *(unsigned __int16 *)&byte_9[(_DWORD)v85 + 5] * *(unsigned __int16 *)(v44 + v45);
        v45 += 6;
        v56 = (_DWORD *)(v86 + v55);
        *v56 = v51;
        v56[2] = v53;
        v56[1] = v52;
        v57 = (_DWORD *)(v86 + *(unsigned __int16 *)&byte_9[(_DWORD)v85 + 5] * *(unsigned __int16 *)(v44 + v46));
        *v57 = v51;
        v57[2] = v53;
        v57[1] = v52;
      }
      while ( v79 > v43 );
    }
    if ( v86 )
    {
      v58 = (_BYTE *)*v85;
      v59 = *(_BYTE *)(*v85 + 19);
      if ( (v59 & 0x1Fu) <= 1 )
      {
        if ( (v58[18] & 0x20) != 0 )
          (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v58 + 24))(*v85);
        v58[19] = 0;
      }
      else
      {
        v58[19] = ((v59 & 0x1F) - 1) | v59 & 0xE0;
      }
      v86 = 0;
      v85 = nullptr;
    }
    if ( v88 )
    {
      v60 = (_BYTE *)*v87;
      v61 = *(_BYTE *)(*v87 + 19);
      if ( (v61 & 0x1Fu) <= 1 )
      {
        if ( (v60[18] & 0x20) != 0 )
          (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v60 + 24))(*v87);
        v60[19] = 0;
      }
      else
      {
        v60[19] = ((v61 & 0x1F) - 1) | v61 & 0xE0;
      }
      v88 = 0;
      v87 = nullptr;
    }
  }
  v62 = (glitch::IReferenceCounted *)operator new(0x2Cu, 0);
  glitch::scene::CMesh::CMesh(v62);
  if ( v62 )
  {
    ++*((_DWORD *)v62 + 1);
    glitch::scene::CMesh::addMeshBuffer((int)v62, v91, a6, a7);
    glitch::scene::CMesh::recalculateBoundingBox((int)v62);
    *a1 = v62;
    ++*((_DWORD *)v62 + 1);
    glitch::IReferenceCounted::drop(v62);
  }
  else
  {
    glitch::scene::CMesh::addMeshBuffer(0, v91, a6, a7);
    glitch::scene::CMesh::recalculateBoundingBox(0);
    *a1 = nullptr;
  }
  if ( v91[0] )
    glitch::IReferenceCounted::drop(v91[0]);
  return a1;
}


// ===== 6d8cb4 glitch::scene::createCubeMesh(uint,glitch::video::IVideoDriver *,float) =====
glitch::scene *__fastcall glitch::scene::createCubeMesh(
        glitch::scene *this,
        unsigned int a2,
        glitch::video::IVideoDriver *a3,
        float a4)
{
  glitch::IReferenceCounted *v5; // r6
  void *v6; // r7
  _BYTE *v7; // r6
  char v8; // r3
  int v9; // r7
  int *v10; // r6
  int i; // r10
  float v12; // r9
  float v13; // r0
  float *v14; // r3
  int v15; // r3
  int v16; // r2
  int v17; // r3
  int v18; // r2
  int v19; // r3
  int v20; // r3
  int v21; // r1
  _BYTE *v22; // r2
  _BYTE *v23; // r4
  char v24; // r3
  _BYTE *v25; // r4
  char v26; // r3
  _BYTE *v27; // r4
  char v28; // r3
  _BYTE *v29; // r4
  char v30; // r3
  glitch::IReferenceCounted *v31; // r4
  int *v34; // [sp+14h] [bp-30h] BYREF
  int v35; // [sp+18h] [bp-2Ch]
  int *v36; // [sp+1Ch] [bp-28h] BYREF
  int v37; // [sp+20h] [bp-24h]
  int *v38; // [sp+24h] [bp-20h] BYREF
  int v39; // [sp+28h] [bp-1Ch]
  int *v40; // [sp+2Ch] [bp-18h] BYREF
  int v41; // [sp+30h] [bp-14h]
  glitch::video::CMaterialVertexAttributeMap *v42; // [sp+34h] [bp-10h] BYREF
  glitch::video::CMaterial *v43; // [sp+38h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v44[2]; // [sp+3Ch] [bp-8h] BYREF

  glitch::scene::`anonymous namespace'::createMeshBuffer(
    (glitch::scene::_anonymous_namespace_ *)v44,
    a2,
    a3,
    0x18u,
    0x24u);
  v5 = v44[0];
  v6 = (void *)(glitch::video::IBuffer::map(*((_DWORD *)v44[0] + 6), 4) + *((_DWORD *)v5 + 7));
  memcpy(v6, &glitch::scene::createCubeMesh(unsigned int,glitch::video::IVideoDriver *,float)::u, 0x48u);
  if ( v6 )
  {
    v7 = *((_BYTE **)v5 + 6);
    v8 = v7[19];
    if ( (v8 & 0x1Fu) <= 1 )
    {
      if ( (v7[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)v7 + 24))(v7);
      v7[19] = 0;
    }
    else
    {
      v7[19] = ((v8 & 0x1F) - 1) | v8 & 0xE0;
    }
  }
  if ( (`guard variable for'glitch::scene::createCubeMesh(unsigned int,glitch::video::IVideoDriver *,float)::cubeData & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'glitch::scene::createCubeMesh(unsigned int,glitch::video::IVideoDriver *,float)::cubeData) )
  {
    glitch::scene::createCubeMesh(unsigned int,glitch::video::IVideoDriver *,float)::cubeData = -1090519040;
    dword_9F7F50 = -1090519040;
    dword_9F7F54 = -1090519040;
    dword_9F7F58 = 0;
    dword_9F7F5C = 0;
    dword_9F7F60 = -1082130432;
    dword_9F7F64 = 1065353216;
    dword_9F7F68 = 1065353216;
    dword_9F7F6C = -1090519040;
    dword_9F7F70 = 1056964608;
    dword_9F7F74 = -1090519040;
    dword_9F7F78 = 0;
    dword_9F7F7C = 0;
    dword_9F7F80 = -1082130432;
    dword_9F7F84 = 1065353216;
    dword_9F7F88 = 0;
    dword_9F7F8C = 1056964608;
    dword_9F7F90 = 1056964608;
    dword_9F7F94 = -1090519040;
    dword_9F7F98 = 0;
    dword_9F7F9C = 0;
    dword_9F7FA0 = -1082130432;
    dword_9F7FA4 = 0;
    dword_9F7FA8 = 0;
    dword_9F7FAC = 1056964608;
    dword_9F7FB0 = -1090519040;
    dword_9F7FB4 = -1090519040;
    dword_9F7FB8 = 0;
    dword_9F7FBC = 0;
    dword_9F7FC0 = -1082130432;
    dword_9F7FC4 = 0;
    dword_9F7FC8 = 1065353216;
    dword_9F7FCC = 1056964608;
    dword_9F7FD0 = -1090519040;
    dword_9F7FD4 = -1090519040;
    dword_9F7FD8 = 1065353216;
    dword_9F7FDC = 0;
    dword_9F7FE0 = 0;
    dword_9F7FE4 = 1065353216;
    dword_9F7FE8 = 1065353216;
    dword_9F7FEC = 1056964608;
    dword_9F7FF0 = 1056964608;
    dword_9F7FF4 = -1090519040;
    dword_9F7FF8 = 1065353216;
    dword_9F7FFC = 0;
    dword_9F8000 = 0;
    dword_9F8004 = 1065353216;
    dword_9F8008 = 0;
    dword_9F800C = 1056964608;
    dword_9F8010 = 1056964608;
    dword_9F8014 = 1056964608;
    dword_9F8018 = 1065353216;
    dword_9F801C = 0;
    dword_9F8020 = 0;
    dword_9F8024 = 0;
    dword_9F8028 = 0;
    dword_9F802C = 1056964608;
    dword_9F8030 = -1090519040;
    dword_9F8034 = 1056964608;
    dword_9F8038 = 1065353216;
    dword_9F803C = 0;
    dword_9F8040 = 0;
    dword_9F8044 = 0;
    dword_9F8048 = 1065353216;
    dword_9F804C = 1056964608;
    dword_9F8050 = -1090519040;
    dword_9F8054 = 1056964608;
    dword_9F8058 = 0;
    dword_9F805C = 0;
    dword_9F8060 = 1065353216;
    dword_9F8064 = 1065353216;
    dword_9F8068 = 1065353216;
    dword_9F806C = 1056964608;
    dword_9F8070 = 1056964608;
    dword_9F8074 = 1056964608;
    dword_9F8078 = 0;
    dword_9F807C = 0;
    dword_9F8080 = 1065353216;
    dword_9F8084 = 1065353216;
    dword_9F8088 = 0;
    dword_9F808C = -1090519040;
    dword_9F8090 = 1056964608;
    dword_9F8094 = 1056964608;
    dword_9F8098 = 0;
    dword_9F809C = 0;
    dword_9F80A0 = 1065353216;
    dword_9F80A4 = 0;
    dword_9F80A8 = 0;
    dword_9F80AC = -1090519040;
    dword_9F80B0 = -1090519040;
    dword_9F80B4 = 1056964608;
    dword_9F80B8 = 0;
    dword_9F80BC = 0;
    dword_9F80C0 = 1065353216;
    dword_9F80C4 = 0;
    dword_9F80C8 = 1065353216;
    dword_9F80CC = -1090519040;
    dword_9F80D0 = -1090519040;
    dword_9F80D4 = 1056964608;
    dword_9F80D8 = -1082130432;
    dword_9F80DC = 0;
    dword_9F80E0 = 0;
    dword_9F80E4 = 1065353216;
    dword_9F80E8 = 1065353216;
    dword_9F80EC = -1090519040;
    dword_9F80F0 = 1056964608;
    dword_9F80F4 = 1056964608;
    dword_9F80F8 = -1082130432;
    dword_9F80FC = 0;
    dword_9F8100 = 0;
    dword_9F8104 = 1065353216;
    dword_9F8108 = 0;
    dword_9F810C = -1090519040;
    dword_9F8110 = 1056964608;
    dword_9F8114 = -1090519040;
    dword_9F8118 = -1082130432;
    dword_9F811C = 0;
    dword_9F8120 = 0;
    dword_9F8124 = 0;
    dword_9F8128 = 0;
    dword_9F812C = -1090519040;
    dword_9F8130 = -1090519040;
    dword_9F8134 = -1090519040;
    dword_9F8138 = -1082130432;
    dword_9F813C = 0;
    dword_9F8140 = 0;
    dword_9F8144 = 0;
    dword_9F8148 = 1065353216;
    dword_9F814C = 1056964608;
    dword_9F8150 = 1056964608;
    dword_9F8154 = 1056964608;
    dword_9F8158 = 0;
    dword_9F815C = 1065353216;
    dword_9F8160 = 0;
    dword_9F8164 = 1065353216;
    dword_9F8168 = 1065353216;
    dword_9F816C = 1056964608;
    dword_9F8170 = 1056964608;
    dword_9F8174 = -1090519040;
    dword_9F8178 = 0;
    dword_9F817C = 1065353216;
    dword_9F8180 = 0;
    dword_9F8184 = 1065353216;
    dword_9F8188 = 0;
    dword_9F818C = -1090519040;
    dword_9F8190 = 1056964608;
    dword_9F8194 = -1090519040;
    dword_9F8198 = 0;
    dword_9F819C = 1065353216;
    dword_9F81A0 = 0;
    dword_9F81A4 = 0;
    dword_9F81A8 = 0;
    dword_9F81AC = -1090519040;
    dword_9F81B0 = 1056964608;
    dword_9F81B4 = 1056964608;
    dword_9F81B8 = 0;
    dword_9F81BC = 1065353216;
    dword_9F81C0 = 0;
    dword_9F81C4 = 0;
    dword_9F81C8 = 1065353216;
    dword_9F81CC = -1090519040;
    dword_9F81D0 = -1090519040;
    dword_9F81D4 = -1090519040;
    dword_9F81D8 = 0;
    dword_9F81DC = -1082130432;
    dword_9F81E0 = 0;
    dword_9F81E4 = 1065353216;
    dword_9F81E8 = 1065353216;
    dword_9F81EC = 1056964608;
    dword_9F81F0 = -1090519040;
    dword_9F8248 = 1065353216;
    dword_9F8230 = -1090519040;
    dword_9F8234 = 1056964608;
    dword_9F823C = -1082130432;
    dword_9F8244 = 0;
    dword_9F81F4 = -1090519040;
    dword_9F81F8 = 0;
    dword_9F81FC = -1082130432;
    dword_9F8200 = 0;
    dword_9F8204 = 1065353216;
    dword_9F8208 = 0;
    dword_9F820C = 1056964608;
    dword_9F8210 = -1090519040;
    dword_9F8214 = 1056964608;
    dword_9F8218 = 0;
    dword_9F821C = -1082130432;
    dword_9F8220 = 0;
    dword_9F8224 = 0;
    dword_9F8228 = 0;
    dword_9F822C = -1090519040;
    dword_9F8238 = 0;
    dword_9F8240 = 0;
    _cxa_guard_release(&`guard variable for'glitch::scene::createCubeMesh(unsigned int,glitch::video::IVideoDriver *,float)::cubeData);
  }
  v9 = 0;
  v40 = nullptr;
  v41 = 0;
  v38 = nullptr;
  v39 = 0;
  v36 = nullptr;
  v37 = 0;
  v34 = nullptr;
  v35 = 0;
  glitch::scene::`anonymous namespace'::mapMeshBuffer((int *)v44, &v40, &v38, &v36, &v34, 4);
  v10 = &glitch::scene::createCubeMesh(unsigned int,glitch::video::IVideoDriver *,float)::cubeData;
  for ( i = *(unsigned __int16 *)&byte_9[(_DWORD)v40 + 5]; ; i = *(unsigned __int16 *)&byte_9[(_DWORD)v40 + 5] )
  {
    v12 = a4 * *((float *)v10 + 1);
    v13 = a4 * *((float *)v10 + 2);
    v14 = (float *)(v41 + v9 * i);
    *v14 = a4 * *(float *)v10;
    v14[2] = v13;
    v14[1] = v12;
    v15 = v39;
    if ( v39 )
    {
      v16 = *(unsigned __int16 *)&byte_9[(_DWORD)v38 + 5] * v9;
      *(_DWORD *)(v39 + v16) = v10[6];
      *(_DWORD *)(v15 + v16 + 4) = v10[7];
    }
    v17 = v37;
    if ( v37 )
    {
      v18 = *(unsigned __int16 *)&byte_9[(_DWORD)v36 + 5] * v9;
      *(_DWORD *)(v37 + v18) = v10[3];
      v19 = v17 + v18;
      *(_DWORD *)(v19 + 4) = v10[4];
      *(_DWORD *)(v19 + 8) = v10[5];
    }
    v20 = v35;
    v10 += 8;
    if ( v35 )
    {
      v21 = *(unsigned __int16 *)&byte_9[(_DWORD)v34 + 5] * v9;
      v22 = (_BYTE *)(v35 + v21);
      v22[3] = -1;
      v22[1] = -1;
      v22[2] = -1;
      *(_BYTE *)(v20 + v21) = -1;
    }
    if ( ++v9 == 24 )
      break;
  }
  if ( v35 )
  {
    v23 = (_BYTE *)*v34;
    v24 = *(_BYTE *)(*v34 + 19);
    if ( (v24 & 0x1Fu) <= 1 )
    {
      if ( (v23[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v23 + 24))(*v34);
      v23[19] = 0;
    }
    else
    {
      v23[19] = ((v24 & 0x1F) - 1) | v24 & 0xE0;
    }
    v35 = 0;
    v34 = nullptr;
  }
  if ( v37 )
  {
    v25 = (_BYTE *)*v36;
    v26 = *(_BYTE *)(*v36 + 19);
    if ( (v26 & 0x1Fu) <= 1 )
    {
      if ( (v25[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v25 + 24))(*v36);
      v25[19] = 0;
    }
    else
    {
      v25[19] = ((v26 & 0x1F) - 1) | v26 & 0xE0;
    }
    v37 = 0;
    v36 = nullptr;
  }
  if ( v39 )
  {
    v27 = (_BYTE *)*v38;
    v28 = *(_BYTE *)(*v38 + 19);
    if ( (v28 & 0x1Fu) <= 1 )
    {
      if ( (v27[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v27 + 24))(*v38);
      v27[19] = 0;
    }
    else
    {
      v27[19] = ((v28 & 0x1F) - 1) | v28 & 0xE0;
    }
    v39 = 0;
    v38 = nullptr;
  }
  if ( v41 )
  {
    v29 = (_BYTE *)*v40;
    v30 = *(_BYTE *)(*v40 + 19);
    if ( (v30 & 0x1Fu) <= 1 )
    {
      if ( (v29[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v29 + 24))(*v40);
      v29[19] = 0;
    }
    else
    {
      v29[19] = ((v30 & 0x1F) - 1) | v30 & 0xE0;
    }
    v41 = 0;
    v40 = nullptr;
  }
  v31 = (glitch::IReferenceCounted *)operator new(0x2Cu, 0);
  glitch::scene::CMesh::CMesh(v31);
  if ( v31 )
    ++*((_DWORD *)v31 + 1);
  v42 = nullptr;
  v43 = nullptr;
  glitch::scene::CMesh::addMeshBuffer((int)v31, v44, &v43, &v42);
  boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v42);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v43);
  glitch::scene::CMesh::recalculateBoundingBox((int)v31);
  *(_DWORD *)this = v31;
  if ( v31 )
  {
    ++*((_DWORD *)v31 + 1);
    glitch::IReferenceCounted::drop(v31);
  }
  if ( v44[0] )
    glitch::IReferenceCounted::drop(v44[0]);
  return this;
}


// ===== 6d945c glitch::scene::createCylinderMesh(uint,glitch::video::IVideoDriver *,float,float,uint,glitch::video::SColor const&,bool,float) =====
glitch::IReferenceCounted **__fastcall glitch::scene::createCylinderMesh(
        glitch::IReferenceCounted **a1,
        unsigned int a2,
        glitch::video::IVideoDriver *a3,
        float a4,
        int a5,
        int a6,
        void *a7,
        char a8,
        float a9)
{
  int v9; // r3
  int v10; // r4
  int v11; // r1
  int v12; // r4
  int v13; // r3
  float v14; // r6
  int v15; // r9
  float v16; // r10
  float v17; // r8
  float v18; // r7
  int v19; // r3
  int v20; // r3
  int v21; // r2
  int v22; // r2
  int v23; // r3
  int v24; // r3
  float v25; // r0
  int v26; // r8
  float v27; // r3
  int v28; // r2
  int v29; // r0
  int v30; // r2
  int v31; // r3
  int v32; // r3
  float v33; // r7
  float v34; // r10
  int v35; // r8
  float v36; // r7
  int v37; // r3
  int v38; // r3
  int v39; // r2
  int v40; // r3
  int v41; // r3
  int v42; // r8
  int v43; // r3
  int v44; // r3
  int v45; // r2
  int v46; // r3
  int v47; // r3
  _DWORD *v49; // r0
  int v50; // r2
  int v51; // r0
  _DWORD *v52; // r1
  int v53; // r0
  int v54; // r1
  int v55; // r2
  int v56; // r2
  int v57; // r1
  _DWORD *v58; // r2
  glitch::IReferenceCounted *v59; // r6
  int v60; // r0
  int v61; // r3
  int v62; // r4
  int v63; // lr
  __int16 v64; // r1
  int v65; // r11
  int v66; // r0
  _WORD *v67; // r2
  int v68; // r11
  int v69; // r9
  int v70; // r8
  int v71; // r2
  int v72; // lr
  __int16 v73; // r7
  int v74; // r1
  int v75; // r10
  __int16 v76; // r0
  int v77; // r12
  int v78; // r11
  int v79; // r9
  int v80; // r8
  int v81; // lr
  int v82; // r1
  int v83; // r5
  __int16 v84; // r7
  int v85; // r5
  int v86; // lr
  int v87; // r12
  int v88; // r0
  int v89; // r1
  int v90; // r1
  __int16 v91; // r3
  int v92; // r5
  int v93; // lr
  int v94; // r12
  __int16 v95; // r2
  int v96; // r0
  glitch::IReferenceCounted *v97; // r5
  _BYTE *v98; // r4
  char v99; // r3
  _BYTE *v100; // r4
  char v101; // r3
  _BYTE *v102; // r4
  char v103; // r3
  _BYTE *v104; // r4
  char v105; // r3
  _BYTE *v106; // r4
  char v107; // r3
  unsigned int v109; // [sp+8h] [bp-6Ch]
  int v110; // [sp+8h] [bp-6Ch]
  int v112; // [sp+Ch] [bp-68h]
  int v113; // [sp+10h] [bp-64h]
  float v114; // [sp+14h] [bp-60h]
  float v115; // [sp+18h] [bp-5Ch]
  float v116; // [sp+1Ch] [bp-58h]
  int v117; // [sp+24h] [bp-50h]
  int v118; // [sp+30h] [bp-44h]
  float v120; // [sp+38h] [bp-3Ch] BYREF
  int v121; // [sp+3Ch] [bp-38h]
  float v122; // [sp+40h] [bp-34h]
  int *v123; // [sp+44h] [bp-30h] BYREF
  int v124; // [sp+48h] [bp-2Ch]
  int *v125; // [sp+4Ch] [bp-28h] BYREF
  int v126; // [sp+50h] [bp-24h]
  int *v127; // [sp+54h] [bp-20h] BYREF
  int v128; // [sp+58h] [bp-1Ch]
  int *v129; // [sp+5Ch] [bp-18h] BYREF
  int v130; // [sp+60h] [bp-14h]
  glitch::video::CMaterialVertexAttributeMap *v131; // [sp+64h] [bp-10h] BYREF
  glitch::video::CMaterial *v132; // [sp+68h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v133[2]; // [sp+6Ch] [bp-8h] BYREF

  v117 = 4 * a6;
  if ( a8 )
  {
    v118 = 4 * a6 + 2;
    v9 = 12;
  }
  else
  {
    v9 = 9;
    v118 = v117 + 1;
  }
  v10 = 0;
  glitch::scene::`anonymous namespace'::createMeshBuffer(
    (glitch::scene::_anonymous_namespace_ *)v133,
    a2,
    a3,
    v118,
    v9 * 2 * a6);
  v129 = nullptr;
  v130 = 0;
  v127 = nullptr;
  v128 = 0;
  v125 = nullptr;
  v126 = 0;
  v123 = nullptr;
  v124 = 0;
  glitch::scene::`anonymous namespace'::mapMeshBuffer((int *)v133, &v129, &v127, &v125, &v123, 5);
  v115 = 1.0 / (float)(unsigned int)a6;
  v114 = v115 * 0.5;
  v116 = (float)(v115 * 6.2832) * 0.5;
  if ( a6 )
  {
    v14 = 0.0;
    v15 = *(unsigned __int16 *)&byte_9[(_DWORD)v129 + 5];
    v109 = 0;
    while ( 1 )
    {
      v16 = (float)v109 * (float)(v115 * 6.2832);
      v17 = cosf(v16) * a4;
      v18 = sinf(v16) * a4;
      v19 = v130 + v10 * v15;
      *(float *)v19 = v17;
      *(float *)(v19 + 8) = v18;
      *(_DWORD *)(v19 + 4) = 0;
      v20 = v128;
      if ( v128 )
      {
        v21 = *(unsigned __int16 *)&byte_9[(_DWORD)v127 + 5] * v10;
        *(float *)(v128 + v21) = v14;
        *(_DWORD *)(v20 + v21 + 4) = 0;
      }
      if ( v126 )
      {
        v120 = v17;
        v121 = 0;
        v122 = v18;
        glitch::core::vector3d<float>::normalize(&v120);
        v22 = v126;
        v23 = *(unsigned __int16 *)&byte_9[(_DWORD)v125 + 5] * v10;
        *(float *)(v126 + v23) = v120;
        v24 = v22 + v23;
        *(_DWORD *)(v24 + 4) = v121;
        *(float *)(v24 + 8) = v122;
      }
      if ( v124 )
        memcpy((void *)(v124 + *(unsigned __int16 *)&byte_9[(_DWORD)v123 + 5] * v10), a7, 4u);
      v25 = v17 + a9;
      v26 = v10 + 1;
      v27 = v25;
      v28 = v130 + *(unsigned __int16 *)&byte_9[(_DWORD)v129 + 5] * (v10 + 1);
      *(float *)v28 = v25;
      *(float *)(v28 + 8) = v18;
      *(_DWORD *)(v28 + 4) = a5;
      if ( v128 )
      {
        v29 = v128 + *(unsigned __int16 *)&byte_9[(_DWORD)v127 + 5] * v26;
        *(float *)v29 = v14;
        *(_DWORD *)(v29 + 4) = 1065353216;
      }
      if ( v126 )
      {
        v120 = v27;
        v121 = a5;
        v122 = v18;
        glitch::core::vector3d<float>::normalize(&v120);
        v30 = v126;
        v31 = *(unsigned __int16 *)&byte_9[(_DWORD)v125 + 5] * v26;
        *(float *)(v126 + v31) = v120;
        v32 = v30 + v31;
        *(_DWORD *)(v32 + 4) = v121;
        *(float *)(v32 + 8) = v122;
      }
      if ( v124 )
        memcpy((void *)(v124 + *(unsigned __int16 *)&byte_9[(_DWORD)v123 + 5] * v26), a7, 4u);
      v33 = v16 + v116;
      v34 = cosf(v16 + v116) * a4;
      v35 = v10 + 2;
      v36 = sinf(v33) * a4;
      v37 = v130 + *(unsigned __int16 *)&byte_9[(_DWORD)v129 + 5] * (v10 + 2);
      *(float *)v37 = v34;
      *(float *)(v37 + 8) = v36;
      *(_DWORD *)(v37 + 4) = 0;
      if ( v128 )
      {
        v38 = v128 + *(unsigned __int16 *)&byte_9[(_DWORD)v127 + 5] * v35;
        *(float *)v38 = v14 + v114;
        *(_DWORD *)(v38 + 4) = 0;
      }
      if ( v126 )
      {
        v120 = v34;
        v121 = 0;
        v122 = v36;
        glitch::core::vector3d<float>::normalize(&v120);
        v39 = v126;
        v40 = *(unsigned __int16 *)&byte_9[(_DWORD)v125 + 5] * v35;
        *(float *)(v126 + v40) = v120;
        v41 = v39 + v40;
        *(_DWORD *)(v41 + 4) = v121;
        *(float *)(v41 + 8) = v122;
      }
      if ( v124 )
        memcpy((void *)(v124 + *(unsigned __int16 *)&byte_9[(_DWORD)v123 + 5] * v35), a7, 4u);
      v42 = v10 + 3;
      v43 = v130 + (v10 + 3) * *(unsigned __int16 *)&byte_9[(_DWORD)v129 + 5];
      *(float *)v43 = a9 + v34;
      *(float *)(v43 + 8) = v36;
      *(_DWORD *)(v43 + 4) = a5;
      if ( v128 )
      {
        v44 = v128 + v42 * *(unsigned __int16 *)&byte_9[(_DWORD)v127 + 5];
        *(float *)v44 = v14 + v114;
        *(_DWORD *)(v44 + 4) = 1065353216;
      }
      if ( v126 )
      {
        v120 = a9 + v34;
        v121 = a5;
        v122 = v36;
        glitch::core::vector3d<float>::normalize(&v120);
        v45 = v126;
        v46 = v42 * *(unsigned __int16 *)&byte_9[(_DWORD)v125 + 5];
        *(float *)(v126 + v46) = v120;
        v47 = v45 + v46;
        *(_DWORD *)(v47 + 4) = v121;
        *(float *)(v47 + 8) = v122;
      }
      if ( v124 )
        memcpy((void *)(v124 + v42 * *(unsigned __int16 *)&byte_9[(_DWORD)v123 + 5]), a7, 4u);
      v10 += 4;
      if ( a6 == ++v109 )
        break;
      v14 = v14 + v115;
      v15 = *(unsigned __int16 *)&byte_9[(_DWORD)v129 + 5];
    }
    v12 = v117 + 1;
    v13 = 4 * a6;
    v11 = *(unsigned __int16 *)&byte_9[(_DWORD)v129 + 5] * v117;
  }
  else
  {
    v11 = 0;
    v12 = 1;
    v13 = 0;
  }
  v49 = (_DWORD *)(v130 + v11);
  *v49 = 0;
  v49[2] = 0;
  v49[1] = 0;
  v50 = v128;
  if ( v128 )
  {
    v51 = *(unsigned __int16 *)&byte_9[(_DWORD)v127 + 5] * v13;
    *(_DWORD *)(v128 + v51) = 1065353216;
    *(_DWORD *)(v50 + v51 + 4) = 1065353216;
  }
  if ( v126 )
  {
    v52 = (_DWORD *)(v126 + *(unsigned __int16 *)&byte_9[(_DWORD)v125 + 5] * v13);
    *v52 = 0;
    v52[2] = 0;
    v52[1] = -1082130432;
  }
  if ( v124 )
    memcpy((void *)(v124 + *(unsigned __int16 *)&byte_9[(_DWORD)v123 + 5] * v13), a7, 4u);
  if ( a8 )
  {
    v53 = v130;
    v54 = *(unsigned __int16 *)&byte_9[(_DWORD)v129 + 5] * v12;
    *(float *)(v130 + v54) = a9;
    v55 = v53 + v54;
    *(_DWORD *)(v55 + 8) = 0;
    *(_DWORD *)(v55 + 4) = a5;
    v56 = v128;
    if ( v128 )
    {
      v57 = *(unsigned __int16 *)&byte_9[(_DWORD)v127 + 5] * v12;
      *(_DWORD *)(v128 + v57) = 0;
      *(_DWORD *)(v56 + v57 + 4) = 0;
    }
    if ( v126 )
    {
      v58 = (_DWORD *)(v126 + *(unsigned __int16 *)&byte_9[(_DWORD)v125 + 5] * v12);
      *v58 = 0;
      v58[2] = 0;
      v58[1] = 1065353216;
    }
    if ( v124 )
      memcpy((void *)(v124 + *(unsigned __int16 *)&byte_9[(_DWORD)v123 + 5] * v12), a7, 4u);
  }
  v59 = v133[0];
  v60 = glitch::video::IBuffer::map(*((_DWORD *)v133[0] + 6), 5);
  v61 = v117 - 2;
  v62 = v60 + *((_DWORD *)v59 + 7);
  if ( v117 == 2 )
  {
    v80 = 6;
    v110 = 10;
    v112 = 8;
    v77 = 16;
    v81 = 14;
    v83 = 12;
    v82 = 9;
    v113 = 4;
    v79 = 2;
    v78 = 0;
    v71 = 6;
    v76 = 1;
    v73 = 0;
  }
  else
  {
    v63 = 0;
    v64 = 1;
    v65 = 2;
    v66 = 0;
    do
    {
      *(_WORD *)(v62 + v63) = v65;
      v67 = (_WORD *)(v62 + v63);
      v67[1] = v66;
      v66 += 2;
      v67[2] = v64;
      v67[4] = v64;
      v64 += 2;
      v67[3] = v65;
      v67[5] = v64;
      v65 += 2;
      v63 += 12;
    }
    while ( v61 != v66 );
    v68 = 3 * (v65 - 2);
    v69 = v68 + 1;
    v70 = v68 + 3;
    v71 = v68 + 6;
    v72 = v68 + 7;
    v73 = v117 - 2;
    v74 = v68 + 8;
    v75 = 2 * (v68 + 2);
    v112 = 2 * (v68 + 4);
    v110 = 2 * (v68 + 5);
    v76 = v117 - 1;
    v77 = 2 * (v68 + 8);
    v78 = 2 * v68;
    v79 = 2 * v69;
    v113 = v75;
    v80 = 2 * v70;
    v81 = 2 * v72;
    v82 = v74 + 1;
    v83 = 2 * v71;
  }
  *(_WORD *)(v62 + v78) = 0;
  *(_WORD *)(v62 + v79) = v73;
  if ( v117 == 2 )
    v71 = 0;
  *(_WORD *)(v62 + v113) = v76;
  *(_WORD *)(v62 + v80) = 0;
  *(_WORD *)(v62 + v112) = v76;
  *(_WORD *)(v62 + v110) = 1;
  v84 = v118 - 1;
  if ( v117 != 2 )
  {
    v85 = 2 * (v71 + 1);
    v86 = 2 * (v71 + 2);
    v87 = 2 * v71;
    v88 = 2;
    v89 = 0;
    do
    {
      *(_WORD *)(v62 + v87) = v84;
      *(_WORD *)(v62 + v85) = v89;
      v89 += 2;
      *(_WORD *)(v62 + v86) = v88;
      v71 += 3;
      v88 += 2;
      v87 += 6;
      v85 += 6;
      v86 += 6;
    }
    while ( v61 != v89 );
    v90 = v71 + 2;
    v83 = 2 * v71;
    v77 = 2 * (v71 + 2);
    v81 = 2 * (v71 + 1);
    LOWORD(v71) = v117 - 2;
    v82 = v90 + 1;
  }
  *(_WORD *)(v62 + v83) = v84;
  *(_WORD *)(v62 + v81) = v71;
  *(_WORD *)(v62 + v77) = 0;
  if ( a8 )
  {
    if ( v117 == 2 )
    {
      v91 = 1;
    }
    else
    {
      v92 = 2 * (v82 + 1);
      v93 = 2 * (v82 + 2);
      v94 = 2 * v82;
      v95 = 1;
      v96 = 0;
      do
      {
        v96 += 2;
        *(_WORD *)(v62 + v94) = v95;
        v95 += 2;
        *(_WORD *)(v62 + v92) = v84;
        v82 += 3;
        *(_WORD *)(v62 + v93) = v95;
        v94 += 6;
        v92 += 6;
        v93 += 6;
      }
      while ( v61 != v96 );
      v91 = v117 - 1;
    }
    *(_WORD *)(v62 + 2 * v82) = v91;
    *(_WORD *)(v62 + 2 * (v82 + 1)) = v84;
    *(_WORD *)(v62 + 2 * (v82 + 1) + 2) = 1;
  }
  v97 = (glitch::IReferenceCounted *)operator new(0x2Cu, 0);
  glitch::scene::CMesh::CMesh(v97);
  if ( v97 )
    ++*((_DWORD *)v97 + 1);
  v131 = nullptr;
  v132 = nullptr;
  glitch::scene::CMesh::addMeshBuffer((int)v97, v133, &v132, &v131);
  boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v131);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v132);
  glitch::scene::CMesh::recalculateBoundingBox((int)v97);
  *a1 = v97;
  if ( v97 )
  {
    ++*((_DWORD *)v97 + 1);
    glitch::IReferenceCounted::drop(v97);
  }
  if ( v62 )
  {
    v98 = *((_BYTE **)v59 + 6);
    v99 = v98[19];
    if ( (v99 & 0x1Fu) <= 1 )
    {
      if ( (v98[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v98 + 24))(*((_DWORD *)v59 + 6));
      v98[19] = 0;
    }
    else
    {
      v98[19] = ((v99 & 0x1F) - 1) | v99 & 0xE0;
    }
  }
  if ( v124 )
  {
    v100 = (_BYTE *)*v123;
    v101 = *(_BYTE *)(*v123 + 19);
    if ( (v101 & 0x1Fu) <= 1 )
    {
      if ( (v100[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v100 + 24))(*v123);
      v100[19] = 0;
    }
    else
    {
      v100[19] = ((v101 & 0x1F) - 1) | v101 & 0xE0;
    }
    v124 = 0;
    v123 = nullptr;
  }
  if ( v126 )
  {
    v102 = (_BYTE *)*v125;
    v103 = *(_BYTE *)(*v125 + 19);
    if ( (v103 & 0x1Fu) <= 1 )
    {
      if ( (v102[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v102 + 24))(*v125);
      v102[19] = 0;
    }
    else
    {
      v102[19] = ((v103 & 0x1F) - 1) | v103 & 0xE0;
    }
    v126 = 0;
    v125 = nullptr;
  }
  if ( v128 )
  {
    v104 = (_BYTE *)*v127;
    v105 = *(_BYTE *)(*v127 + 19);
    if ( (v105 & 0x1Fu) <= 1 )
    {
      if ( (v104[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v104 + 24))(*v127);
      v104[19] = 0;
    }
    else
    {
      v104[19] = ((v105 & 0x1F) - 1) | v105 & 0xE0;
    }
    v128 = 0;
    v127 = nullptr;
  }
  if ( v130 )
  {
    v106 = (_BYTE *)*v129;
    v107 = *(_BYTE *)(*v129 + 19);
    if ( (v107 & 0x1Fu) <= 1 )
    {
      if ( (v106[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v106 + 24))(*v129);
      v106[19] = 0;
    }
    else
    {
      v106[19] = ((v107 & 0x1F) - 1) | v107 & 0xE0;
    }
    v130 = 0;
    v129 = nullptr;
  }
  if ( v133[0] )
    glitch::IReferenceCounted::drop(v133[0]);
  return a1;
}


// ===== 6d9fc4 glitch::scene::createConeMesh(uint,glitch::video::IVideoDriver *,float,float,uint,glitch::video::SColor const&,glitch::video::SColor const&,float) =====
glitch::IReferenceCounted **__fastcall glitch::scene::createConeMesh(
        glitch::IReferenceCounted **a1,
        unsigned int a2,
        glitch::video::IVideoDriver *a3,
        float a4,
        int a5,
        int a6,
        void *a7,
        void *a8,
        int a9)
{
  int v10; // r5
  int v11; // r11
  unsigned int v12; // r6
  float v13; // r10
  float v14; // r9
  float v15; // r2
  int v16; // r3
  int v17; // r8
  int v18; // r2
  int v19; // r3
  int v20; // r3
  float v21; // r9
  float v22; // r10
  float v23; // r12
  int v24; // r3
  int v25; // r2
  int v26; // r3
  int v27; // r3
  int v28; // r6
  int v29; // r0
  int v30; // r4
  int v31; // r2
  _DWORD *v32; // r1
  _DWORD *v33; // r1
  _DWORD *v34; // r2
  _DWORD *v35; // r1
  glitch::IReferenceCounted *v36; // r7
  int v37; // r4
  __int16 v38; // r3
  int v39; // r1
  int v40; // r2
  int v41; // r0
  int v42; // r12
  int v43; // r2
  int v44; // r10
  int v45; // r8
  int v46; // lr
  int v47; // r1
  __int16 v48; // r9
  int v49; // r12
  int v50; // r0
  __int16 v51; // lr
  int v52; // r8
  int v53; // r12
  int v54; // r0
  int v55; // r3
  int v56; // r1
  int v57; // r2
  glitch::IReferenceCounted *v58; // r5
  _BYTE *v59; // r4
  char v60; // r3
  _BYTE *v61; // r4
  char v62; // r3
  _BYTE *v63; // r4
  char v64; // r3
  _BYTE *v65; // r4
  char v66; // r3
  float v68; // [sp+10h] [bp-44h]
  float v70; // [sp+20h] [bp-34h] BYREF
  int v71; // [sp+24h] [bp-30h]
  float v72; // [sp+28h] [bp-2Ch]
  int *v73; // [sp+2Ch] [bp-28h] BYREF
  int v74; // [sp+30h] [bp-24h]
  int *v75; // [sp+34h] [bp-20h] BYREF
  int v76; // [sp+38h] [bp-1Ch]
  int *v77; // [sp+3Ch] [bp-18h] BYREF
  int v78; // [sp+40h] [bp-14h]
  glitch::video::CMaterialVertexAttributeMap *v79; // [sp+44h] [bp-10h] BYREF
  glitch::video::CMaterial *v80; // [sp+48h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v81[2]; // [sp+4Ch] [bp-8h] BYREF

  glitch::scene::`anonymous namespace'::createMeshBuffer(
    (glitch::scene::_anonymous_namespace_ *)v81,
    a2,
    a3,
    2 * (a6 + 1),
    12 * a6);
  v10 = 0;
  v68 = (float)(6.2832 / (float)(unsigned int)a6) * 0.5;
  v77 = nullptr;
  v78 = 0;
  v75 = nullptr;
  v76 = 0;
  v73 = nullptr;
  v74 = 0;
  glitch::scene::`anonymous namespace'::mapMeshBuffer((int *)v81, &v77, nullptr, &v75, &v73, 5);
  if ( a6 )
  {
    v11 = *(unsigned __int16 *)&byte_9[(_DWORD)v77 + 5];
    v12 = 0;
    while ( 1 )
    {
      v13 = (float)v12 * (float)(6.2832 / (float)(unsigned int)a6);
      v14 = cosf(v13) * a4;
      v15 = sinf(v13) * a4;
      v16 = v78 + v10 * v11;
      *(float *)v16 = v14;
      *(float *)(v16 + 8) = v15;
      *(_DWORD *)(v16 + 4) = 0;
      v17 = v10 + 1;
      ++v12;
      if ( v76 )
      {
        v72 = v15;
        v70 = v14;
        v71 = 0;
        glitch::core::vector3d<float>::normalize(&v70);
        v18 = v76;
        v19 = *(unsigned __int16 *)&byte_9[(_DWORD)v75 + 5] * v10;
        *(float *)(v76 + v19) = v70;
        v20 = v18 + v19;
        *(_DWORD *)(v20 + 4) = v71;
        *(float *)(v20 + 8) = v72;
      }
      if ( v74 )
        memcpy((void *)(v74 + *(unsigned __int16 *)&byte_9[(_DWORD)v73 + 5] * v10), a7, 4u);
      v21 = v13 + v68;
      v22 = cosf(v13 + v68) * a4;
      v23 = sinf(v21) * a4;
      v10 += 2;
      v24 = v78 + v17 * *(unsigned __int16 *)&byte_9[(_DWORD)v77 + 5];
      *(float *)v24 = v22;
      *(float *)(v24 + 8) = v23;
      *(_DWORD *)(v24 + 4) = 0;
      if ( v76 )
      {
        v70 = v22;
        v72 = v23;
        v71 = 0;
        glitch::core::vector3d<float>::normalize(&v70);
        v25 = v76;
        v26 = v17 * *(unsigned __int16 *)&byte_9[(_DWORD)v75 + 5];
        *(float *)(v76 + v26) = v70;
        v27 = v25 + v26;
        *(_DWORD *)(v27 + 4) = v71;
        *(float *)(v27 + 8) = v72;
      }
      if ( v74 )
        memcpy((void *)(v74 + v17 * *(unsigned __int16 *)&byte_9[(_DWORD)v73 + 5]), a7, 4u);
      if ( v12 == a6 )
        break;
      v11 = *(unsigned __int16 *)&byte_9[(_DWORD)v77 + 5];
    }
    v28 = 2 * v12;
    v29 = v28;
    v30 = v28 + 1;
    v31 = *(unsigned __int16 *)&byte_9[(_DWORD)v77 + 5] * v28;
  }
  else
  {
    v31 = 0;
    v30 = 1;
    v29 = 0;
    v28 = 0;
  }
  v32 = (_DWORD *)(v78 + v31);
  *v32 = a9;
  v32[2] = 0;
  v32[1] = a5;
  if ( v76 )
  {
    v33 = (_DWORD *)(v76 + *(unsigned __int16 *)&byte_9[(_DWORD)v75 + 5] * v29);
    *v33 = 0;
    v33[2] = 0;
    v33[1] = 1065353216;
  }
  if ( v74 )
    memcpy((void *)(v74 + *(unsigned __int16 *)&byte_9[(_DWORD)v73 + 5] * v29), a7, 4u);
  v34 = (_DWORD *)(v78 + *(unsigned __int16 *)&byte_9[(_DWORD)v77 + 5] * v30);
  *v34 = 0;
  v34[2] = 0;
  v34[1] = 0;
  if ( v76 )
  {
    v35 = (_DWORD *)(v76 + *(unsigned __int16 *)&byte_9[(_DWORD)v75 + 5] * v30);
    *v35 = 0;
    v35[2] = 0;
    v35[1] = -1082130432;
  }
  if ( v74 )
    memcpy((void *)(v74 + *(unsigned __int16 *)&byte_9[(_DWORD)v73 + 5] * v30), a8, 4u);
  v36 = v81[0];
  v37 = glitch::video::IBuffer::map(*((_DWORD *)v81[0] + 6), 5) + *((_DWORD *)v36 + 7);
  if ( v28 == 1 )
  {
    v38 = 1;
    v47 = 10;
    v50 = 8;
    v49 = 6;
    v46 = 4;
    v45 = 2;
    v44 = 0;
    v43 = 3;
    v48 = 0;
  }
  else
  {
    v38 = v28;
    v39 = 2;
    v40 = 1;
    v41 = 0;
    do
    {
      v42 = v37 + v39;
      *(_WORD *)(v42 - 2) = v41;
      *(_WORD *)(v37 + v39) = v28;
      *(_WORD *)(v42 + 2) = v40++;
      ++v41;
      v39 += 6;
    }
    while ( v40 != v28 );
    v43 = 3 * v28;
    v44 = 2 * (3 * v28 - 3);
    v45 = 2 * (3 * v28 - 2);
    v46 = 2 * (3 * v28 - 1);
    v47 = 2 * (3 * v28 + 2);
    v48 = v28 - 1;
    v49 = 6 * v28;
    v50 = 2 * (3 * v28 + 1);
  }
  *(_WORD *)(v37 + v44) = v48;
  *(_WORD *)(v37 + v45) = v38;
  *(_WORD *)(v37 + v46) = 0;
  v51 = v28 + 1;
  if ( v28 != 1 )
  {
    v52 = 2 * (v43 + 1);
    v53 = 2 * (v43 + 2);
    v54 = 2 * v43;
    v55 = 1;
    v56 = 0;
    do
    {
      *(_WORD *)(v37 + v54) = v51;
      *(_WORD *)(v37 + v52) = v56;
      *(_WORD *)(v37 + v53) = v55++;
      ++v56;
      v54 += 6;
      v52 += 6;
      v53 += 6;
    }
    while ( v55 != v28 );
    v57 = 3 * v55 - 3 + v43;
    v49 = 2 * v57;
    v47 = 2 * (v57 + 2);
    v50 = 2 * (v57 + 1);
  }
  *(_WORD *)(v37 + v49) = v51;
  *(_WORD *)(v37 + v50) = v28 - 1;
  *(_WORD *)(v37 + v47) = 0;
  v58 = (glitch::IReferenceCounted *)operator new(0x2Cu, 0);
  glitch::scene::CMesh::CMesh(v58);
  if ( v58 )
    ++*((_DWORD *)v58 + 1);
  v79 = nullptr;
  v80 = nullptr;
  glitch::scene::CMesh::addMeshBuffer((int)v58, v81, &v80, &v79);
  boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v79);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v80);
  glitch::scene::CMesh::recalculateBoundingBox((int)v58);
  *a1 = v58;
  if ( v58 )
  {
    ++*((_DWORD *)v58 + 1);
    glitch::IReferenceCounted::drop(v58);
  }
  if ( v37 )
  {
    v59 = *((_BYTE **)v36 + 6);
    v60 = v59[19];
    if ( (v60 & 0x1Fu) <= 1 )
    {
      if ( (v59[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v59 + 24))(*((_DWORD *)v36 + 6));
      v59[19] = 0;
    }
    else
    {
      v59[19] = ((v60 & 0x1F) - 1) | v60 & 0xE0;
    }
  }
  if ( v74 )
  {
    v61 = (_BYTE *)*v73;
    v62 = *(_BYTE *)(*v73 + 19);
    if ( (v62 & 0x1Fu) <= 1 )
    {
      if ( (v61[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v61 + 24))(*v73);
      v61[19] = 0;
    }
    else
    {
      v61[19] = ((v62 & 0x1F) - 1) | v62 & 0xE0;
    }
    v74 = 0;
    v73 = nullptr;
  }
  if ( v76 )
  {
    v63 = (_BYTE *)*v75;
    v64 = *(_BYTE *)(*v75 + 19);
    if ( (v64 & 0x1Fu) <= 1 )
    {
      if ( (v63[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v63 + 24))(*v75);
      v63[19] = 0;
    }
    else
    {
      v63[19] = ((v64 & 0x1F) - 1) | v64 & 0xE0;
    }
    v76 = 0;
    v75 = nullptr;
  }
  if ( v78 )
  {
    v65 = (_BYTE *)*v77;
    v66 = *(_BYTE *)(*v77 + 19);
    if ( (v66 & 0x1Fu) <= 1 )
    {
      if ( (v65[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v65 + 24))(*v77);
      v65[19] = 0;
    }
    else
    {
      v65[19] = ((v66 & 0x1F) - 1) | v66 & 0xE0;
    }
    v78 = 0;
    v77 = nullptr;
  }
  if ( v81[0] )
    glitch::IReferenceCounted::drop(v81[0]);
  return a1;
}


// ===== 6da6d8 glitch::scene::createArrowMesh(uint,glitch::video::IVideoDriver *,uint,uint,float,float,float,float,glitch::video::SColor,glitch::video::SColor) =====
glitch::IReferenceCounted **glitch::scene::createArrowMesh(
        glitch::IReferenceCounted **a1,
        unsigned int a2,
        glitch::video::IVideoDriver *a3,
        int a4,
        int a5,
        int a6,
        int a7,
        int a8,
        int a9,
        char a10,
        ...)
{
  unsigned int i; // r7
  unsigned int v13; // r10
  int v14; // r8
  int v15; // r4
  int v16; // r9
  glitch::video::CVertexStreams *v17; // r3
  unsigned int v18; // r9
  _BYTE *v19; // r4
  char v20; // r3
  glitch::IReferenceCounted *v22; // [sp+28h] [bp-24h]
  glitch::video::CVertexStreams *v24; // [sp+30h] [bp-1Ch] BYREF
  glitch::video::CMaterialVertexAttributeMap *v25; // [sp+34h] [bp-18h] BYREF
  glitch::video::CMaterial *v26; // [sp+38h] [bp-14h] BYREF
  glitch::IReferenceCounted *v27; // [sp+3Ch] [bp-10h] BYREF
  glitch::IReferenceCounted *v28; // [sp+40h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v29; // [sp+44h] [bp-8h] BYREF
  va_list va; // [sp+88h] [bp+3Ch] BYREF

  va_start(va, a10);
  glitch::scene::createCylinderMesh(&v29, a2, a3, *(float *)&a8, a7, a4, &a10, 0, 0.0);
  v22 = v29;
  if ( v29 )
  {
    ++*((_DWORD *)v29 + 1);
    if ( v29 )
      glitch::IReferenceCounted::drop(v29);
  }
  glitch::scene::createConeMesh(
    &v28,
    a2,
    a3,
    *(float *)&a9,
    COERCE_INT(*(float *)&a6 - *(float *)&a7),
    a5,
    &va,
    &a10,
    0);
  for ( i = 0; i < (*(int (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v28 + 16))(v28); ++i )
  {
    (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::IReferenceCounted *, unsigned int))(*(_DWORD *)v28 + 20))(
      &v27,
      v28,
      i);
    v13 = 0;
    v14 = *((_DWORD *)v27 + 5);
    v15 = glitch::video::IBuffer::map(*(_DWORD *)(v14 + 20), 3) + *(_DWORD *)(v14 + 24);
    while ( 1 )
    {
      v24 = *((glitch::video::CVertexStreams **)v27 + 5);
      v17 = v24;
      if ( v24 )
      {
        ++*(_DWORD *)v24;
        v17 = v24;
      }
      v18 = *((_DWORD *)v17 + 2);
      boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v24);
      if ( v13 >= v18 )
        break;
      v16 = v15 + *(unsigned __int16 *)(v14 + 34) * v13++;
      *(float *)(v16 + 4) = *(float *)(v16 + 4) + *(float *)&a7;
    }
    v26 = nullptr;
    v25 = nullptr;
    glitch::scene::CMesh::addMeshBuffer((int)v22, &v27, &v26, &v25);
    boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v25);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v26);
    if ( v15 )
    {
      v19 = *(_BYTE **)(v14 + 20);
      v20 = v19[19];
      if ( (v20 & 0x1Fu) <= 1 )
      {
        if ( (v19[18] & 0x20) != 0 )
          (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v19 + 24))(*(_DWORD *)(v14 + 20));
        v19[19] = 0;
      }
      else
      {
        v19[19] = ((v20 & 0x1F) - 1) | v20 & 0xE0;
      }
    }
    if ( v27 )
      glitch::IReferenceCounted::drop(v27);
  }
  *a1 = v22;
  if ( v22 )
    ++*((_DWORD *)v22 + 1);
  if ( v28 )
    glitch::IReferenceCounted::drop(v28);
  if ( v22 )
    glitch::IReferenceCounted::drop(v22);
  return a1;
}


// ===== 6da95c glitch::video::CFPSCounter::CFPSCounter(void) =====
_DWORD *__fastcall glitch::video::CFPSCounter::CFPSCounter(_DWORD *this)
{
  *(this + 6) = 0;
  *this = 60;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}


// ===== 6da980 glitch::video::CFPSCounter::CFPSCounter(void) =====
_DWORD *__fastcall glitch::video::CFPSCounter::CFPSCounter(_DWORD *this)
{
  *(this + 6) = 0;
  *this = 60;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}


// ===== 6da9a4 glitch::video::CFPSCounter::getFPS(void) =====
int __fastcall glitch::video::CFPSCounter::getFPS(glitch::video::CFPSCounter *this)
{
  return *(_DWORD *)this;
}


// ===== 6da9ac glitch::video::CFPSCounter::getPrimitive(void) =====
int __fastcall glitch::video::CFPSCounter::getPrimitive(glitch::video::CFPSCounter *this)
{
  return *((_DWORD *)this + 1);
}


// ===== 6da9b4 glitch::video::CFPSCounter::getPrimitiveAverage(void) =====
int __fastcall glitch::video::CFPSCounter::getPrimitiveAverage(glitch::video::CFPSCounter *this)
{
  return *((_DWORD *)this + 5);
}


// ===== 6da9bc glitch::video::CFPSCounter::getPrimitiveTotal(void) =====
int __fastcall glitch::video::CFPSCounter::getPrimitiveTotal(glitch::video::CFPSCounter *this)
{
  return *((_DWORD *)this + 6);
}


// ===== 6da9c4 glitch::video::CFPSCounter::getDrawCalls(void) =====
int __fastcall glitch::video::CFPSCounter::getDrawCalls(glitch::video::CFPSCounter *this)
{
  return *((_DWORD *)this + 7);
}


// ===== 6da9cc glitch::video::CFPSCounter::getDrawCalls2D(void) =====
int __fastcall glitch::video::CFPSCounter::getDrawCalls2D(glitch::video::CFPSCounter *this)
{
  return *((_DWORD *)this + 8);
}


// ===== 6da9d4 glitch::video::CFPSCounter::getTextureBindings(void) =====
int __fastcall glitch::video::CFPSCounter::getTextureBindings(glitch::video::CFPSCounter *this)
{
  return *((_DWORD *)this + 9);
}


// ===== 6da9dc `global constructor keyed to'.._source_glitch_video_CFPSCounter.cpp =====
void `global constructor keyed to'.._source_glitch_video_CFPSCounter.cpp()
{
  dword_9F8254 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F8250 = 1056964608;
}


// ===== 6da9fc glitch::video::CFPSCounter::registerFrame(uint,uint,uint,uint,uint) =====
unsigned int __fastcall glitch::video::CFPSCounter::registerFrame(
        glitch::video::CFPSCounter *this,
        unsigned int a2,
        unsigned int a3,
        unsigned int a4,
        unsigned int a5,
        unsigned int a6)
{
  int v7; // r12
  int v8; // r0
  int v9; // r7
  int v10; // r6
  unsigned int result; // r0
  int v13; // r7
  int v14; // r6
  float v15; // r8

  v7 = *((_DWORD *)this + 6);
  v8 = *((_DWORD *)this + 2);
  *((_DWORD *)this + 1) = a3;
  *((_DWORD *)this + 6) = v7 + a3;
  *((_DWORD *)this + 7) = a4;
  v9 = *((_DWORD *)this + 3);
  v10 = *((_DWORD *)this + 4);
  *((_DWORD *)this + 8) = a5;
  result = a2 - v8;
  v13 = v9 + 1;
  v14 = a3 + v10;
  *((_DWORD *)this + 9) = a6;
  *((_DWORD *)this + 3) = v13;
  *((_DWORD *)this + 4) = v14;
  if ( result > 0x5DB )
  {
    v15 = 1.0 / (float)result;
    *(_DWORD *)this = (int)ceilf((float)(unsigned int)(1000 * v13) * v15);
    result = (int)ceilf((float)(unsigned int)(1000 * v14) * v15);
    *((_DWORD *)this + 2) = a2;
    *((_DWORD *)this + 5) = result;
    *((_DWORD *)this + 4) = 0;
    *((_DWORD *)this + 3) = 0;
  }
  return result;
}


// ===== 6daabc glitch::video::CVideoModeList::CVideoModeList(void) =====
_DWORD *__fastcall glitch::video::CVideoModeList::CVideoModeList(_DWORD *this)
{
  *(this + 7) = 0;
  *(this + 1) = 1;
  *this = off_98AE08;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  return this;
}


// ===== 6dab0c glitch::video::CVideoModeList::CVideoModeList(void) =====
_DWORD *__fastcall glitch::video::CVideoModeList::CVideoModeList(_DWORD *this)
{
  *(this + 7) = 0;
  *(this + 1) = 1;
  *this = off_98AE08;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  return this;
}


// ===== 6dab5c glitch::video::CVideoModeList::setDesktop(int,glitch::core::dimension2d<int> const&) =====
_DWORD *__fastcall glitch::video::CVideoModeList::setDesktop(_DWORD *result, int a2, _DWORD *a3)
{
  result[7] = a2;
  result[5] = *a3;
  result[6] = a3[1];
  return result;
}


// ===== 6dab74 glitch::video::CVideoModeList::getVideoModeCount(void) =====
int __fastcall glitch::video::CVideoModeList::getVideoModeCount(glitch::video::CVideoModeList *this)
{
  return -1431655765 * ((*((_DWORD *)this + 3) - *((_DWORD *)this + 2)) >> 2);
}


// ===== 6dab9c glitch::video::CVideoModeList::getVideoModeResolution(int) =====
_DWORD *__fastcall glitch::video::CVideoModeList::getVideoModeResolution(_DWORD *this, int a2, int a3)
{
  int v3; // r3
  int v4; // r1
  int v5; // r2

  if ( a3 >= 0 && (v3 = *(_DWORD *)(a2 + 12), v4 = *(_DWORD *)(a2 + 8), a3 <= -1431655765 * ((v3 - v4) >> 2)) )
  {
    v5 = 12 * a3;
    *this = *(_DWORD *)(v4 + v5);
    *(this + 1) = *(_DWORD *)(v4 + v5 + 4);
  }
  else
  {
    *(this + 1) = 0;
    *this = 0;
  }
  return this;
}


// ===== 6dac00 glitch::video::CVideoModeList::getVideoModeDepth(int) =====
int __fastcall glitch::video::CVideoModeList::getVideoModeDepth(glitch::video::CVideoModeList *this, int a2)
{
  int v2; // r3
  int v3; // r0

  if ( a2 >= 0 && (v2 = *((_DWORD *)this + 3), v3 = *((_DWORD *)this + 2), a2 <= -1431655765 * ((v2 - v3) >> 2)) )
    return *(_DWORD *)(v3 + 12 * a2 + 8);
  else
    return 0;
}


// ===== 6dac4c glitch::video::CVideoModeList::getDesktopResolution(void) =====
char *__fastcall glitch::video::CVideoModeList::getDesktopResolution(glitch::video::CVideoModeList *this)
{
  return (char *)this + 20;
}


// ===== 6dac54 glitch::video::CVideoModeList::getDesktopDepth(void) =====
int __fastcall glitch::video::CVideoModeList::getDesktopDepth(glitch::video::CVideoModeList *this)
{
  return *((_DWORD *)this + 7);
}


// ===== 6dac5c glitch::core::heapsink<glitch::video::CVideoModeList::SVideoMode>(glitch::video::CVideoModeList::SVideoMode *,int,int) =====
int __fastcall glitch::core::heapsink<glitch::video::CVideoModeList::SVideoMode>(int result, int a2, int a3)
{
  int v3; // r3
  int v4; // r12
  int v5; // r6
  int v6; // r7
  int v7; // r4
  int *v8; // r5
  int v9; // r4
  int v10; // r3
  int v11; // r7
  bool v12; // zf
  int v13; // r9
  int v14; // r11
  int v15; // r10
  int v16; // r7
  int v17; // r3
  int v18; // r3

  v3 = 2 * a2;
  if ( a3 > 2 * a2 )
  {
    while ( 1 )
    {
      v4 = v3 + 1;
      if ( a3 <= v3 + 1 )
        break;
      v5 = *(_DWORD *)(result + 12 * v3);
      v6 = *(_DWORD *)(result + 12 * v4);
      v7 = result + 12 * v4;
      v8 = (int *)(result + 12 * v3);
      if ( v5 < v6 )
      {
        v8 = (int *)(result + 12 * v4);
        v5 = *v8;
        goto LABEL_7;
      }
      if ( v5 != v6 )
        goto LABEL_6;
      v15 = v8[1];
      v16 = *(_DWORD *)(v7 + 4);
      if ( v15 >= v16 )
      {
        if ( v15 != v16 || v8[2] >= *(_DWORD *)(v7 + 8) )
          goto LABEL_6;
        v8 = (int *)(result + 12 * v4);
      }
      else
      {
        v8 = (int *)(result + 12 * v4);
      }
      v9 = 12 * a2;
      v17 = *(_DWORD *)(result + 12 * a2);
      v11 = result + 12 * a2;
      v12 = v17 == v5;
      if ( v17 < v5 )
      {
LABEL_8:
        v13 = v8[1];
        v14 = v8[2];
        goto LABEL_9;
      }
LABEL_14:
      if ( !v12 )
        return result;
      v13 = *(_DWORD *)(v11 + 4);
      v18 = v8[1];
      if ( v13 >= v18 )
      {
        if ( v13 != v18 )
          return result;
        v14 = v8[2];
        if ( *(_DWORD *)(v11 + 8) >= v14 )
          return result;
      }
      else
      {
        v13 = v8[1];
        v14 = v8[2];
      }
LABEL_9:
      v3 = 2 * v4;
      *v8 = *(_DWORD *)(result + v9);
      a2 = v4;
      v8[1] = *(_DWORD *)(v11 + 4);
      v8[2] = *(_DWORD *)(v11 + 8);
      *(_DWORD *)(v11 + 4) = v13;
      *(_DWORD *)(v11 + 8) = v14;
      *(_DWORD *)(result + v9) = v5;
      if ( 2 * v4 >= a3 )
        return result;
    }
    v5 = *(_DWORD *)(result + 12 * v3);
    v8 = (int *)(result + 12 * v3);
LABEL_6:
    v4 = v3;
LABEL_7:
    v9 = 12 * a2;
    v10 = *(_DWORD *)(result + 12 * a2);
    v11 = result + 12 * a2;
    v12 = v10 == v5;
    if ( v10 < v5 )
      goto LABEL_8;
    goto LABEL_14;
  }
  return result;
}


// ===== 6dad8c glitch::core::heapsort<glitch::video::CVideoModeList::SVideoMode>(glitch::video::CVideoModeList::SVideoMode *,int) =====
int __fastcall glitch::core::heapsort<glitch::video::CVideoModeList::SVideoMode>(int result, int a2)
{
  int v2; // r4
  int v3; // r6
  int *v4; // r5
  int v5; // r7
  int v6; // r8
  int v7; // r10
  int *v8; // r4
  int v9; // r3
  int v10; // lr
  int v11; // r12

  v2 = a2 - 1;
  v3 = a2;
  v4 = (int *)result;
  v5 = result - 12;
  if ( (a2 - 1) / 2 >= 0 )
  {
    v6 = (a2 - 1) / 2 + 1;
    v7 = a2 + 1;
    do
      result = glitch::core::heapsink<glitch::video::CVideoModeList::SVideoMode>(v5, v6--, v7);
    while ( v6 );
  }
  if ( v2 >= 0 )
  {
    v8 = &v4[3 * v2 + 2];
    do
    {
      v9 = *v4;
      v10 = v4[2];
      *v4 = *(v8 - 2);
      v11 = v4[1];
      v4[1] = *(v8 - 1);
      v4[2] = *v8;
      *(v8 - 2) = v9;
      *(v8 - 1) = v11;
      *v8 = v10;
      result = glitch::core::heapsink<glitch::video::CVideoModeList::SVideoMode>(v5, 1, v3--);
      v8 -= 3;
    }
    while ( v3 );
  }
  return result;
}


// ===== 6dae30 `global constructor keyed to'.._source_glitch_video_CVideoModeList.cpp =====
void `global constructor keyed to'.._source_glitch_video_CVideoModeList.cpp()
{
  dword_9F8260 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F825C = 1056964608;
}


// ===== 6dae50 glitch::video::CVideoModeList::~CVideoModeList() =====
void __fastcall glitch::video::CVideoModeList::~CVideoModeList(glitch::video::CVideoModeList *this)
{
  void *v2; // r0

  v2 = *((void **)this + 2);
  *(_DWORD *)this = off_98AE08;
  if ( v2 )
    GlitchFree(v2);
}


// ===== 6dae90 glitch::video::CVideoModeList::addMode(glitch::core::dimension2d<int> const&,int) =====
void __fastcall glitch::video::CVideoModeList::addMode(_DWORD *a1, int *a2, int a3)
{
  _DWORD *v3; // r5
  int v4; // r3
  int v6; // r6
  int v7; // r7
  unsigned int v8; // r10
  int v9; // r1
  int v10; // r0
  int v11; // r8
  int v12; // r10
  int v13; // r5
  unsigned int v14; // r1
  unsigned int v15; // r1
  size_t v16; // r8
  _DWORD *v17; // r0
  int v18; // lr
  int v19; // r3
  int v20; // r9
  _DWORD *v21; // r9
  int v22; // r12
  int v23; // r3
  _DWORD *v24; // r1
  int v25; // r0
  char *v26; // r0
  char *v27; // r3

  v3 = (_DWORD *)a1[3];
  v4 = a1[2];
  v6 = *a2;
  v7 = a2[1];
  v8 = -1431655765 * (((int)v3 - v4) >> 2);
  if ( v8 )
  {
    v9 = 0;
    v10 = 0;
    while ( 1 )
    {
      ++v10;
      v11 = v4 + v9;
      if ( *(_DWORD *)(v4 + v9) == v6 && *(_DWORD *)(v11 + 4) == v7 && a3 == *(_DWORD *)(v11 + 8) )
        break;
      v9 += 12;
      if ( v10 == v8 )
        goto LABEL_8;
    }
  }
  else
  {
LABEL_8:
    if ( (_DWORD *)a1[4] == v3 )
    {
      if ( v8 )
        v15 = 1431655766 * (((int)v3 - v4) >> 2);
      else
        v15 = 1;
      if ( v15 > 0x15555555 || v8 > v15 )
        v16 = -4;
      else
        v16 = 12 * v15;
      v17 = GlitchAlloc(v16, 0);
      v18 = a1[2];
      v12 = (int)v17;
      v19 = ((int)v3 - v18) >> 2;
      v20 = -1431655765 * v19;
      if ( -1431655765 * v19 > 0 )
      {
        v22 = -1431655765 * v19;
        v23 = 0;
        do
        {
          *(_DWORD *)(v12 + v23) = *(_DWORD *)(v18 + v23);
          *(_DWORD *)(v12 + v23 + 4) = *(_DWORD *)(v18 + v23 + 4);
          v24 = (_DWORD *)(v12 + v23 + 8);
          v25 = *(_DWORD *)(v18 + v23 + 8);
          --v22;
          v23 += 12;
          *v24 = v25;
        }
        while ( v22 );
        v21 = (_DWORD *)(v12 + 12 * v20);
      }
      else
      {
        v21 = v17;
      }
      v21[2] = a3;
      v21[1] = v7;
      *v21 = v6;
      v13 = (int)(v21 + 3);
      v26 = (char *)a1[3];
      v27 = (char *)a1[2];
      if ( v26 != v27 )
        v26 += -12 * ((715827883 * ((unsigned int)(v26 - 12 - v27) >> 2)) & 0x3FFFFFFF) - 12;
      GlitchFree(v26);
      a1[4] = v12 + v16;
      a1[2] = v12;
      a1[3] = v13;
    }
    else
    {
      *v3 = v6;
      v3[2] = a3;
      v3[1] = v7;
      v12 = a1[2];
      v13 = a1[3] + 12;
      a1[3] = v13;
    }
    v14 = -1431655765 * ((v13 - v12) >> 2);
    if ( v14 > 1 )
      glitch::core::heapsort<glitch::video::CVideoModeList::SVideoMode>(v12, v14);
  }
}


// ===== 6db0a4 glitch::video::CVideoModeList::~CVideoModeList() =====
void __fastcall glitch::video::CVideoModeList::~CVideoModeList(glitch::video::CVideoModeList *this)
{
  void *v2; // r0

  v2 = *((void **)this + 2);
  *(_DWORD *)this = off_98AE08;
  if ( v2 )
    GlitchFree(v2);
  LC_API_FREE_0(this);
}


// ===== 6db0ec glitch::video::getStringsInternal(glitch::video::E_BUFFER_TYPE *) =====
char **glitch::video::getStringsInternal()
{
  return glitch::video::getStringsInternal(glitch::video::E_BUFFER_TYPE *)::strings;
}


// ===== 6db0fc glitch::video::getStringsInternal(glitch::video::E_BUFFER_USAGE *) =====
_UNKNOWN **glitch::video::getStringsInternal()
{
  return &glitch::video::getStringsInternal(glitch::video::E_BUFFER_USAGE *)::strings;
}


// ===== 6db110 `global constructor keyed to'.._source_glitch_video_EBuffer.cpp =====
void `global constructor keyed to'.._source_glitch_video_EBuffer.cpp()
{
  dword_9F826C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F8268 = 1056964608;
}


// ===== 6db130 glitch::video::getStringsInternal(glitch::video::E_BLEND_FACTOR *) =====
char **glitch::video::getStringsInternal()
{
  return &glitch::video::getStringsInternal(glitch::video::E_BLEND_FACTOR *)::strings;
}


// ===== 6db140 glitch::video::getStringsInternal(glitch::video::E_BLEND_EQUATION *) =====
_UNKNOWN **glitch::video::getStringsInternal()
{
  return &glitch::video::getStringsInternal(glitch::video::E_BLEND_EQUATION *)::strings;
}


// ===== 6db154 glitch::video::getStringsInternal(glitch::video::E_FACE_SIDE *) =====
char **glitch::video::getStringsInternal()
{
  return glitch::video::getStringsInternal(glitch::video::E_FACE_SIDE *)::strings;
}


// ===== 6db168 glitch::video::getStringsInternal(glitch::video::E_FACE_WINDING *) =====
char **glitch::video::getStringsInternal()
{
  return glitch::video::getStringsInternal(glitch::video::E_FACE_WINDING *)::strings;
}


// ===== 6db17c glitch::video::getStringsInternal(glitch::video::E_COMPARE_FUNC *) =====
char **glitch::video::getStringsInternal()
{
  return glitch::video::getStringsInternal(glitch::video::E_COMPARE_FUNC *)::strings;
}


// ===== 6db190 glitch::video::getStringsInternal(glitch::video::E_POLYGON_MODE *) =====
char **glitch::video::getStringsInternal()
{
  return glitch::video::getStringsInternal(glitch::video::E_POLYGON_MODE *)::strings;
}


// ===== 6db1a4 glitch::video::getStringsInternal(glitch::video::E_STENCIL_OP *) =====
char **glitch::video::getStringsInternal()
{
  return glitch::video::getStringsInternal(glitch::video::E_STENCIL_OP *)::strings;
}


// ===== 6db1b8 `global constructor keyed to'.._source_glitch_video_ERenderStates.cpp =====
void `global constructor keyed to'.._source_glitch_video_ERenderStates.cpp()
{
  dword_9F8278 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F8274 = 1056964608;
}


// ===== 6db1d8 glitch::video::getStringsInternal(glitch::video::E_VERTEX_ATTRIBUTE *) =====
_UNKNOWN **glitch::video::getStringsInternal()
{
  return &glitch::video::getStringsInternal(glitch::video::E_VERTEX_ATTRIBUTE *)::names;
}


// ===== 6db1e8 glitch::video::getStringsInternal(glitch::video::E_VERTEX_ATTRIBUTE_VALUE_TYPE *) =====
char **glitch::video::getStringsInternal()
{
  return glitch::video::getStringsInternal(glitch::video::E_VERTEX_ATTRIBUTE_VALUE_TYPE *)::names;
}


// ===== 6db1fc std::priv::_Deque_iterator_base<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::_M_subtract(std::priv::_Deque_iterator_base<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>> const&) =====
int __fastcall std::priv::_Deque_iterator_base<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::_M_subtract(
        _DWORD *a1,
        _DWORD *a2)
{
  return ((*a1 - a1[1]) >> 3) + ((a2[2] - *a2) >> 3) + 16 * (((a1[3] - a2[3]) >> 2) - 1);
}


// ===== 6db240 std::priv::__ucopy<std::priv::_Deque_iterator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>,std::_Const_traits<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>>,std::priv::_Deque_iterator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>,std::_Nonconst_traits<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>>,int>(std::priv::_Deque_iterator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>,std::_Const_traits<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>>,std::priv::_Deque_iterator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>,std::_Const_traits<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>>,std::priv::_Deque_iterator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>,std::_Nonconst_traits<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>>,std::random_access_iterator_tag const&,int *) =====
int *std::priv::__ucopy<std::priv::_Deque_iterator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>,std::_Const_traits<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>>,std::priv::_Deque_iterator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>,std::_Nonconst_traits<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>>,int>(
        int *a1,
        ...)
{
  int v2; // r1
  int v3; // r2
  int v4; // r3
  int v5; // r0
  int v6; // r2
  int v7; // r3
  _DWORD *v8; // r2
  _DWORD *v9; // r3
  _DWORD *v10; // r3
  int v11; // r2
  int v12; // r3
  int *v13; // r2
  int v14; // r3
  _DWORD *varg_r1; // [sp+Ch] [bp+Ch] BYREF
  va_list varg_r1a; // [sp+Ch] [bp+Ch]
  _DWORD *varg_r2; // [sp+10h] [bp+10h]
  int varg_r3; // [sp+14h] [bp+14h]
  _DWORD *v20; // [sp+18h] [bp+18h]
  int v21; // [sp+1Ch] [bp+1Ch] BYREF
  va_list va1; // [sp+1Ch] [bp+1Ch]
  int v23; // [sp+20h] [bp+20h]
  int v24; // [sp+24h] [bp+24h]
  int v25; // [sp+28h] [bp+28h]
  int *v26; // [sp+2Ch] [bp+2Ch]
  va_list va2; // [sp+30h] [bp+30h] BYREF

  va_start(va2, a1);
  va_start(va1, a1);
  va_start(varg_r1a, a1);
  varg_r1 = va_arg(va1, _DWORD *);
  varg_r2 = va_arg(va1, _DWORD *);
  varg_r3 = va_arg(va1, _DWORD);
  v20 = va_arg(va1, _DWORD *);
  va_copy(va2, va1);
  v21 = va_arg(va2, _DWORD);
  v23 = va_arg(va2, _DWORD);
  v24 = va_arg(va2, _DWORD);
  v25 = va_arg(va2, _DWORD);
  v26 = va_arg(va2, int *);
  v2 = v26[1];
  v3 = v26[2];
  v4 = v26[3];
  *a1 = *v26;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  v5 = std::priv::_Deque_iterator_base<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::_M_subtract(
         (int *)&va1,
         (_DWORD **)&varg_r1a);
  if ( v5 > 0 )
  {
    while ( 1 )
    {
      v8 = varg_r1;
      v9 = (_DWORD *)*a1;
      *v9 = *varg_r1;
      v9[1] = v8[1];
      varg_r1 += 2;
      if ( varg_r1 == (_DWORD *)varg_r3 )
      {
        v10 = (_DWORD *)*++v20;
        varg_r3 = *v20 + 128;
        varg_r1 = v10;
        varg_r2 = v10;
        v11 = a1[2];
        v12 = *a1 + 8;
        *a1 = v12;
        if ( v12 == v11 )
          goto LABEL_7;
LABEL_4:
        if ( !--v5 )
          return a1;
      }
      else
      {
        v6 = a1[2];
        v7 = *a1 + 8;
        *a1 = v7;
        if ( v7 != v6 )
          goto LABEL_4;
LABEL_7:
        --v5;
        v13 = (int *)(a1[3] + 4);
        a1[3] = (int)v13;
        v14 = *v13;
        a1[2] = *v13 + 128;
        *a1 = v14;
        a1[1] = v14;
        if ( !v5 )
          return a1;
      }
    }
  }
  return a1;
}


// ===== 6db338 `global constructor keyed to'.._source_glitch_video_EVertexAttribute.cpp =====
void `global constructor keyed to'.._source_glitch_video_EVertexAttribute.cpp()
{
  dword_9F8284 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F8280 = 1056964608;
}


// ===== 6db358 std::priv::_Rb_tree<char const*,glitch::core::SStringLess,std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>,std::priv::_Select1st<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>>,std::priv::_MapTraitsT<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>>,glitch::core::SAllocator<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<char const*,glitch::core::SStringLess,std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>,std::priv::_Select1st<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>>,std::priv::_MapTraitsT<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>>,glitch::core::SAllocator<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
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
      std::priv::_Rb_tree<char const*,glitch::core::SStringLess,std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>,std::priv::_Select1st<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>>,std::priv::_MapTraitsT<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>>,glitch::core::SAllocator<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      GlitchFree(v2);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 6db38c std::map<char const*,glitch::video::E_VERTEX_ATTRIBUTE,glitch::core::SStringLess,glitch::core::SAllocator<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>,(glitch::memory::E_MEMORY_HINT)0>>::~map() =====
int __fastcall std::map<char const*,glitch::video::E_VERTEX_ATTRIBUTE,glitch::core::SStringLess,glitch::core::SAllocator<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>,(glitch::memory::E_MEMORY_HINT)0>>::~map(
        int a1)
{
  if ( *(_DWORD *)(a1 + 16) )
  {
    std::priv::_Rb_tree<char const*,glitch::core::SStringLess,std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>,std::priv::_Select1st<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>>,std::priv::_MapTraitsT<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>>,glitch::core::SAllocator<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      a1,
      *(_DWORD **)(a1 + 4));
    *(_DWORD *)(a1 + 16) = 0;
    *(_DWORD *)(a1 + 4) = 0;
    *(_DWORD *)(a1 + 8) = a1;
    *(_DWORD *)(a1 + 12) = a1;
  }
  return a1;
}


// ===== 6db3c0 std::priv::_Rb_tree<char const*,glitch::core::SStringLess,std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>,std::priv::_Select1st<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>>,std::priv::_MapTraitsT<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>>,glitch::core::SAllocator<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) [clone] =====
_DWORD *__fastcall std::priv::_Rb_tree<char const*,glitch::core::SStringLess,std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>,std::priv::_Select1st<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>>,std::priv::_MapTraitsT<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>>,glitch::core::SAllocator<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        int a3,
        const char **a4,
        int a5)
{
  _DWORD *v7; // r0
  _DWORD *v8; // r6
  const char *v9; // r3
  int v10; // r2
  const char *v11; // r3
  int v13; // r0
  _DWORD *v14; // r0
  const char *v15; // r3
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
    v8 = GlitchAlloc(0x18u, 0);
    v8[4] = *v17;
    v11 = v17[1];
    v8[3] = 0;
    v8[2] = 0;
    v8[5] = v11;
    a2[2] = v8;
    a2[1] = v8;
    a2[3] = v8;
    v10 = v20;
  }
  else if ( a5
         || (v21 = a3, v18 = a4, v13 = LC_API_STRCMP_0(*a4, *(const char **)(a3 + 16)), a3 = v21, a4 = v18, v13 < 0) )
  {
    v19 = a3;
    v16 = a4;
    v7 = GlitchAlloc(0x18u, 0);
    v8 = v7;
    v7[4] = *v16;
    v9 = v16[1];
    v7[3] = 0;
    v7[2] = 0;
    v7[5] = v9;
    v10 = v19;
    *(_DWORD *)(v19 + 8) = v7;
    if ( v19 == a2[2] )
      a2[2] = v7;
  }
  else
  {
    v14 = GlitchAlloc(0x18u, 0);
    v8 = v14;
    v14[4] = *v18;
    v15 = v18[1];
    v14[3] = 0;
    v14[2] = 0;
    v14[5] = v15;
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


// ===== 6db518 std::priv::_Rb_tree<char const*,glitch::core::SStringLess,std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>,std::priv::_Select1st<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>>,std::priv::_MapTraitsT<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>>,glitch::core::SAllocator<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE> const&) =====
int __fastcall std::priv::_Rb_tree<char const*,glitch::core::SStringLess,std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>,std::priv::_Select1st<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>>,std::priv::_MapTraitsT<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>>,glitch::core::SAllocator<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
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
    std::priv::_Rb_tree<char const*,glitch::core::SStringLess,std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>,std::priv::_Select1st<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>>,std::priv::_MapTraitsT<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>>,glitch::core::SAllocator<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
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
      std::priv::_Rb_tree<char const*,glitch::core::SStringLess,std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>,std::priv::_Select1st<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>>,std::priv::_MapTraitsT<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>>,glitch::core::SAllocator<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
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


// ===== 6db6d0 std::allocator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 128;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 6db6f0 std::priv::_Deque_base<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>,std::allocator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>>::~_Deque_base() =====
_DWORD *__fastcall std::priv::_Deque_base<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>,std::allocator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>>::~_Deque_base(
        _DWORD *a1)
{
  void *v2; // r0
  void **v3; // r4
  unsigned int v4; // r5
  void *v5; // r0
  int v6; // r1
  size_t v7; // r1

  v2 = (void *)a1[8];
  if ( !v2 )
    return a1;
  v3 = (void **)a1[3];
  v4 = a1[7] + 4;
  if ( (unsigned int)v3 >= v4 )
  {
    v6 = a1[9];
  }
  else
  {
    do
    {
      v5 = *v3++;
      if ( v5 )
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, 0x80u);
    }
    while ( v4 > (unsigned int)v3 );
    v2 = (void *)a1[8];
    v6 = a1[9];
    if ( !v2 )
      return a1;
  }
  v7 = 4 * v6;
  if ( v7 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v7);
    return a1;
  }
  LC_API_FREE_0(v2);
  return a1;
}


// ===== 6db774 std::allocator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE> *>::allocate(uint,void const*) =====
void *__fastcall std::allocator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE> *>::allocate(
        int a1,
        unsigned int a2)
{
  size_t __n[2]; // [sp+4h] [bp-8h] BYREF

  if ( a2 > 0x3FFFFFFF )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n[0] = 4 * a2;
  if ( 4 * a2 > 0x80 )
    return (void *)operator new(4 * a2);
  else
    return __ZNSt12__node_alloc11_M_allocateERj_veneer(__n);
}


// ===== 6db7d4 std::priv::_Deque_base<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>,std::allocator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>>::_M_initialize_map(uint) =====
char *__fastcall std::priv::_Deque_base<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>,std::allocator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>>::_M_initialize_map(
        _DWORD *a1,
        unsigned int a2)
{
  unsigned int v2; // r6
  char v3; // r5
  unsigned int v4; // r1
  char *result; // r0
  unsigned int v7; // r6
  char *v8; // r9
  unsigned int v9; // r11
  char *v10; // r10
  unsigned int v11; // r6
  char *v12; // r7
  int v13; // r2
  int v14; // r3

  v2 = a2 >> 4;
  v3 = a2;
  v4 = (a2 >> 4) + 3;
  if ( v4 < 8 )
    v4 = 8;
  a1[9] = v4;
  result = (char *)std::allocator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE> *>::allocate(
                     (int)(a1 + 8),
                     v4);
  v7 = v2 + 1;
  v8 = result;
  v9 = (a1[9] - v7) >> 1;
  a1[8] = result;
  v10 = &result[4 * v9];
  v11 = (unsigned int)&v10[4 * v7];
  if ( (unsigned int)v10 < v11 )
  {
    v12 = &result[4 * v9];
    do
    {
      result = (char *)std::allocator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::allocate();
      *(_DWORD *)v12 = result;
      v12 += 4;
    }
    while ( v11 > (unsigned int)v12 );
  }
  a1[3] = v10;
  v13 = *(_DWORD *)&v8[4 * v9];
  a1[7] = v11 - 4;
  a1[1] = v13;
  a1[2] = v13 + 128;
  v14 = *(_DWORD *)(v11 - 4);
  *a1 = v13;
  a1[4] = v14 + 8 * (v3 & 0xF);
  a1[6] = v14 + 128;
  a1[5] = v14;
  return result;
}


// ===== 6db880 std::deque<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>,std::allocator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>>::deque(std::deque<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>,std::allocator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>> const&) =====
int *__fastcall std::deque<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::deque(int *a1, int *a2)
{
  int v4; // r0
  int v5; // r1
  int v6; // r2
  int v7; // r3
  _DWORD *v8; // t0
  unsigned int v9; // r0
  int v10; // r7
  int v11; // r12
  int v12; // r11
  int v13; // r9
  int v14; // lr
  int v15; // r0
  int v16; // r8
  int v17; // r10
  int v18; // r1
  int v19; // r2
  int v20; // r3
  int v21; // r5
  _DWORD v23[4]; // [sp+24h] [bp-58h] BYREF
  int v24[12]; // [sp+34h] [bp-48h] BYREF
  _DWORD v25[4]; // [sp+64h] [bp-18h] BYREF
  char v26[8]; // [sp+74h] [bp-8h] BYREF

  v4 = *a2;
  v8 = a2 + 1;
  v5 = a2[1];
  v6 = *++v8;
  v7 = v8[1];
  v25[0] = v4;
  v25[1] = v5;
  v25[2] = v6;
  v25[3] = v7;
  v9 = std::priv::_Deque_iterator_base<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::_M_subtract(
         a2 + 4,
         v25);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0;
  std::priv::_Deque_base<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>,std::allocator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>>::_M_initialize_map(
    a1,
    v9);
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[7];
  v13 = a2[6];
  v14 = a2[5];
  v15 = *a2;
  v16 = a2[1];
  v17 = a2[2];
  v18 = a1[3];
  v19 = a1[2];
  v20 = a1[1];
  v21 = *a1;
  v24[6] = v13;
  v24[5] = v14;
  v24[4] = v11;
  v24[7] = v12;
  v23[3] = v18;
  v23[2] = v19;
  v23[1] = v20;
  v23[0] = v21;
  v24[8] = v15;
  v24[10] = v17;
  v24[9] = v16;
  v24[11] = v10;
  std::priv::__ucopy<std::priv::_Deque_iterator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>,std::_Const_traits<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>>,std::priv::_Deque_iterator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>,std::_Nonconst_traits<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>>,int>(
    v24,
    v15,
    v16,
    v17,
    v10,
    v11,
    v14,
    v13,
    v12,
    v23,
    v26,
    0);
  return a1;
}


// ===== 6db97c std::deque<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>,std::allocator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>>::_M_push_back_aux_v(std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE> const&) =====
void *__fastcall std::deque<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::_M_push_back_aux_v(
        _DWORD *a1,
        _DWORD *a2)
{
  char *v2; // r10
  int v3; // r2
  unsigned int v4; // r3
  void *result; // r0
  _DWORD *v8; // r3
  int *v9; // r2
  int v10; // r3
  int v11; // r2
  char *v12; // r1
  int v13; // r7
  int v14; // r9
  char *v15; // r6
  int v16; // r2
  unsigned int v17; // r8
  char *v18; // r0
  const void *v19; // r1
  size_t v20; // r2
  char *v21; // r10
  void *v22; // r0
  size_t v23; // r1
  int v24; // r3
  int v25; // r3

  v2 = (char *)a1[7];
  v3 = a1[8];
  v4 = a1[9];
  if ( v4 - ((int)&v2[-v3] >> 2) <= 1 )
  {
    v12 = (char *)a1[3];
    v13 = ((v2 - v12) >> 2) + 1;
    v14 = ((v2 - v12) >> 2) + 2;
    if ( v4 <= 2 * v14 )
    {
      if ( v4 )
        v16 = a1[9];
      else
        v16 = 1;
      v17 = v4 + 2 + v16;
      v18 = (char *)std::allocator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE> *>::allocate(
                      (int)(a1 + 8),
                      v17);
      v19 = (const void *)a1[3];
      v20 = a1[7] + 4 - (_DWORD)v19;
      v21 = v18;
      v15 = &v18[4 * ((v17 - v14) >> 1)];
      if ( v20 )
        memmove(&v18[4 * ((v17 - v14) >> 1)], v19, v20);
      v22 = (void *)a1[8];
      if ( v22 )
      {
        v23 = 4 * a1[9];
        if ( v23 > 0x80 )
          LC_API_FREE_0(v22);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v22, v23);
      }
      a1[8] = v21;
      a1[9] = v17;
    }
    else
    {
      v15 = (char *)(v3 + 4 * ((v4 - v14) >> 1));
      if ( v12 <= v15 )
      {
        if ( v2 + 4 - v12 > 0 )
          memmove(&v15[4 * v13 - (v2 + 4 - v12)], v12, v2 + 4 - v12);
      }
      else if ( v2 + 4 != v12 )
      {
        memmove(v15, v12, v2 + 4 - v12);
      }
    }
    a1[3] = v15;
    v24 = *(_DWORD *)v15;
    v2 = &v15[4 * v13 - 4];
    a1[2] = *(_DWORD *)v15 + 128;
    a1[1] = v24;
    a1[7] = v2;
    v25 = *(_DWORD *)v2;
    a1[6] = *(_DWORD *)v2 + 128;
    a1[5] = v25;
  }
  result = std::allocator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::allocate();
  *((_DWORD *)v2 + 1) = result;
  v8 = (_DWORD *)a1[4];
  *v8 = *a2;
  v8[1] = a2[1];
  v9 = (int *)(a1[7] + 4);
  a1[7] = v9;
  v10 = *v9;
  v11 = *v9 + 128;
  a1[4] = v10;
  a1[6] = v11;
  a1[5] = v10;
  return result;
}


// ===== 6dbb08 boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>) =====
_DWORD *__fastcall boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(
        _DWORD *result,
        _DWORD *a2)
{
  _DWORD *v2; // r2

  v2 = (_DWORD *)result[4];
  if ( v2 == (_DWORD *)(result[6] - 8) )
    return std::deque<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::_M_push_back_aux_v(result, a2);
  *v2 = *a2;
  v2[1] = a2[1];
  result[4] += 8;
  return result;
}


// ===== 6dbb50 glitch::video::guessShaderVertexAttribute(char const*) =====
int __fastcall glitch::video::guessShaderVertexAttribute(glitch::video *this, const char *a2)
{
  char *v3; // r0
  size_t v4; // r8
  char isProcessBufferHeapExcessEnabled; // r7
  bool v6; // r1
  int v7; // r1
  void *v8; // r1
  char *v9; // r5
  int v10; // r3
  unsigned int v11; // r2
  char *v12; // r4
  char *v13; // r6
  int v14; // r0
  char *v15; // r3
  int v16; // r4
  _DWORD *v18; // r2
  int v19; // r3
  _DWORD *v20; // r2
  int v21; // r0
  _DWORD *v22; // r3
  bool v23; // zf
  int v24; // t1
  int v25; // r8
  int v26; // r5
  int v27; // r9
  const char *v28; // r3
  int v29; // r3
  int v30; // r2
  int v31; // r0
  int v32; // r3
  int v33; // t1
  int v34; // [sp+Ch] [bp-1D8h]
  char v35[8]; // [sp+10h] [bp-1D4h] BYREF
  int v36[2]; // [sp+18h] [bp-1CCh] BYREF
  _DWORD *v37; // [sp+20h] [bp-1C4h]
  int v38; // [sp+24h] [bp-1C0h]
  _DWORD *v39; // [sp+28h] [bp-1BCh]
  int v40; // [sp+2Ch] [bp-1B8h]
  int v41; // [sp+30h] [bp-1B4h]
  int v42; // [sp+34h] [bp-1B0h]
  int v43; // [sp+38h] [bp-1ACh]
  int v44; // [sp+3Ch] [bp-1A8h]
  int v45[2]; // [sp+40h] [bp-1A4h] BYREF
  int v46; // [sp+48h] [bp-19Ch]
  int v47; // [sp+4Ch] [bp-198h]
  int v48; // [sp+50h] [bp-194h]
  const char *v49[2]; // [sp+68h] [bp-17Ch] BYREF
  const char *v50; // [sp+70h] [bp-174h] BYREF
  int v51; // [sp+74h] [bp-170h]
  _DWORD v52[2]; // [sp+78h] [bp-16Ch] BYREF
  _DWORD v53[2]; // [sp+80h] [bp-164h] BYREF
  _DWORD v54[2]; // [sp+88h] [bp-15Ch] BYREF
  _DWORD v55[2]; // [sp+90h] [bp-154h] BYREF
  _DWORD v56[2]; // [sp+98h] [bp-14Ch] BYREF
  _DWORD v57[2]; // [sp+A0h] [bp-144h] BYREF
  _DWORD v58[2]; // [sp+A8h] [bp-13Ch] BYREF
  _DWORD v59[2]; // [sp+B0h] [bp-134h] BYREF
  _DWORD v60[2]; // [sp+B8h] [bp-12Ch] BYREF
  _DWORD v61[2]; // [sp+C0h] [bp-124h] BYREF
  _DWORD v62[2]; // [sp+C8h] [bp-11Ch] BYREF
  _DWORD v63[2]; // [sp+D0h] [bp-114h] BYREF
  _DWORD v64[2]; // [sp+D8h] [bp-10Ch] BYREF
  _DWORD v65[2]; // [sp+E0h] [bp-104h] BYREF
  _DWORD v66[2]; // [sp+E8h] [bp-FCh] BYREF
  _DWORD v67[2]; // [sp+F0h] [bp-F4h] BYREF
  _DWORD v68[2]; // [sp+F8h] [bp-ECh] BYREF
  _DWORD v69[2]; // [sp+100h] [bp-E4h] BYREF
  _DWORD v70[2]; // [sp+108h] [bp-DCh] BYREF
  _DWORD v71[2]; // [sp+110h] [bp-D4h] BYREF
  _DWORD v72[2]; // [sp+118h] [bp-CCh] BYREF
  _DWORD v73[2]; // [sp+120h] [bp-C4h] BYREF
  _DWORD v74[2]; // [sp+128h] [bp-BCh] BYREF
  _DWORD v75[2]; // [sp+130h] [bp-B4h] BYREF
  _DWORD v76[2]; // [sp+138h] [bp-ACh] BYREF
  _DWORD v77[2]; // [sp+140h] [bp-A4h] BYREF
  _DWORD v78[2]; // [sp+148h] [bp-9Ch] BYREF
  _DWORD v79[2]; // [sp+150h] [bp-94h] BYREF
  _DWORD v80[2]; // [sp+158h] [bp-8Ch] BYREF
  _DWORD v81[2]; // [sp+160h] [bp-84h] BYREF
  _DWORD v82[2]; // [sp+168h] [bp-7Ch] BYREF
  _DWORD v83[2]; // [sp+170h] [bp-74h] BYREF
  _DWORD v84[2]; // [sp+178h] [bp-6Ch] BYREF
  _DWORD v85[2]; // [sp+180h] [bp-64h] BYREF
  _DWORD v86[2]; // [sp+188h] [bp-5Ch] BYREF
  _DWORD v87[2]; // [sp+190h] [bp-54h] BYREF
  _DWORD v88[2]; // [sp+198h] [bp-4Ch] BYREF
  _DWORD v89[2]; // [sp+1A0h] [bp-44h] BYREF
  _DWORD v90[2]; // [sp+1A8h] [bp-3Ch] BYREF
  _DWORD v91[2]; // [sp+1B0h] [bp-34h] BYREF
  _DWORD v92[2]; // [sp+1B8h] [bp-2Ch] BYREF
  _DWORD v93[2]; // [sp+1C0h] [bp-24h] BYREF
  _DWORD v94[2]; // [sp+1C8h] [bp-1Ch] BYREF
  _DWORD v95[2]; // [sp+1D0h] [bp-14h] BYREF
  _DWORD v96[3]; // [sp+1D8h] [bp-Ch] BYREF

  if ( (`guard variable for'glitch::video::guessShaderVertexAttribute(char const*)::VertexAttributeDictionary & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'glitch::video::guessShaderVertexAttribute(char const*)::VertexAttributeDictionary) )
  {
    v36[0] = 0;
    v36[1] = 0;
    v37 = nullptr;
    v38 = 0;
    v39 = nullptr;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    std::priv::_Deque_base<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>,std::allocator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>>::_M_initialize_map(
      v36,
      0);
    v18 = v39;
    v51 = 0;
    v50 = "vertex";
    if ( v39 == (_DWORD *)(v41 - 8) )
    {
      std::deque<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::_M_push_back_aux_v(v36, &v50);
    }
    else
    {
      *v39 = "vertex";
      v18[1] = v51;
      v39 += 2;
    }
    std::deque<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::deque(v45, v36);
    v19 = v36[0];
    v20 = v37;
    v21 = v38;
    while ( v39 != (_DWORD *)v19 )
    {
      v22 = (_DWORD *)(v19 + 8);
      while ( v20 != v22 )
      {
        v23 = v39 == v22;
        v22 += 2;
        if ( v23 )
          goto LABEL_37;
      }
      v24 = *(_DWORD *)(v21 + 4);
      v21 += 4;
      v19 = v24;
      v20 = (_DWORD *)(v24 + 128);
    }
LABEL_37:
    std::priv::_Deque_base<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>,std::allocator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>>::~_Deque_base(v36);
    v96[0] = "pos";
    v96[1] = 0;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v96);
    v95[0] = "position";
    v95[1] = 0;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v95);
    v94[0] = "vertices";
    v94[1] = 0;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v94);
    v93[0] = "normal";
    v93[1] = 17;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v93);
    v92[0] = "normals";
    v92[1] = 17;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v92);
    v91[0] = "tangent";
    v91[1] = 20;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v91);
    v90[0] = "tangents";
    v90[1] = 20;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v90);
    v89[0] = "tangent0";
    v89[1] = 20;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v89);
    v88[0] = "tangent1";
    v88[1] = 21;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v88);
    v87[0] = "tangent2";
    v87[1] = 22;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v87);
    v86[0] = "tangent3";
    v86[1] = 23;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v86);
    v85[0] = "binormal";
    v85[1] = 24;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v85);
    v84[0] = "binormals";
    v84[1] = 24;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v84);
    v83[0] = "binormal0";
    v83[1] = 24;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v83);
    v82[0] = "binormal1";
    v82[1] = 25;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v82);
    v81[0] = "binormal2";
    v81[1] = 26;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v81);
    v80[0] = "binormal3";
    v80[1] = 27;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v80);
    v79[0] = "diffuse";
    v79[1] = 18;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v79);
    v78[0] = "color";
    v78[1] = 18;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v78);
    v77[0] = "color0";
    v77[1] = 18;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v77);
    v76[0] = "color1";
    v76[1] = 19;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v76);
    v75[0] = "secondarycolor";
    v75[1] = 19;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v75);
    v74[0] = "alternatecolor";
    v74[1] = 19;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v74);
    v73[0] = "coord";
    v73[1] = 1;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v73);
    v72[0] = "coord0";
    v72[1] = 1;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v72);
    v71[0] = "coord1";
    v71[1] = 2;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v71);
    v70[0] = "coord2";
    v70[1] = 3;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v70);
    v69[0] = "coord3";
    v69[1] = 4;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v69);
    v68[1] = 5;
    v68[0] = "coord4";
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v68);
    v67[0] = "coord5";
    v67[1] = 6;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v67);
    v66[1] = 7;
    v66[0] = "coord6";
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v66);
    v65[0] = "coord7";
    v65[1] = 8;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v65);
    v64[0] = "texcoord";
    v64[1] = 1;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v64);
    v63[0] = "texcoord0";
    v63[1] = 1;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v63);
    v62[0] = "texcoord1";
    v62[1] = 2;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v62);
    v61[0] = "texcoord2";
    v61[1] = 3;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v61);
    v60[0] = "texcoord3";
    v60[1] = 4;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v60);
    v59[0] = "texcoord4";
    v59[1] = 5;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v59);
    v58[0] = "texcoord5";
    v58[1] = 6;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v58);
    v57[1] = 7;
    v57[0] = "texcoord6";
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v57);
    v56[1] = 8;
    v56[0] = "texcoord7";
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v56);
    v55[0] = "skinweights";
    v55[1] = 28;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v55);
    v54[0] = "skinweight";
    v54[1] = 28;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v54);
    v53[0] = "skinindices";
    v53[1] = 29;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v53);
    v52[0] = "skinindex";
    v52[1] = 29;
    boost::assign_detail::generic_list<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>::push_back(v45, v52);
    v34 = v47;
    glitch::video::guessShaderVertexAttribute(char const*)::VertexAttributeDictionary = 0;
    dword_9F829C = 0;
    dword_9F8290 = 0;
    dword_9F8298 = (int)&glitch::video::guessShaderVertexAttribute(char const*)::VertexAttributeDictionary;
    dword_9F8294 = (int)&glitch::video::guessShaderVertexAttribute(char const*)::VertexAttributeDictionary;
    v25 = v46;
    v26 = v45[0];
    v27 = v48;
    while ( v27 != v26 )
    {
      v49[0] = *(const char **)v26;
      v28 = *(const char **)(v26 + 4);
      v26 += 8;
      v49[1] = v28;
      std::priv::_Rb_tree<char const*,glitch::core::SStringLess,std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>,std::priv::_Select1st<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>>,std::priv::_MapTraitsT<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>>,glitch::core::SAllocator<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
        (int)v35,
        &glitch::video::guessShaderVertexAttribute(char const*)::VertexAttributeDictionary,
        v49);
      if ( v26 == v25 )
      {
        v26 = *(_DWORD *)(v34 + 4);
        v34 += 4;
        v25 = v26 + 128;
      }
    }
    _cxa_guard_release(&`guard variable for'glitch::video::guessShaderVertexAttribute(char const*)::VertexAttributeDictionary);
    _aeabi_atexit(
      (int)&glitch::video::guessShaderVertexAttribute(char const*)::VertexAttributeDictionary,
      (int)std::map<char const*,glitch::video::E_VERTEX_ATTRIBUTE,glitch::core::SStringLess,glitch::core::SAllocator<std::pair<char const* const,glitch::video::E_VERTEX_ATTRIBUTE>,(glitch::memory::E_MEMORY_HINT)0>>::~map,
      (int)&_dso_handle);
    v29 = v45[0];
    v30 = v46;
    v31 = v47;
    while ( v48 != v29 )
    {
      v32 = v29 + 8;
      while ( v30 != v32 )
      {
        v23 = v48 == v32;
        v32 += 8;
        if ( v23 )
          goto LABEL_47;
      }
      v33 = *(_DWORD *)(v31 + 4);
      v31 += 4;
      v29 = v33;
      v30 = v33 + 128;
    }
LABEL_47:
    std::priv::_Deque_base<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>,std::allocator<std::pair<char const*,glitch::video::E_VERTEX_ATTRIBUTE>>>::~_Deque_base(v45);
  }
  v3 = strchr((const char *)this, 46);
  if ( v3 )
    this = (glitch::video *)(v3 + 1);
  v4 = LC_API_STRLEN_0((const char *)this);
  isProcessBufferHeapExcessEnabled = glitch::core::isProcessBufferHeapExcessEnabled((glitch::core *)v4);
  glitch::core::setProcessBufferHeapExcessEnabled((char)&dword_0 + 1, v6);
  v9 = (char *)glitch::core::allocProcessBuffer((glitch::core *)(v4 + 1), v7);
  if ( this != (glitch::video *)((char *)this + v4) )
  {
    v10 = 0;
    do
    {
      v11 = *((char *)this + v10);
      if ( v11 <= 0xFF )
      {
        v8 = (void *)tolower_tab_;
        LOWORD(v11) = *(_WORD *)(tolower_tab_ + 2 * v11 + 2);
      }
      v9[v10++] = v11;
    }
    while ( v10 != v4 );
  }
  v9[v4] = 0;
  v12 = (char *)dword_9F8290;
  if ( dword_9F8290 )
  {
    v13 = &glitch::video::guessShaderVertexAttribute(char const*)::VertexAttributeDictionary;
    while ( 1 )
    {
      v14 = LC_API_STRCMP_0(*((const char **)v12 + 4), v9);
      if ( v14 >= 0 )
        v15 = *((char **)v12 + 2);
      else
        v15 = *((char **)v12 + 3);
      if ( v14 < 0 )
        v12 = v13;
      v13 = v12;
      if ( !v15 )
        break;
      v12 = v15;
    }
    if ( v12 != &glitch::video::guessShaderVertexAttribute(char const*)::VertexAttributeDictionary
      && LC_API_STRCMP_0(v9, *((const char **)v12 + 4)) < 0 )
    {
      v12 = &glitch::video::guessShaderVertexAttribute(char const*)::VertexAttributeDictionary;
    }
  }
  else
  {
    v12 = &glitch::video::guessShaderVertexAttribute(char const*)::VertexAttributeDictionary;
  }
  if ( v12 == &glitch::video::guessShaderVertexAttribute(char const*)::VertexAttributeDictionary )
    v16 = 255;
  else
    v16 = *((_DWORD *)v12 + 5);
  if ( v9 )
    glitch::core::releaseProcessBuffer((glitch::core *)v9, v8);
  glitch::core::setProcessBufferHeapExcessEnabled(isProcessBufferHeapExcessEnabled, (bool)v8);
  return v16;
}


// ===== 6dc4e4 glitch::video::IRenderTarget::~IRenderTarget() =====
void __fastcall glitch::video::IRenderTarget::~IRenderTarget(glitch::video::IRenderTarget *this)
{
  ;
}


// ===== 6dc4e8 glitch::video::IRenderTarget::IRenderTarget(glitch::video::IVideoDriver *,glitch::core::dimension2d<int> const&) =====
_DWORD *__fastcall glitch::video::IRenderTarget::IRenderTarget(_DWORD *result, int a2, _DWORD *a3)
{
  int v3; // r1
  int v4; // r2

  result[2] = a2;
  result[1] = 0;
  *result = off_98AE30;
  result[3] = *a3;
  result[4] = a3[1];
  v3 = a3[1];
  v4 = *a3;
  result[6] = 0;
  result[8] = v3;
  result[7] = v4;
  result[5] = 0;
  return result;
}


// ===== 6dc548 glitch::video::IRenderTarget::IRenderTarget(glitch::video::IVideoDriver *,glitch::core::dimension2d<int> const&) =====
_DWORD *__fastcall glitch::video::IRenderTarget::IRenderTarget(_DWORD *result, int a2, _DWORD *a3)
{
  int v3; // r1
  int v4; // r2

  result[2] = a2;
  result[1] = 0;
  *result = off_98AE30;
  result[3] = *a3;
  result[4] = a3[1];
  v3 = a3[1];
  v4 = *a3;
  result[6] = 0;
  result[8] = v3;
  result[7] = v4;
  result[5] = 0;
  return result;
}


// ===== 6dc5a8 glitch::video::IRenderTarget::setViewport(glitch::core::rect<int> const&) =====
int __fastcall glitch::video::IRenderTarget::setViewport(_DWORD *a1, _DWORD *a2)
{
  int v3; // r4
  int v4; // r12
  int v5; // r0
  int v6; // r3
  bool v7; // cc
  int v8; // r3
  int v9; // r1
  bool v10; // nf
  int result; // r0
  int v12; // r1
  _DWORD *v13; // r3

  v3 = a1[3];
  a1[5] = *a2;
  v4 = a1[4];
  a1[6] = a2[1];
  v5 = a2[2];
  a1[7] = v5;
  v6 = a2[3];
  if ( v3 < v5 )
    a1[7] = v3;
  a1[8] = v6;
  v7 = v4 < v6;
  v8 = a1[5];
  v9 = a1[6];
  if ( v7 )
    a1[8] = v4;
  v10 = v8 < 0;
  if ( v8 < 0 )
    v8 = 0;
  result = a1[8];
  if ( v10 )
    a1[5] = v8;
  if ( v9 < 0 )
  {
    v9 = 0;
    a1[6] = 0;
  }
  v7 = v9 <= result;
  v12 = a1[7];
  if ( !v7 )
    a1[6] = result;
  v7 = v8 <= v12;
  v13 = (_DWORD *)a1[2];
  if ( !v7 )
    a1[5] = v12;
  if ( a1 == *(_DWORD **)(v13[51] - 4) )
    return (*(int (__fastcall **)(_DWORD *, _DWORD *))(*v13 + 488))(v13, a1 + 5);
  return result;
}


// ===== 6dc650 `global constructor keyed to'.._source_glitch_video_IRenderTarget.cpp =====
void `global constructor keyed to'.._source_glitch_video_IRenderTarget.cpp()
{
  dword_9F82B0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F82AC = 1056964608;
}


// ===== 6dc670 glitch::video::IRenderTarget::~IRenderTarget() =====
void __fastcall glitch::video::IRenderTarget::~IRenderTarget(glitch::video::IRenderTarget *this)
{
  LC_API_FREE_0(this);
}


// ===== 6dc684 glitch::video::CDriverBinding::onDelete(void) =====
void __fastcall glitch::video::CDriverBinding::onDelete(glitch::video::CDriverBinding *this)
{
  ;
}


// ===== 6dc688 glitch::video::detail::getStrides(uint,boost::intrusive_ptr<glitch::video::CVertexStreams> const&) =====
int __fastcall glitch::video::detail::getStrides(int a1, int *a2)
{
  int v2; // r2
  int v3; // r1
  int result; // r0
  int v5; // r12
  int v6; // r5

  v2 = a1;
  v3 = *a2;
  if ( !a1 )
    return 0;
  result = 0;
  do
  {
    v5 = 1 << *(_WORD *)(v3 + 28);
    if ( (v2 & v5) != 0 )
    {
      v6 = *(unsigned __int16 *)(v3 + 30);
      *(_DWORD *)(v3 + 24) = result;
      v2 &= ~v5;
      result = (unsigned __int16)(result
                                + *(_WORD *)(v3 + 32)
                                * glitch::video::detail::SVertexAttributeTypeInspection::ValueTypeSize[v6]);
    }
    v3 += 16;
  }
  while ( v2 );
  return result;
}


// ===== 6dc6fc `global constructor keyed to'.._source_glitch_video_CDriverBinding.cpp =====
void `global constructor keyed to'.._source_glitch_video_CDriverBinding.cpp()
{
  dword_9F82BC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F82B8 = 1056964608;
}


// ===== 6dc71c glitch::video::CDriverBinding::~CDriverBinding() =====
void __fastcall glitch::video::CDriverBinding::~CDriverBinding(glitch::video::CDriverBinding *this)
{
  int v1; // r1
  int v3; // r0
  void (__fastcall *v4)(int, int, glitch::video::CVertexStreams **, _DWORD, _DWORD, glitch::video::CDriverBinding *); // r12
  glitch::IReferenceCounted *v5; // r0
  glitch::video::CVertexStreams *v6; // [sp+Ch] [bp-8h] BYREF

  v1 = *((_DWORD *)this + 1);
  *(_DWORD *)this = off_98AE50;
  if ( v1 )
  {
    v3 = *((_DWORD *)this + 8);
    v4 = *(void (__fastcall **)(int, int, glitch::video::CVertexStreams **, _DWORD, _DWORD, glitch::video::CDriverBinding *))(*(_DWORD *)v3 + 500);
    v6 = nullptr;
    v4(v3, 1, &v6, 0, 0, this);
    boost::intrusive_ptr<glitch::video::CVertexStreams>::~intrusive_ptr(&v6);
    v5 = *((glitch::IReferenceCounted **)this + 1);
    if ( v5 )
      glitch::IReferenceCounted::drop(v5);
  }
}


// ===== 6dc7a4 glitch::video::CDriverBinding::~CDriverBinding() =====
void __fastcall glitch::video::CDriverBinding::~CDriverBinding(glitch::video::CDriverBinding *this)
{
  glitch::video::CDriverBinding::~CDriverBinding(this);
  LC_API_FREE_0(this);
}


// ===== 6dc7c0 glitch::video::CDriverBinding::~CDriverBinding() =====
void __fastcall glitch::video::CDriverBinding::~CDriverBinding(glitch::video::CDriverBinding *this)
{
  int v1; // r1
  int v3; // r0
  void (__fastcall *v4)(int, int, glitch::video::CVertexStreams **, _DWORD, _DWORD, glitch::video::CDriverBinding *); // r12
  glitch::IReferenceCounted *v5; // r0
  glitch::video::CVertexStreams *v6; // [sp+Ch] [bp-8h] BYREF

  v1 = *((_DWORD *)this + 1);
  *(_DWORD *)this = off_98AE50;
  if ( v1 )
  {
    v3 = *((_DWORD *)this + 8);
    v4 = *(void (__fastcall **)(int, int, glitch::video::CVertexStreams **, _DWORD, _DWORD, glitch::video::CDriverBinding *))(*(_DWORD *)v3 + 500);
    v6 = nullptr;
    v4(v3, 1, &v6, 0, 0, this);
    boost::intrusive_ptr<glitch::video::CVertexStreams>::~intrusive_ptr(&v6);
    v5 = *((glitch::IReferenceCounted **)this + 1);
    if ( v5 )
      glitch::IReferenceCounted::drop(v5);
  }
}


// ===== 6dc848 glitch::video::CVertexStreams::setStreamBuffer(glitch::video::SVertexStream *,boost::intrusive_ptr<glitch::video::IBuffer> const&,bool) [clone] =====
int __fastcall glitch::video::CVertexStreams::setStreamBuffer(
        glitch::video::CVertexStreams *this,
        glitch::IReferenceCounted **a2,
        glitch::IReferenceCounted **a3)
{
  glitch::IReferenceCounted *v3; // r3
  glitch::IReferenceCounted *v5; // r0

  v3 = *a3;
  if ( *a3 )
    ++*((_DWORD *)v3 + 1);
  v5 = *a2;
  *a2 = v3;
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  return glitch::video::CVertexStreams::updateHomogeneityInternal((int)this, 1);
}


// ===== 6dc888 glitch::video::detail::assignBuffer(boost::intrusive_ptr<glitch::video::IBuffer> const&,uint,int,uint,boost::intrusive_ptr<glitch::video::CVertexStreams> const&) =====
int __fastcall glitch::video::detail::assignBuffer(
        int result,
        __int16 a2,
        int a3,
        int a4,
        glitch::video::CVertexStreams **a5)
{
  int v5; // r5
  glitch::IReferenceCounted **v6; // r9
  int i; // r4
  int v10; // r6
  int v11; // r3

  v5 = a4;
  v6 = (glitch::IReferenceCounted **)result;
  if ( a4 )
  {
    for ( i = (int)*a5 + 20; ; i += 16 )
    {
      v10 = 1 << *(_WORD *)(i + 8);
      if ( (v5 & v10) != 0 )
      {
        result = glitch::video::CVertexStreams::setStreamBuffer(*a5, (glitch::IReferenceCounted **)i, v6);
        v5 &= ~v10;
        v11 = *(_DWORD *)(i + 4) + a3;
        *(_WORD *)(i + 14) = a2;
        *(_DWORD *)(i + 4) = v11;
        if ( !v5 )
          return result;
      }
      else if ( !v5 )
      {
        return result;
      }
    }
  }
  return result;
}


// ===== 6dc900 glitch::video::detail::clearBuffer(uint,uint,boost::intrusive_ptr<glitch::video::CVertexStreams> const&) =====
_DWORD *__fastcall glitch::video::detail::clearBuffer(_DWORD *a1, int a2, int a3, glitch::video::CVertexStreams **a4)
{
  int v5; // r4
  int i; // r5
  glitch::IReferenceCounted *v8; // r3
  int v9; // r5
  int v10; // r10
  glitch::video::CVertexStreams *v11; // r0
  int v12; // r10
  int v13; // r3
  int v14; // r3
  glitch::video::CVertexStreams *v15; // r0
  int v16; // r3
  glitch::IReferenceCounted *v18; // [sp+0h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v19; // [sp+4h] [bp-8h] BYREF

  v5 = (int)*a4 + 20;
  for ( i = 1 << *((_WORD *)*a4 + 14); (i & a3) == 0; i = 1 << *(_WORD *)(v5 + 8) )
    v5 += 16;
  v8 = *(glitch::IReferenceCounted **)v5;
  v9 = a3 & ~i;
  *a1 = *(_DWORD *)v5;
  if ( v8 )
    ++*((_DWORD *)v8 + 1);
  v10 = *(unsigned __int16 *)(v5 + 14);
  v11 = *a4;
  v19 = nullptr;
  v12 = v10 * a2;
  glitch::video::CVertexStreams::setStreamBuffer(v11, (glitch::IReferenceCounted **)v5, &v19);
  if ( v19 )
    glitch::IReferenceCounted::drop(v19);
  v13 = *(_DWORD *)(v5 + 4) - v12;
  *(_WORD *)(v5 + 14) = 0;
  *(_DWORD *)(v5 + 4) = v13;
  if ( v9 )
  {
    while ( 1 )
    {
      v14 = 1 << *(_WORD *)(v5 + 8);
      if ( (v9 & v14) != 0 )
      {
        v15 = *a4;
        v9 &= ~v14;
        v18 = nullptr;
        glitch::video::CVertexStreams::setStreamBuffer(v15, (glitch::IReferenceCounted **)v5, &v18);
        if ( v18 )
          glitch::IReferenceCounted::drop(v18);
        v16 = *(_DWORD *)(v5 + 4);
        *(_WORD *)(v5 + 14) = 0;
        *(_DWORD *)(v5 + 4) = v16 - v12;
      }
      if ( !v9 )
        break;
      v5 += 16;
    }
  }
  return a1;
}


// ===== 6dca20 glitch::video::CCommonGLDriverBase::CRenderTargetBase::copyAttachment(glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment &,glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment const&) =====
void __fastcall glitch::video::CCommonGLDriverBase::CRenderTargetBase::copyAttachment(
        glitch::video::CCommonGLDriverBase::CRenderTargetBase *this,
        glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *a2,
        const glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *a3)
{
  int v5; // r3
  glitch::IReferenceCounted *v6; // r0
  char v7; // r12
  char v8; // r1

  if ( *((_DWORD *)this + 1) )
    glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment::~SAttachment(this);
  v5 = *((_DWORD *)a2 + 1);
  if ( v5 )
  {
    v6 = *((glitch::IReferenceCounted **)a2 + 1);
    if ( *(_WORD *)a2 )
    {
      ++*(_DWORD *)(v5 + 4);
      *((_BYTE *)this + 3) = 0;
      *((_DWORD *)this + 1) = v5;
      *(_WORD *)this = 1;
      *((_BYTE *)this + 2) = 0;
    }
    else
    {
      ++*(_DWORD *)(v5 + 4);
      v7 = *((_BYTE *)a2 + 3);
      v8 = *((_BYTE *)a2 + 2);
      *(_WORD *)this = 0;
      *((_BYTE *)this + 3) = v7;
      *((_BYTE *)this + 2) = v8;
      *((_DWORD *)this + 1) = v5;
    }
    ++*(_DWORD *)(v5 + 4);
    glitch::IReferenceCounted::drop(v6);
  }
}


// ===== 6dcac0 glitch::video::CCommonGLDriverBase::SShadowRenderState::SShadowRenderState(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::SShadowRenderState::SShadowRenderState(int this)
{
  *(_DWORD *)(this + 28) = 3;
  *(_BYTE *)(this + 44) = 7;
  *(_BYTE *)this = 0;
  *(_BYTE *)(this + 1) = 0;
  *(_BYTE *)(this + 2) = 1;
  *(_BYTE *)(this + 3) = 1;
  *(_BYTE *)(this + 4) = 0;
  *(_BYTE *)(this + 8) = 0;
  *(_BYTE *)(this + 9) = 0;
  *(_BYTE *)(this + 10) = 0;
  *(_BYTE *)(this + 11) = 0;
  *(_BYTE *)(this + 12) = 0;
  *(_BYTE *)(this + 13) = 0;
  *(_BYTE *)(this + 14) = 0;
  *(_BYTE *)(this + 15) = 0;
  *(_BYTE *)(this + 16) = 0;
  *(_DWORD *)(this + 20) = 0;
  *(_DWORD *)(this + 24) = 0;
  *(_DWORD *)(this + 32) = 0;
  *(_DWORD *)(this + 36) = 0;
  *(_BYTE *)(this + 40) = 1;
  *(_BYTE *)(this + 41) = 1;
  *(_BYTE *)(this + 42) = 1;
  *(_BYTE *)(this + 43) = 1;
  *(_BYTE *)(this + 45) = 0;
  *(_BYTE *)(this + 46) = -1;
  *(_BYTE *)(this + 47) = 0;
  *(_BYTE *)(this + 48) = 0;
  *(_BYTE *)(this + 49) = 0;
  *(_BYTE *)(this + 50) = 0;
  *(_BYTE *)(this + 51) = 0;
  *(_BYTE *)(this + 52) = -1;
  *(_BYTE *)(this + 53) = 0;
  *(_DWORD *)(this + 56) = 0;
  *(_DWORD *)(this + 140) = 0;
  *(_BYTE *)(this + 60) = 1;
  *(_BYTE *)(this + 71) = -1;
  *(_DWORD *)(this + 92) = 0;
  *(_DWORD *)(this + 100) = 1065353216;
  *(_BYTE *)(this + 61) = 0;
  *(_WORD *)(this + 62) = 0;
  *(_BYTE *)(this + 64) = 0;
  *(_BYTE *)(this + 65) = 0;
  *(_BYTE *)(this + 66) = 0;
  *(_BYTE *)(this + 67) = 0;
  *(_BYTE *)(this + 68) = 0;
  *(_BYTE *)(this + 69) = 0;
  *(_BYTE *)(this + 70) = 0;
  *(_DWORD *)(this + 72) = 1065353216;
  *(_DWORD *)(this + 76) = 0;
  *(_DWORD *)(this + 80) = 1065353216;
  *(_DWORD *)(this + 84) = 1065353216;
  *(_DWORD *)(this + 88) = 1065353216;
  *(_DWORD *)(this + 96) = 1065353216;
  *(_DWORD *)(this + 104) = 0;
  *(_DWORD *)(this + 108) = 0;
  *(_DWORD *)(this + 112) = 0;
  *(_DWORD *)(this + 116) = 0;
  *(_DWORD *)(this + 120) = 0;
  *(_DWORD *)(this + 124) = 0;
  *(_DWORD *)(this + 128) = 0;
  *(_DWORD *)(this + 132) = 0;
  *(_DWORD *)(this + 136) = 0;
  return this;
}


// ===== 6dcbe4 glitch::video::CCommonGLDriverBase::CBufferBase::getMappedPtr(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::CBufferBase::getMappedPtr(
        glitch::video::CCommonGLDriverBase::CBufferBase *this)
{
  return *((_DWORD *)this + 7);
}


// ===== 6dcbec glitch::video::CCommonGLDriverBase::CTextureBase::getMappedPtr(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::CTextureBase::getMappedPtr(
        glitch::video::CCommonGLDriverBase::CTextureBase *this)
{
  return 0;
}


// ===== 6dcbf4 glitch::video::CCommonGLDriverBase::CTextureBase::unmapImpl(void) =====
void __fastcall glitch::video::CCommonGLDriverBase::CTextureBase::unmapImpl(
        glitch::video::CCommonGLDriverBase::CTextureBase *this)
{
  ;
}


// ===== 6dcbf8 glitch::video::CCommonGLDriverBase::CFramebufferBase::unbind(void) =====
void __fastcall glitch::video::CCommonGLDriverBase::CFramebufferBase::unbind(
        glitch::video::CCommonGLDriverBase::CFramebufferBase *this)
{
  ;
}


// ===== 6dcbfc glitch::video::CCommonGLDriverBase::CRenderTargetBase::getTargetCount(glitch::video::IRenderTarget::E_ATTACHMENT_TYPE) =====
int __fastcall glitch::video::CCommonGLDriverBase::CRenderTargetBase::getTargetCount(int a1, int a2)
{
  int v2; // r3
  int result; // r0

  switch ( a2 )
  {
    case 0:
      result = *(unsigned __int8 *)(a1 + 89);
      break;
    case 1:
      result = *(_DWORD *)(a1 + 76) != 0;
      break;
    case 2:
      result = *(_DWORD *)(a1 + 84) != 0;
      break;
    case 3:
      v2 = *(_DWORD *)(a1 + 76);
      if ( !v2 )
        goto LABEL_3;
      result = v2 == *(_DWORD *)(a1 + 84);
      break;
    default:
LABEL_3:
      result = 0;
      break;
  }
  return result;
}


// ===== 6dcc68 glitch::video::CCommonGLDriverBase::CRenderTargetBase::removeTarget(glitch::video::IRenderTarget::E_ATTACHMENT_TYPE,uint) =====
int __fastcall glitch::video::CCommonGLDriverBase::CRenderTargetBase::removeTarget(int a1, int a2, unsigned int a3)
{
  glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *v5; // r7
  const glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *v6; // r2
  int v7; // r8
  unsigned int v8; // r5
  int v9; // r8
  glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *v10; // r1

  switch ( a2 )
  {
    case 0:
      v5 = (glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *)(a1 + 8 * (a3 + 5));
      glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment::~SAttachment(v5);
      v7 = (unsigned __int8)(*(_BYTE *)(a1 + 89) - 1);
      *(_BYTE *)(a1 + 89) = v7;
      if ( v7 )
      {
        v8 = (unsigned __int8)a3;
        v9 = (unsigned __int8)(v7 - 1);
        while ( a3 > v8 )
        {
          v10 = (glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *)(a1 + 8 * (v8 + 6));
          v8 = (unsigned __int8)(v8 + 1);
          glitch::video::CCommonGLDriverBase::CRenderTargetBase::copyAttachment(v5, v10, v6);
        }
        glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment::~SAttachment((glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *)(a1 + 8 * (v9 + 5)));
      }
      goto LABEL_6;
    case 1:
      glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment::~SAttachment((glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *)(a1 + 72));
      *(_BYTE *)(a1 + 90) = 1;
      return 1;
    case 2:
      goto LABEL_9;
    case 3:
      if ( *(_DWORD *)(a1 + 76) != *(_DWORD *)(a1 + 84) )
        return 0;
      glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment::~SAttachment((glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *)(a1 + 72));
LABEL_9:
      glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment::~SAttachment((glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *)(a1 + 80));
      *(_BYTE *)(a1 + 90) = 1;
      return 1;
    default:
LABEL_6:
      *(_BYTE *)(a1 + 90) = 1;
      return 1;
  }
}


// ===== 6dcd4c glitch::video::CCommonGLDriverBase::CRenderTargetBase::getColorFormat(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::CRenderTargetBase::getColorFormat(
        glitch::video::CCommonGLDriverBase::CRenderTargetBase *this)
{
  return *((unsigned __int8 *)this + 88);
}


// ===== 6dcd54 glitch::video::CCommonGLDriverBase::SCommonShadowState::SCommonShadowState(void) =====
_DWORD *__fastcall glitch::video::CCommonGLDriverBase::SCommonShadowState::SCommonShadowState(_DWORD *this)
{
  *(this + 4) = 0;
  *(this + 6) = 4;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  return this;
}


// ===== 6dcd90 glitch::video::CCommonGLDriverBase::SCommonShadowState::SCommonShadowState(void) =====
_DWORD *__fastcall glitch::video::CCommonGLDriverBase::SCommonShadowState::SCommonShadowState(_DWORD *this)
{
  *(this + 4) = 0;
  *(this + 6) = 4;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  return this;
}


// ===== 6dcdcc glitch::video::CCommonGLDriverBase::getColorFormat(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getColorFormat(glitch::video::CCommonGLDriverBase *this)
{
  return *((_DWORD *)this + 161);
}


// ===== 6dcdd4 glitch::video::CCommonGLDriverBase::getTransform(glitch::video::E_TRANSFORMATION_STATE) =====
int __fastcall glitch::video::CCommonGLDriverBase::getTransform(int a1, int a2)
{
  return a1 + 68 * a2 + 648;
}


// ===== 6dcde8 glitch::video::CCommonGLDriverBase::getBlendEnable(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getBlendEnable(glitch::video::CCommonGLDriverBase *this)
{
  return *((unsigned __int8 *)this + 452);
}


// ===== 6dcdf0 glitch::video::CCommonGLDriverBase::getBlendColor(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getBlendColor(glitch::video::CCommonGLDriverBase *this)
{
  return *((unsigned __int8 *)this + 516)
       | (unsigned __int16)(*((unsigned __int8 *)this + 517) << 8)
       | (*((unsigned __int8 *)this + 518) << 16) & 0xFFFFFF
       | (*((unsigned __int8 *)this + 519) << 24);
}


// ===== 6dce24 glitch::video::CCommonGLDriverBase::getBlendEquation(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getBlendEquation(glitch::video::CCommonGLDriverBase *this)
{
  return *((_DWORD *)this + 127);
}


// ===== 6dce2c glitch::video::CCommonGLDriverBase::getBlendFunc(glitch::video::E_BLEND_FACTOR &,glitch::video::E_BLEND_FACTOR &) =====
int __fastcall glitch::video::CCommonGLDriverBase::getBlendFunc(int result, _DWORD *a2, _DWORD *a3)
{
  *a2 = *(unsigned __int8 *)(result + 512);
  *a3 = *(unsigned __int8 *)(result + 513);
  return result;
}


// ===== 6dce40 glitch::video::CCommonGLDriverBase::getColorMask(bool &,bool &,bool &,bool &) =====
_BYTE *__fastcall glitch::video::CCommonGLDriverBase::getColorMask(_BYTE *this, bool *a2, bool *a3, bool *a4, bool *a5)
{
  *a2 = *(this + 492);
  *a3 = *(this + 493);
  *a4 = *(this + 494);
  *a5 = *(this + 495);
  return this;
}


// ===== 6dce68 glitch::video::CCommonGLDriverBase::getClearColor(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getClearColor(glitch::video::CCommonGLDriverBase *this)
{
  return *((unsigned __int8 *)this + 520)
       | (unsigned __int16)(*((unsigned __int8 *)this + 521) << 8)
       | (*((unsigned __int8 *)this + 522) << 16) & 0xFFFFFF
       | (*((unsigned __int8 *)this + 523) << 24);
}


// ===== 6dce9c glitch::video::CCommonGLDriverBase::getCullFaceEnable(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getCullFaceEnable(glitch::video::CCommonGLDriverBase *this)
{
  return *((unsigned __int8 *)this + 453);
}


// ===== 6dcea4 glitch::video::CCommonGLDriverBase::getCullFace(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getCullFace(glitch::video::CCommonGLDriverBase *this)
{
  return *((_DWORD *)this + 118);
}


// ===== 6dceac glitch::video::CCommonGLDriverBase::getFrontFace(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getFrontFace(glitch::video::CCommonGLDriverBase *this)
{
  return *((_DWORD *)this + 119);
}


// ===== 6dceb4 glitch::video::CCommonGLDriverBase::getDepthTestEnable(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getDepthTestEnable(glitch::video::CCommonGLDriverBase *this)
{
  return *((unsigned __int8 *)this + 454);
}


// ===== 6dcebc glitch::video::CCommonGLDriverBase::getDepthFunc(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getDepthFunc(glitch::video::CCommonGLDriverBase *this)
{
  return *((_DWORD *)this + 120);
}


// ===== 6dcec4 glitch::video::CCommonGLDriverBase::getDepthMask(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getDepthMask(glitch::video::CCommonGLDriverBase *this)
{
  return *((unsigned __int8 *)this + 455);
}


// ===== 6dcecc glitch::video::CCommonGLDriverBase::getClearDepth(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getClearDepth(glitch::video::CCommonGLDriverBase *this)
{
  return *((_DWORD *)this + 131);
}


// ===== 6dced4 glitch::video::CCommonGLDriverBase::getDepthRange(float &,float &) =====
int __fastcall glitch::video::CCommonGLDriverBase::getDepthRange(int this, float *a2, float *a3)
{
  *a2 = *(float *)(this + 528);
  *a3 = *(float *)(this + 532);
  return this;
}


// ===== 6dcee8 glitch::video::CCommonGLDriverBase::getDitherEnable(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getDitherEnable(glitch::video::CCommonGLDriverBase *this)
{
  return *((unsigned __int8 *)this + 456);
}


// ===== 6dcef0 glitch::video::CCommonGLDriverBase::getLineWidth(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getLineWidth(glitch::video::CCommonGLDriverBase *this)
{
  return *((_DWORD *)this + 134);
}


// ===== 6dcef8 glitch::video::CCommonGLDriverBase::getPointSize(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getPointSize(glitch::video::CCommonGLDriverBase *this)
{
  return *((_DWORD *)this + 135);
}


// ===== 6dcf00 glitch::video::CCommonGLDriverBase::getPolygonModeFront(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getPolygonModeFront(glitch::video::CCommonGLDriverBase *this)
{
  return *((_DWORD *)this + 121);
}


// ===== 6dcf08 glitch::video::CCommonGLDriverBase::getPolygonModeBack(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getPolygonModeBack(glitch::video::CCommonGLDriverBase *this)
{
  return *((_DWORD *)this + 122);
}


// ===== 6dcf10 glitch::video::CCommonGLDriverBase::getPolygonOffsetFillEnable(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getPolygonOffsetFillEnable(glitch::video::CCommonGLDriverBase *this)
{
  return *((unsigned __int8 *)this + 460);
}


// ===== 6dcf18 glitch::video::CCommonGLDriverBase::getPolygonOffsetLineEnable(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getPolygonOffsetLineEnable(glitch::video::CCommonGLDriverBase *this)
{
  return *((unsigned __int8 *)this + 461);
}


// ===== 6dcf20 glitch::video::CCommonGLDriverBase::getPolygonOffsetPointEnable(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getPolygonOffsetPointEnable(
        glitch::video::CCommonGLDriverBase *this)
{
  return *((unsigned __int8 *)this + 462);
}


// ===== 6dcf28 glitch::video::CCommonGLDriverBase::getPolygonOffset(float &,float &) =====
int __fastcall glitch::video::CCommonGLDriverBase::getPolygonOffset(int this, float *a2, float *a3)
{
  *a2 = *(float *)(this + 544);
  *a3 = *(float *)(this + 548);
  return this;
}


// ===== 6dcf3c glitch::video::CCommonGLDriverBase::getSampleAlphaToCoverageEnable(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getSampleAlphaToCoverageEnable(
        glitch::video::CCommonGLDriverBase *this)
{
  return *((unsigned __int8 *)this + 464);
}


// ===== 6dcf44 glitch::video::CCommonGLDriverBase::getSampleCoverageEnable(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getSampleCoverageEnable(glitch::video::CCommonGLDriverBase *this)
{
  return *((unsigned __int8 *)this + 465);
}


// ===== 6dcf4c glitch::video::CCommonGLDriverBase::getSampleCoverageInvert(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getSampleCoverageInvert(glitch::video::CCommonGLDriverBase *this)
{
  return *((unsigned __int8 *)this + 466);
}


// ===== 6dcf54 glitch::video::CCommonGLDriverBase::getSampleCoverageValue(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getSampleCoverageValue(glitch::video::CCommonGLDriverBase *this)
{
  return *((_DWORD *)this + 138);
}


// ===== 6dcf5c glitch::video::CCommonGLDriverBase::getScissorEnable(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getScissorEnable(glitch::video::CCommonGLDriverBase *this)
{
  return *((unsigned __int8 *)this + 467);
}


// ===== 6dcf64 glitch::video::CCommonGLDriverBase::getScissor(void) =====
char *__fastcall glitch::video::CCommonGLDriverBase::getScissor(glitch::video::CCommonGLDriverBase *this)
{
  return (char *)this + 556;
}


// ===== 6dcf6c glitch::video::CCommonGLDriverBase::getStencilTestEnable(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getStencilTestEnable(glitch::video::CCommonGLDriverBase *this)
{
  return *((unsigned __int8 *)this + 468);
}


// ===== 6dcf74 glitch::video::CCommonGLDriverBase::getStencilFunc(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getStencilFunc(glitch::video::CCommonGLDriverBase *this)
{
  return *((unsigned __int8 *)this + 496);
}


// ===== 6dcf7c glitch::video::CCommonGLDriverBase::getStencilFuncRef(bool *) =====
int __fastcall glitch::video::CCommonGLDriverBase::getStencilFuncRef(
        glitch::video::CCommonGLDriverBase *this,
        bool *a2)
{
  return *((unsigned __int8 *)this + 497);
}


// ===== 6dcf84 glitch::video::CCommonGLDriverBase::getStencilFuncMask(bool *) =====
int __fastcall glitch::video::CCommonGLDriverBase::getStencilFuncMask(
        glitch::video::CCommonGLDriverBase *this,
        bool *a2)
{
  return *((unsigned __int8 *)this + 498);
}


// ===== 6dcf8c glitch::video::CCommonGLDriverBase::getStencilOpFail(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getStencilOpFail(glitch::video::CCommonGLDriverBase *this)
{
  return *((unsigned __int8 *)this + 500);
}


// ===== 6dcf94 glitch::video::CCommonGLDriverBase::getStencilOpZFail(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getStencilOpZFail(glitch::video::CCommonGLDriverBase *this)
{
  return *((unsigned __int8 *)this + 501);
}


// ===== 6dcf9c glitch::video::CCommonGLDriverBase::getStencilOpZPass(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getStencilOpZPass(glitch::video::CCommonGLDriverBase *this)
{
  return *((unsigned __int8 *)this + 502);
}


// ===== 6dcfa4 glitch::video::CCommonGLDriverBase::getStencilMask(bool *) =====
int __fastcall glitch::video::CCommonGLDriverBase::getStencilMask(glitch::video::CCommonGLDriverBase *this, bool *a2)
{
  return *((unsigned __int8 *)this + 504);
}


// ===== 6dcfac glitch::video::CCommonGLDriverBase::getClearStencil(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::getClearStencil(glitch::video::CCommonGLDriverBase *this)
{
  return *((unsigned __int8 *)this + 505);
}


// ===== 6dcfb4 glitch::video::CCommonGLDriverBase::SShadowRenderState::getRenderState<glitch::video::detail::driver::SRenderState>(glitch::video::detail::driver::SRenderState &) =====
int __fastcall glitch::video::CCommonGLDriverBase::SShadowRenderState::getRenderState<glitch::video::detail::driver::SRenderState>(
        int result,
        int a2)
{
  int v2; // r4
  int v3; // r12
  int v4; // r2
  int v5; // r3
  int v6; // r4
  unsigned int v7; // r2
  unsigned int v8; // r2
  unsigned int v9; // r2
  unsigned int v10; // r3
  char v11; // r4
  char v12; // r12
  int v13; // r2

  v2 = *(unsigned __int8 *)(result + 40);
  v3 = *(unsigned __int8 *)(result + 41);
  v4 = *(unsigned __int8 *)(result + 42);
  v5 = *(unsigned __int8 *)(result + 43);
  if ( *(_BYTE *)(result + 40) )
    v2 = 0x10000;
  if ( *(_BYTE *)(result + 41) )
    v3 = 0x20000;
  v6 = v3 | v2;
  if ( *(_BYTE *)(result + 42) )
    v4 = 0x40000;
  if ( *(_BYTE *)(result + 43) )
    v5 = 0x80000;
  v7 = v6 | v4 | v5 | *(_DWORD *)a2 & 0xFFF0FFFF;
  *(_DWORD *)a2 = v7;
  if ( *(_BYTE *)(result + 4) )
    v8 = v7 | 0x100000;
  else
    v8 = v7 & 0xFFEFFFFF;
  *(_DWORD *)a2 = v8;
  if ( *(_BYTE *)(result + 15) )
    v9 = v8 | 0x200000;
  else
    v9 = v8 & 0xFFDFFFFF;
  *(_DWORD *)a2 = v9;
  v10 = v9 & 0xFFFFFF00 | *(unsigned __int8 *)(result + 52);
  *(_DWORD *)a2 = v10;
  *(_DWORD *)a2 = v10 & 0xFFFF00FF | (*(unsigned __int8 *)(result + 53) << 8);
  LOBYTE(v10) = *(_BYTE *)(result + 68);
  v11 = *(_BYTE *)(result + 70);
  v12 = *(_BYTE *)(result + 69);
  *(_BYTE *)(a2 + 7) = *(_BYTE *)(result + 71);
  *(_BYTE *)(a2 + 6) = v11;
  *(_BYTE *)(a2 + 5) = v12;
  *(_BYTE *)(a2 + 4) = v10;
  *(_DWORD *)(a2 + 8) = *(_DWORD *)(result + 72);
  v13 = *(_DWORD *)(result + 80);
  *(_DWORD *)(a2 + 12) = *(_DWORD *)(result + 76);
  *(_DWORD *)(a2 + 16) = v13;
  *(_DWORD *)(a2 + 20) = *(_DWORD *)(result + 104);
  *(_DWORD *)(a2 + 24) = *(_DWORD *)(result + 108);
  *(_DWORD *)(a2 + 28) = *(_DWORD *)(result + 112);
  *(_DWORD *)(a2 + 32) = *(_DWORD *)(result + 116);
  return result;
}


// ===== 6dd0ac glitch::video::CCommonGLDriverBase::getRenderState(glitch::video::detail::driver::SRenderState &) =====
int __fastcall glitch::video::CCommonGLDriverBase::getRenderState(int a1, int a2)
{
  return glitch::video::CCommonGLDriverBase::SShadowRenderState::getRenderState<glitch::video::detail::driver::SRenderState>(
           a1 + 452,
           a2);
}


// ===== 6dd0b4 glitch::video::CCommonGLDriverBase::CRenderTargetBase::~CRenderTargetBase() =====
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


// ===== 6dd10c glitch::video::CCommonGLDriverBase::CFramebufferBase::~CFramebufferBase() =====
void __fastcall glitch::video::CCommonGLDriverBase::CFramebufferBase::~CFramebufferBase(
        glitch::video::CCommonGLDriverBase::CFramebufferBase *this)
{
  ;
}


// ===== 6dd110 `global constructor keyed to'.._source_glitch_video_CCommonGLDriverBase.cpp =====
void `global constructor keyed to'.._source_glitch_video_CCommonGLDriverBase.cpp()
{
  dword_9F82C8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F82C4 = 1056964608;
}


// ===== 6dd130 glitch::video::CCommonGLDriverBase::CFramebufferBase::~CFramebufferBase() =====
void __fastcall glitch::video::CCommonGLDriverBase::CFramebufferBase::~CFramebufferBase(
        glitch::video::CCommonGLDriverBase::CFramebufferBase *this)
{
  LC_API_FREE_0(this);
}


// ===== 6dd144 glitch::video::CCommonGLDriverBase::CRenderTargetBase::~CRenderTargetBase() =====
void __fastcall glitch::video::CCommonGLDriverBase::CRenderTargetBase::~CRenderTargetBase(
        glitch::video::CCommonGLDriverBase::CRenderTargetBase *this)
{
  glitch::video::CCommonGLDriverBase::CRenderTargetBase::~CRenderTargetBase(this);
  LC_API_FREE_0(this);
}


// ===== 6dd160 glitch::video::CCommonGLDriverBase::CBufferBase::~CBufferBase() =====
void __fastcall glitch::video::CCommonGLDriverBase::CBufferBase::~CBufferBase(
        glitch::video::CCommonGLDriverBase::CBufferBase *this)
{
  *(_DWORD *)this = off_98B118;
  glitch::video::IBuffer::~IBuffer(this);
}


// ===== 6dd194 glitch::video::CCommonGLDriverBase::CTextureBase::~CTextureBase() =====
void __fastcall glitch::video::CCommonGLDriverBase::CTextureBase::~CTextureBase(
        glitch::video::CCommonGLDriverBase::CTextureBase *this)
{
  *(_DWORD *)this = off_98B0E8;
  glitch::video::ITexture::~ITexture(this);
}


// ===== 6dd1c8 glitch::video::CCommonGLDriverBase::CRenderTargetBase::setTarget(glitch::video::IRenderTarget::E_ATTACHMENT_TYPE,glitch::video::E_PIXEL_FORMAT,glitch::core::dimension2d<int> const&,void *,uint) =====
glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *__fastcall glitch::video::CCommonGLDriverBase::CRenderTargetBase::setTarget(
        int *a1,
        int a2,
        int a3,
        int *a4,
        int a5,
        unsigned int a6)
{
  int v6; // r12
  int v10; // r10
  int v11; // r12
  int v12; // lr
  void (__fastcall *v13)(int *, _DWORD *); // r3
  glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *v14; // r5
  int v16; // r3
  unsigned int v17; // r3
  int v18; // r3
  unsigned int v19; // r3
  unsigned int v20; // r3
  unsigned int v21; // r5
  int v22; // r3
  int v23; // r3
  _DWORD v24[5]; // [sp+0h] [bp-14h] BYREF

  v6 = a1[3];
  if ( v6 == -1 )
  {
    v10 = *a1;
    a1[3] = *a4;
    a1[4] = a4[1];
    v11 = a4[1];
    v12 = *a4;
    v13 = *(void (__fastcall **)(int *, _DWORD *))(v10 + 12);
    v24[1] = 0;
    v24[2] = v12;
    v24[3] = v11;
    v24[0] = 0;
    v13(a1, v24);
  }
  else if ( v6 != *a4 || a1[4] != a4[1] )
  {
    return nullptr;
  }
  switch ( a2 )
  {
    case 0:
      if ( a6 != -1 )
      {
        v20 = *((unsigned __int8 *)a1 + 89);
        if ( a6 >= v20 )
        {
          v14 = nullptr;
          glitch::os::Printer::log((int)"color attachment index out of bounds", 1);
          return v14;
        }
        if ( v20 == 1 )
        {
          *((_BYTE *)a1 + 88) = a3;
LABEL_44:
          v14 = (glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *)&a1[2 * a6 + 10];
          goto LABEL_13;
        }
        if ( *((unsigned __int8 *)a1 + 88) == a3 )
          goto LABEL_44;
        return nullptr;
      }
      v21 = *((unsigned __int8 *)a1 + 89);
      if ( *(unsigned __int8 *)(a1[2] + 1185) <= v21 )
      {
        v14 = nullptr;
        glitch::os::Printer::log((int)"Color attachment overflow!", 2);
        return v14;
      }
      if ( *((_BYTE *)a1 + 89) )
      {
        if ( *((unsigned __int8 *)a1 + 88) != a3 )
          return nullptr;
      }
      else
      {
        *((_BYTE *)a1 + 88) = a3;
      }
      *((_BYTE *)a1 + 89) = v21 + 1;
      v14 = (glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *)&a1[2 * v21 + 10];
LABEL_13:
      if ( *((_DWORD *)v14 + 1) )
        glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment::~SAttachment(v14);
      *((_BYTE *)a1 + 90) = 1;
      return v14;
    case 1:
      if ( a1[19] && a6 == -1 )
        goto LABEL_61;
      if ( a3 == 35 )
      {
        v22 = a1[21];
        if ( v22 && a5 != v22 )
        {
          v14 = nullptr;
          glitch::os::Printer::log(
            (int)"invalid packed depth stencil attachment (does not match added stencil attachment)",
            3);
          return v14;
        }
      }
      else
      {
        v16 = a1[21];
        if ( v16 )
        {
          if ( *((_WORD *)a1 + 40) )
            v17 = *(_DWORD *)(v16 + 8);
          else
            v17 = *(_DWORD *)(v16 + 56);
          if ( !*((_WORD *)a1 + 40) )
            v17 = (v17 >> 4) & 0x3F;
          if ( v17 == 35 )
          {
            v14 = nullptr;
            glitch::os::Printer::log(
              (int)"invalid depth attachment (does not match added packed depth stencil attachment)",
              3);
            return v14;
          }
        }
      }
      goto LABEL_11;
    case 2:
      if ( a1[21] && a6 == -1 )
      {
LABEL_61:
        v14 = nullptr;
        glitch::os::Printer::log((int)"depth attachement already added", 3);
      }
      else if ( a3 == 35 )
      {
        v23 = a1[19];
        if ( !v23 || a5 == v23 )
        {
LABEL_38:
          v14 = (glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *)(a1 + 20);
          goto LABEL_13;
        }
        v14 = nullptr;
        glitch::os::Printer::log(
          (int)"invalid packed depth stencil attachment (does not match added depth attachment)",
          3);
      }
      else
      {
        v18 = a1[19];
        if ( !v18 )
          goto LABEL_38;
        if ( *((_WORD *)a1 + 36) )
          v19 = *(_DWORD *)(v18 + 8);
        else
          v19 = *(_DWORD *)(v18 + 56);
        if ( !*((_WORD *)a1 + 36) )
          v19 = (v19 >> 4) & 0x3F;
        if ( v19 != 35 )
          goto LABEL_38;
        v14 = nullptr;
        glitch::os::Printer::log(
          (int)"invalid stencil attachment (does not match added packed depth stencil attachment)",
          3);
      }
      break;
    case 3:
      if ( a3 != 35 )
      {
        v14 = nullptr;
        glitch::os::Printer::log((int)"invalid depth stencil pixel format", 3);
        return v14;
      }
      if ( a1[19] || a1[21] )
      {
        if ( a6 == -1 )
        {
          v14 = nullptr;
          glitch::os::Printer::log((int)"depth or stencil attachment already added", 3);
          return v14;
        }
        if ( a1[21] )
          glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment::~SAttachment((glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *)(a1 + 20));
LABEL_11:
        v14 = (glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *)(a1 + 18);
      }
      else
      {
        v14 = (glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *)(a1 + 18);
      }
      goto LABEL_13;
    default:
      v14 = nullptr;
      goto LABEL_13;
  }
  return v14;
}


// ===== 6dd534 glitch::video::CCommonGLDriverBase::CRenderTargetBase::setTargetInternal(glitch::video::IRenderTarget::E_ATTACHMENT_TYPE,boost::intrusive_ptr<glitch::video::ITexture> const&,glitch::video::E_TEXTURE_CUBE_MAP_FACE,uint,uint) =====
int __fastcall glitch::video::CCommonGLDriverBase::CRenderTargetBase::setTargetInternal(
        int *a1,
        int a2,
        int *a3,
        char a4,
        char a5,
        unsigned int a6)
{
  int v6; // r12
  glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *v11; // r0
  const glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *v12; // r2
  int v13; // r3
  bool v14; // zf

  v6 = *a3;
  if ( !*a3 || (*(_DWORD *)(v6 + 56) & 3) == 1 || a2 && (*(_DWORD *)(a1[2] + 156) & 0x800) == 0 )
    return 0;
  v11 = glitch::video::CCommonGLDriverBase::CRenderTargetBase::setTarget(
          a1,
          a2,
          (*(_DWORD *)(v6 + 56) >> 4) & 0x3F,
          (int *)(v6 + 32),
          v6,
          a6);
  if ( !v11 )
    return 0;
  *((_BYTE *)v11 + 2) = a4;
  *((_BYTE *)v11 + 3) = a5;
  *(_WORD *)v11 = 0;
  v13 = *a3;
  v14 = *a3 == 0;
  *((_DWORD *)v11 + 1) = *a3;
  if ( !v14 )
  {
    v12 = (const glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *)(*(_DWORD *)(v13 + 4) + 1);
    *(_DWORD *)(v13 + 4) = v12;
  }
  if ( a2 == 3 )
    glitch::video::CCommonGLDriverBase::CRenderTargetBase::copyAttachment(
      (glitch::video::CCommonGLDriverBase::CRenderTargetBase *)(a1 + 20),
      (glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *)(a1 + 18),
      v12);
  return 1;
}


// ===== 6dd600 glitch::video::CCommonGLDriverBase::CRenderTargetBase::setTarget(glitch::video::IRenderTarget::E_ATTACHMENT_TYPE,boost::intrusive_ptr<glitch::video::ITexture> const&,glitch::video::E_TEXTURE_CUBE_MAP_FACE,uint,uint) =====
// attributes: thunk
int __fastcall glitch::video::CCommonGLDriverBase::CRenderTargetBase::setTarget(
        int *a1,
        int a2,
        int *a3,
        char a4,
        char a5,
        unsigned int a6)
{
  return glitch::video::CCommonGLDriverBase::CRenderTargetBase::setTargetInternal(a1, a2, a3, a4, a5, a6);
}


// ===== 6dd604 glitch::video::CCommonGLDriverBase::CRenderTargetBase::addTarget(glitch::video::IRenderTarget::E_ATTACHMENT_TYPE,boost::intrusive_ptr<glitch::video::ITexture> const&,glitch::video::E_TEXTURE_CUBE_MAP_FACE,uint) =====
int __fastcall glitch::video::CCommonGLDriverBase::CRenderTargetBase::addTarget(
        int *a1,
        int a2,
        int *a3,
        char a4,
        char a5)
{
  return glitch::video::CCommonGLDriverBase::CRenderTargetBase::setTargetInternal(a1, a2, a3, a4, a5, 0xFFFFFFFF);
}


// ===== 6dd628 glitch::video::CCommonGLDriverBase::CRenderTargetBase::setTargetInternal(glitch::video::IRenderTarget::E_ATTACHMENT_TYPE,boost::intrusive_ptr<glitch::video::IRenderBuffer> const&,uint) =====
int __fastcall glitch::video::CCommonGLDriverBase::CRenderTargetBase::setTargetInternal(
        int *a1,
        int a2,
        int *a3,
        unsigned int a4)
{
  glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *v8; // r0
  const glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *v9; // r2
  int v10; // r3
  bool v11; // zf

  if ( !*a3 )
    return 0;
  if ( (*(_DWORD *)(a1[2] + 156) & 0x800) == 0 )
    return 0;
  v8 = glitch::video::CCommonGLDriverBase::CRenderTargetBase::setTarget(
         a1,
         a2,
         *(_DWORD *)(*a3 + 8),
         (int *)(*a3 + 12),
         *a3,
         a4);
  if ( !v8 )
    return 0;
  v9 = (const glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *)(&dword_0 + 1);
  *(_WORD *)v8 = 1;
  *((_BYTE *)v8 + 3) = 0;
  *((_BYTE *)v8 + 2) = 0;
  v10 = *a3;
  v11 = *a3 == 0;
  *((_DWORD *)v8 + 1) = *a3;
  if ( !v11 )
  {
    v9 = (const glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *)(*(_DWORD *)(v10 + 4) + 1);
    *(_DWORD *)(v10 + 4) = v9;
  }
  if ( a2 == 3 )
    glitch::video::CCommonGLDriverBase::CRenderTargetBase::copyAttachment(
      (glitch::video::CCommonGLDriverBase::CRenderTargetBase *)(a1 + 20),
      (glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment *)(a1 + 18),
      v9);
  return 1;
}


// ===== 6dd6d0 glitch::video::CCommonGLDriverBase::CRenderTargetBase::setTarget(glitch::video::IRenderTarget::E_ATTACHMENT_TYPE,boost::intrusive_ptr<glitch::video::IRenderBuffer> const&,uint) =====
// attributes: thunk
int __fastcall glitch::video::CCommonGLDriverBase::CRenderTargetBase::setTarget(
        int *a1,
        int a2,
        int *a3,
        unsigned int a4)
{
  return glitch::video::CCommonGLDriverBase::CRenderTargetBase::setTargetInternal(a1, a2, a3, a4);
}


// ===== 6dd6d4 glitch::video::CCommonGLDriverBase::CRenderTargetBase::addTarget(glitch::video::IRenderTarget::E_ATTACHMENT_TYPE,boost::intrusive_ptr<glitch::video::IRenderBuffer> const&) =====
int __fastcall glitch::video::CCommonGLDriverBase::CRenderTargetBase::addTarget(int *a1, int a2, int *a3)
{
  return glitch::video::CCommonGLDriverBase::CRenderTargetBase::setTargetInternal(a1, a2, a3, 0xFFFFFFFF);
}


// ===== 6dd6dc glitch::core::getValue<glitch::video::E_GL_EXTENSION>(char const*) =====
int __fastcall glitch::core::getValue<glitch::video::E_GL_EXTENSION>(const char *a1)
{
  const char **StringsInternal; // r0
  const char *v3; // r1
  const char **v4; // r5
  int v5; // r4

  StringsInternal = (const char **)glitch::video::getStringsInternal(0);
  v3 = *StringsInternal;
  v4 = StringsInternal;
  if ( !*StringsInternal )
    return 0xFFFF;
  v5 = 1;
  while ( LC_API_STRCMP_0(a1, v3) )
  {
    v3 = v4[v5++];
    if ( !v3 )
      return 0xFFFF;
  }
  return v5 - 1;
}


// ===== 6dd734 glitch::video::CCommonGLDriverBase::initExtensions(uchar const*) =====
void __fastcall glitch::video::CCommonGLDriverBase::initExtensions(
        glitch::video::CCommonGLDriverBase *this,
        const char *a2)
{
  const char *v2; // r5
  size_t v4; // r0
  int v5; // r1
  glitch::core *v6; // r7
  void *v7; // r1
  char v8; // r3
  const char *v9; // r4
  const char *v10; // r2
  int v11; // t1
  unsigned int v12; // r0
  int v13; // t1
  const char *v14; // [sp+4h] [bp-410h]
  char v15[4]; // [sp+Ch] [bp-408h] BYREF

  v2 = a2;
  if ( a2 )
  {
    v4 = LC_API_STRLEN_0(a2);
    v6 = (glitch::core *)glitch::core::allocProcessBuffer((glitch::core *)(v4 + 1), v5);
    glitch::os::Printer::log((int)"Available OpenGL extensions:", 1);
    v8 = *v2;
    if ( *v2 )
    {
      v9 = (char *)v6 + 1;
      v10 = (const char *)v6;
      do
      {
        while ( 1 )
        {
          *((_BYTE *)v9 - 1) = v8;
          if ( *v2 == 32 )
            break;
          v11 = *(unsigned __int8 *)++v2;
          v8 = v11;
          ++v9;
          if ( !v11 )
            goto LABEL_9;
        }
        *((_BYTE *)v9 - 1) = 0;
        v14 = v10;
        v12 = glitch::core::getValue<glitch::video::E_GL_EXTENSION>(v10);
        if ( v12 != 0xFFFF )
          *((_DWORD *)this + (v12 >> 5) + 494) |= 1 << (v12 & 0x1F);
        sprintf(v15, "\t%s", v14);
        glitch::os::Printer::log((int)v15, 1);
        v13 = *(unsigned __int8 *)++v2;
        v8 = v13;
        v10 = v9++;
      }
      while ( v13 );
    }
LABEL_9:
    if ( v6 )
      glitch::core::releaseProcessBuffer(v6, v7);
  }
}


// ===== 6dd884 glitch::video::CCommonGLDriverBase::fixUpScreenArea(glitch::core::rect<int> const&,int &,int &,int &,int &,bool,bool) =====
int __fastcall glitch::video::CCommonGLDriverBase::fixUpScreenArea(
        _DWORD *a1,
        int *a2,
        int *a3,
        _DWORD *a4,
        int *a5,
        int *a6,
        char a7,
        char a8)
{
  int v8; // r12
  int v12; // r3
  int v13; // lr
  int v14; // r12
  int *v15; // r3
  int v16; // r3
  int v17; // r1
  int v19; // r2
  int v20; // r1
  int v21; // r3
  int v22; // r2
  int v23; // [sp+0h] [bp-10h] BYREF
  int v24; // [sp+4h] [bp-Ch]
  int v25; // [sp+8h] [bp-8h]
  int v26; // [sp+Ch] [bp-4h]

  *a5 = a2[2] - *a2;
  v8 = a2[3] - a2[1];
  *a6 = v8;
  if ( !a7 && (*a5 <= 0 || v8 <= 0) )
    return 0;
  if ( (a1[51] - a1[50]) >> 2 == 1 || a8 )
  {
    v12 = a2[3];
    v13 = *a2;
    v14 = a2[1];
    v25 = a2[2];
    v26 = v12;
    v23 = v13;
    v24 = v14;
    glitch::video::IVideoDriver::screen2Device<int>((int)a1, &v23);
    v15 = (int *)a1[50];
    if ( (unsigned int)((a1[51] - (int)v15) >> 2) <= 1 && (a1[79] & 1) != 0 )
    {
      v19 = *v15;
      v20 = *a5;
      v21 = *(_DWORD *)(*v15 + 12);
      v22 = *(_DWORD *)(v19 + 44);
      *a5 = *a6;
      *a6 = v20;
      v16 = v22 + v21;
    }
    else
    {
      v16 = *(_DWORD *)(*v15 + 48) + *(_DWORD *)(*v15 + 16);
    }
    v17 = v24;
    *a3 = v23;
    *a4 = v16 - v17 - *a6;
    return 1;
  }
  else
  {
    *a3 = *a2;
    *a4 = a2[1];
    return 1;
  }
}


// ===== 6dd9d0 glitch::video::CCommonGLDriverBase::fixUpProjectionMatrix(glitch::core::CMatrix4<float> &) =====
int __fastcall glitch::video::CCommonGLDriverBase::fixUpProjectionMatrix(int a1, int a2)
{
  float v4; // r3
  unsigned int v5; // r0
  unsigned int v6; // r1
  unsigned int v7; // r2
  unsigned int v8; // r3
  float v10; // r3

  *(_BYTE *)(a2 + 64) = 0;
  if ( *(float *)(a2 + 44) == 0.0 )
  {
    v10 = *(float *)(a2 + 40);
    *(float *)(a2 + 56) = (float)(*(float *)(a2 + 56) + *(float *)(a2 + 56)) - 1.0;
    *(float *)(a2 + 40) = v10 + v10;
  }
  else
  {
    v4 = *(float *)(a2 + 56);
    *(float *)(a2 + 40) = (float)(*(float *)(a2 + 40) + *(float *)(a2 + 40)) - 1.0;
    *(float *)(a2 + 56) = v4 + v4;
  }
  if ( *(_BYTE *)(a1 + 1184) )
  {
    v5 = *(_DWORD *)(a2 + 4) + 0x80000000;
    v6 = *(_DWORD *)(a2 + 20) + 0x80000000;
    v7 = *(_DWORD *)(a2 + 36) + 0x80000000;
    v8 = *(_DWORD *)(a2 + 52) + 0x80000000;
    *(_BYTE *)(a2 + 64) = 0;
    *(_DWORD *)(a2 + 4) = v5;
    *(_DWORD *)(a2 + 20) = v6;
    *(_DWORD *)(a2 + 36) = v7;
    *(_DWORD *)(a2 + 52) = v8;
  }
  return glitch::video::IVideoDriver::fixUpProjectionMatrixOrientation(a1, a2);
}


// ===== 6ddaa8 glitch::video::CCommonGLDriverBase::~CCommonGLDriverBase() =====
void __fastcall glitch::video::CCommonGLDriverBase::~CCommonGLDriverBase(glitch::video::CCommonGLDriverBase *this)
{
  *(_DWORD *)this = off_98AE68;
  glitch::video::IVideoDriver::~IVideoDriver(this);
}


// ===== 6ddadc glitch::video::CCommonGLDriverBase::~CCommonGLDriverBase() =====
void __fastcall glitch::video::CCommonGLDriverBase::~CCommonGLDriverBase(glitch::video::CCommonGLDriverBase *this)
{
  glitch::video::CCommonGLDriverBase::~CCommonGLDriverBase(this);
  LC_API_FREE_0(this);
}


// ===== 6ddaf8 glitch::video::CCommonGLDriverBase::~CCommonGLDriverBase() =====
void __fastcall glitch::video::CCommonGLDriverBase::~CCommonGLDriverBase(glitch::video::CCommonGLDriverBase *this)
{
  *(_DWORD *)this = off_98AE68;
  glitch::video::IVideoDriver::~IVideoDriver(this);
}


// ===== 6ddb2c glitch::video::CCommonGLDriverBase::CRenderTargetBase::CRenderTargetBase(glitch::video::CCommonGLDriverBase*) =====
glitch::video::CCommonGLDriverBase::CRenderTargetBase *__fastcall glitch::video::CCommonGLDriverBase::CRenderTargetBase::CRenderTargetBase(
        glitch::video::CCommonGLDriverBase::CRenderTargetBase *this,
        glitch::video::CCommonGLDriverBase *a2)
{
  int v3; // r1
  char *v4; // r12
  char *v5; // r3
  _DWORD v7[3]; // [sp+0h] [bp-Ch] BYREF

  v7[1] = -1;
  v7[0] = -1;
  glitch::video::IRenderTarget::IRenderTarget(this, (int)a2, v7);
  v3 = 0;
  *((_DWORD *)this + 9) = 0;
  *(_DWORD *)this = off_98B088;
  v4 = (char *)this + 40;
  do
  {
    *(_WORD *)&v4[v3] = 255;
    v5 = &v4[v3];
    v3 += 8;
    *((_DWORD *)v5 + 1) = 0;
    v5[2] = 0;
    v5[3] = 0;
  }
  while ( v3 != 32 );
  *((_BYTE *)this + 88) = 39;
  *((_BYTE *)this + 90) = 1;
  *((_BYTE *)this + 89) = 0;
  *((_WORD *)this + 36) = 255;
  *((_BYTE *)this + 74) = 0;
  *((_BYTE *)this + 75) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_WORD *)this + 40) = 255;
  *((_BYTE *)this + 82) = 0;
  *((_BYTE *)this + 83) = 0;
  *((_DWORD *)this + 21) = 0;
  return this;
}


// ===== 6ddbec glitch::video::CCommonGLDriverBase::CRenderTargetBase::CRenderTargetBase(glitch::video::CCommonGLDriverBase*) =====
glitch::video::CCommonGLDriverBase::CRenderTargetBase *__fastcall glitch::video::CCommonGLDriverBase::CRenderTargetBase::CRenderTargetBase(
        glitch::video::CCommonGLDriverBase::CRenderTargetBase *this,
        glitch::video::CCommonGLDriverBase *a2)
{
  int v3; // r1
  char *v4; // r12
  char *v5; // r3
  _DWORD v7[3]; // [sp+0h] [bp-Ch] BYREF

  v7[1] = -1;
  v7[0] = -1;
  glitch::video::IRenderTarget::IRenderTarget(this, (int)a2, v7);
  v3 = 0;
  *((_DWORD *)this + 9) = 0;
  *(_DWORD *)this = off_98B088;
  v4 = (char *)this + 40;
  do
  {
    *(_WORD *)&v4[v3] = 255;
    v5 = &v4[v3];
    v3 += 8;
    *((_DWORD *)v5 + 1) = 0;
    v5[2] = 0;
    v5[3] = 0;
  }
  while ( v3 != 32 );
  *((_BYTE *)this + 88) = 39;
  *((_BYTE *)this + 90) = 1;
  *((_BYTE *)this + 89) = 0;
  *((_WORD *)this + 36) = 255;
  *((_BYTE *)this + 74) = 0;
  *((_BYTE *)this + 75) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_WORD *)this + 40) = 255;
  *((_BYTE *)this + 82) = 0;
  *((_BYTE *)this + 83) = 0;
  *((_DWORD *)this + 21) = 0;
  return this;
}


// ===== 6ddcac glitch::video::CCommonGLDriverBase::CFramebufferBase::CFramebufferBase(glitch::video::CCommonGLDriverBase*,glitch::core::dimension2d<int> const&) =====
_DWORD *__fastcall glitch::video::CCommonGLDriverBase::CFramebufferBase::CFramebufferBase(
        _DWORD *a1,
        int a2,
        _DWORD *a3)
{
  glitch::video::IRenderTarget::IRenderTarget(a1, a2, a3);
  a1[13] = 0;
  a1[9] = 0;
  *a1 = off_98B0C8;
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  return a1;
}


// ===== 6ddcf8 glitch::video::CCommonGLDriverBase::CFramebufferBase::CFramebufferBase(glitch::video::CCommonGLDriverBase*,glitch::core::dimension2d<int> const&) =====
_DWORD *__fastcall glitch::video::CCommonGLDriverBase::CFramebufferBase::CFramebufferBase(
        _DWORD *a1,
        int a2,
        _DWORD *a3)
{
  glitch::video::IRenderTarget::IRenderTarget(a1, a2, a3);
  a1[13] = 0;
  a1[9] = 0;
  *a1 = off_98B0C8;
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  return a1;
}


// ===== 6ddd44 glitch::video::CCommonGLDriverBase::CTextureBase::mapImpl(uchar,glitch::video::E_TEXTURE_CUBE_MAP_FACE,uchar) =====
int __fastcall glitch::video::CCommonGLDriverBase::CTextureBase::mapImpl(int a1, char a2, int a3, int a4)
{
  int v5; // r0
  char v8; // r7
  int v9; // r2
  int v10; // r0
  unsigned int v11; // r1
  int v12; // r3
  int v13; // r12
  int v14; // r3
  char v15; // r2
  int *v16; // r1
  char v17; // r7
  int v18; // r0
  int v19; // r0
  unsigned int v20; // r0
  bool v21; // zf
  char v22; // r7
  char v23; // r5
  int result; // r0
  int v25; // r2
  int v26; // r3
  bool v27; // zf
  int *v28; // r1
  int v29; // r2
  void *v30; // r0

  v5 = *(_DWORD *)(a1 + 44);
  v8 = a2 & 1 | 4;
  if ( !v5 )
    goto LABEL_21;
  v9 = *(unsigned __int8 *)(a1 + 62);
  v10 = *(_DWORD *)(a1 + 48);
  v11 = a4 + v9 * a3;
  *(_WORD *)(a1 + 64) |= 1u;
  v12 = v10 + 4 * (v9 + 1);
  v5 = *(_DWORD *)(v12 + 4 * (v11 >> 5));
  v13 = 1;
  *(_DWORD *)(v12 + 4 * (v11 >> 5)) = v5 | (1 << (v11 & 0x1F));
  v14 = *(_DWORD *)(a1 + 44);
  if ( !v14 )
  {
LABEL_21:
    v25 = *(unsigned __int8 *)(a1 + 63);
    if ( (*(_DWORD *)(a1 + 56) & 3) == 2 )
      v26 = 5;
    else
      v26 = 0;
    v27 = (v25 & 2) == 0;
    if ( (v25 & 2) != 0 )
    {
      v28 = *(int **)(a1 + 48);
    }
    else
    {
      v25 = *(_DWORD *)(a1 + 48);
      v28 = (int *)*(unsigned __int8 *)(a1 + 62);
    }
    if ( v27 )
    {
      v29 = *(_DWORD *)(v25 + 4 * (_DWORD)v28);
    }
    else
    {
      v29 = *v28;
      v5 = v28[1];
    }
    if ( !v27 )
      v29 = v5 - v29;
    v30 = operator new[](v29 + ((v29 + 127) & 0xFFFFFF80) * v26, 0);
    glitch::video::ITexture::setData((glitch::video::ITexture *)a1, v30, 1, (*(unsigned __int8 *)(a1 + 63) >> 1) & 1);
    glitch::os::Printer::log((int)"CTexture::mapImpl", (int)"reallocating client data", 2);
    v14 = *(_DWORD *)(a1 + 44);
  }
  v15 = *(_BYTE *)(a1 + 63);
  v16 = *(int **)(a1 + 48);
  v17 = 32 * v8;
  if ( (v15 & 2) != 0 )
  {
    v18 = *v16;
    v16 = (int *)v16[1];
  }
  else
  {
    v18 = *(unsigned __int8 *)(a1 + 62);
  }
  if ( (*(_BYTE *)(a1 + 63) & 2) != 0 )
  {
    v19 = (int)v16 - v18;
  }
  else
  {
    v19 = v16[v18];
    v13 = v16[a4];
  }
  if ( (*(_BYTE *)(a1 + 63) & 2) != 0 )
    v20 = v19 * a3;
  else
    v20 = (v19 + 127) & 0xFFFFFF80;
  if ( (*(_BYTE *)(a1 + 63) & 2) == 0 )
    v20 = v13 + v20 * a3;
  v21 = a4 == 0;
  if ( !a4 )
    v21 = a3 == 0;
  v22 = v17 | 1;
  v23 = a3 | (8 * a4);
  if ( v21 )
    v15 |= 0x40u;
  result = v14 + v20;
  *(_BYTE *)(a1 + 66) = v22;
  *(_BYTE *)(a1 + 67) = v23;
  if ( v21 )
    *(_BYTE *)(a1 + 63) = v15;
  return result;
}


// ===== 6dde98 glitch::video::CCommonGLDriverBase::CTextureBase::CTextureBase(char const*,glitch::video::CCommonGLDriverBase*,glitch::video::STextureDesc const&) =====
int __fastcall glitch::video::CCommonGLDriverBase::CTextureBase::CTextureBase(int a1, char *a2, int a3, int a4)
{
  glitch::video::ITexture::ITexture(a1, a2, a3, a4);
  *(_BYTE *)(a1 + 88) = 0;
  *(_DWORD *)(a1 + 84) = 0;
  *(_DWORD *)a1 = off_98B0E8;
  return a1;
}


// ===== 6dded8 glitch::video::CCommonGLDriverBase::CTextureBase::CTextureBase(char const*,glitch::video::CCommonGLDriverBase*,glitch::video::STextureDesc const&) =====
int __fastcall glitch::video::CCommonGLDriverBase::CTextureBase::CTextureBase(int a1, char *a2, int a3, int a4)
{
  glitch::video::ITexture::ITexture(a1, a2, a3, a4);
  *(_BYTE *)(a1 + 88) = 0;
  *(_DWORD *)(a1 + 84) = 0;
  *(_DWORD *)a1 = off_98B0E8;
  return a1;
}


// ===== 6ddf18 glitch::video::CCommonGLDriverBase::CBufferBase::CBufferBase(glitch::video::CCommonGLDriverBase*,glitch::video::E_BUFFER_TYPE,glitch::video::E_BUFFER_USAGE,uint,void *,bool) =====
_DWORD *__fastcall glitch::video::CCommonGLDriverBase::CBufferBase::CBufferBase(
        _DWORD *a1,
        int a2,
        char a3,
        char a4,
        int a5,
        int a6,
        char a7)
{
  glitch::video::IBuffer::IBuffer((int)a1, a3, a4, a5, a6, a7);
  a1[5] = a2;
  a1[7] = 0;
  *a1 = off_98B118;
  a1[6] = 0;
  return a1;
}


// ===== 6ddf84 glitch::video::CCommonGLDriverBase::CBufferBase::CBufferBase(glitch::video::CCommonGLDriverBase*,glitch::video::E_BUFFER_TYPE,glitch::video::E_BUFFER_USAGE,uint,void *,bool) =====
_DWORD *__fastcall glitch::video::CCommonGLDriverBase::CBufferBase::CBufferBase(
        _DWORD *a1,
        int a2,
        char a3,
        char a4,
        int a5,
        int a6,
        char a7)
{
  glitch::video::IBuffer::IBuffer((int)a1, a3, a4, a5, a6, a7);
  a1[5] = a2;
  a1[7] = 0;
  *a1 = off_98B118;
  a1[6] = 0;
  return a1;
}


// ===== 6ddff0 glitch::video::CCommonGLDriverBase::drawQuads(glitch::core::rect<int> const&,glitch::core::rect<float> const&,glitch::video::SColor const*) =====
glitch::video::CVertexStreams **__fastcall glitch::video::CCommonGLDriverBase::drawQuads(
        float *a1,
        int *a2,
        int *a3,
        int a4)
{
  float v8; // r10
  float v9; // r0
  int v10; // r3
  int v11; // r2
  float v12; // r10
  float v13; // r0
  int v14; // r2
  float v15; // r10
  float v16; // r0
  int v17; // r2
  float v18; // r0
  int v19; // r3
  int v20; // r2
  int v21; // r3
  float v22; // r1
  void (__fastcall *v23)(float *, glitch::video::CVertexStreams **, glitch::IReferenceCounted **); // r12
  glitch::IReferenceCounted *v25[5]; // [sp+8h] [bp-24h] BYREF
  __int16 v26; // [sp+1Ch] [bp-10h]
  __int16 v27; // [sp+1Eh] [bp-Eh]
  glitch::IReferenceCounted *v28; // [sp+20h] [bp-Ch]
  glitch::video::CVertexStreams *v29[2]; // [sp+24h] [bp-8h] BYREF

  v8 = (float)a2[3];
  v9 = (float)a2[2];
  v10 = a3[3];
  v11 = a3[2];
  *((_DWORD *)a1 + 90) = v10;
  a1[92] = v9;
  a1[93] = v8;
  *((_DWORD *)a1 + 89) = v11;
  a1[94] = 0.0;
  memcpy(a1 + 91, (const void *)(a4 + 8), sizeof(float));
  v12 = (float)a2[1];
  v13 = (float)a2[2];
  v14 = a3[2];
  *((_DWORD *)a1 + 96) = a3[1];
  a1[98] = v13;
  a1[99] = v12;
  *((_DWORD *)a1 + 95) = v14;
  a1[100] = 0.0;
  memcpy(a1 + 97, (const void *)(a4 + 12), sizeof(float));
  v15 = (float)a2[1];
  v16 = (float)*a2;
  v17 = *a3;
  *((_DWORD *)a1 + 108) = a3[1];
  a1[110] = v16;
  a1[111] = v15;
  *((_DWORD *)a1 + 107) = v17;
  a1[112] = 0.0;
  memcpy(a1 + 109, (const void *)a4, sizeof(float));
  v18 = (float)a2[3];
  v19 = a3[3];
  v20 = *a3;
  a1[104] = (float)*a2;
  *((_DWORD *)a1 + 101) = v20;
  *((_DWORD *)a1 + 102) = v19;
  a1[105] = v18;
  a1[106] = 0.0;
  memcpy(a1 + 103, (const void *)(a4 + 4), sizeof(float));
  glitch::video::IBuffer::reset(*((glitch::video::IBuffer **)a1 + 44), 0x60u, a1 + 89, 0);
  v21 = *((_DWORD *)a1 + 44);
  if ( *(_BYTE *)(v21 + 17) != 4 && *(_DWORD *)(v21 + 8) )
    *(_BYTE *)(v21 + 18) |= 2u;
  *(_DWORD *)(*((_DWORD *)a1 + 43) + 8) = 4;
  v29[0] = *((glitch::video::CVertexStreams **)a1 + 43);
  if ( v29[0] )
    ++*(_DWORD *)v29[0];
  v22 = *a1;
  v27 = 4;
  v25[2] = (glitch::IReferenceCounted *)byte_4;
  v25[4] = (glitch::IReferenceCounted *)byte_4;
  v26 = 255;
  v25[0] = nullptr;
  v25[1] = nullptr;
  v25[3] = nullptr;
  v23 = *(void (__fastcall **)(float *, glitch::video::CVertexStreams **, glitch::IReferenceCounted **))(LODWORD(v22) + 88);
  v28 = nullptr;
  v23(a1, v29, v25);
  if ( v28 )
    glitch::IReferenceCounted::drop(v28);
  if ( v25[0] )
    glitch::IReferenceCounted::drop(v25[0]);
  return boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(v29);
}


// ===== 6de1e8 glitch::video::CCommonGLDriverBase::CBufferBase::~CBufferBase() =====
void __fastcall glitch::video::CCommonGLDriverBase::CBufferBase::~CBufferBase(
        glitch::video::CCommonGLDriverBase::CBufferBase *this)
{
  *(_DWORD *)this = off_98B118;
  glitch::video::IBuffer::~IBuffer(this);
  LC_API_FREE_0(this);
}


// ===== 6de224 glitch::video::CCommonGLDriverBase::CTextureBase::~CTextureBase() =====
void __fastcall glitch::video::CCommonGLDriverBase::CTextureBase::~CTextureBase(
        glitch::video::CCommonGLDriverBase::CTextureBase *this)
{
  *(_DWORD *)this = off_98B0E8;
  glitch::video::ITexture::~ITexture(this);
  LC_API_FREE_0(this);
}


// ===== 6de260 glitch::video::CCommonGLDriverBase::set2DProjection(void) =====
int __fastcall glitch::video::CCommonGLDriverBase::set2DProjection(glitch::video::CCommonGLDriverBase *this)
{
  _DWORD *v1; // r7
  float v2; // r6
  float v3; // r8
  float v5[5]; // [sp+4h] [bp-44h] BYREF
  float v6; // [sp+18h] [bp-30h]
  int v7; // [sp+1Ch] [bp-2Ch]
  int v8; // [sp+20h] [bp-28h]
  int v9; // [sp+24h] [bp-24h]
  int v10; // [sp+28h] [bp-20h]
  int v11; // [sp+2Ch] [bp-1Ch]
  int v12; // [sp+30h] [bp-18h]
  float v13; // [sp+34h] [bp-14h]
  float v14; // [sp+38h] [bp-10h]
  int v15; // [sp+3Ch] [bp-Ch]
  int v16; // [sp+40h] [bp-8h]
  char v17; // [sp+44h] [bp-4h]

  v1 = *(_DWORD **)(*((_DWORD *)this + 51) - 4);
  v2 = (float)(v1[7] - v1[5]);
  v3 = (float)(v1[8] - v1[6]);
  v17 = 0;
  v5[0] = 2.0 / v2;
  memset(&v5[1], 0, 16);
  v15 = 1056964608;
  v16 = 1065353216;
  v11 = 1056964608;
  v6 = 2.0 / (float)(0.0 - v3);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v12 = 0;
  v13 = (float)((float)(2.0 / v2) * 0.375) + (float)(COERCE_FLOAT(COERCE_INT(v2 + 0.0) + 0x80000000) / v2);
  v14 = (float)(v6 * 0.375) + (float)(COERCE_FLOAT(COERCE_INT(v3 + 0.0) + 0x80000000) / (float)(0.0 - v3));
  return (*(int (__fastcall **)(glitch::video::CCommonGLDriverBase *, int, float *))(*(_DWORD *)this + 108))(
           this,
           2,
           v5);
}


// ===== 6de3a8 glitch::video::CCommonGLDriverBase::CCommonGLDriverBase(glitch::IDevice *,glitch::video::IShaderManager *) =====
glitch::video::CCommonGLDriverBase *__fastcall glitch::video::CCommonGLDriverBase::CCommonGLDriverBase(
        glitch::video::CCommonGLDriverBase *this,
        glitch::IDevice *a2,
        glitch::video::IShaderManager *a3)
{
  _DWORD *v4; // r0
  glitch::video::CCommonGLDriverBase::SShadowRenderState *v6; // r0
  _DWORD *v7; // r5
  glitch::video::CCommonGLDriverBase *v8; // r3
  _DWORD *v10; // r2
  _DWORD *v11; // [sp+14h] [bp-8h] BYREF

  v11 = nullptr;
  glitch::video::IVideoDriver::IVideoDriver(this, a2, a3, 0, 0, 0, &v11);
  v4 = v11;
  if ( v11 )
  {
    if ( (*v11)-- == 1 )
    {
      if ( !*((_BYTE *)v4 + 84) )
      {
        v10 = (_DWORD *)v4[20];
        *v10 = glitch::memory::Matrix4Pool;
        glitch::memory::Matrix4Pool = (int)v10;
      }
      v4[20] = 0;
      LC_API_FREE_0();
    }
  }
  *((_BYTE *)this + 352) = 0;
  v6 = (glitch::video::CCommonGLDriverBase *)((char *)this + 356);
  *(_DWORD *)this = off_98AE68;
  do
  {
    *(_DWORD *)v6 = 0;
    *((_DWORD *)v6 + 1) = 0;
    *((_DWORD *)v6 + 3) = 0;
    *((_DWORD *)v6 + 4) = 0;
    *((_DWORD *)v6 + 5) = 0;
    v6 = (glitch::video::CCommonGLDriverBase::SShadowRenderState *)((char *)v6 + 24);
  }
  while ( v6 != (glitch::video::CCommonGLDriverBase *)((char *)this + 452) );
  glitch::video::CCommonGLDriverBase::SShadowRenderState::SShadowRenderState(v6);
  glitch::video::CCommonGLDriverBase::SCommonShadowState::SCommonShadowState((glitch::video::CCommonGLDriverBase *)((char *)this + 596));
  *((_DWORD *)this + 161) = 10;
  v7 = (_DWORD *)((char *)this + 648);
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
  while ( v7 != (_DWORD *)((char *)this + 852) );
  *((_BYTE *)this + 916) = 0;
  LC_API_MEMSET_0(v7, 0, 0x40u);
  *((_DWORD *)this + 213) = 1065353216;
  *((_DWORD *)this + 218) = 1065353216;
  *((_DWORD *)this + 223) = 1065353216;
  *((_DWORD *)this + 228) = 1065353216;
  *((_BYTE *)this + 916) = 1;
  *((_BYTE *)this + 984) = 0;
  LC_API_MEMSET_0((char *)this + 920, 0, 0x40u);
  *((_DWORD *)this + 230) = 1065353216;
  *((_DWORD *)this + 235) = 1065353216;
  *((_DWORD *)this + 240) = 1065353216;
  *((_DWORD *)this + 245) = 1065353216;
  *((_BYTE *)this + 984) = 1;
  *((_BYTE *)this + 1052) = 0;
  LC_API_MEMSET_0((char *)this + 988, 0, 0x40u);
  *((_DWORD *)this + 298) = 0;
  *((_DWORD *)this + 262) = 1065353216;
  *((_BYTE *)this + 1052) = 1;
  *((_DWORD *)this + 247) = 1065353216;
  *((_DWORD *)this + 252) = 1065353216;
  *((_DWORD *)this + 257) = 1065353216;
  *((_BYTE *)this + 1184) = 0;
  *((_BYTE *)this + 1185) = 0;
  *((_DWORD *)this + 297) = 0;
  v8 = (glitch::video::CCommonGLDriverBase *)((char *)this + 1216);
  do
  {
    *((_WORD *)v8 - 10) = 39;
    *((_WORD *)v8 - 9) = 39;
    *((_DWORD *)v8 - 4) = 0;
    *((_DWORD *)v8 - 3) = 0;
    *((_DWORD *)v8 - 2) = 0;
    *((_DWORD *)v8 - 1) = 0;
    v8 = (glitch::video::CCommonGLDriverBase *)((char *)v8 + 20);
  }
  while ( v8 != (glitch::video::CCommonGLDriverBase *)((char *)this + 1996) );
  *((_DWORD *)this + 494) = 0;
  *((_DWORD *)this + 495) = 0;
  *((_DWORD *)this + 496) = 0;
  *((_DWORD *)this + 497) = 0;
  *((_DWORD *)this + 498) = 0;
  *((_DWORD *)this + 499) = 0;
  *((_DWORD *)this + 500) = 0;
  *((_DWORD *)this + 501) = 0;
  *((_DWORD *)this + 502) = 0;
  *((_DWORD *)this + 503) = 0;
  *((_DWORD *)this + 504) = 0;
  *((_DWORD *)this + 505) = 0;
  *((_DWORD *)this + 506) = 0;
  *((_DWORD *)this + 507) = 0;
  LC_API_MEMSET_0((char *)this + 1056, 0, 0x80u);
  return this;
}


// ===== 6de5f8 glitch::video::CCommonGLDriverBase::CCommonGLDriverBase(glitch::IDevice *,glitch::video::IShaderManager *) =====
glitch::video::CCommonGLDriverBase *__fastcall glitch::video::CCommonGLDriverBase::CCommonGLDriverBase(
        glitch::video::CCommonGLDriverBase *this,
        glitch::IDevice *a2,
        glitch::video::IShaderManager *a3)
{
  int *v4; // r0
  _DWORD *v6; // r0
  _DWORD *v7; // r5
  glitch::video::CCommonGLDriverBase *v8; // r3
  _DWORD *v10; // r2
  int *v11; // [sp+14h] [bp-8h] BYREF

  v11 = nullptr;
  glitch::video::IVideoDriver::IVideoDriver((int)this, (int)a2, a3, 0, 0, 0, &v11);
  v4 = v11;
  if ( v11 )
  {
    if ( (*v11)-- == 1 )
    {
      if ( !*((_BYTE *)v4 + 84) )
      {
        v10 = (_DWORD *)v4[20];
        *v10 = glitch::memory::Matrix4Pool;
        glitch::memory::Matrix4Pool = (int)v10;
      }
      v4[20] = 0;
      LC_API_FREE_0(v4);
    }
  }
  *((_BYTE *)this + 352) = 0;
  v6 = (_DWORD *)((char *)this + 356);
  *(_DWORD *)this = off_98AE68;
  do
  {
    *v6 = 0;
    v6[1] = 0;
    v6[3] = 0;
    v6[4] = 0;
    v6[5] = 0;
    v6 += 6;
  }
  while ( v6 != (_DWORD *)((char *)this + 452) );
  glitch::video::CCommonGLDriverBase::SShadowRenderState::SShadowRenderState((int)v6);
  glitch::video::CCommonGLDriverBase::SCommonShadowState::SCommonShadowState((_DWORD *)this + 149);
  *((_DWORD *)this + 161) = 10;
  v7 = (_DWORD *)((char *)this + 648);
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
  while ( v7 != (_DWORD *)((char *)this + 852) );
  *((_BYTE *)this + 916) = 0;
  LC_API_MEMSET_0(v7, 0, 0x40u);
  *((_DWORD *)this + 213) = 1065353216;
  *((_DWORD *)this + 218) = 1065353216;
  *((_DWORD *)this + 223) = 1065353216;
  *((_DWORD *)this + 228) = 1065353216;
  *((_BYTE *)this + 916) = 1;
  *((_BYTE *)this + 984) = 0;
  LC_API_MEMSET_0((char *)this + 920, 0, 0x40u);
  *((_DWORD *)this + 230) = 1065353216;
  *((_DWORD *)this + 235) = 1065353216;
  *((_DWORD *)this + 240) = 1065353216;
  *((_DWORD *)this + 245) = 1065353216;
  *((_BYTE *)this + 984) = 1;
  *((_BYTE *)this + 1052) = 0;
  LC_API_MEMSET_0((char *)this + 988, 0, 0x40u);
  *((_DWORD *)this + 298) = 0;
  *((_DWORD *)this + 262) = 1065353216;
  *((_BYTE *)this + 1052) = 1;
  *((_DWORD *)this + 247) = 1065353216;
  *((_DWORD *)this + 252) = 1065353216;
  *((_DWORD *)this + 257) = 1065353216;
  *((_BYTE *)this + 1184) = 0;
  *((_BYTE *)this + 1185) = 0;
  *((_DWORD *)this + 297) = 0;
  v8 = (glitch::video::CCommonGLDriverBase *)((char *)this + 1216);
  do
  {
    *((_WORD *)v8 - 10) = 39;
    *((_WORD *)v8 - 9) = 39;
    *((_DWORD *)v8 - 4) = 0;
    *((_DWORD *)v8 - 3) = 0;
    *((_DWORD *)v8 - 2) = 0;
    *((_DWORD *)v8 - 1) = 0;
    v8 = (glitch::video::CCommonGLDriverBase *)((char *)v8 + 20);
  }
  while ( v8 != (glitch::video::CCommonGLDriverBase *)((char *)this + 1996) );
  *((_DWORD *)this + 494) = 0;
  *((_DWORD *)this + 495) = 0;
  *((_DWORD *)this + 496) = 0;
  *((_DWORD *)this + 497) = 0;
  *((_DWORD *)this + 498) = 0;
  *((_DWORD *)this + 499) = 0;
  *((_DWORD *)this + 500) = 0;
  *((_DWORD *)this + 501) = 0;
  *((_DWORD *)this + 502) = 0;
  *((_DWORD *)this + 503) = 0;
  *((_DWORD *)this + 504) = 0;
  *((_DWORD *)this + 505) = 0;
  *((_DWORD *)this + 506) = 0;
  *((_DWORD *)this + 507) = 0;
  LC_API_MEMSET_0((char *)this + 1056, 0, 0x80u);
  return this;
}


// ===== 6de848 glitch::video::getStringsInternal(glitch::video::E_GL_EXTENSION *) =====
char **glitch::video::getStringsInternal()
{
  return glitch::video::getStringsInternal(glitch::video::E_GL_EXTENSION *)::names;
}


// ===== 6de858 `global constructor keyed to'.._source_glitch_video_EGLExtension.cpp =====
void `global constructor keyed to'.._source_glitch_video_EGLExtension.cpp()
{
  dword_9F82D4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F82D0 = 1056964608;
}


// ===== 6de878 glitch::video::CGLSLShader::serializeAttributes(glitch::io::IAttributes *) =====
void __fastcall glitch::video::CGLSLShader::serializeAttributes(
        glitch::video::CGLSLShader *this,
        glitch::io::IAttributes *a2)
{
  ;
}


// ===== 6de87c glitch::video::CGLSLShader::deserializeAttributes(glitch::io::IAttributes *) =====
void __fastcall glitch::video::CGLSLShader::deserializeAttributes(
        glitch::video::CGLSLShader *this,
        glitch::io::IAttributes *a2)
{
  ;
}


// ===== 6de880 glitch::video::CGLSLShader::releaseShaderCode(void) =====
glitch::IReferenceCounted *__fastcall glitch::video::CGLSLShader::releaseShaderCode(glitch::video::CGLSLShader *this)
{
  glitch::IReferenceCounted *v2; // r0
  glitch::IReferenceCounted *result; // r0

  v2 = *((glitch::IReferenceCounted **)this + 17);
  *((_DWORD *)this + 17) = 0;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  result = *((glitch::IReferenceCounted **)this + 18);
  *((_DWORD *)this + 18) = 0;
  if ( result )
    return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
  return result;
}


// ===== 6de8c0 `global constructor keyed to'.._source_glitch_video_CGLSLShader.cpp =====
void `global constructor keyed to'.._source_glitch_video_CGLSLShader.cpp()
{
  dword_9F82E0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F82DC = 1056964608;
}


// ===== 6de8e0 glitch::video::CGLSLShader::createProgram(void) =====
int __fastcall glitch::video::CGLSLShader::createProgram(glitch::video::CGLSLShader *this)
{
  *((_DWORD *)this + 19) = glCreateProgram();
  return 1;
}


// ===== 6de8f8 glitch::video::CGLSLShader::releaseDriverSpecificResources(void) =====
glitch::IReferenceCounted *__fastcall glitch::video::CGLSLShader::releaseDriverSpecificResources(
        glitch::video::CGLSLShader *this)
{
  if ( *((_DWORD *)this + 19) )
  {
    glDeleteProgram();
    *((_DWORD *)this + 19) = 0;
  }
  return glitch::video::CGLSLShader::releaseShaderCode(this);
}


// ===== 6de924 glitch::video::CGLSLShader::deleteInfo(void) =====
void __fastcall glitch::video::CGLSLShader::deleteInfo(glitch::video::CGLSLShader *this)
{
  _DWORD **v1; // r4
  _DWORD **v3; // r5
  _DWORD *v4; // r0
  bool v5; // zf
  _DWORD **v6; // r4
  _DWORD **v7; // r5
  _DWORD *v8; // r0
  void *v9; // r0

  v1 = *((_DWORD ***)this + 9);
  if ( v1 )
  {
    v3 = &v1[2 * *((unsigned __int8 *)this + 60)];
    while ( v3 != v1 )
    {
      while ( 1 )
      {
        v4 = *v1;
        v1 += 2;
        if ( v4 )
        {
          v5 = (*v4)-- == 1;
          if ( v5 )
            break;
        }
        if ( v3 == v1 )
          goto LABEL_9;
      }
      glitch::core::detail::SSharedStringHeapEntry::SData::release(v4);
    }
LABEL_9:
    v6 = *((_DWORD ***)this + 10);
    v7 = &v6[4 * *((unsigned __int16 *)this + 23)];
    while ( v7 != v6 )
    {
      while ( 1 )
      {
        v8 = *v6;
        v6 += 4;
        if ( v8 )
        {
          v5 = (*v8)-- == 1;
          if ( v5 )
            break;
        }
        if ( v7 == v6 )
          goto LABEL_16;
      }
      glitch::core::detail::SSharedStringHeapEntry::SData::release(v8);
    }
LABEL_16:
    v9 = *((void **)this + 9);
    if ( v9 )
      operator delete[](v9);
    *((_DWORD *)this + 10) = 0;
    *((_WORD *)this + 23) = 0;
    *((_WORD *)this + 22) = 0;
  }
}


// ===== 6de9f8 glitch::video::CGLSLShader::linkProgram(void) =====
int __fastcall glitch::video::CGLSLShader::linkProgram(const char **this)
{
  int v2; // r1
  char *v3; // r6
  void *v4; // r1

  glLinkProgram();
  glGetProgramiv();
  glGetProgramiv();
  v3 = (char *)glitch::core::allocProcessBuffer(nullptr, v2);
  glGetProgramInfoLog();
  glitch::os::Printer::logf(3, "%s : GLSL shader program failed to link\n%s", *(this + 8), v3);
  *((_BYTE *)this + 62) = 0;
  if ( v3 )
    glitch::core::releaseProcessBuffer((glitch::core *)v3, v4);
  return 0;
}


// ===== 6def9c glitch::video::CGLSLShader::compileAndLink(void) =====
int __fastcall glitch::video::CGLSLShader::compileAndLink(glitch::video::CGLSLShaderCode **this)
{
  glitch::video::CGLSLShaderCode::compileShader(*(this + 17));
  glitch::video::CGLSLShaderCode::compileShader(*(this + 18));
  return glitch::video::CGLSLShader::linkProgram((const char **)this);
}


// ===== 6defc0 glitch::video::CGLSLShader::~CGLSLShader() =====
void __fastcall glitch::video::CGLSLShader::~CGLSLShader(glitch::video::CGLSLShader *this)
{
  int v2; // r0
  glitch::IReferenceCounted *v3; // r0
  glitch::IReferenceCounted *v4; // r0

  v2 = *((_DWORD *)this + 19);
  *(_DWORD *)this = off_98B148;
  if ( v2 )
  {
    glDeleteProgram();
    *((_DWORD *)this + 19) = 0;
  }
  glitch::video::CGLSLShader::deleteInfo(this);
  v3 = *((glitch::IReferenceCounted **)this + 18);
  if ( v3 )
    glitch::IReferenceCounted::drop(v3);
  v4 = *((glitch::IReferenceCounted **)this + 17);
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  glitch::video::IShader::~IShader(this);
}


// ===== 6df03c glitch::video::CGLSLShader::~CGLSLShader() =====
void __fastcall glitch::video::CGLSLShader::~CGLSLShader(glitch::video::CGLSLShader *this)
{
  glitch::video::CGLSLShader::~CGLSLShader(this);
  LC_API_FREE_0(this);
}


// ===== 6df058 glitch::video::CGLSLShader::~CGLSLShader() =====
void __fastcall glitch::video::CGLSLShader::~CGLSLShader(glitch::video::CGLSLShader *this)
{
  int v2; // r0
  glitch::IReferenceCounted *v3; // r0
  glitch::IReferenceCounted *v4; // r0

  v2 = *((_DWORD *)this + 19);
  *(_DWORD *)this = off_98B148;
  if ( v2 )
  {
    glDeleteProgram();
    *((_DWORD *)this + 19) = 0;
  }
  glitch::video::CGLSLShader::deleteInfo(this);
  v3 = *((glitch::IReferenceCounted **)this + 18);
  if ( v3 )
    glitch::IReferenceCounted::drop(v3);
  v4 = *((glitch::IReferenceCounted **)this + 17);
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  glitch::video::IShader::~IShader(this);
}


// ===== 6df0d4 glitch::video::CGLSLShader::CGLSLShader(glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler> *) =====
int __fastcall glitch::video::CGLSLShader::CGLSLShader(int a1, glitch::video::IVideoDriver *a2)
{
  glitch::video::IShader::IShader((glitch::video::IShader *)a1, 0, "", a2);
  *(_BYTE *)(a1 + 80) = 0;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)a1 = off_98B148;
  *(_DWORD *)(a1 + 72) = 0;
  *(_DWORD *)(a1 + 76) = 0;
  return a1;
}


// ===== 6df130 glitch::video::CGLSLShader::CGLSLShader(glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler> *) =====
int __fastcall glitch::video::CGLSLShader::CGLSLShader(int a1, glitch::video::IVideoDriver *a2)
{
  glitch::video::IShader::IShader((glitch::video::IShader *)a1, 0, "", a2);
  *(_BYTE *)(a1 + 80) = 0;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)a1 = off_98B148;
  *(_DWORD *)(a1 + 72) = 0;
  *(_DWORD *)(a1 + 76) = 0;
  return a1;
}


// ===== 6df18c glitch::video::CGLSLShader::rmRegenerateShader(glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler> *) =====
int __fastcall glitch::video::CGLSLShader::rmRegenerateShader(int a1)
{
  int result; // r0

  glitch::video::CGLSLShaderCode::rmRecompileShader(*(glitch::video::CGLSLShaderCode **)(a1 + 68));
  glitch::video::CGLSLShaderCode::rmRecompileShader(*(glitch::video::CGLSLShaderCode **)(a1 + 72));
  *(_DWORD *)(a1 + 76) = glCreateProgram();
  glAttachShader();
  glAttachShader();
  *(_DWORD *)(a1 + 56) = 0;
  result = glitch::video::CGLSLShader::linkProgram((const char **)a1);
  if ( !result )
  {
    result = glDeleteProgram();
    *(_DWORD *)(a1 + 76) = 0;
  }
  return result;
}


// ===== 6df1f0 glitch::video::CGLSLShader::CGLSLShader(ushort,char const*,boost::intrusive_ptr<glitch::video::CGLSLShaderCode> const&,boost::intrusive_ptr<glitch::video::CGLSLShaderCode> const&,glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler> *,bool) =====
int __fastcall glitch::video::CGLSLShader::CGLSLShader(
        int a1,
        unsigned __int16 a2,
        char *a3,
        int *a4,
        int *a5,
        glitch::video::IVideoDriver *a6,
        char a7)
{
  int v9; // r3
  int v10; // r3
  bool v11; // zf

  glitch::video::IShader::IShader((glitch::video::IShader *)a1, a2, a3, a6);
  *(_DWORD *)a1 = off_98B148;
  v9 = *a4;
  *(_DWORD *)(a1 + 68) = *a4;
  if ( v9 )
    ++*(_DWORD *)(v9 + 4);
  v10 = *a5;
  v11 = *a5 == 0;
  *(_DWORD *)(a1 + 72) = *a5;
  if ( !v11 )
    ++*(_DWORD *)(v10 + 4);
  *(_BYTE *)(a1 + 80) = 0;
  *(_DWORD *)(a1 + 76) = 0;
  glitch::video::CGLSLShader::createProgram((glitch::video::CGLSLShader *)a1);
  glAttachShader();
  glAttachShader();
  if ( !a7 || glitch::video::CGLSLShader::linkProgram((const char **)a1) )
    return a1;
  glDeleteProgram();
  *(_DWORD *)(a1 + 76) = 0;
  return a1;
}


// ===== 6df2c4 glitch::video::CGLSLShader::CGLSLShader(ushort,char const*,boost::intrusive_ptr<glitch::video::CGLSLShaderCode> const&,boost::intrusive_ptr<glitch::video::CGLSLShaderCode> const&,glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler> *,bool) =====
int __fastcall glitch::video::CGLSLShader::CGLSLShader(
        int a1,
        unsigned __int16 a2,
        char *a3,
        int *a4,
        int *a5,
        glitch::video::IVideoDriver *a6,
        char a7)
{
  int v9; // r3
  int v10; // r3
  bool v11; // zf

  glitch::video::IShader::IShader((glitch::video::IShader *)a1, a2, a3, a6);
  *(_DWORD *)a1 = off_98B148;
  v9 = *a4;
  *(_DWORD *)(a1 + 68) = *a4;
  if ( v9 )
    ++*(_DWORD *)(v9 + 4);
  v10 = *a5;
  v11 = *a5 == 0;
  *(_DWORD *)(a1 + 72) = *a5;
  if ( !v11 )
    ++*(_DWORD *)(v10 + 4);
  *(_BYTE *)(a1 + 80) = 0;
  *(_DWORD *)(a1 + 76) = 0;
  glitch::video::CGLSLShader::createProgram((glitch::video::CGLSLShader *)a1);
  glAttachShader();
  glAttachShader();
  if ( !a7 || glitch::video::CGLSLShader::linkProgram((const char **)a1) )
    return a1;
  glDeleteProgram();
  *(_DWORD *)(a1 + 76) = 0;
  return a1;
}


// ===== 6df398 glitch::video::CGLSLShaderCode::serializeAttributes(glitch::io::IAttributes *) =====
void __fastcall glitch::video::CGLSLShaderCode::serializeAttributes(
        glitch::video::CGLSLShaderCode *this,
        glitch::io::IAttributes *a2)
{
  ;
}


// ===== 6df39c glitch::video::CGLSLShaderCode::deserializeAttributes(glitch::io::IAttributes *) =====
void __fastcall glitch::video::CGLSLShaderCode::deserializeAttributes(
        glitch::video::CGLSLShaderCode *this,
        glitch::io::IAttributes *a2)
{
  ;
}


// ===== 6df3a0 `global constructor keyed to'.._source_glitch_video_CGLSLShaderCode.cpp =====
void `global constructor keyed to'.._source_glitch_video_CGLSLShaderCode.cpp()
{
  dword_9F82EC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F82E8 = 1056964608;
}


// ===== 6df3c0 glitch::video::CGLSLShaderCode::compileShader(void) =====
int __fastcall glitch::video::CGLSLShaderCode::compileShader(glitch::video::CGLSLShaderCode *this)
{
  glitch::core *v1; // r5
  int v4; // r1
  char *v5; // r5
  void *v6; // r1
  const char *v7; // r2
  char *v8; // r5
  const char *v9; // r2
  void *v10; // r1
  int v11; // [sp+0h] [bp-14h]
  int v12; // [sp+4h] [bp-10h]

  v1 = (glitch::core *)*((unsigned __int8 *)this + 52);
  if ( *((_BYTE *)this + 52) )
    return 0;
  glCompileShader();
  glGetShaderiv();
  glGetShaderiv();
  if ( !v1 )
  {
    v8 = (char *)glitch::core::allocProcessBuffer(nullptr, v4);
    glGetShaderInfoLog();
    glGetShaderiv();
    if ( v12 == 35633 )
      v9 = "vertex";
    else
      v9 = "fargment";
    glitch::os::Printer::logf(3, "GLSL %s shader failed to compile\n%s", v9, v8);
    if ( v8 )
    {
      glitch::core::releaseProcessBuffer((glitch::core *)v8, v10);
      return 0;
    }
    return 0;
  }
  if ( (int)v1 > 1 )
  {
    v5 = (char *)glitch::core::allocProcessBuffer(v1, v4);
    glGetProgramInfoLog();
    glGetShaderiv();
    if ( LC_API_STRSTR_0(v5, "WARNING") )
    {
      if ( v11 == 35633 )
        v7 = "vertex";
      else
        v7 = "fargment";
      glitch::os::Printer::logf(2, "GLSL %s shader program have warnings\n%s", v7, v5);
    }
    if ( v5 )
      glitch::core::releaseProcessBuffer((glitch::core *)v5, v6);
  }
  *((_BYTE *)this + 52) = 1;
  return 1;
}


// ===== 6df560 glitch::video::CGLSLShaderCode::createShader(int,char const**,int) =====
int __fastcall glitch::video::CGLSLShaderCode::createShader(
        glitch::video::CGLSLShaderCode *this,
        int a2,
        const char **a3,
        int a4)
{
  if ( !*((_DWORD *)this + 12) )
    *((_DWORD *)this + 12) = glCreateShader();
  return glShaderSource();
}


// ===== 6df5a4 glitch::video::CGLSLShaderCode::rmRecompileShader(void) =====
int __fastcall glitch::video::CGLSLShaderCode::rmRecompileShader(glitch::video::CGLSLShaderCode *this)
{
  *((_DWORD *)this + 12) = 0;
  glitch::video::CGLSLShaderCode::createShader(
    this,
    *((_DWORD *)this + 10),
    *((const char ***)this + 8),
    *((_DWORD *)this + 9));
  *((_BYTE *)this + 52) = 0;
  return glitch::video::CGLSLShaderCode::compileShader(this);
}


// ===== 6df5d4 glitch::video::CGLSLShaderCode::~CGLSLShaderCode() =====
void __fastcall glitch::video::CGLSLShaderCode::~CGLSLShaderCode(glitch::video::CGLSLShaderCode *this)
{
  void *v2; // r0

  v2 = *((void **)this + 8);
  *(_DWORD *)this = off_98B168;
  if ( v2 )
    LC_API_FREE_0(v2);
  glDeleteShader();
  glitch::video::IShaderCode::~IShaderCode(this);
}


// ===== 6df624 glitch::video::CGLSLShaderCode::~CGLSLShaderCode() =====
void __fastcall glitch::video::CGLSLShaderCode::~CGLSLShaderCode(glitch::video::CGLSLShaderCode *this)
{
  glitch::video::CGLSLShaderCode::~CGLSLShaderCode(this);
  LC_API_FREE_0(this);
}


// ===== 6df640 glitch::video::CGLSLShaderCode::~CGLSLShaderCode() =====
void __fastcall glitch::video::CGLSLShaderCode::~CGLSLShaderCode(glitch::video::CGLSLShaderCode *this)
{
  void *v2; // r0

  v2 = *((void **)this + 8);
  *(_DWORD *)this = off_98B168;
  if ( v2 )
    LC_API_FREE_0(v2);
  glDeleteShader();
  glitch::video::IShaderCode::~IShaderCode(this);
}


// ===== 6df690 glitch::video::CGLSLShaderCode::CGLSLShaderCode(glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler> *) =====
int __fastcall glitch::video::CGLSLShaderCode::CGLSLShaderCode(int a1, int a2)
{
  glitch::video::IShaderCode::IShaderCode((glitch::video::IShaderCode *)a1, "");
  *(_DWORD *)(a1 + 44) = a2;
  *(_BYTE *)(a1 + 52) = 0;
  *(_DWORD *)a1 = off_98B168;
  *(_DWORD *)(a1 + 48) = 0;
  return a1;
}


// ===== 6df6e4 glitch::video::CGLSLShaderCode::CGLSLShaderCode(glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler> *) =====
int __fastcall glitch::video::CGLSLShaderCode::CGLSLShaderCode(int a1, int a2)
{
  glitch::video::IShaderCode::IShaderCode((glitch::video::IShaderCode *)a1, "");
  *(_DWORD *)(a1 + 44) = a2;
  *(_BYTE *)(a1 + 52) = 0;
  *(_DWORD *)a1 = off_98B168;
  *(_DWORD *)(a1 + 48) = 0;
  return a1;
}


// ===== 6df738 glitch::video::CGLSLShaderCode::CGLSLShaderCode(char const*,char const**,glitch::video::E_SHADER_TYPE,glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler> *,bool) =====
int __fastcall glitch::video::CGLSLShaderCode::CGLSLShaderCode(
        int a1,
        const char *a2,
        const char **a3,
        int a4,
        int a5,
        char a6)
{
  const char *v9; // r0
  int v10; // r10
  const char **v11; // r10
  const char *v12; // t1
  int v13; // r3
  char *v14; // r0
  int v15; // r3
  char *v16; // r11
  int v17; // r6
  int v18; // r7
  size_t v19; // r0
  const char *v20; // r11
  size_t v21; // r0
  int v22; // r1

  glitch::video::IShaderCode::IShaderCode((glitch::video::IShaderCode *)a1, a2);
  *(_DWORD *)(a1 + 44) = a5;
  *(_BYTE *)(a1 + 52) = 0;
  *(_DWORD *)a1 = off_98B168;
  *(_DWORD *)(a1 + 48) = 0;
  v9 = *a3;
  if ( *a3 )
  {
    v11 = a3;
    do
    {
      v12 = v11[1];
      ++v11;
    }
    while ( v12 );
    v10 = v11 - a3;
    v9 = (const char *)(4 * v10);
  }
  else
  {
    v10 = 0;
  }
  v13 = 35632;
  if ( a4 == 4 )
    v13 = 35633;
  *(_DWORD *)(a1 + 40) = v13;
  *(_DWORD *)(a1 + 36) = v10;
  v14 = (char *)operator new[]((size_t)v9, 0);
  v15 = *(_DWORD *)(a1 + 36);
  v16 = v14;
  *(_DWORD *)(a1 + 32) = v14;
  if ( v15 > 0 )
  {
    v17 = 0;
    v18 = 0;
    while ( 1 )
    {
      v19 = LC_API_STRLEN_0(a3[v17]);
      *(_DWORD *)&v16[v17 * 4] = operator new[](v19 + 1, 0);
      v20 = a3[v17];
      ++v18;
      v21 = LC_API_STRLEN_0(v20);
      memcpy(*(void **)(*(_DWORD *)(a1 + 32) + v17 * 4), v20, v21 + 1);
      ++v17;
      if ( *(_DWORD *)(a1 + 36) <= v18 )
        break;
      v16 = *(char **)(a1 + 32);
    }
  }
  v22 = 35633;
  if ( a4 != 4 )
    v22 = 35632;
  glitch::video::CGLSLShaderCode::createShader((glitch::video::CGLSLShaderCode *)a1, v22, a3, v10);
  if ( a6 )
    glitch::video::CGLSLShaderCode::compileShader((glitch::video::CGLSLShaderCode *)a1);
  return a1;
}


// ===== 6df878 glitch::video::CGLSLShaderCode::CGLSLShaderCode(char const*,char const**,glitch::video::E_SHADER_TYPE,glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler> *,bool) =====
int __fastcall glitch::video::CGLSLShaderCode::CGLSLShaderCode(
        int a1,
        const char *a2,
        const char **a3,
        int a4,
        int a5,
        char a6)
{
  const char *v9; // r0
  int v10; // r10
  const char **v11; // r10
  const char *v12; // t1
  int v13; // r3
  char *v14; // r0
  int v15; // r3
  char *v16; // r11
  int v17; // r6
  int v18; // r7
  size_t v19; // r0
  const char *v20; // r11
  size_t v21; // r0
  int v22; // r1

  glitch::video::IShaderCode::IShaderCode((glitch::video::IShaderCode *)a1, a2);
  *(_DWORD *)(a1 + 44) = a5;
  *(_BYTE *)(a1 + 52) = 0;
  *(_DWORD *)a1 = off_98B168;
  *(_DWORD *)(a1 + 48) = 0;
  v9 = *a3;
  if ( *a3 )
  {
    v11 = a3;
    do
    {
      v12 = v11[1];
      ++v11;
    }
    while ( v12 );
    v10 = v11 - a3;
    v9 = (const char *)(4 * v10);
  }
  else
  {
    v10 = 0;
  }
  v13 = 35632;
  if ( a4 == 4 )
    v13 = 35633;
  *(_DWORD *)(a1 + 40) = v13;
  *(_DWORD *)(a1 + 36) = v10;
  v14 = (char *)operator new[]((size_t)v9, 0);
  v15 = *(_DWORD *)(a1 + 36);
  v16 = v14;
  *(_DWORD *)(a1 + 32) = v14;
  if ( v15 > 0 )
  {
    v17 = 0;
    v18 = 0;
    while ( 1 )
    {
      v19 = LC_API_STRLEN_0(a3[v17]);
      *(_DWORD *)&v16[v17 * 4] = operator new[](v19 + 1, 0);
      v20 = a3[v17];
      ++v18;
      v21 = LC_API_STRLEN_0(v20);
      memcpy(*(void **)(*(_DWORD *)(a1 + 32) + v17 * 4), v20, v21 + 1);
      ++v17;
      if ( *(_DWORD *)(a1 + 36) <= v18 )
        break;
      v16 = *(char **)(a1 + 32);
    }
  }
  v22 = 35633;
  if ( a4 != 4 )
    v22 = 35632;
  glitch::video::CGLSLShaderCode::createShader((glitch::video::CGLSLShaderCode *)a1, v22, a3, v10);
  if ( a6 )
    glitch::video::CGLSLShaderCode::compileShader((glitch::video::CGLSLShaderCode *)a1);
  return a1;
}


// ===== 6df9b8 glitch::video::CGLSLShaderHandler::CGLSLShaderHandler(void) =====
_DWORD *__fastcall glitch::video::CGLSLShaderHandler::CGLSLShaderHandler(_DWORD *this)
{
  *this = 0;
  return this;
}


// ===== 6df9c4 glitch::video::CGLSLShaderHandler::CGLSLShaderHandler(void) =====
_DWORD *__fastcall glitch::video::CGLSLShaderHandler::CGLSLShaderHandler(_DWORD *this)
{
  *this = 0;
  return this;
}


// ===== 6df9d0 glitch::video::CGLSLShaderHandler::initShaderHandler(glitch::video::IShaderManager *) =====
int __fastcall glitch::video::CGLSLShaderHandler::initShaderHandler(
        glitch::video::CGLSLShaderHandler *this,
        glitch::video::IShaderManager *a2)
{
  return 1;
}


// ===== 6df9d8 `global constructor keyed to'.._source_glitch_video_CGLSLShaderHandler.cpp =====
void `global constructor keyed to'.._source_glitch_video_CGLSLShaderHandler.cpp()
{
  dword_9F82F8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F82F4 = 1056964608;
}


// ===== 6df9f8 glitch::video::CGLSLShaderHandler::doVersionCheck(uint) =====
int __fastcall glitch::video::CGLSLShaderHandler::doVersionCheck(
        glitch::video::CGLSLShaderHandler *this,
        unsigned int a2)
{
  int v3; // r7
  char *String; // r7
  size_t v6; // r0
  float *v7; // r2
  glitch::core *v8; // r3
  char *v9; // r0
  glitch::core *v10; // r12
  unsigned int v11; // r7
  int v12; // r0
  float v13; // r7
  float v14; // r0
  int v15; // r1
  unsigned int v16; // r10
  char *v17; // r0
  char *v18; // r8
  GLint v19; // r7
  void *v20; // r1
  GLint *v21; // r9
  float x; // [sp+Ch] [bp-70h] BYREF
  GLint v23; // [sp+10h] [bp-6Ch] BYREF
  char v24[4]; // [sp+20h] [bp-5Ch] BYREF
  char v25[4]; // [sp+24h] [bp-58h] BYREF
  void *v26[5]; // [sp+2Ch] [bp-50h] BYREF
  void *v27; // [sp+40h] [bp-3Ch]
  void *v28[5]; // [sp+44h] [bp-38h] BYREF
  void *p; // [sp+58h] [bp-24h]
  _DWORD v30[4]; // [sp+5Ch] [bp-20h] BYREF
  glitch::core *v31; // [sp+6Ch] [bp-10h]
  void *v32; // [sp+70h] [bp-Ch]

  if ( a2 <= 0xC7 )
    return 0;
  String = (char *)glGetString(0x8B8Cu);
  v31 = (glitch::core *)v30;
  v32 = v30;
  v6 = LC_API_STRLEN_0(String);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v30,
    String,
    &String[v6]);
  v8 = v31;
  if ( v31 != v32 )
  {
    v25[0] = 46;
    v9 = std::priv::__find_if<char const*,std::priv::_Eq_char_bound<std::char_traits<char>>>((char *)v32, (int)v31, v25);
    v10 = v31;
    if ( v9 == (char *)v31 )
      goto LABEL_22;
    v8 = (glitch::core *)v32;
    v11 = v9 - (_BYTE *)v32;
    if ( v9 - (_BYTE *)v32 > 0 )
    {
      if ( v11 >= v31 - (glitch::core *)v32
        || (v24[0] = 32,
            v17 = std::priv::__find_if<char const*,std::priv::_Eq_char_bound<std::char_traits<char>>>(v9, (int)v31, v24),
            v10 = v31,
            v17 == (char *)v31) )
      {
        v12 = -1;
      }
      else
      {
        v12 = v17 - (_BYTE *)v32;
      }
      if ( (int)v11 >= v12 )
      {
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
          v26,
          (int)v30,
          v11 - 1,
          v10 - (glitch::core *)v32 + 1 - v11);
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          v30,
          v27,
          (_BYTE *)v26[4]);
        if ( v27 != v26 && v27 )
          GlitchFree(v27);
      }
      else
      {
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
          v28,
          (int)v30,
          v11 - 1,
          1 - v11 + v12);
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          v30,
          p,
          (_BYTE *)v28[4]);
        if ( p != v28 && p )
        {
          GlitchFree(p);
          v8 = (glitch::core *)v32;
          goto LABEL_13;
        }
      }
LABEL_22:
      v8 = (glitch::core *)v32;
    }
  }
LABEL_13:
  glitch::core::fast_atof_move(v8, &x, v7);
  v13 = x;
  v14 = (float)(v13 - floorf(x)) * 10.0;
  v16 = (int)ceilf(v14) + 100 * (int)v13;
  *(_DWORD *)this = v16;
  if ( v16 > 0x63 )
  {
    v18 = (char *)glitch::core::allocProcessBuffer((glitch::core *)&dword_20, v15);
    glitch::os::Printer::log((int)"    GLSL|ES version", (int)v32, 1);
    v19 = 0;
    v23 = 0;
    glGetIntegerv(0x8DF9u, &v23);
    sprintf(v18, "%d", v23);
    glitch::os::Printer::log((int)"    GLSL|ES number of binary shader format supported", (int)v18, 1);
    if ( v23 )
    {
      v21 = (GLint *)operator new[](4 * v23, 0);
      glGetIntegerv(0x8DF8u, v21);
      if ( v23 > 0 )
      {
        do
        {
          sprintf(v18, "%d", v21[v19]);
          glitch::os::Printer::log((int)"     - Shader binary format", (int)v18, 1);
          ++v19;
        }
        while ( v23 > v19 );
      }
    }
    if ( v18 )
      glitch::core::releaseProcessBuffer((glitch::core *)v18, v20);
    v3 = 1;
  }
  else
  {
    v3 = 0;
  }
  if ( v32 != v30 && v32 )
    GlitchFree(v32);
  return v3;
}


// ===== 6dfd2c `global constructor keyed to'.._source_glitch_video_CGLSLShaderManager.cpp =====
void `global constructor keyed to'.._source_glitch_video_CGLSLShaderManager.cpp()
{
  dword_9F8304 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F8300 = 1056964608;
}


// ===== 6dfd4c glitch::video::CGLSLShaderManager::createEmptyShader(char const*) =====
glitch::video::CGLSLShaderManager *__fastcall glitch::video::CGLSLShaderManager::createEmptyShader(
        glitch::video::CGLSLShaderManager *this,
        glitch::video::IVideoDriver **a2)
{
  _DWORD *v4; // r4
  int v5; // r3
  glitch::video::CGLSLShaderManager *result; // r0

  v4 = operator new(0x54u, 0);
  glitch::video::CGLSLShader::CGLSLShader((int)v4, a2[11]);
  *(_DWORD *)this = v4;
  if ( v4 )
    v5 = v4[1];
  result = this;
  if ( v4 )
    v4[1] = v5 + 1;
  return result;
}


// ===== 6dfd8c glitch::video::CGLSLShaderManager::createShaderInternal(char const*,boost::intrusive_ptr<glitch::video::CGLSLShaderCode>,boost::intrusive_ptr<glitch::video::CGLSLShaderCode>) =====
glitch::IReferenceCounted **__fastcall glitch::video::CGLSLShaderManager::createShaderInternal(
        glitch::IReferenceCounted **a1,
        int a2,
        char *a3,
        int *a4,
        int *a5)
{
  unsigned __int16 v6; // r7
  glitch::IReferenceCounted *v10; // r4
  glitch::IReferenceCounted *v11; // r0
  bool v12; // zf
  glitch::IReferenceCounted *v14; // [sp+14h] [bp-8h] BYREF

  v6 = *(_WORD *)(a2 + 40);
  v10 = (glitch::IReferenceCounted *)operator new(0x54u, 0);
  glitch::video::CGLSLShader::CGLSLShader((int)v10, v6, a3, a4, a5, *(glitch::video::IVideoDriver **)(a2 + 44), 1);
  v14 = v10;
  if ( v10 )
  {
    ++*((_DWORD *)v10 + 1);
    v10 = v14;
  }
  if ( *((unsigned __int16 *)v10 + 32) == 0xFFFF || !*((_BYTE *)v10 + 62) )
  {
    *a1 = nullptr;
    v11 = v14;
  }
  else
  {
    glitch::video::IShaderManager::addShader(a2, &v14);
    v11 = v14;
    v12 = v14 == nullptr;
    *a1 = v14;
    if ( !v12 )
    {
      ++*((_DWORD *)v11 + 1);
      v11 = v14;
    }
  }
  if ( v11 )
    glitch::IReferenceCounted::drop(v11);
  return a1;
}


// ===== 6dfe68 glitch::video::CGLSLShaderManager::createShaderCode(char const*,glitch::video::E_SHADER_TYPE,char const*,glitch::io::IReadFile *) =====
glitch::IReferenceCounted **__fastcall glitch::video::CGLSLShaderManager::createShaderCode(
        glitch::IReferenceCounted **a1,
        glitch::video::ICodeShaderManager *this,
        char *a3,
        int a4,
        char *a5,
        glitch::IReferenceCounted *a6)
{
  char *v10; // r9
  char *ShaderCodeName; // r5
  void *v12; // r1
  glitch::IReferenceCounted *v13; // r3
  glitch::IReferenceCounted *v14; // r0
  glitch::IReferenceCounted *v16; // r10
  glitch::IReferenceCounted *v17; // r8
  __int64 v18; // r0
  int v19; // r1
  const char *v20; // r3
  char *v21; // r3
  char *v22; // r2
  char *v23; // r3
  glitch::IReferenceCounted *v24; // r7
  glitch::IReferenceCounted *v25; // r3
  bool v26; // zf
  int v27; // r0
  glitch::core *v28; // [sp+8h] [bp-34h]
  int v29; // [sp+Ch] [bp-30h]
  const char *v30; // [sp+10h] [bp-2Ch] BYREF
  char *v31; // [sp+14h] [bp-28h]
  char *v32; // [sp+18h] [bp-24h]
  const char *v33; // [sp+1Ch] [bp-20h]
  char *v34; // [sp+20h] [bp-1Ch]
  char *v35; // [sp+24h] [bp-18h]
  char *v36; // [sp+28h] [bp-14h]
  glitch::core *v37; // [sp+2Ch] [bp-10h]
  int v38; // [sp+30h] [bp-Ch]
  glitch::IReferenceCounted *v39; // [sp+34h] [bp-8h] BYREF

  v10 = a5;
  if ( *((_DWORD *)this + 32) == -1 )
    glitch::video::ICodeShaderManager::initAdditionalConfig(this, "glsl.config");
  ShaderCodeName = (char *)glitch::video::ICodeShaderManager::makeShaderCodeName(this, a3, nullptr, a5, nullptr);
  glitch::video::ICodeShaderManager::getShaderCode((glitch::video::ICodeShaderManager *)&v39, (const char *)this);
  v13 = v39;
  if ( v39 )
  {
    *a1 = v39;
    ++*((_DWORD *)v13 + 1);
    v14 = v39;
    if ( !v39 )
      goto LABEL_6;
    goto LABEL_5;
  }
  v16 = *(glitch::IReferenceCounted **)(*(_DWORD *)(*((_DWORD *)this + 11) + 212) + 52);
  if ( v16 )
    ++*((_DWORD *)v16 + 1);
  if ( a6 )
  {
    v17 = a6;
  }
  else
  {
    v27 = (*(int (__fastcall **)(glitch::IReferenceCounted *, char *))(*(_DWORD *)v16 + 12))(v16, a3);
    v17 = (glitch::IReferenceCounted *)v27;
    if ( !v27 )
    {
      *a1 = nullptr;
      goto LABEL_18;
    }
  }
  v29 = (*(int (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v17 + 32))(v17);
  v18 = ((__int64 (__fastcall *)(glitch::IReferenceCounted *))*(_DWORD *)(*(_DWORD *)v17 + 32))(v17);
  v28 = (glitch::core *)glitch::core::allocProcessBuffer((glitch::core *)(v18 + 1), SHIDWORD(v18));
  if ( v29 == (*(int (__fastcall **)(glitch::IReferenceCounted *, glitch::core *, int))(*(_DWORD *)v17 + 12))(
                v17,
                v28,
                v29) )
  {
    *((_BYTE *)v28 + v29) = 0;
    if ( v17 != a6 )
      glitch::IReferenceCounted::drop(v17);
    v31 = nullptr;
    v32 = nullptr;
    v33 = nullptr;
    v34 = nullptr;
    v35 = nullptr;
    v36 = nullptr;
    v19 = *((_DWORD *)this + 11);
    v37 = nullptr;
    v38 = 0;
    v33 = "#define GLITCH_OPENGLES_2\n";
    v36 = "\n";
    v30 = nullptr;
    if ( (*(_DWORD *)(v19 + 136) & 0x400) != 0 )
      v20 = "#define GLITCH_USE_HIGHP\n";
    else
      v20 = "";
    v30 = v20;
    if ( (*(_DWORD *)(v19 + 136) & 0x800) != 0 )
      v21 = "#define GLITCH_USE_BIAS\n";
    else
      v21 = "";
    v31 = v21;
    if ( (*(_DWORD *)(v19 + 136) & 0x1000) != 0 )
      v22 = "#define GLITCH_FORCE_USE_BIAS\n";
    else
      v22 = "";
    v23 = *((char **)this + 31);
    v32 = v22;
    if ( !v23 )
      v23 = "";
    v34 = v23;
    if ( !a5 )
      v10 = "";
    v37 = v28;
    v35 = v10;
    v24 = (glitch::IReferenceCounted *)operator new(0x38u, 0);
    glitch::video::CGLSLShaderCode::CGLSLShaderCode((int)v24, ShaderCodeName, &v30, a4, *((_DWORD *)this + 11), 1);
    if ( v24 )
      ++*((_DWORD *)v24 + 1);
    v25 = (glitch::IReferenceCounted *)*((unsigned __int8 *)v24 + 52);
    v26 = v25 == nullptr;
    if ( *((_BYTE *)v24 + 52) )
    {
      *a1 = v24;
      v25 = *((glitch::IReferenceCounted **)v24 + 1);
    }
    else
    {
      *a1 = v25;
    }
    if ( !v26 )
      *((_DWORD *)v24 + 1) = (char *)v25 + 1;
    glitch::IReferenceCounted::drop(v24);
  }
  else
  {
    glitch::os::Printer::logf(3, "error reading %s", a3);
    *a1 = nullptr;
  }
  if ( v28 )
    glitch::core::releaseProcessBuffer(v28, v12);
LABEL_18:
  if ( v16 )
  {
    v14 = v16;
LABEL_5:
    glitch::IReferenceCounted::drop(v14);
  }
LABEL_6:
  if ( ShaderCodeName )
    glitch::core::releaseProcessBuffer((glitch::core *)ShaderCodeName, v12);
  return a1;
}


// ===== 6e01b4 glitch::video::CGLSLShaderManager::createShader(char const*,char const*,char const*,char const*,char const*,glitch::io::IReadFile *,glitch::io::IReadFile *) =====
glitch::IReferenceCounted **__fastcall glitch::video::CGLSLShaderManager::createShader(
        glitch::IReferenceCounted **this,
        char *a2,
        char *a3,
        char *a4,
        char *a5,
        char *a6,
        glitch::io::IReadFile *a7,
        glitch::io::IReadFile *a8,
        glitch::IReferenceCounted *a9)
{
  unsigned int Id; // r0
  int v14; // r3
  int *v15; // r0
  int v16; // r3
  bool v17; // zf
  glitch::IReferenceCounted *v19; // r3
  glitch::IReferenceCounted *v20; // [sp+8h] [bp-10h] BYREF
  glitch::IReferenceCounted *v21; // [sp+Ch] [bp-Ch] BYREF
  glitch::IReferenceCounted *v22; // [sp+10h] [bp-8h] BYREF
  glitch::IReferenceCounted *v23; // [sp+14h] [bp-4h] BYREF

  Id = glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::getId(
         (int)(a2 + 4),
         a3);
  if ( Id != 0xFFFF )
  {
    v14 = *((_DWORD *)a2 + 7);
    if ( Id >= (*((_DWORD *)a2 + 8) - v14) >> 3 )
      v15 = &glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid;
    else
      v15 = (int *)(v14 + 8 * Id);
    v16 = *v15;
    v17 = *v15 == 0;
    *this = (glitch::IReferenceCounted *)*v15;
    if ( !v17 )
      ++*(_DWORD *)(v16 + 4);
    return this;
  }
  glitch::video::CGLSLShaderManager::createShaderCode(&v23, (glitch::video::ICodeShaderManager *)a2, a4, 4, a5, a8);
  if ( !v23 )
  {
    *this = nullptr;
    return this;
  }
  glitch::video::CGLSLShaderManager::createShaderCode(
    &v22,
    (glitch::video::ICodeShaderManager *)a2,
    a6,
    14,
    (char *)a7,
    a9);
  v19 = v22;
  if ( v22 )
  {
    v21 = v23;
    if ( v23 )
    {
      ++*((_DWORD *)v23 + 1);
      v19 = v22;
      v20 = v22;
      if ( !v22 )
      {
LABEL_15:
        glitch::video::CGLSLShaderManager::createShaderInternal(this, (int)a2, a3, (int *)&v21, (int *)&v20);
        if ( v20 )
          glitch::IReferenceCounted::drop(v20);
        if ( v21 )
          glitch::IReferenceCounted::drop(v21);
        if ( v22 )
          glitch::IReferenceCounted::drop(v22);
        goto LABEL_21;
      }
    }
    else
    {
      v20 = v22;
    }
    ++*((_DWORD *)v19 + 1);
    goto LABEL_15;
  }
  *this = nullptr;
LABEL_21:
  if ( v23 )
    glitch::IReferenceCounted::drop(v23);
  return this;
}


// ===== 6e0348 glitch::video::CGLSLShaderManager::createShader(char const*,boost::intrusive_ptr<glitch::video::CGLSLShaderCode>,boost::intrusive_ptr<glitch::video::CGLSLShaderCode>) =====
glitch::IReferenceCounted **__fastcall glitch::video::CGLSLShaderManager::createShader(
        glitch::IReferenceCounted **a1,
        int a2,
        void *a3,
        glitch::IReferenceCounted **a4,
        glitch::IReferenceCounted **a5)
{
  unsigned int Id; // r0
  int v10; // r3
  int *v11; // r0
  int v12; // r3
  bool v13; // zf
  glitch::IReferenceCounted *v15; // r3
  glitch::IReferenceCounted *v16; // r3
  glitch::IReferenceCounted *v17; // [sp+8h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v18; // [sp+Ch] [bp-8h] BYREF

  Id = glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::getId(
         a2 + 4,
         a3);
  if ( Id == 0xFFFF )
  {
    v15 = *a4;
    if ( *a4 && *a5 )
    {
      v18 = *a4;
      ++*((_DWORD *)v15 + 1);
      v16 = *a5;
      v17 = *a5;
      if ( v17 )
        ++*((_DWORD *)v16 + 1);
      glitch::video::CGLSLShaderManager::createShaderInternal(a1, a2, (char *)a3, (int *)&v18, (int *)&v17);
      if ( v17 )
        glitch::IReferenceCounted::drop(v17);
      if ( v18 )
        glitch::IReferenceCounted::drop(v18);
    }
    else
    {
      *a1 = nullptr;
    }
  }
  else
  {
    v10 = *(_DWORD *)(a2 + 28);
    if ( Id >= (*(_DWORD *)(a2 + 32) - v10) >> 3 )
      v11 = &glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid;
    else
      v11 = (int *)(v10 + 8 * Id);
    v12 = *v11;
    v13 = *v11 == 0;
    *a1 = (glitch::IReferenceCounted *)*v11;
    if ( !v13 )
      ++*(_DWORD *)(v12 + 4);
  }
  return a1;
}

