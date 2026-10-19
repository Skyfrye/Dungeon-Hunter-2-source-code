// ===== 3674ac AnimatorSet::SetCurrentAnimation(int) =====
int __fastcall AnimatorSet::SetCurrentAnimation(AnimationSet **this, int a2)
{
  int *Animation; // r4
  int result; // r0
  int v5; // r3
  int v6; // r3

  Animation = (int *)AnimationSet::GetAnimation(*(this + 37), a2);
  result = Animation[8];
  if ( result != -1 )
  {
    v5 = Animation[11] + 1;
    ++Animation[9];
    Animation[11] = v5;
    v6 = (int)*(this + 38);
    *(this + 38) = (AnimationSet *)Animation;
    if ( v6 )
      --*(_DWORD *)(v6 + 36);
    glitch::collada::CSceneNodeAnimatorSet::setCurrentAnimation(
      (glitch::collada::CSceneNodeAnimatorSet *)this,
      Animation[8]);
    return Animation[8];
  }
  return result;
}


// ===== 367510 AnimatorSet::SetCallbacks(void (*)(glitch::scene::ITimelineController *,void *),void *,void (*)(glitch::collada::STriggeredEvent const&,void *),void *) =====
int __fastcall AnimatorSet::SetCallbacks(_DWORD *a1, int a2, int a3, int a4, int a5)
{
  int v6; // r0
  int v9; // r0

  v6 = a1[6];
  a1[7] = a4;
  a1[8] = a5;
  if ( v6 )
  {
    *(_DWORD *)(v6 + 12) = a5;
    *(_DWORD *)(v6 + 8) = a4;
  }
  v9 = (*(int (__fastcall **)(_DWORD *))(*a1 + 68))(a1);
  if ( v9 )
  {
    *(_DWORD *)(v9 + 12) = a1;
    *(_DWORD *)(v9 + 8) = AnimatorSet::_CBAnim;
  }
  return AnimApplicator::SetCallback((int)(a1 + 22), a2, a3);
}


// ===== 367588 `non-virtual thunk to'AnimatorSet::~AnimatorSet() =====
void __fastcall `non-virtual thunk to'AnimatorSet::~AnimatorSet(AnimatorSet *this)
{
  AnimatorSet::~AnimatorSet((AnimatorSet *)((char *)this - 4));
}


// ===== 367590 AnimatorSet::~AnimatorSet() =====
void __fastcall AnimatorSet::~AnimatorSet(AnimatorSet *this)
{
  int v1; // r2
  glitch::IReferenceCounted *v3; // r0

  v1 = *((_DWORD *)this + 38);
  *(_DWORD *)this = off_962A24;
  *((_DWORD *)this + 39) = off_962AD8;
  *((_DWORD *)this + 1) = off_962ABC;
  if ( v1 )
    --*(_DWORD *)(v1 + 36);
  v3 = *((glitch::IReferenceCounted **)this + 37);
  if ( v3 )
    glitch::IReferenceCounted::drop(v3);
  AnimApplicator::~AnimApplicator((AnimatorSet *)((char *)this + 88));
  glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet(this);
}


// ===== 367614 `non-virtual thunk to'AnimatorSet::~AnimatorSet() =====
void __fastcall `non-virtual thunk to'AnimatorSet::~AnimatorSet(AnimatorSet *this)
{
  AnimatorSet::~AnimatorSet((AnimatorSet *)((char *)this - 4));
}


// ===== 36761c AnimatorSet::~AnimatorSet() =====
void __fastcall AnimatorSet::~AnimatorSet(AnimatorSet *this)
{
  AnimatorSet::~AnimatorSet(this);
  CustomFree(this);
}


// ===== 367638 AnimatorSet::~AnimatorSet() =====
void __fastcall AnimatorSet::~AnimatorSet(AnimatorSet *this, int *a2)
{
  int v2; // r3
  int v4; // r1
  glitch::IReferenceCounted *v5; // r0

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[9];
  v4 = *((_DWORD *)this + 38);
  *((_DWORD *)this + 1) = off_962ABC;
  if ( v4 )
    --*(_DWORD *)(v4 + 36);
  v5 = *((glitch::IReferenceCounted **)this + 37);
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  AnimApplicator::~AnimApplicator((AnimatorSet *)((char *)this + 88));
  glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet(this);
}


// ===== 3676b8 AnimatorSet::AnimatorSet(boost::intrusive_ptr<AnimationSet> const&) =====
_DWORD *__fastcall AnimatorSet::AnimatorSet(_DWORD *a1, int *a2)
{
  glitch::IReferenceCounted *v3; // r3
  int v5; // r3
  _DWORD *result; // r0
  bool v7; // zf
  glitch::IReferenceCounted *v8; // [sp+4h] [bp-4h]

  a1[40] = 1;
  a1[39] = off_95B720;
  v3 = *(glitch::IReferenceCounted **)(*a2 + 32);
  v8 = v3;
  if ( v3 )
    ++*((_DWORD *)v3 + 1);
  glitch::collada::CSceneNodeAnimatorSet::CSceneNodeAnimatorSet();
  if ( v8 )
    glitch::IReferenceCounted::drop(v8);
  a1[1] = off_962ABC;
  a1[39] = off_962AD8;
  *a1 = off_962A24;
  AnimApplicator::AnimApplicator((int)(a1 + 22), (int)a1);
  v5 = *a2;
  result = a1;
  v7 = *a2 == 0;
  a1[37] = *a2;
  if ( !v7 )
    ++*(_DWORD *)(v5 + 4);
  a1[38] = 0;
  return result;
}


// ===== 367790 AnimatorSet::AnimatorSet(boost::intrusive_ptr<AnimationSet> const&) =====
int *__fastcall AnimatorSet::AnimatorSet(int *a1, int *a2, int *a3)
{
  int *v3; // r7
  _DWORD *v5; // r1
  int v7; // r2
  int v8; // r3
  int *result; // r0
  bool v10; // zf
  glitch::IReferenceCounted *v11; // [sp+4h] [bp-8h] BYREF

  v3 = a3;
  v5 = a2 + 1;
  v11 = *(glitch::IReferenceCounted **)(*a3 + 32);
  if ( v11 )
    a3 = *((int **)v11 + 1);
  if ( v11 )
    *((_DWORD *)v11 + 1) = (char *)a3 + 1;
  glitch::collada::CSceneNodeAnimatorSet::CSceneNodeAnimatorSet(a1, v5, &v11);
  if ( v11 )
    glitch::IReferenceCounted::drop(v11);
  v7 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v7 - 12)) = a2[9];
  a1[1] = (int)off_962ABC;
  AnimApplicator::AnimApplicator((int)(a1 + 22), (int)a1);
  v8 = *v3;
  result = a1;
  v10 = *v3 == 0;
  a1[37] = *v3;
  if ( !v10 )
    ++*(_DWORD *)(v8 + 4);
  a1[38] = 0;
  return result;
}


// ===== 367848 `virtual thunk to'AnimatorSet::~AnimatorSet() =====
void __fastcall `virtual thunk to'AnimatorSet::~AnimatorSet(AnimatorSet *this)
{
  AnimatorSet::~AnimatorSet((AnimatorSet *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 367858 `virtual thunk to'AnimatorSet::~AnimatorSet() =====
void __fastcall `virtual thunk to'AnimatorSet::~AnimatorSet(AnimatorSet *this)
{
  AnimatorSet::~AnimatorSet((AnimatorSet *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 367868 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getNumSegments(void) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getNumSegments(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getNumSegments((glitch::collada::CSceneNodeAnimatorSynchronizedBlender *)((char *)this - 36));
}


// ===== 367870 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getNumSegments(void) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getNumSegments(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this)
{
  return (*(int (__fastcall **)(_DWORD))(***((_DWORD ***)this + 12) + 8))(**((_DWORD **)this + 12));
}


// ===== 367890 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationLength(int,uint) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationLength(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this,
        int a2,
        unsigned int a3)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationLength(
           (glitch::collada::CSceneNodeAnimatorSynchronizedBlender *)((char *)this - 36),
           a2,
           a3);
}


// ===== 367898 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationLength(int,uint) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationLength(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this,
        int a2,
        unsigned int a3)
{
  int v3; // r3

  v3 = *(_DWORD *)(*((_DWORD *)this + 12) + 4 * a2);
  return (*(int (__fastcall **)(int, unsigned int))(*(_DWORD *)v3 + 12))(v3, a3);
}


// ===== 3678bc `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationLength(uint) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationLength(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this,
        unsigned int a2)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationLength(
           (glitch::collada::CSceneNodeAnimatorSynchronizedBlender *)((char *)this - 36),
           a2);
}


// ===== 3678c4 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationLength(uint) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationLength(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this,
        unsigned int a2)
{
  int v4; // r7
  float v5; // r6
  int i; // r4
  float v7; // r0

  v4 = (*((_DWORD *)this + 13) - *((_DWORD *)this + 12)) >> 2;
  if ( !v4 )
    return 0;
  v5 = 0.0;
  for ( i = 0; i != v4; ++i )
  {
    v7 = v5
       + (float)((float)(*(int (__fastcall **)(glitch::collada::CSceneNodeAnimatorSynchronizedBlender *, int, unsigned int))(*(_DWORD *)this + 144))(
                          this,
                          i,
                          a2)
               * *(float *)(*((_DWORD *)this + 15) + 4 * i));
    v5 = v7;
  }
  return (int)v7;
}


// ===== 367940 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationTimestamp(int,uint) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationTimestamp(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this,
        int a2,
        unsigned int a3)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationTimestamp(
           (glitch::collada::CSceneNodeAnimatorSynchronizedBlender *)((char *)this - 36),
           a2,
           a3);
}


// ===== 367948 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationTimestamp(int,uint) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationTimestamp(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this,
        int a2,
        unsigned int a3)
{
  int v3; // r3

  v3 = *(_DWORD *)(*((_DWORD *)this + 12) + 4 * a2);
  return (*(int (__fastcall **)(int, unsigned int))(*(_DWORD *)v3 + 20))(v3, a3);
}


// ===== 36796c `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationTimestamp(uint) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationTimestamp(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this,
        unsigned int a2)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationTimestamp(
           (glitch::collada::CSceneNodeAnimatorSynchronizedBlender *)((char *)this - 36),
           a2);
}


// ===== 367974 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationTimestamp(uint) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationTimestamp(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this,
        unsigned int a2)
{
  int v4; // r7
  float v5; // r6
  int i; // r4
  float v7; // r0

  v4 = (*((_DWORD *)this + 13) - *((_DWORD *)this + 12)) >> 2;
  if ( !v4 )
    return 0;
  v5 = 0.0;
  for ( i = 0; i != v4; ++i )
  {
    v7 = v5
       + (float)((float)(*(int (__fastcall **)(glitch::collada::CSceneNodeAnimatorSynchronizedBlender *, int, unsigned int))(*(_DWORD *)this + 152))(
                          this,
                          i,
                          a2)
               * *(float *)(*((_DWORD *)this + 15) + 4 * i));
    v5 = v7;
  }
  return (int)v7;
}


// ===== 3679f0 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationSegment(int,int) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationSegment(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this,
        int a2,
        int a3)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationSegment(
           (glitch::collada::CSceneNodeAnimatorSynchronizedBlender *)((char *)this - 36),
           a2,
           a3);
}


// ===== 3679f8 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationSegment(int,int) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationSegment(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this,
        int a2,
        int a3)
{
  int v3; // r3

  v3 = *(_DWORD *)(*((_DWORD *)this + 12) + 4 * a2);
  return (*(int (__fastcall **)(int, int))(*(_DWORD *)v3 + 28))(v3, a3);
}


// ===== 367a1c `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationSegment(int) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationSegment(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this,
        int a2)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationSegment(
           (glitch::collada::CSceneNodeAnimatorSynchronizedBlender *)((char *)this - 36),
           a2);
}


// ===== 367a24 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationSegment(int) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationSegment(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this,
        int a2)
{
  unsigned int v4; // r4
  int v5; // r6

  v4 = 0;
  v5 = (*(int (__fastcall **)(glitch::collada::CSceneNodeAnimatorSynchronizedBlender *))(*(_DWORD *)this + 140))(this)
     - 1;
  while ( v4 < (*(int (__fastcall **)(glitch::collada::CSceneNodeAnimatorSynchronizedBlender *))(*(_DWORD *)this + 140))(this) )
  {
    if ( (*(int (**)(void))(*(_DWORD *)this + 156))() <= a2 )
      v5 = v4;
    ++v4;
  }
  return v5;
}


// ===== 367a88 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::normalizeWeights(void) =====
float __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::normalizeWeights(float this)
{
  int v1; // r4
  float v2; // r8
  _DWORD *v3; // r5
  int v4; // r7
  float v5; // r6
  float v6; // r0
  int v7; // r4

  v1 = *(unsigned __int8 *)(LODWORD(this) + 178);
  v2 = this;
  if ( !*(_BYTE *)(LODWORD(this) + 178) )
  {
    v3 = *(_DWORD **)(LODWORD(this) + 60);
    v4 = (*(_DWORD *)(LODWORD(this) + 64) - (int)v3) >> 2;
    if ( !v4 )
    {
LABEL_9:
      *(_BYTE *)(LODWORD(v2) + 178) = 1;
      return this;
    }
    v5 = 0.0;
    do
    {
      v6 = v5 + *(float *)&v3[v1++];
      v5 = v6;
    }
    while ( v1 != v4 );
    LODWORD(this) = v6 == 0.0;
    if ( this == 0.0 )
    {
      v7 = 0;
      while ( 1 )
      {
        this = *(float *)&v3[v7] / v5;
        *(float *)&v3[v7++] = this;
        if ( v7 == v4 )
          break;
        v3 = *(_DWORD **)(LODWORD(v2) + 60);
      }
      goto LABEL_9;
    }
    if ( v1 )
      *v3 = 1065353216;
    *(_BYTE *)(LODWORD(v2) + 178) = 1;
  }
  return this;
}


// ===== 367b2c `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationElapsedTime(void) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationElapsedTime(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationElapsedTime((glitch::collada::CSceneNodeAnimatorSynchronizedBlender *)((char *)this - 36));
}


// ===== 367b34 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationElapsedTime(void) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationElapsedTime(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this)
{
  return 0;
}


// ===== 367b3c `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationPercentage(void) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationPercentage(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationPercentage((glitch::collada::CSceneNodeAnimatorSynchronizedBlender *)((char *)this - 36));
}


// ===== 367b44 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationPercentage(void) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationPercentage(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this)
{
  return (*(int (__fastcall **)(_DWORD))(***((_DWORD ***)this + 12) + 64))(**((_DWORD **)this + 12));
}


// ===== 367b64 AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::ResetDelta(uint) =====
void __fastcall AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::ResetDelta(
        AnimatorSynchronizedBlender::SynchronizedBlenderApplicator *this,
        unsigned int a2)
{
  ;
}


// ===== 367b68 AnimatorSynchronizedBlender::_CBAnim(glitch::scene::ITimelineController *,void *) =====
void AnimatorSynchronizedBlender::_CBAnim()
{
  ;
}


// ===== 367b6c AnimatorSynchronizedBlender::getType(void) =====
int __fastcall AnimatorSynchronizedBlender::getType(AnimatorSynchronizedBlender *this)
{
  return 14;
}


// ===== 367b74 AnimatorSynchronizedBlender::SetCallbacks(void (*)(glitch::scene::ITimelineController *,void *),void *,void (*)(glitch::collada::STriggeredEvent const&,void *),void *) =====
int __fastcall AnimatorSynchronizedBlender::SetCallbacks(_DWORD *a1, int a2, int a3, int a4, int a5)
{
  int v6; // r6
  int result; // r0
  int v8; // r6
  int v12; // r10
  int v13; // r3
  int v14; // r1
  _DWORD *v15; // r3
  int v16; // r2
  int v17; // r0

  v6 = a1[13];
  result = a1[12];
  v8 = (v6 - result) >> 2;
  if ( v8 )
  {
    v12 = 0;
    while ( 1 )
    {
      v13 = *(_DWORD *)(result + 4 * v12);
      v14 = 4 * v12++;
      v15 = *(_DWORD **)(v13 + 4);
      v16 = v15[6];
      v15[7] = a4;
      v15[8] = a5;
      if ( v16 )
      {
        *(_DWORD *)(v16 + 12) = a5;
        *(_DWORD *)(v16 + 8) = a4;
      }
      v17 = *(_DWORD *)(*(_DWORD *)(a1[12] + v14) + 4);
      result = (*(int (__fastcall **)(int))(*(_DWORD *)v17 + 68))(v17);
      if ( result )
      {
        *(_DWORD *)(result + 12) = a1;
        *(_DWORD *)(result + 8) = AnimatorSynchronizedBlender::_CBAnim;
      }
      if ( v12 == v8 )
        break;
      result = a1[12];
    }
  }
  a1[53] = a3;
  a1[52] = a2;
  return result;
}


// ===== 367c38 AnimatorSynchronizedBlender::SetScale(float) =====
_DWORD *__fastcall AnimatorSynchronizedBlender::SetScale(_DWORD *this, float a2)
{
  int v2; // r3
  _DWORD *v3; // r5
  int v5; // r6
  int v6; // r4
  int v7; // r3

  v2 = *(this + 12);
  v3 = this;
  v5 = (*(this + 13) - v2) >> 2;
  if ( v5 )
  {
    v6 = 0;
    while ( 1 )
    {
      v7 = *(_DWORD *)(v2 + 4 * v6++);
      this = (_DWORD *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v7 + 4) + 68))(*(_DWORD *)(v7 + 4));
      if ( this )
        this = (_DWORD *)(*(int (__fastcall **)(_DWORD *, _DWORD))(*this + 72))(this, LODWORD(a2));
      if ( v6 == v5 )
        break;
      v2 = v3[12];
    }
  }
  return this;
}


// ===== 367ca4 AnimatorSynchronizedBlender::BlendPost(void) =====
int __fastcall AnimatorSynchronizedBlender::BlendPost(AnimatorSynchronizedBlender *this)
{
  int v2; // r0
  int result; // r0
  int v4; // r5
  int v5; // r1
  int v6; // r0
  int (__fastcall *v7)(int, int); // r6
  int v8; // r0

  v2 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 12) + 4 * *((_DWORD *)this + 45)) + 4);
  result = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 68))(v2);
  v4 = result;
  if ( result )
  {
    v5 = (*(int (__fastcall **)(int))(*(_DWORD *)result + 52))(result);
    v6 = *((_DWORD *)this + 51);
    if ( v5 <= v6 )
      *((_DWORD *)this + 51) = v6 % v5;
    v7 = *(int (__fastcall **)(int, int))(*(_DWORD *)v4 + 12);
    v8 = (*(int (__fastcall **)(int))(*(_DWORD *)v4 + 44))(v4);
    result = v7(v4, v8 + *((_DWORD *)this + 51));
  }
  *((_DWORD *)this + 51) = 0;
  return result;
}


// ===== 367d2c `global constructor keyed to'.._.._sources_Core_Irrlicht_Nodes_Animators_AnimatorSynchronizedBlender.cpp =====
void `global constructor keyed to'.._.._sources_Core_Irrlicht_Nodes_Animators_AnimatorSynchronizedBlender.cpp()
{
  dword_9A2348 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2344 = 1056964608;
}


// ===== 367d4c AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::~SynchronizedBlenderApplicator() =====
void __fastcall AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::~SynchronizedBlenderApplicator(
        AnimatorSynchronizedBlender::SynchronizedBlenderApplicator *this)
{
  void *v2; // r0

  v2 = *((void **)this + 16);
  *(_DWORD *)this = off_963108;
  if ( v2 )
    GlitchFree(v2);
  AnimApplicator::~AnimApplicator(this);
}


// ===== 367d94 AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::ApplyValues(uint,uint) =====
int __fastcall AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::ApplyValues(
        AnimatorSynchronizedBlender::SynchronizedBlenderApplicator *this,
        unsigned int a2,
        unsigned int a3)
{
  _DWORD *v3; // r3
  int result; // r0

  v3 = *((_DWORD **)this + 15);
  result = *((_DWORD *)this + 17) - *((_DWORD *)this + 16);
  if ( (v3[16] - v3[15]) >> 2 != result >> 2 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      result = fprintf(
                 (FILE *)&_sF + 2,
                 "ASSERT(%s) FAILED: %s:%d\n",
                 "weights.size() == blender->Weights.size()",
                 "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Irrlicht\\Nodes\\Animators\\AnimatorSynchronizedBlender.cpp",
                 225);
      v3 = *((_DWORD **)this + 15);
    }
  }
  if ( a2 >= (v3[13] - v3[12]) >> 2 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      return fprintf(
               (FILE *)&_sF + 2,
               "ASSERT(%s) FAILED: %s:%d\n",
               "animatorId < blender->Animators.size()",
               "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Irrlicht\\Nodes\\Animators\\AnimatorSynchronizedBlender.cpp",
               226);
    }
  }
  return result;
}


// ===== 367ec8 AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::AnimateNode(uint) =====
float __fastcall AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::AnimateNode(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender **this,
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *a2)
{
  float v4; // r9
  float result; // r0
  _DWORD *v6; // r9
  _DWORD *v7; // r10
  int v8; // r6
  unsigned int v9; // r4
  float v10; // r8
  float *v11; // r10
  float v12; // r11
  float v13; // r0
  int v14; // r3
  int v15; // r6
  int v16; // r4
  int v17; // r0
  int v18; // r0
  _DWORD *v19; // lr

  if ( !*(this + 2) )
    return COERCE_FLOAT(
             glitch::collada::CSceneNodeAnimatorSynchronizedBlender::animateNode(
               *(this + 15),
               nullptr,
               (unsigned int)a2));
  v4 = *((float *)this + 15);
  if ( (*(_DWORD *)(LODWORD(v4) + 64) - *(_DWORD *)(LODWORD(v4) + 60)) >> 2 != (*(this + 17) - *(this + 16)) >> 2 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
      v4 = *((float *)this + 15);
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "weights.size() == blender->Weights.size()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Irrlicht\\Nodes\\Animators\\AnimatorSynchronizedBlender.cpp",
        355);
      v4 = *((float *)this + 15);
    }
  }
  *(this + 11) = nullptr;
  *(this + 9) = nullptr;
  *(this + 10) = nullptr;
  result = glitch::collada::CSceneNodeAnimatorSynchronizedBlender::normalizeWeights(v4);
  v6 = *(this + 15);
  v7 = v6;
  v8 = (v6[13] - v6[12]) >> 2;
  if ( v8 )
  {
    v9 = 0;
    while ( 1 )
    {
      v10 = *(float *)(v6[15] + 4 * v9);
      LODWORD(result) = v10 <= 0.0;
      if ( v10 <= 0.0 )
        goto LABEL_8;
      AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::ApplyValues(
        (AnimatorSynchronizedBlender::SynchronizedBlenderApplicator *)this,
        v9,
        (unsigned int)a2);
      result = COERCE_FLOAT(GetApplicator(*(glitch::scene::ISceneNodeAnimator **)(*(_DWORD *)(*((_DWORD *)*(this + 15)
                                                                                              + 12)
                                                                                            + 4 * v9)
                                                                                + 4)));
      v11 = (float *)LODWORD(result);
      if ( result == 0.0 )
        break;
      (*(void (__fastcall **)(float, glitch::collada::CSceneNodeAnimatorSynchronizedBlender *))(*(_DWORD *)LODWORD(result)
                                                                                              + 16))(
        COERCE_FLOAT(LODWORD(result)),
        a2);
      v12 = v10 * v11[10];
      v13 = v10 * v11[11];
      *((float *)this + 9) = *((float *)this + 9) + (float)(v10 * v11[9]);
      *((float *)this + 10) = *((float *)this + 10) + v12;
      result = *((float *)this + 11) + v13;
      v6 = *(this + 15);
      ++v9;
      *((float *)this + 11) = result;
      v7 = v6;
      if ( v9 == v8 )
        goto LABEL_13;
LABEL_9:
      v7 = v6;
    }
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      result = COERCE_FLOAT(
                 fprintf(
                   (FILE *)&_sF + 2,
                   "ASSERT(%s) FAILED: %s:%d\n",
                   "aa",
                   "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Irrlicht\\Nodes\\Animators\\AnimatorSynchronizedBlender.cpp",
                   380));
    }
    v6 = *(this + 15);
    v7 = v6;
LABEL_8:
    if ( ++v9 == v8 )
      goto LABEL_13;
    goto LABEL_9;
  }
LABEL_13:
  v14 = v6[24];
  v15 = (v6[25] - v14) >> 2;
  if ( v15 )
  {
    v16 = 0;
    while ( 1 )
    {
      if ( *(_DWORD *)(v14 + 4 * v16) )
      {
        v17 = *(_DWORD *)(*(_DWORD *)v7[12] + 4);
        v18 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v17 + 88))(v17, v16);
        v19 = *(this + 15);
        result = COERCE_FLOAT(
                   (*(int (__fastcall **)(int, _DWORD, _DWORD, int, _DWORD, _DWORD))(*(_DWORD *)v18 + 24))(
                     v18,
                     *(_DWORD *)(v19[21] + 4 * v16),
                     v19[15],
                     (v19[16] - v19[15]) >> 2,
                     *(_DWORD *)(v19[24] + 4 * v16),
                     *(_DWORD *)(v19[27] + 4 * v16)));
      }
      if ( ++v16 == v15 )
        break;
      v7 = *(this + 15);
      v14 = v7[24];
    }
  }
  *(this + 5) = a2;
  return result;
}


// ===== 36820c AnimatorSynchronizedBlender::animateNode(glitch::scene::ISceneNode *,uint) =====
float __fastcall AnimatorSynchronizedBlender::animateNode(
        AnimatorSynchronizedBlender *this,
        glitch::scene::ISceneNode *a2,
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *a3)
{
  int v4; // r0
  char *v6; // r6
  int v7; // r0
  int v8; // r8
  int v9; // r10
  float v10; // r7
  float v11; // r0
  int v12; // r8
  int v13; // r7
  int v14; // r0
  _DWORD *v15; // r0
  _DWORD *v16; // r7
  int v17; // r6
  float result; // r0
  int v19; // r3
  int v20; // r7
  float v21; // r0
  _DWORD *v22; // r7
  int v23; // r8
  int v24; // r7

  v4 = *((_DWORD *)this + 48);
  v6 = (char *)a3 - *((_DWORD *)this + 50);
  if ( v4 >= 0 )
  {
    v7 = v4 - (_DWORD)v6;
    *((_DWORD *)this + 48) = v7;
    if ( v7 <= 0 )
    {
      v19 = *((_DWORD *)this + 15);
      v20 = *((_DWORD *)this + 46);
      v21 = *(float *)(v19 + 4 * v20);
      v22 = (_DWORD *)(v19 + 4 * v20);
      if ( v21 != 0.0 )
      {
        *((_BYTE *)this + 177) = 1;
        *((_BYTE *)this + 178) = 0;
      }
      *v22 = 0;
      v23 = *((_DWORD *)this + 45);
      v24 = *((_DWORD *)this + 15);
      if ( *(float *)(v24 + 4 * v23) != 1.0 )
      {
        *((_BYTE *)this + 177) = 1;
        *((_BYTE *)this + 178) = 0;
      }
      *(_DWORD *)(v24 + 4 * v23) = 1065353216;
    }
    else
    {
      v8 = *((_DWORD *)this + 15);
      v9 = *((_DWORD *)this + 46);
      v10 = (float)v7 * *((float *)this + 49);
      if ( v10 != *(float *)(v8 + 4 * v9) )
      {
        *((_BYTE *)this + 177) = 1;
        *((_BYTE *)this + 178) = 0;
      }
      *(float *)(v8 + 4 * v9) = v10;
      v11 = 1.0 - v10;
      v12 = *((_DWORD *)this + 45);
      v13 = *((_DWORD *)this + 15);
      if ( v11 != *(float *)(v13 + 4 * v12) )
      {
        *((_BYTE *)this + 177) = 1;
        *((_BYTE *)this + 178) = 0;
      }
      *(float *)(v13 + 4 * v12) = v11;
    }
  }
  if ( *((_DWORD *)this + 52)
    && (v14 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 12) + 4 * *((_DWORD *)this + 45)) + 4),
        v15 = (_DWORD *)(*(int (__fastcall **)(int))(*(_DWORD *)v14 + 68))(v14),
        (v16 = v15) != nullptr)
    && (v17 = (int)&v6[v15[1] + *((_DWORD *)this + 47)], v17 >= (*(int (__fastcall **)(_DWORD *))(*v15 + 48))(v15)) )
  {
    *((_DWORD *)this + 51) = v17 - (*(int (__fastcall **)(_DWORD *))(*v16 + 48))(v16);
    AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::AnimateNode(
      (glitch::collada::CSceneNodeAnimatorSynchronizedBlender **)this + 54,
      a3);
    *((_DWORD *)this + 50) = a3;
    return COERCE_FLOAT((*((int (__fastcall **)(_DWORD *, _DWORD))this + 52))(v16, *((_DWORD *)this + 53)));
  }
  else
  {
    result = AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::AnimateNode(
               (glitch::collada::CSceneNodeAnimatorSynchronizedBlender **)this + 54,
               a3);
    *((_DWORD *)this + 50) = a3;
  }
  return result;
}


// ===== 3683bc AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::CustomResetDelta(void) =====
int __fastcall AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::CustomResetDelta(int this)
{
  unsigned int *v1; // r4
  glitch::scene::ISceneNodeAnimator *v2; // r5
  int v3; // r7
  int v4; // r5
  void (__fastcall *v5)(int, int); // r6
  int v6; // r0

  v1 = (unsigned int *)this;
  if ( *(_DWORD *)(this + 8) )
  {
    v2 = *(glitch::scene::ISceneNodeAnimator **)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(this + 60) + 48)
                                                           + 4 * *(_DWORD *)(*(_DWORD *)(this + 60) + 180))
                                               + 4);
    v3 = (*(int (__fastcall **)(glitch::scene::ISceneNodeAnimator *))(*(_DWORD *)v2 + 68))(v2);
    this = GetApplicator(v2);
    v4 = this;
    if ( this )
    {
      if ( v3 )
      {
        v5 = *(void (__fastcall **)(int, int))(*(_DWORD *)v3 + 12);
        v6 = (*(int (__fastcall **)(int))(*(_DWORD *)v3 + 44))(v3);
        v5(v3, v6);
      }
      AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::ApplyValues(
        (AnimatorSynchronizedBlender::SynchronizedBlenderApplicator *)v1,
        *(_DWORD *)(v1[15] + 180),
        v1[5]);
      return (*(int (__fastcall **)(int, unsigned int))(*(_DWORD *)v4 + 12))(v4, v1[5]);
    }
    else if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      return fprintf(
               (FILE *)&_sF + 2,
               "ASSERT(%s) FAILED: %s:%d\n",
               "aa",
               "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Irrlicht\\Nodes\\Animators\\AnimatorSynchronizedBlender.cpp",
               326);
    }
  }
  return this;
}


// ===== 3684d8 AnimatorSynchronizedBlender::Blend(int) =====
float __fastcall AnimatorSynchronizedBlender::Blend(AnimatorSynchronizedBlender *this, int a2)
{
  unsigned int v2; // r5
  int v5; // r0
  float result; // r0

  v2 = (*((_DWORD *)this + 13) - *((_DWORD *)this + 12)) >> 2;
  if ( v2 != 2 )
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
        "numAnimators == 2",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Irrlicht\\Nodes\\Animators\\AnimatorSynchronizedBlender.cpp",
        89);
    }
  }
  v5 = *((_DWORD *)this + 45);
  *((_DWORD *)this + 46) = v5;
  *((_DWORD *)this + 45) = (v5 + 1) % v2;
  AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::CustomResetDelta((int)this + 216);
  result = *((float *)this + 47);
  *((float *)this + 48) = result;
  if ( SLODWORD(result) > 0 )
  {
    result = 1.0 / (float)SLODWORD(result);
    *((float *)this + 49) = result;
  }
  *((_DWORD *)this + 47) = a2 & ~(a2 >> 31);
  return result;
}


// ===== 3685cc AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::SetRefNode(glitch::scene::ISceneNode *) =====
int __fastcall AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::SetRefNode(
        AnimatorSynchronizedBlender::SynchronizedBlenderApplicator *this,
        glitch::scene::ISceneNode *a2)
{
  int result; // r0
  _DWORD *v5; // r3
  int v6; // r2
  int v7; // r7
  int v8; // r6
  int Applicator; // r0
  int v10; // r2
  int v11; // r7
  int v12; // r6

  if ( !*((_DWORD *)this + 15) )
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
        "blender",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Irrlicht\\Nodes\\Animators\\AnimatorSynchronizedBlender.cpp",
        271);
    }
  }
  result = AnimApplicator::SetRefNode((int)this, a2);
  v5 = *((_DWORD **)this + 15);
  v6 = v5[12];
  v7 = (v5[13] - v6) >> 2;
  if ( v7 )
  {
    v8 = 0;
    while ( 1 )
    {
      Applicator = GetApplicator(*(glitch::scene::ISceneNodeAnimator **)(*(_DWORD *)(v6 + 4 * v8) + 4));
      if ( Applicator )
      {
        ++v8;
        result = (*(int (__fastcall **)(int, glitch::scene::ISceneNode *))(*(_DWORD *)Applicator + 8))(Applicator, a2);
        if ( v8 == v7 )
          goto LABEL_8;
      }
      else
      {
        ++v8;
        result = AnimApplicator::SetRefNode((int)this, nullptr);
        if ( v8 == v7 )
        {
LABEL_8:
          v5 = *((_DWORD **)this + 15);
          break;
        }
      }
      v6 = *(_DWORD *)(*((_DWORD *)this + 15) + 48);
    }
  }
  *((_DWORD *)this + 19) = -1;
  v10 = v5[24];
  v11 = (v5[25] - v10) >> 2;
  if ( v11 )
  {
    v12 = 0;
    while ( 1 )
    {
      if ( a2 == *(glitch::scene::ISceneNode **)(v10 + 4 * v12) )
      {
        result = (*(int (__fastcall **)(_DWORD *, int))(*v5 + 84))(v5, v12);
        if ( *(_DWORD *)(result + 8) == 1 )
          *((_DWORD *)this + 19) = v12;
      }
      if ( ++v12 == v11 )
        break;
      v5 = *((_DWORD **)this + 15);
      v10 = v5[24];
    }
  }
  return result;
}


// ===== 368748 std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(float *,uint,float const&,std::__false_type const&) =====
char *__fastcall std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
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
      return (char *)std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(result);
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


// ===== 368890 std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
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


// ===== 3688f0 AnimatorSynchronizedBlender::AnimatorSynchronizedBlender(void) =====
void __fastcall AnimatorSynchronizedBlender::AnimatorSynchronizedBlender(AnimatorSynchronizedBlender *this)
{
  *((_DWORD *)this + 75) = 1;
  *((_DWORD *)this + 74) = off_95B720;
  glitch::collada::CSceneNodeAnimatorSynchronizedBlender::CSceneNodeAnimatorSynchronizedBlender(this);
  *((_DWORD *)this + 49) = 0;
  *((_DWORD *)this + 45) = 0;
  *(_DWORD *)this = off_962D3C;
  *((_DWORD *)this + 74) = off_962E74;
  *((_DWORD *)this + 1) = off_962E0C;
  *((_DWORD *)this + 9) = off_962E20;
  *((_DWORD *)this + 46) = 0;
  *((_DWORD *)this + 47) = 0;
  *((_DWORD *)this + 48) = 0;
  *((_DWORD *)this + 50) = 0;
  *((_DWORD *)this + 51) = 0;
  *((_DWORD *)this + 52) = 0;
  *((_DWORD *)this + 53) = 0;
  AnimApplicator::AnimApplicator((int)this + 216, (int)this);
  *((_DWORD *)this + 72) = 0;
  *((_DWORD *)this + 73) = -1;
  *((_DWORD *)this + 69) = this;
  *((_DWORD *)this + 54) = off_963108;
  *((_DWORD *)this + 70) = 0;
  *((_DWORD *)this + 71) = 0;
}


// ===== 3689cc AnimatorSynchronizedBlender::AnimatorSynchronizedBlender(void) =====
void __fastcall AnimatorSynchronizedBlender::AnimatorSynchronizedBlender(AnimatorSynchronizedBlender *this, int *a2)
{
  int v4; // r2

  glitch::collada::CSceneNodeAnimatorSynchronizedBlender::CSceneNodeAnimatorSynchronizedBlender(this);
  v4 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v4 - 12)) = a2[9];
  *((_DWORD *)this + 1) = off_962E0C;
  *((_DWORD *)this + 9) = off_962E20;
  *((_DWORD *)this + 49) = 0;
  *((_DWORD *)this + 45) = 0;
  *((_DWORD *)this + 46) = 0;
  *((_DWORD *)this + 47) = 0;
  *((_DWORD *)this + 48) = 0;
  *((_DWORD *)this + 50) = 0;
  *((_DWORD *)this + 51) = 0;
  *((_DWORD *)this + 52) = 0;
  *((_DWORD *)this + 53) = 0;
  AnimApplicator::AnimApplicator((int)this + 216, (int)this);
  *((_DWORD *)this + 72) = 0;
  *((_DWORD *)this + 73) = -1;
  *((_DWORD *)this + 69) = this;
  *((_DWORD *)this + 54) = off_963108;
  *((_DWORD *)this + 70) = 0;
  *((_DWORD *)this + 71) = 0;
}


// ===== 368a88 std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(float *,uint,float const&) =====
void __fastcall std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
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
      std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        (char *)a1,
        a2,
        a3,
        a4);
    }
    else
    {
      v8 = 4
         * std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
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


// ===== 368b60 std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,float const&) =====
void __fastcall std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::resize(
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
    std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
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


// ===== 368ba4 AnimatorSynchronizedBlender::compile(std::vector<uchar,glitch::core::SAllocator<uchar,(glitch::memory::E_MEMORY_HINT)0>> *) =====
void __fastcall AnimatorSynchronizedBlender::compile(int a1)
{
  int v2; // r1
  int v3; // r3
  int v4; // r1
  int v5; // [sp+4h] [bp-4h] BYREF

  glitch::collada::CSceneNodeAnimatorSynchronizedBlender::compile();
  v2 = *(_DWORD *)(a1 + 276);
  v3 = *(_DWORD *)(v2 + 60);
  v4 = *(_DWORD *)(v2 + 64);
  v5 = 0;
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    a1 + 280,
    (v4 - v3) >> 2,
    (char *)&v5);
}


// ===== 368be4 AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender() =====
void __fastcall AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender(AnimatorSynchronizedBlender *this, int *a2)
{
  int v2; // r3
  void *v4; // r0

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[9];
  v4 = *((void **)this + 70);
  *((_DWORD *)this + 1) = off_962E0C;
  *((_DWORD *)this + 9) = off_962E20;
  *((_DWORD *)this + 54) = off_963108;
  if ( v4 )
    GlitchFree(v4);
  AnimApplicator::~AnimApplicator((AnimatorSynchronizedBlender *)((char *)this + 216));
  glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender(this);
}


// ===== 368c70 AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::~SynchronizedBlenderApplicator() =====
void __fastcall AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::~SynchronizedBlenderApplicator(
        AnimatorSynchronizedBlender::SynchronizedBlenderApplicator *this)
{
  void *v2; // r0

  v2 = *((void **)this + 16);
  *(_DWORD *)this = off_963108;
  if ( v2 )
    GlitchFree(v2);
  AnimApplicator::~AnimApplicator(this);
  CustomFree(this);
}


// ===== 368cc0 `non-virtual thunk to'AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender() =====
void __fastcall `non-virtual thunk to'AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender(
        AnimatorSynchronizedBlender *this)
{
  AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender((AnimatorSynchronizedBlender *)((char *)this - 36));
}


// ===== 368cc8 `non-virtual thunk to'AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender() =====
void __fastcall `non-virtual thunk to'AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender(
        AnimatorSynchronizedBlender *this)
{
  AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender((AnimatorSynchronizedBlender *)((char *)this - 4));
}


// ===== 368cd0 AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender() =====
void __fastcall AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender(AnimatorSynchronizedBlender *this)
{
  void *v2; // r0

  v2 = *((void **)this + 70);
  *(_DWORD *)this = off_962D3C;
  *((_DWORD *)this + 74) = off_962E74;
  *((_DWORD *)this + 1) = off_962E0C;
  *((_DWORD *)this + 9) = off_962E20;
  *((_DWORD *)this + 54) = off_963108;
  if ( v2 )
    GlitchFree(v2);
  AnimApplicator::~AnimApplicator((AnimatorSynchronizedBlender *)((char *)this + 216));
  glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender(this);
}


// ===== 368d60 `non-virtual thunk to'AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender() =====
void __fastcall `non-virtual thunk to'AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender(
        AnimatorSynchronizedBlender *this)
{
  AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender((AnimatorSynchronizedBlender *)((char *)this - 36));
}


// ===== 368d68 `non-virtual thunk to'AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender() =====
void __fastcall `non-virtual thunk to'AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender(
        AnimatorSynchronizedBlender *this)
{
  AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender((AnimatorSynchronizedBlender *)((char *)this - 4));
}


// ===== 368d70 AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender() =====
void __fastcall AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender(AnimatorSynchronizedBlender *this)
{
  AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender(this);
  CustomFree(this);
}


// ===== 368d8c `virtual thunk to'AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender() =====
void __fastcall `virtual thunk to'AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender(
        AnimatorSynchronizedBlender *this)
{
  AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender((AnimatorSynchronizedBlender *)((char *)this
                                                                                          + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 368d9c `virtual thunk to'AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender() =====
void __fastcall `virtual thunk to'AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender(
        AnimatorSynchronizedBlender *this)
{
  AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender((AnimatorSynchronizedBlender *)((char *)this
                                                                                          + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 368dac `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::getNumSegments(void) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::getNumSegments(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedSet::getNumSegments((glitch::collada::CSceneNodeAnimatorSynchronizedSet *)((char *)this - 88));
}


// ===== 368db4 glitch::collada::CSceneNodeAnimatorSynchronizedSet::getNumSegments(void) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedSet::getNumSegments(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this)
{
  return *((_DWORD *)this + 27);
}


// ===== 368dbc `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationLength(uint) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationLength(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this,
        unsigned int a2)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationLength(
           (glitch::collada::CSceneNodeAnimatorSynchronizedSet *)((char *)this - 88),
           a2);
}


// ===== 368dc4 glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationLength(uint) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationLength(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this,
        unsigned int a2)
{
  return *(_DWORD *)(*((_DWORD *)this + 24) + 32 * a2 + 4);
}


// ===== 368dd4 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationLength(int,uint) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationLength(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this,
        int a2,
        unsigned int a3)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationLength(
           (glitch::collada::CSceneNodeAnimatorSynchronizedSet *)((char *)this - 88),
           a2,
           a3);
}


// ===== 368ddc glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationLength(int,uint) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationLength(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this,
        int a2,
        unsigned int a3)
{
  return (*(int (__fastcall **)(glitch::collada::CSceneNodeAnimatorSynchronizedSet *, unsigned int))(*(_DWORD *)this + 148))(
           this,
           a3);
}


// ===== 368df4 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationTimestamp(uint) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationTimestamp(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this,
        unsigned int a2)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationTimestamp(
           (glitch::collada::CSceneNodeAnimatorSynchronizedSet *)((char *)this - 88),
           a2);
}


// ===== 368dfc glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationTimestamp(uint) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationTimestamp(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this,
        unsigned int a2)
{
  return *(_DWORD *)(*((_DWORD *)this + 24) + 32 * a2);
}


// ===== 368e08 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationTimestamp(int,uint) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationTimestamp(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this,
        int a2,
        unsigned int a3)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationTimestamp(
           (glitch::collada::CSceneNodeAnimatorSynchronizedSet *)((char *)this - 88),
           a2,
           a3);
}


// ===== 368e10 glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationTimestamp(int,uint) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationTimestamp(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this,
        int a2,
        unsigned int a3)
{
  return (*(int (__fastcall **)(glitch::collada::CSceneNodeAnimatorSynchronizedSet *, unsigned int))(*(_DWORD *)this + 148))(
           this,
           a3);
}


// ===== 368e28 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationSegment(int) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationSegment(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this,
        int a2)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationSegment(
           (glitch::collada::CSceneNodeAnimatorSynchronizedSet *)((char *)this - 88),
           a2);
}


// ===== 368e30 glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationSegment(int) =====
unsigned int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationSegment(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this,
        int a2)
{
  int v2; // r6
  bool v5; // zf
  unsigned int v6; // r6
  unsigned int v7; // r4

  v2 = *((_DWORD *)this + 27);
  v5 = v2 == 0;
  v6 = v2 - 1;
  if ( !v5 )
  {
    v7 = 0;
    do
    {
      if ( (*(int (__fastcall **)(glitch::collada::CSceneNodeAnimatorSynchronizedSet *, unsigned int))(*(_DWORD *)this + 156))(
             this,
             v7) <= a2 )
        v6 = v7;
      ++v7;
    }
    while ( *((_DWORD *)this + 27) > v7 );
  }
  return v6;
}


// ===== 368e84 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationSegment(int,int) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationSegment(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this,
        int a2,
        int a3)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationSegment(
           (glitch::collada::CSceneNodeAnimatorSynchronizedSet *)((char *)this - 88),
           a2,
           a3);
}


// ===== 368e8c glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationSegment(int,int) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationSegment(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(glitch::collada::CSceneNodeAnimatorSynchronizedSet *, int))(*(_DWORD *)this + 164))(
           this,
           a3);
}


// ===== 368ea4 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::hasReachedEnd(void) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::hasReachedEnd(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedSet::hasReachedEnd((glitch::collada::CSceneNodeAnimatorSynchronizedSet *)((char *)this - 88));
}


// ===== 368eac glitch::collada::CSceneNodeAnimatorSynchronizedSet::hasReachedEnd(void) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedSet::hasReachedEnd(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this)
{
  return *((unsigned __int8 *)this + 128);
}


// ===== 368eb4 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationElapsedTime(void) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationElapsedTime(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationElapsedTime((glitch::collada::CSceneNodeAnimatorSynchronizedSet *)((char *)this - 88));
}


// ===== 368ebc glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationElapsedTime(void) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationElapsedTime(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this)
{
  return (int)*((float *)this + 31);
}


// ===== 368ecc `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationPercentage(void) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationPercentage(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationPercentage((glitch::collada::CSceneNodeAnimatorSynchronizedSet *)((char *)this - 88));
}


// ===== 368ed4 glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationPercentage(void) =====
float __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedSet::getSynchronizationPercentage(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this)
{
  float v1; // r4

  v1 = *((float *)this + 31);
  return v1
       / (float)(*(int (__fastcall **)(glitch::collada::CSceneNodeAnimatorSynchronizedSet *))(*(_DWORD *)this + 72))(this);
}


// ===== 368efc AnimatorSynchronizedSet::getType(void) =====
int __fastcall AnimatorSynchronizedSet::getType(AnimatorSynchronizedSet *this)
{
  return 15;
}


// ===== 368f04 `global constructor keyed to'.._.._sources_Core_Irrlicht_Nodes_Animators_AnimatorSynchronizedSet.cpp =====
void `global constructor keyed to'.._.._sources_Core_Irrlicht_Nodes_Animators_AnimatorSynchronizedSet.cpp()
{
  dword_9A2354 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2350 = 1056964608;
}


// ===== 368f24 AnimatorSynchronizedSet::animateNode(glitch::scene::ISceneNode *,uint) =====
float __fastcall AnimatorSynchronizedSet::animateNode(
        AnimatorSynchronizedSet *this,
        glitch::scene::ISceneNode *a2,
        unsigned int a3)
{
  glitch::collada::CSceneNodeAnimatorSet::animateNode(this, a2, a3);
  return AnimApplicator::AnimateNode(COERCE_FLOAT((AnimatorSynchronizedSet *)((char *)this + 132)), a3);
}


// ===== 368f44 `non-virtual thunk to'AnimatorSynchronizedSet::~AnimatorSynchronizedSet() =====
void __fastcall `non-virtual thunk to'AnimatorSynchronizedSet::~AnimatorSynchronizedSet(AnimatorSynchronizedSet *this)
{
  AnimatorSynchronizedSet::~AnimatorSynchronizedSet((AnimatorSynchronizedSet *)((char *)this - 88));
}


// ===== 368f4c `non-virtual thunk to'AnimatorSynchronizedSet::~AnimatorSynchronizedSet() =====
void __fastcall `non-virtual thunk to'AnimatorSynchronizedSet::~AnimatorSynchronizedSet(AnimatorSynchronizedSet *this)
{
  AnimatorSynchronizedSet::~AnimatorSynchronizedSet((AnimatorSynchronizedSet *)((char *)this - 4));
}


// ===== 368f54 AnimatorSynchronizedSet::~AnimatorSynchronizedSet() =====
void __fastcall AnimatorSynchronizedSet::~AnimatorSynchronizedSet(AnimatorSynchronizedSet *this)
{
  *(_DWORD *)this = off_96312C;
  *((_DWORD *)this + 48) = off_963268;
  *((_DWORD *)this + 1) = off_963200;
  *((_DWORD *)this + 22) = off_963214;
  AnimApplicator::~AnimApplicator((AnimatorSynchronizedSet *)((char *)this + 132));
  glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet(this);
}


// ===== 368fbc `non-virtual thunk to'AnimatorSynchronizedSet::~AnimatorSynchronizedSet() =====
void __fastcall `non-virtual thunk to'AnimatorSynchronizedSet::~AnimatorSynchronizedSet(AnimatorSynchronizedSet *this)
{
  AnimatorSynchronizedSet::~AnimatorSynchronizedSet((AnimatorSynchronizedSet *)((char *)this - 88));
}


// ===== 368fc4 `non-virtual thunk to'AnimatorSynchronizedSet::~AnimatorSynchronizedSet() =====
void __fastcall `non-virtual thunk to'AnimatorSynchronizedSet::~AnimatorSynchronizedSet(AnimatorSynchronizedSet *this)
{
  AnimatorSynchronizedSet::~AnimatorSynchronizedSet((AnimatorSynchronizedSet *)((char *)this - 4));
}


// ===== 368fcc AnimatorSynchronizedSet::~AnimatorSynchronizedSet() =====
void __fastcall AnimatorSynchronizedSet::~AnimatorSynchronizedSet(AnimatorSynchronizedSet *this)
{
  AnimatorSynchronizedSet::~AnimatorSynchronizedSet(this);
  CustomFree(this);
}


// ===== 368fe8 AnimatorSynchronizedSet::~AnimatorSynchronizedSet() =====
void __fastcall AnimatorSynchronizedSet::~AnimatorSynchronizedSet(AnimatorSynchronizedSet *this, int *a2)
{
  int v3; // r1

  v3 = *a2;
  *(_DWORD *)this = v3;
  *(_DWORD *)((char *)this + *(_DWORD *)(v3 - 12)) = a2[11];
  *((_DWORD *)this + 1) = off_963200;
  *((_DWORD *)this + 22) = off_963214;
  AnimApplicator::~AnimApplicator((AnimatorSynchronizedSet *)((char *)this + 132));
  glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet(this);
}


// ===== 36904c AnimatorSynchronizedSet::AnimatorSynchronizedSet(boost::intrusive_ptr<glitch::collada::CAnimationSet> const&,std::vector<std::string,glitch::core::SAllocator<std::string,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
_DWORD *__fastcall AnimatorSynchronizedSet::AnimatorSynchronizedSet(_DWORD *a1)
{
  a1[49] = 1;
  a1[48] = off_95B720;
  glitch::collada::CSceneNodeAnimatorSynchronizedSet::CSceneNodeAnimatorSynchronizedSet();
  *a1 = off_96312C;
  a1[48] = off_963268;
  a1[1] = off_963200;
  a1[22] = off_963214;
  AnimApplicator::AnimApplicator((int)(a1 + 33), (int)a1);
  return a1;
}


// ===== 3690dc AnimatorSynchronizedSet::AnimatorSynchronizedSet(boost::intrusive_ptr<glitch::collada::CAnimationSet> const&,std::vector<std::string,glitch::core::SAllocator<std::string,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
int *__fastcall AnimatorSynchronizedSet::AnimatorSynchronizedSet(int *a1, int *a2)
{
  int v4; // r2

  glitch::collada::CSceneNodeAnimatorSynchronizedSet::CSceneNodeAnimatorSynchronizedSet(a1, a2 + 1);
  v4 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v4 - 12)) = a2[11];
  a1[1] = (int)off_963200;
  a1[22] = (int)off_963214;
  AnimApplicator::AnimApplicator((int)(a1 + 33), (int)a1);
  return a1;
}


// ===== 369140 `virtual thunk to'AnimatorSynchronizedSet::~AnimatorSynchronizedSet() =====
void __fastcall `virtual thunk to'AnimatorSynchronizedSet::~AnimatorSynchronizedSet(AnimatorSynchronizedSet *this)
{
  AnimatorSynchronizedSet::~AnimatorSynchronizedSet((AnimatorSynchronizedSet *)((char *)this
                                                                              + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 369150 `virtual thunk to'AnimatorSynchronizedSet::~AnimatorSynchronizedSet() =====
void __fastcall `virtual thunk to'AnimatorSynchronizedSet::~AnimatorSynchronizedSet(AnimatorSynchronizedSet *this)
{
  AnimatorSynchronizedSet::~AnimatorSynchronizedSet((AnimatorSynchronizedSet *)((char *)this
                                                                              + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 369160 GetApplicator(glitch::scene::ISceneNodeAnimator *) =====
int __fastcall GetApplicator(int a1)
{
  int result; // r0

  if ( !a1 )
    return 0;
  switch ( (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 36))(a1) )
  {
    case 11:
    case 13:
      result = a1 + 88;
      break;
    case 12:
      result = a1 + 136;
      break;
    case 14:
      result = a1 + 216;
      break;
    case 15:
      result = a1 + 132;
      break;
    default:
      return 0;
  }
  return result;
}


// ===== 3691c4 `global constructor keyed to'.._.._sources_Core_Irrlicht_Nodes_Animators_AnimatorTypes.cpp =====
void `global constructor keyed to'.._.._sources_Core_Irrlicht_Nodes_Animators_AnimatorTypes.cpp()
{
  dword_9A2360 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A235C = 1056964608;
}


// ===== 3691e4 vox::Handle::~Handle() =====
void __fastcall vox::Handle::~Handle(vox::Handle *this)
{
  ;
}


// ===== 3691e8 vox::Handle::GetId(void) =====
__int64 __fastcall vox::Handle::GetId(vox::Handle *this)
{
  return *((_QWORD *)this + 1);
}


// ===== 3691f4 vox::Handle::GetObjectPointer(void) =====
int __fastcall vox::Handle::GetObjectPointer(vox::Handle *this)
{
  return *((_DWORD *)this + 6);
}


// ===== 3691fc vox::Handle::GetTimeStamp(uint &,uint &) =====
int __fastcall vox::Handle::GetTimeStamp(int this, unsigned int *a2, unsigned int *a3)
{
  *a2 = *(_DWORD *)(this + 16);
  *a3 = *(_DWORD *)(this + 20);
  return this;
}


// ===== 369210 vox::Handle::SetTimeStamp(uint,uint) =====
int __fastcall vox::Handle::SetTimeStamp(int this, unsigned int a2, unsigned int a3)
{
  *(_DWORD *)(this + 20) = a3;
  *(_DWORD *)(this + 16) = a2;
  return this;
}


// ===== 36921c VoxSoundManager::UnloadSound(int) =====
int __fastcall VoxSoundManager::UnloadSound(int this, int a2)
{
  int v2; // r4
  int v3; // r5
  int v4; // r3

  v2 = this;
  v3 = (unsigned __int8)JAVA_SOUNDS;
  if ( !JAVA_SOUNDS && a2 >= 0 && a2 < *(_DWORD *)(this + 28) )
  {
    v4 = *(_DWORD *)(*(_DWORD *)(this + 8) + 4 * a2);
    if ( v4 )
    {
      this = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 4))(*(_DWORD *)(*(_DWORD *)(this + 8) + 4 * a2));
      *(_DWORD *)(*(_DWORD *)(v2 + 8) + 4 * a2) = v3;
    }
  }
  return this;
}


// ===== 369298 VoxSoundManager::UnloadAllSounds(void) =====
int __fastcall VoxSoundManager::UnloadAllSounds(int this)
{
  int v1; // r5
  int v2; // r4

  v1 = this;
  v2 = (unsigned __int8)JAVA_SOUNDS;
  if ( !JAVA_SOUNDS && *(int *)(this + 28) > 0 )
  {
    do
      this = VoxSoundManager::UnloadSound(v1, v2++);
    while ( *(_DWORD *)(v1 + 28) > v2 );
  }
  return this;
}


// ===== 3692f0 VoxSoundManager::ConvertVisual3DToSound3D(glitch::core::vector3d<float> const&) =====
float *__fastcall VoxSoundManager::ConvertVisual3DToSound3D(float *a1, float *a2)
{
  float v3; // r6
  float v4; // r0

  v3 = a2[2] * 0.01;
  v4 = *a2 * 0.01;
  a1[1] = a2[1] * 0.01;
  *a1 = v4;
  a1[2] = v3;
  return a1;
}


// ===== 369348 VoxSoundManager::SetIPodShuffle(void) =====
void __fastcall VoxSoundManager::SetIPodShuffle(VoxSoundManager *this)
{
  ;
}


// ===== 36934c VoxSoundManager::UpdateIPodAsync(void) =====
void __fastcall VoxSoundManager::UpdateIPodAsync(VoxSoundManager *this)
{
  ;
}


// ===== 369350 std::priv::__find<int *,int>(int *,int *,int const&,std::random_access_iterator_tag const&) =====
_DWORD *__fastcall std::priv::__find<int *,int>(_DWORD *a1, int a2, int *a3)
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
          if ( v3[6] == v8 )
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


// ===== 369480 VoxSoundManager::GetIPodPlaylistCount(void) =====
// attributes: thunk
int __fastcall VoxSoundManager::GetIPodPlaylistCount(VoxSoundManager *this)
{
  return nativeGetNumPlaylists(this);
}


// ===== 369484 VoxSoundManager::SetIPodPlaylist(int) =====
int __fastcall VoxSoundManager::SetIPodPlaylist(VoxSoundManager *this, int a2)
{
  int v2; // r0

  *((_BYTE *)this + 51) = 1;
  v2 = nativeSetPlaylist(a2);
  return nativePlayBGMusic(v2);
}


// ===== 3694a0 vox::Handle::~Handle() =====
void __fastcall vox::Handle::~Handle(vox::Handle *this)
{
  *(_DWORD *)this = off_9635C8;
  CustomFree(this);
}


// ===== 3694d4 VoxSoundManager::BackToMainMenu(void) =====
int __fastcall VoxSoundManager::BackToMainMenu(VoxSoundManager *this)
{
  MenuManager *Instance; // r0
  RenderFX *HUDRoot; // r0

  Instance = (MenuManager *)MenuManager::GetInstance(this);
  HUDRoot = (RenderFX *)MenuManager::GetHUDRoot(Instance);
  return RenderFX::InvokeASCallback(HUDRoot, "_root.menu_playlist", "buttons.btn_Cancel.onRelease", nullptr, 0);
}


// ===== 369514 VoxSoundManager::SetMusicState(char const*) =====
void __fastcall VoxSoundManager::SetMusicState(VoxSoundManager *this, const char *a2)
{
  int v2; // r2
  int v5; // r0
  int v6; // r2
  _DWORD v7[10]; // [sp+0h] [bp-28h] BYREF

  v2 = *((_DWORD *)this + 9);
  if ( v2 >= 0 && !JAVA_SOUNDS )
  {
    v5 = *((_DWORD *)this + 2);
    v6 = *(_DWORD *)(Arrays::Sounds::members + 12 * v2 + 4);
    if ( *(_DWORD *)(v5 + 4 * v6) )
    {
      v7[2] = -1;
      v7[3] = -1;
      v7[8] = (unsigned __int8)JAVA_SOUNDS;
      v7[0] = off_9934F0;
      v7[4] = (unsigned __int8)JAVA_SOUNDS;
      v7[5] = (unsigned __int8)JAVA_SOUNDS;
      v7[6] = (unsigned __int8)JAVA_SOUNDS;
      v7[7] = (unsigned __int8)JAVA_SOUNDS;
      if ( (int)vox::VoxEngine::GetEmitterHandles(
                  *(vox::VoxEngine **)this,
                  *(vox::DataHandle **)(v5 + 4 * v6),
                  (vox::EmitterHandle *)v7,
                  1) > 0 )
        vox::VoxEngine::SetInteractiveMusicState(*(vox::VoxEngine **)this, (vox::EmitterHandle *)v7, a2);
      vox::EmitterHandle::~EmitterHandle((vox::EmitterHandle *)v7);
    }
  }
}


// ===== 3695f4 VoxSoundManager::SetLevelRouting(int) =====
int __fastcall VoxSoundManager::SetLevelRouting(vox::VoxEngine **this, int a2)
{
  int v4; // r8
  char v5[512]; // [sp+4h] [bp-204h] BYREF

  if ( a2 == -1 || JAVA_SOUNDS )
    return 0;
  v4 = Arrays::LevelList::members + 72 * a2;
  LC_API_STRCPY_0(v5, (const char *)RES_PATH);
  strcpy(&v5[LC_API_STRLEN_0(v5)], "data/routing/");
  LC_API_STRCAT_0(v5, *(const char **)(v4 + 12));
  vox::VoxEngine::SetDynamicBusRouting(*this, v5);
  return 1;
}


// ===== 3696dc VoxSoundManager::IsSoundPlaying(int) =====
bool __fastcall VoxSoundManager::IsSoundPlaying(VoxSoundManager *this, int a2, int a3, int a4, int a5, int a6, char a7)
{
  int v8; // r4
  int v9; // r2
  char *v10; // r3
  int EmitterHandles; // r8
  int v13; // r6
  char *v14; // r4
  void (__fastcall **v15)(char *); // t1
  _QWORD v17[5]; // [sp+0h] [bp-194h] BYREF
  char v18; // [sp+28h] [bp-16Ch] BYREF
  char v19; // [sp+190h] [bp-4h] BYREF

  if ( a2 < 0 )
    return 0;
  v8 = (unsigned __int8)JAVA_SOUNDS;
  if ( JAVA_SOUNDS )
    return nativeIsMediaPlaying(a2) != 0;
  v9 = *((_DWORD *)this + 2);
  if ( !*(_DWORD *)(v9 + 4 * a2) )
    return 0;
  v10 = &v18;
  do
  {
    *((_QWORD *)v10 - 4) = -1;
    *((_DWORD *)v10 - 6) = v8;
    *((_DWORD *)v10 - 5) = v8;
    *((_DWORD *)v10 - 4) = v8;
    *((_DWORD *)v10 - 3) = v8;
    *((_DWORD *)v10 - 2) = v8;
    *((_DWORD *)v10 - 10) = off_9934F0;
    v10 += 40;
  }
  while ( v10 != &a7 );
  EmitterHandles = vox::VoxEngine::GetEmitterHandles(
                     *(vox::VoxEngine **)this,
                     *(vox::DataHandle **)(v9 + 4 * a2),
                     (vox::EmitterHandle *)v17,
                     10);
  if ( EmitterHandles <= 0 )
  {
LABEL_15:
    v13 = 0;
  }
  else
  {
    while ( !vox::VoxEngine::IsPlaying(*(vox::VoxEngine **)this, (vox::EmitterHandle *)&v17[5 * v8++]) )
    {
      if ( v8 == EmitterHandles )
        goto LABEL_15;
    }
    v13 = 1;
  }
  v14 = &v19;
  do
  {
    v15 = *((void (__fastcall ***)(char *))v14 - 10);
    v14 -= 40;
    (*v15)(v14);
  }
  while ( v14 != (char *)v17 );
  return v13;
}


// ===== 369804 VoxSoundManager::IsMusicPlaying(void) =====
int __fastcall VoxSoundManager::IsMusicPlaying(VoxSoundManager *this)
{
  int v1; // r1
  int v3; // r0
  void (__fastcall **v4)(vox::EmitterHandle *__hidden); // r3
  int v5; // r1
  vox::DataHandle *v6; // r1
  int IsPlaying; // r4
  _DWORD v9[11]; // [sp+0h] [bp-2Ch] BYREF

  v1 = *((_DWORD *)this + 9);
  if ( v1 == -1 )
    return 0;
  v3 = *((_DWORD *)this + 2);
  v4 = off_9934F0;
  v5 = *(_DWORD *)(Arrays::Sounds::members + 12 * v1 + 4);
  v9[2] = -1;
  v9[3] = -1;
  memset(&v9[4], 0, 20);
  v9[0] = off_9934F0;
  v6 = *(vox::DataHandle **)(v3 + 4 * v5);
  if ( !v6 )
  {
LABEL_6:
    (*v4)((vox::EmitterHandle *)v9);
    return 0;
  }
  if ( vox::VoxEngine::GetEmitterHandles(*(vox::VoxEngine **)this, v6, (vox::EmitterHandle *)v9, 1) <= 0 )
  {
    v4 = (void (__fastcall **)(vox::EmitterHandle *__hidden))v9[0];
    goto LABEL_6;
  }
  IsPlaying = vox::VoxEngine::IsPlaying(*(vox::VoxEngine **)this, (vox::EmitterHandle *)v9);
  (*(void (__fastcall **)(_DWORD *))v9[0])(v9);
  return IsPlaying;
}


// ===== 3698f0 VoxSoundManager::StopAllMusic(int) =====
int __fastcall VoxSoundManager::StopAllMusic(vox::VoxEngine **this, int a2)
{
  int result; // r0
  vox::VoxEngine *v5; // r3
  unsigned int v6; // [sp+4h] [bp-8h] BYREF

  if ( JAVA_SOUNDS )
  {
    result = nativeStopAllBigSound(-1, a2);
  }
  else
  {
    v6 = 0;
    vox::VoxSoundPackXML::GetGroupMask((vox::VoxSoundPackXML *)(this + 25), "MUSIC", (int *)&v6);
    result = vox::VoxEngine::StopAllEmitters(*this, v6, (float)a2);
  }
  v5 = *(this + 9);
  *(this + 9) = (vox::VoxEngine *)-1;
  *(this + 10) = v5;
  return result;
}


// ===== 369990 VoxSoundManager::StopAllSounds(int) =====
vox::VoxEngine **__fastcall VoxSoundManager::StopAllSounds(vox::VoxEngine **this, int a2)
{
  if ( JAVA_SOUNDS )
    return (vox::VoxEngine **)nativeStopAllBigSound(-1, a2);
  if ( *this )
    return (vox::VoxEngine **)vox::VoxEngine::StopAllEmitters(*this, 0xFFFFFFFF, (float)a2 / 1000.0);
  return this;
}


// ===== 3699fc VoxSoundManager::LoadSound(int) =====
int __fastcall VoxSoundManager::LoadSound(int this, int a2)
{
  int v2; // r7
  int v4; // r8
  char *v5; // [sp+10h] [bp-21Ch] BYREF
  int v6; // [sp+14h] [bp-218h] BYREF
  int v7; // [sp+18h] [bp-214h] BYREF
  _BYTE v8[4]; // [sp+1Ch] [bp-210h] BYREF
  int v9; // [sp+20h] [bp-20Ch] BYREF
  char v10[512]; // [sp+24h] [bp-208h] BYREF

  v2 = this;
  if ( !JAVA_SOUNDS && a2 >= 0 && a2 <= *(_DWORD *)(this + 28) )
  {
    this = vox::VoxSoundPackXML::GetDataSourceInfo(this + 100, a2, &v5, &v7, &v9, v8, &v6);
    if ( a2 <= *(_DWORD *)(v2 + 28) && !*(_DWORD *)(*(_DWORD *)(v2 + 8) + 4 * a2) )
    {
      LC_API_STRCPY_0(v10, (const char *)RES_PATH);
      strcpy(&v10[LC_API_STRLEN_0(v10)], "data/sounds/");
      LC_API_STRCAT_0(v10, v5);
      v4 = operator new(40, 4);
      this = vox::VoxUtils::LoadDataSourceFromFileEx(v4, v10, v7, v6, v9);
      *(_DWORD *)(*(_DWORD *)(v2 + 8) + 4 * a2) = v4;
    }
  }
  return this;
}


// ===== 369b38 VoxSoundManager::GetSoundVolume(int) =====
float __fastcall VoxSoundManager::GetSoundVolume(vox::VoxEngine **this, int a2)
{
  int v4; // r1
  int v5; // [sp+4h] [bp-4h] BYREF

  if ( JAVA_SOUNDS )
    return 1.0;
  v5 = 0;
  if ( a2 == 2 )
  {
    vox::VoxSoundPackXML::GetGroupMask((vox::VoxSoundPackXML *)(this + 25), "MUSIC", &v5);
    return COERCE_FLOAT(vox::VoxEngine::GetGroupGain(*this, v5)) * 100.0;
  }
  else if ( a2 == 3 )
  {
    vox::VoxSoundPackXML::GetGroupMask((vox::VoxSoundPackXML *)(this + 25), "VFX", &v5);
    return COERCE_FLOAT(vox::VoxEngine::GetGroupGain(*this, v5)) * 100.0;
  }
  else
  {
    if ( a2 == 1 )
    {
      vox::VoxSoundPackXML::GetGroupMask((vox::VoxSoundPackXML *)(this + 25), "SFX", &v5);
      v4 = v5;
    }
    else
    {
      v4 = (unsigned __int8)JAVA_SOUNDS;
    }
    return COERCE_FLOAT(vox::VoxEngine::GetGroupGain(*this, v4)) * 100.0;
  }
}


// ===== 369c2c VoxSoundManager::SetInitialVolume(float,float,float) =====
char *__fastcall VoxSoundManager::SetInitialVolume(VoxSoundManager *this, int a2, int a3, float a4)
{
  char *result; // r0
  unsigned int v9; // [sp+4h] [bp-8h] BYREF

  result = &JAVA_SOUNDS;
  if ( JAVA_SOUNDS )
  {
    sfx_vfx_volume = a3;
    music_volume = a2;
    nativeSetVolumeBig(*((_DWORD *)this + 9));
    return (char *)nativeSetVolumeBig(*((_DWORD *)this + 9));
  }
  else if ( !*((_BYTE *)this + 32) )
  {
    v9 = *((unsigned __int8 *)this + 32);
    vox::VoxSoundPackXML::GetGroupMask((VoxSoundManager *)((char *)this + 100), "MUSIC", (int *)&v9);
    vox::VoxEngine::SetGroupGain(*(vox::VoxEngine **)this, v9, *(float *)&a2 / 100.0, 0.05);
    vox::VoxSoundPackXML::GetGroupMask((VoxSoundManager *)((char *)this + 100), "SFX", (int *)&v9);
    vox::VoxEngine::SetGroupGain(*(vox::VoxEngine **)this, v9, *(float *)&a3 / 100.0, 0.05);
    vox::VoxSoundPackXML::GetGroupMask((VoxSoundManager *)((char *)this + 100), "VFX", (int *)&v9);
    result = (char *)vox::VoxEngine::SetGroupGain(*(vox::VoxEngine **)this, v9, a4 / 100.0, 0.05);
    *((_BYTE *)this + 32) = 1;
  }
  return result;
}


// ===== 369da0 VoxSoundManager::SetSoundVolume(int,float) =====
char *__fastcall VoxSoundManager::SetSoundVolume(VoxSoundManager *this, int a2, int a3)
{
  char *result; // r0
  unsigned int v6; // r6
  int v7; // [sp+4h] [bp-4h] BYREF

  result = &JAVA_SOUNDS;
  v6 = (unsigned __int8)JAVA_SOUNDS;
  if ( JAVA_SOUNDS )
  {
    if ( a2 == 2 )
    {
      music_volume = a3;
      return (char *)nativeSetVolumeBig(*((_DWORD *)this + 9));
    }
    else if ( a2 == 3 || a2 == 1 )
    {
      sfx_vfx_volume = a3;
      return (char *)nativeSetVolumeBig(*((_DWORD *)this + 9));
    }
  }
  else
  {
    v7 = 0;
    switch ( a2 )
    {
      case 2:
        vox::VoxSoundPackXML::GetGroupMask((VoxSoundManager *)((char *)this + 100), "MUSIC", &v7);
        v6 = v7;
        break;
      case 3:
        vox::VoxSoundPackXML::GetGroupMask((VoxSoundManager *)((char *)this + 100), "VFX", &v7);
        v6 = v7;
        break;
      case 1:
        vox::VoxSoundPackXML::GetGroupMask((VoxSoundManager *)((char *)this + 100), "SFX", &v7);
        v6 = v7;
        break;
    }
    return (char *)vox::VoxEngine::SetGroupGain(*(vox::VoxEngine **)this, v6, *(float *)&a3 / 100.0, 0.05);
  }
  return result;
}


// ===== 369ee8 VoxSoundManager::GetMasterVolume(void) =====
int __fastcall VoxSoundManager::GetMasterVolume(vox::VoxEngine **this)
{
  if ( JAVA_SOUNDS )
    return 1065353216;
  else
    return vox::VoxEngine::GetMasterGain(*this);
}


// ===== 369f1c VoxSoundManager::SetMasterVolume(float) =====
vox::VoxEngine **__fastcall VoxSoundManager::SetMasterVolume(vox::VoxEngine **this, float a2)
{
  if ( !JAVA_SOUNDS )
    return (vox::VoxEngine **)vox::VoxEngine::SetMasterGain(*this, a2, 0.05);
  return this;
}


// ===== 369f50 VoxSoundManager::SetListenerPos(glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,int,int,float) =====
char *__fastcall VoxSoundManager::SetListenerPos(int a1, float *a2, float *a3, float *a4, int a5, int a6, int a7)
{
  char *result; // r0

  result = &JAVA_SOUNDS;
  if ( !JAVA_SOUNDS )
  {
    vox::VoxEngine::Set3DListenerPosition(*(vox::VoxEngine **)a1, *a2, a2[1], a2[2]);
    result = (char *)vox::VoxEngine::Set3DListenerOrientation(
                       *(vox::VoxEngine **)a1,
                       *a3,
                       a3[1],
                       a3[2],
                       *a4,
                       a4[1],
                       a4[2]);
    *(_DWORD *)(a1 + 92) = a7;
    *(_DWORD *)(a1 + 84) = a5;
    *(_DWORD *)(a1 + 88) = a6;
  }
  return result;
}


// ===== 369fec VoxSoundManager::Stop(int,int) =====
int __fastcall VoxSoundManager::Stop(int this, int a2, int a3, int a4, int a5, int a6, char a7)
{
  int v7; // r6
  int v9; // r4
  int v10; // r3
  int v11; // r10
  vox::DataHandle *v12; // r1
  char *v13; // r3
  int EmitterHandles; // r8
  vox::EmitterHandle *v15; // r1
  char *v16; // r4
  int (__fastcall **v17)(char *); // t1
  _QWORD v18[5]; // [sp+0h] [bp-194h] BYREF
  char v19; // [sp+28h] [bp-16Ch] BYREF
  char v20; // [sp+190h] [bp-4h] BYREF

  v7 = this;
  if ( a2 >= 0 )
  {
    v9 = (unsigned __int8)JAVA_SOUNDS;
    if ( JAVA_SOUNDS )
    {
      return nativeStopSoundBig(a2);
    }
    else
    {
      v10 = *(_DWORD *)(this + 8);
      this = 12;
      v11 = *(_DWORD *)(Arrays::Sounds::members + 12 * a2 + 4);
      v12 = *(vox::DataHandle **)(v10 + 4 * v11);
      if ( v12 )
      {
        this = vox::VoxEngine::IsReady(*(vox::VoxEngine **)v7, v12);
        if ( this )
        {
          v13 = &v19;
          do
          {
            *((_QWORD *)v13 - 4) = -1;
            *((_DWORD *)v13 - 6) = v9;
            *((_DWORD *)v13 - 5) = v9;
            *((_DWORD *)v13 - 4) = v9;
            *((_DWORD *)v13 - 3) = v9;
            *((_DWORD *)v13 - 2) = v9;
            *((_DWORD *)v13 - 10) = off_9934F0;
            v13 += 40;
          }
          while ( v13 != &a7 );
          EmitterHandles = vox::VoxEngine::GetEmitterHandles(
                             *(vox::VoxEngine **)v7,
                             *(vox::DataHandle **)(*(_DWORD *)(v7 + 8) + 4 * v11),
                             (vox::EmitterHandle *)v18,
                             10);
          if ( EmitterHandles > 0 )
          {
            do
            {
              v15 = (vox::EmitterHandle *)&v18[5 * v9++];
              vox::VoxEngine::Stop(*(vox::VoxEngine **)v7, v15, (float)a3 / 1000.0);
            }
            while ( v9 != EmitterHandles );
          }
          v16 = &v20;
          do
          {
            v17 = *((int (__fastcall ***)(char *))v16 - 10);
            v16 -= 40;
            this = (*v17)(v16);
          }
          while ( v16 != (char *)v18 );
        }
      }
    }
  }
  return this;
}


// ===== 36a138 VoxSoundManager::StopBeat(void) =====
int __fastcall VoxSoundManager::StopBeat(int this)
{
  int v1; // r5
  int v2; // r4
  int Constant; // r0
  int v4; // r3
  int savedregs; // [sp+0h] [bp+0h]
  int savedregs_4; // [sp+4h] [bp+4h]
  char savedregs_8; // [sp+8h] [bp+8h]

  v1 = *(_DWORD *)(this + 44);
  v2 = this;
  if ( v1 != -1 )
  {
    Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "SoundSettings", "BeatFadeoutTime");
    this = VoxSoundManager::Stop(v2, v1, Constant, v4, savedregs, savedregs_4, savedregs_8);
    *(_DWORD *)(v2 + 44) = -1;
  }
  return this;
}


// ===== 36a1a0 VoxSoundManager::StopMusic(int) =====
None

// ===== 36a218 VoxSoundManager::Stop3D(int,int,Point3D<float> *,float) =====
int __fastcall VoxSoundManager::Stop3D(int result, int a2, int a3, float *a4, float a5)
{
  int v5; // r8
  int v8; // r4
  int v9; // r3
  int v10; // r10
  vox::DataHandle *v11; // r1
  int *v12; // r3
  float v13; // r0
  int *v14; // r4
  int (__fastcall **v15)(int *); // t1
  int EmitterHandles; // [sp+Ch] [bp-1B8h]
  float v17; // [sp+1Ch] [bp-1A8h]
  _QWORD v18[5]; // [sp+20h] [bp-1A4h] BYREF
  int v19; // [sp+48h] [bp-17Ch] BYREF
  int v20; // [sp+1B0h] [bp-14h] BYREF
  float v21; // [sp+1B4h] [bp-10h] BYREF
  float v22; // [sp+1B8h] [bp-Ch] BYREF
  float v23[2]; // [sp+1BCh] [bp-8h] BYREF
  _DWORD savedregs[9]; // [sp+1C4h] [bp+0h] BYREF

  v5 = result;
  if ( a2 >= 0 )
  {
    v8 = (unsigned __int8)JAVA_SOUNDS;
    if ( JAVA_SOUNDS )
    {
      return nativeStopSoundBig(a2);
    }
    else
    {
      v9 = *(_DWORD *)(result + 8);
      result = 12;
      v10 = *(_DWORD *)(Arrays::Sounds::members + 12 * a2 + 4);
      v11 = *(vox::DataHandle **)(v9 + 4 * v10);
      if ( v11 )
      {
        result = vox::VoxEngine::IsReady(*(vox::VoxEngine **)v5, v11);
        if ( result )
        {
          v17 = (float)a3 / 1000.0;
          v12 = &v19;
          do
          {
            *((_QWORD *)v12 - 4) = -1;
            *(v12 - 6) = v8;
            *(v12 - 5) = v8;
            *(v12 - 4) = v8;
            *(v12 - 3) = v8;
            *(v12 - 2) = v8;
            *(v12 - 10) = (int)off_9934F0;
            v12 += 10;
          }
          while ( v12 != &savedregs[5] );
          EmitterHandles = vox::VoxEngine::GetEmitterHandles(
                             *(vox::VoxEngine **)v5,
                             *(vox::DataHandle **)(*(_DWORD *)(v5 + 8) + 4 * v10),
                             (vox::EmitterHandle *)v18,
                             10);
          if ( EmitterHandles > 0 )
          {
            while ( a4 )
            {
              vox::VoxEngine::Get3DEmitterPosition(
                *(vox::VoxEngine **)v5,
                (vox::EmitterHandle *)&v18[5 * v8],
                v23,
                &v22,
                &v21);
              v13 = sqrt((float)((float)((float)((float)(v23[0] - *a4) * (float)(v23[0] - *a4))
                                       + (float)((float)(v22 - a4[1]) * (float)(v22 - a4[1])))
                               + (float)((float)(v21 - a4[2]) * (float)(v21 - a4[2]))));
              if ( a5 >= v13 )
              {
LABEL_9:
                if ( ++v8 == EmitterHandles )
                  goto LABEL_13;
              }
              else
              {
                vox::VoxEngine::Stop(*(vox::VoxEngine **)v5, (vox::EmitterHandle *)&v18[5 * v8++], v17);
                if ( v8 == EmitterHandles )
                  goto LABEL_13;
              }
            }
            vox::VoxEngine::Stop(*(vox::VoxEngine **)v5, (vox::EmitterHandle *)&v18[5 * v8], v17);
            goto LABEL_9;
          }
LABEL_13:
          v14 = &v20;
          do
          {
            v15 = (int (__fastcall **)(int *))*(v14 - 10);
            v14 -= 10;
            result = (*v15)(v14);
          }
          while ( v14 != (int *)v18 );
        }
      }
    }
  }
  return result;
}


// ===== 36a470 VoxSoundManager::Resume(int) =====
int __fastcall VoxSoundManager::Resume(int this, int a2, int a3, int a4, int a5, int a6, char a7)
{
  vox::VoxEngine **v7; // r6
  int v8; // r4
  int v9; // r2
  int v10; // r1
  char *v11; // r3
  int EmitterHandles; // r7
  vox::EmitterHandle *v13; // r1
  char *v14; // r4
  int (__fastcall **v15)(char *); // t1
  _QWORD v16[5]; // [sp+0h] [bp-194h] BYREF
  char v17; // [sp+28h] [bp-16Ch] BYREF
  char v18; // [sp+190h] [bp-4h] BYREF

  v7 = (vox::VoxEngine **)this;
  if ( a2 >= 0 )
  {
    v8 = (unsigned __int8)JAVA_SOUNDS;
    if ( JAVA_SOUNDS )
    {
      return nativeResumeSoundBig(a2);
    }
    else
    {
      v9 = *(_DWORD *)(this + 8);
      v10 = *(_DWORD *)(Arrays::Sounds::members + 12 * a2 + 4);
      this = *(_DWORD *)(v9 + 4 * v10);
      if ( this )
      {
        v11 = &v17;
        do
        {
          *((_QWORD *)v11 - 4) = -1;
          *((_DWORD *)v11 - 6) = v8;
          *((_DWORD *)v11 - 5) = v8;
          *((_DWORD *)v11 - 4) = v8;
          *((_DWORD *)v11 - 3) = v8;
          *((_DWORD *)v11 - 2) = v8;
          *((_DWORD *)v11 - 10) = off_9934F0;
          v11 += 40;
        }
        while ( v11 != &a7 );
        EmitterHandles = vox::VoxEngine::GetEmitterHandles(
                           *v7,
                           *(vox::DataHandle **)(v9 + 4 * v10),
                           (vox::EmitterHandle *)v16,
                           10);
        if ( EmitterHandles > 0 )
        {
          do
          {
            v13 = (vox::EmitterHandle *)&v16[5 * v8++];
            vox::VoxEngine::Resume(*v7, v13, 0.05);
          }
          while ( v8 != EmitterHandles );
        }
        v14 = &v18;
        do
        {
          v15 = *((int (__fastcall ***)(char *))v14 - 10);
          v14 -= 40;
          this = (*v15)(v14);
        }
        while ( v14 != (char *)v16 );
      }
    }
  }
  return this;
}


// ===== 36a590 VoxSoundManager::ResumeAllSounds(void) =====
vox::VoxEngine *__fastcall VoxSoundManager::ResumeAllSounds(vox::VoxEngine **this)
{
  vox::VoxEngine *result; // r0

  if ( JAVA_SOUNDS )
  {
    result = (vox::VoxEngine *)nativeResumeSoundBig(9999);
    if ( Resume_Sound_Interrupt )
    {
      Resume_Sound_Interrupt = 0;
      result = (vox::VoxEngine *)Save_Current_Music_ID;
      if ( Save_Current_Music_ID != -1 )
        return (vox::VoxEngine *)nativeResumeSoundBig(Save_Current_Music_ID);
    }
  }
  else
  {
    result = *this;
    if ( result )
      return (vox::VoxEngine *)vox::VoxEngine::ResumeAllEmitters(result, 0xFFFFFFFF, 0.2);
  }
  return result;
}


// ===== 36a624 VoxSoundManager::PauseAllSounds(void) =====
vox::VoxEngine *__fastcall VoxSoundManager::PauseAllSounds(vox::VoxEngine *this)
{
  if ( !JAVA_SOUNDS )
  {
    this = *(vox::VoxEngine **)this;
    if ( this )
      return (vox::VoxEngine *)vox::VoxEngine::PauseAllEmitters(this, 0xFFFFFFFF, 0.2);
  }
  return this;
}


// ===== 36a664 VoxSoundManager::Pause(int) =====
int __fastcall VoxSoundManager::Pause(int this, int a2, int a3, int a4, int a5, int a6, char a7)
{
  vox::VoxEngine **v7; // r6
  int v8; // r4
  int v9; // r2
  int v10; // r1
  char *v11; // r3
  int EmitterHandles; // r7
  vox::EmitterHandle *v13; // r1
  char *v14; // r4
  int (__fastcall **v15)(char *); // t1
  _QWORD v16[5]; // [sp+0h] [bp-194h] BYREF
  char v17; // [sp+28h] [bp-16Ch] BYREF
  char v18; // [sp+190h] [bp-4h] BYREF

  v7 = (vox::VoxEngine **)this;
  if ( a2 >= 0 )
  {
    v8 = (unsigned __int8)JAVA_SOUNDS;
    if ( JAVA_SOUNDS )
    {
      return nativePauseSoundBig(a2);
    }
    else
    {
      v9 = *(_DWORD *)(this + 8);
      v10 = *(_DWORD *)(Arrays::Sounds::members + 12 * a2 + 4);
      this = *(_DWORD *)(v9 + 4 * v10);
      if ( this )
      {
        v11 = &v17;
        do
        {
          *((_QWORD *)v11 - 4) = -1;
          *((_DWORD *)v11 - 6) = v8;
          *((_DWORD *)v11 - 5) = v8;
          *((_DWORD *)v11 - 4) = v8;
          *((_DWORD *)v11 - 3) = v8;
          *((_DWORD *)v11 - 2) = v8;
          *((_DWORD *)v11 - 10) = off_9934F0;
          v11 += 40;
        }
        while ( v11 != &a7 );
        EmitterHandles = vox::VoxEngine::GetEmitterHandles(
                           *v7,
                           *(vox::DataHandle **)(v9 + 4 * v10),
                           (vox::EmitterHandle *)v16,
                           10);
        if ( EmitterHandles > 0 )
        {
          do
          {
            v13 = (vox::EmitterHandle *)&v16[5 * v8++];
            vox::VoxEngine::Pause(*v7, v13, 0.05);
          }
          while ( v8 != EmitterHandles );
        }
        v14 = &v18;
        do
        {
          v15 = *((int (__fastcall ***)(char *))v14 - 10);
          v14 -= 40;
          this = (*v15)(v14);
        }
        while ( v14 != (char *)v16 );
      }
    }
  }
  return this;
}


// ===== 36a784 VoxSoundManager::PauseMusic(void) =====
int *__fastcall VoxSoundManager::PauseMusic(int *this)
{
  int v1; // r1

  v1 = *(this + 9);
  if ( v1 != -1 )
  {
    if ( JAVA_SOUNDS )
      return (int *)nativePauseSoundBig(*(this + 9));
    else
      return (int *)VoxSoundManager::Pause((VoxSoundManager *)this, v1);
  }
  return this;
}


// ===== 36a7c0 VoxSoundManager::PlaySoundPackSound(int,char const*,vox::FormatTypes,int,int,vox::VoxSourceLoadingFlags,glitch::core::vector3d<float> const&,float,float) =====
int __fastcall VoxSoundManager::PlaySoundPackSound(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5,
        int a6,
        int a7,
        float *a8,
        float a9,
        float a10)
{
  vox::DataHandle *v12; // r3
  int v13; // r2
  int SavedOption; // r7
  float v16; // r0
  float v17; // r11
  float *v18; // r0
  float v19; // r9
  float v20; // r10
  float v21; // r7
  float *v22; // r0
  float *v23; // r0
  float v24; // [sp+18h] [bp-B4h]
  float v25; // [sp+18h] [bp-B4h]
  float v26; // [sp+1Ch] [bp-B0h]
  float v27; // [sp+1Ch] [bp-B0h]
  float v28; // [sp+20h] [bp-ACh]
  float v29; // [sp+2Ch] [bp-A0h]
  float v30; // [sp+30h] [bp-9Ch]
  float v31; // [sp+34h] [bp-98h]
  _BYTE v32[40]; // [sp+38h] [bp-94h] BYREF
  float v33[3]; // [sp+60h] [bp-6Ch] BYREF
  float v34[3]; // [sp+6Ch] [bp-60h] BYREF
  _DWORD v35[3]; // [sp+78h] [bp-54h] BYREF
  float v36; // [sp+84h] [bp-48h] BYREF
  float v37; // [sp+88h] [bp-44h] BYREF
  float v38; // [sp+8Ch] [bp-40h] BYREF
  float v39; // [sp+90h] [bp-3Ch] BYREF
  float v40; // [sp+94h] [bp-38h] BYREF
  float v41; // [sp+98h] [bp-34h] BYREF
  float v42; // [sp+9Ch] [bp-30h] BYREF
  float v43; // [sp+A0h] [bp-2Ch] BYREF
  float v44; // [sp+A4h] [bp-28h] BYREF
  float v45; // [sp+A8h] [bp-24h] BYREF
  float v46; // [sp+ACh] [bp-20h] BYREF
  float v47; // [sp+B0h] [bp-1Ch] BYREF
  void *v48; // [sp+B4h] [bp-18h] BYREF
  int v49; // [sp+B8h] [bp-14h] BYREF
  int v50; // [sp+BCh] [bp-10h] BYREF
  void *v51; // [sp+C0h] [bp-Ch] BYREF
  bool v52[5]; // [sp+C7h] [bp-5h] BYREF

  if ( !JAVA_SOUNDS )
  {
    v12 = *(vox::DataHandle **)(*(_DWORD *)(a1 + 8) + 4 * a2);
    if ( v12
      || (VoxSoundManager::LoadSound((VoxSoundManager *)a1, a2),
          (v12 = *(vox::DataHandle **)(*(_DWORD *)(a1 + 8) + 4 * a2)) != nullptr) )
    {
      if ( vox::VoxEngine::IsReady(*(vox::VoxEngine **)a1, v12) )
      {
        vox::VoxEngine::SetPriorityBankId(
          *(vox::VoxEngine **)a1,
          *(vox::DataHandle **)(*(_DWORD *)(a1 + 8) + 4 * a2),
          a6);
        vox::VoxSoundPackXML::GetEmitterInfo(a1 + 100, a2, &v51, &v50, v52, &v49, &v48);
        vox::VoxEngine::CreateEmitter(
          (vox::VoxEngine *)v32,
          *(vox::DataHandle **)a1,
          *(_DWORD *)(*(_DWORD *)(a1 + 8) + 4 * a2),
          v51);
        if ( v49 )
        {
          if ( a9 >= 0.0 && a10 >= 0.0 )
          {
            vox::VoxEngine::Set3DEmitterPosition(*(vox::VoxEngine **)a1, (vox::EmitterHandle *)v32, *a8, a8[1], a8[2]);
            vox::VoxEngine::Set3DEmitterParameterf(*(vox::VoxEngine **)a1, (vox::EmitterHandle *)v32, 2, a9);
            vox::VoxEngine::Set3DEmitterParameterf(*(vox::VoxEngine **)a1, (vox::EmitterHandle *)v32, 1, a10);
          }
          else
          {
            vox::VoxEngine::Set3DEmitterPosition(*(vox::VoxEngine **)a1, (vox::EmitterHandle *)v32, *a8, a8[1], a8[2]);
            vox::VoxEngine::Set3DEmitterParameterf(
              *(vox::VoxEngine **)a1,
              (vox::EmitterHandle *)v32,
              2,
              (float)*(int *)(a1 + 84));
            vox::VoxEngine::Set3DEmitterParameterf(
              *(vox::VoxEngine **)a1,
              (vox::EmitterHandle *)v32,
              1,
              (float)*(int *)(a1 + 88));
          }
        }
        else
        {
          vox::VoxEngine::Set3DEmitterParameteri(*(vox::VoxEngine **)a1, (vox::EmitterHandle *)v32, 0, 1);
        }
        vox::VoxEngine::Set3DEmitterParameterf(
          *(vox::VoxEngine **)a1,
          (vox::EmitterHandle *)v32,
          3,
          *(float *)(a1 + 92));
        if ( v49 == 2 )
        {
          vox::VoxEngine::Set3DEmitterParameteri(*(vox::VoxEngine **)a1, (vox::EmitterHandle *)v32, 0, 1);
          vox::VoxEngine::Get3DListenerOrientation(*(vox::VoxEngine **)a1, &v47, &v46, &v45, &v44, &v43, &v42);
          *(float *)&v35[1] = v46;
          v26 = v44;
          v17 = v42;
          *(float *)v35 = v47;
          *(float *)&v35[2] = v45;
          v24 = v43;
          v18 = (float *)glitch::core::vector3d<float>::normalize(v35);
          v19 = v18[2];
          v20 = v18[1];
          v21 = *v18;
          v34[0] = (float)(v19 * COERCE_FLOAT(LODWORD(v24) + 0x80000000)) + (float)(v17 * v20);
          v34[1] = (float)(v21 * COERCE_FLOAT(LODWORD(v17) + 0x80000000)) + (float)(v26 * v19);
          v34[2] = (float)(v20 * COERCE_FLOAT(LODWORD(v26) + 0x80000000)) + (float)(v24 * v21);
          v22 = (float *)glitch::core::vector3d<float>::normalize(v34);
          v28 = v22[2];
          v27 = v22[1];
          v25 = *v22;
          v33[0] = (float)(v28 * COERCE_FLOAT(LODWORD(v20) + 0x80000000)) + (float)(v19 * v27);
          v33[1] = (float)(v25 * COERCE_FLOAT(LODWORD(v19) + 0x80000000)) + (float)(v21 * v28);
          v33[2] = (float)(v27 * COERCE_FLOAT(LODWORD(v21) + 0x80000000)) + (float)(v20 * v25);
          v23 = (float *)glitch::core::vector3d<float>::normalize(v33);
          v31 = v23[2];
          v29 = *v23;
          v30 = v23[1];
          vox::VoxEngine::Get3DEmitterPosition(*(vox::VoxEngine **)a1, (vox::EmitterHandle *)v32, &v41, &v40, &v39);
          vox::VoxEngine::Get3DListenerPosition(*(vox::VoxEngine **)a1, &v38, &v37, &v36);
          vox::VoxEngine::Set3DEmitterPosition(
            *(vox::VoxEngine **)a1,
            (vox::EmitterHandle *)v32,
            (float)((float)(v25 * (float)(v41 - v38)) + (float)(v27 * (float)(v40 - v37)))
          + (float)(v28 * (float)(v39 - v36)),
            (float)((float)(v29 * (float)(v41 - v38)) + (float)(v30 * (float)(v40 - v37)))
          + (float)(v31 * (float)(v39 - v36)),
            (float)((float)(v21 * (float)(v41 - v38)) + (float)(v20 * (float)(v40 - v37)))
          + (float)(v19 * (float)(v39 - v36)));
        }
        vox::VoxEngine::SetDSPEmitterParameter(*(vox::VoxEngine **)a1, (vox::EmitterHandle *)v32, 0, v48);
        if ( (`guard variable for'VoxSoundManager::PlaySoundPackSound(int,char const*,vox::FormatTypes,int,int,vox::VoxSourceLoadingFlags,glitch::core::vector3d<float> const&,float,float)::sfx_3d_pitched
            & 1) == 0
          && _cxa_guard_acquire(&`guard variable for'VoxSoundManager::PlaySoundPackSound(int,char const*,vox::FormatTypes,int,int,vox::VoxSourceLoadingFlags,glitch::core::vector3d<float> const&,float,float)::sfx_3d_pitched) )
        {
          VoxSoundManager::PlaySoundPackSound(int,char const*,vox::FormatTypes,int,int,vox::VoxSourceLoadingFlags,glitch::core::vector3d<float> const&,float,float)::sfx_3d_pitched = vox::VoxSoundPackXML::GetGroupUid((vox::VoxSoundPackXML *)(a1 + 100), "sfx_3D_pitched");
          _cxa_guard_release(&`guard variable for'VoxSoundManager::PlaySoundPackSound(int,char const*,vox::FormatTypes,int,int,vox::VoxSourceLoadingFlags,glitch::core::vector3d<float> const&,float,float)::sfx_3d_pitched);
        }
        if ( (`guard variable for'VoxSoundManager::PlaySoundPackSound(int,char const*,vox::FormatTypes,int,int,vox::VoxSourceLoadingFlags,glitch::core::vector3d<float> const&,float,float)::sfx_3d_pitched_relative
            & 1) == 0
          && _cxa_guard_acquire(&`guard variable for'VoxSoundManager::PlaySoundPackSound(int,char const*,vox::FormatTypes,int,int,vox::VoxSourceLoadingFlags,glitch::core::vector3d<float> const&,float,float)::sfx_3d_pitched_relative) )
        {
          VoxSoundManager::PlaySoundPackSound(int,char const*,vox::FormatTypes,int,int,vox::VoxSourceLoadingFlags,glitch::core::vector3d<float> const&,float,float)::sfx_3d_pitched_relative = vox::VoxSoundPackXML::GetGroupUid((vox::VoxSoundPackXML *)(a1 + 100), "sfx_3D_pitched_relative");
          _cxa_guard_release(&`guard variable for'VoxSoundManager::PlaySoundPackSound(int,char const*,vox::FormatTypes,int,int,vox::VoxSourceLoadingFlags,glitch::core::vector3d<float> const&,float,float)::sfx_3d_pitched_relative);
        }
        v13 = v50;
        if ( v50 == VoxSoundManager::PlaySoundPackSound(int,char const*,vox::FormatTypes,int,int,vox::VoxSourceLoadingFlags,glitch::core::vector3d<float> const&,float,float)::sfx_3d_pitched
          || v50 == VoxSoundManager::PlaySoundPackSound(int,char const*,vox::FormatTypes,int,int,vox::VoxSourceLoadingFlags,glitch::core::vector3d<float> const&,float,float)::sfx_3d_pitched_relative )
        {
          SavedOption = Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "VolumeFX");
          v16 = (float)SavedOption * ((double)(lrand48() % 123) * 0.001 + 0.96);
          VoxSoundManager::SetSoundVolume((VoxSoundManager *)a1, v50, v16);
          v13 = v50;
        }
        vox::VoxEngine::SetGroup(*(vox::VoxEngine **)a1, (vox::EmitterHandle *)v32, v13);
        vox::VoxEngine::Play(*(vox::VoxEngine **)a1, (vox::EmitterHandle *)v32, v52[0], 0.05);
        vox::EmitterHandle::~EmitterHandle((vox::EmitterHandle *)v32);
      }
    }
  }
  return 0;
}


// ===== 36aed4 `global constructor keyed to'.._.._sources_Core_VOXSoundManager_VoxSoundManager.cpp =====
int `global constructor keyed to'.._.._sources_Core_VOXSoundManager_VoxSoundManager.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A237C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2378 = 1056964608;
  if ( (`guard variable for'Singleton<PlayerStatManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<PlayerStatManager>::s_inst = 1;
    PlayerStatManager::PlayerStatManager((PlayerStatManager *)&Singleton<PlayerStatManager>::s_inst);
    result = _aeabi_atexit(
               (int)&Singleton<PlayerStatManager>::s_inst,
               (int)PlayerStatManager::~PlayerStatManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 36afb0 VoxSoundManager::~VoxSoundManager() =====
void __fastcall VoxSoundManager::~VoxSoundManager(VoxSoundManager *this)
{
  void *v2; // r0
  size_t v3; // r1
  vox::VoxEngine *v4; // r0

  if ( !JAVA_SOUNDS )
  {
    CustomFree(*((void **)this + 1));
    VoxSoundManager::UnloadAllSounds(this);
    CustomFree(*((void **)this + 2));
    vox::VoxEngine::DestroyVoxEngine(v4);
  }
  vox::VoxSoundPackXML::~VoxSoundPackXML((VoxSoundManager *)((char *)this + 100));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 56));
  v2 = *((void **)this + 3);
  if ( v2 )
  {
    v3 = (*((_DWORD *)this + 5) - (_DWORD)v2) & 0xFFFFFFFC;
    if ( v3 > 0x80 )
      CustomFree(v2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
  }
}


// ===== 36b048 VoxSoundManager::DeleteInstance(void) =====
void __fastcall VoxSoundManager::DeleteInstance(VoxSoundManager *this)
{
  void *v1; // r4

  v1 = (void *)VoxSoundManager::s_instance;
  if ( VoxSoundManager::s_instance )
  {
    VoxSoundManager::~VoxSoundManager((VoxSoundManager *)VoxSoundManager::s_instance);
    CustomFree(v1);
  }
}


// ===== 36b088 VoxSoundManager::~VoxSoundManager() =====
void __fastcall VoxSoundManager::~VoxSoundManager(VoxSoundManager *this)
{
  void *v2; // r0
  size_t v3; // r1
  vox::VoxEngine *v4; // r0

  if ( !JAVA_SOUNDS )
  {
    CustomFree(*((void **)this + 1));
    VoxSoundManager::UnloadAllSounds((int)this);
    CustomFree(*((void **)this + 2));
    vox::VoxEngine::DestroyVoxEngine(v4);
  }
  vox::VoxSoundPackXML::~VoxSoundPackXML((VoxSoundManager *)((char *)this + 100));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 56));
  v2 = *((void **)this + 3);
  if ( v2 )
  {
    v3 = (*((_DWORD *)this + 5) - (_DWORD)v2) & 0xFFFFFFFC;
    if ( v3 > 0x80 )
      CustomFree(v2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
  }
}


// ===== 36b120 VoxSoundManager::ShowPlayingMusicTitle(char *) =====
void __fastcall VoxSoundManager::ShowPlayingMusicTitle(VoxSoundManager *this, char *a2)
{
  MenuManager *v4; // r0
  MenuManager *Instance; // r0
  RenderFX *HUDRoot; // r8
  char *v7; // r9
  char *M_data; // r1
  int v9; // r3
  _BYTE v10[12]; // [sp+8h] [bp-40h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v11; // [sp+18h] [bp-30h] BYREF
  char s[20]; // [sp+30h] [bp-18h] BYREF

  v4 = (MenuManager *)_DEBUG_OUT(
                        "In startttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt------> %s",
                        a2);
  Instance = (MenuManager *)MenuManager::GetInstance(v4);
  HUDRoot = (RenderFX *)MenuManager::GetHUDRoot(Instance);
  if ( HUDRoot && Application::IsInitFinish((Application *)&Singleton<Application>::s_inst) )
  {
    sprintf(s, "_root.menu_HUD_%d", 2);
    v7 = (char *)RenderFX::Find(HUDRoot, s);
    _DEBUG_OUT("In apssssssssssssssssssssssssssssss   musiccccccccccc ------> %s", v7);
    std::string::string((std::string *)&v11, a2);
    M_data = v11._M_start_of_storage._M_data;
    if ( (unsigned int)(v11._M_finish - v11._M_start_of_storage._M_data) > 0xF )
    {
      if ( v11._M_finish != v11._M_start_of_storage._M_data + 12 )
      {
        v9 = v11._M_start_of_storage._M_data + 12 - v11._M_finish;
        v11._M_start_of_storage._M_data[12] = *v11._M_finish;
        v11._M_finish += v9;
      }
      std::string::_M_append((std::string *)&v11, "...", "");
      M_data = v11._M_start_of_storage._M_data;
    }
    if ( (std::priv::_String_base<char,std::allocator<char> > *)((char *)this + 56) != &v11 )
    {
      std::string::_M_assign((std::string *const)((char *)this + 56), M_data, v11._M_finish);
      M_data = v11._M_start_of_storage._M_data;
    }
    _DEBUG_OUT("In apssssssssssssssssssssssssssssss   musiccccccccccc ------> %s", M_data);
    v10[1] = 0;
    v10[0] = 0;
    gameswf::as_value::set_string((gameswf::as_value *)v10, v11._M_start_of_storage._M_data);
    RenderFX::InvokeASCallback(
      HUDRoot,
      (gameswf::character *)v7,
      "SetPlayingMusicTitle",
      (const gameswf::as_value *)v10,
      1);
    gameswf::as_value::drop_refs((gameswf::as_value *)v10);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v11);
  }
}


// ===== 36b2cc VoxSoundManager::ReleaseLvlSounds(void) =====
void __fastcall VoxSoundManager::ReleaseLvlSounds(VoxSoundManager *this)
{
  int v1; // r3
  int v3; // r1
  int v5; // r2
  int v6; // r3
  _DWORD *v7; // r2
  int v8; // [sp+8h] [bp-2Ch] BYREF
  _BYTE v9[4]; // [sp+Ch] [bp-28h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v10; // [sp+14h] [bp-20h] BYREF

  v1 = (unsigned __int8)JAVA_SOUNDS;
  if ( !JAVA_SOUNDS )
  {
    v3 = *((_DWORD *)this + 7);
    v8 = 0;
    if ( v3 > 0 )
    {
      do
      {
        if ( *(_DWORD *)(*((_DWORD *)this + 2) + 4 * v1) )
        {
          if ( *((_DWORD *)this + 4) == std::priv::__find<int *,int>(
                                          *((_DWORD *)this + 3),
                                          *((_DWORD *)this + 4),
                                          &v8,
                                          v9) )
          {
            DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
            std::string::string((int)&v10, "isTracingPreload_SFX");
            DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v10);
            std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v10);
            v5 = *((_DWORD *)this + 2);
            v6 = *(_DWORD *)(v5 + 4 * v8);
            v7 = (_DWORD *)(v5 + 4 * v8);
            if ( v6 )
            {
              (*(void (__fastcall **)(int, int, _DWORD *))(*(_DWORD *)v6 + 4))(v6, v8, v7);
              v7 = (_DWORD *)(*((_DWORD *)this + 2) + 4 * v8);
            }
            *v7 = 0;
          }
          v3 = *((_DWORD *)this + 7);
        }
        v1 = v8 + 1;
      }
      while ( v3 > ++v8 );
    }
  }
}


// ===== 36b420 VoxSoundManager::PlayEvent(int,glitch::core::vector3d<float> const&,float,float) =====
int __fastcall VoxSoundManager::PlayEvent(int a1, int a2, float *a3, float a4, float a5)
{
  int Switch; // [sp+18h] [bp-64h]
  int v11; // [sp+24h] [bp-58h] BYREF
  int v12; // [sp+28h] [bp-54h] BYREF
  int v13; // [sp+2Ch] [bp-50h] BYREF
  int v14; // [sp+30h] [bp-4Ch] BYREF
  int v15; // [sp+34h] [bp-48h] BYREF
  int v16; // [sp+38h] [bp-44h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v17; // [sp+44h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v18; // [sp+5Ch] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v18, "IsDisablingSounds");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v18);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v18);
  if ( !Switch && a2 >= 0 )
  {
    if ( JAVA_SOUNDS )
    {
      nativePlaySoundBig(a2, sfx_vfx_volume, 0, 2);
    }
    else
    {
      vox::VoxSoundPackXML::GetEventSoundUid((vox::VoxSoundPackXML *)(a1 + 100), a2, &v16);
      if ( v16 >= 0 )
      {
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string((std::string *)&v17, "isTracingSFX");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v17);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v17);
        vox::VoxSoundPackXML::GetDataSourceInfo(a1 + 100, v16, &v11, &v13, &v15, &v14, &v12);
        VoxSoundManager::PlaySoundPackSound(a1, v16, v11, v13, v15, v14, v12, a3, a4, a5);
      }
    }
  }
  return 0;
}


// ===== 36b5d8 VoxSoundManager::Play3D(int,glitch::core::vector3d<float> const&,bool,int,float,float) =====
int __fastcall VoxSoundManager::Play3D(int a1, int a2, float *a3, int a4, float a5, float a6, float a7)
{
  int Switch; // r6
  int CurrentLevel; // r0
  int v13; // r10
  int v14; // r8
  int v16; // [sp+20h] [bp-54h] BYREF
  int v17; // [sp+24h] [bp-50h] BYREF
  int v18; // [sp+28h] [bp-4Ch] BYREF
  int v19; // [sp+2Ch] [bp-48h] BYREF
  int v20; // [sp+30h] [bp-44h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v21; // [sp+3Ch] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v22; // [sp+54h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v22, "IsDisablingSounds");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v22);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v22);
  if ( !Switch )
  {
    CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    if ( CurrentLevel )
    {
      if ( *(_DWORD *)(CurrentLevel + 304) == 38 && (!*(_BYTE *)(GetOnline() + 5) || !MenuBase::s_igmOpened) && a2 >= 0 )
      {
        if ( JAVA_SOUNDS )
        {
          nativePlaySoundBig(a2, sfx_vfx_volume, a4, 2);
        }
        else
        {
          v13 = Arrays::Sounds::members + 12 * a2;
          v14 = *(_DWORD *)(v13 + 4);
          if ( *(_DWORD *)(v13 + 8) == 1 )
          {
            VoxSoundManager::PlayEvent(a1, *(_DWORD *)(v13 + 4), a3, -1082130432, -1082130432);
          }
          else
          {
            vox::VoxSoundPackXML::GetDataSourceInfo(a1 + 100, v14, &v16, &v18, &v20, &v19, &v17);
            DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
            std::string::string((int)&v21, "isTracingSFX");
            DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v21);
            std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v21);
            VoxSoundManager::PlaySoundPackSound(a1, v14, v16, v18, v20, v19, v17, a3, a6, a7);
          }
        }
      }
    }
  }
  return 0;
}


// ===== 36b80c VoxSoundManager::Play(int,bool,int,int,bool) =====
int __fastcall VoxSoundManager::Play(VoxSoundManager *this, int a2, int a3, int a4, int a5, bool a6)
{
  int Switch; // r6
  int v10; // r6
  vox::DataHandle *v11; // r1
  _BYTE v14[40]; // [sp+18h] [bp-74h] BYREF
  void *v15; // [sp+40h] [bp-4Ch] BYREF
  _BYTE v16[4]; // [sp+44h] [bp-48h] BYREF
  int v17; // [sp+48h] [bp-44h] BYREF
  void *v18; // [sp+4Ch] [bp-40h] BYREF
  _BYTE v19[4]; // [sp+50h] [bp-3Ch] BYREF
  _BYTE v20[4]; // [sp+54h] [bp-38h] BYREF
  _BYTE v21[4]; // [sp+58h] [bp-34h] BYREF
  int v22; // [sp+5Ch] [bp-30h] BYREF
  _BYTE v23[7]; // [sp+60h] [bp-2Ch] BYREF
  bool v24; // [sp+67h] [bp-25h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v25; // [sp+6Ch] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v25, "IsDisablingSounds");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v25);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v25);
  if ( !Switch && a2 >= 0 && (a6 || !*(_BYTE *)(GetOnline() + 5) || !MenuBase::s_igmOpened) )
  {
    if ( JAVA_SOUNDS )
    {
      nativePlaySoundBig(a2, sfx_vfx_volume, a3, 2);
    }
    else
    {
      v10 = *(_DWORD *)(Arrays::Sounds::members + 12 * a2 + 4);
      vox::VoxSoundPackXML::GetDataSourceInfo((char *)this + 100, v10, v19, v21, v23, &v22, v20);
      v11 = *(vox::DataHandle **)(*((_DWORD *)this + 2) + 4 * v10);
      if ( v11
        || (VoxSoundManager::LoadSound(this, v10),
            (v11 = *(vox::DataHandle **)(*((_DWORD *)this + 2) + 4 * v10)) != nullptr) )
      {
        if ( vox::VoxEngine::IsReady(*(vox::VoxEngine **)this, v11) )
        {
          vox::VoxEngine::SetPriorityBankId(
            *(vox::VoxEngine **)this,
            *(vox::DataHandle **)(*((_DWORD *)this + 2) + 4 * v10),
            v22);
          vox::VoxSoundPackXML::GetEmitterInfo((char *)this + 100, v10, &v18, &v17, &v24, v16, &v15);
          vox::VoxEngine::CreateEmitter(
            (vox::VoxEngine *)v14,
            *(vox::DataHandle **)this,
            *(_DWORD *)(*((_DWORD *)this + 2) + 4 * v10),
            v18);
          vox::VoxEngine::Set3DEmitterParameteri(*(vox::VoxEngine **)this, (vox::EmitterHandle *)v14, 0, 1);
          vox::VoxEngine::SetDSPEmitterParameter(*(vox::VoxEngine **)this, (vox::EmitterHandle *)v14, 0, v15);
          if ( (unsigned int)(a5 - 1) <= 0x1D )
            vox::VoxEngine::SetGroup(*(vox::VoxEngine **)this, (vox::EmitterHandle *)v14, v17);
          vox::VoxEngine::Play(*(vox::VoxEngine **)this, (vox::EmitterHandle *)v14, v24, (float)a4 / 1000.0);
          vox::EmitterHandle::~EmitterHandle((vox::EmitterHandle *)v14);
        }
      }
    }
  }
  return 0;
}


// ===== 36baa0 VoxSoundManager::CrossfadeMusic(int,int) =====
void __fastcall VoxSoundManager::CrossfadeMusic(VoxSoundManager *this, int a2, int a3)
{
  int v3; // r8
  int v4; // r10
  int v6; // r2
  int v7; // r3
  int v8; // r7
  int v9; // r9
  int v10; // r3
  float v11; // r9
  _DWORD v12[10]; // [sp+8h] [bp-28h] BYREF

  if ( !JAVA_SOUNDS && a3 != -1 )
  {
    if ( *((_BYTE *)this + 49) )
      v3 = a2;
    else
      v4 = a2;
    if ( *((_BYTE *)this + 49) )
      v4 = a3;
    else
      v3 = a3;
    v6 = Arrays::Sounds::members + 12 * v4;
    v7 = Arrays::Sounds::members + 12 * v3;
    v8 = *(_DWORD *)(v6 + 4);
    v9 = *(_DWORD *)(v7 + 4);
    *(_DWORD *)(v7 + 4) = v8;
    *(_DWORD *)(v7 + 8) = *(_DWORD *)(v6 + 8);
    v10 = *((_DWORD *)this + 2);
    if ( !*(_DWORD *)(v10 + 4 * v9) )
    {
      VoxSoundManager::LoadSound(this, v9);
      v10 = *((_DWORD *)this + 2);
    }
    if ( !*(_DWORD *)(v10 + 4 * v8) )
    {
      VoxSoundManager::LoadSound(this, v8);
      v10 = *((_DWORD *)this + 2);
    }
    v12[2] = -1;
    v12[3] = -1;
    v12[0] = off_9934F0;
    memset(&v12[4], 0, 20);
    vox::VoxEngine::GetEmitterHandles(
      *(vox::VoxEngine **)this,
      *(vox::DataHandle **)(v10 + 4 * v9),
      (vox::EmitterHandle *)v12,
      1);
    v11 = COERCE_FLOAT(vox::VoxEngine::GetPlayCursor(*(vox::VoxEngine **)this, (vox::EmitterHandle *)v12));
    VoxSoundManager::Stop(this, v3, 2000);
    VoxSoundManager::Play(this, v4, 1, 2000, 2, 0);
    vox::VoxEngine::GetEmitterHandles(
      *(vox::VoxEngine **)this,
      *(vox::DataHandle **)(*((_DWORD *)this + 2) + 4 * v8),
      (vox::EmitterHandle *)v12,
      1);
    vox::VoxEngine::SetPlayCursor(*(vox::VoxEngine **)this, (vox::EmitterHandle *)v12, v11);
    *((_BYTE *)this + 49) ^= 1u;
    vox::EmitterHandle::~EmitterHandle((vox::EmitterHandle *)v12);
  }
}


// ===== 36bc34 VoxSoundManager::PlayMenu(int,bool,int,int) =====
int __fastcall VoxSoundManager::PlayMenu(VoxSoundManager *this, int a2, bool a3, int a4, int a5)
{
  return VoxSoundManager::Play(this, a2, a3, a4, a5, 1);
}


// ===== 36bc58 VoxSoundManager::PlayBeat(int,bool,bool) =====
void __fastcall VoxSoundManager::PlayBeat(VoxSoundManager *this, int a2, int a3, int a4)
{
  int Switch; // r6
  std::priv::_String_base<char,std::allocator<char> > v9; // [sp+Ch] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v9, "IsDisablingSounds");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v9);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v9);
  if ( !Switch && byte_99F7E0 )
  {
    if ( a2 == -1 )
    {
      if ( a4 )
        VoxSoundManager::StopBeat((int)this);
    }
    else if ( *((_DWORD *)this + 11) != a2 )
    {
      VoxSoundManager::StopBeat((int)this);
      if ( *((_DWORD *)this + 11) != a2 )
      {
        *((_DWORD *)this + 11) = a2;
        VoxSoundManager::Play(this, a2, a3, 0, 2, 0);
      }
    }
  }
}


// ===== 36bd78 VoxSoundManager::PlayMusic(int,bool,bool,int) =====
void __fastcall VoxSoundManager::PlayMusic(VoxSoundManager *this, int a2, _BOOL4 a3, int a4, int a5)
{
  int Switch; // r10
  int v10; // r12
  int v11; // r1
  void (__fastcall **v12)(vox::EmitterHandle *__hidden); // r3
  int v13; // r0
  vox::DataHandle *v14; // r1
  _DWORD v15[10]; // [sp+8h] [bp-4Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v16; // [sp+34h] [bp-20h] BYREF

  if ( COERCE_FLOAT(VoxSoundManager::GetSoundVolume(this, 2)) >= 0.5 )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v16, "IsDisablingSounds");
    Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v16);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v16);
    if ( !Switch )
    {
      if ( byte_99F7E0 )
      {
        if ( a2 == -1 )
        {
          if ( a4 )
          {
            *((_DWORD *)this + 9) = -1;
            VoxSoundManager::StopMusic(this, a5);
          }
        }
        else
        {
          v10 = *((_DWORD *)this + 9);
          if ( v10 == a2 )
          {
            if ( JAVA_SOUNDS )
            {
              Save_Current_Music_ID = *((_DWORD *)this + 9);
              nativePlaySoundBig(Save_Current_Music_ID, music_volume, a3, 1);
              return;
            }
            v11 = *((_DWORD *)this + 2);
            v12 = off_9934F0;
            v13 = *(_DWORD *)(Arrays::Sounds::members + 12 * a2 + 4);
            v15[2] = -1;
            v15[3] = -1;
            memset(&v15[4], 0, 20);
            v15[0] = off_9934F0;
            v14 = *(vox::DataHandle **)(v11 + 4 * v13);
            if ( v14 )
            {
              if ( (int)vox::VoxEngine::GetEmitterHandles(*(vox::VoxEngine **)this, v14, (vox::EmitterHandle *)v15, 1) > 0 )
              {
                vox::VoxEngine::Resume(*(vox::VoxEngine **)this, (vox::EmitterHandle *)v15, 0.05);
                (*(void (__fastcall **)(_DWORD *))v15[0])(v15);
                return;
              }
              v12 = (void (__fastcall **)(vox::EmitterHandle *__hidden))v15[0];
            }
            (*v12)((vox::EmitterHandle *)v15);
            v10 = *((_DWORD *)this + 9);
          }
          *((_DWORD *)this + 10) = v10;
          if ( v10 != a2 )
            VoxSoundManager::StopMusic(this, a5);
          *((_DWORD *)this + 9) = a2;
          *((_BYTE *)this + 48) = a3;
          if ( JAVA_SOUNDS )
          {
            Save_Current_Music_ID = a2;
            nativePlaySoundBig(a2, music_volume, a3, 1);
          }
          else
          {
            VoxSoundManager::Play(this, a2, a3, a5, 2, 1);
          }
        }
      }
    }
  }
}


// ===== 36c014 VoxSoundManager::SetInSafeZoneMusic(bool) =====
void __fastcall VoxSoundManager::SetInSafeZoneMusic(VoxSoundManager *this, int a2)
{
  int v4; // r5
  int v5; // r1
  int v6; // r3
  int v7; // r0
  int CurrentLevel; // r0

  v4 = (unsigned __int8)JAVA_SOUNDS;
  if ( JAVA_SOUNDS )
  {
    *((_BYTE *)this + 50) = a2;
    CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    VoxSoundManager::PlayMusic(this, *(_DWORD *)(CurrentLevel + 284), 1, 0, 2000);
  }
  else if ( a2 )
  {
    v5 = *(_DWORD *)(Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) + 288);
    if ( v5 < 0 )
    {
      if ( gAssertLevel == 2 )
      {
        *(_DWORD *)v4 = v4;
      }
      else if ( gAssertLevel == 1 )
      {
        fprintf(
          (FILE *)&_sF + 2,
          "ASSERT(%s) FAILED: %s:%d\n",
          "false",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\VOXSoundManager\\VoxSoundManager.cpp",
          1440);
      }
    }
    else
    {
      v6 = *((unsigned __int8 *)this + 49);
      *((_BYTE *)this + 50) = 1;
      if ( v6 )
        VoxSoundManager::PlayMusic(this, v5, 1, v4, 2000);
    }
  }
  else
  {
    *((_BYTE *)this + 50) = 0;
    v7 = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    VoxSoundManager::PlayMusic(this, *(_DWORD *)(v7 + 284), 1, a2, 2000);
  }
}


// ===== 36c164 VoxSoundManager::ResumeMusic(int) =====
void __fastcall VoxSoundManager::ResumeMusic(VoxSoundManager *this, int a2)
{
  int Switch; // r8
  int v5; // r1
  std::priv::_String_base<char,std::allocator<char> > v6; // [sp+Ch] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v6, "IsDisablingSounds");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v6);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v6);
  if ( !Switch )
  {
    v5 = *((_DWORD *)this + 9);
    if ( v5 != -1 )
      VoxSoundManager::PlayMusic(this, v5, *((unsigned __int8 *)this + 48), 1, a2);
  }
}


// ===== 36c224 VoxSoundManager::RestartMusic(int) =====
void __fastcall VoxSoundManager::RestartMusic(VoxSoundManager *this, int a2)
{
  int Switch; // r8
  int v5; // r1
  std::priv::_String_base<char,std::allocator<char> > v6; // [sp+Ch] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v6, "IsDisablingSounds");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v6);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v6);
  if ( !Switch )
  {
    v5 = *((_DWORD *)this + 10);
    if ( v5 != -1 )
      VoxSoundManager::PlayMusic(this, v5, *((unsigned __int8 *)this + 48), 1, a2);
  }
}


// ===== 36c2e4 VoxSoundManager::Initialize(void) =====
int __fastcall VoxSoundManager::Initialize(VoxSoundManager *this)
{
  const char *v2; // r1
  int SavedOption; // r0
  int v4; // r0
  Device *v5; // r0
  int v6; // r2
  int v7; // r1
  int v8; // r4
  int EventSize; // r10
  int i; // r7
  int *v12; // r4
  unsigned int v13; // r2
  unsigned int v14; // r3
  char *v15; // r0
  _BYTE *v16; // r1
  char *v17; // r12
  size_t v18; // r4
  int *v19; // r4
  _DWORD *v20; // r4
  void *v21; // r0
  size_t v22; // r1
  size_t v23; // r3
  char *v24; // r0
  char *v25; // [sp+8h] [bp-74h]
  char *v26; // [sp+8h] [bp-74h]
  size_t v27; // [sp+28h] [bp-54h] BYREF
  int v28; // [sp+2Ch] [bp-50h] BYREF
  int v29; // [sp+30h] [bp-4Ch] BYREF
  int v30; // [sp+34h] [bp-48h] BYREF
  int v31; // [sp+38h] [bp-44h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v32; // [sp+44h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v33; // [sp+5Ch] [bp-20h] BYREF

  _DEBUG_OUT("In Intializeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee");
  *((_BYTE *)this + 51) = 0;
  std::string::string((std::string *)&v33, "");
  if ( (std::priv::_String_base<char,std::allocator<char> > *)((char *)this + 56) != &v33 )
    std::string::_M_assign((std::string *const)((char *)this + 56), v33._M_start_of_storage._M_data, v33._M_finish);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v33);
  if ( !Device::IsiOSVersionSupported((Device *)"3.2", v2) )
    *((_BYTE *)this + 51) = 0;
  SavedOption = Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "VolumeFX");
  VoxSoundManager::SetSoundVolume(this, 1, COERCE_INT((float)SavedOption));
  v4 = Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "VolumeMusic");
  VoxSoundManager::SetSoundVolume(this, 2, COERCE_INT((float)v4));
  vox::VoxEngine::SetStaticBusRouting(*(vox::VoxEngine **)this, "/app_home/data/routing/template_dhpsn.vrt");
  v5 = (Device *)vox::VoxEngine::Set3DGeneralParameteri(*(vox::VoxEngine **)this, 2, 4);
  v6 = *((_DWORD *)this + 32) - *((_DWORD *)this + 31);
  v7 = -858993459 * (v6 >> 3);
  if ( v7 > 8 )
  {
    v5 = (Device *)printf(
                     "Xml file define %d banks, but only %d are defined in configuration, change VOX_NUM_PRIORITY_BANK to"
                     " match actual bank count\n",
                     v7,
                     8);
    v6 = *((_DWORD *)this + 32) - *((_DWORD *)this + 31);
  }
  if ( v6 > 79 )
  {
    v8 = 1;
    do
    {
      vox::VoxSoundPackXML::GetBankInfo((char *)this + 100, v8, &v31, &v30, &v29);
      v5 = (Device *)vox::VoxEngine::SetPriorityBank(*(_DWORD *)this, v8++, v31, v30, v29);
    }
    while ( v8 < -858993459 * ((*((_DWORD *)this + 32) - *((_DWORD *)this + 31)) >> 3) );
  }
  if ( !JAVA_SOUNDS && (Device::IsHighPerformance(v5) || HTC_DEVICES || SHARP_DEVICES || Is_In_Multiplayer_Mode) )
  {
    EventSize = vox::VoxSoundPackXML::GetEventSize((VoxSoundManager *)((char *)this + 100), "preload_sfx");
    if ( EventSize > 0 )
    {
      for ( i = 0; i != EventSize; ++i )
      {
        vox::VoxSoundPackXML::GetEventSoundUid((VoxSoundManager *)((char *)this + 100), "preload_sfx", &v28);
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string((std::string *)&v32, "isTracingPreload_SFX");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v32);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v32);
        v12 = *((int **)this + 4);
        if ( v12 == *((int **)this + 5) )
        {
          v13 = ((int)v12 - *((_DWORD *)this + 3)) >> 2;
          if ( v13 )
            v14 = 2 * v13;
          else
            v14 = 1;
          if ( v14 > 0x3FFFFFFF || v13 > v14 )
            v14 = 0x3FFFFFFF;
          v27 = v14;
          v15 = (char *)std::allocator<int>::_M_allocate((int)this + 20, v14, &v27);
          v16 = *((_BYTE **)this + 3);
          v17 = v15;
          v18 = (char *)v12 - v16;
          if ( v18 )
          {
            v26 = v15;
            v24 = (char *)memmove(v15, v16, v18);
            v17 = v26;
            v19 = (int *)&v24[v18];
          }
          else
          {
            v19 = (int *)v15;
          }
          *v19 = v28;
          v20 = v19 + 1;
          v21 = *((void **)this + 3);
          if ( v21 )
          {
            v22 = (*((_DWORD *)this + 5) - (_DWORD)v21) & 0xFFFFFFFC;
            v25 = v17;
            if ( v22 > 0x80 )
              CustomFree(v21);
            else
              __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v21, v22);
            v17 = v25;
          }
          v23 = v27;
          *((_DWORD *)this + 3) = v17;
          *((_DWORD *)this + 4) = v20;
          *((_DWORD *)this + 5) = &v17[4 * v23];
        }
        else
        {
          *v12 = v28;
          *((_DWORD *)this + 4) += 4;
        }
        VoxSoundManager::LoadSound((int)this, v28);
      }
    }
  }
  return _DEBUG_OUT("In Intializeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee 11111111111111111");
}


// ===== 36c734 VoxSoundManager::GetIPodPlaylistName(int) =====
std::string *__fastcall VoxSoundManager::GetIPodPlaylistName(std::string *this, int a2, int a3)
{
  VoxSoundManager *v5; // r0
  const char *PlaylistName; // r5
  size_t v8; // r0

  this->_M_finish = (char *)this;
  this->_M_start_of_storage._M_data = (char *)this;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(this, 0x10u);
  *this->_M_finish = 0;
  if ( nativeGetNumPlaylists(v5) > a3 )
  {
    PlaylistName = (const char *)nativeGetPlaylistName(a3);
    v8 = LC_API_STRLEN_0(PlaylistName);
    std::string::_M_assign(this, PlaylistName, &PlaylistName[v8]);
  }
  else
  {
    std::string::_M_assign(this, "", "");
  }
  return this;
}


// ===== 36c7b0 VoxSoundManager::VoxSoundManager(void) =====
void __fastcall VoxSoundManager::VoxSoundManager(VoxSoundManager *this)
{
  int v2; // r3
  char *v3; // r0
  vox::FileSystemInterface *v4; // r0
  int v5; // r3
  void *v6; // r0
  int v7; // r2
  void *v8; // r0
  int v9; // r2
  vox::VoxEngine *v10; // r0
  int VoxEngine; // r0
  int Instance; // r10
  void (__fastcall *v13)(int, int, int, int, int); // r7
  const char *v14; // r1
  int ObfuscatedFileName; // r0
  char v16[512]; // [sp+Ch] [bp-208h] BYREF
  int v17; // [sp+20Ch] [bp-8h]

  v2 = _stack_chk_guard;
  *((_DWORD *)this + 11) = -1;
  v3 = (char *)this + 56;
  *((_DWORD *)this + 9) = -1;
  *((_DWORD *)this + 10) = -1;
  *((_DWORD *)this + 18) = v3;
  *((_DWORD *)this + 19) = v3;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_BYTE *)this + 24) = 1;
  *((_DWORD *)this + 7) = 0;
  *((_BYTE *)this + 32) = 0;
  *((_BYTE *)this + 48) = 1;
  *((_BYTE *)this + 49) = 1;
  *((_BYTE *)this + 50) = 0;
  *((_BYTE *)this + 51) = 0;
  v17 = v2;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)v3, 0x10u);
  **((_BYTE **)this + 18) = 0;
  *((_DWORD *)this + 22) = 1000;
  *((_DWORD *)this + 21) = 1000;
  *((_DWORD *)this + 23) = 1065353216;
  *((_BYTE *)this + 96) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_DWORD *)this + 33) = 0;
  *((_DWORD *)this + 34) = 0;
  *((_DWORD *)this + 35) = 0;
  *((_DWORD *)this + 36) = 0;
  *((_DWORD *)this + 38) = 0;
  *((_BYTE *)this + 148) = 0;
  *((_DWORD *)this + 40) = (char *)this + 148;
  *((_DWORD *)this + 39) = (char *)this + 148;
  *((_DWORD *)this + 41) = 0;
  *((_DWORD *)this + 44) = 0;
  *((_BYTE *)this + 172) = 0;
  *((_DWORD *)this + 46) = (char *)this + 172;
  *((_DWORD *)this + 45) = (char *)this + 172;
  *((_DWORD *)this + 47) = 0;
  v4 = (vox::FileSystemInterface *)_DEBUG_OUT(
                                     "In startttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt");
  if ( byte_99F7D4 )
  {
    Instance = vox::FileSystemInterface::GetInstance(v4);
    v13 = *(void (__fastcall **)(int, int, int, int, int))(*(_DWORD *)Instance + 16);
    ObfuscatedFileName = glitch::io::CFileSystem::getObfuscatedFileName(
                           (glitch::io::CFileSystem *)"data/sounds/sounds.zip",
                           v14);
    v13(Instance, ObfuscatedFileName, 1, 1, 1);
  }
  LC_API_STRCPY_0(v16, (const char *)RES_PATH);
  strcpy(&v16[LC_API_STRLEN_0(v16)], "data/sounds/");
  strcpy(&v16[LC_API_STRLEN_0(v16)], "sounds.xml");
  vox::VoxSoundPackXML::LoadXML((VoxSoundManager *)((char *)this + 100), v16);
  _DEBUG_OUT("In startttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt 111111111111111");
  v5 = -252645135 * ((*((_DWORD *)this + 26) - *((_DWORD *)this + 25)) >> 2);
  *((_DWORD *)this + 7) = v5;
  v6 = (void *)operator new[](4 * v5, 4);
  v7 = *((_DWORD *)this + 7);
  *((_DWORD *)this + 1) = v6;
  LC_API_MEMSET_0(v6, 0, 4 * v7);
  _DEBUG_OUT("                                                                                                         ");
  v8 = (void *)operator new[](4 * *((_DWORD *)this + 7), 4);
  v9 = *((_DWORD *)this + 7);
  *((_DWORD *)this + 2) = v8;
  LC_API_MEMSET_0(v8, 0, 4 * v9);
  _DEBUG_OUT("                                                                                                          ");
  v10 = (vox::VoxEngine *)_DEBUG_OUT(
                            "                                                                                                           ");
  VoxEngine = vox::VoxEngine::GetVoxEngine(v10);
  *(_DWORD *)this = VoxEngine;
  (*(void (__fastcall **)(int))(*(_DWORD *)VoxEngine + 8))(VoxEngine);
  _DEBUG_OUT("                                                                                                       ");
  _DEBUG_OUT("                                                                                                        ");
}


// ===== 36ca88 VoxSoundManager::CreateInstance(void) =====
void __fastcall VoxSoundManager::CreateInstance(VoxSoundManager *this)
{
  VoxSoundManager *v1; // r5

  if ( !VoxSoundManager::s_instance )
  {
    v1 = (VoxSoundManager *)operator new(196, 4);
    VoxSoundManager::VoxSoundManager(v1);
    VoxSoundManager::s_instance = (int)v1;
  }
}


// ===== 36cad0 VoxSoundManager::VoxSoundManager(void) =====
void __fastcall VoxSoundManager::VoxSoundManager(VoxSoundManager *this)
{
  int v2; // r3
  _DWORD *v3; // r0
  vox::FileSystemInterface *v4; // r0
  int v5; // r3
  void *v6; // r0
  int v7; // r2
  void *v8; // r0
  int v9; // r2
  vox::VoxEngine *v10; // r0
  int VoxEngine; // r0
  int Instance; // r10
  void (__fastcall *v13)(int, int, int, int, int); // r7
  const char *v14; // r1
  int ObfuscatedFileName; // r0
  char v16[512]; // [sp+Ch] [bp-208h] BYREF
  int v17; // [sp+20Ch] [bp-8h]

  v2 = _stack_chk_guard;
  *((_DWORD *)this + 11) = -1;
  v3 = (_DWORD *)((char *)this + 56);
  *((_DWORD *)this + 9) = -1;
  *((_DWORD *)this + 10) = -1;
  *((_DWORD *)this + 18) = v3;
  *((_DWORD *)this + 19) = v3;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_BYTE *)this + 24) = 1;
  *((_DWORD *)this + 7) = 0;
  *((_BYTE *)this + 32) = 0;
  *((_BYTE *)this + 48) = 1;
  *((_BYTE *)this + 49) = 1;
  *((_BYTE *)this + 50) = 0;
  *((_BYTE *)this + 51) = 0;
  v17 = v2;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v3, 0x10u);
  **((_BYTE **)this + 18) = 0;
  *((_DWORD *)this + 22) = 1000;
  *((_DWORD *)this + 21) = 1000;
  *((_DWORD *)this + 23) = 1065353216;
  *((_BYTE *)this + 96) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_DWORD *)this + 33) = 0;
  *((_DWORD *)this + 34) = 0;
  *((_DWORD *)this + 35) = 0;
  *((_DWORD *)this + 36) = 0;
  *((_DWORD *)this + 38) = 0;
  *((_BYTE *)this + 148) = 0;
  *((_DWORD *)this + 40) = (char *)this + 148;
  *((_DWORD *)this + 39) = (char *)this + 148;
  *((_DWORD *)this + 41) = 0;
  *((_DWORD *)this + 44) = 0;
  *((_BYTE *)this + 172) = 0;
  *((_DWORD *)this + 46) = (char *)this + 172;
  *((_DWORD *)this + 45) = (char *)this + 172;
  *((_DWORD *)this + 47) = 0;
  v4 = (vox::FileSystemInterface *)_DEBUG_OUT(
                                     "In startttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt");
  if ( byte_99F7D4 )
  {
    Instance = vox::FileSystemInterface::GetInstance(v4);
    v13 = *(void (__fastcall **)(int, int, int, int, int))(*(_DWORD *)Instance + 16);
    ObfuscatedFileName = glitch::io::CFileSystem::getObfuscatedFileName(
                           (glitch::io::CFileSystem *)"data/sounds/sounds.zip",
                           v14);
    v13(Instance, ObfuscatedFileName, 1, 1, 1);
  }
  LC_API_STRCPY_0(v16, (const char *)RES_PATH);
  strcpy(&v16[LC_API_STRLEN_0(v16)], "data/sounds/");
  strcpy(&v16[LC_API_STRLEN_0(v16)], "sounds.xml");
  vox::VoxSoundPackXML::LoadXML((VoxSoundManager *)((char *)this + 100), v16);
  _DEBUG_OUT("In startttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt 111111111111111");
  v5 = -252645135 * ((*((_DWORD *)this + 26) - *((_DWORD *)this + 25)) >> 2);
  *((_DWORD *)this + 7) = v5;
  v6 = operator new[](4 * v5, 4);
  v7 = *((_DWORD *)this + 7);
  *((_DWORD *)this + 1) = v6;
  LC_API_MEMSET_0(v6, 0, 4 * v7);
  _DEBUG_OUT("                                                                                                         ");
  v8 = operator new[](4 * *((_DWORD *)this + 7), 4);
  v9 = *((_DWORD *)this + 7);
  *((_DWORD *)this + 2) = v8;
  LC_API_MEMSET_0(v8, 0, 4 * v9);
  _DEBUG_OUT("                                                                                                          ");
  v10 = (vox::VoxEngine *)_DEBUG_OUT(
                            "                                                                                                           ");
  VoxEngine = vox::VoxEngine::GetVoxEngine(v10);
  *(_DWORD *)this = VoxEngine;
  (*(void (__fastcall **)(int))(*(_DWORD *)VoxEngine + 8))(VoxEngine);
  _DEBUG_OUT("                                                                                                       ");
  _DEBUG_OUT("                                                                                                        ");
}


// ===== 36cda8 VoxSoundManager::IPodControl(char const*) =====
int __fastcall VoxSoundManager::IPodControl(VoxSoundManager *this, const char *a2)
{
  int v4; // r0
  int v5; // r3
  int result; // r0
  MenuManager *v7; // r0
  RenderFX *v8; // r7
  int v9; // r0
  gameswf::character *v10; // r9
  const char *v11; // r1
  int v12; // r0
  MenuManager *v13; // r0
  MenuManager *v14; // r0
  RenderFX *v15; // r10
  int v16; // r0
  gameswf::character *v17; // r0
  MenuManager *Instance; // r0
  RenderFX *HUDRoot; // r10
  int SavedOption; // r0
  gameswf::character *v21; // r0
  _BYTE v22[12]; // [sp+Ch] [bp-5Ch] BYREF
  _BYTE v23[4]; // [sp+18h] [bp-50h] BYREF
  int v24; // [sp+1Ch] [bp-4Ch]
  int v25; // [sp+20h] [bp-48h]
  _BYTE v26[4]; // [sp+24h] [bp-44h] BYREF
  int v27; // [sp+28h] [bp-40h]
  int v28; // [sp+2Ch] [bp-3Ch]
  _BYTE v29[4]; // [sp+30h] [bp-38h] BYREF
  int v30; // [sp+34h] [bp-34h]
  int v31; // [sp+38h] [bp-30h]
  _BYTE v32[4]; // [sp+3Ch] [bp-2Ch] BYREF
  int v33; // [sp+40h] [bp-28h]
  int v34; // [sp+44h] [bp-24h]
  int v35; // [sp+48h] [bp-20h]
  int v36; // [sp+4Ch] [bp-1Ch]
  char s[20]; // [sp+50h] [bp-18h] BYREF

  v4 = LC_API_STRCMP_0(a2, "Play");
  if ( !v4 )
  {
    if ( *((_BYTE *)this + 51) )
    {
      v5 = *((_DWORD *)this + 20);
      if ( v5 )
      {
LABEL_4:
        if ( v5 == 1 )
        {
          *((_DWORD *)this + 20) = 0;
          v4 = nativeResumeMusicBG();
        }
        goto LABEL_6;
      }
    }
    else
    {
      if ( (int)nativeGetNumPlaylists(nullptr) > 0 )
        v12 = 0;
      else
        v12 = -1;
      v4 = nativeSetPlaylist(v12);
      *((_BYTE *)this + 51) = 1;
      v5 = *((_DWORD *)this + 20);
      if ( v5 )
        goto LABEL_4;
    }
    v4 = nativePlayBGMusic(v4);
LABEL_6:
    result = nativeGetisplaying(v4);
    if ( result == 1 )
    {
      Instance = (MenuManager *)MenuManager::GetInstance((MenuManager *)((char *)&dword_0 + 1));
      HUDRoot = (RenderFX *)MenuManager::GetHUDRoot(Instance);
      SavedOption = Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "HUDStyle");
      sprintf(s, "_root.menu_HUD_%d", SavedOption);
      v21 = (gameswf::character *)RenderFX::Find(HUDRoot, s);
      v32[0] = 0;
      v35 = 0;
      v36 = 0;
      v32[1] = 2;
      v33 = 0;
      v34 = 0;
      RenderFX::InvokeASCallback(HUDRoot, v21, "PlaybackStateUpdated", (const gameswf::as_value *)v32, 1);
      *((_DWORD *)this + 13) = 1;
      return gameswf::as_value::drop_refs((gameswf::as_value *)v32);
    }
    return result;
  }
  if ( LC_API_STRCMP_0(a2, "Pause") )
  {
    if ( LC_API_STRCMP_0(a2, "Stop") )
    {
      if ( LC_API_STRCMP_0(a2, "Next") )
      {
        if ( LC_API_STRCMP_0(a2, "Previous") )
        {
          result = LC_API_STRCMP_0(a2, "Open");
          if ( !result )
          {
            v7 = (MenuManager *)MenuManager::GetInstance(nullptr);
            v8 = (RenderFX *)MenuManager::GetHUDRoot(v7);
            v9 = Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "HUDStyle");
            sprintf(s, "_root.menu_HUD_%d", v9);
            v10 = (gameswf::character *)RenderFX::Find(v8, s);
            if ( nativeGetisplaying(v10) == 1 )
            {
              v35 = 0;
              v36 = 0;
              v23[1] = 2;
              v24 = 0;
              v25 = 0;
              v23[0] = 0;
              RenderFX::InvokeASCallback(v8, v10, "PlaybackStateUpdated", (const gameswf::as_value *)v23, 1);
              gameswf::as_value::drop_refs((gameswf::as_value *)v23);
            }
            else
            {
              v35 = 0;
              v36 = 1072693248;
              v26[1] = 2;
              v27 = 0;
              v28 = 1072693248;
              v26[0] = 0;
              RenderFX::InvokeASCallback(v8, v10, "PlaybackStateUpdated", (const gameswf::as_value *)v26, 1);
              gameswf::as_value::drop_refs((gameswf::as_value *)v26);
            }
            v11 = *((const char **)this + 19);
            v22[1] = 0;
            v22[0] = 0;
            gameswf::as_value::set_string((gameswf::as_value *)v22, v11);
            RenderFX::InvokeASCallback(v8, v10, "SetPlayingMusicTitle", (const gameswf::as_value *)v22, 1);
            return gameswf::as_value::drop_refs((gameswf::as_value *)v22);
          }
        }
        else
        {
          return nativeChangeStep(-1);
        }
      }
      else
      {
        return nativeChangeStep(1);
      }
    }
    else
    {
      return nativeStopMusicBG();
    }
  }
  else
  {
    v13 = (MenuManager *)nativePauseMusicBG();
    *((_DWORD *)this + 20) = 1;
    *((_DWORD *)this + 13) = 0;
    v14 = (MenuManager *)MenuManager::GetInstance(v13);
    v15 = (RenderFX *)MenuManager::GetHUDRoot(v14);
    v16 = Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "HUDStyle");
    sprintf(s, "_root.menu_HUD_%d", v16);
    v17 = (gameswf::character *)RenderFX::Find(v15, s);
    v35 = 0;
    v36 = 1072693248;
    v29[1] = 2;
    v30 = 0;
    v31 = 1072693248;
    v29[0] = 0;
    RenderFX::InvokeASCallback(v15, v17, "PlaybackStateUpdated", (const gameswf::as_value *)v29, 1);
    return gameswf::as_value::drop_refs((gameswf::as_value *)v29);
  }
  return result;
}


// ===== 36d1f8 NetStructMember::PostLoad(uint) =====
void __fastcall NetStructMember::PostLoad(NetStructMember *this, unsigned int a2)
{
  ;
}


// ===== 36d1fc NetStructMember::GetSizeBits(void) =====
int __fastcall NetStructMember::GetSizeBits(NetStructMember *this)
{
  return *((_DWORD *)this + 1);
}


// ===== 36d204 NetStructMember::~NetStructMember() =====
void __fastcall NetStructMember::~NetStructMember(NetStructMember *this)
{
  ;
}


// ===== 36d208 CNetPlayerInfo::IsActivating(void) =====
int __fastcall CNetPlayerInfo::IsActivating(CNetPlayerInfo *this)
{
  int result; // r0

  if ( *((int *)this + 94) < 0 || *((int *)this + 104) < 0 || *((int *)this + 114) < 0 )
    return 0;
  result = *((_DWORD *)this + 124);
  if ( result != 1 )
    return result == 2;
  return result;
}


// ===== 36d250 NetStructUInt<8u>::~NetStructUInt() =====
void NetStructUInt<8u>::~NetStructUInt()
{
  ;
}


// ===== 36d254 NetStructInt<32u>::~NetStructInt() =====
void NetStructInt<32u>::~NetStructInt()
{
  ;
}


// ===== 36d258 PlayerInfo::Delete(CNetPlayerInfo *) =====
int __fastcall PlayerInfo::Delete(int this, CNetPlayerInfo *a2)
{
  if ( this )
    return (*(int (__fastcall **)(int, CNetPlayerInfo *))(*(_DWORD *)this + 4))(this, a2);
  return this;
}


// ===== 36d274 NetStructInt<8u>::~NetStructInt() =====
void NetStructInt<8u>::~NetStructInt()
{
  ;
}


// ===== 36d278 NetStructInt<16u>::~NetStructInt() =====
void NetStructInt<16u>::~NetStructInt()
{
  ;
}


// ===== 36d27c NetStructBool::~NetStructBool() =====
void __fastcall NetStructBool::~NetStructBool(NetStructBool *this)
{
  ;
}


// ===== 36d280 PlayerManager::IsPlayerInLocalMap(int) =====
bool __fastcall PlayerManager::IsPlayerInLocalMap(PlayerManager *this, int a2)
{
  char *v2; // r3
  char *v3; // r0
  char *v4; // r12
  int v5; // r2
  bool v6; // cc
  char *v7; // r2

  v2 = *((char **)this + 421);
  v3 = (char *)this + 1680;
  if ( !v2 )
    return 0;
  v4 = v3;
  while ( 1 )
  {
    v5 = *((_DWORD *)v2 + 4);
    v6 = a2 <= v5;
    v7 = a2 <= v5 ? *((char **)v2 + 2) : *((char **)v2 + 3);
    if ( !v6 )
      v2 = v4;
    v4 = v2;
    if ( !v7 )
      break;
    v2 = v7;
  }
  return v3 != v2 && a2 >= *((_DWORD *)v2 + 4) && v2 != v3;
}


// ===== 36d2e4 NetStructMemberType<bool>::~NetStructMemberType() =====
void NetStructMemberType<bool>::~NetStructMemberType()
{
  ;
}


// ===== 36d2e8 NetStructMemberType<uint>::GetValue(void) =====
int __fastcall NetStructMemberType<unsigned int>::GetValue(int a1)
{
  return a1 + 32;
}


// ===== 36d2f0 NetStructMemberType<int>::GetValue(void) =====
int __fastcall NetStructMemberType<int>::GetValue(int a1)
{
  return a1 + 32;
}


// ===== 36d2f8 NetStructMemberType<std::string>::GetValue(void) =====
int __fastcall NetStructMemberType<std::string>::GetValue(int a1)
{
  return a1 + 32;
}


// ===== 36d300 NetStructMemberType<uint>::~NetStructMemberType() =====
void NetStructMemberType<unsigned int>::~NetStructMemberType()
{
  ;
}


// ===== 36d304 NetStructMemberType<int>::~NetStructMemberType() =====
void NetStructMemberType<int>::~NetStructMemberType()
{
  ;
}


// ===== 36d308 NetStructMemberType<bool>::GetValue(void) =====
int __fastcall NetStructMemberType<bool>::GetValue(int a1)
{
  return a1 + 29;
}


// ===== 36d310 NetStructInt<17u>::~NetStructInt() =====
void NetStructInt<17u>::~NetStructInt()
{
  ;
}


// ===== 36d314 std::priv::_Deque_iterator_base<OnlineStatusMsg>::_M_subtract(std::priv::_Deque_iterator_base<OnlineStatusMsg> const&) =====
unsigned int __fastcall std::priv::_Deque_iterator_base<OnlineStatusMsg>::_M_subtract(_DWORD *a1, _DWORD *a2)
{
  return -1227133513 * ((*a1 - a1[1]) >> 2) - 1227133513 * ((a2[2] - *a2) >> 2) + ((a1[3] - a2[3]) & 0xFFFFFFFC) - 4;
}


// ===== 36d388 NetStructMemberType<ByteArray>::TestValue(ByteArray const&) =====
int NetStructMemberType<ByteArray>::TestValue()
{
  return 1;
}


// ===== 36d390 NetStructMemberType<ByteArray>::GetValue(void) =====
int __fastcall NetStructMemberType<ByteArray>::GetValue(int a1)
{
  return a1 + 32;
}


// ===== 36d398 NetStructByteArray<30u>::GetBufferPtr(void) =====
int __fastcall NetStructByteArray<30u>::GetBufferPtr(int a1)
{
  return *(_DWORD *)(a1 + 32);
}


// ===== 36d3a0 NetStructByteArray<30u>::GetBufferSize(void) =====
int __fastcall NetStructByteArray<30u>::GetBufferSize(int a1)
{
  return *(_DWORD *)(a1 + 36);
}


// ===== 36d3a8 NetStructByteArray<30u>::GetMaxBufferSize(void) =====
int NetStructByteArray<30u>::GetMaxBufferSize()
{
  return 30;
}


// ===== 36d3b0 NetStructByteArray<3u>::GetBufferPtr(void) =====
int __fastcall NetStructByteArray<3u>::GetBufferPtr(int a1)
{
  return *(_DWORD *)(a1 + 32);
}


// ===== 36d3b8 NetStructByteArray<3u>::GetBufferSize(void) =====
int __fastcall NetStructByteArray<3u>::GetBufferSize(int a1)
{
  return *(_DWORD *)(a1 + 36);
}


// ===== 36d3c0 NetStructByteArray<3u>::GetMaxBufferSize(void) =====
int NetStructByteArray<3u>::GetMaxBufferSize()
{
  return 3;
}


// ===== 36d3c8 NetStructByteArray<36u>::GetBufferPtr(void) =====
int __fastcall NetStructByteArray<36u>::GetBufferPtr(int a1)
{
  return *(_DWORD *)(a1 + 32);
}


// ===== 36d3d0 NetStructByteArray<36u>::GetBufferSize(void) =====
int __fastcall NetStructByteArray<36u>::GetBufferSize(int a1)
{
  return *(_DWORD *)(a1 + 36);
}


// ===== 36d3d8 NetStructByteArray<36u>::GetMaxBufferSize(void) =====
int NetStructByteArray<36u>::GetMaxBufferSize()
{
  return 36;
}


// ===== 36d3e0 NetStructInt<32u>::TestValue(int const&) =====
int NetStructInt<32u>::TestValue()
{
  return 1;
}


// ===== 36d3e8 NetStructString<32u>::TestValue(std::string const&) =====
bool __fastcall NetStructString<32u>::TestValue(int a1, int a2)
{
  return (unsigned int)(*(_DWORD *)(a2 + 16) - *(_DWORD *)(a2 + 20)) <= 0x1F;
}


// ===== 36d404 NetStructUInt<8u>::TestValue(uint const&) =====
bool __fastcall NetStructUInt<8u>::TestValue(int a1, _DWORD *a2)
{
  return *a2 <= 0xFFu;
}


// ===== 36d418 NetStructInt<16u>::TestValue(int const&) =====
bool __fastcall NetStructInt<16u>::TestValue(int a1, int *a2)
{
  return abs32(*a2) < 0x8000;
}


// ===== 36d434 NetStructInt<8u>::TestValue(int const&) =====
bool __fastcall NetStructInt<8u>::TestValue(int a1, int *a2)
{
  return abs32(*a2) <= 0x7F;
}


// ===== 36d450 NetStructInt<17u>::TestValue(int const&) =====
bool __fastcall NetStructInt<17u>::TestValue(int a1, int *a2)
{
  return abs32(*a2) < 0x10000;
}


// ===== 36d46c NetStructMemberType<std::string>::TestValue(std::string const&) =====
int NetStructMemberType<std::string>::TestValue()
{
  return 1;
}


// ===== 36d474 NetStructMemberType<int>::TestValue(int const&) =====
int NetStructMemberType<int>::TestValue()
{
  return 1;
}


// ===== 36d47c NetStructMemberType<uint>::TestValue(uint const&) =====
int NetStructMemberType<unsigned int>::TestValue()
{
  return 1;
}


// ===== 36d484 NetStructMemberType<bool>::TestValue(bool const&) =====
int NetStructMemberType<bool>::TestValue()
{
  return 1;
}


// ===== 36d48c PlayerInfo::IsActive(void) =====
bool __fastcall PlayerInfo::IsActive(PlayerInfo *this)
{
  if ( !*(_BYTE *)(GetOnline() + 5) )
    return 1;
  if ( *((int *)this + 94) < 0 || *((int *)this + 104) < 0 || *((int *)this + 114) < 0 )
    return 0;
  return *((_DWORD *)this + 124) == 3;
}


// ===== 36d4ec NetStructMemberType<int>::~NetStructMemberType() =====
_DWORD *__fastcall NetStructMemberType<int>::~NetStructMemberType(_DWORD *a1)
{
  *a1 = &off_963648;
  CustomFree(a1);
  return a1;
}


// ===== 36d520 NetStructMember::~NetStructMember() =====
void __fastcall NetStructMember::~NetStructMember(NetStructMember *this)
{
  *(_DWORD *)this = &off_963648;
  CustomFree(this);
}


// ===== 36d554 NetStructInt<32u>::~NetStructInt() =====
_DWORD *__fastcall NetStructInt<32u>::~NetStructInt(_DWORD *a1)
{
  *a1 = &off_963648;
  CustomFree(a1);
  return a1;
}


// ===== 36d588 NetStructMemberType<uint>::~NetStructMemberType() =====
_DWORD *__fastcall NetStructMemberType<unsigned int>::~NetStructMemberType(_DWORD *a1)
{
  *a1 = &off_963648;
  CustomFree(a1);
  return a1;
}


// ===== 36d5bc NetStructUInt<8u>::~NetStructUInt() =====
_DWORD *__fastcall NetStructUInt<8u>::~NetStructUInt(_DWORD *a1)
{
  *a1 = &off_963648;
  CustomFree(a1);
  return a1;
}


// ===== 36d5f0 NetStructMemberType<bool>::~NetStructMemberType() =====
_DWORD *__fastcall NetStructMemberType<bool>::~NetStructMemberType(_DWORD *a1)
{
  *a1 = &off_963648;
  CustomFree(a1);
  return a1;
}


// ===== 36d624 NetStructBool::~NetStructBool() =====
void __fastcall NetStructBool::~NetStructBool(NetStructBool *this)
{
  *(_DWORD *)this = &off_963648;
  CustomFree(this);
}


// ===== 36d658 NetStructInt<16u>::~NetStructInt() =====
_DWORD *__fastcall NetStructInt<16u>::~NetStructInt(_DWORD *a1)
{
  *a1 = &off_963648;
  CustomFree(a1);
  return a1;
}


// ===== 36d68c NetStructInt<17u>::~NetStructInt() =====
_DWORD *__fastcall NetStructInt<17u>::~NetStructInt(_DWORD *a1)
{
  *a1 = &off_963648;
  CustomFree(a1);
  return a1;
}


// ===== 36d6c0 NetStructInt<8u>::~NetStructInt() =====
_DWORD *__fastcall NetStructInt<8u>::~NetStructInt(_DWORD *a1)
{
  *a1 = &off_963648;
  CustomFree(a1);
  return a1;
}


// ===== 36d6f4 NetStructByteArray<36u>::GetBuffer(void *,int) =====
int __fastcall NetStructByteArray<36u>::GetBuffer(int a1, void *a2)
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


// ===== 36d730 NetStructByteArray<3u>::GetBuffer(void *,int) =====
int __fastcall NetStructByteArray<3u>::GetBuffer(int a1, void *a2)
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


// ===== 36d76c NetStructByteArray<30u>::GetBuffer(void *,int) =====
int __fastcall NetStructByteArray<30u>::GetBuffer(int a1, void *a2)
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


// ===== 36d7a8 PlayerManager::GetNumPlayers(void) =====
int __fastcall PlayerManager::GetNumPlayers(PlayerManager *this)
{
  int Online; // r0
  CMatching *Instance; // r0
  int v5; // r0
  CNetPlayerManager *NetPlayerMgr; // r0

  Online = GetOnline();
  if ( *(_BYTE *)(Online + 5)
    && (Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance(Online), *((_BYTE *)Instance + 36))
    && (v5 = CMatching::Get(Instance), (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 100))(v5))
    && (NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr(), CNetPlayerManager::IsInitialized(NetPlayerMgr)) )
  {
    return (*((_DWORD *)this + 427) - *((_DWORD *)this + 426)) >> 2;
  }
  else
  {
    return *((_DWORD *)this + 424);
  }
}


// ===== 36d814 PlayerManager::ReceiveQuestSync(PlayerSavegame *) =====
char *__fastcall PlayerManager::ReceiveQuestSync(PlayerManager *this, PlayerSavegame *a2)
{
  char *result; // r0

  result = PlayerSavegame::SG_UnpackQuestSync(a2, (PlayerManager *)((char *)this + 1760));
  *((_BYTE *)this + 1808) = 0;
  return result;
}


// ===== 36d834 PlayerManager::ClearQuestSyncBuffer(void) =====
int __fastcall PlayerManager::ClearQuestSyncBuffer(PlayerManager *this)
{
  int result; // r0

  result = StreamBuffer::clear((PlayerManager *)((char *)this + 1760));
  *((_BYTE *)this + 1808) = 0;
  return result;
}


// ===== 36d850 PlayerManager::_UnpackInventory(PlayerInfo &) =====
void __fastcall PlayerManager::_UnpackInventory(PlayerManager *this, PlayerInfo *a2)
{
  int CurrentLevel; // r0
  int v4; // r6
  int v5; // r3
  char *v6; // r9
  int NumEquipmentSlots; // r8
  char *v8; // r10
  int v9; // r7
  int i; // r5
  int v11; // r3
  ItemInstance *v12; // r11
  int v13; // r0

  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( CurrentLevel )
  {
    if ( *(_BYTE *)(CurrentLevel + 324) )
    {
      if ( !*((_BYTE *)a2 + 1644) )
      {
        v4 = *((_DWORD *)a2 + 408);
        if ( v4 )
        {
          if ( *((_BYTE *)a2 + 1253) )
          {
            v5 = *((_DWORD *)a2 + 304);
            if ( *((_DWORD *)a2 + 417) == v5 )
            {
              v6 = (char *)a2 + 944;
              if ( !NetStructMember::IsChanged((PlayerInfo *)((char *)a2 + 944)) )
                return;
              v5 = *((_DWORD *)a2 + 304);
            }
            else
            {
              v6 = (char *)a2 + 944;
            }
            *((_DWORD *)a2 + 417) = v5;
            NumEquipmentSlots = ItemInventory::GetNumEquipmentSlots((ItemInventory *)(v4 + 892));
            v8 = (char *)operator new[](4 * NumEquipmentSlots, 0);
            NetStructByteArray<36u>::GetBuffer((int)v6, v8);
            ItemInventory::RemoveAllItems((ItemInventory *)(v4 + 892), 1);
            if ( NumEquipmentSlots > 0 )
            {
              v9 = 0;
              for ( i = 0; i != NumEquipmentSlots; ++i )
              {
                v11 = *(_DWORD *)&v8[v9];
                if ( v11 >= 0 && Arrays::ItemTable::size && Arrays::ItemTable::size > (unsigned int)v11 )
                {
                  v12 = (ItemInstance *)operator new(0x6Cu, 0);
                  ItemInstance::ItemInstance(v12, *(_DWORD *)&v8[v9], 1u);
                  v13 = (*(int (__fastcall **)(int, ItemInstance *, int, int))(*(_DWORD *)v4 + 300))(v4, v12, 1, 1);
                  (*(void (__fastcall **)(int, int, int))(*(_DWORD *)v4 + 316))(v4, i, v13);
                }
                else
                {
                  (*(void (**)(void))(*(_DWORD *)v4 + 324))();
                }
                v9 += 4;
              }
            }
            CustomFree(v8);
          }
        }
      }
    }
  }
}


// ===== 36d9f0 NetStructMemberType<int>::SetValue(int const&) =====
NetStructMember *__fastcall NetStructMemberType<int>::SetValue(NetStructMember *result, _DWORD *a2)
{
  if ( *((_DWORD *)result + 8) != *a2 )
  {
    *((_DWORD *)result + 8) = *a2;
    return (NetStructMember *)NetStructMember::SetChanged(result);
  }
  return result;
}


// ===== 36da08 NetStructMemberType<uint>::SetValue(uint const&) =====
NetStructMember *__fastcall NetStructMemberType<unsigned int>::SetValue(NetStructMember *result, _DWORD *a2)
{
  if ( *((_DWORD *)result + 8) != *a2 )
  {
    *((_DWORD *)result + 8) = *a2;
    return (NetStructMember *)NetStructMember::SetChanged(result);
  }
  return result;
}


// ===== 36da20 NetStructMemberType<bool>::SetValue(bool const&) =====
NetStructMember *__fastcall NetStructMemberType<bool>::SetValue(NetStructMember *result, unsigned __int8 *a2)
{
  int v2; // r2

  v2 = *a2;
  if ( *((unsigned __int8 *)result + 29) != v2 )
  {
    *((_BYTE *)result + 29) = v2;
    return (NetStructMember *)NetStructMember::SetChanged(result);
  }
  return result;
}


// ===== 36da38 NetStructUInt<8u>::Read(NetBitStream &) =====
int __fastcall NetStructUInt<8u>::Read(int a1, NetBitStream *this)
{
  int U32; // [sp+4h] [bp-4h] BYREF

  U32 = NetBitStream::ReadU32(this, 8u);
  return (*(int (__fastcall **)(int, int *))(*(_DWORD *)a1 + 28))(a1, &U32);
}


// ===== 36da70 NetStructInt<32u>::Read(NetBitStream &) =====
int __fastcall NetStructInt<32u>::Read(int a1, NetBitStream *this)
{
  int v4; // r2
  int U32; // [sp+4h] [bp-8h] BYREF

  U32 = NetBitStream::ReadU32(this, 0x1Fu);
  if ( NetBitStream::ReadByte(this, 1u) )
    v4 = -1;
  else
    v4 = 1;
  U32 *= v4;
  return (*(int (__fastcall **)(int, int *))(*(_DWORD *)a1 + 28))(a1, &U32);
}


// ===== 36dad0 NetStructInt<16u>::Read(NetBitStream &) =====
int __fastcall NetStructInt<16u>::Read(int a1, NetBitStream *this)
{
  int v4; // r2
  int U32; // [sp+4h] [bp-8h] BYREF

  U32 = NetBitStream::ReadU32(this, 0xFu);
  if ( NetBitStream::ReadByte(this, 1u) )
    v4 = -1;
  else
    v4 = 1;
  U32 *= v4;
  return (*(int (__fastcall **)(int, int *))(*(_DWORD *)a1 + 28))(a1, &U32);
}


// ===== 36db30 NetStructInt<17u>::Read(NetBitStream &) =====
int __fastcall NetStructInt<17u>::Read(int a1, NetBitStream *this)
{
  int v4; // r2
  int U32; // [sp+4h] [bp-8h] BYREF

  U32 = NetBitStream::ReadU32(this, 0x10u);
  if ( NetBitStream::ReadByte(this, 1u) )
    v4 = -1;
  else
    v4 = 1;
  U32 *= v4;
  return (*(int (__fastcall **)(int, int *))(*(_DWORD *)a1 + 28))(a1, &U32);
}


// ===== 36db90 NetStructInt<8u>::Read(NetBitStream &) =====
int __fastcall NetStructInt<8u>::Read(int a1, NetBitStream *this)
{
  int v4; // r2
  int U32; // [sp+4h] [bp-8h] BYREF

  U32 = NetBitStream::ReadU32(this, 7u);
  if ( NetBitStream::ReadByte(this, 1u) )
    v4 = -1;
  else
    v4 = 1;
  U32 *= v4;
  return (*(int (__fastcall **)(int, int *))(*(_DWORD *)a1 + 28))(a1, &U32);
}


// ===== 36dbf0 NetStructUInt<8u>::Write(NetBitStream &) =====
int __fastcall NetStructUInt<8u>::Write(int a1, NetBitStream *this)
{
  return NetBitStream::WriteU32(this, *(_DWORD *)(a1 + 32), 8u);
}


// ===== 36dc04 NetStructByteArray<36u>::Write(NetBitStream &) =====
int __fastcall NetStructByteArray<36u>::Write(int a1, NetBitStream *this)
{
  NetBitStream::WriteU32(this, *(_DWORD *)(a1 + 36), 0x10u);
  return NetBitStream::WriteByteArray(this, *(const void **)(a1 + 32), *(_DWORD *)(a1 + 36));
}


// ===== 36dc34 NetStructByteArray<3u>::Write(NetBitStream &) =====
int __fastcall NetStructByteArray<3u>::Write(int a1, NetBitStream *this)
{
  NetBitStream::WriteU32(this, *(_DWORD *)(a1 + 36), 0x10u);
  return NetBitStream::WriteByteArray(this, *(const void **)(a1 + 32), *(_DWORD *)(a1 + 36));
}


// ===== 36dc64 NetStructByteArray<30u>::Write(NetBitStream &) =====
int __fastcall NetStructByteArray<30u>::Write(int a1, NetBitStream *this)
{
  NetBitStream::WriteU32(this, *(_DWORD *)(a1 + 36), 0x10u);
  return NetBitStream::WriteByteArray(this, *(const void **)(a1 + 32), *(_DWORD *)(a1 + 36));
}


// ===== 36dc94 NetStructInt<32u>::Write(NetBitStream &) =====
int __fastcall NetStructInt<32u>::Write(int a1, NetBitStream *this)
{
  int v2; // r4

  v2 = *(_DWORD *)(a1 + 32);
  NetBitStream::WriteU32(this, abs32(v2), 0x1Fu);
  return NetBitStream::WriteByte(this, v2 < 0, 1u);
}


// ===== 36dcc8 NetStructInt<16u>::Write(NetBitStream &) =====
int __fastcall NetStructInt<16u>::Write(int a1, NetBitStream *this)
{
  int v2; // r4

  v2 = *(_DWORD *)(a1 + 32);
  NetBitStream::WriteU32(this, abs32(v2), 0xFu);
  return NetBitStream::WriteByte(this, v2 < 0, 1u);
}


// ===== 36dcfc NetStructInt<17u>::Write(NetBitStream &) =====
int __fastcall NetStructInt<17u>::Write(int a1, NetBitStream *this)
{
  int v2; // r4

  v2 = *(_DWORD *)(a1 + 32);
  NetBitStream::WriteU32(this, abs32(v2), 0x10u);
  return NetBitStream::WriteByte(this, v2 < 0, 1u);
}


// ===== 36dd30 NetStructInt<8u>::Write(NetBitStream &) =====
int __fastcall NetStructInt<8u>::Write(int a1, NetBitStream *this)
{
  int v2; // r4

  v2 = *(_DWORD *)(a1 + 32);
  NetBitStream::WriteU32(this, abs32(v2), 7u);
  return NetBitStream::WriteByte(this, v2 < 0, 1u);
}


// ===== 36dd64 NetStructMemberType<int>::Erase(NetBitStream &) =====
int __fastcall NetStructMemberType<int>::Erase(NetStructMember *a1, NetBitStream *a2)
{
  int v2; // r5
  int result; // r0

  v2 = *((_DWORD *)a1 + 8);
  result = NetStructMember::Load(a1, a2);
  *((_DWORD *)a1 + 8) = v2;
  return result;
}


// ===== 36dd7c NetStructMemberType<uint>::Erase(NetBitStream &) =====
int __fastcall NetStructMemberType<unsigned int>::Erase(NetStructMember *a1, NetBitStream *a2)
{
  int v2; // r5
  int result; // r0

  v2 = *((_DWORD *)a1 + 8);
  result = NetStructMember::Load(a1, a2);
  *((_DWORD *)a1 + 8) = v2;
  return result;
}


// ===== 36dd94 NetStructMemberType<bool>::Erase(NetBitStream &) =====
int __fastcall NetStructMemberType<bool>::Erase(NetStructMember *a1, NetBitStream *a2)
{
  char v2; // r5
  int result; // r0

  v2 = *((_BYTE *)a1 + 29);
  result = NetStructMember::Load(a1, a2);
  *((_BYTE *)a1 + 29) = v2;
  return result;
}


// ===== 36ddac ByteArray::SetBuffer(void const*,int) =====
void *__fastcall ByteArray::SetBuffer(ByteArray *this, const void *a2, size_t a3)
{
  void *result; // r0
  void *v7; // r0
  signed int v8; // r2

  if ( *((_DWORD *)this + 1) == a3 )
  {
    result = *(void **)this;
  }
  else
  {
    v7 = *(void **)this;
    if ( *(_DWORD *)this )
    {
      CustomFree(v7);
      *(_DWORD *)this = 0;
    }
    *((_DWORD *)this + 1) = a3;
    result = operator new[](a3, 2);
    *(_DWORD *)this = result;
  }
  if ( result )
  {
    v8 = *((_DWORD *)this + 1);
    if ( v8 > 0 )
    {
      LC_API_MEMSET_0(result, 0, v8);
      return memcpy(*(void **)this, a2, *((_DWORD *)this + 1));
    }
  }
  return result;
}


// ===== 36de28 PlayerManager::IsPlayerInRemoteMap(int) =====
int __fastcall PlayerManager::IsPlayerInRemoteMap(PlayerManager *this, int a2)
{
  CNetPlayerManager *NetPlayerMgr; // r0
  int Player; // r0

  NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr();
  Player = CNetPlayerManager::GetPlayer(NetPlayerMgr, a2, 0);
  return (*(int (__fastcall **)(int))(*(_DWORD *)Player + 92))(Player);
}


// ===== 36de50 PlayerManager::DoesPlayerExist(int) =====
int __fastcall PlayerManager::DoesPlayerExist(PlayerManager *this, int a2)
{
  CMatching *Instance; // r0
  int v6; // r0
  CNetPlayerManager *NetPlayerMgr; // r0

  if ( *(_BYTE *)(GetOnline() + 5)
    && (Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance(), *((_BYTE *)Instance + 36))
    && (v6 = CMatching::Get(Instance), (*(int (__fastcall **)(int))(*(_DWORD *)v6 + 100))(v6))
    && (NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr(), CNetPlayerManager::IsInitialized(NetPlayerMgr)) )
  {
    return PlayerManager::IsPlayerInRemoteMap(this, a2);
  }
  else
  {
    return PlayerManager::IsPlayerInLocalMap(this, a2);
  }
}


// ===== 36dec4 PlayerManager::_GetNetPlayerInfo(int,bool) =====
int __fastcall PlayerManager::_GetNetPlayerInfo(PlayerManager *this, int a2, bool a3)
{
  CNetPlayerManager *v5; // r0
  CMatching *Instance; // r0
  int v8; // r0
  CNetPlayerManager *NetPlayerMgr; // r0

  if ( !*(_BYTE *)(GetOnline() + 5)
    || (Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance(), !*((_BYTE *)Instance + 36))
    || (v8 = CMatching::Get(Instance), !(*(int (__fastcall **)(int))(*(_DWORD *)v8 + 100))(v8))
    || (NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr(), !CNetPlayerManager::IsInitialized(NetPlayerMgr)) )
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
        "(GetOnline().IsOnlineGame() && OnlineGameState::GetInstance()->isCommLibInitialized() && CMatching::Get().IsInRo"
        "om() && GetNetPlayerMgr().IsInitialized())",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\PlayerManager\\PlayerManager.cpp",
        1910);
    }
  }
  v5 = (CNetPlayerManager *)GetNetPlayerMgr();
  return CNetPlayerManager::GetPlayer(v5, a2, a3);
}


// ===== 36dfb0 PlayerManager::GetPlayerByInternalID(int,bool) =====
char *__fastcall PlayerManager::GetPlayerByInternalID(PlayerManager *this, int a2, bool a3)
{
  int Online; // r0
  char *v7; // r0
  char *v8; // r1
  char *v9; // r2
  int v10; // r3
  bool v11; // cc
  char *v12; // r3
  CMatching *Instance; // r0
  int v15; // r0
  CNetPlayerManager *NetPlayerMgr; // r0

  if ( a2 == -1 )
    return (char *)this + 8;
  Online = GetOnline();
  if ( *(_BYTE *)(Online + 5) )
  {
    Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance(Online);
    if ( *((_BYTE *)Instance + 36) )
    {
      v15 = CMatching::Get(Instance);
      if ( (*(int (__fastcall **)(int))(*(_DWORD *)v15 + 100))(v15) )
      {
        NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr();
        if ( CNetPlayerManager::IsInitialized(NetPlayerMgr) )
          return (char *)PlayerManager::_GetNetPlayerInfo(this, a2, a3);
      }
    }
  }
  v7 = *((char **)this + 421);
  v8 = (char *)this + 1680;
  if ( !v7 )
  {
LABEL_17:
    v7 = (char *)this + 1680;
LABEL_15:
    if ( v8 != v7 )
      return v7 + 24;
    return (char *)this + 8;
  }
  v9 = (char *)this + 1680;
  while ( 1 )
  {
    v10 = *((_DWORD *)v7 + 4);
    v11 = a2 <= v10;
    v12 = a2 <= v10 ? *((char **)v7 + 2) : *((char **)v7 + 3);
    if ( !v11 )
      v7 = v9;
    v9 = v7;
    if ( !v12 )
      break;
    v7 = v12;
  }
  if ( v8 != v7 )
  {
    if ( a2 >= *((_DWORD *)v7 + 4) )
      goto LABEL_15;
    goto LABEL_17;
  }
  return (char *)this + 8;
}


// ===== 36e09c PlayerManager::GetHostingPlayer(void) =====
char *__fastcall PlayerManager::GetHostingPlayer(PlayerManager *this)
{
  int v2; // r1
  CMatching *Instance; // r0
  int v5; // r0
  CNetPlayerManager *NetPlayerMgr; // r0

  if ( *(_BYTE *)(GetOnline() + 5)
    && (Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance(), *((_BYTE *)Instance + 36))
    && (v5 = CMatching::Get(Instance), (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 100))(v5))
    && (NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr(), CNetPlayerManager::IsInitialized(NetPlayerMgr)) )
  {
    v2 = *(_DWORD *)(GetNetPlayerMgr() + 368);
  }
  else
  {
    v2 = 0;
  }
  return PlayerManager::GetPlayerByInternalID(this, v2, 0);
}


// ===== 36e10c PlayerManager::_GetInternalIDByRemoteID(int,bool) =====
int __fastcall PlayerManager::_GetInternalIDByRemoteID(PlayerManager *this, unsigned int a2, int a3)
{
  CMatching *Instance; // r0
  int v8; // r0
  CNetPlayerManager *NetPlayerMgr; // r0
  int v10; // r3
  unsigned int v11; // r2
  unsigned int v12; // r7
  int v13; // r8
  char *PlayerByInternalID; // r0
  int i; // r2
  int v16; // r0
  int v17; // r1
  int v18; // r3

  if ( *(_BYTE *)(GetOnline() + 5) )
  {
    Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
    if ( *((_BYTE *)Instance + 36) )
    {
      v8 = CMatching::Get(Instance);
      if ( (*(int (__fastcall **)(int))(*(_DWORD *)v8 + 100))(v8) )
      {
        NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr();
        if ( CNetPlayerManager::IsInitialized(NetPlayerMgr) )
        {
          v10 = *((_DWORD *)this + 426);
          if ( a2 < (*((_DWORD *)this + 427) - v10) >> 2 )
          {
            v11 = 0;
            v12 = 0;
            v13 = 0;
            do
            {
              PlayerByInternalID = PlayerManager::GetPlayerByInternalID(this, *(_DWORD *)(v10 + 4 * v11), 0);
              v11 = ++v12;
              if ( PlayerByInternalID[1644] != 1 && (!a3 || *((_DWORD *)PlayerByInternalID + 408)) )
              {
                if ( v13 == a2 )
                  return *((_DWORD *)PlayerByInternalID + 412);
                ++v13;
              }
              v10 = *((_DWORD *)this + 426);
            }
            while ( v12 < (*((_DWORD *)this + 427) - v10) >> 2 );
          }
          return -1;
        }
      }
    }
  }
  if ( a2 >= *((_DWORD *)this + 424) )
    return -1;
  i = *((_DWORD *)this + 422);
  v16 = 0;
  while ( 1 )
  {
    if ( (PlayerManager *)((char *)this + 1680) == (PlayerManager *)i )
      return -1;
    if ( *(_BYTE *)(i + 1668) != 1 && (!a3 || *(_DWORD *)(i + 1656)) )
      break;
LABEL_23:
    v17 = *(_DWORD *)(i + 12);
    if ( v17 )
    {
      for ( i = *(_DWORD *)(i + 12); *(_DWORD *)(i + 8); i = *(_DWORD *)(i + 8) )
        ;
    }
    else
    {
      v18 = *(_DWORD *)(i + 4);
      if ( i == *(_DWORD *)(v18 + 12) )
      {
        do
        {
          i = v18;
          v18 = *(_DWORD *)(v18 + 4);
        }
        while ( *(_DWORD *)(v18 + 12) == i );
        v17 = *(_DWORD *)(i + 12);
      }
      if ( v17 != v18 )
        i = v18;
    }
  }
  if ( v16 != a2 )
  {
    ++v16;
    goto LABEL_23;
  }
  return *(_DWORD *)(i + 1672);
}


// ===== 36e2ac PlayerManager::GetRemotePlayer(int,bool) =====
char *__fastcall PlayerManager::GetRemotePlayer(PlayerManager *this, unsigned int a2, bool a3)
{
  int InternalIDByRemoteID; // r1

  InternalIDByRemoteID = PlayerManager::_GetInternalIDByRemoteID(this, a2, a3);
  return PlayerManager::GetPlayerByInternalID(this, InternalIDByRemoteID, 0);
}


// ===== 36e2cc PlayerManager::_GetInternalIDByLocalID(int,bool) =====
int __fastcall PlayerManager::_GetInternalIDByLocalID(PlayerManager *this, unsigned int a2, int a3)
{
  CMatching *Instance; // r0
  int v7; // r0
  CNetPlayerManager *NetPlayerMgr; // r0
  int v9; // r2
  unsigned int v10; // r3
  int i; // r2
  int v13; // r0
  int v14; // r1
  int v15; // r3
  unsigned int v16; // r3
  unsigned int v17; // r6
  int v18; // r7
  int v19; // r8
  char *PlayerByInternalID; // r0

  if ( *(_BYTE *)(GetOnline() + 5)
    && (Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance(), *((_BYTE *)Instance + 36))
    && (v7 = CMatching::Get(Instance), (*(int (__fastcall **)(int))(*(_DWORD *)v7 + 100))(v7))
    && (NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr(), CNetPlayerManager::IsInitialized(NetPlayerMgr)) )
  {
    v9 = *((_DWORD *)this + 429);
    v10 = (*((_DWORD *)this + 430) - v9) >> 2;
    if ( a2 < v10 )
    {
      if ( !a3 )
        return *(_DWORD *)(v9 + 4 * a2);
      if ( v10 )
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        do
        {
          v19 = 4 * v16;
          PlayerByInternalID = PlayerManager::GetPlayerByInternalID(this, *(_DWORD *)(v9 + 4 * v16), 0);
          v16 = ++v17;
          if ( *((_DWORD *)PlayerByInternalID + 408) )
          {
            if ( v18 == a2 )
              return *(_DWORD *)(*((_DWORD *)this + 429) + v19);
            ++v18;
          }
          v9 = *((_DWORD *)this + 429);
        }
        while ( v17 < (*((_DWORD *)this + 430) - v9) >> 2 );
      }
    }
  }
  else if ( a2 < *((_DWORD *)this + 424) )
  {
    i = *((_DWORD *)this + 422);
    v13 = 0;
    while ( (PlayerManager *)((char *)this + 1680) != (PlayerManager *)i )
    {
      if ( *(_BYTE *)(i + 1668) && (!a3 || *(_DWORD *)(i + 1656)) )
      {
        if ( v13 == a2 )
          return *(_DWORD *)(i + 1672);
        ++v13;
      }
      v14 = *(_DWORD *)(i + 12);
      if ( v14 )
      {
        for ( i = *(_DWORD *)(i + 12); *(_DWORD *)(i + 8); i = *(_DWORD *)(i + 8) )
          ;
      }
      else
      {
        v15 = *(_DWORD *)(i + 4);
        if ( i == *(_DWORD *)(v15 + 12) )
        {
          do
          {
            i = v15;
            v15 = *(_DWORD *)(v15 + 4);
          }
          while ( *(_DWORD *)(v15 + 12) == i );
          v14 = *(_DWORD *)(i + 12);
        }
        if ( v15 != v14 )
          i = v15;
      }
    }
  }
  return -1;
}


// ===== 36e478 PlayerManager::GetLocalPlayer(int,bool) =====
DH2_PlayerInfoCharacterPrefix *__fastcall PlayerManager::GetLocalPlayer(PlayerManager *a1, int a2, bool a3)
{
  int InternalIDByLocalID; // r1

  InternalIDByLocalID = PlayerManager::_GetInternalIDByLocalID(a1, a2, a3);
  return (DH2_PlayerInfoCharacterPrefix *)PlayerManager::GetPlayerByInternalID(a1, InternalIDByLocalID, 0);
}


// ===== 36e498 PlayerManager::HandleQuestSyncMsg(char const*,int) =====
int __fastcall PlayerManager::HandleQuestSyncMsg(PlayerManager *this, char *a2, int a3)
{
  int result; // r0
  int v7; // r2
  int v8; // r3

  if ( a3 <= 0 )
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
        "bufferSize > 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\PlayerManager\\PlayerManager.cpp",
        2389);
    }
  }
  result = (int)PlayerManager::GetLocalPlayer(this, 0, 1);
  v7 = *(_DWORD *)(result + 1632);
  if ( !*((_BYTE *)this + 1808) && v7 && ((v8 = *(_DWORD *)(v7 + 5352)) == 0 || !*(_BYTE *)(v8 + 20))
    || *((_BYTE *)this + 1818) )
  {
    StreamBuffer::expand((PlayerManager *)((char *)this + 1760), a3);
    result = StreamBuffer::write((PlayerManager *)((char *)this + 1760), a2, a3);
    *((_BYTE *)this + 1808) = 1;
  }
  return result;
}


// ===== 36e5b4 PlayerManager::_GetInternalIDByFriendlyID(int,bool) =====
int __fastcall PlayerManager::_GetInternalIDByFriendlyID(PlayerManager *this, int a2, int a3)
{
  int Online; // r0
  CMatching *Instance; // r0
  int v9; // r0
  CNetPlayerManager *NetPlayerMgr; // r0
  int v11; // r3
  unsigned int v12; // r7
  int v13; // r8
  char *PlayerByInternalID; // r0
  int v15; // r3
  _DWORD *i; // r2
  int v17; // r0
  int v18; // r1
  int v19; // r3

  Online = GetOnline();
  if ( *(_BYTE *)(Online + 5) )
  {
    Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance(Online);
    if ( *((_BYTE *)Instance + 36) )
    {
      v9 = CMatching::Get(Instance);
      if ( (*(int (__fastcall **)(int))(*(_DWORD *)v9 + 100))(v9) )
      {
        NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr();
        if ( CNetPlayerManager::IsInitialized(NetPlayerMgr) )
        {
          if ( PlayerManager::GetNumPlayers(this) > a2 )
          {
            v11 = *((_DWORD *)this + 426);
            if ( (unsigned int)(*((_DWORD *)this + 427) - v11) >> 2 )
            {
              v12 = 0;
              v13 = 0;
              do
              {
                PlayerByInternalID = PlayerManager::GetPlayerByInternalID(this, *(_DWORD *)(v11 + 4 * v12), 0);
                v15 = 4 * v12++;
                if ( !a3 || *((_DWORD *)PlayerByInternalID + 408) )
                {
                  if ( v13 == a2 )
                    return *(_DWORD *)(*((_DWORD *)this + 426) + v15);
                  ++v13;
                }
                v11 = *((_DWORD *)this + 426);
              }
              while ( v12 < (*((_DWORD *)this + 427) - v11) >> 2 );
            }
          }
          return -1;
        }
      }
    }
  }
  if ( (unsigned int)a2 >= *((_DWORD *)this + 424) )
    return -1;
  i = *((_DWORD **)this + 422);
  v17 = 0;
  while ( 1 )
  {
    if ( (_DWORD *)((char *)this + 1680) == i )
      return -1;
    if ( !a3 || i[414] )
      break;
LABEL_22:
    v18 = i[3];
    if ( v18 )
    {
      for ( i = (_DWORD *)i[3]; i[2]; i = (_DWORD *)i[2] )
        ;
    }
    else
    {
      v19 = i[1];
      if ( i == *(_DWORD **)(v19 + 12) )
      {
        do
        {
          i = (_DWORD *)v19;
          v19 = *(_DWORD *)(v19 + 4);
        }
        while ( *(_DWORD **)(v19 + 12) == i );
        v18 = i[3];
      }
      if ( v18 != v19 )
        i = (_DWORD *)v19;
    }
  }
  if ( v17 != a2 )
  {
    ++v17;
    goto LABEL_22;
  }
  return i[418];
}


// ===== 36e744 PlayerManager::GetPlayer(int,bool) =====
int __fastcall PlayerManager::GetPlayer(PlayerManager *this, int a2, bool a3)
{
  int InternalIDByFriendlyID; // r1

  InternalIDByFriendlyID = PlayerManager::_GetInternalIDByFriendlyID(this, a2, a3);
  return PlayerManager::GetPlayerByInternalID(this, InternalIDByFriendlyID, 0);
}


// ===== 36e764 PlayerManager::AllPlayersDead(void) =====
int __fastcall PlayerManager::AllPlayersDead(PlayerManager *this)
{
  int v2; // r4
  bool v3; // cc
  int v4; // r1
  PlayerManager *v5; // r0
  int v6; // r3

  v2 = 0;
  v3 = PlayerManager::GetNumPlayers(this) > 0;
  v4 = 0;
  v5 = this;
  if ( !v3 )
    return 1;
  while ( 1 )
  {
    v6 = *(_DWORD *)(PlayerManager::GetPlayer(v5, v4, 0) + 1632);
    if ( !v6
      || !(*(int (__fastcall **)(int))(*(_DWORD *)v6 + 52))(v6)
      && *(_DWORD *)(PlayerManager::GetPlayer(this, v2, 0) + 936) == -1 )
    {
      break;
    }
    v3 = ++v2 < PlayerManager::GetNumPlayers(this);
    v4 = v2;
    v5 = this;
    if ( !v3 )
      return 1;
  }
  return 0;
}


// ===== 36e7f8 PlayerManager::AllReadyToRoll(void) =====
int __fastcall PlayerManager::AllReadyToRoll(PlayerManager *this)
{
  CMatching *Instance; // r0
  int v4; // r0
  CNetPlayerManager *NetPlayerMgr; // r0
  int NumPlayers; // r6
  int v7; // r4
  _BYTE *Player; // r7

  if ( !*(_BYTE *)(GetOnline() + 5) )
    return 1;
  Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
  if ( !*((_BYTE *)Instance + 36) )
    return 1;
  v4 = CMatching::Get(Instance);
  if ( !(*(int (__fastcall **)(int))(*(_DWORD *)v4 + 100))(v4) )
    return 1;
  NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr();
  if ( !CNetPlayerManager::IsInitialized(NetPlayerMgr) )
    return 1;
  NumPlayers = PlayerManager::GetNumPlayers(this);
  if ( NumPlayers <= 0 )
    return 1;
  v7 = 0;
  while ( 1 )
  {
    Player = (_BYTE *)PlayerManager::GetPlayer(this, v7++, 0);
    if ( (*(int (**)(void))(*(_DWORD *)Player + 92))() )
    {
      if ( !Player[1317] || !Player[1349] )
        break;
    }
    if ( v7 == NumPlayers )
      return 1;
  }
  return 0;
}


// ===== 36e8bc PlayerManager::AllClientsReadyToRoll(void) =====
int __fastcall PlayerManager::AllClientsReadyToRoll(PlayerManager *this)
{
  CMatching *Instance; // r0
  int v3; // r0
  CNetPlayerManager *NetPlayerMgr; // r0
  int NumPlayers; // r6
  int v6; // r4
  CNetPlayerInfo *Player; // r7

  if ( !*(_BYTE *)(GetOnline() + 5) )
    return 1;
  Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
  if ( !*((_BYTE *)Instance + 36) )
    return 1;
  v3 = CMatching::Get(Instance);
  if ( !(*(int (__fastcall **)(int))(*(_DWORD *)v3 + 100))(v3) )
    return 1;
  NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr();
  if ( !CNetPlayerManager::IsInitialized(NetPlayerMgr) )
    return 1;
  NumPlayers = PlayerManager::GetNumPlayers(this);
  if ( NumPlayers <= 0 )
    return 1;
  v6 = 0;
  while ( 1 )
  {
    Player = (CNetPlayerInfo *)PlayerManager::GetPlayer(this, v6++, 0);
    if ( (*(int (**)(void))(*(_DWORD *)Player + 92))() )
    {
      if ( !*((_BYTE *)Player + 1317) || !CNetPlayerInfo::IsHost(Player) && !*((_BYTE *)Player + 1349) )
        break;
    }
    if ( v6 == NumPlayers )
      return 1;
  }
  return 0;
}


// ===== 36e994 PlayerManager::AllLoadingDone(void) =====
int __fastcall PlayerManager::AllLoadingDone(PlayerManager *this)
{
  int NumPlayers; // r6
  int v3; // r4
  CNetPlayerInfo *Player; // r7

  NumPlayers = PlayerManager::GetNumPlayers(this);
  if ( NumPlayers <= 0 )
    return 1;
  v3 = 0;
  while ( 1 )
  {
    Player = (CNetPlayerInfo *)PlayerManager::GetPlayer(this, v3++, 0);
    if ( (*(int (**)(void))(*(_DWORD *)Player + 92))() )
    {
      if ( !*((_BYTE *)Player + 1317)
        || *((_BYTE *)this + 1818)
        && CNetPlayerInfo::IsRemote(Player)
        && CNetPlayerInfo::IsHost(Player)
        && *((_BYTE *)Player + 1317)
        && *((_BYTE *)Player + 1253)
        && *((_BYTE *)Player + 1285) )
      {
        break;
      }
    }
    if ( v3 == NumPlayers )
      return 1;
  }
  return 0;
}


// ===== 36ea50 PlayerManager::GetNumPlayerCharactersOfClass(int) =====
int __fastcall PlayerManager::GetNumPlayerCharactersOfClass(PlayerManager *this, int a2)
{
  int v4; // r8
  int v5; // r4
  int v6; // r3

  if ( *((int *)this + 433) <= 0 )
    return 0;
  v5 = 0;
  v4 = 0;
  do
  {
    v6 = *(_DWORD *)(PlayerManager::GetPlayer(this, v5++, 1) + 1632);
    if ( v6 && a2 == *(__int16 *)(v6 + 5064) )
      ++v4;
  }
  while ( v5 < *((_DWORD *)this + 433) );
  return v4;
}


// ===== 36eab8 PlayerManager::GetNumPlayerCharacterWarrior(void) =====
int __fastcall PlayerManager::GetNumPlayerCharacterWarrior(PlayerManager *this)
{
  return PlayerManager::GetNumPlayerCharactersOfClass(this, 263);
}


// ===== 36eac0 PlayerManager::GetNumPlayerCharacterRogue(void) =====
int __fastcall PlayerManager::GetNumPlayerCharacterRogue(PlayerManager *this)
{
  return PlayerManager::GetNumPlayerCharactersOfClass(this, 325);
}


// ===== 36eac8 PlayerManager::GetNumPlayerCharacterMage(void) =====
int __fastcall PlayerManager::GetNumPlayerCharacterMage(PlayerManager *this)
{
  return PlayerManager::GetNumPlayerCharactersOfClass(this, 290);
}


// ===== 36ead0 PlayerManager::GetNumLocalPlayers(bool) =====
int __fastcall PlayerManager::GetNumLocalPlayers(PlayerManager *this, int a2)
{
  int i; // r2
  char *v5; // r0
  int v6; // r6
  int v7; // r1
  int v9; // r3
  CMatching *Instance; // r0
  int v11; // r0
  CNetPlayerManager *NetPlayerMgr; // r0
  int v13; // r3
  unsigned int v14; // r2
  unsigned int v15; // r5
  int v16; // r6
  int Player; // r0

  if ( !*(_BYTE *)(GetOnline() + 5)
    || (Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance(), !*((_BYTE *)Instance + 36))
    || (v11 = CMatching::Get(Instance), !(*(int (__fastcall **)(int))(*(_DWORD *)v11 + 100))(v11))
    || (NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr(), !CNetPlayerManager::IsInitialized(NetPlayerMgr)) )
  {
    i = *((_DWORD *)this + 422);
    v5 = (char *)this + 1680;
    v6 = 0;
LABEL_3:
    if ( v5 == (char *)i )
      return v6;
    while ( 1 )
    {
      if ( !*(_BYTE *)(i + 1668) )
        goto LABEL_7;
      if ( !a2 || *(_DWORD *)(i + 1656) )
        break;
      v7 = *(_DWORD *)(i + 12);
      if ( !v7 )
      {
LABEL_15:
        v9 = *(_DWORD *)(i + 4);
        if ( *(_DWORD *)(v9 + 12) == i )
        {
          do
          {
            i = v9;
            v9 = *(_DWORD *)(v9 + 4);
          }
          while ( i == *(_DWORD *)(v9 + 12) );
          v7 = *(_DWORD *)(i + 12);
        }
        if ( v9 != v7 )
          i = v9;
        goto LABEL_3;
      }
LABEL_8:
      for ( i = v7; *(_DWORD *)(i + 8); i = *(_DWORD *)(i + 8) )
        ;
      if ( v5 == (char *)i )
        return v6;
    }
    ++v6;
LABEL_7:
    v7 = *(_DWORD *)(i + 12);
    if ( !v7 )
      goto LABEL_15;
    goto LABEL_8;
  }
  if ( !a2 )
    return (*((_DWORD *)this + 430) - *((_DWORD *)this + 429)) >> 2;
  v13 = *((_DWORD *)this + 429);
  if ( (*((_DWORD *)this + 430) - v13) >> 2 )
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
      Player = PlayerManager::GetPlayer(this, *(_DWORD *)(v13 + 4 * v14), 0);
      ++v15;
      v13 = *((_DWORD *)this + 429);
      if ( *(_DWORD *)(Player + 1632) )
        ++v16;
      v14 = v15;
    }
    while ( v15 < (*((_DWORD *)this + 430) - v13) >> 2 );
    return v16;
  }
  else
  {
    return 0;
  }
}


// ===== 36ec54 PlayerManager::InitialSetup(Point3D<float>) =====
int __fastcall PlayerManager::InitialSetup(int result, int a2)
{
  int v3; // r4
  int v4; // r1
  DH2_PlayerInfoCharacterPrefix *LocalPlayer; // r0

  if ( !*(_BYTE *)(result + 1744) || *(_BYTE *)(result + 1818) )
  {
    *(_BYTE *)(result + 1744) = 1;
    v3 = 0;
    *(_DWORD *)(result + 1748) = *(_DWORD *)a2;
    *(_DWORD *)(result + 1752) = *(_DWORD *)(a2 + 4);
    *(_DWORD *)(result + 1756) = *(_DWORD *)(a2 + 8);
    result = PlayerManager::GetNumLocalPlayers((PlayerManager *)dword_99F76C, 1);
    v4 = 0;
    if ( result > 0 )
    {
      do
      {
        LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, v4, 1);
        GameObject::SetPosition(LocalPlayer->character_660, (float *)a2, 1);
        result = PlayerManager::GetNumLocalPlayers((PlayerManager *)dword_99F76C, 1);
        v4 = ++v3;
      }
      while ( v3 < result );
    }
  }
  return result;
}


// ===== 36ed0c PlayerManager::_UpdatePlayerNumbers(void) =====
int __fastcall PlayerManager::_UpdatePlayerNumbers(PlayerManager *this)
{
  int v2; // r3
  char *v3; // r6
  int v4; // r2
  int result; // r0
  int v6; // r1
  int v7; // r4
  int v8; // r12
  int v9; // r2
  int v10; // r5
  int v11; // r4
  int v12; // r1
  CMatching *Instance; // r0
  int v14; // r0
  CNetPlayerManager *NetPlayerMgr; // r0
  int v16; // r3
  int v17; // r6
  unsigned int v18; // r4
  int v19; // r8
  int i; // r7
  char *PlayerByInternalID; // r0
  int v22; // r1
  int v23; // r2
  int v24; // r3

  if ( *(_BYTE *)(GetOnline() + 5)
    && (Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance(), *((_BYTE *)Instance + 36))
    && (v14 = CMatching::Get(Instance), (*(int (__fastcall **)(int))(*(_DWORD *)v14 + 100))(v14))
    && (NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr(),
        (result = CNetPlayerManager::IsInitialized(NetPlayerMgr)) != 0) )
  {
    v16 = *((_DWORD *)this + 426);
    if ( (unsigned int)(*((_DWORD *)this + 427) - v16) >> 2 )
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      for ( i = 0; ; i = v23 )
      {
        PlayerByInternalID = PlayerManager::GetPlayerByInternalID(this, *(_DWORD *)(v16 + 4 * v18), 0);
        v22 = v17 + 1;
        if ( *((_DWORD *)PlayerByInternalID + 412) == -1 )
        {
          *((_DWORD *)PlayerByInternalID + 414) = -1;
          v22 = v17;
          v23 = i;
        }
        else
        {
          v24 = (unsigned __int8)PlayerByInternalID[1644];
          v23 = i;
          *((_DWORD *)PlayerByInternalID + 414) = v17;
          if ( v24 )
          {
            *((_DWORD *)PlayerByInternalID + 415) = i;
            v23 = i + 1;
          }
          else
          {
            *((_DWORD *)PlayerByInternalID + 415) = v19;
          }
          if ( !v24 )
            ++v19;
        }
        v16 = *((_DWORD *)this + 426);
        result = *((_DWORD *)this + 427);
        ++v18;
        v17 = v22;
        if ( v18 >= (result - v16) >> 2 )
          break;
      }
    }
  }
  else
  {
    v2 = *((_DWORD *)this + 422);
    v3 = (char *)this + 1680;
    v4 = 0;
    result = 0;
    v6 = 0;
    if ( (PlayerManager *)((char *)this + 1680) != (PlayerManager *)v2 )
    {
      do
      {
        v7 = *(unsigned __int8 *)(v2 + 1668);
        *(_DWORD *)(v2 + 1680) = v4;
        v8 = v4 + 1;
        v9 = *(_DWORD *)(v2 + 12);
        if ( v7 )
        {
          *(_DWORD *)(v2 + 1684) = v6;
          v10 = result;
          v11 = v6 + 1;
        }
        else
        {
          *(_DWORD *)(v2 + 1684) = result;
          v11 = v6;
          v10 = result + 1;
        }
        if ( v9 )
        {
          while ( *(_DWORD *)(v9 + 8) )
            v9 = *(_DWORD *)(v9 + 8);
          v2 = v9;
        }
        else
        {
          v12 = *(_DWORD *)(v2 + 4);
          if ( v2 == *(_DWORD *)(v12 + 12) )
          {
            do
            {
              v2 = v12;
              v12 = *(_DWORD *)(v12 + 4);
            }
            while ( *(_DWORD *)(v12 + 12) == v2 );
            v9 = *(_DWORD *)(v2 + 12);
          }
          if ( v9 != v12 )
            v2 = v12;
        }
        v4 = v8;
        result = v10;
        v6 = v11;
      }
      while ( v3 != (char *)v2 );
    }
  }
  return result;
}


// ===== 36eea8 PlayerManager::GetPlayerByCharacter(Character const*,bool) =====
char *__fastcall PlayerManager::GetPlayerByCharacter(PlayerManager *this, const Character *a2, bool a3)
{
  int Online; // r0
  int v7; // r3
  char *v8; // r12
  char *result; // r0
  int v10; // r2
  int v11; // r1
  CMatching *Instance; // r0
  int v13; // r0
  CNetPlayerManager *NetPlayerMgr; // r0
  int v15; // r2
  unsigned int v16; // r3
  unsigned int v17; // r4
  int v18; // r8
  int PlayerByInternalID; // r0

  Online = GetOnline();
  if ( *(_BYTE *)(Online + 5) )
  {
    Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance(Online);
    if ( *((_BYTE *)Instance + 36) )
    {
      v13 = CMatching::Get(Instance);
      if ( (*(int (__fastcall **)(int))(*(_DWORD *)v13 + 100))(v13) )
      {
        NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr();
        if ( CNetPlayerManager::IsInitialized(NetPlayerMgr) )
        {
          v15 = *((_DWORD *)this + 426);
          if ( (unsigned int)(*((_DWORD *)this + 427) - v15) >> 2 )
          {
            v16 = 0;
            v17 = 0;
            while ( 1 )
            {
              v18 = 4 * v16;
              PlayerByInternalID = PlayerManager::GetPlayerByInternalID(this, *(_DWORD *)(v15 + 4 * v16), a3);
              v16 = ++v17;
              if ( a2 == *(const Character **)(PlayerByInternalID + 1632) )
                break;
              v15 = *((_DWORD *)this + 426);
              if ( v17 >= (*((_DWORD *)this + 427) - v15) >> 2 )
                return (char *)this + 8;
            }
            return (char *)PlayerManager::_GetNetPlayerInfo(this, *(_DWORD *)(*((_DWORD *)this + 426) + v18), a3);
          }
          return (char *)this + 8;
        }
      }
    }
  }
  v7 = *((_DWORD *)this + 422);
  v8 = (char *)this + 1680;
LABEL_3:
  if ( v8 == (char *)v7 )
    return (char *)this + 8;
  while ( 1 )
  {
    result = (char *)(v7 + 24);
    if ( a2 == *(const Character **)(v7 + 1656) )
      return result;
    v10 = *(_DWORD *)(v7 + 12);
    if ( !v10 )
    {
      v11 = *(_DWORD *)(v7 + 4);
      if ( *(_DWORD *)(v11 + 12) == v7 )
      {
        do
        {
          v7 = v11;
          v11 = *(_DWORD *)(v11 + 4);
        }
        while ( v7 == *(_DWORD *)(v11 + 12) );
        v10 = *(_DWORD *)(v7 + 12);
      }
      if ( v11 != v10 )
        v7 = v11;
      goto LABEL_3;
    }
    while ( *(_DWORD *)(v10 + 8) )
      v10 = *(_DWORD *)(v10 + 8);
    v7 = v10;
    if ( v8 == (char *)v10 )
      return (char *)this + 8;
  }
}


// ===== 36effc PlayerManager::IsLocalPlayer(Character const*) =====
int __fastcall PlayerManager::IsLocalPlayer(PlayerManager *this, const Character *a2)
{
  int PlayerByCharacter; // r0

  if ( !a2 )
    return 0;
  PlayerByCharacter = PlayerManager::GetPlayerByCharacter(this, a2, 0);
  return (*(int (__fastcall **)(int))(*(_DWORD *)PlayerByCharacter + 80))(PlayerByCharacter);
}


// ===== 36f028 NetStructBool::Read(NetBitStream &) =====
int __fastcall NetStructBool::Read(NetStructBool *this, NetBitStream *a2)
{
  bool v4; // [sp+7h] [bp-1h] BYREF

  v4 = NetBitStream::ReadBit(a2) != 0;
  return (*(int (__fastcall **)(NetStructBool *, bool *))(*(_DWORD *)this + 28))(this, &v4);
}


// ===== 36f064 NetStructBool::Write(NetBitStream &) =====
int __fastcall NetStructBool::Write(NetStructBool *this, NetBitStream *a2)
{
  return NetBitStream::WriteBit(a2, *((unsigned __int8 *)this + 29));
}


// ===== 36f074 PlayerManager::IsLocalPlayerHosting(void) =====
int __fastcall PlayerManager::IsLocalPlayerHosting(PlayerManager *this)
{
  CMatching *Instance; // r0
  CMatchingGLLive *v4; // r0
  CNetPlayerInfo *LocalPlayer; // r0

  if ( *(_BYTE *)(GetOnline() + 5)
    && (Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance(),
        (unsigned int)(*((_DWORD *)Instance + 13) - 3) <= 1) )
  {
    v4 = (CMatchingGLLive *)CMatching::Get(Instance);
    return CMatchingGLLive::IsHost(v4);
  }
  else if ( *(_BYTE *)(GetOnline() + 5) )
  {
    LocalPlayer = (CNetPlayerInfo *)PlayerManager::GetLocalPlayer(this, 0, 0);
    return CNetPlayerInfo::IsHost(LocalPlayer);
  }
  else
  {
    return 1;
  }
}


// ===== 36f0dc PlayerManager::_AttachControllerToPlayerCharacter(int) =====
int __fastcall PlayerManager::_AttachControllerToPlayerCharacter(PlayerManager *this, int a2)
{
  char *PlayerByInternalID; // r0
  char *v3; // r6
  int v4; // r5
  v2MixedController *v5; // r0
  v2Controllable *v6; // r7
  v2Controllable *v7; // r1
  v2MixedController *v8; // r4
  int v9; // r7
  v2GamepadController *v10; // r0
  v2Controller *v11; // r6
  v2Controllable *v12; // r5
  v2EmuController *v13; // r6
  v2HudController *v14; // r6
  int result; // r0
  v2NetController *v16; // r0
  v2Controllable *v17; // r1
  v2Controller *v18; // r6
  v2EmuController *v19; // r5

  PlayerByInternalID = PlayerManager::GetPlayerByInternalID(this, a2, 0);
  v3 = PlayerByInternalID;
  v4 = *((_DWORD *)PlayerByInternalID + 408);
  if ( PlayerByInternalID[1644] )
  {
    v5 = (v2MixedController *)operator new(0x24u, 0);
    if ( v4 )
      v6 = (v2Controllable *)(v4 + 884);
    else
      v6 = (v2Controllable *)(elf_hash_bucket + 664);
    if ( v4 )
      v7 = v6;
    else
      v7 = nullptr;
    v8 = v5;
    v2MixedController::v2MixedController(v5, v7);
    v2Controllable::SetController(v6, v8);
    *(_DWORD *)(*(_DWORD *)(v4 + 888) + 12) = v4;
    if ( *(_BYTE *)(GetOnline() + 5) )
      *(_BYTE *)(*(_DWORD *)(v4 + 888) + 10) = 1;
    v9 = *((_DWORD *)v3 + 410);
    v10 = (v2GamepadController *)operator new(0x20u, 0);
    v11 = v10;
    if ( v8 )
    {
      v12 = (v2MixedController *)((char *)v8 + 16);
      v2GamepadController::v2GamepadController(v10, (v2MixedController *)((char *)v8 + 16), v9);
      v2MixedController::AddController(v8, v11);
      v13 = (v2EmuController *)operator new(0x1Cu, 0);
      v2EmuController::v2EmuController(v13, (v2MixedController *)((char *)v8 + 16));
      v2MixedController::AddController(v8, v13);
    }
    else
    {
      v2GamepadController::v2GamepadController(v10, nullptr, v9);
      v2MixedController::AddController(nullptr, v11);
      v19 = (v2EmuController *)operator new(0x1Cu, 0);
      v2EmuController::v2EmuController(v19, nullptr);
      v2MixedController::AddController(nullptr, v19);
      v12 = nullptr;
    }
    v14 = (v2HudController *)operator new(0x10u, 0);
    v2HudController::v2HudController(v14, v12);
    return v2MixedController::AddController(v8, v14);
  }
  else
  {
    v16 = (v2NetController *)operator new(0x10u, (unsigned __int8)PlayerByInternalID[1644]);
    if ( v4 )
      v17 = (v2Controllable *)(v4 + 884);
    else
      v17 = nullptr;
    v18 = v16;
    v2NetController::v2NetController(v16, v17);
    result = v2Controllable::SetController((v2Controllable *)(v4 + 884), v18);
    *(_DWORD *)(*(_DWORD *)(v4 + 888) + 12) = v4;
  }
  return result;
}


// ===== 36f264 NetStructMemberType<ByteArray>::SetValue(ByteArray const&) =====
int __fastcall NetStructMemberType<ByteArray>::SetValue(NetStructMember *this, int a2)
{
  size_t v2; // r2
  size_t v3; // r6
  int result; // r0

  v2 = *((_DWORD *)this + 9);
  v3 = *(_DWORD *)(a2 + 4);
  if ( v2 != v3 || (result = memcmp(*((const void **)this + 8), *(const void **)a2, v2)) != 0 )
  {
    if ( (NetStructMember *)a2 != (NetStructMember *)((char *)this + 32) )
      ByteArray::SetBuffer((NetStructMember *)((char *)this + 32), *(const void **)a2, v3);
    return NetStructMember::SetChanged(this);
  }
  return result;
}


// ===== 36f2bc PlayerManager::PostInitCharacters(void) =====
int __fastcall PlayerManager::PostInitCharacters(PlayerManager *this)
{
  int result; // r0
  int v3; // r5
  int v4; // r4
  _DWORD *Player; // r7
  Character *v6; // r7
  CMatching *Online; // r0
  int v8; // r0
  CConnectionManager *ConnectionMgr; // r0

  result = PlayerManager::GetNumPlayers(this);
  v3 = result;
  if ( result > 0 )
  {
    v4 = 0;
    while ( 1 )
    {
      Player = (_DWORD *)PlayerManager::GetPlayer(this, v4, 0);
      result = (*(int (**)(void))(*Player + 80))();
      if ( !result )
        goto LABEL_3;
      result = (*(int (__fastcall **)(_DWORD *))(*Player + 92))(Player);
      if ( !result )
        goto LABEL_3;
      v6 = (Character *)Player[408];
      Online = (CMatching *)GetOnline();
      if ( !*((_BYTE *)Online + 5) )
      {
        if ( !v6 )
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
              "c",
              "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\PlayerManager\\PlayerManager.cpp",
              1091);
          }
        }
        goto LABEL_8;
      }
      if ( v6 )
      {
LABEL_8:
        ++v4;
        result = Character::VerifySpecialization(v6);
        if ( v4 == v3 )
          return result;
      }
      else
      {
        v8 = CMatching::Get(Online);
        (*(void (__fastcall **)(int))(*(_DWORD *)v8 + 60))(v8);
        ConnectionMgr = (CConnectionManager *)GetConnectionMgr();
        result = CConnectionManager::DisconnectAll(ConnectionMgr);
LABEL_3:
        if ( ++v4 == v3 )
          return result;
      }
    }
  }
  return result;
}


// ===== 36f40c CNetPlayerInfo::SetState(char) =====
int __fastcall CNetPlayerInfo::SetState(CNetPlayerInfo *this, int a2)
{
  int v3; // r3
  _DWORD v5[7]; // [sp+0h] [bp-2Ch] BYREF
  char v6; // [sp+1Ch] [bp-10h]
  _DWORD v7[3]; // [sp+20h] [bp-Ch] BYREF

  v5[2] = 0;
  v5[3] = 0;
  v5[1] = 8;
  v5[5] = -1;
  v6 = 0;
  v5[0] = &off_9636A0;
  v5[4] = -1;
  v5[6] = 0;
  if ( a2 != v7[0] )
  {
    v7[0] = a2;
    NetStructMember::SetChanged((NetStructMember *)v5);
  }
  v3 = *((_DWORD *)this + 136);
  v5[0] = &off_963670;
  return (*(int (__fastcall **)(char *, _DWORD *))(v3 + 28))((char *)this + 544, v7);
}


// ===== 36f4b4 PlayerManager::_UpdateJoiningController(int,int) =====
int __fastcall PlayerManager::_UpdateJoiningController(PlayerManager *this, int a2, int a3)
{
  int Instance; // r0
  int v7; // r4
  char *PlayerByInternalID; // r7
  int result; // r0
  int v10; // r12
  EventManager *v11; // r0
  int v12; // r12
  EventManager *v13; // r0
  int v14; // r12
  EventManager *v15; // r0
  int v16; // r12
  EventManager *v17; // r0
  int v18; // r12
  EventManager *v19; // r0
  int v20; // r12
  EventManager *v21; // r0
  int v22; // r12
  EventManager *v23; // r0
  int v24; // r12
  EventManager *v25; // r0
  int v26; // r12
  EventManager *v27; // r0
  int v28; // r12
  EventManager *v29; // r0
  _DWORD v30[6]; // [sp+0h] [bp-F4h] BYREF
  _DWORD v31[6]; // [sp+18h] [bp-DCh] BYREF
  _DWORD v32[6]; // [sp+30h] [bp-C4h] BYREF
  _DWORD v33[6]; // [sp+48h] [bp-ACh] BYREF
  _DWORD v34[6]; // [sp+60h] [bp-94h] BYREF
  _DWORD v35[6]; // [sp+78h] [bp-7Ch] BYREF
  _DWORD v36[6]; // [sp+90h] [bp-64h] BYREF
  _DWORD v37[6]; // [sp+A8h] [bp-4Ch] BYREF
  _DWORD v38[6]; // [sp+C0h] [bp-34h] BYREF
  _DWORD v39[7]; // [sp+D8h] [bp-1Ch] BYREF

  Instance = InputManager::GetInstance(this);
  v7 = (*(int (__fastcall **)(int, int))(*(_DWORD *)Instance + 8))(Instance, a2);
  PlayerByInternalID = PlayerManager::GetPlayerByInternalID(this, a3, 0);
  if ( *(float *)(v7 + 1208) >= (float)((float)((float)(*(float *)(v7 + 1220) + *(float *)(v7 + 1216)) + 1.0) * 0.5) )
  {
    if ( *(_BYTE *)(v7 + 1224) )
      goto LABEL_3;
    v28 = 1;
    v29 = (EventManager *)dword_99F740;
  }
  else
  {
    if ( !*(_BYTE *)(v7 + 1224) )
      goto LABEL_3;
    v28 = 0;
    v29 = (EventManager *)dword_99F740;
  }
  v39[1] = 7;
  v39[3] = v28;
  v39[0] = off_95B470;
  v39[2] = 37;
  v39[5] = 1065353216;
  v39[4] = a2;
  EventManager::Raise(v29, (const IEvent *)v39);
  v39[0] = off_95B458;
LABEL_3:
  if ( *(float *)(v7 + 1240) >= (float)((float)((float)(*(float *)(v7 + 1252) + *(float *)(v7 + 1248)) + 1.0) * 0.5) )
  {
    if ( *(_BYTE *)(v7 + 1256) )
      goto LABEL_5;
    v26 = 1;
    v27 = (EventManager *)dword_99F740;
  }
  else
  {
    if ( !*(_BYTE *)(v7 + 1256) )
      goto LABEL_5;
    v26 = 0;
    v27 = (EventManager *)dword_99F740;
  }
  v38[1] = 7;
  v38[3] = v26;
  v38[0] = off_95B470;
  v38[2] = 38;
  v38[5] = 1065353216;
  v38[4] = a2;
  EventManager::Raise(v27, (const IEvent *)v38);
  v38[0] = off_95B458;
LABEL_5:
  if ( *(float *)(v7 + 1272) >= (float)((float)((float)(*(float *)(v7 + 1284) + *(float *)(v7 + 1280)) + 1.0) * 0.5) )
  {
    if ( *(_BYTE *)(v7 + 1288) )
      goto LABEL_7;
    v24 = 1;
    v25 = (EventManager *)dword_99F740;
  }
  else
  {
    if ( !*(_BYTE *)(v7 + 1288) )
      goto LABEL_7;
    v24 = 0;
    v25 = (EventManager *)dword_99F740;
  }
  v37[1] = 7;
  v37[3] = v24;
  v37[0] = off_95B470;
  v37[2] = 39;
  v37[5] = 1065353216;
  v37[4] = a2;
  EventManager::Raise(v25, (const IEvent *)v37);
  v37[0] = off_95B458;
LABEL_7:
  if ( *(float *)(v7 + 1304) >= (float)((float)((float)(*(float *)(v7 + 1316) + *(float *)(v7 + 1312)) + 1.0) * 0.5) )
  {
    if ( *(_BYTE *)(v7 + 1320) )
      goto LABEL_9;
    v22 = 1;
    v23 = (EventManager *)dword_99F740;
  }
  else
  {
    if ( !*(_BYTE *)(v7 + 1320) )
      goto LABEL_9;
    v22 = 0;
    v23 = (EventManager *)dword_99F740;
  }
  v36[1] = 7;
  v36[3] = v22;
  v36[0] = off_95B470;
  v36[2] = 40;
  v36[5] = 1065353216;
  v36[4] = a2;
  EventManager::Raise(v23, (const IEvent *)v36);
  v36[0] = off_95B458;
LABEL_9:
  if ( *(float *)(v7 + 344) >= (float)((float)((float)(*(float *)(v7 + 356) + *(float *)(v7 + 352)) + 1.0) * 0.5) )
  {
    if ( *(_BYTE *)(v7 + 360) )
      goto LABEL_11;
    v20 = 1;
    v21 = (EventManager *)dword_99F740;
  }
  else
  {
    if ( !*(_BYTE *)(v7 + 360) )
      goto LABEL_11;
    v20 = 0;
    v21 = (EventManager *)dword_99F740;
  }
  v35[1] = 7;
  v35[3] = v20;
  v35[0] = off_95B470;
  v35[2] = 10;
  v35[5] = 1065353216;
  v35[4] = a2;
  EventManager::Raise(v21, (const IEvent *)v35);
  v35[0] = off_95B458;
LABEL_11:
  if ( *(float *)(v7 + 376) >= (float)((float)((float)(*(float *)(v7 + 388) + *(float *)(v7 + 384)) + 1.0) * 0.5) )
  {
    if ( *(_BYTE *)(v7 + 392) )
      goto LABEL_13;
    v18 = 1;
    v19 = (EventManager *)dword_99F740;
  }
  else
  {
    if ( !*(_BYTE *)(v7 + 392) )
      goto LABEL_13;
    v18 = 0;
    v19 = (EventManager *)dword_99F740;
  }
  v34[1] = 7;
  v34[3] = v18;
  v34[0] = off_95B470;
  v34[2] = 11;
  v34[5] = 1065353216;
  v34[4] = a2;
  EventManager::Raise(v19, (const IEvent *)v34);
  v34[0] = off_95B458;
LABEL_13:
  if ( *(float *)(v7 + 408) >= (float)((float)((float)(*(float *)(v7 + 420) + *(float *)(v7 + 416)) + 1.0) * 0.5) )
  {
    if ( *(_BYTE *)(v7 + 424) )
      goto LABEL_15;
    v16 = 1;
    v17 = (EventManager *)dword_99F740;
  }
  else
  {
    if ( !*(_BYTE *)(v7 + 424) )
      goto LABEL_15;
    v16 = 0;
    v17 = (EventManager *)dword_99F740;
  }
  v33[1] = 7;
  v33[3] = v16;
  v33[0] = off_95B470;
  v33[2] = 12;
  v33[5] = 1065353216;
  v33[4] = a2;
  EventManager::Raise(v17, (const IEvent *)v33);
  v33[0] = off_95B458;
LABEL_15:
  if ( *(float *)(v7 + 440) >= (float)((float)((float)(*(float *)(v7 + 452) + *(float *)(v7 + 448)) + 1.0) * 0.5) )
  {
    if ( *(_BYTE *)(v7 + 456) )
      goto LABEL_17;
    v14 = 1;
    v15 = (EventManager *)dword_99F740;
  }
  else
  {
    if ( !*(_BYTE *)(v7 + 456) )
      goto LABEL_17;
    v14 = 0;
    v15 = (EventManager *)dword_99F740;
  }
  v32[1] = 7;
  v32[3] = v14;
  v32[0] = off_95B470;
  v32[2] = 13;
  v32[5] = 1065353216;
  v32[4] = a2;
  EventManager::Raise(v15, (const IEvent *)v32);
  v32[0] = off_95B458;
LABEL_17:
  if ( *(float *)(v7 + 24) >= (float)((float)((float)(*(float *)(v7 + 36) + *(float *)(v7 + 32)) + 1.0) * 0.5) )
  {
    if ( *(_BYTE *)(v7 + 40) )
      goto LABEL_19;
    v12 = 1;
    v13 = (EventManager *)dword_99F740;
  }
  else
  {
    if ( !*(_BYTE *)(v7 + 40) )
      goto LABEL_19;
    v12 = 0;
    v13 = (EventManager *)dword_99F740;
  }
  v31[1] = 7;
  v31[3] = v12;
  v31[0] = off_95B470;
  v31[2] = 0;
  v31[5] = 1065353216;
  v31[4] = a2;
  EventManager::Raise(v13, (const IEvent *)v31);
  v31[0] = off_95B458;
LABEL_19:
  result = *(float *)(v7 + 56) >= (float)((float)((float)(*(float *)(v7 + 68) + *(float *)(v7 + 64)) + 1.0) * 0.5);
  if ( *(float *)(v7 + 56) >= (float)((float)((float)(*(float *)(v7 + 68) + *(float *)(v7 + 64)) + 1.0) * 0.5) )
  {
    if ( *(_BYTE *)(v7 + 72) )
      return result;
    v10 = 1;
    v11 = (EventManager *)dword_99F740;
  }
  else
  {
    if ( !*(_BYTE *)(v7 + 72) )
      return result;
    v10 = 0;
    v11 = (EventManager *)dword_99F740;
  }
  v30[1] = 7;
  v30[3] = v10;
  v30[0] = off_95B470;
  v30[2] = 1;
  v30[5] = 1065353216;
  v30[4] = a2;
  EventManager::Raise(v11, (const IEvent *)v30);
  v30[0] = off_95B458;
  return CNetPlayerInfo::SetState((CNetPlayerInfo *)PlayerByInternalID, 0);
}


// ===== 36fc4c NetStructMemberType<std::string>::SetValue(std::string const&) =====
int __fastcall NetStructMemberType<std::string>::SetValue(NetStructMember *this, const char **a2)
{
  int v3; // r2
  const void *v4; // r0
  const char *v5; // r7
  const char *v6; // r6
  size_t v7; // r2
  int result; // r0

  v3 = *((_DWORD *)this + 12);
  v4 = *((const void **)this + 13);
  v5 = a2[4];
  v6 = a2[5];
  v7 = v3 - (_DWORD)v4;
  if ( v7 != v5 - v6 || (result = memcmp(v4, a2[5], v7)) != 0 )
  {
    if ( a2 != (const char **)((char *)this + 32) )
      std::string::_M_assign((std::string *const)((char *)this + 32), v6, v5);
    return NetStructMember::SetChanged(this);
  }
  return result;
}


// ===== 36fcb0 PlayerInfo::SetCharacterNumPotions(int) =====
int __fastcall PlayerInfo::SetCharacterNumPotions(PlayerInfo *this, int a2)
{
  int v3; // r3
  _DWORD v5[7]; // [sp+0h] [bp-2Ch] BYREF
  char v6; // [sp+1Ch] [bp-10h]
  int v7[3]; // [sp+20h] [bp-Ch] BYREF

  v5[2] = 0;
  v5[3] = 0;
  v5[1] = 16;
  v5[5] = -1;
  v6 = 0;
  v5[0] = &off_963618;
  v5[4] = -1;
  v5[6] = 0;
  if ( a2 != v7[0] )
  {
    v7[0] = a2;
    NetStructMember::SetChanged((NetStructMember *)v5);
  }
  v3 = *((_DWORD *)this + 206);
  v5[0] = &off_963730;
  return (*(int (__fastcall **)(char *, int *))(v3 + 28))((char *)this + 824, v7);
}


// ===== 36fd58 PlayerInfo::SetCharacterXP(int) =====
int __fastcall PlayerInfo::SetCharacterXP(PlayerInfo *this, int a2)
{
  int v3; // r3
  _DWORD v5[7]; // [sp+0h] [bp-2Ch] BYREF
  char v6; // [sp+1Ch] [bp-10h]
  int v7[3]; // [sp+20h] [bp-Ch] BYREF

  v5[2] = 0;
  v5[3] = 0;
  v5[1] = 32;
  v5[5] = -1;
  v6 = 0;
  v5[0] = &off_963618;
  v5[4] = -1;
  v5[6] = 0;
  if ( a2 != v7[0] )
  {
    v7[0] = a2;
    NetStructMember::SetChanged((NetStructMember *)v5);
  }
  v3 = *((_DWORD *)this + 266);
  v5[0] = &off_9635E8;
  return (*(int (__fastcall **)(char *, int *))(v3 + 28))((char *)this + 1064, v7);
}


// ===== 36fe04 PlayerInfo::SetCharacterGold(int) =====
int __fastcall PlayerInfo::SetCharacterGold(PlayerInfo *this, int a2)
{
  int v3; // r3
  _DWORD v5[7]; // [sp+0h] [bp-2Ch] BYREF
  char v6; // [sp+1Ch] [bp-10h]
  int v7[3]; // [sp+20h] [bp-Ch] BYREF

  v5[2] = 0;
  v5[3] = 0;
  v5[1] = 32;
  v5[5] = -1;
  v6 = 0;
  v5[0] = &off_963618;
  v5[4] = -1;
  v5[6] = 0;
  if ( a2 != v7[0] )
  {
    v7[0] = a2;
    NetStructMember::SetChanged((NetStructMember *)v5);
  }
  v3 = *((_DWORD *)this + 286);
  v5[0] = &off_9635E8;
  return (*(int (__fastcall **)(char *, int *))(v3 + 28))((char *)this + 1144, v7);
}


// ===== 36feb0 NetStructByteArray<36u>::~NetStructByteArray() =====
_DWORD *__fastcall NetStructByteArray<36u>::~NetStructByteArray(_DWORD *a1)
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


// ===== 36fef8 NetStructByteArray<3u>::~NetStructByteArray() =====
_DWORD *__fastcall NetStructByteArray<3u>::~NetStructByteArray(_DWORD *a1)
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


// ===== 36ff40 NetStructByteArray<30u>::~NetStructByteArray() =====
_DWORD *__fastcall NetStructByteArray<30u>::~NetStructByteArray(_DWORD *a1)
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


// ===== 36ff88 NetStructMemberType<ByteArray>::~NetStructMemberType() =====
_DWORD *__fastcall NetStructMemberType<ByteArray>::~NetStructMemberType(_DWORD *a1)
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


// ===== 36ffd0 NetStructByteArray<36u>::SetBuffer(void const*,int) =====
void __fastcall NetStructByteArray<36u>::SetBuffer(int a1, const void *a2, size_t a3)
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


// ===== 370020 PlayerManager::_PackInventory(PlayerInfo &) =====
void __fastcall PlayerManager::_PackInventory(PlayerManager *this, PlayerInfo *a2)
{
  int v3; // r8
  int CurrentLevel; // r0
  ItemInventory *v5; // r8
  int NumEquipmentSlots; // r7
  int v7; // r6
  unsigned int v8; // r4
  ItemInstance *EquippedItem; // r0
  ItemInstance *ItemId; // r9
  ItemInstance *v11; // r11
  int v12; // r0
  unsigned int v13; // r9
  int v14; // r3
  char *v15; // r4
  int v16; // r6
  unsigned int i; // r5
  ItemInstance *v18; // r0
  _DWORD v19[7]; // [sp+0h] [bp-2Ch] BYREF
  char v20; // [sp+1Ch] [bp-10h]
  int v21[3]; // [sp+20h] [bp-Ch] BYREF

  if ( !*((_BYTE *)a2 + 1644) )
    return;
  v3 = *((_DWORD *)a2 + 408);
  if ( !v3 )
    return;
  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( !CurrentLevel || !*(_BYTE *)(CurrentLevel + 324) )
    return;
  v5 = (ItemInventory *)(v3 + 892);
  NumEquipmentSlots = ItemInventory::GetNumEquipmentSlots(v5);
  if ( NumEquipmentSlots > 0 )
  {
    v8 = 0;
    v7 = 0;
    while ( 1 )
    {
      while ( v8 - 1 > 1 )
      {
        EquippedItem = (ItemInstance *)ItemInventory::GetEquippedItem(v5, v8);
        if ( !EquippedItem )
          goto LABEL_20;
        v7 ^= ItemInstance::GetItemId(EquippedItem);
LABEL_10:
        if ( NumEquipmentSlots == ++v8 )
          goto LABEL_21;
      }
      if ( v8 == 2 )
        goto LABEL_10;
      ItemId = (ItemInstance *)ItemInventory::GetEquippedItem(v5, 1u);
      v11 = (ItemInstance *)ItemInventory::GetEquippedItem(v5, 2u);
      if ( ItemId )
        ItemId = (ItemInstance *)ItemInstance::GetItemId(ItemId);
      if ( v11 )
        v12 = ItemInstance::GetItemId(v11);
      else
        v12 = 0;
      v13 = (unsigned int)ItemId + v12;
      if ( v13 )
      {
        v7 ^= v13;
        goto LABEL_10;
      }
LABEL_20:
      ++v8;
      v7 = ~v7;
      if ( NumEquipmentSlots == v8 )
        goto LABEL_21;
    }
  }
  v7 = 0;
LABEL_21:
  if ( v7 != *((_DWORD *)a2 + 304) )
  {
    v19[1] = 32;
    v19[2] = 0;
    v19[3] = 0;
    v19[5] = -1;
    v20 = 0;
    v19[0] = &off_963618;
    v19[4] = -1;
    v19[6] = 0;
    if ( v7 != v21[0] )
    {
      v21[0] = v7;
      NetStructMember::SetChanged((NetStructMember *)v19);
    }
    v14 = *((_DWORD *)a2 + 296);
    v19[0] = &off_9635E8;
    (*(void (__fastcall **)(char *, int *))(v14 + 28))((char *)a2 + 1184, v21);
    v19[0] = &off_963648;
    v15 = (char *)operator new[](4 * NumEquipmentSlots, 0);
    if ( NumEquipmentSlots > 0 )
    {
      v16 = 0;
      for ( i = 0; i != NumEquipmentSlots; ++i )
      {
        v18 = (ItemInstance *)ItemInventory::GetEquippedItem(v5, i);
        if ( v18 )
          *(_DWORD *)&v15[v16] = ItemInstance::GetItemId(v18);
        else
          *(_DWORD *)&v15[v16] = -1;
        v16 += 4;
      }
    }
    NetStructByteArray<36u>::SetBuffer((int)a2 + 944, v15, 4 * NumEquipmentSlots);
    CustomFree(v15);
  }
}


// ===== 370258 NetStructByteArray<3u>::SetBuffer(void const*,int) =====
void __fastcall NetStructByteArray<3u>::SetBuffer(int a1, const void *a2, size_t a3)
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


// ===== 3702a8 NetStructByteArray<30u>::SetBuffer(void const*,int) =====
void __fastcall NetStructByteArray<30u>::SetBuffer(int a1, const void *a2, size_t a3)
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


// ===== 3702f8 NetStructByteArray<36u>::Read(NetBitStream &) =====
void __fastcall NetStructByteArray<36u>::Read(int a1, NetBitStream *this)
{
  unsigned int U32; // r10
  void (__fastcall *v5)(int, void **); // r8
  void *p[2]; // [sp+0h] [bp-34h] BYREF
  _BYTE v7[36]; // [sp+8h] [bp-2Ch] BYREF

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


// ===== 3703b0 NetStructByteArray<3u>::Read(NetBitStream &) =====
void __fastcall NetStructByteArray<3u>::Read(int a1, NetBitStream *this)
{
  unsigned int U32; // r7
  void (__fastcall *v5)(int, void **); // r6
  void *p[2]; // [sp+4h] [bp-10h] BYREF
  _BYTE v7[8]; // [sp+Ch] [bp-8h] BYREF

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


// ===== 370430 NetStructByteArray<30u>::Read(NetBitStream &) =====
void __fastcall NetStructByteArray<30u>::Read(int a1, NetBitStream *this)
{
  unsigned int U32; // r10
  void (__fastcall *v5)(int, void **); // r8
  void *p[2]; // [sp+4h] [bp-30h] BYREF
  _BYTE v7[32]; // [sp+Ch] [bp-28h] BYREF

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


// ===== 3704e8 NetStructMemberType<ByteArray>::Erase(NetBitStream &) =====
void __fastcall NetStructMemberType<ByteArray>::Erase(_DWORD *a1, NetBitStream *a2)
{
  size_t v3; // r2
  const void *v5; // r1
  void *p; // [sp+0h] [bp-8h] BYREF
  size_t v7; // [sp+4h] [bp-4h]

  v3 = a1[9];
  v5 = (const void *)a1[8];
  v7 = 0;
  p = nullptr;
  ByteArray::SetBuffer((ByteArray *)&p, v5, v3);
  NetStructMember::Load((NetStructMember *)a1, a2);
  if ( a1 + 8 != &p )
    ByteArray::SetBuffer((ByteArray *)(a1 + 8), p, v7);
  if ( p )
    CustomFree(p);
}


// ===== 370550 NetStructByteArray<36u>::NetStructByteArray(ByteArray) =====
int __fastcall NetStructByteArray<36u>::NetStructByteArray(int a1, int a2)
{
  size_t v3; // r2
  const void *v4; // r1
  void *p[3]; // [sp+0h] [bp-Ch] BYREF

  v3 = *(_DWORD *)(a2 + 4);
  v4 = *(const void **)a2;
  p[0] = nullptr;
  p[1] = nullptr;
  ByteArray::SetBuffer((ByteArray *)p, v4, v3);
  *(_DWORD *)(a1 + 4) = 288;
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
  *(_DWORD *)a1 = &off_963820;
  return a1;
}


// ===== 370608 NetStructByteArray<3u>::NetStructByteArray(ByteArray) =====
int __fastcall NetStructByteArray<3u>::NetStructByteArray(int a1, int a2)
{
  size_t v3; // r2
  const void *v4; // r1
  void *p[3]; // [sp+0h] [bp-Ch] BYREF

  v3 = *(_DWORD *)(a2 + 4);
  v4 = *(const void **)a2;
  p[0] = nullptr;
  p[1] = nullptr;
  ByteArray::SetBuffer((ByteArray *)p, v4, v3);
  *(_DWORD *)(a1 + 4) = 24;
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
  *(_DWORD *)a1 = &off_963898;
  return a1;
}


// ===== 3706c0 NetStructByteArray<30u>::NetStructByteArray(ByteArray) =====
int __fastcall NetStructByteArray<30u>::NetStructByteArray(int a1, int a2)
{
  size_t v3; // r2
  const void *v4; // r1
  void *p[3]; // [sp+0h] [bp-Ch] BYREF

  v3 = *(_DWORD *)(a2 + 4);
  v4 = *(const void **)a2;
  p[0] = nullptr;
  p[1] = nullptr;
  ByteArray::SetBuffer((ByteArray *)p, v4, v3);
  *(_DWORD *)(a1 + 4) = 240;
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
  *(_DWORD *)a1 = &off_9638E0;
  return a1;
}


// ===== 370778 NetStructMemberType<ByteArray>::~NetStructMemberType() =====
_DWORD *__fastcall NetStructMemberType<ByteArray>::~NetStructMemberType(_DWORD *p)
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


// ===== 3707dc NetStructByteArray<36u>::~NetStructByteArray() =====
_DWORD *__fastcall NetStructByteArray<36u>::~NetStructByteArray(_DWORD *p)
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


// ===== 370840 NetStructByteArray<30u>::~NetStructByteArray() =====
_DWORD *__fastcall NetStructByteArray<30u>::~NetStructByteArray(_DWORD *p)
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


// ===== 3708a4 NetStructByteArray<3u>::~NetStructByteArray() =====
_DWORD *__fastcall NetStructByteArray<3u>::~NetStructByteArray(_DWORD *p)
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


// ===== 370908 PlayerInfo::SetReadyToRoll(bool) =====
int __fastcall PlayerInfo::SetReadyToRoll(PlayerInfo *this, int a2)
{
  int v3; // r3
  _DWORD v5[7]; // [sp+0h] [bp-24h] BYREF
  char v6; // [sp+1Ch] [bp-8h]
  _BYTE v7[7]; // [sp+1Dh] [bp-7h] BYREF

  v5[2] = 0;
  v5[3] = 0;
  v5[1] = 1;
  v5[5] = -1;
  v6 = 0;
  v5[0] = &off_963700;
  v5[4] = -1;
  v5[6] = 0;
  if ( v7[0] != a2 )
  {
    v7[0] = a2;
    NetStructMember::SetChanged((NetStructMember *)v5);
  }
  v3 = *((_DWORD *)this + 330);
  v5[0] = &off_9636D0;
  return (*(int (__fastcall **)(char *, _BYTE *))(v3 + 28))((char *)this + 1320, v7);
}


// ===== 3709b4 PlayerInfo::UpdateReadyToRoll(void) =====
CMatching *__fastcall PlayerInfo::UpdateReadyToRoll(PlayerInfo *this)
{
  CMatching *result; // r0
  int v3; // r0
  CNetPlayerManager *NetPlayerMgr; // r0
  int v5; // r1
  PlayerInfo *v6; // r0

  result = (CMatching *)GetOnline();
  if ( *((_BYTE *)result + 5) )
  {
    result = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
    if ( *((_BYTE *)result + 36) )
    {
      v3 = CMatching::Get(result);
      result = (CMatching *)(*(int (__fastcall **)(int))(*(_DWORD *)v3 + 100))(v3);
      if ( result )
      {
        NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr();
        result = (CMatching *)CNetPlayerManager::IsInitialized(NetPlayerMgr);
        if ( result )
        {
          result = (CMatching *)(*(int (__fastcall **)(PlayerInfo *))(*(_DWORD *)this + 80))(this);
          if ( result )
          {
            result = (CMatching *)CNetPlayerInfo::IsHost(this);
            if ( !result )
            {
              v5 = *((unsigned __int8 *)this + 1317);
              if ( !*((_BYTE *)this + 1317) )
              {
                v6 = this;
                return (CMatching *)PlayerInfo::SetReadyToRoll(v6, v5);
              }
              if ( *(_BYTE *)(dword_99F76C + 1808) && *(_BYTE *)(dword_99F76C + 1744) && *(_BYTE *)(dword_99F764 + 352) )
              {
                v6 = this;
                v5 = 1;
                return (CMatching *)PlayerInfo::SetReadyToRoll(v6, v5);
              }
            }
          }
        }
      }
    }
  }
  return result;
}


// ===== 370a9c PlayerInfo::SetIngame(bool) =====
int __fastcall PlayerInfo::SetIngame(PlayerInfo *this, int a2)
{
  int v3; // r3
  _DWORD v5[7]; // [sp+0h] [bp-24h] BYREF
  char v6; // [sp+1Ch] [bp-8h]
  _BYTE v7[7]; // [sp+1Dh] [bp-7h] BYREF

  v5[2] = 0;
  v5[3] = 0;
  v5[1] = 1;
  v5[5] = -1;
  v6 = 0;
  v5[0] = &off_963700;
  v5[4] = -1;
  v5[6] = 0;
  if ( v7[0] != a2 )
  {
    v7[0] = a2;
    NetStructMember::SetChanged((NetStructMember *)v5);
  }
  v3 = *((_DWORD *)this + 306);
  v5[0] = &off_9636D0;
  return (*(int (__fastcall **)(char *, _BYTE *))(v3 + 28))((char *)this + 1224, v7);
}


// ===== 370b48 PlayerInfo::SetDoneLoading(bool) =====
int __fastcall PlayerInfo::SetDoneLoading(PlayerInfo *this, int a2)
{
  int v3; // r3
  _DWORD v5[7]; // [sp+0h] [bp-24h] BYREF
  char v6; // [sp+1Ch] [bp-8h]
  _BYTE v7[7]; // [sp+1Dh] [bp-7h] BYREF

  v5[2] = 0;
  v5[3] = 0;
  v5[1] = 1;
  v5[5] = -1;
  v6 = 0;
  v5[0] = &off_963700;
  v5[4] = -1;
  v5[6] = 0;
  if ( v7[0] != a2 )
  {
    v7[0] = a2;
    NetStructMember::SetChanged((NetStructMember *)v5);
  }
  v3 = *((_DWORD *)this + 322);
  v5[0] = &off_9636D0;
  return (*(int (__fastcall **)(char *, _BYTE *))(v3 + 28))((char *)this + 1288, v7);
}


// ===== 370bf4 PlayerInfo::SetCharacterDeathTimer(int) =====
int __fastcall PlayerInfo::SetCharacterDeathTimer(PlayerInfo *this, int a2)
{
  int v3; // r3
  _DWORD v5[7]; // [sp+0h] [bp-2Ch] BYREF
  char v6; // [sp+1Ch] [bp-10h]
  int v7[3]; // [sp+20h] [bp-Ch] BYREF

  v5[2] = 0;
  v5[3] = 0;
  v5[1] = 16;
  v5[5] = -1;
  v6 = 0;
  v5[0] = &off_963618;
  v5[4] = -1;
  v5[6] = 0;
  if ( a2 != v7[0] )
  {
    v7[0] = a2;
    NetStructMember::SetChanged((NetStructMember *)v5);
  }
  v3 = *((_DWORD *)this + 226);
  v5[0] = &off_963730;
  return (*(int (__fastcall **)(char *, int *))(v3 + 28))((char *)this + 904, v7);
}


// ===== 370c9c PlayerManager::ResetCharacterDeathTimer(void) =====
int __fastcall PlayerManager::ResetCharacterDeathTimer(PlayerManager *this)
{
  PlayerInfo *LocalPlayer; // r5
  int Constant; // r1

  LocalPlayer = (PlayerInfo *)PlayerManager::GetLocalPlayer(this, 0, 0);
  Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "CharacterDesign", "MultiplayerDeathTimer");
  return PlayerInfo::SetCharacterDeathTimer(LocalPlayer, Constant);
}


// ===== 370cf8 PlayerInfo::ClearLoadingInfo(void) =====
int __fastcall PlayerInfo::ClearLoadingInfo(PlayerInfo *this)
{
  int result; // r0
  int v3; // r3
  _DWORD v4[7]; // [sp+0h] [bp-24h] BYREF
  char v5; // [sp+1Ch] [bp-8h]
  _BYTE v6[7]; // [sp+1Dh] [bp-7h] BYREF

  result = (*(int (__fastcall **)(PlayerInfo *))(*(_DWORD *)this + 80))(this);
  if ( result )
  {
    PlayerInfo::SetIngame(this, 0);
    v4[2] = 0;
    v4[3] = 0;
    v4[1] = 1;
    v4[5] = -1;
    v4[0] = &off_963700;
    v4[4] = -1;
    v4[6] = 0;
    v5 = 0;
    if ( v6[0] )
    {
      v6[0] = 0;
      NetStructMember::SetChanged((NetStructMember *)v4);
    }
    v3 = *((_DWORD *)this + 314);
    v4[0] = &off_9636D0;
    (*(void (__fastcall **)(char *, _BYTE *))(v3 + 28))((char *)this + 1256, v6);
    v4[0] = &off_963648;
    PlayerInfo::SetDoneLoading(this, 0);
    PlayerInfo::SetReadyToRoll(this, 0);
    return PlayerInfo::SetCharacterDeathTimer(this, -1);
  }
  return result;
}


// ===== 370e00 PlayerManager::ClearLoadingInfo(void) =====
int __fastcall PlayerManager::ClearLoadingInfo(PlayerManager *this)
{
  PlayerInfo *LocalPlayer; // r0
  int result; // r0

  GetOnline();
  *((_DWORD *)this + 435) = -1;
  *((_BYTE *)this + 1744) = 0;
  *((_BYTE *)this + 1739) = 0;
  *((_BYTE *)this + 1808) = 0;
  *((_BYTE *)this + 1818) = 0;
  LocalPlayer = (PlayerInfo *)PlayerManager::GetLocalPlayer(this, 0, 0);
  result = PlayerInfo::ClearLoadingInfo(LocalPlayer);
  *((_DWORD *)this + 453) = 0;
  *((_BYTE *)this + 1809) = 0;
  return result;
}


// ===== 370e48 PlayerInfo::SetCharacterLevel(int) =====
int __fastcall PlayerInfo::SetCharacterLevel(PlayerInfo *this, int a2)
{
  int v3; // r3
  _DWORD v5[7]; // [sp+0h] [bp-2Ch] BYREF
  char v6; // [sp+1Ch] [bp-10h]
  int v7[3]; // [sp+20h] [bp-Ch] BYREF

  v5[2] = 0;
  v5[3] = 0;
  v5[1] = 16;
  v5[5] = -1;
  v6 = 0;
  v5[0] = &off_963618;
  v5[4] = -1;
  v5[6] = 0;
  if ( a2 != v7[0] )
  {
    v7[0] = a2;
    NetStructMember::SetChanged((NetStructMember *)v5);
  }
  v3 = *((_DWORD *)this + 196);
  v5[0] = &off_963730;
  return (*(int (__fastcall **)(char *, int *))(v3 + 28))((char *)this + 784, v7);
}


// ===== 370ef0 PlayerInfo::SetCharacterClass(int) =====
int __fastcall PlayerInfo::SetCharacterClass(PlayerInfo *this, int a2)
{
  int v3; // r3
  _DWORD v5[7]; // [sp+0h] [bp-2Ch] BYREF
  char v6; // [sp+1Ch] [bp-10h]
  int v7[3]; // [sp+20h] [bp-Ch] BYREF

  v5[2] = 0;
  v5[3] = 0;
  v5[1] = 16;
  v5[5] = -1;
  v6 = 0;
  v5[0] = &off_963618;
  v5[4] = -1;
  v5[6] = 0;
  if ( a2 != v7[0] )
  {
    v7[0] = a2;
    NetStructMember::SetChanged((NetStructMember *)v5);
  }
  v3 = *((_DWORD *)this + 216);
  v5[0] = &off_963730;
  return (*(int (__fastcall **)(char *, int *))(v3 + 28))((char *)this + 864, v7);
}


// ===== 370f98 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::_M_erase(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x28u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 370fd0 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_erase(
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
      while ( 1 )
      {
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_erase(
          a1,
          *(_DWORD *)(v2 + 12));
        v4 = *(_DWORD *)(v2 + 8);
        if ( *(_DWORD *)(v2 + 36) )
          break;
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)v2, 0x2Cu);
        v2 = v4;
        if ( !v4 )
          return;
      }
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::_M_erase(
        v2 + 20,
        *(_DWORD **)(v2 + 24));
      *(_DWORD *)(v2 + 32) = v2 + 20;
      *(_DWORD *)(v2 + 28) = v2 + 20;
      *(_DWORD *)(v2 + 24) = 0;
      *(_DWORD *)(v2 + 36) = 0;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)v2, 0x2Cu);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 371050 PlayerManager::_AttachLightToPlayerCharacter(int) =====
void __fastcall PlayerManager::_AttachLightToPlayerCharacter(PlayerManager *this, int a2)
{
  int **i; // r4
  _DWORD *v3; // r0
  _DWORD *v4; // r4
  _DWORD v5[3]; // [sp+0h] [bp-Ch] BYREF

  v5[0] = v5;
  v5[1] = v5;
  ObjectManager::GetLightBaseList((_DWORD *)dword_99F764, (int)v5);
  for ( i = (int **)v5[0]; i != v5; i = (int **)*i )
    (*(void (__fastcall **)(int *))(*i[2] + 88))(i[2]);
  v3 = (_DWORD *)v5[0];
  if ( (_DWORD *)v5[0] != v5 )
  {
    while ( 1 )
    {
      v4 = (_DWORD *)*v3;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, 0xCu);
      if ( v4 == v5 )
        break;
      v3 = v4;
    }
  }
}


// ===== 3710e0 std::vector<int,std::allocator<int>>::_M_allocate_and_copy<int const*>(uint &,int const*,int const*) =====
void *__fastcall std::vector<int>::_M_allocate_and_copy<int const*>(int a1, unsigned int *a2, _BYTE *a3, _BYTE *a4)
{
  void *v6; // r0
  void *v7; // r6

  v6 = std::allocator<int>::_M_allocate(a1 + 8, *a2, a2);
  v7 = v6;
  if ( a3 != a4 )
    memcpy(v6, a3, a4 - a3);
  return v7;
}


// ===== 37111c NetStructMemberType<std::string>::~NetStructMemberType() =====
int __fastcall NetStructMemberType<std::string>::~NetStructMemberType(int a1)
{
  *(_DWORD *)a1 = &off_963790;
  std::string::~string((std::string *)(a1 + 32));
  return a1;
}


// ===== 371150 NetStructString<32u>::~NetStructString() =====
int __fastcall NetStructString<32u>::~NetStructString(int a1)
{
  *(_DWORD *)a1 = &off_963790;
  std::string::~string((std::string *)(a1 + 32));
  return a1;
}


// ===== 371184 NetStructString<32u>::Read(NetBitStream &) =====
void __fastcall NetStructString<32u>::Read(int a1)
{
  std::string v2; // [sp+4h] [bp-1Ch] BYREF

  NetBitStream::ReadString((NetBitStream *)&v2);
  (*(void (__fastcall **)(int, std::string *))(*(_DWORD *)a1 + 28))(a1, &v2);
  std::string::~string(&v2);
}


// ===== 3711f4 NetStructMemberType<std::string>::~NetStructMemberType() =====
char *__fastcall NetStructMemberType<std::string>::~NetStructMemberType(char *a1)
{
  *(_DWORD *)a1 = &off_963790;
  std::string::~string((std::string *)(a1 + 32));
  *(_DWORD *)a1 = &off_963648;
  CustomFree(a1);
  return a1;
}


// ===== 371244 NetStructString<32u>::~NetStructString() =====
char *__fastcall NetStructString<32u>::~NetStructString(char *a1)
{
  *(_DWORD *)a1 = &off_963790;
  std::string::~string((std::string *)(a1 + 32));
  *(_DWORD *)a1 = &off_963648;
  CustomFree(a1);
  return a1;
}


// ===== 371294 PlayerInfo::~PlayerInfo() =====
void __fastcall PlayerInfo::~PlayerInfo(std::string *this)
{
  int v1; // r2
  PlayerInfo *v3; // r4
  int v4; // t1
  void *v5; // r0
  void *v6; // r0
  void *v7; // r0

  v1 = *((_DWORD *)this + 416);
  this->_M_buffers._M_end_of_storage = (char *)off_963938;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *((_DWORD *)this + 416) = 0;
  }
  *((_DWORD *)this + 416) = 0;
  v3 = (PlayerInfo *)(this + 68);
  do
  {
    v4 = *((_DWORD *)v3 - 10);
    v3 = (PlayerInfo *)((char *)v3 - 40);
    (*(void (__fastcall **)(PlayerInfo *))(v4 + 20))(v3);
  }
  while ( v3 != (PlayerInfo *)((char *)this + 1352) );
  *((_DWORD *)this + 266) = &off_963648;
  *((_DWORD *)this + 256) = &off_963868;
  *((_DWORD *)this + 330) = &off_963648;
  *((_DWORD *)this + 322) = &off_963648;
  *((_DWORD *)this + 314) = &off_963648;
  *((_DWORD *)this + 306) = &off_963648;
  *((_DWORD *)this + 296) = &off_963648;
  *((_DWORD *)this + 286) = &off_963648;
  *((_DWORD *)this + 276) = &off_963648;
  v5 = *((void **)this + 264);
  if ( v5 )
  {
    CustomFree(v5);
    *((_DWORD *)this + 264) = 0;
  }
  *((_DWORD *)this + 256) = &off_963648;
  *((_DWORD *)this + 246) = &off_963868;
  v6 = *((void **)this + 254);
  if ( v6 )
  {
    CustomFree(v6);
    *((_DWORD *)this + 254) = 0;
  }
  *((_DWORD *)this + 246) = &off_963648;
  *((_DWORD *)this + 236) = &off_963868;
  v7 = *((void **)this + 244);
  if ( v7 )
  {
    CustomFree(v7);
    *((_DWORD *)this + 244) = 0;
  }
  *((_DWORD *)this + 236) = &off_963648;
  *((_DWORD *)this + 172) = &off_963790;
  *((_DWORD *)this + 226) = &off_963648;
  *((_DWORD *)this + 216) = &off_963648;
  *((_DWORD *)this + 206) = &off_963648;
  *((_DWORD *)this + 196) = &off_963648;
  *((_DWORD *)this + 186) = &off_963648;
  std::string::~string(this + 30);
  *((_DWORD *)this + 162) = &off_963648;
  *((_DWORD *)this + 172) = &off_963648;
  CNetPlayerInfo::~CNetPlayerInfo((CNetPlayerInfo *)this);
}


// ===== 371428 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::erase(std::priv::_Rb_tree_iterator<std::pair<int const,PlayerInfo>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>>) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::erase(
        int a1,
        unsigned __int8 **a2)
{
  std::string *v3; // r5

  v3 = (std::string *)std::priv::_Rb_global<bool>::_Rebalance_for_erase(
                        *a2,
                        (unsigned __int8 **)(a1 + 4),
                        (unsigned __int8 **)(a1 + 8),
                        (unsigned __int8 **)(a1 + 12));
  PlayerInfo::~PlayerInfo(v3 + 1);
  if ( v3 )
    CustomFree(v3);
  --*(_DWORD *)(a1 + 16);
}


// ===== 371470 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::_M_erase(
        int a1,
        int a2)
{
  int v2; // r4
  int v4; // r6

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(_DWORD *)(v2 + 8);
      PlayerInfo::~PlayerInfo((std::string *)(v2 + 24));
      CustomFree((void *)v2);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 3714ac PlayerManager::~PlayerManager() =====
void __fastcall PlayerManager::~PlayerManager(PlayerManager *this)
{
  void *v2; // r0
  size_t v3; // r1
  void *v4; // r0
  size_t v5; // r1

  *(_DWORD *)this = off_963928;
  StreamBuffer::~StreamBuffer((void **)this + 440);
  v2 = *((void **)this + 429);
  if ( v2 )
  {
    v3 = (*((_DWORD *)this + 431) - (_DWORD)v2) & 0xFFFFFFFC;
    if ( v3 > 0x80 )
      CustomFree(v2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
  }
  v4 = *((void **)this + 426);
  if ( v4 )
  {
    v5 = (*((_DWORD *)this + 428) - (_DWORD)v4) & 0xFFFFFFFC;
    if ( v5 > 0x80 )
      CustomFree(v4);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
  }
  if ( *((_DWORD *)this + 424) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::_M_erase(
      (int)this + 1680,
      *((_DWORD *)this + 421));
    *((_DWORD *)this + 423) = (char *)this + 1680;
    *((_DWORD *)this + 424) = 0;
    *((_DWORD *)this + 422) = (char *)this + 1680;
    *((_DWORD *)this + 421) = 0;
  }
  PlayerInfo::~PlayerInfo((std::string *)((char *)this + 8));
}


// ===== 371580 PlayerManager::~PlayerManager() =====
void __fastcall PlayerManager::~PlayerManager(PlayerManager *this)
{
  PlayerManager::~PlayerManager(this);
  CustomFree(this);
}


// ===== 37159c PlayerManager::~PlayerManager() =====
void __fastcall PlayerManager::~PlayerManager(PlayerManager *this)
{
  void *v2; // r0
  size_t v3; // r1
  void *v4; // r0
  size_t v5; // r1

  *(_DWORD *)this = off_963928;
  StreamBuffer::~StreamBuffer((void **)this + 440);
  v2 = *((void **)this + 429);
  if ( v2 )
  {
    v3 = (*((_DWORD *)this + 431) - (_DWORD)v2) & 0xFFFFFFFC;
    if ( v3 > 0x80 )
      CustomFree(v2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
  }
  v4 = *((void **)this + 426);
  if ( v4 )
  {
    v5 = (*((_DWORD *)this + 428) - (_DWORD)v4) & 0xFFFFFFFC;
    if ( v5 > 0x80 )
      CustomFree(v4);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
  }
  if ( *((_DWORD *)this + 424) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::_M_erase(
      (int)this + 1680,
      *((_DWORD *)this + 421));
    *((_DWORD *)this + 423) = (char *)this + 1680;
    *((_DWORD *)this + 424) = 0;
    *((_DWORD *)this + 422) = (char *)this + 1680;
    *((_DWORD *)this + 421) = 0;
  }
  PlayerInfo::~PlayerInfo((std::string *)((char *)this + 8));
}


// ===== 371670 PlayerInfo::~PlayerInfo() =====
void __fastcall PlayerInfo::~PlayerInfo(std::string *this)
{
  PlayerInfo::~PlayerInfo(this);
  CustomFree(this);
}


// ===== 37168c PlayerInfo::~PlayerInfo() =====
void __fastcall PlayerInfo::~PlayerInfo(std::string *this)
{
  int v1; // r2
  PlayerInfo *v3; // r4
  int v4; // t1
  void *v5; // r0
  void *v6; // r0
  void *v7; // r0

  v1 = *((_DWORD *)this + 416);
  this->_M_buffers._M_end_of_storage = (char *)off_963938;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *((_DWORD *)this + 416) = 0;
  }
  *((_DWORD *)this + 416) = 0;
  v3 = (PlayerInfo *)(this + 68);
  do
  {
    v4 = *((_DWORD *)v3 - 10);
    v3 = (PlayerInfo *)((char *)v3 - 40);
    (*(void (__fastcall **)(PlayerInfo *))(v4 + 20))(v3);
  }
  while ( v3 != (PlayerInfo *)((char *)this + 1352) );
  *((_DWORD *)this + 266) = &off_963648;
  *((_DWORD *)this + 256) = &off_963868;
  *((_DWORD *)this + 330) = &off_963648;
  *((_DWORD *)this + 322) = &off_963648;
  *((_DWORD *)this + 314) = &off_963648;
  *((_DWORD *)this + 306) = &off_963648;
  *((_DWORD *)this + 296) = &off_963648;
  *((_DWORD *)this + 286) = &off_963648;
  *((_DWORD *)this + 276) = &off_963648;
  v5 = *((void **)this + 264);
  if ( v5 )
  {
    CustomFree(v5);
    *((_DWORD *)this + 264) = 0;
  }
  *((_DWORD *)this + 256) = &off_963648;
  *((_DWORD *)this + 246) = &off_963868;
  v6 = *((void **)this + 254);
  if ( v6 )
  {
    CustomFree(v6);
    *((_DWORD *)this + 254) = 0;
  }
  *((_DWORD *)this + 246) = &off_963648;
  *((_DWORD *)this + 236) = &off_963868;
  v7 = *((void **)this + 244);
  if ( v7 )
  {
    CustomFree(v7);
    *((_DWORD *)this + 244) = 0;
  }
  *((_DWORD *)this + 236) = &off_963648;
  *((_DWORD *)this + 172) = &off_963790;
  *((_DWORD *)this + 226) = &off_963648;
  *((_DWORD *)this + 216) = &off_963648;
  *((_DWORD *)this + 206) = &off_963648;
  *((_DWORD *)this + 196) = &off_963648;
  *((_DWORD *)this + 186) = &off_963648;
  std::string::~string(this + 30);
  *((_DWORD *)this + 162) = &off_963648;
  *((_DWORD *)this + 172) = &off_963648;
  CNetPlayerInfo::~CNetPlayerInfo((CNetPlayerInfo *)this);
}


// ===== 371820 std::vector<int,std::allocator<int>>::operator=(std::vector<int,std::allocator<int>> const&) =====
_DWORD *__fastcall std::vector<int>::operator=(_DWORD *a1, _DWORD *a2)
{
  _BYTE *v4; // r2
  _BYTE *v5; // r3
  _BYTE *v6; // r7
  signed int v7; // r12
  unsigned int v8; // r5
  _BYTE *v9; // r0
  unsigned int v10; // r1
  _BYTE *v11; // r1
  _BYTE *v13; // r0
  size_t v14; // r1
  unsigned int v15; // r3
  int v16; // [sp+4h] [bp-8h] BYREF

  if ( a2 != a1 )
  {
    v4 = (_BYTE *)*a2;
    v5 = (_BYTE *)a2[1];
    v6 = (_BYTE *)*a1;
    v7 = (signed int)&v5[-*a2];
    v8 = v7 >> 2;
    if ( v7 >> 2 > (unsigned int)((a1[2] - *a1) >> 2) )
    {
      v16 = (int)&v5[-*a2] >> 2;
      v6 = std::vector<int>::_M_allocate_and_copy<int const*>((int)a1, (unsigned int *)&v16, v4, v5);
      v13 = (_BYTE *)*a1;
      if ( *a1 )
      {
        v14 = (a1[2] - (_DWORD)v13) & 0xFFFFFFFC;
        if ( v14 > 0x80 )
          CustomFree(v13);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v13, v14);
      }
      v15 = v16;
      *a1 = v6;
      a1[2] = &v6[4 * v15];
    }
    else
    {
      v9 = (_BYTE *)a1[1];
      v10 = (v9 - v6) >> 2;
      if ( v8 <= v10 )
      {
        if ( v7 )
        {
          memmove(v6, v4, v7);
          v6 = (_BYTE *)*a1;
        }
      }
      else
      {
        v11 = &v4[4 * v10];
        if ( v11 != v4 )
        {
          memmove(v6, v4, v11 - v4);
          v9 = (_BYTE *)a1[1];
          v6 = (_BYTE *)*a1;
          v5 = (_BYTE *)a2[1];
          v11 = (_BYTE *)(*a2 + ((unsigned int)&v9[-*a1] & 0xFFFFFFFC));
        }
        if ( v11 != v5 )
        {
          memcpy(v9, v11, v5 - v11);
          v6 = (_BYTE *)*a1;
        }
      }
    }
    a1[1] = &v6[4 * v8];
  }
  return a1;
}


// ===== 37193c PlayerManager::_CheckOnlineTransition(void) =====
int __fastcall PlayerManager::_CheckOnlineTransition(PlayerManager *this)
{
  int v1; // r6
  int Online; // r0
  int v4; // r0
  int v6; // r0
  CMatching *Instance; // r0
  int v8; // r0
  CNetPlayerManager *NetPlayerMgr; // r0
  CConnectionManager *ConnectionMgr; // r0
  CMatching *v11; // r0
  int v12; // r0
  CNetPlayerManager *v13; // r0
  CNetPlayerManager *v14; // r0
  int PlayerIdList; // r0
  CNetPlayerManager *v16; // r0
  int LocalPlayerIdList; // r1

  v1 = *((unsigned __int8 *)this + 1738);
  if ( !*((_BYTE *)this + 1738)
    && (v6 = GetOnline(), *(_BYTE *)(v6 + 5))
    && (Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance(v6), *((_BYTE *)Instance + 36))
    && (v8 = CMatching::Get(Instance), (*(int (__fastcall **)(int))(*(_DWORD *)v8 + 100))(v8))
    && (NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr(), CNetPlayerManager::IsInitialized(NetPlayerMgr))
    && *((_DWORD *)this + 424) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::_M_erase(
      (char *)this + 1680,
      *((_DWORD *)this + 421));
    *((_DWORD *)this + 423) = (char *)this + 1680;
    *((_DWORD *)this + 424) = v1;
    *((_DWORD *)this + 422) = (char *)this + 1680;
    *((_DWORD *)this + 421) = v1;
    Online = GetOnline();
    if ( !*(_BYTE *)(Online + 5) )
      goto LABEL_3;
  }
  else
  {
    Online = GetOnline();
    if ( !*(_BYTE *)(Online + 5) )
      goto LABEL_3;
  }
  if ( (unsigned int)(*(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance(Online) + 52) - 3) <= 1 )
  {
    if ( Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) )
    {
      ConnectionMgr = (CConnectionManager *)GetConnectionMgr();
      if ( !CConnectionManager::GetConnectionCount(ConnectionMgr, 1) )
        Application::GoToMainMenu((int)&Singleton<Application>::s_inst, 3);
    }
  }
LABEL_3:
  v4 = GetOnline();
  if ( *(_BYTE *)(v4 + 5)
    && (v11 = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance(v4), *((_BYTE *)v11 + 36))
    && (v12 = CMatching::Get(v11), (*(int (__fastcall **)(int))(*(_DWORD *)v12 + 100))(v12))
    && (v13 = (CNetPlayerManager *)GetNetPlayerMgr(), CNetPlayerManager::IsInitialized(v13)) )
  {
    *((_BYTE *)this + 1738) = 1;
    v14 = (CNetPlayerManager *)GetNetPlayerMgr();
    PlayerIdList = CNetPlayerManager::GetPlayerIdList(v14);
    std::vector<int>::operator=((char *)this + 1704, PlayerIdList);
    v16 = (CNetPlayerManager *)GetNetPlayerMgr();
    LocalPlayerIdList = CNetPlayerManager::GetLocalPlayerIdList(v16);
    return std::vector<int>::operator=((char *)this + 1716, LocalPlayerIdList);
  }
  else
  {
    *((_BYTE *)this + 1817) = 0;
    *((_BYTE *)this + 1738) = 0;
    PlayerManager::ClearLoadingInfo(this);
    return PlayerManager::ClearQuestSyncBuffer(this);
  }
}


// ===== 371ae8 NetStructMemberType<std::string>::Erase(NetBitStream &) =====
void __fastcall NetStructMemberType<std::string>::Erase(int a1, NetBitStream *a2)
{
  std::string *v2; // r7
  std::string v5; // [sp+4h] [bp-20h] BYREF

  v2 = (std::string *)(a1 + 32);
  std::string::string(&v5, (const std::string *)(a1 + 32));
  NetStructMember::Load((NetStructMember *)a1, a2);
  if ( v2 != &v5 )
    std::string::_M_assign(v2, v5._M_start_of_storage._M_data, v5._M_finish);
  std::string::~string(&v5);
}


// ===== 371b78 NetStructString<32u>::Write(NetBitStream &) =====
void __fastcall NetStructString<32u>::Write(int a1, NetBitStream *a2)
{
  unsigned int v3; // [sp+Ch] [bp-14h]
  std::string v4; // 0:r1.12,12:^0.12 BYREF

  std::string::string((std::string *)&v4._M_finish, (const std::string *)(a1 + 32));
  *(_DWORD *)&v4._M_buffers._M_static_buf[4] = 32;
  v4._M_buffers._M_end_of_storage = (char *)&v4._M_finish;
  NetBitStream::WriteString(a2, v4, v3);
  std::string::~string((std::string *)&v4._M_finish);
}


// ===== 371bec NetStructString<32u>::NetStructString(std::string) =====
int __fastcall NetStructString<32u>::NetStructString(int a1, const std::string *a2)
{
  std::string v4; // [sp+4h] [bp-1Ch] BYREF

  std::string::string(&v4, a2);
  *(_DWORD *)(a1 + 4) = 256;
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
  NetStructMemberType<std::string>::SetValue((NetStructMember *)a1, (const char **)&v4._M_buffers._M_end_of_storage);
  std::string::~string(&v4);
  *(_DWORD *)a1 = off_963760;
  return a1;
}


// ===== 371ccc PlayerInfo::SetCharacterName(std::string) =====
void __fastcall PlayerInfo::SetCharacterName(PlayerInfo *this, std::string a2)
{
  int (**v3)(); // [sp+0h] [bp-20h] BYREF
  std::string v4; // [sp+20h] [bp+0h] BYREF
  std::string v5; // [sp+3Ch] [bp+1Ch] BYREF

  std::string::string(&v5, (const std::string *)a2._M_buffers._M_end_of_storage);
  NetStructString<32u>::NetStructString(&v3, &v5);
  (*(void (__fastcall **)(char *, std::string *))(*((_DWORD *)this + 172) + 28))((char *)this + 688, &v4);
  v3 = &off_963790;
  std::string::~string(&v4);
  v3 = (int (**)())&off_963648;
  std::string::~string(&v5);
}


// ===== 371d80 PlayerManager::RemoveCharacter(Character *) =====
PlayerManager *__fastcall PlayerManager::RemoveCharacter(PlayerManager *this, Character *a2)
{
  PlayerManager *v3; // r8
  _DWORD *v4; // r10
  PlayerInfo *PlayerByCharacter; // r0
  int v6; // r2
  PlayerInfo *v7; // r7
  _BOOL4 v8; // r11
  MenuManager *CurrentLevel; // r0
  Level *v10; // r5
  GameObject *v11; // r10
  int *v12; // r0
  MenuManager *Instance; // r0
  MenuManager *v14; // r0
  RenderFX *HUDRoot; // r0
  int v16; // [sp+Ch] [bp-258h]
  __int64 v17; // [sp+10h] [bp-254h]
  int v18; // [sp+18h] [bp-24Ch]
  int v19; // [sp+1Ch] [bp-248h]
  int v20; // [sp+20h] [bp-244h]
  char v21; // [sp+24h] [bp-240h]
  int v22[3]; // [sp+28h] [bp-23Ch] BYREF
  float v23[3]; // [sp+34h] [bp-230h] BYREF
  char s[512]; // [sp+44h] [bp-220h] BYREF
  std::string v25; // [sp+244h] [bp-20h] BYREF
  std::string v26; // 0:r1.12,12:^0.12 BYREF

  v3 = this;
  if ( a2 )
  {
    v4 = (_DWORD *)*((unsigned __int8 *)a2 + 129);
    if ( !*((_BYTE *)a2 + 129) )
    {
      PlayerByCharacter = (PlayerInfo *)PlayerManager::GetPlayerByCharacter(this, a2, 1);
      v6 = *((_DWORD *)v3 + 433);
      v7 = PlayerByCharacter;
      v8 = *((_DWORD *)PlayerByCharacter + 412) == -1;
      if ( v6 <= 0 )
      {
        if ( gAssertLevel == 2 )
        {
          *v4 = v4;
        }
        else if ( gAssertLevel == 1 )
        {
          fprintf(
            (FILE *)&_sF + 2,
            "ASSERT(%s) FAILED: %s:%d\n",
            "m_numCreatedCharacters > 0",
            "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\PlayerManager\\PlayerManager.cpp",
            1247);
          v6 = *((_DWORD *)v3 + 433);
        }
      }
      *((_DWORD *)v3 + 433) = v6 - 1;
      memset(v23, 0, sizeof(v23));
      GameObject::SetPosition(a2, v23, 1);
      (*(void (__fastcall **)(Character *))(*(_DWORD *)a2 + 72))(a2);
      (*(void (__fastcall **)(Character *, _DWORD))(*(_DWORD *)a2 + 64))(a2, 0);
      Character::InitCam(a2);
      Character::RemoveMultiplayerHighlight(a2);
      *((_DWORD *)a2 + 1321) = 0;
      CharAI::AI_SetTarget((Character *)((char *)a2 + 968), nullptr, 0);
      CharAI::AI_SyncLastTarget((Character *)((char *)a2 + 968));
      CharAI::AI_ClearAllAggro((Character *)((char *)a2 + 968));
      CharAI::AI_ClearAllAggroTowardMe((Character *)((char *)a2 + 968), 0);
      ObjectBase::Delete((int)a2);
      sprintf(s, "%s_Deleted_%d", *((const char **)a2 + 17), PlayerManager::s_deletedPlayerCharacterCounter);
      ++PlayerManager::s_deletedPlayerCharacterCounter;
      ObjectBase::SetName(a2, s);
      CurrentLevel = (MenuManager *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
      v10 = CurrentLevel;
      if ( CurrentLevel )
      {
        if ( !v8 )
        {
          if ( *((_BYTE *)v7 + 1644) )
          {
            if ( *((int *)v3 + 433) > 0 )
            {
              v11 = *(GameObject **)(PlayerManager::GetLocalPlayer(v3, 0, 1) + 1632);
              if ( v11 || (v11 = *(GameObject **)(PlayerManager::GetPlayer(v3, 0, 0) + 1632)) != nullptr )
              {
                v12 = *((int **)v10 + 74);
                if ( v12 )
                {
                  CameraTarget::SetTarget(v12, v11, 0);
                  (*(void (__fastcall **)(_DWORD))(**((_DWORD **)v10 + 74) + 16))(*((_DWORD *)v10 + 74));
                }
                if ( *((_DWORD *)v3 + 433) == 1 )
                  Character::InitCam(v11);
              }
            }
            Level::UpdateLightSet(v10, 1, 4);
          }
          goto LABEL_14;
        }
      }
      else if ( !v8 )
      {
LABEL_14:
        if ( !*((_BYTE *)v3 + 1737) )
          *((_DWORD *)v7 + 408) = *((unsigned __int8 *)v3 + 1737);
        *((_DWORD *)v7 + 417) = 0;
        v17 = 0;
        v16 = 32;
        v19 = -1;
        v26._M_start_of_storage._M_data = (char *)&off_963618;
        v18 = -1;
        v20 = 0;
        v21 = 0;
        if ( v22[0] )
        {
          v22[0] = 0;
          NetStructMember::SetChanged((NetStructMember *)&v26._M_start_of_storage);
        }
        v26._M_start_of_storage._M_data = (char *)&off_9635E8;
        (*(void (__fastcall **)(int, int *))(*((_DWORD *)v7 + 296) + 28))((int)v7 + 1184, v22);
        v26._M_start_of_storage._M_data = (char *)&off_963648;
        CurrentLevel = (MenuManager *)(*(int (__fastcall **)(PlayerInfo *))(*(_DWORD *)v7 + 80))(v7);
        if ( CurrentLevel )
        {
          PlayerInfo::SetCharacterClass(v7, -1);
          std::string::string((int)&v25, "");
          v26._M_buffers._M_end_of_storage = (char *)&v25;
          PlayerInfo::SetCharacterName(v7, v26);
          std::string::~string(&v25);
          PlayerInfo::SetCharacterLevel(v7, -1);
          NetStructByteArray<36u>::SetBuffer((char *)v7 + 944, 0, 0);
          PlayerInfo::SetCharacterXP(v7, 0);
          PlayerInfo::SetCharacterGold(v7, 0);
          CurrentLevel = (MenuManager *)PlayerInfo::SetIngame(v7, 0);
        }
      }
      Instance = (MenuManager *)MenuManager::GetInstance(CurrentLevel);
      this = (PlayerManager *)MenuManager::GetHUDRoot(Instance);
      if ( this )
      {
        v14 = (MenuManager *)MenuManager::GetInstance(this);
        HUDRoot = (RenderFX *)MenuManager::GetHUDRoot(v14);
        return (PlayerManager *)RenderFX::InvokeASCallback(HUDRoot, "menu_HUD_0", "completeRefresh", nullptr, 0);
      }
    }
  }
  return this;
}


// ===== 3721b8 PlayerManager::RemoveAllCharacters(void) =====
PlayerManager *__fastcall PlayerManager::RemoveAllCharacters(PlayerManager *this)
{
  int v2; // r4
  bool v3; // cc
  int v4; // r1
  PlayerManager *result; // r0
  Character *v6; // r1

  v2 = 0;
  while ( 1 )
  {
    v3 = v2 < PlayerManager::GetNumPlayers(this);
    v4 = v2;
    result = this;
    if ( !v3 )
      break;
    while ( 1 )
    {
      v6 = *(Character **)(PlayerManager::GetPlayer(result, v4, 0) + 1632);
      ++v2;
      if ( !v6 )
        break;
      PlayerManager::RemoveCharacter(this, v6);
      v3 = v2 < PlayerManager::GetNumPlayers(this);
      v4 = v2;
      result = this;
      if ( !v3 )
        goto LABEL_6;
    }
  }
LABEL_6:
  *((_DWORD *)this + 433) = 0;
  return result;
}


// ===== 372220 PlayerManager::_AddCharacter(int) =====
int __fastcall PlayerManager::_AddCharacter(PlayerManager *this, int a2)
{
  int result; // r0
  unsigned __int8 *v4; // r6
  int v5; // r5
  int i; // r8
  signed int v7; // r2
  int v8; // r1
  int v9; // r3
  unsigned int j; // r8
  int v11; // r3
  int v12; // r2
  int v13; // r1
  Level *CurrentLevel; // r0
  _DWORD *v15; // r8
  RoomZone *v16; // r0
  _BYTE v18[12]; // [sp+14h] [bp-238h] BYREF
  char v19[4]; // [sp+20h] [bp-22Ch] BYREF
  char s[512]; // [sp+24h] [bp-228h] BYREF
  _BYTE v21[32]; // [sp+224h] [bp-28h] BYREF

  result = PlayerManager::GetPlayerByInternalID(this, a2, 0);
  v4 = (unsigned __int8 *)result;
  if ( *(_DWORD *)(result + 896) != -1 && !*(_DWORD *)(result + 1632) )
  {
    sprintf(s, "PlayerCharacter_%d", a2);
    ObjectManager::Spawn((ObjectManager *)v18, (const char *)dword_99F764, "Character", (bool)s, 1);
    v5 = ObjectHandle::operator Character *(v18);
    if ( !v5 )
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
          "c",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\PlayerManager\\PlayerManager.cpp",
          1124);
      }
    }
    *((_DWORD *)v4 + 408) = v5;
    Character::InitializePlayerSavegame((Character *)v5);
    if ( (*(int (__fastcall **)(unsigned __int8 *))(*(_DWORD *)v4 + 80))(v4) )
      Character::SG_SetSlot((Character *)v5, *((_DWORD *)v4 + 409));
    else
      Character::SG_SetPlayerClass((Character *)v5, *((_DWORD *)v4 + 224));
    *(_DWORD *)(v5 + 8072) = *((_DWORD *)v4 + 413);
    *(_DWORD *)(v5 + 8076) = *((_DWORD *)v4 + 412);
    if ( *(_BYTE *)(GetOnline() + 5) )
    {
      if ( !CNetPlayerInfo::IsHost((CNetPlayerInfo *)v4) )
      {
        v15 = *(_DWORD **)(PlayerManager::GetHostingPlayer(this) + 1632);
        if ( v15 )
        {
          GameObject::SetPosition((GameObject *)v5);
          GameObject::SetRotation(v5, v15 + 91);
          Character::SetInitialPosition((_DWORD *)v5, v15 + 1300);
          *(_DWORD *)(v5 + 5212) = v15[1303];
          *(_DWORD *)(v5 + 5216) = v15[1304];
          *(_DWORD *)(v5 + 5220) = v15[1305];
          v16 = (RoomZone *)v15[189];
          if ( !v16 || !RoomZone::AddInitialObject(v16, (GameObject *)v5) )
          {
            ObjectManager::AddNoRoomObject((ObjectManager *)dword_99F764, (GameObject *)v5);
            *(_BYTE *)(v5 + 751) = 1;
            GameObject::ZoneEntered((GameObject *)v5);
          }
        }
      }
    }
    Character::InitAll((Character *)v5);
    if ( (*(int (__fastcall **)(unsigned __int8 *))(*(_DWORD *)v4 + 80))(v4)
      && (*(int (__fastcall **)(unsigned __int8 *))(*(_DWORD *)v4 + 92))(v4) )
    {
      Character::InitCam((Character *)v5);
    }
    CharStateMachine::SM_SetIdleState((CharStateMachine *)(v5 + 1276), 0);
    NetStructByteArray<3u>::GetBuffer((int)(v4 + 984), v19);
    for ( i = 0; i != 3; ++i )
    {
      v7 = v19[i];
      v8 = i;
      if ( v7 < -1 )
      {
        v19[i] = -1;
        v7 = -1;
      }
      Character::SG_SetSkillInSlot((Character *)v5, v8, v7);
    }
    v9 = *(_DWORD *)(v5 + 5352);
    if ( v9 && *(_DWORD *)(v9 + 132) > 0x1Eu )
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
          "PlayerInfo::NETWORK_SKILL_LIST_SIZE >= c->SG_GetSkillSize()",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\PlayerManager\\PlayerManager.cpp",
          1188);
      }
    }
    NetStructByteArray<30u>::GetBuffer((int)(v4 + 1024), v21);
    for ( j = 0; j != 30; ++j )
    {
      v11 = *(_DWORD *)(v5 + 5352);
      if ( v11 )
      {
        if ( *(_DWORD *)(v11 + 132) > j )
        {
          v12 = (char)v21[j];
          if ( v12 >= 0 )
            Character::SG_SetSkillLevel((Character *)v5, j, v12);
        }
      }
    }
    if ( (*(int (__fastcall **)(unsigned __int8 *))(*(_DWORD *)v4 + 80))(v4) )
      v13 = 1;
    else
      v13 = v4[1253];
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v5 + 64))(v5, v13);
    CurrentLevel = (Level *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    if ( CurrentLevel )
      Level::QuickSave(CurrentLevel, 0);
    ++*((_DWORD *)this + 433);
    if ( !*(_BYTE *)(GetOnline() + 5) || v5 == *(_DWORD *)(PlayerManager::GetPlayerByInternalID(this, a2, 1) + 1632) )
    {
      PlayerManager::_AttachControllerToPlayerCharacter(this, a2);
      result = (*(int (__fastcall **)(unsigned __int8 *))(*(_DWORD *)v4 + 80))(v4);
      if ( result )
        return PlayerManager::_AttachLightToPlayerCharacter(this, a2);
    }
    else
    {
      return PlayerManager::RemoveCharacter(this, (Character *)v5);
    }
  }
  return result;
}


// ===== 3726bc PlayerManager::RemovePlayer(int) =====
int __fastcall PlayerManager::RemovePlayer(PlayerManager *this, int a2)
{
  int Online; // r0
  int result; // r0
  Character **v6; // r3
  char *v7; // r7
  Character **v8; // r1
  int v9; // r2
  bool v10; // cc
  Character *v11; // r2
  int v12; // r2
  bool v13; // cc
  Character **v14; // r2
  CMatching *Instance; // r0
  int v16; // r0
  CNetPlayerManager *NetPlayerMgr; // r0
  char *v18; // [sp+4h] [bp-8h] BYREF

  Online = GetOnline();
  if ( !*(_BYTE *)(Online + 5)
    || (Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance(Online), !*((_BYTE *)Instance + 36))
    || (v16 = CMatching::Get(Instance), !(*(int (__fastcall **)(int))(*(_DWORD *)v16 + 100))(v16))
    || (NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr(), !CNetPlayerManager::IsInitialized(NetPlayerMgr)) )
  {
    result = PlayerManager::IsPlayerInLocalMap(this, a2);
    if ( !result )
      return result;
    v6 = *((Character ***)this + 421);
    v7 = (char *)this + 1680;
    if ( !v6 )
      goto LABEL_27;
    v8 = (Character **)((char *)this + 1680);
    while ( 1 )
    {
      v9 = (int)v6[4];
      v10 = v9 < a2;
      if ( v9 >= a2 )
        v11 = v6[2];
      else
        v11 = v6[3];
      if ( v10 )
        v6 = v8;
      v8 = v6;
      if ( !v11 )
        break;
      v6 = (Character **)v11;
    }
    if ( (Character **)((char *)this + 1680) == v6 )
    {
LABEL_27:
      v14 = (Character **)((char *)this + 1680);
    }
    else
    {
      v12 = (int)v6[4];
      v13 = v12 <= a2;
      if ( v12 <= a2 )
        v14 = v6;
      else
        v14 = (Character **)((char *)this + 1680);
      if ( v13 )
        v7 = (char *)v6;
      else
        v7 = (char *)this + 1680;
    }
    PlayerManager::RemoveCharacter(this, v14[414]);
    v18 = v7;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::erase(
      (char *)this + 1680,
      &v18);
  }
  return PlayerManager::_UpdatePlayerNumbers(this);
}


// ===== 3727c0 PlayerManager::RemoveAllPlayers(void) =====
int __fastcall PlayerManager::RemoveAllPlayers(PlayerManager *this)
{
  int result; // r0
  int v3; // r6
  int v4; // r4
  int InternalIDByFriendlyID; // r0

  result = PlayerManager::GetNumPlayers(this);
  v3 = result;
  if ( result > 0 )
  {
    v4 = 0;
    do
    {
      InternalIDByFriendlyID = PlayerManager::_GetInternalIDByFriendlyID(this, 0, 0);
      ++v4;
      result = PlayerManager::RemovePlayer(this, InternalIDByFriendlyID);
    }
    while ( v4 != v3 );
  }
  *((_DWORD *)this + 433) = 0;
  return result;
}


// ===== 37280c PlayerManager::_ManageCharacters(void) =====
int __fastcall PlayerManager::_ManageCharacters(PlayerManager *this)
{
  int NumPlayers; // r11
  int v3; // r6
  int Player; // r4
  int v5; // r5
  PlayerSavegame *v6; // r0
  unsigned int v7; // r10
  int v8; // r9
  int v9; // r0
  int v10; // r0
  int v11; // r0
  std::string *v12; // r10
  int v13; // r2
  int v14; // r3
  int v15; // r0
  int v16; // r10
  int v17; // r3
  int Online; // r0
  int v19; // r0
  int v20; // r0
  int v21; // r1
  int v22; // r9
  int NumPotions; // r0
  int v24; // r10
  int Int; // r0
  int v26; // r10
  int v27; // r3
  int v28; // r10
  int v29; // r0
  int v30; // r10
  int PlayerClass; // r0
  int v32; // r3
  unsigned int v33; // r10
  NetStructMember *v34; // r10
  MenuManager *v35; // r0
  int v36; // r1
  int v37; // r2
  int v38; // r0
  int v39; // r4
  int IsLocalPlayerHosting; // r0
  int v42; // lr
  CSignIn *v43; // r0
  int v44; // r0
  int v45; // r1
  int v46; // r1
  int v47; // r1
  int v48; // r2
  CMatching *v49; // r0
  int v50; // r0
  CNetPlayerManager *v51; // r0
  CMatching *v52; // r0
  int v53; // r0
  CNetPlayerManager *v54; // r0
  const std::string *v55; // r3
  char *PlayerName; // r0
  char v57; // r9
  int v58; // r10
  int v59; // r10
  int v60; // r9
  COnline *v61; // r0
  int v62; // r5
  int v63; // r0
  int v64; // r3
  int v65; // r1
  ItemInventory *v66; // r10
  int v67; // r10
  int v68; // r10
  int v69; // r10
  int PlayerLevel; // r0
  int v71; // r1
  int v72; // r3
  const void *v73; // r1
  signed int v74; // r2
  int i; // r10
  signed int v76; // r2
  int v77; // r1
  int v78; // r1
  int v79; // r3
  const void *v80; // r1
  signed int v81; // r2
  unsigned int v82; // r10
  int v83; // r3
  int v84; // r2
  CharStateMachine *v85; // r10
  CMatching *v86; // r0
  int v87; // r0
  CNetPlayerManager *NetPlayerMgr; // r0
  int v89; // r5
  int v90; // r0
  int v91; // r3
  CNetPlayerManager *v92; // r0
  NetStruct *v93; // r0
  CMatching *v94; // r0
  int v95; // r0
  CNetPlayerManager *v96; // r0
  int LocalPlayer; // r0
  int v98; // r4
  int v99; // r5
  int v100; // r0
  int v101; // r3
  Character *v102; // r10
  CMessaging *v103; // r0
  CMessaging *v104; // r9
  int v105; // r6
  int v106; // r5
  int v107; // r4
  bool v108; // r2
  CMessage *Message; // r0
  int v110; // r5
  MenuManager *Instance; // r0
  RenderFX *HUDRoot; // r0
  int IDFromName; // r1
  PlayerInfo *v114; // r0
  int v115; // r2
  int v116; // r3
  int v117; // [sp+0h] [bp-1D4h]
  char *v118; // [sp+4h] [bp-1D0h]
  char *v119; // [sp+8h] [bp-1CCh]
  int v120; // [sp+Ch] [bp-1C8h]
  int v121; // [sp+10h] [bp-1C4h]
  int v122; // [sp+14h] [bp-1C0h]
  int v123; // [sp+20h] [bp-1B4h]
  int CurrentLevel; // [sp+24h] [bp-1B0h]
  int v125; // [sp+28h] [bp-1ACh]
  _DWORD v126[2]; // [sp+40h] [bp-194h] BYREF
  __int64 v127; // [sp+48h] [bp-18Ch]
  int v128; // [sp+50h] [bp-184h]
  int v129; // [sp+54h] [bp-180h]
  int v130; // [sp+58h] [bp-17Ch]
  char v131; // [sp+5Ch] [bp-178h]
  int v132; // [sp+60h] [bp-174h] BYREF
  _DWORD v133[2]; // [sp+68h] [bp-16Ch] BYREF
  __int64 v134; // [sp+70h] [bp-164h]
  int v135; // [sp+78h] [bp-15Ch]
  int v136; // [sp+7Ch] [bp-158h]
  int v137; // [sp+80h] [bp-154h]
  char v138; // [sp+84h] [bp-150h]
  _BYTE v139[3]; // [sp+85h] [bp-14Fh] BYREF
  _DWORD v140[2]; // [sp+88h] [bp-14Ch] BYREF
  __int64 v141; // [sp+90h] [bp-144h]
  int v142; // [sp+98h] [bp-13Ch]
  int v143; // [sp+9Ch] [bp-138h]
  int v144; // [sp+A0h] [bp-134h]
  char v145; // [sp+A4h] [bp-130h]
  _BYTE v146[7]; // [sp+A5h] [bp-12Fh] BYREF
  _BYTE v147[4]; // [sp+ACh] [bp-128h] BYREF
  double v148; // [sp+B0h] [bp-124h]
  double v149; // [sp+B8h] [bp-11Ch]
  _BYTE v150[4]; // [sp+C4h] [bp-110h] BYREF
  std::string v151; // [sp+D4h] [bp-100h] BYREF
  std::string v152; // [sp+F4h] [bp-E0h] BYREF
  std::string v153; // [sp+10Ch] [bp-C8h] BYREF
  _BYTE v154[24]; // [sp+124h] [bp-B0h] BYREF
  std::string v155; // [sp+13Ch] [bp-98h] BYREF
  std::string v156; // [sp+154h] [bp-80h] BYREF
  std::string v157; // [sp+16Ch] [bp-68h] BYREF
  _BYTE v158[24]; // [sp+184h] [bp-50h] BYREF
  std::string v159; // [sp+19Ch] [bp-38h] BYREF
  std::string v160; // [sp+1B4h] [bp-20h] BYREF
  std::string v161; // 0:kr00_24.24
  std::string v162; // 0:kr28_24.24

  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  NumPlayers = PlayerManager::GetNumPlayers(this);
  if ( NumPlayers > 0 )
  {
    v123 = 0;
    v3 = 0;
    v120 = 0;
    v121 = 1;
    while ( 1 )
    {
      Player = PlayerManager::GetPlayer(this, v3, 0);
      v5 = *(_DWORD *)(Player + 1632);
      v6 = (PlayerSavegame *)(*(int (__fastcall **)(int))(*(_DWORD *)Player + 92))(Player);
      if ( v6 )
        break;
LABEL_69:
      if ( ++v3 == NumPlayers )
        goto LABEL_70;
    }
    if ( !*(_BYTE *)(Player + 1644) )
    {
      if ( NetStructMember::IsChanged((NetStructMember *)(Player + 1288)) && *(_BYTE *)(Player + 1317) )
      {
        IsLocalPlayerHosting = PlayerManager::IsLocalPlayerHosting(this);
        v42 = v123;
        if ( IsLocalPlayerHosting )
          v42 = 1;
        v123 = v42;
      }
      goto LABEL_30;
    }
    v7 = *(_DWORD *)(Player + 1636);
    if ( v7 == -1 )
    {
LABEL_30:
      if ( !*((_BYTE *)this + 1737) )
        goto LABEL_65;
      if ( !v5 )
      {
        if ( CurrentLevel
          && *(_DWORD *)(Player + 896) != -1
          && (!*(_BYTE *)(GetOnline() + 5)
           || CNetPlayerInfo::IsHost((CNetPlayerInfo *)Player)
           || *(_DWORD *)(PlayerManager::GetHostingPlayer((PlayerManager *)dword_99F76C) + 1632)) )
        {
          PlayerManager::_AddCharacter(this, *(_DWORD *)(Player + 1648));
          v47 = v121;
          v48 = v120;
          if ( *(_BYTE *)(Player + 1253) )
            v48 = 1;
          else
            v47 = *(unsigned __int8 *)(Player + 1253);
          v121 = v47;
          v120 = v48;
        }
        goto LABEL_69;
      }
      if ( !*(_BYTE *)(GetOnline() + 5) )
        goto LABEL_65;
      if ( *(_BYTE *)(Player + 1644) )
      {
        PlayerManager::_PackInventory(this, (PlayerInfo *)Player);
        v21 = *(_DWORD *)(v5 + 924);
        if ( *(_DWORD *)(Player + 1176) != v21 )
          PlayerInfo::SetCharacterGold((PlayerInfo *)Player, v21);
        v22 = *(_DWORD *)(Player + 856);
        if ( ItemInventory::GetNumPotions((ItemInventory *)(v5 + 892)) != v22 )
        {
          NumPotions = ItemInventory::GetNumPotions((ItemInventory *)(v5 + 892));
          PlayerInfo::SetCharacterNumPotions((PlayerInfo *)Player, NumPotions);
        }
        v24 = *(_DWORD *)(Player + 1096);
        if ( CharProperties::PROPS_GetInt((CharProperties *)(v5 + 1376), 33, 0) != v24 )
        {
          Int = CharProperties::PROPS_GetInt((CharProperties *)(v5 + 1376), 33, 0);
          PlayerInfo::SetCharacterXP((PlayerInfo *)Player, Int);
        }
        v26 = *(_DWORD *)(Player + 1136);
        if ( CharProperties::PROPS_GetInt((CharProperties *)(v5 + 1376), 36, 0) != v26 )
        {
          v27 = CharProperties::PROPS_GetInt((CharProperties *)(v5 + 1376), 36, 0);
          v127 = 0;
          v129 = -1;
          v128 = -1;
          v126[1] = 32;
          v131 = 0;
          v126[0] = &off_963618;
          v130 = 0;
          if ( v27 != v132 )
          {
            v132 = v27;
            NetStructMember::SetChanged((NetStructMember *)v126);
          }
          v126[0] = &off_9635E8;
          (*(void (__fastcall **)(int, int *))(*(_DWORD *)(Player + 1104) + 28))(Player + 1104, &v132);
          v126[0] = &off_963648;
        }
        v28 = *(_DWORD *)(Player + 816);
        if ( CharProperties::PROPS_GetInt((CharProperties *)(v5 + 1376), 19, 0) != v28 )
        {
          v29 = CharProperties::PROPS_GetInt((CharProperties *)(v5 + 1376), 19, 0);
          PlayerInfo::SetCharacterLevel((PlayerInfo *)Player, v29);
        }
        v30 = *(_DWORD *)(Player + 896);
        if ( Character::SG_GetPlayerClass((Character *)v5) != v30 )
        {
          PlayerClass = Character::SG_GetPlayerClass((Character *)v5);
          PlayerInfo::SetCharacterClass((PlayerInfo *)Player, PlayerClass);
        }
        v150[0] = Character::SG_GetSkillInSlot((Character *)v5, 0);
        v150[1] = Character::SG_GetSkillInSlot((Character *)v5, 1);
        v150[2] = Character::SG_GetSkillInSlot((Character *)v5, 2);
        NetStructByteArray<3u>::SetBuffer(Player + 984, v150, 3);
        v32 = *(_DWORD *)(v5 + 5352);
        if ( v32 && *(_DWORD *)(v32 + 132) > 0x1Eu )
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
              "PlayerInfo::NETWORK_SKILL_LIST_SIZE >= c->SG_GetSkillSize()",
              "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\PlayerManager\\PlayerManager.cpp",
              750);
            v32 = *(_DWORD *)(v5 + 5352);
          }
        }
        v33 = 0;
        while ( 2 )
        {
          if ( v32 && *(_DWORD *)(v32 + 132) > v33 )
          {
            if ( (int)Character::SG_GetSkillLevel((Character *)v5, v33) < 0 )
            {
              v151._M_buffers._M_static_buf[v33] = -1;
              goto LABEL_55;
            }
            v151._M_buffers._M_static_buf[v33] = Character::SG_GetSkillLevel((Character *)v5, v33);
            if ( ++v33 == 30 )
            {
LABEL_62:
              NetStructByteArray<30u>::SetBuffer(Player + 1024, &v151, v33);
              v34 = (NetStructMember *)(Player + 1224);
              goto LABEL_63;
            }
          }
          else
          {
LABEL_55:
            if ( ++v33 == 30 )
              goto LABEL_62;
          }
          v32 = *(_DWORD *)(v5 + 5352);
          continue;
        }
      }
      PlayerManager::_UnpackInventory(this, (PlayerInfo *)Player);
      if ( Character::SG_GetPlayerName((Character *)v5) )
      {
        std::string::string(&v153, (const std::string *)(Player + 720));
        PlayerName = (char *)Character::SG_GetPlayerName((Character *)v5);
        v57 = std::operator==<char>((int)&v153, PlayerName) ^ 1;
        std::string::~string(&v153);
        v55 = (const std::string *)(Player + 720);
        if ( !v57 )
        {
LABEL_118:
          v58 = *(_DWORD *)(Player + 896);
          if ( Character::SG_GetPlayerClass((Character *)v5) != v58
            && Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst)
            && *(_BYTE *)(Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) + 324) )
          {
            v59 = *(_DWORD *)(Player + 896);
            v60 = v5 + 1376;
            CharProperties::LoadPropertiesForClassSelect((CharProperties *)(v5 + 1376), v59);
            Character::SG_SetPlayerClass((Character *)v5, v59);
            CharAI::AI_ReloadSkills((CharAI *)(v5 + 968));
            v125 = 1;
          }
          else
          {
            v125 = 0;
            v60 = v5 + 1376;
          }
          v65 = *(_DWORD *)(Player + 1176);
          v66 = (ItemInventory *)(v5 + 892);
          if ( v65 != *(_DWORD *)(v5 + 924) )
            ItemInventory::SetGold(v5 + 892, v65);
          v119 = *(char **)(Player + 856);
          if ( (char *)ItemInventory::GetNumPotions(v66) != v119 )
            ItemInventory::SetPotionQty(v66, *(_DWORD *)(Player + 856));
          v67 = *(_DWORD *)(Player + 1096);
          if ( CharProperties::PROPS_GetInt((CharProperties *)v60, 33, 0) != v67 )
            CharProperties::PROPS_SetInt((CharProperties *)v60, 33, *(_DWORD *)(Player + 1096));
          v68 = *(_DWORD *)(Player + 1136);
          if ( CharProperties::PROPS_GetInt((CharProperties *)v60, 36, 0) != v68 )
          {
            (*(void (__fastcall **)(int))(*(_DWORD *)v5 + 52))(v5);
            CharProperties::PROPS_GetInt((CharProperties *)v60, 36, 0);
            CharProperties::PROPS_SetInt((CharProperties *)v60, 36, *(_DWORD *)(Player + 1136));
          }
          v69 = *(_DWORD *)(Player + 1632);
          v122 = (*(_DWORD *)(v69 + 2364) + *(_DWORD *)(v69 + 1464)) >> 8;
          PlayerLevel = Character::SG_GetPlayerLevel((Character *)v5);
          v71 = *(_DWORD *)(Player + 816);
          v72 = PlayerLevel;
          if ( PlayerLevel != v71 )
          {
            Character::SG_SetPlayerLevel((Character *)v5, v71);
            v72 = *(_DWORD *)(Player + 816);
          }
          if ( v122 != v72 )
          {
            CharProperties::PROPS_SetInt((CharProperties *)v60, 19, ((v72 << 8) - *(_DWORD *)(v69 + 1464)) >> 8);
            if ( *(_DWORD *)(Player + 816) - v122 == 1 )
            {
              if ( *(_BYTE *)(Player + 1253) )
              {
                IDFromName = ScriptManager::GetIDFromName((ScriptManager *)&ScriptManager::s_inst, "PlayerLevelUp", 1);
                if ( IDFromName != -1 )
                  ScriptManager::StartScript((ScriptManager *)&ScriptManager::s_inst, IDFromName, -1, 0);
                VisualFXManager::PlayAnimFXSet(&Singleton<VisualFXManager>::s_inst, 135, v5, 0);
              }
            }
          }
          if ( NetStructMember::IsChanged((NetStructMember *)(Player + 984)) || v125 )
          {
            v73 = *(const void **)(Player + 1016);
            if ( v73 && (v74 = *(_DWORD *)(Player + 1020), v74 > 0) )
            {
              v60 = (int)v150;
              memcpy(v150, v73, v74);
            }
            else
            {
              v60 = (int)v150;
            }
            for ( i = 0; i != 3; ++i )
            {
              v76 = (char)v150[i];
              v77 = i;
              if ( v76 < -1 )
              {
                v150[i] = -1;
                v76 = -1;
              }
              Character::SG_SetSkillInSlot((Character *)v5, v77, v76);
            }
            if ( !NetStructMember::IsChanged((NetStructMember *)(Player + 1024)) )
            {
LABEL_214:
              if ( !v125 )
                goto LABEL_169;
            }
          }
          else if ( !NetStructMember::IsChanged((NetStructMember *)(Player + 1024)) )
          {
            goto LABEL_214;
          }
          v79 = *(_DWORD *)(v5 + 5352);
          if ( v79 && *(_DWORD *)(v79 + 132) > 0x1Eu )
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
                "PlayerInfo::NETWORK_SKILL_LIST_SIZE >= c->SG_GetSkillSize()",
                "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\PlayerManager\\PlayerManager.cpp",
                880);
            }
          }
          v80 = *(const void **)(Player + 1056);
          if ( v80 )
          {
            v81 = *(_DWORD *)(Player + 1060);
            if ( v81 > 0 )
              memcpy(&v151, v80, v81);
          }
          v82 = 0;
          v78 = 0;
          v60 = 5352;
          do
          {
            v83 = *(_DWORD *)(v5 + 5352);
            if ( v83 )
            {
              if ( v82 < *(_DWORD *)(v83 + 132) )
              {
                v84 = v151._M_buffers._M_static_buf[v82];
                if ( v84 >= 0 )
                {
                  Character::SG_SetSkillLevel((Character *)v5, v82, v84);
                  v78 = 1;
                }
              }
            }
            ++v82;
          }
          while ( v82 != 30 );
          if ( v78 )
            CharAI::UpdateAllSkills((CharAI *)(v5 + 968));
LABEL_169:
          if ( *(_BYTE *)(Player + 1253) )
            v78 = 6688;
          else
            v60 = *(unsigned __int8 *)(Player + 1253);
          if ( *(_BYTE *)(Player + 1253) )
            v60 = LOBYTE((*(Elf32_Dyn **)((char *)&__GLOBAL_OFFSET_TABLE_ + v78))[6].d_tag) ^ 1;
          if ( *(unsigned __int8 *)(v5 + 128) == v60 )
          {
            if ( !*(_BYTE *)(Player + 1253)
              || (v85 = (CharStateMachine *)(v5 + 1276),
                  !CharStateMachine::SM_IsInLimbus((CharStateMachine *)(v5 + 1276)))
              || (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 52))(v5) )
            {
LABEL_178:
              v34 = (NetStructMember *)(Player + 1224);
              (*(void (__fastcall **)(int, int))(*(_DWORD *)v5 + 64))(v5, v60);
              NetStructMember::IsChanged((NetStructMember *)(Player + 1224));
LABEL_63:
              if ( NetStructMember::IsChanged(v34) )
              {
                v35 = (MenuManager *)(*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v5 + 64))(
                                       v5,
                                       *(unsigned __int8 *)(Player + 1253));
                if ( *(_DWORD *)(CurrentLevel + 304) == 38 )
                {
                  v110 = *(_DWORD *)(Player + 1660);
                  if ( !*(_BYTE *)(Player + 1644) )
                    v110 += 4;
                  Instance = (MenuManager *)MenuManager::GetInstance(v35);
                  HUDRoot = (RenderFX *)MenuManager::GetHUDRoot(Instance);
                  v147[0] = 0;
                  v147[1] = 2;
                  v149 = (double)v110;
                  v148 = (double)v110;
                  RenderFX::InvokeASCallback(
                    HUDRoot,
                    "menu_HUD_0",
                    "completeRefresh",
                    (const gameswf::as_value *)v147,
                    1);
                  gameswf::as_value::drop_refs((gameswf::as_value *)v147);
                }
              }
LABEL_65:
              v36 = v121;
              v37 = v120;
              if ( *(_BYTE *)(Player + 1253) )
                v37 = 1;
              else
                v36 = *(unsigned __int8 *)(Player + 1253);
              v121 = v36;
              v120 = v37;
              goto LABEL_69;
            }
          }
          else
          {
            v85 = (CharStateMachine *)(v5 + 1276);
          }
          CharStateMachine::SM_SetIdleState(v85, 0);
          goto LABEL_178;
        }
      }
      else
      {
        v55 = (const std::string *)(Player + 720);
      }
      std::string::string(&v152, v55);
      Character::SG_SetPlayerName((Character *)v5, v152._M_start_of_storage._M_data);
      std::string::~string(&v152);
      goto LABEL_118;
    }
    v8 = *(_DWORD *)(Player + 1664);
    if ( !v8 )
    {
      v8 = operator new(408, 0);
      v6 = PlayerSavegame::PlayerSavegame((PlayerSavegame *)v8, v7, 1, 0);
      *(_DWORD *)(Player + 1664) = v8;
    }
    v9 = GCSingleton<GameCenter>::GetInstance(v6);
    if ( *(_BYTE *)(v9 + 17) )
    {
      v10 = std::string::string(&v160, (const std::string *)(Player + 720));
      GCSingleton<GameCenter>::GetInstance(v10);
      GameCenter::GetGCPlayerAlias((GameCenter *)&v159);
      if ( v160._M_finish - v160._M_start_of_storage._M_data == v159._M_finish - v159._M_start_of_storage._M_data
        && !memcmp(
              v160._M_start_of_storage._M_data,
              v159._M_start_of_storage._M_data,
              v160._M_finish - v160._M_start_of_storage._M_data) )
      {
        std::string::~string(&v159);
        std::string::~string(&v160);
        goto LABEL_12;
      }
      std::string::~string(&v159);
      std::string::~string(&v160);
      GCSingleton<GameCenter>::GetInstance(v11);
      v12 = (std::string *)v158;
      GameCenter::GetGCPlayerAlias((GameCenter *)v158);
    }
    else
    {
      v43 = (CSignIn *)OnlineSingleton<OnlineGameState>::GetInstance(v9);
      if ( *((_BYTE *)v43 + 40) )
      {
        v44 = CSignIn::Get(v43);
        std::string::string((int)&v151, *(char **)(v44 + 4));
        std::string::string(&v157, (const std::string *)(Player + 720));
        if ( v157._M_finish - v157._M_start_of_storage._M_data == v151._M_finish - v151._M_start_of_storage._M_data
          && !memcmp(
                v157._M_start_of_storage._M_data,
                v151._M_start_of_storage._M_data,
                v157._M_finish - v157._M_start_of_storage._M_data) )
        {
          std::string::~string(&v157);
        }
        else
        {
          std::string::~string(&v157);
          std::string::string((int)&v156, v151._M_start_of_storage._M_data);
          v162._M_buffers._M_end_of_storage = (char *)&v156;
          *(_DWORD *)&v162._M_buffers._M_static_buf[4] = v115;
          *(_DWORD *)&v162._M_buffers._M_static_buf[8] = v116;
          *(_DWORD *)&v162._M_buffers._M_static_buf[12] = v117;
          v162._M_finish = v118;
          v162._M_start_of_storage._M_data = v119;
          PlayerInfo::SetCharacterName((PlayerInfo *)Player, v162);
          std::string::~string(&v156);
        }
        std::string::~string(&v151);
        if ( v5 )
          goto LABEL_13;
        goto LABEL_88;
      }
      std::string::string(&v155, (const std::string *)(Player + 720));
      v119 = (char *)std::operator==<char>((int)&v155, *(char **)(v8 + 44));
      std::string::~string(&v155);
      if ( v119 )
      {
LABEL_12:
        if ( v5 )
        {
LABEL_13:
          v15 = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
          v16 = v15;
          if ( v15 && *(_DWORD *)(v15 + 304) == 38 )
            v17 = *(unsigned __int8 *)(v15 + 324);
          else
            v17 = 0;
          if ( *(unsigned __int8 *)(Player + 1253) != v17 )
          {
            v141 = 0;
            v143 = -1;
            v142 = -1;
            v140[1] = 1;
            v145 = 0;
            v140[0] = &off_963700;
            v144 = 0;
            if ( v146[0] != v17 )
            {
              v146[0] = v17;
              NetStructMember::SetChanged((NetStructMember *)v140);
            }
            v140[0] = &off_9636D0;
            (*(void (__fastcall **)(int, _BYTE *))(*(_DWORD *)(Player + 1224) + 28))(Player + 1224, v146);
            PlayerManager::_ManageCharacters(void)::forceResendTimer = 2000;
            v140[0] = &off_963648;
          }
          if ( v16 )
            v16 = *(_DWORD *)(v16 + 304) > 35;
          if ( *(unsigned __int8 *)(Player + 1317) != v16 )
          {
            Online = GetOnline();
            if ( *(_BYTE *)(Online + 5) )
            {
              v86 = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance(Online);
              if ( *((_BYTE *)v86 + 36) )
              {
                v87 = CMatching::Get(v86);
                if ( (*(int (__fastcall **)(int))(*(_DWORD *)v87 + 100))(v87) )
                {
                  NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr();
                  CNetPlayerManager::IsInitialized(NetPlayerMgr);
                }
              }
            }
            v134 = 0;
            v133[0] = &off_963700;
            v133[1] = 1;
            v136 = -1;
            v138 = 0;
            v135 = -1;
            v137 = 0;
            if ( v139[0] != v16 )
            {
              v139[0] = v16;
              NetStructMember::SetChanged((NetStructMember *)v133);
            }
            v133[0] = &off_9636D0;
            (*(void (__fastcall **)(int, _BYTE *))(*(_DWORD *)(Player + 1288) + 28))(Player + 1288, v139);
            v133[0] = &off_963648;
          }
          v19 = GetOnline();
          if ( *(_BYTE *)(v19 + 5) )
          {
            v49 = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance(v19);
            if ( *((_BYTE *)v49 + 36) )
            {
              v50 = CMatching::Get(v49);
              if ( (*(int (__fastcall **)(int))(*(_DWORD *)v50 + 100))(v50) )
              {
                v51 = (CNetPlayerManager *)GetNetPlayerMgr();
                if ( CNetPlayerManager::IsInitialized(v51) )
                {
                  if ( !*(_BYTE *)(Player + 1317)
                    && *(_BYTE *)(PlayerManager::GetHostingPlayer(this) + 1253)
                    && !*((_BYTE *)this + 1818) )
                  {
                    *((_BYTE *)this + 1818) = 1;
                  }
                }
              }
            }
          }
          v20 = GetOnline();
          if ( *(_BYTE *)(v20 + 5) )
          {
            v52 = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance(v20);
            if ( *((_BYTE *)v52 + 36) )
            {
              v53 = CMatching::Get(v52);
              if ( (*(int (__fastcall **)(int))(*(_DWORD *)v53 + 100))(v53) )
              {
                v54 = (CNetPlayerManager *)GetNetPlayerMgr();
                if ( CNetPlayerManager::IsInitialized(v54) )
                {
                  if ( *(_BYTE *)(Player + 1317) && !*(_BYTE *)(Player + 1349) )
                    PlayerInfo::UpdateReadyToRoll((PlayerInfo *)Player);
                }
              }
            }
          }
          goto LABEL_30;
        }
LABEL_88:
        v45 = *(_DWORD *)(v8 + 52);
        if ( *(_DWORD *)(Player + 896) != v45 )
          PlayerInfo::SetCharacterClass((PlayerInfo *)Player, v45);
        v46 = *(_DWORD *)(v8 + 48);
        if ( *(_DWORD *)(Player + 816) != v46 )
          PlayerInfo::SetCharacterLevel((PlayerInfo *)Player, v46);
        goto LABEL_13;
      }
      v12 = (std::string *)v154;
      std::string::string((int)v154, *(char **)(v8 + 44));
    }
    v161._M_buffers._M_end_of_storage = (char *)v12;
    *(_DWORD *)&v161._M_buffers._M_static_buf[4] = v13;
    *(_DWORD *)&v161._M_buffers._M_static_buf[8] = v14;
    *(_DWORD *)&v161._M_buffers._M_static_buf[12] = v117;
    v161._M_finish = v118;
    v161._M_start_of_storage._M_data = v119;
    PlayerInfo::SetCharacterName((PlayerInfo *)Player, v161);
    std::string::~string(v12);
    goto LABEL_12;
  }
  v123 = 0;
  v120 = 0;
  v121 = 1;
LABEL_70:
  v38 = GetOnline();
  if ( *(_BYTE *)(v38 + 5) )
  {
    v94 = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance(v38);
    if ( *((_BYTE *)v94 + 36) )
    {
      v95 = CMatching::Get(v94);
      if ( (*(int (__fastcall **)(int))(*(_DWORD *)v95 + 100))(v95) )
      {
        v96 = (CNetPlayerManager *)GetNetPlayerMgr();
        if ( CNetPlayerManager::IsInitialized(v96) )
        {
          if ( *((_BYTE *)this + 1737)
            && PlayerManager::IsLocalPlayerHosting(this)
            && PlayerManager::AllLoadingDone(this) )
          {
            LocalPlayer = PlayerManager::GetLocalPlayer(this, 0, 0);
            v98 = *(unsigned __int8 *)(LocalPlayer + 1349);
            if ( *(_BYTE *)(LocalPlayer + 1349) )
            {
LABEL_199:
              v98 = 0;
              goto LABEL_200;
            }
            if ( PlayerManager::AllClientsReadyToRoll(this) )
            {
              v114 = (PlayerInfo *)PlayerManager::GetLocalPlayer(this, v98, v98);
              PlayerInfo::SetReadyToRoll(v114, 1);
              *((_DWORD *)this + 435) = -1;
            }
            else
            {
              if ( *((_BYTE *)this + 1739) )
                goto LABEL_199;
              v98 = 1;
            }
LABEL_200:
            if ( v123 && !v98 )
            {
              *((_BYTE *)this + 1739) = 0;
              if ( !*(_DWORD *)(PlayerManager::GetHostingPlayer(this) + 1632) )
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
                    "GetHostingPlayer().GetCharacter()",
                    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\PlayerManager\\PlayerManager.cpp",
                    998);
                }
              }
              PlayerManager::GetHostingPlayer(this);
              v98 = 1;
            }
            if ( *((_BYTE *)this + 1739) && *((int *)this + 435) > 0 && !PlayerManager::AllClientsReadyToRoll(this) )
            {
              v99 = *((_DWORD *)this + 435);
              v100 = v99 - Application::GetDt((Application *)&Singleton<Application>::s_inst);
              if ( v100 < 0 )
                v101 = -1;
              *((_DWORD *)this + 435) = v100;
              if ( v100 < 0 )
              {
                v98 = 1;
                *((_DWORD *)this + 435) = v101;
              }
            }
            v102 = *(Character **)(PlayerManager::GetLocalPlayer(this, 0, 1) + 1632);
            if ( v102 && v98 )
            {
              ObjectManager::ForceFullUpdate((ObjectManager *)dword_99F764);
              v103 = (CMessaging *)Character::SG_NeedToResendQuestSyncMsg(v102);
              v104 = (CMessaging *)CMessaging::Get(v103);
              v105 = *((_DWORD *)v102 + 90);
              v106 = *((_DWORD *)v102 + 88);
              v107 = *((_DWORD *)v102 + 89);
              Message = (CMessage *)CMessage::CreateMessage(
                                      (CMessage *)"CMsgInitialSetup",
                                      (const char *)&dword_0 + 1,
                                      v108);
              *((_DWORD *)Message + 20) = v106;
              *((_DWORD *)Message + 21) = v107;
              *((_DWORD *)Message + 22) = v105;
              CMessaging::SendMsg(v104, Message);
              *((_BYTE *)this + 1739) = 1;
              *((_DWORD *)this + 435) = 5000;
            }
          }
        }
      }
    }
  }
  if ( !*(_BYTE *)(GetOnline() + 5) )
    goto LABEL_72;
  v61 = (COnline *)GetOnline();
  if ( !COnline::IsServer(v61) || !v120 || v121 )
    goto LABEL_72;
  v62 = PlayerManager::_ManageCharacters(void)::forceResendTimer;
  v63 = v62 - Application::GetDt((Application *)&Singleton<Application>::s_inst);
  if ( v63 <= 0 )
    v64 = 2000;
  PlayerManager::_ManageCharacters(void)::forceResendTimer = v63;
  if ( v63 <= 0 )
  {
    PlayerManager::_ManageCharacters(void)::forceResendTimer = v64;
    v39 = 1;
  }
  else
  {
LABEL_72:
    v39 = 0;
  }
  if ( *(_BYTE *)(GetOnline() + 5)
    && Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst)
    && !*(_BYTE *)(PlayerManager::GetLocalPlayer(this, 0, 0) + 1253) )
  {
    v89 = PlayerManager::_ManageCharacters(void)::forceResendLoadingInfoTimer;
    v90 = v89 - Application::GetDt((Application *)&Singleton<Application>::s_inst);
    if ( v90 <= 0 )
      v91 = 5000;
    PlayerManager::_ManageCharacters(void)::forceResendLoadingInfoTimer = v90;
    if ( v90 <= 0 )
    {
      PlayerManager::_ManageCharacters(void)::forceResendLoadingInfoTimer = v91;
      goto LABEL_191;
    }
  }
  if ( v39 )
  {
LABEL_191:
    v92 = (CNetPlayerManager *)GetNetPlayerMgr();
    CNetPlayerManager::ResendManagerInfo(v92);
    v93 = (NetStruct *)PlayerManager::GetLocalPlayer(this, 0, 0);
    NetStruct::Resend(v93);
    *(_DWORD *)(GetPacketManager() + 44) = 0;
  }
  if ( !*((_BYTE *)this + 1737) && *((int *)this + 433) > 0 )
  {
    PlayerManager::ClearLoadingInfo(this);
    PlayerManager::RemoveAllCharacters(this);
  }
  return 16556;
}


// ===== 373bdc PlayerInfo::Reset(void) =====
int __fastcall PlayerInfo::Reset(PlayerInfo *this)
{
  int i; // r2
  int j; // r2
  int v4; // r6
  PlayerInfo *v5; // r7
  _DWORD *v6; // r8
  _DWORD *v7; // r6
  bool v8; // zf
  _DWORD *v9; // r1
  int v10; // r3
  _DWORD *v11; // r6
  bool v12; // zf
  int v13; // r3
  bool v14; // zf
  int v15; // r3
  int v17; // r2
  int v18; // r3
  int v19; // [sp+0h] [bp-17Ch]
  char *v20; // [sp+4h] [bp-178h]
  char *v21; // [sp+8h] [bp-174h]
  _DWORD v22[2]; // [sp+18h] [bp-164h] BYREF
  __int64 v23; // [sp+20h] [bp-15Ch]
  int v24; // [sp+28h] [bp-154h]
  int v25; // [sp+2Ch] [bp-150h]
  int v26; // [sp+30h] [bp-14Ch]
  char v27; // [sp+34h] [bp-148h]
  int v28; // [sp+38h] [bp-144h]
  _DWORD v29[2]; // [sp+40h] [bp-13Ch] BYREF
  __int64 v30; // [sp+48h] [bp-134h]
  int v31; // [sp+50h] [bp-12Ch]
  int v32; // [sp+54h] [bp-128h]
  int v33; // [sp+58h] [bp-124h]
  char v34; // [sp+5Ch] [bp-120h]
  int v35; // [sp+60h] [bp-11Ch] BYREF
  _DWORD v36[2]; // [sp+68h] [bp-114h] BYREF
  __int64 v37; // [sp+70h] [bp-10Ch]
  int v38; // [sp+78h] [bp-104h]
  int v39; // [sp+7Ch] [bp-100h]
  int v40; // [sp+80h] [bp-FCh]
  char v41; // [sp+84h] [bp-F8h]
  int v42; // [sp+88h] [bp-F4h]
  _DWORD v43[7]; // [sp+90h] [bp-ECh] BYREF
  char v44; // [sp+ACh] [bp-D0h]
  _BYTE v45[3]; // [sp+ADh] [bp-CFh] BYREF
  _DWORD v46[7]; // [sp+B0h] [bp-CCh] BYREF
  char v47; // [sp+CCh] [bp-B0h]
  _BYTE v48[3]; // [sp+CDh] [bp-AFh] BYREF
  _DWORD v49[7]; // [sp+D0h] [bp-ACh] BYREF
  char v50; // [sp+ECh] [bp-90h]
  _BYTE v51[3]; // [sp+EDh] [bp-8Fh] BYREF
  _DWORD v52[7]; // [sp+F0h] [bp-8Ch] BYREF
  char v53; // [sp+10Ch] [bp-70h]
  char v54; // [sp+10Dh] [bp-6Fh]
  _BYTE v55[4]; // [sp+110h] [bp-6Ch] BYREF
  _BYTE v56[36]; // [sp+118h] [bp-64h] BYREF
  _BYTE v57[32]; // [sp+13Ch] [bp-40h] BYREF
  std::string v58; // [sp+15Ch] [bp-20h] BYREF
  std::string v59; // 0:kr00_24.24

  CNetPlayerInfo::Reset(this);
  *((_BYTE *)this + 1644) = 1;
  *((_DWORD *)this + 408) = 0;
  std::string::string(&v58, "");
  v59._M_buffers._M_end_of_storage = (char *)&v58;
  *(_DWORD *)&v59._M_buffers._M_static_buf[4] = v17;
  *(_DWORD *)&v59._M_buffers._M_static_buf[8] = v18;
  *(_DWORD *)&v59._M_buffers._M_static_buf[12] = v19;
  v59._M_finish = v20;
  v59._M_start_of_storage._M_data = v21;
  PlayerInfo::SetCharacterName(this, v59);
  std::string::~string(&v58);
  PlayerInfo::SetCharacterLevel(this, -1);
  PlayerInfo::SetCharacterNumPotions(this, -1);
  PlayerInfo::SetCharacterClass(this, -1);
  PlayerInfo::SetCharacterDeathTimer(this, -1);
  for ( i = 0; i != 36; ++i )
    v56[i] = -1;
  NetStructByteArray<36u>::SetBuffer((int)this + 944, v56, 0x24u);
  v55[0] = -1;
  v55[1] = -1;
  v55[2] = -1;
  NetStructByteArray<3u>::SetBuffer((int)this + 984, v55, 3u);
  for ( j = 0; j != 30; ++j )
    v57[j] = -1;
  NetStructByteArray<30u>::SetBuffer((int)this + 1024, v57, 0x1Eu);
  PlayerInfo::SetCharacterXP(this, 0);
  PlayerInfo::SetCharacterGold(this, 0);
  v4 = 0;
  v5 = this;
  v6 = nullptr;
  do
  {
    v29[1] = 16;
    v30 = 0;
    v31 = -1;
    v32 = -1;
    v33 = 0;
    v34 = 0;
    v29[0] = &off_963618;
    if ( v35 )
    {
      v35 = 0;
      NetStructMember::SetChanged((NetStructMember *)v29);
    }
    v29[0] = &off_963730;
    (*(void (__fastcall **)(char *, int *))(*((_DWORD *)v5 + 338) + 28))((char *)this + 40 * v4++ + 1352, &v35);
    v29[0] = &off_963648;
    v5 = (PlayerInfo *)((char *)v5 + 40);
  }
  while ( v4 != 7 );
  v7 = nullptr;
  v23 = 0;
  v8 = v28 == 0;
  v22[1] = 8;
  v25 = -1;
  v22[0] = &off_963618;
  if ( !v28 )
    v7 = v22;
  *((_DWORD *)this + 414) = -1;
  v24 = -1;
  v26 = 0;
  v27 = 0;
  if ( !v8 )
  {
    v7 = v22;
    v28 = 0;
    NetStructMember::SetChanged((NetStructMember *)v22);
  }
  v9 = v7 + 8;
  v10 = *((_DWORD *)this + 162);
  v11 = nullptr;
  v22[0] = &off_9637F0;
  (*(void (__fastcall **)(char *, _DWORD *))(v10 + 28))((char *)this + 648, v9);
  v37 = 0;
  v12 = v42 == 0;
  v22[0] = &off_963648;
  v36[1] = 32;
  v39 = -1;
  v36[0] = &off_963618;
  if ( !v42 )
    v11 = v36;
  *((_DWORD *)this + 409) = -1;
  *((_DWORD *)this + 410) = -1;
  *((_DWORD *)this + 412) = -1;
  *((_DWORD *)this + 413) = -1;
  *((_DWORD *)this + 415) = -1;
  v38 = -1;
  v40 = 0;
  v41 = 0;
  if ( !v12 )
  {
    v11 = v36;
    v42 = 0;
    NetStructMember::SetChanged((NetStructMember *)v36);
  }
  v13 = *((_DWORD *)this + 296);
  v36[0] = &off_9635E8;
  (*(void (__fastcall **)(char *, _DWORD *))(v13 + 28))((char *)this + 1184, v11 + 8);
  v36[0] = &off_963648;
  v14 = v54 == 0;
  v52[1] = 1;
  v52[2] = 0;
  v52[3] = 0;
  v52[5] = -1;
  v52[0] = &off_963700;
  if ( !v54 )
    v6 = v52;
  *((_DWORD *)this + 417) = 0;
  *((_DWORD *)this + 416) = 0;
  v52[4] = -1;
  v52[6] = 0;
  v53 = 0;
  if ( !v14 )
  {
    v6 = v52;
    v54 = 0;
    NetStructMember::SetChanged((NetStructMember *)v52);
  }
  v15 = *((_DWORD *)this + 306);
  v52[0] = &off_9636D0;
  (*(void (__fastcall **)(char *, int))(v15 + 28))((char *)this + 1224, (int)v6 + 29);
  v52[0] = &off_963648;
  v49[1] = 1;
  v49[2] = 0;
  v49[3] = 0;
  v49[5] = -1;
  v49[0] = &off_963700;
  v49[4] = -1;
  v49[6] = 0;
  v50 = 0;
  if ( v51[0] )
  {
    v51[0] = 0;
    NetStructMember::SetChanged((NetStructMember *)v49);
  }
  v49[0] = &off_9636D0;
  (*(void (__fastcall **)(char *, _BYTE *))(*((_DWORD *)this + 314) + 28))((char *)this + 1256, v51);
  v49[0] = &off_963648;
  v46[1] = 1;
  v46[2] = 0;
  v46[3] = 0;
  v46[5] = -1;
  v46[0] = &off_963700;
  v46[4] = -1;
  v46[6] = 0;
  v47 = 0;
  if ( v48[0] )
  {
    v48[0] = 0;
    NetStructMember::SetChanged((NetStructMember *)v46);
  }
  v46[0] = &off_9636D0;
  (*(void (__fastcall **)(char *, _BYTE *))(*((_DWORD *)this + 322) + 28))((char *)this + 1288, v48);
  v46[0] = &off_963648;
  v43[1] = 1;
  v43[2] = 0;
  v43[3] = 0;
  v43[5] = -1;
  v43[0] = &off_963700;
  v43[4] = -1;
  v43[6] = 0;
  v44 = 0;
  if ( v45[0] )
  {
    v45[0] = 0;
    NetStructMember::SetChanged((NetStructMember *)v43);
  }
  v43[0] = &off_9636D0;
  return (*(int (__fastcall **)(char *, _BYTE *))(*((_DWORD *)this + 330) + 28))((char *)this + 1320, v45);
}


// ===== 37418c PlayerInfo::PlayerInfo(void) =====
void __fastcall PlayerInfo::PlayerInfo(PlayerInfo *this)
{
  bool v2; // zf
  NetStructMember *v3; // r2
  bool v4; // zf
  int (**v5)(); // r1
  bool v6; // zf
  NetStructMember *v7; // r3
  bool v8; // zf
  int (**v9)(); // r1
  bool v10; // zf
  NetStructMember *v11; // r3
  bool v12; // zf
  int (**v13)(); // r1
  bool v14; // zf
  NetStructMember *v15; // r3
  bool v16; // zf
  int (**v17)(); // r1
  bool v18; // zf
  NetStructMember *v19; // r3
  bool v20; // zf
  int (**v21)(); // r1
  bool v22; // zf
  NetStructMember *v23; // r3
  int v24; // r3
  NetStructMember *v25; // r1
  int v26; // r3
  NetStructMember *v27; // r1
  bool v28; // zf
  NetStructMember *v29; // r3
  char *v30; // r7
  int v31; // r3
  int i; // r6
  int v33; // r1
  void (*v34)(CNetPlayerInfo *); // r2
  NetStructMember *v35; // [sp+0h] [bp-8Ch]
  NetStructMember *v36; // [sp+4h] [bp-88h]
  NetStructMember *v37; // [sp+8h] [bp-84h]
  NetStructMember *v38; // [sp+Ch] [bp-80h]
  NetStructMember *v39; // [sp+10h] [bp-7Ch]
  NetStructMember *v40; // [sp+14h] [bp-78h]
  NetStructMember *v41; // [sp+2Ch] [bp-60h]
  NetStructMember *v42; // [sp+30h] [bp-5Ch]
  NetStructMember *v43; // [sp+34h] [bp-58h]
  NetStructMember *v44; // [sp+38h] [bp-54h]
  NetStructMember *v45; // [sp+3Ch] [bp-50h]
  NetStructMember *v46; // [sp+40h] [bp-4Ch]
  NetStructMember *v47; // [sp+44h] [bp-48h]
  NetStructMember *v48; // [sp+48h] [bp-44h]
  void *v49[2]; // [sp+50h] [bp-3Ch] BYREF
  void *v50[2]; // [sp+58h] [bp-34h] BYREF
  void *p[2]; // [sp+60h] [bp-2Ch] BYREF
  std::string v52; // [sp+6Ch] [bp-20h] BYREF

  CNetPlayerInfo::CNetPlayerInfo(this);
  v2 = *((_DWORD *)this + 170) == 0;
  v3 = nullptr;
  *((_QWORD *)this + 82) = 0;
  *(_DWORD *)this = off_963938;
  *((_DWORD *)this + 168) = 0;
  *((_BYTE *)this + 676) = 0;
  if ( v2 )
    v3 = (PlayerInfo *)((char *)this + 648);
  *((_DWORD *)this + 163) = 8;
  *((_DWORD *)this + 167) = -1;
  *((_DWORD *)this + 162) = &off_963618;
  *((_DWORD *)this + 166) = -1;
  if ( v2 )
  {
    v43 = v3;
  }
  else
  {
    v43 = (PlayerInfo *)((char *)this + 648);
    *((_DWORD *)this + 170) = v3;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 648));
  }
  *((_DWORD *)this + 162) = &off_9637F0;
  std::string::string(&v52, "");
  NetStructString<32u>::NetStructString((int)this + 688, &v52);
  std::string::~string(&v52);
  v4 = *((_DWORD *)this + 194) == 0;
  v5 = &off_963618;
  *((_QWORD *)this + 94) = 0;
  *((_DWORD *)this + 186) = &off_963618;
  if ( v4 )
    v5 = (int (**)())((char *)this + 744);
  *((_DWORD *)this + 187) = 16;
  *((_DWORD *)this + 191) = -1;
  *((_DWORD *)this + 190) = -1;
  *((_DWORD *)this + 192) = 0;
  *((_BYTE *)this + 772) = 0;
  if ( v4 )
  {
    v48 = (NetStructMember *)v5;
  }
  else
  {
    v48 = (PlayerInfo *)((char *)this + 744);
    *((_DWORD *)this + 194) = 0;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 744));
  }
  v6 = *((_DWORD *)this + 204) == 0;
  v7 = nullptr;
  *((_QWORD *)this + 99) = 0;
  *((_DWORD *)this + 186) = &off_963730;
  *((_DWORD *)this + 202) = 0;
  *((_BYTE *)this + 812) = 0;
  if ( v6 )
    v7 = (PlayerInfo *)((char *)this + 784);
  *((_DWORD *)this + 197) = 16;
  *((_DWORD *)this + 201) = -1;
  *((_DWORD *)this + 196) = &off_963618;
  *((_DWORD *)this + 200) = -1;
  if ( v6 )
  {
    v42 = v7;
  }
  else
  {
    v42 = (PlayerInfo *)((char *)this + 784);
    *((_DWORD *)this + 204) = v7;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 784));
  }
  v8 = *((_DWORD *)this + 214) == 0;
  v9 = &off_963618;
  *((_QWORD *)this + 104) = 0;
  *((_DWORD *)this + 196) = &off_963730;
  *((_DWORD *)this + 206) = &off_963618;
  if ( v8 )
    v9 = (int (**)())((char *)this + 824);
  *((_DWORD *)this + 207) = 16;
  *((_DWORD *)this + 211) = -1;
  *((_DWORD *)this + 210) = -1;
  *((_DWORD *)this + 212) = 0;
  *((_BYTE *)this + 852) = 0;
  if ( v8 )
  {
    v44 = (NetStructMember *)v9;
  }
  else
  {
    v44 = (PlayerInfo *)((char *)this + 824);
    *((_DWORD *)this + 214) = 0;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 824));
  }
  v10 = *((_DWORD *)this + 224) == 0;
  v11 = nullptr;
  *((_QWORD *)this + 109) = 0;
  *((_DWORD *)this + 206) = &off_963730;
  *((_DWORD *)this + 222) = 0;
  *((_BYTE *)this + 892) = 0;
  if ( v10 )
    v11 = (PlayerInfo *)((char *)this + 864);
  *((_DWORD *)this + 217) = 16;
  *((_DWORD *)this + 221) = -1;
  *((_DWORD *)this + 216) = &off_963618;
  *((_DWORD *)this + 220) = -1;
  if ( v10 )
  {
    v46 = v11;
  }
  else
  {
    v46 = (PlayerInfo *)((char *)this + 864);
    *((_DWORD *)this + 224) = v11;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 864));
  }
  v12 = *((_DWORD *)this + 234) == -1;
  v13 = &off_963618;
  *((_QWORD *)this + 114) = 0;
  *((_DWORD *)this + 216) = &off_963730;
  *((_DWORD *)this + 226) = &off_963618;
  if ( v12 )
    v13 = (int (**)())((char *)this + 904);
  *((_DWORD *)this + 227) = 16;
  *((_BYTE *)this + 932) = 0;
  *((_DWORD *)this + 230) = -1;
  *((_DWORD *)this + 231) = -1;
  *((_DWORD *)this + 232) = 0;
  if ( v12 )
  {
    v47 = (NetStructMember *)v13;
  }
  else
  {
    v47 = (PlayerInfo *)((char *)this + 904);
    *((_DWORD *)this + 234) = -1;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 904));
  }
  *((_DWORD *)this + 226) = &off_963730;
  p[0] = nullptr;
  p[1] = nullptr;
  NetStructByteArray<36u>::NetStructByteArray((int)this + 944, (int)p);
  if ( p[0] )
  {
    CustomFree(p[0]);
    p[0] = nullptr;
  }
  v50[0] = nullptr;
  v50[1] = nullptr;
  NetStructByteArray<3u>::NetStructByteArray((int)this + 984, (int)v50);
  if ( v50[0] )
  {
    CustomFree(v50[0]);
    v50[0] = nullptr;
  }
  v49[0] = nullptr;
  v49[1] = nullptr;
  NetStructByteArray<30u>::NetStructByteArray((int)this + 1024, (int)v49);
  if ( v49[0] )
  {
    CustomFree(v49[0]);
    v49[0] = nullptr;
  }
  v14 = *((_DWORD *)this + 274) == 0;
  v15 = nullptr;
  *((_QWORD *)this + 134) = 0;
  *((_DWORD *)this + 272) = 0;
  *((_BYTE *)this + 1092) = 0;
  if ( v14 )
    v15 = (PlayerInfo *)((char *)this + 1064);
  *((_DWORD *)this + 267) = 32;
  *((_DWORD *)this + 271) = -1;
  *((_DWORD *)this + 266) = &off_963618;
  *((_DWORD *)this + 270) = -1;
  if ( v14 )
  {
    v40 = v15;
  }
  else
  {
    v40 = (PlayerInfo *)((char *)this + 1064);
    *((_DWORD *)this + 274) = v15;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 1064));
  }
  v16 = *((_DWORD *)this + 284) == 0;
  v17 = &off_963618;
  *((_QWORD *)this + 139) = 0;
  *((_DWORD *)this + 266) = &off_9635E8;
  *((_DWORD *)this + 276) = &off_963618;
  if ( v16 )
    v17 = (int (**)())((char *)this + 1104);
  *((_DWORD *)this + 277) = 32;
  *((_DWORD *)this + 281) = -1;
  *((_DWORD *)this + 280) = -1;
  *((_DWORD *)this + 282) = 0;
  *((_BYTE *)this + 1132) = 0;
  if ( v16 )
  {
    v41 = (NetStructMember *)v17;
  }
  else
  {
    v41 = (PlayerInfo *)((char *)this + 1104);
    *((_DWORD *)this + 284) = 0;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 1104));
  }
  v18 = *((_DWORD *)this + 294) == 0;
  v19 = nullptr;
  *((_QWORD *)this + 144) = 0;
  *((_DWORD *)this + 292) = 0;
  *((_BYTE *)this + 1172) = 0;
  if ( v18 )
    v19 = (PlayerInfo *)((char *)this + 1136);
  *((_DWORD *)this + 276) = &off_9635E8;
  if ( v18 )
    v19 = (NetStructMember *)((char *)v19 + 8);
  *((_DWORD *)this + 287) = 32;
  *((_DWORD *)this + 291) = -1;
  *((_DWORD *)this + 286) = &off_963618;
  *((_DWORD *)this + 290) = -1;
  if ( v18 )
  {
    v37 = v19;
  }
  else
  {
    v37 = (PlayerInfo *)((char *)this + 1144);
    *((_DWORD *)this + 294) = v19;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 1144));
  }
  v20 = *((_DWORD *)this + 304) == 0;
  v21 = &off_963618;
  *((_QWORD *)this + 149) = 0;
  *((_DWORD *)this + 286) = &off_9635E8;
  *((_DWORD *)this + 296) = &off_963618;
  if ( v20 )
    v21 = (int (**)())((char *)this + 1184);
  *((_DWORD *)this + 297) = 32;
  *((_DWORD *)this + 301) = -1;
  *((_DWORD *)this + 300) = -1;
  *((_DWORD *)this + 302) = 0;
  *((_BYTE *)this + 1212) = 0;
  if ( v20 )
  {
    v45 = (NetStructMember *)v21;
  }
  else
  {
    v45 = (PlayerInfo *)((char *)this + 1184);
    *((_DWORD *)this + 304) = 0;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 1184));
  }
  v22 = *((_BYTE *)this + 1253) == 0;
  v23 = nullptr;
  *((_QWORD *)this + 154) = 0;
  *((_DWORD *)this + 312) = 0;
  *((_BYTE *)this + 1252) = 0;
  if ( v22 )
    v23 = (PlayerInfo *)((char *)this + 1216);
  *((_DWORD *)this + 296) = &off_9635E8;
  if ( v22 )
    v23 = (NetStructMember *)((char *)v23 + 8);
  *((_DWORD *)this + 307) = 1;
  *((_DWORD *)this + 311) = -1;
  *((_DWORD *)this + 306) = &off_963700;
  *((_DWORD *)this + 310) = -1;
  if ( v22 )
  {
    v39 = v23;
  }
  else
  {
    v39 = (PlayerInfo *)((char *)this + 1224);
    *((_BYTE *)this + 1253) = (_BYTE)v23;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 1224));
  }
  v24 = *((unsigned __int8 *)this + 1285);
  v25 = nullptr;
  *((_QWORD *)this + 158) = 0;
  if ( !v24 )
    v25 = (PlayerInfo *)((char *)this + 1256);
  *((_DWORD *)this + 306) = &off_9636D0;
  *((_DWORD *)this + 315) = 1;
  *((_DWORD *)this + 319) = -1;
  *((_DWORD *)this + 314) = &off_963700;
  *((_DWORD *)this + 318) = -1;
  *((_DWORD *)this + 320) = 0;
  *((_BYTE *)this + 1284) = 0;
  if ( v24 )
  {
    v35 = (PlayerInfo *)((char *)this + 1256);
    *((_BYTE *)this + 1285) = 0;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 1256));
  }
  else
  {
    v35 = v25;
  }
  v26 = *((unsigned __int8 *)this + 1317);
  v27 = nullptr;
  *((_QWORD *)this + 162) = 0;
  if ( !v26 )
    v27 = (PlayerInfo *)((char *)this + 1288);
  *((_DWORD *)this + 314) = &off_9636D0;
  *((_DWORD *)this + 323) = 1;
  *((_DWORD *)this + 327) = -1;
  *((_DWORD *)this + 322) = &off_963700;
  *((_DWORD *)this + 326) = -1;
  *((_DWORD *)this + 328) = 0;
  *((_BYTE *)this + 1316) = 0;
  if ( v26 )
  {
    v36 = (PlayerInfo *)((char *)this + 1288);
    *((_BYTE *)this + 1317) = 0;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 1288));
  }
  else
  {
    v36 = v27;
  }
  v28 = *((_BYTE *)this + 1349) == 0;
  v29 = nullptr;
  *((_QWORD *)this + 166) = 0;
  *((_DWORD *)this + 336) = 0;
  *((_BYTE *)this + 1348) = 0;
  if ( v28 )
    v29 = (PlayerInfo *)((char *)this + 1312);
  *((_DWORD *)this + 322) = &off_9636D0;
  if ( v28 )
    v29 = (NetStructMember *)((char *)v29 + 8);
  *((_DWORD *)this + 331) = 1;
  *((_DWORD *)this + 335) = -1;
  *((_DWORD *)this + 330) = &off_963700;
  *((_DWORD *)this + 334) = -1;
  if ( v28 )
  {
    v38 = v29;
  }
  else
  {
    v38 = (PlayerInfo *)((char *)this + 1320);
    *((_BYTE *)this + 1349) = (_BYTE)v29;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 1320));
  }
  *((_DWORD *)this + 330) = &off_9636D0;
  v30 = (char *)this + 1352;
  do
  {
    v31 = *((_DWORD *)v30 + 8);
    *((_DWORD *)v30 + 1) = 16;
    *((_QWORD *)v30 + 1) = 0;
    *((_DWORD *)v30 + 4) = -1;
    *((_DWORD *)v30 + 5) = -1;
    *((_DWORD *)v30 + 6) = 0;
    v30[28] = 0;
    *(_DWORD *)v30 = &off_963618;
    if ( v31 )
    {
      *((_DWORD *)v30 + 8) = 0;
      NetStructMember::SetChanged((NetStructMember *)v30);
    }
    *(_DWORD *)v30 = &off_963730;
    v30 += 40;
  }
  while ( v30 != (char *)this + 1632 );
  if ( (`guard variable for'PlayerInfo::PlayerInfo(void)::s_register & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'PlayerInfo::PlayerInfo(void)::s_register) )
  {
    CNetPlayerManager::RegisterPlayerInfoFunctions(
      (CNetPlayerManager *)PlayerInfo::Create,
      (CNetPlayerInfo *(*)())PlayerInfo::Delete,
      v34);
    _cxa_guard_release(&`guard variable for'PlayerInfo::PlayerInfo(void)::s_register);
  }
  NetStruct::DeclareMember(this, v43);
  NetStruct::DeclareMember(this, v42);
  NetStruct::DeclareMember(this, v44);
  NetStruct::DeclareMember(this, v46);
  NetStruct::DeclareMember(this, (PlayerInfo *)((char *)this + 688));
  NetStruct::DeclareMember(this, v47);
  NetStruct::DeclareMember(this, v48);
  NetStruct::DeclareMember(this, (PlayerInfo *)((char *)this + 944));
  NetStruct::DeclareMember(this, (PlayerInfo *)((char *)this + 984));
  NetStruct::DeclareMember(this, (PlayerInfo *)((char *)this + 1024));
  NetStruct::DeclareMember(this, v40);
  NetStruct::DeclareMember(this, v41);
  NetStruct::DeclareMember(this, v37);
  NetStruct::DeclareMember(this, v45);
  NetStruct::DeclareMember(this, v39);
  NetStruct::DeclareMember(this, v35);
  NetStruct::DeclareMember(this, v36);
  NetStruct::DeclareMember(this, v38);
  for ( i = 0; i != 7; ++i )
  {
    v33 = 40 * i + 1352;
    NetStruct::DeclareMember(this, (PlayerInfo *)((char *)this + v33));
  }
  PlayerInfo::Reset(this);
}


// ===== 374b28 PlayerManager::PlayerManager(void) =====
void __fastcall PlayerManager::PlayerManager(PlayerManager *this)
{
  *(_DWORD *)this = off_963928;
  PlayerInfo::PlayerInfo((PlayerManager *)((char *)this + 8));
  *((_DWORD *)this + 421) = 0;
  *((_BYTE *)this + 1680) = 0;
  *((_DWORD *)this + 423) = (char *)this + 1680;
  *((_DWORD *)this + 435) = -1;
  *((_DWORD *)this + 439) = 0;
  *((_DWORD *)this + 422) = (char *)this + 1680;
  *((_DWORD *)this + 424) = 0;
  *((_DWORD *)this + 426) = 0;
  *((_DWORD *)this + 427) = 0;
  *((_DWORD *)this + 428) = 0;
  *((_DWORD *)this + 429) = 0;
  *((_DWORD *)this + 430) = 0;
  *((_DWORD *)this + 431) = 0;
  *((_DWORD *)this + 432) = 0;
  *((_DWORD *)this + 433) = 0;
  *((_BYTE *)this + 1737) = 0;
  *((_BYTE *)this + 1738) = 0;
  *((_BYTE *)this + 1739) = 0;
  *((_BYTE *)this + 1744) = 0;
  *((_DWORD *)this + 437) = 0;
  *((_DWORD *)this + 438) = 0;
  StreamBuffer::StreamBuffer((PlayerManager *)((char *)this + 1760));
  *((_BYTE *)this + 1819) = 0;
  *((_BYTE *)this + 1808) = 0;
  *((_BYTE *)this + 1809) = 0;
  *((_DWORD *)this + 453) = 0;
  *((_BYTE *)this + 1816) = 0;
  *((_BYTE *)this + 1817) = 0;
  *((_BYTE *)this + 1818) = 0;
}


// ===== 374be4 PlayerManager::PlayerManager(void) =====
void __fastcall PlayerManager::PlayerManager(PlayerManager *this)
{
  *(_DWORD *)this = off_963928;
  PlayerInfo::PlayerInfo((PlayerManager *)((char *)this + 8));
  *((_DWORD *)this + 421) = 0;
  *((_BYTE *)this + 1680) = 0;
  *((_DWORD *)this + 423) = (char *)this + 1680;
  *((_DWORD *)this + 435) = -1;
  *((_DWORD *)this + 439) = 0;
  *((_DWORD *)this + 422) = (char *)this + 1680;
  *((_DWORD *)this + 424) = 0;
  *((_DWORD *)this + 426) = 0;
  *((_DWORD *)this + 427) = 0;
  *((_DWORD *)this + 428) = 0;
  *((_DWORD *)this + 429) = 0;
  *((_DWORD *)this + 430) = 0;
  *((_DWORD *)this + 431) = 0;
  *((_DWORD *)this + 432) = 0;
  *((_DWORD *)this + 433) = 0;
  *((_BYTE *)this + 1737) = 0;
  *((_BYTE *)this + 1738) = 0;
  *((_BYTE *)this + 1739) = 0;
  *((_BYTE *)this + 1744) = 0;
  *((_DWORD *)this + 437) = 0;
  *((_DWORD *)this + 438) = 0;
  StreamBuffer::StreamBuffer((PlayerManager *)((char *)this + 1760));
  *((_BYTE *)this + 1819) = 0;
  *((_BYTE *)this + 1808) = 0;
  *((_BYTE *)this + 1809) = 0;
  *((_DWORD *)this + 453) = 0;
  *((_BYTE *)this + 1816) = 0;
  *((_BYTE *)this + 1817) = 0;
  *((_BYTE *)this + 1818) = 0;
}


// ===== 374ca0 PlayerInfo::Create(void) =====
PlayerInfo *__fastcall PlayerInfo::Create(PlayerInfo *this)
{
  PlayerInfo *v1; // r4

  v1 = (PlayerInfo *)operator new(0x688u, 0);
  PlayerInfo::PlayerInfo(v1);
  return v1;
}


// ===== 374cc0 PlayerInfo::PlayerInfo(void) =====
void __fastcall PlayerInfo::PlayerInfo(PlayerInfo *this)
{
  bool v2; // zf
  NetStructMember *v3; // r2
  bool v4; // zf
  int (**v5)(); // r1
  bool v6; // zf
  NetStructMember *v7; // r3
  bool v8; // zf
  int (**v9)(); // r1
  bool v10; // zf
  NetStructMember *v11; // r3
  bool v12; // zf
  int (**v13)(); // r1
  bool v14; // zf
  NetStructMember *v15; // r3
  bool v16; // zf
  int (**v17)(); // r1
  bool v18; // zf
  NetStructMember *v19; // r3
  bool v20; // zf
  int (**v21)(); // r1
  bool v22; // zf
  NetStructMember *v23; // r3
  int v24; // r3
  NetStructMember *v25; // r1
  int v26; // r3
  NetStructMember *v27; // r1
  bool v28; // zf
  NetStructMember *v29; // r3
  char *v30; // r7
  int v31; // r3
  int i; // r6
  int v33; // r1
  void (*v34)(CNetPlayerInfo *); // r2
  NetStructMember *v35; // [sp+0h] [bp-8Ch]
  NetStructMember *v36; // [sp+4h] [bp-88h]
  NetStructMember *v37; // [sp+8h] [bp-84h]
  NetStructMember *v38; // [sp+Ch] [bp-80h]
  NetStructMember *v39; // [sp+10h] [bp-7Ch]
  NetStructMember *v40; // [sp+14h] [bp-78h]
  NetStructMember *v41; // [sp+2Ch] [bp-60h]
  NetStructMember *v42; // [sp+30h] [bp-5Ch]
  NetStructMember *v43; // [sp+34h] [bp-58h]
  NetStructMember *v44; // [sp+38h] [bp-54h]
  NetStructMember *v45; // [sp+3Ch] [bp-50h]
  NetStructMember *v46; // [sp+40h] [bp-4Ch]
  NetStructMember *v47; // [sp+44h] [bp-48h]
  NetStructMember *v48; // [sp+48h] [bp-44h]
  void *v49[2]; // [sp+50h] [bp-3Ch] BYREF
  void *v50[2]; // [sp+58h] [bp-34h] BYREF
  void *p[2]; // [sp+60h] [bp-2Ch] BYREF
  std::string v52; // [sp+6Ch] [bp-20h] BYREF

  CNetPlayerInfo::CNetPlayerInfo(this);
  v2 = *((_DWORD *)this + 170) == 0;
  v3 = nullptr;
  *((_QWORD *)this + 82) = 0;
  *(_DWORD *)this = off_963938;
  *((_DWORD *)this + 168) = 0;
  *((_BYTE *)this + 676) = 0;
  if ( v2 )
    v3 = (PlayerInfo *)((char *)this + 648);
  *((_DWORD *)this + 163) = 8;
  *((_DWORD *)this + 167) = -1;
  *((_DWORD *)this + 162) = &off_963618;
  *((_DWORD *)this + 166) = -1;
  if ( v2 )
  {
    v41 = v3;
  }
  else
  {
    v41 = (PlayerInfo *)((char *)this + 648);
    *((_DWORD *)this + 170) = v3;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 648));
  }
  *((_DWORD *)this + 162) = &off_9637F0;
  std::string::string(&v52, "");
  NetStructString<32u>::NetStructString((int)this + 688, &v52);
  std::string::~string(&v52);
  v4 = *((_DWORD *)this + 194) == 0;
  v5 = &off_963618;
  *((_QWORD *)this + 94) = 0;
  *((_DWORD *)this + 186) = &off_963618;
  if ( v4 )
    v5 = (int (**)())((char *)this + 744);
  *((_DWORD *)this + 187) = 16;
  *((_DWORD *)this + 191) = -1;
  *((_DWORD *)this + 190) = -1;
  *((_DWORD *)this + 192) = 0;
  *((_BYTE *)this + 772) = 0;
  if ( v4 )
  {
    v46 = (NetStructMember *)v5;
  }
  else
  {
    v46 = (PlayerInfo *)((char *)this + 744);
    *((_DWORD *)this + 194) = 0;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 744));
  }
  v6 = *((_DWORD *)this + 204) == 0;
  v7 = nullptr;
  *((_QWORD *)this + 99) = 0;
  *((_DWORD *)this + 186) = &off_963730;
  *((_DWORD *)this + 202) = 0;
  *((_BYTE *)this + 812) = 0;
  if ( v6 )
    v7 = (PlayerInfo *)((char *)this + 784);
  *((_DWORD *)this + 197) = 16;
  *((_DWORD *)this + 201) = -1;
  *((_DWORD *)this + 196) = &off_963618;
  *((_DWORD *)this + 200) = -1;
  if ( v6 )
  {
    v48 = v7;
  }
  else
  {
    v48 = (PlayerInfo *)((char *)this + 784);
    *((_DWORD *)this + 204) = v7;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 784));
  }
  v8 = *((_DWORD *)this + 214) == 0;
  v9 = &off_963618;
  *((_QWORD *)this + 104) = 0;
  *((_DWORD *)this + 196) = &off_963730;
  *((_DWORD *)this + 206) = &off_963618;
  if ( v8 )
    v9 = (int (**)())((char *)this + 824);
  *((_DWORD *)this + 207) = 16;
  *((_DWORD *)this + 211) = -1;
  *((_DWORD *)this + 210) = -1;
  *((_DWORD *)this + 212) = 0;
  *((_BYTE *)this + 852) = 0;
  if ( v8 )
  {
    v42 = (NetStructMember *)v9;
  }
  else
  {
    v42 = (PlayerInfo *)((char *)this + 824);
    *((_DWORD *)this + 214) = 0;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 824));
  }
  v10 = *((_DWORD *)this + 224) == 0;
  v11 = nullptr;
  *((_QWORD *)this + 109) = 0;
  *((_DWORD *)this + 206) = &off_963730;
  *((_DWORD *)this + 222) = 0;
  *((_BYTE *)this + 892) = 0;
  if ( v10 )
    v11 = (PlayerInfo *)((char *)this + 864);
  *((_DWORD *)this + 217) = 16;
  *((_DWORD *)this + 221) = -1;
  *((_DWORD *)this + 216) = &off_963618;
  *((_DWORD *)this + 220) = -1;
  if ( v10 )
  {
    v44 = v11;
  }
  else
  {
    v44 = (PlayerInfo *)((char *)this + 864);
    *((_DWORD *)this + 224) = v11;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 864));
  }
  v12 = *((_DWORD *)this + 234) == -1;
  v13 = &off_963618;
  *((_QWORD *)this + 114) = 0;
  *((_DWORD *)this + 216) = &off_963730;
  *((_DWORD *)this + 226) = &off_963618;
  if ( v12 )
    v13 = (int (**)())((char *)this + 904);
  *((_DWORD *)this + 227) = 16;
  *((_BYTE *)this + 932) = 0;
  *((_DWORD *)this + 230) = -1;
  *((_DWORD *)this + 231) = -1;
  *((_DWORD *)this + 232) = 0;
  if ( v12 )
  {
    v45 = (NetStructMember *)v13;
  }
  else
  {
    v45 = (PlayerInfo *)((char *)this + 904);
    *((_DWORD *)this + 234) = -1;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 904));
  }
  *((_DWORD *)this + 226) = &off_963730;
  p[0] = nullptr;
  p[1] = nullptr;
  NetStructByteArray<36u>::NetStructByteArray((int)this + 944, (int)p);
  if ( p[0] )
  {
    CustomFree(p[0]);
    p[0] = nullptr;
  }
  v50[0] = nullptr;
  v50[1] = nullptr;
  NetStructByteArray<3u>::NetStructByteArray((int)this + 984, (int)v50);
  if ( v50[0] )
  {
    CustomFree(v50[0]);
    v50[0] = nullptr;
  }
  v49[0] = nullptr;
  v49[1] = nullptr;
  NetStructByteArray<30u>::NetStructByteArray((int)this + 1024, (int)v49);
  if ( v49[0] )
  {
    CustomFree(v49[0]);
    v49[0] = nullptr;
  }
  v14 = *((_DWORD *)this + 274) == 0;
  v15 = nullptr;
  *((_QWORD *)this + 134) = 0;
  *((_DWORD *)this + 272) = 0;
  *((_BYTE *)this + 1092) = 0;
  if ( v14 )
    v15 = (PlayerInfo *)((char *)this + 1064);
  *((_DWORD *)this + 267) = 32;
  *((_DWORD *)this + 271) = -1;
  *((_DWORD *)this + 266) = &off_963618;
  *((_DWORD *)this + 270) = -1;
  if ( v14 )
  {
    v39 = v15;
  }
  else
  {
    v39 = (PlayerInfo *)((char *)this + 1064);
    *((_DWORD *)this + 274) = v15;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 1064));
  }
  v16 = *((_DWORD *)this + 284) == 0;
  v17 = &off_963618;
  *((_QWORD *)this + 139) = 0;
  *((_DWORD *)this + 266) = &off_9635E8;
  *((_DWORD *)this + 276) = &off_963618;
  if ( v16 )
    v17 = (int (**)())((char *)this + 1104);
  *((_DWORD *)this + 277) = 32;
  *((_DWORD *)this + 281) = -1;
  *((_DWORD *)this + 280) = -1;
  *((_DWORD *)this + 282) = 0;
  *((_BYTE *)this + 1132) = 0;
  if ( v16 )
  {
    v47 = (NetStructMember *)v17;
  }
  else
  {
    v47 = (PlayerInfo *)((char *)this + 1104);
    *((_DWORD *)this + 284) = 0;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 1104));
  }
  v18 = *((_DWORD *)this + 294) == 0;
  v19 = nullptr;
  *((_QWORD *)this + 144) = 0;
  *((_DWORD *)this + 292) = 0;
  *((_BYTE *)this + 1172) = 0;
  if ( v18 )
    v19 = (PlayerInfo *)((char *)this + 1136);
  *((_DWORD *)this + 276) = &off_9635E8;
  if ( v18 )
    v19 = (NetStructMember *)((char *)v19 + 8);
  *((_DWORD *)this + 287) = 32;
  *((_DWORD *)this + 291) = -1;
  *((_DWORD *)this + 286) = &off_963618;
  *((_DWORD *)this + 290) = -1;
  if ( v18 )
  {
    v36 = v19;
  }
  else
  {
    v36 = (PlayerInfo *)((char *)this + 1144);
    *((_DWORD *)this + 294) = v19;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 1144));
  }
  v20 = *((_DWORD *)this + 304) == 0;
  v21 = &off_963618;
  *((_QWORD *)this + 149) = 0;
  *((_DWORD *)this + 286) = &off_9635E8;
  *((_DWORD *)this + 296) = &off_963618;
  if ( v20 )
    v21 = (int (**)())((char *)this + 1184);
  *((_DWORD *)this + 297) = 32;
  *((_DWORD *)this + 301) = -1;
  *((_DWORD *)this + 300) = -1;
  *((_DWORD *)this + 302) = 0;
  *((_BYTE *)this + 1212) = 0;
  if ( v20 )
  {
    v43 = (NetStructMember *)v21;
  }
  else
  {
    v43 = (PlayerInfo *)((char *)this + 1184);
    *((_DWORD *)this + 304) = 0;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 1184));
  }
  v22 = *((_BYTE *)this + 1253) == 0;
  v23 = nullptr;
  *((_QWORD *)this + 154) = 0;
  *((_DWORD *)this + 312) = 0;
  *((_BYTE *)this + 1252) = 0;
  if ( v22 )
    v23 = (PlayerInfo *)((char *)this + 1216);
  *((_DWORD *)this + 296) = &off_9635E8;
  if ( v22 )
    v23 = (NetStructMember *)((char *)v23 + 8);
  *((_DWORD *)this + 307) = 1;
  *((_DWORD *)this + 311) = -1;
  *((_DWORD *)this + 306) = &off_963700;
  *((_DWORD *)this + 310) = -1;
  if ( v22 )
  {
    v38 = v23;
  }
  else
  {
    v38 = (PlayerInfo *)((char *)this + 1224);
    *((_BYTE *)this + 1253) = (_BYTE)v23;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 1224));
  }
  v24 = *((unsigned __int8 *)this + 1285);
  v25 = nullptr;
  *((_QWORD *)this + 158) = 0;
  if ( !v24 )
    v25 = (PlayerInfo *)((char *)this + 1256);
  *((_DWORD *)this + 306) = &off_9636D0;
  *((_DWORD *)this + 315) = 1;
  *((_DWORD *)this + 319) = -1;
  *((_DWORD *)this + 314) = &off_963700;
  *((_DWORD *)this + 318) = -1;
  *((_DWORD *)this + 320) = 0;
  *((_BYTE *)this + 1284) = 0;
  if ( v24 )
  {
    v40 = (PlayerInfo *)((char *)this + 1256);
    *((_BYTE *)this + 1285) = 0;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 1256));
  }
  else
  {
    v40 = v25;
  }
  v26 = *((unsigned __int8 *)this + 1317);
  v27 = nullptr;
  *((_QWORD *)this + 162) = 0;
  if ( !v26 )
    v27 = (PlayerInfo *)((char *)this + 1288);
  *((_DWORD *)this + 314) = &off_9636D0;
  *((_DWORD *)this + 323) = 1;
  *((_DWORD *)this + 327) = -1;
  *((_DWORD *)this + 322) = &off_963700;
  *((_DWORD *)this + 326) = -1;
  *((_DWORD *)this + 328) = 0;
  *((_BYTE *)this + 1316) = 0;
  if ( v26 )
  {
    v35 = (PlayerInfo *)((char *)this + 1288);
    *((_BYTE *)this + 1317) = 0;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 1288));
  }
  else
  {
    v35 = v27;
  }
  v28 = *((_BYTE *)this + 1349) == 0;
  v29 = nullptr;
  *((_QWORD *)this + 166) = 0;
  *((_DWORD *)this + 336) = 0;
  *((_BYTE *)this + 1348) = 0;
  if ( v28 )
    v29 = (PlayerInfo *)((char *)this + 1312);
  *((_DWORD *)this + 322) = &off_9636D0;
  if ( v28 )
    v29 = (NetStructMember *)((char *)v29 + 8);
  *((_DWORD *)this + 331) = 1;
  *((_DWORD *)this + 335) = -1;
  *((_DWORD *)this + 330) = &off_963700;
  *((_DWORD *)this + 334) = -1;
  if ( v28 )
  {
    v37 = v29;
  }
  else
  {
    v37 = (PlayerInfo *)((char *)this + 1320);
    *((_BYTE *)this + 1349) = (_BYTE)v29;
    NetStructMember::SetChanged((PlayerInfo *)((char *)this + 1320));
  }
  *((_DWORD *)this + 330) = &off_9636D0;
  v30 = (char *)this + 1352;
  do
  {
    v31 = *((_DWORD *)v30 + 8);
    *((_DWORD *)v30 + 1) = 16;
    *((_QWORD *)v30 + 1) = 0;
    *((_DWORD *)v30 + 4) = -1;
    *((_DWORD *)v30 + 5) = -1;
    *((_DWORD *)v30 + 6) = 0;
    v30[28] = 0;
    *(_DWORD *)v30 = &off_963618;
    if ( v31 )
    {
      *((_DWORD *)v30 + 8) = 0;
      NetStructMember::SetChanged((NetStructMember *)v30);
    }
    *(_DWORD *)v30 = &off_963730;
    v30 += 40;
  }
  while ( v30 != (char *)this + 1632 );
  if ( (`guard variable for'PlayerInfo::PlayerInfo(void)::s_register & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'PlayerInfo::PlayerInfo(void)::s_register) )
  {
    CNetPlayerManager::RegisterPlayerInfoFunctions(
      (CNetPlayerManager *)PlayerInfo::Create,
      (CNetPlayerInfo *(*)())PlayerInfo::Delete,
      v34);
    _cxa_guard_release(&`guard variable for'PlayerInfo::PlayerInfo(void)::s_register);
  }
  NetStruct::DeclareMember(this, v41);
  NetStruct::DeclareMember(this, v48);
  NetStruct::DeclareMember(this, v42);
  NetStruct::DeclareMember(this, v44);
  NetStruct::DeclareMember(this, (PlayerInfo *)((char *)this + 688));
  NetStruct::DeclareMember(this, v45);
  NetStruct::DeclareMember(this, v46);
  NetStruct::DeclareMember(this, (PlayerInfo *)((char *)this + 944));
  NetStruct::DeclareMember(this, (PlayerInfo *)((char *)this + 984));
  NetStruct::DeclareMember(this, (PlayerInfo *)((char *)this + 1024));
  NetStruct::DeclareMember(this, v39);
  NetStruct::DeclareMember(this, v47);
  NetStruct::DeclareMember(this, v36);
  NetStruct::DeclareMember(this, v43);
  NetStruct::DeclareMember(this, v38);
  NetStruct::DeclareMember(this, v40);
  NetStruct::DeclareMember(this, v35);
  NetStruct::DeclareMember(this, v37);
  for ( i = 0; i != 7; ++i )
  {
    v33 = 40 * i + 1352;
    NetStruct::DeclareMember(this, (PlayerInfo *)((char *)this + v33));
  }
  PlayerInfo::Reset(this);
}


// ===== 37565c PlayerManager::ReviveLocalPlayers(bool) =====
void __fastcall PlayerManager::ReviveLocalPlayers(PlayerManager *this, int a2)
{
  VoxSoundManager *v2; // r4
  int SavedOption; // r0
  int v4; // r8
  int v5; // r6
  _DWORD *v6; // r7
  int v7; // r9
  Character *v8; // r0
  _DWORD *ERj_veneer; // r0
  _DWORD *v10; // r3
  _DWORD *v11; // r3
  CharStateMachine *v12; // r0
  ItemInventory *v13; // r6
  int NumPotions; // r9
  _DWORD *v15; // r0
  _DWORD *v16; // r6
  VoxSoundManager *v17; // r4
  int v18; // r0
  int v19; // r2
  float *TargetPosition; // r0
  _DWORD *v21; // r7
  int Constant; // r0
  _DWORD *HostingPlayer; // r7
  float *v24; // r3
  Level *CurrentLevel; // r0
  Character *v26; // [sp+Ch] [bp-58h]
  float v29[3]; // [sp+30h] [bp-34h] BYREF
  float v30; // [sp+3Ch] [bp-28h] BYREF
  float v31; // [sp+40h] [bp-24h]
  float v32; // [sp+44h] [bp-20h]
  _BYTE v33[12]; // [sp+48h] [bp-1Ch] BYREF
  _DWORD *v34; // [sp+54h] [bp-10h] BYREF
  _DWORD **v35; // [sp+58h] [bp-Ch]
  size_t v36[2]; // [sp+5Ch] [bp-8h] BYREF

  *((_BYTE *)this + 1809) = 0;
  *((_DWORD *)this + 453) = 0;
  if ( !*(_BYTE *)(GetOnline() + 5) )
  {
    CurrentLevel = (Level *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    Level::LoadCheckpoint(CurrentLevel);
  }
  v2 = (VoxSoundManager *)VoxSoundManager::s_instance;
  SavedOption = Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "VolumeFX");
  VoxSoundManager::SetSoundVolume(v2, 1, (float)SavedOption);
  v4 = 0;
  if ( (int)PlayerManager::GetNumLocalPlayers((PlayerManager *)dword_99F76C, 0) > 0 )
  {
    while ( 1 )
    {
      v5 = *(_DWORD *)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, v4, 0) + 1632);
      if ( !v5 )
        goto LABEL_25;
      CharProperties::PROPS_RemoveAllBuffs((CharProperties *)(v5 + 1376));
      v34 = &v34;
      v35 = &v34;
      v6 = *(_DWORD **)(dword_99F764 + 20);
      v7 = dword_99F764 + 12;
LABEL_6:
      if ( (_DWORD *)v7 != v6 )
        break;
LABEL_16:
      if ( !*(_BYTE *)(GetOnline() + 5) || PlayerManager::IsLocalPlayerHosting(this) && a2 )
      {
        v30 = *(float *)(v5 + 5236);
        v31 = *(float *)(v5 + 5240);
        v32 = *(float *)(v5 + 5244);
        if ( !Point3D<float>::operator==(&v30) )
        {
          GameObject::SetPosition((GameObject *)v5, &v30, 1);
          GameObject::GetLookAtVec(v5, &v30);
          TargetPosition = (float *)GameObject::GetTargetPosition((GameObject *)v5);
          v30 = v30 + *TargetPosition;
          v31 = v31 + TargetPosition[1];
          v21 = v34;
          v32 = v32 + TargetPosition[2];
          while ( v21 != &v34 )
          {
            GameObject::SetPosition((GameObject *)v21[2], &v30, 1);
            v21 = (_DWORD *)*v21;
          }
        }
      }
      else
      {
        HostingPlayer = (_DWORD *)PlayerManager::GetHostingPlayer(this);
        if ( (*(int (**)(void))(*HostingPlayer + 92))() )
        {
          v24 = (float *)HostingPlayer[408];
          if ( v24 )
          {
            v29[0] = v24[88];
            v29[1] = v24[89];
            v29[2] = v24[90];
            if ( !Point3D<float>::operator==(v29) )
            {
              GameObject::SetPosition((GameObject *)v5, v29, 1);
              GameObject::GetLookAtVec(v5, v29);
            }
          }
        }
      }
      *(_DWORD *)(v5 + 5284) = 0;
      Character::Revive((Character *)v5, nullptr, 1);
      v12 = (CharStateMachine *)(v5 + 1276);
      v13 = (ItemInventory *)(v5 + 892);
      CharStateMachine::SM_SetIdleState(v12, 0);
      NumPotions = ItemInventory::GetNumPotions(v13);
      if ( NumPotions < PyDataConstants::getConstant(
                          (PyDataConstants *)dword_99F758,
                          "CharacterDesign",
                          "MinimumPotionsOnDeath") )
      {
        Constant = PyDataConstants::getConstant(
                     (PyDataConstants *)dword_99F758,
                     "CharacterDesign",
                     "MinimumPotionsOnDeath");
        ItemInventory::SetPotionQty(v13, Constant);
      }
      v15 = v34;
      if ( v34 != &v34 )
      {
        while ( 1 )
        {
          v16 = (_DWORD *)*v15;
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v15, 0xCu);
          if ( v16 == &v34 )
            break;
          v15 = v16;
        }
      }
      v35 = &v34;
      v34 = &v34;
LABEL_25:
      if ( ++v4 >= PlayerManager::GetNumLocalPlayers((PlayerManager *)dword_99F76C, 0) )
        goto LABEL_26;
    }
    while ( 1 )
    {
      if ( !v6[11] )
        goto LABEL_11;
      ObjectBase::GetHandle((ObjectBase *)v33);
      v8 = (Character *)ObjectHandle::operator Character *(v33);
      if ( !v8 )
        goto LABEL_11;
      v26 = v8;
      if ( Character::IsFaerie(v8) || v5 == *((_DWORD *)v26 + 262) )
        break;
      v11 = (_DWORD *)v6[3];
      if ( !v11 )
      {
LABEL_29:
        v19 = v6[1];
        if ( v6 == *(_DWORD **)(v19 + 12) )
        {
          do
          {
            v6 = (_DWORD *)v19;
            v19 = *(_DWORD *)(v19 + 4);
          }
          while ( *(_DWORD **)(v19 + 12) == v6 );
          v11 = (_DWORD *)v6[3];
        }
        if ( v11 != (_DWORD *)v19 )
          v6 = (_DWORD *)v19;
        goto LABEL_6;
      }
LABEL_14:
      while ( v11[2] )
        v11 = (_DWORD *)v11[2];
      v6 = v11;
      if ( (_DWORD *)v7 == v11 )
        goto LABEL_16;
    }
    v36[0] = 12;
    ERj_veneer = __ZNSt12__node_alloc11_M_allocateERj_veneer(v36);
    ERj_veneer[2] = v26;
    v10 = v35;
    *ERj_veneer = &v34;
    ERj_veneer[1] = v10;
    *v10 = ERj_veneer;
    v35 = (_DWORD **)ERj_veneer;
LABEL_11:
    v11 = (_DWORD *)v6[3];
    if ( !v11 )
      goto LABEL_29;
    goto LABEL_14;
  }
LABEL_26:
  VoxSoundManager::StopAllMusic((VoxSoundManager *)VoxSoundManager::s_instance, 2);
  v17 = (VoxSoundManager *)VoxSoundManager::s_instance;
  v18 = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  VoxSoundManager::PlayMusic(v17, *(_DWORD *)(v18 + 284), 1, 0, 1000);
}


// ===== 375af0 PlayerManager::_HandleGlobalDeaths(void) =====
void __fastcall PlayerManager::_HandleGlobalDeaths(PlayerManager *this)
{
  int v2; // r3
  int v3; // r3
  int v4; // r3
  int v5; // r6
  MenuBase *MenuByName; // r0
  InfoHUDManager *IsVisible; // r0
  int Instance; // r0
  InfoHUDManager *v9; // r0
  int *LocalPlayer; // r0
  CNetPlayerInfo *v11; // r4
  int v12; // r4
  int v13; // r7
  bool v14; // cc
  int v15; // r1
  PlayerManager *v16; // r0
  int v17; // r3
  int v18; // r1
  float *v19; // r7
  Level *v20; // r0
  GameObject *v21; // r7
  Level *CurrentLevel; // r0
  Level *v23; // r0
  int SpawnPoint; // r0
  int v25; // r0
  float v26[3]; // [sp+4h] [bp-Ch] BYREF

  switch ( *((_DWORD *)this + 453) )
  {
    case 0:
      *((_DWORD *)this + 453) = 1;
      MenuByName = (MenuBase *)MenuManager::GetMenuByName((MenuManager *)dword_99F780, "menu_FadeToBlackScreen");
      IsVisible = (InfoHUDManager *)MenuBase::IsVisible(MenuByName);
      if ( !IsVisible )
      {
        Instance = MenuManager::GetInstance(nullptr);
        (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(Instance + 244) + 56))(*(_DWORD *)(Instance + 244), 1);
        MenuManager::PushMenu((MenuManager *)dword_99F780, "menu_FadeToBlackScreen");
        IsVisible = (InfoHUDManager *)VoxSoundManager::SetSoundVolume(
                                        (VoxSoundManager *)VoxSoundManager::s_instance,
                                        1,
                                        0.0);
      }
      *((_BYTE *)this + 1809) = 0;
      v9 = (InfoHUDManager *)InfoHUDManager::GetInstance(IsVisible);
      InfoHUDManager::HideLocalDeathTimer(v9);
      return;
    case 2:
      LocalPlayer = (int *)PlayerManager::GetLocalPlayer(this, 0, 0);
      v11 = (CNetPlayerInfo *)LocalPlayer;
      if ( LocalPlayer[234] >= 0 )
      {
        PlayerInfo::SetCharacterDeathTimer((PlayerInfo *)LocalPlayer, -1);
        if ( !CNetPlayerInfo::IsHost(v11) )
        {
          v21 = *(GameObject **)(PlayerManager::GetLocalPlayer(this, 0, 1) + 1632);
          if ( v21 )
          {
            CurrentLevel = (Level *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
            if ( Level::GetSpawnPoint(CurrentLevel) )
            {
              v23 = (Level *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
              SpawnPoint = Level::GetSpawnPoint(v23);
              GameObject::SetPosition(v21, (float *)(SpawnPoint + 352), 1);
            }
            Character::SG_RedoQuestSync(v21);
          }
          *(_BYTE *)(dword_99F764 + 352) = 0;
          v25 = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
          if ( v25 )
            GameEventManager::ReInit(*(GameEventManager **)(v25 + 404));
          ObjectManager::ObjectReInit((ObjectManager *)dword_99F764);
        }
      }
      v12 = 0;
      v13 = 1;
      while ( 1 )
      {
        v14 = v12 < PlayerManager::GetNumPlayers(this);
        v15 = v12;
        v16 = this;
        if ( !v14 )
          break;
        while ( 1 )
        {
          v17 = *(_DWORD *)(PlayerManager::GetPlayer(v16, v15, 0) + 1632);
          v18 = v12++;
          if ( !v17 )
            break;
          v13 &= *(_DWORD *)(PlayerManager::GetPlayer(this, v18, 0) + 936) >> 31;
          v14 = v12 < PlayerManager::GetNumPlayers(this);
          v15 = v12;
          v16 = this;
          if ( !v14 )
            goto LABEL_19;
        }
      }
LABEL_19:
      if ( v13 )
      {
        *((_DWORD *)this + 453) = 3;
        v19 = *(float **)(PlayerManager::GetLocalPlayer(v16, 0, 1) + 1632);
        if ( PlayerManager::IsLocalPlayerHosting(this) && v19 )
          Character::SG_RedoQuestSync((Character *)v19);
        if ( PlayerManager::IsLocalPlayerHosting(this) )
        {
          v20 = (Level *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
          Level::LoadCheckpoint(v20);
          if ( v19 )
          {
            v26[0] = v19[1309];
            v26[1] = v19[1310];
            v26[2] = v19[1311];
            GameObject::SetPosition((GameObject *)v19, v26, 1);
          }
          ObjectManager::ForceFullUpdate((ObjectManager *)dword_99F764);
        }
      }
      return;
    case 3:
      if ( PlayerManager::IsLocalPlayerHosting(this) )
        goto LABEL_28;
      v2 = *(_DWORD *)(PlayerManager::GetLocalPlayer(this, 0, 1) + 1632);
      if ( v2 )
      {
        v3 = *(_DWORD *)(v2 + 5352);
        if ( !v3 )
          return;
        v4 = *(_BYTE *)(v3 + 20) & 1 & *(_BYTE *)(dword_99F764 + 352);
      }
      else
      {
        v4 = *(_BYTE *)(dword_99F764 + 352) & 1;
      }
      if ( v4 )
LABEL_28:
        *((_DWORD *)this + 453) = 4;
      return;
    case 4:
      *((_DWORD *)this + 453) = 5;
      PlayerManager::_HandleGlobalDeaths(void)::messageDisplayTimer = 2000;
      return;
    case 5:
      v5 = PlayerManager::_HandleGlobalDeaths(void)::messageDisplayTimer;
      PlayerManager::_HandleGlobalDeaths(void)::messageDisplayTimer = v5
                                                                    - Application::GetDt((Application *)&Singleton<Application>::s_inst);
      if ( PlayerManager::_HandleGlobalDeaths(void)::messageDisplayTimer < 0 )
      {
        MenuManager::PopMenu((MenuManager *)dword_99F780, "menu_FadeToBlackScreen");
        MenuManager::PushMenu((MenuManager *)dword_99F780, "menu_FadeFromBlackScreen");
        PlayerManager::ReviveLocalPlayers(this, 1);
        *((_BYTE *)this + 1816) = 0;
      }
      return;
    default:
      return;
  }
}


// ===== 375eb4 PlayerManager::_CheckGlobalDeaths(void) =====
void __fastcall PlayerManager::_CheckGlobalDeaths(PlayerManager *this)
{
  int CurrentLevel; // r0
  int v3; // r4
  int v4; // r6
  int v5; // r3
  int Player; // r0
  CMessaging *v7; // r4
  bool v8; // r2
  CMessage *Message; // r0

  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( !CurrentLevel || *(_DWORD *)(CurrentLevel + 304) != 38 || !*(_BYTE *)(GetOnline() + 5) )
    return;
  v3 = 0;
  v4 = PlayerManager::GetNumPlayers(this) != 0;
  while ( v3 < PlayerManager::GetNumPlayers(this) )
  {
    v5 = *(_DWORD *)(PlayerManager::GetPlayer(this, v3, 0) + 1632);
    if ( !v5 )
    {
      v4 = 0;
      goto LABEL_12;
    }
    if ( (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 52))(v5) )
    {
      v4 &= 1u;
LABEL_12:
      ++v3;
    }
    else
    {
      Player = PlayerManager::GetPlayer(this, v3, 0);
      v4 &= 1u;
      ++v3;
      if ( *(int *)(Player + 936) < 0 )
        v4 = 0;
    }
  }
  if ( v4 )
  {
    if ( !*((_DWORD *)this + 453) )
    {
      v7 = (CMessaging *)CMessaging::Get(this);
      Message = (CMessage *)CMessage::CreateMessage((CMessage *)"CMsgGlobalDeath", (const char *)&dword_0 + 1, v8);
      CMessaging::SendMsg(v7, Message);
    }
LABEL_20:
    PlayerManager::_HandleGlobalDeaths(this);
  }
  else if ( *((_DWORD *)this + 453) )
  {
    goto LABEL_20;
  }
}


// ===== 375fe8 PlayerManager::_HandleLocalDeaths(void) =====
void __fastcall PlayerManager::_HandleLocalDeaths(PlayerManager *this)
{
  int LocalPlayer; // r0
  int v3; // r7
  PlayerInfo *v4; // r8
  int v5; // r1
  MenuBase *MenuByName; // r0
  InfoHUDManager *v7; // r0
  InfoHUDManager *Instance; // r0
  InfoHUDManager *v9; // r0
  InfoHUDManager *v10; // r0

  if ( *(_BYTE *)(GetOnline() + 5) )
  {
    if ( !*((_DWORD *)this + 453) )
    {
      if ( *((_BYTE *)this + 1809) )
      {
        LocalPlayer = PlayerManager::GetLocalPlayer(this, *((_DWORD *)this + 453), *((_DWORD *)this + 453));
        v3 = *(_DWORD *)(LocalPlayer + 936);
        v4 = (PlayerInfo *)LocalPlayer;
        v5 = v3 - Application::GetDt((Application *)&Singleton<Application>::s_inst);
        if ( v5 < 0 )
        {
          *((_BYTE *)this + 1809) = 0;
          v7 = (InfoHUDManager *)PlayerInfo::SetCharacterDeathTimer(v4, -1);
          Instance = (InfoHUDManager *)InfoHUDManager::GetInstance(v7);
          InfoHUDManager::HideLocalDeathTimer(Instance);
          PlayerManager::ReviveLocalPlayers(this, 0);
        }
        else
        {
          PlayerInfo::SetCharacterDeathTimer(v4, v5);
        }
      }
      else
      {
        *((_BYTE *)this + 1809) = 1;
        v9 = (InfoHUDManager *)PlayerManager::ResetCharacterDeathTimer(this);
        v10 = (InfoHUDManager *)InfoHUDManager::GetInstance(v9);
        InfoHUDManager::ShowLocalDeathTimer(v10);
      }
    }
  }
  else
  {
    MenuByName = (MenuBase *)MenuManager::GetMenuByName((MenuManager *)dword_99F780, "menu_FadeToBlackScreen");
    if ( !MenuBase::IsVisible(MenuByName) )
    {
      MenuManager::PushMenu((MenuManager *)dword_99F780, "menu_FadeToBlackScreen");
      VoxSoundManager::SetSoundVolume((VoxSoundManager *)VoxSoundManager::s_instance, 1, 0.0);
    }
  }
}


// ===== 376100 PlayerManager::_CheckLocalDeaths(void) =====
int __fastcall PlayerManager::_CheckLocalDeaths(PlayerManager *this)
{
  int result; // r0
  int v3; // r3

  result = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( result )
  {
    if ( *(_DWORD *)(result + 304) == 38 )
    {
      result = PlayerManager::GetLocalPlayer(this, 0, 0);
      v3 = *(_DWORD *)(result + 1632);
      if ( v3 )
      {
        result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 52))(*(_DWORD *)(result + 1632));
        if ( result )
        {
          if ( *((int *)this + 433) > 0 )
            return PlayerManager::_HandleLocalDeaths(this);
        }
      }
    }
  }
  return result;
}


// ===== 376188 std::allocator<OnlineStatusMsg>::allocate(uint,void const*) [clone] =====
void *std::allocator<OnlineStatusMsg>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 112;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 3761a8 std::deque<OnlineStatusMsg,std::allocator<OnlineStatusMsg>>::_M_push_back_aux_v(OnlineStatusMsg const&) =====
std::string *__fastcall std::deque<OnlineStatusMsg>::_M_push_back_aux_v(_DWORD *a1, const std::string *a2)
{
  char *v2; // r10
  int v3; // r2
  unsigned int v4; // r3
  std::string *v7; // r6
  std::string *result; // r0
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
      v18 = (char *)std::allocator<OnlineStatusMsg *>::allocate((int)(a1 + 8), v17);
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
          CustomFree(v22);
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
    a1[2] = *(_DWORD *)v15 + 112;
    a1[1] = v24;
    a1[7] = v2;
    v25 = *(_DWORD *)v2;
    a1[6] = *(_DWORD *)v2 + 112;
    a1[5] = v25;
  }
  *((_DWORD *)v2 + 1) = std::allocator<OnlineStatusMsg>::allocate();
  v7 = (std::string *)a1[4];
  result = std::string::string(v7, a2);
  v7[1]._M_buffers._M_end_of_storage = a2[1]._M_buffers._M_end_of_storage;
  v9 = (int *)(a1[7] + 4);
  a1[7] = v9;
  v10 = *v9;
  v11 = *v9 + 112;
  a1[4] = v10;
  a1[6] = v11;
  a1[5] = v10;
  return result;
}


// ===== 376338 std::deque<OnlineStatusMsg,std::allocator<OnlineStatusMsg>>::push_back(OnlineStatusMsg const&) =====
std::string *__fastcall std::deque<OnlineStatusMsg>::push_back(int a1, const std::string *a2)
{
  int v2; // r5
  std::string *result; // r0

  v2 = *(_DWORD *)(a1 + 16);
  if ( v2 == *(_DWORD *)(a1 + 24) - 28 )
    return std::deque<OnlineStatusMsg>::_M_push_back_aux_v((_DWORD *)a1, a2);
  result = std::string::string(*(std::string **)(a1 + 16), a2);
  *(_DWORD *)(v2 + 24) = a2[1]._M_buffers._M_end_of_storage;
  *(_DWORD *)(a1 + 16) += 28;
  return result;
}


// ===== 376380 PlayerManager::OnHostChangedNotification(int) =====
void __fastcall PlayerManager::OnHostChangedNotification(PlayerManager *this, int a2)
{
  char *PlayerByInternalID; // r6
  Character *v4; // r11
  int Constant; // r0
  char *PlayerName; // r0
  CMatching *HUDRoot; // r0
  int v8; // r0
  const CRoomAttributes *v9; // r0
  const std::string *v10; // r6
  const std::string *v11; // r1
  char *M_data; // r6
  CMatching *v13; // r0
  int v14; // r0
  int v15; // r0
  const char *v16; // r11
  MenuManager *Instance; // r0
  RenderFX *v18; // r10
  void *v19; // r0
  gameswf::character *Char; // r0
  CMatching *IsLocalPlayerHosting; // r0
  int v23; // r0
  const CRoomAttributes *v24; // r0
  const std::string *v25; // r6
  const std::string *v26; // r1
  char *v27; // r6
  CMatching *v28; // r0
  int v29; // r0
  int v30; // r0
  RenderFX *Root; // r0
  int v32; // [sp+0h] [bp-4ACh]
  char *v33; // [sp+4h] [bp-4A8h]
  char *v34; // [sp+8h] [bp-4A4h]
  StringManager *v35; // [sp+Ch] [bp-4A0h]
  StringManager *v36; // [sp+Ch] [bp-4A0h]
  std::string v37; // [sp+14h] [bp-498h] BYREF
  _DWORD v38[4]; // [sp+3B4h] [bp-F8h] BYREF
  _BYTE v39[4]; // [sp+3C4h] [bp-E8h] BYREF
  int v40; // [sp+3C8h] [bp-E4h]
  int v41; // [sp+3CCh] [bp-E0h]
  __int64 v42; // [sp+3D0h] [bp-DCh]
  std::string v43; // [sp+3E0h] [bp-CCh] BYREF
  std::string v44; // [sp+3FCh] [bp-B0h] BYREF
  std::string v45; // [sp+414h] [bp-98h] BYREF
  std::string v46; // [sp+42Ch] [bp-80h] BYREF
  std::string v47; // [sp+444h] [bp-68h] BYREF
  std::string v48; // [sp+45Ch] [bp-50h] BYREF
  std::string v49; // [sp+474h] [bp-38h] BYREF
  std::string v50; // [sp+48Ch] [bp-20h] BYREF
  std::string v51; // 0:kr00_24.24

  PlayerByInternalID = PlayerManager::GetPlayerByInternalID(this, a2, 0);
  if ( !CNetPlayerInfo::IsHost((CNetPlayerInfo *)PlayerByInternalID) )
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
        "pInfo.IsHost()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\PlayerManager\\PlayerManager.cpp",
        2095);
    }
  }
  if ( Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) )
    *((_BYTE *)this + 1817) = 1;
  if ( (*(int (__fastcall **)(char *))(*(_DWORD *)PlayerByInternalID + 80))(PlayerByInternalID)
    && !PlayerByInternalID[1253] )
  {
    PlayerInfo::SetReadyToRoll((PlayerInfo *)PlayerByInternalID, (unsigned __int8)PlayerByInternalID[1253]);
    *((_DWORD *)this + 435) = -1;
    *((_BYTE *)this + 1739) = 0;
  }
  v4 = *((Character **)PlayerByInternalID + 408);
  if ( v4 )
  {
    v43._M_finish = (char *)&v43;
    v43._M_start_of_storage._M_data = (char *)&v43;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v43, 0x10u);
    *v43._M_finish = 0;
    v50._M_finish = (char *)&v50;
    v50._M_start_of_storage._M_data = (char *)&v50;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v50, 0x10u);
    *v50._M_finish = 0;
    v35 = (StringManager *)dword_99F760;
    Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "MENU_IS_NOW_HOST");
    LOBYTE(v35) = StringManager::getString(v35, Constant);
    v37._M_buffers._M_end_of_storage = (char *)dword_99F760;
    PlayerName = (char *)Character::SG_GetPlayerName(v4);
    std::string::string(&v49, PlayerName);
    v51._M_buffers._M_end_of_storage = v37._M_buffers._M_end_of_storage;
    *(_DWORD *)&v51._M_buffers._M_static_buf[4] = &v49;
    *(_DWORD *)&v51._M_buffers._M_static_buf[8] = 0;
    *(_DWORD *)&v51._M_buffers._M_static_buf[12] = v32;
    v51._M_finish = v33;
    v51._M_start_of_storage._M_data = v34;
    StringManager::formatForMulti(&v48, v51, (bool)v35);
    StringManager::parse(
      (StringManager *)v37._M_buffers._M_end_of_storage,
      &v50,
      (const char *)v36,
      v48._M_start_of_storage._M_data);
    std::string::~string(&v48);
    std::string::~string(&v49);
    std::string::_M_assign(&v43, v50._M_start_of_storage._M_data, v50._M_finish);
    std::deque<OnlineStatusMsg>::push_back((int)&dword_99FB34, &v43);
    v38[0] = dword_99FB34;
    v38[1] = dword_99FB38;
    v38[2] = dword_99FB3C;
    v38[3] = dword_99FB40;
    HUDRoot = (CMatching *)std::priv::_Deque_iterator_base<OnlineStatusMsg>::_M_subtract(&dword_99FB44, v38);
    if ( HUDRoot != (CMatching *)((char *)&dword_0 + 1) )
      goto LABEL_13;
    v16 = OnlineStatusMsg::s_StartFuncName[0];
    Instance = (MenuManager *)MenuManager::GetInstance((MenuManager *)((char *)&dword_0 + 1));
    HUDRoot = (CMatching *)MenuManager::GetHUDRoot(Instance);
    v18 = HUDRoot;
    if ( !HUDRoot )
      goto LABEL_13;
    if ( dword_9A5410 )
    {
      v19 = (void *)dword_9A540C;
      if ( *(_BYTE *)(dword_9A540C + 4) )
      {
LABEL_25:
        Char = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)&OnlineStatusMsg::s_NodeCachedChar);
        v42 = 0;
        v39[0] = 0;
        v39[1] = 2;
        v40 = 0;
        v41 = 0;
        RenderFX::InvokeASCallback(v18, Char, v16, (const gameswf::as_value *)v39, 1);
        HUDRoot = (CMatching *)gameswf::as_value::drop_refs((gameswf::as_value *)v39);
LABEL_13:
        v8 = CMatching::Get(HUDRoot);
        v9 = (const CRoomAttributes *)(*(int (__fastcall **)(int))(*(_DWORD *)v8 + 164))(v8);
        v10 = (const std::string *)(PlayerByInternalID + 720);
        CRoomAttributes::CRoomAttributes((CRoomAttributes *)&v37._M_buffers._M_static_buf[4], v9);
        std::string::string(&v47, v10);
        v11 = v10;
        M_data = v47._M_start_of_storage._M_data;
        std::string::string(&v46, v11);
        CRoomAttributes::SetAttributeBin(
          &v37._M_buffers._M_static_buf[4],
          3,
          M_data,
          v46._M_finish - v46._M_start_of_storage._M_data);
        std::string::~string(&v46);
        std::string::~string(&v47);
        v14 = CMatching::Get(v13);
        v15 = (*(int (__fastcall **)(int))(*(_DWORD *)v14 + 164))(v14);
        CRoomAttributes::operator=(v15, &v37._M_buffers._M_static_buf[4]);
        CRoomAttributes::~CRoomAttributes((CRoomAttributes *)&v37._M_buffers._M_static_buf[4]);
        std::string::~string(&v50);
        std::string::~string(&v43);
        goto LABEL_14;
      }
      if ( (*(_DWORD *)dword_9A540C)-- == 1 )
        gameswf::free_internal(v19);
      dword_9A5410 = 0;
      dword_9A540C = 0;
    }
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)&OnlineStatusMsg::s_NodeCachedChar,
      OnlineStatusMsg::s_NodeName[0],
      v18,
      nullptr);
    goto LABEL_25;
  }
  IsLocalPlayerHosting = (CMatching *)PlayerManager::IsLocalPlayerHosting(this);
  if ( IsLocalPlayerHosting )
  {
    IsLocalPlayerHosting = (CMatching *)MenuManager::GetRoot((MenuManager *)dword_99F780);
    if ( IsLocalPlayerHosting )
    {
      Root = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
      IsLocalPlayerHosting = (CMatching *)RenderFX::InvokeASCallback(
                                            Root,
                                            "menu_MultiplayerLobby",
                                            "PlayerBecameHost",
                                            nullptr,
                                            0);
    }
  }
  v23 = CMatching::Get(IsLocalPlayerHosting);
  v24 = (const CRoomAttributes *)(*(int (__fastcall **)(int))(*(_DWORD *)v23 + 164))(v23);
  v25 = (const std::string *)(PlayerByInternalID + 720);
  CRoomAttributes::CRoomAttributes((CRoomAttributes *)&v37._M_buffers._M_static_buf[4], v24);
  std::string::string(&v45, v25);
  v26 = v25;
  v27 = v45._M_start_of_storage._M_data;
  std::string::string(&v44, v26);
  CRoomAttributes::SetAttributeBin(
    &v37._M_buffers._M_static_buf[4],
    3,
    v27,
    v44._M_finish - v44._M_start_of_storage._M_data);
  std::string::~string(&v44);
  std::string::~string(&v45);
  v29 = CMatching::Get(v28);
  v30 = (*(int (__fastcall **)(int))(*(_DWORD *)v29 + 164))(v29);
  CRoomAttributes::operator=(v30, &v37._M_buffers._M_static_buf[4]);
  CRoomAttributes::~CRoomAttributes((CRoomAttributes *)&v37._M_buffers._M_static_buf[4]);
LABEL_14:
  if ( *((_DWORD *)this + 453) == 3 )
    *((_DWORD *)this + 453) = 2;
}


// ===== 3768ac `global constructor keyed to'.._.._sources_Core_PlayerManager_PlayerManager.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Core_PlayerManager_PlayerManager.cpp(CMessage *a1)
{
  CMessage *(*v1)(bool); // r2
  CMessage *(*v2)(bool); // r2
  CMessage *(*v3)(bool); // r2
  CMessage *(*v4)(bool); // r2
  CMessage *(*v5)(bool); // r2
  CMessage *(*v6)(bool); // r2
  CMessage *(*v7)(bool); // r2
  CMessage *(*v8)(bool); // r2
  CMessage *(*v9)(bool); // r2
  CMessage *(*v10)(bool); // r2
  CMessage *(*v11)(bool); // r2
  CMessage *(*v12)(bool); // r2
  CMessage *(*v13)(bool); // r2
  CMessage *v14; // r0
  int result; // r0
  int *v16; // r4
  int v17; // r0
  int v18; // r2
  void *v19; // r0
  int *v20; // r1
  int v21; // r0
  int v22; // r3
  int v23; // r6
  unsigned int v24; // r7
  int v25; // r12
  int v26; // r3
  int v27; // r6
  unsigned int v28; // r7
  int v29; // r12
  int v30; // r3
  int v31; // r6
  unsigned int v32; // r7
  int v33; // r12
  int v34; // r3
  int v35; // r6
  unsigned int v36; // r7
  int v37; // r12
  int v38; // r3
  int v39; // r6
  unsigned int v40; // r7
  int v41; // r12
  int v42; // r3
  unsigned int v43; // [sp+0h] [bp-14h]
  int v44; // [sp+4h] [bp-10h]
  size_t v45; // [sp+Ch] [bp-8h] BYREF

  dword_9A23A0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A239C = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A23A5 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A23A6 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A23A7 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A23A8 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A23A9 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A23AA = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A23AB = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A23AC = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A23AD = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A23AE = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A23AF = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A23B0 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A23B1 = (char)v14;
  result = CMessage::TerminateMessageRegistration(v14);
  byte_9A23B2 = result;
  if ( (`guard variable for'Singleton<PlayerStatManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<PlayerStatManager>::s_inst = 1;
    PlayerStatManager::PlayerStatManager((PlayerStatManager *)&Singleton<PlayerStatManager>::s_inst);
    result = _aeabi_atexit(&Singleton<PlayerStatManager>::s_inst, PlayerStatManager::~PlayerStatManager, &_dso_handle);
  }
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    result = _aeabi_atexit(&Singleton<Application>::s_inst, Application::~Application, &_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<StatusMsg,4>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<StatusMsg,4>>::s_inst = 1;
    Singleton<MenuMessageManager<StatusMsg,4>>::s_inst = (int)off_95B150;
    v16 = &dword_99FA90;
    do
    {
      *v16 = 0;
      v16[1] = 0;
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = 0;
      v16[5] = 0;
      v16[6] = 0;
      v16[7] = 0;
      v16[8] = 0;
      v16[9] = 8;
      v17 = std::allocator<StatusMsg *>::allocate(v16 + 8, 8, 0);
      v18 = v16[9];
      v16[8] = v17;
      v43 = (unsigned int)(v18 - 1) >> 1;
      v44 = v17;
      v45 = 112;
      v19 = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v45);
      v20 = (int *)(v44 + 4 * v43);
      *v20 = (int)v19;
      v16[3] = (int)v20;
      v21 = *v20;
      v16[7] = (int)v20;
      v16[1] = v21;
      v16[2] = v21 + 112;
      v22 = *v20;
      *v16 = v21;
      v16[6] = v22 + 112;
      v16[4] = v22;
      v16[5] = v22;
      v16 += 10;
    }
    while ( v16 != &Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst );
    result = _aeabi_atexit(
               &Singleton<MenuMessageManager<StatusMsg,4>>::s_inst,
               MenuMessageManager<StatusMsg,4>::~MenuMessageManager,
               &_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst = 1;
    dword_99FB34 = 0;
    dword_99FB38 = 0;
    dword_99FB3C = 0;
    dword_99FB40 = 0;
    dword_99FB44 = 0;
    dword_99FB48 = 0;
    dword_99FB4C = 0;
    dword_99FB50 = 0;
    dword_99FB54 = 0;
    dword_99FB58 = (int)&byte_8;
    Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst = (int)off_95B160;
    v23 = std::allocator<OnlineStatusMsg *>::allocate(&dword_99FB54, &byte_8, 0);
    dword_99FB54 = v23;
    v24 = (unsigned int)(dword_99FB58 - 1) >> 1;
    *(_DWORD *)(v23 + 4 * v24) = std::allocator<OnlineStatusMsg>::allocate(&dword_99FB58);
    dword_99FB40 = v23 + 4 * v24;
    v25 = *(_DWORD *)(v23 + 4 * v24);
    dword_99FB50 = v23 + 4 * v24;
    dword_99FB3C = v25 + 112;
    dword_99FB38 = v25;
    v26 = *(_DWORD *)(v23 + 4 * v24);
    dword_99FB4C = v26 + 112;
    dword_99FB34 = v25;
    dword_99FB44 = v26;
    dword_99FB48 = v26;
    result = _aeabi_atexit(
               &Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst,
               MenuMessageManager<OnlineStatusMsg,1>::~MenuMessageManager,
               &_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<TutorialMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<TutorialMsg,1>>::s_inst = 1;
    dword_99FB84 = (int)&byte_8;
    Singleton<MenuMessageManager<TutorialMsg,1>>::s_inst = (int)off_95B170;
    dword_99FB60 = 0;
    dword_99FB64 = 0;
    dword_99FB68 = 0;
    dword_99FB6C = 0;
    dword_99FB70 = 0;
    dword_99FB74 = 0;
    dword_99FB78 = 0;
    dword_99FB7C = 0;
    dword_99FB80 = 0;
    v27 = std::allocator<TutorialMsg *>::allocate(&dword_99FB80, &byte_8, 0);
    v45 = 128;
    dword_99FB80 = v27;
    v28 = (unsigned int)(dword_99FB84 - 1) >> 1;
    *(_DWORD *)(v27 + 4 * v28) = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v45);
    dword_99FB6C = v27 + 4 * v28;
    v29 = *(_DWORD *)(v27 + 4 * v28);
    dword_99FB7C = v27 + 4 * v28;
    dword_99FB68 = v29 + 128;
    dword_99FB64 = v29;
    v30 = *(_DWORD *)(v27 + 4 * v28);
    dword_99FB78 = v30 + 128;
    dword_99FB60 = v29;
    dword_99FB70 = v30;
    dword_99FB74 = v30;
    result = _aeabi_atexit(
               &Singleton<MenuMessageManager<TutorialMsg,1>>::s_inst,
               MenuMessageManager<TutorialMsg,1>::~MenuMessageManager,
               &_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<DialogMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<DialogMsg,1>>::s_inst = 1;
    dword_99FBB0 = (int)&byte_8;
    Singleton<MenuMessageManager<DialogMsg,1>>::s_inst = (int)off_95B180;
    dword_99FB8C = 0;
    dword_99FB90 = 0;
    dword_99FB94 = 0;
    dword_99FB98 = 0;
    dword_99FB9C = 0;
    dword_99FBA0 = 0;
    dword_99FBA4 = 0;
    dword_99FBA8 = 0;
    dword_99FBAC = 0;
    v31 = std::allocator<DialogMsg *>::allocate(&dword_99FBAC, &byte_8, 0);
    v45 = 76;
    dword_99FBAC = v31;
    v32 = (unsigned int)(dword_99FBB0 - 1) >> 1;
    *(_DWORD *)(v31 + 4 * v32) = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v45);
    dword_99FB98 = v31 + 4 * v32;
    v33 = *(_DWORD *)(v31 + 4 * v32);
    dword_99FBA8 = v31 + 4 * v32;
    dword_99FB94 = v33 + 76;
    dword_99FB90 = v33;
    v34 = *(_DWORD *)(v31 + 4 * v32);
    dword_99FBA4 = v34 + 76;
    dword_99FB8C = v33;
    dword_99FB9C = v34;
    dword_99FBA0 = v34;
    result = _aeabi_atexit(
               &Singleton<MenuMessageManager<DialogMsg,1>>::s_inst,
               MenuMessageManager<DialogMsg,1>::~MenuMessageManager,
               &_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst = 1;
    dword_99FBDC = (int)&byte_8;
    Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst = (int)off_95B190;
    dword_99FBB8 = 0;
    dword_99FBBC = 0;
    dword_99FBC0 = 0;
    dword_99FBC4 = 0;
    dword_99FBC8 = 0;
    dword_99FBCC = 0;
    dword_99FBD0 = 0;
    dword_99FBD4 = 0;
    dword_99FBD8 = 0;
    v35 = std::allocator<CharMenuTutorialMsg *>::allocate(&dword_99FBD8, &byte_8, 0);
    v45 = 104;
    dword_99FBD8 = v35;
    v36 = (unsigned int)(dword_99FBDC - 1) >> 1;
    *(_DWORD *)(v35 + 4 * v36) = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v45);
    dword_99FBC4 = v35 + 4 * v36;
    v37 = *(_DWORD *)(v35 + 4 * v36);
    dword_99FBD4 = v35 + 4 * v36;
    dword_99FBC0 = v37 + 104;
    dword_99FBBC = v37;
    v38 = *(_DWORD *)(v35 + 4 * v36);
    dword_99FBD0 = v38 + 104;
    dword_99FBB8 = v37;
    dword_99FBC8 = v38;
    dword_99FBCC = v38;
    result = _aeabi_atexit(
               &Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst,
               MenuMessageManager<CharMenuTutorialMsg,1>::~MenuMessageManager,
               &_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst = 1;
    dword_99FC08 = (int)&byte_8;
    Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst = (int)off_95B1A0;
    dword_99FBE4 = 0;
    dword_99FBE8 = 0;
    dword_99FBEC = 0;
    dword_99FBF0 = 0;
    dword_99FBF4 = 0;
    dword_99FBF8 = 0;
    dword_99FBFC = 0;
    dword_99FC00 = 0;
    dword_99FC04 = 0;
    v39 = std::allocator<AchievementMsg *>::allocate(&dword_99FC04, &byte_8, 0);
    v45 = 120;
    dword_99FC04 = v39;
    v40 = (unsigned int)(dword_99FC08 - 1) >> 1;
    *(_DWORD *)(v39 + 4 * v40) = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v45);
    dword_99FBF0 = v39 + 4 * v40;
    v41 = *(_DWORD *)(v39 + 4 * v40);
    dword_99FC00 = v39 + 4 * v40;
    dword_99FBEC = v41 + 120;
    dword_99FBE8 = v41;
    v42 = *(_DWORD *)(v39 + 4 * v40);
    dword_99FBFC = v42 + 120;
    dword_99FBE4 = v41;
    dword_99FBF4 = v42;
    dword_99FBF8 = v42;
    result = _aeabi_atexit(
               &Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst,
               MenuMessageManager<AchievementMsg,1>::~MenuMessageManager,
               &_dso_handle);
  }
  if ( (`guard variable for'Singleton<VisualFXManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<VisualFXManager>::s_inst = 1;
    VisualFXManager::VisualFXManager((VisualFXManager *)&Singleton<VisualFXManager>::s_inst);
    return _aeabi_atexit(&Singleton<VisualFXManager>::s_inst, VisualFXManager::~VisualFXManager, &_dso_handle);
  }
  return result;
}


// ===== 37715c std::allocator<std::priv::_Rb_tree_node<std::pair<int const,NetStruct::tPacketHistory>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<int const,NetStruct::tPacketHistory>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 40;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 37717c std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::_M_copy(std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::_M_copy(
        int a1,
        int a2,
        int a3)
{
  _DWORD *v6; // r0
  _DWORD *v7; // r10
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v11; // r1
  int v12; // r5
  _DWORD *v13; // r6
  _DWORD *v14; // r0
  int v15; // r1
  int v16; // r2
  int v17; // r3

  v6 = std::allocator<std::priv::_Rb_tree_node<std::pair<int const,NetStruct::tPacketHistory>>>::allocate();
  v6[4] = *(_DWORD *)(a2 + 16);
  v7 = v6;
  v8 = *(_DWORD *)(a2 + 28);
  v9 = *(_DWORD *)(a2 + 32);
  v10 = *(_DWORD *)(a2 + 36);
  v6[6] = *(_DWORD *)(a2 + 24);
  v6[7] = v8;
  v6[8] = v9;
  v6[9] = v10;
  v6[3] = 0;
  v6[2] = 0;
  LOBYTE(v10) = *(_BYTE *)a2;
  v6[1] = a3;
  *(_BYTE *)v6 = v10;
  v11 = *(_DWORD *)(a2 + 12);
  if ( v11 )
    v6[3] = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::_M_copy(
              a1,
              v11,
              v6);
  v12 = *(_DWORD *)(a2 + 8);
  if ( v12 )
  {
    v13 = v7;
    do
    {
      v14 = std::allocator<std::priv::_Rb_tree_node<std::pair<int const,NetStruct::tPacketHistory>>>::allocate();
      v14[4] = *(_DWORD *)(v12 + 16);
      v15 = *(_DWORD *)(v12 + 28);
      v16 = *(_DWORD *)(v12 + 32);
      v17 = *(_DWORD *)(v12 + 36);
      v14[6] = *(_DWORD *)(v12 + 24);
      v14[7] = v15;
      v14[8] = v16;
      v14[9] = v17;
      v14[2] = 0;
      v14[3] = 0;
      *(_BYTE *)v14 = *(_BYTE *)v12;
      v13[2] = v14;
      v14[1] = v13;
      v13 = v14;
      if ( *(_DWORD *)(v12 + 12) )
        v14[3] = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::_M_copy(
                   a1,
                   *(_DWORD *)(v12 + 12),
                   v14);
      v12 = *(_DWORD *)(v12 + 8);
    }
    while ( v12 );
  }
  return v7;
}


// ===== 377264 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::_Rb_tree(std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>> const&) =====
int __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::_Rb_tree(
        int a1,
        int a2)
{
  int v4; // r1
  _DWORD *v5; // r0
  _DWORD *v6; // r3
  _DWORD *v7; // r2
  _DWORD *v8; // r3

  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 4) = 0;
  *(_BYTE *)a1 = 0;
  *(_DWORD *)(a1 + 8) = a1;
  *(_DWORD *)(a1 + 12) = a1;
  v4 = *(_DWORD *)(a2 + 4);
  if ( v4 )
  {
    v5 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::_M_copy(
           a1,
           v4,
           a1);
    *(_DWORD *)(a1 + 4) = v5;
    v6 = v5;
    do
    {
      v7 = v6;
      v6 = (_DWORD *)v6[2];
    }
    while ( v6 );
    *(_DWORD *)(a1 + 8) = v7;
    do
    {
      v8 = v5;
      v5 = (_DWORD *)v5[3];
    }
    while ( v5 );
    *(_DWORD *)(a1 + 12) = v8;
  }
  *(_DWORD *)(a1 + 16) = *(_DWORD *)(a2 + 16);
  return a1;
}


// ===== 3772dc std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>>::_M_create_node(std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_create_node(
        int a1,
        _DWORD *a2)
{
  _DWORD *v3; // r4
  size_t v5; // [sp+4h] [bp-8h] BYREF

  v5 = 44;
  v3 = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v5);
  v3[4] = *a2;
  std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,NetStruct::tPacketHistory>,std::priv::_Select1st<std::pair<int const,NetStruct::tPacketHistory>>,std::priv::_MapTraitsT<std::pair<int const,NetStruct::tPacketHistory>>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>::_Rb_tree(
    (int)(v3 + 5),
    (int)(a2 + 1));
  v3[3] = 0;
  v3[2] = 0;
  return v3;
}


// ===== 377328 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>>::_M_copy(std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_copy(
        int a1,
        char *a2,
        int a3)
{
  _DWORD *node; // r0
  char v7; // r3
  _DWORD *v8; // r8
  int v9; // r1
  int v10; // r5
  _DWORD *v11; // r6
  _DWORD *v12; // r4

  node = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_create_node(
           a1,
           (_DWORD *)a2 + 4);
  v7 = *a2;
  node[1] = a3;
  v8 = node;
  *(_BYTE *)node = v7;
  v9 = *((_DWORD *)a2 + 3);
  if ( v9 )
    node[3] = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_copy(
                a1,
                v9,
                node);
  v10 = *((_DWORD *)a2 + 2);
  if ( v10 )
  {
    v11 = v8;
    do
    {
      v12 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_create_node(
              a1,
              (_DWORD *)(v10 + 16));
      *(_BYTE *)v12 = *(_BYTE *)v10;
      v11[2] = v12;
      v12[1] = v11;
      v11 = v12;
      if ( *(_DWORD *)(v10 + 12) )
        v12[3] = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_copy(
                   a1,
                   *(_DWORD *)(v10 + 12),
                   v12);
      v10 = *(_DWORD *)(v10 + 8);
    }
    while ( v10 );
  }
  return v8;
}


// ===== 3773d0 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>>::_Rb_tree(std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>> const&) =====
int __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_Rb_tree(
        int a1,
        int a2)
{
  char *v4; // r1
  _DWORD *v5; // r0
  _DWORD *v6; // r3
  _DWORD *v7; // r2
  _DWORD *v8; // r3

  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 4) = 0;
  *(_BYTE *)a1 = 0;
  *(_DWORD *)(a1 + 8) = a1;
  *(_DWORD *)(a1 + 12) = a1;
  v4 = *(char **)(a2 + 4);
  if ( v4 )
  {
    v5 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_copy(
           a1,
           v4,
           a1);
    *(_DWORD *)(a1 + 4) = v5;
    v6 = v5;
    do
    {
      v7 = v6;
      v6 = (_DWORD *)v6[2];
    }
    while ( v6 );
    *(_DWORD *)(a1 + 8) = v7;
    do
    {
      v8 = v5;
      v5 = (_DWORD *)v5[3];
    }
    while ( v5 );
    *(_DWORD *)(a1 + 12) = v8;
  }
  *(_DWORD *)(a1 + 16) = *(_DWORD *)(a2 + 16);
  return a1;
}


// ===== 377448 CNetPlayerInfo::CNetPlayerInfo(CNetPlayerInfo const&) =====
void __fastcall CNetPlayerInfo::CNetPlayerInfo(CNetPlayerInfo *this, const CNetPlayerInfo *a2)
{
  int v4; // r1
  int v5; // r1
  char v6; // r0
  int v7; // r0
  char v8; // r10
  int v9; // r10
  char v10; // r7
  int v11; // r2
  int v12; // r2
  int v13; // r2
  int v14; // r2
  char v15; // r3

  *(_DWORD *)this = off_9924D8;
  memcpy((char *)this + 4, (char *)a2 + 4, 0x100u);
  *((_DWORD *)this + 65) = *((_DWORD *)a2 + 65);
  *((_BYTE *)this + 264) = *((_BYTE *)a2 + 264);
  std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_Rb_tree(
    (int)this + 268,
    (int)a2 + 268);
  *((_BYTE *)this + 292) = *((_BYTE *)a2 + 292);
  *((_BYTE *)this + 293) = *((_BYTE *)a2 + 293);
  v4 = *((_DWORD *)a2 + 74);
  *((_DWORD *)this + 76) = &off_963648;
  *((_DWORD *)this + 74) = v4;
  *(_DWORD *)this = off_992370;
  *((_DWORD *)this + 77) = *((_DWORD *)a2 + 77);
  *((_QWORD *)this + 39) = *((_QWORD *)a2 + 39);
  *((_DWORD *)this + 80) = *((_DWORD *)a2 + 80);
  *((_DWORD *)this + 81) = *((_DWORD *)a2 + 81);
  *((_DWORD *)this + 82) = *((_DWORD *)a2 + 82);
  LOBYTE(v4) = *((_BYTE *)a2 + 332);
  *((_DWORD *)this + 76) = &off_963618;
  *((_BYTE *)this + 332) = v4;
  v5 = *((_DWORD *)a2 + 84);
  *((_DWORD *)this + 86) = &off_963648;
  *((_DWORD *)this + 84) = v5;
  *((_DWORD *)this + 76) = &off_9637C0;
  *((_DWORD *)this + 87) = *((_DWORD *)a2 + 87);
  *((_QWORD *)this + 44) = *((_QWORD *)a2 + 44);
  *((_DWORD *)this + 90) = *((_DWORD *)a2 + 90);
  *((_DWORD *)this + 91) = *((_DWORD *)a2 + 91);
  *((_DWORD *)this + 92) = *((_DWORD *)a2 + 92);
  v6 = *((_BYTE *)a2 + 372);
  *((_DWORD *)this + 86) = &off_963618;
  *((_BYTE *)this + 372) = v6;
  v7 = *((_DWORD *)a2 + 94);
  *((_DWORD *)this + 96) = &off_963648;
  *((_DWORD *)this + 86) = &off_9637F0;
  *((_DWORD *)this + 94) = v7;
  *((_DWORD *)this + 97) = *((_DWORD *)a2 + 97);
  *((_QWORD *)this + 49) = *((_QWORD *)a2 + 49);
  *((_DWORD *)this + 100) = *((_DWORD *)a2 + 100);
  *((_DWORD *)this + 101) = *((_DWORD *)a2 + 101);
  *((_DWORD *)this + 102) = *((_DWORD *)a2 + 102);
  v8 = *((_BYTE *)a2 + 412);
  *((_DWORD *)this + 96) = &off_963618;
  *((_BYTE *)this + 412) = v8;
  v9 = *((_DWORD *)a2 + 104);
  *((_DWORD *)this + 106) = &off_963648;
  *((_DWORD *)this + 104) = v9;
  *((_DWORD *)this + 96) = &off_9637C0;
  *((_DWORD *)this + 107) = *((_DWORD *)a2 + 107);
  *((_QWORD *)this + 54) = *((_QWORD *)a2 + 54);
  *((_DWORD *)this + 110) = *((_DWORD *)a2 + 110);
  *((_DWORD *)this + 111) = *((_DWORD *)a2 + 111);
  *((_DWORD *)this + 112) = *((_DWORD *)a2 + 112);
  v10 = *((_BYTE *)a2 + 452);
  *((_DWORD *)this + 106) = &off_963618;
  *((_BYTE *)this + 452) = v10;
  v11 = *((_DWORD *)a2 + 114);
  *((_DWORD *)this + 116) = &off_963648;
  *((_DWORD *)this + 106) = &off_963730;
  *((_DWORD *)this + 114) = v11;
  *((_DWORD *)this + 117) = *((_DWORD *)a2 + 117);
  *((_QWORD *)this + 59) = *((_QWORD *)a2 + 59);
  *((_DWORD *)this + 120) = *((_DWORD *)a2 + 120);
  *((_DWORD *)this + 121) = *((_DWORD *)a2 + 121);
  *((_DWORD *)this + 122) = *((_DWORD *)a2 + 122);
  LOBYTE(v11) = *((_BYTE *)a2 + 492);
  *((_DWORD *)this + 116) = &off_9636A0;
  *((_BYTE *)this + 492) = v11;
  v12 = *((_DWORD *)a2 + 124);
  *((_DWORD *)this + 116) = &off_963670;
  *((_DWORD *)this + 126) = &off_963648;
  *((_DWORD *)this + 124) = v12;
  *((_DWORD *)this + 127) = *((_DWORD *)a2 + 127);
  *((_QWORD *)this + 64) = *((_QWORD *)a2 + 64);
  *((_DWORD *)this + 130) = *((_DWORD *)a2 + 130);
  *((_DWORD *)this + 131) = *((_DWORD *)a2 + 131);
  *((_DWORD *)this + 132) = *((_DWORD *)a2 + 132);
  LOBYTE(v12) = *((_BYTE *)a2 + 532);
  *((_DWORD *)this + 126) = &off_9636A0;
  *((_BYTE *)this + 532) = v12;
  v13 = *((_DWORD *)a2 + 134);
  *((_DWORD *)this + 136) = &off_963648;
  *((_DWORD *)this + 126) = &off_963670;
  *((_DWORD *)this + 134) = v13;
  *((_DWORD *)this + 137) = *((_DWORD *)a2 + 137);
  *((_QWORD *)this + 69) = *((_QWORD *)a2 + 69);
  *((_DWORD *)this + 140) = *((_DWORD *)a2 + 140);
  *((_DWORD *)this + 141) = *((_DWORD *)a2 + 141);
  *((_DWORD *)this + 142) = *((_DWORD *)a2 + 142);
  LOBYTE(v13) = *((_BYTE *)a2 + 572);
  *((_DWORD *)this + 136) = &off_9636A0;
  *((_BYTE *)this + 572) = v13;
  v14 = *((_DWORD *)a2 + 144);
  *((_DWORD *)this + 136) = &off_963670;
  *((_DWORD *)this + 146) = &off_963648;
  *((_DWORD *)this + 144) = v14;
  *((_DWORD *)this + 147) = *((_DWORD *)a2 + 147);
  *((_QWORD *)this + 74) = *((_QWORD *)a2 + 74);
  *((_DWORD *)this + 150) = *((_DWORD *)a2 + 150);
  *((_DWORD *)this + 151) = *((_DWORD *)a2 + 151);
  *((_DWORD *)this + 152) = *((_DWORD *)a2 + 152);
  v15 = *((_BYTE *)a2 + 612);
  *((_DWORD *)this + 146) = &off_963790;
  *((_BYTE *)this + 612) = v15;
  std::string::string((std::string *)((char *)this + 616), (const std::string *)((char *)a2 + 616));
  *((_DWORD *)this + 146) = off_963760;
  *((_DWORD *)this + 160) = *((_DWORD *)a2 + 160);
}


// ===== 3777d0 PlayerInfo::PlayerInfo(PlayerInfo const&) =====
void __fastcall PlayerInfo::PlayerInfo(PlayerInfo *this, const PlayerInfo *a2)
{
  char v4; // r0
  int v5; // r0
  char v6; // lr
  int v7; // lr
  int v8; // r12
  char v9; // r1
  int v10; // r1
  int v11; // r2
  char v12; // r3
  int v13; // r3
  char v14; // r3
  char v15; // r3
  char v16; // r2
  int v17; // r2
  int v18; // r3
  char v19; // r10
  int v20; // r10
  int v21; // r8
  char v22; // r6
  char v23; // r6
  char *v24; // r2
  PlayerInfo *v25; // r3
  char v26; // r6
  int v27; // r6

  CNetPlayerInfo::CNetPlayerInfo(this, a2);
  *((_DWORD *)this + 162) = &off_963648;
  *(_DWORD *)this = off_963938;
  *((_DWORD *)this + 163) = *((_DWORD *)a2 + 163);
  *((_QWORD *)this + 82) = *((_QWORD *)a2 + 82);
  *((_DWORD *)this + 166) = *((_DWORD *)a2 + 166);
  *((_DWORD *)this + 167) = *((_DWORD *)a2 + 167);
  *((_DWORD *)this + 168) = *((_DWORD *)a2 + 168);
  v4 = *((_BYTE *)a2 + 676);
  *((_DWORD *)this + 162) = &off_963618;
  *((_BYTE *)this + 676) = v4;
  v5 = *((_DWORD *)a2 + 170);
  *((_DWORD *)this + 172) = &off_963648;
  *((_DWORD *)this + 162) = &off_9637F0;
  *((_DWORD *)this + 170) = v5;
  *((_DWORD *)this + 173) = *((_DWORD *)a2 + 173);
  *((_QWORD *)this + 87) = *((_QWORD *)a2 + 87);
  *((_DWORD *)this + 176) = *((_DWORD *)a2 + 176);
  *((_DWORD *)this + 177) = *((_DWORD *)a2 + 177);
  *((_DWORD *)this + 178) = *((_DWORD *)a2 + 178);
  *((_BYTE *)this + 716) = *((_BYTE *)a2 + 716);
  *((_DWORD *)this + 172) = &off_963790;
  std::string::string((std::string *)this + 30, (const std::string *)a2 + 30);
  *((_DWORD *)this + 186) = &off_963648;
  *((_DWORD *)this + 172) = off_963760;
  *((_DWORD *)this + 187) = *((_DWORD *)a2 + 187);
  *((_QWORD *)this + 94) = *((_QWORD *)a2 + 94);
  *((_DWORD *)this + 190) = *((_DWORD *)a2 + 190);
  *((_DWORD *)this + 191) = *((_DWORD *)a2 + 191);
  *((_DWORD *)this + 192) = *((_DWORD *)a2 + 192);
  v6 = *((_BYTE *)a2 + 772);
  *((_DWORD *)this + 186) = &off_963618;
  *((_BYTE *)this + 772) = v6;
  v7 = *((_DWORD *)a2 + 194);
  *((_DWORD *)this + 196) = &off_963648;
  *((_DWORD *)this + 186) = &off_963730;
  *((_DWORD *)this + 194) = v7;
  *((_DWORD *)this + 197) = *((_DWORD *)a2 + 197);
  *((_QWORD *)this + 99) = *((_QWORD *)a2 + 99);
  *((_DWORD *)this + 200) = *((_DWORD *)a2 + 200);
  *((_DWORD *)this + 201) = *((_DWORD *)a2 + 201);
  *((_DWORD *)this + 202) = *((_DWORD *)a2 + 202);
  *((_BYTE *)this + 812) = *((_BYTE *)a2 + 812);
  *((_DWORD *)this + 196) = &off_963618;
  v8 = *((_DWORD *)a2 + 204);
  *((_DWORD *)this + 206) = &off_963648;
  *((_DWORD *)this + 196) = &off_963730;
  *((_DWORD *)this + 204) = v8;
  *((_DWORD *)this + 207) = *((_DWORD *)a2 + 207);
  *((_QWORD *)this + 104) = *((_QWORD *)a2 + 104);
  *((_DWORD *)this + 210) = *((_DWORD *)a2 + 210);
  *((_DWORD *)this + 211) = *((_DWORD *)a2 + 211);
  *((_DWORD *)this + 212) = *((_DWORD *)a2 + 212);
  v9 = *((_BYTE *)a2 + 852);
  *((_DWORD *)this + 206) = &off_963618;
  *((_BYTE *)this + 852) = v9;
  v10 = *((_DWORD *)a2 + 214);
  *((_DWORD *)this + 216) = &off_963648;
  *((_DWORD *)this + 206) = &off_963730;
  *((_DWORD *)this + 214) = v10;
  *((_DWORD *)this + 217) = *((_DWORD *)a2 + 217);
  *((_QWORD *)this + 109) = *((_QWORD *)a2 + 109);
  *((_DWORD *)this + 220) = *((_DWORD *)a2 + 220);
  *((_DWORD *)this + 221) = *((_DWORD *)a2 + 221);
  *((_DWORD *)this + 222) = *((_DWORD *)a2 + 222);
  *((_BYTE *)this + 892) = *((_BYTE *)a2 + 892);
  *((_DWORD *)this + 216) = &off_963618;
  v11 = *((_DWORD *)a2 + 224);
  *((_DWORD *)this + 226) = &off_963648;
  *((_DWORD *)this + 216) = &off_963730;
  *((_DWORD *)this + 224) = v11;
  *((_DWORD *)this + 227) = *((_DWORD *)a2 + 227);
  *((_QWORD *)this + 114) = *((_QWORD *)a2 + 114);
  *((_DWORD *)this + 230) = *((_DWORD *)a2 + 230);
  *((_DWORD *)this + 231) = *((_DWORD *)a2 + 231);
  *((_DWORD *)this + 232) = *((_DWORD *)a2 + 232);
  v12 = *((_BYTE *)a2 + 932);
  *((_DWORD *)this + 226) = &off_963618;
  *((_BYTE *)this + 932) = v12;
  v13 = *((_DWORD *)a2 + 234);
  *((_DWORD *)this + 236) = &off_963648;
  *((_DWORD *)this + 226) = &off_963730;
  *((_DWORD *)this + 234) = v13;
  *((_DWORD *)this + 237) = *((_DWORD *)a2 + 237);
  *((_QWORD *)this + 119) = *((_QWORD *)a2 + 119);
  *((_DWORD *)this + 240) = *((_DWORD *)a2 + 240);
  *((_DWORD *)this + 241) = *((_DWORD *)a2 + 241);
  *((_DWORD *)this + 242) = *((_DWORD *)a2 + 242);
  LOBYTE(v13) = *((_BYTE *)a2 + 972);
  *((_DWORD *)this + 236) = &off_963868;
  *((_DWORD *)this + 244) = 0;
  *((_BYTE *)this + 972) = v13;
  *((_DWORD *)this + 245) = 0;
  ByteArray::SetBuffer((PlayerInfo *)((char *)this + 976), *((const void **)a2 + 244), *((_DWORD *)a2 + 245));
  *((_DWORD *)this + 246) = &off_963648;
  *((_DWORD *)this + 236) = &off_963820;
  *((_DWORD *)this + 247) = *((_DWORD *)a2 + 247);
  *((_QWORD *)this + 124) = *((_QWORD *)a2 + 124);
  *((_DWORD *)this + 250) = *((_DWORD *)a2 + 250);
  *((_DWORD *)this + 251) = *((_DWORD *)a2 + 251);
  *((_DWORD *)this + 252) = *((_DWORD *)a2 + 252);
  v14 = *((_BYTE *)a2 + 1012);
  *((_DWORD *)this + 246) = &off_963868;
  *((_DWORD *)this + 254) = 0;
  *((_BYTE *)this + 1012) = v14;
  *((_DWORD *)this + 255) = 0;
  ByteArray::SetBuffer((PlayerInfo *)((char *)this + 1016), *((const void **)a2 + 254), *((_DWORD *)a2 + 255));
  *((_DWORD *)this + 256) = &off_963648;
  *((_DWORD *)this + 246) = &off_963898;
  *((_DWORD *)this + 257) = *((_DWORD *)a2 + 257);
  *((_QWORD *)this + 129) = *((_QWORD *)a2 + 129);
  *((_DWORD *)this + 260) = *((_DWORD *)a2 + 260);
  *((_DWORD *)this + 261) = *((_DWORD *)a2 + 261);
  *((_DWORD *)this + 262) = *((_DWORD *)a2 + 262);
  v15 = *((_BYTE *)a2 + 1052);
  *((_DWORD *)this + 256) = &off_963868;
  *((_DWORD *)this + 265) = 0;
  *((_BYTE *)this + 1052) = v15;
  *((_DWORD *)this + 264) = 0;
  ByteArray::SetBuffer((PlayerInfo *)((char *)this + 1056), *((const void **)a2 + 264), *((_DWORD *)a2 + 265));
  *((_DWORD *)this + 266) = &off_963648;
  *((_DWORD *)this + 256) = &off_9638E0;
  *((_DWORD *)this + 267) = *((_DWORD *)a2 + 267);
  *((_QWORD *)this + 134) = *((_QWORD *)a2 + 134);
  *((_DWORD *)this + 270) = *((_DWORD *)a2 + 270);
  *((_DWORD *)this + 271) = *((_DWORD *)a2 + 271);
  *((_DWORD *)this + 272) = *((_DWORD *)a2 + 272);
  v16 = *((_BYTE *)a2 + 1092);
  *((_DWORD *)this + 266) = &off_963618;
  *((_BYTE *)this + 1092) = v16;
  v17 = *((_DWORD *)a2 + 274);
  *((_DWORD *)this + 266) = &off_9635E8;
  *((_DWORD *)this + 276) = &off_963648;
  *((_DWORD *)this + 274) = v17;
  *((_DWORD *)this + 277) = *((_DWORD *)a2 + 277);
  *((_QWORD *)this + 139) = *((_QWORD *)a2 + 139);
  *((_DWORD *)this + 280) = *((_DWORD *)a2 + 280);
  *((_DWORD *)this + 281) = *((_DWORD *)a2 + 281);
  *((_DWORD *)this + 282) = *((_DWORD *)a2 + 282);
  LOBYTE(v17) = *((_BYTE *)a2 + 1132);
  *((_DWORD *)this + 276) = &off_963618;
  *((_BYTE *)this + 1132) = v17;
  v18 = *((_DWORD *)a2 + 284);
  *((_DWORD *)this + 286) = &off_963648;
  *((_DWORD *)this + 276) = &off_9635E8;
  *((_DWORD *)this + 284) = v18;
  *((_DWORD *)this + 287) = *((_DWORD *)a2 + 287);
  *((_QWORD *)this + 144) = *((_QWORD *)a2 + 144);
  *((_DWORD *)this + 290) = *((_DWORD *)a2 + 290);
  *((_DWORD *)this + 291) = *((_DWORD *)a2 + 291);
  *((_DWORD *)this + 292) = *((_DWORD *)a2 + 292);
  v19 = *((_BYTE *)a2 + 1172);
  *((_DWORD *)this + 286) = &off_963618;
  *((_BYTE *)this + 1172) = v19;
  v20 = *((_DWORD *)a2 + 294);
  *((_DWORD *)this + 286) = &off_9635E8;
  *((_DWORD *)this + 296) = &off_963648;
  *((_DWORD *)this + 294) = v20;
  *((_DWORD *)this + 297) = *((_DWORD *)a2 + 297);
  *((_QWORD *)this + 149) = *((_QWORD *)a2 + 149);
  *((_DWORD *)this + 300) = *((_DWORD *)a2 + 300);
  *((_DWORD *)this + 301) = *((_DWORD *)a2 + 301);
  *((_DWORD *)this + 302) = *((_DWORD *)a2 + 302);
  LOBYTE(v20) = *((_BYTE *)a2 + 1212);
  *((_DWORD *)this + 296) = &off_963618;
  *((_BYTE *)this + 1212) = v20;
  v21 = *((_DWORD *)a2 + 304);
  *((_DWORD *)this + 306) = &off_963648;
  *((_DWORD *)this + 296) = &off_9635E8;
  *((_DWORD *)this + 304) = v21;
  *((_DWORD *)this + 307) = *((_DWORD *)a2 + 307);
  *((_QWORD *)this + 154) = *((_QWORD *)a2 + 154);
  *((_DWORD *)this + 310) = *((_DWORD *)a2 + 310);
  *((_DWORD *)this + 311) = *((_DWORD *)a2 + 311);
  *((_DWORD *)this + 312) = *((_DWORD *)a2 + 312);
  LOBYTE(v20) = *((_BYTE *)a2 + 1252);
  *((_DWORD *)this + 306) = &off_963700;
  *((_BYTE *)this + 1252) = v20;
  LOBYTE(v20) = *((_BYTE *)a2 + 1253);
  *((_DWORD *)this + 314) = &off_963648;
  *((_DWORD *)this + 306) = &off_9636D0;
  *((_BYTE *)this + 1253) = v20;
  *((_DWORD *)this + 315) = *((_DWORD *)a2 + 315);
  *((_QWORD *)this + 158) = *((_QWORD *)a2 + 158);
  *((_DWORD *)this + 318) = *((_DWORD *)a2 + 318);
  *((_DWORD *)this + 319) = *((_DWORD *)a2 + 319);
  *((_DWORD *)this + 320) = *((_DWORD *)a2 + 320);
  LOBYTE(v20) = *((_BYTE *)a2 + 1284);
  *((_DWORD *)this + 314) = &off_963700;
  *((_BYTE *)this + 1284) = v20;
  LOBYTE(v20) = *((_BYTE *)a2 + 1285);
  *((_DWORD *)this + 322) = &off_963648;
  *((_DWORD *)this + 314) = &off_9636D0;
  *((_BYTE *)this + 1285) = v20;
  *((_DWORD *)this + 323) = *((_DWORD *)a2 + 323);
  *((_QWORD *)this + 162) = *((_QWORD *)a2 + 162);
  *((_DWORD *)this + 326) = *((_DWORD *)a2 + 326);
  *((_DWORD *)this + 327) = *((_DWORD *)a2 + 327);
  *((_DWORD *)this + 328) = *((_DWORD *)a2 + 328);
  LOBYTE(v20) = *((_BYTE *)a2 + 1316);
  *((_DWORD *)this + 322) = &off_963700;
  *((_BYTE *)this + 1316) = v20;
  LOBYTE(v20) = *((_BYTE *)a2 + 1317);
  *((_DWORD *)this + 322) = &off_9636D0;
  *((_DWORD *)this + 330) = &off_963648;
  *((_BYTE *)this + 1317) = v20;
  *((_DWORD *)this + 331) = *((_DWORD *)a2 + 331);
  *((_QWORD *)this + 166) = *((_QWORD *)a2 + 166);
  *((_DWORD *)this + 334) = *((_DWORD *)a2 + 334);
  *((_DWORD *)this + 335) = *((_DWORD *)a2 + 335);
  *((_DWORD *)this + 336) = *((_DWORD *)a2 + 336);
  v22 = *((_BYTE *)a2 + 1348);
  *((_DWORD *)this + 330) = &off_963700;
  *((_BYTE *)this + 1348) = v22;
  v23 = *((_BYTE *)a2 + 1349);
  *((_DWORD *)this + 330) = &off_9636D0;
  *((_BYTE *)this + 1349) = v23;
  v24 = (char *)a2 + 1352;
  v25 = (PlayerInfo *)((char *)this + 1392);
  do
  {
    *((_DWORD *)v25 - 10) = &off_963648;
    *((_DWORD *)v25 - 9) = *((_DWORD *)v24 + 1);
    *((_QWORD *)v25 - 4) = *((_QWORD *)v24 + 1);
    *((_DWORD *)v25 - 6) = *((_DWORD *)v24 + 4);
    *((_DWORD *)v25 - 5) = *((_DWORD *)v24 + 5);
    *((_DWORD *)v25 - 4) = *((_DWORD *)v24 + 6);
    v26 = v24[28];
    *((_DWORD *)v25 - 10) = &off_963618;
    *((_BYTE *)v25 - 12) = v26;
    v27 = *((_DWORD *)v24 + 8);
    *((_DWORD *)v25 - 10) = &off_963730;
    v24 += 40;
    *((_DWORD *)v25 - 2) = v27;
    v25 = (PlayerInfo *)((char *)v25 + 40);
  }
  while ( v25 != (PlayerInfo *)((char *)this + 1672) );
  *((_DWORD *)this + 408) = *((_DWORD *)a2 + 408);
  *((_DWORD *)this + 409) = *((_DWORD *)a2 + 409);
  *((_DWORD *)this + 410) = *((_DWORD *)a2 + 410);
  *((_BYTE *)this + 1644) = *((_BYTE *)a2 + 1644);
  *((_DWORD *)this + 412) = *((_DWORD *)a2 + 412);
  *((_DWORD *)this + 413) = *((_DWORD *)a2 + 413);
  *((_DWORD *)this + 414) = *((_DWORD *)a2 + 414);
  *((_DWORD *)this + 415) = *((_DWORD *)a2 + 415);
  *((_DWORD *)this + 416) = *((_DWORD *)a2 + 416);
  *((_DWORD *)this + 417) = *((_DWORD *)a2 + 417);
}


// ===== 377f34 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::_M_create_node(std::pair<int const,PlayerInfo> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::_M_create_node(
        int a1,
        _DWORD *a2)
{
  _DWORD *v3; // r4

  v3 = CustomAlloc(0x6A0u);
  v3[4] = *a2;
  PlayerInfo::PlayerInfo((PlayerInfo *)(v3 + 6), (const PlayerInfo *)(a2 + 2));
  v3[3] = 0;
  v3[2] = 0;
  return v3;
}


// ===== 377f70 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<int const,PlayerInfo> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::_M_insert(
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
    node = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( a6 || !a5 && *a4 >= a3[4] )
  {
    v9 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::_M_create_node(
           (int)a2,
           a4);
    a3[3] = v9;
    node = v9;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v9;
  }
  else
  {
    v12 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::_M_create_node(
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


// ===== 378048 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::insert_unique(std::pair<int const,PlayerInfo> const&) =====
int __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::insert_unique(
        int a1,
        _DWORD *a2,
        int *a3)
{
  _DWORD *v3; // r12
  int v6; // r6
  int v7; // r0
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::_M_insert(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::_M_insert(
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


// ===== 3781d0 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const,PlayerInfo>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>>,std::pair<int const,PlayerInfo> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::insert_unique(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD **a3,
        int *a4)
{
  _DWORD *v4; // r4
  _DWORD *v7; // r12
  int v8; // r2
  int v9; // r0
  int v10; // r8
  _DWORD *i; // r12
  int v13; // r2
  int v14; // r12
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::insert_unique(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::_M_insert(
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
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::_M_insert(
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
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::_M_insert(
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
              std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 378544 std::map<int,PlayerInfo,std::less<int>,std::allocator<std::pair<int const,PlayerInfo>>>::operator[]<int>(int const&) =====
_DWORD *__fastcall std::map<int,PlayerInfo>::operator[]<int>(_DWORD *a1, int *a2)
{
  _DWORD *v2; // r4
  int v5; // r1
  _DWORD *v6; // r2
  int v7; // r3
  bool v8; // cc
  _DWORD *v9; // r3
  _DWORD *v10; // r0
  _DWORD *v12; // r4
  _DWORD *v13; // [sp+0h] [bp-D28h] BYREF
  _DWORD *v14; // [sp+4h] [bp-D24h] BYREF
  int v15; // [sp+8h] [bp-D20h] BYREF
  std::string v16[69]; // [sp+10h] [bp-D18h] BYREF
  std::string v17[69]; // [sp+698h] [bp-690h] BYREF

  v2 = (_DWORD *)a1[1];
  if ( v2 )
  {
    v5 = *a2;
    v6 = a1;
    while ( 1 )
    {
      v7 = v2[4];
      v8 = v5 <= v7;
      if ( v5 <= v7 )
        v9 = (_DWORD *)v2[2];
      else
        v9 = (_DWORD *)v2[3];
      if ( !v8 )
        v2 = v6;
      if ( !v9 )
        break;
      v6 = v2;
      v2 = v9;
    }
  }
  else
  {
    v2 = a1;
  }
  if ( a1 == v2 || (v10 = v2, *a2 < v2[4]) )
  {
    PlayerInfo::PlayerInfo((PlayerInfo *)v17);
    v15 = *a2;
    PlayerInfo::PlayerInfo((PlayerInfo *)v16, (const PlayerInfo *)v17);
    v13 = v2;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,PlayerInfo>,std::priv::_Select1st<std::pair<int const,PlayerInfo>>,std::priv::_MapTraitsT<std::pair<int const,PlayerInfo>>,std::allocator<std::pair<int const,PlayerInfo>>>::insert_unique(
      &v14,
      a1,
      &v13,
      &v15);
    v12 = v14;
    PlayerInfo::~PlayerInfo(v16);
    PlayerInfo::~PlayerInfo(v17);
    v10 = v12;
  }
  return v10 + 6;
}


// ===== 378660 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>>::operator=(std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory,std::less<int>,std::allocator<std::pair<int const,NetStruct::tPacketHistory>>>>>> const&) =====
int *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::operator=(
        int *a1,
        int a2)
{
  char *v4; // r1
  _DWORD *v5; // r0
  _DWORD *v6; // r3
  int v7; // r2
  _DWORD *v8; // r3

  if ( a1 != (int *)a2 )
  {
    if ( a1[4] )
    {
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_erase(
        (int)a1,
        a1[1]);
      a1[4] = 0;
      a1[1] = 0;
      a1[2] = (int)a1;
      a1[3] = (int)a1;
    }
    a1[4] = 0;
    v4 = *(char **)(a2 + 4);
    if ( v4 )
    {
      v5 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_copy(
             (int)a1,
             v4,
             (int)a1);
      a1[1] = (int)v5;
      v6 = v5;
      do
      {
        v7 = (int)v6;
        v6 = (_DWORD *)v6[2];
      }
      while ( v6 );
      a1[2] = v7;
      do
      {
        v8 = v5;
        v5 = (_DWORD *)v5[3];
      }
      while ( v5 );
      a1[3] = (int)v8;
      a1[4] = *(_DWORD *)(a2 + 16);
    }
    else
    {
      a1[1] = 0;
      a1[2] = (int)a1;
      a1[3] = (int)a1;
    }
  }
  return a1;
}


// ===== 378708 CNetPlayerInfo::operator=(CNetPlayerInfo const&) =====
int __fastcall CNetPlayerInfo::operator=(int a1, int a2)
{
  int v4; // r3

  memcpy((void *)(a1 + 4), (const void *)(a2 + 4), 0x100u);
  *(_DWORD *)(a1 + 260) = *(_DWORD *)(a2 + 260);
  *(_BYTE *)(a1 + 264) = *(_BYTE *)(a2 + 264);
  std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::operator=(
    (int *)(a1 + 268),
    a2 + 268);
  *(_BYTE *)(a1 + 292) = *(_BYTE *)(a2 + 292);
  v4 = *(_DWORD *)(a1 + 304);
  *(_BYTE *)(a1 + 293) = *(_BYTE *)(a2 + 293);
  *(_DWORD *)(a1 + 296) = *(_DWORD *)(a2 + 296);
  (*(void (__fastcall **)(int, int))(v4 + 28))(a1 + 304, a2 + 336);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)(a1 + 344) + 28))(a1 + 344, a2 + 376);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)(a1 + 384) + 28))(a1 + 384, a2 + 416);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)(a1 + 424) + 28))(a1 + 424, a2 + 456);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)(a1 + 464) + 28))(a1 + 464, a2 + 496);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)(a1 + 504) + 28))(a1 + 504, a2 + 536);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)(a1 + 544) + 28))(a1 + 544, a2 + 576);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)(a1 + 584) + 28))(a1 + 584, a2 + 616);
  *(_DWORD *)(a1 + 640) = *(_DWORD *)(a2 + 640);
  return a1;
}


// ===== 378808 PlayerInfo::operator=(PlayerInfo const&) =====
int __fastcall PlayerInfo::operator=(int a1, int a2)
{
  int v4; // r5
  int i; // r7
  int v6; // r1

  CNetPlayerInfo::operator=(a1, a2);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)(a1 + 648) + 28))(a1 + 648, a2 + 680);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)(a1 + 688) + 28))(a1 + 688, a2 + 720);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)(a1 + 744) + 28))(a1 + 744, a2 + 776);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)(a1 + 784) + 28))(a1 + 784, a2 + 816);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)(a1 + 824) + 28))(a1 + 824, a2 + 856);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)(a1 + 864) + 28))(a1 + 864, a2 + 896);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)(a1 + 904) + 28))(a1 + 904, a2 + 936);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)(a1 + 944) + 28))(a1 + 944, a2 + 976);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)(a1 + 984) + 28))(a1 + 984, a2 + 1016);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)(a1 + 1024) + 28))(a1 + 1024, a2 + 1056);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)(a1 + 1064) + 28))(a1 + 1064, a2 + 1096);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)(a1 + 1104) + 28))(a1 + 1104, a2 + 1136);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)(a1 + 1144) + 28))(a1 + 1144, a2 + 1176);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)(a1 + 1184) + 28))(a1 + 1184, a2 + 1216);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)(a1 + 1224) + 28))(a1 + 1224, a2 + 1253);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)(a1 + 1256) + 28))(a1 + 1256, a2 + 1285);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)(a1 + 1288) + 28))(a1 + 1288, a2 + 1317);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)(a1 + 1320) + 28))(a1 + 1320, a2 + 1349);
  v4 = a1 + 1352;
  for ( i = 0; i != 280; i += 40 )
  {
    v6 = a2 + 1352 + i + 32;
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v4 + 28))(v4, v6);
    v4 += 40;
  }
  *(_DWORD *)(a1 + 1632) = *(_DWORD *)(a2 + 1632);
  *(_DWORD *)(a1 + 1636) = *(_DWORD *)(a2 + 1636);
  *(_DWORD *)(a1 + 1640) = *(_DWORD *)(a2 + 1640);
  *(_BYTE *)(a1 + 1644) = *(_BYTE *)(a2 + 1644);
  *(_DWORD *)(a1 + 1648) = *(_DWORD *)(a2 + 1648);
  *(_DWORD *)(a1 + 1652) = *(_DWORD *)(a2 + 1652);
  *(_DWORD *)(a1 + 1656) = *(_DWORD *)(a2 + 1656);
  *(_DWORD *)(a1 + 1660) = *(_DWORD *)(a2 + 1660);
  *(_DWORD *)(a1 + 1664) = *(_DWORD *)(a2 + 1664);
  *(_DWORD *)(a1 + 1668) = *(_DWORD *)(a2 + 1668);
  return a1;
}


// ===== 378a40 PlayerManager::_AddPlayer(int,int,int,bool) =====
int __fastcall PlayerManager::_AddPlayer(PlayerManager *this, int a2, int a3, int a4, bool a5)
{
  int Online; // r0
  int result; // r0
  CMatching *Instance; // r0
  int v11; // r0
  CNetPlayerManager *NetPlayerMgr; // r0
  NetStruct *PlayerByInternalID; // r9
  int v14; // r3
  int v15; // r0
  int v16; // [sp+4h] [bp-694h] BYREF
  _BYTE v17[1640]; // [sp+8h] [bp-690h] BYREF
  int v18; // [sp+670h] [bp-28h]
  bool v19; // [sp+674h] [bp-24h]
  int v20; // [sp+678h] [bp-20h]
  int v21; // [sp+67Ch] [bp-1Ch]

  v16 = a2;
  Online = GetOnline();
  if ( *(_BYTE *)(Online + 5)
    && (Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance(Online), *((_BYTE *)Instance + 36))
    && (v11 = CMatching::Get(Instance), (*(int (__fastcall **)(int))(*(_DWORD *)v11 + 100))(v11))
    && (NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr(), CNetPlayerManager::IsInitialized(NetPlayerMgr)) )
  {
    PlayerByInternalID = (NetStruct *)PlayerManager::GetPlayerByInternalID(this, v16, 0);
    result = (*(int (**)(void))(*(_DWORD *)PlayerByInternalID + 92))();
    if ( result )
    {
      *((_BYTE *)PlayerByInternalID + 1644) = a5;
      *((_DWORD *)PlayerByInternalID + 410) = a4;
      v14 = v16;
      *((_DWORD *)PlayerByInternalID + 413) = a3;
      *((_DWORD *)PlayerByInternalID + 412) = v14;
      NetStruct::SetEnabled(PlayerByInternalID, 1);
      return PlayerManager::_UpdatePlayerNumbers(this);
    }
  }
  else
  {
    result = PlayerManager::IsPlayerInLocalMap(this, v16);
    if ( !result )
    {
      PlayerInfo::PlayerInfo((PlayerInfo *)v17);
      v20 = v16;
      v19 = a5;
      v18 = a4;
      v21 = a3;
      v15 = std::map<int,PlayerInfo>::operator[]<int>((char *)this + 1680, &v16);
      PlayerInfo::operator=(v15, v17);
      PlayerInfo::~PlayerInfo((PlayerInfo *)v17);
      return PlayerManager::_UpdatePlayerNumbers(this);
    }
  }
  return result;
}


// ===== 378b94 PlayerManager::_CheckRemoteControllers(void) =====
PlayerManager *__fastcall PlayerManager::_CheckRemoteControllers(PlayerManager *this)
{
  PlayerManager *result; // r0
  int v3; // r0
  CNetPlayerManager *NetPlayerMgr; // r0
  int v5; // r0
  int *v6; // r4
  PlayerManager *v7; // r6
  int v8; // r8
  CNetPlayerManager *v9; // r0
  int v10; // r10
  bool v11; // zf

  result = (PlayerManager *)GetOnline();
  if ( *((_BYTE *)result + 5) )
  {
    result = (PlayerManager *)OnlineSingleton<OnlineGameState>::GetInstance(result);
    if ( *((_BYTE *)result + 36) )
    {
      v3 = CMatching::Get(result);
      result = (PlayerManager *)(*(int (__fastcall **)(int))(*(_DWORD *)v3 + 100))(v3);
      if ( result )
      {
        NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr();
        result = (PlayerManager *)CNetPlayerManager::IsInitialized(NetPlayerMgr);
        if ( result )
        {
          v5 = CMatching::Get(result);
          result = (PlayerManager *)(*(int (__fastcall **)(int))(*(_DWORD *)v5 + 108))(v5);
          v6 = *((int **)this + 426);
          v7 = result;
          while ( v6 != *((int **)this + 427) )
          {
            v8 = *v6;
            v9 = (CNetPlayerManager *)GetNetPlayerMgr();
            v10 = *(_DWORD *)(CNetPlayerManager::GetPlayer(v9, v8, 0) + 416);
            result = this;
            ++v6;
            if ( v7 != (PlayerManager *)v10 )
            {
              v11 = v8 == *(_DWORD *)(PlayerManager::GetPlayerByInternalID(this, v8, 0) + 1648);
              result = this;
              if ( !v11 )
                result = (PlayerManager *)PlayerManager::_AddPlayer(this, v8, v10, -1, 0);
            }
          }
        }
      }
    }
  }
  return result;
}


// ===== 378c80 PlayerManager::_CheckLocalControllers(void) =====
unsigned int __fastcall PlayerManager::_CheckLocalControllers(PlayerManager *this)
{
  RenderFX *HUDRoot; // r8
  int v2; // r11
  InputManager *Instance; // r5
  int NumGamepads; // r0
  int v6; // r2
  unsigned int i; // r4
  int PlayerByInternalID; // r0
  CNetPlayerInfo *v9; // r6
  unsigned int result; // r0
  int v11; // r0
  int v12; // r6
  int v13; // r10
  int Online; // r0
  int v15; // r7
  CMatching *v16; // r0
  int v17; // r0
  CNetPlayerManager *NetPlayerMgr; // r0
  CNetPlayerManager *v19; // r0
  int v20; // r0
  RenderFX *v21; // r12
  MenuManager *CurrentLevel; // r0
  MenuManager *v23; // r0
  int v24; // r0
  _DWORD *LocalPlayer; // [sp+Ch] [bp-40h]
  int v26; // [sp+10h] [bp-3Ch]
  unsigned int v27; // [sp+14h] [bp-38h]
  _BYTE v28[4]; // [sp+34h] [bp-18h] BYREF
  double v29; // [sp+38h] [bp-14h]
  double v30; // [sp+40h] [bp-Ch]

  Instance = (InputManager *)InputManager::GetInstance(this);
  NumGamepads = InputManager::GetNumGamepads(Instance);
  v6 = 14324;
  if ( NumGamepads < 1 )
    NumGamepads = 1;
  v27 = NumGamepads;
  for ( i = 0; i < v27; ++i )
  {
    while ( 1 )
    {
      v11 = (*(int (__fastcall **)(InputManager *, unsigned int, int))(*(_DWORD *)Instance + 8))(Instance, i, v6);
      v12 = *(unsigned __int8 *)(v11 + 1880);
      v13 = v11;
      Online = GetOnline();
      if ( !i )
        v12 = 1;
      if ( !*(_BYTE *)(Online + 5)
        || (v16 = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance(Online), !*((_BYTE *)v16 + 36))
        || (v17 = CMatching::Get(v16), !(*(int (__fastcall **)(int))(*(_DWORD *)v17 + 100))(v17))
        || (NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr(), !CNetPlayerManager::IsInitialized(NetPlayerMgr)) )
      {
        v15 = (unsigned __int8)PlayerManager::IsPlayerInLocalMap(this, i) ^ 1;
        HUDRoot = (RenderFX *)i;
        v2 = -1;
        goto LABEL_11;
      }
      v19 = (CNetPlayerManager *)GetNetPlayerMgr();
      LocalPlayer = (_DWORD *)CNetPlayerManager::GetLocalPlayer(v19, i);
      v20 = (*(int (**)(void))(*LocalPlayer + 92))();
      if ( v20 )
        HUDRoot = (RenderFX *)LocalPlayer[94];
      else
        v2 = -1;
      v21 = (RenderFX *)LocalPlayer[412];
      if ( v20 )
        v2 = LocalPlayer[104];
      else
        HUDRoot = (RenderFX *)v2;
      v15 = HUDRoot != v21;
      if ( HUDRoot != v21 )
      {
        v26 = LocalPlayer[412];
        v6 = *(_DWORD *)(PlayerManager::GetLocalPlayer(this, 0, 0) + 1648);
        if ( v26 == v6 )
        {
          v6 = LocalPlayer[409];
          if ( v6 == -1 )
          {
            v6 = *(_DWORD *)(dword_99F778 + 8);
            if ( v6 != -1 )
              LocalPlayer[409] = v6;
          }
        }
      }
      if ( HUDRoot == (RenderFX *)-1 )
        break;
LABEL_11:
      if ( v12 )
      {
        if ( v15 )
        {
          PlayerManager::_AddPlayer(this, (int)HUDRoot, v2, i, 1);
        }
        else
        {
          PlayerByInternalID = PlayerManager::GetPlayerByInternalID(this, (int)HUDRoot, 0);
          v9 = (CNetPlayerInfo *)PlayerByInternalID;
          if ( *(_DWORD *)(PlayerByInternalID + 1636) == -1 )
          {
            if ( *(_BYTE *)(PlayerByInternalID + 576) == 2 )
            {
              PlayerManager::_UpdateJoiningController(this, i, (int)HUDRoot);
            }
            else if ( *(float *)(v13 + 472) < (float)((float)((float)(*(float *)(v13 + 484) + *(float *)(v13 + 480))
                                                            + 1.0)
                                                    * 0.5) )
            {
              if ( *(_BYTE *)(v13 + 488) )
              {
LABEL_31:
                CurrentLevel = (MenuManager *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
                if ( CurrentLevel )
                {
                  v23 = (MenuManager *)MenuManager::GetInstance(CurrentLevel);
                  HUDRoot = (RenderFX *)MenuManager::GetHUDRoot(v23);
                  v24 = *((_DWORD *)v9 + 415);
                  v28[0] = 0;
                  v28[1] = 2;
                  v30 = (double)v24;
                  v29 = (double)v24;
                  RenderFX::InvokeASCallback(
                    HUDRoot,
                    "menu_HUD_0",
                    "onNewPlayerLocal",
                    (const gameswf::as_value *)v28,
                    1);
                  gameswf::as_value::drop_refs((gameswf::as_value *)v28);
                  CNetPlayerInfo::SetState(v9, 2);
                }
              }
            }
            else if ( !*(_BYTE *)(v13 + 488) )
            {
              goto LABEL_31;
            }
          }
        }
      }
      else if ( !v15 )
      {
        PlayerManager::GetPlayerByInternalID(this, (int)HUDRoot, 0);
      }
      result = v27;
      if ( ++i >= v27 )
        return result;
    }
    result = v27;
  }
  return result;
}


// ===== 378fb4 PlayerManager::Update(void) =====
int __fastcall PlayerManager::Update(PlayerManager *this)
{
  int NumPlayers; // r6
  int v3; // r4
  int Player; // r0
  int v5; // r3

  NumPlayers = PlayerManager::GetNumPlayers(this);
  if ( NumPlayers > 0 )
  {
    v3 = 0;
    do
    {
      Player = PlayerManager::GetPlayer(this, v3, 0);
      v5 = *(_DWORD *)(Player + 1632);
      ++v3;
      if ( v5 && *(_BYTE *)(v5 + 129) )
        *(_DWORD *)(Player + 1632) = 0;
    }
    while ( v3 != NumPlayers );
  }
  if ( *((_BYTE *)this + 1819) && *(_BYTE *)(PlayerManager::GetLocalPlayer(this, 0, 0) + 1253) )
    *((_BYTE *)this + 1819) = 0;
  PlayerManager::_CheckOnlineTransition(this);
  PlayerManager::_CheckLocalControllers(this);
  PlayerManager::_CheckRemoteControllers(this);
  PlayerManager::_ManageCharacters(this);
  PlayerManager::_CheckLocalDeaths(this);
  PlayerManager::_CheckGlobalDeaths(this);
  return PlayerStatManager::Update((PlayerStatManager *)&Singleton<PlayerStatManager>::s_inst);
}


// ===== 379084 PlayerStatManager::PlayerStatManager(void) =====
void __fastcall PlayerStatManager::PlayerStatManager(PlayerStatManager *this)
{
  *(_DWORD *)this = off_9639A8;
}


// ===== 3790a8 PlayerStatManager::PlayerStatManager(void) =====
void __fastcall PlayerStatManager::PlayerStatManager(PlayerStatManager *this)
{
  *(_DWORD *)this = off_9639A8;
}


// ===== 3790cc PlayerStatManager::~PlayerStatManager() =====
void __fastcall PlayerStatManager::~PlayerStatManager(PlayerStatManager *this)
{
  ;
}


// ===== 3790d0 PlayerStatManager::~PlayerStatManager() =====
void __fastcall PlayerStatManager::~PlayerStatManager(PlayerStatManager *this)
{
  ;
}


// ===== 3790d4 PlayerStatManager::Reset(void) =====
void __fastcall PlayerStatManager::Reset(PlayerStatManager *this)
{
  ;
}


// ===== 3790d8 PlayerStatManager::Update(void) =====
void __fastcall PlayerStatManager::Update(PlayerStatManager *this)
{
  ;
}


// ===== 3790dc PlayerStatManager::ApplyPlayersBonus(void) =====
void __fastcall PlayerStatManager::ApplyPlayersBonus(PlayerStatManager *this)
{
  ;
}


// ===== 3790e0 PlayerStatManager::IncreaseStat(EStatType,int,int) =====
void PlayerStatManager::IncreaseStat()
{
  ;
}


// ===== 3790e4 PlayerStatManager::DecreaseStat(EStatType,int,int) =====
void PlayerStatManager::DecreaseStat()
{
  PlayerStatManager::IncreaseStat();
}


// ===== 3790ec PlayerStatManager::IncrementStat(EStatType,int) =====
int __fastcall PlayerStatManager::IncrementStat(int a1, int a2, int a3)
{
  return PlayerStatManager::IncreaseStat(a1, a2, 1, a3);
}


// ===== 3790f8 PlayerStatManager::DecrementStat(EStatType,int) =====
void PlayerStatManager::DecrementStat()
{
  PlayerStatManager::IncreaseStat();
}


// ===== 379104 PlayerStatManager::SetStatValue(EStatType,int,int,bool) =====
void PlayerStatManager::SetStatValue()
{
  ;
}


// ===== 379108 PlayerStatManager::ResetStatValue(EStatType,int) =====
void PlayerStatManager::ResetStatValue()
{
  PlayerStatManager::SetStatValue();
}


// ===== 37912c PlayerStatManager::ResetAllStatValues(int) =====
int __fastcall PlayerStatManager::ResetAllStatValues(PlayerStatManager *this, int a2)
{
  int i; // r4
  int v5; // r1
  int result; // r0

  for ( i = 0; i != 7; ++i )
  {
    v5 = i;
    result = PlayerStatManager::ResetStatValue(this, v5, a2);
  }
  return result;
}


// ===== 37915c std::__push_heap<std::pair<int,int> *,int,std::pair<int,int>,PlayerStatManager::_StatComp>(std::pair<int,int> *,int,int,std::pair<int,int>,PlayerStatManager::_StatComp) =====
int __fastcall std::__push_heap<std::pair<int,int> *,int,std::pair<int,int>,PlayerStatManager::_StatComp>(
        int result,
        int a2,
        int a3,
        _DWORD *a4)
{
  _DWORD *v4; // r5
  int i; // r12
  int v6; // r4

  if ( a2 > a3 )
  {
    for ( i = (a2 - 1) / 2; ; i = (i - 1) / 2 )
    {
      v6 = *(_DWORD *)(result + 8 * i);
      v4 = (_DWORD *)(result + 8 * i);
      if ( v6 <= *a4 )
        break;
      *(_DWORD *)(result + 8 * a2) = v6;
      *(_DWORD *)(result + 8 * a2 + 4) = v4[1];
      if ( a3 >= i )
        goto LABEL_6;
      a2 = i;
    }
    v4 = (_DWORD *)(result + 8 * a2);
  }
  else
  {
    v4 = (_DWORD *)(result + 8 * a2);
  }
LABEL_6:
  *v4 = *a4;
  v4[1] = a4[1];
  return result;
}


// ===== 3791d4 std::__adjust_heap<std::pair<int,int> *,int,std::pair<int,int>,PlayerStatManager::_StatComp>(std::pair<int,int> *,int,int,std::pair<int,int>,PlayerStatManager::_StatComp) =====
int __fastcall std::__adjust_heap<std::pair<int,int> *,int,std::pair<int,int>,PlayerStatManager::_StatComp>(
        int a1,
        int a2,
        int a3,
        _DWORD *a4)
{
  int v4; // r12
  int v5; // lr
  int v6; // r5
  _DWORD *v7; // r4
  int v8; // lr
  int v10; // lr
  _DWORD *v11; // r2
  _DWORD v12[3]; // [sp+8h] [bp-Ch] BYREF

  v4 = a2;
  v5 = 2 * (a2 + 1);
  if ( v5 < a3 )
  {
    v6 = a2;
    do
    {
      a2 = v5 - 1;
      v7 = (_DWORD *)(a1 + 8 * v5);
      if ( *v7 <= *(_DWORD *)(a1 + 8 * (v5 - 1)) )
        a2 = v5;
      else
        v7 = (_DWORD *)(a1 + 8 * a2);
      *(_DWORD *)(a1 + 8 * v6) = *v7;
      v5 = 2 * (a2 + 1);
      *(_DWORD *)(a1 + 8 * v6 + 4) = v7[1];
      v6 = a2;
    }
    while ( a3 > v5 );
  }
  if ( v5 == a3 )
  {
    v10 = v5 - 1;
    v11 = (_DWORD *)(a1 + 8 * a2);
    *v11 = *(_DWORD *)(a1 + 8 * v10);
    a2 = v10;
    v11[1] = *(_DWORD *)(a1 + 8 * v10 + 4);
  }
  v8 = a4[1];
  v12[0] = *a4;
  v12[1] = v8;
  return std::__push_heap<std::pair<int,int> *,int,std::pair<int,int>,PlayerStatManager::_StatComp>(a1, a2, v4, v12);
}


// ===== 379290 std::__make_heap<std::pair<int,int> *,PlayerStatManager::_StatComp,std::pair<int,int>,int>(std::pair<int,int> *,std::pair<int,int> *,PlayerStatManager::_StatComp,std::pair<int,int> *,int *) =====
int __fastcall std::__make_heap<std::pair<int,int> *,PlayerStatManager::_StatComp,std::pair<int,int>,int>(
        int result,
        int a2)
{
  int v2; // r1
  int v3; // r6
  int v4; // r7
  int v5; // r5
  _DWORD *v6; // r4
  _DWORD v7[2]; // [sp+8h] [bp-8h] BYREF

  v2 = a2 - result;
  v3 = result;
  if ( v2 > 15 )
  {
    v4 = v2 >> 3;
    v5 = ((v2 >> 3) - 2) >> 1;
    v6 = (_DWORD *)(result + 8 * v5);
    while ( 1 )
    {
      v7[0] = *v6;
      v7[1] = v6[1];
      result = std::__adjust_heap<std::pair<int,int> *,int,std::pair<int,int>,PlayerStatManager::_StatComp>(
                 v3,
                 v5,
                 v4,
                 v7);
      v6 -= 2;
      if ( !v5 )
        break;
      --v5;
    }
  }
  return result;
}


// ===== 379304 std::__pop_heap<std::pair<int,int> *,std::pair<int,int>,PlayerStatManager::_StatComp,int>(std::pair<int,int> *,std::pair<int,int> *,std::pair<int,int> *,std::pair<int,int>,PlayerStatManager::_StatComp,int *) =====
int __fastcall std::__pop_heap<std::pair<int,int> *,std::pair<int,int>,PlayerStatManager::_StatComp,int>(
        _DWORD *a1,
        int a2,
        _DWORD *a3,
        int *a4)
{
  int v4; // lr
  _DWORD v6[2]; // [sp+8h] [bp-8h] BYREF

  *a3 = *a1;
  a3[1] = a1[1];
  v4 = *a4;
  v6[1] = a4[1];
  v6[0] = v4;
  return std::__adjust_heap<std::pair<int,int> *,int,std::pair<int,int>,PlayerStatManager::_StatComp>(
           (int)a1,
           0,
           (a2 - (int)a1) >> 3,
           v6);
}


// ===== 379354 std::priv::__partial_sort<std::pair<int,int> *,std::pair<int,int>,PlayerStatManager::_StatComp>(std::pair<int,int> *,std::pair<int,int> *,std::pair<int,int> *,std::pair<int,int> *,PlayerStatManager::_StatComp) =====
int __fastcall std::priv::__partial_sort<std::pair<int,int> *,std::pair<int,int>,PlayerStatManager::_StatComp>(
        char *a1,
        int a2,
        unsigned int a3)
{
  int *v4; // r4
  int result; // r0
  int *v7; // r5
  int v8; // lr
  int i; // r5
  int v10; // t1
  int v11[2]; // [sp+8h] [bp-14h] BYREF
  int v12[3]; // [sp+10h] [bp-Ch] BYREF

  v4 = (int *)a2;
  result = std::__make_heap<std::pair<int,int> *,PlayerStatManager::_StatComp,std::pair<int,int>,int>((int)a1, a2);
  if ( (unsigned int)v4 < a3 )
  {
    v7 = v4;
    do
    {
      result = (int)a1;
      if ( *v7 > *(_DWORD *)a1 )
      {
        v8 = v7[1];
        v12[0] = *v7;
        v12[1] = v8;
        result = std::__pop_heap<std::pair<int,int> *,std::pair<int,int>,PlayerStatManager::_StatComp,int>(
                   a1,
                   (int)v4,
                   v7,
                   v12);
      }
      v7 += 2;
    }
    while ( a3 > (unsigned int)v7 );
  }
  for ( i = (char *)v4 - a1;
        i > 15;
        result = std::__pop_heap<std::pair<int,int> *,std::pair<int,int>,PlayerStatManager::_StatComp,int>(
                   a1,
                   (int)v4,
                   v4,
                   v11) )
  {
    v10 = *(v4 - 2);
    v4 -= 2;
    i -= 8;
    v11[1] = v4[1];
    v11[0] = v10;
  }
  return result;
}


// ===== 37942c std::priv::__introsort_loop<std::pair<int,int> *,std::pair<int,int>,int,PlayerStatManager::_StatComp>(std::pair<int,int> *,std::pair<int,int> *,std::pair<int,int> *,int,PlayerStatManager::_StatComp) =====
int __fastcall std::priv::__introsort_loop<std::pair<int,int> *,std::pair<int,int>,int,PlayerStatManager::_StatComp>(
        int result,
        unsigned int a2,
        int a3,
        int a4)
{
  int v4; // r2
  char *v5; // r5
  int v6; // r6
  int v7; // r3
  int v8; // r2
  int v9; // r0
  int v10; // r12
  char *v11; // lr
  char *v12; // r7
  char *v13; // r4
  int v14; // t1
  char *v15; // r3
  int v16; // t1
  int v17; // r12
  int v18; // [sp+0h] [bp-8h]

  v4 = a2 - result;
  v5 = (char *)result;
  v6 = a4;
  if ( (int)(a2 - result) > 135 )
  {
    if ( a4 )
    {
      do
      {
        v7 = *(_DWORD *)&v5[8 * (v4 >> 4)];
        v8 = *(_DWORD *)v5;
        --v6;
        if ( *(_DWORD *)v5 <= v7 )
        {
          v9 = *(_DWORD *)(a2 - 8);
          if ( v8 <= v9 )
          {
            if ( v7 <= v9 )
            {
LABEL_22:
              v10 = v9;
              v9 = v7;
              goto LABEL_7;
            }
LABEL_16:
            v10 = v9;
            goto LABEL_7;
          }
        }
        else
        {
          v9 = *(_DWORD *)(a2 - 8);
          if ( v7 > v9 )
            goto LABEL_22;
          if ( v8 > v9 )
            goto LABEL_16;
        }
        v10 = v9;
        v9 = *(_DWORD *)v5;
LABEL_7:
        v11 = (char *)a2;
        v12 = v5;
        while ( 1 )
        {
          v13 = v12;
          while ( v8 > v9 )
          {
            v14 = *((_DWORD *)v13 + 2);
            v13 += 8;
            v8 = v14;
          }
          v15 = v11 - 8;
          while ( v9 > v10 )
          {
            v16 = *((_DWORD *)v15 - 2);
            v15 -= 8;
            v10 = v16;
          }
          v11 = v15;
          if ( v13 >= v15 )
            break;
          v17 = *((_DWORD *)v13 + 1);
          v12 = v13 + 8;
          *(_DWORD *)v13 = *(_DWORD *)v15;
          *((_DWORD *)v13 + 1) = *((_DWORD *)v15 + 1);
          *(_DWORD *)v15 = v8;
          *((_DWORD *)v15 + 1) = v17;
          v10 = *((_DWORD *)v15 - 2);
          v8 = *((_DWORD *)v13 + 2);
        }
        LOBYTE(v18) = 0;
        result = std::priv::__introsort_loop<std::pair<int,int> *,std::pair<int,int>,int,PlayerStatManager::_StatComp>(
                   v13,
                   a2,
                   0,
                   v6,
                   v18);
        v4 = v13 - v5;
        if ( v13 - v5 <= 135 )
          return result;
        a2 = (unsigned int)v13;
      }
      while ( v6 );
    }
    return std::priv::__partial_sort<std::pair<int,int> *,std::pair<int,int>,PlayerStatManager::_StatComp>(v5, a2, a2);
  }
  return result;
}


// ===== 379568 PlayerStatManager::Invoke(std::string const&) =====
int __fastcall PlayerStatManager::Invoke(PlayerStatManager *this, const std::string *a2)
{
  MenuManager *Instance; // r0
  RenderFX *HUDRoot; // r4
  gameswf::root *Root; // r0
  gameswf::character *root_movie; // r0

  Instance = (MenuManager *)MenuManager::GetInstance(this);
  HUDRoot = (RenderFX *)MenuManager::GetHUDRoot(Instance);
  Root = (gameswf::root *)RenderFX::GetRoot(HUDRoot);
  root_movie = (gameswf::character *)gameswf::root::get_root_movie(Root);
  return RenderFX::InvokeASCallback(HUDRoot, root_movie, a2->_M_start_of_storage._M_data, nullptr, 0);
}


// ===== 3795ac PlayerStatManager::~PlayerStatManager() =====
void __fastcall PlayerStatManager::~PlayerStatManager(PlayerStatManager *this)
{
  PlayerStatManager::~PlayerStatManager(this);
  CustomFree(this);
}


// ===== 3795c8 PlayerStatManager::GetStatStr(EStatType) =====
int __fastcall PlayerStatManager::GetStatStr(int a1, int a2)
{
  switch ( a2 )
  {
    case 0:
      std::string::string(a1, "killer");
      break;
    case 1:
      std::string::string(a1, "striker");
      break;
    case 2:
      std::string::string(a1, "controller");
      break;
    case 3:
      std::string::string(a1, "defender");
      break;
    case 4:
      std::string::string(a1, "looter");
      break;
    case 5:
      std::string::string(a1, "support");
      break;
    case 6:
      std::string::string(a1, "xp");
      break;
    default:
      std::string::string(a1, "");
      break;
  }
  return a1;
}


// ===== 3796c4 PlayerStatManager::Invoke(EStatType,int,int) =====
int __fastcall PlayerStatManager::Invoke(int a1, int a2, int a3, int a4)
{
  char *PlayerByInternalID; // r4
  MenuManager *Instance; // r0
  RenderFX *HUDRoot; // r8
  int v9; // r0
  gameswf::root *Root; // r0
  gameswf::character *root_movie; // r0
  _BYTE v13[4]; // [sp+8h] [bp-5Ch] BYREF
  double v14; // [sp+Ch] [bp-58h]
  _BYTE v15[12]; // [sp+14h] [bp-50h] BYREF
  _BYTE v16[12]; // [sp+20h] [bp-44h] BYREF
  _BYTE v17[4]; // [sp+2Ch] [bp-38h] BYREF
  double v18; // [sp+30h] [bp-34h]
  double v19; // [sp+38h] [bp-2Ch]
  std::priv::_String_base<char,std::allocator<char> > v20; // [sp+44h] [bp-20h] BYREF

  PlayerByInternalID = PlayerManager::GetPlayerByInternalID((PlayerManager *)dword_99F76C, a3, 0);
  Instance = (MenuManager *)MenuManager::GetInstance((MenuManager *)PlayerByInternalID);
  HUDRoot = (RenderFX *)MenuManager::GetHUDRoot(Instance);
  v9 = *((_DWORD *)PlayerByInternalID + 415);
  v13[0] = 0;
  v13[1] = 2;
  v19 = (double)v9;
  v14 = (double)v9;
  v15[4] = CNetPlayerInfo::IsRemote((CNetPlayerInfo *)PlayerByInternalID);
  v15[1] = 1;
  v15[0] = 0;
  PlayerStatManager::GetStatStr((int)&v20, a2);
  v16[0] = 0;
  v16[1] = 0;
  gameswf::as_value::set_string((gameswf::as_value *)v16, v20._M_start_of_storage._M_data);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v20);
  v17[0] = 0;
  v17[1] = 2;
  v18 = (double)a4;
  v19 = (double)a4;
  Root = (gameswf::root *)RenderFX::GetRoot(HUDRoot);
  root_movie = (gameswf::character *)gameswf::root::get_root_movie(Root);
  RenderFX::InvokeASCallback(HUDRoot, root_movie, "onRankChange", (const gameswf::as_value *)v13, 4);
  gameswf::as_value::drop_refs((gameswf::as_value *)v17);
  gameswf::as_value::drop_refs((gameswf::as_value *)v16);
  gameswf::as_value::drop_refs((gameswf::as_value *)v15);
  return gameswf::as_value::drop_refs((gameswf::as_value *)v13);
}


// ===== 379824 PlayerStatManager::GetStatValue(EStatType,int) =====
int __fastcall PlayerStatManager::GetStatValue(int a1, int a2, int a3)
{
  if ( a2 > 6 )
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
        "statType < PSTAT_COUNT",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\PlayerManager\\PlayerStatManager.cpp",
        223);
    }
  }
  if ( a3 > 3 )
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
        "playerId < MAX_PLAYERS",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\PlayerManager\\PlayerStatManager.cpp",
        224);
    }
  }
  return *(_DWORD *)&PlayerManager::GetPlayerByInternalID((PlayerManager *)dword_99F76C, a3, 0)[40 * a2 + 1384];
}


// ===== 379950 `global constructor keyed to'.._.._sources_Core_PlayerManager_PlayerStatManager.cpp =====
int `global constructor keyed to'.._.._sources_Core_PlayerManager_PlayerStatManager.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A23C0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A23BC = 1056964608;
  if ( (`guard variable for'Singleton<PlayerStatManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<PlayerStatManager>::s_inst = 1;
    PlayerStatManager::PlayerStatManager((PlayerStatManager *)&Singleton<PlayerStatManager>::s_inst);
    result = _aeabi_atexit(&Singleton<PlayerStatManager>::s_inst, PlayerStatManager::~PlayerStatManager, &_dso_handle);
  }
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit(&Singleton<Application>::s_inst, Application::~Application, &_dso_handle);
  }
  return result;
}


// ===== 379a2c std::priv::__linear_insert<std::pair<int,int> *,std::pair<int,int>,PlayerStatManager::_StatComp>(std::pair<int,int> *,std::pair<int,int> *,std::pair<int,int>,PlayerStatManager::_StatComp) [clone] =====
char *__fastcall std::priv::__linear_insert<std::pair<int,int> *,std::pair<int,int>,PlayerStatManager::_StatComp>(
        char *result,
        int *a2)
{
  int v2; // r2
  int v4; // r4
  int *v5; // r3
  int *v6; // r12
  int v7; // t1

  v2 = *a2;
  if ( *a2 <= PlayerStatManager::GetRanking(EStatType,bool)const::stat_values )
  {
    v4 = a2[1];
    v5 = (int *)(result - 8);
    while ( 1 )
    {
      v6 = v5;
      v7 = *v5;
      v5 -= 2;
      if ( v2 <= v7 )
        break;
      *(_DWORD *)result = v5[2];
      *((_DWORD *)result + 1) = v5[3];
      result = (char *)v6;
    }
    *(_DWORD *)result = v2;
    *((_DWORD *)result + 1) = v4;
  }
  else
  {
    if ( result - (char *)&PlayerStatManager::GetRanking(EStatType,bool)const::stat_values > 0 )
      result = (char *)memmove(
                         &dword_9A23CC,
                         &PlayerStatManager::GetRanking(EStatType,bool)const::stat_values,
                         result - (char *)&PlayerStatManager::GetRanking(EStatType,bool)const::stat_values);
    PlayerStatManager::GetRanking(EStatType,bool)const::stat_values = *a2;
    dword_9A23C8 = a2[1];
  }
  return result;
}


// ===== 379ac4 PlayerStatManager::GetRanking(EStatType,bool) =====
int *__fastcall PlayerStatManager::GetRanking(int a1, int a2, int a3)
{
  int NumPlayers; // r4
  int v8; // r6
  int i; // r5
  int StatValue; // r0
  int *v11; // r4
  int v12; // r2
  int v13; // r3
  int v14; // r3
  int *k; // r5
  char *v16; // r0
  int v17; // r3
  int *v18; // r6
  char *v19; // r0
  int v20; // r3
  int *v21; // r6
  int *v22; // r5
  int v23; // r12
  int v24; // r7
  int *v25; // r3
  int *j; // r2
  int *v27; // r0
  int v28; // t1
  int v29[2]; // [sp+8h] [bp-10h] BYREF
  int v30[2]; // [sp+10h] [bp-8h] BYREF

  if ( (`guard variable for'PlayerStatManager::GetRanking(EStatType,bool)::stat_values & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'PlayerStatManager::GetRanking(EStatType,bool)::stat_values) )
  {
    dword_9A23E0 = 0;
    PlayerStatManager::GetRanking(EStatType,bool)const::stat_values[0] = 0;
    dword_9A23C8 = 0;
    dword_9A23CC = 0;
    dword_9A23D0 = 0;
    dword_9A23D4 = 0;
    dword_9A23D8 = 0;
    dword_9A23DC = 0;
    _cxa_guard_release(&`guard variable for'PlayerStatManager::GetRanking(EStatType,bool)::stat_values);
  }
  if ( a3 )
  {
    NumPlayers = PlayerManager::GetNumPlayers((PlayerManager *)dword_99F76C);
    if ( NumPlayers > 0 )
    {
      v8 = 0;
      for ( i = 0; i != NumPlayers; ++i )
      {
        StatValue = PlayerStatManager::GetStatValue(a1, a2, i);
        PlayerStatManager::GetRanking(EStatType,bool)const::stat_values[v8 + 1] = i;
        PlayerStatManager::GetRanking(EStatType,bool)const::stat_values[v8] = StatValue;
        v8 += 2;
      }
    }
    v11 = &PlayerStatManager::GetRanking(EStatType,bool)const::stat_values[2 * NumPlayers];
    if ( v11 != PlayerStatManager::GetRanking(EStatType,bool)const::stat_values )
    {
      v12 = ((char *)v11 - (char *)PlayerStatManager::GetRanking(EStatType,bool)const::stat_values) >> 3;
      if ( v12 == 1 )
      {
        v13 = 0;
      }
      else
      {
        v14 = 0;
        do
        {
          v12 >>= 1;
          ++v14;
        }
        while ( v12 != 1 );
        v13 = 2 * v14;
      }
      std::priv::__introsort_loop<std::pair<int,int> *,std::pair<int,int>,int,PlayerStatManager::_StatComp>(
        (int)PlayerStatManager::GetRanking(EStatType,bool)const::stat_values,
        (unsigned int)v11,
        0,
        v13);
      if ( (char *)v11 - (char *)PlayerStatManager::GetRanking(EStatType,bool)const::stat_values > 135 )
      {
        v18 = &dword_9A23CC;
        do
        {
          v19 = (char *)v18;
          v30[0] = *v18;
          v20 = v18[1];
          v18 += 2;
          v30[1] = v20;
          std::priv::__linear_insert<std::pair<int,int> *,std::pair<int,int>,PlayerStatManager::_StatComp>(v19, v30);
        }
        while ( v18 != &dword_9A2444 );
        v21 = &dword_9A2444;
        if ( v11 != &dword_9A2444 )
        {
          v22 = &dword_9A243C;
          do
          {
            v23 = v22[2];
            v24 = v22[3];
            v25 = v22;
            for ( j = v21; ; j = v27 )
            {
              v27 = v25;
              v28 = *v25;
              v25 -= 2;
              if ( v23 <= v28 )
                break;
              *j = v25[2];
              j[1] = v25[3];
            }
            v21 += 2;
            *j = v23;
            j[1] = v24;
            v22 += 2;
          }
          while ( v11 != v21 );
        }
      }
      else
      {
        for ( k = &dword_9A23CC; v11 != k; k += 2 )
        {
          v16 = (char *)k;
          v29[0] = *k;
          v17 = k[1];
          v29[1] = v17;
          std::priv::__linear_insert<std::pair<int,int> *,std::pair<int,int>,PlayerStatManager::_StatComp>(v16, v29);
        }
      }
    }
  }
  return PlayerStatManager::GetRanking(EStatType,bool)const::stat_values;
}


// ===== 379d18 PlayerStatManager::UpdateRanking(EStatType) =====
int __fastcall PlayerStatManager::UpdateRanking(int a1, int a2)
{
  int *Ranking; // r5
  int result; // r0
  int v6; // r8
  int v7; // r4
  int v8; // r2
  int v9; // r3
  std::priv::_String_base<char,std::allocator<char> > v10; // [sp+4h] [bp-1Ch] BYREF

  Ranking = PlayerStatManager::GetRanking(a1, a2, 1);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v10, "isTracingPlayerStats");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v10);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v10);
  result = PlayerManager::GetNumPlayers((PlayerManager *)dword_99F76C);
  v6 = result;
  if ( result > 0 )
  {
    v7 = 0;
    do
    {
      v8 = Ranking[2 * v7 + 1];
      v9 = v7++;
      result = PlayerStatManager::Invoke(a1, a2, v8, v9);
    }
    while ( v7 != v6 );
  }
  return result;
}


// ===== 379dfc PlayerStatManager::GetLeader(EStatType) =====
int __fastcall PlayerStatManager::GetLeader(int a1, int a2)
{
  return PlayerStatManager::GetRanking(a1, a2, 0)[1];
}


// ===== 379e10 PlayerStatManager::GetNumLeadingStats(int) =====
int __fastcall PlayerStatManager::GetNumLeadingStats(PlayerStatManager *this, int a2)
{
  int v2; // r4
  int v5; // r7

  v2 = 0;
  v5 = 0;
  do
  {
    if ( PlayerStatManager::GetLeader((int)this, v2) == a2 && PlayerStatManager::GetStatValue((int)this, v2, a2) > 0 )
      ++v5;
    ++v2;
  }
  while ( v2 != 6 );
  return v5;
}


// ===== 379e68 LuaManager::LuaManager(void) =====
void __fastcall LuaManager::LuaManager(LuaManager *this)
{
  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = off_9639B8;
  *((_BYTE *)this + 4) = 0;
  *((_DWORD *)this + 4) = (char *)this + 4;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 3) = (char *)this + 4;
}


// ===== 379eb0 LuaManager::LuaManager(void) =====
void __fastcall LuaManager::LuaManager(LuaManager *this)
{
  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = off_9639B8;
  *((_BYTE *)this + 4) = 0;
  *((_DWORD *)this + 4) = (char *)this + 4;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 3) = (char *)this + 4;
}


// ===== 379ef8 std::string::operator+=(char const*) =====
std::string *__fastcall std::string::operator+=(std::string *a1, char *a2)
{
  size_t v4; // r0

  v4 = LC_API_STRLEN_0(a2);
  return std::string::_M_append(a1, a2, &a2[v4]);
}


// ===== 379f20 `global constructor keyed to'.._.._sources_Core_ScriptManager_LuaManager.cpp =====
int `global constructor keyed to'.._.._sources_Core_ScriptManager_LuaManager.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<Application>::s_inst;
  dword_9A23F0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A23EC = 1056964608;
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 379fa8 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::_M_erase(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(_DWORD *)(v2 + 8);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)(v2 + 16));
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)v2, 0x2Cu);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 379fe8 LuaManager::FlushBufferedFiles(void) =====
void __fastcall LuaManager::FlushBufferedFiles(LuaManager *this)
{
  char *v1; // r6
  char *v3; // r4
  int v4; // r3
  char *v5; // r2
  int v6; // r3

  v1 = *((char **)this + 3);
  v3 = (char *)this + 4;
  while ( v3 != v1 )
  {
    while ( 1 )
    {
      v4 = *((_DWORD *)v1 + 10);
      if ( v4 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 4))(*((_DWORD *)v1 + 10));
      v5 = *((char **)v1 + 3);
      if ( !v5 )
        break;
      while ( *((_DWORD *)v5 + 2) )
        v5 = *((char **)v5 + 2);
      v1 = v5;
      if ( v3 == v5 )
        goto LABEL_10;
    }
    v6 = *((_DWORD *)v1 + 1);
    if ( v1 == *(char **)(v6 + 12) )
    {
      do
      {
        v1 = (char *)v6;
        v6 = *(_DWORD *)(v6 + 4);
      }
      while ( *(char **)(v6 + 12) == v1 );
      v5 = *((char **)v1 + 3);
    }
    if ( v5 != (char *)v6 )
      v1 = (char *)v6;
  }
LABEL_10:
  if ( *((_DWORD *)this + 5) )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::_M_erase(
      (int)v3,
      *((_DWORD *)this + 2));
    *((_DWORD *)this + 5) = 0;
    *((_DWORD *)this + 4) = v3;
    *((_DWORD *)this + 3) = v3;
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 37a0ac LuaManager::~LuaManager() =====
void __fastcall LuaManager::~LuaManager(LuaManager *this)
{
  *(_DWORD *)this = off_9639B8;
  LuaManager::FlushBufferedFiles(this);
  if ( *((_DWORD *)this + 5) )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::_M_erase(
      (int)this + 4,
      *((_DWORD *)this + 2));
    *((_DWORD *)this + 4) = (char *)this + 4;
    *((_DWORD *)this + 5) = 0;
    *((_DWORD *)this + 3) = (char *)this + 4;
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 37a110 LuaManager::~LuaManager() =====
void __fastcall LuaManager::~LuaManager(LuaManager *this)
{
  LuaManager::~LuaManager(this);
  CustomFree(this);
}


// ===== 37a12c LuaManager::~LuaManager() =====
void __fastcall LuaManager::~LuaManager(LuaManager *this)
{
  *(_DWORD *)this = off_9639B8;
  LuaManager::FlushBufferedFiles(this);
  if ( *((_DWORD *)this + 5) )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::_M_erase(
      (int)this + 4,
      *((_DWORD *)this + 2));
    *((_DWORD *)this + 4) = (char *)this + 4;
    *((_DWORD *)this + 5) = 0;
    *((_DWORD *)this + 3) = (char *)this + 4;
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 37a190 std::priv::_Rb_tree<std::string,std::less<std::string>,std::string,std::priv::_Identity<std::string>,std::priv::_SetTraitsT<std::string>,std::allocator<std::string>>::_M_find<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::string,std::priv::_Identity<std::string>,std::priv::_SetTraitsT<std::string>,std::allocator<std::string>>::_M_find<char const*>(
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
  std::priv::_String_base<char,std::allocator<char> > v18; // [sp+1Ch] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v19; // [sp+34h] [bp-20h] BYREF

  v2 = (_DWORD *)a1[1];
  if ( !v2 )
    return a1;
  v4 = a1;
  do
  {
    std::string::string((std::string *)&v19, *a2);
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
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v19);
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
    std::string::string((std::string *)&v18, *a2);
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
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v18);
    if ( v14 < 0 )
      return a1;
  }
  return v4;
}


// ===== 37a300 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::_M_find<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::_M_find<char const*>(
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
  std::priv::_String_base<char,std::allocator<char> > v18; // [sp+1Ch] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v19; // [sp+34h] [bp-20h] BYREF

  v2 = (_DWORD *)a1[1];
  if ( !v2 )
    return a1;
  v4 = a1;
  do
  {
    std::string::string((std::string *)&v19, *a2);
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
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v19);
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
    std::string::string((std::string *)&v18, *a2);
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
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v18);
    if ( v14 < 0 )
      return a1;
  }
  return v4;
}


// ===== 37a470 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::_M_lower_bound<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::_M_lower_bound<char const*>(
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
  std::priv::_String_base<char,std::allocator<char> > v12; // [sp+Ch] [bp-20h] BYREF

  v2 = a1;
  v4 = (_DWORD *)a1[1];
  while ( v4 )
  {
    std::string::string((std::string *)&v12, *a2);
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
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v12);
    if ( v11 < 0 )
      v4 = (_DWORD *)v4[3];
    else
      v2 = v4;
    if ( v11 >= 0 )
      v4 = (_DWORD *)v4[2];
  }
  return v2;
}


// ===== 37a560 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::_M_create_node(std::pair<std::string const,StreamBuffer *> const&) =====
char *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::_M_create_node(
        int a1,
        int a2)
{
  char *v3; // r4
  int v4; // r2
  size_t v6; // [sp+4h] [bp-8h] BYREF

  v6 = 44;
  v3 = (char *)__ZNSt12__node_alloc11_M_allocateERj_veneer(&v6);
  *((_DWORD *)v3 + 8) = v3 + 16;
  *((_DWORD *)v3 + 9) = v3 + 16;
  std::string::_M_range_initialize((std::string *)(v3 + 16), *(const char **)(a2 + 20), *(const char **)(a2 + 16));
  v4 = *(_DWORD *)(a2 + 24);
  *((_DWORD *)v3 + 3) = 0;
  *((_DWORD *)v3 + 10) = v4;
  *((_DWORD *)v3 + 2) = 0;
  return v3;
}


// ===== 37a5b8 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<std::string const,StreamBuffer *> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::_M_insert(
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
    node = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( !a6
         && (a5 || (v14 = a4, v13 = std::less<std::string>::operator()((int)(a2 + 5), a4, (int)(a3 + 4)), a4 = v14, v13)) )
  {
    v12 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::_M_create_node(
            (int)a2,
            a4);
    a3[2] = v12;
    node = v12;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v12;
  }
  else
  {
    v9 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::_M_create_node(
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


// ===== 37a6a8 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::insert_unique(std::pair<std::string const,StreamBuffer *> const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::insert_unique(
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::_M_insert(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::_M_insert(
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


// ===== 37a8c0 std::priv::_Rb_tree<std::string,std::less<std::string>,std::string,std::priv::_Identity<std::string>,std::priv::_SetTraitsT<std::string>,std::allocator<std::string>>::_M_create_node(std::string const&) =====
char *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::string,std::priv::_Identity<std::string>,std::priv::_SetTraitsT<std::string>,std::allocator<std::string>>::_M_create_node(
        int a1,
        int a2)
{
  char *v3; // r4
  size_t v5; // [sp+4h] [bp-8h] BYREF

  v5 = 40;
  v3 = (char *)__ZNSt12__node_alloc11_M_allocateERj_veneer(&v5);
  *((_DWORD *)v3 + 8) = v3 + 16;
  *((_DWORD *)v3 + 9) = v3 + 16;
  std::string::_M_range_initialize((std::string *)(v3 + 16), *(const char **)(a2 + 20), *(const char **)(a2 + 16));
  *((_DWORD *)v3 + 3) = 0;
  *((_DWORD *)v3 + 2) = 0;
  return v3;
}


// ===== 37a910 std::priv::_Rb_tree<std::string,std::less<std::string>,std::string,std::priv::_Identity<std::string>,std::priv::_SetTraitsT<std::string>,std::allocator<std::string>>::_M_insert(std::priv::_Rb_tree_node_base *,std::string const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) [clone] =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::string,std::priv::_Identity<std::string>,std::priv::_SetTraitsT<std::string>,std::allocator<std::string>>::_M_insert(
        char **a1,
        _DWORD *a2,
        _DWORD *a3,
        int a4,
        int a5)
{
  char *v8; // r0
  char *node; // r7
  unsigned int v11; // r0
  char *v12; // r0
  int v13; // [sp+4h] [bp-8h]

  if ( a2 == a3 )
  {
    node = std::priv::_Rb_tree<std::string,std::less<std::string>,std::string,std::priv::_Identity<std::string>,std::priv::_SetTraitsT<std::string>,std::allocator<std::string>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( a5 || (v13 = a4, v11 = std::less<std::string>::operator()((int)(a2 + 5), a4, (int)(a3 + 4)), a4 = v13, v11) )
  {
    v8 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::string,std::priv::_Identity<std::string>,std::priv::_SetTraitsT<std::string>,std::allocator<std::string>>::_M_create_node(
           (int)a2,
           a4);
    a3[2] = v8;
    node = v8;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v8;
  }
  else
  {
    v12 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::string,std::priv::_Identity<std::string>,std::priv::_SetTraitsT<std::string>,std::allocator<std::string>>::_M_create_node(
            (int)a2,
            v13);
    a3[3] = v12;
    node = v12;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v12;
  }
  *((_DWORD *)node + 1) = a3;
  std::priv::_Rb_global<bool>::_Rebalance((int)node, a2 + 1);
  ++a2[4];
  *a1 = node;
  return a1;
}


// ===== 37a9e8 std::priv::_Rb_tree<std::string,std::less<std::string>,std::string,std::priv::_Identity<std::string>,std::priv::_SetTraitsT<std::string>,std::allocator<std::string>>::insert_unique(std::string const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::string,std::priv::_Identity<std::string>,std::priv::_SetTraitsT<std::string>,std::allocator<std::string>>::insert_unique(
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::string,std::priv::_Identity<std::string>,std::priv::_SetTraitsT<std::string>,std::allocator<std::string>>::_M_insert(
      &v28,
      a2,
      v3,
      a3,
      (int)v3);
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::string,std::priv::_Identity<std::string>,std::priv::_SetTraitsT<std::string>,std::allocator<std::string>>::_M_insert(
        &v27,
        a2,
        v3,
        a3,
        0);
      v24 = v27;
      *(_BYTE *)(a1 + 4) = 1;
      *(_DWORD *)a1 = v24;
    }
  }
  return a1;
}


// ===== 37abf8 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::string const,StreamBuffer *>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>>,std::pair<std::string const,StreamBuffer *> const&) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::insert_unique(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::insert_unique(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::_M_insert(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::_M_insert(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::_M_insert(
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::_M_insert(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        0,
        (int)v4);
      return a1;
    }
LABEL_61:
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::_M_insert(
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


// ===== 37b0fc std::map<std::string,StreamBuffer *,std::less<std::string>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::operator[]<char const*>(char const* const&) =====
char *__fastcall std::map<std::string,StreamBuffer *>::operator[]<char const*>(char *a1, char **a2)
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
  std::priv::_String_base<char,std::allocator<char> > v15; // [sp+18h] [bp-54h] BYREF
  int v16; // [sp+30h] [bp-3Ch]
  std::priv::_String_base<char,std::allocator<char> > v17; // [sp+34h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v18; // [sp+4Ch] [bp-20h] BYREF

  v4 = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::_M_lower_bound<char const*>(
                 a1,
                 a2);
  if ( v4 == a1 )
    goto LABEL_11;
  std::string::string((std::string *)&v18, *a2);
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
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v18);
LABEL_11:
    std::string::string((std::string *)&v17, *a2);
    v15._M_finish = (char *)&v15;
    v15._M_start_of_storage._M_data = (char *)&v15;
    std::string::_M_range_initialize((std::string *)&v15, v17._M_start_of_storage._M_data, v17._M_finish);
    v16 = 0;
    v13 = v4;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::insert_unique(
      &v14,
      a1,
      &v13,
      (int)&v15);
    v12 = v14;
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v15);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v17);
    v10 = v12;
    return v10 + 40;
  }
LABEL_7:
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v18);
  v10 = v4;
  return v10 + 40;
}


// ===== 37b23c LuaManager::AddFile(LuaScript *,char const*) =====
int __fastcall LuaManager::AddFile(LuaManager *this, LuaScript *a2, char *a3)
{
  int v6; // r5
  char *v8; // r0
  char *v9; // r10
  int v10; // r0
  int v11; // r9
  StreamBuffer *v12; // r10
  _BYTE v13[8]; // [sp+8h] [bp-74h] BYREF
  char *v14; // [sp+10h] [bp-6Ch] BYREF
  IStreamBase *v15; // [sp+14h] [bp-68h] BYREF
  char *v16; // [sp+18h] [bp-64h] BYREF
  char *M_data; // [sp+1Ch] [bp-60h] BYREF
  _BYTE v18[4]; // [sp+24h] [bp-58h] BYREF
  int v19; // [sp+28h] [bp-54h]
  std::priv::_String_base<char,std::allocator<char> > v20; // [sp+44h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v21; // [sp+5Ch] [bp-20h] BYREF

  if ( !a2 )
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
        "script",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\ScriptManager\\LuaManager.cpp",
        35);
    }
  }
  if ( a3 && *a3 )
  {
    std::operator+<char>((int)&v21, (int)a2 + 104, a3);
    v8 = LC_API_STRSTR_0(a3, ".lua");
    if ( v8 )
    {
      if ( LC_API_STRNCMP_0(v8, ".luac", 5u) )
        std::string::operator+=((int)&v21, "c");
    }
    else
    {
      std::string::operator+=((int)&v21, ".luac");
    }
    M_data = v21._M_start_of_storage._M_data;
    if ( (LuaScript *)((char *)a2 + 128) == (LuaScript *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::string,std::priv::_Identity<std::string>,std::priv::_SetTraitsT<std::string>,std::allocator<std::string>>::_M_find<char const*>(
                                                           (char *)a2 + 128,
                                                           &M_data) )
    {
      v9 = (char *)this + 4;
      v16 = v21._M_start_of_storage._M_data;
      v10 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,StreamBuffer *>,std::priv::_Select1st<std::pair<std::string const,StreamBuffer *>>,std::priv::_MapTraitsT<std::pair<std::string const,StreamBuffer *>>,std::allocator<std::pair<std::string const,StreamBuffer *>>>::_M_find<char const*>(
              v9,
              &v16);
      v11 = v10;
      if ( (char *)v10 == v9 )
      {
        v15 = (IStreamBase *)(*(int (__fastcall **)(_DWORD, char *, _DWORD, _DWORD))(**(_DWORD **)(dword_99F73C + 52)
                                                                                   + 136))(
                               *(_DWORD *)(dword_99F73C + 52),
                               v21._M_start_of_storage._M_data,
                               0,
                               0);
        if ( !v15 )
        {
          v6 = 0;
          goto LABEL_11;
        }
        v12 = (StreamBuffer *)operator new(48, 0);
        StreamBuffer::StreamBuffer(v12, v15);
        v14 = v21._M_start_of_storage._M_data;
        *(_DWORD *)std::map<std::string,StreamBuffer *>::operator[]<char const*>(v11, &v14) = v12;
        (*(void (__fastcall **)(_DWORD, IStreamBase **))(**(_DWORD **)(dword_99F73C + 52) + 120))(
          *(_DWORD *)(dword_99F73C + 52),
          &v15);
      }
      else
      {
        v12 = *(StreamBuffer **)(v10 + 40);
        (*(void (__fastcall **)(StreamBuffer *, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v12 + 32))(
          v12,
          *(_DWORD *)v12,
          0,
          0);
      }
      if ( !v12 )
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
            "sbuffer",
            "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\ScriptManager\\LuaManager.cpp",
            97);
        }
      }
      sfc::script::lua::Instance::loadFile((sfc::script::lua::Instance *)v18, (LuaScript *)((char *)a2 + 4));
      if ( v19 )
      {
        sfc::script::lua::Error::~Error((sfc::script::lua::Error *)v18);
        v6 = 0;
        goto LABEL_11;
      }
      sfc::script::lua::Error::~Error((sfc::script::lua::Error *)v18);
      std::string::string((int)&v20, v21._M_start_of_storage._M_data);
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::string,std::priv::_Identity<std::string>,std::priv::_SetTraitsT<std::string>,std::allocator<std::string>>::insert_unique(
        v13,
        (char *)a2 + 128,
        &v20);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v20);
    }
    v6 = 1;
LABEL_11:
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v21);
    return v6;
  }
  return 0;
}


// ===== 37b564 boost::hash<std::string>::~hash() =====
void boost::hash<std::string>::~hash()
{
  ;
}


// ===== 37b568 LuaScript::_IncludePyCst(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void LuaScript::_IncludePyCst()
{
  ;
}


// ===== 37b56c LuaScript::_IncludePyStruct(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void LuaScript::_IncludePyStruct()
{
  ;
}


// ===== 37b570 LuaScript::_IncludePyArray(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void LuaScript::_IncludePyArray()
{
  ;
}


// ===== 37b574 LuaScript::Load(char const*) =====
int __fastcall LuaScript::Load(LuaScript *this, char *a2)
{
  return LuaManager::AddFile((LuaManager *)dword_99F768, this, a2);
}


// ===== 37b5a0 LuaScript::BindFunction(void) =====
int __fastcall LuaScript::BindFunction(LuaScript *this)
{
  sfc::script::lua::Instance *v1; // r4

  v1 = (LuaScript *)((char *)this + 4);
  sfc::script::lua::Instance::includeBase((LuaScript *)((char *)this + 4));
  sfc::script::lua::Instance::includeMath(v1);
  sfc::script::lua::Instance::includeTable(v1);
  sfc::script::lua::Instance::includeString(v1);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "Include",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_Include,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "Trace",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_Trace,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "SetInt",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_SetInt,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "GetInt",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_GetInt,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "AddToVFTable",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_AddToVFTable,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "PushVFTable",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_PushVFTable,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "PopVFTable",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_PopVFTable,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "ToFixed",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_ToFixed,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "FromFixed",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_FromFixed,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "MulFixed",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_MulFixed,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "DivFixed",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_DivFixed,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "Rand",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_Rand,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "RandF",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_RandF,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "BitNot",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_BitNot,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "BitAnd",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_BitAnd,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "BitOr",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_BitOr,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "BitXOr",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_BitXOr,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "GetPyCst",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_GetPyCst,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "GetPyStruct",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_GetPyStruct,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "GetPyOID",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_GetPyOID,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "CallPyScript",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_CallPyScript,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "GetNumPlayers",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_GetNumPlayers,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "GetHostPlayer",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_GetHostPlayer,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "GetHostPlayerLevel",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_GetHostPlayerLevel,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "GetHostPlayerDifficulty",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_GetHostPlayerDifficulty,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "GetCurrentLevelRange",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_GetCurrentLevelRange,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "GetGameObjectsByType",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_GetGameObjectsByType,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "SetGameType",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_SetGameType,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "GetGameScript",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_GetGameScript,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "OnTargetDied",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_IsPlayerCharacter,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "PlayMusic",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_PlayMusic,
    this);
  sfc::script::lua::Binder::bindFunction(
    (LuaScript *)((char *)this + 16),
    "PlaySound",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_PlaySound,
    this);
  return sfc::script::lua::Binder::bindFunction(
           (LuaScript *)((char *)this + 16),
           "StopSound",
           (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))LuaScript::_StopSound,
           this);
}


// ===== 37ba84 Arrays::GetMemberIDByString<Arrays::Sounds>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::Sounds>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::Sounds::size;
  if ( !Arrays::Sounds::size )
    return -1;
  v3 = 0;
  v4 = Arrays::Sounds::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 37baf8 sfc::script::lua::Arguments::operator[](uint) =====
int __fastcall sfc::script::lua::Arguments::operator[](int a1, unsigned int a2)
{
  int *v2; // r4
  int v4; // r2

  v2 = *(int **)(a1 + 4);
  v4 = *v2;
  if ( a2 >= -1227133513 * ((v2[1] - *v2) >> 4) )
  {
    __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
    v4 = *v2;
  }
  return v4 + 112 * a2;
}


// ===== 37bb50 `global constructor keyed to'.._.._sources_Core_ScriptManager_LuaScript.cpp =====
int `global constructor keyed to'.._.._sources_Core_ScriptManager_LuaScript.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A23FC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A23F8 = 1056964608;
  if ( (`guard variable for'Singleton<PlayerStatManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<PlayerStatManager>::s_inst = 1;
    PlayerStatManager::PlayerStatManager((PlayerStatManager *)&Singleton<PlayerStatManager>::s_inst);
    result = _aeabi_atexit(
               (int)&Singleton<PlayerStatManager>::s_inst,
               (int)PlayerStatManager::~PlayerStatManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 37bc2c Random::GetRandom(int,bool) [clone] =====
unsigned int __fastcall Random::GetRandom(unsigned int this, int a2, bool a3)
{
  if ( this )
  {
    Random::s_seed = (59051 * Random::s_seed + 177149) % 0xDAF26Bu;
    this = abs32(Random::s_seed % this);
  }
  ++Random::s_debugRandomCounters;
  return this;
}


// ===== 37bcc0 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,int>,std::priv::_Select1st<std::pair<uint const,int>>,std::priv::_MapTraitsT<std::pair<uint const,int>>,std::allocator<std::pair<uint const,int>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,int>,std::priv::_Select1st<std::pair<unsigned int const,int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,int>>,std::allocator<std::pair<unsigned int const,int>>>::_M_erase(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,int>,std::priv::_Select1st<std::pair<unsigned int const,int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,int>>,std::allocator<std::pair<unsigned int const,int>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x18u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 37bcf8 std::priv::_Rb_tree<std::string,std::less<std::string>,std::string,std::priv::_Identity<std::string>,std::priv::_SetTraitsT<std::string>,std::allocator<std::string>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::string,std::priv::_Identity<std::string>,std::priv::_SetTraitsT<std::string>,std::allocator<std::string>>::_M_erase(
        int a1,
        _DWORD *a2)
{
  _DWORD *v2; // r4
  _DWORD *v4; // r3
  _DWORD *v5; // r5
  size_t v6; // r1

  v2 = a2;
  if ( a2 )
  {
    while ( 1 )
    {
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::string,std::priv::_Identity<std::string>,std::priv::_SetTraitsT<std::string>,std::allocator<std::string>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[9];
      v5 = (_DWORD *)v2[2];
      if ( v4 == v2 + 4 || !v4 )
        goto LABEL_4;
      v6 = v2[4] - (_DWORD)v4;
      if ( v6 <= 0x80 )
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v6);
LABEL_4:
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x28u);
        v2 = v5;
        if ( !v5 )
          return;
      }
      else
      {
        CustomFree(v4);
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x28u);
        v2 = v5;
        if ( !v5 )
          return;
      }
    }
  }
}


// ===== 37bd7c std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,std::string>,std::priv::_Select1st<std::pair<uint const,std::string>>,std::priv::_MapTraitsT<std::pair<uint const,std::string>>,std::allocator<std::pair<uint const,std::string>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::_M_erase(
        int a1,
        _DWORD *a2)
{
  _DWORD *v2; // r4
  _DWORD *v4; // r3
  _DWORD *v5; // r5
  size_t v6; // r1

  v2 = a2;
  if ( a2 )
  {
    while ( 1 )
    {
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[10];
      v5 = (_DWORD *)v2[2];
      if ( v4 == v2 + 5 || !v4 )
        goto LABEL_4;
      v6 = v2[5] - (_DWORD)v4;
      if ( v6 <= 0x80 )
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v6);
LABEL_4:
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x2Cu);
        v2 = v5;
        if ( !v5 )
          return;
      }
      else
      {
        CustomFree(v4);
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x2Cu);
        v2 = v5;
        if ( !v5 )
          return;
      }
    }
  }
}


// ===== 37be00 LuaScript::_PushVFTable(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall LuaScript::_PushVFTable(int a1, int a2, int a3)
{
  int v4; // r5

  if ( *(_DWORD *)(a3 + 92) )
  {
    v4 = a3 + 76;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::_M_erase(
      a3 + 76,
      *(_DWORD **)(a3 + 80));
    *(_DWORD *)(a3 + 88) = v4;
    *(_DWORD *)(a3 + 92) = 0;
    *(_DWORD *)(a3 + 84) = v4;
    *(_DWORD *)(a3 + 80) = 0;
  }
  *(_BYTE *)(a3 + 100) = 1;
}


// ===== 37be44 std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block()
{
  ;
}


// ===== 37be48 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,std::string>,std::priv::_Select1st<std::pair<uint const,std::string>>,std::priv::_MapTraitsT<std::pair<uint const,std::string>>,std::allocator<std::pair<uint const,std::string>>>::erase(std::priv::_Rb_tree_iterator<std::pair<uint const,std::string>,std::priv::_MapTraitsT<std::pair<uint const,std::string>>>) =====
void __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::erase(
        int a1,
        unsigned __int8 **a2)
{
  unsigned __int8 *v3; // r0
  unsigned __int8 *v4; // r3
  unsigned __int8 *v5; // r5
  unsigned __int8 *v6; // r0
  size_t v7; // r1

  v3 = std::priv::_Rb_global<bool>::_Rebalance_for_erase(
         *a2,
         (unsigned __int8 **)(a1 + 4),
         (unsigned __int8 **)(a1 + 8),
         (unsigned __int8 **)(a1 + 12));
  v4 = v3 + 20;
  v5 = v3;
  v6 = *((unsigned __int8 **)v3 + 10);
  if ( v6 != v4 && v6 )
  {
    v7 = *((_DWORD *)v5 + 5) - (_DWORD)v6;
    if ( v7 > 0x80 )
      CustomFree(v6);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v6, v7);
  }
  if ( v5 )
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, 0x2Cu);
  --*(_DWORD *)(a1 + 16);
}


// ===== 37bec0 LuaScript::~LuaScript() =====
void __fastcall LuaScript::~LuaScript(LuaScript *this)
{
  int v1; // r2
  char *v3; // r0
  size_t v4; // r1
  char *v5; // r6

  v1 = *((_DWORD *)this + 36);
  *(_DWORD *)this = off_9639C8;
  if ( v1 )
  {
    v5 = (char *)this + 128;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::string,std::priv::_Identity<std::string>,std::priv::_SetTraitsT<std::string>,std::allocator<std::string>>::_M_erase(
      (int)this + 128,
      *((_DWORD **)this + 33));
    *((_DWORD *)this + 35) = v5;
    *((_DWORD *)this + 36) = 0;
    *((_DWORD *)this + 34) = v5;
    *((_DWORD *)this + 33) = 0;
  }
  v3 = *((char **)this + 31);
  if ( v3 != (char *)this + 104 && v3 )
  {
    v4 = *((_DWORD *)this + 26) - (_DWORD)v3;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
  }
  if ( *((_DWORD *)this + 23) )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::_M_erase(
      (int)this + 76,
      *((_DWORD **)this + 20));
    *((_DWORD *)this + 22) = (char *)this + 76;
    *((_DWORD *)this + 23) = 0;
    *((_DWORD *)this + 21) = (char *)this + 76;
    *((_DWORD *)this + 20) = 0;
  }
  if ( *((_DWORD *)this + 17) )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::_M_erase(
      (int)this + 52,
      *((_DWORD **)this + 14));
    *((_DWORD *)this + 16) = (char *)this + 52;
    *((_DWORD *)this + 17) = 0;
    *((_DWORD *)this + 15) = (char *)this + 52;
    *((_DWORD *)this + 14) = 0;
  }
  if ( *((_DWORD *)this + 11) )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,int>,std::priv::_Select1st<std::pair<unsigned int const,int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,int>>,std::allocator<std::pair<unsigned int const,int>>>::_M_erase(
      (int)this + 28,
      *((_DWORD **)this + 8));
    *((_DWORD *)this + 10) = (char *)this + 28;
    *((_DWORD *)this + 11) = 0;
    *((_DWORD *)this + 9) = (char *)this + 28;
    *((_DWORD *)this + 8) = 0;
  }
  *((_DWORD *)this + 4) = off_95B140;
  sfc::script::lua::Instance::~Instance((LuaScript *)((char *)this + 4));
}


// ===== 37c004 LuaScript::~LuaScript() =====
void __fastcall LuaScript::~LuaScript(LuaScript *this)
{
  int v1; // r2
  char *v3; // r0
  size_t v4; // r1
  char *v5; // r6

  v1 = *((_DWORD *)this + 36);
  *(_DWORD *)this = off_9639C8;
  if ( v1 )
  {
    v5 = (char *)this + 128;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::string,std::priv::_Identity<std::string>,std::priv::_SetTraitsT<std::string>,std::allocator<std::string>>::_M_erase(
      (int)this + 128,
      *((_DWORD **)this + 33));
    *((_DWORD *)this + 35) = v5;
    *((_DWORD *)this + 36) = 0;
    *((_DWORD *)this + 34) = v5;
    *((_DWORD *)this + 33) = 0;
  }
  v3 = *((char **)this + 31);
  if ( v3 != (char *)this + 104 && v3 )
  {
    v4 = *((_DWORD *)this + 26) - (_DWORD)v3;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
  }
  if ( *((_DWORD *)this + 23) )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::_M_erase(
      (int)this + 76,
      *((_DWORD **)this + 20));
    *((_DWORD *)this + 22) = (char *)this + 76;
    *((_DWORD *)this + 23) = 0;
    *((_DWORD *)this + 21) = (char *)this + 76;
    *((_DWORD *)this + 20) = 0;
  }
  if ( *((_DWORD *)this + 17) )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::_M_erase(
      (int)this + 52,
      *((_DWORD **)this + 14));
    *((_DWORD *)this + 16) = (char *)this + 52;
    *((_DWORD *)this + 17) = 0;
    *((_DWORD *)this + 15) = (char *)this + 52;
    *((_DWORD *)this + 14) = 0;
  }
  if ( *((_DWORD *)this + 11) )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,int>,std::priv::_Select1st<std::pair<unsigned int const,int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,int>>,std::allocator<std::pair<unsigned int const,int>>>::_M_erase(
      (int)this + 28,
      *((_DWORD **)this + 8));
    *((_DWORD *)this + 10) = (char *)this + 28;
    *((_DWORD *)this + 11) = 0;
    *((_DWORD *)this + 9) = (char *)this + 28;
    *((_DWORD *)this + 8) = 0;
  }
  *((_DWORD *)this + 4) = off_95B140;
  sfc::script::lua::Instance::~Instance((LuaScript *)((char *)this + 4));
}


// ===== 37c148 LuaScript::~LuaScript() =====
void __fastcall LuaScript::~LuaScript(LuaScript *this)
{
  LuaScript::~LuaScript(this);
  CustomFree(this);
}


// ===== 37c164 glitch::core::hashString(char const*) =====
unsigned int __fastcall glitch::core::hashString(glitch::core *this, const char *a2)
{
  size_t v3; // r0
  unsigned int v4; // r6
  char *M_data; // r2
  int v6; // t1
  std::string v8; // [sp+4h] [bp-20h] BYREF

  if ( (`guard variable for'glitch::core::hashString(char const*)::sStringHash & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'glitch::core::hashString(char const*)::sStringHash) )
  {
    _cxa_guard_release(&`guard variable for'glitch::core::hashString(char const*)::sStringHash);
    _aeabi_atexit(
      (int)&glitch::core::hashString(char const*)::sStringHash,
      (int)boost::hash<std::string>::~hash,
      (int)&_dso_handle);
  }
  v8._M_finish = (char *)&v8;
  v8._M_start_of_storage._M_data = (char *)&v8;
  v3 = LC_API_STRLEN_0((const char *)this);
  std::string::_M_range_initialize(&v8, (const char *)this, (const char *)this + v3);
  if ( v8._M_start_of_storage._M_data == v8._M_finish )
  {
    v4 = 0;
  }
  else
  {
    M_data = v8._M_start_of_storage._M_data;
    v4 = 0;
    do
    {
      v6 = *M_data++;
      v4 ^= v6 - 1640531527 + (v4 << 6) + (v4 >> 2);
    }
    while ( M_data != v8._M_finish );
  }
  if ( (std::string *)v8._M_start_of_storage._M_data != &v8 && v8._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v8._M_buffers._M_end_of_storage - v8._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v8._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v8._M_start_of_storage._M_data,
        v8._M_buffers._M_end_of_storage - v8._M_start_of_storage._M_data);
  }
  return v4;
}


// ===== 37c2a0 LuaScript::IsInVFTable(char const*) =====
bool __fastcall LuaScript::IsInVFTable(LuaScript *this, glitch::core *a2)
{
  unsigned int v3; // r0
  char *v4; // r3
  char *v5; // r4
  char *v6; // r1
  unsigned int v7; // r2
  bool v8; // cc
  char *v9; // r2

  v3 = glitch::core::hashString(a2, (const char *)a2);
  v4 = *((char **)this + 14);
  v5 = (char *)this + 52;
  if ( !v4 )
    return 0;
  v6 = v5;
  while ( 1 )
  {
    v7 = *((_DWORD *)v4 + 4);
    v8 = v3 > v7;
    v9 = v3 <= v7 ? *((char **)v4 + 2) : *((char **)v4 + 3);
    if ( v8 )
      v4 = v6;
    v6 = v4;
    if ( !v9 )
      break;
    v4 = v9;
  }
  return v5 != v4 && v3 >= *((_DWORD *)v4 + 4) && v4 != v5;
}


// ===== 37c314 LuaScript::_GetFuncName(char const*) =====
glitch::core *__fastcall LuaScript::_GetFuncName(LuaScript *this, glitch::core *a2)
{
  glitch::core *v3; // r4
  unsigned int v4; // r0
  char *v5; // r3
  char *v6; // r5
  char *v7; // r1
  unsigned int v8; // r2
  bool v9; // cc
  char *v10; // r2

  v3 = a2;
  v4 = glitch::core::hashString(a2, (const char *)a2);
  v5 = *((char **)this + 14);
  v6 = (char *)this + 52;
  if ( !v5 )
  {
LABEL_15:
    v5 = v6;
LABEL_12:
    if ( v6 != v5 )
      return *((glitch::core **)v5 + 10);
    return v3;
  }
  v7 = v6;
  while ( 1 )
  {
    v8 = *((_DWORD *)v5 + 4);
    v9 = v4 > v8;
    if ( v4 <= v8 )
      v10 = *((char **)v5 + 2);
    else
      v10 = *((char **)v5 + 3);
    if ( v9 )
      v5 = v7;
    v7 = v5;
    if ( !v10 )
      break;
    v5 = v10;
  }
  if ( v6 != v5 )
  {
    if ( v4 >= *((_DWORD *)v5 + 4) )
      goto LABEL_12;
    goto LABEL_15;
  }
  return v3;
}


// ===== 37c390 LuaScript::Call(char const*,sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &) =====
int __fastcall LuaScript::Call(
        LuaScript *this,
        glitch::core *a2,
        const sfc::script::lua::Arguments *a3,
        sfc::script::lua::ReturnValues *a4)
{
  _DWORD *v5; // r3
  const char *FuncName; // r0
  int result; // r0

  v5 = *((_DWORD **)a4 + 9);
  if ( *v5 != v5[1] )
    std::vector<sfc::script::lua::Value>::_M_erase(v5, *v5);
  FuncName = (const char *)LuaScript::_GetFuncName(this, a2);
  result = sfc::script::lua::Instance::pCall((LuaScript *)((char *)this + 4), FuncName, a3, a4);
  ++LuaScript::s_numCalls;
  return result;
}


// ===== 37c41c LuaScript::Call(char const*,sfc::script::lua::Arguments const&) =====
void __fastcall LuaScript::Call(LuaScript *this, glitch::core *a2, const sfc::script::lua::Arguments *a3)
{
  _BYTE v6[40]; // [sp+4h] [bp-2Ch] BYREF

  sfc::script::lua::ReturnValues::ReturnValues((sfc::script::lua::ReturnValues *)v6);
  LuaScript::Call(this, a2, a3, (sfc::script::lua::ReturnValues *)v6);
  sfc::script::lua::ReturnValues::~ReturnValues((sfc::script::lua::ReturnValues *)v6);
}


// ===== 37c494 LuaScript::Call(char const*,sfc::script::lua::ReturnValues &) =====
int __fastcall LuaScript::Call(LuaScript *this, glitch::core *a2, sfc::script::lua::ReturnValues *a3)
{
  _DWORD *v3; // r3
  const char *FuncName; // r0
  int result; // r0

  v3 = *((_DWORD **)a3 + 9);
  if ( *v3 != v3[1] )
    std::vector<sfc::script::lua::Value>::_M_erase(v3, *v3);
  FuncName = (const char *)LuaScript::_GetFuncName(this, a2);
  result = sfc::script::lua::Instance::pCall((LuaScript *)((char *)this + 4), FuncName, a3);
  ++LuaScript::s_numCalls;
  return result;
}


// ===== 37c514 LuaScript::Call(char const*) =====
void __fastcall LuaScript::Call(LuaScript *this, glitch::core *a2)
{
  _BYTE v4[40]; // [sp+4h] [bp-30h] BYREF

  sfc::script::lua::ReturnValues::ReturnValues((sfc::script::lua::ReturnValues *)v4);
  LuaScript::Call(this, a2, (sfc::script::lua::ReturnValues *)v4);
  sfc::script::lua::ReturnValues::~ReturnValues((sfc::script::lua::ReturnValues *)v4);
}


// ===== 37c584 LuaScript::LuaScript(bool) =====
void __fastcall LuaScript::LuaScript(LuaScript *this, int a2)
{
  char *v4; // r7

  *(_DWORD *)this = off_9639C8;
  v4 = (char *)this + 4;
  sfc::script::lua::Instance::Instance((LuaScript *)((char *)this + 4));
  *((_DWORD *)this + 5) = v4;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 4) = off_95B140;
  *((_DWORD *)this + 8) = 0;
  *((_BYTE *)this + 28) = 0;
  *((_DWORD *)this + 10) = (char *)this + 28;
  *((_DWORD *)this + 9) = (char *)this + 28;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_BYTE *)this + 52) = 0;
  *((_DWORD *)this + 16) = (char *)this + 52;
  *((_DWORD *)this + 15) = (char *)this + 52;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_BYTE *)this + 76) = 0;
  *((_DWORD *)this + 22) = (char *)this + 76;
  *((_DWORD *)this + 21) = (char *)this + 76;
  *((_DWORD *)this + 23) = 0;
  *((_BYTE *)this + 100) = 0;
  *((_DWORD *)this + 30) = (char *)this + 104;
  *((_DWORD *)this + 31) = (char *)this + 104;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)this + 104, 0x10u);
  **((_BYTE **)this + 30) = 0;
  *((_DWORD *)this + 33) = 0;
  *((_BYTE *)this + 128) = 0;
  *((_DWORD *)this + 35) = (char *)this + 128;
  *((_DWORD *)this + 36) = 0;
  *((_DWORD *)this + 34) = (char *)this + 128;
  if ( !a2 )
    LuaScript::BindFunction(this);
}


// ===== 37c674 LuaScript::LuaScript(bool) =====
void __fastcall LuaScript::LuaScript(LuaScript *this, int a2)
{
  char *v4; // r7

  *(_DWORD *)this = off_9639C8;
  v4 = (char *)this + 4;
  sfc::script::lua::Instance::Instance((LuaScript *)((char *)this + 4));
  *((_DWORD *)this + 5) = v4;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 4) = off_95B140;
  *((_DWORD *)this + 8) = 0;
  *((_BYTE *)this + 28) = 0;
  *((_DWORD *)this + 10) = (char *)this + 28;
  *((_DWORD *)this + 9) = (char *)this + 28;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_BYTE *)this + 52) = 0;
  *((_DWORD *)this + 16) = (char *)this + 52;
  *((_DWORD *)this + 15) = (char *)this + 52;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_BYTE *)this + 76) = 0;
  *((_DWORD *)this + 22) = (char *)this + 76;
  *((_DWORD *)this + 21) = (char *)this + 76;
  *((_DWORD *)this + 23) = 0;
  *((_BYTE *)this + 100) = 0;
  *((_DWORD *)this + 30) = (char *)this + 104;
  *((_DWORD *)this + 31) = (char *)this + 104;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)this + 104, 0x10u);
  **((_BYTE **)this + 30) = 0;
  *((_DWORD *)this + 33) = 0;
  *((_BYTE *)this + 128) = 0;
  *((_DWORD *)this + 35) = (char *)this + 128;
  *((_DWORD *)this + 36) = 0;
  *((_DWORD *)this + 34) = (char *)this + 128;
  if ( !a2 )
    LuaScript::BindFunction(this);
}


// ===== 37c764 sfc::script::lua::Value::Value(bool) =====
sfc::script::lua::Value *__fastcall sfc::script::lua::Value::Value(sfc::script::lua::Value *this, int a2)
{
  _DWORD *v4; // r0

  *(_DWORD *)this = off_95B0F0;
  v4 = (_DWORD *)((char *)this + 12);
  *((_DWORD *)this + 7) = v4;
  *((_DWORD *)this + 8) = v4;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v4, 0x10u);
  **((_BYTE **)this + 7) = 0;
  *((_DWORD *)this + 25) = (char *)this + 36;
  *((_DWORD *)this + 26) = (char *)this + 36;
  std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block();
  **((_DWORD **)this + 25) = 0;
  sfc::script::lua::Value::setBool((int)this, a2);
  return this;
}


// ===== 37c7e4 sfc::script::lua::ReturnValues::pushBoolean(bool) =====
void __fastcall sfc::script::lua::ReturnValues::pushBoolean(sfc::script::lua::ReturnValues *this, bool a2)
{
  void **v2; // r6
  _BYTE v3[112]; // [sp+4h] [bp-74h] BYREF

  v2 = *((void ***)this + 9);
  sfc::script::lua::Value::Value((sfc::script::lua::Value *)v3, a2);
  std::vector<sfc::script::lua::Value>::push_back(v2, (const sfc::script::lua::Value *)v3);
  sfc::script::lua::Value::~Value((sfc::script::lua::Value *)v3);
}


// ===== 37c84c sfc::script::lua::Value::Value(char const*) =====
sfc::script::lua::Value *__fastcall sfc::script::lua::Value::Value(sfc::script::lua::Value *this, const char *a2)
{
  _DWORD *v4; // r0

  *(_DWORD *)this = off_95B0F0;
  v4 = (_DWORD *)((char *)this + 12);
  *((_DWORD *)this + 7) = v4;
  *((_DWORD *)this + 8) = v4;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v4, 0x10u);
  **((_BYTE **)this + 7) = 0;
  *((_DWORD *)this + 25) = (char *)this + 36;
  *((_DWORD *)this + 26) = (char *)this + 36;
  std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block();
  **((_DWORD **)this + 25) = 0;
  sfc::script::lua::Value::setString(this, a2);
  return this;
}


// ===== 37c8cc sfc::script::lua::ReturnValues::pushString(char const*) =====
void __fastcall sfc::script::lua::ReturnValues::pushString(sfc::script::lua::ReturnValues *this, const char *a2)
{
  void **v2; // r6
  _BYTE v3[112]; // [sp+4h] [bp-74h] BYREF

  v2 = *((void ***)this + 9);
  sfc::script::lua::Value::Value((sfc::script::lua::Value *)v3, a2);
  std::vector<sfc::script::lua::Value>::push_back(v2, (const sfc::script::lua::Value *)v3);
  sfc::script::lua::Value::~Value((sfc::script::lua::Value *)v3);
}


// ===== 37c934 LuaScript::_GetGameScript(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall LuaScript::_GetGameScript(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  Level *CurrentLevel; // r0
  const char *MPGameScript; // r1

  CurrentLevel = (Level *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( CurrentLevel )
  {
    MPGameScript = (const char *)Level::GetMPGameScript(CurrentLevel);
    sfc::script::lua::ReturnValues::pushString(a2, MPGameScript);
  }
}


// ===== 37c978 sfc::script::lua::Value::Value(sfc::script::lua::UserData *) =====
sfc::script::lua::Value *__fastcall sfc::script::lua::Value::Value(
        sfc::script::lua::Value *this,
        sfc::script::lua::UserData *a2)
{
  _DWORD *v4; // r0

  *(_DWORD *)this = off_95B0F0;
  v4 = (_DWORD *)((char *)this + 12);
  *((_DWORD *)this + 7) = v4;
  *((_DWORD *)this + 8) = v4;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v4, 0x10u);
  **((_BYTE **)this + 7) = 0;
  *((_DWORD *)this + 25) = (char *)this + 36;
  *((_DWORD *)this + 26) = (char *)this + 36;
  std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block();
  **((_DWORD **)this + 25) = 0;
  sfc::script::lua::Value::setUserData((int)this, (int)a2);
  return this;
}


// ===== 37c9f8 sfc::script::lua::ReturnValues::pushUserData(sfc::script::lua::UserData *) =====
void __fastcall sfc::script::lua::ReturnValues::pushUserData(
        sfc::script::lua::ReturnValues *this,
        sfc::script::lua::UserData *a2)
{
  void **v2; // r6
  _BYTE v3[112]; // [sp+4h] [bp-74h] BYREF

  v2 = *((void ***)this + 9);
  sfc::script::lua::Value::Value((sfc::script::lua::Value *)v3, a2);
  std::vector<sfc::script::lua::Value>::push_back(v2, (const sfc::script::lua::Value *)v3);
  sfc::script::lua::Value::~Value((sfc::script::lua::Value *)v3);
}


// ===== 37ca60 LuaScript::_GetHostPlayer(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall LuaScript::_GetHostPlayer(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  sfc::script::lua::UserData *v5; // r3

  v5 = *((sfc::script::lua::UserData **)PlayerManager::GetHostingPlayer((PlayerManager *)dword_99F76C) + 408);
  sfc::script::lua::ReturnValues::pushUserData(a2, v5);
}


// ===== 37ca9c sfc::script::lua::Value::Value(int) =====
sfc::script::lua::Value *__fastcall sfc::script::lua::Value::Value(sfc::script::lua::Value *this, int a2)
{
  _DWORD *v4; // r0

  *(_DWORD *)this = off_95B0F0;
  v4 = (_DWORD *)((char *)this + 12);
  *((_DWORD *)this + 7) = v4;
  *((_DWORD *)this + 8) = v4;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v4, 0x10u);
  **((_BYTE **)this + 7) = 0;
  *((_DWORD *)this + 25) = (char *)this + 36;
  *((_DWORD *)this + 26) = (char *)this + 36;
  std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block();
  **((_DWORD **)this + 25) = 0;
  sfc::script::lua::Value::setNumber((int)this, (float)a2);
  return this;
}


// ===== 37cb24 sfc::script::lua::ReturnValues::pushInteger(int) =====
void __fastcall sfc::script::lua::ReturnValues::pushInteger(sfc::script::lua::ReturnValues *this, int a2)
{
  void **v2; // r6
  _BYTE v3[112]; // [sp+4h] [bp-74h] BYREF

  v2 = *((void ***)this + 9);
  sfc::script::lua::Value::Value((sfc::script::lua::Value *)v3, a2);
  std::vector<sfc::script::lua::Value>::push_back(v2, (const sfc::script::lua::Value *)v3);
  sfc::script::lua::Value::~Value((sfc::script::lua::Value *)v3);
}


// ===== 37cb8c LuaScript::_GetHostPlayerDifficulty(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall LuaScript::_GetHostPlayerDifficulty(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int CurrentLevel; // r0

  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( CurrentLevel )
    sfc::script::lua::ReturnValues::pushInteger(a2, *(_DWORD *)(CurrentLevel + 280));
  else
    sfc::script::lua::ReturnValues::pushInteger(a2, 0);
}


// ===== 37cbd8 LuaScript::_GetNumPlayers(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall LuaScript::_GetNumPlayers(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  sfc::script::lua::ReturnValues::pushInteger(a2, *(_DWORD *)(dword_99F76C + 1732));
}


// ===== 37cc00 LuaScript::_GetHostPlayerLevel(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall LuaScript::_GetHostPlayerLevel(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v5; // r3

  v5 = *((_DWORD *)PlayerManager::GetHostingPlayer((PlayerManager *)dword_99F76C) + 204);
  sfc::script::lua::ReturnValues::pushInteger(a2, v5);
}


// ===== 37cc3c sfc::script::lua::Value::Value(float) =====
sfc::script::lua::Value *__fastcall sfc::script::lua::Value::Value(sfc::script::lua::Value *this, float a2)
{
  _DWORD *v4; // r0

  *(_DWORD *)this = off_95B0F0;
  v4 = (_DWORD *)((char *)this + 12);
  *((_DWORD *)this + 7) = v4;
  *((_DWORD *)this + 8) = v4;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v4, 0x10u);
  **((_BYTE **)this + 7) = 0;
  *((_DWORD *)this + 25) = (char *)this + 36;
  *((_DWORD *)this + 26) = (char *)this + 36;
  std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block();
  **((_DWORD **)this + 25) = 0;
  sfc::script::lua::Value::setNumber((int)this, a2);
  return this;
}


// ===== 37ccbc sfc::script::lua::ReturnValues::pushNumber(float) =====
void __fastcall sfc::script::lua::ReturnValues::pushNumber(sfc::script::lua::ReturnValues *this, float a2)
{
  void **v2; // r6
  _BYTE v3[112]; // [sp+4h] [bp-74h] BYREF

  v2 = *((void ***)this + 9);
  sfc::script::lua::Value::Value((sfc::script::lua::Value *)v3, a2);
  std::vector<sfc::script::lua::Value>::push_back(v2, (const sfc::script::lua::Value *)v3);
  sfc::script::lua::Value::~Value((sfc::script::lua::Value *)v3);
}


// ===== 37cd24 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,std::string>,std::priv::_Select1st<std::pair<uint const,std::string>>,std::priv::_MapTraitsT<std::pair<uint const,std::string>>,std::allocator<std::pair<uint const,std::string>>>::_M_create_node(std::pair<uint const,std::string> const&) =====
std::string *__fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::_M_create_node(
        int a1,
        int a2)
{
  std::string *v3; // r0
  char *v4; // r3
  std::string *v5; // r4
  size_t v7; // [sp+4h] [bp-8h] BYREF

  v7 = 44;
  v3 = (std::string *)__ZNSt12__node_alloc11_M_allocateERj_veneer(&v7);
  v4 = *(char **)a2;
  v5 = v3;
  v3 = (std::string *)((char *)v3 + 20);
  *(_DWORD *)&v5[1]._M_buffers._M_static_buf[12] = v3;
  v5->_M_finish = v4;
  v5[1]._M_finish = (char *)v3;
  std::string::_M_range_initialize(v3, *(const char **)(a2 + 24), *(const char **)(a2 + 20));
  *(_DWORD *)&v5->_M_buffers._M_static_buf[12] = 0;
  *(_DWORD *)&v5->_M_buffers._M_static_buf[8] = 0;
  return v5;
}


// ===== 37cd7c std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,std::string>,std::priv::_Select1st<std::pair<uint const,std::string>>,std::priv::_MapTraitsT<std::pair<uint const,std::string>>,std::allocator<std::pair<uint const,std::string>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<uint const,std::string> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
std::string **__fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::_M_insert(
        std::string **a1,
        _DWORD *a2,
        _DWORD *a3,
        _DWORD *a4,
        int a5,
        int a6)
{
  std::string *v9; // r0
  std::string *node; // r7
  std::string *v12; // r0

  if ( a2 == a3 )
  {
    node = std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::_M_create_node(
             (int)a2,
             (int)a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( a6 || !a5 && *a4 >= a3[4] )
  {
    v9 = std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::_M_create_node(
           (int)a2,
           (int)a4);
    a3[3] = v9;
    node = v9;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v9;
  }
  else
  {
    v12 = std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::_M_create_node(
            (int)a2,
            (int)a4);
    a3[2] = v12;
    node = v12;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v12;
  }
  *(_DWORD *)&node->_M_buffers._M_static_buf[4] = a3;
  std::priv::_Rb_global<bool>::_Rebalance((int)node, a2 + 1);
  ++a2[4];
  *a1 = node;
  return a1;
}


// ===== 37ce54 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,std::string>,std::priv::_Select1st<std::pair<uint const,std::string>>,std::priv::_MapTraitsT<std::pair<uint const,std::string>>,std::allocator<std::pair<uint const,std::string>>>::insert_unique(std::pair<uint const,std::string> const&) =====
int __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::insert_unique(
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
  std::string *v13; // r3
  _DWORD *v14; // r2
  std::string *v15; // r3
  std::string *v16; // [sp+8h] [bp-8h] BYREF
  std::string *v17; // [sp+Ch] [bp-4h] BYREF

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
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::_M_insert(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::_M_insert(
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


// ===== 37cfdc std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,std::string>,std::priv::_Select1st<std::pair<uint const,std::string>>,std::priv::_MapTraitsT<std::pair<uint const,std::string>>,std::allocator<std::pair<uint const,std::string>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<uint const,std::string>,std::priv::_MapTraitsT<std::pair<uint const,std::string>>>,std::pair<uint const,std::string> const&) =====
std::string **__fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::insert_unique(
        std::string **a1,
        std::string *a2,
        std::string **a3,
        unsigned int *a4)
{
  std::string *v4; // r4
  _DWORD *v7; // r12
  unsigned int v8; // r2
  unsigned int v9; // r0
  int v10; // r8
  std::string *i; // r12
  unsigned int v13; // r2
  unsigned int M_finish; // r12
  int v15; // lr
  _DWORD *v16; // r2
  int v17; // r3
  int v18; // r3
  std::string *v19; // [sp+8h] [bp-24h] BYREF
  std::string *v20; // [sp+10h] [bp-1Ch] BYREF
  std::string *v21; // [sp+18h] [bp-14h] BYREF
  std::string *v22; // [sp+20h] [bp-Ch] BYREF

  v4 = *a3;
  if ( *a3 == *(std::string **)&a2->_M_buffers._M_static_buf[8] )
  {
    if ( !a2->_M_finish )
    {
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::insert_unique(
        (int)&v22,
        a2,
        a4);
      *a1 = v22;
      return a1;
    }
    v13 = *a4;
    M_finish = (unsigned int)v4->_M_finish;
    if ( *a4 < M_finish )
    {
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        (int)v4,
        0);
      return a1;
    }
    if ( *a4 > M_finish )
    {
      v15 = *(_DWORD *)&v4->_M_buffers._M_static_buf[12];
      if ( v15 )
      {
        for ( i = *(std::string **)&v4->_M_buffers._M_static_buf[12];
              *(_DWORD *)&i->_M_buffers._M_static_buf[8];
              i = *(std::string **)&i->_M_buffers._M_static_buf[8] )
        {
          ;
        }
      }
      else
      {
        v18 = *(_DWORD *)&v4->_M_buffers._M_static_buf[4];
        if ( v4 == *(std::string **)(v18 + 12) )
        {
          do
          {
            i = (std::string *)v18;
            v18 = *(_DWORD *)(v18 + 4);
          }
          while ( *(std::string **)(v18 + 12) == i );
        }
        else
        {
          i = v4;
        }
        if ( v18 != *(_DWORD *)&i->_M_buffers._M_static_buf[12] )
          i = (std::string *)v18;
      }
      if ( a2 == i )
        goto LABEL_63;
      if ( (char *)v13 >= i->_M_finish )
      {
        std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::_M_insert(
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
    if ( v4->_M_buffers._M_static_buf[0] )
    {
      v7 = *(_DWORD **)&v4->_M_buffers._M_static_buf[8];
      if ( !v7 )
      {
LABEL_26:
        v7 = *(_DWORD **)&v4->_M_buffers._M_static_buf[4];
        if ( v4 == (std::string *)v7[2] )
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
      if ( v4 == *(std::string **)(*(_DWORD *)&v4->_M_buffers._M_static_buf[4] + 4) )
      {
        v7 = *(_DWORD **)&v4->_M_buffers._M_static_buf[12];
LABEL_8:
        v8 = *a4;
        v9 = (unsigned int)v4->_M_finish;
        if ( *a4 < v9 && v8 > v7[4] )
        {
          if ( v7[3] )
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::_M_insert(
              a1,
              a2,
              v7,
              a4,
              0,
              (int)v7);
          return a1;
        }
        v10 = *(_DWORD *)&v4->_M_buffers._M_static_buf[12];
        if ( v10 )
        {
          for ( i = *(std::string **)&v4->_M_buffers._M_static_buf[12];
                *(_DWORD *)&i->_M_buffers._M_static_buf[8];
                i = *(std::string **)&i->_M_buffers._M_static_buf[8] )
          {
            ;
          }
        }
        else
        {
          v17 = *(_DWORD *)&v4->_M_buffers._M_static_buf[4];
          if ( v4 == *(std::string **)(v17 + 12) )
          {
            do
            {
              i = (std::string *)v17;
              v17 = *(_DWORD *)(v17 + 4);
            }
            while ( i == *(std::string **)(v17 + 12) );
          }
          else
          {
            i = v4;
          }
          if ( v17 != *(_DWORD *)&i->_M_buffers._M_static_buf[12] )
            i = (std::string *)v17;
        }
        if ( *a4 < v9 )
          goto LABEL_31;
        if ( v8 > v9 )
        {
          if ( a2 == i || (char *)v8 < i->_M_finish )
          {
            if ( !v10 )
            {
              std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::insert_unique(
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
      v7 = *(_DWORD **)&v4->_M_buffers._M_static_buf[8];
      if ( !v7 )
        goto LABEL_26;
    }
    while ( v7[3] )
      v7 = (_DWORD *)v7[3];
    goto LABEL_8;
  }
  v16 = *(_DWORD **)&v4->_M_buffers._M_static_buf[12];
  if ( v16[4] >= *a4 )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 37d350 std::allocator<std::priv::_Rb_tree_node<std::pair<uint const,int>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,int>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 24;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 37d370 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,int>,std::priv::_Select1st<std::pair<uint const,int>>,std::priv::_MapTraitsT<std::pair<uint const,int>>,std::allocator<std::pair<uint const,int>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<uint const,int> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,int>,std::priv::_Select1st<std::pair<unsigned int const,int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,int>>,std::allocator<std::pair<unsigned int const,int>>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        _DWORD *a4,
        int a5,
        int a6)
{
  _DWORD *v10; // r0
  _DWORD *v11; // r6
  int v12; // r2
  _DWORD *v14; // r0
  int v15; // r2
  int v16; // r2

  if ( a2 == a3 )
  {
    v11 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,int>>>::allocate();
    v11[4] = *a4;
    v16 = a4[1];
    v11[3] = 0;
    v11[2] = 0;
    v11[5] = v16;
    a2[2] = v11;
    a2[1] = v11;
    a2[3] = v11;
  }
  else if ( a6 || !a5 && *a4 >= a3[4] )
  {
    v10 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,int>>>::allocate();
    v11 = v10;
    v10[4] = *a4;
    v12 = a4[1];
    v10[3] = 0;
    v10[2] = 0;
    v10[5] = v12;
    a3[3] = v10;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v10;
  }
  else
  {
    v14 = std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const,int>>>::allocate();
    v11 = v14;
    v14[4] = *a4;
    v15 = a4[1];
    v14[3] = 0;
    v14[2] = 0;
    v14[5] = v15;
    a3[2] = v14;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v14;
  }
  v11[1] = a3;
  std::priv::_Rb_global<bool>::_Rebalance((int)v11, a2 + 1);
  ++a2[4];
  *a1 = v11;
  return a1;
}


// ===== 37d494 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,int>,std::priv::_Select1st<std::pair<uint const,int>>,std::priv::_MapTraitsT<std::pair<uint const,int>>,std::allocator<std::pair<uint const,int>>>::insert_unique(std::pair<uint const,int> const&) =====
int __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,int>,std::priv::_Select1st<std::pair<unsigned int const,int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,int>>,std::allocator<std::pair<unsigned int const,int>>>::insert_unique(
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
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,int>,std::priv::_Select1st<std::pair<unsigned int const,int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,int>>,std::allocator<std::pair<unsigned int const,int>>>::_M_insert(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,int>,std::priv::_Select1st<std::pair<unsigned int const,int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,int>>,std::allocator<std::pair<unsigned int const,int>>>::_M_insert(
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


// ===== 37d61c std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,int>,std::priv::_Select1st<std::pair<uint const,int>>,std::priv::_MapTraitsT<std::pair<uint const,int>>,std::allocator<std::pair<uint const,int>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<uint const,int>,std::priv::_MapTraitsT<std::pair<uint const,int>>>,std::pair<uint const,int> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,int>,std::priv::_Select1st<std::pair<unsigned int const,int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,int>>,std::allocator<std::pair<unsigned int const,int>>>::insert_unique(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,int>,std::priv::_Select1st<std::pair<unsigned int const,int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,int>>,std::allocator<std::pair<unsigned int const,int>>>::insert_unique(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,int>,std::priv::_Select1st<std::pair<unsigned int const,int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,int>>,std::allocator<std::pair<unsigned int const,int>>>::_M_insert(
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
        std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,int>,std::priv::_Select1st<std::pair<unsigned int const,int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,int>>,std::allocator<std::pair<unsigned int const,int>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,int>,std::priv::_Select1st<std::pair<unsigned int const,int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,int>>,std::allocator<std::pair<unsigned int const,int>>>::_M_insert(
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
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,int>,std::priv::_Select1st<std::pair<unsigned int const,int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,int>>,std::allocator<std::pair<unsigned int const,int>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,int>,std::priv::_Select1st<std::pair<unsigned int const,int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,int>>,std::allocator<std::pair<unsigned int const,int>>>::_M_insert(
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
              std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,int>,std::priv::_Select1st<std::pair<unsigned int const,int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,int>>,std::allocator<std::pair<unsigned int const,int>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,int>,std::priv::_Select1st<std::pair<unsigned int const,int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,int>>,std::allocator<std::pair<unsigned int const,int>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,int>,std::priv::_Select1st<std::pair<unsigned int const,int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,int>>,std::allocator<std::pair<unsigned int const,int>>>::insert_unique(
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
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,int>,std::priv::_Select1st<std::pair<unsigned int const,int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,int>>,std::allocator<std::pair<unsigned int const,int>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,int>,std::priv::_Select1st<std::pair<unsigned int const,int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,int>>,std::allocator<std::pair<unsigned int const,int>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 37d990 LuaScript::SetInt(char const*,int) =====
unsigned int __fastcall LuaScript::SetInt(LuaScript *this, glitch::core *a2, int a3)
{
  unsigned int result; // r0
  char *v6; // r12
  char *v7; // r1
  char *v8; // r2
  unsigned int v9; // r3
  bool v10; // cc
  char *v11; // r3
  char *v12; // r3
  unsigned int v13[2]; // [sp+0h] [bp-10h] BYREF
  char *v14; // [sp+8h] [bp-8h] BYREF
  char *v15; // [sp+Ch] [bp-4h] BYREF

  result = glitch::core::hashString(a2, (const char *)a2);
  v6 = *((char **)this + 8);
  v7 = (char *)this + 28;
  if ( v6 )
  {
    v8 = (char *)this + 28;
    while ( 1 )
    {
      v9 = *((_DWORD *)v6 + 4);
      v10 = result > v9;
      if ( result <= v9 )
        v11 = *((char **)v6 + 2);
      else
        v11 = *((char **)v6 + 3);
      if ( v10 )
        v6 = v8;
      v8 = v6;
      if ( !v11 )
        break;
      v6 = v11;
    }
  }
  else
  {
    v6 = (char *)this + 28;
  }
  if ( v7 == v6 || (v12 = v6, result < *((_DWORD *)v6 + 4)) )
  {
    v13[0] = result;
    v13[1] = 0;
    v15 = v6;
    result = (unsigned int)std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,int>,std::priv::_Select1st<std::pair<unsigned int const,int>>,std::priv::_MapTraitsT<std::pair<unsigned int const,int>>,std::allocator<std::pair<unsigned int const,int>>>::insert_unique(
                             &v14,
                             v7,
                             (_DWORD **)&v15,
                             v13);
    v12 = v14;
  }
  *((_DWORD *)v12 + 5) = a3;
  return result;
}


// ===== 37da30 LuaScript::GetInt(char const*) =====
int __fastcall LuaScript::GetInt(LuaScript *this, glitch::core *a2)
{
  unsigned int v4; // r0
  char *v5; // r3
  char *v6; // r12
  char *v7; // r1
  unsigned int v8; // r2
  bool v9; // cc
  char *v10; // r2

  v4 = glitch::core::hashString(a2, (const char *)a2);
  v5 = *((char **)this + 8);
  v6 = (char *)this + 28;
  if ( !v5 )
    goto LABEL_14;
  v7 = (char *)this + 28;
  while ( 1 )
  {
    v8 = *((_DWORD *)v5 + 4);
    v9 = v4 > v8;
    v10 = v4 <= v8 ? *((char **)v5 + 2) : *((char **)v5 + 3);
    if ( v9 )
      v5 = v7;
    v7 = v5;
    if ( !v10 )
      break;
    v5 = v10;
  }
  if ( v6 == v5 )
    goto LABEL_15;
  if ( v4 < *((_DWORD *)v5 + 4) )
LABEL_14:
    v5 = (char *)this + 28;
  if ( v6 != v5 )
    return *((_DWORD *)v5 + 5);
LABEL_15:
  LuaScript::SetInt(this, a2, 0);
  return 0;
}


// ===== 37dac4 std::map<uint,std::string,std::less<uint>,std::allocator<std::pair<uint const,std::string>>>::operator[]<uint>(uint const&) =====
std::priv::_STLP_alloc_proxy<char*,char,std::allocator<char> > *__fastcall std::map<unsigned int,std::string>::operator[]<unsigned int>(
        int a1,
        unsigned int *a2)
{
  int v2; // r4
  unsigned int v5; // r1
  int v6; // r2
  unsigned int v7; // r3
  bool v8; // cf
  int v9; // r3
  std::string *v10; // r0
  std::string *v11; // r4
  std::string *v13; // [sp+0h] [bp-40h] BYREF
  std::string *v14; // [sp+4h] [bp-3Ch] BYREF
  unsigned int v15; // [sp+8h] [bp-38h] BYREF
  std::string v16; // [sp+Ch] [bp-34h] BYREF
  _DWORD v17[4]; // [sp+24h] [bp-1Ch] BYREF
  char *v18; // [sp+34h] [bp-Ch]
  void *p; // [sp+38h] [bp-8h]

  v2 = *(_DWORD *)(a1 + 4);
  if ( v2 )
  {
    v5 = *a2;
    v6 = a1;
    while ( 1 )
    {
      v7 = *(_DWORD *)(v2 + 16);
      v8 = v7 >= v5;
      if ( v7 >= v5 )
        v9 = *(_DWORD *)(v2 + 8);
      else
        v9 = *(_DWORD *)(v2 + 12);
      if ( !v8 )
        v2 = v6;
      if ( !v9 )
        break;
      v6 = v2;
      v2 = v9;
    }
  }
  else
  {
    v2 = a1;
  }
  if ( a1 == v2 || (v10 = (std::string *)v2, *a2 < *(_DWORD *)(v2 + 16)) )
  {
    v18 = (char *)v17;
    p = v17;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v17, 0x10u);
    *v18 = 0;
    v15 = *a2;
    v16._M_finish = (char *)&v16;
    v16._M_start_of_storage._M_data = (char *)&v16;
    std::string::_M_range_initialize(&v16, (const char *)p, v18);
    v13 = (std::string *)v2;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::insert_unique(
      &v14,
      (std::string *)a1,
      &v13,
      &v15);
    v11 = v14;
    if ( (std::string *)v16._M_start_of_storage._M_data != &v16 && v16._M_start_of_storage._M_data )
    {
      if ( (unsigned int)(v16._M_buffers._M_end_of_storage - v16._M_start_of_storage._M_data) > 0x80 )
        CustomFree(v16._M_start_of_storage._M_data);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
          v16._M_start_of_storage._M_data,
          v16._M_buffers._M_end_of_storage - v16._M_start_of_storage._M_data);
    }
    if ( p != v17 && p )
    {
      if ( (unsigned int)(v17[0] - (_DWORD)p) > 0x80 )
      {
        CustomFree(p);
        v10 = v11;
        return &v10->_M_start_of_storage;
      }
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(p, v17[0] - (_DWORD)p);
    }
    v10 = v11;
  }
  return &v10->_M_start_of_storage;
}


// ===== 37dc44 LuaScript::_PopVFTable(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall LuaScript::_PopVFTable(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r4
  char *v6; // r7
  char *v7; // r5
  const void *v8; // r0
  int v9; // r6
  std::string *v10; // r0
  int v11; // r2
  int v12; // r3
  char *v13; // r3
  unsigned int v14; // r0
  char *v15; // r1
  unsigned int v16; // r2
  bool v17; // cf
  char *v18; // r2
  char *v19; // [sp+4h] [bp-4h] BYREF

  v4 = *((_DWORD *)a3 + 21);
  v6 = (char *)a3 + 76;
  v7 = (char *)a3 + 52;
  while ( v6 != (char *)v4 )
  {
    while ( 1 )
    {
      v8 = *(const void **)(v4 + 40);
      v9 = *(_DWORD *)(v4 + 36) - (_DWORD)v8;
      if ( v9 > 0 || memcmp(v8, "", *(_DWORD *)(v4 + 36) - (_DWORD)v8) || v9 )
      {
        v10 = (std::string *)std::map<unsigned int,std::string>::operator[]<unsigned int>(v7, v4 + 16);
        if ( (std::string *)(v4 + 20) != v10 )
          std::string::_M_assign(v10, *(const char **)(v4 + 40), *(const char **)(v4 + 36));
      }
      else
      {
        v13 = *((char **)a3 + 14);
        if ( v13 )
        {
          v14 = *(_DWORD *)(v4 + 16);
          v15 = v7;
          while ( 1 )
          {
            v16 = *((_DWORD *)v13 + 4);
            v17 = v16 >= v14;
            if ( v16 >= v14 )
              v18 = *((char **)v13 + 2);
            else
              v18 = *((char **)v13 + 3);
            if ( !v17 )
              v13 = v15;
            v15 = v13;
            if ( !v18 )
              break;
            v13 = v18;
          }
          if ( v7 != v13 && *((_DWORD *)v13 + 4) <= v14 )
          {
            v19 = v13;
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::erase(
              v7,
              &v19);
          }
        }
      }
      v11 = *(_DWORD *)(v4 + 12);
      if ( !v11 )
        break;
      while ( *(_DWORD *)(v11 + 8) )
        v11 = *(_DWORD *)(v11 + 8);
      v4 = v11;
      if ( v6 == (char *)v11 )
        goto LABEL_11;
    }
    v12 = *(_DWORD *)(v4 + 4);
    if ( v4 == *(_DWORD *)(v12 + 12) )
    {
      do
      {
        v4 = v12;
        v12 = *(_DWORD *)(v12 + 4);
      }
      while ( *(_DWORD *)(v12 + 12) == v4 );
      v11 = *(_DWORD *)(v4 + 12);
    }
    if ( v11 != v12 )
      v4 = v12;
  }
LABEL_11:
  if ( *((_DWORD *)a3 + 23) )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,std::string>,std::priv::_Select1st<std::pair<unsigned int const,std::string>>,std::priv::_MapTraitsT<std::pair<unsigned int const,std::string>>,std::allocator<std::pair<unsigned int const,std::string>>>::_M_erase(
      v6,
      *((_DWORD *)a3 + 20));
    *((_DWORD *)a3 + 22) = v6;
    *((_DWORD *)a3 + 23) = 0;
    *((_DWORD *)a3 + 21) = v6;
    *((_DWORD *)a3 + 20) = 0;
  }
  *((_BYTE *)a3 + 100) = 0;
}


// ===== 37ddc8 LuaScript::_IsPlayerCharacter(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall LuaScript::_IsPlayerCharacter(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  DH2_PlayerInfoCharacterPrefix *LocalPlayer; // r0
  int v7; // r5
  Character *character_660; // r6
  sfc::script::lua::Value *v9; // r0
  bool v10; // r1

  LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
  v7 = *((_DWORD *)this + 1);
  character_660 = LocalPlayer->character_660;
  v9 = *(sfc::script::lua::Value **)v7;
  if ( !(1227133513 * ((*(_DWORD *)(v7 + 4) - *(_DWORD *)v7) >> 4)) )
  {
    __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
    v9 = *(sfc::script::lua::Value **)v7;
  }
  v10 = character_660 == (Character *)sfc::script::lua::Value::getPointer(v9);
  sfc::script::lua::ReturnValues::pushBoolean(a2, v10);
}


// ===== 37de5c LuaScript::_SetInt(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
sfc::script::lua::Value *__fastcall LuaScript::_SetInt(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r4
  sfc::script::lua::Value *result; // r0
  const char *String; // r0
  int *v9; // r4
  glitch::core *v10; // r7
  int v11; // r0
  int v12; // r3

  v4 = *((_DWORD *)this + 1);
  result = *(sfc::script::lua::Value **)v4;
  if ( (unsigned int)(-1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4)) > 1 )
  {
    String = sfc::script::lua::Value::getString(result);
    v9 = *((int **)this + 1);
    v10 = (glitch::core *)String;
    v11 = *v9;
    if ( (unsigned int)(-1227133513 * ((v9[1] - *v9) >> 4)) <= 1 )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v11 = *v9;
    }
    v12 = (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber((sfc::script::lua::Value *)(v11 + 112)));
    return (sfc::script::lua::Value *)LuaScript::SetInt(a3, v10, v12);
  }
  return result;
}


// ===== 37df30 LuaScript::_Rand(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall LuaScript::_Rand(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r5
  int v7; // r5
  sfc::script::lua::Value *v8; // r0
  float v9; // r0
  int *v10; // r4
  int v11; // r5
  int v12; // r0
  float v13; // r0
  int v14; // r1
  bool v15; // r2
  int v16; // r1

  v4 = *((_DWORD **)this + 1);
  if ( (unsigned int)(-1227133513 * ((v4[1] - *v4) >> 4)) > 1 )
  {
    if ( *(_DWORD *)(*v4 + 4) == 3 )
      sfc::script::lua::Arguments::operator[]((int)this, 1u);
    v7 = *((_DWORD *)this + 1);
    v8 = *(sfc::script::lua::Value **)v7;
    if ( !(1227133513 * ((*(_DWORD *)(v7 + 4) - *(_DWORD *)v7) >> 4)) )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v8 = *(sfc::script::lua::Value **)v7;
    }
    v9 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v8));
    v10 = *((int **)this + 1);
    v11 = (int)v9;
    v12 = *v10;
    if ( (unsigned int)(-1227133513 * ((v10[1] - *v10) >> 4)) <= 1 )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v12 = *v10;
    }
    v13 = COERCE_FLOAT(sfc::script::lua::Value::getNumber((sfc::script::lua::Value *)(v12 + 112)));
    v16 = Random::GetRandom((int)v13 - v11, v14, v15) + v11;
    sfc::script::lua::ReturnValues::pushInteger(a2, v16);
  }
}


// ===== 37e068 LuaScript::_DivFixed(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall LuaScript::_DivFixed(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r5
  int v7; // r5
  sfc::script::lua::Value *v8; // r0
  float v9; // r0
  int *v10; // r4
  int v11; // r5
  int v12; // r0
  int v13; // r1

  v4 = *((_DWORD **)this + 1);
  if ( (unsigned int)(-1227133513 * ((v4[1] - *v4) >> 4)) > 1 )
  {
    if ( *(_DWORD *)(*v4 + 4) == 3 )
      sfc::script::lua::Arguments::operator[]((int)this, 1u);
    v7 = *((_DWORD *)this + 1);
    v8 = *(sfc::script::lua::Value **)v7;
    if ( !(1227133513 * ((*(_DWORD *)(v7 + 4) - *(_DWORD *)v7) >> 4)) )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v8 = *(sfc::script::lua::Value **)v7;
    }
    v9 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v8));
    v10 = *((int **)this + 1);
    v11 = (int)v9;
    v12 = *v10;
    if ( (unsigned int)(-1227133513 * ((v10[1] - *v10) >> 4)) <= 1 )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v12 = *v10;
    }
    v13 = v11 / ((int)COERCE_FLOAT(sfc::script::lua::Value::getNumber((sfc::script::lua::Value *)(v12 + 112))) >> 8);
    sfc::script::lua::ReturnValues::pushInteger(a2, v13);
  }
}


// ===== 37e1a4 LuaScript::_MulFixed(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall LuaScript::_MulFixed(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r5
  int v7; // r5
  sfc::script::lua::Value *v8; // r0
  float v9; // r0
  int *v10; // r4
  int v11; // r5
  int v12; // r0
  int v13; // r1

  v4 = *((_DWORD **)this + 1);
  if ( (unsigned int)(-1227133513 * ((v4[1] - *v4) >> 4)) > 1 )
  {
    if ( *(_DWORD *)(*v4 + 4) == 3 )
      sfc::script::lua::Arguments::operator[]((int)this, 1u);
    v7 = *((_DWORD *)this + 1);
    v8 = *(sfc::script::lua::Value **)v7;
    if ( !(1227133513 * ((*(_DWORD *)(v7 + 4) - *(_DWORD *)v7) >> 4)) )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v8 = *(sfc::script::lua::Value **)v7;
    }
    v9 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v8));
    v10 = *((int **)this + 1);
    v11 = (int)v9;
    v12 = *v10;
    if ( (unsigned int)(-1227133513 * ((v10[1] - *v10) >> 4)) <= 1 )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v12 = *v10;
    }
    v13 = v11 * (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber((sfc::script::lua::Value *)(v12 + 112)));
    sfc::script::lua::ReturnValues::pushInteger(a2, v13 >> 8);
  }
}


// ===== 37e2d8 LuaScript::_RandF(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall LuaScript::_RandF(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r5
  int v7; // r5
  sfc::script::lua::Value *v8; // r0
  int Number; // r0
  int *v10; // r4
  float v11; // r5
  int v12; // r0
  float v13; // r0
  int v14; // r1
  bool v15; // r2
  float v16; // r1

  v4 = *((_DWORD **)this + 1);
  if ( (unsigned int)(-1227133513 * ((v4[1] - *v4) >> 4)) > 1 )
  {
    if ( *(_DWORD *)(*v4 + 4) == 3 )
      sfc::script::lua::Arguments::operator[]((int)this, 1u);
    v7 = *((_DWORD *)this + 1);
    v8 = *(sfc::script::lua::Value **)v7;
    if ( !(1227133513 * ((*(_DWORD *)(v7 + 4) - *(_DWORD *)v7) >> 4)) )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v8 = *(sfc::script::lua::Value **)v7;
    }
    Number = sfc::script::lua::Value::getNumber(v8);
    v10 = *((int **)this + 1);
    v11 = *(float *)&Number;
    v12 = *v10;
    if ( (unsigned int)(-1227133513 * ((v10[1] - *v10) >> 4)) <= 1 )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v12 = *v10;
    }
    v13 = COERCE_FLOAT(sfc::script::lua::Value::getNumber((sfc::script::lua::Value *)(v12 + 112)));
    v16 = v11 + (float)(int)Random::GetRandom((int)(float)(v13 - v11), v14, v15);
    sfc::script::lua::ReturnValues::pushNumber(a2, v16);
  }
}


// ===== 37e420 LuaScript::_PlayMusic(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall LuaScript::_PlayMusic(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r5
  sfc::script::lua::Value *v6; // r0
  char *String; // r0
  int v8; // r5
  int *v9; // r7
  int v10; // r0
  VoxSoundManager *v11; // r6
  float v12; // r0
  int CurrentLevel; // r0

  v4 = *((_DWORD *)this + 1);
  v6 = *(sfc::script::lua::Value **)v4;
  if ( !(1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4)) )
  {
    __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
    v6 = *(sfc::script::lua::Value **)v4;
  }
  String = (char *)sfc::script::lua::Value::getString(v6);
  v8 = Arrays::GetMemberIDByString<Arrays::Sounds>(String);
  if ( v8 != -1 )
  {
    v9 = *((int **)this + 1);
    v10 = *v9;
    v11 = (VoxSoundManager *)VoxSoundManager::s_instance;
    if ( (unsigned int)(-1227133513 * ((v9[1] - *v9) >> 4)) <= 1 )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v10 = *v9;
    }
    v12 = COERCE_FLOAT(sfc::script::lua::Value::getNumber((sfc::script::lua::Value *)(v10 + 112)));
    VoxSoundManager::PlayMusic(v11, v8, 1, 0, (int)v12);
    CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    if ( CurrentLevel && v8 == *(_DWORD *)(CurrentLevel + 284) )
    {
      if ( *((_BYTE *)v11 + 49) )
        VoxSoundManager::SetMusicState(v11, "ambient");
      else
        VoxSoundManager::SetMusicState(v11, "combat");
    }
  }
}


// ===== 37e578 LuaScript::_PlaySound(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall LuaScript::_PlaySound(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int *v4; // r6
  int v6; // r0
  int v7; // r6
  sfc::script::lua::Value *v8; // r0
  char *String; // r0
  int result; // r0
  int v11; // r7
  int *v12; // r8
  int v13; // r0
  VoxSoundManager *v14; // r6
  _BOOL4 Bool; // r0
  int *v16; // r5
  int v17; // r4
  int v18; // r0
  float v19; // r0

  v4 = *((int **)this + 1);
  v6 = *v4;
  if ( (unsigned int)(-1227133513 * ((v4[1] - *v4) >> 4)) <= 3 )
  {
    __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
    v6 = *v4;
  }
  if ( sfc::script::lua::Value::getBool((sfc::script::lua::Value *)(v6 + 336)) )
    VoxSoundManager::StopMusic((VoxSoundManager *)VoxSoundManager::s_instance, 0);
  v7 = *((_DWORD *)this + 1);
  v8 = *(sfc::script::lua::Value **)v7;
  if ( !(1227133513 * ((*(_DWORD *)(v7 + 4) - *(_DWORD *)v7) >> 4)) )
  {
    __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
    v8 = *(sfc::script::lua::Value **)v7;
  }
  String = (char *)sfc::script::lua::Value::getString(v8);
  result = Arrays::GetMemberIDByString<Arrays::Sounds>(String);
  v11 = result;
  if ( result != -1 )
  {
    v12 = *((int **)this + 1);
    v13 = *v12;
    v14 = (VoxSoundManager *)VoxSoundManager::s_instance;
    if ( (unsigned int)(-1227133513 * ((v12[1] - *v12) >> 4)) <= 1 )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v13 = *v12;
    }
    Bool = sfc::script::lua::Value::getBool((sfc::script::lua::Value *)(v13 + 112));
    v16 = *((int **)this + 1);
    v17 = Bool;
    v18 = *v16;
    if ( (unsigned int)(-1227133513 * ((v16[1] - *v16) >> 4)) <= 2 )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v18 = *v16;
    }
    v19 = COERCE_FLOAT(sfc::script::lua::Value::getNumber((sfc::script::lua::Value *)(v18 + 224)));
    return VoxSoundManager::Play(v14, v11, v17, (int)v19, 0, 0);
  }
  return result;
}


// ===== 37e730 LuaScript::_StopSound(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall LuaScript::_StopSound(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4,
        int a5,
        int a6,
        char a7)
{
  int v7; // r5
  sfc::script::lua::Value *v9; // r0
  char *String; // r0
  int result; // r0
  int v12; // r5
  int *v13; // r6
  int v14; // r0
  int v15; // r4
  float v16; // r0
  int v17; // r3

  v7 = *((_DWORD *)this + 1);
  v9 = *(sfc::script::lua::Value **)v7;
  if ( !(1227133513 * ((*(_DWORD *)(v7 + 4) - *(_DWORD *)v7) >> 4)) )
  {
    __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
    v9 = *(sfc::script::lua::Value **)v7;
  }
  String = (char *)sfc::script::lua::Value::getString(v9);
  result = Arrays::GetMemberIDByString<Arrays::Sounds>(String);
  v12 = result;
  if ( result != -1 )
  {
    v13 = *((int **)this + 1);
    v14 = *v13;
    v15 = VoxSoundManager::s_instance;
    if ( (unsigned int)(-1227133513 * ((v13[1] - *v13) >> 4)) <= 1 )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v14 = *v13;
    }
    v16 = COERCE_FLOAT(sfc::script::lua::Value::getNumber((sfc::script::lua::Value *)(v14 + 112)));
    return VoxSoundManager::Stop(v15, v12, (int)v16, v17, a5, a6, a7);
  }
  return result;
}


// ===== 37e814 LuaScript::_BitOr(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall LuaScript::_BitOr(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int *v4; // r4
  int v6; // r2
  int v8; // r3
  unsigned int v9; // r8
  int v10; // r7
  unsigned int v11; // r6
  int v13; // r3
  int v14; // r4
  sfc::script::lua::Value *v15; // r0
  int v16; // r8
  int v17; // r2
  unsigned int v18; // r9
  int v19; // r7
  unsigned int v20; // r4
  int *v21; // r6

  v4 = *((int **)this + 1);
  v6 = *v4;
  v8 = v4[1] - *v4;
  v9 = -1227133513 * (v8 >> 4);
  if ( v9 > 1 )
  {
    v10 = 0;
    v11 = 0;
    while ( 1 )
    {
      if ( v11++ >= -1227133513 * (v8 >> 4) )
      {
        __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
        v6 = *v4;
      }
      v13 = *(_DWORD *)(v6 + v10 + 4);
      v10 += 112;
      if ( v13 != 3 )
        break;
      if ( v11 == v9 )
      {
        v14 = *((_DWORD *)this + 1);
        v15 = *(sfc::script::lua::Value **)v14;
        if ( !(1227133513 * ((*(_DWORD *)(v14 + 4) - *(_DWORD *)v14) >> 4)) )
        {
          __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
          v15 = *(sfc::script::lua::Value **)v14;
        }
        v16 = (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v15));
        v17 = **((_DWORD **)this + 1);
        v18 = -1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - v17) >> 4);
        if ( v18 > 1 )
        {
          v19 = 112;
          v20 = 1;
          while ( 1 )
          {
            ++v20;
            v16 |= (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber((sfc::script::lua::Value *)(v17 + v19)));
            if ( v20 == v18 )
              break;
            while ( 1 )
            {
              v21 = *((int **)this + 1);
              v19 += 112;
              v17 = *v21;
              if ( v20 < -1227133513 * ((v21[1] - *v21) >> 4) )
                break;
              __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
              ++v20;
              v16 |= (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber((sfc::script::lua::Value *)(*v21 + v19)));
              if ( v20 == v18 )
                goto LABEL_16;
            }
          }
        }
LABEL_16:
        sfc::script::lua::ReturnValues::pushInteger(a2, v16);
        return;
      }
      v4 = *((int **)this + 1);
      v6 = *v4;
      v8 = v4[1] - *v4;
    }
  }
}


// ===== 37e9ec LuaScript::_BitAnd(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall LuaScript::_BitAnd(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int *v4; // r4
  int v6; // r2
  int v8; // r3
  unsigned int v9; // r8
  int v10; // r7
  unsigned int v11; // r6
  int v13; // r3
  int v14; // r4
  sfc::script::lua::Value *v15; // r0
  int v16; // r8
  int v17; // r2
  unsigned int v18; // r9
  int v19; // r7
  unsigned int v20; // r4
  int *v21; // r6

  v4 = *((int **)this + 1);
  v6 = *v4;
  v8 = v4[1] - *v4;
  v9 = -1227133513 * (v8 >> 4);
  if ( v9 > 1 )
  {
    v10 = 0;
    v11 = 0;
    while ( 1 )
    {
      if ( v11++ >= -1227133513 * (v8 >> 4) )
      {
        __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
        v6 = *v4;
      }
      v13 = *(_DWORD *)(v6 + v10 + 4);
      v10 += 112;
      if ( v13 != 3 )
        break;
      if ( v11 == v9 )
      {
        v14 = *((_DWORD *)this + 1);
        v15 = *(sfc::script::lua::Value **)v14;
        if ( !(1227133513 * ((*(_DWORD *)(v14 + 4) - *(_DWORD *)v14) >> 4)) )
        {
          __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
          v15 = *(sfc::script::lua::Value **)v14;
        }
        v16 = (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v15));
        v17 = **((_DWORD **)this + 1);
        v18 = -1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - v17) >> 4);
        if ( v18 > 1 )
        {
          v19 = 112;
          v20 = 1;
          while ( 1 )
          {
            ++v20;
            v16 &= (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber((sfc::script::lua::Value *)(v17 + v19)));
            if ( v20 == v18 )
              break;
            while ( 1 )
            {
              v21 = *((int **)this + 1);
              v19 += 112;
              v17 = *v21;
              if ( v20 < -1227133513 * ((v21[1] - *v21) >> 4) )
                break;
              __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
              ++v20;
              v16 &= (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber((sfc::script::lua::Value *)(*v21 + v19)));
              if ( v20 == v18 )
                goto LABEL_16;
            }
          }
        }
LABEL_16:
        sfc::script::lua::ReturnValues::pushInteger(a2, v16);
        return;
      }
      v4 = *((int **)this + 1);
      v6 = *v4;
      v8 = v4[1] - *v4;
    }
  }
}


// ===== 37ebc4 LuaScript::_ToFixed(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall LuaScript::_ToFixed(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r3
  int v6; // r1

  v4 = *((_DWORD *)this + 1);
  if ( 1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4) )
  {
    v6 = (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(*(sfc::script::lua::Value **)v4)) << 8;
    sfc::script::lua::ReturnValues::pushInteger(a2, v6);
  }
}


// ===== 37ec14 LuaScript::_GetInt(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall LuaScript::_GetInt(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r3
  glitch::core *String; // r0
  int Int; // r1

  v4 = *((_DWORD *)this + 1);
  if ( 1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4) )
  {
    String = (glitch::core *)sfc::script::lua::Value::getString(*(sfc::script::lua::Value **)v4);
    Int = LuaScript::GetInt(a3, String);
    sfc::script::lua::ReturnValues::pushInteger(a2, Int);
  }
}


// ===== 37ec70 LuaScript::_AddToVFTable(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall LuaScript::_AddToVFTable(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r5
  int v7; // r5
  sfc::script::lua::Value *v8; // r0
  glitch::core *String; // r0
  const char *v10; // r1
  unsigned int v11; // r0
  int v12; // r3
  char *v13; // r3
  char *v14; // r12
  char *v15; // r1
  unsigned int v16; // r2
  bool v17; // cc
  char *v18; // r2
  char *v19; // r6
  std::priv::_STLP_alloc_proxy<char*,char,std::allocator<char> > *v20; // r0
  int *v21; // r4
  std::string *v22; // r5
  int v23; // r0
  const char *v24; // r4
  size_t v25; // r0
  std::priv::_STLP_alloc_proxy<char*,char,std::allocator<char> > *v26; // r0
  std::string *v27; // r7
  std::priv::_STLP_alloc_proxy<char*,char,std::allocator<char> > *v28; // r3
  unsigned int v29[2]; // [sp+4h] [bp-8h] BYREF

  v4 = *((_DWORD **)this + 1);
  if ( (unsigned int)(-1227133513 * ((v4[1] - *v4) >> 4)) <= 1
    || *(_DWORD *)(*v4 + 4) != 4
    || *(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 1u) + 4) != 4 )
  {
    return;
  }
  v7 = *((_DWORD *)this + 1);
  v8 = *(sfc::script::lua::Value **)v7;
  if ( !(1227133513 * ((*(_DWORD *)(v7 + 4) - *(_DWORD *)v7) >> 4)) )
  {
    __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
    v8 = *(sfc::script::lua::Value **)v7;
  }
  String = (glitch::core *)sfc::script::lua::Value::getString(v8);
  v11 = glitch::core::hashString(String, v10);
  v12 = *((unsigned __int8 *)a3 + 100);
  v29[0] = v11;
  if ( !v12 )
    goto LABEL_20;
  v13 = *((char **)a3 + 20);
  v14 = (char *)a3 + 76;
  if ( !v13 )
    goto LABEL_24;
  v15 = (char *)a3 + 76;
  while ( 1 )
  {
    v16 = *((_DWORD *)v13 + 4);
    v17 = v11 > v16;
    if ( v11 <= v16 )
      v18 = *((char **)v13 + 2);
    else
      v18 = *((char **)v13 + 3);
    if ( v17 )
      v13 = v15;
    v15 = v13;
    if ( !v18 )
      break;
    v13 = v18;
  }
  if ( v14 == v13 )
    goto LABEL_25;
  if ( v11 < *((_DWORD *)v13 + 4) )
LABEL_24:
    v13 = (char *)a3 + 76;
  if ( v14 == v13 )
  {
LABEL_25:
    v26 = std::map<unsigned int,std::string>::operator[]<unsigned int>((int)a3 + 76, v29);
    v19 = (char *)a3 + 52;
    v27 = (std::string *)v26;
    v28 = std::map<unsigned int,std::string>::operator[]<unsigned int>((int)v19, v29);
    if ( v27 != (std::string *)v28 )
      std::string::_M_assign(v27, v28[5]._M_data, v28[4]._M_data);
    goto LABEL_21;
  }
LABEL_20:
  v19 = (char *)a3 + 52;
LABEL_21:
  v20 = std::map<unsigned int,std::string>::operator[]<unsigned int>((int)v19, v29);
  v21 = *((int **)this + 1);
  v22 = (std::string *)v20;
  v23 = *v21;
  if ( (unsigned int)(-1227133513 * ((v21[1] - *v21) >> 4)) <= 1 )
  {
    __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
    v23 = *v21;
  }
  v24 = sfc::script::lua::Value::getString((sfc::script::lua::Value *)(v23 + 112));
  v25 = LC_API_STRLEN_0(v24);
  std::string::_M_assign(v22, v24, &v24[v25]);
}


// ===== 37ee80 LuaScript::_Trace(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void LuaScript::_Trace()
{
  ;
}


// ===== 37ee84 LuaScript::_FromFixed(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall LuaScript::_FromFixed(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r3
  float v7; // r0
  int v8; // r4
  sfc::script::lua::Value *v9; // r0
  float v10; // r1

  v4 = *((_DWORD *)this + 1);
  if ( 1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4) )
  {
    v7 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(*(sfc::script::lua::Value **)v4));
    sfc::script::lua::ReturnValues::pushInteger(a2, (int)v7 >> 8);
    v8 = *((_DWORD *)this + 1);
    v9 = *(sfc::script::lua::Value **)v8;
    if ( !(1227133513 * ((*(_DWORD *)(v8 + 4) - *(_DWORD *)v8) >> 4)) )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v9 = *(sfc::script::lua::Value **)v8;
    }
    v10 = (float)(int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v9)) * 0.0039062;
    sfc::script::lua::ReturnValues::pushNumber(a2, v10);
  }
}


// ===== 37ef3c LuaScript::_CallPyScript(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall LuaScript::_CallPyScript(
        int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r2
  sfc::script::lua::Value *v5; // r0
  const char *String; // r0
  int v7; // r5

  v4 = *(_DWORD **)(this + 4);
  if ( 1227133513 * ((v4[1] - *v4) >> 4) )
  {
    if ( *(_DWORD *)(*v4 + 4) == 4 )
    {
      v5 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      String = sfc::script::lua::Value::getString(v5);
      this = ScriptManager::GetIDFromName((ScriptManager *)&ScriptManager::s_inst, String, 1);
      v7 = this;
      if ( this != -1 )
      {
        this = ScriptManager::IsScriptRunning((ScriptManager *)&ScriptManager::s_inst, this);
        if ( !this )
          return ScriptManager::StartScript((ScriptManager *)&ScriptManager::s_inst, v7, -1, 0);
      }
    }
  }
  return this;
}


// ===== 37efe4 LuaScript::_Include(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
sfc::script::lua::Value *__fastcall LuaScript::_Include(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r3
  sfc::script::lua::Value *result; // r0
  char *String; // r1

  v4 = *((_DWORD *)this + 1);
  result = *(sfc::script::lua::Value **)v4;
  if ( 1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4) )
  {
    if ( *((_DWORD *)result + 1) == 4 )
    {
      String = (char *)sfc::script::lua::Value::getString(result);
      return (sfc::script::lua::Value *)LuaScript::Load(a3, String);
    }
  }
  return result;
}


// ===== 37f03c LuaScript::_GetGameObjectsByType(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall LuaScript::_GetGameObjectsByType(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r3
  _DWORD *v6; // r0
  unsigned int v7; // r3
  unsigned int v8; // r11
  const char *String; // r9
  _DWORD *v10; // r4
  int v11; // r10
  unsigned int v12; // r8
  unsigned int v13; // r7
  int v14; // r1
  char *v15; // r0
  sfc::script::lua::UserData *v16; // r5
  const char *ThisClassName; // r0
  _DWORD *v18; // r2
  int v19; // r3
  float v20; // r0
  int v21; // r3
  char *v23[4]; // [sp+Ch] [bp-10h] BYREF

  v4 = *((_DWORD *)this + 1);
  v6 = *(_DWORD **)v4;
  v7 = -1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4);
  if ( v7 > 1 && v6[29] == 3 )
  {
    v20 = COERCE_FLOAT(sfc::script::lua::Value::getNumber((sfc::script::lua::Value *)(v6 + 28)));
    v21 = *((_DWORD *)this + 1);
    v8 = (unsigned int)v20;
    v6 = *(_DWORD **)v21;
    v7 = -1227133513 * ((*(_DWORD *)(v21 + 4) - *(_DWORD *)v21) >> 4);
  }
  else
  {
    v8 = 0;
  }
  if ( v7 )
  {
    if ( v6[1] == 4 )
    {
      String = sfc::script::lua::Value::getString((sfc::script::lua::Value *)v6);
      v10 = *(_DWORD **)(dword_99F764 + 20);
      v11 = dword_99F764 + 12;
      if ( v10 != (_DWORD *)(dword_99F764 + 12) )
      {
        v12 = 0;
        v13 = 0;
        do
        {
          v14 = v10[11];
          if ( v14 )
          {
            ObjectBase::GetHandle((ObjectBase *)v23, v14);
            v15 = ObjectHandle::operator GameObject *(v23);
            v16 = (sfc::script::lua::UserData *)v15;
            if ( v15 )
            {
              ThisClassName = (const char *)PropertyMap::GetThisClassName((PropertyMap *)(v15 + 4));
              if ( !LC_API_STRCMP_0(ThisClassName, String) )
              {
                if ( v8 <= v12 )
                {
                  sfc::script::lua::ReturnValues::pushUserData(a2, v16);
                  ++v13;
                }
                else
                {
                  ++v12;
                }
              }
            }
          }
          v18 = (_DWORD *)v10[3];
          if ( v18 )
          {
            while ( v18[2] )
              v18 = (_DWORD *)v18[2];
            v10 = v18;
          }
          else
          {
            v19 = v10[1];
            if ( v10 == *(_DWORD **)(v19 + 12) )
            {
              do
              {
                v10 = (_DWORD *)v19;
                v19 = *(_DWORD *)(v19 + 4);
              }
              while ( *(_DWORD **)(v19 + 12) == v10 );
              v18 = (_DWORD *)v10[3];
            }
            if ( v18 != (_DWORD *)v19 )
              v10 = (_DWORD *)v19;
          }
        }
        while ( (_DWORD *)v11 != v10 && v13 <= 0xE );
      }
    }
  }
}


// ===== 37f1f0 LuaScript::_GetCurrentLevelRange(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall LuaScript::_GetCurrentLevelRange(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v6; // r5
  int v7; // r2
  sfc::script::lua::Value *v8; // r0
  int v9; // r5
  int v10; // r0
  int v11; // r5
  int v12; // r5

  v6 = *(_DWORD *)(Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) + 60);
  if ( v6 == -1 )
  {
    sfc::script::lua::ReturnValues::pushInteger(a2, -1);
    sfc::script::lua::ReturnValues::pushInteger(a2, -1);
  }
  else
  {
    v7 = *((_DWORD *)this + 1);
    v8 = *(sfc::script::lua::Value **)v7;
    if ( !(1227133513 * ((*(_DWORD *)(v7 + 4) - *(_DWORD *)v7) >> 4)) || *((_DWORD *)v8 + 1) != 3 )
      goto LABEL_3;
    v10 = (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v8));
    switch ( v10 )
    {
      case 1:
        v11 = 72 * v6;
        sfc::script::lua::ReturnValues::pushInteger(a2, *(_DWORD *)(Arrays::LevelList::members + v11 + 64));
        sfc::script::lua::ReturnValues::pushInteger(a2, *(_DWORD *)(Arrays::LevelList::members + v11 + 52));
        return;
      case 2:
        v12 = 72 * v6;
        sfc::script::lua::ReturnValues::pushInteger(a2, *(_DWORD *)(Arrays::LevelList::members + v12 + 68));
        sfc::script::lua::ReturnValues::pushInteger(a2, *(_DWORD *)(Arrays::LevelList::members + v12 + 56));
        return;
      case 0:
LABEL_3:
        v9 = 72 * v6;
        sfc::script::lua::ReturnValues::pushInteger(a2, *(_DWORD *)(Arrays::LevelList::members + v9 + 60));
        sfc::script::lua::ReturnValues::pushInteger(a2, *(_DWORD *)(Arrays::LevelList::members + v9 + 48));
        break;
    }
  }
}


// ===== 37f354 LuaScript::_GetPyCst(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall LuaScript::_GetPyCst(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r6
  int v7; // r6
  sfc::script::lua::Value *v8; // r0
  PyDataConstants *v9; // r8
  const char *String; // r0
  int *v11; // r5
  const char *v12; // r6
  int v13; // r0
  const char *v14; // r0
  int Constant; // r1

  v4 = *((_DWORD **)this + 1);
  if ( (unsigned int)(-1227133513 * ((v4[1] - *v4) >> 4)) > 1
    && *(_DWORD *)(*v4 + 4) == 4
    && *(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 1u) + 4) == 4 )
  {
    v7 = *((_DWORD *)this + 1);
    v8 = *(sfc::script::lua::Value **)v7;
    v9 = (PyDataConstants *)dword_99F758;
    if ( !(1227133513 * ((*(_DWORD *)(v7 + 4) - *(_DWORD *)v7) >> 4)) )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v8 = *(sfc::script::lua::Value **)v7;
    }
    String = sfc::script::lua::Value::getString(v8);
    v11 = *((int **)this + 1);
    v12 = String;
    v13 = *v11;
    if ( (unsigned int)(-1227133513 * ((v11[1] - *v11) >> 4)) <= 1 )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v13 = *v11;
    }
    v14 = sfc::script::lua::Value::getString((sfc::script::lua::Value *)(v13 + 112));
    Constant = PyDataConstants::getConstant(v9, v12, v14);
    sfc::script::lua::ReturnValues::pushInteger(a2, Constant);
  }
}


// ===== 37f4a8 LuaScript::_GetPyStruct(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall LuaScript::_GetPyStruct(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r6
  int v7; // r6
  sfc::script::lua::Value *v8; // r0
  PyDataArrays *v9; // r8
  const char *String; // r0
  int *v11; // r5
  const char *v12; // r6
  int v13; // r0
  const char *v14; // r0
  int OID; // r1

  v4 = *((_DWORD **)this + 1);
  if ( (unsigned int)(-1227133513 * ((v4[1] - *v4) >> 4)) > 1
    && *(_DWORD *)(*v4 + 4) == 4
    && *(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 1u) + 4) == 4 )
  {
    v7 = *((_DWORD *)this + 1);
    v8 = *(sfc::script::lua::Value **)v7;
    v9 = (PyDataArrays *)dword_99F75C;
    if ( !(1227133513 * ((*(_DWORD *)(v7 + 4) - *(_DWORD *)v7) >> 4)) )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v8 = *(sfc::script::lua::Value **)v7;
    }
    String = sfc::script::lua::Value::getString(v8);
    v11 = *((int **)this + 1);
    v12 = String;
    v13 = *v11;
    if ( (unsigned int)(-1227133513 * ((v11[1] - *v11) >> 4)) <= 1 )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v13 = *v11;
    }
    v14 = sfc::script::lua::Value::getString((sfc::script::lua::Value *)(v13 + 112));
    OID = PyDataArrays::GetOID(v9, v12, v14);
    sfc::script::lua::ReturnValues::pushInteger(a2, OID);
  }
}


// ===== 37f5fc LuaScript::_GetPyOID(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall LuaScript::_GetPyOID(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r6
  int v7; // r6
  sfc::script::lua::Value *v8; // r0
  PyDataArrays *v9; // r8
  const char *String; // r0
  int *v11; // r5
  const char *v12; // r6
  int v13; // r0
  const char *v14; // r0
  int OID; // r1

  v4 = *((_DWORD **)this + 1);
  if ( (unsigned int)(-1227133513 * ((v4[1] - *v4) >> 4)) > 1
    && *(_DWORD *)(*v4 + 4) == 4
    && *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 1) + 4) == 4 )
  {
    v7 = *((_DWORD *)this + 1);
    v8 = *(sfc::script::lua::Value **)v7;
    v9 = (PyDataArrays *)dword_99F75C;
    if ( !(1227133513 * ((*(_DWORD *)(v7 + 4) - *(_DWORD *)v7) >> 4)) )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v8 = *(sfc::script::lua::Value **)v7;
    }
    String = (const char *)sfc::script::lua::Value::getString(v8);
    v11 = *((int **)this + 1);
    v12 = String;
    v13 = *v11;
    if ( (unsigned int)(-1227133513 * ((v11[1] - *v11) >> 4)) <= 1 )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v13 = *v11;
    }
    v14 = (const char *)sfc::script::lua::Value::getString((sfc::script::lua::Value *)(v13 + 112));
    OID = PyDataArrays::GetOID(v9, v12, v14);
    sfc::script::lua::ReturnValues::pushInteger(a2, OID);
  }
}


// ===== 37f750 LuaScript::_BitXOr(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall LuaScript::_BitXOr(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r3
  sfc::script::lua::Value *v7; // r0
  float v8; // r0
  int *v9; // r4
  int v10; // r6
  int v11; // r0
  int v12; // r1

  v4 = *((_DWORD *)this + 1);
  v7 = *(sfc::script::lua::Value **)v4;
  if ( 1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4) == -2
    && *((_DWORD *)v7 + 1) == 3
    && *((_DWORD *)v7 + 29) == 3 )
  {
    v8 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v7));
    v9 = *((int **)this + 1);
    v10 = (int)v8;
    v11 = *v9;
    if ( (unsigned int)(-1227133513 * ((v9[1] - *v9) >> 4)) <= 1 )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v11 = *v9;
    }
    v12 = (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber((sfc::script::lua::Value *)(v11 + 112))) ^ v10;
    sfc::script::lua::ReturnValues::pushInteger(a2, v12);
  }
}


// ===== 37f814 LuaScript::_BitNot(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall LuaScript::_BitNot(
        LuaScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  sfc::script::lua::Value *v6; // r0
  int v7; // r1

  v4 = *((_DWORD **)this + 1);
  if ( 1227133513 * ((v4[1] - *v4) >> 4) == -1 && *(_DWORD *)(*v4 + 4) == 3 )
  {
    v6 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 0);
    v7 = ~(int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v6));
    sfc::script::lua::ReturnValues::pushInteger(a2, v7);
  }
}


// ===== 37f878 LuaScript::_SetGameType(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
unsigned int __fastcall LuaScript::_SetGameType(
        unsigned int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r2
  unsigned int v5; // r4
  sfc::script::lua::Value *v6; // r0
  unsigned int v7; // r5
  int v8; // r4
  sfc::script::lua::Value *v9; // r0
  unsigned int v10; // r4

  v4 = *(_DWORD **)(this + 4);
  v5 = this;
  if ( 1227133513 * ((v4[1] - *v4) >> 4) )
  {
    if ( *(_DWORD *)(*v4 + 4) == 3 )
    {
      v6 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      this = (unsigned int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v6));
      if ( this <= 3 )
      {
        this = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
        v7 = this;
        if ( this )
        {
          v8 = *(_DWORD *)(v5 + 4);
          v9 = *(sfc::script::lua::Value **)v8;
          if ( !(1227133513 * ((*(_DWORD *)(v8 + 4) - *(_DWORD *)v8) >> 4)) )
          {
            __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
            v9 = *(sfc::script::lua::Value **)v8;
          }
          this = (unsigned int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v9));
          v10 = this;
          if ( this <= 3 )
            goto LABEL_12;
          if ( gAssertLevel == 2 )
          {
            dword_0 = 0;
LABEL_12:
            *(_DWORD *)(v7 + 336) = this;
            return this;
          }
          if ( gAssertLevel != 1 )
            goto LABEL_12;
          this = fprintf(
                   (FILE *)&_sF + 2,
                   "ASSERT(%s) FAILED: %s:%d\n",
                   "gt < Constants::GameTypes::COUNT",
                   "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Level/Level.h",
                   494);
          *(_DWORD *)(v7 + 336) = v10;
        }
      }
    }
  }
  return this;
}

